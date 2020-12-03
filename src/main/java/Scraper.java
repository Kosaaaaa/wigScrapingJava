import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Scraper {
    private final Document doc;

    public Scraper(Document doc) {
        this.doc = doc;
    }

    public static double reformatNumber(String text) {
        double num = 0.0;
        if (text.indexOf('k') > -1) {
            num = Double.parseDouble(text.replace("k", "")) * 1000;
        } else if (text.indexOf('m') > -1) {
            num = Double.parseDouble(text.replace("m", "")) * 1000000;
        }
        return num;
    }

    public static Date getDatetime(String time) {
        Date timestamp;
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy");
        SimpleDateFormat datetimeFormat = new SimpleDateFormat("dd.MM.yyyy kk:mm");
        String dateNow = dateFormat.format(new Date());
        try {
            timestamp = datetimeFormat.parse(dateNow + " " + time);
        } catch (ParseException e) {
            timestamp = new Date();
        }

        return timestamp;
    }

    public List<Share> getShares() {
        List<Share> shares = new ArrayList<>();
        Elements elements = doc.getAllElements().select("table.fth1 > tbody > tr");

        for (Element tableRow : elements) {
            Share share = new Share();
            String tableText = tableRow.text();
            String[] tableValues = tableText.split(" ");
            share.setSymbol(tableValues[0]);
            share.setName(tableValues[1]);
            share.setPrice(Double.parseDouble(tableValues[2]));
            share.setChangePercent(Double.parseDouble(tableValues[3].replace("%", "")));
            share.setVolume(reformatNumber(tableValues[5]));
            share.setTimestamp(getDatetime(tableValues[6]));
            shares.add(share);

        }
        return shares;
    }
}

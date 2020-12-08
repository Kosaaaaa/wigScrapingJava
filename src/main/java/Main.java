import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        String URL = "https://stooq.pl/t/?i=582";
        WebsiteDownloader website = getWebsite(URL);
        Scraper scraper = new Scraper(website.getDoc());
        List<Share> shares = scraper.getShares();
        List<String> sharesLines = new ArrayList<>();
        TextFileProcessor fileProcessor = new TextFileProcessor("stocks.txt");
        for (Share share : shares){
            System.out.println(share.toString());
            sharesLines.add(share.toString());
        }
        fileProcessor.writeLines(sharesLines);
    }

    public static WebsiteDownloader getWebsite(String URL) {
        return new WebsiteDownloader(URL);
    }
}

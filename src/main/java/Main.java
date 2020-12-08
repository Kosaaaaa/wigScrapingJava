import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        String URL = "https://stooq.pl/t/?i=582";
        WebsiteDownloader website = getWebsite(URL);
        Scraper scraper = new Scraper(website.getDoc());
        List<Share> shares = scraper.getShares();
        for (Share share : shares){
            System.out.println(share.toString());
        }
        saveInTextFile(shares);
    }

    public static WebsiteDownloader getWebsite(String URL) {
        return new WebsiteDownloader(URL);
    }
    public static void saveInTextFile(List<Share> shares){
        List<String> sharesLines = new ArrayList<>();
        for (Share share : shares){
            sharesLines.add(share.toString());
        }
        TextFileProcessor textFileProcessor = new TextFileProcessor("stocks.txt");
        textFileProcessor.writeLines(sharesLines);
    }
}

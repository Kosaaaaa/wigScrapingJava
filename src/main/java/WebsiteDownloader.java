import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class WebsiteDownloader {
    private Document doc;

    public WebsiteDownloader(String url) {
        try {
            this.doc = Jsoup.connect(url).get();
        } catch (Exception e) {
            System.out.println(ConsoleColors.ANSI_RED + "Website could not be resolved");
            System.out.println(ConsoleColors.ANSI_RED + e);
        }
    }

    public Document getDoc() {
        return doc;
    }
}

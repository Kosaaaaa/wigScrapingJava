import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class WebsiteDownloader {
    private final String url;
    private Document doc;

    public WebsiteDownloader(String url) {
        this.url = url;
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

    public String getUrl() {
        return url;
    }
}

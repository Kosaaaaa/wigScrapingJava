import java.util.ArrayList;
import java.util.InputMismatchException;
import java.util.List;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        String URL = "https://stooq.pl/t/?i=582";
        WebsiteDownloader website = getWebsite(URL);
        Scraper scraper = new Scraper(website.getDoc());
        List<Share> shares = scraper.getShares();
        for (Share share : shares) {
            System.out.println(share.toString());
        }
        System.out.println(ConsoleColors.ANSI_YELLOW + "Where to save shares data?: " + ConsoleColors.ANSI_RESET);
        System.out.println(ConsoleColors.ANSI_PURPLE + "1. Text file" + ConsoleColors.ANSI_RESET);
        System.out.println(ConsoleColors.ANSI_PURPLE + "2. Excel file" + ConsoleColors.ANSI_RESET);
        System.out.println(ConsoleColors.ANSI_PURPLE + "3. Both" + ConsoleColors.ANSI_RESET);
        System.out.println(ConsoleColors.ANSI_PURPLE + "0. Quit" + ConsoleColors.ANSI_RESET);
        Scanner inp = new Scanner(System.in);

        int selection = 0;
        try {
            selection = inp.nextInt();
        } catch (InputMismatchException e) {
            System.out.println(ConsoleColors.ANSI_RED + "Select correct option." + ConsoleColors.ANSI_RESET);
        }

        switch (selection) {
            case 0:
                System.out.println(ConsoleColors.ANSI_YELLOW + "See you next time!" + ConsoleColors.ANSI_RESET);
                break;
            case 1:
                saveInTextFile(shares);
                break;
            case 2:
                saveInExcelFile(shares);
                break;
            case 3:
                saveInTextFile(shares);
                saveInExcelFile(shares);
                break;
        }
    }

    public static WebsiteDownloader getWebsite(String URL) {
        return new WebsiteDownloader(URL);
    }

    public static void saveInExcelFile(List<Share> shares) {
        ExcelFileProcessor excelFileProcessor = new ExcelFileProcessor("stocks.xlsx");
        excelFileProcessor.writeLines(shares);
    }

    public static void saveInTextFile(List<Share> shares) {
        List<String> sharesLines = new ArrayList<>();
        for (Share share : shares) {
            sharesLines.add(share.toString());
        }
        TextFileProcessor textFileProcessor = new TextFileProcessor("stocks.txt");
        textFileProcessor.writeLines(sharesLines);
    }
}

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.InputMismatchException;
import java.util.List;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        long startTime = System.nanoTime();
        String URL = "https://stooq.pl/t/?i=582";
        WebsiteDownloader website = getWebsite(URL);
        Scraper scraper = new Scraper(website.getDoc());
        List<Share> shares = scraper.getShares();
        for (Share share : shares) {
            System.out.println(share.toString());
        }
        long endTime = System.nanoTime();
        long duration = (endTime - startTime);
        double durationTimeInSeconds = (double) duration / 1_000_000_000;
        System.out.println(ConsoleColors.ANSI_GREEN + "Shares data downloaded in: " + durationTimeInSeconds + " seconds.");
        System.out.println(ConsoleColors.ANSI_YELLOW + "Where to save shares data?: " + ConsoleColors.ANSI_RESET);
        System.out.println(ConsoleColors.ANSI_PURPLE + "1. Text file" + ConsoleColors.ANSI_RESET);
        System.out.println(ConsoleColors.ANSI_PURPLE + "2. Excel file" + ConsoleColors.ANSI_RESET);
        System.out.println(ConsoleColors.ANSI_PURPLE + "3. Both" + ConsoleColors.ANSI_RESET);
        System.out.println(ConsoleColors.ANSI_PURPLE + "4. Database" + ConsoleColors.ANSI_RESET);
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
            case 4:
                saveInDatabase(shares);
                break;
        }
    }

    public static WebsiteDownloader getWebsite(String URL) {
        return new WebsiteDownloader(URL);
    }

    public static void saveInExcelFile(List<Share> shares) {
        ExcelFileProcessor excelFileProcessor = new ExcelFileProcessor("stocks.xlsx");
        excelFileProcessor.appendToSpreadsheet(shares);
    }

    public static void saveInTextFile(List<Share> shares) {
        List<String> sharesLines = new ArrayList<>();
        for (Share share : shares) {
            sharesLines.add(share.toString());
        }
        TextFileProcessor textFileProcessor = new TextFileProcessor("stocks.txt");
        textFileProcessor.writeLines(sharesLines);
    }

    public static void saveInDatabase(List<Share> shares) {
        Connection conn = DBConnection.createNewConnection();
        try {
            System.out.println("Username: ");
            Scanner inp = new Scanner(System.in);
            String username = inp.nextLine();
            System.out.println("Password: ");
            String password = inp.nextLine();
            Boolean isAuth = DBConnection.authUser(conn, username, password);
            if (isAuth) {
                System.out.println(ConsoleColors.ANSI_GREEN + "User correct");
                try {
                    DBConnection.addShares(conn, shares);
                    System.out.println(ConsoleColors.ANSI_GREEN + "Added: " + shares.size() + " shares to database.");
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            else {
                System.out.println(ConsoleColors.ANSI_RED + "Wrong user");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


    }
}

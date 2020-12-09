import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ExcelFileProcessor {
    private final String filename;

    public ExcelFileProcessor(String filename) {
        this.filename = filename;
    }

    public void createHeaders(XSSFWorkbook workbook, Sheet sheet) {
        CellStyle headerStyle = workbook.createCellStyle();
        headerStyle.setFillForegroundColor(IndexedColors.LIGHT_BLUE.getIndex());
        headerStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
        headerStyle.setWrapText(true);
        XSSFFont font = workbook.createFont();
        font.setFontName("Arial");
        font.setFontHeightInPoints((short) 16);
        font.setBold(true);
        headerStyle.setFont(font);
        Row header = sheet.createRow(0);
        String[] cellNames = new String[]{"symbol", "name", "price", "change percent", "volume", "timestamp"};
        for (int i = 0; i < cellNames.length; i++) {
            Cell headerCell = header.createCell(i);
            headerCell.setCellStyle(headerStyle);
            headerCell.setCellValue(cellNames[i]);
            sheet.setColumnWidth(i, 5000);
        }
    }

    public void createSpreadsheet(List<Share> shares) {
        XSSFWorkbook workbook = new XSSFWorkbook();
        Sheet sheet = workbook.createSheet("Shares");
        createHeaders(workbook, sheet);
        writeLines(workbook, sheet, shares);
    }

    public void writeLines(XSSFWorkbook workbook, Sheet sheet, List<Share> shares) {
        int lastRow = sheet.getLastRowNum() + 1;
        for (int i = 0; i < shares.size(); i++) {
            Row row = sheet.createRow(i + lastRow);
            List<String> cellValues = new ArrayList<>();
            cellValues.add(shares.get(i).getSymbol());
            cellValues.add(shares.get(i).getName());
            cellValues.add(Double.toString(shares.get(i).getPrice()));
            cellValues.add(Double.toString(shares.get(i).getChangePercent()));
            cellValues.add(Double.toString(shares.get(i).getVolume()));
            cellValues.add(shares.get(i).getTimestampString());

            for (int j = 0; j < cellValues.size(); j++) {
                Cell cell = row.createCell(j);
                cell.setCellValue(cellValues.get(j));
            }
        }

        File currDir = new File(".");
        String path = currDir.getAbsolutePath();
        String fileLocation = path.substring(0, path.length() - 1) + this.filename;
        try {
            FileOutputStream outputStream = new FileOutputStream(fileLocation);
            workbook.write(outputStream);
            workbook.close();
            System.out.println(ConsoleColors.ANSI_GREEN + "Excel spreadsheet created and saved correctly." + ConsoleColors.ANSI_RESET);
        } catch (IOException e) {
            System.out.println(ConsoleColors.ANSI_RED + "An error occurred while saving excel spreadsheet." + ConsoleColors.ANSI_RESET);
            System.out.println(ConsoleColors.ANSI_RED + e);
        }


    }

    public void appendToSpreadsheet(List<Share> shares) {
        File currDir = new File(".");
        String path = currDir.getAbsolutePath();
        String fileLocation = path.substring(0, path.length() - 1) + this.filename;
        try {
            FileInputStream inputStream = new FileInputStream(fileLocation);
            XSSFWorkbook workbook = new XSSFWorkbook(inputStream);
            Sheet sheet = workbook.getSheetAt(0);
            writeLines(workbook, sheet, shares);

        } catch (IOException e) {
            System.out.println(ConsoleColors.ANSI_YELLOW + "Spreadsheet file not found" + ConsoleColors.ANSI_RESET);
            createSpreadsheet(shares);
        }

    }
}

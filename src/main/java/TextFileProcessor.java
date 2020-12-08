import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

public class TextFileProcessor {
    private final String filename;

    public TextFileProcessor(String filename) {
        this.filename = filename;
        createFile();
    }

    private void createFile() {
        try {
            File file = new File(this.filename);
            if (file.createNewFile()) {
                System.out.println(ConsoleColors.ANSI_GREEN + "File created: " + file.getName() + ConsoleColors.ANSI_RESET);
            } else {
                System.out.println(ConsoleColors.ANSI_YELLOW + "File already exists." + ConsoleColors.ANSI_RESET);
            }
        } catch (IOException e) {
            System.out.println(ConsoleColors.ANSI_RED + "An error occurred while creating file." + ConsoleColors.ANSI_RESET);
        }
    }

    public void writeLines(List<String> lines) {
        try {
            FileWriter writer = new FileWriter(this.filename);

            for (String line : lines) {
                writer.write(line + "\n");
            }

            writer.close();
            System.out.println(ConsoleColors.ANSI_GREEN + "Successfully wrote to the file." + ConsoleColors.ANSI_RESET);
        } catch (IOException e) {
            System.out.println(ConsoleColors.ANSI_RED + "An error occurred while writing to file." + ConsoleColors.ANSI_RESET);
        }
    }
}

import java.util.Date;

public class Share {
    private String symbol;
    private String name;
    private double price;
    private double changePercent;
    private double volume;
    private Date timestamp;

    public Share() {
    }

    public Share(String symbol, String name, double price, double changePercent, double volume, Date timestamp) {
        this.symbol = symbol;
        this.name = name;
        this.price = price;
        this.changePercent = changePercent;
        this.volume = volume;
        this.timestamp = timestamp;
    }

    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getChangePercent() {
        return changePercent;
    }

    public void setChangePercent(double changePercent) {
        this.changePercent = changePercent;
    }

    public double getVolume() {
        return volume;
    }

    public void setVolume(double volume) {
        this.volume = volume;
    }

    public Date getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Date timestamp) {
        this.timestamp = timestamp;
    }
}

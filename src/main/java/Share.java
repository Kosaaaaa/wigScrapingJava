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

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setChangePercent(double changePercent) {
        this.changePercent = changePercent;
    }

    public void setVolume(double volume) {
        this.volume = volume;
    }

    public void setTimestamp(Date timestamp) {
        this.timestamp = timestamp;
    }

    public String getSymbol() {
        return symbol;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public double getChangePercent() {
        return changePercent;
    }

    public double getVolume() {
        return volume;
    }

    public Date getTimestamp() {
        return timestamp;
    }

    @Override
    public String toString() {
        return "Share{" +
                "symbol='" + symbol + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", changePercent=" + changePercent +
                ", volume=" + volume +
                ", timestamp=" + timestamp +
                '}';
    }
}

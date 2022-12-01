package dto;
import java.io.Serializable;

public class Coordi implements Serializable{
    private static final long serialVersionUID = -8246751169292896511L;

    private String coordiId; //코디 아이디
    private String name; //코디명
    private String description; //설명
    private String temperature; //온도
    private String category; //분류
    private String releaseDate; //날짜(월/년)
    private String filename; // 이미지 파일

    public Coordi() {
        super();
    }

    public Coordi(String coordiId, String name) {
        this.coordiId = coordiId;
        this.name = name;
    }

    public String getCoordiId() {
        return coordiId;
    }

    public void setCoordiId(String coordiId) {
        this.coordiId = coordiId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTemperature() {
        return temperature;
    }

    public void setTemperature(String temperature) {
        this.temperature = temperature;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

}

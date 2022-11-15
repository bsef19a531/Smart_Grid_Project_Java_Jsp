package smartgrid.services;

public class SingleService {
    private int id;
    private String name;
    private String provider;
    private String description;
    private int rating;

    public SingleService(int id, String name, String provider, String description, int rating) {
        this.id = id;
        this.name = name;
        this.provider = provider;
        this.description = description;
        this.rating = rating;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProvider() {
        return this.provider;
    }

    public void setProvider(String provider) {
        this.provider = provider;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getRating() {
        return this.rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }
    

}

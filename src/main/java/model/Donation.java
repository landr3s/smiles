package model;

import java.sql.Timestamp;

public class Donation {
    private int id;
    private String name;
    private String description;
    private Timestamp date;  // Asegúrate de que este campo es de tipo Timestamp
    private String comment;

    // Constructor por defecto
    public Donation() {}

    // Getters y Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public Timestamp getDate() {
        return date;
    }

    // Método setDate que convierte Date a Timestamp
    public void setDate(java.util.Date date) {
        if (date != null) {
            this.date = new Timestamp(date.getTime());
        } else {
            this.date = null;
        }
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}

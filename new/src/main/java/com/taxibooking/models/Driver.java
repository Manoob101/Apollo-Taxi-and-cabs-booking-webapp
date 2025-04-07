package com.taxibooking.models;

public class Driver {
    String name;
    String email;
    String type;
    String password;

    public Driver(String name, String email, String type, String password) {
        this.name = name;
        this.email = email;
        this.type = type;
        this.password = password;
    }

    public String toCSV() {
        return name + "," + email + ","+ type + "," +password;
    }

    public String getEmail() { return email; }
    public String getPassword() { return password; }
    public String getType() { return type; }
    public Object getName() {
        return null;
    }
}

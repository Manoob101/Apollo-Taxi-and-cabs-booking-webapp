package com.taxibooking.models;

public class User {
    String name;
    String email;
    String password;

    public User(String name, String email, String password) {
        this.name = name;
        this.email = email;
        this.password = password;
    }

    public String toCSV() {
        return name + "," + email + ","+ password;
    }

    public String getEmail() { return email; }
    public String getPassword() { return password; }

    public Object getName() {
        return null;
    }
}

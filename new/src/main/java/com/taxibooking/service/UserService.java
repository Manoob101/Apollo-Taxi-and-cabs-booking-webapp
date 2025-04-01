package com.taxibooking.service;

import com.taxibooking.models.User;
import com.taxibooking.utils.FileUtil;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class UserService {
    private static final String FILE_PATH = "C:\\Users\\User\\Desktop\\new\\src\\main\\webapp\\WEB-INF\\resources\\user.txt";

    public boolean registerUser(User user) {
        return FileUtil.saveToFile(FILE_PATH, user.toCSV());
    }

    public User authenticate(String username, String password) {
        try (BufferedReader reader = new BufferedReader(new FileReader(FILE_PATH))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split(",");
                if (parts.length >= 3) {
                    String fileEmail = parts[1];
                    String filePassword = parts[2];

                    if ((username.equals(fileEmail) && password.equals(filePassword))) {
                        return new User(parts[0],(parts[1]), parts[2]);
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}

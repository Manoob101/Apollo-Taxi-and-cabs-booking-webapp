package com.taxibooking.service;

import com.taxibooking.models.Driver;
import com.taxibooking.utils.FileUtil;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class DriverService {
    private static final String FILE_PATH = "C:\\Users\\User\\Desktop\\new\\src\\main\\webapp\\WEB-INF\\resources\\driver.txt";

    public boolean registerDriver(Driver driver) {
        return FileUtil.saveToFile(FILE_PATH, driver.toCSV());
    }

    public Driver authenticate(String username, String password) {
        try (BufferedReader reader = new BufferedReader(new FileReader(FILE_PATH))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split(",");
                if (parts.length >= 4) {
                    String fileEmail = parts[1];
                    String filePassword = parts[3];

                    if ((username.equals(fileEmail) && password.equals(filePassword))) {
                        return new Driver(parts[0],(parts[1]), parts[2],parts[3]);
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}

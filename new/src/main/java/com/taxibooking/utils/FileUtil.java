package com.taxibooking.utils;

import java.io.FileWriter;
import java.io.IOException;

public class FileUtil {
    public static boolean saveToFile(String filePath, String data) {
        try (FileWriter writer = new FileWriter(filePath, true)) {
            writer.write(data + "\n");
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }
}

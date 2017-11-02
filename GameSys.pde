import java.util.InputMismatchException;
import java.util.Arrays;
import java.util.Random;
import java.util.ArrayList;

public class GameSys {
    float rice_x[] = {75,115,155,195};
    float rice_y[] = {385,335,285,235,185,135,85};
    float rice_r = 30;
    float card_x[] = {240, 270, 300, 330};
    float card_sizex = 20;
    float card_sizey = 30;
    int turn = 0;
    private int colors[][] = {
        {255, 0, 0}, 
        {255, 155, 0}, 
        {255, 255, 0},
        {0, 255, 0}, 
        {0, 255, 255},
        {0, 0, 255}, 
        {255, 0, 255}
    };
    private String colorName[] = {"red", "orange", "yellow", "green", "lgreen", "blue", "purple"};
    

    public int[] getColor(String c) {
        int i = 0;
        int cc[] = new int[3];
        for(i=0; i<7; i++) {
            if(colorName[i].equals(c)) {
                cc = colors[i];
            }
        }
        return cc;
    }

    public int[] getColor(int c) {
        return colors[c];
    }
}

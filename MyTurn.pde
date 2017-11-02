import java.util.InputMismatchException;
import java.util.Arrays;
import java.util.Random;

public class MyTurn extends GameSys{

    void click(){
        if(mouseX > rice_x[0] - rice_r/2 && mouseX < rice_x[0] + rice_r/2 && mouseY > rice_y[turn] - rice_r/2 && mouseY < rice_y[turn] + rice_r/2){
            fill(color(255,100,100));
            ellipse(rice_x[0], rice_y[turn], rice_r, rice_r);
        }
        if(mouseX > rice_x[1] - rice_r/2 && mouseX < rice_x[1] + rice_r/2 && mouseY > rice_y[turn] - rice_r/2 && mouseY < rice_y[turn] + rice_r/2){
            fill(color(255,100,100));
            ellipse(rice_x[1], rice_y[turn], rice_r, rice_r);
        }
        if(mouseX > rice_x[2] - rice_r/2 && mouseX < rice_x[2] + rice_r/2 && mouseY > rice_y[turn] - rice_r/2 && mouseY < rice_y[turn] + rice_r/2){
            fill(color(255,100,100));
            ellipse(rice_x[2], rice_y[turn], rice_r, rice_r);
        }
        if(mouseX > rice_x[3] - rice_r/2 && mouseX < rice_x[3] + rice_r/2 && mouseY > rice_y[turn] - rice_r/2 && mouseY < rice_y[turn] + rice_r/2){
            fill(color(255,100,100));
            ellipse(rice_x[3], rice_y[turn], rice_r, rice_r);
        }
    }
}



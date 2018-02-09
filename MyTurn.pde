import java.util.InputMismatchException;
import java.util.Arrays;
import java.util.Random;

public class MyTurn extends GameSys{
    int fill_count_l = 0;
    int fill_count_lc = 0;
    int fill_count_rc = 0;
    int fill_count_r = 0;
    int[] filling_rice;

    void selectColor(){
        if(mouseX > rice_x[0] - rice_r/2 && mouseX < rice_x[0] + rice_r/2 && mouseY > rice_y[turn] - rice_r/2 && mouseY < rice_y[turn] + rice_r/2){
            if(fill_count_l == 7) fill_count_l = 0;
            filling_rice = getColor(fill_count_l);
            fill(filling_rice[0],filling_rice[1],filling_rice[2]);
            ellipse(rice_x[0], rice_y[turn], rice_r, rice_r);
            fill_count_l += 1;
        }
        if(mouseX > rice_x[1] - rice_r/2 && mouseX < rice_x[1] + rice_r/2 && mouseY > rice_y[turn] - rice_r/2 && mouseY < rice_y[turn] + rice_r/2){
            if(fill_count_lc == 7) fill_count_lc = 0;
            filling_rice = getColor(fill_count_lc);
            fill(filling_rice[0],filling_rice[1],filling_rice[2]);
            ellipse(rice_x[1], rice_y[turn], rice_r, rice_r);
            fill_count_lc += 1;
        }
        if(mouseX > rice_x[2] - rice_r/2 && mouseX < rice_x[2] + rice_r/2 && mouseY > rice_y[turn] - rice_r/2 && mouseY < rice_y[turn] + rice_r/2){
            if(fill_count_rc == 7) fill_count_rc = 0;
            filling_rice = getColor(fill_count_rc);
            fill(filling_rice[0],filling_rice[1],filling_rice[2]);
            ellipse(rice_x[2], rice_y[turn], rice_r, rice_r);
            fill_count_rc += 1;
        }
        if(mouseX > rice_x[3] - rice_r/2 && mouseX < rice_x[3] + rice_r/2 && mouseY > rice_y[turn] - rice_r/2 && mouseY < rice_y[turn] + rice_r/2){
            if(fill_count_r == 7) fill_count_r = 0;
            filling_rice = getColor(fill_count_r);
            fill(filling_rice[0],filling_rice[1],filling_rice[2]);
            ellipse(rice_x[3], rice_y[turn], rice_r, rice_r);
            fill_count_r += 1;
        }
    }
}



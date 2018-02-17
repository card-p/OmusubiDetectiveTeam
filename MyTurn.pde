import java.util.InputMismatchException;
import java.util.Arrays;
import java.util.Random;

public class MyTurn extends GameSys{
    int fill_count_l = 0;
    int fill_count_lc = 0;
    int fill_count_rc = 0;
    int fill_count_r = 0;
    int oshinko, ocha;
    int[] filling_rice;
    int[] myColors = new int[4];

    public void selectColor(int turn){
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

    public int[] enter (ArrayList<Integer> nums) {
        int i=0;
        oshinko = 0;
        ocha = 0;
        myColors[0] = fill_count_l;
        myColors[1] = fill_count_lc;
        myColors[2] = fill_count_rc;
        myColors[3] = fill_count_r;

        for(i=0; i<4; i++) {
            if(nums.contains(myColors[i] - 1)) {
                ocha++;
            }
            if(nums.get(i) == myColors[i] - 1) {
                oshinko++;
            }
        }
        ocha = ocha - oshinko;
        int[] result = {oshinko, ocha};
        
        System.out.println(oshinko);
        System.out.println(ocha);

        return result;

    }

    public boolean isError (int[] mc) {
        int i;
        ArrayList<Integer> judge = new ArrayList<Integer>();
        for (i=0; i<mc.length; i++) {
            if(mc[i] == 0) {
                System.out.println("全部うめて");
                return true;
            }
            if(!judge.contains(mc[i])) {
                judge.add(mc[i]);
            } else {
                System.out.println("色被っている");
                return true;
            }
        }
        return false;
    }

    public void colorInit () {
        fill_count_l = 0;
        fill_count_lc = 0;
        fill_count_rc = 0;
        fill_count_r = 0;
    }
}



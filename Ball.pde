public class Ball extends GameSys{

    public Ball(){
    }

    void mkBall(int col, int x, int y){
        int c[] = getColor(col);
        fill(c[0], c[1], c[2]);
        ellipse(rice_x[x], rice_y[y], rice_r, rice_r);
    }
    void mkBall(String col, int x, int y){
        if(col == "no"){
            noFill();
            ellipse(rice_x[x], rice_y[y], rice_r, rice_r);
        }else if (col == "init") {
            fill(255);
            ellipse(rice_x[x], rice_y[y], rice_r, rice_r);
        }else{
            int c[] = getColor(col);
            fill(c[0], c[1], c[2]);
            ellipse(rice_x[x], rice_y[y], rice_r, rice_r);
        }
    }
}




public class Card extends GameSys {
    int i; 
    public Card() {
        
    }

    public void mkCard (String col, int x, int y) {
        if (col == "no") {
            noFill();
        } else {
            int cc[] = getJudgeColor(col);
            fill(cc[0], cc[1], cc[2]);
        }
        rect(card_x[x], rice_y[y]-15, card_sizex, card_sizey);
    }

    public void mkCard (int col, int x, int y) {
        int cc[] = getJudgeColor(col);
        fill(cc[0], cc[1], cc[2]);
        rect(card_x[x], rice_y[y]-15, card_sizex, card_sizey);
    }

}

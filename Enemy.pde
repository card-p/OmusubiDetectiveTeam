public class Enemy extends GameSys{
    ArrayList<Integer> nums= new ArrayList<Integer>();
    int i= 0, num;
    int ckeep[] = new int[3];

    public Enemy() {
        Random rand = new Random();
        while(i < 4) {
            num = rand.nextInt(7);
            if(!nums.contains(num)){ 
                nums.add(num);
                i++;
            }
        }
        i=0;
    }

    public void blackOut(boolean b) {
        if(b == true) {
            fill(0);
            rect(0, 0, 230, 60);
        }else{
            fill(255);
            rect(0, 0, 230, 60);
            for(i=0; i<4; i++){
                ckeep = getColor(nums.get(i));
                fill(ckeep[0], ckeep[1], ckeep[2]);
                ellipse(rice_x[i], 35, rice_r, rice_r);
            }
        }
    }

    Card card = new Card();
    public void fillCards(int turn, int oshinko, int ocha){
        int i=0;
        for(i=0; i < oshinko; i++){
            card.mkCard("oshinko", i, turn);
        }
        for(int j=0; j < ocha; j++){
            card.mkCard("ocha", j+i, turn);
        }
    }


}

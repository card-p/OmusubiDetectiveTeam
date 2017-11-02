public class Enemy extends GameSys{
    float rice_x[] = {75, 115, 155, 195};
    float rice_y = 35;
    float rice_r = 30;
    ArrayList<Integer> nums= new ArrayList<Integer>();
    int i= 0, num;

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
                fill(colors[nums.get(i)][0], colors[nums.get(i)][1], colors[nums.get(i)][2]);
                ellipse(rice_x[i], rice_y, rice_r, rice_r);
            }
        }
    }

}

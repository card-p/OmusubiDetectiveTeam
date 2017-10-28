public class Enemy extends GameSys{
    public Enemy() {
        ArrayList<Integer> nums= new ArrayList<Integer>();
        int i= 0, num;
        Random rand = new Random();
        fill(0);
        while(i < 4) {
            num = rand.nextInt(7);
            if(!nums.contains(num)){ 
                nums.add(num);
                text(nums.get(i), (i+1)*10, 10);
                i++;
            }
        }
    }

}

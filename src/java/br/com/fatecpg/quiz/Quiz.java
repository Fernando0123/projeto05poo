package br.com.fatecpg.quiz;
import java.util.ArrayList;

public class Quiz {
    private static ArrayList<Question> test;
    public static ArrayList<Question> getTest(){
        if(test == null){
            test = new ArrayList<>();
            test.add(new Question("1+1", "2",new String[]{"1", "2", "3"}));
            test.add(new Question("2+1", "3",new String[]{"1", "2", "3"}));
            test.add(new Question("5+4", "9",new String[]{"9", "1", "0"}));
            test.add(new Question("2+3", "5",new String[]{"1", "5", "2"}));
            test.add(new Question("2+2", "4",new String[]{"0", "4", "2"}));
        }
        return test;
    }
}

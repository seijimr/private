import java.util.*;
abstract public class Dealer extends Human{
 ArrayList<Integer> cards=new ArrayList<Integer>();
 ArrayList<Integer> ranca2=new ArrayList<Integer>();
    //cardsにカードを全て持たせる処理
int jkq=10; //ジャック、キング、クイーンは10とする
{
     for(int x=0; x<4; x++){  //スート
       for(int y=1; y<=10; y++){  //1~10
         cards.add(y);
}
       for(int z=0; z<4; z++){
           cards.add(jkq);
}
}
}

public ArrayList<Integer> deal(){
    ranca2.clear();
 for(int i=0;i<2;i++){
     Random rnd= new Random();
     int ran=rnd.nextInt(cards.size()); //cardsの枚数からランダムな数値をranに代入
     ranca2.add(cards.get(ran)); //リストranca2にcardsからran番を追加
     cards.remove(ran); //ranca2に追加した数字を削除
}
 return ranca2;
}
public ArrayList<Integer> hit(){
   ranca2.clear();
    Random rnd= new Random();
    int ran=rnd.nextInt(cards.size()); //cardsの枚数からランダムな数値をranに代入
    ranca2.add(cards.get(ran)); //リストranca2にcardsからran番を追加
    cards.remove(ran); //ranca2に追加した数字を削除
    return ranca2;
}
}
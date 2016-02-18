/** 
* 立体グリグリ on Processing メインファイル
* @author  平田　敦（ひらた　あつし）
*/

GuriData currentGuriData = new GuriData();

void setup(){
  assert DEBUG_MODE == true : "NOW RUN MODE";
}

void draw(){
  println(currentGuriData.getComment() + " : " + currentGuriData.getSize() + " lines contains.");
}
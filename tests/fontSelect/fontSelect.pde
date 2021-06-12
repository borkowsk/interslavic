/** Font selection dialog
See:
https://discourse.processing.org/t/g4p-font-for-textfield/12732/2
*/

import java.awt.Font;
import g4p_controls.*;

PFont     myFont;
String[]  fontList;
String    textToView=""
+"EN*It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\n"
+"PL*Ogólnie znana teza głosi, iż użytkownika może rozpraszać zrozumiała zawartość strony, kiedy ten chce zobaczyć sam jej wygląd.\n"
+"CZ*Je obecně známou věcí, že člověk bývá při zkoumání grafického návrhu rozptylován okolním textem, pokud mu dává nějaký smysl.\n"
+"IN*Ⰵ ⰴⰰⰲⱀⱏⰺ ⱇⰰⰽⱅ ⰶⰵ ⱍⰻⱅⰰⰵⰿⱏⰺ ⱅⰵⰽⱄⱅ ⰱⱆⰴⰵ ⱂⱆⱅⰰⱅⰻ ⱅⱁⰳⱁ ⰽⱅⱁ ⱍⰻⱅⰰⰵ ⱅⰵⰿ ⱔⰽ ⰵ ⱀⰰⱂⰻⱄⰰⱀ\n"
//GLAGOLITIC: Je davny fakt že čitajemy tekst bude putati togo kto čitaje tem jak je napisan.
//By Tu Sueño ♡
+"GR*Είναι πλέον κοινά παραδεκτό ότι ένας αναγνώστης αποσπάται από το περιεχόμενο που διαβάζει, όταν εξετάζει τη διαμόρφωση μίας σελίδας.\n"
+"UA*Вже давно відомо, що читабельний зміст буде заважати зосередитись людині, яка оцінює композицію сторінки.\n"
+"XS*Позната је чињеница да ће читалац бити спутан правим читљивим текстом на страници када гледа њен распоред.\n"
+"GE*ცნობილი ფაქტია, რომ გვერდის წაკითხვად შიგთავსს შეუძლია მკითხველის ყურადღება მიიზიდოს და დიზაინის აღქმაში ხელი შეუშალოს.\n" //Gruzja
+"IL*Lorem Ipsum הוא פשוט טקסט גולמי של תעשיית ההדפסה וההקלדה. Lorem Ipsum היה טקסט סטנדרטי עוד במאה ה-16,\n"
+"ไทย*มีหลักฐานที่เป็นข้อเท็จจริงยืนยันมานานแล้ว ว่าเนื้อหาที่อ่านรู้เรื่องนั้นจะไปกวนสมาธิของคนอ่านให้เขวไปจากส่วนที้เป็น Layout เรานำ \n"
+"AR:لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر\n"
+"\n"
;
// Variable declarations 
// autogenerated do not edit
// GButton buttonOK; 
// GDropList dropListOfFonts; 
// GTextArea textarea1; 

void setup() 
{
  println("=======================================================");
  println("        Font selector, created by FASADA OSG PL");
  size(500,500);
  createGUI();
  textarea1.setText(textToView);
  fontList = PFont.list();
  dropListOfFonts.setItems(fontList,0);
  //dropListOfFonts.setSelectedIndex(font_index);
  loadConfig("../config.txt");
  configToFont();
  font_changed();
}

void font_changed()
{
  Font selectedFont=new Font(font_name,font_face,font_size);
  textarea1.setFont(selectedFont);
}

void draw()
{
  //EMPTY ? BUT MUST BE!!!
  background(0,200,200);
}

int i=0;
void old_draw()
{
  background(0);
  println(i,fontList[i]);
  myFont = createFont(fontList[i], 20);
  textFont(myFont);
  textAlign(CENTER,TOP);fill(255,0,0);
  text(fontList[i], width/2, 0);
  textAlign(CENTER, CENTER);fill(255);
  text("!@#$%\nABCĆDEĘ\nabcćdeę\nГледај фајлы скупины (Њ,ѣ)\nⰐⰵ ⱅⰻⰿ ⰸⰰ ⱎⱅⱁ ⰰⰾⰵ ⰿⱀⰵ ⱂⱁⰴⱁⰱⰰⰵ\n",
        width/2, height/2);
  i=(i+1)%fontList.length;
}

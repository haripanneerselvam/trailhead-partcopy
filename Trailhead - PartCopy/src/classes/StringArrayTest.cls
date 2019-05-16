public class StringArrayTest{
    public static list<String> generateStringArray(Integer intValue){
        list<String> lstString = new list<String>();
        for(integer i=0; i<intvalue; i++){
            lstString.add('Test '+i);
        }
        return lstString;
    }
}
void main(){
  int num1 = 10;
  int num2 = 34;
  int num3 = 5;
  int num4 = 6;

    int? greatestNumber = checkGreaterNumber(num1, num2, num3, num4);
    print('The greatest Number is $greatestNumber');
 }
 
 int? checkGreaterNumber(int num1,int num2, int num3, int num4){
  if(num1 > num2 && num1 > num3 && num1 > num4){ 
    return num1;
    } else if(num2 > num1 && num2 > num3 && num2 > num4){
      return num2;
    } else if(num3 > num1 && num3 > num2 && num3 >num4){
      return num3;
    } else {
      return num4;
    }

 }

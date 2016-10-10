class Student : Person{
    private int[] testScores;  
    public Student(string firstname,string lastname,int id,int[] scores){
      this.firstName=firstname;
        this.lastName=lastname;
        this.id=id;
        this.testScores=scores;
        
    } 
    public char calculate()
        {
        int avg=0;
        int sc=0;
        
        foreach(int i in testScores)
            {
            avg+=i;
        }
        sc=avg/(testScores.Length);
        if(sc>=90 && sc<=100 ){
            return 'O';
        }else if(sc>=80 && sc<90){
            return 'E';
        }else if(sc>=70 && sc<80){
            return 'A';
        }else if(sc>=55 && sc<70){
            return 'P';
        }else if(sc>=40 && sc<55){
            return 'D';
        }
        else{
            return 'T';
        }
    }
}
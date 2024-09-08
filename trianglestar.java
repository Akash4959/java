import java.util.Scanner;public class trianglestar {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        int n=sc.nextInt();
        for (int i=1; i<=n; i++){
            for (int j=n+1-i; j>=1; j--){
                System.out.print(" ");
                
            }for (int j=1; j<=i; j++){
                if (j==1||j==i||i==n){System.out.print("*");}
                else{System.out.print(" ");}
            }
            System.out.println();
        }
    }
    
}

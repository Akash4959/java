import java.util.Scanner;
class Bhashkar{
    public static void main(String[] args) {
        Scanner sc= new Scanner(System.in);
        System.out.println("Enter your name: "); 
        String na= sc.nextLine();       
        System.out.println("Enter your choice:\n1. Hello\n2. Namaste\n3. Shashriyakal\4. Aadab");
        int i=sc.nextInt();        
        switch (i) {
            case 1 : System.out.println("Hello "+na);
                
                break;
            case 2: System.out.println("Namaste "+na);
            break;
            case 3: System.out.println("Shashriyakal "+na);
            break;
            case 4: System.out.println("Adab "+na);
            break;
            default:System.out.println("Invalid Input");
                throw new AssertionError();
        }
    }
}
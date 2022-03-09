import java.util.Scanner;
public class java_app
{
  public static void main(String[] args)
  {
    Scanner in = new Scanner(System.in);
    System.out.print("Input your name: ");
    String name = in.nextLine();
    System.out.println("Hello," + name + "!");
    in.close();
  }
}

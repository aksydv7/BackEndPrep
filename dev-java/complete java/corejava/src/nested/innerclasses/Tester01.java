package nested.innerclasses;

class Outer{
	
	class Inner{
		
		void show() {
			System.out.println("In inner class");
		}
	}
}

public class Tester01 {
	public static void main(String[] args) {
		
		Outer.Inner in = new Outer().new Inner();
		in.show();
	}
}

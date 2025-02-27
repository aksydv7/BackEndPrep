package nested.innerclasses.staticinner;

class Outer05{
	private static int data;
	
	static class Inner05{
		void showData() {
			System.out.println(data);
		}
	}
}

public class Tester01 {
	public static void main(String[] args) {
		Outer05.Inner05 oi05 = new Outer05.Inner05();
		
		oi05.showData();
	}
}

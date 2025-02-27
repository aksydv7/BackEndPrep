package nested.innerclasses.memberinner;


class Test{
	private int data;
	
	public Test(int data) {
		this.data=data;
	}
	
	void showData() {
		System.out.println("Data is: "+data);
	}
	
	class Innertest{
		private int innerdata;
		
		public Innertest(int innerdata) {
			this.innerdata=innerdata;
		}
		
		void showInnerData() {
			System.out.println("Inner Data is: "+innerdata);
		}
	}
}
public class DemoMemberClass {
	public static void main(String[] args) {
		
		Test outertest = new Test(100);
		outertest.showData();
		
		Test.Innertest innertest=outertest.new Innertest(200);
		innertest.showInnerData();
	}
}

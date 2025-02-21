package nested.innerclasses.memberinner;

class IT{
	private String compnayName;
	private boolean isHiring;
	
	public IT(String compnayName) {
		this.compnayName=compnayName;
		this.isHiring=false;
	}
	
	class Hiring{
		void startHiring() {
			if(!isHiring) {
				isHiring=true;
				System.out.println(compnayName+" started hiring");
			}else {
				System.out.println(compnayName+" has alredy started hiring");
			}
		}
		
		void stopHiring() {
			if(!isHiring) {
				System.out.println(compnayName+" has alredy stopped hiring");
			}else {
				isHiring=false;
				System.out.println(compnayName+" stop their hairing");
			}
		}
	}
}

public class Company {
	public static void main(String[] args) {
		
		IT it = new IT("Infosys");
		
		IT.Hiring hr = it.new Hiring();
		
		hr.startHiring();
		hr.stopHiring();
		
	}
}

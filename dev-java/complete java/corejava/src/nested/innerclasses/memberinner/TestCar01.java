package nested.innerclasses.memberinner;

class Car{
	private String modelName;
	private boolean isEngineOn;
	
	public Car(String modelName) {
		this.modelName = modelName;
		this.isEngineOn = false;
	}
	
	class Engine{
		void start() {
			if(!isEngineOn) {
				isEngineOn = true;
				System.out.println(modelName+" is started");
			}else {
				System.out.println(modelName+" is alredy started");
			}
				
		}
		
		void stop() {
			if(!isEngineOn) {
				System.out.println(modelName+" engine is alredy stoped");
			}else {
				isEngineOn = false;
				System.out.println(modelName+" engine stopped");
			}
		}
	}
}

public class TestCar01 {
	public static void main(String[] args) {
		
		Car mycar = new Car("Tata safari");
		Car.Engine engine = mycar.new Engine();
		engine.start();
	}
}

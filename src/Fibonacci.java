public class Fibonacci {

	/** the position of the number in the list */
	Integer i;
	
	/** the fibonacci number */ 
	Integer result;

	public Integer getI() {
		return i;
	}
	
	public Integer getResult() {
		return result;
	}

	private void setI(Integer i) {
		this.i = i;
		this.setResult( calculate() );
	}
	
	private void setResult(Integer result) {
		this.result = result;
	}

	/** from the position (i), this method calculates the number (result) */
	public Integer calculate(){
		Integer total;
		if( this.getI() == 0 || this.getI() == 1 )
			total = 1;
		else
		{
			Fibonacci f1 = new Fibonacci( this.i - 1 );
			Fibonacci f2 = new Fibonacci( this.i - 2 );
			total = f1.getResult() + f2.getResult();
		}
		return total;
	}

	public Fibonacci( Integer i ) {
		this.setI( i );
	}

	/** method toString in order to make it printable */
	public String toString() {
		return this.getResult().toString();
	}

	/** print first 30 fibonacci numbers */ 
	public static void main(String[] args) {

		for (int i = 0; i < 30; i++) {
			System.out.println( new Fibonacci( i ) );
		}

	}

}

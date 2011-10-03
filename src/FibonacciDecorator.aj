
/** decorates <tt>Fibonacci.toString()</tt> */
public aspect FibonacciDecorator {

	/** makes the <tt>Fibonacci.toString()</tt> method to prepend the index */
	String around(): execution( String Fibonacci.toString() ){

		Fibonacci f = (Fibonacci) thisJoinPoint.getTarget();
		return f.getI() + " -> " + proceed();

	}

}

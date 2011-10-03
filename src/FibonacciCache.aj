
/** speeds up the execution time of <tt>Fibonacci.calculate()</tt> */
public aspect FibonacciCache {
	
	/** stores fibonacci numbers */
	private static Integer[] cache = new Integer[ 100 ];

	/** selects the execution of <tt>Fibonacci.calculate()</tt> */
	pointcut Calculate() : execution( Integer Fibonacci.calculate() );
	
	/** advices the method <tt>Fibonacci.calculate()</tt> to only be executed once per i, caching the value */
	Integer around() : Calculate(){
		
		Fibonacci f = ( Fibonacci ) thisJoinPoint.getTarget();
		Integer i = f.getI();
		
		if( i < 100 && cache[ i ] == null )
		{
			Integer result = proceed(); 
			cache[ i ] = result;
			return result;
		}
		return cache[ i ];
	}

}

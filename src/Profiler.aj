
/** profiles the execution of main */
public aspect Profiler {

	/** measures execution time and prints it */
	void around() : execution( void *.main( .. ) ){
		long start = System.currentTimeMillis();
		try{
			proceed();
		}
		finally{
			long end = System.currentTimeMillis();
			System.out.println( (end - start) + " mseconds" );
		}
	}
	
}

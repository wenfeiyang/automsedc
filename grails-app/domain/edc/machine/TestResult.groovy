package edc.machine

class TestResult {
	String name
	String url
	String status
	Integer duration

	static belongsTo = [suite: SuiteResult]
    static constraints = {
    	name()
    	status()
    	duration()
    	url()
    }

    String toString() {
    	name
    }
}

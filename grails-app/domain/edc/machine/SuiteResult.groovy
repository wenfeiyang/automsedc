package edc.machine

class SuiteResult {
	String name
	String tag
	String stp
	String user
	String url

	static hasMany = [tests: TestResult]
    static constraints = {
    	tag()
    	name()
    	stp()
    	user()
    	url()
    }

    String toString() {
    	"${name}:${tag}"
    }
}

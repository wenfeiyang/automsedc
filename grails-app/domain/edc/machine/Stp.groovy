package edc.machine

class Stp {
	String name
	String owner
	String org
	String site

    static constraints = {
    	name(blank: false)
    	org(blank: false)
    	owner(blank: false)
    	site()
    }
}

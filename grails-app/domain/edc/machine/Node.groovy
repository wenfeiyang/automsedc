package edc.machine

class Node {
	String name
	String rat

	static belongsTo = [stp: Stp]
    static constraints = {
    }
}

import edc.machine.*
import groovy.sql.Sql

class BootStrap {

    def init = { servletContext ->
    	environments {
    		production {

    		}
    		development {
/*    			def sql = Sql.newInstance("jdbc:sqlite:ntc_ms_edc.sqlite","","","org.sqlite.JDBC")
    			sql.eachRow("select * from SuiteResult") {
    				def suite = new SuiteResult(name:it.name, 
    											tag: it.suiteid, 
    											stp: it.stp, 
    											user: it.user,
    											url: it.logurl)
    				suite.save()
    				if (suite.hasErrors()) {
    					println suite.errors
    				}
    				sql.eachRow("select * from TestResult where suiteid = '${suite.tag}' and user = '${suite.user}'") { tr ->
    						def test = new TestResult(name: tr.name,
    												  url: tr.logurl,
    												  status: tr.status,
    												  duration: tr.duration,
    												  suite: suite)
    						test.save()
    				}
    			}*/
    		}
    	}
    }
    def destroy = {
    }
}

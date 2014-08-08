import edc.machine.*
import groovy.sql.Sql

def sql = Sql.newInstance("jdbc:sqlite:ntc_ms_edc.sqlite","","","org.sqlite.JDBC")
sql.eachRow("select * from SuiteResult") {
    println it.name
}
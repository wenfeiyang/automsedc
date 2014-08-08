package edc.machine

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SuiteResultController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SuiteResult.list(params), model:[suiteResultInstanceCount: SuiteResult.count()]
    }

    def show(SuiteResult suiteResultInstance) {
        respond suiteResultInstance
    }

    def create() {
        respond new SuiteResult(params)
    }

    @Transactional
    def save(SuiteResult suiteResultInstance) {
        if (suiteResultInstance == null) {
            notFound()
            return
        }

        if (suiteResultInstance.hasErrors()) {
            respond suiteResultInstance.errors, view:'create'
            return
        }

        suiteResultInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'suiteResultInstance.label', default: 'SuiteResult'), suiteResultInstance.id])
                redirect suiteResultInstance
            }
            '*' { respond suiteResultInstance, [status: CREATED] }
        }
    }

    def edit(SuiteResult suiteResultInstance) {
        respond suiteResultInstance
    }

    @Transactional
    def update(SuiteResult suiteResultInstance) {
        if (suiteResultInstance == null) {
            notFound()
            return
        }

        if (suiteResultInstance.hasErrors()) {
            respond suiteResultInstance.errors, view:'edit'
            return
        }

        suiteResultInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SuiteResult.label', default: 'SuiteResult'), suiteResultInstance.id])
                redirect suiteResultInstance
            }
            '*'{ respond suiteResultInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SuiteResult suiteResultInstance) {

        if (suiteResultInstance == null) {
            notFound()
            return
        }

        suiteResultInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SuiteResult.label', default: 'SuiteResult'), suiteResultInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'suiteResultInstance.label', default: 'SuiteResult'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

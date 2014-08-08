<%@ page import="edc.machine.SuiteResult" %>



<div class="fieldcontain ${hasErrors(bean: suiteResultInstance, field: 'tag', 'error')} ">
	<label for="tag">
		<g:message code="suiteResult.tag.label" default="Tag" />
		
	</label>
	<g:textField name="tag" value="${suiteResultInstance?.tag}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: suiteResultInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="suiteResult.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${suiteResultInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: suiteResultInstance, field: 'stp', 'error')} ">
	<label for="stp">
		<g:message code="suiteResult.stp.label" default="Stp" />
		
	</label>
	<g:textField name="stp" value="${suiteResultInstance?.stp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: suiteResultInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="suiteResult.user.label" default="User" />
		
	</label>
	<g:textField name="user" value="${suiteResultInstance?.user}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: suiteResultInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="suiteResult.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${suiteResultInstance?.url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: suiteResultInstance, field: 'tests', 'error')} ">
	<label for="tests">
		<g:message code="suiteResult.tests.label" default="Tests" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${suiteResultInstance?.tests?}" var="t">
    <li><g:link controller="testResult" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="testResult" action="create" params="['suiteResult.id': suiteResultInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'testResult.label', default: 'TestResult')])}</g:link>
</li>
</ul>


</div>


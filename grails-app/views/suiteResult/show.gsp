
<%@ page import="edc.machine.SuiteResult" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'suiteResult.label', default: 'SuiteResult')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-suiteResult" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-suiteResult" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list suiteResult">
			
				<g:if test="${suiteResultInstance?.tag}">
				<li class="fieldcontain">
					<span id="tag-label" class="property-label"><g:message code="suiteResult.tag.label" default="Tag" /></span>
					
						<span class="property-value" aria-labelledby="tag-label"><g:fieldValue bean="${suiteResultInstance}" field="tag"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${suiteResultInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="suiteResult.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${suiteResultInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${suiteResultInstance?.stp}">
				<li class="fieldcontain">
					<span id="stp-label" class="property-label"><g:message code="suiteResult.stp.label" default="Stp" /></span>
					
						<span class="property-value" aria-labelledby="stp-label"><g:fieldValue bean="${suiteResultInstance}" field="stp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${suiteResultInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="suiteResult.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:fieldValue bean="${suiteResultInstance}" field="user"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${suiteResultInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="suiteResult.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${suiteResultInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${suiteResultInstance?.tests}">
				<li class="fieldcontain">
					<span id="tests-label" class="property-label"><g:message code="suiteResult.tests.label" default="Tests" /></span>
					
						<g:each in="${suiteResultInstance.tests}" var="t">
						<span class="property-value" aria-labelledby="tests-label"><g:link controller="testResult" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:suiteResultInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${suiteResultInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

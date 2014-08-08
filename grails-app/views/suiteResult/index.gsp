
<%@ page import="edc.machine.SuiteResult" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'suiteResult.label', default: 'SuiteResult')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-suiteResult" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-suiteResult" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="tag" title="${message(code: 'suiteResult.tag.label', default: 'Tag')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'suiteResult.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="stp" title="${message(code: 'suiteResult.stp.label', default: 'Stp')}" />
					
						<g:sortableColumn property="user" title="${message(code: 'suiteResult.user.label', default: 'User')}" />
					
						<g:sortableColumn property="url" title="${message(code: 'suiteResult.url.label', default: 'Url')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${suiteResultInstanceList}" status="i" var="suiteResultInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${suiteResultInstance.id}">${fieldValue(bean: suiteResultInstance, field: "tag")}</g:link></td>
					
						<td>${fieldValue(bean: suiteResultInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: suiteResultInstance, field: "stp")}</td>
					
						<td>${fieldValue(bean: suiteResultInstance, field: "user")}</td>
					
						<td><g:link url="${fieldValue(bean: suiteResultInstance, field: "url")}">log</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${suiteResultInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf8">
	<title><spring:message code="label.title" /></title>

</head>
<body>
<a href="<c:url value="/logout" />">
	<spring:message code="label.logout" />
</a>

<span style="float: right">
	<a href="?Lang=en">en</a>
	<a href="?Lang=ru">ru</a>
	<%// to do %>
</span>

<h2><spring:message code="label.title" /></h2>
			<table class="pagination">

						<tr><spring:message code="label.rowcount"></spring:message></tr>
						-
						<tr>${contactListSize}</tr>

						<tr> <spring:message code="label.currentPage"></spring:message></tr>
						-
						<tr>${currentPage}</tr>
						<tr> <spring:message code="label.pages"></spring:message></tr>
						<c:forEach items="${pages}" var="pageItem">
							-
							<tr><a href="page/${pageItem}">${pageItem}</a></tr>
						</c:forEach>

			</table>
	<table class="date">
				<tr>
					<th><spring:message code="label.id" /></th>
					<th><spring:message code="label.name" /></th>
					<th><spring:message code="label.age" /></th>
					<th><spring:message code="label.isAdmin" /></th>
					<th><spring:message code="label.date" /></th>
					<th>&nbsp;</th>
				</tr>
				<form:form method="post" action="add" commandName="contact">
					<tr>
						<td><form:input path="id" value="autoincrement" readonly="true"/></td>
						<td><form:input path="name" /> </td>
						<td><form:input path="age" /></td>
						<td><form:input path="isAdmin" /></td>
						<td><form:input path="date" /></td>
						<td colspan="2"><input type="submit" value="<spring:message code="label.addcontact"/>" /></td>
					</tr>
				</form:form>

				<c:if test="${!empty currentContactList}">
				<c:forEach items="${currentContactList}" var="contact">
					<form:form method="post" action="add" commandName="contact">
					<tr>
						<td><form:input path="id" value="${contact.id}" readonly="true"/></td>
						<td><form:input path="name" value="${contact.name}"/> </td>
						<td><form:input path="age" value="${contact.age}"/></td>
						<td><form:input path="isAdmin" value="${contact.isAdmin}"/></td>
						<td><form:input path="date" value="${contact.date}"/></td>
						<td colspan="2"><input type="submit" value="<spring:message code="label.editcontact"/>" /></td>
						<td><a href="delete/${contact.id}"> <spring:message code="label.delete" /></a></td>
					</tr>
					</form:form>
				</c:forEach>
				</c:if>
	</table>

<form:form method="post" action="search" modelAttribute="searchForString">
<table class="search">
	<tr>
		<th><spring:message code="label.search" /></th>
	</tr>
	<tr>
		<td><form:input path="name" value="${searchForString.name}"/></td>
		<td colspan="2"><input type="submit" value="<spring:message code="label.search"/>" /></td>
	</tr>
</table>
</form:form>
</body>
</html>
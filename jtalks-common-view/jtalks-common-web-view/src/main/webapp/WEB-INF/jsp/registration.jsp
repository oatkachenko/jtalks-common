<%--

    Copyright (C) 2011  jtalks.org Team
    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.
    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.
    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
    Also add information on how to contact you by electronic and paper mail.
    Creation date: Apr 12, 2011 / 8:05:19 PM
    The jtalks.org Project

--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><spring:message code="label.signup"/></title>
    <link href="${pageContext.request.contextPath}/css/main.css"
          type=text/css rel=stylesheet>
</head>

<body>
<div id="stylized" class="registration">
    <form:form id="form" name="form" action='${pageContext.request.contextPath}/registration.html'
               modelAttribute="newUser" method="POST">
        <h1><spring:message code="label.signup"/></h1>

        <p><spring:message code="label.fillmessage"/></p>

        <form:label path="username"><spring:message code="label.username"/>
            <span class="small"><spring:message code="label.tip.username"/></span>
        </form:label>
        <form:input path="username" type="text" size="20"/>
        <br/>
        <form:errors path="username" cssClass="error"/>

        <form:label path="email">Email
            <span class="small"><spring:message code="label.tip.email"/></span>
        </form:label>
        <form:input path="email" type="text" size="25"/>
        <form:errors path="email" cssClass="error"/>

        <form:label path="firstName"><spring:message code="label.firstname"/>
            <span class="small"><spring:message code="label.tip.firstname"/></span>
        </form:label>
        <form:input path="firstName" type="text" size="25"/>
        <form:errors path="firstName" cssClass="error"/>

        <form:label path="lastName"><spring:message code="label.lastname"/>
            <span class="small"><spring:message code="label.tip.lastname"/></span>
        </form:label>
        <form:input path="lastName" type="text" size="25"/>
        <form:errors path="lastName" cssClass="error"/>

        <form:label path="password"><spring:message code="label.password"/>
            <span class="small"><spring:message code="label.tip.password"/></span>
        </form:label>
        <form:input path="password" type="password" size="20"/>
        <form:errors path="password" cssClass="error"/>

        <form:label path="passwordConfirm"><spring:message code="label.confirmation"/>
            <span class="small"><spring:message code="label.tip.confirmation"/></span>
        </form:label>
        <form:input path="passwordConfirm" type="password" size="20"/>
        <form:errors path="passwordConfirm" cssClass="error"/>

        <button type="submit"><spring:message code="label.signup"/></button>
        <div class="spacer"></div>
    </form:form>
</div>

</body>
</html>
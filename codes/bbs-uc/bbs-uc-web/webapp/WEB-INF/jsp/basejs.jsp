<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<script type="text/javascript">
	var _contextPath = '${contextPath}';
</script>
<script src="${contextPath}/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
<script src="${contextPath}/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
<script src="${contextPath}/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
<script src="${contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!--[if lt IE 9]>
		<script src="${contextPath}/assets/crossbrowserjs/html5shiv.js"></script>
		<script src="${contextPath}/assets/crossbrowserjs/respond.min.js"></script>
		<script src="${contextPath}/assets/crossbrowserjs/excanvas.min.js"></script>
<![endif]-->
<script src="${contextPath}/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${contextPath}/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
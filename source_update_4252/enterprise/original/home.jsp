<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://jawr.net/tags" prefix="jwr" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<c:choose>
  <c:when test="${apimPlatform && userRoles != null}">
    <jsp:include page="apimconsole.jsp"/>
  </c:when>
</c:choose>
<jsp:include page="headlibs.jsp"/>
<body>
<div class="portal">
  <jsp:include page="header.jsp"/>
  <nav id="mobile-nav-bar"></nav>
  <div class="dashboard-banner-wrapper">
    <div class="container-fluid">
      <div class="row-fluid dashboard-banner">
        <div class="span12">
          <div class="dashboard-banner-text">
            <h1><fmt:message key="label.appnav.dashboard.header" /></h1>
            <p><fmt:message key="label.appnav.dashboard.tagline" /></p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="dashboard-sections container-fluid">
    <div class="dashboard-sections-inner">
      <div class="dashboard-section">
        <div class="dashboard-section-inner row-fluid">
          <div class="dashboard-section-content span7">
            <h2 class="dashboard-section-content-title"><fmt:message key="label.appnav.dashboard.publish.apis" /></h2>
            <div class="dashboard-section-content-text">
              <p><fmt:message key="label.appnav.dashboard.section.publish.api.text" /></p>
            </div>
            <div class="dashboard-section-content-actions">
              <a href='<c:out value='${docBaseUrl}' escapeXml="false"/><fmt:message key="label.appnav.dashboard.href.publish.api.how" />' target="_blank" rel="noopener"><fmt:message key="label.appnav.dashboard.button.view.documentation" /></a>
            </div>
          </div>
          <div class="dashboard-section-video span5 visible-desktop">
            <a href="<fmt:message key="label.appnav.dashboard.video.publish.api.developer.href" />"  data-poster="<fmt:message key="label.appnav.dashboard.video.publish.api.developer.poster" />" target="_blank" class="video-modal-trigger dashboard-section-video-inner" title="<fmt:message key="label.appnav.dashboard.video.publish.api.publisher.title" />">
              <span class="dashboard-section-video-icon"><img src="images/dashboard-apis-icon.png" width="86" height="120" alt="<fmt:message key="label.appnav.dashboard.publish.apis" />"></span>
              <span class="dashboard-section-video-title"><fmt:message key="label.appnav.dashboard.video.publish.api.publisher.title" /></span>
              <span class="dashboard-section-video-link"><fmt:message key="label.appnav.dashboard.video.play" /> <img src="images/play-icon.png" width="19" height="19" /></span>
            </a>
          </div>
        </div>
      </div>
      <div class="dashboard-section">
        <div class="dashboard-section-inner row-fluid">
          <div class="dashboard-section-video span5 visible-desktop">
            <a href="<fmt:message key="label.appnav.dashboard.video.api.key.href" />"  data-poster="<fmt:message key="label.appnav.dashboard.video.api.key.poster" />" target="_blank" class="video-modal-trigger dashboard-section-video-inner" title="<fmt:message key="label.appnav.dashboard.video.api.key.title" />">
              <span class="dashboard-section-video-icon"><img src="images/dashboard-apikey-icon.png" width="60" height="129" alt="<fmt:message key="label.appnav.dashboard.header.get.an.api.key" />"></span>
              <span class="dashboard-section-video-title"><fmt:message key="label.appnav.dashboard.video.api.key.title" /></span>
              <span class="dashboard-section-video-link"><fmt:message key="label.appnav.dashboard.video.play" /> <img src="images/play-icon.png" width="19" height="19" /></span>
            </a>
          </div>
          <div class="dashboard-section-content span7">
            <h2 class="dashboard-section-content-title"><fmt:message key="label.appnav.dashboard.header.get.an.api.key" /></h2>
            <div class="dashboard-section-content-text">
              <p><fmt:message key="label.appnav.dashboard.section.api.key.text" /></p>
            </div>
            <div class="dashboard-section-content-actions">
              <a href='<c:out value='${docBaseUrl}' escapeXml="false"/><fmt:message key="label.appnav.dashboard.href.api.key.how" />' target="_blank" rel="noopener"><fmt:message key="label.appnav.dashboard.button.view.documentation" /></a>
            </div>
          </div>
        </div>
      </div>
      <div class="dashboard-section">
        <div class="dashboard-section-inner row-fluid">
          <div class="dashboard-section-content span7">
            <h2 class="dashboard-section-content-title"><fmt:message key="label.appnav.dashboard.header.test.an.api" /></h2>
            <div class="dashboard-section-content-text">
              <p><fmt:message key="label.appnav.dashboard.section.test.api.text" /></p>
            </div>
            <div class="dashboard-section-content-actions">
              <a href='<c:out value='${docBaseUrl}' escapeXml="false"/><fmt:message key="label.appnav.dashboard.href.test.api.how" />' target="_blank" rel="noopener"><fmt:message key="label.appnav.dashboard.button.view.documentation" /></a>
            </div>
          </div>
          <div class="dashboard-section-video span5 visible-desktop">
            <a href="<fmt:message key="label.appnav.dashboard.video.test.api.href" />"  data-poster="<fmt:message key="label.appnav.dashboard.video.test.api.poster" />" target="_blank" class="video-modal-trigger dashboard-section-video-inner" title="<fmt:message key="label.appnav.dashboard.video.test.api.title" />">
              <span class="dashboard-section-video-icon"><img src="images/dashboard-test-icon.png" width="100" height="100" alt="<fmt:message key="label.appnav.dashboard.header.test.an.api" />"></span>
              <span class="dashboard-section-video-title"><fmt:message key="label.appnav.dashboard.video.test.api.title" /></span>
              <span class="dashboard-section-video-link"><fmt:message key="label.appnav.dashboard.video.play" /> <img src="images/play-icon.png" width="19" height="19" /></span>
            </a>
          </div>
        </div>
      </div>
      <div class="dashboard-section">
        <div class="dashboard-section-inner row-fluid">
          <div class="dashboard-section-video span5 visible-desktop">
            <a href="<fmt:message key="label.appnav.dashboard.video.generate.reports.href" />"  data-poster="<fmt:message key="label.appnav.dashboard.video.generate.reports.poster" />" target="_blank" class="video-modal-trigger dashboard-section-video-inner" title="<fmt:message key="label.appnav.dashboard.video.generate.reports.title" />">
              <span class="dashboard-section-video-icon"><img src="images/dashboard-reports-icon.png" width="120" height="110" alt="<fmt:message key="label.appnav.dashboard.generate.reports" />"></span>
              <span class="dashboard-section-video-title"><fmt:message key="label.appnav.dashboard.video.generate.reports.title" /></span>
              <span class="dashboard-section-video-link"><fmt:message key="label.appnav.dashboard.video.play" /> <img src="images/play-icon.png" width="19" height="19" /></span>
            </a>
          </div>
          <div class="dashboard-section-content span7">
            <h2 class="dashboard-section-content-title"><fmt:message key="label.appnav.dashboard.generate.reports" /></h2>
            <div class="dashboard-section-content-text">
              <p><fmt:message key="label.appnav.dashboard.section.generate.reports.text" /></p>
            </div>
            <div class="dashboard-section-content-actions">
              <a href='<c:out value='${docBaseUrl}' escapeXml="false"/><fmt:message key="label.appnav.dashboard.href.publish.generate.reports" />' target="_blank" rel="noopener"><fmt:message key="label.appnav.dashboard.button.view.documentation" /></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div id="templates"></div>
  <jsp:include page="footer.jsp"/>
</div>
</body>
<script type="text/javascript" >

  <sec:authorize access="not isAuthenticated()" >
  if(typeof window.userDisplayName === 'undefined') {
    window.userDisplayName = '';
  }
  </sec:authorize>

</script>
</html>

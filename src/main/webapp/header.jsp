<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0"
    />
    <%-- bootstrap 5 적용 --%>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <style>
      * {
        margin: 0 auto;
      }

      body {
        width: 70%;
        margin: 0 auto;
      }

      .logo-a {
        text-decoration: none;
        padding-top: 10px;
        margin-top: 10px;
        display: flex;
      }

      .logo-container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 60%;
        padding-top: 20px;
      }

      .logo-container > img {
        max-width: 100%;
        max-height: 100%;
      }

      .outer {
        height: 180px;
      }

      .btn-container {
        display: flex;
        justify-content: space-between;
        margin-top: 10px;
      }

      .h-left {
        margin-left: 2rem;
      }

      .h-right {
        margin-right: 2rem;
      }

      .btn {
        background-color: #946be2;
        border-radius: 20px;
        border-color: white;
        font-weight: 600;
        color: aliceblue;
      }

      .btn:hover {
        background-color: #7836f3;
        color: #a684e4;
      }

      hr {
        margin: 0;
        border-top: 2px solid black;
        opacity: 1;
      }

      .nav-link {
        padding: 10px 20px;
        color: black;
      }
    </style>
  </head>
  <body>
    <div class="outer">
      <div class="logo-container">
        <a
          href="missions"
          class="logo-a"
        >
          <img
            src="${pageContext.request.contextPath}/images/miplogo.png"
            alt="홈으로이동-프로젝트로고"
            width="50%"
            height="60%"
          />
        </a>
      </div>
      <div class="home-btns">
        <c:choose>
          <c:when test="${empty sessionScope.user}">
            <div class="btn-container">
              <div class="h-left">
                <a
                  class="btn disabled"
                  role="button"
                  >오늘의 미션🖋</a
                >
              </div>
              <div class="h-right">
                <a
                  href="login"
                  class="btn"
                  role="button"
                  >로그인</a
                >
              </div>
            </div>
          </c:when>
          <c:otherwise>
            <div class="btn-container">
              <div class="h-left">
                <a
                  href="today-mission-reg"
                  class="btn"
                  role="button"
                  >오늘의 미션🖋</a
                >
              </div>
              <div class="h-right">
                <a
                  href="logout"
                  class="btn"
                  role="button"
                  >로그아웃</a
                >
              </div>
            </div>
          </c:otherwise>
        </c:choose>
      </div>
    </div>
    <hr />
    <div id="navbox">
      <ul
        class="nav nav-pills nav-justified"
        id="pills-tab"
        role="tablist"
      >
        <li class="nav-item dropup-center dropup">
          <c:choose>
            <c:when test="${empty sessionScope.user}">
              <a
                class="nav-link disabled"
                href="#"
                >My</a
              >
            </c:when>
            <c:otherwise>
              <a
                class="nav-link dropdown-toggle"
                data-bs-toggle="dropdown"
                href="#"
                role="button"
                aria-expanded="false"
                >My</a
              >
              <ul class="dropdown-menu">
                <li>
                  <a
                    class="dropdown-item"
                    href="today-mission-reg"
                    >&nbsp;🏆 오늘의 미션
                  </a>
                </li>
                <li>
                  <a
                    class="dropdown-item"
                    href="my-missions"
                    >&nbsp;📔 나의 미션기록
                  </a>
                </li>
                <li>
                  <a
                    class="dropdown-item"
                    href="#"
                    >&nbsp;🏷 북마크한 미션
                  </a>
                </li>
              </ul>
            </c:otherwise>
          </c:choose>
        </li>

        <li
          class="nav-item"
          role="presentation"
        >
          <a
            class="nav-link active"
            aria-current="page"
            href="missions"
            id="pills-home-tab"
            data-bs-toggle="pill"
            type="button"
            role="tab"
            aria-controls="pills-home"
            aria-selected="true"
            >전체</a
          >
        </li>
        <li
          class="nav-item"
          role="presentation"
        >
          <a
            class="nav-link"
            href="./missions-health"
            id="pills-health-tab"
            data-bs-toggle="pill"
            type="button"
            role="tab"
            aria-controls="pills-health"
            aria-selected="false"
            >건강</a
          >
        </li>
        <li
          class="nav-item"
          role="presentation"
        >
          <a
            class="nav-link"
            href="#"
            id="pills-health-tab"
            data-bs-toggle="pill"
            data-bs-target="#pills-health"
            type="button"
            role="tab"
            aria-controls="pills-health"
            aria-selected="false"
            >생활</a
          >
        </li>
        <li
          class="nav-item"
          role="presentation"
        >
          <a
            class="nav-link"
            href="#"
            id="pills-hobby-tab"
            data-bs-toggle="pill"
            data-bs-target="#pills-hobby"
            type="button"
            role="tab"
            aria-controls="pills-hobby"
            aria-selected="false"
            >취미</a
          >
        </li>
        <li
          class="nav-item"
          role="presentation"
        >
          <a
            class="nav-link"
            href="#"
            id="pills-study-tab"
            data-bs-toggle="pill"
            data-bs-target="#pills-study"
            type="button"
            role="tab"
            aria-controls="pills-study"
            aria-selected="false"
            >공부</a
          >
        </li>
        <li
          class="nav-item"
          role="presentation"
        >
          <a
            class="nav-link"
            href="#"
            id="pills-etc-tab"
            data-bs-toggle="pill"
            data-bs-target="#pills-etc"
            type="button"
            role="tab"
            aria-controls="pills-etc"
            aria-selected="false"
            >기타</a
          >
        </li>
      </ul>
    </div>
    <hr />
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>

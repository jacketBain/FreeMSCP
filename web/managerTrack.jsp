<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Менджер работы с аудиотекой</title>
    <link rel="stylesheet" type="text/css" href="resources/css/mainStyle.css">
</head>
<body background="resources/img/background.png">
    <header>
        <div class="head">
            <table>
                <tr>
                    <th>
                        <img src="resources/img/track.png" width="64" height="64">
                    </th>
                    <th> <p class="headtext">Треки</p></th>
                    <th><a class="inline-link-3" href="${pageContext.request.contextPath}/manager.jsp">Вернуться в меню менеджера</a></th>
                </tr>
            </table>
        </div>
    </header>
    <jsp:useBean id="listTracks" type="java.util.List<com.freemscp.model.Track>" scope="request"/>
    <table>
        <tr class="profile-avatar">
            <td class="profile-avatar-text">Название трека</td>
            <td class="profile-avatar-text">Альбом</td>
            <td class="profile-avatar-text">Жанр</td>
            <td class="profile-avatar-text">BPM</td>
            <td class="profile-avatar-text">Тональность</td>
            <td class="profile-avatar-text">Длительность</td>
            <td class="profile-avatar-text">Год публикации</td>
            <td class="profile-avatar-text"></td>
        </tr>

        <c:forEach items="${listTracks}" var="listTracks">
            <tr class="profile-avatar">
                <td class="profile-avatar-text">${listTracks.trackName}</td>
                <td class="profile-avatar-text">${listTracks.id_album.albumName}</td>
                <td class="profile-avatar-text">${listTracks.id_album.id_genre.genreName}</td>
                <td class="profile-avatar-text">${listTracks.bpm}</td>
                <td class="profile-avatar-text">${listTracks.id_keynote.keyNote}</td>
                <td class="profile-avatar-text">${listTracks.trackTime}</td>
                <td class="profile-avatar-text">${listTracks.id_album.albumYear.year}</td>
                <td class="profile-avatar-text">Изменить</td>
            </tr></tr>
        </c:forEach>
    </table>
</body>
</html>

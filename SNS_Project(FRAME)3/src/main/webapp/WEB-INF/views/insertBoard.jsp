<%@page import="org.springframework.web.context.annotation.SessionScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

<!-- Facebook Meta Tags / 페이스북 오픈 그래프 -->
<meta property="og:url" content="http://kindtiger.dothome.co.kr/insta">
<meta property="og:type" content="website">
<meta property="og:title" content="instagram">
<meta property="og:description" content="instagram clone">
<meta property="og:image"
	content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">
.
<!-- Twitter Meta Tags / 트위터 -->
<meta name="twitter:card" content="instagram clone">
<meta name="twitter:title" content="instagram">
<meta name="twitter:description" content="instagram clone">
<meta name="twitter:image"
	content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">

<!-- Google / Search Engine Tags / 구글 검색 엔진 -->
<meta itemprop="name" content="instagram">
<meta itemprop="description" content="instagram clone">
<meta itemprop="image"
	content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">


<title>instagram</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/new_post.css">
<link rel="shortcut icon" href="imgs/instagram.png">

<script src="https://code.jquery.com/jquery-3.6.3.js"
	integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
	crossorigin="anonymous"></script>
</head>
<body>


	<section id="container">


		<header id="header">
			<section class="h_inner">

				<h1 class="logo">
					<a href="home.do">
						<div class="sprite_insta_icon"></div>
						<div>
							<div class="sprite_write_logo"></div>
						</div>
					</a>
				</h1>

				<div class="search_field">
					<input type="text" placeholder="검색" tabindex="0">

					<div class="fake_field">
						<span class=sprite_small_search_icon></span> <span>검색</span>
					</div>
				</div>


				<div class="right_icons">
					<a href="new_post.html"><div class="sprite_camera_icon"></div></a>
					<a href="login.html"><div class="sprite_compass_icon"></div></a> <a
						href="follow.html"><div class="sprite_heart_icon_outline"></div></a>
					<a href="profile.html"><div class="sprite_user_icon_outline"></div></a>
				</div>
			</section>
		</header>



		<div id="main_container">
        <div class="post_form_container">
            <form action="insertBoard.do" method="post" class="post_form" enctype="multipart/form-data">
            <input type="hidden" name="noImg" value="no-background.png">
                <div class="title">
                    NEW POST
                </div>
                <div class="preview">
                    <div class="upload">
                        <div class="post_btn">
                            <div class="plus_icon">
                                <span></span>
                                <span></span>
                            </div>
                            <p>포스트 이미지 추가</p>
                            <canvas id="imageCanvas"></canvas>
                            
                            
                            <p><img id="" src="images/${board.upload}" style="width: 300px; height: 300px; object-fit: cover" alt="thumbnail"></p>
                            
                        </div>
                    </div>
                </div>
                <p>
                	<input type="text" id="title" name="title" placeholder="title"><br>
                    <input type="file" name="uploadfile" id="id_photo" value="">
                </p>
                <p>
                 
                    <textarea name="content" id="content" cols="50" rows="5" placeholder="140자 까지 등록 가능합니다.
					#태그명 을 통해서 검색 태그를 등록할 수 있습니다.
					예시 : I # love # insta!">
					</textarea>
                 
				
                </p>
                	<input type="hidden" id="id" name="id" readonly="readonly" value="${sessionScope.user.id}">
                	<c:if test="${empty sessionScope.user.pay}"><input type="hidden" id="pay" name="pay" value='0'><br></c:if>
					<c:if test="${!empty sessionScope.user.pay}"><input type="hidden" id="pay" name="pay" value='${sessionScope.user.pay}'><br></c:if>
                
                <input class="submit_btn" type="submit" value="저장">
            </form>

        </div>

    </div>


					</p>
					<input type="hidden" id="id" name="id" readonly="readonly"
						value="${sessionScope.user.id}">
					<c:if test="${empty sessionScope.user.pay}">
						<input type="hidden" id="pay" name="pay" value='0'>
						<br>
					</c:if>
					<c:if test="${!empty sessionScope.user.pay}">
						<input type="hidden" id="pay" name="pay"
							value='${sessionScope.user.pay}'>
						<br>
					</c:if>

					<input class="submit_btn" type="submit" value="저장">
				</form>

			</div>

		</div>


	</section>

	<script src="js/insta.js"></script>

	<script>
		var fileInput = document.querySelector("#id_photo"), button = document
				.querySelector(".input-file-trigger"), the_return = document
				.querySelector(".file-return");

		// Show image
		fileInput.addEventListener('change', handleImage, false);
		var canvas = document.getElementById('imageCanvas');
		var ctx = canvas.getContext('2d');

		function handleImage(e) {
			var reader = new FileReader();
			reader.onload = function(event) {
				var img = new Image();
				// var imgWidth =
				img.onload = function() {
					canvas.width = 300;
					canvas.height = 300;
					ctx.drawImage(img, 0, 0, 300, 300);
				};
				img.src = event.target.result;
				// img.width = img.width*0.5
				// canvas.height = img.height;
			};
			reader.readAsDataURL(e.target.files[0]);
		}
	</script>
</body>
</html>
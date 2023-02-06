<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    <!-- Facebook Meta Tags / 페이스북 오픈 그래프 -->
    <meta property="og:url" content="http://kindtiger.dothome.co.kr/insta">
    <meta property="og:type" content="website">
    <meta property="og:title" content="instagram">
    <meta property="og:description" content="instagram clone">
    <meta property="og:image" content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">
    .
    <!-- Twitter Meta Tags / 트위터 -->
    <meta name="twitter:card" content="instagram clone">
    <meta name="twitter:title" content="instagram">
    <meta name="twitter:description" content="instagram clone">
    <meta name="twitter:image" content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">

    <!-- Google / Search Engine Tags / 구글 검색 엔진 -->
    <meta itemprop="name" content="instagram">
    <meta itemprop="description" content="instagram clone">
    <meta itemprop="image" content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">


    <title>instagram</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/profile.css">
    <link rel="shortcut icon" href="imgs/instagram.png">

<style>

.contents_container{
    /*display: flex; */
    flex-wrap: wrap;
    justify-content: space-between;
    display: none;
}

.contents_container.active{
    display: flex; 
}

.contents_container .content{
    max-width:300px;
    max-height:300px;
    overflow:hidden;
    margin-bottom: 18px;

}

.contents_container .content video{
    width: 100%;
    height: 100%;
}


@media screen and (max-width:1000px){ 

    .contents_container {
        justify-content: center;

    }

    .contents_container .content{
        margin:10px;
    }
}

</style>


</head>
<body>

<section id="container">

    <header id="header">
        <section class="h_inner">

            <h1 class="logo">
                <a href="index.html">
                    <div class="sprite_insta_icon"></div>
                    <div>
                        <div class="sprite_write_logo"></div>
                    </div>
                </a>
            </h1>

            <div class="search_field">
                <input type="text" placeholder="검색" tabindex="0">

                <div class="fake_field">
                    <span class=sprite_small_search_icon></span>
                    <span>검색</span>
                </div>
            </div>


            <div class="right_icons">
                <a href="new_post.html"><div class="sprite_camera_icon"></div></a>
                <a href="login.html"><div class="sprite_compass_icon"></div></a>
                <a href="follow.html"><div class="sprite_heart_icon_outline"></div></a>
                <a href="profile.html"><div class="sprite_user_icon_outline"></div></a>
            </div>
        </section>
    </header>


    <div id="main_container">

        <section class="b_inner">

            <div class="hori_cont">
                <div class="profile_wrap">
                    <div class="profile_img">
                        <img src="imgs/thumb.jpeg" alt="착한호랑이">
                    </div>
                </div>

                <div class="detail">
                    <div class="top">
                        <div class="user_name">KindTiger</div>
                        <a href="profile_edit.html" class="profile_edit">프로필편집</a>
                        <a href="#" class="logout">로그아웃</a>
                    </div>

                    <ul class="middle">
                        <li>
                            <span>게시물</span>
                            3
                        </li>
                        <li>
                            <span>팔로워</span>
                            3
                        </li>
                        <li>
                            <span>팔로우</span>
                            3
                        </li>
                    </ul>
                    <p class="about">
                        <span class="nick_name">kindtigerrr</span>
                        <span class="book_mark">bookmark</span>
                    </p>

                </div>
            </div>
            
		
		
            <div class="mylist_contents contents_container active">   
            	<c:forEach items="${shortsList}" var="shorts">  
                
                <div class = "content" >   			        
					<a href="getShorts?sSeq=${shorts.sSeq}">
						<video id="video-player" onmouseover="this.play()" onmouseout="this.pause()"
						preload="metadata">
						<source src="shorts/${shorts.upload}#t=0.5">
					</video>
					</a>

           	 	</div>
           	 	</c:forEach>  
			</div>
			
			
			
			
		
			<!-- 
            <div class="bookmark_contents contents_container">
                <div class="pic">
                    <a href="#"><img src="imgs/img_section/img03.jpg" alt=""></a>
                </div>
                <div class="pic">
                    <a href="#"><img src="imgs/img_section/img01.jpg" alt=""></a>
                </div>
                <div class="pic">
                    <a href="#"> <img src="imgs/img_section/img02.jpg" alt=""></a>
                </div>
                <div class="pic">
                    <a href="#"> <img src="imgs/img_section/img01.jpg" alt=""></a>
                </div>
                <div class="pic">
                    <a href="#"> <img src="imgs/img_section/img02.jpg" alt=""></a>
                </div>
                <div class="pic">
                    <a href="#"> <img src="imgs/img_section/img03.jpg" alt=""></a>
                </div>
                <div class="pic">
                    <a href="#"> <img src="imgs/img_section/img01.jpg" alt=""></a>
                </div>
                <div class="pic">
                    <a href="#"> <img src="imgs/img_section/img02.jpg" alt=""></a>
                </div>
                <div class="pic">
                    <a href="#"> <img src="imgs/img_section/img02.jpg" alt=""></a>
                </div>
            </div>
 -->



        </section>
    </div>


</section>


<!--<script src="js/insta.js"></script>-->
<script src="js/profile.js"></script>
<script>



</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery-3.5.1.js"></script>
<style>
/* 
    .row{
        margin-top: 20px; 
    }
     */
/*      
    .container {
        overflow: hidden;
        max-width: 100%;
        height: auto;
        display: block;
    } 
    */
    .mimg {
        max-width: 100%;
        height: auto;
    }
    .timg {
        width: 100%;
        height: 100%;
    }
</style>
</head>
<body>
<%--  header 부분. --%>
<% pageContext.include("header.html"); %>
<!-- Main -->
<div class="container">
    <!-- 검색바 -->
    <div class="row">
        <div class="col-md-8"></div>
        <div class="col-md-3">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search this News">
                <span class="input-group-btn">
                    <button type="submit" class="btn btn-default">
                    <span class="glyphicon glyphicon-search"></span>
                    </button>
                </span>
            </div>
        </div>
    </div>
    <br />
    <!-- 헤드라인 뉴스 -->
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <img class="mimg" src="images/son.jpg" alt="" class="text-center">
        </div>
    </div>
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <h4><strong>손흥민 1골 1도움 평점 9.3</strong></h4>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <p>프리미어리그 토트넘의 손흥민 선수가 라이벌과의 경기에서 환상적인 득점으로 팀 승리를 이끌었습니다.</p>
        </div>
    </div>
</div>
<div class="container-fluid">
    <!-- 두번째 헤드라인 뉴스-->
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-2">
            <img class="timg" src="images/mom.jpg" alt="" class="text-center">
        </div>
        <div class="col-md-2">
            <img class="timg" src="images/son.jpg" alt="" class="text-center">
        </div>
        <div class="col-md-2">
            <img class="timg" src="images/son.jpg" alt="" class="text-center">
        </div>
    </div>
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-2">
            <h4><strong>전 토트넘 감독, “포체티노 우승컵 있어? 무리뉴를 믿어라”</strong></h4>
        </div>
        <div class="col-md-2">
            <h4><strong>손흥민 1골 1도움 평점 9.3</strong></h4>
        </div>
        <div class="col-md-2">
            <h4><strong>손흥민 1골 1도움 평점 9.3</strong></h4>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-2">
            <p>과거 토트넘을 이끌었던 팀 셔우드 감독이 ‘우승 청부사’ 조세 무리뉴 감독에 대한 믿음을 드러냈고, 마우리시오 포체티노 감독은 평가 절하했다.</p>            
        </div>
        <div class="col-md-2">
            <p>프리미어리그 토트넘의 손흥민 선수가 라이벌과의 경기에서 환상적인 득점으로 팀 승리를 이끌었습니다.</p>
        </div>
        <div class="col-md-2">
            <p>프리미어리그 토트넘의 손흥민 선수가 라이벌과의 경기에서 환상적인 득점으로 팀 승리를 이끌었습니다.</p>
        </div>
    </div>
</div>
<br />
<div class="container">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <img class="timg" src="images/kane.jpg" alt="" class="text-center">
        </div>
        <div class="col-md-6">
            <div class="row">
                <h4><strong> 토트넘 구단이 해리 케인(27)을 '북런던의 왕'으로 치켜세웠다. </strong></h4>
            </div>
            <div class="row">
                <p>토트넘은 9일(한국시간) 구단 SNS에 케인이 왕관을 쓴 그림을 올리며 북런던의 왕(The King in the North)이라고 표현했다. 케인의 북런던 더비 활약을 기념하기 위해 만든 것이다. 
                    케인은 지난 7일 런던 토트넘 핫스퍼 스타디움서 열린 2020-2021 잉글랜드 프리미어리그(EPL) 아스널과의 11라운드 경기에서 1골을 터뜨리며 팀의 2-0 승리를 이끌었다.
                    특히 케인은 이날 골로 과거 토트넘의 바비 스미스, 아스널의 에마뉘엘 아데바요르(이상 10골)를 넘어 북런던 더비 역대 최다골(11골) 주인공에 이름을 올렸다.  
                    북런던 더비는 런던 북부지역을 연고지로 하는 토트넘과 아스널의 라이벌 대결이다. 이제 북런던 더비에서 케인보다 많은 골을 기록한 선수는 없다.</p>
            </div>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                <img class="timg" src="images/kane.jpg" alt="" class="text-center">
            </div>
            <div class="col-md-6">
                <div class="row">
                    <h4><strong> 토트넘 구단이 해리 케인(27)을 '북런던의 왕'으로 치켜세웠다. </strong></h4>
                </div>
                <div class="row">
                    <p>토트넘은 9일(한국시간) 구단 SNS에 케인이 왕관을 쓴 그림을 올리며 북런던의 왕(The King in the North)이라고 표현했다. 케인의 북런던 더비 활약을 기념하기 위해 만든 것이다. 
                        케인은 지난 7일 런던 토트넘 핫스퍼 스타디움서 열린 2020-2021 잉글랜드 프리미어리그(EPL) 아스널과의 11라운드 경기에서 1골을 터뜨리며 팀의 2-0 승리를 이끌었다.
                    </p>
                </div>
            </div>
    </div>
    <br />
    <div class="row">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">
                <img class="timg" src="images/kane.jpg" alt="" class="text-center">
            </div>
            <div class="col-md-6">
                <div class="row">
                    <h4><strong> 토트넘 구단이 해리 케인(27)을 '북런던의 왕'으로 치켜세웠다. </strong></h4>
                </div>
                <div class="row">
                    <p>토트넘은 9일(한국시간) 구단 SNS에 케인이 왕관을 쓴 그림을 올리며 북런던의 왕(The King in the North)이라고 표현했다. 케인의 북런던 더비 활약을 기념하기 위해 만든 것이다. 
                        케인은 지난 7일 런던 토트넘 핫스퍼 스타디움서 열린 2020-2021 잉글랜드 프리미어리그(EPL) 아스널과의 11라운드 경기에서 1골을 터뜨리며 팀의 2-0 승리를 이끌었다.
                    </p>
                </div>
            </div>
    </div>
</div>
<br />
<br />
<br />
<br />
</body>
</html>
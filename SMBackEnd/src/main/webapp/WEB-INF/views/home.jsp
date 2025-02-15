<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/sm1920.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/sm1024.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/sm768.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/smmob.css"/>
  <title>SM HOME</title>
</head>
<body data-context-path="${pageContext.request.contextPath}">
  <div id="wrapper">
    <div id="menuModal">
      <p>MENU</p>
      <ul>
        <li><a href="#">HISTORY</a></li>
        <li><a href="#">ARTIST</a></li>
        <li><a href="${pageContext.request.contextPath}/news/newsList">NEWS</a></li>
      </ul>
    </div>
    <header id="header">
      <div id="headerWrapper">
        <div class="lineLeft">
          <div class="centerBox"></div>
        </div>
        <h1><a href="#"><img src="${pageContext.request.contextPath}/static/img/SMlogoWhiteOut.png" alt="SM로고이미지"/></a></h1>
        <nav id="nav">
          <div class="lineLeft lineLeft2">
            <div class="centerBox"></div>
            <div class="centerBox"></div>
            <div class="centerBox"></div>
            <div class="centerBox"></div>
          </div>
          <ul id="menu">
            <li><a href="#" class="menu">MENU</a></li>
            <li><a href="#">HISTORY</a></li>
            <li><a href="#">ARTIST</a></li>
            <li><a href="${pageContext.request.contextPath}/news/newsList">NEWS</a></li>
            <li><a href="#">*</a></li>
          </ul>
        </nav>
      </div>
      <div class="visualBackground"></div>
      <div class="visualMobal"></div>
    </header>
    
    <!-- container -->
    <main id="main">
      <section id="visual">
        <div>
          <b>The Future</b><b> of</b>
          <div class="visualimg1"></div>
          <b>Culture</b>
          <div class="visualimg2"></div>
          <b>Technology</b>
          <b>Welcome </b>
          <b> to</b>
          <div class="visualimg3"></div>
          <b>Welcome </b>
          <b> to</b>
          <b> SM</b>
        </div>
      </section>
      <!-- main1 -->
      <section id="intro">
        <div>
          <img id="smlogoMotion" src="${pageContext.request.contextPath}/static/img/smlogomotion.gif"/>
          <div id="introText">
            <h2>INTRODUCTION</h2>
            <div class="lineLeft">
              <div class="centerBox"></div>
            </div>
            <div class="introTextSlider">
              <div id="introTextSliderWrap">
                <div class="slider s1">
                  <b>SM Entertainment는 아시아를 넘어 글로벌 No.1을 지향합니다.</b>
                  <p>1995년 설립 이래 SM Entertainment는 K-POP의 태동과 진화를 이끌며 엔터테인먼트 업계의 이정표를 세워 왔습니다. 쌓아온 노하우를 발판 삼아, 글로벌 1등 기업으로 도약하겠습니다.</p>
                </div>
                <div class="slider s2">
                  <b>SM Entertainment는 K-POP과 K-Culture의 미래를 설계합니다.</b>
                  <p>틀을 깨는 혁신과 창조를 거듭해온 SM Entertainment가 K-POP과 K-Culture를 즐기는 새로운 기준을 제시하고자 합니다. 미래를 내다보고 일상에 영감을 불어넣는 음악을 선보이겠습니다.</p>
                </div>
                <div class="slider s3">
                  <b>SM Entertainment는 신뢰할 수 있는 책임 경영의 모범이 되겠습니다.</b>
                  <p>‘K-POP의 선구자’로서 공정한 지배구조로 주주 가치를 제고하는 동시에, 일하고 싶은 조직문화를 조성해 임직원의 헌신에 보답하며 선진적 거버넌스의 ‘업계 표준’이 되겠습니다.</p>
                </div>
              </div>
              <div id="introIndicator">
                <div id="introIndiMove"></div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- main2 -->
      <section id="artist">
        <div id="artistBackground">
          <div class="artistContent">
            <h2>ARTIST</h2>
            <div id="artistSvg">
              <svg id="Layer_1" xmlns="http://www.w3.org/2000/svg" viewBox="-5 -5 1156 486">
                <defs>
                  <mask id="svgMask1" x="0" y="0" width="1150" height="480">
                    <rect x="0" y="0" width="1150" height="480" fill="black" />
                    <path fill="white" stroke="white" stroke-width="2" d="M687.6,0H59.79C26.77,0,0,26.64,0,59.5v238c0,32.86,26.77,59.5,59.79,59.5h119.58c33.02,0,59.79,26.64,59.79,59.5h0c0,32.86,26.77,59.5,59.79,59.5h787.25c33.02,0,59.79-26.64,59.79-59.5v-238c0-32.86-26.77-59.5-59.79-59.5h-279.03c-33.02,0-59.79-26.64-59.79-59.5h0C747.39,26.64,720.62,0,687.6,0Z"/>
                  </mask>
                </defs>
                <image xlink:href="${pageContext.request.contextPath}/static/img/svgImg1.jpg" x="0" y="-50" width="1150" height="780" mask="url(#svgMask1)" />
                <path class="svgMask" fill="none" stroke="white" stroke-width="2" d="M687.6,0H59.79C26.77,0,0,26.64,0,59.5v238c0,32.86,26.77,59.5,59.79,59.5h119.58c33.02,0,59.79,26.64,59.79,59.5h0c0,32.86,26.77,59.5,59.79,59.5h787.25c33.02,0,59.79-26.64,59.79-59.5v-238c0-32.86-26.77-59.5-59.79-59.5h-279.03c-33.02,0-59.79-26.64-59.79-59.5h0C747.39,26.64,720.62,0,687.6,0Z"/>
              </svg>
            </div>
            <div id="artistText">
              <p>aespa</p>
              <img class="arrow" src="${pageContext.request.contextPath}/static/img/arrowWhite.png" alt="화살표"/>
            </div>
          </div>
          <div class="artistContent">
            <div id="artistSvg">
              <svg id="Layer_2" xmlns="http://www.w3.org/2000/svg" viewBox="-5 -5 1156 486">
                <defs>
                  <mask id="svgMask2" x="0" y="0" width="1150" height="480">
                    <rect x="0" y="0" width="1150" height="480" fill="black" />
                    <path fill="white" stroke="white" stroke-width="2" d="M60,0C27,0,0,27,0,60h0c0,33,27,60,60,60h120c33,0,60,27,60,60h0c0,33-27,60-60,60H60c-33,0-60,27-60,60v116c0,33,27,60,60,60h1026c33,0,60-27,60-60h0c0-33-27-60-60-60h-120c-33,0-60-27-60-60h0c0-33,27-60,60-60h120c33,0,60-27,60-60V60c0-33-27-60-60-60H60Z"/>
                  </mask>
                </defs>
                <image xlink:href="${pageContext.request.contextPath}/static/img/svgImg4.jpg" x="-50" y="-430" width="1250" height="1380" mask="url(#svgMask2)" />
                <path class="svgMask" fill="none" stroke="white" stroke-width="2" d="M60,0C27,0,0,27,0,60h0c0,33,27,60,60,60h120c33,0,60,27,60,60h0c0,33-27,60-60,60H60c-33,0-60,27-60,60v116c0,33,27,60,60,60h1026c33,0,60-27,60-60h0c0-33-27-60-60-60h-120c-33,0-60-27-60-60h0c0-33,27-60,60-60h120c33,0,60-27,60-60V60c0-33-27-60-60-60H60Z"/>
              </svg>
            </div>
            <div id="artistText">
              <p>SHINee</p>
              <img class="arrow" src="${pageContext.request.contextPath}/static/img/arrowWhite.png" alt="화살표"/>
            </div>
          </div>
          <div class="artistContent">
            <div id="artistSvg">
              <svg id="Layer_3" xmlns="http://www.w3.org/2000/svg" viewBox="-5 -5 1156 486">
                <defs>
                  <mask id="svgMask3" x="0" y="0" width="1150" height="480">
                    <rect x="0" y="0" width="1150" height="480" fill="black" />
                    <path fill="white" stroke="white" stroke-width="2" d="M60,0C27,0,0,27,0,60v356c0,33,27,60,60,60h268c33,0,60-27,60-60v-20c0-33,27-60,60-60h250c33,0,60,27,60,60v20c0,33,27,60,60,60h268c33,0,60-27,60-60V60c0-33-27-60-60-60H60Z"/>
                  </mask>
                </defs>
                <image xlink:href="${pageContext.request.contextPath}/static/img/svgImg3.jpg" x="-80" y="-280" width="1250" height="880" mask="url(#svgMask3)" />
                <path class="svgMask" fill="none" stroke="white" stroke-width="2" d="M60,0C27,0,0,27,0,60v356c0,33,27,60,60,60h268c33,0,60-27,60-60v-20c0-33,27-60,60-60h250c33,0,60,27,60,60v20c0,33,27,60,60,60h268c33,0,60-27,60-60V60c0-33-27-60-60-60H60Z"/>
              </svg>
            </div>
            <div id="artistText">
              <p>NCT DREAM</p>
              <img class="arrow" src="${pageContext.request.contextPath}/static/img/arrowWhite.png" alt="화살표"/>
            </div>
          </div>
        </div>
        <b>LET ME INTRODUCE OUR ARTIST LET ME INTRODUCE OUR ARTIST LET ME INTRODUCE OUR ARTIST LET ME INTRODUCE OUR ARTIST</b>
        <b>LET ME INTRODUCE OUR ARTIST  LET ME INTRODUCE OUR ARTIST LET ME INTRODUCE OUR ARTIST LET ME INTRODUCE OUR ARTIST</b>
      </section>
        <!-- main3 -->
      <section id="incompany">
        <div>
          <h2>Labels In Company</h2>
          <div id="incompanyContent">
            <div id="incompanyFirst" class="incompanySlider">
              <div class="lineLeft">
                <div class="centerBox"></div>
              </div>
              <div class="incompanySliderLogo"></div>
              <div class="lineLeft lineLeft2">
                <div class="centerBox 2"></div>
              </div>
              <div class="incompanySliderImage"></div>
            </div>
            <ul id="incompanyTab">
              <li>SM Classics</li>
              <li>SCREAM RECORS</li>
              <li>KRUCIALIZE</li>
            </ul>
            <div class="incompanySlider">
              <p>SM Classics는 SM 엔터테인먼트의 클래식 음악 전문 레이블입니다. K-Pop을 오케스트라 버전 및 다양한 편성의 클래식 음악으로 편곡하여 선보이고 있으며, 클래식과 관련된 여러 장르의 음악을 포괄적으로 다루고 있습니다.</p>
            </div>
          </div>
        </div>    
      </section>
      <!-- main4 -->
      <section id="news">
        <div>
          <h2>NEWS</h2>
          <c:forEach items="${list}" var="news" varStatus="status">
          	<c:if test="${status.index < 4}">
	          	<div id="newsContent">
	          		<div id="newsinnerContent">
	          			<div class="newsImg">
	          				<div class="lineLeft lineLeft${status.index + 1}">
	          					<div class="centerBox"></div>
	          				</div>
	          				<img class="newsImg${status.index + 1}" src="${pageContext.request.contextPath}/${news.newsImg}" alt="${news.newsImg}"/>
	          			</div>
	          			<div id="newsText">
			                <a href="#" target="_blank">
			                  <div id="pinkbox"></div>
			                  <div id="arrowBox">
			                    <img class="arrow" src="${pageContext.request.contextPath}/static/img/arrowNavy.png" alt="화살표"/>
			                  </div>
			                  <p>${news.newsTitle}</p>
			                  <p>${news.newsContent}</p>
			                </a>
		                </div>
	          		</div>
	          	</div>
          	</c:if>
          </c:forEach>
          
          <%-- <div id="newsContent">
            <div id="newsinnerContent">
              <div class="newsImg">
                <div class="lineLeft">
                  <div class="centerBox"></div>
                </div>
                <img class="lineLeft" src="${pageContext.request.contextPath}/static/img/NewsImg1.jpg" alt="아이린화보" />
              </div>
              <div id="newsText">
                <a href="#" target="_blank">
                  <div id="pinkbox"></div>
                  <div id="arrowBox">
                    <img class="arrow" src="${pageContext.request.contextPath}/static/img/arrowNavy.png" alt="화살표"/>
                  </div>
                  <p>레드벨벳 아이린, 카운트다운 라이브 11월 26일 오후 5시 진행</p>
                  <p>레드벨벳 아이린(에스엠엔터테인먼트 소속)이 전 세계 팬들과 솔로 데뷔의 순간을 함께 기념한다.

                    아이린은 첫 솔로 앨범 ‘Like A Flower’(라이크 어 플라워) 공개 당일인 11월 26일 오후 5시부터 유튜브·틱톡·위버스 레드벨벳 채널에서 ‘IRENE 아이린 ‘Like A Flower’ Countdown Live’(아이린 ‘라이크 어 플라워’ 카운트다운 라이브)를 펼친다.</p>
                </a>
              </div>  
            </div>
          </div>
          <div id="newsContent">
            <div id="newsinnerContent">
              <div class="newsImg">
                <div class="lineLeft lineLeft2">
                  <div class="centerBox"></div>
                </div>
                <img src="${pageContext.request.contextPath}/static/img/NewsImg2.jpg" alt="태연솔로앨범사진"/>
              </div>
              <div id="newsText">
                <a href="#" target="_blank">  
                  <div id="pinkbox"></div>
                  <div id="arrowBox">
                    <img class="arrow" src="${pageContext.request.contextPath}/static/img/arrowNavy.png" alt="화살표"/>
                  </div>
                  <p>‘18일 발매’ 태연, 수록곡 ‘Disaster’로 선사할 이토록 완벽한 재앙</p>
                  <p>소녀시대 태연(에스엠엔터테인먼트 소속)이 수록곡 ‘Disaster’(디재스터)로 올 가을 감수성을 자극한다.

                  태연 여섯 번째 미니앨범 수록곡 ‘Disaster’는 거칠고 역동적인 드럼 비트와 벅차오르는 신스 라인이 태연의 호소력 짙은 보컬과 만나 감수성을 극대화하는 Pop Rock 장르의 곡으로, 가사에는 끝이 절망임을 알면서도 기꺼이 뛰어드는 사랑의 감정을 ‘완벽한 재앙’이라는 모순적 표현으로 그려냈다.</p>
                </a>
              </div>
            </div>
          </div>
          <div id="newsContent">
            <div id="newsinnerContent">
              <div class="newsImg">
                <div class="lineLeft lineLeft3">
                  <div class="centerBox"></div>
                </div>
                <img src="${pageContext.request.contextPath}/static/img/NewsImg3.jpg" alt="엔씨티드림단체사진"/>
              </div>
              <div id="newsText">
                <a href="#" target="_blank">
                  <div id="pinkbox"></div>
                  <div id="arrowBox">
                    <img class="arrow" src="${pageContext.request.contextPath}/static/img/arrowNavy.png" alt="화살표"/>
                  </div>
                  <p>NCT DREAM, 신곡 ‘When I’m With You’ 무대 오늘(15일) 첫 공개</p>
                  <p>NCT DREAM(엔시티 드림, 에스엠엔터테인먼트 소속)이 이번 주 음악방송에 출격, 본격적인 컴백 활동에 돌입한다.

                  NCT DREAM은 오늘(15일) 방송되는 KBS2 ‘뮤직뱅크’를 시작으로, 16일 MBC ‘쇼! 음악중심’, 17일 SBS ‘인기가요’ 등 각종 음악 프로그램에 출연, 정규 4집 타이틀 곡 ‘When I’m With You’(웬 아임 위드 유) 무대를 펼친다.</p>
                </a>
              </div>
            </div>
          </div>
          <div id="newsContent">
            <div id="newsinnerContent">
              <div class="newsImg">
                <div class="lineLeft lineLeft4">
                  <div class="centerBox"></div>
                </div>
                <img src="${pageContext.request.contextPath}/static/img/NewsImg4.jpg" alt="스크림레코즈새앨범표지"/>
              </div>
              <div id="newsText">
                <a href="#" target="_blank">
                  <div id="pinkbox"></div>
                  <div id="arrowBox">
                  <img class="arrow" src="${pageContext.request.contextPath}/static/img/arrowNavy.png" alt="화살표"/>
                  </div>
                  <p>ScreaM Records, DRD 새 싱글 ‘Turn Up The Volume’ 오늘(14일) 오후 2시 공개</p>
                  <p>SM엔터테인먼트 산하 댄스 뮤직 레이블 ScreaM Records(스크림 레코즈)가 댄스 뮤직 그룹 DRD과 손잡고 선보이는 새 싱글이 오늘(14일) 공개된다.</p>
                </a>
              </div>
            </div>
          </div> --%>
        </div>
      </section>
      <!-- main5 -->
      <section id="summary">
        <div>
          <div id="summaryWrapper">
            <h2>IR SUMMARY</h2>
            <div class="lineLeft">
              <div class="centerBox"></div>
            </div>
            <div class="lineLeft lineLeft2">
              <div class="centerBox"></div>
            </div>
            <div id="summaryLeft">
              <div id="summaryLeftDiv">
                <p>주가 정보</p>
                <p></p>
              </div>
              <div id="summaryCircle"></div>
            </div>
            <div id="summaryRight">
              <b></b>
              <b></b>
            </div>
            <div class="lineLeft lineLeft3">
              <div class="centerBox"></div>
            </div>
            <div id="summaryCircle2Box">
              <div id="summaryCircle2"></div>
            </div>
          </div>
          <div id="pinkBox"></div>
        </div>
      </section>
      <!-- main6 -->
    </main>
    <!-- main -->
    
    <footer id="footer">
    <p class="scrollUp">UP</p>
      <div class="lineLeft">
        <div class="centerBox"></div>
        <div class="centerBox"></div>
        <div class="centerBox"></div>
        <div class="centerBox"></div>
        <div class="centerBox"></div>
        <div class="centerBox"></div>
        <div class="centerBox"></div>
        <div class="centerBox"></div>
        <div class="centerBox"></div>
        <div class="centerBox"></div>
      </div>
      <div id="footerFirst">
        <div id="smLogo">
          <img src="${pageContext.request.contextPath}/static/img/SMlogoWhiteOut.png" alt="SM로고이미지"/>
          <p>SM<br />ENTERTAINMENT</p>
        </div>
        <div id="contact">
          <p>CONTACT US</p>
          <ul>
            <li><a href="#">LOCATION</a></li>
            <li><a href="#">IR CONTACT</a></li>
            <li><a href="#">BUSINESS CONTACT</a></li>
            <li><a href="#">비윤리행위 신고</a></li>
          </ul>
        </div>
      </div>
      <div id="footerSecond">
        <div id="SNSIcon">
          <ul>
            <li><a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
              <path d="M31.6812 9.60039C31.6812 9.60039 31.3688 7.39414 30.4063 6.42539C29.1875 5.15039 27.825 5.14414 27.2 5.06914C22.725 4.74414 16.0063 4.74414 16.0063 4.74414H15.9937C15.9937 4.74414 9.275 4.74414 4.8 5.06914C4.175 5.14414 2.8125 5.15039 1.59375 6.42539C0.63125 7.39414 0.325 9.60039 0.325 9.60039C0.325 9.60039 0 12.1941 0 14.7816V17.2066C0 19.7941 0.31875 22.3879 0.31875 22.3879C0.31875 22.3879 0.63125 24.5941 1.5875 25.5629C2.80625 26.8379 4.40625 26.7941 5.11875 26.9316C7.68125 27.1754 16 27.2504 16 27.2504C16 27.2504 22.725 27.2379 27.2 26.9191C27.825 26.8441 29.1875 26.8379 30.4063 25.5629C31.3688 24.5941 31.6812 22.3879 31.6812 22.3879C31.6812 22.3879 32 19.8004 32 17.2066V14.7816C32 12.1941 31.6812 9.60039 31.6812 9.60039ZM12.6938 20.1504V11.1566L21.3375 15.6691L12.6938 20.1504Z" fill="#85929A"/>
              </svg></a></li>
            <li><a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
              <path d="M16.0082 4.52159C19.751 4.52159 20.1943 4.538 21.6662 4.60363C23.0342 4.6638 23.7729 4.89353 24.2654 5.08498C24.9166 5.33659 25.3871 5.6429 25.8741 6.12971C26.3666 6.622 26.6676 7.08693 26.9193 7.73784C27.1108 8.23012 27.3406 8.97402 27.4008 10.336C27.4665 11.8129 27.4829 12.2559 27.4829 15.9918C27.4829 19.7332 27.4665 20.1762 27.4008 21.6476C27.3406 23.015 27.1108 23.7535 26.9193 24.2458C26.6676 24.8967 26.3611 25.3671 25.8741 25.8539C25.3817 26.3462 24.9166 26.647 24.2654 26.8986C23.7729 27.0901 23.0287 27.3198 21.6662 27.38C20.1888 27.4456 19.7456 27.462 16.0082 27.462C12.2654 27.462 11.8222 27.4456 10.3502 27.38C8.98222 27.3198 8.2435 27.0901 7.75103 26.8986C7.09986 26.647 6.62927 26.3407 6.14227 25.8539C5.64979 25.3616 5.34884 24.8967 5.09713 24.2458C4.90561 23.7535 4.67579 23.0096 4.61559 21.6476C4.54993 20.1707 4.53352 19.7277 4.53352 15.9918C4.53352 12.2504 4.54993 11.8074 4.61559 10.336C4.67579 8.96855 4.90561 8.23012 5.09713 7.73784C5.34884 7.08693 5.65527 6.61653 6.14227 6.12971C6.63475 5.63743 7.09986 5.33659 7.75103 5.08498C8.2435 4.89353 8.98769 4.6638 10.3502 4.60363C11.8222 4.538 12.2654 4.52159 16.0082 4.52159ZM16.0082 2C12.2052 2 11.7291 2.01641 10.2353 2.08205C8.74692 2.14769 7.72367 2.38836 6.83721 2.73296C5.91245 3.09396 5.12996 3.56984 4.35294 4.35202C3.57045 5.12874 3.09439 5.91092 2.73324 6.82985C2.38851 7.72143 2.14774 8.73882 2.08208 10.2266C2.01642 11.7253 2 12.2012 2 16.0027C2 19.8043 2.01642 20.2801 2.08208 21.7734C2.14774 23.2612 2.38851 24.284 2.73324 25.1702C3.09439 26.0946 3.57045 26.8767 4.35294 27.6534C5.12996 28.4302 5.91245 28.9115 6.83174 29.267C7.72367 29.6116 8.74145 29.8523 10.2298 29.918C11.7237 29.9836 12.1997 30 16.0027 30C19.8057 30 20.2818 29.9836 21.7756 29.918C23.264 29.8523 24.2873 29.6116 25.1737 29.267C26.093 28.9115 26.8755 28.4302 27.6525 27.6534C28.4295 26.8767 28.9111 26.0946 29.2668 25.1756C29.6115 24.284 29.8523 23.2667 29.9179 21.7789C29.9836 20.2856 30 19.8097 30 16.0082C30 12.2067 29.9836 11.7308 29.9179 10.2375C29.8523 8.74976 29.6115 7.7269 29.2668 6.84079C28.922 5.91092 28.446 5.12874 27.6635 4.35202C26.8865 3.57531 26.104 3.09396 25.1847 2.73843C24.2927 2.39383 23.275 2.15315 21.7866 2.08752C20.2873 2.01641 19.8112 2 16.0082 2Z" fill="#85929A"/>
              <path d="M16 9C12.1354 9 9 12.1354 9 16C9 19.8646 12.1354 23 16 23C19.8646 23 23 19.8646 23 16C23 12.1354 19.8646 9 16 9ZM16 20.5407C13.4928 20.5407 11.4593 18.5072 11.4593 16C11.4593 13.4928 13.4928 11.4593 16 11.4593C18.5072 11.4593 20.5407 13.4928 20.5407 16C20.5407 18.5072 18.5072 20.5407 16 20.5407Z" fill="#85929A"/>
              <path d="M25 8.5C25 9.33062 24.3257 10 23.5 10C22.6694 10 22 9.32573 22 8.5C22 7.66938 22.6743 7 23.5 7C24.3257 7 25 7.67427 25 8.5Z" fill="#85929A"/>
              </svg></a></li>
            <li><a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
              <path d="M22.9014 5H26.5816L18.5415 14.319L28 27H20.5941L14.7935 19.309L8.15631 27H4.47393L13.0736 17.0323L4 5H11.5939L16.8372 12.0298L22.9014 5ZM21.6098 24.7662H23.649L10.4859 7.11651H8.29759L21.6098 24.7662Z" fill="#85929A"/>
              </svg></a></li>
            <li><a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
              <path d="M15.9997 2C8.26795 2 2 8.29111 2 16.0514C2 22.641 6.52023 28.1705 12.6179 29.6892V20.3455H9.73121V16.0514H12.6179V14.2011C12.6179 9.41859 14.7745 7.20184 19.4526 7.20184C20.3396 7.20184 21.8701 7.37664 22.4962 7.55088V11.4431C22.1658 11.4083 21.5918 11.3909 20.8789 11.3909C18.5835 11.3909 17.6965 12.2637 17.6965 14.5328V16.0514H22.2694L21.4837 20.3455H17.6965V30C24.6286 29.1597 30 23.2356 30 16.0514C29.9994 8.29111 23.7315 2 15.9997 2Z" fill="#85929A"/>
              </svg></a></li>
            <li><a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
              <path d="M21.0354 5.15826C23.539 4.64116 26.2511 5.39432 28.0902 7.37278C29.9292 9.34749 30.4276 12.0416 29.6394 14.3986V14.4023C29.4578 14.9456 28.8551 15.2454 28.2911 15.0693C27.727 14.8932 27.4179 14.3086 27.5995 13.7616C28.1597 12.0829 27.8043 10.1681 26.4984 8.76295C25.1925 7.35779 23.2647 6.82196 21.4836 7.18917C20.9041 7.30908 20.3361 6.95311 20.2125 6.39105C20.0889 5.83273 20.4559 5.27816 21.0354 5.15826Z" fill="#85929A"/>
              <path fill-rule="evenodd" clip-rule="evenodd" d="M8.56794 19.3672C9.52608 17.4824 12.018 16.4145 14.2241 16.9728C16.5074 17.5461 17.6742 19.6332 16.7392 21.6642C15.7927 23.7363 13.0728 24.8454 10.7624 24.1222C8.53703 23.4253 7.59047 21.2895 8.56794 19.3672ZM13.2196 20.3302C13.4978 20.4426 13.8571 20.3152 14.0193 20.0454C14.1739 19.7719 14.0734 19.4684 13.7952 19.3709C13.5209 19.266 13.1771 19.3934 13.0148 19.6557C12.8564 19.918 12.9414 20.2215 13.2196 20.3302ZM10.407 22.5597C11.1294 22.8782 12.0914 22.5747 12.5396 21.8815C12.98 21.1808 12.7482 20.3827 12.0219 20.0791C11.3033 19.7869 10.3761 20.0866 9.93175 20.7611C9.48358 21.4393 9.69608 22.245 10.407 22.5597Z" fill="#85929A"/>
              <path fill-rule="evenodd" clip-rule="evenodd" d="M23.023 15.5872L23.0328 15.5901C24.6401 16.0735 26.4289 17.2426 26.425 19.3035C26.425 22.7096 21.36 27 13.745 27C7.93819 27 2 24.2684 2 19.7794C2 17.43 3.53381 14.7133 6.17257 12.1541C9.69994 8.73297 13.8146 7.17419 15.36 8.67677C16.0399 9.34 16.1056 10.4829 15.669 11.8505C15.4372 12.5363 16.3336 12.1578 16.3336 12.1578C19.1848 11 21.6729 10.9325 22.5808 12.1915C23.0676 12.866 23.0213 13.8065 22.5731 14.8969C22.37 15.3948 22.6343 15.4727 23.023 15.5872ZM4.82421 20.851C5.12556 23.8 9.12814 25.8347 13.7643 25.3888C18.3967 24.9466 21.9124 22.1925 21.6072 19.2398C21.3097 16.2908 17.3072 14.2562 12.671 14.7021C8.03864 15.148 4.52286 17.8983 4.82421 20.851Z" fill="#85929A"/>
              <path d="M25.2659 9.84586C24.3696 8.88286 23.0483 8.51564 21.8313 8.77044C21.3329 8.87161 21.0161 9.35124 21.1204 9.83461C21.2286 10.318 21.7193 10.6252 22.2138 10.5203C22.8088 10.3967 23.4578 10.5765 23.8944 11.0449C24.331 11.5171 24.4507 12.1578 24.2614 12.7199C24.1069 13.1883 24.3696 13.6941 24.8564 13.8477C25.3432 13.9976 25.8609 13.7428 26.0193 13.2707C26.4018 12.1203 26.1623 10.8089 25.2659 9.84586Z" fill="#85929A"/>
              </svg></a></li>
          </ul>
        </div>
  
        <div id="famlan">
          <div id="familysite">FAMILY SITE</div>
          <div id="language">
            <p>LANGUAGE</p>
            <ul>한국어<img src="${pageContext.request.contextPath}/static/img/arrowDownWhite.png" alt="아래화살표">
              <li><a href="#">영어</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div id="privacy">
        <a href="#">
          <p>개인정보처리방침</p>
          <p>© SM Entertainment. All Rights Reserved.</p>
        </a>
      </div>
    </footer>
  </div>
  <script src="${pageContext.request.contextPath}/static/js/sm.js"></script>
  <script type="module" src="${pageContext.request.contextPath}/static/js/sm.js"></script>
</body>
</html>
</html>

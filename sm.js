$(document).ready(function(){
  const pink = "#FFB7CA";
  const navy = "#223055";

  const main4Fir = $("#main4 #main4Tab li:nth-child(1)");
  const main4Sec = $("#main4 #main4Tab li:nth-child(2)");
  const main4Tir = $("#main4 #main4Tab li:nth-child(3)");
  const main4P = $(".main4Slider p");
  const main4Logo = $("#main4 #main4Content #main4First .main4SliderLogo");
  const main4Img = $("#main4 #main4Content #main4First .main4SliderImage");



  main4Fir.click(function(){
    main4Sec.css("background","none");
    main4Tir.css("background","none");
    $(this).css("background",pink);
    main4Logo.css("background","url(img/SMclassics.png)no-repeat center/cover");
    main4Logo.css("background-position","45% center");
    main4Img.css("background","url(img/SMclassicsIMG.jpg)no-repeat center/cover");
    main4P.empty();
    main4P.append(`SM Classics는 SM 엔터테인먼트의 클래식 음악 전문 레이블입니다. K-Pop을 오케스트라 버전 및 다양한 편성의 클래식 음악으로 편곡하여 선보이고 있으며, 클래식과 관련된 여러 장르의 음악을 포괄적으로 다루고 있습니다.`);
  });

  main4Sec.click(function(){
    main4Fir.css("background","none");
    main4Tir.css("background","none");
    $(this).css("background",pink);
    main4Logo.css("background","url(img/SMscreamrecords.png)no-repeat center/cover");
    main4Logo.css("background-size","130%");
    main4Img.css("background","url(img/SMscreamIMG.jpg)no-repeat center/cover");
    main4P.empty();
    main4P.append(` "DANCE HARD, SCREAM LOUD" ScreaM Records는 2016년 1월,‘보고 듣는 퍼포먼스’에서 ‘함께 즐기는 퍼포먼스’로 확장하고 음악적 다변화를 꾀하고자 론칭한 SM Entertainment 산하 댄스 뮤직 레이블입니다.`);
  });

  main4Tir.click(function(){
    main4Fir.css("background","none");
    main4Sec.css("background","none");
    $(this).css("background",pink);
    main4Logo.css("background","url(img/SMKRUCIALIZE.png)no-repeat center/cover");
    main4Logo.css("background-size","140%");
    main4Img.css("background","url(img/SMkrucializeIMG.jpg)no-repeat center/cover");
    main4P.empty();
    main4P.append(`KRUCIALIZE는 ARTIST와 KREW가 주체성을 가지고, 음악과 음악으로부터 파생되는 다양한 콘텐츠를 제작하는 SM Entertainment 산하 뮤직 레이블입니다. K-POP의 본질에 새로운 숨을 불어넣어 장르적 스펙트럼을 넓히고, 차별화된 독자적인 콘텐츠를 추구합니다.`);
  });


    const slides = document.querySelectorAll('.slider');
    const indicator = document.getElementById('main2Indicator');
    const indiMove = document.getElementById('main2IndiMove');
    let currentSlide = 0;

    // 슬라이드 업데이트 함수
    function updateSlider() {
        const slideWidth = slides[0].offsetWidth; // 각 슬라이드의 너비
        document.getElementById('main2TextSliderWrap').style.transform = `translateX(-${currentSlide * slideWidth}px)`;
        
        // 인디케이터 위치 업데이트
        const indicatorWidth = (currentSlide + 1) * 33.3;  
        indiMove.style.width = `${indicatorWidth}%`;
    }

    // 자동 슬라이드 전환
    setInterval(() => {
        currentSlide = (currentSlide + 1) % slides.length;
        updateSlider();
    }, 5000); 

    // 초기화
    updateSlider();







});
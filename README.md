# SM ENTERTAINMENT RENEWAL 
<br />
### SM 엔터테인먼트 홈페이지 리뉴얼
<br /><br />
<img src="https://github.com/user-attachments/assets/45bcb898-a794-4cc8-b729-1a8fb653ceed" width="400"/>
<br /><br />
## 1. header, menu, visual 
<br /><br />
  <img src="https://github.com/user-attachments/assets/94b26ebf-1c05-4562-bf65-e0ee91431690"/>
<br /><br />
① 대표 로고 (클릭 시 메인 페이지로 이동)<br />
② 대표 메뉴 (클릭 시 해당 페이지로 이동)<br />
③ 대표 비주얼 (배경 이미지 위에 어두운 백그라운드 적용, 텍스트를 따로 만들고 사이제 이미지를 넣어 제작)<br />
<br /><br />
## 2. introduction
<br /><br />
  <img src="https://github.com/user-attachments/assets/acaca32b-f4c1-403a-a014-65e5ca29e685"/>
<br /><br />
<img width="500" src="https://github.com/user-attachments/assets/37260c70-cabd-4357-8866-4b941871791c"/>

(로고 모션 영상을 배경색은 지우고 gif로 수정)
<br /><br />
① 로고 모션 영상<br />
② 슬라이드 (회사 소개 문구를 슬라이드)<br />
<br /><br />
## 3. artist
<br /><br />
  <img src="https://github.com/user-attachments/assets/ac3e96a4-e24e-4baf-b908-093053ba761b"/>
<br /><br />
① 흐르는 배경 텍스트 <br />
② svg에 마스트를 적용 (마우스를 올리면 테두리가 #FFB7CA 로 변경, 클릭 시 해당 아티스트 페이지로 이동)<br />
<br /><br />
## 4. labels in company
<br /><br />
  <img src="https://github.com/user-attachments/assets/8083af6d-8261-458c-b49c-3fefb145fd68"/>
<br /><br />
① 자회사 소개 탭 (클릭 시 해당 회사 로고와 이미지로 변경) <br />
<br /><br />
## 5. news 
<br /><br />
  <img src="https://github.com/user-attachments/assets/45c2badc-f9f2-4509-9bb1-6962638e7c66"/>
<br /><br />
① 해당 뉴스 대표 이미지 (순서대로 왼쪽 오른쪽으로 배치, 이미지 하단에 선으로 디자인 추가) <br />
② 기사 헤드라인과 기사 (순서대로 오른쪽 왼쪽으로 배치, 클릭 시 해당 뉴스로 이동) <br />
<br /><br />
## 6. ir summary
<br /><br />
  <img src="https://github.com/user-attachments/assets/ede95720-5bcb-48a5-928f-41fe13ef509f"/>
<br /><br />
① 주식정보를 가져온 시간을 표시 <br />
② 주식 정보 (node.js 로 주식을 가져오기, 떨어지면 파랑색으로 올라가면 빨강색으로 표시) <br />
<br /><br />
## 7. footer
<br /><br />
③ 푸터 (각각 퍼센트로 가로세로 값을 지정)
<br /><br />
<hr />
<br /><br />
 - 쉬움 ☆☆☆☆☆ 어려움 ★★★★★
 <br /><br />
  1. 선과 선이 겹치는 부분이 끊어진듯한 디자인  ★☆☆☆☆ 
  <br />
      대표 로고가 선을 이용해서 만든 디자인이라고 생각이 들어 전체적으로 선을 넣는 디자인을 구상했고 그 사이에 배경색과 같은 작은 박스를 넣어 만들었다.  <br />
      만들고자하는 태그 앞에 div를 만들어 그 안에 또 div를 넣고 자식태그가 박스가 되고 ::before,::after 를 넣어 선을 만들었다.  <br />
      어렵진 않지만 귀찮은 일.
  <br />  <br />
  2. 슬라이드  ★☆☆☆☆
  <br />
      소개 문구를 슬라이드 하는 부분. 슬라이드 하려는 태그에 가로 길이를 300%로 만들고 js에서 시간차를 두고 만들어준다.
  <br />  <br />
  3. 탭 메뉴 ☆☆☆☆☆
  <br />
    js에서 클릭 마다 show,hide를 만들어준다.
  <br />  <br />
  4. 뉴스 기사 좌우 배치 ★★☆☆☆
  <br />
      왼쪽 기준으로 만들어준 후 odd 태그들은 flex-direction:row-reverse로 지정해준다.   <br />
      모바일 크기가 되었을때 꼬였지만 부모태그의 방향을 세로로 만들어준다.  <br />
      이것도 어렵진 않지만 귀찮은 일.
  <br />  <br />
  5. 주식 정보 가져오기 ★★★☆☆
  <br />
      구글 주식에서 가져오고 싶은 부분의 태그를 찾는다.  <br />
      replace()로 뺄부분은 빼고 딱 원하는 데이터 뽑는다.  <br />
      서버에 get('/get-price', ...) 로 요청을 보내고 데이터를 json형식으로 만들어 반환한다.  <br />
      이건 어렵다기 보다는 걱정이 되는 부분. 다른 환경에서도 실행이 가능하려면 내가 받은 라이브러리들이 다 인스톨 되어있어야한다. <br />
      좀 더 수정을해야한다.
      

## 7. backend
뉴스 부분에 기사를 업로드하고 url처리
### 1. 스프링, 데이터베이스
      





    

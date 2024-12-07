$(document).ready(function(){
  // svg 모핑
  let svgElements = [
    { id: "#Layer_1", path: "M687.6,0H59.79C26.77,0,0,26.64,0,59.5v238c0,32.86,26.77,59.5,59.79,59.5h119.58c33.02,0,59.79,26.64,59.79,59.5h0c0,32.86,26.77,59.5,59.79,59.5h787.25c33.02,0,59.79-26.64,59.79-59.5v-238c0-32.86-26.77-59.5-59.79-59.5h-279.03c-33.02,0-59.79-26.64-59.79-59.5h0C747.39,26.64,720.62,0,687.6,0Z" },
    { id: "#Layer_2", path: "M60,0C27,0,0,27,0,60h0c0,33,27,60,60,60h120c33,0,60,27,60,60h0c0,33-27,60-60,60H60c-33,0-60,27-60,60v116c0,33,27,60,60,60h1026c33,0,60-27,60-60h0c0-33-27-60-60-60h-120c-33,0-60-27-60-60h0c0-33,27-60,60-60h120c33,0,60-27,60-60V60c0-33-27-60-60-60H60Z" },
    { id: "#Layer_3", path: "M60,0C27,0,0,27,0,60v356c0,33,27,60,60,60h268c33,0,60-27,60-60v-20c0-33,27-60,60-60h250c33,0,60,27,60,60v20c0,33,27,60,60,60h268c33,0,60-27,60-60V60c0-33-27-60-60-60H60Z" }
  ];
  const mobWidth = 788;
  let svgIndex = 0;
  const artistContents = document.querySelectorAll("#artist .artistContent");
  let intervalId;
  
  function isMob(){
    return window.innerWidth <= mobWidth;
  }

  function showContent(){
    artistContents[svgIndex].style.display ='none';
    svgIndex = (svgIndex +1) % artistContents.length;
    artistContents[svgIndex].style.display = 'flex';
    console.log('svg : ', svgIndex);
  }
  
  function mobResize(){
    if(intervalId){
      clearInterval(intervalId);
    }
  }
  
  if(!isMob()){
    artistContents[svgIndex].style.display ='flex';
    
    function showContent(){
      artistContents[svgIndex].style.display ='none';
      svgIndex = (svgIndex +1) % artistContents.length;
      artistContents[svgIndex].style.display = 'flex';
    }
    setInterval(showContent, 3000);
  }else{
    artistContents.forEach(content => {
      content.style.display = 'flex';
    })
  }
  mobResize();
  window.onresize = mobResize;

})
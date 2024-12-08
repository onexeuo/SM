function updateTime() {
            var now = new Date();
            var year = now.getFullYear();
            var month = now.getMonth() + 1;  
            var date = now.getDate();
            var hours = now.getHours();
            var minutes = now.getMinutes();
            var seconds = now.getSeconds();

            if (minutes < 10) minutes = "0" + minutes;
            if (seconds < 10) seconds = "0" + seconds;

            var formattedTime = year + "-" + (month < 10 ? "0" + month : month) + "-" + (date < 10 ? "0" + date : date) + " " + hours + ":" + minutes + ":" + seconds;

            document.getElementById("current-time").innerText = formattedTime;
        }

        // 1초마다 시간을 갱신
        setInterval(updateTime, 1000);

        // 페이지 로드 시에도 한번 실행
        window.onload = updateTime;

        
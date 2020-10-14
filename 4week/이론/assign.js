function calculateTemperature() {
    while(true) {
        var temperatureC = prompt("섭씨온도 입력", "0");
        if (temperatureC == "") {
            alert("값을 입력해주세요");
        }
        else {
            var temperatureF = (temperatureC*9/5)+32;
            var txt = temperatureC+"의 화씨온도는"+temperatureF+"입니다";
            break;
        }
    }
    document.getElementById("result").innerHTML = txt;
}
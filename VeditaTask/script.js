$(document).ready(function () {

    $("#enter").submit(function(event){
        event.preventDefault(); //Предотвращение обычного поведения кнопки(обратной передачи)
        var msg = $('#enter').serialize(); //пакуем список
        $("#request").show(1); //проявлем элемент <div> для повтороного вывода data
        $.ajax(
        {
            type: "POST",
            url: "control/authorization.php",
            cache: false,
            dataType:'html', //ожидаемый тип данных
            data: msg, //отправка данных
            success: function(data)   // Редирект на нужные страницы
            {
                if(data=="main") 
                {
                    window.location.href = "users/main.php";
                }
                if(data=="admin")
                {
                    window.location.href = "users/admin.php";
                }
                if(data!="main" && data!="admin"){
                    $("#request").html(data);
                    $("#request").delay(3000).hide(500);
                }
                
            }
    
        });
    })

    $("#forms").submit(function(event){
        event.preventDefault(); //Предотвращение обычного поведения кнопки(обратной передачи)
        var msg = $('#forms').serialize(); //пакуем список
        $("#result").show(1);
        $.ajax(
        {
            type: "POST",
            url: "../control/forms.php",
            cache: false,
            dataType:'html', //ожидаемый типа данных
            data: msg, //отправка данных
            success: function(data){ 
                $("#result").html(data);
                $("#result").delay(3000).hide(1000);} // анимация с задержкой
            });
        })
})

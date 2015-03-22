(function($){
    $(document).ready(function(){
        $(".btn-forgot").click(function() {
            $("#loginDiv").hide();
            $("#forgotPasswordDiv").fadeIn('slow').removeClass('hide');
            $('#user_name').focus();
        });

        $(".back-button").click(function() {
            $("#loginDiv").fadeIn('slow');
            $("#forgotPasswordDiv").addClass('hide');
            $('#username').focus();
        });

        $("input[name='retrievePassword']").click(function (){
            var username = $('#user_name').val();
            var email = $('#emailId').val();

            var email1 = email.replace(/^\s+/,'').replace(/\s+$/,'');
            var emailFilter = /^[^@]+@[^@.]+\.[^@]*\w\w$/ ;
            var illegalChars= /[\(\)\<\>\,\;\:\\\"\[\]]/ ;

            if(username == ''){
                alert('Please enter valid username');
                return false;
            } else if(!emailFilter.test(email1) || email == ''){
                alert('Please enater valid email address');
                return false;
            } else if(email.match(illegalChars)){
                alert( "The email address contains illegal characters.");
                return false;
            } else {
                return true;
            }
        });

        setTimeout(function(){
            $('#username').focus();
        }, 100);
    });

    $(window).load(function(){
        $('.login-container').fadeIn('fast');
    });
})($);
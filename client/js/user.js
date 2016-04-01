(function(ns) {
    'use strict';

    ns.user = {};  // local module namespace

    ns.user.init = function userInit() {
        $('#login').submit(function(e) {
            e.preventDefault();
            ns.user.login();
        });
    };

    ns.user.login = function doLogin(cb) {
        cb = cb || function(){};
        $.ajax({
            url: '/login',
            type: 'POST',
            dataType: 'json',
            success: function loginSuccess(data) {
                console.info('login?', data);
                ns.user.token = data.token;
                if (ns.user.token) {
                    ns.showMessage('You have been logged in.');
                } else {
                    ns.showMessage('There was a problem logging you in.');
                }
            },
            error: function loginFail(xhr) {
                console.error(xhr);
                ns.showMessage('There was a problem logging you in.');
            }
        });
    };

    window.cyoa = ns;
})(window.cyoa || {});

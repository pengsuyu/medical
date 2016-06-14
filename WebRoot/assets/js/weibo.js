WB2.anyWhere(function (W) {

    W.widget.connectButton({

        id: "wb_connect_btn",

        type: '3,2',

        callback: {

            login: function (o) { //登录后的回调函数

                alert("login: " + o.screen_name);

            },

            logout: function () { //退出后的回调函数

                alert('logout');

            }

        }

    });

});


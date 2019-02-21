<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.head>
    <link rel="stylesheet" type="text/css" href="../static/css/main.css">
    <link rel="stylesheet" type="text/css" href="../static/css/base/button.css">
    <link rel="stylesheet" type="text/css" href="../static/css/cot-mainframe/cot-mainframe.css">

    <link rel="stylesheet" type="text/css" href="../static/css/cot-login/cot-login-input.css">
</@c.head>
<@c.page>
    <div class="cot-mainframe">
        <div class="cot-login">
            Login page
            <@l.login "/login" />
            <a href="/registration">
                <button class="button"> Add new user</button>
            </a>
        </div>
    </div>
</@c.page>
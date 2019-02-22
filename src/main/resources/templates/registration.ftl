<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.head>
    <link rel="stylesheet" type="text/css" href="../static/css/main.css">
    <link rel="stylesheet" type="text/css" href="../static/css/cot-mainframe/cot-mainframe.css">
    <link rel="stylesheet" type="text/css" href="../static/css/base/button.css">

    <link rel="stylesheet" type="text/css" href="../static/css/cot-login/cot-login-input.css">
</@c.head>
<@c.page>
    <div class="cot-mainframe">
        Add new user
        ${message?ifExists}
        <@l.login "/registration" />
        <div>
            <a href="/login">
                <button class="button"> Back</button>
            </a>
        </div>
    </div>
</@c.page>
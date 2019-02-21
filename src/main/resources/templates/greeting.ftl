<#import "parts/common.ftl" as c>
<@c.head>
    <link rel="stylesheet" type="text/css" href="../static/css/main.css">
    <link rel="stylesheet" type="text/css" href="../static/css/cot-mainframe/cot-mainframe.css">
    <link rel="stylesheet" type="text/css" href="../static/css/base/button.css">

    <link rel="stylesheet" type="text/css" href="../static/css/cot-greeting/cot-greeting-title.css">
    <link rel="stylesheet" type="text/css" href="../static/css/cot-greeting/cot-greeting-mainpage.css">
</@c.head>
<@c.page>
    <div class="cot-mainframe">
        <div class="cot-greeting">
            <div class="cot-greeting-title">
                Welcome to Cloud of Thinks.
            </div>
            <div class="cot-greeting-description">
                That is my pet-project for learning Spring Boot.
            </div>
            <div class="cot-greeting-mainpage">
                <a href="main">
                    <button class="button">
                        Main page >>
                    </button>
                </a>
            </div>
        </div>
    </div>
</@c.page>
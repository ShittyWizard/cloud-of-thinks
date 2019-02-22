<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.head>
    <link rel="stylesheet" type="text/css" href="../static/css/main.css">
    <link rel="stylesheet" type="text/css" href="../static/css/cot-mainframe/cot-mainframe.css">
    <link rel="stylesheet" type="text/css" href="../static/css/base/button.css">

    <link rel="stylesheet" type="text/css" href="../static/css/cot-main/cot-main-title.css">
    <link rel="stylesheet" type="text/css" href="../static/css/cot-main/cot-main-textarea.css">
    <link rel="stylesheet" type="text/css" href="../static/css/cot-main/cot-main-blog.css">
    <link rel="stylesheet" type="text/css" href="../static/css/cot-main/cot-main-blog-image.css">
    <link rel="stylesheet" type="text/css" href="../static/css/cot-main/cot-main-blog-date.css">
</@c.head>

<@c.page>
    <div class="cot-mainframe">
        <div class="cot-main-title">
            Welcome to ☁ Cloud of Thinks ☁
        </div>

        <form method="post" enctype="multipart/form-data">
            <textarea class="cot-main-textarea" cols="40" rows="5" placeholder="Write your text here" name="text"> </textarea>
            <input class="cot-main-inputfile" type="file" name="file" id="file">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button class="button" type="submit"> Post</button>
        </form>

        <#list blogs as blog>
            <div class="cot-main-blog">
                <div class="cot-main-blog-text">
                    ${blog.text?string}
                </div>

                <div>
                    <#if blog.fileName??>
                        <a href="img/${blog.fileName}" target="_blank">
                            <img class="cot-main-blog-image" src="/img/${blog.fileName}" alt="img">
                        </a>
                    </#if>
                </div>
                <div class="cot-main-blog-author">
                    Author: ${blog.author?string}
                </div>
                <div class="cot-main-blog-date">
                    <b> ${blog.date?date}</b>
                </div>
            </div>
        <#else>
            No blogs
        </#list>
        <div>
            <a href="/">
                <button class="button"> Back</button>
            </a>
        </div>

        <@l.logout/>
    </div>

</@c.page>
<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <b> Welcome to main page</b>

    <form method="post" enctype="multipart/form-data">
        <div>
            <textarea cols="40" rows="5" placeholder="Write your text here" name="text"> </textarea>
            <input type="file" name="file">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit"> Post</button>
    </form>

    <#list blogs as blog>
        <div>
            <p> ${blog.text?string} </p>
            <div>
                <#if blog.fileName??>
                    <img src="/img/${blog.fileName}" alt="img">
                </#if>
            </div>
            <strong> ${blog.author?string}</strong>
            <b> ${blog.date?date}</b>
        </div>
    <#else>
        No blogs
    </#list>
    <div><a href="/">
            <button> Back</button>
        </a></div>

    <@l.logout/>
</@c.page>
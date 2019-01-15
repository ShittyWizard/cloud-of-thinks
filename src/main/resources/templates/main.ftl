<#import "parts/common.ftl" as c>

<@c.page>
    <b> Welcome to main page</b>

    <form method="post">
        <div>
            <textarea cols="40" rows="5" placeholder="Write your text here" name="text"> </textarea>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit"> Post</button>
    </form>

    <#list blogs as blog>
        <div>
            <p> ${blog.text?string} </p>
            <strong> ${blog.author?string}</strong>
            <b> ${blog.date?date}</b>
        </div>
    <#else>
        No blogs
    </#list>
    <div><a href="/">
            <button> Back</button>
        </a></div>
</@c.page>
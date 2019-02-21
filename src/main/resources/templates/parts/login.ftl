<#macro login path>
    <form action="${path}" method="post">
        <div>
            <label> Username:
                <input class="cot-login-input" type="text" name="username"/>
            </label>
        </div>
        <div>
            <label> Password:
                <input class="cot-login-input" type="password" name="password"/>
            </label>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>

        <#if "${path}" == "/registration">
            <input class="button" type="submit" value="Register"/>
        <#else>
            <input class="button" type="submit" value="Sign In"/>
        </#if>
    </form>


</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input class="button" type="submit" value="Sign Out"/>
    </form>
</#macro>
<#------------------------------------------------------------------
    hello.ftl

    This demonstrates:
      1. template inheritance
      2. variable binding & inheritance
      3. localized messages
      4. localized relative date formatting
      5. localized date formatting
------------------------------------------------------------------->
<#import "base.ftl" as base/>
<@base.page title= i18n("pippo.welcome")>
  <h1>${i18n("pippo.greeting")} <i class='fa fa-smile-o'></i></h1>
  <div class="row">
    <div class="col-sm-8">
      <p> ${i18n("pippo.yourLanguageAndLocale", lang, locale)}</p>
      <p> ${i18n("pippo.theContextPath", contextPath)}</p>
      <p>${formatTime(testDate, "full")} (${prettyTime(testDate)})</p>

      <div class="dropdown">
        <button class="btn btn-default dropdown-toggle" type="button" id="languageMenu" data-toggle="dropdown" aria-expanded="true">
          ${i18n("pippo.languageChoices")}
          <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" role="menu" aria-labelledby="languageMenu">
          <#list languageChoices as choice>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="?lang=${choice}">${choice}</a></li>
          </#list>
        </ul>
      </div>
    </div>

    <div class="col-sm-4">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">${i18n("pippo.demonstrations")}</h3>
        </div>
        <div class="panel-body">
          <ul>
            <li><a href="${appPath}/satisfaction">${i18n("pippo.unmatchedRoute")}</a></li>
            <li><a href="${appPath}/exception">${i18n("pippo.exceptionHandling")}</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</@base.page>

<div id="content-right" class="overflow-hidden">
    <div id="sidebar-overlay" class="display-none" style="text-align:center;margin-top:5px;">
       <img src="templates/standard/theme/standard/images/logo-b.png" onclick="showSidebar()" alt="" />
    </div>
    <div id="sidebar-content" class="overflow-hidden">
        <div class="content-right-in overflow-hidden">
            <a href="javascript:hideSidebar();">close</a>
            <searchwidget searchtitle="{#search#}"></searchwidget>
        </div>

        {*Quickfinder*}
        {if $openProjects[0].ID > 0}
            <div class="content-right-in overflow-hidden">
                <h2><a id="quickfindertoggle" class="win-up"
                       href="javascript:blindtoggle('quickfinder');toggleClass('quickfindertoggle','win-up','win-down');">{#myprojects#}</a></h2>

                <div id="quickfinder">
                    <form>
                        <select style="background-color:#CCC;width:100%;"
                                onchange="window.location='manageproject.php?action=showproject&id='+this.value;">
                            <option>{#chooseone#}</option>
                            {section name=drop loop=$openProjects}
                                <option value="{$openProjects[drop].ID}">{$openProjects[drop].name|truncate:40:"...":true}</option>
                            {/section}
                        </select>
                    </form>
                </div>
            </div>
        {/if}

        {*Onlinelist*}
        <div class="content-right-in overflow-hidden">
            <h2><a id="onlinelisttoggle" class="win-up"
                   href="javascript:blindtoggle('onlinelist');toggleClass('onlinelisttoggle','win-up','win-down');">{#usersonline#}</a></h2>

            <div id="onlinelist"></div>
        </div>
    </div>
</div>
<script type="text/javascript" src="include/js/components/searchWidgetComponent.js"></script>
<script type="text/javascript" src="include/js/views/sidebar.js"></script>

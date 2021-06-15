{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

	</main>

	{* Sidebars *}
	{if empty($isFullWidth)}
		{capture assign="sidebarCode"}{call_hook name="Templates::Common::Sidebar"}{/capture}
		{if $sidebarCode}
			<aside id="sidebar" class="pkp_structure_sidebar left col-xs-12 col-sm-2 col-md-4" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
				{$sidebarCode}
			</aside><!-- pkp_sidebar.left -->
		{/if}
	{/if}
</div><!-- pkp_structure_content -->
<footer class="footer-library container">
    <div class="row">
        <div class="column footer-library_left" >
            <div>Main Library Information Desk</div>
            <div>(217) 333 -2290</div>
            <div>1408 W. Gregory Dr.</div>
            <div>Urbana, IL 61801</div>
        </div>

        <div class="column ">
            <div class="footer-library_i-mark">
                <img id="i-mark" usemap="#lib-shared-footer-wordmark-online__map__small" src="{$baseUrl}/templates/images/structure/009_LIBRA_OrangeI_Vert_RGB.png" alt="University of Illinois Library">

                <map name="lib-shared-footer-wordmark-online__map__small">
                    <area shape="rect" coords="0,0,200,40" href="https://illinois.edu" alt="Block I">
                    <area shape="rect" coords="0,50,300,100" href="https://www.library.illinois.edu" alt="Illinois Library">
                </map>


            </div>
            <div class="footer-library_copyright text-center" role="img" aria-label="Creative Commons License: BY NC 4.0">
                <img id="cc_image" src="{$baseUrl}/templates/images/structure/cc-icons-svg/cc.svg">
                <img id="by_image" src="{$baseUrl}/templates/images/structure/cc-icons-svg/by.svg">
                <img id="nc_image" src="{$baseUrl}/templates/images/structure/cc-icons-svg/nc.svg">





            </div>

        </div>

        <div class="column footer-library_right">
            <div>
                <ul>
                    <li>
                        <a href="https://www.vpaa.uillinois.edu/resources/web_privacy">Privacy Policy</a>
                    </li>
                    <li>
                        <a href="https://guides.library.illinois.edu/usersdisabilities">Accessibility</a>

                    </li>
                    <li>
                        <a href="https://www.library.illinois.edu/sc/">Scholarly Commons</a>
                    </li>
                    <li>
                        <a href="https://www.library.illinois.edu/staff/">Library Staff Website</a>

                    </li>

                </ul>
            </div>

        </div>
</footer>

</div><!-- pkp_structure_page -->
{load_script context="frontend"}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>

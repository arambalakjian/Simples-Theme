<div id="header">

    $SearchForm
            
    <a class="siteName" href="/" title="Go to home page">$SiteConfig.Title <span>$SiteConfig.Tagline</span></a>
    
    <ul class="nav">          
        <% control Menu(1) %>  
            <li>
                <a class="$LinkingMode" href="$Link" title="Go to $Title Page">$MenuTitle</a>
            </li>           
        <% end_control %>
    </ul>
    
    <div class="clear"><!-- --></div>
</div>
<!doctype html>  

<html lang="$ContentLocale">
    <head>
        <% base_tag %>

        <meta charset="utf-8">
        <meta name="viewport" content="initial-scale=1.0, width=device-width, maximum-scale=1.0"/>

        $MetaTags
       
        <% require css(layout) %>
        <% require css(typography) %>
        <% require css(form) %>
        
        <!--[if lt IE 8]>
            <link rel="stylesheet" type="text/css" href="themes/simples/css/IE.css" />
        <![endif]-->        
 
    </head>

    <body>
        
        <% include Header %>
        
        <div id="container">

            <div id="layout">
                
                $Layout

            </div>  <!-- /Layout -->
            
            <% include Footer %>
            
        </div> <!-- /Container -->

    </body>
</html>
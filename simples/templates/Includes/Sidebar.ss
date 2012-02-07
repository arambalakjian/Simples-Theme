
<% if Menu(2) %>
    <div id="sidebar">
            
        <h3>$Level(1).Title</h3>    
            
        <ul class="menu2">           
            <% control Menu(2) %>       
            <li>
                <a class="$LinkingMode" href="$Link" title="Go to $Title Page">$MenuTitle</a>
                <% if LinkOrSection = Section %>
                    <% if Children %>
                    <ul class="menu3">                  
                        <li class="$FirstLast">
                            <a class="$LinkingMode" href="$Link">$MenuTitle</a>
                        </li>      
                    </ul>              
                    <% end_if %>
                <% end_if %>
            </li>
            <% end_control %>
        </ul>
        
    </div> <!-- /Sidebar -->
<% end_if %>
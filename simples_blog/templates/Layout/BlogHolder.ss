<div class="twoCol">
    
    <% include BlogSideBar %>
   
    <div id="content" class="blogcontent typography">
        
        <h1>$Title</h1>
        
        <% if SelectedTag %>
            <h3><% _t('VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'</h3>
        <% else_if SelectedDate %>
            <h3><% _t('VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedDate.Month $SelectedDate.Year</h3>
        <% end_if %>
        
        <% if BlogEntries %>
            <% control BlogEntries %>
                <% include BlogSummary %>
            <% end_control %>
        <% else %>
            <h3><% _t('NOENTRIES', 'There are no blog entries') %></h3>
        <% end_if %>
        
        <% include BlogPagination %>
        
    </div>
    
    <div class="clear"><!-- --></div>
</div>
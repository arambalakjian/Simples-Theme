<div class="twoCol">
    
    <% include BlogSideBar %>
   
    <div id="content" class="typography">
        
        <h1>$Title</h1>
        
        <div class="blogEntry">

            <p class="authorDate"><% _t('POSTEDBY', 'Posted by') %> $Author.XML <% _t('POSTEDON', 'on') %> $Date.Long | $Comments.Count <% _t('COMMENTS', 'Comments') %></p>
            <% if TagsCollection %>
                <p class="tags">
                     <% _t('TAGS', 'Tags:') %> 
                    <% control TagsCollection %>
                        <a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
                    <% end_control %>
                </p>
            <% end_if %>
            <% if IsWYSIWYGEnabled %>
                $Content
            <% else %>
                $ParsedContent
            <% end_if %>
            <br />
        </div>
        
        <% if IsOwner %><p><a href="$EditURL" id="editpost" title="<% _t('EDITTHIS', 'Edit this post') %>"><% _t('EDITTHIS', 'Edit this post') %></a> | <a href="$Link(unpublishPost)" id="unpublishpost"><% _t('UNPUBLISHTHIS', 'Unpublish this post') %></a></p><% end_if %>
        
        <% if TrackBacksEnabled %>
            <% include TrackBacks %>
        <% end_if %>
        
        $PageComments
    </div>
    
    <div class="clear"><!-- --></div>
</div>
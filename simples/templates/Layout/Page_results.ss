<div class="twoCol">
    
    <% include Sidebar %>

    <div id="content" class="typography">

        <h1>$Title</h1>               
            
        <% if Results %>
            <ul id="SearchResults">
              <% control Results %>
                <li class="$FirstLast">
                    <% if MenuTitle %>
                      <h3><a class="searchResultHeader" href="$Link">$MenuTitle</a></h3>
                    <% else %>
                      <h3><a class="searchResultHeader" href="$Link">$Title</a></h3>
                    <% end_if %>
                  <% if Content %>
                    $Content.FirstParagraph(html)
                  <% end_if %>
                  <p><a class="readMoreLink" href="$Link" title="Read more about &quot;{$Title}&quot;">Read more about &quot;{$Title}&quot;...</a></p>
                </li>
              <% end_control %>
            </ul>
          <% else %>
            <p>
                    <%-- Example of a translatable string (see http://doc.silverstripe.org/i18n) --%>
                    <% _t("Page_results.ss.NORESULTS", "Sorry, your search query did not return any results.") %>
                    <%-- By the way, template comments marked like this will be excluded from the HTML output --%>
                </p>
          <% end_if %>
    
          <% if Results.MoreThanOnePage %>
            <div id="PageNumbers">
              <% if Results.NotLastPage %>
                <a class="next" href="$Results.NextLink" title="View the next page">Next</a>
              <% end_if %>
              <% if Results.NotFirstPage %>
                <a class="prev" href="$Results.PrevLink" title="View the previous page">Prev</a>
              <% end_if %>
              <span>
                <% control Results.SummaryPagination(5) %>
                  <% if CurrentBool %>
                    $PageNum
                  <% else %>
                    <a href="$Link" title="View page number $PageNum">$PageNum</a>
                  <% end_if %>
                <% end_control %>
              </span>
          
            </div>
         <% end_if %>
         
    </div>  <!-- /Content -->

    <div class="clear">&nbsp;</div>
    
</div><!-- /Two Column Layout -->
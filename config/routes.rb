ActionController::Routing::Routes.draw do |map|
  map.related_pages 'admin/ui/pages/related', :controller => "admin/pages", :action => "related"
  map.sort_related 'admin/ui/pages/sort', :controller => "admin/pages", :action => "sort"
end

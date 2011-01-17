require_dependency 'application_controller'

class RelatedContentExtension < Radiant::Extension
  version "0.1"
  description "Provides an interface and tags for relating pages to one another in a one-way fashion."
  url "http://dev.radiantcms.org/"

  def activate
    Page.class_eval{
      include RelatedContent::PageExtensions
      include RelatedContent::Tags
    }
    Admin::PagesController.class_eval { 
      include RelatedContent::Autocomplete
      include RelatedContent::RelatedContentInterface
      include RelatedContent::RelatedContentSort
    }
  end
end

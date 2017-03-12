/**
 * Inserts a template for each available gallery in the database. Used in combination with a django-admin template that will
 * contain hidden inputs with information on all galleries; these are constructed using a templatetag from the galleries app.
 */

var galleries = $('.gallery_data');
var tmp = [
            {
                title: 'Right aligned image',
                html:
                    "<figure class='image__float--right'>" +
                        "<img src='/static/img/fallback/placeholder.png' />" +
                        "<figcaption>Image caption</figcaption>" +
                    "</figure>"
            },
            {
                title: 'Left aligned image',
                html:
                    "<figure class='image__float--left'>" +
                        "<img src='/static/img/fallback/placeholder.png' />" +
                        "<figcaption>Image caption</figcaption>" +
                    "</figure>"
            },
        ];

for(var ind=0; ind<galleries.length; ind++){
    var gallery = galleries[ind];
    var slug = gallery.getAttribute('data-slug');
    var name = gallery.getAttribute('data-name');

    tmp.push({
        title: 'Gallery: '+name,
        html:
        "{% gallery '"+slug+"' %}"
    });
}

CKEDITOR.addTemplates( 'default',
{
    // The name of the subfolder that contains the preview images of the templates.
    imagesPath : CKEDITOR.getUrl( CKEDITOR.plugins.getPath( 'templates' ) + 'templates/images/' ),

    // Template definitions.
    templates : tmp
});

var App;

App = {
  errorTemplate: function(errors){
    var html = "";
    html+="<ul class='errors'>";
    $.each(errors, function(attr, error){
      html+='<li>' + attr + " "  + error[0] + '</li>';
    });
    html+='</ul>';
    return html;
  }
};


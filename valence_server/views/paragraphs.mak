<h5>${_('Valence Corpus')}: ${self.title()}</h5>
${next.body()}\
<%def name="localmenu()">
<li>${h.link_to(_('Valence Corpus'), h.url_for('paragraphsquery'))}</li>
</%def>\
<%def name="nav()">${_('Valence Corpus')}</%def>\
<%def name="title()"></%def>\
<%def name="styles()">\
<style>
.wide {max-width:720px}
.para {
  padding:1em;
  border-left:5px solid white;
  border-radius: 10px;
  margin-left:10%;
}
.neutralP  { }
.positiveP { border-left-color: rgb(146, 208, 80); }
.negativeP { border-left-color: #b7a6dd; }
.extremeP  { border-left-color: darkgray; }
.mixedP    { border-left-color: #d9ddb4;  border-left-style: dotted; }
</style>
</%def>\
<%inherit file="/layout.mak"/>


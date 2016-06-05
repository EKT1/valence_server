<%!
from urllib import urlencode
def link2txt(text):
    return text.rstrip("/").rsplit("/",1)[-1]
def link2param(text):
    return '?'+urlencode({'link':text})
%>\
% for i in c.paragraphs:
<div class="header">\
<a href="${h.url_for('article')}${i.link | link2param}">${i.link | link2txt}</a> ${i.nr}. ${i.category} ${i.emotion}\
</div>
<div>\
${i.paragraph}\
</div>
% endfor
<%def name="styles()">\
<style>
.header {
        font-weight:bold;
	margin-top:1ex;
}
</style>
</%def>\
<%def name="title()"> ${_('Paragraphs')}</%def>\
<%inherit file="paragraphs.mak"/>

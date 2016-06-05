<%!
from urllib import urlencode
def link2txt(text):
    return text.rstrip("/").rsplit("/",1)[-1]
def link2param(text):
    return '?'+urlencode({'link':text})
%>\
% for i in c.articles:
<div>\
<span class="prefix">${i.category}\
 <a href="${h.url_for('article')}${i.link | link2param}">${i.link | link2txt}</a></span>\
 <a class="suffix" href="${i.link}">originaal</a>\
</div>
% endfor
<%def name="styles()">\
<style>
/*.prefix { font-weight:bold; }*/
.suffix { font-style:italic; padding-left:1em; color:black}
</style>
</%def>\
<%def name="title()"> ${_('Articles')}</%def>\
<%inherit file="paragraphs.mak"/>

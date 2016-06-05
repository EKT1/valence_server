<%!
map = {"neutraalne":"para neutralP","positiivne":"para positiveP","negatiivne":"para negativeP","vastuoluline":"para mixedP"}
def link2txt(text):
    return text.rstrip("/").rsplit("/",1)[-1]
%>\
<h3>${c.link | link2txt} / <a href="${c.link}">originaal</a></h3>
% for i in c.paragraphs:
<p class="${map[i.emotion]}">${i.paragraph}</p>
% endfor
<%def name="title()">${_("Article")}</%def>\
<%inherit file="paragraphs.mak"/>\

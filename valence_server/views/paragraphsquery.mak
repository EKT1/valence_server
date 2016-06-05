<%include file="/valence/et/intro.html"/>
<div id="form">
<form name="frm" method="POST" action="/valence/paragraphsresult">
<div>
<label for="category1">${_('Category')}:</label>
<select id="category1" name="category">
% for i in c.categories:
<option value="${i[0]}" >${i[0]}</option>
% endfor
<option value="" >${_('all')}</option>
</select>
</div>

<div>
<label for="emotion1">${_('Emotion')}:</label>
<select id="emotion1" name="emotion">
% for i in c.emotions:
<option value="${i[0]}" >${i[0]}</option>
% endfor
<option value="" >${_('all')}</option>
</select>
</div>

<div class="buttons">
<a class="submit" href="javascript: document.frm.submit()">${_('Show')}</a>
<a class="submit" href="javascript: document.frm.reset()">${_('Reset')}</a>
</div>
</form>
</div>
<div style="margin-top:2em"><a href="${h.url_for("articles")}">${_('List all articles')}</a></div>\
<div><a href="${h.url_for("exportparagraphs")}">${_('Export all as CSV')}</a></div>\
<%def name="title()"> ${_('Query')}</%def>\
<%inherit file="paragraphs.mak"/>


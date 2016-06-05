# -*- coding: utf-8 -*-
<h5>${_('Emotion detector')} <span style="font-size:80%;color:gray">v1.1</span></h5>
<div>\
${_("""The Emotion Detector has been created at the Institute of the Estonian Language
under the project 'Statistical Models of the Emotionality of Speech and Written
Text' that was financed by the National Programm for Estonian Language
Technology 2011-2017. The Emotion Detector allows to identify the positivity,
negativity and neutrality in paragraphs of written text.""")}\
</div>
<div id="form" style="margin-top:2em">
<form name="frm" method="POST" action="/valence/color" accept-charset="UTF-8" >
<div>\
<label for="text"><b>${_('Paste your text here')}:</b></label>\
<textarea name="text" cols="82" rows="16" ></textarea> \
</div>
<div class="buttons">
<a class="submit" href="javascript: document.frm.submit()">${_('Show')}</a>
</div>

<div class="formline">\
<!--label for="lexiconbased">${_('Use lexicon based estimate')}:</label-->\
<input id="lexiconbased" type="checkbox" name="lexiconbased" value="1" >&nbsp;&nbsp;${_('Use lexicon based estimate')}\
</div>

</form>
</div>
<script type='text/javascript'>document.frm.text.focus();</script>
<%def name="localmenu()">
<li>${h.link_to(_('Valence Corpus'), h.url_for('paragraphsquery'))}</li>
</%def>\
<%def name="styles()">\
<style>
.wide {
	max-width:720px;
}
</style>\
</%def>\
<%inherit file="/layout.mak"/>

# -*- coding: utf-8 -*-
<div>\
${_("The emotion detector predicts what the text effect on the reader will be")}:\
<ul>\
<li>${_("positive")}</li>
<li>${_("negative")}</li>
<li>${_("neutral")}.</li>
</ul>\
</div>\
<div id="form" style="margin-top:2em">
<form name="frm" method="POST" action="/valence/color" accept-charset="UTF-8" >
<div>\
<label for="text"><b>${_('Paste your text here')}:</b></label>\
<textarea style="margin-top:1em;margin-left:5%;width:95%" name="text" cols="82" rows="16"
placeholder="

${_('The text must be divided into paragraphs.')}
${_('A paragraph is formed of at least two substantially related sentences.')}

${_('NB! The detector does not assign the effect of solitary words.')}"></textarea> \
</div>
<div class="buttons">
<a class="submit" href="javascript: document.frm.submit()">${_('Show')}</a>
</div>

<div class="formline">\
<input id="lexiconbased" type="checkbox" name="lexiconbased" value="1" >&nbsp;&nbsp;${_('Use lexicon based estimate')}\
</div>
</form>
</div>
<div style="margin:3em 0 0 0">
${_("""The Emotion Detector has been created at the Institute of the Estonian Language under the project
"Statistical Models of the Emotionality of Speech and Written Text" that was financed
by the National Programm for Estonian Language Technology 2011-2017.
The Emotion Detector allows to identify the positivity, negativity and neutrality in paragraphs of written text""")}
(<a href="https://github.com/EKT1/valence">valence</a>,
<a href="https://github.com/EKT1/valence_server">valence_server</a>).
</div>

<div style="margin:3em 0 0 0">${_('Cite')}:\
<div style="margin-left:2em">\
<div>Pajupuu, Hille, Rene Altrov, and Jaan Pajupuu (2016).</div>\
<div><b>Identifying polarity in different text types.</b></div>\
<div><it>Folklore: Electronic Journal of Folklore, 64, 25-42.</it></div>\
<div><a href="https://doi.org/10.7592/FEJF2016.64.polarity">https://doi.org/10.7592/FEJF2016.64.polarity.</a></div>\
</div>
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

# -*- coding: utf-8 -*-
% if c.lexiconbased:
<p>
${_('Paragraphs are')}
<span class="para positiveP" style="padding:0px; margin-left:0px">${_('positive')}</span>,
<span class="para negativeP" style="padding:0px; margin-left:0px">${_('negative')}</span>,
<span class="para neutralP" style="padding:0px; margin-left:0px">${_('neutral2')}</span>
${_('or')}
<span class="para mixedP" style="padding:0px; margin-left:0px">${_('ambivalent')}</span>.
</p>
<p>
${_('Keywords are')}
<span class="word positiveW">${_('positive')}</span>,
<span class="word negativeW">${_('negative')}</span>
${_('or')}
<span class="word extremeW">${_('extreme')}</span>.
</p>
<p>${_('The lexicon based rating of the valence is on the left side')}.</p>
% else:
<p>
${_('Paragraphs are')}
<span class="para positiveB" style="padding:0px; margin-left:0px">${_('positive')},</span>
<span class="para negativeB" style="padding:0px; margin-left:0px">${_('negative')}</span>
${_('or')}
<span class="para neutralB" style="padding:0px; margin-left:0px">${_('neutral2')}</span>
</p>
<p><i>${_('The statistical rating of the valence is on the right side')}.</i></p>
% endif

${c.text}
<%def name="styles()">\
<style>
.wide {
        max-width:720px;
}
.text {
  padding-top:2em;
}
.para {
  padding:1em;
  border-left:5px solid white;
  border-right:5px solid white;
  border-radius: 10px;
  margin-left:10%;
}
% if c.lexiconbased:
.word,.tile {
  border-radius: 5px;
  box-shadow:2px 2px 2px #989898;
}
.positiveW,.positiveT { background-color: rgb(146, 208, 80); }
.negativeW,.negativeT { background-color: #b7a6dd; }
.mixedW,.mixedT       { background-color: #d9ddb4; }
.neutralW,.neutralT   { background-color: white; }
.extremeW,.extremeT       { background-color: darkgray; }

.neutralP  { }
.positiveP { border-left-color: rgb(146, 208, 80); }
.negativeP { border-left-color: #b7a6dd; }
.extremeP    { border-left-color: darkgray; }
.mixedP    { border-left-color: #d9ddb4;  border-left-style: dotted; }
% else:
.tile {
  border-radius: 5px;
  box-shadow:2px 2px 2px #989898;
}
.positiveT { background-color: rgb(146, 208, 80); }
.negativeT { background-color: #b7a6dd; }
.mixedT       { background-color: #d9ddb4; }
.neutralT   { background-color: white; }
.extremeT       { background-color: darkgray; }

.neutralB  { }
.positiveB { border-right-color: rgb(146, 208, 80); }
.negativeB { border-right-color: #b7a6dd; }
% endif

div.chart {
  position:relative;
  padding-top:48px;
  margin:0;
  height:48px;
  width:100%;
}
.chart a {
  text-decoration:none;
  color:#555;
}
div.bar {
  /*only needed for height * position:relative;*/
  padding:0px;
  margin:0px;
  height:24px;
  float:left;
  box-shadow:2px 2px 5px #989898;
}
span.info {
  display: none;
  width: 120px;
  position: absolute;
  margin-top: 28px;
  padding:6px 0px 6px 10px;
  font-size:70%;
}
.bar:hover {
  padding: 4px 0 4px 0;
  margin-top: -4px;
}
.bar:hover .info {	
  display: block;
  font-weight: bold; 
  background-color:lightyellow;
  border-radius: 5px;
  box-shadow:2px 2px 5px #989898;
}

</style>
</%def>\
<div class="buttons"><a href="/valence">${_('Back')}</a></div>
<%inherit file="/layout.mak"/>\


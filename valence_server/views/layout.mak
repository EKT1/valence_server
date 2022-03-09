# -*- coding: utf-8 -*-
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<title>${self.title()}</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="/valence/style/base.css">
${self.styles()}\
</head>
<body id="body">
<div id="header">
<a id="logo" href="http://portaal.eki.ee"></a>
<%widgets:navbar toggle="">${self.localmenu()}</%widgets:navbar>
<h5>${_('Emotion detector')}</h5>
</div>
<noscript>
<div style="font-weight:bold;color:red; padding: 50px 50px;">${_('Please enable JavaScript.')}</div>
</noscript>
<div id="content" class="wide">${next.body()}</div>
<div id="footer" class="narrow">${self.footer()}</div>
</body>
</html>
<%def name="title()">EKI eKorpus</%def>\
<%def name="styles()"></%def>\
<%def name="footer()"></%def>\
<%def name="nav()"></%def>\
<%def name="localmenu()"></%def>\
<%namespace name="widgets" file="widgets.mak"/>\

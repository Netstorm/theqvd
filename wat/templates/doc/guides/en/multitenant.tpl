<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="generator" content="AsciiDoc 8.6.9">
<title>Multitenat guide</title>
<style type="text/css">
/* Shared CSS for AsciiDoc xhtml11 and html5 backends */

/* Default font. */
body {
  font-family: Georgia,serif;
}

/* Title font. */
h1, h2, h3, h4, h5, h6,
div.title, caption.title,
thead, p.table.header,
#toctitle,
#author, #revnumber, #revdate, #revremark,
#footer {
  font-family: Arial,Helvetica,sans-serif;
}

body {
  margin: 1em 5% 1em 5%;
}

a {
  color: blue;
  text-decoration: underline;
}
a:visited {
  color: fuchsia;
}

em {
  font-style: italic;
  color: navy;
}

strong {
  font-weight: bold;
  color: #083194;
}

h1, h2, h3, h4, h5, h6 {
  color: #527bbd;
  margin-top: 1.2em;
  margin-bottom: 0.5em;
  line-height: 1.3;
}

h1, h2, h3 {
  border-bottom: 2px solid silver;
}
h2 {
  padding-top: 0.5em;
}
h3 {
  float: left;
}
h3 + * {
  clear: left;
}
h5 {
  font-size: 1.0em;
}

div.sectionbody {
  margin-left: 0;
}

hr {
  border: 1px solid silver;
}

p {
  margin-top: 0.5em;
  margin-bottom: 0.5em;
}

ul, ol, li > p {
  margin-top: 0;
}
ul > li     { color: #aaa; }
ul > li > * { color: black; }

pre {
  padding: 0;
  margin: 0;
}

#author {
  color: #527bbd;
  font-weight: bold;
  font-size: 1.1em;
}
#email {
}
#revnumber, #revdate, #revremark {
}

#footer {
  font-size: small;
  border-top: 2px solid silver;
  padding-top: 0.5em;
  margin-top: 4.0em;
}
#footer-text {
  float: left;
  padding-bottom: 0.5em;
}
#footer-badges {
  float: right;
  padding-bottom: 0.5em;
}

#preamble {
  margin-top: 1.5em;
  margin-bottom: 1.5em;
}
div.imageblock, div.exampleblock, div.verseblock,
div.quoteblock, div.literalblock, div.listingblock, div.sidebarblock,
div.admonitionblock {
  margin-top: 1.0em;
  margin-bottom: 1.5em;
}
div.admonitionblock {
  margin-top: 2.0em;
  margin-bottom: 2.0em;
  margin-right: 10%;
  color: #606060;
}

div.content { /* Block element content. */
  padding: 0;
}

/* Block element titles. */
div.title, caption.title {
  color: #527bbd;
  font-weight: bold;
  text-align: left;
  margin-top: 1.0em;
  margin-bottom: 0.5em;
}
div.title + * {
  margin-top: 0;
}

td div.title:first-child {
  margin-top: 0.0em;
}
div.content div.title:first-child {
  margin-top: 0.0em;
}
div.content + div.title {
  margin-top: 0.0em;
}

div.sidebarblock > div.content {
  background: #ffffee;
  border: 1px solid #dddddd;
  border-left: 4px solid #f0f0f0;
  padding: 0.5em;
}

div.listingblock > div.content {
  border: 1px solid #dddddd;
  border-left: 5px solid #f0f0f0;
  background: #f8f8f8;
  padding: 0.5em;
}

div.quoteblock, div.verseblock {
  padding-left: 1.0em;
  margin-left: 1.0em;
  margin-right: 10%;
  border-left: 5px solid #f0f0f0;
  color: #777777;
}

div.quoteblock > div.attribution {
  padding-top: 0.5em;
  text-align: right;
}

div.verseblock > pre.content {
  font-family: inherit;
  font-size: inherit;
}
div.verseblock > div.attribution {
  padding-top: 0.75em;
  text-align: left;
}
/* DEPRECATED: Pre version 8.2.7 verse style literal block. */
div.verseblock + div.attribution {
  text-align: left;
}

div.admonitionblock .icon {
  vertical-align: top;
  font-size: 1.1em;
  font-weight: bold;
  text-decoration: underline;
  color: #527bbd;
  padding-right: 0.5em;
}
div.admonitionblock td.content {
  padding-left: 0.5em;
  border-left: 3px solid #dddddd;
}

div.exampleblock > div.content {
  border-left: 3px solid #dddddd;
  padding-left: 0.5em;
}

div.imageblock div.content { padding-left: 0; }
span.image img { border-style: none; }
a.image:visited { color: white; }

dl {
  margin-top: 0.8em;
  margin-bottom: 0.8em;
}
dt {
  margin-top: 0.5em;
  margin-bottom: 0;
  font-style: normal;
  color: navy;
}
dd > *:first-child {
  margin-top: 0.1em;
}

ul, ol {
    list-style-position: outside;
}
ol.arabic {
  list-style-type: decimal;
}
ol.loweralpha {
  list-style-type: lower-alpha;
}
ol.upperalpha {
  list-style-type: upper-alpha;
}
ol.lowerroman {
  list-style-type: lower-roman;
}
ol.upperroman {
  list-style-type: upper-roman;
}

div.compact ul, div.compact ol,
div.compact p, div.compact p,
div.compact div, div.compact div {
  margin-top: 0.1em;
  margin-bottom: 0.1em;
}

tfoot {
  font-weight: bold;
}
td > div.verse {
  white-space: pre;
}

div.hdlist {
  margin-top: 0.8em;
  margin-bottom: 0.8em;
}
div.hdlist tr {
  padding-bottom: 15px;
}
dt.hdlist1.strong, td.hdlist1.strong {
  font-weight: bold;
}
td.hdlist1 {
  vertical-align: top;
  font-style: normal;
  padding-right: 0.8em;
  color: navy;
}
td.hdlist2 {
  vertical-align: top;
}
div.hdlist.compact tr {
  margin: 0;
  padding-bottom: 0;
}

.comment {
  background: yellow;
}

.footnote, .footnoteref {
  font-size: 0.8em;
}

span.footnote, span.footnoteref {
  vertical-align: super;
}

#footnotes {
  margin: 20px 0 20px 0;
  padding: 7px 0 0 0;
}

#footnotes div.footnote {
  margin: 0 0 5px 0;
}

#footnotes hr {
  border: none;
  border-top: 1px solid silver;
  height: 1px;
  text-align: left;
  margin-left: 0;
  width: 20%;
  min-width: 100px;
}

div.colist td {
  padding-right: 0.5em;
  padding-bottom: 0.3em;
  vertical-align: top;
}
div.colist td img {
  margin-top: 0.3em;
}

@media print {
  #footer-badges { display: none; }
}

#toc {
  margin-bottom: 2.5em;
}

#toctitle {
  color: #527bbd;
  font-size: 1.1em;
  font-weight: bold;
  margin-top: 1.0em;
  margin-bottom: 0.1em;
}

div.toclevel1, div.toclevel2, div.toclevel3, div.toclevel4 {
  margin-top: 0;
  margin-bottom: 0;
}
div.toclevel2 {
  margin-left: 2em;
  font-size: 0.9em;
}
div.toclevel3 {
  margin-left: 4em;
  font-size: 0.9em;
}
div.toclevel4 {
  margin-left: 6em;
  font-size: 0.9em;
}

span.aqua { color: aqua; }
span.black { color: black; }
span.blue { color: blue; }
span.fuchsia { color: fuchsia; }
span.gray { color: gray; }
span.green { color: green; }
span.lime { color: lime; }
span.maroon { color: maroon; }
span.navy { color: navy; }
span.olive { color: olive; }
span.purple { color: purple; }
span.red { color: red; }
span.silver { color: silver; }
span.teal { color: teal; }
span.white { color: white; }
span.yellow { color: yellow; }

span.aqua-background { background: aqua; }
span.black-background { background: black; }
span.blue-background { background: blue; }
span.fuchsia-background { background: fuchsia; }
span.gray-background { background: gray; }
span.green-background { background: green; }
span.lime-background { background: lime; }
span.maroon-background { background: maroon; }
span.navy-background { background: navy; }
span.olive-background { background: olive; }
span.purple-background { background: purple; }
span.red-background { background: red; }
span.silver-background { background: silver; }
span.teal-background { background: teal; }
span.white-background { background: white; }
span.yellow-background { background: yellow; }

span.big { font-size: 2em; }
span.small { font-size: 0.6em; }

span.underline { text-decoration: underline; }
span.overline { text-decoration: overline; }
span.line-through { text-decoration: line-through; }


/*
 * xhtml11 specific
 *
 * */

tt {
  font-family: monospace;
  font-size: inherit;
  color: navy;
}

div.tableblock {
  margin-top: 1.0em;
  margin-bottom: 1.5em;
}
div.tableblock > table {
  border: 3px solid #527bbd;
}
thead, p.table.header {
  font-weight: bold;
  color: #527bbd;
}
p.table {
  margin-top: 0;
}
/* Because the table frame attribute is overriden by CSS in most browsers. */
div.tableblock > table[frame="void"] {
  border-style: none;
}
div.tableblock > table[frame="hsides"] {
  border-left-style: none;
  border-right-style: none;
}
div.tableblock > table[frame="vsides"] {
  border-top-style: none;
  border-bottom-style: none;
}


/*
 * html5 specific
 *
 * */

.monospaced {
  font-family: monospace;
  font-size: inherit;
  color: navy;
}

table.tableblock {
  margin-top: 1.0em;
  margin-bottom: 1.5em;
}
thead, p.tableblock.header {
  font-weight: bold;
  color: #527bbd;
}
p.tableblock {
  margin-top: 0;
}
table.tableblock {
  border-width: 3px;
  border-spacing: 0px;
  border-style: solid;
  border-color: #527bbd;
  border-collapse: collapse;
}
th.tableblock, td.tableblock {
  border-width: 1px;
  padding: 4px;
  border-style: solid;
  border-color: #527bbd;
}

table.tableblock.frame-topbot {
  border-left-style: hidden;
  border-right-style: hidden;
}
table.tableblock.frame-sides {
  border-top-style: hidden;
  border-bottom-style: hidden;
}
table.tableblock.frame-none {
  border-style: hidden;
}

th.tableblock.halign-left, td.tableblock.halign-left {
  text-align: left;
}
th.tableblock.halign-center, td.tableblock.halign-center {
  text-align: center;
}
th.tableblock.halign-right, td.tableblock.halign-right {
  text-align: right;
}

th.tableblock.valign-top, td.tableblock.valign-top {
  vertical-align: top;
}
th.tableblock.valign-middle, td.tableblock.valign-middle {
  vertical-align: middle;
}
th.tableblock.valign-bottom, td.tableblock.valign-bottom {
  vertical-align: bottom;
}


/*
 * manpage specific
 *
 * */

body.manpage h1 {
  padding-top: 0.5em;
  padding-bottom: 0.5em;
  border-top: 2px solid silver;
  border-bottom: 2px solid silver;
}
body.manpage h2 {
  border-style: none;
}
body.manpage div.sectionbody {
  margin-left: 3em;
}

@media print {
  body.manpage div#toc { display: none; }
}


/*
 * Theme specific overrides of the preceding (asciidoc.css) CSS.
 *
 */
body {
  font-family: Garamond, Georgia, serif;
  font-size: 17px;
  color: #3E4349;
  line-height: 1.3em;
}
h1, h2, h3, h4, h5, h6,
div.title, caption.title,
thead, p.table.header,
#toctitle,
#author, #revnumber, #revdate, #revremark,
#footer {
  font-family: Garmond, Georgia, serif;
  font-weight: normal;
  border-bottom-width: 0;
  color: #3E4349;
}
div.title, caption.title { color: #596673; font-weight: bold; }
h1 { font-size: 240%; }
h2 { font-size: 180%; }
h3 { font-size: 150%; }
h4 { font-size: 130%; }
h5 { font-size: 115%; }
h6 { font-size: 100%; }
#header h1 { margin-top: 0; }
#toc {
  color: #444444;
  line-height: 1.5;
  padding-top: 1.5em;
}
#toctitle {
  font-size: 20px;
}
#toc a {
    border-bottom: 1px dotted #999999;
    color: #444444 !important;
    text-decoration: none !important;
}
#toc a:hover {
    border-bottom: 1px solid #6D4100;
    color: #6D4100 !important;
    text-decoration: none !important;
}
div.toclevel1 { margin-top: 0.2em; font-size: 16px; }
div.toclevel2 { margin-top: 0.15em; font-size: 14px; }
em, dt, td.hdlist1 { color: black; }
strong { color: #3E4349; }
a { color: #004B6B; text-decoration: none; border-bottom: 1px dotted #004B6B; }
a:visited { color: #615FA0; border-bottom: 1px dotted #615FA0; }
a:hover { color: #6D4100; border-bottom: 1px solid #6D4100; }
div.tableblock > table, table.tableblock { border: 3px solid #E8E8E8; }
th.tableblock, td.tableblock { border: 1px solid #E8E8E8; }
ul > li > * { color: #3E4349; }
pre, tt, .monospaced { font-family: Consolas,Menlo,'Deja Vu Sans Mono','Bitstream Vera Sans Mono',monospace; }
tt, .monospaced { font-size: 0.9em; color: black;
}
div.exampleblock > div.content, div.sidebarblock > div.content, div.listingblock > div.content { border-width: 0 0 0 3px; border-color: #E8E8E8; }
div.verseblock { border-left-width: 0; margin-left: 3em; }
div.quoteblock { border-left-width: 3px; margin-left: 0; margin-right: 0;}
div.admonitionblock td.content { border-left: 3px solid #E8E8E8; }


</style>
<script type="text/javascript">
/*<![CDATA[*/
var asciidoc = {  // Namespace.

/////////////////////////////////////////////////////////////////////
// Table Of Contents generator
/////////////////////////////////////////////////////////////////////

/* Author: Mihai Bazon, September 2002
 * http://students.infoiasi.ro/~mishoo
 *
 * Table Of Content generator
 * Version: 0.4
 *
 * Feel free to use this script under the terms of the GNU General Public
 * License, as long as you do not remove or alter this notice.
 */

 /* modified by Troy D. Hanson, September 2006. License: GPL */
 /* modified by Stuart Rackham, 2006, 2009. License: GPL */

// toclevels = 1..4.
toc: function (toclevels) {

  function getText(el) {
    var text = "";
    for (var i = el.firstChild; i != null; i = i.nextSibling) {
      if (i.nodeType == 3 /* Node.TEXT_NODE */) // IE doesn't speak constants.
        text += i.data;
      else if (i.firstChild != null)
        text += getText(i);
    }
    return text;
  }

  function TocEntry(el, text, toclevel) {
    this.element = el;
    this.text = text;
    this.toclevel = toclevel;
  }

  function tocEntries(el, toclevels) {
    var result = new Array;
    var re = new RegExp('[hH]([1-'+(toclevels+1)+'])');
    // Function that scans the DOM tree for header elements (the DOM2
    // nodeIterator API would be a better technique but not supported by all
    // browsers).
    var iterate = function (el) {
      for (var i = el.firstChild; i != null; i = i.nextSibling) {
        if (i.nodeType == 1 /* Node.ELEMENT_NODE */) {
          var mo = re.exec(i.tagName);
          if (mo && (i.getAttribute("class") || i.getAttribute("className")) != "float") {
            result[result.length] = new TocEntry(i, getText(i), mo[1]-1);
          }
          iterate(i);
        }
      }
    }
    iterate(el);
    return result;
  }

  var toc = document.getElementById("toc");
  if (!toc) {
    return;
  }

  // Delete existing TOC entries in case we're reloading the TOC.
  var tocEntriesToRemove = [];
  var i;
  for (i = 0; i < toc.childNodes.length; i++) {
    var entry = toc.childNodes[i];
    if (entry.nodeName.toLowerCase() == 'div'
     && entry.getAttribute("class")
     && entry.getAttribute("class").match(/^toclevel/))
      tocEntriesToRemove.push(entry);
  }
  for (i = 0; i < tocEntriesToRemove.length; i++) {
    toc.removeChild(tocEntriesToRemove[i]);
  }

  // Rebuild TOC entries.
  var entries = tocEntries(document.getElementById("content"), toclevels);
  for (var i = 0; i < entries.length; ++i) {
    var entry = entries[i];
    if (entry.element.id == "")
      entry.element.id = "_toc_" + i;
    var a = document.createElement("a");
    a.href = "#" + entry.element.id;
    a.appendChild(document.createTextNode(entry.text));
    var div = document.createElement("div");
    div.appendChild(a);
    div.className = "toclevel" + entry.toclevel;
    toc.appendChild(div);
  }
  if (entries.length == 0)
    toc.parentNode.removeChild(toc);
},


/////////////////////////////////////////////////////////////////////
// Footnotes generator
/////////////////////////////////////////////////////////////////////

/* Based on footnote generation code from:
 * http://www.brandspankingnew.net/archive/2005/07/format_footnote.html
 */

footnotes: function () {
  // Delete existing footnote entries in case we're reloading the footnodes.
  var i;
  var noteholder = document.getElementById("footnotes");
  if (!noteholder) {
    return;
  }
  var entriesToRemove = [];
  for (i = 0; i < noteholder.childNodes.length; i++) {
    var entry = noteholder.childNodes[i];
    if (entry.nodeName.toLowerCase() == 'div' && entry.getAttribute("class") == "footnote")
      entriesToRemove.push(entry);
  }
  for (i = 0; i < entriesToRemove.length; i++) {
    noteholder.removeChild(entriesToRemove[i]);
  }

  // Rebuild footnote entries.
  var cont = document.getElementById("content");
  var spans = cont.getElementsByTagName("span");
  var refs = {};
  var n = 0;
  for (i=0; i<spans.length; i++) {
    if (spans[i].className == "footnote") {
      n++;
      var note = spans[i].getAttribute("data-note");
      if (!note) {
        // Use [\s\S] in place of . so multi-line matches work.
        // Because JavaScript has no s (dotall) regex flag.
        note = spans[i].innerHTML.match(/\s*\[([\s\S]*)]\s*/)[1];
        spans[i].innerHTML =
          "[<a id='_footnoteref_" + n + "' href='#_footnote_" + n +
          "' title='View footnote' class='footnote'>" + n + "</a>]";
        spans[i].setAttribute("data-note", note);
      }
      noteholder.innerHTML +=
        "<div class='footnote' id='_footnote_" + n + "'>" +
        "<a href='#_footnoteref_" + n + "' title='Return to text'>" +
        n + "</a>. " + note + "</div>";
      var id =spans[i].getAttribute("id");
      if (id != null) refs["#"+id] = n;
    }
  }
  if (n == 0)
    noteholder.parentNode.removeChild(noteholder);
  else {
    // Process footnoterefs.
    for (i=0; i<spans.length; i++) {
      if (spans[i].className == "footnoteref") {
        var href = spans[i].getElementsByTagName("a")[0].getAttribute("href");
        href = href.match(/#.*/)[0];  // Because IE return full URL.
        n = refs[href];
        spans[i].innerHTML =
          "[<a href='#_footnote_" + n +
          "' title='View footnote' class='footnote'>" + n + "</a>]";
      }
    }
  }
},

install: function(toclevels) {
  var timerId;

  function reinstall() {
    asciidoc.footnotes();
    if (toclevels) {
      asciidoc.toc(toclevels);
    }
  }

  function reinstallAndRemoveTimer() {
    clearInterval(timerId);
    reinstall();
  }

  timerId = setInterval(reinstall, 500);
  if (document.addEventListener)
    document.addEventListener("DOMContentLoaded", reinstallAndRemoveTimer, false);
  else
    window.onload = reinstallAndRemoveTimer;
}

}
asciidoc.install(3);
/*]]>*/
</script>
</head>
<body class="article">
<div id="header">
<h1>Multitenat guide</h1>
<div id="toc">
  <div id="toctitle">Table of Contents</div>
  <noscript><p><b>JavaScript must be enabled in your browser to display the table of contents.</b></p></noscript>
</div>
</div>
<div id="content">
<div id="preamble">
<div class="sectionbody">
<div class="paragraph"><p>This guide is a <strong>supplement to the user&#8217;s guide</strong> where the distinguishing WAT operation features will be revised in a special way: the <strong>multitenant mode</strong>, regarding the normal mode, or the also called <strong>monotenant mode</strong>.</p></div>
<div class="paragraph"><p>With the multitenat guide, everything which someone may need to use this advanced mode is described both conceptually and operationally, considering the user&#8217;s guide as a basis. Both guides <strong>are not independent</strong>.</p></div>
</div>
</div>
<div class="sect1">
<h2 id="_operation_modes_per_scope">1. Operation modes per scope</h2>
<div class="sectionbody">
<div class="paragraph"><p>WAT has two operating modes:</p></div>
<div class="ulist"><ul>
<li>
<p>
<strong>Monotenant</strong>: All the system administrators coexist in the same scope or tenant. This operating mode would be the same as the way WAT worked in previous versions before QVD 4.
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>A system is monotenant by default. It comes with a administrator user already created which provides total access and, with it,  we will be able to create QVD elements and other system administrators with more or less limited permits to manage different parts in WAT .</p></div>
<div class="paragraph"><p>These permits will mention the elements to see or manage (users, virtual machines, etc.) but it will not be possible to provide access to a subset of them.</p></div>
<div class="paragraph"><p>For instance, if we give a system administrator read-only permits for disk images, he will be able to see all the system images, we cannot limit him to a subset of them.</p></div>
<div class="paragraph"><p>This kind of disintegration will be carried out in multitenant mode.</p></div>
</div></div>
</li>
<li>
<p>
<strong>Multitenant</strong>: There can be different scopes or tenants. Within them, it will be possible to create QVD independent elements from one another and system administrators to manage them. In this case <strong>every tenant will behave as a monotenant WAT installation</strong>, it may issue permits to the system administrators so that they can manage elements with more or less control.
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>For example, a system administrator may be assigned read-only permits for disk images, with which he will  be able to see what is in his tenant, and a more advanced management level in virtual machines, with which apart from viewing, he can create and update the virtual machines he has access to (the ones from his tenant).</p></div>
<div class="paragraph"><p>Tenant system administrators will be <strong>isolated in their tenant</strong>, without any knowledge of  the existence of other tenants. They will only see the QVD elements which are in their tenant. The system administrator will not be aware if he is working in a monotenant WAT or in a tenant within a multitenant WAT.</p></div>
<div class="paragraph"><p>In a multitenant WAT, there will be a <strong>higher tenant</strong> which we will name <strong>Supertenant or Tenant <em></strong></em>* and it will include all the rest. System administrators for this Supertenant are thought to deal with <strong>setting up and supervising</strong> tasks since they can manage QVD elements from <strong>any tenant</strong> being aware of the distribution, being able to filter elements by tenant, or choosing in which tenant to create a specific element.</p></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//tip.png" alt="Tip">
</td>
<td class="content">When a Supertenant administrator creates elements,  he can <strong>choose the tenant</strong> to do it. In the same way, he will have to take into account that <strong>he cannot link elements from different tenants within themselves</strong>. Thus, for example, if he wishes to create a virtual machine in Tenant A, there should be at least a OSF, a disk image linked to that OSF and a user in Tenant A.</td>
</tr></table>
</div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/Monotenant-Multitenant.png" alt="Monotenant-Multitenant.png" width="600px">
</span></p></div>
</div></div>
</li>
</ul></div>
</div>
</div>
<div class="sect1">
<h2 id="_mode_change_monotenant_8592_8594_multitenant">2. Mode change (monotenant &#8592;&#8594; multitenant)</h2>
<div class="sectionbody">
<div class="dlist"><dl>
<dt class="hdlist1">
Reversible changes
</dt>
<dd>
<p>
WAT mode changes are <strong>reversible</strong>. It is possible to change from one mode to another as many times as someone wants to although, in order to preserve data coherence, it is recommended to make only the strictly necessary changes.
</p>
</dd>
<dt class="hdlist1">
How to change a mode
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>To change the mode between monotenant and multitenant, we have to go to the <strong>QDV Management</strong> section in the general menu. In that section, in the <strong>QVD set up</strong> part, we will either go to <em>WAT</em> or look for the <em>multitenant</em> browser.</p></div>
<div class="paragraph"><p>There, we will find the <em>wat.multitenant</em> token. This token accepts two values: 0 for the monotenant mode and 1 for the multitenant mode. We can change it to the wanted value and implement the change. From this moment, our system will have change its operating system.</p></div>
</div></div>
</dd>
<dt class="hdlist1">
Changes according to the type of system administrator
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Depending on the change we make and the kind of system administrator we make it with, we can find ourselves in different situations:</p></div>
<div class="ulist"><ul>
<li>
<p>
<strong>Change from monotenant to multitenant</strong>: in this case, as we come from a monotenant system, the change will only be possible with a tenant administrator who has QVD set-up permits.
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>As we are all the time inside the tenant where the administrator who makes the change is, there will not seem to be immediate consequences after its implimentation. We have to log out and authenticate with a super administrator to access the supertenant and thus check that the WAT is working in multitenant mode.  If it is the first time this mode is on, there will be a super administrator created by default. Everything is detailed in the Multitenant Set-up section in the manual.</p></div>
</div></div>
</li>
<li>
<p>
<strong>Change from multitenant to monotenant</strong>: This change can be made in two types of system administrators: a tenant administrator or a super administrator. Both will need QVD set-up permits to do so.
</p>
</li>
</ul></div>
</div></div>
</dd>
</dl></div>
<div class="paragraph"><p>When someone goes from multitenant to monotenant, super administrators who are in the system, <strong>will stay on</strong>. They will not be deleted in case we want to return to the multitenant mode at some point.</p></div>
<div class="paragraph"><p>In this way we will have different performances depending on the type of system administrator we make the change with:</p></div>
<div class="openblock">
<div class="content">
<div class="ulist"><ul>
<li>
<p>
<strong>Tenant administrator</strong>: We will not notice apparent changes. What will happen is that if we log out and we try to authenticate with the super administrator, the system will not allow it.
</p>
</li>
<li>
<p>
<strong>Super-administrator</strong>: Due to the fact that when we change to monotenant mode super administrators change to inactive, if we make a change with the super administrator when it is given effect, it will log out automatically.
</p>
</li>
</ul></div>
</div></div>
<div class="paragraph"><p>Changing multitenant to monotenant there is a risk of losing the multitenant mode. See <em>Locking situations</em> section in the manual.</p></div>
<div class="openblock">
<div class="content">
</div></div>
</div>
</div>
<div class="sect1">
<h2 id="_supertenant">3. Supertenant</h2>
<div class="sectionbody">
<div class="paragraph"><p>By switching to multitenant mode (See <em>Mode change</em> section in the manual), we will be able to log on with the super administrator. This way, we will manage the supertenant mode * which is the scope of the super administrators,  just like all the tenants in the system.</p></div>
<div class="paragraph"><p>The supertenant * is like another tenant as far as WAT set-up is concerned. It is possible to create system administrators within it with more or less restricted permits. But in contrast with the tenants, <strong>it will not be possible for it to host QVD elements</strong> (virtual machines, users, disk images&#8230;).</p></div>
<div class="paragraph"><p>The other main difference as it regards to the tenants is that supertenant administrators or super administrators have as <strong>scope</strong>, not only the supertenant, but also <strong>all the tenants in the system</strong>.</p></div>
</div>
</div>
<div class="sect1">
<h2 id="_multitenant_interface">4. Multitenant interface</h2>
<div class="sectionbody">
<div class="paragraph"><p>When we log on with a super administrator, the WAT interface is practically the same as the one of a normal tenant administrator apart from some differences:</p></div>
<div class="ulist"><ul>
<li>
<p>
In the elements which are contents in the tenants, it will appear an <strong>extra column pointing out the tenant</strong> they belong to. In the case of the administrators lists, as a particular case, the tenant it belongs to can also be the supertenant*.
</p>
</li>
<li>
<p>
In the elements list views classified by tenant, appear an <strong>extra filtering control to filter by tenant</strong>. As an exception we have the tenants, nodes and administrator lists.
</p>
</li>
<li>
<p>
When we create an element in QVD as well as a WAT administrator, there will be an <strong>extra field in the creating form</strong> to specify its tenant. In the same way we mentioned before, in the case of system administrators we will be able to choose, apart from the tenant, the supertenant*. This possibility is only included in the production of elements, and not in the edition. Once the element in the tenant has been created , it can be moved.
</p>
</li>
<li>
<p>
In the <em>Views</em> section included in the <em>WAT management</em> section, there is a new Tenant control. The views can be set up in the same way as those in a Monotenant but by each Tenant.
</p>
</li>
<li>
<p>
There are <strong>special permits</strong> such as the ones for tenants management. This way, it can show (if the super administrator has those permits) <strong>one more section: Tenants</strong>.
</p>
</li>
</ul></div>
</div>
</div>
<div class="sect1">
<h2 id="_multitenant_wat_step_by_step">5. Multitenant WAT step by step</h2>
<div class="sectionbody">
<div class="paragraph"><p>Step by step we will see the sections or <strong>parts which are added to WAT when the multitenant mode is on</strong>. These changes go from the log on screen to the small alterations in the generic views list or in elements production. It can also appear in some new section if we are in this mode.</p></div>
<div class="paragraph"><p>These changes will only be seen <strong>by the super administrators</strong> who have the proper permits for that. <strong>Tenant administrators will not appreciate any difference</strong> with the monotenant mode, apart from a different log-on screen.</p></div>
<div class="sect2">
<h3 id="_log_on_page_multitenant">5.1. Log-on page (multitenant)</h3>
<div class="paragraph"><p>When we load WAT, it is set up in a multitenant mode, the log-on screen will have the <em>tenant</em> field besides the <em>user and password</em>. This is due to the fact that an administrator&#8217;s name can be repeated in different Tenants. In the super administrators case, * it will be added to the Tenant field.</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/login_multitenant.png" alt="login_multitenant.png" width="960px">
</span></p></div>
</div>
<div class="sect2">
<h3 id="_tenants">5.2. Tenants</h3>
<div class="paragraph"><p>In the section <strong>Manage WAT</strong> there is one more point: Tenants. In this section the WAT tenants are managed.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
List View
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>The main view is a list with WAT tenants.
<span class="image">
<img src="/images/doc_images/screenshot_tenant_list.png" alt="screenshot_tenant_list.png" width="960px">
</span></p></div>
</div></div>
</dd>
<dt class="hdlist1">
Information column
</dt>
<dd>
<p>
Tenants list does not have any information column.
</p>
</dd>
<dt class="hdlist1">
Massive actions
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_tenant_massiveactions.png" alt="screenshot_tenant_massiveactions.png" width="960px">
</span></p></div>
<div class="paragraph"><p>Massive actions will give us the following options to perform on the selected tenants:</p></div>
<div class="ulist"><ul>
<li>
<p>
Delete tenants
</p>
</li>
</ul></div>
</div></div>
</dd>
<dt class="hdlist1">
Creation
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_tenant_create.png" alt="screenshot_tenant_create.png" width="960px">
</span></p></div>
<div class="paragraph"><p>When creating a tenant, we will set its name, language and block size. Likewise when we manage the WAT configuration, the values of configuration of a tenant will be the WAT configuration inside this tenant. The administrators of a tenant, are not conscious that other scopes exist, and they will have what for them is WAT configuration, corresponding to the configuration of its tenant if we see it from the high scope or supertenant</p></div>
</div></div>
</dd>
<dt class="hdlist1">
Detail view
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_tenant_details.png" alt="screenshot_tenant_details.png" width="960px">
</span></p></div>
<div class="paragraph"><p>See a <strong>header</strong> next to <strong>tenant name</strong> where there are <strong>buttons to delete, edit, block or clean up it</strong>.</p></div>
<div class="ulist"><ul>
<li>
<p>
The <strong>elimination</strong> of tenants is like the one of other elements. In this case <strong>if a tenant has elements, it cannot be eliminated</strong>. You will need to empty it manually or with the cleaning tool.
</p>
</li>
<li>
<p>
The <strong>block</strong> of tenants restricts the administrators and the users to access the WAT and its virtual machines respectively.
</p>
</li>
<li>
<p>
In the <strong>edition</strong> you can change the name, the description, the language and the block size of the tenant by default. The block size and language will be effective for administrators of this tenant whose personal settings they have established <em>by default</em>.
</p>
</li>
</ul></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//warning.png" alt="Warning">
</td>
<td class="content">It is important to know that the name of the tenant is used in the credentials of the administrators and users, so its change must be controlled and informed.</td>
</tr></table>
</div>
<div class="ulist"><ul>
<li>
<p>
The <strong>cleaning</strong> tool shows in one screen all the dependent elements of a Tenant offering various options of elimination. One by one, by categories (all the virtual machines, users, etc), or eliminate all that this tenant has.
</p>
</li>
</ul></div>
<div class="paragraph"><p>Under this heading there is a <strong>table with the attributes of the tenant</strong>.</p></div>
<div class="paragraph"><p>On the right part we find charts that contain the list of relevant elements of the Tenant: Virtual machines, Users and Disc images. All these come with paging controls and a button to go to the correspondent view filtered by the current tenant.</p></div>
</div></div>
</dd>
<dt class="hdlist1">
Edition
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_tenant_edit.png" alt="screenshot_tenant_edit.png" width="960px">
</span></p></div>
<div class="paragraph"><p>When editing a tenant we could change its name, language and block size, bearing in mind that the administrator of that tenant with QVD setting permissions can change these values except the name, which can only be changed by a superadministrator.</p></div>
</div></div>
</dd>
</dl></div>
</div>
<div class="sect2">
<h3 id="_default_views_multitenant">5.3. Default views (multitenant)</h3>
<div class="paragraph"><p>If we are in a multitenant mode and we are a super administrator, in <em>Default views</em> we will be able not only to set up these elements in the supertenant, but also to do it for each tenant in the system.</p></div>
<div class="paragraph"><p>That is the reason why, besides having a selecting combo with the section we want to customize, it will appear another combo with the tenant that will be altered by this set-up.</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/default_views_multitenant.png" alt="default_views_multitenant.png" width="960px">
</span></p></div>
<div class="paragraph"><p>In order to reestablish the views by default, if we want, we can also choose to apply this action on the uploaded tenant at the moment in the section or on all the system tenants, including the supertenant*.</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/default_views_multitenant_reset.png" alt="default_views_multitenant_reset.png" width="960px">
</span></p></div>
<div class="paragraph"><p>Combining this option with the control in which we choose if we apply the action on the current section or on all of them, we have different possibilities:</p></div>
<div class="ulist"><ul>
<li>
<p>
Reestablishing uploaded section and tenant lists at that moment
</p>
</li>
<li>
<p>
Reestablishing uploaded section views  in all the system tenants
</p>
</li>
<li>
<p>
Reestablishing uploaded tenant lists for all the sections
</p>
</li>
<li>
<p>
Reestablishing every section list in all the system tenants
</p>
</li>
</ul></div>
</div>
<div class="sect2">
<h3 id="_documentation_multitenant">5.4. Documentation (multitenant)</h3>
<div class="paragraph"><p>If we are in the multitenant mode and we are the super administrator, in <em>Documentation</em> we will find one more guide:</p></div>
<div class="ulist"><ul>
<li>
<p>
The <strong>multitenant guide</strong> where we find on the one hand, a theoretical description of the multitenant system functioning and, on the other hand both functional and interface differences as far as the monotenant mode is concerned.
</p>
</li>
</ul></div>
<div class="paragraph"><p>Besides, in the related document links  under the different sections, it is possible to find additional links with access to the corresponding part from the multitenant point of view.</p></div>
</div>
<div class="sect2">
<h3 id="_properties_multitenant">5.5. Properties (multitenant)</h3>
<div class="paragraph"><p>If we are in the multitenant mode and we are the super administrator, we will have access in <em>Properties</em> to the management of all the tenant&#8217;s properties. Thus, so as to classify them, there is one more available filter with the tenant which the display properties belong to. These tenants include the supertenant <em>*</em>, which can also have its own properties.</p></div>
<div class="paragraph"><p>Since it is possible to have specific multitenant properties <em>*</em>, in the detail and list views of the elements, if we are super administrators, we may see the tenant properties apart from the supertenant. It is important to consider that the latter will not be visible for that tenant administrators, but only the super administrators will be able to see them.</p></div>
<div class="paragraph"><p><strong>In the case of the nodes</strong>, as they do not belong to any tenant but they can have different properties in each of the tenants including the supertenant <em>*</em>, <strong>the view will be simplified</strong>. Every administrator will see the properties of the tenant Nodes which it belongs to. This also includes the super administrator, who will only see the supertenant&#8217;s Nodes properties <em>*</em>.</p></div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_multitenant_first_steps">6. Multitenant first steps</h2>
<div class="sectionbody">
<div class="paragraph"><p>If it is the first time we activate the multitenant mode, we can log on with the super administrator which comes by default with the system . Its credentials are:</p></div>
<div class="paragraph"><p>User: superadmin
Password superadmin
The first thing we will do is to <strong>change the password</strong>.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Powers of <em>superadmin</em>
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>This administrator will have full power over the system. If we want to have less powerful super administrators, we can manage them with it or with any super administrator created in the system with enough permits, to know more see section <em>Administrators set-up</em> in the manual.</p></div>
</div></div>
</dd>
</dl></div>
</div>
</div>
<div class="sect1">
<h2 id="_manage_administrators_and_permits_multitenant">7. Manage Administrators and Permits (multitenant)</h2>
<div class="sectionbody">
<div class="paragraph"><p>There are some things we must know as it regards to multitenant contexts when we manage administrators and their permits.</p></div>
<div class="paragraph"><p>The differences in the interface and its management, which we will comment on next, will only be visible for the super administrators.</p></div>
<div class="paragraph"><p>Although a context may be multitenant, for the tenant administrators, this condition is clear. For them, there will not be a difference with a monotenant context.</p></div>
<div class="sect2">
<h3 id="_administrators_distribution_by_tenants">7.1. Administrators' distribution by tenants</h3>
<div class="paragraph"><p>In a multitenant contex, <strong>administrators will be hosted unequivocally in a tenant</strong>, either it may be a normal or a supertenant in the case of the super administrators.</p></div>
<div class="paragraph"><p>On the basis of creating an administrator, we distinguish <strong>two cases depending on the scope</strong>.</p></div>
<div class="ulist"><ul>
<li>
<p>
<strong>A tenant administrator</strong> can be generated by an administrator from its own tenant or by a super administrator.
</p>
</li>
<li>
<p>
<strong>A super administrator can be generated by other super administrator</strong>.
</p>
</li>
</ul></div>
<div class="paragraph"><p>When we produce an administrator, if we are in a multitenant context and we are super administrators, a field will appear to choose where we want to create it. <strong>The administrator cannot be moved to another tenant once it has been done</strong>.</p></div>
<div class="paragraph"><p>In the administrators' list view in an <strong>extra column</strong> it appears the tenant which every administrator belongs to, moreover a <strong>new filtering control</strong> will help us to see only the administrators from the tenant we select to.</p></div>
</div>
<div class="sect2">
<h3 id="_acls_template_independence">7.2. ACLs template independence</h3>
<div class="paragraph"><p>Templates are independent from the tenants, what means, they are common to all of them. As there is not a templates view further from the roles edition screen where we will inherit templates, there will not be significant changes on the interface level.</p></div>
</div>
<div class="sect2">
<h3 id="_tenants_role_distribution">7.3. Tenants' role distribution</h3>
<div class="sect3">
<h4 id="_system_roles">7.3.1. System roles</h4>
<div class="paragraph"><p>The roles the system has by default are fixed and common to all the tenants, that is, they can not be edited or deleted and they are at the disposal of any system administrator, independently from the tenant or the supertenant they belong to, in the same way it happens with the templates.</p></div>
</div>
<div class="sect3">
<h4 id="_customized_roles">7.3.2. Customized roles</h4>
<div class="paragraph"><p>The roles created by an administrator will be hosted unequivocally in a tenant, either a normal or a supertenant.</p></div>
<div class="paragraph"><p>Super administrators can create roles in any tenant and tenant administrators will do it in their own tenant.</p></div>
<div class="paragraph"><p>A role can only inherit system roles or other roles from its own tenant.</p></div>
<div class="paragraph"><p>When a role is created, if we are in the multitenant context and we are the super administrators, a field will appear to choose in which tenant we want to create it. <strong>The role cannot be moved from the tenant once created</strong>.</p></div>
<div class="paragraph"><p>In the roles' list view, there will be in an <strong>extra column</strong> the tenant each role belongs to, and also a <strong>new filtering control</strong> which will help us to see only the roles of the tenant we select.</p></div>
</div>
</div>
<div class="sect2">
<h3 id="_tenants_management">7.4. Tenants management</h3>
<div class="paragraph"><p>Tenants management is introduced in multitenant contexts.</p></div>
<div class="paragraph"><p>We can create as many tenants as we want to, with no limit as far as the number of administrators for tenant is concerned.</p></div>
<div class="paragraph"><p>When we create a tenant we will select its default name, language and the size of the WAT block for its administrators.</p></div>
<div class="paragraph"><p>The process will be:</p></div>
<div class="ulist"><ul>
<li>
<p>
<strong>To create the tenant with the *New tenant</strong> button from the tenants' list view. We will establish its default name, language and the size of the WAT block for its administrators.
</p>
</li>
<li>
<p>
A tenant management does not go further than modifying those parameters or deleting a tenant as any other WAT element.  If we delete a tenant, all its content will be deleted*, so it is quite a sensible and thus critical action.
</p>
</li>
</ul></div>
</div>
<div class="sect2">
<h3 id="_acls_reference_multitenant">7.5. ACLs reference (Multitenant)</h3>
<div class="paragraph"><p>Some ACLs are exclusive to multitenant contexts</p></div>
<div class="paragraph"><p>This way, in roles management when we manage administrators in a multitenant context, ACLs trees will have certain extra ACLs apart from the ones that are in the monotenant.</p></div>
<div class="paragraph"><p>This is the case of the ACLs responsible for Tenants management.</p></div>
<div class="sect3">
<h4 id="_tenants_acls">7.5.1. Tenants ACLs</h4>
<table class="tableblock frame-all grid-all"
style="
width:100%;
">
<col style="width:33%;">
<col style="width:33%;">
<col style="width:33%;">
<thead>
<tr>
<th class="tableblock halign-left valign-top" >ACL    </th>
<th class="tableblock halign-left valign-top" >ACL code       </th>
<th class="tableblock halign-left valign-top" >Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Create tenants</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.create.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Creation of tenants including initial settings for name.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Delete tenants (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.delete-massive.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Deletion of tenants massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Delete tenants</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.delete.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Deletion of tenants one by one</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter tenants by blocking status</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.filter.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of tenants list by blocking status</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter tenants by creator</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.filter.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of tenants list by administrator who created it</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter tenants by creation date</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.filter.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of tenants list by date when it was created</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter tenants by name</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.filter.name</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of tenants list by tenant&#8217;s name</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Access to tenant&#8217;s details view</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see-details.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Access to details view of Tenants. This view includes name</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Access to tenant&#8217;s main section</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see-main.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Access to the tenants list. This view includes name</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See tenant&#8217;s block size</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see.blocksize</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The block size in lists pagination of the tenants.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See tenant&#8217;s blocking state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Blocking state (blocked/unblocked) of tenants.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See tenant&#8217;s creator</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Wat administrator who created a tenant</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See tenant&#8217;s creation date</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Datetime when a tenant was created</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See tenant&#8217;s description</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The description of the tenants.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See tenant&#8217;s disk images</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see.di-list</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">See the disk images of this tenant in his details view. This view will contain: name, block, tags, default and head</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See tenant&#8217;s disk blocking state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see.di-list-block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Blocking info of the disk images shown in tenant details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See tenant&#8217;s disk images' tags</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see.di-list-tags</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Tags of the disk images shown in tenant details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See tenant&#8217;s ID</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see.id</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The database identiefier of the tenants. Useful to make calls from CLI.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See tenant&#8217;s language</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see.language</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The language setted by default for any administrar that belong to a tenant</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See tenant&#8217;s users</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see.user-list</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">See the users of one tenant in his details view. This view will contain: name and blocking information of each user</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See tenant&#8217;s user blocking state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see.user-list-block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Blocking info of the users shown in tenant details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See tenant&#8217;s virtual machines</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see.vm-list</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">See the virtual machines of one tenant in his details view. This view will contain: name, state, block and expire information of each vm</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See tenant&#8217;s virtual machines blocking state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see.vm-list-block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Blocking info of the virtual machines shown in tenant details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See tenant&#8217;s virtual machines' expiration date</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see.vm-list-expiration</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Expiration info of the virtual machines shown in tenant details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See tenant&#8217;s virtual machines' running state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see.vm-list-state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">State (stopped/started) of the virtual machines shown in tenant details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See tenant&#8217;s virtual machines' user state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.see.vm-list-user-state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">User state (connected/disconnected)) of the virtual machines shown in tenant details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Block-Unblock tenants (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.update-massive.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the blocking state (blocked/unblocked) of tenants masively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update tenant&#8217;s block size (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.update-massive.blocksize</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the block size in lists pagination of tenants massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update tenant&#8217;s description (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.update-massive.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the description of tenants massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update tenant&#8217;s language (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.update-massive.language</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the language of tenants massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Block-Unblock tenants</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.update.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the blocking state (blocked/unblocked) of tenants one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update tenant&#8217;s block size</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.update.blocksize</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the block size in lists pagination of tenants one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update tenant&#8217;s description</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.update.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the description of tenants one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update tenant&#8217;s language</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.update.language</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the language of tenants one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update tenant&#8217;s name</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">tenant.update.name</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the name of tenants.</p></td>
</tr>
</tbody>
</table>
</div>
</div>
<div class="sect2">
<h3 id="_template_reference_multitenant">7.6. Template reference (Multitenant)</h3>
<div class="paragraph"><p>There are also exclusive and additional ACLs Templates in the multitenant mode:</p></div>
<div class="ulist"><ul>
<li>
<p>
Tenants Manager
</p>
<div class="openblock">
<div class="content">
<div class="dlist"><dl>
<dt class="hdlist1">
It inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Tenants Reader
</p>
</li>
<li>
<p>
Tenants Creator
</p>
</li>
<li>
<p>
Tenants Updater
</p>
</li>
<li>
<p>
Tenants Eraser
</p>
</li>
</ul></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/Templates_Hierarchy_-_Tenants_Manager.png" alt="Templates_Hierarchy_-_Tenants_Manager.png" width="600px">
</span></p></div>
<div class="paragraph"><p>Tenants do not have an operating template as they are not operative apart from seeing, creating, updating and erasing. If in the future it was added, it would be inherited from this managing template.</p></div>
</div></div>
</li>
</ul></div>
<div class="sect3">
<h4 id="_templates_organization_multitenant">7.6.1. Templates Organization (Multitenant)</h4>
<div class="paragraph"><p>When the system is in multitenant  mode, Templates organization has additional Templates. It can be seen at a glance in the following organizational chart.</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/Templates_Hierarchy_Monotenant.png" alt="Templates_Hierarchy_Monotenant.png" width="960px">
</span></p></div>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_block_situations_multitenant">8. Block situations (multitenant)</h2>
<div class="sectionbody">
<div class="paragraph"><p>In the multitnenant system, there are new ways to be in a blocked situation. Although the administrators are properly set-up in the tenants, it can be possible that in the supertenant <strong>we carelessly lose the control over the only super administrator who can manage permits</strong>, so we will lose its functionalities.</p></div>
<div class="paragraph"><p>Another new blocked situation can happen <strong>when we change from multitenant to monotenant mode</strong>.</p></div>
<div class="paragraph"><p>It will happen if we change from multitenant to monotenant mode in the case there is not any tenant administrator with the capacity of returning the system to multitenant or of giving those permits to other administrator (or to himself).</p></div>
<div class="paragraph"><p>In this case we will be trapped in the monotenant mode, what we also consider a blocked situation.</p></div>
</div>
</div>
<div class="sect1">
<h2 id="_recovery_mode_multitenant">9. Recovery mode (multitenant)</h2>
<div class="sectionbody">
<div class="paragraph"><p>In the multitenant set-up there is also the recovery administrator with the same credential that the multitenant one:</p></div>
<div class="literalblock">
<div class="content monospaced">
<pre>User: batman
Password: (Consult the support team)</pre>
</div></div>
<div class="paragraph"><p>In this case, there will be small differences in comparison with the one there is in the monotenant mode.</p></div>
<div class="paragraph"><p>Basically <strong>the difference will be</strong>, that in this mode, <strong>the recovery administrator will also have</strong>, apart from the ones the monotenant mode has, <strong>access to the Tenants management</strong>.</p></div>
</div>
</div>
</div>
<div id="footnotes"><hr></div>
<div id="footer">
<div id="footer-text">
Last updated 2017-02-14 15:33:45 CET
</div>
</div>
</body>
</html>

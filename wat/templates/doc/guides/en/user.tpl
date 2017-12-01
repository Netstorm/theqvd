<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="generator" content="AsciiDoc 8.6.9">
<title>User guide</title>
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
<h1>User guide</h1>
<div id="toc">
  <div id="toctitle">Table of Contents</div>
  <noscript><p><b>JavaScript must be enabled in your browser to display the table of contents.</b></p></noscript>
</div>
</div>
<div id="content">
<div class="sect1">
<h2 id="_first_steps">1. First steps</h2>
<div class="sectionbody">
<div class="paragraph"><p>After a clean installation of WAT an administrator with full access will have been created. His credentials are:</p></div>
<div class="literalblock">
<div class="content monospaced">
<pre>User: admin
Password: admin</pre>
</div></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//tip.png" alt="Tip">
</td>
<td class="content">If we are going to have a single WAT administrator <em>admin</em> will be enough. If, otherwise, we want to have different administrators we can create them with <em>admin</em> with the possibility of giving them different permissions.</td>
</tr></table>
</div>
<div class="paragraph"><p><strong>We will log in with the following credentials</strong>.</p></div>
<div class="paragraph"><p>The first step to follow, for security, is <strong>changing the password</strong> of our administrator account.</p></div>
<div class="sect2">
<h3 id="_changing_the_password">1.1. Changing the password</h3>
<div class="paragraph"><p>To change the password we will go to the <strong>administrator area</strong>, positioned in the <strong>main menu</strong> at the top right.</p></div>
<div class="ulist"><ul>
<li>
<p>
We will click in the option labeled as administrator ( in this case <em>admin</em>) or we will go over it with the mouse and from the drop down menu we will choose the option <em>Profile</em>.
</p>
</li>
<li>
<p>
Inside our profile we could click on the edition button, located on the right of the heading, below the menu.
</p>
</li>
<li>
<p>
An editing form will open.
</p>
</li>
<li>
<p>
We will click on change password and we will choose our own password.
</p>
</li>
</ul></div>
</div>
<div class="sect2">
<h3 id="_initial_environment">1.2. Initial environment</h3>
<div class="paragraph"><p>The first screen after logging in corresponds to a <strong>panel with graphics and statistics</strong> from the system. The first time, since it is a new system, all the <strong>indicators</strong> will appear <strong>empty</strong>.</p></div>
<div class="paragraph"><p>The loaded menu by default will be the QVD Platform, which is the backbone of the QVD administration. The menu contains the sections: <em>users, virtual machines, nodes, OSFs and disk images</em>.</p></div>
<div class="paragraph"><p>Navigating through the different sections of the platform we will see that there is nothing in each of them. Every list will appear empty.</p></div>
<div class="paragraph"><p>From the general menu (top right) we could access other WAT parts that we could discover.</p></div>
<div class="paragraph"><p>The managing part of WAT will contain things though, since to make an administrator able to connect WAT, a serie of elements are essential, like the administrator account or at least a role with permissions.</p></div>
<div class="paragraph"><p>In the different guides we wil go through these sections for different purposes, therefore it is convinient to get familiar with the environment.</p></div>
<div class="paragraph"><p>Other aspect we should know is the dependance between other elements we can create in order not to waste time when trying to create some elements without having the ones that are necessary, etc.</p></div>
</div>
<div class="sect2">
<h3 id="_dependencies_between_the_qvd_elements">1.3. Dependencies between the QVD elements</h3>
<div class="paragraph"><p>Some QVD elements depend on other elements:</p></div>
<div class="ulist"><ul>
<li>
<p>
A disk image belongs to an OSF.
</p>
</li>
<li>
<p>
Virtual machines are linked to a user.
</p>
</li>
<li>
<p>
Virtual machines use a disk image.
</p>
</li>
<li>
<p>
Virtual machines will start in a node.
</p>
</li>
</ul></div>
<div class="paragraph"><p>Therefore, we will have to follow a logic sequence to create elements.</p></div>
<div class="paragraph"><p>We will see it in the next <strong>dependencies tree</strong> where <strong>each element has a son and other necessary elements to exist</strong>.</p></div>
<div class="ulist"><ul>
<li>
<p>
Virtual machine
</p>
<div class="ulist"><ul>
<li>
<p>
Node(*)
</p>
</li>
<li>
<p>
User
</p>
</li>
<li>
<p>
Disk image
</p>
<div class="ulist"><ul>
<li>
<p>
OSF
</p>
</li>
</ul></div>
</li>
</ul></div>
</li>
</ul></div>
<div class="openblock">
<div class="content">
<div class="literalblock">
<div class="content monospaced">
<pre>(*) Having less than a Node is not necessary to create a virtual machine but it is to start it.</pre>
</div></div>
</div></div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_creating_a_virtual_machine_from_the_beginning">2. Creating a virtual machine from the beginning</h2>
<div class="sectionbody">
<div class="paragraph"><p>We will learn the steps to perform the complete process of the creation of a virtual machine and getting it ready to be used.</p></div>
<div class="paragraph"><p>Virtual machines use other elements, which we will have to create beforehand in a certain order. To know more about this order we will see the manual section <em>Dependencies between QVD elements</em>.</p></div>
<div class="paragraph"><p>Regarding this we will follow the next steps, in an order that can be slightly altered as long as we respect the dependencies.</p></div>
<div class="olist arabic"><ol class="arabic">
<li>
<p>
<strong>Node creation</strong>
</p>
</li>
<li>
<p>
<strong>OSF creation</strong>
</p>
</li>
<li>
<p>
<strong>Disk image creation</strong>
</p>
</li>
<li>
<p>
<strong>User creation</strong>
</p>
</li>
<li>
<p>
<strong>Virtual Machine creation</strong>
</p>
</li>
</ol></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//note.png" alt="Note">
</td>
<td class="content">The sections used in this chapter describe in detail the section <em>Platform</em> in the guide <em>WAT step by step</em>.</td>
</tr></table>
</div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//warning.png" alt="Warning">
</td>
<td class="content">The administrator account we use in WAT to carry out the next actions must have the required permissions. If there are any permissions lacking, some options or sections might become unavailable.</td>
</tr></table>
</div>
<div class="sect2">
<h3 id="_creation_of_a_node">2.1. Creation of a node</h3>
<div class="paragraph"><p>A node in WAT corresponds to a <em>QVD server</em>, so we will need a running QVD server correctly set up.</p></div>
<div class="paragraph"><p>It must be <em>accessible</em>, and we must <em>know its IP address</em>.</p></div>
<div class="paragraph"><p>To create a node we will follow the next steps:</p></div>
<div class="ulist"><ul>
<li>
<p>
We will go to <em>Platform setion</em>. This is the active section by default after logging in.
</p>
</li>
<li>
<p>
We access the <em>menu Nodes section</em>.
</p>
</li>
<li>
<p>
We click on the button <em>New node</em>.
</p>
</li>
<li>
<p>
We fill in the creation form.
</p>
<div class="ulist"><ul>
<li>
<p>
Name the node.
</p>
</li>
<li>
<p>
We associate <em>IP address</em> of the QVD server.
</p>
</li>
<li>
<p>
Optionally we could create <em>other properties</em> in the node for internal management of our scripts or simply for adding information.
</p>
</li>
</ul></div>
</li>
<li>
<p>
We will check the node has been correctly created when we see it appears in the list view.
</p>
</li>
<li>
<p>
Once created, we must check the node is in the state <em>running</em>.
</p>
<div class="ulist"><ul>
<li>
<p>
<em>From the list view</em>: A play icon will appear in the information column.
</p>
</li>
<li>
<p>
<em>From the detail view</em> clicking on the node name on the list view: Among its atributes appears the node state.
</p>
</li>
</ul></div>
</li>
</ul></div>
</div>
<div class="sect2">
<h3 id="_creation_of_an_osf">2.2. Creation of an OSF</h3>
<div class="paragraph"><p>OSFs are the way to group the disk images in QVD.</p></div>
<div class="paragraph"><p>Because of this, at least we will need one to create a disk image.</p></div>
<div class="paragraph"><p>Apart from grouping them they define certain parameters when executing, like memory or the user storage.</p></div>
<div class="paragraph"><p>To create an OSF we will follow the next steps:</p></div>
<div class="ulist"><ul>
<li>
<p>
Go to <em>Platform section</em>. This is the active section by default after logging in
</p>
</li>
<li>
<p>
Access to <em>OS Flavours section in the menu</em>.
</p>
</li>
<li>
<p>
Click on the button <em>New OS Flavour</em>.
</p>
</li>
<li>
<p>
Fill in the creation form.
</p>
<div class="ulist"><ul>
<li>
<p>
Assign a <em>name</em> to the OSF.
</p>
</li>
<li>
<p>
We will set the <em>memory</em> the associated images with this OSF will have available. If we leave this blank, by default it will get a value of 256 MB.
</p>
</li>
<li>
<p>
We will set <em>a limit for the user storage</em> for the associated images of this OSF. If we do not want to have this feature available we just need to leave this value as 0.
</p>
</li>
<li>
<p>
Optionaly we could create <em>other properties</em> in the OSF for our internal management of scripts or simply to add information.
</p>
</li>
</ul></div>
</li>
<li>
<p>
We will check the OSF has been created correctly if we see it appears on the list view.
</p>
</li>
</ul></div>
</div>
<div class="sect2">
<h3 id="_creation_of_a_disk_image">2.3. Creation of a disk image</h3>
<div class="paragraph"><p>The creation of the disk images that will be loaded by QVD can be performed in <strong>3 ways</strong>:</p></div>
<div class="ulist"><ul>
<li>
<p>
By selecting an image among the ones available in the <strong><em>staging</em> directory</strong> in the server.
</p>
</li>
<li>
<p>
By uploading an image from <strong>our computer</strong>.
</p>
</li>
<li>
<p>
By providing an image <strong>URL</strong> which will be downloaded and hosted on the server.
</p>
</li>
</ul></div>
<div class="paragraph"><p>In this case, <strong>we choose uploading the image from our computer</strong>.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
The image creation can be performed from <em>2 sections</em>
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="ulist"><ul>
<li>
<p>
From the section <em>Disk Image</em>.
</p>
<div class="ulist"><ul>
<li>
<p>
Access the <em>Disk Image menu section</em> from <em>Platform section</em>.
</p>
</li>
<li>
<p>
Click on <em>New disk image</em>.
</p>
</li>
</ul></div>
</li>
<li>
<p>
From section <em>OS Flavours</em>
</p>
<div class="ulist"><ul>
<li>
<p>
We access the <em>menu OS Flavours section</em> from <em>Platform section</em>.
</p>
</li>
<li>
<p>
Choose the OSF we want to associate with the new disk image and click on its name to access its detail view.
</p>
</li>
<li>
<p>
On the right part of the view, we find a box with all the associated disk images with the OS Flavour. We click on the button New Disk image placed in this box.
</p>
</li>
</ul></div>
</li>
</ul></div>
</div></div>
</dd>
<dt class="hdlist1">
Fill in the creation form
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="ulist"><ul>
<li>
<p>
Select <em>the disk image</em> browsing our file system.
</p>
</li>
<li>
<p>
We can define an <em>image version</em>. If we leave this field blank an automatic version will be generated based on the creation date (E.g.: 2015-05-03-000).
</p>
</li>
<li>
<p>
We select the <em>OSF</em> we want to associate the image with.
</p>
</li>
<li>
<p>
We can define the image as <em>default image</em> of the OSF. If it is the first image created in an OSF, this field will be irrelevant, since if there is only one image in an OSF, this will be the default image.
</p>
</li>
<li>
<p>
Optionally, we can assign <em>tags</em> to the image to be able to identify it from the virtual machines manager. These tags are unique per OSF. If we assign a tag that already has another image in the same OSF, the tag will be moved to another image, avoiding duplicity.
</p>
</li>
<li>
<p>
Optionally, we could create <em>other properties</em> for the image for internal management of our scripts or simply to add information.
</p>
</li>
</ul></div>
</div></div>
</dd>
<dt class="hdlist1">
We will check if the image has been correctly created
</dt>
<dd>
<div class="openblock">
<div class="content">
</div></div>
</dd>
</dl></div>
</div>
<div class="sect2">
<h3 id="_user_creation">2.4. User creation</h3>
<div class="paragraph"><p>Every virtual machine will be linked to a user, therefore we will need to have, at least, one in the system.</p></div>
<div class="paragraph"><p>To create a user we will follow the next steps:</p></div>
<div class="ulist"><ul>
<li>
<p>
We go to <em>Platform section</em>. This is the active section by default after logging in.
</p>
</li>
<li>
<p>
Access the <em>Menu Users section</em>
</p>
</li>
<li>
<p>
Click on the button <em>New User</em>.
</p>
</li>
<li>
<p>
Fill in the creation form.
</p>
<div class="ulist"><ul>
<li>
<p>
Assign a <em>name</em> to the user. This name will be unique in the system.
</p>
</li>
<li>
<p>
We assign a password. The user will use this password to connect to his virtual machines.
</p>
</li>
<li>
<p>
Optionally we could create <em>other properties</em> for the OSF for internal management of our scripts or simply to add information.
</p>
</li>
</ul></div>
</li>
<li>
<p>
We can check that the user has been correctly created if we see it appears on the list view.
</p>
</li>
</ul></div>
</div>
<div class="sect2">
<h3 id="_creation_of_a_virtual_machine">2.5. Creation of a virtual machine</h3>
<div class="paragraph"><p>Having created at least one user and one disk image, it is possible to create a virtual machine.</p></div>
<div class="paragraph"><p>The creation of virtual machines can be carried out from two screens:</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
From the list view of virtual machines
</dt>
<dd>
<p>
*We go to <em>Platform section</em>. This is the active section by default after logging in.
</p>
<div class="ulist"><ul>
<li>
<p>
Access the <em>section Menu of Virtual Machines</em>
</p>
</li>
<li>
<p>
Click on the button <em>New Virtual Machine</em>.
</p>
</li>
<li>
<p>
Fill in the creation form.
</p>
<div class="ulist"><ul>
<li>
<p>
Assign a <em>name</em> to the virtual machine.
</p>
</li>
<li>
<p>
Choose the <em>user</em> we want to link to this virtual machine. This data can not be modified later on.
**Choose the <em>OSF</em> we wish. This data can not be modified later on.
</p>
</li>
<li>
<p>
Choose the <em>image tag</em> we want to use on the virtual machine. In this control we can find the versions and tags of the images belonging to the selected OSF in the previous control of the form, as well as the special tags <em>head</em> and <em>default</em> that will be used to use the latest created image in the OSF and set as default image in the OSF respectively.
</p>
</li>
</ul></div>
</li>
</ul></div>
</dd>
<dt class="hdlist1">
From the user detail view
</dt>
<dd>
<div class="ulist"><ul>
<li>
<p>
Go to <em>Platform section</em>. This is the active section by default after logging in.
</p>
</li>
<li>
<p>
Access the <em>section Menu Users</em>.
</p>
</li>
<li>
<p>
Choose the user we want to link to the new virtual machine and click on its name to access its detail view.
</p>
</li>
<li>
<p>
On the right part of the view, we find a box with associated virtual machines with the user. We click on the button <em>New virtual machine</em> placed in this box.
</p>
</li>
<li>
<p>
Fill in the creation form.
</p>
<div class="ulist"><ul>
<li>
<p>
Assign a <em>name</em> to the virtual machine
</p>
</li>
<li>
<p>
Choose the <em>OSF</em> we wish. This data can not be modified later on.
</p>
</li>
<li>
<p>
Choose the <em>image tag</em> we want to use on the virtual machine. In this control we can find the versions and tags of the images belonging to the selected OSF in the previous control of the form, as well as the special tags <em>head</em> and <em>default</em> that will be used to use the latest created image in the OSF and set as default image in the OSF respectively.
</p>
</li>
<li>
<p>
Optionally we could create <em>other properties</em> in the Virtual machine for internal management of our scripts or simply to add information.
</p>
</li>
</ul></div>
</li>
<li>
<p>
We can check the virtual machine has been correctly created if see it appears in the box of virtual machines associated to this user.
</p>
</li>
</ul></div>
</dd>
</dl></div>
</div>
<div class="sect2">
<h3 id="_start_of_a_virtual_machine">2.6. Start of a virtual machine</h3>
<div class="paragraph"><p>Once created the virtual machine, we need to start it, so that the user can connect to it.</p></div>
<div class="paragraph"><p>A virtual machine can start from two screens:</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
From the detail view of the virtual machine
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>The steps are:</p></div>
<div class="ulist"><ul>
<li>
<p>
Go to <em>Platform section</em>. This is the active section by default after logging in.
</p>
</li>
<li>
<p>
Access the <em>section Menu virtual machines</em>.
</p>
</li>
<li>
<p>
Choose the virtual machine we want to start and click on its name to access its detail view.
</p>
</li>
<li>
<p>
On the right part we locate the running state panel.
</p>
</li>
<li>
<p>
Click on the virtual machine starting button on the right of the running state panel.
</p>
</li>
</ul></div>
<div class="paragraph"><p>We can see how the running state panel changes from <em>Stopped</em> to <em>Starting</em>.</p></div>
<div class="paragraph"><p>This process <em>may take</em> some time to complete, <em>specially if it is the first time</em> we start a machine.</p></div>
<div class="paragraph"><p>When the process is over, the running state panel will change showing the machine is runnning and the Node name where it is running. Moreover, the running parameters will be accessible. These values, like the IP address or the disk image in use, won&#8217;t change while the machine is executing even if said values are edited in the virtual machine.</p></div>
</div></div>
</dd>
<dt class="hdlist1">
From the virtual machine list view
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>This way allows to start several virtual machines at the same time, although in this case we will use it as a comfortable way to start a single virtual machine.</p></div>
<div class="paragraph"><p>The steps are:</p></div>
<div class="ulist"><ul>
<li>
<p>
Go to <em>Platform section</em>. This is the active section by default after logging in.
</p>
</li>
<li>
<p>
Access the <em>section Menu virtual machines</em>.
</p>
</li>
<li>
<p>
Select the virtual machine we want to start by checking the corresponding checkbox from the first column in the list.
</p>
</li>
<li>
<p>
Under the list of virtual machines, in the actions control over the checked elements, we choose <em>start</em>.
</p>
</li>
<li>
<p>
We click on the button <em>Apply</em>.
</p>
</li>
</ul></div>
<div class="paragraph"><p>We can see how, in the information column of the checked element, the icon changes from stop to an animated icon that indicates us that the machine is in starting process. If the column with the node associated to the machine is visible, it will change in this moment showing the node where the machine is starting.</p></div>
<div class="paragraph"><p>This process <em>may take some time</em> to complete, <em>specially if it is the first time</em> we start a machine.</p></div>
<div class="paragraph"><p>When the process is over, the icon will change to a play icon, that will indicate that the virtual machine has started.</p></div>
<div class="paragraph"><p>If instead of the play icon, the stop button appears again, it means there has been some problem with the machine starting and it was stopped. This may happen because of multiple reasons, and we will need to look into the QVD server what happened.</p></div>
</div></div>
</dd>
</dl></div>
</div>
<div class="sect2">
<h3 id="_user_connection">2.7. User connection</h3>
<div class="paragraph"><p>Once the virtual machine is started, the user will be able to connect to it.</p></div>
<div class="paragraph"><p>In order to do so the user will use the QVD client and will connect using the server address and the user/password which were assigned from the WAT.</p></div>
<div class="paragraph"><p>When the client is connected, this is shown in the list views and virtual machines detail.</p></div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_image_update">3. Image update</h2>
<div class="sectionbody">
<div class="paragraph"><p>We will see how to update an image used by a virtual machine.</p></div>
<div class="paragraph"><p>The process consists of creating an image with the newest version we want to use and replace the assigned image to the virtual machine by the new one.</p></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//note.png" alt="Note">
</td>
<td class="content">The sections used in this part are described in detail in the <em>Platform</em> section in the guide <em>WAT step by step</em>.</td>
</tr></table>
</div>
<div class="sect2">
<h3 id="_creation_of_a_new_disk_image">3.1. Creation of a new disk image</h3>
<div class="paragraph"><p>We must create a new disk image in WAT with the image version we want to use to replace the current one.</p></div>
</div>
<div class="sect2">
<h3 id="_new_image_assignment">3.2. New image assignment</h3>
<div class="paragraph"><p>There are several ways to manage the images associated to the virtual machines.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Having assigned to the virtual machine the tag <em>head</em>
</dt>
<dd>
<p>
If the virtual machine has assigned the tag <em>head</em> it will always have associated the latest image created of the OSF, this means that just creating it will be enough.
</p>
</dd>
</dl></div>
<div class="paragraph"><p>If the virtual machine has the tag <em>default</em> assigned, it will have associated the image marked as default image in the OSF. We must mark the image we want as default image if we want this virtual machine to be associated to the new image.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Having assigned to the virtual machine other tag
</dt>
<dd>
<p>
If in the virtual machine we have an identifying tag of the image being executed, we must change this tag to select the new image to replace the current one.
</p>
</dd>
</dl></div>
<div class="sect3">
<h4 id="_change_of_tag_in_the_virtual_machine">3.2.1. Change of tag in the virtual machine</h4>
<div class="paragraph"><p>To change the associated tag of a virtual machine we need to follow the next steps:</p></div>
<div class="ulist"><ul>
<li>
<p>
Go to <em>Platform section</em>. This is the active section by default after logging in.
</p>
</li>
<li>
<p>
Access to the <em>section of Menu Virtual Machines</em>.
</p>
</li>
<li>
<p>
Choose the virtual machine we want to edit and click on its name to access its detail view.
</p>
</li>
<li>
<p>
In the detail view, on the right of the virtual machine&#8217;s name, among the action buttons, click on the <em>Edition button</em>.
</p>
</li>
<li>
<p>
In the edition form we change the image tag and select the version of the new disk image created or any of its tags.
</p>
</li>
<li>
<p>
Click on <em>Update</em>.
</p>
</li>
</ul></div>
<div class="paragraph"><p>To check the change has been made effective, we can see that in the attributes of the virtual machine appears the image tag we have selected and the correct disk image. It must come from the last one we have created.</p></div>
<div class="paragraph"><p>If the machine is running, we can see the execution parameters in the executing state panel and check that the old image is still appearing, since <em>the image change can not be done while the virtual machine is working, we will need to restart it</em>.</p></div>
</div>
<div class="sect3">
<h4 id="_change_of_default_image">3.2.2. Change of default image</h4>
<div class="paragraph"><p>An image can be set as default image in different screens.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
From the image detail view
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="ulist"><ul>
<li>
<p>
Go to <em>Platform section</em>. This is the active section by default after logging in
</p>
</li>
<li>
<p>
Access to the <em>section Menu disk images</em>.
</p>
</li>
<li>
<p>
Choose the image we want to set as default image and click on the name to access its detail view.
</p>
</li>
<li>
<p>
In the detail view, on the right of the image name, among the action buttons, we click on the <em>Edition button</em>.
</p>
</li>
<li>
<p>
In the edition form we check the verification box <em>by default</em>.
</p>
</li>
<li>
<p>
Click on <em>Update</em>.
</p>
</li>
</ul></div>
<div class="paragraph"><p>To check if the change has been made effective, we can check if among the image attributes appears the attribute “By default” letting us know this is the default image of its OSF.</p></div>
<div class="paragraph"><p>If now we go to the virtual machine detail view, we see that, among its attributes, the disk image we just edited appears.</p></div>
<div class="paragraph"><p>If the machine is running, as we previously saw, the execution parameters will still show the previous image until we restart it.</p></div>
</div></div>
</dd>
<dt class="hdlist1">
From the OSF detail view
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>*Go to <em>Platform section</em>. This is the active section by default after logging in.
* Access the <em>section Menu OS Flavours</em>.
* Choose the OSF belonging to the image we want to set as default image and click on the name to access its detail view.
* On the right of the OSF detail view there is a box with the associated images of the OSF. One of the columns on this list contains verification boxes to set an image as a default image. Click on the verification box of the image.</p></div>
<div class="paragraph"><p>To check if the change has been made effective, we observe that in the information column of the disk image list has changed the image that contains the icon that indicates the default image.</p></div>
<div class="paragraph"><p>If now we go to the virtual machine detail view, we see in its attributes that the disk image we just created is displayed.</p></div>
<div class="paragraph"><p>If the machine is running, as we previously saw, the executing parameters will still show the previous image until we restart it.</p></div>
</div></div>
</dd>
</dl></div>
</div>
</div>
<div class="sect2">
<h3 id="_restarting_virtual_machine">3.3. Restarting virtual machine</h3>
<div class="paragraph"><p>To make the image change effective, we need to stop and restart the machine.</p></div>
<div class="paragraph"><p>The stop of a virtual machine is performed the same way we do when we start it. We can see this process in detail in the section <em>Start of a virtual machine</em> in the manual.</p></div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_block_situations">4. Block situations</h2>
<div class="sectionbody">
<div class="paragraph"><p>There are different situations in which because of a configuration or an oversight, we can miss some features. We will call this a block situation.</p></div>
<div class="paragraph"><p>We will see some of the situations we may find, since there might be more, and how to solve them.</p></div>
<div class="openblock">
<div class="content">
<div class="ulist"><ul>
<li>
<p>
Deleting the only administrator since we could not manage the WAT because in order to create an administrator we need another administrator.
</p>
</li>
<li>
<p>
Modifying permissions such way that there are no administrators left to manage the permissions.
</p>
</li>
<li>
<p>
Forgetting the only administrator password that can manage permissions.
</p>
</li>
</ul></div>
</div></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Solution
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>To recover the missing features we can access the WAT in a special way. The use of this mode can be found in the Recovering mode Guide.</p></div>
</div></div>
</dd>
</dl></div>
</div>
</div>
<div class="sect1">
<h2 id="_recovering_mode">5. Recovering Mode</h2>
<div class="sectionbody">
<div class="paragraph"><p>Due to some configuration or permissions change, or due to forgetting a password, we can find ourselves lacking some features.</p></div>
<div class="paragraph"><p>This situation will appear when we have no administrator allowed to manage permissions, because otherwise, we could recover it.</p></div>
<div class="paragraph"><p>To restore the missing features, the WAT has a special recovering administrator. Its credentials are:</p></div>
<div class="literalblock">
<div class="content monospaced">
<pre>User: batman
Password: (Consult the support team)</pre>
</div></div>
<div class="paragraph"><p>This administrator has the following characteristics:</p></div>
<div class="ulist"><ul>
<li>
<p>
It does not appear on the system administrators list.
</p>
</li>
<li>
<p>
It can not be shown or altered as the other administrators.
</p>
</li>
<li>
<p>
It has default permissions that can not be modified.
</p>
<div class="ulist"><ul>
<li>
<p>
WAT management: Configuration, Administrators, Roles.
</p>
</li>
<li>
<p>
QVD management: Configuration.
</p>
</li>
</ul></div>
</li>
</ul></div>
<div class="paragraph"><p>This way, when we face a block situation, we can log in with the recovering administrator and solve it, for example, with the next actions.</p></div>
<div class="ulist"><ul>
<li>
<p>
Change a forgotten password
</p>
</li>
<li>
<p>
Set lost permissions to an administrator
</p>
</li>
<li>
<p>
Create an administrator we might have deleted
</p>
</li>
<li>
<p>
&#8230;
</p>
</li>
</ul></div>
</div>
</div>
<div class="sect1">
<h2 id="_managing_administrators_and_permissions">6. Managing Administrators and Permissions</h2>
<div class="sectionbody">
<div class="paragraph"><p>The administrators and permissions management is framed in the <strong>WAT management</strong> general section.</p></div>
<div class="paragraph"><p>The two useful sections for this management are:</p></div>
<div class="ulist"><ul>
<li>
<p>
<strong>Administrators</strong>: Creation/Deletion of administrators as well as the permissions they have.
</p>
</li>
<li>
<p>
<strong>Roles</strong>: Roles management.
</p>
</li>
</ul></div>
<div class="paragraph"><p>QVD has by default some <strong>predetermined roles</strong> that can be useful if we do not need very specific permissions.</p></div>
<div class="sect2">
<h3 id="_administrators_management">6.1. Administrators management</h3>
<div class="paragraph"><p>The action of creating an administrator will allow us to assign it a user name, a password, a description, the language in which the WAT will be shown to him and the roles which give to him permission to view and do different things. To give it access to the WAT it will be necessary to assign at least one role.</p></div>
<div class="paragraph"><p>The process will be:</p></div>
<div class="ulist"><ul>
<li>
<p>
<strong>Create an administrator with the button “New administrator”</strong> from the list view of administrators. Choose a simple password so that it is easy for the administrator to log in, although we will warn them that they should change it later on for a personal password.
</p>
</li>
<li>
<p>
<strong>After creation</strong>, the administrator will appear on the list. On the information column of the just created administrator will appear an icon that will indicate us the assigned roles or a warning icon if it has no assigned role.
<strong>Click on the name</strong> to access the detail view for a deeper configuration.
</p>
</li>
<li>
<p>
In the detail view we find a list with the assigned roles. We will have as support an ACLs tree that has assigned the administrator at any moment. This tree has two modes that we will analyse in the roles management.
</p>
</li>
</ul></div>
<div class="paragraph"><p>Watching how appear/dissapear ACLs on the tree when we assign/unassign roles, we will see exactly what licenses we are giving to the administrator.</p></div>
<div class="paragraph"><p>For our first administrators we can use the available default roles in the system.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Root
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Role with all the possible system ACLs. Or what is the same, total reading control, update, operation, creation and deletion on each of the elements. This role is associated to the “admin” user created by default in WAT.</p></div>
</div></div>
</dd>
<dt class="hdlist1">
Operator L1
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Role with all the disk images <strong>reading ACLs</strong>, OSFs, Users and Virtual machines.</p></div>
</div></div>
</dd>
<dt class="hdlist1">
Operator L2
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Role with the ACLs of the Operator L1 and in addition, the operation ACLs: Block/Unblock elements, Start/Stop virtual machines, Disconnect users&#8230;</p></div>
</div></div>
</dd>
<dt class="hdlist1">
Operator L3
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Role with Operator L2 ACLs and in addition the creation, update and deletion ACLs on the QVD elements, and Node administration ACLs</p></div>
</div></div>
</dd>
</dl></div>
<div class="paragraph"><p>When we find the need to create administrators with more specific permissions, it will be necessary to go to Roles Management.</p></div>
</div>
<div class="sect2">
<h3 id="_roles_management">6.2. Roles management</h3>
<div class="paragraph"><p>In the search for administrators with customized permissions, we will create the roles we need. To make our work easier, a good strategy will be creating reusable roles, seeking they have the common ACLs we want for an administration group.</p></div>
<div class="paragraph"><p>As with the administrators, when creating a role, we can assign it ACLs in the creation process or create it empty, in which case we will have to edit it to assign it ACLs.</p></div>
<div class="paragraph"><p>The process will be:</p></div>
<div class="ulist"><ul>
<li>
<p>
<strong>Create the role with “New role” button</strong> from the roles list view. We will choose the name containing some relationship with the permissions it will have to make it easily understandable in the future.
</p>
<div class="openblock">
<div class="content">
<div class="literalblock">
<div class="content monospaced">
<pre>For example: Basic users provider</pre>
</div></div>
</div></div>
</li>
<li>
<p>
<strong>After the creation</strong>, the role will appear on the list. In the ACLs report column and inherited roles from each role, a 0 will be displayed. <strong>We will click on the name</strong> to access the detail view.
</p>
</li>
<li>
<p>
On the detail view we have <strong>two available tools</strong>
</p>
<div class="openblock">
<div class="content">
<div class="ulist"><ul>
<li>
<p>
<strong>ACLs inheritance</strong>: ACLs groups will be available to inherit.
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>To make the tedious work of assigning ACLs to a role easier, we can create inheritance links between the ACLs groups</p></div>
<div class="paragraph"><p>There are two types of ACLs groups from which we can inherit:</p></div>
<div class="ulist"><ul>
<li>
<p>
<strong>Roles</strong>: They will be every WAT roles, set by default or that have been created afterwards.
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>They are the normal roles that <strong>are shown in the roles list</strong> and apart from being available to inherit from them, they can be assigned to administrators.</p></div>
<div class="paragraph"><p>There is a <strong>protection against infinite inheritance loops</strong> with which <em>a role A can not inherit from a role B if role B is already inheriting from role A</em>.</p></div>
</div></div>
</li>
<li>
<p>
<strong>Templates</strong>: The templates are ACLs groups whose only objective is to be inherited by the roles. <strong>Its use is recommended</strong> for maintenance purposes.
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>The templates are descriptive of the ACLs they contain, normally making reference to what elements affect and how they affect them.</p></div>
<div class="literalblock">
<div class="content monospaced">
<pre>For example: Users Creator, Images Operator, Vms Manager, Roles Eraser...</pre>
</div></div>
<div class="paragraph"><p>In <strong>future WAT updates</strong> <strong>new ACLs</strong> might appear. To avoid having to re-configure our administrators ACLs after an update, <strong>we recommend using the templates inheritance</strong> to configure our roles. These roles will be updated with the WAT containing the new ACLs in a coherent way with its use.</p></div>
<div class="literalblock">
<div class="content monospaced">
<pre>For example: if we add a new field in the users view, the ACL that allows its display will be added to the internal role Users Reader. The roles that inherit this internal role, will be updated and will automatically have said new access.</pre>
</div></div>
</div></div>
</li>
</ul></div>
<div class="paragraph"><p>When we inherit a new role or template, we will see how the ACLs tree changes, activating the new ACLs, giving use guide about how close we are to the wished ACLs as we configure the role.</p></div>
<div class="paragraph"><p>One advantage of the inheritance is that if in the future <strong>a role&#8217;s ACLs change</strong>, every role inheriting it will be changed along with it. That is why we must use this technique carefully.</p></div>
<div class="paragraph"><p>To know the roles and templates that a QVD installation includes, see user guide: <em>ACLs Reference Templates and Roles</em>.</p></div>
</div></div>
</li>
<li>
<p>
<strong>ACLs tree</strong>: The ACLs system will be displayed in the form of a tree with checkboxes.
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>We will check those ACLs we want the role to contain, and the same way we will uncheck the ones we want it not to contain, no matter if they were added manually or come from a role or template inheritance.</p></div>
<div class="paragraph"><p>The branches also contain a checkbox to select/unselect whole branches with just one click</p></div>
<div class="paragraph"><p>Along with each ACL coming from an inherited role or template, an icon will appear. When moving the mouse over it, we will see information about which role or template it comes from.</p></div>
<div class="paragraph"><p><strong>An ACL can come from different roles or templates</strong> if these have ACLs in common. This has no importance apart from that if we stop inheriting from a role or template that provides us these ACLs we will not be taking out the ACL, because it would still be inheriting from the others. However, this ACL, like the rest, could be deleted manually unchecking it from the ACLs tree no matter how many roles or templates it is coming from.</p></div>
<div class="paragraph"><p>According to our preferences, we can represent the tree in <strong>two different sortings</strong>:</p></div>
<div class="ulist"><ul>
<li>
<p>
<strong>By sections</strong>: If we wish to group the ACLs depending on the WAT sections affecting to: users, virtual machines, nodes, administrators&#8230;
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Useful if we want to create a role that gives permissions with <strong>much depth but little extent</strong>.</p></div>
<div class="literalblock">
<div class="content monospaced">
<pre>For example, total permissions in users and virtual machines.</pre>
</div></div>
</div></div>
</li>
<li>
<p>
<strong>By actions</strong>: If it is easier for us to group the ACLs depending on the action they enable: create, delete, access to the main display, filter&#8230;
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Useful if we want to create a role that gives permissions with <strong>little depth and much extent</strong>.</p></div>
<div class="literalblock">
<div class="content monospaced">
<pre>For example, total permissions in users and virtual machines.</pre>
</div></div>
</div></div>
</li>
</ul></div>
</div></div>
</li>
</ul></div>
</div></div>
</li>
</ul></div>
<div class="paragraph"><p>We must be carefull when managing administrators and permissions since if we perform an incorrect action, we could lose features and even the WAT access. See section <em>Block situations</em> in the manual.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Update of the current administrator
</dt>
<dd>
<p>
The ACLs are obtained at the moment of the login, so, if we decide to change ACLs in the current administrator, specially the ones related to sections display, it will be necessary to <strong>refresh the browser or log in again</strong> to have the changes effective.
</p>
</dd>
</dl></div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_acls_reference_templates_and_roles">7. ACLs reference, Templates and Roles</h2>
<div class="sectionbody">
<div class="paragraph"><p>In the following reference list the different system ACLs are described as well as the Templates and the Default Roles</p></div>
<div class="sect2">
<h3 id="_acls_reference">7.1. ACLs reference</h3>
<div class="paragraph"><p>List of the ACLs sorted out by the different object they affect. Each category contains a table with a short description, the internal code and a description in detail for each of the ACLs.</p></div>
<div class="sect3">
<h4 id="_users_acls">7.1.1. Users' ACLs</h4>
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
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Create users</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.create.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Creation of users including initial settings for name and password.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Set properties on users in creation</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.create.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Setting of custom properties in the creation process of users.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Delete users (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.delete-massive.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Deletion of users massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Delete users</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.delete.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Deletion of users one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter users by blocking status</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.filter.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of users list by disk image&#8217;s blocking status</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter users by creator</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.filter.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of users list by administrator who created it</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter users by creation date</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.filter.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of users list by date when it was created</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter users by name</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.filter.name</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of users list by user&#8217;s name.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter users by properties</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.filter.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of users list by desired custom property.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Access to user&#8217;s details view</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see-details.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">This ACL grants the access to the details view. The minimum data on it is name</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Access to user&#8217;s main section</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see-main.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">This ACL grants the access to the list. The minimum data on it is name</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See user&#8217;s blocking state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Blocking state (blocked/unblocked) of users</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See user&#8217;s creator</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">WAT administrator who created a user.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See user&#8217;s creation date</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Datetime when a user was created</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See user&#8217;s description</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The description of the users.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See user&#8217;s ID</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.id</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The database identiefier of the users. Useful to make calls from CLI.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See user&#8217;s properties</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The custom properties of the users.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See user&#8217;s virtual machines</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.vm-list</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">See the virtual machines of one user in his details view. This view will contain: name, state, block and expire information of each vm</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See user&#8217;s virtual machines' blocking state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.vm-list-block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Blocking info of the virtual machines shown in user details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See user&#8217;s virtual machines' expiration</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.vm-list-expiration</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Expiration info of the virtual machines shown in user details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See user&#8217;s virtual machines' running state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.vm-list-state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">State (stopped/started) of the virtual machines shown in user details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See user&#8217;s virtual machines' user state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.vm-list-user-state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">User state (connected/disconnected)) of the virtual machines shown in user details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See number of user&#8217;s virtual machines</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.vms-info</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total and connected virtual machines of this user</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See statistics of number of users</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.stats.blocked</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total of blocked users in current tenant or all system for superadministrators.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See statistics of number of connected users</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.stats.connected-users</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total of users connected in at least one virtual machine.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See statistics of number of blocked users</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.stats.summary</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total of users in current tenant or all system for superadministrators.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Block-Unblock users (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.update-massive.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the blocking state (blocked/unblocked) of users massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update user&#8217;s description (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.update-massive.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the description of users massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update properties when update users (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.update-massive.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update properties in user&#8217;s massive update process.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Block-Unblock users</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.update.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the blocking state (blocked/unblocked) of users one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update user&#8217;s description</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.update.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the description of users one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update user&#8217;s password</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.update.password</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the password of users.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update properties when update users</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.update.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update properties in user&#8217;s one by one update process.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="_virtual_machines_acls">7.1.2. Virtual Machines' ACLs</h4>
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
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Create virtual machines</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.create.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Creation of virtual machines including initial setting for name, user and OS flavour.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Set tag in virtual macine&#8217;s creation</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.create.di-tag</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Setting of disk image&#8217;s tag in the creation process of virtual machines. Without this ACL, the system will set <em>default</em> automatically.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Set properties in virtual machine&#8217;s creation</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.create.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Setting of custom properties in the creation process of virtual machines.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Delete virtual machines (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.delete-massive.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Deletion of virtual machines massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Delete virtual machines</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.delete.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Deletion of virtual machines one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter virtual machines by creator</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.filter.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of virtual machines list by administrator who created it</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter virtual machines by creation date</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.filter.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of virtual machines list by date when it was created</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter virtual machines by expiration date</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.filter.expiration-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of virtual machines list by date when it will expire. This is refered to the hard expiration.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter virtual machines by host</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.filter.host</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of virtual machines list by host where the virtual machines are running.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter virtual machines by name</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.filter.name</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of virtual machines list by virtual machine&#8217;s name</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter virtual machines by OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.filter.osf</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of virtual machines list by OS flavour assigned to the virtual machine.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter virtual machines by properties</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.filter.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of virtual machines list by desired custom property.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter virtual machines by running state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.filter.state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of virtual machines list by virtual machine&#8217;s state (stopped/started)</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter virtual machines by user</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.filter.user</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of virtual machines list by user who the virtual machines belong.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Access to virtual machine&#8217;s details view</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see-details.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">This ACL grants the access to the details view. The minimum data on it is name</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Access to virtual machine&#8217;s main section</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see-main.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">This ACL grants the access to the list. The minimum data on it is disk_image</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s blocking status</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Blocking state (blocked/unblocked) of virtual machines</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s creator</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">WAT administrator who created a virtual machine.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s creation date</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Datetime when a virtual machine was created</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s description</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The description of virtual machines.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s disk image</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.di</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Disk images used by each virtual machine</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s disk image&#8217;s tag</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.di-tag</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Disk image&#8217;s tag assigned in each virtual machine to define which disk image will be used.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s disk image&#8217;s version</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.di-version</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Disk image&#8217;s version used by each virtual machine</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s Expiration</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.expiration</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Expiration info of the virtual machines.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s Node</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.host</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Host where each virtual machines are running</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s ID</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.id</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The database identiefier of the virtual machines. Useful to make calls from CLI.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s IP address</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.ip</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Current IP addres of the virtual machines.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s MAC address</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.mac</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">MAC address of the virtual machines.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s IP address for next boot</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.next-boot-ip</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">IP address that will be assigned in the next boot of the virtual machines.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.osf</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">OS flavours assigned to each virtual machine.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s Serial port</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.port-serial</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Serial port assigned to a running virtual machine.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s SSH port</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.port-ssh</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">SSH port assigned to a running virtual machine.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s VNC port</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.port-vnc</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">VNC port assigned to a running virtual machine.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s properties</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The custom properties of the virtual machines.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The status of the virtual machines (stopped/started)</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s user</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.user</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The user owner of the virtual machines.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See virtual machine&#8217;s user&#8217;s connection state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.user-state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The user state of a virtual machine (connected/disconnected)</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See statistics of number of blocked virtual machines</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.stats.blocked</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total of blocked virtual machines in current tenant or all system for superadministrators.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See statistics of virtual machines close to expire</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.stats.close-to-expire</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Info of the virutal machines that will be expire (hard expiration) in next 7 days.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See statistics of running virtual machines</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.stats.running-vms</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total of running virtual machines in current tenant or all system for superadministrators.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See statistics of number of virtual machines</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.stats.summary</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total of virtual machines in current tenant or all system for superadministrators.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Block-Unblock virtual machines (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update-massive.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the blocking state (blocked/unblocked) of virtual machines massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update virtual machine&#8217;s description (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update-massive.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the description of virtual machines massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update virtual machine&#8217;s tag (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update-massive.di-tag</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the disk image&#8217;s tag setted on virtual machines massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Disconnect user from virtual machine (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update-massive.disconnect-user</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Disconnect the user connected to virtual machines massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update virtual machine&#8217;s expiration (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update-massive.expiration</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the expiration date times of virtual machines massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update properties when update virtual machines (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update-massive.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update properties in virtual machines&#8217;s massive update process.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Start-Stop virtual machines (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update-massive.state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Start/Stop virtual machines massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Block-Unblock virtual machines</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the blocking state (blocked/unblocked) of virtual machines one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update virtual machine&#8217;s description</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the description of virtual machines one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update virtual machine&#8217;s tag</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update.di-tag</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the disk image&#8217;s tag setted on virtual machines one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Disconnect user from virtual machine</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update.disconnect-user</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Disconnect the user connected to virtual machines one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update virtual machine&#8217;s expiration</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update.expiration</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the expiration date times of virtual machines one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update virtual machine&#8217;s name</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update.name</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the name of virtual machines.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update properties when update virtual machines</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update properties in virtual machines&#8217;s one by one update process.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Start-Stop virtual machines</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update.state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Start/Stop virtual machines one by one.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="_nodes_acls">7.1.3. Nodes' ACLs</h4>
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
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Create nodes</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.create.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Creation of hosts including initial setting for name and address.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Set properties on nodes in creation</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.create.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Setting of custom properties in the creation process of hosts.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Delete nodes (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.delete-massive.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Deletion of hosts massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Delete nodes</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.delete.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Deletion of hosts one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter nodes by blocking status</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.filter.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of hosts list by disk image&#8217;s blocking status</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter nodes by creator</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.filter.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of hosts list by administrator who created it</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter nodes by creation date</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.filter.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of hosts list by date when it was created</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter nodes by name</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.filter.name</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of hosts list by host&#8217;s name</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter nodes by properties</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.filter.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of hosts list by desired custom property.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter nodes by running state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.filter.state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of hosts list by running state.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter nodes by virtual machines</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.filter.vm</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of hosts list by virtual machine that is running in the host.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Access to node&#8217;s details view</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see-details.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">This ACL grants the access to the details view. The minimum data on it is name</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Access to node&#8217;s main section</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see-main.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Access to hosts section (without it, it won&#8217;t appear in menu)</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See node&#8217;s IP address</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.address</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">IP address of the hosts.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See node&#8217;s blocking state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Blocking state (blocked/unblocked) of hosts</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See node&#8217;s creator</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">WAT administrator who created a host.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See node&#8217;s creation date</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Datetime when a host was created</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See node&#8217;s description</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The description of the hosts.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See node&#8217;s ID</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.id</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The database identiefier of the hosts. Useful to make calls from CLI.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See node&#8217;s properties</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The custom properties of the hosts.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See node&#8217;s running state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">State of the hosts (stopped/started)</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See node&#8217;s running virtual machines</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.vm-list</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">See the virtual machines running on one host in his details view. This view will contain: name, state, block and expire information of each vm</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See node&#8217;s running virtual machines' blocking state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.vm-list-block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Blocking info of the virtual machines shown in host details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See node&#8217;s running virtual machines' expiration</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.vm-list-expiration</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Expiration info of the virtual machines shown in host details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See node&#8217;s running virtual machines' running state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.vm-list-state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">State (stopped/started) of the virtual machines shown in host details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See node&#8217;s running virtual machines' user state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.vm-list-user-state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">User state (connected/disconnected) of the virtual machines shown in host details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See number of running vms running on nodes</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.vms-info</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Virtual machines information such as how many virtual machines are running in each host</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See statistics of number of blocked nodes</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.stats.blocked</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total of blocked hosts in current tenant or all system for superadministrators.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See statistics of running nodes</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.stats.running-hosts</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total of running hosts in current tenant or all system for superadministrators.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See statistics of number of nodes</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.stats.summary</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total of hosts in current tenant or all system for superadministrators.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See statistics of nodes with most running Vms</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.stats.top-hosts-most-vms</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Top 5 of hosts with most running virtual machines.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Block-Unblock nodes (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.update-massive.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the blocking state (blocked/unblocked) of hosts massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update node&#8217;s description (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.update-massive.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the description of the hosts massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update properties when update nodes (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.update-massive.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update properties in node&#8217;s massive update process.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Stop all virtual machines of a node (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.update-massive.stop-vms</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Stop all the virtual machines of hosts massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update node&#8217;s address</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.update.address</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the IP address of the hosts.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Block-Unblock nodes</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.update.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the blocking state (blocked/unblocked) of hosts one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update node&#8217;s description</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.update.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the description of the hosts one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update node&#8217;s name</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.update.name</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the name of the hosts.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update properties when update nodes</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.update.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update properties in node&#8217;s one by one update process.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Stop all virtual machines of a node</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.update.stop-vms</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Stop all the virtual machines of hosts one by one.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="_osfs_acls">7.1.4. OSFs' ACLs</h4>
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
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Create OS Flavours</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.create.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Creation of OS flavours including initial setting for name.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Set memory in OS Flavour&#8217;s creation</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.create.memory</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Setting of memory in the creation process of OS flavours.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Set properties in OS Flavour&#8217;s creation</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.create.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Setting of custom properties in the creation process of OS flavours.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Set user storage in OS Flavour&#8217;s creation</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.create.user-storage</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Setting of user storage in the creation process of OS flavours.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Delete OS Flavours (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.delete-massive.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Deletion of OS flavours massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Delete OS Flavours</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.delete.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Deletion of OS flavours one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter OS Flavours by creator</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.filter.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of OS flavours list by administrator who created it</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter OS Flavours by creation date</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.filter.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of OS flavours list by date when it was created</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter OS Flavours by disk image</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.filter.di</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of OS flavours list by disk image&#8217;s that belong to the OSF.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter OS Flavours by name</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.filter.name</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of OS flavours list by OSF&#8217;s name.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter OS Flavours by properties</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.filter.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of OSF flavours list by desired custom property.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter OS Flavours by virtual machine</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.filter.vm</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of OS flavours list by virtual machines assigned to the OSFs.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Access to OS Flavour&#8217;s details view</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see-details.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">This ACL grants the access to the details view. The minimum data on it is name</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Access to OS Flavour&#8217;s main section</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see-main.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">This ACL grants the access to the list. The minimum data on it is nname</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OS Flavour&#8217;s creator</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">WAT administrator who created an OS flavour.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OS Flavour&#8217;s creation date</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Datetime when an OS flavour image was created</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OS Flavour&#8217;s description</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The description of the OSFs.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OS Flavour&#8217;s disk images</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.di-list</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">See the disk images of this osf in his details view. This view will contain: name, block, tags, default, head and the feature of change which is default one</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OS Flavour&#8217;s disk blocking state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.di-list-block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Blocking info of the disk images shown in osf details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OS Flavour&#8217;s disk images' default state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.di-list-default</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">What of the Dis is the default one in osf details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Change OS Flavour&#8217;s disk images' default info</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.di-list-default-update</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Controls to change the default disk image of an osf in osf details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OS Flavour&#8217;s disk images' head info</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.di-list-head</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">What of the Dis is the head (last created) in osf details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OS Flavour&#8217;s disk images' tags</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.di-list-tags</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Tags of the disk images shown in osf details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See number of OS Flavour&#8217;s disk images</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.dis-info</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Number of disk images assigned to each OS flavours</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OS Flavour&#8217;s ID</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.id</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The database identiefier of the OS flavours. Useful to make calls from CLI.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OS Flavour&#8217;s memory</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.memory</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Amount of memory in the OS flavours</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OS Flavour&#8217;s overlay</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.overlay</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Overlay configuration of the OS flavours</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OS Flavour&#8217;s properties</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The custom properties of the OS flavours</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OS Flavour&#8217;s user storage</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.user-storage</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">User storage of the OS flavours</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OS Flavour&#8217;s virtual machines</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.vm-list</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">See the virtual machines using this osf in his details view. This view will contain: name, state, block, di tag and expire information of each vm</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OS Flavour&#8217;s virtual machines' blocking state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.vm-list-block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Blocking info of the virtual machines shown in osf details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OS Flavour&#8217;s virtual machines' expiration</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.vm-list-expiration</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Expiration info of the virtual machines shown in osf details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OS Flavour&#8217;s virtual machines' running state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.vm-list-state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">State (stopped/started) of the virtual machines shown in osf details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OS Flavour&#8217;s virtual machines' user state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.vm-list-user-state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">User state (connected/disconnected) of the virtual machines shown in osf details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See number of OS Flavour&#8217;s virtual machines</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.vms-info</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Number of virtual machines that are using a Disk image of each OS flavours</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See statistics of number of OS Flavours</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.stats.summary</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total of OS flavours in current tenant or all system for superadministrators.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update OS Flavour&#8217;s description (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.update-massive.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the description of OSF flavours massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update OS Flavour&#8217;s memory (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.update-massive.memory</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the memory of OSF flavours massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update properties when update OSFs (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.update-massive.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update properties in OSF&#8217;s massive update process.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update OS Flavour&#8217;s user storage (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.update-massive.user-storage</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the memory of OSF flavours massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update OS Flavour&#8217;s description</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.update.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the description of OSF flavours one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update OS Flavour&#8217;s memory</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.update.memory</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the memory of OSF flavours one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update OS Flavour&#8217;s name</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.update.name</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the name of OSF flavour&#8217;s.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update properties when update OSFs</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.update.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update properties in OSF&#8217;s one by one update process.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update OS Flavour&#8217;s user storage</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.update.user-storage</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the user storage of OSF flavours one by one.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="_disk_images_acls">7.1.5. Disk images' ACLs</h4>
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
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Create disk images</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.create.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Creation of hosts including initial setting for disk image and OS flavour.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Set disk images as default on disk images creation</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.create.default</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Setting of disk image as default in the creation process of disk images.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Set properties on disk images creation</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.create.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Setting of custom properties in the creation process of disk images.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Set tags on disk images creation</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.create.tags</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Setting of tags in the creation process of disk images.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Set version on disk images creation</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.create.version</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Setting of version in the creation process of disk images. Without this ACL, the system will set it automatically with a string based on the timestamp and an order digit.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Delete disk images (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.delete-massive.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Deletion of disk images massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Delete disk images</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.delete.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Deletion of disk images one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter disk images by blocking status</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.filter.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of disk images list by disk image&#8217;s blocking status</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter disk images by creator</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.filter.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of disk images list by administrator who created it</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter disk images by creation date</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.filter.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of disk images list by date when it was created</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter disk images by DI&#8217;s name</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.filter.disk-image</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of disk images list by disk image&#8217;s name</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter disk images by OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.filter.osf</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of disk images list by OS flavour</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter disk images by properties</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.filter.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of disk images list by desired custom property.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Access to disk image&#8217;s details view</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see-details.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">This ACL grants the access to the details view. The minimum data on it is disk image</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Access to disk image&#8217;s main section</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see-main.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">This ACL grants the access to the list. The minimum data on it is disk_image</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See disk image&#8217;s blocking state</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Blocking state of disk images</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See disk image&#8217;s creator</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Wat administrator who created a disk image</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See disk image&#8217;s creation date</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Datetime when a disk image was created</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OSF&#8217;s default disk image</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.default</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">If a disk image is setted as default image within the OSF where it belongs</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See disk image&#8217;s description</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The description of disk images.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See OSF&#8217;s last created disk image</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.head</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">If a disk image is the last created image within the OSF where it belongs</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See disk image&#8217;s ID</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.id</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The database identiefier of disk images. Useful to make calls from CLI.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See disk image&#8217;s OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.osf</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The OS Flavour associated to the disk images.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See disk image&#8217;s properties</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The custom properties of the disk images.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See disk image&#8217;s tags</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.tags</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The disk images tags</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See disk image&#8217;s version</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.version</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The disk images version</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See disk image&#8217;s list of virtual machines</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.vm-list</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Virtual machines using this image in his details view. This view will contain: name and tag of each vm</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See blocking state of VM&#8217;s list of DI&#8217;s</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.vm-list-block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Blocking info of the virtual machines shown in DI details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See expiration of VM&#8217;s list of DI&#8217;s</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.vm-list-expiration</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Expiration info of the virtual machines shown in DI details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See running state of VM&#8217;s list of DI&#8217;s</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.vm-list-state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">State (stop/started) of the virtual machines shown in DI details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See user state of VM&#8217;s list of DI&#8217;s</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.vm-list-user-state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">User state (connected/disconnected) of the virtual machines shown in DI details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See statistics of number of blocked disk images</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.stats.blocked</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total of blocked disk images in current tenant or all system for superadministrators.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See statistics of number of disk images</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.stats.summary</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total of disk images in current tenant or all system for superadministrators.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Block-Unblock disk images (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.update-massive.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the blocking state (blocked/unblocked) of disk images massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update disk image&#8217;s description (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.update-massive.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the description of disk images massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update properties when update disk images (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.update-massive.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update properties in disk image&#8217;s massive update process.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update disk image&#8217;s tags (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.update-massive.tags</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the tags (create and delete) of disk images massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Block-Unblock disk images</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.update.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the blocking state (blocked/unblocked) of disk images one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Set disk images as default</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.update.default</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Set as default a disk image in the OS flavour where it belongs.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update disk image&#8217;s description</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.update.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the description of disk images one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update properties when update disk images</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.update.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update properties in disk image&#8217;s one by one update process.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update disk image&#8217;s tags</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.update.tags</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the tags (create and delete) of disk images one by one.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="_administrators_acls">7.1.6. Administrators'  ACLs</h4>
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
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Create administrators</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.create.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Create WAT Administrators. It includes name and password setting</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Set language on administrator creation</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.create.language</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Setting of language in the creation process of administrators.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Delete administrators</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.delete-massive.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Deletion of WAT administrators massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Delete administrators (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.delete.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Deletion of WAT administrators one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter administrators by creator</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.filter.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of administrators list by administrator who created it</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter administrators by creation date</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.filter.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of administrators list by date when it were created</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter administrators by name</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.filter.name</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of administrators list by administrator&#8217;s name</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Access to administrator&#8217;s details view</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see-details.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Access to details view of WAT administrators. This view includes name</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Access to administrator&#8217;s main section</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see-main.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Access to WAT Administrators section (without it, it won&#8217;t appear in menu). This list view includes name</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See administrator&#8217;s ACLs</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see.acl-list</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Effective ACL list for a WAT administrator calculated from the assigned roles</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Source roles of Administrator&#8217;s ACL</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see.acl-list-roles</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Which role is the origin of each effective acls in WAT administrator details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See disk administrator&#8217;s creator</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Wat administrator who created an administrator</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See disk administrator&#8217;s creation date</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Datetime when an administrator was created</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See administrator&#8217;s description</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The description of the WAT administrators.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See administrator&#8217;s ID</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see.id</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The database identiefier of the WAT administrators. Useful to make calls from CLI.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See administrator&#8217;s language</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see.language</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Language of the WAT administrators.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See administrator&#8217;s Roles</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see.roles</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Assigned roles to the WAT administrator</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update administrator&#8217;s description (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.update-massive.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the description of administrators massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update administrator&#8217;s language (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.update-massive.language</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the language of administrators massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Assign-Unassign administrator&#8217;s roles</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.update.assign-role</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Assign roles to WAT administrators to give to them their ACLs.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update administrator&#8217;s description</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.update.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the description of administrators one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update administrator&#8217;s language</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.update.language</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the language of administrators one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Change administrator&#8217;s password</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.update.password</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update WAT administrator password (it doesn&#8217;t include roles management)</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="_roles_acls">7.1.7. Roles' ACLs</h4>
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
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Create roles</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.create.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Creation of roles including initial setting for name.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Delete roles (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.delete-massive.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Deletion of roles massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Delete roles</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.delete.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Deletion of roles one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter roles by creator</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.filter.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of roles list by administrator who created it</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter roles by creation date</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.filter.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of roles list by date when it was created</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Filter roles by name</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.filter.name</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Filter of roles list by role&#8217;s name</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Access to role&#8217;s details view</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.see-details.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Access to details view of Roles. This view includes name</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Access to role&#8217;s main section</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.see-main.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Access to the roles view. The minimum data on it is name</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See role&#8217;s acls</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.see.acl-list</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Effective ACL list for a role  calculated from the inherited roles</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See role&#8217;s acls' origin roles</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.see.acl-list-roles</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Which role is the origin of each effective acls in role details view</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See role&#8217;s creator</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.see.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Wat administrator who created a role</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See role&#8217;s creation date</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.see.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Datetime when a role was created</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See role&#8217;s description</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.see.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The description of a role.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See role&#8217;s ID</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.see.id</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">The database identiefier of the roles. Useful to make calls from CLI.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>See role&#8217;s inherited roles</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.see.inherited-roles</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Inherited roles of a role.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update role&#8217;s description (massive)</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.update-massive.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the description of roles massively.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Assign-Unassign role&#8217;s ACLs</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.update.assign-acl</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Add/Remove acl on role.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Assign-Unassign role&#8217;s inherited roles</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.update.assign-role</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Manage the inheritance of roles adding roles in others.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update role&#8217;s description</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.update.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the description of roles one by one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Update role&#8217;s name</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.update.name</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Update the name of roles.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="_custom_properties_acls">7.1.8. Custom properties' ACLs</h4>
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
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Access to properties&#8217;s main section</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">property.see-main.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Access to custom properties managment section</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Manage user&#8217;s custom properties</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">property.manage.user</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Create, update and delete custom properties of users.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Manage virtual machines&#8217;s custom properties</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">property.manage.vm</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Create, update and delete custom properties of virtual machines.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Manage node&#8217;s custom properties</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">property.manage.host</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Create, update and delete custom properties of nodes.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Manage OSF&#8217;s custom properties</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">property.manage.osf</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Create, update and delete custom properties of OS Flavours.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Manage disk image&#8217;s custom properties</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">property.manage.di</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Create, update and delete custom properties of disk images.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="_views_acls">7.1.9. Views' ACLs</h4>
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
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Access to default view&#8217;s main section</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">views.see-main.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Access to WAT Customize section (without it, it won&#8217;t appear in menu).</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Set default columns on list views</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">views.update.columns</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Set what columns will be shown in list views by default by tenant</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Set default filters on list views for desktop</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">views.update.filters-desktop</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Set what filters will be shown in list views by default for desktop version by tenant</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Set default filters on list views for mobile</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">views.update.filters-mobile</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Set what filters will be shown in list views by default for mobile version by tenant</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="_configuration_acls">7.1.10. Configuration ACLs</h4>
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
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>QVD&#8217;s configuration management</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">config.qvd.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Manage QVD configuration (add/update tokens).</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>WAT&#8217;s configuration management</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">config.wat.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Manage WAT configuration (language&#8230;).</p></td>
</tr>
</tbody>
</table>
</div>
</div>
<div class="sect2">
<h3 id="_templates_reference">7.2. Templates reference</h3>
<div class="paragraph"><p>Predefined template list in the system. The templates are sets of ACLs, but as well as it happens with the Roles, they use inheritance among them.</p></div>
<div class="paragraph"><p>The predefined templates in the system are found in this guideline, including diagrams which contain the connection among them.</p></div>
<div class="sect3">
<h4 id="_original_templates">7.2.1. Original templates</h4>
<div class="paragraph"><p>Only ACLs are asigned.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Notation
</dt>
<dd>
<p>
<span class="image">
<img src="/images/doc_images/Templates_Hierarchy_Legend_-_Primitives.png" alt="Templates_Hierarchy_Legend_-_Primitives.png" width="300px">
</span>
</p>
</dd>
<dt class="hdlist1">
List
</dt>
<dd>
<div class="ulist"><ul>
<li>
<p>
Administrators
</p>
<div class="ulist"><ul>
<li>
<p>
Administrators Creator
</p>
</li>
<li>
<p>
Administrators Eraser
</p>
</li>
<li>
<p>
Administrators Operator
</p>
</li>
<li>
<p>
Administrators Reader
</p>
</li>
<li>
<p>
Administrators Updater
</p>
</li>
</ul></div>
</li>
<li>
<p>
Configuration
</p>
<div class="ulist"><ul>
<li>
<p>
QVD Config Manager
</p>
</li>
<li>
<p>
WAT Config Manager
</p>
</li>
</ul></div>
</li>
<li>
<p>
Images
</p>
<div class="ulist"><ul>
<li>
<p>
Images Creator
</p>
</li>
<li>
<p>
Images Eraser
</p>
</li>
<li>
<p>
Images Operator
</p>
</li>
<li>
<p>
Images Reader
</p>
</li>
<li>
<p>
Images Updater
</p>
</li>
</ul></div>
</li>
</ul></div>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Nodes
</p>
<div class="ulist"><ul>
<li>
<p>
Nodes Creator
</p>
</li>
<li>
<p>
Nodes Eraser
</p>
</li>
<li>
<p>
Nodes Operator
</p>
</li>
<li>
<p>
Nodes Reader
</p>
</li>
<li>
<p>
Nodes Updater
</p>
</li>
</ul></div>
</li>
<li>
<p>
OSFs
</p>
<div class="ulist"><ul>
<li>
<p>
OSFs Creator
</p>
</li>
<li>
<p>
OSFs Eraser
</p>
</li>
<li>
<p>
OSFs Operator
</p>
</li>
<li>
<p>
OSFs Reader
</p>
</li>
<li>
<p>
OSFs Updater
</p>
</li>
</ul></div>
</li>
<li>
<p>
Roles
</p>
<div class="ulist"><ul>
<li>
<p>
Roles Creator
</p>
</li>
<li>
<p>
Roles Eraser
</p>
</li>
<li>
<p>
Roles Operator
</p>
</li>
<li>
<p>
Roles Reader
</p>
</li>
<li>
<p>
Roles Updater
</p>
</li>
</ul></div>
</li>
<li>
<p>
Users
</p>
<div class="ulist"><ul>
<li>
<p>
Users Creator
</p>
</li>
<li>
<p>
Users Eraser
</p>
</li>
<li>
<p>
Users Operator
</p>
</li>
<li>
<p>
Users Reader
</p>
</li>
<li>
<p>
Users Updater
</p>
</li>
<li>
<p>
Users Operator
</p>
</li>
</ul></div>
</li>
<li>
<p>
Views
</p>
<div class="ulist"><ul>
<li>
<p>
Views Operator
</p>
</li>
<li>
<p>
Views Reader
</p>
</li>
</ul></div>
</li>
<li>
<p>
VMs
</p>
<div class="ulist"><ul>
<li>
<p>
VMs Creator
</p>
</li>
<li>
<p>
VMs Eraser
</p>
</li>
<li>
<p>
VMs Operator
</p>
</li>
<li>
<p>
VMs Reader
</p>
</li>
<li>
<p>
VMs Updater
</p>
</li>
</ul></div>
</li>
</ul></div>
</div>
<div class="sect3">
<h4 id="_action_templates">7.2.2. Action templates</h4>
<div class="paragraph"><p>They inherit original Templates and comprise the ACLs sorted out by the type of action of every QVD element. For example "QVD Lector" gathers the permissions for reading about the Users, virtual Machines, OSFs and disc Images. *</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Notation
</dt>
<dd>
<p>
<span class="image">
<img src="/images/doc_images/Templates_Hierarchy_Legend_-_Action.png" alt="Templates_Hierarchy_Legend_-_Action.png" width="300px">
</span>
</p>
</dd>
<dt class="hdlist1">
List
</dt>
<dd>
<div class="ulist"><ul>
<li>
<p>
QVD Creator
</p>
<div class="openblock">
<div class="content">
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Users Creator
</p>
</li>
<li>
<p>
VMs Creator
</p>
</li>
<li>
<p>
OSFs Creator
</p>
</li>
<li>
<p>
Images Creator
</p>
</li>
</ul></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/Templates_Hierarchy_-_QVD_Creator.png" alt="Templates_Hierarchy_-_QVD_Creator.png" width="600px">
</span></p></div>
</div></div>
</li>
<li>
<p>
QVD Updater
</p>
<div class="openblock">
<div class="content">
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Users Updater
</p>
</li>
<li>
<p>
VMs Updater
</p>
</li>
<li>
<p>
OSFs Updater
</p>
</li>
<li>
<p>
Images Updater
</p>
</li>
</ul></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/Templates_Hierarchy_-_QVD_Updater.png" alt="Templates_Hierarchy_-_QVD_Updater.png" width="600px">
</span></p></div>
</div></div>
</li>
<li>
<p>
QVD Reader
</p>
<div class="openblock">
<div class="content">
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Users Reader
</p>
</li>
<li>
<p>
VMs Reader
</p>
</li>
<li>
<p>
OSFs Reader
</p>
</li>
<li>
<p>
Images Reader
</p>
</li>
</ul></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/Templates_Hierarchy_-_QVD_Reader.png" alt="Templates_Hierarchy_-_QVD_Reader.png" width="600px">
</span></p></div>
</div></div>
</li>
<li>
<p>
Operador de QVD
</p>
<div class="openblock">
<div class="content">
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Users Operator
</p>
</li>
<li>
<p>
VMs Operator
</p>
</li>
<li>
<p>
OSFs Operator
</p>
</li>
<li>
<p>
Images Operator
</p>
</li>
</ul></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/Templates_Hierarchy_-_QVD_Operator.png" alt="Templates_Hierarchy_-_QVD_Operator.png" width="600px">
</span></p></div>
</div></div>
</li>
<li>
<p>
QVD Eraser
</p>
<div class="openblock">
<div class="content">
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Users Eraser
</p>
</li>
<li>
<p>
VMs Eraser
</p>
</li>
<li>
<p>
OSFs Eraser
</p>
</li>
<li>
<p>
Images Eraser
</p>
</li>
</ul></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/Templates_Hierarchy_-_QVD_Eraser.png" alt="Templates_Hierarchy_-_QVD_Eraser.png" width="600px">
</span></p></div>
</div></div>
</li>
</ul></div>
</dd>
</dl></div>
</div>
<div class="sect3">
<h4 id="_management_templates">7.2.3. Management Templates</h4>
<div class="paragraph"><p>They inherit original Templates and gather the ACLs which are sorted out by the affected element, enabling every type of possible action on it. For examples, "Gestor de Usuarios" gathers the permissions to read, operate, update, create and eliminate on QVD Users.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Notation
</dt>
<dd>
<p>
<span class="image">
<img src="/images/doc_images/Templates_Hierarchy_Legend_-_Manager.png" alt="Templates_Hierarchy_Legend_-_Manager.png" width="300px">
</span>
</p>
</dd>
<dt class="hdlist1">
List
</dt>
<dd>
<div class="ulist"><ul>
<li>
<p>
Users Manager
</p>
<div class="openblock">
<div class="content">
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Users Reader
</p>
</li>
<li>
<p>
Users Creator
</p>
</li>
<li>
<p>
Users Updater
</p>
</li>
<li>
<p>
Users Operator
</p>
</li>
<li>
<p>
Users Eraser
</p>
</li>
</ul></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/Templates_Hierarchy_-_Users_Manager.png" alt="Templates_Hierarchy_-_Users_Manager.png" width="600px">
</span></p></div>
</div></div>
</li>
<li>
<p>
VMs Manager
</p>
<div class="openblock">
<div class="content">
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
VMs Reader
</p>
</li>
<li>
<p>
VMs Creator
</p>
</li>
<li>
<p>
VMs Updater
</p>
</li>
<li>
<p>
VMs Operator
</p>
</li>
<li>
<p>
VMs Eraser
</p>
</li>
</ul></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/Templates_Hierarchy_-_VMs_Manager.png" alt="Templates_Hierarchy_-_VMs_Manager.png" width="600px">
</span></p></div>
</div></div>
</li>
<li>
<p>
OSFs Manager
</p>
<div class="openblock">
<div class="content">
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
OSFs Reader
</p>
</li>
<li>
<p>
OSFs Creator
</p>
</li>
<li>
<p>
OSFs Updater
</p>
</li>
<li>
<p>
OSFs Operator
</p>
</li>
<li>
<p>
OSFs Eraser
</p>
</li>
</ul></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/Templates_Hierarchy_-_OSFs_Manager.png" alt="Templates_Hierarchy_-_OSFs_Manager.png" width="600px">
</span></p></div>
</div></div>
</li>
<li>
<p>
Images Manager
</p>
<div class="openblock">
<div class="content">
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Images Reader
</p>
</li>
<li>
<p>
Images Creator
</p>
</li>
<li>
<p>
Images Updater
</p>
</li>
<li>
<p>
Images Operator
</p>
</li>
<li>
<p>
Images Eraser
</p>
</li>
</ul></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/Templates_Hierarchy_-_Images_Manager.png" alt="Templates_Hierarchy_-_Images_Manager.png" width="600px">
</span></p></div>
</div></div>
</li>
<li>
<p>
Administrators Manager
</p>
<div class="openblock">
<div class="content">
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Administrators Reader
</p>
</li>
<li>
<p>
Administrators Creator
</p>
</li>
<li>
<p>
Administrators Updater
</p>
</li>
<li>
<p>
Administrators Operator
</p>
</li>
<li>
<p>
Administrators Eraser
</p>
</li>
</ul></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/Templates_Hierarchy_-_Administrators_Manager.png" alt="Templates_Hierarchy_-_Administrators_Manager.png" width="600px">
</span></p></div>
</div></div>
</li>
<li>
<p>
Roles Manager
</p>
<div class="openblock">
<div class="content">
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Roles Reader
</p>
</li>
<li>
<p>
Roles Creator
</p>
</li>
<li>
<p>
Roles Updater
</p>
</li>
<li>
<p>
Roles Operator
</p>
</li>
<li>
<p>
Roles Eraser
</p>
</li>
</ul></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/Templates_Hierarchy_-_Roles_Manager.png" alt="Templates_Hierarchy_-_Roles_Manager.png" width="600px">
</span></p></div>
</div></div>
</li>
<li>
<p>
Views Manager
</p>
<div class="openblock">
<div class="content">
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Views Reader
</p>
</li>
<li>
<p>
Views Operator
</p>
</li>
</ul></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/Templates_Hierarchy_-_Views_Manager.png" alt="Templates_Hierarchy_-_Views_Manager.png" width="600px">
</span></p></div>
</div></div>
</li>
<li>
<p>
Nodes Manager
</p>
<div class="openblock">
<div class="content">
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Nodes Reader
</p>
</li>
<li>
<p>
Nodes Creator
</p>
</li>
<li>
<p>
Nodes Updater
</p>
</li>
<li>
<p>
Nodes Operator
</p>
</li>
<li>
<p>
Nodes Eraser
</p>
</li>
</ul></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/Templates_Hierarchy_-_Nodes_Manager.png" alt="Templates_Hierarchy_-_Nodes_Manager.png" width="600px">
</span></p></div>
</div></div>
</li>
</ul></div>
</dd>
</dl></div>
</div>
<div class="sect3">
<h4 id="_global_management_templates_qvd_wat">7.2.4. Global Management Templates (QVD/WAT)</h4>
<div class="paragraph"><p>They inherit from the Management Templates to create a template with the management ACLs of all QVD or all WAT.*</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Notation
</dt>
<dd>
<p>
<span class="image">
<img src="/images/doc_images/Templates_Hierarchy_Legend_-_Global_Manager.png" alt="Templates_Hierarchy_Legend_-_Global_Manager.png" width="300px">
</span>
</p>
</dd>
<dt class="hdlist1">
List
</dt>
<dd>
<div class="ulist"><ul>
<li>
<p>
WAT Manager
</p>
<div class="openblock">
<div class="content">
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Views Manager
</p>
</li>
<li>
<p>
Roles Manager
</p>
</li>
<li>
<p>
Administrator Manager
</p>
</li>
<li>
<p>
WAT Config Manager
</p>
</li>
</ul></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Diagram
</dt>
<dd>
<p>
<span class="image">
<img src="/images/doc_images/Templates_Hierarchy_-_WAT_Manager.png" alt="Templates_Hierarchy_-_WAT_Manager.png" width="600px">
</span>
</p>
</dd>
</dl></div>
</div></div>
</li>
<li>
<p>
QVD Manager
</p>
<div class="openblock">
<div class="content">
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Users Manager
</p>
</li>
<li>
<p>
VMs Manager
</p>
</li>
<li>
<p>
OSFs Manager
</p>
</li>
<li>
<p>
Images Manager
</p>
</li>
<li>
<p>
QVD Config Manager
</p>
</li>
</ul></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Diagram
</dt>
<dd>
<p>
<span class="image">
<img src="/images/doc_images/Templates_Hierarchy_-_QVD_Manager.png" alt="Templates_Hierarchy_-_QVD_Manager.png" width="600px">
</span>
</p>
</dd>
</dl></div>
</div></div>
</li>
</ul></div>
</dd>
</dl></div>
</div>
<div class="sect3">
<h4 id="_master_template">7.2.5. Master Template</h4>
<div class="paragraph"><p>They inherit from Global Management Templates creating a template with every ACLs. Two templates are found in this typology:</p></div>
<div class="ulist"><ul>
<li>
<p>
Master
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Inherits from the QVD and WAT global management templates obtaining every possible ACLs except the ones from the Nodes.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Notation
</dt>
<dd>
<p>
<span class="image">
<img src="/images/doc_images/Templates_Hierarchy_Legend_-_Master.png" alt="Templates_Hierarchy_Legend_-_Master.png" width="300px">
</span>
</p>
</dd>
<dt class="hdlist1">
Diagram
</dt>
<dd>
<p>
<span class="image">
<img src="/images/doc_images/Templates_Hierarchy_-_Master.png" alt="Templates_Hierarchy_-_Master.png" width="600px">
</span>
</p>
</dd>
</dl></div>
</div></div>
</li>
<li>
<p>
Total master
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Inherits from the Master template as well as from the Nodes Management Template.*</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Notation
</dt>
<dd>
<p>
<span class="image">
<img src="/images/doc_images/Templates_Hierarchy_Legend_-_Total_Master.png" alt="Templates_Hierarchy_Legend_-_Total_Master.png" width="300px">
</span>
</p>
</dd>
<dt class="hdlist1">
Diagram
</dt>
<dd>
<p>
<span class="image">
<img src="/images/doc_images/Templates_Hierarchy_-_Total_Master.png" alt="Templates_Hierarchy_-_Total_Master.png" width="600px">
</span>
</p>
</dd>
</dl></div>
</div></div>
</li>
</ul></div>
<div class="paragraph"><p>* Nodes stay out of the QVD classification in the templates because they are physical architectonic important elements. They will have their own ACLs templates.</p></div>
</div>
<div class="sect3">
<h4 id="_template_8217_s_hierarchy">7.2.6. Template&#8217;s Hierarchy</h4>
<div class="paragraph"><p>In just a quick look, one can see the complete template&#8217;s hierarchy in the following diagram.</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/Templates_Hierarchy_Monotenant.png" alt="Templates_Hierarchy_Monotenant.png" width="960px">
</span></p></div>
</div>
</div>
<div class="sect2">
<h3 id="_roles_reference">7.3. Roles reference</h3>
<div class="paragraph"><p>This is a reference to the default WAT Roles given in a clean QVD system.</p></div>
<div class="paragraph"><p>These roles inherit most of the ACLS from templates.</p></div>
<div class="paragraph"><p>In order to avoid an undesired and faulty functioning, the default roles are <strong>blocked</strong> and therefore can not be edited nor eliminated.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
List of default roles
</dt>
<dd>
<div class="ulist"><ul>
<li>
<p>
<strong>Operator L1</strong>
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>This role guarantees the sufficient permissions to see the QVD elements although it is not possible to create, edit, eliminate or undertake any other operation on them. It is a <strong>read-only role</strong> aimed at detecting problems.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Lector QVD
</p>
</li>
</ul></div>
</div></div>
</li>
<li>
<p>
<strong>Operator L2</strong>
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>This role gives the Operator 1&#8217;s permissions (in fact, it inherits that role) and in addition it gives permissions to undertake certain <strong>operational actions</strong> such as start/stop virtual machines, disconnect other users or block elements.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Operator L1
</p>
</li>
<li>
<p>
Operador QVD
</p>
</li>
</ul></div>
</div></div>
</li>
<li>
<p>
<strong>Operator L3</strong>
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>This role gives full permissions for QVD elements. Creation, Update, Operation and Elimination. It provides access to Nodes too.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Operator L2
</p>
</li>
<li>
<p>
Gestor de QVD
</p>
</li>
<li>
<p>
Gestor de Nodos
</p>
</li>
</ul></div>
</div></div>
</li>
<li>
<p>
<strong>Root</strong>
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>This role gives <strong>total power</strong> over all the QVD elements and also over the WAT Administrators, roles, etc.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Inherits from
</dt>
<dd>
<p>
*Master Total
</p>
</dd>
</dl></div>
</div></div>
</li>
</ul></div>
</dd>
</dl></div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_customized_properties">8. Customized properties</h2>
<div class="sectionbody">
<div class="paragraph"><p><strong>The QVD elements have attributes</strong> like for example the name, its block state, its associated IP address (in the case of virtual machines or nodes) or the reference to other QVD objects to which they are associated with. For example the disk images have an OSF assigned or the virtual machines are always linked to a user.</p></div>
<div class="paragraph"><p>Each of these attributes describe how the QVD objects are, they allow us to see distinguish them from the rest, they give us information about what dependencies they have and show us about their behaviour. This information is fixed, although their visibility through the ACLs can be configured, being possible to create administrator roles that only allow to see them partly.</p></div>
<div class="paragraph"><p>Due to the varied needs that can be required in different QVD environments, there is a way to <strong>customize the information</strong> that is stored in each QVD object. This customization is possible thanks to the <strong>customized properties</strong>, that are <strong>special attributes of the QVD objects</strong> created by administrators to cope with their needs.</p></div>
<div class="paragraph"><p>These properties will be extra attributes that could be configured as an extra column and enable them as a filter on the list view.</p></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//tip.png" alt="Tip">
</td>
<td class="content">We can create a property in the users called <em>Company</em>, to store the company to which the different users belong to and later filter the list by this data. Other interesting use of these properties is to use them through external scripts through the CLI to perform bulk actions on the subset of filtered elements depending on our needs.</td>
</tr></table>
</div>
<div class="paragraph"><p>These special attributes <strong>may be restricted through ACLs</strong> but as <strong>bulk</strong>. It means, we can <strong>permit or deny the display of all the free properties</strong> for each type of QVD object (Users, Virtual Machines, OSFs&#8230;), but we can not allow some properties and not others.</p></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//important.png" alt="Important">
</td>
<td class="content">The elements with customized properties are: Users, Virtual Machines, Nodes, OSFs and Disk images.</td>
</tr></table>
</div>
<div class="dlist"><dl>
<dt class="hdlist1">
Customized properties Management
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>To create, edit or delete customized properties we will go the the section “WAT Management”, described in the guide “Step by Step”</p></div>
<div class="paragraph"><p>In this section we could manage the properties of each QVD element. Being able to easily assign the same property to one or more than one of them, rename it or add it a description that will appear along with it in the interface to guide the user.</p></div>
</div></div>
</dd>
</dl></div>
</div>
</div>
<div class="sect1">
<h2 id="_bulk_actions">9. Bulk actions</h2>
<div class="sectionbody">
<div class="paragraph"><p>In some list views exist the possibility to perform bulk actions. When this happens we will notice that the first column of the list table is a checkbox column.</p></div>
<div class="sect2">
<h3 id="_elements_selection">9.1. Elements selection</h3>
<div class="paragraph"><p>With the checkbox column we could check the elements to which we want to apply the same action. This check can be done one at a time or in a multiple way.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
One at a time selection
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>We can check the elements one at a time checking the checkboxes in the first column.</p></div>
<div class="paragraph"><p>When there is more than one page of elements, we can navigate through all of them withouth losing the checked elements. This makes possible <strong>to select elements from different pages at the same time</strong>.</p></div>
</div></div>
</dd>
<dt class="hdlist1">
Multiple selection
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>The Checkbox column has a <strong>special box at the heading of the table</strong>. With this box we could use a multiple selection. When checking this box, all the elements in the list will be checked automatically.</p></div>
<div class="paragraph"><p>Two situations can happen:</p></div>
<div class="ulist"><ul>
<li>
<p>
There are no elements out of the list:
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>The number of elements in the list is higher or equal to the paging block, and therefore there is only one page and all the elements are being shown.</p></div>
<div class="paragraph"><p>In this case, when the multiple selection box is checked <strong>all the elements will be checked immediately</strong>.</p></div>
</div></div>
</li>
<li>
<p>
There are elements out of the list:
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>The number of elements on the list is higher than the paging block, and therefore a page of X total pages is displayed.</p></div>
<div class="paragraph"><p>In this case, if we check the multiple selection box <strong>a dialogue will appear warning us that there are elements in different pages</strong> and giving us two options:</p></div>
<div class="ulist"><ul>
<li>
<p>
Checking only the elements we can see
</p>
</li>
<li>
<p>
Check every element on the list, including the ones in other pages.
</p>
</li>
</ul></div>
</div></div>
</li>
</ul></div>
</div></div>
</dd>
</dl></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//tip.png" alt="Tip">
</td>
<td class="content">On the left part, right under the list table we could see at any moment the number of elements that are checked.</td>
</tr></table>
</div>
</div>
<div class="sect2">
<h3 id="_bulk_actions_selector">9.2. Bulk actions selector</h3>
<div class="paragraph"><p>If available, under the table of the list, there will be a bulk actions selection control. It will be enough to check the whished action and click on the <em>Apply</em> button to carry them out <strong>on the checked elements</strong>.</p></div>
</div>
<div class="sect2">
<h3 id="_types_of_bulk_actions">9.3. Types of bulk actions</h3>
<div class="paragraph"><p>The bulk actions can be of different nature:</p></div>
<div class="ulist"><ul>
<li>
<p>
<strong>Edition</strong>:
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>With the edition action we can edit the <strong>common attributes</strong> of the checked elements</p></div>
</div></div>
</li>
<li>
<p>
<strong>Deletion</strong>:
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>With the deletion action we can delete elements in bulk.</p></div>
</div></div>
</li>
<li>
<p>
<strong>Execution</strong>:
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>In this category the non-edition, non-deletion actions are encompassed. <em>Start/Stop virtual machines, disconnecting users, block/unblock elements&#8230;</em></p></div>
</div></div>
</li>
</ul></div>
</div>
<div class="sect2">
<h3 id="_bulk_actions_restriction">9.4. Bulk actions restriction</h3>
<div class="paragraph"><p>Through the ACLs control, we can allow or not perform the different bulk actions <strong>independently from the normal actions</strong>. This means, for example, <em>the delete action of a virtual machine and the virtual machines deletion through bulk actions is regulated by different ACLs</em>.</p></div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_tool_for_style_customization">10. Tool for style customization</h2>
<div class="sectionbody">
<div class="paragraph"><p>With this tool we could customize the WAT style, including logos and colours.</p></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//important.png" alt="Important">
</td>
<td class="content">To make the changes done with this tool permanent, it will be necessary to have access to the server where the WAT is uploaded.</td>
</tr></table>
</div>
<div class="paragraph"><p>The tool will be available for those administrators with WAT configuration permissions along with the ability to edit other parameters like the language or the paging block size.</p></div>
<div class="paragraph"><p>This tool is not a section, but a feature present in every WAT section.</p></div>
<div class="paragraph"><p>When the style customization tool is on, a tab will appear on the left part of the screen showing the text “Customizer”.</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_customizer_enabled.png" alt="screenshot_customizer_enabled.png" width="960px">
</span></p></div>
<div class="paragraph"><p>If we click on the tab a menu with a category selector will appear.</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_customizer_open_select.png" alt="screenshot_customizer_open_select.png" width="960px">
</span></p></div>
<div class="paragraph"><p>Each category will have certain configurable parameters, most of them colours.</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_customizer_open.png" alt="screenshot_customizer_open.png" width="960px">
</span></p></div>
<div class="paragraph"><p>Styles customizing parameters divided by categories:</p></div>
<div class="ulist"><ul>
<li>
<p>
Heading and footer
</p>
<div class="ulist"><ul>
<li>
<p>
Heading Logo (125px x 55px)
</p>
</li>
<li>
<p>
Background colour of the heading
</p>
</li>
<li>
<p>
Background colour of the footer
</p>
</li>
<li>
<p>
Text colour of the footer
</p>
</li>
</ul></div>
</li>
<li>
<p>
Menu
</p>
<div class="ulist"><ul>
<li>
<p>
Main menu background colour
</p>
</li>
<li>
<p>
Main menu text colour
</p>
</li>
<li>
<p>
Main menu border colour
</p>
</li>
<li>
<p>
Main menu background colour (moving the mouse over it)
</p>
</li>
<li>
<p>
Main menu text colour (moving the mouse over it)
</p>
</li>
<li>
<p>
Main menu background colour (selected)
</p>
</li>
<li>
<p>
Main menu text colour (selected)
</p>
</li>
<li>
<p>
Heading menu text colour
</p>
</li>
<li>
<p>
Heading menu text colour (selected)
</p>
</li>
<li>
<p>
Heading submenu background colour
</p>
</li>
<li>
<p>
Heading submenu text colour
</p>
</li>
<li>
<p>
Heading submenu border colour
</p>
</li>
<li>
<p>
Heading submenu background colour (moving the mouse over it)
</p>
</li>
<li>
<p>
Heading submenu text colour (moving the mouse over it)
</p>
</li>
</ul></div>
</li>
<li>
<p>
Buttons and links
</p>
<div class="ulist"><ul>
<li>
<p>
Button1 Background colour
</p>
</li>
<li>
<p>
Button1 Text colour
</p>
</li>
<li>
<p>
Button2 Background colour
</p>
</li>
<li>
<p>
Button2 Text colour
</p>
</li>
<li>
<p>
Text links
</p>
</li>
</ul></div>
</li>
<li>
<p>
Tables
</p>
<div class="ulist"><ul>
<li>
<p>
Tables heading background colour
</p>
</li>
<li>
<p>
Tables heading text colour
</p>
</li>
<li>
<p>
Tables heading background colour (organised column)
</p>
</li>
<li>
<p>
Tables heading text colour (organised column)
</p>
</li>
</ul></div>
</li>
<li>
<p>
Graphics
</p>
<div class="ulist"><ul>
<li>
<p>
Graphics Colour A
</p>
</li>
<li>
<p>
Graphics Colour B
</p>
</li>
</ul></div>
</li>
<li>
<p>
Login Screen
</p>
<div class="ulist"><ul>
<li>
<p>
Login Logo (150px x 227px)
</p>
</li>
<li>
<p>
Login Box background colour
</p>
</li>
<li>
<p>
Login Box text colour
</p>
</li>
</ul></div>
</li>
</ul></div>
<div class="paragraph"><p>The colour changes will be made with a palette that will be shown if we click on the box with the colour we want to use.</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_customizer_change.png" alt="screenshot_customizer_change.png" width="960px">
</span></p></div>
<div class="paragraph"><p>Although we can also set an RGB code in the text box of the parameter. For example.: #ff0494</p></div>
<div class="sect2">
<h3 id="_preview">10.1. Preview</h3>
<div class="paragraph"><p>If we click on the preview button the system will calculate the changes and generate a preview showing the new styles.</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_customizer_preview_loading.png" alt="screenshot_customizer_preview_loading.png" width="960px">
</span></p></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//important.png" alt="Important">
</td>
<td class="content">These changes will be temporary and only visible in the browser where the preview is performed.</td>
</tr></table>
</div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_customizer_preview.png" alt="screenshot_customizer_preview.png" width="960px">
</span></p></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//warning.png" alt="Warning">
</td>
<td class="content">Choosing yellow as background colour is a dramatisation. Do not try at home.</td>
</tr></table>
</div>
</div>
<div class="sect2">
<h3 id="_restoring">10.2. Restoring</h3>
<div class="paragraph"><p>With the restore button we will go to the initial configuration of the WAT styles. We can also go back to the initial configuration refreshing the screen.</p></div>
</div>
<div class="sect2">
<h3 id="_exporting_css_file">10.3. Exporting CSS file</h3>
<div class="paragraph"><p>With this button we can download the <em>custom_style.css</em> style sheet with the current changes. We must access the server where the WAT is hosted and overwrite the file <em>/styles/custom_style.css</em>. This style sheet will overwrite the default one.</p></div>
</div>
<div class="sect2">
<h3 id="_change_logos">10.4. Change logos</h3>
<div class="paragraph"><p>From the customization tool we can only change the logos file name, but not the file itself. So, to make it visible in preview and to make it permanent, the new logos must be uploaded to <em>/images/</em> in the server.</p></div>
</div>
<div class="sect2">
<h3 id="_changes_example">10.5. Changes example</h3>
<div class="paragraph"><p>Let&#8217;s imagine we want to change the WAT style to bluish colours more in the line with our organisation. Changing the initial colours to different tones of blue would display a result like the following:</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_customizer_blue.png" alt="screenshot_customizer_blue.png" width="960px">
</span></p></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//warning.png" alt="Warning">
</td>
<td class="content">Qindel Group is not responsible for aesthetic disasters caused by daltonic administrators using this tool or by administrators suffering of any other visual dysfunction.</td>
</tr></table>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_session_spy">11. Session spy</h2>
<div class="sectionbody">
<div class="paragraph"><p>From the WAT, it is possible to <em>spy on</em> a user who is logged in and connected to a virtual machine. Thanks to the protocol of sharing desktops <strong>VNC</strong>, you can access in <strong>real time</strong> to the desktop where the user is connected, and even <strong>take control</strong> of it.</p></div>
<div class="paragraph"><p>If the administrator of QVD has <strong>enough permissions</strong>, when the virtual machine is started, the option <strong>Spy</strong> will appear both in the detail view and in the massive options in the list view (in this case the option will only appear if an only element is selected).</p></div>
<div class="paragraph"><p>When clicking on <strong>Spy</strong>, a new tab in the browser will open where the desktop with the current session will be loaded.</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_vmspy.png" alt="screenshot_vmspy.png" width="960px">
</span></p></div>
<div class="paragraph"><p>If the user is doing things, we will see in real time what he sees including his cursor.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Settings
</dt>
<dd>
<p>
On the left side there is a <em>settings</em> tab that displays a lateral menu with a chart with information about the virtual machine and the user followed by the configuration options:
</p>
<div class="ulist"><ul>
<li>
<p>
<strong>Resolution</strong>: it can be configured so the resolution of the desktop QVD in the browser is <em>adapted</em> to the size of the window or appears in the <em>original</em> resolution of the client. In the second case, if the resolution is higher than the window of the browser, scroll bars will appear.
</p>
</li>
<li>
<p>
<strong>Mode</strong>: <em>Only see</em> mode is established by default with which we could not interact with the remote desktop. With the <em>interactive</em> mode we could take control of the cursor only by passing over it apart from being able to write with our keyboard.
</p>
</li>
<li>
<p>
<strong>Log</strong>: To be able to detect dysfunctions in the VNC connection they can be shown with different levels of <em>verbosity</em>, the registers of the log in the connection. The log remains hidden by default, but everything can be shown (Debug level), only through the registers that have some relevance (Info), the ones that are considered important (Warning) or only the mistakes (Mistake).
</p>
</li>
</ul></div>
</dd>
</dl></div>
<div class="paragraph"><p><em>Adapted resolution and log shown</em>
<span class="image">
<img src="/images/doc_images/screenshot_vmspy_options.png" alt="screenshot_vmspy_options.png" width="960px">
</span></p></div>
<div class="paragraph"><p><em>Original resolution and log hidden</em>
<span class="image">
<img src="/images/doc_images/screenshot_vmspy_options2.png" alt="screenshot_vmspy_options2.png" width="960px">
</span></p></div>
</div>
</div>
</div>
<div id="footnotes"><hr></div>
<div id="footer">
<div id="footer-text">
Last updated 2017-09-19 12:52:41 CEST
</div>
</div>
</body>
</html>

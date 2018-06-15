<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="generator" content="AsciiDoc 8.6.9">
<title>Guía de usuario</title>
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
<h1>Guía de usuario</h1>
<div id="toc">
  <div id="toctitle">Table of Contents</div>
  <noscript><p><b>JavaScript must be enabled in your browser to display the table of contents.</b></p></noscript>
</div>
</div>
<div id="content">
<div class="sect1">
<h2 id="_primeros_pasos">1. Primeros pasos</h2>
<div class="sectionbody">
<div class="paragraph"><p>Tras una instalación limpia del WAT se habrá creado un administrador de poderes totales. Sus credenciales son:</p></div>
<div class="literalblock">
<div class="content monospaced">
<pre>Usuario: admin
Contraseña: admin</pre>
</div></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//tip.png" alt="Tip">
</td>
<td class="content">Si solo vamos a tener un administrador del WAT con <em>admin</em> nos valdrá. Si, sin embargo, queremos tener diferentes administradores podemos crearlos con <em>admin</em> con la posibilidad de otorgarles diferentes permisos.</td>
</tr></table>
</div>
<div class="paragraph"><p><strong>Iniciaremos sesión con estas credenciales</strong>.</p></div>
<div class="paragraph"><p>El primer paso que debemos hacer, por seguridad, es <strong>cambiar la contraseña</strong> de nuestra cuenta de administrador.</p></div>
<div class="sect2">
<h3 id="_cambiar_la_contraseña">1.1. Cambiar la contraseña</h3>
<div class="paragraph"><p>Para cambiar la contraseña iremos al <strong>área de administrador</strong>, situada en el <strong>menú general</strong> arriba a la derecha.</p></div>
<div class="ulist"><ul>
<li>
<p>
Haremos click en la opción que lleva el nombre del administrador (en este caso <em>admin</em>) o pasaremos el ratón por encima y del menú desplegable elegiremos la opción <em>Perfil</em>.
</p>
</li>
<li>
<p>
Dentro de nuestro perfil podremos dar al botón de edición situado en la parte derecha de la cabecera bajo el menú.
</p>
</li>
<li>
<p>
Se abrirá un formulario de edición.
</p>
</li>
<li>
<p>
Haremos click en cambiar contraseña y escogeremos nuestra propia contraseña.
</p>
</li>
</ul></div>
</div>
<div class="sect2">
<h3 id="_entorno_inicial">1.2. Entorno inicial</h3>
<div class="paragraph"><p>La primera pantalla tras iniciar sesión corresponde a un <strong>panel con gráficas y estadísticas</strong> del sistema. La primera vez, al ser un sistema nuevo, nos aparecerán todos los <strong>indicadores vacíos</strong>.</p></div>
<div class="paragraph"><p>El menú que nos aparecerá cargado por defecto será el de la Plataforma QVD, que es el eje principal de la administración del QVD. El menú contiene las secciones: <em>usuarios, máquinas virtuales, nodos, OSFs e imágenes de disco</em>.</p></div>
<div class="paragraph"><p>Navegando por las diferentes secciones de la plataforma veremos que no hay nada en ninguna de ellas. Todos los listados aparecerán vacíos.</p></div>
<div class="paragraph"><p>Desde el menú general (arriba a la derecha) podremos acceder a otras partes del WAT que podremos investigar.</p></div>
<div class="paragraph"><p>La parte de gestión del WAT si que contendrá cosas, ya que para que un administrador pueda conectarse al WAT, son imprescindibles una serie de elementos como son la propia cuenta del administrador y al menos un rol que le proporcione permisos.</p></div>
<div class="paragraph"><p>En las diferentes guías iremos moviéndonos por estas secciones para los diferentes cometidos que se propongan, por lo cual conviene familiarizarnos con el entorno.</p></div>
<div class="paragraph"><p>Otro aspecto que nos conviene conocer es la dependencia entre los elementos que podemos crear para no dar palos de ciego al intentar crear unos sin tener los que sean necesarios, etc.</p></div>
</div>
<div class="sect2">
<h3 id="_dependencias_entre_elementos_de_qvd">1.3. Dependencias entre elementos de QVD</h3>
<div class="paragraph"><p>Algunos elementos de QVD tienen dependencia de otros:</p></div>
<div class="ulist"><ul>
<li>
<p>
Una imagen de disco pertenece a un OSF.
</p>
</li>
<li>
<p>
Las máquinas virtuales están asociadas a un usuario.
</p>
</li>
<li>
<p>
Las máquinas virtuales utilizan una imagen de disco.
</p>
</li>
<li>
<p>
Las máquinas virtuales arrancarán en un nodo.
</p>
</li>
</ul></div>
<div class="paragraph"><p>Por lo tanto, deberemos seguir una secuencia lógica para crear los elementos.</p></div>
<div class="paragraph"><p>Lo veremos en el siguiente <strong>árbol de dependencias</strong> donde <strong>cada elemento tiene como hijo otros elementos necesarios para existir</strong>.</p></div>
<div class="ulist"><ul>
<li>
<p>
Máquina virtual
</p>
<div class="ulist"><ul>
<li>
<p>
Nodo(*)
</p>
</li>
<li>
<p>
Usuario
</p>
</li>
<li>
<p>
Imagen de disco
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
<pre>(*) Tener al menos un Nodo no es necesario para la creación de la máquina virtual pero sí para poder arrancarla.</pre>
</div></div>
</div></div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_crear_una_máquina_virtual_de_cero">2. Crear una máquina virtual de cero</h2>
<div class="sectionbody">
<div class="paragraph"><p>Aprenderemos los pasos para realizar el proceso completo de la creación de una máquina virtual y dejarla a punto para ser utilizada.</p></div>
<div class="paragraph"><p>Las máquinas virtuales utilizan otros elementos, que deberemos crear antes en cierto orden. Para saber más sobre este orden veremos la sección del manual <em>Dependencias entre elementos de QVD</em>.</p></div>
<div class="paragraph"><p>Atendiendo a esto realizaremos los siguientes pasos cuyo orden puede ser ligeramente alterado siempre que respetemos las dependencias:</p></div>
<div class="olist arabic"><ol class="arabic">
<li>
<p>
<strong>Creación de un Nodo</strong>
</p>
</li>
<li>
<p>
<strong>Creación de un OSF</strong>
</p>
</li>
<li>
<p>
<strong>Creación de una imagen de disco</strong>
</p>
</li>
<li>
<p>
<strong>Creación de un usuario</strong>
</p>
</li>
<li>
<p>
<strong>Creación de una máquina virtual</strong>
</p>
</li>
</ol></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//note.png" alt="Note">
</td>
<td class="content">Las secciones utilizadas en este apartado se describen detalladamente en el apartado <em>Plataforma</em> de la guía <em>El WAT paso a paso</em>.</td>
</tr></table>
</div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//warning.png" alt="Warning">
</td>
<td class="content">La cuenta de administrador que utilicemos en el WAT para llevar a cabo las siguientes acciones deberá tener los privilegios necesarios. Si no se tuvieran todos, es posible que alguna opción o sección no esté disponible.</td>
</tr></table>
</div>
<div class="sect2">
<h3 id="_creación_de_un_nodo">2.1. Creación de un Nodo</h3>
<div class="paragraph"><p>Un nodo en el WAT corresponde con un <em>servidor QVD</em>, por lo cual tendremos que tener configurado y corriendo un servidor QVD.</p></div>
<div class="paragraph"><p>Además debe ser <em>accesible</em>, debemos <em>conocer su dirección IP</em>.</p></div>
<div class="paragraph"><p>Para crear un nodo seguiremos los siguientes pasos:</p></div>
<div class="ulist"><ul>
<li>
<p>
Nos situaremos en la <em>sección Plataforma</em>. Esta es la sección activa por defecto tras iniciar sesión.
</p>
</li>
<li>
<p>
Accederemos al <em>apartado Nodos del menú</em>.
</p>
</li>
<li>
<p>
Haremos click en el botón <em>Nuevo nodo</em>.
</p>
</li>
<li>
<p>
Rellenaremos el formulario de creación.
</p>
<div class="ulist"><ul>
<li>
<p>
Asignaremos un <em>nombre</em> al nodo.
</p>
</li>
<li>
<p>
Asociaremos la <em>dirección IP</em> del servidor QVD.
</p>
</li>
<li>
<p>
Opcionalmente podremos crearle <em>otras propiedades</em> al nodo para gestión interna de nuestros scripts o simplemente añadir información.
</p>
</li>
</ul></div>
</li>
<li>
<p>
Comprobaremos que el nodo se ha creado correctamente viendo que aparece en la vista listado.
</p>
</li>
<li>
<p>
Una vez creado, deberemos comprobar que el nodo se encuentra en el estado <em>Corriendo</em>.
</p>
<div class="ulist"><ul>
<li>
<p>
<em>Desde la vista listado</em>: Aparecerá un icono de play en la columna informativa.
</p>
</li>
<li>
<p>
<em>Desde la vista detalle</em> haciendo click en el nombre del nodo en la vista listado: Entre sus atributos aparece el estado del nodo.
</p>
</li>
</ul></div>
</li>
</ul></div>
</div>
<div class="sect2">
<h3 id="_creación_de_un_osf">2.2. Creación de un OSF</h3>
<div class="paragraph"><p>Los OSFs son la forma de agrupar las imágenes de disco en QVD.</p></div>
<div class="paragraph"><p>Por ello, al menos habrá que tener uno para crear una imagen de disco.</p></div>
<div class="paragraph"><p>Además de agruparlas definen ciertos parámetros en su ejecución, como la memoria o el almacenamiento de usuario.</p></div>
<div class="paragraph"><p>Para crear un OSF seguiremos los siguientes pasos:</p></div>
<div class="ulist"><ul>
<li>
<p>
Nos situaremos en la <em>sección Plataforma</em>. Esta es la sección activa por defecto tras iniciar sesión.
</p>
</li>
<li>
<p>
Accederemos al <em>apartado OS Flavours del menú</em>.
</p>
</li>
<li>
<p>
Haremos click en el botón <em>Nuevo OS Flavour</em>.
</p>
</li>
<li>
<p>
Rellenaremos el formulario de creación.
</p>
<div class="ulist"><ul>
<li>
<p>
Asignaremos un <em>nombre</em> al OSF.
</p>
</li>
<li>
<p>
Definiremos la <em>memoria</em> que dispondrán las imágenes asociadas a este OSF. Si dejamos en blanco este campo se asignarán por defecto 256 MB.
</p>
</li>
<li>
<p>
Asignaremos <em>una cuota de almacenamiento de usuario</em> para las imágenes asociadas a este OSF. Si no queremos disponer de esta característica basta con dejar este campo a 0.
</p>
</li>
<li>
<p>
Opcionalmente podremos crearle <em>otras propiedades</em> al OSF para gestión interna de nuestros scripts o simplemente añadir información.
</p>
</li>
</ul></div>
</li>
<li>
<p>
Comprobaremos que el OSF se ha creado correctamente viendo que aparece en la vista listado.
</p>
</li>
</ul></div>
</div>
<div class="sect2">
<h3 id="_creación_de_una_imagen_de_disco">2.3. Creación de una imagen de disco</h3>
<div class="paragraph"><p>La creación de las imágenes de disco que serán montadas por QVD se puede realizar de <strong>3 formas</strong>:</p></div>
<div class="ulist"><ul>
<li>
<p>
Seleccionando una imagen de entre las disponibles en el <strong>directorio <em>staging</em></strong> del servidor
</p>
</li>
<li>
<p>
Subiendo una imagen desde <strong>nuestra computadora</strong>
</p>
</li>
<li>
<p>
Proporcionando la <strong>URL</strong> de una imagen, que se descargará y alojará en el servidor
</p>
</li>
<li>
<p>
Proporcionando la <strong>URL</strong> de una imagen, que se descargará y alojará en el servidor
</p>
</li>
</ul></div>
<div class="paragraph"><p>En este caso <strong>optaremos por subir la imagen desde nuestra computadora</strong>.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
La creación de la imagen se puede realizar desde <em>2 secciones</em>
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="ulist"><ul>
<li>
<p>
Desde la sección <em>Imágenes de disco</em>.
</p>
<div class="ulist"><ul>
<li>
<p>
Accederemos al <em>apartado Imágenes de disco del menú</em> desde la <em>sección Plataforma</em>.
</p>
</li>
<li>
<p>
Haremos click en el botón <em>Nueva Imagen de disco</em>.
</p>
</li>
</ul></div>
</li>
<li>
<p>
Desde la sección <em>OS Flavours</em>.
</p>
<div class="ulist"><ul>
<li>
<p>
Accederemos al <em>apartado OS Flavours del menú</em> desde la <em>sección Plataforma</em>.
</p>
</li>
<li>
<p>
Escogemos el OSF al que queremos asociar la nueva imagen de disco y hacemos click en su nombre para acceder a su vista detalle.
</p>
</li>
<li>
<p>
En la parte derecha de la vista, encontramos un cuadro con las imágenes de disco asociadas al OS Flavour. Haremos click en el botón Nueva Imagen de disco situado en ese cuadro.
</p>
</li>
</ul></div>
</li>
</ul></div>
</div></div>
</dd>
<dt class="hdlist1">
Rellenaremos el formulario de creación
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="ulist"><ul>
<li>
<p>
Seleccionaremos <em>la imagen de disco</em> navegando por nuestro sistema de ficheros.
</p>
</li>
<li>
<p>
Podemos definir una <em>versión de la imagen</em>. Si dejamos este campo en blanco se generará una versión automática basada en la fecha de creación (Ej.: 2015-05-03-000).
</p>
</li>
<li>
<p>
Se puede definir que la imagen sea la <em>imagen por defecto</em> del OSF. Si es la primera imagen que se crea en un OSF, este campo no tendrá relevancia, ya que si solo hay una imagen en un OSF, ésta será la imagen por defecto.
</p>
</li>
<li>
<p>
Opcionalmente se le pueden asignar <em>tags</em> a la imagen para poder identificarla desde el gestor de máquinas virtuales. Estos tags son únicos por OSF. Si asignamos un tag que ya tiene otra imagen del mismo OSF, el tag será cambiado de imagen, evitando la duplicidad.
</p>
</li>
<li>
<p>
Opcionalmente podremos crearle <em>otras propiedades</em> a la imagen para gestión interna de nuestros scripts o simplemente añadir información.
</p>
</li>
</ul></div>
</div></div>
</dd>
<dt class="hdlist1">
Comprobaremos que la imagen se ha creado correctamente
</dt>
<dd>
<div class="openblock">
<div class="content">
</div></div>
</dd>
</dl></div>
</div>
<div class="sect2">
<h3 id="_creación_de_un_usuario">2.4. Creación de un usuario</h3>
<div class="paragraph"><p>Toda máquina virtual estará asignada a un usuario, por lo que tendremos que tener al menos uno en el sistema.</p></div>
<div class="paragraph"><p>Para crear un usuario seguiremos los siguientes pasos:</p></div>
<div class="ulist"><ul>
<li>
<p>
Nos situaremos en la <em>sección Plataforma</em>. Esta es la sección activa por defecto tras iniciar sesión.
</p>
</li>
<li>
<p>
Accederemos al <em>apartado Usuarios del menú</em>.
</p>
</li>
<li>
<p>
Haremos click en el botón <em>Nuevo Usuario</em>.
</p>
</li>
<li>
<p>
Rellenaremos el formulario de creación.
</p>
<div class="ulist"><ul>
<li>
<p>
Asignaremos un <em>nombre</em> al Usuario. Este nombre será único en el sistema.
</p>
</li>
<li>
<p>
Le asignaremos una contraseña. Esta contraseña será la que el usuario utilice para conectarse a sus máquinas virtuales.
</p>
</li>
<li>
<p>
Opcionalmente podremos crearle <em>otras propiedades</em> al OSF para gestión interna de nuestros scripts o simplemente añadir información.
</p>
</li>
</ul></div>
</li>
<li>
<p>
Comprobaremos que el usuario se ha creado correctamente viendo que aparece en la vista listado.
</p>
</li>
</ul></div>
</div>
<div class="sect2">
<h3 id="_creación_de_una_máquina_virtual">2.5. Creación de una máquina virtual</h3>
<div class="paragraph"><p>Teniendo ya creado al menos un usuario y una imagen de disco, ya es posible crear una máquina virtual.</p></div>
<div class="paragraph"><p>La creación de máquinas virtuales se puede llevar a cabo desde dos pantallas:</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Desde la vista listado de máquinas virtuales
</dt>
<dd>
<div class="ulist"><ul>
<li>
<p>
Nos situaremos en la <em>sección Plataforma</em>. Esta es la sección activa por defecto tras iniciar sesión.
</p>
</li>
<li>
<p>
Accederemos al <em>apartado Máquinas virtuales del menú</em>.
</p>
</li>
<li>
<p>
Haremos click en el botón <em>Nueva Máquina virtual</em>.
</p>
</li>
<li>
<p>
Rellenaremos el formulario de creación.
</p>
<div class="ulist"><ul>
<li>
<p>
Asignaremos un <em>nombre</em> a la máquina virtual.
</p>
</li>
<li>
<p>
Escogeremos el <em>usuario</em> al que queremos asignar la máquina virtual. Este dato no podrá ser cambiado más adelante.
</p>
</li>
<li>
<p>
Escogeremos el <em>OSF</em> que deseemos. Este dato no podrá ser cambiado más adelante.
</p>
</li>
<li>
<p>
Escogeremos el <em>tag de la imagen</em> que queremos usar en la máquina virtual. En este control se encontrarán las versiones y tags de las imágenes pertenecientes al OSF seleccionado en el control anterior del formulario, así como los tags especiales <em>head</em> y <em>default</em> que servirán para utilizar la última imagen creada del OSF y la establecida como imagen por defecto en el OSF respectivamente.
</p>
</li>
<li>
<p>
Opcionalmente podremos crearle <em>otras propiedades</em> a la Máquina virtual para gestión interna de nuestros scripts o simplemente añadir información.
</p>
</li>
</ul></div>
</li>
<li>
<p>
Comprobaremos que la máquina virtual se ha creado correctamente viendo que aparece en la vista listado.
</p>
</li>
</ul></div>
</dd>
<dt class="hdlist1">
Desde la vista detalle de un usuario
</dt>
<dd>
<div class="ulist"><ul>
<li>
<p>
Nos situaremos en la <em>sección Plataforma</em>. Esta es la sección activa por defecto tras iniciar sesión.
</p>
</li>
<li>
<p>
Accederemos al <em>apartado Usuarios del menú</em>.
</p>
</li>
<li>
<p>
Escogemos el usuario al que queremos asociar la nueva máquina virtual y hacemos click en su nombre para acceder a su vista detalle.
</p>
</li>
<li>
<p>
En la parte derecha de la vista, encontramos un cuadro con las máquinas virtuales asociadas al usuario. Haremos click en el botón <em>Nueva Máquina virtual</em> situado en ese cuadro.
</p>
</li>
<li>
<p>
Rellenaremos el formulario de creación.
</p>
<div class="ulist"><ul>
<li>
<p>
Asignaremos un <em>nombre</em> a la máquina virtual.
</p>
</li>
<li>
<p>
Escogeremos el <em>OSF</em> que deseemos. Este dato no podrá ser cambiado más adelante.
</p>
</li>
<li>
<p>
Escogeremos el <em>tag de la imagen</em> que queremos usar en la máquina virtual. En este control se encontrarán las versiones y tags de las imágenes pertenecientes al OSF seleccionado en el control anterior del formulario, así como los tags especiales <em>head</em> y <em>default</em> que servirán para utilizar la última imagen creada del OSF y la establecida como imagen por defecto en el OSF respectivamente.
</p>
</li>
<li>
<p>
Opcionalmente podremos crearle <em>otras propiedades</em> a la Máquina virtual para gestión interna de nuestros scripts o simplemente añadir información.
</p>
</li>
</ul></div>
</li>
<li>
<p>
Comprobaremos que la máquina virtual se ha creado correctamente viendo que aparece en el cuadro de máquinas virtuales asociadas al usuario.
</p>
</li>
</ul></div>
</dd>
</dl></div>
</div>
<div class="sect2">
<h3 id="_arrancado_de_una_máquina_virtual">2.6. Arrancado de una máquina virtual</h3>
<div class="paragraph"><p>Una vez creada la máquina virtual, necesitamos arrancarla para que el usuario se pueda conectar a ella.</p></div>
<div class="paragraph"><p>Una máquina virtual se puede arrancar desde dos pantallas:</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Desde la vista detalle de la máquina virtual
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Los pasos son:</p></div>
<div class="ulist"><ul>
<li>
<p>
Nos situaremos en la <em>sección Plataforma</em>. Esta es la sección activa por defecto tras iniciar sesión.
</p>
</li>
<li>
<p>
Accederemos al <em>apartado Máquinas virtuales del menú</em>.
</p>
</li>
<li>
<p>
Escogemos la máquina virtual que queremos arrancar y hacemos click en su nombre para acceder a su vista detalle.
</p>
</li>
<li>
<p>
En la parte derecha localizamos el panel de estado de ejecución.
</p>
</li>
<li>
<p>
Hacemos click en el botón de arrancar la máquina virtual situado a la derecha del panel de estado de ejecución.
</p>
</li>
</ul></div>
<div class="paragraph"><p>Observamos como el panel de estado de ejecución cambia de <em>Detenido</em> a <em>Arrancando</em>.</p></div>
<div class="paragraph"><p>Este proceso <em>puede tardar</em> en completarse, <em>especialmente si es la primera vez</em> que arrancamos una máquina.</p></div>
<div class="paragraph"><p>Cuando el proceso acabe, el panel de estado de ejecución cambiará mostrando que la máquina está corriendo y el nombre del Nodo donde corre. Además se podrán desplegar los parámetros de ejecución. Estos valores, como la dirección IP o la imagen de disco utilizadas, no cambiarán mientras la máquina esté en ejecución aunque se editen dichos valores en la máquina virtual.</p></div>
</div></div>
</dd>
<dt class="hdlist1">
Desde la vista listado de máquinas virtuales
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Esta vía permite arrancar varias máquinas virtuales a la vez, aunque en este caso lo utilizaremos como un método cómodo de arrancar una sola máquina virtual.</p></div>
<div class="paragraph"><p>Los pasos son:</p></div>
<div class="ulist"><ul>
<li>
<p>
Nos situaremos en la <em>sección Plataforma</em>. Esta es la sección activa por defecto tras iniciar sesión.
</p>
</li>
<li>
<p>
Accederemos al <em>apartado Máquinas virtuales del menú</em>.
</p>
</li>
<li>
<p>
Seleccionaremos la máquina virtual que queramos arrancar marcando la casilla de verificación correspondiente de la primera columna en la lista.
</p>
</li>
<li>
<p>
Bajo la lista de máquinas virtuales, en el control de acciones sobre elementos seleccionados, escogemos <em>Arrancar</em>.
</p>
</li>
<li>
<p>
Hacemos click en el botón <em>Aplicar</em>.
</p>
</li>
</ul></div>
<div class="paragraph"><p>Observarmos como, en la columna informativa del elemento seleccionado, cambia el icono de stop a un icono animado que nos indica que la máquina está en proceso de arrancado. Si se encuentra visibe la columna con el Nodo asociado a la máquina, esta cambiará en este momento mostrando el Nodo donde la máquina está arrancando.</p></div>
<div class="paragraph"><p>Este proceso <em>puede tardar</em> en completarse, <em>especialmente si es la primera vez</em> que arrancamos una máquina.</p></div>
<div class="paragraph"><p>Cuando el proceso acabe, el icono cambiará a un icono de play, que nos indicará que la máquina virtual ha arrancado.</p></div>
<div class="paragraph"><p>Si en vez de el icono de play, vuelve a aparecer el icono de stop, significará que ha habido algún problema con el arrancado de la máquina y se ha detenido. Esto puede suceder por múltiples causas, y habrá que investigar en el servidor de QVD lo sucedido.</p></div>
</div></div>
</dd>
</dl></div>
</div>
<div class="sect2">
<h3 id="_conexión_del_usuario">2.7. Conexión del usuario</h3>
<div class="paragraph"><p>Una vez tengamos la máquina virtual arrancada, el usuario ya podrá conectarse a ella.</p></div>
<div class="paragraph"><p>Para ello utilizará el cliente de QVD y se conectará utilizando la dirección del servidor y el usuario/contraseña que se le asignaron desde el WAT.</p></div>
<div class="paragraph"><p>Cuando el cliente está conectado, esto se refleja en las vistas listado y detalle de las máquinas virtuales.</p></div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_actualización_de_imagen">3. Actualización de imagen</h2>
<div class="sectionbody">
<div class="paragraph"><p>Veremos cómo se actualiza la imagen utilizada por una máquina virtual.</p></div>
<div class="paragraph"><p>El proceso consiste en crear una imagen con la nueva versión que queramos utilizar y cambiar la imagen asignada a la máquina virtual por la nueva.</p></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//note.png" alt="Note">
</td>
<td class="content">Las secciones utilizadas en este apartado se describen detalladamente en el apartado <em>Plataforma</em> de la guía <em>El WAT paso a paso</em>.</td>
</tr></table>
</div>
<div class="sect2">
<h3 id="_creación_de_nueva_imagen_de_disco">3.1. Creación de nueva imagen de disco</h3>
<div class="paragraph"><p>Debemos crear una nueva imagen de disco en el WAT con la versión de la imagen que queramos utilizar en lugar de la actual.</p></div>
<div class="paragraph"><p><strong>Es importante que creemos la imagen en el OSF asociado a la máquina virtual.</strong></p></div>
<div class="paragraph"><p>El proceso de creación de una imagen de disco se puede encontrar de forma detallada en el apartado <em>Creación de una imagen de disco</em> del manual.</p></div>
</div>
<div class="sect2">
<h3 id="_asignación_de_nueva_imagen">3.2. Asignación de nueva imagen</h3>
<div class="paragraph"><p>Hay varias formas de gestionar las imágenes asociadas a las máquinas virtuales.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Teniendo asignado a la máquina virtual el tag <em>head</em>
</dt>
<dd>
<p>
Si la máquina virtual tiene asignado el tag <em>head</em> siempre tendrá asociada la última imagen creada del OSF, por lo que con crearla bastará.
</p>
</dd>
<dt class="hdlist1">
Teniendo asignado a la máquina virtual el tag <em>default</em>
</dt>
<dd>
<p>
Si la máquina virtual tiene asignado el tag <em>default</em> tendrá asociada la imagen marcada como imagen por defecto en el OSF. Deberemos marcar la imagen que queramos como imagen por defecto si queremos que esta máquina virtual sea asociada a la nueva imagen.
</p>
</dd>
<dt class="hdlist1">
Teniendo asignado a la máquina virtual otro tag
</dt>
<dd>
<p>
Si en la máquina virtual tenemos asignado un tag identificativo de la imagen que ejecuta, deberemos cambiar este tag para seleccionar la nueva imagen en lugar de la actual.
</p>
</dd>
</dl></div>
<div class="sect3">
<h4 id="_cambio_de_tag_en_máquina_virtual">3.2.1. Cambio de tag en máquina virtual</h4>
<div class="paragraph"><p>Para cambiar de tag asociado a una máquina virtual hay que seguir los siguientes pasos:</p></div>
<div class="ulist"><ul>
<li>
<p>
Nos situaremos en la <em>sección Plataforma</em>. Esta es la sección activa por defecto tras iniciar sesión.
</p>
</li>
<li>
<p>
Accederemos al <em>apartado Máquinas virtuales del menú</em>.
</p>
</li>
<li>
<p>
Escogemos la máquina virtual que queremos editar y hacemos click en su nombre para acceder a su vista detalle.
</p>
</li>
<li>
<p>
En la vista detalle, a la derecha del nombre de la máquina virtual, entre los botones de acción, hacemos click en el <em>botón de Edición</em>.
</p>
</li>
<li>
<p>
En el formulario de edición cambiamos el tag de imagen y seleccionamos la versión de la nueva imagen de disco creada o bien alguno de sus tags.
</p>
</li>
<li>
<p>
Hacemos click en <em>Actualizar</em>
</p>
</li>
</ul></div>
<div class="paragraph"><p>Para comprobar que el cambio se ha hecho efectivo, observamos que en los atributos de la máquina virtual aparece el tag de imagen que hemos seleccionado y la imagen de disco correcta. Debe salir la última que hemos creado.</p></div>
<div class="paragraph"><p>Si la máquina está corriendo, podemos ver los parámetros de ejecución en el panel de estado de ejecución y comprobar que ahí sigue saliendo la imagen antigua, ya que <em>el cambio de imagen no se puede hacer en caliente, hará falta reiniciar la máquina virtual</em>.</p></div>
</div>
<div class="sect3">
<h4 id="_cambio_de_imagen_por_defecto">3.2.2. Cambio de imagen por defecto</h4>
<div class="paragraph"><p>Una imagen se puede establecer como imagen por defecto en varias pantallas.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Desde la vista detalle de la imagen
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="ulist"><ul>
<li>
<p>
Nos situaremos en la <em>sección Plataforma</em>. Esta es la sección activa por defecto tras iniciar sesión.
</p>
</li>
<li>
<p>
Accederemos al <em>apartado Imágenes de disco del menú</em>.
</p>
</li>
<li>
<p>
Escogemos la imagen que queremos establecer como imagen por defecto y hacemos click en su nombre para acceder a su vista detalle.
</p>
</li>
<li>
<p>
En la vista detalle, a la derecha del nombre de la imagen, entre los botones de acción, hacemos click en el <em>botón de Edición</em>.
</p>
</li>
<li>
<p>
En el formulario de edición activamos la casilla de verificación de <em>por defecto</em>.
</p>
</li>
<li>
<p>
Hacemos click en <em>Actualizar</em>
</p>
</li>
</ul></div>
<div class="paragraph"><p>Para comprobar que el cambio se ha hecho efectivo, observamos que en los atributos de la imagen aparece un atributo "Por defecto" avisándonos que esta es la imagen pro defecto de su OSF.</p></div>
<div class="paragraph"><p>Si ahora vamos a la vista detalle de la máquina virtual, observaremos que en sus atributos aparece la imagen de disco que acabamos de editar.</p></div>
<div class="paragraph"><p>Si la máquina está corriendo, como vimos con anterioridad, en los parámetros de ejecución aún saldrá la imagen anterior hasta que la reiniciemos.</p></div>
</div></div>
</dd>
<dt class="hdlist1">
Desde la vista detalle del OSF
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="ulist"><ul>
<li>
<p>
Nos situaremos en la <em>sección Plataforma</em>. Esta es la sección activa por defecto tras iniciar sesión.
</p>
</li>
<li>
<p>
Accederemos al <em>apartado OS Flavours del menú</em>.
</p>
</li>
<li>
<p>
Escogemos el OSF al que pertenece la imagen que queremos establecer como imagen por defecto y hacemos click en su nombre para acceder a su vista detalle.
</p>
</li>
<li>
<p>
A la derecha de la vista detalle del OSF hay un cuadro con las imágenes asociadas al OSF. Una de las columnas de este listado son casillas de verificación para establecer una imagen como imagen por defecto. Hacemos click en la casilla de verificación de la imagen.
</p>
</li>
</ul></div>
<div class="paragraph"><p>Para comprobar que el cambio se ha hecho efectivo, observamos que en la columna informativa de la lista de imágenes de disco ha cambiado la imagen que tiene el icono que indica la imagen por defecto.</p></div>
<div class="paragraph"><p>Si ahora vamos a la vista detalle de la máquina virtual, observaremos que en sus atributos aparece la imagen de disco que acabamos de editar.</p></div>
<div class="paragraph"><p>Si la máquina está corriendo, como vimos con anterioridad, en los parámetros de ejecución aún saldrá la imagen anterior hasta que la reiniciemos.</p></div>
</div></div>
</dd>
</dl></div>
</div>
</div>
<div class="sect2">
<h3 id="_reiniciar_máquina_virtual">3.3. Reiniciar máquina virtual</h3>
<div class="paragraph"><p>Para que se haga efectivo el cambio de imagen, tendremos que parar y volver a arrancar la máquina.</p></div>
<div class="paragraph"><p>La parada de una máquina virtual se realiza de forma idéntica al arrancado. Podemos ver este proceso de forma detallada en el apartado <em>Arrancado de una máquina virtual</em> del manual.</p></div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_situaciones_de_bloqueo">4. Situaciones de bloqueo</h2>
<div class="sectionbody">
<div class="paragraph"><p>Hay diferentes situaciones en las que por un error de configuración o un descuido, podemos perder alguna funcionalidad. A esto le llamaremos situación de bloqueo.</p></div>
<div class="paragraph"><p>Veremos algunas de las situaciones que pueden darse, ya que puede haber más, y cómo solucionarlas.</p></div>
<div class="openblock">
<div class="content">
<div class="ulist"><ul>
<li>
<p>
Borrar el único administrador ya que no podríamos gestionar el WAT puesto que para crear un administrador es necesario otro administrador.
</p>
</li>
<li>
<p>
Modificar los permisos de tal manera que no quede ningún administrador que pueda gestionar los permisos.
</p>
</li>
<li>
<p>
Olvidar la contraseña del único administrador que pueda gestionar los permisos.
</p>
</li>
</ul></div>
</div></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Solución
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Para recuperar las funcionalidades perdidas podremos acceder al WAT en un modo especial. El uso de este modo lo encontraremos en la guía Modo de recuperación.</p></div>
</div></div>
</dd>
</dl></div>
</div>
</div>
<div class="sect1">
<h2 id="_modo_de_recuperación">5. Modo de recuperación</h2>
<div class="sectionbody">
<div class="paragraph"><p>Debido a algun cambio de configuración, de permisos o por el olvido de alguna contraseña, nos podemos ver en la situación de pérdida de funcionalidades.</p></div>
<div class="paragraph"><p>Esta situación se dará cuando no tengamos ningún administrador con la capacidad de gestionar permisos, ya que en caso contrario los podremos recuperar.</p></div>
<div class="paragraph"><p>Para restaurar las funcionalidades perdidas, el WAT dispone de un administrador especial de recuperación. Sus credenciales son:</p></div>
<div class="literalblock">
<div class="content monospaced">
<pre>Usuario: batman
Contraseña: (Consulte al equipo de soporte)</pre>
</div></div>
<div class="paragraph"><p>Este administrador tiene las siguientes características:</p></div>
<div class="ulist"><ul>
<li>
<p>
No aparecerá en la lista de administradores del sistema.
</p>
</li>
<li>
<p>
No se puede visualizar o alterar como otros administradores.
</p>
</li>
<li>
<p>
Tiene unos permisos predefinidos inalterables:
</p>
<div class="ulist"><ul>
<li>
<p>
Gestión de WAT: Configuración, Administradores, Roles.
</p>
</li>
<li>
<p>
Gestión de QVD: Configuración.
</p>
</li>
</ul></div>
</li>
</ul></div>
<div class="paragraph"><p>De esta forma, cuando nos veamos en una situación de bloqueo, podremos entrar con el administrador de recuperación y solucionarla, por ejemplo, con las siguientes acciones:</p></div>
<div class="ulist"><ul>
<li>
<p>
Cambiar la contraseña extraviada
</p>
</li>
<li>
<p>
Otorgar los permisos perdidos a un administrador
</p>
</li>
<li>
<p>
Crear un administrador que hayamos podido eliminar
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
<h2 id="_gestionar_administradores_y_permisos">6. Gestionar Administradores y Permisos</h2>
<div class="sectionbody">
<div class="paragraph"><p>La gestión de administradores y permisos está enmarcada dentro de la sección general <strong>Gestión del WAT</strong>.</p></div>
<div class="paragraph"><p>Las dos secciones útiles para esta gestión son:</p></div>
<div class="ulist"><ul>
<li>
<p>
<strong>Administradores</strong>: Creación/Borrado de administradores así como asignación de permisos.
</p>
</li>
<li>
<p>
<strong>Roles</strong>: Gestión de roles.
</p>
</li>
</ul></div>
<div class="paragraph"><p>QVD cuenta por defecto con algunos <strong>roles predefinidos</strong> que nos pueden ser útiles si no necesitamos permisos muy específicos.</p></div>
<div class="sect2">
<h3 id="_gestión_de_administradores">6.1. Gestión de administradores</h3>
<div class="paragraph"><p>La acción de crear un administrador nos permitirá asignarle un nombre de usuario, una contraseña, una descripción, el idioma en el que visualizará el WAT y los roles con los que obtendrá permiso para ver y hacer diferentes cosas. Para que pueda acceder al WAT será necesario asignarle al menos un rol.</p></div>
<div class="paragraph"><p>El proceso será:</p></div>
<div class="ulist"><ul>
<li>
<p>
<strong>Crear el administrador con el botón “Nuevo administrador”</strong> de la vista listado de administradores. Escogeremos una contraseña sencilla para que al administrador no le cueste mucho iniciar sesión, aunque le advertiremos que deberá cambiarla por una contraseña personal.
</p>
</li>
<li>
<p>
<strong>Tras la creación</strong>, el administrador aparecerá en la lista. En la columna de información del administrador recién creado aparecerá un icono que nos indicará qué roles tiene asignados o un icono de advertencia si no tenemos ningún rol asociado. <strong>Haremos click en el nombre</strong> para acceder a la vista detalle para una configuración más profunda.
</p>
</li>
<li>
<p>
En la vista detalle encontraremos una lista con los roles asignados. Tendremos como apoyo un árbol de ACLs que tiene asignados el administrador en cada momento. Éste árbol tiene dos modalidades que analizaremos en la gestión de roles.
</p>
</li>
</ul></div>
<div class="paragraph"><p>Observando como aparecen/desaparecen ACLs en el árbol al asignar/desasignar roles, veremos exactamente qué permisos estamos dándole al administrador.</p></div>
<div class="paragraph"><p>Para nuestros primeros administradores podemos utilizar los roles disponibles por defecto en el sistema.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Root
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Rol con todos los ACLs posibles del sistema. O lo que es lo mismo, control total de lectura, actualización, operación, creación y borrado en cada uno de los elementos. Es el rol asociado al usuario “admin” creado por defecto en WAT.</p></div>
</div></div>
</dd>
<dt class="hdlist1">
Operator L1
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Rol con todos los <strong>ACLs de lectura</strong> de Imágenes de disco, OSFs, Usuarios y Máquinas virtuales.</p></div>
</div></div>
</dd>
<dt class="hdlist1">
Operator L2
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Rol con los ACLs del Operator L1 y además los ACLs de operación: Bloquear/Desbloquear elementos, Arrancar/Parar máquinas virtuales, Desconectar usuarios&#8230;</p></div>
</div></div>
</dd>
<dt class="hdlist1">
Operator L3
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Rol con los ACLs del Operator L2 y además los ACLs de creación, actualización y borrado sobre los elementos de QVD, y los ACLs de administración de Nodos.</p></div>
</div></div>
</dd>
</dl></div>
<div class="paragraph"><p>Cuando nos surja la necesidad de crear administradores con permisos más específicos, será cuando necesitemos abordar la gestión de roles.</p></div>
</div>
<div class="sect2">
<h3 id="_gestión_de_roles">6.2. Gestión de roles</h3>
<div class="paragraph"><p>En la búsqueda de administradores con permisos personalizados, crearemos aquellos roles que necesitemos. Para facilitar nuestra labor, una buena estrategia será crear roles reutilizables, buscando que tengan los ACLs comunes que queremos para un conjunto de administradores.</p></div>
<div class="paragraph"><p>Al igual que con los administradores, al crear un rol, podremos asignarle ACLs al crearlo o crearlo vacío, en cuyo caso tendremos que editarlo para asignarle ACLs.</p></div>
<div class="paragraph"><p>El proceso será:</p></div>
<div class="ulist"><ul>
<li>
<p>
<strong>Crear el rol con el botón “Nuevo rol”</strong> de la vista listado de roles. Escogeremos un nombre que tenga alguna relación con los permisos que va a tener para que sea fácilmente entendible en el futuro.
</p>
<div class="openblock">
<div class="content">
<div class="literalblock">
<div class="content monospaced">
<pre>Por ejemplo: Provisionador de usuarios base</pre>
</div></div>
</div></div>
</li>
<li>
<p>
<strong>Tras la creación</strong>, el rol aparecerá en la lista. En las columnas de recuento de ACLs y Roles heredados de cada rol, aparecerá un 0. <strong>Haremos click en el nombre</strong> para acceder a la vista detalle.
</p>
</li>
<li>
<p>
En la vista detalle tenemos <strong>dos herramientas</strong> disponibles:
</p>
<div class="openblock">
<div class="content">
<div class="ulist"><ul>
<li>
<p>
<strong>Herencia de ACLs</strong>: Se podrán heredar grupos de ACLs.
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Para facilitar la tediosa labor de asignar ACLs a un rol, se pueden crear vínculos de herencia entre grupos de ACLs.</p></div>
<div class="paragraph"><p>Existen dos tipos de grupos de ACLs de los que se puede heredar:</p></div>
<div class="ulist"><ul>
<li>
<p>
<strong>Roles</strong>: Serán todos aquellos roles del WAT, ya vengan por defecto o se hayan creado posteriormente.
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Son los roles normales que <strong>se muestran en la lista de roles</strong> y a parte de poder heredarse, se pueden asignar a los administradores.</p></div>
<div class="paragraph"><p>Existe una <strong>protección frente a bucles infinitos de herencia</strong> por la que <em>un rol A no puede heredar de un rol B si el rol B ya hereda del rol A</em>.</p></div>
</div></div>
</li>
<li>
<p>
<strong>Plantillas</strong>: Las plantillas son agrupaciones de ACLs cuyo único objetivo es ser heredadas por los roles. <strong>Su utilización es recomendada</strong> por razones de mantenibilidad.
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Los nombres de las plantillas son descriptivos de los ACLs que poseen, haciendo referencia normalmente a qué elementos afectan y en qué grado.</p></div>
<div class="literalblock">
<div class="content monospaced">
<pre>Por ejemplo: Users Creator, Images Operator, VMs Manager, Roles Eraser...</pre>
</div></div>
<div class="paragraph"><p>En las <strong>futuras actualizaciones</strong> del WAT puedan aparecer <strong>nuevos ACLs</strong>. Para evitar tener que re-configurar los ACLs de nuestros administradores tras una actualización, <strong>se recomienda utilizar la herencia de Plantillas</strong> para configurar nuestros roles. Estos roles serán actualizados con el WAT conteniendo los nuevos ACLs de una forma coherente con su uso.</p></div>
<div class="literalblock">
<div class="content monospaced">
<pre>Por ejemplo: Si se añadie un nuevo campo en la vista de usuarios, el ACL que permita su visualización será añadido el rol interno Users Reader. Los roles que hereden de este rol interno, se actualizarán y tendrán automáticamente dicho nuevo acceso.</pre>
</div></div>
</div></div>
</li>
</ul></div>
<div class="paragraph"><p>Cuando heredemos un rol o plantilla, observaremos como en el árbol de ACLs cambia, activándose los nuevos ACLs, sirviéndonos de guía sobre cuanto nos estamos acercando a los ACLs deseados a medida que configuramos el rol.</p></div>
<div class="paragraph"><p>Una ventaja de la herencia es que si en el futuro <strong>cambian los ACLs de un rol</strong>, todos los que lo hereden sufrirán sus cambios con él. Por eso hay que utilizar esta técnica con cuidado.</p></div>
<div class="paragraph"><p>Para conocer los roles y plantillas que una instalación de QVD incluye, ver la guía de usuario: <em>Referencia de ACLs Plantillas y Roles</em>.</p></div>
</div></div>
</li>
<li>
<p>
<strong>Árbol de ACLs</strong>: Se mostrarán los ACLs del sistema en forma de árbol con casillas de verificación.
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Seleccionaremos aquellos ACLs que queremos que el rol contenga, y así mismo deseleccionaremos los que queramos que deje de contener, hayan sido añadidos manualmente o provengan de la herencia de un rol o plantilla.</p></div>
<div class="paragraph"><p>Las ramas, a su vez, también disponen de casilla de verificación para seleccionar/deseleccionar ramas enteras con un solo click.</p></div>
<div class="paragraph"><p>Junto a cada ACL que provenga de un rol o plantilla heredado, aparecerá un icono. Al pasar el ratón sobre él nos aparecerá información a cerca de qué rol o plantilla procede.</p></div>
<div class="paragraph"><p><strong>Un ACL puede provenir de varios roles o plantillas</strong> si éstos tienen ACLs en común. Esto no tiene importancia más alla de que si dejamos de heredar un rol o plantilla de los que nos proporcionan estos ACLs no estaremos quitando el ACL, ya que aún permanecería heredado por otros. No obstante, ese ACL, como los demás, podrá ser eliminado manualmente deseleccionándolo desde el árbol de ACLs sin importar de cuantos roles o plantillas provenga.</p></div>
<div class="paragraph"><p>Según nuestras preferencias, podemos representar el árbol en <strong>dos clasificaciones</strong> distintas:</p></div>
<div class="ulist"><ul>
<li>
<p>
<strong>Por secciones</strong>: Si deseamos agrupar los ACLs según las secciones del WAT a las que afectan: usuarios, máquinas virtuales, nodos, administradores&#8230;
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Útil si queremos crear un rol que otorgue permisos con <strong>mucha profundidad pero poca amplitud</strong>.</p></div>
<div class="literalblock">
<div class="content monospaced">
<pre>Por ejemplo, permisos totales en usuarios y máquinas virtuales.</pre>
</div></div>
</div></div>
</li>
<li>
<p>
<strong>Por acciones</strong>: Si nos es más cómodo agrupar los ACLs según el tipo de acción que permiten: crear, eliminar, acceder a vista principal, filtrar&#8230;
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Útil si queremos crear un rol que otorgue permisos con <strong>poca profundidad y mucha amplitud</strong>.</p></div>
<div class="literalblock">
<div class="content monospaced">
<pre>Por ejemplo, permisos de solo lectura en casi todas las secciones.</pre>
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
<div class="paragraph"><p>Hay que tener cuidado con la gestión de administradores y permisos ya que si realizamos una acción equivocada, podríamos perder funcionalidades e incluso el acceso al WAT. Ver la sección <em>Situaciones de bloqueo</em> en el manual.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Actualización del administrador actual
</dt>
<dd>
<p>
Los ACLs se obtienen en el momento del login, por lo que si se deciden cambiar ACLs en el administrador actual, especialmente los de visualización de secciones, será necesario <strong>refrescar el navegador o iniciar sesión</strong> de nuevo para que se hagan efectivos.
</p>
</dd>
</dl></div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_referencia_de_acls_plantillas_y_roles">7. Referencia de ACLs, Plantillas y Roles</h2>
<div class="sectionbody">
<div class="paragraph"><p>En la siguiente guía de referencia se describen los diferentes ACLs del sistema así como las Plantillas y los Roles predefinidos.</p></div>
<div class="sect2">
<h3 id="_referencia_de_acls">7.1. Referencia de ACLs</h3>
<div class="paragraph"><p>Lista de ACLs repartidos por los distintos tipos de objetos a los que afectan. Cada categoría tiene una tabla donde hay una descipción corta, el código interno y una descripción más detallada para cada uno de los ACLs.</p></div>
<div class="sect3">
<h4 id="_acls_de_usuarios">7.1.1. ACLs de Usuarios</h4>
<table class="tableblock frame-all grid-all"
style="
width:100%;
">
<col style="width:33%;">
<col style="width:33%;">
<col style="width:33%;">
<thead>
<tr>
<th class="tableblock halign-left valign-top" >ACL </th>
<th class="tableblock halign-left valign-top" >Código ACL </th>
<th class="tableblock halign-left valign-top" >Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Crear usuarios</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.create.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Creación de usuarios incluyendo los ajustes iniciales para el nombre y la contraseña.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Configurar las propiedades durante la creación del usuario</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.create.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ajustes de las propiedades personalizables durante el proceso de creación de usuarios.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Eliminar usuarios</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.delete.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Eliminación de usuarios uno a uno.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Acceso a la vista detallada del usuario</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see-details.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Este ACL garantiza el acceso a la vista detallada. El dato mínimo es el nombre</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Acceso a la sección principal del usuario</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see-main.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Este ACL garantiza el acceso a la lista. El dato mínimo es el nombre</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver el estado de bloqueo del usuario</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Estado de bloqueo (bloqueado/desbloqueado) de los usuarios</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver creador del usuario</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Administrador WAT que creó un usuario.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver fecha de creación del usuario</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Fecha en la que se creó el usuario</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver descripción del usuario</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Descripción de los usuarios.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver identidad del usuario</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.id</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Base de datos identificativa de los usuarios. Útil para realizar llamadas desde CLI.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver propiedades del usuario</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Las propiedades personalizables de los usuarios.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver máquinas virtuales de los usuarios</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.vm-list</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver las máquinas virtuales de un usuario en vista detallada. Esta vista contiene: nombre, estado, bloqueo y fecha de expiración de cada mv</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver el estado de bloqueo de las máquinas virtuales del usuario</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.vm-list-block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">La información de bloqueo de las máquinas virtuales se muestra en la vista detallada del usuario</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver expiración de las máquinas virtuales del usuario</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.vm-list-expiration</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">La información de expiración de las máquinas virtuales se muestra en la vista detallada</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estado del funcionamiento de las máquinas virtuales del usuario</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.vm-list-state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">El estado (parado/iniciado) de las máquinas virtuales se muestra en la vista detallada del usuario</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver el estado del usuario de las máquinas virtuales del usuario</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.vm-list-user-state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">El estado de usuario (conectado/desconectado) de las máquinas virtuales se muestra en la vista detallada del usuario</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver número de máquinas virtuales del usuario</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.see.vms-info</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Número de máquinas virtuales total y desconectadas de este usuario</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estadística de número de usuarios</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.stats.blocked</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total de usuarios bloqueados en el usuario por superadministradores.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estadística del número de usuarios conectados</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.stats.connected-users</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total de usuarios conectados en al menos una máquina virtual</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estadística del número de usuarios bloqueados</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.stats.summary</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total de usuarios en el usuario actual o todo el sistema por superadministradores.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Bloqueo-Desbloqueo de usuarios</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.update.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar el estado de bloqueo de los usuarios (bloqueado/desbloqueado) uno a uno.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualización de la descripción del usuario</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.update.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualización de la descripción de los usuarios una a una.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar contraseña del usuario</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.update.password</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar contraseña de los usuarios.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar propiedades durante la actualización de usuarios</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">user.update.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar propiedades en el proceso de actualización del usuario una a una.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="_acls_de_máquinas_virtuales">7.1.2. ACLs de Máquinas virtuales</h4>
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
<th class="tableblock halign-left valign-top" >Código ACL    </th>
<th class="tableblock halign-left valign-top" >Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Crear máquinas virtuales</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.create.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Creación de las máquinas virtuales incluyendo los ajustes iniciales para el nombre, usuario y OS flavour.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Establecer la etiqueta en la creación de las máquinas virtuales</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.create.di-tag</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ajustes de la etiqueta de la imagen del disco durante el proceso de creación de las máquinas virtuales. Sin este ACL, el sistema establecerá "por defecto" automáticamente.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Establecer propiedades en la creación de las máquinas virtuales</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.create.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ajustes de las propiedades personalizables en el proceso de creación de las máquinas virtuales.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Eliminación máquinas virtuañes</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.delete.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Eliminación de máquinas virtuales una a una</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Acceso a la vista detallada de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see-details.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Este ACL garantiza el acceso a la vista detallada. El dato mínimo es el nombre.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Acceso a la sección principal de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see-main.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Este ACL garantiza el acceso a la lista. El dato mínimo es la imagen_disco.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estado de bloqueo de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Estado de bloqueo (bloqueado/desbloqueado) de las máquinas virtuales</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver creador de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Administrador WAT que creó la máquina virtual.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver fecha de creación de la mv</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Fecha en la que se creó la máquina virtual</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver descripción de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Descripción de la máquina virtual.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver imagen del disco de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.di</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Imágenes de disco usadas por cada máquina virtual</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver etiqueta de la imagen del disco de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.di-tag</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Etiqueta de la imagen del disco asignada a cada máquina virtual para definir la imagen de disco que se utilizará.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver versión de la imagen del disco de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.di-version</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Versión de la imagen del disco usada por cada máquina virtual</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver expiración de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.expiration</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Información sobre la expiración de las máquinas virtuales.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver Nodo de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.host</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Host que está haciendo funcionando cada máquina virtual</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver ID de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.id</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Base de datos identificativa de las máquinas virtuales. Útil para realizar llamadas desde CLI.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver dirección IP de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.ip</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Dirección IP actual de las máquinas virtuales.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver dirección MAC de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.mac</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Dirección MAC de la máquinas virtuales</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver dirección IP de la máquina virtual para el próximo arranque</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.next-boot-ip</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Dirección IP address que será asignada en el próximo arranque de las máquinas virtuales.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver OS Flavour de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.osf</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">OS flavours asignados a cada máquina virtual.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver puerto de serie de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.port-serial</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Puerto de serie asignado a una máquina virtual en funcionamiento.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver puerto SSH de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.port-ssh</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Puerto SSH asignado a una máquina virtual en funcionamiento.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver puerto VNC de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.port-vnc</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Puerto VNC asignado a una máquina virtual en funcionamiento.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver propiedades de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Propiedades customizables de las máquinas virtuales.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estado de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Estado de las máquinas virtuales (parado/iniciado)</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver usuario de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.user</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">El usuario propietario de las máquinas virtuales.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estado de conexión del usuario de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.see.user-state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Estado de usuario de una máquina virtual (conectado/desconectado)</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estadística del número de máquinas virtuales bloqueadas</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.stats.blocked</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Número total de máquinas virtuales bloqueadas en el usuario actual o en todo el sistema por superadministradores.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estadística de las máquinas virtuales a punto de expirar</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.stats.close-to-expire</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Información sobre las máquinas virtuales que expirarán que expirarán (expiración hard) en 7 días.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estadística de las máquinas virtuales en funcionamiento</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.stats.running-vms</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Número total de máquinas virtuales en el usuario actual o en todo el sistema por superadministradores.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estadística del número de máquinas virtuales</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.stats.summary</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Número total de máquinas virtuales en el usuario actual o en todo el sistema por superadministradores.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Bloquear-Desbloquear máquinas virtuales</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar el estado de bloqueo (bloqueado/desbloqueado) de las máquinas virtuales una a una.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar descripción de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar la descripción de las máquinas virtuales una a una.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar etiqueta de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update.di-tag</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar la etiqueta de la imagen del disco establecida en las máquinas virtuales una a una.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Desconectar usuario de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update.disconnect-user</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Desconectar el usuario conectado a la máquina virtual uno a uno.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar expiración de la máquina virtual</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update.expiration</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar la fecha de expiración de las máquinas virtuales una a una.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar el nombre de las máquinas virtuales</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update.name</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar el nombre de las máquinas virtuales.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar propiedades al actualizar las máquinas virtuales</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar propiedades en la máquina virtual una a una durante el proceso de actualización.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Iniciar-Parar las máquinas virtuales</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">vm.update.state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Iniciar/Detener máquinas virtuales una a una.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="_acls_de_nodos">7.1.3. ACLs de Nodos</h4>
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
<th class="tableblock halign-left valign-top" >Código ACL    </th>
<th class="tableblock halign-left valign-top" >Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Crear nodos</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.create.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Creación de nodos de host incluyendo los ajustes iniciales para nombre y dirección.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Establecer propiedades de los nodos en creación</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.create.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ajustes de propiedades personalizables en el proceso de creación de los host.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Eliminar nodos</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.delete.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Eliminación de hosts uno a uno.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Acceso a la vista detallada de nodos</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see-details.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Este ACL garantiza el acceso a la vista detallada. El dato mínimo es el nombre.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Acceso a la sección principal de nodos</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see-main.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Acceso a la sección del host (sin esto, no aparecerá en el menú)</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver dirección IP del nodo</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.address</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Dirección IP de los hosts.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estado de bloqueo del nodo</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Estado de bloqueo (bloqueado/desbloqueado) de los hosts</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver creador del nodo</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Administrador WAT que creó el host.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver fecha de creación del nodo</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Fecha en la que se creó un host</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver descripción del nodo</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Descripción de los hosts.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver ID del nodo</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.id</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Base de datos identificativa de los hosts. Útil para realizar llamadas desde CLI.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver propiedades de los nodos</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Propiedades personalizables de los hosts.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estado de funcionamiento de los hosts</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Estado de los hosts  (parado/iniciado)</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver máquinas virtuales del nodo</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.vm-list</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver máquinas virtuales en funcionamiento por un host en vista detallada. Esta vista contendrá: nombre, estado, bloqueo e información de expiración de cada mv</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estado de bloqueo de la máquinas virtuales en funcionamiento del nodo</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.vm-list-block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Información de bloqueo de las máquinas virtuales mostradas en la vista detallada del host.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver expiración de las máquinas virtuales del nodo</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.vm-list-expiration</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Información de expiración de las máquinas virtuales mostradas en la vista detallada del host.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estado de funcionamiento de las máquinas virtuales en funcionamiento del nodo</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.vm-list-state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Estado (parado/iniciado) de las máquinas virtuales mostradas en la vista detallada del host.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estado del usuario de las máquinas virtuales en funcionamiento del nodo</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.vm-list-user-state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Estado de usuario (conectado/desconectado) de las máquinas virtuales mostrada en la vista detallada del host.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver número de mvs en funcionamiento en los nodos</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.see.vms-info</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Máquinas virtuales tales como cuántas máquinas virtuales funcionan en cada host.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estadísticas del número de nodos bloqueados</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.stats.blocked</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Número total de hosts en el usuario actual o en todo el sistema por superadministradores.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estadísticas de los nodos en funcionamiento</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.stats.running-hosts</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total de hosts en funcionamiento en el usuario actual o en todo el sistema por superadministradores.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estadísticas del número de nodos</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.stats.summary</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total de hosts en funcionamiento en el usuario actual o en todo el sistema por superadministradores.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estadística de nodos con el mayor número de Mvs en funcionamiento</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.stats.top-hosts-most-vms</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Top 5 de hosts con mayor número de máquinas virtuales en funcionamiento.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar dirección del nodo</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.update.address</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar la dirección IP de los hosts.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Bloque-Desbloqueo de nodos</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.update.block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar el estado de bloqueo (bloqueado/desbloqueado) de los hosts uno a uno.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar la descripción del nodo</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.update.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar la descripción de los hosts una a una.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar nombre del nodo</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.update.name</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar nombre de los hosts.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar propiedades al actualizar nodos</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.update.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar propiedades en el proceso de actualización del nodo una a una.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Detener todas las máquinas virtuales de un nodo</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">host.update.stop-vms</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Detener todas las máquinas virtuales de los hosts una a una.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="_acls_de_osfs">7.1.4. ACLs de OSFs</h4>
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
<th class="tableblock halign-left valign-top" >Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Crear OS Flavours</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.create.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Creación de OS flavours incluyendo los ajustes iniciales para el nombre.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Establecer la memoria en la creación del OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.create.memory</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Establecer la memoria durante el proceso de creación de los OS flavours.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Establecer la creación del OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.create.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ajuste de las propiedades personalizables en el proceso de creación de las OS flavour.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Establecer almacenaje del usuario en la creación de los OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.create.user-storage</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Establecer almacenaje del usuario en el proceso de creación de los OS flavour.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Eliminar OS Flavours</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.delete.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Eliminación de los OS flavours uno a uno.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Acceso a la vista detallada de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see-details.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Este ACL garantiza el acceso a la vista detallada. El dato mínimo es el nombre.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Acceso a la sección principal de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see-main.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Este garantiza el acceso a la lista. El dato mínimo es el nombre.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver creador de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Administrador WAT administrador que creó un OS flavour.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver fecha de creación de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Fecha en la que la imagen de un OS fue creada.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver descripción de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Descripción de OSFs.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver imágenes del disco de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.di-list</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver imágenes del disco de este osf en vista detallada. Esta vista contendrá: nombre, bloqueo, etiquetas, características por defecto, encabezado y la característica de cambio que viene por defecto.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estado de bloqueo del disco de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.di-list-block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Información de bloqueo de las imágenes del disco mostradas en la vista detallada de osf.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estado por defecto de las imágenes del disco de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.di-list-default</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">En la vista detallada de osf se muestra qué imagen viene por defecto.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Cambiar información por defecto de la imagen del disco de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.di-list-default-update</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Controles para cambiar la imagen del disco por defecto de un osf en vista detallada.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver información del encabezado de la imagen del disco de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.di-list-head</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">En la vista detallada de osf se muestra cual de Dis es el encabezado (creado por última vez).</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver etiquetas de las imágenes del disco de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.di-list-tags</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Las etiquetas de las imágenes del disco se muestran en la vista detallada de osf.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver número de imágenes de disco del OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.dis-info</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Número de imágenes de disco asignado a cada OS flavour.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver ID de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.id</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Base de datos identificativa de los OS flavour. Útil para realizar llamadas desde CLI.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver memoria de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.memory</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Cantidad de memoria en los OS flavours.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver revestimiento del OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.overlay</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Configuración de revestimiento de los OS flavour.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver propiedades de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Propiedades personalizables del OS flavours</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver almacenaje de usuario de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.user-storage</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Almacenaje de usuario de los OS flavour.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver máquinas virtuales del OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.vm-list</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver máquinas virtuales en uso de este osf en vista detallada. Esta vista contendrá: nombre, estado, bloqueo, etiqueta di e información sobre la expiración de cada mv</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estado de bloqueo de las máquinas virtuales de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.vm-list-block</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Información de bloqueo de las máquinas virtuales mostrada osf en vista detallada</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver expiración de las máquinas virtuales del OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.vm-list-expiration</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Información de expiration de las máquinas virtuales mostrada en osf en vista detallada</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estado de funcionamiento de las máquinas virtuales de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.vm-list-state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Estado (parado/iniciado) de las máquinas virtuales mostrado en osf en vista detallada</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estado del usuario de las máquinas virtuales de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.vm-list-user-state</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Estado del usuario (conectado/desconectado) de las máquinas virtuales mostrado en osf en vista detallada</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver número de máquinas virtuales de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.see.vms-info</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Número de máquinas virtuales que están utilizando una imagen del Disco de cada OS flavour</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver estadística del número de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.stats.summary</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Total de OS flavours en el usuario actual o todo el sistema por superadministradores.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar descripción de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.update.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar la descripción de los OSF flavours una a una.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar memoria de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.update.memory</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar memoria de OSF flavours una a una.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar nombre de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.update.name</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar el nombre de OSF flavour.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar propiedades al actualizar OSFs</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.update.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar propiedades en OSF&#8217;s una a una durante un proces de actualización.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar el almacenaje de usuario de OS Flavour</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">osf.update.user-storage</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar el almacenaje de usuario de OSF flavours uno a uno.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="_acls_de_imágenes_de_disco">7.1.5. ACLs de Imágenes de disco</h4>
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
<th class="tableblock halign-left valign-top" >Código ACL    </th>
<th class="tableblock halign-left valign-top" >Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Crear imágenes del disco</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.create.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Creación de hosts incluyendo los ajustes iniciales para la imagen del disc y OS flavour.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Establecer imágenes del disco por defecto en la creación de imágenes del disco</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.create.default</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Establecer imágenes del disco por defecto en el proceso de creación de imágenes del disco.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Establecer propiedades en la creación de imagenes del disco</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.create.properties</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ajuste de propiedades personalizadas en el proceso de creación de imágenes del disco.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Establecer etiquetas en la creación de imágenes del disco</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.create.tags</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ajustes de las etiquetas en el proceso de creación de las imágenes del disco.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Establecer versión en la creación de imágenes del disco</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.create.version</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ajuste de la versión en el proceso de creación de imágenes del disco. Sin este ACL, el sistema lo establecerá automáticamente como una base fija en el timestamp y una serie de dígitos.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Eliminación de imágenes del disco</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Eliminar imágenes del disco</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.delete.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Eliminación de imágenes del disco una a una.</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Acceso a la vista detallada de imágenes del disco</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see-details.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Este ACL garantiza el acceso a la vista detallada. El dato mínimo es la imágen del disco.</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Acceso a la sección principal de imágenes del disco</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see-main.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Este ACL garantiza el acceso a la lista. El dato mínimo es la disk_image</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver estado de bloqueo de la imágen del disco</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.block</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Estado de bloqueo de las imágenes del disco</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver creador de la imagen del disco</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.created-by</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Administrador Wat que creó una imagen del disco</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver fecha de creación de la imagen del disco</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.creation-date</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Fecha en la que se creó una imagen del disco</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver imagen del disco por defecto de OSF</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.default</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Si una imagen de disco es establecida como imagen por defecto en el OSF al que pertenece</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver descripción de la imagen del disco</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.description</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Descripción de imágenes del disco.</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver la última imagen de disco creada de OSF</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.head</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Si una imagen de disco es la última en ser creada en el OSF al que pertenece</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver ID de la imagen del disco</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.id</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Base de datos identificativo de las imágenes del disco. Útil para realizar llamadas desde CLI.</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver imagen del disco de OS Flavour</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.osf</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>El OS Flavour asociado a las imágenes del disco.</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver propiedades de imagen del disco</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.properties</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Propiedades personalizables de las imágenes del disco.</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver etiquetas de imagen del disco</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.tags</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Las etiquetas de las imágenes del disco</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver version de imagen del disco</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.version</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Versión de las imágenes del disco</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver máquinas virtuales de la imagen del disco</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.vm-list</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Máquinas virtuales usando esta imagen en vista. Esta vista contendrá: nombre y etiqueta de cada mv</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver estado de bloqueo de la lista de las máquinas virtuales de DI</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.vm-list-block</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Información de bloqueo de las máquinas virtuales mostrada en la vista detallada de DI</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver expiración de la lista de mvs de DI</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.vm-list-expiration</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Información de expiración de las máquinas virtuales mostradas en la vista detallada de DI.</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver estado de funcionamiento de la lista de máquinas virtuales de DI</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.vm-list-state</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Estado (parado/iniciado) de las máquinas virtuales mostradas en vista detallada de DI</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver estado de usuario de la lista de MV de DI</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.see.vm-list-user-state</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Estado de usuario (conectado/desconectado) de las máquinas virtuales mostradas en vista detallada de DI.</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver estadística del número de imágenes del disco bloqueadas</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.stats.blocked</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Total de imágenes de disco bloqueadas en el usuario actual o todo el sistema por
superadministradores.</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ver estadística del número de imágenes del disco</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.stats.summary</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Total de imágenes del disco en el usuario actual o en todo el sistema por superadministradores.</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Bloqueo-Desbloqueo de imágenes del disco</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.update.block</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar el estado de bloqueo (bloqueado/desbloqueado) de las imágenes del disco una a una.</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Establecer imágenes del disco por defecto</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.update.default</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Establecer por defecto una imagen del disco en OS flavour donde pertenece.</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar la descripción de la imagen del disco</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.update.description</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualización de la de la descripción de las imágenes del disco una a una.</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar propiedades al actualizar imágenes del disco</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.update.properties</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar propiedades en el proceso de actualización de las imágenes del disco una a una.</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar etiquetas de las imágenes del disco</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">di.update.tags</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="_acls_de_administradores">7.1.6. ACLs de Administradores</h4>
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
<th class="tableblock halign-left valign-top" >Código ACL    </th>
<th class="tableblock halign-left valign-top" >Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Crear administradores</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.create.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Crear Administradores WAT. Incluye ajustes para nombre y contraseña</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Establecer idioma en la creación del administrador</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.create.language</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Ajuste de idioma en el proceso de creación de administradores.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Eliminar administradores</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.delete.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Eliminación de administradores WAT uno a uno.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Acceso a la vista detallada de administradores</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see-details.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Acceso a la vista detallada de administradores WAT. Esta vista incluye el nombre</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Acceso a la sección principal de administradores</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see-main.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Acceso a la sección de administradores WAT (sin esto, no aparecerá en el menu). Esta vista de la lista incluye el nombre</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver ACLs de administradores</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see.acl-list</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Lista efectiva de ACL para un administrador WAT calculado a partir de los roles asignados</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Roles de origen de ACL del administrador</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see.acl-list-roles</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Que rol es el origen de cada uno de los acls efectivos en la vista detallada de un administrador WAT</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver administrador creador del disco</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Administrador Wat que creó un administrador</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver fecha de creación del administrador del disco</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Fecha en la que se creó un administrador</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver descripción del administrador</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">La descripción de los administradores WAT.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver ID del administrador</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see.id</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">La base de datos identificativa de los administradores WAT. Útil para realizar llamadas desde CLI.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver idioma del administrador</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see.language</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Idioma de los administradores WAT</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver roles de los administradores</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.see.roles</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Roles asignados al administrador WAT</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Asignar-Desvincular roles del administrador</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.update.assign-role</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Asignar roles a los administradores WAT para dárselos a sus ACLs.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar descripción del administrador</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.update.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualización de la descripción de los administradores una a una.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar idioma de los administradores</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.update.language</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualización del idioma de los administradores uno a uno.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Cambiar la contraseña del administrador</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">administrator.update.password</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar contraseña del administrador WAT (no incluye gestión de roles)</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="_acls_de_roles">7.1.7. ACLs de Roles</h4>
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
<th class="tableblock halign-left valign-top" >Código ACL    </th>
<th class="tableblock halign-left valign-top" >Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Crear roles</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.create.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Creación de roles incluyendo los ajustes iniciales para el nombre.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Eliminación de roles</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.delete.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Eliminación de roles uno a uno.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Acceso a la vista detallada de roles</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.see-details.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Acceso a la vista detallada de Roles. Esta vista incluye el nombre</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Acceso a la sección principal del rol</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.see-main.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Acceso a la vista de roles. El dato mínimo es el nombre.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver acls del rol</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.see.acl-list</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">La lista ACL efectiva para un rol se calcula a partir de los roles heredados</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver roles originales de los acls' de los roles</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.see.acl-list-roles</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Qué rol es el origen de cada acl efectivo en la vista detallada del rol</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver creador del rol</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.see.created-by</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Administrador wat que creó el rol</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver fecha de creación del rol</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.see.creation-date</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Fecha en la que fue creado un rol</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver descripción del rol</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.see.description</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Descripción de un rol.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver ID del rol</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.see.id</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Base de datos identificativa de los roles. Útil para hacer llamadas desde CLI.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Ver roles heredados del rol</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.see.inherited-roles</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Roles heredados de un rol.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualización de la descripción de los roles.</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Asignar-Desvincular ACLs del rol</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.update.assign-acl</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Añadir/Quitar acl al rol.</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Asignar-Desvincular roles heredados del rol</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.update.assign-role</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Gestión de la herencia de roles añadiendo roles a otros.</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar descripción del rol</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.update.description</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Actualizar la descripción de los roles una a una.</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Actualizar nombre del rol</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">role.update.name</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="_acls_de_propiedades_personalizadas">7.1.8. ACLs de Propiedades personalizadas</h4>
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
<th class="tableblock halign-left valign-top" >Código ACL    </th>
<th class="tableblock halign-left valign-top" >Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Acceso a la sección principal de propiedades</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">property.see-main.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Acceso a la sección de gestión de las propiedades personalizables.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Gestionar de propiedades personalizables del usuario</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">property.manage.user</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Crear, actualizar y borrar propiedades personalizables de los usuarios.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Gestionar propiedades personalizables de las máquinas virtuales</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">property.manage.vm</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Crear, actualizar y eliminar propiedades personalizables de las máquinas virtuales.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Gestionar propiedades personalizables del nodo</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">property.manage.host</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Crear, actualizar y eliminar propiedades personalizables de los nodos.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Gestionar propiedades personalizables de OSF</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">property.manage.osf</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Crear, actualizar y eliminar propiedades personalizables de OS Flavours.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Gestionar propiedades personalizables de la imagen del disco</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">property.manage.di</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Crear, actualizar y eliminar propiedades personalizables de las imágenes del disco.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="_acls_de_vistas">7.1.9. ACLs de Vistas</h4>
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
<th class="tableblock halign-left valign-top" >Código ACL    </th>
<th class="tableblock halign-left valign-top" >Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Acceso a la sección principal de vista por defecto</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">views.see-main.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Acceso a la sección personalizable de WAT (sin esto, no aparecerá en el menu).</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Establecer columnas por defecto en la vista listado</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">views.update.columns</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Establecer las columnas que se mostrarán en la vista listado por defecto por el usuario</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Establecer filtros por defecto en la vista listado para el escritorio</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">views.update.filters-desktop</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Establecer los filtros que se mostrarán en las vistas listado por defecto para la versión de escritorio por el usuario.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Establecer filtros por defecto en las vistas listado para móvil</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">views.update.filters-mobile</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Establecer los filtros que aparecerán en las vistas listado por defecto en la versión para móvil por el usuario.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="_acls_de_configuración">7.1.10. ACLs de Configuración</h4>
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
<th class="tableblock halign-left valign-top" >Código ACL    </th>
<th class="tableblock halign-left valign-top" >Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Gestión de la configuración de QVD&#8217;s</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">config.qvd.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Gestionar la configuración QVD  (añadir/actualizar tokens).</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top" ><p class="tableblock"><strong>Gestión de la configuración WAT</strong></p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">config.wat.</p></td>
<td class="tableblock halign-left valign-top" ><p class="tableblock">Gestión de la configuración WAT (idioma&#8230;).</p></td>
</tr>
</tbody>
</table>
</div>
</div>
<div class="sect2">
<h3 id="_referencia_de_plantillas">7.2. Referencia de Plantillas</h3>
<div class="paragraph"><p>Lista de plantillas predefinidas en el sistema. Las plantillas son conjuntos de ACLs, pero al igual que los Roles, utilizan herencia entre ellas.</p></div>
<div class="paragraph"><p>En esta guía de referencia se encuentran las plantillas predefinidas en el sistema incluyendo diagramas con la relación entre ellas.</p></div>
<div class="sect3">
<h4 id="_plantillas_primitivas">7.2.1. Plantillas primitivas</h4>
<div class="paragraph"><p>Tienen asignados sólamente ACLs.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Notación
</dt>
<dd>
<p>
<span class="image">
<img src="/images/doc_images/Templates_Hierarchy_Legend_-_Primitives.png" alt="Templates_Hierarchy_Legend_-_Primitives.png" width="300px">
</span>
</p>
</dd>
<dt class="hdlist1">
Listado
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
<h4 id="_plantillas_de_acción">7.2.2. Plantillas de acción</h4>
<div class="paragraph"><p>Heredan Plantillas primitivas y compenden los ACLs relacionados por el tipo de acción de todos los elementos de QVD. Por ejemplo 'QVD Reader" reúne los permisos de lectura sobre Usuarios, Máquinas virtuales, OSFs e Imágenes de disco.*</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Notación
</dt>
<dd>
<p>
<span class="image">
<img src="/images/doc_images/Templates_Hierarchy_Legend_-_Action.png" alt="Templates_Hierarchy_Legend_-_Action.png" width="300px">
</span>
</p>
</dd>
<dt class="hdlist1">
Listado
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
Hereda de
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
Hereda de
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
Hereda de
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
QVD Operator
</p>
<div class="openblock">
<div class="content">
<div class="dlist"><dl>
<dt class="hdlist1">
Hereda de
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
Hereda de
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
<h4 id="_plantillas_de_gestión">7.2.3. Plantillas de gestión</h4>
<div class="paragraph"><p>Heredan Plantillas primitivas y compenden los ACLs relacionados por el elemento afectado, otorgándole todos los tipos de acción posibles sobre él. Por ejemplo <em>Users Manager</em> reúne los permisos de lectura, operación, actualización, creación y borrado sobre los Usuarios de QVD.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Notación
</dt>
<dd>
<p>
<span class="image">
<img src="/images/doc_images/Templates_Hierarchy_Legend_-_Manager.png" alt="Templates_Hierarchy_Legend_-_Manager.png" width="300px">
</span>
</p>
</dd>
<dt class="hdlist1">
Listado
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
Hereda de
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
Hereda de
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
Hereda de
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
Hereda de
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
Hereda de
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
Hereda de
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
Hereda de
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
Hereda de
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
<h4 id="_plantillas_de_gestión_global_qvd_wat">7.2.4. Plantillas de gestión global (QVD/WAT)</h4>
<div class="paragraph"><p>Heredan de las plantillas de gestión para formar una plantilla con los ACLs de gestión de todo QVD ó todo WAT.*</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Notación
</dt>
<dd>
<p>
<span class="image">
<img src="/images/doc_images/Templates_Hierarchy_Legend_-_Global_Manager.png" alt="Templates_Hierarchy_Legend_-_Global_Manager.png" width="300px">
</span>
</p>
</dd>
<dt class="hdlist1">
Listado
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
Hereda de
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
Esquema
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
Hereda de
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
Esquema
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
<h4 id="_plantillas_maestras">7.2.5. Plantillas maestras</h4>
<div class="paragraph"><p>Heredan de las Plantillas de gestión global formando una Plantilla con todos los ACLs. En esta tipología se encuentran dos plantillas:</p></div>
<div class="ulist"><ul>
<li>
<p>
Master
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Hereda de las plantillas de gestión global de QVD y WAT obteniendo todos los ACLs posibles excepto los de los Nodos.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Notación
</dt>
<dd>
<p>
<span class="image">
<img src="/images/doc_images/Templates_Hierarchy_Legend_-_Master.png" alt="Templates_Hierarchy_Legend_-_Master.png" width="300px">
</span>
</p>
</dd>
<dt class="hdlist1">
Esquema
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
<div class="paragraph"><p>Hereda de la plantilla Master así como de la Plantilla de gestión de Nodos.*</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Notación
</dt>
<dd>
<p>
<span class="image">
<img src="/images/doc_images/Templates_Hierarchy_Legend_-_Total_Master.png" alt="Templates_Hierarchy_Legend_-_Total_Master.png" width="300px">
</span>
</p>
</dd>
<dt class="hdlist1">
Esquema
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
<div class="paragraph"><p>* Los nodos están fuera de la clasificación de QVD en las plantillas al ser elementos arquitectónicos físicos importantes. Tendrán sus propias plantillas de ACLs.</p></div>
</div>
<div class="sect3">
<h4 id="_jerarquía_de_plantillas">7.2.6. Jerarquía de Plantillas</h4>
<div class="paragraph"><p>En el siguiente esquema se observa de un solo vistazo toda la jerarquía de Plantillas.</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/Templates_Hierarchy_Monotenant.png" alt="Templates_Hierarchy_Monotenant.png" width="960px">
</span></p></div>
</div>
</div>
<div class="sect2">
<h3 id="_referencia_de_roles">7.3. Referencia de Roles</h3>
<div class="paragraph"><p>Esta es una referncia de los Roles del WAT que vienen por defecto en una instalación limpia de QVD.</p></div>
<div class="paragraph"><p>Estos roles heredan la mayoría de los ACLs de plantillas.</p></div>
<div class="paragraph"><p>Para evitar el mal funcionamiento indeseado, los roles por defecto estan <strong>bloqueados</strong>, por lo que no se podrán ni editar ni eliminar.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Lista de roles por defecto
</dt>
<dd>
<div class="ulist"><ul>
<li>
<p>
<strong>Operador L1</strong>
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Este rol garantiza los permisos suficientes para poder ver los elementos de QVD aunque sin poder crear, editar, eliminar ni realizar cualquier otra acción sobre ellos. Es un <strong>rol de solo lectura</strong> enfocado a detección de problemas.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Hereda de
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
QVD Reader
</p>
</li>
</ul></div>
</div></div>
</li>
<li>
<p>
<strong>Operador L2</strong>
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Este rol otorga los permisos del Operador L1 (de hecho, hereda ese rol) y además otorga permisos para realizar ciertas <strong>acciones operativas</strong> como iniciar/detener máquinas virtuales, desconectar usuarios o bloquear elementos.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Hereda de
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Operador L1
</p>
</li>
<li>
<p>
QVD Operator
</p>
</li>
</ul></div>
</div></div>
</li>
<li>
<p>
<strong>Operador L3</strong>
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Este rol otorga permisos totales para los elementos de QVD. Creación, Actualización, Operación y Eliminado. Además da acceso a los Nodos</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Hereda de
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Operador L2
</p>
</li>
<li>
<p>
QVD Manager
</p>
</li>
<li>
<p>
Node Manager
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
<div class="paragraph"><p>Este rol otorga <strong>poderes totales</strong> sobre todos los elementos de QVD y además del WAT: Administradores, roles, etc.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Hereda de
</dt>
<dd>
</dd>
</dl></div>
<div class="ulist"><ul>
<li>
<p>
Total Master
</p>
</li>
</ul></div>
</div></div>
</li>
</ul></div>
</dd>
</dl></div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_propiedades_personalizadas">8. Propiedades personalizadas</h2>
<div class="sectionbody">
<div class="paragraph"><p><strong>Los elementos de QVD tienen atributos</strong> como por ejemplo el nombre, su estado de bloqueo, su dirección IP asociada (en el caso de las máquinas virtuales o nodos) o la referencia a otros objetos de QVD a los que están asociados. Por ejemplo las imágenes de disco tienen asignado un OSF o las máquinas virtuales están unívocamente relacionadas con un usuario.</p></div>
<div class="paragraph"><p>Todos estos atributos nos describen cómo son los objetos de QVD, nos permiten diferenciarlos del resto, nos dan información de qué dependencias tienen y nos enseñan a cerca de su comportamiento. Esta información será fija, aunque puede configurarse su visibilidad a través de los ACLs, pudiendo crearse roles de administradores que solo permitan ver parte de ellos.</p></div>
<div class="paragraph"><p>Debido a las diversas necesidades que puedan tenerse en diferentes entornos QVD, existe una manera de <strong>personalizar la información</strong> que se almacena de cada objeto QVD. Esta personalización es posible gracias a las <strong>propiedades personalizadas</strong>, que son unos <strong>atributos especiales de los objetos de QVD</strong> creados por los administradores para cubrir sus necesidades.</p></div>
<div class="paragraph"><p>Estas propiedades serán atributos extra que podrán configurarse como una columna más así como habilitarlos como filtro en la vista listado.</p></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//tip.png" alt="Tip">
</td>
<td class="content">Podemos crear una propiedad en los usuarios llamada <em>Company</em>, para almacenar la empresa a la que pertenecen los diferentes usuarios y luego filtrar el listado por ese dato. Otra interesante utilidad de estas propiedades es utilizarlas por scripts externos a través del CLI para realizar acciones por lotes sobre un subconjunto de elementos filtrados según nuestras necesidades.</td>
</tr></table>
</div>
<div class="paragraph"><p>Estos atributos especiales <strong>podrán restringirse también a través de ACLs</strong> pero en <strong>bloque</strong>. Osea podemos <strong>permitir o denegar la visualización de todas las propiedades</strong> libres por cada tipo de objeto de QVD (Usuarios, Máquinas virtuales, OSFs&#8230;), pero no permitir unas propiedades sí y otras no.</p></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//important.png" alt="Important">
</td>
<td class="content">Los elementos con propiedades personalizadas son: Usuarios, Máquinas virtuales, OSFs e Imágenes de disco.</td>
</tr></table>
</div>
<div class="dlist"><dl>
<dt class="hdlist1">
Gestión de propiedades personalizadas
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Para crear, editar o eliminar las propiedades personalizadas iremos a la sección <em>'Gestión del WAT</em>', descrita en la guía <em>'Paso a paso</em>'.</p></div>
<div class="paragraph"><p>En esta sección podremos gestionar las propiedades de cada elemento de QVD. Pudiendo fácilmente asignar la misma propiedad a uno o más de ellos, renombrarla o agregarle una descripción que aparecerá junto a ella en la interfaz para guiar al usuario.</p></div>
</div></div>
</dd>
</dl></div>
</div>
</div>
<div class="sect1">
<h2 id="_acciones_masivas">9. Acciones masivas</h2>
<div class="sectionbody">
<div class="paragraph"><p>En algunas vistas listado existe la posibilidad de realizar acciones masivas. Cuando esto sucede observaremos que la primera columna de la tabla listado es una columna de casillas de verificación.</p></div>
<div class="sect2">
<h3 id="_selección_de_elementos">9.1. Selección de elementos</h3>
<div class="paragraph"><p>Con la columna de casillas de verificación se podrán seleccionar los elementos a los que queramos aplicar la misma acción. Esta selección se puede hacer de uno en uno o de forma múltiple.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Selección de uno en uno
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Se pueden ir seleccionando los elementos de uno en uno marcando las casillas de verificación de la primera columna.</p></div>
<div class="paragraph"><p>Cuando hay más de una página de elementos, se puede ir navegando entre ellas sin perder los elementos seleccionados. Esto hace posible <strong>seleccionar a la vez elementos de diferentes páginas</strong>.</p></div>
</div></div>
</dd>
<dt class="hdlist1">
Selección múltiple
</dt>
<dd>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>La columna de casillas de verificación dispone de una <strong>casilla especial en la cabecera de la tabla</strong>. Con esta casilla podremos hacer una selección múltiple. Al seleccionar esta casilla, se seleccionarán automáticamente todos los elementos del listado.</p></div>
<div class="paragraph"><p>Pueden darse dos situaciones:</p></div>
<div class="ulist"><ul>
<li>
<p>
No haya elementos fuera del listado:
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>El número de elementos del listado sea menor o igual al bloque de paginación, por lo que solo haya una página y todos los elementos estén mostrándose.</p></div>
<div class="paragraph"><p>En este caso, al marcar la casilla de selección múltiple <strong>se marcarán todos los elementos de forma inmediata</strong>.</p></div>
</div></div>
</li>
<li>
<p>
Haya elementos fuera del listado:
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>El número de elementos del listado sea mayor que el bloque de paginación, por lo que se muestre una página de X páginas totales.</p></div>
<div class="paragraph"><p>En este caso, al marcar la casilla de selección múltiple <strong>aparecerá un diálogo advirtiéndonos de que hay elementos fuera de la vista</strong> y dándonos dos opciones:</p></div>
<div class="ulist"><ul>
<li>
<p>
Seleccionar sólamente los elementos que están a la vista
</p>
</li>
<li>
<p>
Seleccionar todos los elementos del listado, incluyendo los de otras páginas
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
<td class="content">En la parte izquierda justo debajo de la tabla del listado podremos ver en cada momento el número de elementos que tenemos seleccionados.</td>
</tr></table>
</div>
</div>
<div class="sect2">
<h3 id="_selector_de_acciones_masivas">9.2. Selector de acciones masivas</h3>
<div class="paragraph"><p>De estar disponibles, debajo de la tabla de un listado, habrá un control de selección de acciones masivas. Bastará con seleccionar la acción deseada y hacer click en el botón <em>Aplicar</em> para llevarlas a cabo <strong>sobre los elementos seleccionados</strong>.</p></div>
</div>
<div class="sect2">
<h3 id="_tipos_de_acciones_masivas">9.3. Tipos de acciones masivas</h3>
<div class="paragraph"><p>Las acciones masivas pueden ser de diferente naturaleza:</p></div>
<div class="ulist"><ul>
<li>
<p>
<strong>Edición</strong>:
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Con la acción de edición se pueden editar los <strong>atributos comunes</strong> de los elementos que se seleccionen.</p></div>
</div></div>
</li>
<li>
<p>
<strong>Borrado</strong>:
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>Con la acción de borrado se pueden eliminar elementos de forma masiva.</p></div>
</div></div>
</li>
<li>
<p>
<strong>Ejecución</strong>:
</p>
<div class="openblock">
<div class="content">
<div class="paragraph"><p>En esta categoría se engloban las acciones que no son ni de edición ni de borrado: <em>Arrancar/Detener máquinas virtuales, desconectar usuarios, bloquear/desbloquear elementos&#8230;</em></p></div>
</div></div>
</li>
</ul></div>
</div>
<div class="sect2">
<h3 id="_restricción_de_acciones_masivas">9.4. Restricción de acciones masivas</h3>
<div class="paragraph"><p>Por medio del control de ACLs, se puede permitir o no realizar las diversas acciones masivas <strong>con independencia de las acciones normales</strong>. Esto quiere decir que, por ejemplo, <em>la acción de eleminar una máquina virtual y la opción de eliminar máquinas virtuales a través de acciones masivas están reguladas por ACLs diferentes</em>.</p></div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_herramienta_de_personalización_de_estilos">10. Herramienta de personalización de estilos</h2>
<div class="sectionbody">
<div class="paragraph"><p>Con esta herramienta se podrá personalizar el estilo del WAT, incluyendo logotipos y colores.</p></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//important.png" alt="Important">
</td>
<td class="content">Para hacer permanentes los cambios llevados a cabo con esta herramienta será necesario tener acceso al servidor donde esté colgado el WAT.</td>
</tr></table>
</div>
<div class="paragraph"><p>La herramienta estará disponible para aquellos administradores con permisos de configuración del WAT junto a la capacidad de editar otros parámetros como el idioma o el tamaño de bloque de paginación.</p></div>
<div class="paragraph"><p>Ésta herramienta no es una sección, sino una característica presente en cualquier sección del WAT.</p></div>
<div class="paragraph"><p>Cuando la herramienta de personalizacíón de estilos esté activada, aparecerá una pestaña en la parte izquierda de la pantalla con el texto "Customizer".</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_customizer_enabled.png" alt="screenshot_customizer_enabled.png" width="960px">
</span></p></div>
<div class="paragraph"><p>Al hacer click en la pestaña aparecerá un menú con un selector de categorías.</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_customizer_open_select.png" alt="screenshot_customizer_open_select.png" width="960px">
</span></p></div>
<div class="paragraph"><p>Cada categoría tendrá ciertos parámetros configurables, la mayoría colores.</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_customizer_open.png" alt="screenshot_customizer_open.png" width="960px">
</span></p></div>
<div class="paragraph"><p>Parámetros de personalización de estilos divididos por categorías:</p></div>
<div class="ulist"><ul>
<li>
<p>
Cabecera y pie
</p>
<div class="ulist"><ul>
<li>
<p>
Logo de Cabecera (125px x 55px)
</p>
</li>
<li>
<p>
Color de fondo de la cabecera
</p>
</li>
<li>
<p>
Color de fondo del pie
</p>
</li>
<li>
<p>
Color de texto del pie
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
Color de fondo de Menú principal
</p>
</li>
<li>
<p>
Color de texto de Menú principal
</p>
</li>
<li>
<p>
Color de borde de Menú principal
</p>
</li>
<li>
<p>
Color de fondo de Menú principal (al pasar por encima)
</p>
</li>
<li>
<p>
Color de texto de Menú principal (al pasar por encima)
</p>
</li>
<li>
<p>
Color de fondo de Menú principal (seleccionado)
</p>
</li>
<li>
<p>
Color de texto de Menú principal (seleccionado)
</p>
</li>
<li>
<p>
Color de texto de Menú de Cabecera
</p>
</li>
<li>
<p>
Color de texto de Menú de Cabecera (seleccionado)
</p>
</li>
<li>
<p>
Color de fondo de submenú de Cabecera
</p>
</li>
<li>
<p>
Color de texto de submenú de Cabecera
</p>
</li>
<li>
<p>
Color de border de submenú de Cabecera
</p>
</li>
<li>
<p>
Color de fondo de submenú de Cabecera (al pasar por encima)
</p>
</li>
<li>
<p>
Color de texto de submenú de Cabecera (al pasar por encima
</p>
</li>
</ul></div>
</li>
<li>
<p>
Botones y enlaces
</p>
<div class="ulist"><ul>
<li>
<p>
Color de fondo de Botón1
</p>
</li>
<li>
<p>
Color de texto de Botón1
</p>
</li>
<li>
<p>
Color de fondo de Botón2
</p>
</li>
<li>
<p>
Color de texto de Botón2
</p>
</li>
<li>
<p>
Enlaces de texto
</p>
</li>
</ul></div>
</li>
<li>
<p>
Tablas
</p>
<div class="ulist"><ul>
<li>
<p>
Color de fondo de cabecera de tablas
</p>
</li>
<li>
<p>
Color de texto de cabecera de tablas
</p>
</li>
<li>
<p>
Color de fondo de cabecera de tablas (columna ordenada)
</p>
</li>
<li>
<p>
Color de texto de cabecera de tablas (columna ordenada)
</p>
</li>
</ul></div>
</li>
<li>
<p>
Gráficas
</p>
<div class="ulist"><ul>
<li>
<p>
Color A de Gráficas
</p>
</li>
<li>
<p>
Color B de Gráficas
</p>
</li>
</ul></div>
</li>
<li>
<p>
Pantalla de login
</p>
<div class="ulist"><ul>
<li>
<p>
Logo del login (150px x 227px)
</p>
</li>
<li>
<p>
Color de fondo de la caja de login
</p>
</li>
<li>
<p>
Color de texto de la caja de login
</p>
</li>
</ul></div>
</li>
</ul></div>
<div class="paragraph"><p>Los cambios de color se realizarán mediante una paleta que se mostrará haciendo click en el recuadro del color que queramos cambiar.</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_customizer_change.png" alt="screenshot_customizer_change.png" width="960px">
</span></p></div>
<div class="paragraph"><p>Aunque también se puede establecer un código RGB en la caja de texto del parámetro. Por ejemplo.: #ff0494</p></div>
<div class="sect2">
<h3 id="_vista_previa">10.1. Vista previa</h3>
<div class="paragraph"><p>Al hacer click en el botón de vista previa el sistema calculará los cambios y se generará una vista previa de cómo quedarían los nuevos estilos.</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_customizer_preview_loading.png" alt="screenshot_customizer_preview_loading.png" width="960px">
</span></p></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//important.png" alt="Important">
</td>
<td class="content">Estos cambios serán temporales y solo visibles en el navegador en el que se haga la vista previa</td>
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
<td class="content">Escoger el amarillo como color de fondo es una dramatización. No intentar en casa.</td>
</tr></table>
</div>
</div>
<div class="sect2">
<h3 id="_restaurar">10.2. Restaurar</h3>
<div class="paragraph"><p>Con el botón restaurar se volverá a la configuración inicial de los estilos del WAT. También se puede volver a la configuración inicial refrescando la pantalla.</p></div>
</div>
<div class="sect2">
<h3 id="_exportar_fichero_css">10.3. Exportar fichero CSS</h3>
<div class="paragraph"><p>Con este botón se descargará la hoja de estilos <em>custom_style.css</em> con los cambios actuales. Se deberá acceder al servidor donde esté alojado el WAT y sobrescribir el fichero <em>/styles/custom_style.css</em>. Esta hoja de estilos sobreescribirá la que viene por defecto.</p></div>
</div>
<div class="sect2">
<h3 id="_cambiar_logos">10.4. Cambiar logos</h3>
<div class="paragraph"><p>Desde la herramienta de personalización solamente se cambia el nombre del fichero de los logos, no el fichero en sí. Por ello, tanto para que se vea en la vista previa como para hacerlo permanente, deberán estar los logos nuevos subidos en el directorio <em>/images/</em> del servidor.</p></div>
</div>
<div class="sect2">
<h3 id="_ejemplo_de_cambios">10.5. Ejemplo de cambios</h3>
<div class="paragraph"><p>Imaginemos que queremos cambiar el estilo del WAT a colores azulados más acordes con nuestra organización. Cambiando los colores iniciales a diferentes tonalidades de azul nos quedaría un resultado como el siguiente:</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_customizer_blue.png" alt="screenshot_customizer_blue.png" width="960px">
</span></p></div>
<div class="admonitionblock">
<table><tr>
<td class="icon">
<img src="/images/doc_images/icons//warning.png" alt="Warning">
</td>
<td class="content">Qindel Group no se hace responsable de las catástrofes estéticas producidas al utilizar esta herramienta por administradores daltónicos o con cualquier otra disfunción visual.</td>
</tr></table>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_espía_de_sesión">11. Espía de sesión</h2>
<div class="sectionbody">
<div class="paragraph"><p>Desde el WAT es posible <em>espiar</em> la sesión de un usuario conectado a una máquina virtual. Gracias al protocolo de compartición de escritorios <strong>VNC</strong>, se puede acceder en <strong>tiempo real</strong> al escritorio dónde un usuario se encuentre conectado, llegando incluso a <strong>tomar el control</strong>.</p></div>
<div class="paragraph"><p>Si el administrador de QVD tiene los <em>permisos suficientes</em>, cuando una máquina virtual está arrancada, la oción <em>Espiar</em> aparecerá tanto en la vista detalle como en las opciones masivas en la vista listado (en este caso la opción solamente aparece si se selecciona un solo elemento).</p></div>
<div class="paragraph"><p>Al hacer click en <em>Espiar</em>, se abrirá una pestaña nueva del navegador donde se cargará el escritorio de la sesión actual.</p></div>
<div class="paragraph"><p><span class="image">
<img src="/images/doc_images/screenshot_vmspy.png" alt="screenshot_vmspy.png" width="960px">
</span></p></div>
<div class="paragraph"><p>Si el usuario está haciendo cosas, veremos en tiempo real lo que él ve incluído su cursor.</p></div>
<div class="dlist"><dl>
<dt class="hdlist1">
Ajustes
</dt>
<dd>
<p>
En el lado izquierdo hay una pestaña de <em>Ajustes</em> que despliega un menú lateral con un cuadro con información a cerca de la máquina virtual y el usuario seguido las opciones de configuración:
</p>
<div class="ulist"><ul>
<li>
<p>
<strong>Resolución</strong>: Se puede configurar para que la resolución del escritorio QVD en el navegador esté <em>adaptada</em> al tamaño de la ventana o que aparezca en la resolución <em>original</em> del cliente. En el segundo caso, si la resolución fuese mayor que la ventana del navegador aparecerán barras de desplazamiento.
</p>
</li>
<li>
<p>
<strong>Modo</strong>: Por defecto está establecido el modo <em>Solo ver</em> con el cual no podremos interactuar con el escritorio remoto. Con el modo <em>Interactivo</em> se podrá tomar el control del cursor tan solo pasando por encima además de poder escribir con nuestro teclado.
</p>
</li>
<li>
<p>
<strong>Log</strong>: Para poder detectar disfunciones en la conexión VNC se pueden mostrar con diferentes niveles de <em>verbosidad</em>, los registros del log de la conexión. El log permanece oculto por defecto, pero se puede mostrar absolutamente todo (nivel Debug), solamente a partir de los registros que tengan cierta relevancia (Info), las que se consideren importantes (Warning) o solo los errores (Error).
</p>
</li>
</ul></div>
</dd>
</dl></div>
<div class="paragraph"><p><em>Resolución adaptada y log mostrado</em>
<span class="image">
<img src="/images/doc_images/screenshot_vmspy_options.png" alt="screenshot_vmspy_options.png" width="960px">
</span></p></div>
<div class="paragraph"><p><em>Resolución original y log oculto</em>
<span class="image">
<img src="/images/doc_images/screenshot_vmspy_options2.png" alt="screenshot_vmspy_options2.png" width="960px">
</span></p></div>
</div>
</div>
</div>
<div id="footnotes"><hr></div>
<div id="footer">
<div id="footer-text">
Last updated 2018-03-08 13:58:44 CET
</div>
</div>
</body>
</html>

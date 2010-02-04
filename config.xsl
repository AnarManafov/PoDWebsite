<?xml version='1.0'?> 
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml">

<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/website/tabular.xsl"/>

<!-- ****** Parameters ****** -->
  <xsl:param name="paper.type" select="'A4'"/>
  <!--xsl:param name="graphic.default.extension" select="'gif'"/-->
  <xsl:param name="admon.graphics.extension" select="'.png'"/>
  <!--xsl:param name="callout.graphics.extension" select="'.gif'"/-->


<!-- ****** Website stylesheet parameters ****** -->
<xsl:template name="home.navhead">
</xsl:template>

<xsl:template name="home.navhead.upperright">
</xsl:template>

<!-- ****** DocBook stylesheet parameters ****** -->


<!-- Table titles without number labels

The local.l10n.xml parameter is used to alter the generated text. In this case, you are changing the gentext templates for the table element in
the contexts of title and xref-number-and-title, which are the contexts that all the formal objects use. The changes eliminate the use of the word
Table and the %n placeholder that generates the number. You can reword the cross reference text any way you like. Repeat the process for all the
languages you are using.
The last line of the customization makes empty the template that matches on table in mode label.markup. That mode generates the number for an element.
It is used in the table of contents when a table of tables is generated.
-->
<xsl:param name="local.l10n.xml" select="document('')"/>
<l:i18n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0">
  <l:l10n language="en">
    <l:context name="title">
      <l:template name="table" text="%t"/>
    </l:context>
    <l:context name="xref-number-and-title">
      <l:template name="table" text="the table titled &#8220;%t&#8221;"/>
    </l:context>
  </l:l10n>
</l:i18n>

<xsl:template match="table" mode="label.markup"/>

<!-- ****** Template customizations go here ****** -->


</xsl:stylesheet>  


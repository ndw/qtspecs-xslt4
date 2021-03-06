<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:rddl="http://www.rddl.org/"
  xmlns:fos="http://www.w3.org/xpath-functions/spec/namespace" exclude-result-prefixes="fos"
  version="2.0">
  
  <xsl:import href="ns-xpath-functions.xsl"/>
  
  
  <xsl:param name="specdoc" select="'MATHNS'"/>
  
  <xsl:template match="processing-instruction('fo-math-function-summary')">
    <xsl:apply-templates select="$fando-functions//fos:function[@prefix='math']">
      <xsl:sort select="@name"/>
    </xsl:apply-templates>
  </xsl:template>
  
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="Datas">
<html> 
<body>
<table>
<xsl:for-each select ="Data[not(@Header=preceding-sibling::Data/@Header)]" >
<!-- select ="//Data[not(@Header=preceding-sibling::Data/@Header)]"> -->

<tr>
<td>
<xsl:value-of select="@Header"/>
</td>

<td>
<xsl:value-of select="@date"/>
</td>



</tr> 

<xsl:call-template name= "LearningCallTemplate">
<xsl:with-param name="param1" select="string(@Header)"/>
</xsl:call-template>


  <!-- <h2>My CD Collection</h2> -->
  <!-- <table border="1"> -->
    <!-- <tr bgcolor="#9acd32"> -->
      <!-- <th style="text-align:left">ManufacturerName</th> -->
    <!-- </tr> -->
	<!-- <tr> -->
	<!-- <td> -->
	<!-- <xsl:apply-templates select="Vehicle[not(ManufacturerName=preceding-sibling::Vehicle/ManufacturerName)]"/> -->
	<!-- </td> -->
	<!-- </tr> -->
	
    
  <!-- </table> -->
  </xsl:for-each>
  </table>
</body>
</html>

</xsl:template>

<xsl:template name ="LearningCallTemplate">
<xsl:param name="param1"/>
<html>
<body>
<table>
 
 <for-each select="//Data[@Header=$param1]">
 <tr>
  <td><xsl:value-of select="@Name"/></td>
  <td><xsl:value-of select="@Value"/></td>
  </tr>
 </for-each>
 
 </table>
 </body>
 </html>

</xsl:template>

</xsl:stylesheet>
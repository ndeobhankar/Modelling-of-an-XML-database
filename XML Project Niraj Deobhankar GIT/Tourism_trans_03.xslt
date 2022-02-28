<?xml version="1.0" encoding="UTF-8"?>

<!--*****************************************************************
	Author: Niraj Chandrashekhar Deobhankar DSTI A21 DA    

	Scenario 3: Put all trips that can be completed within 10 or less days.
	 
******************************************************************-->

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h1>All <xsl:value-of select="count(//Trip)" /> trips to India</h1>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Title</th>
        <th>StartDate</th>
		<th>Price</th>
		<th>Number of Days</th>
		<th>Genre</th>
		<th>Destination</th>
      </tr>
	  <xsl:for-each select="//Trip">
	  <xsl:sort select="@Price" order="descending"/>
	  <xsl:if test="@NumberOfDays &lt; 11" >
		  <tr>
			<td><xsl:value-of select="Title"/></td>
			<td><xsl:value-of select="StartDate"/></td>
			<td><xsl:value-of select="@Price"/></td>
			<td><xsl:value-of select="@NumberOfDays"/></td>
			<td><xsl:value-of select="@Genre"/></td>
			<td><xsl:value-of select="Destinations/Dest/@DestIdent"/></td>
		  </tr>
		</xsl:if>
	  </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

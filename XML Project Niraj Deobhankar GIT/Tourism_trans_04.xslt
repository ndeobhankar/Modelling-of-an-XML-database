<?xml version="1.0" encoding="UTF-8"?>

<!--*****************************************************************
     Case 4 Select data related to trip title, cost, number of days and genre
	 and create a new xml file.
	 
******************************************************************-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes"/>

	<xsl:template match="/">
		<Activities>
			<xsl:apply-templates select="//Activity">
				<xsl:sort select="@ActId"/>
			</xsl:apply-templates >
		</Activities>
	</xsl:template>

	<xsl:template match="Activity">
		<Activity>
			<ActivityName >
				<xsl:value-of select="@ActId"/>
			</ActivityName>
			<Task>
				<xsl:value-of select="task"/>
			</Task>
			<xsl:for-each select="restrictions">
				<Restriction>
					<xsl:value-of select="restrictions"/>
				</Restriction>
			</xsl:for-each>
		</Activity>
	</xsl:template>
</xsl:stylesheet>
<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <FMPXMLRESULT xmlns="http://www.filemaker.com/fmpxmlresult">
      <METADATA>
        <FIELD NAME="analysis_id" TYPE="TEXT" />
        <FIELD NAME="cancer_type" TYPE="TEXT" />
        <FIELD NAME="cancer_vaf" TYPE="TEXT" />
        <FIELD NAME="gene_marker" TYEP="TEXT" />
        <FIELD NAME="gene" TYEP="TEXT" />
        <FIELD NAME="no" TYEP="NUMBER" />
        <FIELD NAME="report_flag" TYEP="NUMBER" />
        <FIELD NAME="incident_count" TYEP="NUMBER" />
        <FIELD NAME="odd" TYEP="NUMBER" />
        <FIELD NAME="change" TYEP="TEXT" />

        
        
      </METADATA>
      <RESULTSET>
        <xsl:for-each select="/report/drug-list/actionable-markers/marker">

          <xsl:variable name="marker_val" select="@marker" />
          <xsl:variable name="gene_marker_val" select="gene_information/gene/@marker" />
          <xsl:variable name="gene_val" select="gene_information/gene" />
          <xsl:variable name="no_val" select="gene_information/no"  />
          <xsl:variable name="report_flag_val" select="gene_information/report_flag"  />
          <xsl:variable name="incident_count_val" select="gene_information/incident_count"  />
          <xsl:variable name="odd_val" select="gene_information/odd"  />
          <xsl:variable name="change_val" select="gene_information/change"  />
          
          <xsl:for-each select="gene_information/incident">

            <ROW>
              <COL>
                <DATA>
                  <xsl:value-of select="/report/ids/analysis_id" />
                </DATA>
              </COL>
              <COL>
                <DATA>
                  <xsl:value-of select="cancer_type" />
                </DATA>
              </COL>
              <COL>
                <DATA>
                  <xsl:value-of select="cancer_vaf" />
                </DATA>
              </COL>
              <COL>
                <DATA>
                  <xsl:value-of select="$gene_marker_val" />
                </DATA>
              </COL>
              <COL>
                <DATA>
                  <xsl:value-of select="$gene_val" />
                </DATA>
              </COL>
              <COL>
                <DATA>
                  <xsl:value-of select="$no_val" />
                </DATA>
              </COL>
              <COL>
                <DATA>
                  <xsl:value-of select="$report_flag_val" />
                </DATA>
              </COL>
              <COL>
                <DATA>
                  <xsl:value-of select="$incident_count_val" />
                </DATA>
              </COL>
              <COL>
                <DATA>
                  <xsl:value-of select="$odd_val" />
                </DATA>
              </COL>
              <COL>
                <DATA>
                  <xsl:value-of select="$change_val" />
                </DATA>
              </COL>
            </ROW>
          </xsl:for-each>
        </xsl:for-each>
      </RESULTSET>
    </FMPXMLRESULT>
  </xsl:template>
</xsl:stylesheet>
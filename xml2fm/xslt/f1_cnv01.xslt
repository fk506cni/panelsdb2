<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:as="http://foundationmedicine.com/compbio/variant-report-external" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:rr="http://integration.foundationmedicine.com/reporting" >
  <xsl:template match="/">
    <FMPXMLRESULT xmlns="http://www.filemaker.com/fmpxmlresult">
      <METADATA>
        <FIELD NAME="rr_ReferenceID" TYEP="TEXT" />
        <FIELD NAME="rr_TRF" TYEP="TEXT" />
        <FIELD NAME="copy_number" TYEP="NUMBER" />
        <FIELD NAME="equivocal" TYEP="TEXT" />
        <FIELD NAME="gene" TYEP="TEXT" />
        <FIELD NAME="number_of_exons" TYEP="TEXT" />
        <FIELD NAME="position" TYEP="TEXT" />
        <FIELD NAME="ratio" TYEP="TEXT" />
        <FIELD NAME="status" TYEP="TEXT" />
        <FIELD NAME="type" TYEP="TEXT" />
        <FIELD NAME="dna-evidence-sample" TYEP="TEXT" />
        <FIELD NAME="import_tag" TYEP="TEXT" />

      </METADATA>
      <RESULTSET>

        <xsl:variable name="ver" select="''"/>
        <xsl:variable name="ref_id" select="rr:ResultsReport/rr:CustomerInformation/rr:ReferenceID"/>
        <xsl:variable name="order_id" select="rr:ResultsReport/rr:CustomerInformation/rr:TRF"/>
        <xsl:for-each select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/as:copy-number-alterations/as:copy-number-alteration">
          
          <ROW>
            <COL>
              <DATA>
                <xsl:value-of select="$ref_id" />
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="$order_id" />
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="@copy-number" />
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="@equivocal" />
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="@gene" />
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="@number-of-exons" />
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="@positions" />
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="@ratio" />
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="@status" />
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="@type" />
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="as:dna-evidence/@sample" />
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="$ver" />
              </DATA>
            </COL>
          </ROW>
        </xsl:for-each>
      </RESULTSET>
    </FMPXMLRESULT>
  </xsl:template>
</xsl:stylesheet>
<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:as="http://foundationmedicine.com/compbio/variant-report-external" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:rr="http://integration.foundationmedicine.com/reporting" >
  <xsl:template match="/">
    <FMPXMLRESULT xmlns="http://www.filemaker.com/fmpxmlresult">
      <METADATA>
        <FIELD NAME="rr_ReferenceID" TYEP="TEXT" />
        <FIELD NAME="rr_TRF" TYEP="TEXT" />
        <FIELD NAME="status" TYEP="TEXT" />
        <FIELD NAME="reads-per-million" TYEP="TEXT" />
        <FIELD NAME="organism" TYEP="TEXT" />
        <FIELD NAME="sample" TYEP="TEXT" />
        <FIELD NAME="import_tag" TYEP="TEXT" />

      </METADATA>
      <RESULTSET>

        <xsl:variable name="ref_id" select="rr:ResultsReport/rr:CustomerInformation/rr:ReferenceID"/>
        <xsl:variable name="order_id" select="rr:ResultsReport/rr:CustomerInformation/rr:TRF"/>
        <xsl:for-each select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/as:non-human-content/as:non-human">
        <xsl:variable name="ver" select="''"/>
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
              <xsl:value-of select="@status" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="@reads-per-million" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="@organism" />
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
<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:as="http://foundationmedicine.com/compbio/variant-report-external" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:rr="http://integration.foundationmedicine.com/reporting" >
  <xsl:template match="/">
    <FMPXMLRESULT xmlns="http://www.filemaker.com/fmpxmlresult">
      <METADATA>
        <FIELD NAME="rr_ReferenceID" TYEP="TEXT" />
        <FIELD NAME="rr_TRF" TYEP="TEXT" />
        <FIELD NAME="bait_set" TYEP="TEXT" />
        <FIELD NAME="mean_exon_depth" TYEP="TEXT" />
        <FIELD NAME="name" TYEP="TEXT" />
        <FIELD NAME="nucleic_acid_type" TYEP="TEXT" />
        <FIELD NAME="import_tag" TYEP="TEXT" />

      </METADATA>
      <RESULTSET>

        <xsl:variable name="ref_id" select="rr:ResultsReport/rr:CustomerInformation/rr:ReferenceID"/>
        <xsl:variable name="order_id" select="rr:ResultsReport/rr:CustomerInformation/rr:TRF"/>
        <xsl:for-each select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/as:samples/as:sample">
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
              <xsl:value-of select="@bait-set" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="@mean-exon-depth" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="@name" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="@nucleic-acid-type" />
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
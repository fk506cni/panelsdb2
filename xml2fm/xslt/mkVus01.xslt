<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <FMPXMLRESULT xmlns="http://www.filemaker.com/fmpxmlresult">
      <METADATA>
        <FIELD NAME="marker" TYPE="TEXT"/>
        <FIELD NAME="marker_class" TYPE="TEXT"/>
        <FIELD NAME="no" TYPE="NUMBER"/>
        <FIELD NAME="odd" TYPE="NUMBER"/>
        <FIELD NAME="type" TYPE="TEXT"/>
        <FIELD NAME="quality" TYPE="TEXT"/>
        <FIELD NAME="gene" TYPE="TEXT"/>
        <FIELD NAME="cosmic_gene" TYPE="TEXT"/>
        <FIELD NAME="transcript" TYPE="TEXT"/>
        <FIELD NAME="exon_no" TYPE="TEXT"/>
        <FIELD NAME="cds_change" TYPE="TEXT"/>
        <FIELD NAME="change" TYPE="TEXT"/>
        <FIELD NAME="function" TYPE="TEXT"/>
        <FIELD NAME="location" TYPE="TEXT"/>
        <FIELD NAME="copy_ratio" TYPE="TEXT"/>
        <FIELD NAME="allele_freq" TYPE="TEXT"/>
        <FIELD NAME="depth" TYPE="TEXT"/>
        <FIELD NAME="cosmic_id" TYPE="TEXT"/>
        <FIELD NAME="cosmic_count" TYPE="TEXT"/>
        <FIELD NAME="cosmic_status" TYPE="TEXT"/>
        <FIELD NAME="clinvar_id" TYPE="TEXT"/>
        <FIELD NAME="clinvar_count" TYPE="TEXT"/>
        <FIELD NAME="clinvar_significance" TYPE="TEXT"/>
        <FIELD NAME="snp" TYPE="TEXT"/>
        <FIELD NAME="method" TYPE="TEXT"/>
        <FIELD NAME="comment" TYPE="TEXT"/>

        <!--
        <FIELD NAME="source_id" TYEP="TEXT" />
        -->
        
        <FIELD NAME="analysis_id" TYPE="TEXT"/>
        <FIELD NAME="gene_information_gene" TYPE="TEXT"/>
        <FIELD NAME="gene_information_no" TYPE="TEXT"/>
        <FIELD NAME="gene_information_report_flag" TYPE="TEXT"/>
        <FIELD NAME="gene_information_incident_count" TYPE="TEXT"/>
        <FIELD NAME="gene_information_odd" TYPE="TEXT"/>
        <FIELD NAME="gene_information_change" TYPE="TEXT"/>


      </METADATA>
      <RESULTSET>
        <xsl:for-each select="/report/drug-list/vuss/marker">

          <ROW>
            <COL>
              <DATA>
                <xsl:value-of select="@marker"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:text>vuss</xsl:text>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="no"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="odd"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="type"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="quality"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="gene"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="cosmic_gene"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="transcript"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="exon_no"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="cds_change"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="change"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="function"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="location"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="copy_ratio"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="allele-freq"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="depth"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="cosmic_id"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="cosmic_count"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="cosmic_status"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="clinvar_id"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="clinvar_count"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="clinvar_significance"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="snp"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="method"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="comment"/>
              </DATA>
            </COL>
            
            <!--

            <COL>
              <DATA>
                <xsl:value-of select="source_id" />
              </DATA>
            </COL>
            -->

            <COL>
              <DATA>
                <xsl:value-of select="/report/ids/analysis_id"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="gene_information/gene"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="gene_information/no"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="gene_information/report_flag"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="gene_information/incident_count"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="gene_information/odd"/>
              </DATA>
            </COL>
            <COL>
              <DATA>
                <xsl:value-of select="gene_information/change"/>
              </DATA>
            </COL>


          </ROW>
        </xsl:for-each>
      </RESULTSET>
    </FMPXMLRESULT>
  </xsl:template>
</xsl:stylesheet>
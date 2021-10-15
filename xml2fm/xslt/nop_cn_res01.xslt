<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <FMPXMLRESULT xmlns="http://www.filemaker.com/fmpxmlresult">
      <METADATA>
        <FIELD NAME="speciment_type" TYPE="TEXT"/>
        <FIELD NAME="panel" TYPE="TEXT"/>
        <FIELD NAME="reagent" TYPE="TEXT"/>
        <FIELD NAME="run_date" TYPE="TEXT"/>
        <FIELD NAME="reads_name" TYPE="TEXT"/>
        <FIELD NAME="total_reads" TYPE="TEXT"/>
        <FIELD NAME="mapping_rate" TYPE="NUMBER"/>
        <FIELD NAME="duplication_rate" TYPE="NUMBER"/>
        <FIELD NAME="discordance_rate" TYPE="NUMBER"/>
        <FIELD NAME="mismatch_rate" TYPE="NUMBER"/>
        <FIELD NAME="deletion_rate" TYPE="NUMBER"/>
        <FIELD NAME="insertion_rate" TYPE="NUMBER"/>
        <FIELD NAME="avg_cov" TYPE="NUMBER"/>
        <FIELD NAME="median_cov" TYPE="NUMBER"/>
        <FIELD NAME="avg_insert_size" TYPE="NUMBER"/>
        <FIELD NAME="insert_size" TYPE="NUMBER"/>
        <FIELD NAME="avg_cov_flg" TYPE="NUMBER"/>
        <FIELD NAME="analysis_id" TYPE="TEXT"/>

      </METADATA>
      <RESULTSET>
        <xsl:variable name="tumor_val" select='tumor'/>
        <xsl:variable name="normal_val" select="normal"/>
        <ROW>
          <COL>
            <DATA>
              <xsl:text>tumor</xsl:text>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/tumor/panel"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/tumor/reagent"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/tumor/run_date"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/tumor/reads_name"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/tumor/total_reads"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/tumor/mapping-rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/tumor/duplication-rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/tumor/discordance-rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/tumor/mismatch-rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/tumor/deletion-rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/tumor/insertion-rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/tumor/avg_cov"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/tumor/median_cov"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/tumor/avg-insert-size"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/tumor/insert-size"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/tumor/avg_cov_flg"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/ids/analysis_id"/>
            </DATA>
          </COL>
          
        </ROW>

        
        
        <ROW>
          <COL>
            <DATA>
              <xsl:text>normal</xsl:text>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/normal/panel"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/normal/reagent"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/normal/run_date"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/normal/reads_name"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/normal/total_reads"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/normal/mapping-rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/normal/duplication-rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/normal/discordance-rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/normal/mismatch-rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/normal/deletion-rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/normal/insertion-rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/normal/avg_cov"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/normal/median_cov"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/normal/avg-insert-size"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/normal/insert-size"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/qc-results/normal/avg_cov_flg"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/ids/analysis_id"/>
            </DATA>
          </COL>

        </ROW>
        
      </RESULTSET>
    </FMPXMLRESULT>
  </xsl:template>
</xsl:stylesheet>
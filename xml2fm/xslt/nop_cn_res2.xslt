<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <FMPXMLRESULT xmlns="http://www.filemaker.com/fmpxmlresult">
            <METADATA>
              <FIELD NAME="name" TYPE="TEXT"/>
              <FIELD NAME="ratio" TYPE="NUMBER"/>
              <FIELD NAME="analysis_id" TYPE="TEXT"/>

              <!--
              <FIELD NAME="source_id" TYEP="TEXT" />
              -->
              
                
              
            </METADATA>
            <RESULTSET>
              <xsl:for-each select="/report/copy_ratio_table/row/gene">

                <ROW>
                  
                  <COL>
                    <DATA>
                      <xsl:value-of select="name"/>
                    </DATA>
                  </COL>
                  <COL>
                    <DATA>
                      <xsl:value-of select="ratio"/>
                    </DATA>
                  </COL>
                  
                  <COL>
                    <DATA>
                      <xsl:value-of select="/report/ids/analysis_id"/>
                    </DATA>
                  </COL>
                  
                  

                </ROW>
              </xsl:for-each>
            </RESULTSET>
        </FMPXMLRESULT>
    </xsl:template>
</xsl:stylesheet>
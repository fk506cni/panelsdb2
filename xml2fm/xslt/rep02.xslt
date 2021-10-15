<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<FMPXMLRESULT xmlns="http://www.filemaker.com/fmpxmlresult">
			<METADATA>
				<FIELD NAME="analysis_id" TYPE="NUMBER"/>

        <!--
        <FIELD NAME="report_id" TYEP="TEXT" />
        <FIELD NAME="ccat_testing_company_reception_id" TYEP="TEXT" />
        <FIELD NAME="ccat_registration_id" TYEP="TEXT" />
        <FIELD NAME="ccat_patient_id" TYEP="TEXT" />
        <FIELD NAME="ccat_core_facility_code" TYEP="TEXT" />
        <FIELD NAME="ccat_requester_facility_code" TYEP="TEXT" />

        -->
        
        
        <FIELD NAME="version" TYPE="TEXT"/>
        <FIELD NAME="module" TYPE="TEXT"/>
        <FIELD NAME="dataset" TYPE="TEXT"/>
        <FIELD NAME="epdb_ver" TYPE="TEXT"/>
        <FIELD NAME="refgene_ver" TYPE="TEXT"/>
        <FIELD NAME="ensgene_ver" TYPE="TEXT"/>
        <FIELD NAME="g1000_ver" TYPE="TEXT"/>
        <FIELD NAME="sep6500_ver" TYPE="TEXT"/>
        <FIELD NAME="exac_ver" TYPE="TEXT"/>
        <FIELD NAME="hgvd_ver" TYPE="TEXT"/>
        <FIELD NAME="cosmic_ver" TYPE="TEXT"/>
        <FIELD NAME="clinvar_ver" TYPE="TEXT"/>
        <FIELD NAME="except_ver" TYPE="TEXT"/>
        <FIELD NAME="snv_condition" TYPE="TEXT"/>
        <FIELD NAME="cna_condition" TYPE="TEXT"/>
        <FIELD NAME="fusion_condition" TYPE="TEXT"/>

        <!--
        <FIELD NAME="citrine_ver" TYPE="TEXT"/>
        <FIELD NAME="result_scope" TYEP="TEXT" />
        <FIELD NAME="testing_name" TYEP="TEXT" />
        <FIELD NAME="system_name" TYEP="TEXT" />
        <FIELD NAME="provided_to_ccat" TYEP="TEXT" />
        
        -->
        
        <FIELD NAME="report_number" TYPE="NUMBER"/>
        <FIELD NAME="report_rev" TYPE="NUMBER"/>
        <FIELD NAME="report_creation_date" TYPE="TEXT"/>
        

        <FIELD NAME="snv_count" TYPE="NUMBER"/>
        <FIELD NAME="cna_count" TYPE="NUMBER"/>
        <FIELD NAME="fusion_count" TYPE="NUMBER"/>
        <FIELD NAME="germline_count" TYPE="NUMBER"/>
        <FIELD NAME="total_count" TYPE="NUMBER"/>
        <FIELD NAME="mutation_count" TYPE="NUMBER"/>
        <FIELD NAME="ifsf_count" TYPE="NUMBER"/>
        
        <FIELD NAME="nonsyn_snv_count" TYPE="NUMBER"/>
        <FIELD NAME="syn_snv_count" TYPE="NUMBER"/>
        <FIELD NAME="exon_indel_count" TYPE="NUMBER"/>
        <FIELD NAME="exon_total_count" TYPE="NUMBER"/>
        <FIELD NAME="nonexon_snv_count" TYPE="NUMBER"/>
        <FIELD NAME="nonexon_indel_count" TYPE="NUMBER"/>
        <FIELD NAME="nonexon_total_count" TYPE="NUMBER"/>
        <FIELD NAME="all_snv_count" TYPE="NUMBER"/>
        <FIELD NAME="all_indel_count" TYPE="NUMBER"/>
        <FIELD NAME="all_total_count" TYPE="NUMBER"/>
        <FIELD NAME="nonsyn_snv_rate" TYPE="NUMBER"/>
        <FIELD NAME="syn_snv_rate" TYPE="NUMBER"/>
        <FIELD NAME="exon_indel_rate" TYPE="NUMBER"/>
        <FIELD NAME="exon_total_rate" TYPE="NUMBER"/>
        <FIELD NAME="nonexon_snv_rate" TYPE="NUMBER"/>
        <FIELD NAME="nonexon_indel_rate" TYPE="NUMBER"/>
        <FIELD NAME="nonexon_total_rate" TYPE="NUMBER"/>
        <FIELD NAME="all_snv_rate" TYPE="NUMBER"/>
        <FIELD NAME="all_indel_rate" TYPE="NUMBER"/>
        <FIELD NAME="all_total_rate" TYPE="NUMBER"/>

        <FIELD NAME="sequencing_count_snv_count" TYPE="NUMBER"/>
        <FIELD NAME="sequencing_count_cna_count" TYPE="NUMBER"/>
        <FIELD NAME="sequencing_count_fusion_count" TYPE="NUMBER"/>
        <FIELD NAME="sequencing_count_germline_count" TYPE="NUMBER"/>

        <FIELD NAME="msi_status" TYPE="NUMBER"/>
        <FIELD NAME="msi_score" TYPE="TEXT"/>


        <!--
        <FIELD NAME="comment" TYEP="TEXT" />
        -->
      </METADATA>
			<RESULTSET>
				<ROW>
					<COL>
						<DATA>
              <xsl:value-of select="report/ids/analysis_id"/>
            </DATA>
					</COL>
          
          <!--
          <COL>
            <DATA>
              <xsl:value-of select="report/ids/report_id" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/ids/ccat_testing_company_reception_id" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/ids/ccat_registration_id" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/ids/ccat_patient_id" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/ids/ccat_core_facility_code" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/ids/ccat_requester_facility_code" />
            </DATA>
          </COL>
          
          
          -->
          
          <COL>
            <DATA>
              <xsl:value-of select="report/info/version"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/info/module"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/info/dataset"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <!--デモ版では存在した"_ver"の文字列が、保険版レポートでは消えているので、以下から修正している。
              <xsl:value-of select="report/info/epdb_ver"/>
              -->
              <xsl:value-of select="report/info/epdb"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <!--
              <xsl:value-of select="report/info/refgene_ver"/>
              -->
              <xsl:value-of select="report/info/refgene"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <!--
              <xsl:value-of select="report/info/ensgene_ver"/>
              -->
              <xsl:value-of select="report/info/ensgene"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <!--
              <xsl:value-of select="report/info/g1000_ver"/>
              -->
              <xsl:value-of select="report/info/g1000"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <!--
              <xsl:value-of select="report/info/esp6500_ver"/>
              -->
              <xsl:value-of select="report/info/esp6500"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <!--
              <xsl:value-of select="report/info/exac_ver"/>
              -->
              <xsl:value-of select="report/info/exac"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <!--
              <xsl:value-of select="report/info/hgvd_ver"/>
              -->
              <xsl:value-of select="report/info/hgvd"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <!--
              <xsl:value-of select="report/info/cosmic_ver"/>
              -->
              <xsl:value-of select="report/info/cosmic"/>
            </DATA>
          </COL>

          <COL>
            <DATA>
              <!--
              <xsl:value-of select="report/info/clinvar_ver"/>
              -->
              <xsl:value-of select="report/info/clinvar"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <!--
              <xsl:value-of select="report/info/except_ver"/>
              -->
              <xsl:value-of select="report/info/except"/>
            </DATA>
          </COL>            
          <COL>
            <DATA>
              <xsl:value-of select="report/info/snv_condition"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/info/cna_condition"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/info/fusion_condition"/>
            </DATA>
          </COL>


          <COL>
            <DATA>
              <xsl:value-of select="report/requisition-info/report_number"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/requisition-info/report_rev"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/requisition-info/report_creation_date"/>
            </DATA>
          </COL>

          <COL>
            <DATA>
              <xsl:value-of select="report/summary_count/snv_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/summary_count/cna_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/summary_count/fusion_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/summary_count/germline_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/summary_count/total_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/summary_count/mutation_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/summary_count/ifsf_count"/>
            </DATA>
          </COL>


          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/nonsyn_snv_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/syn_snv_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/exon_indel_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/exon_total_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/nonexon_snv_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/nonexon_indel_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/nonexon_total_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/all_snv_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/all_indel_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/all_total_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/nonsyn_snv_rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/syn_snv_rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/exon_indel_rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/exon_total_rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/nonexon_snv_rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/nonexon_indel_rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/nonexon_total_rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/all_snv_rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/all_indel_rate"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/mutation_count/all_total_rate"/>
            </DATA>
          </COL>
                    
          <COL>
            <DATA>
              <xsl:value-of select="report/sequencing_count/snv_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/sequencing_count/snv_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/sequencing_count/snv_count"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/sequencing_count/snv_count"/>
            </DATA>
          </COL>

          <COL>
            <DATA>
              <xsl:value-of select="report/msi/status"/>
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="report/msi/score"/>
            </DATA>
          </COL>
          <!--
          <COL>
            <DATA>
              <xsl:value-of select="report/comment" />
            </DATA>
          </COL>
          -->
          
				</ROW>
			</RESULTSET>
		</FMPXMLRESULT>
	</xsl:template>
</xsl:stylesheet>
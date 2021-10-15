<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:as="http://foundationmedicine.com/compbio/variant-report-external" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:rr="http://integration.foundationmedicine.com/reporting" >
  <xsl:template match="/">
    <FMPXMLRESULT xmlns="http://www.filemaker.com/fmpxmlresult">
      <METADATA>
        <FIELD NAME="rr_ReferenceID" TYEP="TEXT" />
        <FIELD NAME="rr_CSN" TYEP="TEXT" />
        <FIELD NAME="rr_TRF" TYEP="TEXT" />
        <FIELD NAME="rr_MRN" TYEP="TEXT" />
        <FIELD NAME="rr_PhysicianID" TYEP="TEXT" />
        <FIELD NAME="rr_NPI" TYEP="TEXT" />

        
        <!-- <FIELD NAME="xmlns" TYEP="TEXT" /> -->
        
        <FIELD NAME="disease" TYEP="TEXT" />
        <FIELD NAME="disease_ontology" TYEP="TEXT" />
        <FIELD NAME="flowcell_analysis" TYEP="TEXT" />
        <FIELD NAME="gender" TYEP="TEXT" />
        <FIELD NAME="pathology_diagnosis" TYEP="TEXT" />
        <FIELD NAME="percent_tumor_nuclei" TYEP="TEXT" />
        <FIELD NAME="pipeline_version" TYEP="TEXT" />
        <FIELD NAME="purity_assessment" TYEP="TEXT" />
        <FIELD NAME="specimen" TYEP="TEXT" />
        <FIELD NAME="study" TYEP="TEXT" />
        <FIELD NAME="test_request" TYEP="TEXT" />
        <FIELD NAME="test_type" TYEP="TEXT" />
        <FIELD NAME="tissue_of_origin" TYEP="TEXT" />
        
        
        <!-- <FIELD NAME="xsi_shemaLocation" TYEP="TEXT" />  -->
        <FIELD NAME="quality_control_status" TYEP="TEXT" />
        <FIELD NAME="biomarkers_MSI_status" TYEP="TEXT" />
        <FIELD NAME="biomarkers_TMB_score" TYEP="TEXT" />
        <FIELD NAME="biomarkers_TMB_status" TYEP="TEXT" />
        <FIELD NAME="biomarkers_TMB_unit" TYEP="TEXT" />
 
        
        
      </METADATA>
      <RESULTSET>

        <xsl:variable name="ver" select="''"/>
        
        <ROW>

          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:CustomerInformation/rr:ReferenceID" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:CustomerInformation/rr:CSN" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:CustomerInformation/rr:TRF" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:CustomerInformation/rr:MRN" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:CustomerInformation/rr:PhysicianId" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:CustomerInformation/rr:NPI" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/@disease" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/@disease-ontology" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/@flowcell-analysis" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/@gender" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/@pathology-diagnosis" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/@percent-tumor-nuclei" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/@pipeline-version" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/@purity-assessment" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/@specimen" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/@study" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/@test-request" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/@test-type" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/@tissue-of-origin" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/as:quality-control/@status" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/as:biomarkers/as:microsatellite-instability/@status" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/as:biomarkers/as:tumor-mutation-burden/@score" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/as:biomarkers/as:tumor-mutation-burden/@status" />
            </DATA>
          </COL>
          <COL>
            <DATA>
              <xsl:value-of select="rr:ResultsReport/rr:ResultsPayload/as:variant-report/as:biomarkers/as:tumor-mutation-burden/@unit" />
            </DATA>
          </COL>


        </ROW>
      </RESULTSET>
    </FMPXMLRESULT>
  </xsl:template>
</xsl:stylesheet>
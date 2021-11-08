# panelsdb2


## introduction 
Here I will show you here how to manage the report xml data for Foundation One CDx and NCC Oncopanels that have been insured in Japan.  
It is very difficult to manage patient mutation data as a pdf report, but in Japan this is provided as xml data, and if you read xml, you can manage this as structured data.  
This is descrition of system using Filemaker pro to manage xml data from F1CDx and NCC oncopanels.  

## COI
Most of this FMDB was created when I was a hired researcher in a donation course established jointly by each company, including Chugai Pharmaceutical, which is the domestic implementation body of F1CDx.  
I have not received any particular instructions or requests from Chugai when creating the FMDB, but I would like to mention here that it was created based on such a relationship.  

## Support
You may freely use, and modify this DB and xslt associated with it for medical treatment and research at your own risk for non-commercial purposes. The license for redistribution shall be the same as the license for this DB.  
Since the core of the reading part has been created, I hope that you can modify it according to the user's environment.  
I don't have any support resources. The user is solely responsible for the use, and modification of this DB.  

## environment
PC: This will work laptop PC with small capacity. I think that there is no hard calculation or disk access and memory usage.  
OS: Windows (I created this windows 10)  
FM version: 16 +-2. (I created this FM pro 16 adv. Please check this by tiral version of FM before buy it.)  

### concept
The purpose of this DB is to centrally store the xml data returned by the panel inspection while maintaining the structure as much as possible. For example, when searching for past cases by narrowing down to a specific gene, it depends on the motive such as wanting to avoid the situation of reviewing the PDF.  
It is developed for the purpose of swallowing xml data collectively, and it is not assumed that users will register other variables of interest together and analyze related things on the DB. It is recommended to create another table or collect data separately for the research.  
This DB is designed to swallow the new xml under the above parent folder every time. This is due to the circumstances of our environment.  
If you want to link with the patient ID etc., please write the name of the child folder containing the case xml as 20200105_patientidxxyyzz. This database is designed to swallow before and after cutting with an underscore according to the report information.  
If you have the above id, you may be able to merge it with a suitable research table later.  
The structure of F1CDx and NOP xml itself is not explained here. I created a slide separately, so please check it. Clinicians will find out by comparing the report with xml. 
The notes are as follows.  
i.    No drug information about the mutation is attached.  
ii.    The format is completely different for F1 and NOP.  
iii.    TMB has a decimal point. 
iv.    It does not hold a LOH score.  
Regarding research use, I think that you can use it freely at your own risk, but if you use R or Python, I think that it is smart to obtain data with an odbc connection for various analyzes.  


## Usage
Please download panelsdb2/xml2fm.zip and extract it.  
You need to install FM to your PC before use this.  

## Admin User Account
name: Admin  
PW: DR>ba)4W&L  
It is not assumed that the password will be memorized or manually entered. Please change to a password suitable for each facility.

### How to use
dx.doi.org/10.17504/protocols.io.bzvip64e  

## Citation: 
PanelsDB2, FMDB to manage CGP report xml data. F.Keita  
https://github.com/fk506cni/panelsdb2  
dx.doi.org/10.17504/protocols.io.bzvip64e  

FoundationOne® CDx 及び NCC Oncopanelの結果xmlを格納するFileMaker DB

DBその他まとめはxml2fm.zipをダウンロードしてください。

その他問い合わせなどはissueのところに投稿いただければ可能な範囲で対応いたします。

### update
2021/10/15  
updateしました

FoundationOne® Liquid CDxへ対応  
G360サマリーデータに対応  
全パネル纏めデータ作成等  
panelsdb2操作メモ_2.pptxを参照ください  

### Readme.docx
readme。COIや、起動PWなど記載していますので一読ください。

### パネル検査xml.pptx
パネル検査のxml構造についてのメモ

### panelsdb2操作メモ.pptx
DB操作のメモ

### panelsdb2操作メモ_2.pptx
アップデート分

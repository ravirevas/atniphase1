create table msussd (
CallReference string,
DateForStartofCharge timestamp,
FirstCellIdentity string,
FirstLac string,
FirstMCC string,
FirstMNC string,
HotBillFlag bigint,
Id bigint,
LastPartialOutput bigint,
MSCIdentification string,
MSCIdenTONNPI string,
Msclassmark string,
MscSpc14 string,
MscSpc24 string,
PartialOutputRecNum bigint,
RecordOffset bigint,
RecordType bigint,
SequenceNumber bigint,
ServedIMEI string,
ServedIMSI string,
ServedNumber string,
ServedTONNPI string,
TimeForEndofCharge timestamp,
TimeForStartofCharge timestamp,
UssdDataCodingSheme string,
UssdDialogCount bigint,
UssdMMIData string,
UssdOperationCode string,
UssdRecordType bigint,
UssdResult string
)
stored as parquet;
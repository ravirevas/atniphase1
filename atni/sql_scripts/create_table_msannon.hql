create table msannon (
AnnonRecordType bigint,
AssisIpAddr string,
AssisIpTONNPI string,
CalledNumber string,
CalledTONNPI string,
CallingIMSI string,
CallingNumber string,
CallingTONNPI string,
CallReference string,
CauseForTermination string,
DateForStartofCharge timestamp,
FirstCellIdentity string,
FirstLac string,
FirstMCC string,
FirstMNC string,
GSMTeleServiceCode string,
Id bigint,
LastPartialOutput bigint,
MSCIdentification string,
MSCIdenTONNPI string,
OriginalCallingNumber string,
OriginalCallingTONNPI string,
PartialOutputRecNum bigint,
RecordOffset bigint,
RecordType bigint,
SCPAddr string,
SCPTONNPI string,
SequenceNumber bigint,
SubscriberCategory string,
TimeForEndAnnounce timestamp,
TimeForStartAnnounce timestamp
)
stored as parquet;
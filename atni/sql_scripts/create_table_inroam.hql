create table inroam (
BSCIdentification string,
CallDuration bigint,
CalledIMSI string,
CalledNumber string,
CalledTONNPI string,
CallingNumber string,
CallingTONNPI string,
CallReference string,
CauseForTermination string,
ChargedParty bigint,
DateForStartofCharge timestamp,
Diagnostics string,
ExchangeIdentity string,
GSMBearServiceCode string,
GSMTeleServiceCode string,
HotBillFlag string,
Id bigint,
IncomingCic string,
IncomingTKGP string,
IncomingTKGPName string,
LastPartialOutput bigint,
MSCIdentification string,
MSCIdenTONNPI string,
MscSpc14 string,
MscSpc24 string,
NetworkCallReference string,
OutgoingCic string,
OutgoingTKGP string,
OutgoingTKGPName string,
PartialOutputRecNum bigint,
RecordExtensions string,
RecordOffset bigint,
RecordType bigint,
RedirectingNumber string,
RedirectingTONNPI string,
RoamingNumber string,
RoamingTONNPI string,
SequenceNumber string,
ServiceCategory string,
SSCode string,
TimeForAnswer timestamp,
TimeForRelease timestamp,
TimeForSeizeChannel timestamp,
TransactionIdentification string,
TransparencyIndicator string
)
stored as parquet;
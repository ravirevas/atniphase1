

create table gsicphrecord (
	additionalchginfochargeindicator string,
	additionalchginfochargedparty string,
	basicservice string,
	callreference string,
	callsegmentid string,
	callednumber string,
	causeforterm string,
	defaultcallhandling string,
	diagnostics string,
	filename string,
	globalcallreference string,
	gsm_scfaddress string,
	iscamelcall string,
	lastlongpartind string,
	levelofcamelservice string,
	mscaddress string,
	networkcallreference string,
	numberofdpencountered bigint,
	partsequencenumber string,
	partialrecordtype string,
	recordsequencenumber string,
	recordtype bigint,
	recordingentity string,
	servedmsisdn string
)
stored as parquet;
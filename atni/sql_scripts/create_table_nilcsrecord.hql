

create table nilcsrecord (
	additionalchginfochargeindicator string,
	additionalchginfochargedparty string,
	causeforterm string,
	diagnostics string,
	emsdigits string,
	emskey string,
	eventtimestamp timestamp,
	filename string,
	hotbillingtag bigint,
	hotbillingtag2 bigint,
	lcscause string,
	lcsclientexternalidexternaladdress string,
	lcsclientidentitylcsclientdialedbyms string,
	lcsclientidentitylcsclientinternalid string,
	lcsclienttype string,
	lcspriority string,
	lcsqos string,
	locationestimate string,
	measureduration bigint,
	mlc_number string,
	operatorid bigint,
	positioningdata string,
	recordsequencenumber string,
	recordtype bigint,
	recordingentity string,
	servedimei string,
	servedimsi string,
	servedmsisdn string,
	systemtype string
)
stored as parquet;
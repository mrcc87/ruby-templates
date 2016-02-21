UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'http://spn-sit.igt.gov/' WHERE CATEGORY = 'app' AND PROP_ID = 'gov.default.user.url' AND SCOPE = 'system' AND SYSTEM_ID = 'gov';
-- http://10.6.148.162:8088/PaymentGateway/G2PGNotifyAPI?wsdl
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'http://vip-rp-be/PaymentGateway/G2PGNotifyAPI?wsdl' WHERE CATEGORY = 'address' AND PROP_ID = 'notifyPointLTM' AND SCOPE = 'system' AND SYSTEM_ID = 'onp';
-- http://10.6.148.162:8088/PaymentGateway/G2PGNotifyAPI?wsdl
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'http://vip-rp-be/PaymentGateway/G2PGNotifyAPI?wsdl' WHERE CATEGORY = 'address' AND PROP_ID = 'notifyPointSPN' AND SCOPE = 'system' AND SYSTEM_ID = 'onp';
-- http://172.26.166.132:8088/PaymentGateway/G2PGWalletAPI?wsdl
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'http://vip-rp-be/PaymentGateway/G2PGWalletAPI?wsdl' WHERE CATEGORY = 'address' AND PROP_ID = 'onpWalletEndPointLTM' AND SCOPE = 'system' AND SYSTEM_ID = 'onp';
-- http://172.26.166.132:8088/PaymentGateway/G2PGWalletAPI?wsdl
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'http://vip-rp-be/PaymentGateway/G2PGWalletAPI?wsdl' WHERE CATEGORY = 'address' AND PROP_ID = 'onpWalletEndPointSPN' AND SCOPE = 'system' AND SYSTEM_ID = 'onp';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'http://vip-rp/bam/OnePayOperatorServiceImpl?wsdl' WHERE CATEGORY = 'address' AND PROP_ID = 'operatorEndPointLTM' AND SCOPE = 'system' AND SYSTEM_ID = 'onp';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'http://vip-rp/bam/OnePayOperatorServiceImpl?wsdl' WHERE CATEGORY = 'address' AND PROP_ID = 'operatorEndPointSPN' AND SCOPE = 'system' AND SYSTEM_ID = 'onp';

UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gns-games1:1199,jnp://gns-games2:1199' WHERE CATEGORY = 'address' AND PROP_ID = 'b2c.bbm.provider.url.gns' AND SCOPE = 'system' AND SYSTEM_ID = 'cmp';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-act-1:1199' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.act.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-act-1:1199' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.cfg.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-cmp-1:1399' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.cmp.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-cos-1:1299' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.cos.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-da-1:1499' WHERE CATEGORY = 'app' AND PROP_ID = 'gms.da.rmi.url' AND SCOPE = 'system' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-dlv-1:1299' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.dlv.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-esm-1:1499' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.esm.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-ewl-1:1199' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.ewl.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-ewl-1:1199' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.ewl.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'cmp';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-ewn-1:1499' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.ewn.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-fdl-1:1299' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.fdl.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-hsa-1:1299' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.hsa.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-jem-1:1199' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.jem.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-loy-1:1399' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.loy.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-onp-1:1499' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.onp.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-prv-1:1499' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.prv.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-raf-1:1399' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.raf.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-sms-1:1199' WHERE CATEGORY = 'app' AND PROP_ID = 'gms.sms.jnp.url' AND SCOPE = 'system' AND SYSTEM_ID = 'cos';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-sms-1:1199' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.sms.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-vld-1:1499' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.vld.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gns-games1:1199,jnp://gns-games2:1199' WHERE CATEGORY = 'address' AND PROP_ID = 'gns.bbm.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gns-games1:1199,jnp://gns-games2:1199' WHERE CATEGORY = 'address' AND PROP_ID = 'gns.ebo.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gns-games1:1199,jnp://gns-games2:1199' WHERE CATEGORY = 'address' AND PROP_ID = 'gns.erc.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gns-games1:1199,jnp://gns-games2:1199' WHERE CATEGORY = 'address' AND PROP_ID = 'gns.pmts.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gns-games1:1199,jnp://gns-games2:1199' WHERE CATEGORY = 'address' AND PROP_ID = 'gns.rms.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gns-games1:1199,jnp://gns-games2:1199' WHERE CATEGORY = 'address' AND PROP_ID = 'gns.ums.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'gms';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gmscore1-1:1199' WHERE CATEGORY = 'app' AND PROP_ID = 'jnp.gmscore1.jnp.url' AND SCOPE = 'system' AND SYSTEM_ID = 'cos';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-dlv-1:1299' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.dlv.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'cmp';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-fdl-1:1299' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.fdl.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'cmp';
UPDATE GMS_SYS_PROPS SET PROP_VALUE = 'jnp://gms-sms-1:1199' WHERE CATEGORY = 'address' AND PROP_ID = 'gms.sms.rmi' AND SCOPE = 'global' AND SYSTEM_ID = 'cmp';

-- GMS_SYS_VARS
UPDATE GMS_SYS_VARS SET VAR_VALUE = '1399' WHERE ENVIRONMENT = 'sit' AND SYSTEM_ID = 'cmp' AND VAR_NAME = 'campaignJNDIPort';
UPDATE GMS_SYS_VARS SET VAR_VALUE = 'jnp://gmscore1-1:1199' WHERE ENVIRONMENT = 'sit' AND SYSTEM_ID = 'ewl' AND VAR_NAME = 'ewl.provider.url';
-- http://172.26.220.128:80/cs/main.faces
UPDATE GMS_SYS_VARS SET VAR_VALUE = 'http://spn-sit.igt.gov/cs/main.faces' WHERE ENVIRONMENT = 'sit' AND SYSTEM_ID = 'gov' AND VAR_NAME = 'gov.onepay.iframe.url';
-- http://10.47.45.64:7070/http-bind/
UPDATE GMS_SYS_VARS SET VAR_VALUE = 'http://chat-server:7070/http-bind/' WHERE ENVIRONMENT = 'sit' AND SYSTEM_ID = 'gov' AND VAR_NAME = 'msg.server.address';
-- sit
UPDATE GMS_SYS_VARS SET VAR_VALUE = 'GMS4' WHERE ENVIRONMENT = 'sit' AND SYSTEM_ID = 'cmp' AND VAR_NAME = 'schemaName';
-- GMS_CI
UPDATE GMS_SYS_VARS SET VAR_VALUE = 'GMS4' WHERE ENVIRONMENT = 'sit' AND SYSTEM_ID = 'jem' AND VAR_NAME = 'db.schema.name';
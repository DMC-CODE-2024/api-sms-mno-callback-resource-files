#!/bin/bash
set -x

#take back up of existing release
tar -xzvf api_sms_mno_callback_1.0.0.tar.gz >>api_sms_mno_callback_1.0.0_untar_log.txt
mkdir -p ${APP_HOME}/api_service/api_sms_mno_callback/
mkdir -p ${LOG_HOME}/api_service/api_sms_mno_callback/


mv api_sms_mno_callback_1.0.0/api_sms_mno_callback_1.0.0.jar ${RELEASE_HOME}/binary/
#mv national_whitelist_edr_1.0.0/log4j2.xml ${RELEASE_HOME}/global_config
mv api_sms_mno_callback_1.0.0/*  ${APP_HOME}/api_service/api_sms_mno_callback/

cd ${APP_HOME}/api_service/api_sms_mno_callback
ln -sf ${RELEASE_HOME}/binary/api_sms_mno_callback_1.0.0.jar api_sms_mno_callback.jar
ln -sf ${RELEASE_HOME}/global_config/log4j2.xml log4j2.xml

chmod +x *.sh


echo "++++++++++++Application Installation completed+++++++++++"


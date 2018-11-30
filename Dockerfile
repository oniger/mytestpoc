FROM centos:7

MAINTAINER Software AG
ENV SAG_HOME /opt/softwareag
ENV INSTANCE_NAME default
ENV JAVA_HOME ${SAG_HOME}/jvm/jvm/
ENV JRE_HOME ${SAG_HOME}/jvm/jvm/jre/

RUN groupadd -g 1724 sagadmin; useradd -u 1724 -m -g 1724 -d ${SAG_HOME} sagadmin
USER 1724
RUN mkdir -p ${SAG_HOME}/jvm ${SAG_HOME}/common ${SAG_HOME}/IntegrationServer ${SAG_HOME}/IntegrationServer/instances ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME} ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages ${SAG_HOME}/profiles ${SAG_HOME}/install

COPY --chown=1724:1724 ./jvm/jvm/ ${SAG_HOME}/jvm/jvm/
COPY --chown=1724:1724 ./install/jars/ ${SAG_HOME}/install/jars/
COPY --chown=1724:1724 ./install/profile/ ${SAG_HOME}/install/profile/
COPY --chown=1724:1724 ./install/products/ ${SAG_HOME}/install/products/


COPY --chown=1724:1724 ./common/bin/ ${SAG_HOME}/common/bin/
COPY --chown=1724:1724 ./common/conf/ ${SAG_HOME}/common/conf/
COPY --chown=1724:1724 ./common/db/ ${SAG_HOME}/common/db/
COPY --chown=1724:1724 ./common/lib/ ${SAG_HOME}/common/lib/
COPY --chown=1724:1724 ./common/runtime/ ${SAG_HOME}/common/runtime/

COPY --chown=1724:1724 ./WS-Stack/ ${SAG_HOME}/WS-Stack/

COPY --chown=1724:1724 ./IntegrationServer/bin/ ${SAG_HOME}/IntegrationServer/bin/
COPY --chown=1724:1724 ./IntegrationServer/lib/ ${SAG_HOME}/IntegrationServer/lib/
COPY --chown=1724:1724 ./IntegrationServer/updates/ ${SAG_HOME}/IntegrationServer/updates/
COPY --chown=1724:1724 ./IntegrationServer/features/ ${SAG_HOME}/IntegrationServer/features/

COPY --chown=1724:1724 ./IntegrationServer/.tc.dev.log4j.properties ${SAG_HOME}/IntegrationServer/.tc.dev.log4j.properties

COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/web/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/web/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/updates/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/updates/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/replicate/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/replicate/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/lib/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/lib/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/bin/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/bin/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/db/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/db/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/config/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/config/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/log4j.properties ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/log4j.properties

COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/Default/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/Default/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmART/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmART/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmARTExtDC/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmARTExtDC/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmAssetPublisher/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmAssetPublisher/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmCloud/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmCloud/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmFlatFile/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmFlatFile/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmISExtDC/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmISExtDC/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmJSONAPI/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmJSONAPI/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmPublic/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmPublic/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmRoot/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmRoot/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmVCS/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmVCS/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmXSLT/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmXSLT/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmClearCase/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmClearCase/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmBrokerDeployer/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmBrokerDeployer/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmAgileAppsDeployer/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmAgileAppsDeployer/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmDeployer/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmDeployer/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmLogUtil/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmLogUtil/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmSubversion/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmSubversion/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmCloudStreamsDeployer/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmCloudStreamsDeployer/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmDB/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmDB/
COPY --chown=1724:1724 ./IntegrationServer/instances/${INSTANCE_NAME}/packages/WmNUMDeployer/ ${SAG_HOME}/IntegrationServer/instances/${INSTANCE_NAME}/packages/WmNUMDeployer/

COPY --chown=1724:1724 ./IntegrationServer/instances/lib/ ${SAG_HOME}/IntegrationServer/instances/lib/
COPY --chown=1724:1724 ./IntegrationServer/instances/is_instance.xml ${SAG_HOME}/IntegrationServer/instances/is_instance.xml
COPY --chown=1724:1724 ./profiles/IS_${INSTANCE_NAME}/configuration/custom_wrapper.conf ${SAG_HOME}/IntegrationServer/instances/custom_wrapper.conf.template

COPY --chown=1724:1724 ./IntegrationServer/instances/is_instance.sh ${SAG_HOME}/IntegrationServer/instances/is_instance.sh
RUN rm /opt/softwareag/IntegrationServer/instances/${INSTANCE_NAME}/config/repository4.cnf; rm /opt/softwareag/IntegrationServer/instances/${INSTANCE_NAME}/config/security/keystore/default_is_keystore_ks_config.xml; rm /opt/softwareag/IntegrationServer/instances/${INSTANCE_NAME}/config/security/keystore/default_is_truststore_ts_config.xml; cd /opt/softwareag/IntegrationServer/instances; ./is_instance.sh updateDockerConfigFiles -Dinstance.name=${INSTANCE_NAME}; cd /opt/softwareag/IntegrationServer/instances; ./is_instance.sh create-osgi-profile -Dinstance.name=${INSTANCE_NAME}
COPY --chown=1724:1724 ./profiles/IS_${INSTANCE_NAME}/configuration/com.softwareag.platform.config.propsloader/com.softwareag.sso.pid.properties.wmcloud ${SAG_HOME}/profiles/IS_${INSTANCE_NAME}/configuration/com.softwareag.platform.config.propsloader/com.softwareag.sso.pid.properties
COPY --chown=1724:1724 ./profiles/IS_${INSTANCE_NAME}/configuration/org.eclipse.equinox.simpleconfigurator/bundles.info.fixes ${SAG_HOME}/profiles/IS_${INSTANCE_NAME}/configuration/org.eclipse.equinox.simpleconfigurator/bundles.info
COPY --chown=1724:1724 ./profiles/IS_${INSTANCE_NAME}/configuration/security/ ${SAG_HOME}/profiles/IS_${INSTANCE_NAME}/configuration/security/

EXPOSE 5555
EXPOSE 9999
LABEL com.softwareag.product="IntegrationServer" \com.softwareag.product.version="10.3.0.0" \com.softwareag.product.build="118" \com.softwareag.webmethodscloud.primaryPort="5555"
CMD /opt/softwareag/profiles/IS_default/bin/startup.sh;sleep infinity;

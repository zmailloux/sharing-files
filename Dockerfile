# https://community.grafana.com/t/docker-volumes-and-plugins/8218

FROM grafana/grafana:7.0.0
USER root

ENV GF_PLUGIN_DIR="/data/grafana/plugins"
RUN ls -l /
RUN mkdir -p /data/grafana/plugins && chown -R grafana:grafana /data/grafana/plugins

RUN grafana-cli --pluginsDir "${GF_PLUGIN_DIR}" plugins install grafana-kubernetes-app
RUN grafana-cli --pluginsDir "${GF_PLUGIN_DIR}" plugins install grafana-worldmap-panel
RUN grafana-cli --pluginsDir "${GF_PLUGIN_DIR}" plugins install jdbranham-diagram-panel
RUN grafana-cli --pluginsDir "${GF_PLUGIN_DIR}" plugins install briangann-datatable-panel
RUN grafana-cli --pluginsDir "${GF_PLUGIN_DIR}" plugins install snuids-trafficlights-panel
RUN grafana-cli --pluginsDir "${GF_PLUGIN_DIR}" plugins install grafana-piechart-panel
RUN grafana-cli --pluginsDir "${GF_PLUGIN_DIR}" plugins install grafana-polystat-panel
RUN grafana-cli --pluginsDir "${GF_PLUGIN_DIR}" plugins install michaeldmoore-annunciator-panel
RUN grafana-cli --pluginsDir "${GF_PLUGIN_DIR}" plugins install vonage-status-panel
RUN grafana-cli --pluginsDir "${GF_PLUGIN_DIR}" plugins install monitoringartist-monitoringart-datasource
RUN grafana-cli --pluginsDir "${GF_PLUGIN_DIR}" plugins install yesoreyeram-boomtable-panel
RUN grafana-cli --pluginsDir "${GF_PLUGIN_DIR}" plugins install yesoreyeram-boomtheme-panel
# RUN grafana-cli --pluginsDir "${GF_PLUGIN_DIR}" plugins install grafana-image-renderer
RUN grafana-cli --pluginsDir "${GF_PLUGIN_DIR}" plugins install aidanmountford-html-panel
RUN grafana-cli --pluginsDir "${GF_PLUGIN_DIR}" plugins install novalabs-annotations-panel
RUN grafana-cli --pluginsDir "${GF_PLUGIN_DIR}" plugins install xginn8-pagerduty-datasource
RUN grafana-cli --pluginsDir "${GF_PLUGIN_DIR}" plugins install devopsprodigy-kubegraf-app
RUN grafana-cli --pluginsDir "${GF_PLUGIN_DIR}" plugins install camptocamp-prometheus-alertmanager-datasource

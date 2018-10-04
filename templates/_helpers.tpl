{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "eosio-testnet.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{- define "eosio-testnet.fullname" -}}
{{- $name := include "eosio-testnet.name" . -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "eosio-testnet.biosfullname" -}}
{{- printf "%s-bios" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "eosio-testnet.nodeosfullname" -}}
{{- printf "%s-nodeos" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "eosio-testnet.headlessService" -}}
{{- printf "%s-service" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "eosio-testnet.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

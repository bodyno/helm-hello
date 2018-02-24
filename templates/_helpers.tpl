{{- define "hello-world.release_labels" }}
{{- if .Values.isDev }}
app: {{ printf "%s-%s" .Release.Name .Chart.Name | trunc 63 }}
{{- else }}
app: {{ .Chart.Name }}
{{- end }}
version: {{ .Chart.Version }}
release: {{ .Release.Name }}
{{- end }}

{{- define "hello-world.full_name" -}}
{{- if .Values.isDev }}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 -}}
{{- else }}
{{- .Chart.Name -}}
{{- end }}
{{- end -}}
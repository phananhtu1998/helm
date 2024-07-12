{{/* Common labels */}}
{{- define "common.labels" -}}
name: minio
{{- end }}
{{/* Common selector */}}
{{- define "common.selector" -}}
app: minio
{{- end }}
{{/* Common secretkey */}}
{{- define "common.secretkey" -}}
- name: MINIO_ACCESS_KEY
  value: "admin"
- name: MINIO_SECRET_KEY
  value: "thaco@1234"
{{- end }}
{{/* Common livenessProbe */}}
{{- define "common.livenessProbe" -}}
httpGet:
    path: /minio/health/live
    port: 9000
initialDelaySeconds: 120
periodSeconds: 20
{{- end }}
{{/* Common readinessProbe */}}
{{- define "common.readinessProbe" -}}
httpGet:
    path: /minio/health/ready
    port: 9000
initialDelaySeconds: 120
periodSeconds: 20
{{- end }}
{{/* Common resources */}}
{{- define "common.resources" -}}
requests:
    memory: "1000Mi"
    cpu: "1000m"
limits:
    memory: "1500Mi"
    cpu: "1500m"
{{- end }}
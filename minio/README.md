**Lệnh tạo 1 helm chart**

```
helm create [namechart]
```

**Lệnh kiểm tra có lỗi hay không**

```
helm lint ./
```

**Lệnh ráp giá trị từ file value vào**

```
helm template [name] [name_chart]
```

***Lệnh đóng gói helm**

```
helm package [path_source_helm_chart] -d ./publish/
helm repo index ./
```

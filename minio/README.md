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

**Hướng dẫn add repo trên github**

```
helm repo add sample 'https://raw.githubusercontent.com/kmzfs/helm-repo-in-github/master/'
helm repo update
```

**Nếu git ở chế độ private**

```
$ helm repo add sample 'https://MY_PRIVATE_TOKEN@raw.githubusercontent.com/kmzfs/helm-repo-in-github/master/'
```

**Lệnh search repo**

```
helm search repo postgres
```

**Lệnh PULL chart**

```
helm pull bitnami/postgresql-ha
```

**Lệnh giải nén**

```
tar -zxf postgresql-ha-15.0.0.tgz
```

**Lệnh cài chart**

```
 helm install postgresha -n postgres ../postgresql-ha/
```

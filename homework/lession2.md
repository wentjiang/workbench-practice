
![img.png](img.png)

```
操作方式可以是：
1. 导入init.sql
2. trigger data_ingest接入全量数据，日期选择2021-12-31
3. 导入2022-01-01的数据
4. 在工作台trigger增量接入，时间选择2022-01-01
5. 重复3/4步骤，导入每天的数据直至2022-01-05
```
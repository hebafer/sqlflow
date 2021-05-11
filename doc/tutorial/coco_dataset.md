## Connecting SQLFlow with our custom Images 

## COCO Dataset

Retrieve dataset (db format) schema:


```python
%%sqlflow
SELECT Table_name as TablesName 
from information_schema.tables 
where table_schema = 'coco';
```

    SQLFlow Step: [1/1] Execute Code: bash -c step -e "SELECT Table_name as TablesName 
    from information_schema.tables 
    where table_schema = 'coco';" 
    SQLFlow Step: [1/1] Log: http://localhost:9001/workflows/default/sqlflow-hbmpm?tab=workflow&nodeId=sqlflow-hbmpm-3946709172&sidePanel=logs:sqlflow-hbmpm-3946709172:main
    SQLFlow Step: [1/1] Status: Pending
    SQLFlow Step: [1/1] Status: Running
    SQLFlow Step: [1/1] Status: Succeeded





<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>TablesName</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>categories</td>
    </tr>
    <tr>
      <th>1</th>
      <td>images</td>
    </tr>
    <tr>
      <th>2</th>
      <td>info</td>
    </tr>
    <tr>
      <th>3</th>
      <td>licenses</td>
    </tr>
  </tbody>
</table>
</div>



Inspect Info table:


```python
%%sqlflow
SELECT *
FROM coco.info;
```

    SQLFlow Step: [1/1] Execute Code: bash -c step -e "SELECT *
    FROM coco.info;" 
    SQLFlow Step: [1/1] Log: http://localhost:9001/workflows/default/sqlflow-xzqnf?tab=workflow&nodeId=sqlflow-xzqnf-2830840593&sidePanel=logs:sqlflow-xzqnf-2830840593:main
    SQLFlow Step: [1/1] Status: Pending
    SQLFlow Step: [1/1] Status: Succeeded





<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>description</th>
      <th>url</th>
      <th>version</th>
      <th>year</th>
      <th>contributor</th>
      <th>date_created</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>COCO 2017 Dataset</td>
      <td>http://cocodataset.org</td>
      <td>1.0</td>
      <td>2017</td>
      <td>COCO Consortium</td>
      <td>2017-09-01</td>
    </tr>
  </tbody>
</table>
</div>



Inspect Images table:


```python
%%sqlflow
SELECT *
FROM coco.images
LIMIT 10;
```

    SQLFlow Step: [1/1] Execute Code: bash -c step -e "SELECT *
    FROM coco.images
    LIMIT 10;" 
    SQLFlow Step: [1/1] Log: http://localhost:9001/workflows/default/sqlflow-nxq9r?tab=workflow&nodeId=sqlflow-nxq9r-3461625552&sidePanel=logs:sqlflow-nxq9r-3461625552:main
    SQLFlow Step: [1/1] Status: Pending
    SQLFlow Step: [1/1] Status: Running
    SQLFlow Step: [1/1] Status: Succeeded





<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>image_id</th>
      <th>file_name</th>
      <th>coco_url</th>
      <th>date_captured</th>
      <th>height</th>
      <th>width</th>
      <th>license</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>1</td>
      <td>000000000001.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000000...</td>
      <td>2013-11-17 10:40:31</td>
      <td>480</td>
      <td>640</td>
      <td>4</td>
    </tr>
    <tr>
      <th>1</th>
      <td>100004</td>
      <td>000000100004.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000001...</td>
      <td>2013-11-17 19:09:09</td>
      <td>380</td>
      <td>640</td>
      <td>2</td>
    </tr>
    <tr>
      <th>2</th>
      <td>100007</td>
      <td>000000100007.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000001...</td>
      <td>2013-11-16 15:01:08</td>
      <td>479</td>
      <td>640</td>
      <td>3</td>
    </tr>
    <tr>
      <th>3</th>
      <td>100025</td>
      <td>000000100025.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000001...</td>
      <td>2013-11-20 01:13:14</td>
      <td>402</td>
      <td>640</td>
      <td>1</td>
    </tr>
    <tr>
      <th>4</th>
      <td>100029</td>
      <td>000000100029.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000001...</td>
      <td>2013-11-20 20:56:12</td>
      <td>541</td>
      <td>640</td>
      <td>6</td>
    </tr>
    <tr>
      <th>5</th>
      <td>100030</td>
      <td>000000100030.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000001...</td>
      <td>2013-11-19 17:56:27</td>
      <td>480</td>
      <td>640</td>
      <td>3</td>
    </tr>
    <tr>
      <th>6</th>
      <td>100033</td>
      <td>000000100033.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000001...</td>
      <td>2013-11-23 03:54:06</td>
      <td>423</td>
      <td>640</td>
      <td>3</td>
    </tr>
    <tr>
      <th>7</th>
      <td>100051</td>
      <td>000000100051.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000001...</td>
      <td>2013-11-20 22:15:21</td>
      <td>640</td>
      <td>427</td>
      <td>1</td>
    </tr>
    <tr>
      <th>8</th>
      <td>100071</td>
      <td>000000100071.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000001...</td>
      <td>2013-11-19 00:51:10</td>
      <td>480</td>
      <td>640</td>
      <td>2</td>
    </tr>
    <tr>
      <th>9</th>
      <td>100100</td>
      <td>000000100100.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000001...</td>
      <td>2013-11-18 06:22:15</td>
      <td>500</td>
      <td>347</td>
      <td>4</td>
    </tr>
  </tbody>
</table>
</div>



## Our SQLFlow Statement

Select the subset of Images to infer:


```python
%%sqlflow
SELECT * FROM coco.`images`
ORDER BY `images`.`image_id`  DESC
LIMIT 100;
```

    SQLFlow Step: [1/1] Execute Code: bash -c step -e "SELECT * FROM coco.\`images\`
    ORDER BY \`images\`.\`id\`  DESC
    LIMIT 100;" 
    SQLFlow Step: [1/1] Log: http://localhost:9001/workflows/default/sqlflow-6vzgh?tab=workflow&nodeId=sqlflow-6vzgh-1875174485&sidePanel=logs:sqlflow-6vzgh-1875174485:main
    SQLFlow Step: [1/1] Status: Pending
    SQLFlow Step: [1/1] Status: Running
    SQLFlow Step: [1/1] Status: Succeeded





<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>id</th>
      <th>file_name</th>
      <th>coco_url</th>
      <th>date_captured</th>
      <th>height</th>
      <th>width</th>
      <th>license</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>id</td>
      <td>file_name</td>
      <td>coco_url</td>
      <td>date_captured</td>
      <td>height</td>
      <td>width</td>
      <td>license</td>
    </tr>
    <tr>
      <th>1</th>
      <td>99985</td>
      <td>000000099985.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000000...</td>
      <td>2013-11-20 23:32:39</td>
      <td>427</td>
      <td>640</td>
      <td>1</td>
    </tr>
    <tr>
      <th>2</th>
      <td>99980</td>
      <td>000000099980.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000000...</td>
      <td>2013-11-21 02:35:21</td>
      <td>480</td>
      <td>640</td>
      <td>3</td>
    </tr>
    <tr>
      <th>3</th>
      <td>9995</td>
      <td>000000009995.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000000...</td>
      <td>2013-11-16 21:16:36</td>
      <td>480</td>
      <td>640</td>
      <td>4</td>
    </tr>
    <tr>
      <th>4</th>
      <td>99889</td>
      <td>000000099889.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000000...</td>
      <td>2013-11-18 03:00:44</td>
      <td>612</td>
      <td>612</td>
      <td>1</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>95</th>
      <td>98852</td>
      <td>000000098852.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000000...</td>
      <td>2013-11-16 16:35:37</td>
      <td>640</td>
      <td>480</td>
      <td>1</td>
    </tr>
    <tr>
      <th>96</th>
      <td>98833</td>
      <td>000000098833.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000000...</td>
      <td>2013-11-16 23:03:57</td>
      <td>446</td>
      <td>640</td>
      <td>3</td>
    </tr>
    <tr>
      <th>97</th>
      <td>9883</td>
      <td>000000009883.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000000...</td>
      <td>2013-11-15 14:42:46</td>
      <td>480</td>
      <td>640</td>
      <td>3</td>
    </tr>
    <tr>
      <th>98</th>
      <td>98817</td>
      <td>000000098817.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000000...</td>
      <td>2013-11-18 16:22:53</td>
      <td>331</td>
      <td>500</td>
      <td>2</td>
    </tr>
    <tr>
      <th>99</th>
      <td>98797</td>
      <td>000000098797.jpg</td>
      <td>http://images.cocodataset.org/test2017/0000000...</td>
      <td>2013-11-20 08:53:36</td>
      <td>361</td>
      <td>640</td>
      <td>3</td>
    </tr>
  </tbody>
</table>
<p>100 rows × 7 columns</p>
</div>



SQLFlow statement to call:


```python
%%sqlflow
DROP TABLE IF EXISTS coco.result;
SELECT * FROM coco.`images`
ORDER BY `images`.`image_id`  ASC
LIMIT 10
TO RUN hebafer/yolov3-sqlflow:latest
CMD "yolov3_detect_variant.py",
    "--dataset=coco",
    "--model=yolov3",
    "--latency=0.05",
    "--lag=100",
    "--tasks=1,2,3,4,5"
INTO result;
```

    SQLFlow Step: [1/2] Execute Code: bash -c step -e "DROP TABLE IF EXISTS coco.result;" 
    SQLFlow Step: [1/2] Log: http://localhost:9001/workflows/default/sqlflow-hqxkb?tab=workflow&nodeId=sqlflow-hqxkb-3281317886&sidePanel=logs:sqlflow-hqxkb-3281317886:main
    SQLFlow Step: [1/2] Status: Pending
    SQLFlow Step: [1/2] Status: Running
    SQLFlow Step: [1/2] Status: Succeeded
    SQLFlow Step: [2/2] Execute Code: bash -c step -e "
    SELECT * FROM coco.\`images\`
    ORDER BY \`images\`.\`image_id\`  ASC
    LIMIT 10
    TO RUN hebafer/yolov3-sqlflow:latest
    CMD \"yolov3_detect_variant.py\",
        \"--dataset=coco\",
        \"--model=yolov3\",
        \"--latency=0.05\",
        \"--lag=100\",
        \"--tasks=1,2,3,4,5\"
    INTO result;
    " 
    SQLFlow Step: [2/2] Log: http://localhost:9001/workflows/default/sqlflow-hqxkb?tab=workflow&nodeId=sqlflow-hqxkb-3242070227&sidePanel=logs:sqlflow-hqxkb-3242070227:main
    SQLFlow Step: [2/2] Status: Running
    SQLFlow Step: [2/2] Status: Succeeded


Inspect the table with the results:


```python
%%sqlflow
DESCRIBE coco.result;
```

    SQLFlow Step: [1/1] Execute Code: bash -c step -e "DESCRIBE coco.result;" 
    SQLFlow Step: [1/1] Log: http://localhost:9001/workflows/default/sqlflow-9pjl4?tab=workflow&nodeId=sqlflow-9pjl4-2248233901&sidePanel=logs:sqlflow-9pjl4-2248233901:main
    SQLFlow Step: [1/1] Status: Pending
    SQLFlow Step: [1/1] Status: Running
    SQLFlow Step: [1/1] Status: Succeeded





<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Field</th>
      <th>Type</th>
      <th>Null</th>
      <th>Key</th>
      <th>Default</th>
      <th>Extra</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>image_id</td>
      <td>text</td>
      <td>YES</td>
      <td></td>
      <td>None</td>
      <td></td>
    </tr>
    <tr>
      <th>1</th>
      <td>file_name</td>
      <td>text</td>
      <td>YES</td>
      <td></td>
      <td>None</td>
      <td></td>
    </tr>
    <tr>
      <th>2</th>
      <td>person</td>
      <td>double</td>
      <td>YES</td>
      <td></td>
      <td>None</td>
      <td></td>
    </tr>
    <tr>
      <th>3</th>
      <td>bicycle</td>
      <td>double</td>
      <td>YES</td>
      <td></td>
      <td>None</td>
      <td></td>
    </tr>
    <tr>
      <th>4</th>
      <td>car</td>
      <td>double</td>
      <td>YES</td>
      <td></td>
      <td>None</td>
      <td></td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>77</th>
      <td>vase</td>
      <td>double</td>
      <td>YES</td>
      <td></td>
      <td>None</td>
      <td></td>
    </tr>
    <tr>
      <th>78</th>
      <td>scissors</td>
      <td>double</td>
      <td>YES</td>
      <td></td>
      <td>None</td>
      <td></td>
    </tr>
    <tr>
      <th>79</th>
      <td>teddy bear</td>
      <td>double</td>
      <td>YES</td>
      <td></td>
      <td>None</td>
      <td></td>
    </tr>
    <tr>
      <th>80</th>
      <td>hair dryer</td>
      <td>double</td>
      <td>YES</td>
      <td></td>
      <td>None</td>
      <td></td>
    </tr>
    <tr>
      <th>81</th>
      <td>toothbrush</td>
      <td>double</td>
      <td>YES</td>
      <td></td>
      <td>None</td>
      <td></td>
    </tr>
  </tbody>
</table>
<p>82 rows × 6 columns</p>
</div>




```python
%%sqlflow
SELECT image_id, person, bicycle, car, motorcycle, airplane, bus, train, truck, boat
FROM coco.result;
```

    SQLFlow Step: [1/1] Execute Code: bash -c step -e "SELECT image_id, person, bicycle, car, motorcycle, airplane, bus, train, truck, boat
    FROM coco.result;" 
    SQLFlow Step: [1/1] Log: http://localhost:9001/workflows/default/sqlflow-kgz8t?tab=workflow&nodeId=sqlflow-kgz8t-3914760474&sidePanel=logs:sqlflow-kgz8t-3914760474:main
    SQLFlow Step: [1/1] Status: Pending
    SQLFlow Step: [1/1] Status: Running
    SQLFlow Step: [1/1] Status: Succeeded





<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>image_id</th>
      <th>person</th>
      <th>bicycle</th>
      <th>car</th>
      <th>motorcycle</th>
      <th>airplane</th>
      <th>bus</th>
      <th>train</th>
      <th>truck</th>
      <th>boat</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>1</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.718974</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>100004</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.864383</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
    </tr>
    <tr>
      <th>2</th>
      <td>100007</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.000000</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
    </tr>
    <tr>
      <th>3</th>
      <td>100025</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.000000</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
    </tr>
    <tr>
      <th>4</th>
      <td>100029</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.000000</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
    </tr>
    <tr>
      <th>5</th>
      <td>100030</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.000000</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
    </tr>
    <tr>
      <th>6</th>
      <td>100033</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.000000</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
    </tr>
    <tr>
      <th>7</th>
      <td>100051</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.000000</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
    </tr>
    <tr>
      <th>8</th>
      <td>100071</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.000000</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
    </tr>
    <tr>
      <th>9</th>
      <td>100100</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.000000</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
      <td>0.0</td>
    </tr>
  </tbody>
</table>
</div>



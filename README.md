# Graph Index
index of diamond

 * support regex search
 * some pre-defined dashboard
 * easily hack and a few lines of code

#Running

```shell
git clone https://github.com/huoxy/graph-index.git
cd graph-index
./graph-index.py
```
# Grammar

`regex` will draw a graph for each metric, for example: `servers.[^\.]+.loadavg.01$`

`plugin:server:regex` will display a graph with all metrics on `hostname`,for example: `plugin:cpu:hostname`

`merge:regex` will merge matched metrics in a single graph, for example: `merge:.*loadavg\.01$`

`groupby\-?\d+` will draw multiple graphs group by the `\-?\d+`-th field, for example: `loadavg\.01$ groupby1`

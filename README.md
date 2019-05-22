# graphkerneldatasets

## Usage

```r
source( "GetGraph.R" )

AIDS = GetGraphData( "AIDS" )

head( AIDS$A )
head( AIDS$graph_indicator )
head( AIDS$graph_labels )
head( AIDS$node_labels )

BZR = GetGraphData( "BZR" )

head( BZR$A )
head( BZR$graph_indicator )
head( BZR$graph_labels )
head( BZR$node_labels )

Cuneiform = GetGraphData( "Cuneiform" )

head( Cuneiform$A )
head( Cuneiform$graph_indicator )
head( Cuneiform$graph_labels )
head( Cuneiform$node_labels )
```
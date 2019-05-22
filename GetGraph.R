GetGraphData = function( graph_name )
{
  internal_patterns = c( "/DS_A.txt", "/DS_graph_indicator.txt", "/DS_graph_labels.txt" )
  internal_patterns = c( internal_patterns, "/DS_node_labels.txt" )
  
  internal_names = gsub( "DS", graph_name, internal_patterns )
  base_name = "https://ls11-www.cs.uni-dortmund.de/people/morris/graphkerneldatasets/NAME.zip"
  file_name = gsub( "NAME", graph_name, base_name )
  temp_file = tempfile()
  
  download.file( file_name, temp_file )
  
  extract_data = function( file_path, internal_path )
  {
    read.table( unz( file_path, paste0( graph_name, internal_path ) ) )
  }
  
  result = list()
  result$A               = extract_data( temp_file, internal_names[1] )
  result$graph_indicator = extract_data( temp_file, internal_names[2] )
  result$graph_labels    = extract_data( temp_file, internal_names[3] )
  result$node_labels     = extract_data( temp_file, internal_names[4] )
  
  unlink( temp_file )

  return( result )
}

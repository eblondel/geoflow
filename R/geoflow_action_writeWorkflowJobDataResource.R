#For write generic action
sf_write_generic <- function(entity, config, options){
  #options
  createIndexes <- ifelse(!is.null(options$createIndexes), options$createIndexes, FALSE)
  overwrite <- ifelse(!is.null(options$overwrite), options$overwrite, TRUE)
  append <- ifelse(!is.null(options$append), options$append, FALSE)
  chunk.size <- ifelse(!is.null(options$chunk.size), options$chunk.size, 0L)
  #function
  writeWorkflowJobDataResource(
    entity = entity,
    config = config,
    obj = NULL,
    useFeatures = TRUE,
    resourcename = NULL,
    useUploadSource = TRUE,
    createIndexes = createIndexes,
    overwrite = overwrite,
    append = append,
    chunk.size = chunk.size,
    type=options$type
  )
}

#For write in dbi
sf_write_dbi <- function(entity, config, options){
  #options
  createIndexes <- ifelse(!is.null(options$createIndexes), options$createIndexes, FALSE)
  overwrite <- ifelse(!is.null(options$overwrite), options$overwrite, TRUE)
  append <- ifelse(!is.null(options$append), options$append, FALSE)
  chunk.size <- ifelse(!is.null(options$chunk.size), options$chunk.size, 0L)
  #function
  writeWorkflowJobDataResource(
    entity = entity,
    config = config,
    obj = NULL,
    useFeatures = TRUE,
    resourcename = NULL,
    useUploadSource = TRUE,
    createIndexes = createIndexes,
    overwrite = overwrite,
    append = append,
    chunk.size = chunk.size,
    type = "dbtable"
  )
}

#For write as shp
sf_write_shp <- function(entity, config, options){
  writeWorkflowJobDataResource(
    entity = entity,
    config = config,
    obj = NULL,
    useFeatures = TRUE,
    resourcename = NULL,
    useUploadSource = TRUE,
    type = "shp"
  )
}

    
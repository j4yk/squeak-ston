*ston-pharo-core
testMimeTypes
	| mimeTypes |
	mimeTypes := STON listClass withAll: { 
		ZnMimeType applicationJson.
		ZnMimeType textPlain }.
	self serializeAndMaterialize: mimeTypes

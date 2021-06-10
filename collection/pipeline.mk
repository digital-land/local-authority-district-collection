LOCAL_AUTHORITY_DISTRICT_DATASET=$(DATASET_DIR)local-authority-district.csv
LOCAL_AUTHORITY_DISTRICT_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)local-authority-district/0e6f64c2d40a661a0fd4a2440433df480cacdc57f86d84bfd52d27b6960218a3.csv\
    $(TRANSFORMED_DIR)local-authority-district/aac324529ce451f4c8c9c6fe862780f689a14aa0b4f445a836f50c091618b754.csv\
    $(TRANSFORMED_DIR)local-authority-district/bd921c9e4af17cbd6b5b9157178b4cf44945856d6d684ca6845b2d9f973ae902.csv\
    $(TRANSFORMED_DIR)local-authority-district/fd689f1adfdaf3e4aa24d706a5e7193d46b8fde573b2d4a130ceeb872aa7d149.csv

$(TRANSFORMED_DIR)local-authority-district/0e6f64c2d40a661a0fd4a2440433df480cacdc57f86d84bfd52d27b6960218a3.csv: collection/resource/0e6f64c2d40a661a0fd4a2440433df480cacdc57f86d84bfd52d27b6960218a3
	$(run-pipeline)

$(TRANSFORMED_DIR)local-authority-district/aac324529ce451f4c8c9c6fe862780f689a14aa0b4f445a836f50c091618b754.csv: collection/resource/aac324529ce451f4c8c9c6fe862780f689a14aa0b4f445a836f50c091618b754
	$(run-pipeline)

$(TRANSFORMED_DIR)local-authority-district/bd921c9e4af17cbd6b5b9157178b4cf44945856d6d684ca6845b2d9f973ae902.csv: collection/resource/bd921c9e4af17cbd6b5b9157178b4cf44945856d6d684ca6845b2d9f973ae902
	$(run-pipeline)

$(TRANSFORMED_DIR)local-authority-district/fd689f1adfdaf3e4aa24d706a5e7193d46b8fde573b2d4a130ceeb872aa7d149.csv: collection/resource/fd689f1adfdaf3e4aa24d706a5e7193d46b8fde573b2d4a130ceeb872aa7d149
	$(run-pipeline)

$(LOCAL_AUTHORITY_DISTRICT_DATASET): $(LOCAL_AUTHORITY_DISTRICT_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(LOCAL_AUTHORITY_DISTRICT_TRANSFORMED_FILES)

dataset:: $(LOCAL_AUTHORITY_DISTRICT_DATASET)

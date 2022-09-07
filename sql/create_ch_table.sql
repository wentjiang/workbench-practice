CREATE TABLE `default`.test_table (
	id VARCHAR(100),
	hash VARCHAR(100)
) ENGINE = MergeTree()
ORDER BY id;
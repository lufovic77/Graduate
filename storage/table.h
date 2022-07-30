#pragma once 

#include "global.h"

// TODO sequential scan is not supported yet.
// only index access is supported for table. 
class Catalog;
class row_t;
class IndexHash;
class index_btree;

class table_t
{
public:
	void init(Catalog * schema);
	// row lookup should be done with index. But index does not have
	// records for new rows. get_new_row returns the pointer to a 
	// new row.	
	RC get_new_row(row_t *& row); // this is equivalent to insert()
	RC get_new_row(row_t *& row, uint64_t part_id, uint64_t &row_id, uint64_t local_id);
	RC get_new_row(row_t *& row, uint64_t part_id, uint64_t &row_id, void * mem, void * manager_mem, void * data_mem, void * lsn_vector_mem);

	void delete_row(); // TODO delete_row is not supportet yet

	uint64_t get_table_size() { return cur_tab_size; }
	const char * get_table_name() { return table_name; }
	const uint32_t  get_table_id() {return _table_id; }
	void 			set_table_id(uint32_t table_id) { _table_id = table_id; }
	
	Catalog * get_schema() { return schema; }

	void set_primary_index(INDEX * primary_index) { _primary_index = primary_index; }
	INDEX * get_primary_index() { return _primary_index; }

	Catalog * 		schema;
private:
	const char * 	table_name;
	uint32_t 		_table_id;
	uint64_t  		cur_tab_size;
	char 			pad[CL_SIZE - sizeof(void *)*3];

	INDEX * 		_primary_index; 
};

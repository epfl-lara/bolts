; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16600 () Bool)

(assert start!16600)

(declare-fun b!165334 () Bool)

(declare-fun b_free!3893 () Bool)

(declare-fun b_next!3893 () Bool)

(assert (=> b!165334 (= b_free!3893 (not b_next!3893))))

(declare-fun tp!14280 () Bool)

(declare-fun b_and!10325 () Bool)

(assert (=> b!165334 (= tp!14280 b_and!10325)))

(declare-fun b!165327 () Bool)

(declare-fun e!108460 () Bool)

(declare-fun tp_is_empty!3695 () Bool)

(assert (=> b!165327 (= e!108460 tp_is_empty!3695)))

(declare-fun b!165328 () Bool)

(declare-fun e!108466 () Bool)

(declare-fun e!108462 () Bool)

(assert (=> b!165328 (= e!108466 e!108462)))

(declare-fun res!78447 () Bool)

(assert (=> b!165328 (=> (not res!78447) (not e!108462))))

(declare-datatypes ((SeekEntryResult!445 0))(
  ( (MissingZero!445 (index!3948 (_ BitVec 32))) (Found!445 (index!3949 (_ BitVec 32))) (Intermediate!445 (undefined!1257 Bool) (index!3950 (_ BitVec 32)) (x!18337 (_ BitVec 32))) (Undefined!445) (MissingVacant!445 (index!3951 (_ BitVec 32))) )
))
(declare-fun lt!83081 () SeekEntryResult!445)

(assert (=> b!165328 (= res!78447 (and (not (is-Undefined!445 lt!83081)) (not (is-MissingVacant!445 lt!83081)) (not (is-MissingZero!445 lt!83081)) (is-Found!445 lt!83081)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4573 0))(
  ( (V!4574 (val!1892 Int)) )
))
(declare-datatypes ((ValueCell!1504 0))(
  ( (ValueCellFull!1504 (v!3753 V!4573)) (EmptyCell!1504) )
))
(declare-datatypes ((array!6486 0))(
  ( (array!6487 (arr!3078 (Array (_ BitVec 32) (_ BitVec 64))) (size!3366 (_ BitVec 32))) )
))
(declare-datatypes ((array!6488 0))(
  ( (array!6489 (arr!3079 (Array (_ BitVec 32) ValueCell!1504)) (size!3367 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1916 0))(
  ( (LongMapFixedSize!1917 (defaultEntry!3400 Int) (mask!8109 (_ BitVec 32)) (extraKeys!3141 (_ BitVec 32)) (zeroValue!3243 V!4573) (minValue!3243 V!4573) (_size!1007 (_ BitVec 32)) (_keys!5225 array!6486) (_values!3383 array!6488) (_vacant!1007 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1916)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6486 (_ BitVec 32)) SeekEntryResult!445)

(assert (=> b!165328 (= lt!83081 (seekEntryOrOpen!0 key!828 (_keys!5225 thiss!1248) (mask!8109 thiss!1248)))))

(declare-fun b!165330 () Bool)

(declare-fun res!78444 () Bool)

(assert (=> b!165330 (=> (not res!78444) (not e!108462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165330 (= res!78444 (validMask!0 (mask!8109 thiss!1248)))))

(declare-fun b!165331 () Bool)

(declare-fun res!78442 () Bool)

(assert (=> b!165331 (=> (not res!78442) (not e!108462))))

(assert (=> b!165331 (= res!78442 (and (= (size!3367 (_values!3383 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8109 thiss!1248))) (= (size!3366 (_keys!5225 thiss!1248)) (size!3367 (_values!3383 thiss!1248))) (bvsge (mask!8109 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3141 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3141 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!165332 () Bool)

(declare-fun res!78441 () Bool)

(assert (=> b!165332 (=> (not res!78441) (not e!108466))))

(assert (=> b!165332 (= res!78441 (not (= key!828 (bvneg key!828))))))

(declare-fun b!165333 () Bool)

(assert (=> b!165333 (= e!108462 false)))

(declare-fun lt!83080 () Bool)

(declare-datatypes ((List!2069 0))(
  ( (Nil!2066) (Cons!2065 (h!2682 (_ BitVec 64)) (t!6879 List!2069)) )
))
(declare-fun arrayNoDuplicates!0 (array!6486 (_ BitVec 32) List!2069) Bool)

(assert (=> b!165333 (= lt!83080 (arrayNoDuplicates!0 (_keys!5225 thiss!1248) #b00000000000000000000000000000000 Nil!2066))))

(declare-fun e!108461 () Bool)

(declare-fun e!108465 () Bool)

(declare-fun array_inv!1967 (array!6486) Bool)

(declare-fun array_inv!1968 (array!6488) Bool)

(assert (=> b!165334 (= e!108465 (and tp!14280 tp_is_empty!3695 (array_inv!1967 (_keys!5225 thiss!1248)) (array_inv!1968 (_values!3383 thiss!1248)) e!108461))))

(declare-fun res!78446 () Bool)

(assert (=> start!16600 (=> (not res!78446) (not e!108466))))

(declare-fun valid!840 (LongMapFixedSize!1916) Bool)

(assert (=> start!16600 (= res!78446 (valid!840 thiss!1248))))

(assert (=> start!16600 e!108466))

(assert (=> start!16600 e!108465))

(assert (=> start!16600 true))

(declare-fun b!165329 () Bool)

(declare-fun res!78445 () Bool)

(assert (=> b!165329 (=> (not res!78445) (not e!108462))))

(declare-datatypes ((tuple2!3062 0))(
  ( (tuple2!3063 (_1!1541 (_ BitVec 64)) (_2!1541 V!4573)) )
))
(declare-datatypes ((List!2070 0))(
  ( (Nil!2067) (Cons!2066 (h!2683 tuple2!3062) (t!6880 List!2070)) )
))
(declare-datatypes ((ListLongMap!2031 0))(
  ( (ListLongMap!2032 (toList!1031 List!2070)) )
))
(declare-fun contains!1067 (ListLongMap!2031 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!684 (array!6486 array!6488 (_ BitVec 32) (_ BitVec 32) V!4573 V!4573 (_ BitVec 32) Int) ListLongMap!2031)

(assert (=> b!165329 (= res!78445 (not (contains!1067 (getCurrentListMap!684 (_keys!5225 thiss!1248) (_values!3383 thiss!1248) (mask!8109 thiss!1248) (extraKeys!3141 thiss!1248) (zeroValue!3243 thiss!1248) (minValue!3243 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3400 thiss!1248)) key!828)))))

(declare-fun mapNonEmpty!6261 () Bool)

(declare-fun mapRes!6261 () Bool)

(declare-fun tp!14279 () Bool)

(declare-fun e!108464 () Bool)

(assert (=> mapNonEmpty!6261 (= mapRes!6261 (and tp!14279 e!108464))))

(declare-fun mapRest!6261 () (Array (_ BitVec 32) ValueCell!1504))

(declare-fun mapValue!6261 () ValueCell!1504)

(declare-fun mapKey!6261 () (_ BitVec 32))

(assert (=> mapNonEmpty!6261 (= (arr!3079 (_values!3383 thiss!1248)) (store mapRest!6261 mapKey!6261 mapValue!6261))))

(declare-fun b!165335 () Bool)

(assert (=> b!165335 (= e!108461 (and e!108460 mapRes!6261))))

(declare-fun condMapEmpty!6261 () Bool)

(declare-fun mapDefault!6261 () ValueCell!1504)


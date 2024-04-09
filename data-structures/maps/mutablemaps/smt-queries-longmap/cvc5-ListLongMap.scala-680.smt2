; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16596 () Bool)

(assert start!16596)

(declare-fun b!165265 () Bool)

(declare-fun b_free!3889 () Bool)

(declare-fun b_next!3889 () Bool)

(assert (=> b!165265 (= b_free!3889 (not b_next!3889))))

(declare-fun tp!14268 () Bool)

(declare-fun b_and!10321 () Bool)

(assert (=> b!165265 (= tp!14268 b_and!10321)))

(declare-fun b!165261 () Bool)

(declare-fun res!78401 () Bool)

(declare-fun e!108419 () Bool)

(assert (=> b!165261 (=> (not res!78401) (not e!108419))))

(declare-datatypes ((V!4569 0))(
  ( (V!4570 (val!1890 Int)) )
))
(declare-datatypes ((ValueCell!1502 0))(
  ( (ValueCellFull!1502 (v!3751 V!4569)) (EmptyCell!1502) )
))
(declare-datatypes ((array!6478 0))(
  ( (array!6479 (arr!3074 (Array (_ BitVec 32) (_ BitVec 64))) (size!3362 (_ BitVec 32))) )
))
(declare-datatypes ((array!6480 0))(
  ( (array!6481 (arr!3075 (Array (_ BitVec 32) ValueCell!1502)) (size!3363 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1912 0))(
  ( (LongMapFixedSize!1913 (defaultEntry!3398 Int) (mask!8107 (_ BitVec 32)) (extraKeys!3139 (_ BitVec 32)) (zeroValue!3241 V!4569) (minValue!3241 V!4569) (_size!1005 (_ BitVec 32)) (_keys!5223 array!6478) (_values!3381 array!6480) (_vacant!1005 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1912)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3058 0))(
  ( (tuple2!3059 (_1!1539 (_ BitVec 64)) (_2!1539 V!4569)) )
))
(declare-datatypes ((List!2065 0))(
  ( (Nil!2062) (Cons!2061 (h!2678 tuple2!3058) (t!6875 List!2065)) )
))
(declare-datatypes ((ListLongMap!2027 0))(
  ( (ListLongMap!2028 (toList!1029 List!2065)) )
))
(declare-fun contains!1065 (ListLongMap!2027 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!682 (array!6478 array!6480 (_ BitVec 32) (_ BitVec 32) V!4569 V!4569 (_ BitVec 32) Int) ListLongMap!2027)

(assert (=> b!165261 (= res!78401 (not (contains!1065 (getCurrentListMap!682 (_keys!5223 thiss!1248) (_values!3381 thiss!1248) (mask!8107 thiss!1248) (extraKeys!3139 thiss!1248) (zeroValue!3241 thiss!1248) (minValue!3241 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3398 thiss!1248)) key!828)))))

(declare-fun b!165262 () Bool)

(declare-fun e!108424 () Bool)

(assert (=> b!165262 (= e!108424 e!108419)))

(declare-fun res!78400 () Bool)

(assert (=> b!165262 (=> (not res!78400) (not e!108419))))

(declare-datatypes ((SeekEntryResult!443 0))(
  ( (MissingZero!443 (index!3940 (_ BitVec 32))) (Found!443 (index!3941 (_ BitVec 32))) (Intermediate!443 (undefined!1255 Bool) (index!3942 (_ BitVec 32)) (x!18335 (_ BitVec 32))) (Undefined!443) (MissingVacant!443 (index!3943 (_ BitVec 32))) )
))
(declare-fun lt!83068 () SeekEntryResult!443)

(assert (=> b!165262 (= res!78400 (and (not (is-Undefined!443 lt!83068)) (not (is-MissingVacant!443 lt!83068)) (not (is-MissingZero!443 lt!83068)) (is-Found!443 lt!83068)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6478 (_ BitVec 32)) SeekEntryResult!443)

(assert (=> b!165262 (= lt!83068 (seekEntryOrOpen!0 key!828 (_keys!5223 thiss!1248) (mask!8107 thiss!1248)))))

(declare-fun mapIsEmpty!6255 () Bool)

(declare-fun mapRes!6255 () Bool)

(assert (=> mapIsEmpty!6255 mapRes!6255))

(declare-fun b!165263 () Bool)

(declare-fun e!108422 () Bool)

(declare-fun tp_is_empty!3691 () Bool)

(assert (=> b!165263 (= e!108422 tp_is_empty!3691)))

(declare-fun b!165264 () Bool)

(declare-fun res!78405 () Bool)

(assert (=> b!165264 (=> (not res!78405) (not e!108419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165264 (= res!78405 (validMask!0 (mask!8107 thiss!1248)))))

(declare-fun e!108423 () Bool)

(declare-fun e!108420 () Bool)

(declare-fun array_inv!1963 (array!6478) Bool)

(declare-fun array_inv!1964 (array!6480) Bool)

(assert (=> b!165265 (= e!108423 (and tp!14268 tp_is_empty!3691 (array_inv!1963 (_keys!5223 thiss!1248)) (array_inv!1964 (_values!3381 thiss!1248)) e!108420))))

(declare-fun b!165266 () Bool)

(declare-fun res!78404 () Bool)

(assert (=> b!165266 (=> (not res!78404) (not e!108419))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6478 (_ BitVec 32)) Bool)

(assert (=> b!165266 (= res!78404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5223 thiss!1248) (mask!8107 thiss!1248)))))

(declare-fun b!165267 () Bool)

(assert (=> b!165267 (= e!108419 false)))

(declare-fun lt!83069 () Bool)

(declare-datatypes ((List!2066 0))(
  ( (Nil!2063) (Cons!2062 (h!2679 (_ BitVec 64)) (t!6876 List!2066)) )
))
(declare-fun arrayNoDuplicates!0 (array!6478 (_ BitVec 32) List!2066) Bool)

(assert (=> b!165267 (= lt!83069 (arrayNoDuplicates!0 (_keys!5223 thiss!1248) #b00000000000000000000000000000000 Nil!2063))))

(declare-fun b!165268 () Bool)

(declare-fun res!78399 () Bool)

(assert (=> b!165268 (=> (not res!78399) (not e!108424))))

(assert (=> b!165268 (= res!78399 (not (= key!828 (bvneg key!828))))))

(declare-fun res!78403 () Bool)

(assert (=> start!16596 (=> (not res!78403) (not e!108424))))

(declare-fun valid!838 (LongMapFixedSize!1912) Bool)

(assert (=> start!16596 (= res!78403 (valid!838 thiss!1248))))

(assert (=> start!16596 e!108424))

(assert (=> start!16596 e!108423))

(assert (=> start!16596 true))

(declare-fun b!165269 () Bool)

(declare-fun e!108421 () Bool)

(assert (=> b!165269 (= e!108421 tp_is_empty!3691)))

(declare-fun mapNonEmpty!6255 () Bool)

(declare-fun tp!14267 () Bool)

(assert (=> mapNonEmpty!6255 (= mapRes!6255 (and tp!14267 e!108422))))

(declare-fun mapRest!6255 () (Array (_ BitVec 32) ValueCell!1502))

(declare-fun mapKey!6255 () (_ BitVec 32))

(declare-fun mapValue!6255 () ValueCell!1502)

(assert (=> mapNonEmpty!6255 (= (arr!3075 (_values!3381 thiss!1248)) (store mapRest!6255 mapKey!6255 mapValue!6255))))

(declare-fun b!165270 () Bool)

(declare-fun res!78402 () Bool)

(assert (=> b!165270 (=> (not res!78402) (not e!108419))))

(assert (=> b!165270 (= res!78402 (and (= (size!3363 (_values!3381 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8107 thiss!1248))) (= (size!3362 (_keys!5223 thiss!1248)) (size!3363 (_values!3381 thiss!1248))) (bvsge (mask!8107 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3139 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3139 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!165271 () Bool)

(assert (=> b!165271 (= e!108420 (and e!108421 mapRes!6255))))

(declare-fun condMapEmpty!6255 () Bool)

(declare-fun mapDefault!6255 () ValueCell!1502)


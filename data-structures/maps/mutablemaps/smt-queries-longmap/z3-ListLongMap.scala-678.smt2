; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16586 () Bool)

(assert start!16586)

(declare-fun b!165103 () Bool)

(declare-fun b_free!3879 () Bool)

(declare-fun b_next!3879 () Bool)

(assert (=> b!165103 (= b_free!3879 (not b_next!3879))))

(declare-fun tp!14238 () Bool)

(declare-fun b_and!10311 () Bool)

(assert (=> b!165103 (= tp!14238 b_and!10311)))

(declare-fun b!165096 () Bool)

(declare-fun e!108315 () Bool)

(assert (=> b!165096 (= e!108315 false)))

(declare-fun lt!83038 () Bool)

(declare-datatypes ((V!4555 0))(
  ( (V!4556 (val!1885 Int)) )
))
(declare-datatypes ((ValueCell!1497 0))(
  ( (ValueCellFull!1497 (v!3746 V!4555)) (EmptyCell!1497) )
))
(declare-datatypes ((array!6458 0))(
  ( (array!6459 (arr!3064 (Array (_ BitVec 32) (_ BitVec 64))) (size!3352 (_ BitVec 32))) )
))
(declare-datatypes ((array!6460 0))(
  ( (array!6461 (arr!3065 (Array (_ BitVec 32) ValueCell!1497)) (size!3353 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1902 0))(
  ( (LongMapFixedSize!1903 (defaultEntry!3393 Int) (mask!8098 (_ BitVec 32)) (extraKeys!3134 (_ BitVec 32)) (zeroValue!3236 V!4555) (minValue!3236 V!4555) (_size!1000 (_ BitVec 32)) (_keys!5218 array!6458) (_values!3376 array!6460) (_vacant!1000 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1902)

(declare-datatypes ((List!2056 0))(
  ( (Nil!2053) (Cons!2052 (h!2669 (_ BitVec 64)) (t!6866 List!2056)) )
))
(declare-fun arrayNoDuplicates!0 (array!6458 (_ BitVec 32) List!2056) Bool)

(assert (=> b!165096 (= lt!83038 (arrayNoDuplicates!0 (_keys!5218 thiss!1248) #b00000000000000000000000000000000 Nil!2053))))

(declare-fun b!165097 () Bool)

(declare-fun e!108319 () Bool)

(declare-fun tp_is_empty!3681 () Bool)

(assert (=> b!165097 (= e!108319 tp_is_empty!3681)))

(declare-fun b!165098 () Bool)

(declare-fun res!78296 () Bool)

(assert (=> b!165098 (=> (not res!78296) (not e!108315))))

(assert (=> b!165098 (= res!78296 (and (= (size!3353 (_values!3376 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8098 thiss!1248))) (= (size!3352 (_keys!5218 thiss!1248)) (size!3353 (_values!3376 thiss!1248))) (bvsge (mask!8098 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3134 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3134 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!165099 () Bool)

(declare-fun res!78300 () Bool)

(assert (=> b!165099 (=> (not res!78300) (not e!108315))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3050 0))(
  ( (tuple2!3051 (_1!1535 (_ BitVec 64)) (_2!1535 V!4555)) )
))
(declare-datatypes ((List!2057 0))(
  ( (Nil!2054) (Cons!2053 (h!2670 tuple2!3050) (t!6867 List!2057)) )
))
(declare-datatypes ((ListLongMap!2019 0))(
  ( (ListLongMap!2020 (toList!1025 List!2057)) )
))
(declare-fun contains!1061 (ListLongMap!2019 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!678 (array!6458 array!6460 (_ BitVec 32) (_ BitVec 32) V!4555 V!4555 (_ BitVec 32) Int) ListLongMap!2019)

(assert (=> b!165099 (= res!78300 (contains!1061 (getCurrentListMap!678 (_keys!5218 thiss!1248) (_values!3376 thiss!1248) (mask!8098 thiss!1248) (extraKeys!3134 thiss!1248) (zeroValue!3236 thiss!1248) (minValue!3236 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3393 thiss!1248)) key!828))))

(declare-fun b!165100 () Bool)

(declare-fun res!78294 () Bool)

(declare-fun e!108318 () Bool)

(assert (=> b!165100 (=> (not res!78294) (not e!108318))))

(assert (=> b!165100 (= res!78294 (not (= key!828 (bvneg key!828))))))

(declare-fun b!165101 () Bool)

(declare-fun e!108313 () Bool)

(assert (=> b!165101 (= e!108313 tp_is_empty!3681)))

(declare-fun b!165102 () Bool)

(assert (=> b!165102 (= e!108318 e!108315)))

(declare-fun res!78298 () Bool)

(assert (=> b!165102 (=> (not res!78298) (not e!108315))))

(declare-datatypes ((SeekEntryResult!439 0))(
  ( (MissingZero!439 (index!3924 (_ BitVec 32))) (Found!439 (index!3925 (_ BitVec 32))) (Intermediate!439 (undefined!1251 Bool) (index!3926 (_ BitVec 32)) (x!18315 (_ BitVec 32))) (Undefined!439) (MissingVacant!439 (index!3927 (_ BitVec 32))) )
))
(declare-fun lt!83039 () SeekEntryResult!439)

(get-info :version)

(assert (=> b!165102 (= res!78298 (and (not ((_ is Undefined!439) lt!83039)) (not ((_ is MissingVacant!439) lt!83039)) (not ((_ is MissingZero!439) lt!83039)) ((_ is Found!439) lt!83039)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6458 (_ BitVec 32)) SeekEntryResult!439)

(assert (=> b!165102 (= lt!83039 (seekEntryOrOpen!0 key!828 (_keys!5218 thiss!1248) (mask!8098 thiss!1248)))))

(declare-fun mapIsEmpty!6240 () Bool)

(declare-fun mapRes!6240 () Bool)

(assert (=> mapIsEmpty!6240 mapRes!6240))

(declare-fun e!108317 () Bool)

(declare-fun e!108314 () Bool)

(declare-fun array_inv!1957 (array!6458) Bool)

(declare-fun array_inv!1958 (array!6460) Bool)

(assert (=> b!165103 (= e!108314 (and tp!14238 tp_is_empty!3681 (array_inv!1957 (_keys!5218 thiss!1248)) (array_inv!1958 (_values!3376 thiss!1248)) e!108317))))

(declare-fun b!165104 () Bool)

(declare-fun res!78295 () Bool)

(assert (=> b!165104 (=> (not res!78295) (not e!108315))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6458 (_ BitVec 32)) Bool)

(assert (=> b!165104 (= res!78295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5218 thiss!1248) (mask!8098 thiss!1248)))))

(declare-fun b!165105 () Bool)

(assert (=> b!165105 (= e!108317 (and e!108313 mapRes!6240))))

(declare-fun condMapEmpty!6240 () Bool)

(declare-fun mapDefault!6240 () ValueCell!1497)

(assert (=> b!165105 (= condMapEmpty!6240 (= (arr!3065 (_values!3376 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1497)) mapDefault!6240)))))

(declare-fun b!165106 () Bool)

(declare-fun res!78297 () Bool)

(assert (=> b!165106 (=> (not res!78297) (not e!108315))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165106 (= res!78297 (validMask!0 (mask!8098 thiss!1248)))))

(declare-fun mapNonEmpty!6240 () Bool)

(declare-fun tp!14237 () Bool)

(assert (=> mapNonEmpty!6240 (= mapRes!6240 (and tp!14237 e!108319))))

(declare-fun mapValue!6240 () ValueCell!1497)

(declare-fun mapRest!6240 () (Array (_ BitVec 32) ValueCell!1497))

(declare-fun mapKey!6240 () (_ BitVec 32))

(assert (=> mapNonEmpty!6240 (= (arr!3065 (_values!3376 thiss!1248)) (store mapRest!6240 mapKey!6240 mapValue!6240))))

(declare-fun res!78299 () Bool)

(assert (=> start!16586 (=> (not res!78299) (not e!108318))))

(declare-fun valid!834 (LongMapFixedSize!1902) Bool)

(assert (=> start!16586 (= res!78299 (valid!834 thiss!1248))))

(assert (=> start!16586 e!108318))

(assert (=> start!16586 e!108314))

(assert (=> start!16586 true))

(assert (= (and start!16586 res!78299) b!165100))

(assert (= (and b!165100 res!78294) b!165102))

(assert (= (and b!165102 res!78298) b!165099))

(assert (= (and b!165099 res!78300) b!165106))

(assert (= (and b!165106 res!78297) b!165098))

(assert (= (and b!165098 res!78296) b!165104))

(assert (= (and b!165104 res!78295) b!165096))

(assert (= (and b!165105 condMapEmpty!6240) mapIsEmpty!6240))

(assert (= (and b!165105 (not condMapEmpty!6240)) mapNonEmpty!6240))

(assert (= (and mapNonEmpty!6240 ((_ is ValueCellFull!1497) mapValue!6240)) b!165097))

(assert (= (and b!165105 ((_ is ValueCellFull!1497) mapDefault!6240)) b!165101))

(assert (= b!165103 b!165105))

(assert (= start!16586 b!165103))

(declare-fun m!195049 () Bool)

(assert (=> b!165106 m!195049))

(declare-fun m!195051 () Bool)

(assert (=> b!165096 m!195051))

(declare-fun m!195053 () Bool)

(assert (=> b!165099 m!195053))

(assert (=> b!165099 m!195053))

(declare-fun m!195055 () Bool)

(assert (=> b!165099 m!195055))

(declare-fun m!195057 () Bool)

(assert (=> b!165104 m!195057))

(declare-fun m!195059 () Bool)

(assert (=> b!165102 m!195059))

(declare-fun m!195061 () Bool)

(assert (=> start!16586 m!195061))

(declare-fun m!195063 () Bool)

(assert (=> mapNonEmpty!6240 m!195063))

(declare-fun m!195065 () Bool)

(assert (=> b!165103 m!195065))

(declare-fun m!195067 () Bool)

(assert (=> b!165103 m!195067))

(check-sat b_and!10311 (not b!165099) (not b!165103) (not b!165104) (not mapNonEmpty!6240) (not b_next!3879) (not b!165096) (not b!165102) tp_is_empty!3681 (not b!165106) (not start!16586))
(check-sat b_and!10311 (not b_next!3879))

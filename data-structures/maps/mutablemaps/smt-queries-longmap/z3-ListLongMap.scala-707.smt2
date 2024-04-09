; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16760 () Bool)

(assert start!16760)

(declare-fun b!168301 () Bool)

(declare-fun b_free!4053 () Bool)

(declare-fun b_next!4053 () Bool)

(assert (=> b!168301 (= b_free!4053 (not b_next!4053))))

(declare-fun tp!14759 () Bool)

(declare-fun b_and!10485 () Bool)

(assert (=> b!168301 (= tp!14759 b_and!10485)))

(declare-fun tp_is_empty!3855 () Bool)

(declare-fun e!110646 () Bool)

(declare-fun e!110642 () Bool)

(declare-datatypes ((V!4787 0))(
  ( (V!4788 (val!1972 Int)) )
))
(declare-datatypes ((ValueCell!1584 0))(
  ( (ValueCellFull!1584 (v!3833 V!4787)) (EmptyCell!1584) )
))
(declare-datatypes ((array!6806 0))(
  ( (array!6807 (arr!3238 (Array (_ BitVec 32) (_ BitVec 64))) (size!3526 (_ BitVec 32))) )
))
(declare-datatypes ((array!6808 0))(
  ( (array!6809 (arr!3239 (Array (_ BitVec 32) ValueCell!1584)) (size!3527 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2076 0))(
  ( (LongMapFixedSize!2077 (defaultEntry!3480 Int) (mask!8243 (_ BitVec 32)) (extraKeys!3221 (_ BitVec 32)) (zeroValue!3323 V!4787) (minValue!3323 V!4787) (_size!1087 (_ BitVec 32)) (_keys!5305 array!6806) (_values!3463 array!6808) (_vacant!1087 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2076)

(declare-fun array_inv!2073 (array!6806) Bool)

(declare-fun array_inv!2074 (array!6808) Bool)

(assert (=> b!168301 (= e!110646 (and tp!14759 tp_is_empty!3855 (array_inv!2073 (_keys!5305 thiss!1248)) (array_inv!2074 (_values!3463 thiss!1248)) e!110642))))

(declare-fun mapIsEmpty!6501 () Bool)

(declare-fun mapRes!6501 () Bool)

(assert (=> mapIsEmpty!6501 mapRes!6501))

(declare-fun b!168302 () Bool)

(declare-fun e!110641 () Bool)

(assert (=> b!168302 (= e!110641 tp_is_empty!3855)))

(declare-fun b!168304 () Bool)

(assert (=> b!168304 (= e!110642 (and e!110641 mapRes!6501))))

(declare-fun condMapEmpty!6501 () Bool)

(declare-fun mapDefault!6501 () ValueCell!1584)

(assert (=> b!168304 (= condMapEmpty!6501 (= (arr!3239 (_values!3463 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1584)) mapDefault!6501)))))

(declare-fun b!168305 () Bool)

(declare-fun res!80122 () Bool)

(declare-fun e!110648 () Bool)

(assert (=> b!168305 (=> (not res!80122) (not e!110648))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!168305 (= res!80122 (not (= key!828 (bvneg key!828))))))

(declare-fun b!168306 () Bool)

(declare-datatypes ((Unit!5174 0))(
  ( (Unit!5175) )
))
(declare-fun e!110645 () Unit!5174)

(declare-fun lt!84200 () Unit!5174)

(assert (=> b!168306 (= e!110645 lt!84200)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!122 (array!6806 array!6808 (_ BitVec 32) (_ BitVec 32) V!4787 V!4787 (_ BitVec 64) Int) Unit!5174)

(assert (=> b!168306 (= lt!84200 (lemmaInListMapThenSeekEntryOrOpenFindsIt!122 (_keys!5305 thiss!1248) (_values!3463 thiss!1248) (mask!8243 thiss!1248) (extraKeys!3221 thiss!1248) (zeroValue!3323 thiss!1248) (minValue!3323 thiss!1248) key!828 (defaultEntry!3480 thiss!1248)))))

(declare-fun res!80125 () Bool)

(declare-datatypes ((SeekEntryResult!508 0))(
  ( (MissingZero!508 (index!4200 (_ BitVec 32))) (Found!508 (index!4201 (_ BitVec 32))) (Intermediate!508 (undefined!1320 Bool) (index!4202 (_ BitVec 32)) (x!18616 (_ BitVec 32))) (Undefined!508) (MissingVacant!508 (index!4203 (_ BitVec 32))) )
))
(declare-fun lt!84202 () SeekEntryResult!508)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!168306 (= res!80125 (inRange!0 (index!4201 lt!84202) (mask!8243 thiss!1248)))))

(declare-fun e!110644 () Bool)

(assert (=> b!168306 (=> (not res!80125) (not e!110644))))

(assert (=> b!168306 e!110644))

(declare-fun b!168307 () Bool)

(declare-fun e!110643 () Bool)

(assert (=> b!168307 (= e!110643 true)))

(declare-fun lt!84197 () Bool)

(declare-datatypes ((List!2177 0))(
  ( (Nil!2174) (Cons!2173 (h!2790 (_ BitVec 64)) (t!6987 List!2177)) )
))
(declare-fun arrayNoDuplicates!0 (array!6806 (_ BitVec 32) List!2177) Bool)

(assert (=> b!168307 (= lt!84197 (arrayNoDuplicates!0 (_keys!5305 thiss!1248) #b00000000000000000000000000000000 Nil!2174))))

(declare-fun b!168308 () Bool)

(declare-fun res!80124 () Bool)

(assert (=> b!168308 (=> res!80124 e!110643)))

(assert (=> b!168308 (= res!80124 (or (not (= (size!3527 (_values!3463 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8243 thiss!1248)))) (not (= (size!3526 (_keys!5305 thiss!1248)) (size!3527 (_values!3463 thiss!1248)))) (bvslt (mask!8243 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3221 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3221 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!6501 () Bool)

(declare-fun tp!14760 () Bool)

(declare-fun e!110650 () Bool)

(assert (=> mapNonEmpty!6501 (= mapRes!6501 (and tp!14760 e!110650))))

(declare-fun mapValue!6501 () ValueCell!1584)

(declare-fun mapRest!6501 () (Array (_ BitVec 32) ValueCell!1584))

(declare-fun mapKey!6501 () (_ BitVec 32))

(assert (=> mapNonEmpty!6501 (= (arr!3239 (_values!3463 thiss!1248)) (store mapRest!6501 mapKey!6501 mapValue!6501))))

(declare-fun b!168309 () Bool)

(declare-fun e!110649 () Bool)

(assert (=> b!168309 (= e!110648 e!110649)))

(declare-fun res!80123 () Bool)

(assert (=> b!168309 (=> (not res!80123) (not e!110649))))

(get-info :version)

(assert (=> b!168309 (= res!80123 (and (not ((_ is Undefined!508) lt!84202)) (not ((_ is MissingVacant!508) lt!84202)) (not ((_ is MissingZero!508) lt!84202)) ((_ is Found!508) lt!84202)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6806 (_ BitVec 32)) SeekEntryResult!508)

(assert (=> b!168309 (= lt!84202 (seekEntryOrOpen!0 key!828 (_keys!5305 thiss!1248) (mask!8243 thiss!1248)))))

(declare-fun b!168310 () Bool)

(assert (=> b!168310 (= e!110649 (not e!110643))))

(declare-fun res!80126 () Bool)

(assert (=> b!168310 (=> res!80126 e!110643)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!168310 (= res!80126 (not (validMask!0 (mask!8243 thiss!1248))))))

(declare-datatypes ((tuple2!3162 0))(
  ( (tuple2!3163 (_1!1591 (_ BitVec 64)) (_2!1591 V!4787)) )
))
(declare-datatypes ((List!2178 0))(
  ( (Nil!2175) (Cons!2174 (h!2791 tuple2!3162) (t!6988 List!2178)) )
))
(declare-datatypes ((ListLongMap!2131 0))(
  ( (ListLongMap!2132 (toList!1081 List!2178)) )
))
(declare-fun lt!84199 () ListLongMap!2131)

(declare-fun v!309 () V!4787)

(declare-fun +!223 (ListLongMap!2131 tuple2!3162) ListLongMap!2131)

(declare-fun getCurrentListMap!734 (array!6806 array!6808 (_ BitVec 32) (_ BitVec 32) V!4787 V!4787 (_ BitVec 32) Int) ListLongMap!2131)

(assert (=> b!168310 (= (+!223 lt!84199 (tuple2!3163 key!828 v!309)) (getCurrentListMap!734 (_keys!5305 thiss!1248) (array!6809 (store (arr!3239 (_values!3463 thiss!1248)) (index!4201 lt!84202) (ValueCellFull!1584 v!309)) (size!3527 (_values!3463 thiss!1248))) (mask!8243 thiss!1248) (extraKeys!3221 thiss!1248) (zeroValue!3323 thiss!1248) (minValue!3323 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3480 thiss!1248)))))

(declare-fun lt!84201 () Unit!5174)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!83 (array!6806 array!6808 (_ BitVec 32) (_ BitVec 32) V!4787 V!4787 (_ BitVec 32) (_ BitVec 64) V!4787 Int) Unit!5174)

(assert (=> b!168310 (= lt!84201 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!83 (_keys!5305 thiss!1248) (_values!3463 thiss!1248) (mask!8243 thiss!1248) (extraKeys!3221 thiss!1248) (zeroValue!3323 thiss!1248) (minValue!3323 thiss!1248) (index!4201 lt!84202) key!828 v!309 (defaultEntry!3480 thiss!1248)))))

(declare-fun lt!84198 () Unit!5174)

(assert (=> b!168310 (= lt!84198 e!110645)))

(declare-fun c!30342 () Bool)

(declare-fun contains!1117 (ListLongMap!2131 (_ BitVec 64)) Bool)

(assert (=> b!168310 (= c!30342 (contains!1117 lt!84199 key!828))))

(assert (=> b!168310 (= lt!84199 (getCurrentListMap!734 (_keys!5305 thiss!1248) (_values!3463 thiss!1248) (mask!8243 thiss!1248) (extraKeys!3221 thiss!1248) (zeroValue!3323 thiss!1248) (minValue!3323 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3480 thiss!1248)))))

(declare-fun b!168311 () Bool)

(declare-fun res!80127 () Bool)

(assert (=> b!168311 (=> res!80127 e!110643)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6806 (_ BitVec 32)) Bool)

(assert (=> b!168311 (= res!80127 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5305 thiss!1248) (mask!8243 thiss!1248))))))

(declare-fun b!168312 () Bool)

(declare-fun Unit!5176 () Unit!5174)

(assert (=> b!168312 (= e!110645 Unit!5176)))

(declare-fun lt!84203 () Unit!5174)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!120 (array!6806 array!6808 (_ BitVec 32) (_ BitVec 32) V!4787 V!4787 (_ BitVec 64) Int) Unit!5174)

(assert (=> b!168312 (= lt!84203 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!120 (_keys!5305 thiss!1248) (_values!3463 thiss!1248) (mask!8243 thiss!1248) (extraKeys!3221 thiss!1248) (zeroValue!3323 thiss!1248) (minValue!3323 thiss!1248) key!828 (defaultEntry!3480 thiss!1248)))))

(assert (=> b!168312 false))

(declare-fun b!168313 () Bool)

(assert (=> b!168313 (= e!110644 (= (select (arr!3238 (_keys!5305 thiss!1248)) (index!4201 lt!84202)) key!828))))

(declare-fun b!168303 () Bool)

(assert (=> b!168303 (= e!110650 tp_is_empty!3855)))

(declare-fun res!80121 () Bool)

(assert (=> start!16760 (=> (not res!80121) (not e!110648))))

(declare-fun valid!891 (LongMapFixedSize!2076) Bool)

(assert (=> start!16760 (= res!80121 (valid!891 thiss!1248))))

(assert (=> start!16760 e!110648))

(assert (=> start!16760 e!110646))

(assert (=> start!16760 true))

(assert (=> start!16760 tp_is_empty!3855))

(assert (= (and start!16760 res!80121) b!168305))

(assert (= (and b!168305 res!80122) b!168309))

(assert (= (and b!168309 res!80123) b!168310))

(assert (= (and b!168310 c!30342) b!168306))

(assert (= (and b!168310 (not c!30342)) b!168312))

(assert (= (and b!168306 res!80125) b!168313))

(assert (= (and b!168310 (not res!80126)) b!168308))

(assert (= (and b!168308 (not res!80124)) b!168311))

(assert (= (and b!168311 (not res!80127)) b!168307))

(assert (= (and b!168304 condMapEmpty!6501) mapIsEmpty!6501))

(assert (= (and b!168304 (not condMapEmpty!6501)) mapNonEmpty!6501))

(assert (= (and mapNonEmpty!6501 ((_ is ValueCellFull!1584) mapValue!6501)) b!168303))

(assert (= (and b!168304 ((_ is ValueCellFull!1584) mapDefault!6501)) b!168302))

(assert (= b!168301 b!168304))

(assert (= start!16760 b!168301))

(declare-fun m!197405 () Bool)

(assert (=> start!16760 m!197405))

(declare-fun m!197407 () Bool)

(assert (=> b!168311 m!197407))

(declare-fun m!197409 () Bool)

(assert (=> b!168313 m!197409))

(declare-fun m!197411 () Bool)

(assert (=> b!168312 m!197411))

(declare-fun m!197413 () Bool)

(assert (=> b!168307 m!197413))

(declare-fun m!197415 () Bool)

(assert (=> b!168310 m!197415))

(declare-fun m!197417 () Bool)

(assert (=> b!168310 m!197417))

(declare-fun m!197419 () Bool)

(assert (=> b!168310 m!197419))

(declare-fun m!197421 () Bool)

(assert (=> b!168310 m!197421))

(declare-fun m!197423 () Bool)

(assert (=> b!168310 m!197423))

(declare-fun m!197425 () Bool)

(assert (=> b!168310 m!197425))

(declare-fun m!197427 () Bool)

(assert (=> b!168310 m!197427))

(declare-fun m!197429 () Bool)

(assert (=> b!168301 m!197429))

(declare-fun m!197431 () Bool)

(assert (=> b!168301 m!197431))

(declare-fun m!197433 () Bool)

(assert (=> b!168306 m!197433))

(declare-fun m!197435 () Bool)

(assert (=> b!168306 m!197435))

(declare-fun m!197437 () Bool)

(assert (=> mapNonEmpty!6501 m!197437))

(declare-fun m!197439 () Bool)

(assert (=> b!168309 m!197439))

(check-sat tp_is_empty!3855 (not b!168311) (not b!168301) (not start!16760) b_and!10485 (not mapNonEmpty!6501) (not b!168306) (not b!168312) (not b!168307) (not b!168310) (not b_next!4053) (not b!168309))
(check-sat b_and!10485 (not b_next!4053))

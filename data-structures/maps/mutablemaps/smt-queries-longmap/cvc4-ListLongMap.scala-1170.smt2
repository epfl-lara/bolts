; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25138 () Bool)

(assert start!25138)

(declare-fun b!261688 () Bool)

(declare-fun b_free!6773 () Bool)

(declare-fun b_next!6773 () Bool)

(assert (=> b!261688 (= b_free!6773 (not b_next!6773))))

(declare-fun tp!23650 () Bool)

(declare-fun b_and!13925 () Bool)

(assert (=> b!261688 (= tp!23650 b_and!13925)))

(declare-fun b!261680 () Bool)

(declare-datatypes ((Unit!8136 0))(
  ( (Unit!8137) )
))
(declare-fun e!169582 () Unit!8136)

(declare-fun Unit!8138 () Unit!8136)

(assert (=> b!261680 (= e!169582 Unit!8138)))

(declare-fun lt!132198 () Unit!8136)

(declare-datatypes ((V!8493 0))(
  ( (V!8494 (val!3362 Int)) )
))
(declare-datatypes ((ValueCell!2974 0))(
  ( (ValueCellFull!2974 (v!5483 V!8493)) (EmptyCell!2974) )
))
(declare-datatypes ((array!12626 0))(
  ( (array!12627 (arr!5975 (Array (_ BitVec 32) ValueCell!2974)) (size!6326 (_ BitVec 32))) )
))
(declare-datatypes ((array!12628 0))(
  ( (array!12629 (arr!5976 (Array (_ BitVec 32) (_ BitVec 64))) (size!6327 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3848 0))(
  ( (LongMapFixedSize!3849 (defaultEntry!4822 Int) (mask!11170 (_ BitVec 32)) (extraKeys!4559 (_ BitVec 32)) (zeroValue!4663 V!8493) (minValue!4663 V!8493) (_size!1973 (_ BitVec 32)) (_keys!7010 array!12628) (_values!4805 array!12626) (_vacant!1973 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3848)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!448 (array!12628 array!12626 (_ BitVec 32) (_ BitVec 32) V!8493 V!8493 (_ BitVec 64) Int) Unit!8136)

(assert (=> b!261680 (= lt!132198 (lemmaInListMapThenSeekEntryOrOpenFindsIt!448 (_keys!7010 thiss!1504) (_values!4805 thiss!1504) (mask!11170 thiss!1504) (extraKeys!4559 thiss!1504) (zeroValue!4663 thiss!1504) (minValue!4663 thiss!1504) key!932 (defaultEntry!4822 thiss!1504)))))

(assert (=> b!261680 false))

(declare-fun b!261681 () Bool)

(declare-fun res!127867 () Bool)

(declare-datatypes ((SeekEntryResult!1199 0))(
  ( (MissingZero!1199 (index!6966 (_ BitVec 32))) (Found!1199 (index!6967 (_ BitVec 32))) (Intermediate!1199 (undefined!2011 Bool) (index!6968 (_ BitVec 32)) (x!25189 (_ BitVec 32))) (Undefined!1199) (MissingVacant!1199 (index!6969 (_ BitVec 32))) )
))
(declare-fun lt!132199 () SeekEntryResult!1199)

(assert (=> b!261681 (= res!127867 (= (select (arr!5976 (_keys!7010 thiss!1504)) (index!6969 lt!132199)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!169574 () Bool)

(assert (=> b!261681 (=> (not res!127867) (not e!169574))))

(declare-fun mapIsEmpty!11311 () Bool)

(declare-fun mapRes!11311 () Bool)

(assert (=> mapIsEmpty!11311 mapRes!11311))

(declare-fun b!261682 () Bool)

(declare-fun call!24989 () Bool)

(assert (=> b!261682 (= e!169574 (not call!24989))))

(declare-fun b!261683 () Bool)

(declare-fun e!169580 () Bool)

(assert (=> b!261683 (= e!169580 (not true))))

(declare-fun lt!132196 () array!12628)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!12628 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!261683 (= (arrayCountValidKeys!0 lt!132196 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!132208 () Unit!8136)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12628 (_ BitVec 32)) Unit!8136)

(assert (=> b!261683 (= lt!132208 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!132196 index!297))))

(declare-fun arrayContainsKey!0 (array!12628 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!261683 (arrayContainsKey!0 lt!132196 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!132207 () Unit!8136)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12628 (_ BitVec 64) (_ BitVec 32)) Unit!8136)

(assert (=> b!261683 (= lt!132207 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!132196 key!932 index!297))))

(declare-datatypes ((tuple2!4956 0))(
  ( (tuple2!4957 (_1!2488 (_ BitVec 64)) (_2!2488 V!8493)) )
))
(declare-datatypes ((List!3856 0))(
  ( (Nil!3853) (Cons!3852 (h!4518 tuple2!4956) (t!8937 List!3856)) )
))
(declare-datatypes ((ListLongMap!3883 0))(
  ( (ListLongMap!3884 (toList!1957 List!3856)) )
))
(declare-fun lt!132195 () ListLongMap!3883)

(declare-fun v!346 () V!8493)

(declare-fun +!698 (ListLongMap!3883 tuple2!4956) ListLongMap!3883)

(declare-fun getCurrentListMap!1480 (array!12628 array!12626 (_ BitVec 32) (_ BitVec 32) V!8493 V!8493 (_ BitVec 32) Int) ListLongMap!3883)

(assert (=> b!261683 (= (+!698 lt!132195 (tuple2!4957 key!932 v!346)) (getCurrentListMap!1480 lt!132196 (array!12627 (store (arr!5975 (_values!4805 thiss!1504)) index!297 (ValueCellFull!2974 v!346)) (size!6326 (_values!4805 thiss!1504))) (mask!11170 thiss!1504) (extraKeys!4559 thiss!1504) (zeroValue!4663 thiss!1504) (minValue!4663 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4822 thiss!1504)))))

(declare-fun lt!132204 () Unit!8136)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!113 (array!12628 array!12626 (_ BitVec 32) (_ BitVec 32) V!8493 V!8493 (_ BitVec 32) (_ BitVec 64) V!8493 Int) Unit!8136)

(assert (=> b!261683 (= lt!132204 (lemmaAddValidKeyToArrayThenAddPairToListMap!113 (_keys!7010 thiss!1504) (_values!4805 thiss!1504) (mask!11170 thiss!1504) (extraKeys!4559 thiss!1504) (zeroValue!4663 thiss!1504) (minValue!4663 thiss!1504) index!297 key!932 v!346 (defaultEntry!4822 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12628 (_ BitVec 32)) Bool)

(assert (=> b!261683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!132196 (mask!11170 thiss!1504))))

(declare-fun lt!132203 () Unit!8136)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12628 (_ BitVec 32) (_ BitVec 32)) Unit!8136)

(assert (=> b!261683 (= lt!132203 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!7010 thiss!1504) index!297 (mask!11170 thiss!1504)))))

(assert (=> b!261683 (= (arrayCountValidKeys!0 lt!132196 #b00000000000000000000000000000000 (size!6327 (_keys!7010 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!7010 thiss!1504) #b00000000000000000000000000000000 (size!6327 (_keys!7010 thiss!1504)))))))

(declare-fun lt!132197 () Unit!8136)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12628 (_ BitVec 32) (_ BitVec 64)) Unit!8136)

(assert (=> b!261683 (= lt!132197 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!7010 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3857 0))(
  ( (Nil!3854) (Cons!3853 (h!4519 (_ BitVec 64)) (t!8938 List!3857)) )
))
(declare-fun arrayNoDuplicates!0 (array!12628 (_ BitVec 32) List!3857) Bool)

(assert (=> b!261683 (arrayNoDuplicates!0 lt!132196 #b00000000000000000000000000000000 Nil!3854)))

(assert (=> b!261683 (= lt!132196 (array!12629 (store (arr!5976 (_keys!7010 thiss!1504)) index!297 key!932) (size!6327 (_keys!7010 thiss!1504))))))

(declare-fun lt!132202 () Unit!8136)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12628 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3857) Unit!8136)

(assert (=> b!261683 (= lt!132202 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!7010 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3854))))

(declare-fun lt!132200 () Unit!8136)

(declare-fun e!169573 () Unit!8136)

(assert (=> b!261683 (= lt!132200 e!169573)))

(declare-fun c!44556 () Bool)

(assert (=> b!261683 (= c!44556 (arrayContainsKey!0 (_keys!7010 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!261684 () Bool)

(declare-fun res!127864 () Bool)

(declare-fun e!169581 () Bool)

(assert (=> b!261684 (=> (not res!127864) (not e!169581))))

(assert (=> b!261684 (= res!127864 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!261685 () Bool)

(declare-fun res!127861 () Bool)

(declare-fun e!169584 () Bool)

(assert (=> b!261685 (=> (not res!127861) (not e!169584))))

(declare-fun call!24990 () Bool)

(assert (=> b!261685 (= res!127861 call!24990)))

(declare-fun e!169577 () Bool)

(assert (=> b!261685 (= e!169577 e!169584)))

(declare-fun b!261686 () Bool)

(declare-fun Unit!8139 () Unit!8136)

(assert (=> b!261686 (= e!169573 Unit!8139)))

(declare-fun lt!132206 () Unit!8136)

(declare-fun lemmaArrayContainsKeyThenInListMap!255 (array!12628 array!12626 (_ BitVec 32) (_ BitVec 32) V!8493 V!8493 (_ BitVec 64) (_ BitVec 32) Int) Unit!8136)

(assert (=> b!261686 (= lt!132206 (lemmaArrayContainsKeyThenInListMap!255 (_keys!7010 thiss!1504) (_values!4805 thiss!1504) (mask!11170 thiss!1504) (extraKeys!4559 thiss!1504) (zeroValue!4663 thiss!1504) (minValue!4663 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4822 thiss!1504)))))

(assert (=> b!261686 false))

(declare-fun b!261687 () Bool)

(assert (=> b!261687 (= e!169584 (not call!24989))))

(declare-fun e!169578 () Bool)

(declare-fun tp_is_empty!6635 () Bool)

(declare-fun e!169586 () Bool)

(declare-fun array_inv!3939 (array!12628) Bool)

(declare-fun array_inv!3940 (array!12626) Bool)

(assert (=> b!261688 (= e!169578 (and tp!23650 tp_is_empty!6635 (array_inv!3939 (_keys!7010 thiss!1504)) (array_inv!3940 (_values!4805 thiss!1504)) e!169586))))

(declare-fun b!261689 () Bool)

(declare-fun e!169579 () Bool)

(assert (=> b!261689 (= e!169581 e!169579)))

(declare-fun res!127866 () Bool)

(assert (=> b!261689 (=> (not res!127866) (not e!169579))))

(assert (=> b!261689 (= res!127866 (or (= lt!132199 (MissingZero!1199 index!297)) (= lt!132199 (MissingVacant!1199 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12628 (_ BitVec 32)) SeekEntryResult!1199)

(assert (=> b!261689 (= lt!132199 (seekEntryOrOpen!0 key!932 (_keys!7010 thiss!1504) (mask!11170 thiss!1504)))))

(declare-fun b!261690 () Bool)

(declare-fun e!169576 () Bool)

(assert (=> b!261690 (= e!169576 e!169574)))

(declare-fun res!127865 () Bool)

(assert (=> b!261690 (= res!127865 call!24990)))

(assert (=> b!261690 (=> (not res!127865) (not e!169574))))

(declare-fun b!261691 () Bool)

(declare-fun c!44555 () Bool)

(assert (=> b!261691 (= c!44555 (is-MissingVacant!1199 lt!132199))))

(assert (=> b!261691 (= e!169577 e!169576)))

(declare-fun b!261692 () Bool)

(declare-fun lt!132205 () Unit!8136)

(assert (=> b!261692 (= e!169582 lt!132205)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!447 (array!12628 array!12626 (_ BitVec 32) (_ BitVec 32) V!8493 V!8493 (_ BitVec 64) Int) Unit!8136)

(assert (=> b!261692 (= lt!132205 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!447 (_keys!7010 thiss!1504) (_values!4805 thiss!1504) (mask!11170 thiss!1504) (extraKeys!4559 thiss!1504) (zeroValue!4663 thiss!1504) (minValue!4663 thiss!1504) key!932 (defaultEntry!4822 thiss!1504)))))

(declare-fun c!44557 () Bool)

(assert (=> b!261692 (= c!44557 (is-MissingZero!1199 lt!132199))))

(assert (=> b!261692 e!169577))

(declare-fun bm!24986 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!24986 (= call!24990 (inRange!0 (ite c!44557 (index!6966 lt!132199) (index!6969 lt!132199)) (mask!11170 thiss!1504)))))

(declare-fun b!261693 () Bool)

(declare-fun e!169583 () Bool)

(assert (=> b!261693 (= e!169583 tp_is_empty!6635)))

(declare-fun b!261694 () Bool)

(declare-fun Unit!8140 () Unit!8136)

(assert (=> b!261694 (= e!169573 Unit!8140)))

(declare-fun b!261695 () Bool)

(assert (=> b!261695 (= e!169576 (is-Undefined!1199 lt!132199))))

(declare-fun b!261696 () Bool)

(assert (=> b!261696 (= e!169586 (and e!169583 mapRes!11311))))

(declare-fun condMapEmpty!11311 () Bool)

(declare-fun mapDefault!11311 () ValueCell!2974)


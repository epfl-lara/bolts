; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24880 () Bool)

(assert start!24880)

(declare-fun b!259647 () Bool)

(declare-fun b_free!6755 () Bool)

(declare-fun b_next!6755 () Bool)

(assert (=> b!259647 (= b_free!6755 (not b_next!6755))))

(declare-fun tp!23585 () Bool)

(declare-fun b_and!13875 () Bool)

(assert (=> b!259647 (= tp!23585 b_and!13875)))

(declare-fun b!259641 () Bool)

(declare-datatypes ((Unit!8075 0))(
  ( (Unit!8076) )
))
(declare-fun e!168295 () Unit!8075)

(declare-fun lt!130891 () Unit!8075)

(assert (=> b!259641 (= e!168295 lt!130891)))

(declare-datatypes ((V!8469 0))(
  ( (V!8470 (val!3353 Int)) )
))
(declare-datatypes ((ValueCell!2965 0))(
  ( (ValueCellFull!2965 (v!5459 V!8469)) (EmptyCell!2965) )
))
(declare-datatypes ((array!12584 0))(
  ( (array!12585 (arr!5957 (Array (_ BitVec 32) ValueCell!2965)) (size!6306 (_ BitVec 32))) )
))
(declare-datatypes ((array!12586 0))(
  ( (array!12587 (arr!5958 (Array (_ BitVec 32) (_ BitVec 64))) (size!6307 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3830 0))(
  ( (LongMapFixedSize!3831 (defaultEntry!4788 Int) (mask!11107 (_ BitVec 32)) (extraKeys!4525 (_ BitVec 32)) (zeroValue!4629 V!8469) (minValue!4629 V!8469) (_size!1964 (_ BitVec 32)) (_keys!6966 array!12586) (_values!4771 array!12584) (_vacant!1964 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3830)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!442 (array!12586 array!12584 (_ BitVec 32) (_ BitVec 32) V!8469 V!8469 (_ BitVec 64) Int) Unit!8075)

(assert (=> b!259641 (= lt!130891 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!442 (_keys!6966 thiss!1504) (_values!4771 thiss!1504) (mask!11107 thiss!1504) (extraKeys!4525 thiss!1504) (zeroValue!4629 thiss!1504) (minValue!4629 thiss!1504) key!932 (defaultEntry!4788 thiss!1504)))))

(declare-fun c!44073 () Bool)

(declare-datatypes ((SeekEntryResult!1191 0))(
  ( (MissingZero!1191 (index!6934 (_ BitVec 32))) (Found!1191 (index!6935 (_ BitVec 32))) (Intermediate!1191 (undefined!2003 Bool) (index!6936 (_ BitVec 32)) (x!25111 (_ BitVec 32))) (Undefined!1191) (MissingVacant!1191 (index!6937 (_ BitVec 32))) )
))
(declare-fun lt!130892 () SeekEntryResult!1191)

(assert (=> b!259641 (= c!44073 (is-MissingZero!1191 lt!130892))))

(declare-fun e!168298 () Bool)

(assert (=> b!259641 e!168298))

(declare-fun b!259642 () Bool)

(declare-fun e!168285 () Bool)

(declare-fun e!168286 () Bool)

(assert (=> b!259642 (= e!168285 (not e!168286))))

(declare-fun res!126939 () Bool)

(assert (=> b!259642 (=> res!126939 e!168286)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!259642 (= res!126939 (not (validMask!0 (mask!11107 thiss!1504))))))

(declare-fun lt!130904 () array!12586)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!12586 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!259642 (= (arrayCountValidKeys!0 lt!130904 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!130893 () Unit!8075)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12586 (_ BitVec 32)) Unit!8075)

(assert (=> b!259642 (= lt!130893 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!130904 index!297))))

(declare-fun arrayContainsKey!0 (array!12586 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!259642 (arrayContainsKey!0 lt!130904 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!130899 () Unit!8075)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12586 (_ BitVec 64) (_ BitVec 32)) Unit!8075)

(assert (=> b!259642 (= lt!130899 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!130904 key!932 index!297))))

(declare-datatypes ((tuple2!4942 0))(
  ( (tuple2!4943 (_1!2481 (_ BitVec 64)) (_2!2481 V!8469)) )
))
(declare-datatypes ((List!3844 0))(
  ( (Nil!3841) (Cons!3840 (h!4504 tuple2!4942) (t!8919 List!3844)) )
))
(declare-datatypes ((ListLongMap!3869 0))(
  ( (ListLongMap!3870 (toList!1950 List!3844)) )
))
(declare-fun lt!130903 () ListLongMap!3869)

(declare-fun v!346 () V!8469)

(declare-fun +!693 (ListLongMap!3869 tuple2!4942) ListLongMap!3869)

(declare-fun getCurrentListMap!1473 (array!12586 array!12584 (_ BitVec 32) (_ BitVec 32) V!8469 V!8469 (_ BitVec 32) Int) ListLongMap!3869)

(assert (=> b!259642 (= (+!693 lt!130903 (tuple2!4943 key!932 v!346)) (getCurrentListMap!1473 lt!130904 (array!12585 (store (arr!5957 (_values!4771 thiss!1504)) index!297 (ValueCellFull!2965 v!346)) (size!6306 (_values!4771 thiss!1504))) (mask!11107 thiss!1504) (extraKeys!4525 thiss!1504) (zeroValue!4629 thiss!1504) (minValue!4629 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4788 thiss!1504)))))

(declare-fun lt!130895 () Unit!8075)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!108 (array!12586 array!12584 (_ BitVec 32) (_ BitVec 32) V!8469 V!8469 (_ BitVec 32) (_ BitVec 64) V!8469 Int) Unit!8075)

(assert (=> b!259642 (= lt!130895 (lemmaAddValidKeyToArrayThenAddPairToListMap!108 (_keys!6966 thiss!1504) (_values!4771 thiss!1504) (mask!11107 thiss!1504) (extraKeys!4525 thiss!1504) (zeroValue!4629 thiss!1504) (minValue!4629 thiss!1504) index!297 key!932 v!346 (defaultEntry!4788 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12586 (_ BitVec 32)) Bool)

(assert (=> b!259642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!130904 (mask!11107 thiss!1504))))

(declare-fun lt!130898 () Unit!8075)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12586 (_ BitVec 32) (_ BitVec 32)) Unit!8075)

(assert (=> b!259642 (= lt!130898 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6966 thiss!1504) index!297 (mask!11107 thiss!1504)))))

(assert (=> b!259642 (= (arrayCountValidKeys!0 lt!130904 #b00000000000000000000000000000000 (size!6307 (_keys!6966 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6966 thiss!1504) #b00000000000000000000000000000000 (size!6307 (_keys!6966 thiss!1504)))))))

(declare-fun lt!130894 () Unit!8075)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12586 (_ BitVec 32) (_ BitVec 64)) Unit!8075)

(assert (=> b!259642 (= lt!130894 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6966 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3845 0))(
  ( (Nil!3842) (Cons!3841 (h!4505 (_ BitVec 64)) (t!8920 List!3845)) )
))
(declare-fun arrayNoDuplicates!0 (array!12586 (_ BitVec 32) List!3845) Bool)

(assert (=> b!259642 (arrayNoDuplicates!0 lt!130904 #b00000000000000000000000000000000 Nil!3842)))

(assert (=> b!259642 (= lt!130904 (array!12587 (store (arr!5958 (_keys!6966 thiss!1504)) index!297 key!932) (size!6307 (_keys!6966 thiss!1504))))))

(declare-fun lt!130896 () Unit!8075)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12586 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3845) Unit!8075)

(assert (=> b!259642 (= lt!130896 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6966 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3842))))

(declare-fun lt!130902 () Unit!8075)

(declare-fun e!168290 () Unit!8075)

(assert (=> b!259642 (= lt!130902 e!168290)))

(declare-fun c!44070 () Bool)

(assert (=> b!259642 (= c!44070 (arrayContainsKey!0 (_keys!6966 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun res!126935 () Bool)

(declare-fun e!168289 () Bool)

(assert (=> start!24880 (=> (not res!126935) (not e!168289))))

(declare-fun valid!1488 (LongMapFixedSize!3830) Bool)

(assert (=> start!24880 (= res!126935 (valid!1488 thiss!1504))))

(assert (=> start!24880 e!168289))

(declare-fun e!168287 () Bool)

(assert (=> start!24880 e!168287))

(assert (=> start!24880 true))

(declare-fun tp_is_empty!6617 () Bool)

(assert (=> start!24880 tp_is_empty!6617))

(declare-fun mapIsEmpty!11273 () Bool)

(declare-fun mapRes!11273 () Bool)

(assert (=> mapIsEmpty!11273 mapRes!11273))

(declare-fun b!259643 () Bool)

(declare-fun e!168299 () Bool)

(assert (=> b!259643 (= e!168299 e!168285)))

(declare-fun res!126938 () Bool)

(assert (=> b!259643 (=> (not res!126938) (not e!168285))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!259643 (= res!126938 (inRange!0 index!297 (mask!11107 thiss!1504)))))

(declare-fun lt!130897 () Unit!8075)

(assert (=> b!259643 (= lt!130897 e!168295)))

(declare-fun c!44071 () Bool)

(declare-fun contains!1887 (ListLongMap!3869 (_ BitVec 64)) Bool)

(assert (=> b!259643 (= c!44071 (contains!1887 lt!130903 key!932))))

(assert (=> b!259643 (= lt!130903 (getCurrentListMap!1473 (_keys!6966 thiss!1504) (_values!4771 thiss!1504) (mask!11107 thiss!1504) (extraKeys!4525 thiss!1504) (zeroValue!4629 thiss!1504) (minValue!4629 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4788 thiss!1504)))))

(declare-fun b!259644 () Bool)

(declare-fun c!44072 () Bool)

(assert (=> b!259644 (= c!44072 (is-MissingVacant!1191 lt!130892))))

(declare-fun e!168293 () Bool)

(assert (=> b!259644 (= e!168298 e!168293)))

(declare-fun mapNonEmpty!11273 () Bool)

(declare-fun tp!23584 () Bool)

(declare-fun e!168297 () Bool)

(assert (=> mapNonEmpty!11273 (= mapRes!11273 (and tp!23584 e!168297))))

(declare-fun mapRest!11273 () (Array (_ BitVec 32) ValueCell!2965))

(declare-fun mapKey!11273 () (_ BitVec 32))

(declare-fun mapValue!11273 () ValueCell!2965)

(assert (=> mapNonEmpty!11273 (= (arr!5957 (_values!4771 thiss!1504)) (store mapRest!11273 mapKey!11273 mapValue!11273))))

(declare-fun b!259645 () Bool)

(declare-fun Unit!8077 () Unit!8075)

(assert (=> b!259645 (= e!168290 Unit!8077)))

(declare-fun lt!130900 () Unit!8075)

(declare-fun lemmaArrayContainsKeyThenInListMap!250 (array!12586 array!12584 (_ BitVec 32) (_ BitVec 32) V!8469 V!8469 (_ BitVec 64) (_ BitVec 32) Int) Unit!8075)

(assert (=> b!259645 (= lt!130900 (lemmaArrayContainsKeyThenInListMap!250 (_keys!6966 thiss!1504) (_values!4771 thiss!1504) (mask!11107 thiss!1504) (extraKeys!4525 thiss!1504) (zeroValue!4629 thiss!1504) (minValue!4629 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4788 thiss!1504)))))

(assert (=> b!259645 false))

(declare-fun b!259646 () Bool)

(declare-fun res!126937 () Bool)

(assert (=> b!259646 (=> (not res!126937) (not e!168289))))

(assert (=> b!259646 (= res!126937 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!168292 () Bool)

(declare-fun array_inv!3927 (array!12586) Bool)

(declare-fun array_inv!3928 (array!12584) Bool)

(assert (=> b!259647 (= e!168287 (and tp!23585 tp_is_empty!6617 (array_inv!3927 (_keys!6966 thiss!1504)) (array_inv!3928 (_values!4771 thiss!1504)) e!168292))))

(declare-fun b!259648 () Bool)

(declare-fun e!168296 () Bool)

(declare-fun call!24727 () Bool)

(assert (=> b!259648 (= e!168296 (not call!24727))))

(declare-fun b!259649 () Bool)

(declare-fun e!168294 () Bool)

(assert (=> b!259649 (= e!168292 (and e!168294 mapRes!11273))))

(declare-fun condMapEmpty!11273 () Bool)

(declare-fun mapDefault!11273 () ValueCell!2965)


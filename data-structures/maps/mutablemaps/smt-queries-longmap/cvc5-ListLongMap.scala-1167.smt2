; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24876 () Bool)

(assert start!24876)

(declare-fun b!259516 () Bool)

(declare-fun b_free!6751 () Bool)

(declare-fun b_next!6751 () Bool)

(assert (=> b!259516 (= b_free!6751 (not b_next!6751))))

(declare-fun tp!23573 () Bool)

(declare-fun b_and!13871 () Bool)

(assert (=> b!259516 (= tp!23573 b_and!13871)))

(declare-fun b!259515 () Bool)

(declare-fun e!168196 () Bool)

(declare-datatypes ((V!8465 0))(
  ( (V!8466 (val!3351 Int)) )
))
(declare-datatypes ((ValueCell!2963 0))(
  ( (ValueCellFull!2963 (v!5457 V!8465)) (EmptyCell!2963) )
))
(declare-datatypes ((array!12576 0))(
  ( (array!12577 (arr!5953 (Array (_ BitVec 32) ValueCell!2963)) (size!6302 (_ BitVec 32))) )
))
(declare-datatypes ((array!12578 0))(
  ( (array!12579 (arr!5954 (Array (_ BitVec 32) (_ BitVec 64))) (size!6303 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3826 0))(
  ( (LongMapFixedSize!3827 (defaultEntry!4786 Int) (mask!11105 (_ BitVec 32)) (extraKeys!4523 (_ BitVec 32)) (zeroValue!4627 V!8465) (minValue!4627 V!8465) (_size!1962 (_ BitVec 32)) (_keys!6964 array!12578) (_values!4769 array!12576) (_vacant!1962 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3826)

(assert (=> b!259515 (= e!168196 (or (not (= (size!6302 (_values!4769 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!11105 thiss!1504)))) (not (= (size!6303 (_keys!6964 thiss!1504)) (size!6302 (_values!4769 thiss!1504)))) (bvsge (mask!11105 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun e!168204 () Bool)

(declare-fun tp_is_empty!6613 () Bool)

(declare-fun e!168206 () Bool)

(declare-fun array_inv!3923 (array!12578) Bool)

(declare-fun array_inv!3924 (array!12576) Bool)

(assert (=> b!259516 (= e!168206 (and tp!23573 tp_is_empty!6613 (array_inv!3923 (_keys!6964 thiss!1504)) (array_inv!3924 (_values!4769 thiss!1504)) e!168204))))

(declare-fun b!259517 () Bool)

(declare-fun res!126880 () Bool)

(declare-fun e!168209 () Bool)

(assert (=> b!259517 (=> (not res!126880) (not e!168209))))

(declare-datatypes ((SeekEntryResult!1189 0))(
  ( (MissingZero!1189 (index!6926 (_ BitVec 32))) (Found!1189 (index!6927 (_ BitVec 32))) (Intermediate!1189 (undefined!2001 Bool) (index!6928 (_ BitVec 32)) (x!25109 (_ BitVec 32))) (Undefined!1189) (MissingVacant!1189 (index!6929 (_ BitVec 32))) )
))
(declare-fun lt!130810 () SeekEntryResult!1189)

(assert (=> b!259517 (= res!126880 (= (select (arr!5954 (_keys!6964 thiss!1504)) (index!6926 lt!130810)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!259518 () Bool)

(declare-fun e!168200 () Bool)

(declare-fun e!168208 () Bool)

(assert (=> b!259518 (= e!168200 e!168208)))

(declare-fun res!126887 () Bool)

(declare-fun call!24714 () Bool)

(assert (=> b!259518 (= res!126887 call!24714)))

(assert (=> b!259518 (=> (not res!126887) (not e!168208))))

(declare-fun b!259519 () Bool)

(assert (=> b!259519 (= e!168200 (is-Undefined!1189 lt!130810))))

(declare-fun b!259520 () Bool)

(declare-fun e!168202 () Bool)

(declare-fun e!168201 () Bool)

(assert (=> b!259520 (= e!168202 e!168201)))

(declare-fun res!126883 () Bool)

(assert (=> b!259520 (=> (not res!126883) (not e!168201))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!259520 (= res!126883 (or (= lt!130810 (MissingZero!1189 index!297)) (= lt!130810 (MissingVacant!1189 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12578 (_ BitVec 32)) SeekEntryResult!1189)

(assert (=> b!259520 (= lt!130810 (seekEntryOrOpen!0 key!932 (_keys!6964 thiss!1504) (mask!11105 thiss!1504)))))

(declare-fun b!259521 () Bool)

(declare-fun e!168203 () Bool)

(assert (=> b!259521 (= e!168201 e!168203)))

(declare-fun res!126886 () Bool)

(assert (=> b!259521 (=> (not res!126886) (not e!168203))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!259521 (= res!126886 (inRange!0 index!297 (mask!11105 thiss!1504)))))

(declare-datatypes ((Unit!8066 0))(
  ( (Unit!8067) )
))
(declare-fun lt!130808 () Unit!8066)

(declare-fun e!168197 () Unit!8066)

(assert (=> b!259521 (= lt!130808 e!168197)))

(declare-fun c!44047 () Bool)

(declare-datatypes ((tuple2!4938 0))(
  ( (tuple2!4939 (_1!2479 (_ BitVec 64)) (_2!2479 V!8465)) )
))
(declare-datatypes ((List!3840 0))(
  ( (Nil!3837) (Cons!3836 (h!4500 tuple2!4938) (t!8915 List!3840)) )
))
(declare-datatypes ((ListLongMap!3865 0))(
  ( (ListLongMap!3866 (toList!1948 List!3840)) )
))
(declare-fun lt!130809 () ListLongMap!3865)

(declare-fun contains!1885 (ListLongMap!3865 (_ BitVec 64)) Bool)

(assert (=> b!259521 (= c!44047 (contains!1885 lt!130809 key!932))))

(declare-fun getCurrentListMap!1471 (array!12578 array!12576 (_ BitVec 32) (_ BitVec 32) V!8465 V!8465 (_ BitVec 32) Int) ListLongMap!3865)

(assert (=> b!259521 (= lt!130809 (getCurrentListMap!1471 (_keys!6964 thiss!1504) (_values!4769 thiss!1504) (mask!11105 thiss!1504) (extraKeys!4523 thiss!1504) (zeroValue!4627 thiss!1504) (minValue!4627 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4786 thiss!1504)))))

(declare-fun mapNonEmpty!11267 () Bool)

(declare-fun mapRes!11267 () Bool)

(declare-fun tp!23572 () Bool)

(declare-fun e!168205 () Bool)

(assert (=> mapNonEmpty!11267 (= mapRes!11267 (and tp!23572 e!168205))))

(declare-fun mapKey!11267 () (_ BitVec 32))

(declare-fun mapRest!11267 () (Array (_ BitVec 32) ValueCell!2963))

(declare-fun mapValue!11267 () ValueCell!2963)

(assert (=> mapNonEmpty!11267 (= (arr!5953 (_values!4769 thiss!1504)) (store mapRest!11267 mapKey!11267 mapValue!11267))))

(declare-fun b!259522 () Bool)

(declare-fun e!168198 () Unit!8066)

(declare-fun Unit!8068 () Unit!8066)

(assert (=> b!259522 (= e!168198 Unit!8068)))

(declare-fun b!259523 () Bool)

(declare-fun call!24715 () Bool)

(assert (=> b!259523 (= e!168209 (not call!24715))))

(declare-fun b!259524 () Bool)

(declare-fun lt!130818 () Unit!8066)

(assert (=> b!259524 (= e!168197 lt!130818)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!440 (array!12578 array!12576 (_ BitVec 32) (_ BitVec 32) V!8465 V!8465 (_ BitVec 64) Int) Unit!8066)

(assert (=> b!259524 (= lt!130818 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!440 (_keys!6964 thiss!1504) (_values!4769 thiss!1504) (mask!11105 thiss!1504) (extraKeys!4523 thiss!1504) (zeroValue!4627 thiss!1504) (minValue!4627 thiss!1504) key!932 (defaultEntry!4786 thiss!1504)))))

(declare-fun c!44049 () Bool)

(assert (=> b!259524 (= c!44049 (is-MissingZero!1189 lt!130810))))

(declare-fun e!168207 () Bool)

(assert (=> b!259524 e!168207))

(declare-fun bm!24711 () Bool)

(declare-fun arrayContainsKey!0 (array!12578 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24711 (= call!24715 (arrayContainsKey!0 (_keys!6964 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!259525 () Bool)

(declare-fun res!126879 () Bool)

(assert (=> b!259525 (=> (not res!126879) (not e!168202))))

(assert (=> b!259525 (= res!126879 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!11267 () Bool)

(assert (=> mapIsEmpty!11267 mapRes!11267))

(declare-fun res!126881 () Bool)

(assert (=> start!24876 (=> (not res!126881) (not e!168202))))

(declare-fun valid!1486 (LongMapFixedSize!3826) Bool)

(assert (=> start!24876 (= res!126881 (valid!1486 thiss!1504))))

(assert (=> start!24876 e!168202))

(assert (=> start!24876 e!168206))

(assert (=> start!24876 true))

(assert (=> start!24876 tp_is_empty!6613))

(declare-fun b!259526 () Bool)

(assert (=> b!259526 (= e!168203 (not e!168196))))

(declare-fun res!126882 () Bool)

(assert (=> b!259526 (=> res!126882 e!168196)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!259526 (= res!126882 (not (validMask!0 (mask!11105 thiss!1504))))))

(declare-fun lt!130812 () array!12578)

(declare-fun arrayCountValidKeys!0 (array!12578 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!259526 (= (arrayCountValidKeys!0 lt!130812 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!130813 () Unit!8066)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12578 (_ BitVec 32)) Unit!8066)

(assert (=> b!259526 (= lt!130813 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!130812 index!297))))

(assert (=> b!259526 (arrayContainsKey!0 lt!130812 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!130820 () Unit!8066)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12578 (_ BitVec 64) (_ BitVec 32)) Unit!8066)

(assert (=> b!259526 (= lt!130820 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!130812 key!932 index!297))))

(declare-fun v!346 () V!8465)

(declare-fun +!691 (ListLongMap!3865 tuple2!4938) ListLongMap!3865)

(assert (=> b!259526 (= (+!691 lt!130809 (tuple2!4939 key!932 v!346)) (getCurrentListMap!1471 lt!130812 (array!12577 (store (arr!5953 (_values!4769 thiss!1504)) index!297 (ValueCellFull!2963 v!346)) (size!6302 (_values!4769 thiss!1504))) (mask!11105 thiss!1504) (extraKeys!4523 thiss!1504) (zeroValue!4627 thiss!1504) (minValue!4627 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4786 thiss!1504)))))

(declare-fun lt!130811 () Unit!8066)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!106 (array!12578 array!12576 (_ BitVec 32) (_ BitVec 32) V!8465 V!8465 (_ BitVec 32) (_ BitVec 64) V!8465 Int) Unit!8066)

(assert (=> b!259526 (= lt!130811 (lemmaAddValidKeyToArrayThenAddPairToListMap!106 (_keys!6964 thiss!1504) (_values!4769 thiss!1504) (mask!11105 thiss!1504) (extraKeys!4523 thiss!1504) (zeroValue!4627 thiss!1504) (minValue!4627 thiss!1504) index!297 key!932 v!346 (defaultEntry!4786 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12578 (_ BitVec 32)) Bool)

(assert (=> b!259526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!130812 (mask!11105 thiss!1504))))

(declare-fun lt!130815 () Unit!8066)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12578 (_ BitVec 32) (_ BitVec 32)) Unit!8066)

(assert (=> b!259526 (= lt!130815 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6964 thiss!1504) index!297 (mask!11105 thiss!1504)))))

(assert (=> b!259526 (= (arrayCountValidKeys!0 lt!130812 #b00000000000000000000000000000000 (size!6303 (_keys!6964 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6964 thiss!1504) #b00000000000000000000000000000000 (size!6303 (_keys!6964 thiss!1504)))))))

(declare-fun lt!130807 () Unit!8066)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12578 (_ BitVec 32) (_ BitVec 64)) Unit!8066)

(assert (=> b!259526 (= lt!130807 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6964 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3841 0))(
  ( (Nil!3838) (Cons!3837 (h!4501 (_ BitVec 64)) (t!8916 List!3841)) )
))
(declare-fun arrayNoDuplicates!0 (array!12578 (_ BitVec 32) List!3841) Bool)

(assert (=> b!259526 (arrayNoDuplicates!0 lt!130812 #b00000000000000000000000000000000 Nil!3838)))

(assert (=> b!259526 (= lt!130812 (array!12579 (store (arr!5954 (_keys!6964 thiss!1504)) index!297 key!932) (size!6303 (_keys!6964 thiss!1504))))))

(declare-fun lt!130817 () Unit!8066)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12578 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3841) Unit!8066)

(assert (=> b!259526 (= lt!130817 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6964 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3838))))

(declare-fun lt!130814 () Unit!8066)

(assert (=> b!259526 (= lt!130814 e!168198)))

(declare-fun c!44048 () Bool)

(assert (=> b!259526 (= c!44048 (arrayContainsKey!0 (_keys!6964 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!259527 () Bool)

(declare-fun Unit!8069 () Unit!8066)

(assert (=> b!259527 (= e!168198 Unit!8069)))

(declare-fun lt!130816 () Unit!8066)

(declare-fun lemmaArrayContainsKeyThenInListMap!248 (array!12578 array!12576 (_ BitVec 32) (_ BitVec 32) V!8465 V!8465 (_ BitVec 64) (_ BitVec 32) Int) Unit!8066)

(assert (=> b!259527 (= lt!130816 (lemmaArrayContainsKeyThenInListMap!248 (_keys!6964 thiss!1504) (_values!4769 thiss!1504) (mask!11105 thiss!1504) (extraKeys!4523 thiss!1504) (zeroValue!4627 thiss!1504) (minValue!4627 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4786 thiss!1504)))))

(assert (=> b!259527 false))

(declare-fun b!259528 () Bool)

(assert (=> b!259528 (= e!168205 tp_is_empty!6613)))

(declare-fun b!259529 () Bool)

(declare-fun e!168195 () Bool)

(assert (=> b!259529 (= e!168204 (and e!168195 mapRes!11267))))

(declare-fun condMapEmpty!11267 () Bool)

(declare-fun mapDefault!11267 () ValueCell!2963)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16738 () Bool)

(assert start!16738)

(declare-fun b!167876 () Bool)

(declare-fun b_free!4031 () Bool)

(declare-fun b_next!4031 () Bool)

(assert (=> b!167876 (= b_free!4031 (not b_next!4031))))

(declare-fun tp!14694 () Bool)

(declare-fun b_and!10463 () Bool)

(assert (=> b!167876 (= tp!14694 b_and!10463)))

(declare-fun b!167872 () Bool)

(declare-datatypes ((SeekEntryResult!499 0))(
  ( (MissingZero!499 (index!4164 (_ BitVec 32))) (Found!499 (index!4165 (_ BitVec 32))) (Intermediate!499 (undefined!1311 Bool) (index!4166 (_ BitVec 32)) (x!18575 (_ BitVec 32))) (Undefined!499) (MissingVacant!499 (index!4167 (_ BitVec 32))) )
))
(declare-fun lt!83968 () SeekEntryResult!499)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4757 0))(
  ( (V!4758 (val!1961 Int)) )
))
(declare-datatypes ((ValueCell!1573 0))(
  ( (ValueCellFull!1573 (v!3822 V!4757)) (EmptyCell!1573) )
))
(declare-datatypes ((array!6762 0))(
  ( (array!6763 (arr!3216 (Array (_ BitVec 32) (_ BitVec 64))) (size!3504 (_ BitVec 32))) )
))
(declare-datatypes ((array!6764 0))(
  ( (array!6765 (arr!3217 (Array (_ BitVec 32) ValueCell!1573)) (size!3505 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2054 0))(
  ( (LongMapFixedSize!2055 (defaultEntry!3469 Int) (mask!8224 (_ BitVec 32)) (extraKeys!3210 (_ BitVec 32)) (zeroValue!3312 V!4757) (minValue!3312 V!4757) (_size!1076 (_ BitVec 32)) (_keys!5294 array!6762) (_values!3452 array!6764) (_vacant!1076 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2054)

(declare-fun e!110317 () Bool)

(assert (=> b!167872 (= e!110317 (= (select (arr!3216 (_keys!5294 thiss!1248)) (index!4165 lt!83968)) key!828))))

(declare-fun b!167873 () Bool)

(declare-fun e!110311 () Bool)

(declare-fun tp_is_empty!3833 () Bool)

(assert (=> b!167873 (= e!110311 tp_is_empty!3833)))

(declare-fun mapNonEmpty!6468 () Bool)

(declare-fun mapRes!6468 () Bool)

(declare-fun tp!14693 () Bool)

(declare-fun e!110314 () Bool)

(assert (=> mapNonEmpty!6468 (= mapRes!6468 (and tp!14693 e!110314))))

(declare-fun mapValue!6468 () ValueCell!1573)

(declare-fun mapRest!6468 () (Array (_ BitVec 32) ValueCell!1573))

(declare-fun mapKey!6468 () (_ BitVec 32))

(assert (=> mapNonEmpty!6468 (= (arr!3217 (_values!3452 thiss!1248)) (store mapRest!6468 mapKey!6468 mapValue!6468))))

(declare-fun res!79892 () Bool)

(declare-fun e!110319 () Bool)

(assert (=> start!16738 (=> (not res!79892) (not e!110319))))

(declare-fun valid!885 (LongMapFixedSize!2054) Bool)

(assert (=> start!16738 (= res!79892 (valid!885 thiss!1248))))

(assert (=> start!16738 e!110319))

(declare-fun e!110316 () Bool)

(assert (=> start!16738 e!110316))

(assert (=> start!16738 true))

(assert (=> start!16738 tp_is_empty!3833))

(declare-fun b!167874 () Bool)

(declare-fun res!79895 () Bool)

(assert (=> b!167874 (=> (not res!79895) (not e!110319))))

(assert (=> b!167874 (= res!79895 (not (= key!828 (bvneg key!828))))))

(declare-fun b!167875 () Bool)

(declare-fun res!79891 () Bool)

(declare-fun e!110312 () Bool)

(assert (=> b!167875 (=> res!79891 e!110312)))

(assert (=> b!167875 (= res!79891 (or (not (= (size!3505 (_values!3452 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8224 thiss!1248)))) (not (= (size!3504 (_keys!5294 thiss!1248)) (size!3505 (_values!3452 thiss!1248)))) (bvslt (mask!8224 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3210 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3210 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun e!110320 () Bool)

(declare-fun array_inv!2059 (array!6762) Bool)

(declare-fun array_inv!2060 (array!6764) Bool)

(assert (=> b!167876 (= e!110316 (and tp!14694 tp_is_empty!3833 (array_inv!2059 (_keys!5294 thiss!1248)) (array_inv!2060 (_values!3452 thiss!1248)) e!110320))))

(declare-fun b!167877 () Bool)

(declare-fun e!110313 () Bool)

(assert (=> b!167877 (= e!110319 e!110313)))

(declare-fun res!79896 () Bool)

(assert (=> b!167877 (=> (not res!79896) (not e!110313))))

(assert (=> b!167877 (= res!79896 (and (not (is-Undefined!499 lt!83968)) (not (is-MissingVacant!499 lt!83968)) (not (is-MissingZero!499 lt!83968)) (is-Found!499 lt!83968)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6762 (_ BitVec 32)) SeekEntryResult!499)

(assert (=> b!167877 (= lt!83968 (seekEntryOrOpen!0 key!828 (_keys!5294 thiss!1248) (mask!8224 thiss!1248)))))

(declare-fun b!167878 () Bool)

(declare-datatypes ((Unit!5148 0))(
  ( (Unit!5149) )
))
(declare-fun e!110318 () Unit!5148)

(declare-fun lt!83970 () Unit!5148)

(assert (=> b!167878 (= e!110318 lt!83970)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!114 (array!6762 array!6764 (_ BitVec 32) (_ BitVec 32) V!4757 V!4757 (_ BitVec 64) Int) Unit!5148)

(assert (=> b!167878 (= lt!83970 (lemmaInListMapThenSeekEntryOrOpenFindsIt!114 (_keys!5294 thiss!1248) (_values!3452 thiss!1248) (mask!8224 thiss!1248) (extraKeys!3210 thiss!1248) (zeroValue!3312 thiss!1248) (minValue!3312 thiss!1248) key!828 (defaultEntry!3469 thiss!1248)))))

(declare-fun res!79893 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!167878 (= res!79893 (inRange!0 (index!4165 lt!83968) (mask!8224 thiss!1248)))))

(assert (=> b!167878 (=> (not res!79893) (not e!110317))))

(assert (=> b!167878 e!110317))

(declare-fun b!167879 () Bool)

(assert (=> b!167879 (= e!110312 true)))

(declare-fun lt!83967 () Bool)

(declare-datatypes ((List!2162 0))(
  ( (Nil!2159) (Cons!2158 (h!2775 (_ BitVec 64)) (t!6972 List!2162)) )
))
(declare-fun arrayNoDuplicates!0 (array!6762 (_ BitVec 32) List!2162) Bool)

(assert (=> b!167879 (= lt!83967 (arrayNoDuplicates!0 (_keys!5294 thiss!1248) #b00000000000000000000000000000000 Nil!2159))))

(declare-fun mapIsEmpty!6468 () Bool)

(assert (=> mapIsEmpty!6468 mapRes!6468))

(declare-fun b!167880 () Bool)

(declare-fun Unit!5150 () Unit!5148)

(assert (=> b!167880 (= e!110318 Unit!5150)))

(declare-fun lt!83966 () Unit!5148)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!112 (array!6762 array!6764 (_ BitVec 32) (_ BitVec 32) V!4757 V!4757 (_ BitVec 64) Int) Unit!5148)

(assert (=> b!167880 (= lt!83966 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!112 (_keys!5294 thiss!1248) (_values!3452 thiss!1248) (mask!8224 thiss!1248) (extraKeys!3210 thiss!1248) (zeroValue!3312 thiss!1248) (minValue!3312 thiss!1248) key!828 (defaultEntry!3469 thiss!1248)))))

(assert (=> b!167880 false))

(declare-fun b!167881 () Bool)

(assert (=> b!167881 (= e!110313 (not e!110312))))

(declare-fun res!79894 () Bool)

(assert (=> b!167881 (=> res!79894 e!110312)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!167881 (= res!79894 (not (validMask!0 (mask!8224 thiss!1248))))))

(declare-datatypes ((tuple2!3150 0))(
  ( (tuple2!3151 (_1!1585 (_ BitVec 64)) (_2!1585 V!4757)) )
))
(declare-datatypes ((List!2163 0))(
  ( (Nil!2160) (Cons!2159 (h!2776 tuple2!3150) (t!6973 List!2163)) )
))
(declare-datatypes ((ListLongMap!2119 0))(
  ( (ListLongMap!2120 (toList!1075 List!2163)) )
))
(declare-fun lt!83971 () ListLongMap!2119)

(declare-fun v!309 () V!4757)

(declare-fun +!217 (ListLongMap!2119 tuple2!3150) ListLongMap!2119)

(declare-fun getCurrentListMap!728 (array!6762 array!6764 (_ BitVec 32) (_ BitVec 32) V!4757 V!4757 (_ BitVec 32) Int) ListLongMap!2119)

(assert (=> b!167881 (= (+!217 lt!83971 (tuple2!3151 key!828 v!309)) (getCurrentListMap!728 (_keys!5294 thiss!1248) (array!6765 (store (arr!3217 (_values!3452 thiss!1248)) (index!4165 lt!83968) (ValueCellFull!1573 v!309)) (size!3505 (_values!3452 thiss!1248))) (mask!8224 thiss!1248) (extraKeys!3210 thiss!1248) (zeroValue!3312 thiss!1248) (minValue!3312 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3469 thiss!1248)))))

(declare-fun lt!83969 () Unit!5148)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!77 (array!6762 array!6764 (_ BitVec 32) (_ BitVec 32) V!4757 V!4757 (_ BitVec 32) (_ BitVec 64) V!4757 Int) Unit!5148)

(assert (=> b!167881 (= lt!83969 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!77 (_keys!5294 thiss!1248) (_values!3452 thiss!1248) (mask!8224 thiss!1248) (extraKeys!3210 thiss!1248) (zeroValue!3312 thiss!1248) (minValue!3312 thiss!1248) (index!4165 lt!83968) key!828 v!309 (defaultEntry!3469 thiss!1248)))))

(declare-fun lt!83972 () Unit!5148)

(assert (=> b!167881 (= lt!83972 e!110318)))

(declare-fun c!30309 () Bool)

(declare-fun contains!1111 (ListLongMap!2119 (_ BitVec 64)) Bool)

(assert (=> b!167881 (= c!30309 (contains!1111 lt!83971 key!828))))

(assert (=> b!167881 (= lt!83971 (getCurrentListMap!728 (_keys!5294 thiss!1248) (_values!3452 thiss!1248) (mask!8224 thiss!1248) (extraKeys!3210 thiss!1248) (zeroValue!3312 thiss!1248) (minValue!3312 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3469 thiss!1248)))))

(declare-fun b!167882 () Bool)

(assert (=> b!167882 (= e!110314 tp_is_empty!3833)))

(declare-fun b!167883 () Bool)

(assert (=> b!167883 (= e!110320 (and e!110311 mapRes!6468))))

(declare-fun condMapEmpty!6468 () Bool)

(declare-fun mapDefault!6468 () ValueCell!1573)


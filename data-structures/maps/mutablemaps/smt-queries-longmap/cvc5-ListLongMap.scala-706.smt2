; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16752 () Bool)

(assert start!16752)

(declare-fun b!168146 () Bool)

(declare-fun b_free!4045 () Bool)

(declare-fun b_next!4045 () Bool)

(assert (=> b!168146 (= b_free!4045 (not b_next!4045))))

(declare-fun tp!14736 () Bool)

(declare-fun b_and!10477 () Bool)

(assert (=> b!168146 (= tp!14736 b_and!10477)))

(declare-fun b!168145 () Bool)

(declare-fun res!80042 () Bool)

(declare-fun e!110528 () Bool)

(assert (=> b!168145 (=> res!80042 e!110528)))

(declare-datatypes ((V!4777 0))(
  ( (V!4778 (val!1968 Int)) )
))
(declare-datatypes ((ValueCell!1580 0))(
  ( (ValueCellFull!1580 (v!3829 V!4777)) (EmptyCell!1580) )
))
(declare-datatypes ((array!6790 0))(
  ( (array!6791 (arr!3230 (Array (_ BitVec 32) (_ BitVec 64))) (size!3518 (_ BitVec 32))) )
))
(declare-datatypes ((array!6792 0))(
  ( (array!6793 (arr!3231 (Array (_ BitVec 32) ValueCell!1580)) (size!3519 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2068 0))(
  ( (LongMapFixedSize!2069 (defaultEntry!3476 Int) (mask!8237 (_ BitVec 32)) (extraKeys!3217 (_ BitVec 32)) (zeroValue!3319 V!4777) (minValue!3319 V!4777) (_size!1083 (_ BitVec 32)) (_keys!5301 array!6790) (_values!3459 array!6792) (_vacant!1083 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2068)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6790 (_ BitVec 32)) Bool)

(assert (=> b!168145 (= res!80042 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5301 thiss!1248) (mask!8237 thiss!1248))))))

(declare-fun e!110527 () Bool)

(declare-fun tp_is_empty!3847 () Bool)

(declare-fun e!110529 () Bool)

(declare-fun array_inv!2065 (array!6790) Bool)

(declare-fun array_inv!2066 (array!6792) Bool)

(assert (=> b!168146 (= e!110529 (and tp!14736 tp_is_empty!3847 (array_inv!2065 (_keys!5301 thiss!1248)) (array_inv!2066 (_values!3459 thiss!1248)) e!110527))))

(declare-fun b!168147 () Bool)

(assert (=> b!168147 (= e!110528 true)))

(declare-fun lt!84119 () Bool)

(declare-datatypes ((List!2170 0))(
  ( (Nil!2167) (Cons!2166 (h!2783 (_ BitVec 64)) (t!6980 List!2170)) )
))
(declare-fun arrayNoDuplicates!0 (array!6790 (_ BitVec 32) List!2170) Bool)

(assert (=> b!168147 (= lt!84119 (arrayNoDuplicates!0 (_keys!5301 thiss!1248) #b00000000000000000000000000000000 Nil!2167))))

(declare-fun b!168148 () Bool)

(declare-fun e!110523 () Bool)

(assert (=> b!168148 (= e!110523 tp_is_empty!3847)))

(declare-fun b!168149 () Bool)

(declare-datatypes ((Unit!5163 0))(
  ( (Unit!5164) )
))
(declare-fun e!110525 () Unit!5163)

(declare-fun lt!84117 () Unit!5163)

(assert (=> b!168149 (= e!110525 lt!84117)))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!118 (array!6790 array!6792 (_ BitVec 32) (_ BitVec 32) V!4777 V!4777 (_ BitVec 64) Int) Unit!5163)

(assert (=> b!168149 (= lt!84117 (lemmaInListMapThenSeekEntryOrOpenFindsIt!118 (_keys!5301 thiss!1248) (_values!3459 thiss!1248) (mask!8237 thiss!1248) (extraKeys!3217 thiss!1248) (zeroValue!3319 thiss!1248) (minValue!3319 thiss!1248) key!828 (defaultEntry!3476 thiss!1248)))))

(declare-fun res!80040 () Bool)

(declare-datatypes ((SeekEntryResult!504 0))(
  ( (MissingZero!504 (index!4184 (_ BitVec 32))) (Found!504 (index!4185 (_ BitVec 32))) (Intermediate!504 (undefined!1316 Bool) (index!4186 (_ BitVec 32)) (x!18604 (_ BitVec 32))) (Undefined!504) (MissingVacant!504 (index!4187 (_ BitVec 32))) )
))
(declare-fun lt!84113 () SeekEntryResult!504)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!168149 (= res!80040 (inRange!0 (index!4185 lt!84113) (mask!8237 thiss!1248)))))

(declare-fun e!110526 () Bool)

(assert (=> b!168149 (=> (not res!80040) (not e!110526))))

(assert (=> b!168149 e!110526))

(declare-fun mapNonEmpty!6489 () Bool)

(declare-fun mapRes!6489 () Bool)

(declare-fun tp!14735 () Bool)

(assert (=> mapNonEmpty!6489 (= mapRes!6489 (and tp!14735 e!110523))))

(declare-fun mapValue!6489 () ValueCell!1580)

(declare-fun mapRest!6489 () (Array (_ BitVec 32) ValueCell!1580))

(declare-fun mapKey!6489 () (_ BitVec 32))

(assert (=> mapNonEmpty!6489 (= (arr!3231 (_values!3459 thiss!1248)) (store mapRest!6489 mapKey!6489 mapValue!6489))))

(declare-fun b!168150 () Bool)

(declare-fun e!110521 () Bool)

(assert (=> b!168150 (= e!110521 tp_is_empty!3847)))

(declare-fun b!168151 () Bool)

(declare-fun e!110530 () Bool)

(assert (=> b!168151 (= e!110530 (not e!110528))))

(declare-fun res!80039 () Bool)

(assert (=> b!168151 (=> res!80039 e!110528)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!168151 (= res!80039 (not (validMask!0 (mask!8237 thiss!1248))))))

(declare-datatypes ((tuple2!3156 0))(
  ( (tuple2!3157 (_1!1588 (_ BitVec 64)) (_2!1588 V!4777)) )
))
(declare-datatypes ((List!2171 0))(
  ( (Nil!2168) (Cons!2167 (h!2784 tuple2!3156) (t!6981 List!2171)) )
))
(declare-datatypes ((ListLongMap!2125 0))(
  ( (ListLongMap!2126 (toList!1078 List!2171)) )
))
(declare-fun lt!84114 () ListLongMap!2125)

(declare-fun v!309 () V!4777)

(declare-fun +!220 (ListLongMap!2125 tuple2!3156) ListLongMap!2125)

(declare-fun getCurrentListMap!731 (array!6790 array!6792 (_ BitVec 32) (_ BitVec 32) V!4777 V!4777 (_ BitVec 32) Int) ListLongMap!2125)

(assert (=> b!168151 (= (+!220 lt!84114 (tuple2!3157 key!828 v!309)) (getCurrentListMap!731 (_keys!5301 thiss!1248) (array!6793 (store (arr!3231 (_values!3459 thiss!1248)) (index!4185 lt!84113) (ValueCellFull!1580 v!309)) (size!3519 (_values!3459 thiss!1248))) (mask!8237 thiss!1248) (extraKeys!3217 thiss!1248) (zeroValue!3319 thiss!1248) (minValue!3319 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3476 thiss!1248)))))

(declare-fun lt!84116 () Unit!5163)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!80 (array!6790 array!6792 (_ BitVec 32) (_ BitVec 32) V!4777 V!4777 (_ BitVec 32) (_ BitVec 64) V!4777 Int) Unit!5163)

(assert (=> b!168151 (= lt!84116 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!80 (_keys!5301 thiss!1248) (_values!3459 thiss!1248) (mask!8237 thiss!1248) (extraKeys!3217 thiss!1248) (zeroValue!3319 thiss!1248) (minValue!3319 thiss!1248) (index!4185 lt!84113) key!828 v!309 (defaultEntry!3476 thiss!1248)))))

(declare-fun lt!84115 () Unit!5163)

(assert (=> b!168151 (= lt!84115 e!110525)))

(declare-fun c!30330 () Bool)

(declare-fun contains!1114 (ListLongMap!2125 (_ BitVec 64)) Bool)

(assert (=> b!168151 (= c!30330 (contains!1114 lt!84114 key!828))))

(assert (=> b!168151 (= lt!84114 (getCurrentListMap!731 (_keys!5301 thiss!1248) (_values!3459 thiss!1248) (mask!8237 thiss!1248) (extraKeys!3217 thiss!1248) (zeroValue!3319 thiss!1248) (minValue!3319 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3476 thiss!1248)))))

(declare-fun b!168152 () Bool)

(declare-fun Unit!5165 () Unit!5163)

(assert (=> b!168152 (= e!110525 Unit!5165)))

(declare-fun lt!84118 () Unit!5163)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!117 (array!6790 array!6792 (_ BitVec 32) (_ BitVec 32) V!4777 V!4777 (_ BitVec 64) Int) Unit!5163)

(assert (=> b!168152 (= lt!84118 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!117 (_keys!5301 thiss!1248) (_values!3459 thiss!1248) (mask!8237 thiss!1248) (extraKeys!3217 thiss!1248) (zeroValue!3319 thiss!1248) (minValue!3319 thiss!1248) key!828 (defaultEntry!3476 thiss!1248)))))

(assert (=> b!168152 false))

(declare-fun b!168153 () Bool)

(declare-fun res!80037 () Bool)

(declare-fun e!110524 () Bool)

(assert (=> b!168153 (=> (not res!80037) (not e!110524))))

(assert (=> b!168153 (= res!80037 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!6489 () Bool)

(assert (=> mapIsEmpty!6489 mapRes!6489))

(declare-fun b!168154 () Bool)

(assert (=> b!168154 (= e!110524 e!110530)))

(declare-fun res!80041 () Bool)

(assert (=> b!168154 (=> (not res!80041) (not e!110530))))

(assert (=> b!168154 (= res!80041 (and (not (is-Undefined!504 lt!84113)) (not (is-MissingVacant!504 lt!84113)) (not (is-MissingZero!504 lt!84113)) (is-Found!504 lt!84113)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6790 (_ BitVec 32)) SeekEntryResult!504)

(assert (=> b!168154 (= lt!84113 (seekEntryOrOpen!0 key!828 (_keys!5301 thiss!1248) (mask!8237 thiss!1248)))))

(declare-fun res!80043 () Bool)

(assert (=> start!16752 (=> (not res!80043) (not e!110524))))

(declare-fun valid!888 (LongMapFixedSize!2068) Bool)

(assert (=> start!16752 (= res!80043 (valid!888 thiss!1248))))

(assert (=> start!16752 e!110524))

(assert (=> start!16752 e!110529))

(assert (=> start!16752 true))

(assert (=> start!16752 tp_is_empty!3847))

(declare-fun b!168155 () Bool)

(assert (=> b!168155 (= e!110527 (and e!110521 mapRes!6489))))

(declare-fun condMapEmpty!6489 () Bool)

(declare-fun mapDefault!6489 () ValueCell!1580)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22214 () Bool)

(assert start!22214)

(declare-fun b!232709 () Bool)

(declare-fun b_free!6269 () Bool)

(declare-fun b_next!6269 () Bool)

(assert (=> b!232709 (= b_free!6269 (not b_next!6269))))

(declare-fun tp!21949 () Bool)

(declare-fun b_and!13185 () Bool)

(assert (=> b!232709 (= tp!21949 b_and!13185)))

(declare-fun b!232704 () Bool)

(declare-fun e!151154 () Bool)

(declare-fun e!151153 () Bool)

(assert (=> b!232704 (= e!151154 e!151153)))

(declare-fun res!114263 () Bool)

(declare-fun call!21640 () Bool)

(assert (=> b!232704 (= res!114263 call!21640)))

(assert (=> b!232704 (=> (not res!114263) (not e!151153))))

(declare-fun bm!21636 () Bool)

(declare-fun call!21639 () Bool)

(declare-datatypes ((V!7821 0))(
  ( (V!7822 (val!3110 Int)) )
))
(declare-datatypes ((ValueCell!2722 0))(
  ( (ValueCellFull!2722 (v!5126 V!7821)) (EmptyCell!2722) )
))
(declare-datatypes ((array!11504 0))(
  ( (array!11505 (arr!5471 (Array (_ BitVec 32) ValueCell!2722)) (size!5804 (_ BitVec 32))) )
))
(declare-datatypes ((array!11506 0))(
  ( (array!11507 (arr!5472 (Array (_ BitVec 32) (_ BitVec 64))) (size!5805 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3344 0))(
  ( (LongMapFixedSize!3345 (defaultEntry!4331 Int) (mask!10247 (_ BitVec 32)) (extraKeys!4068 (_ BitVec 32)) (zeroValue!4172 V!7821) (minValue!4172 V!7821) (_size!1721 (_ BitVec 32)) (_keys!6385 array!11506) (_values!4314 array!11504) (_vacant!1721 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3344)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11506 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21636 (= call!21639 (arrayContainsKey!0 (_keys!6385 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!232705 () Bool)

(declare-datatypes ((Unit!7190 0))(
  ( (Unit!7191) )
))
(declare-fun e!151142 () Unit!7190)

(declare-fun Unit!7192 () Unit!7190)

(assert (=> b!232705 (= e!151142 Unit!7192)))

(declare-fun lt!117695 () Unit!7190)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!313 (array!11506 array!11504 (_ BitVec 32) (_ BitVec 32) V!7821 V!7821 (_ BitVec 64) Int) Unit!7190)

(assert (=> b!232705 (= lt!117695 (lemmaInListMapThenSeekEntryOrOpenFindsIt!313 (_keys!6385 thiss!1504) (_values!4314 thiss!1504) (mask!10247 thiss!1504) (extraKeys!4068 thiss!1504) (zeroValue!4172 thiss!1504) (minValue!4172 thiss!1504) key!932 (defaultEntry!4331 thiss!1504)))))

(assert (=> b!232705 false))

(declare-fun b!232706 () Bool)

(declare-fun res!114268 () Bool)

(declare-fun e!151148 () Bool)

(assert (=> b!232706 (=> (not res!114268) (not e!151148))))

(assert (=> b!232706 (= res!114268 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!232707 () Bool)

(declare-fun e!151152 () Bool)

(declare-fun e!151146 () Bool)

(assert (=> b!232707 (= e!151152 (not e!151146))))

(declare-fun res!114265 () Bool)

(assert (=> b!232707 (=> res!114265 e!151146)))

(declare-fun lt!117709 () LongMapFixedSize!3344)

(declare-fun valid!1314 (LongMapFixedSize!3344) Bool)

(assert (=> b!232707 (= res!114265 (not (valid!1314 lt!117709)))))

(declare-datatypes ((tuple2!4586 0))(
  ( (tuple2!4587 (_1!2303 (_ BitVec 64)) (_2!2303 V!7821)) )
))
(declare-datatypes ((List!3526 0))(
  ( (Nil!3523) (Cons!3522 (h!4170 tuple2!4586) (t!8493 List!3526)) )
))
(declare-datatypes ((ListLongMap!3513 0))(
  ( (ListLongMap!3514 (toList!1772 List!3526)) )
))
(declare-fun lt!117705 () ListLongMap!3513)

(declare-fun contains!1634 (ListLongMap!3513 (_ BitVec 64)) Bool)

(assert (=> b!232707 (contains!1634 lt!117705 key!932)))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lt!117702 () array!11506)

(declare-fun lt!117704 () array!11504)

(declare-fun lt!117706 () Unit!7190)

(declare-fun lemmaValidKeyInArrayIsInListMap!147 (array!11506 array!11504 (_ BitVec 32) (_ BitVec 32) V!7821 V!7821 (_ BitVec 32) Int) Unit!7190)

(assert (=> b!232707 (= lt!117706 (lemmaValidKeyInArrayIsInListMap!147 lt!117702 lt!117704 (mask!10247 thiss!1504) (extraKeys!4068 thiss!1504) (zeroValue!4172 thiss!1504) (minValue!4172 thiss!1504) index!297 (defaultEntry!4331 thiss!1504)))))

(assert (=> b!232707 (= lt!117709 (LongMapFixedSize!3345 (defaultEntry!4331 thiss!1504) (mask!10247 thiss!1504) (extraKeys!4068 thiss!1504) (zeroValue!4172 thiss!1504) (minValue!4172 thiss!1504) (bvadd #b00000000000000000000000000000001 (_size!1721 thiss!1504)) lt!117702 lt!117704 (_vacant!1721 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11506 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!232707 (= (arrayCountValidKeys!0 lt!117702 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!117703 () Unit!7190)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11506 (_ BitVec 32)) Unit!7190)

(assert (=> b!232707 (= lt!117703 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!117702 index!297))))

(assert (=> b!232707 (arrayContainsKey!0 lt!117702 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!117708 () Unit!7190)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11506 (_ BitVec 64) (_ BitVec 32)) Unit!7190)

(assert (=> b!232707 (= lt!117708 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!117702 key!932 index!297))))

(declare-fun lt!117711 () ListLongMap!3513)

(assert (=> b!232707 (= lt!117711 lt!117705)))

(declare-fun getCurrentListMap!1295 (array!11506 array!11504 (_ BitVec 32) (_ BitVec 32) V!7821 V!7821 (_ BitVec 32) Int) ListLongMap!3513)

(assert (=> b!232707 (= lt!117705 (getCurrentListMap!1295 lt!117702 lt!117704 (mask!10247 thiss!1504) (extraKeys!4068 thiss!1504) (zeroValue!4172 thiss!1504) (minValue!4172 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4331 thiss!1504)))))

(declare-fun lt!117700 () ListLongMap!3513)

(declare-fun v!346 () V!7821)

(declare-fun +!623 (ListLongMap!3513 tuple2!4586) ListLongMap!3513)

(assert (=> b!232707 (= lt!117711 (+!623 lt!117700 (tuple2!4587 key!932 v!346)))))

(assert (=> b!232707 (= lt!117704 (array!11505 (store (arr!5471 (_values!4314 thiss!1504)) index!297 (ValueCellFull!2722 v!346)) (size!5804 (_values!4314 thiss!1504))))))

(declare-fun lt!117694 () Unit!7190)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!82 (array!11506 array!11504 (_ BitVec 32) (_ BitVec 32) V!7821 V!7821 (_ BitVec 32) (_ BitVec 64) V!7821 Int) Unit!7190)

(assert (=> b!232707 (= lt!117694 (lemmaAddValidKeyToArrayThenAddPairToListMap!82 (_keys!6385 thiss!1504) (_values!4314 thiss!1504) (mask!10247 thiss!1504) (extraKeys!4068 thiss!1504) (zeroValue!4172 thiss!1504) (minValue!4172 thiss!1504) index!297 key!932 v!346 (defaultEntry!4331 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11506 (_ BitVec 32)) Bool)

(assert (=> b!232707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!117702 (mask!10247 thiss!1504))))

(declare-fun lt!117698 () Unit!7190)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11506 (_ BitVec 32) (_ BitVec 32)) Unit!7190)

(assert (=> b!232707 (= lt!117698 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6385 thiss!1504) index!297 (mask!10247 thiss!1504)))))

(assert (=> b!232707 (= (arrayCountValidKeys!0 lt!117702 #b00000000000000000000000000000000 (size!5805 (_keys!6385 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6385 thiss!1504) #b00000000000000000000000000000000 (size!5805 (_keys!6385 thiss!1504)))))))

(declare-fun lt!117696 () Unit!7190)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11506 (_ BitVec 32) (_ BitVec 64)) Unit!7190)

(assert (=> b!232707 (= lt!117696 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6385 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3527 0))(
  ( (Nil!3524) (Cons!3523 (h!4171 (_ BitVec 64)) (t!8494 List!3527)) )
))
(declare-fun arrayNoDuplicates!0 (array!11506 (_ BitVec 32) List!3527) Bool)

(assert (=> b!232707 (arrayNoDuplicates!0 lt!117702 #b00000000000000000000000000000000 Nil!3524)))

(assert (=> b!232707 (= lt!117702 (array!11507 (store (arr!5472 (_keys!6385 thiss!1504)) index!297 key!932) (size!5805 (_keys!6385 thiss!1504))))))

(declare-fun lt!117701 () Unit!7190)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11506 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3527) Unit!7190)

(assert (=> b!232707 (= lt!117701 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6385 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3524))))

(declare-fun lt!117710 () Unit!7190)

(declare-fun e!151147 () Unit!7190)

(assert (=> b!232707 (= lt!117710 e!151147)))

(declare-fun c!38690 () Bool)

(assert (=> b!232707 (= c!38690 (arrayContainsKey!0 (_keys!6385 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!232708 () Bool)

(declare-fun e!151151 () Bool)

(assert (=> b!232708 (= e!151148 e!151151)))

(declare-fun res!114266 () Bool)

(assert (=> b!232708 (=> (not res!114266) (not e!151151))))

(declare-datatypes ((SeekEntryResult!979 0))(
  ( (MissingZero!979 (index!6086 (_ BitVec 32))) (Found!979 (index!6087 (_ BitVec 32))) (Intermediate!979 (undefined!1791 Bool) (index!6088 (_ BitVec 32)) (x!23583 (_ BitVec 32))) (Undefined!979) (MissingVacant!979 (index!6089 (_ BitVec 32))) )
))
(declare-fun lt!117692 () SeekEntryResult!979)

(assert (=> b!232708 (= res!114266 (or (= lt!117692 (MissingZero!979 index!297)) (= lt!117692 (MissingVacant!979 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11506 (_ BitVec 32)) SeekEntryResult!979)

(assert (=> b!232708 (= lt!117692 (seekEntryOrOpen!0 key!932 (_keys!6385 thiss!1504) (mask!10247 thiss!1504)))))

(declare-fun e!151150 () Bool)

(declare-fun e!151144 () Bool)

(declare-fun tp_is_empty!6131 () Bool)

(declare-fun array_inv!3597 (array!11506) Bool)

(declare-fun array_inv!3598 (array!11504) Bool)

(assert (=> b!232709 (= e!151144 (and tp!21949 tp_is_empty!6131 (array_inv!3597 (_keys!6385 thiss!1504)) (array_inv!3598 (_values!4314 thiss!1504)) e!151150))))

(declare-fun c!38691 () Bool)

(declare-fun bm!21637 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21637 (= call!21640 (inRange!0 (ite c!38691 (index!6086 lt!117692) (index!6089 lt!117692)) (mask!10247 thiss!1504)))))

(declare-fun res!114267 () Bool)

(assert (=> start!22214 (=> (not res!114267) (not e!151148))))

(assert (=> start!22214 (= res!114267 (valid!1314 thiss!1504))))

(assert (=> start!22214 e!151148))

(assert (=> start!22214 e!151144))

(assert (=> start!22214 true))

(assert (=> start!22214 tp_is_empty!6131))

(declare-fun b!232710 () Bool)

(declare-fun res!114262 () Bool)

(declare-fun e!151149 () Bool)

(assert (=> b!232710 (=> (not res!114262) (not e!151149))))

(assert (=> b!232710 (= res!114262 call!21640)))

(declare-fun e!151156 () Bool)

(assert (=> b!232710 (= e!151156 e!151149)))

(declare-fun b!232711 () Bool)

(declare-fun e!151143 () Bool)

(declare-fun mapRes!10366 () Bool)

(assert (=> b!232711 (= e!151150 (and e!151143 mapRes!10366))))

(declare-fun condMapEmpty!10366 () Bool)

(declare-fun mapDefault!10366 () ValueCell!2722)


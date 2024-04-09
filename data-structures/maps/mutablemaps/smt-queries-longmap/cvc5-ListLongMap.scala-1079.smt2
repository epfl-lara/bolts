; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22168 () Bool)

(assert start!22168)

(declare-fun b!231331 () Bool)

(declare-fun b_free!6223 () Bool)

(declare-fun b_next!6223 () Bool)

(assert (=> b!231331 (= b_free!6223 (not b_next!6223))))

(declare-fun tp!21811 () Bool)

(declare-fun b_and!13139 () Bool)

(assert (=> b!231331 (= tp!21811 b_and!13139)))

(declare-fun b!231316 () Bool)

(declare-fun e!150173 () Bool)

(assert (=> b!231316 (= e!150173 (not true))))

(declare-datatypes ((array!11412 0))(
  ( (array!11413 (arr!5425 (Array (_ BitVec 32) (_ BitVec 64))) (size!5758 (_ BitVec 32))) )
))
(declare-fun lt!116635 () array!11412)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!11412 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!231316 (= (arrayCountValidKeys!0 lt!116635 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-datatypes ((Unit!7113 0))(
  ( (Unit!7114) )
))
(declare-fun lt!116642 () Unit!7113)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11412 (_ BitVec 32)) Unit!7113)

(assert (=> b!231316 (= lt!116642 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!116635 index!297))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11412 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!231316 (arrayContainsKey!0 lt!116635 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!116640 () Unit!7113)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11412 (_ BitVec 64) (_ BitVec 32)) Unit!7113)

(assert (=> b!231316 (= lt!116640 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!116635 key!932 index!297))))

(declare-datatypes ((V!7761 0))(
  ( (V!7762 (val!3087 Int)) )
))
(declare-datatypes ((ValueCell!2699 0))(
  ( (ValueCellFull!2699 (v!5103 V!7761)) (EmptyCell!2699) )
))
(declare-datatypes ((array!11414 0))(
  ( (array!11415 (arr!5426 (Array (_ BitVec 32) ValueCell!2699)) (size!5759 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3298 0))(
  ( (LongMapFixedSize!3299 (defaultEntry!4308 Int) (mask!10210 (_ BitVec 32)) (extraKeys!4045 (_ BitVec 32)) (zeroValue!4149 V!7761) (minValue!4149 V!7761) (_size!1698 (_ BitVec 32)) (_keys!6362 array!11412) (_values!4291 array!11414) (_vacant!1698 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3298)

(declare-fun v!346 () V!7761)

(declare-datatypes ((tuple2!4552 0))(
  ( (tuple2!4553 (_1!2286 (_ BitVec 64)) (_2!2286 V!7761)) )
))
(declare-datatypes ((List!3495 0))(
  ( (Nil!3492) (Cons!3491 (h!4139 tuple2!4552) (t!8462 List!3495)) )
))
(declare-datatypes ((ListLongMap!3479 0))(
  ( (ListLongMap!3480 (toList!1755 List!3495)) )
))
(declare-fun lt!116637 () ListLongMap!3479)

(declare-fun +!609 (ListLongMap!3479 tuple2!4552) ListLongMap!3479)

(declare-fun getCurrentListMap!1278 (array!11412 array!11414 (_ BitVec 32) (_ BitVec 32) V!7761 V!7761 (_ BitVec 32) Int) ListLongMap!3479)

(assert (=> b!231316 (= (+!609 lt!116637 (tuple2!4553 key!932 v!346)) (getCurrentListMap!1278 lt!116635 (array!11415 (store (arr!5426 (_values!4291 thiss!1504)) index!297 (ValueCellFull!2699 v!346)) (size!5759 (_values!4291 thiss!1504))) (mask!10210 thiss!1504) (extraKeys!4045 thiss!1504) (zeroValue!4149 thiss!1504) (minValue!4149 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4308 thiss!1504)))))

(declare-fun lt!116645 () Unit!7113)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!68 (array!11412 array!11414 (_ BitVec 32) (_ BitVec 32) V!7761 V!7761 (_ BitVec 32) (_ BitVec 64) V!7761 Int) Unit!7113)

(assert (=> b!231316 (= lt!116645 (lemmaAddValidKeyToArrayThenAddPairToListMap!68 (_keys!6362 thiss!1504) (_values!4291 thiss!1504) (mask!10210 thiss!1504) (extraKeys!4045 thiss!1504) (zeroValue!4149 thiss!1504) (minValue!4149 thiss!1504) index!297 key!932 v!346 (defaultEntry!4308 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11412 (_ BitVec 32)) Bool)

(assert (=> b!231316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!116635 (mask!10210 thiss!1504))))

(declare-fun lt!116633 () Unit!7113)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11412 (_ BitVec 32) (_ BitVec 32)) Unit!7113)

(assert (=> b!231316 (= lt!116633 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6362 thiss!1504) index!297 (mask!10210 thiss!1504)))))

(assert (=> b!231316 (= (arrayCountValidKeys!0 lt!116635 #b00000000000000000000000000000000 (size!5758 (_keys!6362 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6362 thiss!1504) #b00000000000000000000000000000000 (size!5758 (_keys!6362 thiss!1504)))))))

(declare-fun lt!116634 () Unit!7113)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11412 (_ BitVec 32) (_ BitVec 64)) Unit!7113)

(assert (=> b!231316 (= lt!116634 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6362 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3496 0))(
  ( (Nil!3493) (Cons!3492 (h!4140 (_ BitVec 64)) (t!8463 List!3496)) )
))
(declare-fun arrayNoDuplicates!0 (array!11412 (_ BitVec 32) List!3496) Bool)

(assert (=> b!231316 (arrayNoDuplicates!0 lt!116635 #b00000000000000000000000000000000 Nil!3493)))

(assert (=> b!231316 (= lt!116635 (array!11413 (store (arr!5425 (_keys!6362 thiss!1504)) index!297 key!932) (size!5758 (_keys!6362 thiss!1504))))))

(declare-fun lt!116638 () Unit!7113)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11412 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3496) Unit!7113)

(assert (=> b!231316 (= lt!116638 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6362 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3493))))

(declare-fun lt!116636 () Unit!7113)

(declare-fun e!150178 () Unit!7113)

(assert (=> b!231316 (= lt!116636 e!150178)))

(declare-fun c!38416 () Bool)

(assert (=> b!231316 (= c!38416 (arrayContainsKey!0 (_keys!6362 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231317 () Bool)

(declare-fun Unit!7115 () Unit!7113)

(assert (=> b!231317 (= e!150178 Unit!7115)))

(declare-fun lt!116643 () Unit!7113)

(declare-fun lemmaArrayContainsKeyThenInListMap!135 (array!11412 array!11414 (_ BitVec 32) (_ BitVec 32) V!7761 V!7761 (_ BitVec 64) (_ BitVec 32) Int) Unit!7113)

(assert (=> b!231317 (= lt!116643 (lemmaArrayContainsKeyThenInListMap!135 (_keys!6362 thiss!1504) (_values!4291 thiss!1504) (mask!10210 thiss!1504) (extraKeys!4045 thiss!1504) (zeroValue!4149 thiss!1504) (minValue!4149 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4308 thiss!1504)))))

(assert (=> b!231317 false))

(declare-fun b!231318 () Bool)

(declare-fun e!150170 () Bool)

(declare-fun call!21502 () Bool)

(assert (=> b!231318 (= e!150170 (not call!21502))))

(declare-fun b!231319 () Bool)

(declare-fun res!113700 () Bool)

(declare-fun e!150180 () Bool)

(assert (=> b!231319 (=> (not res!113700) (not e!150180))))

(assert (=> b!231319 (= res!113700 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!231320 () Bool)

(declare-fun e!150179 () Bool)

(declare-fun e!150181 () Bool)

(declare-fun mapRes!10297 () Bool)

(assert (=> b!231320 (= e!150179 (and e!150181 mapRes!10297))))

(declare-fun condMapEmpty!10297 () Bool)

(declare-fun mapDefault!10297 () ValueCell!2699)


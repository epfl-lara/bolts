; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23540 () Bool)

(assert start!23540)

(declare-fun b!247135 () Bool)

(declare-fun b_free!6581 () Bool)

(declare-fun b_next!6581 () Bool)

(assert (=> b!247135 (= b_free!6581 (not b_next!6581))))

(declare-fun tp!22987 () Bool)

(declare-fun b_and!13599 () Bool)

(assert (=> b!247135 (= tp!22987 b_and!13599)))

(declare-fun b!247116 () Bool)

(declare-fun res!121159 () Bool)

(declare-fun e!160333 () Bool)

(assert (=> b!247116 (=> (not res!121159) (not e!160333))))

(declare-fun call!23128 () Bool)

(assert (=> b!247116 (= res!121159 call!23128)))

(declare-fun e!160323 () Bool)

(assert (=> b!247116 (= e!160323 e!160333)))

(declare-fun c!41345 () Bool)

(declare-fun bm!23125 () Bool)

(declare-datatypes ((V!8237 0))(
  ( (V!8238 (val!3266 Int)) )
))
(declare-datatypes ((ValueCell!2878 0))(
  ( (ValueCellFull!2878 (v!5319 V!8237)) (EmptyCell!2878) )
))
(declare-datatypes ((array!12190 0))(
  ( (array!12191 (arr!5783 (Array (_ BitVec 32) ValueCell!2878)) (size!6126 (_ BitVec 32))) )
))
(declare-datatypes ((array!12192 0))(
  ( (array!12193 (arr!5784 (Array (_ BitVec 32) (_ BitVec 64))) (size!6127 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3656 0))(
  ( (LongMapFixedSize!3657 (defaultEntry!4573 Int) (mask!10706 (_ BitVec 32)) (extraKeys!4310 (_ BitVec 32)) (zeroValue!4414 V!8237) (minValue!4414 V!8237) (_size!1877 (_ BitVec 32)) (_keys!6694 array!12192) (_values!4556 array!12190) (_vacant!1877 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3656)

(declare-datatypes ((SeekEntryResult!1109 0))(
  ( (MissingZero!1109 (index!6606 (_ BitVec 32))) (Found!1109 (index!6607 (_ BitVec 32))) (Intermediate!1109 (undefined!1921 Bool) (index!6608 (_ BitVec 32)) (x!24519 (_ BitVec 32))) (Undefined!1109) (MissingVacant!1109 (index!6609 (_ BitVec 32))) )
))
(declare-fun lt!123807 () SeekEntryResult!1109)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23125 (= call!23128 (inRange!0 (ite c!41345 (index!6606 lt!123807) (index!6609 lt!123807)) (mask!10706 thiss!1504)))))

(declare-fun b!247117 () Bool)

(declare-fun call!23129 () Bool)

(assert (=> b!247117 (= e!160333 (not call!23129))))

(declare-fun b!247118 () Bool)

(declare-fun e!160330 () Bool)

(declare-fun e!160321 () Bool)

(assert (=> b!247118 (= e!160330 e!160321)))

(declare-fun res!121153 () Bool)

(assert (=> b!247118 (= res!121153 call!23128)))

(assert (=> b!247118 (=> (not res!121153) (not e!160321))))

(declare-fun b!247119 () Bool)

(declare-fun e!160335 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!247119 (= e!160335 (validKeyInArray!0 key!932))))

(declare-fun res!121158 () Bool)

(declare-fun e!160331 () Bool)

(assert (=> start!23540 (=> (not res!121158) (not e!160331))))

(declare-fun valid!1422 (LongMapFixedSize!3656) Bool)

(assert (=> start!23540 (= res!121158 (valid!1422 thiss!1504))))

(assert (=> start!23540 e!160331))

(declare-fun e!160325 () Bool)

(assert (=> start!23540 e!160325))

(assert (=> start!23540 true))

(declare-fun b!247120 () Bool)

(declare-fun e!160326 () Bool)

(declare-fun e!160322 () Bool)

(assert (=> b!247120 (= e!160326 e!160322)))

(declare-fun res!121155 () Bool)

(assert (=> b!247120 (=> (not res!121155) (not e!160322))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!247120 (= res!121155 (inRange!0 index!297 (mask!10706 thiss!1504)))))

(declare-datatypes ((Unit!7633 0))(
  ( (Unit!7634) )
))
(declare-fun lt!123805 () Unit!7633)

(declare-fun e!160328 () Unit!7633)

(assert (=> b!247120 (= lt!123805 e!160328)))

(declare-fun c!41348 () Bool)

(declare-datatypes ((tuple2!4802 0))(
  ( (tuple2!4803 (_1!2411 (_ BitVec 64)) (_2!2411 V!8237)) )
))
(declare-datatypes ((List!3707 0))(
  ( (Nil!3704) (Cons!3703 (h!4361 tuple2!4802) (t!8736 List!3707)) )
))
(declare-datatypes ((ListLongMap!3729 0))(
  ( (ListLongMap!3730 (toList!1880 List!3707)) )
))
(declare-fun contains!1787 (ListLongMap!3729 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1403 (array!12192 array!12190 (_ BitVec 32) (_ BitVec 32) V!8237 V!8237 (_ BitVec 32) Int) ListLongMap!3729)

(assert (=> b!247120 (= c!41348 (contains!1787 (getCurrentListMap!1403 (_keys!6694 thiss!1504) (_values!4556 thiss!1504) (mask!10706 thiss!1504) (extraKeys!4310 thiss!1504) (zeroValue!4414 thiss!1504) (minValue!4414 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4573 thiss!1504)) key!932))))

(declare-fun b!247121 () Bool)

(declare-fun e!160327 () Unit!7633)

(declare-fun Unit!7635 () Unit!7633)

(assert (=> b!247121 (= e!160327 Unit!7635)))

(declare-fun b!247122 () Bool)

(declare-fun e!160329 () Bool)

(declare-fun tp_is_empty!6443 () Bool)

(assert (=> b!247122 (= e!160329 tp_is_empty!6443)))

(declare-fun b!247123 () Bool)

(assert (=> b!247123 (= e!160331 e!160326)))

(declare-fun res!121157 () Bool)

(assert (=> b!247123 (=> (not res!121157) (not e!160326))))

(assert (=> b!247123 (= res!121157 (or (= lt!123807 (MissingZero!1109 index!297)) (= lt!123807 (MissingVacant!1109 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12192 (_ BitVec 32)) SeekEntryResult!1109)

(assert (=> b!247123 (= lt!123807 (seekEntryOrOpen!0 key!932 (_keys!6694 thiss!1504) (mask!10706 thiss!1504)))))

(declare-fun b!247124 () Bool)

(declare-fun res!121151 () Bool)

(assert (=> b!247124 (=> (not res!121151) (not e!160333))))

(assert (=> b!247124 (= res!121151 (= (select (arr!5784 (_keys!6694 thiss!1504)) (index!6606 lt!123807)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!247125 () Bool)

(declare-fun c!41347 () Bool)

(assert (=> b!247125 (= c!41347 (is-MissingVacant!1109 lt!123807))))

(assert (=> b!247125 (= e!160323 e!160330)))

(declare-fun b!247126 () Bool)

(declare-fun res!121150 () Bool)

(assert (=> b!247126 (= res!121150 (= (select (arr!5784 (_keys!6694 thiss!1504)) (index!6609 lt!123807)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!247126 (=> (not res!121150) (not e!160321))))

(declare-fun b!247127 () Bool)

(declare-fun e!160334 () Bool)

(assert (=> b!247127 (= e!160334 tp_is_empty!6443)))

(declare-fun b!247128 () Bool)

(assert (=> b!247128 (= e!160322 (not e!160335))))

(declare-fun res!121156 () Bool)

(assert (=> b!247128 (=> res!121156 e!160335)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!247128 (= res!121156 (not (validMask!0 (mask!10706 thiss!1504))))))

(declare-fun lt!123806 () array!12192)

(declare-fun arrayCountValidKeys!0 (array!12192 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!247128 (= (arrayCountValidKeys!0 lt!123806 #b00000000000000000000000000000000 (size!6127 (_keys!6694 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6694 thiss!1504) #b00000000000000000000000000000000 (size!6127 (_keys!6694 thiss!1504)))))))

(declare-fun lt!123803 () Unit!7633)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12192 (_ BitVec 32) (_ BitVec 64)) Unit!7633)

(assert (=> b!247128 (= lt!123803 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6694 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3708 0))(
  ( (Nil!3705) (Cons!3704 (h!4362 (_ BitVec 64)) (t!8737 List!3708)) )
))
(declare-fun arrayNoDuplicates!0 (array!12192 (_ BitVec 32) List!3708) Bool)

(assert (=> b!247128 (arrayNoDuplicates!0 lt!123806 #b00000000000000000000000000000000 Nil!3705)))

(assert (=> b!247128 (= lt!123806 (array!12193 (store (arr!5784 (_keys!6694 thiss!1504)) index!297 key!932) (size!6127 (_keys!6694 thiss!1504))))))

(declare-fun lt!123810 () Unit!7633)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12192 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3708) Unit!7633)

(assert (=> b!247128 (= lt!123810 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6694 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3705))))

(declare-fun lt!123808 () Unit!7633)

(assert (=> b!247128 (= lt!123808 e!160327)))

(declare-fun c!41346 () Bool)

(declare-fun arrayContainsKey!0 (array!12192 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!247128 (= c!41346 (arrayContainsKey!0 (_keys!6694 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!247129 () Bool)

(assert (=> b!247129 (= e!160330 (is-Undefined!1109 lt!123807))))

(declare-fun b!247130 () Bool)

(declare-fun Unit!7636 () Unit!7633)

(assert (=> b!247130 (= e!160328 Unit!7636)))

(declare-fun lt!123809 () Unit!7633)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!381 (array!12192 array!12190 (_ BitVec 32) (_ BitVec 32) V!8237 V!8237 (_ BitVec 64) Int) Unit!7633)

(assert (=> b!247130 (= lt!123809 (lemmaInListMapThenSeekEntryOrOpenFindsIt!381 (_keys!6694 thiss!1504) (_values!4556 thiss!1504) (mask!10706 thiss!1504) (extraKeys!4310 thiss!1504) (zeroValue!4414 thiss!1504) (minValue!4414 thiss!1504) key!932 (defaultEntry!4573 thiss!1504)))))

(assert (=> b!247130 false))

(declare-fun b!247131 () Bool)

(declare-fun res!121152 () Bool)

(assert (=> b!247131 (=> res!121152 e!160335)))

(assert (=> b!247131 (= res!121152 (or (not (= (size!6127 (_keys!6694 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10706 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6127 (_keys!6694 thiss!1504)))))))

(declare-fun b!247132 () Bool)

(declare-fun res!121154 () Bool)

(assert (=> b!247132 (=> (not res!121154) (not e!160331))))

(assert (=> b!247132 (= res!121154 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!247133 () Bool)

(assert (=> b!247133 (= e!160321 (not call!23129))))

(declare-fun mapNonEmpty!10937 () Bool)

(declare-fun mapRes!10937 () Bool)

(declare-fun tp!22988 () Bool)

(assert (=> mapNonEmpty!10937 (= mapRes!10937 (and tp!22988 e!160329))))

(declare-fun mapValue!10937 () ValueCell!2878)

(declare-fun mapRest!10937 () (Array (_ BitVec 32) ValueCell!2878))

(declare-fun mapKey!10937 () (_ BitVec 32))

(assert (=> mapNonEmpty!10937 (= (arr!5783 (_values!4556 thiss!1504)) (store mapRest!10937 mapKey!10937 mapValue!10937))))

(declare-fun bm!23126 () Bool)

(assert (=> bm!23126 (= call!23129 (arrayContainsKey!0 (_keys!6694 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!247134 () Bool)

(declare-fun e!160324 () Bool)

(assert (=> b!247134 (= e!160324 (and e!160334 mapRes!10937))))

(declare-fun condMapEmpty!10937 () Bool)

(declare-fun mapDefault!10937 () ValueCell!2878)


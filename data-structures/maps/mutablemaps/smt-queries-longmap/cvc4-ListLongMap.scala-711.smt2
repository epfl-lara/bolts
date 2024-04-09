; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16786 () Bool)

(assert start!16786)

(declare-fun b!168774 () Bool)

(declare-fun b_free!4079 () Bool)

(declare-fun b_next!4079 () Bool)

(assert (=> b!168774 (= b_free!4079 (not b_next!4079))))

(declare-fun tp!14838 () Bool)

(declare-fun b_and!10511 () Bool)

(assert (=> b!168774 (= tp!14838 b_and!10511)))

(declare-fun b!168765 () Bool)

(declare-fun res!80352 () Bool)

(declare-fun e!111024 () Bool)

(assert (=> b!168765 (=> (not res!80352) (not e!111024))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!168765 (= res!80352 (not (= key!828 (bvneg key!828))))))

(declare-fun b!168766 () Bool)

(declare-fun e!111027 () Bool)

(assert (=> b!168766 (= e!111027 true)))

(declare-fun lt!84549 () Bool)

(declare-datatypes ((V!4821 0))(
  ( (V!4822 (val!1985 Int)) )
))
(declare-datatypes ((ValueCell!1597 0))(
  ( (ValueCellFull!1597 (v!3846 V!4821)) (EmptyCell!1597) )
))
(declare-datatypes ((array!6858 0))(
  ( (array!6859 (arr!3264 (Array (_ BitVec 32) (_ BitVec 64))) (size!3552 (_ BitVec 32))) )
))
(declare-datatypes ((array!6860 0))(
  ( (array!6861 (arr!3265 (Array (_ BitVec 32) ValueCell!1597)) (size!3553 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2102 0))(
  ( (LongMapFixedSize!2103 (defaultEntry!3493 Int) (mask!8264 (_ BitVec 32)) (extraKeys!3234 (_ BitVec 32)) (zeroValue!3336 V!4821) (minValue!3336 V!4821) (_size!1100 (_ BitVec 32)) (_keys!5318 array!6858) (_values!3476 array!6860) (_vacant!1100 (_ BitVec 32))) )
))
(declare-fun lt!84554 () LongMapFixedSize!2102)

(declare-datatypes ((tuple2!3178 0))(
  ( (tuple2!3179 (_1!1599 (_ BitVec 64)) (_2!1599 V!4821)) )
))
(declare-datatypes ((List!2192 0))(
  ( (Nil!2189) (Cons!2188 (h!2805 tuple2!3178) (t!7002 List!2192)) )
))
(declare-datatypes ((ListLongMap!2147 0))(
  ( (ListLongMap!2148 (toList!1089 List!2192)) )
))
(declare-fun contains!1125 (ListLongMap!2147 (_ BitVec 64)) Bool)

(declare-fun map!1801 (LongMapFixedSize!2102) ListLongMap!2147)

(assert (=> b!168766 (= lt!84549 (contains!1125 (map!1801 lt!84554) key!828))))

(declare-fun mapNonEmpty!6540 () Bool)

(declare-fun mapRes!6540 () Bool)

(declare-fun tp!14837 () Bool)

(declare-fun e!111030 () Bool)

(assert (=> mapNonEmpty!6540 (= mapRes!6540 (and tp!14837 e!111030))))

(declare-fun mapKey!6540 () (_ BitVec 32))

(declare-fun mapRest!6540 () (Array (_ BitVec 32) ValueCell!1597))

(declare-fun thiss!1248 () LongMapFixedSize!2102)

(declare-fun mapValue!6540 () ValueCell!1597)

(assert (=> mapNonEmpty!6540 (= (arr!3265 (_values!3476 thiss!1248)) (store mapRest!6540 mapKey!6540 mapValue!6540))))

(declare-fun b!168767 () Bool)

(declare-datatypes ((Unit!5207 0))(
  ( (Unit!5208) )
))
(declare-fun e!111022 () Unit!5207)

(declare-fun lt!84547 () Unit!5207)

(assert (=> b!168767 (= e!111022 lt!84547)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!131 (array!6858 array!6860 (_ BitVec 32) (_ BitVec 32) V!4821 V!4821 (_ BitVec 64) Int) Unit!5207)

(assert (=> b!168767 (= lt!84547 (lemmaInListMapThenSeekEntryOrOpenFindsIt!131 (_keys!5318 thiss!1248) (_values!3476 thiss!1248) (mask!8264 thiss!1248) (extraKeys!3234 thiss!1248) (zeroValue!3336 thiss!1248) (minValue!3336 thiss!1248) key!828 (defaultEntry!3493 thiss!1248)))))

(declare-fun res!80354 () Bool)

(declare-datatypes ((SeekEntryResult!520 0))(
  ( (MissingZero!520 (index!4248 (_ BitVec 32))) (Found!520 (index!4249 (_ BitVec 32))) (Intermediate!520 (undefined!1332 Bool) (index!4250 (_ BitVec 32)) (x!18660 (_ BitVec 32))) (Undefined!520) (MissingVacant!520 (index!4251 (_ BitVec 32))) )
))
(declare-fun lt!84555 () SeekEntryResult!520)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!168767 (= res!80354 (inRange!0 (index!4249 lt!84555) (mask!8264 thiss!1248)))))

(declare-fun e!111029 () Bool)

(assert (=> b!168767 (=> (not res!80354) (not e!111029))))

(assert (=> b!168767 e!111029))

(declare-fun b!168768 () Bool)

(declare-fun e!111028 () Bool)

(assert (=> b!168768 (= e!111028 (not e!111027))))

(declare-fun res!80351 () Bool)

(assert (=> b!168768 (=> res!80351 e!111027)))

(declare-fun valid!902 (LongMapFixedSize!2102) Bool)

(assert (=> b!168768 (= res!80351 (not (valid!902 lt!84554)))))

(declare-fun lt!84550 () ListLongMap!2147)

(assert (=> b!168768 (contains!1125 lt!84550 (select (arr!3264 (_keys!5318 thiss!1248)) (index!4249 lt!84555)))))

(declare-fun lt!84546 () Unit!5207)

(declare-fun lt!84557 () array!6860)

(declare-fun lemmaValidKeyInArrayIsInListMap!134 (array!6858 array!6860 (_ BitVec 32) (_ BitVec 32) V!4821 V!4821 (_ BitVec 32) Int) Unit!5207)

(assert (=> b!168768 (= lt!84546 (lemmaValidKeyInArrayIsInListMap!134 (_keys!5318 thiss!1248) lt!84557 (mask!8264 thiss!1248) (extraKeys!3234 thiss!1248) (zeroValue!3336 thiss!1248) (minValue!3336 thiss!1248) (index!4249 lt!84555) (defaultEntry!3493 thiss!1248)))))

(assert (=> b!168768 (= lt!84554 (LongMapFixedSize!2103 (defaultEntry!3493 thiss!1248) (mask!8264 thiss!1248) (extraKeys!3234 thiss!1248) (zeroValue!3336 thiss!1248) (minValue!3336 thiss!1248) (_size!1100 thiss!1248) (_keys!5318 thiss!1248) lt!84557 (_vacant!1100 thiss!1248)))))

(declare-fun lt!84552 () ListLongMap!2147)

(assert (=> b!168768 (= lt!84552 lt!84550)))

(declare-fun getCurrentListMap!742 (array!6858 array!6860 (_ BitVec 32) (_ BitVec 32) V!4821 V!4821 (_ BitVec 32) Int) ListLongMap!2147)

(assert (=> b!168768 (= lt!84550 (getCurrentListMap!742 (_keys!5318 thiss!1248) lt!84557 (mask!8264 thiss!1248) (extraKeys!3234 thiss!1248) (zeroValue!3336 thiss!1248) (minValue!3336 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3493 thiss!1248)))))

(declare-fun lt!84551 () ListLongMap!2147)

(declare-fun v!309 () V!4821)

(declare-fun +!231 (ListLongMap!2147 tuple2!3178) ListLongMap!2147)

(assert (=> b!168768 (= lt!84552 (+!231 lt!84551 (tuple2!3179 key!828 v!309)))))

(assert (=> b!168768 (= lt!84557 (array!6861 (store (arr!3265 (_values!3476 thiss!1248)) (index!4249 lt!84555) (ValueCellFull!1597 v!309)) (size!3553 (_values!3476 thiss!1248))))))

(declare-fun lt!84556 () Unit!5207)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!91 (array!6858 array!6860 (_ BitVec 32) (_ BitVec 32) V!4821 V!4821 (_ BitVec 32) (_ BitVec 64) V!4821 Int) Unit!5207)

(assert (=> b!168768 (= lt!84556 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!91 (_keys!5318 thiss!1248) (_values!3476 thiss!1248) (mask!8264 thiss!1248) (extraKeys!3234 thiss!1248) (zeroValue!3336 thiss!1248) (minValue!3336 thiss!1248) (index!4249 lt!84555) key!828 v!309 (defaultEntry!3493 thiss!1248)))))

(declare-fun lt!84548 () Unit!5207)

(assert (=> b!168768 (= lt!84548 e!111022)))

(declare-fun c!30381 () Bool)

(assert (=> b!168768 (= c!30381 (contains!1125 lt!84551 key!828))))

(assert (=> b!168768 (= lt!84551 (getCurrentListMap!742 (_keys!5318 thiss!1248) (_values!3476 thiss!1248) (mask!8264 thiss!1248) (extraKeys!3234 thiss!1248) (zeroValue!3336 thiss!1248) (minValue!3336 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3493 thiss!1248)))))

(declare-fun b!168769 () Bool)

(declare-fun e!111025 () Bool)

(declare-fun tp_is_empty!3881 () Bool)

(assert (=> b!168769 (= e!111025 tp_is_empty!3881)))

(declare-fun b!168770 () Bool)

(assert (=> b!168770 (= e!111030 tp_is_empty!3881)))

(declare-fun b!168771 () Bool)

(declare-fun e!111026 () Bool)

(assert (=> b!168771 (= e!111026 (and e!111025 mapRes!6540))))

(declare-fun condMapEmpty!6540 () Bool)

(declare-fun mapDefault!6540 () ValueCell!1597)


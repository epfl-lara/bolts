; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16200 () Bool)

(assert start!16200)

(declare-fun b!161406 () Bool)

(declare-fun b_free!3649 () Bool)

(declare-fun b_next!3649 () Bool)

(assert (=> b!161406 (= b_free!3649 (not b_next!3649))))

(declare-fun tp!13517 () Bool)

(declare-fun b_and!10081 () Bool)

(assert (=> b!161406 (= tp!13517 b_and!10081)))

(declare-fun e!105500 () Bool)

(declare-fun tp_is_empty!3451 () Bool)

(declare-fun e!105502 () Bool)

(declare-datatypes ((V!4249 0))(
  ( (V!4250 (val!1770 Int)) )
))
(declare-datatypes ((ValueCell!1382 0))(
  ( (ValueCellFull!1382 (v!3631 V!4249)) (EmptyCell!1382) )
))
(declare-datatypes ((array!5980 0))(
  ( (array!5981 (arr!2834 (Array (_ BitVec 32) (_ BitVec 64))) (size!3118 (_ BitVec 32))) )
))
(declare-datatypes ((array!5982 0))(
  ( (array!5983 (arr!2835 (Array (_ BitVec 32) ValueCell!1382)) (size!3119 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1672 0))(
  ( (LongMapFixedSize!1673 (defaultEntry!3278 Int) (mask!7870 (_ BitVec 32)) (extraKeys!3019 (_ BitVec 32)) (zeroValue!3121 V!4249) (minValue!3121 V!4249) (_size!885 (_ BitVec 32)) (_keys!5079 array!5980) (_values!3261 array!5982) (_vacant!885 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1672)

(declare-fun array_inv!1797 (array!5980) Bool)

(declare-fun array_inv!1798 (array!5982) Bool)

(assert (=> b!161406 (= e!105500 (and tp!13517 tp_is_empty!3451 (array_inv!1797 (_keys!5079 thiss!1248)) (array_inv!1798 (_values!3261 thiss!1248)) e!105502))))

(declare-fun b!161407 () Bool)

(declare-datatypes ((Unit!5015 0))(
  ( (Unit!5016) )
))
(declare-fun e!105497 () Unit!5015)

(declare-fun Unit!5017 () Unit!5015)

(assert (=> b!161407 (= e!105497 Unit!5017)))

(declare-fun lt!82238 () Unit!5015)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!79 (array!5980 array!5982 (_ BitVec 32) (_ BitVec 32) V!4249 V!4249 (_ BitVec 64) Int) Unit!5015)

(assert (=> b!161407 (= lt!82238 (lemmaInListMapThenSeekEntryOrOpenFindsIt!79 (_keys!5079 thiss!1248) (_values!3261 thiss!1248) (mask!7870 thiss!1248) (extraKeys!3019 thiss!1248) (zeroValue!3121 thiss!1248) (minValue!3121 thiss!1248) key!828 (defaultEntry!3278 thiss!1248)))))

(assert (=> b!161407 false))

(declare-fun b!161408 () Bool)

(declare-fun e!105499 () Bool)

(assert (=> b!161408 (= e!105499 tp_is_empty!3451)))

(declare-fun mapNonEmpty!5864 () Bool)

(declare-fun mapRes!5864 () Bool)

(declare-fun tp!13516 () Bool)

(declare-fun e!105503 () Bool)

(assert (=> mapNonEmpty!5864 (= mapRes!5864 (and tp!13516 e!105503))))

(declare-fun mapRest!5864 () (Array (_ BitVec 32) ValueCell!1382))

(declare-fun mapKey!5864 () (_ BitVec 32))

(declare-fun mapValue!5864 () ValueCell!1382)

(assert (=> mapNonEmpty!5864 (= (arr!2835 (_values!3261 thiss!1248)) (store mapRest!5864 mapKey!5864 mapValue!5864))))

(declare-fun mapIsEmpty!5864 () Bool)

(assert (=> mapIsEmpty!5864 mapRes!5864))

(declare-fun b!161410 () Bool)

(assert (=> b!161410 (= e!105503 tp_is_empty!3451)))

(declare-fun b!161411 () Bool)

(declare-fun e!105501 () Bool)

(assert (=> b!161411 (= e!105501 false)))

(declare-fun lt!82237 () Unit!5015)

(assert (=> b!161411 (= lt!82237 e!105497)))

(declare-fun c!29943 () Bool)

(declare-datatypes ((tuple2!2944 0))(
  ( (tuple2!2945 (_1!1482 (_ BitVec 64)) (_2!1482 V!4249)) )
))
(declare-datatypes ((List!1994 0))(
  ( (Nil!1991) (Cons!1990 (h!2603 tuple2!2944) (t!6804 List!1994)) )
))
(declare-datatypes ((ListLongMap!1953 0))(
  ( (ListLongMap!1954 (toList!992 List!1994)) )
))
(declare-fun contains!1022 (ListLongMap!1953 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!652 (array!5980 array!5982 (_ BitVec 32) (_ BitVec 32) V!4249 V!4249 (_ BitVec 32) Int) ListLongMap!1953)

(assert (=> b!161411 (= c!29943 (contains!1022 (getCurrentListMap!652 (_keys!5079 thiss!1248) (_values!3261 thiss!1248) (mask!7870 thiss!1248) (extraKeys!3019 thiss!1248) (zeroValue!3121 thiss!1248) (minValue!3121 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3278 thiss!1248)) key!828))))

(declare-fun b!161412 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!77 (array!5980 array!5982 (_ BitVec 32) (_ BitVec 32) V!4249 V!4249 (_ BitVec 64) Int) Unit!5015)

(assert (=> b!161412 (= e!105497 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!77 (_keys!5079 thiss!1248) (_values!3261 thiss!1248) (mask!7870 thiss!1248) (extraKeys!3019 thiss!1248) (zeroValue!3121 thiss!1248) (minValue!3121 thiss!1248) key!828 (defaultEntry!3278 thiss!1248)))))

(declare-fun b!161413 () Bool)

(declare-fun res!76524 () Bool)

(assert (=> b!161413 (=> (not res!76524) (not e!105501))))

(declare-datatypes ((SeekEntryResult!360 0))(
  ( (MissingZero!360 (index!3608 (_ BitVec 32))) (Found!360 (index!3609 (_ BitVec 32))) (Intermediate!360 (undefined!1172 Bool) (index!3610 (_ BitVec 32)) (x!17824 (_ BitVec 32))) (Undefined!360) (MissingVacant!360 (index!3611 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5980 (_ BitVec 32)) SeekEntryResult!360)

(assert (=> b!161413 (= res!76524 (is-Undefined!360 (seekEntryOrOpen!0 key!828 (_keys!5079 thiss!1248) (mask!7870 thiss!1248))))))

(declare-fun b!161414 () Bool)

(assert (=> b!161414 (= e!105502 (and e!105499 mapRes!5864))))

(declare-fun condMapEmpty!5864 () Bool)

(declare-fun mapDefault!5864 () ValueCell!1382)


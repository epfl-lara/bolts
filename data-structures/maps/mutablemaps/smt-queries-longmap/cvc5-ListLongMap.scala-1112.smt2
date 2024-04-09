; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22930 () Bool)

(assert start!22930)

(declare-fun b!238962 () Bool)

(declare-fun b_free!6421 () Bool)

(declare-fun b_next!6421 () Bool)

(assert (=> b!238962 (= b_free!6421 (not b_next!6421))))

(declare-fun tp!22467 () Bool)

(declare-fun b_and!13405 () Bool)

(assert (=> b!238962 (= tp!22467 b_and!13405)))

(declare-fun c!39827 () Bool)

(declare-fun call!22221 () Bool)

(declare-datatypes ((V!8025 0))(
  ( (V!8026 (val!3186 Int)) )
))
(declare-datatypes ((ValueCell!2798 0))(
  ( (ValueCellFull!2798 (v!5220 V!8025)) (EmptyCell!2798) )
))
(declare-datatypes ((array!11844 0))(
  ( (array!11845 (arr!5623 (Array (_ BitVec 32) ValueCell!2798)) (size!5964 (_ BitVec 32))) )
))
(declare-datatypes ((array!11846 0))(
  ( (array!11847 (arr!5624 (Array (_ BitVec 32) (_ BitVec 64))) (size!5965 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3496 0))(
  ( (LongMapFixedSize!3497 (defaultEntry!4433 Int) (mask!10475 (_ BitVec 32)) (extraKeys!4170 (_ BitVec 32)) (zeroValue!4274 V!8025) (minValue!4274 V!8025) (_size!1797 (_ BitVec 32)) (_keys!6535 array!11846) (_values!4416 array!11844) (_vacant!1797 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3496)

(declare-datatypes ((SeekEntryResult!1036 0))(
  ( (MissingZero!1036 (index!6314 (_ BitVec 32))) (Found!1036 (index!6315 (_ BitVec 32))) (Intermediate!1036 (undefined!1848 Bool) (index!6316 (_ BitVec 32)) (x!24092 (_ BitVec 32))) (Undefined!1036) (MissingVacant!1036 (index!6317 (_ BitVec 32))) )
))
(declare-fun lt!120727 () SeekEntryResult!1036)

(declare-fun bm!22218 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22218 (= call!22221 (inRange!0 (ite c!39827 (index!6314 lt!120727) (index!6317 lt!120727)) (mask!10475 thiss!1504)))))

(declare-fun b!238956 () Bool)

(declare-fun e!155157 () Bool)

(assert (=> b!238956 (= e!155157 (is-Undefined!1036 lt!120727))))

(declare-fun b!238957 () Bool)

(declare-fun e!155163 () Bool)

(declare-fun e!155168 () Bool)

(assert (=> b!238957 (= e!155163 e!155168)))

(declare-fun res!117130 () Bool)

(assert (=> b!238957 (=> (not res!117130) (not e!155168))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!238957 (= res!117130 (inRange!0 index!297 (mask!10475 thiss!1504)))))

(declare-datatypes ((Unit!7330 0))(
  ( (Unit!7331) )
))
(declare-fun lt!120724 () Unit!7330)

(declare-fun e!155156 () Unit!7330)

(assert (=> b!238957 (= lt!120724 e!155156)))

(declare-fun c!39828 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4690 0))(
  ( (tuple2!4691 (_1!2355 (_ BitVec 64)) (_2!2355 V!8025)) )
))
(declare-datatypes ((List!3609 0))(
  ( (Nil!3606) (Cons!3605 (h!4261 tuple2!4690) (t!8612 List!3609)) )
))
(declare-datatypes ((ListLongMap!3617 0))(
  ( (ListLongMap!3618 (toList!1824 List!3609)) )
))
(declare-fun contains!1706 (ListLongMap!3617 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1347 (array!11846 array!11844 (_ BitVec 32) (_ BitVec 32) V!8025 V!8025 (_ BitVec 32) Int) ListLongMap!3617)

(assert (=> b!238957 (= c!39828 (contains!1706 (getCurrentListMap!1347 (_keys!6535 thiss!1504) (_values!4416 thiss!1504) (mask!10475 thiss!1504) (extraKeys!4170 thiss!1504) (zeroValue!4274 thiss!1504) (minValue!4274 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4433 thiss!1504)) key!932))))

(declare-fun mapIsEmpty!10656 () Bool)

(declare-fun mapRes!10656 () Bool)

(assert (=> mapIsEmpty!10656 mapRes!10656))

(declare-fun b!238958 () Bool)

(declare-fun e!155159 () Bool)

(declare-fun tp_is_empty!6283 () Bool)

(assert (=> b!238958 (= e!155159 tp_is_empty!6283)))

(declare-fun b!238959 () Bool)

(declare-fun e!155162 () Bool)

(declare-fun call!22222 () Bool)

(assert (=> b!238959 (= e!155162 (not call!22222))))

(declare-fun mapNonEmpty!10656 () Bool)

(declare-fun tp!22466 () Bool)

(declare-fun e!155160 () Bool)

(assert (=> mapNonEmpty!10656 (= mapRes!10656 (and tp!22466 e!155160))))

(declare-fun mapRest!10656 () (Array (_ BitVec 32) ValueCell!2798))

(declare-fun mapValue!10656 () ValueCell!2798)

(declare-fun mapKey!10656 () (_ BitVec 32))

(assert (=> mapNonEmpty!10656 (= (arr!5623 (_values!4416 thiss!1504)) (store mapRest!10656 mapKey!10656 mapValue!10656))))

(declare-fun b!238960 () Bool)

(declare-fun Unit!7332 () Unit!7330)

(assert (=> b!238960 (= e!155156 Unit!7332)))

(declare-fun lt!120726 () Unit!7330)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!322 (array!11846 array!11844 (_ BitVec 32) (_ BitVec 32) V!8025 V!8025 (_ BitVec 64) Int) Unit!7330)

(assert (=> b!238960 (= lt!120726 (lemmaInListMapThenSeekEntryOrOpenFindsIt!322 (_keys!6535 thiss!1504) (_values!4416 thiss!1504) (mask!10475 thiss!1504) (extraKeys!4170 thiss!1504) (zeroValue!4274 thiss!1504) (minValue!4274 thiss!1504) key!932 (defaultEntry!4433 thiss!1504)))))

(assert (=> b!238960 false))

(declare-fun b!238961 () Bool)

(declare-fun res!117131 () Bool)

(assert (=> b!238961 (=> (not res!117131) (not e!155162))))

(assert (=> b!238961 (= res!117131 (= (select (arr!5624 (_keys!6535 thiss!1504)) (index!6314 lt!120727)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!155167 () Bool)

(declare-fun e!155165 () Bool)

(declare-fun array_inv!3709 (array!11846) Bool)

(declare-fun array_inv!3710 (array!11844) Bool)

(assert (=> b!238962 (= e!155167 (and tp!22467 tp_is_empty!6283 (array_inv!3709 (_keys!6535 thiss!1504)) (array_inv!3710 (_values!4416 thiss!1504)) e!155165))))

(declare-fun b!238964 () Bool)

(declare-fun e!155164 () Bool)

(assert (=> b!238964 (= e!155164 e!155163)))

(declare-fun res!117126 () Bool)

(assert (=> b!238964 (=> (not res!117126) (not e!155163))))

(assert (=> b!238964 (= res!117126 (or (= lt!120727 (MissingZero!1036 index!297)) (= lt!120727 (MissingVacant!1036 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11846 (_ BitVec 32)) SeekEntryResult!1036)

(assert (=> b!238964 (= lt!120727 (seekEntryOrOpen!0 key!932 (_keys!6535 thiss!1504) (mask!10475 thiss!1504)))))

(declare-fun b!238965 () Bool)

(declare-fun res!117124 () Bool)

(assert (=> b!238965 (=> (not res!117124) (not e!155162))))

(assert (=> b!238965 (= res!117124 call!22221)))

(declare-fun e!155166 () Bool)

(assert (=> b!238965 (= e!155166 e!155162)))

(declare-fun b!238966 () Bool)

(declare-fun res!117125 () Bool)

(assert (=> b!238966 (= res!117125 (= (select (arr!5624 (_keys!6535 thiss!1504)) (index!6317 lt!120727)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!155161 () Bool)

(assert (=> b!238966 (=> (not res!117125) (not e!155161))))

(declare-fun b!238967 () Bool)

(declare-fun res!117129 () Bool)

(assert (=> b!238967 (=> (not res!117129) (not e!155164))))

(assert (=> b!238967 (= res!117129 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!22219 () Bool)

(declare-fun arrayContainsKey!0 (array!11846 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22219 (= call!22222 (arrayContainsKey!0 (_keys!6535 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!238968 () Bool)

(declare-fun lt!120725 () Unit!7330)

(assert (=> b!238968 (= e!155156 lt!120725)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!335 (array!11846 array!11844 (_ BitVec 32) (_ BitVec 32) V!8025 V!8025 (_ BitVec 64) Int) Unit!7330)

(assert (=> b!238968 (= lt!120725 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!335 (_keys!6535 thiss!1504) (_values!4416 thiss!1504) (mask!10475 thiss!1504) (extraKeys!4170 thiss!1504) (zeroValue!4274 thiss!1504) (minValue!4274 thiss!1504) key!932 (defaultEntry!4433 thiss!1504)))))

(assert (=> b!238968 (= c!39827 (is-MissingZero!1036 lt!120727))))

(assert (=> b!238968 e!155166))

(declare-fun b!238969 () Bool)

(declare-fun res!117128 () Bool)

(assert (=> b!238969 (=> (not res!117128) (not e!155168))))

(assert (=> b!238969 (= res!117128 (arrayContainsKey!0 (_keys!6535 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!238970 () Bool)

(assert (=> b!238970 (= e!155161 (not call!22222))))

(declare-fun b!238971 () Bool)

(declare-fun res!117122 () Bool)

(assert (=> b!238971 (=> (not res!117122) (not e!155168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!238971 (= res!117122 (validMask!0 (mask!10475 thiss!1504)))))

(declare-fun b!238972 () Bool)

(declare-fun c!39829 () Bool)

(assert (=> b!238972 (= c!39829 (is-MissingVacant!1036 lt!120727))))

(assert (=> b!238972 (= e!155166 e!155157)))

(declare-fun b!238973 () Bool)

(assert (=> b!238973 (= e!155165 (and e!155159 mapRes!10656))))

(declare-fun condMapEmpty!10656 () Bool)

(declare-fun mapDefault!10656 () ValueCell!2798)


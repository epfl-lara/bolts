; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17468 () Bool)

(assert start!17468)

(declare-fun b!174987 () Bool)

(declare-fun b_free!4327 () Bool)

(declare-fun b_next!4327 () Bool)

(assert (=> b!174987 (= b_free!4327 (not b_next!4327))))

(declare-fun tp!15657 () Bool)

(declare-fun b_and!10819 () Bool)

(assert (=> b!174987 (= tp!15657 b_and!10819)))

(declare-fun b!174981 () Bool)

(declare-fun e!115537 () Bool)

(declare-fun tp_is_empty!4099 () Bool)

(assert (=> b!174981 (= e!115537 tp_is_empty!4099)))

(declare-fun mapNonEmpty!6987 () Bool)

(declare-fun mapRes!6987 () Bool)

(declare-fun tp!15656 () Bool)

(declare-fun e!115532 () Bool)

(assert (=> mapNonEmpty!6987 (= mapRes!6987 (and tp!15656 e!115532))))

(declare-datatypes ((V!5113 0))(
  ( (V!5114 (val!2094 Int)) )
))
(declare-datatypes ((ValueCell!1706 0))(
  ( (ValueCellFull!1706 (v!3963 V!5113)) (EmptyCell!1706) )
))
(declare-fun mapValue!6987 () ValueCell!1706)

(declare-fun mapKey!6987 () (_ BitVec 32))

(declare-fun mapRest!6987 () (Array (_ BitVec 32) ValueCell!1706))

(declare-datatypes ((array!7334 0))(
  ( (array!7335 (arr!3482 (Array (_ BitVec 32) (_ BitVec 64))) (size!3783 (_ BitVec 32))) )
))
(declare-datatypes ((array!7336 0))(
  ( (array!7337 (arr!3483 (Array (_ BitVec 32) ValueCell!1706)) (size!3784 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2320 0))(
  ( (LongMapFixedSize!2321 (defaultEntry!3613 Int) (mask!8502 (_ BitVec 32)) (extraKeys!3350 (_ BitVec 32)) (zeroValue!3454 V!5113) (minValue!3454 V!5113) (_size!1209 (_ BitVec 32)) (_keys!5461 array!7334) (_values!3596 array!7336) (_vacant!1209 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2320)

(assert (=> mapNonEmpty!6987 (= (arr!3483 (_values!3596 thiss!1248)) (store mapRest!6987 mapKey!6987 mapValue!6987))))

(declare-fun b!174982 () Bool)

(declare-fun res!82988 () Bool)

(declare-fun e!115535 () Bool)

(assert (=> b!174982 (=> (not res!82988) (not e!115535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!174982 (= res!82988 (validMask!0 (mask!8502 thiss!1248)))))

(declare-fun b!174983 () Bool)

(declare-fun res!82986 () Bool)

(assert (=> b!174983 (=> (not res!82986) (not e!115535))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!558 0))(
  ( (MissingZero!558 (index!4400 (_ BitVec 32))) (Found!558 (index!4401 (_ BitVec 32))) (Intermediate!558 (undefined!1370 Bool) (index!4402 (_ BitVec 32)) (x!19272 (_ BitVec 32))) (Undefined!558) (MissingVacant!558 (index!4403 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7334 (_ BitVec 32)) SeekEntryResult!558)

(assert (=> b!174983 (= res!82986 (is-Undefined!558 (seekEntryOrOpen!0 key!828 (_keys!5461 thiss!1248) (mask!8502 thiss!1248))))))

(declare-fun b!174984 () Bool)

(declare-fun res!82984 () Bool)

(assert (=> b!174984 (=> (not res!82984) (not e!115535))))

(assert (=> b!174984 (= res!82984 (not (= key!828 (bvneg key!828))))))

(declare-fun b!174985 () Bool)

(declare-fun res!82987 () Bool)

(assert (=> b!174985 (=> (not res!82987) (not e!115535))))

(declare-datatypes ((tuple2!3252 0))(
  ( (tuple2!3253 (_1!1636 (_ BitVec 64)) (_2!1636 V!5113)) )
))
(declare-datatypes ((List!2237 0))(
  ( (Nil!2234) (Cons!2233 (h!2851 tuple2!3252) (t!7061 List!2237)) )
))
(declare-datatypes ((ListLongMap!2193 0))(
  ( (ListLongMap!2194 (toList!1112 List!2237)) )
))
(declare-fun contains!1164 (ListLongMap!2193 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!759 (array!7334 array!7336 (_ BitVec 32) (_ BitVec 32) V!5113 V!5113 (_ BitVec 32) Int) ListLongMap!2193)

(assert (=> b!174985 (= res!82987 (contains!1164 (getCurrentListMap!759 (_keys!5461 thiss!1248) (_values!3596 thiss!1248) (mask!8502 thiss!1248) (extraKeys!3350 thiss!1248) (zeroValue!3454 thiss!1248) (minValue!3454 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3613 thiss!1248)) key!828))))

(declare-fun b!174986 () Bool)

(assert (=> b!174986 (= e!115532 tp_is_empty!4099)))

(declare-fun e!115536 () Bool)

(declare-fun e!115533 () Bool)

(declare-fun array_inv!2221 (array!7334) Bool)

(declare-fun array_inv!2222 (array!7336) Bool)

(assert (=> b!174987 (= e!115533 (and tp!15657 tp_is_empty!4099 (array_inv!2221 (_keys!5461 thiss!1248)) (array_inv!2222 (_values!3596 thiss!1248)) e!115536))))

(declare-fun b!174988 () Bool)

(assert (=> b!174988 (= e!115536 (and e!115537 mapRes!6987))))

(declare-fun condMapEmpty!6987 () Bool)

(declare-fun mapDefault!6987 () ValueCell!1706)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17396 () Bool)

(assert start!17396)

(declare-fun b!174462 () Bool)

(declare-fun b_free!4319 () Bool)

(declare-fun b_next!4319 () Bool)

(assert (=> b!174462 (= b_free!4319 (not b_next!4319))))

(declare-fun tp!15625 () Bool)

(declare-fun b_and!10803 () Bool)

(assert (=> b!174462 (= tp!15625 b_and!10803)))

(declare-fun b!174460 () Bool)

(declare-fun res!82766 () Bool)

(declare-fun e!115223 () Bool)

(assert (=> b!174460 (=> (not res!82766) (not e!115223))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!174460 (= res!82766 (not (= key!828 (bvneg key!828))))))

(declare-fun b!174461 () Bool)

(declare-fun res!82764 () Bool)

(assert (=> b!174461 (=> (not res!82764) (not e!115223))))

(declare-datatypes ((V!5101 0))(
  ( (V!5102 (val!2090 Int)) )
))
(declare-datatypes ((ValueCell!1702 0))(
  ( (ValueCellFull!1702 (v!3957 V!5101)) (EmptyCell!1702) )
))
(declare-datatypes ((array!7314 0))(
  ( (array!7315 (arr!3474 (Array (_ BitVec 32) (_ BitVec 64))) (size!3774 (_ BitVec 32))) )
))
(declare-datatypes ((array!7316 0))(
  ( (array!7317 (arr!3475 (Array (_ BitVec 32) ValueCell!1702)) (size!3775 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2312 0))(
  ( (LongMapFixedSize!2313 (defaultEntry!3606 Int) (mask!8483 (_ BitVec 32)) (extraKeys!3343 (_ BitVec 32)) (zeroValue!3447 V!5101) (minValue!3447 V!5101) (_size!1205 (_ BitVec 32)) (_keys!5449 array!7314) (_values!3589 array!7316) (_vacant!1205 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2312)

(declare-datatypes ((tuple2!3244 0))(
  ( (tuple2!3245 (_1!1632 (_ BitVec 64)) (_2!1632 V!5101)) )
))
(declare-datatypes ((List!2231 0))(
  ( (Nil!2228) (Cons!2227 (h!2844 tuple2!3244) (t!7051 List!2231)) )
))
(declare-datatypes ((ListLongMap!2185 0))(
  ( (ListLongMap!2186 (toList!1108 List!2231)) )
))
(declare-fun contains!1158 (ListLongMap!2185 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!755 (array!7314 array!7316 (_ BitVec 32) (_ BitVec 32) V!5101 V!5101 (_ BitVec 32) Int) ListLongMap!2185)

(assert (=> b!174461 (= res!82764 (contains!1158 (getCurrentListMap!755 (_keys!5449 thiss!1248) (_values!3589 thiss!1248) (mask!8483 thiss!1248) (extraKeys!3343 thiss!1248) (zeroValue!3447 thiss!1248) (minValue!3447 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3606 thiss!1248)) key!828))))

(declare-fun e!115222 () Bool)

(declare-fun tp_is_empty!4091 () Bool)

(declare-fun e!115219 () Bool)

(declare-fun array_inv!2215 (array!7314) Bool)

(declare-fun array_inv!2216 (array!7316) Bool)

(assert (=> b!174462 (= e!115219 (and tp!15625 tp_is_empty!4091 (array_inv!2215 (_keys!5449 thiss!1248)) (array_inv!2216 (_values!3589 thiss!1248)) e!115222))))

(declare-fun b!174463 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!174463 (= e!115223 (not (validMask!0 (mask!8483 thiss!1248))))))

(declare-fun b!174464 () Bool)

(declare-fun res!82765 () Bool)

(assert (=> b!174464 (=> (not res!82765) (not e!115223))))

(declare-datatypes ((SeekEntryResult!555 0))(
  ( (MissingZero!555 (index!4388 (_ BitVec 32))) (Found!555 (index!4389 (_ BitVec 32))) (Intermediate!555 (undefined!1367 Bool) (index!4390 (_ BitVec 32)) (x!19225 (_ BitVec 32))) (Undefined!555) (MissingVacant!555 (index!4391 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7314 (_ BitVec 32)) SeekEntryResult!555)

(assert (=> b!174464 (= res!82765 (is-Undefined!555 (seekEntryOrOpen!0 key!828 (_keys!5449 thiss!1248) (mask!8483 thiss!1248))))))

(declare-fun res!82767 () Bool)

(assert (=> start!17396 (=> (not res!82767) (not e!115223))))

(declare-fun valid!969 (LongMapFixedSize!2312) Bool)

(assert (=> start!17396 (= res!82767 (valid!969 thiss!1248))))

(assert (=> start!17396 e!115223))

(assert (=> start!17396 e!115219))

(assert (=> start!17396 true))

(declare-fun mapIsEmpty!6968 () Bool)

(declare-fun mapRes!6968 () Bool)

(assert (=> mapIsEmpty!6968 mapRes!6968))

(declare-fun b!174465 () Bool)

(declare-fun e!115220 () Bool)

(assert (=> b!174465 (= e!115220 tp_is_empty!4091)))

(declare-fun b!174466 () Bool)

(declare-fun e!115218 () Bool)

(assert (=> b!174466 (= e!115218 tp_is_empty!4091)))

(declare-fun mapNonEmpty!6968 () Bool)

(declare-fun tp!15626 () Bool)

(assert (=> mapNonEmpty!6968 (= mapRes!6968 (and tp!15626 e!115220))))

(declare-fun mapValue!6968 () ValueCell!1702)

(declare-fun mapKey!6968 () (_ BitVec 32))

(declare-fun mapRest!6968 () (Array (_ BitVec 32) ValueCell!1702))

(assert (=> mapNonEmpty!6968 (= (arr!3475 (_values!3589 thiss!1248)) (store mapRest!6968 mapKey!6968 mapValue!6968))))

(declare-fun b!174467 () Bool)

(assert (=> b!174467 (= e!115222 (and e!115218 mapRes!6968))))

(declare-fun condMapEmpty!6968 () Bool)

(declare-fun mapDefault!6968 () ValueCell!1702)


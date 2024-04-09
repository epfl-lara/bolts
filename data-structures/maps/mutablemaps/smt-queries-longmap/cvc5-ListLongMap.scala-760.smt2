; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17872 () Bool)

(assert start!17872)

(declare-fun b!178148 () Bool)

(declare-fun b_free!4399 () Bool)

(declare-fun b_next!4399 () Bool)

(assert (=> b!178148 (= b_free!4399 (not b_next!4399))))

(declare-fun tp!15907 () Bool)

(declare-fun b_and!10931 () Bool)

(assert (=> b!178148 (= tp!15907 b_and!10931)))

(declare-fun b!178143 () Bool)

(declare-fun e!117444 () Bool)

(declare-fun tp_is_empty!4171 () Bool)

(assert (=> b!178143 (= e!117444 tp_is_empty!4171)))

(declare-fun b!178144 () Bool)

(declare-fun res!84421 () Bool)

(declare-fun e!117445 () Bool)

(assert (=> b!178144 (=> (not res!84421) (not e!117445))))

(declare-datatypes ((V!5209 0))(
  ( (V!5210 (val!2130 Int)) )
))
(declare-datatypes ((ValueCell!1742 0))(
  ( (ValueCellFull!1742 (v!4009 V!5209)) (EmptyCell!1742) )
))
(declare-datatypes ((array!7498 0))(
  ( (array!7499 (arr!3554 (Array (_ BitVec 32) (_ BitVec 64))) (size!3860 (_ BitVec 32))) )
))
(declare-datatypes ((array!7500 0))(
  ( (array!7501 (arr!3555 (Array (_ BitVec 32) ValueCell!1742)) (size!3861 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2392 0))(
  ( (LongMapFixedSize!2393 (defaultEntry!3664 Int) (mask!8620 (_ BitVec 32)) (extraKeys!3401 (_ BitVec 32)) (zeroValue!3505 V!5209) (minValue!3505 V!5209) (_size!1245 (_ BitVec 32)) (_keys!5540 array!7498) (_values!3647 array!7500) (_vacant!1245 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2392)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!178144 (= res!84421 (validMask!0 (mask!8620 thiss!1248)))))

(declare-fun res!84419 () Bool)

(assert (=> start!17872 (=> (not res!84419) (not e!117445))))

(declare-fun valid!994 (LongMapFixedSize!2392) Bool)

(assert (=> start!17872 (= res!84419 (valid!994 thiss!1248))))

(assert (=> start!17872 e!117445))

(declare-fun e!117446 () Bool)

(assert (=> start!17872 e!117446))

(assert (=> start!17872 true))

(declare-fun b!178145 () Bool)

(declare-fun res!84422 () Bool)

(assert (=> b!178145 (=> (not res!84422) (not e!117445))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!178145 (= res!84422 (not (= key!828 (bvneg key!828))))))

(declare-fun b!178146 () Bool)

(assert (=> b!178146 (= e!117445 (and (= (size!3861 (_values!3647 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8620 thiss!1248))) (= (size!3860 (_keys!5540 thiss!1248)) (size!3861 (_values!3647 thiss!1248))) (bvslt (mask!8620 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!178147 () Bool)

(declare-fun res!84420 () Bool)

(assert (=> b!178147 (=> (not res!84420) (not e!117445))))

(declare-datatypes ((tuple2!3308 0))(
  ( (tuple2!3309 (_1!1664 (_ BitVec 64)) (_2!1664 V!5209)) )
))
(declare-datatypes ((List!2280 0))(
  ( (Nil!2277) (Cons!2276 (h!2899 tuple2!3308) (t!7124 List!2280)) )
))
(declare-datatypes ((ListLongMap!2249 0))(
  ( (ListLongMap!2250 (toList!1140 List!2280)) )
))
(declare-fun contains!1204 (ListLongMap!2249 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!787 (array!7498 array!7500 (_ BitVec 32) (_ BitVec 32) V!5209 V!5209 (_ BitVec 32) Int) ListLongMap!2249)

(assert (=> b!178147 (= res!84420 (not (contains!1204 (getCurrentListMap!787 (_keys!5540 thiss!1248) (_values!3647 thiss!1248) (mask!8620 thiss!1248) (extraKeys!3401 thiss!1248) (zeroValue!3505 thiss!1248) (minValue!3505 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3664 thiss!1248)) key!828)))))

(declare-fun e!117443 () Bool)

(declare-fun array_inv!2273 (array!7498) Bool)

(declare-fun array_inv!2274 (array!7500) Bool)

(assert (=> b!178148 (= e!117446 (and tp!15907 tp_is_empty!4171 (array_inv!2273 (_keys!5540 thiss!1248)) (array_inv!2274 (_values!3647 thiss!1248)) e!117443))))

(declare-fun mapNonEmpty!7130 () Bool)

(declare-fun mapRes!7130 () Bool)

(declare-fun tp!15908 () Bool)

(assert (=> mapNonEmpty!7130 (= mapRes!7130 (and tp!15908 e!117444))))

(declare-fun mapRest!7130 () (Array (_ BitVec 32) ValueCell!1742))

(declare-fun mapValue!7130 () ValueCell!1742)

(declare-fun mapKey!7130 () (_ BitVec 32))

(assert (=> mapNonEmpty!7130 (= (arr!3555 (_values!3647 thiss!1248)) (store mapRest!7130 mapKey!7130 mapValue!7130))))

(declare-fun mapIsEmpty!7130 () Bool)

(assert (=> mapIsEmpty!7130 mapRes!7130))

(declare-fun b!178149 () Bool)

(declare-fun res!84423 () Bool)

(assert (=> b!178149 (=> (not res!84423) (not e!117445))))

(declare-datatypes ((SeekEntryResult!582 0))(
  ( (MissingZero!582 (index!4496 (_ BitVec 32))) (Found!582 (index!4497 (_ BitVec 32))) (Intermediate!582 (undefined!1394 Bool) (index!4498 (_ BitVec 32)) (x!19532 (_ BitVec 32))) (Undefined!582) (MissingVacant!582 (index!4499 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7498 (_ BitVec 32)) SeekEntryResult!582)

(assert (=> b!178149 (= res!84423 (is-Undefined!582 (seekEntryOrOpen!0 key!828 (_keys!5540 thiss!1248) (mask!8620 thiss!1248))))))

(declare-fun b!178150 () Bool)

(declare-fun e!117442 () Bool)

(assert (=> b!178150 (= e!117443 (and e!117442 mapRes!7130))))

(declare-fun condMapEmpty!7130 () Bool)

(declare-fun mapDefault!7130 () ValueCell!1742)


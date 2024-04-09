; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15974 () Bool)

(assert start!15974)

(declare-fun b!158538 () Bool)

(declare-fun b_free!3487 () Bool)

(declare-fun b_next!3487 () Bool)

(assert (=> b!158538 (= b_free!3487 (not b_next!3487))))

(declare-fun tp!13017 () Bool)

(declare-fun b_and!9919 () Bool)

(assert (=> b!158538 (= tp!13017 b_and!9919)))

(declare-fun b!158535 () Bool)

(declare-fun e!103835 () Bool)

(declare-fun tp_is_empty!3289 () Bool)

(assert (=> b!158535 (= e!103835 tp_is_empty!3289)))

(declare-fun b!158536 () Bool)

(declare-fun e!103833 () Bool)

(assert (=> b!158536 (= e!103833 tp_is_empty!3289)))

(declare-fun mapIsEmpty!5608 () Bool)

(declare-fun mapRes!5608 () Bool)

(assert (=> mapIsEmpty!5608 mapRes!5608))

(declare-fun b!158537 () Bool)

(declare-fun res!74881 () Bool)

(declare-fun e!103834 () Bool)

(assert (=> b!158537 (=> (not res!74881) (not e!103834))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4033 0))(
  ( (V!4034 (val!1689 Int)) )
))
(declare-datatypes ((ValueCell!1301 0))(
  ( (ValueCellFull!1301 (v!3550 V!4033)) (EmptyCell!1301) )
))
(declare-datatypes ((array!5648 0))(
  ( (array!5649 (arr!2672 (Array (_ BitVec 32) (_ BitVec 64))) (size!2955 (_ BitVec 32))) )
))
(declare-datatypes ((array!5650 0))(
  ( (array!5651 (arr!2673 (Array (_ BitVec 32) ValueCell!1301)) (size!2956 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1510 0))(
  ( (LongMapFixedSize!1511 (defaultEntry!3197 Int) (mask!7720 (_ BitVec 32)) (extraKeys!2938 (_ BitVec 32)) (zeroValue!3040 V!4033) (minValue!3040 V!4033) (_size!804 (_ BitVec 32)) (_keys!4988 array!5648) (_values!3180 array!5650) (_vacant!804 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1510)

(declare-datatypes ((SeekEntryResult!310 0))(
  ( (MissingZero!310 (index!3408 (_ BitVec 32))) (Found!310 (index!3409 (_ BitVec 32))) (Intermediate!310 (undefined!1122 Bool) (index!3410 (_ BitVec 32)) (x!17517 (_ BitVec 32))) (Undefined!310) (MissingVacant!310 (index!3411 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5648 (_ BitVec 32)) SeekEntryResult!310)

(assert (=> b!158537 (= res!74881 (is-Undefined!310 (seekEntryOrOpen!0 key!828 (_keys!4988 thiss!1248) (mask!7720 thiss!1248))))))

(declare-fun e!103832 () Bool)

(declare-fun e!103831 () Bool)

(declare-fun array_inv!1691 (array!5648) Bool)

(declare-fun array_inv!1692 (array!5650) Bool)

(assert (=> b!158538 (= e!103831 (and tp!13017 tp_is_empty!3289 (array_inv!1691 (_keys!4988 thiss!1248)) (array_inv!1692 (_values!3180 thiss!1248)) e!103832))))

(declare-fun mapNonEmpty!5608 () Bool)

(declare-fun tp!13018 () Bool)

(assert (=> mapNonEmpty!5608 (= mapRes!5608 (and tp!13018 e!103833))))

(declare-fun mapValue!5608 () ValueCell!1301)

(declare-fun mapRest!5608 () (Array (_ BitVec 32) ValueCell!1301))

(declare-fun mapKey!5608 () (_ BitVec 32))

(assert (=> mapNonEmpty!5608 (= (arr!2673 (_values!3180 thiss!1248)) (store mapRest!5608 mapKey!5608 mapValue!5608))))

(declare-fun b!158539 () Bool)

(declare-fun res!74879 () Bool)

(assert (=> b!158539 (=> (not res!74879) (not e!103834))))

(assert (=> b!158539 (= res!74879 (not (= key!828 (bvneg key!828))))))

(declare-fun res!74878 () Bool)

(assert (=> start!15974 (=> (not res!74878) (not e!103834))))

(declare-fun valid!708 (LongMapFixedSize!1510) Bool)

(assert (=> start!15974 (= res!74878 (valid!708 thiss!1248))))

(assert (=> start!15974 e!103834))

(assert (=> start!15974 e!103831))

(assert (=> start!15974 true))

(declare-fun b!158540 () Bool)

(assert (=> b!158540 (= e!103832 (and e!103835 mapRes!5608))))

(declare-fun condMapEmpty!5608 () Bool)

(declare-fun mapDefault!5608 () ValueCell!1301)


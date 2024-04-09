; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19490 () Bool)

(assert start!19490)

(declare-fun b!191267 () Bool)

(declare-fun b_free!4679 () Bool)

(declare-fun b_next!4679 () Bool)

(assert (=> b!191267 (= b_free!4679 (not b_next!4679))))

(declare-fun tp!16884 () Bool)

(declare-fun b_and!11367 () Bool)

(assert (=> b!191267 (= tp!16884 b_and!11367)))

(declare-fun res!90414 () Bool)

(declare-fun e!125882 () Bool)

(assert (=> start!19490 (=> (not res!90414) (not e!125882))))

(declare-datatypes ((V!5581 0))(
  ( (V!5582 (val!2270 Int)) )
))
(declare-datatypes ((ValueCell!1882 0))(
  ( (ValueCellFull!1882 (v!4203 V!5581)) (EmptyCell!1882) )
))
(declare-datatypes ((array!8138 0))(
  ( (array!8139 (arr!3834 (Array (_ BitVec 32) (_ BitVec 64))) (size!4156 (_ BitVec 32))) )
))
(declare-datatypes ((array!8140 0))(
  ( (array!8141 (arr!3835 (Array (_ BitVec 32) ValueCell!1882)) (size!4157 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2672 0))(
  ( (LongMapFixedSize!2673 (defaultEntry!3904 Int) (mask!9120 (_ BitVec 32)) (extraKeys!3641 (_ BitVec 32)) (zeroValue!3745 V!5581) (minValue!3745 V!5581) (_size!1385 (_ BitVec 32)) (_keys!5881 array!8138) (_values!3887 array!8140) (_vacant!1385 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2672)

(declare-fun valid!1089 (LongMapFixedSize!2672) Bool)

(assert (=> start!19490 (= res!90414 (valid!1089 thiss!1248))))

(assert (=> start!19490 e!125882))

(declare-fun e!125879 () Bool)

(assert (=> start!19490 e!125879))

(assert (=> start!19490 true))

(declare-fun tp_is_empty!4451 () Bool)

(assert (=> start!19490 tp_is_empty!4451))

(declare-fun b!191259 () Bool)

(declare-fun res!90412 () Bool)

(assert (=> b!191259 (=> (not res!90412) (not e!125882))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!191259 (= res!90412 (not (= key!828 (bvneg key!828))))))

(declare-fun b!191260 () Bool)

(declare-fun e!125878 () Bool)

(declare-fun e!125880 () Bool)

(declare-fun mapRes!7686 () Bool)

(assert (=> b!191260 (= e!125878 (and e!125880 mapRes!7686))))

(declare-fun condMapEmpty!7686 () Bool)

(declare-fun mapDefault!7686 () ValueCell!1882)


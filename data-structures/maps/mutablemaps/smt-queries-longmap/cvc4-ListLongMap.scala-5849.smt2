; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75614 () Bool)

(assert start!75614)

(declare-fun b!888819 () Bool)

(declare-fun b_free!15599 () Bool)

(declare-fun b_next!15599 () Bool)

(assert (=> b!888819 (= b_free!15599 (not b_next!15599))))

(declare-fun tp!54755 () Bool)

(declare-fun b_and!25857 () Bool)

(assert (=> b!888819 (= tp!54755 b_and!25857)))

(declare-fun b!888816 () Bool)

(declare-fun e!495392 () Bool)

(declare-fun tp_is_empty!17927 () Bool)

(assert (=> b!888816 (= e!495392 tp_is_empty!17927)))

(declare-fun b!888817 () Bool)

(declare-fun e!495395 () Bool)

(declare-fun e!495397 () Bool)

(declare-fun mapRes!28434 () Bool)

(assert (=> b!888817 (= e!495395 (and e!495397 mapRes!28434))))

(declare-fun condMapEmpty!28434 () Bool)

(declare-datatypes ((array!51814 0))(
  ( (array!51815 (arr!24912 (Array (_ BitVec 32) (_ BitVec 64))) (size!25355 (_ BitVec 32))) )
))
(declare-datatypes ((V!28867 0))(
  ( (V!28868 (val!9014 Int)) )
))
(declare-datatypes ((ValueCell!8482 0))(
  ( (ValueCellFull!8482 (v!11486 V!28867)) (EmptyCell!8482) )
))
(declare-datatypes ((array!51816 0))(
  ( (array!51817 (arr!24913 (Array (_ BitVec 32) ValueCell!8482)) (size!25356 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3980 0))(
  ( (LongMapFixedSize!3981 (defaultEntry!5187 Int) (mask!25614 (_ BitVec 32)) (extraKeys!4881 (_ BitVec 32)) (zeroValue!4985 V!28867) (minValue!4985 V!28867) (_size!2045 (_ BitVec 32)) (_keys!9864 array!51814) (_values!5172 array!51816) (_vacant!2045 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3980)

(declare-fun mapDefault!28434 () ValueCell!8482)


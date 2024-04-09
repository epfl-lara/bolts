; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17740 () Bool)

(assert start!17740)

(declare-fun b!177192 () Bool)

(declare-fun b_free!4381 () Bool)

(declare-fun b_next!4381 () Bool)

(assert (=> b!177192 (= b_free!4381 (not b_next!4381))))

(declare-fun tp!15842 () Bool)

(declare-fun b_and!10899 () Bool)

(assert (=> b!177192 (= tp!15842 b_and!10899)))

(declare-fun b!177188 () Bool)

(declare-fun e!116861 () Bool)

(declare-fun e!116862 () Bool)

(declare-fun mapRes!7092 () Bool)

(assert (=> b!177188 (= e!116861 (and e!116862 mapRes!7092))))

(declare-fun condMapEmpty!7092 () Bool)

(declare-datatypes ((V!5185 0))(
  ( (V!5186 (val!2121 Int)) )
))
(declare-datatypes ((ValueCell!1733 0))(
  ( (ValueCellFull!1733 (v!3997 V!5185)) (EmptyCell!1733) )
))
(declare-datatypes ((array!7456 0))(
  ( (array!7457 (arr!3536 (Array (_ BitVec 32) (_ BitVec 64))) (size!3840 (_ BitVec 32))) )
))
(declare-datatypes ((array!7458 0))(
  ( (array!7459 (arr!3537 (Array (_ BitVec 32) ValueCell!1733)) (size!3841 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2374 0))(
  ( (LongMapFixedSize!2375 (defaultEntry!3650 Int) (mask!8586 (_ BitVec 32)) (extraKeys!3387 (_ BitVec 32)) (zeroValue!3491 V!5185) (minValue!3491 V!5185) (_size!1236 (_ BitVec 32)) (_keys!5517 array!7456) (_values!3633 array!7458) (_vacant!1236 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2374)

(declare-fun mapDefault!7092 () ValueCell!1733)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16222 () Bool)

(assert start!16222)

(declare-fun b!161657 () Bool)

(declare-fun b_free!3671 () Bool)

(declare-fun b_next!3671 () Bool)

(assert (=> b!161657 (= b_free!3671 (not b_next!3671))))

(declare-fun tp!13582 () Bool)

(declare-fun b_and!10103 () Bool)

(assert (=> b!161657 (= tp!13582 b_and!10103)))

(declare-fun b!161652 () Bool)

(declare-fun res!76606 () Bool)

(declare-fun e!105715 () Bool)

(assert (=> b!161652 (=> (not res!76606) (not e!105715))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!161652 (= res!76606 (not (= key!828 (bvneg key!828))))))

(declare-fun b!161653 () Bool)

(declare-fun e!105711 () Bool)

(declare-fun tp_is_empty!3473 () Bool)

(assert (=> b!161653 (= e!105711 tp_is_empty!3473)))

(declare-fun b!161654 () Bool)

(declare-fun e!105713 () Bool)

(assert (=> b!161654 (= e!105713 tp_is_empty!3473)))

(declare-fun b!161655 () Bool)

(declare-fun e!105714 () Bool)

(declare-fun mapRes!5897 () Bool)

(assert (=> b!161655 (= e!105714 (and e!105711 mapRes!5897))))

(declare-fun condMapEmpty!5897 () Bool)

(declare-datatypes ((V!4277 0))(
  ( (V!4278 (val!1781 Int)) )
))
(declare-datatypes ((ValueCell!1393 0))(
  ( (ValueCellFull!1393 (v!3642 V!4277)) (EmptyCell!1393) )
))
(declare-datatypes ((array!6024 0))(
  ( (array!6025 (arr!2856 (Array (_ BitVec 32) (_ BitVec 64))) (size!3140 (_ BitVec 32))) )
))
(declare-datatypes ((array!6026 0))(
  ( (array!6027 (arr!2857 (Array (_ BitVec 32) ValueCell!1393)) (size!3141 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1694 0))(
  ( (LongMapFixedSize!1695 (defaultEntry!3289 Int) (mask!7887 (_ BitVec 32)) (extraKeys!3030 (_ BitVec 32)) (zeroValue!3132 V!4277) (minValue!3132 V!4277) (_size!896 (_ BitVec 32)) (_keys!5090 array!6024) (_values!3272 array!6026) (_vacant!896 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1694)

(declare-fun mapDefault!5897 () ValueCell!1393)


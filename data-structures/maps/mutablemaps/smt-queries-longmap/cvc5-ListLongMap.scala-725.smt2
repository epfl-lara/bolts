; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16938 () Bool)

(assert start!16938)

(declare-fun b!170208 () Bool)

(declare-fun b_free!4189 () Bool)

(declare-fun b_next!4189 () Bool)

(assert (=> b!170208 (= b_free!4189 (not b_next!4189))))

(declare-fun tp!15186 () Bool)

(declare-fun b_and!10621 () Bool)

(assert (=> b!170208 (= tp!15186 b_and!10621)))

(declare-fun b!170203 () Bool)

(declare-fun e!112297 () Bool)

(declare-fun e!112300 () Bool)

(declare-fun mapRes!6724 () Bool)

(assert (=> b!170203 (= e!112297 (and e!112300 mapRes!6724))))

(declare-fun condMapEmpty!6724 () Bool)

(declare-datatypes ((V!4929 0))(
  ( (V!4930 (val!2025 Int)) )
))
(declare-datatypes ((ValueCell!1637 0))(
  ( (ValueCellFull!1637 (v!3886 V!4929)) (EmptyCell!1637) )
))
(declare-datatypes ((array!7028 0))(
  ( (array!7029 (arr!3344 (Array (_ BitVec 32) (_ BitVec 64))) (size!3636 (_ BitVec 32))) )
))
(declare-datatypes ((array!7030 0))(
  ( (array!7031 (arr!3345 (Array (_ BitVec 32) ValueCell!1637)) (size!3637 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2182 0))(
  ( (LongMapFixedSize!2183 (defaultEntry!3533 Int) (mask!8341 (_ BitVec 32)) (extraKeys!3274 (_ BitVec 32)) (zeroValue!3376 V!4929) (minValue!3376 V!4929) (_size!1140 (_ BitVec 32)) (_keys!5362 array!7028) (_values!3516 array!7030) (_vacant!1140 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2182)

(declare-fun mapDefault!6724 () ValueCell!1637)


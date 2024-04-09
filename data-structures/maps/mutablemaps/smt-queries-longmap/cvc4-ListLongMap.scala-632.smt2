; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16156 () Bool)

(assert start!16156)

(declare-fun b!160739 () Bool)

(declare-fun b_free!3605 () Bool)

(declare-fun b_next!3605 () Bool)

(assert (=> b!160739 (= b_free!3605 (not b_next!3605))))

(declare-fun tp!13385 () Bool)

(declare-fun b_and!10037 () Bool)

(assert (=> b!160739 (= tp!13385 b_and!10037)))

(declare-fun b!160738 () Bool)

(declare-fun e!105073 () Bool)

(declare-fun e!105075 () Bool)

(declare-fun mapRes!5798 () Bool)

(assert (=> b!160738 (= e!105073 (and e!105075 mapRes!5798))))

(declare-fun condMapEmpty!5798 () Bool)

(declare-datatypes ((V!4189 0))(
  ( (V!4190 (val!1748 Int)) )
))
(declare-datatypes ((ValueCell!1360 0))(
  ( (ValueCellFull!1360 (v!3609 V!4189)) (EmptyCell!1360) )
))
(declare-datatypes ((array!5892 0))(
  ( (array!5893 (arr!2790 (Array (_ BitVec 32) (_ BitVec 64))) (size!3074 (_ BitVec 32))) )
))
(declare-datatypes ((array!5894 0))(
  ( (array!5895 (arr!2791 (Array (_ BitVec 32) ValueCell!1360)) (size!3075 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1628 0))(
  ( (LongMapFixedSize!1629 (defaultEntry!3256 Int) (mask!7832 (_ BitVec 32)) (extraKeys!2997 (_ BitVec 32)) (zeroValue!3099 V!4189) (minValue!3099 V!4189) (_size!863 (_ BitVec 32)) (_keys!5057 array!5892) (_values!3239 array!5894) (_vacant!863 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1628)

(declare-fun mapDefault!5798 () ValueCell!1360)


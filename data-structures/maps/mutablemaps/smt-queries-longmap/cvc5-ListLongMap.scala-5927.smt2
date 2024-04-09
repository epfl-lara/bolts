; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77250 () Bool)

(assert start!77250)

(declare-fun b!900834 () Bool)

(declare-fun b_free!16063 () Bool)

(declare-fun b_next!16063 () Bool)

(assert (=> b!900834 (= b_free!16063 (not b_next!16063))))

(declare-fun tp!56287 () Bool)

(declare-fun b_and!26407 () Bool)

(assert (=> b!900834 (= tp!56287 b_and!26407)))

(declare-fun b!900833 () Bool)

(declare-fun e!504304 () Bool)

(declare-fun e!504302 () Bool)

(declare-fun mapRes!29269 () Bool)

(assert (=> b!900833 (= e!504304 (and e!504302 mapRes!29269))))

(declare-fun condMapEmpty!29269 () Bool)

(declare-datatypes ((array!52822 0))(
  ( (array!52823 (arr!25376 (Array (_ BitVec 32) (_ BitVec 64))) (size!25836 (_ BitVec 32))) )
))
(declare-datatypes ((V!29487 0))(
  ( (V!29488 (val!9246 Int)) )
))
(declare-datatypes ((ValueCell!8714 0))(
  ( (ValueCellFull!8714 (v!11742 V!29487)) (EmptyCell!8714) )
))
(declare-datatypes ((array!52824 0))(
  ( (array!52825 (arr!25377 (Array (_ BitVec 32) ValueCell!8714)) (size!25837 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4444 0))(
  ( (LongMapFixedSize!4445 (defaultEntry!5460 Int) (mask!26254 (_ BitVec 32)) (extraKeys!5188 (_ BitVec 32)) (zeroValue!5292 V!29487) (minValue!5292 V!29487) (_size!2277 (_ BitVec 32)) (_keys!10266 array!52822) (_values!5479 array!52824) (_vacant!2277 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4444)

(declare-fun mapDefault!29269 () ValueCell!8714)


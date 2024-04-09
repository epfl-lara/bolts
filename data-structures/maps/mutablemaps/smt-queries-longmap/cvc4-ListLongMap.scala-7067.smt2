; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89496 () Bool)

(assert start!89496)

(declare-fun b!1025876 () Bool)

(declare-fun b_free!20459 () Bool)

(declare-fun b_next!20459 () Bool)

(assert (=> b!1025876 (= b_free!20459 (not b_next!20459))))

(declare-fun tp!72424 () Bool)

(declare-fun b_and!32723 () Bool)

(assert (=> b!1025876 (= tp!72424 b_and!32723)))

(declare-fun mapNonEmpty!37697 () Bool)

(declare-fun mapRes!37697 () Bool)

(declare-fun tp!72423 () Bool)

(declare-fun e!578575 () Bool)

(assert (=> mapNonEmpty!37697 (= mapRes!37697 (and tp!72423 e!578575))))

(declare-datatypes ((V!37111 0))(
  ( (V!37112 (val!12140 Int)) )
))
(declare-datatypes ((ValueCell!11386 0))(
  ( (ValueCellFull!11386 (v!14710 V!37111)) (EmptyCell!11386) )
))
(declare-fun mapRest!37697 () (Array (_ BitVec 32) ValueCell!11386))

(declare-datatypes ((array!64392 0))(
  ( (array!64393 (arr!31001 (Array (_ BitVec 32) (_ BitVec 64))) (size!31515 (_ BitVec 32))) )
))
(declare-datatypes ((array!64394 0))(
  ( (array!64395 (arr!31002 (Array (_ BitVec 32) ValueCell!11386)) (size!31516 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5366 0))(
  ( (LongMapFixedSize!5367 (defaultEntry!6035 Int) (mask!29710 (_ BitVec 32)) (extraKeys!5767 (_ BitVec 32)) (zeroValue!5871 V!37111) (minValue!5871 V!37111) (_size!2738 (_ BitVec 32)) (_keys!11179 array!64392) (_values!6058 array!64394) (_vacant!2738 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5366)

(declare-fun mapKey!37697 () (_ BitVec 32))

(declare-fun mapValue!37697 () ValueCell!11386)

(assert (=> mapNonEmpty!37697 (= (arr!31002 (_values!6058 thiss!1427)) (store mapRest!37697 mapKey!37697 mapValue!37697))))

(declare-fun b!1025869 () Bool)

(declare-fun e!578572 () Bool)

(declare-fun e!578569 () Bool)

(assert (=> b!1025869 (= e!578572 (and e!578569 mapRes!37697))))

(declare-fun condMapEmpty!37697 () Bool)

(declare-fun mapDefault!37697 () ValueCell!11386)


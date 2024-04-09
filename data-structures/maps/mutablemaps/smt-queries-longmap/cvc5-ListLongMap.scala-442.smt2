; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8276 () Bool)

(assert start!8276)

(declare-fun b!53028 () Bool)

(declare-fun b_free!1693 () Bool)

(declare-fun b_next!1693 () Bool)

(assert (=> b!53028 (= b_free!1693 (not b_next!1693))))

(declare-fun tp!7180 () Bool)

(declare-fun b_and!2937 () Bool)

(assert (=> b!53028 (= tp!7180 b_and!2937)))

(declare-fun b!53021 () Bool)

(declare-fun b_free!1695 () Bool)

(declare-fun b_next!1695 () Bool)

(assert (=> b!53021 (= b_free!1695 (not b_next!1695))))

(declare-fun tp!7182 () Bool)

(declare-fun b_and!2939 () Bool)

(assert (=> b!53021 (= tp!7182 b_and!2939)))

(declare-fun b!53008 () Bool)

(declare-fun e!34564 () Bool)

(declare-fun e!34572 () Bool)

(declare-fun mapRes!2460 () Bool)

(assert (=> b!53008 (= e!34564 (and e!34572 mapRes!2460))))

(declare-fun condMapEmpty!2460 () Bool)

(declare-datatypes ((V!2665 0))(
  ( (V!2666 (val!1176 Int)) )
))
(declare-datatypes ((array!3448 0))(
  ( (array!3449 (arr!1646 (Array (_ BitVec 32) (_ BitVec 64))) (size!1875 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!788 0))(
  ( (ValueCellFull!788 (v!2237 V!2665)) (EmptyCell!788) )
))
(declare-datatypes ((array!3450 0))(
  ( (array!3451 (arr!1647 (Array (_ BitVec 32) ValueCell!788)) (size!1876 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!484 0))(
  ( (LongMapFixedSize!485 (defaultEntry!1956 Int) (mask!5787 (_ BitVec 32)) (extraKeys!1847 (_ BitVec 32)) (zeroValue!1874 V!2665) (minValue!1874 V!2665) (_size!291 (_ BitVec 32)) (_keys!3576 array!3448) (_values!1939 array!3450) (_vacant!291 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!484)

(declare-fun mapDefault!2459 () ValueCell!788)


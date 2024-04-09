; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97464 () Bool)

(assert start!97464)

(declare-fun b_free!23399 () Bool)

(declare-fun b_next!23399 () Bool)

(assert (=> start!97464 (= b_free!23399 (not b_next!23399))))

(declare-fun tp!82497 () Bool)

(declare-fun b_and!37655 () Bool)

(assert (=> start!97464 (= tp!82497 b_and!37655)))

(declare-fun b!1111343 () Bool)

(declare-fun res!741711 () Bool)

(declare-fun e!633767 () Bool)

(assert (=> b!1111343 (=> (not res!741711) (not e!633767))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72182 0))(
  ( (array!72183 (arr!34740 (Array (_ BitVec 32) (_ BitVec 64))) (size!35277 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72182)

(assert (=> b!1111343 (= res!741711 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35277 _keys!1208))))))

(declare-fun b!1111344 () Bool)

(declare-fun res!741715 () Bool)

(assert (=> b!1111344 (=> (not res!741715) (not e!633767))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1111344 (= res!741715 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!43306 () Bool)

(declare-fun mapRes!43306 () Bool)

(declare-fun tp!82496 () Bool)

(declare-fun e!633760 () Bool)

(assert (=> mapNonEmpty!43306 (= mapRes!43306 (and tp!82496 e!633760))))

(declare-datatypes ((V!42005 0))(
  ( (V!42006 (val!13886 Int)) )
))
(declare-datatypes ((ValueCell!13120 0))(
  ( (ValueCellFull!13120 (v!16520 V!42005)) (EmptyCell!13120) )
))
(declare-fun mapValue!43306 () ValueCell!13120)

(declare-fun mapKey!43306 () (_ BitVec 32))

(declare-fun mapRest!43306 () (Array (_ BitVec 32) ValueCell!13120))

(declare-datatypes ((array!72184 0))(
  ( (array!72185 (arr!34741 (Array (_ BitVec 32) ValueCell!13120)) (size!35278 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72184)

(assert (=> mapNonEmpty!43306 (= (arr!34741 _values!996) (store mapRest!43306 mapKey!43306 mapValue!43306))))

(declare-fun b!1111345 () Bool)

(declare-fun e!633764 () Bool)

(declare-fun e!633763 () Bool)

(assert (=> b!1111345 (= e!633764 (and e!633763 mapRes!43306))))

(declare-fun condMapEmpty!43306 () Bool)

(declare-fun mapDefault!43306 () ValueCell!13120)


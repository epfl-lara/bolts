; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97938 () Bool)

(assert start!97938)

(declare-fun b_free!23603 () Bool)

(declare-fun b_next!23603 () Bool)

(assert (=> start!97938 (= b_free!23603 (not b_next!23603))))

(declare-fun tp!83513 () Bool)

(declare-fun b_and!38011 () Bool)

(assert (=> start!97938 (= tp!83513 b_and!38011)))

(declare-fun b!1121296 () Bool)

(declare-fun e!638481 () Bool)

(declare-fun tp_is_empty!28133 () Bool)

(assert (=> b!1121296 (= e!638481 tp_is_empty!28133)))

(declare-fun b!1121297 () Bool)

(declare-fun res!749169 () Bool)

(declare-fun e!638487 () Bool)

(assert (=> b!1121297 (=> (not res!749169) (not e!638487))))

(declare-datatypes ((array!73092 0))(
  ( (array!73093 (arr!35195 (Array (_ BitVec 32) (_ BitVec 64))) (size!35732 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73092)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42637 0))(
  ( (V!42638 (val!14123 Int)) )
))
(declare-datatypes ((ValueCell!13357 0))(
  ( (ValueCellFull!13357 (v!16757 V!42637)) (EmptyCell!13357) )
))
(declare-datatypes ((array!73094 0))(
  ( (array!73095 (arr!35196 (Array (_ BitVec 32) ValueCell!13357)) (size!35733 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73094)

(assert (=> b!1121297 (= res!749169 (and (= (size!35733 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35732 _keys!1208) (size!35733 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1121298 () Bool)

(declare-fun e!638489 () Bool)

(declare-fun e!638488 () Bool)

(declare-fun mapRes!44017 () Bool)

(assert (=> b!1121298 (= e!638489 (and e!638488 mapRes!44017))))

(declare-fun condMapEmpty!44017 () Bool)

(declare-fun mapDefault!44017 () ValueCell!13357)


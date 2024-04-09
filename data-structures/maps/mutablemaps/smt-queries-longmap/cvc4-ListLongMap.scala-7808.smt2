; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97632 () Bool)

(assert start!97632)

(declare-fun b!1114834 () Bool)

(declare-fun res!744284 () Bool)

(declare-fun e!635388 () Bool)

(assert (=> b!1114834 (=> (not res!744284) (not e!635388))))

(declare-datatypes ((array!72502 0))(
  ( (array!72503 (arr!34900 (Array (_ BitVec 32) (_ BitVec 64))) (size!35437 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72502)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1114834 (= res!744284 (= (select (arr!34900 _keys!1208) i!673) k!934))))

(declare-fun b!1114835 () Bool)

(declare-fun e!635390 () Bool)

(declare-fun tp_is_empty!27827 () Bool)

(assert (=> b!1114835 (= e!635390 tp_is_empty!27827)))

(declare-fun b!1114836 () Bool)

(declare-fun res!744290 () Bool)

(assert (=> b!1114836 (=> (not res!744290) (not e!635388))))

(assert (=> b!1114836 (= res!744290 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35437 _keys!1208))))))

(declare-fun b!1114837 () Bool)

(declare-fun e!635393 () Bool)

(assert (=> b!1114837 (= e!635393 (not true))))

(declare-fun arrayContainsKey!0 (array!72502 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1114837 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36495 0))(
  ( (Unit!36496) )
))
(declare-fun lt!496869 () Unit!36495)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72502 (_ BitVec 64) (_ BitVec 32)) Unit!36495)

(assert (=> b!1114837 (= lt!496869 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1114838 () Bool)

(declare-fun e!635392 () Bool)

(declare-fun mapRes!43558 () Bool)

(assert (=> b!1114838 (= e!635392 (and e!635390 mapRes!43558))))

(declare-fun condMapEmpty!43558 () Bool)

(declare-datatypes ((V!42229 0))(
  ( (V!42230 (val!13970 Int)) )
))
(declare-datatypes ((ValueCell!13204 0))(
  ( (ValueCellFull!13204 (v!16604 V!42229)) (EmptyCell!13204) )
))
(declare-datatypes ((array!72504 0))(
  ( (array!72505 (arr!34901 (Array (_ BitVec 32) ValueCell!13204)) (size!35438 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72504)

(declare-fun mapDefault!43558 () ValueCell!13204)


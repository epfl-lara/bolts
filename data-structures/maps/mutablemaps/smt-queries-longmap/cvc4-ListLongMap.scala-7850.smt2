; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97884 () Bool)

(assert start!97884)

(declare-fun b_free!23549 () Bool)

(declare-fun b_next!23549 () Bool)

(assert (=> start!97884 (= b_free!23549 (not b_next!23549))))

(declare-fun tp!83351 () Bool)

(declare-fun b_and!37903 () Bool)

(assert (=> start!97884 (= tp!83351 b_and!37903)))

(declare-fun b!1119976 () Bool)

(declare-fun res!748232 () Bool)

(declare-fun e!637830 () Bool)

(assert (=> b!1119976 (=> (not res!748232) (not e!637830))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1119976 (= res!748232 (validKeyInArray!0 k!934))))

(declare-fun b!1119977 () Bool)

(declare-fun e!637827 () Bool)

(declare-fun tp_is_empty!28079 () Bool)

(assert (=> b!1119977 (= e!637827 tp_is_empty!28079)))

(declare-fun b!1119978 () Bool)

(declare-fun res!748241 () Bool)

(assert (=> b!1119978 (=> (not res!748241) (not e!637830))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72984 0))(
  ( (array!72985 (arr!35141 (Array (_ BitVec 32) (_ BitVec 64))) (size!35678 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72984)

(assert (=> b!1119978 (= res!748241 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35678 _keys!1208))))))

(declare-fun b!1119979 () Bool)

(declare-fun e!637826 () Bool)

(declare-fun e!637828 () Bool)

(declare-fun mapRes!43936 () Bool)

(assert (=> b!1119979 (= e!637826 (and e!637828 mapRes!43936))))

(declare-fun condMapEmpty!43936 () Bool)

(declare-datatypes ((V!42565 0))(
  ( (V!42566 (val!14096 Int)) )
))
(declare-datatypes ((ValueCell!13330 0))(
  ( (ValueCellFull!13330 (v!16730 V!42565)) (EmptyCell!13330) )
))
(declare-datatypes ((array!72986 0))(
  ( (array!72987 (arr!35142 (Array (_ BitVec 32) ValueCell!13330)) (size!35679 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72986)

(declare-fun mapDefault!43936 () ValueCell!13330)


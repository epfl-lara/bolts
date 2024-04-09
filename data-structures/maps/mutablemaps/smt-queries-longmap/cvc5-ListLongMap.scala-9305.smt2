; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111258 () Bool)

(assert start!111258)

(declare-fun mapNonEmpty!55247 () Bool)

(declare-fun mapRes!55247 () Bool)

(declare-fun tp!105354 () Bool)

(declare-fun e!751141 () Bool)

(assert (=> mapNonEmpty!55247 (= mapRes!55247 (and tp!105354 e!751141))))

(declare-datatypes ((V!52761 0))(
  ( (V!52762 (val!17946 Int)) )
))
(declare-datatypes ((ValueCell!16973 0))(
  ( (ValueCellFull!16973 (v!20573 V!52761)) (EmptyCell!16973) )
))
(declare-fun mapValue!55247 () ValueCell!16973)

(declare-fun mapKey!55247 () (_ BitVec 32))

(declare-datatypes ((array!88401 0))(
  ( (array!88402 (arr!42675 (Array (_ BitVec 32) ValueCell!16973)) (size!43226 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88401)

(declare-fun mapRest!55247 () (Array (_ BitVec 32) ValueCell!16973))

(assert (=> mapNonEmpty!55247 (= (arr!42675 _values!1337) (store mapRest!55247 mapKey!55247 mapValue!55247))))

(declare-fun b!1316604 () Bool)

(declare-fun e!751140 () Bool)

(declare-fun e!751138 () Bool)

(assert (=> b!1316604 (= e!751140 (and e!751138 mapRes!55247))))

(declare-fun condMapEmpty!55247 () Bool)

(declare-fun mapDefault!55247 () ValueCell!16973)


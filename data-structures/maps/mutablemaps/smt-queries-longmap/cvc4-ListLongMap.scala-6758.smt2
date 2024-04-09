; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84832 () Bool)

(assert start!84832)

(declare-fun b!991319 () Bool)

(declare-fun e!559100 () Bool)

(declare-fun tp_is_empty!23327 () Bool)

(assert (=> b!991319 (= e!559100 tp_is_empty!23327)))

(declare-fun mapIsEmpty!37047 () Bool)

(declare-fun mapRes!37047 () Bool)

(assert (=> mapIsEmpty!37047 mapRes!37047))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(declare-datatypes ((V!36085 0))(
  ( (V!36086 (val!11714 Int)) )
))
(declare-datatypes ((ValueCell!11182 0))(
  ( (ValueCellFull!11182 (v!14290 V!36085)) (EmptyCell!11182) )
))
(declare-datatypes ((array!62601 0))(
  ( (array!62602 (arr!30146 (Array (_ BitVec 32) ValueCell!11182)) (size!30626 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62601)

(declare-fun e!559101 () Bool)

(declare-fun b!991320 () Bool)

(declare-fun mask!2471 () (_ BitVec 32))

(declare-datatypes ((array!62603 0))(
  ( (array!62604 (arr!30147 (Array (_ BitVec 32) (_ BitVec 64))) (size!30627 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62603)

(assert (=> b!991320 (= e!559101 (and (= (size!30626 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30627 _keys!1945) (size!30626 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011) (= (size!30627 _keys!1945) (bvadd #b00000000000000000000000000000001 mask!2471)) (bvsgt #b00000000000000000000000000000000 (size!30627 _keys!1945))))))

(declare-fun mapNonEmpty!37047 () Bool)

(declare-fun tp!70119 () Bool)

(declare-fun e!559098 () Bool)

(assert (=> mapNonEmpty!37047 (= mapRes!37047 (and tp!70119 e!559098))))

(declare-fun mapKey!37047 () (_ BitVec 32))

(declare-fun mapRest!37047 () (Array (_ BitVec 32) ValueCell!11182))

(declare-fun mapValue!37047 () ValueCell!11182)

(assert (=> mapNonEmpty!37047 (= (arr!30146 _values!1551) (store mapRest!37047 mapKey!37047 mapValue!37047))))

(declare-fun b!991321 () Bool)

(declare-fun e!559097 () Bool)

(assert (=> b!991321 (= e!559097 (and e!559100 mapRes!37047))))

(declare-fun condMapEmpty!37047 () Bool)

(declare-fun mapDefault!37047 () ValueCell!11182)


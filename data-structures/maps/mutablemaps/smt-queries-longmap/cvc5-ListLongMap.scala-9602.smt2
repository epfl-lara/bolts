; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113568 () Bool)

(assert start!113568)

(declare-fun b_free!31525 () Bool)

(declare-fun b_next!31525 () Bool)

(assert (=> start!113568 (= b_free!31525 (not b_next!31525))))

(declare-fun tp!110385 () Bool)

(declare-fun b_and!50849 () Bool)

(assert (=> start!113568 (= tp!110385 b_and!50849)))

(declare-fun b!1347516 () Bool)

(declare-fun e!766715 () Bool)

(declare-fun tp_is_empty!37525 () Bool)

(assert (=> b!1347516 (= e!766715 tp_is_empty!37525)))

(declare-fun b!1347517 () Bool)

(declare-fun res!894167 () Bool)

(declare-fun e!766714 () Bool)

(assert (=> b!1347517 (=> (not res!894167) (not e!766714))))

(declare-datatypes ((array!91841 0))(
  ( (array!91842 (arr!44371 (Array (_ BitVec 32) (_ BitVec 64))) (size!44922 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91841)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91841 (_ BitVec 32)) Bool)

(assert (=> b!1347517 (= res!894167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1347518 () Bool)

(declare-fun res!894162 () Bool)

(assert (=> b!1347518 (=> (not res!894162) (not e!766714))))

(declare-datatypes ((V!55137 0))(
  ( (V!55138 (val!18837 Int)) )
))
(declare-fun minValue!1245 () V!55137)

(declare-fun zeroValue!1245 () V!55137)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17864 0))(
  ( (ValueCellFull!17864 (v!21486 V!55137)) (EmptyCell!17864) )
))
(declare-datatypes ((array!91843 0))(
  ( (array!91844 (arr!44372 (Array (_ BitVec 32) ValueCell!17864)) (size!44923 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91843)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24424 0))(
  ( (tuple2!24425 (_1!12222 (_ BitVec 64)) (_2!12222 V!55137)) )
))
(declare-datatypes ((List!31594 0))(
  ( (Nil!31591) (Cons!31590 (h!32799 tuple2!24424) (t!46205 List!31594)) )
))
(declare-datatypes ((ListLongMap!22093 0))(
  ( (ListLongMap!22094 (toList!11062 List!31594)) )
))
(declare-fun contains!9175 (ListLongMap!22093 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5952 (array!91841 array!91843 (_ BitVec 32) (_ BitVec 32) V!55137 V!55137 (_ BitVec 32) Int) ListLongMap!22093)

(assert (=> b!1347518 (= res!894162 (contains!9175 (getCurrentListMap!5952 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun mapIsEmpty!57998 () Bool)

(declare-fun mapRes!57998 () Bool)

(assert (=> mapIsEmpty!57998 mapRes!57998))

(declare-fun b!1347519 () Bool)

(declare-fun res!894168 () Bool)

(assert (=> b!1347519 (=> (not res!894168) (not e!766714))))

(assert (=> b!1347519 (= res!894168 (and (= (size!44923 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44922 _keys!1571) (size!44923 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57998 () Bool)

(declare-fun tp!110384 () Bool)

(assert (=> mapNonEmpty!57998 (= mapRes!57998 (and tp!110384 e!766715))))

(declare-fun mapKey!57998 () (_ BitVec 32))

(declare-fun mapRest!57998 () (Array (_ BitVec 32) ValueCell!17864))

(declare-fun mapValue!57998 () ValueCell!17864)

(assert (=> mapNonEmpty!57998 (= (arr!44372 _values!1303) (store mapRest!57998 mapKey!57998 mapValue!57998))))

(declare-fun b!1347520 () Bool)

(declare-fun e!766712 () Bool)

(declare-fun e!766711 () Bool)

(assert (=> b!1347520 (= e!766712 (and e!766711 mapRes!57998))))

(declare-fun condMapEmpty!57998 () Bool)

(declare-fun mapDefault!57998 () ValueCell!17864)


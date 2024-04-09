; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113088 () Bool)

(assert start!113088)

(declare-fun b_free!31103 () Bool)

(declare-fun b_next!31103 () Bool)

(assert (=> start!113088 (= b_free!31103 (not b_next!31103))))

(declare-fun tp!109114 () Bool)

(declare-fun b_and!50143 () Bool)

(assert (=> start!113088 (= tp!109114 b_and!50143)))

(declare-fun b!1339855 () Bool)

(declare-fun res!888893 () Bool)

(declare-fun e!763223 () Bool)

(assert (=> b!1339855 (=> (not res!888893) (not e!763223))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54573 0))(
  ( (V!54574 (val!18626 Int)) )
))
(declare-datatypes ((ValueCell!17653 0))(
  ( (ValueCellFull!17653 (v!21272 V!54573)) (EmptyCell!17653) )
))
(declare-datatypes ((array!91023 0))(
  ( (array!91024 (arr!43963 (Array (_ BitVec 32) ValueCell!17653)) (size!44514 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91023)

(declare-datatypes ((array!91025 0))(
  ( (array!91026 (arr!43964 (Array (_ BitVec 32) (_ BitVec 64))) (size!44515 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91025)

(assert (=> b!1339855 (= res!888893 (and (= (size!44514 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44515 _keys!1571) (size!44514 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57361 () Bool)

(declare-fun mapRes!57361 () Bool)

(assert (=> mapIsEmpty!57361 mapRes!57361))

(declare-fun mapNonEmpty!57361 () Bool)

(declare-fun tp!109115 () Bool)

(declare-fun e!763224 () Bool)

(assert (=> mapNonEmpty!57361 (= mapRes!57361 (and tp!109115 e!763224))))

(declare-fun mapValue!57361 () ValueCell!17653)

(declare-fun mapKey!57361 () (_ BitVec 32))

(declare-fun mapRest!57361 () (Array (_ BitVec 32) ValueCell!17653))

(assert (=> mapNonEmpty!57361 (= (arr!43963 _values!1303) (store mapRest!57361 mapKey!57361 mapValue!57361))))

(declare-fun b!1339856 () Bool)

(declare-fun e!763225 () Bool)

(declare-fun tp_is_empty!37103 () Bool)

(assert (=> b!1339856 (= e!763225 tp_is_empty!37103)))

(declare-fun b!1339857 () Bool)

(declare-fun e!763226 () Bool)

(assert (=> b!1339857 (= e!763226 (and e!763225 mapRes!57361))))

(declare-fun condMapEmpty!57361 () Bool)

(declare-fun mapDefault!57361 () ValueCell!17653)


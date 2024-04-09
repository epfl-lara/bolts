; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113390 () Bool)

(assert start!113390)

(declare-fun b_free!31405 () Bool)

(declare-fun b_next!31405 () Bool)

(assert (=> start!113390 (= b_free!31405 (not b_next!31405))))

(declare-fun tp!110020 () Bool)

(declare-fun b_and!50673 () Bool)

(assert (=> start!113390 (= tp!110020 b_and!50673)))

(declare-fun b!1345213 () Bool)

(declare-fun res!892672 () Bool)

(declare-fun e!765525 () Bool)

(assert (=> b!1345213 (=> (not res!892672) (not e!765525))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91607 0))(
  ( (array!91608 (arr!44255 (Array (_ BitVec 32) (_ BitVec 64))) (size!44806 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91607)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54977 0))(
  ( (V!54978 (val!18777 Int)) )
))
(declare-datatypes ((ValueCell!17804 0))(
  ( (ValueCellFull!17804 (v!21423 V!54977)) (EmptyCell!17804) )
))
(declare-datatypes ((array!91609 0))(
  ( (array!91610 (arr!44256 (Array (_ BitVec 32) ValueCell!17804)) (size!44807 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91609)

(assert (=> b!1345213 (= res!892672 (and (= (size!44807 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44806 _keys!1571) (size!44807 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57814 () Bool)

(declare-fun mapRes!57814 () Bool)

(declare-fun tp!110021 () Bool)

(declare-fun e!765527 () Bool)

(assert (=> mapNonEmpty!57814 (= mapRes!57814 (and tp!110021 e!765527))))

(declare-fun mapKey!57814 () (_ BitVec 32))

(declare-fun mapRest!57814 () (Array (_ BitVec 32) ValueCell!17804))

(declare-fun mapValue!57814 () ValueCell!17804)

(assert (=> mapNonEmpty!57814 (= (arr!44256 _values!1303) (store mapRest!57814 mapKey!57814 mapValue!57814))))

(declare-fun b!1345214 () Bool)

(declare-fun e!765528 () Bool)

(declare-fun tp_is_empty!37405 () Bool)

(assert (=> b!1345214 (= e!765528 tp_is_empty!37405)))

(declare-fun res!892663 () Bool)

(assert (=> start!113390 (=> (not res!892663) (not e!765525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113390 (= res!892663 (validMask!0 mask!1977))))

(assert (=> start!113390 e!765525))

(assert (=> start!113390 tp_is_empty!37405))

(assert (=> start!113390 true))

(declare-fun array_inv!33263 (array!91607) Bool)

(assert (=> start!113390 (array_inv!33263 _keys!1571)))

(declare-fun e!765530 () Bool)

(declare-fun array_inv!33264 (array!91609) Bool)

(assert (=> start!113390 (and (array_inv!33264 _values!1303) e!765530)))

(assert (=> start!113390 tp!110020))

(declare-fun b!1345215 () Bool)

(assert (=> b!1345215 (= e!765530 (and e!765528 mapRes!57814))))

(declare-fun condMapEmpty!57814 () Bool)

(declare-fun mapDefault!57814 () ValueCell!17804)


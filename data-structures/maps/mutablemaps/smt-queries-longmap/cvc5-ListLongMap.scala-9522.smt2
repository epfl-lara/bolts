; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113030 () Bool)

(assert start!113030)

(declare-fun b!1339218 () Bool)

(declare-fun e!762787 () Bool)

(assert (=> b!1339218 (= e!762787 false)))

(declare-fun lt!593803 () Bool)

(declare-datatypes ((array!90911 0))(
  ( (array!90912 (arr!43907 (Array (_ BitVec 32) (_ BitVec 64))) (size!44458 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90911)

(declare-datatypes ((List!31275 0))(
  ( (Nil!31272) (Cons!31271 (h!32480 (_ BitVec 64)) (t!45614 List!31275)) )
))
(declare-fun arrayNoDuplicates!0 (array!90911 (_ BitVec 32) List!31275) Bool)

(assert (=> b!1339218 (= lt!593803 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31272))))

(declare-fun mapNonEmpty!57274 () Bool)

(declare-fun mapRes!57274 () Bool)

(declare-fun tp!108974 () Bool)

(declare-fun e!762789 () Bool)

(assert (=> mapNonEmpty!57274 (= mapRes!57274 (and tp!108974 e!762789))))

(declare-datatypes ((V!54497 0))(
  ( (V!54498 (val!18597 Int)) )
))
(declare-datatypes ((ValueCell!17624 0))(
  ( (ValueCellFull!17624 (v!21243 V!54497)) (EmptyCell!17624) )
))
(declare-fun mapRest!57274 () (Array (_ BitVec 32) ValueCell!17624))

(declare-fun mapKey!57274 () (_ BitVec 32))

(declare-fun mapValue!57274 () ValueCell!17624)

(declare-datatypes ((array!90913 0))(
  ( (array!90914 (arr!43908 (Array (_ BitVec 32) ValueCell!17624)) (size!44459 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90913)

(assert (=> mapNonEmpty!57274 (= (arr!43908 _values!1303) (store mapRest!57274 mapKey!57274 mapValue!57274))))

(declare-fun b!1339219 () Bool)

(declare-fun e!762788 () Bool)

(declare-fun tp_is_empty!37045 () Bool)

(assert (=> b!1339219 (= e!762788 tp_is_empty!37045)))

(declare-fun res!888517 () Bool)

(assert (=> start!113030 (=> (not res!888517) (not e!762787))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113030 (= res!888517 (validMask!0 mask!1977))))

(assert (=> start!113030 e!762787))

(assert (=> start!113030 true))

(declare-fun e!762791 () Bool)

(declare-fun array_inv!33031 (array!90913) Bool)

(assert (=> start!113030 (and (array_inv!33031 _values!1303) e!762791)))

(declare-fun array_inv!33032 (array!90911) Bool)

(assert (=> start!113030 (array_inv!33032 _keys!1571)))

(declare-fun b!1339220 () Bool)

(declare-fun res!888516 () Bool)

(assert (=> b!1339220 (=> (not res!888516) (not e!762787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90911 (_ BitVec 32)) Bool)

(assert (=> b!1339220 (= res!888516 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339221 () Bool)

(declare-fun res!888518 () Bool)

(assert (=> b!1339221 (=> (not res!888518) (not e!762787))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1339221 (= res!888518 (and (= (size!44459 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44458 _keys!1571) (size!44459 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57274 () Bool)

(assert (=> mapIsEmpty!57274 mapRes!57274))

(declare-fun b!1339222 () Bool)

(assert (=> b!1339222 (= e!762791 (and e!762788 mapRes!57274))))

(declare-fun condMapEmpty!57274 () Bool)

(declare-fun mapDefault!57274 () ValueCell!17624)


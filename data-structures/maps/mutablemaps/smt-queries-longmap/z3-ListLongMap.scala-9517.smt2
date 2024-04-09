; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113002 () Bool)

(assert start!113002)

(declare-fun b!1338966 () Bool)

(declare-fun e!762581 () Bool)

(declare-fun tp_is_empty!37017 () Bool)

(assert (=> b!1338966 (= e!762581 tp_is_empty!37017)))

(declare-fun b!1338967 () Bool)

(declare-fun e!762579 () Bool)

(assert (=> b!1338967 (= e!762579 false)))

(declare-fun lt!593761 () Bool)

(declare-datatypes ((array!90865 0))(
  ( (array!90866 (arr!43884 (Array (_ BitVec 32) (_ BitVec 64))) (size!44435 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90865)

(declare-datatypes ((List!31267 0))(
  ( (Nil!31264) (Cons!31263 (h!32472 (_ BitVec 64)) (t!45606 List!31267)) )
))
(declare-fun arrayNoDuplicates!0 (array!90865 (_ BitVec 32) List!31267) Bool)

(assert (=> b!1338967 (= lt!593761 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31264))))

(declare-fun b!1338968 () Bool)

(declare-fun res!888391 () Bool)

(assert (=> b!1338968 (=> (not res!888391) (not e!762579))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54459 0))(
  ( (V!54460 (val!18583 Int)) )
))
(declare-datatypes ((ValueCell!17610 0))(
  ( (ValueCellFull!17610 (v!21229 V!54459)) (EmptyCell!17610) )
))
(declare-datatypes ((array!90867 0))(
  ( (array!90868 (arr!43885 (Array (_ BitVec 32) ValueCell!17610)) (size!44436 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90867)

(declare-fun mask!1977 () (_ BitVec 32))

(assert (=> b!1338968 (= res!888391 (and (= (size!44436 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44435 _keys!1571) (size!44436 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57232 () Bool)

(declare-fun mapRes!57232 () Bool)

(declare-fun tp!108932 () Bool)

(declare-fun e!762578 () Bool)

(assert (=> mapNonEmpty!57232 (= mapRes!57232 (and tp!108932 e!762578))))

(declare-fun mapValue!57232 () ValueCell!17610)

(declare-fun mapRest!57232 () (Array (_ BitVec 32) ValueCell!17610))

(declare-fun mapKey!57232 () (_ BitVec 32))

(assert (=> mapNonEmpty!57232 (= (arr!43885 _values!1303) (store mapRest!57232 mapKey!57232 mapValue!57232))))

(declare-fun res!888392 () Bool)

(assert (=> start!113002 (=> (not res!888392) (not e!762579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113002 (= res!888392 (validMask!0 mask!1977))))

(assert (=> start!113002 e!762579))

(assert (=> start!113002 true))

(declare-fun e!762577 () Bool)

(declare-fun array_inv!33017 (array!90867) Bool)

(assert (=> start!113002 (and (array_inv!33017 _values!1303) e!762577)))

(declare-fun array_inv!33018 (array!90865) Bool)

(assert (=> start!113002 (array_inv!33018 _keys!1571)))

(declare-fun mapIsEmpty!57232 () Bool)

(assert (=> mapIsEmpty!57232 mapRes!57232))

(declare-fun b!1338969 () Bool)

(declare-fun res!888390 () Bool)

(assert (=> b!1338969 (=> (not res!888390) (not e!762579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90865 (_ BitVec 32)) Bool)

(assert (=> b!1338969 (= res!888390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1338970 () Bool)

(assert (=> b!1338970 (= e!762577 (and e!762581 mapRes!57232))))

(declare-fun condMapEmpty!57232 () Bool)

(declare-fun mapDefault!57232 () ValueCell!17610)

(assert (=> b!1338970 (= condMapEmpty!57232 (= (arr!43885 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17610)) mapDefault!57232)))))

(declare-fun b!1338971 () Bool)

(assert (=> b!1338971 (= e!762578 tp_is_empty!37017)))

(assert (= (and start!113002 res!888392) b!1338968))

(assert (= (and b!1338968 res!888391) b!1338969))

(assert (= (and b!1338969 res!888390) b!1338967))

(assert (= (and b!1338970 condMapEmpty!57232) mapIsEmpty!57232))

(assert (= (and b!1338970 (not condMapEmpty!57232)) mapNonEmpty!57232))

(get-info :version)

(assert (= (and mapNonEmpty!57232 ((_ is ValueCellFull!17610) mapValue!57232)) b!1338971))

(assert (= (and b!1338970 ((_ is ValueCellFull!17610) mapDefault!57232)) b!1338966))

(assert (= start!113002 b!1338970))

(declare-fun m!1227193 () Bool)

(assert (=> b!1338967 m!1227193))

(declare-fun m!1227195 () Bool)

(assert (=> mapNonEmpty!57232 m!1227195))

(declare-fun m!1227197 () Bool)

(assert (=> start!113002 m!1227197))

(declare-fun m!1227199 () Bool)

(assert (=> start!113002 m!1227199))

(declare-fun m!1227201 () Bool)

(assert (=> start!113002 m!1227201))

(declare-fun m!1227203 () Bool)

(assert (=> b!1338969 m!1227203))

(check-sat (not b!1338967) (not b!1338969) tp_is_empty!37017 (not start!113002) (not mapNonEmpty!57232))
(check-sat)

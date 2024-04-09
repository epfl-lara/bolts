; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113032 () Bool)

(assert start!113032)

(declare-fun b!1339236 () Bool)

(declare-fun res!888526 () Bool)

(declare-fun e!762806 () Bool)

(assert (=> b!1339236 (=> (not res!888526) (not e!762806))))

(declare-datatypes ((array!90915 0))(
  ( (array!90916 (arr!43909 (Array (_ BitVec 32) (_ BitVec 64))) (size!44460 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90915)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90915 (_ BitVec 32)) Bool)

(assert (=> b!1339236 (= res!888526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339237 () Bool)

(declare-fun res!888525 () Bool)

(assert (=> b!1339237 (=> (not res!888525) (not e!762806))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54499 0))(
  ( (V!54500 (val!18598 Int)) )
))
(declare-datatypes ((ValueCell!17625 0))(
  ( (ValueCellFull!17625 (v!21244 V!54499)) (EmptyCell!17625) )
))
(declare-datatypes ((array!90917 0))(
  ( (array!90918 (arr!43910 (Array (_ BitVec 32) ValueCell!17625)) (size!44461 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90917)

(assert (=> b!1339237 (= res!888525 (and (= (size!44461 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44460 _keys!1571) (size!44461 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun res!888527 () Bool)

(assert (=> start!113032 (=> (not res!888527) (not e!762806))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113032 (= res!888527 (validMask!0 mask!1977))))

(assert (=> start!113032 e!762806))

(assert (=> start!113032 true))

(declare-fun e!762803 () Bool)

(declare-fun array_inv!33033 (array!90917) Bool)

(assert (=> start!113032 (and (array_inv!33033 _values!1303) e!762803)))

(declare-fun array_inv!33034 (array!90915) Bool)

(assert (=> start!113032 (array_inv!33034 _keys!1571)))

(declare-fun b!1339238 () Bool)

(declare-fun e!762805 () Bool)

(declare-fun tp_is_empty!37047 () Bool)

(assert (=> b!1339238 (= e!762805 tp_is_empty!37047)))

(declare-fun b!1339239 () Bool)

(declare-fun e!762802 () Bool)

(declare-fun mapRes!57277 () Bool)

(assert (=> b!1339239 (= e!762803 (and e!762802 mapRes!57277))))

(declare-fun condMapEmpty!57277 () Bool)

(declare-fun mapDefault!57277 () ValueCell!17625)

(assert (=> b!1339239 (= condMapEmpty!57277 (= (arr!43910 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17625)) mapDefault!57277)))))

(declare-fun mapNonEmpty!57277 () Bool)

(declare-fun tp!108977 () Bool)

(assert (=> mapNonEmpty!57277 (= mapRes!57277 (and tp!108977 e!762805))))

(declare-fun mapKey!57277 () (_ BitVec 32))

(declare-fun mapValue!57277 () ValueCell!17625)

(declare-fun mapRest!57277 () (Array (_ BitVec 32) ValueCell!17625))

(assert (=> mapNonEmpty!57277 (= (arr!43910 _values!1303) (store mapRest!57277 mapKey!57277 mapValue!57277))))

(declare-fun b!1339240 () Bool)

(assert (=> b!1339240 (= e!762806 false)))

(declare-fun lt!593806 () Bool)

(declare-datatypes ((List!31276 0))(
  ( (Nil!31273) (Cons!31272 (h!32481 (_ BitVec 64)) (t!45615 List!31276)) )
))
(declare-fun arrayNoDuplicates!0 (array!90915 (_ BitVec 32) List!31276) Bool)

(assert (=> b!1339240 (= lt!593806 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31273))))

(declare-fun mapIsEmpty!57277 () Bool)

(assert (=> mapIsEmpty!57277 mapRes!57277))

(declare-fun b!1339241 () Bool)

(assert (=> b!1339241 (= e!762802 tp_is_empty!37047)))

(assert (= (and start!113032 res!888527) b!1339237))

(assert (= (and b!1339237 res!888525) b!1339236))

(assert (= (and b!1339236 res!888526) b!1339240))

(assert (= (and b!1339239 condMapEmpty!57277) mapIsEmpty!57277))

(assert (= (and b!1339239 (not condMapEmpty!57277)) mapNonEmpty!57277))

(get-info :version)

(assert (= (and mapNonEmpty!57277 ((_ is ValueCellFull!17625) mapValue!57277)) b!1339238))

(assert (= (and b!1339239 ((_ is ValueCellFull!17625) mapDefault!57277)) b!1339241))

(assert (= start!113032 b!1339239))

(declare-fun m!1227373 () Bool)

(assert (=> b!1339236 m!1227373))

(declare-fun m!1227375 () Bool)

(assert (=> start!113032 m!1227375))

(declare-fun m!1227377 () Bool)

(assert (=> start!113032 m!1227377))

(declare-fun m!1227379 () Bool)

(assert (=> start!113032 m!1227379))

(declare-fun m!1227381 () Bool)

(assert (=> mapNonEmpty!57277 m!1227381))

(declare-fun m!1227383 () Bool)

(assert (=> b!1339240 m!1227383))

(check-sat tp_is_empty!37047 (not start!113032) (not b!1339236) (not b!1339240) (not mapNonEmpty!57277))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113038 () Bool)

(assert start!113038)

(declare-fun res!888554 () Bool)

(declare-fun e!762851 () Bool)

(assert (=> start!113038 (=> (not res!888554) (not e!762851))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113038 (= res!888554 (validMask!0 mask!1977))))

(assert (=> start!113038 e!762851))

(assert (=> start!113038 true))

(declare-datatypes ((V!54507 0))(
  ( (V!54508 (val!18601 Int)) )
))
(declare-datatypes ((ValueCell!17628 0))(
  ( (ValueCellFull!17628 (v!21247 V!54507)) (EmptyCell!17628) )
))
(declare-datatypes ((array!90925 0))(
  ( (array!90926 (arr!43914 (Array (_ BitVec 32) ValueCell!17628)) (size!44465 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90925)

(declare-fun e!762850 () Bool)

(declare-fun array_inv!33035 (array!90925) Bool)

(assert (=> start!113038 (and (array_inv!33035 _values!1303) e!762850)))

(declare-datatypes ((array!90927 0))(
  ( (array!90928 (arr!43915 (Array (_ BitVec 32) (_ BitVec 64))) (size!44466 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90927)

(declare-fun array_inv!33036 (array!90927) Bool)

(assert (=> start!113038 (array_inv!33036 _keys!1571)))

(declare-fun mapNonEmpty!57286 () Bool)

(declare-fun mapRes!57286 () Bool)

(declare-fun tp!108986 () Bool)

(declare-fun e!762847 () Bool)

(assert (=> mapNonEmpty!57286 (= mapRes!57286 (and tp!108986 e!762847))))

(declare-fun mapKey!57286 () (_ BitVec 32))

(declare-fun mapValue!57286 () ValueCell!17628)

(declare-fun mapRest!57286 () (Array (_ BitVec 32) ValueCell!17628))

(assert (=> mapNonEmpty!57286 (= (arr!43914 _values!1303) (store mapRest!57286 mapKey!57286 mapValue!57286))))

(declare-fun mapIsEmpty!57286 () Bool)

(assert (=> mapIsEmpty!57286 mapRes!57286))

(declare-fun b!1339290 () Bool)

(declare-fun e!762849 () Bool)

(assert (=> b!1339290 (= e!762850 (and e!762849 mapRes!57286))))

(declare-fun condMapEmpty!57286 () Bool)

(declare-fun mapDefault!57286 () ValueCell!17628)

(assert (=> b!1339290 (= condMapEmpty!57286 (= (arr!43914 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17628)) mapDefault!57286)))))

(declare-fun b!1339291 () Bool)

(assert (=> b!1339291 (= e!762851 false)))

(declare-fun lt!593815 () Bool)

(declare-datatypes ((List!31277 0))(
  ( (Nil!31274) (Cons!31273 (h!32482 (_ BitVec 64)) (t!45616 List!31277)) )
))
(declare-fun arrayNoDuplicates!0 (array!90927 (_ BitVec 32) List!31277) Bool)

(assert (=> b!1339291 (= lt!593815 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31274))))

(declare-fun b!1339292 () Bool)

(declare-fun res!888553 () Bool)

(assert (=> b!1339292 (=> (not res!888553) (not e!762851))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90927 (_ BitVec 32)) Bool)

(assert (=> b!1339292 (= res!888553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339293 () Bool)

(declare-fun res!888552 () Bool)

(assert (=> b!1339293 (=> (not res!888552) (not e!762851))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1339293 (= res!888552 (and (= (size!44465 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44466 _keys!1571) (size!44465 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1339294 () Bool)

(declare-fun tp_is_empty!37053 () Bool)

(assert (=> b!1339294 (= e!762847 tp_is_empty!37053)))

(declare-fun b!1339295 () Bool)

(assert (=> b!1339295 (= e!762849 tp_is_empty!37053)))

(assert (= (and start!113038 res!888554) b!1339293))

(assert (= (and b!1339293 res!888552) b!1339292))

(assert (= (and b!1339292 res!888553) b!1339291))

(assert (= (and b!1339290 condMapEmpty!57286) mapIsEmpty!57286))

(assert (= (and b!1339290 (not condMapEmpty!57286)) mapNonEmpty!57286))

(get-info :version)

(assert (= (and mapNonEmpty!57286 ((_ is ValueCellFull!17628) mapValue!57286)) b!1339294))

(assert (= (and b!1339290 ((_ is ValueCellFull!17628) mapDefault!57286)) b!1339295))

(assert (= start!113038 b!1339290))

(declare-fun m!1227409 () Bool)

(assert (=> start!113038 m!1227409))

(declare-fun m!1227411 () Bool)

(assert (=> start!113038 m!1227411))

(declare-fun m!1227413 () Bool)

(assert (=> start!113038 m!1227413))

(declare-fun m!1227415 () Bool)

(assert (=> mapNonEmpty!57286 m!1227415))

(declare-fun m!1227417 () Bool)

(assert (=> b!1339291 m!1227417))

(declare-fun m!1227419 () Bool)

(assert (=> b!1339292 m!1227419))

(check-sat (not start!113038) (not b!1339292) (not b!1339291) tp_is_empty!37053 (not mapNonEmpty!57286))
(check-sat)

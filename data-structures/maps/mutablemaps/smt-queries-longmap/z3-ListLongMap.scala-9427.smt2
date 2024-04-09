; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112208 () Bool)

(assert start!112208)

(declare-fun b_free!30567 () Bool)

(declare-fun b_next!30567 () Bool)

(assert (=> start!112208 (= b_free!30567 (not b_next!30567))))

(declare-fun tp!107338 () Bool)

(declare-fun b_and!49227 () Bool)

(assert (=> start!112208 (= tp!107338 b_and!49227)))

(declare-fun b!1328395 () Bool)

(declare-fun e!757427 () Bool)

(declare-fun e!757426 () Bool)

(declare-fun mapRes!56389 () Bool)

(assert (=> b!1328395 (= e!757427 (and e!757426 mapRes!56389))))

(declare-fun condMapEmpty!56389 () Bool)

(declare-datatypes ((V!53739 0))(
  ( (V!53740 (val!18313 Int)) )
))
(declare-datatypes ((ValueCell!17340 0))(
  ( (ValueCellFull!17340 (v!20948 V!53739)) (EmptyCell!17340) )
))
(declare-datatypes ((array!89815 0))(
  ( (array!89816 (arr!43369 (Array (_ BitVec 32) ValueCell!17340)) (size!43920 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89815)

(declare-fun mapDefault!56389 () ValueCell!17340)

(assert (=> b!1328395 (= condMapEmpty!56389 (= (arr!43369 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17340)) mapDefault!56389)))))

(declare-fun b!1328396 () Bool)

(declare-fun e!757425 () Bool)

(assert (=> b!1328396 (= e!757425 false)))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89817 0))(
  ( (array!89818 (arr!43370 (Array (_ BitVec 32) (_ BitVec 64))) (size!43921 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89817)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun lt!590780 () Bool)

(declare-fun minValue!1262 () V!53739)

(declare-fun zeroValue!1262 () V!53739)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23722 0))(
  ( (tuple2!23723 (_1!11871 (_ BitVec 64)) (_2!11871 V!53739)) )
))
(declare-datatypes ((List!30909 0))(
  ( (Nil!30906) (Cons!30905 (h!32114 tuple2!23722) (t!44922 List!30909)) )
))
(declare-datatypes ((ListLongMap!21391 0))(
  ( (ListLongMap!21392 (toList!10711 List!30909)) )
))
(declare-fun contains!8811 (ListLongMap!21391 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5643 (array!89817 array!89815 (_ BitVec 32) (_ BitVec 32) V!53739 V!53739 (_ BitVec 32) Int) ListLongMap!21391)

(assert (=> b!1328396 (= lt!590780 (contains!8811 (getCurrentListMap!5643 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun mapNonEmpty!56389 () Bool)

(declare-fun tp!107339 () Bool)

(declare-fun e!757428 () Bool)

(assert (=> mapNonEmpty!56389 (= mapRes!56389 (and tp!107339 e!757428))))

(declare-fun mapValue!56389 () ValueCell!17340)

(declare-fun mapRest!56389 () (Array (_ BitVec 32) ValueCell!17340))

(declare-fun mapKey!56389 () (_ BitVec 32))

(assert (=> mapNonEmpty!56389 (= (arr!43369 _values!1320) (store mapRest!56389 mapKey!56389 mapValue!56389))))

(declare-fun b!1328397 () Bool)

(declare-fun res!881466 () Bool)

(assert (=> b!1328397 (=> (not res!881466) (not e!757425))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89817 (_ BitVec 32)) Bool)

(assert (=> b!1328397 (= res!881466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328398 () Bool)

(declare-fun tp_is_empty!36477 () Bool)

(assert (=> b!1328398 (= e!757428 tp_is_empty!36477)))

(declare-fun b!1328399 () Bool)

(declare-fun res!881464 () Bool)

(assert (=> b!1328399 (=> (not res!881464) (not e!757425))))

(declare-datatypes ((List!30910 0))(
  ( (Nil!30907) (Cons!30906 (h!32115 (_ BitVec 64)) (t!44923 List!30910)) )
))
(declare-fun arrayNoDuplicates!0 (array!89817 (_ BitVec 32) List!30910) Bool)

(assert (=> b!1328399 (= res!881464 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30907))))

(declare-fun b!1328400 () Bool)

(declare-fun res!881467 () Bool)

(assert (=> b!1328400 (=> (not res!881467) (not e!757425))))

(assert (=> b!1328400 (= res!881467 (and (= (size!43920 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43921 _keys!1590) (size!43920 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1328401 () Bool)

(assert (=> b!1328401 (= e!757426 tp_is_empty!36477)))

(declare-fun b!1328402 () Bool)

(declare-fun res!881465 () Bool)

(assert (=> b!1328402 (=> (not res!881465) (not e!757425))))

(assert (=> b!1328402 (= res!881465 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43921 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!56389 () Bool)

(assert (=> mapIsEmpty!56389 mapRes!56389))

(declare-fun res!881468 () Bool)

(assert (=> start!112208 (=> (not res!881468) (not e!757425))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112208 (= res!881468 (validMask!0 mask!1998))))

(assert (=> start!112208 e!757425))

(declare-fun array_inv!32677 (array!89815) Bool)

(assert (=> start!112208 (and (array_inv!32677 _values!1320) e!757427)))

(assert (=> start!112208 true))

(declare-fun array_inv!32678 (array!89817) Bool)

(assert (=> start!112208 (array_inv!32678 _keys!1590)))

(assert (=> start!112208 tp!107338))

(assert (=> start!112208 tp_is_empty!36477))

(assert (= (and start!112208 res!881468) b!1328400))

(assert (= (and b!1328400 res!881467) b!1328397))

(assert (= (and b!1328397 res!881466) b!1328399))

(assert (= (and b!1328399 res!881464) b!1328402))

(assert (= (and b!1328402 res!881465) b!1328396))

(assert (= (and b!1328395 condMapEmpty!56389) mapIsEmpty!56389))

(assert (= (and b!1328395 (not condMapEmpty!56389)) mapNonEmpty!56389))

(get-info :version)

(assert (= (and mapNonEmpty!56389 ((_ is ValueCellFull!17340) mapValue!56389)) b!1328398))

(assert (= (and b!1328395 ((_ is ValueCellFull!17340) mapDefault!56389)) b!1328401))

(assert (= start!112208 b!1328395))

(declare-fun m!1217389 () Bool)

(assert (=> b!1328396 m!1217389))

(assert (=> b!1328396 m!1217389))

(declare-fun m!1217391 () Bool)

(assert (=> b!1328396 m!1217391))

(declare-fun m!1217393 () Bool)

(assert (=> start!112208 m!1217393))

(declare-fun m!1217395 () Bool)

(assert (=> start!112208 m!1217395))

(declare-fun m!1217397 () Bool)

(assert (=> start!112208 m!1217397))

(declare-fun m!1217399 () Bool)

(assert (=> b!1328399 m!1217399))

(declare-fun m!1217401 () Bool)

(assert (=> b!1328397 m!1217401))

(declare-fun m!1217403 () Bool)

(assert (=> mapNonEmpty!56389 m!1217403))

(check-sat (not start!112208) (not b_next!30567) b_and!49227 (not b!1328397) tp_is_empty!36477 (not mapNonEmpty!56389) (not b!1328399) (not b!1328396))
(check-sat b_and!49227 (not b_next!30567))

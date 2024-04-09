; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111394 () Bool)

(assert start!111394)

(declare-fun b_free!30015 () Bool)

(declare-fun b_next!30015 () Bool)

(assert (=> start!111394 (= b_free!30015 (not b_next!30015))))

(declare-fun tp!105521 () Bool)

(declare-fun b_and!48245 () Bool)

(assert (=> start!111394 (= tp!105521 b_and!48245)))

(declare-fun b!1317599 () Bool)

(declare-fun e!751925 () Bool)

(declare-fun tp_is_empty!35835 () Bool)

(assert (=> b!1317599 (= e!751925 tp_is_empty!35835)))

(declare-fun mapIsEmpty!55400 () Bool)

(declare-fun mapRes!55400 () Bool)

(assert (=> mapIsEmpty!55400 mapRes!55400))

(declare-fun b!1317601 () Bool)

(declare-fun res!874554 () Bool)

(declare-fun e!751923 () Bool)

(assert (=> b!1317601 (=> (not res!874554) (not e!751923))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52883 0))(
  ( (V!52884 (val!17992 Int)) )
))
(declare-datatypes ((ValueCell!17019 0))(
  ( (ValueCellFull!17019 (v!20620 V!52883)) (EmptyCell!17019) )
))
(declare-datatypes ((array!88575 0))(
  ( (array!88576 (arr!42757 (Array (_ BitVec 32) ValueCell!17019)) (size!43308 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88575)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((array!88577 0))(
  ( (array!88578 (arr!42758 (Array (_ BitVec 32) (_ BitVec 64))) (size!43309 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88577)

(assert (=> b!1317601 (= res!874554 (and (= (size!43308 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43309 _keys!1609) (size!43308 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317602 () Bool)

(assert (=> b!1317602 (= e!751923 false)))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!52883)

(declare-fun minValue!1279 () V!52883)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun lt!586330 () Bool)

(declare-datatypes ((tuple2!23306 0))(
  ( (tuple2!23307 (_1!11663 (_ BitVec 64)) (_2!11663 V!52883)) )
))
(declare-datatypes ((List!30494 0))(
  ( (Nil!30491) (Cons!30490 (h!31699 tuple2!23306) (t!44109 List!30494)) )
))
(declare-datatypes ((ListLongMap!20975 0))(
  ( (ListLongMap!20976 (toList!10503 List!30494)) )
))
(declare-fun contains!8594 (ListLongMap!20975 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5459 (array!88577 array!88575 (_ BitVec 32) (_ BitVec 32) V!52883 V!52883 (_ BitVec 32) Int) ListLongMap!20975)

(assert (=> b!1317602 (= lt!586330 (contains!8594 (getCurrentListMap!5459 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1317603 () Bool)

(declare-fun res!874552 () Bool)

(assert (=> b!1317603 (=> (not res!874552) (not e!751923))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88577 (_ BitVec 32)) Bool)

(assert (=> b!1317603 (= res!874552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317604 () Bool)

(declare-fun res!874553 () Bool)

(assert (=> b!1317604 (=> (not res!874553) (not e!751923))))

(assert (=> b!1317604 (= res!874553 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43309 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1317605 () Bool)

(declare-fun e!751926 () Bool)

(assert (=> b!1317605 (= e!751926 tp_is_empty!35835)))

(declare-fun mapNonEmpty!55400 () Bool)

(declare-fun tp!105522 () Bool)

(assert (=> mapNonEmpty!55400 (= mapRes!55400 (and tp!105522 e!751926))))

(declare-fun mapKey!55400 () (_ BitVec 32))

(declare-fun mapValue!55400 () ValueCell!17019)

(declare-fun mapRest!55400 () (Array (_ BitVec 32) ValueCell!17019))

(assert (=> mapNonEmpty!55400 (= (arr!42757 _values!1337) (store mapRest!55400 mapKey!55400 mapValue!55400))))

(declare-fun b!1317606 () Bool)

(declare-fun res!874555 () Bool)

(assert (=> b!1317606 (=> (not res!874555) (not e!751923))))

(declare-datatypes ((List!30495 0))(
  ( (Nil!30492) (Cons!30491 (h!31700 (_ BitVec 64)) (t!44110 List!30495)) )
))
(declare-fun arrayNoDuplicates!0 (array!88577 (_ BitVec 32) List!30495) Bool)

(assert (=> b!1317606 (= res!874555 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30492))))

(declare-fun res!874551 () Bool)

(assert (=> start!111394 (=> (not res!874551) (not e!751923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111394 (= res!874551 (validMask!0 mask!2019))))

(assert (=> start!111394 e!751923))

(declare-fun array_inv!32245 (array!88577) Bool)

(assert (=> start!111394 (array_inv!32245 _keys!1609)))

(assert (=> start!111394 true))

(assert (=> start!111394 tp_is_empty!35835))

(declare-fun e!751927 () Bool)

(declare-fun array_inv!32246 (array!88575) Bool)

(assert (=> start!111394 (and (array_inv!32246 _values!1337) e!751927)))

(assert (=> start!111394 tp!105521))

(declare-fun b!1317600 () Bool)

(assert (=> b!1317600 (= e!751927 (and e!751925 mapRes!55400))))

(declare-fun condMapEmpty!55400 () Bool)

(declare-fun mapDefault!55400 () ValueCell!17019)

(assert (=> b!1317600 (= condMapEmpty!55400 (= (arr!42757 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17019)) mapDefault!55400)))))

(assert (= (and start!111394 res!874551) b!1317601))

(assert (= (and b!1317601 res!874554) b!1317603))

(assert (= (and b!1317603 res!874552) b!1317606))

(assert (= (and b!1317606 res!874555) b!1317604))

(assert (= (and b!1317604 res!874553) b!1317602))

(assert (= (and b!1317600 condMapEmpty!55400) mapIsEmpty!55400))

(assert (= (and b!1317600 (not condMapEmpty!55400)) mapNonEmpty!55400))

(get-info :version)

(assert (= (and mapNonEmpty!55400 ((_ is ValueCellFull!17019) mapValue!55400)) b!1317605))

(assert (= (and b!1317600 ((_ is ValueCellFull!17019) mapDefault!55400)) b!1317599))

(assert (= start!111394 b!1317600))

(declare-fun m!1205407 () Bool)

(assert (=> b!1317602 m!1205407))

(assert (=> b!1317602 m!1205407))

(declare-fun m!1205409 () Bool)

(assert (=> b!1317602 m!1205409))

(declare-fun m!1205411 () Bool)

(assert (=> mapNonEmpty!55400 m!1205411))

(declare-fun m!1205413 () Bool)

(assert (=> start!111394 m!1205413))

(declare-fun m!1205415 () Bool)

(assert (=> start!111394 m!1205415))

(declare-fun m!1205417 () Bool)

(assert (=> start!111394 m!1205417))

(declare-fun m!1205419 () Bool)

(assert (=> b!1317606 m!1205419))

(declare-fun m!1205421 () Bool)

(assert (=> b!1317603 m!1205421))

(check-sat (not start!111394) tp_is_empty!35835 (not b!1317606) (not mapNonEmpty!55400) (not b!1317602) b_and!48245 (not b!1317603) (not b_next!30015))
(check-sat b_and!48245 (not b_next!30015))

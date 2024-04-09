; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111664 () Bool)

(assert start!111664)

(declare-fun b_free!30285 () Bool)

(declare-fun b_next!30285 () Bool)

(assert (=> start!111664 (= b_free!30285 (not b_next!30285))))

(declare-fun tp!106332 () Bool)

(declare-fun b_and!48739 () Bool)

(assert (=> start!111664 (= tp!106332 b_and!48739)))

(declare-fun b!1322104 () Bool)

(declare-fun e!753950 () Bool)

(declare-fun e!753952 () Bool)

(declare-fun mapRes!55805 () Bool)

(assert (=> b!1322104 (= e!753950 (and e!753952 mapRes!55805))))

(declare-fun condMapEmpty!55805 () Bool)

(declare-datatypes ((V!53243 0))(
  ( (V!53244 (val!18127 Int)) )
))
(declare-datatypes ((ValueCell!17154 0))(
  ( (ValueCellFull!17154 (v!20755 V!53243)) (EmptyCell!17154) )
))
(declare-datatypes ((array!89091 0))(
  ( (array!89092 (arr!43015 (Array (_ BitVec 32) ValueCell!17154)) (size!43566 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89091)

(declare-fun mapDefault!55805 () ValueCell!17154)

(assert (=> b!1322104 (= condMapEmpty!55805 (= (arr!43015 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17154)) mapDefault!55805)))))

(declare-fun b!1322105 () Bool)

(declare-fun res!877619 () Bool)

(declare-fun e!753948 () Bool)

(assert (=> b!1322105 (=> (not res!877619) (not e!753948))))

(declare-datatypes ((array!89093 0))(
  ( (array!89094 (arr!43016 (Array (_ BitVec 32) (_ BitVec 64))) (size!43567 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89093)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89093 (_ BitVec 32)) Bool)

(assert (=> b!1322105 (= res!877619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!877624 () Bool)

(assert (=> start!111664 (=> (not res!877624) (not e!753948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111664 (= res!877624 (validMask!0 mask!2019))))

(assert (=> start!111664 e!753948))

(declare-fun array_inv!32427 (array!89093) Bool)

(assert (=> start!111664 (array_inv!32427 _keys!1609)))

(assert (=> start!111664 true))

(declare-fun tp_is_empty!36105 () Bool)

(assert (=> start!111664 tp_is_empty!36105))

(declare-fun array_inv!32428 (array!89091) Bool)

(assert (=> start!111664 (and (array_inv!32428 _values!1337) e!753950)))

(assert (=> start!111664 tp!106332))

(declare-fun b!1322106 () Bool)

(assert (=> b!1322106 (= e!753948 (not true))))

(declare-datatypes ((tuple2!23514 0))(
  ( (tuple2!23515 (_1!11767 (_ BitVec 64)) (_2!11767 V!53243)) )
))
(declare-datatypes ((List!30690 0))(
  ( (Nil!30687) (Cons!30686 (h!31895 tuple2!23514) (t!44531 List!30690)) )
))
(declare-datatypes ((ListLongMap!21183 0))(
  ( (ListLongMap!21184 (toList!10607 List!30690)) )
))
(declare-fun lt!587918 () ListLongMap!21183)

(declare-fun lt!587921 () tuple2!23514)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun contains!8698 (ListLongMap!21183 (_ BitVec 64)) Bool)

(declare-fun +!4559 (ListLongMap!21183 tuple2!23514) ListLongMap!21183)

(assert (=> b!1322106 (contains!8698 (+!4559 lt!587918 lt!587921) k0!1164)))

(declare-fun zeroValue!1279 () V!53243)

(declare-datatypes ((Unit!43518 0))(
  ( (Unit!43519) )
))
(declare-fun lt!587923 () Unit!43518)

(declare-fun addStillContains!1140 (ListLongMap!21183 (_ BitVec 64) V!53243 (_ BitVec 64)) Unit!43518)

(assert (=> b!1322106 (= lt!587923 (addStillContains!1140 lt!587918 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1322106 (contains!8698 lt!587918 k0!1164)))

(declare-fun lt!587919 () Unit!43518)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun lt!587925 () V!53243)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!174 ((_ BitVec 64) (_ BitVec 64) V!53243 ListLongMap!21183) Unit!43518)

(assert (=> b!1322106 (= lt!587919 (lemmaInListMapAfterAddingDiffThenInBefore!174 k0!1164 (select (arr!43016 _keys!1609) from!2000) lt!587925 lt!587918))))

(declare-fun lt!587920 () ListLongMap!21183)

(assert (=> b!1322106 (contains!8698 lt!587920 k0!1164)))

(declare-fun lt!587922 () Unit!43518)

(assert (=> b!1322106 (= lt!587922 (lemmaInListMapAfterAddingDiffThenInBefore!174 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587920))))

(declare-fun lt!587924 () ListLongMap!21183)

(assert (=> b!1322106 (contains!8698 lt!587924 k0!1164)))

(declare-fun minValue!1279 () V!53243)

(declare-fun lt!587926 () Unit!43518)

(assert (=> b!1322106 (= lt!587926 (lemmaInListMapAfterAddingDiffThenInBefore!174 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587924))))

(assert (=> b!1322106 (= lt!587924 (+!4559 lt!587920 lt!587921))))

(assert (=> b!1322106 (= lt!587921 (tuple2!23515 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1322106 (= lt!587920 (+!4559 lt!587918 (tuple2!23515 (select (arr!43016 _keys!1609) from!2000) lt!587925)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21701 (ValueCell!17154 V!53243) V!53243)

(declare-fun dynLambda!3596 (Int (_ BitVec 64)) V!53243)

(assert (=> b!1322106 (= lt!587925 (get!21701 (select (arr!43015 _values!1337) from!2000) (dynLambda!3596 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6274 (array!89093 array!89091 (_ BitVec 32) (_ BitVec 32) V!53243 V!53243 (_ BitVec 32) Int) ListLongMap!21183)

(assert (=> b!1322106 (= lt!587918 (getCurrentListMapNoExtraKeys!6274 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1322107 () Bool)

(assert (=> b!1322107 (= e!753952 tp_is_empty!36105)))

(declare-fun b!1322108 () Bool)

(declare-fun res!877621 () Bool)

(assert (=> b!1322108 (=> (not res!877621) (not e!753948))))

(declare-datatypes ((List!30691 0))(
  ( (Nil!30688) (Cons!30687 (h!31896 (_ BitVec 64)) (t!44532 List!30691)) )
))
(declare-fun arrayNoDuplicates!0 (array!89093 (_ BitVec 32) List!30691) Bool)

(assert (=> b!1322108 (= res!877621 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30688))))

(declare-fun b!1322109 () Bool)

(declare-fun res!877617 () Bool)

(assert (=> b!1322109 (=> (not res!877617) (not e!753948))))

(assert (=> b!1322109 (= res!877617 (not (= (select (arr!43016 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1322110 () Bool)

(declare-fun e!753951 () Bool)

(assert (=> b!1322110 (= e!753951 tp_is_empty!36105)))

(declare-fun b!1322111 () Bool)

(declare-fun res!877620 () Bool)

(assert (=> b!1322111 (=> (not res!877620) (not e!753948))))

(declare-fun getCurrentListMap!5547 (array!89093 array!89091 (_ BitVec 32) (_ BitVec 32) V!53243 V!53243 (_ BitVec 32) Int) ListLongMap!21183)

(assert (=> b!1322111 (= res!877620 (contains!8698 (getCurrentListMap!5547 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun mapNonEmpty!55805 () Bool)

(declare-fun tp!106331 () Bool)

(assert (=> mapNonEmpty!55805 (= mapRes!55805 (and tp!106331 e!753951))))

(declare-fun mapKey!55805 () (_ BitVec 32))

(declare-fun mapRest!55805 () (Array (_ BitVec 32) ValueCell!17154))

(declare-fun mapValue!55805 () ValueCell!17154)

(assert (=> mapNonEmpty!55805 (= (arr!43015 _values!1337) (store mapRest!55805 mapKey!55805 mapValue!55805))))

(declare-fun b!1322112 () Bool)

(declare-fun res!877623 () Bool)

(assert (=> b!1322112 (=> (not res!877623) (not e!753948))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1322112 (= res!877623 (validKeyInArray!0 (select (arr!43016 _keys!1609) from!2000)))))

(declare-fun b!1322113 () Bool)

(declare-fun res!877618 () Bool)

(assert (=> b!1322113 (=> (not res!877618) (not e!753948))))

(assert (=> b!1322113 (= res!877618 (and (= (size!43566 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43567 _keys!1609) (size!43566 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1322114 () Bool)

(declare-fun res!877622 () Bool)

(assert (=> b!1322114 (=> (not res!877622) (not e!753948))))

(assert (=> b!1322114 (= res!877622 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43567 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!55805 () Bool)

(assert (=> mapIsEmpty!55805 mapRes!55805))

(assert (= (and start!111664 res!877624) b!1322113))

(assert (= (and b!1322113 res!877618) b!1322105))

(assert (= (and b!1322105 res!877619) b!1322108))

(assert (= (and b!1322108 res!877621) b!1322114))

(assert (= (and b!1322114 res!877622) b!1322111))

(assert (= (and b!1322111 res!877620) b!1322109))

(assert (= (and b!1322109 res!877617) b!1322112))

(assert (= (and b!1322112 res!877623) b!1322106))

(assert (= (and b!1322104 condMapEmpty!55805) mapIsEmpty!55805))

(assert (= (and b!1322104 (not condMapEmpty!55805)) mapNonEmpty!55805))

(get-info :version)

(assert (= (and mapNonEmpty!55805 ((_ is ValueCellFull!17154) mapValue!55805)) b!1322110))

(assert (= (and b!1322104 ((_ is ValueCellFull!17154) mapDefault!55805)) b!1322107))

(assert (= start!111664 b!1322104))

(declare-fun b_lambda!23621 () Bool)

(assert (=> (not b_lambda!23621) (not b!1322106)))

(declare-fun t!44530 () Bool)

(declare-fun tb!11645 () Bool)

(assert (=> (and start!111664 (= defaultEntry!1340 defaultEntry!1340) t!44530) tb!11645))

(declare-fun result!24337 () Bool)

(assert (=> tb!11645 (= result!24337 tp_is_empty!36105)))

(assert (=> b!1322106 t!44530))

(declare-fun b_and!48741 () Bool)

(assert (= b_and!48739 (and (=> t!44530 result!24337) b_and!48741)))

(declare-fun m!1210331 () Bool)

(assert (=> b!1322112 m!1210331))

(assert (=> b!1322112 m!1210331))

(declare-fun m!1210333 () Bool)

(assert (=> b!1322112 m!1210333))

(declare-fun m!1210335 () Bool)

(assert (=> b!1322111 m!1210335))

(assert (=> b!1322111 m!1210335))

(declare-fun m!1210337 () Bool)

(assert (=> b!1322111 m!1210337))

(declare-fun m!1210339 () Bool)

(assert (=> mapNonEmpty!55805 m!1210339))

(declare-fun m!1210341 () Bool)

(assert (=> b!1322106 m!1210341))

(declare-fun m!1210343 () Bool)

(assert (=> b!1322106 m!1210343))

(declare-fun m!1210345 () Bool)

(assert (=> b!1322106 m!1210345))

(declare-fun m!1210347 () Bool)

(assert (=> b!1322106 m!1210347))

(declare-fun m!1210349 () Bool)

(assert (=> b!1322106 m!1210349))

(declare-fun m!1210351 () Bool)

(assert (=> b!1322106 m!1210351))

(declare-fun m!1210353 () Bool)

(assert (=> b!1322106 m!1210353))

(declare-fun m!1210355 () Bool)

(assert (=> b!1322106 m!1210355))

(assert (=> b!1322106 m!1210347))

(declare-fun m!1210357 () Bool)

(assert (=> b!1322106 m!1210357))

(assert (=> b!1322106 m!1210357))

(declare-fun m!1210359 () Bool)

(assert (=> b!1322106 m!1210359))

(declare-fun m!1210361 () Bool)

(assert (=> b!1322106 m!1210361))

(declare-fun m!1210363 () Bool)

(assert (=> b!1322106 m!1210363))

(assert (=> b!1322106 m!1210331))

(declare-fun m!1210365 () Bool)

(assert (=> b!1322106 m!1210365))

(assert (=> b!1322106 m!1210359))

(declare-fun m!1210367 () Bool)

(assert (=> b!1322106 m!1210367))

(assert (=> b!1322106 m!1210331))

(declare-fun m!1210369 () Bool)

(assert (=> b!1322106 m!1210369))

(declare-fun m!1210371 () Bool)

(assert (=> b!1322108 m!1210371))

(declare-fun m!1210373 () Bool)

(assert (=> b!1322105 m!1210373))

(assert (=> b!1322109 m!1210331))

(declare-fun m!1210375 () Bool)

(assert (=> start!111664 m!1210375))

(declare-fun m!1210377 () Bool)

(assert (=> start!111664 m!1210377))

(declare-fun m!1210379 () Bool)

(assert (=> start!111664 m!1210379))

(check-sat (not start!111664) (not b!1322106) tp_is_empty!36105 b_and!48741 (not b!1322111) (not mapNonEmpty!55805) (not b!1322112) (not b_next!30285) (not b_lambda!23621) (not b!1322105) (not b!1322108))
(check-sat b_and!48741 (not b_next!30285))

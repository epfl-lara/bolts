; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111914 () Bool)

(assert start!111914)

(declare-fun b_free!30477 () Bool)

(declare-fun b_next!30477 () Bool)

(assert (=> start!111914 (= b_free!30477 (not b_next!30477))))

(declare-fun tp!106911 () Bool)

(declare-fun b_and!49059 () Bool)

(assert (=> start!111914 (= tp!106911 b_and!49059)))

(declare-fun b!1325527 () Bool)

(declare-fun res!879828 () Bool)

(declare-fun e!755647 () Bool)

(assert (=> b!1325527 (=> (not res!879828) (not e!755647))))

(declare-datatypes ((array!89463 0))(
  ( (array!89464 (arr!43200 (Array (_ BitVec 32) (_ BitVec 64))) (size!43751 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89463)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53499 0))(
  ( (V!53500 (val!18223 Int)) )
))
(declare-fun zeroValue!1279 () V!53499)

(declare-datatypes ((ValueCell!17250 0))(
  ( (ValueCellFull!17250 (v!20854 V!53499)) (EmptyCell!17250) )
))
(declare-datatypes ((array!89465 0))(
  ( (array!89466 (arr!43201 (Array (_ BitVec 32) ValueCell!17250)) (size!43752 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89465)

(declare-fun minValue!1279 () V!53499)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(declare-datatypes ((tuple2!23654 0))(
  ( (tuple2!23655 (_1!11837 (_ BitVec 64)) (_2!11837 V!53499)) )
))
(declare-datatypes ((List!30823 0))(
  ( (Nil!30820) (Cons!30819 (h!32028 tuple2!23654) (t!44778 List!30823)) )
))
(declare-datatypes ((ListLongMap!21323 0))(
  ( (ListLongMap!21324 (toList!10677 List!30823)) )
))
(declare-fun contains!8770 (ListLongMap!21323 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5611 (array!89463 array!89465 (_ BitVec 32) (_ BitVec 32) V!53499 V!53499 (_ BitVec 32) Int) ListLongMap!21323)

(assert (=> b!1325527 (= res!879828 (contains!8770 (getCurrentListMap!5611 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1325528 () Bool)

(declare-fun res!879822 () Bool)

(assert (=> b!1325528 (=> (not res!879822) (not e!755647))))

(assert (=> b!1325528 (= res!879822 (and (= (size!43752 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43751 _keys!1609) (size!43752 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!56097 () Bool)

(declare-fun mapRes!56097 () Bool)

(assert (=> mapIsEmpty!56097 mapRes!56097))

(declare-fun b!1325529 () Bool)

(declare-fun res!879825 () Bool)

(assert (=> b!1325529 (=> (not res!879825) (not e!755647))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89463 (_ BitVec 32)) Bool)

(assert (=> b!1325529 (= res!879825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!879823 () Bool)

(assert (=> start!111914 (=> (not res!879823) (not e!755647))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111914 (= res!879823 (validMask!0 mask!2019))))

(assert (=> start!111914 e!755647))

(declare-fun array_inv!32551 (array!89463) Bool)

(assert (=> start!111914 (array_inv!32551 _keys!1609)))

(assert (=> start!111914 true))

(declare-fun tp_is_empty!36297 () Bool)

(assert (=> start!111914 tp_is_empty!36297))

(declare-fun e!755650 () Bool)

(declare-fun array_inv!32552 (array!89465) Bool)

(assert (=> start!111914 (and (array_inv!32552 _values!1337) e!755650)))

(assert (=> start!111914 tp!106911))

(declare-fun b!1325530 () Bool)

(declare-fun res!879826 () Bool)

(assert (=> b!1325530 (=> (not res!879826) (not e!755647))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1325530 (= res!879826 (validKeyInArray!0 (select (arr!43200 _keys!1609) from!2000)))))

(declare-fun b!1325531 () Bool)

(declare-fun res!879827 () Bool)

(assert (=> b!1325531 (=> (not res!879827) (not e!755647))))

(assert (=> b!1325531 (= res!879827 (not (= (select (arr!43200 _keys!1609) from!2000) k0!1164)))))

(declare-fun mapNonEmpty!56097 () Bool)

(declare-fun tp!106912 () Bool)

(declare-fun e!755646 () Bool)

(assert (=> mapNonEmpty!56097 (= mapRes!56097 (and tp!106912 e!755646))))

(declare-fun mapKey!56097 () (_ BitVec 32))

(declare-fun mapRest!56097 () (Array (_ BitVec 32) ValueCell!17250))

(declare-fun mapValue!56097 () ValueCell!17250)

(assert (=> mapNonEmpty!56097 (= (arr!43201 _values!1337) (store mapRest!56097 mapKey!56097 mapValue!56097))))

(declare-fun b!1325532 () Bool)

(declare-fun res!879821 () Bool)

(assert (=> b!1325532 (=> (not res!879821) (not e!755647))))

(declare-datatypes ((List!30824 0))(
  ( (Nil!30821) (Cons!30820 (h!32029 (_ BitVec 64)) (t!44779 List!30824)) )
))
(declare-fun arrayNoDuplicates!0 (array!89463 (_ BitVec 32) List!30824) Bool)

(assert (=> b!1325532 (= res!879821 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30821))))

(declare-fun b!1325533 () Bool)

(assert (=> b!1325533 (= e!755646 tp_is_empty!36297)))

(declare-fun b!1325534 () Bool)

(assert (=> b!1325534 (= e!755647 (not (bvslt from!2000 (size!43752 _values!1337))))))

(declare-fun lt!589746 () ListLongMap!21323)

(assert (=> b!1325534 (contains!8770 lt!589746 k0!1164)))

(declare-datatypes ((Unit!43592 0))(
  ( (Unit!43593) )
))
(declare-fun lt!589747 () Unit!43592)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!203 ((_ BitVec 64) (_ BitVec 64) V!53499 ListLongMap!21323) Unit!43592)

(assert (=> b!1325534 (= lt!589747 (lemmaInListMapAfterAddingDiffThenInBefore!203 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589746))))

(declare-fun +!4593 (ListLongMap!21323 tuple2!23654) ListLongMap!21323)

(declare-fun getCurrentListMapNoExtraKeys!6311 (array!89463 array!89465 (_ BitVec 32) (_ BitVec 32) V!53499 V!53499 (_ BitVec 32) Int) ListLongMap!21323)

(declare-fun get!21802 (ValueCell!17250 V!53499) V!53499)

(declare-fun dynLambda!3630 (Int (_ BitVec 64)) V!53499)

(assert (=> b!1325534 (= lt!589746 (+!4593 (+!4593 (getCurrentListMapNoExtraKeys!6311 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23655 (select (arr!43200 _keys!1609) from!2000) (get!21802 (select (arr!43201 _values!1337) from!2000) (dynLambda!3630 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23655 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1325535 () Bool)

(declare-fun e!755649 () Bool)

(assert (=> b!1325535 (= e!755650 (and e!755649 mapRes!56097))))

(declare-fun condMapEmpty!56097 () Bool)

(declare-fun mapDefault!56097 () ValueCell!17250)

(assert (=> b!1325535 (= condMapEmpty!56097 (= (arr!43201 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17250)) mapDefault!56097)))))

(declare-fun b!1325536 () Bool)

(declare-fun res!879824 () Bool)

(assert (=> b!1325536 (=> (not res!879824) (not e!755647))))

(assert (=> b!1325536 (= res!879824 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43751 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1325537 () Bool)

(assert (=> b!1325537 (= e!755649 tp_is_empty!36297)))

(assert (= (and start!111914 res!879823) b!1325528))

(assert (= (and b!1325528 res!879822) b!1325529))

(assert (= (and b!1325529 res!879825) b!1325532))

(assert (= (and b!1325532 res!879821) b!1325536))

(assert (= (and b!1325536 res!879824) b!1325527))

(assert (= (and b!1325527 res!879828) b!1325531))

(assert (= (and b!1325531 res!879827) b!1325530))

(assert (= (and b!1325530 res!879826) b!1325534))

(assert (= (and b!1325535 condMapEmpty!56097) mapIsEmpty!56097))

(assert (= (and b!1325535 (not condMapEmpty!56097)) mapNonEmpty!56097))

(get-info :version)

(assert (= (and mapNonEmpty!56097 ((_ is ValueCellFull!17250) mapValue!56097)) b!1325533))

(assert (= (and b!1325535 ((_ is ValueCellFull!17250) mapDefault!56097)) b!1325537))

(assert (= start!111914 b!1325535))

(declare-fun b_lambda!23765 () Bool)

(assert (=> (not b_lambda!23765) (not b!1325534)))

(declare-fun t!44777 () Bool)

(declare-fun tb!11759 () Bool)

(assert (=> (and start!111914 (= defaultEntry!1340 defaultEntry!1340) t!44777) tb!11759))

(declare-fun result!24567 () Bool)

(assert (=> tb!11759 (= result!24567 tp_is_empty!36297)))

(assert (=> b!1325534 t!44777))

(declare-fun b_and!49061 () Bool)

(assert (= b_and!49059 (and (=> t!44777 result!24567) b_and!49061)))

(declare-fun m!1214461 () Bool)

(assert (=> b!1325527 m!1214461))

(assert (=> b!1325527 m!1214461))

(declare-fun m!1214463 () Bool)

(assert (=> b!1325527 m!1214463))

(declare-fun m!1214465 () Bool)

(assert (=> b!1325532 m!1214465))

(declare-fun m!1214467 () Bool)

(assert (=> b!1325529 m!1214467))

(declare-fun m!1214469 () Bool)

(assert (=> mapNonEmpty!56097 m!1214469))

(declare-fun m!1214471 () Bool)

(assert (=> start!111914 m!1214471))

(declare-fun m!1214473 () Bool)

(assert (=> start!111914 m!1214473))

(declare-fun m!1214475 () Bool)

(assert (=> start!111914 m!1214475))

(declare-fun m!1214477 () Bool)

(assert (=> b!1325531 m!1214477))

(declare-fun m!1214479 () Bool)

(assert (=> b!1325534 m!1214479))

(declare-fun m!1214481 () Bool)

(assert (=> b!1325534 m!1214481))

(assert (=> b!1325534 m!1214479))

(declare-fun m!1214483 () Bool)

(assert (=> b!1325534 m!1214483))

(assert (=> b!1325534 m!1214483))

(declare-fun m!1214485 () Bool)

(assert (=> b!1325534 m!1214485))

(declare-fun m!1214487 () Bool)

(assert (=> b!1325534 m!1214487))

(declare-fun m!1214489 () Bool)

(assert (=> b!1325534 m!1214489))

(assert (=> b!1325534 m!1214481))

(declare-fun m!1214491 () Bool)

(assert (=> b!1325534 m!1214491))

(assert (=> b!1325534 m!1214477))

(assert (=> b!1325534 m!1214489))

(declare-fun m!1214493 () Bool)

(assert (=> b!1325534 m!1214493))

(assert (=> b!1325530 m!1214477))

(assert (=> b!1325530 m!1214477))

(declare-fun m!1214495 () Bool)

(assert (=> b!1325530 m!1214495))

(check-sat b_and!49061 tp_is_empty!36297 (not b!1325532) (not b!1325529) (not b_lambda!23765) (not b!1325534) (not b!1325527) (not start!111914) (not b!1325530) (not mapNonEmpty!56097) (not b_next!30477))
(check-sat b_and!49061 (not b_next!30477))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111532 () Bool)

(assert start!111532)

(declare-fun b_free!30153 () Bool)

(declare-fun b_next!30153 () Bool)

(assert (=> start!111532 (= b_free!30153 (not b_next!30153))))

(declare-fun tp!105935 () Bool)

(declare-fun b_and!48475 () Bool)

(assert (=> start!111532 (= tp!105935 b_and!48475)))

(declare-fun b!1319794 () Bool)

(declare-fun e!752959 () Bool)

(assert (=> b!1319794 (= e!752959 (not true))))

(declare-datatypes ((V!53067 0))(
  ( (V!53068 (val!18061 Int)) )
))
(declare-datatypes ((tuple2!23414 0))(
  ( (tuple2!23415 (_1!11717 (_ BitVec 64)) (_2!11717 V!53067)) )
))
(declare-datatypes ((List!30598 0))(
  ( (Nil!30595) (Cons!30594 (h!31803 tuple2!23414) (t!44307 List!30598)) )
))
(declare-datatypes ((ListLongMap!21083 0))(
  ( (ListLongMap!21084 (toList!10557 List!30598)) )
))
(declare-fun lt!586699 () ListLongMap!21083)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun contains!8648 (ListLongMap!21083 (_ BitVec 64)) Bool)

(assert (=> b!1319794 (contains!8648 lt!586699 k0!1164)))

(declare-fun zeroValue!1279 () V!53067)

(declare-datatypes ((Unit!43426 0))(
  ( (Unit!43427) )
))
(declare-fun lt!586696 () Unit!43426)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!128 ((_ BitVec 64) (_ BitVec 64) V!53067 ListLongMap!21083) Unit!43426)

(assert (=> b!1319794 (= lt!586696 (lemmaInListMapAfterAddingDiffThenInBefore!128 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586699))))

(declare-fun lt!586698 () ListLongMap!21083)

(assert (=> b!1319794 (contains!8648 lt!586698 k0!1164)))

(declare-fun lt!586697 () Unit!43426)

(declare-fun minValue!1279 () V!53067)

(assert (=> b!1319794 (= lt!586697 (lemmaInListMapAfterAddingDiffThenInBefore!128 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586698))))

(declare-fun +!4513 (ListLongMap!21083 tuple2!23414) ListLongMap!21083)

(assert (=> b!1319794 (= lt!586698 (+!4513 lt!586699 (tuple2!23415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-datatypes ((array!88845 0))(
  ( (array!88846 (arr!42892 (Array (_ BitVec 32) (_ BitVec 64))) (size!43443 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88845)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17088 0))(
  ( (ValueCellFull!17088 (v!20689 V!53067)) (EmptyCell!17088) )
))
(declare-datatypes ((array!88847 0))(
  ( (array!88848 (arr!42893 (Array (_ BitVec 32) ValueCell!17088)) (size!43444 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88847)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6228 (array!88845 array!88847 (_ BitVec 32) (_ BitVec 32) V!53067 V!53067 (_ BitVec 32) Int) ListLongMap!21083)

(declare-fun get!21611 (ValueCell!17088 V!53067) V!53067)

(declare-fun dynLambda!3550 (Int (_ BitVec 64)) V!53067)

(assert (=> b!1319794 (= lt!586699 (+!4513 (getCurrentListMapNoExtraKeys!6228 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23415 (select (arr!42892 _keys!1609) from!2000) (get!21611 (select (arr!42893 _values!1337) from!2000) (dynLambda!3550 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun res!876040 () Bool)

(assert (=> start!111532 (=> (not res!876040) (not e!752959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111532 (= res!876040 (validMask!0 mask!2019))))

(assert (=> start!111532 e!752959))

(declare-fun array_inv!32337 (array!88845) Bool)

(assert (=> start!111532 (array_inv!32337 _keys!1609)))

(assert (=> start!111532 true))

(declare-fun tp_is_empty!35973 () Bool)

(assert (=> start!111532 tp_is_empty!35973))

(declare-fun e!752958 () Bool)

(declare-fun array_inv!32338 (array!88847) Bool)

(assert (=> start!111532 (and (array_inv!32338 _values!1337) e!752958)))

(assert (=> start!111532 tp!105935))

(declare-fun mapNonEmpty!55607 () Bool)

(declare-fun mapRes!55607 () Bool)

(declare-fun tp!105936 () Bool)

(declare-fun e!752961 () Bool)

(assert (=> mapNonEmpty!55607 (= mapRes!55607 (and tp!105936 e!752961))))

(declare-fun mapRest!55607 () (Array (_ BitVec 32) ValueCell!17088))

(declare-fun mapKey!55607 () (_ BitVec 32))

(declare-fun mapValue!55607 () ValueCell!17088)

(assert (=> mapNonEmpty!55607 (= (arr!42893 _values!1337) (store mapRest!55607 mapKey!55607 mapValue!55607))))

(declare-fun b!1319795 () Bool)

(declare-fun res!876033 () Bool)

(assert (=> b!1319795 (=> (not res!876033) (not e!752959))))

(assert (=> b!1319795 (= res!876033 (not (= (select (arr!42892 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1319796 () Bool)

(declare-fun e!752962 () Bool)

(assert (=> b!1319796 (= e!752958 (and e!752962 mapRes!55607))))

(declare-fun condMapEmpty!55607 () Bool)

(declare-fun mapDefault!55607 () ValueCell!17088)

(assert (=> b!1319796 (= condMapEmpty!55607 (= (arr!42893 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17088)) mapDefault!55607)))))

(declare-fun b!1319797 () Bool)

(declare-fun res!876037 () Bool)

(assert (=> b!1319797 (=> (not res!876037) (not e!752959))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88845 (_ BitVec 32)) Bool)

(assert (=> b!1319797 (= res!876037 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319798 () Bool)

(declare-fun res!876036 () Bool)

(assert (=> b!1319798 (=> (not res!876036) (not e!752959))))

(declare-fun getCurrentListMap!5501 (array!88845 array!88847 (_ BitVec 32) (_ BitVec 32) V!53067 V!53067 (_ BitVec 32) Int) ListLongMap!21083)

(assert (=> b!1319798 (= res!876036 (contains!8648 (getCurrentListMap!5501 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1319799 () Bool)

(assert (=> b!1319799 (= e!752961 tp_is_empty!35973)))

(declare-fun mapIsEmpty!55607 () Bool)

(assert (=> mapIsEmpty!55607 mapRes!55607))

(declare-fun b!1319800 () Bool)

(declare-fun res!876034 () Bool)

(assert (=> b!1319800 (=> (not res!876034) (not e!752959))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319800 (= res!876034 (validKeyInArray!0 (select (arr!42892 _keys!1609) from!2000)))))

(declare-fun b!1319801 () Bool)

(assert (=> b!1319801 (= e!752962 tp_is_empty!35973)))

(declare-fun b!1319802 () Bool)

(declare-fun res!876039 () Bool)

(assert (=> b!1319802 (=> (not res!876039) (not e!752959))))

(assert (=> b!1319802 (= res!876039 (and (= (size!43444 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43443 _keys!1609) (size!43444 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1319803 () Bool)

(declare-fun res!876035 () Bool)

(assert (=> b!1319803 (=> (not res!876035) (not e!752959))))

(declare-datatypes ((List!30599 0))(
  ( (Nil!30596) (Cons!30595 (h!31804 (_ BitVec 64)) (t!44308 List!30599)) )
))
(declare-fun arrayNoDuplicates!0 (array!88845 (_ BitVec 32) List!30599) Bool)

(assert (=> b!1319803 (= res!876035 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30596))))

(declare-fun b!1319804 () Bool)

(declare-fun res!876038 () Bool)

(assert (=> b!1319804 (=> (not res!876038) (not e!752959))))

(assert (=> b!1319804 (= res!876038 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43443 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!111532 res!876040) b!1319802))

(assert (= (and b!1319802 res!876039) b!1319797))

(assert (= (and b!1319797 res!876037) b!1319803))

(assert (= (and b!1319803 res!876035) b!1319804))

(assert (= (and b!1319804 res!876038) b!1319798))

(assert (= (and b!1319798 res!876036) b!1319795))

(assert (= (and b!1319795 res!876033) b!1319800))

(assert (= (and b!1319800 res!876034) b!1319794))

(assert (= (and b!1319796 condMapEmpty!55607) mapIsEmpty!55607))

(assert (= (and b!1319796 (not condMapEmpty!55607)) mapNonEmpty!55607))

(get-info :version)

(assert (= (and mapNonEmpty!55607 ((_ is ValueCellFull!17088) mapValue!55607)) b!1319799))

(assert (= (and b!1319796 ((_ is ValueCellFull!17088) mapDefault!55607)) b!1319801))

(assert (= start!111532 b!1319796))

(declare-fun b_lambda!23489 () Bool)

(assert (=> (not b_lambda!23489) (not b!1319794)))

(declare-fun t!44306 () Bool)

(declare-fun tb!11513 () Bool)

(assert (=> (and start!111532 (= defaultEntry!1340 defaultEntry!1340) t!44306) tb!11513))

(declare-fun result!24073 () Bool)

(assert (=> tb!11513 (= result!24073 tp_is_empty!35973)))

(assert (=> b!1319794 t!44306))

(declare-fun b_and!48477 () Bool)

(assert (= b_and!48475 (and (=> t!44306 result!24073) b_and!48477)))

(declare-fun m!1207471 () Bool)

(assert (=> b!1319803 m!1207471))

(declare-fun m!1207473 () Bool)

(assert (=> mapNonEmpty!55607 m!1207473))

(declare-fun m!1207475 () Bool)

(assert (=> b!1319794 m!1207475))

(declare-fun m!1207477 () Bool)

(assert (=> b!1319794 m!1207477))

(assert (=> b!1319794 m!1207475))

(declare-fun m!1207479 () Bool)

(assert (=> b!1319794 m!1207479))

(declare-fun m!1207481 () Bool)

(assert (=> b!1319794 m!1207481))

(declare-fun m!1207483 () Bool)

(assert (=> b!1319794 m!1207483))

(declare-fun m!1207485 () Bool)

(assert (=> b!1319794 m!1207485))

(declare-fun m!1207487 () Bool)

(assert (=> b!1319794 m!1207487))

(assert (=> b!1319794 m!1207487))

(assert (=> b!1319794 m!1207477))

(declare-fun m!1207489 () Bool)

(assert (=> b!1319794 m!1207489))

(declare-fun m!1207491 () Bool)

(assert (=> b!1319794 m!1207491))

(declare-fun m!1207493 () Bool)

(assert (=> b!1319794 m!1207493))

(declare-fun m!1207495 () Bool)

(assert (=> b!1319794 m!1207495))

(assert (=> b!1319800 m!1207493))

(assert (=> b!1319800 m!1207493))

(declare-fun m!1207497 () Bool)

(assert (=> b!1319800 m!1207497))

(declare-fun m!1207499 () Bool)

(assert (=> start!111532 m!1207499))

(declare-fun m!1207501 () Bool)

(assert (=> start!111532 m!1207501))

(declare-fun m!1207503 () Bool)

(assert (=> start!111532 m!1207503))

(assert (=> b!1319795 m!1207493))

(declare-fun m!1207505 () Bool)

(assert (=> b!1319797 m!1207505))

(declare-fun m!1207507 () Bool)

(assert (=> b!1319798 m!1207507))

(assert (=> b!1319798 m!1207507))

(declare-fun m!1207509 () Bool)

(assert (=> b!1319798 m!1207509))

(check-sat (not b_lambda!23489) tp_is_empty!35973 (not mapNonEmpty!55607) (not start!111532) (not b!1319797) b_and!48477 (not b!1319798) (not b!1319800) (not b_next!30153) (not b!1319803) (not b!1319794))
(check-sat b_and!48477 (not b_next!30153))

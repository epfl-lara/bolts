; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111676 () Bool)

(assert start!111676)

(declare-fun b_free!30297 () Bool)

(declare-fun b_next!30297 () Bool)

(assert (=> start!111676 (= b_free!30297 (not b_next!30297))))

(declare-fun tp!106367 () Bool)

(declare-fun b_and!48763 () Bool)

(assert (=> start!111676 (= tp!106367 b_and!48763)))

(declare-fun b!1322314 () Bool)

(declare-fun res!877767 () Bool)

(declare-fun e!754042 () Bool)

(assert (=> b!1322314 (=> (not res!877767) (not e!754042))))

(declare-datatypes ((array!89113 0))(
  ( (array!89114 (arr!43026 (Array (_ BitVec 32) (_ BitVec 64))) (size!43577 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89113)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1322314 (= res!877767 (not (= (select (arr!43026 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1322315 () Bool)

(declare-fun res!877761 () Bool)

(assert (=> b!1322315 (=> (not res!877761) (not e!754042))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53259 0))(
  ( (V!53260 (val!18133 Int)) )
))
(declare-datatypes ((ValueCell!17160 0))(
  ( (ValueCellFull!17160 (v!20761 V!53259)) (EmptyCell!17160) )
))
(declare-datatypes ((array!89115 0))(
  ( (array!89116 (arr!43027 (Array (_ BitVec 32) ValueCell!17160)) (size!43578 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89115)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1322315 (= res!877761 (and (= (size!43578 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43577 _keys!1609) (size!43578 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1322316 () Bool)

(declare-fun res!877768 () Bool)

(assert (=> b!1322316 (=> (not res!877768) (not e!754042))))

(declare-datatypes ((List!30699 0))(
  ( (Nil!30696) (Cons!30695 (h!31904 (_ BitVec 64)) (t!44552 List!30699)) )
))
(declare-fun arrayNoDuplicates!0 (array!89113 (_ BitVec 32) List!30699) Bool)

(assert (=> b!1322316 (= res!877768 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30696))))

(declare-fun b!1322317 () Bool)

(declare-fun res!877763 () Bool)

(assert (=> b!1322317 (=> (not res!877763) (not e!754042))))

(declare-fun zeroValue!1279 () V!53259)

(declare-fun minValue!1279 () V!53259)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23524 0))(
  ( (tuple2!23525 (_1!11772 (_ BitVec 64)) (_2!11772 V!53259)) )
))
(declare-datatypes ((List!30700 0))(
  ( (Nil!30697) (Cons!30696 (h!31905 tuple2!23524) (t!44553 List!30700)) )
))
(declare-datatypes ((ListLongMap!21193 0))(
  ( (ListLongMap!21194 (toList!10612 List!30700)) )
))
(declare-fun contains!8703 (ListLongMap!21193 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5552 (array!89113 array!89115 (_ BitVec 32) (_ BitVec 32) V!53259 V!53259 (_ BitVec 32) Int) ListLongMap!21193)

(assert (=> b!1322317 (= res!877763 (contains!8703 (getCurrentListMap!5552 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1322318 () Bool)

(declare-fun res!877766 () Bool)

(assert (=> b!1322318 (=> (not res!877766) (not e!754042))))

(assert (=> b!1322318 (= res!877766 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43577 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!55823 () Bool)

(declare-fun mapRes!55823 () Bool)

(declare-fun tp!106368 () Bool)

(declare-fun e!754041 () Bool)

(assert (=> mapNonEmpty!55823 (= mapRes!55823 (and tp!106368 e!754041))))

(declare-fun mapValue!55823 () ValueCell!17160)

(declare-fun mapKey!55823 () (_ BitVec 32))

(declare-fun mapRest!55823 () (Array (_ BitVec 32) ValueCell!17160))

(assert (=> mapNonEmpty!55823 (= (arr!43027 _values!1337) (store mapRest!55823 mapKey!55823 mapValue!55823))))

(declare-fun b!1322319 () Bool)

(assert (=> b!1322319 (= e!754042 (not true))))

(declare-fun lt!588084 () ListLongMap!21193)

(declare-fun lt!588085 () tuple2!23524)

(declare-fun +!4562 (ListLongMap!21193 tuple2!23524) ListLongMap!21193)

(assert (=> b!1322319 (contains!8703 (+!4562 lt!588084 lt!588085) k0!1164)))

(declare-datatypes ((Unit!43524 0))(
  ( (Unit!43525) )
))
(declare-fun lt!588088 () Unit!43524)

(declare-fun addStillContains!1143 (ListLongMap!21193 (_ BitVec 64) V!53259 (_ BitVec 64)) Unit!43524)

(assert (=> b!1322319 (= lt!588088 (addStillContains!1143 lt!588084 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1322319 (contains!8703 lt!588084 k0!1164)))

(declare-fun lt!588083 () V!53259)

(declare-fun lt!588080 () Unit!43524)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!177 ((_ BitVec 64) (_ BitVec 64) V!53259 ListLongMap!21193) Unit!43524)

(assert (=> b!1322319 (= lt!588080 (lemmaInListMapAfterAddingDiffThenInBefore!177 k0!1164 (select (arr!43026 _keys!1609) from!2000) lt!588083 lt!588084))))

(declare-fun lt!588087 () ListLongMap!21193)

(assert (=> b!1322319 (contains!8703 lt!588087 k0!1164)))

(declare-fun lt!588082 () Unit!43524)

(assert (=> b!1322319 (= lt!588082 (lemmaInListMapAfterAddingDiffThenInBefore!177 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588087))))

(declare-fun lt!588081 () ListLongMap!21193)

(assert (=> b!1322319 (contains!8703 lt!588081 k0!1164)))

(declare-fun lt!588086 () Unit!43524)

(assert (=> b!1322319 (= lt!588086 (lemmaInListMapAfterAddingDiffThenInBefore!177 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588081))))

(assert (=> b!1322319 (= lt!588081 (+!4562 lt!588087 lt!588085))))

(assert (=> b!1322319 (= lt!588085 (tuple2!23525 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1322319 (= lt!588087 (+!4562 lt!588084 (tuple2!23525 (select (arr!43026 _keys!1609) from!2000) lt!588083)))))

(declare-fun get!21708 (ValueCell!17160 V!53259) V!53259)

(declare-fun dynLambda!3599 (Int (_ BitVec 64)) V!53259)

(assert (=> b!1322319 (= lt!588083 (get!21708 (select (arr!43027 _values!1337) from!2000) (dynLambda!3599 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6277 (array!89113 array!89115 (_ BitVec 32) (_ BitVec 32) V!53259 V!53259 (_ BitVec 32) Int) ListLongMap!21193)

(assert (=> b!1322319 (= lt!588084 (getCurrentListMapNoExtraKeys!6277 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1322320 () Bool)

(declare-fun tp_is_empty!36117 () Bool)

(assert (=> b!1322320 (= e!754041 tp_is_empty!36117)))

(declare-fun b!1322321 () Bool)

(declare-fun res!877765 () Bool)

(assert (=> b!1322321 (=> (not res!877765) (not e!754042))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1322321 (= res!877765 (validKeyInArray!0 (select (arr!43026 _keys!1609) from!2000)))))

(declare-fun b!1322322 () Bool)

(declare-fun res!877762 () Bool)

(assert (=> b!1322322 (=> (not res!877762) (not e!754042))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89113 (_ BitVec 32)) Bool)

(assert (=> b!1322322 (= res!877762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322323 () Bool)

(declare-fun e!754040 () Bool)

(declare-fun e!754038 () Bool)

(assert (=> b!1322323 (= e!754040 (and e!754038 mapRes!55823))))

(declare-fun condMapEmpty!55823 () Bool)

(declare-fun mapDefault!55823 () ValueCell!17160)

(assert (=> b!1322323 (= condMapEmpty!55823 (= (arr!43027 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17160)) mapDefault!55823)))))

(declare-fun b!1322324 () Bool)

(assert (=> b!1322324 (= e!754038 tp_is_empty!36117)))

(declare-fun mapIsEmpty!55823 () Bool)

(assert (=> mapIsEmpty!55823 mapRes!55823))

(declare-fun res!877764 () Bool)

(assert (=> start!111676 (=> (not res!877764) (not e!754042))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111676 (= res!877764 (validMask!0 mask!2019))))

(assert (=> start!111676 e!754042))

(declare-fun array_inv!32435 (array!89113) Bool)

(assert (=> start!111676 (array_inv!32435 _keys!1609)))

(assert (=> start!111676 true))

(assert (=> start!111676 tp_is_empty!36117))

(declare-fun array_inv!32436 (array!89115) Bool)

(assert (=> start!111676 (and (array_inv!32436 _values!1337) e!754040)))

(assert (=> start!111676 tp!106367))

(assert (= (and start!111676 res!877764) b!1322315))

(assert (= (and b!1322315 res!877761) b!1322322))

(assert (= (and b!1322322 res!877762) b!1322316))

(assert (= (and b!1322316 res!877768) b!1322318))

(assert (= (and b!1322318 res!877766) b!1322317))

(assert (= (and b!1322317 res!877763) b!1322314))

(assert (= (and b!1322314 res!877767) b!1322321))

(assert (= (and b!1322321 res!877765) b!1322319))

(assert (= (and b!1322323 condMapEmpty!55823) mapIsEmpty!55823))

(assert (= (and b!1322323 (not condMapEmpty!55823)) mapNonEmpty!55823))

(get-info :version)

(assert (= (and mapNonEmpty!55823 ((_ is ValueCellFull!17160) mapValue!55823)) b!1322320))

(assert (= (and b!1322323 ((_ is ValueCellFull!17160) mapDefault!55823)) b!1322324))

(assert (= start!111676 b!1322323))

(declare-fun b_lambda!23633 () Bool)

(assert (=> (not b_lambda!23633) (not b!1322319)))

(declare-fun t!44551 () Bool)

(declare-fun tb!11657 () Bool)

(assert (=> (and start!111676 (= defaultEntry!1340 defaultEntry!1340) t!44551) tb!11657))

(declare-fun result!24361 () Bool)

(assert (=> tb!11657 (= result!24361 tp_is_empty!36117)))

(assert (=> b!1322319 t!44551))

(declare-fun b_and!48765 () Bool)

(assert (= b_and!48763 (and (=> t!44551 result!24361) b_and!48765)))

(declare-fun m!1210631 () Bool)

(assert (=> b!1322316 m!1210631))

(declare-fun m!1210633 () Bool)

(assert (=> b!1322317 m!1210633))

(assert (=> b!1322317 m!1210633))

(declare-fun m!1210635 () Bool)

(assert (=> b!1322317 m!1210635))

(declare-fun m!1210637 () Bool)

(assert (=> b!1322321 m!1210637))

(assert (=> b!1322321 m!1210637))

(declare-fun m!1210639 () Bool)

(assert (=> b!1322321 m!1210639))

(declare-fun m!1210641 () Bool)

(assert (=> start!111676 m!1210641))

(declare-fun m!1210643 () Bool)

(assert (=> start!111676 m!1210643))

(declare-fun m!1210645 () Bool)

(assert (=> start!111676 m!1210645))

(declare-fun m!1210647 () Bool)

(assert (=> b!1322319 m!1210647))

(declare-fun m!1210649 () Bool)

(assert (=> b!1322319 m!1210649))

(declare-fun m!1210651 () Bool)

(assert (=> b!1322319 m!1210651))

(declare-fun m!1210653 () Bool)

(assert (=> b!1322319 m!1210653))

(declare-fun m!1210655 () Bool)

(assert (=> b!1322319 m!1210655))

(declare-fun m!1210657 () Bool)

(assert (=> b!1322319 m!1210657))

(declare-fun m!1210659 () Bool)

(assert (=> b!1322319 m!1210659))

(declare-fun m!1210661 () Bool)

(assert (=> b!1322319 m!1210661))

(assert (=> b!1322319 m!1210637))

(declare-fun m!1210663 () Bool)

(assert (=> b!1322319 m!1210663))

(assert (=> b!1322319 m!1210637))

(declare-fun m!1210665 () Bool)

(assert (=> b!1322319 m!1210665))

(assert (=> b!1322319 m!1210665))

(declare-fun m!1210667 () Bool)

(assert (=> b!1322319 m!1210667))

(declare-fun m!1210669 () Bool)

(assert (=> b!1322319 m!1210669))

(assert (=> b!1322319 m!1210657))

(assert (=> b!1322319 m!1210653))

(declare-fun m!1210671 () Bool)

(assert (=> b!1322319 m!1210671))

(declare-fun m!1210673 () Bool)

(assert (=> b!1322319 m!1210673))

(declare-fun m!1210675 () Bool)

(assert (=> b!1322319 m!1210675))

(assert (=> b!1322314 m!1210637))

(declare-fun m!1210677 () Bool)

(assert (=> b!1322322 m!1210677))

(declare-fun m!1210679 () Bool)

(assert (=> mapNonEmpty!55823 m!1210679))

(check-sat (not b!1322321) (not b!1322319) (not b!1322317) (not start!111676) (not b!1322316) (not b_lambda!23633) (not mapNonEmpty!55823) (not b!1322322) (not b_next!30297) tp_is_empty!36117 b_and!48765)
(check-sat b_and!48765 (not b_next!30297))

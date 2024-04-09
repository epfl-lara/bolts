; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111694 () Bool)

(assert start!111694)

(declare-fun b_free!30315 () Bool)

(declare-fun b_next!30315 () Bool)

(assert (=> start!111694 (= b_free!30315 (not b_next!30315))))

(declare-fun tp!106422 () Bool)

(declare-fun b_and!48799 () Bool)

(assert (=> start!111694 (= tp!106422 b_and!48799)))

(declare-fun b!1322629 () Bool)

(declare-fun res!877983 () Bool)

(declare-fun e!754176 () Bool)

(assert (=> b!1322629 (=> (not res!877983) (not e!754176))))

(declare-datatypes ((array!89147 0))(
  ( (array!89148 (arr!43043 (Array (_ BitVec 32) (_ BitVec 64))) (size!43594 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89147)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53283 0))(
  ( (V!53284 (val!18142 Int)) )
))
(declare-fun zeroValue!1279 () V!53283)

(declare-datatypes ((ValueCell!17169 0))(
  ( (ValueCellFull!17169 (v!20770 V!53283)) (EmptyCell!17169) )
))
(declare-datatypes ((array!89149 0))(
  ( (array!89150 (arr!43044 (Array (_ BitVec 32) ValueCell!17169)) (size!43595 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89149)

(declare-fun minValue!1279 () V!53283)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23538 0))(
  ( (tuple2!23539 (_1!11779 (_ BitVec 64)) (_2!11779 V!53283)) )
))
(declare-datatypes ((List!30712 0))(
  ( (Nil!30709) (Cons!30708 (h!31917 tuple2!23538) (t!44583 List!30712)) )
))
(declare-datatypes ((ListLongMap!21207 0))(
  ( (ListLongMap!21208 (toList!10619 List!30712)) )
))
(declare-fun contains!8710 (ListLongMap!21207 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5559 (array!89147 array!89149 (_ BitVec 32) (_ BitVec 32) V!53283 V!53283 (_ BitVec 32) Int) ListLongMap!21207)

(assert (=> b!1322629 (= res!877983 (contains!8710 (getCurrentListMap!5559 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1322630 () Bool)

(declare-fun res!877977 () Bool)

(assert (=> b!1322630 (=> (not res!877977) (not e!754176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89147 (_ BitVec 32)) Bool)

(assert (=> b!1322630 (= res!877977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322631 () Bool)

(declare-fun res!877980 () Bool)

(assert (=> b!1322631 (=> (not res!877980) (not e!754176))))

(declare-datatypes ((List!30713 0))(
  ( (Nil!30710) (Cons!30709 (h!31918 (_ BitVec 64)) (t!44584 List!30713)) )
))
(declare-fun arrayNoDuplicates!0 (array!89147 (_ BitVec 32) List!30713) Bool)

(assert (=> b!1322631 (= res!877980 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30710))))

(declare-fun b!1322632 () Bool)

(declare-fun res!877978 () Bool)

(assert (=> b!1322632 (=> (not res!877978) (not e!754176))))

(assert (=> b!1322632 (= res!877978 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43594 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1322633 () Bool)

(assert (=> b!1322633 (= e!754176 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000)))))

(declare-fun lt!588329 () ListLongMap!21207)

(declare-fun lt!588323 () tuple2!23538)

(declare-fun +!4567 (ListLongMap!21207 tuple2!23538) ListLongMap!21207)

(assert (=> b!1322633 (contains!8710 (+!4567 lt!588329 lt!588323) k0!1164)))

(declare-datatypes ((Unit!43534 0))(
  ( (Unit!43535) )
))
(declare-fun lt!588327 () Unit!43534)

(declare-fun addStillContains!1148 (ListLongMap!21207 (_ BitVec 64) V!53283 (_ BitVec 64)) Unit!43534)

(assert (=> b!1322633 (= lt!588327 (addStillContains!1148 lt!588329 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1322633 (contains!8710 lt!588329 k0!1164)))

(declare-fun lt!588326 () Unit!43534)

(declare-fun lt!588330 () V!53283)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!182 ((_ BitVec 64) (_ BitVec 64) V!53283 ListLongMap!21207) Unit!43534)

(assert (=> b!1322633 (= lt!588326 (lemmaInListMapAfterAddingDiffThenInBefore!182 k0!1164 (select (arr!43043 _keys!1609) from!2000) lt!588330 lt!588329))))

(declare-fun lt!588328 () ListLongMap!21207)

(assert (=> b!1322633 (contains!8710 lt!588328 k0!1164)))

(declare-fun lt!588324 () Unit!43534)

(assert (=> b!1322633 (= lt!588324 (lemmaInListMapAfterAddingDiffThenInBefore!182 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588328))))

(declare-fun lt!588331 () ListLongMap!21207)

(assert (=> b!1322633 (contains!8710 lt!588331 k0!1164)))

(declare-fun lt!588325 () Unit!43534)

(assert (=> b!1322633 (= lt!588325 (lemmaInListMapAfterAddingDiffThenInBefore!182 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588331))))

(assert (=> b!1322633 (= lt!588331 (+!4567 lt!588328 lt!588323))))

(assert (=> b!1322633 (= lt!588323 (tuple2!23539 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1322633 (= lt!588328 (+!4567 lt!588329 (tuple2!23539 (select (arr!43043 _keys!1609) from!2000) lt!588330)))))

(declare-fun get!21719 (ValueCell!17169 V!53283) V!53283)

(declare-fun dynLambda!3604 (Int (_ BitVec 64)) V!53283)

(assert (=> b!1322633 (= lt!588330 (get!21719 (select (arr!43044 _values!1337) from!2000) (dynLambda!3604 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6282 (array!89147 array!89149 (_ BitVec 32) (_ BitVec 32) V!53283 V!53283 (_ BitVec 32) Int) ListLongMap!21207)

(assert (=> b!1322633 (= lt!588329 (getCurrentListMapNoExtraKeys!6282 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1322634 () Bool)

(declare-fun e!754173 () Bool)

(declare-fun e!754174 () Bool)

(declare-fun mapRes!55850 () Bool)

(assert (=> b!1322634 (= e!754173 (and e!754174 mapRes!55850))))

(declare-fun condMapEmpty!55850 () Bool)

(declare-fun mapDefault!55850 () ValueCell!17169)

(assert (=> b!1322634 (= condMapEmpty!55850 (= (arr!43044 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17169)) mapDefault!55850)))))

(declare-fun res!877979 () Bool)

(assert (=> start!111694 (=> (not res!877979) (not e!754176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111694 (= res!877979 (validMask!0 mask!2019))))

(assert (=> start!111694 e!754176))

(declare-fun array_inv!32451 (array!89147) Bool)

(assert (=> start!111694 (array_inv!32451 _keys!1609)))

(assert (=> start!111694 true))

(declare-fun tp_is_empty!36135 () Bool)

(assert (=> start!111694 tp_is_empty!36135))

(declare-fun array_inv!32452 (array!89149) Bool)

(assert (=> start!111694 (and (array_inv!32452 _values!1337) e!754173)))

(assert (=> start!111694 tp!106422))

(declare-fun b!1322635 () Bool)

(declare-fun res!877982 () Bool)

(assert (=> b!1322635 (=> (not res!877982) (not e!754176))))

(assert (=> b!1322635 (= res!877982 (and (= (size!43595 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43594 _keys!1609) (size!43595 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1322636 () Bool)

(declare-fun res!877984 () Bool)

(assert (=> b!1322636 (=> (not res!877984) (not e!754176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1322636 (= res!877984 (validKeyInArray!0 (select (arr!43043 _keys!1609) from!2000)))))

(declare-fun b!1322637 () Bool)

(declare-fun res!877981 () Bool)

(assert (=> b!1322637 (=> (not res!877981) (not e!754176))))

(assert (=> b!1322637 (= res!877981 (not (= (select (arr!43043 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1322638 () Bool)

(assert (=> b!1322638 (= e!754174 tp_is_empty!36135)))

(declare-fun mapIsEmpty!55850 () Bool)

(assert (=> mapIsEmpty!55850 mapRes!55850))

(declare-fun mapNonEmpty!55850 () Bool)

(declare-fun tp!106421 () Bool)

(declare-fun e!754177 () Bool)

(assert (=> mapNonEmpty!55850 (= mapRes!55850 (and tp!106421 e!754177))))

(declare-fun mapValue!55850 () ValueCell!17169)

(declare-fun mapRest!55850 () (Array (_ BitVec 32) ValueCell!17169))

(declare-fun mapKey!55850 () (_ BitVec 32))

(assert (=> mapNonEmpty!55850 (= (arr!43044 _values!1337) (store mapRest!55850 mapKey!55850 mapValue!55850))))

(declare-fun b!1322639 () Bool)

(assert (=> b!1322639 (= e!754177 tp_is_empty!36135)))

(assert (= (and start!111694 res!877979) b!1322635))

(assert (= (and b!1322635 res!877982) b!1322630))

(assert (= (and b!1322630 res!877977) b!1322631))

(assert (= (and b!1322631 res!877980) b!1322632))

(assert (= (and b!1322632 res!877978) b!1322629))

(assert (= (and b!1322629 res!877983) b!1322637))

(assert (= (and b!1322637 res!877981) b!1322636))

(assert (= (and b!1322636 res!877984) b!1322633))

(assert (= (and b!1322634 condMapEmpty!55850) mapIsEmpty!55850))

(assert (= (and b!1322634 (not condMapEmpty!55850)) mapNonEmpty!55850))

(get-info :version)

(assert (= (and mapNonEmpty!55850 ((_ is ValueCellFull!17169) mapValue!55850)) b!1322639))

(assert (= (and b!1322634 ((_ is ValueCellFull!17169) mapDefault!55850)) b!1322638))

(assert (= start!111694 b!1322634))

(declare-fun b_lambda!23651 () Bool)

(assert (=> (not b_lambda!23651) (not b!1322633)))

(declare-fun t!44582 () Bool)

(declare-fun tb!11675 () Bool)

(assert (=> (and start!111694 (= defaultEntry!1340 defaultEntry!1340) t!44582) tb!11675))

(declare-fun result!24397 () Bool)

(assert (=> tb!11675 (= result!24397 tp_is_empty!36135)))

(assert (=> b!1322633 t!44582))

(declare-fun b_and!48801 () Bool)

(assert (= b_and!48799 (and (=> t!44582 result!24397) b_and!48801)))

(declare-fun m!1211081 () Bool)

(assert (=> mapNonEmpty!55850 m!1211081))

(declare-fun m!1211083 () Bool)

(assert (=> b!1322630 m!1211083))

(declare-fun m!1211085 () Bool)

(assert (=> b!1322629 m!1211085))

(assert (=> b!1322629 m!1211085))

(declare-fun m!1211087 () Bool)

(assert (=> b!1322629 m!1211087))

(declare-fun m!1211089 () Bool)

(assert (=> b!1322633 m!1211089))

(declare-fun m!1211091 () Bool)

(assert (=> b!1322633 m!1211091))

(declare-fun m!1211093 () Bool)

(assert (=> b!1322633 m!1211093))

(declare-fun m!1211095 () Bool)

(assert (=> b!1322633 m!1211095))

(declare-fun m!1211097 () Bool)

(assert (=> b!1322633 m!1211097))

(declare-fun m!1211099 () Bool)

(assert (=> b!1322633 m!1211099))

(declare-fun m!1211101 () Bool)

(assert (=> b!1322633 m!1211101))

(declare-fun m!1211103 () Bool)

(assert (=> b!1322633 m!1211103))

(declare-fun m!1211105 () Bool)

(assert (=> b!1322633 m!1211105))

(assert (=> b!1322633 m!1211095))

(declare-fun m!1211107 () Bool)

(assert (=> b!1322633 m!1211107))

(assert (=> b!1322633 m!1211093))

(declare-fun m!1211109 () Bool)

(assert (=> b!1322633 m!1211109))

(assert (=> b!1322633 m!1211101))

(declare-fun m!1211111 () Bool)

(assert (=> b!1322633 m!1211111))

(declare-fun m!1211113 () Bool)

(assert (=> b!1322633 m!1211113))

(assert (=> b!1322633 m!1211107))

(declare-fun m!1211115 () Bool)

(assert (=> b!1322633 m!1211115))

(declare-fun m!1211117 () Bool)

(assert (=> b!1322633 m!1211117))

(declare-fun m!1211119 () Bool)

(assert (=> b!1322633 m!1211119))

(declare-fun m!1211121 () Bool)

(assert (=> b!1322631 m!1211121))

(declare-fun m!1211123 () Bool)

(assert (=> start!111694 m!1211123))

(declare-fun m!1211125 () Bool)

(assert (=> start!111694 m!1211125))

(declare-fun m!1211127 () Bool)

(assert (=> start!111694 m!1211127))

(assert (=> b!1322636 m!1211101))

(assert (=> b!1322636 m!1211101))

(declare-fun m!1211129 () Bool)

(assert (=> b!1322636 m!1211129))

(assert (=> b!1322637 m!1211101))

(check-sat (not b!1322629) (not b!1322633) (not b!1322631) b_and!48801 (not b!1322636) (not b_lambda!23651) (not mapNonEmpty!55850) tp_is_empty!36135 (not b!1322630) (not b_next!30315) (not start!111694))
(check-sat b_and!48801 (not b_next!30315))

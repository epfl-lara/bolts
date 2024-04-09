; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111682 () Bool)

(assert start!111682)

(declare-fun b_free!30303 () Bool)

(declare-fun b_next!30303 () Bool)

(assert (=> start!111682 (= b_free!30303 (not b_next!30303))))

(declare-fun tp!106386 () Bool)

(declare-fun b_and!48775 () Bool)

(assert (=> start!111682 (= tp!106386 b_and!48775)))

(declare-fun b!1322419 () Bool)

(declare-fun res!877834 () Bool)

(declare-fun e!754087 () Bool)

(assert (=> b!1322419 (=> (not res!877834) (not e!754087))))

(declare-datatypes ((array!89125 0))(
  ( (array!89126 (arr!43032 (Array (_ BitVec 32) (_ BitVec 64))) (size!43583 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89125)

(declare-datatypes ((List!30702 0))(
  ( (Nil!30699) (Cons!30698 (h!31907 (_ BitVec 64)) (t!44561 List!30702)) )
))
(declare-fun arrayNoDuplicates!0 (array!89125 (_ BitVec 32) List!30702) Bool)

(assert (=> b!1322419 (= res!877834 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30699))))

(declare-fun mapIsEmpty!55832 () Bool)

(declare-fun mapRes!55832 () Bool)

(assert (=> mapIsEmpty!55832 mapRes!55832))

(declare-fun b!1322420 () Bool)

(declare-fun e!754084 () Bool)

(declare-fun tp_is_empty!36123 () Bool)

(assert (=> b!1322420 (= e!754084 tp_is_empty!36123)))

(declare-fun b!1322421 () Bool)

(declare-fun res!877840 () Bool)

(assert (=> b!1322421 (=> (not res!877840) (not e!754087))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1322421 (= res!877840 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43583 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1322422 () Bool)

(assert (=> b!1322422 (= e!754087 (not true))))

(declare-datatypes ((V!53267 0))(
  ( (V!53268 (val!18136 Int)) )
))
(declare-datatypes ((tuple2!23528 0))(
  ( (tuple2!23529 (_1!11774 (_ BitVec 64)) (_2!11774 V!53267)) )
))
(declare-datatypes ((List!30703 0))(
  ( (Nil!30700) (Cons!30699 (h!31908 tuple2!23528) (t!44562 List!30703)) )
))
(declare-datatypes ((ListLongMap!21197 0))(
  ( (ListLongMap!21198 (toList!10614 List!30703)) )
))
(declare-fun lt!588169 () ListLongMap!21197)

(declare-fun lt!588163 () tuple2!23528)

(declare-fun contains!8705 (ListLongMap!21197 (_ BitVec 64)) Bool)

(declare-fun +!4564 (ListLongMap!21197 tuple2!23528) ListLongMap!21197)

(assert (=> b!1322422 (contains!8705 (+!4564 lt!588169 lt!588163) k0!1164)))

(declare-fun zeroValue!1279 () V!53267)

(declare-datatypes ((Unit!43528 0))(
  ( (Unit!43529) )
))
(declare-fun lt!588164 () Unit!43528)

(declare-fun addStillContains!1145 (ListLongMap!21197 (_ BitVec 64) V!53267 (_ BitVec 64)) Unit!43528)

(assert (=> b!1322422 (= lt!588164 (addStillContains!1145 lt!588169 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1322422 (contains!8705 lt!588169 k0!1164)))

(declare-fun lt!588161 () V!53267)

(declare-fun lt!588166 () Unit!43528)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!179 ((_ BitVec 64) (_ BitVec 64) V!53267 ListLongMap!21197) Unit!43528)

(assert (=> b!1322422 (= lt!588166 (lemmaInListMapAfterAddingDiffThenInBefore!179 k0!1164 (select (arr!43032 _keys!1609) from!2000) lt!588161 lt!588169))))

(declare-fun lt!588167 () ListLongMap!21197)

(assert (=> b!1322422 (contains!8705 lt!588167 k0!1164)))

(declare-fun lt!588168 () Unit!43528)

(assert (=> b!1322422 (= lt!588168 (lemmaInListMapAfterAddingDiffThenInBefore!179 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588167))))

(declare-fun lt!588165 () ListLongMap!21197)

(assert (=> b!1322422 (contains!8705 lt!588165 k0!1164)))

(declare-fun lt!588162 () Unit!43528)

(declare-fun minValue!1279 () V!53267)

(assert (=> b!1322422 (= lt!588162 (lemmaInListMapAfterAddingDiffThenInBefore!179 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588165))))

(assert (=> b!1322422 (= lt!588165 (+!4564 lt!588167 lt!588163))))

(assert (=> b!1322422 (= lt!588163 (tuple2!23529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1322422 (= lt!588167 (+!4564 lt!588169 (tuple2!23529 (select (arr!43032 _keys!1609) from!2000) lt!588161)))))

(declare-datatypes ((ValueCell!17163 0))(
  ( (ValueCellFull!17163 (v!20764 V!53267)) (EmptyCell!17163) )
))
(declare-datatypes ((array!89127 0))(
  ( (array!89128 (arr!43033 (Array (_ BitVec 32) ValueCell!17163)) (size!43584 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89127)

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21712 (ValueCell!17163 V!53267) V!53267)

(declare-fun dynLambda!3601 (Int (_ BitVec 64)) V!53267)

(assert (=> b!1322422 (= lt!588161 (get!21712 (select (arr!43033 _values!1337) from!2000) (dynLambda!3601 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6279 (array!89125 array!89127 (_ BitVec 32) (_ BitVec 32) V!53267 V!53267 (_ BitVec 32) Int) ListLongMap!21197)

(assert (=> b!1322422 (= lt!588169 (getCurrentListMapNoExtraKeys!6279 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun mapNonEmpty!55832 () Bool)

(declare-fun tp!106385 () Bool)

(assert (=> mapNonEmpty!55832 (= mapRes!55832 (and tp!106385 e!754084))))

(declare-fun mapRest!55832 () (Array (_ BitVec 32) ValueCell!17163))

(declare-fun mapValue!55832 () ValueCell!17163)

(declare-fun mapKey!55832 () (_ BitVec 32))

(assert (=> mapNonEmpty!55832 (= (arr!43033 _values!1337) (store mapRest!55832 mapKey!55832 mapValue!55832))))

(declare-fun b!1322423 () Bool)

(declare-fun res!877838 () Bool)

(assert (=> b!1322423 (=> (not res!877838) (not e!754087))))

(assert (=> b!1322423 (= res!877838 (and (= (size!43584 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43583 _keys!1609) (size!43584 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1322424 () Bool)

(declare-fun e!754085 () Bool)

(declare-fun e!754086 () Bool)

(assert (=> b!1322424 (= e!754085 (and e!754086 mapRes!55832))))

(declare-fun condMapEmpty!55832 () Bool)

(declare-fun mapDefault!55832 () ValueCell!17163)

(assert (=> b!1322424 (= condMapEmpty!55832 (= (arr!43033 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17163)) mapDefault!55832)))))

(declare-fun b!1322425 () Bool)

(declare-fun res!877833 () Bool)

(assert (=> b!1322425 (=> (not res!877833) (not e!754087))))

(assert (=> b!1322425 (= res!877833 (not (= (select (arr!43032 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1322426 () Bool)

(declare-fun res!877839 () Bool)

(assert (=> b!1322426 (=> (not res!877839) (not e!754087))))

(declare-fun getCurrentListMap!5554 (array!89125 array!89127 (_ BitVec 32) (_ BitVec 32) V!53267 V!53267 (_ BitVec 32) Int) ListLongMap!21197)

(assert (=> b!1322426 (= res!877839 (contains!8705 (getCurrentListMap!5554 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun res!877837 () Bool)

(assert (=> start!111682 (=> (not res!877837) (not e!754087))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111682 (= res!877837 (validMask!0 mask!2019))))

(assert (=> start!111682 e!754087))

(declare-fun array_inv!32441 (array!89125) Bool)

(assert (=> start!111682 (array_inv!32441 _keys!1609)))

(assert (=> start!111682 true))

(assert (=> start!111682 tp_is_empty!36123))

(declare-fun array_inv!32442 (array!89127) Bool)

(assert (=> start!111682 (and (array_inv!32442 _values!1337) e!754085)))

(assert (=> start!111682 tp!106386))

(declare-fun b!1322427 () Bool)

(declare-fun res!877836 () Bool)

(assert (=> b!1322427 (=> (not res!877836) (not e!754087))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1322427 (= res!877836 (validKeyInArray!0 (select (arr!43032 _keys!1609) from!2000)))))

(declare-fun b!1322428 () Bool)

(declare-fun res!877835 () Bool)

(assert (=> b!1322428 (=> (not res!877835) (not e!754087))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89125 (_ BitVec 32)) Bool)

(assert (=> b!1322428 (= res!877835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322429 () Bool)

(assert (=> b!1322429 (= e!754086 tp_is_empty!36123)))

(assert (= (and start!111682 res!877837) b!1322423))

(assert (= (and b!1322423 res!877838) b!1322428))

(assert (= (and b!1322428 res!877835) b!1322419))

(assert (= (and b!1322419 res!877834) b!1322421))

(assert (= (and b!1322421 res!877840) b!1322426))

(assert (= (and b!1322426 res!877839) b!1322425))

(assert (= (and b!1322425 res!877833) b!1322427))

(assert (= (and b!1322427 res!877836) b!1322422))

(assert (= (and b!1322424 condMapEmpty!55832) mapIsEmpty!55832))

(assert (= (and b!1322424 (not condMapEmpty!55832)) mapNonEmpty!55832))

(get-info :version)

(assert (= (and mapNonEmpty!55832 ((_ is ValueCellFull!17163) mapValue!55832)) b!1322420))

(assert (= (and b!1322424 ((_ is ValueCellFull!17163) mapDefault!55832)) b!1322429))

(assert (= start!111682 b!1322424))

(declare-fun b_lambda!23639 () Bool)

(assert (=> (not b_lambda!23639) (not b!1322422)))

(declare-fun t!44560 () Bool)

(declare-fun tb!11663 () Bool)

(assert (=> (and start!111682 (= defaultEntry!1340 defaultEntry!1340) t!44560) tb!11663))

(declare-fun result!24373 () Bool)

(assert (=> tb!11663 (= result!24373 tp_is_empty!36123)))

(assert (=> b!1322422 t!44560))

(declare-fun b_and!48777 () Bool)

(assert (= b_and!48775 (and (=> t!44560 result!24373) b_and!48777)))

(declare-fun m!1210781 () Bool)

(assert (=> b!1322422 m!1210781))

(declare-fun m!1210783 () Bool)

(assert (=> b!1322422 m!1210783))

(declare-fun m!1210785 () Bool)

(assert (=> b!1322422 m!1210785))

(declare-fun m!1210787 () Bool)

(assert (=> b!1322422 m!1210787))

(declare-fun m!1210789 () Bool)

(assert (=> b!1322422 m!1210789))

(declare-fun m!1210791 () Bool)

(assert (=> b!1322422 m!1210791))

(declare-fun m!1210793 () Bool)

(assert (=> b!1322422 m!1210793))

(declare-fun m!1210795 () Bool)

(assert (=> b!1322422 m!1210795))

(declare-fun m!1210797 () Bool)

(assert (=> b!1322422 m!1210797))

(declare-fun m!1210799 () Bool)

(assert (=> b!1322422 m!1210799))

(assert (=> b!1322422 m!1210787))

(assert (=> b!1322422 m!1210795))

(declare-fun m!1210801 () Bool)

(assert (=> b!1322422 m!1210801))

(declare-fun m!1210803 () Bool)

(assert (=> b!1322422 m!1210803))

(assert (=> b!1322422 m!1210797))

(declare-fun m!1210805 () Bool)

(assert (=> b!1322422 m!1210805))

(assert (=> b!1322422 m!1210801))

(declare-fun m!1210807 () Bool)

(assert (=> b!1322422 m!1210807))

(declare-fun m!1210809 () Bool)

(assert (=> b!1322422 m!1210809))

(declare-fun m!1210811 () Bool)

(assert (=> b!1322422 m!1210811))

(declare-fun m!1210813 () Bool)

(assert (=> b!1322426 m!1210813))

(assert (=> b!1322426 m!1210813))

(declare-fun m!1210815 () Bool)

(assert (=> b!1322426 m!1210815))

(declare-fun m!1210817 () Bool)

(assert (=> b!1322428 m!1210817))

(declare-fun m!1210819 () Bool)

(assert (=> b!1322419 m!1210819))

(declare-fun m!1210821 () Bool)

(assert (=> mapNonEmpty!55832 m!1210821))

(declare-fun m!1210823 () Bool)

(assert (=> start!111682 m!1210823))

(declare-fun m!1210825 () Bool)

(assert (=> start!111682 m!1210825))

(declare-fun m!1210827 () Bool)

(assert (=> start!111682 m!1210827))

(assert (=> b!1322427 m!1210797))

(assert (=> b!1322427 m!1210797))

(declare-fun m!1210829 () Bool)

(assert (=> b!1322427 m!1210829))

(assert (=> b!1322425 m!1210797))

(check-sat (not b!1322426) tp_is_empty!36123 (not b!1322428) (not b!1322419) (not start!111682) (not b_lambda!23639) (not b!1322427) b_and!48777 (not mapNonEmpty!55832) (not b_next!30303) (not b!1322422))
(check-sat b_and!48777 (not b_next!30303))

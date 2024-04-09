; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111718 () Bool)

(assert start!111718)

(declare-fun b_free!30339 () Bool)

(declare-fun b_next!30339 () Bool)

(assert (=> start!111718 (= b_free!30339 (not b_next!30339))))

(declare-fun tp!106494 () Bool)

(declare-fun b_and!48847 () Bool)

(assert (=> start!111718 (= tp!106494 b_and!48847)))

(declare-fun b!1323049 () Bool)

(declare-fun res!878267 () Bool)

(declare-fun e!754356 () Bool)

(assert (=> b!1323049 (=> (not res!878267) (not e!754356))))

(declare-datatypes ((array!89193 0))(
  ( (array!89194 (arr!43066 (Array (_ BitVec 32) (_ BitVec 64))) (size!43617 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89193)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1323049 (= res!878267 (validKeyInArray!0 (select (arr!43066 _keys!1609) from!2000)))))

(declare-fun b!1323050 () Bool)

(declare-fun res!878270 () Bool)

(assert (=> b!1323050 (=> (not res!878270) (not e!754356))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53315 0))(
  ( (V!53316 (val!18154 Int)) )
))
(declare-datatypes ((ValueCell!17181 0))(
  ( (ValueCellFull!17181 (v!20782 V!53315)) (EmptyCell!17181) )
))
(declare-datatypes ((array!89195 0))(
  ( (array!89196 (arr!43067 (Array (_ BitVec 32) ValueCell!17181)) (size!43618 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89195)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1323050 (= res!878270 (and (= (size!43618 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43617 _keys!1609) (size!43618 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1323051 () Bool)

(assert (=> b!1323051 (= e!754356 (not true))))

(declare-datatypes ((tuple2!23554 0))(
  ( (tuple2!23555 (_1!11787 (_ BitVec 64)) (_2!11787 V!53315)) )
))
(declare-datatypes ((List!30726 0))(
  ( (Nil!30723) (Cons!30722 (h!31931 tuple2!23554) (t!44621 List!30726)) )
))
(declare-datatypes ((ListLongMap!21223 0))(
  ( (ListLongMap!21224 (toList!10627 List!30726)) )
))
(declare-fun lt!588696 () ListLongMap!21223)

(declare-fun minValue!1279 () V!53315)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun contains!8718 (ListLongMap!21223 (_ BitVec 64)) Bool)

(declare-fun +!4574 (ListLongMap!21223 tuple2!23554) ListLongMap!21223)

(assert (=> b!1323051 (contains!8718 (+!4574 lt!588696 (tuple2!23555 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k0!1164)))

(declare-datatypes ((Unit!43548 0))(
  ( (Unit!43549) )
))
(declare-fun lt!588697 () Unit!43548)

(declare-fun addStillContains!1155 (ListLongMap!21223 (_ BitVec 64) V!53315 (_ BitVec 64)) Unit!43548)

(assert (=> b!1323051 (= lt!588697 (addStillContains!1155 lt!588696 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k0!1164))))

(assert (=> b!1323051 (contains!8718 lt!588696 k0!1164)))

(declare-fun lt!588698 () ListLongMap!21223)

(declare-fun lt!588703 () tuple2!23554)

(assert (=> b!1323051 (= lt!588696 (+!4574 lt!588698 lt!588703))))

(declare-fun zeroValue!1279 () V!53315)

(declare-fun lt!588699 () Unit!43548)

(assert (=> b!1323051 (= lt!588699 (addStillContains!1155 lt!588698 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1323051 (contains!8718 lt!588698 k0!1164)))

(declare-fun lt!588700 () V!53315)

(declare-fun lt!588693 () Unit!43548)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!189 ((_ BitVec 64) (_ BitVec 64) V!53315 ListLongMap!21223) Unit!43548)

(assert (=> b!1323051 (= lt!588693 (lemmaInListMapAfterAddingDiffThenInBefore!189 k0!1164 (select (arr!43066 _keys!1609) from!2000) lt!588700 lt!588698))))

(declare-fun lt!588701 () ListLongMap!21223)

(assert (=> b!1323051 (contains!8718 lt!588701 k0!1164)))

(declare-fun lt!588694 () Unit!43548)

(assert (=> b!1323051 (= lt!588694 (lemmaInListMapAfterAddingDiffThenInBefore!189 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588701))))

(declare-fun lt!588695 () ListLongMap!21223)

(assert (=> b!1323051 (contains!8718 lt!588695 k0!1164)))

(declare-fun lt!588702 () Unit!43548)

(assert (=> b!1323051 (= lt!588702 (lemmaInListMapAfterAddingDiffThenInBefore!189 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588695))))

(assert (=> b!1323051 (= lt!588695 (+!4574 lt!588701 lt!588703))))

(assert (=> b!1323051 (= lt!588703 (tuple2!23555 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1323051 (= lt!588701 (+!4574 lt!588698 (tuple2!23555 (select (arr!43066 _keys!1609) from!2000) lt!588700)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21734 (ValueCell!17181 V!53315) V!53315)

(declare-fun dynLambda!3611 (Int (_ BitVec 64)) V!53315)

(assert (=> b!1323051 (= lt!588700 (get!21734 (select (arr!43067 _values!1337) from!2000) (dynLambda!3611 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6289 (array!89193 array!89195 (_ BitVec 32) (_ BitVec 32) V!53315 V!53315 (_ BitVec 32) Int) ListLongMap!21223)

(assert (=> b!1323051 (= lt!588698 (getCurrentListMapNoExtraKeys!6289 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun mapNonEmpty!55886 () Bool)

(declare-fun mapRes!55886 () Bool)

(declare-fun tp!106493 () Bool)

(declare-fun e!754357 () Bool)

(assert (=> mapNonEmpty!55886 (= mapRes!55886 (and tp!106493 e!754357))))

(declare-fun mapRest!55886 () (Array (_ BitVec 32) ValueCell!17181))

(declare-fun mapValue!55886 () ValueCell!17181)

(declare-fun mapKey!55886 () (_ BitVec 32))

(assert (=> mapNonEmpty!55886 (= (arr!43067 _values!1337) (store mapRest!55886 mapKey!55886 mapValue!55886))))

(declare-fun b!1323052 () Bool)

(declare-fun res!878268 () Bool)

(assert (=> b!1323052 (=> (not res!878268) (not e!754356))))

(assert (=> b!1323052 (= res!878268 (not (= (select (arr!43066 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1323053 () Bool)

(declare-fun res!878269 () Bool)

(assert (=> b!1323053 (=> (not res!878269) (not e!754356))))

(assert (=> b!1323053 (= res!878269 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43617 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!55886 () Bool)

(assert (=> mapIsEmpty!55886 mapRes!55886))

(declare-fun b!1323054 () Bool)

(declare-fun e!754353 () Bool)

(declare-fun e!754354 () Bool)

(assert (=> b!1323054 (= e!754353 (and e!754354 mapRes!55886))))

(declare-fun condMapEmpty!55886 () Bool)

(declare-fun mapDefault!55886 () ValueCell!17181)

(assert (=> b!1323054 (= condMapEmpty!55886 (= (arr!43067 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17181)) mapDefault!55886)))))

(declare-fun b!1323055 () Bool)

(declare-fun tp_is_empty!36159 () Bool)

(assert (=> b!1323055 (= e!754357 tp_is_empty!36159)))

(declare-fun b!1323056 () Bool)

(assert (=> b!1323056 (= e!754354 tp_is_empty!36159)))

(declare-fun b!1323057 () Bool)

(declare-fun res!878266 () Bool)

(assert (=> b!1323057 (=> (not res!878266) (not e!754356))))

(declare-fun getCurrentListMap!5566 (array!89193 array!89195 (_ BitVec 32) (_ BitVec 32) V!53315 V!53315 (_ BitVec 32) Int) ListLongMap!21223)

(assert (=> b!1323057 (= res!878266 (contains!8718 (getCurrentListMap!5566 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun res!878272 () Bool)

(assert (=> start!111718 (=> (not res!878272) (not e!754356))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111718 (= res!878272 (validMask!0 mask!2019))))

(assert (=> start!111718 e!754356))

(declare-fun array_inv!32467 (array!89193) Bool)

(assert (=> start!111718 (array_inv!32467 _keys!1609)))

(assert (=> start!111718 true))

(assert (=> start!111718 tp_is_empty!36159))

(declare-fun array_inv!32468 (array!89195) Bool)

(assert (=> start!111718 (and (array_inv!32468 _values!1337) e!754353)))

(assert (=> start!111718 tp!106494))

(declare-fun b!1323058 () Bool)

(declare-fun res!878271 () Bool)

(assert (=> b!1323058 (=> (not res!878271) (not e!754356))))

(declare-datatypes ((List!30727 0))(
  ( (Nil!30724) (Cons!30723 (h!31932 (_ BitVec 64)) (t!44622 List!30727)) )
))
(declare-fun arrayNoDuplicates!0 (array!89193 (_ BitVec 32) List!30727) Bool)

(assert (=> b!1323058 (= res!878271 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30724))))

(declare-fun b!1323059 () Bool)

(declare-fun res!878265 () Bool)

(assert (=> b!1323059 (=> (not res!878265) (not e!754356))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89193 (_ BitVec 32)) Bool)

(assert (=> b!1323059 (= res!878265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(assert (= (and start!111718 res!878272) b!1323050))

(assert (= (and b!1323050 res!878270) b!1323059))

(assert (= (and b!1323059 res!878265) b!1323058))

(assert (= (and b!1323058 res!878271) b!1323053))

(assert (= (and b!1323053 res!878269) b!1323057))

(assert (= (and b!1323057 res!878266) b!1323052))

(assert (= (and b!1323052 res!878268) b!1323049))

(assert (= (and b!1323049 res!878267) b!1323051))

(assert (= (and b!1323054 condMapEmpty!55886) mapIsEmpty!55886))

(assert (= (and b!1323054 (not condMapEmpty!55886)) mapNonEmpty!55886))

(get-info :version)

(assert (= (and mapNonEmpty!55886 ((_ is ValueCellFull!17181) mapValue!55886)) b!1323055))

(assert (= (and b!1323054 ((_ is ValueCellFull!17181) mapDefault!55886)) b!1323056))

(assert (= start!111718 b!1323054))

(declare-fun b_lambda!23675 () Bool)

(assert (=> (not b_lambda!23675) (not b!1323051)))

(declare-fun t!44620 () Bool)

(declare-fun tb!11699 () Bool)

(assert (=> (and start!111718 (= defaultEntry!1340 defaultEntry!1340) t!44620) tb!11699))

(declare-fun result!24445 () Bool)

(assert (=> tb!11699 (= result!24445 tp_is_empty!36159)))

(assert (=> b!1323051 t!44620))

(declare-fun b_and!48849 () Bool)

(assert (= b_and!48847 (and (=> t!44620 result!24445) b_and!48849)))

(declare-fun m!1211723 () Bool)

(assert (=> b!1323057 m!1211723))

(assert (=> b!1323057 m!1211723))

(declare-fun m!1211725 () Bool)

(assert (=> b!1323057 m!1211725))

(declare-fun m!1211727 () Bool)

(assert (=> b!1323051 m!1211727))

(declare-fun m!1211729 () Bool)

(assert (=> b!1323051 m!1211729))

(declare-fun m!1211731 () Bool)

(assert (=> b!1323051 m!1211731))

(declare-fun m!1211733 () Bool)

(assert (=> b!1323051 m!1211733))

(declare-fun m!1211735 () Bool)

(assert (=> b!1323051 m!1211735))

(declare-fun m!1211737 () Bool)

(assert (=> b!1323051 m!1211737))

(declare-fun m!1211739 () Bool)

(assert (=> b!1323051 m!1211739))

(declare-fun m!1211741 () Bool)

(assert (=> b!1323051 m!1211741))

(declare-fun m!1211743 () Bool)

(assert (=> b!1323051 m!1211743))

(declare-fun m!1211745 () Bool)

(assert (=> b!1323051 m!1211745))

(declare-fun m!1211747 () Bool)

(assert (=> b!1323051 m!1211747))

(assert (=> b!1323051 m!1211727))

(declare-fun m!1211749 () Bool)

(assert (=> b!1323051 m!1211749))

(declare-fun m!1211751 () Bool)

(assert (=> b!1323051 m!1211751))

(declare-fun m!1211753 () Bool)

(assert (=> b!1323051 m!1211753))

(assert (=> b!1323051 m!1211739))

(assert (=> b!1323051 m!1211731))

(declare-fun m!1211755 () Bool)

(assert (=> b!1323051 m!1211755))

(declare-fun m!1211757 () Bool)

(assert (=> b!1323051 m!1211757))

(declare-fun m!1211759 () Bool)

(assert (=> b!1323051 m!1211759))

(assert (=> b!1323051 m!1211743))

(declare-fun m!1211761 () Bool)

(assert (=> b!1323051 m!1211761))

(declare-fun m!1211763 () Bool)

(assert (=> b!1323051 m!1211763))

(declare-fun m!1211765 () Bool)

(assert (=> b!1323059 m!1211765))

(assert (=> b!1323049 m!1211743))

(assert (=> b!1323049 m!1211743))

(declare-fun m!1211767 () Bool)

(assert (=> b!1323049 m!1211767))

(declare-fun m!1211769 () Bool)

(assert (=> b!1323058 m!1211769))

(declare-fun m!1211771 () Bool)

(assert (=> start!111718 m!1211771))

(declare-fun m!1211773 () Bool)

(assert (=> start!111718 m!1211773))

(declare-fun m!1211775 () Bool)

(assert (=> start!111718 m!1211775))

(declare-fun m!1211777 () Bool)

(assert (=> mapNonEmpty!55886 m!1211777))

(assert (=> b!1323052 m!1211743))

(check-sat (not mapNonEmpty!55886) (not b!1323051) (not b!1323059) b_and!48849 (not b!1323058) (not b!1323049) (not b_lambda!23675) (not start!111718) (not b!1323057) (not b_next!30339) tp_is_empty!36159)
(check-sat b_and!48849 (not b_next!30339))

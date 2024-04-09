; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111684 () Bool)

(assert start!111684)

(declare-fun b_free!30305 () Bool)

(declare-fun b_next!30305 () Bool)

(assert (=> start!111684 (= b_free!30305 (not b_next!30305))))

(declare-fun tp!106392 () Bool)

(declare-fun b_and!48779 () Bool)

(assert (=> start!111684 (= tp!106392 b_and!48779)))

(declare-fun mapNonEmpty!55835 () Bool)

(declare-fun mapRes!55835 () Bool)

(declare-fun tp!106391 () Bool)

(declare-fun e!754101 () Bool)

(assert (=> mapNonEmpty!55835 (= mapRes!55835 (and tp!106391 e!754101))))

(declare-datatypes ((V!53269 0))(
  ( (V!53270 (val!18137 Int)) )
))
(declare-datatypes ((ValueCell!17164 0))(
  ( (ValueCellFull!17164 (v!20765 V!53269)) (EmptyCell!17164) )
))
(declare-fun mapValue!55835 () ValueCell!17164)

(declare-datatypes ((array!89129 0))(
  ( (array!89130 (arr!43034 (Array (_ BitVec 32) ValueCell!17164)) (size!43585 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89129)

(declare-fun mapRest!55835 () (Array (_ BitVec 32) ValueCell!17164))

(declare-fun mapKey!55835 () (_ BitVec 32))

(assert (=> mapNonEmpty!55835 (= (arr!43034 _values!1337) (store mapRest!55835 mapKey!55835 mapValue!55835))))

(declare-fun b!1322454 () Bool)

(declare-fun res!877860 () Bool)

(declare-fun e!754099 () Bool)

(assert (=> b!1322454 (=> (not res!877860) (not e!754099))))

(declare-datatypes ((array!89131 0))(
  ( (array!89132 (arr!43035 (Array (_ BitVec 32) (_ BitVec 64))) (size!43586 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89131)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1322454 (= res!877860 (not (= (select (arr!43035 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1322455 () Bool)

(assert (=> b!1322455 (= e!754099 (not true))))

(declare-datatypes ((tuple2!23530 0))(
  ( (tuple2!23531 (_1!11775 (_ BitVec 64)) (_2!11775 V!53269)) )
))
(declare-datatypes ((List!30704 0))(
  ( (Nil!30701) (Cons!30700 (h!31909 tuple2!23530) (t!44565 List!30704)) )
))
(declare-datatypes ((ListLongMap!21199 0))(
  ( (ListLongMap!21200 (toList!10615 List!30704)) )
))
(declare-fun lt!588196 () ListLongMap!21199)

(declare-fun lt!588194 () tuple2!23530)

(declare-fun contains!8706 (ListLongMap!21199 (_ BitVec 64)) Bool)

(declare-fun +!4565 (ListLongMap!21199 tuple2!23530) ListLongMap!21199)

(assert (=> b!1322455 (contains!8706 (+!4565 lt!588196 lt!588194) k!1164)))

(declare-datatypes ((Unit!43530 0))(
  ( (Unit!43531) )
))
(declare-fun lt!588191 () Unit!43530)

(declare-fun zeroValue!1279 () V!53269)

(declare-fun addStillContains!1146 (ListLongMap!21199 (_ BitVec 64) V!53269 (_ BitVec 64)) Unit!43530)

(assert (=> b!1322455 (= lt!588191 (addStillContains!1146 lt!588196 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k!1164))))

(assert (=> b!1322455 (contains!8706 lt!588196 k!1164)))

(declare-fun lt!588192 () V!53269)

(declare-fun lt!588193 () Unit!43530)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!180 ((_ BitVec 64) (_ BitVec 64) V!53269 ListLongMap!21199) Unit!43530)

(assert (=> b!1322455 (= lt!588193 (lemmaInListMapAfterAddingDiffThenInBefore!180 k!1164 (select (arr!43035 _keys!1609) from!2000) lt!588192 lt!588196))))

(declare-fun lt!588195 () ListLongMap!21199)

(assert (=> b!1322455 (contains!8706 lt!588195 k!1164)))

(declare-fun lt!588189 () Unit!43530)

(assert (=> b!1322455 (= lt!588189 (lemmaInListMapAfterAddingDiffThenInBefore!180 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588195))))

(declare-fun lt!588190 () ListLongMap!21199)

(assert (=> b!1322455 (contains!8706 lt!588190 k!1164)))

(declare-fun lt!588188 () Unit!43530)

(declare-fun minValue!1279 () V!53269)

(assert (=> b!1322455 (= lt!588188 (lemmaInListMapAfterAddingDiffThenInBefore!180 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588190))))

(assert (=> b!1322455 (= lt!588190 (+!4565 lt!588195 lt!588194))))

(assert (=> b!1322455 (= lt!588194 (tuple2!23531 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1322455 (= lt!588195 (+!4565 lt!588196 (tuple2!23531 (select (arr!43035 _keys!1609) from!2000) lt!588192)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21713 (ValueCell!17164 V!53269) V!53269)

(declare-fun dynLambda!3602 (Int (_ BitVec 64)) V!53269)

(assert (=> b!1322455 (= lt!588192 (get!21713 (select (arr!43034 _values!1337) from!2000) (dynLambda!3602 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6280 (array!89131 array!89129 (_ BitVec 32) (_ BitVec 32) V!53269 V!53269 (_ BitVec 32) Int) ListLongMap!21199)

(assert (=> b!1322455 (= lt!588196 (getCurrentListMapNoExtraKeys!6280 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1322456 () Bool)

(declare-fun res!877862 () Bool)

(assert (=> b!1322456 (=> (not res!877862) (not e!754099))))

(assert (=> b!1322456 (= res!877862 (and (= (size!43585 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43586 _keys!1609) (size!43585 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1322457 () Bool)

(declare-fun res!877864 () Bool)

(assert (=> b!1322457 (=> (not res!877864) (not e!754099))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89131 (_ BitVec 32)) Bool)

(assert (=> b!1322457 (= res!877864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322458 () Bool)

(declare-fun res!877861 () Bool)

(assert (=> b!1322458 (=> (not res!877861) (not e!754099))))

(assert (=> b!1322458 (= res!877861 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43586 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!877858 () Bool)

(assert (=> start!111684 (=> (not res!877858) (not e!754099))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111684 (= res!877858 (validMask!0 mask!2019))))

(assert (=> start!111684 e!754099))

(declare-fun array_inv!32443 (array!89131) Bool)

(assert (=> start!111684 (array_inv!32443 _keys!1609)))

(assert (=> start!111684 true))

(declare-fun tp_is_empty!36125 () Bool)

(assert (=> start!111684 tp_is_empty!36125))

(declare-fun e!754100 () Bool)

(declare-fun array_inv!32444 (array!89129) Bool)

(assert (=> start!111684 (and (array_inv!32444 _values!1337) e!754100)))

(assert (=> start!111684 tp!106392))

(declare-fun b!1322459 () Bool)

(declare-fun e!754102 () Bool)

(assert (=> b!1322459 (= e!754102 tp_is_empty!36125)))

(declare-fun b!1322460 () Bool)

(declare-fun res!877857 () Bool)

(assert (=> b!1322460 (=> (not res!877857) (not e!754099))))

(declare-datatypes ((List!30705 0))(
  ( (Nil!30702) (Cons!30701 (h!31910 (_ BitVec 64)) (t!44566 List!30705)) )
))
(declare-fun arrayNoDuplicates!0 (array!89131 (_ BitVec 32) List!30705) Bool)

(assert (=> b!1322460 (= res!877857 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30702))))

(declare-fun b!1322461 () Bool)

(assert (=> b!1322461 (= e!754101 tp_is_empty!36125)))

(declare-fun mapIsEmpty!55835 () Bool)

(assert (=> mapIsEmpty!55835 mapRes!55835))

(declare-fun b!1322462 () Bool)

(declare-fun res!877859 () Bool)

(assert (=> b!1322462 (=> (not res!877859) (not e!754099))))

(declare-fun getCurrentListMap!5555 (array!89131 array!89129 (_ BitVec 32) (_ BitVec 32) V!53269 V!53269 (_ BitVec 32) Int) ListLongMap!21199)

(assert (=> b!1322462 (= res!877859 (contains!8706 (getCurrentListMap!5555 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1322463 () Bool)

(assert (=> b!1322463 (= e!754100 (and e!754102 mapRes!55835))))

(declare-fun condMapEmpty!55835 () Bool)

(declare-fun mapDefault!55835 () ValueCell!17164)


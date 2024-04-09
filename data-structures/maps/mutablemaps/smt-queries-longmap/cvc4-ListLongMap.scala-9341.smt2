; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111522 () Bool)

(assert start!111522)

(declare-fun b_free!30143 () Bool)

(declare-fun b_next!30143 () Bool)

(assert (=> start!111522 (= b_free!30143 (not b_next!30143))))

(declare-fun tp!105905 () Bool)

(declare-fun b_and!48455 () Bool)

(assert (=> start!111522 (= tp!105905 b_and!48455)))

(declare-fun b!1319619 () Bool)

(declare-fun res!875917 () Bool)

(declare-fun e!752883 () Bool)

(assert (=> b!1319619 (=> (not res!875917) (not e!752883))))

(declare-datatypes ((array!88825 0))(
  ( (array!88826 (arr!42882 (Array (_ BitVec 32) (_ BitVec 64))) (size!43433 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88825)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1319619 (= res!875917 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43433 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1319620 () Bool)

(assert (=> b!1319620 (= e!752883 (not true))))

(declare-datatypes ((V!53053 0))(
  ( (V!53054 (val!18056 Int)) )
))
(declare-datatypes ((tuple2!23404 0))(
  ( (tuple2!23405 (_1!11712 (_ BitVec 64)) (_2!11712 V!53053)) )
))
(declare-datatypes ((List!30589 0))(
  ( (Nil!30586) (Cons!30585 (h!31794 tuple2!23404) (t!44288 List!30589)) )
))
(declare-datatypes ((ListLongMap!21073 0))(
  ( (ListLongMap!21074 (toList!10552 List!30589)) )
))
(declare-fun lt!586637 () ListLongMap!21073)

(declare-fun contains!8643 (ListLongMap!21073 (_ BitVec 64)) Bool)

(assert (=> b!1319620 (contains!8643 lt!586637 k!1164)))

(declare-datatypes ((Unit!43416 0))(
  ( (Unit!43417) )
))
(declare-fun lt!586639 () Unit!43416)

(declare-fun zeroValue!1279 () V!53053)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!123 ((_ BitVec 64) (_ BitVec 64) V!53053 ListLongMap!21073) Unit!43416)

(assert (=> b!1319620 (= lt!586639 (lemmaInListMapAfterAddingDiffThenInBefore!123 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586637))))

(declare-fun lt!586638 () ListLongMap!21073)

(assert (=> b!1319620 (contains!8643 lt!586638 k!1164)))

(declare-fun lt!586636 () Unit!43416)

(declare-fun minValue!1279 () V!53053)

(assert (=> b!1319620 (= lt!586636 (lemmaInListMapAfterAddingDiffThenInBefore!123 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586638))))

(declare-fun +!4508 (ListLongMap!21073 tuple2!23404) ListLongMap!21073)

(assert (=> b!1319620 (= lt!586638 (+!4508 lt!586637 (tuple2!23405 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-datatypes ((ValueCell!17083 0))(
  ( (ValueCellFull!17083 (v!20684 V!53053)) (EmptyCell!17083) )
))
(declare-datatypes ((array!88827 0))(
  ( (array!88828 (arr!42883 (Array (_ BitVec 32) ValueCell!17083)) (size!43434 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88827)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6223 (array!88825 array!88827 (_ BitVec 32) (_ BitVec 32) V!53053 V!53053 (_ BitVec 32) Int) ListLongMap!21073)

(declare-fun get!21602 (ValueCell!17083 V!53053) V!53053)

(declare-fun dynLambda!3545 (Int (_ BitVec 64)) V!53053)

(assert (=> b!1319620 (= lt!586637 (+!4508 (getCurrentListMapNoExtraKeys!6223 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23405 (select (arr!42882 _keys!1609) from!2000) (get!21602 (select (arr!42883 _values!1337) from!2000) (dynLambda!3545 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1319621 () Bool)

(declare-fun res!875916 () Bool)

(assert (=> b!1319621 (=> (not res!875916) (not e!752883))))

(assert (=> b!1319621 (= res!875916 (and (= (size!43434 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43433 _keys!1609) (size!43434 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!55592 () Bool)

(declare-fun mapRes!55592 () Bool)

(assert (=> mapIsEmpty!55592 mapRes!55592))

(declare-fun b!1319622 () Bool)

(declare-fun e!752885 () Bool)

(declare-fun tp_is_empty!35963 () Bool)

(assert (=> b!1319622 (= e!752885 tp_is_empty!35963)))

(declare-fun b!1319623 () Bool)

(declare-fun res!875914 () Bool)

(assert (=> b!1319623 (=> (not res!875914) (not e!752883))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88825 (_ BitVec 32)) Bool)

(assert (=> b!1319623 (= res!875914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319624 () Bool)

(declare-fun res!875919 () Bool)

(assert (=> b!1319624 (=> (not res!875919) (not e!752883))))

(assert (=> b!1319624 (= res!875919 (not (= (select (arr!42882 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1319625 () Bool)

(declare-fun e!752884 () Bool)

(declare-fun e!752887 () Bool)

(assert (=> b!1319625 (= e!752884 (and e!752887 mapRes!55592))))

(declare-fun condMapEmpty!55592 () Bool)

(declare-fun mapDefault!55592 () ValueCell!17083)


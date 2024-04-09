; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111698 () Bool)

(assert start!111698)

(declare-fun b_free!30319 () Bool)

(declare-fun b_next!30319 () Bool)

(assert (=> start!111698 (= b_free!30319 (not b_next!30319))))

(declare-fun tp!106433 () Bool)

(declare-fun b_and!48807 () Bool)

(assert (=> start!111698 (= tp!106433 b_and!48807)))

(declare-fun b!1322699 () Bool)

(declare-fun res!878027 () Bool)

(declare-fun e!754206 () Bool)

(assert (=> b!1322699 (=> (not res!878027) (not e!754206))))

(declare-datatypes ((array!89155 0))(
  ( (array!89156 (arr!43047 (Array (_ BitVec 32) (_ BitVec 64))) (size!43598 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89155)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1322699 (= res!878027 (not (= (select (arr!43047 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1322700 () Bool)

(declare-fun res!878032 () Bool)

(assert (=> b!1322700 (=> (not res!878032) (not e!754206))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53289 0))(
  ( (V!53290 (val!18144 Int)) )
))
(declare-fun zeroValue!1279 () V!53289)

(declare-datatypes ((ValueCell!17171 0))(
  ( (ValueCellFull!17171 (v!20772 V!53289)) (EmptyCell!17171) )
))
(declare-datatypes ((array!89157 0))(
  ( (array!89158 (arr!43048 (Array (_ BitVec 32) ValueCell!17171)) (size!43599 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89157)

(declare-fun minValue!1279 () V!53289)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23542 0))(
  ( (tuple2!23543 (_1!11781 (_ BitVec 64)) (_2!11781 V!53289)) )
))
(declare-datatypes ((List!30716 0))(
  ( (Nil!30713) (Cons!30712 (h!31921 tuple2!23542) (t!44591 List!30716)) )
))
(declare-datatypes ((ListLongMap!21211 0))(
  ( (ListLongMap!21212 (toList!10621 List!30716)) )
))
(declare-fun contains!8712 (ListLongMap!21211 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5561 (array!89155 array!89157 (_ BitVec 32) (_ BitVec 32) V!53289 V!53289 (_ BitVec 32) Int) ListLongMap!21211)

(assert (=> b!1322700 (= res!878032 (contains!8712 (getCurrentListMap!5561 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1322701 () Bool)

(declare-fun res!878029 () Bool)

(assert (=> b!1322701 (=> (not res!878029) (not e!754206))))

(assert (=> b!1322701 (= res!878029 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43598 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1322702 () Bool)

(declare-fun e!754205 () Bool)

(declare-fun tp_is_empty!36139 () Bool)

(assert (=> b!1322702 (= e!754205 tp_is_empty!36139)))

(declare-fun b!1322703 () Bool)

(declare-fun res!878026 () Bool)

(assert (=> b!1322703 (=> (not res!878026) (not e!754206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89155 (_ BitVec 32)) Bool)

(assert (=> b!1322703 (= res!878026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322704 () Bool)

(declare-fun res!878025 () Bool)

(assert (=> b!1322704 (=> (not res!878025) (not e!754206))))

(assert (=> b!1322704 (= res!878025 (and (= (size!43599 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43598 _keys!1609) (size!43599 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1322705 () Bool)

(assert (=> b!1322705 (= e!754206 (not true))))

(declare-fun lt!588382 () ListLongMap!21211)

(declare-fun lt!588378 () tuple2!23542)

(declare-fun +!4569 (ListLongMap!21211 tuple2!23542) ListLongMap!21211)

(assert (=> b!1322705 (contains!8712 (+!4569 lt!588382 lt!588378) k!1164)))

(declare-datatypes ((Unit!43538 0))(
  ( (Unit!43539) )
))
(declare-fun lt!588377 () Unit!43538)

(declare-fun addStillContains!1150 (ListLongMap!21211 (_ BitVec 64) V!53289 (_ BitVec 64)) Unit!43538)

(assert (=> b!1322705 (= lt!588377 (addStillContains!1150 lt!588382 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k!1164))))

(assert (=> b!1322705 (contains!8712 lt!588382 k!1164)))

(declare-fun lt!588380 () Unit!43538)

(declare-fun lt!588385 () V!53289)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!184 ((_ BitVec 64) (_ BitVec 64) V!53289 ListLongMap!21211) Unit!43538)

(assert (=> b!1322705 (= lt!588380 (lemmaInListMapAfterAddingDiffThenInBefore!184 k!1164 (select (arr!43047 _keys!1609) from!2000) lt!588385 lt!588382))))

(declare-fun lt!588384 () ListLongMap!21211)

(assert (=> b!1322705 (contains!8712 lt!588384 k!1164)))

(declare-fun lt!588379 () Unit!43538)

(assert (=> b!1322705 (= lt!588379 (lemmaInListMapAfterAddingDiffThenInBefore!184 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588384))))

(declare-fun lt!588381 () ListLongMap!21211)

(assert (=> b!1322705 (contains!8712 lt!588381 k!1164)))

(declare-fun lt!588383 () Unit!43538)

(assert (=> b!1322705 (= lt!588383 (lemmaInListMapAfterAddingDiffThenInBefore!184 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588381))))

(assert (=> b!1322705 (= lt!588381 (+!4569 lt!588384 lt!588378))))

(assert (=> b!1322705 (= lt!588378 (tuple2!23543 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1322705 (= lt!588384 (+!4569 lt!588382 (tuple2!23543 (select (arr!43047 _keys!1609) from!2000) lt!588385)))))

(declare-fun get!21723 (ValueCell!17171 V!53289) V!53289)

(declare-fun dynLambda!3606 (Int (_ BitVec 64)) V!53289)

(assert (=> b!1322705 (= lt!588385 (get!21723 (select (arr!43048 _values!1337) from!2000) (dynLambda!3606 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6284 (array!89155 array!89157 (_ BitVec 32) (_ BitVec 32) V!53289 V!53289 (_ BitVec 32) Int) ListLongMap!21211)

(assert (=> b!1322705 (= lt!588382 (getCurrentListMapNoExtraKeys!6284 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun res!878030 () Bool)

(assert (=> start!111698 (=> (not res!878030) (not e!754206))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111698 (= res!878030 (validMask!0 mask!2019))))

(assert (=> start!111698 e!754206))

(declare-fun array_inv!32455 (array!89155) Bool)

(assert (=> start!111698 (array_inv!32455 _keys!1609)))

(assert (=> start!111698 true))

(assert (=> start!111698 tp_is_empty!36139))

(declare-fun e!754203 () Bool)

(declare-fun array_inv!32456 (array!89157) Bool)

(assert (=> start!111698 (and (array_inv!32456 _values!1337) e!754203)))

(assert (=> start!111698 tp!106433))

(declare-fun b!1322706 () Bool)

(declare-fun res!878028 () Bool)

(assert (=> b!1322706 (=> (not res!878028) (not e!754206))))

(declare-datatypes ((List!30717 0))(
  ( (Nil!30714) (Cons!30713 (h!31922 (_ BitVec 64)) (t!44592 List!30717)) )
))
(declare-fun arrayNoDuplicates!0 (array!89155 (_ BitVec 32) List!30717) Bool)

(assert (=> b!1322706 (= res!878028 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30714))))

(declare-fun b!1322707 () Bool)

(declare-fun e!754207 () Bool)

(declare-fun mapRes!55856 () Bool)

(assert (=> b!1322707 (= e!754203 (and e!754207 mapRes!55856))))

(declare-fun condMapEmpty!55856 () Bool)

(declare-fun mapDefault!55856 () ValueCell!17171)


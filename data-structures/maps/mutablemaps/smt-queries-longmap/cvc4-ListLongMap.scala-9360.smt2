; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111636 () Bool)

(assert start!111636)

(declare-fun b_free!30257 () Bool)

(declare-fun b_next!30257 () Bool)

(assert (=> start!111636 (= b_free!30257 (not b_next!30257))))

(declare-fun tp!106248 () Bool)

(declare-fun b_and!48683 () Bool)

(assert (=> start!111636 (= tp!106248 b_and!48683)))

(declare-fun b!1321614 () Bool)

(declare-fun res!877287 () Bool)

(declare-fun e!753742 () Bool)

(assert (=> b!1321614 (=> (not res!877287) (not e!753742))))

(declare-datatypes ((array!89039 0))(
  ( (array!89040 (arr!42989 (Array (_ BitVec 32) (_ BitVec 64))) (size!43540 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89039)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53205 0))(
  ( (V!53206 (val!18113 Int)) )
))
(declare-fun zeroValue!1279 () V!53205)

(declare-datatypes ((ValueCell!17140 0))(
  ( (ValueCellFull!17140 (v!20741 V!53205)) (EmptyCell!17140) )
))
(declare-datatypes ((array!89041 0))(
  ( (array!89042 (arr!42990 (Array (_ BitVec 32) ValueCell!17140)) (size!43541 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89041)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun minValue!1279 () V!53205)

(declare-datatypes ((tuple2!23492 0))(
  ( (tuple2!23493 (_1!11756 (_ BitVec 64)) (_2!11756 V!53205)) )
))
(declare-datatypes ((List!30670 0))(
  ( (Nil!30667) (Cons!30666 (h!31875 tuple2!23492) (t!44483 List!30670)) )
))
(declare-datatypes ((ListLongMap!21161 0))(
  ( (ListLongMap!21162 (toList!10596 List!30670)) )
))
(declare-fun contains!8687 (ListLongMap!21161 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5536 (array!89039 array!89041 (_ BitVec 32) (_ BitVec 32) V!53205 V!53205 (_ BitVec 32) Int) ListLongMap!21161)

(assert (=> b!1321614 (= res!877287 (contains!8687 (getCurrentListMap!5536 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1321615 () Bool)

(declare-fun res!877283 () Bool)

(assert (=> b!1321615 (=> (not res!877283) (not e!753742))))

(declare-datatypes ((List!30671 0))(
  ( (Nil!30668) (Cons!30667 (h!31876 (_ BitVec 64)) (t!44484 List!30671)) )
))
(declare-fun arrayNoDuplicates!0 (array!89039 (_ BitVec 32) List!30671) Bool)

(assert (=> b!1321615 (= res!877283 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30668))))

(declare-fun b!1321616 () Bool)

(declare-fun e!753741 () Bool)

(declare-fun tp_is_empty!36077 () Bool)

(assert (=> b!1321616 (= e!753741 tp_is_empty!36077)))

(declare-fun mapNonEmpty!55763 () Bool)

(declare-fun mapRes!55763 () Bool)

(declare-fun tp!106247 () Bool)

(assert (=> mapNonEmpty!55763 (= mapRes!55763 (and tp!106247 e!753741))))

(declare-fun mapValue!55763 () ValueCell!17140)

(declare-fun mapRest!55763 () (Array (_ BitVec 32) ValueCell!17140))

(declare-fun mapKey!55763 () (_ BitVec 32))

(assert (=> mapNonEmpty!55763 (= (arr!42990 _values!1337) (store mapRest!55763 mapKey!55763 mapValue!55763))))

(declare-fun b!1321617 () Bool)

(declare-fun res!877288 () Bool)

(assert (=> b!1321617 (=> (not res!877288) (not e!753742))))

(assert (=> b!1321617 (= res!877288 (and (= (size!43541 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43540 _keys!1609) (size!43541 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1321618 () Bool)

(declare-fun res!877286 () Bool)

(assert (=> b!1321618 (=> (not res!877286) (not e!753742))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1321618 (= res!877286 (validKeyInArray!0 (select (arr!42989 _keys!1609) from!2000)))))

(declare-fun b!1321619 () Bool)

(declare-fun res!877282 () Bool)

(assert (=> b!1321619 (=> (not res!877282) (not e!753742))))

(assert (=> b!1321619 (= res!877282 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43540 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1321620 () Bool)

(assert (=> b!1321620 (= e!753742 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000)))))

(declare-fun lt!587564 () ListLongMap!21161)

(assert (=> b!1321620 (contains!8687 lt!587564 k!1164)))

(declare-datatypes ((Unit!43498 0))(
  ( (Unit!43499) )
))
(declare-fun lt!587560 () Unit!43498)

(declare-fun lt!587562 () V!53205)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!164 ((_ BitVec 64) (_ BitVec 64) V!53205 ListLongMap!21161) Unit!43498)

(assert (=> b!1321620 (= lt!587560 (lemmaInListMapAfterAddingDiffThenInBefore!164 k!1164 (select (arr!42989 _keys!1609) from!2000) lt!587562 lt!587564))))

(declare-fun lt!587563 () ListLongMap!21161)

(assert (=> b!1321620 (contains!8687 lt!587563 k!1164)))

(declare-fun lt!587566 () Unit!43498)

(assert (=> b!1321620 (= lt!587566 (lemmaInListMapAfterAddingDiffThenInBefore!164 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587563))))

(declare-fun lt!587565 () ListLongMap!21161)

(assert (=> b!1321620 (contains!8687 lt!587565 k!1164)))

(declare-fun lt!587561 () Unit!43498)

(assert (=> b!1321620 (= lt!587561 (lemmaInListMapAfterAddingDiffThenInBefore!164 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587565))))

(declare-fun +!4549 (ListLongMap!21161 tuple2!23492) ListLongMap!21161)

(assert (=> b!1321620 (= lt!587565 (+!4549 lt!587563 (tuple2!23493 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1321620 (= lt!587563 (+!4549 lt!587564 (tuple2!23493 (select (arr!42989 _keys!1609) from!2000) lt!587562)))))

(declare-fun get!21681 (ValueCell!17140 V!53205) V!53205)

(declare-fun dynLambda!3586 (Int (_ BitVec 64)) V!53205)

(assert (=> b!1321620 (= lt!587562 (get!21681 (select (arr!42990 _values!1337) from!2000) (dynLambda!3586 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6264 (array!89039 array!89041 (_ BitVec 32) (_ BitVec 32) V!53205 V!53205 (_ BitVec 32) Int) ListLongMap!21161)

(assert (=> b!1321620 (= lt!587564 (getCurrentListMapNoExtraKeys!6264 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1321621 () Bool)

(declare-fun e!753739 () Bool)

(assert (=> b!1321621 (= e!753739 tp_is_empty!36077)))

(declare-fun mapIsEmpty!55763 () Bool)

(assert (=> mapIsEmpty!55763 mapRes!55763))

(declare-fun b!1321622 () Bool)

(declare-fun res!877285 () Bool)

(assert (=> b!1321622 (=> (not res!877285) (not e!753742))))

(assert (=> b!1321622 (= res!877285 (not (= (select (arr!42989 _keys!1609) from!2000) k!1164)))))

(declare-fun res!877284 () Bool)

(assert (=> start!111636 (=> (not res!877284) (not e!753742))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111636 (= res!877284 (validMask!0 mask!2019))))

(assert (=> start!111636 e!753742))

(declare-fun array_inv!32413 (array!89039) Bool)

(assert (=> start!111636 (array_inv!32413 _keys!1609)))

(assert (=> start!111636 true))

(assert (=> start!111636 tp_is_empty!36077))

(declare-fun e!753738 () Bool)

(declare-fun array_inv!32414 (array!89041) Bool)

(assert (=> start!111636 (and (array_inv!32414 _values!1337) e!753738)))

(assert (=> start!111636 tp!106248))

(declare-fun b!1321623 () Bool)

(assert (=> b!1321623 (= e!753738 (and e!753739 mapRes!55763))))

(declare-fun condMapEmpty!55763 () Bool)

(declare-fun mapDefault!55763 () ValueCell!17140)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111970 () Bool)

(assert start!111970)

(declare-fun b_free!30533 () Bool)

(declare-fun b_next!30533 () Bool)

(assert (=> start!111970 (= b_free!30533 (not b_next!30533))))

(declare-fun tp!107080 () Bool)

(declare-fun b_and!49171 () Bool)

(assert (=> start!111970 (= tp!107080 b_and!49171)))

(declare-fun mapIsEmpty!56181 () Bool)

(declare-fun mapRes!56181 () Bool)

(assert (=> mapIsEmpty!56181 mapRes!56181))

(declare-fun b!1326507 () Bool)

(declare-fun res!880494 () Bool)

(declare-fun e!756069 () Bool)

(assert (=> b!1326507 (=> (not res!880494) (not e!756069))))

(declare-datatypes ((array!89573 0))(
  ( (array!89574 (arr!43255 (Array (_ BitVec 32) (_ BitVec 64))) (size!43806 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89573)

(declare-datatypes ((List!30864 0))(
  ( (Nil!30861) (Cons!30860 (h!32069 (_ BitVec 64)) (t!44875 List!30864)) )
))
(declare-fun arrayNoDuplicates!0 (array!89573 (_ BitVec 32) List!30864) Bool)

(assert (=> b!1326507 (= res!880494 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30861))))

(declare-fun b!1326508 () Bool)

(declare-fun e!756067 () Bool)

(declare-fun tp_is_empty!36353 () Bool)

(assert (=> b!1326508 (= e!756067 tp_is_empty!36353)))

(declare-fun b!1326509 () Bool)

(declare-fun res!880497 () Bool)

(assert (=> b!1326509 (=> (not res!880497) (not e!756069))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1326509 (= res!880497 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43806 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1326510 () Bool)

(declare-fun res!880496 () Bool)

(assert (=> b!1326510 (=> (not res!880496) (not e!756069))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89573 (_ BitVec 32)) Bool)

(assert (=> b!1326510 (= res!880496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-datatypes ((V!53573 0))(
  ( (V!53574 (val!18251 Int)) )
))
(declare-fun zeroValue!1279 () V!53573)

(declare-datatypes ((ValueCell!17278 0))(
  ( (ValueCellFull!17278 (v!20882 V!53573)) (EmptyCell!17278) )
))
(declare-datatypes ((array!89575 0))(
  ( (array!89576 (arr!43256 (Array (_ BitVec 32) ValueCell!17278)) (size!43807 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89575)

(declare-fun defaultEntry!1340 () Int)

(declare-fun b!1326511 () Bool)

(declare-fun minValue!1279 () V!53573)

(declare-datatypes ((tuple2!23700 0))(
  ( (tuple2!23701 (_1!11860 (_ BitVec 64)) (_2!11860 V!53573)) )
))
(declare-datatypes ((List!30865 0))(
  ( (Nil!30862) (Cons!30861 (h!32070 tuple2!23700) (t!44876 List!30865)) )
))
(declare-datatypes ((ListLongMap!21369 0))(
  ( (ListLongMap!21370 (toList!10700 List!30865)) )
))
(declare-fun contains!8793 (ListLongMap!21369 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5632 (array!89573 array!89575 (_ BitVec 32) (_ BitVec 32) V!53573 V!53573 (_ BitVec 32) Int) ListLongMap!21369)

(assert (=> b!1326511 (= e!756069 (not (contains!8793 (getCurrentListMap!5632 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) k!1164)))))

(declare-fun lt!590166 () ListLongMap!21369)

(declare-fun +!4615 (ListLongMap!21369 tuple2!23700) ListLongMap!21369)

(assert (=> b!1326511 (contains!8793 (+!4615 lt!590166 (tuple2!23701 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k!1164)))

(declare-datatypes ((Unit!43636 0))(
  ( (Unit!43637) )
))
(declare-fun lt!590167 () Unit!43636)

(declare-fun addStillContains!1172 (ListLongMap!21369 (_ BitVec 64) V!53573 (_ BitVec 64)) Unit!43636)

(assert (=> b!1326511 (= lt!590167 (addStillContains!1172 lt!590166 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k!1164))))

(assert (=> b!1326511 (contains!8793 lt!590166 k!1164)))

(declare-fun lt!590173 () ListLongMap!21369)

(declare-fun lt!590169 () tuple2!23700)

(assert (=> b!1326511 (= lt!590166 (+!4615 lt!590173 lt!590169))))

(declare-fun lt!590168 () Unit!43636)

(assert (=> b!1326511 (= lt!590168 (addStillContains!1172 lt!590173 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k!1164))))

(assert (=> b!1326511 (contains!8793 lt!590173 k!1164)))

(declare-fun lt!590174 () Unit!43636)

(declare-fun lt!590171 () V!53573)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!225 ((_ BitVec 64) (_ BitVec 64) V!53573 ListLongMap!21369) Unit!43636)

(assert (=> b!1326511 (= lt!590174 (lemmaInListMapAfterAddingDiffThenInBefore!225 k!1164 (select (arr!43255 _keys!1609) from!2000) lt!590171 lt!590173))))

(declare-fun lt!590175 () ListLongMap!21369)

(assert (=> b!1326511 (contains!8793 lt!590175 k!1164)))

(declare-fun lt!590170 () Unit!43636)

(assert (=> b!1326511 (= lt!590170 (lemmaInListMapAfterAddingDiffThenInBefore!225 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!590175))))

(declare-fun lt!590176 () ListLongMap!21369)

(assert (=> b!1326511 (contains!8793 lt!590176 k!1164)))

(declare-fun lt!590172 () Unit!43636)

(assert (=> b!1326511 (= lt!590172 (lemmaInListMapAfterAddingDiffThenInBefore!225 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!590176))))

(assert (=> b!1326511 (= lt!590176 (+!4615 lt!590175 lt!590169))))

(assert (=> b!1326511 (= lt!590169 (tuple2!23701 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1326511 (= lt!590175 (+!4615 lt!590173 (tuple2!23701 (select (arr!43255 _keys!1609) from!2000) lt!590171)))))

(declare-fun get!21842 (ValueCell!17278 V!53573) V!53573)

(declare-fun dynLambda!3652 (Int (_ BitVec 64)) V!53573)

(assert (=> b!1326511 (= lt!590171 (get!21842 (select (arr!43256 _values!1337) from!2000) (dynLambda!3652 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6333 (array!89573 array!89575 (_ BitVec 32) (_ BitVec 32) V!53573 V!53573 (_ BitVec 32) Int) ListLongMap!21369)

(assert (=> b!1326511 (= lt!590173 (getCurrentListMapNoExtraKeys!6333 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1326512 () Bool)

(declare-fun res!880493 () Bool)

(assert (=> b!1326512 (=> (not res!880493) (not e!756069))))

(assert (=> b!1326512 (= res!880493 (contains!8793 (getCurrentListMap!5632 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1326513 () Bool)

(declare-fun res!880495 () Bool)

(assert (=> b!1326513 (=> (not res!880495) (not e!756069))))

(assert (=> b!1326513 (= res!880495 (not (= (select (arr!43255 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1326514 () Bool)

(declare-fun e!756068 () Bool)

(assert (=> b!1326514 (= e!756068 tp_is_empty!36353)))

(declare-fun mapNonEmpty!56181 () Bool)

(declare-fun tp!107079 () Bool)

(assert (=> mapNonEmpty!56181 (= mapRes!56181 (and tp!107079 e!756068))))

(declare-fun mapValue!56181 () ValueCell!17278)

(declare-fun mapKey!56181 () (_ BitVec 32))

(declare-fun mapRest!56181 () (Array (_ BitVec 32) ValueCell!17278))

(assert (=> mapNonEmpty!56181 (= (arr!43256 _values!1337) (store mapRest!56181 mapKey!56181 mapValue!56181))))

(declare-fun res!880499 () Bool)

(assert (=> start!111970 (=> (not res!880499) (not e!756069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111970 (= res!880499 (validMask!0 mask!2019))))

(assert (=> start!111970 e!756069))

(declare-fun array_inv!32589 (array!89573) Bool)

(assert (=> start!111970 (array_inv!32589 _keys!1609)))

(assert (=> start!111970 true))

(assert (=> start!111970 tp_is_empty!36353))

(declare-fun e!756070 () Bool)

(declare-fun array_inv!32590 (array!89575) Bool)

(assert (=> start!111970 (and (array_inv!32590 _values!1337) e!756070)))

(assert (=> start!111970 tp!107080))

(declare-fun b!1326515 () Bool)

(declare-fun res!880498 () Bool)

(assert (=> b!1326515 (=> (not res!880498) (not e!756069))))

(assert (=> b!1326515 (= res!880498 (and (= (size!43807 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43806 _keys!1609) (size!43807 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1326516 () Bool)

(assert (=> b!1326516 (= e!756070 (and e!756067 mapRes!56181))))

(declare-fun condMapEmpty!56181 () Bool)

(declare-fun mapDefault!56181 () ValueCell!17278)


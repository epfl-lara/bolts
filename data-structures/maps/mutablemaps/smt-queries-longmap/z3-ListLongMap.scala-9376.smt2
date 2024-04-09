; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111730 () Bool)

(assert start!111730)

(declare-fun b_free!30351 () Bool)

(declare-fun b_next!30351 () Bool)

(assert (=> start!111730 (= b_free!30351 (not b_next!30351))))

(declare-fun tp!106529 () Bool)

(declare-fun b_and!48871 () Bool)

(assert (=> start!111730 (= tp!106529 b_and!48871)))

(declare-fun b!1323259 () Bool)

(declare-fun e!754446 () Bool)

(assert (=> b!1323259 (= e!754446 (not true))))

(declare-datatypes ((V!53331 0))(
  ( (V!53332 (val!18160 Int)) )
))
(declare-datatypes ((tuple2!23560 0))(
  ( (tuple2!23561 (_1!11790 (_ BitVec 64)) (_2!11790 V!53331)) )
))
(declare-datatypes ((List!30734 0))(
  ( (Nil!30731) (Cons!30730 (h!31939 tuple2!23560) (t!44641 List!30734)) )
))
(declare-datatypes ((ListLongMap!21229 0))(
  ( (ListLongMap!21230 (toList!10630 List!30734)) )
))
(declare-fun lt!588897 () ListLongMap!21229)

(declare-fun minValue!1279 () V!53331)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun contains!8721 (ListLongMap!21229 (_ BitVec 64)) Bool)

(declare-fun +!4577 (ListLongMap!21229 tuple2!23560) ListLongMap!21229)

(assert (=> b!1323259 (contains!8721 (+!4577 lt!588897 (tuple2!23561 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k0!1164)))

(declare-datatypes ((Unit!43554 0))(
  ( (Unit!43555) )
))
(declare-fun lt!588893 () Unit!43554)

(declare-fun addStillContains!1158 (ListLongMap!21229 (_ BitVec 64) V!53331 (_ BitVec 64)) Unit!43554)

(assert (=> b!1323259 (= lt!588893 (addStillContains!1158 lt!588897 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k0!1164))))

(assert (=> b!1323259 (contains!8721 lt!588897 k0!1164)))

(declare-fun lt!588892 () ListLongMap!21229)

(declare-fun lt!588895 () tuple2!23560)

(assert (=> b!1323259 (= lt!588897 (+!4577 lt!588892 lt!588895))))

(declare-fun zeroValue!1279 () V!53331)

(declare-fun lt!588899 () Unit!43554)

(assert (=> b!1323259 (= lt!588899 (addStillContains!1158 lt!588892 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1323259 (contains!8721 lt!588892 k0!1164)))

(declare-datatypes ((array!89217 0))(
  ( (array!89218 (arr!43078 (Array (_ BitVec 32) (_ BitVec 64))) (size!43629 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89217)

(declare-fun lt!588894 () Unit!43554)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun lt!588898 () V!53331)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!192 ((_ BitVec 64) (_ BitVec 64) V!53331 ListLongMap!21229) Unit!43554)

(assert (=> b!1323259 (= lt!588894 (lemmaInListMapAfterAddingDiffThenInBefore!192 k0!1164 (select (arr!43078 _keys!1609) from!2000) lt!588898 lt!588892))))

(declare-fun lt!588900 () ListLongMap!21229)

(assert (=> b!1323259 (contains!8721 lt!588900 k0!1164)))

(declare-fun lt!588891 () Unit!43554)

(assert (=> b!1323259 (= lt!588891 (lemmaInListMapAfterAddingDiffThenInBefore!192 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588900))))

(declare-fun lt!588901 () ListLongMap!21229)

(assert (=> b!1323259 (contains!8721 lt!588901 k0!1164)))

(declare-fun lt!588896 () Unit!43554)

(assert (=> b!1323259 (= lt!588896 (lemmaInListMapAfterAddingDiffThenInBefore!192 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588901))))

(assert (=> b!1323259 (= lt!588901 (+!4577 lt!588900 lt!588895))))

(assert (=> b!1323259 (= lt!588895 (tuple2!23561 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1323259 (= lt!588900 (+!4577 lt!588892 (tuple2!23561 (select (arr!43078 _keys!1609) from!2000) lt!588898)))))

(declare-datatypes ((ValueCell!17187 0))(
  ( (ValueCellFull!17187 (v!20788 V!53331)) (EmptyCell!17187) )
))
(declare-datatypes ((array!89219 0))(
  ( (array!89220 (arr!43079 (Array (_ BitVec 32) ValueCell!17187)) (size!43630 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89219)

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21741 (ValueCell!17187 V!53331) V!53331)

(declare-fun dynLambda!3614 (Int (_ BitVec 64)) V!53331)

(assert (=> b!1323259 (= lt!588898 (get!21741 (select (arr!43079 _values!1337) from!2000) (dynLambda!3614 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6292 (array!89217 array!89219 (_ BitVec 32) (_ BitVec 32) V!53331 V!53331 (_ BitVec 32) Int) ListLongMap!21229)

(assert (=> b!1323259 (= lt!588892 (getCurrentListMapNoExtraKeys!6292 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1323260 () Bool)

(declare-fun res!878415 () Bool)

(assert (=> b!1323260 (=> (not res!878415) (not e!754446))))

(assert (=> b!1323260 (= res!878415 (and (= (size!43630 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43629 _keys!1609) (size!43630 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1323261 () Bool)

(declare-fun res!878416 () Bool)

(assert (=> b!1323261 (=> (not res!878416) (not e!754446))))

(assert (=> b!1323261 (= res!878416 (not (= (select (arr!43078 _keys!1609) from!2000) k0!1164)))))

(declare-fun res!878412 () Bool)

(assert (=> start!111730 (=> (not res!878412) (not e!754446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111730 (= res!878412 (validMask!0 mask!2019))))

(assert (=> start!111730 e!754446))

(declare-fun array_inv!32477 (array!89217) Bool)

(assert (=> start!111730 (array_inv!32477 _keys!1609)))

(assert (=> start!111730 true))

(declare-fun tp_is_empty!36171 () Bool)

(assert (=> start!111730 tp_is_empty!36171))

(declare-fun e!754443 () Bool)

(declare-fun array_inv!32478 (array!89219) Bool)

(assert (=> start!111730 (and (array_inv!32478 _values!1337) e!754443)))

(assert (=> start!111730 tp!106529))

(declare-fun b!1323262 () Bool)

(declare-fun res!878414 () Bool)

(assert (=> b!1323262 (=> (not res!878414) (not e!754446))))

(declare-fun getCurrentListMap!5569 (array!89217 array!89219 (_ BitVec 32) (_ BitVec 32) V!53331 V!53331 (_ BitVec 32) Int) ListLongMap!21229)

(assert (=> b!1323262 (= res!878414 (contains!8721 (getCurrentListMap!5569 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1323263 () Bool)

(declare-fun e!754447 () Bool)

(declare-fun mapRes!55904 () Bool)

(assert (=> b!1323263 (= e!754443 (and e!754447 mapRes!55904))))

(declare-fun condMapEmpty!55904 () Bool)

(declare-fun mapDefault!55904 () ValueCell!17187)

(assert (=> b!1323263 (= condMapEmpty!55904 (= (arr!43079 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17187)) mapDefault!55904)))))

(declare-fun b!1323264 () Bool)

(declare-fun res!878411 () Bool)

(assert (=> b!1323264 (=> (not res!878411) (not e!754446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89217 (_ BitVec 32)) Bool)

(assert (=> b!1323264 (= res!878411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapIsEmpty!55904 () Bool)

(assert (=> mapIsEmpty!55904 mapRes!55904))

(declare-fun b!1323265 () Bool)

(declare-fun res!878409 () Bool)

(assert (=> b!1323265 (=> (not res!878409) (not e!754446))))

(declare-datatypes ((List!30735 0))(
  ( (Nil!30732) (Cons!30731 (h!31940 (_ BitVec 64)) (t!44642 List!30735)) )
))
(declare-fun arrayNoDuplicates!0 (array!89217 (_ BitVec 32) List!30735) Bool)

(assert (=> b!1323265 (= res!878409 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30732))))

(declare-fun mapNonEmpty!55904 () Bool)

(declare-fun tp!106530 () Bool)

(declare-fun e!754445 () Bool)

(assert (=> mapNonEmpty!55904 (= mapRes!55904 (and tp!106530 e!754445))))

(declare-fun mapRest!55904 () (Array (_ BitVec 32) ValueCell!17187))

(declare-fun mapKey!55904 () (_ BitVec 32))

(declare-fun mapValue!55904 () ValueCell!17187)

(assert (=> mapNonEmpty!55904 (= (arr!43079 _values!1337) (store mapRest!55904 mapKey!55904 mapValue!55904))))

(declare-fun b!1323266 () Bool)

(assert (=> b!1323266 (= e!754447 tp_is_empty!36171)))

(declare-fun b!1323267 () Bool)

(declare-fun res!878413 () Bool)

(assert (=> b!1323267 (=> (not res!878413) (not e!754446))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1323267 (= res!878413 (validKeyInArray!0 (select (arr!43078 _keys!1609) from!2000)))))

(declare-fun b!1323268 () Bool)

(declare-fun res!878410 () Bool)

(assert (=> b!1323268 (=> (not res!878410) (not e!754446))))

(assert (=> b!1323268 (= res!878410 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43629 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1323269 () Bool)

(assert (=> b!1323269 (= e!754445 tp_is_empty!36171)))

(assert (= (and start!111730 res!878412) b!1323260))

(assert (= (and b!1323260 res!878415) b!1323264))

(assert (= (and b!1323264 res!878411) b!1323265))

(assert (= (and b!1323265 res!878409) b!1323268))

(assert (= (and b!1323268 res!878410) b!1323262))

(assert (= (and b!1323262 res!878414) b!1323261))

(assert (= (and b!1323261 res!878416) b!1323267))

(assert (= (and b!1323267 res!878413) b!1323259))

(assert (= (and b!1323263 condMapEmpty!55904) mapIsEmpty!55904))

(assert (= (and b!1323263 (not condMapEmpty!55904)) mapNonEmpty!55904))

(get-info :version)

(assert (= (and mapNonEmpty!55904 ((_ is ValueCellFull!17187) mapValue!55904)) b!1323269))

(assert (= (and b!1323263 ((_ is ValueCellFull!17187) mapDefault!55904)) b!1323266))

(assert (= start!111730 b!1323263))

(declare-fun b_lambda!23687 () Bool)

(assert (=> (not b_lambda!23687) (not b!1323259)))

(declare-fun t!44640 () Bool)

(declare-fun tb!11711 () Bool)

(assert (=> (and start!111730 (= defaultEntry!1340 defaultEntry!1340) t!44640) tb!11711))

(declare-fun result!24469 () Bool)

(assert (=> tb!11711 (= result!24469 tp_is_empty!36171)))

(assert (=> b!1323259 t!44640))

(declare-fun b_and!48873 () Bool)

(assert (= b_and!48871 (and (=> t!44640 result!24469) b_and!48873)))

(declare-fun m!1212059 () Bool)

(assert (=> start!111730 m!1212059))

(declare-fun m!1212061 () Bool)

(assert (=> start!111730 m!1212061))

(declare-fun m!1212063 () Bool)

(assert (=> start!111730 m!1212063))

(declare-fun m!1212065 () Bool)

(assert (=> b!1323262 m!1212065))

(assert (=> b!1323262 m!1212065))

(declare-fun m!1212067 () Bool)

(assert (=> b!1323262 m!1212067))

(declare-fun m!1212069 () Bool)

(assert (=> b!1323265 m!1212069))

(declare-fun m!1212071 () Bool)

(assert (=> b!1323259 m!1212071))

(declare-fun m!1212073 () Bool)

(assert (=> b!1323259 m!1212073))

(declare-fun m!1212075 () Bool)

(assert (=> b!1323259 m!1212075))

(declare-fun m!1212077 () Bool)

(assert (=> b!1323259 m!1212077))

(declare-fun m!1212079 () Bool)

(assert (=> b!1323259 m!1212079))

(declare-fun m!1212081 () Bool)

(assert (=> b!1323259 m!1212081))

(declare-fun m!1212083 () Bool)

(assert (=> b!1323259 m!1212083))

(declare-fun m!1212085 () Bool)

(assert (=> b!1323259 m!1212085))

(declare-fun m!1212087 () Bool)

(assert (=> b!1323259 m!1212087))

(assert (=> b!1323259 m!1212083))

(assert (=> b!1323259 m!1212075))

(declare-fun m!1212089 () Bool)

(assert (=> b!1323259 m!1212089))

(declare-fun m!1212091 () Bool)

(assert (=> b!1323259 m!1212091))

(declare-fun m!1212093 () Bool)

(assert (=> b!1323259 m!1212093))

(declare-fun m!1212095 () Bool)

(assert (=> b!1323259 m!1212095))

(assert (=> b!1323259 m!1212091))

(declare-fun m!1212097 () Bool)

(assert (=> b!1323259 m!1212097))

(assert (=> b!1323259 m!1212097))

(declare-fun m!1212099 () Bool)

(assert (=> b!1323259 m!1212099))

(declare-fun m!1212101 () Bool)

(assert (=> b!1323259 m!1212101))

(declare-fun m!1212103 () Bool)

(assert (=> b!1323259 m!1212103))

(declare-fun m!1212105 () Bool)

(assert (=> b!1323259 m!1212105))

(declare-fun m!1212107 () Bool)

(assert (=> b!1323259 m!1212107))

(declare-fun m!1212109 () Bool)

(assert (=> mapNonEmpty!55904 m!1212109))

(assert (=> b!1323261 m!1212091))

(declare-fun m!1212111 () Bool)

(assert (=> b!1323264 m!1212111))

(assert (=> b!1323267 m!1212091))

(assert (=> b!1323267 m!1212091))

(declare-fun m!1212113 () Bool)

(assert (=> b!1323267 m!1212113))

(check-sat (not b!1323262) b_and!48873 (not b!1323259) (not start!111730) (not mapNonEmpty!55904) tp_is_empty!36171 (not b_lambda!23687) (not b!1323267) (not b_next!30351) (not b!1323264) (not b!1323265))
(check-sat b_and!48873 (not b_next!30351))

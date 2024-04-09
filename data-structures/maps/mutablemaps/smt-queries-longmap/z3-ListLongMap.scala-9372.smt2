; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111706 () Bool)

(assert start!111706)

(declare-fun b_free!30327 () Bool)

(declare-fun b_next!30327 () Bool)

(assert (=> start!111706 (= b_free!30327 (not b_next!30327))))

(declare-fun tp!106458 () Bool)

(declare-fun b_and!48823 () Bool)

(assert (=> start!111706 (= tp!106458 b_and!48823)))

(declare-fun b!1322839 () Bool)

(declare-fun res!878123 () Bool)

(declare-fun e!754264 () Bool)

(assert (=> b!1322839 (=> (not res!878123) (not e!754264))))

(declare-datatypes ((array!89171 0))(
  ( (array!89172 (arr!43055 (Array (_ BitVec 32) (_ BitVec 64))) (size!43606 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89171)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89171 (_ BitVec 32)) Bool)

(assert (=> b!1322839 (= res!878123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapIsEmpty!55868 () Bool)

(declare-fun mapRes!55868 () Bool)

(assert (=> mapIsEmpty!55868 mapRes!55868))

(declare-fun b!1322840 () Bool)

(declare-fun res!878128 () Bool)

(assert (=> b!1322840 (=> (not res!878128) (not e!754264))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53299 0))(
  ( (V!53300 (val!18148 Int)) )
))
(declare-fun zeroValue!1279 () V!53299)

(declare-datatypes ((ValueCell!17175 0))(
  ( (ValueCellFull!17175 (v!20776 V!53299)) (EmptyCell!17175) )
))
(declare-datatypes ((array!89173 0))(
  ( (array!89174 (arr!43056 (Array (_ BitVec 32) ValueCell!17175)) (size!43607 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89173)

(declare-fun minValue!1279 () V!53299)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23548 0))(
  ( (tuple2!23549 (_1!11784 (_ BitVec 64)) (_2!11784 V!53299)) )
))
(declare-datatypes ((List!30721 0))(
  ( (Nil!30718) (Cons!30717 (h!31926 tuple2!23548) (t!44604 List!30721)) )
))
(declare-datatypes ((ListLongMap!21217 0))(
  ( (ListLongMap!21218 (toList!10624 List!30721)) )
))
(declare-fun contains!8715 (ListLongMap!21217 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5564 (array!89171 array!89173 (_ BitVec 32) (_ BitVec 32) V!53299 V!53299 (_ BitVec 32) Int) ListLongMap!21217)

(assert (=> b!1322840 (= res!878128 (contains!8715 (getCurrentListMap!5564 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1322841 () Bool)

(assert (=> b!1322841 (= e!754264 (not true))))

(declare-fun lt!588499 () ListLongMap!21217)

(declare-fun +!4571 (ListLongMap!21217 tuple2!23548) ListLongMap!21217)

(assert (=> b!1322841 (contains!8715 (+!4571 lt!588499 (tuple2!23549 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k0!1164)))

(declare-datatypes ((Unit!43542 0))(
  ( (Unit!43543) )
))
(declare-fun lt!588496 () Unit!43542)

(declare-fun addStillContains!1152 (ListLongMap!21217 (_ BitVec 64) V!53299 (_ BitVec 64)) Unit!43542)

(assert (=> b!1322841 (= lt!588496 (addStillContains!1152 lt!588499 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k0!1164))))

(assert (=> b!1322841 (contains!8715 lt!588499 k0!1164)))

(declare-fun lt!588495 () ListLongMap!21217)

(declare-fun lt!588497 () tuple2!23548)

(assert (=> b!1322841 (= lt!588499 (+!4571 lt!588495 lt!588497))))

(declare-fun lt!588504 () Unit!43542)

(assert (=> b!1322841 (= lt!588504 (addStillContains!1152 lt!588495 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1322841 (contains!8715 lt!588495 k0!1164)))

(declare-fun lt!588505 () Unit!43542)

(declare-fun lt!588502 () V!53299)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!186 ((_ BitVec 64) (_ BitVec 64) V!53299 ListLongMap!21217) Unit!43542)

(assert (=> b!1322841 (= lt!588505 (lemmaInListMapAfterAddingDiffThenInBefore!186 k0!1164 (select (arr!43055 _keys!1609) from!2000) lt!588502 lt!588495))))

(declare-fun lt!588500 () ListLongMap!21217)

(assert (=> b!1322841 (contains!8715 lt!588500 k0!1164)))

(declare-fun lt!588498 () Unit!43542)

(assert (=> b!1322841 (= lt!588498 (lemmaInListMapAfterAddingDiffThenInBefore!186 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588500))))

(declare-fun lt!588501 () ListLongMap!21217)

(assert (=> b!1322841 (contains!8715 lt!588501 k0!1164)))

(declare-fun lt!588503 () Unit!43542)

(assert (=> b!1322841 (= lt!588503 (lemmaInListMapAfterAddingDiffThenInBefore!186 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588501))))

(assert (=> b!1322841 (= lt!588501 (+!4571 lt!588500 lt!588497))))

(assert (=> b!1322841 (= lt!588497 (tuple2!23549 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1322841 (= lt!588500 (+!4571 lt!588495 (tuple2!23549 (select (arr!43055 _keys!1609) from!2000) lt!588502)))))

(declare-fun get!21727 (ValueCell!17175 V!53299) V!53299)

(declare-fun dynLambda!3608 (Int (_ BitVec 64)) V!53299)

(assert (=> b!1322841 (= lt!588502 (get!21727 (select (arr!43056 _values!1337) from!2000) (dynLambda!3608 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6286 (array!89171 array!89173 (_ BitVec 32) (_ BitVec 32) V!53299 V!53299 (_ BitVec 32) Int) ListLongMap!21217)

(assert (=> b!1322841 (= lt!588495 (getCurrentListMapNoExtraKeys!6286 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1322842 () Bool)

(declare-fun e!754263 () Bool)

(declare-fun tp_is_empty!36147 () Bool)

(assert (=> b!1322842 (= e!754263 tp_is_empty!36147)))

(declare-fun b!1322843 () Bool)

(declare-fun res!878121 () Bool)

(assert (=> b!1322843 (=> (not res!878121) (not e!754264))))

(assert (=> b!1322843 (= res!878121 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43606 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1322845 () Bool)

(declare-fun res!878126 () Bool)

(assert (=> b!1322845 (=> (not res!878126) (not e!754264))))

(declare-datatypes ((List!30722 0))(
  ( (Nil!30719) (Cons!30718 (h!31927 (_ BitVec 64)) (t!44605 List!30722)) )
))
(declare-fun arrayNoDuplicates!0 (array!89171 (_ BitVec 32) List!30722) Bool)

(assert (=> b!1322845 (= res!878126 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30719))))

(declare-fun mapNonEmpty!55868 () Bool)

(declare-fun tp!106457 () Bool)

(declare-fun e!754266 () Bool)

(assert (=> mapNonEmpty!55868 (= mapRes!55868 (and tp!106457 e!754266))))

(declare-fun mapKey!55868 () (_ BitVec 32))

(declare-fun mapValue!55868 () ValueCell!17175)

(declare-fun mapRest!55868 () (Array (_ BitVec 32) ValueCell!17175))

(assert (=> mapNonEmpty!55868 (= (arr!43056 _values!1337) (store mapRest!55868 mapKey!55868 mapValue!55868))))

(declare-fun b!1322846 () Bool)

(declare-fun res!878125 () Bool)

(assert (=> b!1322846 (=> (not res!878125) (not e!754264))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1322846 (= res!878125 (validKeyInArray!0 (select (arr!43055 _keys!1609) from!2000)))))

(declare-fun b!1322847 () Bool)

(declare-fun e!754265 () Bool)

(assert (=> b!1322847 (= e!754265 (and e!754263 mapRes!55868))))

(declare-fun condMapEmpty!55868 () Bool)

(declare-fun mapDefault!55868 () ValueCell!17175)

(assert (=> b!1322847 (= condMapEmpty!55868 (= (arr!43056 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17175)) mapDefault!55868)))))

(declare-fun b!1322848 () Bool)

(declare-fun res!878122 () Bool)

(assert (=> b!1322848 (=> (not res!878122) (not e!754264))))

(assert (=> b!1322848 (= res!878122 (not (= (select (arr!43055 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1322849 () Bool)

(declare-fun res!878124 () Bool)

(assert (=> b!1322849 (=> (not res!878124) (not e!754264))))

(assert (=> b!1322849 (= res!878124 (and (= (size!43607 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43606 _keys!1609) (size!43607 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1322844 () Bool)

(assert (=> b!1322844 (= e!754266 tp_is_empty!36147)))

(declare-fun res!878127 () Bool)

(assert (=> start!111706 (=> (not res!878127) (not e!754264))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111706 (= res!878127 (validMask!0 mask!2019))))

(assert (=> start!111706 e!754264))

(declare-fun array_inv!32459 (array!89171) Bool)

(assert (=> start!111706 (array_inv!32459 _keys!1609)))

(assert (=> start!111706 true))

(assert (=> start!111706 tp_is_empty!36147))

(declare-fun array_inv!32460 (array!89173) Bool)

(assert (=> start!111706 (and (array_inv!32460 _values!1337) e!754265)))

(assert (=> start!111706 tp!106458))

(assert (= (and start!111706 res!878127) b!1322849))

(assert (= (and b!1322849 res!878124) b!1322839))

(assert (= (and b!1322839 res!878123) b!1322845))

(assert (= (and b!1322845 res!878126) b!1322843))

(assert (= (and b!1322843 res!878121) b!1322840))

(assert (= (and b!1322840 res!878128) b!1322848))

(assert (= (and b!1322848 res!878122) b!1322846))

(assert (= (and b!1322846 res!878125) b!1322841))

(assert (= (and b!1322847 condMapEmpty!55868) mapIsEmpty!55868))

(assert (= (and b!1322847 (not condMapEmpty!55868)) mapNonEmpty!55868))

(get-info :version)

(assert (= (and mapNonEmpty!55868 ((_ is ValueCellFull!17175) mapValue!55868)) b!1322844))

(assert (= (and b!1322847 ((_ is ValueCellFull!17175) mapDefault!55868)) b!1322842))

(assert (= start!111706 b!1322847))

(declare-fun b_lambda!23663 () Bool)

(assert (=> (not b_lambda!23663) (not b!1322841)))

(declare-fun t!44603 () Bool)

(declare-fun tb!11687 () Bool)

(assert (=> (and start!111706 (= defaultEntry!1340 defaultEntry!1340) t!44603) tb!11687))

(declare-fun result!24421 () Bool)

(assert (=> tb!11687 (= result!24421 tp_is_empty!36147)))

(assert (=> b!1322841 t!44603))

(declare-fun b_and!48825 () Bool)

(assert (= b_and!48823 (and (=> t!44603 result!24421) b_and!48825)))

(declare-fun m!1211387 () Bool)

(assert (=> b!1322845 m!1211387))

(declare-fun m!1211389 () Bool)

(assert (=> b!1322841 m!1211389))

(declare-fun m!1211391 () Bool)

(assert (=> b!1322841 m!1211391))

(declare-fun m!1211393 () Bool)

(assert (=> b!1322841 m!1211393))

(declare-fun m!1211395 () Bool)

(assert (=> b!1322841 m!1211395))

(declare-fun m!1211397 () Bool)

(assert (=> b!1322841 m!1211397))

(declare-fun m!1211399 () Bool)

(assert (=> b!1322841 m!1211399))

(declare-fun m!1211401 () Bool)

(assert (=> b!1322841 m!1211401))

(declare-fun m!1211403 () Bool)

(assert (=> b!1322841 m!1211403))

(declare-fun m!1211405 () Bool)

(assert (=> b!1322841 m!1211405))

(declare-fun m!1211407 () Bool)

(assert (=> b!1322841 m!1211407))

(assert (=> b!1322841 m!1211401))

(assert (=> b!1322841 m!1211395))

(declare-fun m!1211409 () Bool)

(assert (=> b!1322841 m!1211409))

(declare-fun m!1211411 () Bool)

(assert (=> b!1322841 m!1211411))

(declare-fun m!1211413 () Bool)

(assert (=> b!1322841 m!1211413))

(declare-fun m!1211415 () Bool)

(assert (=> b!1322841 m!1211415))

(declare-fun m!1211417 () Bool)

(assert (=> b!1322841 m!1211417))

(declare-fun m!1211419 () Bool)

(assert (=> b!1322841 m!1211419))

(assert (=> b!1322841 m!1211391))

(declare-fun m!1211421 () Bool)

(assert (=> b!1322841 m!1211421))

(declare-fun m!1211423 () Bool)

(assert (=> b!1322841 m!1211423))

(declare-fun m!1211425 () Bool)

(assert (=> b!1322841 m!1211425))

(assert (=> b!1322841 m!1211411))

(declare-fun m!1211427 () Bool)

(assert (=> start!111706 m!1211427))

(declare-fun m!1211429 () Bool)

(assert (=> start!111706 m!1211429))

(declare-fun m!1211431 () Bool)

(assert (=> start!111706 m!1211431))

(declare-fun m!1211433 () Bool)

(assert (=> b!1322840 m!1211433))

(assert (=> b!1322840 m!1211433))

(declare-fun m!1211435 () Bool)

(assert (=> b!1322840 m!1211435))

(declare-fun m!1211437 () Bool)

(assert (=> mapNonEmpty!55868 m!1211437))

(assert (=> b!1322848 m!1211411))

(declare-fun m!1211439 () Bool)

(assert (=> b!1322839 m!1211439))

(assert (=> b!1322846 m!1211411))

(assert (=> b!1322846 m!1211411))

(declare-fun m!1211441 () Bool)

(assert (=> b!1322846 m!1211441))

(check-sat (not b!1322840) tp_is_empty!36147 (not b!1322846) (not start!111706) (not b_next!30327) (not b!1322839) (not b!1322845) b_and!48825 (not b_lambda!23663) (not mapNonEmpty!55868) (not b!1322841))
(check-sat b_and!48825 (not b_next!30327))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111574 () Bool)

(assert start!111574)

(declare-fun b_free!30195 () Bool)

(declare-fun b_next!30195 () Bool)

(assert (=> start!111574 (= b_free!30195 (not b_next!30195))))

(declare-fun tp!106061 () Bool)

(declare-fun b_and!48559 () Bool)

(assert (=> start!111574 (= tp!106061 b_and!48559)))

(declare-fun res!876539 () Bool)

(declare-fun e!753274 () Bool)

(assert (=> start!111574 (=> (not res!876539) (not e!753274))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111574 (= res!876539 (validMask!0 mask!2019))))

(assert (=> start!111574 e!753274))

(declare-datatypes ((array!88925 0))(
  ( (array!88926 (arr!42932 (Array (_ BitVec 32) (_ BitVec 64))) (size!43483 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88925)

(declare-fun array_inv!32369 (array!88925) Bool)

(assert (=> start!111574 (array_inv!32369 _keys!1609)))

(assert (=> start!111574 true))

(declare-fun tp_is_empty!36015 () Bool)

(assert (=> start!111574 tp_is_empty!36015))

(declare-datatypes ((V!53123 0))(
  ( (V!53124 (val!18082 Int)) )
))
(declare-datatypes ((ValueCell!17109 0))(
  ( (ValueCellFull!17109 (v!20710 V!53123)) (EmptyCell!17109) )
))
(declare-datatypes ((array!88927 0))(
  ( (array!88928 (arr!42933 (Array (_ BitVec 32) ValueCell!17109)) (size!43484 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88927)

(declare-fun e!753277 () Bool)

(declare-fun array_inv!32370 (array!88927) Bool)

(assert (=> start!111574 (and (array_inv!32370 _values!1337) e!753277)))

(assert (=> start!111574 tp!106061))

(declare-fun b!1320529 () Bool)

(declare-fun res!876543 () Bool)

(assert (=> b!1320529 (=> (not res!876543) (not e!753274))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1320529 (= res!876543 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43483 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320530 () Bool)

(declare-fun res!876538 () Bool)

(assert (=> b!1320530 (=> (not res!876538) (not e!753274))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88925 (_ BitVec 32)) Bool)

(assert (=> b!1320530 (= res!876538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapIsEmpty!55670 () Bool)

(declare-fun mapRes!55670 () Bool)

(assert (=> mapIsEmpty!55670 mapRes!55670))

(declare-fun b!1320531 () Bool)

(declare-fun res!876537 () Bool)

(assert (=> b!1320531 (=> (not res!876537) (not e!753274))))

(declare-datatypes ((List!30630 0))(
  ( (Nil!30627) (Cons!30626 (h!31835 (_ BitVec 64)) (t!44381 List!30630)) )
))
(declare-fun arrayNoDuplicates!0 (array!88925 (_ BitVec 32) List!30630) Bool)

(assert (=> b!1320531 (= res!876537 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30627))))

(declare-fun b!1320532 () Bool)

(assert (=> b!1320532 (= e!753274 (not true))))

(declare-datatypes ((tuple2!23448 0))(
  ( (tuple2!23449 (_1!11734 (_ BitVec 64)) (_2!11734 V!53123)) )
))
(declare-datatypes ((List!30631 0))(
  ( (Nil!30628) (Cons!30627 (h!31836 tuple2!23448) (t!44382 List!30631)) )
))
(declare-datatypes ((ListLongMap!21117 0))(
  ( (ListLongMap!21118 (toList!10574 List!30631)) )
))
(declare-fun lt!586951 () ListLongMap!21117)

(declare-fun contains!8665 (ListLongMap!21117 (_ BitVec 64)) Bool)

(assert (=> b!1320532 (contains!8665 lt!586951 k0!1164)))

(declare-fun zeroValue!1279 () V!53123)

(declare-datatypes ((Unit!43456 0))(
  ( (Unit!43457) )
))
(declare-fun lt!586950 () Unit!43456)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!143 ((_ BitVec 64) (_ BitVec 64) V!53123 ListLongMap!21117) Unit!43456)

(assert (=> b!1320532 (= lt!586950 (lemmaInListMapAfterAddingDiffThenInBefore!143 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586951))))

(declare-fun lt!586949 () ListLongMap!21117)

(assert (=> b!1320532 (contains!8665 lt!586949 k0!1164)))

(declare-fun lt!586948 () Unit!43456)

(declare-fun minValue!1279 () V!53123)

(assert (=> b!1320532 (= lt!586948 (lemmaInListMapAfterAddingDiffThenInBefore!143 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586949))))

(declare-fun +!4528 (ListLongMap!21117 tuple2!23448) ListLongMap!21117)

(assert (=> b!1320532 (= lt!586949 (+!4528 lt!586951 (tuple2!23449 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6243 (array!88925 array!88927 (_ BitVec 32) (_ BitVec 32) V!53123 V!53123 (_ BitVec 32) Int) ListLongMap!21117)

(declare-fun get!21640 (ValueCell!17109 V!53123) V!53123)

(declare-fun dynLambda!3565 (Int (_ BitVec 64)) V!53123)

(assert (=> b!1320532 (= lt!586951 (+!4528 (getCurrentListMapNoExtraKeys!6243 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23449 (select (arr!42932 _keys!1609) from!2000) (get!21640 (select (arr!42933 _values!1337) from!2000) (dynLambda!3565 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1320533 () Bool)

(declare-fun e!753273 () Bool)

(assert (=> b!1320533 (= e!753273 tp_is_empty!36015)))

(declare-fun b!1320534 () Bool)

(declare-fun e!753276 () Bool)

(assert (=> b!1320534 (= e!753277 (and e!753276 mapRes!55670))))

(declare-fun condMapEmpty!55670 () Bool)

(declare-fun mapDefault!55670 () ValueCell!17109)

(assert (=> b!1320534 (= condMapEmpty!55670 (= (arr!42933 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17109)) mapDefault!55670)))))

(declare-fun b!1320535 () Bool)

(assert (=> b!1320535 (= e!753276 tp_is_empty!36015)))

(declare-fun b!1320536 () Bool)

(declare-fun res!876541 () Bool)

(assert (=> b!1320536 (=> (not res!876541) (not e!753274))))

(declare-fun getCurrentListMap!5517 (array!88925 array!88927 (_ BitVec 32) (_ BitVec 32) V!53123 V!53123 (_ BitVec 32) Int) ListLongMap!21117)

(assert (=> b!1320536 (= res!876541 (contains!8665 (getCurrentListMap!5517 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1320537 () Bool)

(declare-fun res!876540 () Bool)

(assert (=> b!1320537 (=> (not res!876540) (not e!753274))))

(assert (=> b!1320537 (= res!876540 (and (= (size!43484 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43483 _keys!1609) (size!43484 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1320538 () Bool)

(declare-fun res!876542 () Bool)

(assert (=> b!1320538 (=> (not res!876542) (not e!753274))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1320538 (= res!876542 (validKeyInArray!0 (select (arr!42932 _keys!1609) from!2000)))))

(declare-fun mapNonEmpty!55670 () Bool)

(declare-fun tp!106062 () Bool)

(assert (=> mapNonEmpty!55670 (= mapRes!55670 (and tp!106062 e!753273))))

(declare-fun mapRest!55670 () (Array (_ BitVec 32) ValueCell!17109))

(declare-fun mapValue!55670 () ValueCell!17109)

(declare-fun mapKey!55670 () (_ BitVec 32))

(assert (=> mapNonEmpty!55670 (= (arr!42933 _values!1337) (store mapRest!55670 mapKey!55670 mapValue!55670))))

(declare-fun b!1320539 () Bool)

(declare-fun res!876544 () Bool)

(assert (=> b!1320539 (=> (not res!876544) (not e!753274))))

(assert (=> b!1320539 (= res!876544 (not (= (select (arr!42932 _keys!1609) from!2000) k0!1164)))))

(assert (= (and start!111574 res!876539) b!1320537))

(assert (= (and b!1320537 res!876540) b!1320530))

(assert (= (and b!1320530 res!876538) b!1320531))

(assert (= (and b!1320531 res!876537) b!1320529))

(assert (= (and b!1320529 res!876543) b!1320536))

(assert (= (and b!1320536 res!876541) b!1320539))

(assert (= (and b!1320539 res!876544) b!1320538))

(assert (= (and b!1320538 res!876542) b!1320532))

(assert (= (and b!1320534 condMapEmpty!55670) mapIsEmpty!55670))

(assert (= (and b!1320534 (not condMapEmpty!55670)) mapNonEmpty!55670))

(get-info :version)

(assert (= (and mapNonEmpty!55670 ((_ is ValueCellFull!17109) mapValue!55670)) b!1320533))

(assert (= (and b!1320534 ((_ is ValueCellFull!17109) mapDefault!55670)) b!1320535))

(assert (= start!111574 b!1320534))

(declare-fun b_lambda!23531 () Bool)

(assert (=> (not b_lambda!23531) (not b!1320532)))

(declare-fun t!44380 () Bool)

(declare-fun tb!11555 () Bool)

(assert (=> (and start!111574 (= defaultEntry!1340 defaultEntry!1340) t!44380) tb!11555))

(declare-fun result!24157 () Bool)

(assert (=> tb!11555 (= result!24157 tp_is_empty!36015)))

(assert (=> b!1320532 t!44380))

(declare-fun b_and!48561 () Bool)

(assert (= b_and!48559 (and (=> t!44380 result!24157) b_and!48561)))

(declare-fun m!1208311 () Bool)

(assert (=> mapNonEmpty!55670 m!1208311))

(declare-fun m!1208313 () Bool)

(assert (=> b!1320539 m!1208313))

(declare-fun m!1208315 () Bool)

(assert (=> b!1320532 m!1208315))

(declare-fun m!1208317 () Bool)

(assert (=> b!1320532 m!1208317))

(declare-fun m!1208319 () Bool)

(assert (=> b!1320532 m!1208319))

(declare-fun m!1208321 () Bool)

(assert (=> b!1320532 m!1208321))

(assert (=> b!1320532 m!1208317))

(declare-fun m!1208323 () Bool)

(assert (=> b!1320532 m!1208323))

(declare-fun m!1208325 () Bool)

(assert (=> b!1320532 m!1208325))

(declare-fun m!1208327 () Bool)

(assert (=> b!1320532 m!1208327))

(assert (=> b!1320532 m!1208321))

(declare-fun m!1208329 () Bool)

(assert (=> b!1320532 m!1208329))

(assert (=> b!1320532 m!1208313))

(declare-fun m!1208331 () Bool)

(assert (=> b!1320532 m!1208331))

(assert (=> b!1320532 m!1208327))

(declare-fun m!1208333 () Bool)

(assert (=> b!1320532 m!1208333))

(assert (=> b!1320538 m!1208313))

(assert (=> b!1320538 m!1208313))

(declare-fun m!1208335 () Bool)

(assert (=> b!1320538 m!1208335))

(declare-fun m!1208337 () Bool)

(assert (=> b!1320531 m!1208337))

(declare-fun m!1208339 () Bool)

(assert (=> b!1320536 m!1208339))

(assert (=> b!1320536 m!1208339))

(declare-fun m!1208341 () Bool)

(assert (=> b!1320536 m!1208341))

(declare-fun m!1208343 () Bool)

(assert (=> start!111574 m!1208343))

(declare-fun m!1208345 () Bool)

(assert (=> start!111574 m!1208345))

(declare-fun m!1208347 () Bool)

(assert (=> start!111574 m!1208347))

(declare-fun m!1208349 () Bool)

(assert (=> b!1320530 m!1208349))

(check-sat (not b!1320536) (not b!1320538) (not b!1320532) (not start!111574) tp_is_empty!36015 (not b_lambda!23531) (not b!1320531) (not b!1320530) (not b_next!30195) b_and!48561 (not mapNonEmpty!55670))
(check-sat b_and!48561 (not b_next!30195))

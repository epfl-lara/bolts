; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73600 () Bool)

(assert start!73600)

(declare-fun b_free!14487 () Bool)

(declare-fun b_next!14487 () Bool)

(assert (=> start!73600 (= b_free!14487 (not b_next!14487))))

(declare-fun tp!50966 () Bool)

(declare-fun b_and!23971 () Bool)

(assert (=> start!73600 (= tp!50966 b_and!23971)))

(declare-fun b!860352 () Bool)

(declare-fun res!584805 () Bool)

(declare-fun e!479437 () Bool)

(assert (=> b!860352 (=> (not res!584805) (not e!479437))))

(declare-datatypes ((array!49400 0))(
  ( (array!49401 (arr!23727 (Array (_ BitVec 32) (_ BitVec 64))) (size!24168 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49400)

(declare-datatypes ((List!16906 0))(
  ( (Nil!16903) (Cons!16902 (h!18033 (_ BitVec 64)) (t!23667 List!16906)) )
))
(declare-fun arrayNoDuplicates!0 (array!49400 (_ BitVec 32) List!16906) Bool)

(assert (=> b!860352 (= res!584805 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16903))))

(declare-fun b!860353 () Bool)

(declare-fun res!584806 () Bool)

(assert (=> b!860353 (=> (not res!584806) (not e!479437))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!860353 (= res!584806 (and (= (select (arr!23727 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!26534 () Bool)

(declare-fun mapRes!26534 () Bool)

(declare-fun tp!50965 () Bool)

(declare-fun e!479443 () Bool)

(assert (=> mapNonEmpty!26534 (= mapRes!26534 (and tp!50965 e!479443))))

(declare-fun mapKey!26534 () (_ BitVec 32))

(declare-datatypes ((V!27211 0))(
  ( (V!27212 (val!8359 Int)) )
))
(declare-datatypes ((ValueCell!7872 0))(
  ( (ValueCellFull!7872 (v!10780 V!27211)) (EmptyCell!7872) )
))
(declare-fun mapRest!26534 () (Array (_ BitVec 32) ValueCell!7872))

(declare-fun mapValue!26534 () ValueCell!7872)

(declare-datatypes ((array!49402 0))(
  ( (array!49403 (arr!23728 (Array (_ BitVec 32) ValueCell!7872)) (size!24169 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49402)

(assert (=> mapNonEmpty!26534 (= (arr!23728 _values!688) (store mapRest!26534 mapKey!26534 mapValue!26534))))

(declare-fun b!860355 () Bool)

(declare-fun e!479442 () Bool)

(declare-fun e!479440 () Bool)

(assert (=> b!860355 (= e!479442 (and e!479440 mapRes!26534))))

(declare-fun condMapEmpty!26534 () Bool)

(declare-fun mapDefault!26534 () ValueCell!7872)

(assert (=> b!860355 (= condMapEmpty!26534 (= (arr!23728 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7872)) mapDefault!26534)))))

(declare-fun b!860356 () Bool)

(declare-fun e!479439 () Bool)

(declare-fun e!479444 () Bool)

(assert (=> b!860356 (= e!479439 (not e!479444))))

(declare-fun res!584802 () Bool)

(assert (=> b!860356 (=> res!584802 e!479444)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!860356 (= res!584802 (not (validKeyInArray!0 (select (arr!23727 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11036 0))(
  ( (tuple2!11037 (_1!5528 (_ BitVec 64)) (_2!5528 V!27211)) )
))
(declare-datatypes ((List!16907 0))(
  ( (Nil!16904) (Cons!16903 (h!18034 tuple2!11036) (t!23668 List!16907)) )
))
(declare-datatypes ((ListLongMap!9819 0))(
  ( (ListLongMap!9820 (toList!4925 List!16907)) )
))
(declare-fun lt!387810 () ListLongMap!9819)

(declare-fun lt!387813 () ListLongMap!9819)

(assert (=> b!860356 (= lt!387810 lt!387813)))

(declare-fun lt!387817 () ListLongMap!9819)

(declare-fun v!557 () V!27211)

(declare-fun +!2226 (ListLongMap!9819 tuple2!11036) ListLongMap!9819)

(assert (=> b!860356 (= lt!387813 (+!2226 lt!387817 (tuple2!11037 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!387814 () array!49402)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27211)

(declare-fun zeroValue!654 () V!27211)

(declare-fun getCurrentListMapNoExtraKeys!2905 (array!49400 array!49402 (_ BitVec 32) (_ BitVec 32) V!27211 V!27211 (_ BitVec 32) Int) ListLongMap!9819)

(assert (=> b!860356 (= lt!387810 (getCurrentListMapNoExtraKeys!2905 _keys!868 lt!387814 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!860356 (= lt!387817 (getCurrentListMapNoExtraKeys!2905 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29296 0))(
  ( (Unit!29297) )
))
(declare-fun lt!387819 () Unit!29296)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!480 (array!49400 array!49402 (_ BitVec 32) (_ BitVec 32) V!27211 V!27211 (_ BitVec 32) (_ BitVec 64) V!27211 (_ BitVec 32) Int) Unit!29296)

(assert (=> b!860356 (= lt!387819 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!480 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!860357 () Bool)

(declare-fun tp_is_empty!16623 () Bool)

(assert (=> b!860357 (= e!479443 tp_is_empty!16623)))

(declare-fun b!860358 () Bool)

(declare-fun res!584801 () Bool)

(declare-fun e!479441 () Bool)

(assert (=> b!860358 (=> res!584801 e!479441)))

(declare-fun contains!4231 (List!16906 (_ BitVec 64)) Bool)

(assert (=> b!860358 (= res!584801 (contains!4231 Nil!16903 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!860359 () Bool)

(declare-fun res!584808 () Bool)

(assert (=> b!860359 (=> (not res!584808) (not e!479437))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49400 (_ BitVec 32)) Bool)

(assert (=> b!860359 (= res!584808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!860360 () Bool)

(declare-fun res!584803 () Bool)

(assert (=> b!860360 (=> res!584803 e!479441)))

(declare-fun noDuplicate!1312 (List!16906) Bool)

(assert (=> b!860360 (= res!584803 (not (noDuplicate!1312 Nil!16903)))))

(declare-fun b!860361 () Bool)

(declare-fun e!479438 () Bool)

(assert (=> b!860361 (= e!479438 e!479441)))

(declare-fun res!584799 () Bool)

(assert (=> b!860361 (=> res!584799 e!479441)))

(assert (=> b!860361 (= res!584799 (or (bvsge (size!24168 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24168 _keys!868)) (bvsge from!1053 (size!24168 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!49400 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!860361 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!387818 () Unit!29296)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49400 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29296)

(assert (=> b!860361 (= lt!387818 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!860361 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16903)))

(declare-fun lt!387816 () Unit!29296)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49400 (_ BitVec 32) (_ BitVec 32)) Unit!29296)

(assert (=> b!860361 (= lt!387816 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!860362 () Bool)

(declare-fun res!584807 () Bool)

(assert (=> b!860362 (=> (not res!584807) (not e!479437))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!860362 (= res!584807 (validMask!0 mask!1196))))

(declare-fun b!860363 () Bool)

(assert (=> b!860363 (= e!479441 true)))

(declare-fun lt!387812 () Bool)

(assert (=> b!860363 (= lt!387812 (contains!4231 Nil!16903 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!860364 () Bool)

(declare-fun res!584811 () Bool)

(assert (=> b!860364 (=> (not res!584811) (not e!479437))))

(assert (=> b!860364 (= res!584811 (validKeyInArray!0 k0!854))))

(declare-fun b!860365 () Bool)

(assert (=> b!860365 (= e!479444 e!479438)))

(declare-fun res!584804 () Bool)

(assert (=> b!860365 (=> res!584804 e!479438)))

(assert (=> b!860365 (= res!584804 (not (= (select (arr!23727 _keys!868) from!1053) k0!854)))))

(declare-fun lt!387811 () ListLongMap!9819)

(declare-fun get!12522 (ValueCell!7872 V!27211) V!27211)

(declare-fun dynLambda!1110 (Int (_ BitVec 64)) V!27211)

(assert (=> b!860365 (= lt!387811 (+!2226 lt!387813 (tuple2!11037 (select (arr!23727 _keys!868) from!1053) (get!12522 (select (arr!23728 _values!688) from!1053) (dynLambda!1110 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapIsEmpty!26534 () Bool)

(assert (=> mapIsEmpty!26534 mapRes!26534))

(declare-fun b!860366 () Bool)

(declare-fun res!584810 () Bool)

(assert (=> b!860366 (=> (not res!584810) (not e!479437))))

(assert (=> b!860366 (= res!584810 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24168 _keys!868))))))

(declare-fun res!584798 () Bool)

(assert (=> start!73600 (=> (not res!584798) (not e!479437))))

(assert (=> start!73600 (= res!584798 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24168 _keys!868))))))

(assert (=> start!73600 e!479437))

(assert (=> start!73600 tp_is_empty!16623))

(assert (=> start!73600 true))

(assert (=> start!73600 tp!50966))

(declare-fun array_inv!18756 (array!49400) Bool)

(assert (=> start!73600 (array_inv!18756 _keys!868)))

(declare-fun array_inv!18757 (array!49402) Bool)

(assert (=> start!73600 (and (array_inv!18757 _values!688) e!479442)))

(declare-fun b!860354 () Bool)

(assert (=> b!860354 (= e!479440 tp_is_empty!16623)))

(declare-fun b!860367 () Bool)

(declare-fun res!584800 () Bool)

(assert (=> b!860367 (=> (not res!584800) (not e!479437))))

(assert (=> b!860367 (= res!584800 (and (= (size!24169 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24168 _keys!868) (size!24169 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!860368 () Bool)

(assert (=> b!860368 (= e!479437 e!479439)))

(declare-fun res!584809 () Bool)

(assert (=> b!860368 (=> (not res!584809) (not e!479439))))

(assert (=> b!860368 (= res!584809 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!860368 (= lt!387811 (getCurrentListMapNoExtraKeys!2905 _keys!868 lt!387814 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!860368 (= lt!387814 (array!49403 (store (arr!23728 _values!688) i!612 (ValueCellFull!7872 v!557)) (size!24169 _values!688)))))

(declare-fun lt!387815 () ListLongMap!9819)

(assert (=> b!860368 (= lt!387815 (getCurrentListMapNoExtraKeys!2905 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!73600 res!584798) b!860362))

(assert (= (and b!860362 res!584807) b!860367))

(assert (= (and b!860367 res!584800) b!860359))

(assert (= (and b!860359 res!584808) b!860352))

(assert (= (and b!860352 res!584805) b!860366))

(assert (= (and b!860366 res!584810) b!860364))

(assert (= (and b!860364 res!584811) b!860353))

(assert (= (and b!860353 res!584806) b!860368))

(assert (= (and b!860368 res!584809) b!860356))

(assert (= (and b!860356 (not res!584802)) b!860365))

(assert (= (and b!860365 (not res!584804)) b!860361))

(assert (= (and b!860361 (not res!584799)) b!860360))

(assert (= (and b!860360 (not res!584803)) b!860358))

(assert (= (and b!860358 (not res!584801)) b!860363))

(assert (= (and b!860355 condMapEmpty!26534) mapIsEmpty!26534))

(assert (= (and b!860355 (not condMapEmpty!26534)) mapNonEmpty!26534))

(get-info :version)

(assert (= (and mapNonEmpty!26534 ((_ is ValueCellFull!7872) mapValue!26534)) b!860357))

(assert (= (and b!860355 ((_ is ValueCellFull!7872) mapDefault!26534)) b!860354))

(assert (= start!73600 b!860355))

(declare-fun b_lambda!11869 () Bool)

(assert (=> (not b_lambda!11869) (not b!860365)))

(declare-fun t!23666 () Bool)

(declare-fun tb!4617 () Bool)

(assert (=> (and start!73600 (= defaultEntry!696 defaultEntry!696) t!23666) tb!4617))

(declare-fun result!8837 () Bool)

(assert (=> tb!4617 (= result!8837 tp_is_empty!16623)))

(assert (=> b!860365 t!23666))

(declare-fun b_and!23973 () Bool)

(assert (= b_and!23971 (and (=> t!23666 result!8837) b_and!23973)))

(declare-fun m!801267 () Bool)

(assert (=> b!860363 m!801267))

(declare-fun m!801269 () Bool)

(assert (=> start!73600 m!801269))

(declare-fun m!801271 () Bool)

(assert (=> start!73600 m!801271))

(declare-fun m!801273 () Bool)

(assert (=> b!860368 m!801273))

(declare-fun m!801275 () Bool)

(assert (=> b!860368 m!801275))

(declare-fun m!801277 () Bool)

(assert (=> b!860368 m!801277))

(declare-fun m!801279 () Bool)

(assert (=> b!860364 m!801279))

(declare-fun m!801281 () Bool)

(assert (=> b!860365 m!801281))

(declare-fun m!801283 () Bool)

(assert (=> b!860365 m!801283))

(declare-fun m!801285 () Bool)

(assert (=> b!860365 m!801285))

(declare-fun m!801287 () Bool)

(assert (=> b!860365 m!801287))

(assert (=> b!860365 m!801283))

(declare-fun m!801289 () Bool)

(assert (=> b!860365 m!801289))

(assert (=> b!860365 m!801285))

(declare-fun m!801291 () Bool)

(assert (=> b!860360 m!801291))

(declare-fun m!801293 () Bool)

(assert (=> b!860358 m!801293))

(declare-fun m!801295 () Bool)

(assert (=> b!860361 m!801295))

(declare-fun m!801297 () Bool)

(assert (=> b!860361 m!801297))

(declare-fun m!801299 () Bool)

(assert (=> b!860361 m!801299))

(declare-fun m!801301 () Bool)

(assert (=> b!860361 m!801301))

(declare-fun m!801303 () Bool)

(assert (=> b!860359 m!801303))

(declare-fun m!801305 () Bool)

(assert (=> b!860352 m!801305))

(declare-fun m!801307 () Bool)

(assert (=> mapNonEmpty!26534 m!801307))

(declare-fun m!801309 () Bool)

(assert (=> b!860356 m!801309))

(assert (=> b!860356 m!801289))

(declare-fun m!801311 () Bool)

(assert (=> b!860356 m!801311))

(assert (=> b!860356 m!801289))

(declare-fun m!801313 () Bool)

(assert (=> b!860356 m!801313))

(declare-fun m!801315 () Bool)

(assert (=> b!860356 m!801315))

(declare-fun m!801317 () Bool)

(assert (=> b!860356 m!801317))

(declare-fun m!801319 () Bool)

(assert (=> b!860353 m!801319))

(declare-fun m!801321 () Bool)

(assert (=> b!860362 m!801321))

(check-sat (not b!860368) (not b!860361) (not b!860365) (not b!860360) (not b!860358) (not start!73600) (not b!860356) tp_is_empty!16623 (not b!860352) (not b_lambda!11869) (not b!860364) (not mapNonEmpty!26534) b_and!23973 (not b_next!14487) (not b!860363) (not b!860362) (not b!860359))
(check-sat b_and!23973 (not b_next!14487))

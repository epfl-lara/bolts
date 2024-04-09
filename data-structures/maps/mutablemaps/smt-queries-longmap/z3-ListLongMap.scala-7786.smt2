; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97498 () Bool)

(assert start!97498)

(declare-fun b_free!23433 () Bool)

(declare-fun b_next!23433 () Bool)

(assert (=> start!97498 (= b_free!23433 (not b_next!23433))))

(declare-fun tp!82598 () Bool)

(declare-fun b_and!37725 () Bool)

(assert (=> start!97498 (= tp!82598 b_and!37725)))

(declare-fun b!1112205 () Bool)

(declare-fun e!634174 () Bool)

(declare-fun e!634180 () Bool)

(assert (=> b!1112205 (= e!634174 e!634180)))

(declare-fun res!742268 () Bool)

(assert (=> b!1112205 (=> (not res!742268) (not e!634180))))

(declare-datatypes ((array!72244 0))(
  ( (array!72245 (arr!34771 (Array (_ BitVec 32) (_ BitVec 64))) (size!35308 (_ BitVec 32))) )
))
(declare-fun lt!496463 () array!72244)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72244 (_ BitVec 32)) Bool)

(assert (=> b!1112205 (= res!742268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496463 mask!1564))))

(declare-fun _keys!1208 () array!72244)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1112205 (= lt!496463 (array!72245 (store (arr!34771 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35308 _keys!1208)))))

(declare-fun b!1112206 () Bool)

(declare-fun res!742269 () Bool)

(assert (=> b!1112206 (=> (not res!742269) (not e!634174))))

(assert (=> b!1112206 (= res!742269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-datatypes ((V!42051 0))(
  ( (V!42052 (val!13903 Int)) )
))
(declare-fun zeroValue!944 () V!42051)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13137 0))(
  ( (ValueCellFull!13137 (v!16537 V!42051)) (EmptyCell!13137) )
))
(declare-datatypes ((array!72246 0))(
  ( (array!72247 (arr!34772 (Array (_ BitVec 32) ValueCell!13137)) (size!35309 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72246)

(declare-fun minValue!944 () V!42051)

(declare-fun bm!46993 () Bool)

(declare-datatypes ((tuple2!17656 0))(
  ( (tuple2!17657 (_1!8838 (_ BitVec 64)) (_2!8838 V!42051)) )
))
(declare-datatypes ((List!24393 0))(
  ( (Nil!24390) (Cons!24389 (h!25598 tuple2!17656) (t!34879 List!24393)) )
))
(declare-datatypes ((ListLongMap!15637 0))(
  ( (ListLongMap!15638 (toList!7834 List!24393)) )
))
(declare-fun call!46996 () ListLongMap!15637)

(declare-fun getCurrentListMapNoExtraKeys!4295 (array!72244 array!72246 (_ BitVec 32) (_ BitVec 32) V!42051 V!42051 (_ BitVec 32) Int) ListLongMap!15637)

(assert (=> bm!46993 (= call!46996 (getCurrentListMapNoExtraKeys!4295 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1112207 () Bool)

(declare-fun res!742278 () Bool)

(assert (=> b!1112207 (=> (not res!742278) (not e!634174))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1112207 (= res!742278 (= (select (arr!34771 _keys!1208) i!673) k0!934))))

(declare-fun call!46997 () ListLongMap!15637)

(declare-fun e!634181 () Bool)

(declare-fun b!1112208 () Bool)

(declare-fun -!1053 (ListLongMap!15637 (_ BitVec 64)) ListLongMap!15637)

(assert (=> b!1112208 (= e!634181 (= call!46997 (-!1053 call!46996 k0!934)))))

(declare-fun b!1112209 () Bool)

(declare-fun res!742276 () Bool)

(assert (=> b!1112209 (=> (not res!742276) (not e!634174))))

(declare-datatypes ((List!24394 0))(
  ( (Nil!24391) (Cons!24390 (h!25599 (_ BitVec 64)) (t!34880 List!24394)) )
))
(declare-fun arrayNoDuplicates!0 (array!72244 (_ BitVec 32) List!24394) Bool)

(assert (=> b!1112209 (= res!742276 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24391))))

(declare-fun mapIsEmpty!43357 () Bool)

(declare-fun mapRes!43357 () Bool)

(assert (=> mapIsEmpty!43357 mapRes!43357))

(declare-fun b!1112210 () Bool)

(declare-fun res!742275 () Bool)

(assert (=> b!1112210 (=> (not res!742275) (not e!634180))))

(assert (=> b!1112210 (= res!742275 (arrayNoDuplicates!0 lt!496463 #b00000000000000000000000000000000 Nil!24391))))

(declare-fun b!1112211 () Bool)

(declare-fun res!742272 () Bool)

(assert (=> b!1112211 (=> (not res!742272) (not e!634174))))

(assert (=> b!1112211 (= res!742272 (and (= (size!35309 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35308 _keys!1208) (size!35309 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!43357 () Bool)

(declare-fun tp!82599 () Bool)

(declare-fun e!634176 () Bool)

(assert (=> mapNonEmpty!43357 (= mapRes!43357 (and tp!82599 e!634176))))

(declare-fun mapKey!43357 () (_ BitVec 32))

(declare-fun mapValue!43357 () ValueCell!13137)

(declare-fun mapRest!43357 () (Array (_ BitVec 32) ValueCell!13137))

(assert (=> mapNonEmpty!43357 (= (arr!34772 _values!996) (store mapRest!43357 mapKey!43357 mapValue!43357))))

(declare-fun b!1112212 () Bool)

(declare-fun res!742270 () Bool)

(assert (=> b!1112212 (=> (not res!742270) (not e!634174))))

(assert (=> b!1112212 (= res!742270 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35308 _keys!1208))))))

(declare-fun b!1112213 () Bool)

(declare-fun e!634178 () Bool)

(assert (=> b!1112213 (= e!634178 true)))

(assert (=> b!1112213 e!634181))

(declare-fun c!109307 () Bool)

(assert (=> b!1112213 (= c!109307 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36409 0))(
  ( (Unit!36410) )
))
(declare-fun lt!496464 () Unit!36409)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!310 (array!72244 array!72246 (_ BitVec 32) (_ BitVec 32) V!42051 V!42051 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36409)

(assert (=> b!1112213 (= lt!496464 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!310 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1112215 () Bool)

(declare-fun res!742271 () Bool)

(assert (=> b!1112215 (=> (not res!742271) (not e!634174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1112215 (= res!742271 (validMask!0 mask!1564))))

(declare-fun b!1112216 () Bool)

(declare-fun e!634177 () Bool)

(declare-fun tp_is_empty!27693 () Bool)

(assert (=> b!1112216 (= e!634177 tp_is_empty!27693)))

(declare-fun b!1112217 () Bool)

(assert (=> b!1112217 (= e!634181 (= call!46997 call!46996))))

(declare-fun b!1112214 () Bool)

(assert (=> b!1112214 (= e!634180 (not e!634178))))

(declare-fun res!742277 () Bool)

(assert (=> b!1112214 (=> res!742277 e!634178)))

(assert (=> b!1112214 (= res!742277 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35308 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72244 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1112214 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!496462 () Unit!36409)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72244 (_ BitVec 64) (_ BitVec 32)) Unit!36409)

(assert (=> b!1112214 (= lt!496462 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!742273 () Bool)

(assert (=> start!97498 (=> (not res!742273) (not e!634174))))

(assert (=> start!97498 (= res!742273 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35308 _keys!1208))))))

(assert (=> start!97498 e!634174))

(assert (=> start!97498 tp_is_empty!27693))

(declare-fun array_inv!26610 (array!72244) Bool)

(assert (=> start!97498 (array_inv!26610 _keys!1208)))

(assert (=> start!97498 true))

(assert (=> start!97498 tp!82598))

(declare-fun e!634179 () Bool)

(declare-fun array_inv!26611 (array!72246) Bool)

(assert (=> start!97498 (and (array_inv!26611 _values!996) e!634179)))

(declare-fun bm!46994 () Bool)

(declare-fun dynLambda!2417 (Int (_ BitVec 64)) V!42051)

(assert (=> bm!46994 (= call!46997 (getCurrentListMapNoExtraKeys!4295 lt!496463 (array!72247 (store (arr!34772 _values!996) i!673 (ValueCellFull!13137 (dynLambda!2417 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35309 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1112218 () Bool)

(assert (=> b!1112218 (= e!634179 (and e!634177 mapRes!43357))))

(declare-fun condMapEmpty!43357 () Bool)

(declare-fun mapDefault!43357 () ValueCell!13137)

(assert (=> b!1112218 (= condMapEmpty!43357 (= (arr!34772 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13137)) mapDefault!43357)))))

(declare-fun b!1112219 () Bool)

(declare-fun res!742274 () Bool)

(assert (=> b!1112219 (=> (not res!742274) (not e!634174))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1112219 (= res!742274 (validKeyInArray!0 k0!934))))

(declare-fun b!1112220 () Bool)

(assert (=> b!1112220 (= e!634176 tp_is_empty!27693)))

(assert (= (and start!97498 res!742273) b!1112215))

(assert (= (and b!1112215 res!742271) b!1112211))

(assert (= (and b!1112211 res!742272) b!1112206))

(assert (= (and b!1112206 res!742269) b!1112209))

(assert (= (and b!1112209 res!742276) b!1112212))

(assert (= (and b!1112212 res!742270) b!1112219))

(assert (= (and b!1112219 res!742274) b!1112207))

(assert (= (and b!1112207 res!742278) b!1112205))

(assert (= (and b!1112205 res!742268) b!1112210))

(assert (= (and b!1112210 res!742275) b!1112214))

(assert (= (and b!1112214 (not res!742277)) b!1112213))

(assert (= (and b!1112213 c!109307) b!1112208))

(assert (= (and b!1112213 (not c!109307)) b!1112217))

(assert (= (or b!1112208 b!1112217) bm!46994))

(assert (= (or b!1112208 b!1112217) bm!46993))

(assert (= (and b!1112218 condMapEmpty!43357) mapIsEmpty!43357))

(assert (= (and b!1112218 (not condMapEmpty!43357)) mapNonEmpty!43357))

(get-info :version)

(assert (= (and mapNonEmpty!43357 ((_ is ValueCellFull!13137) mapValue!43357)) b!1112220))

(assert (= (and b!1112218 ((_ is ValueCellFull!13137) mapDefault!43357)) b!1112216))

(assert (= start!97498 b!1112218))

(declare-fun b_lambda!18491 () Bool)

(assert (=> (not b_lambda!18491) (not bm!46994)))

(declare-fun t!34878 () Bool)

(declare-fun tb!8307 () Bool)

(assert (=> (and start!97498 (= defaultEntry!1004 defaultEntry!1004) t!34878) tb!8307))

(declare-fun result!17167 () Bool)

(assert (=> tb!8307 (= result!17167 tp_is_empty!27693)))

(assert (=> bm!46994 t!34878))

(declare-fun b_and!37727 () Bool)

(assert (= b_and!37725 (and (=> t!34878 result!17167) b_and!37727)))

(declare-fun m!1029915 () Bool)

(assert (=> b!1112205 m!1029915))

(declare-fun m!1029917 () Bool)

(assert (=> b!1112205 m!1029917))

(declare-fun m!1029919 () Bool)

(assert (=> b!1112210 m!1029919))

(declare-fun m!1029921 () Bool)

(assert (=> b!1112209 m!1029921))

(declare-fun m!1029923 () Bool)

(assert (=> b!1112208 m!1029923))

(declare-fun m!1029925 () Bool)

(assert (=> mapNonEmpty!43357 m!1029925))

(declare-fun m!1029927 () Bool)

(assert (=> bm!46994 m!1029927))

(declare-fun m!1029929 () Bool)

(assert (=> bm!46994 m!1029929))

(declare-fun m!1029931 () Bool)

(assert (=> bm!46994 m!1029931))

(declare-fun m!1029933 () Bool)

(assert (=> b!1112219 m!1029933))

(declare-fun m!1029935 () Bool)

(assert (=> b!1112213 m!1029935))

(declare-fun m!1029937 () Bool)

(assert (=> b!1112207 m!1029937))

(declare-fun m!1029939 () Bool)

(assert (=> b!1112215 m!1029939))

(declare-fun m!1029941 () Bool)

(assert (=> start!97498 m!1029941))

(declare-fun m!1029943 () Bool)

(assert (=> start!97498 m!1029943))

(declare-fun m!1029945 () Bool)

(assert (=> b!1112206 m!1029945))

(declare-fun m!1029947 () Bool)

(assert (=> b!1112214 m!1029947))

(declare-fun m!1029949 () Bool)

(assert (=> b!1112214 m!1029949))

(declare-fun m!1029951 () Bool)

(assert (=> bm!46993 m!1029951))

(check-sat (not b!1112215) b_and!37727 (not b!1112213) (not bm!46994) (not start!97498) (not b!1112208) (not b_lambda!18491) (not mapNonEmpty!43357) (not b!1112210) (not b!1112205) (not b!1112219) (not b!1112206) (not b!1112209) tp_is_empty!27693 (not b_next!23433) (not b!1112214) (not bm!46993))
(check-sat b_and!37727 (not b_next!23433))

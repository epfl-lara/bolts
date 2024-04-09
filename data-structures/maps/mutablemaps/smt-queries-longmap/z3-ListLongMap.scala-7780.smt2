; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97462 () Bool)

(assert start!97462)

(declare-fun b_free!23397 () Bool)

(declare-fun b_next!23397 () Bool)

(assert (=> start!97462 (= b_free!23397 (not b_next!23397))))

(declare-fun tp!82490 () Bool)

(declare-fun b_and!37651 () Bool)

(assert (=> start!97462 (= tp!82490 b_and!37651)))

(declare-datatypes ((V!42003 0))(
  ( (V!42004 (val!13885 Int)) )
))
(declare-fun zeroValue!944 () V!42003)

(declare-fun bm!46885 () Bool)

(declare-datatypes ((array!72178 0))(
  ( (array!72179 (arr!34738 (Array (_ BitVec 32) (_ BitVec 64))) (size!35275 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72178)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!17634 0))(
  ( (tuple2!17635 (_1!8827 (_ BitVec 64)) (_2!8827 V!42003)) )
))
(declare-datatypes ((List!24369 0))(
  ( (Nil!24366) (Cons!24365 (h!25574 tuple2!17634) (t!34819 List!24369)) )
))
(declare-datatypes ((ListLongMap!15615 0))(
  ( (ListLongMap!15616 (toList!7823 List!24369)) )
))
(declare-fun call!46889 () ListLongMap!15615)

(declare-datatypes ((ValueCell!13119 0))(
  ( (ValueCellFull!13119 (v!16519 V!42003)) (EmptyCell!13119) )
))
(declare-datatypes ((array!72180 0))(
  ( (array!72181 (arr!34739 (Array (_ BitVec 32) ValueCell!13119)) (size!35276 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72180)

(declare-fun minValue!944 () V!42003)

(declare-fun getCurrentListMapNoExtraKeys!4284 (array!72178 array!72180 (_ BitVec 32) (_ BitVec 32) V!42003 V!42003 (_ BitVec 32) Int) ListLongMap!15615)

(assert (=> bm!46885 (= call!46889 (getCurrentListMapNoExtraKeys!4284 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!43303 () Bool)

(declare-fun mapRes!43303 () Bool)

(declare-fun tp!82491 () Bool)

(declare-fun e!633736 () Bool)

(assert (=> mapNonEmpty!43303 (= mapRes!43303 (and tp!82491 e!633736))))

(declare-fun mapKey!43303 () (_ BitVec 32))

(declare-fun mapValue!43303 () ValueCell!13119)

(declare-fun mapRest!43303 () (Array (_ BitVec 32) ValueCell!13119))

(assert (=> mapNonEmpty!43303 (= (arr!34739 _values!996) (store mapRest!43303 mapKey!43303 mapValue!43303))))

(declare-fun b!1111293 () Bool)

(declare-fun e!633743 () Bool)

(declare-fun e!633741 () Bool)

(assert (=> b!1111293 (= e!633743 (and e!633741 mapRes!43303))))

(declare-fun condMapEmpty!43303 () Bool)

(declare-fun mapDefault!43303 () ValueCell!13119)

(assert (=> b!1111293 (= condMapEmpty!43303 (= (arr!34739 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13119)) mapDefault!43303)))))

(declare-fun b!1111294 () Bool)

(declare-fun e!633740 () Bool)

(declare-fun e!633738 () Bool)

(assert (=> b!1111294 (= e!633740 (not e!633738))))

(declare-fun res!741677 () Bool)

(assert (=> b!1111294 (=> res!741677 e!633738)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1111294 (= res!741677 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35275 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72178 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1111294 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36385 0))(
  ( (Unit!36386) )
))
(declare-fun lt!496300 () Unit!36385)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72178 (_ BitVec 64) (_ BitVec 32)) Unit!36385)

(assert (=> b!1111294 (= lt!496300 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1111295 () Bool)

(declare-fun e!633737 () Bool)

(assert (=> b!1111295 (= e!633737 e!633740)))

(declare-fun res!741679 () Bool)

(assert (=> b!1111295 (=> (not res!741679) (not e!633740))))

(declare-fun lt!496302 () array!72178)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72178 (_ BitVec 32)) Bool)

(assert (=> b!1111295 (= res!741679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496302 mask!1564))))

(assert (=> b!1111295 (= lt!496302 (array!72179 (store (arr!34738 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35275 _keys!1208)))))

(declare-fun b!1111296 () Bool)

(declare-fun res!741678 () Bool)

(assert (=> b!1111296 (=> (not res!741678) (not e!633737))))

(assert (=> b!1111296 (= res!741678 (= (select (arr!34738 _keys!1208) i!673) k0!934))))

(declare-fun b!1111297 () Bool)

(declare-fun res!741684 () Bool)

(assert (=> b!1111297 (=> (not res!741684) (not e!633737))))

(assert (=> b!1111297 (= res!741684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1111298 () Bool)

(declare-fun res!741680 () Bool)

(assert (=> b!1111298 (=> (not res!741680) (not e!633737))))

(declare-datatypes ((List!24370 0))(
  ( (Nil!24367) (Cons!24366 (h!25575 (_ BitVec 64)) (t!34820 List!24370)) )
))
(declare-fun arrayNoDuplicates!0 (array!72178 (_ BitVec 32) List!24370) Bool)

(assert (=> b!1111298 (= res!741680 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24367))))

(declare-fun b!1111299 () Bool)

(declare-fun res!741682 () Bool)

(assert (=> b!1111299 (=> (not res!741682) (not e!633740))))

(assert (=> b!1111299 (= res!741682 (arrayNoDuplicates!0 lt!496302 #b00000000000000000000000000000000 Nil!24367))))

(declare-fun b!1111300 () Bool)

(declare-fun e!633742 () Bool)

(declare-fun call!46888 () ListLongMap!15615)

(assert (=> b!1111300 (= e!633742 (= call!46888 call!46889))))

(declare-fun b!1111301 () Bool)

(assert (=> b!1111301 (= e!633738 true)))

(assert (=> b!1111301 e!633742))

(declare-fun c!109247 () Bool)

(assert (=> b!1111301 (= c!109247 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!496301 () Unit!36385)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!298 (array!72178 array!72180 (_ BitVec 32) (_ BitVec 32) V!42003 V!42003 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36385)

(assert (=> b!1111301 (= lt!496301 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!298 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1111302 () Bool)

(declare-fun res!741675 () Bool)

(assert (=> b!1111302 (=> (not res!741675) (not e!633737))))

(assert (=> b!1111302 (= res!741675 (and (= (size!35276 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35275 _keys!1208) (size!35276 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1111303 () Bool)

(declare-fun tp_is_empty!27657 () Bool)

(assert (=> b!1111303 (= e!633741 tp_is_empty!27657)))

(declare-fun b!1111304 () Bool)

(declare-fun res!741674 () Bool)

(assert (=> b!1111304 (=> (not res!741674) (not e!633737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1111304 (= res!741674 (validMask!0 mask!1564))))

(declare-fun b!1111305 () Bool)

(declare-fun res!741681 () Bool)

(assert (=> b!1111305 (=> (not res!741681) (not e!633737))))

(assert (=> b!1111305 (= res!741681 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35275 _keys!1208))))))

(declare-fun bm!46886 () Bool)

(declare-fun dynLambda!2406 (Int (_ BitVec 64)) V!42003)

(assert (=> bm!46886 (= call!46888 (getCurrentListMapNoExtraKeys!4284 lt!496302 (array!72181 (store (arr!34739 _values!996) i!673 (ValueCellFull!13119 (dynLambda!2406 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35276 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!741676 () Bool)

(assert (=> start!97462 (=> (not res!741676) (not e!633737))))

(assert (=> start!97462 (= res!741676 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35275 _keys!1208))))))

(assert (=> start!97462 e!633737))

(assert (=> start!97462 tp_is_empty!27657))

(declare-fun array_inv!26588 (array!72178) Bool)

(assert (=> start!97462 (array_inv!26588 _keys!1208)))

(assert (=> start!97462 true))

(assert (=> start!97462 tp!82490))

(declare-fun array_inv!26589 (array!72180) Bool)

(assert (=> start!97462 (and (array_inv!26589 _values!996) e!633743)))

(declare-fun b!1111306 () Bool)

(assert (=> b!1111306 (= e!633736 tp_is_empty!27657)))

(declare-fun b!1111307 () Bool)

(declare-fun res!741683 () Bool)

(assert (=> b!1111307 (=> (not res!741683) (not e!633737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1111307 (= res!741683 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!43303 () Bool)

(assert (=> mapIsEmpty!43303 mapRes!43303))

(declare-fun b!1111308 () Bool)

(declare-fun -!1044 (ListLongMap!15615 (_ BitVec 64)) ListLongMap!15615)

(assert (=> b!1111308 (= e!633742 (= call!46888 (-!1044 call!46889 k0!934)))))

(assert (= (and start!97462 res!741676) b!1111304))

(assert (= (and b!1111304 res!741674) b!1111302))

(assert (= (and b!1111302 res!741675) b!1111297))

(assert (= (and b!1111297 res!741684) b!1111298))

(assert (= (and b!1111298 res!741680) b!1111305))

(assert (= (and b!1111305 res!741681) b!1111307))

(assert (= (and b!1111307 res!741683) b!1111296))

(assert (= (and b!1111296 res!741678) b!1111295))

(assert (= (and b!1111295 res!741679) b!1111299))

(assert (= (and b!1111299 res!741682) b!1111294))

(assert (= (and b!1111294 (not res!741677)) b!1111301))

(assert (= (and b!1111301 c!109247) b!1111308))

(assert (= (and b!1111301 (not c!109247)) b!1111300))

(assert (= (or b!1111308 b!1111300) bm!46885))

(assert (= (or b!1111308 b!1111300) bm!46886))

(assert (= (and b!1111293 condMapEmpty!43303) mapIsEmpty!43303))

(assert (= (and b!1111293 (not condMapEmpty!43303)) mapNonEmpty!43303))

(get-info :version)

(assert (= (and mapNonEmpty!43303 ((_ is ValueCellFull!13119) mapValue!43303)) b!1111306))

(assert (= (and b!1111293 ((_ is ValueCellFull!13119) mapDefault!43303)) b!1111303))

(assert (= start!97462 b!1111293))

(declare-fun b_lambda!18453 () Bool)

(assert (=> (not b_lambda!18453) (not bm!46886)))

(declare-fun t!34818 () Bool)

(declare-fun tb!8271 () Bool)

(assert (=> (and start!97462 (= defaultEntry!1004 defaultEntry!1004) t!34818) tb!8271))

(declare-fun result!17095 () Bool)

(assert (=> tb!8271 (= result!17095 tp_is_empty!27657)))

(assert (=> bm!46886 t!34818))

(declare-fun b_and!37653 () Bool)

(assert (= b_and!37651 (and (=> t!34818 result!17095) b_and!37653)))

(declare-fun m!1029231 () Bool)

(assert (=> b!1111308 m!1029231))

(declare-fun m!1029233 () Bool)

(assert (=> b!1111294 m!1029233))

(declare-fun m!1029235 () Bool)

(assert (=> b!1111294 m!1029235))

(declare-fun m!1029237 () Bool)

(assert (=> mapNonEmpty!43303 m!1029237))

(declare-fun m!1029239 () Bool)

(assert (=> b!1111298 m!1029239))

(declare-fun m!1029241 () Bool)

(assert (=> b!1111296 m!1029241))

(declare-fun m!1029243 () Bool)

(assert (=> b!1111295 m!1029243))

(declare-fun m!1029245 () Bool)

(assert (=> b!1111295 m!1029245))

(declare-fun m!1029247 () Bool)

(assert (=> b!1111304 m!1029247))

(declare-fun m!1029249 () Bool)

(assert (=> start!97462 m!1029249))

(declare-fun m!1029251 () Bool)

(assert (=> start!97462 m!1029251))

(declare-fun m!1029253 () Bool)

(assert (=> bm!46885 m!1029253))

(declare-fun m!1029255 () Bool)

(assert (=> b!1111299 m!1029255))

(declare-fun m!1029257 () Bool)

(assert (=> b!1111297 m!1029257))

(declare-fun m!1029259 () Bool)

(assert (=> b!1111307 m!1029259))

(declare-fun m!1029261 () Bool)

(assert (=> bm!46886 m!1029261))

(declare-fun m!1029263 () Bool)

(assert (=> bm!46886 m!1029263))

(declare-fun m!1029265 () Bool)

(assert (=> bm!46886 m!1029265))

(declare-fun m!1029267 () Bool)

(assert (=> b!1111301 m!1029267))

(check-sat (not b!1111294) (not b!1111304) (not b_lambda!18453) (not b!1111298) (not b!1111297) (not b!1111308) (not bm!46885) (not b!1111299) (not b!1111295) (not bm!46886) tp_is_empty!27657 (not start!97462) (not mapNonEmpty!43303) (not b!1111301) b_and!37653 (not b_next!23397) (not b!1111307))
(check-sat b_and!37653 (not b_next!23397))

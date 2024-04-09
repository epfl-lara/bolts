; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98044 () Bool)

(assert start!98044)

(declare-fun b_free!23709 () Bool)

(declare-fun b_next!23709 () Bool)

(assert (=> start!98044 (= b_free!23709 (not b_next!23709))))

(declare-fun tp!83831 () Bool)

(declare-fun b_and!38223 () Bool)

(assert (=> start!98044 (= tp!83831 b_and!38223)))

(declare-fun b!1124300 () Bool)

(declare-fun e!640071 () Bool)

(declare-fun tp_is_empty!28239 () Bool)

(assert (=> b!1124300 (= e!640071 tp_is_empty!28239)))

(declare-datatypes ((V!42779 0))(
  ( (V!42780 (val!14176 Int)) )
))
(declare-fun zeroValue!944 () V!42779)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!17886 0))(
  ( (tuple2!17887 (_1!8953 (_ BitVec 64)) (_2!8953 V!42779)) )
))
(declare-datatypes ((List!24718 0))(
  ( (Nil!24715) (Cons!24714 (h!25923 tuple2!17886) (t!35426 List!24718)) )
))
(declare-datatypes ((ListLongMap!15867 0))(
  ( (ListLongMap!15868 (toList!7949 List!24718)) )
))
(declare-fun call!47411 () ListLongMap!15867)

(declare-fun minValue!944 () V!42779)

(declare-fun bm!47407 () Bool)

(declare-datatypes ((ValueCell!13410 0))(
  ( (ValueCellFull!13410 (v!16810 V!42779)) (EmptyCell!13410) )
))
(declare-datatypes ((array!73302 0))(
  ( (array!73303 (arr!35300 (Array (_ BitVec 32) ValueCell!13410)) (size!35837 (_ BitVec 32))) )
))
(declare-fun lt!499394 () array!73302)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((array!73304 0))(
  ( (array!73305 (arr!35301 (Array (_ BitVec 32) (_ BitVec 64))) (size!35838 (_ BitVec 32))) )
))
(declare-fun lt!499395 () array!73304)

(declare-fun getCurrentListMapNoExtraKeys!4408 (array!73304 array!73302 (_ BitVec 32) (_ BitVec 32) V!42779 V!42779 (_ BitVec 32) Int) ListLongMap!15867)

(assert (=> bm!47407 (= call!47411 (getCurrentListMapNoExtraKeys!4408 lt!499395 lt!499394 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124301 () Bool)

(declare-fun e!640073 () Bool)

(declare-fun e!640070 () Bool)

(assert (=> b!1124301 (= e!640073 e!640070)))

(declare-fun res!751274 () Bool)

(assert (=> b!1124301 (=> res!751274 e!640070)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1124301 (= res!751274 (not (= from!1455 i!673)))))

(declare-fun lt!499399 () ListLongMap!15867)

(assert (=> b!1124301 (= lt!499399 (getCurrentListMapNoExtraKeys!4408 lt!499395 lt!499394 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73302)

(declare-fun dynLambda!2498 (Int (_ BitVec 64)) V!42779)

(assert (=> b!1124301 (= lt!499394 (array!73303 (store (arr!35300 _values!996) i!673 (ValueCellFull!13410 (dynLambda!2498 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35837 _values!996)))))

(declare-fun _keys!1208 () array!73304)

(declare-fun lt!499397 () ListLongMap!15867)

(assert (=> b!1124301 (= lt!499397 (getCurrentListMapNoExtraKeys!4408 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1124302 () Bool)

(declare-fun e!640075 () Bool)

(declare-fun call!47410 () ListLongMap!15867)

(assert (=> b!1124302 (= e!640075 (= call!47411 call!47410))))

(declare-fun b!1124303 () Bool)

(declare-fun res!751283 () Bool)

(declare-fun e!640068 () Bool)

(assert (=> b!1124303 (=> res!751283 e!640068)))

(assert (=> b!1124303 (= res!751283 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1124304 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1100 (ListLongMap!15867 (_ BitVec 64)) ListLongMap!15867)

(assert (=> b!1124304 (= e!640075 (= call!47411 (-!1100 call!47410 k0!934)))))

(declare-fun b!1124305 () Bool)

(declare-fun e!640072 () Bool)

(assert (=> b!1124305 (= e!640072 tp_is_empty!28239)))

(declare-fun b!1124306 () Bool)

(declare-fun res!751279 () Bool)

(declare-fun e!640067 () Bool)

(assert (=> b!1124306 (=> (not res!751279) (not e!640067))))

(assert (=> b!1124306 (= res!751279 (= (select (arr!35301 _keys!1208) i!673) k0!934))))

(declare-fun b!1124307 () Bool)

(declare-fun res!751284 () Bool)

(assert (=> b!1124307 (=> (not res!751284) (not e!640067))))

(assert (=> b!1124307 (= res!751284 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35838 _keys!1208))))))

(declare-fun b!1124308 () Bool)

(declare-fun res!751280 () Bool)

(assert (=> b!1124308 (=> (not res!751280) (not e!640067))))

(declare-datatypes ((List!24719 0))(
  ( (Nil!24716) (Cons!24715 (h!25924 (_ BitVec 64)) (t!35427 List!24719)) )
))
(declare-fun arrayNoDuplicates!0 (array!73304 (_ BitVec 32) List!24719) Bool)

(assert (=> b!1124308 (= res!751280 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24716))))

(declare-fun b!1124309 () Bool)

(declare-fun e!640074 () Bool)

(declare-fun mapRes!44176 () Bool)

(assert (=> b!1124309 (= e!640074 (and e!640071 mapRes!44176))))

(declare-fun condMapEmpty!44176 () Bool)

(declare-fun mapDefault!44176 () ValueCell!13410)

(assert (=> b!1124309 (= condMapEmpty!44176 (= (arr!35300 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13410)) mapDefault!44176)))))

(declare-fun b!1124310 () Bool)

(declare-fun e!640066 () Bool)

(assert (=> b!1124310 (= e!640067 e!640066)))

(declare-fun res!751271 () Bool)

(assert (=> b!1124310 (=> (not res!751271) (not e!640066))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73304 (_ BitVec 32)) Bool)

(assert (=> b!1124310 (= res!751271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499395 mask!1564))))

(assert (=> b!1124310 (= lt!499395 (array!73305 (store (arr!35301 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35838 _keys!1208)))))

(declare-fun mapNonEmpty!44176 () Bool)

(declare-fun tp!83832 () Bool)

(assert (=> mapNonEmpty!44176 (= mapRes!44176 (and tp!83832 e!640072))))

(declare-fun mapKey!44176 () (_ BitVec 32))

(declare-fun mapValue!44176 () ValueCell!13410)

(declare-fun mapRest!44176 () (Array (_ BitVec 32) ValueCell!13410))

(assert (=> mapNonEmpty!44176 (= (arr!35300 _values!996) (store mapRest!44176 mapKey!44176 mapValue!44176))))

(declare-fun b!1124311 () Bool)

(declare-fun res!751275 () Bool)

(assert (=> b!1124311 (=> (not res!751275) (not e!640067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1124311 (= res!751275 (validMask!0 mask!1564))))

(declare-fun res!751282 () Bool)

(assert (=> start!98044 (=> (not res!751282) (not e!640067))))

(assert (=> start!98044 (= res!751282 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35838 _keys!1208))))))

(assert (=> start!98044 e!640067))

(assert (=> start!98044 tp_is_empty!28239))

(declare-fun array_inv!26970 (array!73304) Bool)

(assert (=> start!98044 (array_inv!26970 _keys!1208)))

(assert (=> start!98044 true))

(assert (=> start!98044 tp!83831))

(declare-fun array_inv!26971 (array!73302) Bool)

(assert (=> start!98044 (and (array_inv!26971 _values!996) e!640074)))

(declare-fun b!1124312 () Bool)

(declare-fun e!640076 () Bool)

(assert (=> b!1124312 (= e!640070 e!640076)))

(declare-fun res!751272 () Bool)

(assert (=> b!1124312 (=> res!751272 e!640076)))

(assert (=> b!1124312 (= res!751272 (not (= (select (arr!35301 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1124312 e!640075))

(declare-fun c!109514 () Bool)

(assert (=> b!1124312 (= c!109514 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36797 0))(
  ( (Unit!36798) )
))
(declare-fun lt!499401 () Unit!36797)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!355 (array!73304 array!73302 (_ BitVec 32) (_ BitVec 32) V!42779 V!42779 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36797)

(assert (=> b!1124312 (= lt!499401 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!355 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124313 () Bool)

(declare-fun res!751281 () Bool)

(assert (=> b!1124313 (=> (not res!751281) (not e!640067))))

(assert (=> b!1124313 (= res!751281 (and (= (size!35837 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35838 _keys!1208) (size!35837 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1124314 () Bool)

(declare-fun res!751270 () Bool)

(assert (=> b!1124314 (=> (not res!751270) (not e!640066))))

(assert (=> b!1124314 (= res!751270 (arrayNoDuplicates!0 lt!499395 #b00000000000000000000000000000000 Nil!24716))))

(declare-fun b!1124315 () Bool)

(assert (=> b!1124315 (= e!640076 e!640068)))

(declare-fun res!751277 () Bool)

(assert (=> b!1124315 (=> res!751277 e!640068)))

(declare-fun lt!499398 () ListLongMap!15867)

(declare-fun contains!6460 (ListLongMap!15867 (_ BitVec 64)) Bool)

(assert (=> b!1124315 (= res!751277 (not (contains!6460 lt!499398 k0!934)))))

(assert (=> b!1124315 (= lt!499398 (getCurrentListMapNoExtraKeys!4408 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44176 () Bool)

(assert (=> mapIsEmpty!44176 mapRes!44176))

(declare-fun b!1124316 () Bool)

(declare-fun res!751276 () Bool)

(assert (=> b!1124316 (=> (not res!751276) (not e!640067))))

(assert (=> b!1124316 (= res!751276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1124317 () Bool)

(assert (=> b!1124317 (= e!640068 true)))

(declare-fun +!3378 (ListLongMap!15867 tuple2!17886) ListLongMap!15867)

(assert (=> b!1124317 (contains!6460 (+!3378 lt!499398 (tuple2!17887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934)))

(declare-fun lt!499396 () Unit!36797)

(declare-fun addStillContains!677 (ListLongMap!15867 (_ BitVec 64) V!42779 (_ BitVec 64)) Unit!36797)

(assert (=> b!1124317 (= lt!499396 (addStillContains!677 lt!499398 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun b!1124318 () Bool)

(declare-fun res!751278 () Bool)

(assert (=> b!1124318 (=> (not res!751278) (not e!640067))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1124318 (= res!751278 (validKeyInArray!0 k0!934))))

(declare-fun bm!47408 () Bool)

(assert (=> bm!47408 (= call!47410 (getCurrentListMapNoExtraKeys!4408 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124319 () Bool)

(assert (=> b!1124319 (= e!640066 (not e!640073))))

(declare-fun res!751273 () Bool)

(assert (=> b!1124319 (=> res!751273 e!640073)))

(assert (=> b!1124319 (= res!751273 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73304 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1124319 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!499400 () Unit!36797)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73304 (_ BitVec 64) (_ BitVec 32)) Unit!36797)

(assert (=> b!1124319 (= lt!499400 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!98044 res!751282) b!1124311))

(assert (= (and b!1124311 res!751275) b!1124313))

(assert (= (and b!1124313 res!751281) b!1124316))

(assert (= (and b!1124316 res!751276) b!1124308))

(assert (= (and b!1124308 res!751280) b!1124307))

(assert (= (and b!1124307 res!751284) b!1124318))

(assert (= (and b!1124318 res!751278) b!1124306))

(assert (= (and b!1124306 res!751279) b!1124310))

(assert (= (and b!1124310 res!751271) b!1124314))

(assert (= (and b!1124314 res!751270) b!1124319))

(assert (= (and b!1124319 (not res!751273)) b!1124301))

(assert (= (and b!1124301 (not res!751274)) b!1124312))

(assert (= (and b!1124312 c!109514) b!1124304))

(assert (= (and b!1124312 (not c!109514)) b!1124302))

(assert (= (or b!1124304 b!1124302) bm!47407))

(assert (= (or b!1124304 b!1124302) bm!47408))

(assert (= (and b!1124312 (not res!751272)) b!1124315))

(assert (= (and b!1124315 (not res!751277)) b!1124303))

(assert (= (and b!1124303 (not res!751283)) b!1124317))

(assert (= (and b!1124309 condMapEmpty!44176) mapIsEmpty!44176))

(assert (= (and b!1124309 (not condMapEmpty!44176)) mapNonEmpty!44176))

(get-info :version)

(assert (= (and mapNonEmpty!44176 ((_ is ValueCellFull!13410) mapValue!44176)) b!1124305))

(assert (= (and b!1124309 ((_ is ValueCellFull!13410) mapDefault!44176)) b!1124300))

(assert (= start!98044 b!1124309))

(declare-fun b_lambda!18713 () Bool)

(assert (=> (not b_lambda!18713) (not b!1124301)))

(declare-fun t!35425 () Bool)

(declare-fun tb!8529 () Bool)

(assert (=> (and start!98044 (= defaultEntry!1004 defaultEntry!1004) t!35425) tb!8529))

(declare-fun result!17611 () Bool)

(assert (=> tb!8529 (= result!17611 tp_is_empty!28239)))

(assert (=> b!1124301 t!35425))

(declare-fun b_and!38225 () Bool)

(assert (= b_and!38223 (and (=> t!35425 result!17611) b_and!38225)))

(declare-fun m!1038727 () Bool)

(assert (=> b!1124315 m!1038727))

(declare-fun m!1038729 () Bool)

(assert (=> b!1124315 m!1038729))

(declare-fun m!1038731 () Bool)

(assert (=> b!1124312 m!1038731))

(declare-fun m!1038733 () Bool)

(assert (=> b!1124312 m!1038733))

(declare-fun m!1038735 () Bool)

(assert (=> b!1124308 m!1038735))

(declare-fun m!1038737 () Bool)

(assert (=> b!1124314 m!1038737))

(declare-fun m!1038739 () Bool)

(assert (=> b!1124306 m!1038739))

(declare-fun m!1038741 () Bool)

(assert (=> b!1124316 m!1038741))

(declare-fun m!1038743 () Bool)

(assert (=> start!98044 m!1038743))

(declare-fun m!1038745 () Bool)

(assert (=> start!98044 m!1038745))

(assert (=> bm!47408 m!1038729))

(declare-fun m!1038747 () Bool)

(assert (=> b!1124304 m!1038747))

(declare-fun m!1038749 () Bool)

(assert (=> b!1124311 m!1038749))

(declare-fun m!1038751 () Bool)

(assert (=> b!1124319 m!1038751))

(declare-fun m!1038753 () Bool)

(assert (=> b!1124319 m!1038753))

(declare-fun m!1038755 () Bool)

(assert (=> b!1124301 m!1038755))

(declare-fun m!1038757 () Bool)

(assert (=> b!1124301 m!1038757))

(declare-fun m!1038759 () Bool)

(assert (=> b!1124301 m!1038759))

(declare-fun m!1038761 () Bool)

(assert (=> b!1124301 m!1038761))

(declare-fun m!1038763 () Bool)

(assert (=> b!1124310 m!1038763))

(declare-fun m!1038765 () Bool)

(assert (=> b!1124310 m!1038765))

(declare-fun m!1038767 () Bool)

(assert (=> bm!47407 m!1038767))

(declare-fun m!1038769 () Bool)

(assert (=> b!1124317 m!1038769))

(assert (=> b!1124317 m!1038769))

(declare-fun m!1038771 () Bool)

(assert (=> b!1124317 m!1038771))

(declare-fun m!1038773 () Bool)

(assert (=> b!1124317 m!1038773))

(declare-fun m!1038775 () Bool)

(assert (=> mapNonEmpty!44176 m!1038775))

(declare-fun m!1038777 () Bool)

(assert (=> b!1124318 m!1038777))

(check-sat (not b!1124312) (not b!1124315) (not mapNonEmpty!44176) (not b_lambda!18713) (not bm!47407) (not start!98044) (not b!1124308) (not b!1124316) tp_is_empty!28239 (not b_next!23709) b_and!38225 (not b!1124304) (not b!1124318) (not b!1124314) (not b!1124319) (not b!1124301) (not bm!47408) (not b!1124311) (not b!1124310) (not b!1124317))
(check-sat b_and!38225 (not b_next!23709))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98656 () Bool)

(assert start!98656)

(declare-fun b_free!24225 () Bool)

(declare-fun b_next!24225 () Bool)

(assert (=> start!98656 (= b_free!24225 (not b_next!24225))))

(declare-fun tp!85386 () Bool)

(declare-fun b_and!39313 () Bool)

(assert (=> start!98656 (= tp!85386 b_and!39313)))

(declare-fun bm!52238 () Bool)

(declare-datatypes ((Unit!37530 0))(
  ( (Unit!37531) )
))
(declare-fun call!52242 () Unit!37530)

(declare-fun call!52247 () Unit!37530)

(assert (=> bm!52238 (= call!52242 call!52247)))

(declare-fun b!1145298 () Bool)

(declare-fun res!762788 () Bool)

(declare-fun e!651532 () Bool)

(assert (=> b!1145298 (=> (not res!762788) (not e!651532))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!74316 0))(
  ( (array!74317 (arr!35805 (Array (_ BitVec 32) (_ BitVec 64))) (size!36342 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74316)

(assert (=> b!1145298 (= res!762788 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36342 _keys!1208))))))

(declare-fun b!1145299 () Bool)

(declare-fun e!651530 () Bool)

(declare-fun e!651539 () Bool)

(assert (=> b!1145299 (= e!651530 (not e!651539))))

(declare-fun res!762779 () Bool)

(assert (=> b!1145299 (=> res!762779 e!651539)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1145299 (= res!762779 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!74316 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1145299 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!511225 () Unit!37530)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74316 (_ BitVec 64) (_ BitVec 32)) Unit!37530)

(assert (=> b!1145299 (= lt!511225 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1145300 () Bool)

(declare-fun e!651531 () Unit!37530)

(declare-fun Unit!37532 () Unit!37530)

(assert (=> b!1145300 (= e!651531 Unit!37532)))

(declare-fun b!1145301 () Bool)

(declare-fun res!762787 () Bool)

(assert (=> b!1145301 (=> (not res!762787) (not e!651532))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1145301 (= res!762787 (validKeyInArray!0 k0!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((V!43467 0))(
  ( (V!43468 (val!14434 Int)) )
))
(declare-datatypes ((tuple2!18364 0))(
  ( (tuple2!18365 (_1!9192 (_ BitVec 64)) (_2!9192 V!43467)) )
))
(declare-datatypes ((List!25163 0))(
  ( (Nil!25160) (Cons!25159 (h!26368 tuple2!18364) (t!36387 List!25163)) )
))
(declare-datatypes ((ListLongMap!16345 0))(
  ( (ListLongMap!16346 (toList!8188 List!25163)) )
))
(declare-fun call!52241 () ListLongMap!16345)

(declare-fun lt!511232 () array!74316)

(declare-fun minValue!944 () V!43467)

(declare-datatypes ((ValueCell!13668 0))(
  ( (ValueCellFull!13668 (v!17072 V!43467)) (EmptyCell!13668) )
))
(declare-datatypes ((array!74318 0))(
  ( (array!74319 (arr!35806 (Array (_ BitVec 32) ValueCell!13668)) (size!36343 (_ BitVec 32))) )
))
(declare-fun lt!511245 () array!74318)

(declare-fun zeroValue!944 () V!43467)

(declare-fun bm!52239 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4630 (array!74316 array!74318 (_ BitVec 32) (_ BitVec 32) V!43467 V!43467 (_ BitVec 32) Int) ListLongMap!16345)

(assert (=> bm!52239 (= call!52241 (getCurrentListMapNoExtraKeys!4630 lt!511232 lt!511245 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!511234 () ListLongMap!16345)

(declare-fun lt!511231 () ListLongMap!16345)

(declare-fun e!651529 () Bool)

(declare-fun b!1145302 () Bool)

(declare-fun -!1280 (ListLongMap!16345 (_ BitVec 64)) ListLongMap!16345)

(assert (=> b!1145302 (= e!651529 (= (-!1280 lt!511231 k0!934) lt!511234))))

(declare-fun call!52245 () ListLongMap!16345)

(declare-fun bm!52240 () Bool)

(declare-fun _values!996 () array!74318)

(assert (=> bm!52240 (= call!52245 (getCurrentListMapNoExtraKeys!4630 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145303 () Bool)

(declare-fun res!762782 () Bool)

(assert (=> b!1145303 (=> (not res!762782) (not e!651532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1145303 (= res!762782 (validMask!0 mask!1564))))

(declare-fun bm!52241 () Bool)

(declare-fun call!52243 () Bool)

(declare-fun call!52244 () Bool)

(assert (=> bm!52241 (= call!52243 call!52244)))

(declare-fun b!1145304 () Bool)

(declare-fun e!651526 () Bool)

(declare-fun tp_is_empty!28755 () Bool)

(assert (=> b!1145304 (= e!651526 tp_is_empty!28755)))

(declare-fun c!112833 () Bool)

(declare-fun bm!52242 () Bool)

(declare-fun c!112831 () Bool)

(declare-fun addStillContains!829 (ListLongMap!16345 (_ BitVec 64) V!43467 (_ BitVec 64)) Unit!37530)

(assert (=> bm!52242 (= call!52247 (addStillContains!829 lt!511234 (ite (or c!112831 c!112833) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!112831 c!112833) zeroValue!944 minValue!944) k0!934))))

(declare-fun res!762780 () Bool)

(assert (=> start!98656 (=> (not res!762780) (not e!651532))))

(assert (=> start!98656 (= res!762780 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36342 _keys!1208))))))

(assert (=> start!98656 e!651532))

(assert (=> start!98656 tp_is_empty!28755))

(declare-fun array_inv!27314 (array!74316) Bool)

(assert (=> start!98656 (array_inv!27314 _keys!1208)))

(assert (=> start!98656 true))

(assert (=> start!98656 tp!85386))

(declare-fun e!651524 () Bool)

(declare-fun array_inv!27315 (array!74318) Bool)

(assert (=> start!98656 (and (array_inv!27315 _values!996) e!651524)))

(declare-fun b!1145305 () Bool)

(declare-fun e!651525 () Bool)

(assert (=> b!1145305 (= e!651525 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1145306 () Bool)

(declare-fun lt!511228 () Bool)

(assert (=> b!1145306 (= c!112833 (and (not lt!511228) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!651536 () Unit!37530)

(declare-fun e!651528 () Unit!37530)

(assert (=> b!1145306 (= e!651536 e!651528)))

(declare-fun b!1145307 () Bool)

(declare-fun res!762785 () Bool)

(assert (=> b!1145307 (=> (not res!762785) (not e!651532))))

(assert (=> b!1145307 (= res!762785 (and (= (size!36343 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36342 _keys!1208) (size!36343 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1145308 () Bool)

(declare-fun e!651537 () Unit!37530)

(assert (=> b!1145308 (= e!651528 e!651537)))

(declare-fun c!112836 () Bool)

(assert (=> b!1145308 (= c!112836 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!511228))))

(declare-fun b!1145309 () Bool)

(declare-fun e!651527 () Bool)

(declare-fun e!651538 () Bool)

(assert (=> b!1145309 (= e!651527 e!651538)))

(declare-fun res!762776 () Bool)

(assert (=> b!1145309 (=> res!762776 e!651538)))

(assert (=> b!1145309 (= res!762776 (not (= (select (arr!35805 _keys!1208) from!1455) k0!934)))))

(declare-fun e!651534 () Bool)

(assert (=> b!1145309 e!651534))

(declare-fun c!112834 () Bool)

(assert (=> b!1145309 (= c!112834 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!511230 () Unit!37530)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!533 (array!74316 array!74318 (_ BitVec 32) (_ BitVec 32) V!43467 V!43467 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37530)

(assert (=> b!1145309 (= lt!511230 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!533 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145310 () Bool)

(declare-fun res!762775 () Bool)

(assert (=> b!1145310 (=> (not res!762775) (not e!651530))))

(declare-datatypes ((List!25164 0))(
  ( (Nil!25161) (Cons!25160 (h!26369 (_ BitVec 64)) (t!36388 List!25164)) )
))
(declare-fun arrayNoDuplicates!0 (array!74316 (_ BitVec 32) List!25164) Bool)

(assert (=> b!1145310 (= res!762775 (arrayNoDuplicates!0 lt!511232 #b00000000000000000000000000000000 Nil!25161))))

(declare-fun b!1145311 () Bool)

(assert (=> b!1145311 call!52243))

(declare-fun lt!511243 () Unit!37530)

(assert (=> b!1145311 (= lt!511243 call!52242)))

(assert (=> b!1145311 (= e!651537 lt!511243)))

(declare-fun e!651540 () Bool)

(declare-fun b!1145312 () Bool)

(assert (=> b!1145312 (= e!651540 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1145313 () Bool)

(assert (=> b!1145313 (= e!651532 e!651530)))

(declare-fun res!762783 () Bool)

(assert (=> b!1145313 (=> (not res!762783) (not e!651530))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74316 (_ BitVec 32)) Bool)

(assert (=> b!1145313 (= res!762783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!511232 mask!1564))))

(assert (=> b!1145313 (= lt!511232 (array!74317 (store (arr!35805 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36342 _keys!1208)))))

(declare-fun lt!511233 () ListLongMap!16345)

(declare-fun call!52248 () ListLongMap!16345)

(declare-fun bm!52243 () Bool)

(declare-fun contains!6689 (ListLongMap!16345 (_ BitVec 64)) Bool)

(assert (=> bm!52243 (= call!52244 (contains!6689 (ite c!112831 lt!511233 call!52248) k0!934))))

(declare-fun b!1145314 () Bool)

(declare-fun e!651533 () Bool)

(assert (=> b!1145314 (= e!651533 tp_is_empty!28755)))

(declare-fun b!1145315 () Bool)

(declare-fun Unit!37533 () Unit!37530)

(assert (=> b!1145315 (= e!651531 Unit!37533)))

(assert (=> b!1145315 (= lt!511228 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1145315 (= c!112831 (and (not lt!511228) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!511227 () Unit!37530)

(assert (=> b!1145315 (= lt!511227 e!651536)))

(declare-fun lt!511226 () Unit!37530)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!423 (array!74316 array!74318 (_ BitVec 32) (_ BitVec 32) V!43467 V!43467 (_ BitVec 64) (_ BitVec 32) Int) Unit!37530)

(assert (=> b!1145315 (= lt!511226 (lemmaListMapContainsThenArrayContainsFrom!423 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112832 () Bool)

(assert (=> b!1145315 (= c!112832 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!762774 () Bool)

(assert (=> b!1145315 (= res!762774 e!651540)))

(assert (=> b!1145315 (=> (not res!762774) (not e!651525))))

(assert (=> b!1145315 e!651525))

(declare-fun lt!511237 () Unit!37530)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74316 (_ BitVec 32) (_ BitVec 32)) Unit!37530)

(assert (=> b!1145315 (= lt!511237 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1145315 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25161)))

(declare-fun lt!511242 () Unit!37530)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74316 (_ BitVec 64) (_ BitVec 32) List!25164) Unit!37530)

(assert (=> b!1145315 (= lt!511242 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25161))))

(assert (=> b!1145315 false))

(declare-fun b!1145316 () Bool)

(declare-fun mapRes!44957 () Bool)

(assert (=> b!1145316 (= e!651524 (and e!651526 mapRes!44957))))

(declare-fun condMapEmpty!44957 () Bool)

(declare-fun mapDefault!44957 () ValueCell!13668)

(assert (=> b!1145316 (= condMapEmpty!44957 (= (arr!35806 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13668)) mapDefault!44957)))))

(declare-fun b!1145317 () Bool)

(assert (=> b!1145317 (= e!651534 (= call!52241 call!52245))))

(declare-fun b!1145318 () Bool)

(declare-fun lt!511238 () Unit!37530)

(assert (=> b!1145318 (= e!651528 lt!511238)))

(assert (=> b!1145318 (= lt!511238 call!52242)))

(assert (=> b!1145318 call!52243))

(declare-fun b!1145319 () Bool)

(declare-fun res!762784 () Bool)

(assert (=> b!1145319 (=> (not res!762784) (not e!651532))))

(assert (=> b!1145319 (= res!762784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1145320 () Bool)

(assert (=> b!1145320 (= e!651540 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!511228) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1145321 () Bool)

(assert (=> b!1145321 (= e!651538 true)))

(assert (=> b!1145321 e!651529))

(declare-fun res!762777 () Bool)

(assert (=> b!1145321 (=> (not res!762777) (not e!651529))))

(declare-fun lt!511235 () V!43467)

(declare-fun +!3531 (ListLongMap!16345 tuple2!18364) ListLongMap!16345)

(assert (=> b!1145321 (= res!762777 (= (-!1280 (+!3531 lt!511234 (tuple2!18365 (select (arr!35805 _keys!1208) from!1455) lt!511235)) (select (arr!35805 _keys!1208) from!1455)) lt!511234))))

(declare-fun lt!511240 () Unit!37530)

(declare-fun addThenRemoveForNewKeyIsSame!135 (ListLongMap!16345 (_ BitVec 64) V!43467) Unit!37530)

(assert (=> b!1145321 (= lt!511240 (addThenRemoveForNewKeyIsSame!135 lt!511234 (select (arr!35805 _keys!1208) from!1455) lt!511235))))

(declare-fun lt!511236 () V!43467)

(declare-fun get!18231 (ValueCell!13668 V!43467) V!43467)

(assert (=> b!1145321 (= lt!511235 (get!18231 (select (arr!35806 _values!996) from!1455) lt!511236))))

(declare-fun lt!511241 () Unit!37530)

(assert (=> b!1145321 (= lt!511241 e!651531)))

(declare-fun c!112835 () Bool)

(assert (=> b!1145321 (= c!112835 (contains!6689 lt!511234 k0!934))))

(assert (=> b!1145321 (= lt!511234 (getCurrentListMapNoExtraKeys!4630 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44957 () Bool)

(assert (=> mapIsEmpty!44957 mapRes!44957))

(declare-fun mapNonEmpty!44957 () Bool)

(declare-fun tp!85387 () Bool)

(assert (=> mapNonEmpty!44957 (= mapRes!44957 (and tp!85387 e!651533))))

(declare-fun mapValue!44957 () ValueCell!13668)

(declare-fun mapKey!44957 () (_ BitVec 32))

(declare-fun mapRest!44957 () (Array (_ BitVec 32) ValueCell!13668))

(assert (=> mapNonEmpty!44957 (= (arr!35806 _values!996) (store mapRest!44957 mapKey!44957 mapValue!44957))))

(declare-fun b!1145322 () Bool)

(declare-fun call!52246 () ListLongMap!16345)

(assert (=> b!1145322 (contains!6689 call!52246 k0!934)))

(declare-fun lt!511244 () Unit!37530)

(assert (=> b!1145322 (= lt!511244 (addStillContains!829 lt!511233 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1145322 call!52244))

(assert (=> b!1145322 (= lt!511233 (+!3531 lt!511234 (tuple2!18365 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!511229 () Unit!37530)

(assert (=> b!1145322 (= lt!511229 call!52247)))

(assert (=> b!1145322 (= e!651536 lt!511244)))

(declare-fun b!1145323 () Bool)

(declare-fun Unit!37534 () Unit!37530)

(assert (=> b!1145323 (= e!651537 Unit!37534)))

(declare-fun b!1145324 () Bool)

(assert (=> b!1145324 (= e!651534 (= call!52241 (-!1280 call!52245 k0!934)))))

(declare-fun bm!52244 () Bool)

(assert (=> bm!52244 (= call!52246 (+!3531 (ite c!112831 lt!511233 lt!511234) (ite c!112831 (tuple2!18365 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112833 (tuple2!18365 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18365 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1145325 () Bool)

(declare-fun res!762781 () Bool)

(assert (=> b!1145325 (=> (not res!762781) (not e!651532))))

(assert (=> b!1145325 (= res!762781 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25161))))

(declare-fun b!1145326 () Bool)

(declare-fun res!762786 () Bool)

(assert (=> b!1145326 (=> (not res!762786) (not e!651532))))

(assert (=> b!1145326 (= res!762786 (= (select (arr!35805 _keys!1208) i!673) k0!934))))

(declare-fun b!1145327 () Bool)

(assert (=> b!1145327 (= e!651539 e!651527)))

(declare-fun res!762778 () Bool)

(assert (=> b!1145327 (=> res!762778 e!651527)))

(assert (=> b!1145327 (= res!762778 (not (= from!1455 i!673)))))

(declare-fun lt!511239 () ListLongMap!16345)

(assert (=> b!1145327 (= lt!511239 (getCurrentListMapNoExtraKeys!4630 lt!511232 lt!511245 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1145327 (= lt!511245 (array!74319 (store (arr!35806 _values!996) i!673 (ValueCellFull!13668 lt!511236)) (size!36343 _values!996)))))

(declare-fun dynLambda!2674 (Int (_ BitVec 64)) V!43467)

(assert (=> b!1145327 (= lt!511236 (dynLambda!2674 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1145327 (= lt!511231 (getCurrentListMapNoExtraKeys!4630 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!52245 () Bool)

(assert (=> bm!52245 (= call!52248 call!52246)))

(assert (= (and start!98656 res!762780) b!1145303))

(assert (= (and b!1145303 res!762782) b!1145307))

(assert (= (and b!1145307 res!762785) b!1145319))

(assert (= (and b!1145319 res!762784) b!1145325))

(assert (= (and b!1145325 res!762781) b!1145298))

(assert (= (and b!1145298 res!762788) b!1145301))

(assert (= (and b!1145301 res!762787) b!1145326))

(assert (= (and b!1145326 res!762786) b!1145313))

(assert (= (and b!1145313 res!762783) b!1145310))

(assert (= (and b!1145310 res!762775) b!1145299))

(assert (= (and b!1145299 (not res!762779)) b!1145327))

(assert (= (and b!1145327 (not res!762778)) b!1145309))

(assert (= (and b!1145309 c!112834) b!1145324))

(assert (= (and b!1145309 (not c!112834)) b!1145317))

(assert (= (or b!1145324 b!1145317) bm!52239))

(assert (= (or b!1145324 b!1145317) bm!52240))

(assert (= (and b!1145309 (not res!762776)) b!1145321))

(assert (= (and b!1145321 c!112835) b!1145315))

(assert (= (and b!1145321 (not c!112835)) b!1145300))

(assert (= (and b!1145315 c!112831) b!1145322))

(assert (= (and b!1145315 (not c!112831)) b!1145306))

(assert (= (and b!1145306 c!112833) b!1145318))

(assert (= (and b!1145306 (not c!112833)) b!1145308))

(assert (= (and b!1145308 c!112836) b!1145311))

(assert (= (and b!1145308 (not c!112836)) b!1145323))

(assert (= (or b!1145318 b!1145311) bm!52238))

(assert (= (or b!1145318 b!1145311) bm!52245))

(assert (= (or b!1145318 b!1145311) bm!52241))

(assert (= (or b!1145322 bm!52241) bm!52243))

(assert (= (or b!1145322 bm!52238) bm!52242))

(assert (= (or b!1145322 bm!52245) bm!52244))

(assert (= (and b!1145315 c!112832) b!1145312))

(assert (= (and b!1145315 (not c!112832)) b!1145320))

(assert (= (and b!1145315 res!762774) b!1145305))

(assert (= (and b!1145321 res!762777) b!1145302))

(assert (= (and b!1145316 condMapEmpty!44957) mapIsEmpty!44957))

(assert (= (and b!1145316 (not condMapEmpty!44957)) mapNonEmpty!44957))

(get-info :version)

(assert (= (and mapNonEmpty!44957 ((_ is ValueCellFull!13668) mapValue!44957)) b!1145314))

(assert (= (and b!1145316 ((_ is ValueCellFull!13668) mapDefault!44957)) b!1145304))

(assert (= start!98656 b!1145316))

(declare-fun b_lambda!19349 () Bool)

(assert (=> (not b_lambda!19349) (not b!1145327)))

(declare-fun t!36386 () Bool)

(declare-fun tb!9045 () Bool)

(assert (=> (and start!98656 (= defaultEntry!1004 defaultEntry!1004) t!36386) tb!9045))

(declare-fun result!18647 () Bool)

(assert (=> tb!9045 (= result!18647 tp_is_empty!28755)))

(assert (=> b!1145327 t!36386))

(declare-fun b_and!39315 () Bool)

(assert (= b_and!39313 (and (=> t!36386 result!18647) b_and!39315)))

(declare-fun m!1056251 () Bool)

(assert (=> bm!52240 m!1056251))

(declare-fun m!1056253 () Bool)

(assert (=> bm!52242 m!1056253))

(declare-fun m!1056255 () Bool)

(assert (=> b!1145315 m!1056255))

(declare-fun m!1056257 () Bool)

(assert (=> b!1145315 m!1056257))

(declare-fun m!1056259 () Bool)

(assert (=> b!1145315 m!1056259))

(declare-fun m!1056261 () Bool)

(assert (=> b!1145315 m!1056261))

(declare-fun m!1056263 () Bool)

(assert (=> b!1145302 m!1056263))

(declare-fun m!1056265 () Bool)

(assert (=> b!1145310 m!1056265))

(declare-fun m!1056267 () Bool)

(assert (=> start!98656 m!1056267))

(declare-fun m!1056269 () Bool)

(assert (=> start!98656 m!1056269))

(declare-fun m!1056271 () Bool)

(assert (=> b!1145322 m!1056271))

(declare-fun m!1056273 () Bool)

(assert (=> b!1145322 m!1056273))

(declare-fun m!1056275 () Bool)

(assert (=> b!1145322 m!1056275))

(declare-fun m!1056277 () Bool)

(assert (=> b!1145299 m!1056277))

(declare-fun m!1056279 () Bool)

(assert (=> b!1145299 m!1056279))

(declare-fun m!1056281 () Bool)

(assert (=> b!1145319 m!1056281))

(declare-fun m!1056283 () Bool)

(assert (=> b!1145309 m!1056283))

(declare-fun m!1056285 () Bool)

(assert (=> b!1145309 m!1056285))

(declare-fun m!1056287 () Bool)

(assert (=> b!1145326 m!1056287))

(declare-fun m!1056289 () Bool)

(assert (=> b!1145303 m!1056289))

(declare-fun m!1056291 () Bool)

(assert (=> mapNonEmpty!44957 m!1056291))

(declare-fun m!1056293 () Bool)

(assert (=> b!1145327 m!1056293))

(declare-fun m!1056295 () Bool)

(assert (=> b!1145327 m!1056295))

(declare-fun m!1056297 () Bool)

(assert (=> b!1145327 m!1056297))

(declare-fun m!1056299 () Bool)

(assert (=> b!1145327 m!1056299))

(declare-fun m!1056301 () Bool)

(assert (=> b!1145325 m!1056301))

(declare-fun m!1056303 () Bool)

(assert (=> b!1145305 m!1056303))

(declare-fun m!1056305 () Bool)

(assert (=> bm!52239 m!1056305))

(declare-fun m!1056307 () Bool)

(assert (=> b!1145301 m!1056307))

(declare-fun m!1056309 () Bool)

(assert (=> bm!52243 m!1056309))

(declare-fun m!1056311 () Bool)

(assert (=> b!1145324 m!1056311))

(declare-fun m!1056313 () Bool)

(assert (=> bm!52244 m!1056313))

(assert (=> b!1145321 m!1056251))

(declare-fun m!1056315 () Bool)

(assert (=> b!1145321 m!1056315))

(assert (=> b!1145321 m!1056283))

(declare-fun m!1056317 () Bool)

(assert (=> b!1145321 m!1056317))

(declare-fun m!1056319 () Bool)

(assert (=> b!1145321 m!1056319))

(assert (=> b!1145321 m!1056315))

(assert (=> b!1145321 m!1056319))

(declare-fun m!1056321 () Bool)

(assert (=> b!1145321 m!1056321))

(declare-fun m!1056323 () Bool)

(assert (=> b!1145321 m!1056323))

(assert (=> b!1145321 m!1056283))

(declare-fun m!1056325 () Bool)

(assert (=> b!1145321 m!1056325))

(assert (=> b!1145321 m!1056283))

(assert (=> b!1145312 m!1056303))

(declare-fun m!1056327 () Bool)

(assert (=> b!1145313 m!1056327))

(declare-fun m!1056329 () Bool)

(assert (=> b!1145313 m!1056329))

(check-sat (not mapNonEmpty!44957) (not b!1145302) (not bm!52242) (not b_lambda!19349) (not b!1145312) (not bm!52240) b_and!39315 (not b!1145325) (not b!1145319) (not bm!52244) tp_is_empty!28755 (not b!1145301) (not b!1145321) (not b_next!24225) (not b!1145322) (not b!1145324) (not b!1145305) (not b!1145313) (not b!1145310) (not start!98656) (not b!1145315) (not b!1145299) (not b!1145303) (not bm!52239) (not b!1145309) (not b!1145327) (not bm!52243))
(check-sat b_and!39315 (not b_next!24225))

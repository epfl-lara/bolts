; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98500 () Bool)

(assert start!98500)

(declare-fun b_free!24069 () Bool)

(declare-fun b_next!24069 () Bool)

(assert (=> start!98500 (= b_free!24069 (not b_next!24069))))

(declare-fun tp!84919 () Bool)

(declare-fun b_and!39001 () Bool)

(assert (=> start!98500 (= tp!84919 b_and!39001)))

(declare-datatypes ((V!43259 0))(
  ( (V!43260 (val!14356 Int)) )
))
(declare-fun zeroValue!944 () V!43259)

(declare-datatypes ((array!74016 0))(
  ( (array!74017 (arr!35655 (Array (_ BitVec 32) (_ BitVec 64))) (size!36192 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74016)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!50366 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18228 0))(
  ( (tuple2!18229 (_1!9124 (_ BitVec 64)) (_2!9124 V!43259)) )
))
(declare-datatypes ((List!25033 0))(
  ( (Nil!25030) (Cons!25029 (h!26238 tuple2!18228) (t!36101 List!25033)) )
))
(declare-datatypes ((ListLongMap!16209 0))(
  ( (ListLongMap!16210 (toList!8120 List!25033)) )
))
(declare-fun call!50371 () ListLongMap!16209)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13590 0))(
  ( (ValueCellFull!13590 (v!16994 V!43259)) (EmptyCell!13590) )
))
(declare-datatypes ((array!74018 0))(
  ( (array!74019 (arr!35656 (Array (_ BitVec 32) ValueCell!13590)) (size!36193 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74018)

(declare-fun minValue!944 () V!43259)

(declare-fun getCurrentListMapNoExtraKeys!4567 (array!74016 array!74018 (_ BitVec 32) (_ BitVec 32) V!43259 V!43259 (_ BitVec 32) Int) ListLongMap!16209)

(assert (=> bm!50366 (= call!50371 (getCurrentListMapNoExtraKeys!4567 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44723 () Bool)

(declare-fun mapRes!44723 () Bool)

(declare-fun tp!84918 () Bool)

(declare-fun e!647754 () Bool)

(assert (=> mapNonEmpty!44723 (= mapRes!44723 (and tp!84918 e!647754))))

(declare-fun mapKey!44723 () (_ BitVec 32))

(declare-fun mapRest!44723 () (Array (_ BitVec 32) ValueCell!13590))

(declare-fun mapValue!44723 () ValueCell!13590)

(assert (=> mapNonEmpty!44723 (= (arr!35656 _values!996) (store mapRest!44723 mapKey!44723 mapValue!44723))))

(declare-fun b!1138315 () Bool)

(declare-fun e!647742 () Bool)

(declare-fun tp_is_empty!28599 () Bool)

(assert (=> b!1138315 (= e!647742 tp_is_empty!28599)))

(declare-fun b!1138316 () Bool)

(declare-fun e!647745 () Bool)

(declare-fun e!647749 () Bool)

(assert (=> b!1138316 (= e!647745 e!647749)))

(declare-fun res!759463 () Bool)

(assert (=> b!1138316 (=> res!759463 e!647749)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1138316 (= res!759463 (not (= from!1455 i!673)))))

(declare-fun lt!506405 () array!74018)

(declare-fun lt!506407 () ListLongMap!16209)

(declare-fun lt!506404 () array!74016)

(assert (=> b!1138316 (= lt!506407 (getCurrentListMapNoExtraKeys!4567 lt!506404 lt!506405 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2626 (Int (_ BitVec 64)) V!43259)

(assert (=> b!1138316 (= lt!506405 (array!74019 (store (arr!35656 _values!996) i!673 (ValueCellFull!13590 (dynLambda!2626 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36193 _values!996)))))

(declare-fun lt!506408 () ListLongMap!16209)

(assert (=> b!1138316 (= lt!506408 (getCurrentListMapNoExtraKeys!4567 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1138317 () Bool)

(declare-fun call!50374 () ListLongMap!16209)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6630 (ListLongMap!16209 (_ BitVec 64)) Bool)

(assert (=> b!1138317 (contains!6630 call!50374 k0!934)))

(declare-datatypes ((Unit!37245 0))(
  ( (Unit!37246) )
))
(declare-fun lt!506401 () Unit!37245)

(declare-fun lt!506412 () ListLongMap!16209)

(declare-fun addStillContains!771 (ListLongMap!16209 (_ BitVec 64) V!43259 (_ BitVec 64)) Unit!37245)

(assert (=> b!1138317 (= lt!506401 (addStillContains!771 lt!506412 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!50372 () Bool)

(assert (=> b!1138317 call!50372))

(declare-fun lt!506395 () ListLongMap!16209)

(declare-fun +!3471 (ListLongMap!16209 tuple2!18228) ListLongMap!16209)

(assert (=> b!1138317 (= lt!506412 (+!3471 lt!506395 (tuple2!18229 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!506410 () Unit!37245)

(declare-fun call!50375 () Unit!37245)

(assert (=> b!1138317 (= lt!506410 call!50375)))

(declare-fun e!647739 () Unit!37245)

(assert (=> b!1138317 (= e!647739 lt!506401)))

(declare-fun b!1138318 () Bool)

(declare-fun e!647746 () Bool)

(assert (=> b!1138318 (= e!647749 e!647746)))

(declare-fun res!759458 () Bool)

(assert (=> b!1138318 (=> res!759458 e!647746)))

(assert (=> b!1138318 (= res!759458 (not (= (select (arr!35655 _keys!1208) from!1455) k0!934)))))

(declare-fun e!647740 () Bool)

(assert (=> b!1138318 e!647740))

(declare-fun c!111432 () Bool)

(assert (=> b!1138318 (= c!111432 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!506402 () Unit!37245)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!483 (array!74016 array!74018 (_ BitVec 32) (_ BitVec 32) V!43259 V!43259 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37245)

(assert (=> b!1138318 (= lt!506402 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!483 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138319 () Bool)

(declare-fun res!759461 () Bool)

(declare-fun e!647752 () Bool)

(assert (=> b!1138319 (=> (not res!759461) (not e!647752))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1138319 (= res!759461 (validMask!0 mask!1564))))

(declare-fun bm!50367 () Bool)

(declare-fun call!50370 () ListLongMap!16209)

(assert (=> bm!50367 (= call!50370 (getCurrentListMapNoExtraKeys!4567 lt!506404 lt!506405 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138321 () Bool)

(declare-fun e!647753 () Bool)

(declare-fun arrayContainsKey!0 (array!74016 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1138321 (= e!647753 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1138322 () Bool)

(assert (=> b!1138322 (= e!647754 tp_is_empty!28599)))

(declare-fun b!1138323 () Bool)

(declare-fun e!647750 () Bool)

(assert (=> b!1138323 (= e!647750 (not e!647745))))

(declare-fun res!759459 () Bool)

(assert (=> b!1138323 (=> res!759459 e!647745)))

(assert (=> b!1138323 (= res!759459 (bvsgt from!1455 i!673))))

(assert (=> b!1138323 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!506403 () Unit!37245)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74016 (_ BitVec 64) (_ BitVec 32)) Unit!37245)

(assert (=> b!1138323 (= lt!506403 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1138324 () Bool)

(declare-fun res!759469 () Bool)

(assert (=> b!1138324 (=> (not res!759469) (not e!647752))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74016 (_ BitVec 32)) Bool)

(assert (=> b!1138324 (= res!759469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!50368 () Bool)

(declare-fun c!111427 () Bool)

(declare-fun c!111429 () Bool)

(assert (=> bm!50368 (= call!50374 (+!3471 (ite c!111429 lt!506412 lt!506395) (ite c!111429 (tuple2!18229 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!111427 (tuple2!18229 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18229 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1138325 () Bool)

(declare-fun res!759470 () Bool)

(assert (=> b!1138325 (=> (not res!759470) (not e!647752))))

(declare-datatypes ((List!25034 0))(
  ( (Nil!25031) (Cons!25030 (h!26239 (_ BitVec 64)) (t!36102 List!25034)) )
))
(declare-fun arrayNoDuplicates!0 (array!74016 (_ BitVec 32) List!25034) Bool)

(assert (=> b!1138325 (= res!759470 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25031))))

(declare-fun b!1138326 () Bool)

(declare-fun e!647751 () Unit!37245)

(declare-fun Unit!37247 () Unit!37245)

(assert (=> b!1138326 (= e!647751 Unit!37247)))

(declare-fun b!1138327 () Bool)

(declare-fun e!647743 () Unit!37245)

(declare-fun lt!506406 () Unit!37245)

(assert (=> b!1138327 (= e!647743 lt!506406)))

(declare-fun call!50369 () Unit!37245)

(assert (=> b!1138327 (= lt!506406 call!50369)))

(declare-fun call!50376 () Bool)

(assert (=> b!1138327 call!50376))

(declare-fun b!1138328 () Bool)

(declare-fun e!647744 () Unit!37245)

(assert (=> b!1138328 (= e!647743 e!647744)))

(declare-fun c!111430 () Bool)

(declare-fun lt!506400 () Bool)

(assert (=> b!1138328 (= c!111430 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!506400))))

(declare-fun b!1138329 () Bool)

(declare-fun Unit!37248 () Unit!37245)

(assert (=> b!1138329 (= e!647751 Unit!37248)))

(assert (=> b!1138329 (= lt!506400 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1138329 (= c!111429 (and (not lt!506400) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!506396 () Unit!37245)

(assert (=> b!1138329 (= lt!506396 e!647739)))

(declare-fun lt!506398 () Unit!37245)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!375 (array!74016 array!74018 (_ BitVec 32) (_ BitVec 32) V!43259 V!43259 (_ BitVec 64) (_ BitVec 32) Int) Unit!37245)

(assert (=> b!1138329 (= lt!506398 (lemmaListMapContainsThenArrayContainsFrom!375 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111431 () Bool)

(assert (=> b!1138329 (= c!111431 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!759467 () Bool)

(declare-fun e!647748 () Bool)

(assert (=> b!1138329 (= res!759467 e!647748)))

(assert (=> b!1138329 (=> (not res!759467) (not e!647753))))

(assert (=> b!1138329 e!647753))

(declare-fun lt!506411 () Unit!37245)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74016 (_ BitVec 32) (_ BitVec 32)) Unit!37245)

(assert (=> b!1138329 (= lt!506411 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1138329 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25031)))

(declare-fun lt!506399 () Unit!37245)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74016 (_ BitVec 64) (_ BitVec 32) List!25034) Unit!37245)

(assert (=> b!1138329 (= lt!506399 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25031))))

(assert (=> b!1138329 false))

(declare-fun b!1138330 () Bool)

(declare-fun res!759457 () Bool)

(assert (=> b!1138330 (=> (not res!759457) (not e!647752))))

(assert (=> b!1138330 (= res!759457 (and (= (size!36193 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36192 _keys!1208) (size!36193 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1138331 () Bool)

(assert (=> b!1138331 (= e!647740 (= call!50370 call!50371))))

(declare-fun b!1138332 () Bool)

(assert (=> b!1138332 (= e!647748 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!50369 () Bool)

(assert (=> bm!50369 (= call!50376 call!50372)))

(declare-fun b!1138333 () Bool)

(assert (=> b!1138333 call!50376))

(declare-fun lt!506397 () Unit!37245)

(assert (=> b!1138333 (= lt!506397 call!50369)))

(assert (=> b!1138333 (= e!647744 lt!506397)))

(declare-fun b!1138334 () Bool)

(assert (=> b!1138334 (= c!111427 (and (not lt!506400) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1138334 (= e!647739 e!647743)))

(declare-fun bm!50370 () Bool)

(declare-fun call!50373 () ListLongMap!16209)

(assert (=> bm!50370 (= call!50373 call!50374)))

(declare-fun b!1138335 () Bool)

(declare-fun res!759464 () Bool)

(assert (=> b!1138335 (=> (not res!759464) (not e!647752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1138335 (= res!759464 (validKeyInArray!0 k0!934))))

(declare-fun b!1138336 () Bool)

(declare-fun -!1224 (ListLongMap!16209 (_ BitVec 64)) ListLongMap!16209)

(assert (=> b!1138336 (= e!647740 (= call!50370 (-!1224 call!50371 k0!934)))))

(declare-fun b!1138337 () Bool)

(assert (=> b!1138337 (= e!647746 true)))

(declare-fun lt!506409 () Unit!37245)

(assert (=> b!1138337 (= lt!506409 e!647751)))

(declare-fun c!111428 () Bool)

(assert (=> b!1138337 (= c!111428 (contains!6630 lt!506395 k0!934))))

(assert (=> b!1138337 (= lt!506395 (getCurrentListMapNoExtraKeys!4567 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138338 () Bool)

(declare-fun e!647741 () Bool)

(assert (=> b!1138338 (= e!647741 (and e!647742 mapRes!44723))))

(declare-fun condMapEmpty!44723 () Bool)

(declare-fun mapDefault!44723 () ValueCell!13590)

(assert (=> b!1138338 (= condMapEmpty!44723 (= (arr!35656 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13590)) mapDefault!44723)))))

(declare-fun b!1138339 () Bool)

(declare-fun res!759466 () Bool)

(assert (=> b!1138339 (=> (not res!759466) (not e!647752))))

(assert (=> b!1138339 (= res!759466 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36192 _keys!1208))))))

(declare-fun b!1138340 () Bool)

(declare-fun res!759468 () Bool)

(assert (=> b!1138340 (=> (not res!759468) (not e!647750))))

(assert (=> b!1138340 (= res!759468 (arrayNoDuplicates!0 lt!506404 #b00000000000000000000000000000000 Nil!25031))))

(declare-fun bm!50371 () Bool)

(assert (=> bm!50371 (= call!50375 (addStillContains!771 lt!506395 (ite (or c!111429 c!111427) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111429 c!111427) zeroValue!944 minValue!944) k0!934))))

(declare-fun bm!50372 () Bool)

(assert (=> bm!50372 (= call!50369 call!50375)))

(declare-fun bm!50373 () Bool)

(assert (=> bm!50373 (= call!50372 (contains!6630 (ite c!111429 lt!506412 call!50373) k0!934))))

(declare-fun mapIsEmpty!44723 () Bool)

(assert (=> mapIsEmpty!44723 mapRes!44723))

(declare-fun b!1138341 () Bool)

(declare-fun res!759465 () Bool)

(assert (=> b!1138341 (=> (not res!759465) (not e!647752))))

(assert (=> b!1138341 (= res!759465 (= (select (arr!35655 _keys!1208) i!673) k0!934))))

(declare-fun b!1138342 () Bool)

(assert (=> b!1138342 (= e!647748 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!506400) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1138343 () Bool)

(declare-fun Unit!37249 () Unit!37245)

(assert (=> b!1138343 (= e!647744 Unit!37249)))

(declare-fun b!1138320 () Bool)

(assert (=> b!1138320 (= e!647752 e!647750)))

(declare-fun res!759462 () Bool)

(assert (=> b!1138320 (=> (not res!759462) (not e!647750))))

(assert (=> b!1138320 (= res!759462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!506404 mask!1564))))

(assert (=> b!1138320 (= lt!506404 (array!74017 (store (arr!35655 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36192 _keys!1208)))))

(declare-fun res!759460 () Bool)

(assert (=> start!98500 (=> (not res!759460) (not e!647752))))

(assert (=> start!98500 (= res!759460 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36192 _keys!1208))))))

(assert (=> start!98500 e!647752))

(assert (=> start!98500 tp_is_empty!28599))

(declare-fun array_inv!27212 (array!74016) Bool)

(assert (=> start!98500 (array_inv!27212 _keys!1208)))

(assert (=> start!98500 true))

(assert (=> start!98500 tp!84919))

(declare-fun array_inv!27213 (array!74018) Bool)

(assert (=> start!98500 (and (array_inv!27213 _values!996) e!647741)))

(assert (= (and start!98500 res!759460) b!1138319))

(assert (= (and b!1138319 res!759461) b!1138330))

(assert (= (and b!1138330 res!759457) b!1138324))

(assert (= (and b!1138324 res!759469) b!1138325))

(assert (= (and b!1138325 res!759470) b!1138339))

(assert (= (and b!1138339 res!759466) b!1138335))

(assert (= (and b!1138335 res!759464) b!1138341))

(assert (= (and b!1138341 res!759465) b!1138320))

(assert (= (and b!1138320 res!759462) b!1138340))

(assert (= (and b!1138340 res!759468) b!1138323))

(assert (= (and b!1138323 (not res!759459)) b!1138316))

(assert (= (and b!1138316 (not res!759463)) b!1138318))

(assert (= (and b!1138318 c!111432) b!1138336))

(assert (= (and b!1138318 (not c!111432)) b!1138331))

(assert (= (or b!1138336 b!1138331) bm!50367))

(assert (= (or b!1138336 b!1138331) bm!50366))

(assert (= (and b!1138318 (not res!759458)) b!1138337))

(assert (= (and b!1138337 c!111428) b!1138329))

(assert (= (and b!1138337 (not c!111428)) b!1138326))

(assert (= (and b!1138329 c!111429) b!1138317))

(assert (= (and b!1138329 (not c!111429)) b!1138334))

(assert (= (and b!1138334 c!111427) b!1138327))

(assert (= (and b!1138334 (not c!111427)) b!1138328))

(assert (= (and b!1138328 c!111430) b!1138333))

(assert (= (and b!1138328 (not c!111430)) b!1138343))

(assert (= (or b!1138327 b!1138333) bm!50372))

(assert (= (or b!1138327 b!1138333) bm!50370))

(assert (= (or b!1138327 b!1138333) bm!50369))

(assert (= (or b!1138317 bm!50369) bm!50373))

(assert (= (or b!1138317 bm!50372) bm!50371))

(assert (= (or b!1138317 bm!50370) bm!50368))

(assert (= (and b!1138329 c!111431) b!1138332))

(assert (= (and b!1138329 (not c!111431)) b!1138342))

(assert (= (and b!1138329 res!759467) b!1138321))

(assert (= (and b!1138338 condMapEmpty!44723) mapIsEmpty!44723))

(assert (= (and b!1138338 (not condMapEmpty!44723)) mapNonEmpty!44723))

(get-info :version)

(assert (= (and mapNonEmpty!44723 ((_ is ValueCellFull!13590) mapValue!44723)) b!1138322))

(assert (= (and b!1138338 ((_ is ValueCellFull!13590) mapDefault!44723)) b!1138315))

(assert (= start!98500 b!1138338))

(declare-fun b_lambda!19193 () Bool)

(assert (=> (not b_lambda!19193) (not b!1138316)))

(declare-fun t!36100 () Bool)

(declare-fun tb!8889 () Bool)

(assert (=> (and start!98500 (= defaultEntry!1004 defaultEntry!1004) t!36100) tb!8889))

(declare-fun result!18335 () Bool)

(assert (=> tb!8889 (= result!18335 tp_is_empty!28599)))

(assert (=> b!1138316 t!36100))

(declare-fun b_and!39003 () Bool)

(assert (= b_and!39001 (and (=> t!36100 result!18335) b_and!39003)))

(declare-fun m!1050239 () Bool)

(assert (=> bm!50371 m!1050239))

(declare-fun m!1050241 () Bool)

(assert (=> b!1138316 m!1050241))

(declare-fun m!1050243 () Bool)

(assert (=> b!1138316 m!1050243))

(declare-fun m!1050245 () Bool)

(assert (=> b!1138316 m!1050245))

(declare-fun m!1050247 () Bool)

(assert (=> b!1138316 m!1050247))

(declare-fun m!1050249 () Bool)

(assert (=> b!1138337 m!1050249))

(declare-fun m!1050251 () Bool)

(assert (=> b!1138337 m!1050251))

(declare-fun m!1050253 () Bool)

(assert (=> b!1138329 m!1050253))

(declare-fun m!1050255 () Bool)

(assert (=> b!1138329 m!1050255))

(declare-fun m!1050257 () Bool)

(assert (=> b!1138329 m!1050257))

(declare-fun m!1050259 () Bool)

(assert (=> b!1138329 m!1050259))

(assert (=> bm!50366 m!1050251))

(declare-fun m!1050261 () Bool)

(assert (=> b!1138321 m!1050261))

(declare-fun m!1050263 () Bool)

(assert (=> b!1138317 m!1050263))

(declare-fun m!1050265 () Bool)

(assert (=> b!1138317 m!1050265))

(declare-fun m!1050267 () Bool)

(assert (=> b!1138317 m!1050267))

(declare-fun m!1050269 () Bool)

(assert (=> bm!50373 m!1050269))

(declare-fun m!1050271 () Bool)

(assert (=> b!1138325 m!1050271))

(declare-fun m!1050273 () Bool)

(assert (=> b!1138323 m!1050273))

(declare-fun m!1050275 () Bool)

(assert (=> b!1138323 m!1050275))

(assert (=> b!1138332 m!1050261))

(declare-fun m!1050277 () Bool)

(assert (=> mapNonEmpty!44723 m!1050277))

(declare-fun m!1050279 () Bool)

(assert (=> start!98500 m!1050279))

(declare-fun m!1050281 () Bool)

(assert (=> start!98500 m!1050281))

(declare-fun m!1050283 () Bool)

(assert (=> b!1138336 m!1050283))

(declare-fun m!1050285 () Bool)

(assert (=> b!1138324 m!1050285))

(declare-fun m!1050287 () Bool)

(assert (=> b!1138320 m!1050287))

(declare-fun m!1050289 () Bool)

(assert (=> b!1138320 m!1050289))

(declare-fun m!1050291 () Bool)

(assert (=> bm!50368 m!1050291))

(declare-fun m!1050293 () Bool)

(assert (=> bm!50367 m!1050293))

(declare-fun m!1050295 () Bool)

(assert (=> b!1138318 m!1050295))

(declare-fun m!1050297 () Bool)

(assert (=> b!1138318 m!1050297))

(declare-fun m!1050299 () Bool)

(assert (=> b!1138340 m!1050299))

(declare-fun m!1050301 () Bool)

(assert (=> b!1138335 m!1050301))

(declare-fun m!1050303 () Bool)

(assert (=> b!1138319 m!1050303))

(declare-fun m!1050305 () Bool)

(assert (=> b!1138341 m!1050305))

(check-sat (not b!1138317) (not mapNonEmpty!44723) (not b!1138323) (not b!1138335) (not b!1138324) (not b!1138325) (not b_lambda!19193) tp_is_empty!28599 (not b_next!24069) (not b!1138318) (not b!1138337) (not bm!50368) (not b!1138319) (not bm!50373) (not b!1138320) (not b!1138340) (not b!1138321) (not start!98500) (not bm!50366) (not bm!50371) (not bm!50367) (not b!1138316) (not b!1138329) (not b!1138336) (not b!1138332) b_and!39003)
(check-sat b_and!39003 (not b_next!24069))

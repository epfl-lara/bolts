; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98344 () Bool)

(assert start!98344)

(declare-fun b_free!23943 () Bool)

(declare-fun b_next!23943 () Bool)

(assert (=> start!98344 (= b_free!23943 (not b_next!23943))))

(declare-fun tp!84538 () Bool)

(declare-fun b_and!38731 () Bool)

(assert (=> start!98344 (= tp!84538 b_and!38731)))

(declare-fun res!756378 () Bool)

(declare-fun e!644545 () Bool)

(assert (=> start!98344 (=> (not res!756378) (not e!644545))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73766 0))(
  ( (array!73767 (arr!35531 (Array (_ BitVec 32) (_ BitVec 64))) (size!36068 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73766)

(assert (=> start!98344 (= res!756378 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36068 _keys!1208))))))

(assert (=> start!98344 e!644545))

(declare-fun tp_is_empty!28473 () Bool)

(assert (=> start!98344 tp_is_empty!28473))

(declare-fun array_inv!27120 (array!73766) Bool)

(assert (=> start!98344 (array_inv!27120 _keys!1208)))

(assert (=> start!98344 true))

(assert (=> start!98344 tp!84538))

(declare-datatypes ((V!43091 0))(
  ( (V!43092 (val!14293 Int)) )
))
(declare-datatypes ((ValueCell!13527 0))(
  ( (ValueCellFull!13527 (v!16930 V!43091)) (EmptyCell!13527) )
))
(declare-datatypes ((array!73768 0))(
  ( (array!73769 (arr!35532 (Array (_ BitVec 32) ValueCell!13527)) (size!36069 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73768)

(declare-fun e!644543 () Bool)

(declare-fun array_inv!27121 (array!73768) Bool)

(assert (=> start!98344 (and (array_inv!27121 _values!996) e!644543)))

(declare-fun b!1132436 () Bool)

(declare-fun res!756383 () Bool)

(assert (=> b!1132436 (=> (not res!756383) (not e!644545))))

(declare-datatypes ((List!24921 0))(
  ( (Nil!24918) (Cons!24917 (h!26126 (_ BitVec 64)) (t!35863 List!24921)) )
))
(declare-fun arrayNoDuplicates!0 (array!73766 (_ BitVec 32) List!24921) Bool)

(assert (=> b!1132436 (= res!756383 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24918))))

(declare-fun b!1132437 () Bool)

(declare-fun call!48841 () Bool)

(assert (=> b!1132437 call!48841))

(declare-datatypes ((Unit!37052 0))(
  ( (Unit!37053) )
))
(declare-fun lt!503121 () Unit!37052)

(declare-fun call!48843 () Unit!37052)

(assert (=> b!1132437 (= lt!503121 call!48843)))

(declare-fun e!644533 () Unit!37052)

(assert (=> b!1132437 (= e!644533 lt!503121)))

(declare-datatypes ((tuple2!18108 0))(
  ( (tuple2!18109 (_1!9064 (_ BitVec 64)) (_2!9064 V!43091)) )
))
(declare-datatypes ((List!24922 0))(
  ( (Nil!24919) (Cons!24918 (h!26127 tuple2!18108) (t!35864 List!24922)) )
))
(declare-datatypes ((ListLongMap!16089 0))(
  ( (ListLongMap!16090 (toList!8060 List!24922)) )
))
(declare-fun call!48839 () ListLongMap!16089)

(declare-fun c!110383 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun call!48842 () Bool)

(declare-fun bm!48834 () Bool)

(declare-fun lt!503127 () ListLongMap!16089)

(declare-fun contains!6551 (ListLongMap!16089 (_ BitVec 64)) Bool)

(assert (=> bm!48834 (= call!48842 (contains!6551 (ite c!110383 lt!503127 call!48839) k0!934))))

(declare-fun bm!48835 () Bool)

(declare-fun call!48837 () Unit!37052)

(assert (=> bm!48835 (= call!48843 call!48837)))

(declare-fun b!1132438 () Bool)

(declare-fun e!644539 () Bool)

(declare-fun call!48844 () ListLongMap!16089)

(declare-fun call!48840 () ListLongMap!16089)

(assert (=> b!1132438 (= e!644539 (= call!48844 call!48840))))

(declare-fun zeroValue!944 () V!43091)

(declare-fun c!110380 () Bool)

(declare-fun bm!48836 () Bool)

(declare-fun lt!503122 () ListLongMap!16089)

(declare-fun minValue!944 () V!43091)

(declare-fun call!48838 () ListLongMap!16089)

(declare-fun +!3422 (ListLongMap!16089 tuple2!18108) ListLongMap!16089)

(assert (=> bm!48836 (= call!48838 (+!3422 (ite c!110383 lt!503127 lt!503122) (ite c!110383 (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110380 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1132439 () Bool)

(declare-fun e!644536 () Bool)

(assert (=> b!1132439 (= e!644536 tp_is_empty!28473)))

(declare-fun b!1132440 () Bool)

(declare-fun e!644541 () Unit!37052)

(declare-fun lt!503119 () Unit!37052)

(assert (=> b!1132440 (= e!644541 lt!503119)))

(assert (=> b!1132440 (= lt!503119 call!48843)))

(assert (=> b!1132440 call!48841))

(declare-fun bm!48837 () Bool)

(assert (=> bm!48837 (= call!48841 call!48842)))

(declare-fun mapNonEmpty!44531 () Bool)

(declare-fun mapRes!44531 () Bool)

(declare-fun tp!84537 () Bool)

(assert (=> mapNonEmpty!44531 (= mapRes!44531 (and tp!84537 e!644536))))

(declare-fun mapKey!44531 () (_ BitVec 32))

(declare-fun mapValue!44531 () ValueCell!13527)

(declare-fun mapRest!44531 () (Array (_ BitVec 32) ValueCell!13527))

(assert (=> mapNonEmpty!44531 (= (arr!35532 _values!996) (store mapRest!44531 mapKey!44531 mapValue!44531))))

(declare-fun b!1132441 () Bool)

(declare-fun Unit!37054 () Unit!37052)

(assert (=> b!1132441 (= e!644541 Unit!37054)))

(declare-fun b!1132442 () Bool)

(declare-fun e!644544 () Bool)

(assert (=> b!1132442 (= e!644543 (and e!644544 mapRes!44531))))

(declare-fun condMapEmpty!44531 () Bool)

(declare-fun mapDefault!44531 () ValueCell!13527)

(assert (=> b!1132442 (= condMapEmpty!44531 (= (arr!35532 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13527)) mapDefault!44531)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!48838 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4511 (array!73766 array!73768 (_ BitVec 32) (_ BitVec 32) V!43091 V!43091 (_ BitVec 32) Int) ListLongMap!16089)

(assert (=> bm!48838 (= call!48840 (getCurrentListMapNoExtraKeys!4511 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132443 () Bool)

(declare-fun e!644535 () Bool)

(assert (=> b!1132443 (= e!644535 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36068 _keys!1208)) (bvslt (size!36068 _keys!1208) #b01111111111111111111111111111111)))))

(declare-fun e!644534 () Bool)

(assert (=> b!1132443 e!644534))

(declare-fun c!110382 () Bool)

(assert (=> b!1132443 (= c!110382 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!503125 () Unit!37052)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!332 (array!73766 array!73768 (_ BitVec 32) (_ BitVec 32) V!43091 V!43091 (_ BitVec 64) (_ BitVec 32) Int) Unit!37052)

(assert (=> b!1132443 (= lt!503125 (lemmaListMapContainsThenArrayContainsFrom!332 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!503115 () Unit!37052)

(declare-fun e!644532 () Unit!37052)

(assert (=> b!1132443 (= lt!503115 e!644532)))

(declare-fun lt!503128 () Bool)

(assert (=> b!1132443 (= c!110383 (and (not lt!503128) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1132443 (= lt!503128 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1132444 () Bool)

(declare-fun e!644540 () Bool)

(assert (=> b!1132444 (= e!644540 e!644535)))

(declare-fun res!756379 () Bool)

(assert (=> b!1132444 (=> res!756379 e!644535)))

(assert (=> b!1132444 (= res!756379 (not (contains!6551 lt!503122 k0!934)))))

(assert (=> b!1132444 (= lt!503122 (getCurrentListMapNoExtraKeys!4511 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48839 () Bool)

(assert (=> bm!48839 (= call!48839 call!48838)))

(declare-fun b!1132445 () Bool)

(assert (=> b!1132445 (= e!644532 e!644533)))

(assert (=> b!1132445 (= c!110380 (and (not lt!503128) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1132446 () Bool)

(declare-fun res!756387 () Bool)

(assert (=> b!1132446 (=> (not res!756387) (not e!644545))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1132446 (= res!756387 (= (select (arr!35531 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!44531 () Bool)

(assert (=> mapIsEmpty!44531 mapRes!44531))

(declare-fun b!1132447 () Bool)

(declare-fun c!110381 () Bool)

(assert (=> b!1132447 (= c!110381 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!503128))))

(assert (=> b!1132447 (= e!644533 e!644541)))

(declare-fun b!1132448 () Bool)

(declare-fun res!756385 () Bool)

(declare-fun e!644531 () Bool)

(assert (=> b!1132448 (=> (not res!756385) (not e!644531))))

(declare-fun lt!503120 () array!73766)

(assert (=> b!1132448 (= res!756385 (arrayNoDuplicates!0 lt!503120 #b00000000000000000000000000000000 Nil!24918))))

(declare-fun b!1132449 () Bool)

(assert (=> b!1132449 (= e!644544 tp_is_empty!28473)))

(declare-fun b!1132450 () Bool)

(declare-fun res!756382 () Bool)

(assert (=> b!1132450 (=> (not res!756382) (not e!644545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1132450 (= res!756382 (validMask!0 mask!1564))))

(declare-fun b!1132451 () Bool)

(declare-fun e!644538 () Bool)

(assert (=> b!1132451 (= e!644531 (not e!644538))))

(declare-fun res!756386 () Bool)

(assert (=> b!1132451 (=> res!756386 e!644538)))

(assert (=> b!1132451 (= res!756386 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73766 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1132451 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!503118 () Unit!37052)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73766 (_ BitVec 64) (_ BitVec 32)) Unit!37052)

(assert (=> b!1132451 (= lt!503118 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun lt!503129 () array!73768)

(declare-fun bm!48840 () Bool)

(assert (=> bm!48840 (= call!48844 (getCurrentListMapNoExtraKeys!4511 lt!503120 lt!503129 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132452 () Bool)

(declare-fun e!644537 () Bool)

(assert (=> b!1132452 (= e!644538 e!644537)))

(declare-fun res!756375 () Bool)

(assert (=> b!1132452 (=> res!756375 e!644537)))

(assert (=> b!1132452 (= res!756375 (not (= from!1455 i!673)))))

(declare-fun lt!503123 () ListLongMap!16089)

(assert (=> b!1132452 (= lt!503123 (getCurrentListMapNoExtraKeys!4511 lt!503120 lt!503129 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2582 (Int (_ BitVec 64)) V!43091)

(assert (=> b!1132452 (= lt!503129 (array!73769 (store (arr!35532 _values!996) i!673 (ValueCellFull!13527 (dynLambda!2582 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36069 _values!996)))))

(declare-fun lt!503116 () ListLongMap!16089)

(assert (=> b!1132452 (= lt!503116 (getCurrentListMapNoExtraKeys!4511 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1132453 () Bool)

(declare-fun res!756377 () Bool)

(assert (=> b!1132453 (=> (not res!756377) (not e!644545))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1132453 (= res!756377 (validKeyInArray!0 k0!934))))

(declare-fun bm!48841 () Bool)

(declare-fun addStillContains!721 (ListLongMap!16089 (_ BitVec 64) V!43091 (_ BitVec 64)) Unit!37052)

(assert (=> bm!48841 (= call!48837 (addStillContains!721 (ite c!110383 lt!503127 lt!503122) (ite c!110383 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!110380 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!110383 minValue!944 (ite c!110380 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1132454 () Bool)

(declare-fun res!756374 () Bool)

(assert (=> b!1132454 (=> (not res!756374) (not e!644545))))

(assert (=> b!1132454 (= res!756374 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36068 _keys!1208))))))

(declare-fun b!1132455 () Bool)

(declare-fun res!756381 () Bool)

(assert (=> b!1132455 (=> (not res!756381) (not e!644545))))

(assert (=> b!1132455 (= res!756381 (and (= (size!36069 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36068 _keys!1208) (size!36069 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1132456 () Bool)

(declare-fun res!756380 () Bool)

(assert (=> b!1132456 (=> (not res!756380) (not e!644545))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73766 (_ BitVec 32)) Bool)

(assert (=> b!1132456 (= res!756380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1132457 () Bool)

(assert (=> b!1132457 (= e!644534 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1132458 () Bool)

(assert (=> b!1132458 (= e!644534 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!503128) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1132459 () Bool)

(declare-fun -!1181 (ListLongMap!16089 (_ BitVec 64)) ListLongMap!16089)

(assert (=> b!1132459 (= e!644539 (= call!48844 (-!1181 call!48840 k0!934)))))

(declare-fun b!1132460 () Bool)

(declare-fun lt!503124 () Unit!37052)

(assert (=> b!1132460 (= e!644532 lt!503124)))

(declare-fun lt!503126 () Unit!37052)

(assert (=> b!1132460 (= lt!503126 (addStillContains!721 lt!503122 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1132460 (= lt!503127 (+!3422 lt!503122 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1132460 call!48842))

(assert (=> b!1132460 (= lt!503124 call!48837)))

(assert (=> b!1132460 (contains!6551 call!48838 k0!934)))

(declare-fun b!1132461 () Bool)

(assert (=> b!1132461 (= e!644545 e!644531)))

(declare-fun res!756384 () Bool)

(assert (=> b!1132461 (=> (not res!756384) (not e!644531))))

(assert (=> b!1132461 (= res!756384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!503120 mask!1564))))

(assert (=> b!1132461 (= lt!503120 (array!73767 (store (arr!35531 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36068 _keys!1208)))))

(declare-fun b!1132462 () Bool)

(assert (=> b!1132462 (= e!644537 e!644540)))

(declare-fun res!756376 () Bool)

(assert (=> b!1132462 (=> res!756376 e!644540)))

(assert (=> b!1132462 (= res!756376 (not (= (select (arr!35531 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1132462 e!644539))

(declare-fun c!110384 () Bool)

(assert (=> b!1132462 (= c!110384 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!503117 () Unit!37052)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!437 (array!73766 array!73768 (_ BitVec 32) (_ BitVec 32) V!43091 V!43091 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37052)

(assert (=> b!1132462 (= lt!503117 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!437 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!98344 res!756378) b!1132450))

(assert (= (and b!1132450 res!756382) b!1132455))

(assert (= (and b!1132455 res!756381) b!1132456))

(assert (= (and b!1132456 res!756380) b!1132436))

(assert (= (and b!1132436 res!756383) b!1132454))

(assert (= (and b!1132454 res!756374) b!1132453))

(assert (= (and b!1132453 res!756377) b!1132446))

(assert (= (and b!1132446 res!756387) b!1132461))

(assert (= (and b!1132461 res!756384) b!1132448))

(assert (= (and b!1132448 res!756385) b!1132451))

(assert (= (and b!1132451 (not res!756386)) b!1132452))

(assert (= (and b!1132452 (not res!756375)) b!1132462))

(assert (= (and b!1132462 c!110384) b!1132459))

(assert (= (and b!1132462 (not c!110384)) b!1132438))

(assert (= (or b!1132459 b!1132438) bm!48840))

(assert (= (or b!1132459 b!1132438) bm!48838))

(assert (= (and b!1132462 (not res!756376)) b!1132444))

(assert (= (and b!1132444 (not res!756379)) b!1132443))

(assert (= (and b!1132443 c!110383) b!1132460))

(assert (= (and b!1132443 (not c!110383)) b!1132445))

(assert (= (and b!1132445 c!110380) b!1132437))

(assert (= (and b!1132445 (not c!110380)) b!1132447))

(assert (= (and b!1132447 c!110381) b!1132440))

(assert (= (and b!1132447 (not c!110381)) b!1132441))

(assert (= (or b!1132437 b!1132440) bm!48835))

(assert (= (or b!1132437 b!1132440) bm!48839))

(assert (= (or b!1132437 b!1132440) bm!48837))

(assert (= (or b!1132460 bm!48837) bm!48834))

(assert (= (or b!1132460 bm!48835) bm!48841))

(assert (= (or b!1132460 bm!48839) bm!48836))

(assert (= (and b!1132443 c!110382) b!1132457))

(assert (= (and b!1132443 (not c!110382)) b!1132458))

(assert (= (and b!1132442 condMapEmpty!44531) mapIsEmpty!44531))

(assert (= (and b!1132442 (not condMapEmpty!44531)) mapNonEmpty!44531))

(get-info :version)

(assert (= (and mapNonEmpty!44531 ((_ is ValueCellFull!13527) mapValue!44531)) b!1132439))

(assert (= (and b!1132442 ((_ is ValueCellFull!13527) mapDefault!44531)) b!1132449))

(assert (= start!98344 b!1132442))

(declare-fun b_lambda!19029 () Bool)

(assert (=> (not b_lambda!19029) (not b!1132452)))

(declare-fun t!35862 () Bool)

(declare-fun tb!8763 () Bool)

(assert (=> (and start!98344 (= defaultEntry!1004 defaultEntry!1004) t!35862) tb!8763))

(declare-fun result!18081 () Bool)

(assert (=> tb!8763 (= result!18081 tp_is_empty!28473)))

(assert (=> b!1132452 t!35862))

(declare-fun b_and!38733 () Bool)

(assert (= b_and!38731 (and (=> t!35862 result!18081) b_and!38733)))

(declare-fun m!1045723 () Bool)

(assert (=> bm!48836 m!1045723))

(declare-fun m!1045725 () Bool)

(assert (=> b!1132446 m!1045725))

(declare-fun m!1045727 () Bool)

(assert (=> b!1132452 m!1045727))

(declare-fun m!1045729 () Bool)

(assert (=> b!1132452 m!1045729))

(declare-fun m!1045731 () Bool)

(assert (=> b!1132452 m!1045731))

(declare-fun m!1045733 () Bool)

(assert (=> b!1132452 m!1045733))

(declare-fun m!1045735 () Bool)

(assert (=> bm!48840 m!1045735))

(declare-fun m!1045737 () Bool)

(assert (=> b!1132443 m!1045737))

(declare-fun m!1045739 () Bool)

(assert (=> b!1132453 m!1045739))

(declare-fun m!1045741 () Bool)

(assert (=> mapNonEmpty!44531 m!1045741))

(declare-fun m!1045743 () Bool)

(assert (=> bm!48838 m!1045743))

(declare-fun m!1045745 () Bool)

(assert (=> b!1132459 m!1045745))

(declare-fun m!1045747 () Bool)

(assert (=> b!1132460 m!1045747))

(declare-fun m!1045749 () Bool)

(assert (=> b!1132460 m!1045749))

(declare-fun m!1045751 () Bool)

(assert (=> b!1132460 m!1045751))

(declare-fun m!1045753 () Bool)

(assert (=> start!98344 m!1045753))

(declare-fun m!1045755 () Bool)

(assert (=> start!98344 m!1045755))

(declare-fun m!1045757 () Bool)

(assert (=> bm!48841 m!1045757))

(declare-fun m!1045759 () Bool)

(assert (=> b!1132456 m!1045759))

(declare-fun m!1045761 () Bool)

(assert (=> b!1132462 m!1045761))

(declare-fun m!1045763 () Bool)

(assert (=> b!1132462 m!1045763))

(declare-fun m!1045765 () Bool)

(assert (=> b!1132461 m!1045765))

(declare-fun m!1045767 () Bool)

(assert (=> b!1132461 m!1045767))

(declare-fun m!1045769 () Bool)

(assert (=> b!1132444 m!1045769))

(assert (=> b!1132444 m!1045743))

(declare-fun m!1045771 () Bool)

(assert (=> b!1132436 m!1045771))

(declare-fun m!1045773 () Bool)

(assert (=> b!1132450 m!1045773))

(declare-fun m!1045775 () Bool)

(assert (=> bm!48834 m!1045775))

(declare-fun m!1045777 () Bool)

(assert (=> b!1132451 m!1045777))

(declare-fun m!1045779 () Bool)

(assert (=> b!1132451 m!1045779))

(declare-fun m!1045781 () Bool)

(assert (=> b!1132457 m!1045781))

(declare-fun m!1045783 () Bool)

(assert (=> b!1132448 m!1045783))

(check-sat (not b_lambda!19029) (not bm!48838) (not b!1132459) (not b!1132452) (not bm!48841) (not b!1132462) (not b!1132460) (not b!1132443) (not b!1132453) tp_is_empty!28473 (not mapNonEmpty!44531) (not b!1132450) (not b!1132457) (not bm!48836) (not b!1132444) (not bm!48834) (not b_next!23943) (not start!98344) (not b!1132461) b_and!38733 (not bm!48840) (not b!1132448) (not b!1132436) (not b!1132451) (not b!1132456))
(check-sat b_and!38733 (not b_next!23943))
(get-model)

(declare-fun b_lambda!19033 () Bool)

(assert (= b_lambda!19029 (or (and start!98344 b_free!23943) b_lambda!19033)))

(check-sat (not b!1132459) (not b!1132452) (not bm!48841) (not b!1132462) (not b!1132460) (not b!1132443) (not b!1132453) tp_is_empty!28473 (not mapNonEmpty!44531) (not b!1132450) (not bm!48838) (not b_lambda!19033) (not b!1132457) (not bm!48836) (not b!1132444) (not bm!48834) (not b_next!23943) (not start!98344) (not b!1132461) b_and!38733 (not bm!48840) (not b!1132448) (not b!1132436) (not b!1132451) (not b!1132456))
(check-sat b_and!38733 (not b_next!23943))
(get-model)

(declare-fun b!1132572 () Bool)

(assert (=> b!1132572 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!36068 lt!503120)))))

(assert (=> b!1132572 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!36069 lt!503129)))))

(declare-fun e!644606 () Bool)

(declare-fun lt!503193 () ListLongMap!16089)

(declare-fun apply!991 (ListLongMap!16089 (_ BitVec 64)) V!43091)

(declare-fun get!18090 (ValueCell!13527 V!43091) V!43091)

(assert (=> b!1132572 (= e!644606 (= (apply!991 lt!503193 (select (arr!35531 lt!503120) from!1455)) (get!18090 (select (arr!35532 lt!503129) from!1455) (dynLambda!2582 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1132573 () Bool)

(declare-fun e!644608 () Bool)

(assert (=> b!1132573 (= e!644608 e!644606)))

(assert (=> b!1132573 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!36068 lt!503120)))))

(declare-fun res!756441 () Bool)

(assert (=> b!1132573 (= res!756441 (contains!6551 lt!503193 (select (arr!35531 lt!503120) from!1455)))))

(assert (=> b!1132573 (=> (not res!756441) (not e!644606))))

(declare-fun b!1132574 () Bool)

(declare-fun e!644611 () Bool)

(assert (=> b!1132574 (= e!644608 e!644611)))

(declare-fun c!110409 () Bool)

(assert (=> b!1132574 (= c!110409 (bvslt from!1455 (size!36068 lt!503120)))))

(declare-fun b!1132575 () Bool)

(declare-fun e!644605 () ListLongMap!16089)

(declare-fun call!48871 () ListLongMap!16089)

(assert (=> b!1132575 (= e!644605 call!48871)))

(declare-fun b!1132576 () Bool)

(declare-fun e!644607 () Bool)

(assert (=> b!1132576 (= e!644607 (validKeyInArray!0 (select (arr!35531 lt!503120) from!1455)))))

(assert (=> b!1132576 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1132577 () Bool)

(declare-fun e!644609 () ListLongMap!16089)

(assert (=> b!1132577 (= e!644609 (ListLongMap!16090 Nil!24919))))

(declare-fun b!1132578 () Bool)

(assert (=> b!1132578 (= e!644611 (= lt!503193 (getCurrentListMapNoExtraKeys!4511 lt!503120 lt!503129 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun bm!48868 () Bool)

(assert (=> bm!48868 (= call!48871 (getCurrentListMapNoExtraKeys!4511 lt!503120 lt!503129 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1132580 () Bool)

(declare-fun e!644610 () Bool)

(assert (=> b!1132580 (= e!644610 e!644608)))

(declare-fun c!110410 () Bool)

(assert (=> b!1132580 (= c!110410 e!644607)))

(declare-fun res!756439 () Bool)

(assert (=> b!1132580 (=> (not res!756439) (not e!644607))))

(assert (=> b!1132580 (= res!756439 (bvslt from!1455 (size!36068 lt!503120)))))

(declare-fun b!1132581 () Bool)

(declare-fun lt!503190 () Unit!37052)

(declare-fun lt!503191 () Unit!37052)

(assert (=> b!1132581 (= lt!503190 lt!503191)))

(declare-fun lt!503189 () (_ BitVec 64))

(declare-fun lt!503195 () ListLongMap!16089)

(declare-fun lt!503194 () V!43091)

(declare-fun lt!503192 () (_ BitVec 64))

(assert (=> b!1132581 (not (contains!6551 (+!3422 lt!503195 (tuple2!18109 lt!503192 lt!503194)) lt!503189))))

(declare-fun addStillNotContains!286 (ListLongMap!16089 (_ BitVec 64) V!43091 (_ BitVec 64)) Unit!37052)

(assert (=> b!1132581 (= lt!503191 (addStillNotContains!286 lt!503195 lt!503192 lt!503194 lt!503189))))

(assert (=> b!1132581 (= lt!503189 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1132581 (= lt!503194 (get!18090 (select (arr!35532 lt!503129) from!1455) (dynLambda!2582 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1132581 (= lt!503192 (select (arr!35531 lt!503120) from!1455))))

(assert (=> b!1132581 (= lt!503195 call!48871)))

(assert (=> b!1132581 (= e!644605 (+!3422 call!48871 (tuple2!18109 (select (arr!35531 lt!503120) from!1455) (get!18090 (select (arr!35532 lt!503129) from!1455) (dynLambda!2582 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1132582 () Bool)

(assert (=> b!1132582 (= e!644609 e!644605)))

(declare-fun c!110411 () Bool)

(assert (=> b!1132582 (= c!110411 (validKeyInArray!0 (select (arr!35531 lt!503120) from!1455)))))

(declare-fun b!1132583 () Bool)

(declare-fun res!756438 () Bool)

(assert (=> b!1132583 (=> (not res!756438) (not e!644610))))

(assert (=> b!1132583 (= res!756438 (not (contains!6551 lt!503193 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!131505 () Bool)

(assert (=> d!131505 e!644610))

(declare-fun res!756440 () Bool)

(assert (=> d!131505 (=> (not res!756440) (not e!644610))))

(assert (=> d!131505 (= res!756440 (not (contains!6551 lt!503193 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!131505 (= lt!503193 e!644609)))

(declare-fun c!110408 () Bool)

(assert (=> d!131505 (= c!110408 (bvsge from!1455 (size!36068 lt!503120)))))

(assert (=> d!131505 (validMask!0 mask!1564)))

(assert (=> d!131505 (= (getCurrentListMapNoExtraKeys!4511 lt!503120 lt!503129 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!503193)))

(declare-fun b!1132579 () Bool)

(declare-fun isEmpty!979 (ListLongMap!16089) Bool)

(assert (=> b!1132579 (= e!644611 (isEmpty!979 lt!503193))))

(assert (= (and d!131505 c!110408) b!1132577))

(assert (= (and d!131505 (not c!110408)) b!1132582))

(assert (= (and b!1132582 c!110411) b!1132581))

(assert (= (and b!1132582 (not c!110411)) b!1132575))

(assert (= (or b!1132581 b!1132575) bm!48868))

(assert (= (and d!131505 res!756440) b!1132583))

(assert (= (and b!1132583 res!756438) b!1132580))

(assert (= (and b!1132580 res!756439) b!1132576))

(assert (= (and b!1132580 c!110410) b!1132573))

(assert (= (and b!1132580 (not c!110410)) b!1132574))

(assert (= (and b!1132573 res!756441) b!1132572))

(assert (= (and b!1132574 c!110409) b!1132578))

(assert (= (and b!1132574 (not c!110409)) b!1132579))

(declare-fun b_lambda!19035 () Bool)

(assert (=> (not b_lambda!19035) (not b!1132572)))

(assert (=> b!1132572 t!35862))

(declare-fun b_and!38739 () Bool)

(assert (= b_and!38733 (and (=> t!35862 result!18081) b_and!38739)))

(declare-fun b_lambda!19037 () Bool)

(assert (=> (not b_lambda!19037) (not b!1132581)))

(assert (=> b!1132581 t!35862))

(declare-fun b_and!38741 () Bool)

(assert (= b_and!38739 (and (=> t!35862 result!18081) b_and!38741)))

(declare-fun m!1045847 () Bool)

(assert (=> d!131505 m!1045847))

(assert (=> d!131505 m!1045773))

(declare-fun m!1045849 () Bool)

(assert (=> b!1132573 m!1045849))

(assert (=> b!1132573 m!1045849))

(declare-fun m!1045851 () Bool)

(assert (=> b!1132573 m!1045851))

(declare-fun m!1045853 () Bool)

(assert (=> b!1132579 m!1045853))

(declare-fun m!1045855 () Bool)

(assert (=> b!1132583 m!1045855))

(assert (=> b!1132572 m!1045729))

(assert (=> b!1132572 m!1045849))

(declare-fun m!1045857 () Bool)

(assert (=> b!1132572 m!1045857))

(assert (=> b!1132572 m!1045729))

(declare-fun m!1045859 () Bool)

(assert (=> b!1132572 m!1045859))

(assert (=> b!1132572 m!1045857))

(assert (=> b!1132572 m!1045849))

(declare-fun m!1045861 () Bool)

(assert (=> b!1132572 m!1045861))

(declare-fun m!1045863 () Bool)

(assert (=> b!1132581 m!1045863))

(declare-fun m!1045865 () Bool)

(assert (=> b!1132581 m!1045865))

(assert (=> b!1132581 m!1045729))

(assert (=> b!1132581 m!1045849))

(assert (=> b!1132581 m!1045857))

(assert (=> b!1132581 m!1045729))

(assert (=> b!1132581 m!1045859))

(assert (=> b!1132581 m!1045857))

(declare-fun m!1045867 () Bool)

(assert (=> b!1132581 m!1045867))

(assert (=> b!1132581 m!1045867))

(declare-fun m!1045869 () Bool)

(assert (=> b!1132581 m!1045869))

(declare-fun m!1045871 () Bool)

(assert (=> b!1132578 m!1045871))

(assert (=> b!1132576 m!1045849))

(assert (=> b!1132576 m!1045849))

(declare-fun m!1045873 () Bool)

(assert (=> b!1132576 m!1045873))

(assert (=> bm!48868 m!1045871))

(assert (=> b!1132582 m!1045849))

(assert (=> b!1132582 m!1045849))

(assert (=> b!1132582 m!1045873))

(assert (=> b!1132452 d!131505))

(declare-fun b!1132584 () Bool)

(assert (=> b!1132584 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!36068 _keys!1208)))))

(assert (=> b!1132584 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!36069 _values!996)))))

(declare-fun e!644613 () Bool)

(declare-fun lt!503200 () ListLongMap!16089)

(assert (=> b!1132584 (= e!644613 (= (apply!991 lt!503200 (select (arr!35531 _keys!1208) from!1455)) (get!18090 (select (arr!35532 _values!996) from!1455) (dynLambda!2582 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1132585 () Bool)

(declare-fun e!644615 () Bool)

(assert (=> b!1132585 (= e!644615 e!644613)))

(assert (=> b!1132585 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!36068 _keys!1208)))))

(declare-fun res!756445 () Bool)

(assert (=> b!1132585 (= res!756445 (contains!6551 lt!503200 (select (arr!35531 _keys!1208) from!1455)))))

(assert (=> b!1132585 (=> (not res!756445) (not e!644613))))

(declare-fun b!1132586 () Bool)

(declare-fun e!644618 () Bool)

(assert (=> b!1132586 (= e!644615 e!644618)))

(declare-fun c!110413 () Bool)

(assert (=> b!1132586 (= c!110413 (bvslt from!1455 (size!36068 _keys!1208)))))

(declare-fun b!1132587 () Bool)

(declare-fun e!644612 () ListLongMap!16089)

(declare-fun call!48872 () ListLongMap!16089)

(assert (=> b!1132587 (= e!644612 call!48872)))

(declare-fun b!1132588 () Bool)

(declare-fun e!644614 () Bool)

(assert (=> b!1132588 (= e!644614 (validKeyInArray!0 (select (arr!35531 _keys!1208) from!1455)))))

(assert (=> b!1132588 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1132589 () Bool)

(declare-fun e!644616 () ListLongMap!16089)

(assert (=> b!1132589 (= e!644616 (ListLongMap!16090 Nil!24919))))

(declare-fun b!1132590 () Bool)

(assert (=> b!1132590 (= e!644618 (= lt!503200 (getCurrentListMapNoExtraKeys!4511 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun bm!48869 () Bool)

(assert (=> bm!48869 (= call!48872 (getCurrentListMapNoExtraKeys!4511 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1132592 () Bool)

(declare-fun e!644617 () Bool)

(assert (=> b!1132592 (= e!644617 e!644615)))

(declare-fun c!110414 () Bool)

(assert (=> b!1132592 (= c!110414 e!644614)))

(declare-fun res!756443 () Bool)

(assert (=> b!1132592 (=> (not res!756443) (not e!644614))))

(assert (=> b!1132592 (= res!756443 (bvslt from!1455 (size!36068 _keys!1208)))))

(declare-fun b!1132593 () Bool)

(declare-fun lt!503197 () Unit!37052)

(declare-fun lt!503198 () Unit!37052)

(assert (=> b!1132593 (= lt!503197 lt!503198)))

(declare-fun lt!503196 () (_ BitVec 64))

(declare-fun lt!503202 () ListLongMap!16089)

(declare-fun lt!503201 () V!43091)

(declare-fun lt!503199 () (_ BitVec 64))

(assert (=> b!1132593 (not (contains!6551 (+!3422 lt!503202 (tuple2!18109 lt!503199 lt!503201)) lt!503196))))

(assert (=> b!1132593 (= lt!503198 (addStillNotContains!286 lt!503202 lt!503199 lt!503201 lt!503196))))

(assert (=> b!1132593 (= lt!503196 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1132593 (= lt!503201 (get!18090 (select (arr!35532 _values!996) from!1455) (dynLambda!2582 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1132593 (= lt!503199 (select (arr!35531 _keys!1208) from!1455))))

(assert (=> b!1132593 (= lt!503202 call!48872)))

(assert (=> b!1132593 (= e!644612 (+!3422 call!48872 (tuple2!18109 (select (arr!35531 _keys!1208) from!1455) (get!18090 (select (arr!35532 _values!996) from!1455) (dynLambda!2582 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1132594 () Bool)

(assert (=> b!1132594 (= e!644616 e!644612)))

(declare-fun c!110415 () Bool)

(assert (=> b!1132594 (= c!110415 (validKeyInArray!0 (select (arr!35531 _keys!1208) from!1455)))))

(declare-fun b!1132595 () Bool)

(declare-fun res!756442 () Bool)

(assert (=> b!1132595 (=> (not res!756442) (not e!644617))))

(assert (=> b!1132595 (= res!756442 (not (contains!6551 lt!503200 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!131507 () Bool)

(assert (=> d!131507 e!644617))

(declare-fun res!756444 () Bool)

(assert (=> d!131507 (=> (not res!756444) (not e!644617))))

(assert (=> d!131507 (= res!756444 (not (contains!6551 lt!503200 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!131507 (= lt!503200 e!644616)))

(declare-fun c!110412 () Bool)

(assert (=> d!131507 (= c!110412 (bvsge from!1455 (size!36068 _keys!1208)))))

(assert (=> d!131507 (validMask!0 mask!1564)))

(assert (=> d!131507 (= (getCurrentListMapNoExtraKeys!4511 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!503200)))

(declare-fun b!1132591 () Bool)

(assert (=> b!1132591 (= e!644618 (isEmpty!979 lt!503200))))

(assert (= (and d!131507 c!110412) b!1132589))

(assert (= (and d!131507 (not c!110412)) b!1132594))

(assert (= (and b!1132594 c!110415) b!1132593))

(assert (= (and b!1132594 (not c!110415)) b!1132587))

(assert (= (or b!1132593 b!1132587) bm!48869))

(assert (= (and d!131507 res!756444) b!1132595))

(assert (= (and b!1132595 res!756442) b!1132592))

(assert (= (and b!1132592 res!756443) b!1132588))

(assert (= (and b!1132592 c!110414) b!1132585))

(assert (= (and b!1132592 (not c!110414)) b!1132586))

(assert (= (and b!1132585 res!756445) b!1132584))

(assert (= (and b!1132586 c!110413) b!1132590))

(assert (= (and b!1132586 (not c!110413)) b!1132591))

(declare-fun b_lambda!19039 () Bool)

(assert (=> (not b_lambda!19039) (not b!1132584)))

(assert (=> b!1132584 t!35862))

(declare-fun b_and!38743 () Bool)

(assert (= b_and!38741 (and (=> t!35862 result!18081) b_and!38743)))

(declare-fun b_lambda!19041 () Bool)

(assert (=> (not b_lambda!19041) (not b!1132593)))

(assert (=> b!1132593 t!35862))

(declare-fun b_and!38745 () Bool)

(assert (= b_and!38743 (and (=> t!35862 result!18081) b_and!38745)))

(declare-fun m!1045875 () Bool)

(assert (=> d!131507 m!1045875))

(assert (=> d!131507 m!1045773))

(assert (=> b!1132585 m!1045761))

(assert (=> b!1132585 m!1045761))

(declare-fun m!1045877 () Bool)

(assert (=> b!1132585 m!1045877))

(declare-fun m!1045879 () Bool)

(assert (=> b!1132591 m!1045879))

(declare-fun m!1045881 () Bool)

(assert (=> b!1132595 m!1045881))

(assert (=> b!1132584 m!1045729))

(assert (=> b!1132584 m!1045761))

(declare-fun m!1045883 () Bool)

(assert (=> b!1132584 m!1045883))

(assert (=> b!1132584 m!1045729))

(declare-fun m!1045885 () Bool)

(assert (=> b!1132584 m!1045885))

(assert (=> b!1132584 m!1045883))

(assert (=> b!1132584 m!1045761))

(declare-fun m!1045887 () Bool)

(assert (=> b!1132584 m!1045887))

(declare-fun m!1045889 () Bool)

(assert (=> b!1132593 m!1045889))

(declare-fun m!1045891 () Bool)

(assert (=> b!1132593 m!1045891))

(assert (=> b!1132593 m!1045729))

(assert (=> b!1132593 m!1045761))

(assert (=> b!1132593 m!1045883))

(assert (=> b!1132593 m!1045729))

(assert (=> b!1132593 m!1045885))

(assert (=> b!1132593 m!1045883))

(declare-fun m!1045893 () Bool)

(assert (=> b!1132593 m!1045893))

(assert (=> b!1132593 m!1045893))

(declare-fun m!1045895 () Bool)

(assert (=> b!1132593 m!1045895))

(declare-fun m!1045897 () Bool)

(assert (=> b!1132590 m!1045897))

(assert (=> b!1132588 m!1045761))

(assert (=> b!1132588 m!1045761))

(declare-fun m!1045899 () Bool)

(assert (=> b!1132588 m!1045899))

(assert (=> bm!48869 m!1045897))

(assert (=> b!1132594 m!1045761))

(assert (=> b!1132594 m!1045761))

(assert (=> b!1132594 m!1045899))

(assert (=> b!1132452 d!131507))

(declare-fun d!131509 () Bool)

(declare-fun e!644623 () Bool)

(assert (=> d!131509 e!644623))

(declare-fun res!756448 () Bool)

(assert (=> d!131509 (=> res!756448 e!644623)))

(declare-fun lt!503213 () Bool)

(assert (=> d!131509 (= res!756448 (not lt!503213))))

(declare-fun lt!503211 () Bool)

(assert (=> d!131509 (= lt!503213 lt!503211)))

(declare-fun lt!503214 () Unit!37052)

(declare-fun e!644624 () Unit!37052)

(assert (=> d!131509 (= lt!503214 e!644624)))

(declare-fun c!110418 () Bool)

(assert (=> d!131509 (= c!110418 lt!503211)))

(declare-fun containsKey!587 (List!24922 (_ BitVec 64)) Bool)

(assert (=> d!131509 (= lt!503211 (containsKey!587 (toList!8060 lt!503122) k0!934))))

(assert (=> d!131509 (= (contains!6551 lt!503122 k0!934) lt!503213)))

(declare-fun b!1132602 () Bool)

(declare-fun lt!503212 () Unit!37052)

(assert (=> b!1132602 (= e!644624 lt!503212)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!416 (List!24922 (_ BitVec 64)) Unit!37052)

(assert (=> b!1132602 (= lt!503212 (lemmaContainsKeyImpliesGetValueByKeyDefined!416 (toList!8060 lt!503122) k0!934))))

(declare-datatypes ((Option!683 0))(
  ( (Some!682 (v!16932 V!43091)) (None!681) )
))
(declare-fun isDefined!456 (Option!683) Bool)

(declare-fun getValueByKey!632 (List!24922 (_ BitVec 64)) Option!683)

(assert (=> b!1132602 (isDefined!456 (getValueByKey!632 (toList!8060 lt!503122) k0!934))))

(declare-fun b!1132603 () Bool)

(declare-fun Unit!37058 () Unit!37052)

(assert (=> b!1132603 (= e!644624 Unit!37058)))

(declare-fun b!1132604 () Bool)

(assert (=> b!1132604 (= e!644623 (isDefined!456 (getValueByKey!632 (toList!8060 lt!503122) k0!934)))))

(assert (= (and d!131509 c!110418) b!1132602))

(assert (= (and d!131509 (not c!110418)) b!1132603))

(assert (= (and d!131509 (not res!756448)) b!1132604))

(declare-fun m!1045901 () Bool)

(assert (=> d!131509 m!1045901))

(declare-fun m!1045903 () Bool)

(assert (=> b!1132602 m!1045903))

(declare-fun m!1045905 () Bool)

(assert (=> b!1132602 m!1045905))

(assert (=> b!1132602 m!1045905))

(declare-fun m!1045907 () Bool)

(assert (=> b!1132602 m!1045907))

(assert (=> b!1132604 m!1045905))

(assert (=> b!1132604 m!1045905))

(assert (=> b!1132604 m!1045907))

(assert (=> b!1132444 d!131509))

(declare-fun b!1132605 () Bool)

(assert (=> b!1132605 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36068 _keys!1208)))))

(assert (=> b!1132605 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36069 _values!996)))))

(declare-fun lt!503219 () ListLongMap!16089)

(declare-fun e!644626 () Bool)

(assert (=> b!1132605 (= e!644626 (= (apply!991 lt!503219 (select (arr!35531 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!18090 (select (arr!35532 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2582 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1132606 () Bool)

(declare-fun e!644628 () Bool)

(assert (=> b!1132606 (= e!644628 e!644626)))

(assert (=> b!1132606 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36068 _keys!1208)))))

(declare-fun res!756452 () Bool)

(assert (=> b!1132606 (= res!756452 (contains!6551 lt!503219 (select (arr!35531 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1132606 (=> (not res!756452) (not e!644626))))

(declare-fun b!1132607 () Bool)

(declare-fun e!644631 () Bool)

(assert (=> b!1132607 (= e!644628 e!644631)))

(declare-fun c!110420 () Bool)

(assert (=> b!1132607 (= c!110420 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36068 _keys!1208)))))

(declare-fun b!1132608 () Bool)

(declare-fun e!644625 () ListLongMap!16089)

(declare-fun call!48873 () ListLongMap!16089)

(assert (=> b!1132608 (= e!644625 call!48873)))

(declare-fun b!1132609 () Bool)

(declare-fun e!644627 () Bool)

(assert (=> b!1132609 (= e!644627 (validKeyInArray!0 (select (arr!35531 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1132609 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1132610 () Bool)

(declare-fun e!644629 () ListLongMap!16089)

(assert (=> b!1132610 (= e!644629 (ListLongMap!16090 Nil!24919))))

(declare-fun b!1132611 () Bool)

(assert (=> b!1132611 (= e!644631 (= lt!503219 (getCurrentListMapNoExtraKeys!4511 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun bm!48870 () Bool)

(assert (=> bm!48870 (= call!48873 (getCurrentListMapNoExtraKeys!4511 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1132613 () Bool)

(declare-fun e!644630 () Bool)

(assert (=> b!1132613 (= e!644630 e!644628)))

(declare-fun c!110421 () Bool)

(assert (=> b!1132613 (= c!110421 e!644627)))

(declare-fun res!756450 () Bool)

(assert (=> b!1132613 (=> (not res!756450) (not e!644627))))

(assert (=> b!1132613 (= res!756450 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36068 _keys!1208)))))

(declare-fun b!1132614 () Bool)

(declare-fun lt!503216 () Unit!37052)

(declare-fun lt!503217 () Unit!37052)

(assert (=> b!1132614 (= lt!503216 lt!503217)))

(declare-fun lt!503220 () V!43091)

(declare-fun lt!503218 () (_ BitVec 64))

(declare-fun lt!503221 () ListLongMap!16089)

(declare-fun lt!503215 () (_ BitVec 64))

(assert (=> b!1132614 (not (contains!6551 (+!3422 lt!503221 (tuple2!18109 lt!503218 lt!503220)) lt!503215))))

(assert (=> b!1132614 (= lt!503217 (addStillNotContains!286 lt!503221 lt!503218 lt!503220 lt!503215))))

(assert (=> b!1132614 (= lt!503215 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1132614 (= lt!503220 (get!18090 (select (arr!35532 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2582 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1132614 (= lt!503218 (select (arr!35531 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1132614 (= lt!503221 call!48873)))

(assert (=> b!1132614 (= e!644625 (+!3422 call!48873 (tuple2!18109 (select (arr!35531 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18090 (select (arr!35532 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2582 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1132615 () Bool)

(assert (=> b!1132615 (= e!644629 e!644625)))

(declare-fun c!110422 () Bool)

(assert (=> b!1132615 (= c!110422 (validKeyInArray!0 (select (arr!35531 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1132616 () Bool)

(declare-fun res!756449 () Bool)

(assert (=> b!1132616 (=> (not res!756449) (not e!644630))))

(assert (=> b!1132616 (= res!756449 (not (contains!6551 lt!503219 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!131511 () Bool)

(assert (=> d!131511 e!644630))

(declare-fun res!756451 () Bool)

(assert (=> d!131511 (=> (not res!756451) (not e!644630))))

(assert (=> d!131511 (= res!756451 (not (contains!6551 lt!503219 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!131511 (= lt!503219 e!644629)))

(declare-fun c!110419 () Bool)

(assert (=> d!131511 (= c!110419 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36068 _keys!1208)))))

(assert (=> d!131511 (validMask!0 mask!1564)))

(assert (=> d!131511 (= (getCurrentListMapNoExtraKeys!4511 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!503219)))

(declare-fun b!1132612 () Bool)

(assert (=> b!1132612 (= e!644631 (isEmpty!979 lt!503219))))

(assert (= (and d!131511 c!110419) b!1132610))

(assert (= (and d!131511 (not c!110419)) b!1132615))

(assert (= (and b!1132615 c!110422) b!1132614))

(assert (= (and b!1132615 (not c!110422)) b!1132608))

(assert (= (or b!1132614 b!1132608) bm!48870))

(assert (= (and d!131511 res!756451) b!1132616))

(assert (= (and b!1132616 res!756449) b!1132613))

(assert (= (and b!1132613 res!756450) b!1132609))

(assert (= (and b!1132613 c!110421) b!1132606))

(assert (= (and b!1132613 (not c!110421)) b!1132607))

(assert (= (and b!1132606 res!756452) b!1132605))

(assert (= (and b!1132607 c!110420) b!1132611))

(assert (= (and b!1132607 (not c!110420)) b!1132612))

(declare-fun b_lambda!19043 () Bool)

(assert (=> (not b_lambda!19043) (not b!1132605)))

(assert (=> b!1132605 t!35862))

(declare-fun b_and!38747 () Bool)

(assert (= b_and!38745 (and (=> t!35862 result!18081) b_and!38747)))

(declare-fun b_lambda!19045 () Bool)

(assert (=> (not b_lambda!19045) (not b!1132614)))

(assert (=> b!1132614 t!35862))

(declare-fun b_and!38749 () Bool)

(assert (= b_and!38747 (and (=> t!35862 result!18081) b_and!38749)))

(declare-fun m!1045909 () Bool)

(assert (=> d!131511 m!1045909))

(assert (=> d!131511 m!1045773))

(declare-fun m!1045911 () Bool)

(assert (=> b!1132606 m!1045911))

(assert (=> b!1132606 m!1045911))

(declare-fun m!1045913 () Bool)

(assert (=> b!1132606 m!1045913))

(declare-fun m!1045915 () Bool)

(assert (=> b!1132612 m!1045915))

(declare-fun m!1045917 () Bool)

(assert (=> b!1132616 m!1045917))

(assert (=> b!1132605 m!1045729))

(assert (=> b!1132605 m!1045911))

(declare-fun m!1045919 () Bool)

(assert (=> b!1132605 m!1045919))

(assert (=> b!1132605 m!1045729))

(declare-fun m!1045921 () Bool)

(assert (=> b!1132605 m!1045921))

(assert (=> b!1132605 m!1045919))

(assert (=> b!1132605 m!1045911))

(declare-fun m!1045923 () Bool)

(assert (=> b!1132605 m!1045923))

(declare-fun m!1045925 () Bool)

(assert (=> b!1132614 m!1045925))

(declare-fun m!1045927 () Bool)

(assert (=> b!1132614 m!1045927))

(assert (=> b!1132614 m!1045729))

(assert (=> b!1132614 m!1045911))

(assert (=> b!1132614 m!1045919))

(assert (=> b!1132614 m!1045729))

(assert (=> b!1132614 m!1045921))

(assert (=> b!1132614 m!1045919))

(declare-fun m!1045929 () Bool)

(assert (=> b!1132614 m!1045929))

(assert (=> b!1132614 m!1045929))

(declare-fun m!1045931 () Bool)

(assert (=> b!1132614 m!1045931))

(declare-fun m!1045933 () Bool)

(assert (=> b!1132611 m!1045933))

(assert (=> b!1132609 m!1045911))

(assert (=> b!1132609 m!1045911))

(declare-fun m!1045935 () Bool)

(assert (=> b!1132609 m!1045935))

(assert (=> bm!48870 m!1045933))

(assert (=> b!1132615 m!1045911))

(assert (=> b!1132615 m!1045911))

(assert (=> b!1132615 m!1045935))

(assert (=> b!1132444 d!131511))

(declare-fun call!48879 () ListLongMap!16089)

(declare-fun bm!48875 () Bool)

(assert (=> bm!48875 (= call!48879 (getCurrentListMapNoExtraKeys!4511 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132623 () Bool)

(declare-fun call!48878 () ListLongMap!16089)

(declare-fun e!644636 () Bool)

(assert (=> b!1132623 (= e!644636 (= call!48878 (-!1181 call!48879 k0!934)))))

(assert (=> b!1132623 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36069 _values!996)))))

(declare-fun d!131513 () Bool)

(declare-fun e!644637 () Bool)

(assert (=> d!131513 e!644637))

(declare-fun res!756455 () Bool)

(assert (=> d!131513 (=> (not res!756455) (not e!644637))))

(assert (=> d!131513 (= res!756455 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36068 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36068 _keys!1208))))))))

(declare-fun lt!503224 () Unit!37052)

(declare-fun choose!1787 (array!73766 array!73768 (_ BitVec 32) (_ BitVec 32) V!43091 V!43091 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37052)

(assert (=> d!131513 (= lt!503224 (choose!1787 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!131513 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!36068 _keys!1208)))))

(assert (=> d!131513 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!437 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!503224)))

(declare-fun bm!48876 () Bool)

(assert (=> bm!48876 (= call!48878 (getCurrentListMapNoExtraKeys!4511 (array!73767 (store (arr!35531 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36068 _keys!1208)) (array!73769 (store (arr!35532 _values!996) i!673 (ValueCellFull!13527 (dynLambda!2582 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36069 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132624 () Bool)

(assert (=> b!1132624 (= e!644637 e!644636)))

(declare-fun c!110425 () Bool)

(assert (=> b!1132624 (= c!110425 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun b!1132625 () Bool)

(assert (=> b!1132625 (= e!644636 (= call!48878 call!48879))))

(assert (=> b!1132625 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36069 _values!996)))))

(assert (= (and d!131513 res!756455) b!1132624))

(assert (= (and b!1132624 c!110425) b!1132623))

(assert (= (and b!1132624 (not c!110425)) b!1132625))

(assert (= (or b!1132623 b!1132625) bm!48875))

(assert (= (or b!1132623 b!1132625) bm!48876))

(declare-fun b_lambda!19047 () Bool)

(assert (=> (not b_lambda!19047) (not bm!48876)))

(assert (=> bm!48876 t!35862))

(declare-fun b_and!38751 () Bool)

(assert (= b_and!38749 (and (=> t!35862 result!18081) b_and!38751)))

(assert (=> bm!48875 m!1045743))

(declare-fun m!1045937 () Bool)

(assert (=> b!1132623 m!1045937))

(declare-fun m!1045939 () Bool)

(assert (=> d!131513 m!1045939))

(assert (=> bm!48876 m!1045767))

(assert (=> bm!48876 m!1045729))

(assert (=> bm!48876 m!1045731))

(declare-fun m!1045941 () Bool)

(assert (=> bm!48876 m!1045941))

(assert (=> b!1132462 d!131513))

(declare-fun d!131515 () Bool)

(assert (=> d!131515 (= (array_inv!27120 _keys!1208) (bvsge (size!36068 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!98344 d!131515))

(declare-fun d!131517 () Bool)

(assert (=> d!131517 (= (array_inv!27121 _values!996) (bvsge (size!36069 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!98344 d!131517))

(declare-fun d!131519 () Bool)

(declare-fun e!644640 () Bool)

(assert (=> d!131519 e!644640))

(declare-fun res!756461 () Bool)

(assert (=> d!131519 (=> (not res!756461) (not e!644640))))

(declare-fun lt!503233 () ListLongMap!16089)

(assert (=> d!131519 (= res!756461 (contains!6551 lt!503233 (_1!9064 (ite c!110383 (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110380 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun lt!503235 () List!24922)

(assert (=> d!131519 (= lt!503233 (ListLongMap!16090 lt!503235))))

(declare-fun lt!503236 () Unit!37052)

(declare-fun lt!503234 () Unit!37052)

(assert (=> d!131519 (= lt!503236 lt!503234)))

(assert (=> d!131519 (= (getValueByKey!632 lt!503235 (_1!9064 (ite c!110383 (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110380 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) (Some!682 (_2!9064 (ite c!110383 (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110380 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!307 (List!24922 (_ BitVec 64) V!43091) Unit!37052)

(assert (=> d!131519 (= lt!503234 (lemmaContainsTupThenGetReturnValue!307 lt!503235 (_1!9064 (ite c!110383 (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110380 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (_2!9064 (ite c!110383 (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110380 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun insertStrictlySorted!399 (List!24922 (_ BitVec 64) V!43091) List!24922)

(assert (=> d!131519 (= lt!503235 (insertStrictlySorted!399 (toList!8060 (ite c!110383 lt!503127 lt!503122)) (_1!9064 (ite c!110383 (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110380 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (_2!9064 (ite c!110383 (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110380 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (=> d!131519 (= (+!3422 (ite c!110383 lt!503127 lt!503122) (ite c!110383 (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110380 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) lt!503233)))

(declare-fun b!1132630 () Bool)

(declare-fun res!756460 () Bool)

(assert (=> b!1132630 (=> (not res!756460) (not e!644640))))

(assert (=> b!1132630 (= res!756460 (= (getValueByKey!632 (toList!8060 lt!503233) (_1!9064 (ite c!110383 (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110380 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) (Some!682 (_2!9064 (ite c!110383 (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110380 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(declare-fun b!1132631 () Bool)

(declare-fun contains!6553 (List!24922 tuple2!18108) Bool)

(assert (=> b!1132631 (= e!644640 (contains!6553 (toList!8060 lt!503233) (ite c!110383 (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110380 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (= (and d!131519 res!756461) b!1132630))

(assert (= (and b!1132630 res!756460) b!1132631))

(declare-fun m!1045943 () Bool)

(assert (=> d!131519 m!1045943))

(declare-fun m!1045945 () Bool)

(assert (=> d!131519 m!1045945))

(declare-fun m!1045947 () Bool)

(assert (=> d!131519 m!1045947))

(declare-fun m!1045949 () Bool)

(assert (=> d!131519 m!1045949))

(declare-fun m!1045951 () Bool)

(assert (=> b!1132630 m!1045951))

(declare-fun m!1045953 () Bool)

(assert (=> b!1132631 m!1045953))

(assert (=> bm!48836 d!131519))

(declare-fun d!131521 () Bool)

(assert (=> d!131521 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1132453 d!131521))

(declare-fun d!131523 () Bool)

(assert (=> d!131523 (contains!6551 (+!3422 (ite c!110383 lt!503127 lt!503122) (tuple2!18109 (ite c!110383 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!110380 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!110383 minValue!944 (ite c!110380 zeroValue!944 minValue!944)))) k0!934)))

(declare-fun lt!503239 () Unit!37052)

(declare-fun choose!1788 (ListLongMap!16089 (_ BitVec 64) V!43091 (_ BitVec 64)) Unit!37052)

(assert (=> d!131523 (= lt!503239 (choose!1788 (ite c!110383 lt!503127 lt!503122) (ite c!110383 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!110380 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!110383 minValue!944 (ite c!110380 zeroValue!944 minValue!944)) k0!934))))

(assert (=> d!131523 (contains!6551 (ite c!110383 lt!503127 lt!503122) k0!934)))

(assert (=> d!131523 (= (addStillContains!721 (ite c!110383 lt!503127 lt!503122) (ite c!110383 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!110380 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!110383 minValue!944 (ite c!110380 zeroValue!944 minValue!944)) k0!934) lt!503239)))

(declare-fun bs!32977 () Bool)

(assert (= bs!32977 d!131523))

(declare-fun m!1045955 () Bool)

(assert (=> bs!32977 m!1045955))

(assert (=> bs!32977 m!1045955))

(declare-fun m!1045957 () Bool)

(assert (=> bs!32977 m!1045957))

(declare-fun m!1045959 () Bool)

(assert (=> bs!32977 m!1045959))

(declare-fun m!1045961 () Bool)

(assert (=> bs!32977 m!1045961))

(assert (=> bm!48841 d!131523))

(declare-fun d!131525 () Bool)

(declare-fun lt!503242 () ListLongMap!16089)

(assert (=> d!131525 (not (contains!6551 lt!503242 k0!934))))

(declare-fun removeStrictlySorted!91 (List!24922 (_ BitVec 64)) List!24922)

(assert (=> d!131525 (= lt!503242 (ListLongMap!16090 (removeStrictlySorted!91 (toList!8060 call!48840) k0!934)))))

(assert (=> d!131525 (= (-!1181 call!48840 k0!934) lt!503242)))

(declare-fun bs!32978 () Bool)

(assert (= bs!32978 d!131525))

(declare-fun m!1045963 () Bool)

(assert (=> bs!32978 m!1045963))

(declare-fun m!1045965 () Bool)

(assert (=> bs!32978 m!1045965))

(assert (=> b!1132459 d!131525))

(declare-fun d!131527 () Bool)

(assert (=> d!131527 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1132450 d!131527))

(declare-fun d!131529 () Bool)

(declare-fun res!756466 () Bool)

(declare-fun e!644645 () Bool)

(assert (=> d!131529 (=> res!756466 e!644645)))

(assert (=> d!131529 (= res!756466 (= (select (arr!35531 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!131529 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!644645)))

(declare-fun b!1132637 () Bool)

(declare-fun e!644646 () Bool)

(assert (=> b!1132637 (= e!644645 e!644646)))

(declare-fun res!756467 () Bool)

(assert (=> b!1132637 (=> (not res!756467) (not e!644646))))

(assert (=> b!1132637 (= res!756467 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!36068 _keys!1208)))))

(declare-fun b!1132638 () Bool)

(assert (=> b!1132638 (= e!644646 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!131529 (not res!756466)) b!1132637))

(assert (= (and b!1132637 res!756467) b!1132638))

(declare-fun m!1045967 () Bool)

(assert (=> d!131529 m!1045967))

(declare-fun m!1045969 () Bool)

(assert (=> b!1132638 m!1045969))

(assert (=> b!1132451 d!131529))

(declare-fun d!131531 () Bool)

(assert (=> d!131531 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!503245 () Unit!37052)

(declare-fun choose!13 (array!73766 (_ BitVec 64) (_ BitVec 32)) Unit!37052)

(assert (=> d!131531 (= lt!503245 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!131531 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!131531 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!503245)))

(declare-fun bs!32979 () Bool)

(assert (= bs!32979 d!131531))

(assert (=> bs!32979 m!1045777))

(declare-fun m!1045971 () Bool)

(assert (=> bs!32979 m!1045971))

(assert (=> b!1132451 d!131531))

(assert (=> bm!48838 d!131511))

(declare-fun d!131533 () Bool)

(declare-fun e!644649 () Bool)

(assert (=> d!131533 e!644649))

(declare-fun c!110428 () Bool)

(assert (=> d!131533 (= c!110428 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!503248 () Unit!37052)

(declare-fun choose!1789 (array!73766 array!73768 (_ BitVec 32) (_ BitVec 32) V!43091 V!43091 (_ BitVec 64) (_ BitVec 32) Int) Unit!37052)

(assert (=> d!131533 (= lt!503248 (choose!1789 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!131533 (validMask!0 mask!1564)))

(assert (=> d!131533 (= (lemmaListMapContainsThenArrayContainsFrom!332 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!503248)))

(declare-fun b!1132643 () Bool)

(assert (=> b!1132643 (= e!644649 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1132644 () Bool)

(assert (=> b!1132644 (= e!644649 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!131533 c!110428) b!1132643))

(assert (= (and d!131533 (not c!110428)) b!1132644))

(declare-fun m!1045973 () Bool)

(assert (=> d!131533 m!1045973))

(assert (=> d!131533 m!1045773))

(assert (=> b!1132643 m!1045781))

(assert (=> b!1132443 d!131533))

(declare-fun d!131535 () Bool)

(declare-fun e!644650 () Bool)

(assert (=> d!131535 e!644650))

(declare-fun res!756468 () Bool)

(assert (=> d!131535 (=> res!756468 e!644650)))

(declare-fun lt!503251 () Bool)

(assert (=> d!131535 (= res!756468 (not lt!503251))))

(declare-fun lt!503249 () Bool)

(assert (=> d!131535 (= lt!503251 lt!503249)))

(declare-fun lt!503252 () Unit!37052)

(declare-fun e!644651 () Unit!37052)

(assert (=> d!131535 (= lt!503252 e!644651)))

(declare-fun c!110429 () Bool)

(assert (=> d!131535 (= c!110429 lt!503249)))

(assert (=> d!131535 (= lt!503249 (containsKey!587 (toList!8060 (ite c!110383 lt!503127 call!48839)) k0!934))))

(assert (=> d!131535 (= (contains!6551 (ite c!110383 lt!503127 call!48839) k0!934) lt!503251)))

(declare-fun b!1132645 () Bool)

(declare-fun lt!503250 () Unit!37052)

(assert (=> b!1132645 (= e!644651 lt!503250)))

(assert (=> b!1132645 (= lt!503250 (lemmaContainsKeyImpliesGetValueByKeyDefined!416 (toList!8060 (ite c!110383 lt!503127 call!48839)) k0!934))))

(assert (=> b!1132645 (isDefined!456 (getValueByKey!632 (toList!8060 (ite c!110383 lt!503127 call!48839)) k0!934))))

(declare-fun b!1132646 () Bool)

(declare-fun Unit!37059 () Unit!37052)

(assert (=> b!1132646 (= e!644651 Unit!37059)))

(declare-fun b!1132647 () Bool)

(assert (=> b!1132647 (= e!644650 (isDefined!456 (getValueByKey!632 (toList!8060 (ite c!110383 lt!503127 call!48839)) k0!934)))))

(assert (= (and d!131535 c!110429) b!1132645))

(assert (= (and d!131535 (not c!110429)) b!1132646))

(assert (= (and d!131535 (not res!756468)) b!1132647))

(declare-fun m!1045975 () Bool)

(assert (=> d!131535 m!1045975))

(declare-fun m!1045977 () Bool)

(assert (=> b!1132645 m!1045977))

(declare-fun m!1045979 () Bool)

(assert (=> b!1132645 m!1045979))

(assert (=> b!1132645 m!1045979))

(declare-fun m!1045981 () Bool)

(assert (=> b!1132645 m!1045981))

(assert (=> b!1132647 m!1045979))

(assert (=> b!1132647 m!1045979))

(assert (=> b!1132647 m!1045981))

(assert (=> bm!48834 d!131535))

(declare-fun d!131537 () Bool)

(assert (=> d!131537 (contains!6551 (+!3422 lt!503122 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934)))

(declare-fun lt!503253 () Unit!37052)

(assert (=> d!131537 (= lt!503253 (choose!1788 lt!503122 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> d!131537 (contains!6551 lt!503122 k0!934)))

(assert (=> d!131537 (= (addStillContains!721 lt!503122 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934) lt!503253)))

(declare-fun bs!32980 () Bool)

(assert (= bs!32980 d!131537))

(assert (=> bs!32980 m!1045749))

(assert (=> bs!32980 m!1045749))

(declare-fun m!1045983 () Bool)

(assert (=> bs!32980 m!1045983))

(declare-fun m!1045985 () Bool)

(assert (=> bs!32980 m!1045985))

(assert (=> bs!32980 m!1045769))

(assert (=> b!1132460 d!131537))

(declare-fun d!131539 () Bool)

(declare-fun e!644652 () Bool)

(assert (=> d!131539 e!644652))

(declare-fun res!756470 () Bool)

(assert (=> d!131539 (=> (not res!756470) (not e!644652))))

(declare-fun lt!503254 () ListLongMap!16089)

(assert (=> d!131539 (= res!756470 (contains!6551 lt!503254 (_1!9064 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(declare-fun lt!503256 () List!24922)

(assert (=> d!131539 (= lt!503254 (ListLongMap!16090 lt!503256))))

(declare-fun lt!503257 () Unit!37052)

(declare-fun lt!503255 () Unit!37052)

(assert (=> d!131539 (= lt!503257 lt!503255)))

(assert (=> d!131539 (= (getValueByKey!632 lt!503256 (_1!9064 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) (Some!682 (_2!9064 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(assert (=> d!131539 (= lt!503255 (lemmaContainsTupThenGetReturnValue!307 lt!503256 (_1!9064 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9064 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(assert (=> d!131539 (= lt!503256 (insertStrictlySorted!399 (toList!8060 lt!503122) (_1!9064 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9064 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(assert (=> d!131539 (= (+!3422 lt!503122 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) lt!503254)))

(declare-fun b!1132648 () Bool)

(declare-fun res!756469 () Bool)

(assert (=> b!1132648 (=> (not res!756469) (not e!644652))))

(assert (=> b!1132648 (= res!756469 (= (getValueByKey!632 (toList!8060 lt!503254) (_1!9064 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) (Some!682 (_2!9064 (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))))

(declare-fun b!1132649 () Bool)

(assert (=> b!1132649 (= e!644652 (contains!6553 (toList!8060 lt!503254) (tuple2!18109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (= (and d!131539 res!756470) b!1132648))

(assert (= (and b!1132648 res!756469) b!1132649))

(declare-fun m!1045987 () Bool)

(assert (=> d!131539 m!1045987))

(declare-fun m!1045989 () Bool)

(assert (=> d!131539 m!1045989))

(declare-fun m!1045991 () Bool)

(assert (=> d!131539 m!1045991))

(declare-fun m!1045993 () Bool)

(assert (=> d!131539 m!1045993))

(declare-fun m!1045995 () Bool)

(assert (=> b!1132648 m!1045995))

(declare-fun m!1045997 () Bool)

(assert (=> b!1132649 m!1045997))

(assert (=> b!1132460 d!131539))

(declare-fun d!131541 () Bool)

(declare-fun e!644653 () Bool)

(assert (=> d!131541 e!644653))

(declare-fun res!756471 () Bool)

(assert (=> d!131541 (=> res!756471 e!644653)))

(declare-fun lt!503260 () Bool)

(assert (=> d!131541 (= res!756471 (not lt!503260))))

(declare-fun lt!503258 () Bool)

(assert (=> d!131541 (= lt!503260 lt!503258)))

(declare-fun lt!503261 () Unit!37052)

(declare-fun e!644654 () Unit!37052)

(assert (=> d!131541 (= lt!503261 e!644654)))

(declare-fun c!110430 () Bool)

(assert (=> d!131541 (= c!110430 lt!503258)))

(assert (=> d!131541 (= lt!503258 (containsKey!587 (toList!8060 call!48838) k0!934))))

(assert (=> d!131541 (= (contains!6551 call!48838 k0!934) lt!503260)))

(declare-fun b!1132650 () Bool)

(declare-fun lt!503259 () Unit!37052)

(assert (=> b!1132650 (= e!644654 lt!503259)))

(assert (=> b!1132650 (= lt!503259 (lemmaContainsKeyImpliesGetValueByKeyDefined!416 (toList!8060 call!48838) k0!934))))

(assert (=> b!1132650 (isDefined!456 (getValueByKey!632 (toList!8060 call!48838) k0!934))))

(declare-fun b!1132651 () Bool)

(declare-fun Unit!37060 () Unit!37052)

(assert (=> b!1132651 (= e!644654 Unit!37060)))

(declare-fun b!1132652 () Bool)

(assert (=> b!1132652 (= e!644653 (isDefined!456 (getValueByKey!632 (toList!8060 call!48838) k0!934)))))

(assert (= (and d!131541 c!110430) b!1132650))

(assert (= (and d!131541 (not c!110430)) b!1132651))

(assert (= (and d!131541 (not res!756471)) b!1132652))

(declare-fun m!1045999 () Bool)

(assert (=> d!131541 m!1045999))

(declare-fun m!1046001 () Bool)

(assert (=> b!1132650 m!1046001))

(declare-fun m!1046003 () Bool)

(assert (=> b!1132650 m!1046003))

(assert (=> b!1132650 m!1046003))

(declare-fun m!1046005 () Bool)

(assert (=> b!1132650 m!1046005))

(assert (=> b!1132652 m!1046003))

(assert (=> b!1132652 m!1046003))

(assert (=> b!1132652 m!1046005))

(assert (=> b!1132460 d!131541))

(declare-fun b!1132661 () Bool)

(declare-fun e!644663 () Bool)

(declare-fun call!48882 () Bool)

(assert (=> b!1132661 (= e!644663 call!48882)))

(declare-fun b!1132662 () Bool)

(declare-fun e!644662 () Bool)

(assert (=> b!1132662 (= e!644662 e!644663)))

(declare-fun lt!503270 () (_ BitVec 64))

(assert (=> b!1132662 (= lt!503270 (select (arr!35531 lt!503120) #b00000000000000000000000000000000))))

(declare-fun lt!503269 () Unit!37052)

(assert (=> b!1132662 (= lt!503269 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!503120 lt!503270 #b00000000000000000000000000000000))))

(assert (=> b!1132662 (arrayContainsKey!0 lt!503120 lt!503270 #b00000000000000000000000000000000)))

(declare-fun lt!503268 () Unit!37052)

(assert (=> b!1132662 (= lt!503268 lt!503269)))

(declare-fun res!756476 () Bool)

(declare-datatypes ((SeekEntryResult!9923 0))(
  ( (MissingZero!9923 (index!42062 (_ BitVec 32))) (Found!9923 (index!42063 (_ BitVec 32))) (Intermediate!9923 (undefined!10735 Bool) (index!42064 (_ BitVec 32)) (x!101513 (_ BitVec 32))) (Undefined!9923) (MissingVacant!9923 (index!42065 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!73766 (_ BitVec 32)) SeekEntryResult!9923)

(assert (=> b!1132662 (= res!756476 (= (seekEntryOrOpen!0 (select (arr!35531 lt!503120) #b00000000000000000000000000000000) lt!503120 mask!1564) (Found!9923 #b00000000000000000000000000000000)))))

(assert (=> b!1132662 (=> (not res!756476) (not e!644663))))

(declare-fun bm!48879 () Bool)

(assert (=> bm!48879 (= call!48882 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!503120 mask!1564))))

(declare-fun b!1132664 () Bool)

(declare-fun e!644661 () Bool)

(assert (=> b!1132664 (= e!644661 e!644662)))

(declare-fun c!110433 () Bool)

(assert (=> b!1132664 (= c!110433 (validKeyInArray!0 (select (arr!35531 lt!503120) #b00000000000000000000000000000000)))))

(declare-fun d!131543 () Bool)

(declare-fun res!756477 () Bool)

(assert (=> d!131543 (=> res!756477 e!644661)))

(assert (=> d!131543 (= res!756477 (bvsge #b00000000000000000000000000000000 (size!36068 lt!503120)))))

(assert (=> d!131543 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!503120 mask!1564) e!644661)))

(declare-fun b!1132663 () Bool)

(assert (=> b!1132663 (= e!644662 call!48882)))

(assert (= (and d!131543 (not res!756477)) b!1132664))

(assert (= (and b!1132664 c!110433) b!1132662))

(assert (= (and b!1132664 (not c!110433)) b!1132663))

(assert (= (and b!1132662 res!756476) b!1132661))

(assert (= (or b!1132661 b!1132663) bm!48879))

(declare-fun m!1046007 () Bool)

(assert (=> b!1132662 m!1046007))

(declare-fun m!1046009 () Bool)

(assert (=> b!1132662 m!1046009))

(declare-fun m!1046011 () Bool)

(assert (=> b!1132662 m!1046011))

(assert (=> b!1132662 m!1046007))

(declare-fun m!1046013 () Bool)

(assert (=> b!1132662 m!1046013))

(declare-fun m!1046015 () Bool)

(assert (=> bm!48879 m!1046015))

(assert (=> b!1132664 m!1046007))

(assert (=> b!1132664 m!1046007))

(declare-fun m!1046017 () Bool)

(assert (=> b!1132664 m!1046017))

(assert (=> b!1132461 d!131543))

(declare-fun b!1132665 () Bool)

(assert (=> b!1132665 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36068 lt!503120)))))

(assert (=> b!1132665 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36069 lt!503129)))))

(declare-fun e!644665 () Bool)

(declare-fun lt!503275 () ListLongMap!16089)

(assert (=> b!1132665 (= e!644665 (= (apply!991 lt!503275 (select (arr!35531 lt!503120) (bvadd #b00000000000000000000000000000001 from!1455))) (get!18090 (select (arr!35532 lt!503129) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2582 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1132666 () Bool)

(declare-fun e!644667 () Bool)

(assert (=> b!1132666 (= e!644667 e!644665)))

(assert (=> b!1132666 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36068 lt!503120)))))

(declare-fun res!756481 () Bool)

(assert (=> b!1132666 (= res!756481 (contains!6551 lt!503275 (select (arr!35531 lt!503120) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1132666 (=> (not res!756481) (not e!644665))))

(declare-fun b!1132667 () Bool)

(declare-fun e!644670 () Bool)

(assert (=> b!1132667 (= e!644667 e!644670)))

(declare-fun c!110435 () Bool)

(assert (=> b!1132667 (= c!110435 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36068 lt!503120)))))

(declare-fun b!1132668 () Bool)

(declare-fun e!644664 () ListLongMap!16089)

(declare-fun call!48883 () ListLongMap!16089)

(assert (=> b!1132668 (= e!644664 call!48883)))

(declare-fun b!1132669 () Bool)

(declare-fun e!644666 () Bool)

(assert (=> b!1132669 (= e!644666 (validKeyInArray!0 (select (arr!35531 lt!503120) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1132669 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1132670 () Bool)

(declare-fun e!644668 () ListLongMap!16089)

(assert (=> b!1132670 (= e!644668 (ListLongMap!16090 Nil!24919))))

(declare-fun b!1132671 () Bool)

(assert (=> b!1132671 (= e!644670 (= lt!503275 (getCurrentListMapNoExtraKeys!4511 lt!503120 lt!503129 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun bm!48880 () Bool)

(assert (=> bm!48880 (= call!48883 (getCurrentListMapNoExtraKeys!4511 lt!503120 lt!503129 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1132673 () Bool)

(declare-fun e!644669 () Bool)

(assert (=> b!1132673 (= e!644669 e!644667)))

(declare-fun c!110436 () Bool)

(assert (=> b!1132673 (= c!110436 e!644666)))

(declare-fun res!756479 () Bool)

(assert (=> b!1132673 (=> (not res!756479) (not e!644666))))

(assert (=> b!1132673 (= res!756479 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36068 lt!503120)))))

(declare-fun b!1132674 () Bool)

(declare-fun lt!503272 () Unit!37052)

(declare-fun lt!503273 () Unit!37052)

(assert (=> b!1132674 (= lt!503272 lt!503273)))

(declare-fun lt!503277 () ListLongMap!16089)

(declare-fun lt!503274 () (_ BitVec 64))

(declare-fun lt!503276 () V!43091)

(declare-fun lt!503271 () (_ BitVec 64))

(assert (=> b!1132674 (not (contains!6551 (+!3422 lt!503277 (tuple2!18109 lt!503274 lt!503276)) lt!503271))))

(assert (=> b!1132674 (= lt!503273 (addStillNotContains!286 lt!503277 lt!503274 lt!503276 lt!503271))))

(assert (=> b!1132674 (= lt!503271 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1132674 (= lt!503276 (get!18090 (select (arr!35532 lt!503129) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2582 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1132674 (= lt!503274 (select (arr!35531 lt!503120) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1132674 (= lt!503277 call!48883)))

(assert (=> b!1132674 (= e!644664 (+!3422 call!48883 (tuple2!18109 (select (arr!35531 lt!503120) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18090 (select (arr!35532 lt!503129) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2582 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1132675 () Bool)

(assert (=> b!1132675 (= e!644668 e!644664)))

(declare-fun c!110437 () Bool)

(assert (=> b!1132675 (= c!110437 (validKeyInArray!0 (select (arr!35531 lt!503120) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1132676 () Bool)

(declare-fun res!756478 () Bool)

(assert (=> b!1132676 (=> (not res!756478) (not e!644669))))

(assert (=> b!1132676 (= res!756478 (not (contains!6551 lt!503275 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!131545 () Bool)

(assert (=> d!131545 e!644669))

(declare-fun res!756480 () Bool)

(assert (=> d!131545 (=> (not res!756480) (not e!644669))))

(assert (=> d!131545 (= res!756480 (not (contains!6551 lt!503275 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!131545 (= lt!503275 e!644668)))

(declare-fun c!110434 () Bool)

(assert (=> d!131545 (= c!110434 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36068 lt!503120)))))

(assert (=> d!131545 (validMask!0 mask!1564)))

(assert (=> d!131545 (= (getCurrentListMapNoExtraKeys!4511 lt!503120 lt!503129 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!503275)))

(declare-fun b!1132672 () Bool)

(assert (=> b!1132672 (= e!644670 (isEmpty!979 lt!503275))))

(assert (= (and d!131545 c!110434) b!1132670))

(assert (= (and d!131545 (not c!110434)) b!1132675))

(assert (= (and b!1132675 c!110437) b!1132674))

(assert (= (and b!1132675 (not c!110437)) b!1132668))

(assert (= (or b!1132674 b!1132668) bm!48880))

(assert (= (and d!131545 res!756480) b!1132676))

(assert (= (and b!1132676 res!756478) b!1132673))

(assert (= (and b!1132673 res!756479) b!1132669))

(assert (= (and b!1132673 c!110436) b!1132666))

(assert (= (and b!1132673 (not c!110436)) b!1132667))

(assert (= (and b!1132666 res!756481) b!1132665))

(assert (= (and b!1132667 c!110435) b!1132671))

(assert (= (and b!1132667 (not c!110435)) b!1132672))

(declare-fun b_lambda!19049 () Bool)

(assert (=> (not b_lambda!19049) (not b!1132665)))

(assert (=> b!1132665 t!35862))

(declare-fun b_and!38753 () Bool)

(assert (= b_and!38751 (and (=> t!35862 result!18081) b_and!38753)))

(declare-fun b_lambda!19051 () Bool)

(assert (=> (not b_lambda!19051) (not b!1132674)))

(assert (=> b!1132674 t!35862))

(declare-fun b_and!38755 () Bool)

(assert (= b_and!38753 (and (=> t!35862 result!18081) b_and!38755)))

(declare-fun m!1046019 () Bool)

(assert (=> d!131545 m!1046019))

(assert (=> d!131545 m!1045773))

(declare-fun m!1046021 () Bool)

(assert (=> b!1132666 m!1046021))

(assert (=> b!1132666 m!1046021))

(declare-fun m!1046023 () Bool)

(assert (=> b!1132666 m!1046023))

(declare-fun m!1046025 () Bool)

(assert (=> b!1132672 m!1046025))

(declare-fun m!1046027 () Bool)

(assert (=> b!1132676 m!1046027))

(assert (=> b!1132665 m!1045729))

(assert (=> b!1132665 m!1046021))

(declare-fun m!1046029 () Bool)

(assert (=> b!1132665 m!1046029))

(assert (=> b!1132665 m!1045729))

(declare-fun m!1046031 () Bool)

(assert (=> b!1132665 m!1046031))

(assert (=> b!1132665 m!1046029))

(assert (=> b!1132665 m!1046021))

(declare-fun m!1046033 () Bool)

(assert (=> b!1132665 m!1046033))

(declare-fun m!1046035 () Bool)

(assert (=> b!1132674 m!1046035))

(declare-fun m!1046037 () Bool)

(assert (=> b!1132674 m!1046037))

(assert (=> b!1132674 m!1045729))

(assert (=> b!1132674 m!1046021))

(assert (=> b!1132674 m!1046029))

(assert (=> b!1132674 m!1045729))

(assert (=> b!1132674 m!1046031))

(assert (=> b!1132674 m!1046029))

(declare-fun m!1046039 () Bool)

(assert (=> b!1132674 m!1046039))

(assert (=> b!1132674 m!1046039))

(declare-fun m!1046041 () Bool)

(assert (=> b!1132674 m!1046041))

(declare-fun m!1046043 () Bool)

(assert (=> b!1132671 m!1046043))

(assert (=> b!1132669 m!1046021))

(assert (=> b!1132669 m!1046021))

(declare-fun m!1046045 () Bool)

(assert (=> b!1132669 m!1046045))

(assert (=> bm!48880 m!1046043))

(assert (=> b!1132675 m!1046021))

(assert (=> b!1132675 m!1046021))

(assert (=> b!1132675 m!1046045))

(assert (=> bm!48840 d!131545))

(declare-fun b!1132677 () Bool)

(declare-fun e!644673 () Bool)

(declare-fun call!48884 () Bool)

(assert (=> b!1132677 (= e!644673 call!48884)))

(declare-fun b!1132678 () Bool)

(declare-fun e!644672 () Bool)

(assert (=> b!1132678 (= e!644672 e!644673)))

(declare-fun lt!503280 () (_ BitVec 64))

(assert (=> b!1132678 (= lt!503280 (select (arr!35531 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!503279 () Unit!37052)

(assert (=> b!1132678 (= lt!503279 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!503280 #b00000000000000000000000000000000))))

(assert (=> b!1132678 (arrayContainsKey!0 _keys!1208 lt!503280 #b00000000000000000000000000000000)))

(declare-fun lt!503278 () Unit!37052)

(assert (=> b!1132678 (= lt!503278 lt!503279)))

(declare-fun res!756482 () Bool)

(assert (=> b!1132678 (= res!756482 (= (seekEntryOrOpen!0 (select (arr!35531 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9923 #b00000000000000000000000000000000)))))

(assert (=> b!1132678 (=> (not res!756482) (not e!644673))))

(declare-fun bm!48881 () Bool)

(assert (=> bm!48881 (= call!48884 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1132680 () Bool)

(declare-fun e!644671 () Bool)

(assert (=> b!1132680 (= e!644671 e!644672)))

(declare-fun c!110438 () Bool)

(assert (=> b!1132680 (= c!110438 (validKeyInArray!0 (select (arr!35531 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!131547 () Bool)

(declare-fun res!756483 () Bool)

(assert (=> d!131547 (=> res!756483 e!644671)))

(assert (=> d!131547 (= res!756483 (bvsge #b00000000000000000000000000000000 (size!36068 _keys!1208)))))

(assert (=> d!131547 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!644671)))

(declare-fun b!1132679 () Bool)

(assert (=> b!1132679 (= e!644672 call!48884)))

(assert (= (and d!131547 (not res!756483)) b!1132680))

(assert (= (and b!1132680 c!110438) b!1132678))

(assert (= (and b!1132680 (not c!110438)) b!1132679))

(assert (= (and b!1132678 res!756482) b!1132677))

(assert (= (or b!1132677 b!1132679) bm!48881))

(assert (=> b!1132678 m!1045967))

(declare-fun m!1046047 () Bool)

(assert (=> b!1132678 m!1046047))

(declare-fun m!1046049 () Bool)

(assert (=> b!1132678 m!1046049))

(assert (=> b!1132678 m!1045967))

(declare-fun m!1046051 () Bool)

(assert (=> b!1132678 m!1046051))

(declare-fun m!1046053 () Bool)

(assert (=> bm!48881 m!1046053))

(assert (=> b!1132680 m!1045967))

(assert (=> b!1132680 m!1045967))

(declare-fun m!1046055 () Bool)

(assert (=> b!1132680 m!1046055))

(assert (=> b!1132456 d!131547))

(declare-fun d!131549 () Bool)

(declare-fun res!756484 () Bool)

(declare-fun e!644674 () Bool)

(assert (=> d!131549 (=> res!756484 e!644674)))

(assert (=> d!131549 (= res!756484 (= (select (arr!35531 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) k0!934))))

(assert (=> d!131549 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)) e!644674)))

(declare-fun b!1132681 () Bool)

(declare-fun e!644675 () Bool)

(assert (=> b!1132681 (= e!644674 e!644675)))

(declare-fun res!756485 () Bool)

(assert (=> b!1132681 (=> (not res!756485) (not e!644675))))

(assert (=> b!1132681 (= res!756485 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!36068 _keys!1208)))))

(declare-fun b!1132682 () Bool)

(assert (=> b!1132682 (= e!644675 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(assert (= (and d!131549 (not res!756484)) b!1132681))

(assert (= (and b!1132681 res!756485) b!1132682))

(assert (=> d!131549 m!1045911))

(declare-fun m!1046057 () Bool)

(assert (=> b!1132682 m!1046057))

(assert (=> b!1132457 d!131549))

(declare-fun bm!48884 () Bool)

(declare-fun call!48887 () Bool)

(declare-fun c!110441 () Bool)

(assert (=> bm!48884 (= call!48887 (arrayNoDuplicates!0 lt!503120 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!110441 (Cons!24917 (select (arr!35531 lt!503120) #b00000000000000000000000000000000) Nil!24918) Nil!24918)))))

(declare-fun b!1132693 () Bool)

(declare-fun e!644687 () Bool)

(declare-fun contains!6554 (List!24921 (_ BitVec 64)) Bool)

(assert (=> b!1132693 (= e!644687 (contains!6554 Nil!24918 (select (arr!35531 lt!503120) #b00000000000000000000000000000000)))))

(declare-fun b!1132694 () Bool)

(declare-fun e!644684 () Bool)

(assert (=> b!1132694 (= e!644684 call!48887)))

(declare-fun b!1132695 () Bool)

(assert (=> b!1132695 (= e!644684 call!48887)))

(declare-fun d!131551 () Bool)

(declare-fun res!756494 () Bool)

(declare-fun e!644686 () Bool)

(assert (=> d!131551 (=> res!756494 e!644686)))

(assert (=> d!131551 (= res!756494 (bvsge #b00000000000000000000000000000000 (size!36068 lt!503120)))))

(assert (=> d!131551 (= (arrayNoDuplicates!0 lt!503120 #b00000000000000000000000000000000 Nil!24918) e!644686)))

(declare-fun b!1132696 () Bool)

(declare-fun e!644685 () Bool)

(assert (=> b!1132696 (= e!644686 e!644685)))

(declare-fun res!756493 () Bool)

(assert (=> b!1132696 (=> (not res!756493) (not e!644685))))

(assert (=> b!1132696 (= res!756493 (not e!644687))))

(declare-fun res!756492 () Bool)

(assert (=> b!1132696 (=> (not res!756492) (not e!644687))))

(assert (=> b!1132696 (= res!756492 (validKeyInArray!0 (select (arr!35531 lt!503120) #b00000000000000000000000000000000)))))

(declare-fun b!1132697 () Bool)

(assert (=> b!1132697 (= e!644685 e!644684)))

(assert (=> b!1132697 (= c!110441 (validKeyInArray!0 (select (arr!35531 lt!503120) #b00000000000000000000000000000000)))))

(assert (= (and d!131551 (not res!756494)) b!1132696))

(assert (= (and b!1132696 res!756492) b!1132693))

(assert (= (and b!1132696 res!756493) b!1132697))

(assert (= (and b!1132697 c!110441) b!1132695))

(assert (= (and b!1132697 (not c!110441)) b!1132694))

(assert (= (or b!1132695 b!1132694) bm!48884))

(assert (=> bm!48884 m!1046007))

(declare-fun m!1046059 () Bool)

(assert (=> bm!48884 m!1046059))

(assert (=> b!1132693 m!1046007))

(assert (=> b!1132693 m!1046007))

(declare-fun m!1046061 () Bool)

(assert (=> b!1132693 m!1046061))

(assert (=> b!1132696 m!1046007))

(assert (=> b!1132696 m!1046007))

(assert (=> b!1132696 m!1046017))

(assert (=> b!1132697 m!1046007))

(assert (=> b!1132697 m!1046007))

(assert (=> b!1132697 m!1046017))

(assert (=> b!1132448 d!131551))

(declare-fun bm!48885 () Bool)

(declare-fun call!48888 () Bool)

(declare-fun c!110442 () Bool)

(assert (=> bm!48885 (= call!48888 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!110442 (Cons!24917 (select (arr!35531 _keys!1208) #b00000000000000000000000000000000) Nil!24918) Nil!24918)))))

(declare-fun b!1132698 () Bool)

(declare-fun e!644691 () Bool)

(assert (=> b!1132698 (= e!644691 (contains!6554 Nil!24918 (select (arr!35531 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1132699 () Bool)

(declare-fun e!644688 () Bool)

(assert (=> b!1132699 (= e!644688 call!48888)))

(declare-fun b!1132700 () Bool)

(assert (=> b!1132700 (= e!644688 call!48888)))

(declare-fun d!131553 () Bool)

(declare-fun res!756497 () Bool)

(declare-fun e!644690 () Bool)

(assert (=> d!131553 (=> res!756497 e!644690)))

(assert (=> d!131553 (= res!756497 (bvsge #b00000000000000000000000000000000 (size!36068 _keys!1208)))))

(assert (=> d!131553 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24918) e!644690)))

(declare-fun b!1132701 () Bool)

(declare-fun e!644689 () Bool)

(assert (=> b!1132701 (= e!644690 e!644689)))

(declare-fun res!756496 () Bool)

(assert (=> b!1132701 (=> (not res!756496) (not e!644689))))

(assert (=> b!1132701 (= res!756496 (not e!644691))))

(declare-fun res!756495 () Bool)

(assert (=> b!1132701 (=> (not res!756495) (not e!644691))))

(assert (=> b!1132701 (= res!756495 (validKeyInArray!0 (select (arr!35531 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1132702 () Bool)

(assert (=> b!1132702 (= e!644689 e!644688)))

(assert (=> b!1132702 (= c!110442 (validKeyInArray!0 (select (arr!35531 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!131553 (not res!756497)) b!1132701))

(assert (= (and b!1132701 res!756495) b!1132698))

(assert (= (and b!1132701 res!756496) b!1132702))

(assert (= (and b!1132702 c!110442) b!1132700))

(assert (= (and b!1132702 (not c!110442)) b!1132699))

(assert (= (or b!1132700 b!1132699) bm!48885))

(assert (=> bm!48885 m!1045967))

(declare-fun m!1046063 () Bool)

(assert (=> bm!48885 m!1046063))

(assert (=> b!1132698 m!1045967))

(assert (=> b!1132698 m!1045967))

(declare-fun m!1046065 () Bool)

(assert (=> b!1132698 m!1046065))

(assert (=> b!1132701 m!1045967))

(assert (=> b!1132701 m!1045967))

(assert (=> b!1132701 m!1046055))

(assert (=> b!1132702 m!1045967))

(assert (=> b!1132702 m!1045967))

(assert (=> b!1132702 m!1046055))

(assert (=> b!1132436 d!131553))

(declare-fun b!1132710 () Bool)

(declare-fun e!644696 () Bool)

(assert (=> b!1132710 (= e!644696 tp_is_empty!28473)))

(declare-fun mapIsEmpty!44537 () Bool)

(declare-fun mapRes!44537 () Bool)

(assert (=> mapIsEmpty!44537 mapRes!44537))

(declare-fun b!1132709 () Bool)

(declare-fun e!644697 () Bool)

(assert (=> b!1132709 (= e!644697 tp_is_empty!28473)))

(declare-fun condMapEmpty!44537 () Bool)

(declare-fun mapDefault!44537 () ValueCell!13527)

(assert (=> mapNonEmpty!44531 (= condMapEmpty!44537 (= mapRest!44531 ((as const (Array (_ BitVec 32) ValueCell!13527)) mapDefault!44537)))))

(assert (=> mapNonEmpty!44531 (= tp!84537 (and e!644696 mapRes!44537))))

(declare-fun mapNonEmpty!44537 () Bool)

(declare-fun tp!84547 () Bool)

(assert (=> mapNonEmpty!44537 (= mapRes!44537 (and tp!84547 e!644697))))

(declare-fun mapKey!44537 () (_ BitVec 32))

(declare-fun mapRest!44537 () (Array (_ BitVec 32) ValueCell!13527))

(declare-fun mapValue!44537 () ValueCell!13527)

(assert (=> mapNonEmpty!44537 (= mapRest!44531 (store mapRest!44537 mapKey!44537 mapValue!44537))))

(assert (= (and mapNonEmpty!44531 condMapEmpty!44537) mapIsEmpty!44537))

(assert (= (and mapNonEmpty!44531 (not condMapEmpty!44537)) mapNonEmpty!44537))

(assert (= (and mapNonEmpty!44537 ((_ is ValueCellFull!13527) mapValue!44537)) b!1132709))

(assert (= (and mapNonEmpty!44531 ((_ is ValueCellFull!13527) mapDefault!44537)) b!1132710))

(declare-fun m!1046067 () Bool)

(assert (=> mapNonEmpty!44537 m!1046067))

(declare-fun b_lambda!19053 () Bool)

(assert (= b_lambda!19043 (or (and start!98344 b_free!23943) b_lambda!19053)))

(declare-fun b_lambda!19055 () Bool)

(assert (= b_lambda!19037 (or (and start!98344 b_free!23943) b_lambda!19055)))

(declare-fun b_lambda!19057 () Bool)

(assert (= b_lambda!19041 (or (and start!98344 b_free!23943) b_lambda!19057)))

(declare-fun b_lambda!19059 () Bool)

(assert (= b_lambda!19049 (or (and start!98344 b_free!23943) b_lambda!19059)))

(declare-fun b_lambda!19061 () Bool)

(assert (= b_lambda!19051 (or (and start!98344 b_free!23943) b_lambda!19061)))

(declare-fun b_lambda!19063 () Bool)

(assert (= b_lambda!19039 (or (and start!98344 b_free!23943) b_lambda!19063)))

(declare-fun b_lambda!19065 () Bool)

(assert (= b_lambda!19035 (or (and start!98344 b_free!23943) b_lambda!19065)))

(declare-fun b_lambda!19067 () Bool)

(assert (= b_lambda!19045 (or (and start!98344 b_free!23943) b_lambda!19067)))

(declare-fun b_lambda!19069 () Bool)

(assert (= b_lambda!19047 (or (and start!98344 b_free!23943) b_lambda!19069)))

(check-sat (not b!1132594) (not bm!48868) (not b!1132588) (not b_lambda!19069) (not b_lambda!19065) (not d!131525) (not b!1132572) (not b!1132605) (not b_lambda!19033) (not b!1132578) (not b!1132698) (not b!1132584) (not b!1132664) (not b!1132590) (not b!1132697) (not b!1132702) (not d!131545) (not b!1132652) (not d!131523) (not b!1132669) (not bm!48875) (not mapNonEmpty!44537) (not b!1132672) (not b!1132643) (not b!1132647) (not bm!48884) (not b!1132583) (not d!131513) (not b!1132645) (not b!1132638) (not b!1132623) (not b!1132602) (not d!131509) (not b_lambda!19063) (not b!1132582) (not b!1132649) (not b!1132593) (not bm!48880) (not bm!48881) (not b!1132585) (not b!1132671) (not b!1132676) (not d!131535) (not b_lambda!19053) (not b_next!23943) (not d!131539) (not b!1132581) (not b!1132595) (not b!1132680) (not d!131537) (not b!1132616) (not b_lambda!19055) (not b!1132614) (not b!1132604) (not b!1132576) (not b!1132615) (not b!1132650) (not bm!48885) (not bm!48876) (not b_lambda!19061) b_and!38755 (not b_lambda!19059) (not d!131533) (not b!1132630) (not b!1132611) (not b_lambda!19057) (not d!131531) (not b!1132674) (not b!1132696) (not b_lambda!19067) (not b!1132693) (not b!1132701) (not b!1132579) (not b!1132666) (not b!1132609) tp_is_empty!28473 (not b!1132573) (not b!1132606) (not b!1132631) (not b!1132662) (not b!1132612) (not d!131541) (not bm!48869) (not b!1132678) (not b!1132665) (not bm!48879) (not b!1132675) (not bm!48870) (not b!1132682) (not b!1132648) (not d!131519) (not b!1132591) (not d!131511) (not d!131505) (not d!131507))
(check-sat b_and!38755 (not b_next!23943))

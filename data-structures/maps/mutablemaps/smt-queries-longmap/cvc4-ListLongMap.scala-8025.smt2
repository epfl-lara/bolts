; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99030 () Bool)

(assert start!99030)

(declare-fun b_free!24599 () Bool)

(declare-fun b_next!24599 () Bool)

(assert (=> start!99030 (= b_free!24599 (not b_next!24599))))

(declare-fun tp!86509 () Bool)

(declare-fun b_and!40061 () Bool)

(assert (=> start!99030 (= tp!86509 b_and!40061)))

(declare-fun b!1162502 () Bool)

(declare-fun e!661061 () Bool)

(declare-fun e!661065 () Bool)

(assert (=> b!1162502 (= e!661061 (not e!661065))))

(declare-fun res!771190 () Bool)

(assert (=> b!1162502 (=> res!771190 e!661065)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1162502 (= res!771190 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!75048 0))(
  ( (array!75049 (arr!36171 (Array (_ BitVec 32) (_ BitVec 64))) (size!36708 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75048)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75048 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1162502 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38251 0))(
  ( (Unit!38252) )
))
(declare-fun lt!523467 () Unit!38251)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75048 (_ BitVec 64) (_ BitVec 32)) Unit!38251)

(assert (=> b!1162502 (= lt!523467 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1162503 () Bool)

(declare-fun e!661074 () Bool)

(declare-fun tp_is_empty!29129 () Bool)

(assert (=> b!1162503 (= e!661074 tp_is_empty!29129)))

(declare-fun b!1162504 () Bool)

(declare-fun res!771202 () Bool)

(declare-fun e!661076 () Bool)

(assert (=> b!1162504 (=> (not res!771202) (not e!661076))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!43965 0))(
  ( (V!43966 (val!14621 Int)) )
))
(declare-datatypes ((ValueCell!13855 0))(
  ( (ValueCellFull!13855 (v!17259 V!43965)) (EmptyCell!13855) )
))
(declare-datatypes ((array!75050 0))(
  ( (array!75051 (arr!36172 (Array (_ BitVec 32) ValueCell!13855)) (size!36709 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75050)

(assert (=> b!1162504 (= res!771202 (and (= (size!36709 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36708 _keys!1208) (size!36709 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1162505 () Bool)

(declare-fun e!661067 () Bool)

(assert (=> b!1162505 (= e!661065 e!661067)))

(declare-fun res!771192 () Bool)

(assert (=> b!1162505 (=> res!771192 e!661067)))

(assert (=> b!1162505 (= res!771192 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!43965)

(declare-fun lt!523461 () array!75050)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18712 0))(
  ( (tuple2!18713 (_1!9366 (_ BitVec 64)) (_2!9366 V!43965)) )
))
(declare-datatypes ((List!25488 0))(
  ( (Nil!25485) (Cons!25484 (h!26693 tuple2!18712) (t!37086 List!25488)) )
))
(declare-datatypes ((ListLongMap!16693 0))(
  ( (ListLongMap!16694 (toList!8362 List!25488)) )
))
(declare-fun lt!523460 () ListLongMap!16693)

(declare-fun lt!523457 () array!75048)

(declare-fun minValue!944 () V!43965)

(declare-fun getCurrentListMapNoExtraKeys!4796 (array!75048 array!75050 (_ BitVec 32) (_ BitVec 32) V!43965 V!43965 (_ BitVec 32) Int) ListLongMap!16693)

(assert (=> b!1162505 (= lt!523460 (getCurrentListMapNoExtraKeys!4796 lt!523457 lt!523461 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!523452 () V!43965)

(assert (=> b!1162505 (= lt!523461 (array!75051 (store (arr!36172 _values!996) i!673 (ValueCellFull!13855 lt!523452)) (size!36709 _values!996)))))

(declare-fun dynLambda!2794 (Int (_ BitVec 64)) V!43965)

(assert (=> b!1162505 (= lt!523452 (dynLambda!2794 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!523465 () ListLongMap!16693)

(assert (=> b!1162505 (= lt!523465 (getCurrentListMapNoExtraKeys!4796 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1162506 () Bool)

(declare-fun res!771203 () Bool)

(assert (=> b!1162506 (=> (not res!771203) (not e!661076))))

(assert (=> b!1162506 (= res!771203 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36708 _keys!1208))))))

(declare-fun lt!523446 () ListLongMap!16693)

(declare-fun b!1162507 () Bool)

(declare-fun e!661064 () Bool)

(assert (=> b!1162507 (= e!661064 (= lt!523446 (getCurrentListMapNoExtraKeys!4796 lt!523457 lt!523461 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1162508 () Bool)

(declare-fun res!771195 () Bool)

(assert (=> b!1162508 (=> (not res!771195) (not e!661076))))

(declare-datatypes ((List!25489 0))(
  ( (Nil!25486) (Cons!25485 (h!26694 (_ BitVec 64)) (t!37087 List!25489)) )
))
(declare-fun arrayNoDuplicates!0 (array!75048 (_ BitVec 32) List!25489) Bool)

(assert (=> b!1162508 (= res!771195 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25486))))

(declare-fun bm!56726 () Bool)

(declare-fun call!56736 () ListLongMap!16693)

(declare-fun call!56735 () ListLongMap!16693)

(assert (=> bm!56726 (= call!56736 call!56735)))

(declare-fun b!1162509 () Bool)

(declare-fun e!661072 () Bool)

(declare-fun call!56730 () ListLongMap!16693)

(declare-fun call!56729 () ListLongMap!16693)

(assert (=> b!1162509 (= e!661072 (= call!56730 call!56729))))

(declare-fun b!1162510 () Bool)

(declare-fun res!771194 () Bool)

(assert (=> b!1162510 (=> (not res!771194) (not e!661076))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1162510 (= res!771194 (validKeyInArray!0 k!934))))

(declare-fun b!1162511 () Bool)

(declare-fun e!661077 () Unit!38251)

(declare-fun Unit!38253 () Unit!38251)

(assert (=> b!1162511 (= e!661077 Unit!38253)))

(declare-fun lt!523463 () Bool)

(assert (=> b!1162511 (= lt!523463 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!116201 () Bool)

(assert (=> b!1162511 (= c!116201 (and (not lt!523463) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!523450 () Unit!38251)

(declare-fun e!661066 () Unit!38251)

(assert (=> b!1162511 (= lt!523450 e!661066)))

(declare-fun lt!523451 () Unit!38251)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!551 (array!75048 array!75050 (_ BitVec 32) (_ BitVec 32) V!43965 V!43965 (_ BitVec 64) (_ BitVec 32) Int) Unit!38251)

(assert (=> b!1162511 (= lt!523451 (lemmaListMapContainsThenArrayContainsFrom!551 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116199 () Bool)

(assert (=> b!1162511 (= c!116199 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!771193 () Bool)

(declare-fun e!661062 () Bool)

(assert (=> b!1162511 (= res!771193 e!661062)))

(declare-fun e!661069 () Bool)

(assert (=> b!1162511 (=> (not res!771193) (not e!661069))))

(assert (=> b!1162511 e!661069))

(declare-fun lt!523447 () Unit!38251)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75048 (_ BitVec 32) (_ BitVec 32)) Unit!38251)

(assert (=> b!1162511 (= lt!523447 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1162511 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25486)))

(declare-fun lt!523458 () Unit!38251)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75048 (_ BitVec 64) (_ BitVec 32) List!25489) Unit!38251)

(assert (=> b!1162511 (= lt!523458 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25486))))

(assert (=> b!1162511 false))

(declare-fun b!1162512 () Bool)

(declare-fun e!661068 () Bool)

(assert (=> b!1162512 (= e!661067 e!661068)))

(declare-fun res!771189 () Bool)

(assert (=> b!1162512 (=> res!771189 e!661068)))

(assert (=> b!1162512 (= res!771189 (not (= (select (arr!36171 _keys!1208) from!1455) k!934)))))

(assert (=> b!1162512 e!661072))

(declare-fun c!116198 () Bool)

(assert (=> b!1162512 (= c!116198 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!523466 () Unit!38251)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!652 (array!75048 array!75050 (_ BitVec 32) (_ BitVec 32) V!43965 V!43965 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38251)

(assert (=> b!1162512 (= lt!523466 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!652 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162513 () Bool)

(declare-fun res!771191 () Bool)

(assert (=> b!1162513 (=> (not res!771191) (not e!661076))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75048 (_ BitVec 32)) Bool)

(assert (=> b!1162513 (= res!771191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1162514 () Bool)

(assert (=> b!1162514 (= e!661069 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1162515 () Bool)

(declare-fun e!661073 () Unit!38251)

(declare-fun Unit!38254 () Unit!38251)

(assert (=> b!1162515 (= e!661073 Unit!38254)))

(declare-fun b!1162516 () Bool)

(declare-fun e!661075 () Unit!38251)

(assert (=> b!1162516 (= e!661075 e!661073)))

(declare-fun c!116197 () Bool)

(assert (=> b!1162516 (= c!116197 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!523463))))

(declare-fun b!1162517 () Bool)

(declare-fun Unit!38255 () Unit!38251)

(assert (=> b!1162517 (= e!661077 Unit!38255)))

(declare-fun b!1162518 () Bool)

(declare-fun c!116200 () Bool)

(assert (=> b!1162518 (= c!116200 (and (not lt!523463) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1162518 (= e!661066 e!661075)))

(declare-fun b!1162519 () Bool)

(declare-fun call!56732 () Bool)

(assert (=> b!1162519 call!56732))

(declare-fun lt!523456 () Unit!38251)

(declare-fun call!56731 () Unit!38251)

(assert (=> b!1162519 (= lt!523456 call!56731)))

(assert (=> b!1162519 (= e!661073 lt!523456)))

(declare-fun b!1162520 () Bool)

(declare-fun res!771201 () Bool)

(assert (=> b!1162520 (=> (not res!771201) (not e!661061))))

(assert (=> b!1162520 (= res!771201 (arrayNoDuplicates!0 lt!523457 #b00000000000000000000000000000000 Nil!25486))))

(declare-fun b!1162521 () Bool)

(declare-fun -!1430 (ListLongMap!16693 (_ BitVec 64)) ListLongMap!16693)

(assert (=> b!1162521 (= e!661072 (= call!56730 (-!1430 call!56729 k!934)))))

(declare-fun bm!56727 () Bool)

(declare-fun call!56734 () Bool)

(declare-fun lt!523449 () ListLongMap!16693)

(declare-fun contains!6840 (ListLongMap!16693 (_ BitVec 64)) Bool)

(assert (=> bm!56727 (= call!56734 (contains!6840 (ite c!116201 lt!523449 call!56736) k!934))))

(declare-fun b!1162522 () Bool)

(assert (=> b!1162522 (= e!661062 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!56728 () Bool)

(declare-fun call!56733 () Unit!38251)

(assert (=> bm!56728 (= call!56731 call!56733)))

(declare-fun b!1162523 () Bool)

(declare-fun lt!523462 () Unit!38251)

(assert (=> b!1162523 (= e!661075 lt!523462)))

(assert (=> b!1162523 (= lt!523462 call!56731)))

(assert (=> b!1162523 call!56732))

(declare-fun bm!56729 () Bool)

(assert (=> bm!56729 (= call!56729 (getCurrentListMapNoExtraKeys!4796 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162524 () Bool)

(assert (=> b!1162524 (= e!661062 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!523463) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!45518 () Bool)

(declare-fun mapRes!45518 () Bool)

(declare-fun tp!86508 () Bool)

(assert (=> mapNonEmpty!45518 (= mapRes!45518 (and tp!86508 e!661074))))

(declare-fun mapKey!45518 () (_ BitVec 32))

(declare-fun mapValue!45518 () ValueCell!13855)

(declare-fun mapRest!45518 () (Array (_ BitVec 32) ValueCell!13855))

(assert (=> mapNonEmpty!45518 (= (arr!36172 _values!996) (store mapRest!45518 mapKey!45518 mapValue!45518))))

(declare-fun lt!523448 () ListLongMap!16693)

(declare-fun bm!56730 () Bool)

(declare-fun +!3683 (ListLongMap!16693 tuple2!18712) ListLongMap!16693)

(assert (=> bm!56730 (= call!56735 (+!3683 (ite c!116201 lt!523449 lt!523448) (ite c!116201 (tuple2!18713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!116200 (tuple2!18713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1162525 () Bool)

(assert (=> b!1162525 (= e!661076 e!661061)))

(declare-fun res!771198 () Bool)

(assert (=> b!1162525 (=> (not res!771198) (not e!661061))))

(assert (=> b!1162525 (= res!771198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!523457 mask!1564))))

(assert (=> b!1162525 (= lt!523457 (array!75049 (store (arr!36171 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36708 _keys!1208)))))

(declare-fun bm!56731 () Bool)

(declare-fun addStillContains!981 (ListLongMap!16693 (_ BitVec 64) V!43965 (_ BitVec 64)) Unit!38251)

(assert (=> bm!56731 (= call!56733 (addStillContains!981 lt!523448 (ite (or c!116201 c!116200) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!116201 c!116200) zeroValue!944 minValue!944) k!934))))

(declare-fun bm!56732 () Bool)

(assert (=> bm!56732 (= call!56730 (getCurrentListMapNoExtraKeys!4796 lt!523457 lt!523461 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162526 () Bool)

(assert (=> b!1162526 (contains!6840 call!56735 k!934)))

(declare-fun lt!523454 () Unit!38251)

(assert (=> b!1162526 (= lt!523454 (addStillContains!981 lt!523449 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1162526 call!56734))

(assert (=> b!1162526 (= lt!523449 (+!3683 lt!523448 (tuple2!18713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!523464 () Unit!38251)

(assert (=> b!1162526 (= lt!523464 call!56733)))

(assert (=> b!1162526 (= e!661066 lt!523454)))

(declare-fun bm!56733 () Bool)

(assert (=> bm!56733 (= call!56732 call!56734)))

(declare-fun b!1162527 () Bool)

(assert (=> b!1162527 (= e!661068 true)))

(assert (=> b!1162527 e!661064))

(declare-fun res!771200 () Bool)

(assert (=> b!1162527 (=> (not res!771200) (not e!661064))))

(assert (=> b!1162527 (= res!771200 (= lt!523446 lt!523448))))

(assert (=> b!1162527 (= lt!523446 (-!1430 lt!523465 k!934))))

(declare-fun lt!523459 () V!43965)

(assert (=> b!1162527 (= (-!1430 (+!3683 lt!523448 (tuple2!18713 (select (arr!36171 _keys!1208) from!1455) lt!523459)) (select (arr!36171 _keys!1208) from!1455)) lt!523448)))

(declare-fun lt!523455 () Unit!38251)

(declare-fun addThenRemoveForNewKeyIsSame!264 (ListLongMap!16693 (_ BitVec 64) V!43965) Unit!38251)

(assert (=> b!1162527 (= lt!523455 (addThenRemoveForNewKeyIsSame!264 lt!523448 (select (arr!36171 _keys!1208) from!1455) lt!523459))))

(declare-fun get!18484 (ValueCell!13855 V!43965) V!43965)

(assert (=> b!1162527 (= lt!523459 (get!18484 (select (arr!36172 _values!996) from!1455) lt!523452))))

(declare-fun lt!523453 () Unit!38251)

(assert (=> b!1162527 (= lt!523453 e!661077)))

(declare-fun c!116202 () Bool)

(assert (=> b!1162527 (= c!116202 (contains!6840 lt!523448 k!934))))

(assert (=> b!1162527 (= lt!523448 (getCurrentListMapNoExtraKeys!4796 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!45518 () Bool)

(assert (=> mapIsEmpty!45518 mapRes!45518))

(declare-fun res!771197 () Bool)

(assert (=> start!99030 (=> (not res!771197) (not e!661076))))

(assert (=> start!99030 (= res!771197 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36708 _keys!1208))))))

(assert (=> start!99030 e!661076))

(assert (=> start!99030 tp_is_empty!29129))

(declare-fun array_inv!27550 (array!75048) Bool)

(assert (=> start!99030 (array_inv!27550 _keys!1208)))

(assert (=> start!99030 true))

(assert (=> start!99030 tp!86509))

(declare-fun e!661063 () Bool)

(declare-fun array_inv!27551 (array!75050) Bool)

(assert (=> start!99030 (and (array_inv!27551 _values!996) e!661063)))

(declare-fun b!1162528 () Bool)

(declare-fun e!661070 () Bool)

(assert (=> b!1162528 (= e!661063 (and e!661070 mapRes!45518))))

(declare-fun condMapEmpty!45518 () Bool)

(declare-fun mapDefault!45518 () ValueCell!13855)


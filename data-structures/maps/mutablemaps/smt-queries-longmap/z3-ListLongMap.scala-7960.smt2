; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98638 () Bool)

(assert start!98638)

(declare-fun b_free!24207 () Bool)

(declare-fun b_next!24207 () Bool)

(assert (=> start!98638 (= b_free!24207 (not b_next!24207))))

(declare-fun tp!85332 () Bool)

(declare-fun b_and!39277 () Bool)

(assert (=> start!98638 (= tp!85332 b_and!39277)))

(declare-fun bm!52022 () Bool)

(declare-datatypes ((Unit!37498 0))(
  ( (Unit!37499) )
))
(declare-fun call!52028 () Unit!37498)

(declare-fun call!52029 () Unit!37498)

(assert (=> bm!52022 (= call!52028 call!52029)))

(declare-fun b!1144470 () Bool)

(declare-fun res!762370 () Bool)

(declare-fun e!651077 () Bool)

(assert (=> b!1144470 (=> (not res!762370) (not e!651077))))

(declare-datatypes ((array!74282 0))(
  ( (array!74283 (arr!35788 (Array (_ BitVec 32) (_ BitVec 64))) (size!36325 (_ BitVec 32))) )
))
(declare-fun lt!510670 () array!74282)

(declare-datatypes ((List!25150 0))(
  ( (Nil!25147) (Cons!25146 (h!26355 (_ BitVec 64)) (t!36356 List!25150)) )
))
(declare-fun arrayNoDuplicates!0 (array!74282 (_ BitVec 32) List!25150) Bool)

(assert (=> b!1144470 (= res!762370 (arrayNoDuplicates!0 lt!510670 #b00000000000000000000000000000000 Nil!25147))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((V!43443 0))(
  ( (V!43444 (val!14425 Int)) )
))
(declare-datatypes ((tuple2!18350 0))(
  ( (tuple2!18351 (_1!9185 (_ BitVec 64)) (_2!9185 V!43443)) )
))
(declare-datatypes ((List!25151 0))(
  ( (Nil!25148) (Cons!25147 (h!26356 tuple2!18350) (t!36357 List!25151)) )
))
(declare-datatypes ((ListLongMap!16331 0))(
  ( (ListLongMap!16332 (toList!8181 List!25151)) )
))
(declare-fun lt!510660 () ListLongMap!16331)

(declare-fun b!1144471 () Bool)

(declare-fun lt!510661 () ListLongMap!16331)

(declare-fun e!651074 () Bool)

(declare-fun -!1274 (ListLongMap!16331 (_ BitVec 64)) ListLongMap!16331)

(assert (=> b!1144471 (= e!651074 (= (-!1274 lt!510660 k0!934) lt!510661))))

(declare-fun b!1144472 () Bool)

(declare-fun e!651073 () Bool)

(declare-fun call!52032 () ListLongMap!16331)

(declare-fun call!52027 () ListLongMap!16331)

(assert (=> b!1144472 (= e!651073 (= call!52032 call!52027))))

(declare-fun b!1144474 () Bool)

(assert (=> b!1144474 (= e!651073 (= call!52032 (-!1274 call!52027 k0!934)))))

(declare-fun b!1144475 () Bool)

(declare-fun res!762379 () Bool)

(declare-fun e!651075 () Bool)

(assert (=> b!1144475 (=> (not res!762379) (not e!651075))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun _keys!1208 () array!74282)

(assert (=> b!1144475 (= res!762379 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36325 _keys!1208))))))

(declare-fun zeroValue!944 () V!43443)

(declare-fun call!52030 () ListLongMap!16331)

(declare-fun c!112671 () Bool)

(declare-fun c!112669 () Bool)

(declare-fun bm!52023 () Bool)

(declare-fun lt!510674 () ListLongMap!16331)

(declare-fun minValue!944 () V!43443)

(declare-fun +!3525 (ListLongMap!16331 tuple2!18350) ListLongMap!16331)

(assert (=> bm!52023 (= call!52030 (+!3525 (ite c!112669 lt!510674 lt!510661) (ite c!112669 (tuple2!18351 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112671 (tuple2!18351 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18351 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun mapIsEmpty!44930 () Bool)

(declare-fun mapRes!44930 () Bool)

(assert (=> mapIsEmpty!44930 mapRes!44930))

(declare-fun call!52026 () ListLongMap!16331)

(declare-fun call!52031 () Bool)

(declare-fun bm!52024 () Bool)

(declare-fun contains!6683 (ListLongMap!16331 (_ BitVec 64)) Bool)

(assert (=> bm!52024 (= call!52031 (contains!6683 (ite c!112669 lt!510674 call!52026) k0!934))))

(declare-fun b!1144476 () Bool)

(declare-fun e!651067 () Unit!37498)

(declare-fun Unit!37500 () Unit!37498)

(assert (=> b!1144476 (= e!651067 Unit!37500)))

(declare-fun b!1144477 () Bool)

(declare-fun e!651076 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!74282 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1144477 (= e!651076 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!52025 () Bool)

(declare-fun addStillContains!822 (ListLongMap!16331 (_ BitVec 64) V!43443 (_ BitVec 64)) Unit!37498)

(assert (=> bm!52025 (= call!52029 (addStillContains!822 lt!510661 (ite (or c!112669 c!112671) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!112669 c!112671) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1144478 () Bool)

(declare-fun e!651069 () Unit!37498)

(declare-fun Unit!37501 () Unit!37498)

(assert (=> b!1144478 (= e!651069 Unit!37501)))

(declare-fun b!1144479 () Bool)

(declare-fun Unit!37502 () Unit!37498)

(assert (=> b!1144479 (= e!651069 Unit!37502)))

(declare-fun lt!510668 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1144479 (= lt!510668 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1144479 (= c!112669 (and (not lt!510668) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!510671 () Unit!37498)

(declare-fun e!651065 () Unit!37498)

(assert (=> b!1144479 (= lt!510671 e!651065)))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!510662 () Unit!37498)

(declare-datatypes ((ValueCell!13659 0))(
  ( (ValueCellFull!13659 (v!17063 V!43443)) (EmptyCell!13659) )
))
(declare-datatypes ((array!74284 0))(
  ( (array!74285 (arr!35789 (Array (_ BitVec 32) ValueCell!13659)) (size!36326 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74284)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!417 (array!74282 array!74284 (_ BitVec 32) (_ BitVec 32) V!43443 V!43443 (_ BitVec 64) (_ BitVec 32) Int) Unit!37498)

(assert (=> b!1144479 (= lt!510662 (lemmaListMapContainsThenArrayContainsFrom!417 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112674 () Bool)

(assert (=> b!1144479 (= c!112674 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!762378 () Bool)

(declare-fun e!651079 () Bool)

(assert (=> b!1144479 (= res!762378 e!651079)))

(assert (=> b!1144479 (=> (not res!762378) (not e!651076))))

(assert (=> b!1144479 e!651076))

(declare-fun lt!510664 () Unit!37498)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74282 (_ BitVec 32) (_ BitVec 32)) Unit!37498)

(assert (=> b!1144479 (= lt!510664 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1144479 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25147)))

(declare-fun lt!510677 () Unit!37498)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74282 (_ BitVec 64) (_ BitVec 32) List!25150) Unit!37498)

(assert (=> b!1144479 (= lt!510677 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25147))))

(assert (=> b!1144479 false))

(declare-fun b!1144480 () Bool)

(assert (=> b!1144480 (= e!651075 e!651077)))

(declare-fun res!762369 () Bool)

(assert (=> b!1144480 (=> (not res!762369) (not e!651077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74282 (_ BitVec 32)) Bool)

(assert (=> b!1144480 (= res!762369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!510670 mask!1564))))

(assert (=> b!1144480 (= lt!510670 (array!74283 (store (arr!35788 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36325 _keys!1208)))))

(declare-fun b!1144481 () Bool)

(declare-fun res!762371 () Bool)

(assert (=> b!1144481 (=> (not res!762371) (not e!651075))))

(assert (=> b!1144481 (= res!762371 (and (= (size!36326 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36325 _keys!1208) (size!36326 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!44930 () Bool)

(declare-fun tp!85333 () Bool)

(declare-fun e!651081 () Bool)

(assert (=> mapNonEmpty!44930 (= mapRes!44930 (and tp!85333 e!651081))))

(declare-fun mapKey!44930 () (_ BitVec 32))

(declare-fun mapValue!44930 () ValueCell!13659)

(declare-fun mapRest!44930 () (Array (_ BitVec 32) ValueCell!13659))

(assert (=> mapNonEmpty!44930 (= (arr!35789 _values!996) (store mapRest!44930 mapKey!44930 mapValue!44930))))

(declare-fun b!1144482 () Bool)

(declare-fun call!52025 () Bool)

(assert (=> b!1144482 call!52025))

(declare-fun lt!510659 () Unit!37498)

(assert (=> b!1144482 (= lt!510659 call!52028)))

(assert (=> b!1144482 (= e!651067 lt!510659)))

(declare-fun res!762374 () Bool)

(assert (=> start!98638 (=> (not res!762374) (not e!651075))))

(assert (=> start!98638 (= res!762374 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36325 _keys!1208))))))

(assert (=> start!98638 e!651075))

(declare-fun tp_is_empty!28737 () Bool)

(assert (=> start!98638 tp_is_empty!28737))

(declare-fun array_inv!27300 (array!74282) Bool)

(assert (=> start!98638 (array_inv!27300 _keys!1208)))

(assert (=> start!98638 true))

(assert (=> start!98638 tp!85332))

(declare-fun e!651070 () Bool)

(declare-fun array_inv!27301 (array!74284) Bool)

(assert (=> start!98638 (and (array_inv!27301 _values!996) e!651070)))

(declare-fun b!1144473 () Bool)

(declare-fun e!651071 () Bool)

(declare-fun e!651072 () Bool)

(assert (=> b!1144473 (= e!651071 e!651072)))

(declare-fun res!762382 () Bool)

(assert (=> b!1144473 (=> res!762382 e!651072)))

(assert (=> b!1144473 (= res!762382 (not (= from!1455 i!673)))))

(declare-fun lt!510658 () array!74284)

(declare-fun lt!510669 () ListLongMap!16331)

(declare-fun getCurrentListMapNoExtraKeys!4623 (array!74282 array!74284 (_ BitVec 32) (_ BitVec 32) V!43443 V!43443 (_ BitVec 32) Int) ListLongMap!16331)

(assert (=> b!1144473 (= lt!510669 (getCurrentListMapNoExtraKeys!4623 lt!510670 lt!510658 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!510667 () V!43443)

(assert (=> b!1144473 (= lt!510658 (array!74285 (store (arr!35789 _values!996) i!673 (ValueCellFull!13659 lt!510667)) (size!36326 _values!996)))))

(declare-fun dynLambda!2668 (Int (_ BitVec 64)) V!43443)

(assert (=> b!1144473 (= lt!510667 (dynLambda!2668 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1144473 (= lt!510660 (getCurrentListMapNoExtraKeys!4623 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1144483 () Bool)

(assert (=> b!1144483 (contains!6683 call!52030 k0!934)))

(declare-fun lt!510665 () Unit!37498)

(assert (=> b!1144483 (= lt!510665 (addStillContains!822 lt!510674 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1144483 call!52031))

(assert (=> b!1144483 (= lt!510674 (+!3525 lt!510661 (tuple2!18351 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!510675 () Unit!37498)

(assert (=> b!1144483 (= lt!510675 call!52029)))

(assert (=> b!1144483 (= e!651065 lt!510665)))

(declare-fun b!1144484 () Bool)

(declare-fun e!651080 () Bool)

(assert (=> b!1144484 (= e!651070 (and e!651080 mapRes!44930))))

(declare-fun condMapEmpty!44930 () Bool)

(declare-fun mapDefault!44930 () ValueCell!13659)

(assert (=> b!1144484 (= condMapEmpty!44930 (= (arr!35789 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13659)) mapDefault!44930)))))

(declare-fun b!1144485 () Bool)

(assert (=> b!1144485 (= e!651079 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!510668) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!52026 () Bool)

(assert (=> bm!52026 (= call!52032 (getCurrentListMapNoExtraKeys!4623 lt!510670 lt!510658 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144486 () Bool)

(assert (=> b!1144486 (= c!112671 (and (not lt!510668) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!651066 () Unit!37498)

(assert (=> b!1144486 (= e!651065 e!651066)))

(declare-fun b!1144487 () Bool)

(assert (=> b!1144487 (= e!651079 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!52027 () Bool)

(assert (=> bm!52027 (= call!52027 (getCurrentListMapNoExtraKeys!4623 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144488 () Bool)

(declare-fun res!762377 () Bool)

(assert (=> b!1144488 (=> (not res!762377) (not e!651075))))

(assert (=> b!1144488 (= res!762377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1144489 () Bool)

(declare-fun res!762376 () Bool)

(assert (=> b!1144489 (=> (not res!762376) (not e!651075))))

(assert (=> b!1144489 (= res!762376 (= (select (arr!35788 _keys!1208) i!673) k0!934))))

(declare-fun b!1144490 () Bool)

(declare-fun lt!510673 () Unit!37498)

(assert (=> b!1144490 (= e!651066 lt!510673)))

(assert (=> b!1144490 (= lt!510673 call!52028)))

(assert (=> b!1144490 call!52025))

(declare-fun b!1144491 () Bool)

(assert (=> b!1144491 (= e!651066 e!651067)))

(declare-fun c!112672 () Bool)

(assert (=> b!1144491 (= c!112672 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!510668))))

(declare-fun bm!52028 () Bool)

(assert (=> bm!52028 (= call!52026 call!52030)))

(declare-fun bm!52029 () Bool)

(assert (=> bm!52029 (= call!52025 call!52031)))

(declare-fun b!1144492 () Bool)

(declare-fun e!651078 () Bool)

(assert (=> b!1144492 (= e!651078 true)))

(assert (=> b!1144492 e!651074))

(declare-fun res!762383 () Bool)

(assert (=> b!1144492 (=> (not res!762383) (not e!651074))))

(declare-fun lt!510678 () V!43443)

(assert (=> b!1144492 (= res!762383 (= (-!1274 (+!3525 lt!510661 (tuple2!18351 (select (arr!35788 _keys!1208) from!1455) lt!510678)) (select (arr!35788 _keys!1208) from!1455)) lt!510661))))

(declare-fun lt!510663 () Unit!37498)

(declare-fun addThenRemoveForNewKeyIsSame!129 (ListLongMap!16331 (_ BitVec 64) V!43443) Unit!37498)

(assert (=> b!1144492 (= lt!510663 (addThenRemoveForNewKeyIsSame!129 lt!510661 (select (arr!35788 _keys!1208) from!1455) lt!510678))))

(declare-fun get!18219 (ValueCell!13659 V!43443) V!43443)

(assert (=> b!1144492 (= lt!510678 (get!18219 (select (arr!35789 _values!996) from!1455) lt!510667))))

(declare-fun lt!510672 () Unit!37498)

(assert (=> b!1144492 (= lt!510672 e!651069)))

(declare-fun c!112670 () Bool)

(assert (=> b!1144492 (= c!112670 (contains!6683 lt!510661 k0!934))))

(assert (=> b!1144492 (= lt!510661 (getCurrentListMapNoExtraKeys!4623 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144493 () Bool)

(assert (=> b!1144493 (= e!651072 e!651078)))

(declare-fun res!762373 () Bool)

(assert (=> b!1144493 (=> res!762373 e!651078)))

(assert (=> b!1144493 (= res!762373 (not (= (select (arr!35788 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1144493 e!651073))

(declare-fun c!112673 () Bool)

(assert (=> b!1144493 (= c!112673 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!510666 () Unit!37498)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!528 (array!74282 array!74284 (_ BitVec 32) (_ BitVec 32) V!43443 V!43443 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37498)

(assert (=> b!1144493 (= lt!510666 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!528 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144494 () Bool)

(assert (=> b!1144494 (= e!651080 tp_is_empty!28737)))

(declare-fun b!1144495 () Bool)

(assert (=> b!1144495 (= e!651077 (not e!651071))))

(declare-fun res!762372 () Bool)

(assert (=> b!1144495 (=> res!762372 e!651071)))

(assert (=> b!1144495 (= res!762372 (bvsgt from!1455 i!673))))

(assert (=> b!1144495 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!510676 () Unit!37498)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74282 (_ BitVec 64) (_ BitVec 32)) Unit!37498)

(assert (=> b!1144495 (= lt!510676 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1144496 () Bool)

(declare-fun res!762380 () Bool)

(assert (=> b!1144496 (=> (not res!762380) (not e!651075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1144496 (= res!762380 (validMask!0 mask!1564))))

(declare-fun b!1144497 () Bool)

(declare-fun res!762375 () Bool)

(assert (=> b!1144497 (=> (not res!762375) (not e!651075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1144497 (= res!762375 (validKeyInArray!0 k0!934))))

(declare-fun b!1144498 () Bool)

(assert (=> b!1144498 (= e!651081 tp_is_empty!28737)))

(declare-fun b!1144499 () Bool)

(declare-fun res!762381 () Bool)

(assert (=> b!1144499 (=> (not res!762381) (not e!651075))))

(assert (=> b!1144499 (= res!762381 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25147))))

(assert (= (and start!98638 res!762374) b!1144496))

(assert (= (and b!1144496 res!762380) b!1144481))

(assert (= (and b!1144481 res!762371) b!1144488))

(assert (= (and b!1144488 res!762377) b!1144499))

(assert (= (and b!1144499 res!762381) b!1144475))

(assert (= (and b!1144475 res!762379) b!1144497))

(assert (= (and b!1144497 res!762375) b!1144489))

(assert (= (and b!1144489 res!762376) b!1144480))

(assert (= (and b!1144480 res!762369) b!1144470))

(assert (= (and b!1144470 res!762370) b!1144495))

(assert (= (and b!1144495 (not res!762372)) b!1144473))

(assert (= (and b!1144473 (not res!762382)) b!1144493))

(assert (= (and b!1144493 c!112673) b!1144474))

(assert (= (and b!1144493 (not c!112673)) b!1144472))

(assert (= (or b!1144474 b!1144472) bm!52026))

(assert (= (or b!1144474 b!1144472) bm!52027))

(assert (= (and b!1144493 (not res!762373)) b!1144492))

(assert (= (and b!1144492 c!112670) b!1144479))

(assert (= (and b!1144492 (not c!112670)) b!1144478))

(assert (= (and b!1144479 c!112669) b!1144483))

(assert (= (and b!1144479 (not c!112669)) b!1144486))

(assert (= (and b!1144486 c!112671) b!1144490))

(assert (= (and b!1144486 (not c!112671)) b!1144491))

(assert (= (and b!1144491 c!112672) b!1144482))

(assert (= (and b!1144491 (not c!112672)) b!1144476))

(assert (= (or b!1144490 b!1144482) bm!52022))

(assert (= (or b!1144490 b!1144482) bm!52028))

(assert (= (or b!1144490 b!1144482) bm!52029))

(assert (= (or b!1144483 bm!52029) bm!52024))

(assert (= (or b!1144483 bm!52022) bm!52025))

(assert (= (or b!1144483 bm!52028) bm!52023))

(assert (= (and b!1144479 c!112674) b!1144487))

(assert (= (and b!1144479 (not c!112674)) b!1144485))

(assert (= (and b!1144479 res!762378) b!1144477))

(assert (= (and b!1144492 res!762383) b!1144471))

(assert (= (and b!1144484 condMapEmpty!44930) mapIsEmpty!44930))

(assert (= (and b!1144484 (not condMapEmpty!44930)) mapNonEmpty!44930))

(get-info :version)

(assert (= (and mapNonEmpty!44930 ((_ is ValueCellFull!13659) mapValue!44930)) b!1144498))

(assert (= (and b!1144484 ((_ is ValueCellFull!13659) mapDefault!44930)) b!1144494))

(assert (= start!98638 b!1144484))

(declare-fun b_lambda!19331 () Bool)

(assert (=> (not b_lambda!19331) (not b!1144473)))

(declare-fun t!36355 () Bool)

(declare-fun tb!9027 () Bool)

(assert (=> (and start!98638 (= defaultEntry!1004 defaultEntry!1004) t!36355) tb!9027))

(declare-fun result!18611 () Bool)

(assert (=> tb!9027 (= result!18611 tp_is_empty!28737)))

(assert (=> b!1144473 t!36355))

(declare-fun b_and!39279 () Bool)

(assert (= b_and!39277 (and (=> t!36355 result!18611) b_and!39279)))

(declare-fun m!1055529 () Bool)

(assert (=> b!1144492 m!1055529))

(declare-fun m!1055531 () Bool)

(assert (=> b!1144492 m!1055531))

(assert (=> b!1144492 m!1055531))

(declare-fun m!1055533 () Bool)

(assert (=> b!1144492 m!1055533))

(declare-fun m!1055535 () Bool)

(assert (=> b!1144492 m!1055535))

(declare-fun m!1055537 () Bool)

(assert (=> b!1144492 m!1055537))

(declare-fun m!1055539 () Bool)

(assert (=> b!1144492 m!1055539))

(assert (=> b!1144492 m!1055539))

(assert (=> b!1144492 m!1055531))

(declare-fun m!1055541 () Bool)

(assert (=> b!1144492 m!1055541))

(assert (=> b!1144492 m!1055537))

(declare-fun m!1055543 () Bool)

(assert (=> b!1144492 m!1055543))

(declare-fun m!1055545 () Bool)

(assert (=> bm!52023 m!1055545))

(declare-fun m!1055547 () Bool)

(assert (=> bm!52026 m!1055547))

(declare-fun m!1055549 () Bool)

(assert (=> b!1144471 m!1055549))

(declare-fun m!1055551 () Bool)

(assert (=> b!1144474 m!1055551))

(declare-fun m!1055553 () Bool)

(assert (=> b!1144495 m!1055553))

(declare-fun m!1055555 () Bool)

(assert (=> b!1144495 m!1055555))

(assert (=> bm!52027 m!1055535))

(declare-fun m!1055557 () Bool)

(assert (=> b!1144497 m!1055557))

(declare-fun m!1055559 () Bool)

(assert (=> bm!52024 m!1055559))

(declare-fun m!1055561 () Bool)

(assert (=> b!1144488 m!1055561))

(declare-fun m!1055563 () Bool)

(assert (=> b!1144473 m!1055563))

(declare-fun m!1055565 () Bool)

(assert (=> b!1144473 m!1055565))

(declare-fun m!1055567 () Bool)

(assert (=> b!1144473 m!1055567))

(declare-fun m!1055569 () Bool)

(assert (=> b!1144473 m!1055569))

(declare-fun m!1055571 () Bool)

(assert (=> b!1144479 m!1055571))

(declare-fun m!1055573 () Bool)

(assert (=> b!1144479 m!1055573))

(declare-fun m!1055575 () Bool)

(assert (=> b!1144479 m!1055575))

(declare-fun m!1055577 () Bool)

(assert (=> b!1144479 m!1055577))

(declare-fun m!1055579 () Bool)

(assert (=> b!1144483 m!1055579))

(declare-fun m!1055581 () Bool)

(assert (=> b!1144483 m!1055581))

(declare-fun m!1055583 () Bool)

(assert (=> b!1144483 m!1055583))

(assert (=> b!1144493 m!1055531))

(declare-fun m!1055585 () Bool)

(assert (=> b!1144493 m!1055585))

(declare-fun m!1055587 () Bool)

(assert (=> b!1144470 m!1055587))

(declare-fun m!1055589 () Bool)

(assert (=> bm!52025 m!1055589))

(declare-fun m!1055591 () Bool)

(assert (=> b!1144487 m!1055591))

(declare-fun m!1055593 () Bool)

(assert (=> mapNonEmpty!44930 m!1055593))

(assert (=> b!1144477 m!1055591))

(declare-fun m!1055595 () Bool)

(assert (=> b!1144489 m!1055595))

(declare-fun m!1055597 () Bool)

(assert (=> b!1144480 m!1055597))

(declare-fun m!1055599 () Bool)

(assert (=> b!1144480 m!1055599))

(declare-fun m!1055601 () Bool)

(assert (=> start!98638 m!1055601))

(declare-fun m!1055603 () Bool)

(assert (=> start!98638 m!1055603))

(declare-fun m!1055605 () Bool)

(assert (=> b!1144496 m!1055605))

(declare-fun m!1055607 () Bool)

(assert (=> b!1144499 m!1055607))

(check-sat (not b!1144473) b_and!39279 (not b!1144493) (not b!1144474) (not bm!52027) (not b!1144488) tp_is_empty!28737 (not start!98638) (not b!1144483) (not mapNonEmpty!44930) (not b!1144497) (not b!1144496) (not bm!52023) (not b!1144471) (not b!1144480) (not bm!52024) (not b!1144479) (not b!1144492) (not b!1144495) (not b!1144487) (not b!1144499) (not b_lambda!19331) (not b!1144477) (not b_next!24207) (not b!1144470) (not bm!52025) (not bm!52026))
(check-sat b_and!39279 (not b_next!24207))

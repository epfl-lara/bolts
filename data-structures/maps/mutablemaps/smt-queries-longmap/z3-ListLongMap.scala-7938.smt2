; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98506 () Bool)

(assert start!98506)

(declare-fun b_free!24075 () Bool)

(declare-fun b_next!24075 () Bool)

(assert (=> start!98506 (= b_free!24075 (not b_next!24075))))

(declare-fun tp!84936 () Bool)

(declare-fun b_and!39013 () Bool)

(assert (=> start!98506 (= tp!84936 b_and!39013)))

(declare-datatypes ((V!43267 0))(
  ( (V!43268 (val!14359 Int)) )
))
(declare-fun zeroValue!944 () V!43267)

(declare-datatypes ((array!74028 0))(
  ( (array!74029 (arr!35661 (Array (_ BitVec 32) (_ BitVec 64))) (size!36198 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74028)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18234 0))(
  ( (tuple2!18235 (_1!9127 (_ BitVec 64)) (_2!9127 V!43267)) )
))
(declare-datatypes ((List!25039 0))(
  ( (Nil!25036) (Cons!25035 (h!26244 tuple2!18234) (t!36113 List!25039)) )
))
(declare-datatypes ((ListLongMap!16215 0))(
  ( (ListLongMap!16216 (toList!8123 List!25039)) )
))
(declare-fun call!50443 () ListLongMap!16215)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!50438 () Bool)

(declare-datatypes ((ValueCell!13593 0))(
  ( (ValueCellFull!13593 (v!16997 V!43267)) (EmptyCell!13593) )
))
(declare-datatypes ((array!74030 0))(
  ( (array!74031 (arr!35662 (Array (_ BitVec 32) ValueCell!13593)) (size!36199 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74030)

(declare-fun minValue!944 () V!43267)

(declare-fun getCurrentListMapNoExtraKeys!4570 (array!74028 array!74030 (_ BitVec 32) (_ BitVec 32) V!43267 V!43267 (_ BitVec 32) Int) ListLongMap!16215)

(assert (=> bm!50438 (= call!50443 (getCurrentListMapNoExtraKeys!4570 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138582 () Bool)

(declare-fun call!50444 () ListLongMap!16215)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6633 (ListLongMap!16215 (_ BitVec 64)) Bool)

(assert (=> b!1138582 (contains!6633 call!50444 k0!934)))

(declare-fun lt!506572 () ListLongMap!16215)

(declare-datatypes ((Unit!37255 0))(
  ( (Unit!37256) )
))
(declare-fun lt!506557 () Unit!37255)

(declare-fun addStillContains!774 (ListLongMap!16215 (_ BitVec 64) V!43267 (_ BitVec 64)) Unit!37255)

(assert (=> b!1138582 (= lt!506557 (addStillContains!774 lt!506572 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!50446 () Bool)

(assert (=> b!1138582 call!50446))

(declare-fun lt!506565 () ListLongMap!16215)

(declare-fun +!3473 (ListLongMap!16215 tuple2!18234) ListLongMap!16215)

(assert (=> b!1138582 (= lt!506572 (+!3473 lt!506565 (tuple2!18235 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!506558 () Unit!37255)

(declare-fun call!50445 () Unit!37255)

(assert (=> b!1138582 (= lt!506558 call!50445)))

(declare-fun e!647886 () Unit!37255)

(assert (=> b!1138582 (= e!647886 lt!506557)))

(declare-fun b!1138583 () Bool)

(declare-fun e!647896 () Bool)

(declare-fun e!647892 () Bool)

(assert (=> b!1138583 (= e!647896 e!647892)))

(declare-fun res!759586 () Bool)

(assert (=> b!1138583 (=> res!759586 e!647892)))

(assert (=> b!1138583 (= res!759586 (not (= (select (arr!35661 _keys!1208) from!1455) k0!934)))))

(declare-fun e!647885 () Bool)

(assert (=> b!1138583 e!647885))

(declare-fun c!111482 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1138583 (= c!111482 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!506567 () Unit!37255)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!484 (array!74028 array!74030 (_ BitVec 32) (_ BitVec 32) V!43267 V!43267 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37255)

(assert (=> b!1138583 (= lt!506567 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!484 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138584 () Bool)

(declare-fun res!759590 () Bool)

(declare-fun e!647889 () Bool)

(assert (=> b!1138584 (=> (not res!759590) (not e!647889))))

(declare-datatypes ((List!25040 0))(
  ( (Nil!25037) (Cons!25036 (h!26245 (_ BitVec 64)) (t!36114 List!25040)) )
))
(declare-fun arrayNoDuplicates!0 (array!74028 (_ BitVec 32) List!25040) Bool)

(assert (=> b!1138584 (= res!759590 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25037))))

(declare-fun bm!50439 () Bool)

(declare-fun call!50441 () Bool)

(assert (=> bm!50439 (= call!50441 call!50446)))

(declare-fun b!1138585 () Bool)

(declare-fun e!647895 () Bool)

(assert (=> b!1138585 (= e!647889 e!647895)))

(declare-fun res!759588 () Bool)

(assert (=> b!1138585 (=> (not res!759588) (not e!647895))))

(declare-fun lt!506562 () array!74028)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74028 (_ BitVec 32)) Bool)

(assert (=> b!1138585 (= res!759588 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!506562 mask!1564))))

(assert (=> b!1138585 (= lt!506562 (array!74029 (store (arr!35661 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36198 _keys!1208)))))

(declare-fun b!1138586 () Bool)

(declare-fun e!647897 () Unit!37255)

(declare-fun Unit!37257 () Unit!37255)

(assert (=> b!1138586 (= e!647897 Unit!37257)))

(declare-fun b!1138587 () Bool)

(assert (=> b!1138587 call!50441))

(declare-fun lt!506570 () Unit!37255)

(declare-fun call!50442 () Unit!37255)

(assert (=> b!1138587 (= lt!506570 call!50442)))

(declare-fun e!647898 () Unit!37255)

(assert (=> b!1138587 (= e!647898 lt!506570)))

(declare-fun b!1138589 () Bool)

(declare-fun e!647884 () Bool)

(declare-fun tp_is_empty!28605 () Bool)

(assert (=> b!1138589 (= e!647884 tp_is_empty!28605)))

(declare-fun b!1138590 () Bool)

(declare-fun Unit!37258 () Unit!37255)

(assert (=> b!1138590 (= e!647898 Unit!37258)))

(declare-fun e!647883 () Bool)

(declare-fun b!1138591 () Bool)

(declare-fun arrayContainsKey!0 (array!74028 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1138591 (= e!647883 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1138592 () Bool)

(declare-fun res!759596 () Bool)

(assert (=> b!1138592 (=> (not res!759596) (not e!647889))))

(assert (=> b!1138592 (= res!759596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!44732 () Bool)

(declare-fun mapRes!44732 () Bool)

(declare-fun tp!84937 () Bool)

(declare-fun e!647890 () Bool)

(assert (=> mapNonEmpty!44732 (= mapRes!44732 (and tp!84937 e!647890))))

(declare-fun mapRest!44732 () (Array (_ BitVec 32) ValueCell!13593))

(declare-fun mapKey!44732 () (_ BitVec 32))

(declare-fun mapValue!44732 () ValueCell!13593)

(assert (=> mapNonEmpty!44732 (= (arr!35662 _values!996) (store mapRest!44732 mapKey!44732 mapValue!44732))))

(declare-fun call!50448 () ListLongMap!16215)

(declare-fun bm!50440 () Bool)

(declare-fun lt!506563 () array!74030)

(assert (=> bm!50440 (= call!50448 (getCurrentListMapNoExtraKeys!4570 lt!506562 lt!506563 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138593 () Bool)

(declare-fun res!759589 () Bool)

(assert (=> b!1138593 (=> (not res!759589) (not e!647889))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1138593 (= res!759589 (validMask!0 mask!1564))))

(declare-fun b!1138594 () Bool)

(declare-fun Unit!37259 () Unit!37255)

(assert (=> b!1138594 (= e!647897 Unit!37259)))

(declare-fun lt!506560 () Bool)

(assert (=> b!1138594 (= lt!506560 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!111486 () Bool)

(assert (=> b!1138594 (= c!111486 (and (not lt!506560) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!506574 () Unit!37255)

(assert (=> b!1138594 (= lt!506574 e!647886)))

(declare-fun lt!506566 () Unit!37255)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!377 (array!74028 array!74030 (_ BitVec 32) (_ BitVec 32) V!43267 V!43267 (_ BitVec 64) (_ BitVec 32) Int) Unit!37255)

(assert (=> b!1138594 (= lt!506566 (lemmaListMapContainsThenArrayContainsFrom!377 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111484 () Bool)

(assert (=> b!1138594 (= c!111484 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!759587 () Bool)

(assert (=> b!1138594 (= res!759587 e!647883)))

(declare-fun e!647888 () Bool)

(assert (=> b!1138594 (=> (not res!759587) (not e!647888))))

(assert (=> b!1138594 e!647888))

(declare-fun lt!506571 () Unit!37255)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74028 (_ BitVec 32) (_ BitVec 32)) Unit!37255)

(assert (=> b!1138594 (= lt!506571 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1138594 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25037)))

(declare-fun lt!506564 () Unit!37255)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74028 (_ BitVec 64) (_ BitVec 32) List!25040) Unit!37255)

(assert (=> b!1138594 (= lt!506564 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25037))))

(assert (=> b!1138594 false))

(declare-fun b!1138595 () Bool)

(declare-fun res!759591 () Bool)

(assert (=> b!1138595 (=> (not res!759591) (not e!647889))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1138595 (= res!759591 (validKeyInArray!0 k0!934))))

(declare-fun b!1138596 () Bool)

(declare-fun e!647894 () Bool)

(assert (=> b!1138596 (= e!647894 (and e!647884 mapRes!44732))))

(declare-fun condMapEmpty!44732 () Bool)

(declare-fun mapDefault!44732 () ValueCell!13593)

(assert (=> b!1138596 (= condMapEmpty!44732 (= (arr!35662 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13593)) mapDefault!44732)))))

(declare-fun b!1138597 () Bool)

(assert (=> b!1138597 (= e!647885 (= call!50448 call!50443))))

(declare-fun bm!50441 () Bool)

(assert (=> bm!50441 (= call!50442 call!50445)))

(declare-fun b!1138598 () Bool)

(assert (=> b!1138598 (= e!647892 true)))

(declare-fun lt!506568 () Unit!37255)

(assert (=> b!1138598 (= lt!506568 e!647897)))

(declare-fun c!111483 () Bool)

(assert (=> b!1138598 (= c!111483 (contains!6633 lt!506565 k0!934))))

(assert (=> b!1138598 (= lt!506565 (getCurrentListMapNoExtraKeys!4570 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50442 () Bool)

(declare-fun call!50447 () ListLongMap!16215)

(assert (=> bm!50442 (= call!50447 call!50444)))

(declare-fun b!1138599 () Bool)

(assert (=> b!1138599 (= e!647888 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1138600 () Bool)

(declare-fun e!647893 () Unit!37255)

(declare-fun lt!506559 () Unit!37255)

(assert (=> b!1138600 (= e!647893 lt!506559)))

(assert (=> b!1138600 (= lt!506559 call!50442)))

(assert (=> b!1138600 call!50441))

(declare-fun res!759595 () Bool)

(assert (=> start!98506 (=> (not res!759595) (not e!647889))))

(assert (=> start!98506 (= res!759595 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36198 _keys!1208))))))

(assert (=> start!98506 e!647889))

(assert (=> start!98506 tp_is_empty!28605))

(declare-fun array_inv!27214 (array!74028) Bool)

(assert (=> start!98506 (array_inv!27214 _keys!1208)))

(assert (=> start!98506 true))

(assert (=> start!98506 tp!84936))

(declare-fun array_inv!27215 (array!74030) Bool)

(assert (=> start!98506 (and (array_inv!27215 _values!996) e!647894)))

(declare-fun b!1138588 () Bool)

(declare-fun c!111485 () Bool)

(assert (=> b!1138588 (= c!111485 (and (not lt!506560) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1138588 (= e!647886 e!647893)))

(declare-fun b!1138601 () Bool)

(assert (=> b!1138601 (= e!647883 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!506560) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!50443 () Bool)

(assert (=> bm!50443 (= call!50444 (+!3473 (ite c!111486 lt!506572 lt!506565) (ite c!111486 (tuple2!18235 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!111485 (tuple2!18235 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18235 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!50444 () Bool)

(assert (=> bm!50444 (= call!50446 (contains!6633 (ite c!111486 lt!506572 call!50447) k0!934))))

(declare-fun b!1138602 () Bool)

(declare-fun res!759594 () Bool)

(assert (=> b!1138602 (=> (not res!759594) (not e!647889))))

(assert (=> b!1138602 (= res!759594 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36198 _keys!1208))))))

(declare-fun b!1138603 () Bool)

(declare-fun e!647887 () Bool)

(assert (=> b!1138603 (= e!647887 e!647896)))

(declare-fun res!759593 () Bool)

(assert (=> b!1138603 (=> res!759593 e!647896)))

(assert (=> b!1138603 (= res!759593 (not (= from!1455 i!673)))))

(declare-fun lt!506561 () ListLongMap!16215)

(assert (=> b!1138603 (= lt!506561 (getCurrentListMapNoExtraKeys!4570 lt!506562 lt!506563 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2628 (Int (_ BitVec 64)) V!43267)

(assert (=> b!1138603 (= lt!506563 (array!74031 (store (arr!35662 _values!996) i!673 (ValueCellFull!13593 (dynLambda!2628 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36199 _values!996)))))

(declare-fun lt!506569 () ListLongMap!16215)

(assert (=> b!1138603 (= lt!506569 (getCurrentListMapNoExtraKeys!4570 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!44732 () Bool)

(assert (=> mapIsEmpty!44732 mapRes!44732))

(declare-fun b!1138604 () Bool)

(declare-fun res!759585 () Bool)

(assert (=> b!1138604 (=> (not res!759585) (not e!647895))))

(assert (=> b!1138604 (= res!759585 (arrayNoDuplicates!0 lt!506562 #b00000000000000000000000000000000 Nil!25037))))

(declare-fun bm!50445 () Bool)

(assert (=> bm!50445 (= call!50445 (addStillContains!774 lt!506565 (ite (or c!111486 c!111485) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111486 c!111485) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1138605 () Bool)

(declare-fun -!1226 (ListLongMap!16215 (_ BitVec 64)) ListLongMap!16215)

(assert (=> b!1138605 (= e!647885 (= call!50448 (-!1226 call!50443 k0!934)))))

(declare-fun b!1138606 () Bool)

(declare-fun res!759584 () Bool)

(assert (=> b!1138606 (=> (not res!759584) (not e!647889))))

(assert (=> b!1138606 (= res!759584 (and (= (size!36199 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36198 _keys!1208) (size!36199 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1138607 () Bool)

(declare-fun res!759592 () Bool)

(assert (=> b!1138607 (=> (not res!759592) (not e!647889))))

(assert (=> b!1138607 (= res!759592 (= (select (arr!35661 _keys!1208) i!673) k0!934))))

(declare-fun b!1138608 () Bool)

(assert (=> b!1138608 (= e!647890 tp_is_empty!28605)))

(declare-fun b!1138609 () Bool)

(assert (=> b!1138609 (= e!647895 (not e!647887))))

(declare-fun res!759583 () Bool)

(assert (=> b!1138609 (=> res!759583 e!647887)))

(assert (=> b!1138609 (= res!759583 (bvsgt from!1455 i!673))))

(assert (=> b!1138609 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!506573 () Unit!37255)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74028 (_ BitVec 64) (_ BitVec 32)) Unit!37255)

(assert (=> b!1138609 (= lt!506573 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1138610 () Bool)

(assert (=> b!1138610 (= e!647893 e!647898)))

(declare-fun c!111481 () Bool)

(assert (=> b!1138610 (= c!111481 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!506560))))

(assert (= (and start!98506 res!759595) b!1138593))

(assert (= (and b!1138593 res!759589) b!1138606))

(assert (= (and b!1138606 res!759584) b!1138592))

(assert (= (and b!1138592 res!759596) b!1138584))

(assert (= (and b!1138584 res!759590) b!1138602))

(assert (= (and b!1138602 res!759594) b!1138595))

(assert (= (and b!1138595 res!759591) b!1138607))

(assert (= (and b!1138607 res!759592) b!1138585))

(assert (= (and b!1138585 res!759588) b!1138604))

(assert (= (and b!1138604 res!759585) b!1138609))

(assert (= (and b!1138609 (not res!759583)) b!1138603))

(assert (= (and b!1138603 (not res!759593)) b!1138583))

(assert (= (and b!1138583 c!111482) b!1138605))

(assert (= (and b!1138583 (not c!111482)) b!1138597))

(assert (= (or b!1138605 b!1138597) bm!50440))

(assert (= (or b!1138605 b!1138597) bm!50438))

(assert (= (and b!1138583 (not res!759586)) b!1138598))

(assert (= (and b!1138598 c!111483) b!1138594))

(assert (= (and b!1138598 (not c!111483)) b!1138586))

(assert (= (and b!1138594 c!111486) b!1138582))

(assert (= (and b!1138594 (not c!111486)) b!1138588))

(assert (= (and b!1138588 c!111485) b!1138600))

(assert (= (and b!1138588 (not c!111485)) b!1138610))

(assert (= (and b!1138610 c!111481) b!1138587))

(assert (= (and b!1138610 (not c!111481)) b!1138590))

(assert (= (or b!1138600 b!1138587) bm!50441))

(assert (= (or b!1138600 b!1138587) bm!50442))

(assert (= (or b!1138600 b!1138587) bm!50439))

(assert (= (or b!1138582 bm!50439) bm!50444))

(assert (= (or b!1138582 bm!50441) bm!50445))

(assert (= (or b!1138582 bm!50442) bm!50443))

(assert (= (and b!1138594 c!111484) b!1138591))

(assert (= (and b!1138594 (not c!111484)) b!1138601))

(assert (= (and b!1138594 res!759587) b!1138599))

(assert (= (and b!1138596 condMapEmpty!44732) mapIsEmpty!44732))

(assert (= (and b!1138596 (not condMapEmpty!44732)) mapNonEmpty!44732))

(get-info :version)

(assert (= (and mapNonEmpty!44732 ((_ is ValueCellFull!13593) mapValue!44732)) b!1138608))

(assert (= (and b!1138596 ((_ is ValueCellFull!13593) mapDefault!44732)) b!1138589))

(assert (= start!98506 b!1138596))

(declare-fun b_lambda!19199 () Bool)

(assert (=> (not b_lambda!19199) (not b!1138603)))

(declare-fun t!36112 () Bool)

(declare-fun tb!8895 () Bool)

(assert (=> (and start!98506 (= defaultEntry!1004 defaultEntry!1004) t!36112) tb!8895))

(declare-fun result!18347 () Bool)

(assert (=> tb!8895 (= result!18347 tp_is_empty!28605)))

(assert (=> b!1138603 t!36112))

(declare-fun b_and!39015 () Bool)

(assert (= b_and!39013 (and (=> t!36112 result!18347) b_and!39015)))

(declare-fun m!1050443 () Bool)

(assert (=> bm!50438 m!1050443))

(declare-fun m!1050445 () Bool)

(assert (=> b!1138592 m!1050445))

(declare-fun m!1050447 () Bool)

(assert (=> b!1138583 m!1050447))

(declare-fun m!1050449 () Bool)

(assert (=> b!1138583 m!1050449))

(declare-fun m!1050451 () Bool)

(assert (=> b!1138603 m!1050451))

(declare-fun m!1050453 () Bool)

(assert (=> b!1138603 m!1050453))

(declare-fun m!1050455 () Bool)

(assert (=> b!1138603 m!1050455))

(declare-fun m!1050457 () Bool)

(assert (=> b!1138603 m!1050457))

(declare-fun m!1050459 () Bool)

(assert (=> b!1138594 m!1050459))

(declare-fun m!1050461 () Bool)

(assert (=> b!1138594 m!1050461))

(declare-fun m!1050463 () Bool)

(assert (=> b!1138594 m!1050463))

(declare-fun m!1050465 () Bool)

(assert (=> b!1138594 m!1050465))

(declare-fun m!1050467 () Bool)

(assert (=> bm!50443 m!1050467))

(declare-fun m!1050469 () Bool)

(assert (=> b!1138598 m!1050469))

(assert (=> b!1138598 m!1050443))

(declare-fun m!1050471 () Bool)

(assert (=> b!1138584 m!1050471))

(declare-fun m!1050473 () Bool)

(assert (=> b!1138591 m!1050473))

(declare-fun m!1050475 () Bool)

(assert (=> b!1138585 m!1050475))

(declare-fun m!1050477 () Bool)

(assert (=> b!1138585 m!1050477))

(declare-fun m!1050479 () Bool)

(assert (=> b!1138604 m!1050479))

(declare-fun m!1050481 () Bool)

(assert (=> b!1138605 m!1050481))

(declare-fun m!1050483 () Bool)

(assert (=> b!1138593 m!1050483))

(declare-fun m!1050485 () Bool)

(assert (=> bm!50444 m!1050485))

(declare-fun m!1050487 () Bool)

(assert (=> start!98506 m!1050487))

(declare-fun m!1050489 () Bool)

(assert (=> start!98506 m!1050489))

(assert (=> b!1138599 m!1050473))

(declare-fun m!1050491 () Bool)

(assert (=> b!1138609 m!1050491))

(declare-fun m!1050493 () Bool)

(assert (=> b!1138609 m!1050493))

(declare-fun m!1050495 () Bool)

(assert (=> mapNonEmpty!44732 m!1050495))

(declare-fun m!1050497 () Bool)

(assert (=> b!1138582 m!1050497))

(declare-fun m!1050499 () Bool)

(assert (=> b!1138582 m!1050499))

(declare-fun m!1050501 () Bool)

(assert (=> b!1138582 m!1050501))

(declare-fun m!1050503 () Bool)

(assert (=> b!1138607 m!1050503))

(declare-fun m!1050505 () Bool)

(assert (=> bm!50440 m!1050505))

(declare-fun m!1050507 () Bool)

(assert (=> bm!50445 m!1050507))

(declare-fun m!1050509 () Bool)

(assert (=> b!1138595 m!1050509))

(check-sat (not b!1138594) (not bm!50440) (not b!1138598) (not b!1138593) (not b_next!24075) (not b!1138605) (not b!1138591) (not bm!50445) tp_is_empty!28605 (not mapNonEmpty!44732) (not b!1138609) (not b!1138592) (not b!1138599) (not bm!50444) (not b!1138585) (not b!1138583) (not bm!50443) (not start!98506) b_and!39015 (not b!1138603) (not b!1138595) (not bm!50438) (not b!1138584) (not b!1138582) (not b!1138604) (not b_lambda!19199))
(check-sat b_and!39015 (not b_next!24075))

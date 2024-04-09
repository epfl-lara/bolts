; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98788 () Bool)

(assert start!98788)

(declare-fun b_free!24357 () Bool)

(declare-fun b_next!24357 () Bool)

(assert (=> start!98788 (= b_free!24357 (not b_next!24357))))

(declare-fun tp!85782 () Bool)

(declare-fun b_and!39577 () Bool)

(assert (=> start!98788 (= tp!85782 b_and!39577)))

(declare-fun b!1151370 () Bool)

(declare-datatypes ((Unit!37791 0))(
  ( (Unit!37792) )
))
(declare-fun e!654905 () Unit!37791)

(declare-fun Unit!37793 () Unit!37791)

(assert (=> b!1151370 (= e!654905 Unit!37793)))

(declare-datatypes ((V!43643 0))(
  ( (V!43644 (val!14500 Int)) )
))
(declare-fun zeroValue!944 () V!43643)

(declare-datatypes ((ValueCell!13734 0))(
  ( (ValueCellFull!13734 (v!17138 V!43643)) (EmptyCell!13734) )
))
(declare-datatypes ((array!74578 0))(
  ( (array!74579 (arr!35936 (Array (_ BitVec 32) ValueCell!13734)) (size!36473 (_ BitVec 32))) )
))
(declare-fun lt!515476 () array!74578)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((array!74580 0))(
  ( (array!74581 (arr!35937 (Array (_ BitVec 32) (_ BitVec 64))) (size!36474 (_ BitVec 32))) )
))
(declare-fun lt!515464 () array!74580)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!53822 () Bool)

(declare-datatypes ((tuple2!18490 0))(
  ( (tuple2!18491 (_1!9255 (_ BitVec 64)) (_2!9255 V!43643)) )
))
(declare-datatypes ((List!25279 0))(
  ( (Nil!25276) (Cons!25275 (h!26484 tuple2!18490) (t!36635 List!25279)) )
))
(declare-datatypes ((ListLongMap!16471 0))(
  ( (ListLongMap!16472 (toList!8251 List!25279)) )
))
(declare-fun call!53826 () ListLongMap!16471)

(declare-fun minValue!944 () V!43643)

(declare-fun getCurrentListMapNoExtraKeys!4691 (array!74580 array!74578 (_ BitVec 32) (_ BitVec 32) V!43643 V!43643 (_ BitVec 32) Int) ListLongMap!16471)

(assert (=> bm!53822 (= call!53826 (getCurrentListMapNoExtraKeys!4691 lt!515464 lt!515476 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1151371 () Bool)

(declare-fun lt!515469 () ListLongMap!16471)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6744 (ListLongMap!16471 (_ BitVec 64)) Bool)

(declare-fun +!3586 (ListLongMap!16471 tuple2!18490) ListLongMap!16471)

(assert (=> b!1151371 (contains!6744 (+!3586 lt!515469 (tuple2!18491 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!515478 () Unit!37791)

(declare-fun addStillContains!886 (ListLongMap!16471 (_ BitVec 64) V!43643 (_ BitVec 64)) Unit!37791)

(assert (=> b!1151371 (= lt!515478 (addStillContains!886 lt!515469 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!53827 () Bool)

(assert (=> b!1151371 call!53827))

(declare-fun call!53830 () ListLongMap!16471)

(assert (=> b!1151371 (= lt!515469 call!53830)))

(declare-fun lt!515470 () Unit!37791)

(declare-fun call!53831 () Unit!37791)

(assert (=> b!1151371 (= lt!515470 call!53831)))

(declare-fun e!654892 () Unit!37791)

(assert (=> b!1151371 (= e!654892 lt!515478)))

(declare-fun b!1151372 () Bool)

(declare-fun e!654906 () Unit!37791)

(declare-fun lt!515461 () Unit!37791)

(assert (=> b!1151372 (= e!654906 lt!515461)))

(declare-fun call!53828 () Unit!37791)

(assert (=> b!1151372 (= lt!515461 call!53828)))

(declare-fun call!53825 () Bool)

(assert (=> b!1151372 call!53825))

(declare-fun b!1151373 () Bool)

(declare-fun e!654898 () Unit!37791)

(declare-fun Unit!37794 () Unit!37791)

(assert (=> b!1151373 (= e!654898 Unit!37794)))

(declare-fun b!1151374 () Bool)

(declare-fun e!654890 () Bool)

(declare-fun e!654899 () Bool)

(assert (=> b!1151374 (= e!654890 e!654899)))

(declare-fun res!765756 () Bool)

(assert (=> b!1151374 (=> res!765756 e!654899)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1151374 (= res!765756 (not (= from!1455 i!673)))))

(declare-fun lt!515481 () ListLongMap!16471)

(assert (=> b!1151374 (= lt!515481 (getCurrentListMapNoExtraKeys!4691 lt!515464 lt!515476 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!515467 () V!43643)

(declare-fun _values!996 () array!74578)

(assert (=> b!1151374 (= lt!515476 (array!74579 (store (arr!35936 _values!996) i!673 (ValueCellFull!13734 lt!515467)) (size!36473 _values!996)))))

(declare-fun dynLambda!2717 (Int (_ BitVec 64)) V!43643)

(assert (=> b!1151374 (= lt!515467 (dynLambda!2717 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!74580)

(declare-fun lt!515460 () ListLongMap!16471)

(assert (=> b!1151374 (= lt!515460 (getCurrentListMapNoExtraKeys!4691 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1151375 () Bool)

(declare-fun e!654894 () Bool)

(declare-fun tp_is_empty!28887 () Bool)

(assert (=> b!1151375 (= e!654894 tp_is_empty!28887)))

(declare-fun e!654897 () Bool)

(declare-fun b!1151376 () Bool)

(declare-fun arrayContainsKey!0 (array!74580 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1151376 (= e!654897 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1151377 () Bool)

(declare-fun e!654896 () Bool)

(assert (=> b!1151377 (= e!654896 tp_is_empty!28887)))

(declare-fun b!1151379 () Bool)

(declare-fun res!765749 () Bool)

(declare-fun e!654891 () Bool)

(assert (=> b!1151379 (=> (not res!765749) (not e!654891))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1151379 (= res!765749 (validKeyInArray!0 k0!934))))

(declare-fun bm!53823 () Bool)

(assert (=> bm!53823 (= call!53828 call!53831)))

(declare-fun mapIsEmpty!45155 () Bool)

(declare-fun mapRes!45155 () Bool)

(assert (=> mapIsEmpty!45155 mapRes!45155))

(declare-fun b!1151380 () Bool)

(declare-fun res!765748 () Bool)

(assert (=> b!1151380 (=> (not res!765748) (not e!654891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1151380 (= res!765748 (validMask!0 mask!1564))))

(declare-fun b!1151381 () Bool)

(declare-fun Unit!37795 () Unit!37791)

(assert (=> b!1151381 (= e!654905 Unit!37795)))

(declare-fun lt!515465 () Bool)

(assert (=> b!1151381 (= lt!515465 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!114024 () Bool)

(assert (=> b!1151381 (= c!114024 (and (not lt!515465) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!515466 () Unit!37791)

(assert (=> b!1151381 (= lt!515466 e!654892)))

(declare-fun lt!515472 () Unit!37791)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!470 (array!74580 array!74578 (_ BitVec 32) (_ BitVec 32) V!43643 V!43643 (_ BitVec 64) (_ BitVec 32) Int) Unit!37791)

(assert (=> b!1151381 (= lt!515472 (lemmaListMapContainsThenArrayContainsFrom!470 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114021 () Bool)

(assert (=> b!1151381 (= c!114021 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!765750 () Bool)

(assert (=> b!1151381 (= res!765750 e!654897)))

(declare-fun e!654902 () Bool)

(assert (=> b!1151381 (=> (not res!765750) (not e!654902))))

(assert (=> b!1151381 e!654902))

(declare-fun lt!515468 () Unit!37791)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74580 (_ BitVec 32) (_ BitVec 32)) Unit!37791)

(assert (=> b!1151381 (= lt!515468 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25280 0))(
  ( (Nil!25277) (Cons!25276 (h!26485 (_ BitVec 64)) (t!36636 List!25280)) )
))
(declare-fun arrayNoDuplicates!0 (array!74580 (_ BitVec 32) List!25280) Bool)

(assert (=> b!1151381 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25277)))

(declare-fun lt!515480 () Unit!37791)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74580 (_ BitVec 64) (_ BitVec 32) List!25280) Unit!37791)

(assert (=> b!1151381 (= lt!515480 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25277))))

(assert (=> b!1151381 false))

(declare-fun b!1151382 () Bool)

(declare-fun e!654900 () Bool)

(assert (=> b!1151382 (= e!654891 e!654900)))

(declare-fun res!765758 () Bool)

(assert (=> b!1151382 (=> (not res!765758) (not e!654900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74580 (_ BitVec 32)) Bool)

(assert (=> b!1151382 (= res!765758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!515464 mask!1564))))

(assert (=> b!1151382 (= lt!515464 (array!74581 (store (arr!35937 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36474 _keys!1208)))))

(declare-fun b!1151383 () Bool)

(declare-fun e!654893 () Bool)

(assert (=> b!1151383 (= e!654893 true)))

(declare-fun e!654904 () Bool)

(assert (=> b!1151383 e!654904))

(declare-fun res!765744 () Bool)

(assert (=> b!1151383 (=> (not res!765744) (not e!654904))))

(declare-fun lt!515474 () ListLongMap!16471)

(declare-fun lt!515475 () ListLongMap!16471)

(assert (=> b!1151383 (= res!765744 (= lt!515474 lt!515475))))

(declare-fun -!1336 (ListLongMap!16471 (_ BitVec 64)) ListLongMap!16471)

(assert (=> b!1151383 (= lt!515474 (-!1336 lt!515460 k0!934))))

(declare-fun lt!515471 () V!43643)

(assert (=> b!1151383 (= (-!1336 (+!3586 lt!515475 (tuple2!18491 (select (arr!35937 _keys!1208) from!1455) lt!515471)) (select (arr!35937 _keys!1208) from!1455)) lt!515475)))

(declare-fun lt!515477 () Unit!37791)

(declare-fun addThenRemoveForNewKeyIsSame!183 (ListLongMap!16471 (_ BitVec 64) V!43643) Unit!37791)

(assert (=> b!1151383 (= lt!515477 (addThenRemoveForNewKeyIsSame!183 lt!515475 (select (arr!35937 _keys!1208) from!1455) lt!515471))))

(declare-fun get!18323 (ValueCell!13734 V!43643) V!43643)

(assert (=> b!1151383 (= lt!515471 (get!18323 (select (arr!35936 _values!996) from!1455) lt!515467))))

(declare-fun lt!515462 () Unit!37791)

(assert (=> b!1151383 (= lt!515462 e!654905)))

(declare-fun c!114022 () Bool)

(assert (=> b!1151383 (= c!114022 (contains!6744 lt!515475 k0!934))))

(assert (=> b!1151383 (= lt!515475 (getCurrentListMapNoExtraKeys!4691 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1151384 () Bool)

(declare-fun e!654901 () Bool)

(assert (=> b!1151384 (= e!654901 (and e!654896 mapRes!45155))))

(declare-fun condMapEmpty!45155 () Bool)

(declare-fun mapDefault!45155 () ValueCell!13734)

(assert (=> b!1151384 (= condMapEmpty!45155 (= (arr!35936 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13734)) mapDefault!45155)))))

(declare-fun b!1151385 () Bool)

(assert (=> b!1151385 (= e!654897 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!515465) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!53824 () Bool)

(declare-fun call!53829 () ListLongMap!16471)

(assert (=> bm!53824 (= call!53829 call!53830)))

(declare-fun b!1151386 () Bool)

(declare-fun c!114019 () Bool)

(assert (=> b!1151386 (= c!114019 (and (not lt!515465) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1151386 (= e!654892 e!654906)))

(declare-fun b!1151387 () Bool)

(declare-fun e!654895 () Bool)

(declare-fun call!53832 () ListLongMap!16471)

(assert (=> b!1151387 (= e!654895 (= call!53826 call!53832))))

(declare-fun b!1151388 () Bool)

(declare-fun res!765751 () Bool)

(assert (=> b!1151388 (=> (not res!765751) (not e!654891))))

(assert (=> b!1151388 (= res!765751 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36474 _keys!1208))))))

(declare-fun b!1151389 () Bool)

(declare-fun res!765755 () Bool)

(assert (=> b!1151389 (=> (not res!765755) (not e!654900))))

(assert (=> b!1151389 (= res!765755 (arrayNoDuplicates!0 lt!515464 #b00000000000000000000000000000000 Nil!25277))))

(declare-fun b!1151390 () Bool)

(assert (=> b!1151390 call!53825))

(declare-fun lt!515479 () Unit!37791)

(assert (=> b!1151390 (= lt!515479 call!53828)))

(assert (=> b!1151390 (= e!654898 lt!515479)))

(declare-fun b!1151391 () Bool)

(assert (=> b!1151391 (= e!654904 (= lt!515474 (getCurrentListMapNoExtraKeys!4691 lt!515464 lt!515476 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun res!765745 () Bool)

(assert (=> start!98788 (=> (not res!765745) (not e!654891))))

(assert (=> start!98788 (= res!765745 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36474 _keys!1208))))))

(assert (=> start!98788 e!654891))

(assert (=> start!98788 tp_is_empty!28887))

(declare-fun array_inv!27396 (array!74580) Bool)

(assert (=> start!98788 (array_inv!27396 _keys!1208)))

(assert (=> start!98788 true))

(assert (=> start!98788 tp!85782))

(declare-fun array_inv!27397 (array!74578) Bool)

(assert (=> start!98788 (and (array_inv!27397 _values!996) e!654901)))

(declare-fun b!1151378 () Bool)

(assert (=> b!1151378 (= e!654899 e!654893)))

(declare-fun res!765753 () Bool)

(assert (=> b!1151378 (=> res!765753 e!654893)))

(assert (=> b!1151378 (= res!765753 (not (= (select (arr!35937 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1151378 e!654895))

(declare-fun c!114023 () Bool)

(assert (=> b!1151378 (= c!114023 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!515463 () Unit!37791)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!572 (array!74580 array!74578 (_ BitVec 32) (_ BitVec 32) V!43643 V!43643 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37791)

(assert (=> b!1151378 (= lt!515463 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!572 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!53825 () Bool)

(assert (=> bm!53825 (= call!53827 (contains!6744 (ite c!114024 lt!515469 call!53829) k0!934))))

(declare-fun bm!53826 () Bool)

(assert (=> bm!53826 (= call!53832 (getCurrentListMapNoExtraKeys!4691 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1151392 () Bool)

(assert (=> b!1151392 (= e!654906 e!654898)))

(declare-fun c!114020 () Bool)

(assert (=> b!1151392 (= c!114020 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!515465))))

(declare-fun bm!53827 () Bool)

(assert (=> bm!53827 (= call!53825 call!53827)))

(declare-fun b!1151393 () Bool)

(assert (=> b!1151393 (= e!654900 (not e!654890))))

(declare-fun res!765752 () Bool)

(assert (=> b!1151393 (=> res!765752 e!654890)))

(assert (=> b!1151393 (= res!765752 (bvsgt from!1455 i!673))))

(assert (=> b!1151393 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!515473 () Unit!37791)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74580 (_ BitVec 64) (_ BitVec 32)) Unit!37791)

(assert (=> b!1151393 (= lt!515473 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1151394 () Bool)

(declare-fun res!765746 () Bool)

(assert (=> b!1151394 (=> (not res!765746) (not e!654891))))

(assert (=> b!1151394 (= res!765746 (and (= (size!36473 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36474 _keys!1208) (size!36473 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!53828 () Bool)

(assert (=> bm!53828 (= call!53831 (addStillContains!886 lt!515475 (ite (or c!114024 c!114019) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!114024 c!114019) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1151395 () Bool)

(declare-fun res!765757 () Bool)

(assert (=> b!1151395 (=> (not res!765757) (not e!654891))))

(assert (=> b!1151395 (= res!765757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1151396 () Bool)

(declare-fun res!765747 () Bool)

(assert (=> b!1151396 (=> (not res!765747) (not e!654891))))

(assert (=> b!1151396 (= res!765747 (= (select (arr!35937 _keys!1208) i!673) k0!934))))

(declare-fun b!1151397 () Bool)

(declare-fun res!765754 () Bool)

(assert (=> b!1151397 (=> (not res!765754) (not e!654891))))

(assert (=> b!1151397 (= res!765754 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25277))))

(declare-fun mapNonEmpty!45155 () Bool)

(declare-fun tp!85783 () Bool)

(assert (=> mapNonEmpty!45155 (= mapRes!45155 (and tp!85783 e!654894))))

(declare-fun mapRest!45155 () (Array (_ BitVec 32) ValueCell!13734))

(declare-fun mapKey!45155 () (_ BitVec 32))

(declare-fun mapValue!45155 () ValueCell!13734)

(assert (=> mapNonEmpty!45155 (= (arr!35936 _values!996) (store mapRest!45155 mapKey!45155 mapValue!45155))))

(declare-fun bm!53829 () Bool)

(assert (=> bm!53829 (= call!53830 (+!3586 lt!515475 (ite (or c!114024 c!114019) (tuple2!18491 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18491 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1151398 () Bool)

(assert (=> b!1151398 (= e!654902 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1151399 () Bool)

(assert (=> b!1151399 (= e!654895 (= call!53826 (-!1336 call!53832 k0!934)))))

(assert (= (and start!98788 res!765745) b!1151380))

(assert (= (and b!1151380 res!765748) b!1151394))

(assert (= (and b!1151394 res!765746) b!1151395))

(assert (= (and b!1151395 res!765757) b!1151397))

(assert (= (and b!1151397 res!765754) b!1151388))

(assert (= (and b!1151388 res!765751) b!1151379))

(assert (= (and b!1151379 res!765749) b!1151396))

(assert (= (and b!1151396 res!765747) b!1151382))

(assert (= (and b!1151382 res!765758) b!1151389))

(assert (= (and b!1151389 res!765755) b!1151393))

(assert (= (and b!1151393 (not res!765752)) b!1151374))

(assert (= (and b!1151374 (not res!765756)) b!1151378))

(assert (= (and b!1151378 c!114023) b!1151399))

(assert (= (and b!1151378 (not c!114023)) b!1151387))

(assert (= (or b!1151399 b!1151387) bm!53822))

(assert (= (or b!1151399 b!1151387) bm!53826))

(assert (= (and b!1151378 (not res!765753)) b!1151383))

(assert (= (and b!1151383 c!114022) b!1151381))

(assert (= (and b!1151383 (not c!114022)) b!1151370))

(assert (= (and b!1151381 c!114024) b!1151371))

(assert (= (and b!1151381 (not c!114024)) b!1151386))

(assert (= (and b!1151386 c!114019) b!1151372))

(assert (= (and b!1151386 (not c!114019)) b!1151392))

(assert (= (and b!1151392 c!114020) b!1151390))

(assert (= (and b!1151392 (not c!114020)) b!1151373))

(assert (= (or b!1151372 b!1151390) bm!53823))

(assert (= (or b!1151372 b!1151390) bm!53824))

(assert (= (or b!1151372 b!1151390) bm!53827))

(assert (= (or b!1151371 bm!53827) bm!53825))

(assert (= (or b!1151371 bm!53823) bm!53828))

(assert (= (or b!1151371 bm!53824) bm!53829))

(assert (= (and b!1151381 c!114021) b!1151376))

(assert (= (and b!1151381 (not c!114021)) b!1151385))

(assert (= (and b!1151381 res!765750) b!1151398))

(assert (= (and b!1151383 res!765744) b!1151391))

(assert (= (and b!1151384 condMapEmpty!45155) mapIsEmpty!45155))

(assert (= (and b!1151384 (not condMapEmpty!45155)) mapNonEmpty!45155))

(get-info :version)

(assert (= (and mapNonEmpty!45155 ((_ is ValueCellFull!13734) mapValue!45155)) b!1151375))

(assert (= (and b!1151384 ((_ is ValueCellFull!13734) mapDefault!45155)) b!1151377))

(assert (= start!98788 b!1151384))

(declare-fun b_lambda!19481 () Bool)

(assert (=> (not b_lambda!19481) (not b!1151374)))

(declare-fun t!36634 () Bool)

(declare-fun tb!9177 () Bool)

(assert (=> (and start!98788 (= defaultEntry!1004 defaultEntry!1004) t!36634) tb!9177))

(declare-fun result!18911 () Bool)

(assert (=> tb!9177 (= result!18911 tp_is_empty!28887)))

(assert (=> b!1151374 t!36634))

(declare-fun b_and!39579 () Bool)

(assert (= b_and!39577 (and (=> t!36634 result!18911) b_and!39579)))

(declare-fun m!1061539 () Bool)

(assert (=> start!98788 m!1061539))

(declare-fun m!1061541 () Bool)

(assert (=> start!98788 m!1061541))

(declare-fun m!1061543 () Bool)

(assert (=> b!1151399 m!1061543))

(declare-fun m!1061545 () Bool)

(assert (=> mapNonEmpty!45155 m!1061545))

(declare-fun m!1061547 () Bool)

(assert (=> bm!53822 m!1061547))

(declare-fun m!1061549 () Bool)

(assert (=> b!1151383 m!1061549))

(declare-fun m!1061551 () Bool)

(assert (=> b!1151383 m!1061551))

(declare-fun m!1061553 () Bool)

(assert (=> b!1151383 m!1061553))

(assert (=> b!1151383 m!1061553))

(declare-fun m!1061555 () Bool)

(assert (=> b!1151383 m!1061555))

(declare-fun m!1061557 () Bool)

(assert (=> b!1151383 m!1061557))

(assert (=> b!1151383 m!1061555))

(declare-fun m!1061559 () Bool)

(assert (=> b!1151383 m!1061559))

(declare-fun m!1061561 () Bool)

(assert (=> b!1151383 m!1061561))

(assert (=> b!1151383 m!1061555))

(declare-fun m!1061563 () Bool)

(assert (=> b!1151383 m!1061563))

(assert (=> b!1151383 m!1061551))

(declare-fun m!1061565 () Bool)

(assert (=> b!1151383 m!1061565))

(declare-fun m!1061567 () Bool)

(assert (=> bm!53825 m!1061567))

(declare-fun m!1061569 () Bool)

(assert (=> bm!53828 m!1061569))

(declare-fun m!1061571 () Bool)

(assert (=> b!1151374 m!1061571))

(declare-fun m!1061573 () Bool)

(assert (=> b!1151374 m!1061573))

(declare-fun m!1061575 () Bool)

(assert (=> b!1151374 m!1061575))

(declare-fun m!1061577 () Bool)

(assert (=> b!1151374 m!1061577))

(declare-fun m!1061579 () Bool)

(assert (=> b!1151380 m!1061579))

(declare-fun m!1061581 () Bool)

(assert (=> b!1151397 m!1061581))

(declare-fun m!1061583 () Bool)

(assert (=> b!1151381 m!1061583))

(declare-fun m!1061585 () Bool)

(assert (=> b!1151381 m!1061585))

(declare-fun m!1061587 () Bool)

(assert (=> b!1151381 m!1061587))

(declare-fun m!1061589 () Bool)

(assert (=> b!1151381 m!1061589))

(declare-fun m!1061591 () Bool)

(assert (=> b!1151396 m!1061591))

(declare-fun m!1061593 () Bool)

(assert (=> b!1151389 m!1061593))

(declare-fun m!1061595 () Bool)

(assert (=> b!1151371 m!1061595))

(assert (=> b!1151371 m!1061595))

(declare-fun m!1061597 () Bool)

(assert (=> b!1151371 m!1061597))

(declare-fun m!1061599 () Bool)

(assert (=> b!1151371 m!1061599))

(assert (=> b!1151378 m!1061555))

(declare-fun m!1061601 () Bool)

(assert (=> b!1151378 m!1061601))

(declare-fun m!1061603 () Bool)

(assert (=> b!1151382 m!1061603))

(declare-fun m!1061605 () Bool)

(assert (=> b!1151382 m!1061605))

(declare-fun m!1061607 () Bool)

(assert (=> bm!53829 m!1061607))

(declare-fun m!1061609 () Bool)

(assert (=> b!1151398 m!1061609))

(declare-fun m!1061611 () Bool)

(assert (=> b!1151379 m!1061611))

(declare-fun m!1061613 () Bool)

(assert (=> b!1151393 m!1061613))

(declare-fun m!1061615 () Bool)

(assert (=> b!1151393 m!1061615))

(assert (=> bm!53826 m!1061549))

(assert (=> b!1151391 m!1061547))

(declare-fun m!1061617 () Bool)

(assert (=> b!1151395 m!1061617))

(assert (=> b!1151376 m!1061609))

(check-sat (not mapNonEmpty!45155) (not b!1151380) tp_is_empty!28887 (not b!1151382) (not b_next!24357) (not bm!53822) (not b!1151381) (not bm!53829) (not bm!53828) (not b_lambda!19481) (not b!1151383) (not b!1151395) (not b!1151398) (not b!1151393) (not b!1151371) (not b!1151376) (not b!1151391) (not b!1151399) (not b!1151374) (not b!1151378) (not b!1151379) (not b!1151397) b_and!39579 (not bm!53826) (not bm!53825) (not b!1151389) (not start!98788))
(check-sat b_and!39579 (not b_next!24357))

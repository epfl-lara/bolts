; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98662 () Bool)

(assert start!98662)

(declare-fun b_free!24231 () Bool)

(declare-fun b_next!24231 () Bool)

(assert (=> start!98662 (= b_free!24231 (not b_next!24231))))

(declare-fun tp!85405 () Bool)

(declare-fun b_and!39325 () Bool)

(assert (=> start!98662 (= tp!85405 b_and!39325)))

(declare-datatypes ((V!43475 0))(
  ( (V!43476 (val!14437 Int)) )
))
(declare-fun zeroValue!944 () V!43475)

(declare-fun bm!52310 () Bool)

(declare-fun c!112889 () Bool)

(declare-datatypes ((tuple2!18368 0))(
  ( (tuple2!18369 (_1!9194 (_ BitVec 64)) (_2!9194 V!43475)) )
))
(declare-datatypes ((List!25166 0))(
  ( (Nil!25163) (Cons!25162 (h!26371 tuple2!18368) (t!36396 List!25166)) )
))
(declare-datatypes ((ListLongMap!16349 0))(
  ( (ListLongMap!16350 (toList!8190 List!25166)) )
))
(declare-fun lt!511422 () ListLongMap!16349)

(declare-fun c!112886 () Bool)

(declare-fun call!52314 () ListLongMap!16349)

(declare-fun minValue!944 () V!43475)

(declare-fun +!3533 (ListLongMap!16349 tuple2!18368) ListLongMap!16349)

(assert (=> bm!52310 (= call!52314 (+!3533 lt!511422 (ite (or c!112886 c!112889) (tuple2!18369 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18369 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1145574 () Bool)

(declare-datatypes ((Unit!37537 0))(
  ( (Unit!37538) )
))
(declare-fun e!651685 () Unit!37537)

(declare-fun lt!511414 () Unit!37537)

(assert (=> b!1145574 (= e!651685 lt!511414)))

(declare-fun call!52315 () Unit!37537)

(assert (=> b!1145574 (= lt!511414 call!52315)))

(declare-fun call!52320 () Bool)

(assert (=> b!1145574 call!52320))

(declare-datatypes ((array!74328 0))(
  ( (array!74329 (arr!35811 (Array (_ BitVec 32) (_ BitVec 64))) (size!36348 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74328)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!52311 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun call!52316 () ListLongMap!16349)

(declare-datatypes ((ValueCell!13671 0))(
  ( (ValueCellFull!13671 (v!17075 V!43475)) (EmptyCell!13671) )
))
(declare-datatypes ((array!74330 0))(
  ( (array!74331 (arr!35812 (Array (_ BitVec 32) ValueCell!13671)) (size!36349 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74330)

(declare-fun getCurrentListMapNoExtraKeys!4632 (array!74328 array!74330 (_ BitVec 32) (_ BitVec 32) V!43475 V!43475 (_ BitVec 32) Int) ListLongMap!16349)

(assert (=> bm!52311 (= call!52316 (getCurrentListMapNoExtraKeys!4632 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145575 () Bool)

(declare-fun res!762921 () Bool)

(declare-fun e!651681 () Bool)

(assert (=> b!1145575 (=> (not res!762921) (not e!651681))))

(assert (=> b!1145575 (= res!762921 (and (= (size!36349 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36348 _keys!1208) (size!36349 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1145576 () Bool)

(declare-fun e!651689 () Unit!37537)

(declare-fun Unit!37539 () Unit!37537)

(assert (=> b!1145576 (= e!651689 Unit!37539)))

(declare-fun b!1145577 () Bool)

(declare-fun res!762909 () Bool)

(assert (=> b!1145577 (=> (not res!762909) (not e!651681))))

(declare-datatypes ((List!25167 0))(
  ( (Nil!25164) (Cons!25163 (h!26372 (_ BitVec 64)) (t!36397 List!25167)) )
))
(declare-fun arrayNoDuplicates!0 (array!74328 (_ BitVec 32) List!25167) Bool)

(assert (=> b!1145577 (= res!762909 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25164))))

(declare-fun b!1145578 () Bool)

(declare-fun lt!511432 () Bool)

(assert (=> b!1145578 (= c!112889 (and (not lt!511432) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!651693 () Unit!37537)

(assert (=> b!1145578 (= e!651693 e!651685)))

(declare-fun b!1145579 () Bool)

(declare-fun e!651682 () Bool)

(declare-fun e!651679 () Bool)

(assert (=> b!1145579 (= e!651682 e!651679)))

(declare-fun res!762913 () Bool)

(assert (=> b!1145579 (=> res!762913 e!651679)))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1145579 (= res!762913 (not (= (select (arr!35811 _keys!1208) from!1455) k0!934)))))

(declare-fun e!651678 () Bool)

(assert (=> b!1145579 e!651678))

(declare-fun c!112885 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1145579 (= c!112885 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!511433 () Unit!37537)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!535 (array!74328 array!74330 (_ BitVec 32) (_ BitVec 32) V!43475 V!43475 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37537)

(assert (=> b!1145579 (= lt!511433 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!535 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!511428 () ListLongMap!16349)

(declare-fun call!52313 () Bool)

(declare-fun call!52319 () ListLongMap!16349)

(declare-fun bm!52312 () Bool)

(declare-fun contains!6691 (ListLongMap!16349 (_ BitVec 64)) Bool)

(assert (=> bm!52312 (= call!52313 (contains!6691 (ite c!112886 lt!511428 call!52319) k0!934))))

(declare-fun call!52318 () ListLongMap!16349)

(declare-fun b!1145580 () Bool)

(declare-fun -!1282 (ListLongMap!16349 (_ BitVec 64)) ListLongMap!16349)

(assert (=> b!1145580 (= e!651678 (= call!52318 (-!1282 call!52316 k0!934)))))

(declare-fun b!1145581 () Bool)

(declare-fun e!651688 () Bool)

(declare-fun arrayContainsKey!0 (array!74328 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1145581 (= e!651688 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1145582 () Bool)

(assert (=> b!1145582 (contains!6691 (+!3533 lt!511428 (tuple2!18369 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!511418 () Unit!37537)

(declare-fun addStillContains!831 (ListLongMap!16349 (_ BitVec 64) V!43475 (_ BitVec 64)) Unit!37537)

(assert (=> b!1145582 (= lt!511418 (addStillContains!831 lt!511428 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1145582 call!52313))

(assert (=> b!1145582 (= lt!511428 call!52314)))

(declare-fun lt!511434 () Unit!37537)

(declare-fun call!52317 () Unit!37537)

(assert (=> b!1145582 (= lt!511434 call!52317)))

(assert (=> b!1145582 (= e!651693 lt!511418)))

(declare-fun b!1145583 () Bool)

(declare-fun res!762910 () Bool)

(assert (=> b!1145583 (=> (not res!762910) (not e!651681))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1145583 (= res!762910 (validMask!0 mask!1564))))

(declare-fun b!1145584 () Bool)

(declare-fun e!651684 () Bool)

(assert (=> b!1145584 (= e!651684 e!651682)))

(declare-fun res!762918 () Bool)

(assert (=> b!1145584 (=> res!762918 e!651682)))

(assert (=> b!1145584 (= res!762918 (not (= from!1455 i!673)))))

(declare-fun lt!511417 () array!74330)

(declare-fun lt!511420 () ListLongMap!16349)

(declare-fun lt!511415 () array!74328)

(assert (=> b!1145584 (= lt!511420 (getCurrentListMapNoExtraKeys!4632 lt!511415 lt!511417 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!511430 () V!43475)

(assert (=> b!1145584 (= lt!511417 (array!74331 (store (arr!35812 _values!996) i!673 (ValueCellFull!13671 lt!511430)) (size!36349 _values!996)))))

(declare-fun dynLambda!2675 (Int (_ BitVec 64)) V!43475)

(assert (=> b!1145584 (= lt!511430 (dynLambda!2675 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!511419 () ListLongMap!16349)

(assert (=> b!1145584 (= lt!511419 (getCurrentListMapNoExtraKeys!4632 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1145585 () Bool)

(assert (=> b!1145585 (= e!651679 true)))

(declare-fun e!651686 () Bool)

(assert (=> b!1145585 e!651686))

(declare-fun res!762912 () Bool)

(assert (=> b!1145585 (=> (not res!762912) (not e!651686))))

(declare-fun lt!511425 () V!43475)

(assert (=> b!1145585 (= res!762912 (= (-!1282 (+!3533 lt!511422 (tuple2!18369 (select (arr!35811 _keys!1208) from!1455) lt!511425)) (select (arr!35811 _keys!1208) from!1455)) lt!511422))))

(declare-fun lt!511429 () Unit!37537)

(declare-fun addThenRemoveForNewKeyIsSame!136 (ListLongMap!16349 (_ BitVec 64) V!43475) Unit!37537)

(assert (=> b!1145585 (= lt!511429 (addThenRemoveForNewKeyIsSame!136 lt!511422 (select (arr!35811 _keys!1208) from!1455) lt!511425))))

(declare-fun get!18234 (ValueCell!13671 V!43475) V!43475)

(assert (=> b!1145585 (= lt!511425 (get!18234 (select (arr!35812 _values!996) from!1455) lt!511430))))

(declare-fun lt!511416 () Unit!37537)

(declare-fun e!651677 () Unit!37537)

(assert (=> b!1145585 (= lt!511416 e!651677)))

(declare-fun c!112887 () Bool)

(assert (=> b!1145585 (= c!112887 (contains!6691 lt!511422 k0!934))))

(assert (=> b!1145585 (= lt!511422 (getCurrentListMapNoExtraKeys!4632 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!651683 () Bool)

(declare-fun b!1145586 () Bool)

(assert (=> b!1145586 (= e!651683 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!511432) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1145587 () Bool)

(declare-fun e!651680 () Bool)

(declare-fun tp_is_empty!28761 () Bool)

(assert (=> b!1145587 (= e!651680 tp_is_empty!28761)))

(declare-fun b!1145588 () Bool)

(assert (=> b!1145588 (= e!651678 (= call!52318 call!52316))))

(declare-fun bm!52314 () Bool)

(assert (=> bm!52314 (= call!52320 call!52313)))

(declare-fun b!1145589 () Bool)

(declare-fun Unit!37540 () Unit!37537)

(assert (=> b!1145589 (= e!651677 Unit!37540)))

(assert (=> b!1145589 (= lt!511432 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1145589 (= c!112886 (and (not lt!511432) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!511426 () Unit!37537)

(assert (=> b!1145589 (= lt!511426 e!651693)))

(declare-fun lt!511424 () Unit!37537)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!424 (array!74328 array!74330 (_ BitVec 32) (_ BitVec 32) V!43475 V!43475 (_ BitVec 64) (_ BitVec 32) Int) Unit!37537)

(assert (=> b!1145589 (= lt!511424 (lemmaListMapContainsThenArrayContainsFrom!424 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112888 () Bool)

(assert (=> b!1145589 (= c!112888 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!762922 () Bool)

(assert (=> b!1145589 (= res!762922 e!651683)))

(assert (=> b!1145589 (=> (not res!762922) (not e!651688))))

(assert (=> b!1145589 e!651688))

(declare-fun lt!511431 () Unit!37537)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74328 (_ BitVec 32) (_ BitVec 32)) Unit!37537)

(assert (=> b!1145589 (= lt!511431 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1145589 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25164)))

(declare-fun lt!511427 () Unit!37537)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74328 (_ BitVec 64) (_ BitVec 32) List!25167) Unit!37537)

(assert (=> b!1145589 (= lt!511427 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25164))))

(assert (=> b!1145589 false))

(declare-fun b!1145590 () Bool)

(assert (=> b!1145590 call!52320))

(declare-fun lt!511423 () Unit!37537)

(assert (=> b!1145590 (= lt!511423 call!52315)))

(assert (=> b!1145590 (= e!651689 lt!511423)))

(declare-fun mapIsEmpty!44966 () Bool)

(declare-fun mapRes!44966 () Bool)

(assert (=> mapIsEmpty!44966 mapRes!44966))

(declare-fun b!1145591 () Bool)

(assert (=> b!1145591 (= e!651686 (= (-!1282 lt!511419 k0!934) lt!511422))))

(declare-fun b!1145592 () Bool)

(declare-fun res!762914 () Bool)

(assert (=> b!1145592 (=> (not res!762914) (not e!651681))))

(assert (=> b!1145592 (= res!762914 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36348 _keys!1208))))))

(declare-fun bm!52315 () Bool)

(assert (=> bm!52315 (= call!52318 (getCurrentListMapNoExtraKeys!4632 lt!511415 lt!511417 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145593 () Bool)

(declare-fun e!651690 () Bool)

(assert (=> b!1145593 (= e!651690 (not e!651684))))

(declare-fun res!762923 () Bool)

(assert (=> b!1145593 (=> res!762923 e!651684)))

(assert (=> b!1145593 (= res!762923 (bvsgt from!1455 i!673))))

(assert (=> b!1145593 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!511421 () Unit!37537)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74328 (_ BitVec 64) (_ BitVec 32)) Unit!37537)

(assert (=> b!1145593 (= lt!511421 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1145594 () Bool)

(declare-fun Unit!37541 () Unit!37537)

(assert (=> b!1145594 (= e!651677 Unit!37541)))

(declare-fun mapNonEmpty!44966 () Bool)

(declare-fun tp!85404 () Bool)

(assert (=> mapNonEmpty!44966 (= mapRes!44966 (and tp!85404 e!651680))))

(declare-fun mapValue!44966 () ValueCell!13671)

(declare-fun mapKey!44966 () (_ BitVec 32))

(declare-fun mapRest!44966 () (Array (_ BitVec 32) ValueCell!13671))

(assert (=> mapNonEmpty!44966 (= (arr!35812 _values!996) (store mapRest!44966 mapKey!44966 mapValue!44966))))

(declare-fun b!1145595 () Bool)

(declare-fun res!762916 () Bool)

(assert (=> b!1145595 (=> (not res!762916) (not e!651681))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1145595 (= res!762916 (validKeyInArray!0 k0!934))))

(declare-fun b!1145596 () Bool)

(declare-fun res!762917 () Bool)

(assert (=> b!1145596 (=> (not res!762917) (not e!651690))))

(assert (=> b!1145596 (= res!762917 (arrayNoDuplicates!0 lt!511415 #b00000000000000000000000000000000 Nil!25164))))

(declare-fun b!1145597 () Bool)

(declare-fun e!651691 () Bool)

(declare-fun e!651692 () Bool)

(assert (=> b!1145597 (= e!651691 (and e!651692 mapRes!44966))))

(declare-fun condMapEmpty!44966 () Bool)

(declare-fun mapDefault!44966 () ValueCell!13671)

(assert (=> b!1145597 (= condMapEmpty!44966 (= (arr!35812 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13671)) mapDefault!44966)))))

(declare-fun b!1145598 () Bool)

(assert (=> b!1145598 (= e!651692 tp_is_empty!28761)))

(declare-fun b!1145599 () Bool)

(assert (=> b!1145599 (= e!651681 e!651690)))

(declare-fun res!762911 () Bool)

(assert (=> b!1145599 (=> (not res!762911) (not e!651690))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74328 (_ BitVec 32)) Bool)

(assert (=> b!1145599 (= res!762911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!511415 mask!1564))))

(assert (=> b!1145599 (= lt!511415 (array!74329 (store (arr!35811 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36348 _keys!1208)))))

(declare-fun b!1145600 () Bool)

(assert (=> b!1145600 (= e!651685 e!651689)))

(declare-fun c!112890 () Bool)

(assert (=> b!1145600 (= c!112890 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!511432))))

(declare-fun b!1145601 () Bool)

(declare-fun res!762920 () Bool)

(assert (=> b!1145601 (=> (not res!762920) (not e!651681))))

(assert (=> b!1145601 (= res!762920 (= (select (arr!35811 _keys!1208) i!673) k0!934))))

(declare-fun b!1145602 () Bool)

(assert (=> b!1145602 (= e!651683 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!52316 () Bool)

(assert (=> bm!52316 (= call!52317 (addStillContains!831 lt!511422 (ite (or c!112886 c!112889) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!112886 c!112889) zeroValue!944 minValue!944) k0!934))))

(declare-fun bm!52317 () Bool)

(assert (=> bm!52317 (= call!52315 call!52317)))

(declare-fun b!1145603 () Bool)

(declare-fun res!762915 () Bool)

(assert (=> b!1145603 (=> (not res!762915) (not e!651681))))

(assert (=> b!1145603 (= res!762915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!52313 () Bool)

(assert (=> bm!52313 (= call!52319 call!52314)))

(declare-fun res!762919 () Bool)

(assert (=> start!98662 (=> (not res!762919) (not e!651681))))

(assert (=> start!98662 (= res!762919 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36348 _keys!1208))))))

(assert (=> start!98662 e!651681))

(assert (=> start!98662 tp_is_empty!28761))

(declare-fun array_inv!27316 (array!74328) Bool)

(assert (=> start!98662 (array_inv!27316 _keys!1208)))

(assert (=> start!98662 true))

(assert (=> start!98662 tp!85405))

(declare-fun array_inv!27317 (array!74330) Bool)

(assert (=> start!98662 (and (array_inv!27317 _values!996) e!651691)))

(assert (= (and start!98662 res!762919) b!1145583))

(assert (= (and b!1145583 res!762910) b!1145575))

(assert (= (and b!1145575 res!762921) b!1145603))

(assert (= (and b!1145603 res!762915) b!1145577))

(assert (= (and b!1145577 res!762909) b!1145592))

(assert (= (and b!1145592 res!762914) b!1145595))

(assert (= (and b!1145595 res!762916) b!1145601))

(assert (= (and b!1145601 res!762920) b!1145599))

(assert (= (and b!1145599 res!762911) b!1145596))

(assert (= (and b!1145596 res!762917) b!1145593))

(assert (= (and b!1145593 (not res!762923)) b!1145584))

(assert (= (and b!1145584 (not res!762918)) b!1145579))

(assert (= (and b!1145579 c!112885) b!1145580))

(assert (= (and b!1145579 (not c!112885)) b!1145588))

(assert (= (or b!1145580 b!1145588) bm!52315))

(assert (= (or b!1145580 b!1145588) bm!52311))

(assert (= (and b!1145579 (not res!762913)) b!1145585))

(assert (= (and b!1145585 c!112887) b!1145589))

(assert (= (and b!1145585 (not c!112887)) b!1145594))

(assert (= (and b!1145589 c!112886) b!1145582))

(assert (= (and b!1145589 (not c!112886)) b!1145578))

(assert (= (and b!1145578 c!112889) b!1145574))

(assert (= (and b!1145578 (not c!112889)) b!1145600))

(assert (= (and b!1145600 c!112890) b!1145590))

(assert (= (and b!1145600 (not c!112890)) b!1145576))

(assert (= (or b!1145574 b!1145590) bm!52317))

(assert (= (or b!1145574 b!1145590) bm!52313))

(assert (= (or b!1145574 b!1145590) bm!52314))

(assert (= (or b!1145582 bm!52314) bm!52312))

(assert (= (or b!1145582 bm!52317) bm!52316))

(assert (= (or b!1145582 bm!52313) bm!52310))

(assert (= (and b!1145589 c!112888) b!1145602))

(assert (= (and b!1145589 (not c!112888)) b!1145586))

(assert (= (and b!1145589 res!762922) b!1145581))

(assert (= (and b!1145585 res!762912) b!1145591))

(assert (= (and b!1145597 condMapEmpty!44966) mapIsEmpty!44966))

(assert (= (and b!1145597 (not condMapEmpty!44966)) mapNonEmpty!44966))

(get-info :version)

(assert (= (and mapNonEmpty!44966 ((_ is ValueCellFull!13671) mapValue!44966)) b!1145587))

(assert (= (and b!1145597 ((_ is ValueCellFull!13671) mapDefault!44966)) b!1145598))

(assert (= start!98662 b!1145597))

(declare-fun b_lambda!19355 () Bool)

(assert (=> (not b_lambda!19355) (not b!1145584)))

(declare-fun t!36395 () Bool)

(declare-fun tb!9051 () Bool)

(assert (=> (and start!98662 (= defaultEntry!1004 defaultEntry!1004) t!36395) tb!9051))

(declare-fun result!18659 () Bool)

(assert (=> tb!9051 (= result!18659 tp_is_empty!28761)))

(assert (=> b!1145584 t!36395))

(declare-fun b_and!39327 () Bool)

(assert (= b_and!39325 (and (=> t!36395 result!18659) b_and!39327)))

(declare-fun m!1056491 () Bool)

(assert (=> start!98662 m!1056491))

(declare-fun m!1056493 () Bool)

(assert (=> start!98662 m!1056493))

(declare-fun m!1056495 () Bool)

(assert (=> b!1145591 m!1056495))

(declare-fun m!1056497 () Bool)

(assert (=> bm!52311 m!1056497))

(declare-fun m!1056499 () Bool)

(assert (=> b!1145580 m!1056499))

(assert (=> b!1145585 m!1056497))

(declare-fun m!1056501 () Bool)

(assert (=> b!1145585 m!1056501))

(declare-fun m!1056503 () Bool)

(assert (=> b!1145585 m!1056503))

(declare-fun m!1056505 () Bool)

(assert (=> b!1145585 m!1056505))

(declare-fun m!1056507 () Bool)

(assert (=> b!1145585 m!1056507))

(assert (=> b!1145585 m!1056501))

(declare-fun m!1056509 () Bool)

(assert (=> b!1145585 m!1056509))

(declare-fun m!1056511 () Bool)

(assert (=> b!1145585 m!1056511))

(assert (=> b!1145585 m!1056503))

(assert (=> b!1145585 m!1056505))

(declare-fun m!1056513 () Bool)

(assert (=> b!1145585 m!1056513))

(assert (=> b!1145585 m!1056505))

(declare-fun m!1056515 () Bool)

(assert (=> b!1145593 m!1056515))

(declare-fun m!1056517 () Bool)

(assert (=> b!1145593 m!1056517))

(declare-fun m!1056519 () Bool)

(assert (=> b!1145583 m!1056519))

(declare-fun m!1056521 () Bool)

(assert (=> b!1145581 m!1056521))

(declare-fun m!1056523 () Bool)

(assert (=> bm!52310 m!1056523))

(declare-fun m!1056525 () Bool)

(assert (=> b!1145599 m!1056525))

(declare-fun m!1056527 () Bool)

(assert (=> b!1145599 m!1056527))

(declare-fun m!1056529 () Bool)

(assert (=> bm!52312 m!1056529))

(declare-fun m!1056531 () Bool)

(assert (=> b!1145603 m!1056531))

(assert (=> b!1145602 m!1056521))

(declare-fun m!1056533 () Bool)

(assert (=> bm!52316 m!1056533))

(declare-fun m!1056535 () Bool)

(assert (=> bm!52315 m!1056535))

(assert (=> b!1145579 m!1056505))

(declare-fun m!1056537 () Bool)

(assert (=> b!1145579 m!1056537))

(declare-fun m!1056539 () Bool)

(assert (=> mapNonEmpty!44966 m!1056539))

(declare-fun m!1056541 () Bool)

(assert (=> b!1145577 m!1056541))

(declare-fun m!1056543 () Bool)

(assert (=> b!1145595 m!1056543))

(declare-fun m!1056545 () Bool)

(assert (=> b!1145584 m!1056545))

(declare-fun m!1056547 () Bool)

(assert (=> b!1145584 m!1056547))

(declare-fun m!1056549 () Bool)

(assert (=> b!1145584 m!1056549))

(declare-fun m!1056551 () Bool)

(assert (=> b!1145584 m!1056551))

(declare-fun m!1056553 () Bool)

(assert (=> b!1145582 m!1056553))

(assert (=> b!1145582 m!1056553))

(declare-fun m!1056555 () Bool)

(assert (=> b!1145582 m!1056555))

(declare-fun m!1056557 () Bool)

(assert (=> b!1145582 m!1056557))

(declare-fun m!1056559 () Bool)

(assert (=> b!1145601 m!1056559))

(declare-fun m!1056561 () Bool)

(assert (=> b!1145596 m!1056561))

(declare-fun m!1056563 () Bool)

(assert (=> b!1145589 m!1056563))

(declare-fun m!1056565 () Bool)

(assert (=> b!1145589 m!1056565))

(declare-fun m!1056567 () Bool)

(assert (=> b!1145589 m!1056567))

(declare-fun m!1056569 () Bool)

(assert (=> b!1145589 m!1056569))

(check-sat (not mapNonEmpty!44966) (not b_next!24231) (not b!1145577) (not b!1145595) (not bm!52310) (not b!1145585) (not b!1145581) b_and!39327 (not bm!52316) (not b!1145579) (not b!1145596) (not b!1145580) (not bm!52312) (not bm!52315) (not b!1145593) (not b!1145582) (not b!1145599) (not b!1145584) (not start!98662) (not bm!52311) (not b!1145591) (not b!1145589) (not b_lambda!19355) (not b!1145603) (not b!1145583) (not b!1145602) tp_is_empty!28761)
(check-sat b_and!39327 (not b_next!24231))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98464 () Bool)

(assert start!98464)

(declare-fun b_free!24033 () Bool)

(declare-fun b_next!24033 () Bool)

(assert (=> start!98464 (= b_free!24033 (not b_next!24033))))

(declare-fun tp!84811 () Bool)

(declare-fun b_and!38929 () Bool)

(assert (=> start!98464 (= tp!84811 b_and!38929)))

(declare-fun b!1136713 () Bool)

(declare-fun res!758713 () Bool)

(declare-fun e!646890 () Bool)

(assert (=> b!1136713 (=> (not res!758713) (not e!646890))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73946 0))(
  ( (array!73947 (arr!35620 (Array (_ BitVec 32) (_ BitVec 64))) (size!36157 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73946)

(assert (=> b!1136713 (= res!758713 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36157 _keys!1208))))))

(declare-fun bm!49934 () Bool)

(declare-datatypes ((Unit!37178 0))(
  ( (Unit!37179) )
))
(declare-fun call!49942 () Unit!37178)

(declare-fun call!49939 () Unit!37178)

(assert (=> bm!49934 (= call!49942 call!49939)))

(declare-fun b!1136714 () Bool)

(declare-fun e!646888 () Bool)

(declare-fun e!646886 () Bool)

(assert (=> b!1136714 (= e!646888 e!646886)))

(declare-fun res!758709 () Bool)

(assert (=> b!1136714 (=> res!758709 e!646886)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1136714 (= res!758709 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43211 0))(
  ( (V!43212 (val!14338 Int)) )
))
(declare-fun zeroValue!944 () V!43211)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!505426 () array!73946)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!18196 0))(
  ( (tuple2!18197 (_1!9108 (_ BitVec 64)) (_2!9108 V!43211)) )
))
(declare-datatypes ((List!25006 0))(
  ( (Nil!25003) (Cons!25002 (h!26211 tuple2!18196) (t!36038 List!25006)) )
))
(declare-datatypes ((ListLongMap!16177 0))(
  ( (ListLongMap!16178 (toList!8104 List!25006)) )
))
(declare-fun lt!505430 () ListLongMap!16177)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13572 0))(
  ( (ValueCellFull!13572 (v!16976 V!43211)) (EmptyCell!13572) )
))
(declare-datatypes ((array!73948 0))(
  ( (array!73949 (arr!35621 (Array (_ BitVec 32) ValueCell!13572)) (size!36158 (_ BitVec 32))) )
))
(declare-fun lt!505436 () array!73948)

(declare-fun minValue!944 () V!43211)

(declare-fun getCurrentListMapNoExtraKeys!4552 (array!73946 array!73948 (_ BitVec 32) (_ BitVec 32) V!43211 V!43211 (_ BitVec 32) Int) ListLongMap!16177)

(assert (=> b!1136714 (= lt!505430 (getCurrentListMapNoExtraKeys!4552 lt!505426 lt!505436 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73948)

(declare-fun dynLambda!2615 (Int (_ BitVec 64)) V!43211)

(assert (=> b!1136714 (= lt!505436 (array!73949 (store (arr!35621 _values!996) i!673 (ValueCellFull!13572 (dynLambda!2615 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36158 _values!996)))))

(declare-fun lt!505427 () ListLongMap!16177)

(assert (=> b!1136714 (= lt!505427 (getCurrentListMapNoExtraKeys!4552 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!49935 () Bool)

(declare-fun call!49937 () ListLongMap!16177)

(assert (=> bm!49935 (= call!49937 (getCurrentListMapNoExtraKeys!4552 lt!505426 lt!505436 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136715 () Bool)

(declare-fun e!646882 () Bool)

(declare-fun tp_is_empty!28563 () Bool)

(assert (=> b!1136715 (= e!646882 tp_is_empty!28563)))

(declare-fun b!1136716 () Bool)

(declare-fun e!646885 () Unit!37178)

(declare-fun Unit!37180 () Unit!37178)

(assert (=> b!1136716 (= e!646885 Unit!37180)))

(declare-fun lt!505440 () Bool)

(assert (=> b!1136716 (= lt!505440 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!111103 () Bool)

(assert (=> b!1136716 (= c!111103 (and (not lt!505440) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!505428 () Unit!37178)

(declare-fun e!646879 () Unit!37178)

(assert (=> b!1136716 (= lt!505428 e!646879)))

(declare-fun lt!505423 () Unit!37178)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!364 (array!73946 array!73948 (_ BitVec 32) (_ BitVec 32) V!43211 V!43211 (_ BitVec 64) (_ BitVec 32) Int) Unit!37178)

(assert (=> b!1136716 (= lt!505423 (lemmaListMapContainsThenArrayContainsFrom!364 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111108 () Bool)

(assert (=> b!1136716 (= c!111108 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!758711 () Bool)

(declare-fun e!646883 () Bool)

(assert (=> b!1136716 (= res!758711 e!646883)))

(declare-fun e!646876 () Bool)

(assert (=> b!1136716 (=> (not res!758711) (not e!646876))))

(assert (=> b!1136716 e!646876))

(declare-fun lt!505424 () Unit!37178)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73946 (_ BitVec 32) (_ BitVec 32)) Unit!37178)

(assert (=> b!1136716 (= lt!505424 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25007 0))(
  ( (Nil!25004) (Cons!25003 (h!26212 (_ BitVec 64)) (t!36039 List!25007)) )
))
(declare-fun arrayNoDuplicates!0 (array!73946 (_ BitVec 32) List!25007) Bool)

(assert (=> b!1136716 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25004)))

(declare-fun lt!505434 () Unit!37178)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!73946 (_ BitVec 64) (_ BitVec 32) List!25007) Unit!37178)

(assert (=> b!1136716 (= lt!505434 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25004))))

(assert (=> b!1136716 false))

(declare-fun b!1136717 () Bool)

(declare-fun res!758704 () Bool)

(assert (=> b!1136717 (=> (not res!758704) (not e!646890))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1136717 (= res!758704 (validKeyInArray!0 k0!934))))

(declare-fun b!1136718 () Bool)

(declare-fun res!758701 () Bool)

(assert (=> b!1136718 (=> (not res!758701) (not e!646890))))

(assert (=> b!1136718 (= res!758701 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25004))))

(declare-fun bm!49936 () Bool)

(declare-fun call!49941 () Bool)

(declare-fun call!49943 () Bool)

(assert (=> bm!49936 (= call!49941 call!49943)))

(declare-fun bm!49937 () Bool)

(declare-fun lt!505432 () ListLongMap!16177)

(declare-fun c!111107 () Bool)

(declare-fun addStillContains!759 (ListLongMap!16177 (_ BitVec 64) V!43211 (_ BitVec 64)) Unit!37178)

(assert (=> bm!49937 (= call!49939 (addStillContains!759 lt!505432 (ite (or c!111103 c!111107) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111103 c!111107) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1136719 () Bool)

(declare-fun arrayContainsKey!0 (array!73946 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1136719 (= e!646876 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1136720 () Bool)

(assert (=> b!1136720 (= c!111107 (and (not lt!505440) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!646889 () Unit!37178)

(assert (=> b!1136720 (= e!646879 e!646889)))

(declare-fun b!1136721 () Bool)

(declare-fun res!758710 () Bool)

(assert (=> b!1136721 (=> (not res!758710) (not e!646890))))

(assert (=> b!1136721 (= res!758710 (and (= (size!36158 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36157 _keys!1208) (size!36158 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!49938 () Bool)

(declare-fun call!49944 () ListLongMap!16177)

(declare-fun lt!505431 () ListLongMap!16177)

(declare-fun contains!6615 (ListLongMap!16177 (_ BitVec 64)) Bool)

(assert (=> bm!49938 (= call!49943 (contains!6615 (ite c!111103 lt!505431 call!49944) k0!934))))

(declare-fun b!1136722 () Bool)

(declare-fun e!646887 () Bool)

(assert (=> b!1136722 (= e!646887 tp_is_empty!28563)))

(declare-fun b!1136723 () Bool)

(declare-fun e!646881 () Unit!37178)

(assert (=> b!1136723 (= e!646889 e!646881)))

(declare-fun c!111104 () Bool)

(assert (=> b!1136723 (= c!111104 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!505440))))

(declare-fun b!1136724 () Bool)

(declare-fun e!646878 () Bool)

(declare-fun mapRes!44669 () Bool)

(assert (=> b!1136724 (= e!646878 (and e!646882 mapRes!44669))))

(declare-fun condMapEmpty!44669 () Bool)

(declare-fun mapDefault!44669 () ValueCell!13572)

(assert (=> b!1136724 (= condMapEmpty!44669 (= (arr!35621 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13572)) mapDefault!44669)))))

(declare-fun call!49940 () ListLongMap!16177)

(declare-fun bm!49939 () Bool)

(assert (=> bm!49939 (= call!49940 (getCurrentListMapNoExtraKeys!4552 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136725 () Bool)

(declare-fun res!758706 () Bool)

(declare-fun e!646880 () Bool)

(assert (=> b!1136725 (=> (not res!758706) (not e!646880))))

(assert (=> b!1136725 (= res!758706 (arrayNoDuplicates!0 lt!505426 #b00000000000000000000000000000000 Nil!25004))))

(declare-fun mapIsEmpty!44669 () Bool)

(assert (=> mapIsEmpty!44669 mapRes!44669))

(declare-fun mapNonEmpty!44669 () Bool)

(declare-fun tp!84810 () Bool)

(assert (=> mapNonEmpty!44669 (= mapRes!44669 (and tp!84810 e!646887))))

(declare-fun mapValue!44669 () ValueCell!13572)

(declare-fun mapKey!44669 () (_ BitVec 32))

(declare-fun mapRest!44669 () (Array (_ BitVec 32) ValueCell!13572))

(assert (=> mapNonEmpty!44669 (= (arr!35621 _values!996) (store mapRest!44669 mapKey!44669 mapValue!44669))))

(declare-fun b!1136726 () Bool)

(declare-fun e!646877 () Bool)

(declare-fun -!1214 (ListLongMap!16177 (_ BitVec 64)) ListLongMap!16177)

(assert (=> b!1136726 (= e!646877 (= call!49937 (-!1214 call!49940 k0!934)))))

(declare-fun b!1136727 () Bool)

(declare-fun res!758714 () Bool)

(assert (=> b!1136727 (=> (not res!758714) (not e!646890))))

(assert (=> b!1136727 (= res!758714 (= (select (arr!35620 _keys!1208) i!673) k0!934))))

(declare-fun b!1136728 () Bool)

(assert (=> b!1136728 (= e!646883 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1136729 () Bool)

(declare-fun res!758708 () Bool)

(assert (=> b!1136729 (=> (not res!758708) (not e!646890))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1136729 (= res!758708 (validMask!0 mask!1564))))

(declare-fun b!1136730 () Bool)

(declare-fun +!3458 (ListLongMap!16177 tuple2!18196) ListLongMap!16177)

(assert (=> b!1136730 (contains!6615 (+!3458 lt!505431 (tuple2!18197 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!505433 () Unit!37178)

(assert (=> b!1136730 (= lt!505433 (addStillContains!759 lt!505431 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1136730 call!49943))

(declare-fun call!49938 () ListLongMap!16177)

(assert (=> b!1136730 (= lt!505431 call!49938)))

(declare-fun lt!505438 () Unit!37178)

(assert (=> b!1136730 (= lt!505438 call!49939)))

(assert (=> b!1136730 (= e!646879 lt!505433)))

(declare-fun b!1136731 () Bool)

(declare-fun Unit!37181 () Unit!37178)

(assert (=> b!1136731 (= e!646881 Unit!37181)))

(declare-fun b!1136732 () Bool)

(assert (=> b!1136732 call!49941))

(declare-fun lt!505439 () Unit!37178)

(assert (=> b!1136732 (= lt!505439 call!49942)))

(assert (=> b!1136732 (= e!646881 lt!505439)))

(declare-fun bm!49940 () Bool)

(assert (=> bm!49940 (= call!49938 (+!3458 lt!505432 (ite (or c!111103 c!111107) (tuple2!18197 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18197 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!49941 () Bool)

(assert (=> bm!49941 (= call!49944 call!49938)))

(declare-fun b!1136733 () Bool)

(declare-fun lt!505435 () Unit!37178)

(assert (=> b!1136733 (= e!646889 lt!505435)))

(assert (=> b!1136733 (= lt!505435 call!49942)))

(assert (=> b!1136733 call!49941))

(declare-fun b!1136734 () Bool)

(declare-fun e!646875 () Bool)

(assert (=> b!1136734 (= e!646875 true)))

(declare-fun lt!505425 () Unit!37178)

(assert (=> b!1136734 (= lt!505425 e!646885)))

(declare-fun c!111105 () Bool)

(assert (=> b!1136734 (= c!111105 (contains!6615 lt!505432 k0!934))))

(assert (=> b!1136734 (= lt!505432 (getCurrentListMapNoExtraKeys!4552 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136735 () Bool)

(assert (=> b!1136735 (= e!646890 e!646880)))

(declare-fun res!758712 () Bool)

(assert (=> b!1136735 (=> (not res!758712) (not e!646880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73946 (_ BitVec 32)) Bool)

(assert (=> b!1136735 (= res!758712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!505426 mask!1564))))

(assert (=> b!1136735 (= lt!505426 (array!73947 (store (arr!35620 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36157 _keys!1208)))))

(declare-fun b!1136736 () Bool)

(assert (=> b!1136736 (= e!646877 (= call!49937 call!49940))))

(declare-fun res!758702 () Bool)

(assert (=> start!98464 (=> (not res!758702) (not e!646890))))

(assert (=> start!98464 (= res!758702 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36157 _keys!1208))))))

(assert (=> start!98464 e!646890))

(assert (=> start!98464 tp_is_empty!28563))

(declare-fun array_inv!27186 (array!73946) Bool)

(assert (=> start!98464 (array_inv!27186 _keys!1208)))

(assert (=> start!98464 true))

(assert (=> start!98464 tp!84811))

(declare-fun array_inv!27187 (array!73948) Bool)

(assert (=> start!98464 (and (array_inv!27187 _values!996) e!646878)))

(declare-fun b!1136737 () Bool)

(assert (=> b!1136737 (= e!646886 e!646875)))

(declare-fun res!758705 () Bool)

(assert (=> b!1136737 (=> res!758705 e!646875)))

(assert (=> b!1136737 (= res!758705 (not (= (select (arr!35620 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1136737 e!646877))

(declare-fun c!111106 () Bool)

(assert (=> b!1136737 (= c!111106 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!505437 () Unit!37178)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!470 (array!73946 array!73948 (_ BitVec 32) (_ BitVec 32) V!43211 V!43211 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37178)

(assert (=> b!1136737 (= lt!505437 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!470 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136738 () Bool)

(declare-fun res!758703 () Bool)

(assert (=> b!1136738 (=> (not res!758703) (not e!646890))))

(assert (=> b!1136738 (= res!758703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1136739 () Bool)

(assert (=> b!1136739 (= e!646880 (not e!646888))))

(declare-fun res!758707 () Bool)

(assert (=> b!1136739 (=> res!758707 e!646888)))

(assert (=> b!1136739 (= res!758707 (bvsgt from!1455 i!673))))

(assert (=> b!1136739 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!505429 () Unit!37178)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73946 (_ BitVec 64) (_ BitVec 32)) Unit!37178)

(assert (=> b!1136739 (= lt!505429 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1136740 () Bool)

(declare-fun Unit!37182 () Unit!37178)

(assert (=> b!1136740 (= e!646885 Unit!37182)))

(declare-fun b!1136741 () Bool)

(assert (=> b!1136741 (= e!646883 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!505440) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!98464 res!758702) b!1136729))

(assert (= (and b!1136729 res!758708) b!1136721))

(assert (= (and b!1136721 res!758710) b!1136738))

(assert (= (and b!1136738 res!758703) b!1136718))

(assert (= (and b!1136718 res!758701) b!1136713))

(assert (= (and b!1136713 res!758713) b!1136717))

(assert (= (and b!1136717 res!758704) b!1136727))

(assert (= (and b!1136727 res!758714) b!1136735))

(assert (= (and b!1136735 res!758712) b!1136725))

(assert (= (and b!1136725 res!758706) b!1136739))

(assert (= (and b!1136739 (not res!758707)) b!1136714))

(assert (= (and b!1136714 (not res!758709)) b!1136737))

(assert (= (and b!1136737 c!111106) b!1136726))

(assert (= (and b!1136737 (not c!111106)) b!1136736))

(assert (= (or b!1136726 b!1136736) bm!49935))

(assert (= (or b!1136726 b!1136736) bm!49939))

(assert (= (and b!1136737 (not res!758705)) b!1136734))

(assert (= (and b!1136734 c!111105) b!1136716))

(assert (= (and b!1136734 (not c!111105)) b!1136740))

(assert (= (and b!1136716 c!111103) b!1136730))

(assert (= (and b!1136716 (not c!111103)) b!1136720))

(assert (= (and b!1136720 c!111107) b!1136733))

(assert (= (and b!1136720 (not c!111107)) b!1136723))

(assert (= (and b!1136723 c!111104) b!1136732))

(assert (= (and b!1136723 (not c!111104)) b!1136731))

(assert (= (or b!1136733 b!1136732) bm!49934))

(assert (= (or b!1136733 b!1136732) bm!49941))

(assert (= (or b!1136733 b!1136732) bm!49936))

(assert (= (or b!1136730 bm!49936) bm!49938))

(assert (= (or b!1136730 bm!49934) bm!49937))

(assert (= (or b!1136730 bm!49941) bm!49940))

(assert (= (and b!1136716 c!111108) b!1136728))

(assert (= (and b!1136716 (not c!111108)) b!1136741))

(assert (= (and b!1136716 res!758711) b!1136719))

(assert (= (and b!1136724 condMapEmpty!44669) mapIsEmpty!44669))

(assert (= (and b!1136724 (not condMapEmpty!44669)) mapNonEmpty!44669))

(get-info :version)

(assert (= (and mapNonEmpty!44669 ((_ is ValueCellFull!13572) mapValue!44669)) b!1136722))

(assert (= (and b!1136724 ((_ is ValueCellFull!13572) mapDefault!44669)) b!1136715))

(assert (= start!98464 b!1136724))

(declare-fun b_lambda!19157 () Bool)

(assert (=> (not b_lambda!19157) (not b!1136714)))

(declare-fun t!36037 () Bool)

(declare-fun tb!8853 () Bool)

(assert (=> (and start!98464 (= defaultEntry!1004 defaultEntry!1004) t!36037) tb!8853))

(declare-fun result!18263 () Bool)

(assert (=> tb!8853 (= result!18263 tp_is_empty!28563)))

(assert (=> b!1136714 t!36037))

(declare-fun b_and!38931 () Bool)

(assert (= b_and!38929 (and (=> t!36037 result!18263) b_and!38931)))

(declare-fun m!1049015 () Bool)

(assert (=> bm!49939 m!1049015))

(declare-fun m!1049017 () Bool)

(assert (=> b!1136714 m!1049017))

(declare-fun m!1049019 () Bool)

(assert (=> b!1136714 m!1049019))

(declare-fun m!1049021 () Bool)

(assert (=> b!1136714 m!1049021))

(declare-fun m!1049023 () Bool)

(assert (=> b!1136714 m!1049023))

(declare-fun m!1049025 () Bool)

(assert (=> bm!49935 m!1049025))

(declare-fun m!1049027 () Bool)

(assert (=> b!1136734 m!1049027))

(assert (=> b!1136734 m!1049015))

(declare-fun m!1049029 () Bool)

(assert (=> b!1136727 m!1049029))

(declare-fun m!1049031 () Bool)

(assert (=> b!1136730 m!1049031))

(assert (=> b!1136730 m!1049031))

(declare-fun m!1049033 () Bool)

(assert (=> b!1136730 m!1049033))

(declare-fun m!1049035 () Bool)

(assert (=> b!1136730 m!1049035))

(declare-fun m!1049037 () Bool)

(assert (=> b!1136719 m!1049037))

(declare-fun m!1049039 () Bool)

(assert (=> b!1136716 m!1049039))

(declare-fun m!1049041 () Bool)

(assert (=> b!1136716 m!1049041))

(declare-fun m!1049043 () Bool)

(assert (=> b!1136716 m!1049043))

(declare-fun m!1049045 () Bool)

(assert (=> b!1136716 m!1049045))

(declare-fun m!1049047 () Bool)

(assert (=> b!1136725 m!1049047))

(declare-fun m!1049049 () Bool)

(assert (=> b!1136735 m!1049049))

(declare-fun m!1049051 () Bool)

(assert (=> b!1136735 m!1049051))

(declare-fun m!1049053 () Bool)

(assert (=> b!1136717 m!1049053))

(declare-fun m!1049055 () Bool)

(assert (=> b!1136737 m!1049055))

(declare-fun m!1049057 () Bool)

(assert (=> b!1136737 m!1049057))

(declare-fun m!1049059 () Bool)

(assert (=> b!1136739 m!1049059))

(declare-fun m!1049061 () Bool)

(assert (=> b!1136739 m!1049061))

(assert (=> b!1136728 m!1049037))

(declare-fun m!1049063 () Bool)

(assert (=> bm!49937 m!1049063))

(declare-fun m!1049065 () Bool)

(assert (=> b!1136718 m!1049065))

(declare-fun m!1049067 () Bool)

(assert (=> bm!49940 m!1049067))

(declare-fun m!1049069 () Bool)

(assert (=> b!1136738 m!1049069))

(declare-fun m!1049071 () Bool)

(assert (=> b!1136726 m!1049071))

(declare-fun m!1049073 () Bool)

(assert (=> mapNonEmpty!44669 m!1049073))

(declare-fun m!1049075 () Bool)

(assert (=> bm!49938 m!1049075))

(declare-fun m!1049077 () Bool)

(assert (=> start!98464 m!1049077))

(declare-fun m!1049079 () Bool)

(assert (=> start!98464 m!1049079))

(declare-fun m!1049081 () Bool)

(assert (=> b!1136729 m!1049081))

(check-sat (not b!1136725) (not b!1136718) (not b_lambda!19157) (not mapNonEmpty!44669) (not b!1136734) tp_is_empty!28563 (not b!1136729) (not bm!49937) (not bm!49938) (not b!1136726) (not bm!49940) (not b!1136717) (not b!1136719) (not b!1136730) (not b!1136738) (not b!1136714) (not b!1136716) (not bm!49939) (not start!98464) (not b!1136739) b_and!38931 (not bm!49935) (not b!1136735) (not b!1136728) (not b!1136737) (not b_next!24033))
(check-sat b_and!38931 (not b_next!24033))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98800 () Bool)

(assert start!98800)

(declare-fun b_free!24369 () Bool)

(declare-fun b_next!24369 () Bool)

(assert (=> start!98800 (= b_free!24369 (not b_next!24369))))

(declare-fun tp!85819 () Bool)

(declare-fun b_and!39601 () Bool)

(assert (=> start!98800 (= tp!85819 b_and!39601)))

(declare-fun b!1151922 () Bool)

(declare-fun e!655210 () Bool)

(assert (=> b!1151922 (= e!655210 true)))

(declare-fun e!655202 () Bool)

(assert (=> b!1151922 e!655202))

(declare-fun res!766028 () Bool)

(assert (=> b!1151922 (=> (not res!766028) (not e!655202))))

(declare-datatypes ((V!43659 0))(
  ( (V!43660 (val!14506 Int)) )
))
(declare-datatypes ((tuple2!18498 0))(
  ( (tuple2!18499 (_1!9259 (_ BitVec 64)) (_2!9259 V!43659)) )
))
(declare-datatypes ((List!25288 0))(
  ( (Nil!25285) (Cons!25284 (h!26493 tuple2!18498) (t!36656 List!25288)) )
))
(declare-datatypes ((ListLongMap!16479 0))(
  ( (ListLongMap!16480 (toList!8255 List!25288)) )
))
(declare-fun lt!515869 () ListLongMap!16479)

(declare-fun lt!515856 () ListLongMap!16479)

(assert (=> b!1151922 (= res!766028 (= lt!515869 lt!515856))))

(declare-fun lt!515863 () ListLongMap!16479)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1340 (ListLongMap!16479 (_ BitVec 64)) ListLongMap!16479)

(assert (=> b!1151922 (= lt!515869 (-!1340 lt!515863 k0!934))))

(declare-fun lt!515877 () V!43659)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!74600 0))(
  ( (array!74601 (arr!35947 (Array (_ BitVec 32) (_ BitVec 64))) (size!36484 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74600)

(declare-fun +!3590 (ListLongMap!16479 tuple2!18498) ListLongMap!16479)

(assert (=> b!1151922 (= (-!1340 (+!3590 lt!515856 (tuple2!18499 (select (arr!35947 _keys!1208) from!1455) lt!515877)) (select (arr!35947 _keys!1208) from!1455)) lt!515856)))

(declare-datatypes ((Unit!37812 0))(
  ( (Unit!37813) )
))
(declare-fun lt!515859 () Unit!37812)

(declare-fun addThenRemoveForNewKeyIsSame!187 (ListLongMap!16479 (_ BitVec 64) V!43659) Unit!37812)

(assert (=> b!1151922 (= lt!515859 (addThenRemoveForNewKeyIsSame!187 lt!515856 (select (arr!35947 _keys!1208) from!1455) lt!515877))))

(declare-fun lt!515862 () V!43659)

(declare-datatypes ((ValueCell!13740 0))(
  ( (ValueCellFull!13740 (v!17144 V!43659)) (EmptyCell!13740) )
))
(declare-datatypes ((array!74602 0))(
  ( (array!74603 (arr!35948 (Array (_ BitVec 32) ValueCell!13740)) (size!36485 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74602)

(declare-fun get!18331 (ValueCell!13740 V!43659) V!43659)

(assert (=> b!1151922 (= lt!515877 (get!18331 (select (arr!35948 _values!996) from!1455) lt!515862))))

(declare-fun lt!515865 () Unit!37812)

(declare-fun e!655199 () Unit!37812)

(assert (=> b!1151922 (= lt!515865 e!655199)))

(declare-fun c!114132 () Bool)

(declare-fun contains!6748 (ListLongMap!16479 (_ BitVec 64)) Bool)

(assert (=> b!1151922 (= c!114132 (contains!6748 lt!515856 k0!934))))

(declare-fun zeroValue!944 () V!43659)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43659)

(declare-fun getCurrentListMapNoExtraKeys!4695 (array!74600 array!74602 (_ BitVec 32) (_ BitVec 32) V!43659 V!43659 (_ BitVec 32) Int) ListLongMap!16479)

(assert (=> b!1151922 (= lt!515856 (getCurrentListMapNoExtraKeys!4695 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!53966 () Bool)

(declare-fun call!53969 () ListLongMap!16479)

(assert (=> bm!53966 (= call!53969 (getCurrentListMapNoExtraKeys!4695 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1151923 () Bool)

(declare-fun res!766027 () Bool)

(declare-fun e!655207 () Bool)

(assert (=> b!1151923 (=> (not res!766027) (not e!655207))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1151923 (= res!766027 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36484 _keys!1208))))))

(declare-fun b!1151924 () Bool)

(declare-fun res!766019 () Bool)

(declare-fun e!655198 () Bool)

(assert (=> b!1151924 (=> (not res!766019) (not e!655198))))

(declare-fun lt!515872 () array!74600)

(declare-datatypes ((List!25289 0))(
  ( (Nil!25286) (Cons!25285 (h!26494 (_ BitVec 64)) (t!36657 List!25289)) )
))
(declare-fun arrayNoDuplicates!0 (array!74600 (_ BitVec 32) List!25289) Bool)

(assert (=> b!1151924 (= res!766019 (arrayNoDuplicates!0 lt!515872 #b00000000000000000000000000000000 Nil!25286))))

(declare-fun call!53976 () Unit!37812)

(declare-fun c!114131 () Bool)

(declare-fun bm!53967 () Bool)

(declare-fun c!114129 () Bool)

(declare-fun addStillContains!890 (ListLongMap!16479 (_ BitVec 64) V!43659 (_ BitVec 64)) Unit!37812)

(assert (=> bm!53967 (= call!53976 (addStillContains!890 lt!515856 (ite (or c!114131 c!114129) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!114131 c!114129) zeroValue!944 minValue!944) k0!934))))

(declare-fun bm!53968 () Bool)

(declare-fun call!53974 () Bool)

(declare-fun call!53975 () Bool)

(assert (=> bm!53968 (= call!53974 call!53975)))

(declare-fun lt!515876 () array!74602)

(declare-fun b!1151925 () Bool)

(assert (=> b!1151925 (= e!655202 (= lt!515869 (getCurrentListMapNoExtraKeys!4695 lt!515872 lt!515876 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1151926 () Bool)

(assert (=> b!1151926 call!53974))

(declare-fun lt!515875 () Unit!37812)

(declare-fun call!53970 () Unit!37812)

(assert (=> b!1151926 (= lt!515875 call!53970)))

(declare-fun e!655208 () Unit!37812)

(assert (=> b!1151926 (= e!655208 lt!515875)))

(declare-fun b!1151927 () Bool)

(declare-fun e!655211 () Bool)

(assert (=> b!1151927 (= e!655198 (not e!655211))))

(declare-fun res!766018 () Bool)

(assert (=> b!1151927 (=> res!766018 e!655211)))

(assert (=> b!1151927 (= res!766018 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74600 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1151927 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!515857 () Unit!37812)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74600 (_ BitVec 64) (_ BitVec 32)) Unit!37812)

(assert (=> b!1151927 (= lt!515857 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1151928 () Bool)

(declare-fun e!655203 () Bool)

(assert (=> b!1151928 (= e!655203 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1151929 () Bool)

(assert (=> b!1151929 (= e!655207 e!655198)))

(declare-fun res!766025 () Bool)

(assert (=> b!1151929 (=> (not res!766025) (not e!655198))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74600 (_ BitVec 32)) Bool)

(assert (=> b!1151929 (= res!766025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!515872 mask!1564))))

(assert (=> b!1151929 (= lt!515872 (array!74601 (store (arr!35947 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36484 _keys!1208)))))

(declare-fun bm!53969 () Bool)

(declare-fun call!53971 () ListLongMap!16479)

(declare-fun call!53972 () ListLongMap!16479)

(assert (=> bm!53969 (= call!53971 call!53972)))

(declare-fun call!53973 () ListLongMap!16479)

(declare-fun bm!53970 () Bool)

(assert (=> bm!53970 (= call!53973 (getCurrentListMapNoExtraKeys!4695 lt!515872 lt!515876 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1151930 () Bool)

(declare-fun lt!515870 () Bool)

(assert (=> b!1151930 (= c!114129 (and (not lt!515870) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!655197 () Unit!37812)

(declare-fun e!655212 () Unit!37812)

(assert (=> b!1151930 (= e!655197 e!655212)))

(declare-fun b!1151931 () Bool)

(declare-fun lt!515873 () Unit!37812)

(assert (=> b!1151931 (= e!655212 lt!515873)))

(assert (=> b!1151931 (= lt!515873 call!53970)))

(assert (=> b!1151931 call!53974))

(declare-fun b!1151932 () Bool)

(declare-fun res!766022 () Bool)

(assert (=> b!1151932 (=> (not res!766022) (not e!655207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1151932 (= res!766022 (validMask!0 mask!1564))))

(declare-fun b!1151933 () Bool)

(declare-fun e!655196 () Bool)

(assert (=> b!1151933 (= e!655196 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!53971 () Bool)

(assert (=> bm!53971 (= call!53970 call!53976)))

(declare-fun b!1151934 () Bool)

(declare-fun e!655204 () Bool)

(assert (=> b!1151934 (= e!655204 e!655210)))

(declare-fun res!766024 () Bool)

(assert (=> b!1151934 (=> res!766024 e!655210)))

(assert (=> b!1151934 (= res!766024 (not (= (select (arr!35947 _keys!1208) from!1455) k0!934)))))

(declare-fun e!655201 () Bool)

(assert (=> b!1151934 e!655201))

(declare-fun c!114128 () Bool)

(assert (=> b!1151934 (= c!114128 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!515874 () Unit!37812)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!575 (array!74600 array!74602 (_ BitVec 32) (_ BitVec 32) V!43659 V!43659 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37812)

(assert (=> b!1151934 (= lt!515874 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!575 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1151935 () Bool)

(declare-fun e!655200 () Bool)

(declare-fun tp_is_empty!28899 () Bool)

(assert (=> b!1151935 (= e!655200 tp_is_empty!28899)))

(declare-fun b!1151936 () Bool)

(assert (=> b!1151936 (= e!655212 e!655208)))

(declare-fun c!114130 () Bool)

(assert (=> b!1151936 (= c!114130 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!515870))))

(declare-fun b!1151937 () Bool)

(assert (=> b!1151937 (= e!655201 (= call!53973 (-!1340 call!53969 k0!934)))))

(declare-fun b!1151938 () Bool)

(declare-fun Unit!37814 () Unit!37812)

(assert (=> b!1151938 (= e!655199 Unit!37814)))

(assert (=> b!1151938 (= lt!515870 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1151938 (= c!114131 (and (not lt!515870) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!515867 () Unit!37812)

(assert (=> b!1151938 (= lt!515867 e!655197)))

(declare-fun lt!515866 () Unit!37812)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!474 (array!74600 array!74602 (_ BitVec 32) (_ BitVec 32) V!43659 V!43659 (_ BitVec 64) (_ BitVec 32) Int) Unit!37812)

(assert (=> b!1151938 (= lt!515866 (lemmaListMapContainsThenArrayContainsFrom!474 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114127 () Bool)

(assert (=> b!1151938 (= c!114127 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!766016 () Bool)

(assert (=> b!1151938 (= res!766016 e!655203)))

(assert (=> b!1151938 (=> (not res!766016) (not e!655196))))

(assert (=> b!1151938 e!655196))

(declare-fun lt!515860 () Unit!37812)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74600 (_ BitVec 32) (_ BitVec 32)) Unit!37812)

(assert (=> b!1151938 (= lt!515860 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1151938 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25286)))

(declare-fun lt!515868 () Unit!37812)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74600 (_ BitVec 64) (_ BitVec 32) List!25289) Unit!37812)

(assert (=> b!1151938 (= lt!515868 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25286))))

(assert (=> b!1151938 false))

(declare-fun b!1151939 () Bool)

(declare-fun e!655205 () Bool)

(assert (=> b!1151939 (= e!655205 tp_is_empty!28899)))

(declare-fun b!1151940 () Bool)

(declare-fun res!766023 () Bool)

(assert (=> b!1151940 (=> (not res!766023) (not e!655207))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1151940 (= res!766023 (validKeyInArray!0 k0!934))))

(declare-fun b!1151941 () Bool)

(assert (=> b!1151941 (= e!655201 (= call!53973 call!53969))))

(declare-fun lt!515861 () ListLongMap!16479)

(declare-fun bm!53972 () Bool)

(assert (=> bm!53972 (= call!53975 (contains!6748 (ite c!114131 lt!515861 call!53971) k0!934))))

(declare-fun b!1151942 () Bool)

(declare-fun Unit!37815 () Unit!37812)

(assert (=> b!1151942 (= e!655208 Unit!37815)))

(declare-fun b!1151943 () Bool)

(declare-fun res!766021 () Bool)

(assert (=> b!1151943 (=> (not res!766021) (not e!655207))))

(assert (=> b!1151943 (= res!766021 (= (select (arr!35947 _keys!1208) i!673) k0!934))))

(declare-fun b!1151944 () Bool)

(assert (=> b!1151944 (contains!6748 call!53972 k0!934)))

(declare-fun lt!515864 () Unit!37812)

(assert (=> b!1151944 (= lt!515864 (addStillContains!890 lt!515861 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1151944 call!53975))

(assert (=> b!1151944 (= lt!515861 (+!3590 lt!515856 (tuple2!18499 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!515858 () Unit!37812)

(assert (=> b!1151944 (= lt!515858 call!53976)))

(assert (=> b!1151944 (= e!655197 lt!515864)))

(declare-fun bm!53973 () Bool)

(assert (=> bm!53973 (= call!53972 (+!3590 (ite c!114131 lt!515861 lt!515856) (ite c!114131 (tuple2!18499 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!114129 (tuple2!18499 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18499 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun res!766015 () Bool)

(assert (=> start!98800 (=> (not res!766015) (not e!655207))))

(assert (=> start!98800 (= res!766015 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36484 _keys!1208))))))

(assert (=> start!98800 e!655207))

(assert (=> start!98800 tp_is_empty!28899))

(declare-fun array_inv!27402 (array!74600) Bool)

(assert (=> start!98800 (array_inv!27402 _keys!1208)))

(assert (=> start!98800 true))

(assert (=> start!98800 tp!85819))

(declare-fun e!655209 () Bool)

(declare-fun array_inv!27403 (array!74602) Bool)

(assert (=> start!98800 (and (array_inv!27403 _values!996) e!655209)))

(declare-fun b!1151945 () Bool)

(assert (=> b!1151945 (= e!655203 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!515870) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!45173 () Bool)

(declare-fun mapRes!45173 () Bool)

(assert (=> mapIsEmpty!45173 mapRes!45173))

(declare-fun b!1151946 () Bool)

(declare-fun res!766026 () Bool)

(assert (=> b!1151946 (=> (not res!766026) (not e!655207))))

(assert (=> b!1151946 (= res!766026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1151947 () Bool)

(declare-fun res!766017 () Bool)

(assert (=> b!1151947 (=> (not res!766017) (not e!655207))))

(assert (=> b!1151947 (= res!766017 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25286))))

(declare-fun mapNonEmpty!45173 () Bool)

(declare-fun tp!85818 () Bool)

(assert (=> mapNonEmpty!45173 (= mapRes!45173 (and tp!85818 e!655205))))

(declare-fun mapRest!45173 () (Array (_ BitVec 32) ValueCell!13740))

(declare-fun mapKey!45173 () (_ BitVec 32))

(declare-fun mapValue!45173 () ValueCell!13740)

(assert (=> mapNonEmpty!45173 (= (arr!35948 _values!996) (store mapRest!45173 mapKey!45173 mapValue!45173))))

(declare-fun b!1151948 () Bool)

(declare-fun res!766020 () Bool)

(assert (=> b!1151948 (=> (not res!766020) (not e!655207))))

(assert (=> b!1151948 (= res!766020 (and (= (size!36485 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36484 _keys!1208) (size!36485 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1151949 () Bool)

(assert (=> b!1151949 (= e!655209 (and e!655200 mapRes!45173))))

(declare-fun condMapEmpty!45173 () Bool)

(declare-fun mapDefault!45173 () ValueCell!13740)

(assert (=> b!1151949 (= condMapEmpty!45173 (= (arr!35948 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13740)) mapDefault!45173)))))

(declare-fun b!1151950 () Bool)

(declare-fun Unit!37816 () Unit!37812)

(assert (=> b!1151950 (= e!655199 Unit!37816)))

(declare-fun b!1151951 () Bool)

(assert (=> b!1151951 (= e!655211 e!655204)))

(declare-fun res!766014 () Bool)

(assert (=> b!1151951 (=> res!766014 e!655204)))

(assert (=> b!1151951 (= res!766014 (not (= from!1455 i!673)))))

(declare-fun lt!515871 () ListLongMap!16479)

(assert (=> b!1151951 (= lt!515871 (getCurrentListMapNoExtraKeys!4695 lt!515872 lt!515876 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1151951 (= lt!515876 (array!74603 (store (arr!35948 _values!996) i!673 (ValueCellFull!13740 lt!515862)) (size!36485 _values!996)))))

(declare-fun dynLambda!2721 (Int (_ BitVec 64)) V!43659)

(assert (=> b!1151951 (= lt!515862 (dynLambda!2721 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1151951 (= lt!515863 (getCurrentListMapNoExtraKeys!4695 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (= (and start!98800 res!766015) b!1151932))

(assert (= (and b!1151932 res!766022) b!1151948))

(assert (= (and b!1151948 res!766020) b!1151946))

(assert (= (and b!1151946 res!766026) b!1151947))

(assert (= (and b!1151947 res!766017) b!1151923))

(assert (= (and b!1151923 res!766027) b!1151940))

(assert (= (and b!1151940 res!766023) b!1151943))

(assert (= (and b!1151943 res!766021) b!1151929))

(assert (= (and b!1151929 res!766025) b!1151924))

(assert (= (and b!1151924 res!766019) b!1151927))

(assert (= (and b!1151927 (not res!766018)) b!1151951))

(assert (= (and b!1151951 (not res!766014)) b!1151934))

(assert (= (and b!1151934 c!114128) b!1151937))

(assert (= (and b!1151934 (not c!114128)) b!1151941))

(assert (= (or b!1151937 b!1151941) bm!53970))

(assert (= (or b!1151937 b!1151941) bm!53966))

(assert (= (and b!1151934 (not res!766024)) b!1151922))

(assert (= (and b!1151922 c!114132) b!1151938))

(assert (= (and b!1151922 (not c!114132)) b!1151950))

(assert (= (and b!1151938 c!114131) b!1151944))

(assert (= (and b!1151938 (not c!114131)) b!1151930))

(assert (= (and b!1151930 c!114129) b!1151931))

(assert (= (and b!1151930 (not c!114129)) b!1151936))

(assert (= (and b!1151936 c!114130) b!1151926))

(assert (= (and b!1151936 (not c!114130)) b!1151942))

(assert (= (or b!1151931 b!1151926) bm!53971))

(assert (= (or b!1151931 b!1151926) bm!53969))

(assert (= (or b!1151931 b!1151926) bm!53968))

(assert (= (or b!1151944 bm!53968) bm!53972))

(assert (= (or b!1151944 bm!53971) bm!53967))

(assert (= (or b!1151944 bm!53969) bm!53973))

(assert (= (and b!1151938 c!114127) b!1151928))

(assert (= (and b!1151938 (not c!114127)) b!1151945))

(assert (= (and b!1151938 res!766016) b!1151933))

(assert (= (and b!1151922 res!766028) b!1151925))

(assert (= (and b!1151949 condMapEmpty!45173) mapIsEmpty!45173))

(assert (= (and b!1151949 (not condMapEmpty!45173)) mapNonEmpty!45173))

(get-info :version)

(assert (= (and mapNonEmpty!45173 ((_ is ValueCellFull!13740) mapValue!45173)) b!1151939))

(assert (= (and b!1151949 ((_ is ValueCellFull!13740) mapDefault!45173)) b!1151935))

(assert (= start!98800 b!1151949))

(declare-fun b_lambda!19493 () Bool)

(assert (=> (not b_lambda!19493) (not b!1151951)))

(declare-fun t!36655 () Bool)

(declare-fun tb!9189 () Bool)

(assert (=> (and start!98800 (= defaultEntry!1004 defaultEntry!1004) t!36655) tb!9189))

(declare-fun result!18935 () Bool)

(assert (=> tb!9189 (= result!18935 tp_is_empty!28899)))

(assert (=> b!1151951 t!36655))

(declare-fun b_and!39603 () Bool)

(assert (= b_and!39601 (and (=> t!36655 result!18935) b_and!39603)))

(declare-fun m!1062019 () Bool)

(assert (=> b!1151932 m!1062019))

(declare-fun m!1062021 () Bool)

(assert (=> b!1151946 m!1062021))

(declare-fun m!1062023 () Bool)

(assert (=> b!1151929 m!1062023))

(declare-fun m!1062025 () Bool)

(assert (=> b!1151929 m!1062025))

(declare-fun m!1062027 () Bool)

(assert (=> b!1151933 m!1062027))

(declare-fun m!1062029 () Bool)

(assert (=> b!1151922 m!1062029))

(declare-fun m!1062031 () Bool)

(assert (=> b!1151922 m!1062031))

(declare-fun m!1062033 () Bool)

(assert (=> b!1151922 m!1062033))

(assert (=> b!1151922 m!1062031))

(declare-fun m!1062035 () Bool)

(assert (=> b!1151922 m!1062035))

(declare-fun m!1062037 () Bool)

(assert (=> b!1151922 m!1062037))

(declare-fun m!1062039 () Bool)

(assert (=> b!1151922 m!1062039))

(assert (=> b!1151922 m!1062037))

(declare-fun m!1062041 () Bool)

(assert (=> b!1151922 m!1062041))

(declare-fun m!1062043 () Bool)

(assert (=> b!1151922 m!1062043))

(assert (=> b!1151922 m!1062041))

(declare-fun m!1062045 () Bool)

(assert (=> b!1151922 m!1062045))

(assert (=> b!1151922 m!1062041))

(declare-fun m!1062047 () Bool)

(assert (=> b!1151944 m!1062047))

(declare-fun m!1062049 () Bool)

(assert (=> b!1151944 m!1062049))

(declare-fun m!1062051 () Bool)

(assert (=> b!1151944 m!1062051))

(declare-fun m!1062053 () Bool)

(assert (=> start!98800 m!1062053))

(declare-fun m!1062055 () Bool)

(assert (=> start!98800 m!1062055))

(declare-fun m!1062057 () Bool)

(assert (=> bm!53972 m!1062057))

(declare-fun m!1062059 () Bool)

(assert (=> b!1151925 m!1062059))

(declare-fun m!1062061 () Bool)

(assert (=> b!1151927 m!1062061))

(declare-fun m!1062063 () Bool)

(assert (=> b!1151927 m!1062063))

(declare-fun m!1062065 () Bool)

(assert (=> bm!53967 m!1062065))

(declare-fun m!1062067 () Bool)

(assert (=> b!1151951 m!1062067))

(declare-fun m!1062069 () Bool)

(assert (=> b!1151951 m!1062069))

(declare-fun m!1062071 () Bool)

(assert (=> b!1151951 m!1062071))

(declare-fun m!1062073 () Bool)

(assert (=> b!1151951 m!1062073))

(declare-fun m!1062075 () Bool)

(assert (=> b!1151943 m!1062075))

(assert (=> bm!53966 m!1062029))

(declare-fun m!1062077 () Bool)

(assert (=> b!1151940 m!1062077))

(assert (=> bm!53970 m!1062059))

(declare-fun m!1062079 () Bool)

(assert (=> b!1151938 m!1062079))

(declare-fun m!1062081 () Bool)

(assert (=> b!1151938 m!1062081))

(declare-fun m!1062083 () Bool)

(assert (=> b!1151938 m!1062083))

(declare-fun m!1062085 () Bool)

(assert (=> b!1151938 m!1062085))

(declare-fun m!1062087 () Bool)

(assert (=> b!1151937 m!1062087))

(declare-fun m!1062089 () Bool)

(assert (=> bm!53973 m!1062089))

(declare-fun m!1062091 () Bool)

(assert (=> b!1151924 m!1062091))

(declare-fun m!1062093 () Bool)

(assert (=> b!1151947 m!1062093))

(assert (=> b!1151928 m!1062027))

(declare-fun m!1062095 () Bool)

(assert (=> mapNonEmpty!45173 m!1062095))

(assert (=> b!1151934 m!1062041))

(declare-fun m!1062097 () Bool)

(assert (=> b!1151934 m!1062097))

(check-sat (not b!1151929) (not bm!53970) (not b!1151932) (not b!1151927) (not b!1151940) (not b!1151946) (not start!98800) (not b_next!24369) (not bm!53972) (not b!1151944) b_and!39603 (not b!1151934) (not b!1151938) (not b!1151922) (not b!1151928) (not bm!53973) (not mapNonEmpty!45173) (not b!1151925) (not b_lambda!19493) (not b!1151924) (not b!1151947) (not b!1151951) (not b!1151937) (not bm!53966) tp_is_empty!28899 (not bm!53967) (not b!1151933))
(check-sat b_and!39603 (not b_next!24369))

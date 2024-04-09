; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98976 () Bool)

(assert start!98976)

(declare-fun b_free!24545 () Bool)

(declare-fun b_next!24545 () Bool)

(assert (=> start!98976 (= b_free!24545 (not b_next!24545))))

(declare-fun tp!86346 () Bool)

(declare-fun b_and!39953 () Bool)

(assert (=> start!98976 (= tp!86346 b_and!39953)))

(declare-fun e!659692 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1160018 () Bool)

(declare-fun lt!521669 () Bool)

(assert (=> b!1160018 (= e!659692 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!521669) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1160019 () Bool)

(declare-datatypes ((Unit!38135 0))(
  ( (Unit!38136) )
))
(declare-fun e!659690 () Unit!38135)

(declare-fun lt!521668 () Unit!38135)

(assert (=> b!1160019 (= e!659690 lt!521668)))

(declare-fun call!56083 () Unit!38135)

(assert (=> b!1160019 (= lt!521668 call!56083)))

(declare-fun call!56087 () Bool)

(assert (=> b!1160019 call!56087))

(declare-fun bm!56078 () Bool)

(declare-datatypes ((V!43893 0))(
  ( (V!43894 (val!14594 Int)) )
))
(declare-datatypes ((tuple2!18658 0))(
  ( (tuple2!18659 (_1!9339 (_ BitVec 64)) (_2!9339 V!43893)) )
))
(declare-datatypes ((List!25436 0))(
  ( (Nil!25433) (Cons!25432 (h!26641 tuple2!18658) (t!36980 List!25436)) )
))
(declare-datatypes ((ListLongMap!16639 0))(
  ( (ListLongMap!16640 (toList!8335 List!25436)) )
))
(declare-fun lt!521665 () ListLongMap!16639)

(declare-fun call!56081 () Bool)

(declare-fun call!56088 () ListLongMap!16639)

(declare-fun c!115714 () Bool)

(declare-fun contains!6817 (ListLongMap!16639 (_ BitVec 64)) Bool)

(assert (=> bm!56078 (= call!56081 (contains!6817 (ite c!115714 lt!521665 call!56088) k!934))))

(declare-fun zeroValue!944 () V!43893)

(declare-fun lt!521677 () ListLongMap!16639)

(declare-fun bm!56079 () Bool)

(declare-fun c!115716 () Bool)

(declare-fun minValue!944 () V!43893)

(declare-fun call!56084 () ListLongMap!16639)

(declare-fun +!3661 (ListLongMap!16639 tuple2!18658) ListLongMap!16639)

(assert (=> bm!56079 (= call!56084 (+!3661 lt!521677 (ite (or c!115714 c!115716) (tuple2!18659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18659 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-datatypes ((array!74940 0))(
  ( (array!74941 (arr!36117 (Array (_ BitVec 32) (_ BitVec 64))) (size!36654 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74940)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13828 0))(
  ( (ValueCellFull!13828 (v!17232 V!43893)) (EmptyCell!13828) )
))
(declare-datatypes ((array!74942 0))(
  ( (array!74943 (arr!36118 (Array (_ BitVec 32) ValueCell!13828)) (size!36655 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74942)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun bm!56080 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun call!56082 () ListLongMap!16639)

(declare-fun getCurrentListMapNoExtraKeys!4771 (array!74940 array!74942 (_ BitVec 32) (_ BitVec 32) V!43893 V!43893 (_ BitVec 32) Int) ListLongMap!16639)

(assert (=> bm!56080 (= call!56082 (getCurrentListMapNoExtraKeys!4771 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160020 () Bool)

(declare-fun res!769984 () Bool)

(declare-fun e!659687 () Bool)

(assert (=> b!1160020 (=> (not res!769984) (not e!659687))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1160020 (= res!769984 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36654 _keys!1208))))))

(declare-fun b!1160021 () Bool)

(declare-fun res!769976 () Bool)

(assert (=> b!1160021 (=> (not res!769976) (not e!659687))))

(assert (=> b!1160021 (= res!769976 (and (= (size!36655 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36654 _keys!1208) (size!36655 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!56081 () Bool)

(declare-fun call!56085 () Unit!38135)

(assert (=> bm!56081 (= call!56083 call!56085)))

(declare-fun res!769978 () Bool)

(assert (=> start!98976 (=> (not res!769978) (not e!659687))))

(assert (=> start!98976 (= res!769978 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36654 _keys!1208))))))

(assert (=> start!98976 e!659687))

(declare-fun tp_is_empty!29075 () Bool)

(assert (=> start!98976 tp_is_empty!29075))

(declare-fun array_inv!27504 (array!74940) Bool)

(assert (=> start!98976 (array_inv!27504 _keys!1208)))

(assert (=> start!98976 true))

(assert (=> start!98976 tp!86346))

(declare-fun e!659684 () Bool)

(declare-fun array_inv!27505 (array!74942) Bool)

(assert (=> start!98976 (and (array_inv!27505 _values!996) e!659684)))

(declare-fun mapIsEmpty!45437 () Bool)

(declare-fun mapRes!45437 () Bool)

(assert (=> mapIsEmpty!45437 mapRes!45437))

(declare-fun b!1160022 () Bool)

(declare-fun res!769988 () Bool)

(assert (=> b!1160022 (=> (not res!769988) (not e!659687))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1160022 (= res!769988 (validMask!0 mask!1564))))

(declare-fun bm!56082 () Bool)

(declare-fun addStillContains!958 (ListLongMap!16639 (_ BitVec 64) V!43893 (_ BitVec 64)) Unit!38135)

(assert (=> bm!56082 (= call!56085 (addStillContains!958 lt!521677 (ite (or c!115714 c!115716) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115714 c!115716) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1160023 () Bool)

(declare-fun e!659689 () Bool)

(assert (=> b!1160023 (= e!659689 tp_is_empty!29075)))

(declare-fun b!1160024 () Bool)

(declare-fun arrayContainsKey!0 (array!74940 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1160024 (= e!659692 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1160025 () Bool)

(declare-fun e!659686 () Unit!38135)

(declare-fun Unit!38137 () Unit!38135)

(assert (=> b!1160025 (= e!659686 Unit!38137)))

(declare-fun b!1160026 () Bool)

(declare-fun e!659697 () Bool)

(assert (=> b!1160026 (= e!659697 tp_is_empty!29075)))

(declare-fun b!1160027 () Bool)

(assert (=> b!1160027 (contains!6817 (+!3661 lt!521665 (tuple2!18659 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!521679 () Unit!38135)

(assert (=> b!1160027 (= lt!521679 (addStillContains!958 lt!521665 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1160027 call!56081))

(assert (=> b!1160027 (= lt!521665 call!56084)))

(declare-fun lt!521664 () Unit!38135)

(assert (=> b!1160027 (= lt!521664 call!56085)))

(declare-fun e!659693 () Unit!38135)

(assert (=> b!1160027 (= e!659693 lt!521679)))

(declare-fun b!1160028 () Bool)

(declare-fun res!769977 () Bool)

(assert (=> b!1160028 (=> (not res!769977) (not e!659687))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1160028 (= res!769977 (validKeyInArray!0 k!934))))

(declare-fun e!659698 () Bool)

(declare-fun b!1160029 () Bool)

(declare-fun call!56086 () ListLongMap!16639)

(declare-fun -!1407 (ListLongMap!16639 (_ BitVec 64)) ListLongMap!16639)

(assert (=> b!1160029 (= e!659698 (= call!56086 (-!1407 call!56082 k!934)))))

(declare-fun b!1160030 () Bool)

(declare-fun res!769981 () Bool)

(declare-fun e!659691 () Bool)

(assert (=> b!1160030 (=> (not res!769981) (not e!659691))))

(declare-fun lt!521670 () array!74940)

(declare-datatypes ((List!25437 0))(
  ( (Nil!25434) (Cons!25433 (h!26642 (_ BitVec 64)) (t!36981 List!25437)) )
))
(declare-fun arrayNoDuplicates!0 (array!74940 (_ BitVec 32) List!25437) Bool)

(assert (=> b!1160030 (= res!769981 (arrayNoDuplicates!0 lt!521670 #b00000000000000000000000000000000 Nil!25434))))

(declare-fun lt!521680 () array!74942)

(declare-fun e!659700 () Bool)

(declare-fun b!1160031 () Bool)

(declare-fun lt!521684 () ListLongMap!16639)

(assert (=> b!1160031 (= e!659700 (= lt!521684 (getCurrentListMapNoExtraKeys!4771 lt!521670 lt!521680 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1160032 () Bool)

(declare-fun e!659695 () Bool)

(assert (=> b!1160032 (= e!659691 (not e!659695))))

(declare-fun res!769983 () Bool)

(assert (=> b!1160032 (=> res!769983 e!659695)))

(assert (=> b!1160032 (= res!769983 (bvsgt from!1455 i!673))))

(assert (=> b!1160032 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!521676 () Unit!38135)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74940 (_ BitVec 64) (_ BitVec 32)) Unit!38135)

(assert (=> b!1160032 (= lt!521676 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1160033 () Bool)

(assert (=> b!1160033 (= e!659687 e!659691)))

(declare-fun res!769979 () Bool)

(assert (=> b!1160033 (=> (not res!769979) (not e!659691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74940 (_ BitVec 32)) Bool)

(assert (=> b!1160033 (= res!769979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!521670 mask!1564))))

(assert (=> b!1160033 (= lt!521670 (array!74941 (store (arr!36117 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36654 _keys!1208)))))

(declare-fun b!1160034 () Bool)

(assert (=> b!1160034 (= c!115716 (and (not lt!521669) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1160034 (= e!659693 e!659690)))

(declare-fun b!1160035 () Bool)

(declare-fun e!659696 () Unit!38135)

(declare-fun Unit!38138 () Unit!38135)

(assert (=> b!1160035 (= e!659696 Unit!38138)))

(declare-fun b!1160036 () Bool)

(declare-fun res!769986 () Bool)

(assert (=> b!1160036 (=> (not res!769986) (not e!659687))))

(assert (=> b!1160036 (= res!769986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1160037 () Bool)

(assert (=> b!1160037 call!56087))

(declare-fun lt!521666 () Unit!38135)

(assert (=> b!1160037 (= lt!521666 call!56083)))

(assert (=> b!1160037 (= e!659686 lt!521666)))

(declare-fun e!659685 () Bool)

(declare-fun b!1160038 () Bool)

(assert (=> b!1160038 (= e!659685 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1160039 () Bool)

(declare-fun res!769975 () Bool)

(assert (=> b!1160039 (=> (not res!769975) (not e!659687))))

(assert (=> b!1160039 (= res!769975 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25434))))

(declare-fun mapNonEmpty!45437 () Bool)

(declare-fun tp!86347 () Bool)

(assert (=> mapNonEmpty!45437 (= mapRes!45437 (and tp!86347 e!659697))))

(declare-fun mapKey!45437 () (_ BitVec 32))

(declare-fun mapRest!45437 () (Array (_ BitVec 32) ValueCell!13828))

(declare-fun mapValue!45437 () ValueCell!13828)

(assert (=> mapNonEmpty!45437 (= (arr!36118 _values!996) (store mapRest!45437 mapKey!45437 mapValue!45437))))

(declare-fun bm!56083 () Bool)

(assert (=> bm!56083 (= call!56087 call!56081)))

(declare-fun bm!56084 () Bool)

(assert (=> bm!56084 (= call!56088 call!56084)))

(declare-fun b!1160040 () Bool)

(declare-fun e!659699 () Bool)

(assert (=> b!1160040 (= e!659699 true)))

(assert (=> b!1160040 e!659700))

(declare-fun res!769987 () Bool)

(assert (=> b!1160040 (=> (not res!769987) (not e!659700))))

(assert (=> b!1160040 (= res!769987 (= lt!521684 lt!521677))))

(declare-fun lt!521672 () ListLongMap!16639)

(assert (=> b!1160040 (= lt!521684 (-!1407 lt!521672 k!934))))

(declare-fun lt!521667 () V!43893)

(assert (=> b!1160040 (= (-!1407 (+!3661 lt!521677 (tuple2!18659 (select (arr!36117 _keys!1208) from!1455) lt!521667)) (select (arr!36117 _keys!1208) from!1455)) lt!521677)))

(declare-fun lt!521682 () Unit!38135)

(declare-fun addThenRemoveForNewKeyIsSame!245 (ListLongMap!16639 (_ BitVec 64) V!43893) Unit!38135)

(assert (=> b!1160040 (= lt!521682 (addThenRemoveForNewKeyIsSame!245 lt!521677 (select (arr!36117 _keys!1208) from!1455) lt!521667))))

(declare-fun lt!521681 () V!43893)

(declare-fun get!18447 (ValueCell!13828 V!43893) V!43893)

(assert (=> b!1160040 (= lt!521667 (get!18447 (select (arr!36118 _values!996) from!1455) lt!521681))))

(declare-fun lt!521675 () Unit!38135)

(assert (=> b!1160040 (= lt!521675 e!659696)))

(declare-fun c!115711 () Bool)

(assert (=> b!1160040 (= c!115711 (contains!6817 lt!521677 k!934))))

(assert (=> b!1160040 (= lt!521677 (getCurrentListMapNoExtraKeys!4771 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160041 () Bool)

(declare-fun e!659694 () Bool)

(assert (=> b!1160041 (= e!659695 e!659694)))

(declare-fun res!769980 () Bool)

(assert (=> b!1160041 (=> res!769980 e!659694)))

(assert (=> b!1160041 (= res!769980 (not (= from!1455 i!673)))))

(declare-fun lt!521683 () ListLongMap!16639)

(assert (=> b!1160041 (= lt!521683 (getCurrentListMapNoExtraKeys!4771 lt!521670 lt!521680 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1160041 (= lt!521680 (array!74943 (store (arr!36118 _values!996) i!673 (ValueCellFull!13828 lt!521681)) (size!36655 _values!996)))))

(declare-fun dynLambda!2773 (Int (_ BitVec 64)) V!43893)

(assert (=> b!1160041 (= lt!521681 (dynLambda!2773 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1160041 (= lt!521672 (getCurrentListMapNoExtraKeys!4771 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1160042 () Bool)

(declare-fun Unit!38139 () Unit!38135)

(assert (=> b!1160042 (= e!659696 Unit!38139)))

(assert (=> b!1160042 (= lt!521669 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1160042 (= c!115714 (and (not lt!521669) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!521673 () Unit!38135)

(assert (=> b!1160042 (= lt!521673 e!659693)))

(declare-fun lt!521671 () Unit!38135)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!532 (array!74940 array!74942 (_ BitVec 32) (_ BitVec 32) V!43893 V!43893 (_ BitVec 64) (_ BitVec 32) Int) Unit!38135)

(assert (=> b!1160042 (= lt!521671 (lemmaListMapContainsThenArrayContainsFrom!532 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115712 () Bool)

(assert (=> b!1160042 (= c!115712 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769982 () Bool)

(assert (=> b!1160042 (= res!769982 e!659692)))

(assert (=> b!1160042 (=> (not res!769982) (not e!659685))))

(assert (=> b!1160042 e!659685))

(declare-fun lt!521674 () Unit!38135)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74940 (_ BitVec 32) (_ BitVec 32)) Unit!38135)

(assert (=> b!1160042 (= lt!521674 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1160042 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25434)))

(declare-fun lt!521685 () Unit!38135)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74940 (_ BitVec 64) (_ BitVec 32) List!25437) Unit!38135)

(assert (=> b!1160042 (= lt!521685 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25434))))

(assert (=> b!1160042 false))

(declare-fun b!1160043 () Bool)

(assert (=> b!1160043 (= e!659690 e!659686)))

(declare-fun c!115715 () Bool)

(assert (=> b!1160043 (= c!115715 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!521669))))

(declare-fun b!1160044 () Bool)

(declare-fun res!769985 () Bool)

(assert (=> b!1160044 (=> (not res!769985) (not e!659687))))

(assert (=> b!1160044 (= res!769985 (= (select (arr!36117 _keys!1208) i!673) k!934))))

(declare-fun bm!56085 () Bool)

(assert (=> bm!56085 (= call!56086 (getCurrentListMapNoExtraKeys!4771 lt!521670 lt!521680 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160045 () Bool)

(assert (=> b!1160045 (= e!659698 (= call!56086 call!56082))))

(declare-fun b!1160046 () Bool)

(assert (=> b!1160046 (= e!659684 (and e!659689 mapRes!45437))))

(declare-fun condMapEmpty!45437 () Bool)

(declare-fun mapDefault!45437 () ValueCell!13828)


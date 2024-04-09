; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100938 () Bool)

(assert start!100938)

(declare-fun b_free!25971 () Bool)

(declare-fun b_next!25971 () Bool)

(assert (=> start!100938 (= b_free!25971 (not b_next!25971))))

(declare-fun tp!90924 () Bool)

(declare-fun b_and!42997 () Bool)

(assert (=> start!100938 (= tp!90924 b_and!42997)))

(declare-fun b!1207961 () Bool)

(declare-fun res!803114 () Bool)

(declare-fun e!686072 () Bool)

(assert (=> b!1207961 (=> (not res!803114) (not e!686072))))

(declare-datatypes ((array!78108 0))(
  ( (array!78109 (arr!37689 (Array (_ BitVec 32) (_ BitVec 64))) (size!38226 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78108)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1207961 (= res!803114 (= (select (arr!37689 _keys!1208) i!673) k0!934))))

(declare-fun b!1207962 () Bool)

(declare-fun e!686063 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1207962 (= e!686063 (or (bvsge (size!38226 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38226 _keys!1208)) (bvslt from!1455 (size!38226 _keys!1208))))))

(declare-datatypes ((List!26715 0))(
  ( (Nil!26712) (Cons!26711 (h!27920 (_ BitVec 64)) (t!39673 List!26715)) )
))
(declare-fun arrayNoDuplicates!0 (array!78108 (_ BitVec 32) List!26715) Bool)

(assert (=> b!1207962 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26712)))

(declare-datatypes ((Unit!39972 0))(
  ( (Unit!39973) )
))
(declare-fun lt!548157 () Unit!39972)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78108 (_ BitVec 32) (_ BitVec 32)) Unit!39972)

(assert (=> b!1207962 (= lt!548157 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!686064 () Bool)

(assert (=> b!1207962 e!686064))

(declare-fun res!803117 () Bool)

(assert (=> b!1207962 (=> (not res!803117) (not e!686064))))

(declare-fun e!686065 () Bool)

(assert (=> b!1207962 (= res!803117 e!686065)))

(declare-fun c!118760 () Bool)

(assert (=> b!1207962 (= c!118760 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((V!46027 0))(
  ( (V!46028 (val!15394 Int)) )
))
(declare-fun zeroValue!944 () V!46027)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14628 0))(
  ( (ValueCellFull!14628 (v!18043 V!46027)) (EmptyCell!14628) )
))
(declare-datatypes ((array!78110 0))(
  ( (array!78111 (arr!37690 (Array (_ BitVec 32) ValueCell!14628)) (size!38227 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78110)

(declare-fun minValue!944 () V!46027)

(declare-fun lt!548147 () Unit!39972)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!583 (array!78108 array!78110 (_ BitVec 32) (_ BitVec 32) V!46027 V!46027 (_ BitVec 64) (_ BitVec 32) Int) Unit!39972)

(assert (=> b!1207962 (= lt!548147 (lemmaListMapContainsThenArrayContainsFrom!583 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!548152 () Unit!39972)

(declare-fun e!686071 () Unit!39972)

(assert (=> b!1207962 (= lt!548152 e!686071)))

(declare-fun c!118758 () Bool)

(declare-fun lt!548155 () Bool)

(assert (=> b!1207962 (= c!118758 (and (not lt!548155) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1207962 (= lt!548155 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!118757 () Bool)

(declare-datatypes ((tuple2!19892 0))(
  ( (tuple2!19893 (_1!9956 (_ BitVec 64)) (_2!9956 V!46027)) )
))
(declare-datatypes ((List!26716 0))(
  ( (Nil!26713) (Cons!26712 (h!27921 tuple2!19892) (t!39674 List!26716)) )
))
(declare-datatypes ((ListLongMap!17873 0))(
  ( (ListLongMap!17874 (toList!8952 List!26716)) )
))
(declare-fun lt!548151 () ListLongMap!17873)

(declare-fun call!59054 () Unit!39972)

(declare-fun lt!548146 () ListLongMap!17873)

(declare-fun bm!59046 () Bool)

(declare-fun addStillContains!1045 (ListLongMap!17873 (_ BitVec 64) V!46027 (_ BitVec 64)) Unit!39972)

(assert (=> bm!59046 (= call!59054 (addStillContains!1045 (ite c!118758 lt!548146 lt!548151) (ite c!118758 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118757 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118758 minValue!944 (ite c!118757 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1207963 () Bool)

(declare-fun res!803116 () Bool)

(assert (=> b!1207963 (=> (not res!803116) (not e!686072))))

(assert (=> b!1207963 (= res!803116 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26712))))

(declare-fun b!1207964 () Bool)

(declare-fun call!59051 () Bool)

(assert (=> b!1207964 call!59051))

(declare-fun lt!548153 () Unit!39972)

(declare-fun call!59052 () Unit!39972)

(assert (=> b!1207964 (= lt!548153 call!59052)))

(declare-fun e!686068 () Unit!39972)

(assert (=> b!1207964 (= e!686068 lt!548153)))

(declare-fun e!686060 () Bool)

(declare-fun b!1207965 () Bool)

(declare-fun call!59056 () ListLongMap!17873)

(declare-fun call!59053 () ListLongMap!17873)

(declare-fun -!1859 (ListLongMap!17873 (_ BitVec 64)) ListLongMap!17873)

(assert (=> b!1207965 (= e!686060 (= call!59053 (-!1859 call!59056 k0!934)))))

(declare-fun b!1207966 () Bool)

(declare-fun arrayContainsKey!0 (array!78108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1207966 (= e!686064 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1207967 () Bool)

(declare-fun e!686067 () Bool)

(assert (=> b!1207967 (= e!686067 e!686063)))

(declare-fun res!803110 () Bool)

(assert (=> b!1207967 (=> res!803110 e!686063)))

(declare-fun contains!6957 (ListLongMap!17873 (_ BitVec 64)) Bool)

(assert (=> b!1207967 (= res!803110 (not (contains!6957 lt!548151 k0!934)))))

(declare-fun getCurrentListMapNoExtraKeys!5359 (array!78108 array!78110 (_ BitVec 32) (_ BitVec 32) V!46027 V!46027 (_ BitVec 32) Int) ListLongMap!17873)

(assert (=> b!1207967 (= lt!548151 (getCurrentListMapNoExtraKeys!5359 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1207968 () Bool)

(declare-fun res!803104 () Bool)

(assert (=> b!1207968 (=> (not res!803104) (not e!686072))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1207968 (= res!803104 (validMask!0 mask!1564))))

(declare-fun bm!59047 () Bool)

(assert (=> bm!59047 (= call!59056 (getCurrentListMapNoExtraKeys!5359 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1207969 () Bool)

(declare-fun res!803109 () Bool)

(assert (=> b!1207969 (=> (not res!803109) (not e!686072))))

(assert (=> b!1207969 (= res!803109 (and (= (size!38227 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38226 _keys!1208) (size!38227 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!47875 () Bool)

(declare-fun mapRes!47875 () Bool)

(declare-fun tp!90923 () Bool)

(declare-fun e!686075 () Bool)

(assert (=> mapNonEmpty!47875 (= mapRes!47875 (and tp!90923 e!686075))))

(declare-fun mapValue!47875 () ValueCell!14628)

(declare-fun mapRest!47875 () (Array (_ BitVec 32) ValueCell!14628))

(declare-fun mapKey!47875 () (_ BitVec 32))

(assert (=> mapNonEmpty!47875 (= (arr!37690 _values!996) (store mapRest!47875 mapKey!47875 mapValue!47875))))

(declare-fun b!1207970 () Bool)

(assert (=> b!1207970 (= e!686065 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!548155) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1207971 () Bool)

(declare-fun c!118756 () Bool)

(assert (=> b!1207971 (= c!118756 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!548155))))

(declare-fun e!686066 () Unit!39972)

(assert (=> b!1207971 (= e!686068 e!686066)))

(declare-fun lt!548154 () array!78110)

(declare-fun lt!548145 () array!78108)

(declare-fun bm!59048 () Bool)

(assert (=> bm!59048 (= call!59053 (getCurrentListMapNoExtraKeys!5359 lt!548145 lt!548154 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1207972 () Bool)

(declare-fun lt!548144 () Unit!39972)

(assert (=> b!1207972 (= e!686066 lt!548144)))

(assert (=> b!1207972 (= lt!548144 call!59052)))

(assert (=> b!1207972 call!59051))

(declare-fun res!803106 () Bool)

(assert (=> start!100938 (=> (not res!803106) (not e!686072))))

(assert (=> start!100938 (= res!803106 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38226 _keys!1208))))))

(assert (=> start!100938 e!686072))

(declare-fun tp_is_empty!30675 () Bool)

(assert (=> start!100938 tp_is_empty!30675))

(declare-fun array_inv!28614 (array!78108) Bool)

(assert (=> start!100938 (array_inv!28614 _keys!1208)))

(assert (=> start!100938 true))

(assert (=> start!100938 tp!90924))

(declare-fun e!686073 () Bool)

(declare-fun array_inv!28615 (array!78110) Bool)

(assert (=> start!100938 (and (array_inv!28615 _values!996) e!686073)))

(declare-fun mapIsEmpty!47875 () Bool)

(assert (=> mapIsEmpty!47875 mapRes!47875))

(declare-fun bm!59049 () Bool)

(declare-fun call!59050 () ListLongMap!17873)

(declare-fun +!3981 (ListLongMap!17873 tuple2!19892) ListLongMap!17873)

(assert (=> bm!59049 (= call!59050 (+!3981 lt!548151 (ite (or c!118758 c!118757) (tuple2!19893 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19893 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1207973 () Bool)

(assert (=> b!1207973 (= e!686071 e!686068)))

(assert (=> b!1207973 (= c!118757 (and (not lt!548155) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!59050 () Bool)

(assert (=> bm!59050 (= call!59052 call!59054)))

(declare-fun b!1207974 () Bool)

(declare-fun e!686061 () Bool)

(assert (=> b!1207974 (= e!686072 e!686061)))

(declare-fun res!803105 () Bool)

(assert (=> b!1207974 (=> (not res!803105) (not e!686061))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78108 (_ BitVec 32)) Bool)

(assert (=> b!1207974 (= res!803105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!548145 mask!1564))))

(assert (=> b!1207974 (= lt!548145 (array!78109 (store (arr!37689 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38226 _keys!1208)))))

(declare-fun b!1207975 () Bool)

(declare-fun e!686062 () Bool)

(assert (=> b!1207975 (= e!686061 (not e!686062))))

(declare-fun res!803113 () Bool)

(assert (=> b!1207975 (=> res!803113 e!686062)))

(assert (=> b!1207975 (= res!803113 (bvsgt from!1455 i!673))))

(assert (=> b!1207975 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!548143 () Unit!39972)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78108 (_ BitVec 64) (_ BitVec 32)) Unit!39972)

(assert (=> b!1207975 (= lt!548143 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!59051 () Bool)

(declare-fun call!59055 () ListLongMap!17873)

(assert (=> bm!59051 (= call!59055 call!59050)))

(declare-fun bm!59052 () Bool)

(declare-fun call!59049 () Bool)

(assert (=> bm!59052 (= call!59051 call!59049)))

(declare-fun b!1207976 () Bool)

(assert (=> b!1207976 (= e!686060 (= call!59053 call!59056))))

(declare-fun b!1207977 () Bool)

(declare-fun e!686074 () Bool)

(assert (=> b!1207977 (= e!686074 tp_is_empty!30675)))

(declare-fun b!1207978 () Bool)

(declare-fun res!803107 () Bool)

(assert (=> b!1207978 (=> (not res!803107) (not e!686072))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1207978 (= res!803107 (validKeyInArray!0 k0!934))))

(declare-fun b!1207979 () Bool)

(declare-fun lt!548148 () Unit!39972)

(assert (=> b!1207979 (= e!686071 lt!548148)))

(declare-fun lt!548150 () Unit!39972)

(assert (=> b!1207979 (= lt!548150 (addStillContains!1045 lt!548151 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1207979 (= lt!548146 call!59050)))

(assert (=> b!1207979 call!59049))

(assert (=> b!1207979 (= lt!548148 call!59054)))

(assert (=> b!1207979 (contains!6957 (+!3981 lt!548146 (tuple2!19893 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1207980 () Bool)

(declare-fun Unit!39974 () Unit!39972)

(assert (=> b!1207980 (= e!686066 Unit!39974)))

(declare-fun b!1207981 () Bool)

(declare-fun res!803103 () Bool)

(assert (=> b!1207981 (=> (not res!803103) (not e!686072))))

(assert (=> b!1207981 (= res!803103 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38226 _keys!1208))))))

(declare-fun b!1207982 () Bool)

(assert (=> b!1207982 (= e!686073 (and e!686074 mapRes!47875))))

(declare-fun condMapEmpty!47875 () Bool)

(declare-fun mapDefault!47875 () ValueCell!14628)

(assert (=> b!1207982 (= condMapEmpty!47875 (= (arr!37690 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14628)) mapDefault!47875)))))

(declare-fun b!1207983 () Bool)

(declare-fun e!686070 () Bool)

(assert (=> b!1207983 (= e!686062 e!686070)))

(declare-fun res!803115 () Bool)

(assert (=> b!1207983 (=> res!803115 e!686070)))

(assert (=> b!1207983 (= res!803115 (not (= from!1455 i!673)))))

(declare-fun lt!548142 () ListLongMap!17873)

(assert (=> b!1207983 (= lt!548142 (getCurrentListMapNoExtraKeys!5359 lt!548145 lt!548154 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3278 (Int (_ BitVec 64)) V!46027)

(assert (=> b!1207983 (= lt!548154 (array!78111 (store (arr!37690 _values!996) i!673 (ValueCellFull!14628 (dynLambda!3278 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38227 _values!996)))))

(declare-fun lt!548149 () ListLongMap!17873)

(assert (=> b!1207983 (= lt!548149 (getCurrentListMapNoExtraKeys!5359 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1207984 () Bool)

(declare-fun res!803111 () Bool)

(assert (=> b!1207984 (=> (not res!803111) (not e!686072))))

(assert (=> b!1207984 (= res!803111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1207985 () Bool)

(assert (=> b!1207985 (= e!686075 tp_is_empty!30675)))

(declare-fun b!1207986 () Bool)

(assert (=> b!1207986 (= e!686070 e!686067)))

(declare-fun res!803108 () Bool)

(assert (=> b!1207986 (=> res!803108 e!686067)))

(assert (=> b!1207986 (= res!803108 (not (= (select (arr!37689 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1207986 e!686060))

(declare-fun c!118759 () Bool)

(assert (=> b!1207986 (= c!118759 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!548156 () Unit!39972)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1063 (array!78108 array!78110 (_ BitVec 32) (_ BitVec 32) V!46027 V!46027 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39972)

(assert (=> b!1207986 (= lt!548156 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1063 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1207987 () Bool)

(declare-fun res!803112 () Bool)

(assert (=> b!1207987 (=> (not res!803112) (not e!686061))))

(assert (=> b!1207987 (= res!803112 (arrayNoDuplicates!0 lt!548145 #b00000000000000000000000000000000 Nil!26712))))

(declare-fun bm!59053 () Bool)

(assert (=> bm!59053 (= call!59049 (contains!6957 (ite c!118758 lt!548146 call!59055) k0!934))))

(declare-fun b!1207988 () Bool)

(assert (=> b!1207988 (= e!686065 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (= (and start!100938 res!803106) b!1207968))

(assert (= (and b!1207968 res!803104) b!1207969))

(assert (= (and b!1207969 res!803109) b!1207984))

(assert (= (and b!1207984 res!803111) b!1207963))

(assert (= (and b!1207963 res!803116) b!1207981))

(assert (= (and b!1207981 res!803103) b!1207978))

(assert (= (and b!1207978 res!803107) b!1207961))

(assert (= (and b!1207961 res!803114) b!1207974))

(assert (= (and b!1207974 res!803105) b!1207987))

(assert (= (and b!1207987 res!803112) b!1207975))

(assert (= (and b!1207975 (not res!803113)) b!1207983))

(assert (= (and b!1207983 (not res!803115)) b!1207986))

(assert (= (and b!1207986 c!118759) b!1207965))

(assert (= (and b!1207986 (not c!118759)) b!1207976))

(assert (= (or b!1207965 b!1207976) bm!59048))

(assert (= (or b!1207965 b!1207976) bm!59047))

(assert (= (and b!1207986 (not res!803108)) b!1207967))

(assert (= (and b!1207967 (not res!803110)) b!1207962))

(assert (= (and b!1207962 c!118758) b!1207979))

(assert (= (and b!1207962 (not c!118758)) b!1207973))

(assert (= (and b!1207973 c!118757) b!1207964))

(assert (= (and b!1207973 (not c!118757)) b!1207971))

(assert (= (and b!1207971 c!118756) b!1207972))

(assert (= (and b!1207971 (not c!118756)) b!1207980))

(assert (= (or b!1207964 b!1207972) bm!59050))

(assert (= (or b!1207964 b!1207972) bm!59051))

(assert (= (or b!1207964 b!1207972) bm!59052))

(assert (= (or b!1207979 bm!59052) bm!59053))

(assert (= (or b!1207979 bm!59050) bm!59046))

(assert (= (or b!1207979 bm!59051) bm!59049))

(assert (= (and b!1207962 c!118760) b!1207988))

(assert (= (and b!1207962 (not c!118760)) b!1207970))

(assert (= (and b!1207962 res!803117) b!1207966))

(assert (= (and b!1207982 condMapEmpty!47875) mapIsEmpty!47875))

(assert (= (and b!1207982 (not condMapEmpty!47875)) mapNonEmpty!47875))

(get-info :version)

(assert (= (and mapNonEmpty!47875 ((_ is ValueCellFull!14628) mapValue!47875)) b!1207985))

(assert (= (and b!1207982 ((_ is ValueCellFull!14628) mapDefault!47875)) b!1207977))

(assert (= start!100938 b!1207982))

(declare-fun b_lambda!21505 () Bool)

(assert (=> (not b_lambda!21505) (not b!1207983)))

(declare-fun t!39672 () Bool)

(declare-fun tb!10779 () Bool)

(assert (=> (and start!100938 (= defaultEntry!1004 defaultEntry!1004) t!39672) tb!10779))

(declare-fun result!22139 () Bool)

(assert (=> tb!10779 (= result!22139 tp_is_empty!30675)))

(assert (=> b!1207983 t!39672))

(declare-fun b_and!42999 () Bool)

(assert (= b_and!42997 (and (=> t!39672 result!22139) b_and!42999)))

(declare-fun m!1113867 () Bool)

(assert (=> bm!59053 m!1113867))

(declare-fun m!1113869 () Bool)

(assert (=> b!1207988 m!1113869))

(declare-fun m!1113871 () Bool)

(assert (=> b!1207974 m!1113871))

(declare-fun m!1113873 () Bool)

(assert (=> b!1207974 m!1113873))

(assert (=> b!1207966 m!1113869))

(declare-fun m!1113875 () Bool)

(assert (=> b!1207961 m!1113875))

(declare-fun m!1113877 () Bool)

(assert (=> mapNonEmpty!47875 m!1113877))

(declare-fun m!1113879 () Bool)

(assert (=> b!1207979 m!1113879))

(declare-fun m!1113881 () Bool)

(assert (=> b!1207979 m!1113881))

(assert (=> b!1207979 m!1113881))

(declare-fun m!1113883 () Bool)

(assert (=> b!1207979 m!1113883))

(declare-fun m!1113885 () Bool)

(assert (=> bm!59047 m!1113885))

(declare-fun m!1113887 () Bool)

(assert (=> b!1207968 m!1113887))

(declare-fun m!1113889 () Bool)

(assert (=> b!1207987 m!1113889))

(declare-fun m!1113891 () Bool)

(assert (=> b!1207965 m!1113891))

(declare-fun m!1113893 () Bool)

(assert (=> b!1207984 m!1113893))

(declare-fun m!1113895 () Bool)

(assert (=> b!1207963 m!1113895))

(declare-fun m!1113897 () Bool)

(assert (=> bm!59049 m!1113897))

(declare-fun m!1113899 () Bool)

(assert (=> b!1207986 m!1113899))

(declare-fun m!1113901 () Bool)

(assert (=> b!1207986 m!1113901))

(declare-fun m!1113903 () Bool)

(assert (=> b!1207978 m!1113903))

(declare-fun m!1113905 () Bool)

(assert (=> b!1207962 m!1113905))

(declare-fun m!1113907 () Bool)

(assert (=> b!1207962 m!1113907))

(declare-fun m!1113909 () Bool)

(assert (=> b!1207962 m!1113909))

(declare-fun m!1113911 () Bool)

(assert (=> start!100938 m!1113911))

(declare-fun m!1113913 () Bool)

(assert (=> start!100938 m!1113913))

(declare-fun m!1113915 () Bool)

(assert (=> b!1207983 m!1113915))

(declare-fun m!1113917 () Bool)

(assert (=> b!1207983 m!1113917))

(declare-fun m!1113919 () Bool)

(assert (=> b!1207983 m!1113919))

(declare-fun m!1113921 () Bool)

(assert (=> b!1207983 m!1113921))

(declare-fun m!1113923 () Bool)

(assert (=> bm!59048 m!1113923))

(declare-fun m!1113925 () Bool)

(assert (=> bm!59046 m!1113925))

(declare-fun m!1113927 () Bool)

(assert (=> b!1207967 m!1113927))

(assert (=> b!1207967 m!1113885))

(declare-fun m!1113929 () Bool)

(assert (=> b!1207975 m!1113929))

(declare-fun m!1113931 () Bool)

(assert (=> b!1207975 m!1113931))

(check-sat (not b!1207963) (not bm!59046) (not b!1207979) (not b!1207975) (not b!1207978) (not b_lambda!21505) (not b_next!25971) (not b!1207965) (not b!1207968) (not b!1207986) (not b!1207983) (not bm!59053) b_and!42999 (not b!1207988) (not mapNonEmpty!47875) (not bm!59048) tp_is_empty!30675 (not b!1207974) (not bm!59047) (not b!1207967) (not start!100938) (not b!1207987) (not b!1207962) (not b!1207984) (not b!1207966) (not bm!59049))
(check-sat b_and!42999 (not b_next!25971))

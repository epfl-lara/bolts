; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101038 () Bool)

(assert start!101038)

(declare-fun b_free!26001 () Bool)

(declare-fun b_next!26001 () Bool)

(assert (=> start!101038 (= b_free!26001 (not b_next!26001))))

(declare-fun tp!91020 () Bool)

(declare-fun b_and!43093 () Bool)

(assert (=> start!101038 (= tp!91020 b_and!43093)))

(declare-fun b!1209697 () Bool)

(declare-fun e!687082 () Bool)

(declare-fun tp_is_empty!30705 () Bool)

(assert (=> b!1209697 (= e!687082 tp_is_empty!30705)))

(declare-fun b!1209698 () Bool)

(declare-fun res!804044 () Bool)

(declare-fun e!687069 () Bool)

(assert (=> b!1209698 (=> (not res!804044) (not e!687069))))

(declare-datatypes ((array!78170 0))(
  ( (array!78171 (arr!37718 (Array (_ BitVec 32) (_ BitVec 64))) (size!38255 (_ BitVec 32))) )
))
(declare-fun lt!549115 () array!78170)

(declare-datatypes ((List!26739 0))(
  ( (Nil!26736) (Cons!26735 (h!27944 (_ BitVec 64)) (t!39727 List!26739)) )
))
(declare-fun arrayNoDuplicates!0 (array!78170 (_ BitVec 32) List!26739) Bool)

(assert (=> b!1209698 (= res!804044 (arrayNoDuplicates!0 lt!549115 #b00000000000000000000000000000000 Nil!26736))))

(declare-fun b!1209699 () Bool)

(declare-fun e!687075 () Bool)

(assert (=> b!1209699 (= e!687069 (not e!687075))))

(declare-fun res!804037 () Bool)

(assert (=> b!1209699 (=> res!804037 e!687075)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1209699 (= res!804037 (bvsgt from!1455 i!673))))

(declare-fun _keys!1208 () array!78170)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78170 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1209699 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40014 0))(
  ( (Unit!40015) )
))
(declare-fun lt!549122 () Unit!40014)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78170 (_ BitVec 64) (_ BitVec 32)) Unit!40014)

(assert (=> b!1209699 (= lt!549122 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-datatypes ((V!46067 0))(
  ( (V!46068 (val!15409 Int)) )
))
(declare-fun zeroValue!944 () V!46067)

(declare-fun bm!59449 () Bool)

(declare-fun c!119069 () Bool)

(declare-datatypes ((tuple2!19918 0))(
  ( (tuple2!19919 (_1!9969 (_ BitVec 64)) (_2!9969 V!46067)) )
))
(declare-datatypes ((List!26740 0))(
  ( (Nil!26737) (Cons!26736 (h!27945 tuple2!19918) (t!39728 List!26740)) )
))
(declare-datatypes ((ListLongMap!17899 0))(
  ( (ListLongMap!17900 (toList!8965 List!26740)) )
))
(declare-fun call!59453 () ListLongMap!17899)

(declare-fun c!119072 () Bool)

(declare-fun lt!549123 () ListLongMap!17899)

(declare-fun minValue!944 () V!46067)

(declare-fun +!3992 (ListLongMap!17899 tuple2!19918) ListLongMap!17899)

(assert (=> bm!59449 (= call!59453 (+!3992 lt!549123 (ite (or c!119069 c!119072) (tuple2!19919 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19919 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1209700 () Bool)

(declare-fun e!687073 () Unit!40014)

(declare-fun lt!549119 () Unit!40014)

(assert (=> b!1209700 (= e!687073 lt!549119)))

(declare-fun lt!549120 () Unit!40014)

(declare-fun addStillContains!1057 (ListLongMap!17899 (_ BitVec 64) V!46067 (_ BitVec 64)) Unit!40014)

(assert (=> b!1209700 (= lt!549120 (addStillContains!1057 lt!549123 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun lt!549118 () ListLongMap!17899)

(assert (=> b!1209700 (= lt!549118 call!59453)))

(declare-fun call!59452 () Bool)

(assert (=> b!1209700 call!59452))

(declare-fun call!59451 () Unit!40014)

(assert (=> b!1209700 (= lt!549119 call!59451)))

(declare-fun contains!6979 (ListLongMap!17899 (_ BitVec 64)) Bool)

(assert (=> b!1209700 (contains!6979 (+!3992 lt!549118 (tuple2!19919 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1209701 () Bool)

(declare-fun e!687076 () Unit!40014)

(assert (=> b!1209701 (= e!687073 e!687076)))

(declare-fun lt!549117 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1209701 (= c!119072 (and (not lt!549117) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1209702 () Bool)

(declare-fun e!687079 () Unit!40014)

(declare-fun Unit!40016 () Unit!40014)

(assert (=> b!1209702 (= e!687079 Unit!40016)))

(declare-fun mapIsEmpty!47926 () Bool)

(declare-fun mapRes!47926 () Bool)

(assert (=> mapIsEmpty!47926 mapRes!47926))

(declare-fun mapNonEmpty!47926 () Bool)

(declare-fun tp!91019 () Bool)

(assert (=> mapNonEmpty!47926 (= mapRes!47926 (and tp!91019 e!687082))))

(declare-fun mapKey!47926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14643 0))(
  ( (ValueCellFull!14643 (v!18061 V!46067)) (EmptyCell!14643) )
))
(declare-fun mapValue!47926 () ValueCell!14643)

(declare-datatypes ((array!78172 0))(
  ( (array!78173 (arr!37719 (Array (_ BitVec 32) ValueCell!14643)) (size!38256 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78172)

(declare-fun mapRest!47926 () (Array (_ BitVec 32) ValueCell!14643))

(assert (=> mapNonEmpty!47926 (= (arr!37719 _values!996) (store mapRest!47926 mapKey!47926 mapValue!47926))))

(declare-fun b!1209703 () Bool)

(declare-fun e!687081 () Bool)

(assert (=> b!1209703 (= e!687081 e!687069)))

(declare-fun res!804032 () Bool)

(assert (=> b!1209703 (=> (not res!804032) (not e!687069))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78170 (_ BitVec 32)) Bool)

(assert (=> b!1209703 (= res!804032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!549115 mask!1564))))

(assert (=> b!1209703 (= lt!549115 (array!78171 (store (arr!37718 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38255 _keys!1208)))))

(declare-fun b!1209704 () Bool)

(declare-fun res!804035 () Bool)

(assert (=> b!1209704 (=> (not res!804035) (not e!687081))))

(assert (=> b!1209704 (= res!804035 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38255 _keys!1208))))))

(declare-fun e!687077 () Bool)

(declare-fun b!1209705 () Bool)

(assert (=> b!1209705 (= e!687077 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1209706 () Bool)

(declare-fun lt!549109 () Unit!40014)

(assert (=> b!1209706 (= e!687079 lt!549109)))

(declare-fun call!59458 () Unit!40014)

(assert (=> b!1209706 (= lt!549109 call!59458)))

(declare-fun call!59454 () Bool)

(assert (=> b!1209706 call!59454))

(declare-fun b!1209707 () Bool)

(declare-fun res!804041 () Bool)

(assert (=> b!1209707 (=> (not res!804041) (not e!687081))))

(assert (=> b!1209707 (= res!804041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!59450 () Bool)

(assert (=> bm!59450 (= call!59451 (addStillContains!1057 (ite c!119069 lt!549118 lt!549123) (ite c!119069 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!119072 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!119069 minValue!944 (ite c!119072 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1209708 () Bool)

(declare-fun e!687070 () Bool)

(assert (=> b!1209708 (= e!687075 e!687070)))

(declare-fun res!804036 () Bool)

(assert (=> b!1209708 (=> res!804036 e!687070)))

(assert (=> b!1209708 (= res!804036 (not (= from!1455 i!673)))))

(declare-fun lt!549107 () ListLongMap!17899)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!549113 () array!78172)

(declare-fun getCurrentListMapNoExtraKeys!5372 (array!78170 array!78172 (_ BitVec 32) (_ BitVec 32) V!46067 V!46067 (_ BitVec 32) Int) ListLongMap!17899)

(assert (=> b!1209708 (= lt!549107 (getCurrentListMapNoExtraKeys!5372 lt!549115 lt!549113 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3289 (Int (_ BitVec 64)) V!46067)

(assert (=> b!1209708 (= lt!549113 (array!78173 (store (arr!37719 _values!996) i!673 (ValueCellFull!14643 (dynLambda!3289 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38256 _values!996)))))

(declare-fun lt!549110 () ListLongMap!17899)

(assert (=> b!1209708 (= lt!549110 (getCurrentListMapNoExtraKeys!5372 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!59451 () Bool)

(assert (=> bm!59451 (= call!59458 call!59451)))

(declare-fun b!1209709 () Bool)

(declare-fun res!804040 () Bool)

(assert (=> b!1209709 (=> (not res!804040) (not e!687081))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1209709 (= res!804040 (validKeyInArray!0 k0!934))))

(declare-fun b!1209710 () Bool)

(declare-fun res!804034 () Bool)

(assert (=> b!1209710 (=> (not res!804034) (not e!687081))))

(assert (=> b!1209710 (= res!804034 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26736))))

(declare-fun b!1209711 () Bool)

(declare-fun e!687071 () Bool)

(assert (=> b!1209711 (= e!687071 true)))

(assert (=> b!1209711 false))

(declare-fun lt!549116 () Unit!40014)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78170 (_ BitVec 64) (_ BitVec 32) List!26739) Unit!40014)

(assert (=> b!1209711 (= lt!549116 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26736))))

(assert (=> b!1209711 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26736)))

(declare-fun lt!549108 () Unit!40014)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78170 (_ BitVec 32) (_ BitVec 32)) Unit!40014)

(assert (=> b!1209711 (= lt!549108 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!687067 () Bool)

(assert (=> b!1209711 e!687067))

(declare-fun res!804042 () Bool)

(assert (=> b!1209711 (=> (not res!804042) (not e!687067))))

(assert (=> b!1209711 (= res!804042 e!687077)))

(declare-fun c!119073 () Bool)

(assert (=> b!1209711 (= c!119073 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!549114 () Unit!40014)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!594 (array!78170 array!78172 (_ BitVec 32) (_ BitVec 32) V!46067 V!46067 (_ BitVec 64) (_ BitVec 32) Int) Unit!40014)

(assert (=> b!1209711 (= lt!549114 (lemmaListMapContainsThenArrayContainsFrom!594 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!549121 () Unit!40014)

(assert (=> b!1209711 (= lt!549121 e!687073)))

(assert (=> b!1209711 (= c!119069 (and (not lt!549117) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1209711 (= lt!549117 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1209712 () Bool)

(declare-fun res!804039 () Bool)

(assert (=> b!1209712 (=> (not res!804039) (not e!687081))))

(assert (=> b!1209712 (= res!804039 (= (select (arr!37718 _keys!1208) i!673) k0!934))))

(declare-fun b!1209713 () Bool)

(declare-fun e!687080 () Bool)

(declare-fun call!59456 () ListLongMap!17899)

(declare-fun call!59455 () ListLongMap!17899)

(assert (=> b!1209713 (= e!687080 (= call!59456 call!59455))))

(declare-fun b!1209714 () Bool)

(declare-fun -!1868 (ListLongMap!17899 (_ BitVec 64)) ListLongMap!17899)

(assert (=> b!1209714 (= e!687080 (= call!59456 (-!1868 call!59455 k0!934)))))

(declare-fun b!1209715 () Bool)

(declare-fun e!687072 () Bool)

(assert (=> b!1209715 (= e!687070 e!687072)))

(declare-fun res!804043 () Bool)

(assert (=> b!1209715 (=> res!804043 e!687072)))

(assert (=> b!1209715 (= res!804043 (not (= (select (arr!37718 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1209715 e!687080))

(declare-fun c!119071 () Bool)

(assert (=> b!1209715 (= c!119071 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!549112 () Unit!40014)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1075 (array!78170 array!78172 (_ BitVec 32) (_ BitVec 32) V!46067 V!46067 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40014)

(assert (=> b!1209715 (= lt!549112 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1075 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209716 () Bool)

(declare-fun e!687078 () Bool)

(assert (=> b!1209716 (= e!687078 tp_is_empty!30705)))

(declare-fun b!1209717 () Bool)

(declare-fun c!119070 () Bool)

(assert (=> b!1209717 (= c!119070 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!549117))))

(assert (=> b!1209717 (= e!687076 e!687079)))

(declare-fun bm!59448 () Bool)

(declare-fun call!59457 () ListLongMap!17899)

(assert (=> bm!59448 (= call!59457 call!59453)))

(declare-fun res!804031 () Bool)

(assert (=> start!101038 (=> (not res!804031) (not e!687081))))

(assert (=> start!101038 (= res!804031 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38255 _keys!1208))))))

(assert (=> start!101038 e!687081))

(assert (=> start!101038 tp_is_empty!30705))

(declare-fun array_inv!28634 (array!78170) Bool)

(assert (=> start!101038 (array_inv!28634 _keys!1208)))

(assert (=> start!101038 true))

(assert (=> start!101038 tp!91020))

(declare-fun e!687068 () Bool)

(declare-fun array_inv!28635 (array!78172) Bool)

(assert (=> start!101038 (and (array_inv!28635 _values!996) e!687068)))

(declare-fun b!1209718 () Bool)

(assert (=> b!1209718 (= e!687067 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!59452 () Bool)

(assert (=> bm!59452 (= call!59455 (getCurrentListMapNoExtraKeys!5372 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!59453 () Bool)

(assert (=> bm!59453 (= call!59456 (getCurrentListMapNoExtraKeys!5372 lt!549115 lt!549113 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209719 () Bool)

(declare-fun res!804033 () Bool)

(assert (=> b!1209719 (=> (not res!804033) (not e!687081))))

(assert (=> b!1209719 (= res!804033 (and (= (size!38256 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38255 _keys!1208) (size!38256 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1209720 () Bool)

(assert (=> b!1209720 (= e!687072 e!687071)))

(declare-fun res!804038 () Bool)

(assert (=> b!1209720 (=> res!804038 e!687071)))

(assert (=> b!1209720 (= res!804038 (not (contains!6979 lt!549123 k0!934)))))

(assert (=> b!1209720 (= lt!549123 (getCurrentListMapNoExtraKeys!5372 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209721 () Bool)

(assert (=> b!1209721 call!59454))

(declare-fun lt!549111 () Unit!40014)

(assert (=> b!1209721 (= lt!549111 call!59458)))

(assert (=> b!1209721 (= e!687076 lt!549111)))

(declare-fun bm!59454 () Bool)

(assert (=> bm!59454 (= call!59454 call!59452)))

(declare-fun b!1209722 () Bool)

(declare-fun res!804030 () Bool)

(assert (=> b!1209722 (=> (not res!804030) (not e!687081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1209722 (= res!804030 (validMask!0 mask!1564))))

(declare-fun bm!59455 () Bool)

(assert (=> bm!59455 (= call!59452 (contains!6979 (ite c!119069 lt!549118 call!59457) k0!934))))

(declare-fun b!1209723 () Bool)

(assert (=> b!1209723 (= e!687068 (and e!687078 mapRes!47926))))

(declare-fun condMapEmpty!47926 () Bool)

(declare-fun mapDefault!47926 () ValueCell!14643)

(assert (=> b!1209723 (= condMapEmpty!47926 (= (arr!37719 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14643)) mapDefault!47926)))))

(declare-fun b!1209724 () Bool)

(assert (=> b!1209724 (= e!687077 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!549117) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!101038 res!804031) b!1209722))

(assert (= (and b!1209722 res!804030) b!1209719))

(assert (= (and b!1209719 res!804033) b!1209707))

(assert (= (and b!1209707 res!804041) b!1209710))

(assert (= (and b!1209710 res!804034) b!1209704))

(assert (= (and b!1209704 res!804035) b!1209709))

(assert (= (and b!1209709 res!804040) b!1209712))

(assert (= (and b!1209712 res!804039) b!1209703))

(assert (= (and b!1209703 res!804032) b!1209698))

(assert (= (and b!1209698 res!804044) b!1209699))

(assert (= (and b!1209699 (not res!804037)) b!1209708))

(assert (= (and b!1209708 (not res!804036)) b!1209715))

(assert (= (and b!1209715 c!119071) b!1209714))

(assert (= (and b!1209715 (not c!119071)) b!1209713))

(assert (= (or b!1209714 b!1209713) bm!59452))

(assert (= (or b!1209714 b!1209713) bm!59453))

(assert (= (and b!1209715 (not res!804043)) b!1209720))

(assert (= (and b!1209720 (not res!804038)) b!1209711))

(assert (= (and b!1209711 c!119069) b!1209700))

(assert (= (and b!1209711 (not c!119069)) b!1209701))

(assert (= (and b!1209701 c!119072) b!1209721))

(assert (= (and b!1209701 (not c!119072)) b!1209717))

(assert (= (and b!1209717 c!119070) b!1209706))

(assert (= (and b!1209717 (not c!119070)) b!1209702))

(assert (= (or b!1209721 b!1209706) bm!59451))

(assert (= (or b!1209721 b!1209706) bm!59448))

(assert (= (or b!1209721 b!1209706) bm!59454))

(assert (= (or b!1209700 bm!59454) bm!59455))

(assert (= (or b!1209700 bm!59451) bm!59450))

(assert (= (or b!1209700 bm!59448) bm!59449))

(assert (= (and b!1209711 c!119073) b!1209705))

(assert (= (and b!1209711 (not c!119073)) b!1209724))

(assert (= (and b!1209711 res!804042) b!1209718))

(assert (= (and b!1209723 condMapEmpty!47926) mapIsEmpty!47926))

(assert (= (and b!1209723 (not condMapEmpty!47926)) mapNonEmpty!47926))

(get-info :version)

(assert (= (and mapNonEmpty!47926 ((_ is ValueCellFull!14643) mapValue!47926)) b!1209697))

(assert (= (and b!1209723 ((_ is ValueCellFull!14643) mapDefault!47926)) b!1209716))

(assert (= start!101038 b!1209723))

(declare-fun b_lambda!21611 () Bool)

(assert (=> (not b_lambda!21611) (not b!1209708)))

(declare-fun t!39726 () Bool)

(declare-fun tb!10809 () Bool)

(assert (=> (and start!101038 (= defaultEntry!1004 defaultEntry!1004) t!39726) tb!10809))

(declare-fun result!22203 () Bool)

(assert (=> tb!10809 (= result!22203 tp_is_empty!30705)))

(assert (=> b!1209708 t!39726))

(declare-fun b_and!43095 () Bool)

(assert (= b_and!43093 (and (=> t!39726 result!22203) b_and!43095)))

(declare-fun m!1115395 () Bool)

(assert (=> mapNonEmpty!47926 m!1115395))

(declare-fun m!1115397 () Bool)

(assert (=> b!1209711 m!1115397))

(declare-fun m!1115399 () Bool)

(assert (=> b!1209711 m!1115399))

(declare-fun m!1115401 () Bool)

(assert (=> b!1209711 m!1115401))

(declare-fun m!1115403 () Bool)

(assert (=> b!1209711 m!1115403))

(declare-fun m!1115405 () Bool)

(assert (=> b!1209700 m!1115405))

(declare-fun m!1115407 () Bool)

(assert (=> b!1209700 m!1115407))

(assert (=> b!1209700 m!1115407))

(declare-fun m!1115409 () Bool)

(assert (=> b!1209700 m!1115409))

(declare-fun m!1115411 () Bool)

(assert (=> bm!59455 m!1115411))

(declare-fun m!1115413 () Bool)

(assert (=> b!1209718 m!1115413))

(declare-fun m!1115415 () Bool)

(assert (=> b!1209714 m!1115415))

(declare-fun m!1115417 () Bool)

(assert (=> b!1209709 m!1115417))

(declare-fun m!1115419 () Bool)

(assert (=> b!1209703 m!1115419))

(declare-fun m!1115421 () Bool)

(assert (=> b!1209703 m!1115421))

(declare-fun m!1115423 () Bool)

(assert (=> bm!59453 m!1115423))

(declare-fun m!1115425 () Bool)

(assert (=> b!1209712 m!1115425))

(declare-fun m!1115427 () Bool)

(assert (=> bm!59449 m!1115427))

(declare-fun m!1115429 () Bool)

(assert (=> b!1209722 m!1115429))

(declare-fun m!1115431 () Bool)

(assert (=> start!101038 m!1115431))

(declare-fun m!1115433 () Bool)

(assert (=> start!101038 m!1115433))

(declare-fun m!1115435 () Bool)

(assert (=> b!1209708 m!1115435))

(declare-fun m!1115437 () Bool)

(assert (=> b!1209708 m!1115437))

(declare-fun m!1115439 () Bool)

(assert (=> b!1209708 m!1115439))

(declare-fun m!1115441 () Bool)

(assert (=> b!1209708 m!1115441))

(declare-fun m!1115443 () Bool)

(assert (=> b!1209710 m!1115443))

(declare-fun m!1115445 () Bool)

(assert (=> b!1209720 m!1115445))

(declare-fun m!1115447 () Bool)

(assert (=> b!1209720 m!1115447))

(declare-fun m!1115449 () Bool)

(assert (=> b!1209699 m!1115449))

(declare-fun m!1115451 () Bool)

(assert (=> b!1209699 m!1115451))

(declare-fun m!1115453 () Bool)

(assert (=> b!1209698 m!1115453))

(declare-fun m!1115455 () Bool)

(assert (=> bm!59450 m!1115455))

(declare-fun m!1115457 () Bool)

(assert (=> b!1209715 m!1115457))

(declare-fun m!1115459 () Bool)

(assert (=> b!1209715 m!1115459))

(assert (=> bm!59452 m!1115447))

(assert (=> b!1209705 m!1115413))

(declare-fun m!1115461 () Bool)

(assert (=> b!1209707 m!1115461))

(check-sat (not b!1209722) (not bm!59452) (not b!1209720) (not b!1209715) (not mapNonEmpty!47926) (not b!1209705) (not bm!59455) b_and!43095 tp_is_empty!30705 (not b!1209703) (not b!1209714) (not b!1209711) (not b!1209698) (not start!101038) (not b!1209700) (not b_next!26001) (not b!1209710) (not b!1209708) (not b!1209718) (not bm!59449) (not b!1209709) (not bm!59453) (not b!1209707) (not bm!59450) (not b!1209699) (not b_lambda!21611))
(check-sat b_and!43095 (not b_next!26001))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101026 () Bool)

(assert start!101026)

(declare-fun b_free!25989 () Bool)

(declare-fun b_next!25989 () Bool)

(assert (=> start!101026 (= b_free!25989 (not b_next!25989))))

(declare-fun tp!90984 () Bool)

(declare-fun b_and!43069 () Bool)

(assert (=> start!101026 (= tp!90984 b_and!43069)))

(declare-fun b!1209142 () Bool)

(declare-fun e!686770 () Bool)

(declare-fun e!686778 () Bool)

(assert (=> b!1209142 (= e!686770 e!686778)))

(declare-fun res!803727 () Bool)

(assert (=> b!1209142 (=> res!803727 e!686778)))

(declare-datatypes ((array!78148 0))(
  ( (array!78149 (arr!37707 (Array (_ BitVec 32) (_ BitVec 64))) (size!38244 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78148)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1209142 (= res!803727 (not (= (select (arr!37707 _keys!1208) from!1455) k0!934)))))

(declare-fun e!686776 () Bool)

(assert (=> b!1209142 e!686776))

(declare-fun c!118983 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1209142 (= c!118983 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!46051 0))(
  ( (V!46052 (val!15403 Int)) )
))
(declare-fun zeroValue!944 () V!46051)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!40001 0))(
  ( (Unit!40002) )
))
(declare-fun lt!548804 () Unit!40001)

(declare-datatypes ((ValueCell!14637 0))(
  ( (ValueCellFull!14637 (v!18055 V!46051)) (EmptyCell!14637) )
))
(declare-datatypes ((array!78150 0))(
  ( (array!78151 (arr!37708 (Array (_ BitVec 32) ValueCell!14637)) (size!38245 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78150)

(declare-fun minValue!944 () V!46051)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1070 (array!78148 array!78150 (_ BitVec 32) (_ BitVec 32) V!46051 V!46051 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40001)

(assert (=> b!1209142 (= lt!548804 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1070 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209143 () Bool)

(declare-fun res!803724 () Bool)

(declare-fun e!686779 () Bool)

(assert (=> b!1209143 (=> (not res!803724) (not e!686779))))

(declare-fun lt!548802 () array!78148)

(declare-datatypes ((List!26731 0))(
  ( (Nil!26728) (Cons!26727 (h!27936 (_ BitVec 64)) (t!39707 List!26731)) )
))
(declare-fun arrayNoDuplicates!0 (array!78148 (_ BitVec 32) List!26731) Bool)

(assert (=> b!1209143 (= res!803724 (arrayNoDuplicates!0 lt!548802 #b00000000000000000000000000000000 Nil!26728))))

(declare-fun call!59314 () Unit!40001)

(declare-datatypes ((tuple2!19910 0))(
  ( (tuple2!19911 (_1!9965 (_ BitVec 64)) (_2!9965 V!46051)) )
))
(declare-datatypes ((List!26732 0))(
  ( (Nil!26729) (Cons!26728 (h!27937 tuple2!19910) (t!39708 List!26732)) )
))
(declare-datatypes ((ListLongMap!17891 0))(
  ( (ListLongMap!17892 (toList!8961 List!26732)) )
))
(declare-fun lt!548807 () ListLongMap!17891)

(declare-fun bm!59304 () Bool)

(declare-fun c!118981 () Bool)

(declare-fun c!118979 () Bool)

(declare-fun addStillContains!1053 (ListLongMap!17891 (_ BitVec 64) V!46051 (_ BitVec 64)) Unit!40001)

(assert (=> bm!59304 (= call!59314 (addStillContains!1053 lt!548807 (ite (or c!118979 c!118981) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118979 c!118981) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1209144 () Bool)

(declare-fun e!686771 () Unit!40001)

(declare-fun lt!548810 () Unit!40001)

(assert (=> b!1209144 (= e!686771 lt!548810)))

(declare-fun call!59309 () Unit!40001)

(assert (=> b!1209144 (= lt!548810 call!59309)))

(declare-fun call!59312 () Bool)

(assert (=> b!1209144 call!59312))

(declare-fun res!803734 () Bool)

(declare-fun e!686781 () Bool)

(assert (=> start!101026 (=> (not res!803734) (not e!686781))))

(assert (=> start!101026 (= res!803734 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38244 _keys!1208))))))

(assert (=> start!101026 e!686781))

(declare-fun tp_is_empty!30693 () Bool)

(assert (=> start!101026 tp_is_empty!30693))

(declare-fun array_inv!28628 (array!78148) Bool)

(assert (=> start!101026 (array_inv!28628 _keys!1208)))

(assert (=> start!101026 true))

(assert (=> start!101026 tp!90984))

(declare-fun e!686775 () Bool)

(declare-fun array_inv!28629 (array!78150) Bool)

(assert (=> start!101026 (and (array_inv!28629 _values!996) e!686775)))

(declare-fun b!1209145 () Bool)

(assert (=> b!1209145 (= e!686781 e!686779)))

(declare-fun res!803725 () Bool)

(assert (=> b!1209145 (=> (not res!803725) (not e!686779))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78148 (_ BitVec 32)) Bool)

(assert (=> b!1209145 (= res!803725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!548802 mask!1564))))

(assert (=> b!1209145 (= lt!548802 (array!78149 (store (arr!37707 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38244 _keys!1208)))))

(declare-fun bm!59305 () Bool)

(assert (=> bm!59305 (= call!59309 call!59314)))

(declare-fun bm!59306 () Bool)

(declare-fun call!59310 () ListLongMap!17891)

(declare-fun getCurrentListMapNoExtraKeys!5368 (array!78148 array!78150 (_ BitVec 32) (_ BitVec 32) V!46051 V!46051 (_ BitVec 32) Int) ListLongMap!17891)

(assert (=> bm!59306 (= call!59310 (getCurrentListMapNoExtraKeys!5368 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!47908 () Bool)

(declare-fun mapRes!47908 () Bool)

(declare-fun tp!90983 () Bool)

(declare-fun e!686766 () Bool)

(assert (=> mapNonEmpty!47908 (= mapRes!47908 (and tp!90983 e!686766))))

(declare-fun mapValue!47908 () ValueCell!14637)

(declare-fun mapKey!47908 () (_ BitVec 32))

(declare-fun mapRest!47908 () (Array (_ BitVec 32) ValueCell!14637))

(assert (=> mapNonEmpty!47908 (= (arr!37708 _values!996) (store mapRest!47908 mapKey!47908 mapValue!47908))))

(declare-fun b!1209146 () Bool)

(declare-fun c!118980 () Bool)

(declare-fun lt!548808 () Bool)

(assert (=> b!1209146 (= c!118980 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!548808))))

(declare-fun e!686768 () Unit!40001)

(assert (=> b!1209146 (= e!686768 e!686771)))

(declare-fun b!1209147 () Bool)

(declare-fun res!803738 () Bool)

(assert (=> b!1209147 (=> (not res!803738) (not e!686781))))

(assert (=> b!1209147 (= res!803738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!47908 () Bool)

(assert (=> mapIsEmpty!47908 mapRes!47908))

(declare-fun bm!59307 () Bool)

(declare-fun call!59311 () ListLongMap!17891)

(declare-fun lt!548817 () array!78150)

(assert (=> bm!59307 (= call!59311 (getCurrentListMapNoExtraKeys!5368 lt!548802 lt!548817 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209148 () Bool)

(declare-fun e!686773 () Bool)

(declare-fun e!686780 () Bool)

(assert (=> b!1209148 (= e!686773 e!686780)))

(declare-fun res!803721 () Bool)

(assert (=> b!1209148 (=> res!803721 e!686780)))

(assert (=> b!1209148 (= res!803721 (or (bvsge (size!38244 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38244 _keys!1208)) (bvsge from!1455 (size!38244 _keys!1208))))))

(assert (=> b!1209148 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26728)))

(declare-fun lt!548815 () Unit!40001)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78148 (_ BitVec 32) (_ BitVec 32)) Unit!40001)

(assert (=> b!1209148 (= lt!548815 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!686772 () Bool)

(assert (=> b!1209148 e!686772))

(declare-fun res!803733 () Bool)

(assert (=> b!1209148 (=> (not res!803733) (not e!686772))))

(declare-fun e!686777 () Bool)

(assert (=> b!1209148 (= res!803733 e!686777)))

(declare-fun c!118982 () Bool)

(assert (=> b!1209148 (= c!118982 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!548812 () Unit!40001)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!590 (array!78148 array!78150 (_ BitVec 32) (_ BitVec 32) V!46051 V!46051 (_ BitVec 64) (_ BitVec 32) Int) Unit!40001)

(assert (=> b!1209148 (= lt!548812 (lemmaListMapContainsThenArrayContainsFrom!590 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!548814 () Unit!40001)

(declare-fun e!686767 () Unit!40001)

(assert (=> b!1209148 (= lt!548814 e!686767)))

(assert (=> b!1209148 (= c!118979 (and (not lt!548808) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1209148 (= lt!548808 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1209149 () Bool)

(declare-fun arrayContainsKey!0 (array!78148 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1209149 (= e!686777 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1209150 () Bool)

(declare-fun res!803726 () Bool)

(assert (=> b!1209150 (=> (not res!803726) (not e!686781))))

(assert (=> b!1209150 (= res!803726 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38244 _keys!1208))))))

(declare-fun b!1209151 () Bool)

(assert (=> b!1209151 (= e!686776 (= call!59311 call!59310))))

(declare-fun b!1209152 () Bool)

(declare-fun res!803729 () Bool)

(assert (=> b!1209152 (=> res!803729 e!686780)))

(declare-fun contains!6972 (List!26731 (_ BitVec 64)) Bool)

(assert (=> b!1209152 (= res!803729 (contains!6972 Nil!26728 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1209153 () Bool)

(assert (=> b!1209153 (= e!686777 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!548808) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1209154 () Bool)

(declare-fun Unit!40003 () Unit!40001)

(assert (=> b!1209154 (= e!686771 Unit!40003)))

(declare-fun b!1209155 () Bool)

(assert (=> b!1209155 (= e!686766 tp_is_empty!30693)))

(declare-fun b!1209156 () Bool)

(assert (=> b!1209156 call!59312))

(declare-fun lt!548803 () Unit!40001)

(assert (=> b!1209156 (= lt!548803 call!59309)))

(assert (=> b!1209156 (= e!686768 lt!548803)))

(declare-fun b!1209157 () Bool)

(declare-fun e!686769 () Bool)

(assert (=> b!1209157 (= e!686775 (and e!686769 mapRes!47908))))

(declare-fun condMapEmpty!47908 () Bool)

(declare-fun mapDefault!47908 () ValueCell!14637)

(assert (=> b!1209157 (= condMapEmpty!47908 (= (arr!37708 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14637)) mapDefault!47908)))))

(declare-fun b!1209158 () Bool)

(assert (=> b!1209158 (= e!686778 e!686773)))

(declare-fun res!803730 () Bool)

(assert (=> b!1209158 (=> res!803730 e!686773)))

(declare-fun contains!6973 (ListLongMap!17891 (_ BitVec 64)) Bool)

(assert (=> b!1209158 (= res!803730 (not (contains!6973 lt!548807 k0!934)))))

(assert (=> b!1209158 (= lt!548807 (getCurrentListMapNoExtraKeys!5368 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209159 () Bool)

(declare-fun res!803722 () Bool)

(assert (=> b!1209159 (=> (not res!803722) (not e!686781))))

(assert (=> b!1209159 (= res!803722 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26728))))

(declare-fun bm!59308 () Bool)

(declare-fun call!59307 () ListLongMap!17891)

(declare-fun call!59313 () ListLongMap!17891)

(assert (=> bm!59308 (= call!59307 call!59313)))

(declare-fun b!1209160 () Bool)

(declare-fun res!803723 () Bool)

(assert (=> b!1209160 (=> (not res!803723) (not e!686781))))

(assert (=> b!1209160 (= res!803723 (and (= (size!38245 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38244 _keys!1208) (size!38245 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1209161 () Bool)

(declare-fun res!803735 () Bool)

(assert (=> b!1209161 (=> (not res!803735) (not e!686781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1209161 (= res!803735 (validMask!0 mask!1564))))

(declare-fun b!1209162 () Bool)

(declare-fun res!803737 () Bool)

(assert (=> b!1209162 (=> res!803737 e!686780)))

(declare-fun noDuplicate!1650 (List!26731) Bool)

(assert (=> b!1209162 (= res!803737 (not (noDuplicate!1650 Nil!26728)))))

(declare-fun b!1209163 () Bool)

(declare-fun res!803731 () Bool)

(assert (=> b!1209163 (=> (not res!803731) (not e!686781))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1209163 (= res!803731 (validKeyInArray!0 k0!934))))

(declare-fun b!1209164 () Bool)

(declare-fun e!686782 () Bool)

(assert (=> b!1209164 (= e!686782 e!686770)))

(declare-fun res!803736 () Bool)

(assert (=> b!1209164 (=> res!803736 e!686770)))

(assert (=> b!1209164 (= res!803736 (not (= from!1455 i!673)))))

(declare-fun lt!548816 () ListLongMap!17891)

(assert (=> b!1209164 (= lt!548816 (getCurrentListMapNoExtraKeys!5368 lt!548802 lt!548817 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3285 (Int (_ BitVec 64)) V!46051)

(assert (=> b!1209164 (= lt!548817 (array!78151 (store (arr!37708 _values!996) i!673 (ValueCellFull!14637 (dynLambda!3285 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38245 _values!996)))))

(declare-fun lt!548811 () ListLongMap!17891)

(assert (=> b!1209164 (= lt!548811 (getCurrentListMapNoExtraKeys!5368 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!59309 () Bool)

(declare-fun call!59308 () Bool)

(assert (=> bm!59309 (= call!59312 call!59308)))

(declare-fun b!1209165 () Bool)

(declare-fun res!803732 () Bool)

(assert (=> b!1209165 (=> (not res!803732) (not e!686781))))

(assert (=> b!1209165 (= res!803732 (= (select (arr!37707 _keys!1208) i!673) k0!934))))

(declare-fun b!1209166 () Bool)

(assert (=> b!1209166 (= e!686779 (not e!686782))))

(declare-fun res!803728 () Bool)

(assert (=> b!1209166 (=> res!803728 e!686782)))

(assert (=> b!1209166 (= res!803728 (bvsgt from!1455 i!673))))

(assert (=> b!1209166 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!548801 () Unit!40001)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78148 (_ BitVec 64) (_ BitVec 32)) Unit!40001)

(assert (=> b!1209166 (= lt!548801 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!59310 () Bool)

(declare-fun +!3988 (ListLongMap!17891 tuple2!19910) ListLongMap!17891)

(assert (=> bm!59310 (= call!59313 (+!3988 lt!548807 (ite (or c!118979 c!118981) (tuple2!19911 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19911 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1209167 () Bool)

(declare-fun lt!548809 () Unit!40001)

(assert (=> b!1209167 (= e!686767 lt!548809)))

(declare-fun lt!548806 () Unit!40001)

(assert (=> b!1209167 (= lt!548806 call!59314)))

(declare-fun lt!548805 () ListLongMap!17891)

(assert (=> b!1209167 (= lt!548805 call!59313)))

(assert (=> b!1209167 call!59308))

(assert (=> b!1209167 (= lt!548809 (addStillContains!1053 lt!548805 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1209167 (contains!6973 (+!3988 lt!548805 (tuple2!19911 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1209168 () Bool)

(assert (=> b!1209168 (= e!686767 e!686768)))

(assert (=> b!1209168 (= c!118981 (and (not lt!548808) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1209169 () Bool)

(assert (=> b!1209169 (= e!686780 true)))

(declare-fun lt!548813 () Bool)

(assert (=> b!1209169 (= lt!548813 (contains!6972 Nil!26728 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1209170 () Bool)

(assert (=> b!1209170 (= e!686769 tp_is_empty!30693)))

(declare-fun bm!59311 () Bool)

(assert (=> bm!59311 (= call!59308 (contains!6973 (ite c!118979 lt!548805 call!59307) k0!934))))

(declare-fun b!1209171 () Bool)

(assert (=> b!1209171 (= e!686772 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1209172 () Bool)

(declare-fun -!1865 (ListLongMap!17891 (_ BitVec 64)) ListLongMap!17891)

(assert (=> b!1209172 (= e!686776 (= call!59311 (-!1865 call!59310 k0!934)))))

(assert (= (and start!101026 res!803734) b!1209161))

(assert (= (and b!1209161 res!803735) b!1209160))

(assert (= (and b!1209160 res!803723) b!1209147))

(assert (= (and b!1209147 res!803738) b!1209159))

(assert (= (and b!1209159 res!803722) b!1209150))

(assert (= (and b!1209150 res!803726) b!1209163))

(assert (= (and b!1209163 res!803731) b!1209165))

(assert (= (and b!1209165 res!803732) b!1209145))

(assert (= (and b!1209145 res!803725) b!1209143))

(assert (= (and b!1209143 res!803724) b!1209166))

(assert (= (and b!1209166 (not res!803728)) b!1209164))

(assert (= (and b!1209164 (not res!803736)) b!1209142))

(assert (= (and b!1209142 c!118983) b!1209172))

(assert (= (and b!1209142 (not c!118983)) b!1209151))

(assert (= (or b!1209172 b!1209151) bm!59307))

(assert (= (or b!1209172 b!1209151) bm!59306))

(assert (= (and b!1209142 (not res!803727)) b!1209158))

(assert (= (and b!1209158 (not res!803730)) b!1209148))

(assert (= (and b!1209148 c!118979) b!1209167))

(assert (= (and b!1209148 (not c!118979)) b!1209168))

(assert (= (and b!1209168 c!118981) b!1209156))

(assert (= (and b!1209168 (not c!118981)) b!1209146))

(assert (= (and b!1209146 c!118980) b!1209144))

(assert (= (and b!1209146 (not c!118980)) b!1209154))

(assert (= (or b!1209156 b!1209144) bm!59305))

(assert (= (or b!1209156 b!1209144) bm!59308))

(assert (= (or b!1209156 b!1209144) bm!59309))

(assert (= (or b!1209167 bm!59309) bm!59311))

(assert (= (or b!1209167 bm!59305) bm!59304))

(assert (= (or b!1209167 bm!59308) bm!59310))

(assert (= (and b!1209148 c!118982) b!1209149))

(assert (= (and b!1209148 (not c!118982)) b!1209153))

(assert (= (and b!1209148 res!803733) b!1209171))

(assert (= (and b!1209148 (not res!803721)) b!1209162))

(assert (= (and b!1209162 (not res!803737)) b!1209152))

(assert (= (and b!1209152 (not res!803729)) b!1209169))

(assert (= (and b!1209157 condMapEmpty!47908) mapIsEmpty!47908))

(assert (= (and b!1209157 (not condMapEmpty!47908)) mapNonEmpty!47908))

(get-info :version)

(assert (= (and mapNonEmpty!47908 ((_ is ValueCellFull!14637) mapValue!47908)) b!1209155))

(assert (= (and b!1209157 ((_ is ValueCellFull!14637) mapDefault!47908)) b!1209170))

(assert (= start!101026 b!1209157))

(declare-fun b_lambda!21599 () Bool)

(assert (=> (not b_lambda!21599) (not b!1209164)))

(declare-fun t!39706 () Bool)

(declare-fun tb!10797 () Bool)

(assert (=> (and start!101026 (= defaultEntry!1004 defaultEntry!1004) t!39706) tb!10797))

(declare-fun result!22179 () Bool)

(assert (=> tb!10797 (= result!22179 tp_is_empty!30693)))

(assert (=> b!1209164 t!39706))

(declare-fun b_and!43071 () Bool)

(assert (= b_and!43069 (and (=> t!39706 result!22179) b_and!43071)))

(declare-fun m!1114963 () Bool)

(assert (=> b!1209147 m!1114963))

(declare-fun m!1114965 () Bool)

(assert (=> b!1209142 m!1114965))

(declare-fun m!1114967 () Bool)

(assert (=> b!1209142 m!1114967))

(declare-fun m!1114969 () Bool)

(assert (=> b!1209171 m!1114969))

(declare-fun m!1114971 () Bool)

(assert (=> start!101026 m!1114971))

(declare-fun m!1114973 () Bool)

(assert (=> start!101026 m!1114973))

(declare-fun m!1114975 () Bool)

(assert (=> b!1209163 m!1114975))

(assert (=> b!1209149 m!1114969))

(declare-fun m!1114977 () Bool)

(assert (=> b!1209169 m!1114977))

(declare-fun m!1114979 () Bool)

(assert (=> b!1209148 m!1114979))

(declare-fun m!1114981 () Bool)

(assert (=> b!1209148 m!1114981))

(declare-fun m!1114983 () Bool)

(assert (=> b!1209148 m!1114983))

(declare-fun m!1114985 () Bool)

(assert (=> b!1209165 m!1114985))

(declare-fun m!1114987 () Bool)

(assert (=> bm!59306 m!1114987))

(declare-fun m!1114989 () Bool)

(assert (=> b!1209152 m!1114989))

(declare-fun m!1114991 () Bool)

(assert (=> bm!59310 m!1114991))

(declare-fun m!1114993 () Bool)

(assert (=> b!1209167 m!1114993))

(declare-fun m!1114995 () Bool)

(assert (=> b!1209167 m!1114995))

(assert (=> b!1209167 m!1114995))

(declare-fun m!1114997 () Bool)

(assert (=> b!1209167 m!1114997))

(declare-fun m!1114999 () Bool)

(assert (=> b!1209164 m!1114999))

(declare-fun m!1115001 () Bool)

(assert (=> b!1209164 m!1115001))

(declare-fun m!1115003 () Bool)

(assert (=> b!1209164 m!1115003))

(declare-fun m!1115005 () Bool)

(assert (=> b!1209164 m!1115005))

(declare-fun m!1115007 () Bool)

(assert (=> b!1209145 m!1115007))

(declare-fun m!1115009 () Bool)

(assert (=> b!1209145 m!1115009))

(declare-fun m!1115011 () Bool)

(assert (=> b!1209172 m!1115011))

(declare-fun m!1115013 () Bool)

(assert (=> b!1209166 m!1115013))

(declare-fun m!1115015 () Bool)

(assert (=> b!1209166 m!1115015))

(declare-fun m!1115017 () Bool)

(assert (=> b!1209159 m!1115017))

(declare-fun m!1115019 () Bool)

(assert (=> mapNonEmpty!47908 m!1115019))

(declare-fun m!1115021 () Bool)

(assert (=> bm!59311 m!1115021))

(declare-fun m!1115023 () Bool)

(assert (=> bm!59304 m!1115023))

(declare-fun m!1115025 () Bool)

(assert (=> b!1209161 m!1115025))

(declare-fun m!1115027 () Bool)

(assert (=> b!1209162 m!1115027))

(declare-fun m!1115029 () Bool)

(assert (=> b!1209143 m!1115029))

(declare-fun m!1115031 () Bool)

(assert (=> b!1209158 m!1115031))

(assert (=> b!1209158 m!1114987))

(declare-fun m!1115033 () Bool)

(assert (=> bm!59307 m!1115033))

(check-sat b_and!43071 (not b!1209167) (not b!1209159) tp_is_empty!30693 (not b!1209148) (not b!1209145) (not b!1209162) (not b!1209152) (not mapNonEmpty!47908) (not b!1209164) (not b!1209161) (not b!1209149) (not bm!59311) (not b!1209142) (not b!1209169) (not bm!59304) (not start!101026) (not bm!59310) (not b_lambda!21599) (not b!1209171) (not b!1209143) (not bm!59307) (not b!1209172) (not b!1209163) (not b!1209166) (not b_next!25989) (not b!1209158) (not bm!59306) (not b!1209147))
(check-sat b_and!43071 (not b_next!25989))

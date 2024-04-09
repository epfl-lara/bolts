; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98446 () Bool)

(assert start!98446)

(declare-fun b_free!24015 () Bool)

(declare-fun b_next!24015 () Bool)

(assert (=> start!98446 (= b_free!24015 (not b_next!24015))))

(declare-fun tp!84757 () Bool)

(declare-fun b_and!38893 () Bool)

(assert (=> start!98446 (= tp!84757 b_and!38893)))

(declare-fun bm!49718 () Bool)

(declare-datatypes ((V!43187 0))(
  ( (V!43188 (val!14329 Int)) )
))
(declare-datatypes ((tuple2!18180 0))(
  ( (tuple2!18181 (_1!9100 (_ BitVec 64)) (_2!9100 V!43187)) )
))
(declare-datatypes ((List!24990 0))(
  ( (Nil!24987) (Cons!24986 (h!26195 tuple2!18180) (t!36004 List!24990)) )
))
(declare-datatypes ((ListLongMap!16161 0))(
  ( (ListLongMap!16162 (toList!8096 List!24990)) )
))
(declare-fun call!49726 () ListLongMap!16161)

(declare-fun call!49725 () ListLongMap!16161)

(assert (=> bm!49718 (= call!49726 call!49725)))

(declare-fun b!1135868 () Bool)

(declare-fun e!646424 () Bool)

(declare-fun e!646428 () Bool)

(assert (=> b!1135868 (= e!646424 e!646428)))

(declare-fun res!758241 () Bool)

(assert (=> b!1135868 (=> res!758241 e!646428)))

(declare-fun lt!504975 () ListLongMap!16161)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6601 (ListLongMap!16161 (_ BitVec 64)) Bool)

(assert (=> b!1135868 (= res!758241 (not (contains!6601 lt!504975 k0!934)))))

(declare-fun zeroValue!944 () V!43187)

(declare-datatypes ((array!73912 0))(
  ( (array!73913 (arr!35603 (Array (_ BitVec 32) (_ BitVec 64))) (size!36140 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73912)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13563 0))(
  ( (ValueCellFull!13563 (v!16967 V!43187)) (EmptyCell!13563) )
))
(declare-datatypes ((array!73914 0))(
  ( (array!73915 (arr!35604 (Array (_ BitVec 32) ValueCell!13563)) (size!36141 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73914)

(declare-fun minValue!944 () V!43187)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4544 (array!73912 array!73914 (_ BitVec 32) (_ BitVec 32) V!43187 V!43187 (_ BitVec 32) Int) ListLongMap!16161)

(assert (=> b!1135868 (= lt!504975 (getCurrentListMapNoExtraKeys!4544 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!49719 () Bool)

(declare-fun call!49727 () Bool)

(declare-fun call!49721 () Bool)

(assert (=> bm!49719 (= call!49727 call!49721)))

(declare-fun b!1135870 () Bool)

(declare-fun e!646427 () Bool)

(declare-fun call!49722 () ListLongMap!16161)

(declare-fun call!49724 () ListLongMap!16161)

(assert (=> b!1135870 (= e!646427 (= call!49722 call!49724))))

(declare-fun bm!49720 () Bool)

(declare-fun lt!504973 () array!73914)

(declare-fun lt!504974 () array!73912)

(assert (=> bm!49720 (= call!49722 (getCurrentListMapNoExtraKeys!4544 lt!504974 lt!504973 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44642 () Bool)

(declare-fun mapRes!44642 () Bool)

(declare-fun tp!84756 () Bool)

(declare-fun e!646423 () Bool)

(assert (=> mapNonEmpty!44642 (= mapRes!44642 (and tp!84756 e!646423))))

(declare-fun mapKey!44642 () (_ BitVec 32))

(declare-fun mapRest!44642 () (Array (_ BitVec 32) ValueCell!13563))

(declare-fun mapValue!44642 () ValueCell!13563)

(assert (=> mapNonEmpty!44642 (= (arr!35604 _values!996) (store mapRest!44642 mapKey!44642 mapValue!44642))))

(declare-fun c!110965 () Bool)

(declare-fun bm!49721 () Bool)

(declare-datatypes ((Unit!37150 0))(
  ( (Unit!37151) )
))
(declare-fun call!49728 () Unit!37150)

(declare-fun c!110964 () Bool)

(declare-fun addStillContains!751 (ListLongMap!16161 (_ BitVec 64) V!43187 (_ BitVec 64)) Unit!37150)

(assert (=> bm!49721 (= call!49728 (addStillContains!751 lt!504975 (ite (or c!110965 c!110964) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110965 c!110964) zeroValue!944 minValue!944) k0!934))))

(declare-fun bm!49722 () Bool)

(assert (=> bm!49722 (= call!49724 (getCurrentListMapNoExtraKeys!4544 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135871 () Bool)

(declare-fun e!646425 () Bool)

(assert (=> b!1135871 (= e!646428 e!646425)))

(declare-fun res!758239 () Bool)

(assert (=> b!1135871 (=> res!758239 e!646425)))

(assert (=> b!1135871 (= res!758239 (or (bvsge (size!36140 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36140 _keys!1208)) (bvsge from!1455 (size!36140 _keys!1208))))))

(declare-datatypes ((List!24991 0))(
  ( (Nil!24988) (Cons!24987 (h!26196 (_ BitVec 64)) (t!36005 List!24991)) )
))
(declare-fun arrayNoDuplicates!0 (array!73912 (_ BitVec 32) List!24991) Bool)

(assert (=> b!1135871 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!24988)))

(declare-fun lt!504966 () Unit!37150)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73912 (_ BitVec 32) (_ BitVec 32)) Unit!37150)

(assert (=> b!1135871 (= lt!504966 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!646422 () Bool)

(assert (=> b!1135871 e!646422))

(declare-fun res!758251 () Bool)

(assert (=> b!1135871 (=> (not res!758251) (not e!646422))))

(declare-fun e!646433 () Bool)

(assert (=> b!1135871 (= res!758251 e!646433)))

(declare-fun c!110966 () Bool)

(assert (=> b!1135871 (= c!110966 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!504965 () Unit!37150)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!358 (array!73912 array!73914 (_ BitVec 32) (_ BitVec 32) V!43187 V!43187 (_ BitVec 64) (_ BitVec 32) Int) Unit!37150)

(assert (=> b!1135871 (= lt!504965 (lemmaListMapContainsThenArrayContainsFrom!358 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!504960 () Unit!37150)

(declare-fun e!646435 () Unit!37150)

(assert (=> b!1135871 (= lt!504960 e!646435)))

(declare-fun lt!504961 () Bool)

(assert (=> b!1135871 (= c!110965 (and (not lt!504961) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1135871 (= lt!504961 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1135872 () Bool)

(declare-fun e!646426 () Unit!37150)

(declare-fun Unit!37152 () Unit!37150)

(assert (=> b!1135872 (= e!646426 Unit!37152)))

(declare-fun res!758237 () Bool)

(declare-fun e!646437 () Bool)

(assert (=> start!98446 (=> (not res!758237) (not e!646437))))

(assert (=> start!98446 (= res!758237 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36140 _keys!1208))))))

(assert (=> start!98446 e!646437))

(declare-fun tp_is_empty!28545 () Bool)

(assert (=> start!98446 tp_is_empty!28545))

(declare-fun array_inv!27172 (array!73912) Bool)

(assert (=> start!98446 (array_inv!27172 _keys!1208)))

(assert (=> start!98446 true))

(assert (=> start!98446 tp!84757))

(declare-fun e!646436 () Bool)

(declare-fun array_inv!27173 (array!73914) Bool)

(assert (=> start!98446 (and (array_inv!27173 _values!996) e!646436)))

(declare-fun b!1135869 () Bool)

(declare-fun e!646431 () Bool)

(assert (=> b!1135869 (= e!646437 e!646431)))

(declare-fun res!758235 () Bool)

(assert (=> b!1135869 (=> (not res!758235) (not e!646431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73912 (_ BitVec 32)) Bool)

(assert (=> b!1135869 (= res!758235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!504974 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1135869 (= lt!504974 (array!73913 (store (arr!35603 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36140 _keys!1208)))))

(declare-fun b!1135873 () Bool)

(declare-fun arrayContainsKey!0 (array!73912 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1135873 (= e!646422 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1135874 () Bool)

(assert (=> b!1135874 call!49727))

(declare-fun lt!504968 () Unit!37150)

(declare-fun call!49723 () Unit!37150)

(assert (=> b!1135874 (= lt!504968 call!49723)))

(declare-fun e!646430 () Unit!37150)

(assert (=> b!1135874 (= e!646430 lt!504968)))

(declare-fun bm!49723 () Bool)

(declare-fun lt!504962 () ListLongMap!16161)

(declare-fun +!3451 (ListLongMap!16161 tuple2!18180) ListLongMap!16161)

(assert (=> bm!49723 (= call!49725 (+!3451 (ite c!110965 lt!504962 lt!504975) (ite c!110965 (tuple2!18181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110964 (tuple2!18181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1135875 () Bool)

(declare-fun e!646432 () Bool)

(assert (=> b!1135875 (= e!646436 (and e!646432 mapRes!44642))))

(declare-fun condMapEmpty!44642 () Bool)

(declare-fun mapDefault!44642 () ValueCell!13563)

(assert (=> b!1135875 (= condMapEmpty!44642 (= (arr!35604 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13563)) mapDefault!44642)))))

(declare-fun b!1135876 () Bool)

(declare-fun e!646434 () Bool)

(declare-fun e!646429 () Bool)

(assert (=> b!1135876 (= e!646434 e!646429)))

(declare-fun res!758249 () Bool)

(assert (=> b!1135876 (=> res!758249 e!646429)))

(assert (=> b!1135876 (= res!758249 (not (= from!1455 i!673)))))

(declare-fun lt!504972 () ListLongMap!16161)

(assert (=> b!1135876 (= lt!504972 (getCurrentListMapNoExtraKeys!4544 lt!504974 lt!504973 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2609 (Int (_ BitVec 64)) V!43187)

(assert (=> b!1135876 (= lt!504973 (array!73915 (store (arr!35604 _values!996) i!673 (ValueCellFull!13563 (dynLambda!2609 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36141 _values!996)))))

(declare-fun lt!504964 () ListLongMap!16161)

(assert (=> b!1135876 (= lt!504964 (getCurrentListMapNoExtraKeys!4544 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1135877 () Bool)

(declare-fun res!758252 () Bool)

(assert (=> b!1135877 (=> (not res!758252) (not e!646437))))

(assert (=> b!1135877 (= res!758252 (and (= (size!36141 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36140 _keys!1208) (size!36141 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1135878 () Bool)

(assert (=> b!1135878 (= e!646432 tp_is_empty!28545)))

(declare-fun b!1135879 () Bool)

(declare-fun -!1207 (ListLongMap!16161 (_ BitVec 64)) ListLongMap!16161)

(assert (=> b!1135879 (= e!646427 (= call!49722 (-!1207 call!49724 k0!934)))))

(declare-fun b!1135880 () Bool)

(declare-fun res!758238 () Bool)

(assert (=> b!1135880 (=> (not res!758238) (not e!646431))))

(assert (=> b!1135880 (= res!758238 (arrayNoDuplicates!0 lt!504974 #b00000000000000000000000000000000 Nil!24988))))

(declare-fun b!1135881 () Bool)

(assert (=> b!1135881 (= e!646433 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1135882 () Bool)

(declare-fun lt!504959 () Unit!37150)

(assert (=> b!1135882 (= e!646426 lt!504959)))

(assert (=> b!1135882 (= lt!504959 call!49723)))

(assert (=> b!1135882 call!49727))

(declare-fun b!1135883 () Bool)

(declare-fun c!110967 () Bool)

(assert (=> b!1135883 (= c!110967 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!504961))))

(assert (=> b!1135883 (= e!646430 e!646426)))

(declare-fun b!1135884 () Bool)

(declare-fun res!758245 () Bool)

(assert (=> b!1135884 (=> res!758245 e!646425)))

(declare-fun noDuplicate!1619 (List!24991) Bool)

(assert (=> b!1135884 (= res!758245 (not (noDuplicate!1619 Nil!24988)))))

(declare-fun b!1135885 () Bool)

(assert (=> b!1135885 (= e!646435 e!646430)))

(assert (=> b!1135885 (= c!110964 (and (not lt!504961) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1135886 () Bool)

(assert (=> b!1135886 (= e!646433 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!504961) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1135887 () Bool)

(declare-fun res!758244 () Bool)

(assert (=> b!1135887 (=> (not res!758244) (not e!646437))))

(assert (=> b!1135887 (= res!758244 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24988))))

(declare-fun b!1135888 () Bool)

(declare-fun res!758242 () Bool)

(assert (=> b!1135888 (=> (not res!758242) (not e!646437))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1135888 (= res!758242 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!44642 () Bool)

(assert (=> mapIsEmpty!44642 mapRes!44642))

(declare-fun bm!49724 () Bool)

(assert (=> bm!49724 (= call!49723 call!49728)))

(declare-fun b!1135889 () Bool)

(declare-fun res!758236 () Bool)

(assert (=> b!1135889 (=> (not res!758236) (not e!646437))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1135889 (= res!758236 (validMask!0 mask!1564))))

(declare-fun b!1135890 () Bool)

(declare-fun res!758240 () Bool)

(assert (=> b!1135890 (=> (not res!758240) (not e!646437))))

(assert (=> b!1135890 (= res!758240 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36140 _keys!1208))))))

(declare-fun b!1135891 () Bool)

(declare-fun res!758250 () Bool)

(assert (=> b!1135891 (=> res!758250 e!646425)))

(declare-fun contains!6602 (List!24991 (_ BitVec 64)) Bool)

(assert (=> b!1135891 (= res!758250 (contains!6602 Nil!24988 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1135892 () Bool)

(declare-fun lt!504969 () Unit!37150)

(assert (=> b!1135892 (= e!646435 lt!504969)))

(declare-fun lt!504967 () Unit!37150)

(assert (=> b!1135892 (= lt!504967 call!49728)))

(assert (=> b!1135892 (= lt!504962 (+!3451 lt!504975 (tuple2!18181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1135892 call!49721))

(assert (=> b!1135892 (= lt!504969 (addStillContains!751 lt!504962 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1135892 (contains!6601 call!49725 k0!934)))

(declare-fun b!1135893 () Bool)

(assert (=> b!1135893 (= e!646429 e!646424)))

(declare-fun res!758248 () Bool)

(assert (=> b!1135893 (=> res!758248 e!646424)))

(assert (=> b!1135893 (= res!758248 (not (= (select (arr!35603 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1135893 e!646427))

(declare-fun c!110963 () Bool)

(assert (=> b!1135893 (= c!110963 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!504963 () Unit!37150)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!464 (array!73912 array!73914 (_ BitVec 32) (_ BitVec 32) V!43187 V!43187 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37150)

(assert (=> b!1135893 (= lt!504963 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!464 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135894 () Bool)

(assert (=> b!1135894 (= e!646425 true)))

(declare-fun lt!504971 () Bool)

(assert (=> b!1135894 (= lt!504971 (contains!6602 Nil!24988 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1135895 () Bool)

(declare-fun res!758247 () Bool)

(assert (=> b!1135895 (=> (not res!758247) (not e!646437))))

(assert (=> b!1135895 (= res!758247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1135896 () Bool)

(assert (=> b!1135896 (= e!646431 (not e!646434))))

(declare-fun res!758246 () Bool)

(assert (=> b!1135896 (=> res!758246 e!646434)))

(assert (=> b!1135896 (= res!758246 (bvsgt from!1455 i!673))))

(assert (=> b!1135896 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!504970 () Unit!37150)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73912 (_ BitVec 64) (_ BitVec 32)) Unit!37150)

(assert (=> b!1135896 (= lt!504970 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1135897 () Bool)

(assert (=> b!1135897 (= e!646423 tp_is_empty!28545)))

(declare-fun bm!49725 () Bool)

(assert (=> bm!49725 (= call!49721 (contains!6601 (ite c!110965 lt!504962 call!49726) k0!934))))

(declare-fun b!1135898 () Bool)

(declare-fun res!758243 () Bool)

(assert (=> b!1135898 (=> (not res!758243) (not e!646437))))

(assert (=> b!1135898 (= res!758243 (= (select (arr!35603 _keys!1208) i!673) k0!934))))

(assert (= (and start!98446 res!758237) b!1135889))

(assert (= (and b!1135889 res!758236) b!1135877))

(assert (= (and b!1135877 res!758252) b!1135895))

(assert (= (and b!1135895 res!758247) b!1135887))

(assert (= (and b!1135887 res!758244) b!1135890))

(assert (= (and b!1135890 res!758240) b!1135888))

(assert (= (and b!1135888 res!758242) b!1135898))

(assert (= (and b!1135898 res!758243) b!1135869))

(assert (= (and b!1135869 res!758235) b!1135880))

(assert (= (and b!1135880 res!758238) b!1135896))

(assert (= (and b!1135896 (not res!758246)) b!1135876))

(assert (= (and b!1135876 (not res!758249)) b!1135893))

(assert (= (and b!1135893 c!110963) b!1135879))

(assert (= (and b!1135893 (not c!110963)) b!1135870))

(assert (= (or b!1135879 b!1135870) bm!49720))

(assert (= (or b!1135879 b!1135870) bm!49722))

(assert (= (and b!1135893 (not res!758248)) b!1135868))

(assert (= (and b!1135868 (not res!758241)) b!1135871))

(assert (= (and b!1135871 c!110965) b!1135892))

(assert (= (and b!1135871 (not c!110965)) b!1135885))

(assert (= (and b!1135885 c!110964) b!1135874))

(assert (= (and b!1135885 (not c!110964)) b!1135883))

(assert (= (and b!1135883 c!110967) b!1135882))

(assert (= (and b!1135883 (not c!110967)) b!1135872))

(assert (= (or b!1135874 b!1135882) bm!49724))

(assert (= (or b!1135874 b!1135882) bm!49718))

(assert (= (or b!1135874 b!1135882) bm!49719))

(assert (= (or b!1135892 bm!49719) bm!49725))

(assert (= (or b!1135892 bm!49724) bm!49721))

(assert (= (or b!1135892 bm!49718) bm!49723))

(assert (= (and b!1135871 c!110966) b!1135881))

(assert (= (and b!1135871 (not c!110966)) b!1135886))

(assert (= (and b!1135871 res!758251) b!1135873))

(assert (= (and b!1135871 (not res!758239)) b!1135884))

(assert (= (and b!1135884 (not res!758245)) b!1135891))

(assert (= (and b!1135891 (not res!758250)) b!1135894))

(assert (= (and b!1135875 condMapEmpty!44642) mapIsEmpty!44642))

(assert (= (and b!1135875 (not condMapEmpty!44642)) mapNonEmpty!44642))

(get-info :version)

(assert (= (and mapNonEmpty!44642 ((_ is ValueCellFull!13563) mapValue!44642)) b!1135897))

(assert (= (and b!1135875 ((_ is ValueCellFull!13563) mapDefault!44642)) b!1135878))

(assert (= start!98446 b!1135875))

(declare-fun b_lambda!19139 () Bool)

(assert (=> (not b_lambda!19139) (not b!1135876)))

(declare-fun t!36003 () Bool)

(declare-fun tb!8835 () Bool)

(assert (=> (and start!98446 (= defaultEntry!1004 defaultEntry!1004) t!36003) tb!8835))

(declare-fun result!18227 () Bool)

(assert (=> tb!8835 (= result!18227 tp_is_empty!28545)))

(assert (=> b!1135876 t!36003))

(declare-fun b_and!38895 () Bool)

(assert (= b_and!38893 (and (=> t!36003 result!18227) b_and!38895)))

(declare-fun m!1048371 () Bool)

(assert (=> b!1135876 m!1048371))

(declare-fun m!1048373 () Bool)

(assert (=> b!1135876 m!1048373))

(declare-fun m!1048375 () Bool)

(assert (=> b!1135876 m!1048375))

(declare-fun m!1048377 () Bool)

(assert (=> b!1135876 m!1048377))

(declare-fun m!1048379 () Bool)

(assert (=> b!1135898 m!1048379))

(declare-fun m!1048381 () Bool)

(assert (=> b!1135868 m!1048381))

(declare-fun m!1048383 () Bool)

(assert (=> b!1135868 m!1048383))

(declare-fun m!1048385 () Bool)

(assert (=> b!1135888 m!1048385))

(declare-fun m!1048387 () Bool)

(assert (=> b!1135884 m!1048387))

(declare-fun m!1048389 () Bool)

(assert (=> b!1135893 m!1048389))

(declare-fun m!1048391 () Bool)

(assert (=> b!1135893 m!1048391))

(declare-fun m!1048393 () Bool)

(assert (=> b!1135889 m!1048393))

(declare-fun m!1048395 () Bool)

(assert (=> b!1135880 m!1048395))

(declare-fun m!1048397 () Bool)

(assert (=> bm!49725 m!1048397))

(declare-fun m!1048399 () Bool)

(assert (=> mapNonEmpty!44642 m!1048399))

(declare-fun m!1048401 () Bool)

(assert (=> start!98446 m!1048401))

(declare-fun m!1048403 () Bool)

(assert (=> start!98446 m!1048403))

(declare-fun m!1048405 () Bool)

(assert (=> b!1135887 m!1048405))

(declare-fun m!1048407 () Bool)

(assert (=> b!1135894 m!1048407))

(declare-fun m!1048409 () Bool)

(assert (=> b!1135881 m!1048409))

(declare-fun m!1048411 () Bool)

(assert (=> bm!49721 m!1048411))

(declare-fun m!1048413 () Bool)

(assert (=> b!1135879 m!1048413))

(assert (=> b!1135873 m!1048409))

(assert (=> bm!49722 m!1048383))

(declare-fun m!1048415 () Bool)

(assert (=> b!1135896 m!1048415))

(declare-fun m!1048417 () Bool)

(assert (=> b!1135896 m!1048417))

(declare-fun m!1048419 () Bool)

(assert (=> b!1135891 m!1048419))

(declare-fun m!1048421 () Bool)

(assert (=> bm!49720 m!1048421))

(declare-fun m!1048423 () Bool)

(assert (=> b!1135895 m!1048423))

(declare-fun m!1048425 () Bool)

(assert (=> bm!49723 m!1048425))

(declare-fun m!1048427 () Bool)

(assert (=> b!1135892 m!1048427))

(declare-fun m!1048429 () Bool)

(assert (=> b!1135892 m!1048429))

(declare-fun m!1048431 () Bool)

(assert (=> b!1135892 m!1048431))

(declare-fun m!1048433 () Bool)

(assert (=> b!1135869 m!1048433))

(declare-fun m!1048435 () Bool)

(assert (=> b!1135869 m!1048435))

(declare-fun m!1048437 () Bool)

(assert (=> b!1135871 m!1048437))

(declare-fun m!1048439 () Bool)

(assert (=> b!1135871 m!1048439))

(declare-fun m!1048441 () Bool)

(assert (=> b!1135871 m!1048441))

(check-sat b_and!38895 (not b!1135869) (not b!1135892) (not b!1135888) (not b_lambda!19139) (not b_next!24015) (not b!1135896) (not bm!49721) (not bm!49722) (not b!1135880) (not b!1135876) (not bm!49720) (not b!1135889) (not b!1135879) (not b!1135881) (not b!1135868) (not mapNonEmpty!44642) (not b!1135895) (not b!1135873) (not start!98446) (not bm!49723) (not b!1135891) (not bm!49725) (not b!1135871) (not b!1135887) (not b!1135893) (not b!1135884) tp_is_empty!28545 (not b!1135894))
(check-sat b_and!38895 (not b_next!24015))

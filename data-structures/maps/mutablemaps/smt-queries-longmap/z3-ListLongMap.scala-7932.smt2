; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98470 () Bool)

(assert start!98470)

(declare-fun b_free!24039 () Bool)

(declare-fun b_next!24039 () Bool)

(assert (=> start!98470 (= b_free!24039 (not b_next!24039))))

(declare-fun tp!84828 () Bool)

(declare-fun b_and!38941 () Bool)

(assert (=> start!98470 (= tp!84828 b_and!38941)))

(declare-fun b!1136980 () Bool)

(declare-datatypes ((Unit!37190 0))(
  ( (Unit!37191) )
))
(declare-fun e!647026 () Unit!37190)

(declare-fun Unit!37192 () Unit!37190)

(assert (=> b!1136980 (= e!647026 Unit!37192)))

(declare-datatypes ((array!73958 0))(
  ( (array!73959 (arr!35626 (Array (_ BitVec 32) (_ BitVec 64))) (size!36163 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73958)

(declare-fun b!1136981 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!647019 () Bool)

(declare-fun arrayContainsKey!0 (array!73958 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1136981 (= e!647019 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1136982 () Bool)

(declare-fun Unit!37193 () Unit!37190)

(assert (=> b!1136982 (= e!647026 Unit!37193)))

(declare-fun lt!505599 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1136982 (= lt!505599 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!111161 () Bool)

(assert (=> b!1136982 (= c!111161 (and (not lt!505599) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!505593 () Unit!37190)

(declare-fun e!647028 () Unit!37190)

(assert (=> b!1136982 (= lt!505593 e!647028)))

(declare-datatypes ((V!43219 0))(
  ( (V!43220 (val!14341 Int)) )
))
(declare-fun zeroValue!944 () V!43219)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!505590 () Unit!37190)

(declare-datatypes ((ValueCell!13575 0))(
  ( (ValueCellFull!13575 (v!16979 V!43219)) (EmptyCell!13575) )
))
(declare-datatypes ((array!73960 0))(
  ( (array!73961 (arr!35627 (Array (_ BitVec 32) ValueCell!13575)) (size!36164 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73960)

(declare-fun minValue!944 () V!43219)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!366 (array!73958 array!73960 (_ BitVec 32) (_ BitVec 32) V!43219 V!43219 (_ BitVec 64) (_ BitVec 32) Int) Unit!37190)

(assert (=> b!1136982 (= lt!505590 (lemmaListMapContainsThenArrayContainsFrom!366 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111158 () Bool)

(assert (=> b!1136982 (= c!111158 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!758831 () Bool)

(declare-fun e!647034 () Bool)

(assert (=> b!1136982 (= res!758831 e!647034)))

(assert (=> b!1136982 (=> (not res!758831) (not e!647019))))

(assert (=> b!1136982 e!647019))

(declare-fun lt!505589 () Unit!37190)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73958 (_ BitVec 32) (_ BitVec 32)) Unit!37190)

(assert (=> b!1136982 (= lt!505589 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25011 0))(
  ( (Nil!25008) (Cons!25007 (h!26216 (_ BitVec 64)) (t!36049 List!25011)) )
))
(declare-fun arrayNoDuplicates!0 (array!73958 (_ BitVec 32) List!25011) Bool)

(assert (=> b!1136982 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25008)))

(declare-fun lt!505600 () Unit!37190)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!73958 (_ BitVec 64) (_ BitVec 32) List!25011) Unit!37190)

(assert (=> b!1136982 (= lt!505600 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25008))))

(assert (=> b!1136982 false))

(declare-fun b!1136983 () Bool)

(declare-fun e!647025 () Unit!37190)

(declare-fun Unit!37194 () Unit!37190)

(assert (=> b!1136983 (= e!647025 Unit!37194)))

(declare-fun b!1136984 () Bool)

(declare-fun res!758829 () Bool)

(declare-fun e!647031 () Bool)

(assert (=> b!1136984 (=> (not res!758829) (not e!647031))))

(assert (=> b!1136984 (= res!758829 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25008))))

(declare-fun bm!50006 () Bool)

(declare-datatypes ((tuple2!18202 0))(
  ( (tuple2!18203 (_1!9111 (_ BitVec 64)) (_2!9111 V!43219)) )
))
(declare-datatypes ((List!25012 0))(
  ( (Nil!25009) (Cons!25008 (h!26217 tuple2!18202) (t!36050 List!25012)) )
))
(declare-datatypes ((ListLongMap!16183 0))(
  ( (ListLongMap!16184 (toList!8107 List!25012)) )
))
(declare-fun call!50015 () ListLongMap!16183)

(declare-fun call!50013 () Bool)

(declare-fun lt!505594 () ListLongMap!16183)

(declare-fun contains!6618 (ListLongMap!16183 (_ BitVec 64)) Bool)

(assert (=> bm!50006 (= call!50013 (contains!6618 (ite c!111161 lt!505594 call!50015) k0!934))))

(declare-fun b!1136985 () Bool)

(declare-fun e!647020 () Bool)

(declare-fun tp_is_empty!28569 () Bool)

(assert (=> b!1136985 (= e!647020 tp_is_empty!28569)))

(declare-fun b!1136986 () Bool)

(declare-fun call!50010 () ListLongMap!16183)

(assert (=> b!1136986 (contains!6618 call!50010 k0!934)))

(declare-fun lt!505588 () Unit!37190)

(declare-fun addStillContains!761 (ListLongMap!16183 (_ BitVec 64) V!43219 (_ BitVec 64)) Unit!37190)

(assert (=> b!1136986 (= lt!505588 (addStillContains!761 lt!505594 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1136986 call!50013))

(declare-fun lt!505587 () ListLongMap!16183)

(declare-fun +!3460 (ListLongMap!16183 tuple2!18202) ListLongMap!16183)

(assert (=> b!1136986 (= lt!505594 (+!3460 lt!505587 (tuple2!18203 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!505602 () Unit!37190)

(declare-fun call!50014 () Unit!37190)

(assert (=> b!1136986 (= lt!505602 call!50014)))

(assert (=> b!1136986 (= e!647028 lt!505588)))

(declare-fun res!758833 () Bool)

(assert (=> start!98470 (=> (not res!758833) (not e!647031))))

(assert (=> start!98470 (= res!758833 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36163 _keys!1208))))))

(assert (=> start!98470 e!647031))

(assert (=> start!98470 tp_is_empty!28569))

(declare-fun array_inv!27190 (array!73958) Bool)

(assert (=> start!98470 (array_inv!27190 _keys!1208)))

(assert (=> start!98470 true))

(assert (=> start!98470 tp!84828))

(declare-fun e!647021 () Bool)

(declare-fun array_inv!27191 (array!73960) Bool)

(assert (=> start!98470 (and (array_inv!27191 _values!996) e!647021)))

(declare-fun bm!50007 () Bool)

(declare-fun call!50011 () Unit!37190)

(assert (=> bm!50007 (= call!50011 call!50014)))

(declare-fun b!1136987 () Bool)

(declare-fun res!758835 () Bool)

(assert (=> b!1136987 (=> (not res!758835) (not e!647031))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1136987 (= res!758835 (= (select (arr!35626 _keys!1208) i!673) k0!934))))

(declare-fun b!1136988 () Bool)

(declare-fun call!50012 () Bool)

(assert (=> b!1136988 call!50012))

(declare-fun lt!505595 () Unit!37190)

(assert (=> b!1136988 (= lt!505595 call!50011)))

(assert (=> b!1136988 (= e!647025 lt!505595)))

(declare-fun b!1136989 () Bool)

(declare-fun res!758836 () Bool)

(assert (=> b!1136989 (=> (not res!758836) (not e!647031))))

(assert (=> b!1136989 (= res!758836 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36163 _keys!1208))))))

(declare-fun bm!50008 () Bool)

(declare-fun c!111162 () Bool)

(assert (=> bm!50008 (= call!50014 (addStillContains!761 lt!505587 (ite (or c!111161 c!111162) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111161 c!111162) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1136990 () Bool)

(declare-fun e!647030 () Bool)

(assert (=> b!1136990 (= e!647030 true)))

(declare-fun lt!505598 () Unit!37190)

(assert (=> b!1136990 (= lt!505598 e!647026)))

(declare-fun c!111159 () Bool)

(assert (=> b!1136990 (= c!111159 (contains!6618 lt!505587 k0!934))))

(declare-fun getCurrentListMapNoExtraKeys!4555 (array!73958 array!73960 (_ BitVec 32) (_ BitVec 32) V!43219 V!43219 (_ BitVec 32) Int) ListLongMap!16183)

(assert (=> b!1136990 (= lt!505587 (getCurrentListMapNoExtraKeys!4555 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50009 () Bool)

(assert (=> bm!50009 (= call!50012 call!50013)))

(declare-fun b!1136991 () Bool)

(declare-fun res!758838 () Bool)

(declare-fun e!647033 () Bool)

(assert (=> b!1136991 (=> (not res!758838) (not e!647033))))

(declare-fun lt!505596 () array!73958)

(assert (=> b!1136991 (= res!758838 (arrayNoDuplicates!0 lt!505596 #b00000000000000000000000000000000 Nil!25008))))

(declare-fun b!1136992 () Bool)

(assert (=> b!1136992 (= e!647031 e!647033)))

(declare-fun res!758839 () Bool)

(assert (=> b!1136992 (=> (not res!758839) (not e!647033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73958 (_ BitVec 32)) Bool)

(assert (=> b!1136992 (= res!758839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!505596 mask!1564))))

(assert (=> b!1136992 (= lt!505596 (array!73959 (store (arr!35626 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36163 _keys!1208)))))

(declare-fun b!1136993 () Bool)

(declare-fun e!647022 () Bool)

(assert (=> b!1136993 (= e!647022 e!647030)))

(declare-fun res!758828 () Bool)

(assert (=> b!1136993 (=> res!758828 e!647030)))

(assert (=> b!1136993 (= res!758828 (not (= (select (arr!35626 _keys!1208) from!1455) k0!934)))))

(declare-fun e!647024 () Bool)

(assert (=> b!1136993 e!647024))

(declare-fun c!111157 () Bool)

(assert (=> b!1136993 (= c!111157 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!505585 () Unit!37190)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!473 (array!73958 array!73960 (_ BitVec 32) (_ BitVec 32) V!43219 V!43219 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37190)

(assert (=> b!1136993 (= lt!505585 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!473 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136994 () Bool)

(declare-fun e!647032 () Unit!37190)

(assert (=> b!1136994 (= e!647032 e!647025)))

(declare-fun c!111160 () Bool)

(assert (=> b!1136994 (= c!111160 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!505599))))

(declare-fun b!1136995 () Bool)

(declare-fun lt!505601 () Unit!37190)

(assert (=> b!1136995 (= e!647032 lt!505601)))

(assert (=> b!1136995 (= lt!505601 call!50011)))

(assert (=> b!1136995 call!50012))

(declare-fun mapIsEmpty!44678 () Bool)

(declare-fun mapRes!44678 () Bool)

(assert (=> mapIsEmpty!44678 mapRes!44678))

(declare-fun b!1136996 () Bool)

(declare-fun e!647023 () Bool)

(assert (=> b!1136996 (= e!647023 tp_is_empty!28569)))

(declare-fun bm!50010 () Bool)

(assert (=> bm!50010 (= call!50015 call!50010)))

(declare-fun b!1136997 () Bool)

(declare-fun e!647029 () Bool)

(assert (=> b!1136997 (= e!647033 (not e!647029))))

(declare-fun res!758834 () Bool)

(assert (=> b!1136997 (=> res!758834 e!647029)))

(assert (=> b!1136997 (= res!758834 (bvsgt from!1455 i!673))))

(assert (=> b!1136997 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!505586 () Unit!37190)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73958 (_ BitVec 64) (_ BitVec 32)) Unit!37190)

(assert (=> b!1136997 (= lt!505586 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun call!50009 () ListLongMap!16183)

(declare-fun lt!505591 () array!73960)

(declare-fun bm!50011 () Bool)

(assert (=> bm!50011 (= call!50009 (getCurrentListMapNoExtraKeys!4555 lt!505596 lt!505591 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136998 () Bool)

(assert (=> b!1136998 (= e!647029 e!647022)))

(declare-fun res!758830 () Bool)

(assert (=> b!1136998 (=> res!758830 e!647022)))

(assert (=> b!1136998 (= res!758830 (not (= from!1455 i!673)))))

(declare-fun lt!505592 () ListLongMap!16183)

(assert (=> b!1136998 (= lt!505592 (getCurrentListMapNoExtraKeys!4555 lt!505596 lt!505591 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2617 (Int (_ BitVec 64)) V!43219)

(assert (=> b!1136998 (= lt!505591 (array!73961 (store (arr!35627 _values!996) i!673 (ValueCellFull!13575 (dynLambda!2617 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36164 _values!996)))))

(declare-fun lt!505597 () ListLongMap!16183)

(assert (=> b!1136998 (= lt!505597 (getCurrentListMapNoExtraKeys!4555 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1136999 () Bool)

(declare-fun call!50016 () ListLongMap!16183)

(assert (=> b!1136999 (= e!647024 (= call!50009 call!50016))))

(declare-fun mapNonEmpty!44678 () Bool)

(declare-fun tp!84829 () Bool)

(assert (=> mapNonEmpty!44678 (= mapRes!44678 (and tp!84829 e!647023))))

(declare-fun mapKey!44678 () (_ BitVec 32))

(declare-fun mapValue!44678 () ValueCell!13575)

(declare-fun mapRest!44678 () (Array (_ BitVec 32) ValueCell!13575))

(assert (=> mapNonEmpty!44678 (= (arr!35627 _values!996) (store mapRest!44678 mapKey!44678 mapValue!44678))))

(declare-fun b!1137000 () Bool)

(assert (=> b!1137000 (= e!647021 (and e!647020 mapRes!44678))))

(declare-fun condMapEmpty!44678 () Bool)

(declare-fun mapDefault!44678 () ValueCell!13575)

(assert (=> b!1137000 (= condMapEmpty!44678 (= (arr!35627 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13575)) mapDefault!44678)))))

(declare-fun b!1137001 () Bool)

(declare-fun res!758827 () Bool)

(assert (=> b!1137001 (=> (not res!758827) (not e!647031))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1137001 (= res!758827 (validKeyInArray!0 k0!934))))

(declare-fun b!1137002 () Bool)

(assert (=> b!1137002 (= e!647034 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!50012 () Bool)

(assert (=> bm!50012 (= call!50016 (getCurrentListMapNoExtraKeys!4555 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50013 () Bool)

(assert (=> bm!50013 (= call!50010 (+!3460 (ite c!111161 lt!505594 lt!505587) (ite c!111161 (tuple2!18203 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!111162 (tuple2!18203 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18203 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1137003 () Bool)

(declare-fun res!758832 () Bool)

(assert (=> b!1137003 (=> (not res!758832) (not e!647031))))

(assert (=> b!1137003 (= res!758832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1137004 () Bool)

(declare-fun res!758837 () Bool)

(assert (=> b!1137004 (=> (not res!758837) (not e!647031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1137004 (= res!758837 (validMask!0 mask!1564))))

(declare-fun b!1137005 () Bool)

(assert (=> b!1137005 (= c!111162 (and (not lt!505599) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1137005 (= e!647028 e!647032)))

(declare-fun b!1137006 () Bool)

(assert (=> b!1137006 (= e!647034 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!505599) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1137007 () Bool)

(declare-fun res!758840 () Bool)

(assert (=> b!1137007 (=> (not res!758840) (not e!647031))))

(assert (=> b!1137007 (= res!758840 (and (= (size!36164 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36163 _keys!1208) (size!36164 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1137008 () Bool)

(declare-fun -!1216 (ListLongMap!16183 (_ BitVec 64)) ListLongMap!16183)

(assert (=> b!1137008 (= e!647024 (= call!50009 (-!1216 call!50016 k0!934)))))

(assert (= (and start!98470 res!758833) b!1137004))

(assert (= (and b!1137004 res!758837) b!1137007))

(assert (= (and b!1137007 res!758840) b!1137003))

(assert (= (and b!1137003 res!758832) b!1136984))

(assert (= (and b!1136984 res!758829) b!1136989))

(assert (= (and b!1136989 res!758836) b!1137001))

(assert (= (and b!1137001 res!758827) b!1136987))

(assert (= (and b!1136987 res!758835) b!1136992))

(assert (= (and b!1136992 res!758839) b!1136991))

(assert (= (and b!1136991 res!758838) b!1136997))

(assert (= (and b!1136997 (not res!758834)) b!1136998))

(assert (= (and b!1136998 (not res!758830)) b!1136993))

(assert (= (and b!1136993 c!111157) b!1137008))

(assert (= (and b!1136993 (not c!111157)) b!1136999))

(assert (= (or b!1137008 b!1136999) bm!50011))

(assert (= (or b!1137008 b!1136999) bm!50012))

(assert (= (and b!1136993 (not res!758828)) b!1136990))

(assert (= (and b!1136990 c!111159) b!1136982))

(assert (= (and b!1136990 (not c!111159)) b!1136980))

(assert (= (and b!1136982 c!111161) b!1136986))

(assert (= (and b!1136982 (not c!111161)) b!1137005))

(assert (= (and b!1137005 c!111162) b!1136995))

(assert (= (and b!1137005 (not c!111162)) b!1136994))

(assert (= (and b!1136994 c!111160) b!1136988))

(assert (= (and b!1136994 (not c!111160)) b!1136983))

(assert (= (or b!1136995 b!1136988) bm!50007))

(assert (= (or b!1136995 b!1136988) bm!50010))

(assert (= (or b!1136995 b!1136988) bm!50009))

(assert (= (or b!1136986 bm!50009) bm!50006))

(assert (= (or b!1136986 bm!50007) bm!50008))

(assert (= (or b!1136986 bm!50010) bm!50013))

(assert (= (and b!1136982 c!111158) b!1137002))

(assert (= (and b!1136982 (not c!111158)) b!1137006))

(assert (= (and b!1136982 res!758831) b!1136981))

(assert (= (and b!1137000 condMapEmpty!44678) mapIsEmpty!44678))

(assert (= (and b!1137000 (not condMapEmpty!44678)) mapNonEmpty!44678))

(get-info :version)

(assert (= (and mapNonEmpty!44678 ((_ is ValueCellFull!13575) mapValue!44678)) b!1136996))

(assert (= (and b!1137000 ((_ is ValueCellFull!13575) mapDefault!44678)) b!1136985))

(assert (= start!98470 b!1137000))

(declare-fun b_lambda!19163 () Bool)

(assert (=> (not b_lambda!19163) (not b!1136998)))

(declare-fun t!36048 () Bool)

(declare-fun tb!8859 () Bool)

(assert (=> (and start!98470 (= defaultEntry!1004 defaultEntry!1004) t!36048) tb!8859))

(declare-fun result!18275 () Bool)

(assert (=> tb!8859 (= result!18275 tp_is_empty!28569)))

(assert (=> b!1136998 t!36048))

(declare-fun b_and!38943 () Bool)

(assert (= b_and!38941 (and (=> t!36048 result!18275) b_and!38943)))

(declare-fun m!1049219 () Bool)

(assert (=> b!1137004 m!1049219))

(declare-fun m!1049221 () Bool)

(assert (=> b!1136986 m!1049221))

(declare-fun m!1049223 () Bool)

(assert (=> b!1136986 m!1049223))

(declare-fun m!1049225 () Bool)

(assert (=> b!1136986 m!1049225))

(declare-fun m!1049227 () Bool)

(assert (=> bm!50013 m!1049227))

(declare-fun m!1049229 () Bool)

(assert (=> b!1136993 m!1049229))

(declare-fun m!1049231 () Bool)

(assert (=> b!1136993 m!1049231))

(declare-fun m!1049233 () Bool)

(assert (=> start!98470 m!1049233))

(declare-fun m!1049235 () Bool)

(assert (=> start!98470 m!1049235))

(declare-fun m!1049237 () Bool)

(assert (=> b!1136997 m!1049237))

(declare-fun m!1049239 () Bool)

(assert (=> b!1136997 m!1049239))

(declare-fun m!1049241 () Bool)

(assert (=> b!1136982 m!1049241))

(declare-fun m!1049243 () Bool)

(assert (=> b!1136982 m!1049243))

(declare-fun m!1049245 () Bool)

(assert (=> b!1136982 m!1049245))

(declare-fun m!1049247 () Bool)

(assert (=> b!1136982 m!1049247))

(declare-fun m!1049249 () Bool)

(assert (=> b!1136981 m!1049249))

(declare-fun m!1049251 () Bool)

(assert (=> bm!50011 m!1049251))

(declare-fun m!1049253 () Bool)

(assert (=> b!1136998 m!1049253))

(declare-fun m!1049255 () Bool)

(assert (=> b!1136998 m!1049255))

(declare-fun m!1049257 () Bool)

(assert (=> b!1136998 m!1049257))

(declare-fun m!1049259 () Bool)

(assert (=> b!1136998 m!1049259))

(declare-fun m!1049261 () Bool)

(assert (=> mapNonEmpty!44678 m!1049261))

(declare-fun m!1049263 () Bool)

(assert (=> b!1137001 m!1049263))

(declare-fun m!1049265 () Bool)

(assert (=> b!1136984 m!1049265))

(declare-fun m!1049267 () Bool)

(assert (=> bm!50006 m!1049267))

(declare-fun m!1049269 () Bool)

(assert (=> b!1137008 m!1049269))

(declare-fun m!1049271 () Bool)

(assert (=> b!1136992 m!1049271))

(declare-fun m!1049273 () Bool)

(assert (=> b!1136992 m!1049273))

(declare-fun m!1049275 () Bool)

(assert (=> b!1136990 m!1049275))

(declare-fun m!1049277 () Bool)

(assert (=> b!1136990 m!1049277))

(declare-fun m!1049279 () Bool)

(assert (=> bm!50008 m!1049279))

(assert (=> bm!50012 m!1049277))

(declare-fun m!1049281 () Bool)

(assert (=> b!1136991 m!1049281))

(declare-fun m!1049283 () Bool)

(assert (=> b!1136987 m!1049283))

(declare-fun m!1049285 () Bool)

(assert (=> b!1137003 m!1049285))

(assert (=> b!1137002 m!1049249))

(check-sat (not b!1136984) (not b!1136998) tp_is_empty!28569 (not b!1136997) (not bm!50006) (not b!1136993) (not bm!50008) (not mapNonEmpty!44678) (not b!1137004) (not b!1136986) (not b_next!24039) b_and!38943 (not b!1137008) (not b!1137003) (not bm!50011) (not b!1136992) (not b_lambda!19163) (not bm!50012) (not b!1137001) (not b!1136990) (not b!1136982) (not start!98470) (not b!1136981) (not bm!50013) (not b!1136991) (not b!1137002))
(check-sat b_and!38943 (not b_next!24039))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98890 () Bool)

(assert start!98890)

(declare-fun b_free!24459 () Bool)

(declare-fun b_next!24459 () Bool)

(assert (=> start!98890 (= b_free!24459 (not b_next!24459))))

(declare-fun tp!86089 () Bool)

(declare-fun b_and!39781 () Bool)

(assert (=> start!98890 (= tp!86089 b_and!39781)))

(declare-fun b!1156062 () Bool)

(declare-fun e!657500 () Bool)

(declare-datatypes ((V!43779 0))(
  ( (V!43780 (val!14551 Int)) )
))
(declare-datatypes ((tuple2!18576 0))(
  ( (tuple2!18577 (_1!9298 (_ BitVec 64)) (_2!9298 V!43779)) )
))
(declare-datatypes ((List!25359 0))(
  ( (Nil!25356) (Cons!25355 (h!26564 tuple2!18576) (t!36817 List!25359)) )
))
(declare-datatypes ((ListLongMap!16557 0))(
  ( (ListLongMap!16558 (toList!8294 List!25359)) )
))
(declare-fun call!55049 () ListLongMap!16557)

(declare-fun call!55053 () ListLongMap!16557)

(assert (=> b!1156062 (= e!657500 (= call!55049 call!55053))))

(declare-fun zeroValue!944 () V!43779)

(declare-fun call!55055 () ListLongMap!16557)

(declare-fun c!114937 () Bool)

(declare-fun lt!518841 () ListLongMap!16557)

(declare-fun bm!55046 () Bool)

(declare-fun c!114939 () Bool)

(declare-fun minValue!944 () V!43779)

(declare-fun +!3625 (ListLongMap!16557 tuple2!18576) ListLongMap!16557)

(assert (=> bm!55046 (= call!55055 (+!3625 lt!518841 (ite (or c!114939 c!114937) (tuple2!18577 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18577 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-datatypes ((Unit!37969 0))(
  ( (Unit!37970) )
))
(declare-fun call!55054 () Unit!37969)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun bm!55047 () Bool)

(declare-fun addStillContains!922 (ListLongMap!16557 (_ BitVec 64) V!43779 (_ BitVec 64)) Unit!37969)

(assert (=> bm!55047 (= call!55054 (addStillContains!922 lt!518841 (ite (or c!114939 c!114937) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!114939 c!114937) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1156063 () Bool)

(declare-fun e!657502 () Bool)

(assert (=> b!1156063 (= e!657502 true)))

(declare-fun e!657495 () Bool)

(assert (=> b!1156063 e!657495))

(declare-fun res!768049 () Bool)

(assert (=> b!1156063 (=> (not res!768049) (not e!657495))))

(declare-fun lt!518830 () ListLongMap!16557)

(assert (=> b!1156063 (= res!768049 (= lt!518830 lt!518841))))

(declare-fun lt!518826 () ListLongMap!16557)

(declare-fun -!1371 (ListLongMap!16557 (_ BitVec 64)) ListLongMap!16557)

(assert (=> b!1156063 (= lt!518830 (-!1371 lt!518826 k0!934))))

(declare-datatypes ((array!74772 0))(
  ( (array!74773 (arr!36033 (Array (_ BitVec 32) (_ BitVec 64))) (size!36570 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74772)

(declare-fun lt!518834 () V!43779)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1156063 (= (-!1371 (+!3625 lt!518841 (tuple2!18577 (select (arr!36033 _keys!1208) from!1455) lt!518834)) (select (arr!36033 _keys!1208) from!1455)) lt!518841)))

(declare-fun lt!518828 () Unit!37969)

(declare-fun addThenRemoveForNewKeyIsSame!213 (ListLongMap!16557 (_ BitVec 64) V!43779) Unit!37969)

(assert (=> b!1156063 (= lt!518828 (addThenRemoveForNewKeyIsSame!213 lt!518841 (select (arr!36033 _keys!1208) from!1455) lt!518834))))

(declare-fun lt!518843 () V!43779)

(declare-datatypes ((ValueCell!13785 0))(
  ( (ValueCellFull!13785 (v!17189 V!43779)) (EmptyCell!13785) )
))
(declare-datatypes ((array!74774 0))(
  ( (array!74775 (arr!36034 (Array (_ BitVec 32) ValueCell!13785)) (size!36571 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74774)

(declare-fun get!18387 (ValueCell!13785 V!43779) V!43779)

(assert (=> b!1156063 (= lt!518834 (get!18387 (select (arr!36034 _values!996) from!1455) lt!518843))))

(declare-fun lt!518837 () Unit!37969)

(declare-fun e!657506 () Unit!37969)

(assert (=> b!1156063 (= lt!518837 e!657506)))

(declare-fun c!114938 () Bool)

(declare-fun contains!6781 (ListLongMap!16557 (_ BitVec 64)) Bool)

(assert (=> b!1156063 (= c!114938 (contains!6781 lt!518841 k0!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4732 (array!74772 array!74774 (_ BitVec 32) (_ BitVec 32) V!43779 V!43779 (_ BitVec 32) Int) ListLongMap!16557)

(assert (=> b!1156063 (= lt!518841 (getCurrentListMapNoExtraKeys!4732 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1156064 () Bool)

(declare-fun e!657501 () Bool)

(declare-fun e!657504 () Bool)

(assert (=> b!1156064 (= e!657501 (not e!657504))))

(declare-fun res!768045 () Bool)

(assert (=> b!1156064 (=> res!768045 e!657504)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1156064 (= res!768045 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74772 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1156064 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!518845 () Unit!37969)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74772 (_ BitVec 64) (_ BitVec 32)) Unit!37969)

(assert (=> b!1156064 (= lt!518845 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun lt!518829 () array!74774)

(declare-fun b!1156065 () Bool)

(declare-fun lt!518836 () array!74772)

(assert (=> b!1156065 (= e!657495 (= lt!518830 (getCurrentListMapNoExtraKeys!4732 lt!518836 lt!518829 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1156067 () Bool)

(declare-fun res!768046 () Bool)

(declare-fun e!657505 () Bool)

(assert (=> b!1156067 (=> (not res!768046) (not e!657505))))

(assert (=> b!1156067 (= res!768046 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36570 _keys!1208))))))

(declare-fun call!55050 () Bool)

(declare-fun bm!55048 () Bool)

(declare-fun lt!518832 () ListLongMap!16557)

(declare-fun call!55051 () ListLongMap!16557)

(assert (=> bm!55048 (= call!55050 (contains!6781 (ite c!114939 lt!518832 call!55051) k0!934))))

(declare-fun b!1156068 () Bool)

(assert (=> b!1156068 (contains!6781 (+!3625 lt!518832 (tuple2!18577 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!518838 () Unit!37969)

(assert (=> b!1156068 (= lt!518838 (addStillContains!922 lt!518832 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1156068 call!55050))

(assert (=> b!1156068 (= lt!518832 call!55055)))

(declare-fun lt!518839 () Unit!37969)

(assert (=> b!1156068 (= lt!518839 call!55054)))

(declare-fun e!657494 () Unit!37969)

(assert (=> b!1156068 (= e!657494 lt!518838)))

(declare-fun b!1156069 () Bool)

(declare-fun res!768044 () Bool)

(assert (=> b!1156069 (=> (not res!768044) (not e!657505))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74772 (_ BitVec 32)) Bool)

(assert (=> b!1156069 (= res!768044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!55049 () Bool)

(assert (=> bm!55049 (= call!55053 (getCurrentListMapNoExtraKeys!4732 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1156070 () Bool)

(declare-fun res!768042 () Bool)

(assert (=> b!1156070 (=> (not res!768042) (not e!657505))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1156070 (= res!768042 (validKeyInArray!0 k0!934))))

(declare-fun b!1156071 () Bool)

(declare-fun e!657498 () Unit!37969)

(declare-fun lt!518847 () Unit!37969)

(assert (=> b!1156071 (= e!657498 lt!518847)))

(declare-fun call!55056 () Unit!37969)

(assert (=> b!1156071 (= lt!518847 call!55056)))

(declare-fun call!55052 () Bool)

(assert (=> b!1156071 call!55052))

(declare-fun bm!55050 () Bool)

(assert (=> bm!55050 (= call!55049 (getCurrentListMapNoExtraKeys!4732 lt!518836 lt!518829 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1156072 () Bool)

(declare-fun e!657499 () Bool)

(declare-fun tp_is_empty!28989 () Bool)

(assert (=> b!1156072 (= e!657499 tp_is_empty!28989)))

(declare-fun b!1156073 () Bool)

(declare-fun lt!518846 () Bool)

(assert (=> b!1156073 (= c!114937 (and (not lt!518846) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1156073 (= e!657494 e!657498)))

(declare-fun b!1156074 () Bool)

(declare-fun e!657503 () Bool)

(assert (=> b!1156074 (= e!657504 e!657503)))

(declare-fun res!768051 () Bool)

(assert (=> b!1156074 (=> res!768051 e!657503)))

(assert (=> b!1156074 (= res!768051 (not (= from!1455 i!673)))))

(declare-fun lt!518835 () ListLongMap!16557)

(assert (=> b!1156074 (= lt!518835 (getCurrentListMapNoExtraKeys!4732 lt!518836 lt!518829 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1156074 (= lt!518829 (array!74775 (store (arr!36034 _values!996) i!673 (ValueCellFull!13785 lt!518843)) (size!36571 _values!996)))))

(declare-fun dynLambda!2746 (Int (_ BitVec 64)) V!43779)

(assert (=> b!1156074 (= lt!518843 (dynLambda!2746 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1156074 (= lt!518826 (getCurrentListMapNoExtraKeys!4732 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!45308 () Bool)

(declare-fun mapRes!45308 () Bool)

(assert (=> mapIsEmpty!45308 mapRes!45308))

(declare-fun b!1156075 () Bool)

(declare-fun Unit!37971 () Unit!37969)

(assert (=> b!1156075 (= e!657506 Unit!37971)))

(declare-fun b!1156076 () Bool)

(assert (=> b!1156076 call!55052))

(declare-fun lt!518831 () Unit!37969)

(assert (=> b!1156076 (= lt!518831 call!55056)))

(declare-fun e!657493 () Unit!37969)

(assert (=> b!1156076 (= e!657493 lt!518831)))

(declare-fun b!1156077 () Bool)

(declare-fun Unit!37972 () Unit!37969)

(assert (=> b!1156077 (= e!657493 Unit!37972)))

(declare-fun e!657507 () Bool)

(declare-fun b!1156078 () Bool)

(assert (=> b!1156078 (= e!657507 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1156079 () Bool)

(assert (=> b!1156079 (= e!657500 (= call!55049 (-!1371 call!55053 k0!934)))))

(declare-fun b!1156080 () Bool)

(declare-fun e!657491 () Bool)

(assert (=> b!1156080 (= e!657491 tp_is_empty!28989)))

(declare-fun b!1156081 () Bool)

(declare-fun Unit!37973 () Unit!37969)

(assert (=> b!1156081 (= e!657506 Unit!37973)))

(assert (=> b!1156081 (= lt!518846 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1156081 (= c!114939 (and (not lt!518846) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!518833 () Unit!37969)

(assert (=> b!1156081 (= lt!518833 e!657494)))

(declare-fun lt!518827 () Unit!37969)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!501 (array!74772 array!74774 (_ BitVec 32) (_ BitVec 32) V!43779 V!43779 (_ BitVec 64) (_ BitVec 32) Int) Unit!37969)

(assert (=> b!1156081 (= lt!518827 (lemmaListMapContainsThenArrayContainsFrom!501 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114940 () Bool)

(assert (=> b!1156081 (= c!114940 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!768050 () Bool)

(declare-fun e!657496 () Bool)

(assert (=> b!1156081 (= res!768050 e!657496)))

(assert (=> b!1156081 (=> (not res!768050) (not e!657507))))

(assert (=> b!1156081 e!657507))

(declare-fun lt!518840 () Unit!37969)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74772 (_ BitVec 32) (_ BitVec 32)) Unit!37969)

(assert (=> b!1156081 (= lt!518840 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25360 0))(
  ( (Nil!25357) (Cons!25356 (h!26565 (_ BitVec 64)) (t!36818 List!25360)) )
))
(declare-fun arrayNoDuplicates!0 (array!74772 (_ BitVec 32) List!25360) Bool)

(assert (=> b!1156081 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25357)))

(declare-fun lt!518844 () Unit!37969)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74772 (_ BitVec 64) (_ BitVec 32) List!25360) Unit!37969)

(assert (=> b!1156081 (= lt!518844 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25357))))

(assert (=> b!1156081 false))

(declare-fun mapNonEmpty!45308 () Bool)

(declare-fun tp!86088 () Bool)

(assert (=> mapNonEmpty!45308 (= mapRes!45308 (and tp!86088 e!657491))))

(declare-fun mapKey!45308 () (_ BitVec 32))

(declare-fun mapRest!45308 () (Array (_ BitVec 32) ValueCell!13785))

(declare-fun mapValue!45308 () ValueCell!13785)

(assert (=> mapNonEmpty!45308 (= (arr!36034 _values!996) (store mapRest!45308 mapKey!45308 mapValue!45308))))

(declare-fun b!1156082 () Bool)

(assert (=> b!1156082 (= e!657498 e!657493)))

(declare-fun c!114942 () Bool)

(assert (=> b!1156082 (= c!114942 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!518846))))

(declare-fun b!1156083 () Bool)

(declare-fun res!768041 () Bool)

(assert (=> b!1156083 (=> (not res!768041) (not e!657505))))

(assert (=> b!1156083 (= res!768041 (= (select (arr!36033 _keys!1208) i!673) k0!934))))

(declare-fun b!1156084 () Bool)

(assert (=> b!1156084 (= e!657503 e!657502)))

(declare-fun res!768047 () Bool)

(assert (=> b!1156084 (=> res!768047 e!657502)))

(assert (=> b!1156084 (= res!768047 (not (= (select (arr!36033 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1156084 e!657500))

(declare-fun c!114941 () Bool)

(assert (=> b!1156084 (= c!114941 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!518842 () Unit!37969)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!600 (array!74772 array!74774 (_ BitVec 32) (_ BitVec 32) V!43779 V!43779 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37969)

(assert (=> b!1156084 (= lt!518842 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!600 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1156085 () Bool)

(declare-fun res!768043 () Bool)

(assert (=> b!1156085 (=> (not res!768043) (not e!657505))))

(assert (=> b!1156085 (= res!768043 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25357))))

(declare-fun b!1156066 () Bool)

(assert (=> b!1156066 (= e!657496 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!768052 () Bool)

(assert (=> start!98890 (=> (not res!768052) (not e!657505))))

(assert (=> start!98890 (= res!768052 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36570 _keys!1208))))))

(assert (=> start!98890 e!657505))

(assert (=> start!98890 tp_is_empty!28989))

(declare-fun array_inv!27450 (array!74772) Bool)

(assert (=> start!98890 (array_inv!27450 _keys!1208)))

(assert (=> start!98890 true))

(assert (=> start!98890 tp!86089))

(declare-fun e!657497 () Bool)

(declare-fun array_inv!27451 (array!74774) Bool)

(assert (=> start!98890 (and (array_inv!27451 _values!996) e!657497)))

(declare-fun b!1156086 () Bool)

(assert (=> b!1156086 (= e!657497 (and e!657499 mapRes!45308))))

(declare-fun condMapEmpty!45308 () Bool)

(declare-fun mapDefault!45308 () ValueCell!13785)

(assert (=> b!1156086 (= condMapEmpty!45308 (= (arr!36034 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13785)) mapDefault!45308)))))

(declare-fun b!1156087 () Bool)

(declare-fun res!768053 () Bool)

(assert (=> b!1156087 (=> (not res!768053) (not e!657505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1156087 (= res!768053 (validMask!0 mask!1564))))

(declare-fun b!1156088 () Bool)

(declare-fun res!768039 () Bool)

(assert (=> b!1156088 (=> (not res!768039) (not e!657501))))

(assert (=> b!1156088 (= res!768039 (arrayNoDuplicates!0 lt!518836 #b00000000000000000000000000000000 Nil!25357))))

(declare-fun b!1156089 () Bool)

(declare-fun res!768040 () Bool)

(assert (=> b!1156089 (=> (not res!768040) (not e!657505))))

(assert (=> b!1156089 (= res!768040 (and (= (size!36571 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36570 _keys!1208) (size!36571 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1156090 () Bool)

(assert (=> b!1156090 (= e!657505 e!657501)))

(declare-fun res!768048 () Bool)

(assert (=> b!1156090 (=> (not res!768048) (not e!657501))))

(assert (=> b!1156090 (= res!768048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!518836 mask!1564))))

(assert (=> b!1156090 (= lt!518836 (array!74773 (store (arr!36033 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36570 _keys!1208)))))

(declare-fun b!1156091 () Bool)

(assert (=> b!1156091 (= e!657496 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!518846) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!55051 () Bool)

(assert (=> bm!55051 (= call!55052 call!55050)))

(declare-fun bm!55052 () Bool)

(assert (=> bm!55052 (= call!55056 call!55054)))

(declare-fun bm!55053 () Bool)

(assert (=> bm!55053 (= call!55051 call!55055)))

(assert (= (and start!98890 res!768052) b!1156087))

(assert (= (and b!1156087 res!768053) b!1156089))

(assert (= (and b!1156089 res!768040) b!1156069))

(assert (= (and b!1156069 res!768044) b!1156085))

(assert (= (and b!1156085 res!768043) b!1156067))

(assert (= (and b!1156067 res!768046) b!1156070))

(assert (= (and b!1156070 res!768042) b!1156083))

(assert (= (and b!1156083 res!768041) b!1156090))

(assert (= (and b!1156090 res!768048) b!1156088))

(assert (= (and b!1156088 res!768039) b!1156064))

(assert (= (and b!1156064 (not res!768045)) b!1156074))

(assert (= (and b!1156074 (not res!768051)) b!1156084))

(assert (= (and b!1156084 c!114941) b!1156079))

(assert (= (and b!1156084 (not c!114941)) b!1156062))

(assert (= (or b!1156079 b!1156062) bm!55050))

(assert (= (or b!1156079 b!1156062) bm!55049))

(assert (= (and b!1156084 (not res!768047)) b!1156063))

(assert (= (and b!1156063 c!114938) b!1156081))

(assert (= (and b!1156063 (not c!114938)) b!1156075))

(assert (= (and b!1156081 c!114939) b!1156068))

(assert (= (and b!1156081 (not c!114939)) b!1156073))

(assert (= (and b!1156073 c!114937) b!1156071))

(assert (= (and b!1156073 (not c!114937)) b!1156082))

(assert (= (and b!1156082 c!114942) b!1156076))

(assert (= (and b!1156082 (not c!114942)) b!1156077))

(assert (= (or b!1156071 b!1156076) bm!55052))

(assert (= (or b!1156071 b!1156076) bm!55053))

(assert (= (or b!1156071 b!1156076) bm!55051))

(assert (= (or b!1156068 bm!55051) bm!55048))

(assert (= (or b!1156068 bm!55052) bm!55047))

(assert (= (or b!1156068 bm!55053) bm!55046))

(assert (= (and b!1156081 c!114940) b!1156066))

(assert (= (and b!1156081 (not c!114940)) b!1156091))

(assert (= (and b!1156081 res!768050) b!1156078))

(assert (= (and b!1156063 res!768049) b!1156065))

(assert (= (and b!1156086 condMapEmpty!45308) mapIsEmpty!45308))

(assert (= (and b!1156086 (not condMapEmpty!45308)) mapNonEmpty!45308))

(get-info :version)

(assert (= (and mapNonEmpty!45308 ((_ is ValueCellFull!13785) mapValue!45308)) b!1156080))

(assert (= (and b!1156086 ((_ is ValueCellFull!13785) mapDefault!45308)) b!1156072))

(assert (= start!98890 b!1156086))

(declare-fun b_lambda!19583 () Bool)

(assert (=> (not b_lambda!19583) (not b!1156074)))

(declare-fun t!36816 () Bool)

(declare-fun tb!9279 () Bool)

(assert (=> (and start!98890 (= defaultEntry!1004 defaultEntry!1004) t!36816) tb!9279))

(declare-fun result!19115 () Bool)

(assert (=> tb!9279 (= result!19115 tp_is_empty!28989)))

(assert (=> b!1156074 t!36816))

(declare-fun b_and!39783 () Bool)

(assert (= b_and!39781 (and (=> t!36816 result!19115) b_and!39783)))

(declare-fun m!1065623 () Bool)

(assert (=> b!1156068 m!1065623))

(assert (=> b!1156068 m!1065623))

(declare-fun m!1065625 () Bool)

(assert (=> b!1156068 m!1065625))

(declare-fun m!1065627 () Bool)

(assert (=> b!1156068 m!1065627))

(declare-fun m!1065629 () Bool)

(assert (=> b!1156079 m!1065629))

(declare-fun m!1065631 () Bool)

(assert (=> bm!55047 m!1065631))

(declare-fun m!1065633 () Bool)

(assert (=> b!1156090 m!1065633))

(declare-fun m!1065635 () Bool)

(assert (=> b!1156090 m!1065635))

(declare-fun m!1065637 () Bool)

(assert (=> bm!55050 m!1065637))

(declare-fun m!1065639 () Bool)

(assert (=> b!1156069 m!1065639))

(declare-fun m!1065641 () Bool)

(assert (=> b!1156074 m!1065641))

(declare-fun m!1065643 () Bool)

(assert (=> b!1156074 m!1065643))

(declare-fun m!1065645 () Bool)

(assert (=> b!1156074 m!1065645))

(declare-fun m!1065647 () Bool)

(assert (=> b!1156074 m!1065647))

(declare-fun m!1065649 () Bool)

(assert (=> bm!55049 m!1065649))

(declare-fun m!1065651 () Bool)

(assert (=> b!1156088 m!1065651))

(declare-fun m!1065653 () Bool)

(assert (=> b!1156083 m!1065653))

(declare-fun m!1065655 () Bool)

(assert (=> b!1156064 m!1065655))

(declare-fun m!1065657 () Bool)

(assert (=> b!1156064 m!1065657))

(declare-fun m!1065659 () Bool)

(assert (=> mapNonEmpty!45308 m!1065659))

(declare-fun m!1065661 () Bool)

(assert (=> b!1156078 m!1065661))

(declare-fun m!1065663 () Bool)

(assert (=> bm!55046 m!1065663))

(declare-fun m!1065665 () Bool)

(assert (=> b!1156063 m!1065665))

(assert (=> b!1156063 m!1065665))

(declare-fun m!1065667 () Bool)

(assert (=> b!1156063 m!1065667))

(declare-fun m!1065669 () Bool)

(assert (=> b!1156063 m!1065669))

(declare-fun m!1065671 () Bool)

(assert (=> b!1156063 m!1065671))

(declare-fun m!1065673 () Bool)

(assert (=> b!1156063 m!1065673))

(declare-fun m!1065675 () Bool)

(assert (=> b!1156063 m!1065675))

(assert (=> b!1156063 m!1065669))

(declare-fun m!1065677 () Bool)

(assert (=> b!1156063 m!1065677))

(assert (=> b!1156063 m!1065671))

(assert (=> b!1156063 m!1065649))

(assert (=> b!1156063 m!1065671))

(declare-fun m!1065679 () Bool)

(assert (=> b!1156063 m!1065679))

(declare-fun m!1065681 () Bool)

(assert (=> b!1156085 m!1065681))

(assert (=> b!1156065 m!1065637))

(declare-fun m!1065683 () Bool)

(assert (=> b!1156081 m!1065683))

(declare-fun m!1065685 () Bool)

(assert (=> b!1156081 m!1065685))

(declare-fun m!1065687 () Bool)

(assert (=> b!1156081 m!1065687))

(declare-fun m!1065689 () Bool)

(assert (=> b!1156081 m!1065689))

(assert (=> b!1156066 m!1065661))

(declare-fun m!1065691 () Bool)

(assert (=> bm!55048 m!1065691))

(declare-fun m!1065693 () Bool)

(assert (=> start!98890 m!1065693))

(declare-fun m!1065695 () Bool)

(assert (=> start!98890 m!1065695))

(declare-fun m!1065697 () Bool)

(assert (=> b!1156070 m!1065697))

(declare-fun m!1065699 () Bool)

(assert (=> b!1156087 m!1065699))

(assert (=> b!1156084 m!1065671))

(declare-fun m!1065701 () Bool)

(assert (=> b!1156084 m!1065701))

(check-sat tp_is_empty!28989 (not b!1156085) (not bm!55048) b_and!39783 (not bm!55049) (not b!1156070) (not start!98890) (not b_next!24459) (not b!1156066) (not b!1156065) (not b!1156084) (not bm!55047) (not b!1156063) (not b!1156090) (not b!1156081) (not b!1156068) (not b!1156064) (not b!1156078) (not bm!55050) (not b!1156074) (not b!1156069) (not mapNonEmpty!45308) (not b!1156088) (not b!1156087) (not b_lambda!19583) (not b!1156079) (not bm!55046))
(check-sat b_and!39783 (not b_next!24459))

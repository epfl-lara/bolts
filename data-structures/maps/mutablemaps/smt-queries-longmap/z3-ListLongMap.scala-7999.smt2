; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98872 () Bool)

(assert start!98872)

(declare-fun b_free!24441 () Bool)

(declare-fun b_next!24441 () Bool)

(assert (=> start!98872 (= b_free!24441 (not b_next!24441))))

(declare-fun tp!86035 () Bool)

(declare-fun b_and!39745 () Bool)

(assert (=> start!98872 (= tp!86035 b_and!39745)))

(declare-fun e!657032 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun b!1155235 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!518243 () Bool)

(assert (=> b!1155235 (= e!657032 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!518243) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1155236 () Bool)

(declare-fun e!657038 () Bool)

(declare-fun e!657047 () Bool)

(assert (=> b!1155236 (= e!657038 e!657047)))

(declare-fun res!767640 () Bool)

(assert (=> b!1155236 (=> (not res!767640) (not e!657047))))

(declare-datatypes ((array!74738 0))(
  ( (array!74739 (arr!36016 (Array (_ BitVec 32) (_ BitVec 64))) (size!36553 (_ BitVec 32))) )
))
(declare-fun lt!518241 () array!74738)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74738 (_ BitVec 32)) Bool)

(assert (=> b!1155236 (= res!767640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!518241 mask!1564))))

(declare-fun _keys!1208 () array!74738)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1155236 (= lt!518241 (array!74739 (store (arr!36016 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36553 _keys!1208)))))

(declare-fun b!1155237 () Bool)

(declare-fun e!657033 () Bool)

(assert (=> b!1155237 (= e!657047 (not e!657033))))

(declare-fun res!767639 () Bool)

(assert (=> b!1155237 (=> res!767639 e!657033)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1155237 (= res!767639 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74738 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1155237 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37939 0))(
  ( (Unit!37940) )
))
(declare-fun lt!518251 () Unit!37939)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74738 (_ BitVec 64) (_ BitVec 32)) Unit!37939)

(assert (=> b!1155237 (= lt!518251 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1155238 () Bool)

(declare-fun res!767637 () Bool)

(assert (=> b!1155238 (=> (not res!767637) (not e!657038))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1155238 (= res!767637 (validKeyInArray!0 k0!934))))

(declare-datatypes ((V!43755 0))(
  ( (V!43756 (val!14542 Int)) )
))
(declare-datatypes ((tuple2!18562 0))(
  ( (tuple2!18563 (_1!9291 (_ BitVec 64)) (_2!9291 V!43755)) )
))
(declare-datatypes ((List!25346 0))(
  ( (Nil!25343) (Cons!25342 (h!26551 tuple2!18562) (t!36786 List!25346)) )
))
(declare-datatypes ((ListLongMap!16543 0))(
  ( (ListLongMap!16544 (toList!8287 List!25346)) )
))
(declare-fun lt!518236 () ListLongMap!16543)

(declare-fun bm!54830 () Bool)

(declare-fun c!114776 () Bool)

(declare-fun call!54833 () ListLongMap!16543)

(declare-fun call!54834 () Bool)

(declare-fun contains!6775 (ListLongMap!16543 (_ BitVec 64)) Bool)

(assert (=> bm!54830 (= call!54834 (contains!6775 (ite c!114776 lt!518236 call!54833) k0!934))))

(declare-fun zeroValue!944 () V!43755)

(declare-fun call!54835 () ListLongMap!16543)

(declare-fun bm!54831 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13776 0))(
  ( (ValueCellFull!13776 (v!17180 V!43755)) (EmptyCell!13776) )
))
(declare-datatypes ((array!74740 0))(
  ( (array!74741 (arr!36017 (Array (_ BitVec 32) ValueCell!13776)) (size!36554 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74740)

(declare-fun minValue!944 () V!43755)

(declare-fun getCurrentListMapNoExtraKeys!4726 (array!74738 array!74740 (_ BitVec 32) (_ BitVec 32) V!43755 V!43755 (_ BitVec 32) Int) ListLongMap!16543)

(assert (=> bm!54831 (= call!54835 (getCurrentListMapNoExtraKeys!4726 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!657040 () Bool)

(declare-fun b!1155239 () Bool)

(assert (=> b!1155239 (= e!657040 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1155240 () Bool)

(declare-fun +!3618 (ListLongMap!16543 tuple2!18562) ListLongMap!16543)

(assert (=> b!1155240 (contains!6775 (+!3618 lt!518236 (tuple2!18563 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!518247 () Unit!37939)

(declare-fun call!54838 () Unit!37939)

(assert (=> b!1155240 (= lt!518247 call!54838)))

(assert (=> b!1155240 call!54834))

(declare-fun call!54837 () ListLongMap!16543)

(assert (=> b!1155240 (= lt!518236 call!54837)))

(declare-fun lt!518234 () ListLongMap!16543)

(declare-fun lt!518233 () Unit!37939)

(declare-fun addStillContains!915 (ListLongMap!16543 (_ BitVec 64) V!43755 (_ BitVec 64)) Unit!37939)

(assert (=> b!1155240 (= lt!518233 (addStillContains!915 lt!518234 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!657045 () Unit!37939)

(assert (=> b!1155240 (= e!657045 lt!518247)))

(declare-fun b!1155241 () Bool)

(declare-fun e!657048 () Bool)

(assert (=> b!1155241 (= e!657033 e!657048)))

(declare-fun res!767648 () Bool)

(assert (=> b!1155241 (=> res!767648 e!657048)))

(assert (=> b!1155241 (= res!767648 (not (= from!1455 i!673)))))

(declare-fun lt!518249 () ListLongMap!16543)

(declare-fun lt!518244 () array!74740)

(assert (=> b!1155241 (= lt!518249 (getCurrentListMapNoExtraKeys!4726 lt!518241 lt!518244 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!518252 () V!43755)

(assert (=> b!1155241 (= lt!518244 (array!74741 (store (arr!36017 _values!996) i!673 (ValueCellFull!13776 lt!518252)) (size!36554 _values!996)))))

(declare-fun dynLambda!2741 (Int (_ BitVec 64)) V!43755)

(assert (=> b!1155241 (= lt!518252 (dynLambda!2741 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!518253 () ListLongMap!16543)

(assert (=> b!1155241 (= lt!518253 (getCurrentListMapNoExtraKeys!4726 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1155242 () Bool)

(declare-fun call!54840 () Bool)

(assert (=> b!1155242 call!54840))

(declare-fun lt!518246 () Unit!37939)

(declare-fun call!54839 () Unit!37939)

(assert (=> b!1155242 (= lt!518246 call!54839)))

(declare-fun e!657039 () Unit!37939)

(assert (=> b!1155242 (= e!657039 lt!518246)))

(declare-fun bm!54832 () Bool)

(assert (=> bm!54832 (= call!54840 call!54834)))

(declare-fun b!1155243 () Bool)

(assert (=> b!1155243 (= e!657032 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!518245 () ListLongMap!16543)

(declare-fun b!1155244 () Bool)

(declare-fun e!657043 () Bool)

(assert (=> b!1155244 (= e!657043 (= lt!518245 (getCurrentListMapNoExtraKeys!4726 lt!518241 lt!518244 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1155245 () Bool)

(declare-fun res!767638 () Bool)

(assert (=> b!1155245 (=> (not res!767638) (not e!657038))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1155245 (= res!767638 (validMask!0 mask!1564))))

(declare-fun b!1155234 () Bool)

(declare-fun e!657044 () Unit!37939)

(declare-fun lt!518238 () Unit!37939)

(assert (=> b!1155234 (= e!657044 lt!518238)))

(assert (=> b!1155234 (= lt!518238 call!54839)))

(assert (=> b!1155234 call!54840))

(declare-fun res!767636 () Bool)

(assert (=> start!98872 (=> (not res!767636) (not e!657038))))

(assert (=> start!98872 (= res!767636 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36553 _keys!1208))))))

(assert (=> start!98872 e!657038))

(declare-fun tp_is_empty!28971 () Bool)

(assert (=> start!98872 tp_is_empty!28971))

(declare-fun array_inv!27442 (array!74738) Bool)

(assert (=> start!98872 (array_inv!27442 _keys!1208)))

(assert (=> start!98872 true))

(assert (=> start!98872 tp!86035))

(declare-fun e!657042 () Bool)

(declare-fun array_inv!27443 (array!74740) Bool)

(assert (=> start!98872 (and (array_inv!27443 _values!996) e!657042)))

(declare-fun b!1155246 () Bool)

(declare-fun Unit!37941 () Unit!37939)

(assert (=> b!1155246 (= e!657039 Unit!37941)))

(declare-fun b!1155247 () Bool)

(declare-fun res!767644 () Bool)

(assert (=> b!1155247 (=> (not res!767644) (not e!657038))))

(assert (=> b!1155247 (= res!767644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!54833 () Bool)

(declare-fun c!114777 () Bool)

(assert (=> bm!54833 (= call!54838 (addStillContains!915 (ite c!114776 lt!518236 lt!518234) (ite c!114776 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114777 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114776 minValue!944 (ite c!114777 zeroValue!944 minValue!944)) k0!934))))

(declare-fun bm!54834 () Bool)

(assert (=> bm!54834 (= call!54839 call!54838)))

(declare-fun b!1155248 () Bool)

(declare-fun res!767642 () Bool)

(assert (=> b!1155248 (=> (not res!767642) (not e!657038))))

(assert (=> b!1155248 (= res!767642 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36553 _keys!1208))))))

(declare-fun call!54836 () ListLongMap!16543)

(declare-fun b!1155249 () Bool)

(declare-fun e!657041 () Bool)

(declare-fun -!1365 (ListLongMap!16543 (_ BitVec 64)) ListLongMap!16543)

(assert (=> b!1155249 (= e!657041 (= call!54836 (-!1365 call!54835 k0!934)))))

(declare-fun mapIsEmpty!45281 () Bool)

(declare-fun mapRes!45281 () Bool)

(assert (=> mapIsEmpty!45281 mapRes!45281))

(declare-fun b!1155250 () Bool)

(declare-fun res!767643 () Bool)

(assert (=> b!1155250 (=> (not res!767643) (not e!657038))))

(assert (=> b!1155250 (= res!767643 (= (select (arr!36016 _keys!1208) i!673) k0!934))))

(declare-fun b!1155251 () Bool)

(declare-fun e!657037 () Bool)

(assert (=> b!1155251 (= e!657048 e!657037)))

(declare-fun res!767647 () Bool)

(assert (=> b!1155251 (=> res!767647 e!657037)))

(assert (=> b!1155251 (= res!767647 (not (= (select (arr!36016 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1155251 e!657041))

(declare-fun c!114780 () Bool)

(assert (=> b!1155251 (= c!114780 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!518248 () Unit!37939)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!596 (array!74738 array!74740 (_ BitVec 32) (_ BitVec 32) V!43755 V!43755 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37939)

(assert (=> b!1155251 (= lt!518248 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!596 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1155252 () Bool)

(declare-fun e!657035 () Bool)

(assert (=> b!1155252 (= e!657042 (and e!657035 mapRes!45281))))

(declare-fun condMapEmpty!45281 () Bool)

(declare-fun mapDefault!45281 () ValueCell!13776)

(assert (=> b!1155252 (= condMapEmpty!45281 (= (arr!36017 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13776)) mapDefault!45281)))))

(declare-fun b!1155253 () Bool)

(declare-fun e!657034 () Bool)

(assert (=> b!1155253 (= e!657034 tp_is_empty!28971)))

(declare-fun b!1155254 () Bool)

(declare-fun res!767646 () Bool)

(assert (=> b!1155254 (=> (not res!767646) (not e!657038))))

(assert (=> b!1155254 (= res!767646 (and (= (size!36554 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36553 _keys!1208) (size!36554 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1155255 () Bool)

(assert (=> b!1155255 (= e!657037 true)))

(assert (=> b!1155255 e!657043))

(declare-fun res!767634 () Bool)

(assert (=> b!1155255 (=> (not res!767634) (not e!657043))))

(assert (=> b!1155255 (= res!767634 (= lt!518245 lt!518234))))

(assert (=> b!1155255 (= lt!518245 (-!1365 lt!518253 k0!934))))

(declare-fun lt!518235 () V!43755)

(assert (=> b!1155255 (= (-!1365 (+!3618 lt!518234 (tuple2!18563 (select (arr!36016 _keys!1208) from!1455) lt!518235)) (select (arr!36016 _keys!1208) from!1455)) lt!518234)))

(declare-fun lt!518237 () Unit!37939)

(declare-fun addThenRemoveForNewKeyIsSame!208 (ListLongMap!16543 (_ BitVec 64) V!43755) Unit!37939)

(assert (=> b!1155255 (= lt!518237 (addThenRemoveForNewKeyIsSame!208 lt!518234 (select (arr!36016 _keys!1208) from!1455) lt!518235))))

(declare-fun get!18376 (ValueCell!13776 V!43755) V!43755)

(assert (=> b!1155255 (= lt!518235 (get!18376 (select (arr!36017 _values!996) from!1455) lt!518252))))

(declare-fun lt!518250 () Unit!37939)

(declare-fun e!657036 () Unit!37939)

(assert (=> b!1155255 (= lt!518250 e!657036)))

(declare-fun c!114778 () Bool)

(assert (=> b!1155255 (= c!114778 (contains!6775 lt!518234 k0!934))))

(assert (=> b!1155255 (= lt!518234 (getCurrentListMapNoExtraKeys!4726 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!54835 () Bool)

(assert (=> bm!54835 (= call!54833 call!54837)))

(declare-fun b!1155256 () Bool)

(assert (=> b!1155256 (= e!657041 (= call!54836 call!54835))))

(declare-fun mapNonEmpty!45281 () Bool)

(declare-fun tp!86034 () Bool)

(assert (=> mapNonEmpty!45281 (= mapRes!45281 (and tp!86034 e!657034))))

(declare-fun mapKey!45281 () (_ BitVec 32))

(declare-fun mapValue!45281 () ValueCell!13776)

(declare-fun mapRest!45281 () (Array (_ BitVec 32) ValueCell!13776))

(assert (=> mapNonEmpty!45281 (= (arr!36017 _values!996) (store mapRest!45281 mapKey!45281 mapValue!45281))))

(declare-fun b!1155257 () Bool)

(declare-fun res!767635 () Bool)

(assert (=> b!1155257 (=> (not res!767635) (not e!657047))))

(declare-datatypes ((List!25347 0))(
  ( (Nil!25344) (Cons!25343 (h!26552 (_ BitVec 64)) (t!36787 List!25347)) )
))
(declare-fun arrayNoDuplicates!0 (array!74738 (_ BitVec 32) List!25347) Bool)

(assert (=> b!1155257 (= res!767635 (arrayNoDuplicates!0 lt!518241 #b00000000000000000000000000000000 Nil!25344))))

(declare-fun b!1155258 () Bool)

(declare-fun res!767645 () Bool)

(assert (=> b!1155258 (=> (not res!767645) (not e!657038))))

(assert (=> b!1155258 (= res!767645 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25344))))

(declare-fun b!1155259 () Bool)

(assert (=> b!1155259 (= e!657035 tp_is_empty!28971)))

(declare-fun bm!54836 () Bool)

(assert (=> bm!54836 (= call!54837 (+!3618 lt!518234 (ite (or c!114776 c!114777) (tuple2!18563 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18563 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1155260 () Bool)

(assert (=> b!1155260 (= c!114777 (and (not lt!518243) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1155260 (= e!657045 e!657044)))

(declare-fun b!1155261 () Bool)

(declare-fun Unit!37942 () Unit!37939)

(assert (=> b!1155261 (= e!657036 Unit!37942)))

(declare-fun bm!54837 () Bool)

(assert (=> bm!54837 (= call!54836 (getCurrentListMapNoExtraKeys!4726 lt!518241 lt!518244 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1155262 () Bool)

(declare-fun Unit!37943 () Unit!37939)

(assert (=> b!1155262 (= e!657036 Unit!37943)))

(assert (=> b!1155262 (= lt!518243 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1155262 (= c!114776 (and (not lt!518243) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!518239 () Unit!37939)

(assert (=> b!1155262 (= lt!518239 e!657045)))

(declare-fun lt!518240 () Unit!37939)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!496 (array!74738 array!74740 (_ BitVec 32) (_ BitVec 32) V!43755 V!43755 (_ BitVec 64) (_ BitVec 32) Int) Unit!37939)

(assert (=> b!1155262 (= lt!518240 (lemmaListMapContainsThenArrayContainsFrom!496 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114775 () Bool)

(assert (=> b!1155262 (= c!114775 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!767641 () Bool)

(assert (=> b!1155262 (= res!767641 e!657032)))

(assert (=> b!1155262 (=> (not res!767641) (not e!657040))))

(assert (=> b!1155262 e!657040))

(declare-fun lt!518232 () Unit!37939)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74738 (_ BitVec 32) (_ BitVec 32)) Unit!37939)

(assert (=> b!1155262 (= lt!518232 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1155262 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25344)))

(declare-fun lt!518242 () Unit!37939)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74738 (_ BitVec 64) (_ BitVec 32) List!25347) Unit!37939)

(assert (=> b!1155262 (= lt!518242 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25344))))

(assert (=> b!1155262 false))

(declare-fun b!1155263 () Bool)

(assert (=> b!1155263 (= e!657044 e!657039)))

(declare-fun c!114779 () Bool)

(assert (=> b!1155263 (= c!114779 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!518243))))

(assert (= (and start!98872 res!767636) b!1155245))

(assert (= (and b!1155245 res!767638) b!1155254))

(assert (= (and b!1155254 res!767646) b!1155247))

(assert (= (and b!1155247 res!767644) b!1155258))

(assert (= (and b!1155258 res!767645) b!1155248))

(assert (= (and b!1155248 res!767642) b!1155238))

(assert (= (and b!1155238 res!767637) b!1155250))

(assert (= (and b!1155250 res!767643) b!1155236))

(assert (= (and b!1155236 res!767640) b!1155257))

(assert (= (and b!1155257 res!767635) b!1155237))

(assert (= (and b!1155237 (not res!767639)) b!1155241))

(assert (= (and b!1155241 (not res!767648)) b!1155251))

(assert (= (and b!1155251 c!114780) b!1155249))

(assert (= (and b!1155251 (not c!114780)) b!1155256))

(assert (= (or b!1155249 b!1155256) bm!54831))

(assert (= (or b!1155249 b!1155256) bm!54837))

(assert (= (and b!1155251 (not res!767647)) b!1155255))

(assert (= (and b!1155255 c!114778) b!1155262))

(assert (= (and b!1155255 (not c!114778)) b!1155261))

(assert (= (and b!1155262 c!114776) b!1155240))

(assert (= (and b!1155262 (not c!114776)) b!1155260))

(assert (= (and b!1155260 c!114777) b!1155234))

(assert (= (and b!1155260 (not c!114777)) b!1155263))

(assert (= (and b!1155263 c!114779) b!1155242))

(assert (= (and b!1155263 (not c!114779)) b!1155246))

(assert (= (or b!1155234 b!1155242) bm!54834))

(assert (= (or b!1155234 b!1155242) bm!54835))

(assert (= (or b!1155234 b!1155242) bm!54832))

(assert (= (or b!1155240 bm!54832) bm!54830))

(assert (= (or b!1155240 bm!54834) bm!54833))

(assert (= (or b!1155240 bm!54835) bm!54836))

(assert (= (and b!1155262 c!114775) b!1155243))

(assert (= (and b!1155262 (not c!114775)) b!1155235))

(assert (= (and b!1155262 res!767641) b!1155239))

(assert (= (and b!1155255 res!767634) b!1155244))

(assert (= (and b!1155252 condMapEmpty!45281) mapIsEmpty!45281))

(assert (= (and b!1155252 (not condMapEmpty!45281)) mapNonEmpty!45281))

(get-info :version)

(assert (= (and mapNonEmpty!45281 ((_ is ValueCellFull!13776) mapValue!45281)) b!1155253))

(assert (= (and b!1155252 ((_ is ValueCellFull!13776) mapDefault!45281)) b!1155259))

(assert (= start!98872 b!1155252))

(declare-fun b_lambda!19565 () Bool)

(assert (=> (not b_lambda!19565) (not b!1155241)))

(declare-fun t!36785 () Bool)

(declare-fun tb!9261 () Bool)

(assert (=> (and start!98872 (= defaultEntry!1004 defaultEntry!1004) t!36785) tb!9261))

(declare-fun result!19079 () Bool)

(assert (=> tb!9261 (= result!19079 tp_is_empty!28971)))

(assert (=> b!1155241 t!36785))

(declare-fun b_and!39747 () Bool)

(assert (= b_and!39745 (and (=> t!36785 result!19079) b_and!39747)))

(declare-fun m!1064903 () Bool)

(assert (=> b!1155262 m!1064903))

(declare-fun m!1064905 () Bool)

(assert (=> b!1155262 m!1064905))

(declare-fun m!1064907 () Bool)

(assert (=> b!1155262 m!1064907))

(declare-fun m!1064909 () Bool)

(assert (=> b!1155262 m!1064909))

(declare-fun m!1064911 () Bool)

(assert (=> b!1155243 m!1064911))

(assert (=> b!1155239 m!1064911))

(declare-fun m!1064913 () Bool)

(assert (=> b!1155236 m!1064913))

(declare-fun m!1064915 () Bool)

(assert (=> b!1155236 m!1064915))

(declare-fun m!1064917 () Bool)

(assert (=> bm!54831 m!1064917))

(declare-fun m!1064919 () Bool)

(assert (=> b!1155244 m!1064919))

(declare-fun m!1064921 () Bool)

(assert (=> b!1155257 m!1064921))

(declare-fun m!1064923 () Bool)

(assert (=> b!1155241 m!1064923))

(declare-fun m!1064925 () Bool)

(assert (=> b!1155241 m!1064925))

(declare-fun m!1064927 () Bool)

(assert (=> b!1155241 m!1064927))

(declare-fun m!1064929 () Bool)

(assert (=> b!1155241 m!1064929))

(declare-fun m!1064931 () Bool)

(assert (=> b!1155237 m!1064931))

(declare-fun m!1064933 () Bool)

(assert (=> b!1155237 m!1064933))

(declare-fun m!1064935 () Bool)

(assert (=> b!1155245 m!1064935))

(declare-fun m!1064937 () Bool)

(assert (=> mapNonEmpty!45281 m!1064937))

(declare-fun m!1064939 () Bool)

(assert (=> start!98872 m!1064939))

(declare-fun m!1064941 () Bool)

(assert (=> start!98872 m!1064941))

(declare-fun m!1064943 () Bool)

(assert (=> b!1155249 m!1064943))

(declare-fun m!1064945 () Bool)

(assert (=> b!1155240 m!1064945))

(assert (=> b!1155240 m!1064945))

(declare-fun m!1064947 () Bool)

(assert (=> b!1155240 m!1064947))

(declare-fun m!1064949 () Bool)

(assert (=> b!1155240 m!1064949))

(declare-fun m!1064951 () Bool)

(assert (=> b!1155247 m!1064951))

(declare-fun m!1064953 () Bool)

(assert (=> b!1155255 m!1064953))

(declare-fun m!1064955 () Bool)

(assert (=> b!1155255 m!1064955))

(declare-fun m!1064957 () Bool)

(assert (=> b!1155255 m!1064957))

(assert (=> b!1155255 m!1064953))

(declare-fun m!1064959 () Bool)

(assert (=> b!1155255 m!1064959))

(declare-fun m!1064961 () Bool)

(assert (=> b!1155255 m!1064961))

(declare-fun m!1064963 () Bool)

(assert (=> b!1155255 m!1064963))

(assert (=> b!1155255 m!1064957))

(assert (=> b!1155255 m!1064953))

(declare-fun m!1064965 () Bool)

(assert (=> b!1155255 m!1064965))

(assert (=> b!1155255 m!1064917))

(assert (=> b!1155255 m!1064961))

(declare-fun m!1064967 () Bool)

(assert (=> b!1155255 m!1064967))

(declare-fun m!1064969 () Bool)

(assert (=> b!1155238 m!1064969))

(declare-fun m!1064971 () Bool)

(assert (=> b!1155258 m!1064971))

(declare-fun m!1064973 () Bool)

(assert (=> bm!54830 m!1064973))

(assert (=> b!1155251 m!1064953))

(declare-fun m!1064975 () Bool)

(assert (=> b!1155251 m!1064975))

(assert (=> bm!54837 m!1064919))

(declare-fun m!1064977 () Bool)

(assert (=> b!1155250 m!1064977))

(declare-fun m!1064979 () Bool)

(assert (=> bm!54836 m!1064979))

(declare-fun m!1064981 () Bool)

(assert (=> bm!54833 m!1064981))

(check-sat (not b_lambda!19565) (not b!1155244) (not b!1155251) (not mapNonEmpty!45281) tp_is_empty!28971 (not bm!54837) (not b!1155241) (not b!1155239) (not b!1155238) (not b!1155240) (not b!1155247) (not b!1155236) (not b_next!24441) (not bm!54830) (not bm!54831) (not b!1155255) (not b!1155243) (not b!1155257) (not b!1155245) b_and!39747 (not start!98872) (not b!1155262) (not b!1155249) (not bm!54836) (not b!1155237) (not bm!54833) (not b!1155258))
(check-sat b_and!39747 (not b_next!24441))

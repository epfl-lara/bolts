; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98516 () Bool)

(assert start!98516)

(declare-fun b_free!24085 () Bool)

(declare-fun b_next!24085 () Bool)

(assert (=> start!98516 (= b_free!24085 (not b_next!24085))))

(declare-fun tp!84966 () Bool)

(declare-fun b_and!39033 () Bool)

(assert (=> start!98516 (= tp!84966 b_and!39033)))

(declare-datatypes ((V!43281 0))(
  ( (V!43282 (val!14364 Int)) )
))
(declare-datatypes ((tuple2!18242 0))(
  ( (tuple2!18243 (_1!9131 (_ BitVec 64)) (_2!9131 V!43281)) )
))
(declare-datatypes ((List!25046 0))(
  ( (Nil!25043) (Cons!25042 (h!26251 tuple2!18242) (t!36130 List!25046)) )
))
(declare-datatypes ((ListLongMap!16223 0))(
  ( (ListLongMap!16224 (toList!8127 List!25046)) )
))
(declare-fun call!50562 () ListLongMap!16223)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1139027 () Bool)

(declare-fun e!648135 () Bool)

(declare-fun call!50564 () ListLongMap!16223)

(declare-fun -!1230 (ListLongMap!16223 (_ BitVec 64)) ListLongMap!16223)

(assert (=> b!1139027 (= e!648135 (= call!50564 (-!1230 call!50562 k!934)))))

(declare-datatypes ((array!74048 0))(
  ( (array!74049 (arr!35671 (Array (_ BitVec 32) (_ BitVec 64))) (size!36208 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74048)

(declare-fun b!1139028 () Bool)

(declare-fun e!648125 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!74048 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1139028 (= e!648125 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1139029 () Bool)

(declare-fun res!759800 () Bool)

(declare-fun e!648132 () Bool)

(assert (=> b!1139029 (=> (not res!759800) (not e!648132))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1139029 (= res!759800 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36208 _keys!1208))))))

(declare-fun b!1139030 () Bool)

(declare-datatypes ((Unit!37275 0))(
  ( (Unit!37276) )
))
(declare-fun e!648123 () Unit!37275)

(declare-fun Unit!37277 () Unit!37275)

(assert (=> b!1139030 (= e!648123 Unit!37277)))

(declare-fun b!1139031 () Bool)

(declare-fun e!648127 () Bool)

(declare-fun e!648137 () Bool)

(assert (=> b!1139031 (= e!648127 (not e!648137))))

(declare-fun res!759799 () Bool)

(assert (=> b!1139031 (=> res!759799 e!648137)))

(assert (=> b!1139031 (= res!759799 (bvsgt from!1455 i!673))))

(assert (=> b!1139031 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!506832 () Unit!37275)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74048 (_ BitVec 64) (_ BitVec 32)) Unit!37275)

(assert (=> b!1139031 (= lt!506832 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1139032 () Bool)

(assert (=> b!1139032 (= e!648132 e!648127)))

(declare-fun res!759798 () Bool)

(assert (=> b!1139032 (=> (not res!759798) (not e!648127))))

(declare-fun lt!506842 () array!74048)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74048 (_ BitVec 32)) Bool)

(assert (=> b!1139032 (= res!759798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!506842 mask!1564))))

(assert (=> b!1139032 (= lt!506842 (array!74049 (store (arr!35671 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36208 _keys!1208)))))

(declare-fun lt!506846 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun b!1139033 () Bool)

(declare-fun e!648131 () Bool)

(assert (=> b!1139033 (= e!648131 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!506846) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!50558 () Bool)

(declare-fun call!50567 () Unit!37275)

(declare-fun call!50566 () Unit!37275)

(assert (=> bm!50558 (= call!50567 call!50566)))

(declare-fun mapNonEmpty!44747 () Bool)

(declare-fun mapRes!44747 () Bool)

(declare-fun tp!84967 () Bool)

(declare-fun e!648130 () Bool)

(assert (=> mapNonEmpty!44747 (= mapRes!44747 (and tp!84967 e!648130))))

(declare-fun mapKey!44747 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13598 0))(
  ( (ValueCellFull!13598 (v!17002 V!43281)) (EmptyCell!13598) )
))
(declare-fun mapValue!44747 () ValueCell!13598)

(declare-datatypes ((array!74050 0))(
  ( (array!74051 (arr!35672 (Array (_ BitVec 32) ValueCell!13598)) (size!36209 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74050)

(declare-fun mapRest!44747 () (Array (_ BitVec 32) ValueCell!13598))

(assert (=> mapNonEmpty!44747 (= (arr!35672 _values!996) (store mapRest!44747 mapKey!44747 mapValue!44747))))

(declare-fun res!759797 () Bool)

(assert (=> start!98516 (=> (not res!759797) (not e!648132))))

(assert (=> start!98516 (= res!759797 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36208 _keys!1208))))))

(assert (=> start!98516 e!648132))

(declare-fun tp_is_empty!28615 () Bool)

(assert (=> start!98516 tp_is_empty!28615))

(declare-fun array_inv!27220 (array!74048) Bool)

(assert (=> start!98516 (array_inv!27220 _keys!1208)))

(assert (=> start!98516 true))

(assert (=> start!98516 tp!84966))

(declare-fun e!648129 () Bool)

(declare-fun array_inv!27221 (array!74050) Bool)

(assert (=> start!98516 (and (array_inv!27221 _values!996) e!648129)))

(declare-fun b!1139034 () Bool)

(declare-fun res!759805 () Bool)

(assert (=> b!1139034 (=> (not res!759805) (not e!648132))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1139034 (= res!759805 (validKeyInArray!0 k!934))))

(declare-fun zeroValue!944 () V!43281)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43281)

(declare-fun bm!50559 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4574 (array!74048 array!74050 (_ BitVec 32) (_ BitVec 32) V!43281 V!43281 (_ BitVec 32) Int) ListLongMap!16223)

(assert (=> bm!50559 (= call!50562 (getCurrentListMapNoExtraKeys!4574 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139035 () Bool)

(declare-fun res!759802 () Bool)

(assert (=> b!1139035 (=> (not res!759802) (not e!648132))))

(declare-datatypes ((List!25047 0))(
  ( (Nil!25044) (Cons!25043 (h!26252 (_ BitVec 64)) (t!36131 List!25047)) )
))
(declare-fun arrayNoDuplicates!0 (array!74048 (_ BitVec 32) List!25047) Bool)

(assert (=> b!1139035 (= res!759802 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25044))))

(declare-fun c!111575 () Bool)

(declare-fun call!50565 () ListLongMap!16223)

(declare-fun bm!50560 () Bool)

(declare-fun lt!506841 () ListLongMap!16223)

(declare-fun c!111571 () Bool)

(declare-fun +!3477 (ListLongMap!16223 tuple2!18242) ListLongMap!16223)

(assert (=> bm!50560 (= call!50565 (+!3477 lt!506841 (ite (or c!111575 c!111571) (tuple2!18243 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18243 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1139036 () Bool)

(declare-fun e!648126 () Unit!37275)

(declare-fun Unit!37278 () Unit!37275)

(assert (=> b!1139036 (= e!648126 Unit!37278)))

(assert (=> b!1139036 (= lt!506846 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1139036 (= c!111575 (and (not lt!506846) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!506830 () Unit!37275)

(declare-fun e!648138 () Unit!37275)

(assert (=> b!1139036 (= lt!506830 e!648138)))

(declare-fun lt!506835 () Unit!37275)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!380 (array!74048 array!74050 (_ BitVec 32) (_ BitVec 32) V!43281 V!43281 (_ BitVec 64) (_ BitVec 32) Int) Unit!37275)

(assert (=> b!1139036 (= lt!506835 (lemmaListMapContainsThenArrayContainsFrom!380 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111576 () Bool)

(assert (=> b!1139036 (= c!111576 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!759806 () Bool)

(assert (=> b!1139036 (= res!759806 e!648131)))

(assert (=> b!1139036 (=> (not res!759806) (not e!648125))))

(assert (=> b!1139036 e!648125))

(declare-fun lt!506837 () Unit!37275)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74048 (_ BitVec 32) (_ BitVec 32)) Unit!37275)

(assert (=> b!1139036 (= lt!506837 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1139036 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25044)))

(declare-fun lt!506829 () Unit!37275)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74048 (_ BitVec 64) (_ BitVec 32) List!25047) Unit!37275)

(assert (=> b!1139036 (= lt!506829 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25044))))

(assert (=> b!1139036 false))

(declare-fun lt!506839 () array!74050)

(declare-fun bm!50561 () Bool)

(assert (=> bm!50561 (= call!50564 (getCurrentListMapNoExtraKeys!4574 lt!506842 lt!506839 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50562 () Bool)

(declare-fun call!50561 () ListLongMap!16223)

(assert (=> bm!50562 (= call!50561 call!50565)))

(declare-fun b!1139037 () Bool)

(declare-fun res!759801 () Bool)

(assert (=> b!1139037 (=> (not res!759801) (not e!648132))))

(assert (=> b!1139037 (= res!759801 (and (= (size!36209 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36208 _keys!1208) (size!36209 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1139038 () Bool)

(assert (=> b!1139038 (= c!111571 (and (not lt!506846) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!648133 () Unit!37275)

(assert (=> b!1139038 (= e!648138 e!648133)))

(declare-fun bm!50563 () Bool)

(declare-fun lt!506833 () ListLongMap!16223)

(declare-fun addStillContains!778 (ListLongMap!16223 (_ BitVec 64) V!43281 (_ BitVec 64)) Unit!37275)

(assert (=> bm!50563 (= call!50566 (addStillContains!778 (ite c!111575 lt!506833 lt!506841) (ite c!111575 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!111571 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!111575 minValue!944 (ite c!111571 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1139039 () Bool)

(assert (=> b!1139039 (= e!648130 tp_is_empty!28615)))

(declare-fun b!1139040 () Bool)

(declare-fun e!648128 () Bool)

(assert (=> b!1139040 (= e!648129 (and e!648128 mapRes!44747))))

(declare-fun condMapEmpty!44747 () Bool)

(declare-fun mapDefault!44747 () ValueCell!13598)


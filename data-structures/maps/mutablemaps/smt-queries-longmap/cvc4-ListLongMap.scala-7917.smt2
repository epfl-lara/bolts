; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98382 () Bool)

(assert start!98382)

(declare-fun b_free!23951 () Bool)

(declare-fun b_next!23951 () Bool)

(assert (=> start!98382 (= b_free!23951 (not b_next!23951))))

(declare-fun tp!84564 () Bool)

(declare-fun b_and!38765 () Bool)

(assert (=> start!98382 (= tp!84564 b_and!38765)))

(declare-fun b!1132939 () Bool)

(declare-fun e!644838 () Bool)

(declare-fun e!644841 () Bool)

(assert (=> b!1132939 (= e!644838 e!644841)))

(declare-fun res!756619 () Bool)

(assert (=> b!1132939 (=> res!756619 e!644841)))

(declare-datatypes ((array!73784 0))(
  ( (array!73785 (arr!35539 (Array (_ BitVec 32) (_ BitVec 64))) (size!36076 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73784)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1132939 (= res!756619 (not (= (select (arr!35539 _keys!1208) from!1455) k!934)))))

(declare-fun e!644827 () Bool)

(assert (=> b!1132939 e!644827))

(declare-fun c!110485 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1132939 (= c!110485 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43101 0))(
  ( (V!43102 (val!14297 Int)) )
))
(declare-fun zeroValue!944 () V!43101)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13531 0))(
  ( (ValueCellFull!13531 (v!16935 V!43101)) (EmptyCell!13531) )
))
(declare-datatypes ((array!73786 0))(
  ( (array!73787 (arr!35540 (Array (_ BitVec 32) ValueCell!13531)) (size!36077 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73786)

(declare-fun minValue!944 () V!43101)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!37067 0))(
  ( (Unit!37068) )
))
(declare-fun lt!503409 () Unit!37067)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!441 (array!73784 array!73786 (_ BitVec 32) (_ BitVec 32) V!43101 V!43101 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37067)

(assert (=> b!1132939 (= lt!503409 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!441 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48950 () Bool)

(declare-fun call!48954 () Bool)

(declare-fun call!48959 () Bool)

(assert (=> bm!48950 (= call!48954 call!48959)))

(declare-fun mapIsEmpty!44546 () Bool)

(declare-fun mapRes!44546 () Bool)

(assert (=> mapIsEmpty!44546 mapRes!44546))

(declare-fun b!1132940 () Bool)

(declare-fun e!644828 () Bool)

(declare-fun tp_is_empty!28481 () Bool)

(assert (=> b!1132940 (= e!644828 tp_is_empty!28481)))

(declare-fun b!1132941 () Bool)

(declare-fun e!644836 () Unit!37067)

(declare-fun lt!503414 () Unit!37067)

(assert (=> b!1132941 (= e!644836 lt!503414)))

(declare-fun call!48960 () Unit!37067)

(assert (=> b!1132941 (= lt!503414 call!48960)))

(assert (=> b!1132941 call!48954))

(declare-fun b!1132942 () Bool)

(declare-fun e!644832 () Bool)

(assert (=> b!1132942 (= e!644832 tp_is_empty!28481)))

(declare-fun b!1132943 () Bool)

(declare-fun res!756624 () Bool)

(declare-fun e!644834 () Bool)

(assert (=> b!1132943 (=> (not res!756624) (not e!644834))))

(declare-datatypes ((List!24929 0))(
  ( (Nil!24926) (Cons!24925 (h!26134 (_ BitVec 64)) (t!35879 List!24929)) )
))
(declare-fun arrayNoDuplicates!0 (array!73784 (_ BitVec 32) List!24929) Bool)

(assert (=> b!1132943 (= res!756624 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24926))))

(declare-fun b!1132944 () Bool)

(declare-fun e!644839 () Unit!37067)

(declare-fun lt!503405 () Unit!37067)

(assert (=> b!1132944 (= e!644839 lt!503405)))

(declare-fun lt!503401 () Unit!37067)

(declare-fun call!48955 () Unit!37067)

(assert (=> b!1132944 (= lt!503401 call!48955)))

(declare-datatypes ((tuple2!18116 0))(
  ( (tuple2!18117 (_1!9068 (_ BitVec 64)) (_2!9068 V!43101)) )
))
(declare-datatypes ((List!24930 0))(
  ( (Nil!24927) (Cons!24926 (h!26135 tuple2!18116) (t!35880 List!24930)) )
))
(declare-datatypes ((ListLongMap!16097 0))(
  ( (ListLongMap!16098 (toList!8064 List!24930)) )
))
(declare-fun lt!503408 () ListLongMap!16097)

(declare-fun call!48956 () ListLongMap!16097)

(assert (=> b!1132944 (= lt!503408 call!48956)))

(assert (=> b!1132944 call!48959))

(declare-fun addStillContains!724 (ListLongMap!16097 (_ BitVec 64) V!43101 (_ BitVec 64)) Unit!37067)

(assert (=> b!1132944 (= lt!503405 (addStillContains!724 lt!503408 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun contains!6557 (ListLongMap!16097 (_ BitVec 64)) Bool)

(declare-fun +!3426 (ListLongMap!16097 tuple2!18116) ListLongMap!16097)

(assert (=> b!1132944 (contains!6557 (+!3426 lt!503408 (tuple2!18117 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1132945 () Bool)

(declare-fun e!644840 () Bool)

(declare-fun e!644829 () Bool)

(assert (=> b!1132945 (= e!644840 (not e!644829))))

(declare-fun res!756623 () Bool)

(assert (=> b!1132945 (=> res!756623 e!644829)))

(assert (=> b!1132945 (= res!756623 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73784 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1132945 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!503410 () Unit!37067)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73784 (_ BitVec 64) (_ BitVec 32)) Unit!37067)

(assert (=> b!1132945 (= lt!503410 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1132946 () Bool)

(declare-fun res!756621 () Bool)

(assert (=> b!1132946 (=> (not res!756621) (not e!644834))))

(assert (=> b!1132946 (= res!756621 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36076 _keys!1208))))))

(declare-fun b!1132947 () Bool)

(declare-fun res!756625 () Bool)

(assert (=> b!1132947 (=> (not res!756625) (not e!644834))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1132947 (= res!756625 (validMask!0 mask!1564))))

(declare-fun b!1132948 () Bool)

(declare-fun res!756620 () Bool)

(assert (=> b!1132948 (=> (not res!756620) (not e!644834))))

(assert (=> b!1132948 (= res!756620 (and (= (size!36077 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36076 _keys!1208) (size!36077 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1132949 () Bool)

(declare-fun call!48957 () ListLongMap!16097)

(declare-fun call!48953 () ListLongMap!16097)

(declare-fun -!1185 (ListLongMap!16097 (_ BitVec 64)) ListLongMap!16097)

(assert (=> b!1132949 (= e!644827 (= call!48953 (-!1185 call!48957 k!934)))))

(declare-fun lt!503404 () array!73786)

(declare-fun lt!503406 () array!73784)

(declare-fun bm!48951 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4515 (array!73784 array!73786 (_ BitVec 32) (_ BitVec 32) V!43101 V!43101 (_ BitVec 32) Int) ListLongMap!16097)

(assert (=> bm!48951 (= call!48953 (getCurrentListMapNoExtraKeys!4515 lt!503406 lt!503404 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132950 () Bool)

(declare-fun e!644831 () Bool)

(assert (=> b!1132950 (= e!644831 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!756626 () Bool)

(assert (=> start!98382 (=> (not res!756626) (not e!644834))))

(assert (=> start!98382 (= res!756626 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36076 _keys!1208))))))

(assert (=> start!98382 e!644834))

(assert (=> start!98382 tp_is_empty!28481))

(declare-fun array_inv!27126 (array!73784) Bool)

(assert (=> start!98382 (array_inv!27126 _keys!1208)))

(assert (=> start!98382 true))

(assert (=> start!98382 tp!84564))

(declare-fun e!644833 () Bool)

(declare-fun array_inv!27127 (array!73786) Bool)

(assert (=> start!98382 (and (array_inv!27127 _values!996) e!644833)))

(declare-fun e!644830 () Bool)

(declare-fun b!1132951 () Bool)

(assert (=> b!1132951 (= e!644830 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun c!110483 () Bool)

(declare-fun c!110484 () Bool)

(declare-fun lt!503402 () ListLongMap!16097)

(declare-fun bm!48952 () Bool)

(assert (=> bm!48952 (= call!48956 (+!3426 lt!503402 (ite (or c!110483 c!110484) (tuple2!18117 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18117 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1132952 () Bool)

(declare-fun c!110486 () Bool)

(declare-fun lt!503403 () Bool)

(assert (=> b!1132952 (= c!110486 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!503403))))

(declare-fun e!644835 () Unit!37067)

(assert (=> b!1132952 (= e!644835 e!644836)))

(declare-fun call!48958 () ListLongMap!16097)

(declare-fun bm!48953 () Bool)

(assert (=> bm!48953 (= call!48959 (contains!6557 (ite c!110483 lt!503408 call!48958) k!934))))

(declare-fun b!1132953 () Bool)

(declare-fun e!644826 () Bool)

(assert (=> b!1132953 (= e!644841 e!644826)))

(declare-fun res!756618 () Bool)

(assert (=> b!1132953 (=> res!756618 e!644826)))

(assert (=> b!1132953 (= res!756618 (not (contains!6557 lt!503402 k!934)))))

(assert (=> b!1132953 (= lt!503402 (getCurrentListMapNoExtraKeys!4515 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48954 () Bool)

(assert (=> bm!48954 (= call!48957 (getCurrentListMapNoExtraKeys!4515 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132954 () Bool)

(assert (=> b!1132954 (= e!644826 true)))

(assert (=> b!1132954 e!644830))

(declare-fun res!756628 () Bool)

(assert (=> b!1132954 (=> (not res!756628) (not e!644830))))

(assert (=> b!1132954 (= res!756628 e!644831)))

(declare-fun c!110487 () Bool)

(assert (=> b!1132954 (= c!110487 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!503411 () Unit!37067)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!335 (array!73784 array!73786 (_ BitVec 32) (_ BitVec 32) V!43101 V!43101 (_ BitVec 64) (_ BitVec 32) Int) Unit!37067)

(assert (=> b!1132954 (= lt!503411 (lemmaListMapContainsThenArrayContainsFrom!335 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!503413 () Unit!37067)

(assert (=> b!1132954 (= lt!503413 e!644839)))

(assert (=> b!1132954 (= c!110483 (and (not lt!503403) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1132954 (= lt!503403 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1132955 () Bool)

(assert (=> b!1132955 (= e!644839 e!644835)))

(assert (=> b!1132955 (= c!110484 (and (not lt!503403) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!48955 () Bool)

(assert (=> bm!48955 (= call!48958 call!48956)))

(declare-fun b!1132956 () Bool)

(assert (=> b!1132956 (= e!644834 e!644840)))

(declare-fun res!756632 () Bool)

(assert (=> b!1132956 (=> (not res!756632) (not e!644840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73784 (_ BitVec 32)) Bool)

(assert (=> b!1132956 (= res!756632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!503406 mask!1564))))

(assert (=> b!1132956 (= lt!503406 (array!73785 (store (arr!35539 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36076 _keys!1208)))))

(declare-fun b!1132957 () Bool)

(declare-fun res!756622 () Bool)

(assert (=> b!1132957 (=> (not res!756622) (not e!644834))))

(assert (=> b!1132957 (= res!756622 (= (select (arr!35539 _keys!1208) i!673) k!934))))

(declare-fun b!1132958 () Bool)

(assert (=> b!1132958 (= e!644833 (and e!644828 mapRes!44546))))

(declare-fun condMapEmpty!44546 () Bool)

(declare-fun mapDefault!44546 () ValueCell!13531)


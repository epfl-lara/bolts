; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98886 () Bool)

(assert start!98886)

(declare-fun b_free!24455 () Bool)

(declare-fun b_next!24455 () Bool)

(assert (=> start!98886 (= b_free!24455 (not b_next!24455))))

(declare-fun tp!86077 () Bool)

(declare-fun b_and!39773 () Bool)

(assert (=> start!98886 (= tp!86077 b_and!39773)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!657402 () Bool)

(declare-datatypes ((array!74764 0))(
  ( (array!74765 (arr!36029 (Array (_ BitVec 32) (_ BitVec 64))) (size!36566 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74764)

(declare-fun b!1155878 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!74764 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1155878 (= e!657402 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1155879 () Bool)

(declare-datatypes ((Unit!37964 0))(
  ( (Unit!37965) )
))
(declare-fun e!657392 () Unit!37964)

(declare-fun Unit!37966 () Unit!37964)

(assert (=> b!1155879 (= e!657392 Unit!37966)))

(declare-fun lt!518704 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1155879 (= lt!518704 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!114901 () Bool)

(assert (=> b!1155879 (= c!114901 (and (not lt!518704) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!518707 () Unit!37964)

(declare-fun e!657400 () Unit!37964)

(assert (=> b!1155879 (= lt!518707 e!657400)))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((V!43773 0))(
  ( (V!43774 (val!14549 Int)) )
))
(declare-datatypes ((ValueCell!13783 0))(
  ( (ValueCellFull!13783 (v!17187 V!43773)) (EmptyCell!13783) )
))
(declare-datatypes ((array!74766 0))(
  ( (array!74767 (arr!36030 (Array (_ BitVec 32) ValueCell!13783)) (size!36567 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74766)

(declare-fun minValue!944 () V!43773)

(declare-fun lt!518703 () Unit!37964)

(declare-fun zeroValue!944 () V!43773)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!500 (array!74764 array!74766 (_ BitVec 32) (_ BitVec 32) V!43773 V!43773 (_ BitVec 64) (_ BitVec 32) Int) Unit!37964)

(assert (=> b!1155879 (= lt!518703 (lemmaListMapContainsThenArrayContainsFrom!500 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114904 () Bool)

(assert (=> b!1155879 (= c!114904 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!767961 () Bool)

(assert (=> b!1155879 (= res!767961 e!657402)))

(declare-fun e!657398 () Bool)

(assert (=> b!1155879 (=> (not res!767961) (not e!657398))))

(assert (=> b!1155879 e!657398))

(declare-fun lt!518701 () Unit!37964)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74764 (_ BitVec 32) (_ BitVec 32)) Unit!37964)

(assert (=> b!1155879 (= lt!518701 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25357 0))(
  ( (Nil!25354) (Cons!25353 (h!26562 (_ BitVec 64)) (t!36811 List!25357)) )
))
(declare-fun arrayNoDuplicates!0 (array!74764 (_ BitVec 32) List!25357) Bool)

(assert (=> b!1155879 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25354)))

(declare-fun lt!518694 () Unit!37964)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74764 (_ BitVec 64) (_ BitVec 32) List!25357) Unit!37964)

(assert (=> b!1155879 (= lt!518694 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25354))))

(assert (=> b!1155879 false))

(declare-fun b!1155880 () Bool)

(declare-fun e!657390 () Unit!37964)

(declare-fun lt!518695 () Unit!37964)

(assert (=> b!1155880 (= e!657390 lt!518695)))

(declare-fun call!55005 () Unit!37964)

(assert (=> b!1155880 (= lt!518695 call!55005)))

(declare-fun call!55008 () Bool)

(assert (=> b!1155880 call!55008))

(declare-fun b!1155881 () Bool)

(declare-datatypes ((tuple2!18574 0))(
  ( (tuple2!18575 (_1!9297 (_ BitVec 64)) (_2!9297 V!43773)) )
))
(declare-datatypes ((List!25358 0))(
  ( (Nil!25355) (Cons!25354 (h!26563 tuple2!18574) (t!36812 List!25358)) )
))
(declare-datatypes ((ListLongMap!16555 0))(
  ( (ListLongMap!16556 (toList!8293 List!25358)) )
))
(declare-fun lt!518705 () ListLongMap!16555)

(declare-fun contains!6780 (ListLongMap!16555 (_ BitVec 64)) Bool)

(declare-fun +!3624 (ListLongMap!16555 tuple2!18574) ListLongMap!16555)

(assert (=> b!1155881 (contains!6780 (+!3624 lt!518705 (tuple2!18575 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!518710 () Unit!37964)

(declare-fun call!55002 () Unit!37964)

(assert (=> b!1155881 (= lt!518710 call!55002)))

(declare-fun call!55004 () Bool)

(assert (=> b!1155881 call!55004))

(declare-fun call!55007 () ListLongMap!16555)

(assert (=> b!1155881 (= lt!518705 call!55007)))

(declare-fun lt!518715 () Unit!37964)

(declare-fun lt!518702 () ListLongMap!16555)

(declare-fun addStillContains!921 (ListLongMap!16555 (_ BitVec 64) V!43773 (_ BitVec 64)) Unit!37964)

(assert (=> b!1155881 (= lt!518715 (addStillContains!921 lt!518702 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1155881 (= e!657400 lt!518710)))

(declare-fun bm!54998 () Bool)

(declare-fun c!114906 () Bool)

(assert (=> bm!54998 (= call!55002 (addStillContains!921 (ite c!114901 lt!518705 lt!518702) (ite c!114901 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114906 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114901 minValue!944 (ite c!114906 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1155882 () Bool)

(declare-fun res!767960 () Bool)

(declare-fun e!657403 () Bool)

(assert (=> b!1155882 (=> (not res!767960) (not e!657403))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1155882 (= res!767960 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36566 _keys!1208))))))

(declare-fun b!1155883 () Bool)

(declare-fun e!657389 () Bool)

(declare-fun tp_is_empty!28985 () Bool)

(assert (=> b!1155883 (= e!657389 tp_is_empty!28985)))

(declare-fun bm!54999 () Bool)

(declare-fun call!55006 () ListLongMap!16555)

(assert (=> bm!54999 (= call!55004 (contains!6780 (ite c!114901 lt!518705 call!55006) k!934))))

(declare-fun b!1155884 () Bool)

(declare-fun e!657396 () Unit!37964)

(assert (=> b!1155884 (= e!657390 e!657396)))

(declare-fun c!114905 () Bool)

(assert (=> b!1155884 (= c!114905 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!518704))))

(declare-fun call!55001 () ListLongMap!16555)

(declare-fun b!1155885 () Bool)

(declare-fun call!55003 () ListLongMap!16555)

(declare-fun e!657397 () Bool)

(declare-fun -!1370 (ListLongMap!16555 (_ BitVec 64)) ListLongMap!16555)

(assert (=> b!1155885 (= e!657397 (= call!55001 (-!1370 call!55003 k!934)))))

(declare-fun b!1155886 () Bool)

(declare-fun e!657393 () Bool)

(declare-fun e!657395 () Bool)

(assert (=> b!1155886 (= e!657393 (not e!657395))))

(declare-fun res!767959 () Bool)

(assert (=> b!1155886 (=> res!767959 e!657395)))

(assert (=> b!1155886 (= res!767959 (bvsgt from!1455 i!673))))

(assert (=> b!1155886 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!518711 () Unit!37964)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74764 (_ BitVec 64) (_ BitVec 32)) Unit!37964)

(assert (=> b!1155886 (= lt!518711 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1155887 () Bool)

(declare-fun e!657391 () Bool)

(declare-fun e!657405 () Bool)

(declare-fun mapRes!45302 () Bool)

(assert (=> b!1155887 (= e!657391 (and e!657405 mapRes!45302))))

(declare-fun condMapEmpty!45302 () Bool)

(declare-fun mapDefault!45302 () ValueCell!13783)


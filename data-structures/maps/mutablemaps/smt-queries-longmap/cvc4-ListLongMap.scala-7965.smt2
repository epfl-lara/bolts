; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98670 () Bool)

(assert start!98670)

(declare-fun b_free!24239 () Bool)

(declare-fun b_next!24239 () Bool)

(assert (=> start!98670 (= b_free!24239 (not b_next!24239))))

(declare-fun tp!85428 () Bool)

(declare-fun b_and!39341 () Bool)

(assert (=> start!98670 (= tp!85428 b_and!39341)))

(declare-fun b!1145942 () Bool)

(declare-datatypes ((Unit!37554 0))(
  ( (Unit!37555) )
))
(declare-fun e!651886 () Unit!37554)

(declare-fun Unit!37556 () Unit!37554)

(assert (=> b!1145942 (= e!651886 Unit!37556)))

(declare-fun lt!511671 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1145942 (= lt!511671 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!112960 () Bool)

(assert (=> b!1145942 (= c!112960 (and (not lt!511671) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!511680 () Unit!37554)

(declare-fun e!651881 () Unit!37554)

(assert (=> b!1145942 (= lt!511680 e!651881)))

(declare-datatypes ((V!43485 0))(
  ( (V!43486 (val!14441 Int)) )
))
(declare-fun zeroValue!944 () V!43485)

(declare-datatypes ((array!74344 0))(
  ( (array!74345 (arr!35819 (Array (_ BitVec 32) (_ BitVec 64))) (size!36356 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74344)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13675 0))(
  ( (ValueCellFull!13675 (v!17079 V!43485)) (EmptyCell!13675) )
))
(declare-datatypes ((array!74346 0))(
  ( (array!74347 (arr!35820 (Array (_ BitVec 32) ValueCell!13675)) (size!36357 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74346)

(declare-fun minValue!944 () V!43485)

(declare-fun lt!511678 () Unit!37554)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!427 (array!74344 array!74346 (_ BitVec 32) (_ BitVec 32) V!43485 V!43485 (_ BitVec 64) (_ BitVec 32) Int) Unit!37554)

(assert (=> b!1145942 (= lt!511678 (lemmaListMapContainsThenArrayContainsFrom!427 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112962 () Bool)

(assert (=> b!1145942 (= c!112962 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!763089 () Bool)

(declare-fun e!651895 () Bool)

(assert (=> b!1145942 (= res!763089 e!651895)))

(declare-fun e!651882 () Bool)

(assert (=> b!1145942 (=> (not res!763089) (not e!651882))))

(assert (=> b!1145942 e!651882))

(declare-fun lt!511685 () Unit!37554)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74344 (_ BitVec 32) (_ BitVec 32)) Unit!37554)

(assert (=> b!1145942 (= lt!511685 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25174 0))(
  ( (Nil!25171) (Cons!25170 (h!26379 (_ BitVec 64)) (t!36412 List!25174)) )
))
(declare-fun arrayNoDuplicates!0 (array!74344 (_ BitVec 32) List!25174) Bool)

(assert (=> b!1145942 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25171)))

(declare-fun lt!511677 () Unit!37554)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74344 (_ BitVec 64) (_ BitVec 32) List!25174) Unit!37554)

(assert (=> b!1145942 (= lt!511677 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25171))))

(assert (=> b!1145942 false))

(declare-fun c!112961 () Bool)

(declare-datatypes ((tuple2!18376 0))(
  ( (tuple2!18377 (_1!9198 (_ BitVec 64)) (_2!9198 V!43485)) )
))
(declare-datatypes ((List!25175 0))(
  ( (Nil!25172) (Cons!25171 (h!26380 tuple2!18376) (t!36413 List!25175)) )
))
(declare-datatypes ((ListLongMap!16357 0))(
  ( (ListLongMap!16358 (toList!8194 List!25175)) )
))
(declare-fun lt!511674 () ListLongMap!16357)

(declare-fun bm!52406 () Bool)

(declare-fun call!52416 () ListLongMap!16357)

(declare-fun +!3536 (ListLongMap!16357 tuple2!18376) ListLongMap!16357)

(assert (=> bm!52406 (= call!52416 (+!3536 lt!511674 (ite (or c!112960 c!112961) (tuple2!18377 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18377 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1145943 () Bool)

(declare-fun e!651884 () Bool)

(declare-fun tp_is_empty!28769 () Bool)

(assert (=> b!1145943 (= e!651884 tp_is_empty!28769)))

(declare-fun b!1145945 () Bool)

(declare-fun e!651889 () Bool)

(declare-fun e!651896 () Bool)

(assert (=> b!1145945 (= e!651889 e!651896)))

(declare-fun res!763090 () Bool)

(assert (=> b!1145945 (=> res!763090 e!651896)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1145945 (= res!763090 (not (= from!1455 i!673)))))

(declare-fun lt!511682 () array!74346)

(declare-fun lt!511666 () array!74344)

(declare-fun lt!511667 () ListLongMap!16357)

(declare-fun getCurrentListMapNoExtraKeys!4636 (array!74344 array!74346 (_ BitVec 32) (_ BitVec 32) V!43485 V!43485 (_ BitVec 32) Int) ListLongMap!16357)

(assert (=> b!1145945 (= lt!511667 (getCurrentListMapNoExtraKeys!4636 lt!511666 lt!511682 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!511681 () V!43485)

(assert (=> b!1145945 (= lt!511682 (array!74347 (store (arr!35820 _values!996) i!673 (ValueCellFull!13675 lt!511681)) (size!36357 _values!996)))))

(declare-fun dynLambda!2678 (Int (_ BitVec 64)) V!43485)

(assert (=> b!1145945 (= lt!511681 (dynLambda!2678 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!511670 () ListLongMap!16357)

(assert (=> b!1145945 (= lt!511670 (getCurrentListMapNoExtraKeys!4636 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1145946 () Bool)

(declare-fun e!651893 () Bool)

(assert (=> b!1145946 (= e!651893 tp_is_empty!28769)))

(declare-fun b!1145947 () Bool)

(declare-fun arrayContainsKey!0 (array!74344 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1145947 (= e!651895 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1145948 () Bool)

(declare-fun res!763097 () Bool)

(declare-fun e!651887 () Bool)

(assert (=> b!1145948 (=> (not res!763097) (not e!651887))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1145948 (= res!763097 (validKeyInArray!0 k!934))))

(declare-fun b!1145949 () Bool)

(declare-fun e!651888 () Bool)

(assert (=> b!1145949 (= e!651888 (not e!651889))))

(declare-fun res!763102 () Bool)

(assert (=> b!1145949 (=> res!763102 e!651889)))

(assert (=> b!1145949 (= res!763102 (bvsgt from!1455 i!673))))

(assert (=> b!1145949 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!511683 () Unit!37554)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74344 (_ BitVec 64) (_ BitVec 32)) Unit!37554)

(assert (=> b!1145949 (= lt!511683 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1145950 () Bool)

(assert (=> b!1145950 (= e!651895 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!511671) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun call!52412 () Unit!37554)

(declare-fun lt!511669 () ListLongMap!16357)

(declare-fun bm!52407 () Bool)

(declare-fun addStillContains!834 (ListLongMap!16357 (_ BitVec 64) V!43485 (_ BitVec 64)) Unit!37554)

(assert (=> bm!52407 (= call!52412 (addStillContains!834 (ite c!112960 lt!511669 lt!511674) (ite c!112960 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112961 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112960 minValue!944 (ite c!112961 zeroValue!944 minValue!944)) k!934))))

(declare-fun bm!52408 () Bool)

(declare-fun call!52413 () Unit!37554)

(assert (=> bm!52408 (= call!52413 call!52412)))

(declare-fun b!1145951 () Bool)

(declare-fun res!763098 () Bool)

(assert (=> b!1145951 (=> (not res!763098) (not e!651887))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74344 (_ BitVec 32)) Bool)

(assert (=> b!1145951 (= res!763098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!52409 () Bool)

(declare-fun call!52409 () ListLongMap!16357)

(assert (=> bm!52409 (= call!52409 call!52416)))

(declare-fun bm!52410 () Bool)

(declare-fun call!52414 () Bool)

(declare-fun call!52411 () Bool)

(assert (=> bm!52410 (= call!52414 call!52411)))

(declare-fun b!1145952 () Bool)

(declare-fun e!651891 () Bool)

(declare-fun call!52410 () ListLongMap!16357)

(declare-fun call!52415 () ListLongMap!16357)

(assert (=> b!1145952 (= e!651891 (= call!52410 call!52415))))

(declare-fun b!1145953 () Bool)

(declare-fun e!651894 () Bool)

(assert (=> b!1145953 (= e!651896 e!651894)))

(declare-fun res!763094 () Bool)

(assert (=> b!1145953 (=> res!763094 e!651894)))

(assert (=> b!1145953 (= res!763094 (not (= (select (arr!35819 _keys!1208) from!1455) k!934)))))

(assert (=> b!1145953 e!651891))

(declare-fun c!112957 () Bool)

(assert (=> b!1145953 (= c!112957 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!511673 () Unit!37554)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!538 (array!74344 array!74346 (_ BitVec 32) (_ BitVec 32) V!43485 V!43485 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37554)

(assert (=> b!1145953 (= lt!511673 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!538 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145954 () Bool)

(declare-fun e!651892 () Unit!37554)

(declare-fun e!651890 () Unit!37554)

(assert (=> b!1145954 (= e!651892 e!651890)))

(declare-fun c!112959 () Bool)

(assert (=> b!1145954 (= c!112959 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!511671))))

(declare-fun b!1145955 () Bool)

(declare-fun e!651897 () Bool)

(declare-fun mapRes!44978 () Bool)

(assert (=> b!1145955 (= e!651897 (and e!651893 mapRes!44978))))

(declare-fun condMapEmpty!44978 () Bool)

(declare-fun mapDefault!44978 () ValueCell!13675)


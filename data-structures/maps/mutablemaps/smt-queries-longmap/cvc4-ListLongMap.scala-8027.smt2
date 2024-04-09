; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99042 () Bool)

(assert start!99042)

(declare-fun b_free!24611 () Bool)

(declare-fun b_next!24611 () Bool)

(assert (=> start!99042 (= b_free!24611 (not b_next!24611))))

(declare-fun tp!86544 () Bool)

(declare-fun b_and!40085 () Bool)

(assert (=> start!99042 (= tp!86544 b_and!40085)))

(declare-fun b!1163054 () Bool)

(declare-datatypes ((Unit!38276 0))(
  ( (Unit!38277) )
))
(declare-fun e!661373 () Unit!38276)

(declare-fun Unit!38278 () Unit!38276)

(assert (=> b!1163054 (= e!661373 Unit!38278)))

(declare-fun lt!523848 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1163054 (= lt!523848 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!116305 () Bool)

(assert (=> b!1163054 (= c!116305 (and (not lt!523848) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!523853 () Unit!38276)

(declare-fun e!661374 () Unit!38276)

(assert (=> b!1163054 (= lt!523853 e!661374)))

(declare-datatypes ((array!75072 0))(
  ( (array!75073 (arr!36183 (Array (_ BitVec 32) (_ BitVec 64))) (size!36720 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75072)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((V!43981 0))(
  ( (V!43982 (val!14627 Int)) )
))
(declare-datatypes ((ValueCell!13861 0))(
  ( (ValueCellFull!13861 (v!17265 V!43981)) (EmptyCell!13861) )
))
(declare-datatypes ((array!75074 0))(
  ( (array!75075 (arr!36184 (Array (_ BitVec 32) ValueCell!13861)) (size!36721 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75074)

(declare-fun minValue!944 () V!43981)

(declare-fun lt!523861 () Unit!38276)

(declare-fun zeroValue!944 () V!43981)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!556 (array!75072 array!75074 (_ BitVec 32) (_ BitVec 32) V!43981 V!43981 (_ BitVec 64) (_ BitVec 32) Int) Unit!38276)

(assert (=> b!1163054 (= lt!523861 (lemmaListMapContainsThenArrayContainsFrom!556 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116310 () Bool)

(assert (=> b!1163054 (= c!116310 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!771462 () Bool)

(declare-fun e!661380 () Bool)

(assert (=> b!1163054 (= res!771462 e!661380)))

(declare-fun e!661368 () Bool)

(assert (=> b!1163054 (=> (not res!771462) (not e!661368))))

(assert (=> b!1163054 e!661368))

(declare-fun lt!523850 () Unit!38276)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75072 (_ BitVec 32) (_ BitVec 32)) Unit!38276)

(assert (=> b!1163054 (= lt!523850 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25500 0))(
  ( (Nil!25497) (Cons!25496 (h!26705 (_ BitVec 64)) (t!37110 List!25500)) )
))
(declare-fun arrayNoDuplicates!0 (array!75072 (_ BitVec 32) List!25500) Bool)

(assert (=> b!1163054 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25497)))

(declare-fun lt!523860 () Unit!38276)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75072 (_ BitVec 64) (_ BitVec 32) List!25500) Unit!38276)

(assert (=> b!1163054 (= lt!523860 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25497))))

(assert (=> b!1163054 false))

(declare-fun bm!56870 () Bool)

(declare-fun call!56878 () Bool)

(declare-fun call!56875 () Bool)

(assert (=> bm!56870 (= call!56878 call!56875)))

(declare-fun b!1163055 () Bool)

(declare-fun e!661377 () Unit!38276)

(declare-fun e!661378 () Unit!38276)

(assert (=> b!1163055 (= e!661377 e!661378)))

(declare-fun c!116308 () Bool)

(assert (=> b!1163055 (= c!116308 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!523848))))

(declare-fun b!1163056 () Bool)

(declare-fun res!771470 () Bool)

(declare-fun e!661382 () Bool)

(assert (=> b!1163056 (=> (not res!771470) (not e!661382))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1163056 (= res!771470 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36720 _keys!1208))))))

(declare-fun b!1163057 () Bool)

(declare-fun e!661383 () Bool)

(assert (=> b!1163057 (= e!661382 e!661383)))

(declare-fun res!771461 () Bool)

(assert (=> b!1163057 (=> (not res!771461) (not e!661383))))

(declare-fun lt!523852 () array!75072)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75072 (_ BitVec 32)) Bool)

(assert (=> b!1163057 (= res!771461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!523852 mask!1564))))

(assert (=> b!1163057 (= lt!523852 (array!75073 (store (arr!36183 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36720 _keys!1208)))))

(declare-fun b!1163058 () Bool)

(declare-fun Unit!38279 () Unit!38276)

(assert (=> b!1163058 (= e!661378 Unit!38279)))

(declare-fun b!1163059 () Bool)

(declare-fun c!116306 () Bool)

(assert (=> b!1163059 (= c!116306 (and (not lt!523848) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1163059 (= e!661374 e!661377)))

(declare-fun b!1163060 () Bool)

(declare-fun e!661376 () Bool)

(assert (=> b!1163060 (= e!661376 true)))

(declare-fun e!661372 () Bool)

(assert (=> b!1163060 e!661372))

(declare-fun res!771464 () Bool)

(assert (=> b!1163060 (=> (not res!771464) (not e!661372))))

(declare-datatypes ((tuple2!18724 0))(
  ( (tuple2!18725 (_1!9372 (_ BitVec 64)) (_2!9372 V!43981)) )
))
(declare-datatypes ((List!25501 0))(
  ( (Nil!25498) (Cons!25497 (h!26706 tuple2!18724) (t!37111 List!25501)) )
))
(declare-datatypes ((ListLongMap!16705 0))(
  ( (ListLongMap!16706 (toList!8368 List!25501)) )
))
(declare-fun lt!523844 () ListLongMap!16705)

(declare-fun lt!523842 () ListLongMap!16705)

(assert (=> b!1163060 (= res!771464 (= lt!523844 lt!523842))))

(declare-fun lt!523847 () ListLongMap!16705)

(declare-fun -!1435 (ListLongMap!16705 (_ BitVec 64)) ListLongMap!16705)

(assert (=> b!1163060 (= lt!523844 (-!1435 lt!523847 k!934))))

(declare-fun lt!523858 () V!43981)

(declare-fun +!3689 (ListLongMap!16705 tuple2!18724) ListLongMap!16705)

(assert (=> b!1163060 (= (-!1435 (+!3689 lt!523842 (tuple2!18725 (select (arr!36183 _keys!1208) from!1455) lt!523858)) (select (arr!36183 _keys!1208) from!1455)) lt!523842)))

(declare-fun lt!523849 () Unit!38276)

(declare-fun addThenRemoveForNewKeyIsSame!268 (ListLongMap!16705 (_ BitVec 64) V!43981) Unit!38276)

(assert (=> b!1163060 (= lt!523849 (addThenRemoveForNewKeyIsSame!268 lt!523842 (select (arr!36183 _keys!1208) from!1455) lt!523858))))

(declare-fun lt!523845 () V!43981)

(declare-fun get!18492 (ValueCell!13861 V!43981) V!43981)

(assert (=> b!1163060 (= lt!523858 (get!18492 (select (arr!36184 _values!996) from!1455) lt!523845))))

(declare-fun lt!523856 () Unit!38276)

(assert (=> b!1163060 (= lt!523856 e!661373)))

(declare-fun c!116309 () Bool)

(declare-fun contains!6846 (ListLongMap!16705 (_ BitVec 64)) Bool)

(assert (=> b!1163060 (= c!116309 (contains!6846 lt!523842 k!934))))

(declare-fun getCurrentListMapNoExtraKeys!4802 (array!75072 array!75074 (_ BitVec 32) (_ BitVec 32) V!43981 V!43981 (_ BitVec 32) Int) ListLongMap!16705)

(assert (=> b!1163060 (= lt!523842 (getCurrentListMapNoExtraKeys!4802 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1163061 () Bool)

(assert (=> b!1163061 (= e!661380 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!523848) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1163062 () Bool)

(declare-fun e!661369 () Bool)

(declare-fun tp_is_empty!29141 () Bool)

(assert (=> b!1163062 (= e!661369 tp_is_empty!29141)))

(declare-fun b!1163063 () Bool)

(declare-fun e!661379 () Bool)

(declare-fun call!56876 () ListLongMap!16705)

(declare-fun call!56873 () ListLongMap!16705)

(assert (=> b!1163063 (= e!661379 (= call!56876 call!56873))))

(declare-fun call!56877 () Unit!38276)

(declare-fun bm!56871 () Bool)

(declare-fun addStillContains!987 (ListLongMap!16705 (_ BitVec 64) V!43981 (_ BitVec 64)) Unit!38276)

(assert (=> bm!56871 (= call!56877 (addStillContains!987 lt!523842 (ite (or c!116305 c!116306) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!116305 c!116306) zeroValue!944 minValue!944) k!934))))

(declare-fun bm!56872 () Bool)

(declare-fun call!56879 () Unit!38276)

(assert (=> bm!56872 (= call!56879 call!56877)))

(declare-fun b!1163065 () Bool)

(declare-fun e!661375 () Bool)

(assert (=> b!1163065 (= e!661375 e!661376)))

(declare-fun res!771467 () Bool)

(assert (=> b!1163065 (=> res!771467 e!661376)))

(assert (=> b!1163065 (= res!771467 (not (= (select (arr!36183 _keys!1208) from!1455) k!934)))))

(assert (=> b!1163065 e!661379))

(declare-fun c!116307 () Bool)

(assert (=> b!1163065 (= c!116307 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!523862 () Unit!38276)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!658 (array!75072 array!75074 (_ BitVec 32) (_ BitVec 32) V!43981 V!43981 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38276)

(assert (=> b!1163065 (= lt!523862 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!658 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1163066 () Bool)

(assert (=> b!1163066 call!56878))

(declare-fun lt!523863 () Unit!38276)

(assert (=> b!1163066 (= lt!523863 call!56879)))

(assert (=> b!1163066 (= e!661378 lt!523863)))

(declare-fun b!1163067 () Bool)

(declare-fun res!771463 () Bool)

(assert (=> b!1163067 (=> (not res!771463) (not e!661382))))

(assert (=> b!1163067 (= res!771463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1163068 () Bool)

(declare-fun arrayContainsKey!0 (array!75072 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1163068 (= e!661368 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1163069 () Bool)

(declare-fun e!661371 () Bool)

(declare-fun mapRes!45536 () Bool)

(assert (=> b!1163069 (= e!661371 (and e!661369 mapRes!45536))))

(declare-fun condMapEmpty!45536 () Bool)

(declare-fun mapDefault!45536 () ValueCell!13861)


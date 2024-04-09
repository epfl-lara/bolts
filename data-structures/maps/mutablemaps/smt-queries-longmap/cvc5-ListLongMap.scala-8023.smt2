; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99014 () Bool)

(assert start!99014)

(declare-fun b_free!24583 () Bool)

(declare-fun b_next!24583 () Bool)

(assert (=> start!99014 (= b_free!24583 (not b_next!24583))))

(declare-fun tp!86460 () Bool)

(declare-fun b_and!40029 () Bool)

(assert (=> start!99014 (= tp!86460 b_and!40029)))

(declare-fun b!1161766 () Bool)

(declare-fun call!56542 () Bool)

(assert (=> b!1161766 call!56542))

(declare-datatypes ((Unit!38217 0))(
  ( (Unit!38218) )
))
(declare-fun lt!522929 () Unit!38217)

(declare-fun call!56539 () Unit!38217)

(assert (=> b!1161766 (= lt!522929 call!56539)))

(declare-fun e!660656 () Unit!38217)

(assert (=> b!1161766 (= e!660656 lt!522929)))

(declare-fun b!1161767 () Bool)

(declare-fun e!660657 () Bool)

(declare-fun e!660655 () Bool)

(assert (=> b!1161767 (= e!660657 e!660655)))

(declare-fun res!770835 () Bool)

(assert (=> b!1161767 (=> res!770835 e!660655)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1161767 (= res!770835 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43945 0))(
  ( (V!43946 (val!14613 Int)) )
))
(declare-fun zeroValue!944 () V!43945)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((array!75016 0))(
  ( (array!75017 (arr!36155 (Array (_ BitVec 32) (_ BitVec 64))) (size!36692 (_ BitVec 32))) )
))
(declare-fun lt!522923 () array!75016)

(declare-datatypes ((tuple2!18696 0))(
  ( (tuple2!18697 (_1!9358 (_ BitVec 64)) (_2!9358 V!43945)) )
))
(declare-datatypes ((List!25473 0))(
  ( (Nil!25470) (Cons!25469 (h!26678 tuple2!18696) (t!37055 List!25473)) )
))
(declare-datatypes ((ListLongMap!16677 0))(
  ( (ListLongMap!16678 (toList!8354 List!25473)) )
))
(declare-fun lt!522926 () ListLongMap!16677)

(declare-fun minValue!944 () V!43945)

(declare-datatypes ((ValueCell!13847 0))(
  ( (ValueCellFull!13847 (v!17251 V!43945)) (EmptyCell!13847) )
))
(declare-datatypes ((array!75018 0))(
  ( (array!75019 (arr!36156 (Array (_ BitVec 32) ValueCell!13847)) (size!36693 (_ BitVec 32))) )
))
(declare-fun lt!522939 () array!75018)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4789 (array!75016 array!75018 (_ BitVec 32) (_ BitVec 32) V!43945 V!43945 (_ BitVec 32) Int) ListLongMap!16677)

(assert (=> b!1161767 (= lt!522926 (getCurrentListMapNoExtraKeys!4789 lt!522923 lt!522939 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!522930 () V!43945)

(declare-fun _values!996 () array!75018)

(assert (=> b!1161767 (= lt!522939 (array!75019 (store (arr!36156 _values!996) i!673 (ValueCellFull!13847 lt!522930)) (size!36693 _values!996)))))

(declare-fun dynLambda!2789 (Int (_ BitVec 64)) V!43945)

(assert (=> b!1161767 (= lt!522930 (dynLambda!2789 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!75016)

(declare-fun lt!522933 () ListLongMap!16677)

(assert (=> b!1161767 (= lt!522933 (getCurrentListMapNoExtraKeys!4789 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!56534 () Bool)

(declare-fun lt!522918 () ListLongMap!16677)

(declare-fun call!56543 () ListLongMap!16677)

(declare-fun call!56540 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun c!116056 () Bool)

(declare-fun contains!6833 (ListLongMap!16677 (_ BitVec 64)) Bool)

(assert (=> bm!56534 (= call!56540 (contains!6833 (ite c!116056 lt!522918 call!56543) k!934))))

(declare-fun bm!56535 () Bool)

(declare-fun call!56541 () Unit!38217)

(assert (=> bm!56535 (= call!56539 call!56541)))

(declare-fun b!1161768 () Bool)

(declare-fun e!660668 () Bool)

(declare-fun arrayContainsKey!0 (array!75016 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1161768 (= e!660668 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!56537 () ListLongMap!16677)

(declare-fun e!660667 () Bool)

(declare-fun call!56544 () ListLongMap!16677)

(declare-fun b!1161769 () Bool)

(declare-fun -!1423 (ListLongMap!16677 (_ BitVec 64)) ListLongMap!16677)

(assert (=> b!1161769 (= e!660667 (= call!56544 (-!1423 call!56537 k!934)))))

(declare-fun b!1161770 () Bool)

(declare-fun c!116058 () Bool)

(declare-fun lt!522936 () Bool)

(assert (=> b!1161770 (= c!116058 (and (not lt!522936) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!660669 () Unit!38217)

(declare-fun e!660654 () Unit!38217)

(assert (=> b!1161770 (= e!660669 e!660654)))

(declare-fun b!1161772 () Bool)

(declare-fun e!660658 () Bool)

(declare-fun e!660660 () Bool)

(declare-fun mapRes!45494 () Bool)

(assert (=> b!1161772 (= e!660658 (and e!660660 mapRes!45494))))

(declare-fun condMapEmpty!45494 () Bool)

(declare-fun mapDefault!45494 () ValueCell!13847)


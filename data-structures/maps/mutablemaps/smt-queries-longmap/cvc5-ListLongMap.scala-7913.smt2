; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98258 () Bool)

(assert start!98258)

(declare-fun b_free!23923 () Bool)

(declare-fun b_next!23923 () Bool)

(assert (=> start!98258 (= b_free!23923 (not b_next!23923))))

(declare-fun tp!84473 () Bool)

(declare-fun b_and!38651 () Bool)

(assert (=> start!98258 (= tp!84473 b_and!38651)))

(declare-fun b!1131090 () Bool)

(declare-fun e!643751 () Bool)

(declare-fun e!643754 () Bool)

(assert (=> b!1131090 (= e!643751 e!643754)))

(declare-fun res!755757 () Bool)

(assert (=> b!1131090 (=> res!755757 e!643754)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73724 0))(
  ( (array!73725 (arr!35511 (Array (_ BitVec 32) (_ BitVec 64))) (size!36048 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73724)

(assert (=> b!1131090 (= res!755757 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36048 _keys!1208))))))

(declare-datatypes ((Unit!37007 0))(
  ( (Unit!37008) )
))
(declare-fun lt!502346 () Unit!37007)

(declare-fun e!643756 () Unit!37007)

(assert (=> b!1131090 (= lt!502346 e!643756)))

(declare-fun c!110086 () Bool)

(declare-fun lt!502356 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1131090 (= c!110086 (and (not lt!502356) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1131090 (= lt!502356 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1131091 () Bool)

(declare-fun e!643750 () Bool)

(declare-fun e!643763 () Bool)

(assert (=> b!1131091 (= e!643750 e!643763)))

(declare-fun res!755756 () Bool)

(assert (=> b!1131091 (=> res!755756 e!643763)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1131091 (= res!755756 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43065 0))(
  ( (V!43066 (val!14283 Int)) )
))
(declare-fun zeroValue!944 () V!43065)

(declare-fun lt!502354 () array!73724)

(declare-datatypes ((tuple2!18088 0))(
  ( (tuple2!18089 (_1!9054 (_ BitVec 64)) (_2!9054 V!43065)) )
))
(declare-datatypes ((List!24906 0))(
  ( (Nil!24903) (Cons!24902 (h!26111 tuple2!18088) (t!35828 List!24906)) )
))
(declare-datatypes ((ListLongMap!16069 0))(
  ( (ListLongMap!16070 (toList!8050 List!24906)) )
))
(declare-fun lt!502349 () ListLongMap!16069)

(declare-datatypes ((ValueCell!13517 0))(
  ( (ValueCellFull!13517 (v!16917 V!43065)) (EmptyCell!13517) )
))
(declare-datatypes ((array!73726 0))(
  ( (array!73727 (arr!35512 (Array (_ BitVec 32) ValueCell!13517)) (size!36049 (_ BitVec 32))) )
))
(declare-fun lt!502357 () array!73726)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43065)

(declare-fun getCurrentListMapNoExtraKeys!4502 (array!73724 array!73726 (_ BitVec 32) (_ BitVec 32) V!43065 V!43065 (_ BitVec 32) Int) ListLongMap!16069)

(assert (=> b!1131091 (= lt!502349 (getCurrentListMapNoExtraKeys!4502 lt!502354 lt!502357 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73726)

(declare-fun dynLambda!2576 (Int (_ BitVec 64)) V!43065)

(assert (=> b!1131091 (= lt!502357 (array!73727 (store (arr!35512 _values!996) i!673 (ValueCellFull!13517 (dynLambda!2576 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36049 _values!996)))))

(declare-fun lt!502355 () ListLongMap!16069)

(assert (=> b!1131091 (= lt!502355 (getCurrentListMapNoExtraKeys!4502 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1131092 () Bool)

(declare-fun e!643757 () Bool)

(assert (=> b!1131092 (= e!643763 e!643757)))

(declare-fun res!755750 () Bool)

(assert (=> b!1131092 (=> res!755750 e!643757)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1131092 (= res!755750 (not (= (select (arr!35511 _keys!1208) from!1455) k!934)))))

(declare-fun e!643749 () Bool)

(assert (=> b!1131092 e!643749))

(declare-fun c!110084 () Bool)

(assert (=> b!1131092 (= c!110084 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!502352 () Unit!37007)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!431 (array!73724 array!73726 (_ BitVec 32) (_ BitVec 32) V!43065 V!43065 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37007)

(assert (=> b!1131092 (= lt!502352 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!431 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1131093 () Bool)

(declare-fun e!643761 () Bool)

(declare-fun e!643753 () Bool)

(declare-fun mapRes!44497 () Bool)

(assert (=> b!1131093 (= e!643761 (and e!643753 mapRes!44497))))

(declare-fun condMapEmpty!44497 () Bool)

(declare-fun mapDefault!44497 () ValueCell!13517)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98648 () Bool)

(assert start!98648)

(declare-fun b_free!24217 () Bool)

(declare-fun b_next!24217 () Bool)

(assert (=> start!98648 (= b_free!24217 (not b_next!24217))))

(declare-fun tp!85363 () Bool)

(declare-fun b_and!39297 () Bool)

(assert (=> start!98648 (= tp!85363 b_and!39297)))

(declare-fun mapIsEmpty!44945 () Bool)

(declare-fun mapRes!44945 () Bool)

(assert (=> mapIsEmpty!44945 mapRes!44945))

(declare-fun b!1144930 () Bool)

(declare-fun e!651328 () Bool)

(declare-fun tp_is_empty!28747 () Bool)

(assert (=> b!1144930 (= e!651328 tp_is_empty!28747)))

(declare-datatypes ((V!43457 0))(
  ( (V!43458 (val!14430 Int)) )
))
(declare-fun zeroValue!944 () V!43457)

(declare-datatypes ((tuple2!18358 0))(
  ( (tuple2!18359 (_1!9189 (_ BitVec 64)) (_2!9189 V!43457)) )
))
(declare-datatypes ((List!25158 0))(
  ( (Nil!25155) (Cons!25154 (h!26363 tuple2!18358) (t!36374 List!25158)) )
))
(declare-datatypes ((ListLongMap!16339 0))(
  ( (ListLongMap!16340 (toList!8185 List!25158)) )
))
(declare-fun lt!510982 () ListLongMap!16339)

(declare-fun lt!510991 () ListLongMap!16339)

(declare-fun c!112764 () Bool)

(declare-fun c!112762 () Bool)

(declare-fun minValue!944 () V!43457)

(declare-datatypes ((Unit!37516 0))(
  ( (Unit!37517) )
))
(declare-fun call!52149 () Unit!37516)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun bm!52143 () Bool)

(declare-fun addStillContains!826 (ListLongMap!16339 (_ BitVec 64) V!43457 (_ BitVec 64)) Unit!37516)

(assert (=> bm!52143 (= call!52149 (addStillContains!826 (ite c!112764 lt!510991 lt!510982) (ite c!112764 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112762 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112764 minValue!944 (ite c!112762 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1144931 () Bool)

(declare-fun lt!510981 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1144931 (= c!112762 (and (not lt!510981) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!651329 () Unit!37516)

(declare-fun e!651327 () Unit!37516)

(assert (=> b!1144931 (= e!651329 e!651327)))

(declare-fun b!1144932 () Bool)

(declare-fun e!651326 () Bool)

(declare-fun e!651331 () Bool)

(assert (=> b!1144932 (= e!651326 e!651331)))

(declare-fun res!762598 () Bool)

(assert (=> b!1144932 (=> (not res!762598) (not e!651331))))

(declare-datatypes ((array!74302 0))(
  ( (array!74303 (arr!35798 (Array (_ BitVec 32) (_ BitVec 64))) (size!36335 (_ BitVec 32))) )
))
(declare-fun lt!510976 () array!74302)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74302 (_ BitVec 32)) Bool)

(assert (=> b!1144932 (= res!762598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!510976 mask!1564))))

(declare-fun _keys!1208 () array!74302)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1144932 (= lt!510976 (array!74303 (store (arr!35798 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36335 _keys!1208)))))

(declare-fun bm!52144 () Bool)

(declare-fun call!52152 () Unit!37516)

(assert (=> bm!52144 (= call!52152 call!52149)))

(declare-fun b!1144933 () Bool)

(declare-fun res!762603 () Bool)

(assert (=> b!1144933 (=> (not res!762603) (not e!651326))))

(assert (=> b!1144933 (= res!762603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1144934 () Bool)

(declare-fun e!651333 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!74302 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1144934 (= e!651333 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun call!52145 () ListLongMap!16339)

(declare-datatypes ((ValueCell!13664 0))(
  ( (ValueCellFull!13664 (v!17068 V!43457)) (EmptyCell!13664) )
))
(declare-datatypes ((array!74304 0))(
  ( (array!74305 (arr!35799 (Array (_ BitVec 32) ValueCell!13664)) (size!36336 (_ BitVec 32))) )
))
(declare-fun lt!510973 () array!74304)

(declare-fun bm!52145 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4627 (array!74302 array!74304 (_ BitVec 32) (_ BitVec 32) V!43457 V!43457 (_ BitVec 32) Int) ListLongMap!16339)

(assert (=> bm!52145 (= call!52145 (getCurrentListMapNoExtraKeys!4627 lt!510976 lt!510973 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144935 () Bool)

(declare-fun e!651334 () Unit!37516)

(assert (=> b!1144935 (= e!651327 e!651334)))

(declare-fun c!112759 () Bool)

(assert (=> b!1144935 (= c!112759 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!510981))))

(declare-fun b!1144936 () Bool)

(declare-fun res!762604 () Bool)

(assert (=> b!1144936 (=> (not res!762604) (not e!651326))))

(assert (=> b!1144936 (= res!762604 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36335 _keys!1208))))))

(declare-fun b!1144937 () Bool)

(declare-fun e!651321 () Bool)

(assert (=> b!1144937 (= e!651321 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!762599 () Bool)

(assert (=> start!98648 (=> (not res!762599) (not e!651326))))

(assert (=> start!98648 (= res!762599 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36335 _keys!1208))))))

(assert (=> start!98648 e!651326))

(assert (=> start!98648 tp_is_empty!28747))

(declare-fun array_inv!27308 (array!74302) Bool)

(assert (=> start!98648 (array_inv!27308 _keys!1208)))

(assert (=> start!98648 true))

(assert (=> start!98648 tp!85363))

(declare-fun _values!996 () array!74304)

(declare-fun e!651336 () Bool)

(declare-fun array_inv!27309 (array!74304) Bool)

(assert (=> start!98648 (and (array_inv!27309 _values!996) e!651336)))

(declare-fun bm!52142 () Bool)

(declare-fun call!52150 () ListLongMap!16339)

(declare-fun call!52151 () ListLongMap!16339)

(assert (=> bm!52142 (= call!52150 call!52151)))

(declare-fun b!1144938 () Bool)

(declare-fun e!651323 () Bool)

(declare-fun call!52146 () ListLongMap!16339)

(assert (=> b!1144938 (= e!651323 (= call!52145 call!52146))))

(declare-fun mapNonEmpty!44945 () Bool)

(declare-fun tp!85362 () Bool)

(assert (=> mapNonEmpty!44945 (= mapRes!44945 (and tp!85362 e!651328))))

(declare-fun mapKey!44945 () (_ BitVec 32))

(declare-fun mapRest!44945 () (Array (_ BitVec 32) ValueCell!13664))

(declare-fun mapValue!44945 () ValueCell!13664)

(assert (=> mapNonEmpty!44945 (= (arr!35799 _values!996) (store mapRest!44945 mapKey!44945 mapValue!44945))))

(declare-fun b!1144939 () Bool)

(declare-fun res!762602 () Bool)

(assert (=> b!1144939 (=> (not res!762602) (not e!651326))))

(assert (=> b!1144939 (= res!762602 (= (select (arr!35798 _keys!1208) i!673) k!934))))

(declare-fun b!1144940 () Bool)

(declare-fun Unit!37518 () Unit!37516)

(assert (=> b!1144940 (= e!651334 Unit!37518)))

(declare-fun b!1144941 () Bool)

(declare-fun e!651330 () Unit!37516)

(declare-fun Unit!37519 () Unit!37516)

(assert (=> b!1144941 (= e!651330 Unit!37519)))

(declare-fun b!1144942 () Bool)

(declare-fun e!651320 () Bool)

(assert (=> b!1144942 (= e!651336 (and e!651320 mapRes!44945))))

(declare-fun condMapEmpty!44945 () Bool)

(declare-fun mapDefault!44945 () ValueCell!13664)


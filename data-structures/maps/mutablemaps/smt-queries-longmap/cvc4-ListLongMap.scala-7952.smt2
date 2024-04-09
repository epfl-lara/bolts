; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98592 () Bool)

(assert start!98592)

(declare-fun b_free!24161 () Bool)

(declare-fun b_next!24161 () Bool)

(assert (=> start!98592 (= b_free!24161 (not b_next!24161))))

(declare-fun tp!85194 () Bool)

(declare-fun b_and!39185 () Bool)

(assert (=> start!98592 (= tp!85194 b_and!39185)))

(declare-fun b!1142409 () Bool)

(declare-fun e!649953 () Bool)

(declare-datatypes ((V!43381 0))(
  ( (V!43382 (val!14402 Int)) )
))
(declare-datatypes ((tuple2!18310 0))(
  ( (tuple2!18311 (_1!9165 (_ BitVec 64)) (_2!9165 V!43381)) )
))
(declare-datatypes ((List!25110 0))(
  ( (Nil!25107) (Cons!25106 (h!26315 tuple2!18310) (t!36270 List!25110)) )
))
(declare-datatypes ((ListLongMap!16291 0))(
  ( (ListLongMap!16292 (toList!8161 List!25110)) )
))
(declare-fun call!51475 () ListLongMap!16291)

(declare-fun call!51477 () ListLongMap!16291)

(assert (=> b!1142409 (= e!649953 (= call!51475 call!51477))))

(declare-fun b!1142410 () Bool)

(declare-fun e!649947 () Bool)

(declare-fun tp_is_empty!28691 () Bool)

(assert (=> b!1142410 (= e!649947 tp_is_empty!28691)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1142411 () Bool)

(declare-fun -!1255 (ListLongMap!16291 (_ BitVec 64)) ListLongMap!16291)

(assert (=> b!1142411 (= e!649953 (= call!51475 (-!1255 call!51477 k!934)))))

(declare-fun zeroValue!944 () V!43381)

(declare-datatypes ((ValueCell!13636 0))(
  ( (ValueCellFull!13636 (v!17040 V!43381)) (EmptyCell!13636) )
))
(declare-datatypes ((array!74192 0))(
  ( (array!74193 (arr!35743 (Array (_ BitVec 32) ValueCell!13636)) (size!36280 (_ BitVec 32))) )
))
(declare-fun lt!509219 () array!74192)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!74194 0))(
  ( (array!74195 (arr!35744 (Array (_ BitVec 32) (_ BitVec 64))) (size!36281 (_ BitVec 32))) )
))
(declare-fun lt!509224 () array!74194)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!51470 () Bool)

(declare-fun minValue!944 () V!43381)

(declare-fun getCurrentListMapNoExtraKeys!4604 (array!74194 array!74192 (_ BitVec 32) (_ BitVec 32) V!43381 V!43381 (_ BitVec 32) Int) ListLongMap!16291)

(assert (=> bm!51470 (= call!51475 (getCurrentListMapNoExtraKeys!4604 lt!509224 lt!509219 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142412 () Bool)

(declare-fun e!649948 () Bool)

(assert (=> b!1142412 (= e!649948 true)))

(declare-fun _keys!1208 () array!74194)

(declare-fun lt!509215 () V!43381)

(declare-fun lt!509221 () ListLongMap!16291)

(declare-fun +!3505 (ListLongMap!16291 tuple2!18310) ListLongMap!16291)

(assert (=> b!1142412 (= (-!1255 (+!3505 lt!509221 (tuple2!18311 (select (arr!35744 _keys!1208) from!1455) lt!509215)) (select (arr!35744 _keys!1208) from!1455)) lt!509221)))

(declare-datatypes ((Unit!37404 0))(
  ( (Unit!37405) )
))
(declare-fun lt!509211 () Unit!37404)

(declare-fun addThenRemoveForNewKeyIsSame!110 (ListLongMap!16291 (_ BitVec 64) V!43381) Unit!37404)

(assert (=> b!1142412 (= lt!509211 (addThenRemoveForNewKeyIsSame!110 lt!509221 (select (arr!35744 _keys!1208) from!1455) lt!509215))))

(declare-fun lt!509212 () V!43381)

(declare-fun _values!996 () array!74192)

(declare-fun get!18184 (ValueCell!13636 V!43381) V!43381)

(assert (=> b!1142412 (= lt!509215 (get!18184 (select (arr!35743 _values!996) from!1455) lt!509212))))

(declare-fun lt!509220 () Unit!37404)

(declare-fun e!649951 () Unit!37404)

(assert (=> b!1142412 (= lt!509220 e!649951)))

(declare-fun c!112259 () Bool)

(declare-fun contains!6664 (ListLongMap!16291 (_ BitVec 64)) Bool)

(assert (=> b!1142412 (= c!112259 (contains!6664 lt!509221 k!934))))

(assert (=> b!1142412 (= lt!509221 (getCurrentListMapNoExtraKeys!4604 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!509223 () ListLongMap!16291)

(declare-fun bm!51471 () Bool)

(declare-fun call!51480 () Bool)

(declare-fun c!112257 () Bool)

(declare-fun call!51474 () ListLongMap!16291)

(assert (=> bm!51471 (= call!51480 (contains!6664 (ite c!112257 lt!509223 call!51474) k!934))))

(declare-fun res!761389 () Bool)

(declare-fun e!649954 () Bool)

(assert (=> start!98592 (=> (not res!761389) (not e!649954))))

(assert (=> start!98592 (= res!761389 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36281 _keys!1208))))))

(assert (=> start!98592 e!649954))

(assert (=> start!98592 tp_is_empty!28691))

(declare-fun array_inv!27266 (array!74194) Bool)

(assert (=> start!98592 (array_inv!27266 _keys!1208)))

(assert (=> start!98592 true))

(assert (=> start!98592 tp!85194))

(declare-fun e!649949 () Bool)

(declare-fun array_inv!27267 (array!74192) Bool)

(assert (=> start!98592 (and (array_inv!27267 _values!996) e!649949)))

(declare-fun b!1142413 () Bool)

(declare-fun res!761397 () Bool)

(assert (=> b!1142413 (=> (not res!761397) (not e!649954))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1142413 (= res!761397 (validKeyInArray!0 k!934))))

(declare-fun b!1142414 () Bool)

(declare-fun res!761402 () Bool)

(assert (=> b!1142414 (=> (not res!761402) (not e!649954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1142414 (= res!761402 (validMask!0 mask!1564))))

(declare-fun b!1142415 () Bool)

(declare-fun e!649952 () Unit!37404)

(declare-fun Unit!37406 () Unit!37404)

(assert (=> b!1142415 (= e!649952 Unit!37406)))

(declare-fun b!1142416 () Bool)

(declare-fun e!649958 () Bool)

(assert (=> b!1142416 (= e!649958 tp_is_empty!28691)))

(declare-fun b!1142417 () Bool)

(declare-fun e!649957 () Bool)

(declare-fun e!649962 () Bool)

(assert (=> b!1142417 (= e!649957 e!649962)))

(declare-fun res!761395 () Bool)

(assert (=> b!1142417 (=> res!761395 e!649962)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1142417 (= res!761395 (not (= from!1455 i!673)))))

(declare-fun lt!509227 () ListLongMap!16291)

(assert (=> b!1142417 (= lt!509227 (getCurrentListMapNoExtraKeys!4604 lt!509224 lt!509219 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1142417 (= lt!509219 (array!74193 (store (arr!35743 _values!996) i!673 (ValueCellFull!13636 lt!509212)) (size!36280 _values!996)))))

(declare-fun dynLambda!2653 (Int (_ BitVec 64)) V!43381)

(assert (=> b!1142417 (= lt!509212 (dynLambda!2653 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!509225 () ListLongMap!16291)

(assert (=> b!1142417 (= lt!509225 (getCurrentListMapNoExtraKeys!4604 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!51472 () Bool)

(declare-fun call!51476 () Bool)

(assert (=> bm!51472 (= call!51476 call!51480)))

(declare-fun e!649960 () Bool)

(declare-fun b!1142418 () Bool)

(declare-fun arrayContainsKey!0 (array!74194 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1142418 (= e!649960 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapIsEmpty!44861 () Bool)

(declare-fun mapRes!44861 () Bool)

(assert (=> mapIsEmpty!44861 mapRes!44861))

(declare-fun b!1142419 () Bool)

(declare-fun e!649955 () Unit!37404)

(assert (=> b!1142419 (= e!649955 e!649952)))

(declare-fun c!112258 () Bool)

(declare-fun lt!509229 () Bool)

(assert (=> b!1142419 (= c!112258 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!509229))))

(declare-fun b!1142420 () Bool)

(declare-fun res!761398 () Bool)

(assert (=> b!1142420 (=> (not res!761398) (not e!649954))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74194 (_ BitVec 32)) Bool)

(assert (=> b!1142420 (= res!761398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1142421 () Bool)

(declare-fun e!649950 () Bool)

(assert (=> b!1142421 (= e!649950 (not e!649957))))

(declare-fun res!761390 () Bool)

(assert (=> b!1142421 (=> res!761390 e!649957)))

(assert (=> b!1142421 (= res!761390 (bvsgt from!1455 i!673))))

(assert (=> b!1142421 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!509226 () Unit!37404)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74194 (_ BitVec 64) (_ BitVec 32)) Unit!37404)

(assert (=> b!1142421 (= lt!509226 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1142422 () Bool)

(assert (=> b!1142422 (= e!649949 (and e!649947 mapRes!44861))))

(declare-fun condMapEmpty!44861 () Bool)

(declare-fun mapDefault!44861 () ValueCell!13636)


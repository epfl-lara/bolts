; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97448 () Bool)

(assert start!97448)

(declare-fun b_free!23383 () Bool)

(declare-fun b_next!23383 () Bool)

(assert (=> start!97448 (= b_free!23383 (not b_next!23383))))

(declare-fun tp!82448 () Bool)

(declare-fun b_and!37623 () Bool)

(assert (=> start!97448 (= tp!82448 b_and!37623)))

(declare-fun b!1110943 () Bool)

(declare-datatypes ((V!41985 0))(
  ( (V!41986 (val!13878 Int)) )
))
(declare-datatypes ((tuple2!17622 0))(
  ( (tuple2!17623 (_1!8821 (_ BitVec 64)) (_2!8821 V!41985)) )
))
(declare-datatypes ((List!24357 0))(
  ( (Nil!24354) (Cons!24353 (h!25562 tuple2!17622) (t!34793 List!24357)) )
))
(declare-datatypes ((ListLongMap!15603 0))(
  ( (ListLongMap!15604 (toList!7817 List!24357)) )
))
(declare-fun call!46847 () ListLongMap!15603)

(declare-fun e!633568 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!46846 () ListLongMap!15603)

(declare-fun -!1040 (ListLongMap!15603 (_ BitVec 64)) ListLongMap!15603)

(assert (=> b!1110943 (= e!633568 (= call!46846 (-!1040 call!46847 k!934)))))

(declare-fun b!1110944 () Bool)

(declare-fun res!741450 () Bool)

(declare-fun e!633569 () Bool)

(assert (=> b!1110944 (=> (not res!741450) (not e!633569))))

(declare-datatypes ((array!72150 0))(
  ( (array!72151 (arr!34724 (Array (_ BitVec 32) (_ BitVec 64))) (size!35261 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72150)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1110944 (= res!741450 (= (select (arr!34724 _keys!1208) i!673) k!934))))

(declare-fun b!1110945 () Bool)

(declare-fun res!741449 () Bool)

(assert (=> b!1110945 (=> (not res!741449) (not e!633569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1110945 (= res!741449 (validKeyInArray!0 k!934))))

(declare-fun b!1110946 () Bool)

(declare-fun res!741443 () Bool)

(assert (=> b!1110946 (=> (not res!741443) (not e!633569))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1110946 (= res!741443 (validMask!0 mask!1564))))

(declare-fun res!741453 () Bool)

(assert (=> start!97448 (=> (not res!741453) (not e!633569))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97448 (= res!741453 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35261 _keys!1208))))))

(assert (=> start!97448 e!633569))

(declare-fun tp_is_empty!27643 () Bool)

(assert (=> start!97448 tp_is_empty!27643))

(declare-fun array_inv!26582 (array!72150) Bool)

(assert (=> start!97448 (array_inv!26582 _keys!1208)))

(assert (=> start!97448 true))

(assert (=> start!97448 tp!82448))

(declare-datatypes ((ValueCell!13112 0))(
  ( (ValueCellFull!13112 (v!16512 V!41985)) (EmptyCell!13112) )
))
(declare-datatypes ((array!72152 0))(
  ( (array!72153 (arr!34725 (Array (_ BitVec 32) ValueCell!13112)) (size!35262 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72152)

(declare-fun e!633571 () Bool)

(declare-fun array_inv!26583 (array!72152) Bool)

(assert (=> start!97448 (and (array_inv!26583 _values!996) e!633571)))

(declare-fun b!1110947 () Bool)

(declare-fun e!633574 () Bool)

(assert (=> b!1110947 (= e!633574 true)))

(assert (=> b!1110947 e!633568))

(declare-fun c!109226 () Bool)

(assert (=> b!1110947 (= c!109226 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!41985)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!41985)

(declare-datatypes ((Unit!36375 0))(
  ( (Unit!36376) )
))
(declare-fun lt!496238 () Unit!36375)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!294 (array!72150 array!72152 (_ BitVec 32) (_ BitVec 32) V!41985 V!41985 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36375)

(assert (=> b!1110947 (= lt!496238 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!294 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110948 () Bool)

(declare-fun res!741444 () Bool)

(assert (=> b!1110948 (=> (not res!741444) (not e!633569))))

(declare-datatypes ((List!24358 0))(
  ( (Nil!24355) (Cons!24354 (h!25563 (_ BitVec 64)) (t!34794 List!24358)) )
))
(declare-fun arrayNoDuplicates!0 (array!72150 (_ BitVec 32) List!24358) Bool)

(assert (=> b!1110948 (= res!741444 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24355))))

(declare-fun mapIsEmpty!43282 () Bool)

(declare-fun mapRes!43282 () Bool)

(assert (=> mapIsEmpty!43282 mapRes!43282))

(declare-fun lt!496239 () array!72150)

(declare-fun bm!46843 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4280 (array!72150 array!72152 (_ BitVec 32) (_ BitVec 32) V!41985 V!41985 (_ BitVec 32) Int) ListLongMap!15603)

(declare-fun dynLambda!2402 (Int (_ BitVec 64)) V!41985)

(assert (=> bm!46843 (= call!46846 (getCurrentListMapNoExtraKeys!4280 lt!496239 (array!72153 (store (arr!34725 _values!996) i!673 (ValueCellFull!13112 (dynLambda!2402 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35262 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!46844 () Bool)

(assert (=> bm!46844 (= call!46847 (getCurrentListMapNoExtraKeys!4280 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110949 () Bool)

(assert (=> b!1110949 (= e!633568 (= call!46846 call!46847))))

(declare-fun b!1110950 () Bool)

(declare-fun e!633575 () Bool)

(assert (=> b!1110950 (= e!633571 (and e!633575 mapRes!43282))))

(declare-fun condMapEmpty!43282 () Bool)

(declare-fun mapDefault!43282 () ValueCell!13112)


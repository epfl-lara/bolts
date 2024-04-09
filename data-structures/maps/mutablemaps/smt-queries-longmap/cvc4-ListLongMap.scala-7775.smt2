; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97434 () Bool)

(assert start!97434)

(declare-fun b_free!23369 () Bool)

(declare-fun b_next!23369 () Bool)

(assert (=> start!97434 (= b_free!23369 (not b_next!23369))))

(declare-fun tp!82407 () Bool)

(declare-fun b_and!37595 () Bool)

(assert (=> start!97434 (= tp!82407 b_and!37595)))

(declare-fun b!1110593 () Bool)

(declare-fun e!633400 () Bool)

(declare-fun e!633404 () Bool)

(assert (=> b!1110593 (= e!633400 (not e!633404))))

(declare-fun res!741216 () Bool)

(assert (=> b!1110593 (=> res!741216 e!633404)))

(declare-datatypes ((array!72124 0))(
  ( (array!72125 (arr!34711 (Array (_ BitVec 32) (_ BitVec 64))) (size!35248 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72124)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1110593 (= res!741216 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35248 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72124 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1110593 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36365 0))(
  ( (Unit!36366) )
))
(declare-fun lt!496174 () Unit!36365)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72124 (_ BitVec 64) (_ BitVec 32)) Unit!36365)

(assert (=> b!1110593 (= lt!496174 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1110594 () Bool)

(assert (=> b!1110594 (= e!633404 true)))

(declare-fun e!633402 () Bool)

(assert (=> b!1110594 e!633402))

(declare-fun c!109205 () Bool)

(assert (=> b!1110594 (= c!109205 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!41965 0))(
  ( (V!41966 (val!13871 Int)) )
))
(declare-fun zeroValue!944 () V!41965)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!496176 () Unit!36365)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!41965)

(declare-datatypes ((ValueCell!13105 0))(
  ( (ValueCellFull!13105 (v!16505 V!41965)) (EmptyCell!13105) )
))
(declare-datatypes ((array!72126 0))(
  ( (array!72127 (arr!34712 (Array (_ BitVec 32) ValueCell!13105)) (size!35249 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72126)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!289 (array!72124 array!72126 (_ BitVec 32) (_ BitVec 32) V!41965 V!41965 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36365)

(assert (=> b!1110594 (= lt!496176 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!289 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!43261 () Bool)

(declare-fun mapRes!43261 () Bool)

(assert (=> mapIsEmpty!43261 mapRes!43261))

(declare-fun b!1110595 () Bool)

(declare-fun res!741213 () Bool)

(declare-fun e!633407 () Bool)

(assert (=> b!1110595 (=> (not res!741213) (not e!633407))))

(assert (=> b!1110595 (= res!741213 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35248 _keys!1208))))))

(declare-fun mapNonEmpty!43261 () Bool)

(declare-fun tp!82406 () Bool)

(declare-fun e!633403 () Bool)

(assert (=> mapNonEmpty!43261 (= mapRes!43261 (and tp!82406 e!633403))))

(declare-fun mapRest!43261 () (Array (_ BitVec 32) ValueCell!13105))

(declare-fun mapKey!43261 () (_ BitVec 32))

(declare-fun mapValue!43261 () ValueCell!13105)

(assert (=> mapNonEmpty!43261 (= (arr!34712 _values!996) (store mapRest!43261 mapKey!43261 mapValue!43261))))

(declare-fun b!1110596 () Bool)

(declare-fun res!741222 () Bool)

(assert (=> b!1110596 (=> (not res!741222) (not e!633407))))

(assert (=> b!1110596 (= res!741222 (and (= (size!35249 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35248 _keys!1208) (size!35249 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1110597 () Bool)

(declare-fun e!633406 () Bool)

(declare-fun e!633401 () Bool)

(assert (=> b!1110597 (= e!633406 (and e!633401 mapRes!43261))))

(declare-fun condMapEmpty!43261 () Bool)

(declare-fun mapDefault!43261 () ValueCell!13105)


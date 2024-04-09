; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97472 () Bool)

(assert start!97472)

(declare-fun b_free!23407 () Bool)

(declare-fun b_next!23407 () Bool)

(assert (=> start!97472 (= b_free!23407 (not b_next!23407))))

(declare-fun tp!82520 () Bool)

(declare-fun b_and!37671 () Bool)

(assert (=> start!97472 (= tp!82520 b_and!37671)))

(declare-datatypes ((V!42017 0))(
  ( (V!42018 (val!13890 Int)) )
))
(declare-fun zeroValue!944 () V!42017)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!42017)

(declare-datatypes ((tuple2!17640 0))(
  ( (tuple2!17641 (_1!8830 (_ BitVec 64)) (_2!8830 V!42017)) )
))
(declare-datatypes ((List!24375 0))(
  ( (Nil!24372) (Cons!24371 (h!25580 tuple2!17640) (t!34835 List!24375)) )
))
(declare-datatypes ((ListLongMap!15621 0))(
  ( (ListLongMap!15622 (toList!7826 List!24375)) )
))
(declare-fun call!46919 () ListLongMap!15621)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun bm!46915 () Bool)

(declare-datatypes ((ValueCell!13124 0))(
  ( (ValueCellFull!13124 (v!16524 V!42017)) (EmptyCell!13124) )
))
(declare-datatypes ((array!72196 0))(
  ( (array!72197 (arr!34747 (Array (_ BitVec 32) ValueCell!13124)) (size!35284 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72196)

(declare-datatypes ((array!72198 0))(
  ( (array!72199 (arr!34748 (Array (_ BitVec 32) (_ BitVec 64))) (size!35285 (_ BitVec 32))) )
))
(declare-fun lt!496346 () array!72198)

(declare-fun getCurrentListMapNoExtraKeys!4287 (array!72198 array!72196 (_ BitVec 32) (_ BitVec 32) V!42017 V!42017 (_ BitVec 32) Int) ListLongMap!15621)

(declare-fun dynLambda!2409 (Int (_ BitVec 64)) V!42017)

(assert (=> bm!46915 (= call!46919 (getCurrentListMapNoExtraKeys!4287 lt!496346 (array!72197 (store (arr!34747 _values!996) i!673 (ValueCellFull!13124 (dynLambda!2409 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35284 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1111543 () Bool)

(declare-fun res!741847 () Bool)

(declare-fun e!633856 () Bool)

(assert (=> b!1111543 (=> (not res!741847) (not e!633856))))

(declare-fun _keys!1208 () array!72198)

(assert (=> b!1111543 (= res!741847 (and (= (size!35284 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35285 _keys!1208) (size!35284 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1111544 () Bool)

(declare-fun res!741841 () Bool)

(assert (=> b!1111544 (=> (not res!741841) (not e!633856))))

(declare-datatypes ((List!24376 0))(
  ( (Nil!24373) (Cons!24372 (h!25581 (_ BitVec 64)) (t!34836 List!24376)) )
))
(declare-fun arrayNoDuplicates!0 (array!72198 (_ BitVec 32) List!24376) Bool)

(assert (=> b!1111544 (= res!741841 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24373))))

(declare-fun b!1111545 () Bool)

(declare-fun e!633859 () Bool)

(assert (=> b!1111545 (= e!633859 true)))

(declare-fun e!633860 () Bool)

(assert (=> b!1111545 e!633860))

(declare-fun c!109262 () Bool)

(assert (=> b!1111545 (= c!109262 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36391 0))(
  ( (Unit!36392) )
))
(declare-fun lt!496345 () Unit!36391)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!301 (array!72198 array!72196 (_ BitVec 32) (_ BitVec 32) V!42017 V!42017 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36391)

(assert (=> b!1111545 (= lt!496345 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!301 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1111546 () Bool)

(declare-fun e!633863 () Bool)

(declare-fun tp_is_empty!27667 () Bool)

(assert (=> b!1111546 (= e!633863 tp_is_empty!27667)))

(declare-fun b!1111547 () Bool)

(declare-fun res!741848 () Bool)

(declare-fun e!633858 () Bool)

(assert (=> b!1111547 (=> (not res!741848) (not e!633858))))

(assert (=> b!1111547 (= res!741848 (arrayNoDuplicates!0 lt!496346 #b00000000000000000000000000000000 Nil!24373))))

(declare-fun b!1111548 () Bool)

(declare-fun e!633861 () Bool)

(assert (=> b!1111548 (= e!633861 tp_is_empty!27667)))

(declare-fun b!1111549 () Bool)

(assert (=> b!1111549 (= e!633858 (not e!633859))))

(declare-fun res!741842 () Bool)

(assert (=> b!1111549 (=> res!741842 e!633859)))

(assert (=> b!1111549 (= res!741842 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35285 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72198 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1111549 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!496347 () Unit!36391)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72198 (_ BitVec 64) (_ BitVec 32)) Unit!36391)

(assert (=> b!1111549 (= lt!496347 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1111550 () Bool)

(assert (=> b!1111550 (= e!633856 e!633858)))

(declare-fun res!741839 () Bool)

(assert (=> b!1111550 (=> (not res!741839) (not e!633858))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72198 (_ BitVec 32)) Bool)

(assert (=> b!1111550 (= res!741839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496346 mask!1564))))

(assert (=> b!1111550 (= lt!496346 (array!72199 (store (arr!34748 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35285 _keys!1208)))))

(declare-fun b!1111551 () Bool)

(declare-fun e!633862 () Bool)

(declare-fun mapRes!43318 () Bool)

(assert (=> b!1111551 (= e!633862 (and e!633863 mapRes!43318))))

(declare-fun condMapEmpty!43318 () Bool)

(declare-fun mapDefault!43318 () ValueCell!13124)


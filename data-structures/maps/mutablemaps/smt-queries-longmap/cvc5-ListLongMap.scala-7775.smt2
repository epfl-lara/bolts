; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97430 () Bool)

(assert start!97430)

(declare-fun b_free!23365 () Bool)

(declare-fun b_next!23365 () Bool)

(assert (=> start!97430 (= b_free!23365 (not b_next!23365))))

(declare-fun tp!82394 () Bool)

(declare-fun b_and!37587 () Bool)

(assert (=> start!97430 (= tp!82394 b_and!37587)))

(declare-fun b!1110493 () Bool)

(declare-fun e!633352 () Bool)

(declare-datatypes ((V!41961 0))(
  ( (V!41962 (val!13869 Int)) )
))
(declare-datatypes ((tuple2!17608 0))(
  ( (tuple2!17609 (_1!8814 (_ BitVec 64)) (_2!8814 V!41961)) )
))
(declare-datatypes ((List!24344 0))(
  ( (Nil!24341) (Cons!24340 (h!25549 tuple2!17608) (t!34762 List!24344)) )
))
(declare-datatypes ((ListLongMap!15589 0))(
  ( (ListLongMap!15590 (toList!7810 List!24344)) )
))
(declare-fun call!46793 () ListLongMap!15589)

(declare-fun call!46792 () ListLongMap!15589)

(assert (=> b!1110493 (= e!633352 (= call!46793 call!46792))))

(declare-fun b!1110494 () Bool)

(declare-fun e!633356 () Bool)

(declare-fun tp_is_empty!27625 () Bool)

(assert (=> b!1110494 (= e!633356 tp_is_empty!27625)))

(declare-fun b!1110495 () Bool)

(declare-fun res!741150 () Bool)

(declare-fun e!633358 () Bool)

(assert (=> b!1110495 (=> (not res!741150) (not e!633358))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1110495 (= res!741150 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!43255 () Bool)

(declare-fun mapRes!43255 () Bool)

(assert (=> mapIsEmpty!43255 mapRes!43255))

(declare-fun zeroValue!944 () V!41961)

(declare-datatypes ((array!72116 0))(
  ( (array!72117 (arr!34707 (Array (_ BitVec 32) (_ BitVec 64))) (size!35244 (_ BitVec 32))) )
))
(declare-fun lt!496157 () array!72116)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!46789 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13103 0))(
  ( (ValueCellFull!13103 (v!16503 V!41961)) (EmptyCell!13103) )
))
(declare-datatypes ((array!72118 0))(
  ( (array!72119 (arr!34708 (Array (_ BitVec 32) ValueCell!13103)) (size!35245 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72118)

(declare-fun minValue!944 () V!41961)

(declare-fun getCurrentListMapNoExtraKeys!4273 (array!72116 array!72118 (_ BitVec 32) (_ BitVec 32) V!41961 V!41961 (_ BitVec 32) Int) ListLongMap!15589)

(declare-fun dynLambda!2395 (Int (_ BitVec 64)) V!41961)

(assert (=> bm!46789 (= call!46793 (getCurrentListMapNoExtraKeys!4273 lt!496157 (array!72119 (store (arr!34708 _values!996) i!673 (ValueCellFull!13103 (dynLambda!2395 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35245 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110496 () Bool)

(declare-fun res!741156 () Bool)

(assert (=> b!1110496 (=> (not res!741156) (not e!633358))))

(declare-fun _keys!1208 () array!72116)

(assert (=> b!1110496 (= res!741156 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35244 _keys!1208))))))

(declare-fun b!1110497 () Bool)

(declare-fun e!633353 () Bool)

(assert (=> b!1110497 (= e!633353 true)))

(assert (=> b!1110497 e!633352))

(declare-fun c!109199 () Bool)

(assert (=> b!1110497 (= c!109199 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36361 0))(
  ( (Unit!36362) )
))
(declare-fun lt!496156 () Unit!36361)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!287 (array!72116 array!72118 (_ BitVec 32) (_ BitVec 32) V!41961 V!41961 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36361)

(assert (=> b!1110497 (= lt!496156 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!287 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!43255 () Bool)

(declare-fun tp!82395 () Bool)

(declare-fun e!633355 () Bool)

(assert (=> mapNonEmpty!43255 (= mapRes!43255 (and tp!82395 e!633355))))

(declare-fun mapKey!43255 () (_ BitVec 32))

(declare-fun mapRest!43255 () (Array (_ BitVec 32) ValueCell!13103))

(declare-fun mapValue!43255 () ValueCell!13103)

(assert (=> mapNonEmpty!43255 (= (arr!34708 _values!996) (store mapRest!43255 mapKey!43255 mapValue!43255))))

(declare-fun b!1110498 () Bool)

(declare-fun e!633354 () Bool)

(assert (=> b!1110498 (= e!633354 (not e!633353))))

(declare-fun res!741154 () Bool)

(assert (=> b!1110498 (=> res!741154 e!633353)))

(assert (=> b!1110498 (= res!741154 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35244 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72116 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1110498 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!496158 () Unit!36361)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72116 (_ BitVec 64) (_ BitVec 32)) Unit!36361)

(assert (=> b!1110498 (= lt!496158 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1110499 () Bool)

(assert (=> b!1110499 (= e!633358 e!633354)))

(declare-fun res!741151 () Bool)

(assert (=> b!1110499 (=> (not res!741151) (not e!633354))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72116 (_ BitVec 32)) Bool)

(assert (=> b!1110499 (= res!741151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496157 mask!1564))))

(assert (=> b!1110499 (= lt!496157 (array!72117 (store (arr!34707 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35244 _keys!1208)))))

(declare-fun b!1110500 () Bool)

(declare-fun res!741155 () Bool)

(assert (=> b!1110500 (=> (not res!741155) (not e!633358))))

(assert (=> b!1110500 (= res!741155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1110501 () Bool)

(declare-fun res!741147 () Bool)

(assert (=> b!1110501 (=> (not res!741147) (not e!633358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1110501 (= res!741147 (validMask!0 mask!1564))))

(declare-fun b!1110502 () Bool)

(declare-fun res!741152 () Bool)

(assert (=> b!1110502 (=> (not res!741152) (not e!633358))))

(declare-datatypes ((List!24345 0))(
  ( (Nil!24342) (Cons!24341 (h!25550 (_ BitVec 64)) (t!34763 List!24345)) )
))
(declare-fun arrayNoDuplicates!0 (array!72116 (_ BitVec 32) List!24345) Bool)

(assert (=> b!1110502 (= res!741152 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24342))))

(declare-fun b!1110503 () Bool)

(declare-fun res!741149 () Bool)

(assert (=> b!1110503 (=> (not res!741149) (not e!633358))))

(assert (=> b!1110503 (= res!741149 (= (select (arr!34707 _keys!1208) i!673) k!934))))

(declare-fun b!1110504 () Bool)

(assert (=> b!1110504 (= e!633355 tp_is_empty!27625)))

(declare-fun b!1110505 () Bool)

(declare-fun res!741148 () Bool)

(assert (=> b!1110505 (=> (not res!741148) (not e!633354))))

(assert (=> b!1110505 (= res!741148 (arrayNoDuplicates!0 lt!496157 #b00000000000000000000000000000000 Nil!24342))))

(declare-fun b!1110506 () Bool)

(declare-fun e!633359 () Bool)

(assert (=> b!1110506 (= e!633359 (and e!633356 mapRes!43255))))

(declare-fun condMapEmpty!43255 () Bool)

(declare-fun mapDefault!43255 () ValueCell!13103)


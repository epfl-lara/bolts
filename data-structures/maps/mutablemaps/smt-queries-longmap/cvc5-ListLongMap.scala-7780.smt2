; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97460 () Bool)

(assert start!97460)

(declare-fun b_free!23395 () Bool)

(declare-fun b_next!23395 () Bool)

(assert (=> start!97460 (= b_free!23395 (not b_next!23395))))

(declare-fun tp!82485 () Bool)

(declare-fun b_and!37647 () Bool)

(assert (=> start!97460 (= tp!82485 b_and!37647)))

(declare-fun b!1111243 () Bool)

(declare-fun res!741646 () Bool)

(declare-fun e!633716 () Bool)

(assert (=> b!1111243 (=> (not res!741646) (not e!633716))))

(declare-datatypes ((array!72174 0))(
  ( (array!72175 (arr!34736 (Array (_ BitVec 32) (_ BitVec 64))) (size!35273 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72174)

(declare-datatypes ((List!24367 0))(
  ( (Nil!24364) (Cons!24363 (h!25572 (_ BitVec 64)) (t!34815 List!24367)) )
))
(declare-fun arrayNoDuplicates!0 (array!72174 (_ BitVec 32) List!24367) Bool)

(assert (=> b!1111243 (= res!741646 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24364))))

(declare-fun b!1111244 () Bool)

(declare-fun e!633712 () Bool)

(assert (=> b!1111244 (= e!633712 true)))

(declare-fun e!633713 () Bool)

(assert (=> b!1111244 e!633713))

(declare-fun c!109244 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1111244 (= c!109244 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((V!42001 0))(
  ( (V!42002 (val!13884 Int)) )
))
(declare-datatypes ((ValueCell!13118 0))(
  ( (ValueCellFull!13118 (v!16518 V!42001)) (EmptyCell!13118) )
))
(declare-datatypes ((array!72176 0))(
  ( (array!72177 (arr!34737 (Array (_ BitVec 32) ValueCell!13118)) (size!35274 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72176)

(declare-fun minValue!944 () V!42001)

(declare-fun zeroValue!944 () V!42001)

(declare-datatypes ((Unit!36383 0))(
  ( (Unit!36384) )
))
(declare-fun lt!496291 () Unit!36383)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!297 (array!72174 array!72176 (_ BitVec 32) (_ BitVec 32) V!42001 V!42001 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36383)

(assert (=> b!1111244 (= lt!496291 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!297 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1111245 () Bool)

(declare-fun e!633718 () Bool)

(declare-fun tp_is_empty!27655 () Bool)

(assert (=> b!1111245 (= e!633718 tp_is_empty!27655)))

(declare-fun b!1111246 () Bool)

(declare-fun e!633717 () Bool)

(assert (=> b!1111246 (= e!633717 tp_is_empty!27655)))

(declare-fun b!1111247 () Bool)

(declare-datatypes ((tuple2!17632 0))(
  ( (tuple2!17633 (_1!8826 (_ BitVec 64)) (_2!8826 V!42001)) )
))
(declare-datatypes ((List!24368 0))(
  ( (Nil!24365) (Cons!24364 (h!25573 tuple2!17632) (t!34816 List!24368)) )
))
(declare-datatypes ((ListLongMap!15613 0))(
  ( (ListLongMap!15614 (toList!7822 List!24368)) )
))
(declare-fun call!46882 () ListLongMap!15613)

(declare-fun call!46883 () ListLongMap!15613)

(assert (=> b!1111247 (= e!633713 (= call!46882 call!46883))))

(declare-fun bm!46879 () Bool)

(declare-fun lt!496293 () array!72174)

(declare-fun getCurrentListMapNoExtraKeys!4283 (array!72174 array!72176 (_ BitVec 32) (_ BitVec 32) V!42001 V!42001 (_ BitVec 32) Int) ListLongMap!15613)

(declare-fun dynLambda!2405 (Int (_ BitVec 64)) V!42001)

(assert (=> bm!46879 (= call!46882 (getCurrentListMapNoExtraKeys!4283 lt!496293 (array!72177 (store (arr!34737 _values!996) i!673 (ValueCellFull!13118 (dynLambda!2405 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35274 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1111248 () Bool)

(declare-fun res!741645 () Bool)

(assert (=> b!1111248 (=> (not res!741645) (not e!633716))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1111248 (= res!741645 (validMask!0 mask!1564))))

(declare-fun b!1111249 () Bool)

(declare-fun res!741651 () Bool)

(assert (=> b!1111249 (=> (not res!741651) (not e!633716))))

(assert (=> b!1111249 (= res!741651 (= (select (arr!34736 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!43300 () Bool)

(declare-fun mapRes!43300 () Bool)

(assert (=> mapIsEmpty!43300 mapRes!43300))

(declare-fun b!1111250 () Bool)

(declare-fun e!633715 () Bool)

(assert (=> b!1111250 (= e!633716 e!633715)))

(declare-fun res!741642 () Bool)

(assert (=> b!1111250 (=> (not res!741642) (not e!633715))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72174 (_ BitVec 32)) Bool)

(assert (=> b!1111250 (= res!741642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496293 mask!1564))))

(assert (=> b!1111250 (= lt!496293 (array!72175 (store (arr!34736 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35273 _keys!1208)))))

(declare-fun b!1111251 () Bool)

(declare-fun res!741649 () Bool)

(assert (=> b!1111251 (=> (not res!741649) (not e!633716))))

(assert (=> b!1111251 (= res!741649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1111252 () Bool)

(assert (=> b!1111252 (= e!633715 (not e!633712))))

(declare-fun res!741644 () Bool)

(assert (=> b!1111252 (=> res!741644 e!633712)))

(assert (=> b!1111252 (= res!741644 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35273 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72174 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1111252 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!496292 () Unit!36383)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72174 (_ BitVec 64) (_ BitVec 32)) Unit!36383)

(assert (=> b!1111252 (= lt!496292 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1111253 () Bool)

(declare-fun -!1043 (ListLongMap!15613 (_ BitVec 64)) ListLongMap!15613)

(assert (=> b!1111253 (= e!633713 (= call!46882 (-!1043 call!46883 k!934)))))

(declare-fun mapNonEmpty!43300 () Bool)

(declare-fun tp!82484 () Bool)

(assert (=> mapNonEmpty!43300 (= mapRes!43300 (and tp!82484 e!633717))))

(declare-fun mapKey!43300 () (_ BitVec 32))

(declare-fun mapValue!43300 () ValueCell!13118)

(declare-fun mapRest!43300 () (Array (_ BitVec 32) ValueCell!13118))

(assert (=> mapNonEmpty!43300 (= (arr!34737 _values!996) (store mapRest!43300 mapKey!43300 mapValue!43300))))

(declare-fun b!1111254 () Bool)

(declare-fun e!633719 () Bool)

(assert (=> b!1111254 (= e!633719 (and e!633718 mapRes!43300))))

(declare-fun condMapEmpty!43300 () Bool)

(declare-fun mapDefault!43300 () ValueCell!13118)


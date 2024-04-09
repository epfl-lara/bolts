; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97416 () Bool)

(assert start!97416)

(declare-fun b_free!23351 () Bool)

(declare-fun b_next!23351 () Bool)

(assert (=> start!97416 (= b_free!23351 (not b_next!23351))))

(declare-fun tp!82353 () Bool)

(declare-fun b_and!37559 () Bool)

(assert (=> start!97416 (= tp!82353 b_and!37559)))

(declare-fun mapNonEmpty!43234 () Bool)

(declare-fun mapRes!43234 () Bool)

(declare-fun tp!82352 () Bool)

(declare-fun e!633184 () Bool)

(assert (=> mapNonEmpty!43234 (= mapRes!43234 (and tp!82352 e!633184))))

(declare-datatypes ((V!41941 0))(
  ( (V!41942 (val!13862 Int)) )
))
(declare-datatypes ((ValueCell!13096 0))(
  ( (ValueCellFull!13096 (v!16496 V!41941)) (EmptyCell!13096) )
))
(declare-fun mapRest!43234 () (Array (_ BitVec 32) ValueCell!13096))

(declare-fun mapKey!43234 () (_ BitVec 32))

(declare-fun mapValue!43234 () ValueCell!13096)

(declare-datatypes ((array!72088 0))(
  ( (array!72089 (arr!34693 (Array (_ BitVec 32) ValueCell!13096)) (size!35230 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72088)

(assert (=> mapNonEmpty!43234 (= (arr!34693 _values!996) (store mapRest!43234 mapKey!43234 mapValue!43234))))

(declare-fun b!1110143 () Bool)

(declare-fun res!740920 () Bool)

(declare-fun e!633186 () Bool)

(assert (=> b!1110143 (=> (not res!740920) (not e!633186))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1110143 (= res!740920 (validKeyInArray!0 k!934))))

(declare-fun b!1110144 () Bool)

(declare-fun res!740915 () Bool)

(declare-fun e!633189 () Bool)

(assert (=> b!1110144 (=> (not res!740915) (not e!633189))))

(declare-datatypes ((array!72090 0))(
  ( (array!72091 (arr!34694 (Array (_ BitVec 32) (_ BitVec 64))) (size!35231 (_ BitVec 32))) )
))
(declare-fun lt!496093 () array!72090)

(declare-datatypes ((List!24332 0))(
  ( (Nil!24329) (Cons!24328 (h!25537 (_ BitVec 64)) (t!34736 List!24332)) )
))
(declare-fun arrayNoDuplicates!0 (array!72090 (_ BitVec 32) List!24332) Bool)

(assert (=> b!1110144 (= res!740915 (arrayNoDuplicates!0 lt!496093 #b00000000000000000000000000000000 Nil!24329))))

(declare-fun b!1110145 () Bool)

(declare-fun e!633190 () Bool)

(assert (=> b!1110145 (= e!633190 true)))

(declare-fun e!633185 () Bool)

(assert (=> b!1110145 e!633185))

(declare-fun c!109178 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1110145 (= c!109178 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!41941)

(declare-fun _keys!1208 () array!72090)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!36353 0))(
  ( (Unit!36354) )
))
(declare-fun lt!496095 () Unit!36353)

(declare-fun minValue!944 () V!41941)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!283 (array!72090 array!72088 (_ BitVec 32) (_ BitVec 32) V!41941 V!41941 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36353)

(assert (=> b!1110145 (= lt!496095 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!283 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110146 () Bool)

(declare-fun res!740918 () Bool)

(assert (=> b!1110146 (=> (not res!740918) (not e!633186))))

(assert (=> b!1110146 (= res!740918 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35231 _keys!1208))))))

(declare-fun b!1110147 () Bool)

(declare-datatypes ((tuple2!17596 0))(
  ( (tuple2!17597 (_1!8808 (_ BitVec 64)) (_2!8808 V!41941)) )
))
(declare-datatypes ((List!24333 0))(
  ( (Nil!24330) (Cons!24329 (h!25538 tuple2!17596) (t!34737 List!24333)) )
))
(declare-datatypes ((ListLongMap!15577 0))(
  ( (ListLongMap!15578 (toList!7804 List!24333)) )
))
(declare-fun call!46751 () ListLongMap!15577)

(declare-fun call!46750 () ListLongMap!15577)

(assert (=> b!1110147 (= e!633185 (= call!46751 call!46750))))

(declare-fun b!1110148 () Bool)

(declare-fun res!740916 () Bool)

(assert (=> b!1110148 (=> (not res!740916) (not e!633186))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72090 (_ BitVec 32)) Bool)

(assert (=> b!1110148 (= res!740916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1110149 () Bool)

(assert (=> b!1110149 (= e!633189 (not e!633190))))

(declare-fun res!740923 () Bool)

(assert (=> b!1110149 (=> res!740923 e!633190)))

(assert (=> b!1110149 (= res!740923 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35231 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72090 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1110149 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!496094 () Unit!36353)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72090 (_ BitVec 64) (_ BitVec 32)) Unit!36353)

(assert (=> b!1110149 (= lt!496094 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1110150 () Bool)

(declare-fun res!740922 () Bool)

(assert (=> b!1110150 (=> (not res!740922) (not e!633186))))

(assert (=> b!1110150 (= res!740922 (= (select (arr!34694 _keys!1208) i!673) k!934))))

(declare-fun b!1110151 () Bool)

(declare-fun -!1031 (ListLongMap!15577 (_ BitVec 64)) ListLongMap!15577)

(assert (=> b!1110151 (= e!633185 (= call!46751 (-!1031 call!46750 k!934)))))

(declare-fun b!1110152 () Bool)

(declare-fun res!740917 () Bool)

(assert (=> b!1110152 (=> (not res!740917) (not e!633186))))

(assert (=> b!1110152 (= res!740917 (and (= (size!35230 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35231 _keys!1208) (size!35230 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!46747 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4267 (array!72090 array!72088 (_ BitVec 32) (_ BitVec 32) V!41941 V!41941 (_ BitVec 32) Int) ListLongMap!15577)

(declare-fun dynLambda!2390 (Int (_ BitVec 64)) V!41941)

(assert (=> bm!46747 (= call!46751 (getCurrentListMapNoExtraKeys!4267 lt!496093 (array!72089 (store (arr!34693 _values!996) i!673 (ValueCellFull!13096 (dynLambda!2390 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35230 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!740919 () Bool)

(assert (=> start!97416 (=> (not res!740919) (not e!633186))))

(assert (=> start!97416 (= res!740919 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35231 _keys!1208))))))

(assert (=> start!97416 e!633186))

(declare-fun tp_is_empty!27611 () Bool)

(assert (=> start!97416 tp_is_empty!27611))

(declare-fun array_inv!26562 (array!72090) Bool)

(assert (=> start!97416 (array_inv!26562 _keys!1208)))

(assert (=> start!97416 true))

(assert (=> start!97416 tp!82353))

(declare-fun e!633187 () Bool)

(declare-fun array_inv!26563 (array!72088) Bool)

(assert (=> start!97416 (and (array_inv!26563 _values!996) e!633187)))

(declare-fun b!1110153 () Bool)

(declare-fun e!633191 () Bool)

(assert (=> b!1110153 (= e!633191 tp_is_empty!27611)))

(declare-fun b!1110154 () Bool)

(assert (=> b!1110154 (= e!633186 e!633189)))

(declare-fun res!740925 () Bool)

(assert (=> b!1110154 (=> (not res!740925) (not e!633189))))

(assert (=> b!1110154 (= res!740925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496093 mask!1564))))

(assert (=> b!1110154 (= lt!496093 (array!72091 (store (arr!34694 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35231 _keys!1208)))))

(declare-fun b!1110155 () Bool)

(declare-fun res!740924 () Bool)

(assert (=> b!1110155 (=> (not res!740924) (not e!633186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1110155 (= res!740924 (validMask!0 mask!1564))))

(declare-fun b!1110156 () Bool)

(assert (=> b!1110156 (= e!633184 tp_is_empty!27611)))

(declare-fun b!1110157 () Bool)

(assert (=> b!1110157 (= e!633187 (and e!633191 mapRes!43234))))

(declare-fun condMapEmpty!43234 () Bool)

(declare-fun mapDefault!43234 () ValueCell!13096)


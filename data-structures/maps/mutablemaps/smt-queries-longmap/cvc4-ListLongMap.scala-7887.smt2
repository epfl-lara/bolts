; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98106 () Bool)

(assert start!98106)

(declare-fun b_free!23771 () Bool)

(declare-fun b_next!23771 () Bool)

(assert (=> start!98106 (= b_free!23771 (not b_next!23771))))

(declare-fun tp!84017 () Bool)

(declare-fun b_and!38347 () Bool)

(assert (=> start!98106 (= tp!84017 b_and!38347)))

(declare-fun res!752600 () Bool)

(declare-fun e!641056 () Bool)

(assert (=> start!98106 (=> (not res!752600) (not e!641056))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73424 0))(
  ( (array!73425 (arr!35361 (Array (_ BitVec 32) (_ BitVec 64))) (size!35898 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73424)

(assert (=> start!98106 (= res!752600 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35898 _keys!1208))))))

(assert (=> start!98106 e!641056))

(declare-fun tp_is_empty!28301 () Bool)

(assert (=> start!98106 tp_is_empty!28301))

(declare-fun array_inv!27010 (array!73424) Bool)

(assert (=> start!98106 (array_inv!27010 _keys!1208)))

(assert (=> start!98106 true))

(assert (=> start!98106 tp!84017))

(declare-datatypes ((V!42861 0))(
  ( (V!42862 (val!14207 Int)) )
))
(declare-datatypes ((ValueCell!13441 0))(
  ( (ValueCellFull!13441 (v!16841 V!42861)) (EmptyCell!13441) )
))
(declare-datatypes ((array!73426 0))(
  ( (array!73427 (arr!35362 (Array (_ BitVec 32) ValueCell!13441)) (size!35899 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73426)

(declare-fun e!641063 () Bool)

(declare-fun array_inv!27011 (array!73426) Bool)

(assert (=> start!98106 (and (array_inv!27011 _values!996) e!641063)))

(declare-fun b!1126152 () Bool)

(declare-fun res!752601 () Bool)

(declare-fun e!641061 () Bool)

(assert (=> b!1126152 (=> (not res!752601) (not e!641061))))

(declare-fun lt!500103 () array!73424)

(declare-datatypes ((List!24773 0))(
  ( (Nil!24770) (Cons!24769 (h!25978 (_ BitVec 64)) (t!35543 List!24773)) )
))
(declare-fun arrayNoDuplicates!0 (array!73424 (_ BitVec 32) List!24773) Bool)

(assert (=> b!1126152 (= res!752601 (arrayNoDuplicates!0 lt!500103 #b00000000000000000000000000000000 Nil!24770))))

(declare-fun b!1126153 () Bool)

(assert (=> b!1126153 (= e!641056 e!641061)))

(declare-fun res!752598 () Bool)

(assert (=> b!1126153 (=> (not res!752598) (not e!641061))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73424 (_ BitVec 32)) Bool)

(assert (=> b!1126153 (= res!752598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500103 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1126153 (= lt!500103 (array!73425 (store (arr!35361 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35898 _keys!1208)))))

(declare-fun b!1126154 () Bool)

(declare-fun res!752606 () Bool)

(assert (=> b!1126154 (=> (not res!752606) (not e!641056))))

(assert (=> b!1126154 (= res!752606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1126155 () Bool)

(declare-fun res!752605 () Bool)

(assert (=> b!1126155 (=> (not res!752605) (not e!641056))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1126155 (= res!752605 (validMask!0 mask!1564))))

(declare-fun zeroValue!944 () V!42861)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!17946 0))(
  ( (tuple2!17947 (_1!8983 (_ BitVec 64)) (_2!8983 V!42861)) )
))
(declare-datatypes ((List!24774 0))(
  ( (Nil!24771) (Cons!24770 (h!25979 tuple2!17946) (t!35544 List!24774)) )
))
(declare-datatypes ((ListLongMap!15927 0))(
  ( (ListLongMap!15928 (toList!7979 List!24774)) )
))
(declare-fun call!47596 () ListLongMap!15927)

(declare-fun lt!500106 () array!73426)

(declare-fun minValue!944 () V!42861)

(declare-fun bm!47593 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4438 (array!73424 array!73426 (_ BitVec 32) (_ BitVec 32) V!42861 V!42861 (_ BitVec 32) Int) ListLongMap!15927)

(assert (=> bm!47593 (= call!47596 (getCurrentListMapNoExtraKeys!4438 lt!500103 lt!500106 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126156 () Bool)

(declare-fun res!752595 () Bool)

(assert (=> b!1126156 (=> (not res!752595) (not e!641056))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1126156 (= res!752595 (= (select (arr!35361 _keys!1208) i!673) k!934))))

(declare-fun b!1126157 () Bool)

(declare-fun e!641060 () Bool)

(assert (=> b!1126157 (= e!641061 (not e!641060))))

(declare-fun res!752599 () Bool)

(assert (=> b!1126157 (=> res!752599 e!641060)))

(assert (=> b!1126157 (= res!752599 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73424 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1126157 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36851 0))(
  ( (Unit!36852) )
))
(declare-fun lt!500109 () Unit!36851)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73424 (_ BitVec 64) (_ BitVec 32)) Unit!36851)

(assert (=> b!1126157 (= lt!500109 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun e!641062 () Bool)

(declare-fun b!1126158 () Bool)

(declare-fun call!47597 () ListLongMap!15927)

(declare-fun -!1121 (ListLongMap!15927 (_ BitVec 64)) ListLongMap!15927)

(assert (=> b!1126158 (= e!641062 (= call!47596 (-!1121 call!47597 k!934)))))

(declare-fun bm!47594 () Bool)

(assert (=> bm!47594 (= call!47597 (getCurrentListMapNoExtraKeys!4438 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126159 () Bool)

(declare-fun res!752607 () Bool)

(assert (=> b!1126159 (=> (not res!752607) (not e!641056))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1126159 (= res!752607 (validKeyInArray!0 k!934))))

(declare-fun b!1126160 () Bool)

(declare-fun e!641059 () Bool)

(assert (=> b!1126160 (= e!641059 tp_is_empty!28301)))

(declare-fun b!1126161 () Bool)

(declare-fun e!641058 () Bool)

(assert (=> b!1126161 (= e!641058 true)))

(declare-fun lt!500108 () Bool)

(declare-fun contains!6488 (ListLongMap!15927 (_ BitVec 64)) Bool)

(assert (=> b!1126161 (= lt!500108 (contains!6488 (getCurrentListMapNoExtraKeys!4438 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun mapNonEmpty!44269 () Bool)

(declare-fun mapRes!44269 () Bool)

(declare-fun tp!84018 () Bool)

(assert (=> mapNonEmpty!44269 (= mapRes!44269 (and tp!84018 e!641059))))

(declare-fun mapKey!44269 () (_ BitVec 32))

(declare-fun mapValue!44269 () ValueCell!13441)

(declare-fun mapRest!44269 () (Array (_ BitVec 32) ValueCell!13441))

(assert (=> mapNonEmpty!44269 (= (arr!35362 _values!996) (store mapRest!44269 mapKey!44269 mapValue!44269))))

(declare-fun b!1126162 () Bool)

(declare-fun res!752596 () Bool)

(assert (=> b!1126162 (=> (not res!752596) (not e!641056))))

(assert (=> b!1126162 (= res!752596 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24770))))

(declare-fun b!1126163 () Bool)

(assert (=> b!1126163 (= e!641062 (= call!47596 call!47597))))

(declare-fun b!1126164 () Bool)

(declare-fun e!641055 () Bool)

(assert (=> b!1126164 (= e!641060 e!641055)))

(declare-fun res!752602 () Bool)

(assert (=> b!1126164 (=> res!752602 e!641055)))

(assert (=> b!1126164 (= res!752602 (not (= from!1455 i!673)))))

(declare-fun lt!500104 () ListLongMap!15927)

(assert (=> b!1126164 (= lt!500104 (getCurrentListMapNoExtraKeys!4438 lt!500103 lt!500106 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2519 (Int (_ BitVec 64)) V!42861)

(assert (=> b!1126164 (= lt!500106 (array!73427 (store (arr!35362 _values!996) i!673 (ValueCellFull!13441 (dynLambda!2519 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35899 _values!996)))))

(declare-fun lt!500107 () ListLongMap!15927)

(assert (=> b!1126164 (= lt!500107 (getCurrentListMapNoExtraKeys!4438 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1126165 () Bool)

(declare-fun e!641054 () Bool)

(assert (=> b!1126165 (= e!641054 tp_is_empty!28301)))

(declare-fun b!1126166 () Bool)

(declare-fun res!752597 () Bool)

(assert (=> b!1126166 (=> (not res!752597) (not e!641056))))

(assert (=> b!1126166 (= res!752597 (and (= (size!35899 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35898 _keys!1208) (size!35899 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!44269 () Bool)

(assert (=> mapIsEmpty!44269 mapRes!44269))

(declare-fun b!1126167 () Bool)

(declare-fun res!752604 () Bool)

(assert (=> b!1126167 (=> (not res!752604) (not e!641056))))

(assert (=> b!1126167 (= res!752604 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35898 _keys!1208))))))

(declare-fun b!1126168 () Bool)

(assert (=> b!1126168 (= e!641055 e!641058)))

(declare-fun res!752603 () Bool)

(assert (=> b!1126168 (=> res!752603 e!641058)))

(assert (=> b!1126168 (= res!752603 (not (= (select (arr!35361 _keys!1208) from!1455) k!934)))))

(assert (=> b!1126168 e!641062))

(declare-fun c!109607 () Bool)

(assert (=> b!1126168 (= c!109607 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!500105 () Unit!36851)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!375 (array!73424 array!73426 (_ BitVec 32) (_ BitVec 32) V!42861 V!42861 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36851)

(assert (=> b!1126168 (= lt!500105 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!375 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126169 () Bool)

(assert (=> b!1126169 (= e!641063 (and e!641054 mapRes!44269))))

(declare-fun condMapEmpty!44269 () Bool)

(declare-fun mapDefault!44269 () ValueCell!13441)


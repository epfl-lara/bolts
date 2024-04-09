; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97992 () Bool)

(assert start!97992)

(declare-fun b_free!23657 () Bool)

(declare-fun b_next!23657 () Bool)

(assert (=> start!97992 (= b_free!23657 (not b_next!23657))))

(declare-fun tp!83675 () Bool)

(declare-fun b_and!38119 () Bool)

(assert (=> start!97992 (= tp!83675 b_and!38119)))

(declare-fun b!1122771 () Bool)

(declare-fun res!750184 () Bool)

(declare-fun e!639260 () Bool)

(assert (=> b!1122771 (=> (not res!750184) (not e!639260))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1122771 (= res!750184 (validMask!0 mask!1564))))

(declare-fun res!750183 () Bool)

(assert (=> start!97992 (=> (not res!750183) (not e!639260))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73200 0))(
  ( (array!73201 (arr!35249 (Array (_ BitVec 32) (_ BitVec 64))) (size!35786 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73200)

(assert (=> start!97992 (= res!750183 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35786 _keys!1208))))))

(assert (=> start!97992 e!639260))

(declare-fun tp_is_empty!28187 () Bool)

(assert (=> start!97992 tp_is_empty!28187))

(declare-fun array_inv!26938 (array!73200) Bool)

(assert (=> start!97992 (array_inv!26938 _keys!1208)))

(assert (=> start!97992 true))

(assert (=> start!97992 tp!83675))

(declare-datatypes ((V!42709 0))(
  ( (V!42710 (val!14150 Int)) )
))
(declare-datatypes ((ValueCell!13384 0))(
  ( (ValueCellFull!13384 (v!16784 V!42709)) (EmptyCell!13384) )
))
(declare-datatypes ((array!73202 0))(
  ( (array!73203 (arr!35250 (Array (_ BitVec 32) ValueCell!13384)) (size!35787 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73202)

(declare-fun e!639261 () Bool)

(declare-fun array_inv!26939 (array!73202) Bool)

(assert (=> start!97992 (and (array_inv!26939 _values!996) e!639261)))

(declare-fun b!1122772 () Bool)

(declare-fun e!639263 () Bool)

(declare-fun e!639257 () Bool)

(assert (=> b!1122772 (= e!639263 e!639257)))

(declare-fun res!750186 () Bool)

(assert (=> b!1122772 (=> res!750186 e!639257)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1122772 (= res!750186 (not (= (select (arr!35249 _keys!1208) from!1455) k!934)))))

(declare-fun e!639262 () Bool)

(assert (=> b!1122772 e!639262))

(declare-fun c!109436 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1122772 (= c!109436 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42709)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42709)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((Unit!36759 0))(
  ( (Unit!36760) )
))
(declare-fun lt!498830 () Unit!36759)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!339 (array!73200 array!73202 (_ BitVec 32) (_ BitVec 32) V!42709 V!42709 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36759)

(assert (=> b!1122772 (= lt!498830 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!339 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122773 () Bool)

(declare-fun e!639254 () Bool)

(assert (=> b!1122773 (= e!639254 e!639263)))

(declare-fun res!750194 () Bool)

(assert (=> b!1122773 (=> res!750194 e!639263)))

(assert (=> b!1122773 (= res!750194 (not (= from!1455 i!673)))))

(declare-datatypes ((tuple2!17838 0))(
  ( (tuple2!17839 (_1!8929 (_ BitVec 64)) (_2!8929 V!42709)) )
))
(declare-datatypes ((List!24673 0))(
  ( (Nil!24670) (Cons!24669 (h!25878 tuple2!17838) (t!35329 List!24673)) )
))
(declare-datatypes ((ListLongMap!15819 0))(
  ( (ListLongMap!15820 (toList!7925 List!24673)) )
))
(declare-fun lt!498826 () ListLongMap!15819)

(declare-fun lt!498827 () array!73202)

(declare-fun lt!498829 () array!73200)

(declare-fun getCurrentListMapNoExtraKeys!4385 (array!73200 array!73202 (_ BitVec 32) (_ BitVec 32) V!42709 V!42709 (_ BitVec 32) Int) ListLongMap!15819)

(assert (=> b!1122773 (= lt!498826 (getCurrentListMapNoExtraKeys!4385 lt!498829 lt!498827 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2481 (Int (_ BitVec 64)) V!42709)

(assert (=> b!1122773 (= lt!498827 (array!73203 (store (arr!35250 _values!996) i!673 (ValueCellFull!13384 (dynLambda!2481 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35787 _values!996)))))

(declare-fun lt!498828 () ListLongMap!15819)

(assert (=> b!1122773 (= lt!498828 (getCurrentListMapNoExtraKeys!4385 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1122774 () Bool)

(declare-fun res!750192 () Bool)

(assert (=> b!1122774 (=> (not res!750192) (not e!639260))))

(assert (=> b!1122774 (= res!750192 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35786 _keys!1208))))))

(declare-fun b!1122775 () Bool)

(declare-fun e!639256 () Bool)

(assert (=> b!1122775 (= e!639256 tp_is_empty!28187)))

(declare-fun b!1122776 () Bool)

(declare-fun e!639258 () Bool)

(assert (=> b!1122776 (= e!639258 (not e!639254))))

(declare-fun res!750195 () Bool)

(assert (=> b!1122776 (=> res!750195 e!639254)))

(assert (=> b!1122776 (= res!750195 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73200 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1122776 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!498831 () Unit!36759)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73200 (_ BitVec 64) (_ BitVec 32)) Unit!36759)

(assert (=> b!1122776 (= lt!498831 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!44098 () Bool)

(declare-fun mapRes!44098 () Bool)

(declare-fun tp!83676 () Bool)

(declare-fun e!639259 () Bool)

(assert (=> mapNonEmpty!44098 (= mapRes!44098 (and tp!83676 e!639259))))

(declare-fun mapKey!44098 () (_ BitVec 32))

(declare-fun mapRest!44098 () (Array (_ BitVec 32) ValueCell!13384))

(declare-fun mapValue!44098 () ValueCell!13384)

(assert (=> mapNonEmpty!44098 (= (arr!35250 _values!996) (store mapRest!44098 mapKey!44098 mapValue!44098))))

(declare-fun b!1122777 () Bool)

(assert (=> b!1122777 (= e!639261 (and e!639256 mapRes!44098))))

(declare-fun condMapEmpty!44098 () Bool)

(declare-fun mapDefault!44098 () ValueCell!13384)


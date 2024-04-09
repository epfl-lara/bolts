; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99102 () Bool)

(assert start!99102)

(declare-fun b_free!24671 () Bool)

(declare-fun b_next!24671 () Bool)

(assert (=> start!99102 (= b_free!24671 (not b_next!24671))))

(declare-fun tp!86724 () Bool)

(declare-fun b_and!40205 () Bool)

(assert (=> start!99102 (= tp!86724 b_and!40205)))

(declare-fun mapNonEmpty!45626 () Bool)

(declare-fun mapRes!45626 () Bool)

(declare-fun tp!86725 () Bool)

(declare-fun e!662281 () Bool)

(assert (=> mapNonEmpty!45626 (= mapRes!45626 (and tp!86725 e!662281))))

(declare-datatypes ((V!44061 0))(
  ( (V!44062 (val!14657 Int)) )
))
(declare-datatypes ((ValueCell!13891 0))(
  ( (ValueCellFull!13891 (v!17295 V!44061)) (EmptyCell!13891) )
))
(declare-fun mapRest!45626 () (Array (_ BitVec 32) ValueCell!13891))

(declare-fun mapKey!45626 () (_ BitVec 32))

(declare-datatypes ((array!75186 0))(
  ( (array!75187 (arr!36240 (Array (_ BitVec 32) ValueCell!13891)) (size!36777 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75186)

(declare-fun mapValue!45626 () ValueCell!13891)

(assert (=> mapNonEmpty!45626 (= (arr!36240 _values!996) (store mapRest!45626 mapKey!45626 mapValue!45626))))

(declare-fun b!1164822 () Bool)

(declare-fun tp_is_empty!29201 () Bool)

(assert (=> b!1164822 (= e!662281 tp_is_empty!29201)))

(declare-fun b!1164823 () Bool)

(declare-fun e!662280 () Bool)

(assert (=> b!1164823 (= e!662280 true)))

(declare-fun zeroValue!944 () V!44061)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18764 0))(
  ( (tuple2!18765 (_1!9392 (_ BitVec 64)) (_2!9392 V!44061)) )
))
(declare-datatypes ((List!25541 0))(
  ( (Nil!25538) (Cons!25537 (h!26746 tuple2!18764) (t!37211 List!25541)) )
))
(declare-datatypes ((ListLongMap!16745 0))(
  ( (ListLongMap!16746 (toList!8388 List!25541)) )
))
(declare-fun lt!524708 () ListLongMap!16745)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!44061)

(declare-datatypes ((array!75188 0))(
  ( (array!75189 (arr!36241 (Array (_ BitVec 32) (_ BitVec 64))) (size!36778 (_ BitVec 32))) )
))
(declare-fun lt!524706 () array!75188)

(declare-fun getCurrentListMapNoExtraKeys!4821 (array!75188 array!75186 (_ BitVec 32) (_ BitVec 32) V!44061 V!44061 (_ BitVec 32) Int) ListLongMap!16745)

(declare-fun dynLambda!2818 (Int (_ BitVec 64)) V!44061)

(assert (=> b!1164823 (= lt!524708 (getCurrentListMapNoExtraKeys!4821 lt!524706 (array!75187 (store (arr!36240 _values!996) i!673 (ValueCellFull!13891 (dynLambda!2818 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36777 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _keys!1208 () array!75188)

(declare-fun lt!524709 () ListLongMap!16745)

(assert (=> b!1164823 (= lt!524709 (getCurrentListMapNoExtraKeys!4821 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1164824 () Bool)

(declare-fun res!772563 () Bool)

(declare-fun e!662283 () Bool)

(assert (=> b!1164824 (=> (not res!772563) (not e!662283))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1164824 (= res!772563 (validKeyInArray!0 k!934))))

(declare-fun b!1164825 () Bool)

(declare-fun e!662282 () Bool)

(assert (=> b!1164825 (= e!662282 (not e!662280))))

(declare-fun res!772571 () Bool)

(assert (=> b!1164825 (=> res!772571 e!662280)))

(assert (=> b!1164825 (= res!772571 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75188 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1164825 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38334 0))(
  ( (Unit!38335) )
))
(declare-fun lt!524707 () Unit!38334)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75188 (_ BitVec 64) (_ BitVec 32)) Unit!38334)

(assert (=> b!1164825 (= lt!524707 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1164826 () Bool)

(declare-fun res!772565 () Bool)

(assert (=> b!1164826 (=> (not res!772565) (not e!662283))))

(assert (=> b!1164826 (= res!772565 (= (select (arr!36241 _keys!1208) i!673) k!934))))

(declare-fun b!1164827 () Bool)

(declare-fun res!772570 () Bool)

(assert (=> b!1164827 (=> (not res!772570) (not e!662283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75188 (_ BitVec 32)) Bool)

(assert (=> b!1164827 (= res!772570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1164829 () Bool)

(declare-fun res!772568 () Bool)

(assert (=> b!1164829 (=> (not res!772568) (not e!662283))))

(assert (=> b!1164829 (= res!772568 (and (= (size!36777 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36778 _keys!1208) (size!36777 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1164830 () Bool)

(declare-fun res!772566 () Bool)

(assert (=> b!1164830 (=> (not res!772566) (not e!662283))))

(assert (=> b!1164830 (= res!772566 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36778 _keys!1208))))))

(declare-fun b!1164831 () Bool)

(assert (=> b!1164831 (= e!662283 e!662282)))

(declare-fun res!772567 () Bool)

(assert (=> b!1164831 (=> (not res!772567) (not e!662282))))

(assert (=> b!1164831 (= res!772567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524706 mask!1564))))

(assert (=> b!1164831 (= lt!524706 (array!75189 (store (arr!36241 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36778 _keys!1208)))))

(declare-fun b!1164832 () Bool)

(declare-fun res!772569 () Bool)

(assert (=> b!1164832 (=> (not res!772569) (not e!662283))))

(declare-datatypes ((List!25542 0))(
  ( (Nil!25539) (Cons!25538 (h!26747 (_ BitVec 64)) (t!37212 List!25542)) )
))
(declare-fun arrayNoDuplicates!0 (array!75188 (_ BitVec 32) List!25542) Bool)

(assert (=> b!1164832 (= res!772569 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25539))))

(declare-fun b!1164833 () Bool)

(declare-fun e!662277 () Bool)

(assert (=> b!1164833 (= e!662277 tp_is_empty!29201)))

(declare-fun mapIsEmpty!45626 () Bool)

(assert (=> mapIsEmpty!45626 mapRes!45626))

(declare-fun b!1164828 () Bool)

(declare-fun res!772561 () Bool)

(assert (=> b!1164828 (=> (not res!772561) (not e!662282))))

(assert (=> b!1164828 (= res!772561 (arrayNoDuplicates!0 lt!524706 #b00000000000000000000000000000000 Nil!25539))))

(declare-fun res!772562 () Bool)

(assert (=> start!99102 (=> (not res!772562) (not e!662283))))

(assert (=> start!99102 (= res!772562 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36778 _keys!1208))))))

(assert (=> start!99102 e!662283))

(assert (=> start!99102 tp_is_empty!29201))

(declare-fun array_inv!27596 (array!75188) Bool)

(assert (=> start!99102 (array_inv!27596 _keys!1208)))

(assert (=> start!99102 true))

(assert (=> start!99102 tp!86724))

(declare-fun e!662278 () Bool)

(declare-fun array_inv!27597 (array!75186) Bool)

(assert (=> start!99102 (and (array_inv!27597 _values!996) e!662278)))

(declare-fun b!1164834 () Bool)

(assert (=> b!1164834 (= e!662278 (and e!662277 mapRes!45626))))

(declare-fun condMapEmpty!45626 () Bool)

(declare-fun mapDefault!45626 () ValueCell!13891)


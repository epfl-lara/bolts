; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99310 () Bool)

(assert start!99310)

(declare-fun b_free!24853 () Bool)

(declare-fun b_next!24853 () Bool)

(assert (=> start!99310 (= b_free!24853 (not b_next!24853))))

(declare-fun tp!87273 () Bool)

(declare-fun b_and!40587 () Bool)

(assert (=> start!99310 (= tp!87273 b_and!40587)))

(declare-fun b!1169274 () Bool)

(declare-fun res!775930 () Bool)

(declare-fun e!664588 () Bool)

(assert (=> b!1169274 (=> (not res!775930) (not e!664588))))

(declare-datatypes ((array!75542 0))(
  ( (array!75543 (arr!36417 (Array (_ BitVec 32) (_ BitVec 64))) (size!36954 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75542)

(declare-datatypes ((List!25686 0))(
  ( (Nil!25683) (Cons!25682 (h!26891 (_ BitVec 64)) (t!37538 List!25686)) )
))
(declare-fun arrayNoDuplicates!0 (array!75542 (_ BitVec 32) List!25686) Bool)

(assert (=> b!1169274 (= res!775930 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25683))))

(declare-fun b!1169275 () Bool)

(declare-fun res!775928 () Bool)

(assert (=> b!1169275 (=> (not res!775928) (not e!664588))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1169275 (= res!775928 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36954 _keys!1208))))))

(declare-fun mapNonEmpty!45902 () Bool)

(declare-fun mapRes!45902 () Bool)

(declare-fun tp!87274 () Bool)

(declare-fun e!664594 () Bool)

(assert (=> mapNonEmpty!45902 (= mapRes!45902 (and tp!87274 e!664594))))

(declare-fun mapKey!45902 () (_ BitVec 32))

(declare-datatypes ((V!44305 0))(
  ( (V!44306 (val!14748 Int)) )
))
(declare-datatypes ((ValueCell!13982 0))(
  ( (ValueCellFull!13982 (v!17387 V!44305)) (EmptyCell!13982) )
))
(declare-fun mapRest!45902 () (Array (_ BitVec 32) ValueCell!13982))

(declare-datatypes ((array!75544 0))(
  ( (array!75545 (arr!36418 (Array (_ BitVec 32) ValueCell!13982)) (size!36955 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75544)

(declare-fun mapValue!45902 () ValueCell!13982)

(assert (=> mapNonEmpty!45902 (= (arr!36418 _values!996) (store mapRest!45902 mapKey!45902 mapValue!45902))))

(declare-fun b!1169276 () Bool)

(declare-fun e!664593 () Bool)

(declare-fun e!664590 () Bool)

(assert (=> b!1169276 (= e!664593 e!664590)))

(declare-fun res!775938 () Bool)

(assert (=> b!1169276 (=> res!775938 e!664590)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1169276 (= res!775938 (not (= (select (arr!36417 _keys!1208) from!1455) k!934)))))

(declare-fun mapIsEmpty!45902 () Bool)

(assert (=> mapIsEmpty!45902 mapRes!45902))

(declare-fun b!1169277 () Bool)

(declare-fun e!664589 () Bool)

(assert (=> b!1169277 (= e!664588 e!664589)))

(declare-fun res!775941 () Bool)

(assert (=> b!1169277 (=> (not res!775941) (not e!664589))))

(declare-fun lt!526479 () array!75542)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75542 (_ BitVec 32)) Bool)

(assert (=> b!1169277 (= res!775941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526479 mask!1564))))

(assert (=> b!1169277 (= lt!526479 (array!75543 (store (arr!36417 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36954 _keys!1208)))))

(declare-fun b!1169278 () Bool)

(declare-fun res!775940 () Bool)

(assert (=> b!1169278 (=> (not res!775940) (not e!664588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1169278 (= res!775940 (validMask!0 mask!1564))))

(declare-fun b!1169279 () Bool)

(declare-fun res!775933 () Bool)

(assert (=> b!1169279 (=> (not res!775933) (not e!664588))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1169279 (= res!775933 (and (= (size!36955 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36954 _keys!1208) (size!36955 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1169280 () Bool)

(declare-fun res!775929 () Bool)

(assert (=> b!1169280 (=> (not res!775929) (not e!664588))))

(assert (=> b!1169280 (= res!775929 (= (select (arr!36417 _keys!1208) i!673) k!934))))

(declare-fun b!1169281 () Bool)

(declare-fun e!664591 () Bool)

(declare-fun e!664595 () Bool)

(assert (=> b!1169281 (= e!664591 e!664595)))

(declare-fun res!775935 () Bool)

(assert (=> b!1169281 (=> res!775935 e!664595)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1169281 (= res!775935 (not (validKeyInArray!0 (select (arr!36417 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!18914 0))(
  ( (tuple2!18915 (_1!9467 (_ BitVec 64)) (_2!9467 V!44305)) )
))
(declare-datatypes ((List!25687 0))(
  ( (Nil!25684) (Cons!25683 (h!26892 tuple2!18914) (t!37539 List!25687)) )
))
(declare-datatypes ((ListLongMap!16895 0))(
  ( (ListLongMap!16896 (toList!8463 List!25687)) )
))
(declare-fun lt!526488 () ListLongMap!16895)

(declare-fun lt!526483 () ListLongMap!16895)

(assert (=> b!1169281 (= lt!526488 lt!526483)))

(declare-fun lt!526480 () ListLongMap!16895)

(declare-fun -!1488 (ListLongMap!16895 (_ BitVec 64)) ListLongMap!16895)

(assert (=> b!1169281 (= lt!526483 (-!1488 lt!526480 k!934))))

(declare-fun zeroValue!944 () V!44305)

(declare-fun minValue!944 () V!44305)

(declare-fun lt!526484 () array!75544)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4896 (array!75542 array!75544 (_ BitVec 32) (_ BitVec 32) V!44305 V!44305 (_ BitVec 32) Int) ListLongMap!16895)

(assert (=> b!1169281 (= lt!526488 (getCurrentListMapNoExtraKeys!4896 lt!526479 lt!526484 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1169281 (= lt!526480 (getCurrentListMapNoExtraKeys!4896 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38472 0))(
  ( (Unit!38473) )
))
(declare-fun lt!526486 () Unit!38472)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!712 (array!75542 array!75544 (_ BitVec 32) (_ BitVec 32) V!44305 V!44305 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38472)

(assert (=> b!1169281 (= lt!526486 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!712 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!775931 () Bool)

(assert (=> start!99310 (=> (not res!775931) (not e!664588))))

(assert (=> start!99310 (= res!775931 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36954 _keys!1208))))))

(assert (=> start!99310 e!664588))

(declare-fun tp_is_empty!29383 () Bool)

(assert (=> start!99310 tp_is_empty!29383))

(declare-fun array_inv!27714 (array!75542) Bool)

(assert (=> start!99310 (array_inv!27714 _keys!1208)))

(assert (=> start!99310 true))

(assert (=> start!99310 tp!87273))

(declare-fun e!664592 () Bool)

(declare-fun array_inv!27715 (array!75544) Bool)

(assert (=> start!99310 (and (array_inv!27715 _values!996) e!664592)))

(declare-fun b!1169282 () Bool)

(declare-fun res!775934 () Bool)

(assert (=> b!1169282 (=> (not res!775934) (not e!664588))))

(assert (=> b!1169282 (= res!775934 (validKeyInArray!0 k!934))))

(declare-fun b!1169283 () Bool)

(declare-fun res!775932 () Bool)

(assert (=> b!1169283 (=> (not res!775932) (not e!664588))))

(assert (=> b!1169283 (= res!775932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1169284 () Bool)

(declare-fun e!664587 () Bool)

(assert (=> b!1169284 (= e!664587 e!664591)))

(declare-fun res!775942 () Bool)

(assert (=> b!1169284 (=> res!775942 e!664591)))

(assert (=> b!1169284 (= res!775942 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!526487 () ListLongMap!16895)

(assert (=> b!1169284 (= lt!526487 (getCurrentListMapNoExtraKeys!4896 lt!526479 lt!526484 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!526482 () V!44305)

(assert (=> b!1169284 (= lt!526484 (array!75545 (store (arr!36418 _values!996) i!673 (ValueCellFull!13982 lt!526482)) (size!36955 _values!996)))))

(declare-fun dynLambda!2887 (Int (_ BitVec 64)) V!44305)

(assert (=> b!1169284 (= lt!526482 (dynLambda!2887 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526481 () ListLongMap!16895)

(assert (=> b!1169284 (= lt!526481 (getCurrentListMapNoExtraKeys!4896 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1169285 () Bool)

(declare-fun arrayContainsKey!0 (array!75542 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1169285 (= e!664590 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1169286 () Bool)

(declare-fun e!664596 () Bool)

(assert (=> b!1169286 (= e!664592 (and e!664596 mapRes!45902))))

(declare-fun condMapEmpty!45902 () Bool)

(declare-fun mapDefault!45902 () ValueCell!13982)


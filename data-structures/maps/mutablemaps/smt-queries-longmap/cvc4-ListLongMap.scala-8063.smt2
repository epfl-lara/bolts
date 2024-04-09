; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99258 () Bool)

(assert start!99258)

(declare-fun b_free!24827 () Bool)

(declare-fun b_next!24827 () Bool)

(assert (=> start!99258 (= b_free!24827 (not b_next!24827))))

(declare-fun tp!87192 () Bool)

(declare-fun b_and!40517 () Bool)

(assert (=> start!99258 (= tp!87192 b_and!40517)))

(declare-fun b!1168441 () Bool)

(declare-fun e!664106 () Bool)

(assert (=> b!1168441 (= e!664106 true)))

(declare-datatypes ((array!75488 0))(
  ( (array!75489 (arr!36391 (Array (_ BitVec 32) (_ BitVec 64))) (size!36928 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75488)

(declare-datatypes ((V!44269 0))(
  ( (V!44270 (val!14735 Int)) )
))
(declare-datatypes ((tuple2!18888 0))(
  ( (tuple2!18889 (_1!9454 (_ BitVec 64)) (_2!9454 V!44269)) )
))
(declare-datatypes ((List!25662 0))(
  ( (Nil!25659) (Cons!25658 (h!26867 tuple2!18888) (t!37488 List!25662)) )
))
(declare-datatypes ((ListLongMap!16869 0))(
  ( (ListLongMap!16870 (toList!8450 List!25662)) )
))
(declare-fun lt!526017 () ListLongMap!16869)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!526022 () ListLongMap!16869)

(declare-datatypes ((ValueCell!13969 0))(
  ( (ValueCellFull!13969 (v!17373 V!44269)) (EmptyCell!13969) )
))
(declare-datatypes ((array!75490 0))(
  ( (array!75491 (arr!36392 (Array (_ BitVec 32) ValueCell!13969)) (size!36929 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75490)

(declare-fun lt!526020 () V!44269)

(declare-fun +!3700 (ListLongMap!16869 tuple2!18888) ListLongMap!16869)

(declare-fun get!18573 (ValueCell!13969 V!44269) V!44269)

(assert (=> b!1168441 (= lt!526017 (+!3700 lt!526022 (tuple2!18889 (select (arr!36391 _keys!1208) from!1455) (get!18573 (select (arr!36392 _values!996) from!1455) lt!526020))))))

(declare-fun b!1168442 () Bool)

(declare-fun e!664108 () Bool)

(declare-fun e!664104 () Bool)

(assert (=> b!1168442 (= e!664108 e!664104)))

(declare-fun res!775329 () Bool)

(assert (=> b!1168442 (=> (not res!775329) (not e!664104))))

(declare-fun lt!526018 () array!75488)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75488 (_ BitVec 32)) Bool)

(assert (=> b!1168442 (= res!775329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526018 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1168442 (= lt!526018 (array!75489 (store (arr!36391 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36928 _keys!1208)))))

(declare-fun b!1168443 () Bool)

(declare-fun e!664110 () Bool)

(declare-fun e!664105 () Bool)

(assert (=> b!1168443 (= e!664110 e!664105)))

(declare-fun res!775328 () Bool)

(assert (=> b!1168443 (=> res!775328 e!664105)))

(assert (=> b!1168443 (= res!775328 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44269)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!526014 () array!75490)

(declare-fun minValue!944 () V!44269)

(declare-fun getCurrentListMapNoExtraKeys!4883 (array!75488 array!75490 (_ BitVec 32) (_ BitVec 32) V!44269 V!44269 (_ BitVec 32) Int) ListLongMap!16869)

(assert (=> b!1168443 (= lt!526017 (getCurrentListMapNoExtraKeys!4883 lt!526018 lt!526014 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1168443 (= lt!526014 (array!75491 (store (arr!36392 _values!996) i!673 (ValueCellFull!13969 lt!526020)) (size!36929 _values!996)))))

(declare-fun dynLambda!2875 (Int (_ BitVec 64)) V!44269)

(assert (=> b!1168443 (= lt!526020 (dynLambda!2875 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526016 () ListLongMap!16869)

(assert (=> b!1168443 (= lt!526016 (getCurrentListMapNoExtraKeys!4883 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1168444 () Bool)

(declare-fun e!664107 () Bool)

(declare-fun tp_is_empty!29357 () Bool)

(assert (=> b!1168444 (= e!664107 tp_is_empty!29357)))

(declare-fun mapIsEmpty!45860 () Bool)

(declare-fun mapRes!45860 () Bool)

(assert (=> mapIsEmpty!45860 mapRes!45860))

(declare-fun b!1168445 () Bool)

(declare-fun res!775322 () Bool)

(assert (=> b!1168445 (=> (not res!775322) (not e!664108))))

(assert (=> b!1168445 (= res!775322 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36928 _keys!1208))))))

(declare-fun res!775325 () Bool)

(assert (=> start!99258 (=> (not res!775325) (not e!664108))))

(assert (=> start!99258 (= res!775325 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36928 _keys!1208))))))

(assert (=> start!99258 e!664108))

(assert (=> start!99258 tp_is_empty!29357))

(declare-fun array_inv!27696 (array!75488) Bool)

(assert (=> start!99258 (array_inv!27696 _keys!1208)))

(assert (=> start!99258 true))

(assert (=> start!99258 tp!87192))

(declare-fun e!664103 () Bool)

(declare-fun array_inv!27697 (array!75490) Bool)

(assert (=> start!99258 (and (array_inv!27697 _values!996) e!664103)))

(declare-fun b!1168446 () Bool)

(declare-fun res!775330 () Bool)

(assert (=> b!1168446 (=> (not res!775330) (not e!664108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1168446 (= res!775330 (validMask!0 mask!1564))))

(declare-fun b!1168447 () Bool)

(declare-fun res!775332 () Bool)

(assert (=> b!1168447 (=> (not res!775332) (not e!664108))))

(assert (=> b!1168447 (= res!775332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1168448 () Bool)

(declare-fun res!775333 () Bool)

(assert (=> b!1168448 (=> (not res!775333) (not e!664108))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1168448 (= res!775333 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!45860 () Bool)

(declare-fun tp!87193 () Bool)

(assert (=> mapNonEmpty!45860 (= mapRes!45860 (and tp!87193 e!664107))))

(declare-fun mapKey!45860 () (_ BitVec 32))

(declare-fun mapValue!45860 () ValueCell!13969)

(declare-fun mapRest!45860 () (Array (_ BitVec 32) ValueCell!13969))

(assert (=> mapNonEmpty!45860 (= (arr!36392 _values!996) (store mapRest!45860 mapKey!45860 mapValue!45860))))

(declare-fun b!1168449 () Bool)

(assert (=> b!1168449 (= e!664105 e!664106)))

(declare-fun res!775334 () Bool)

(assert (=> b!1168449 (=> res!775334 e!664106)))

(assert (=> b!1168449 (= res!775334 (not (validKeyInArray!0 (select (arr!36391 _keys!1208) from!1455))))))

(declare-fun lt!526023 () ListLongMap!16869)

(assert (=> b!1168449 (= lt!526023 lt!526022)))

(declare-fun lt!526015 () ListLongMap!16869)

(declare-fun -!1479 (ListLongMap!16869 (_ BitVec 64)) ListLongMap!16869)

(assert (=> b!1168449 (= lt!526022 (-!1479 lt!526015 k!934))))

(assert (=> b!1168449 (= lt!526023 (getCurrentListMapNoExtraKeys!4883 lt!526018 lt!526014 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1168449 (= lt!526015 (getCurrentListMapNoExtraKeys!4883 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38448 0))(
  ( (Unit!38449) )
))
(declare-fun lt!526019 () Unit!38448)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!703 (array!75488 array!75490 (_ BitVec 32) (_ BitVec 32) V!44269 V!44269 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38448)

(assert (=> b!1168449 (= lt!526019 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!703 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1168450 () Bool)

(declare-fun res!775324 () Bool)

(assert (=> b!1168450 (=> (not res!775324) (not e!664108))))

(assert (=> b!1168450 (= res!775324 (and (= (size!36929 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36928 _keys!1208) (size!36929 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1168451 () Bool)

(assert (=> b!1168451 (= e!664104 (not e!664110))))

(declare-fun res!775326 () Bool)

(assert (=> b!1168451 (=> res!775326 e!664110)))

(assert (=> b!1168451 (= res!775326 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75488 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1168451 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!526021 () Unit!38448)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75488 (_ BitVec 64) (_ BitVec 32)) Unit!38448)

(assert (=> b!1168451 (= lt!526021 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1168452 () Bool)

(declare-fun res!775331 () Bool)

(assert (=> b!1168452 (=> (not res!775331) (not e!664108))))

(assert (=> b!1168452 (= res!775331 (= (select (arr!36391 _keys!1208) i!673) k!934))))

(declare-fun b!1168453 () Bool)

(declare-fun e!664109 () Bool)

(assert (=> b!1168453 (= e!664103 (and e!664109 mapRes!45860))))

(declare-fun condMapEmpty!45860 () Bool)

(declare-fun mapDefault!45860 () ValueCell!13969)


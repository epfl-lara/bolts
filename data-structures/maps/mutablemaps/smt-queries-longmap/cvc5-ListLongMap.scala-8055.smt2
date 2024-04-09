; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99206 () Bool)

(assert start!99206)

(declare-fun b_free!24775 () Bool)

(declare-fun b_next!24775 () Bool)

(assert (=> start!99206 (= b_free!24775 (not b_next!24775))))

(declare-fun tp!87036 () Bool)

(declare-fun b_and!40413 () Bool)

(assert (=> start!99206 (= tp!87036 b_and!40413)))

(declare-fun b!1167202 () Bool)

(declare-fun e!663468 () Bool)

(declare-fun e!663465 () Bool)

(assert (=> b!1167202 (= e!663468 (not e!663465))))

(declare-fun res!774376 () Bool)

(assert (=> b!1167202 (=> res!774376 e!663465)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1167202 (= res!774376 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!75388 0))(
  ( (array!75389 (arr!36341 (Array (_ BitVec 32) (_ BitVec 64))) (size!36878 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75388)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75388 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1167202 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38410 0))(
  ( (Unit!38411) )
))
(declare-fun lt!525518 () Unit!38410)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75388 (_ BitVec 64) (_ BitVec 32)) Unit!38410)

(assert (=> b!1167202 (= lt!525518 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1167203 () Bool)

(declare-fun res!774370 () Bool)

(declare-fun e!663463 () Bool)

(assert (=> b!1167203 (=> (not res!774370) (not e!663463))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44201 0))(
  ( (V!44202 (val!14709 Int)) )
))
(declare-datatypes ((ValueCell!13943 0))(
  ( (ValueCellFull!13943 (v!17347 V!44201)) (EmptyCell!13943) )
))
(declare-datatypes ((array!75390 0))(
  ( (array!75391 (arr!36342 (Array (_ BitVec 32) ValueCell!13943)) (size!36879 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75390)

(assert (=> b!1167203 (= res!774370 (and (= (size!36879 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36878 _keys!1208) (size!36879 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1167204 () Bool)

(declare-fun res!774373 () Bool)

(assert (=> b!1167204 (=> (not res!774373) (not e!663468))))

(declare-fun lt!525517 () array!75388)

(declare-datatypes ((List!25620 0))(
  ( (Nil!25617) (Cons!25616 (h!26825 (_ BitVec 64)) (t!37394 List!25620)) )
))
(declare-fun arrayNoDuplicates!0 (array!75388 (_ BitVec 32) List!25620) Bool)

(assert (=> b!1167204 (= res!774373 (arrayNoDuplicates!0 lt!525517 #b00000000000000000000000000000000 Nil!25617))))

(declare-fun b!1167206 () Bool)

(declare-fun e!663467 () Bool)

(declare-fun tp_is_empty!29305 () Bool)

(assert (=> b!1167206 (= e!663467 tp_is_empty!29305)))

(declare-fun b!1167207 () Bool)

(declare-fun e!663464 () Bool)

(assert (=> b!1167207 (= e!663465 e!663464)))

(declare-fun res!774379 () Bool)

(assert (=> b!1167207 (=> res!774379 e!663464)))

(assert (=> b!1167207 (= res!774379 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44201)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!525519 () array!75390)

(declare-fun minValue!944 () V!44201)

(declare-datatypes ((tuple2!18844 0))(
  ( (tuple2!18845 (_1!9432 (_ BitVec 64)) (_2!9432 V!44201)) )
))
(declare-datatypes ((List!25621 0))(
  ( (Nil!25618) (Cons!25617 (h!26826 tuple2!18844) (t!37395 List!25621)) )
))
(declare-datatypes ((ListLongMap!16825 0))(
  ( (ListLongMap!16826 (toList!8428 List!25621)) )
))
(declare-fun lt!525515 () ListLongMap!16825)

(declare-fun getCurrentListMapNoExtraKeys!4861 (array!75388 array!75390 (_ BitVec 32) (_ BitVec 32) V!44201 V!44201 (_ BitVec 32) Int) ListLongMap!16825)

(assert (=> b!1167207 (= lt!525515 (getCurrentListMapNoExtraKeys!4861 lt!525517 lt!525519 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2854 (Int (_ BitVec 64)) V!44201)

(assert (=> b!1167207 (= lt!525519 (array!75391 (store (arr!36342 _values!996) i!673 (ValueCellFull!13943 (dynLambda!2854 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36879 _values!996)))))

(declare-fun lt!525516 () ListLongMap!16825)

(assert (=> b!1167207 (= lt!525516 (getCurrentListMapNoExtraKeys!4861 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1167208 () Bool)

(declare-fun res!774377 () Bool)

(assert (=> b!1167208 (=> (not res!774377) (not e!663463))))

(assert (=> b!1167208 (= res!774377 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36878 _keys!1208))))))

(declare-fun b!1167209 () Bool)

(assert (=> b!1167209 (= e!663464 true)))

(declare-fun -!1463 (ListLongMap!16825 (_ BitVec 64)) ListLongMap!16825)

(assert (=> b!1167209 (= (getCurrentListMapNoExtraKeys!4861 lt!525517 lt!525519 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1463 (getCurrentListMapNoExtraKeys!4861 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun lt!525514 () Unit!38410)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!687 (array!75388 array!75390 (_ BitVec 32) (_ BitVec 32) V!44201 V!44201 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38410)

(assert (=> b!1167209 (= lt!525514 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!687 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!45782 () Bool)

(declare-fun mapRes!45782 () Bool)

(assert (=> mapIsEmpty!45782 mapRes!45782))

(declare-fun b!1167210 () Bool)

(declare-fun res!774378 () Bool)

(assert (=> b!1167210 (=> (not res!774378) (not e!663463))))

(assert (=> b!1167210 (= res!774378 (= (select (arr!36341 _keys!1208) i!673) k!934))))

(declare-fun b!1167211 () Bool)

(declare-fun res!774371 () Bool)

(assert (=> b!1167211 (=> (not res!774371) (not e!663463))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1167211 (= res!774371 (validMask!0 mask!1564))))

(declare-fun b!1167212 () Bool)

(declare-fun res!774380 () Bool)

(assert (=> b!1167212 (=> (not res!774380) (not e!663463))))

(assert (=> b!1167212 (= res!774380 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25617))))

(declare-fun b!1167213 () Bool)

(assert (=> b!1167213 (= e!663463 e!663468)))

(declare-fun res!774369 () Bool)

(assert (=> b!1167213 (=> (not res!774369) (not e!663468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75388 (_ BitVec 32)) Bool)

(assert (=> b!1167213 (= res!774369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525517 mask!1564))))

(assert (=> b!1167213 (= lt!525517 (array!75389 (store (arr!36341 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36878 _keys!1208)))))

(declare-fun mapNonEmpty!45782 () Bool)

(declare-fun tp!87037 () Bool)

(assert (=> mapNonEmpty!45782 (= mapRes!45782 (and tp!87037 e!663467))))

(declare-fun mapKey!45782 () (_ BitVec 32))

(declare-fun mapValue!45782 () ValueCell!13943)

(declare-fun mapRest!45782 () (Array (_ BitVec 32) ValueCell!13943))

(assert (=> mapNonEmpty!45782 (= (arr!36342 _values!996) (store mapRest!45782 mapKey!45782 mapValue!45782))))

(declare-fun b!1167214 () Bool)

(declare-fun e!663461 () Bool)

(declare-fun e!663466 () Bool)

(assert (=> b!1167214 (= e!663461 (and e!663466 mapRes!45782))))

(declare-fun condMapEmpty!45782 () Bool)

(declare-fun mapDefault!45782 () ValueCell!13943)


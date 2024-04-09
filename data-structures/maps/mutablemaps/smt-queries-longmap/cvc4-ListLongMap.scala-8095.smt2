; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99476 () Bool)

(assert start!99476)

(declare-fun b_free!25019 () Bool)

(declare-fun b_next!25019 () Bool)

(assert (=> start!99476 (= b_free!25019 (not b_next!25019))))

(declare-fun tp!87772 () Bool)

(declare-fun b_and!40919 () Bool)

(assert (=> start!99476 (= tp!87772 b_and!40919)))

(declare-fun b!1174469 () Bool)

(declare-fun res!780039 () Bool)

(declare-fun e!667631 () Bool)

(assert (=> b!1174469 (=> (not res!780039) (not e!667631))))

(declare-datatypes ((array!75874 0))(
  ( (array!75875 (arr!36583 (Array (_ BitVec 32) (_ BitVec 64))) (size!37120 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75874)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1174469 (= res!780039 (= (select (arr!36583 _keys!1208) i!673) k!934))))

(declare-fun b!1174470 () Bool)

(declare-fun e!667632 () Bool)

(declare-fun e!667627 () Bool)

(assert (=> b!1174470 (= e!667632 (not e!667627))))

(declare-fun res!780044 () Bool)

(assert (=> b!1174470 (=> res!780044 e!667627)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1174470 (= res!780044 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75874 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1174470 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38659 0))(
  ( (Unit!38660) )
))
(declare-fun lt!529623 () Unit!38659)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75874 (_ BitVec 64) (_ BitVec 32)) Unit!38659)

(assert (=> b!1174470 (= lt!529623 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1174471 () Bool)

(declare-fun e!667628 () Unit!38659)

(declare-fun Unit!38661 () Unit!38659)

(assert (=> b!1174471 (= e!667628 Unit!38661)))

(declare-fun b!1174472 () Bool)

(declare-fun e!667633 () Bool)

(declare-fun e!667629 () Bool)

(assert (=> b!1174472 (= e!667633 e!667629)))

(declare-fun res!780045 () Bool)

(assert (=> b!1174472 (=> res!780045 e!667629)))

(assert (=> b!1174472 (= res!780045 (not (= (select (arr!36583 _keys!1208) from!1455) k!934)))))

(declare-fun b!1174473 () Bool)

(declare-fun e!667623 () Bool)

(declare-fun tp_is_empty!29549 () Bool)

(assert (=> b!1174473 (= e!667623 tp_is_empty!29549)))

(declare-fun b!1174474 () Bool)

(declare-fun res!780033 () Bool)

(assert (=> b!1174474 (=> (not res!780033) (not e!667631))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1174474 (= res!780033 (validMask!0 mask!1564))))

(declare-fun b!1174475 () Bool)

(declare-fun e!667625 () Bool)

(declare-fun e!667630 () Bool)

(assert (=> b!1174475 (= e!667625 e!667630)))

(declare-fun res!780037 () Bool)

(assert (=> b!1174475 (=> res!780037 e!667630)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1174475 (= res!780037 (not (validKeyInArray!0 (select (arr!36583 _keys!1208) from!1455))))))

(declare-datatypes ((V!44525 0))(
  ( (V!44526 (val!14831 Int)) )
))
(declare-datatypes ((tuple2!19062 0))(
  ( (tuple2!19063 (_1!9541 (_ BitVec 64)) (_2!9541 V!44525)) )
))
(declare-datatypes ((List!25832 0))(
  ( (Nil!25829) (Cons!25828 (h!27037 tuple2!19062) (t!37850 List!25832)) )
))
(declare-datatypes ((ListLongMap!17043 0))(
  ( (ListLongMap!17044 (toList!8537 List!25832)) )
))
(declare-fun lt!529617 () ListLongMap!17043)

(declare-fun lt!529619 () ListLongMap!17043)

(assert (=> b!1174475 (= lt!529617 lt!529619)))

(declare-fun lt!529624 () ListLongMap!17043)

(declare-fun -!1547 (ListLongMap!17043 (_ BitVec 64)) ListLongMap!17043)

(assert (=> b!1174475 (= lt!529619 (-!1547 lt!529624 k!934))))

(declare-fun zeroValue!944 () V!44525)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14065 0))(
  ( (ValueCellFull!14065 (v!17470 V!44525)) (EmptyCell!14065) )
))
(declare-datatypes ((array!75876 0))(
  ( (array!75877 (arr!36584 (Array (_ BitVec 32) ValueCell!14065)) (size!37121 (_ BitVec 32))) )
))
(declare-fun lt!529626 () array!75876)

(declare-fun minValue!944 () V!44525)

(declare-fun lt!529618 () array!75874)

(declare-fun getCurrentListMapNoExtraKeys!4968 (array!75874 array!75876 (_ BitVec 32) (_ BitVec 32) V!44525 V!44525 (_ BitVec 32) Int) ListLongMap!17043)

(assert (=> b!1174475 (= lt!529617 (getCurrentListMapNoExtraKeys!4968 lt!529618 lt!529626 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75876)

(assert (=> b!1174475 (= lt!529624 (getCurrentListMapNoExtraKeys!4968 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!529622 () Unit!38659)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!771 (array!75874 array!75876 (_ BitVec 32) (_ BitVec 32) V!44525 V!44525 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38659)

(assert (=> b!1174475 (= lt!529622 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!771 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1174476 () Bool)

(assert (=> b!1174476 (= e!667631 e!667632)))

(declare-fun res!780046 () Bool)

(assert (=> b!1174476 (=> (not res!780046) (not e!667632))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75874 (_ BitVec 32)) Bool)

(assert (=> b!1174476 (= res!780046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!529618 mask!1564))))

(assert (=> b!1174476 (= lt!529618 (array!75875 (store (arr!36583 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37120 _keys!1208)))))

(declare-fun b!1174477 () Bool)

(assert (=> b!1174477 (= e!667629 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1174478 () Bool)

(declare-fun res!780038 () Bool)

(assert (=> b!1174478 (=> (not res!780038) (not e!667631))))

(assert (=> b!1174478 (= res!780038 (validKeyInArray!0 k!934))))

(declare-fun b!1174479 () Bool)

(declare-fun res!780043 () Bool)

(assert (=> b!1174479 (=> (not res!780043) (not e!667631))))

(declare-datatypes ((List!25833 0))(
  ( (Nil!25830) (Cons!25829 (h!27038 (_ BitVec 64)) (t!37851 List!25833)) )
))
(declare-fun arrayNoDuplicates!0 (array!75874 (_ BitVec 32) List!25833) Bool)

(assert (=> b!1174479 (= res!780043 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25830))))

(declare-fun b!1174480 () Bool)

(declare-fun e!667626 () Bool)

(assert (=> b!1174480 (= e!667626 tp_is_empty!29549)))

(declare-fun b!1174481 () Bool)

(declare-fun Unit!38662 () Unit!38659)

(assert (=> b!1174481 (= e!667628 Unit!38662)))

(declare-fun lt!529620 () Unit!38659)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75874 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38659)

(assert (=> b!1174481 (= lt!529620 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1174481 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!529614 () Unit!38659)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75874 (_ BitVec 32) (_ BitVec 32)) Unit!38659)

(assert (=> b!1174481 (= lt!529614 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1174481 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25830)))

(declare-fun lt!529616 () Unit!38659)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75874 (_ BitVec 64) (_ BitVec 32) List!25833) Unit!38659)

(assert (=> b!1174481 (= lt!529616 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25830))))

(assert (=> b!1174481 false))

(declare-fun b!1174482 () Bool)

(declare-fun res!780032 () Bool)

(assert (=> b!1174482 (=> (not res!780032) (not e!667631))))

(assert (=> b!1174482 (= res!780032 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37120 _keys!1208))))))

(declare-fun b!1174483 () Bool)

(declare-fun res!780035 () Bool)

(assert (=> b!1174483 (=> (not res!780035) (not e!667632))))

(assert (=> b!1174483 (= res!780035 (arrayNoDuplicates!0 lt!529618 #b00000000000000000000000000000000 Nil!25830))))

(declare-fun b!1174484 () Bool)

(declare-fun res!780040 () Bool)

(assert (=> b!1174484 (=> (not res!780040) (not e!667631))))

(assert (=> b!1174484 (= res!780040 (and (= (size!37121 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37120 _keys!1208) (size!37121 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1174485 () Bool)

(declare-fun e!667624 () Bool)

(declare-fun mapRes!46151 () Bool)

(assert (=> b!1174485 (= e!667624 (and e!667626 mapRes!46151))))

(declare-fun condMapEmpty!46151 () Bool)

(declare-fun mapDefault!46151 () ValueCell!14065)


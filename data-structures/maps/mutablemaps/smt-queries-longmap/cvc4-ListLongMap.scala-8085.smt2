; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99416 () Bool)

(assert start!99416)

(declare-fun b_free!24959 () Bool)

(declare-fun b_next!24959 () Bool)

(assert (=> start!99416 (= b_free!24959 (not b_next!24959))))

(declare-fun tp!87591 () Bool)

(declare-fun b_and!40799 () Bool)

(assert (=> start!99416 (= tp!87591 b_and!40799)))

(declare-fun b!1172607 () Bool)

(declare-fun e!666544 () Bool)

(declare-fun tp_is_empty!29489 () Bool)

(assert (=> b!1172607 (= e!666544 tp_is_empty!29489)))

(declare-datatypes ((array!75754 0))(
  ( (array!75755 (arr!36523 (Array (_ BitVec 32) (_ BitVec 64))) (size!37060 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75754)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!666553 () Bool)

(declare-fun b!1172608 () Bool)

(declare-fun arrayContainsKey!0 (array!75754 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1172608 (= e!666553 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1172609 () Bool)

(declare-fun res!778693 () Bool)

(declare-fun e!666546 () Bool)

(assert (=> b!1172609 (=> (not res!778693) (not e!666546))))

(assert (=> b!1172609 (= res!778693 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37060 _keys!1208))))))

(declare-fun b!1172610 () Bool)

(declare-fun e!666549 () Bool)

(declare-fun e!666552 () Bool)

(assert (=> b!1172610 (= e!666549 (not e!666552))))

(declare-fun res!778680 () Bool)

(assert (=> b!1172610 (=> res!778680 e!666552)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1172610 (= res!778680 (bvsgt from!1455 i!673))))

(assert (=> b!1172610 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38566 0))(
  ( (Unit!38567) )
))
(declare-fun lt!528360 () Unit!38566)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75754 (_ BitVec 64) (_ BitVec 32)) Unit!38566)

(assert (=> b!1172610 (= lt!528360 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1172611 () Bool)

(declare-fun e!666541 () Bool)

(assert (=> b!1172611 (= e!666552 e!666541)))

(declare-fun res!778691 () Bool)

(assert (=> b!1172611 (=> res!778691 e!666541)))

(assert (=> b!1172611 (= res!778691 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44445 0))(
  ( (V!44446 (val!14801 Int)) )
))
(declare-fun zeroValue!944 () V!44445)

(declare-datatypes ((tuple2!19008 0))(
  ( (tuple2!19009 (_1!9514 (_ BitVec 64)) (_2!9514 V!44445)) )
))
(declare-datatypes ((List!25781 0))(
  ( (Nil!25778) (Cons!25777 (h!26986 tuple2!19008) (t!37739 List!25781)) )
))
(declare-datatypes ((ListLongMap!16989 0))(
  ( (ListLongMap!16990 (toList!8510 List!25781)) )
))
(declare-fun lt!528366 () ListLongMap!16989)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!528357 () array!75754)

(declare-fun minValue!944 () V!44445)

(declare-datatypes ((ValueCell!14035 0))(
  ( (ValueCellFull!14035 (v!17440 V!44445)) (EmptyCell!14035) )
))
(declare-datatypes ((array!75756 0))(
  ( (array!75757 (arr!36524 (Array (_ BitVec 32) ValueCell!14035)) (size!37061 (_ BitVec 32))) )
))
(declare-fun lt!528365 () array!75756)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4942 (array!75754 array!75756 (_ BitVec 32) (_ BitVec 32) V!44445 V!44445 (_ BitVec 32) Int) ListLongMap!16989)

(assert (=> b!1172611 (= lt!528366 (getCurrentListMapNoExtraKeys!4942 lt!528357 lt!528365 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!528362 () V!44445)

(declare-fun _values!996 () array!75756)

(assert (=> b!1172611 (= lt!528365 (array!75757 (store (arr!36524 _values!996) i!673 (ValueCellFull!14035 lt!528362)) (size!37061 _values!996)))))

(declare-fun dynLambda!2929 (Int (_ BitVec 64)) V!44445)

(assert (=> b!1172611 (= lt!528362 (dynLambda!2929 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!528356 () ListLongMap!16989)

(assert (=> b!1172611 (= lt!528356 (getCurrentListMapNoExtraKeys!4942 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1172612 () Bool)

(assert (=> b!1172612 (= e!666546 e!666549)))

(declare-fun res!778695 () Bool)

(assert (=> b!1172612 (=> (not res!778695) (not e!666549))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75754 (_ BitVec 32)) Bool)

(assert (=> b!1172612 (= res!778695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528357 mask!1564))))

(assert (=> b!1172612 (= lt!528357 (array!75755 (store (arr!36523 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37060 _keys!1208)))))

(declare-fun b!1172613 () Bool)

(declare-fun res!778683 () Bool)

(assert (=> b!1172613 (=> (not res!778683) (not e!666546))))

(assert (=> b!1172613 (= res!778683 (and (= (size!37061 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37060 _keys!1208) (size!37061 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1172614 () Bool)

(declare-fun e!666551 () Bool)

(assert (=> b!1172614 (= e!666551 true)))

(declare-fun lt!528359 () Bool)

(declare-datatypes ((List!25782 0))(
  ( (Nil!25779) (Cons!25778 (h!26987 (_ BitVec 64)) (t!37740 List!25782)) )
))
(declare-fun contains!6879 (List!25782 (_ BitVec 64)) Bool)

(assert (=> b!1172614 (= lt!528359 (contains!6879 Nil!25779 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1172615 () Bool)

(declare-fun res!778684 () Bool)

(assert (=> b!1172615 (=> (not res!778684) (not e!666546))))

(declare-fun arrayNoDuplicates!0 (array!75754 (_ BitVec 32) List!25782) Bool)

(assert (=> b!1172615 (= res!778684 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25779))))

(declare-fun mapNonEmpty!46061 () Bool)

(declare-fun mapRes!46061 () Bool)

(declare-fun tp!87592 () Bool)

(assert (=> mapNonEmpty!46061 (= mapRes!46061 (and tp!87592 e!666544))))

(declare-fun mapRest!46061 () (Array (_ BitVec 32) ValueCell!14035))

(declare-fun mapKey!46061 () (_ BitVec 32))

(declare-fun mapValue!46061 () ValueCell!14035)

(assert (=> mapNonEmpty!46061 (= (arr!36524 _values!996) (store mapRest!46061 mapKey!46061 mapValue!46061))))

(declare-fun res!778696 () Bool)

(assert (=> start!99416 (=> (not res!778696) (not e!666546))))

(assert (=> start!99416 (= res!778696 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37060 _keys!1208))))))

(assert (=> start!99416 e!666546))

(assert (=> start!99416 tp_is_empty!29489))

(declare-fun array_inv!27792 (array!75754) Bool)

(assert (=> start!99416 (array_inv!27792 _keys!1208)))

(assert (=> start!99416 true))

(assert (=> start!99416 tp!87591))

(declare-fun e!666550 () Bool)

(declare-fun array_inv!27793 (array!75756) Bool)

(assert (=> start!99416 (and (array_inv!27793 _values!996) e!666550)))

(declare-fun b!1172616 () Bool)

(declare-fun res!778681 () Bool)

(assert (=> b!1172616 (=> res!778681 e!666551)))

(declare-fun noDuplicate!1643 (List!25782) Bool)

(assert (=> b!1172616 (= res!778681 (not (noDuplicate!1643 Nil!25779)))))

(declare-fun b!1172617 () Bool)

(declare-fun res!778694 () Bool)

(assert (=> b!1172617 (=> (not res!778694) (not e!666546))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1172617 (= res!778694 (validKeyInArray!0 k!934))))

(declare-fun b!1172618 () Bool)

(declare-fun e!666547 () Bool)

(assert (=> b!1172618 (= e!666550 (and e!666547 mapRes!46061))))

(declare-fun condMapEmpty!46061 () Bool)

(declare-fun mapDefault!46061 () ValueCell!14035)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99976 () Bool)

(assert start!99976)

(declare-fun b_free!25519 () Bool)

(declare-fun b_next!25519 () Bool)

(assert (=> start!99976 (= b_free!25519 (not b_next!25519))))

(declare-fun tp!89272 () Bool)

(declare-fun b_and!41919 () Bool)

(assert (=> start!99976 (= tp!89272 b_and!41919)))

(declare-fun b!1189806 () Bool)

(declare-fun e!676475 () Bool)

(declare-fun tp_is_empty!30049 () Bool)

(assert (=> b!1189806 (= e!676475 tp_is_empty!30049)))

(declare-fun b!1189807 () Bool)

(declare-fun e!676472 () Bool)

(assert (=> b!1189807 (= e!676472 true)))

(declare-datatypes ((V!45193 0))(
  ( (V!45194 (val!15081 Int)) )
))
(declare-fun zeroValue!944 () V!45193)

(declare-datatypes ((array!76864 0))(
  ( (array!76865 (arr!37078 (Array (_ BitVec 32) (_ BitVec 64))) (size!37615 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76864)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!541177 () array!76864)

(declare-datatypes ((ValueCell!14315 0))(
  ( (ValueCellFull!14315 (v!17720 V!45193)) (EmptyCell!14315) )
))
(declare-datatypes ((array!76866 0))(
  ( (array!76867 (arr!37079 (Array (_ BitVec 32) ValueCell!14315)) (size!37616 (_ BitVec 32))) )
))
(declare-fun lt!541178 () array!76866)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _values!996 () array!76866)

(declare-fun minValue!944 () V!45193)

(declare-datatypes ((tuple2!19506 0))(
  ( (tuple2!19507 (_1!9763 (_ BitVec 64)) (_2!9763 V!45193)) )
))
(declare-datatypes ((List!26265 0))(
  ( (Nil!26262) (Cons!26261 (h!27470 tuple2!19506) (t!38783 List!26265)) )
))
(declare-datatypes ((ListLongMap!17487 0))(
  ( (ListLongMap!17488 (toList!8759 List!26265)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5173 (array!76864 array!76866 (_ BitVec 32) (_ BitVec 32) V!45193 V!45193 (_ BitVec 32) Int) ListLongMap!17487)

(declare-fun -!1741 (ListLongMap!17487 (_ BitVec 64)) ListLongMap!17487)

(assert (=> b!1189807 (= (getCurrentListMapNoExtraKeys!5173 lt!541177 lt!541178 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1741 (getCurrentListMapNoExtraKeys!5173 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39410 0))(
  ( (Unit!39411) )
))
(declare-fun lt!541180 () Unit!39410)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!947 (array!76864 array!76866 (_ BitVec 32) (_ BitVec 32) V!45193 V!45193 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39410)

(assert (=> b!1189807 (= lt!541180 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!947 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!791329 () Bool)

(declare-fun e!676473 () Bool)

(assert (=> start!99976 (=> (not res!791329) (not e!676473))))

(assert (=> start!99976 (= res!791329 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37615 _keys!1208))))))

(assert (=> start!99976 e!676473))

(assert (=> start!99976 tp_is_empty!30049))

(declare-fun array_inv!28172 (array!76864) Bool)

(assert (=> start!99976 (array_inv!28172 _keys!1208)))

(assert (=> start!99976 true))

(assert (=> start!99976 tp!89272))

(declare-fun e!676471 () Bool)

(declare-fun array_inv!28173 (array!76866) Bool)

(assert (=> start!99976 (and (array_inv!28173 _values!996) e!676471)))

(declare-fun b!1189808 () Bool)

(declare-fun res!791325 () Bool)

(assert (=> b!1189808 (=> (not res!791325) (not e!676473))))

(declare-datatypes ((List!26266 0))(
  ( (Nil!26263) (Cons!26262 (h!27471 (_ BitVec 64)) (t!38784 List!26266)) )
))
(declare-fun arrayNoDuplicates!0 (array!76864 (_ BitVec 32) List!26266) Bool)

(assert (=> b!1189808 (= res!791325 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26263))))

(declare-fun mapIsEmpty!46901 () Bool)

(declare-fun mapRes!46901 () Bool)

(assert (=> mapIsEmpty!46901 mapRes!46901))

(declare-fun b!1189809 () Bool)

(declare-fun res!791332 () Bool)

(assert (=> b!1189809 (=> (not res!791332) (not e!676473))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76864 (_ BitVec 32)) Bool)

(assert (=> b!1189809 (= res!791332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1189810 () Bool)

(declare-fun e!676476 () Bool)

(declare-fun e!676470 () Bool)

(assert (=> b!1189810 (= e!676476 (not e!676470))))

(declare-fun res!791323 () Bool)

(assert (=> b!1189810 (=> res!791323 e!676470)))

(assert (=> b!1189810 (= res!791323 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76864 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1189810 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!541181 () Unit!39410)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76864 (_ BitVec 64) (_ BitVec 32)) Unit!39410)

(assert (=> b!1189810 (= lt!541181 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1189811 () Bool)

(declare-fun e!676477 () Bool)

(assert (=> b!1189811 (= e!676477 tp_is_empty!30049)))

(declare-fun b!1189812 () Bool)

(declare-fun res!791327 () Bool)

(assert (=> b!1189812 (=> (not res!791327) (not e!676473))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1189812 (= res!791327 (validKeyInArray!0 k!934))))

(declare-fun b!1189813 () Bool)

(declare-fun res!791324 () Bool)

(assert (=> b!1189813 (=> (not res!791324) (not e!676476))))

(assert (=> b!1189813 (= res!791324 (arrayNoDuplicates!0 lt!541177 #b00000000000000000000000000000000 Nil!26263))))

(declare-fun mapNonEmpty!46901 () Bool)

(declare-fun tp!89271 () Bool)

(assert (=> mapNonEmpty!46901 (= mapRes!46901 (and tp!89271 e!676477))))

(declare-fun mapRest!46901 () (Array (_ BitVec 32) ValueCell!14315))

(declare-fun mapKey!46901 () (_ BitVec 32))

(declare-fun mapValue!46901 () ValueCell!14315)

(assert (=> mapNonEmpty!46901 (= (arr!37079 _values!996) (store mapRest!46901 mapKey!46901 mapValue!46901))))

(declare-fun b!1189814 () Bool)

(assert (=> b!1189814 (= e!676473 e!676476)))

(declare-fun res!791321 () Bool)

(assert (=> b!1189814 (=> (not res!791321) (not e!676476))))

(assert (=> b!1189814 (= res!791321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541177 mask!1564))))

(assert (=> b!1189814 (= lt!541177 (array!76865 (store (arr!37078 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37615 _keys!1208)))))

(declare-fun b!1189815 () Bool)

(assert (=> b!1189815 (= e!676471 (and e!676475 mapRes!46901))))

(declare-fun condMapEmpty!46901 () Bool)

(declare-fun mapDefault!46901 () ValueCell!14315)


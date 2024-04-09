; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101284 () Bool)

(assert start!101284)

(declare-fun b_free!26171 () Bool)

(declare-fun b_next!26171 () Bool)

(assert (=> start!101284 (= b_free!26171 (not b_next!26171))))

(declare-fun tp!91536 () Bool)

(declare-fun b_and!43469 () Bool)

(assert (=> start!101284 (= tp!91536 b_and!43469)))

(declare-fun b!1215960 () Bool)

(declare-fun res!807494 () Bool)

(declare-fun e!690429 () Bool)

(assert (=> b!1215960 (=> (not res!807494) (not e!690429))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1215960 (= res!807494 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!48187 () Bool)

(declare-fun mapRes!48187 () Bool)

(declare-fun tp!91535 () Bool)

(declare-fun e!690426 () Bool)

(assert (=> mapNonEmpty!48187 (= mapRes!48187 (and tp!91535 e!690426))))

(declare-datatypes ((V!46293 0))(
  ( (V!46294 (val!15494 Int)) )
))
(declare-datatypes ((ValueCell!14728 0))(
  ( (ValueCellFull!14728 (v!18148 V!46293)) (EmptyCell!14728) )
))
(declare-fun mapRest!48187 () (Array (_ BitVec 32) ValueCell!14728))

(declare-fun mapValue!48187 () ValueCell!14728)

(declare-fun mapKey!48187 () (_ BitVec 32))

(declare-datatypes ((array!78500 0))(
  ( (array!78501 (arr!37881 (Array (_ BitVec 32) ValueCell!14728)) (size!38418 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78500)

(assert (=> mapNonEmpty!48187 (= (arr!37881 _values!996) (store mapRest!48187 mapKey!48187 mapValue!48187))))

(declare-fun b!1215961 () Bool)

(declare-fun res!807497 () Bool)

(assert (=> b!1215961 (=> (not res!807497) (not e!690429))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78502 0))(
  ( (array!78503 (arr!37882 (Array (_ BitVec 32) (_ BitVec 64))) (size!38419 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78502)

(assert (=> b!1215961 (= res!807497 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38419 _keys!1208))))))

(declare-fun res!807502 () Bool)

(assert (=> start!101284 (=> (not res!807502) (not e!690429))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101284 (= res!807502 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38419 _keys!1208))))))

(assert (=> start!101284 e!690429))

(declare-fun tp_is_empty!30875 () Bool)

(assert (=> start!101284 tp_is_empty!30875))

(declare-fun array_inv!28744 (array!78502) Bool)

(assert (=> start!101284 (array_inv!28744 _keys!1208)))

(assert (=> start!101284 true))

(assert (=> start!101284 tp!91536))

(declare-fun e!690423 () Bool)

(declare-fun array_inv!28745 (array!78500) Bool)

(assert (=> start!101284 (and (array_inv!28745 _values!996) e!690423)))

(declare-fun b!1215962 () Bool)

(declare-fun res!807496 () Bool)

(assert (=> b!1215962 (=> (not res!807496) (not e!690429))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78502 (_ BitVec 32)) Bool)

(assert (=> b!1215962 (= res!807496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1215963 () Bool)

(assert (=> b!1215963 (= e!690426 tp_is_empty!30875)))

(declare-fun b!1215964 () Bool)

(declare-fun res!807493 () Bool)

(assert (=> b!1215964 (=> (not res!807493) (not e!690429))))

(assert (=> b!1215964 (= res!807493 (= (select (arr!37882 _keys!1208) i!673) k!934))))

(declare-fun b!1215965 () Bool)

(declare-fun e!690425 () Bool)

(assert (=> b!1215965 (= e!690425 true)))

(declare-fun zeroValue!944 () V!46293)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20060 0))(
  ( (tuple2!20061 (_1!10040 (_ BitVec 64)) (_2!10040 V!46293)) )
))
(declare-datatypes ((List!26880 0))(
  ( (Nil!26877) (Cons!26876 (h!28085 tuple2!20060) (t!40038 List!26880)) )
))
(declare-datatypes ((ListLongMap!18041 0))(
  ( (ListLongMap!18042 (toList!9036 List!26880)) )
))
(declare-fun lt!552718 () ListLongMap!18041)

(declare-fun minValue!944 () V!46293)

(declare-fun lt!552717 () array!78502)

(declare-fun getCurrentListMapNoExtraKeys!5441 (array!78502 array!78500 (_ BitVec 32) (_ BitVec 32) V!46293 V!46293 (_ BitVec 32) Int) ListLongMap!18041)

(declare-fun dynLambda!3350 (Int (_ BitVec 64)) V!46293)

(assert (=> b!1215965 (= lt!552718 (getCurrentListMapNoExtraKeys!5441 lt!552717 (array!78501 (store (arr!37881 _values!996) i!673 (ValueCellFull!14728 (dynLambda!3350 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38418 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552716 () ListLongMap!18041)

(assert (=> b!1215965 (= lt!552716 (getCurrentListMapNoExtraKeys!5441 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1215966 () Bool)

(declare-fun e!690427 () Bool)

(assert (=> b!1215966 (= e!690429 e!690427)))

(declare-fun res!807501 () Bool)

(assert (=> b!1215966 (=> (not res!807501) (not e!690427))))

(assert (=> b!1215966 (= res!807501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552717 mask!1564))))

(assert (=> b!1215966 (= lt!552717 (array!78503 (store (arr!37882 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38419 _keys!1208)))))

(declare-fun b!1215967 () Bool)

(declare-fun e!690424 () Bool)

(assert (=> b!1215967 (= e!690424 tp_is_empty!30875)))

(declare-fun b!1215968 () Bool)

(declare-fun res!807499 () Bool)

(assert (=> b!1215968 (=> (not res!807499) (not e!690429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1215968 (= res!807499 (validMask!0 mask!1564))))

(declare-fun b!1215969 () Bool)

(assert (=> b!1215969 (= e!690427 (not e!690425))))

(declare-fun res!807500 () Bool)

(assert (=> b!1215969 (=> res!807500 e!690425)))

(assert (=> b!1215969 (= res!807500 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78502 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215969 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40256 0))(
  ( (Unit!40257) )
))
(declare-fun lt!552719 () Unit!40256)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78502 (_ BitVec 64) (_ BitVec 32)) Unit!40256)

(assert (=> b!1215969 (= lt!552719 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1215970 () Bool)

(assert (=> b!1215970 (= e!690423 (and e!690424 mapRes!48187))))

(declare-fun condMapEmpty!48187 () Bool)

(declare-fun mapDefault!48187 () ValueCell!14728)


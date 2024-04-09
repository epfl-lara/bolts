; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99962 () Bool)

(assert start!99962)

(declare-fun b_free!25505 () Bool)

(declare-fun b_next!25505 () Bool)

(assert (=> start!99962 (= b_free!25505 (not b_next!25505))))

(declare-fun tp!89230 () Bool)

(declare-fun b_and!41891 () Bool)

(assert (=> start!99962 (= tp!89230 b_and!41891)))

(declare-fun b!1189477 () Bool)

(declare-fun res!791072 () Bool)

(declare-fun e!676303 () Bool)

(assert (=> b!1189477 (=> (not res!791072) (not e!676303))))

(declare-datatypes ((array!76836 0))(
  ( (array!76837 (arr!37064 (Array (_ BitVec 32) (_ BitVec 64))) (size!37601 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76836)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76836 (_ BitVec 32)) Bool)

(assert (=> b!1189477 (= res!791072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!791078 () Bool)

(assert (=> start!99962 (=> (not res!791078) (not e!676303))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99962 (= res!791078 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37601 _keys!1208))))))

(assert (=> start!99962 e!676303))

(declare-fun tp_is_empty!30035 () Bool)

(assert (=> start!99962 tp_is_empty!30035))

(declare-fun array_inv!28162 (array!76836) Bool)

(assert (=> start!99962 (array_inv!28162 _keys!1208)))

(assert (=> start!99962 true))

(assert (=> start!99962 tp!89230))

(declare-datatypes ((V!45173 0))(
  ( (V!45174 (val!15074 Int)) )
))
(declare-datatypes ((ValueCell!14308 0))(
  ( (ValueCellFull!14308 (v!17713 V!45173)) (EmptyCell!14308) )
))
(declare-datatypes ((array!76838 0))(
  ( (array!76839 (arr!37065 (Array (_ BitVec 32) ValueCell!14308)) (size!37602 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76838)

(declare-fun e!676305 () Bool)

(declare-fun array_inv!28163 (array!76838) Bool)

(assert (=> start!99962 (and (array_inv!28163 _values!996) e!676305)))

(declare-fun b!1189478 () Bool)

(declare-fun res!791073 () Bool)

(assert (=> b!1189478 (=> (not res!791073) (not e!676303))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1189478 (= res!791073 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37601 _keys!1208))))))

(declare-fun b!1189479 () Bool)

(declare-fun e!676304 () Bool)

(assert (=> b!1189479 (= e!676303 e!676304)))

(declare-fun res!791071 () Bool)

(assert (=> b!1189479 (=> (not res!791071) (not e!676304))))

(declare-fun lt!541052 () array!76836)

(assert (=> b!1189479 (= res!791071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541052 mask!1564))))

(assert (=> b!1189479 (= lt!541052 (array!76837 (store (arr!37064 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37601 _keys!1208)))))

(declare-fun b!1189480 () Bool)

(declare-fun res!791080 () Bool)

(assert (=> b!1189480 (=> (not res!791080) (not e!676303))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1189480 (= res!791080 (= (select (arr!37064 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!46880 () Bool)

(declare-fun mapRes!46880 () Bool)

(assert (=> mapIsEmpty!46880 mapRes!46880))

(declare-fun b!1189481 () Bool)

(declare-fun e!676308 () Bool)

(assert (=> b!1189481 (= e!676308 tp_is_empty!30035)))

(declare-fun b!1189482 () Bool)

(declare-fun res!791077 () Bool)

(assert (=> b!1189482 (=> (not res!791077) (not e!676303))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1189482 (= res!791077 (and (= (size!37602 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37601 _keys!1208) (size!37602 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1189483 () Bool)

(declare-fun e!676306 () Bool)

(assert (=> b!1189483 (= e!676306 true)))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!541056 () array!76838)

(declare-fun minValue!944 () V!45173)

(declare-fun zeroValue!944 () V!45173)

(declare-datatypes ((tuple2!19492 0))(
  ( (tuple2!19493 (_1!9756 (_ BitVec 64)) (_2!9756 V!45173)) )
))
(declare-datatypes ((List!26252 0))(
  ( (Nil!26249) (Cons!26248 (h!27457 tuple2!19492) (t!38756 List!26252)) )
))
(declare-datatypes ((ListLongMap!17473 0))(
  ( (ListLongMap!17474 (toList!8752 List!26252)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5166 (array!76836 array!76838 (_ BitVec 32) (_ BitVec 32) V!45173 V!45173 (_ BitVec 32) Int) ListLongMap!17473)

(declare-fun -!1734 (ListLongMap!17473 (_ BitVec 64)) ListLongMap!17473)

(assert (=> b!1189483 (= (getCurrentListMapNoExtraKeys!5166 lt!541052 lt!541056 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1734 (getCurrentListMapNoExtraKeys!5166 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39396 0))(
  ( (Unit!39397) )
))
(declare-fun lt!541055 () Unit!39396)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!940 (array!76836 array!76838 (_ BitVec 32) (_ BitVec 32) V!45173 V!45173 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39396)

(assert (=> b!1189483 (= lt!541055 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!940 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1189484 () Bool)

(declare-fun res!791074 () Bool)

(assert (=> b!1189484 (=> (not res!791074) (not e!676304))))

(declare-datatypes ((List!26253 0))(
  ( (Nil!26250) (Cons!26249 (h!27458 (_ BitVec 64)) (t!38757 List!26253)) )
))
(declare-fun arrayNoDuplicates!0 (array!76836 (_ BitVec 32) List!26253) Bool)

(assert (=> b!1189484 (= res!791074 (arrayNoDuplicates!0 lt!541052 #b00000000000000000000000000000000 Nil!26250))))

(declare-fun mapNonEmpty!46880 () Bool)

(declare-fun tp!89229 () Bool)

(assert (=> mapNonEmpty!46880 (= mapRes!46880 (and tp!89229 e!676308))))

(declare-fun mapValue!46880 () ValueCell!14308)

(declare-fun mapKey!46880 () (_ BitVec 32))

(declare-fun mapRest!46880 () (Array (_ BitVec 32) ValueCell!14308))

(assert (=> mapNonEmpty!46880 (= (arr!37065 _values!996) (store mapRest!46880 mapKey!46880 mapValue!46880))))

(declare-fun b!1189485 () Bool)

(declare-fun res!791076 () Bool)

(assert (=> b!1189485 (=> (not res!791076) (not e!676303))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1189485 (= res!791076 (validKeyInArray!0 k!934))))

(declare-fun b!1189486 () Bool)

(declare-fun e!676309 () Bool)

(assert (=> b!1189486 (= e!676309 e!676306)))

(declare-fun res!791069 () Bool)

(assert (=> b!1189486 (=> res!791069 e!676306)))

(assert (=> b!1189486 (= res!791069 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!541053 () ListLongMap!17473)

(assert (=> b!1189486 (= lt!541053 (getCurrentListMapNoExtraKeys!5166 lt!541052 lt!541056 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3118 (Int (_ BitVec 64)) V!45173)

(assert (=> b!1189486 (= lt!541056 (array!76839 (store (arr!37065 _values!996) i!673 (ValueCellFull!14308 (dynLambda!3118 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37602 _values!996)))))

(declare-fun lt!541051 () ListLongMap!17473)

(assert (=> b!1189486 (= lt!541051 (getCurrentListMapNoExtraKeys!5166 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1189487 () Bool)

(declare-fun e!676307 () Bool)

(assert (=> b!1189487 (= e!676305 (and e!676307 mapRes!46880))))

(declare-fun condMapEmpty!46880 () Bool)

(declare-fun mapDefault!46880 () ValueCell!14308)


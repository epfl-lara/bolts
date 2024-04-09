; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99980 () Bool)

(assert start!99980)

(declare-fun b_free!25523 () Bool)

(declare-fun b_next!25523 () Bool)

(assert (=> start!99980 (= b_free!25523 (not b_next!25523))))

(declare-fun tp!89284 () Bool)

(declare-fun b_and!41927 () Bool)

(assert (=> start!99980 (= tp!89284 b_and!41927)))

(declare-fun b!1189900 () Bool)

(declare-fun res!791399 () Bool)

(declare-fun e!676525 () Bool)

(assert (=> b!1189900 (=> (not res!791399) (not e!676525))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1189900 (= res!791399 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!46907 () Bool)

(declare-fun mapRes!46907 () Bool)

(declare-fun tp!89283 () Bool)

(declare-fun e!676519 () Bool)

(assert (=> mapNonEmpty!46907 (= mapRes!46907 (and tp!89283 e!676519))))

(declare-datatypes ((V!45197 0))(
  ( (V!45198 (val!15083 Int)) )
))
(declare-datatypes ((ValueCell!14317 0))(
  ( (ValueCellFull!14317 (v!17722 V!45197)) (EmptyCell!14317) )
))
(declare-fun mapRest!46907 () (Array (_ BitVec 32) ValueCell!14317))

(declare-fun mapValue!46907 () ValueCell!14317)

(declare-datatypes ((array!76872 0))(
  ( (array!76873 (arr!37082 (Array (_ BitVec 32) ValueCell!14317)) (size!37619 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76872)

(declare-fun mapKey!46907 () (_ BitVec 32))

(assert (=> mapNonEmpty!46907 (= (arr!37082 _values!996) (store mapRest!46907 mapKey!46907 mapValue!46907))))

(declare-fun b!1189901 () Bool)

(declare-fun res!791401 () Bool)

(declare-fun e!676521 () Bool)

(assert (=> b!1189901 (=> (not res!791401) (not e!676521))))

(declare-datatypes ((array!76874 0))(
  ( (array!76875 (arr!37083 (Array (_ BitVec 32) (_ BitVec 64))) (size!37620 (_ BitVec 32))) )
))
(declare-fun lt!541218 () array!76874)

(declare-datatypes ((List!26269 0))(
  ( (Nil!26266) (Cons!26265 (h!27474 (_ BitVec 64)) (t!38791 List!26269)) )
))
(declare-fun arrayNoDuplicates!0 (array!76874 (_ BitVec 32) List!26269) Bool)

(assert (=> b!1189901 (= res!791401 (arrayNoDuplicates!0 lt!541218 #b00000000000000000000000000000000 Nil!26266))))

(declare-fun res!791397 () Bool)

(assert (=> start!99980 (=> (not res!791397) (not e!676525))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _keys!1208 () array!76874)

(assert (=> start!99980 (= res!791397 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37620 _keys!1208))))))

(assert (=> start!99980 e!676525))

(declare-fun tp_is_empty!30053 () Bool)

(assert (=> start!99980 tp_is_empty!30053))

(declare-fun array_inv!28176 (array!76874) Bool)

(assert (=> start!99980 (array_inv!28176 _keys!1208)))

(assert (=> start!99980 true))

(assert (=> start!99980 tp!89284))

(declare-fun e!676524 () Bool)

(declare-fun array_inv!28177 (array!76872) Bool)

(assert (=> start!99980 (and (array_inv!28177 _values!996) e!676524)))

(declare-fun b!1189902 () Bool)

(declare-fun res!791393 () Bool)

(assert (=> b!1189902 (=> (not res!791393) (not e!676525))))

(assert (=> b!1189902 (= res!791393 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26266))))

(declare-fun b!1189903 () Bool)

(declare-fun res!791395 () Bool)

(assert (=> b!1189903 (=> (not res!791395) (not e!676525))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1189903 (= res!791395 (validKeyInArray!0 k!934))))

(declare-fun b!1189904 () Bool)

(declare-fun e!676518 () Bool)

(declare-fun e!676523 () Bool)

(assert (=> b!1189904 (= e!676518 e!676523)))

(declare-fun res!791402 () Bool)

(assert (=> b!1189904 (=> res!791402 e!676523)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1189904 (= res!791402 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45197)

(declare-fun defaultEntry!1004 () Int)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19510 0))(
  ( (tuple2!19511 (_1!9765 (_ BitVec 64)) (_2!9765 V!45197)) )
))
(declare-datatypes ((List!26270 0))(
  ( (Nil!26267) (Cons!26266 (h!27475 tuple2!19510) (t!38792 List!26270)) )
))
(declare-datatypes ((ListLongMap!17491 0))(
  ( (ListLongMap!17492 (toList!8761 List!26270)) )
))
(declare-fun lt!541214 () ListLongMap!17491)

(declare-fun minValue!944 () V!45197)

(declare-fun lt!541217 () array!76872)

(declare-fun getCurrentListMapNoExtraKeys!5175 (array!76874 array!76872 (_ BitVec 32) (_ BitVec 32) V!45197 V!45197 (_ BitVec 32) Int) ListLongMap!17491)

(assert (=> b!1189904 (= lt!541214 (getCurrentListMapNoExtraKeys!5175 lt!541218 lt!541217 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3126 (Int (_ BitVec 64)) V!45197)

(assert (=> b!1189904 (= lt!541217 (array!76873 (store (arr!37082 _values!996) i!673 (ValueCellFull!14317 (dynLambda!3126 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37619 _values!996)))))

(declare-fun lt!541215 () ListLongMap!17491)

(assert (=> b!1189904 (= lt!541215 (getCurrentListMapNoExtraKeys!5175 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1189905 () Bool)

(assert (=> b!1189905 (= e!676521 (not e!676518))))

(declare-fun res!791403 () Bool)

(assert (=> b!1189905 (=> res!791403 e!676518)))

(assert (=> b!1189905 (= res!791403 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76874 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1189905 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39414 0))(
  ( (Unit!39415) )
))
(declare-fun lt!541216 () Unit!39414)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76874 (_ BitVec 64) (_ BitVec 32)) Unit!39414)

(assert (=> b!1189905 (= lt!541216 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1189906 () Bool)

(declare-fun res!791396 () Bool)

(assert (=> b!1189906 (=> (not res!791396) (not e!676525))))

(assert (=> b!1189906 (= res!791396 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37620 _keys!1208))))))

(declare-fun b!1189907 () Bool)

(declare-fun res!791394 () Bool)

(assert (=> b!1189907 (=> (not res!791394) (not e!676525))))

(assert (=> b!1189907 (= res!791394 (and (= (size!37619 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37620 _keys!1208) (size!37619 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1189908 () Bool)

(assert (=> b!1189908 (= e!676525 e!676521)))

(declare-fun res!791400 () Bool)

(assert (=> b!1189908 (=> (not res!791400) (not e!676521))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76874 (_ BitVec 32)) Bool)

(assert (=> b!1189908 (= res!791400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541218 mask!1564))))

(assert (=> b!1189908 (= lt!541218 (array!76875 (store (arr!37083 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37620 _keys!1208)))))

(declare-fun b!1189909 () Bool)

(assert (=> b!1189909 (= e!676523 true)))

(declare-fun -!1743 (ListLongMap!17491 (_ BitVec 64)) ListLongMap!17491)

(assert (=> b!1189909 (= (getCurrentListMapNoExtraKeys!5175 lt!541218 lt!541217 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1743 (getCurrentListMapNoExtraKeys!5175 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun lt!541213 () Unit!39414)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!949 (array!76874 array!76872 (_ BitVec 32) (_ BitVec 32) V!45197 V!45197 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39414)

(assert (=> b!1189909 (= lt!541213 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!949 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1189910 () Bool)

(declare-fun res!791398 () Bool)

(assert (=> b!1189910 (=> (not res!791398) (not e!676525))))

(assert (=> b!1189910 (= res!791398 (= (select (arr!37083 _keys!1208) i!673) k!934))))

(declare-fun b!1189911 () Bool)

(declare-fun e!676522 () Bool)

(assert (=> b!1189911 (= e!676522 tp_is_empty!30053)))

(declare-fun b!1189912 () Bool)

(assert (=> b!1189912 (= e!676519 tp_is_empty!30053)))

(declare-fun b!1189913 () Bool)

(declare-fun res!791404 () Bool)

(assert (=> b!1189913 (=> (not res!791404) (not e!676525))))

(assert (=> b!1189913 (= res!791404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1189914 () Bool)

(assert (=> b!1189914 (= e!676524 (and e!676522 mapRes!46907))))

(declare-fun condMapEmpty!46907 () Bool)

(declare-fun mapDefault!46907 () ValueCell!14317)


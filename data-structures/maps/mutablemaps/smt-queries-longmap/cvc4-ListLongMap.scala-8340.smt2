; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101564 () Bool)

(assert start!101564)

(declare-fun b_free!26315 () Bool)

(declare-fun b_next!26315 () Bool)

(assert (=> start!101564 (= b_free!26315 (not b_next!26315))))

(declare-fun tp!91983 () Bool)

(declare-fun b_and!43847 () Bool)

(assert (=> start!101564 (= tp!91983 b_and!43847)))

(declare-fun b!1220566 () Bool)

(declare-fun res!810895 () Bool)

(declare-fun e!693133 () Bool)

(assert (=> b!1220566 (=> (not res!810895) (not e!693133))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78792 0))(
  ( (array!78793 (arr!38022 (Array (_ BitVec 32) (_ BitVec 64))) (size!38559 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78792)

(assert (=> b!1220566 (= res!810895 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38559 _keys!1208))))))

(declare-fun b!1220567 () Bool)

(declare-fun e!693127 () Bool)

(assert (=> b!1220567 (= e!693127 true)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((List!26993 0))(
  ( (Nil!26990) (Cons!26989 (h!28198 (_ BitVec 64)) (t!40295 List!26993)) )
))
(declare-fun arrayNoDuplicates!0 (array!78792 (_ BitVec 32) List!26993) Bool)

(assert (=> b!1220567 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26990)))

(declare-datatypes ((Unit!40358 0))(
  ( (Unit!40359) )
))
(declare-fun lt!555067 () Unit!40358)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78792 (_ BitVec 32) (_ BitVec 32)) Unit!40358)

(assert (=> b!1220567 (= lt!555067 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78792 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1220567 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555064 () Unit!40358)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78792 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40358)

(assert (=> b!1220567 (= lt!555064 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1220568 () Bool)

(declare-fun e!693138 () Bool)

(declare-fun e!693129 () Bool)

(assert (=> b!1220568 (= e!693138 e!693129)))

(declare-fun res!810892 () Bool)

(assert (=> b!1220568 (=> res!810892 e!693129)))

(assert (=> b!1220568 (= res!810892 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!555070 () array!78792)

(declare-datatypes ((V!46485 0))(
  ( (V!46486 (val!15566 Int)) )
))
(declare-datatypes ((ValueCell!14800 0))(
  ( (ValueCellFull!14800 (v!18225 V!46485)) (EmptyCell!14800) )
))
(declare-datatypes ((array!78794 0))(
  ( (array!78795 (arr!38023 (Array (_ BitVec 32) ValueCell!14800)) (size!38560 (_ BitVec 32))) )
))
(declare-fun lt!555071 () array!78794)

(declare-datatypes ((tuple2!20176 0))(
  ( (tuple2!20177 (_1!10098 (_ BitVec 64)) (_2!10098 V!46485)) )
))
(declare-datatypes ((List!26994 0))(
  ( (Nil!26991) (Cons!26990 (h!28199 tuple2!20176) (t!40296 List!26994)) )
))
(declare-datatypes ((ListLongMap!18157 0))(
  ( (ListLongMap!18158 (toList!9094 List!26994)) )
))
(declare-fun lt!555066 () ListLongMap!18157)

(declare-fun minValue!944 () V!46485)

(declare-fun zeroValue!944 () V!46485)

(declare-fun getCurrentListMapNoExtraKeys!5492 (array!78792 array!78794 (_ BitVec 32) (_ BitVec 32) V!46485 V!46485 (_ BitVec 32) Int) ListLongMap!18157)

(assert (=> b!1220568 (= lt!555066 (getCurrentListMapNoExtraKeys!5492 lt!555070 lt!555071 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!555068 () V!46485)

(declare-fun _values!996 () array!78794)

(assert (=> b!1220568 (= lt!555071 (array!78795 (store (arr!38023 _values!996) i!673 (ValueCellFull!14800 lt!555068)) (size!38560 _values!996)))))

(declare-fun dynLambda!3394 (Int (_ BitVec 64)) V!46485)

(assert (=> b!1220568 (= lt!555068 (dynLambda!3394 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!555069 () ListLongMap!18157)

(assert (=> b!1220568 (= lt!555069 (getCurrentListMapNoExtraKeys!5492 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1220569 () Bool)

(declare-fun e!693137 () Bool)

(assert (=> b!1220569 (= e!693129 e!693137)))

(declare-fun res!810885 () Bool)

(assert (=> b!1220569 (=> res!810885 e!693137)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1220569 (= res!810885 (not (validKeyInArray!0 (select (arr!38022 _keys!1208) from!1455))))))

(declare-fun lt!555074 () ListLongMap!18157)

(declare-fun lt!555072 () ListLongMap!18157)

(assert (=> b!1220569 (= lt!555074 lt!555072)))

(declare-fun lt!555073 () ListLongMap!18157)

(declare-fun -!1941 (ListLongMap!18157 (_ BitVec 64)) ListLongMap!18157)

(assert (=> b!1220569 (= lt!555072 (-!1941 lt!555073 k!934))))

(assert (=> b!1220569 (= lt!555074 (getCurrentListMapNoExtraKeys!5492 lt!555070 lt!555071 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1220569 (= lt!555073 (getCurrentListMapNoExtraKeys!5492 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!555063 () Unit!40358)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1143 (array!78792 array!78794 (_ BitVec 32) (_ BitVec 32) V!46485 V!46485 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40358)

(assert (=> b!1220569 (= lt!555063 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1143 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1220570 () Bool)

(declare-fun res!810896 () Bool)

(assert (=> b!1220570 (=> (not res!810896) (not e!693133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1220570 (= res!810896 (validMask!0 mask!1564))))

(declare-fun b!1220572 () Bool)

(declare-fun e!693135 () Bool)

(declare-fun e!693130 () Bool)

(declare-fun mapRes!48418 () Bool)

(assert (=> b!1220572 (= e!693135 (and e!693130 mapRes!48418))))

(declare-fun condMapEmpty!48418 () Bool)

(declare-fun mapDefault!48418 () ValueCell!14800)


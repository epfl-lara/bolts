; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101790 () Bool)

(assert start!101790)

(declare-fun b_free!26443 () Bool)

(declare-fun b_next!26443 () Bool)

(assert (=> start!101790 (= b_free!26443 (not b_next!26443))))

(declare-fun tp!92375 () Bool)

(declare-fun b_and!44157 () Bool)

(assert (=> start!101790 (= tp!92375 b_and!44157)))

(declare-fun mapIsEmpty!48619 () Bool)

(declare-fun mapRes!48619 () Bool)

(assert (=> mapIsEmpty!48619 mapRes!48619))

(declare-fun b!1225119 () Bool)

(declare-fun e!695863 () Bool)

(declare-fun e!695865 () Bool)

(assert (=> b!1225119 (= e!695863 e!695865)))

(declare-fun res!814230 () Bool)

(assert (=> b!1225119 (=> res!814230 e!695865)))

(declare-datatypes ((array!79052 0))(
  ( (array!79053 (arr!38149 (Array (_ BitVec 32) (_ BitVec 64))) (size!38686 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79052)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1225119 (= res!814230 (not (validKeyInArray!0 (select (arr!38149 _keys!1208) from!1455))))))

(declare-datatypes ((V!46657 0))(
  ( (V!46658 (val!15630 Int)) )
))
(declare-datatypes ((tuple2!20296 0))(
  ( (tuple2!20297 (_1!10158 (_ BitVec 64)) (_2!10158 V!46657)) )
))
(declare-datatypes ((List!27107 0))(
  ( (Nil!27104) (Cons!27103 (h!28312 tuple2!20296) (t!40537 List!27107)) )
))
(declare-datatypes ((ListLongMap!18277 0))(
  ( (ListLongMap!18278 (toList!9154 List!27107)) )
))
(declare-fun lt!558130 () ListLongMap!18277)

(declare-fun lt!558117 () ListLongMap!18277)

(assert (=> b!1225119 (= lt!558130 lt!558117)))

(declare-fun lt!558125 () ListLongMap!18277)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1990 (ListLongMap!18277 (_ BitVec 64)) ListLongMap!18277)

(assert (=> b!1225119 (= lt!558117 (-!1990 lt!558125 k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!558120 () array!79052)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14864 0))(
  ( (ValueCellFull!14864 (v!18293 V!46657)) (EmptyCell!14864) )
))
(declare-datatypes ((array!79054 0))(
  ( (array!79055 (arr!38150 (Array (_ BitVec 32) ValueCell!14864)) (size!38687 (_ BitVec 32))) )
))
(declare-fun lt!558113 () array!79054)

(declare-fun minValue!944 () V!46657)

(declare-fun zeroValue!944 () V!46657)

(declare-fun getCurrentListMapNoExtraKeys!5551 (array!79052 array!79054 (_ BitVec 32) (_ BitVec 32) V!46657 V!46657 (_ BitVec 32) Int) ListLongMap!18277)

(assert (=> b!1225119 (= lt!558130 (getCurrentListMapNoExtraKeys!5551 lt!558120 lt!558113 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!79054)

(assert (=> b!1225119 (= lt!558125 (getCurrentListMapNoExtraKeys!5551 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40542 0))(
  ( (Unit!40543) )
))
(declare-fun lt!558128 () Unit!40542)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1192 (array!79052 array!79054 (_ BitVec 32) (_ BitVec 32) V!46657 V!46657 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40542)

(assert (=> b!1225119 (= lt!558128 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1192 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1225120 () Bool)

(declare-fun e!695867 () Bool)

(assert (=> b!1225120 (= e!695867 e!695863)))

(declare-fun res!814226 () Bool)

(assert (=> b!1225120 (=> res!814226 e!695863)))

(assert (=> b!1225120 (= res!814226 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!558116 () ListLongMap!18277)

(assert (=> b!1225120 (= lt!558116 (getCurrentListMapNoExtraKeys!5551 lt!558120 lt!558113 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!558124 () V!46657)

(assert (=> b!1225120 (= lt!558113 (array!79055 (store (arr!38150 _values!996) i!673 (ValueCellFull!14864 lt!558124)) (size!38687 _values!996)))))

(declare-fun dynLambda!3445 (Int (_ BitVec 64)) V!46657)

(assert (=> b!1225120 (= lt!558124 (dynLambda!3445 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!558115 () ListLongMap!18277)

(assert (=> b!1225120 (= lt!558115 (getCurrentListMapNoExtraKeys!5551 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1225122 () Bool)

(declare-fun res!814222 () Bool)

(declare-fun e!695862 () Bool)

(assert (=> b!1225122 (=> (not res!814222) (not e!695862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1225122 (= res!814222 (validMask!0 mask!1564))))

(declare-fun b!1225123 () Bool)

(declare-fun res!814223 () Bool)

(assert (=> b!1225123 (=> (not res!814223) (not e!695862))))

(assert (=> b!1225123 (= res!814223 (validKeyInArray!0 k!934))))

(declare-fun b!1225124 () Bool)

(declare-fun e!695861 () Bool)

(assert (=> b!1225124 (= e!695861 (not e!695867))))

(declare-fun res!814228 () Bool)

(assert (=> b!1225124 (=> res!814228 e!695867)))

(assert (=> b!1225124 (= res!814228 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!79052 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1225124 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!558129 () Unit!40542)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79052 (_ BitVec 64) (_ BitVec 32)) Unit!40542)

(assert (=> b!1225124 (= lt!558129 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1225125 () Bool)

(assert (=> b!1225125 (= e!695862 e!695861)))

(declare-fun res!814225 () Bool)

(assert (=> b!1225125 (=> (not res!814225) (not e!695861))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79052 (_ BitVec 32)) Bool)

(assert (=> b!1225125 (= res!814225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!558120 mask!1564))))

(assert (=> b!1225125 (= lt!558120 (array!79053 (store (arr!38149 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38686 _keys!1208)))))

(declare-fun b!1225126 () Bool)

(declare-fun e!695858 () Bool)

(declare-fun tp_is_empty!31147 () Bool)

(assert (=> b!1225126 (= e!695858 tp_is_empty!31147)))

(declare-fun b!1225127 () Bool)

(declare-fun e!695860 () Bool)

(declare-fun e!695857 () Bool)

(assert (=> b!1225127 (= e!695860 (and e!695857 mapRes!48619))))

(declare-fun condMapEmpty!48619 () Bool)

(declare-fun mapDefault!48619 () ValueCell!14864)


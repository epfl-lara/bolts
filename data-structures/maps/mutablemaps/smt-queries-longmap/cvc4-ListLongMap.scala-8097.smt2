; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99488 () Bool)

(assert start!99488)

(declare-fun b_free!25031 () Bool)

(declare-fun b_next!25031 () Bool)

(assert (=> start!99488 (= b_free!25031 (not b_next!25031))))

(declare-fun tp!87807 () Bool)

(declare-fun b_and!40943 () Bool)

(assert (=> start!99488 (= tp!87807 b_and!40943)))

(declare-fun b!1174841 () Bool)

(declare-fun e!667848 () Bool)

(declare-fun e!667841 () Bool)

(assert (=> b!1174841 (= e!667848 e!667841)))

(declare-fun res!780313 () Bool)

(assert (=> b!1174841 (=> res!780313 e!667841)))

(declare-datatypes ((array!75898 0))(
  ( (array!75899 (arr!36595 (Array (_ BitVec 32) (_ BitVec 64))) (size!37132 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75898)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1174841 (= res!780313 (not (validKeyInArray!0 (select (arr!36595 _keys!1208) from!1455))))))

(declare-datatypes ((V!44541 0))(
  ( (V!44542 (val!14837 Int)) )
))
(declare-datatypes ((tuple2!19072 0))(
  ( (tuple2!19073 (_1!9546 (_ BitVec 64)) (_2!9546 V!44541)) )
))
(declare-datatypes ((List!25841 0))(
  ( (Nil!25838) (Cons!25837 (h!27046 tuple2!19072) (t!37871 List!25841)) )
))
(declare-datatypes ((ListLongMap!17053 0))(
  ( (ListLongMap!17054 (toList!8542 List!25841)) )
))
(declare-fun lt!529866 () ListLongMap!17053)

(declare-fun lt!529869 () ListLongMap!17053)

(assert (=> b!1174841 (= lt!529866 lt!529869)))

(declare-fun lt!529868 () ListLongMap!17053)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1552 (ListLongMap!17053 (_ BitVec 64)) ListLongMap!17053)

(assert (=> b!1174841 (= lt!529869 (-!1552 lt!529868 k!934))))

(declare-fun zeroValue!944 () V!44541)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!529875 () array!75898)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44541)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14071 0))(
  ( (ValueCellFull!14071 (v!17476 V!44541)) (EmptyCell!14071) )
))
(declare-datatypes ((array!75900 0))(
  ( (array!75901 (arr!36596 (Array (_ BitVec 32) ValueCell!14071)) (size!37133 (_ BitVec 32))) )
))
(declare-fun lt!529871 () array!75900)

(declare-fun getCurrentListMapNoExtraKeys!4973 (array!75898 array!75900 (_ BitVec 32) (_ BitVec 32) V!44541 V!44541 (_ BitVec 32) Int) ListLongMap!17053)

(assert (=> b!1174841 (= lt!529866 (getCurrentListMapNoExtraKeys!4973 lt!529875 lt!529871 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75900)

(assert (=> b!1174841 (= lt!529868 (getCurrentListMapNoExtraKeys!4973 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38680 0))(
  ( (Unit!38681) )
))
(declare-fun lt!529878 () Unit!38680)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!776 (array!75898 array!75900 (_ BitVec 32) (_ BitVec 32) V!44541 V!44541 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38680)

(assert (=> b!1174841 (= lt!529878 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!776 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1174842 () Bool)

(declare-fun e!667845 () Bool)

(declare-fun tp_is_empty!29561 () Bool)

(assert (=> b!1174842 (= e!667845 tp_is_empty!29561)))

(declare-fun b!1174843 () Bool)

(declare-fun res!780310 () Bool)

(declare-fun e!667840 () Bool)

(assert (=> b!1174843 (=> (not res!780310) (not e!667840))))

(declare-datatypes ((List!25842 0))(
  ( (Nil!25839) (Cons!25838 (h!27047 (_ BitVec 64)) (t!37872 List!25842)) )
))
(declare-fun arrayNoDuplicates!0 (array!75898 (_ BitVec 32) List!25842) Bool)

(assert (=> b!1174843 (= res!780310 (arrayNoDuplicates!0 lt!529875 #b00000000000000000000000000000000 Nil!25839))))

(declare-fun mapNonEmpty!46169 () Bool)

(declare-fun mapRes!46169 () Bool)

(declare-fun tp!87808 () Bool)

(declare-fun e!667839 () Bool)

(assert (=> mapNonEmpty!46169 (= mapRes!46169 (and tp!87808 e!667839))))

(declare-fun mapKey!46169 () (_ BitVec 32))

(declare-fun mapRest!46169 () (Array (_ BitVec 32) ValueCell!14071))

(declare-fun mapValue!46169 () ValueCell!14071)

(assert (=> mapNonEmpty!46169 (= (arr!36596 _values!996) (store mapRest!46169 mapKey!46169 mapValue!46169))))

(declare-fun b!1174844 () Bool)

(declare-fun e!667846 () Unit!38680)

(declare-fun Unit!38682 () Unit!38680)

(assert (=> b!1174844 (= e!667846 Unit!38682)))

(declare-fun lt!529865 () Unit!38680)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75898 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38680)

(assert (=> b!1174844 (= lt!529865 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!75898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1174844 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!529873 () Unit!38680)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75898 (_ BitVec 32) (_ BitVec 32)) Unit!38680)

(assert (=> b!1174844 (= lt!529873 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1174844 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25839)))

(declare-fun lt!529874 () Unit!38680)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75898 (_ BitVec 64) (_ BitVec 32) List!25842) Unit!38680)

(assert (=> b!1174844 (= lt!529874 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25839))))

(assert (=> b!1174844 false))

(declare-fun b!1174845 () Bool)

(assert (=> b!1174845 (= e!667839 tp_is_empty!29561)))

(declare-fun b!1174846 () Bool)

(declare-fun e!667847 () Bool)

(assert (=> b!1174846 (= e!667847 (and e!667845 mapRes!46169))))

(declare-fun condMapEmpty!46169 () Bool)

(declare-fun mapDefault!46169 () ValueCell!14071)


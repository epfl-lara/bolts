; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99490 () Bool)

(assert start!99490)

(declare-fun b_free!25033 () Bool)

(declare-fun b_next!25033 () Bool)

(assert (=> start!99490 (= b_free!25033 (not b_next!25033))))

(declare-fun tp!87814 () Bool)

(declare-fun b_and!40947 () Bool)

(assert (=> start!99490 (= tp!87814 b_and!40947)))

(declare-fun b!1174903 () Bool)

(declare-fun res!780350 () Bool)

(declare-fun e!667877 () Bool)

(assert (=> b!1174903 (=> (not res!780350) (not e!667877))))

(declare-datatypes ((array!75902 0))(
  ( (array!75903 (arr!36597 (Array (_ BitVec 32) (_ BitVec 64))) (size!37134 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75902)

(declare-datatypes ((List!25843 0))(
  ( (Nil!25840) (Cons!25839 (h!27048 (_ BitVec 64)) (t!37875 List!25843)) )
))
(declare-fun arrayNoDuplicates!0 (array!75902 (_ BitVec 32) List!25843) Bool)

(assert (=> b!1174903 (= res!780350 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25840))))

(declare-fun b!1174904 () Bool)

(declare-fun res!780357 () Bool)

(assert (=> b!1174904 (=> (not res!780357) (not e!667877))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1174904 (= res!780357 (validKeyInArray!0 k!934))))

(declare-fun b!1174905 () Bool)

(declare-fun res!780359 () Bool)

(assert (=> b!1174905 (=> (not res!780359) (not e!667877))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1174905 (= res!780359 (= (select (arr!36597 _keys!1208) i!673) k!934))))

(declare-fun b!1174906 () Bool)

(declare-fun e!667882 () Bool)

(assert (=> b!1174906 (= e!667882 true)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1174906 (not (= (select (arr!36597 _keys!1208) from!1455) k!934))))

(declare-datatypes ((Unit!38683 0))(
  ( (Unit!38684) )
))
(declare-fun lt!529917 () Unit!38683)

(declare-fun e!667874 () Unit!38683)

(assert (=> b!1174906 (= lt!529917 e!667874)))

(declare-fun c!116621 () Bool)

(assert (=> b!1174906 (= c!116621 (= (select (arr!36597 _keys!1208) from!1455) k!934))))

(declare-fun e!667876 () Bool)

(assert (=> b!1174906 e!667876))

(declare-fun res!780360 () Bool)

(assert (=> b!1174906 (=> (not res!780360) (not e!667876))))

(declare-datatypes ((V!44545 0))(
  ( (V!44546 (val!14838 Int)) )
))
(declare-datatypes ((tuple2!19074 0))(
  ( (tuple2!19075 (_1!9547 (_ BitVec 64)) (_2!9547 V!44545)) )
))
(declare-datatypes ((List!25844 0))(
  ( (Nil!25841) (Cons!25840 (h!27049 tuple2!19074) (t!37876 List!25844)) )
))
(declare-datatypes ((ListLongMap!17055 0))(
  ( (ListLongMap!17056 (toList!8543 List!25844)) )
))
(declare-fun lt!529912 () ListLongMap!17055)

(declare-fun lt!529918 () ListLongMap!17055)

(declare-fun lt!529915 () V!44545)

(declare-datatypes ((ValueCell!14072 0))(
  ( (ValueCellFull!14072 (v!17477 V!44545)) (EmptyCell!14072) )
))
(declare-datatypes ((array!75904 0))(
  ( (array!75905 (arr!36598 (Array (_ BitVec 32) ValueCell!14072)) (size!37135 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75904)

(declare-fun +!3772 (ListLongMap!17055 tuple2!19074) ListLongMap!17055)

(declare-fun get!18717 (ValueCell!14072 V!44545) V!44545)

(assert (=> b!1174906 (= res!780360 (= lt!529912 (+!3772 lt!529918 (tuple2!19075 (select (arr!36597 _keys!1208) from!1455) (get!18717 (select (arr!36598 _values!996) from!1455) lt!529915)))))))

(declare-fun mapIsEmpty!46172 () Bool)

(declare-fun mapRes!46172 () Bool)

(assert (=> mapIsEmpty!46172 mapRes!46172))

(declare-fun b!1174907 () Bool)

(declare-fun res!780361 () Bool)

(declare-fun e!667881 () Bool)

(assert (=> b!1174907 (=> (not res!780361) (not e!667881))))

(declare-fun lt!529916 () array!75902)

(assert (=> b!1174907 (= res!780361 (arrayNoDuplicates!0 lt!529916 #b00000000000000000000000000000000 Nil!25840))))

(declare-fun mapNonEmpty!46172 () Bool)

(declare-fun tp!87813 () Bool)

(declare-fun e!667884 () Bool)

(assert (=> mapNonEmpty!46172 (= mapRes!46172 (and tp!87813 e!667884))))

(declare-fun mapValue!46172 () ValueCell!14072)

(declare-fun mapRest!46172 () (Array (_ BitVec 32) ValueCell!14072))

(declare-fun mapKey!46172 () (_ BitVec 32))

(assert (=> mapNonEmpty!46172 (= (arr!36598 _values!996) (store mapRest!46172 mapKey!46172 mapValue!46172))))

(declare-fun b!1174908 () Bool)

(declare-fun res!780356 () Bool)

(assert (=> b!1174908 (=> (not res!780356) (not e!667877))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1174908 (= res!780356 (validMask!0 mask!1564))))

(declare-fun b!1174909 () Bool)

(declare-fun Unit!38685 () Unit!38683)

(assert (=> b!1174909 (= e!667874 Unit!38685)))

(declare-fun lt!529908 () Unit!38683)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75902 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38683)

(assert (=> b!1174909 (= lt!529908 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!75902 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1174909 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!529919 () Unit!38683)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75902 (_ BitVec 32) (_ BitVec 32)) Unit!38683)

(assert (=> b!1174909 (= lt!529919 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1174909 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25840)))

(declare-fun lt!529920 () Unit!38683)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75902 (_ BitVec 64) (_ BitVec 32) List!25843) Unit!38683)

(assert (=> b!1174909 (= lt!529920 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25840))))

(assert (=> b!1174909 false))

(declare-fun b!1174910 () Bool)

(declare-fun res!780354 () Bool)

(assert (=> b!1174910 (=> (not res!780354) (not e!667877))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75902 (_ BitVec 32)) Bool)

(assert (=> b!1174910 (= res!780354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1174911 () Bool)

(declare-fun Unit!38686 () Unit!38683)

(assert (=> b!1174911 (= e!667874 Unit!38686)))

(declare-fun b!1174912 () Bool)

(declare-fun e!667875 () Bool)

(assert (=> b!1174912 (= e!667881 (not e!667875))))

(declare-fun res!780351 () Bool)

(assert (=> b!1174912 (=> res!780351 e!667875)))

(assert (=> b!1174912 (= res!780351 (bvsgt from!1455 i!673))))

(assert (=> b!1174912 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!529907 () Unit!38683)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75902 (_ BitVec 64) (_ BitVec 32)) Unit!38683)

(assert (=> b!1174912 (= lt!529907 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1174913 () Bool)

(declare-fun res!780348 () Bool)

(assert (=> b!1174913 (=> (not res!780348) (not e!667877))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1174913 (= res!780348 (and (= (size!37135 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37134 _keys!1208) (size!37135 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1174914 () Bool)

(declare-fun e!667878 () Bool)

(assert (=> b!1174914 (= e!667876 e!667878)))

(declare-fun res!780358 () Bool)

(assert (=> b!1174914 (=> res!780358 e!667878)))

(assert (=> b!1174914 (= res!780358 (not (= (select (arr!36597 _keys!1208) from!1455) k!934)))))

(declare-fun b!1174915 () Bool)

(declare-fun e!667879 () Bool)

(declare-fun tp_is_empty!29563 () Bool)

(assert (=> b!1174915 (= e!667879 tp_is_empty!29563)))

(declare-fun b!1174916 () Bool)

(assert (=> b!1174916 (= e!667878 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1174917 () Bool)

(declare-fun res!780349 () Bool)

(assert (=> b!1174917 (=> (not res!780349) (not e!667877))))

(assert (=> b!1174917 (= res!780349 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37134 _keys!1208))))))

(declare-fun res!780353 () Bool)

(assert (=> start!99490 (=> (not res!780353) (not e!667877))))

(assert (=> start!99490 (= res!780353 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37134 _keys!1208))))))

(assert (=> start!99490 e!667877))

(assert (=> start!99490 tp_is_empty!29563))

(declare-fun array_inv!27838 (array!75902) Bool)

(assert (=> start!99490 (array_inv!27838 _keys!1208)))

(assert (=> start!99490 true))

(assert (=> start!99490 tp!87814))

(declare-fun e!667883 () Bool)

(declare-fun array_inv!27839 (array!75904) Bool)

(assert (=> start!99490 (and (array_inv!27839 _values!996) e!667883)))

(declare-fun b!1174918 () Bool)

(assert (=> b!1174918 (= e!667877 e!667881)))

(declare-fun res!780352 () Bool)

(assert (=> b!1174918 (=> (not res!780352) (not e!667881))))

(assert (=> b!1174918 (= res!780352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!529916 mask!1564))))

(assert (=> b!1174918 (= lt!529916 (array!75903 (store (arr!36597 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37134 _keys!1208)))))

(declare-fun b!1174919 () Bool)

(assert (=> b!1174919 (= e!667884 tp_is_empty!29563)))

(declare-fun b!1174920 () Bool)

(declare-fun e!667885 () Bool)

(assert (=> b!1174920 (= e!667875 e!667885)))

(declare-fun res!780347 () Bool)

(assert (=> b!1174920 (=> res!780347 e!667885)))

(assert (=> b!1174920 (= res!780347 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!529913 () array!75904)

(declare-fun minValue!944 () V!44545)

(declare-fun zeroValue!944 () V!44545)

(declare-fun getCurrentListMapNoExtraKeys!4974 (array!75902 array!75904 (_ BitVec 32) (_ BitVec 32) V!44545 V!44545 (_ BitVec 32) Int) ListLongMap!17055)

(assert (=> b!1174920 (= lt!529912 (getCurrentListMapNoExtraKeys!4974 lt!529916 lt!529913 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1174920 (= lt!529913 (array!75905 (store (arr!36598 _values!996) i!673 (ValueCellFull!14072 lt!529915)) (size!37135 _values!996)))))

(declare-fun dynLambda!2954 (Int (_ BitVec 64)) V!44545)

(assert (=> b!1174920 (= lt!529915 (dynLambda!2954 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!529911 () ListLongMap!17055)

(assert (=> b!1174920 (= lt!529911 (getCurrentListMapNoExtraKeys!4974 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1174921 () Bool)

(assert (=> b!1174921 (= e!667883 (and e!667879 mapRes!46172))))

(declare-fun condMapEmpty!46172 () Bool)

(declare-fun mapDefault!46172 () ValueCell!14072)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99502 () Bool)

(assert start!99502)

(declare-fun b_free!25045 () Bool)

(declare-fun b_next!25045 () Bool)

(assert (=> start!99502 (= b_free!25045 (not b_next!25045))))

(declare-fun tp!87850 () Bool)

(declare-fun b_and!40971 () Bool)

(assert (=> start!99502 (= tp!87850 b_and!40971)))

(declare-fun mapIsEmpty!46190 () Bool)

(declare-fun mapRes!46190 () Bool)

(assert (=> mapIsEmpty!46190 mapRes!46190))

(declare-fun b!1175275 () Bool)

(declare-fun res!780626 () Bool)

(declare-fun e!668101 () Bool)

(assert (=> b!1175275 (=> (not res!780626) (not e!668101))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75926 0))(
  ( (array!75927 (arr!36609 (Array (_ BitVec 32) (_ BitVec 64))) (size!37146 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75926)

(assert (=> b!1175275 (= res!780626 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37146 _keys!1208))))))

(declare-fun b!1175276 () Bool)

(declare-fun e!668090 () Bool)

(declare-fun e!668093 () Bool)

(assert (=> b!1175276 (= e!668090 e!668093)))

(declare-fun res!780620 () Bool)

(assert (=> b!1175276 (=> res!780620 e!668093)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1175276 (= res!780620 (not (validKeyInArray!0 (select (arr!36609 _keys!1208) from!1455))))))

(declare-datatypes ((V!44561 0))(
  ( (V!44562 (val!14844 Int)) )
))
(declare-datatypes ((tuple2!19086 0))(
  ( (tuple2!19087 (_1!9553 (_ BitVec 64)) (_2!9553 V!44561)) )
))
(declare-datatypes ((List!25855 0))(
  ( (Nil!25852) (Cons!25851 (h!27060 tuple2!19086) (t!37899 List!25855)) )
))
(declare-datatypes ((ListLongMap!17067 0))(
  ( (ListLongMap!17068 (toList!8549 List!25855)) )
))
(declare-fun lt!530161 () ListLongMap!17067)

(declare-fun lt!530163 () ListLongMap!17067)

(assert (=> b!1175276 (= lt!530161 lt!530163)))

(declare-fun lt!530162 () ListLongMap!17067)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1556 (ListLongMap!17067 (_ BitVec 64)) ListLongMap!17067)

(assert (=> b!1175276 (= lt!530163 (-!1556 lt!530162 k!934))))

(declare-fun zeroValue!944 () V!44561)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!530170 () array!75926)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44561)

(declare-datatypes ((ValueCell!14078 0))(
  ( (ValueCellFull!14078 (v!17483 V!44561)) (EmptyCell!14078) )
))
(declare-datatypes ((array!75928 0))(
  ( (array!75929 (arr!36610 (Array (_ BitVec 32) ValueCell!14078)) (size!37147 (_ BitVec 32))) )
))
(declare-fun lt!530167 () array!75928)

(declare-fun getCurrentListMapNoExtraKeys!4980 (array!75926 array!75928 (_ BitVec 32) (_ BitVec 32) V!44561 V!44561 (_ BitVec 32) Int) ListLongMap!17067)

(assert (=> b!1175276 (= lt!530161 (getCurrentListMapNoExtraKeys!4980 lt!530170 lt!530167 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75928)

(assert (=> b!1175276 (= lt!530162 (getCurrentListMapNoExtraKeys!4980 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38705 0))(
  ( (Unit!38706) )
))
(declare-fun lt!530168 () Unit!38705)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!780 (array!75926 array!75928 (_ BitVec 32) (_ BitVec 32) V!44561 V!44561 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38705)

(assert (=> b!1175276 (= lt!530168 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!780 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1175278 () Bool)

(declare-fun e!668092 () Bool)

(assert (=> b!1175278 (= e!668092 e!668090)))

(declare-fun res!780623 () Bool)

(assert (=> b!1175278 (=> res!780623 e!668090)))

(assert (=> b!1175278 (= res!780623 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!530160 () ListLongMap!17067)

(assert (=> b!1175278 (= lt!530160 (getCurrentListMapNoExtraKeys!4980 lt!530170 lt!530167 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!530164 () V!44561)

(assert (=> b!1175278 (= lt!530167 (array!75929 (store (arr!36610 _values!996) i!673 (ValueCellFull!14078 lt!530164)) (size!37147 _values!996)))))

(declare-fun dynLambda!2960 (Int (_ BitVec 64)) V!44561)

(assert (=> b!1175278 (= lt!530164 (dynLambda!2960 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!530165 () ListLongMap!17067)

(assert (=> b!1175278 (= lt!530165 (getCurrentListMapNoExtraKeys!4980 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1175279 () Bool)

(declare-fun e!668095 () Bool)

(declare-fun arrayContainsKey!0 (array!75926 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1175279 (= e!668095 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1175280 () Bool)

(declare-fun res!780621 () Bool)

(assert (=> b!1175280 (=> (not res!780621) (not e!668101))))

(assert (=> b!1175280 (= res!780621 (and (= (size!37147 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37146 _keys!1208) (size!37147 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1175281 () Bool)

(declare-fun e!668099 () Bool)

(declare-fun tp_is_empty!29575 () Bool)

(assert (=> b!1175281 (= e!668099 tp_is_empty!29575)))

(declare-fun b!1175282 () Bool)

(declare-fun e!668091 () Bool)

(declare-fun e!668094 () Bool)

(assert (=> b!1175282 (= e!668091 (and e!668094 mapRes!46190))))

(declare-fun condMapEmpty!46190 () Bool)

(declare-fun mapDefault!46190 () ValueCell!14078)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99446 () Bool)

(assert start!99446)

(declare-fun b_free!24989 () Bool)

(declare-fun b_next!24989 () Bool)

(assert (=> start!99446 (= b_free!24989 (not b_next!24989))))

(declare-fun tp!87681 () Bool)

(declare-fun b_and!40859 () Bool)

(assert (=> start!99446 (= tp!87681 b_and!40859)))

(declare-fun b!1173539 () Bool)

(declare-fun res!779370 () Bool)

(declare-fun e!667091 () Bool)

(assert (=> b!1173539 (=> (not res!779370) (not e!667091))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1173539 (= res!779370 (validMask!0 mask!1564))))

(declare-fun b!1173540 () Bool)

(declare-fun e!667093 () Bool)

(declare-fun tp_is_empty!29519 () Bool)

(assert (=> b!1173540 (= e!667093 tp_is_empty!29519)))

(declare-fun b!1173541 () Bool)

(declare-fun e!667082 () Bool)

(declare-fun e!667092 () Bool)

(assert (=> b!1173541 (= e!667082 e!667092)))

(declare-fun res!779371 () Bool)

(assert (=> b!1173541 (=> res!779371 e!667092)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1173541 (= res!779371 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44485 0))(
  ( (V!44486 (val!14816 Int)) )
))
(declare-fun zeroValue!944 () V!44485)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19034 0))(
  ( (tuple2!19035 (_1!9527 (_ BitVec 64)) (_2!9527 V!44485)) )
))
(declare-datatypes ((List!25807 0))(
  ( (Nil!25804) (Cons!25803 (h!27012 tuple2!19034) (t!37795 List!25807)) )
))
(declare-datatypes ((ListLongMap!17015 0))(
  ( (ListLongMap!17016 (toList!8523 List!25807)) )
))
(declare-fun lt!528990 () ListLongMap!17015)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14050 0))(
  ( (ValueCellFull!14050 (v!17455 V!44485)) (EmptyCell!14050) )
))
(declare-datatypes ((array!75814 0))(
  ( (array!75815 (arr!36553 (Array (_ BitVec 32) ValueCell!14050)) (size!37090 (_ BitVec 32))) )
))
(declare-fun lt!528988 () array!75814)

(declare-datatypes ((array!75816 0))(
  ( (array!75817 (arr!36554 (Array (_ BitVec 32) (_ BitVec 64))) (size!37091 (_ BitVec 32))) )
))
(declare-fun lt!528994 () array!75816)

(declare-fun minValue!944 () V!44485)

(declare-fun getCurrentListMapNoExtraKeys!4955 (array!75816 array!75814 (_ BitVec 32) (_ BitVec 32) V!44485 V!44485 (_ BitVec 32) Int) ListLongMap!17015)

(assert (=> b!1173541 (= lt!528990 (getCurrentListMapNoExtraKeys!4955 lt!528994 lt!528988 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!528993 () V!44485)

(declare-fun _values!996 () array!75814)

(assert (=> b!1173541 (= lt!528988 (array!75815 (store (arr!36553 _values!996) i!673 (ValueCellFull!14050 lt!528993)) (size!37090 _values!996)))))

(declare-fun dynLambda!2939 (Int (_ BitVec 64)) V!44485)

(assert (=> b!1173541 (= lt!528993 (dynLambda!2939 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!75816)

(declare-fun lt!528983 () ListLongMap!17015)

(assert (=> b!1173541 (= lt!528983 (getCurrentListMapNoExtraKeys!4955 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1173542 () Bool)

(declare-fun res!779367 () Bool)

(assert (=> b!1173542 (=> (not res!779367) (not e!667091))))

(assert (=> b!1173542 (= res!779367 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37091 _keys!1208))))))

(declare-fun mapIsEmpty!46106 () Bool)

(declare-fun mapRes!46106 () Bool)

(assert (=> mapIsEmpty!46106 mapRes!46106))

(declare-fun e!667087 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1173543 () Bool)

(declare-fun arrayContainsKey!0 (array!75816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1173543 (= e!667087 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1173544 () Bool)

(declare-fun res!779358 () Bool)

(assert (=> b!1173544 (=> (not res!779358) (not e!667091))))

(declare-datatypes ((List!25808 0))(
  ( (Nil!25805) (Cons!25804 (h!27013 (_ BitVec 64)) (t!37796 List!25808)) )
))
(declare-fun arrayNoDuplicates!0 (array!75816 (_ BitVec 32) List!25808) Bool)

(assert (=> b!1173544 (= res!779358 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25805))))

(declare-fun b!1173545 () Bool)

(declare-fun e!667089 () Bool)

(assert (=> b!1173545 (= e!667089 true)))

(assert (=> b!1173545 (not (= (select (arr!36554 _keys!1208) from!1455) k!934))))

(declare-datatypes ((Unit!38612 0))(
  ( (Unit!38613) )
))
(declare-fun lt!528985 () Unit!38612)

(declare-fun e!667083 () Unit!38612)

(assert (=> b!1173545 (= lt!528985 e!667083)))

(declare-fun c!116555 () Bool)

(assert (=> b!1173545 (= c!116555 (= (select (arr!36554 _keys!1208) from!1455) k!934))))

(declare-fun e!667090 () Bool)

(assert (=> b!1173545 e!667090))

(declare-fun res!779363 () Bool)

(assert (=> b!1173545 (=> (not res!779363) (not e!667090))))

(declare-fun lt!528987 () ListLongMap!17015)

(declare-fun +!3757 (ListLongMap!17015 tuple2!19034) ListLongMap!17015)

(declare-fun get!18686 (ValueCell!14050 V!44485) V!44485)

(assert (=> b!1173545 (= res!779363 (= lt!528990 (+!3757 lt!528987 (tuple2!19035 (select (arr!36554 _keys!1208) from!1455) (get!18686 (select (arr!36553 _values!996) from!1455) lt!528993)))))))

(declare-fun b!1173546 () Bool)

(declare-fun e!667085 () Bool)

(assert (=> b!1173546 (= e!667091 e!667085)))

(declare-fun res!779368 () Bool)

(assert (=> b!1173546 (=> (not res!779368) (not e!667085))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75816 (_ BitVec 32)) Bool)

(assert (=> b!1173546 (= res!779368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528994 mask!1564))))

(assert (=> b!1173546 (= lt!528994 (array!75817 (store (arr!36554 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37091 _keys!1208)))))

(declare-fun mapNonEmpty!46106 () Bool)

(declare-fun tp!87682 () Bool)

(declare-fun e!667086 () Bool)

(assert (=> mapNonEmpty!46106 (= mapRes!46106 (and tp!87682 e!667086))))

(declare-fun mapValue!46106 () ValueCell!14050)

(declare-fun mapKey!46106 () (_ BitVec 32))

(declare-fun mapRest!46106 () (Array (_ BitVec 32) ValueCell!14050))

(assert (=> mapNonEmpty!46106 (= (arr!36553 _values!996) (store mapRest!46106 mapKey!46106 mapValue!46106))))

(declare-fun b!1173547 () Bool)

(assert (=> b!1173547 (= e!667092 e!667089)))

(declare-fun res!779362 () Bool)

(assert (=> b!1173547 (=> res!779362 e!667089)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1173547 (= res!779362 (not (validKeyInArray!0 (select (arr!36554 _keys!1208) from!1455))))))

(declare-fun lt!528986 () ListLongMap!17015)

(assert (=> b!1173547 (= lt!528986 lt!528987)))

(declare-fun lt!528989 () ListLongMap!17015)

(declare-fun -!1535 (ListLongMap!17015 (_ BitVec 64)) ListLongMap!17015)

(assert (=> b!1173547 (= lt!528987 (-!1535 lt!528989 k!934))))

(assert (=> b!1173547 (= lt!528986 (getCurrentListMapNoExtraKeys!4955 lt!528994 lt!528988 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1173547 (= lt!528989 (getCurrentListMapNoExtraKeys!4955 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!528995 () Unit!38612)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!759 (array!75816 array!75814 (_ BitVec 32) (_ BitVec 32) V!44485 V!44485 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38612)

(assert (=> b!1173547 (= lt!528995 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!759 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1173548 () Bool)

(assert (=> b!1173548 (= e!667085 (not e!667082))))

(declare-fun res!779366 () Bool)

(assert (=> b!1173548 (=> res!779366 e!667082)))

(assert (=> b!1173548 (= res!779366 (bvsgt from!1455 i!673))))

(assert (=> b!1173548 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!528996 () Unit!38612)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75816 (_ BitVec 64) (_ BitVec 32)) Unit!38612)

(assert (=> b!1173548 (= lt!528996 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!779364 () Bool)

(assert (=> start!99446 (=> (not res!779364) (not e!667091))))

(assert (=> start!99446 (= res!779364 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37091 _keys!1208))))))

(assert (=> start!99446 e!667091))

(assert (=> start!99446 tp_is_empty!29519))

(declare-fun array_inv!27814 (array!75816) Bool)

(assert (=> start!99446 (array_inv!27814 _keys!1208)))

(assert (=> start!99446 true))

(assert (=> start!99446 tp!87681))

(declare-fun e!667084 () Bool)

(declare-fun array_inv!27815 (array!75814) Bool)

(assert (=> start!99446 (and (array_inv!27815 _values!996) e!667084)))

(declare-fun b!1173549 () Bool)

(declare-fun res!779365 () Bool)

(assert (=> b!1173549 (=> (not res!779365) (not e!667085))))

(assert (=> b!1173549 (= res!779365 (arrayNoDuplicates!0 lt!528994 #b00000000000000000000000000000000 Nil!25805))))

(declare-fun b!1173550 () Bool)

(declare-fun Unit!38614 () Unit!38612)

(assert (=> b!1173550 (= e!667083 Unit!38614)))

(declare-fun b!1173551 () Bool)

(declare-fun res!779360 () Bool)

(assert (=> b!1173551 (=> (not res!779360) (not e!667091))))

(assert (=> b!1173551 (= res!779360 (validKeyInArray!0 k!934))))

(declare-fun b!1173552 () Bool)

(assert (=> b!1173552 (= e!667084 (and e!667093 mapRes!46106))))

(declare-fun condMapEmpty!46106 () Bool)

(declare-fun mapDefault!46106 () ValueCell!14050)


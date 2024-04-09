; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99622 () Bool)

(assert start!99622)

(declare-fun b_free!25165 () Bool)

(declare-fun b_next!25165 () Bool)

(assert (=> start!99622 (= b_free!25165 (not b_next!25165))))

(declare-fun tp!88210 () Bool)

(declare-fun b_and!41211 () Bool)

(assert (=> start!99622 (= tp!88210 b_and!41211)))

(declare-fun b!1179141 () Bool)

(declare-fun e!670405 () Bool)

(declare-fun tp_is_empty!29695 () Bool)

(assert (=> b!1179141 (= e!670405 tp_is_empty!29695)))

(declare-fun b!1179143 () Bool)

(declare-fun e!670408 () Bool)

(assert (=> b!1179143 (= e!670408 tp_is_empty!29695)))

(declare-datatypes ((V!44721 0))(
  ( (V!44722 (val!14904 Int)) )
))
(declare-datatypes ((tuple2!19200 0))(
  ( (tuple2!19201 (_1!9610 (_ BitVec 64)) (_2!9610 V!44721)) )
))
(declare-datatypes ((List!25964 0))(
  ( (Nil!25961) (Cons!25960 (h!27169 tuple2!19200) (t!38128 List!25964)) )
))
(declare-datatypes ((ListLongMap!17181 0))(
  ( (ListLongMap!17182 (toList!8606 List!25964)) )
))
(declare-fun lt!532833 () ListLongMap!17181)

(declare-fun e!670398 () Bool)

(declare-fun b!1179144 () Bool)

(declare-fun lt!532834 () ListLongMap!17181)

(declare-fun lt!532831 () tuple2!19200)

(declare-fun +!3827 (ListLongMap!17181 tuple2!19200) ListLongMap!17181)

(assert (=> b!1179144 (= e!670398 (= lt!532834 (+!3827 lt!532833 lt!532831)))))

(declare-fun b!1179145 () Bool)

(declare-datatypes ((Unit!38895 0))(
  ( (Unit!38896) )
))
(declare-fun e!670402 () Unit!38895)

(declare-fun Unit!38897 () Unit!38895)

(assert (=> b!1179145 (= e!670402 Unit!38897)))

(declare-fun b!1179146 () Bool)

(declare-fun e!670407 () Bool)

(assert (=> b!1179146 (= e!670407 true)))

(assert (=> b!1179146 e!670398))

(declare-fun res!783476 () Bool)

(assert (=> b!1179146 (=> (not res!783476) (not e!670398))))

(declare-datatypes ((array!76162 0))(
  ( (array!76163 (arr!36727 (Array (_ BitVec 32) (_ BitVec 64))) (size!37264 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76162)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1179146 (= res!783476 (not (= (select (arr!36727 _keys!1208) from!1455) k!934)))))

(declare-fun lt!532830 () Unit!38895)

(assert (=> b!1179146 (= lt!532830 e!670402)))

(declare-fun c!116819 () Bool)

(assert (=> b!1179146 (= c!116819 (= (select (arr!36727 _keys!1208) from!1455) k!934))))

(declare-fun e!670396 () Bool)

(assert (=> b!1179146 e!670396))

(declare-fun res!783467 () Bool)

(assert (=> b!1179146 (=> (not res!783467) (not e!670396))))

(declare-fun lt!532828 () ListLongMap!17181)

(declare-fun lt!532825 () ListLongMap!17181)

(assert (=> b!1179146 (= res!783467 (= lt!532825 (+!3827 lt!532828 lt!532831)))))

(declare-fun lt!532839 () V!44721)

(declare-datatypes ((ValueCell!14138 0))(
  ( (ValueCellFull!14138 (v!17543 V!44721)) (EmptyCell!14138) )
))
(declare-datatypes ((array!76164 0))(
  ( (array!76165 (arr!36728 (Array (_ BitVec 32) ValueCell!14138)) (size!37265 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76164)

(declare-fun get!18809 (ValueCell!14138 V!44721) V!44721)

(assert (=> b!1179146 (= lt!532831 (tuple2!19201 (select (arr!36727 _keys!1208) from!1455) (get!18809 (select (arr!36728 _values!996) from!1455) lt!532839)))))

(declare-fun b!1179147 () Bool)

(declare-fun res!783477 () Bool)

(declare-fun e!670401 () Bool)

(assert (=> b!1179147 (=> (not res!783477) (not e!670401))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1179147 (= res!783477 (validMask!0 mask!1564))))

(declare-fun b!1179148 () Bool)

(declare-fun e!670397 () Bool)

(assert (=> b!1179148 (= e!670401 e!670397)))

(declare-fun res!783466 () Bool)

(assert (=> b!1179148 (=> (not res!783466) (not e!670397))))

(declare-fun lt!532836 () array!76162)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76162 (_ BitVec 32)) Bool)

(assert (=> b!1179148 (= res!783466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!532836 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1179148 (= lt!532836 (array!76163 (store (arr!36727 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37264 _keys!1208)))))

(declare-fun e!670399 () Bool)

(declare-fun b!1179149 () Bool)

(declare-fun arrayContainsKey!0 (array!76162 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1179149 (= e!670399 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1179150 () Bool)

(declare-fun e!670403 () Bool)

(assert (=> b!1179150 (= e!670403 e!670407)))

(declare-fun res!783464 () Bool)

(assert (=> b!1179150 (=> res!783464 e!670407)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1179150 (= res!783464 (not (validKeyInArray!0 (select (arr!36727 _keys!1208) from!1455))))))

(declare-fun lt!532835 () ListLongMap!17181)

(assert (=> b!1179150 (= lt!532835 lt!532828)))

(declare-fun -!1601 (ListLongMap!17181 (_ BitVec 64)) ListLongMap!17181)

(assert (=> b!1179150 (= lt!532828 (-!1601 lt!532833 k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun zeroValue!944 () V!44721)

(declare-fun lt!532829 () array!76164)

(declare-fun minValue!944 () V!44721)

(declare-fun getCurrentListMapNoExtraKeys!5034 (array!76162 array!76164 (_ BitVec 32) (_ BitVec 32) V!44721 V!44721 (_ BitVec 32) Int) ListLongMap!17181)

(assert (=> b!1179150 (= lt!532835 (getCurrentListMapNoExtraKeys!5034 lt!532836 lt!532829 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1179150 (= lt!532833 (getCurrentListMapNoExtraKeys!5034 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!532827 () Unit!38895)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!825 (array!76162 array!76164 (_ BitVec 32) (_ BitVec 32) V!44721 V!44721 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38895)

(assert (=> b!1179150 (= lt!532827 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!825 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1179151 () Bool)

(declare-fun res!783470 () Bool)

(assert (=> b!1179151 (=> (not res!783470) (not e!670401))))

(assert (=> b!1179151 (= res!783470 (validKeyInArray!0 k!934))))

(declare-fun b!1179152 () Bool)

(declare-fun res!783471 () Bool)

(assert (=> b!1179152 (=> (not res!783471) (not e!670401))))

(assert (=> b!1179152 (= res!783471 (= (select (arr!36727 _keys!1208) i!673) k!934))))

(declare-fun b!1179142 () Bool)

(declare-fun res!783468 () Bool)

(assert (=> b!1179142 (=> (not res!783468) (not e!670401))))

(assert (=> b!1179142 (= res!783468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!783472 () Bool)

(assert (=> start!99622 (=> (not res!783472) (not e!670401))))

(assert (=> start!99622 (= res!783472 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37264 _keys!1208))))))

(assert (=> start!99622 e!670401))

(assert (=> start!99622 tp_is_empty!29695))

(declare-fun array_inv!27932 (array!76162) Bool)

(assert (=> start!99622 (array_inv!27932 _keys!1208)))

(assert (=> start!99622 true))

(assert (=> start!99622 tp!88210))

(declare-fun e!670404 () Bool)

(declare-fun array_inv!27933 (array!76164) Bool)

(assert (=> start!99622 (and (array_inv!27933 _values!996) e!670404)))

(declare-fun mapIsEmpty!46370 () Bool)

(declare-fun mapRes!46370 () Bool)

(assert (=> mapIsEmpty!46370 mapRes!46370))

(declare-fun b!1179153 () Bool)

(assert (=> b!1179153 (= e!670396 e!670399)))

(declare-fun res!783469 () Bool)

(assert (=> b!1179153 (=> res!783469 e!670399)))

(assert (=> b!1179153 (= res!783469 (not (= (select (arr!36727 _keys!1208) from!1455) k!934)))))

(declare-fun b!1179154 () Bool)

(declare-fun res!783465 () Bool)

(assert (=> b!1179154 (=> (not res!783465) (not e!670401))))

(assert (=> b!1179154 (= res!783465 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37264 _keys!1208))))))

(declare-fun b!1179155 () Bool)

(declare-fun Unit!38898 () Unit!38895)

(assert (=> b!1179155 (= e!670402 Unit!38898)))

(declare-fun lt!532837 () Unit!38895)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76162 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38895)

(assert (=> b!1179155 (= lt!532837 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1179155 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!532832 () Unit!38895)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76162 (_ BitVec 32) (_ BitVec 32)) Unit!38895)

(assert (=> b!1179155 (= lt!532832 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25965 0))(
  ( (Nil!25962) (Cons!25961 (h!27170 (_ BitVec 64)) (t!38129 List!25965)) )
))
(declare-fun arrayNoDuplicates!0 (array!76162 (_ BitVec 32) List!25965) Bool)

(assert (=> b!1179155 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25962)))

(declare-fun lt!532838 () Unit!38895)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76162 (_ BitVec 64) (_ BitVec 32) List!25965) Unit!38895)

(assert (=> b!1179155 (= lt!532838 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25962))))

(assert (=> b!1179155 false))

(declare-fun b!1179156 () Bool)

(declare-fun res!783474 () Bool)

(assert (=> b!1179156 (=> (not res!783474) (not e!670397))))

(assert (=> b!1179156 (= res!783474 (arrayNoDuplicates!0 lt!532836 #b00000000000000000000000000000000 Nil!25962))))

(declare-fun mapNonEmpty!46370 () Bool)

(declare-fun tp!88209 () Bool)

(assert (=> mapNonEmpty!46370 (= mapRes!46370 (and tp!88209 e!670405))))

(declare-fun mapValue!46370 () ValueCell!14138)

(declare-fun mapRest!46370 () (Array (_ BitVec 32) ValueCell!14138))

(declare-fun mapKey!46370 () (_ BitVec 32))

(assert (=> mapNonEmpty!46370 (= (arr!36728 _values!996) (store mapRest!46370 mapKey!46370 mapValue!46370))))

(declare-fun b!1179157 () Bool)

(declare-fun e!670406 () Bool)

(assert (=> b!1179157 (= e!670406 e!670403)))

(declare-fun res!783478 () Bool)

(assert (=> b!1179157 (=> res!783478 e!670403)))

(assert (=> b!1179157 (= res!783478 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1179157 (= lt!532825 (getCurrentListMapNoExtraKeys!5034 lt!532836 lt!532829 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1179157 (= lt!532829 (array!76165 (store (arr!36728 _values!996) i!673 (ValueCellFull!14138 lt!532839)) (size!37265 _values!996)))))

(declare-fun dynLambda!3007 (Int (_ BitVec 64)) V!44721)

(assert (=> b!1179157 (= lt!532839 (dynLambda!3007 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1179157 (= lt!532834 (getCurrentListMapNoExtraKeys!5034 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1179158 () Bool)

(declare-fun res!783463 () Bool)

(assert (=> b!1179158 (=> (not res!783463) (not e!670401))))

(assert (=> b!1179158 (= res!783463 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25962))))

(declare-fun b!1179159 () Bool)

(assert (=> b!1179159 (= e!670397 (not e!670406))))

(declare-fun res!783475 () Bool)

(assert (=> b!1179159 (=> res!783475 e!670406)))

(assert (=> b!1179159 (= res!783475 (bvsgt from!1455 i!673))))

(assert (=> b!1179159 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!532826 () Unit!38895)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76162 (_ BitVec 64) (_ BitVec 32)) Unit!38895)

(assert (=> b!1179159 (= lt!532826 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1179160 () Bool)

(declare-fun res!783473 () Bool)

(assert (=> b!1179160 (=> (not res!783473) (not e!670401))))

(assert (=> b!1179160 (= res!783473 (and (= (size!37265 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37264 _keys!1208) (size!37265 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1179161 () Bool)

(assert (=> b!1179161 (= e!670404 (and e!670408 mapRes!46370))))

(declare-fun condMapEmpty!46370 () Bool)

(declare-fun mapDefault!46370 () ValueCell!14138)


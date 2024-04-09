; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99822 () Bool)

(assert start!99822)

(declare-fun b_free!25365 () Bool)

(declare-fun b_next!25365 () Bool)

(assert (=> start!99822 (= b_free!25365 (not b_next!25365))))

(declare-fun tp!88810 () Bool)

(declare-fun b_and!41611 () Bool)

(assert (=> start!99822 (= tp!88810 b_and!41611)))

(declare-fun b!1185537 () Bool)

(declare-fun e!674102 () Bool)

(declare-fun e!674112 () Bool)

(declare-fun mapRes!46670 () Bool)

(assert (=> b!1185537 (= e!674102 (and e!674112 mapRes!46670))))

(declare-fun condMapEmpty!46670 () Bool)

(declare-datatypes ((V!44987 0))(
  ( (V!44988 (val!15004 Int)) )
))
(declare-datatypes ((ValueCell!14238 0))(
  ( (ValueCellFull!14238 (v!17643 V!44987)) (EmptyCell!14238) )
))
(declare-datatypes ((array!76558 0))(
  ( (array!76559 (arr!36925 (Array (_ BitVec 32) ValueCell!14238)) (size!37462 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76558)

(declare-fun mapDefault!46670 () ValueCell!14238)

(assert (=> b!1185537 (= condMapEmpty!46670 (= (arr!36925 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14238)) mapDefault!46670)))))

(declare-fun b!1185538 () Bool)

(declare-fun res!788162 () Bool)

(declare-fun e!674107 () Bool)

(assert (=> b!1185538 (=> (not res!788162) (not e!674107))))

(declare-datatypes ((array!76560 0))(
  ( (array!76561 (arr!36926 (Array (_ BitVec 32) (_ BitVec 64))) (size!37463 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76560)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1185538 (= res!788162 (and (= (size!37462 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37463 _keys!1208) (size!37462 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1185539 () Bool)

(declare-fun res!788165 () Bool)

(assert (=> b!1185539 (=> (not res!788165) (not e!674107))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1185539 (= res!788165 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37463 _keys!1208))))))

(declare-fun b!1185540 () Bool)

(declare-fun e!674113 () Bool)

(declare-fun e!674104 () Bool)

(assert (=> b!1185540 (= e!674113 e!674104)))

(declare-fun res!788169 () Bool)

(assert (=> b!1185540 (=> res!788169 e!674104)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1185540 (= res!788169 (not (validKeyInArray!0 (select (arr!36926 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19372 0))(
  ( (tuple2!19373 (_1!9696 (_ BitVec 64)) (_2!9696 V!44987)) )
))
(declare-datatypes ((List!26133 0))(
  ( (Nil!26130) (Cons!26129 (h!27338 tuple2!19372) (t!38497 List!26133)) )
))
(declare-datatypes ((ListLongMap!17353 0))(
  ( (ListLongMap!17354 (toList!8692 List!26133)) )
))
(declare-fun lt!538109 () ListLongMap!17353)

(declare-fun lt!538106 () ListLongMap!17353)

(assert (=> b!1185540 (= lt!538109 lt!538106)))

(declare-fun lt!538119 () ListLongMap!17353)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1677 (ListLongMap!17353 (_ BitVec 64)) ListLongMap!17353)

(assert (=> b!1185540 (= lt!538106 (-!1677 lt!538119 k0!934))))

(declare-fun zeroValue!944 () V!44987)

(declare-fun lt!538111 () array!76558)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!538117 () array!76560)

(declare-fun minValue!944 () V!44987)

(declare-fun getCurrentListMapNoExtraKeys!5110 (array!76560 array!76558 (_ BitVec 32) (_ BitVec 32) V!44987 V!44987 (_ BitVec 32) Int) ListLongMap!17353)

(assert (=> b!1185540 (= lt!538109 (getCurrentListMapNoExtraKeys!5110 lt!538117 lt!538111 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1185540 (= lt!538119 (getCurrentListMapNoExtraKeys!5110 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!39199 0))(
  ( (Unit!39200) )
))
(declare-fun lt!538104 () Unit!39199)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!891 (array!76560 array!76558 (_ BitVec 32) (_ BitVec 32) V!44987 V!44987 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39199)

(assert (=> b!1185540 (= lt!538104 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!891 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1185541 () Bool)

(declare-fun res!788170 () Bool)

(assert (=> b!1185541 (=> (not res!788170) (not e!674107))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1185541 (= res!788170 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!46670 () Bool)

(assert (=> mapIsEmpty!46670 mapRes!46670))

(declare-fun b!1185542 () Bool)

(declare-fun res!788173 () Bool)

(assert (=> b!1185542 (=> (not res!788173) (not e!674107))))

(assert (=> b!1185542 (= res!788173 (validKeyInArray!0 k0!934))))

(declare-fun b!1185543 () Bool)

(declare-fun res!788171 () Bool)

(assert (=> b!1185543 (=> (not res!788171) (not e!674107))))

(assert (=> b!1185543 (= res!788171 (= (select (arr!36926 _keys!1208) i!673) k0!934))))

(declare-fun b!1185544 () Bool)

(declare-fun e!674108 () Bool)

(assert (=> b!1185544 (= e!674108 e!674113)))

(declare-fun res!788163 () Bool)

(assert (=> b!1185544 (=> res!788163 e!674113)))

(assert (=> b!1185544 (= res!788163 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!538103 () ListLongMap!17353)

(assert (=> b!1185544 (= lt!538103 (getCurrentListMapNoExtraKeys!5110 lt!538117 lt!538111 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!538101 () V!44987)

(assert (=> b!1185544 (= lt!538111 (array!76559 (store (arr!36925 _values!996) i!673 (ValueCellFull!14238 lt!538101)) (size!37462 _values!996)))))

(declare-fun dynLambda!3070 (Int (_ BitVec 64)) V!44987)

(assert (=> b!1185544 (= lt!538101 (dynLambda!3070 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!538108 () ListLongMap!17353)

(assert (=> b!1185544 (= lt!538108 (getCurrentListMapNoExtraKeys!5110 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1185545 () Bool)

(assert (=> b!1185545 (= e!674104 true)))

(declare-fun lt!538118 () ListLongMap!17353)

(declare-fun lt!538105 () ListLongMap!17353)

(assert (=> b!1185545 (= (-!1677 lt!538118 k0!934) lt!538105)))

(declare-fun lt!538115 () V!44987)

(declare-fun lt!538112 () Unit!39199)

(declare-fun addRemoveCommutativeForDiffKeys!188 (ListLongMap!17353 (_ BitVec 64) V!44987 (_ BitVec 64)) Unit!39199)

(assert (=> b!1185545 (= lt!538112 (addRemoveCommutativeForDiffKeys!188 lt!538119 (select (arr!36926 _keys!1208) from!1455) lt!538115 k0!934))))

(assert (=> b!1185545 (and (= lt!538108 lt!538118) (= lt!538106 lt!538109))))

(declare-fun lt!538113 () tuple2!19372)

(declare-fun +!3898 (ListLongMap!17353 tuple2!19372) ListLongMap!17353)

(assert (=> b!1185545 (= lt!538118 (+!3898 lt!538119 lt!538113))))

(assert (=> b!1185545 (not (= (select (arr!36926 _keys!1208) from!1455) k0!934))))

(declare-fun lt!538114 () Unit!39199)

(declare-fun e!674109 () Unit!39199)

(assert (=> b!1185545 (= lt!538114 e!674109)))

(declare-fun c!117119 () Bool)

(assert (=> b!1185545 (= c!117119 (= (select (arr!36926 _keys!1208) from!1455) k0!934))))

(declare-fun e!674103 () Bool)

(assert (=> b!1185545 e!674103))

(declare-fun res!788167 () Bool)

(assert (=> b!1185545 (=> (not res!788167) (not e!674103))))

(assert (=> b!1185545 (= res!788167 (= lt!538103 lt!538105))))

(assert (=> b!1185545 (= lt!538105 (+!3898 lt!538106 lt!538113))))

(assert (=> b!1185545 (= lt!538113 (tuple2!19373 (select (arr!36926 _keys!1208) from!1455) lt!538115))))

(declare-fun get!18942 (ValueCell!14238 V!44987) V!44987)

(assert (=> b!1185545 (= lt!538115 (get!18942 (select (arr!36925 _values!996) from!1455) lt!538101))))

(declare-fun b!1185546 () Bool)

(declare-fun e!674111 () Bool)

(assert (=> b!1185546 (= e!674111 (not e!674108))))

(declare-fun res!788159 () Bool)

(assert (=> b!1185546 (=> res!788159 e!674108)))

(assert (=> b!1185546 (= res!788159 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76560 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1185546 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!538110 () Unit!39199)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76560 (_ BitVec 64) (_ BitVec 32)) Unit!39199)

(assert (=> b!1185546 (= lt!538110 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1185547 () Bool)

(assert (=> b!1185547 (= e!674107 e!674111)))

(declare-fun res!788166 () Bool)

(assert (=> b!1185547 (=> (not res!788166) (not e!674111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76560 (_ BitVec 32)) Bool)

(assert (=> b!1185547 (= res!788166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!538117 mask!1564))))

(assert (=> b!1185547 (= lt!538117 (array!76561 (store (arr!36926 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37463 _keys!1208)))))

(declare-fun b!1185548 () Bool)

(declare-fun res!788172 () Bool)

(assert (=> b!1185548 (=> (not res!788172) (not e!674107))))

(assert (=> b!1185548 (= res!788172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1185549 () Bool)

(declare-fun tp_is_empty!29895 () Bool)

(assert (=> b!1185549 (= e!674112 tp_is_empty!29895)))

(declare-fun b!1185550 () Bool)

(declare-fun res!788168 () Bool)

(assert (=> b!1185550 (=> (not res!788168) (not e!674107))))

(declare-datatypes ((List!26134 0))(
  ( (Nil!26131) (Cons!26130 (h!27339 (_ BitVec 64)) (t!38498 List!26134)) )
))
(declare-fun arrayNoDuplicates!0 (array!76560 (_ BitVec 32) List!26134) Bool)

(assert (=> b!1185550 (= res!788168 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26131))))

(declare-fun b!1185551 () Bool)

(declare-fun Unit!39201 () Unit!39199)

(assert (=> b!1185551 (= e!674109 Unit!39201)))

(declare-fun b!1185552 () Bool)

(declare-fun Unit!39202 () Unit!39199)

(assert (=> b!1185552 (= e!674109 Unit!39202)))

(declare-fun lt!538107 () Unit!39199)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76560 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39199)

(assert (=> b!1185552 (= lt!538107 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1185552 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!538102 () Unit!39199)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76560 (_ BitVec 32) (_ BitVec 32)) Unit!39199)

(assert (=> b!1185552 (= lt!538102 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1185552 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26131)))

(declare-fun lt!538116 () Unit!39199)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76560 (_ BitVec 64) (_ BitVec 32) List!26134) Unit!39199)

(assert (=> b!1185552 (= lt!538116 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26131))))

(assert (=> b!1185552 false))

(declare-fun b!1185553 () Bool)

(declare-fun res!788160 () Bool)

(assert (=> b!1185553 (=> (not res!788160) (not e!674111))))

(assert (=> b!1185553 (= res!788160 (arrayNoDuplicates!0 lt!538117 #b00000000000000000000000000000000 Nil!26131))))

(declare-fun e!674106 () Bool)

(declare-fun b!1185554 () Bool)

(assert (=> b!1185554 (= e!674106 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1185555 () Bool)

(declare-fun e!674110 () Bool)

(assert (=> b!1185555 (= e!674110 tp_is_empty!29895)))

(declare-fun b!1185556 () Bool)

(assert (=> b!1185556 (= e!674103 e!674106)))

(declare-fun res!788164 () Bool)

(assert (=> b!1185556 (=> res!788164 e!674106)))

(assert (=> b!1185556 (= res!788164 (not (= (select (arr!36926 _keys!1208) from!1455) k0!934)))))

(declare-fun res!788161 () Bool)

(assert (=> start!99822 (=> (not res!788161) (not e!674107))))

(assert (=> start!99822 (= res!788161 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37463 _keys!1208))))))

(assert (=> start!99822 e!674107))

(assert (=> start!99822 tp_is_empty!29895))

(declare-fun array_inv!28058 (array!76560) Bool)

(assert (=> start!99822 (array_inv!28058 _keys!1208)))

(assert (=> start!99822 true))

(assert (=> start!99822 tp!88810))

(declare-fun array_inv!28059 (array!76558) Bool)

(assert (=> start!99822 (and (array_inv!28059 _values!996) e!674102)))

(declare-fun mapNonEmpty!46670 () Bool)

(declare-fun tp!88809 () Bool)

(assert (=> mapNonEmpty!46670 (= mapRes!46670 (and tp!88809 e!674110))))

(declare-fun mapRest!46670 () (Array (_ BitVec 32) ValueCell!14238))

(declare-fun mapKey!46670 () (_ BitVec 32))

(declare-fun mapValue!46670 () ValueCell!14238)

(assert (=> mapNonEmpty!46670 (= (arr!36925 _values!996) (store mapRest!46670 mapKey!46670 mapValue!46670))))

(assert (= (and start!99822 res!788161) b!1185541))

(assert (= (and b!1185541 res!788170) b!1185538))

(assert (= (and b!1185538 res!788162) b!1185548))

(assert (= (and b!1185548 res!788172) b!1185550))

(assert (= (and b!1185550 res!788168) b!1185539))

(assert (= (and b!1185539 res!788165) b!1185542))

(assert (= (and b!1185542 res!788173) b!1185543))

(assert (= (and b!1185543 res!788171) b!1185547))

(assert (= (and b!1185547 res!788166) b!1185553))

(assert (= (and b!1185553 res!788160) b!1185546))

(assert (= (and b!1185546 (not res!788159)) b!1185544))

(assert (= (and b!1185544 (not res!788163)) b!1185540))

(assert (= (and b!1185540 (not res!788169)) b!1185545))

(assert (= (and b!1185545 res!788167) b!1185556))

(assert (= (and b!1185556 (not res!788164)) b!1185554))

(assert (= (and b!1185545 c!117119) b!1185552))

(assert (= (and b!1185545 (not c!117119)) b!1185551))

(assert (= (and b!1185537 condMapEmpty!46670) mapIsEmpty!46670))

(assert (= (and b!1185537 (not condMapEmpty!46670)) mapNonEmpty!46670))

(get-info :version)

(assert (= (and mapNonEmpty!46670 ((_ is ValueCellFull!14238) mapValue!46670)) b!1185555))

(assert (= (and b!1185537 ((_ is ValueCellFull!14238) mapDefault!46670)) b!1185549))

(assert (= start!99822 b!1185537))

(declare-fun b_lambda!20527 () Bool)

(assert (=> (not b_lambda!20527) (not b!1185544)))

(declare-fun t!38496 () Bool)

(declare-fun tb!10185 () Bool)

(assert (=> (and start!99822 (= defaultEntry!1004 defaultEntry!1004) t!38496) tb!10185))

(declare-fun result!20929 () Bool)

(assert (=> tb!10185 (= result!20929 tp_is_empty!29895)))

(assert (=> b!1185544 t!38496))

(declare-fun b_and!41613 () Bool)

(assert (= b_and!41611 (and (=> t!38496 result!20929) b_and!41613)))

(declare-fun m!1094025 () Bool)

(assert (=> b!1185542 m!1094025))

(declare-fun m!1094027 () Bool)

(assert (=> start!99822 m!1094027))

(declare-fun m!1094029 () Bool)

(assert (=> start!99822 m!1094029))

(declare-fun m!1094031 () Bool)

(assert (=> b!1185540 m!1094031))

(declare-fun m!1094033 () Bool)

(assert (=> b!1185540 m!1094033))

(declare-fun m!1094035 () Bool)

(assert (=> b!1185540 m!1094035))

(declare-fun m!1094037 () Bool)

(assert (=> b!1185540 m!1094037))

(declare-fun m!1094039 () Bool)

(assert (=> b!1185540 m!1094039))

(declare-fun m!1094041 () Bool)

(assert (=> b!1185540 m!1094041))

(assert (=> b!1185540 m!1094039))

(declare-fun m!1094043 () Bool)

(assert (=> b!1185547 m!1094043))

(declare-fun m!1094045 () Bool)

(assert (=> b!1185547 m!1094045))

(declare-fun m!1094047 () Bool)

(assert (=> b!1185541 m!1094047))

(declare-fun m!1094049 () Bool)

(assert (=> b!1185554 m!1094049))

(declare-fun m!1094051 () Bool)

(assert (=> b!1185553 m!1094051))

(declare-fun m!1094053 () Bool)

(assert (=> b!1185552 m!1094053))

(declare-fun m!1094055 () Bool)

(assert (=> b!1185552 m!1094055))

(declare-fun m!1094057 () Bool)

(assert (=> b!1185552 m!1094057))

(declare-fun m!1094059 () Bool)

(assert (=> b!1185552 m!1094059))

(declare-fun m!1094061 () Bool)

(assert (=> b!1185552 m!1094061))

(declare-fun m!1094063 () Bool)

(assert (=> b!1185543 m!1094063))

(declare-fun m!1094065 () Bool)

(assert (=> b!1185546 m!1094065))

(declare-fun m!1094067 () Bool)

(assert (=> b!1185546 m!1094067))

(declare-fun m!1094069 () Bool)

(assert (=> mapNonEmpty!46670 m!1094069))

(declare-fun m!1094071 () Bool)

(assert (=> b!1185550 m!1094071))

(assert (=> b!1185556 m!1094039))

(assert (=> b!1185545 m!1094039))

(declare-fun m!1094073 () Bool)

(assert (=> b!1185545 m!1094073))

(declare-fun m!1094075 () Bool)

(assert (=> b!1185545 m!1094075))

(declare-fun m!1094077 () Bool)

(assert (=> b!1185545 m!1094077))

(assert (=> b!1185545 m!1094075))

(declare-fun m!1094079 () Bool)

(assert (=> b!1185545 m!1094079))

(declare-fun m!1094081 () Bool)

(assert (=> b!1185545 m!1094081))

(declare-fun m!1094083 () Bool)

(assert (=> b!1185545 m!1094083))

(assert (=> b!1185545 m!1094039))

(declare-fun m!1094085 () Bool)

(assert (=> b!1185544 m!1094085))

(declare-fun m!1094087 () Bool)

(assert (=> b!1185544 m!1094087))

(declare-fun m!1094089 () Bool)

(assert (=> b!1185544 m!1094089))

(declare-fun m!1094091 () Bool)

(assert (=> b!1185544 m!1094091))

(declare-fun m!1094093 () Bool)

(assert (=> b!1185548 m!1094093))

(check-sat (not b!1185554) (not b!1185546) (not b_lambda!20527) (not b!1185547) (not b!1185540) (not b!1185544) (not b!1185542) (not b!1185552) (not b!1185545) (not b_next!25365) tp_is_empty!29895 (not b!1185541) (not b!1185548) (not b!1185550) (not mapNonEmpty!46670) b_and!41613 (not start!99822) (not b!1185553))
(check-sat b_and!41613 (not b_next!25365))

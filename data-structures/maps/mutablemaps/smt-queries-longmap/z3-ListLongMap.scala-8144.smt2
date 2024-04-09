; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99768 () Bool)

(assert start!99768)

(declare-fun b_free!25311 () Bool)

(declare-fun b_next!25311 () Bool)

(assert (=> start!99768 (= b_free!25311 (not b_next!25311))))

(declare-fun tp!88647 () Bool)

(declare-fun b_and!41503 () Bool)

(assert (=> start!99768 (= tp!88647 b_and!41503)))

(declare-fun b!1183863 () Bool)

(declare-datatypes ((Unit!39116 0))(
  ( (Unit!39117) )
))
(declare-fun e!673141 () Unit!39116)

(declare-fun Unit!39118 () Unit!39116)

(assert (=> b!1183863 (= e!673141 Unit!39118)))

(declare-fun b!1183864 () Bool)

(declare-fun e!673131 () Bool)

(declare-fun e!673133 () Bool)

(assert (=> b!1183864 (= e!673131 e!673133)))

(declare-fun res!786955 () Bool)

(assert (=> b!1183864 (=> res!786955 e!673133)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1183864 (= res!786955 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44915 0))(
  ( (V!44916 (val!14977 Int)) )
))
(declare-fun zeroValue!944 () V!44915)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19322 0))(
  ( (tuple2!19323 (_1!9671 (_ BitVec 64)) (_2!9671 V!44915)) )
))
(declare-datatypes ((List!26085 0))(
  ( (Nil!26082) (Cons!26081 (h!27290 tuple2!19322) (t!38395 List!26085)) )
))
(declare-datatypes ((ListLongMap!17303 0))(
  ( (ListLongMap!17304 (toList!8667 List!26085)) )
))
(declare-fun lt!536578 () ListLongMap!17303)

(declare-fun minValue!944 () V!44915)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14211 0))(
  ( (ValueCellFull!14211 (v!17616 V!44915)) (EmptyCell!14211) )
))
(declare-datatypes ((array!76450 0))(
  ( (array!76451 (arr!36871 (Array (_ BitVec 32) ValueCell!14211)) (size!37408 (_ BitVec 32))) )
))
(declare-fun lt!536568 () array!76450)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((array!76452 0))(
  ( (array!76453 (arr!36872 (Array (_ BitVec 32) (_ BitVec 64))) (size!37409 (_ BitVec 32))) )
))
(declare-fun lt!536564 () array!76452)

(declare-fun getCurrentListMapNoExtraKeys!5087 (array!76452 array!76450 (_ BitVec 32) (_ BitVec 32) V!44915 V!44915 (_ BitVec 32) Int) ListLongMap!17303)

(assert (=> b!1183864 (= lt!536578 (getCurrentListMapNoExtraKeys!5087 lt!536564 lt!536568 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76450)

(declare-fun lt!536571 () V!44915)

(assert (=> b!1183864 (= lt!536568 (array!76451 (store (arr!36871 _values!996) i!673 (ValueCellFull!14211 lt!536571)) (size!37408 _values!996)))))

(declare-fun dynLambda!3052 (Int (_ BitVec 64)) V!44915)

(assert (=> b!1183864 (= lt!536571 (dynLambda!3052 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!76452)

(declare-fun lt!536574 () ListLongMap!17303)

(assert (=> b!1183864 (= lt!536574 (getCurrentListMapNoExtraKeys!5087 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!46589 () Bool)

(declare-fun mapRes!46589 () Bool)

(assert (=> mapIsEmpty!46589 mapRes!46589))

(declare-fun b!1183865 () Bool)

(declare-fun res!786947 () Bool)

(declare-fun e!673135 () Bool)

(assert (=> b!1183865 (=> (not res!786947) (not e!673135))))

(assert (=> b!1183865 (= res!786947 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37409 _keys!1208))))))

(declare-fun b!1183866 () Bool)

(declare-fun res!786954 () Bool)

(declare-fun e!673137 () Bool)

(assert (=> b!1183866 (=> (not res!786954) (not e!673137))))

(declare-datatypes ((List!26086 0))(
  ( (Nil!26083) (Cons!26082 (h!27291 (_ BitVec 64)) (t!38396 List!26086)) )
))
(declare-fun arrayNoDuplicates!0 (array!76452 (_ BitVec 32) List!26086) Bool)

(assert (=> b!1183866 (= res!786954 (arrayNoDuplicates!0 lt!536564 #b00000000000000000000000000000000 Nil!26083))))

(declare-fun b!1183867 () Bool)

(declare-fun res!786944 () Bool)

(assert (=> b!1183867 (=> (not res!786944) (not e!673135))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1183867 (= res!786944 (validKeyInArray!0 k0!934))))

(declare-fun b!1183868 () Bool)

(declare-fun res!786953 () Bool)

(assert (=> b!1183868 (=> (not res!786953) (not e!673135))))

(assert (=> b!1183868 (= res!786953 (= (select (arr!36872 _keys!1208) i!673) k0!934))))

(declare-fun b!1183869 () Bool)

(declare-fun res!786948 () Bool)

(assert (=> b!1183869 (=> (not res!786948) (not e!673135))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76452 (_ BitVec 32)) Bool)

(assert (=> b!1183869 (= res!786948 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!786951 () Bool)

(assert (=> start!99768 (=> (not res!786951) (not e!673135))))

(assert (=> start!99768 (= res!786951 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37409 _keys!1208))))))

(assert (=> start!99768 e!673135))

(declare-fun tp_is_empty!29841 () Bool)

(assert (=> start!99768 tp_is_empty!29841))

(declare-fun array_inv!28024 (array!76452) Bool)

(assert (=> start!99768 (array_inv!28024 _keys!1208)))

(assert (=> start!99768 true))

(assert (=> start!99768 tp!88647))

(declare-fun e!673140 () Bool)

(declare-fun array_inv!28025 (array!76450) Bool)

(assert (=> start!99768 (and (array_inv!28025 _values!996) e!673140)))

(declare-fun b!1183870 () Bool)

(declare-fun Unit!39119 () Unit!39116)

(assert (=> b!1183870 (= e!673141 Unit!39119)))

(declare-fun lt!536580 () Unit!39116)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76452 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39116)

(assert (=> b!1183870 (= lt!536580 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1183870 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!536566 () Unit!39116)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76452 (_ BitVec 32) (_ BitVec 32)) Unit!39116)

(assert (=> b!1183870 (= lt!536566 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1183870 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26083)))

(declare-fun lt!536577 () Unit!39116)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76452 (_ BitVec 64) (_ BitVec 32) List!26086) Unit!39116)

(assert (=> b!1183870 (= lt!536577 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26083))))

(assert (=> b!1183870 false))

(declare-fun e!673132 () Bool)

(declare-fun b!1183871 () Bool)

(assert (=> b!1183871 (= e!673132 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1183872 () Bool)

(declare-fun e!673139 () Bool)

(assert (=> b!1183872 (= e!673139 tp_is_empty!29841)))

(declare-fun b!1183873 () Bool)

(assert (=> b!1183873 (= e!673137 (not e!673131))))

(declare-fun res!786945 () Bool)

(assert (=> b!1183873 (=> res!786945 e!673131)))

(assert (=> b!1183873 (= res!786945 (bvsgt from!1455 i!673))))

(assert (=> b!1183873 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!536569 () Unit!39116)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76452 (_ BitVec 64) (_ BitVec 32)) Unit!39116)

(assert (=> b!1183873 (= lt!536569 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1183874 () Bool)

(declare-fun e!673134 () Bool)

(assert (=> b!1183874 (= e!673134 e!673132)))

(declare-fun res!786956 () Bool)

(assert (=> b!1183874 (=> res!786956 e!673132)))

(assert (=> b!1183874 (= res!786956 (not (= (select (arr!36872 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1183875 () Bool)

(declare-fun res!786952 () Bool)

(assert (=> b!1183875 (=> (not res!786952) (not e!673135))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1183875 (= res!786952 (validMask!0 mask!1564))))

(declare-fun b!1183876 () Bool)

(declare-fun res!786950 () Bool)

(assert (=> b!1183876 (=> (not res!786950) (not e!673135))))

(assert (=> b!1183876 (= res!786950 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26083))))

(declare-fun b!1183877 () Bool)

(declare-fun e!673136 () Bool)

(assert (=> b!1183877 (= e!673136 true)))

(declare-fun lt!536563 () ListLongMap!17303)

(declare-fun lt!536572 () ListLongMap!17303)

(declare-fun -!1655 (ListLongMap!17303 (_ BitVec 64)) ListLongMap!17303)

(assert (=> b!1183877 (= (-!1655 lt!536563 k0!934) lt!536572)))

(declare-fun lt!536570 () ListLongMap!17303)

(declare-fun lt!536565 () V!44915)

(declare-fun lt!536575 () Unit!39116)

(declare-fun addRemoveCommutativeForDiffKeys!171 (ListLongMap!17303 (_ BitVec 64) V!44915 (_ BitVec 64)) Unit!39116)

(assert (=> b!1183877 (= lt!536575 (addRemoveCommutativeForDiffKeys!171 lt!536570 (select (arr!36872 _keys!1208) from!1455) lt!536565 k0!934))))

(declare-fun lt!536579 () ListLongMap!17303)

(declare-fun lt!536576 () ListLongMap!17303)

(assert (=> b!1183877 (and (= lt!536574 lt!536563) (= lt!536576 lt!536579))))

(declare-fun lt!536562 () tuple2!19322)

(declare-fun +!3881 (ListLongMap!17303 tuple2!19322) ListLongMap!17303)

(assert (=> b!1183877 (= lt!536563 (+!3881 lt!536570 lt!536562))))

(assert (=> b!1183877 (not (= (select (arr!36872 _keys!1208) from!1455) k0!934))))

(declare-fun lt!536573 () Unit!39116)

(assert (=> b!1183877 (= lt!536573 e!673141)))

(declare-fun c!117038 () Bool)

(assert (=> b!1183877 (= c!117038 (= (select (arr!36872 _keys!1208) from!1455) k0!934))))

(assert (=> b!1183877 e!673134))

(declare-fun res!786949 () Bool)

(assert (=> b!1183877 (=> (not res!786949) (not e!673134))))

(assert (=> b!1183877 (= res!786949 (= lt!536578 lt!536572))))

(assert (=> b!1183877 (= lt!536572 (+!3881 lt!536576 lt!536562))))

(assert (=> b!1183877 (= lt!536562 (tuple2!19323 (select (arr!36872 _keys!1208) from!1455) lt!536565))))

(declare-fun get!18907 (ValueCell!14211 V!44915) V!44915)

(assert (=> b!1183877 (= lt!536565 (get!18907 (select (arr!36871 _values!996) from!1455) lt!536571))))

(declare-fun b!1183878 () Bool)

(assert (=> b!1183878 (= e!673135 e!673137)))

(declare-fun res!786957 () Bool)

(assert (=> b!1183878 (=> (not res!786957) (not e!673137))))

(assert (=> b!1183878 (= res!786957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!536564 mask!1564))))

(assert (=> b!1183878 (= lt!536564 (array!76453 (store (arr!36872 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37409 _keys!1208)))))

(declare-fun mapNonEmpty!46589 () Bool)

(declare-fun tp!88648 () Bool)

(assert (=> mapNonEmpty!46589 (= mapRes!46589 (and tp!88648 e!673139))))

(declare-fun mapKey!46589 () (_ BitVec 32))

(declare-fun mapRest!46589 () (Array (_ BitVec 32) ValueCell!14211))

(declare-fun mapValue!46589 () ValueCell!14211)

(assert (=> mapNonEmpty!46589 (= (arr!36871 _values!996) (store mapRest!46589 mapKey!46589 mapValue!46589))))

(declare-fun b!1183879 () Bool)

(declare-fun e!673138 () Bool)

(assert (=> b!1183879 (= e!673140 (and e!673138 mapRes!46589))))

(declare-fun condMapEmpty!46589 () Bool)

(declare-fun mapDefault!46589 () ValueCell!14211)

(assert (=> b!1183879 (= condMapEmpty!46589 (= (arr!36871 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14211)) mapDefault!46589)))))

(declare-fun b!1183880 () Bool)

(assert (=> b!1183880 (= e!673133 e!673136)))

(declare-fun res!786958 () Bool)

(assert (=> b!1183880 (=> res!786958 e!673136)))

(assert (=> b!1183880 (= res!786958 (not (validKeyInArray!0 (select (arr!36872 _keys!1208) from!1455))))))

(assert (=> b!1183880 (= lt!536579 lt!536576)))

(assert (=> b!1183880 (= lt!536576 (-!1655 lt!536570 k0!934))))

(assert (=> b!1183880 (= lt!536579 (getCurrentListMapNoExtraKeys!5087 lt!536564 lt!536568 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1183880 (= lt!536570 (getCurrentListMapNoExtraKeys!5087 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!536567 () Unit!39116)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!871 (array!76452 array!76450 (_ BitVec 32) (_ BitVec 32) V!44915 V!44915 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39116)

(assert (=> b!1183880 (= lt!536567 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!871 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1183881 () Bool)

(declare-fun res!786946 () Bool)

(assert (=> b!1183881 (=> (not res!786946) (not e!673135))))

(assert (=> b!1183881 (= res!786946 (and (= (size!37408 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37409 _keys!1208) (size!37408 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1183882 () Bool)

(assert (=> b!1183882 (= e!673138 tp_is_empty!29841)))

(assert (= (and start!99768 res!786951) b!1183875))

(assert (= (and b!1183875 res!786952) b!1183881))

(assert (= (and b!1183881 res!786946) b!1183869))

(assert (= (and b!1183869 res!786948) b!1183876))

(assert (= (and b!1183876 res!786950) b!1183865))

(assert (= (and b!1183865 res!786947) b!1183867))

(assert (= (and b!1183867 res!786944) b!1183868))

(assert (= (and b!1183868 res!786953) b!1183878))

(assert (= (and b!1183878 res!786957) b!1183866))

(assert (= (and b!1183866 res!786954) b!1183873))

(assert (= (and b!1183873 (not res!786945)) b!1183864))

(assert (= (and b!1183864 (not res!786955)) b!1183880))

(assert (= (and b!1183880 (not res!786958)) b!1183877))

(assert (= (and b!1183877 res!786949) b!1183874))

(assert (= (and b!1183874 (not res!786956)) b!1183871))

(assert (= (and b!1183877 c!117038) b!1183870))

(assert (= (and b!1183877 (not c!117038)) b!1183863))

(assert (= (and b!1183879 condMapEmpty!46589) mapIsEmpty!46589))

(assert (= (and b!1183879 (not condMapEmpty!46589)) mapNonEmpty!46589))

(get-info :version)

(assert (= (and mapNonEmpty!46589 ((_ is ValueCellFull!14211) mapValue!46589)) b!1183872))

(assert (= (and b!1183879 ((_ is ValueCellFull!14211) mapDefault!46589)) b!1183882))

(assert (= start!99768 b!1183879))

(declare-fun b_lambda!20473 () Bool)

(assert (=> (not b_lambda!20473) (not b!1183864)))

(declare-fun t!38394 () Bool)

(declare-fun tb!10131 () Bool)

(assert (=> (and start!99768 (= defaultEntry!1004 defaultEntry!1004) t!38394) tb!10131))

(declare-fun result!20821 () Bool)

(assert (=> tb!10131 (= result!20821 tp_is_empty!29841)))

(assert (=> b!1183864 t!38394))

(declare-fun b_and!41505 () Bool)

(assert (= b_and!41503 (and (=> t!38394 result!20821) b_and!41505)))

(declare-fun m!1092135 () Bool)

(assert (=> b!1183880 m!1092135))

(declare-fun m!1092137 () Bool)

(assert (=> b!1183880 m!1092137))

(declare-fun m!1092139 () Bool)

(assert (=> b!1183880 m!1092139))

(declare-fun m!1092141 () Bool)

(assert (=> b!1183880 m!1092141))

(declare-fun m!1092143 () Bool)

(assert (=> b!1183880 m!1092143))

(declare-fun m!1092145 () Bool)

(assert (=> b!1183880 m!1092145))

(assert (=> b!1183880 m!1092143))

(declare-fun m!1092147 () Bool)

(assert (=> start!99768 m!1092147))

(declare-fun m!1092149 () Bool)

(assert (=> start!99768 m!1092149))

(declare-fun m!1092151 () Bool)

(assert (=> b!1183870 m!1092151))

(declare-fun m!1092153 () Bool)

(assert (=> b!1183870 m!1092153))

(declare-fun m!1092155 () Bool)

(assert (=> b!1183870 m!1092155))

(declare-fun m!1092157 () Bool)

(assert (=> b!1183870 m!1092157))

(declare-fun m!1092159 () Bool)

(assert (=> b!1183870 m!1092159))

(declare-fun m!1092161 () Bool)

(assert (=> b!1183866 m!1092161))

(declare-fun m!1092163 () Bool)

(assert (=> b!1183871 m!1092163))

(declare-fun m!1092165 () Bool)

(assert (=> b!1183864 m!1092165))

(declare-fun m!1092167 () Bool)

(assert (=> b!1183864 m!1092167))

(declare-fun m!1092169 () Bool)

(assert (=> b!1183864 m!1092169))

(declare-fun m!1092171 () Bool)

(assert (=> b!1183864 m!1092171))

(declare-fun m!1092173 () Bool)

(assert (=> b!1183877 m!1092173))

(assert (=> b!1183877 m!1092143))

(declare-fun m!1092175 () Bool)

(assert (=> b!1183877 m!1092175))

(assert (=> b!1183877 m!1092173))

(declare-fun m!1092177 () Bool)

(assert (=> b!1183877 m!1092177))

(declare-fun m!1092179 () Bool)

(assert (=> b!1183877 m!1092179))

(declare-fun m!1092181 () Bool)

(assert (=> b!1183877 m!1092181))

(assert (=> b!1183877 m!1092143))

(declare-fun m!1092183 () Bool)

(assert (=> b!1183877 m!1092183))

(declare-fun m!1092185 () Bool)

(assert (=> mapNonEmpty!46589 m!1092185))

(declare-fun m!1092187 () Bool)

(assert (=> b!1183875 m!1092187))

(declare-fun m!1092189 () Bool)

(assert (=> b!1183867 m!1092189))

(declare-fun m!1092191 () Bool)

(assert (=> b!1183876 m!1092191))

(declare-fun m!1092193 () Bool)

(assert (=> b!1183869 m!1092193))

(declare-fun m!1092195 () Bool)

(assert (=> b!1183868 m!1092195))

(declare-fun m!1092197 () Bool)

(assert (=> b!1183873 m!1092197))

(declare-fun m!1092199 () Bool)

(assert (=> b!1183873 m!1092199))

(declare-fun m!1092201 () Bool)

(assert (=> b!1183878 m!1092201))

(declare-fun m!1092203 () Bool)

(assert (=> b!1183878 m!1092203))

(assert (=> b!1183874 m!1092143))

(check-sat tp_is_empty!29841 (not b!1183871) (not mapNonEmpty!46589) (not start!99768) (not b!1183878) (not b!1183877) b_and!41505 (not b!1183867) (not b!1183870) (not b!1183864) (not b_next!25311) (not b!1183873) (not b!1183869) (not b!1183880) (not b!1183866) (not b_lambda!20473) (not b!1183875) (not b!1183876))
(check-sat b_and!41505 (not b_next!25311))

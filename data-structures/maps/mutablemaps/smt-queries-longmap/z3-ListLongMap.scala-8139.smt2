; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99738 () Bool)

(assert start!99738)

(declare-fun b_free!25281 () Bool)

(declare-fun b_next!25281 () Bool)

(assert (=> start!99738 (= b_free!25281 (not b_next!25281))))

(declare-fun tp!88558 () Bool)

(declare-fun b_and!41443 () Bool)

(assert (=> start!99738 (= tp!88558 b_and!41443)))

(declare-fun b!1182933 () Bool)

(declare-datatypes ((Unit!39071 0))(
  ( (Unit!39072) )
))
(declare-fun e!672595 () Unit!39071)

(declare-fun Unit!39073 () Unit!39071)

(assert (=> b!1182933 (= e!672595 Unit!39073)))

(declare-fun b!1182934 () Bool)

(declare-fun res!786270 () Bool)

(declare-fun e!672601 () Bool)

(assert (=> b!1182934 (=> (not res!786270) (not e!672601))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76390 0))(
  ( (array!76391 (arr!36841 (Array (_ BitVec 32) (_ BitVec 64))) (size!37378 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76390)

(assert (=> b!1182934 (= res!786270 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37378 _keys!1208))))))

(declare-fun b!1182935 () Bool)

(declare-fun e!672598 () Bool)

(declare-fun tp_is_empty!29811 () Bool)

(assert (=> b!1182935 (= e!672598 tp_is_empty!29811)))

(declare-fun b!1182936 () Bool)

(declare-fun res!786278 () Bool)

(assert (=> b!1182936 (=> (not res!786278) (not e!672601))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1182936 (= res!786278 (validMask!0 mask!1564))))

(declare-fun b!1182937 () Bool)

(declare-fun res!786279 () Bool)

(assert (=> b!1182937 (=> (not res!786279) (not e!672601))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1182937 (= res!786279 (= (select (arr!36841 _keys!1208) i!673) k0!934))))

(declare-fun b!1182938 () Bool)

(declare-fun e!672592 () Bool)

(assert (=> b!1182938 (= e!672601 e!672592)))

(declare-fun res!786276 () Bool)

(assert (=> b!1182938 (=> (not res!786276) (not e!672592))))

(declare-fun lt!535715 () array!76390)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76390 (_ BitVec 32)) Bool)

(assert (=> b!1182938 (= res!786276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!535715 mask!1564))))

(assert (=> b!1182938 (= lt!535715 (array!76391 (store (arr!36841 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37378 _keys!1208)))))

(declare-fun b!1182939 () Bool)

(declare-fun res!786280 () Bool)

(assert (=> b!1182939 (=> (not res!786280) (not e!672601))))

(declare-datatypes ((List!26059 0))(
  ( (Nil!26056) (Cons!26055 (h!27264 (_ BitVec 64)) (t!38339 List!26059)) )
))
(declare-fun arrayNoDuplicates!0 (array!76390 (_ BitVec 32) List!26059) Bool)

(assert (=> b!1182939 (= res!786280 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26056))))

(declare-fun b!1182940 () Bool)

(declare-fun res!786271 () Bool)

(assert (=> b!1182940 (=> (not res!786271) (not e!672592))))

(assert (=> b!1182940 (= res!786271 (arrayNoDuplicates!0 lt!535715 #b00000000000000000000000000000000 Nil!26056))))

(declare-fun b!1182941 () Bool)

(declare-fun Unit!39074 () Unit!39071)

(assert (=> b!1182941 (= e!672595 Unit!39074)))

(declare-fun lt!535717 () Unit!39071)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76390 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39071)

(assert (=> b!1182941 (= lt!535717 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76390 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1182941 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!535712 () Unit!39071)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76390 (_ BitVec 32) (_ BitVec 32)) Unit!39071)

(assert (=> b!1182941 (= lt!535712 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1182941 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26056)))

(declare-fun lt!535723 () Unit!39071)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76390 (_ BitVec 64) (_ BitVec 32) List!26059) Unit!39071)

(assert (=> b!1182941 (= lt!535723 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26056))))

(assert (=> b!1182941 false))

(declare-fun b!1182942 () Bool)

(declare-fun res!786274 () Bool)

(assert (=> b!1182942 (=> (not res!786274) (not e!672601))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44875 0))(
  ( (V!44876 (val!14962 Int)) )
))
(declare-datatypes ((ValueCell!14196 0))(
  ( (ValueCellFull!14196 (v!17601 V!44875)) (EmptyCell!14196) )
))
(declare-datatypes ((array!76392 0))(
  ( (array!76393 (arr!36842 (Array (_ BitVec 32) ValueCell!14196)) (size!37379 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76392)

(assert (=> b!1182942 (= res!786274 (and (= (size!37379 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37378 _keys!1208) (size!37379 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!786281 () Bool)

(assert (=> start!99738 (=> (not res!786281) (not e!672601))))

(assert (=> start!99738 (= res!786281 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37378 _keys!1208))))))

(assert (=> start!99738 e!672601))

(assert (=> start!99738 tp_is_empty!29811))

(declare-fun array_inv!28002 (array!76390) Bool)

(assert (=> start!99738 (array_inv!28002 _keys!1208)))

(assert (=> start!99738 true))

(assert (=> start!99738 tp!88558))

(declare-fun e!672599 () Bool)

(declare-fun array_inv!28003 (array!76392) Bool)

(assert (=> start!99738 (and (array_inv!28003 _values!996) e!672599)))

(declare-fun b!1182943 () Bool)

(declare-fun res!786283 () Bool)

(assert (=> b!1182943 (=> (not res!786283) (not e!672601))))

(assert (=> b!1182943 (= res!786283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1182944 () Bool)

(declare-fun res!786277 () Bool)

(assert (=> b!1182944 (=> (not res!786277) (not e!672601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1182944 (= res!786277 (validKeyInArray!0 k0!934))))

(declare-fun b!1182945 () Bool)

(declare-fun e!672596 () Bool)

(declare-fun e!672593 () Bool)

(assert (=> b!1182945 (= e!672596 e!672593)))

(declare-fun res!786273 () Bool)

(assert (=> b!1182945 (=> res!786273 e!672593)))

(assert (=> b!1182945 (= res!786273 (not (= (select (arr!36841 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1182946 () Bool)

(declare-fun e!672594 () Bool)

(assert (=> b!1182946 (= e!672592 (not e!672594))))

(declare-fun res!786272 () Bool)

(assert (=> b!1182946 (=> res!786272 e!672594)))

(assert (=> b!1182946 (= res!786272 (bvsgt from!1455 i!673))))

(assert (=> b!1182946 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!535719 () Unit!39071)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76390 (_ BitVec 64) (_ BitVec 32)) Unit!39071)

(assert (=> b!1182946 (= lt!535719 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1182947 () Bool)

(assert (=> b!1182947 (= e!672593 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1182948 () Bool)

(declare-fun e!672590 () Bool)

(assert (=> b!1182948 (= e!672590 tp_is_empty!29811)))

(declare-fun b!1182949 () Bool)

(declare-fun e!672591 () Bool)

(assert (=> b!1182949 (= e!672591 true)))

(declare-datatypes ((tuple2!19296 0))(
  ( (tuple2!19297 (_1!9658 (_ BitVec 64)) (_2!9658 V!44875)) )
))
(declare-datatypes ((List!26060 0))(
  ( (Nil!26057) (Cons!26056 (h!27265 tuple2!19296) (t!38340 List!26060)) )
))
(declare-datatypes ((ListLongMap!17277 0))(
  ( (ListLongMap!17278 (toList!8654 List!26060)) )
))
(declare-fun lt!535709 () ListLongMap!17277)

(declare-fun lt!535716 () ListLongMap!17277)

(declare-fun -!1642 (ListLongMap!17277 (_ BitVec 64)) ListLongMap!17277)

(assert (=> b!1182949 (= (-!1642 lt!535709 k0!934) lt!535716)))

(declare-fun lt!535720 () ListLongMap!17277)

(declare-fun lt!535718 () Unit!39071)

(declare-fun lt!535722 () V!44875)

(declare-fun addRemoveCommutativeForDiffKeys!160 (ListLongMap!17277 (_ BitVec 64) V!44875 (_ BitVec 64)) Unit!39071)

(assert (=> b!1182949 (= lt!535718 (addRemoveCommutativeForDiffKeys!160 lt!535720 (select (arr!36841 _keys!1208) from!1455) lt!535722 k0!934))))

(declare-fun lt!535708 () ListLongMap!17277)

(declare-fun lt!535710 () ListLongMap!17277)

(declare-fun lt!535725 () ListLongMap!17277)

(assert (=> b!1182949 (and (= lt!535708 lt!535709) (= lt!535710 lt!535725))))

(declare-fun lt!535714 () tuple2!19296)

(declare-fun +!3870 (ListLongMap!17277 tuple2!19296) ListLongMap!17277)

(assert (=> b!1182949 (= lt!535709 (+!3870 lt!535720 lt!535714))))

(assert (=> b!1182949 (not (= (select (arr!36841 _keys!1208) from!1455) k0!934))))

(declare-fun lt!535711 () Unit!39071)

(assert (=> b!1182949 (= lt!535711 e!672595)))

(declare-fun c!116993 () Bool)

(assert (=> b!1182949 (= c!116993 (= (select (arr!36841 _keys!1208) from!1455) k0!934))))

(assert (=> b!1182949 e!672596))

(declare-fun res!786275 () Bool)

(assert (=> b!1182949 (=> (not res!786275) (not e!672596))))

(declare-fun lt!535707 () ListLongMap!17277)

(assert (=> b!1182949 (= res!786275 (= lt!535707 lt!535716))))

(assert (=> b!1182949 (= lt!535716 (+!3870 lt!535710 lt!535714))))

(assert (=> b!1182949 (= lt!535714 (tuple2!19297 (select (arr!36841 _keys!1208) from!1455) lt!535722))))

(declare-fun lt!535713 () V!44875)

(declare-fun get!18886 (ValueCell!14196 V!44875) V!44875)

(assert (=> b!1182949 (= lt!535722 (get!18886 (select (arr!36842 _values!996) from!1455) lt!535713))))

(declare-fun mapNonEmpty!46544 () Bool)

(declare-fun mapRes!46544 () Bool)

(declare-fun tp!88557 () Bool)

(assert (=> mapNonEmpty!46544 (= mapRes!46544 (and tp!88557 e!672598))))

(declare-fun mapRest!46544 () (Array (_ BitVec 32) ValueCell!14196))

(declare-fun mapValue!46544 () ValueCell!14196)

(declare-fun mapKey!46544 () (_ BitVec 32))

(assert (=> mapNonEmpty!46544 (= (arr!36842 _values!996) (store mapRest!46544 mapKey!46544 mapValue!46544))))

(declare-fun b!1182950 () Bool)

(declare-fun e!672600 () Bool)

(assert (=> b!1182950 (= e!672600 e!672591)))

(declare-fun res!786282 () Bool)

(assert (=> b!1182950 (=> res!786282 e!672591)))

(assert (=> b!1182950 (= res!786282 (not (validKeyInArray!0 (select (arr!36841 _keys!1208) from!1455))))))

(assert (=> b!1182950 (= lt!535725 lt!535710)))

(assert (=> b!1182950 (= lt!535710 (-!1642 lt!535720 k0!934))))

(declare-fun zeroValue!944 () V!44875)

(declare-fun lt!535724 () array!76392)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44875)

(declare-fun getCurrentListMapNoExtraKeys!5076 (array!76390 array!76392 (_ BitVec 32) (_ BitVec 32) V!44875 V!44875 (_ BitVec 32) Int) ListLongMap!17277)

(assert (=> b!1182950 (= lt!535725 (getCurrentListMapNoExtraKeys!5076 lt!535715 lt!535724 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1182950 (= lt!535720 (getCurrentListMapNoExtraKeys!5076 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!535721 () Unit!39071)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!862 (array!76390 array!76392 (_ BitVec 32) (_ BitVec 32) V!44875 V!44875 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39071)

(assert (=> b!1182950 (= lt!535721 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!862 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1182951 () Bool)

(assert (=> b!1182951 (= e!672594 e!672600)))

(declare-fun res!786269 () Bool)

(assert (=> b!1182951 (=> res!786269 e!672600)))

(assert (=> b!1182951 (= res!786269 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1182951 (= lt!535707 (getCurrentListMapNoExtraKeys!5076 lt!535715 lt!535724 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1182951 (= lt!535724 (array!76393 (store (arr!36842 _values!996) i!673 (ValueCellFull!14196 lt!535713)) (size!37379 _values!996)))))

(declare-fun dynLambda!3043 (Int (_ BitVec 64)) V!44875)

(assert (=> b!1182951 (= lt!535713 (dynLambda!3043 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1182951 (= lt!535708 (getCurrentListMapNoExtraKeys!5076 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1182952 () Bool)

(assert (=> b!1182952 (= e!672599 (and e!672590 mapRes!46544))))

(declare-fun condMapEmpty!46544 () Bool)

(declare-fun mapDefault!46544 () ValueCell!14196)

(assert (=> b!1182952 (= condMapEmpty!46544 (= (arr!36842 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14196)) mapDefault!46544)))))

(declare-fun mapIsEmpty!46544 () Bool)

(assert (=> mapIsEmpty!46544 mapRes!46544))

(assert (= (and start!99738 res!786281) b!1182936))

(assert (= (and b!1182936 res!786278) b!1182942))

(assert (= (and b!1182942 res!786274) b!1182943))

(assert (= (and b!1182943 res!786283) b!1182939))

(assert (= (and b!1182939 res!786280) b!1182934))

(assert (= (and b!1182934 res!786270) b!1182944))

(assert (= (and b!1182944 res!786277) b!1182937))

(assert (= (and b!1182937 res!786279) b!1182938))

(assert (= (and b!1182938 res!786276) b!1182940))

(assert (= (and b!1182940 res!786271) b!1182946))

(assert (= (and b!1182946 (not res!786272)) b!1182951))

(assert (= (and b!1182951 (not res!786269)) b!1182950))

(assert (= (and b!1182950 (not res!786282)) b!1182949))

(assert (= (and b!1182949 res!786275) b!1182945))

(assert (= (and b!1182945 (not res!786273)) b!1182947))

(assert (= (and b!1182949 c!116993) b!1182941))

(assert (= (and b!1182949 (not c!116993)) b!1182933))

(assert (= (and b!1182952 condMapEmpty!46544) mapIsEmpty!46544))

(assert (= (and b!1182952 (not condMapEmpty!46544)) mapNonEmpty!46544))

(get-info :version)

(assert (= (and mapNonEmpty!46544 ((_ is ValueCellFull!14196) mapValue!46544)) b!1182935))

(assert (= (and b!1182952 ((_ is ValueCellFull!14196) mapDefault!46544)) b!1182948))

(assert (= start!99738 b!1182952))

(declare-fun b_lambda!20443 () Bool)

(assert (=> (not b_lambda!20443) (not b!1182951)))

(declare-fun t!38338 () Bool)

(declare-fun tb!10101 () Bool)

(assert (=> (and start!99738 (= defaultEntry!1004 defaultEntry!1004) t!38338) tb!10101))

(declare-fun result!20761 () Bool)

(assert (=> tb!10101 (= result!20761 tp_is_empty!29811)))

(assert (=> b!1182951 t!38338))

(declare-fun b_and!41445 () Bool)

(assert (= b_and!41443 (and (=> t!38338 result!20761) b_and!41445)))

(declare-fun m!1091085 () Bool)

(assert (=> b!1182950 m!1091085))

(declare-fun m!1091087 () Bool)

(assert (=> b!1182950 m!1091087))

(declare-fun m!1091089 () Bool)

(assert (=> b!1182950 m!1091089))

(declare-fun m!1091091 () Bool)

(assert (=> b!1182950 m!1091091))

(declare-fun m!1091093 () Bool)

(assert (=> b!1182950 m!1091093))

(declare-fun m!1091095 () Bool)

(assert (=> b!1182950 m!1091095))

(assert (=> b!1182950 m!1091091))

(declare-fun m!1091097 () Bool)

(assert (=> b!1182940 m!1091097))

(declare-fun m!1091099 () Bool)

(assert (=> b!1182947 m!1091099))

(declare-fun m!1091101 () Bool)

(assert (=> mapNonEmpty!46544 m!1091101))

(declare-fun m!1091103 () Bool)

(assert (=> b!1182949 m!1091103))

(declare-fun m!1091105 () Bool)

(assert (=> b!1182949 m!1091105))

(assert (=> b!1182949 m!1091103))

(declare-fun m!1091107 () Bool)

(assert (=> b!1182949 m!1091107))

(declare-fun m!1091109 () Bool)

(assert (=> b!1182949 m!1091109))

(assert (=> b!1182949 m!1091091))

(declare-fun m!1091111 () Bool)

(assert (=> b!1182949 m!1091111))

(declare-fun m!1091113 () Bool)

(assert (=> b!1182949 m!1091113))

(assert (=> b!1182949 m!1091091))

(declare-fun m!1091115 () Bool)

(assert (=> b!1182936 m!1091115))

(declare-fun m!1091117 () Bool)

(assert (=> b!1182938 m!1091117))

(declare-fun m!1091119 () Bool)

(assert (=> b!1182938 m!1091119))

(declare-fun m!1091121 () Bool)

(assert (=> start!99738 m!1091121))

(declare-fun m!1091123 () Bool)

(assert (=> start!99738 m!1091123))

(declare-fun m!1091125 () Bool)

(assert (=> b!1182951 m!1091125))

(declare-fun m!1091127 () Bool)

(assert (=> b!1182951 m!1091127))

(declare-fun m!1091129 () Bool)

(assert (=> b!1182951 m!1091129))

(declare-fun m!1091131 () Bool)

(assert (=> b!1182951 m!1091131))

(declare-fun m!1091133 () Bool)

(assert (=> b!1182937 m!1091133))

(declare-fun m!1091135 () Bool)

(assert (=> b!1182939 m!1091135))

(declare-fun m!1091137 () Bool)

(assert (=> b!1182941 m!1091137))

(declare-fun m!1091139 () Bool)

(assert (=> b!1182941 m!1091139))

(declare-fun m!1091141 () Bool)

(assert (=> b!1182941 m!1091141))

(declare-fun m!1091143 () Bool)

(assert (=> b!1182941 m!1091143))

(declare-fun m!1091145 () Bool)

(assert (=> b!1182941 m!1091145))

(declare-fun m!1091147 () Bool)

(assert (=> b!1182946 m!1091147))

(declare-fun m!1091149 () Bool)

(assert (=> b!1182946 m!1091149))

(declare-fun m!1091151 () Bool)

(assert (=> b!1182944 m!1091151))

(declare-fun m!1091153 () Bool)

(assert (=> b!1182943 m!1091153))

(assert (=> b!1182945 m!1091091))

(check-sat (not b!1182944) b_and!41445 tp_is_empty!29811 (not mapNonEmpty!46544) (not b!1182950) (not b!1182943) (not b!1182951) (not start!99738) (not b_next!25281) (not b!1182939) (not b!1182946) (not b!1182949) (not b!1182940) (not b!1182936) (not b_lambda!20443) (not b!1182941) (not b!1182938) (not b!1182947))
(check-sat b_and!41445 (not b_next!25281))

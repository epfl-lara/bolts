; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99858 () Bool)

(assert start!99858)

(declare-fun b_free!25401 () Bool)

(declare-fun b_next!25401 () Bool)

(assert (=> start!99858 (= b_free!25401 (not b_next!25401))))

(declare-fun tp!88917 () Bool)

(declare-fun b_and!41683 () Bool)

(assert (=> start!99858 (= tp!88917 b_and!41683)))

(declare-fun b!1186653 () Bool)

(declare-fun e!674761 () Bool)

(declare-fun e!674759 () Bool)

(assert (=> b!1186653 (= e!674761 e!674759)))

(declare-fun res!788970 () Bool)

(assert (=> b!1186653 (=> res!788970 e!674759)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1186653 (= res!788970 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45035 0))(
  ( (V!45036 (val!15022 Int)) )
))
(declare-fun zeroValue!944 () V!45035)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14256 0))(
  ( (ValueCellFull!14256 (v!17661 V!45035)) (EmptyCell!14256) )
))
(declare-datatypes ((array!76630 0))(
  ( (array!76631 (arr!36961 (Array (_ BitVec 32) ValueCell!14256)) (size!37498 (_ BitVec 32))) )
))
(declare-fun lt!539141 () array!76630)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!76632 0))(
  ( (array!76633 (arr!36962 (Array (_ BitVec 32) (_ BitVec 64))) (size!37499 (_ BitVec 32))) )
))
(declare-fun lt!539142 () array!76632)

(declare-datatypes ((tuple2!19408 0))(
  ( (tuple2!19409 (_1!9714 (_ BitVec 64)) (_2!9714 V!45035)) )
))
(declare-datatypes ((List!26167 0))(
  ( (Nil!26164) (Cons!26163 (h!27372 tuple2!19408) (t!38567 List!26167)) )
))
(declare-datatypes ((ListLongMap!17389 0))(
  ( (ListLongMap!17390 (toList!8710 List!26167)) )
))
(declare-fun lt!539132 () ListLongMap!17389)

(declare-fun minValue!944 () V!45035)

(declare-fun getCurrentListMapNoExtraKeys!5127 (array!76632 array!76630 (_ BitVec 32) (_ BitVec 32) V!45035 V!45035 (_ BitVec 32) Int) ListLongMap!17389)

(assert (=> b!1186653 (= lt!539132 (getCurrentListMapNoExtraKeys!5127 lt!539142 lt!539141 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!539131 () V!45035)

(declare-fun _values!996 () array!76630)

(assert (=> b!1186653 (= lt!539141 (array!76631 (store (arr!36961 _values!996) i!673 (ValueCellFull!14256 lt!539131)) (size!37498 _values!996)))))

(declare-fun dynLambda!3084 (Int (_ BitVec 64)) V!45035)

(assert (=> b!1186653 (= lt!539131 (dynLambda!3084 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!76632)

(declare-fun lt!539139 () ListLongMap!17389)

(assert (=> b!1186653 (= lt!539139 (getCurrentListMapNoExtraKeys!5127 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1186654 () Bool)

(declare-fun res!788969 () Bool)

(declare-fun e!674757 () Bool)

(assert (=> b!1186654 (=> (not res!788969) (not e!674757))))

(assert (=> b!1186654 (= res!788969 (and (= (size!37498 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37499 _keys!1208) (size!37498 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1186655 () Bool)

(declare-fun res!788977 () Bool)

(assert (=> b!1186655 (=> (not res!788977) (not e!674757))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1186655 (= res!788977 (validMask!0 mask!1564))))

(declare-fun b!1186656 () Bool)

(declare-fun e!674752 () Bool)

(assert (=> b!1186656 (= e!674752 (not e!674761))))

(declare-fun res!788976 () Bool)

(assert (=> b!1186656 (=> res!788976 e!674761)))

(assert (=> b!1186656 (= res!788976 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76632 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1186656 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39263 0))(
  ( (Unit!39264) )
))
(declare-fun lt!539135 () Unit!39263)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76632 (_ BitVec 64) (_ BitVec 32)) Unit!39263)

(assert (=> b!1186656 (= lt!539135 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1186657 () Bool)

(declare-fun e!674755 () Bool)

(declare-fun tp_is_empty!29931 () Bool)

(assert (=> b!1186657 (= e!674755 tp_is_empty!29931)))

(declare-fun b!1186658 () Bool)

(declare-fun res!788981 () Bool)

(assert (=> b!1186658 (=> (not res!788981) (not e!674757))))

(declare-datatypes ((List!26168 0))(
  ( (Nil!26165) (Cons!26164 (h!27373 (_ BitVec 64)) (t!38568 List!26168)) )
))
(declare-fun arrayNoDuplicates!0 (array!76632 (_ BitVec 32) List!26168) Bool)

(assert (=> b!1186658 (= res!788981 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26165))))

(declare-fun b!1186659 () Bool)

(assert (=> b!1186659 (= e!674757 e!674752)))

(declare-fun res!788973 () Bool)

(assert (=> b!1186659 (=> (not res!788973) (not e!674752))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76632 (_ BitVec 32)) Bool)

(assert (=> b!1186659 (= res!788973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!539142 mask!1564))))

(assert (=> b!1186659 (= lt!539142 (array!76633 (store (arr!36962 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37499 _keys!1208)))))

(declare-fun b!1186660 () Bool)

(declare-fun e!674753 () Unit!39263)

(declare-fun Unit!39265 () Unit!39263)

(assert (=> b!1186660 (= e!674753 Unit!39265)))

(declare-fun mapNonEmpty!46724 () Bool)

(declare-fun mapRes!46724 () Bool)

(declare-fun tp!88918 () Bool)

(declare-fun e!674758 () Bool)

(assert (=> mapNonEmpty!46724 (= mapRes!46724 (and tp!88918 e!674758))))

(declare-fun mapValue!46724 () ValueCell!14256)

(declare-fun mapKey!46724 () (_ BitVec 32))

(declare-fun mapRest!46724 () (Array (_ BitVec 32) ValueCell!14256))

(assert (=> mapNonEmpty!46724 (= (arr!36961 _values!996) (store mapRest!46724 mapKey!46724 mapValue!46724))))

(declare-fun b!1186661 () Bool)

(declare-fun res!788983 () Bool)

(assert (=> b!1186661 (=> (not res!788983) (not e!674757))))

(assert (=> b!1186661 (= res!788983 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37499 _keys!1208))))))

(declare-fun mapIsEmpty!46724 () Bool)

(assert (=> mapIsEmpty!46724 mapRes!46724))

(declare-fun b!1186662 () Bool)

(declare-fun res!788972 () Bool)

(assert (=> b!1186662 (=> (not res!788972) (not e!674757))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1186662 (= res!788972 (validKeyInArray!0 k0!934))))

(declare-fun b!1186663 () Bool)

(declare-fun res!788975 () Bool)

(assert (=> b!1186663 (=> (not res!788975) (not e!674757))))

(assert (=> b!1186663 (= res!788975 (= (select (arr!36962 _keys!1208) i!673) k0!934))))

(declare-fun b!1186664 () Bool)

(assert (=> b!1186664 (= e!674758 tp_is_empty!29931)))

(declare-fun b!1186665 () Bool)

(declare-fun Unit!39266 () Unit!39263)

(assert (=> b!1186665 (= e!674753 Unit!39266)))

(declare-fun lt!539143 () Unit!39263)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76632 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39263)

(assert (=> b!1186665 (= lt!539143 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1186665 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!539133 () Unit!39263)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76632 (_ BitVec 32) (_ BitVec 32)) Unit!39263)

(assert (=> b!1186665 (= lt!539133 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1186665 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26165)))

(declare-fun lt!539137 () Unit!39263)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76632 (_ BitVec 64) (_ BitVec 32) List!26168) Unit!39263)

(assert (=> b!1186665 (= lt!539137 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26165))))

(assert (=> b!1186665 false))

(declare-fun b!1186666 () Bool)

(declare-fun e!674754 () Bool)

(declare-fun e!674760 () Bool)

(assert (=> b!1186666 (= e!674754 e!674760)))

(declare-fun res!788971 () Bool)

(assert (=> b!1186666 (=> res!788971 e!674760)))

(assert (=> b!1186666 (= res!788971 (not (= (select (arr!36962 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1186667 () Bool)

(declare-fun res!788979 () Bool)

(assert (=> b!1186667 (=> (not res!788979) (not e!674757))))

(assert (=> b!1186667 (= res!788979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1186668 () Bool)

(declare-fun e!674751 () Bool)

(assert (=> b!1186668 (= e!674759 e!674751)))

(declare-fun res!788982 () Bool)

(assert (=> b!1186668 (=> res!788982 e!674751)))

(assert (=> b!1186668 (= res!788982 (not (validKeyInArray!0 (select (arr!36962 _keys!1208) from!1455))))))

(declare-fun lt!539134 () ListLongMap!17389)

(declare-fun lt!539145 () ListLongMap!17389)

(assert (=> b!1186668 (= lt!539134 lt!539145)))

(declare-fun lt!539127 () ListLongMap!17389)

(declare-fun -!1695 (ListLongMap!17389 (_ BitVec 64)) ListLongMap!17389)

(assert (=> b!1186668 (= lt!539145 (-!1695 lt!539127 k0!934))))

(assert (=> b!1186668 (= lt!539134 (getCurrentListMapNoExtraKeys!5127 lt!539142 lt!539141 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1186668 (= lt!539127 (getCurrentListMapNoExtraKeys!5127 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!539129 () Unit!39263)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!906 (array!76632 array!76630 (_ BitVec 32) (_ BitVec 32) V!45035 V!45035 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39263)

(assert (=> b!1186668 (= lt!539129 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!906 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1186669 () Bool)

(assert (=> b!1186669 (= e!674760 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1186670 () Bool)

(declare-fun res!788980 () Bool)

(assert (=> b!1186670 (=> (not res!788980) (not e!674752))))

(assert (=> b!1186670 (= res!788980 (arrayNoDuplicates!0 lt!539142 #b00000000000000000000000000000000 Nil!26165))))

(declare-fun b!1186671 () Bool)

(assert (=> b!1186671 (= e!674751 true)))

(declare-fun lt!539140 () ListLongMap!17389)

(declare-fun lt!539128 () ListLongMap!17389)

(assert (=> b!1186671 (= (-!1695 lt!539140 k0!934) lt!539128)))

(declare-fun lt!539130 () V!45035)

(declare-fun lt!539144 () Unit!39263)

(declare-fun addRemoveCommutativeForDiffKeys!203 (ListLongMap!17389 (_ BitVec 64) V!45035 (_ BitVec 64)) Unit!39263)

(assert (=> b!1186671 (= lt!539144 (addRemoveCommutativeForDiffKeys!203 lt!539127 (select (arr!36962 _keys!1208) from!1455) lt!539130 k0!934))))

(assert (=> b!1186671 (and (= lt!539139 lt!539140) (= lt!539145 lt!539134))))

(declare-fun lt!539138 () tuple2!19408)

(declare-fun +!3913 (ListLongMap!17389 tuple2!19408) ListLongMap!17389)

(assert (=> b!1186671 (= lt!539140 (+!3913 lt!539127 lt!539138))))

(assert (=> b!1186671 (not (= (select (arr!36962 _keys!1208) from!1455) k0!934))))

(declare-fun lt!539136 () Unit!39263)

(assert (=> b!1186671 (= lt!539136 e!674753)))

(declare-fun c!117173 () Bool)

(assert (=> b!1186671 (= c!117173 (= (select (arr!36962 _keys!1208) from!1455) k0!934))))

(assert (=> b!1186671 e!674754))

(declare-fun res!788974 () Bool)

(assert (=> b!1186671 (=> (not res!788974) (not e!674754))))

(assert (=> b!1186671 (= res!788974 (= lt!539132 lt!539128))))

(assert (=> b!1186671 (= lt!539128 (+!3913 lt!539145 lt!539138))))

(assert (=> b!1186671 (= lt!539138 (tuple2!19409 (select (arr!36962 _keys!1208) from!1455) lt!539130))))

(declare-fun get!18969 (ValueCell!14256 V!45035) V!45035)

(assert (=> b!1186671 (= lt!539130 (get!18969 (select (arr!36961 _values!996) from!1455) lt!539131))))

(declare-fun res!788978 () Bool)

(assert (=> start!99858 (=> (not res!788978) (not e!674757))))

(assert (=> start!99858 (= res!788978 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37499 _keys!1208))))))

(assert (=> start!99858 e!674757))

(assert (=> start!99858 tp_is_empty!29931))

(declare-fun array_inv!28086 (array!76632) Bool)

(assert (=> start!99858 (array_inv!28086 _keys!1208)))

(assert (=> start!99858 true))

(assert (=> start!99858 tp!88917))

(declare-fun e!674750 () Bool)

(declare-fun array_inv!28087 (array!76630) Bool)

(assert (=> start!99858 (and (array_inv!28087 _values!996) e!674750)))

(declare-fun b!1186672 () Bool)

(assert (=> b!1186672 (= e!674750 (and e!674755 mapRes!46724))))

(declare-fun condMapEmpty!46724 () Bool)

(declare-fun mapDefault!46724 () ValueCell!14256)

(assert (=> b!1186672 (= condMapEmpty!46724 (= (arr!36961 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14256)) mapDefault!46724)))))

(assert (= (and start!99858 res!788978) b!1186655))

(assert (= (and b!1186655 res!788977) b!1186654))

(assert (= (and b!1186654 res!788969) b!1186667))

(assert (= (and b!1186667 res!788979) b!1186658))

(assert (= (and b!1186658 res!788981) b!1186661))

(assert (= (and b!1186661 res!788983) b!1186662))

(assert (= (and b!1186662 res!788972) b!1186663))

(assert (= (and b!1186663 res!788975) b!1186659))

(assert (= (and b!1186659 res!788973) b!1186670))

(assert (= (and b!1186670 res!788980) b!1186656))

(assert (= (and b!1186656 (not res!788976)) b!1186653))

(assert (= (and b!1186653 (not res!788970)) b!1186668))

(assert (= (and b!1186668 (not res!788982)) b!1186671))

(assert (= (and b!1186671 res!788974) b!1186666))

(assert (= (and b!1186666 (not res!788971)) b!1186669))

(assert (= (and b!1186671 c!117173) b!1186665))

(assert (= (and b!1186671 (not c!117173)) b!1186660))

(assert (= (and b!1186672 condMapEmpty!46724) mapIsEmpty!46724))

(assert (= (and b!1186672 (not condMapEmpty!46724)) mapNonEmpty!46724))

(get-info :version)

(assert (= (and mapNonEmpty!46724 ((_ is ValueCellFull!14256) mapValue!46724)) b!1186664))

(assert (= (and b!1186672 ((_ is ValueCellFull!14256) mapDefault!46724)) b!1186657))

(assert (= start!99858 b!1186672))

(declare-fun b_lambda!20563 () Bool)

(assert (=> (not b_lambda!20563) (not b!1186653)))

(declare-fun t!38566 () Bool)

(declare-fun tb!10221 () Bool)

(assert (=> (and start!99858 (= defaultEntry!1004 defaultEntry!1004) t!38566) tb!10221))

(declare-fun result!21001 () Bool)

(assert (=> tb!10221 (= result!21001 tp_is_empty!29931)))

(assert (=> b!1186653 t!38566))

(declare-fun b_and!41685 () Bool)

(assert (= b_and!41683 (and (=> t!38566 result!21001) b_and!41685)))

(declare-fun m!1095285 () Bool)

(assert (=> b!1186669 m!1095285))

(declare-fun m!1095287 () Bool)

(assert (=> b!1186670 m!1095287))

(declare-fun m!1095289 () Bool)

(assert (=> b!1186667 m!1095289))

(declare-fun m!1095291 () Bool)

(assert (=> b!1186655 m!1095291))

(declare-fun m!1095293 () Bool)

(assert (=> b!1186658 m!1095293))

(declare-fun m!1095295 () Bool)

(assert (=> mapNonEmpty!46724 m!1095295))

(declare-fun m!1095297 () Bool)

(assert (=> b!1186668 m!1095297))

(declare-fun m!1095299 () Bool)

(assert (=> b!1186668 m!1095299))

(declare-fun m!1095301 () Bool)

(assert (=> b!1186668 m!1095301))

(declare-fun m!1095303 () Bool)

(assert (=> b!1186668 m!1095303))

(assert (=> b!1186668 m!1095301))

(declare-fun m!1095305 () Bool)

(assert (=> b!1186668 m!1095305))

(declare-fun m!1095307 () Bool)

(assert (=> b!1186668 m!1095307))

(declare-fun m!1095309 () Bool)

(assert (=> b!1186653 m!1095309))

(declare-fun m!1095311 () Bool)

(assert (=> b!1186653 m!1095311))

(declare-fun m!1095313 () Bool)

(assert (=> b!1186653 m!1095313))

(declare-fun m!1095315 () Bool)

(assert (=> b!1186653 m!1095315))

(declare-fun m!1095317 () Bool)

(assert (=> b!1186656 m!1095317))

(declare-fun m!1095319 () Bool)

(assert (=> b!1186656 m!1095319))

(declare-fun m!1095321 () Bool)

(assert (=> b!1186663 m!1095321))

(declare-fun m!1095323 () Bool)

(assert (=> start!99858 m!1095323))

(declare-fun m!1095325 () Bool)

(assert (=> start!99858 m!1095325))

(declare-fun m!1095327 () Bool)

(assert (=> b!1186662 m!1095327))

(declare-fun m!1095329 () Bool)

(assert (=> b!1186659 m!1095329))

(declare-fun m!1095331 () Bool)

(assert (=> b!1186659 m!1095331))

(declare-fun m!1095333 () Bool)

(assert (=> b!1186665 m!1095333))

(declare-fun m!1095335 () Bool)

(assert (=> b!1186665 m!1095335))

(declare-fun m!1095337 () Bool)

(assert (=> b!1186665 m!1095337))

(declare-fun m!1095339 () Bool)

(assert (=> b!1186665 m!1095339))

(declare-fun m!1095341 () Bool)

(assert (=> b!1186665 m!1095341))

(declare-fun m!1095343 () Bool)

(assert (=> b!1186671 m!1095343))

(declare-fun m!1095345 () Bool)

(assert (=> b!1186671 m!1095345))

(assert (=> b!1186671 m!1095301))

(declare-fun m!1095347 () Bool)

(assert (=> b!1186671 m!1095347))

(assert (=> b!1186671 m!1095343))

(declare-fun m!1095349 () Bool)

(assert (=> b!1186671 m!1095349))

(declare-fun m!1095351 () Bool)

(assert (=> b!1186671 m!1095351))

(declare-fun m!1095353 () Bool)

(assert (=> b!1186671 m!1095353))

(assert (=> b!1186671 m!1095301))

(assert (=> b!1186666 m!1095301))

(check-sat (not b!1186656) (not b!1186671) (not b!1186667) (not b!1186662) (not b!1186670) (not b_lambda!20563) b_and!41685 (not b!1186659) (not b!1186655) (not start!99858) (not b_next!25401) tp_is_empty!29931 (not b!1186658) (not b!1186653) (not b!1186669) (not mapNonEmpty!46724) (not b!1186668) (not b!1186665))
(check-sat b_and!41685 (not b_next!25401))

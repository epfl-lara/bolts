; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99882 () Bool)

(assert start!99882)

(declare-fun b_free!25425 () Bool)

(declare-fun b_next!25425 () Bool)

(assert (=> start!99882 (= b_free!25425 (not b_next!25425))))

(declare-fun tp!88990 () Bool)

(declare-fun b_and!41731 () Bool)

(assert (=> start!99882 (= tp!88990 b_and!41731)))

(declare-fun b!1187397 () Bool)

(declare-fun e!675186 () Bool)

(assert (=> b!1187397 (= e!675186 true)))

(declare-datatypes ((V!45067 0))(
  ( (V!45068 (val!15034 Int)) )
))
(declare-datatypes ((tuple2!19428 0))(
  ( (tuple2!19429 (_1!9724 (_ BitVec 64)) (_2!9724 V!45067)) )
))
(declare-datatypes ((List!26187 0))(
  ( (Nil!26184) (Cons!26183 (h!27392 tuple2!19428) (t!38611 List!26187)) )
))
(declare-datatypes ((ListLongMap!17409 0))(
  ( (ListLongMap!17410 (toList!8720 List!26187)) )
))
(declare-fun lt!539824 () ListLongMap!17409)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!539828 () ListLongMap!17409)

(declare-fun -!1705 (ListLongMap!17409 (_ BitVec 64)) ListLongMap!17409)

(assert (=> b!1187397 (= (-!1705 lt!539824 k0!934) lt!539828)))

(declare-datatypes ((array!76678 0))(
  ( (array!76679 (arr!36985 (Array (_ BitVec 32) (_ BitVec 64))) (size!37522 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76678)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((Unit!39304 0))(
  ( (Unit!39305) )
))
(declare-fun lt!539819 () Unit!39304)

(declare-fun lt!539822 () ListLongMap!17409)

(declare-fun lt!539816 () V!45067)

(declare-fun addRemoveCommutativeForDiffKeys!212 (ListLongMap!17409 (_ BitVec 64) V!45067 (_ BitVec 64)) Unit!39304)

(assert (=> b!1187397 (= lt!539819 (addRemoveCommutativeForDiffKeys!212 lt!539822 (select (arr!36985 _keys!1208) from!1455) lt!539816 k0!934))))

(declare-fun lt!539813 () ListLongMap!17409)

(declare-fun lt!539811 () ListLongMap!17409)

(declare-fun lt!539825 () ListLongMap!17409)

(assert (=> b!1187397 (and (= lt!539811 lt!539824) (= lt!539813 lt!539825))))

(declare-fun lt!539817 () tuple2!19428)

(declare-fun +!3922 (ListLongMap!17409 tuple2!19428) ListLongMap!17409)

(assert (=> b!1187397 (= lt!539824 (+!3922 lt!539822 lt!539817))))

(assert (=> b!1187397 (not (= (select (arr!36985 _keys!1208) from!1455) k0!934))))

(declare-fun lt!539820 () Unit!39304)

(declare-fun e!675188 () Unit!39304)

(assert (=> b!1187397 (= lt!539820 e!675188)))

(declare-fun c!117209 () Bool)

(assert (=> b!1187397 (= c!117209 (= (select (arr!36985 _keys!1208) from!1455) k0!934))))

(declare-fun e!675187 () Bool)

(assert (=> b!1187397 e!675187))

(declare-fun res!789523 () Bool)

(assert (=> b!1187397 (=> (not res!789523) (not e!675187))))

(declare-fun lt!539826 () ListLongMap!17409)

(assert (=> b!1187397 (= res!789523 (= lt!539826 lt!539828))))

(assert (=> b!1187397 (= lt!539828 (+!3922 lt!539813 lt!539817))))

(assert (=> b!1187397 (= lt!539817 (tuple2!19429 (select (arr!36985 _keys!1208) from!1455) lt!539816))))

(declare-fun lt!539821 () V!45067)

(declare-datatypes ((ValueCell!14268 0))(
  ( (ValueCellFull!14268 (v!17673 V!45067)) (EmptyCell!14268) )
))
(declare-datatypes ((array!76680 0))(
  ( (array!76681 (arr!36986 (Array (_ BitVec 32) ValueCell!14268)) (size!37523 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76680)

(declare-fun get!18986 (ValueCell!14268 V!45067) V!45067)

(assert (=> b!1187397 (= lt!539816 (get!18986 (select (arr!36986 _values!996) from!1455) lt!539821))))

(declare-fun b!1187398 () Bool)

(declare-fun Unit!39306 () Unit!39304)

(assert (=> b!1187398 (= e!675188 Unit!39306)))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!539812 () Unit!39304)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76678 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39304)

(assert (=> b!1187398 (= lt!539812 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76678 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1187398 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!539829 () Unit!39304)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76678 (_ BitVec 32) (_ BitVec 32)) Unit!39304)

(assert (=> b!1187398 (= lt!539829 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26188 0))(
  ( (Nil!26185) (Cons!26184 (h!27393 (_ BitVec 64)) (t!38612 List!26188)) )
))
(declare-fun arrayNoDuplicates!0 (array!76678 (_ BitVec 32) List!26188) Bool)

(assert (=> b!1187398 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26185)))

(declare-fun lt!539818 () Unit!39304)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76678 (_ BitVec 64) (_ BitVec 32) List!26188) Unit!39304)

(assert (=> b!1187398 (= lt!539818 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26185))))

(assert (=> b!1187398 false))

(declare-fun res!789516 () Bool)

(declare-fun e!675182 () Bool)

(assert (=> start!99882 (=> (not res!789516) (not e!675182))))

(assert (=> start!99882 (= res!789516 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37522 _keys!1208))))))

(assert (=> start!99882 e!675182))

(declare-fun tp_is_empty!29955 () Bool)

(assert (=> start!99882 tp_is_empty!29955))

(declare-fun array_inv!28104 (array!76678) Bool)

(assert (=> start!99882 (array_inv!28104 _keys!1208)))

(assert (=> start!99882 true))

(assert (=> start!99882 tp!88990))

(declare-fun e!675190 () Bool)

(declare-fun array_inv!28105 (array!76680) Bool)

(assert (=> start!99882 (and (array_inv!28105 _values!996) e!675190)))

(declare-fun b!1187399 () Bool)

(declare-fun res!789520 () Bool)

(assert (=> b!1187399 (=> (not res!789520) (not e!675182))))

(assert (=> b!1187399 (= res!789520 (= (select (arr!36985 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!46760 () Bool)

(declare-fun mapRes!46760 () Bool)

(assert (=> mapIsEmpty!46760 mapRes!46760))

(declare-fun b!1187400 () Bool)

(declare-fun Unit!39307 () Unit!39304)

(assert (=> b!1187400 (= e!675188 Unit!39307)))

(declare-fun b!1187401 () Bool)

(declare-fun e!675183 () Bool)

(assert (=> b!1187401 (= e!675187 e!675183)))

(declare-fun res!789519 () Bool)

(assert (=> b!1187401 (=> res!789519 e!675183)))

(assert (=> b!1187401 (= res!789519 (not (= (select (arr!36985 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1187402 () Bool)

(declare-fun e!675192 () Bool)

(assert (=> b!1187402 (= e!675192 e!675186)))

(declare-fun res!789518 () Bool)

(assert (=> b!1187402 (=> res!789518 e!675186)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1187402 (= res!789518 (not (validKeyInArray!0 (select (arr!36985 _keys!1208) from!1455))))))

(assert (=> b!1187402 (= lt!539825 lt!539813)))

(assert (=> b!1187402 (= lt!539813 (-!1705 lt!539822 k0!934))))

(declare-fun zeroValue!944 () V!45067)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!539815 () array!76680)

(declare-fun lt!539827 () array!76678)

(declare-fun minValue!944 () V!45067)

(declare-fun getCurrentListMapNoExtraKeys!5135 (array!76678 array!76680 (_ BitVec 32) (_ BitVec 32) V!45067 V!45067 (_ BitVec 32) Int) ListLongMap!17409)

(assert (=> b!1187402 (= lt!539825 (getCurrentListMapNoExtraKeys!5135 lt!539827 lt!539815 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1187402 (= lt!539822 (getCurrentListMapNoExtraKeys!5135 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!539814 () Unit!39304)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!914 (array!76678 array!76680 (_ BitVec 32) (_ BitVec 32) V!45067 V!45067 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39304)

(assert (=> b!1187402 (= lt!539814 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!914 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1187403 () Bool)

(declare-fun e!675193 () Bool)

(assert (=> b!1187403 (= e!675190 (and e!675193 mapRes!46760))))

(declare-fun condMapEmpty!46760 () Bool)

(declare-fun mapDefault!46760 () ValueCell!14268)

(assert (=> b!1187403 (= condMapEmpty!46760 (= (arr!36986 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14268)) mapDefault!46760)))))

(declare-fun b!1187404 () Bool)

(assert (=> b!1187404 (= e!675183 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1187405 () Bool)

(declare-fun res!789512 () Bool)

(assert (=> b!1187405 (=> (not res!789512) (not e!675182))))

(assert (=> b!1187405 (= res!789512 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26185))))

(declare-fun b!1187406 () Bool)

(declare-fun e!675184 () Bool)

(assert (=> b!1187406 (= e!675184 e!675192)))

(declare-fun res!789515 () Bool)

(assert (=> b!1187406 (=> res!789515 e!675192)))

(assert (=> b!1187406 (= res!789515 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1187406 (= lt!539826 (getCurrentListMapNoExtraKeys!5135 lt!539827 lt!539815 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1187406 (= lt!539815 (array!76681 (store (arr!36986 _values!996) i!673 (ValueCellFull!14268 lt!539821)) (size!37523 _values!996)))))

(declare-fun dynLambda!3092 (Int (_ BitVec 64)) V!45067)

(assert (=> b!1187406 (= lt!539821 (dynLambda!3092 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1187406 (= lt!539811 (getCurrentListMapNoExtraKeys!5135 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1187407 () Bool)

(declare-fun res!789509 () Bool)

(assert (=> b!1187407 (=> (not res!789509) (not e!675182))))

(assert (=> b!1187407 (= res!789509 (validKeyInArray!0 k0!934))))

(declare-fun b!1187408 () Bool)

(declare-fun e!675191 () Bool)

(assert (=> b!1187408 (= e!675191 (not e!675184))))

(declare-fun res!789521 () Bool)

(assert (=> b!1187408 (=> res!789521 e!675184)))

(assert (=> b!1187408 (= res!789521 (bvsgt from!1455 i!673))))

(assert (=> b!1187408 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!539823 () Unit!39304)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76678 (_ BitVec 64) (_ BitVec 32)) Unit!39304)

(assert (=> b!1187408 (= lt!539823 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1187409 () Bool)

(declare-fun res!789511 () Bool)

(assert (=> b!1187409 (=> (not res!789511) (not e!675191))))

(assert (=> b!1187409 (= res!789511 (arrayNoDuplicates!0 lt!539827 #b00000000000000000000000000000000 Nil!26185))))

(declare-fun b!1187410 () Bool)

(assert (=> b!1187410 (= e!675193 tp_is_empty!29955)))

(declare-fun b!1187411 () Bool)

(assert (=> b!1187411 (= e!675182 e!675191)))

(declare-fun res!789514 () Bool)

(assert (=> b!1187411 (=> (not res!789514) (not e!675191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76678 (_ BitVec 32)) Bool)

(assert (=> b!1187411 (= res!789514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!539827 mask!1564))))

(assert (=> b!1187411 (= lt!539827 (array!76679 (store (arr!36985 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37522 _keys!1208)))))

(declare-fun b!1187412 () Bool)

(declare-fun res!789522 () Bool)

(assert (=> b!1187412 (=> (not res!789522) (not e!675182))))

(assert (=> b!1187412 (= res!789522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!46760 () Bool)

(declare-fun tp!88989 () Bool)

(declare-fun e!675189 () Bool)

(assert (=> mapNonEmpty!46760 (= mapRes!46760 (and tp!88989 e!675189))))

(declare-fun mapRest!46760 () (Array (_ BitVec 32) ValueCell!14268))

(declare-fun mapKey!46760 () (_ BitVec 32))

(declare-fun mapValue!46760 () ValueCell!14268)

(assert (=> mapNonEmpty!46760 (= (arr!36986 _values!996) (store mapRest!46760 mapKey!46760 mapValue!46760))))

(declare-fun b!1187413 () Bool)

(assert (=> b!1187413 (= e!675189 tp_is_empty!29955)))

(declare-fun b!1187414 () Bool)

(declare-fun res!789510 () Bool)

(assert (=> b!1187414 (=> (not res!789510) (not e!675182))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1187414 (= res!789510 (validMask!0 mask!1564))))

(declare-fun b!1187415 () Bool)

(declare-fun res!789513 () Bool)

(assert (=> b!1187415 (=> (not res!789513) (not e!675182))))

(assert (=> b!1187415 (= res!789513 (and (= (size!37523 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37522 _keys!1208) (size!37523 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1187416 () Bool)

(declare-fun res!789517 () Bool)

(assert (=> b!1187416 (=> (not res!789517) (not e!675182))))

(assert (=> b!1187416 (= res!789517 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37522 _keys!1208))))))

(assert (= (and start!99882 res!789516) b!1187414))

(assert (= (and b!1187414 res!789510) b!1187415))

(assert (= (and b!1187415 res!789513) b!1187412))

(assert (= (and b!1187412 res!789522) b!1187405))

(assert (= (and b!1187405 res!789512) b!1187416))

(assert (= (and b!1187416 res!789517) b!1187407))

(assert (= (and b!1187407 res!789509) b!1187399))

(assert (= (and b!1187399 res!789520) b!1187411))

(assert (= (and b!1187411 res!789514) b!1187409))

(assert (= (and b!1187409 res!789511) b!1187408))

(assert (= (and b!1187408 (not res!789521)) b!1187406))

(assert (= (and b!1187406 (not res!789515)) b!1187402))

(assert (= (and b!1187402 (not res!789518)) b!1187397))

(assert (= (and b!1187397 res!789523) b!1187401))

(assert (= (and b!1187401 (not res!789519)) b!1187404))

(assert (= (and b!1187397 c!117209) b!1187398))

(assert (= (and b!1187397 (not c!117209)) b!1187400))

(assert (= (and b!1187403 condMapEmpty!46760) mapIsEmpty!46760))

(assert (= (and b!1187403 (not condMapEmpty!46760)) mapNonEmpty!46760))

(get-info :version)

(assert (= (and mapNonEmpty!46760 ((_ is ValueCellFull!14268) mapValue!46760)) b!1187413))

(assert (= (and b!1187403 ((_ is ValueCellFull!14268) mapDefault!46760)) b!1187410))

(assert (= start!99882 b!1187403))

(declare-fun b_lambda!20587 () Bool)

(assert (=> (not b_lambda!20587) (not b!1187406)))

(declare-fun t!38610 () Bool)

(declare-fun tb!10245 () Bool)

(assert (=> (and start!99882 (= defaultEntry!1004 defaultEntry!1004) t!38610) tb!10245))

(declare-fun result!21049 () Bool)

(assert (=> tb!10245 (= result!21049 tp_is_empty!29955)))

(assert (=> b!1187406 t!38610))

(declare-fun b_and!41733 () Bool)

(assert (= b_and!41731 (and (=> t!38610 result!21049) b_and!41733)))

(declare-fun m!1096125 () Bool)

(assert (=> b!1187399 m!1096125))

(declare-fun m!1096127 () Bool)

(assert (=> b!1187402 m!1096127))

(declare-fun m!1096129 () Bool)

(assert (=> b!1187402 m!1096129))

(declare-fun m!1096131 () Bool)

(assert (=> b!1187402 m!1096131))

(declare-fun m!1096133 () Bool)

(assert (=> b!1187402 m!1096133))

(declare-fun m!1096135 () Bool)

(assert (=> b!1187402 m!1096135))

(declare-fun m!1096137 () Bool)

(assert (=> b!1187402 m!1096137))

(assert (=> b!1187402 m!1096135))

(declare-fun m!1096139 () Bool)

(assert (=> b!1187409 m!1096139))

(assert (=> b!1187401 m!1096135))

(declare-fun m!1096141 () Bool)

(assert (=> b!1187404 m!1096141))

(declare-fun m!1096143 () Bool)

(assert (=> start!99882 m!1096143))

(declare-fun m!1096145 () Bool)

(assert (=> start!99882 m!1096145))

(declare-fun m!1096147 () Bool)

(assert (=> mapNonEmpty!46760 m!1096147))

(declare-fun m!1096149 () Bool)

(assert (=> b!1187408 m!1096149))

(declare-fun m!1096151 () Bool)

(assert (=> b!1187408 m!1096151))

(declare-fun m!1096153 () Bool)

(assert (=> b!1187412 m!1096153))

(declare-fun m!1096155 () Bool)

(assert (=> b!1187407 m!1096155))

(declare-fun m!1096157 () Bool)

(assert (=> b!1187414 m!1096157))

(declare-fun m!1096159 () Bool)

(assert (=> b!1187406 m!1096159))

(declare-fun m!1096161 () Bool)

(assert (=> b!1187406 m!1096161))

(declare-fun m!1096163 () Bool)

(assert (=> b!1187406 m!1096163))

(declare-fun m!1096165 () Bool)

(assert (=> b!1187406 m!1096165))

(declare-fun m!1096167 () Bool)

(assert (=> b!1187405 m!1096167))

(declare-fun m!1096169 () Bool)

(assert (=> b!1187398 m!1096169))

(declare-fun m!1096171 () Bool)

(assert (=> b!1187398 m!1096171))

(declare-fun m!1096173 () Bool)

(assert (=> b!1187398 m!1096173))

(declare-fun m!1096175 () Bool)

(assert (=> b!1187398 m!1096175))

(declare-fun m!1096177 () Bool)

(assert (=> b!1187398 m!1096177))

(declare-fun m!1096179 () Bool)

(assert (=> b!1187411 m!1096179))

(declare-fun m!1096181 () Bool)

(assert (=> b!1187411 m!1096181))

(declare-fun m!1096183 () Bool)

(assert (=> b!1187397 m!1096183))

(declare-fun m!1096185 () Bool)

(assert (=> b!1187397 m!1096185))

(assert (=> b!1187397 m!1096183))

(declare-fun m!1096187 () Bool)

(assert (=> b!1187397 m!1096187))

(declare-fun m!1096189 () Bool)

(assert (=> b!1187397 m!1096189))

(declare-fun m!1096191 () Bool)

(assert (=> b!1187397 m!1096191))

(assert (=> b!1187397 m!1096135))

(declare-fun m!1096193 () Bool)

(assert (=> b!1187397 m!1096193))

(assert (=> b!1187397 m!1096135))

(check-sat (not b!1187397) tp_is_empty!29955 (not b!1187402) (not b!1187414) (not mapNonEmpty!46760) (not b!1187407) (not b!1187409) (not b!1187411) (not b!1187405) (not start!99882) (not b_lambda!20587) (not b!1187408) (not b_next!25425) (not b!1187406) b_and!41733 (not b!1187398) (not b!1187404) (not b!1187412))
(check-sat b_and!41733 (not b_next!25425))

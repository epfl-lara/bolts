; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101786 () Bool)

(assert start!101786)

(declare-fun b_free!26439 () Bool)

(declare-fun b_next!26439 () Bool)

(assert (=> start!101786 (= b_free!26439 (not b_next!26439))))

(declare-fun tp!92364 () Bool)

(declare-fun b_and!44149 () Bool)

(assert (=> start!101786 (= tp!92364 b_and!44149)))

(declare-fun b!1224995 () Bool)

(declare-fun res!814130 () Bool)

(declare-fun e!695785 () Bool)

(assert (=> b!1224995 (=> (not res!814130) (not e!695785))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1224995 (= res!814130 (validKeyInArray!0 k0!934))))

(declare-fun b!1224996 () Bool)

(declare-fun e!695787 () Bool)

(declare-fun e!695792 () Bool)

(assert (=> b!1224996 (= e!695787 e!695792)))

(declare-fun res!814133 () Bool)

(assert (=> b!1224996 (=> res!814133 e!695792)))

(declare-datatypes ((array!79044 0))(
  ( (array!79045 (arr!38145 (Array (_ BitVec 32) (_ BitVec 64))) (size!38682 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79044)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1224996 (= res!814133 (not (= (select (arr!38145 _keys!1208) from!1455) k0!934)))))

(declare-fun res!814134 () Bool)

(assert (=> start!101786 (=> (not res!814134) (not e!695785))))

(assert (=> start!101786 (= res!814134 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38682 _keys!1208))))))

(assert (=> start!101786 e!695785))

(declare-fun tp_is_empty!31143 () Bool)

(assert (=> start!101786 tp_is_empty!31143))

(declare-fun array_inv!28934 (array!79044) Bool)

(assert (=> start!101786 (array_inv!28934 _keys!1208)))

(assert (=> start!101786 true))

(assert (=> start!101786 tp!92364))

(declare-datatypes ((V!46651 0))(
  ( (V!46652 (val!15628 Int)) )
))
(declare-datatypes ((ValueCell!14862 0))(
  ( (ValueCellFull!14862 (v!18291 V!46651)) (EmptyCell!14862) )
))
(declare-datatypes ((array!79046 0))(
  ( (array!79047 (arr!38146 (Array (_ BitVec 32) ValueCell!14862)) (size!38683 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79046)

(declare-fun e!695794 () Bool)

(declare-fun array_inv!28935 (array!79046) Bool)

(assert (=> start!101786 (and (array_inv!28935 _values!996) e!695794)))

(declare-fun b!1224997 () Bool)

(declare-fun res!814135 () Bool)

(assert (=> b!1224997 (=> (not res!814135) (not e!695785))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1224997 (= res!814135 (and (= (size!38683 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38682 _keys!1208) (size!38683 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!48613 () Bool)

(declare-fun mapRes!48613 () Bool)

(assert (=> mapIsEmpty!48613 mapRes!48613))

(declare-fun b!1224998 () Bool)

(declare-fun res!814139 () Bool)

(assert (=> b!1224998 (=> (not res!814139) (not e!695785))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1224998 (= res!814139 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38682 _keys!1208))))))

(declare-fun b!1224999 () Bool)

(declare-fun res!814140 () Bool)

(assert (=> b!1224999 (=> (not res!814140) (not e!695785))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79044 (_ BitVec 32)) Bool)

(assert (=> b!1224999 (= res!814140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1225000 () Bool)

(declare-datatypes ((Unit!40534 0))(
  ( (Unit!40535) )
))
(declare-fun e!695789 () Unit!40534)

(declare-fun Unit!40536 () Unit!40534)

(assert (=> b!1225000 (= e!695789 Unit!40536)))

(declare-fun b!1225001 () Bool)

(declare-fun res!814137 () Bool)

(assert (=> b!1225001 (=> (not res!814137) (not e!695785))))

(assert (=> b!1225001 (= res!814137 (= (select (arr!38145 _keys!1208) i!673) k0!934))))

(declare-fun b!1225002 () Bool)

(declare-fun arrayContainsKey!0 (array!79044 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1225002 (= e!695792 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1225003 () Bool)

(declare-fun e!695788 () Bool)

(declare-fun e!695790 () Bool)

(assert (=> b!1225003 (= e!695788 e!695790)))

(declare-fun res!814143 () Bool)

(assert (=> b!1225003 (=> res!814143 e!695790)))

(assert (=> b!1225003 (= res!814143 (not (validKeyInArray!0 (select (arr!38145 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!20292 0))(
  ( (tuple2!20293 (_1!10156 (_ BitVec 64)) (_2!10156 V!46651)) )
))
(declare-datatypes ((List!27103 0))(
  ( (Nil!27100) (Cons!27099 (h!28308 tuple2!20292) (t!40529 List!27103)) )
))
(declare-datatypes ((ListLongMap!18273 0))(
  ( (ListLongMap!18274 (toList!9152 List!27103)) )
))
(declare-fun lt!558001 () ListLongMap!18273)

(declare-fun lt!557998 () ListLongMap!18273)

(assert (=> b!1225003 (= lt!558001 lt!557998)))

(declare-fun lt!558002 () ListLongMap!18273)

(declare-fun -!1988 (ListLongMap!18273 (_ BitVec 64)) ListLongMap!18273)

(assert (=> b!1225003 (= lt!557998 (-!1988 lt!558002 k0!934))))

(declare-fun lt!558006 () array!79046)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!558009 () array!79044)

(declare-fun minValue!944 () V!46651)

(declare-fun zeroValue!944 () V!46651)

(declare-fun getCurrentListMapNoExtraKeys!5549 (array!79044 array!79046 (_ BitVec 32) (_ BitVec 32) V!46651 V!46651 (_ BitVec 32) Int) ListLongMap!18273)

(assert (=> b!1225003 (= lt!558001 (getCurrentListMapNoExtraKeys!5549 lt!558009 lt!558006 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1225003 (= lt!558002 (getCurrentListMapNoExtraKeys!5549 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!558008 () Unit!40534)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1190 (array!79044 array!79046 (_ BitVec 32) (_ BitVec 32) V!46651 V!46651 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40534)

(assert (=> b!1225003 (= lt!558008 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1190 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1225004 () Bool)

(declare-fun res!814142 () Bool)

(assert (=> b!1225004 (=> (not res!814142) (not e!695785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1225004 (= res!814142 (validMask!0 mask!1564))))

(declare-fun b!1225005 () Bool)

(declare-fun res!814138 () Bool)

(declare-fun e!695796 () Bool)

(assert (=> b!1225005 (=> (not res!814138) (not e!695796))))

(declare-datatypes ((List!27104 0))(
  ( (Nil!27101) (Cons!27100 (h!28309 (_ BitVec 64)) (t!40530 List!27104)) )
))
(declare-fun arrayNoDuplicates!0 (array!79044 (_ BitVec 32) List!27104) Bool)

(assert (=> b!1225005 (= res!814138 (arrayNoDuplicates!0 lt!558009 #b00000000000000000000000000000000 Nil!27101))))

(declare-fun b!1225006 () Bool)

(declare-fun Unit!40537 () Unit!40534)

(assert (=> b!1225006 (= e!695789 Unit!40537)))

(declare-fun lt!558014 () Unit!40534)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79044 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40534)

(assert (=> b!1225006 (= lt!558014 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1225006 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!558011 () Unit!40534)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!79044 (_ BitVec 32) (_ BitVec 32)) Unit!40534)

(assert (=> b!1225006 (= lt!558011 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1225006 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27101)))

(declare-fun lt!558004 () Unit!40534)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!79044 (_ BitVec 64) (_ BitVec 32) List!27104) Unit!40534)

(assert (=> b!1225006 (= lt!558004 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!27101))))

(assert (=> b!1225006 false))

(declare-fun mapNonEmpty!48613 () Bool)

(declare-fun tp!92363 () Bool)

(declare-fun e!695793 () Bool)

(assert (=> mapNonEmpty!48613 (= mapRes!48613 (and tp!92363 e!695793))))

(declare-fun mapRest!48613 () (Array (_ BitVec 32) ValueCell!14862))

(declare-fun mapValue!48613 () ValueCell!14862)

(declare-fun mapKey!48613 () (_ BitVec 32))

(assert (=> mapNonEmpty!48613 (= (arr!38146 _values!996) (store mapRest!48613 mapKey!48613 mapValue!48613))))

(declare-fun b!1225007 () Bool)

(assert (=> b!1225007 (= e!695785 e!695796)))

(declare-fun res!814141 () Bool)

(assert (=> b!1225007 (=> (not res!814141) (not e!695796))))

(assert (=> b!1225007 (= res!814141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!558009 mask!1564))))

(assert (=> b!1225007 (= lt!558009 (array!79045 (store (arr!38145 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38682 _keys!1208)))))

(declare-fun b!1225008 () Bool)

(assert (=> b!1225008 (= e!695790 true)))

(declare-fun lt!558016 () ListLongMap!18273)

(declare-fun lt!558007 () ListLongMap!18273)

(assert (=> b!1225008 (= (-!1988 lt!558016 k0!934) lt!558007)))

(declare-fun lt!558015 () V!46651)

(declare-fun lt!558003 () Unit!40534)

(declare-fun addRemoveCommutativeForDiffKeys!228 (ListLongMap!18273 (_ BitVec 64) V!46651 (_ BitVec 64)) Unit!40534)

(assert (=> b!1225008 (= lt!558003 (addRemoveCommutativeForDiffKeys!228 lt!558002 (select (arr!38145 _keys!1208) from!1455) lt!558015 k0!934))))

(declare-fun lt!558010 () ListLongMap!18273)

(assert (=> b!1225008 (and (= lt!558010 lt!558016) (= lt!557998 lt!558001))))

(declare-fun lt!558013 () tuple2!20292)

(declare-fun +!4113 (ListLongMap!18273 tuple2!20292) ListLongMap!18273)

(assert (=> b!1225008 (= lt!558016 (+!4113 lt!558002 lt!558013))))

(assert (=> b!1225008 (not (= (select (arr!38145 _keys!1208) from!1455) k0!934))))

(declare-fun lt!558005 () Unit!40534)

(assert (=> b!1225008 (= lt!558005 e!695789)))

(declare-fun c!120423 () Bool)

(assert (=> b!1225008 (= c!120423 (= (select (arr!38145 _keys!1208) from!1455) k0!934))))

(assert (=> b!1225008 e!695787))

(declare-fun res!814131 () Bool)

(assert (=> b!1225008 (=> (not res!814131) (not e!695787))))

(declare-fun lt!558012 () ListLongMap!18273)

(assert (=> b!1225008 (= res!814131 (= lt!558012 lt!558007))))

(assert (=> b!1225008 (= lt!558007 (+!4113 lt!557998 lt!558013))))

(assert (=> b!1225008 (= lt!558013 (tuple2!20293 (select (arr!38145 _keys!1208) from!1455) lt!558015))))

(declare-fun lt!557999 () V!46651)

(declare-fun get!19531 (ValueCell!14862 V!46651) V!46651)

(assert (=> b!1225008 (= lt!558015 (get!19531 (select (arr!38146 _values!996) from!1455) lt!557999))))

(declare-fun b!1225009 () Bool)

(assert (=> b!1225009 (= e!695793 tp_is_empty!31143)))

(declare-fun b!1225010 () Bool)

(declare-fun e!695795 () Bool)

(assert (=> b!1225010 (= e!695796 (not e!695795))))

(declare-fun res!814129 () Bool)

(assert (=> b!1225010 (=> res!814129 e!695795)))

(assert (=> b!1225010 (= res!814129 (bvsgt from!1455 i!673))))

(assert (=> b!1225010 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!558000 () Unit!40534)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79044 (_ BitVec 64) (_ BitVec 32)) Unit!40534)

(assert (=> b!1225010 (= lt!558000 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1225011 () Bool)

(declare-fun e!695786 () Bool)

(assert (=> b!1225011 (= e!695794 (and e!695786 mapRes!48613))))

(declare-fun condMapEmpty!48613 () Bool)

(declare-fun mapDefault!48613 () ValueCell!14862)

(assert (=> b!1225011 (= condMapEmpty!48613 (= (arr!38146 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14862)) mapDefault!48613)))))

(declare-fun b!1225012 () Bool)

(declare-fun res!814132 () Bool)

(assert (=> b!1225012 (=> (not res!814132) (not e!695785))))

(assert (=> b!1225012 (= res!814132 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27101))))

(declare-fun b!1225013 () Bool)

(assert (=> b!1225013 (= e!695795 e!695788)))

(declare-fun res!814136 () Bool)

(assert (=> b!1225013 (=> res!814136 e!695788)))

(assert (=> b!1225013 (= res!814136 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1225013 (= lt!558012 (getCurrentListMapNoExtraKeys!5549 lt!558009 lt!558006 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1225013 (= lt!558006 (array!79047 (store (arr!38146 _values!996) i!673 (ValueCellFull!14862 lt!557999)) (size!38683 _values!996)))))

(declare-fun dynLambda!3443 (Int (_ BitVec 64)) V!46651)

(assert (=> b!1225013 (= lt!557999 (dynLambda!3443 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1225013 (= lt!558010 (getCurrentListMapNoExtraKeys!5549 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1225014 () Bool)

(assert (=> b!1225014 (= e!695786 tp_is_empty!31143)))

(assert (= (and start!101786 res!814134) b!1225004))

(assert (= (and b!1225004 res!814142) b!1224997))

(assert (= (and b!1224997 res!814135) b!1224999))

(assert (= (and b!1224999 res!814140) b!1225012))

(assert (= (and b!1225012 res!814132) b!1224998))

(assert (= (and b!1224998 res!814139) b!1224995))

(assert (= (and b!1224995 res!814130) b!1225001))

(assert (= (and b!1225001 res!814137) b!1225007))

(assert (= (and b!1225007 res!814141) b!1225005))

(assert (= (and b!1225005 res!814138) b!1225010))

(assert (= (and b!1225010 (not res!814129)) b!1225013))

(assert (= (and b!1225013 (not res!814136)) b!1225003))

(assert (= (and b!1225003 (not res!814143)) b!1225008))

(assert (= (and b!1225008 res!814131) b!1224996))

(assert (= (and b!1224996 (not res!814133)) b!1225002))

(assert (= (and b!1225008 c!120423) b!1225006))

(assert (= (and b!1225008 (not c!120423)) b!1225000))

(assert (= (and b!1225011 condMapEmpty!48613) mapIsEmpty!48613))

(assert (= (and b!1225011 (not condMapEmpty!48613)) mapNonEmpty!48613))

(get-info :version)

(assert (= (and mapNonEmpty!48613 ((_ is ValueCellFull!14862) mapValue!48613)) b!1225009))

(assert (= (and b!1225011 ((_ is ValueCellFull!14862) mapDefault!48613)) b!1225014))

(assert (= start!101786 b!1225011))

(declare-fun b_lambda!22429 () Bool)

(assert (=> (not b_lambda!22429) (not b!1225013)))

(declare-fun t!40528 () Bool)

(declare-fun tb!11247 () Bool)

(assert (=> (and start!101786 (= defaultEntry!1004 defaultEntry!1004) t!40528) tb!11247))

(declare-fun result!23099 () Bool)

(assert (=> tb!11247 (= result!23099 tp_is_empty!31143)))

(assert (=> b!1225013 t!40528))

(declare-fun b_and!44151 () Bool)

(assert (= b_and!44149 (and (=> t!40528 result!23099) b_and!44151)))

(declare-fun m!1130093 () Bool)

(assert (=> b!1225006 m!1130093))

(declare-fun m!1130095 () Bool)

(assert (=> b!1225006 m!1130095))

(declare-fun m!1130097 () Bool)

(assert (=> b!1225006 m!1130097))

(declare-fun m!1130099 () Bool)

(assert (=> b!1225006 m!1130099))

(declare-fun m!1130101 () Bool)

(assert (=> b!1225006 m!1130101))

(declare-fun m!1130103 () Bool)

(assert (=> b!1225001 m!1130103))

(declare-fun m!1130105 () Bool)

(assert (=> b!1224999 m!1130105))

(declare-fun m!1130107 () Bool)

(assert (=> mapNonEmpty!48613 m!1130107))

(declare-fun m!1130109 () Bool)

(assert (=> b!1225013 m!1130109))

(declare-fun m!1130111 () Bool)

(assert (=> b!1225013 m!1130111))

(declare-fun m!1130113 () Bool)

(assert (=> b!1225013 m!1130113))

(declare-fun m!1130115 () Bool)

(assert (=> b!1225013 m!1130115))

(declare-fun m!1130117 () Bool)

(assert (=> b!1225005 m!1130117))

(declare-fun m!1130119 () Bool)

(assert (=> b!1224996 m!1130119))

(declare-fun m!1130121 () Bool)

(assert (=> b!1225004 m!1130121))

(declare-fun m!1130123 () Bool)

(assert (=> b!1225010 m!1130123))

(declare-fun m!1130125 () Bool)

(assert (=> b!1225010 m!1130125))

(declare-fun m!1130127 () Bool)

(assert (=> b!1225012 m!1130127))

(declare-fun m!1130129 () Bool)

(assert (=> b!1224995 m!1130129))

(declare-fun m!1130131 () Bool)

(assert (=> b!1225003 m!1130131))

(declare-fun m!1130133 () Bool)

(assert (=> b!1225003 m!1130133))

(declare-fun m!1130135 () Bool)

(assert (=> b!1225003 m!1130135))

(assert (=> b!1225003 m!1130119))

(declare-fun m!1130137 () Bool)

(assert (=> b!1225003 m!1130137))

(assert (=> b!1225003 m!1130119))

(declare-fun m!1130139 () Bool)

(assert (=> b!1225003 m!1130139))

(declare-fun m!1130141 () Bool)

(assert (=> b!1225002 m!1130141))

(declare-fun m!1130143 () Bool)

(assert (=> b!1225007 m!1130143))

(declare-fun m!1130145 () Bool)

(assert (=> b!1225007 m!1130145))

(declare-fun m!1130147 () Bool)

(assert (=> start!101786 m!1130147))

(declare-fun m!1130149 () Bool)

(assert (=> start!101786 m!1130149))

(declare-fun m!1130151 () Bool)

(assert (=> b!1225008 m!1130151))

(declare-fun m!1130153 () Bool)

(assert (=> b!1225008 m!1130153))

(declare-fun m!1130155 () Bool)

(assert (=> b!1225008 m!1130155))

(assert (=> b!1225008 m!1130119))

(declare-fun m!1130157 () Bool)

(assert (=> b!1225008 m!1130157))

(declare-fun m!1130159 () Bool)

(assert (=> b!1225008 m!1130159))

(assert (=> b!1225008 m!1130119))

(assert (=> b!1225008 m!1130153))

(declare-fun m!1130161 () Bool)

(assert (=> b!1225008 m!1130161))

(check-sat (not b!1225010) (not mapNonEmpty!48613) (not b!1225008) (not start!101786) (not b!1225004) (not b!1225012) (not b!1225002) (not b!1225006) (not b_next!26439) (not b_lambda!22429) (not b!1224999) (not b!1225005) (not b!1225003) (not b!1225007) (not b!1224995) (not b!1225013) tp_is_empty!31143 b_and!44151)
(check-sat b_and!44151 (not b_next!26439))

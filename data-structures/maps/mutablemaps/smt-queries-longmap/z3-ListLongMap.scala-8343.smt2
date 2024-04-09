; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101580 () Bool)

(assert start!101580)

(declare-fun b_free!26331 () Bool)

(declare-fun b_next!26331 () Bool)

(assert (=> start!101580 (= b_free!26331 (not b_next!26331))))

(declare-fun tp!92031 () Bool)

(declare-fun b_and!43879 () Bool)

(assert (=> start!101580 (= tp!92031 b_and!43879)))

(declare-fun b!1221043 () Bool)

(declare-fun e!693429 () Bool)

(declare-fun e!693430 () Bool)

(assert (=> b!1221043 (= e!693429 e!693430)))

(declare-fun res!811279 () Bool)

(assert (=> b!1221043 (=> res!811279 e!693430)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1221043 (= res!811279 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46507 0))(
  ( (V!46508 (val!15574 Int)) )
))
(declare-fun zeroValue!944 () V!46507)

(declare-datatypes ((tuple2!20190 0))(
  ( (tuple2!20191 (_1!10105 (_ BitVec 64)) (_2!10105 V!46507)) )
))
(declare-datatypes ((List!27006 0))(
  ( (Nil!27003) (Cons!27002 (h!28211 tuple2!20190) (t!40324 List!27006)) )
))
(declare-datatypes ((ListLongMap!18171 0))(
  ( (ListLongMap!18172 (toList!9101 List!27006)) )
))
(declare-fun lt!555357 () ListLongMap!18171)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14808 0))(
  ( (ValueCellFull!14808 (v!18233 V!46507)) (EmptyCell!14808) )
))
(declare-datatypes ((array!78824 0))(
  ( (array!78825 (arr!38038 (Array (_ BitVec 32) ValueCell!14808)) (size!38575 (_ BitVec 32))) )
))
(declare-fun lt!555358 () array!78824)

(declare-fun minValue!944 () V!46507)

(declare-datatypes ((array!78826 0))(
  ( (array!78827 (arr!38039 (Array (_ BitVec 32) (_ BitVec 64))) (size!38576 (_ BitVec 32))) )
))
(declare-fun lt!555353 () array!78826)

(declare-fun getCurrentListMapNoExtraKeys!5499 (array!78826 array!78824 (_ BitVec 32) (_ BitVec 32) V!46507 V!46507 (_ BitVec 32) Int) ListLongMap!18171)

(assert (=> b!1221043 (= lt!555357 (getCurrentListMapNoExtraKeys!5499 lt!555353 lt!555358 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78824)

(declare-fun lt!555360 () V!46507)

(assert (=> b!1221043 (= lt!555358 (array!78825 (store (arr!38038 _values!996) i!673 (ValueCellFull!14808 lt!555360)) (size!38575 _values!996)))))

(declare-fun dynLambda!3400 (Int (_ BitVec 64)) V!46507)

(assert (=> b!1221043 (= lt!555360 (dynLambda!3400 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!78826)

(declare-fun lt!555354 () ListLongMap!18171)

(assert (=> b!1221043 (= lt!555354 (getCurrentListMapNoExtraKeys!5499 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1221044 () Bool)

(declare-fun res!811275 () Bool)

(declare-fun e!693428 () Bool)

(assert (=> b!1221044 (=> (not res!811275) (not e!693428))))

(assert (=> b!1221044 (= res!811275 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38576 _keys!1208))))))

(declare-fun mapNonEmpty!48442 () Bool)

(declare-fun mapRes!48442 () Bool)

(declare-fun tp!92030 () Bool)

(declare-fun e!693427 () Bool)

(assert (=> mapNonEmpty!48442 (= mapRes!48442 (and tp!92030 e!693427))))

(declare-fun mapValue!48442 () ValueCell!14808)

(declare-fun mapRest!48442 () (Array (_ BitVec 32) ValueCell!14808))

(declare-fun mapKey!48442 () (_ BitVec 32))

(assert (=> mapNonEmpty!48442 (= (arr!38038 _values!996) (store mapRest!48442 mapKey!48442 mapValue!48442))))

(declare-fun b!1221045 () Bool)

(declare-fun e!693431 () Bool)

(assert (=> b!1221045 (= e!693430 e!693431)))

(declare-fun res!811289 () Bool)

(assert (=> b!1221045 (=> res!811289 e!693431)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1221045 (= res!811289 (not (validKeyInArray!0 (select (arr!38039 _keys!1208) from!1455))))))

(declare-fun lt!555355 () ListLongMap!18171)

(declare-fun lt!555351 () ListLongMap!18171)

(assert (=> b!1221045 (= lt!555355 lt!555351)))

(declare-fun lt!555362 () ListLongMap!18171)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1946 (ListLongMap!18171 (_ BitVec 64)) ListLongMap!18171)

(assert (=> b!1221045 (= lt!555351 (-!1946 lt!555362 k0!934))))

(assert (=> b!1221045 (= lt!555355 (getCurrentListMapNoExtraKeys!5499 lt!555353 lt!555358 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1221045 (= lt!555362 (getCurrentListMapNoExtraKeys!5499 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40372 0))(
  ( (Unit!40373) )
))
(declare-fun lt!555356 () Unit!40372)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1148 (array!78826 array!78824 (_ BitVec 32) (_ BitVec 32) V!46507 V!46507 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40372)

(assert (=> b!1221045 (= lt!555356 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1148 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!693422 () Bool)

(declare-fun b!1221046 () Bool)

(declare-fun arrayContainsKey!0 (array!78826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1221046 (= e!693422 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1221047 () Bool)

(declare-fun e!693432 () Bool)

(assert (=> b!1221047 (= e!693431 e!693432)))

(declare-fun res!811281 () Bool)

(assert (=> b!1221047 (=> res!811281 e!693432)))

(assert (=> b!1221047 (= res!811281 (not (= (select (arr!38039 _keys!1208) from!1455) k0!934)))))

(declare-fun e!693421 () Bool)

(assert (=> b!1221047 e!693421))

(declare-fun res!811277 () Bool)

(assert (=> b!1221047 (=> (not res!811277) (not e!693421))))

(declare-fun +!4073 (ListLongMap!18171 tuple2!20190) ListLongMap!18171)

(declare-fun get!19451 (ValueCell!14808 V!46507) V!46507)

(assert (=> b!1221047 (= res!811277 (= lt!555357 (+!4073 lt!555351 (tuple2!20191 (select (arr!38039 _keys!1208) from!1455) (get!19451 (select (arr!38038 _values!996) from!1455) lt!555360)))))))

(declare-fun b!1221049 () Bool)

(declare-fun res!811282 () Bool)

(declare-fun e!693426 () Bool)

(assert (=> b!1221049 (=> (not res!811282) (not e!693426))))

(declare-datatypes ((List!27007 0))(
  ( (Nil!27004) (Cons!27003 (h!28212 (_ BitVec 64)) (t!40325 List!27007)) )
))
(declare-fun arrayNoDuplicates!0 (array!78826 (_ BitVec 32) List!27007) Bool)

(assert (=> b!1221049 (= res!811282 (arrayNoDuplicates!0 lt!555353 #b00000000000000000000000000000000 Nil!27004))))

(declare-fun b!1221050 () Bool)

(declare-fun res!811280 () Bool)

(assert (=> b!1221050 (=> (not res!811280) (not e!693428))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78826 (_ BitVec 32)) Bool)

(assert (=> b!1221050 (= res!811280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1221051 () Bool)

(assert (=> b!1221051 (= e!693426 (not e!693429))))

(declare-fun res!811276 () Bool)

(assert (=> b!1221051 (=> res!811276 e!693429)))

(assert (=> b!1221051 (= res!811276 (bvsgt from!1455 i!673))))

(assert (=> b!1221051 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!555352 () Unit!40372)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78826 (_ BitVec 64) (_ BitVec 32)) Unit!40372)

(assert (=> b!1221051 (= lt!555352 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1221052 () Bool)

(declare-fun res!811274 () Bool)

(assert (=> b!1221052 (=> (not res!811274) (not e!693428))))

(assert (=> b!1221052 (= res!811274 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27004))))

(declare-fun mapIsEmpty!48442 () Bool)

(assert (=> mapIsEmpty!48442 mapRes!48442))

(declare-fun b!1221053 () Bool)

(declare-fun res!811287 () Bool)

(assert (=> b!1221053 (=> (not res!811287) (not e!693428))))

(assert (=> b!1221053 (= res!811287 (= (select (arr!38039 _keys!1208) i!673) k0!934))))

(declare-fun b!1221054 () Bool)

(declare-fun tp_is_empty!31035 () Bool)

(assert (=> b!1221054 (= e!693427 tp_is_empty!31035)))

(declare-fun b!1221055 () Bool)

(declare-fun e!693423 () Bool)

(assert (=> b!1221055 (= e!693432 e!693423)))

(declare-fun res!811285 () Bool)

(assert (=> b!1221055 (=> res!811285 e!693423)))

(assert (=> b!1221055 (= res!811285 (or (bvsge (size!38576 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38576 _keys!1208)) (bvsge from!1455 (size!38576 _keys!1208))))))

(assert (=> b!1221055 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27004)))

(declare-fun lt!555359 () Unit!40372)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78826 (_ BitVec 32) (_ BitVec 32)) Unit!40372)

(assert (=> b!1221055 (= lt!555359 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1221055 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555361 () Unit!40372)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78826 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40372)

(assert (=> b!1221055 (= lt!555361 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1221056 () Bool)

(declare-fun res!811273 () Bool)

(assert (=> b!1221056 (=> (not res!811273) (not e!693428))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1221056 (= res!811273 (validMask!0 mask!1564))))

(declare-fun b!1221057 () Bool)

(declare-fun e!693424 () Bool)

(assert (=> b!1221057 (= e!693424 tp_is_empty!31035)))

(declare-fun b!1221048 () Bool)

(assert (=> b!1221048 (= e!693421 e!693422)))

(declare-fun res!811286 () Bool)

(assert (=> b!1221048 (=> res!811286 e!693422)))

(assert (=> b!1221048 (= res!811286 (not (= (select (arr!38039 _keys!1208) from!1455) k0!934)))))

(declare-fun res!811284 () Bool)

(assert (=> start!101580 (=> (not res!811284) (not e!693428))))

(assert (=> start!101580 (= res!811284 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38576 _keys!1208))))))

(assert (=> start!101580 e!693428))

(assert (=> start!101580 tp_is_empty!31035))

(declare-fun array_inv!28860 (array!78826) Bool)

(assert (=> start!101580 (array_inv!28860 _keys!1208)))

(assert (=> start!101580 true))

(assert (=> start!101580 tp!92031))

(declare-fun e!693425 () Bool)

(declare-fun array_inv!28861 (array!78824) Bool)

(assert (=> start!101580 (and (array_inv!28861 _values!996) e!693425)))

(declare-fun b!1221058 () Bool)

(declare-fun noDuplicate!1654 (List!27007) Bool)

(assert (=> b!1221058 (= e!693423 (noDuplicate!1654 Nil!27004))))

(declare-fun b!1221059 () Bool)

(declare-fun res!811288 () Bool)

(assert (=> b!1221059 (=> (not res!811288) (not e!693428))))

(assert (=> b!1221059 (= res!811288 (validKeyInArray!0 k0!934))))

(declare-fun b!1221060 () Bool)

(assert (=> b!1221060 (= e!693428 e!693426)))

(declare-fun res!811278 () Bool)

(assert (=> b!1221060 (=> (not res!811278) (not e!693426))))

(assert (=> b!1221060 (= res!811278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!555353 mask!1564))))

(assert (=> b!1221060 (= lt!555353 (array!78827 (store (arr!38039 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38576 _keys!1208)))))

(declare-fun b!1221061 () Bool)

(assert (=> b!1221061 (= e!693425 (and e!693424 mapRes!48442))))

(declare-fun condMapEmpty!48442 () Bool)

(declare-fun mapDefault!48442 () ValueCell!14808)

(assert (=> b!1221061 (= condMapEmpty!48442 (= (arr!38038 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14808)) mapDefault!48442)))))

(declare-fun b!1221062 () Bool)

(declare-fun res!811283 () Bool)

(assert (=> b!1221062 (=> (not res!811283) (not e!693428))))

(assert (=> b!1221062 (= res!811283 (and (= (size!38575 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38576 _keys!1208) (size!38575 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!101580 res!811284) b!1221056))

(assert (= (and b!1221056 res!811273) b!1221062))

(assert (= (and b!1221062 res!811283) b!1221050))

(assert (= (and b!1221050 res!811280) b!1221052))

(assert (= (and b!1221052 res!811274) b!1221044))

(assert (= (and b!1221044 res!811275) b!1221059))

(assert (= (and b!1221059 res!811288) b!1221053))

(assert (= (and b!1221053 res!811287) b!1221060))

(assert (= (and b!1221060 res!811278) b!1221049))

(assert (= (and b!1221049 res!811282) b!1221051))

(assert (= (and b!1221051 (not res!811276)) b!1221043))

(assert (= (and b!1221043 (not res!811279)) b!1221045))

(assert (= (and b!1221045 (not res!811289)) b!1221047))

(assert (= (and b!1221047 res!811277) b!1221048))

(assert (= (and b!1221048 (not res!811286)) b!1221046))

(assert (= (and b!1221047 (not res!811281)) b!1221055))

(assert (= (and b!1221055 (not res!811285)) b!1221058))

(assert (= (and b!1221061 condMapEmpty!48442) mapIsEmpty!48442))

(assert (= (and b!1221061 (not condMapEmpty!48442)) mapNonEmpty!48442))

(get-info :version)

(assert (= (and mapNonEmpty!48442 ((_ is ValueCellFull!14808) mapValue!48442)) b!1221054))

(assert (= (and b!1221061 ((_ is ValueCellFull!14808) mapDefault!48442)) b!1221057))

(assert (= start!101580 b!1221061))

(declare-fun b_lambda!22207 () Bool)

(assert (=> (not b_lambda!22207) (not b!1221043)))

(declare-fun t!40323 () Bool)

(declare-fun tb!11139 () Bool)

(assert (=> (and start!101580 (= defaultEntry!1004 defaultEntry!1004) t!40323) tb!11139))

(declare-fun result!22877 () Bool)

(assert (=> tb!11139 (= result!22877 tp_is_empty!31035)))

(assert (=> b!1221043 t!40323))

(declare-fun b_and!43881 () Bool)

(assert (= b_and!43879 (and (=> t!40323 result!22877) b_and!43881)))

(declare-fun m!1125933 () Bool)

(assert (=> b!1221050 m!1125933))

(declare-fun m!1125935 () Bool)

(assert (=> b!1221046 m!1125935))

(declare-fun m!1125937 () Bool)

(assert (=> b!1221052 m!1125937))

(declare-fun m!1125939 () Bool)

(assert (=> b!1221056 m!1125939))

(declare-fun m!1125941 () Bool)

(assert (=> b!1221048 m!1125941))

(declare-fun m!1125943 () Bool)

(assert (=> b!1221043 m!1125943))

(declare-fun m!1125945 () Bool)

(assert (=> b!1221043 m!1125945))

(declare-fun m!1125947 () Bool)

(assert (=> b!1221043 m!1125947))

(declare-fun m!1125949 () Bool)

(assert (=> b!1221043 m!1125949))

(declare-fun m!1125951 () Bool)

(assert (=> b!1221049 m!1125951))

(declare-fun m!1125953 () Bool)

(assert (=> b!1221053 m!1125953))

(declare-fun m!1125955 () Bool)

(assert (=> b!1221059 m!1125955))

(declare-fun m!1125957 () Bool)

(assert (=> b!1221058 m!1125957))

(declare-fun m!1125959 () Bool)

(assert (=> b!1221045 m!1125959))

(declare-fun m!1125961 () Bool)

(assert (=> b!1221045 m!1125961))

(declare-fun m!1125963 () Bool)

(assert (=> b!1221045 m!1125963))

(assert (=> b!1221045 m!1125941))

(declare-fun m!1125965 () Bool)

(assert (=> b!1221045 m!1125965))

(assert (=> b!1221045 m!1125941))

(declare-fun m!1125967 () Bool)

(assert (=> b!1221045 m!1125967))

(declare-fun m!1125969 () Bool)

(assert (=> mapNonEmpty!48442 m!1125969))

(declare-fun m!1125971 () Bool)

(assert (=> b!1221055 m!1125971))

(declare-fun m!1125973 () Bool)

(assert (=> b!1221055 m!1125973))

(declare-fun m!1125975 () Bool)

(assert (=> b!1221055 m!1125975))

(declare-fun m!1125977 () Bool)

(assert (=> b!1221055 m!1125977))

(declare-fun m!1125979 () Bool)

(assert (=> b!1221060 m!1125979))

(declare-fun m!1125981 () Bool)

(assert (=> b!1221060 m!1125981))

(declare-fun m!1125983 () Bool)

(assert (=> start!101580 m!1125983))

(declare-fun m!1125985 () Bool)

(assert (=> start!101580 m!1125985))

(declare-fun m!1125987 () Bool)

(assert (=> b!1221051 m!1125987))

(declare-fun m!1125989 () Bool)

(assert (=> b!1221051 m!1125989))

(assert (=> b!1221047 m!1125941))

(declare-fun m!1125991 () Bool)

(assert (=> b!1221047 m!1125991))

(assert (=> b!1221047 m!1125991))

(declare-fun m!1125993 () Bool)

(assert (=> b!1221047 m!1125993))

(declare-fun m!1125995 () Bool)

(assert (=> b!1221047 m!1125995))

(check-sat (not b!1221056) (not b!1221052) (not b!1221046) (not b!1221047) b_and!43881 (not b!1221049) (not b_next!26331) (not mapNonEmpty!48442) (not b!1221059) (not b!1221060) (not b!1221058) (not b!1221055) (not b_lambda!22207) tp_is_empty!31035 (not b!1221051) (not b!1221050) (not start!101580) (not b!1221043) (not b!1221045))
(check-sat b_and!43881 (not b_next!26331))
(get-model)

(declare-fun b_lambda!22211 () Bool)

(assert (= b_lambda!22207 (or (and start!101580 b_free!26331) b_lambda!22211)))

(check-sat (not b!1221056) (not b!1221052) (not b!1221046) (not b!1221047) b_and!43881 (not b!1221049) (not b_next!26331) (not mapNonEmpty!48442) (not b!1221059) (not b!1221060) (not b!1221058) (not b!1221055) tp_is_empty!31035 (not b!1221051) (not b!1221050) (not start!101580) (not b!1221043) (not b!1221045) (not b_lambda!22211))
(check-sat b_and!43881 (not b_next!26331))
(get-model)

(declare-fun d!133725 () Bool)

(declare-fun res!811345 () Bool)

(declare-fun e!693476 () Bool)

(assert (=> d!133725 (=> res!811345 e!693476)))

(assert (=> d!133725 (= res!811345 (= (select (arr!38039 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!133725 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!693476)))

(declare-fun b!1221131 () Bool)

(declare-fun e!693477 () Bool)

(assert (=> b!1221131 (= e!693476 e!693477)))

(declare-fun res!811346 () Bool)

(assert (=> b!1221131 (=> (not res!811346) (not e!693477))))

(assert (=> b!1221131 (= res!811346 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38576 _keys!1208)))))

(declare-fun b!1221132 () Bool)

(assert (=> b!1221132 (= e!693477 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!133725 (not res!811345)) b!1221131))

(assert (= (and b!1221131 res!811346) b!1221132))

(declare-fun m!1126061 () Bool)

(assert (=> d!133725 m!1126061))

(declare-fun m!1126063 () Bool)

(assert (=> b!1221132 m!1126063))

(assert (=> b!1221051 d!133725))

(declare-fun d!133727 () Bool)

(assert (=> d!133727 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!555401 () Unit!40372)

(declare-fun choose!13 (array!78826 (_ BitVec 64) (_ BitVec 32)) Unit!40372)

(assert (=> d!133727 (= lt!555401 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!133727 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!133727 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!555401)))

(declare-fun bs!34370 () Bool)

(assert (= bs!34370 d!133727))

(assert (=> bs!34370 m!1125987))

(declare-fun m!1126065 () Bool)

(assert (=> bs!34370 m!1126065))

(assert (=> b!1221051 d!133727))

(declare-fun bm!60705 () Bool)

(declare-fun call!60708 () Bool)

(assert (=> bm!60705 (= call!60708 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!555353 mask!1564))))

(declare-fun b!1221141 () Bool)

(declare-fun e!693486 () Bool)

(declare-fun e!693484 () Bool)

(assert (=> b!1221141 (= e!693486 e!693484)))

(declare-fun c!120186 () Bool)

(assert (=> b!1221141 (= c!120186 (validKeyInArray!0 (select (arr!38039 lt!555353) #b00000000000000000000000000000000)))))

(declare-fun d!133729 () Bool)

(declare-fun res!811352 () Bool)

(assert (=> d!133729 (=> res!811352 e!693486)))

(assert (=> d!133729 (= res!811352 (bvsge #b00000000000000000000000000000000 (size!38576 lt!555353)))))

(assert (=> d!133729 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!555353 mask!1564) e!693486)))

(declare-fun b!1221142 () Bool)

(declare-fun e!693485 () Bool)

(assert (=> b!1221142 (= e!693485 call!60708)))

(declare-fun b!1221143 () Bool)

(assert (=> b!1221143 (= e!693484 call!60708)))

(declare-fun b!1221144 () Bool)

(assert (=> b!1221144 (= e!693484 e!693485)))

(declare-fun lt!555409 () (_ BitVec 64))

(assert (=> b!1221144 (= lt!555409 (select (arr!38039 lt!555353) #b00000000000000000000000000000000))))

(declare-fun lt!555410 () Unit!40372)

(assert (=> b!1221144 (= lt!555410 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!555353 lt!555409 #b00000000000000000000000000000000))))

(assert (=> b!1221144 (arrayContainsKey!0 lt!555353 lt!555409 #b00000000000000000000000000000000)))

(declare-fun lt!555408 () Unit!40372)

(assert (=> b!1221144 (= lt!555408 lt!555410)))

(declare-fun res!811351 () Bool)

(declare-datatypes ((SeekEntryResult!9945 0))(
  ( (MissingZero!9945 (index!42150 (_ BitVec 32))) (Found!9945 (index!42151 (_ BitVec 32))) (Intermediate!9945 (undefined!10757 Bool) (index!42152 (_ BitVec 32)) (x!107550 (_ BitVec 32))) (Undefined!9945) (MissingVacant!9945 (index!42153 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!78826 (_ BitVec 32)) SeekEntryResult!9945)

(assert (=> b!1221144 (= res!811351 (= (seekEntryOrOpen!0 (select (arr!38039 lt!555353) #b00000000000000000000000000000000) lt!555353 mask!1564) (Found!9945 #b00000000000000000000000000000000)))))

(assert (=> b!1221144 (=> (not res!811351) (not e!693485))))

(assert (= (and d!133729 (not res!811352)) b!1221141))

(assert (= (and b!1221141 c!120186) b!1221144))

(assert (= (and b!1221141 (not c!120186)) b!1221143))

(assert (= (and b!1221144 res!811351) b!1221142))

(assert (= (or b!1221142 b!1221143) bm!60705))

(declare-fun m!1126067 () Bool)

(assert (=> bm!60705 m!1126067))

(declare-fun m!1126069 () Bool)

(assert (=> b!1221141 m!1126069))

(assert (=> b!1221141 m!1126069))

(declare-fun m!1126071 () Bool)

(assert (=> b!1221141 m!1126071))

(assert (=> b!1221144 m!1126069))

(declare-fun m!1126073 () Bool)

(assert (=> b!1221144 m!1126073))

(declare-fun m!1126075 () Bool)

(assert (=> b!1221144 m!1126075))

(assert (=> b!1221144 m!1126069))

(declare-fun m!1126077 () Bool)

(assert (=> b!1221144 m!1126077))

(assert (=> b!1221060 d!133729))

(declare-fun bm!60706 () Bool)

(declare-fun call!60709 () Bool)

(assert (=> bm!60706 (= call!60709 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1221145 () Bool)

(declare-fun e!693489 () Bool)

(declare-fun e!693487 () Bool)

(assert (=> b!1221145 (= e!693489 e!693487)))

(declare-fun c!120187 () Bool)

(assert (=> b!1221145 (= c!120187 (validKeyInArray!0 (select (arr!38039 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!133731 () Bool)

(declare-fun res!811354 () Bool)

(assert (=> d!133731 (=> res!811354 e!693489)))

(assert (=> d!133731 (= res!811354 (bvsge #b00000000000000000000000000000000 (size!38576 _keys!1208)))))

(assert (=> d!133731 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!693489)))

(declare-fun b!1221146 () Bool)

(declare-fun e!693488 () Bool)

(assert (=> b!1221146 (= e!693488 call!60709)))

(declare-fun b!1221147 () Bool)

(assert (=> b!1221147 (= e!693487 call!60709)))

(declare-fun b!1221148 () Bool)

(assert (=> b!1221148 (= e!693487 e!693488)))

(declare-fun lt!555412 () (_ BitVec 64))

(assert (=> b!1221148 (= lt!555412 (select (arr!38039 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!555413 () Unit!40372)

(assert (=> b!1221148 (= lt!555413 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!555412 #b00000000000000000000000000000000))))

(assert (=> b!1221148 (arrayContainsKey!0 _keys!1208 lt!555412 #b00000000000000000000000000000000)))

(declare-fun lt!555411 () Unit!40372)

(assert (=> b!1221148 (= lt!555411 lt!555413)))

(declare-fun res!811353 () Bool)

(assert (=> b!1221148 (= res!811353 (= (seekEntryOrOpen!0 (select (arr!38039 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9945 #b00000000000000000000000000000000)))))

(assert (=> b!1221148 (=> (not res!811353) (not e!693488))))

(assert (= (and d!133731 (not res!811354)) b!1221145))

(assert (= (and b!1221145 c!120187) b!1221148))

(assert (= (and b!1221145 (not c!120187)) b!1221147))

(assert (= (and b!1221148 res!811353) b!1221146))

(assert (= (or b!1221146 b!1221147) bm!60706))

(declare-fun m!1126079 () Bool)

(assert (=> bm!60706 m!1126079))

(assert (=> b!1221145 m!1126061))

(assert (=> b!1221145 m!1126061))

(declare-fun m!1126081 () Bool)

(assert (=> b!1221145 m!1126081))

(assert (=> b!1221148 m!1126061))

(declare-fun m!1126083 () Bool)

(assert (=> b!1221148 m!1126083))

(declare-fun m!1126085 () Bool)

(assert (=> b!1221148 m!1126085))

(assert (=> b!1221148 m!1126061))

(declare-fun m!1126087 () Bool)

(assert (=> b!1221148 m!1126087))

(assert (=> b!1221050 d!133731))

(declare-fun d!133733 () Bool)

(assert (=> d!133733 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1221059 d!133733))

(declare-fun bm!60709 () Bool)

(declare-fun call!60712 () Bool)

(declare-fun c!120190 () Bool)

(assert (=> bm!60709 (= call!60712 (arrayNoDuplicates!0 lt!555353 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!120190 (Cons!27003 (select (arr!38039 lt!555353) #b00000000000000000000000000000000) Nil!27004) Nil!27004)))))

(declare-fun b!1221160 () Bool)

(declare-fun e!693499 () Bool)

(declare-fun e!693500 () Bool)

(assert (=> b!1221160 (= e!693499 e!693500)))

(assert (=> b!1221160 (= c!120190 (validKeyInArray!0 (select (arr!38039 lt!555353) #b00000000000000000000000000000000)))))

(declare-fun b!1221161 () Bool)

(assert (=> b!1221161 (= e!693500 call!60712)))

(declare-fun b!1221162 () Bool)

(declare-fun e!693501 () Bool)

(declare-fun contains!7038 (List!27007 (_ BitVec 64)) Bool)

(assert (=> b!1221162 (= e!693501 (contains!7038 Nil!27004 (select (arr!38039 lt!555353) #b00000000000000000000000000000000)))))

(declare-fun b!1221163 () Bool)

(assert (=> b!1221163 (= e!693500 call!60712)))

(declare-fun d!133735 () Bool)

(declare-fun res!811362 () Bool)

(declare-fun e!693498 () Bool)

(assert (=> d!133735 (=> res!811362 e!693498)))

(assert (=> d!133735 (= res!811362 (bvsge #b00000000000000000000000000000000 (size!38576 lt!555353)))))

(assert (=> d!133735 (= (arrayNoDuplicates!0 lt!555353 #b00000000000000000000000000000000 Nil!27004) e!693498)))

(declare-fun b!1221159 () Bool)

(assert (=> b!1221159 (= e!693498 e!693499)))

(declare-fun res!811363 () Bool)

(assert (=> b!1221159 (=> (not res!811363) (not e!693499))))

(assert (=> b!1221159 (= res!811363 (not e!693501))))

(declare-fun res!811361 () Bool)

(assert (=> b!1221159 (=> (not res!811361) (not e!693501))))

(assert (=> b!1221159 (= res!811361 (validKeyInArray!0 (select (arr!38039 lt!555353) #b00000000000000000000000000000000)))))

(assert (= (and d!133735 (not res!811362)) b!1221159))

(assert (= (and b!1221159 res!811361) b!1221162))

(assert (= (and b!1221159 res!811363) b!1221160))

(assert (= (and b!1221160 c!120190) b!1221163))

(assert (= (and b!1221160 (not c!120190)) b!1221161))

(assert (= (or b!1221163 b!1221161) bm!60709))

(assert (=> bm!60709 m!1126069))

(declare-fun m!1126089 () Bool)

(assert (=> bm!60709 m!1126089))

(assert (=> b!1221160 m!1126069))

(assert (=> b!1221160 m!1126069))

(assert (=> b!1221160 m!1126071))

(assert (=> b!1221162 m!1126069))

(assert (=> b!1221162 m!1126069))

(declare-fun m!1126091 () Bool)

(assert (=> b!1221162 m!1126091))

(assert (=> b!1221159 m!1126069))

(assert (=> b!1221159 m!1126069))

(assert (=> b!1221159 m!1126071))

(assert (=> b!1221049 d!133735))

(declare-fun d!133737 () Bool)

(declare-fun res!811368 () Bool)

(declare-fun e!693506 () Bool)

(assert (=> d!133737 (=> res!811368 e!693506)))

(assert (=> d!133737 (= res!811368 ((_ is Nil!27004) Nil!27004))))

(assert (=> d!133737 (= (noDuplicate!1654 Nil!27004) e!693506)))

(declare-fun b!1221168 () Bool)

(declare-fun e!693507 () Bool)

(assert (=> b!1221168 (= e!693506 e!693507)))

(declare-fun res!811369 () Bool)

(assert (=> b!1221168 (=> (not res!811369) (not e!693507))))

(assert (=> b!1221168 (= res!811369 (not (contains!7038 (t!40325 Nil!27004) (h!28212 Nil!27004))))))

(declare-fun b!1221169 () Bool)

(assert (=> b!1221169 (= e!693507 (noDuplicate!1654 (t!40325 Nil!27004)))))

(assert (= (and d!133737 (not res!811368)) b!1221168))

(assert (= (and b!1221168 res!811369) b!1221169))

(declare-fun m!1126093 () Bool)

(assert (=> b!1221168 m!1126093))

(declare-fun m!1126095 () Bool)

(assert (=> b!1221169 m!1126095))

(assert (=> b!1221058 d!133737))

(declare-fun d!133739 () Bool)

(declare-fun e!693510 () Bool)

(assert (=> d!133739 e!693510))

(declare-fun res!811375 () Bool)

(assert (=> d!133739 (=> (not res!811375) (not e!693510))))

(declare-fun lt!555424 () ListLongMap!18171)

(declare-fun contains!7039 (ListLongMap!18171 (_ BitVec 64)) Bool)

(assert (=> d!133739 (= res!811375 (contains!7039 lt!555424 (_1!10105 (tuple2!20191 (select (arr!38039 _keys!1208) from!1455) (get!19451 (select (arr!38038 _values!996) from!1455) lt!555360)))))))

(declare-fun lt!555425 () List!27006)

(assert (=> d!133739 (= lt!555424 (ListLongMap!18172 lt!555425))))

(declare-fun lt!555423 () Unit!40372)

(declare-fun lt!555422 () Unit!40372)

(assert (=> d!133739 (= lt!555423 lt!555422)))

(declare-datatypes ((Option!700 0))(
  ( (Some!699 (v!18235 V!46507)) (None!698) )
))
(declare-fun getValueByKey!649 (List!27006 (_ BitVec 64)) Option!700)

(assert (=> d!133739 (= (getValueByKey!649 lt!555425 (_1!10105 (tuple2!20191 (select (arr!38039 _keys!1208) from!1455) (get!19451 (select (arr!38038 _values!996) from!1455) lt!555360)))) (Some!699 (_2!10105 (tuple2!20191 (select (arr!38039 _keys!1208) from!1455) (get!19451 (select (arr!38038 _values!996) from!1455) lt!555360)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!324 (List!27006 (_ BitVec 64) V!46507) Unit!40372)

(assert (=> d!133739 (= lt!555422 (lemmaContainsTupThenGetReturnValue!324 lt!555425 (_1!10105 (tuple2!20191 (select (arr!38039 _keys!1208) from!1455) (get!19451 (select (arr!38038 _values!996) from!1455) lt!555360))) (_2!10105 (tuple2!20191 (select (arr!38039 _keys!1208) from!1455) (get!19451 (select (arr!38038 _values!996) from!1455) lt!555360)))))))

(declare-fun insertStrictlySorted!416 (List!27006 (_ BitVec 64) V!46507) List!27006)

(assert (=> d!133739 (= lt!555425 (insertStrictlySorted!416 (toList!9101 lt!555351) (_1!10105 (tuple2!20191 (select (arr!38039 _keys!1208) from!1455) (get!19451 (select (arr!38038 _values!996) from!1455) lt!555360))) (_2!10105 (tuple2!20191 (select (arr!38039 _keys!1208) from!1455) (get!19451 (select (arr!38038 _values!996) from!1455) lt!555360)))))))

(assert (=> d!133739 (= (+!4073 lt!555351 (tuple2!20191 (select (arr!38039 _keys!1208) from!1455) (get!19451 (select (arr!38038 _values!996) from!1455) lt!555360))) lt!555424)))

(declare-fun b!1221174 () Bool)

(declare-fun res!811374 () Bool)

(assert (=> b!1221174 (=> (not res!811374) (not e!693510))))

(assert (=> b!1221174 (= res!811374 (= (getValueByKey!649 (toList!9101 lt!555424) (_1!10105 (tuple2!20191 (select (arr!38039 _keys!1208) from!1455) (get!19451 (select (arr!38038 _values!996) from!1455) lt!555360)))) (Some!699 (_2!10105 (tuple2!20191 (select (arr!38039 _keys!1208) from!1455) (get!19451 (select (arr!38038 _values!996) from!1455) lt!555360))))))))

(declare-fun b!1221175 () Bool)

(declare-fun contains!7040 (List!27006 tuple2!20190) Bool)

(assert (=> b!1221175 (= e!693510 (contains!7040 (toList!9101 lt!555424) (tuple2!20191 (select (arr!38039 _keys!1208) from!1455) (get!19451 (select (arr!38038 _values!996) from!1455) lt!555360))))))

(assert (= (and d!133739 res!811375) b!1221174))

(assert (= (and b!1221174 res!811374) b!1221175))

(declare-fun m!1126097 () Bool)

(assert (=> d!133739 m!1126097))

(declare-fun m!1126099 () Bool)

(assert (=> d!133739 m!1126099))

(declare-fun m!1126101 () Bool)

(assert (=> d!133739 m!1126101))

(declare-fun m!1126103 () Bool)

(assert (=> d!133739 m!1126103))

(declare-fun m!1126105 () Bool)

(assert (=> b!1221174 m!1126105))

(declare-fun m!1126107 () Bool)

(assert (=> b!1221175 m!1126107))

(assert (=> b!1221047 d!133739))

(declare-fun d!133741 () Bool)

(declare-fun c!120193 () Bool)

(assert (=> d!133741 (= c!120193 ((_ is ValueCellFull!14808) (select (arr!38038 _values!996) from!1455)))))

(declare-fun e!693513 () V!46507)

(assert (=> d!133741 (= (get!19451 (select (arr!38038 _values!996) from!1455) lt!555360) e!693513)))

(declare-fun b!1221180 () Bool)

(declare-fun get!19452 (ValueCell!14808 V!46507) V!46507)

(assert (=> b!1221180 (= e!693513 (get!19452 (select (arr!38038 _values!996) from!1455) lt!555360))))

(declare-fun b!1221181 () Bool)

(declare-fun get!19453 (ValueCell!14808 V!46507) V!46507)

(assert (=> b!1221181 (= e!693513 (get!19453 (select (arr!38038 _values!996) from!1455) lt!555360))))

(assert (= (and d!133741 c!120193) b!1221180))

(assert (= (and d!133741 (not c!120193)) b!1221181))

(assert (=> b!1221180 m!1125991))

(declare-fun m!1126109 () Bool)

(assert (=> b!1221180 m!1126109))

(assert (=> b!1221181 m!1125991))

(declare-fun m!1126111 () Bool)

(assert (=> b!1221181 m!1126111))

(assert (=> b!1221047 d!133741))

(declare-fun d!133743 () Bool)

(assert (=> d!133743 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1221056 d!133743))

(declare-fun d!133745 () Bool)

(declare-fun res!811376 () Bool)

(declare-fun e!693514 () Bool)

(assert (=> d!133745 (=> res!811376 e!693514)))

(assert (=> d!133745 (= res!811376 (= (select (arr!38039 _keys!1208) i!673) k0!934))))

(assert (=> d!133745 (= (arrayContainsKey!0 _keys!1208 k0!934 i!673) e!693514)))

(declare-fun b!1221182 () Bool)

(declare-fun e!693515 () Bool)

(assert (=> b!1221182 (= e!693514 e!693515)))

(declare-fun res!811377 () Bool)

(assert (=> b!1221182 (=> (not res!811377) (not e!693515))))

(assert (=> b!1221182 (= res!811377 (bvslt (bvadd i!673 #b00000000000000000000000000000001) (size!38576 _keys!1208)))))

(declare-fun b!1221183 () Bool)

(assert (=> b!1221183 (= e!693515 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd i!673 #b00000000000000000000000000000001)))))

(assert (= (and d!133745 (not res!811376)) b!1221182))

(assert (= (and b!1221182 res!811377) b!1221183))

(assert (=> d!133745 m!1125953))

(declare-fun m!1126113 () Bool)

(assert (=> b!1221183 m!1126113))

(assert (=> b!1221046 d!133745))

(declare-fun bm!60710 () Bool)

(declare-fun c!120194 () Bool)

(declare-fun call!60713 () Bool)

(assert (=> bm!60710 (= call!60713 (arrayNoDuplicates!0 _keys!1208 (bvadd from!1455 #b00000000000000000000000000000001) (ite c!120194 (Cons!27003 (select (arr!38039 _keys!1208) from!1455) Nil!27004) Nil!27004)))))

(declare-fun b!1221185 () Bool)

(declare-fun e!693517 () Bool)

(declare-fun e!693518 () Bool)

(assert (=> b!1221185 (= e!693517 e!693518)))

(assert (=> b!1221185 (= c!120194 (validKeyInArray!0 (select (arr!38039 _keys!1208) from!1455)))))

(declare-fun b!1221186 () Bool)

(assert (=> b!1221186 (= e!693518 call!60713)))

(declare-fun b!1221187 () Bool)

(declare-fun e!693519 () Bool)

(assert (=> b!1221187 (= e!693519 (contains!7038 Nil!27004 (select (arr!38039 _keys!1208) from!1455)))))

(declare-fun b!1221188 () Bool)

(assert (=> b!1221188 (= e!693518 call!60713)))

(declare-fun d!133747 () Bool)

(declare-fun res!811379 () Bool)

(declare-fun e!693516 () Bool)

(assert (=> d!133747 (=> res!811379 e!693516)))

(assert (=> d!133747 (= res!811379 (bvsge from!1455 (size!38576 _keys!1208)))))

(assert (=> d!133747 (= (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27004) e!693516)))

(declare-fun b!1221184 () Bool)

(assert (=> b!1221184 (= e!693516 e!693517)))

(declare-fun res!811380 () Bool)

(assert (=> b!1221184 (=> (not res!811380) (not e!693517))))

(assert (=> b!1221184 (= res!811380 (not e!693519))))

(declare-fun res!811378 () Bool)

(assert (=> b!1221184 (=> (not res!811378) (not e!693519))))

(assert (=> b!1221184 (= res!811378 (validKeyInArray!0 (select (arr!38039 _keys!1208) from!1455)))))

(assert (= (and d!133747 (not res!811379)) b!1221184))

(assert (= (and b!1221184 res!811378) b!1221187))

(assert (= (and b!1221184 res!811380) b!1221185))

(assert (= (and b!1221185 c!120194) b!1221188))

(assert (= (and b!1221185 (not c!120194)) b!1221186))

(assert (= (or b!1221188 b!1221186) bm!60710))

(assert (=> bm!60710 m!1125941))

(declare-fun m!1126115 () Bool)

(assert (=> bm!60710 m!1126115))

(assert (=> b!1221185 m!1125941))

(assert (=> b!1221185 m!1125941))

(assert (=> b!1221185 m!1125965))

(assert (=> b!1221187 m!1125941))

(assert (=> b!1221187 m!1125941))

(declare-fun m!1126117 () Bool)

(assert (=> b!1221187 m!1126117))

(assert (=> b!1221184 m!1125941))

(assert (=> b!1221184 m!1125941))

(assert (=> b!1221184 m!1125965))

(assert (=> b!1221055 d!133747))

(declare-fun d!133749 () Bool)

(assert (=> d!133749 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27004)))

(declare-fun lt!555428 () Unit!40372)

(declare-fun choose!39 (array!78826 (_ BitVec 32) (_ BitVec 32)) Unit!40372)

(assert (=> d!133749 (= lt!555428 (choose!39 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> d!133749 (bvslt (size!38576 _keys!1208) #b01111111111111111111111111111111)))

(assert (=> d!133749 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455) lt!555428)))

(declare-fun bs!34371 () Bool)

(assert (= bs!34371 d!133749))

(assert (=> bs!34371 m!1125971))

(declare-fun m!1126119 () Bool)

(assert (=> bs!34371 m!1126119))

(assert (=> b!1221055 d!133749))

(declare-fun d!133751 () Bool)

(declare-fun res!811381 () Bool)

(declare-fun e!693520 () Bool)

(assert (=> d!133751 (=> res!811381 e!693520)))

(assert (=> d!133751 (= res!811381 (= (select (arr!38039 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) k0!934))))

(assert (=> d!133751 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)) e!693520)))

(declare-fun b!1221189 () Bool)

(declare-fun e!693521 () Bool)

(assert (=> b!1221189 (= e!693520 e!693521)))

(declare-fun res!811382 () Bool)

(assert (=> b!1221189 (=> (not res!811382) (not e!693521))))

(assert (=> b!1221189 (= res!811382 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38576 _keys!1208)))))

(declare-fun b!1221190 () Bool)

(assert (=> b!1221190 (= e!693521 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(assert (= (and d!133751 (not res!811381)) b!1221189))

(assert (= (and b!1221189 res!811382) b!1221190))

(declare-fun m!1126121 () Bool)

(assert (=> d!133751 m!1126121))

(declare-fun m!1126123 () Bool)

(assert (=> b!1221190 m!1126123))

(assert (=> b!1221055 d!133751))

(declare-fun d!133753 () Bool)

(assert (=> d!133753 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555431 () Unit!40372)

(declare-fun choose!114 (array!78826 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40372)

(assert (=> d!133753 (= lt!555431 (choose!114 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> d!133753 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!133753 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)) lt!555431)))

(declare-fun bs!34372 () Bool)

(assert (= bs!34372 d!133753))

(assert (=> bs!34372 m!1125975))

(declare-fun m!1126125 () Bool)

(assert (=> bs!34372 m!1126125))

(assert (=> b!1221055 d!133753))

(declare-fun d!133755 () Bool)

(declare-fun lt!555434 () ListLongMap!18171)

(assert (=> d!133755 (not (contains!7039 lt!555434 k0!934))))

(declare-fun removeStrictlySorted!109 (List!27006 (_ BitVec 64)) List!27006)

(assert (=> d!133755 (= lt!555434 (ListLongMap!18172 (removeStrictlySorted!109 (toList!9101 lt!555362) k0!934)))))

(assert (=> d!133755 (= (-!1946 lt!555362 k0!934) lt!555434)))

(declare-fun bs!34373 () Bool)

(assert (= bs!34373 d!133755))

(declare-fun m!1126127 () Bool)

(assert (=> bs!34373 m!1126127))

(declare-fun m!1126129 () Bool)

(assert (=> bs!34373 m!1126129))

(assert (=> b!1221045 d!133755))

(declare-fun d!133757 () Bool)

(assert (=> d!133757 (= (validKeyInArray!0 (select (arr!38039 _keys!1208) from!1455)) (and (not (= (select (arr!38039 _keys!1208) from!1455) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38039 _keys!1208) from!1455) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1221045 d!133757))

(declare-fun e!693526 () Bool)

(declare-fun call!60718 () ListLongMap!18171)

(declare-fun call!60719 () ListLongMap!18171)

(declare-fun b!1221197 () Bool)

(assert (=> b!1221197 (= e!693526 (= call!60718 (-!1946 call!60719 k0!934)))))

(assert (=> b!1221197 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38575 _values!996)))))

(declare-fun d!133759 () Bool)

(declare-fun e!693527 () Bool)

(assert (=> d!133759 e!693527))

(declare-fun res!811385 () Bool)

(assert (=> d!133759 (=> (not res!811385) (not e!693527))))

(assert (=> d!133759 (= res!811385 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38576 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38576 _keys!1208))))))))

(declare-fun lt!555437 () Unit!40372)

(declare-fun choose!1833 (array!78826 array!78824 (_ BitVec 32) (_ BitVec 32) V!46507 V!46507 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40372)

(assert (=> d!133759 (= lt!555437 (choose!1833 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!133759 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38576 _keys!1208)))))

(assert (=> d!133759 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1148 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!555437)))

(declare-fun b!1221198 () Bool)

(assert (=> b!1221198 (= e!693527 e!693526)))

(declare-fun c!120197 () Bool)

(assert (=> b!1221198 (= c!120197 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun b!1221199 () Bool)

(assert (=> b!1221199 (= e!693526 (= call!60718 call!60719))))

(assert (=> b!1221199 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38575 _values!996)))))

(declare-fun bm!60715 () Bool)

(assert (=> bm!60715 (= call!60719 (getCurrentListMapNoExtraKeys!5499 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!60716 () Bool)

(assert (=> bm!60716 (= call!60718 (getCurrentListMapNoExtraKeys!5499 (array!78827 (store (arr!38039 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38576 _keys!1208)) (array!78825 (store (arr!38038 _values!996) i!673 (ValueCellFull!14808 (dynLambda!3400 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38575 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and d!133759 res!811385) b!1221198))

(assert (= (and b!1221198 c!120197) b!1221197))

(assert (= (and b!1221198 (not c!120197)) b!1221199))

(assert (= (or b!1221197 b!1221199) bm!60715))

(assert (= (or b!1221197 b!1221199) bm!60716))

(declare-fun b_lambda!22213 () Bool)

(assert (=> (not b_lambda!22213) (not bm!60716)))

(assert (=> bm!60716 t!40323))

(declare-fun b_and!43887 () Bool)

(assert (= b_and!43881 (and (=> t!40323 result!22877) b_and!43887)))

(declare-fun m!1126131 () Bool)

(assert (=> b!1221197 m!1126131))

(declare-fun m!1126133 () Bool)

(assert (=> d!133759 m!1126133))

(assert (=> bm!60715 m!1125959))

(assert (=> bm!60716 m!1125981))

(assert (=> bm!60716 m!1125947))

(declare-fun m!1126135 () Bool)

(assert (=> bm!60716 m!1126135))

(declare-fun m!1126137 () Bool)

(assert (=> bm!60716 m!1126137))

(assert (=> b!1221045 d!133759))

(declare-fun lt!555456 () ListLongMap!18171)

(declare-fun b!1221224 () Bool)

(declare-fun e!693544 () Bool)

(assert (=> b!1221224 (= e!693544 (= lt!555456 (getCurrentListMapNoExtraKeys!5499 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1221225 () Bool)

(declare-fun isEmpty!1002 (ListLongMap!18171) Bool)

(assert (=> b!1221225 (= e!693544 (isEmpty!1002 lt!555456))))

(declare-fun d!133761 () Bool)

(declare-fun e!693543 () Bool)

(assert (=> d!133761 e!693543))

(declare-fun res!811397 () Bool)

(assert (=> d!133761 (=> (not res!811397) (not e!693543))))

(assert (=> d!133761 (= res!811397 (not (contains!7039 lt!555456 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!693548 () ListLongMap!18171)

(assert (=> d!133761 (= lt!555456 e!693548)))

(declare-fun c!120207 () Bool)

(assert (=> d!133761 (= c!120207 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38576 _keys!1208)))))

(assert (=> d!133761 (validMask!0 mask!1564)))

(assert (=> d!133761 (= (getCurrentListMapNoExtraKeys!5499 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!555456)))

(declare-fun b!1221226 () Bool)

(declare-fun e!693542 () Bool)

(assert (=> b!1221226 (= e!693542 e!693544)))

(declare-fun c!120206 () Bool)

(assert (=> b!1221226 (= c!120206 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38576 _keys!1208)))))

(declare-fun b!1221227 () Bool)

(assert (=> b!1221227 (= e!693548 (ListLongMap!18172 Nil!27003))))

(declare-fun b!1221228 () Bool)

(assert (=> b!1221228 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38576 _keys!1208)))))

(assert (=> b!1221228 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38575 _values!996)))))

(declare-fun e!693545 () Bool)

(declare-fun apply!1010 (ListLongMap!18171 (_ BitVec 64)) V!46507)

(assert (=> b!1221228 (= e!693545 (= (apply!1010 lt!555456 (select (arr!38039 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19451 (select (arr!38038 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3400 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1221229 () Bool)

(declare-fun lt!555452 () Unit!40372)

(declare-fun lt!555458 () Unit!40372)

(assert (=> b!1221229 (= lt!555452 lt!555458)))

(declare-fun lt!555454 () (_ BitVec 64))

(declare-fun lt!555457 () ListLongMap!18171)

(declare-fun lt!555453 () (_ BitVec 64))

(declare-fun lt!555455 () V!46507)

(assert (=> b!1221229 (not (contains!7039 (+!4073 lt!555457 (tuple2!20191 lt!555454 lt!555455)) lt!555453))))

(declare-fun addStillNotContains!305 (ListLongMap!18171 (_ BitVec 64) V!46507 (_ BitVec 64)) Unit!40372)

(assert (=> b!1221229 (= lt!555458 (addStillNotContains!305 lt!555457 lt!555454 lt!555455 lt!555453))))

(assert (=> b!1221229 (= lt!555453 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1221229 (= lt!555455 (get!19451 (select (arr!38038 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3400 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1221229 (= lt!555454 (select (arr!38039 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!60722 () ListLongMap!18171)

(assert (=> b!1221229 (= lt!555457 call!60722)))

(declare-fun e!693546 () ListLongMap!18171)

(assert (=> b!1221229 (= e!693546 (+!4073 call!60722 (tuple2!20191 (select (arr!38039 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19451 (select (arr!38038 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3400 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1221230 () Bool)

(declare-fun e!693547 () Bool)

(assert (=> b!1221230 (= e!693547 (validKeyInArray!0 (select (arr!38039 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1221230 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1221231 () Bool)

(assert (=> b!1221231 (= e!693548 e!693546)))

(declare-fun c!120208 () Bool)

(assert (=> b!1221231 (= c!120208 (validKeyInArray!0 (select (arr!38039 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1221232 () Bool)

(declare-fun res!811394 () Bool)

(assert (=> b!1221232 (=> (not res!811394) (not e!693543))))

(assert (=> b!1221232 (= res!811394 (not (contains!7039 lt!555456 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1221233 () Bool)

(assert (=> b!1221233 (= e!693543 e!693542)))

(declare-fun c!120209 () Bool)

(assert (=> b!1221233 (= c!120209 e!693547)))

(declare-fun res!811395 () Bool)

(assert (=> b!1221233 (=> (not res!811395) (not e!693547))))

(assert (=> b!1221233 (= res!811395 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38576 _keys!1208)))))

(declare-fun b!1221234 () Bool)

(assert (=> b!1221234 (= e!693542 e!693545)))

(assert (=> b!1221234 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38576 _keys!1208)))))

(declare-fun res!811396 () Bool)

(assert (=> b!1221234 (= res!811396 (contains!7039 lt!555456 (select (arr!38039 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1221234 (=> (not res!811396) (not e!693545))))

(declare-fun bm!60719 () Bool)

(assert (=> bm!60719 (= call!60722 (getCurrentListMapNoExtraKeys!5499 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1221235 () Bool)

(assert (=> b!1221235 (= e!693546 call!60722)))

(assert (= (and d!133761 c!120207) b!1221227))

(assert (= (and d!133761 (not c!120207)) b!1221231))

(assert (= (and b!1221231 c!120208) b!1221229))

(assert (= (and b!1221231 (not c!120208)) b!1221235))

(assert (= (or b!1221229 b!1221235) bm!60719))

(assert (= (and d!133761 res!811397) b!1221232))

(assert (= (and b!1221232 res!811394) b!1221233))

(assert (= (and b!1221233 res!811395) b!1221230))

(assert (= (and b!1221233 c!120209) b!1221234))

(assert (= (and b!1221233 (not c!120209)) b!1221226))

(assert (= (and b!1221234 res!811396) b!1221228))

(assert (= (and b!1221226 c!120206) b!1221224))

(assert (= (and b!1221226 (not c!120206)) b!1221225))

(declare-fun b_lambda!22215 () Bool)

(assert (=> (not b_lambda!22215) (not b!1221228)))

(assert (=> b!1221228 t!40323))

(declare-fun b_and!43889 () Bool)

(assert (= b_and!43887 (and (=> t!40323 result!22877) b_and!43889)))

(declare-fun b_lambda!22217 () Bool)

(assert (=> (not b_lambda!22217) (not b!1221229)))

(assert (=> b!1221229 t!40323))

(declare-fun b_and!43891 () Bool)

(assert (= b_and!43889 (and (=> t!40323 result!22877) b_and!43891)))

(declare-fun m!1126139 () Bool)

(assert (=> b!1221224 m!1126139))

(declare-fun m!1126141 () Bool)

(assert (=> b!1221225 m!1126141))

(assert (=> b!1221234 m!1126121))

(assert (=> b!1221234 m!1126121))

(declare-fun m!1126143 () Bool)

(assert (=> b!1221234 m!1126143))

(assert (=> b!1221231 m!1126121))

(assert (=> b!1221231 m!1126121))

(declare-fun m!1126145 () Bool)

(assert (=> b!1221231 m!1126145))

(declare-fun m!1126147 () Bool)

(assert (=> b!1221229 m!1126147))

(assert (=> b!1221229 m!1125947))

(declare-fun m!1126149 () Bool)

(assert (=> b!1221229 m!1126149))

(declare-fun m!1126151 () Bool)

(assert (=> b!1221229 m!1126151))

(declare-fun m!1126153 () Bool)

(assert (=> b!1221229 m!1126153))

(assert (=> b!1221229 m!1125947))

(declare-fun m!1126155 () Bool)

(assert (=> b!1221229 m!1126155))

(assert (=> b!1221229 m!1126121))

(assert (=> b!1221229 m!1126155))

(declare-fun m!1126157 () Bool)

(assert (=> b!1221229 m!1126157))

(assert (=> b!1221229 m!1126147))

(assert (=> bm!60719 m!1126139))

(assert (=> b!1221230 m!1126121))

(assert (=> b!1221230 m!1126121))

(assert (=> b!1221230 m!1126145))

(declare-fun m!1126159 () Bool)

(assert (=> b!1221232 m!1126159))

(declare-fun m!1126161 () Bool)

(assert (=> d!133761 m!1126161))

(assert (=> d!133761 m!1125939))

(assert (=> b!1221228 m!1126147))

(assert (=> b!1221228 m!1125947))

(assert (=> b!1221228 m!1126149))

(assert (=> b!1221228 m!1126147))

(assert (=> b!1221228 m!1125947))

(assert (=> b!1221228 m!1126121))

(declare-fun m!1126163 () Bool)

(assert (=> b!1221228 m!1126163))

(assert (=> b!1221228 m!1126121))

(assert (=> b!1221045 d!133761))

(declare-fun b!1221236 () Bool)

(declare-fun lt!555463 () ListLongMap!18171)

(declare-fun e!693551 () Bool)

(assert (=> b!1221236 (= e!693551 (= lt!555463 (getCurrentListMapNoExtraKeys!5499 lt!555353 lt!555358 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1221237 () Bool)

(assert (=> b!1221237 (= e!693551 (isEmpty!1002 lt!555463))))

(declare-fun d!133763 () Bool)

(declare-fun e!693550 () Bool)

(assert (=> d!133763 e!693550))

(declare-fun res!811401 () Bool)

(assert (=> d!133763 (=> (not res!811401) (not e!693550))))

(assert (=> d!133763 (= res!811401 (not (contains!7039 lt!555463 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!693555 () ListLongMap!18171)

(assert (=> d!133763 (= lt!555463 e!693555)))

(declare-fun c!120211 () Bool)

(assert (=> d!133763 (= c!120211 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38576 lt!555353)))))

(assert (=> d!133763 (validMask!0 mask!1564)))

(assert (=> d!133763 (= (getCurrentListMapNoExtraKeys!5499 lt!555353 lt!555358 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!555463)))

(declare-fun b!1221238 () Bool)

(declare-fun e!693549 () Bool)

(assert (=> b!1221238 (= e!693549 e!693551)))

(declare-fun c!120210 () Bool)

(assert (=> b!1221238 (= c!120210 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38576 lt!555353)))))

(declare-fun b!1221239 () Bool)

(assert (=> b!1221239 (= e!693555 (ListLongMap!18172 Nil!27003))))

(declare-fun b!1221240 () Bool)

(assert (=> b!1221240 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38576 lt!555353)))))

(assert (=> b!1221240 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38575 lt!555358)))))

(declare-fun e!693552 () Bool)

(assert (=> b!1221240 (= e!693552 (= (apply!1010 lt!555463 (select (arr!38039 lt!555353) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19451 (select (arr!38038 lt!555358) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3400 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1221241 () Bool)

(declare-fun lt!555459 () Unit!40372)

(declare-fun lt!555465 () Unit!40372)

(assert (=> b!1221241 (= lt!555459 lt!555465)))

(declare-fun lt!555461 () (_ BitVec 64))

(declare-fun lt!555460 () (_ BitVec 64))

(declare-fun lt!555464 () ListLongMap!18171)

(declare-fun lt!555462 () V!46507)

(assert (=> b!1221241 (not (contains!7039 (+!4073 lt!555464 (tuple2!20191 lt!555461 lt!555462)) lt!555460))))

(assert (=> b!1221241 (= lt!555465 (addStillNotContains!305 lt!555464 lt!555461 lt!555462 lt!555460))))

(assert (=> b!1221241 (= lt!555460 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1221241 (= lt!555462 (get!19451 (select (arr!38038 lt!555358) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3400 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1221241 (= lt!555461 (select (arr!38039 lt!555353) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!60723 () ListLongMap!18171)

(assert (=> b!1221241 (= lt!555464 call!60723)))

(declare-fun e!693553 () ListLongMap!18171)

(assert (=> b!1221241 (= e!693553 (+!4073 call!60723 (tuple2!20191 (select (arr!38039 lt!555353) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19451 (select (arr!38038 lt!555358) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3400 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1221242 () Bool)

(declare-fun e!693554 () Bool)

(assert (=> b!1221242 (= e!693554 (validKeyInArray!0 (select (arr!38039 lt!555353) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1221242 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1221243 () Bool)

(assert (=> b!1221243 (= e!693555 e!693553)))

(declare-fun c!120212 () Bool)

(assert (=> b!1221243 (= c!120212 (validKeyInArray!0 (select (arr!38039 lt!555353) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1221244 () Bool)

(declare-fun res!811398 () Bool)

(assert (=> b!1221244 (=> (not res!811398) (not e!693550))))

(assert (=> b!1221244 (= res!811398 (not (contains!7039 lt!555463 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1221245 () Bool)

(assert (=> b!1221245 (= e!693550 e!693549)))

(declare-fun c!120213 () Bool)

(assert (=> b!1221245 (= c!120213 e!693554)))

(declare-fun res!811399 () Bool)

(assert (=> b!1221245 (=> (not res!811399) (not e!693554))))

(assert (=> b!1221245 (= res!811399 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38576 lt!555353)))))

(declare-fun b!1221246 () Bool)

(assert (=> b!1221246 (= e!693549 e!693552)))

(assert (=> b!1221246 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38576 lt!555353)))))

(declare-fun res!811400 () Bool)

(assert (=> b!1221246 (= res!811400 (contains!7039 lt!555463 (select (arr!38039 lt!555353) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1221246 (=> (not res!811400) (not e!693552))))

(declare-fun bm!60720 () Bool)

(assert (=> bm!60720 (= call!60723 (getCurrentListMapNoExtraKeys!5499 lt!555353 lt!555358 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1221247 () Bool)

(assert (=> b!1221247 (= e!693553 call!60723)))

(assert (= (and d!133763 c!120211) b!1221239))

(assert (= (and d!133763 (not c!120211)) b!1221243))

(assert (= (and b!1221243 c!120212) b!1221241))

(assert (= (and b!1221243 (not c!120212)) b!1221247))

(assert (= (or b!1221241 b!1221247) bm!60720))

(assert (= (and d!133763 res!811401) b!1221244))

(assert (= (and b!1221244 res!811398) b!1221245))

(assert (= (and b!1221245 res!811399) b!1221242))

(assert (= (and b!1221245 c!120213) b!1221246))

(assert (= (and b!1221245 (not c!120213)) b!1221238))

(assert (= (and b!1221246 res!811400) b!1221240))

(assert (= (and b!1221238 c!120210) b!1221236))

(assert (= (and b!1221238 (not c!120210)) b!1221237))

(declare-fun b_lambda!22219 () Bool)

(assert (=> (not b_lambda!22219) (not b!1221240)))

(assert (=> b!1221240 t!40323))

(declare-fun b_and!43893 () Bool)

(assert (= b_and!43891 (and (=> t!40323 result!22877) b_and!43893)))

(declare-fun b_lambda!22221 () Bool)

(assert (=> (not b_lambda!22221) (not b!1221241)))

(assert (=> b!1221241 t!40323))

(declare-fun b_and!43895 () Bool)

(assert (= b_and!43893 (and (=> t!40323 result!22877) b_and!43895)))

(declare-fun m!1126165 () Bool)

(assert (=> b!1221236 m!1126165))

(declare-fun m!1126167 () Bool)

(assert (=> b!1221237 m!1126167))

(declare-fun m!1126169 () Bool)

(assert (=> b!1221246 m!1126169))

(assert (=> b!1221246 m!1126169))

(declare-fun m!1126171 () Bool)

(assert (=> b!1221246 m!1126171))

(assert (=> b!1221243 m!1126169))

(assert (=> b!1221243 m!1126169))

(declare-fun m!1126173 () Bool)

(assert (=> b!1221243 m!1126173))

(declare-fun m!1126175 () Bool)

(assert (=> b!1221241 m!1126175))

(assert (=> b!1221241 m!1125947))

(declare-fun m!1126177 () Bool)

(assert (=> b!1221241 m!1126177))

(declare-fun m!1126179 () Bool)

(assert (=> b!1221241 m!1126179))

(declare-fun m!1126181 () Bool)

(assert (=> b!1221241 m!1126181))

(assert (=> b!1221241 m!1125947))

(declare-fun m!1126183 () Bool)

(assert (=> b!1221241 m!1126183))

(assert (=> b!1221241 m!1126169))

(assert (=> b!1221241 m!1126183))

(declare-fun m!1126185 () Bool)

(assert (=> b!1221241 m!1126185))

(assert (=> b!1221241 m!1126175))

(assert (=> bm!60720 m!1126165))

(assert (=> b!1221242 m!1126169))

(assert (=> b!1221242 m!1126169))

(assert (=> b!1221242 m!1126173))

(declare-fun m!1126187 () Bool)

(assert (=> b!1221244 m!1126187))

(declare-fun m!1126189 () Bool)

(assert (=> d!133763 m!1126189))

(assert (=> d!133763 m!1125939))

(assert (=> b!1221240 m!1126175))

(assert (=> b!1221240 m!1125947))

(assert (=> b!1221240 m!1126177))

(assert (=> b!1221240 m!1126175))

(assert (=> b!1221240 m!1125947))

(assert (=> b!1221240 m!1126169))

(declare-fun m!1126191 () Bool)

(assert (=> b!1221240 m!1126191))

(assert (=> b!1221240 m!1126169))

(assert (=> b!1221045 d!133763))

(declare-fun d!133765 () Bool)

(assert (=> d!133765 (= (array_inv!28860 _keys!1208) (bvsge (size!38576 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!101580 d!133765))

(declare-fun d!133767 () Bool)

(assert (=> d!133767 (= (array_inv!28861 _values!996) (bvsge (size!38575 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!101580 d!133767))

(declare-fun b!1221248 () Bool)

(declare-fun e!693558 () Bool)

(declare-fun lt!555470 () ListLongMap!18171)

(assert (=> b!1221248 (= e!693558 (= lt!555470 (getCurrentListMapNoExtraKeys!5499 lt!555353 lt!555358 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1221249 () Bool)

(assert (=> b!1221249 (= e!693558 (isEmpty!1002 lt!555470))))

(declare-fun d!133769 () Bool)

(declare-fun e!693557 () Bool)

(assert (=> d!133769 e!693557))

(declare-fun res!811405 () Bool)

(assert (=> d!133769 (=> (not res!811405) (not e!693557))))

(assert (=> d!133769 (= res!811405 (not (contains!7039 lt!555470 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!693562 () ListLongMap!18171)

(assert (=> d!133769 (= lt!555470 e!693562)))

(declare-fun c!120215 () Bool)

(assert (=> d!133769 (= c!120215 (bvsge from!1455 (size!38576 lt!555353)))))

(assert (=> d!133769 (validMask!0 mask!1564)))

(assert (=> d!133769 (= (getCurrentListMapNoExtraKeys!5499 lt!555353 lt!555358 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!555470)))

(declare-fun b!1221250 () Bool)

(declare-fun e!693556 () Bool)

(assert (=> b!1221250 (= e!693556 e!693558)))

(declare-fun c!120214 () Bool)

(assert (=> b!1221250 (= c!120214 (bvslt from!1455 (size!38576 lt!555353)))))

(declare-fun b!1221251 () Bool)

(assert (=> b!1221251 (= e!693562 (ListLongMap!18172 Nil!27003))))

(declare-fun b!1221252 () Bool)

(assert (=> b!1221252 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38576 lt!555353)))))

(assert (=> b!1221252 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38575 lt!555358)))))

(declare-fun e!693559 () Bool)

(assert (=> b!1221252 (= e!693559 (= (apply!1010 lt!555470 (select (arr!38039 lt!555353) from!1455)) (get!19451 (select (arr!38038 lt!555358) from!1455) (dynLambda!3400 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1221253 () Bool)

(declare-fun lt!555466 () Unit!40372)

(declare-fun lt!555472 () Unit!40372)

(assert (=> b!1221253 (= lt!555466 lt!555472)))

(declare-fun lt!555467 () (_ BitVec 64))

(declare-fun lt!555468 () (_ BitVec 64))

(declare-fun lt!555469 () V!46507)

(declare-fun lt!555471 () ListLongMap!18171)

(assert (=> b!1221253 (not (contains!7039 (+!4073 lt!555471 (tuple2!20191 lt!555468 lt!555469)) lt!555467))))

(assert (=> b!1221253 (= lt!555472 (addStillNotContains!305 lt!555471 lt!555468 lt!555469 lt!555467))))

(assert (=> b!1221253 (= lt!555467 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1221253 (= lt!555469 (get!19451 (select (arr!38038 lt!555358) from!1455) (dynLambda!3400 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1221253 (= lt!555468 (select (arr!38039 lt!555353) from!1455))))

(declare-fun call!60724 () ListLongMap!18171)

(assert (=> b!1221253 (= lt!555471 call!60724)))

(declare-fun e!693560 () ListLongMap!18171)

(assert (=> b!1221253 (= e!693560 (+!4073 call!60724 (tuple2!20191 (select (arr!38039 lt!555353) from!1455) (get!19451 (select (arr!38038 lt!555358) from!1455) (dynLambda!3400 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1221254 () Bool)

(declare-fun e!693561 () Bool)

(assert (=> b!1221254 (= e!693561 (validKeyInArray!0 (select (arr!38039 lt!555353) from!1455)))))

(assert (=> b!1221254 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1221255 () Bool)

(assert (=> b!1221255 (= e!693562 e!693560)))

(declare-fun c!120216 () Bool)

(assert (=> b!1221255 (= c!120216 (validKeyInArray!0 (select (arr!38039 lt!555353) from!1455)))))

(declare-fun b!1221256 () Bool)

(declare-fun res!811402 () Bool)

(assert (=> b!1221256 (=> (not res!811402) (not e!693557))))

(assert (=> b!1221256 (= res!811402 (not (contains!7039 lt!555470 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1221257 () Bool)

(assert (=> b!1221257 (= e!693557 e!693556)))

(declare-fun c!120217 () Bool)

(assert (=> b!1221257 (= c!120217 e!693561)))

(declare-fun res!811403 () Bool)

(assert (=> b!1221257 (=> (not res!811403) (not e!693561))))

(assert (=> b!1221257 (= res!811403 (bvslt from!1455 (size!38576 lt!555353)))))

(declare-fun b!1221258 () Bool)

(assert (=> b!1221258 (= e!693556 e!693559)))

(assert (=> b!1221258 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38576 lt!555353)))))

(declare-fun res!811404 () Bool)

(assert (=> b!1221258 (= res!811404 (contains!7039 lt!555470 (select (arr!38039 lt!555353) from!1455)))))

(assert (=> b!1221258 (=> (not res!811404) (not e!693559))))

(declare-fun bm!60721 () Bool)

(assert (=> bm!60721 (= call!60724 (getCurrentListMapNoExtraKeys!5499 lt!555353 lt!555358 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1221259 () Bool)

(assert (=> b!1221259 (= e!693560 call!60724)))

(assert (= (and d!133769 c!120215) b!1221251))

(assert (= (and d!133769 (not c!120215)) b!1221255))

(assert (= (and b!1221255 c!120216) b!1221253))

(assert (= (and b!1221255 (not c!120216)) b!1221259))

(assert (= (or b!1221253 b!1221259) bm!60721))

(assert (= (and d!133769 res!811405) b!1221256))

(assert (= (and b!1221256 res!811402) b!1221257))

(assert (= (and b!1221257 res!811403) b!1221254))

(assert (= (and b!1221257 c!120217) b!1221258))

(assert (= (and b!1221257 (not c!120217)) b!1221250))

(assert (= (and b!1221258 res!811404) b!1221252))

(assert (= (and b!1221250 c!120214) b!1221248))

(assert (= (and b!1221250 (not c!120214)) b!1221249))

(declare-fun b_lambda!22223 () Bool)

(assert (=> (not b_lambda!22223) (not b!1221252)))

(assert (=> b!1221252 t!40323))

(declare-fun b_and!43897 () Bool)

(assert (= b_and!43895 (and (=> t!40323 result!22877) b_and!43897)))

(declare-fun b_lambda!22225 () Bool)

(assert (=> (not b_lambda!22225) (not b!1221253)))

(assert (=> b!1221253 t!40323))

(declare-fun b_and!43899 () Bool)

(assert (= b_and!43897 (and (=> t!40323 result!22877) b_and!43899)))

(declare-fun m!1126193 () Bool)

(assert (=> b!1221248 m!1126193))

(declare-fun m!1126195 () Bool)

(assert (=> b!1221249 m!1126195))

(declare-fun m!1126197 () Bool)

(assert (=> b!1221258 m!1126197))

(assert (=> b!1221258 m!1126197))

(declare-fun m!1126199 () Bool)

(assert (=> b!1221258 m!1126199))

(assert (=> b!1221255 m!1126197))

(assert (=> b!1221255 m!1126197))

(declare-fun m!1126201 () Bool)

(assert (=> b!1221255 m!1126201))

(declare-fun m!1126203 () Bool)

(assert (=> b!1221253 m!1126203))

(assert (=> b!1221253 m!1125947))

(declare-fun m!1126205 () Bool)

(assert (=> b!1221253 m!1126205))

(declare-fun m!1126207 () Bool)

(assert (=> b!1221253 m!1126207))

(declare-fun m!1126209 () Bool)

(assert (=> b!1221253 m!1126209))

(assert (=> b!1221253 m!1125947))

(declare-fun m!1126211 () Bool)

(assert (=> b!1221253 m!1126211))

(assert (=> b!1221253 m!1126197))

(assert (=> b!1221253 m!1126211))

(declare-fun m!1126213 () Bool)

(assert (=> b!1221253 m!1126213))

(assert (=> b!1221253 m!1126203))

(assert (=> bm!60721 m!1126193))

(assert (=> b!1221254 m!1126197))

(assert (=> b!1221254 m!1126197))

(assert (=> b!1221254 m!1126201))

(declare-fun m!1126215 () Bool)

(assert (=> b!1221256 m!1126215))

(declare-fun m!1126217 () Bool)

(assert (=> d!133769 m!1126217))

(assert (=> d!133769 m!1125939))

(assert (=> b!1221252 m!1126203))

(assert (=> b!1221252 m!1125947))

(assert (=> b!1221252 m!1126205))

(assert (=> b!1221252 m!1126203))

(assert (=> b!1221252 m!1125947))

(assert (=> b!1221252 m!1126197))

(declare-fun m!1126219 () Bool)

(assert (=> b!1221252 m!1126219))

(assert (=> b!1221252 m!1126197))

(assert (=> b!1221043 d!133769))

(declare-fun b!1221260 () Bool)

(declare-fun lt!555477 () ListLongMap!18171)

(declare-fun e!693565 () Bool)

(assert (=> b!1221260 (= e!693565 (= lt!555477 (getCurrentListMapNoExtraKeys!5499 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1221261 () Bool)

(assert (=> b!1221261 (= e!693565 (isEmpty!1002 lt!555477))))

(declare-fun d!133771 () Bool)

(declare-fun e!693564 () Bool)

(assert (=> d!133771 e!693564))

(declare-fun res!811409 () Bool)

(assert (=> d!133771 (=> (not res!811409) (not e!693564))))

(assert (=> d!133771 (= res!811409 (not (contains!7039 lt!555477 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!693569 () ListLongMap!18171)

(assert (=> d!133771 (= lt!555477 e!693569)))

(declare-fun c!120219 () Bool)

(assert (=> d!133771 (= c!120219 (bvsge from!1455 (size!38576 _keys!1208)))))

(assert (=> d!133771 (validMask!0 mask!1564)))

(assert (=> d!133771 (= (getCurrentListMapNoExtraKeys!5499 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!555477)))

(declare-fun b!1221262 () Bool)

(declare-fun e!693563 () Bool)

(assert (=> b!1221262 (= e!693563 e!693565)))

(declare-fun c!120218 () Bool)

(assert (=> b!1221262 (= c!120218 (bvslt from!1455 (size!38576 _keys!1208)))))

(declare-fun b!1221263 () Bool)

(assert (=> b!1221263 (= e!693569 (ListLongMap!18172 Nil!27003))))

(declare-fun b!1221264 () Bool)

(assert (=> b!1221264 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38576 _keys!1208)))))

(assert (=> b!1221264 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38575 _values!996)))))

(declare-fun e!693566 () Bool)

(assert (=> b!1221264 (= e!693566 (= (apply!1010 lt!555477 (select (arr!38039 _keys!1208) from!1455)) (get!19451 (select (arr!38038 _values!996) from!1455) (dynLambda!3400 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1221265 () Bool)

(declare-fun lt!555473 () Unit!40372)

(declare-fun lt!555479 () Unit!40372)

(assert (=> b!1221265 (= lt!555473 lt!555479)))

(declare-fun lt!555476 () V!46507)

(declare-fun lt!555478 () ListLongMap!18171)

(declare-fun lt!555475 () (_ BitVec 64))

(declare-fun lt!555474 () (_ BitVec 64))

(assert (=> b!1221265 (not (contains!7039 (+!4073 lt!555478 (tuple2!20191 lt!555475 lt!555476)) lt!555474))))

(assert (=> b!1221265 (= lt!555479 (addStillNotContains!305 lt!555478 lt!555475 lt!555476 lt!555474))))

(assert (=> b!1221265 (= lt!555474 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1221265 (= lt!555476 (get!19451 (select (arr!38038 _values!996) from!1455) (dynLambda!3400 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1221265 (= lt!555475 (select (arr!38039 _keys!1208) from!1455))))

(declare-fun call!60725 () ListLongMap!18171)

(assert (=> b!1221265 (= lt!555478 call!60725)))

(declare-fun e!693567 () ListLongMap!18171)

(assert (=> b!1221265 (= e!693567 (+!4073 call!60725 (tuple2!20191 (select (arr!38039 _keys!1208) from!1455) (get!19451 (select (arr!38038 _values!996) from!1455) (dynLambda!3400 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1221266 () Bool)

(declare-fun e!693568 () Bool)

(assert (=> b!1221266 (= e!693568 (validKeyInArray!0 (select (arr!38039 _keys!1208) from!1455)))))

(assert (=> b!1221266 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1221267 () Bool)

(assert (=> b!1221267 (= e!693569 e!693567)))

(declare-fun c!120220 () Bool)

(assert (=> b!1221267 (= c!120220 (validKeyInArray!0 (select (arr!38039 _keys!1208) from!1455)))))

(declare-fun b!1221268 () Bool)

(declare-fun res!811406 () Bool)

(assert (=> b!1221268 (=> (not res!811406) (not e!693564))))

(assert (=> b!1221268 (= res!811406 (not (contains!7039 lt!555477 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1221269 () Bool)

(assert (=> b!1221269 (= e!693564 e!693563)))

(declare-fun c!120221 () Bool)

(assert (=> b!1221269 (= c!120221 e!693568)))

(declare-fun res!811407 () Bool)

(assert (=> b!1221269 (=> (not res!811407) (not e!693568))))

(assert (=> b!1221269 (= res!811407 (bvslt from!1455 (size!38576 _keys!1208)))))

(declare-fun b!1221270 () Bool)

(assert (=> b!1221270 (= e!693563 e!693566)))

(assert (=> b!1221270 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38576 _keys!1208)))))

(declare-fun res!811408 () Bool)

(assert (=> b!1221270 (= res!811408 (contains!7039 lt!555477 (select (arr!38039 _keys!1208) from!1455)))))

(assert (=> b!1221270 (=> (not res!811408) (not e!693566))))

(declare-fun bm!60722 () Bool)

(assert (=> bm!60722 (= call!60725 (getCurrentListMapNoExtraKeys!5499 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1221271 () Bool)

(assert (=> b!1221271 (= e!693567 call!60725)))

(assert (= (and d!133771 c!120219) b!1221263))

(assert (= (and d!133771 (not c!120219)) b!1221267))

(assert (= (and b!1221267 c!120220) b!1221265))

(assert (= (and b!1221267 (not c!120220)) b!1221271))

(assert (= (or b!1221265 b!1221271) bm!60722))

(assert (= (and d!133771 res!811409) b!1221268))

(assert (= (and b!1221268 res!811406) b!1221269))

(assert (= (and b!1221269 res!811407) b!1221266))

(assert (= (and b!1221269 c!120221) b!1221270))

(assert (= (and b!1221269 (not c!120221)) b!1221262))

(assert (= (and b!1221270 res!811408) b!1221264))

(assert (= (and b!1221262 c!120218) b!1221260))

(assert (= (and b!1221262 (not c!120218)) b!1221261))

(declare-fun b_lambda!22227 () Bool)

(assert (=> (not b_lambda!22227) (not b!1221264)))

(assert (=> b!1221264 t!40323))

(declare-fun b_and!43901 () Bool)

(assert (= b_and!43899 (and (=> t!40323 result!22877) b_and!43901)))

(declare-fun b_lambda!22229 () Bool)

(assert (=> (not b_lambda!22229) (not b!1221265)))

(assert (=> b!1221265 t!40323))

(declare-fun b_and!43903 () Bool)

(assert (= b_and!43901 (and (=> t!40323 result!22877) b_and!43903)))

(declare-fun m!1126221 () Bool)

(assert (=> b!1221260 m!1126221))

(declare-fun m!1126223 () Bool)

(assert (=> b!1221261 m!1126223))

(assert (=> b!1221270 m!1125941))

(assert (=> b!1221270 m!1125941))

(declare-fun m!1126225 () Bool)

(assert (=> b!1221270 m!1126225))

(assert (=> b!1221267 m!1125941))

(assert (=> b!1221267 m!1125941))

(assert (=> b!1221267 m!1125965))

(assert (=> b!1221265 m!1125991))

(assert (=> b!1221265 m!1125947))

(declare-fun m!1126227 () Bool)

(assert (=> b!1221265 m!1126227))

(declare-fun m!1126229 () Bool)

(assert (=> b!1221265 m!1126229))

(declare-fun m!1126231 () Bool)

(assert (=> b!1221265 m!1126231))

(assert (=> b!1221265 m!1125947))

(declare-fun m!1126233 () Bool)

(assert (=> b!1221265 m!1126233))

(assert (=> b!1221265 m!1125941))

(assert (=> b!1221265 m!1126233))

(declare-fun m!1126235 () Bool)

(assert (=> b!1221265 m!1126235))

(assert (=> b!1221265 m!1125991))

(assert (=> bm!60722 m!1126221))

(assert (=> b!1221266 m!1125941))

(assert (=> b!1221266 m!1125941))

(assert (=> b!1221266 m!1125965))

(declare-fun m!1126237 () Bool)

(assert (=> b!1221268 m!1126237))

(declare-fun m!1126239 () Bool)

(assert (=> d!133771 m!1126239))

(assert (=> d!133771 m!1125939))

(assert (=> b!1221264 m!1125991))

(assert (=> b!1221264 m!1125947))

(assert (=> b!1221264 m!1126227))

(assert (=> b!1221264 m!1125991))

(assert (=> b!1221264 m!1125947))

(assert (=> b!1221264 m!1125941))

(declare-fun m!1126241 () Bool)

(assert (=> b!1221264 m!1126241))

(assert (=> b!1221264 m!1125941))

(assert (=> b!1221043 d!133771))

(declare-fun bm!60723 () Bool)

(declare-fun call!60726 () Bool)

(declare-fun c!120222 () Bool)

(assert (=> bm!60723 (= call!60726 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!120222 (Cons!27003 (select (arr!38039 _keys!1208) #b00000000000000000000000000000000) Nil!27004) Nil!27004)))))

(declare-fun b!1221273 () Bool)

(declare-fun e!693571 () Bool)

(declare-fun e!693572 () Bool)

(assert (=> b!1221273 (= e!693571 e!693572)))

(assert (=> b!1221273 (= c!120222 (validKeyInArray!0 (select (arr!38039 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1221274 () Bool)

(assert (=> b!1221274 (= e!693572 call!60726)))

(declare-fun b!1221275 () Bool)

(declare-fun e!693573 () Bool)

(assert (=> b!1221275 (= e!693573 (contains!7038 Nil!27004 (select (arr!38039 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1221276 () Bool)

(assert (=> b!1221276 (= e!693572 call!60726)))

(declare-fun d!133773 () Bool)

(declare-fun res!811411 () Bool)

(declare-fun e!693570 () Bool)

(assert (=> d!133773 (=> res!811411 e!693570)))

(assert (=> d!133773 (= res!811411 (bvsge #b00000000000000000000000000000000 (size!38576 _keys!1208)))))

(assert (=> d!133773 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27004) e!693570)))

(declare-fun b!1221272 () Bool)

(assert (=> b!1221272 (= e!693570 e!693571)))

(declare-fun res!811412 () Bool)

(assert (=> b!1221272 (=> (not res!811412) (not e!693571))))

(assert (=> b!1221272 (= res!811412 (not e!693573))))

(declare-fun res!811410 () Bool)

(assert (=> b!1221272 (=> (not res!811410) (not e!693573))))

(assert (=> b!1221272 (= res!811410 (validKeyInArray!0 (select (arr!38039 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!133773 (not res!811411)) b!1221272))

(assert (= (and b!1221272 res!811410) b!1221275))

(assert (= (and b!1221272 res!811412) b!1221273))

(assert (= (and b!1221273 c!120222) b!1221276))

(assert (= (and b!1221273 (not c!120222)) b!1221274))

(assert (= (or b!1221276 b!1221274) bm!60723))

(assert (=> bm!60723 m!1126061))

(declare-fun m!1126243 () Bool)

(assert (=> bm!60723 m!1126243))

(assert (=> b!1221273 m!1126061))

(assert (=> b!1221273 m!1126061))

(assert (=> b!1221273 m!1126081))

(assert (=> b!1221275 m!1126061))

(assert (=> b!1221275 m!1126061))

(declare-fun m!1126245 () Bool)

(assert (=> b!1221275 m!1126245))

(assert (=> b!1221272 m!1126061))

(assert (=> b!1221272 m!1126061))

(assert (=> b!1221272 m!1126081))

(assert (=> b!1221052 d!133773))

(declare-fun b!1221283 () Bool)

(declare-fun e!693579 () Bool)

(assert (=> b!1221283 (= e!693579 tp_is_empty!31035)))

(declare-fun mapNonEmpty!48448 () Bool)

(declare-fun mapRes!48448 () Bool)

(declare-fun tp!92040 () Bool)

(assert (=> mapNonEmpty!48448 (= mapRes!48448 (and tp!92040 e!693579))))

(declare-fun mapRest!48448 () (Array (_ BitVec 32) ValueCell!14808))

(declare-fun mapValue!48448 () ValueCell!14808)

(declare-fun mapKey!48448 () (_ BitVec 32))

(assert (=> mapNonEmpty!48448 (= mapRest!48442 (store mapRest!48448 mapKey!48448 mapValue!48448))))

(declare-fun b!1221284 () Bool)

(declare-fun e!693578 () Bool)

(assert (=> b!1221284 (= e!693578 tp_is_empty!31035)))

(declare-fun condMapEmpty!48448 () Bool)

(declare-fun mapDefault!48448 () ValueCell!14808)

(assert (=> mapNonEmpty!48442 (= condMapEmpty!48448 (= mapRest!48442 ((as const (Array (_ BitVec 32) ValueCell!14808)) mapDefault!48448)))))

(assert (=> mapNonEmpty!48442 (= tp!92030 (and e!693578 mapRes!48448))))

(declare-fun mapIsEmpty!48448 () Bool)

(assert (=> mapIsEmpty!48448 mapRes!48448))

(assert (= (and mapNonEmpty!48442 condMapEmpty!48448) mapIsEmpty!48448))

(assert (= (and mapNonEmpty!48442 (not condMapEmpty!48448)) mapNonEmpty!48448))

(assert (= (and mapNonEmpty!48448 ((_ is ValueCellFull!14808) mapValue!48448)) b!1221283))

(assert (= (and mapNonEmpty!48442 ((_ is ValueCellFull!14808) mapDefault!48448)) b!1221284))

(declare-fun m!1126247 () Bool)

(assert (=> mapNonEmpty!48448 m!1126247))

(declare-fun b_lambda!22231 () Bool)

(assert (= b_lambda!22225 (or (and start!101580 b_free!26331) b_lambda!22231)))

(declare-fun b_lambda!22233 () Bool)

(assert (= b_lambda!22219 (or (and start!101580 b_free!26331) b_lambda!22233)))

(declare-fun b_lambda!22235 () Bool)

(assert (= b_lambda!22217 (or (and start!101580 b_free!26331) b_lambda!22235)))

(declare-fun b_lambda!22237 () Bool)

(assert (= b_lambda!22221 (or (and start!101580 b_free!26331) b_lambda!22237)))

(declare-fun b_lambda!22239 () Bool)

(assert (= b_lambda!22213 (or (and start!101580 b_free!26331) b_lambda!22239)))

(declare-fun b_lambda!22241 () Bool)

(assert (= b_lambda!22227 (or (and start!101580 b_free!26331) b_lambda!22241)))

(declare-fun b_lambda!22243 () Bool)

(assert (= b_lambda!22229 (or (and start!101580 b_free!26331) b_lambda!22243)))

(declare-fun b_lambda!22245 () Bool)

(assert (= b_lambda!22215 (or (and start!101580 b_free!26331) b_lambda!22245)))

(declare-fun b_lambda!22247 () Bool)

(assert (= b_lambda!22223 (or (and start!101580 b_free!26331) b_lambda!22247)))

(check-sat (not b!1221273) (not b!1221141) (not b!1221228) (not b_lambda!22235) (not b!1221183) (not b!1221249) (not b!1221237) (not b!1221242) (not b!1221232) (not b!1221234) (not b!1221187) (not b_lambda!22243) (not d!133771) (not b!1221270) (not bm!60715) (not b!1221248) (not b!1221272) (not b_lambda!22239) (not b!1221260) (not b_lambda!22237) (not b!1221180) (not bm!60706) (not b!1221246) (not b!1221190) (not b!1221275) (not b!1221175) (not b!1221265) (not b!1221252) (not b!1221264) b_and!43903 (not b_lambda!22231) (not b!1221254) (not bm!60721) (not d!133761) (not b!1221160) (not b!1221255) (not b!1221132) (not b!1221243) (not bm!60710) (not d!133763) (not b!1221261) (not d!133759) (not b!1221241) (not d!133739) (not bm!60723) (not b!1221181) (not b!1221145) (not b_lambda!22247) (not bm!60720) (not d!133753) (not b_next!26331) (not b_lambda!22233) (not bm!60722) (not mapNonEmpty!48448) (not b!1221230) (not b!1221169) (not d!133727) (not b!1221168) (not b!1221236) (not b!1221258) (not b!1221225) (not b_lambda!22245) (not b!1221144) (not d!133755) (not b!1221148) (not b!1221159) (not b!1221184) (not b!1221174) (not bm!60709) (not b!1221253) (not bm!60705) (not b!1221229) (not b!1221197) (not b_lambda!22211) (not b!1221240) (not d!133769) (not b!1221256) (not b!1221268) (not b!1221185) (not bm!60716) (not b!1221266) (not b_lambda!22241) (not bm!60719) (not b!1221224) (not b!1221267) (not b!1221244) (not d!133749) tp_is_empty!31035 (not b!1221162) (not b!1221231))
(check-sat b_and!43903 (not b_next!26331))

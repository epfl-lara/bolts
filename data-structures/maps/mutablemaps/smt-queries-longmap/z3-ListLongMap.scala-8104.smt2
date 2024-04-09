; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99528 () Bool)

(assert start!99528)

(declare-fun b_free!25071 () Bool)

(declare-fun b_next!25071 () Bool)

(assert (=> start!99528 (= b_free!25071 (not b_next!25071))))

(declare-fun tp!87928 () Bool)

(declare-fun b_and!41023 () Bool)

(assert (=> start!99528 (= tp!87928 b_and!41023)))

(declare-fun mapIsEmpty!46229 () Bool)

(declare-fun mapRes!46229 () Bool)

(assert (=> mapIsEmpty!46229 mapRes!46229))

(declare-fun b!1176086 () Bool)

(declare-datatypes ((Unit!38747 0))(
  ( (Unit!38748) )
))
(declare-fun e!668563 () Unit!38747)

(declare-fun Unit!38749 () Unit!38747)

(assert (=> b!1176086 (= e!668563 Unit!38749)))

(declare-datatypes ((array!75978 0))(
  ( (array!75979 (arr!36635 (Array (_ BitVec 32) (_ BitVec 64))) (size!37172 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75978)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!530716 () Unit!38747)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75978 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38747)

(assert (=> b!1176086 (= lt!530716 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!75978 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1176086 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!530711 () Unit!38747)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75978 (_ BitVec 32) (_ BitVec 32)) Unit!38747)

(assert (=> b!1176086 (= lt!530711 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25879 0))(
  ( (Nil!25876) (Cons!25875 (h!27084 (_ BitVec 64)) (t!37949 List!25879)) )
))
(declare-fun arrayNoDuplicates!0 (array!75978 (_ BitVec 32) List!25879) Bool)

(assert (=> b!1176086 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25876)))

(declare-fun lt!530715 () Unit!38747)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75978 (_ BitVec 64) (_ BitVec 32) List!25879) Unit!38747)

(assert (=> b!1176086 (= lt!530715 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25876))))

(assert (=> b!1176086 false))

(declare-fun b!1176087 () Bool)

(declare-fun res!781210 () Bool)

(declare-fun e!668569 () Bool)

(assert (=> b!1176087 (=> (not res!781210) (not e!668569))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44595 0))(
  ( (V!44596 (val!14857 Int)) )
))
(declare-datatypes ((ValueCell!14091 0))(
  ( (ValueCellFull!14091 (v!17496 V!44595)) (EmptyCell!14091) )
))
(declare-datatypes ((array!75980 0))(
  ( (array!75981 (arr!36636 (Array (_ BitVec 32) ValueCell!14091)) (size!37173 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75980)

(assert (=> b!1176087 (= res!781210 (and (= (size!37173 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37172 _keys!1208) (size!37173 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1176088 () Bool)

(declare-fun e!668571 () Bool)

(declare-fun e!668564 () Bool)

(assert (=> b!1176088 (= e!668571 e!668564)))

(declare-fun res!781208 () Bool)

(assert (=> b!1176088 (=> res!781208 e!668564)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1176088 (= res!781208 (not (validKeyInArray!0 (select (arr!36635 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19112 0))(
  ( (tuple2!19113 (_1!9566 (_ BitVec 64)) (_2!9566 V!44595)) )
))
(declare-datatypes ((List!25880 0))(
  ( (Nil!25877) (Cons!25876 (h!27085 tuple2!19112) (t!37950 List!25880)) )
))
(declare-datatypes ((ListLongMap!17093 0))(
  ( (ListLongMap!17094 (toList!8562 List!25880)) )
))
(declare-fun lt!530710 () ListLongMap!17093)

(declare-fun lt!530720 () ListLongMap!17093)

(assert (=> b!1176088 (= lt!530710 lt!530720)))

(declare-fun lt!530723 () ListLongMap!17093)

(declare-fun -!1568 (ListLongMap!17093 (_ BitVec 64)) ListLongMap!17093)

(assert (=> b!1176088 (= lt!530720 (-!1568 lt!530723 k0!934))))

(declare-fun zeroValue!944 () V!44595)

(declare-fun lt!530714 () array!75978)

(declare-fun lt!530721 () array!75980)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44595)

(declare-fun getCurrentListMapNoExtraKeys!4993 (array!75978 array!75980 (_ BitVec 32) (_ BitVec 32) V!44595 V!44595 (_ BitVec 32) Int) ListLongMap!17093)

(assert (=> b!1176088 (= lt!530710 (getCurrentListMapNoExtraKeys!4993 lt!530714 lt!530721 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1176088 (= lt!530723 (getCurrentListMapNoExtraKeys!4993 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!530718 () Unit!38747)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!792 (array!75978 array!75980 (_ BitVec 32) (_ BitVec 32) V!44595 V!44595 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38747)

(assert (=> b!1176088 (= lt!530718 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!792 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1176089 () Bool)

(assert (=> b!1176089 (= e!668564 true)))

(declare-fun e!668567 () Bool)

(assert (=> b!1176089 e!668567))

(declare-fun res!781214 () Bool)

(assert (=> b!1176089 (=> (not res!781214) (not e!668567))))

(assert (=> b!1176089 (= res!781214 (not (= (select (arr!36635 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!530712 () Unit!38747)

(assert (=> b!1176089 (= lt!530712 e!668563)))

(declare-fun c!116678 () Bool)

(assert (=> b!1176089 (= c!116678 (= (select (arr!36635 _keys!1208) from!1455) k0!934))))

(declare-fun e!668568 () Bool)

(assert (=> b!1176089 e!668568))

(declare-fun res!781215 () Bool)

(assert (=> b!1176089 (=> (not res!781215) (not e!668568))))

(declare-fun lt!530719 () tuple2!19112)

(declare-fun lt!530724 () ListLongMap!17093)

(declare-fun +!3785 (ListLongMap!17093 tuple2!19112) ListLongMap!17093)

(assert (=> b!1176089 (= res!781215 (= lt!530724 (+!3785 lt!530720 lt!530719)))))

(declare-fun lt!530713 () V!44595)

(declare-fun get!18742 (ValueCell!14091 V!44595) V!44595)

(assert (=> b!1176089 (= lt!530719 (tuple2!19113 (select (arr!36635 _keys!1208) from!1455) (get!18742 (select (arr!36636 _values!996) from!1455) lt!530713)))))

(declare-fun b!1176090 () Bool)

(declare-fun res!781218 () Bool)

(declare-fun e!668565 () Bool)

(assert (=> b!1176090 (=> (not res!781218) (not e!668565))))

(assert (=> b!1176090 (= res!781218 (arrayNoDuplicates!0 lt!530714 #b00000000000000000000000000000000 Nil!25876))))

(declare-fun b!1176092 () Bool)

(declare-fun res!781213 () Bool)

(assert (=> b!1176092 (=> (not res!781213) (not e!668569))))

(assert (=> b!1176092 (= res!781213 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37172 _keys!1208))))))

(declare-fun b!1176093 () Bool)

(declare-fun res!781216 () Bool)

(assert (=> b!1176093 (=> (not res!781216) (not e!668569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1176093 (= res!781216 (validMask!0 mask!1564))))

(declare-fun b!1176094 () Bool)

(declare-fun e!668570 () Bool)

(declare-fun tp_is_empty!29601 () Bool)

(assert (=> b!1176094 (= e!668570 tp_is_empty!29601)))

(declare-fun b!1176095 () Bool)

(declare-fun res!781207 () Bool)

(assert (=> b!1176095 (=> (not res!781207) (not e!668569))))

(assert (=> b!1176095 (= res!781207 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25876))))

(declare-fun b!1176096 () Bool)

(declare-fun Unit!38750 () Unit!38747)

(assert (=> b!1176096 (= e!668563 Unit!38750)))

(declare-fun b!1176097 () Bool)

(declare-fun e!668574 () Bool)

(assert (=> b!1176097 (= e!668568 e!668574)))

(declare-fun res!781217 () Bool)

(assert (=> b!1176097 (=> res!781217 e!668574)))

(assert (=> b!1176097 (= res!781217 (not (= (select (arr!36635 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1176098 () Bool)

(declare-fun e!668573 () Bool)

(assert (=> b!1176098 (= e!668573 tp_is_empty!29601)))

(declare-fun b!1176099 () Bool)

(assert (=> b!1176099 (= e!668569 e!668565)))

(declare-fun res!781212 () Bool)

(assert (=> b!1176099 (=> (not res!781212) (not e!668565))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75978 (_ BitVec 32)) Bool)

(assert (=> b!1176099 (= res!781212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!530714 mask!1564))))

(assert (=> b!1176099 (= lt!530714 (array!75979 (store (arr!36635 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37172 _keys!1208)))))

(declare-fun b!1176100 () Bool)

(declare-fun e!668575 () Bool)

(assert (=> b!1176100 (= e!668575 (and e!668573 mapRes!46229))))

(declare-fun condMapEmpty!46229 () Bool)

(declare-fun mapDefault!46229 () ValueCell!14091)

(assert (=> b!1176100 (= condMapEmpty!46229 (= (arr!36636 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14091)) mapDefault!46229)))))

(declare-fun mapNonEmpty!46229 () Bool)

(declare-fun tp!87927 () Bool)

(assert (=> mapNonEmpty!46229 (= mapRes!46229 (and tp!87927 e!668570))))

(declare-fun mapRest!46229 () (Array (_ BitVec 32) ValueCell!14091))

(declare-fun mapValue!46229 () ValueCell!14091)

(declare-fun mapKey!46229 () (_ BitVec 32))

(assert (=> mapNonEmpty!46229 (= (arr!36636 _values!996) (store mapRest!46229 mapKey!46229 mapValue!46229))))

(declare-fun b!1176101 () Bool)

(assert (=> b!1176101 (= e!668574 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1176102 () Bool)

(declare-fun res!781222 () Bool)

(assert (=> b!1176102 (=> (not res!781222) (not e!668569))))

(assert (=> b!1176102 (= res!781222 (validKeyInArray!0 k0!934))))

(declare-fun b!1176103 () Bool)

(declare-fun res!781219 () Bool)

(assert (=> b!1176103 (=> (not res!781219) (not e!668569))))

(assert (=> b!1176103 (= res!781219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun lt!530717 () ListLongMap!17093)

(declare-fun b!1176104 () Bool)

(assert (=> b!1176104 (= e!668567 (= lt!530717 (+!3785 lt!530723 lt!530719)))))

(declare-fun res!781221 () Bool)

(assert (=> start!99528 (=> (not res!781221) (not e!668569))))

(assert (=> start!99528 (= res!781221 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37172 _keys!1208))))))

(assert (=> start!99528 e!668569))

(assert (=> start!99528 tp_is_empty!29601))

(declare-fun array_inv!27866 (array!75978) Bool)

(assert (=> start!99528 (array_inv!27866 _keys!1208)))

(assert (=> start!99528 true))

(assert (=> start!99528 tp!87928))

(declare-fun array_inv!27867 (array!75980) Bool)

(assert (=> start!99528 (and (array_inv!27867 _values!996) e!668575)))

(declare-fun b!1176091 () Bool)

(declare-fun e!668572 () Bool)

(assert (=> b!1176091 (= e!668565 (not e!668572))))

(declare-fun res!781211 () Bool)

(assert (=> b!1176091 (=> res!781211 e!668572)))

(assert (=> b!1176091 (= res!781211 (bvsgt from!1455 i!673))))

(assert (=> b!1176091 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!530722 () Unit!38747)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75978 (_ BitVec 64) (_ BitVec 32)) Unit!38747)

(assert (=> b!1176091 (= lt!530722 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1176105 () Bool)

(assert (=> b!1176105 (= e!668572 e!668571)))

(declare-fun res!781220 () Bool)

(assert (=> b!1176105 (=> res!781220 e!668571)))

(assert (=> b!1176105 (= res!781220 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1176105 (= lt!530724 (getCurrentListMapNoExtraKeys!4993 lt!530714 lt!530721 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1176105 (= lt!530721 (array!75981 (store (arr!36636 _values!996) i!673 (ValueCellFull!14091 lt!530713)) (size!37173 _values!996)))))

(declare-fun dynLambda!2970 (Int (_ BitVec 64)) V!44595)

(assert (=> b!1176105 (= lt!530713 (dynLambda!2970 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1176105 (= lt!530717 (getCurrentListMapNoExtraKeys!4993 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1176106 () Bool)

(declare-fun res!781209 () Bool)

(assert (=> b!1176106 (=> (not res!781209) (not e!668569))))

(assert (=> b!1176106 (= res!781209 (= (select (arr!36635 _keys!1208) i!673) k0!934))))

(assert (= (and start!99528 res!781221) b!1176093))

(assert (= (and b!1176093 res!781216) b!1176087))

(assert (= (and b!1176087 res!781210) b!1176103))

(assert (= (and b!1176103 res!781219) b!1176095))

(assert (= (and b!1176095 res!781207) b!1176092))

(assert (= (and b!1176092 res!781213) b!1176102))

(assert (= (and b!1176102 res!781222) b!1176106))

(assert (= (and b!1176106 res!781209) b!1176099))

(assert (= (and b!1176099 res!781212) b!1176090))

(assert (= (and b!1176090 res!781218) b!1176091))

(assert (= (and b!1176091 (not res!781211)) b!1176105))

(assert (= (and b!1176105 (not res!781220)) b!1176088))

(assert (= (and b!1176088 (not res!781208)) b!1176089))

(assert (= (and b!1176089 res!781215) b!1176097))

(assert (= (and b!1176097 (not res!781217)) b!1176101))

(assert (= (and b!1176089 c!116678) b!1176086))

(assert (= (and b!1176089 (not c!116678)) b!1176096))

(assert (= (and b!1176089 res!781214) b!1176104))

(assert (= (and b!1176100 condMapEmpty!46229) mapIsEmpty!46229))

(assert (= (and b!1176100 (not condMapEmpty!46229)) mapNonEmpty!46229))

(get-info :version)

(assert (= (and mapNonEmpty!46229 ((_ is ValueCellFull!14091) mapValue!46229)) b!1176094))

(assert (= (and b!1176100 ((_ is ValueCellFull!14091) mapDefault!46229)) b!1176098))

(assert (= start!99528 b!1176100))

(declare-fun b_lambda!20233 () Bool)

(assert (=> (not b_lambda!20233) (not b!1176105)))

(declare-fun t!37948 () Bool)

(declare-fun tb!9891 () Bool)

(assert (=> (and start!99528 (= defaultEntry!1004 defaultEntry!1004) t!37948) tb!9891))

(declare-fun result!20341 () Bool)

(assert (=> tb!9891 (= result!20341 tp_is_empty!29601)))

(assert (=> b!1176105 t!37948))

(declare-fun b_and!41025 () Bool)

(assert (= b_and!41023 (and (=> t!37948 result!20341) b_and!41025)))

(declare-fun m!1084067 () Bool)

(assert (=> b!1176093 m!1084067))

(declare-fun m!1084069 () Bool)

(assert (=> b!1176101 m!1084069))

(declare-fun m!1084071 () Bool)

(assert (=> b!1176091 m!1084071))

(declare-fun m!1084073 () Bool)

(assert (=> b!1176091 m!1084073))

(declare-fun m!1084075 () Bool)

(assert (=> b!1176095 m!1084075))

(declare-fun m!1084077 () Bool)

(assert (=> b!1176086 m!1084077))

(declare-fun m!1084079 () Bool)

(assert (=> b!1176086 m!1084079))

(declare-fun m!1084081 () Bool)

(assert (=> b!1176086 m!1084081))

(declare-fun m!1084083 () Bool)

(assert (=> b!1176086 m!1084083))

(declare-fun m!1084085 () Bool)

(assert (=> b!1176086 m!1084085))

(declare-fun m!1084087 () Bool)

(assert (=> start!99528 m!1084087))

(declare-fun m!1084089 () Bool)

(assert (=> start!99528 m!1084089))

(declare-fun m!1084091 () Bool)

(assert (=> b!1176105 m!1084091))

(declare-fun m!1084093 () Bool)

(assert (=> b!1176105 m!1084093))

(declare-fun m!1084095 () Bool)

(assert (=> b!1176105 m!1084095))

(declare-fun m!1084097 () Bool)

(assert (=> b!1176105 m!1084097))

(declare-fun m!1084099 () Bool)

(assert (=> b!1176103 m!1084099))

(declare-fun m!1084101 () Bool)

(assert (=> b!1176099 m!1084101))

(declare-fun m!1084103 () Bool)

(assert (=> b!1176099 m!1084103))

(declare-fun m!1084105 () Bool)

(assert (=> b!1176097 m!1084105))

(declare-fun m!1084107 () Bool)

(assert (=> b!1176104 m!1084107))

(declare-fun m!1084109 () Bool)

(assert (=> mapNonEmpty!46229 m!1084109))

(declare-fun m!1084111 () Bool)

(assert (=> b!1176090 m!1084111))

(declare-fun m!1084113 () Bool)

(assert (=> b!1176102 m!1084113))

(declare-fun m!1084115 () Bool)

(assert (=> b!1176106 m!1084115))

(assert (=> b!1176089 m!1084105))

(declare-fun m!1084117 () Bool)

(assert (=> b!1176089 m!1084117))

(declare-fun m!1084119 () Bool)

(assert (=> b!1176089 m!1084119))

(assert (=> b!1176089 m!1084119))

(declare-fun m!1084121 () Bool)

(assert (=> b!1176089 m!1084121))

(declare-fun m!1084123 () Bool)

(assert (=> b!1176088 m!1084123))

(declare-fun m!1084125 () Bool)

(assert (=> b!1176088 m!1084125))

(declare-fun m!1084127 () Bool)

(assert (=> b!1176088 m!1084127))

(declare-fun m!1084129 () Bool)

(assert (=> b!1176088 m!1084129))

(assert (=> b!1176088 m!1084105))

(declare-fun m!1084131 () Bool)

(assert (=> b!1176088 m!1084131))

(assert (=> b!1176088 m!1084105))

(check-sat (not b!1176088) (not b!1176103) (not b!1176093) (not b!1176089) (not b!1176086) (not b!1176104) (not b!1176099) (not b!1176101) (not b!1176102) (not b_lambda!20233) b_and!41025 (not start!99528) (not b!1176091) (not b!1176090) tp_is_empty!29601 (not b_next!25071) (not mapNonEmpty!46229) (not b!1176105) (not b!1176095))
(check-sat b_and!41025 (not b_next!25071))

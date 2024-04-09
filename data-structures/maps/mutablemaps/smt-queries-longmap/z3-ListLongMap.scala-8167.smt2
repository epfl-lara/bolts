; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99906 () Bool)

(assert start!99906)

(declare-fun b_free!25449 () Bool)

(declare-fun b_next!25449 () Bool)

(assert (=> start!99906 (= b_free!25449 (not b_next!25449))))

(declare-fun tp!89062 () Bool)

(declare-fun b_and!41779 () Bool)

(assert (=> start!99906 (= tp!89062 b_and!41779)))

(declare-fun b!1188141 () Bool)

(declare-fun res!790058 () Bool)

(declare-fun e!675615 () Bool)

(assert (=> b!1188141 (=> (not res!790058) (not e!675615))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1188141 (= res!790058 (validMask!0 mask!1564))))

(declare-fun b!1188142 () Bool)

(declare-fun e!675622 () Bool)

(declare-fun tp_is_empty!29979 () Bool)

(assert (=> b!1188142 (= e!675622 tp_is_empty!29979)))

(declare-fun b!1188143 () Bool)

(declare-datatypes ((Unit!39345 0))(
  ( (Unit!39346) )
))
(declare-fun e!675616 () Unit!39345)

(declare-fun Unit!39347 () Unit!39345)

(assert (=> b!1188143 (= e!675616 Unit!39347)))

(declare-datatypes ((array!76726 0))(
  ( (array!76727 (arr!37009 (Array (_ BitVec 32) (_ BitVec 64))) (size!37546 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76726)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!540507 () Unit!39345)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76726 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39345)

(assert (=> b!1188143 (= lt!540507 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76726 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1188143 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!540505 () Unit!39345)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76726 (_ BitVec 32) (_ BitVec 32)) Unit!39345)

(assert (=> b!1188143 (= lt!540505 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26208 0))(
  ( (Nil!26205) (Cons!26204 (h!27413 (_ BitVec 64)) (t!38656 List!26208)) )
))
(declare-fun arrayNoDuplicates!0 (array!76726 (_ BitVec 32) List!26208) Bool)

(assert (=> b!1188143 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26205)))

(declare-fun lt!540506 () Unit!39345)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76726 (_ BitVec 64) (_ BitVec 32) List!26208) Unit!39345)

(assert (=> b!1188143 (= lt!540506 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26205))))

(assert (=> b!1188143 false))

(declare-fun b!1188144 () Bool)

(declare-fun res!790057 () Bool)

(assert (=> b!1188144 (=> (not res!790057) (not e!675615))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45099 0))(
  ( (V!45100 (val!15046 Int)) )
))
(declare-datatypes ((ValueCell!14280 0))(
  ( (ValueCellFull!14280 (v!17685 V!45099)) (EmptyCell!14280) )
))
(declare-datatypes ((array!76728 0))(
  ( (array!76729 (arr!37010 (Array (_ BitVec 32) ValueCell!14280)) (size!37547 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76728)

(assert (=> b!1188144 (= res!790057 (and (= (size!37547 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37546 _keys!1208) (size!37547 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1188145 () Bool)

(declare-fun e!675618 () Bool)

(declare-fun e!675614 () Bool)

(assert (=> b!1188145 (= e!675618 e!675614)))

(declare-fun res!790054 () Bool)

(assert (=> b!1188145 (=> res!790054 e!675614)))

(assert (=> b!1188145 (= res!790054 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45099)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19448 0))(
  ( (tuple2!19449 (_1!9734 (_ BitVec 64)) (_2!9734 V!45099)) )
))
(declare-datatypes ((List!26209 0))(
  ( (Nil!26206) (Cons!26205 (h!27414 tuple2!19448) (t!38657 List!26209)) )
))
(declare-datatypes ((ListLongMap!17429 0))(
  ( (ListLongMap!17430 (toList!8730 List!26209)) )
))
(declare-fun lt!540495 () ListLongMap!17429)

(declare-fun lt!540509 () array!76726)

(declare-fun minValue!944 () V!45099)

(declare-fun lt!540511 () array!76728)

(declare-fun getCurrentListMapNoExtraKeys!5144 (array!76726 array!76728 (_ BitVec 32) (_ BitVec 32) V!45099 V!45099 (_ BitVec 32) Int) ListLongMap!17429)

(assert (=> b!1188145 (= lt!540495 (getCurrentListMapNoExtraKeys!5144 lt!540509 lt!540511 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!540508 () V!45099)

(assert (=> b!1188145 (= lt!540511 (array!76729 (store (arr!37010 _values!996) i!673 (ValueCellFull!14280 lt!540508)) (size!37547 _values!996)))))

(declare-fun dynLambda!3101 (Int (_ BitVec 64)) V!45099)

(assert (=> b!1188145 (= lt!540508 (dynLambda!3101 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!540500 () ListLongMap!17429)

(assert (=> b!1188145 (= lt!540500 (getCurrentListMapNoExtraKeys!5144 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!46796 () Bool)

(declare-fun mapRes!46796 () Bool)

(declare-fun tp!89061 () Bool)

(declare-fun e!675621 () Bool)

(assert (=> mapNonEmpty!46796 (= mapRes!46796 (and tp!89061 e!675621))))

(declare-fun mapValue!46796 () ValueCell!14280)

(declare-fun mapKey!46796 () (_ BitVec 32))

(declare-fun mapRest!46796 () (Array (_ BitVec 32) ValueCell!14280))

(assert (=> mapNonEmpty!46796 (= (arr!37010 _values!996) (store mapRest!46796 mapKey!46796 mapValue!46796))))

(declare-fun b!1188147 () Bool)

(declare-fun e!675623 () Bool)

(assert (=> b!1188147 (= e!675623 (not e!675618))))

(declare-fun res!790049 () Bool)

(assert (=> b!1188147 (=> res!790049 e!675618)))

(assert (=> b!1188147 (= res!790049 (bvsgt from!1455 i!673))))

(assert (=> b!1188147 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!540502 () Unit!39345)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76726 (_ BitVec 64) (_ BitVec 32)) Unit!39345)

(assert (=> b!1188147 (= lt!540502 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1188148 () Bool)

(declare-fun e!675625 () Bool)

(assert (=> b!1188148 (= e!675625 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1188149 () Bool)

(declare-fun e!675619 () Bool)

(assert (=> b!1188149 (= e!675619 true)))

(declare-fun lt!540512 () ListLongMap!17429)

(declare-fun lt!540497 () ListLongMap!17429)

(declare-fun -!1715 (ListLongMap!17429 (_ BitVec 64)) ListLongMap!17429)

(assert (=> b!1188149 (= (-!1715 lt!540512 k0!934) lt!540497)))

(declare-fun lt!540498 () V!45099)

(declare-fun lt!540504 () ListLongMap!17429)

(declare-fun lt!540503 () Unit!39345)

(declare-fun addRemoveCommutativeForDiffKeys!222 (ListLongMap!17429 (_ BitVec 64) V!45099 (_ BitVec 64)) Unit!39345)

(assert (=> b!1188149 (= lt!540503 (addRemoveCommutativeForDiffKeys!222 lt!540504 (select (arr!37009 _keys!1208) from!1455) lt!540498 k0!934))))

(declare-fun lt!540513 () ListLongMap!17429)

(declare-fun lt!540501 () ListLongMap!17429)

(assert (=> b!1188149 (and (= lt!540500 lt!540512) (= lt!540513 lt!540501))))

(declare-fun lt!540510 () tuple2!19448)

(declare-fun +!3932 (ListLongMap!17429 tuple2!19448) ListLongMap!17429)

(assert (=> b!1188149 (= lt!540512 (+!3932 lt!540504 lt!540510))))

(assert (=> b!1188149 (not (= (select (arr!37009 _keys!1208) from!1455) k0!934))))

(declare-fun lt!540496 () Unit!39345)

(assert (=> b!1188149 (= lt!540496 e!675616)))

(declare-fun c!117245 () Bool)

(assert (=> b!1188149 (= c!117245 (= (select (arr!37009 _keys!1208) from!1455) k0!934))))

(declare-fun e!675620 () Bool)

(assert (=> b!1188149 e!675620))

(declare-fun res!790059 () Bool)

(assert (=> b!1188149 (=> (not res!790059) (not e!675620))))

(assert (=> b!1188149 (= res!790059 (= lt!540495 lt!540497))))

(assert (=> b!1188149 (= lt!540497 (+!3932 lt!540513 lt!540510))))

(assert (=> b!1188149 (= lt!540510 (tuple2!19449 (select (arr!37009 _keys!1208) from!1455) lt!540498))))

(declare-fun get!19004 (ValueCell!14280 V!45099) V!45099)

(assert (=> b!1188149 (= lt!540498 (get!19004 (select (arr!37010 _values!996) from!1455) lt!540508))))

(declare-fun b!1188150 () Bool)

(declare-fun res!790056 () Bool)

(assert (=> b!1188150 (=> (not res!790056) (not e!675615))))

(assert (=> b!1188150 (= res!790056 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26205))))

(declare-fun b!1188151 () Bool)

(declare-fun res!790050 () Bool)

(assert (=> b!1188151 (=> (not res!790050) (not e!675615))))

(assert (=> b!1188151 (= res!790050 (= (select (arr!37009 _keys!1208) i!673) k0!934))))

(declare-fun b!1188146 () Bool)

(declare-fun res!790060 () Bool)

(assert (=> b!1188146 (=> (not res!790060) (not e!675623))))

(assert (=> b!1188146 (= res!790060 (arrayNoDuplicates!0 lt!540509 #b00000000000000000000000000000000 Nil!26205))))

(declare-fun res!790061 () Bool)

(assert (=> start!99906 (=> (not res!790061) (not e!675615))))

(assert (=> start!99906 (= res!790061 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37546 _keys!1208))))))

(assert (=> start!99906 e!675615))

(assert (=> start!99906 tp_is_empty!29979))

(declare-fun array_inv!28122 (array!76726) Bool)

(assert (=> start!99906 (array_inv!28122 _keys!1208)))

(assert (=> start!99906 true))

(assert (=> start!99906 tp!89062))

(declare-fun e!675624 () Bool)

(declare-fun array_inv!28123 (array!76728) Bool)

(assert (=> start!99906 (and (array_inv!28123 _values!996) e!675624)))

(declare-fun b!1188152 () Bool)

(declare-fun res!790062 () Bool)

(assert (=> b!1188152 (=> (not res!790062) (not e!675615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76726 (_ BitVec 32)) Bool)

(assert (=> b!1188152 (= res!790062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1188153 () Bool)

(declare-fun res!790063 () Bool)

(assert (=> b!1188153 (=> (not res!790063) (not e!675615))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1188153 (= res!790063 (validKeyInArray!0 k0!934))))

(declare-fun b!1188154 () Bool)

(assert (=> b!1188154 (= e!675620 e!675625)))

(declare-fun res!790053 () Bool)

(assert (=> b!1188154 (=> res!790053 e!675625)))

(assert (=> b!1188154 (= res!790053 (not (= (select (arr!37009 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1188155 () Bool)

(assert (=> b!1188155 (= e!675614 e!675619)))

(declare-fun res!790052 () Bool)

(assert (=> b!1188155 (=> res!790052 e!675619)))

(assert (=> b!1188155 (= res!790052 (not (validKeyInArray!0 (select (arr!37009 _keys!1208) from!1455))))))

(assert (=> b!1188155 (= lt!540501 lt!540513)))

(assert (=> b!1188155 (= lt!540513 (-!1715 lt!540504 k0!934))))

(assert (=> b!1188155 (= lt!540501 (getCurrentListMapNoExtraKeys!5144 lt!540509 lt!540511 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1188155 (= lt!540504 (getCurrentListMapNoExtraKeys!5144 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!540499 () Unit!39345)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!921 (array!76726 array!76728 (_ BitVec 32) (_ BitVec 32) V!45099 V!45099 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39345)

(assert (=> b!1188155 (= lt!540499 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!921 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1188156 () Bool)

(assert (=> b!1188156 (= e!675621 tp_is_empty!29979)))

(declare-fun b!1188157 () Bool)

(assert (=> b!1188157 (= e!675615 e!675623)))

(declare-fun res!790055 () Bool)

(assert (=> b!1188157 (=> (not res!790055) (not e!675623))))

(assert (=> b!1188157 (= res!790055 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540509 mask!1564))))

(assert (=> b!1188157 (= lt!540509 (array!76727 (store (arr!37009 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37546 _keys!1208)))))

(declare-fun b!1188158 () Bool)

(declare-fun res!790051 () Bool)

(assert (=> b!1188158 (=> (not res!790051) (not e!675615))))

(assert (=> b!1188158 (= res!790051 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37546 _keys!1208))))))

(declare-fun b!1188159 () Bool)

(assert (=> b!1188159 (= e!675624 (and e!675622 mapRes!46796))))

(declare-fun condMapEmpty!46796 () Bool)

(declare-fun mapDefault!46796 () ValueCell!14280)

(assert (=> b!1188159 (= condMapEmpty!46796 (= (arr!37010 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14280)) mapDefault!46796)))))

(declare-fun mapIsEmpty!46796 () Bool)

(assert (=> mapIsEmpty!46796 mapRes!46796))

(declare-fun b!1188160 () Bool)

(declare-fun Unit!39348 () Unit!39345)

(assert (=> b!1188160 (= e!675616 Unit!39348)))

(assert (= (and start!99906 res!790061) b!1188141))

(assert (= (and b!1188141 res!790058) b!1188144))

(assert (= (and b!1188144 res!790057) b!1188152))

(assert (= (and b!1188152 res!790062) b!1188150))

(assert (= (and b!1188150 res!790056) b!1188158))

(assert (= (and b!1188158 res!790051) b!1188153))

(assert (= (and b!1188153 res!790063) b!1188151))

(assert (= (and b!1188151 res!790050) b!1188157))

(assert (= (and b!1188157 res!790055) b!1188146))

(assert (= (and b!1188146 res!790060) b!1188147))

(assert (= (and b!1188147 (not res!790049)) b!1188145))

(assert (= (and b!1188145 (not res!790054)) b!1188155))

(assert (= (and b!1188155 (not res!790052)) b!1188149))

(assert (= (and b!1188149 res!790059) b!1188154))

(assert (= (and b!1188154 (not res!790053)) b!1188148))

(assert (= (and b!1188149 c!117245) b!1188143))

(assert (= (and b!1188149 (not c!117245)) b!1188160))

(assert (= (and b!1188159 condMapEmpty!46796) mapIsEmpty!46796))

(assert (= (and b!1188159 (not condMapEmpty!46796)) mapNonEmpty!46796))

(get-info :version)

(assert (= (and mapNonEmpty!46796 ((_ is ValueCellFull!14280) mapValue!46796)) b!1188156))

(assert (= (and b!1188159 ((_ is ValueCellFull!14280) mapDefault!46796)) b!1188142))

(assert (= start!99906 b!1188159))

(declare-fun b_lambda!20611 () Bool)

(assert (=> (not b_lambda!20611) (not b!1188145)))

(declare-fun t!38655 () Bool)

(declare-fun tb!10269 () Bool)

(assert (=> (and start!99906 (= defaultEntry!1004 defaultEntry!1004) t!38655) tb!10269))

(declare-fun result!21097 () Bool)

(assert (=> tb!10269 (= result!21097 tp_is_empty!29979)))

(assert (=> b!1188145 t!38655))

(declare-fun b_and!41781 () Bool)

(assert (= b_and!41779 (and (=> t!38655 result!21097) b_and!41781)))

(declare-fun m!1096965 () Bool)

(assert (=> b!1188155 m!1096965))

(declare-fun m!1096967 () Bool)

(assert (=> b!1188155 m!1096967))

(declare-fun m!1096969 () Bool)

(assert (=> b!1188155 m!1096969))

(declare-fun m!1096971 () Bool)

(assert (=> b!1188155 m!1096971))

(declare-fun m!1096973 () Bool)

(assert (=> b!1188155 m!1096973))

(declare-fun m!1096975 () Bool)

(assert (=> b!1188155 m!1096975))

(assert (=> b!1188155 m!1096973))

(declare-fun m!1096977 () Bool)

(assert (=> b!1188152 m!1096977))

(assert (=> b!1188154 m!1096973))

(declare-fun m!1096979 () Bool)

(assert (=> b!1188147 m!1096979))

(declare-fun m!1096981 () Bool)

(assert (=> b!1188147 m!1096981))

(declare-fun m!1096983 () Bool)

(assert (=> b!1188149 m!1096983))

(assert (=> b!1188149 m!1096983))

(declare-fun m!1096985 () Bool)

(assert (=> b!1188149 m!1096985))

(declare-fun m!1096987 () Bool)

(assert (=> b!1188149 m!1096987))

(assert (=> b!1188149 m!1096973))

(declare-fun m!1096989 () Bool)

(assert (=> b!1188149 m!1096989))

(declare-fun m!1096991 () Bool)

(assert (=> b!1188149 m!1096991))

(declare-fun m!1096993 () Bool)

(assert (=> b!1188149 m!1096993))

(assert (=> b!1188149 m!1096973))

(declare-fun m!1096995 () Bool)

(assert (=> b!1188145 m!1096995))

(declare-fun m!1096997 () Bool)

(assert (=> b!1188145 m!1096997))

(declare-fun m!1096999 () Bool)

(assert (=> b!1188145 m!1096999))

(declare-fun m!1097001 () Bool)

(assert (=> b!1188145 m!1097001))

(declare-fun m!1097003 () Bool)

(assert (=> b!1188148 m!1097003))

(declare-fun m!1097005 () Bool)

(assert (=> mapNonEmpty!46796 m!1097005))

(declare-fun m!1097007 () Bool)

(assert (=> start!99906 m!1097007))

(declare-fun m!1097009 () Bool)

(assert (=> start!99906 m!1097009))

(declare-fun m!1097011 () Bool)

(assert (=> b!1188153 m!1097011))

(declare-fun m!1097013 () Bool)

(assert (=> b!1188143 m!1097013))

(declare-fun m!1097015 () Bool)

(assert (=> b!1188143 m!1097015))

(declare-fun m!1097017 () Bool)

(assert (=> b!1188143 m!1097017))

(declare-fun m!1097019 () Bool)

(assert (=> b!1188143 m!1097019))

(declare-fun m!1097021 () Bool)

(assert (=> b!1188143 m!1097021))

(declare-fun m!1097023 () Bool)

(assert (=> b!1188150 m!1097023))

(declare-fun m!1097025 () Bool)

(assert (=> b!1188157 m!1097025))

(declare-fun m!1097027 () Bool)

(assert (=> b!1188157 m!1097027))

(declare-fun m!1097029 () Bool)

(assert (=> b!1188141 m!1097029))

(declare-fun m!1097031 () Bool)

(assert (=> b!1188151 m!1097031))

(declare-fun m!1097033 () Bool)

(assert (=> b!1188146 m!1097033))

(check-sat (not b!1188147) (not b_lambda!20611) (not b!1188155) (not b!1188148) (not b!1188141) (not b!1188143) (not b!1188153) b_and!41781 (not b!1188146) tp_is_empty!29979 (not mapNonEmpty!46796) (not b!1188157) (not b!1188150) (not b_next!25449) (not b!1188149) (not b!1188152) (not start!99906) (not b!1188145))
(check-sat b_and!41781 (not b_next!25449))

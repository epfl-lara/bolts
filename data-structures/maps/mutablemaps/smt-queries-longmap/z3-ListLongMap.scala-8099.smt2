; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99498 () Bool)

(assert start!99498)

(declare-fun b_free!25041 () Bool)

(declare-fun b_next!25041 () Bool)

(assert (=> start!99498 (= b_free!25041 (not b_next!25041))))

(declare-fun tp!87838 () Bool)

(declare-fun b_and!40963 () Bool)

(assert (=> start!99498 (= tp!87838 b_and!40963)))

(declare-fun b!1175151 () Bool)

(declare-fun e!668022 () Bool)

(declare-fun e!668029 () Bool)

(declare-fun mapRes!46184 () Bool)

(assert (=> b!1175151 (= e!668022 (and e!668029 mapRes!46184))))

(declare-fun condMapEmpty!46184 () Bool)

(declare-datatypes ((V!44555 0))(
  ( (V!44556 (val!14842 Int)) )
))
(declare-datatypes ((ValueCell!14076 0))(
  ( (ValueCellFull!14076 (v!17481 V!44555)) (EmptyCell!14076) )
))
(declare-datatypes ((array!75918 0))(
  ( (array!75919 (arr!36605 (Array (_ BitVec 32) ValueCell!14076)) (size!37142 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75918)

(declare-fun mapDefault!46184 () ValueCell!14076)

(assert (=> b!1175151 (= condMapEmpty!46184 (= (arr!36605 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14076)) mapDefault!46184)))))

(declare-fun b!1175152 () Bool)

(declare-fun res!780534 () Bool)

(declare-fun e!668023 () Bool)

(assert (=> b!1175152 (=> (not res!780534) (not e!668023))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1175152 (= res!780534 (validMask!0 mask!1564))))

(declare-fun b!1175153 () Bool)

(declare-fun res!780527 () Bool)

(assert (=> b!1175153 (=> (not res!780527) (not e!668023))))

(declare-datatypes ((array!75920 0))(
  ( (array!75921 (arr!36606 (Array (_ BitVec 32) (_ BitVec 64))) (size!37143 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75920)

(declare-datatypes ((List!25851 0))(
  ( (Nil!25848) (Cons!25847 (h!27056 (_ BitVec 64)) (t!37891 List!25851)) )
))
(declare-fun arrayNoDuplicates!0 (array!75920 (_ BitVec 32) List!25851) Bool)

(assert (=> b!1175153 (= res!780527 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25848))))

(declare-fun b!1175154 () Bool)

(declare-datatypes ((Unit!38697 0))(
  ( (Unit!38698) )
))
(declare-fun e!668024 () Unit!38697)

(declare-fun Unit!38699 () Unit!38697)

(assert (=> b!1175154 (= e!668024 Unit!38699)))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!530076 () Unit!38697)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75920 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38697)

(assert (=> b!1175154 (= lt!530076 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!75920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1175154 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!530081 () Unit!38697)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75920 (_ BitVec 32) (_ BitVec 32)) Unit!38697)

(assert (=> b!1175154 (= lt!530081 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1175154 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25848)))

(declare-fun lt!530082 () Unit!38697)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75920 (_ BitVec 64) (_ BitVec 32) List!25851) Unit!38697)

(assert (=> b!1175154 (= lt!530082 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25848))))

(assert (=> b!1175154 false))

(declare-fun b!1175155 () Bool)

(declare-fun e!668018 () Bool)

(assert (=> b!1175155 (= e!668018 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1175156 () Bool)

(declare-fun res!780541 () Bool)

(assert (=> b!1175156 (=> (not res!780541) (not e!668023))))

(assert (=> b!1175156 (= res!780541 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37143 _keys!1208))))))

(declare-fun b!1175157 () Bool)

(declare-fun res!780536 () Bool)

(assert (=> b!1175157 (=> (not res!780536) (not e!668023))))

(assert (=> b!1175157 (= res!780536 (= (select (arr!36606 _keys!1208) i!673) k0!934))))

(declare-fun b!1175158 () Bool)

(declare-fun e!668027 () Bool)

(declare-fun e!668021 () Bool)

(assert (=> b!1175158 (= e!668027 e!668021)))

(declare-fun res!780529 () Bool)

(assert (=> b!1175158 (=> res!780529 e!668021)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1175158 (= res!780529 (not (validKeyInArray!0 (select (arr!36606 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19082 0))(
  ( (tuple2!19083 (_1!9551 (_ BitVec 64)) (_2!9551 V!44555)) )
))
(declare-datatypes ((List!25852 0))(
  ( (Nil!25849) (Cons!25848 (h!27057 tuple2!19082) (t!37892 List!25852)) )
))
(declare-datatypes ((ListLongMap!17063 0))(
  ( (ListLongMap!17064 (toList!8547 List!25852)) )
))
(declare-fun lt!530086 () ListLongMap!17063)

(declare-fun lt!530087 () ListLongMap!17063)

(assert (=> b!1175158 (= lt!530086 lt!530087)))

(declare-fun lt!530080 () ListLongMap!17063)

(declare-fun -!1555 (ListLongMap!17063 (_ BitVec 64)) ListLongMap!17063)

(assert (=> b!1175158 (= lt!530087 (-!1555 lt!530080 k0!934))))

(declare-fun zeroValue!944 () V!44555)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!530088 () array!75918)

(declare-fun minValue!944 () V!44555)

(declare-fun lt!530083 () array!75920)

(declare-fun getCurrentListMapNoExtraKeys!4978 (array!75920 array!75918 (_ BitVec 32) (_ BitVec 32) V!44555 V!44555 (_ BitVec 32) Int) ListLongMap!17063)

(assert (=> b!1175158 (= lt!530086 (getCurrentListMapNoExtraKeys!4978 lt!530083 lt!530088 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1175158 (= lt!530080 (getCurrentListMapNoExtraKeys!4978 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!530078 () Unit!38697)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!779 (array!75920 array!75918 (_ BitVec 32) (_ BitVec 32) V!44555 V!44555 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38697)

(assert (=> b!1175158 (= lt!530078 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!779 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!780539 () Bool)

(assert (=> start!99498 (=> (not res!780539) (not e!668023))))

(assert (=> start!99498 (= res!780539 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37143 _keys!1208))))))

(assert (=> start!99498 e!668023))

(declare-fun tp_is_empty!29571 () Bool)

(assert (=> start!99498 tp_is_empty!29571))

(declare-fun array_inv!27846 (array!75920) Bool)

(assert (=> start!99498 (array_inv!27846 _keys!1208)))

(assert (=> start!99498 true))

(assert (=> start!99498 tp!87838))

(declare-fun array_inv!27847 (array!75918) Bool)

(assert (=> start!99498 (and (array_inv!27847 _values!996) e!668022)))

(declare-fun mapIsEmpty!46184 () Bool)

(assert (=> mapIsEmpty!46184 mapRes!46184))

(declare-fun b!1175159 () Bool)

(declare-fun res!780530 () Bool)

(assert (=> b!1175159 (=> (not res!780530) (not e!668023))))

(assert (=> b!1175159 (= res!780530 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!46184 () Bool)

(declare-fun tp!87837 () Bool)

(declare-fun e!668028 () Bool)

(assert (=> mapNonEmpty!46184 (= mapRes!46184 (and tp!87837 e!668028))))

(declare-fun mapRest!46184 () (Array (_ BitVec 32) ValueCell!14076))

(declare-fun mapValue!46184 () ValueCell!14076)

(declare-fun mapKey!46184 () (_ BitVec 32))

(assert (=> mapNonEmpty!46184 (= (arr!36605 _values!996) (store mapRest!46184 mapKey!46184 mapValue!46184))))

(declare-fun b!1175160 () Bool)

(declare-fun e!668019 () Bool)

(assert (=> b!1175160 (= e!668023 e!668019)))

(declare-fun res!780538 () Bool)

(assert (=> b!1175160 (=> (not res!780538) (not e!668019))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75920 (_ BitVec 32)) Bool)

(assert (=> b!1175160 (= res!780538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!530083 mask!1564))))

(assert (=> b!1175160 (= lt!530083 (array!75921 (store (arr!36606 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37143 _keys!1208)))))

(declare-fun b!1175161 () Bool)

(assert (=> b!1175161 (= e!668029 tp_is_empty!29571)))

(declare-fun b!1175162 () Bool)

(declare-fun res!780535 () Bool)

(assert (=> b!1175162 (=> (not res!780535) (not e!668023))))

(assert (=> b!1175162 (= res!780535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1175163 () Bool)

(assert (=> b!1175163 (= e!668021 true)))

(assert (=> b!1175163 (not (= (select (arr!36606 _keys!1208) from!1455) k0!934))))

(declare-fun lt!530079 () Unit!38697)

(assert (=> b!1175163 (= lt!530079 e!668024)))

(declare-fun c!116633 () Bool)

(assert (=> b!1175163 (= c!116633 (= (select (arr!36606 _keys!1208) from!1455) k0!934))))

(declare-fun e!668025 () Bool)

(assert (=> b!1175163 e!668025))

(declare-fun res!780531 () Bool)

(assert (=> b!1175163 (=> (not res!780531) (not e!668025))))

(declare-fun lt!530075 () V!44555)

(declare-fun lt!530084 () ListLongMap!17063)

(declare-fun +!3775 (ListLongMap!17063 tuple2!19082) ListLongMap!17063)

(declare-fun get!18722 (ValueCell!14076 V!44555) V!44555)

(assert (=> b!1175163 (= res!780531 (= lt!530084 (+!3775 lt!530087 (tuple2!19083 (select (arr!36606 _keys!1208) from!1455) (get!18722 (select (arr!36605 _values!996) from!1455) lt!530075)))))))

(declare-fun b!1175164 () Bool)

(declare-fun res!780533 () Bool)

(assert (=> b!1175164 (=> (not res!780533) (not e!668023))))

(assert (=> b!1175164 (= res!780533 (and (= (size!37142 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37143 _keys!1208) (size!37142 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1175165 () Bool)

(declare-fun e!668026 () Bool)

(assert (=> b!1175165 (= e!668019 (not e!668026))))

(declare-fun res!780540 () Bool)

(assert (=> b!1175165 (=> res!780540 e!668026)))

(assert (=> b!1175165 (= res!780540 (bvsgt from!1455 i!673))))

(assert (=> b!1175165 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!530077 () Unit!38697)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75920 (_ BitVec 64) (_ BitVec 32)) Unit!38697)

(assert (=> b!1175165 (= lt!530077 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1175166 () Bool)

(assert (=> b!1175166 (= e!668026 e!668027)))

(declare-fun res!780537 () Bool)

(assert (=> b!1175166 (=> res!780537 e!668027)))

(assert (=> b!1175166 (= res!780537 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1175166 (= lt!530084 (getCurrentListMapNoExtraKeys!4978 lt!530083 lt!530088 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1175166 (= lt!530088 (array!75919 (store (arr!36605 _values!996) i!673 (ValueCellFull!14076 lt!530075)) (size!37142 _values!996)))))

(declare-fun dynLambda!2958 (Int (_ BitVec 64)) V!44555)

(assert (=> b!1175166 (= lt!530075 (dynLambda!2958 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!530085 () ListLongMap!17063)

(assert (=> b!1175166 (= lt!530085 (getCurrentListMapNoExtraKeys!4978 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1175167 () Bool)

(declare-fun Unit!38700 () Unit!38697)

(assert (=> b!1175167 (= e!668024 Unit!38700)))

(declare-fun b!1175168 () Bool)

(declare-fun res!780528 () Bool)

(assert (=> b!1175168 (=> (not res!780528) (not e!668019))))

(assert (=> b!1175168 (= res!780528 (arrayNoDuplicates!0 lt!530083 #b00000000000000000000000000000000 Nil!25848))))

(declare-fun b!1175169 () Bool)

(assert (=> b!1175169 (= e!668025 e!668018)))

(declare-fun res!780532 () Bool)

(assert (=> b!1175169 (=> res!780532 e!668018)))

(assert (=> b!1175169 (= res!780532 (not (= (select (arr!36606 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1175170 () Bool)

(assert (=> b!1175170 (= e!668028 tp_is_empty!29571)))

(assert (= (and start!99498 res!780539) b!1175152))

(assert (= (and b!1175152 res!780534) b!1175164))

(assert (= (and b!1175164 res!780533) b!1175162))

(assert (= (and b!1175162 res!780535) b!1175153))

(assert (= (and b!1175153 res!780527) b!1175156))

(assert (= (and b!1175156 res!780541) b!1175159))

(assert (= (and b!1175159 res!780530) b!1175157))

(assert (= (and b!1175157 res!780536) b!1175160))

(assert (= (and b!1175160 res!780538) b!1175168))

(assert (= (and b!1175168 res!780528) b!1175165))

(assert (= (and b!1175165 (not res!780540)) b!1175166))

(assert (= (and b!1175166 (not res!780537)) b!1175158))

(assert (= (and b!1175158 (not res!780529)) b!1175163))

(assert (= (and b!1175163 res!780531) b!1175169))

(assert (= (and b!1175169 (not res!780532)) b!1175155))

(assert (= (and b!1175163 c!116633) b!1175154))

(assert (= (and b!1175163 (not c!116633)) b!1175167))

(assert (= (and b!1175151 condMapEmpty!46184) mapIsEmpty!46184))

(assert (= (and b!1175151 (not condMapEmpty!46184)) mapNonEmpty!46184))

(get-info :version)

(assert (= (and mapNonEmpty!46184 ((_ is ValueCellFull!14076) mapValue!46184)) b!1175170))

(assert (= (and b!1175151 ((_ is ValueCellFull!14076) mapDefault!46184)) b!1175161))

(assert (= start!99498 b!1175151))

(declare-fun b_lambda!20203 () Bool)

(assert (=> (not b_lambda!20203) (not b!1175166)))

(declare-fun t!37890 () Bool)

(declare-fun tb!9861 () Bool)

(assert (=> (and start!99498 (= defaultEntry!1004 defaultEntry!1004) t!37890) tb!9861))

(declare-fun result!20281 () Bool)

(assert (=> tb!9861 (= result!20281 tp_is_empty!29571)))

(assert (=> b!1175166 t!37890))

(declare-fun b_and!40965 () Bool)

(assert (= b_and!40963 (and (=> t!37890 result!20281) b_and!40965)))

(declare-fun m!1083105 () Bool)

(assert (=> b!1175169 m!1083105))

(declare-fun m!1083107 () Bool)

(assert (=> b!1175153 m!1083107))

(declare-fun m!1083109 () Bool)

(assert (=> start!99498 m!1083109))

(declare-fun m!1083111 () Bool)

(assert (=> start!99498 m!1083111))

(declare-fun m!1083113 () Bool)

(assert (=> b!1175168 m!1083113))

(declare-fun m!1083115 () Bool)

(assert (=> b!1175160 m!1083115))

(declare-fun m!1083117 () Bool)

(assert (=> b!1175160 m!1083117))

(declare-fun m!1083119 () Bool)

(assert (=> b!1175154 m!1083119))

(declare-fun m!1083121 () Bool)

(assert (=> b!1175154 m!1083121))

(declare-fun m!1083123 () Bool)

(assert (=> b!1175154 m!1083123))

(declare-fun m!1083125 () Bool)

(assert (=> b!1175154 m!1083125))

(declare-fun m!1083127 () Bool)

(assert (=> b!1175154 m!1083127))

(declare-fun m!1083129 () Bool)

(assert (=> b!1175157 m!1083129))

(declare-fun m!1083131 () Bool)

(assert (=> b!1175155 m!1083131))

(declare-fun m!1083133 () Bool)

(assert (=> b!1175166 m!1083133))

(declare-fun m!1083135 () Bool)

(assert (=> b!1175166 m!1083135))

(declare-fun m!1083137 () Bool)

(assert (=> b!1175166 m!1083137))

(declare-fun m!1083139 () Bool)

(assert (=> b!1175166 m!1083139))

(declare-fun m!1083141 () Bool)

(assert (=> mapNonEmpty!46184 m!1083141))

(declare-fun m!1083143 () Bool)

(assert (=> b!1175162 m!1083143))

(declare-fun m!1083145 () Bool)

(assert (=> b!1175158 m!1083145))

(declare-fun m!1083147 () Bool)

(assert (=> b!1175158 m!1083147))

(declare-fun m!1083149 () Bool)

(assert (=> b!1175158 m!1083149))

(declare-fun m!1083151 () Bool)

(assert (=> b!1175158 m!1083151))

(assert (=> b!1175158 m!1083105))

(declare-fun m!1083153 () Bool)

(assert (=> b!1175158 m!1083153))

(assert (=> b!1175158 m!1083105))

(assert (=> b!1175163 m!1083105))

(declare-fun m!1083155 () Bool)

(assert (=> b!1175163 m!1083155))

(assert (=> b!1175163 m!1083155))

(declare-fun m!1083157 () Bool)

(assert (=> b!1175163 m!1083157))

(declare-fun m!1083159 () Bool)

(assert (=> b!1175163 m!1083159))

(declare-fun m!1083161 () Bool)

(assert (=> b!1175165 m!1083161))

(declare-fun m!1083163 () Bool)

(assert (=> b!1175165 m!1083163))

(declare-fun m!1083165 () Bool)

(assert (=> b!1175152 m!1083165))

(declare-fun m!1083167 () Bool)

(assert (=> b!1175159 m!1083167))

(check-sat (not b!1175153) (not b!1175154) (not b_next!25041) (not start!99498) (not b!1175160) (not b!1175158) (not b!1175162) (not mapNonEmpty!46184) b_and!40965 (not b!1175165) (not b!1175168) (not b!1175163) (not b!1175155) tp_is_empty!29571 (not b!1175159) (not b!1175152) (not b_lambda!20203) (not b!1175166))
(check-sat b_and!40965 (not b_next!25041))

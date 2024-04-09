; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101670 () Bool)

(assert start!101670)

(declare-fun b_free!26355 () Bool)

(declare-fun b_next!26355 () Bool)

(assert (=> start!101670 (= b_free!26355 (not b_next!26355))))

(declare-fun tp!92109 () Bool)

(declare-fun b_and!43963 () Bool)

(assert (=> start!101670 (= tp!92109 b_and!43963)))

(declare-datatypes ((array!78876 0))(
  ( (array!78877 (arr!38062 (Array (_ BitVec 32) (_ BitVec 64))) (size!38599 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78876)

(declare-fun e!694116 () Bool)

(declare-fun b!1222160 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78876 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1222160 (= e!694116 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1222161 () Bool)

(declare-fun e!694119 () Bool)

(declare-fun e!694124 () Bool)

(assert (=> b!1222161 (= e!694119 (not e!694124))))

(declare-fun res!812095 () Bool)

(assert (=> b!1222161 (=> res!812095 e!694124)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1222161 (= res!812095 (bvsgt from!1455 i!673))))

(assert (=> b!1222161 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40394 0))(
  ( (Unit!40395) )
))
(declare-fun lt!555972 () Unit!40394)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78876 (_ BitVec 64) (_ BitVec 32)) Unit!40394)

(assert (=> b!1222161 (= lt!555972 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1222162 () Bool)

(declare-fun res!812093 () Bool)

(declare-fun e!694126 () Bool)

(assert (=> b!1222162 (=> (not res!812093) (not e!694126))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78876 (_ BitVec 32)) Bool)

(assert (=> b!1222162 (= res!812093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1222163 () Bool)

(assert (=> b!1222163 (= e!694126 e!694119)))

(declare-fun res!812094 () Bool)

(assert (=> b!1222163 (=> (not res!812094) (not e!694119))))

(declare-fun lt!555982 () array!78876)

(assert (=> b!1222163 (= res!812094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!555982 mask!1564))))

(assert (=> b!1222163 (= lt!555982 (array!78877 (store (arr!38062 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38599 _keys!1208)))))

(declare-fun b!1222164 () Bool)

(declare-fun e!694118 () Bool)

(declare-fun e!694127 () Bool)

(assert (=> b!1222164 (= e!694118 e!694127)))

(declare-fun res!812099 () Bool)

(assert (=> b!1222164 (=> res!812099 e!694127)))

(assert (=> b!1222164 (= res!812099 (not (= (select (arr!38062 _keys!1208) from!1455) k0!934)))))

(declare-fun e!694125 () Bool)

(assert (=> b!1222164 e!694125))

(declare-fun res!812087 () Bool)

(assert (=> b!1222164 (=> (not res!812087) (not e!694125))))

(declare-datatypes ((V!46539 0))(
  ( (V!46540 (val!15586 Int)) )
))
(declare-fun lt!555980 () V!46539)

(declare-datatypes ((ValueCell!14820 0))(
  ( (ValueCellFull!14820 (v!18248 V!46539)) (EmptyCell!14820) )
))
(declare-datatypes ((array!78878 0))(
  ( (array!78879 (arr!38063 (Array (_ BitVec 32) ValueCell!14820)) (size!38600 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78878)

(declare-datatypes ((tuple2!20212 0))(
  ( (tuple2!20213 (_1!10116 (_ BitVec 64)) (_2!10116 V!46539)) )
))
(declare-datatypes ((List!27026 0))(
  ( (Nil!27023) (Cons!27022 (h!28231 tuple2!20212) (t!40368 List!27026)) )
))
(declare-datatypes ((ListLongMap!18193 0))(
  ( (ListLongMap!18194 (toList!9112 List!27026)) )
))
(declare-fun lt!555973 () ListLongMap!18193)

(declare-fun lt!555975 () ListLongMap!18193)

(declare-fun +!4079 (ListLongMap!18193 tuple2!20212) ListLongMap!18193)

(declare-fun get!19469 (ValueCell!14820 V!46539) V!46539)

(assert (=> b!1222164 (= res!812087 (= lt!555973 (+!4079 lt!555975 (tuple2!20213 (select (arr!38062 _keys!1208) from!1455) (get!19469 (select (arr!38063 _values!996) from!1455) lt!555980)))))))

(declare-fun b!1222165 () Bool)

(declare-fun res!812088 () Bool)

(assert (=> b!1222165 (=> (not res!812088) (not e!694126))))

(assert (=> b!1222165 (= res!812088 (= (select (arr!38062 _keys!1208) i!673) k0!934))))

(declare-fun b!1222166 () Bool)

(declare-fun e!694117 () Bool)

(assert (=> b!1222166 (= e!694117 e!694118)))

(declare-fun res!812096 () Bool)

(assert (=> b!1222166 (=> res!812096 e!694118)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1222166 (= res!812096 (not (validKeyInArray!0 (select (arr!38062 _keys!1208) from!1455))))))

(declare-fun lt!555984 () ListLongMap!18193)

(assert (=> b!1222166 (= lt!555984 lt!555975)))

(declare-fun lt!555974 () ListLongMap!18193)

(declare-fun -!1955 (ListLongMap!18193 (_ BitVec 64)) ListLongMap!18193)

(assert (=> b!1222166 (= lt!555975 (-!1955 lt!555974 k0!934))))

(declare-fun zeroValue!944 () V!46539)

(declare-fun lt!555981 () array!78878)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46539)

(declare-fun getCurrentListMapNoExtraKeys!5510 (array!78876 array!78878 (_ BitVec 32) (_ BitVec 32) V!46539 V!46539 (_ BitVec 32) Int) ListLongMap!18193)

(assert (=> b!1222166 (= lt!555984 (getCurrentListMapNoExtraKeys!5510 lt!555982 lt!555981 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1222166 (= lt!555974 (getCurrentListMapNoExtraKeys!5510 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!555983 () Unit!40394)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1157 (array!78876 array!78878 (_ BitVec 32) (_ BitVec 32) V!46539 V!46539 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40394)

(assert (=> b!1222166 (= lt!555983 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1157 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!48484 () Bool)

(declare-fun mapRes!48484 () Bool)

(assert (=> mapIsEmpty!48484 mapRes!48484))

(declare-fun b!1222167 () Bool)

(declare-fun res!812086 () Bool)

(assert (=> b!1222167 (=> (not res!812086) (not e!694119))))

(declare-datatypes ((List!27027 0))(
  ( (Nil!27024) (Cons!27023 (h!28232 (_ BitVec 64)) (t!40369 List!27027)) )
))
(declare-fun arrayNoDuplicates!0 (array!78876 (_ BitVec 32) List!27027) Bool)

(assert (=> b!1222167 (= res!812086 (arrayNoDuplicates!0 lt!555982 #b00000000000000000000000000000000 Nil!27024))))

(declare-fun b!1222168 () Bool)

(declare-fun e!694121 () Bool)

(declare-fun tp_is_empty!31059 () Bool)

(assert (=> b!1222168 (= e!694121 tp_is_empty!31059)))

(declare-fun res!812089 () Bool)

(assert (=> start!101670 (=> (not res!812089) (not e!694126))))

(assert (=> start!101670 (= res!812089 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38599 _keys!1208))))))

(assert (=> start!101670 e!694126))

(assert (=> start!101670 tp_is_empty!31059))

(declare-fun array_inv!28874 (array!78876) Bool)

(assert (=> start!101670 (array_inv!28874 _keys!1208)))

(assert (=> start!101670 true))

(assert (=> start!101670 tp!92109))

(declare-fun e!694123 () Bool)

(declare-fun array_inv!28875 (array!78878) Bool)

(assert (=> start!101670 (and (array_inv!28875 _values!996) e!694123)))

(declare-fun b!1222169 () Bool)

(declare-fun res!812091 () Bool)

(assert (=> b!1222169 (=> (not res!812091) (not e!694126))))

(assert (=> b!1222169 (= res!812091 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27024))))

(declare-fun b!1222170 () Bool)

(assert (=> b!1222170 (= e!694125 e!694116)))

(declare-fun res!812101 () Bool)

(assert (=> b!1222170 (=> res!812101 e!694116)))

(assert (=> b!1222170 (= res!812101 (not (= (select (arr!38062 _keys!1208) from!1455) k0!934)))))

(declare-fun mapNonEmpty!48484 () Bool)

(declare-fun tp!92108 () Bool)

(assert (=> mapNonEmpty!48484 (= mapRes!48484 (and tp!92108 e!694121))))

(declare-fun mapKey!48484 () (_ BitVec 32))

(declare-fun mapRest!48484 () (Array (_ BitVec 32) ValueCell!14820))

(declare-fun mapValue!48484 () ValueCell!14820)

(assert (=> mapNonEmpty!48484 (= (arr!38063 _values!996) (store mapRest!48484 mapKey!48484 mapValue!48484))))

(declare-fun b!1222171 () Bool)

(declare-fun res!812090 () Bool)

(assert (=> b!1222171 (=> (not res!812090) (not e!694126))))

(assert (=> b!1222171 (= res!812090 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38599 _keys!1208))))))

(declare-fun b!1222172 () Bool)

(declare-fun res!812100 () Bool)

(assert (=> b!1222172 (=> (not res!812100) (not e!694126))))

(assert (=> b!1222172 (= res!812100 (validKeyInArray!0 k0!934))))

(declare-fun b!1222173 () Bool)

(assert (=> b!1222173 (= e!694124 e!694117)))

(declare-fun res!812092 () Bool)

(assert (=> b!1222173 (=> res!812092 e!694117)))

(assert (=> b!1222173 (= res!812092 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1222173 (= lt!555973 (getCurrentListMapNoExtraKeys!5510 lt!555982 lt!555981 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1222173 (= lt!555981 (array!78879 (store (arr!38063 _values!996) i!673 (ValueCellFull!14820 lt!555980)) (size!38600 _values!996)))))

(declare-fun dynLambda!3408 (Int (_ BitVec 64)) V!46539)

(assert (=> b!1222173 (= lt!555980 (dynLambda!3408 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!555979 () ListLongMap!18193)

(assert (=> b!1222173 (= lt!555979 (getCurrentListMapNoExtraKeys!5510 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1222174 () Bool)

(declare-fun res!812098 () Bool)

(assert (=> b!1222174 (=> (not res!812098) (not e!694126))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1222174 (= res!812098 (validMask!0 mask!1564))))

(declare-fun b!1222175 () Bool)

(assert (=> b!1222175 (= e!694127 true)))

(assert (=> b!1222175 false))

(declare-fun lt!555976 () Unit!40394)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78876 (_ BitVec 64) (_ BitVec 32) List!27027) Unit!40394)

(assert (=> b!1222175 (= lt!555976 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!27024))))

(assert (=> b!1222175 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27024)))

(declare-fun lt!555977 () Unit!40394)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78876 (_ BitVec 32) (_ BitVec 32)) Unit!40394)

(assert (=> b!1222175 (= lt!555977 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1222175 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555978 () Unit!40394)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78876 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40394)

(assert (=> b!1222175 (= lt!555978 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1222176 () Bool)

(declare-fun res!812097 () Bool)

(assert (=> b!1222176 (=> (not res!812097) (not e!694126))))

(assert (=> b!1222176 (= res!812097 (and (= (size!38600 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38599 _keys!1208) (size!38600 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1222177 () Bool)

(declare-fun e!694122 () Bool)

(assert (=> b!1222177 (= e!694123 (and e!694122 mapRes!48484))))

(declare-fun condMapEmpty!48484 () Bool)

(declare-fun mapDefault!48484 () ValueCell!14820)

(assert (=> b!1222177 (= condMapEmpty!48484 (= (arr!38063 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14820)) mapDefault!48484)))))

(declare-fun b!1222178 () Bool)

(assert (=> b!1222178 (= e!694122 tp_is_empty!31059)))

(assert (= (and start!101670 res!812089) b!1222174))

(assert (= (and b!1222174 res!812098) b!1222176))

(assert (= (and b!1222176 res!812097) b!1222162))

(assert (= (and b!1222162 res!812093) b!1222169))

(assert (= (and b!1222169 res!812091) b!1222171))

(assert (= (and b!1222171 res!812090) b!1222172))

(assert (= (and b!1222172 res!812100) b!1222165))

(assert (= (and b!1222165 res!812088) b!1222163))

(assert (= (and b!1222163 res!812094) b!1222167))

(assert (= (and b!1222167 res!812086) b!1222161))

(assert (= (and b!1222161 (not res!812095)) b!1222173))

(assert (= (and b!1222173 (not res!812092)) b!1222166))

(assert (= (and b!1222166 (not res!812096)) b!1222164))

(assert (= (and b!1222164 res!812087) b!1222170))

(assert (= (and b!1222170 (not res!812101)) b!1222160))

(assert (= (and b!1222164 (not res!812099)) b!1222175))

(assert (= (and b!1222177 condMapEmpty!48484) mapIsEmpty!48484))

(assert (= (and b!1222177 (not condMapEmpty!48484)) mapNonEmpty!48484))

(get-info :version)

(assert (= (and mapNonEmpty!48484 ((_ is ValueCellFull!14820) mapValue!48484)) b!1222168))

(assert (= (and b!1222177 ((_ is ValueCellFull!14820) mapDefault!48484)) b!1222178))

(assert (= start!101670 b!1222177))

(declare-fun b_lambda!22307 () Bool)

(assert (=> (not b_lambda!22307) (not b!1222173)))

(declare-fun t!40367 () Bool)

(declare-fun tb!11163 () Bool)

(assert (=> (and start!101670 (= defaultEntry!1004 defaultEntry!1004) t!40367) tb!11163))

(declare-fun result!22929 () Bool)

(assert (=> tb!11163 (= result!22929 tp_is_empty!31059)))

(assert (=> b!1222173 t!40367))

(declare-fun b_and!43965 () Bool)

(assert (= b_and!43963 (and (=> t!40367 result!22929) b_and!43965)))

(declare-fun m!1127123 () Bool)

(assert (=> b!1222175 m!1127123))

(declare-fun m!1127125 () Bool)

(assert (=> b!1222175 m!1127125))

(declare-fun m!1127127 () Bool)

(assert (=> b!1222175 m!1127127))

(declare-fun m!1127129 () Bool)

(assert (=> b!1222175 m!1127129))

(declare-fun m!1127131 () Bool)

(assert (=> b!1222175 m!1127131))

(declare-fun m!1127133 () Bool)

(assert (=> b!1222162 m!1127133))

(declare-fun m!1127135 () Bool)

(assert (=> b!1222174 m!1127135))

(declare-fun m!1127137 () Bool)

(assert (=> b!1222173 m!1127137))

(declare-fun m!1127139 () Bool)

(assert (=> b!1222173 m!1127139))

(declare-fun m!1127141 () Bool)

(assert (=> b!1222173 m!1127141))

(declare-fun m!1127143 () Bool)

(assert (=> b!1222173 m!1127143))

(declare-fun m!1127145 () Bool)

(assert (=> b!1222165 m!1127145))

(declare-fun m!1127147 () Bool)

(assert (=> b!1222166 m!1127147))

(declare-fun m!1127149 () Bool)

(assert (=> b!1222166 m!1127149))

(declare-fun m!1127151 () Bool)

(assert (=> b!1222166 m!1127151))

(declare-fun m!1127153 () Bool)

(assert (=> b!1222166 m!1127153))

(declare-fun m!1127155 () Bool)

(assert (=> b!1222166 m!1127155))

(declare-fun m!1127157 () Bool)

(assert (=> b!1222166 m!1127157))

(assert (=> b!1222166 m!1127155))

(declare-fun m!1127159 () Bool)

(assert (=> start!101670 m!1127159))

(declare-fun m!1127161 () Bool)

(assert (=> start!101670 m!1127161))

(assert (=> b!1222164 m!1127155))

(declare-fun m!1127163 () Bool)

(assert (=> b!1222164 m!1127163))

(assert (=> b!1222164 m!1127163))

(declare-fun m!1127165 () Bool)

(assert (=> b!1222164 m!1127165))

(declare-fun m!1127167 () Bool)

(assert (=> b!1222164 m!1127167))

(declare-fun m!1127169 () Bool)

(assert (=> b!1222163 m!1127169))

(declare-fun m!1127171 () Bool)

(assert (=> b!1222163 m!1127171))

(declare-fun m!1127173 () Bool)

(assert (=> b!1222167 m!1127173))

(declare-fun m!1127175 () Bool)

(assert (=> b!1222160 m!1127175))

(declare-fun m!1127177 () Bool)

(assert (=> b!1222161 m!1127177))

(declare-fun m!1127179 () Bool)

(assert (=> b!1222161 m!1127179))

(declare-fun m!1127181 () Bool)

(assert (=> b!1222172 m!1127181))

(declare-fun m!1127183 () Bool)

(assert (=> mapNonEmpty!48484 m!1127183))

(declare-fun m!1127185 () Bool)

(assert (=> b!1222169 m!1127185))

(assert (=> b!1222170 m!1127155))

(check-sat (not b!1222163) (not b!1222167) (not b!1222175) (not b!1222161) (not b!1222174) (not b!1222162) (not b!1222166) (not b!1222160) b_and!43965 (not b!1222169) (not b_next!26355) (not b!1222164) (not start!101670) (not b!1222173) tp_is_empty!31059 (not mapNonEmpty!48484) (not b_lambda!22307) (not b!1222172))
(check-sat b_and!43965 (not b_next!26355))

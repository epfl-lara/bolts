; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99714 () Bool)

(assert start!99714)

(declare-fun b_free!25257 () Bool)

(declare-fun b_next!25257 () Bool)

(assert (=> start!99714 (= b_free!25257 (not b_next!25257))))

(declare-fun tp!88486 () Bool)

(declare-fun b_and!41395 () Bool)

(assert (=> start!99714 (= tp!88486 b_and!41395)))

(declare-fun b!1182189 () Bool)

(declare-fun res!785737 () Bool)

(declare-fun e!672161 () Bool)

(assert (=> b!1182189 (=> (not res!785737) (not e!672161))))

(declare-datatypes ((array!76342 0))(
  ( (array!76343 (arr!36817 (Array (_ BitVec 32) (_ BitVec 64))) (size!37354 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76342)

(declare-datatypes ((List!26038 0))(
  ( (Nil!26035) (Cons!26034 (h!27243 (_ BitVec 64)) (t!38294 List!26038)) )
))
(declare-fun arrayNoDuplicates!0 (array!76342 (_ BitVec 32) List!26038) Bool)

(assert (=> b!1182189 (= res!785737 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26035))))

(declare-fun b!1182190 () Bool)

(declare-datatypes ((Unit!39032 0))(
  ( (Unit!39033) )
))
(declare-fun e!672159 () Unit!39032)

(declare-fun Unit!39034 () Unit!39032)

(assert (=> b!1182190 (= e!672159 Unit!39034)))

(declare-fun lt!535033 () Unit!39032)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76342 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39032)

(assert (=> b!1182190 (= lt!535033 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1182190 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!535025 () Unit!39032)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76342 (_ BitVec 32) (_ BitVec 32)) Unit!39032)

(assert (=> b!1182190 (= lt!535025 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1182190 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26035)))

(declare-fun lt!535036 () Unit!39032)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76342 (_ BitVec 64) (_ BitVec 32) List!26038) Unit!39032)

(assert (=> b!1182190 (= lt!535036 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26035))))

(assert (=> b!1182190 false))

(declare-fun b!1182191 () Bool)

(declare-fun e!672165 () Bool)

(declare-fun e!672168 () Bool)

(declare-fun mapRes!46508 () Bool)

(assert (=> b!1182191 (= e!672165 (and e!672168 mapRes!46508))))

(declare-fun condMapEmpty!46508 () Bool)

(declare-datatypes ((V!44843 0))(
  ( (V!44844 (val!14950 Int)) )
))
(declare-datatypes ((ValueCell!14184 0))(
  ( (ValueCellFull!14184 (v!17589 V!44843)) (EmptyCell!14184) )
))
(declare-datatypes ((array!76344 0))(
  ( (array!76345 (arr!36818 (Array (_ BitVec 32) ValueCell!14184)) (size!37355 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76344)

(declare-fun mapDefault!46508 () ValueCell!14184)

(assert (=> b!1182191 (= condMapEmpty!46508 (= (arr!36818 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14184)) mapDefault!46508)))))

(declare-fun b!1182192 () Bool)

(declare-fun res!785740 () Bool)

(assert (=> b!1182192 (=> (not res!785740) (not e!672161))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76342 (_ BitVec 32)) Bool)

(assert (=> b!1182192 (= res!785740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1182193 () Bool)

(declare-fun e!672167 () Bool)

(declare-fun e!672158 () Bool)

(assert (=> b!1182193 (= e!672167 e!672158)))

(declare-fun res!785731 () Bool)

(assert (=> b!1182193 (=> res!785731 e!672158)))

(assert (=> b!1182193 (= res!785731 (not (= (select (arr!36817 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1182194 () Bool)

(declare-fun e!672160 () Bool)

(assert (=> b!1182194 (= e!672160 true)))

(declare-datatypes ((tuple2!19276 0))(
  ( (tuple2!19277 (_1!9648 (_ BitVec 64)) (_2!9648 V!44843)) )
))
(declare-datatypes ((List!26039 0))(
  ( (Nil!26036) (Cons!26035 (h!27244 tuple2!19276) (t!38295 List!26039)) )
))
(declare-datatypes ((ListLongMap!17257 0))(
  ( (ListLongMap!17258 (toList!8644 List!26039)) )
))
(declare-fun lt!535034 () ListLongMap!17257)

(declare-fun lt!535031 () ListLongMap!17257)

(declare-fun -!1633 (ListLongMap!17257 (_ BitVec 64)) ListLongMap!17257)

(assert (=> b!1182194 (= (-!1633 lt!535034 k0!934) lt!535031)))

(declare-fun lt!535023 () ListLongMap!17257)

(declare-fun lt!535028 () Unit!39032)

(declare-fun lt!535038 () V!44843)

(declare-fun addRemoveCommutativeForDiffKeys!152 (ListLongMap!17257 (_ BitVec 64) V!44843 (_ BitVec 64)) Unit!39032)

(assert (=> b!1182194 (= lt!535028 (addRemoveCommutativeForDiffKeys!152 lt!535023 (select (arr!36817 _keys!1208) from!1455) lt!535038 k0!934))))

(declare-fun lt!535026 () ListLongMap!17257)

(declare-fun lt!535039 () ListLongMap!17257)

(declare-fun lt!535035 () ListLongMap!17257)

(assert (=> b!1182194 (and (= lt!535026 lt!535034) (= lt!535039 lt!535035))))

(declare-fun lt!535030 () tuple2!19276)

(declare-fun +!3862 (ListLongMap!17257 tuple2!19276) ListLongMap!17257)

(assert (=> b!1182194 (= lt!535034 (+!3862 lt!535023 lt!535030))))

(assert (=> b!1182194 (not (= (select (arr!36817 _keys!1208) from!1455) k0!934))))

(declare-fun lt!535037 () Unit!39032)

(assert (=> b!1182194 (= lt!535037 e!672159)))

(declare-fun c!116957 () Bool)

(assert (=> b!1182194 (= c!116957 (= (select (arr!36817 _keys!1208) from!1455) k0!934))))

(assert (=> b!1182194 e!672167))

(declare-fun res!785733 () Bool)

(assert (=> b!1182194 (=> (not res!785733) (not e!672167))))

(declare-fun lt!535032 () ListLongMap!17257)

(assert (=> b!1182194 (= res!785733 (= lt!535032 lt!535031))))

(assert (=> b!1182194 (= lt!535031 (+!3862 lt!535039 lt!535030))))

(assert (=> b!1182194 (= lt!535030 (tuple2!19277 (select (arr!36817 _keys!1208) from!1455) lt!535038))))

(declare-fun lt!535027 () V!44843)

(declare-fun get!18870 (ValueCell!14184 V!44843) V!44843)

(assert (=> b!1182194 (= lt!535038 (get!18870 (select (arr!36818 _values!996) from!1455) lt!535027))))

(declare-fun b!1182195 () Bool)

(declare-fun e!672163 () Bool)

(declare-fun e!672169 () Bool)

(assert (=> b!1182195 (= e!672163 e!672169)))

(declare-fun res!785739 () Bool)

(assert (=> b!1182195 (=> res!785739 e!672169)))

(assert (=> b!1182195 (= res!785739 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun minValue!944 () V!44843)

(declare-fun zeroValue!944 () V!44843)

(declare-fun lt!535040 () array!76344)

(declare-fun lt!535029 () array!76342)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5067 (array!76342 array!76344 (_ BitVec 32) (_ BitVec 32) V!44843 V!44843 (_ BitVec 32) Int) ListLongMap!17257)

(assert (=> b!1182195 (= lt!535032 (getCurrentListMapNoExtraKeys!5067 lt!535029 lt!535040 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1182195 (= lt!535040 (array!76345 (store (arr!36818 _values!996) i!673 (ValueCellFull!14184 lt!535027)) (size!37355 _values!996)))))

(declare-fun dynLambda!3035 (Int (_ BitVec 64)) V!44843)

(assert (=> b!1182195 (= lt!535027 (dynLambda!3035 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1182195 (= lt!535026 (getCurrentListMapNoExtraKeys!5067 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1182196 () Bool)

(declare-fun res!785742 () Bool)

(assert (=> b!1182196 (=> (not res!785742) (not e!672161))))

(assert (=> b!1182196 (= res!785742 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37354 _keys!1208))))))

(declare-fun b!1182197 () Bool)

(declare-fun res!785730 () Bool)

(declare-fun e!672166 () Bool)

(assert (=> b!1182197 (=> (not res!785730) (not e!672166))))

(assert (=> b!1182197 (= res!785730 (arrayNoDuplicates!0 lt!535029 #b00000000000000000000000000000000 Nil!26035))))

(declare-fun b!1182198 () Bool)

(assert (=> b!1182198 (= e!672161 e!672166)))

(declare-fun res!785734 () Bool)

(assert (=> b!1182198 (=> (not res!785734) (not e!672166))))

(assert (=> b!1182198 (= res!785734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!535029 mask!1564))))

(assert (=> b!1182198 (= lt!535029 (array!76343 (store (arr!36817 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37354 _keys!1208)))))

(declare-fun mapIsEmpty!46508 () Bool)

(assert (=> mapIsEmpty!46508 mapRes!46508))

(declare-fun b!1182200 () Bool)

(declare-fun res!785732 () Bool)

(assert (=> b!1182200 (=> (not res!785732) (not e!672161))))

(assert (=> b!1182200 (= res!785732 (= (select (arr!36817 _keys!1208) i!673) k0!934))))

(declare-fun b!1182201 () Bool)

(assert (=> b!1182201 (= e!672158 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!46508 () Bool)

(declare-fun tp!88485 () Bool)

(declare-fun e!672164 () Bool)

(assert (=> mapNonEmpty!46508 (= mapRes!46508 (and tp!88485 e!672164))))

(declare-fun mapRest!46508 () (Array (_ BitVec 32) ValueCell!14184))

(declare-fun mapKey!46508 () (_ BitVec 32))

(declare-fun mapValue!46508 () ValueCell!14184)

(assert (=> mapNonEmpty!46508 (= (arr!36818 _values!996) (store mapRest!46508 mapKey!46508 mapValue!46508))))

(declare-fun b!1182202 () Bool)

(declare-fun res!785735 () Bool)

(assert (=> b!1182202 (=> (not res!785735) (not e!672161))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1182202 (= res!785735 (validKeyInArray!0 k0!934))))

(declare-fun b!1182203 () Bool)

(declare-fun res!785738 () Bool)

(assert (=> b!1182203 (=> (not res!785738) (not e!672161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1182203 (= res!785738 (validMask!0 mask!1564))))

(declare-fun b!1182204 () Bool)

(assert (=> b!1182204 (= e!672169 e!672160)))

(declare-fun res!785741 () Bool)

(assert (=> b!1182204 (=> res!785741 e!672160)))

(assert (=> b!1182204 (= res!785741 (not (validKeyInArray!0 (select (arr!36817 _keys!1208) from!1455))))))

(assert (=> b!1182204 (= lt!535035 lt!535039)))

(assert (=> b!1182204 (= lt!535039 (-!1633 lt!535023 k0!934))))

(assert (=> b!1182204 (= lt!535035 (getCurrentListMapNoExtraKeys!5067 lt!535029 lt!535040 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1182204 (= lt!535023 (getCurrentListMapNoExtraKeys!5067 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!535024 () Unit!39032)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!855 (array!76342 array!76344 (_ BitVec 32) (_ BitVec 32) V!44843 V!44843 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39032)

(assert (=> b!1182204 (= lt!535024 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!855 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1182205 () Bool)

(declare-fun tp_is_empty!29787 () Bool)

(assert (=> b!1182205 (= e!672164 tp_is_empty!29787)))

(declare-fun b!1182206 () Bool)

(assert (=> b!1182206 (= e!672166 (not e!672163))))

(declare-fun res!785743 () Bool)

(assert (=> b!1182206 (=> res!785743 e!672163)))

(assert (=> b!1182206 (= res!785743 (bvsgt from!1455 i!673))))

(assert (=> b!1182206 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!535041 () Unit!39032)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76342 (_ BitVec 64) (_ BitVec 32)) Unit!39032)

(assert (=> b!1182206 (= lt!535041 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1182207 () Bool)

(declare-fun res!785729 () Bool)

(assert (=> b!1182207 (=> (not res!785729) (not e!672161))))

(assert (=> b!1182207 (= res!785729 (and (= (size!37355 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37354 _keys!1208) (size!37355 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1182208 () Bool)

(declare-fun Unit!39035 () Unit!39032)

(assert (=> b!1182208 (= e!672159 Unit!39035)))

(declare-fun res!785736 () Bool)

(assert (=> start!99714 (=> (not res!785736) (not e!672161))))

(assert (=> start!99714 (= res!785736 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37354 _keys!1208))))))

(assert (=> start!99714 e!672161))

(assert (=> start!99714 tp_is_empty!29787))

(declare-fun array_inv!27988 (array!76342) Bool)

(assert (=> start!99714 (array_inv!27988 _keys!1208)))

(assert (=> start!99714 true))

(assert (=> start!99714 tp!88486))

(declare-fun array_inv!27989 (array!76344) Bool)

(assert (=> start!99714 (and (array_inv!27989 _values!996) e!672165)))

(declare-fun b!1182199 () Bool)

(assert (=> b!1182199 (= e!672168 tp_is_empty!29787)))

(assert (= (and start!99714 res!785736) b!1182203))

(assert (= (and b!1182203 res!785738) b!1182207))

(assert (= (and b!1182207 res!785729) b!1182192))

(assert (= (and b!1182192 res!785740) b!1182189))

(assert (= (and b!1182189 res!785737) b!1182196))

(assert (= (and b!1182196 res!785742) b!1182202))

(assert (= (and b!1182202 res!785735) b!1182200))

(assert (= (and b!1182200 res!785732) b!1182198))

(assert (= (and b!1182198 res!785734) b!1182197))

(assert (= (and b!1182197 res!785730) b!1182206))

(assert (= (and b!1182206 (not res!785743)) b!1182195))

(assert (= (and b!1182195 (not res!785739)) b!1182204))

(assert (= (and b!1182204 (not res!785741)) b!1182194))

(assert (= (and b!1182194 res!785733) b!1182193))

(assert (= (and b!1182193 (not res!785731)) b!1182201))

(assert (= (and b!1182194 c!116957) b!1182190))

(assert (= (and b!1182194 (not c!116957)) b!1182208))

(assert (= (and b!1182191 condMapEmpty!46508) mapIsEmpty!46508))

(assert (= (and b!1182191 (not condMapEmpty!46508)) mapNonEmpty!46508))

(get-info :version)

(assert (= (and mapNonEmpty!46508 ((_ is ValueCellFull!14184) mapValue!46508)) b!1182205))

(assert (= (and b!1182191 ((_ is ValueCellFull!14184) mapDefault!46508)) b!1182199))

(assert (= start!99714 b!1182191))

(declare-fun b_lambda!20419 () Bool)

(assert (=> (not b_lambda!20419) (not b!1182195)))

(declare-fun t!38293 () Bool)

(declare-fun tb!10077 () Bool)

(assert (=> (and start!99714 (= defaultEntry!1004 defaultEntry!1004) t!38293) tb!10077))

(declare-fun result!20713 () Bool)

(assert (=> tb!10077 (= result!20713 tp_is_empty!29787)))

(assert (=> b!1182195 t!38293))

(declare-fun b_and!41397 () Bool)

(assert (= b_and!41395 (and (=> t!38293 result!20713) b_and!41397)))

(declare-fun m!1090245 () Bool)

(assert (=> b!1182201 m!1090245))

(declare-fun m!1090247 () Bool)

(assert (=> b!1182192 m!1090247))

(declare-fun m!1090249 () Bool)

(assert (=> b!1182200 m!1090249))

(declare-fun m!1090251 () Bool)

(assert (=> b!1182203 m!1090251))

(declare-fun m!1090253 () Bool)

(assert (=> start!99714 m!1090253))

(declare-fun m!1090255 () Bool)

(assert (=> start!99714 m!1090255))

(declare-fun m!1090257 () Bool)

(assert (=> b!1182195 m!1090257))

(declare-fun m!1090259 () Bool)

(assert (=> b!1182195 m!1090259))

(declare-fun m!1090261 () Bool)

(assert (=> b!1182195 m!1090261))

(declare-fun m!1090263 () Bool)

(assert (=> b!1182195 m!1090263))

(declare-fun m!1090265 () Bool)

(assert (=> b!1182194 m!1090265))

(declare-fun m!1090267 () Bool)

(assert (=> b!1182194 m!1090267))

(assert (=> b!1182194 m!1090265))

(declare-fun m!1090269 () Bool)

(assert (=> b!1182194 m!1090269))

(declare-fun m!1090271 () Bool)

(assert (=> b!1182194 m!1090271))

(declare-fun m!1090273 () Bool)

(assert (=> b!1182194 m!1090273))

(assert (=> b!1182194 m!1090271))

(declare-fun m!1090275 () Bool)

(assert (=> b!1182194 m!1090275))

(declare-fun m!1090277 () Bool)

(assert (=> b!1182194 m!1090277))

(declare-fun m!1090279 () Bool)

(assert (=> b!1182197 m!1090279))

(declare-fun m!1090281 () Bool)

(assert (=> b!1182189 m!1090281))

(assert (=> b!1182193 m!1090271))

(declare-fun m!1090283 () Bool)

(assert (=> b!1182204 m!1090283))

(declare-fun m!1090285 () Bool)

(assert (=> b!1182204 m!1090285))

(declare-fun m!1090287 () Bool)

(assert (=> b!1182204 m!1090287))

(assert (=> b!1182204 m!1090271))

(declare-fun m!1090289 () Bool)

(assert (=> b!1182204 m!1090289))

(declare-fun m!1090291 () Bool)

(assert (=> b!1182204 m!1090291))

(assert (=> b!1182204 m!1090271))

(declare-fun m!1090293 () Bool)

(assert (=> b!1182202 m!1090293))

(declare-fun m!1090295 () Bool)

(assert (=> b!1182198 m!1090295))

(declare-fun m!1090297 () Bool)

(assert (=> b!1182198 m!1090297))

(declare-fun m!1090299 () Bool)

(assert (=> b!1182190 m!1090299))

(declare-fun m!1090301 () Bool)

(assert (=> b!1182190 m!1090301))

(declare-fun m!1090303 () Bool)

(assert (=> b!1182190 m!1090303))

(declare-fun m!1090305 () Bool)

(assert (=> b!1182190 m!1090305))

(declare-fun m!1090307 () Bool)

(assert (=> b!1182190 m!1090307))

(declare-fun m!1090309 () Bool)

(assert (=> b!1182206 m!1090309))

(declare-fun m!1090311 () Bool)

(assert (=> b!1182206 m!1090311))

(declare-fun m!1090313 () Bool)

(assert (=> mapNonEmpty!46508 m!1090313))

(check-sat tp_is_empty!29787 (not b!1182206) (not start!99714) (not b!1182190) (not b!1182197) (not b!1182192) (not b!1182204) (not b_next!25257) (not b!1182202) (not b!1182203) (not b!1182194) (not mapNonEmpty!46508) (not b!1182195) (not b!1182198) (not b!1182189) (not b_lambda!20419) b_and!41397 (not b!1182201))
(check-sat b_and!41397 (not b_next!25257))

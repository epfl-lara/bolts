; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100356 () Bool)

(assert start!100356)

(declare-fun b_free!25707 () Bool)

(declare-fun b_next!25707 () Bool)

(assert (=> start!100356 (= b_free!25707 (not b_next!25707))))

(declare-fun tp!90070 () Bool)

(declare-fun b_and!42297 () Bool)

(assert (=> start!100356 (= tp!90070 b_and!42297)))

(declare-fun b!1197199 () Bool)

(declare-fun res!796843 () Bool)

(declare-fun e!680166 () Bool)

(assert (=> b!1197199 (=> (not res!796843) (not e!680166))))

(declare-datatypes ((array!77532 0))(
  ( (array!77533 (arr!37409 (Array (_ BitVec 32) (_ BitVec 64))) (size!37946 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77532)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77532 (_ BitVec 32)) Bool)

(assert (=> b!1197199 (= res!796843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1197200 () Bool)

(declare-fun res!796840 () Bool)

(declare-fun e!680165 () Bool)

(assert (=> b!1197200 (=> (not res!796840) (not e!680165))))

(declare-fun lt!543173 () array!77532)

(declare-datatypes ((List!26484 0))(
  ( (Nil!26481) (Cons!26480 (h!27689 (_ BitVec 64)) (t!39190 List!26484)) )
))
(declare-fun arrayNoDuplicates!0 (array!77532 (_ BitVec 32) List!26484) Bool)

(assert (=> b!1197200 (= res!796840 (arrayNoDuplicates!0 lt!543173 #b00000000000000000000000000000000 Nil!26481))))

(declare-fun b!1197201 () Bool)

(declare-fun res!796839 () Bool)

(assert (=> b!1197201 (=> (not res!796839) (not e!680166))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1197201 (= res!796839 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37946 _keys!1208))))))

(declare-fun b!1197202 () Bool)

(declare-fun res!796841 () Bool)

(assert (=> b!1197202 (=> (not res!796841) (not e!680166))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1197202 (= res!796841 (validKeyInArray!0 k0!934))))

(declare-fun b!1197203 () Bool)

(declare-fun e!680168 () Bool)

(declare-fun tp_is_empty!30387 () Bool)

(assert (=> b!1197203 (= e!680168 tp_is_empty!30387)))

(declare-fun b!1197204 () Bool)

(assert (=> b!1197204 (= e!680166 e!680165)))

(declare-fun res!796834 () Bool)

(assert (=> b!1197204 (=> (not res!796834) (not e!680165))))

(assert (=> b!1197204 (= res!796834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543173 mask!1564))))

(assert (=> b!1197204 (= lt!543173 (array!77533 (store (arr!37409 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37946 _keys!1208)))))

(declare-fun b!1197205 () Bool)

(declare-fun res!796842 () Bool)

(assert (=> b!1197205 (=> (not res!796842) (not e!680166))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45643 0))(
  ( (V!45644 (val!15250 Int)) )
))
(declare-datatypes ((ValueCell!14484 0))(
  ( (ValueCellFull!14484 (v!17889 V!45643)) (EmptyCell!14484) )
))
(declare-datatypes ((array!77534 0))(
  ( (array!77535 (arr!37410 (Array (_ BitVec 32) ValueCell!14484)) (size!37947 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77534)

(assert (=> b!1197205 (= res!796842 (and (= (size!37947 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37946 _keys!1208) (size!37947 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!944 () V!45643)

(declare-fun bm!57238 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19668 0))(
  ( (tuple2!19669 (_1!9844 (_ BitVec 64)) (_2!9844 V!45643)) )
))
(declare-datatypes ((List!26485 0))(
  ( (Nil!26482) (Cons!26481 (h!27690 tuple2!19668) (t!39191 List!26485)) )
))
(declare-datatypes ((ListLongMap!17649 0))(
  ( (ListLongMap!17650 (toList!8840 List!26485)) )
))
(declare-fun call!57241 () ListLongMap!17649)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!45643)

(declare-fun getCurrentListMapNoExtraKeys!5253 (array!77532 array!77534 (_ BitVec 32) (_ BitVec 32) V!45643 V!45643 (_ BitVec 32) Int) ListLongMap!17649)

(assert (=> bm!57238 (= call!57241 (getCurrentListMapNoExtraKeys!5253 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!57242 () ListLongMap!17649)

(declare-fun bm!57239 () Bool)

(declare-fun dynLambda!3189 (Int (_ BitVec 64)) V!45643)

(assert (=> bm!57239 (= call!57242 (getCurrentListMapNoExtraKeys!5253 lt!543173 (array!77535 (store (arr!37410 _values!996) i!673 (ValueCellFull!14484 (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37947 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1197206 () Bool)

(declare-fun e!680167 () Bool)

(assert (=> b!1197206 (= e!680167 tp_is_empty!30387)))

(declare-fun b!1197207 () Bool)

(declare-fun res!796833 () Bool)

(assert (=> b!1197207 (=> (not res!796833) (not e!680166))))

(assert (=> b!1197207 (= res!796833 (= (select (arr!37409 _keys!1208) i!673) k0!934))))

(declare-fun res!796838 () Bool)

(assert (=> start!100356 (=> (not res!796838) (not e!680166))))

(assert (=> start!100356 (= res!796838 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37946 _keys!1208))))))

(assert (=> start!100356 e!680166))

(assert (=> start!100356 tp_is_empty!30387))

(declare-fun array_inv!28416 (array!77532) Bool)

(assert (=> start!100356 (array_inv!28416 _keys!1208)))

(assert (=> start!100356 true))

(assert (=> start!100356 tp!90070))

(declare-fun e!680164 () Bool)

(declare-fun array_inv!28417 (array!77534) Bool)

(assert (=> start!100356 (and (array_inv!28417 _values!996) e!680164)))

(declare-fun b!1197208 () Bool)

(declare-fun mapRes!47417 () Bool)

(assert (=> b!1197208 (= e!680164 (and e!680168 mapRes!47417))))

(declare-fun condMapEmpty!47417 () Bool)

(declare-fun mapDefault!47417 () ValueCell!14484)

(assert (=> b!1197208 (= condMapEmpty!47417 (= (arr!37410 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14484)) mapDefault!47417)))))

(declare-fun mapNonEmpty!47417 () Bool)

(declare-fun tp!90069 () Bool)

(assert (=> mapNonEmpty!47417 (= mapRes!47417 (and tp!90069 e!680167))))

(declare-fun mapKey!47417 () (_ BitVec 32))

(declare-fun mapValue!47417 () ValueCell!14484)

(declare-fun mapRest!47417 () (Array (_ BitVec 32) ValueCell!14484))

(assert (=> mapNonEmpty!47417 (= (arr!37410 _values!996) (store mapRest!47417 mapKey!47417 mapValue!47417))))

(declare-fun b!1197209 () Bool)

(declare-fun e!680163 () Bool)

(assert (=> b!1197209 (= e!680165 (not e!680163))))

(declare-fun res!796835 () Bool)

(assert (=> b!1197209 (=> res!796835 e!680163)))

(assert (=> b!1197209 (= res!796835 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!37946 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!77532 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1197209 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39636 0))(
  ( (Unit!39637) )
))
(declare-fun lt!543174 () Unit!39636)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77532 (_ BitVec 64) (_ BitVec 32)) Unit!39636)

(assert (=> b!1197209 (= lt!543174 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1197210 () Bool)

(declare-fun e!680170 () Bool)

(assert (=> b!1197210 (= e!680170 (= call!57242 call!57241))))

(declare-fun b!1197211 () Bool)

(declare-fun res!796837 () Bool)

(assert (=> b!1197211 (=> (not res!796837) (not e!680166))))

(assert (=> b!1197211 (= res!796837 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26481))))

(declare-fun b!1197212 () Bool)

(declare-fun res!796836 () Bool)

(assert (=> b!1197212 (=> (not res!796836) (not e!680166))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1197212 (= res!796836 (validMask!0 mask!1564))))

(declare-fun b!1197213 () Bool)

(declare-fun -!1805 (ListLongMap!17649 (_ BitVec 64)) ListLongMap!17649)

(assert (=> b!1197213 (= e!680170 (= call!57242 (-!1805 call!57241 k0!934)))))

(declare-fun b!1197214 () Bool)

(assert (=> b!1197214 (= e!680163 (= (getCurrentListMapNoExtraKeys!5253 lt!543173 (array!77535 (store (arr!37410 _values!996) i!673 (ValueCellFull!14484 (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37947 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) (getCurrentListMapNoExtraKeys!5253 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004)))))

(assert (=> b!1197214 e!680170))

(declare-fun c!117323 () Bool)

(assert (=> b!1197214 (= c!117323 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!543172 () Unit!39636)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1011 (array!77532 array!77534 (_ BitVec 32) (_ BitVec 32) V!45643 V!45643 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39636)

(assert (=> b!1197214 (= lt!543172 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1011 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!47417 () Bool)

(assert (=> mapIsEmpty!47417 mapRes!47417))

(assert (= (and start!100356 res!796838) b!1197212))

(assert (= (and b!1197212 res!796836) b!1197205))

(assert (= (and b!1197205 res!796842) b!1197199))

(assert (= (and b!1197199 res!796843) b!1197211))

(assert (= (and b!1197211 res!796837) b!1197201))

(assert (= (and b!1197201 res!796839) b!1197202))

(assert (= (and b!1197202 res!796841) b!1197207))

(assert (= (and b!1197207 res!796833) b!1197204))

(assert (= (and b!1197204 res!796834) b!1197200))

(assert (= (and b!1197200 res!796840) b!1197209))

(assert (= (and b!1197209 (not res!796835)) b!1197214))

(assert (= (and b!1197214 c!117323) b!1197213))

(assert (= (and b!1197214 (not c!117323)) b!1197210))

(assert (= (or b!1197213 b!1197210) bm!57239))

(assert (= (or b!1197213 b!1197210) bm!57238))

(assert (= (and b!1197208 condMapEmpty!47417) mapIsEmpty!47417))

(assert (= (and b!1197208 (not condMapEmpty!47417)) mapNonEmpty!47417))

(get-info :version)

(assert (= (and mapNonEmpty!47417 ((_ is ValueCellFull!14484) mapValue!47417)) b!1197206))

(assert (= (and b!1197208 ((_ is ValueCellFull!14484) mapDefault!47417)) b!1197203))

(assert (= start!100356 b!1197208))

(declare-fun b_lambda!20871 () Bool)

(assert (=> (not b_lambda!20871) (not bm!57239)))

(declare-fun t!39189 () Bool)

(declare-fun tb!10527 () Bool)

(assert (=> (and start!100356 (= defaultEntry!1004 defaultEntry!1004) t!39189) tb!10527))

(declare-fun result!21619 () Bool)

(assert (=> tb!10527 (= result!21619 tp_is_empty!30387)))

(assert (=> bm!57239 t!39189))

(declare-fun b_and!42299 () Bool)

(assert (= b_and!42297 (and (=> t!39189 result!21619) b_and!42299)))

(declare-fun b_lambda!20873 () Bool)

(assert (=> (not b_lambda!20873) (not b!1197214)))

(assert (=> b!1197214 t!39189))

(declare-fun b_and!42301 () Bool)

(assert (= b_and!42299 (and (=> t!39189 result!21619) b_and!42301)))

(declare-fun m!1104275 () Bool)

(assert (=> b!1197200 m!1104275))

(declare-fun m!1104277 () Bool)

(assert (=> b!1197207 m!1104277))

(declare-fun m!1104279 () Bool)

(assert (=> start!100356 m!1104279))

(declare-fun m!1104281 () Bool)

(assert (=> start!100356 m!1104281))

(declare-fun m!1104283 () Bool)

(assert (=> b!1197214 m!1104283))

(declare-fun m!1104285 () Bool)

(assert (=> b!1197214 m!1104285))

(declare-fun m!1104287 () Bool)

(assert (=> b!1197214 m!1104287))

(declare-fun m!1104289 () Bool)

(assert (=> b!1197214 m!1104289))

(declare-fun m!1104291 () Bool)

(assert (=> b!1197214 m!1104291))

(declare-fun m!1104293 () Bool)

(assert (=> b!1197212 m!1104293))

(declare-fun m!1104295 () Bool)

(assert (=> b!1197199 m!1104295))

(declare-fun m!1104297 () Bool)

(assert (=> b!1197213 m!1104297))

(assert (=> bm!57239 m!1104283))

(assert (=> bm!57239 m!1104285))

(declare-fun m!1104299 () Bool)

(assert (=> bm!57239 m!1104299))

(declare-fun m!1104301 () Bool)

(assert (=> b!1197211 m!1104301))

(declare-fun m!1104303 () Bool)

(assert (=> mapNonEmpty!47417 m!1104303))

(declare-fun m!1104305 () Bool)

(assert (=> bm!57238 m!1104305))

(declare-fun m!1104307 () Bool)

(assert (=> b!1197204 m!1104307))

(declare-fun m!1104309 () Bool)

(assert (=> b!1197204 m!1104309))

(declare-fun m!1104311 () Bool)

(assert (=> b!1197202 m!1104311))

(declare-fun m!1104313 () Bool)

(assert (=> b!1197209 m!1104313))

(declare-fun m!1104315 () Bool)

(assert (=> b!1197209 m!1104315))

(check-sat (not b_next!25707) (not b_lambda!20873) (not b!1197211) b_and!42301 (not b!1197204) (not bm!57239) (not b!1197202) (not b!1197212) (not bm!57238) (not start!100356) (not b!1197214) tp_is_empty!30387 (not b_lambda!20871) (not b!1197209) (not b!1197199) (not b!1197200) (not mapNonEmpty!47417) (not b!1197213))
(check-sat b_and!42301 (not b_next!25707))
(get-model)

(declare-fun b_lambda!20879 () Bool)

(assert (= b_lambda!20871 (or (and start!100356 b_free!25707) b_lambda!20879)))

(declare-fun b_lambda!20881 () Bool)

(assert (= b_lambda!20873 (or (and start!100356 b_free!25707) b_lambda!20881)))

(check-sat (not b_next!25707) (not b!1197211) b_and!42301 tp_is_empty!30387 (not b!1197204) (not bm!57239) (not b!1197202) (not b!1197212) (not bm!57238) (not start!100356) (not b!1197214) (not b_lambda!20879) (not b!1197209) (not b!1197199) (not b_lambda!20881) (not b!1197200) (not mapNonEmpty!47417) (not b!1197213))
(check-sat b_and!42301 (not b_next!25707))
(get-model)

(declare-fun b!1197275 () Bool)

(declare-fun e!680202 () Bool)

(declare-fun e!680201 () Bool)

(assert (=> b!1197275 (= e!680202 e!680201)))

(declare-fun c!117329 () Bool)

(assert (=> b!1197275 (= c!117329 (validKeyInArray!0 (select (arr!37409 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!132285 () Bool)

(declare-fun res!796882 () Bool)

(assert (=> d!132285 (=> res!796882 e!680202)))

(assert (=> d!132285 (= res!796882 (bvsge #b00000000000000000000000000000000 (size!37946 _keys!1208)))))

(assert (=> d!132285 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!680202)))

(declare-fun bm!57248 () Bool)

(declare-fun call!57251 () Bool)

(assert (=> bm!57248 (= call!57251 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1197276 () Bool)

(declare-fun e!680203 () Bool)

(assert (=> b!1197276 (= e!680203 call!57251)))

(declare-fun b!1197277 () Bool)

(assert (=> b!1197277 (= e!680201 e!680203)))

(declare-fun lt!543190 () (_ BitVec 64))

(assert (=> b!1197277 (= lt!543190 (select (arr!37409 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!543191 () Unit!39636)

(assert (=> b!1197277 (= lt!543191 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!543190 #b00000000000000000000000000000000))))

(assert (=> b!1197277 (arrayContainsKey!0 _keys!1208 lt!543190 #b00000000000000000000000000000000)))

(declare-fun lt!543192 () Unit!39636)

(assert (=> b!1197277 (= lt!543192 lt!543191)))

(declare-fun res!796881 () Bool)

(declare-datatypes ((SeekEntryResult!9928 0))(
  ( (MissingZero!9928 (index!42082 (_ BitVec 32))) (Found!9928 (index!42083 (_ BitVec 32))) (Intermediate!9928 (undefined!10740 Bool) (index!42084 (_ BitVec 32)) (x!105862 (_ BitVec 32))) (Undefined!9928) (MissingVacant!9928 (index!42085 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!77532 (_ BitVec 32)) SeekEntryResult!9928)

(assert (=> b!1197277 (= res!796881 (= (seekEntryOrOpen!0 (select (arr!37409 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9928 #b00000000000000000000000000000000)))))

(assert (=> b!1197277 (=> (not res!796881) (not e!680203))))

(declare-fun b!1197278 () Bool)

(assert (=> b!1197278 (= e!680201 call!57251)))

(assert (= (and d!132285 (not res!796882)) b!1197275))

(assert (= (and b!1197275 c!117329) b!1197277))

(assert (= (and b!1197275 (not c!117329)) b!1197278))

(assert (= (and b!1197277 res!796881) b!1197276))

(assert (= (or b!1197276 b!1197278) bm!57248))

(declare-fun m!1104359 () Bool)

(assert (=> b!1197275 m!1104359))

(assert (=> b!1197275 m!1104359))

(declare-fun m!1104361 () Bool)

(assert (=> b!1197275 m!1104361))

(declare-fun m!1104363 () Bool)

(assert (=> bm!57248 m!1104363))

(assert (=> b!1197277 m!1104359))

(declare-fun m!1104365 () Bool)

(assert (=> b!1197277 m!1104365))

(declare-fun m!1104367 () Bool)

(assert (=> b!1197277 m!1104367))

(assert (=> b!1197277 m!1104359))

(declare-fun m!1104369 () Bool)

(assert (=> b!1197277 m!1104369))

(assert (=> b!1197199 d!132285))

(declare-fun d!132287 () Bool)

(assert (=> d!132287 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1197202 d!132287))

(declare-fun d!132289 () Bool)

(declare-fun res!796887 () Bool)

(declare-fun e!680208 () Bool)

(assert (=> d!132289 (=> res!796887 e!680208)))

(assert (=> d!132289 (= res!796887 (= (select (arr!37409 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!132289 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!680208)))

(declare-fun b!1197283 () Bool)

(declare-fun e!680209 () Bool)

(assert (=> b!1197283 (= e!680208 e!680209)))

(declare-fun res!796888 () Bool)

(assert (=> b!1197283 (=> (not res!796888) (not e!680209))))

(assert (=> b!1197283 (= res!796888 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!37946 _keys!1208)))))

(declare-fun b!1197284 () Bool)

(assert (=> b!1197284 (= e!680209 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!132289 (not res!796887)) b!1197283))

(assert (= (and b!1197283 res!796888) b!1197284))

(assert (=> d!132289 m!1104359))

(declare-fun m!1104371 () Bool)

(assert (=> b!1197284 m!1104371))

(assert (=> b!1197209 d!132289))

(declare-fun d!132291 () Bool)

(assert (=> d!132291 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!543195 () Unit!39636)

(declare-fun choose!13 (array!77532 (_ BitVec 64) (_ BitVec 32)) Unit!39636)

(assert (=> d!132291 (= lt!543195 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!132291 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!132291 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!543195)))

(declare-fun bs!33941 () Bool)

(assert (= bs!33941 d!132291))

(assert (=> bs!33941 m!1104313))

(declare-fun m!1104373 () Bool)

(assert (=> bs!33941 m!1104373))

(assert (=> b!1197209 d!132291))

(declare-fun b!1197295 () Bool)

(declare-fun e!680220 () Bool)

(declare-fun call!57254 () Bool)

(assert (=> b!1197295 (= e!680220 call!57254)))

(declare-fun b!1197296 () Bool)

(declare-fun e!680218 () Bool)

(assert (=> b!1197296 (= e!680218 e!680220)))

(declare-fun c!117332 () Bool)

(assert (=> b!1197296 (= c!117332 (validKeyInArray!0 (select (arr!37409 lt!543173) #b00000000000000000000000000000000)))))

(declare-fun bm!57251 () Bool)

(assert (=> bm!57251 (= call!57254 (arrayNoDuplicates!0 lt!543173 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!117332 (Cons!26480 (select (arr!37409 lt!543173) #b00000000000000000000000000000000) Nil!26481) Nil!26481)))))

(declare-fun b!1197297 () Bool)

(assert (=> b!1197297 (= e!680220 call!57254)))

(declare-fun d!132293 () Bool)

(declare-fun res!796896 () Bool)

(declare-fun e!680221 () Bool)

(assert (=> d!132293 (=> res!796896 e!680221)))

(assert (=> d!132293 (= res!796896 (bvsge #b00000000000000000000000000000000 (size!37946 lt!543173)))))

(assert (=> d!132293 (= (arrayNoDuplicates!0 lt!543173 #b00000000000000000000000000000000 Nil!26481) e!680221)))

(declare-fun b!1197298 () Bool)

(assert (=> b!1197298 (= e!680221 e!680218)))

(declare-fun res!796897 () Bool)

(assert (=> b!1197298 (=> (not res!796897) (not e!680218))))

(declare-fun e!680219 () Bool)

(assert (=> b!1197298 (= res!796897 (not e!680219))))

(declare-fun res!796895 () Bool)

(assert (=> b!1197298 (=> (not res!796895) (not e!680219))))

(assert (=> b!1197298 (= res!796895 (validKeyInArray!0 (select (arr!37409 lt!543173) #b00000000000000000000000000000000)))))

(declare-fun b!1197299 () Bool)

(declare-fun contains!6883 (List!26484 (_ BitVec 64)) Bool)

(assert (=> b!1197299 (= e!680219 (contains!6883 Nil!26481 (select (arr!37409 lt!543173) #b00000000000000000000000000000000)))))

(assert (= (and d!132293 (not res!796896)) b!1197298))

(assert (= (and b!1197298 res!796895) b!1197299))

(assert (= (and b!1197298 res!796897) b!1197296))

(assert (= (and b!1197296 c!117332) b!1197295))

(assert (= (and b!1197296 (not c!117332)) b!1197297))

(assert (= (or b!1197295 b!1197297) bm!57251))

(declare-fun m!1104375 () Bool)

(assert (=> b!1197296 m!1104375))

(assert (=> b!1197296 m!1104375))

(declare-fun m!1104377 () Bool)

(assert (=> b!1197296 m!1104377))

(assert (=> bm!57251 m!1104375))

(declare-fun m!1104379 () Bool)

(assert (=> bm!57251 m!1104379))

(assert (=> b!1197298 m!1104375))

(assert (=> b!1197298 m!1104375))

(assert (=> b!1197298 m!1104377))

(assert (=> b!1197299 m!1104375))

(assert (=> b!1197299 m!1104375))

(declare-fun m!1104381 () Bool)

(assert (=> b!1197299 m!1104381))

(assert (=> b!1197200 d!132293))

(declare-fun d!132295 () Bool)

(assert (=> d!132295 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1197212 d!132295))

(declare-fun b!1197300 () Bool)

(declare-fun e!680223 () Bool)

(declare-fun e!680222 () Bool)

(assert (=> b!1197300 (= e!680223 e!680222)))

(declare-fun c!117333 () Bool)

(assert (=> b!1197300 (= c!117333 (validKeyInArray!0 (select (arr!37409 lt!543173) #b00000000000000000000000000000000)))))

(declare-fun d!132297 () Bool)

(declare-fun res!796899 () Bool)

(assert (=> d!132297 (=> res!796899 e!680223)))

(assert (=> d!132297 (= res!796899 (bvsge #b00000000000000000000000000000000 (size!37946 lt!543173)))))

(assert (=> d!132297 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543173 mask!1564) e!680223)))

(declare-fun bm!57252 () Bool)

(declare-fun call!57255 () Bool)

(assert (=> bm!57252 (= call!57255 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!543173 mask!1564))))

(declare-fun b!1197301 () Bool)

(declare-fun e!680224 () Bool)

(assert (=> b!1197301 (= e!680224 call!57255)))

(declare-fun b!1197302 () Bool)

(assert (=> b!1197302 (= e!680222 e!680224)))

(declare-fun lt!543196 () (_ BitVec 64))

(assert (=> b!1197302 (= lt!543196 (select (arr!37409 lt!543173) #b00000000000000000000000000000000))))

(declare-fun lt!543197 () Unit!39636)

(assert (=> b!1197302 (= lt!543197 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!543173 lt!543196 #b00000000000000000000000000000000))))

(assert (=> b!1197302 (arrayContainsKey!0 lt!543173 lt!543196 #b00000000000000000000000000000000)))

(declare-fun lt!543198 () Unit!39636)

(assert (=> b!1197302 (= lt!543198 lt!543197)))

(declare-fun res!796898 () Bool)

(assert (=> b!1197302 (= res!796898 (= (seekEntryOrOpen!0 (select (arr!37409 lt!543173) #b00000000000000000000000000000000) lt!543173 mask!1564) (Found!9928 #b00000000000000000000000000000000)))))

(assert (=> b!1197302 (=> (not res!796898) (not e!680224))))

(declare-fun b!1197303 () Bool)

(assert (=> b!1197303 (= e!680222 call!57255)))

(assert (= (and d!132297 (not res!796899)) b!1197300))

(assert (= (and b!1197300 c!117333) b!1197302))

(assert (= (and b!1197300 (not c!117333)) b!1197303))

(assert (= (and b!1197302 res!796898) b!1197301))

(assert (= (or b!1197301 b!1197303) bm!57252))

(assert (=> b!1197300 m!1104375))

(assert (=> b!1197300 m!1104375))

(assert (=> b!1197300 m!1104377))

(declare-fun m!1104383 () Bool)

(assert (=> bm!57252 m!1104383))

(assert (=> b!1197302 m!1104375))

(declare-fun m!1104385 () Bool)

(assert (=> b!1197302 m!1104385))

(declare-fun m!1104387 () Bool)

(assert (=> b!1197302 m!1104387))

(assert (=> b!1197302 m!1104375))

(declare-fun m!1104389 () Bool)

(assert (=> b!1197302 m!1104389))

(assert (=> b!1197204 d!132297))

(declare-fun b!1197304 () Bool)

(declare-fun e!680227 () Bool)

(declare-fun call!57256 () Bool)

(assert (=> b!1197304 (= e!680227 call!57256)))

(declare-fun b!1197305 () Bool)

(declare-fun e!680225 () Bool)

(assert (=> b!1197305 (= e!680225 e!680227)))

(declare-fun c!117334 () Bool)

(assert (=> b!1197305 (= c!117334 (validKeyInArray!0 (select (arr!37409 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun bm!57253 () Bool)

(assert (=> bm!57253 (= call!57256 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!117334 (Cons!26480 (select (arr!37409 _keys!1208) #b00000000000000000000000000000000) Nil!26481) Nil!26481)))))

(declare-fun b!1197306 () Bool)

(assert (=> b!1197306 (= e!680227 call!57256)))

(declare-fun d!132299 () Bool)

(declare-fun res!796901 () Bool)

(declare-fun e!680228 () Bool)

(assert (=> d!132299 (=> res!796901 e!680228)))

(assert (=> d!132299 (= res!796901 (bvsge #b00000000000000000000000000000000 (size!37946 _keys!1208)))))

(assert (=> d!132299 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26481) e!680228)))

(declare-fun b!1197307 () Bool)

(assert (=> b!1197307 (= e!680228 e!680225)))

(declare-fun res!796902 () Bool)

(assert (=> b!1197307 (=> (not res!796902) (not e!680225))))

(declare-fun e!680226 () Bool)

(assert (=> b!1197307 (= res!796902 (not e!680226))))

(declare-fun res!796900 () Bool)

(assert (=> b!1197307 (=> (not res!796900) (not e!680226))))

(assert (=> b!1197307 (= res!796900 (validKeyInArray!0 (select (arr!37409 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1197308 () Bool)

(assert (=> b!1197308 (= e!680226 (contains!6883 Nil!26481 (select (arr!37409 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!132299 (not res!796901)) b!1197307))

(assert (= (and b!1197307 res!796900) b!1197308))

(assert (= (and b!1197307 res!796902) b!1197305))

(assert (= (and b!1197305 c!117334) b!1197304))

(assert (= (and b!1197305 (not c!117334)) b!1197306))

(assert (= (or b!1197304 b!1197306) bm!57253))

(assert (=> b!1197305 m!1104359))

(assert (=> b!1197305 m!1104359))

(assert (=> b!1197305 m!1104361))

(assert (=> bm!57253 m!1104359))

(declare-fun m!1104391 () Bool)

(assert (=> bm!57253 m!1104391))

(assert (=> b!1197307 m!1104359))

(assert (=> b!1197307 m!1104359))

(assert (=> b!1197307 m!1104361))

(assert (=> b!1197308 m!1104359))

(assert (=> b!1197308 m!1104359))

(declare-fun m!1104393 () Bool)

(assert (=> b!1197308 m!1104393))

(assert (=> b!1197211 d!132299))

(declare-fun b!1197333 () Bool)

(assert (=> b!1197333 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!37946 lt!543173)))))

(assert (=> b!1197333 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!37947 (array!77535 (store (arr!37410 _values!996) i!673 (ValueCellFull!14484 (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37947 _values!996)))))))

(declare-fun e!680243 () Bool)

(declare-fun lt!543217 () ListLongMap!17649)

(declare-fun apply!993 (ListLongMap!17649 (_ BitVec 64)) V!45643)

(declare-fun get!19141 (ValueCell!14484 V!45643) V!45643)

(assert (=> b!1197333 (= e!680243 (= (apply!993 lt!543217 (select (arr!37409 lt!543173) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19141 (select (arr!37410 (array!77535 (store (arr!37410 _values!996) i!673 (ValueCellFull!14484 (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37947 _values!996))) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1197334 () Bool)

(declare-fun e!680246 () ListLongMap!17649)

(assert (=> b!1197334 (= e!680246 (ListLongMap!17650 Nil!26482))))

(declare-fun d!132301 () Bool)

(declare-fun e!680245 () Bool)

(assert (=> d!132301 e!680245))

(declare-fun res!796911 () Bool)

(assert (=> d!132301 (=> (not res!796911) (not e!680245))))

(declare-fun contains!6884 (ListLongMap!17649 (_ BitVec 64)) Bool)

(assert (=> d!132301 (= res!796911 (not (contains!6884 lt!543217 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132301 (= lt!543217 e!680246)))

(declare-fun c!117346 () Bool)

(assert (=> d!132301 (= c!117346 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37946 lt!543173)))))

(assert (=> d!132301 (validMask!0 mask!1564)))

(assert (=> d!132301 (= (getCurrentListMapNoExtraKeys!5253 lt!543173 (array!77535 (store (arr!37410 _values!996) i!673 (ValueCellFull!14484 (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37947 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!543217)))

(declare-fun b!1197335 () Bool)

(declare-fun e!680249 () Bool)

(declare-fun isEmpty!981 (ListLongMap!17649) Bool)

(assert (=> b!1197335 (= e!680249 (isEmpty!981 lt!543217))))

(declare-fun b!1197336 () Bool)

(declare-fun e!680244 () ListLongMap!17649)

(declare-fun call!57259 () ListLongMap!17649)

(assert (=> b!1197336 (= e!680244 call!57259)))

(declare-fun b!1197337 () Bool)

(declare-fun e!680248 () Bool)

(assert (=> b!1197337 (= e!680245 e!680248)))

(declare-fun c!117343 () Bool)

(declare-fun e!680247 () Bool)

(assert (=> b!1197337 (= c!117343 e!680247)))

(declare-fun res!796914 () Bool)

(assert (=> b!1197337 (=> (not res!796914) (not e!680247))))

(assert (=> b!1197337 (= res!796914 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!37946 lt!543173)))))

(declare-fun bm!57256 () Bool)

(assert (=> bm!57256 (= call!57259 (getCurrentListMapNoExtraKeys!5253 lt!543173 (array!77535 (store (arr!37410 _values!996) i!673 (ValueCellFull!14484 (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37947 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1197338 () Bool)

(assert (=> b!1197338 (= e!680248 e!680249)))

(declare-fun c!117345 () Bool)

(assert (=> b!1197338 (= c!117345 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!37946 lt!543173)))))

(declare-fun b!1197339 () Bool)

(assert (=> b!1197339 (= e!680247 (validKeyInArray!0 (select (arr!37409 lt!543173) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1197339 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1197340 () Bool)

(assert (=> b!1197340 (= e!680246 e!680244)))

(declare-fun c!117344 () Bool)

(assert (=> b!1197340 (= c!117344 (validKeyInArray!0 (select (arr!37409 lt!543173) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1197341 () Bool)

(declare-fun lt!543219 () Unit!39636)

(declare-fun lt!543213 () Unit!39636)

(assert (=> b!1197341 (= lt!543219 lt!543213)))

(declare-fun lt!543218 () (_ BitVec 64))

(declare-fun lt!543214 () (_ BitVec 64))

(declare-fun lt!543215 () ListLongMap!17649)

(declare-fun lt!543216 () V!45643)

(declare-fun +!3933 (ListLongMap!17649 tuple2!19668) ListLongMap!17649)

(assert (=> b!1197341 (not (contains!6884 (+!3933 lt!543215 (tuple2!19669 lt!543214 lt!543216)) lt!543218))))

(declare-fun addStillNotContains!288 (ListLongMap!17649 (_ BitVec 64) V!45643 (_ BitVec 64)) Unit!39636)

(assert (=> b!1197341 (= lt!543213 (addStillNotContains!288 lt!543215 lt!543214 lt!543216 lt!543218))))

(assert (=> b!1197341 (= lt!543218 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1197341 (= lt!543216 (get!19141 (select (arr!37410 (array!77535 (store (arr!37410 _values!996) i!673 (ValueCellFull!14484 (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37947 _values!996))) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1197341 (= lt!543214 (select (arr!37409 lt!543173) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1197341 (= lt!543215 call!57259)))

(assert (=> b!1197341 (= e!680244 (+!3933 call!57259 (tuple2!19669 (select (arr!37409 lt!543173) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19141 (select (arr!37410 (array!77535 (store (arr!37410 _values!996) i!673 (ValueCellFull!14484 (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37947 _values!996))) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1197342 () Bool)

(declare-fun res!796912 () Bool)

(assert (=> b!1197342 (=> (not res!796912) (not e!680245))))

(assert (=> b!1197342 (= res!796912 (not (contains!6884 lt!543217 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1197343 () Bool)

(assert (=> b!1197343 (= e!680249 (= lt!543217 (getCurrentListMapNoExtraKeys!5253 lt!543173 (array!77535 (store (arr!37410 _values!996) i!673 (ValueCellFull!14484 (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37947 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1197344 () Bool)

(assert (=> b!1197344 (= e!680248 e!680243)))

(assert (=> b!1197344 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!37946 lt!543173)))))

(declare-fun res!796913 () Bool)

(assert (=> b!1197344 (= res!796913 (contains!6884 lt!543217 (select (arr!37409 lt!543173) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1197344 (=> (not res!796913) (not e!680243))))

(assert (= (and d!132301 c!117346) b!1197334))

(assert (= (and d!132301 (not c!117346)) b!1197340))

(assert (= (and b!1197340 c!117344) b!1197341))

(assert (= (and b!1197340 (not c!117344)) b!1197336))

(assert (= (or b!1197341 b!1197336) bm!57256))

(assert (= (and d!132301 res!796911) b!1197342))

(assert (= (and b!1197342 res!796912) b!1197337))

(assert (= (and b!1197337 res!796914) b!1197339))

(assert (= (and b!1197337 c!117343) b!1197344))

(assert (= (and b!1197337 (not c!117343)) b!1197338))

(assert (= (and b!1197344 res!796913) b!1197333))

(assert (= (and b!1197338 c!117345) b!1197343))

(assert (= (and b!1197338 (not c!117345)) b!1197335))

(declare-fun b_lambda!20883 () Bool)

(assert (=> (not b_lambda!20883) (not b!1197333)))

(assert (=> b!1197333 t!39189))

(declare-fun b_and!42309 () Bool)

(assert (= b_and!42301 (and (=> t!39189 result!21619) b_and!42309)))

(declare-fun b_lambda!20885 () Bool)

(assert (=> (not b_lambda!20885) (not b!1197341)))

(assert (=> b!1197341 t!39189))

(declare-fun b_and!42311 () Bool)

(assert (= b_and!42309 (and (=> t!39189 result!21619) b_and!42311)))

(declare-fun m!1104395 () Bool)

(assert (=> b!1197344 m!1104395))

(assert (=> b!1197344 m!1104395))

(declare-fun m!1104397 () Bool)

(assert (=> b!1197344 m!1104397))

(declare-fun m!1104399 () Bool)

(assert (=> d!132301 m!1104399))

(assert (=> d!132301 m!1104293))

(declare-fun m!1104401 () Bool)

(assert (=> b!1197341 m!1104401))

(assert (=> b!1197341 m!1104395))

(declare-fun m!1104403 () Bool)

(assert (=> b!1197341 m!1104403))

(declare-fun m!1104405 () Bool)

(assert (=> b!1197341 m!1104405))

(assert (=> b!1197341 m!1104283))

(declare-fun m!1104407 () Bool)

(assert (=> b!1197341 m!1104407))

(assert (=> b!1197341 m!1104403))

(declare-fun m!1104409 () Bool)

(assert (=> b!1197341 m!1104409))

(assert (=> b!1197341 m!1104407))

(assert (=> b!1197341 m!1104283))

(declare-fun m!1104411 () Bool)

(assert (=> b!1197341 m!1104411))

(declare-fun m!1104413 () Bool)

(assert (=> b!1197342 m!1104413))

(declare-fun m!1104415 () Bool)

(assert (=> bm!57256 m!1104415))

(assert (=> b!1197339 m!1104395))

(assert (=> b!1197339 m!1104395))

(declare-fun m!1104417 () Bool)

(assert (=> b!1197339 m!1104417))

(assert (=> b!1197340 m!1104395))

(assert (=> b!1197340 m!1104395))

(assert (=> b!1197340 m!1104417))

(assert (=> b!1197343 m!1104415))

(assert (=> b!1197333 m!1104395))

(declare-fun m!1104419 () Bool)

(assert (=> b!1197333 m!1104419))

(assert (=> b!1197333 m!1104395))

(assert (=> b!1197333 m!1104283))

(assert (=> b!1197333 m!1104407))

(assert (=> b!1197333 m!1104407))

(assert (=> b!1197333 m!1104283))

(assert (=> b!1197333 m!1104411))

(declare-fun m!1104421 () Bool)

(assert (=> b!1197335 m!1104421))

(assert (=> bm!57239 d!132301))

(declare-fun d!132303 () Bool)

(assert (=> d!132303 (= (array_inv!28416 _keys!1208) (bvsge (size!37946 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!100356 d!132303))

(declare-fun d!132305 () Bool)

(assert (=> d!132305 (= (array_inv!28417 _values!996) (bvsge (size!37947 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!100356 d!132305))

(declare-fun b!1197345 () Bool)

(assert (=> b!1197345 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!37946 lt!543173)))))

(assert (=> b!1197345 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!37947 (array!77535 (store (arr!37410 _values!996) i!673 (ValueCellFull!14484 (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37947 _values!996)))))))

(declare-fun lt!543224 () ListLongMap!17649)

(declare-fun e!680250 () Bool)

(assert (=> b!1197345 (= e!680250 (= (apply!993 lt!543224 (select (arr!37409 lt!543173) from!1455)) (get!19141 (select (arr!37410 (array!77535 (store (arr!37410 _values!996) i!673 (ValueCellFull!14484 (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37947 _values!996))) from!1455) (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1197346 () Bool)

(declare-fun e!680253 () ListLongMap!17649)

(assert (=> b!1197346 (= e!680253 (ListLongMap!17650 Nil!26482))))

(declare-fun d!132307 () Bool)

(declare-fun e!680252 () Bool)

(assert (=> d!132307 e!680252))

(declare-fun res!796915 () Bool)

(assert (=> d!132307 (=> (not res!796915) (not e!680252))))

(assert (=> d!132307 (= res!796915 (not (contains!6884 lt!543224 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132307 (= lt!543224 e!680253)))

(declare-fun c!117350 () Bool)

(assert (=> d!132307 (= c!117350 (bvsge from!1455 (size!37946 lt!543173)))))

(assert (=> d!132307 (validMask!0 mask!1564)))

(assert (=> d!132307 (= (getCurrentListMapNoExtraKeys!5253 lt!543173 (array!77535 (store (arr!37410 _values!996) i!673 (ValueCellFull!14484 (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37947 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!543224)))

(declare-fun b!1197347 () Bool)

(declare-fun e!680256 () Bool)

(assert (=> b!1197347 (= e!680256 (isEmpty!981 lt!543224))))

(declare-fun b!1197348 () Bool)

(declare-fun e!680251 () ListLongMap!17649)

(declare-fun call!57260 () ListLongMap!17649)

(assert (=> b!1197348 (= e!680251 call!57260)))

(declare-fun b!1197349 () Bool)

(declare-fun e!680255 () Bool)

(assert (=> b!1197349 (= e!680252 e!680255)))

(declare-fun c!117347 () Bool)

(declare-fun e!680254 () Bool)

(assert (=> b!1197349 (= c!117347 e!680254)))

(declare-fun res!796918 () Bool)

(assert (=> b!1197349 (=> (not res!796918) (not e!680254))))

(assert (=> b!1197349 (= res!796918 (bvslt from!1455 (size!37946 lt!543173)))))

(declare-fun bm!57257 () Bool)

(assert (=> bm!57257 (= call!57260 (getCurrentListMapNoExtraKeys!5253 lt!543173 (array!77535 (store (arr!37410 _values!996) i!673 (ValueCellFull!14484 (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37947 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1197350 () Bool)

(assert (=> b!1197350 (= e!680255 e!680256)))

(declare-fun c!117349 () Bool)

(assert (=> b!1197350 (= c!117349 (bvslt from!1455 (size!37946 lt!543173)))))

(declare-fun b!1197351 () Bool)

(assert (=> b!1197351 (= e!680254 (validKeyInArray!0 (select (arr!37409 lt!543173) from!1455)))))

(assert (=> b!1197351 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1197352 () Bool)

(assert (=> b!1197352 (= e!680253 e!680251)))

(declare-fun c!117348 () Bool)

(assert (=> b!1197352 (= c!117348 (validKeyInArray!0 (select (arr!37409 lt!543173) from!1455)))))

(declare-fun b!1197353 () Bool)

(declare-fun lt!543226 () Unit!39636)

(declare-fun lt!543220 () Unit!39636)

(assert (=> b!1197353 (= lt!543226 lt!543220)))

(declare-fun lt!543223 () V!45643)

(declare-fun lt!543222 () ListLongMap!17649)

(declare-fun lt!543221 () (_ BitVec 64))

(declare-fun lt!543225 () (_ BitVec 64))

(assert (=> b!1197353 (not (contains!6884 (+!3933 lt!543222 (tuple2!19669 lt!543221 lt!543223)) lt!543225))))

(assert (=> b!1197353 (= lt!543220 (addStillNotContains!288 lt!543222 lt!543221 lt!543223 lt!543225))))

(assert (=> b!1197353 (= lt!543225 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1197353 (= lt!543223 (get!19141 (select (arr!37410 (array!77535 (store (arr!37410 _values!996) i!673 (ValueCellFull!14484 (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37947 _values!996))) from!1455) (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1197353 (= lt!543221 (select (arr!37409 lt!543173) from!1455))))

(assert (=> b!1197353 (= lt!543222 call!57260)))

(assert (=> b!1197353 (= e!680251 (+!3933 call!57260 (tuple2!19669 (select (arr!37409 lt!543173) from!1455) (get!19141 (select (arr!37410 (array!77535 (store (arr!37410 _values!996) i!673 (ValueCellFull!14484 (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37947 _values!996))) from!1455) (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1197354 () Bool)

(declare-fun res!796916 () Bool)

(assert (=> b!1197354 (=> (not res!796916) (not e!680252))))

(assert (=> b!1197354 (= res!796916 (not (contains!6884 lt!543224 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1197355 () Bool)

(assert (=> b!1197355 (= e!680256 (= lt!543224 (getCurrentListMapNoExtraKeys!5253 lt!543173 (array!77535 (store (arr!37410 _values!996) i!673 (ValueCellFull!14484 (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37947 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1197356 () Bool)

(assert (=> b!1197356 (= e!680255 e!680250)))

(assert (=> b!1197356 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!37946 lt!543173)))))

(declare-fun res!796917 () Bool)

(assert (=> b!1197356 (= res!796917 (contains!6884 lt!543224 (select (arr!37409 lt!543173) from!1455)))))

(assert (=> b!1197356 (=> (not res!796917) (not e!680250))))

(assert (= (and d!132307 c!117350) b!1197346))

(assert (= (and d!132307 (not c!117350)) b!1197352))

(assert (= (and b!1197352 c!117348) b!1197353))

(assert (= (and b!1197352 (not c!117348)) b!1197348))

(assert (= (or b!1197353 b!1197348) bm!57257))

(assert (= (and d!132307 res!796915) b!1197354))

(assert (= (and b!1197354 res!796916) b!1197349))

(assert (= (and b!1197349 res!796918) b!1197351))

(assert (= (and b!1197349 c!117347) b!1197356))

(assert (= (and b!1197349 (not c!117347)) b!1197350))

(assert (= (and b!1197356 res!796917) b!1197345))

(assert (= (and b!1197350 c!117349) b!1197355))

(assert (= (and b!1197350 (not c!117349)) b!1197347))

(declare-fun b_lambda!20887 () Bool)

(assert (=> (not b_lambda!20887) (not b!1197345)))

(assert (=> b!1197345 t!39189))

(declare-fun b_and!42313 () Bool)

(assert (= b_and!42311 (and (=> t!39189 result!21619) b_and!42313)))

(declare-fun b_lambda!20889 () Bool)

(assert (=> (not b_lambda!20889) (not b!1197353)))

(assert (=> b!1197353 t!39189))

(declare-fun b_and!42315 () Bool)

(assert (= b_and!42313 (and (=> t!39189 result!21619) b_and!42315)))

(declare-fun m!1104423 () Bool)

(assert (=> b!1197356 m!1104423))

(assert (=> b!1197356 m!1104423))

(declare-fun m!1104425 () Bool)

(assert (=> b!1197356 m!1104425))

(declare-fun m!1104427 () Bool)

(assert (=> d!132307 m!1104427))

(assert (=> d!132307 m!1104293))

(declare-fun m!1104429 () Bool)

(assert (=> b!1197353 m!1104429))

(assert (=> b!1197353 m!1104423))

(declare-fun m!1104431 () Bool)

(assert (=> b!1197353 m!1104431))

(declare-fun m!1104433 () Bool)

(assert (=> b!1197353 m!1104433))

(assert (=> b!1197353 m!1104283))

(declare-fun m!1104435 () Bool)

(assert (=> b!1197353 m!1104435))

(assert (=> b!1197353 m!1104431))

(declare-fun m!1104437 () Bool)

(assert (=> b!1197353 m!1104437))

(assert (=> b!1197353 m!1104435))

(assert (=> b!1197353 m!1104283))

(declare-fun m!1104439 () Bool)

(assert (=> b!1197353 m!1104439))

(declare-fun m!1104441 () Bool)

(assert (=> b!1197354 m!1104441))

(declare-fun m!1104443 () Bool)

(assert (=> bm!57257 m!1104443))

(assert (=> b!1197351 m!1104423))

(assert (=> b!1197351 m!1104423))

(declare-fun m!1104445 () Bool)

(assert (=> b!1197351 m!1104445))

(assert (=> b!1197352 m!1104423))

(assert (=> b!1197352 m!1104423))

(assert (=> b!1197352 m!1104445))

(assert (=> b!1197355 m!1104443))

(assert (=> b!1197345 m!1104423))

(declare-fun m!1104447 () Bool)

(assert (=> b!1197345 m!1104447))

(assert (=> b!1197345 m!1104423))

(assert (=> b!1197345 m!1104283))

(assert (=> b!1197345 m!1104435))

(assert (=> b!1197345 m!1104435))

(assert (=> b!1197345 m!1104283))

(assert (=> b!1197345 m!1104439))

(declare-fun m!1104449 () Bool)

(assert (=> b!1197347 m!1104449))

(assert (=> b!1197214 d!132307))

(declare-fun b!1197357 () Bool)

(assert (=> b!1197357 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!37946 _keys!1208)))))

(assert (=> b!1197357 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!37947 _values!996)))))

(declare-fun e!680257 () Bool)

(declare-fun lt!543231 () ListLongMap!17649)

(assert (=> b!1197357 (= e!680257 (= (apply!993 lt!543231 (select (arr!37409 _keys!1208) from!1455)) (get!19141 (select (arr!37410 _values!996) from!1455) (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1197358 () Bool)

(declare-fun e!680260 () ListLongMap!17649)

(assert (=> b!1197358 (= e!680260 (ListLongMap!17650 Nil!26482))))

(declare-fun d!132309 () Bool)

(declare-fun e!680259 () Bool)

(assert (=> d!132309 e!680259))

(declare-fun res!796919 () Bool)

(assert (=> d!132309 (=> (not res!796919) (not e!680259))))

(assert (=> d!132309 (= res!796919 (not (contains!6884 lt!543231 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132309 (= lt!543231 e!680260)))

(declare-fun c!117354 () Bool)

(assert (=> d!132309 (= c!117354 (bvsge from!1455 (size!37946 _keys!1208)))))

(assert (=> d!132309 (validMask!0 mask!1564)))

(assert (=> d!132309 (= (getCurrentListMapNoExtraKeys!5253 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!543231)))

(declare-fun b!1197359 () Bool)

(declare-fun e!680263 () Bool)

(assert (=> b!1197359 (= e!680263 (isEmpty!981 lt!543231))))

(declare-fun b!1197360 () Bool)

(declare-fun e!680258 () ListLongMap!17649)

(declare-fun call!57261 () ListLongMap!17649)

(assert (=> b!1197360 (= e!680258 call!57261)))

(declare-fun b!1197361 () Bool)

(declare-fun e!680262 () Bool)

(assert (=> b!1197361 (= e!680259 e!680262)))

(declare-fun c!117351 () Bool)

(declare-fun e!680261 () Bool)

(assert (=> b!1197361 (= c!117351 e!680261)))

(declare-fun res!796922 () Bool)

(assert (=> b!1197361 (=> (not res!796922) (not e!680261))))

(assert (=> b!1197361 (= res!796922 (bvslt from!1455 (size!37946 _keys!1208)))))

(declare-fun bm!57258 () Bool)

(assert (=> bm!57258 (= call!57261 (getCurrentListMapNoExtraKeys!5253 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1197362 () Bool)

(assert (=> b!1197362 (= e!680262 e!680263)))

(declare-fun c!117353 () Bool)

(assert (=> b!1197362 (= c!117353 (bvslt from!1455 (size!37946 _keys!1208)))))

(declare-fun b!1197363 () Bool)

(assert (=> b!1197363 (= e!680261 (validKeyInArray!0 (select (arr!37409 _keys!1208) from!1455)))))

(assert (=> b!1197363 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1197364 () Bool)

(assert (=> b!1197364 (= e!680260 e!680258)))

(declare-fun c!117352 () Bool)

(assert (=> b!1197364 (= c!117352 (validKeyInArray!0 (select (arr!37409 _keys!1208) from!1455)))))

(declare-fun b!1197365 () Bool)

(declare-fun lt!543233 () Unit!39636)

(declare-fun lt!543227 () Unit!39636)

(assert (=> b!1197365 (= lt!543233 lt!543227)))

(declare-fun lt!543229 () ListLongMap!17649)

(declare-fun lt!543228 () (_ BitVec 64))

(declare-fun lt!543230 () V!45643)

(declare-fun lt!543232 () (_ BitVec 64))

(assert (=> b!1197365 (not (contains!6884 (+!3933 lt!543229 (tuple2!19669 lt!543228 lt!543230)) lt!543232))))

(assert (=> b!1197365 (= lt!543227 (addStillNotContains!288 lt!543229 lt!543228 lt!543230 lt!543232))))

(assert (=> b!1197365 (= lt!543232 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1197365 (= lt!543230 (get!19141 (select (arr!37410 _values!996) from!1455) (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1197365 (= lt!543228 (select (arr!37409 _keys!1208) from!1455))))

(assert (=> b!1197365 (= lt!543229 call!57261)))

(assert (=> b!1197365 (= e!680258 (+!3933 call!57261 (tuple2!19669 (select (arr!37409 _keys!1208) from!1455) (get!19141 (select (arr!37410 _values!996) from!1455) (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1197366 () Bool)

(declare-fun res!796920 () Bool)

(assert (=> b!1197366 (=> (not res!796920) (not e!680259))))

(assert (=> b!1197366 (= res!796920 (not (contains!6884 lt!543231 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1197367 () Bool)

(assert (=> b!1197367 (= e!680263 (= lt!543231 (getCurrentListMapNoExtraKeys!5253 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1197368 () Bool)

(assert (=> b!1197368 (= e!680262 e!680257)))

(assert (=> b!1197368 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!37946 _keys!1208)))))

(declare-fun res!796921 () Bool)

(assert (=> b!1197368 (= res!796921 (contains!6884 lt!543231 (select (arr!37409 _keys!1208) from!1455)))))

(assert (=> b!1197368 (=> (not res!796921) (not e!680257))))

(assert (= (and d!132309 c!117354) b!1197358))

(assert (= (and d!132309 (not c!117354)) b!1197364))

(assert (= (and b!1197364 c!117352) b!1197365))

(assert (= (and b!1197364 (not c!117352)) b!1197360))

(assert (= (or b!1197365 b!1197360) bm!57258))

(assert (= (and d!132309 res!796919) b!1197366))

(assert (= (and b!1197366 res!796920) b!1197361))

(assert (= (and b!1197361 res!796922) b!1197363))

(assert (= (and b!1197361 c!117351) b!1197368))

(assert (= (and b!1197361 (not c!117351)) b!1197362))

(assert (= (and b!1197368 res!796921) b!1197357))

(assert (= (and b!1197362 c!117353) b!1197367))

(assert (= (and b!1197362 (not c!117353)) b!1197359))

(declare-fun b_lambda!20891 () Bool)

(assert (=> (not b_lambda!20891) (not b!1197357)))

(assert (=> b!1197357 t!39189))

(declare-fun b_and!42317 () Bool)

(assert (= b_and!42315 (and (=> t!39189 result!21619) b_and!42317)))

(declare-fun b_lambda!20893 () Bool)

(assert (=> (not b_lambda!20893) (not b!1197365)))

(assert (=> b!1197365 t!39189))

(declare-fun b_and!42319 () Bool)

(assert (= b_and!42317 (and (=> t!39189 result!21619) b_and!42319)))

(declare-fun m!1104451 () Bool)

(assert (=> b!1197368 m!1104451))

(assert (=> b!1197368 m!1104451))

(declare-fun m!1104453 () Bool)

(assert (=> b!1197368 m!1104453))

(declare-fun m!1104455 () Bool)

(assert (=> d!132309 m!1104455))

(assert (=> d!132309 m!1104293))

(declare-fun m!1104457 () Bool)

(assert (=> b!1197365 m!1104457))

(assert (=> b!1197365 m!1104451))

(declare-fun m!1104459 () Bool)

(assert (=> b!1197365 m!1104459))

(declare-fun m!1104461 () Bool)

(assert (=> b!1197365 m!1104461))

(assert (=> b!1197365 m!1104283))

(declare-fun m!1104463 () Bool)

(assert (=> b!1197365 m!1104463))

(assert (=> b!1197365 m!1104459))

(declare-fun m!1104465 () Bool)

(assert (=> b!1197365 m!1104465))

(assert (=> b!1197365 m!1104463))

(assert (=> b!1197365 m!1104283))

(declare-fun m!1104467 () Bool)

(assert (=> b!1197365 m!1104467))

(declare-fun m!1104469 () Bool)

(assert (=> b!1197366 m!1104469))

(declare-fun m!1104471 () Bool)

(assert (=> bm!57258 m!1104471))

(assert (=> b!1197363 m!1104451))

(assert (=> b!1197363 m!1104451))

(declare-fun m!1104473 () Bool)

(assert (=> b!1197363 m!1104473))

(assert (=> b!1197364 m!1104451))

(assert (=> b!1197364 m!1104451))

(assert (=> b!1197364 m!1104473))

(assert (=> b!1197367 m!1104471))

(assert (=> b!1197357 m!1104451))

(declare-fun m!1104475 () Bool)

(assert (=> b!1197357 m!1104475))

(assert (=> b!1197357 m!1104451))

(assert (=> b!1197357 m!1104283))

(assert (=> b!1197357 m!1104463))

(assert (=> b!1197357 m!1104463))

(assert (=> b!1197357 m!1104283))

(assert (=> b!1197357 m!1104467))

(declare-fun m!1104477 () Bool)

(assert (=> b!1197359 m!1104477))

(assert (=> b!1197214 d!132309))

(declare-fun d!132311 () Bool)

(declare-fun e!680268 () Bool)

(assert (=> d!132311 e!680268))

(declare-fun res!796925 () Bool)

(assert (=> d!132311 (=> (not res!796925) (not e!680268))))

(assert (=> d!132311 (= res!796925 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37946 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37946 _keys!1208))))))))

(declare-fun lt!543236 () Unit!39636)

(declare-fun choose!1791 (array!77532 array!77534 (_ BitVec 32) (_ BitVec 32) V!45643 V!45643 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39636)

(assert (=> d!132311 (= lt!543236 (choose!1791 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!132311 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!37946 _keys!1208)))))

(assert (=> d!132311 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1011 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!543236)))

(declare-fun call!57267 () ListLongMap!17649)

(declare-fun bm!57263 () Bool)

(assert (=> bm!57263 (= call!57267 (getCurrentListMapNoExtraKeys!5253 (array!77533 (store (arr!37409 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37946 _keys!1208)) (array!77535 (store (arr!37410 _values!996) i!673 (ValueCellFull!14484 (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37947 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57264 () Bool)

(declare-fun call!57266 () ListLongMap!17649)

(assert (=> bm!57264 (= call!57266 (getCurrentListMapNoExtraKeys!5253 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1197375 () Bool)

(declare-fun e!680269 () Bool)

(assert (=> b!1197375 (= e!680269 (= call!57267 call!57266))))

(assert (=> b!1197375 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37947 _values!996)))))

(declare-fun b!1197376 () Bool)

(assert (=> b!1197376 (= e!680269 (= call!57267 (-!1805 call!57266 k0!934)))))

(assert (=> b!1197376 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37947 _values!996)))))

(declare-fun b!1197377 () Bool)

(assert (=> b!1197377 (= e!680268 e!680269)))

(declare-fun c!117357 () Bool)

(assert (=> b!1197377 (= c!117357 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(assert (= (and d!132311 res!796925) b!1197377))

(assert (= (and b!1197377 c!117357) b!1197376))

(assert (= (and b!1197377 (not c!117357)) b!1197375))

(assert (= (or b!1197376 b!1197375) bm!57264))

(assert (= (or b!1197376 b!1197375) bm!57263))

(declare-fun b_lambda!20895 () Bool)

(assert (=> (not b_lambda!20895) (not bm!57263)))

(assert (=> bm!57263 t!39189))

(declare-fun b_and!42321 () Bool)

(assert (= b_and!42319 (and (=> t!39189 result!21619) b_and!42321)))

(declare-fun m!1104479 () Bool)

(assert (=> d!132311 m!1104479))

(assert (=> bm!57263 m!1104309))

(assert (=> bm!57263 m!1104283))

(assert (=> bm!57263 m!1104285))

(declare-fun m!1104481 () Bool)

(assert (=> bm!57263 m!1104481))

(assert (=> bm!57264 m!1104305))

(declare-fun m!1104483 () Bool)

(assert (=> b!1197376 m!1104483))

(assert (=> b!1197214 d!132311))

(declare-fun b!1197378 () Bool)

(assert (=> b!1197378 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!37946 _keys!1208)))))

(assert (=> b!1197378 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!37947 _values!996)))))

(declare-fun lt!543241 () ListLongMap!17649)

(declare-fun e!680270 () Bool)

(assert (=> b!1197378 (= e!680270 (= (apply!993 lt!543241 (select (arr!37409 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19141 (select (arr!37410 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1197379 () Bool)

(declare-fun e!680273 () ListLongMap!17649)

(assert (=> b!1197379 (= e!680273 (ListLongMap!17650 Nil!26482))))

(declare-fun d!132313 () Bool)

(declare-fun e!680272 () Bool)

(assert (=> d!132313 e!680272))

(declare-fun res!796926 () Bool)

(assert (=> d!132313 (=> (not res!796926) (not e!680272))))

(assert (=> d!132313 (= res!796926 (not (contains!6884 lt!543241 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132313 (= lt!543241 e!680273)))

(declare-fun c!117361 () Bool)

(assert (=> d!132313 (= c!117361 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37946 _keys!1208)))))

(assert (=> d!132313 (validMask!0 mask!1564)))

(assert (=> d!132313 (= (getCurrentListMapNoExtraKeys!5253 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!543241)))

(declare-fun b!1197380 () Bool)

(declare-fun e!680276 () Bool)

(assert (=> b!1197380 (= e!680276 (isEmpty!981 lt!543241))))

(declare-fun b!1197381 () Bool)

(declare-fun e!680271 () ListLongMap!17649)

(declare-fun call!57268 () ListLongMap!17649)

(assert (=> b!1197381 (= e!680271 call!57268)))

(declare-fun b!1197382 () Bool)

(declare-fun e!680275 () Bool)

(assert (=> b!1197382 (= e!680272 e!680275)))

(declare-fun c!117358 () Bool)

(declare-fun e!680274 () Bool)

(assert (=> b!1197382 (= c!117358 e!680274)))

(declare-fun res!796929 () Bool)

(assert (=> b!1197382 (=> (not res!796929) (not e!680274))))

(assert (=> b!1197382 (= res!796929 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!37946 _keys!1208)))))

(declare-fun bm!57265 () Bool)

(assert (=> bm!57265 (= call!57268 (getCurrentListMapNoExtraKeys!5253 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1197383 () Bool)

(assert (=> b!1197383 (= e!680275 e!680276)))

(declare-fun c!117360 () Bool)

(assert (=> b!1197383 (= c!117360 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!37946 _keys!1208)))))

(declare-fun b!1197384 () Bool)

(assert (=> b!1197384 (= e!680274 (validKeyInArray!0 (select (arr!37409 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1197384 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1197385 () Bool)

(assert (=> b!1197385 (= e!680273 e!680271)))

(declare-fun c!117359 () Bool)

(assert (=> b!1197385 (= c!117359 (validKeyInArray!0 (select (arr!37409 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1197386 () Bool)

(declare-fun lt!543243 () Unit!39636)

(declare-fun lt!543237 () Unit!39636)

(assert (=> b!1197386 (= lt!543243 lt!543237)))

(declare-fun lt!543240 () V!45643)

(declare-fun lt!543238 () (_ BitVec 64))

(declare-fun lt!543239 () ListLongMap!17649)

(declare-fun lt!543242 () (_ BitVec 64))

(assert (=> b!1197386 (not (contains!6884 (+!3933 lt!543239 (tuple2!19669 lt!543238 lt!543240)) lt!543242))))

(assert (=> b!1197386 (= lt!543237 (addStillNotContains!288 lt!543239 lt!543238 lt!543240 lt!543242))))

(assert (=> b!1197386 (= lt!543242 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1197386 (= lt!543240 (get!19141 (select (arr!37410 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1197386 (= lt!543238 (select (arr!37409 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1197386 (= lt!543239 call!57268)))

(assert (=> b!1197386 (= e!680271 (+!3933 call!57268 (tuple2!19669 (select (arr!37409 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19141 (select (arr!37410 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3189 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1197387 () Bool)

(declare-fun res!796927 () Bool)

(assert (=> b!1197387 (=> (not res!796927) (not e!680272))))

(assert (=> b!1197387 (= res!796927 (not (contains!6884 lt!543241 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1197388 () Bool)

(assert (=> b!1197388 (= e!680276 (= lt!543241 (getCurrentListMapNoExtraKeys!5253 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1197389 () Bool)

(assert (=> b!1197389 (= e!680275 e!680270)))

(assert (=> b!1197389 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!37946 _keys!1208)))))

(declare-fun res!796928 () Bool)

(assert (=> b!1197389 (= res!796928 (contains!6884 lt!543241 (select (arr!37409 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1197389 (=> (not res!796928) (not e!680270))))

(assert (= (and d!132313 c!117361) b!1197379))

(assert (= (and d!132313 (not c!117361)) b!1197385))

(assert (= (and b!1197385 c!117359) b!1197386))

(assert (= (and b!1197385 (not c!117359)) b!1197381))

(assert (= (or b!1197386 b!1197381) bm!57265))

(assert (= (and d!132313 res!796926) b!1197387))

(assert (= (and b!1197387 res!796927) b!1197382))

(assert (= (and b!1197382 res!796929) b!1197384))

(assert (= (and b!1197382 c!117358) b!1197389))

(assert (= (and b!1197382 (not c!117358)) b!1197383))

(assert (= (and b!1197389 res!796928) b!1197378))

(assert (= (and b!1197383 c!117360) b!1197388))

(assert (= (and b!1197383 (not c!117360)) b!1197380))

(declare-fun b_lambda!20897 () Bool)

(assert (=> (not b_lambda!20897) (not b!1197378)))

(assert (=> b!1197378 t!39189))

(declare-fun b_and!42323 () Bool)

(assert (= b_and!42321 (and (=> t!39189 result!21619) b_and!42323)))

(declare-fun b_lambda!20899 () Bool)

(assert (=> (not b_lambda!20899) (not b!1197386)))

(assert (=> b!1197386 t!39189))

(declare-fun b_and!42325 () Bool)

(assert (= b_and!42323 (and (=> t!39189 result!21619) b_and!42325)))

(declare-fun m!1104485 () Bool)

(assert (=> b!1197389 m!1104485))

(assert (=> b!1197389 m!1104485))

(declare-fun m!1104487 () Bool)

(assert (=> b!1197389 m!1104487))

(declare-fun m!1104489 () Bool)

(assert (=> d!132313 m!1104489))

(assert (=> d!132313 m!1104293))

(declare-fun m!1104491 () Bool)

(assert (=> b!1197386 m!1104491))

(assert (=> b!1197386 m!1104485))

(declare-fun m!1104493 () Bool)

(assert (=> b!1197386 m!1104493))

(declare-fun m!1104495 () Bool)

(assert (=> b!1197386 m!1104495))

(assert (=> b!1197386 m!1104283))

(declare-fun m!1104497 () Bool)

(assert (=> b!1197386 m!1104497))

(assert (=> b!1197386 m!1104493))

(declare-fun m!1104499 () Bool)

(assert (=> b!1197386 m!1104499))

(assert (=> b!1197386 m!1104497))

(assert (=> b!1197386 m!1104283))

(declare-fun m!1104501 () Bool)

(assert (=> b!1197386 m!1104501))

(declare-fun m!1104503 () Bool)

(assert (=> b!1197387 m!1104503))

(declare-fun m!1104505 () Bool)

(assert (=> bm!57265 m!1104505))

(assert (=> b!1197384 m!1104485))

(assert (=> b!1197384 m!1104485))

(declare-fun m!1104507 () Bool)

(assert (=> b!1197384 m!1104507))

(assert (=> b!1197385 m!1104485))

(assert (=> b!1197385 m!1104485))

(assert (=> b!1197385 m!1104507))

(assert (=> b!1197388 m!1104505))

(assert (=> b!1197378 m!1104485))

(declare-fun m!1104509 () Bool)

(assert (=> b!1197378 m!1104509))

(assert (=> b!1197378 m!1104485))

(assert (=> b!1197378 m!1104283))

(assert (=> b!1197378 m!1104497))

(assert (=> b!1197378 m!1104497))

(assert (=> b!1197378 m!1104283))

(assert (=> b!1197378 m!1104501))

(declare-fun m!1104511 () Bool)

(assert (=> b!1197380 m!1104511))

(assert (=> bm!57238 d!132313))

(declare-fun d!132315 () Bool)

(declare-fun lt!543246 () ListLongMap!17649)

(assert (=> d!132315 (not (contains!6884 lt!543246 k0!934))))

(declare-fun removeStrictlySorted!93 (List!26485 (_ BitVec 64)) List!26485)

(assert (=> d!132315 (= lt!543246 (ListLongMap!17650 (removeStrictlySorted!93 (toList!8840 call!57241) k0!934)))))

(assert (=> d!132315 (= (-!1805 call!57241 k0!934) lt!543246)))

(declare-fun bs!33942 () Bool)

(assert (= bs!33942 d!132315))

(declare-fun m!1104513 () Bool)

(assert (=> bs!33942 m!1104513))

(declare-fun m!1104515 () Bool)

(assert (=> bs!33942 m!1104515))

(assert (=> b!1197213 d!132315))

(declare-fun mapIsEmpty!47423 () Bool)

(declare-fun mapRes!47423 () Bool)

(assert (=> mapIsEmpty!47423 mapRes!47423))

(declare-fun b!1197397 () Bool)

(declare-fun e!680281 () Bool)

(assert (=> b!1197397 (= e!680281 tp_is_empty!30387)))

(declare-fun b!1197396 () Bool)

(declare-fun e!680282 () Bool)

(assert (=> b!1197396 (= e!680282 tp_is_empty!30387)))

(declare-fun condMapEmpty!47423 () Bool)

(declare-fun mapDefault!47423 () ValueCell!14484)

(assert (=> mapNonEmpty!47417 (= condMapEmpty!47423 (= mapRest!47417 ((as const (Array (_ BitVec 32) ValueCell!14484)) mapDefault!47423)))))

(assert (=> mapNonEmpty!47417 (= tp!90069 (and e!680281 mapRes!47423))))

(declare-fun mapNonEmpty!47423 () Bool)

(declare-fun tp!90079 () Bool)

(assert (=> mapNonEmpty!47423 (= mapRes!47423 (and tp!90079 e!680282))))

(declare-fun mapKey!47423 () (_ BitVec 32))

(declare-fun mapValue!47423 () ValueCell!14484)

(declare-fun mapRest!47423 () (Array (_ BitVec 32) ValueCell!14484))

(assert (=> mapNonEmpty!47423 (= mapRest!47417 (store mapRest!47423 mapKey!47423 mapValue!47423))))

(assert (= (and mapNonEmpty!47417 condMapEmpty!47423) mapIsEmpty!47423))

(assert (= (and mapNonEmpty!47417 (not condMapEmpty!47423)) mapNonEmpty!47423))

(assert (= (and mapNonEmpty!47423 ((_ is ValueCellFull!14484) mapValue!47423)) b!1197396))

(assert (= (and mapNonEmpty!47417 ((_ is ValueCellFull!14484) mapDefault!47423)) b!1197397))

(declare-fun m!1104517 () Bool)

(assert (=> mapNonEmpty!47423 m!1104517))

(declare-fun b_lambda!20901 () Bool)

(assert (= b_lambda!20885 (or (and start!100356 b_free!25707) b_lambda!20901)))

(declare-fun b_lambda!20903 () Bool)

(assert (= b_lambda!20895 (or (and start!100356 b_free!25707) b_lambda!20903)))

(declare-fun b_lambda!20905 () Bool)

(assert (= b_lambda!20899 (or (and start!100356 b_free!25707) b_lambda!20905)))

(declare-fun b_lambda!20907 () Bool)

(assert (= b_lambda!20891 (or (and start!100356 b_free!25707) b_lambda!20907)))

(declare-fun b_lambda!20909 () Bool)

(assert (= b_lambda!20887 (or (and start!100356 b_free!25707) b_lambda!20909)))

(declare-fun b_lambda!20911 () Bool)

(assert (= b_lambda!20889 (or (and start!100356 b_free!25707) b_lambda!20911)))

(declare-fun b_lambda!20913 () Bool)

(assert (= b_lambda!20883 (or (and start!100356 b_free!25707) b_lambda!20913)))

(declare-fun b_lambda!20915 () Bool)

(assert (= b_lambda!20897 (or (and start!100356 b_free!25707) b_lambda!20915)))

(declare-fun b_lambda!20917 () Bool)

(assert (= b_lambda!20893 (or (and start!100356 b_free!25707) b_lambda!20917)))

(check-sat (not b!1197368) (not b!1197376) (not b!1197345) (not bm!57252) (not bm!57256) (not b!1197363) (not b!1197351) (not bm!57258) (not b!1197366) (not bm!57265) (not b!1197357) (not b_next!25707) (not b!1197353) (not b!1197305) (not b!1197340) (not b_lambda!20901) (not b!1197365) (not d!132309) (not b!1197339) (not b!1197307) (not bm!57263) (not b!1197277) (not b!1197308) (not b!1197347) (not b!1197378) (not b!1197300) (not b!1197298) (not b!1197355) (not d!132291) (not b_lambda!20911) (not b!1197387) (not b!1197386) (not b!1197352) (not b!1197275) tp_is_empty!30387 b_and!42325 (not b!1197343) (not b_lambda!20913) (not b!1197364) (not bm!57251) (not b!1197299) (not b_lambda!20917) (not d!132301) (not b!1197341) (not b_lambda!20909) (not b_lambda!20903) (not b!1197388) (not b_lambda!20881) (not b!1197354) (not b!1197302) (not d!132315) (not d!132311) (not b!1197389) (not b_lambda!20905) (not b!1197342) (not b_lambda!20907) (not b!1197284) (not b!1197359) (not b!1197367) (not b!1197333) (not mapNonEmpty!47423) (not d!132313) (not bm!57264) (not b!1197356) (not b!1197385) (not b_lambda!20915) (not b!1197384) (not b!1197380) (not b!1197335) (not d!132307) (not b!1197344) (not bm!57253) (not b!1197296) (not b_lambda!20879) (not bm!57248) (not bm!57257))
(check-sat b_and!42325 (not b_next!25707))

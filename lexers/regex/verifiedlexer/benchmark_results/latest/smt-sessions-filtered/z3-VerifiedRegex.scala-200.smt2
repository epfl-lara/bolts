; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3218 () Bool)

(assert start!3218)

(declare-fun b!47081 () Bool)

(declare-fun b_free!1261 () Bool)

(declare-fun b_next!1261 () Bool)

(assert (=> b!47081 (= b_free!1261 (not b_next!1261))))

(declare-fun tp!31905 () Bool)

(declare-fun b_and!1295 () Bool)

(assert (=> b!47081 (= tp!31905 b_and!1295)))

(declare-fun b!47079 () Bool)

(declare-fun b_free!1263 () Bool)

(declare-fun b_next!1263 () Bool)

(assert (=> b!47079 (= b_free!1263 (not b_next!1263))))

(declare-fun tp!31902 () Bool)

(declare-fun b_and!1297 () Bool)

(assert (=> b!47079 (= tp!31902 b_and!1297)))

(declare-fun e!27088 () Bool)

(declare-fun e!27087 () Bool)

(assert (=> b!47079 (= e!27088 (and e!27087 tp!31902))))

(declare-fun b!47080 () Bool)

(declare-fun e!27086 () Bool)

(declare-fun e!27091 () Bool)

(assert (=> b!47080 (= e!27086 e!27091)))

(declare-fun e!27089 () Bool)

(declare-datatypes ((Hashable!267 0))(
  ( (HashableExt!266 (__x!1326 Int)) )
))
(declare-datatypes ((C!1412 0))(
  ( (C!1413 (val!225 Int)) )
))
(declare-datatypes ((Regex!245 0))(
  ( (ElementMatch!245 (c!16177 C!1412)) (Concat!413 (regOne!1002 Regex!245) (regTwo!1002 Regex!245)) (EmptyExpr!245) (Star!245 (reg!574 Regex!245)) (EmptyLang!245) (Union!245 (regOne!1003 Regex!245) (regTwo!1003 Regex!245)) )
))
(declare-datatypes ((List!795 0))(
  ( (Nil!793) (Cons!793 (h!6189 Regex!245) (t!16994 List!795)) )
))
(declare-datatypes ((Context!206 0))(
  ( (Context!207 (exprs!603 List!795)) )
))
(declare-datatypes ((tuple3!316 0))(
  ( (tuple3!317 (_1!689 Regex!245) (_2!689 Context!206) (_3!203 C!1412)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!972 0))(
  ( (tuple2!973 (_1!690 tuple3!316) (_2!690 (InoxSet Context!206))) )
))
(declare-datatypes ((List!796 0))(
  ( (Nil!794) (Cons!794 (h!6190 tuple2!972) (t!16995 List!796)) )
))
(declare-datatypes ((array!906 0))(
  ( (array!907 (arr!428 (Array (_ BitVec 32) (_ BitVec 64))) (size!769 (_ BitVec 32))) )
))
(declare-datatypes ((array!908 0))(
  ( (array!909 (arr!429 (Array (_ BitVec 32) List!796)) (size!770 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!542 0))(
  ( (LongMapFixedSize!543 (defaultEntry!609 Int) (mask!995 (_ BitVec 32)) (extraKeys!517 (_ BitVec 32)) (zeroValue!527 List!796) (minValue!527 List!796) (_size!674 (_ BitVec 32)) (_keys!562 array!906) (_values!549 array!908) (_vacant!331 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1073 0))(
  ( (Cell!1074 (v!12523 LongMapFixedSize!542)) )
))
(declare-datatypes ((MutLongMap!271 0))(
  ( (LongMap!271 (underlying!737 Cell!1073)) (MutLongMapExt!270 (__x!1327 Int)) )
))
(declare-datatypes ((Cell!1075 0))(
  ( (Cell!1076 (v!12524 MutLongMap!271)) )
))
(declare-datatypes ((MutableMap!267 0))(
  ( (MutableMapExt!266 (__x!1328 Int)) (HashMap!267 (underlying!738 Cell!1075) (hashF!2135 Hashable!267) (_size!675 (_ BitVec 32)) (defaultValue!416 Int)) )
))
(declare-datatypes ((CacheDown!182 0))(
  ( (CacheDown!183 (cache!752 MutableMap!267)) )
))
(declare-fun thiss!28738 () CacheDown!182)

(declare-fun tp!31904 () Bool)

(declare-fun e!27084 () Bool)

(declare-fun tp!31899 () Bool)

(declare-fun array_inv!289 (array!906) Bool)

(declare-fun array_inv!290 (array!908) Bool)

(assert (=> b!47081 (= e!27084 (and tp!31905 tp!31899 tp!31904 (array_inv!289 (_keys!562 (v!12523 (underlying!737 (v!12524 (underlying!738 (cache!752 thiss!28738))))))) (array_inv!290 (_values!549 (v!12523 (underlying!737 (v!12524 (underlying!738 (cache!752 thiss!28738))))))) e!27089))))

(declare-fun mapNonEmpty!1071 () Bool)

(declare-fun mapRes!1071 () Bool)

(declare-fun tp!31901 () Bool)

(declare-fun tp!31900 () Bool)

(assert (=> mapNonEmpty!1071 (= mapRes!1071 (and tp!31901 tp!31900))))

(declare-fun mapKey!1071 () (_ BitVec 32))

(declare-fun mapValue!1071 () List!796)

(declare-fun mapRest!1071 () (Array (_ BitVec 32) List!796))

(assert (=> mapNonEmpty!1071 (= (arr!429 (_values!549 (v!12523 (underlying!737 (v!12524 (underlying!738 (cache!752 thiss!28738))))))) (store mapRest!1071 mapKey!1071 mapValue!1071))))

(declare-fun b!47082 () Bool)

(declare-fun lt!6376 () MutLongMap!271)

(get-info :version)

(assert (=> b!47082 (= e!27087 (and e!27086 ((_ is LongMap!271) lt!6376)))))

(assert (=> b!47082 (= lt!6376 (v!12524 (underlying!738 (cache!752 thiss!28738))))))

(declare-fun b!47083 () Bool)

(declare-fun tp!31903 () Bool)

(assert (=> b!47083 (= e!27089 (and tp!31903 mapRes!1071))))

(declare-fun condMapEmpty!1071 () Bool)

(declare-fun mapDefault!1071 () List!796)

(assert (=> b!47083 (= condMapEmpty!1071 (= (arr!429 (_values!549 (v!12523 (underlying!737 (v!12524 (underlying!738 (cache!752 thiss!28738))))))) ((as const (Array (_ BitVec 32) List!796)) mapDefault!1071)))))

(declare-fun valid!241 (CacheDown!182) Bool)

(assert (=> start!3218 (not (valid!241 thiss!28738))))

(declare-fun e!27085 () Bool)

(declare-fun inv!1077 (CacheDown!182) Bool)

(assert (=> start!3218 (and (inv!1077 thiss!28738) e!27085)))

(declare-fun b!47084 () Bool)

(assert (=> b!47084 (= e!27085 e!27088)))

(declare-fun mapIsEmpty!1071 () Bool)

(assert (=> mapIsEmpty!1071 mapRes!1071))

(declare-fun b!47085 () Bool)

(assert (=> b!47085 (= e!27091 e!27084)))

(assert (= (and b!47083 condMapEmpty!1071) mapIsEmpty!1071))

(assert (= (and b!47083 (not condMapEmpty!1071)) mapNonEmpty!1071))

(assert (= b!47081 b!47083))

(assert (= b!47085 b!47081))

(assert (= b!47080 b!47085))

(assert (= (and b!47082 ((_ is LongMap!271) (v!12524 (underlying!738 (cache!752 thiss!28738))))) b!47080))

(assert (= b!47079 b!47082))

(assert (= (and b!47084 ((_ is HashMap!267) (cache!752 thiss!28738))) b!47079))

(assert (= start!3218 b!47084))

(declare-fun m!21358 () Bool)

(assert (=> b!47081 m!21358))

(declare-fun m!21360 () Bool)

(assert (=> b!47081 m!21360))

(declare-fun m!21362 () Bool)

(assert (=> mapNonEmpty!1071 m!21362))

(declare-fun m!21364 () Bool)

(assert (=> start!3218 m!21364))

(declare-fun m!21366 () Bool)

(assert (=> start!3218 m!21366))

(check-sat (not b!47083) (not mapNonEmpty!1071) (not start!3218) b_and!1295 (not b_next!1261) (not b_next!1263) (not b!47081) b_and!1297)
(check-sat b_and!1295 b_and!1297 (not b_next!1261) (not b_next!1263))
(get-model)

(declare-fun d!5651 () Bool)

(declare-fun validCacheMapDown!28 (MutableMap!267) Bool)

(assert (=> d!5651 (= (valid!241 thiss!28738) (validCacheMapDown!28 (cache!752 thiss!28738)))))

(declare-fun bs!6374 () Bool)

(assert (= bs!6374 d!5651))

(declare-fun m!21368 () Bool)

(assert (=> bs!6374 m!21368))

(assert (=> start!3218 d!5651))

(declare-fun d!5653 () Bool)

(declare-fun res!31750 () Bool)

(declare-fun e!27094 () Bool)

(assert (=> d!5653 (=> (not res!31750) (not e!27094))))

(assert (=> d!5653 (= res!31750 ((_ is HashMap!267) (cache!752 thiss!28738)))))

(assert (=> d!5653 (= (inv!1077 thiss!28738) e!27094)))

(declare-fun b!47088 () Bool)

(assert (=> b!47088 (= e!27094 (validCacheMapDown!28 (cache!752 thiss!28738)))))

(assert (= (and d!5653 res!31750) b!47088))

(assert (=> b!47088 m!21368))

(assert (=> start!3218 d!5653))

(declare-fun d!5655 () Bool)

(assert (=> d!5655 (= (array_inv!289 (_keys!562 (v!12523 (underlying!737 (v!12524 (underlying!738 (cache!752 thiss!28738))))))) (bvsge (size!769 (_keys!562 (v!12523 (underlying!737 (v!12524 (underlying!738 (cache!752 thiss!28738))))))) #b00000000000000000000000000000000))))

(assert (=> b!47081 d!5655))

(declare-fun d!5657 () Bool)

(assert (=> d!5657 (= (array_inv!290 (_values!549 (v!12523 (underlying!737 (v!12524 (underlying!738 (cache!752 thiss!28738))))))) (bvsge (size!770 (_values!549 (v!12523 (underlying!737 (v!12524 (underlying!738 (cache!752 thiss!28738))))))) #b00000000000000000000000000000000))))

(assert (=> b!47081 d!5657))

(declare-fun e!27102 () Bool)

(assert (=> b!47083 (= tp!31903 e!27102)))

(declare-fun b!47097 () Bool)

(declare-fun e!27103 () Bool)

(declare-fun tp!31918 () Bool)

(assert (=> b!47097 (= e!27103 tp!31918)))

(declare-fun setIsEmpty!1286 () Bool)

(declare-fun setRes!1286 () Bool)

(assert (=> setIsEmpty!1286 setRes!1286))

(declare-fun tp!31920 () Bool)

(declare-fun e!27101 () Bool)

(declare-fun setNonEmpty!1286 () Bool)

(declare-fun setElem!1286 () Context!206)

(declare-fun inv!1078 (Context!206) Bool)

(assert (=> setNonEmpty!1286 (= setRes!1286 (and tp!31920 (inv!1078 setElem!1286) e!27101))))

(declare-fun setRest!1286 () (InoxSet Context!206))

(assert (=> setNonEmpty!1286 (= (_2!690 (h!6190 mapDefault!1071)) ((_ map or) (store ((as const (Array Context!206 Bool)) false) setElem!1286 true) setRest!1286))))

(declare-fun tp!31916 () Bool)

(declare-fun tp_is_empty!401 () Bool)

(declare-fun b!47098 () Bool)

(declare-fun tp!31917 () Bool)

(assert (=> b!47098 (= e!27102 (and tp!31917 (inv!1078 (_2!689 (_1!690 (h!6190 mapDefault!1071)))) e!27103 tp_is_empty!401 setRes!1286 tp!31916))))

(declare-fun condSetEmpty!1286 () Bool)

(assert (=> b!47098 (= condSetEmpty!1286 (= (_2!690 (h!6190 mapDefault!1071)) ((as const (Array Context!206 Bool)) false)))))

(declare-fun b!47099 () Bool)

(declare-fun tp!31919 () Bool)

(assert (=> b!47099 (= e!27101 tp!31919)))

(assert (= b!47098 b!47097))

(assert (= (and b!47098 condSetEmpty!1286) setIsEmpty!1286))

(assert (= (and b!47098 (not condSetEmpty!1286)) setNonEmpty!1286))

(assert (= setNonEmpty!1286 b!47099))

(assert (= (and b!47083 ((_ is Cons!794) mapDefault!1071)) b!47098))

(declare-fun m!21370 () Bool)

(assert (=> setNonEmpty!1286 m!21370))

(declare-fun m!21372 () Bool)

(assert (=> b!47098 m!21372))

(declare-fun e!27105 () Bool)

(assert (=> b!47081 (= tp!31899 e!27105)))

(declare-fun b!47100 () Bool)

(declare-fun e!27106 () Bool)

(declare-fun tp!31923 () Bool)

(assert (=> b!47100 (= e!27106 tp!31923)))

(declare-fun setIsEmpty!1287 () Bool)

(declare-fun setRes!1287 () Bool)

(assert (=> setIsEmpty!1287 setRes!1287))

(declare-fun setNonEmpty!1287 () Bool)

(declare-fun e!27104 () Bool)

(declare-fun tp!31925 () Bool)

(declare-fun setElem!1287 () Context!206)

(assert (=> setNonEmpty!1287 (= setRes!1287 (and tp!31925 (inv!1078 setElem!1287) e!27104))))

(declare-fun setRest!1287 () (InoxSet Context!206))

(assert (=> setNonEmpty!1287 (= (_2!690 (h!6190 (zeroValue!527 (v!12523 (underlying!737 (v!12524 (underlying!738 (cache!752 thiss!28738)))))))) ((_ map or) (store ((as const (Array Context!206 Bool)) false) setElem!1287 true) setRest!1287))))

(declare-fun tp!31921 () Bool)

(declare-fun b!47101 () Bool)

(declare-fun tp!31922 () Bool)

(assert (=> b!47101 (= e!27105 (and tp!31922 (inv!1078 (_2!689 (_1!690 (h!6190 (zeroValue!527 (v!12523 (underlying!737 (v!12524 (underlying!738 (cache!752 thiss!28738)))))))))) e!27106 tp_is_empty!401 setRes!1287 tp!31921))))

(declare-fun condSetEmpty!1287 () Bool)

(assert (=> b!47101 (= condSetEmpty!1287 (= (_2!690 (h!6190 (zeroValue!527 (v!12523 (underlying!737 (v!12524 (underlying!738 (cache!752 thiss!28738)))))))) ((as const (Array Context!206 Bool)) false)))))

(declare-fun b!47102 () Bool)

(declare-fun tp!31924 () Bool)

(assert (=> b!47102 (= e!27104 tp!31924)))

(assert (= b!47101 b!47100))

(assert (= (and b!47101 condSetEmpty!1287) setIsEmpty!1287))

(assert (= (and b!47101 (not condSetEmpty!1287)) setNonEmpty!1287))

(assert (= setNonEmpty!1287 b!47102))

(assert (= (and b!47081 ((_ is Cons!794) (zeroValue!527 (v!12523 (underlying!737 (v!12524 (underlying!738 (cache!752 thiss!28738)))))))) b!47101))

(declare-fun m!21374 () Bool)

(assert (=> setNonEmpty!1287 m!21374))

(declare-fun m!21376 () Bool)

(assert (=> b!47101 m!21376))

(declare-fun e!27108 () Bool)

(assert (=> b!47081 (= tp!31904 e!27108)))

(declare-fun b!47103 () Bool)

(declare-fun e!27109 () Bool)

(declare-fun tp!31928 () Bool)

(assert (=> b!47103 (= e!27109 tp!31928)))

(declare-fun setIsEmpty!1288 () Bool)

(declare-fun setRes!1288 () Bool)

(assert (=> setIsEmpty!1288 setRes!1288))

(declare-fun tp!31930 () Bool)

(declare-fun setElem!1288 () Context!206)

(declare-fun e!27107 () Bool)

(declare-fun setNonEmpty!1288 () Bool)

(assert (=> setNonEmpty!1288 (= setRes!1288 (and tp!31930 (inv!1078 setElem!1288) e!27107))))

(declare-fun setRest!1288 () (InoxSet Context!206))

(assert (=> setNonEmpty!1288 (= (_2!690 (h!6190 (minValue!527 (v!12523 (underlying!737 (v!12524 (underlying!738 (cache!752 thiss!28738)))))))) ((_ map or) (store ((as const (Array Context!206 Bool)) false) setElem!1288 true) setRest!1288))))

(declare-fun tp!31927 () Bool)

(declare-fun tp!31926 () Bool)

(declare-fun b!47104 () Bool)

(assert (=> b!47104 (= e!27108 (and tp!31927 (inv!1078 (_2!689 (_1!690 (h!6190 (minValue!527 (v!12523 (underlying!737 (v!12524 (underlying!738 (cache!752 thiss!28738)))))))))) e!27109 tp_is_empty!401 setRes!1288 tp!31926))))

(declare-fun condSetEmpty!1288 () Bool)

(assert (=> b!47104 (= condSetEmpty!1288 (= (_2!690 (h!6190 (minValue!527 (v!12523 (underlying!737 (v!12524 (underlying!738 (cache!752 thiss!28738)))))))) ((as const (Array Context!206 Bool)) false)))))

(declare-fun b!47105 () Bool)

(declare-fun tp!31929 () Bool)

(assert (=> b!47105 (= e!27107 tp!31929)))

(assert (= b!47104 b!47103))

(assert (= (and b!47104 condSetEmpty!1288) setIsEmpty!1288))

(assert (= (and b!47104 (not condSetEmpty!1288)) setNonEmpty!1288))

(assert (= setNonEmpty!1288 b!47105))

(assert (= (and b!47081 ((_ is Cons!794) (minValue!527 (v!12523 (underlying!737 (v!12524 (underlying!738 (cache!752 thiss!28738)))))))) b!47104))

(declare-fun m!21378 () Bool)

(assert (=> setNonEmpty!1288 m!21378))

(declare-fun m!21380 () Bool)

(assert (=> b!47104 m!21380))

(declare-fun mapDefault!1074 () List!796)

(declare-fun e!27125 () Bool)

(declare-fun setRes!1293 () Bool)

(declare-fun tp!31955 () Bool)

(declare-fun tp!31953 () Bool)

(declare-fun e!27122 () Bool)

(declare-fun b!47120 () Bool)

(assert (=> b!47120 (= e!27122 (and tp!31953 (inv!1078 (_2!689 (_1!690 (h!6190 mapDefault!1074)))) e!27125 tp_is_empty!401 setRes!1293 tp!31955))))

(declare-fun condSetEmpty!1293 () Bool)

(assert (=> b!47120 (= condSetEmpty!1293 (= (_2!690 (h!6190 mapDefault!1074)) ((as const (Array Context!206 Bool)) false)))))

(declare-fun setIsEmpty!1293 () Bool)

(assert (=> setIsEmpty!1293 setRes!1293))

(declare-fun setIsEmpty!1294 () Bool)

(declare-fun setRes!1294 () Bool)

(assert (=> setIsEmpty!1294 setRes!1294))

(declare-fun e!27124 () Bool)

(declare-fun setElem!1294 () Context!206)

(declare-fun setNonEmpty!1293 () Bool)

(declare-fun tp!31957 () Bool)

(assert (=> setNonEmpty!1293 (= setRes!1293 (and tp!31957 (inv!1078 setElem!1294) e!27124))))

(declare-fun setRest!1293 () (InoxSet Context!206))

(assert (=> setNonEmpty!1293 (= (_2!690 (h!6190 mapDefault!1074)) ((_ map or) (store ((as const (Array Context!206 Bool)) false) setElem!1294 true) setRest!1293))))

(declare-fun b!47121 () Bool)

(declare-fun e!27123 () Bool)

(declare-fun tp!31963 () Bool)

(assert (=> b!47121 (= e!27123 tp!31963)))

(declare-fun mapValue!1074 () List!796)

(declare-fun b!47122 () Bool)

(declare-fun tp!31956 () Bool)

(declare-fun e!27127 () Bool)

(declare-fun e!27126 () Bool)

(declare-fun tp!31961 () Bool)

(assert (=> b!47122 (= e!27127 (and tp!31961 (inv!1078 (_2!689 (_1!690 (h!6190 mapValue!1074)))) e!27126 tp_is_empty!401 setRes!1294 tp!31956))))

(declare-fun condSetEmpty!1294 () Bool)

(assert (=> b!47122 (= condSetEmpty!1294 (= (_2!690 (h!6190 mapValue!1074)) ((as const (Array Context!206 Bool)) false)))))

(declare-fun mapIsEmpty!1074 () Bool)

(declare-fun mapRes!1074 () Bool)

(assert (=> mapIsEmpty!1074 mapRes!1074))

(declare-fun mapNonEmpty!1074 () Bool)

(declare-fun tp!31958 () Bool)

(assert (=> mapNonEmpty!1074 (= mapRes!1074 (and tp!31958 e!27127))))

(declare-fun mapKey!1074 () (_ BitVec 32))

(declare-fun mapRest!1074 () (Array (_ BitVec 32) List!796))

(assert (=> mapNonEmpty!1074 (= mapRest!1071 (store mapRest!1074 mapKey!1074 mapValue!1074))))

(declare-fun condMapEmpty!1074 () Bool)

(assert (=> mapNonEmpty!1071 (= condMapEmpty!1074 (= mapRest!1071 ((as const (Array (_ BitVec 32) List!796)) mapDefault!1074)))))

(assert (=> mapNonEmpty!1071 (= tp!31901 (and e!27122 mapRes!1074))))

(declare-fun b!47123 () Bool)

(declare-fun tp!31954 () Bool)

(assert (=> b!47123 (= e!27125 tp!31954)))

(declare-fun b!47124 () Bool)

(declare-fun tp!31959 () Bool)

(assert (=> b!47124 (= e!27124 tp!31959)))

(declare-fun setElem!1293 () Context!206)

(declare-fun setNonEmpty!1294 () Bool)

(declare-fun tp!31962 () Bool)

(assert (=> setNonEmpty!1294 (= setRes!1294 (and tp!31962 (inv!1078 setElem!1293) e!27123))))

(declare-fun setRest!1294 () (InoxSet Context!206))

(assert (=> setNonEmpty!1294 (= (_2!690 (h!6190 mapValue!1074)) ((_ map or) (store ((as const (Array Context!206 Bool)) false) setElem!1293 true) setRest!1294))))

(declare-fun b!47125 () Bool)

(declare-fun tp!31960 () Bool)

(assert (=> b!47125 (= e!27126 tp!31960)))

(assert (= (and mapNonEmpty!1071 condMapEmpty!1074) mapIsEmpty!1074))

(assert (= (and mapNonEmpty!1071 (not condMapEmpty!1074)) mapNonEmpty!1074))

(assert (= b!47122 b!47125))

(assert (= (and b!47122 condSetEmpty!1294) setIsEmpty!1294))

(assert (= (and b!47122 (not condSetEmpty!1294)) setNonEmpty!1294))

(assert (= setNonEmpty!1294 b!47121))

(assert (= (and mapNonEmpty!1074 ((_ is Cons!794) mapValue!1074)) b!47122))

(assert (= b!47120 b!47123))

(assert (= (and b!47120 condSetEmpty!1293) setIsEmpty!1293))

(assert (= (and b!47120 (not condSetEmpty!1293)) setNonEmpty!1293))

(assert (= setNonEmpty!1293 b!47124))

(assert (= (and mapNonEmpty!1071 ((_ is Cons!794) mapDefault!1074)) b!47120))

(declare-fun m!21382 () Bool)

(assert (=> b!47120 m!21382))

(declare-fun m!21384 () Bool)

(assert (=> setNonEmpty!1294 m!21384))

(declare-fun m!21386 () Bool)

(assert (=> mapNonEmpty!1074 m!21386))

(declare-fun m!21388 () Bool)

(assert (=> b!47122 m!21388))

(declare-fun m!21390 () Bool)

(assert (=> setNonEmpty!1293 m!21390))

(declare-fun e!27129 () Bool)

(assert (=> mapNonEmpty!1071 (= tp!31900 e!27129)))

(declare-fun b!47126 () Bool)

(declare-fun e!27130 () Bool)

(declare-fun tp!31966 () Bool)

(assert (=> b!47126 (= e!27130 tp!31966)))

(declare-fun setIsEmpty!1295 () Bool)

(declare-fun setRes!1295 () Bool)

(assert (=> setIsEmpty!1295 setRes!1295))

(declare-fun tp!31968 () Bool)

(declare-fun setElem!1295 () Context!206)

(declare-fun setNonEmpty!1295 () Bool)

(declare-fun e!27128 () Bool)

(assert (=> setNonEmpty!1295 (= setRes!1295 (and tp!31968 (inv!1078 setElem!1295) e!27128))))

(declare-fun setRest!1295 () (InoxSet Context!206))

(assert (=> setNonEmpty!1295 (= (_2!690 (h!6190 mapValue!1071)) ((_ map or) (store ((as const (Array Context!206 Bool)) false) setElem!1295 true) setRest!1295))))

(declare-fun tp!31964 () Bool)

(declare-fun tp!31965 () Bool)

(declare-fun b!47127 () Bool)

(assert (=> b!47127 (= e!27129 (and tp!31965 (inv!1078 (_2!689 (_1!690 (h!6190 mapValue!1071)))) e!27130 tp_is_empty!401 setRes!1295 tp!31964))))

(declare-fun condSetEmpty!1295 () Bool)

(assert (=> b!47127 (= condSetEmpty!1295 (= (_2!690 (h!6190 mapValue!1071)) ((as const (Array Context!206 Bool)) false)))))

(declare-fun b!47128 () Bool)

(declare-fun tp!31967 () Bool)

(assert (=> b!47128 (= e!27128 tp!31967)))

(assert (= b!47127 b!47126))

(assert (= (and b!47127 condSetEmpty!1295) setIsEmpty!1295))

(assert (= (and b!47127 (not condSetEmpty!1295)) setNonEmpty!1295))

(assert (= setNonEmpty!1295 b!47128))

(assert (= (and mapNonEmpty!1071 ((_ is Cons!794) mapValue!1071)) b!47127))

(declare-fun m!21392 () Bool)

(assert (=> setNonEmpty!1295 m!21392))

(declare-fun m!21394 () Bool)

(assert (=> b!47127 m!21394))

(check-sat (not b!47125) (not b!47127) (not mapNonEmpty!1074) (not b_next!1261) (not b!47100) (not b!47105) (not b_next!1263) (not b!47099) (not b!47101) tp_is_empty!401 (not b!47124) (not b!47123) (not d!5651) (not b!47102) (not b!47103) (not b!47122) (not setNonEmpty!1295) (not setNonEmpty!1294) b_and!1295 (not setNonEmpty!1288) (not b!47088) (not setNonEmpty!1287) (not setNonEmpty!1293) (not b!47097) (not b!47098) (not b!47120) (not b!47121) (not setNonEmpty!1286) (not b!47128) (not b!47126) (not b!47104) b_and!1297)
(check-sat b_and!1295 b_and!1297 (not b_next!1261) (not b_next!1263))

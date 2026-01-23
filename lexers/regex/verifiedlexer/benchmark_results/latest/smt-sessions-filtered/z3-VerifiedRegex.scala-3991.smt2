; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217150 () Bool)

(assert start!217150)

(declare-fun b!2225184 () Bool)

(declare-fun b_free!64505 () Bool)

(declare-fun b_next!65209 () Bool)

(assert (=> b!2225184 (= b_free!64505 (not b_next!65209))))

(declare-fun tp!694934 () Bool)

(declare-fun b_and!174493 () Bool)

(assert (=> b!2225184 (= tp!694934 b_and!174493)))

(declare-fun b!2225188 () Bool)

(declare-fun b_free!64507 () Bool)

(declare-fun b_next!65211 () Bool)

(assert (=> b!2225188 (= b_free!64507 (not b_next!65211))))

(declare-fun tp!694936 () Bool)

(declare-fun b_and!174495 () Bool)

(assert (=> b!2225188 (= tp!694936 b_and!174495)))

(declare-fun res!954336 () Bool)

(declare-fun e!1421934 () Bool)

(assert (=> start!217150 (=> (not res!954336) (not e!1421934))))

(declare-datatypes ((C!12892 0))(
  ( (C!12893 (val!7494 Int)) )
))
(declare-datatypes ((Regex!6373 0))(
  ( (ElementMatch!6373 (c!355214 C!12892)) (Concat!10711 (regOne!13258 Regex!6373) (regTwo!13258 Regex!6373)) (EmptyExpr!6373) (Star!6373 (reg!6702 Regex!6373)) (EmptyLang!6373) (Union!6373 (regOne!13259 Regex!6373) (regTwo!13259 Regex!6373)) )
))
(declare-datatypes ((List!26215 0))(
  ( (Nil!26121) (Cons!26121 (h!31522 Regex!6373) (t!199627 List!26215)) )
))
(declare-datatypes ((Context!3842 0))(
  ( (Context!3843 (exprs!2421 List!26215)) )
))
(declare-datatypes ((tuple2!25412 0))(
  ( (tuple2!25413 (_1!15090 Context!3842) (_2!15090 C!12892)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25414 0))(
  ( (tuple2!25415 (_1!15091 tuple2!25412) (_2!15091 (InoxSet Context!3842))) )
))
(declare-datatypes ((List!26216 0))(
  ( (Nil!26122) (Cons!26122 (h!31523 tuple2!25414) (t!199628 List!26216)) )
))
(declare-datatypes ((array!10360 0))(
  ( (array!10361 (arr!4609 (Array (_ BitVec 32) (_ BitVec 64))) (size!20390 (_ BitVec 32))) )
))
(declare-datatypes ((array!10362 0))(
  ( (array!10363 (arr!4610 (Array (_ BitVec 32) List!26216)) (size!20391 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6022 0))(
  ( (LongMapFixedSize!6023 (defaultEntry!3376 Int) (mask!7551 (_ BitVec 32)) (extraKeys!3259 (_ BitVec 32)) (zeroValue!3269 List!26216) (minValue!3269 List!26216) (_size!6069 (_ BitVec 32)) (_keys!3308 array!10360) (_values!3291 array!10362) (_vacant!3072 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11861 0))(
  ( (Cell!11862 (v!29686 LongMapFixedSize!6022)) )
))
(declare-datatypes ((MutLongMap!3011 0))(
  ( (LongMap!3011 (underlying!6223 Cell!11861)) (MutLongMapExt!3010 (__x!17259 Int)) )
))
(declare-datatypes ((Cell!11863 0))(
  ( (Cell!11864 (v!29687 MutLongMap!3011)) )
))
(declare-datatypes ((Hashable!2921 0))(
  ( (HashableExt!2920 (__x!17260 Int)) )
))
(declare-datatypes ((MutableMap!2921 0))(
  ( (MutableMapExt!2920 (__x!17261 Int)) (HashMap!2921 (underlying!6224 Cell!11863) (hashF!4844 Hashable!2921) (_size!6070 (_ BitVec 32)) (defaultValue!3083 Int)) )
))
(declare-datatypes ((CacheUp!1964 0))(
  ( (CacheUp!1965 (cache!3302 MutableMap!2921)) )
))
(declare-fun thiss!28682 () CacheUp!1964)

(declare-fun validCacheMapUp!286 (MutableMap!2921) Bool)

(assert (=> start!217150 (= res!954336 (validCacheMapUp!286 (cache!3302 thiss!28682)))))

(assert (=> start!217150 e!1421934))

(declare-fun e!1421932 () Bool)

(declare-fun inv!35467 (CacheUp!1964) Bool)

(assert (=> start!217150 (and (inv!35467 thiss!28682) e!1421932)))

(declare-fun condSetEmpty!19805 () Bool)

(declare-fun res!14206 () (InoxSet Context!3842))

(assert (=> start!217150 (= condSetEmpty!19805 (= res!14206 ((as const (Array Context!3842 Bool)) false)))))

(declare-fun setRes!19805 () Bool)

(assert (=> start!217150 setRes!19805))

(declare-fun ctx!44 () Context!3842)

(declare-fun e!1421929 () Bool)

(declare-fun inv!35468 (Context!3842) Bool)

(assert (=> start!217150 (and (inv!35468 ctx!44) e!1421929)))

(declare-fun tp_is_empty!9971 () Bool)

(assert (=> start!217150 tp_is_empty!9971))

(declare-fun b!2225182 () Bool)

(declare-fun res!954335 () Bool)

(assert (=> b!2225182 (=> (not res!954335) (not e!1421934))))

(declare-fun valid!2313 (MutableMap!2921) Bool)

(assert (=> b!2225182 (= res!954335 (valid!2313 (cache!3302 thiss!28682)))))

(declare-fun b!2225183 () Bool)

(declare-fun res!954338 () Bool)

(assert (=> b!2225183 (=> (not res!954338) (not e!1421934))))

(get-info :version)

(assert (=> b!2225183 (= res!954338 ((_ is HashMap!2921) (cache!3302 thiss!28682)))))

(declare-fun e!1421933 () Bool)

(declare-fun e!1421926 () Bool)

(declare-fun tp!694939 () Bool)

(declare-fun tp!694935 () Bool)

(declare-fun array_inv!3313 (array!10360) Bool)

(declare-fun array_inv!3314 (array!10362) Bool)

(assert (=> b!2225184 (= e!1421933 (and tp!694934 tp!694935 tp!694939 (array_inv!3313 (_keys!3308 (v!29686 (underlying!6223 (v!29687 (underlying!6224 (cache!3302 thiss!28682))))))) (array_inv!3314 (_values!3291 (v!29686 (underlying!6223 (v!29687 (underlying!6224 (cache!3302 thiss!28682))))))) e!1421926))))

(declare-fun b!2225185 () Bool)

(declare-fun e!1421935 () Bool)

(assert (=> b!2225185 (= e!1421932 e!1421935)))

(declare-fun b!2225186 () Bool)

(declare-fun e!1421928 () Bool)

(declare-fun tp!694938 () Bool)

(assert (=> b!2225186 (= e!1421928 tp!694938)))

(declare-fun b!2225187 () Bool)

(declare-fun e!1421930 () Bool)

(declare-fun e!1421931 () Bool)

(assert (=> b!2225187 (= e!1421930 e!1421931)))

(declare-fun e!1421925 () Bool)

(assert (=> b!2225188 (= e!1421935 (and e!1421925 tp!694936))))

(declare-fun mapIsEmpty!14202 () Bool)

(declare-fun mapRes!14202 () Bool)

(assert (=> mapIsEmpty!14202 mapRes!14202))

(declare-fun setIsEmpty!19805 () Bool)

(assert (=> setIsEmpty!19805 setRes!19805))

(declare-fun mapNonEmpty!14202 () Bool)

(declare-fun tp!694941 () Bool)

(declare-fun tp!694940 () Bool)

(assert (=> mapNonEmpty!14202 (= mapRes!14202 (and tp!694941 tp!694940))))

(declare-fun mapKey!14202 () (_ BitVec 32))

(declare-fun mapRest!14202 () (Array (_ BitVec 32) List!26216))

(declare-fun mapValue!14202 () List!26216)

(assert (=> mapNonEmpty!14202 (= (arr!4610 (_values!3291 (v!29686 (underlying!6223 (v!29687 (underlying!6224 (cache!3302 thiss!28682))))))) (store mapRest!14202 mapKey!14202 mapValue!14202))))

(declare-fun b!2225189 () Bool)

(assert (=> b!2225189 (= e!1421931 e!1421933)))

(declare-fun b!2225190 () Bool)

(declare-fun lambda!84150 () Int)

(declare-fun forall!5336 (List!26216 Int) Bool)

(declare-datatypes ((ListMap!785 0))(
  ( (ListMap!786 (toList!1318 List!26216)) )
))
(declare-fun map!5326 (MutableMap!2921) ListMap!785)

(assert (=> b!2225190 (= e!1421934 (not (forall!5336 (toList!1318 (map!5326 (cache!3302 thiss!28682))) lambda!84150)))))

(declare-fun b!2225191 () Bool)

(declare-fun tp!694943 () Bool)

(assert (=> b!2225191 (= e!1421929 tp!694943)))

(declare-fun b!2225192 () Bool)

(declare-fun res!954337 () Bool)

(assert (=> b!2225192 (=> (not res!954337) (not e!1421934))))

(declare-fun a!962 () C!12892)

(declare-fun derivationStepZipperUp!36 (Context!3842 C!12892) (InoxSet Context!3842))

(assert (=> b!2225192 (= res!954337 (= res!14206 (derivationStepZipperUp!36 ctx!44 a!962)))))

(declare-fun b!2225193 () Bool)

(declare-fun tp!694942 () Bool)

(assert (=> b!2225193 (= e!1421926 (and tp!694942 mapRes!14202))))

(declare-fun condMapEmpty!14202 () Bool)

(declare-fun mapDefault!14202 () List!26216)

(assert (=> b!2225193 (= condMapEmpty!14202 (= (arr!4610 (_values!3291 (v!29686 (underlying!6223 (v!29687 (underlying!6224 (cache!3302 thiss!28682))))))) ((as const (Array (_ BitVec 32) List!26216)) mapDefault!14202)))))

(declare-fun setElem!19805 () Context!3842)

(declare-fun setNonEmpty!19805 () Bool)

(declare-fun tp!694937 () Bool)

(assert (=> setNonEmpty!19805 (= setRes!19805 (and tp!694937 (inv!35468 setElem!19805) e!1421928))))

(declare-fun setRest!19805 () (InoxSet Context!3842))

(assert (=> setNonEmpty!19805 (= res!14206 ((_ map or) (store ((as const (Array Context!3842 Bool)) false) setElem!19805 true) setRest!19805))))

(declare-fun b!2225194 () Bool)

(declare-fun lt!829811 () MutLongMap!3011)

(assert (=> b!2225194 (= e!1421925 (and e!1421930 ((_ is LongMap!3011) lt!829811)))))

(assert (=> b!2225194 (= lt!829811 (v!29687 (underlying!6224 (cache!3302 thiss!28682))))))

(assert (= (and start!217150 res!954336) b!2225192))

(assert (= (and b!2225192 res!954337) b!2225183))

(assert (= (and b!2225183 res!954338) b!2225182))

(assert (= (and b!2225182 res!954335) b!2225190))

(assert (= (and b!2225193 condMapEmpty!14202) mapIsEmpty!14202))

(assert (= (and b!2225193 (not condMapEmpty!14202)) mapNonEmpty!14202))

(assert (= b!2225184 b!2225193))

(assert (= b!2225189 b!2225184))

(assert (= b!2225187 b!2225189))

(assert (= (and b!2225194 ((_ is LongMap!3011) (v!29687 (underlying!6224 (cache!3302 thiss!28682))))) b!2225187))

(assert (= b!2225188 b!2225194))

(assert (= (and b!2225185 ((_ is HashMap!2921) (cache!3302 thiss!28682))) b!2225188))

(assert (= start!217150 b!2225185))

(assert (= (and start!217150 condSetEmpty!19805) setIsEmpty!19805))

(assert (= (and start!217150 (not condSetEmpty!19805)) setNonEmpty!19805))

(assert (= setNonEmpty!19805 b!2225186))

(assert (= start!217150 b!2225191))

(declare-fun m!2664961 () Bool)

(assert (=> b!2225192 m!2664961))

(declare-fun m!2664963 () Bool)

(assert (=> setNonEmpty!19805 m!2664963))

(declare-fun m!2664965 () Bool)

(assert (=> b!2225190 m!2664965))

(declare-fun m!2664967 () Bool)

(assert (=> b!2225190 m!2664967))

(declare-fun m!2664969 () Bool)

(assert (=> start!217150 m!2664969))

(declare-fun m!2664971 () Bool)

(assert (=> start!217150 m!2664971))

(declare-fun m!2664973 () Bool)

(assert (=> start!217150 m!2664973))

(declare-fun m!2664975 () Bool)

(assert (=> b!2225184 m!2664975))

(declare-fun m!2664977 () Bool)

(assert (=> b!2225184 m!2664977))

(declare-fun m!2664979 () Bool)

(assert (=> b!2225182 m!2664979))

(declare-fun m!2664981 () Bool)

(assert (=> mapNonEmpty!14202 m!2664981))

(check-sat (not b!2225182) (not b!2225190) (not b!2225191) b_and!174493 (not b!2225186) (not b_next!65209) b_and!174495 (not b_next!65211) tp_is_empty!9971 (not b!2225193) (not mapNonEmpty!14202) (not setNonEmpty!19805) (not start!217150) (not b!2225184) (not b!2225192))
(check-sat b_and!174495 b_and!174493 (not b_next!65211) (not b_next!65209))
(get-model)

(declare-fun bm!133162 () Bool)

(declare-fun call!133167 () (InoxSet Context!3842))

(declare-fun derivationStepZipperDown!30 (Regex!6373 Context!3842 C!12892) (InoxSet Context!3842))

(assert (=> bm!133162 (= call!133167 (derivationStepZipperDown!30 (h!31522 (exprs!2421 ctx!44)) (Context!3843 (t!199627 (exprs!2421 ctx!44))) a!962))))

(declare-fun d!664492 () Bool)

(declare-fun c!355219 () Bool)

(declare-fun e!1421943 () Bool)

(assert (=> d!664492 (= c!355219 e!1421943)))

(declare-fun res!954341 () Bool)

(assert (=> d!664492 (=> (not res!954341) (not e!1421943))))

(assert (=> d!664492 (= res!954341 ((_ is Cons!26121) (exprs!2421 ctx!44)))))

(declare-fun e!1421942 () (InoxSet Context!3842))

(assert (=> d!664492 (= (derivationStepZipperUp!36 ctx!44 a!962) e!1421942)))

(declare-fun b!2225205 () Bool)

(declare-fun nullable!1739 (Regex!6373) Bool)

(assert (=> b!2225205 (= e!1421943 (nullable!1739 (h!31522 (exprs!2421 ctx!44))))))

(declare-fun b!2225206 () Bool)

(declare-fun e!1421944 () (InoxSet Context!3842))

(assert (=> b!2225206 (= e!1421944 ((as const (Array Context!3842 Bool)) false))))

(declare-fun b!2225207 () Bool)

(assert (=> b!2225207 (= e!1421942 ((_ map or) call!133167 (derivationStepZipperUp!36 (Context!3843 (t!199627 (exprs!2421 ctx!44))) a!962)))))

(declare-fun b!2225208 () Bool)

(assert (=> b!2225208 (= e!1421944 call!133167)))

(declare-fun b!2225209 () Bool)

(assert (=> b!2225209 (= e!1421942 e!1421944)))

(declare-fun c!355220 () Bool)

(assert (=> b!2225209 (= c!355220 ((_ is Cons!26121) (exprs!2421 ctx!44)))))

(assert (= (and d!664492 res!954341) b!2225205))

(assert (= (and d!664492 c!355219) b!2225207))

(assert (= (and d!664492 (not c!355219)) b!2225209))

(assert (= (and b!2225209 c!355220) b!2225208))

(assert (= (and b!2225209 (not c!355220)) b!2225206))

(assert (= (or b!2225207 b!2225208) bm!133162))

(declare-fun m!2664983 () Bool)

(assert (=> bm!133162 m!2664983))

(declare-fun m!2664985 () Bool)

(assert (=> b!2225205 m!2664985))

(declare-fun m!2664987 () Bool)

(assert (=> b!2225207 m!2664987))

(assert (=> b!2225192 d!664492))

(declare-fun d!664494 () Bool)

(assert (=> d!664494 (= (array_inv!3313 (_keys!3308 (v!29686 (underlying!6223 (v!29687 (underlying!6224 (cache!3302 thiss!28682))))))) (bvsge (size!20390 (_keys!3308 (v!29686 (underlying!6223 (v!29687 (underlying!6224 (cache!3302 thiss!28682))))))) #b00000000000000000000000000000000))))

(assert (=> b!2225184 d!664494))

(declare-fun d!664496 () Bool)

(assert (=> d!664496 (= (array_inv!3314 (_values!3291 (v!29686 (underlying!6223 (v!29687 (underlying!6224 (cache!3302 thiss!28682))))))) (bvsge (size!20391 (_values!3291 (v!29686 (underlying!6223 (v!29687 (underlying!6224 (cache!3302 thiss!28682))))))) #b00000000000000000000000000000000))))

(assert (=> b!2225184 d!664496))

(declare-fun d!664498 () Bool)

(declare-fun lambda!84153 () Int)

(declare-fun forall!5337 (List!26215 Int) Bool)

(assert (=> d!664498 (= (inv!35468 setElem!19805) (forall!5337 (exprs!2421 setElem!19805) lambda!84153))))

(declare-fun bs!453507 () Bool)

(assert (= bs!453507 d!664498))

(declare-fun m!2664989 () Bool)

(assert (=> bs!453507 m!2664989))

(assert (=> setNonEmpty!19805 d!664498))

(declare-fun d!664500 () Bool)

(declare-fun res!954346 () Bool)

(declare-fun e!1421949 () Bool)

(assert (=> d!664500 (=> res!954346 e!1421949)))

(assert (=> d!664500 (= res!954346 ((_ is Nil!26122) (toList!1318 (map!5326 (cache!3302 thiss!28682)))))))

(assert (=> d!664500 (= (forall!5336 (toList!1318 (map!5326 (cache!3302 thiss!28682))) lambda!84150) e!1421949)))

(declare-fun b!2225214 () Bool)

(declare-fun e!1421950 () Bool)

(assert (=> b!2225214 (= e!1421949 e!1421950)))

(declare-fun res!954347 () Bool)

(assert (=> b!2225214 (=> (not res!954347) (not e!1421950))))

(declare-fun dynLambda!11517 (Int tuple2!25414) Bool)

(assert (=> b!2225214 (= res!954347 (dynLambda!11517 lambda!84150 (h!31523 (toList!1318 (map!5326 (cache!3302 thiss!28682))))))))

(declare-fun b!2225215 () Bool)

(assert (=> b!2225215 (= e!1421950 (forall!5336 (t!199628 (toList!1318 (map!5326 (cache!3302 thiss!28682)))) lambda!84150))))

(assert (= (and d!664500 (not res!954346)) b!2225214))

(assert (= (and b!2225214 res!954347) b!2225215))

(declare-fun b_lambda!71625 () Bool)

(assert (=> (not b_lambda!71625) (not b!2225214)))

(declare-fun m!2664991 () Bool)

(assert (=> b!2225214 m!2664991))

(declare-fun m!2664993 () Bool)

(assert (=> b!2225215 m!2664993))

(assert (=> b!2225190 d!664500))

(declare-fun d!664502 () Bool)

(declare-fun lt!829814 () ListMap!785)

(declare-fun invariantList!355 (List!26216) Bool)

(assert (=> d!664502 (invariantList!355 (toList!1318 lt!829814))))

(declare-datatypes ((tuple2!25416 0))(
  ( (tuple2!25417 (_1!15092 (_ BitVec 64)) (_2!15092 List!26216)) )
))
(declare-datatypes ((List!26217 0))(
  ( (Nil!26123) (Cons!26123 (h!31524 tuple2!25416) (t!199629 List!26217)) )
))
(declare-fun extractMap!99 (List!26217) ListMap!785)

(declare-datatypes ((ListLongMap!305 0))(
  ( (ListLongMap!306 (toList!1319 List!26217)) )
))
(declare-fun map!5327 (MutLongMap!3011) ListLongMap!305)

(assert (=> d!664502 (= lt!829814 (extractMap!99 (toList!1319 (map!5327 (v!29687 (underlying!6224 (cache!3302 thiss!28682)))))))))

(assert (=> d!664502 (valid!2313 (cache!3302 thiss!28682))))

(assert (=> d!664502 (= (map!5326 (cache!3302 thiss!28682)) lt!829814)))

(declare-fun bs!453508 () Bool)

(assert (= bs!453508 d!664502))

(declare-fun m!2664995 () Bool)

(assert (=> bs!453508 m!2664995))

(declare-fun m!2664997 () Bool)

(assert (=> bs!453508 m!2664997))

(declare-fun m!2664999 () Bool)

(assert (=> bs!453508 m!2664999))

(assert (=> bs!453508 m!2664979))

(assert (=> b!2225190 d!664502))

(declare-fun d!664504 () Bool)

(declare-fun res!954352 () Bool)

(declare-fun e!1421953 () Bool)

(assert (=> d!664504 (=> (not res!954352) (not e!1421953))))

(declare-fun valid!2314 (MutLongMap!3011) Bool)

(assert (=> d!664504 (= res!954352 (valid!2314 (v!29687 (underlying!6224 (cache!3302 thiss!28682)))))))

(assert (=> d!664504 (= (valid!2313 (cache!3302 thiss!28682)) e!1421953)))

(declare-fun b!2225220 () Bool)

(declare-fun res!954353 () Bool)

(assert (=> b!2225220 (=> (not res!954353) (not e!1421953))))

(declare-fun lambda!84156 () Int)

(declare-fun forall!5338 (List!26217 Int) Bool)

(assert (=> b!2225220 (= res!954353 (forall!5338 (toList!1319 (map!5327 (v!29687 (underlying!6224 (cache!3302 thiss!28682))))) lambda!84156))))

(declare-fun b!2225221 () Bool)

(declare-fun allKeysSameHashInMap!99 (ListLongMap!305 Hashable!2921) Bool)

(assert (=> b!2225221 (= e!1421953 (allKeysSameHashInMap!99 (map!5327 (v!29687 (underlying!6224 (cache!3302 thiss!28682)))) (hashF!4844 (cache!3302 thiss!28682))))))

(assert (= (and d!664504 res!954352) b!2225220))

(assert (= (and b!2225220 res!954353) b!2225221))

(declare-fun m!2665001 () Bool)

(assert (=> d!664504 m!2665001))

(assert (=> b!2225220 m!2664997))

(declare-fun m!2665003 () Bool)

(assert (=> b!2225220 m!2665003))

(assert (=> b!2225221 m!2664997))

(assert (=> b!2225221 m!2664997))

(declare-fun m!2665005 () Bool)

(assert (=> b!2225221 m!2665005))

(assert (=> b!2225182 d!664504))

(declare-fun bs!453509 () Bool)

(declare-fun b!2225227 () Bool)

(assert (= bs!453509 (and b!2225227 b!2225190)))

(declare-fun lambda!84159 () Int)

(assert (=> bs!453509 (= lambda!84159 lambda!84150)))

(declare-fun d!664506 () Bool)

(declare-fun res!954358 () Bool)

(declare-fun e!1421956 () Bool)

(assert (=> d!664506 (=> (not res!954358) (not e!1421956))))

(assert (=> d!664506 (= res!954358 (valid!2313 (cache!3302 thiss!28682)))))

(assert (=> d!664506 (= (validCacheMapUp!286 (cache!3302 thiss!28682)) e!1421956)))

(declare-fun b!2225226 () Bool)

(declare-fun res!954359 () Bool)

(assert (=> b!2225226 (=> (not res!954359) (not e!1421956))))

(assert (=> b!2225226 (= res!954359 (invariantList!355 (toList!1318 (map!5326 (cache!3302 thiss!28682)))))))

(assert (=> b!2225227 (= e!1421956 (forall!5336 (toList!1318 (map!5326 (cache!3302 thiss!28682))) lambda!84159))))

(assert (= (and d!664506 res!954358) b!2225226))

(assert (= (and b!2225226 res!954359) b!2225227))

(assert (=> d!664506 m!2664979))

(assert (=> b!2225226 m!2664965))

(declare-fun m!2665008 () Bool)

(assert (=> b!2225226 m!2665008))

(assert (=> b!2225227 m!2664965))

(declare-fun m!2665010 () Bool)

(assert (=> b!2225227 m!2665010))

(assert (=> start!217150 d!664506))

(declare-fun d!664508 () Bool)

(declare-fun res!954362 () Bool)

(declare-fun e!1421959 () Bool)

(assert (=> d!664508 (=> (not res!954362) (not e!1421959))))

(assert (=> d!664508 (= res!954362 ((_ is HashMap!2921) (cache!3302 thiss!28682)))))

(assert (=> d!664508 (= (inv!35467 thiss!28682) e!1421959)))

(declare-fun b!2225230 () Bool)

(assert (=> b!2225230 (= e!1421959 (validCacheMapUp!286 (cache!3302 thiss!28682)))))

(assert (= (and d!664508 res!954362) b!2225230))

(assert (=> b!2225230 m!2664969))

(assert (=> start!217150 d!664508))

(declare-fun bs!453510 () Bool)

(declare-fun d!664510 () Bool)

(assert (= bs!453510 (and d!664510 d!664498)))

(declare-fun lambda!84160 () Int)

(assert (=> bs!453510 (= lambda!84160 lambda!84153)))

(assert (=> d!664510 (= (inv!35468 ctx!44) (forall!5337 (exprs!2421 ctx!44) lambda!84160))))

(declare-fun bs!453511 () Bool)

(assert (= bs!453511 d!664510))

(declare-fun m!2665012 () Bool)

(assert (=> bs!453511 m!2665012))

(assert (=> start!217150 d!664510))

(declare-fun setIsEmpty!19808 () Bool)

(declare-fun setRes!19808 () Bool)

(assert (=> setIsEmpty!19808 setRes!19808))

(declare-fun e!1421968 () Bool)

(declare-fun e!1421966 () Bool)

(declare-fun tp!694954 () Bool)

(declare-fun b!2225239 () Bool)

(assert (=> b!2225239 (= e!1421968 (and (inv!35468 (_1!15090 (_1!15091 (h!31523 (zeroValue!3269 (v!29686 (underlying!6223 (v!29687 (underlying!6224 (cache!3302 thiss!28682)))))))))) e!1421966 tp_is_empty!9971 setRes!19808 tp!694954))))

(declare-fun condSetEmpty!19808 () Bool)

(assert (=> b!2225239 (= condSetEmpty!19808 (= (_2!15091 (h!31523 (zeroValue!3269 (v!29686 (underlying!6223 (v!29687 (underlying!6224 (cache!3302 thiss!28682)))))))) ((as const (Array Context!3842 Bool)) false)))))

(declare-fun b!2225240 () Bool)

(declare-fun e!1421967 () Bool)

(declare-fun tp!694952 () Bool)

(assert (=> b!2225240 (= e!1421967 tp!694952)))

(assert (=> b!2225184 (= tp!694935 e!1421968)))

(declare-fun b!2225241 () Bool)

(declare-fun tp!694953 () Bool)

(assert (=> b!2225241 (= e!1421966 tp!694953)))

(declare-fun setElem!19808 () Context!3842)

(declare-fun tp!694955 () Bool)

(declare-fun setNonEmpty!19808 () Bool)

(assert (=> setNonEmpty!19808 (= setRes!19808 (and tp!694955 (inv!35468 setElem!19808) e!1421967))))

(declare-fun setRest!19808 () (InoxSet Context!3842))

(assert (=> setNonEmpty!19808 (= (_2!15091 (h!31523 (zeroValue!3269 (v!29686 (underlying!6223 (v!29687 (underlying!6224 (cache!3302 thiss!28682)))))))) ((_ map or) (store ((as const (Array Context!3842 Bool)) false) setElem!19808 true) setRest!19808))))

(assert (= b!2225239 b!2225241))

(assert (= (and b!2225239 condSetEmpty!19808) setIsEmpty!19808))

(assert (= (and b!2225239 (not condSetEmpty!19808)) setNonEmpty!19808))

(assert (= setNonEmpty!19808 b!2225240))

(assert (= (and b!2225184 ((_ is Cons!26122) (zeroValue!3269 (v!29686 (underlying!6223 (v!29687 (underlying!6224 (cache!3302 thiss!28682)))))))) b!2225239))

(declare-fun m!2665014 () Bool)

(assert (=> b!2225239 m!2665014))

(declare-fun m!2665016 () Bool)

(assert (=> setNonEmpty!19808 m!2665016))

(declare-fun setIsEmpty!19809 () Bool)

(declare-fun setRes!19809 () Bool)

(assert (=> setIsEmpty!19809 setRes!19809))

(declare-fun b!2225242 () Bool)

(declare-fun e!1421969 () Bool)

(declare-fun tp!694958 () Bool)

(declare-fun e!1421971 () Bool)

(assert (=> b!2225242 (= e!1421971 (and (inv!35468 (_1!15090 (_1!15091 (h!31523 (minValue!3269 (v!29686 (underlying!6223 (v!29687 (underlying!6224 (cache!3302 thiss!28682)))))))))) e!1421969 tp_is_empty!9971 setRes!19809 tp!694958))))

(declare-fun condSetEmpty!19809 () Bool)

(assert (=> b!2225242 (= condSetEmpty!19809 (= (_2!15091 (h!31523 (minValue!3269 (v!29686 (underlying!6223 (v!29687 (underlying!6224 (cache!3302 thiss!28682)))))))) ((as const (Array Context!3842 Bool)) false)))))

(declare-fun b!2225243 () Bool)

(declare-fun e!1421970 () Bool)

(declare-fun tp!694956 () Bool)

(assert (=> b!2225243 (= e!1421970 tp!694956)))

(assert (=> b!2225184 (= tp!694939 e!1421971)))

(declare-fun b!2225244 () Bool)

(declare-fun tp!694957 () Bool)

(assert (=> b!2225244 (= e!1421969 tp!694957)))

(declare-fun tp!694959 () Bool)

(declare-fun setNonEmpty!19809 () Bool)

(declare-fun setElem!19809 () Context!3842)

(assert (=> setNonEmpty!19809 (= setRes!19809 (and tp!694959 (inv!35468 setElem!19809) e!1421970))))

(declare-fun setRest!19809 () (InoxSet Context!3842))

(assert (=> setNonEmpty!19809 (= (_2!15091 (h!31523 (minValue!3269 (v!29686 (underlying!6223 (v!29687 (underlying!6224 (cache!3302 thiss!28682)))))))) ((_ map or) (store ((as const (Array Context!3842 Bool)) false) setElem!19809 true) setRest!19809))))

(assert (= b!2225242 b!2225244))

(assert (= (and b!2225242 condSetEmpty!19809) setIsEmpty!19809))

(assert (= (and b!2225242 (not condSetEmpty!19809)) setNonEmpty!19809))

(assert (= setNonEmpty!19809 b!2225243))

(assert (= (and b!2225184 ((_ is Cons!26122) (minValue!3269 (v!29686 (underlying!6223 (v!29687 (underlying!6224 (cache!3302 thiss!28682)))))))) b!2225242))

(declare-fun m!2665018 () Bool)

(assert (=> b!2225242 m!2665018))

(declare-fun m!2665020 () Bool)

(assert (=> setNonEmpty!19809 m!2665020))

(declare-fun setIsEmpty!19814 () Bool)

(declare-fun setRes!19814 () Bool)

(assert (=> setIsEmpty!19814 setRes!19814))

(declare-fun e!1421988 () Bool)

(declare-fun e!1421986 () Bool)

(declare-fun setRes!19815 () Bool)

(declare-fun mapDefault!14205 () List!26216)

(declare-fun b!2225259 () Bool)

(declare-fun tp!694980 () Bool)

(assert (=> b!2225259 (= e!1421986 (and (inv!35468 (_1!15090 (_1!15091 (h!31523 mapDefault!14205)))) e!1421988 tp_is_empty!9971 setRes!19815 tp!694980))))

(declare-fun condSetEmpty!19815 () Bool)

(assert (=> b!2225259 (= condSetEmpty!19815 (= (_2!15091 (h!31523 mapDefault!14205)) ((as const (Array Context!3842 Bool)) false)))))

(declare-fun b!2225260 () Bool)

(declare-fun e!1421989 () Bool)

(declare-fun tp!694983 () Bool)

(assert (=> b!2225260 (= e!1421989 tp!694983)))

(declare-fun mapIsEmpty!14205 () Bool)

(declare-fun mapRes!14205 () Bool)

(assert (=> mapIsEmpty!14205 mapRes!14205))

(declare-fun tp!694982 () Bool)

(declare-fun setElem!19814 () Context!3842)

(declare-fun setNonEmpty!19814 () Bool)

(declare-fun e!1421985 () Bool)

(assert (=> setNonEmpty!19814 (= setRes!19814 (and tp!694982 (inv!35468 setElem!19814) e!1421985))))

(declare-fun mapValue!14205 () List!26216)

(declare-fun setRest!19815 () (InoxSet Context!3842))

(assert (=> setNonEmpty!19814 (= (_2!15091 (h!31523 mapValue!14205)) ((_ map or) (store ((as const (Array Context!3842 Bool)) false) setElem!19814 true) setRest!19815))))

(declare-fun mapNonEmpty!14205 () Bool)

(declare-fun tp!694986 () Bool)

(declare-fun e!1421984 () Bool)

(assert (=> mapNonEmpty!14205 (= mapRes!14205 (and tp!694986 e!1421984))))

(declare-fun mapRest!14205 () (Array (_ BitVec 32) List!26216))

(declare-fun mapKey!14205 () (_ BitVec 32))

(assert (=> mapNonEmpty!14205 (= mapRest!14202 (store mapRest!14205 mapKey!14205 mapValue!14205))))

(declare-fun b!2225261 () Bool)

(declare-fun tp!694979 () Bool)

(assert (=> b!2225261 (= e!1421985 tp!694979)))

(declare-fun tp!694985 () Bool)

(declare-fun setNonEmpty!19815 () Bool)

(declare-fun setElem!19815 () Context!3842)

(assert (=> setNonEmpty!19815 (= setRes!19815 (and tp!694985 (inv!35468 setElem!19815) e!1421989))))

(declare-fun setRest!19814 () (InoxSet Context!3842))

(assert (=> setNonEmpty!19815 (= (_2!15091 (h!31523 mapDefault!14205)) ((_ map or) (store ((as const (Array Context!3842 Bool)) false) setElem!19815 true) setRest!19814))))

(declare-fun b!2225262 () Bool)

(declare-fun tp!694981 () Bool)

(assert (=> b!2225262 (= e!1421988 tp!694981)))

(declare-fun condMapEmpty!14205 () Bool)

(assert (=> mapNonEmpty!14202 (= condMapEmpty!14205 (= mapRest!14202 ((as const (Array (_ BitVec 32) List!26216)) mapDefault!14205)))))

(assert (=> mapNonEmpty!14202 (= tp!694941 (and e!1421986 mapRes!14205))))

(declare-fun e!1421987 () Bool)

(declare-fun b!2225263 () Bool)

(declare-fun tp!694978 () Bool)

(assert (=> b!2225263 (= e!1421984 (and (inv!35468 (_1!15090 (_1!15091 (h!31523 mapValue!14205)))) e!1421987 tp_is_empty!9971 setRes!19814 tp!694978))))

(declare-fun condSetEmpty!19814 () Bool)

(assert (=> b!2225263 (= condSetEmpty!19814 (= (_2!15091 (h!31523 mapValue!14205)) ((as const (Array Context!3842 Bool)) false)))))

(declare-fun setIsEmpty!19815 () Bool)

(assert (=> setIsEmpty!19815 setRes!19815))

(declare-fun b!2225264 () Bool)

(declare-fun tp!694984 () Bool)

(assert (=> b!2225264 (= e!1421987 tp!694984)))

(assert (= (and mapNonEmpty!14202 condMapEmpty!14205) mapIsEmpty!14205))

(assert (= (and mapNonEmpty!14202 (not condMapEmpty!14205)) mapNonEmpty!14205))

(assert (= b!2225263 b!2225264))

(assert (= (and b!2225263 condSetEmpty!19814) setIsEmpty!19814))

(assert (= (and b!2225263 (not condSetEmpty!19814)) setNonEmpty!19814))

(assert (= setNonEmpty!19814 b!2225261))

(assert (= (and mapNonEmpty!14205 ((_ is Cons!26122) mapValue!14205)) b!2225263))

(assert (= b!2225259 b!2225262))

(assert (= (and b!2225259 condSetEmpty!19815) setIsEmpty!19815))

(assert (= (and b!2225259 (not condSetEmpty!19815)) setNonEmpty!19815))

(assert (= setNonEmpty!19815 b!2225260))

(assert (= (and mapNonEmpty!14202 ((_ is Cons!26122) mapDefault!14205)) b!2225259))

(declare-fun m!2665022 () Bool)

(assert (=> b!2225259 m!2665022))

(declare-fun m!2665024 () Bool)

(assert (=> mapNonEmpty!14205 m!2665024))

(declare-fun m!2665026 () Bool)

(assert (=> setNonEmpty!19814 m!2665026))

(declare-fun m!2665028 () Bool)

(assert (=> setNonEmpty!19815 m!2665028))

(declare-fun m!2665030 () Bool)

(assert (=> b!2225263 m!2665030))

(declare-fun setIsEmpty!19816 () Bool)

(declare-fun setRes!19816 () Bool)

(assert (=> setIsEmpty!19816 setRes!19816))

(declare-fun tp!694989 () Bool)

(declare-fun e!1421990 () Bool)

(declare-fun e!1421992 () Bool)

(declare-fun b!2225265 () Bool)

(assert (=> b!2225265 (= e!1421992 (and (inv!35468 (_1!15090 (_1!15091 (h!31523 mapValue!14202)))) e!1421990 tp_is_empty!9971 setRes!19816 tp!694989))))

(declare-fun condSetEmpty!19816 () Bool)

(assert (=> b!2225265 (= condSetEmpty!19816 (= (_2!15091 (h!31523 mapValue!14202)) ((as const (Array Context!3842 Bool)) false)))))

(declare-fun b!2225266 () Bool)

(declare-fun e!1421991 () Bool)

(declare-fun tp!694987 () Bool)

(assert (=> b!2225266 (= e!1421991 tp!694987)))

(assert (=> mapNonEmpty!14202 (= tp!694940 e!1421992)))

(declare-fun b!2225267 () Bool)

(declare-fun tp!694988 () Bool)

(assert (=> b!2225267 (= e!1421990 tp!694988)))

(declare-fun setElem!19816 () Context!3842)

(declare-fun tp!694990 () Bool)

(declare-fun setNonEmpty!19816 () Bool)

(assert (=> setNonEmpty!19816 (= setRes!19816 (and tp!694990 (inv!35468 setElem!19816) e!1421991))))

(declare-fun setRest!19816 () (InoxSet Context!3842))

(assert (=> setNonEmpty!19816 (= (_2!15091 (h!31523 mapValue!14202)) ((_ map or) (store ((as const (Array Context!3842 Bool)) false) setElem!19816 true) setRest!19816))))

(assert (= b!2225265 b!2225267))

(assert (= (and b!2225265 condSetEmpty!19816) setIsEmpty!19816))

(assert (= (and b!2225265 (not condSetEmpty!19816)) setNonEmpty!19816))

(assert (= setNonEmpty!19816 b!2225266))

(assert (= (and mapNonEmpty!14202 ((_ is Cons!26122) mapValue!14202)) b!2225265))

(declare-fun m!2665032 () Bool)

(assert (=> b!2225265 m!2665032))

(declare-fun m!2665034 () Bool)

(assert (=> setNonEmpty!19816 m!2665034))

(declare-fun setIsEmpty!19817 () Bool)

(declare-fun setRes!19817 () Bool)

(assert (=> setIsEmpty!19817 setRes!19817))

(declare-fun b!2225268 () Bool)

(declare-fun e!1421993 () Bool)

(declare-fun e!1421995 () Bool)

(declare-fun tp!694993 () Bool)

(assert (=> b!2225268 (= e!1421995 (and (inv!35468 (_1!15090 (_1!15091 (h!31523 mapDefault!14202)))) e!1421993 tp_is_empty!9971 setRes!19817 tp!694993))))

(declare-fun condSetEmpty!19817 () Bool)

(assert (=> b!2225268 (= condSetEmpty!19817 (= (_2!15091 (h!31523 mapDefault!14202)) ((as const (Array Context!3842 Bool)) false)))))

(declare-fun b!2225269 () Bool)

(declare-fun e!1421994 () Bool)

(declare-fun tp!694991 () Bool)

(assert (=> b!2225269 (= e!1421994 tp!694991)))

(assert (=> b!2225193 (= tp!694942 e!1421995)))

(declare-fun b!2225270 () Bool)

(declare-fun tp!694992 () Bool)

(assert (=> b!2225270 (= e!1421993 tp!694992)))

(declare-fun setElem!19817 () Context!3842)

(declare-fun setNonEmpty!19817 () Bool)

(declare-fun tp!694994 () Bool)

(assert (=> setNonEmpty!19817 (= setRes!19817 (and tp!694994 (inv!35468 setElem!19817) e!1421994))))

(declare-fun setRest!19817 () (InoxSet Context!3842))

(assert (=> setNonEmpty!19817 (= (_2!15091 (h!31523 mapDefault!14202)) ((_ map or) (store ((as const (Array Context!3842 Bool)) false) setElem!19817 true) setRest!19817))))

(assert (= b!2225268 b!2225270))

(assert (= (and b!2225268 condSetEmpty!19817) setIsEmpty!19817))

(assert (= (and b!2225268 (not condSetEmpty!19817)) setNonEmpty!19817))

(assert (= setNonEmpty!19817 b!2225269))

(assert (= (and b!2225193 ((_ is Cons!26122) mapDefault!14202)) b!2225268))

(declare-fun m!2665036 () Bool)

(assert (=> b!2225268 m!2665036))

(declare-fun m!2665038 () Bool)

(assert (=> setNonEmpty!19817 m!2665038))

(declare-fun condSetEmpty!19820 () Bool)

(assert (=> setNonEmpty!19805 (= condSetEmpty!19820 (= setRest!19805 ((as const (Array Context!3842 Bool)) false)))))

(declare-fun setRes!19820 () Bool)

(assert (=> setNonEmpty!19805 (= tp!694937 setRes!19820)))

(declare-fun setIsEmpty!19820 () Bool)

(assert (=> setIsEmpty!19820 setRes!19820))

(declare-fun setNonEmpty!19820 () Bool)

(declare-fun e!1421998 () Bool)

(declare-fun setElem!19820 () Context!3842)

(declare-fun tp!694999 () Bool)

(assert (=> setNonEmpty!19820 (= setRes!19820 (and tp!694999 (inv!35468 setElem!19820) e!1421998))))

(declare-fun setRest!19820 () (InoxSet Context!3842))

(assert (=> setNonEmpty!19820 (= setRest!19805 ((_ map or) (store ((as const (Array Context!3842 Bool)) false) setElem!19820 true) setRest!19820))))

(declare-fun b!2225275 () Bool)

(declare-fun tp!695000 () Bool)

(assert (=> b!2225275 (= e!1421998 tp!695000)))

(assert (= (and setNonEmpty!19805 condSetEmpty!19820) setIsEmpty!19820))

(assert (= (and setNonEmpty!19805 (not condSetEmpty!19820)) setNonEmpty!19820))

(assert (= setNonEmpty!19820 b!2225275))

(declare-fun m!2665040 () Bool)

(assert (=> setNonEmpty!19820 m!2665040))

(declare-fun b!2225280 () Bool)

(declare-fun e!1422001 () Bool)

(declare-fun tp!695005 () Bool)

(declare-fun tp!695006 () Bool)

(assert (=> b!2225280 (= e!1422001 (and tp!695005 tp!695006))))

(assert (=> b!2225186 (= tp!694938 e!1422001)))

(assert (= (and b!2225186 ((_ is Cons!26121) (exprs!2421 setElem!19805))) b!2225280))

(declare-fun b!2225281 () Bool)

(declare-fun e!1422002 () Bool)

(declare-fun tp!695007 () Bool)

(declare-fun tp!695008 () Bool)

(assert (=> b!2225281 (= e!1422002 (and tp!695007 tp!695008))))

(assert (=> b!2225191 (= tp!694943 e!1422002)))

(assert (= (and b!2225191 ((_ is Cons!26121) (exprs!2421 ctx!44))) b!2225281))

(declare-fun b_lambda!71627 () Bool)

(assert (= b_lambda!71625 (or b!2225190 b_lambda!71627)))

(declare-fun bs!453512 () Bool)

(declare-fun d!664512 () Bool)

(assert (= bs!453512 (and d!664512 b!2225190)))

(assert (=> bs!453512 (= (dynLambda!11517 lambda!84150 (h!31523 (toList!1318 (map!5326 (cache!3302 thiss!28682))))) (= (_2!15091 (h!31523 (toList!1318 (map!5326 (cache!3302 thiss!28682))))) (derivationStepZipperUp!36 (_1!15090 (_1!15091 (h!31523 (toList!1318 (map!5326 (cache!3302 thiss!28682)))))) (_2!15090 (_1!15091 (h!31523 (toList!1318 (map!5326 (cache!3302 thiss!28682)))))))))))

(declare-fun m!2665042 () Bool)

(assert (=> bs!453512 m!2665042))

(assert (=> b!2225214 d!664512))

(check-sat (not d!664506) (not setNonEmpty!19814) (not d!664502) (not b_next!65209) (not b!2225240) (not d!664510) (not b!2225242) (not b!2225221) (not setNonEmpty!19820) (not setNonEmpty!19817) (not b!2225275) (not setNonEmpty!19809) (not mapNonEmpty!14205) (not setNonEmpty!19815) (not b!2225205) (not b!2225281) (not b!2225215) (not b!2225263) (not b!2225262) (not b!2225230) (not b!2225226) (not b!2225269) (not bm!133162) (not d!664504) (not setNonEmpty!19816) (not b!2225264) (not bs!453512) (not b!2225220) b_and!174493 (not b!2225239) (not b!2225260) (not b!2225244) (not b!2225207) (not b!2225261) (not b!2225265) (not b!2225280) b_and!174495 (not b!2225267) (not b!2225268) (not d!664498) (not b!2225241) (not setNonEmpty!19808) (not b!2225266) (not b_next!65211) (not b!2225243) (not b!2225259) (not b!2225227) tp_is_empty!9971 (not b!2225270) (not b_lambda!71627))
(check-sat b_and!174495 b_and!174493 (not b_next!65211) (not b_next!65209))

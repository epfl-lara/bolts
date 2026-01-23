; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217042 () Bool)

(assert start!217042)

(declare-fun b!2224247 () Bool)

(declare-fun b_free!64465 () Bool)

(declare-fun b_next!65169 () Bool)

(assert (=> b!2224247 (= b_free!64465 (not b_next!65169))))

(declare-fun tp!694312 () Bool)

(declare-fun b_and!174453 () Bool)

(assert (=> b!2224247 (= tp!694312 b_and!174453)))

(declare-fun b!2224248 () Bool)

(declare-fun b_free!64467 () Bool)

(declare-fun b_next!65171 () Bool)

(assert (=> b!2224248 (= b_free!64467 (not b_next!65171))))

(declare-fun tp!694314 () Bool)

(declare-fun b_and!174455 () Bool)

(assert (=> b!2224248 (= tp!694314 b_and!174455)))

(declare-fun b!2224245 () Bool)

(declare-fun e!1421173 () Bool)

(declare-fun e!1421174 () Bool)

(declare-datatypes ((C!12872 0))(
  ( (C!12873 (val!7484 Int)) )
))
(declare-datatypes ((Regex!6363 0))(
  ( (ElementMatch!6363 (c!355111 C!12872)) (Concat!10701 (regOne!13238 Regex!6363) (regTwo!13238 Regex!6363)) (EmptyExpr!6363) (Star!6363 (reg!6692 Regex!6363)) (EmptyLang!6363) (Union!6363 (regOne!13239 Regex!6363) (regTwo!13239 Regex!6363)) )
))
(declare-datatypes ((List!26191 0))(
  ( (Nil!26097) (Cons!26097 (h!31498 Regex!6363) (t!199603 List!26191)) )
))
(declare-datatypes ((Context!3822 0))(
  ( (Context!3823 (exprs!2411 List!26191)) )
))
(declare-datatypes ((tuple2!25342 0))(
  ( (tuple2!25343 (_1!15055 Context!3822) (_2!15055 C!12872)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25344 0))(
  ( (tuple2!25345 (_1!15056 tuple2!25342) (_2!15056 (InoxSet Context!3822))) )
))
(declare-datatypes ((List!26192 0))(
  ( (Nil!26098) (Cons!26098 (h!31499 tuple2!25344) (t!199604 List!26192)) )
))
(declare-datatypes ((array!10310 0))(
  ( (array!10311 (arr!4589 (Array (_ BitVec 32) (_ BitVec 64))) (size!20370 (_ BitVec 32))) )
))
(declare-datatypes ((array!10312 0))(
  ( (array!10313 (arr!4590 (Array (_ BitVec 32) List!26192)) (size!20371 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6002 0))(
  ( (LongMapFixedSize!6003 (defaultEntry!3366 Int) (mask!7536 (_ BitVec 32)) (extraKeys!3249 (_ BitVec 32)) (zeroValue!3259 List!26192) (minValue!3259 List!26192) (_size!6049 (_ BitVec 32)) (_keys!3298 array!10310) (_values!3281 array!10312) (_vacant!3062 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11821 0))(
  ( (Cell!11822 (v!29660 LongMapFixedSize!6002)) )
))
(declare-datatypes ((MutLongMap!3001 0))(
  ( (LongMap!3001 (underlying!6203 Cell!11821)) (MutLongMapExt!3000 (__x!17229 Int)) )
))
(declare-fun lt!829192 () MutLongMap!3001)

(get-info :version)

(assert (=> b!2224245 (= e!1421173 (and e!1421174 ((_ is LongMap!3001) lt!829192)))))

(declare-datatypes ((Cell!11823 0))(
  ( (Cell!11824 (v!29661 MutLongMap!3001)) )
))
(declare-datatypes ((Hashable!2911 0))(
  ( (HashableExt!2910 (__x!17230 Int)) )
))
(declare-datatypes ((MutableMap!2911 0))(
  ( (MutableMapExt!2910 (__x!17231 Int)) (HashMap!2911 (underlying!6204 Cell!11823) (hashF!4834 Hashable!2911) (_size!6050 (_ BitVec 32)) (defaultValue!3073 Int)) )
))
(declare-datatypes ((CacheUp!1944 0))(
  ( (CacheUp!1945 (cache!3292 MutableMap!2911)) )
))
(declare-fun thiss!28682 () CacheUp!1944)

(assert (=> b!2224245 (= lt!829192 (v!29661 (underlying!6204 (cache!3292 thiss!28682))))))

(declare-fun b!2224246 () Bool)

(declare-fun e!1421176 () Bool)

(assert (=> b!2224246 (= e!1421176 (not ((_ is HashMap!2911) (cache!3292 thiss!28682))))))

(declare-fun lambda!84061 () Int)

(declare-fun res!14206 () (InoxSet Context!3822))

(declare-fun lt!829193 () tuple2!25342)

(declare-fun forall!5319 (List!26192 Int) Bool)

(declare-datatypes ((ListMap!769 0))(
  ( (ListMap!770 (toList!1306 List!26192)) )
))
(declare-fun map!5309 (MutableMap!2911) ListMap!769)

(declare-datatypes ((tuple2!25346 0))(
  ( (tuple2!25347 (_1!15057 Bool) (_2!15057 MutableMap!2911)) )
))
(declare-fun update!121 (MutableMap!2911 tuple2!25342 (InoxSet Context!3822)) tuple2!25346)

(assert (=> b!2224246 (forall!5319 (toList!1306 (map!5309 (_2!15057 (update!121 (cache!3292 thiss!28682) lt!829193 res!14206)))) lambda!84061)))

(declare-datatypes ((Unit!39050 0))(
  ( (Unit!39051) )
))
(declare-fun lt!829191 () Unit!39050)

(declare-fun lemmaUpdatePreservesForallPairs!13 (MutableMap!2911 tuple2!25342 (InoxSet Context!3822) Int) Unit!39050)

(assert (=> b!2224246 (= lt!829191 (lemmaUpdatePreservesForallPairs!13 (cache!3292 thiss!28682) lt!829193 res!14206 lambda!84061))))

(declare-fun ctx!44 () Context!3822)

(declare-fun a!962 () C!12872)

(assert (=> b!2224246 (= lt!829193 (tuple2!25343 ctx!44 a!962))))

(declare-fun e!1421169 () Bool)

(declare-fun setRes!19700 () Bool)

(declare-fun tp!694310 () Bool)

(declare-fun setElem!19700 () Context!3822)

(declare-fun setNonEmpty!19700 () Bool)

(declare-fun inv!35433 (Context!3822) Bool)

(assert (=> setNonEmpty!19700 (= setRes!19700 (and tp!694310 (inv!35433 setElem!19700) e!1421169))))

(declare-fun setRest!19700 () (InoxSet Context!3822))

(assert (=> setNonEmpty!19700 (= res!14206 ((_ map or) (store ((as const (Array Context!3822 Bool)) false) setElem!19700 true) setRest!19700))))

(declare-fun e!1421171 () Bool)

(declare-fun tp!694315 () Bool)

(declare-fun tp!694311 () Bool)

(declare-fun e!1421177 () Bool)

(declare-fun array_inv!3295 (array!10310) Bool)

(declare-fun array_inv!3296 (array!10312) Bool)

(assert (=> b!2224247 (= e!1421177 (and tp!694312 tp!694315 tp!694311 (array_inv!3295 (_keys!3298 (v!29660 (underlying!6203 (v!29661 (underlying!6204 (cache!3292 thiss!28682))))))) (array_inv!3296 (_values!3281 (v!29660 (underlying!6203 (v!29661 (underlying!6204 (cache!3292 thiss!28682))))))) e!1421171))))

(declare-fun e!1421170 () Bool)

(assert (=> b!2224248 (= e!1421170 (and e!1421173 tp!694314))))

(declare-fun mapNonEmpty!14157 () Bool)

(declare-fun mapRes!14157 () Bool)

(declare-fun tp!694309 () Bool)

(declare-fun tp!694318 () Bool)

(assert (=> mapNonEmpty!14157 (= mapRes!14157 (and tp!694309 tp!694318))))

(declare-fun mapValue!14157 () List!26192)

(declare-fun mapKey!14157 () (_ BitVec 32))

(declare-fun mapRest!14157 () (Array (_ BitVec 32) List!26192))

(assert (=> mapNonEmpty!14157 (= (arr!4590 (_values!3281 (v!29660 (underlying!6203 (v!29661 (underlying!6204 (cache!3292 thiss!28682))))))) (store mapRest!14157 mapKey!14157 mapValue!14157))))

(declare-fun b!2224249 () Bool)

(declare-fun e!1421172 () Bool)

(assert (=> b!2224249 (= e!1421174 e!1421172)))

(declare-fun b!2224250 () Bool)

(declare-fun tp!694317 () Bool)

(assert (=> b!2224250 (= e!1421171 (and tp!694317 mapRes!14157))))

(declare-fun condMapEmpty!14157 () Bool)

(declare-fun mapDefault!14157 () List!26192)

(assert (=> b!2224250 (= condMapEmpty!14157 (= (arr!4590 (_values!3281 (v!29660 (underlying!6203 (v!29661 (underlying!6204 (cache!3292 thiss!28682))))))) ((as const (Array (_ BitVec 32) List!26192)) mapDefault!14157)))))

(declare-fun mapIsEmpty!14157 () Bool)

(assert (=> mapIsEmpty!14157 mapRes!14157))

(declare-fun b!2224251 () Bool)

(assert (=> b!2224251 (= e!1421172 e!1421177)))

(declare-fun setIsEmpty!19700 () Bool)

(assert (=> setIsEmpty!19700 setRes!19700))

(declare-fun b!2224253 () Bool)

(declare-fun e!1421175 () Bool)

(declare-fun tp!694316 () Bool)

(assert (=> b!2224253 (= e!1421175 tp!694316)))

(declare-fun b!2224254 () Bool)

(declare-fun res!954109 () Bool)

(assert (=> b!2224254 (=> (not res!954109) (not e!1421176))))

(declare-fun derivationStepZipperUp!28 (Context!3822 C!12872) (InoxSet Context!3822))

(assert (=> b!2224254 (= res!954109 (= res!14206 (derivationStepZipperUp!28 ctx!44 a!962)))))

(declare-fun b!2224255 () Bool)

(declare-fun e!1421168 () Bool)

(assert (=> b!2224255 (= e!1421168 e!1421170)))

(declare-fun res!954110 () Bool)

(assert (=> start!217042 (=> (not res!954110) (not e!1421176))))

(declare-fun validCacheMapUp!277 (MutableMap!2911) Bool)

(assert (=> start!217042 (= res!954110 (validCacheMapUp!277 (cache!3292 thiss!28682)))))

(assert (=> start!217042 e!1421176))

(declare-fun inv!35434 (CacheUp!1944) Bool)

(assert (=> start!217042 (and (inv!35434 thiss!28682) e!1421168)))

(declare-fun condSetEmpty!19700 () Bool)

(assert (=> start!217042 (= condSetEmpty!19700 (= res!14206 ((as const (Array Context!3822 Bool)) false)))))

(assert (=> start!217042 setRes!19700))

(assert (=> start!217042 (and (inv!35433 ctx!44) e!1421175)))

(declare-fun tp_is_empty!9951 () Bool)

(assert (=> start!217042 tp_is_empty!9951))

(declare-fun b!2224252 () Bool)

(declare-fun tp!694313 () Bool)

(assert (=> b!2224252 (= e!1421169 tp!694313)))

(assert (= (and start!217042 res!954110) b!2224254))

(assert (= (and b!2224254 res!954109) b!2224246))

(assert (= (and b!2224250 condMapEmpty!14157) mapIsEmpty!14157))

(assert (= (and b!2224250 (not condMapEmpty!14157)) mapNonEmpty!14157))

(assert (= b!2224247 b!2224250))

(assert (= b!2224251 b!2224247))

(assert (= b!2224249 b!2224251))

(assert (= (and b!2224245 ((_ is LongMap!3001) (v!29661 (underlying!6204 (cache!3292 thiss!28682))))) b!2224249))

(assert (= b!2224248 b!2224245))

(assert (= (and b!2224255 ((_ is HashMap!2911) (cache!3292 thiss!28682))) b!2224248))

(assert (= start!217042 b!2224255))

(assert (= (and start!217042 condSetEmpty!19700) setIsEmpty!19700))

(assert (= (and start!217042 (not condSetEmpty!19700)) setNonEmpty!19700))

(assert (= setNonEmpty!19700 b!2224252))

(assert (= start!217042 b!2224253))

(declare-fun m!2664184 () Bool)

(assert (=> b!2224246 m!2664184))

(declare-fun m!2664186 () Bool)

(assert (=> b!2224246 m!2664186))

(declare-fun m!2664188 () Bool)

(assert (=> b!2224246 m!2664188))

(declare-fun m!2664190 () Bool)

(assert (=> b!2224246 m!2664190))

(declare-fun m!2664192 () Bool)

(assert (=> mapNonEmpty!14157 m!2664192))

(declare-fun m!2664194 () Bool)

(assert (=> start!217042 m!2664194))

(declare-fun m!2664196 () Bool)

(assert (=> start!217042 m!2664196))

(declare-fun m!2664198 () Bool)

(assert (=> start!217042 m!2664198))

(declare-fun m!2664200 () Bool)

(assert (=> b!2224247 m!2664200))

(declare-fun m!2664202 () Bool)

(assert (=> b!2224247 m!2664202))

(declare-fun m!2664204 () Bool)

(assert (=> setNonEmpty!19700 m!2664204))

(declare-fun m!2664206 () Bool)

(assert (=> b!2224254 m!2664206))

(check-sat (not b!2224254) (not b!2224246) (not b!2224253) b_and!174453 (not b_next!65169) tp_is_empty!9951 b_and!174455 (not b!2224247) (not mapNonEmpty!14157) (not b!2224252) (not setNonEmpty!19700) (not b_next!65171) (not b!2224250) (not start!217042))
(check-sat b_and!174455 b_and!174453 (not b_next!65171) (not b_next!65169))
(get-model)

(declare-fun d!664383 () Bool)

(declare-fun res!954115 () Bool)

(declare-fun e!1421182 () Bool)

(assert (=> d!664383 (=> res!954115 e!1421182)))

(assert (=> d!664383 (= res!954115 ((_ is Nil!26098) (toList!1306 (map!5309 (_2!15057 (update!121 (cache!3292 thiss!28682) lt!829193 res!14206))))))))

(assert (=> d!664383 (= (forall!5319 (toList!1306 (map!5309 (_2!15057 (update!121 (cache!3292 thiss!28682) lt!829193 res!14206)))) lambda!84061) e!1421182)))

(declare-fun b!2224260 () Bool)

(declare-fun e!1421183 () Bool)

(assert (=> b!2224260 (= e!1421182 e!1421183)))

(declare-fun res!954116 () Bool)

(assert (=> b!2224260 (=> (not res!954116) (not e!1421183))))

(declare-fun dynLambda!11514 (Int tuple2!25344) Bool)

(assert (=> b!2224260 (= res!954116 (dynLambda!11514 lambda!84061 (h!31499 (toList!1306 (map!5309 (_2!15057 (update!121 (cache!3292 thiss!28682) lt!829193 res!14206)))))))))

(declare-fun b!2224261 () Bool)

(assert (=> b!2224261 (= e!1421183 (forall!5319 (t!199604 (toList!1306 (map!5309 (_2!15057 (update!121 (cache!3292 thiss!28682) lt!829193 res!14206))))) lambda!84061))))

(assert (= (and d!664383 (not res!954115)) b!2224260))

(assert (= (and b!2224260 res!954116) b!2224261))

(declare-fun b_lambda!71613 () Bool)

(assert (=> (not b_lambda!71613) (not b!2224260)))

(declare-fun m!2664208 () Bool)

(assert (=> b!2224260 m!2664208))

(declare-fun m!2664210 () Bool)

(assert (=> b!2224261 m!2664210))

(assert (=> b!2224246 d!664383))

(declare-fun d!664385 () Bool)

(declare-fun lt!829196 () ListMap!769)

(declare-fun invariantList!350 (List!26192) Bool)

(assert (=> d!664385 (invariantList!350 (toList!1306 lt!829196))))

(declare-datatypes ((tuple2!25348 0))(
  ( (tuple2!25349 (_1!15058 (_ BitVec 64)) (_2!15058 List!26192)) )
))
(declare-datatypes ((List!26193 0))(
  ( (Nil!26099) (Cons!26099 (h!31500 tuple2!25348) (t!199605 List!26193)) )
))
(declare-fun extractMap!96 (List!26193) ListMap!769)

(declare-datatypes ((ListLongMap!297 0))(
  ( (ListLongMap!298 (toList!1307 List!26193)) )
))
(declare-fun map!5310 (MutLongMap!3001) ListLongMap!297)

(assert (=> d!664385 (= lt!829196 (extractMap!96 (toList!1307 (map!5310 (v!29661 (underlying!6204 (_2!15057 (update!121 (cache!3292 thiss!28682) lt!829193 res!14206))))))))))

(declare-fun valid!2304 (MutableMap!2911) Bool)

(assert (=> d!664385 (valid!2304 (_2!15057 (update!121 (cache!3292 thiss!28682) lt!829193 res!14206)))))

(assert (=> d!664385 (= (map!5309 (_2!15057 (update!121 (cache!3292 thiss!28682) lt!829193 res!14206))) lt!829196)))

(declare-fun bs!453468 () Bool)

(assert (= bs!453468 d!664385))

(declare-fun m!2664212 () Bool)

(assert (=> bs!453468 m!2664212))

(declare-fun m!2664214 () Bool)

(assert (=> bs!453468 m!2664214))

(declare-fun m!2664216 () Bool)

(assert (=> bs!453468 m!2664216))

(declare-fun m!2664218 () Bool)

(assert (=> bs!453468 m!2664218))

(assert (=> b!2224246 d!664385))

(declare-fun bs!453469 () Bool)

(declare-fun b!2224318 () Bool)

(declare-fun b!2224302 () Bool)

(assert (= bs!453469 (and b!2224318 b!2224302)))

(declare-fun lambda!84071 () Int)

(declare-fun lambda!84070 () Int)

(assert (=> bs!453469 (= lambda!84071 lambda!84070)))

(declare-fun call!132961 () ListLongMap!297)

(declare-datatypes ((tuple2!25350 0))(
  ( (tuple2!25351 (_1!15059 Bool) (_2!15059 MutLongMap!3001)) )
))
(declare-fun lt!829317 () tuple2!25350)

(declare-fun lt!829338 () tuple2!25350)

(declare-fun c!355127 () Bool)

(declare-fun bm!132928 () Bool)

(assert (=> bm!132928 (= call!132961 (map!5310 (ite c!355127 (_2!15059 lt!829338) (_2!15059 lt!829317))))))

(declare-fun b!2224300 () Bool)

(declare-fun e!1421215 () Unit!39050)

(declare-fun lt!829360 () Unit!39050)

(assert (=> b!2224300 (= e!1421215 lt!829360)))

(declare-fun lt!829328 () Unit!39050)

(declare-fun call!132959 () Unit!39050)

(assert (=> b!2224300 (= lt!829328 call!132959)))

(declare-fun call!132963 () Bool)

(assert (=> b!2224300 call!132963))

(declare-fun lt!829356 () Unit!39050)

(assert (=> b!2224300 (= lt!829356 lt!829328)))

(declare-fun call!132941 () Unit!39050)

(assert (=> b!2224300 (= lt!829360 call!132941)))

(declare-fun call!132942 () Bool)

(assert (=> b!2224300 call!132942))

(declare-fun b!2224301 () Bool)

(declare-fun call!132948 () ListMap!769)

(declare-fun lt!829342 () ListMap!769)

(assert (=> b!2224301 (= call!132948 lt!829342)))

(declare-fun lt!829332 () Unit!39050)

(declare-fun Unit!39052 () Unit!39050)

(assert (=> b!2224301 (= lt!829332 Unit!39052)))

(declare-fun call!132956 () Bool)

(assert (=> b!2224301 call!132956))

(declare-fun e!1421210 () Unit!39050)

(declare-fun Unit!39053 () Unit!39050)

(assert (=> b!2224301 (= e!1421210 Unit!39053)))

(declare-fun bm!132929 () Bool)

(declare-fun call!132950 () Bool)

(declare-fun forall!5320 (List!26193 Int) Bool)

(assert (=> bm!132929 (= call!132950 (forall!5320 (toList!1307 call!132961) (ite c!355127 lambda!84070 lambda!84071)))))

(declare-fun call!132946 () ListMap!769)

(declare-fun call!132936 () ListMap!769)

(declare-fun bm!132930 () Bool)

(declare-fun +!47 (ListMap!769 tuple2!25344) ListMap!769)

(assert (=> bm!132930 (= call!132946 (+!47 call!132936 (tuple2!25345 lt!829193 res!14206)))))

(declare-fun bm!132931 () Bool)

(declare-fun lt!829310 () ListLongMap!297)

(assert (=> bm!132931 (= call!132936 (extractMap!96 (toList!1307 lt!829310)))))

(declare-fun call!132938 () Bool)

(assert (=> b!2224302 call!132938))

(declare-fun lt!829358 () Unit!39050)

(declare-fun Unit!39054 () Unit!39050)

(assert (=> b!2224302 (= lt!829358 Unit!39054)))

(declare-fun call!132940 () Bool)

(assert (=> b!2224302 call!132940))

(declare-fun lt!829336 () Unit!39050)

(declare-fun Unit!39055 () Unit!39050)

(assert (=> b!2224302 (= lt!829336 Unit!39055)))

(assert (=> b!2224302 call!132950))

(declare-fun lt!829329 () Unit!39050)

(declare-fun lt!829334 () Unit!39050)

(assert (=> b!2224302 (= lt!829329 lt!829334)))

(declare-fun call!132953 () Bool)

(declare-fun call!132962 () Bool)

(assert (=> b!2224302 (= call!132953 call!132962)))

(declare-fun call!132958 () Unit!39050)

(assert (=> b!2224302 (= lt!829334 call!132958)))

(declare-fun lt!829324 () ListMap!769)

(declare-fun call!132935 () ListMap!769)

(assert (=> b!2224302 (= lt!829324 call!132935)))

(declare-fun lt!829346 () ListMap!769)

(declare-fun call!132945 () ListMap!769)

(assert (=> b!2224302 (= lt!829346 call!132945)))

(declare-fun lt!829357 () Unit!39050)

(declare-fun lt!829343 () Unit!39050)

(assert (=> b!2224302 (= lt!829357 lt!829343)))

(declare-fun call!132949 () Bool)

(assert (=> b!2224302 call!132949))

(declare-fun lt!829326 () List!26192)

(declare-fun lt!829314 () (_ BitVec 64))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!7 (ListLongMap!297 (_ BitVec 64) List!26192 tuple2!25342 (InoxSet Context!3822) Hashable!2911) Unit!39050)

(assert (=> b!2224302 (= lt!829343 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!7 lt!829310 lt!829314 lt!829326 lt!829193 res!14206 (hashF!4834 (cache!3292 thiss!28682))))))

(declare-fun lt!829331 () Unit!39050)

(declare-fun lt!829315 () Unit!39050)

(assert (=> b!2224302 (= lt!829331 lt!829315)))

(declare-fun e!1421209 () Bool)

(assert (=> b!2224302 e!1421209))

(declare-fun res!954128 () Bool)

(assert (=> b!2224302 (=> (not res!954128) (not e!1421209))))

(declare-fun call!132960 () Bool)

(assert (=> b!2224302 (= res!954128 call!132960)))

(declare-fun lt!829337 () ListLongMap!297)

(declare-fun call!132934 () ListLongMap!297)

(assert (=> b!2224302 (= lt!829337 call!132934)))

(declare-fun call!132943 () Unit!39050)

(assert (=> b!2224302 (= lt!829315 call!132943)))

(declare-fun lt!829307 () Unit!39050)

(declare-fun Unit!39056 () Unit!39050)

(assert (=> b!2224302 (= lt!829307 Unit!39056)))

(declare-fun noDuplicateKeys!32 (List!26192) Bool)

(assert (=> b!2224302 (noDuplicateKeys!32 lt!829326)))

(declare-fun lt!829325 () Unit!39050)

(declare-fun Unit!39057 () Unit!39050)

(assert (=> b!2224302 (= lt!829325 Unit!39057)))

(declare-fun call!132952 () List!26192)

(declare-fun containsKey!68 (List!26192 tuple2!25342) Bool)

(assert (=> b!2224302 (not (containsKey!68 call!132952 lt!829193))))

(declare-fun lt!829320 () Unit!39050)

(declare-fun Unit!39058 () Unit!39050)

(assert (=> b!2224302 (= lt!829320 Unit!39058)))

(declare-fun lt!829308 () Unit!39050)

(declare-fun lt!829322 () Unit!39050)

(assert (=> b!2224302 (= lt!829308 lt!829322)))

(assert (=> b!2224302 (noDuplicateKeys!32 call!132952)))

(declare-fun lt!829316 () List!26192)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!26 (List!26192 tuple2!25342) Unit!39050)

(assert (=> b!2224302 (= lt!829322 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!26 lt!829316 lt!829193))))

(declare-fun lt!829333 () Unit!39050)

(declare-fun lt!829344 () Unit!39050)

(assert (=> b!2224302 (= lt!829333 lt!829344)))

(assert (=> b!2224302 call!132942))

(assert (=> b!2224302 (= lt!829344 call!132941)))

(declare-fun lt!829345 () Unit!39050)

(declare-fun lt!829335 () Unit!39050)

(assert (=> b!2224302 (= lt!829345 lt!829335)))

(assert (=> b!2224302 call!132963))

(assert (=> b!2224302 (= lt!829335 call!132959)))

(declare-fun e!1421207 () Unit!39050)

(declare-fun Unit!39059 () Unit!39050)

(assert (=> b!2224302 (= e!1421207 Unit!39059)))

(declare-fun bm!132932 () Bool)

(declare-fun call!132955 () ListMap!769)

(declare-fun lt!829350 () tuple2!25346)

(assert (=> bm!132932 (= call!132955 (map!5309 (_2!15057 lt!829350)))))

(declare-fun b!2224303 () Bool)

(declare-fun res!954127 () Bool)

(declare-fun e!1421211 () Bool)

(assert (=> b!2224303 (=> (not res!954127) (not e!1421211))))

(assert (=> b!2224303 (= res!954127 (valid!2304 (_2!15057 lt!829350)))))

(declare-fun lt!829323 () List!26192)

(declare-fun bm!132933 () Bool)

(declare-fun removePairForKey!26 (List!26192 tuple2!25342) List!26192)

(assert (=> bm!132933 (= call!132952 (removePairForKey!26 (ite c!355127 lt!829316 lt!829323) lt!829193))))

(declare-fun b!2224304 () Bool)

(declare-fun e!1421208 () List!26192)

(assert (=> b!2224304 (= e!1421208 Nil!26098)))

(declare-fun lt!829361 () ListMap!769)

(declare-fun bm!132934 () Bool)

(declare-fun lt!829312 () ListMap!769)

(declare-fun lemmaEquivalentThenSameContains!7 (ListMap!769 ListMap!769 tuple2!25342) Unit!39050)

(assert (=> bm!132934 (= call!132958 (lemmaEquivalentThenSameContains!7 (ite c!355127 lt!829346 lt!829312) (ite c!355127 lt!829324 lt!829361) lt!829193))))

(declare-fun b!2224305 () Bool)

(declare-fun e!1421214 () ListMap!769)

(declare-fun call!132937 () ListMap!769)

(assert (=> b!2224305 (= e!1421214 call!132937)))

(declare-fun bm!132935 () Bool)

(declare-fun eq!47 (ListMap!769 ListMap!769) Bool)

(assert (=> bm!132935 (= call!132938 (eq!47 (ite c!355127 call!132945 call!132948) call!132935))))

(declare-fun b!2224306 () Bool)

(declare-fun e!1421212 () Bool)

(declare-fun call!132947 () Bool)

(assert (=> b!2224306 (= e!1421212 call!132947)))

(declare-fun b!2224307 () Bool)

(assert (=> b!2224307 (= call!132945 lt!829342)))

(declare-fun lt!829318 () Unit!39050)

(declare-fun Unit!39060 () Unit!39050)

(assert (=> b!2224307 (= lt!829318 Unit!39060)))

(assert (=> b!2224307 call!132956))

(declare-fun Unit!39061 () Unit!39050)

(assert (=> b!2224307 (= e!1421207 Unit!39061)))

(declare-fun b!2224308 () Bool)

(declare-fun Unit!39062 () Unit!39050)

(assert (=> b!2224308 (= e!1421215 Unit!39062)))

(declare-fun bm!132936 () Bool)

(declare-fun contains!4356 (ListMap!769 tuple2!25342) Bool)

(assert (=> bm!132936 (= call!132962 (contains!4356 (ite c!355127 lt!829324 call!132948) lt!829193))))

(declare-fun b!2224309 () Bool)

(declare-fun e!1421216 () Bool)

(assert (=> b!2224309 (= e!1421212 e!1421216)))

(declare-fun res!954131 () Bool)

(assert (=> b!2224309 (= res!954131 (contains!4356 call!132955 lt!829193))))

(assert (=> b!2224309 (=> (not res!954131) (not e!1421216))))

(declare-fun bm!132937 () Bool)

(declare-fun allKeysSameHashInMap!95 (ListLongMap!297 Hashable!2911) Bool)

(assert (=> bm!132937 (= call!132940 (allKeysSameHashInMap!95 call!132961 (hashF!4834 (cache!3292 thiss!28682))))))

(declare-fun lt!829313 () (_ BitVec 64))

(declare-fun lt!829348 () List!26192)

(declare-fun bm!132938 () Bool)

(declare-fun +!48 (ListLongMap!297 tuple2!25348) ListLongMap!297)

(assert (=> bm!132938 (= call!132934 (+!48 lt!829310 (ite c!355127 (tuple2!25349 lt!829314 lt!829326) (tuple2!25349 lt!829313 lt!829348))))))

(declare-fun lt!829319 () ListLongMap!297)

(declare-fun bm!132939 () Bool)

(declare-fun call!132944 () Bool)

(assert (=> bm!132939 (= call!132944 (allKeysSameHashInMap!95 (ite c!355127 lt!829337 lt!829319) (hashF!4834 (cache!3292 thiss!28682))))))

(declare-fun bm!132940 () Bool)

(assert (=> bm!132940 (= call!132935 (+!47 lt!829342 (tuple2!25345 lt!829193 res!14206)))))

(declare-fun bm!132941 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!26 (List!26192 tuple2!25342 (_ BitVec 64) Hashable!2911) Unit!39050)

(assert (=> bm!132941 (= call!132941 (lemmaRemovePairForKeyPreservesHash!26 (ite c!355127 lt!829316 lt!829323) lt!829193 (ite c!355127 lt!829314 lt!829313) (hashF!4834 (cache!3292 thiss!28682))))))

(declare-fun bm!132942 () Bool)

(assert (=> bm!132942 (= call!132960 (forall!5320 (ite c!355127 (toList!1307 lt!829337) (toList!1307 lt!829319)) (ite c!355127 lambda!84070 lambda!84071)))))

(declare-fun lt!829355 () MutableMap!2911)

(declare-fun bm!132943 () Bool)

(declare-fun lt!829352 () MutableMap!2911)

(assert (=> bm!132943 (= call!132956 (valid!2304 (ite c!355127 lt!829352 lt!829355)))))

(declare-fun bm!132944 () Bool)

(declare-fun call!132939 () ListMap!769)

(assert (=> bm!132944 (= call!132948 call!132939)))

(declare-fun bm!132945 () Bool)

(assert (=> bm!132945 (= call!132937 (map!5309 (cache!3292 thiss!28682)))))

(declare-fun bm!132946 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!26 (ListLongMap!297 (_ BitVec 64) List!26192 Hashable!2911) Unit!39050)

(assert (=> bm!132946 (= call!132943 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!26 lt!829310 (ite c!355127 lt!829314 lt!829313) (ite c!355127 lt!829326 lt!829348) (hashF!4834 (cache!3292 thiss!28682))))))

(declare-fun b!2224310 () Bool)

(declare-fun e!1421213 () Bool)

(assert (=> b!2224310 (= e!1421213 call!132944)))

(declare-fun bm!132947 () Bool)

(declare-fun call!132957 () tuple2!25350)

(declare-fun update!122 (MutLongMap!3001 (_ BitVec 64) List!26192) tuple2!25350)

(assert (=> bm!132947 (= call!132957 (update!122 (v!29661 (underlying!6204 (cache!3292 thiss!28682))) (ite c!355127 lt!829314 lt!829313) (ite c!355127 lt!829326 lt!829348)))))

(declare-fun b!2224311 () Bool)

(assert (=> b!2224311 (= e!1421209 call!132944)))

(declare-fun bm!132948 () Bool)

(declare-fun call!132933 () ListMap!769)

(assert (=> bm!132948 (= call!132933 (extractMap!96 (toList!1307 call!132934)))))

(declare-fun bm!132949 () Bool)

(assert (=> bm!132949 (= call!132949 (eq!47 call!132933 call!132946))))

(declare-fun bm!132950 () Bool)

(assert (=> bm!132950 (= call!132953 (contains!4356 (ite c!355127 lt!829346 lt!829312) lt!829193))))

(declare-fun bm!132951 () Bool)

(declare-fun allKeysSameHash!30 (List!26192 (_ BitVec 64) Hashable!2911) Bool)

(assert (=> bm!132951 (= call!132963 (allKeysSameHash!30 (ite c!355127 lt!829316 lt!829323) (ite c!355127 lt!829314 lt!829313) (hashF!4834 (cache!3292 thiss!28682))))))

(declare-fun d!664387 () Bool)

(assert (=> d!664387 e!1421211))

(declare-fun res!954130 () Bool)

(assert (=> d!664387 (=> (not res!954130) (not e!1421211))))

(assert (=> d!664387 (= res!954130 ((_ is HashMap!2911) (_2!15057 lt!829350)))))

(declare-fun lt!829330 () tuple2!25346)

(assert (=> d!664387 (= lt!829350 (tuple2!25347 (_1!15057 lt!829330) (_2!15057 lt!829330)))))

(declare-fun e!1421206 () tuple2!25346)

(assert (=> d!664387 (= lt!829330 e!1421206)))

(declare-fun contains!4357 (MutableMap!2911 tuple2!25342) Bool)

(assert (=> d!664387 (= c!355127 (contains!4357 (cache!3292 thiss!28682) lt!829193))))

(assert (=> d!664387 (= lt!829310 (map!5310 (v!29661 (underlying!6204 (cache!3292 thiss!28682)))))))

(assert (=> d!664387 (= lt!829342 (map!5309 (cache!3292 thiss!28682)))))

(assert (=> d!664387 (valid!2304 (cache!3292 thiss!28682))))

(assert (=> d!664387 (= (update!121 (cache!3292 thiss!28682) lt!829193 res!14206) lt!829350)))

(declare-fun b!2224312 () Bool)

(assert (=> b!2224312 (= e!1421216 call!132947)))

(declare-fun call!132954 () List!26192)

(declare-fun bm!132952 () Bool)

(declare-fun apply!6460 (MutLongMap!3001 (_ BitVec 64)) List!26192)

(assert (=> bm!132952 (= call!132954 (apply!6460 (v!29661 (underlying!6204 (cache!3292 thiss!28682))) (ite c!355127 lt!829314 lt!829313)))))

(declare-fun b!2224313 () Bool)

(assert (=> b!2224313 (= e!1421208 call!132954)))

(declare-fun bm!132953 () Bool)

(assert (=> bm!132953 (= call!132947 (eq!47 call!132955 e!1421214))))

(declare-fun c!355129 () Bool)

(declare-fun c!355131 () Bool)

(assert (=> bm!132953 (= c!355129 c!355131)))

(declare-fun b!2224314 () Bool)

(declare-datatypes ((tuple2!25352 0))(
  ( (tuple2!25353 (_1!15060 Unit!39050) (_2!15060 MutableMap!2911)) )
))
(declare-fun Unit!39063 () Unit!39050)

(declare-fun Unit!39064 () Unit!39050)

(assert (=> b!2224314 (= e!1421206 (tuple2!25347 (_1!15059 lt!829338) (_2!15060 (ite false (tuple2!25353 Unit!39063 (HashMap!2911 (Cell!11824 (_2!15059 lt!829338)) (hashF!4834 (cache!3292 thiss!28682)) (bvadd (_size!6050 (cache!3292 thiss!28682)) #b00000000000000000000000000000001) (defaultValue!3073 (cache!3292 thiss!28682)))) (tuple2!25353 Unit!39064 lt!829352)))))))

(declare-fun call!132951 () (_ BitVec 64))

(assert (=> b!2224314 (= lt!829314 call!132951)))

(assert (=> b!2224314 (= lt!829316 call!132954)))

(assert (=> b!2224314 (= lt!829326 (Cons!26098 (tuple2!25345 lt!829193 res!14206) call!132952))))

(assert (=> b!2224314 (= lt!829338 call!132957)))

(assert (=> b!2224314 (= lt!829352 (HashMap!2911 (Cell!11824 (_2!15059 lt!829338)) (hashF!4834 (cache!3292 thiss!28682)) (_size!6050 (cache!3292 thiss!28682)) (defaultValue!3073 (cache!3292 thiss!28682))))))

(declare-fun c!355130 () Bool)

(assert (=> b!2224314 (= c!355130 (_1!15059 lt!829338))))

(declare-fun lt!829327 () Unit!39050)

(assert (=> b!2224314 (= lt!829327 e!1421207)))

(declare-fun b!2224315 () Bool)

(assert (=> b!2224315 (= e!1421211 e!1421212)))

(assert (=> b!2224315 (= c!355131 (_1!15057 lt!829350))))

(declare-fun b!2224316 () Bool)

(assert (=> b!2224316 (= e!1421214 (+!47 call!132937 (tuple2!25345 lt!829193 res!14206)))))

(declare-fun bm!132954 () Bool)

(assert (=> bm!132954 (= call!132939 (map!5309 (ite c!355127 lt!829352 lt!829355)))))

(declare-fun b!2224317 () Bool)

(declare-fun Unit!39065 () Unit!39050)

(declare-fun Unit!39066 () Unit!39050)

(assert (=> b!2224317 (= e!1421206 (tuple2!25347 (_1!15059 lt!829317) (_2!15060 (ite (_1!15059 lt!829317) (tuple2!25353 Unit!39065 (HashMap!2911 (Cell!11824 (_2!15059 lt!829317)) (hashF!4834 (cache!3292 thiss!28682)) (bvadd (_size!6050 (cache!3292 thiss!28682)) #b00000000000000000000000000000001) (defaultValue!3073 (cache!3292 thiss!28682)))) (tuple2!25353 Unit!39066 lt!829355)))))))

(assert (=> b!2224317 (= lt!829313 call!132951)))

(declare-fun c!355132 () Bool)

(declare-fun contains!4358 (MutLongMap!3001 (_ BitVec 64)) Bool)

(assert (=> b!2224317 (= c!355132 (contains!4358 (v!29661 (underlying!6204 (cache!3292 thiss!28682))) lt!829313))))

(assert (=> b!2224317 (= lt!829323 e!1421208)))

(assert (=> b!2224317 (= lt!829348 (Cons!26098 (tuple2!25345 lt!829193 res!14206) lt!829323))))

(assert (=> b!2224317 (= lt!829317 call!132957)))

(assert (=> b!2224317 (= lt!829355 (HashMap!2911 (Cell!11824 (_2!15059 lt!829317)) (hashF!4834 (cache!3292 thiss!28682)) (_size!6050 (cache!3292 thiss!28682)) (defaultValue!3073 (cache!3292 thiss!28682))))))

(declare-fun c!355128 () Bool)

(assert (=> b!2224317 (= c!355128 (_1!15059 lt!829317))))

(declare-fun lt!829311 () Unit!39050)

(assert (=> b!2224317 (= lt!829311 e!1421210)))

(assert (=> b!2224318 call!132962))

(declare-fun lt!829339 () Unit!39050)

(declare-fun Unit!39067 () Unit!39050)

(assert (=> b!2224318 (= lt!829339 Unit!39067)))

(assert (=> b!2224318 (contains!4356 call!132935 lt!829193)))

(declare-fun lt!829341 () Unit!39050)

(declare-fun lt!829309 () Unit!39050)

(assert (=> b!2224318 (= lt!829341 lt!829309)))

(assert (=> b!2224318 (= call!132953 (contains!4356 lt!829361 lt!829193))))

(assert (=> b!2224318 (= lt!829309 call!132958)))

(assert (=> b!2224318 (= lt!829361 call!132935)))

(assert (=> b!2224318 (= lt!829312 call!132948)))

(declare-fun lt!829349 () Unit!39050)

(declare-fun Unit!39068 () Unit!39050)

(assert (=> b!2224318 (= lt!829349 Unit!39068)))

(assert (=> b!2224318 call!132938))

(declare-fun lt!829353 () Unit!39050)

(declare-fun Unit!39069 () Unit!39050)

(assert (=> b!2224318 (= lt!829353 Unit!39069)))

(assert (=> b!2224318 call!132940))

(declare-fun lt!829321 () Unit!39050)

(declare-fun Unit!39070 () Unit!39050)

(assert (=> b!2224318 (= lt!829321 Unit!39070)))

(assert (=> b!2224318 call!132950))

(declare-fun lt!829354 () Unit!39050)

(declare-fun lt!829351 () Unit!39050)

(assert (=> b!2224318 (= lt!829354 lt!829351)))

(assert (=> b!2224318 call!132949))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!7 (ListLongMap!297 (_ BitVec 64) List!26192 tuple2!25342 (InoxSet Context!3822) Hashable!2911) Unit!39050)

(assert (=> b!2224318 (= lt!829351 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!7 lt!829310 lt!829313 lt!829348 lt!829193 res!14206 (hashF!4834 (cache!3292 thiss!28682))))))

(declare-fun lt!829359 () Unit!39050)

(declare-fun lt!829347 () Unit!39050)

(assert (=> b!2224318 (= lt!829359 lt!829347)))

(assert (=> b!2224318 e!1421213))

(declare-fun res!954129 () Bool)

(assert (=> b!2224318 (=> (not res!954129) (not e!1421213))))

(assert (=> b!2224318 (= res!954129 call!132960)))

(assert (=> b!2224318 (= lt!829319 call!132934)))

(assert (=> b!2224318 (= lt!829347 call!132943)))

(declare-fun lt!829340 () Unit!39050)

(assert (=> b!2224318 (= lt!829340 e!1421215)))

(declare-fun c!355126 () Bool)

(declare-fun isEmpty!14878 (List!26192) Bool)

(assert (=> b!2224318 (= c!355126 (not (isEmpty!14878 lt!829323)))))

(declare-fun Unit!39071 () Unit!39050)

(assert (=> b!2224318 (= e!1421210 Unit!39071)))

(declare-fun bm!132955 () Bool)

(assert (=> bm!132955 (= call!132945 call!132939)))

(declare-fun bm!132956 () Bool)

(declare-fun hash!566 (Hashable!2911 tuple2!25342) (_ BitVec 64))

(assert (=> bm!132956 (= call!132951 (hash!566 (hashF!4834 (cache!3292 thiss!28682)) lt!829193))))

(declare-fun bm!132957 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!26 (List!26193 (_ BitVec 64) List!26192 Hashable!2911) Unit!39050)

(assert (=> bm!132957 (= call!132959 (lemmaInLongMapAllKeySameHashThenForTuple!26 (toList!1307 lt!829310) (ite c!355127 lt!829314 lt!829313) (ite c!355127 lt!829316 lt!829323) (hashF!4834 (cache!3292 thiss!28682))))))

(declare-fun bm!132958 () Bool)

(assert (=> bm!132958 (= call!132942 (allKeysSameHash!30 call!132952 (ite c!355127 lt!829314 lt!829313) (hashF!4834 (cache!3292 thiss!28682))))))

(assert (= (and d!664387 c!355127) b!2224314))

(assert (= (and d!664387 (not c!355127)) b!2224317))

(assert (= (and b!2224314 c!355130) b!2224302))

(assert (= (and b!2224314 (not c!355130)) b!2224307))

(assert (= (and b!2224302 res!954128) b!2224311))

(assert (= (or b!2224302 b!2224307) bm!132955))

(assert (= (and b!2224317 c!355132) b!2224313))

(assert (= (and b!2224317 (not c!355132)) b!2224304))

(assert (= (and b!2224317 c!355128) b!2224318))

(assert (= (and b!2224317 (not c!355128)) b!2224301))

(assert (= (and b!2224318 c!355126) b!2224300))

(assert (= (and b!2224318 (not c!355126)) b!2224308))

(assert (= (and b!2224318 res!954129) b!2224310))

(assert (= (or b!2224318 b!2224301) bm!132944))

(assert (= (or b!2224302 b!2224300) bm!132941))

(assert (= (or b!2224314 b!2224317) bm!132956))

(assert (= (or b!2224302 b!2224300) bm!132951))

(assert (= (or b!2224302 b!2224318) bm!132950))

(assert (= (or b!2224311 b!2224310) bm!132939))

(assert (= (or b!2224302 b!2224300) bm!132957))

(assert (= (or b!2224302 b!2224318) bm!132936))

(assert (= (or b!2224314 b!2224313) bm!132952))

(assert (= (or b!2224302 b!2224318) bm!132931))

(assert (= (or b!2224302 b!2224318) bm!132940))

(assert (= (or b!2224307 b!2224301) bm!132943))

(assert (= (or bm!132955 bm!132944) bm!132954))

(assert (= (or b!2224302 b!2224318) bm!132946))

(assert (= (or b!2224302 b!2224318) bm!132934))

(assert (= (or b!2224314 b!2224302 b!2224300) bm!132933))

(assert (= (or b!2224314 b!2224317) bm!132947))

(assert (= (or b!2224302 b!2224318) bm!132928))

(assert (= (or b!2224302 b!2224318) bm!132938))

(assert (= (or b!2224302 b!2224318) bm!132942))

(assert (= (or b!2224302 b!2224318) bm!132929))

(assert (= (or b!2224302 b!2224318) bm!132935))

(assert (= (or b!2224302 b!2224318) bm!132937))

(assert (= (or b!2224302 b!2224318) bm!132948))

(assert (= (or b!2224302 b!2224318) bm!132930))

(assert (= (or b!2224302 b!2224300) bm!132958))

(assert (= (or b!2224302 b!2224318) bm!132949))

(assert (= (and d!664387 res!954130) b!2224303))

(assert (= (and b!2224303 res!954127) b!2224315))

(assert (= (and b!2224315 c!355131) b!2224309))

(assert (= (and b!2224315 (not c!355131)) b!2224306))

(assert (= (and b!2224309 res!954131) b!2224312))

(assert (= (or b!2224309 b!2224312 b!2224306) bm!132932))

(assert (= (or b!2224312 b!2224306) bm!132945))

(assert (= (or b!2224312 b!2224306) bm!132953))

(assert (= (and bm!132953 c!355129) b!2224316))

(assert (= (and bm!132953 (not c!355129)) b!2224305))

(declare-fun m!2664220 () Bool)

(assert (=> b!2224309 m!2664220))

(declare-fun m!2664222 () Bool)

(assert (=> bm!132941 m!2664222))

(declare-fun m!2664224 () Bool)

(assert (=> bm!132928 m!2664224))

(declare-fun m!2664226 () Bool)

(assert (=> b!2224317 m!2664226))

(declare-fun m!2664228 () Bool)

(assert (=> bm!132931 m!2664228))

(declare-fun m!2664230 () Bool)

(assert (=> bm!132943 m!2664230))

(declare-fun m!2664232 () Bool)

(assert (=> bm!132932 m!2664232))

(declare-fun m!2664234 () Bool)

(assert (=> bm!132948 m!2664234))

(declare-fun m!2664236 () Bool)

(assert (=> bm!132953 m!2664236))

(declare-fun m!2664238 () Bool)

(assert (=> bm!132929 m!2664238))

(declare-fun m!2664240 () Bool)

(assert (=> bm!132938 m!2664240))

(declare-fun m!2664242 () Bool)

(assert (=> b!2224302 m!2664242))

(declare-fun m!2664244 () Bool)

(assert (=> b!2224302 m!2664244))

(declare-fun m!2664246 () Bool)

(assert (=> b!2224302 m!2664246))

(declare-fun m!2664248 () Bool)

(assert (=> b!2224302 m!2664248))

(declare-fun m!2664250 () Bool)

(assert (=> b!2224302 m!2664250))

(declare-fun m!2664252 () Bool)

(assert (=> bm!132936 m!2664252))

(declare-fun m!2664254 () Bool)

(assert (=> bm!132939 m!2664254))

(declare-fun m!2664256 () Bool)

(assert (=> bm!132933 m!2664256))

(declare-fun m!2664258 () Bool)

(assert (=> bm!132937 m!2664258))

(declare-fun m!2664260 () Bool)

(assert (=> bm!132935 m!2664260))

(declare-fun m!2664262 () Bool)

(assert (=> bm!132947 m!2664262))

(declare-fun m!2664264 () Bool)

(assert (=> b!2224316 m!2664264))

(declare-fun m!2664266 () Bool)

(assert (=> bm!132950 m!2664266))

(declare-fun m!2664268 () Bool)

(assert (=> bm!132930 m!2664268))

(declare-fun m!2664270 () Bool)

(assert (=> bm!132958 m!2664270))

(declare-fun m!2664272 () Bool)

(assert (=> b!2224303 m!2664272))

(declare-fun m!2664274 () Bool)

(assert (=> bm!132956 m!2664274))

(declare-fun m!2664276 () Bool)

(assert (=> b!2224318 m!2664276))

(declare-fun m!2664278 () Bool)

(assert (=> b!2224318 m!2664278))

(declare-fun m!2664280 () Bool)

(assert (=> b!2224318 m!2664280))

(declare-fun m!2664282 () Bool)

(assert (=> b!2224318 m!2664282))

(declare-fun m!2664284 () Bool)

(assert (=> bm!132946 m!2664284))

(declare-fun m!2664286 () Bool)

(assert (=> bm!132940 m!2664286))

(declare-fun m!2664288 () Bool)

(assert (=> bm!132949 m!2664288))

(declare-fun m!2664290 () Bool)

(assert (=> bm!132951 m!2664290))

(declare-fun m!2664292 () Bool)

(assert (=> bm!132957 m!2664292))

(declare-fun m!2664294 () Bool)

(assert (=> bm!132942 m!2664294))

(declare-fun m!2664296 () Bool)

(assert (=> d!664387 m!2664296))

(declare-fun m!2664298 () Bool)

(assert (=> d!664387 m!2664298))

(declare-fun m!2664300 () Bool)

(assert (=> d!664387 m!2664300))

(declare-fun m!2664302 () Bool)

(assert (=> d!664387 m!2664302))

(declare-fun m!2664304 () Bool)

(assert (=> bm!132954 m!2664304))

(declare-fun m!2664306 () Bool)

(assert (=> bm!132952 m!2664306))

(assert (=> bm!132945 m!2664300))

(declare-fun m!2664308 () Bool)

(assert (=> bm!132934 m!2664308))

(assert (=> b!2224246 d!664387))

(declare-fun d!664389 () Bool)

(declare-fun e!1421219 () Bool)

(assert (=> d!664389 e!1421219))

(declare-fun res!954134 () Bool)

(assert (=> d!664389 (=> (not res!954134) (not e!1421219))))

(assert (=> d!664389 (= res!954134 (and (or (not ((_ is HashMap!2911) (cache!3292 thiss!28682))) ((_ is HashMap!2911) (cache!3292 thiss!28682))) ((_ is HashMap!2911) (cache!3292 thiss!28682))))))

(declare-fun lt!829376 () Unit!39050)

(declare-fun choose!13108 (MutableMap!2911 tuple2!25342 (InoxSet Context!3822) Int) Unit!39050)

(assert (=> d!664389 (= lt!829376 (choose!13108 (cache!3292 thiss!28682) lt!829193 res!14206 lambda!84061))))

(assert (=> d!664389 (valid!2304 (cache!3292 thiss!28682))))

(assert (=> d!664389 (= (lemmaUpdatePreservesForallPairs!13 (cache!3292 thiss!28682) lt!829193 res!14206 lambda!84061) lt!829376)))

(declare-fun b!2224321 () Bool)

(declare-fun lt!829374 () MutableMap!2911)

(assert (=> b!2224321 (= e!1421219 (forall!5319 (toList!1306 (map!5309 lt!829374)) lambda!84061))))

(assert (=> b!2224321 ((_ is HashMap!2911) lt!829374)))

(declare-fun lt!829379 () MutableMap!2911)

(assert (=> b!2224321 (= lt!829374 lt!829379)))

(assert (=> b!2224321 ((_ is HashMap!2911) lt!829379)))

(declare-fun lt!829378 () MutableMap!2911)

(assert (=> b!2224321 (= lt!829379 lt!829378)))

(assert (=> b!2224321 ((_ is HashMap!2911) lt!829378)))

(declare-fun lt!829375 () tuple2!25346)

(assert (=> b!2224321 (= lt!829378 (_2!15057 lt!829375))))

(assert (=> b!2224321 ((_ is HashMap!2911) (_2!15057 lt!829375))))

(declare-fun lt!829377 () tuple2!25346)

(assert (=> b!2224321 (= lt!829375 lt!829377)))

(assert (=> b!2224321 ((_ is HashMap!2911) (_2!15057 lt!829377))))

(assert (=> b!2224321 (= lt!829377 (update!121 (cache!3292 thiss!28682) lt!829193 res!14206))))

(assert (= (and d!664389 res!954134) b!2224321))

(declare-fun m!2664310 () Bool)

(assert (=> d!664389 m!2664310))

(assert (=> d!664389 m!2664302))

(declare-fun m!2664312 () Bool)

(assert (=> b!2224321 m!2664312))

(declare-fun m!2664314 () Bool)

(assert (=> b!2224321 m!2664314))

(assert (=> b!2224321 m!2664184))

(assert (=> b!2224246 d!664389))

(declare-fun d!664391 () Bool)

(declare-fun lambda!84074 () Int)

(declare-fun forall!5321 (List!26191 Int) Bool)

(assert (=> d!664391 (= (inv!35433 setElem!19700) (forall!5321 (exprs!2411 setElem!19700) lambda!84074))))

(declare-fun bs!453470 () Bool)

(assert (= bs!453470 d!664391))

(declare-fun m!2664316 () Bool)

(assert (=> bs!453470 m!2664316))

(assert (=> setNonEmpty!19700 d!664391))

(declare-fun b!2224332 () Bool)

(declare-fun e!1421228 () Bool)

(declare-fun nullable!1734 (Regex!6363) Bool)

(assert (=> b!2224332 (= e!1421228 (nullable!1734 (h!31498 (exprs!2411 ctx!44))))))

(declare-fun b!2224333 () Bool)

(declare-fun e!1421227 () (InoxSet Context!3822))

(declare-fun call!132966 () (InoxSet Context!3822))

(assert (=> b!2224333 (= e!1421227 call!132966)))

(declare-fun d!664393 () Bool)

(declare-fun c!355137 () Bool)

(assert (=> d!664393 (= c!355137 e!1421228)))

(declare-fun res!954137 () Bool)

(assert (=> d!664393 (=> (not res!954137) (not e!1421228))))

(assert (=> d!664393 (= res!954137 ((_ is Cons!26097) (exprs!2411 ctx!44)))))

(declare-fun e!1421226 () (InoxSet Context!3822))

(assert (=> d!664393 (= (derivationStepZipperUp!28 ctx!44 a!962) e!1421226)))

(declare-fun bm!132961 () Bool)

(declare-fun derivationStepZipperDown!25 (Regex!6363 Context!3822 C!12872) (InoxSet Context!3822))

(assert (=> bm!132961 (= call!132966 (derivationStepZipperDown!25 (h!31498 (exprs!2411 ctx!44)) (Context!3823 (t!199603 (exprs!2411 ctx!44))) a!962))))

(declare-fun b!2224334 () Bool)

(assert (=> b!2224334 (= e!1421226 e!1421227)))

(declare-fun c!355138 () Bool)

(assert (=> b!2224334 (= c!355138 ((_ is Cons!26097) (exprs!2411 ctx!44)))))

(declare-fun b!2224335 () Bool)

(assert (=> b!2224335 (= e!1421226 ((_ map or) call!132966 (derivationStepZipperUp!28 (Context!3823 (t!199603 (exprs!2411 ctx!44))) a!962)))))

(declare-fun b!2224336 () Bool)

(assert (=> b!2224336 (= e!1421227 ((as const (Array Context!3822 Bool)) false))))

(assert (= (and d!664393 res!954137) b!2224332))

(assert (= (and d!664393 c!355137) b!2224335))

(assert (= (and d!664393 (not c!355137)) b!2224334))

(assert (= (and b!2224334 c!355138) b!2224333))

(assert (= (and b!2224334 (not c!355138)) b!2224336))

(assert (= (or b!2224335 b!2224333) bm!132961))

(declare-fun m!2664318 () Bool)

(assert (=> b!2224332 m!2664318))

(declare-fun m!2664320 () Bool)

(assert (=> bm!132961 m!2664320))

(declare-fun m!2664322 () Bool)

(assert (=> b!2224335 m!2664322))

(assert (=> b!2224254 d!664393))

(declare-fun d!664395 () Bool)

(assert (=> d!664395 (= (array_inv!3295 (_keys!3298 (v!29660 (underlying!6203 (v!29661 (underlying!6204 (cache!3292 thiss!28682))))))) (bvsge (size!20370 (_keys!3298 (v!29660 (underlying!6203 (v!29661 (underlying!6204 (cache!3292 thiss!28682))))))) #b00000000000000000000000000000000))))

(assert (=> b!2224247 d!664395))

(declare-fun d!664397 () Bool)

(assert (=> d!664397 (= (array_inv!3296 (_values!3281 (v!29660 (underlying!6203 (v!29661 (underlying!6204 (cache!3292 thiss!28682))))))) (bvsge (size!20371 (_values!3281 (v!29660 (underlying!6203 (v!29661 (underlying!6204 (cache!3292 thiss!28682))))))) #b00000000000000000000000000000000))))

(assert (=> b!2224247 d!664397))

(declare-fun bs!453471 () Bool)

(declare-fun b!2224342 () Bool)

(assert (= bs!453471 (and b!2224342 b!2224246)))

(declare-fun lambda!84077 () Int)

(assert (=> bs!453471 (= lambda!84077 lambda!84061)))

(declare-fun d!664399 () Bool)

(declare-fun res!954142 () Bool)

(declare-fun e!1421231 () Bool)

(assert (=> d!664399 (=> (not res!954142) (not e!1421231))))

(assert (=> d!664399 (= res!954142 (valid!2304 (cache!3292 thiss!28682)))))

(assert (=> d!664399 (= (validCacheMapUp!277 (cache!3292 thiss!28682)) e!1421231)))

(declare-fun b!2224341 () Bool)

(declare-fun res!954143 () Bool)

(assert (=> b!2224341 (=> (not res!954143) (not e!1421231))))

(assert (=> b!2224341 (= res!954143 (invariantList!350 (toList!1306 (map!5309 (cache!3292 thiss!28682)))))))

(assert (=> b!2224342 (= e!1421231 (forall!5319 (toList!1306 (map!5309 (cache!3292 thiss!28682))) lambda!84077))))

(assert (= (and d!664399 res!954142) b!2224341))

(assert (= (and b!2224341 res!954143) b!2224342))

(assert (=> d!664399 m!2664302))

(assert (=> b!2224341 m!2664300))

(declare-fun m!2664325 () Bool)

(assert (=> b!2224341 m!2664325))

(assert (=> b!2224342 m!2664300))

(declare-fun m!2664327 () Bool)

(assert (=> b!2224342 m!2664327))

(assert (=> start!217042 d!664399))

(declare-fun d!664401 () Bool)

(declare-fun res!954146 () Bool)

(declare-fun e!1421234 () Bool)

(assert (=> d!664401 (=> (not res!954146) (not e!1421234))))

(assert (=> d!664401 (= res!954146 ((_ is HashMap!2911) (cache!3292 thiss!28682)))))

(assert (=> d!664401 (= (inv!35434 thiss!28682) e!1421234)))

(declare-fun b!2224345 () Bool)

(assert (=> b!2224345 (= e!1421234 (validCacheMapUp!277 (cache!3292 thiss!28682)))))

(assert (= (and d!664401 res!954146) b!2224345))

(assert (=> b!2224345 m!2664194))

(assert (=> start!217042 d!664401))

(declare-fun bs!453472 () Bool)

(declare-fun d!664403 () Bool)

(assert (= bs!453472 (and d!664403 d!664391)))

(declare-fun lambda!84078 () Int)

(assert (=> bs!453472 (= lambda!84078 lambda!84074)))

(assert (=> d!664403 (= (inv!35433 ctx!44) (forall!5321 (exprs!2411 ctx!44) lambda!84078))))

(declare-fun bs!453473 () Bool)

(assert (= bs!453473 d!664403))

(declare-fun m!2664329 () Bool)

(assert (=> bs!453473 m!2664329))

(assert (=> start!217042 d!664403))

(declare-fun b!2224350 () Bool)

(declare-fun e!1421237 () Bool)

(declare-fun tp!694323 () Bool)

(declare-fun tp!694324 () Bool)

(assert (=> b!2224350 (= e!1421237 (and tp!694323 tp!694324))))

(assert (=> b!2224253 (= tp!694316 e!1421237)))

(assert (= (and b!2224253 ((_ is Cons!26097) (exprs!2411 ctx!44))) b!2224350))

(declare-fun condSetEmpty!19703 () Bool)

(assert (=> setNonEmpty!19700 (= condSetEmpty!19703 (= setRest!19700 ((as const (Array Context!3822 Bool)) false)))))

(declare-fun setRes!19703 () Bool)

(assert (=> setNonEmpty!19700 (= tp!694310 setRes!19703)))

(declare-fun setIsEmpty!19703 () Bool)

(assert (=> setIsEmpty!19703 setRes!19703))

(declare-fun e!1421240 () Bool)

(declare-fun tp!694330 () Bool)

(declare-fun setNonEmpty!19703 () Bool)

(declare-fun setElem!19703 () Context!3822)

(assert (=> setNonEmpty!19703 (= setRes!19703 (and tp!694330 (inv!35433 setElem!19703) e!1421240))))

(declare-fun setRest!19703 () (InoxSet Context!3822))

(assert (=> setNonEmpty!19703 (= setRest!19700 ((_ map or) (store ((as const (Array Context!3822 Bool)) false) setElem!19703 true) setRest!19703))))

(declare-fun b!2224355 () Bool)

(declare-fun tp!694329 () Bool)

(assert (=> b!2224355 (= e!1421240 tp!694329)))

(assert (= (and setNonEmpty!19700 condSetEmpty!19703) setIsEmpty!19703))

(assert (= (and setNonEmpty!19700 (not condSetEmpty!19703)) setNonEmpty!19703))

(assert (= setNonEmpty!19703 b!2224355))

(declare-fun m!2664331 () Bool)

(assert (=> setNonEmpty!19703 m!2664331))

(declare-fun setRes!19706 () Bool)

(declare-fun tp!694341 () Bool)

(declare-fun e!1421247 () Bool)

(declare-fun setNonEmpty!19706 () Bool)

(declare-fun setElem!19706 () Context!3822)

(assert (=> setNonEmpty!19706 (= setRes!19706 (and tp!694341 (inv!35433 setElem!19706) e!1421247))))

(declare-fun setRest!19706 () (InoxSet Context!3822))

(assert (=> setNonEmpty!19706 (= (_2!15056 (h!31499 mapDefault!14157)) ((_ map or) (store ((as const (Array Context!3822 Bool)) false) setElem!19706 true) setRest!19706))))

(declare-fun e!1421249 () Bool)

(declare-fun b!2224364 () Bool)

(declare-fun tp!694340 () Bool)

(declare-fun e!1421248 () Bool)

(assert (=> b!2224364 (= e!1421249 (and (inv!35433 (_1!15055 (_1!15056 (h!31499 mapDefault!14157)))) e!1421248 tp_is_empty!9951 setRes!19706 tp!694340))))

(declare-fun condSetEmpty!19706 () Bool)

(assert (=> b!2224364 (= condSetEmpty!19706 (= (_2!15056 (h!31499 mapDefault!14157)) ((as const (Array Context!3822 Bool)) false)))))

(declare-fun b!2224365 () Bool)

(declare-fun tp!694339 () Bool)

(assert (=> b!2224365 (= e!1421247 tp!694339)))

(declare-fun b!2224366 () Bool)

(declare-fun tp!694342 () Bool)

(assert (=> b!2224366 (= e!1421248 tp!694342)))

(declare-fun setIsEmpty!19706 () Bool)

(assert (=> setIsEmpty!19706 setRes!19706))

(assert (=> b!2224250 (= tp!694317 e!1421249)))

(assert (= b!2224364 b!2224366))

(assert (= (and b!2224364 condSetEmpty!19706) setIsEmpty!19706))

(assert (= (and b!2224364 (not condSetEmpty!19706)) setNonEmpty!19706))

(assert (= setNonEmpty!19706 b!2224365))

(assert (= (and b!2224250 ((_ is Cons!26098) mapDefault!14157)) b!2224364))

(declare-fun m!2664333 () Bool)

(assert (=> setNonEmpty!19706 m!2664333))

(declare-fun m!2664335 () Bool)

(assert (=> b!2224364 m!2664335))

(declare-fun tp!694345 () Bool)

(declare-fun e!1421250 () Bool)

(declare-fun setNonEmpty!19707 () Bool)

(declare-fun setRes!19707 () Bool)

(declare-fun setElem!19707 () Context!3822)

(assert (=> setNonEmpty!19707 (= setRes!19707 (and tp!694345 (inv!35433 setElem!19707) e!1421250))))

(declare-fun setRest!19707 () (InoxSet Context!3822))

(assert (=> setNonEmpty!19707 (= (_2!15056 (h!31499 (zeroValue!3259 (v!29660 (underlying!6203 (v!29661 (underlying!6204 (cache!3292 thiss!28682)))))))) ((_ map or) (store ((as const (Array Context!3822 Bool)) false) setElem!19707 true) setRest!19707))))

(declare-fun e!1421251 () Bool)

(declare-fun b!2224367 () Bool)

(declare-fun e!1421252 () Bool)

(declare-fun tp!694344 () Bool)

(assert (=> b!2224367 (= e!1421252 (and (inv!35433 (_1!15055 (_1!15056 (h!31499 (zeroValue!3259 (v!29660 (underlying!6203 (v!29661 (underlying!6204 (cache!3292 thiss!28682)))))))))) e!1421251 tp_is_empty!9951 setRes!19707 tp!694344))))

(declare-fun condSetEmpty!19707 () Bool)

(assert (=> b!2224367 (= condSetEmpty!19707 (= (_2!15056 (h!31499 (zeroValue!3259 (v!29660 (underlying!6203 (v!29661 (underlying!6204 (cache!3292 thiss!28682)))))))) ((as const (Array Context!3822 Bool)) false)))))

(declare-fun b!2224368 () Bool)

(declare-fun tp!694343 () Bool)

(assert (=> b!2224368 (= e!1421250 tp!694343)))

(declare-fun b!2224369 () Bool)

(declare-fun tp!694346 () Bool)

(assert (=> b!2224369 (= e!1421251 tp!694346)))

(declare-fun setIsEmpty!19707 () Bool)

(assert (=> setIsEmpty!19707 setRes!19707))

(assert (=> b!2224247 (= tp!694315 e!1421252)))

(assert (= b!2224367 b!2224369))

(assert (= (and b!2224367 condSetEmpty!19707) setIsEmpty!19707))

(assert (= (and b!2224367 (not condSetEmpty!19707)) setNonEmpty!19707))

(assert (= setNonEmpty!19707 b!2224368))

(assert (= (and b!2224247 ((_ is Cons!26098) (zeroValue!3259 (v!29660 (underlying!6203 (v!29661 (underlying!6204 (cache!3292 thiss!28682)))))))) b!2224367))

(declare-fun m!2664337 () Bool)

(assert (=> setNonEmpty!19707 m!2664337))

(declare-fun m!2664339 () Bool)

(assert (=> b!2224367 m!2664339))

(declare-fun setRes!19708 () Bool)

(declare-fun setElem!19708 () Context!3822)

(declare-fun e!1421253 () Bool)

(declare-fun tp!694349 () Bool)

(declare-fun setNonEmpty!19708 () Bool)

(assert (=> setNonEmpty!19708 (= setRes!19708 (and tp!694349 (inv!35433 setElem!19708) e!1421253))))

(declare-fun setRest!19708 () (InoxSet Context!3822))

(assert (=> setNonEmpty!19708 (= (_2!15056 (h!31499 (minValue!3259 (v!29660 (underlying!6203 (v!29661 (underlying!6204 (cache!3292 thiss!28682)))))))) ((_ map or) (store ((as const (Array Context!3822 Bool)) false) setElem!19708 true) setRest!19708))))

(declare-fun e!1421255 () Bool)

(declare-fun e!1421254 () Bool)

(declare-fun tp!694348 () Bool)

(declare-fun b!2224370 () Bool)

(assert (=> b!2224370 (= e!1421255 (and (inv!35433 (_1!15055 (_1!15056 (h!31499 (minValue!3259 (v!29660 (underlying!6203 (v!29661 (underlying!6204 (cache!3292 thiss!28682)))))))))) e!1421254 tp_is_empty!9951 setRes!19708 tp!694348))))

(declare-fun condSetEmpty!19708 () Bool)

(assert (=> b!2224370 (= condSetEmpty!19708 (= (_2!15056 (h!31499 (minValue!3259 (v!29660 (underlying!6203 (v!29661 (underlying!6204 (cache!3292 thiss!28682)))))))) ((as const (Array Context!3822 Bool)) false)))))

(declare-fun b!2224371 () Bool)

(declare-fun tp!694347 () Bool)

(assert (=> b!2224371 (= e!1421253 tp!694347)))

(declare-fun b!2224372 () Bool)

(declare-fun tp!694350 () Bool)

(assert (=> b!2224372 (= e!1421254 tp!694350)))

(declare-fun setIsEmpty!19708 () Bool)

(assert (=> setIsEmpty!19708 setRes!19708))

(assert (=> b!2224247 (= tp!694311 e!1421255)))

(assert (= b!2224370 b!2224372))

(assert (= (and b!2224370 condSetEmpty!19708) setIsEmpty!19708))

(assert (= (and b!2224370 (not condSetEmpty!19708)) setNonEmpty!19708))

(assert (= setNonEmpty!19708 b!2224371))

(assert (= (and b!2224247 ((_ is Cons!26098) (minValue!3259 (v!29660 (underlying!6203 (v!29661 (underlying!6204 (cache!3292 thiss!28682)))))))) b!2224370))

(declare-fun m!2664341 () Bool)

(assert (=> setNonEmpty!19708 m!2664341))

(declare-fun m!2664343 () Bool)

(assert (=> b!2224370 m!2664343))

(declare-fun b!2224373 () Bool)

(declare-fun e!1421256 () Bool)

(declare-fun tp!694351 () Bool)

(declare-fun tp!694352 () Bool)

(assert (=> b!2224373 (= e!1421256 (and tp!694351 tp!694352))))

(assert (=> b!2224252 (= tp!694313 e!1421256)))

(assert (= (and b!2224252 ((_ is Cons!26097) (exprs!2411 setElem!19700))) b!2224373))

(declare-fun b!2224388 () Bool)

(declare-fun e!1421274 () Bool)

(declare-fun tp!694371 () Bool)

(assert (=> b!2224388 (= e!1421274 tp!694371)))

(declare-fun condMapEmpty!14160 () Bool)

(declare-fun mapDefault!14160 () List!26192)

(assert (=> mapNonEmpty!14157 (= condMapEmpty!14160 (= mapRest!14157 ((as const (Array (_ BitVec 32) List!26192)) mapDefault!14160)))))

(declare-fun e!1421272 () Bool)

(declare-fun mapRes!14160 () Bool)

(assert (=> mapNonEmpty!14157 (= tp!694309 (and e!1421272 mapRes!14160))))

(declare-fun b!2224389 () Bool)

(declare-fun e!1421273 () Bool)

(declare-fun tp!694373 () Bool)

(assert (=> b!2224389 (= e!1421273 tp!694373)))

(declare-fun mapIsEmpty!14160 () Bool)

(assert (=> mapIsEmpty!14160 mapRes!14160))

(declare-fun tp!694374 () Bool)

(declare-fun b!2224390 () Bool)

(declare-fun setRes!19714 () Bool)

(declare-fun e!1421271 () Bool)

(assert (=> b!2224390 (= e!1421272 (and (inv!35433 (_1!15055 (_1!15056 (h!31499 mapDefault!14160)))) e!1421271 tp_is_empty!9951 setRes!19714 tp!694374))))

(declare-fun condSetEmpty!19713 () Bool)

(assert (=> b!2224390 (= condSetEmpty!19713 (= (_2!15056 (h!31499 mapDefault!14160)) ((as const (Array Context!3822 Bool)) false)))))

(declare-fun setNonEmpty!19713 () Bool)

(declare-fun setRes!19713 () Bool)

(declare-fun tp!694377 () Bool)

(declare-fun setElem!19713 () Context!3822)

(assert (=> setNonEmpty!19713 (= setRes!19713 (and tp!694377 (inv!35433 setElem!19713) e!1421273))))

(declare-fun mapValue!14160 () List!26192)

(declare-fun setRest!19714 () (InoxSet Context!3822))

(assert (=> setNonEmpty!19713 (= (_2!15056 (h!31499 mapValue!14160)) ((_ map or) (store ((as const (Array Context!3822 Bool)) false) setElem!19713 true) setRest!19714))))

(declare-fun setNonEmpty!19714 () Bool)

(declare-fun tp!694372 () Bool)

(declare-fun setElem!19714 () Context!3822)

(assert (=> setNonEmpty!19714 (= setRes!19714 (and tp!694372 (inv!35433 setElem!19714) e!1421274))))

(declare-fun setRest!19713 () (InoxSet Context!3822))

(assert (=> setNonEmpty!19714 (= (_2!15056 (h!31499 mapDefault!14160)) ((_ map or) (store ((as const (Array Context!3822 Bool)) false) setElem!19714 true) setRest!19713))))

(declare-fun b!2224391 () Bool)

(declare-fun tp!694378 () Bool)

(assert (=> b!2224391 (= e!1421271 tp!694378)))

(declare-fun setIsEmpty!19713 () Bool)

(assert (=> setIsEmpty!19713 setRes!19714))

(declare-fun setIsEmpty!19714 () Bool)

(assert (=> setIsEmpty!19714 setRes!19713))

(declare-fun e!1421270 () Bool)

(declare-fun b!2224392 () Bool)

(declare-fun e!1421269 () Bool)

(declare-fun tp!694375 () Bool)

(assert (=> b!2224392 (= e!1421270 (and (inv!35433 (_1!15055 (_1!15056 (h!31499 mapValue!14160)))) e!1421269 tp_is_empty!9951 setRes!19713 tp!694375))))

(declare-fun condSetEmpty!19714 () Bool)

(assert (=> b!2224392 (= condSetEmpty!19714 (= (_2!15056 (h!31499 mapValue!14160)) ((as const (Array Context!3822 Bool)) false)))))

(declare-fun mapNonEmpty!14160 () Bool)

(declare-fun tp!694376 () Bool)

(assert (=> mapNonEmpty!14160 (= mapRes!14160 (and tp!694376 e!1421270))))

(declare-fun mapRest!14160 () (Array (_ BitVec 32) List!26192))

(declare-fun mapKey!14160 () (_ BitVec 32))

(assert (=> mapNonEmpty!14160 (= mapRest!14157 (store mapRest!14160 mapKey!14160 mapValue!14160))))

(declare-fun b!2224393 () Bool)

(declare-fun tp!694379 () Bool)

(assert (=> b!2224393 (= e!1421269 tp!694379)))

(assert (= (and mapNonEmpty!14157 condMapEmpty!14160) mapIsEmpty!14160))

(assert (= (and mapNonEmpty!14157 (not condMapEmpty!14160)) mapNonEmpty!14160))

(assert (= b!2224392 b!2224393))

(assert (= (and b!2224392 condSetEmpty!19714) setIsEmpty!19714))

(assert (= (and b!2224392 (not condSetEmpty!19714)) setNonEmpty!19713))

(assert (= setNonEmpty!19713 b!2224389))

(assert (= (and mapNonEmpty!14160 ((_ is Cons!26098) mapValue!14160)) b!2224392))

(assert (= b!2224390 b!2224391))

(assert (= (and b!2224390 condSetEmpty!19713) setIsEmpty!19713))

(assert (= (and b!2224390 (not condSetEmpty!19713)) setNonEmpty!19714))

(assert (= setNonEmpty!19714 b!2224388))

(assert (= (and mapNonEmpty!14157 ((_ is Cons!26098) mapDefault!14160)) b!2224390))

(declare-fun m!2664345 () Bool)

(assert (=> b!2224390 m!2664345))

(declare-fun m!2664347 () Bool)

(assert (=> setNonEmpty!19713 m!2664347))

(declare-fun m!2664349 () Bool)

(assert (=> setNonEmpty!19714 m!2664349))

(declare-fun m!2664351 () Bool)

(assert (=> mapNonEmpty!14160 m!2664351))

(declare-fun m!2664353 () Bool)

(assert (=> b!2224392 m!2664353))

(declare-fun setElem!19715 () Context!3822)

(declare-fun tp!694382 () Bool)

(declare-fun setNonEmpty!19715 () Bool)

(declare-fun e!1421275 () Bool)

(declare-fun setRes!19715 () Bool)

(assert (=> setNonEmpty!19715 (= setRes!19715 (and tp!694382 (inv!35433 setElem!19715) e!1421275))))

(declare-fun setRest!19715 () (InoxSet Context!3822))

(assert (=> setNonEmpty!19715 (= (_2!15056 (h!31499 mapValue!14157)) ((_ map or) (store ((as const (Array Context!3822 Bool)) false) setElem!19715 true) setRest!19715))))

(declare-fun b!2224394 () Bool)

(declare-fun tp!694381 () Bool)

(declare-fun e!1421277 () Bool)

(declare-fun e!1421276 () Bool)

(assert (=> b!2224394 (= e!1421277 (and (inv!35433 (_1!15055 (_1!15056 (h!31499 mapValue!14157)))) e!1421276 tp_is_empty!9951 setRes!19715 tp!694381))))

(declare-fun condSetEmpty!19715 () Bool)

(assert (=> b!2224394 (= condSetEmpty!19715 (= (_2!15056 (h!31499 mapValue!14157)) ((as const (Array Context!3822 Bool)) false)))))

(declare-fun b!2224395 () Bool)

(declare-fun tp!694380 () Bool)

(assert (=> b!2224395 (= e!1421275 tp!694380)))

(declare-fun b!2224396 () Bool)

(declare-fun tp!694383 () Bool)

(assert (=> b!2224396 (= e!1421276 tp!694383)))

(declare-fun setIsEmpty!19715 () Bool)

(assert (=> setIsEmpty!19715 setRes!19715))

(assert (=> mapNonEmpty!14157 (= tp!694318 e!1421277)))

(assert (= b!2224394 b!2224396))

(assert (= (and b!2224394 condSetEmpty!19715) setIsEmpty!19715))

(assert (= (and b!2224394 (not condSetEmpty!19715)) setNonEmpty!19715))

(assert (= setNonEmpty!19715 b!2224395))

(assert (= (and mapNonEmpty!14157 ((_ is Cons!26098) mapValue!14157)) b!2224394))

(declare-fun m!2664355 () Bool)

(assert (=> setNonEmpty!19715 m!2664355))

(declare-fun m!2664357 () Bool)

(assert (=> b!2224394 m!2664357))

(declare-fun b_lambda!71615 () Bool)

(assert (= b_lambda!71613 (or b!2224246 b_lambda!71615)))

(declare-fun bs!453474 () Bool)

(declare-fun d!664405 () Bool)

(assert (= bs!453474 (and d!664405 b!2224246)))

(assert (=> bs!453474 (= (dynLambda!11514 lambda!84061 (h!31499 (toList!1306 (map!5309 (_2!15057 (update!121 (cache!3292 thiss!28682) lt!829193 res!14206)))))) (= (_2!15056 (h!31499 (toList!1306 (map!5309 (_2!15057 (update!121 (cache!3292 thiss!28682) lt!829193 res!14206)))))) (derivationStepZipperUp!28 (_1!15055 (_1!15056 (h!31499 (toList!1306 (map!5309 (_2!15057 (update!121 (cache!3292 thiss!28682) lt!829193 res!14206))))))) (_2!15055 (_1!15056 (h!31499 (toList!1306 (map!5309 (_2!15057 (update!121 (cache!3292 thiss!28682) lt!829193 res!14206))))))))))))

(declare-fun m!2664359 () Bool)

(assert (=> bs!453474 m!2664359))

(assert (=> b!2224260 d!664405))

(check-sat (not b!2224393) (not b!2224342) (not b!2224364) (not b_lambda!71615) (not bm!132935) (not bm!132947) (not b!2224341) (not b!2224309) (not b!2224321) (not bm!132945) (not bm!132956) (not bm!132928) (not setNonEmpty!19708) (not b!2224355) (not setNonEmpty!19706) (not bm!132951) (not setNonEmpty!19715) (not bm!132957) (not bm!132948) (not b!2224373) (not bm!132931) (not bs!453474) (not bm!132946) (not b!2224303) (not b!2224261) (not bm!132953) (not setNonEmpty!19714) (not b!2224366) (not b!2224318) (not d!664389) (not b!2224350) (not b!2224392) (not d!664385) (not bm!132954) (not b!2224390) (not b!2224370) (not bm!132930) (not b!2224332) (not bm!132937) (not b!2224371) b_and!174453 (not d!664387) (not bm!132949) (not b_next!65171) (not bm!132958) (not b!2224391) (not bm!132936) (not bm!132950) (not bm!132943) (not bm!132940) (not setNonEmpty!19713) (not bm!132939) (not b!2224367) (not b_next!65169) (not d!664391) (not b!2224396) (not b!2224388) (not b!2224394) tp_is_empty!9951 (not b!2224389) (not b!2224316) (not b!2224395) (not d!664399) (not b!2224368) (not b!2224372) (not bm!132941) (not bm!132932) b_and!174455 (not bm!132942) (not bm!132952) (not setNonEmpty!19707) (not b!2224369) (not bm!132961) (not mapNonEmpty!14160) (not b!2224345) (not bm!132938) (not b!2224302) (not bm!132934) (not setNonEmpty!19703) (not d!664403) (not b!2224317) (not bm!132929) (not b!2224365) (not b!2224335) (not bm!132933))
(check-sat b_and!174455 b_and!174453 (not b_next!65171) (not b_next!65169))

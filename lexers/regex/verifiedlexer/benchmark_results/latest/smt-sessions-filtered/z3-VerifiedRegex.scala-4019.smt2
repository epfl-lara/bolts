; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217640 () Bool)

(assert start!217640)

(declare-fun b!2232225 () Bool)

(declare-fun b_free!64729 () Bool)

(declare-fun b_next!65433 () Bool)

(assert (=> b!2232225 (= b_free!64729 (not b_next!65433))))

(declare-fun tp!700065 () Bool)

(declare-fun b_and!174717 () Bool)

(assert (=> b!2232225 (= tp!700065 b_and!174717)))

(declare-fun b!2232218 () Bool)

(declare-fun b_free!64731 () Bool)

(declare-fun b_next!65435 () Bool)

(assert (=> b!2232218 (= b_free!64731 (not b_next!65435))))

(declare-fun tp!700064 () Bool)

(declare-fun b_and!174719 () Bool)

(assert (=> b!2232218 (= tp!700064 b_and!174719)))

(declare-fun b!2232209 () Bool)

(declare-fun e!1426583 () Bool)

(declare-fun tp_is_empty!10083 () Bool)

(assert (=> b!2232209 (= e!1426583 tp_is_empty!10083)))

(declare-fun b!2232210 () Bool)

(declare-fun e!1426573 () Bool)

(declare-fun e!1426577 () Bool)

(assert (=> b!2232210 (= e!1426573 e!1426577)))

(declare-fun b!2232211 () Bool)

(declare-fun e!1426574 () Bool)

(declare-fun e!1426579 () Bool)

(declare-datatypes ((C!13004 0))(
  ( (C!13005 (val!7550 Int)) )
))
(declare-datatypes ((Regex!6429 0))(
  ( (ElementMatch!6429 (c!355957 C!13004)) (Concat!10767 (regOne!13370 Regex!6429) (regTwo!13370 Regex!6429)) (EmptyExpr!6429) (Star!6429 (reg!6758 Regex!6429)) (EmptyLang!6429) (Union!6429 (regOne!13371 Regex!6429) (regTwo!13371 Regex!6429)) )
))
(declare-datatypes ((List!26330 0))(
  ( (Nil!26236) (Cons!26236 (h!31637 Regex!6429) (t!199748 List!26330)) )
))
(declare-datatypes ((Context!3954 0))(
  ( (Context!3955 (exprs!2477 List!26330)) )
))
(declare-datatypes ((array!10624 0))(
  ( (array!10625 (arr!4721 (Array (_ BitVec 32) (_ BitVec 64))) (size!20502 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3930 0))(
  ( (tuple3!3931 (_1!15230 Regex!6429) (_2!15230 Context!3954) (_3!2435 C!13004)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25590 0))(
  ( (tuple2!25591 (_1!15231 tuple3!3930) (_2!15231 (InoxSet Context!3954))) )
))
(declare-datatypes ((List!26331 0))(
  ( (Nil!26237) (Cons!26237 (h!31638 tuple2!25590) (t!199749 List!26331)) )
))
(declare-datatypes ((array!10626 0))(
  ( (array!10627 (arr!4722 (Array (_ BitVec 32) List!26331)) (size!20503 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6134 0))(
  ( (LongMapFixedSize!6135 (defaultEntry!3432 Int) (mask!7635 (_ BitVec 32)) (extraKeys!3315 (_ BitVec 32)) (zeroValue!3325 List!26331) (minValue!3325 List!26331) (_size!6181 (_ BitVec 32)) (_keys!3364 array!10624) (_values!3347 array!10626) (_vacant!3128 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12085 0))(
  ( (Cell!12086 (v!29833 LongMapFixedSize!6134)) )
))
(declare-datatypes ((MutLongMap!3067 0))(
  ( (LongMap!3067 (underlying!6335 Cell!12085)) (MutLongMapExt!3066 (__x!17427 Int)) )
))
(declare-fun lt!830621 () MutLongMap!3067)

(get-info :version)

(assert (=> b!2232211 (= e!1426574 (and e!1426579 ((_ is LongMap!3067) lt!830621)))))

(declare-datatypes ((Cell!12087 0))(
  ( (Cell!12088 (v!29834 MutLongMap!3067)) )
))
(declare-datatypes ((Hashable!2977 0))(
  ( (HashableExt!2976 (__x!17428 Int)) )
))
(declare-datatypes ((MutableMap!2977 0))(
  ( (MutableMapExt!2976 (__x!17429 Int)) (HashMap!2977 (underlying!6336 Cell!12087) (hashF!4900 Hashable!2977) (_size!6182 (_ BitVec 32)) (defaultValue!3139 Int)) )
))
(declare-datatypes ((CacheDown!2000 0))(
  ( (CacheDown!2001 (cache!3358 MutableMap!2977)) )
))
(declare-fun cacheDown!839 () CacheDown!2000)

(assert (=> b!2232211 (= lt!830621 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))

(declare-fun b!2232212 () Bool)

(declare-fun e!1426581 () Bool)

(declare-fun tp!700071 () Bool)

(declare-fun mapRes!14434 () Bool)

(assert (=> b!2232212 (= e!1426581 (and tp!700071 mapRes!14434))))

(declare-fun condMapEmpty!14434 () Bool)

(declare-fun mapDefault!14434 () List!26331)

(assert (=> b!2232212 (= condMapEmpty!14434 (= (arr!4722 (_values!3347 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26331)) mapDefault!14434)))))

(declare-fun b!2232213 () Bool)

(declare-fun res!955856 () Bool)

(declare-fun e!1426572 () Bool)

(assert (=> b!2232213 (=> (not res!955856) (not e!1426572))))

(declare-fun context!86 () Context!3954)

(declare-fun expr!64 () Regex!6429)

(declare-fun a!1167 () C!13004)

(declare-datatypes ((Option!5110 0))(
  ( (None!5109) (Some!5109 (v!29835 (InoxSet Context!3954))) )
))
(declare-fun get!7929 (CacheDown!2000 Regex!6429 Context!3954 C!13004) Option!5110)

(assert (=> b!2232213 (= res!955856 (not ((_ is Some!5109) (get!7929 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun mapNonEmpty!14434 () Bool)

(declare-fun tp!700060 () Bool)

(declare-fun tp!700061 () Bool)

(assert (=> mapNonEmpty!14434 (= mapRes!14434 (and tp!700060 tp!700061))))

(declare-fun mapValue!14434 () List!26331)

(declare-fun mapRest!14434 () (Array (_ BitVec 32) List!26331))

(declare-fun mapKey!14434 () (_ BitVec 32))

(assert (=> mapNonEmpty!14434 (= (arr!4722 (_values!3347 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))) (store mapRest!14434 mapKey!14434 mapValue!14434))))

(declare-fun res!955852 () Bool)

(assert (=> start!217640 (=> (not res!955852) (not e!1426572))))

(declare-fun validRegex!2400 (Regex!6429) Bool)

(assert (=> start!217640 (= res!955852 (validRegex!2400 expr!64))))

(assert (=> start!217640 e!1426572))

(assert (=> start!217640 e!1426583))

(declare-fun inv!35633 (CacheDown!2000) Bool)

(assert (=> start!217640 (and (inv!35633 cacheDown!839) e!1426573)))

(declare-fun e!1426578 () Bool)

(declare-fun inv!35634 (Context!3954) Bool)

(assert (=> start!217640 (and (inv!35634 context!86) e!1426578)))

(assert (=> start!217640 tp_is_empty!10083))

(declare-fun b!2232214 () Bool)

(declare-fun tp!700067 () Bool)

(assert (=> b!2232214 (= e!1426583 tp!700067)))

(declare-fun b!2232215 () Bool)

(declare-fun res!955853 () Bool)

(assert (=> b!2232215 (=> (not res!955853) (not e!1426572))))

(assert (=> b!2232215 (= res!955853 (and (not ((_ is Concat!10767) expr!64)) ((_ is Star!6429) expr!64)))))

(declare-fun b!2232216 () Bool)

(declare-fun tp!700059 () Bool)

(declare-fun tp!700070 () Bool)

(assert (=> b!2232216 (= e!1426583 (and tp!700059 tp!700070))))

(declare-fun b!2232217 () Bool)

(declare-fun tp!700063 () Bool)

(assert (=> b!2232217 (= e!1426578 tp!700063)))

(declare-fun tp!700068 () Bool)

(declare-fun tp!700066 () Bool)

(declare-fun e!1426580 () Bool)

(declare-fun array_inv!3387 (array!10624) Bool)

(declare-fun array_inv!3388 (array!10626) Bool)

(assert (=> b!2232218 (= e!1426580 (and tp!700064 tp!700068 tp!700066 (array_inv!3387 (_keys!3364 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))) (array_inv!3388 (_values!3347 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))) e!1426581))))

(declare-fun b!2232219 () Bool)

(declare-fun tp!700069 () Bool)

(declare-fun tp!700062 () Bool)

(assert (=> b!2232219 (= e!1426583 (and tp!700069 tp!700062))))

(declare-fun b!2232220 () Bool)

(declare-fun res!955855 () Bool)

(assert (=> b!2232220 (=> (not res!955855) (not e!1426572))))

(declare-fun e!1426582 () Bool)

(assert (=> b!2232220 (= res!955855 e!1426582)))

(declare-fun res!955854 () Bool)

(assert (=> b!2232220 (=> res!955854 e!1426582)))

(assert (=> b!2232220 (= res!955854 (not ((_ is Concat!10767) expr!64)))))

(declare-fun b!2232221 () Bool)

(declare-fun e!1426575 () Bool)

(assert (=> b!2232221 (= e!1426579 e!1426575)))

(declare-fun b!2232222 () Bool)

(declare-fun $colon$colon!522 (List!26330 Regex!6429) List!26330)

(assert (=> b!2232222 (= e!1426572 (not (inv!35634 (Context!3955 ($colon$colon!522 (exprs!2477 context!86) expr!64)))))))

(declare-fun b!2232223 () Bool)

(declare-fun nullable!1771 (Regex!6429) Bool)

(assert (=> b!2232223 (= e!1426582 (not (nullable!1771 (regOne!13370 expr!64))))))

(declare-fun mapIsEmpty!14434 () Bool)

(assert (=> mapIsEmpty!14434 mapRes!14434))

(declare-fun b!2232224 () Bool)

(assert (=> b!2232224 (= e!1426575 e!1426580)))

(assert (=> b!2232225 (= e!1426577 (and e!1426574 tp!700065))))

(declare-fun b!2232226 () Bool)

(declare-fun res!955851 () Bool)

(assert (=> b!2232226 (=> (not res!955851) (not e!1426572))))

(assert (=> b!2232226 (= res!955851 (and (or (not ((_ is ElementMatch!6429) expr!64)) (not (= (c!355957 expr!64) a!1167))) (not ((_ is Union!6429) expr!64))))))

(assert (= (and start!217640 res!955852) b!2232213))

(assert (= (and b!2232213 res!955856) b!2232226))

(assert (= (and b!2232226 res!955851) b!2232220))

(assert (= (and b!2232220 (not res!955854)) b!2232223))

(assert (= (and b!2232220 res!955855) b!2232215))

(assert (= (and b!2232215 res!955853) b!2232222))

(assert (= (and start!217640 ((_ is ElementMatch!6429) expr!64)) b!2232209))

(assert (= (and start!217640 ((_ is Concat!10767) expr!64)) b!2232216))

(assert (= (and start!217640 ((_ is Star!6429) expr!64)) b!2232214))

(assert (= (and start!217640 ((_ is Union!6429) expr!64)) b!2232219))

(assert (= (and b!2232212 condMapEmpty!14434) mapIsEmpty!14434))

(assert (= (and b!2232212 (not condMapEmpty!14434)) mapNonEmpty!14434))

(assert (= b!2232218 b!2232212))

(assert (= b!2232224 b!2232218))

(assert (= b!2232221 b!2232224))

(assert (= (and b!2232211 ((_ is LongMap!3067) (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))) b!2232221))

(assert (= b!2232225 b!2232211))

(assert (= (and b!2232210 ((_ is HashMap!2977) (cache!3358 cacheDown!839))) b!2232225))

(assert (= start!217640 b!2232210))

(assert (= start!217640 b!2232217))

(declare-fun m!2668121 () Bool)

(assert (=> start!217640 m!2668121))

(declare-fun m!2668123 () Bool)

(assert (=> start!217640 m!2668123))

(declare-fun m!2668125 () Bool)

(assert (=> start!217640 m!2668125))

(declare-fun m!2668127 () Bool)

(assert (=> mapNonEmpty!14434 m!2668127))

(declare-fun m!2668129 () Bool)

(assert (=> b!2232223 m!2668129))

(declare-fun m!2668131 () Bool)

(assert (=> b!2232218 m!2668131))

(declare-fun m!2668133 () Bool)

(assert (=> b!2232218 m!2668133))

(declare-fun m!2668135 () Bool)

(assert (=> b!2232213 m!2668135))

(declare-fun m!2668137 () Bool)

(assert (=> b!2232222 m!2668137))

(declare-fun m!2668139 () Bool)

(assert (=> b!2232222 m!2668139))

(check-sat (not start!217640) (not b!2232218) (not b!2232212) (not b!2232222) (not b!2232219) (not b_next!65433) b_and!174717 (not b!2232217) (not b!2232213) tp_is_empty!10083 (not b!2232214) (not b!2232216) (not b!2232223) (not b_next!65435) (not mapNonEmpty!14434) b_and!174719)
(check-sat b_and!174717 b_and!174719 (not b_next!65435) (not b_next!65433))
(get-model)

(declare-fun d!665140 () Bool)

(declare-fun e!1426586 () Bool)

(assert (=> d!665140 e!1426586))

(declare-fun res!955859 () Bool)

(assert (=> d!665140 (=> res!955859 e!1426586)))

(declare-fun lt!830624 () Option!5110)

(declare-fun isEmpty!14899 (Option!5110) Bool)

(assert (=> d!665140 (= res!955859 (isEmpty!14899 lt!830624))))

(declare-fun choose!13130 (CacheDown!2000 Regex!6429 Context!3954 C!13004) Option!5110)

(assert (=> d!665140 (= lt!830624 (choose!13130 cacheDown!839 expr!64 context!86 a!1167))))

(declare-fun validCacheMapDown!286 (MutableMap!2977) Bool)

(assert (=> d!665140 (validCacheMapDown!286 (cache!3358 cacheDown!839))))

(assert (=> d!665140 (= (get!7929 cacheDown!839 expr!64 context!86 a!1167) lt!830624)))

(declare-fun b!2232229 () Bool)

(declare-fun get!7930 (Option!5110) (InoxSet Context!3954))

(declare-fun derivationStepZipperDown!49 (Regex!6429 Context!3954 C!13004) (InoxSet Context!3954))

(assert (=> b!2232229 (= e!1426586 (= (get!7930 lt!830624) (derivationStepZipperDown!49 expr!64 context!86 a!1167)))))

(assert (= (and d!665140 (not res!955859)) b!2232229))

(declare-fun m!2668141 () Bool)

(assert (=> d!665140 m!2668141))

(declare-fun m!2668143 () Bool)

(assert (=> d!665140 m!2668143))

(declare-fun m!2668145 () Bool)

(assert (=> d!665140 m!2668145))

(declare-fun m!2668147 () Bool)

(assert (=> b!2232229 m!2668147))

(declare-fun m!2668149 () Bool)

(assert (=> b!2232229 m!2668149))

(assert (=> b!2232213 d!665140))

(declare-fun d!665142 () Bool)

(declare-fun nullableFct!419 (Regex!6429) Bool)

(assert (=> d!665142 (= (nullable!1771 (regOne!13370 expr!64)) (nullableFct!419 (regOne!13370 expr!64)))))

(declare-fun bs!454016 () Bool)

(assert (= bs!454016 d!665142))

(declare-fun m!2668151 () Bool)

(assert (=> bs!454016 m!2668151))

(assert (=> b!2232223 d!665142))

(declare-fun d!665144 () Bool)

(assert (=> d!665144 (= (array_inv!3387 (_keys!3364 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))) (bvsge (size!20502 (_keys!3364 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2232218 d!665144))

(declare-fun d!665146 () Bool)

(assert (=> d!665146 (= (array_inv!3388 (_values!3347 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))) (bvsge (size!20503 (_values!3347 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2232218 d!665146))

(declare-fun b!2232248 () Bool)

(declare-fun e!1426606 () Bool)

(declare-fun e!1426602 () Bool)

(assert (=> b!2232248 (= e!1426606 e!1426602)))

(declare-fun c!355962 () Bool)

(assert (=> b!2232248 (= c!355962 ((_ is Star!6429) expr!64))))

(declare-fun b!2232249 () Bool)

(declare-fun res!955871 () Bool)

(declare-fun e!1426605 () Bool)

(assert (=> b!2232249 (=> res!955871 e!1426605)))

(assert (=> b!2232249 (= res!955871 (not ((_ is Concat!10767) expr!64)))))

(declare-fun e!1426604 () Bool)

(assert (=> b!2232249 (= e!1426604 e!1426605)))

(declare-fun b!2232250 () Bool)

(declare-fun e!1426601 () Bool)

(declare-fun call!134060 () Bool)

(assert (=> b!2232250 (= e!1426601 call!134060)))

(declare-fun bm!134053 () Bool)

(declare-fun call!134059 () Bool)

(declare-fun c!355963 () Bool)

(assert (=> bm!134053 (= call!134059 (validRegex!2400 (ite c!355962 (reg!6758 expr!64) (ite c!355963 (regTwo!13371 expr!64) (regTwo!13370 expr!64)))))))

(declare-fun bm!134054 () Bool)

(assert (=> bm!134054 (= call!134060 call!134059)))

(declare-fun bm!134055 () Bool)

(declare-fun call!134058 () Bool)

(assert (=> bm!134055 (= call!134058 (validRegex!2400 (ite c!355963 (regOne!13371 expr!64) (regOne!13370 expr!64))))))

(declare-fun d!665148 () Bool)

(declare-fun res!955874 () Bool)

(assert (=> d!665148 (=> res!955874 e!1426606)))

(assert (=> d!665148 (= res!955874 ((_ is ElementMatch!6429) expr!64))))

(assert (=> d!665148 (= (validRegex!2400 expr!64) e!1426606)))

(declare-fun b!2232251 () Bool)

(declare-fun e!1426607 () Bool)

(assert (=> b!2232251 (= e!1426602 e!1426607)))

(declare-fun res!955873 () Bool)

(assert (=> b!2232251 (= res!955873 (not (nullable!1771 (reg!6758 expr!64))))))

(assert (=> b!2232251 (=> (not res!955873) (not e!1426607))))

(declare-fun b!2232252 () Bool)

(declare-fun e!1426603 () Bool)

(assert (=> b!2232252 (= e!1426603 call!134060)))

(declare-fun b!2232253 () Bool)

(assert (=> b!2232253 (= e!1426607 call!134059)))

(declare-fun b!2232254 () Bool)

(assert (=> b!2232254 (= e!1426605 e!1426601)))

(declare-fun res!955870 () Bool)

(assert (=> b!2232254 (=> (not res!955870) (not e!1426601))))

(assert (=> b!2232254 (= res!955870 call!134058)))

(declare-fun b!2232255 () Bool)

(declare-fun res!955872 () Bool)

(assert (=> b!2232255 (=> (not res!955872) (not e!1426603))))

(assert (=> b!2232255 (= res!955872 call!134058)))

(assert (=> b!2232255 (= e!1426604 e!1426603)))

(declare-fun b!2232256 () Bool)

(assert (=> b!2232256 (= e!1426602 e!1426604)))

(assert (=> b!2232256 (= c!355963 ((_ is Union!6429) expr!64))))

(assert (= (and d!665148 (not res!955874)) b!2232248))

(assert (= (and b!2232248 c!355962) b!2232251))

(assert (= (and b!2232248 (not c!355962)) b!2232256))

(assert (= (and b!2232251 res!955873) b!2232253))

(assert (= (and b!2232256 c!355963) b!2232255))

(assert (= (and b!2232256 (not c!355963)) b!2232249))

(assert (= (and b!2232255 res!955872) b!2232252))

(assert (= (and b!2232249 (not res!955871)) b!2232254))

(assert (= (and b!2232254 res!955870) b!2232250))

(assert (= (or b!2232252 b!2232250) bm!134054))

(assert (= (or b!2232255 b!2232254) bm!134055))

(assert (= (or b!2232253 bm!134054) bm!134053))

(declare-fun m!2668153 () Bool)

(assert (=> bm!134053 m!2668153))

(declare-fun m!2668155 () Bool)

(assert (=> bm!134055 m!2668155))

(declare-fun m!2668157 () Bool)

(assert (=> b!2232251 m!2668157))

(assert (=> start!217640 d!665148))

(declare-fun d!665150 () Bool)

(declare-fun res!955877 () Bool)

(declare-fun e!1426610 () Bool)

(assert (=> d!665150 (=> (not res!955877) (not e!1426610))))

(assert (=> d!665150 (= res!955877 ((_ is HashMap!2977) (cache!3358 cacheDown!839)))))

(assert (=> d!665150 (= (inv!35633 cacheDown!839) e!1426610)))

(declare-fun b!2232259 () Bool)

(assert (=> b!2232259 (= e!1426610 (validCacheMapDown!286 (cache!3358 cacheDown!839)))))

(assert (= (and d!665150 res!955877) b!2232259))

(assert (=> b!2232259 m!2668145))

(assert (=> start!217640 d!665150))

(declare-fun d!665152 () Bool)

(declare-fun lambda!84316 () Int)

(declare-fun forall!5367 (List!26330 Int) Bool)

(assert (=> d!665152 (= (inv!35634 context!86) (forall!5367 (exprs!2477 context!86) lambda!84316))))

(declare-fun bs!454017 () Bool)

(assert (= bs!454017 d!665152))

(declare-fun m!2668159 () Bool)

(assert (=> bs!454017 m!2668159))

(assert (=> start!217640 d!665152))

(declare-fun bs!454018 () Bool)

(declare-fun d!665154 () Bool)

(assert (= bs!454018 (and d!665154 d!665152)))

(declare-fun lambda!84317 () Int)

(assert (=> bs!454018 (= lambda!84317 lambda!84316)))

(assert (=> d!665154 (= (inv!35634 (Context!3955 ($colon$colon!522 (exprs!2477 context!86) expr!64))) (forall!5367 (exprs!2477 (Context!3955 ($colon$colon!522 (exprs!2477 context!86) expr!64))) lambda!84317))))

(declare-fun bs!454019 () Bool)

(assert (= bs!454019 d!665154))

(declare-fun m!2668161 () Bool)

(assert (=> bs!454019 m!2668161))

(assert (=> b!2232222 d!665154))

(declare-fun d!665156 () Bool)

(assert (=> d!665156 (= ($colon$colon!522 (exprs!2477 context!86) expr!64) (Cons!26236 expr!64 (exprs!2477 context!86)))))

(assert (=> b!2232222 d!665156))

(declare-fun condMapEmpty!14437 () Bool)

(declare-fun mapDefault!14437 () List!26331)

(assert (=> mapNonEmpty!14434 (= condMapEmpty!14437 (= mapRest!14434 ((as const (Array (_ BitVec 32) List!26331)) mapDefault!14437)))))

(declare-fun e!1426625 () Bool)

(declare-fun mapRes!14437 () Bool)

(assert (=> mapNonEmpty!14434 (= tp!700060 (and e!1426625 mapRes!14437))))

(declare-fun setIsEmpty!20144 () Bool)

(declare-fun setRes!20145 () Bool)

(assert (=> setIsEmpty!20144 setRes!20145))

(declare-fun mapNonEmpty!14437 () Bool)

(declare-fun tp!700095 () Bool)

(declare-fun e!1426627 () Bool)

(assert (=> mapNonEmpty!14437 (= mapRes!14437 (and tp!700095 e!1426627))))

(declare-fun mapRest!14437 () (Array (_ BitVec 32) List!26331))

(declare-fun mapValue!14437 () List!26331)

(declare-fun mapKey!14437 () (_ BitVec 32))

(assert (=> mapNonEmpty!14437 (= mapRest!14434 (store mapRest!14437 mapKey!14437 mapValue!14437))))

(declare-fun b!2232274 () Bool)

(declare-fun e!1426626 () Bool)

(declare-fun tp!700096 () Bool)

(assert (=> b!2232274 (= e!1426626 tp!700096)))

(declare-fun b!2232275 () Bool)

(declare-fun e!1426623 () Bool)

(declare-fun tp!700097 () Bool)

(assert (=> b!2232275 (= e!1426623 tp!700097)))

(declare-fun b!2232276 () Bool)

(declare-fun e!1426624 () Bool)

(declare-fun tp!700102 () Bool)

(assert (=> b!2232276 (= e!1426624 tp!700102)))

(declare-fun b!2232277 () Bool)

(declare-fun tp!700101 () Bool)

(declare-fun tp!700104 () Bool)

(assert (=> b!2232277 (= e!1426627 (and tp!700101 (inv!35634 (_2!15230 (_1!15231 (h!31638 mapValue!14437)))) e!1426623 tp_is_empty!10083 setRes!20145 tp!700104))))

(declare-fun condSetEmpty!20144 () Bool)

(assert (=> b!2232277 (= condSetEmpty!20144 (= (_2!15231 (h!31638 mapValue!14437)) ((as const (Array Context!3954 Bool)) false)))))

(declare-fun e!1426628 () Bool)

(declare-fun setElem!20144 () Context!3954)

(declare-fun setNonEmpty!20144 () Bool)

(declare-fun tp!700100 () Bool)

(declare-fun setRes!20144 () Bool)

(assert (=> setNonEmpty!20144 (= setRes!20144 (and tp!700100 (inv!35634 setElem!20144) e!1426628))))

(declare-fun setRest!20144 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20144 (= (_2!15231 (h!31638 mapDefault!14437)) ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20144 true) setRest!20144))))

(declare-fun tp!700094 () Bool)

(declare-fun setElem!20145 () Context!3954)

(declare-fun setNonEmpty!20145 () Bool)

(assert (=> setNonEmpty!20145 (= setRes!20145 (and tp!700094 (inv!35634 setElem!20145) e!1426626))))

(declare-fun setRest!20145 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20145 (= (_2!15231 (h!31638 mapValue!14437)) ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20145 true) setRest!20145))))

(declare-fun mapIsEmpty!14437 () Bool)

(assert (=> mapIsEmpty!14437 mapRes!14437))

(declare-fun setIsEmpty!20145 () Bool)

(assert (=> setIsEmpty!20145 setRes!20144))

(declare-fun tp!700103 () Bool)

(declare-fun b!2232278 () Bool)

(declare-fun tp!700098 () Bool)

(assert (=> b!2232278 (= e!1426625 (and tp!700103 (inv!35634 (_2!15230 (_1!15231 (h!31638 mapDefault!14437)))) e!1426624 tp_is_empty!10083 setRes!20144 tp!700098))))

(declare-fun condSetEmpty!20145 () Bool)

(assert (=> b!2232278 (= condSetEmpty!20145 (= (_2!15231 (h!31638 mapDefault!14437)) ((as const (Array Context!3954 Bool)) false)))))

(declare-fun b!2232279 () Bool)

(declare-fun tp!700099 () Bool)

(assert (=> b!2232279 (= e!1426628 tp!700099)))

(assert (= (and mapNonEmpty!14434 condMapEmpty!14437) mapIsEmpty!14437))

(assert (= (and mapNonEmpty!14434 (not condMapEmpty!14437)) mapNonEmpty!14437))

(assert (= b!2232277 b!2232275))

(assert (= (and b!2232277 condSetEmpty!20144) setIsEmpty!20144))

(assert (= (and b!2232277 (not condSetEmpty!20144)) setNonEmpty!20145))

(assert (= setNonEmpty!20145 b!2232274))

(assert (= (and mapNonEmpty!14437 ((_ is Cons!26237) mapValue!14437)) b!2232277))

(assert (= b!2232278 b!2232276))

(assert (= (and b!2232278 condSetEmpty!20145) setIsEmpty!20145))

(assert (= (and b!2232278 (not condSetEmpty!20145)) setNonEmpty!20144))

(assert (= setNonEmpty!20144 b!2232279))

(assert (= (and mapNonEmpty!14434 ((_ is Cons!26237) mapDefault!14437)) b!2232278))

(declare-fun m!2668163 () Bool)

(assert (=> setNonEmpty!20144 m!2668163))

(declare-fun m!2668165 () Bool)

(assert (=> mapNonEmpty!14437 m!2668165))

(declare-fun m!2668167 () Bool)

(assert (=> b!2232278 m!2668167))

(declare-fun m!2668169 () Bool)

(assert (=> setNonEmpty!20145 m!2668169))

(declare-fun m!2668171 () Bool)

(assert (=> b!2232277 m!2668171))

(declare-fun e!1426637 () Bool)

(assert (=> mapNonEmpty!14434 (= tp!700061 e!1426637)))

(declare-fun setIsEmpty!20148 () Bool)

(declare-fun setRes!20148 () Bool)

(assert (=> setIsEmpty!20148 setRes!20148))

(declare-fun tp!700116 () Bool)

(declare-fun e!1426635 () Bool)

(declare-fun b!2232288 () Bool)

(declare-fun tp!700119 () Bool)

(assert (=> b!2232288 (= e!1426637 (and tp!700116 (inv!35634 (_2!15230 (_1!15231 (h!31638 mapValue!14434)))) e!1426635 tp_is_empty!10083 setRes!20148 tp!700119))))

(declare-fun condSetEmpty!20148 () Bool)

(assert (=> b!2232288 (= condSetEmpty!20148 (= (_2!15231 (h!31638 mapValue!14434)) ((as const (Array Context!3954 Bool)) false)))))

(declare-fun b!2232289 () Bool)

(declare-fun tp!700118 () Bool)

(assert (=> b!2232289 (= e!1426635 tp!700118)))

(declare-fun b!2232290 () Bool)

(declare-fun e!1426636 () Bool)

(declare-fun tp!700117 () Bool)

(assert (=> b!2232290 (= e!1426636 tp!700117)))

(declare-fun tp!700115 () Bool)

(declare-fun setNonEmpty!20148 () Bool)

(declare-fun setElem!20148 () Context!3954)

(assert (=> setNonEmpty!20148 (= setRes!20148 (and tp!700115 (inv!35634 setElem!20148) e!1426636))))

(declare-fun setRest!20148 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20148 (= (_2!15231 (h!31638 mapValue!14434)) ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20148 true) setRest!20148))))

(assert (= b!2232288 b!2232289))

(assert (= (and b!2232288 condSetEmpty!20148) setIsEmpty!20148))

(assert (= (and b!2232288 (not condSetEmpty!20148)) setNonEmpty!20148))

(assert (= setNonEmpty!20148 b!2232290))

(assert (= (and mapNonEmpty!14434 ((_ is Cons!26237) mapValue!14434)) b!2232288))

(declare-fun m!2668173 () Bool)

(assert (=> b!2232288 m!2668173))

(declare-fun m!2668175 () Bool)

(assert (=> setNonEmpty!20148 m!2668175))

(declare-fun e!1426640 () Bool)

(assert (=> b!2232219 (= tp!700069 e!1426640)))

(declare-fun b!2232302 () Bool)

(declare-fun tp!700130 () Bool)

(declare-fun tp!700132 () Bool)

(assert (=> b!2232302 (= e!1426640 (and tp!700130 tp!700132))))

(declare-fun b!2232303 () Bool)

(declare-fun tp!700131 () Bool)

(assert (=> b!2232303 (= e!1426640 tp!700131)))

(declare-fun b!2232304 () Bool)

(declare-fun tp!700133 () Bool)

(declare-fun tp!700134 () Bool)

(assert (=> b!2232304 (= e!1426640 (and tp!700133 tp!700134))))

(declare-fun b!2232301 () Bool)

(assert (=> b!2232301 (= e!1426640 tp_is_empty!10083)))

(assert (= (and b!2232219 ((_ is ElementMatch!6429) (regOne!13371 expr!64))) b!2232301))

(assert (= (and b!2232219 ((_ is Concat!10767) (regOne!13371 expr!64))) b!2232302))

(assert (= (and b!2232219 ((_ is Star!6429) (regOne!13371 expr!64))) b!2232303))

(assert (= (and b!2232219 ((_ is Union!6429) (regOne!13371 expr!64))) b!2232304))

(declare-fun e!1426641 () Bool)

(assert (=> b!2232219 (= tp!700062 e!1426641)))

(declare-fun b!2232306 () Bool)

(declare-fun tp!700135 () Bool)

(declare-fun tp!700137 () Bool)

(assert (=> b!2232306 (= e!1426641 (and tp!700135 tp!700137))))

(declare-fun b!2232307 () Bool)

(declare-fun tp!700136 () Bool)

(assert (=> b!2232307 (= e!1426641 tp!700136)))

(declare-fun b!2232308 () Bool)

(declare-fun tp!700138 () Bool)

(declare-fun tp!700139 () Bool)

(assert (=> b!2232308 (= e!1426641 (and tp!700138 tp!700139))))

(declare-fun b!2232305 () Bool)

(assert (=> b!2232305 (= e!1426641 tp_is_empty!10083)))

(assert (= (and b!2232219 ((_ is ElementMatch!6429) (regTwo!13371 expr!64))) b!2232305))

(assert (= (and b!2232219 ((_ is Concat!10767) (regTwo!13371 expr!64))) b!2232306))

(assert (= (and b!2232219 ((_ is Star!6429) (regTwo!13371 expr!64))) b!2232307))

(assert (= (and b!2232219 ((_ is Union!6429) (regTwo!13371 expr!64))) b!2232308))

(declare-fun e!1426642 () Bool)

(assert (=> b!2232214 (= tp!700067 e!1426642)))

(declare-fun b!2232310 () Bool)

(declare-fun tp!700140 () Bool)

(declare-fun tp!700142 () Bool)

(assert (=> b!2232310 (= e!1426642 (and tp!700140 tp!700142))))

(declare-fun b!2232311 () Bool)

(declare-fun tp!700141 () Bool)

(assert (=> b!2232311 (= e!1426642 tp!700141)))

(declare-fun b!2232312 () Bool)

(declare-fun tp!700143 () Bool)

(declare-fun tp!700144 () Bool)

(assert (=> b!2232312 (= e!1426642 (and tp!700143 tp!700144))))

(declare-fun b!2232309 () Bool)

(assert (=> b!2232309 (= e!1426642 tp_is_empty!10083)))

(assert (= (and b!2232214 ((_ is ElementMatch!6429) (reg!6758 expr!64))) b!2232309))

(assert (= (and b!2232214 ((_ is Concat!10767) (reg!6758 expr!64))) b!2232310))

(assert (= (and b!2232214 ((_ is Star!6429) (reg!6758 expr!64))) b!2232311))

(assert (= (and b!2232214 ((_ is Union!6429) (reg!6758 expr!64))) b!2232312))

(declare-fun b!2232317 () Bool)

(declare-fun e!1426645 () Bool)

(declare-fun tp!700149 () Bool)

(declare-fun tp!700150 () Bool)

(assert (=> b!2232317 (= e!1426645 (and tp!700149 tp!700150))))

(assert (=> b!2232217 (= tp!700063 e!1426645)))

(assert (= (and b!2232217 ((_ is Cons!26236) (exprs!2477 context!86))) b!2232317))

(declare-fun e!1426648 () Bool)

(assert (=> b!2232218 (= tp!700068 e!1426648)))

(declare-fun setIsEmpty!20149 () Bool)

(declare-fun setRes!20149 () Bool)

(assert (=> setIsEmpty!20149 setRes!20149))

(declare-fun tp!700155 () Bool)

(declare-fun b!2232318 () Bool)

(declare-fun tp!700152 () Bool)

(declare-fun e!1426646 () Bool)

(assert (=> b!2232318 (= e!1426648 (and tp!700152 (inv!35634 (_2!15230 (_1!15231 (h!31638 (zeroValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839)))))))))) e!1426646 tp_is_empty!10083 setRes!20149 tp!700155))))

(declare-fun condSetEmpty!20149 () Bool)

(assert (=> b!2232318 (= condSetEmpty!20149 (= (_2!15231 (h!31638 (zeroValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839)))))))) ((as const (Array Context!3954 Bool)) false)))))

(declare-fun b!2232319 () Bool)

(declare-fun tp!700154 () Bool)

(assert (=> b!2232319 (= e!1426646 tp!700154)))

(declare-fun b!2232320 () Bool)

(declare-fun e!1426647 () Bool)

(declare-fun tp!700153 () Bool)

(assert (=> b!2232320 (= e!1426647 tp!700153)))

(declare-fun setElem!20149 () Context!3954)

(declare-fun tp!700151 () Bool)

(declare-fun setNonEmpty!20149 () Bool)

(assert (=> setNonEmpty!20149 (= setRes!20149 (and tp!700151 (inv!35634 setElem!20149) e!1426647))))

(declare-fun setRest!20149 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20149 (= (_2!15231 (h!31638 (zeroValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20149 true) setRest!20149))))

(assert (= b!2232318 b!2232319))

(assert (= (and b!2232318 condSetEmpty!20149) setIsEmpty!20149))

(assert (= (and b!2232318 (not condSetEmpty!20149)) setNonEmpty!20149))

(assert (= setNonEmpty!20149 b!2232320))

(assert (= (and b!2232218 ((_ is Cons!26237) (zeroValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839)))))))) b!2232318))

(declare-fun m!2668177 () Bool)

(assert (=> b!2232318 m!2668177))

(declare-fun m!2668179 () Bool)

(assert (=> setNonEmpty!20149 m!2668179))

(declare-fun e!1426651 () Bool)

(assert (=> b!2232218 (= tp!700066 e!1426651)))

(declare-fun setIsEmpty!20150 () Bool)

(declare-fun setRes!20150 () Bool)

(assert (=> setIsEmpty!20150 setRes!20150))

(declare-fun tp!700157 () Bool)

(declare-fun e!1426649 () Bool)

(declare-fun b!2232321 () Bool)

(declare-fun tp!700160 () Bool)

(assert (=> b!2232321 (= e!1426651 (and tp!700157 (inv!35634 (_2!15230 (_1!15231 (h!31638 (minValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839)))))))))) e!1426649 tp_is_empty!10083 setRes!20150 tp!700160))))

(declare-fun condSetEmpty!20150 () Bool)

(assert (=> b!2232321 (= condSetEmpty!20150 (= (_2!15231 (h!31638 (minValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839)))))))) ((as const (Array Context!3954 Bool)) false)))))

(declare-fun b!2232322 () Bool)

(declare-fun tp!700159 () Bool)

(assert (=> b!2232322 (= e!1426649 tp!700159)))

(declare-fun b!2232323 () Bool)

(declare-fun e!1426650 () Bool)

(declare-fun tp!700158 () Bool)

(assert (=> b!2232323 (= e!1426650 tp!700158)))

(declare-fun tp!700156 () Bool)

(declare-fun setElem!20150 () Context!3954)

(declare-fun setNonEmpty!20150 () Bool)

(assert (=> setNonEmpty!20150 (= setRes!20150 (and tp!700156 (inv!35634 setElem!20150) e!1426650))))

(declare-fun setRest!20150 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20150 (= (_2!15231 (h!31638 (minValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20150 true) setRest!20150))))

(assert (= b!2232321 b!2232322))

(assert (= (and b!2232321 condSetEmpty!20150) setIsEmpty!20150))

(assert (= (and b!2232321 (not condSetEmpty!20150)) setNonEmpty!20150))

(assert (= setNonEmpty!20150 b!2232323))

(assert (= (and b!2232218 ((_ is Cons!26237) (minValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839)))))))) b!2232321))

(declare-fun m!2668181 () Bool)

(assert (=> b!2232321 m!2668181))

(declare-fun m!2668183 () Bool)

(assert (=> setNonEmpty!20150 m!2668183))

(declare-fun e!1426652 () Bool)

(assert (=> b!2232216 (= tp!700059 e!1426652)))

(declare-fun b!2232325 () Bool)

(declare-fun tp!700161 () Bool)

(declare-fun tp!700163 () Bool)

(assert (=> b!2232325 (= e!1426652 (and tp!700161 tp!700163))))

(declare-fun b!2232326 () Bool)

(declare-fun tp!700162 () Bool)

(assert (=> b!2232326 (= e!1426652 tp!700162)))

(declare-fun b!2232327 () Bool)

(declare-fun tp!700164 () Bool)

(declare-fun tp!700165 () Bool)

(assert (=> b!2232327 (= e!1426652 (and tp!700164 tp!700165))))

(declare-fun b!2232324 () Bool)

(assert (=> b!2232324 (= e!1426652 tp_is_empty!10083)))

(assert (= (and b!2232216 ((_ is ElementMatch!6429) (regOne!13370 expr!64))) b!2232324))

(assert (= (and b!2232216 ((_ is Concat!10767) (regOne!13370 expr!64))) b!2232325))

(assert (= (and b!2232216 ((_ is Star!6429) (regOne!13370 expr!64))) b!2232326))

(assert (= (and b!2232216 ((_ is Union!6429) (regOne!13370 expr!64))) b!2232327))

(declare-fun e!1426653 () Bool)

(assert (=> b!2232216 (= tp!700070 e!1426653)))

(declare-fun b!2232329 () Bool)

(declare-fun tp!700166 () Bool)

(declare-fun tp!700168 () Bool)

(assert (=> b!2232329 (= e!1426653 (and tp!700166 tp!700168))))

(declare-fun b!2232330 () Bool)

(declare-fun tp!700167 () Bool)

(assert (=> b!2232330 (= e!1426653 tp!700167)))

(declare-fun b!2232331 () Bool)

(declare-fun tp!700169 () Bool)

(declare-fun tp!700170 () Bool)

(assert (=> b!2232331 (= e!1426653 (and tp!700169 tp!700170))))

(declare-fun b!2232328 () Bool)

(assert (=> b!2232328 (= e!1426653 tp_is_empty!10083)))

(assert (= (and b!2232216 ((_ is ElementMatch!6429) (regTwo!13370 expr!64))) b!2232328))

(assert (= (and b!2232216 ((_ is Concat!10767) (regTwo!13370 expr!64))) b!2232329))

(assert (= (and b!2232216 ((_ is Star!6429) (regTwo!13370 expr!64))) b!2232330))

(assert (= (and b!2232216 ((_ is Union!6429) (regTwo!13370 expr!64))) b!2232331))

(declare-fun e!1426656 () Bool)

(assert (=> b!2232212 (= tp!700071 e!1426656)))

(declare-fun setIsEmpty!20151 () Bool)

(declare-fun setRes!20151 () Bool)

(assert (=> setIsEmpty!20151 setRes!20151))

(declare-fun tp!700175 () Bool)

(declare-fun tp!700172 () Bool)

(declare-fun e!1426654 () Bool)

(declare-fun b!2232332 () Bool)

(assert (=> b!2232332 (= e!1426656 (and tp!700172 (inv!35634 (_2!15230 (_1!15231 (h!31638 mapDefault!14434)))) e!1426654 tp_is_empty!10083 setRes!20151 tp!700175))))

(declare-fun condSetEmpty!20151 () Bool)

(assert (=> b!2232332 (= condSetEmpty!20151 (= (_2!15231 (h!31638 mapDefault!14434)) ((as const (Array Context!3954 Bool)) false)))))

(declare-fun b!2232333 () Bool)

(declare-fun tp!700174 () Bool)

(assert (=> b!2232333 (= e!1426654 tp!700174)))

(declare-fun b!2232334 () Bool)

(declare-fun e!1426655 () Bool)

(declare-fun tp!700173 () Bool)

(assert (=> b!2232334 (= e!1426655 tp!700173)))

(declare-fun tp!700171 () Bool)

(declare-fun setNonEmpty!20151 () Bool)

(declare-fun setElem!20151 () Context!3954)

(assert (=> setNonEmpty!20151 (= setRes!20151 (and tp!700171 (inv!35634 setElem!20151) e!1426655))))

(declare-fun setRest!20151 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20151 (= (_2!15231 (h!31638 mapDefault!14434)) ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20151 true) setRest!20151))))

(assert (= b!2232332 b!2232333))

(assert (= (and b!2232332 condSetEmpty!20151) setIsEmpty!20151))

(assert (= (and b!2232332 (not condSetEmpty!20151)) setNonEmpty!20151))

(assert (= setNonEmpty!20151 b!2232334))

(assert (= (and b!2232212 ((_ is Cons!26237) mapDefault!14434)) b!2232332))

(declare-fun m!2668185 () Bool)

(assert (=> b!2232332 m!2668185))

(declare-fun m!2668187 () Bool)

(assert (=> setNonEmpty!20151 m!2668187))

(check-sat (not b!2232318) (not b!2232275) tp_is_empty!10083 (not setNonEmpty!20149) (not b!2232325) (not d!665140) (not b!2232302) (not b!2232312) (not b!2232279) (not bm!134055) (not b!2232320) (not b!2232323) (not setNonEmpty!20150) (not b!2232329) (not b!2232303) (not b!2232310) (not b!2232276) (not b!2232326) (not setNonEmpty!20148) (not b!2232334) (not b!2232278) (not b!2232306) (not b!2232308) (not b!2232288) (not b_next!65433) (not b!2232274) (not d!665152) (not bm!134053) (not b!2232322) b_and!174717 (not b!2232327) (not b!2232333) (not b!2232307) (not b!2232229) (not d!665154) (not setNonEmpty!20144) (not b!2232289) (not b!2232277) (not b!2232330) (not b!2232311) (not b!2232290) (not b!2232321) (not b!2232319) (not b_next!65435) (not b!2232259) (not b!2232332) (not setNonEmpty!20151) (not b!2232251) (not mapNonEmpty!14437) (not b!2232317) (not b!2232304) (not setNonEmpty!20145) (not b!2232331) b_and!174719 (not d!665142))
(check-sat b_and!174717 b_and!174719 (not b_next!65435) (not b_next!65433))
(get-model)

(declare-fun b!2232350 () Bool)

(declare-fun e!1426671 () Bool)

(declare-fun call!134065 () Bool)

(assert (=> b!2232350 (= e!1426671 call!134065)))

(declare-fun bm!134060 () Bool)

(declare-fun call!134066 () Bool)

(declare-fun c!355966 () Bool)

(assert (=> bm!134060 (= call!134066 (nullable!1771 (ite c!355966 (regOne!13371 (regOne!13370 expr!64)) (regOne!13370 (regOne!13370 expr!64)))))))

(declare-fun bm!134061 () Bool)

(assert (=> bm!134061 (= call!134065 (nullable!1771 (ite c!355966 (regTwo!13371 (regOne!13370 expr!64)) (regTwo!13370 (regOne!13370 expr!64)))))))

(declare-fun b!2232351 () Bool)

(declare-fun e!1426669 () Bool)

(declare-fun e!1426670 () Bool)

(assert (=> b!2232351 (= e!1426669 e!1426670)))

(declare-fun res!955890 () Bool)

(assert (=> b!2232351 (=> res!955890 e!1426670)))

(assert (=> b!2232351 (= res!955890 ((_ is Star!6429) (regOne!13370 expr!64)))))

(declare-fun d!665158 () Bool)

(declare-fun res!955889 () Bool)

(declare-fun e!1426672 () Bool)

(assert (=> d!665158 (=> res!955889 e!1426672)))

(assert (=> d!665158 (= res!955889 ((_ is EmptyExpr!6429) (regOne!13370 expr!64)))))

(assert (=> d!665158 (= (nullableFct!419 (regOne!13370 expr!64)) e!1426672)))

(declare-fun b!2232349 () Bool)

(declare-fun e!1426674 () Bool)

(assert (=> b!2232349 (= e!1426670 e!1426674)))

(assert (=> b!2232349 (= c!355966 ((_ is Union!6429) (regOne!13370 expr!64)))))

(declare-fun b!2232352 () Bool)

(declare-fun e!1426673 () Bool)

(assert (=> b!2232352 (= e!1426673 call!134065)))

(declare-fun b!2232353 () Bool)

(assert (=> b!2232353 (= e!1426672 e!1426669)))

(declare-fun res!955892 () Bool)

(assert (=> b!2232353 (=> (not res!955892) (not e!1426669))))

(assert (=> b!2232353 (= res!955892 (and (not ((_ is EmptyLang!6429) (regOne!13370 expr!64))) (not ((_ is ElementMatch!6429) (regOne!13370 expr!64)))))))

(declare-fun b!2232354 () Bool)

(assert (=> b!2232354 (= e!1426674 e!1426671)))

(declare-fun res!955888 () Bool)

(assert (=> b!2232354 (= res!955888 call!134066)))

(assert (=> b!2232354 (=> res!955888 e!1426671)))

(declare-fun b!2232355 () Bool)

(assert (=> b!2232355 (= e!1426674 e!1426673)))

(declare-fun res!955891 () Bool)

(assert (=> b!2232355 (= res!955891 call!134066)))

(assert (=> b!2232355 (=> (not res!955891) (not e!1426673))))

(assert (= (and d!665158 (not res!955889)) b!2232353))

(assert (= (and b!2232353 res!955892) b!2232351))

(assert (= (and b!2232351 (not res!955890)) b!2232349))

(assert (= (and b!2232349 c!355966) b!2232354))

(assert (= (and b!2232349 (not c!355966)) b!2232355))

(assert (= (and b!2232354 (not res!955888)) b!2232350))

(assert (= (and b!2232355 res!955891) b!2232352))

(assert (= (or b!2232350 b!2232352) bm!134061))

(assert (= (or b!2232354 b!2232355) bm!134060))

(declare-fun m!2668189 () Bool)

(assert (=> bm!134060 m!2668189))

(declare-fun m!2668191 () Bool)

(assert (=> bm!134061 m!2668191))

(assert (=> d!665142 d!665158))

(declare-fun d!665160 () Bool)

(declare-fun res!955899 () Bool)

(declare-fun e!1426679 () Bool)

(assert (=> d!665160 (=> (not res!955899) (not e!1426679))))

(declare-fun valid!2324 (MutableMap!2977) Bool)

(assert (=> d!665160 (= res!955899 (valid!2324 (cache!3358 cacheDown!839)))))

(assert (=> d!665160 (= (validCacheMapDown!286 (cache!3358 cacheDown!839)) e!1426679)))

(declare-fun b!2232362 () Bool)

(declare-fun res!955900 () Bool)

(assert (=> b!2232362 (=> (not res!955900) (not e!1426679))))

(declare-fun invariantList!363 (List!26331) Bool)

(declare-datatypes ((ListMap!803 0))(
  ( (ListMap!804 (toList!1330 List!26331)) )
))
(declare-fun map!5366 (MutableMap!2977) ListMap!803)

(assert (=> b!2232362 (= res!955900 (invariantList!363 (toList!1330 (map!5366 (cache!3358 cacheDown!839)))))))

(declare-fun b!2232363 () Bool)

(declare-fun lambda!84320 () Int)

(declare-fun forall!5368 (List!26331 Int) Bool)

(assert (=> b!2232363 (= e!1426679 (forall!5368 (toList!1330 (map!5366 (cache!3358 cacheDown!839))) lambda!84320))))

(assert (= (and d!665160 res!955899) b!2232362))

(assert (= (and b!2232362 res!955900) b!2232363))

(declare-fun m!2668194 () Bool)

(assert (=> d!665160 m!2668194))

(declare-fun m!2668196 () Bool)

(assert (=> b!2232362 m!2668196))

(declare-fun m!2668198 () Bool)

(assert (=> b!2232362 m!2668198))

(assert (=> b!2232363 m!2668196))

(declare-fun m!2668200 () Bool)

(assert (=> b!2232363 m!2668200))

(assert (=> b!2232259 d!665160))

(declare-fun bs!454020 () Bool)

(declare-fun d!665162 () Bool)

(assert (= bs!454020 (and d!665162 d!665152)))

(declare-fun lambda!84321 () Int)

(assert (=> bs!454020 (= lambda!84321 lambda!84316)))

(declare-fun bs!454021 () Bool)

(assert (= bs!454021 (and d!665162 d!665154)))

(assert (=> bs!454021 (= lambda!84321 lambda!84317)))

(assert (=> d!665162 (= (inv!35634 setElem!20144) (forall!5367 (exprs!2477 setElem!20144) lambda!84321))))

(declare-fun bs!454022 () Bool)

(assert (= bs!454022 d!665162))

(declare-fun m!2668202 () Bool)

(assert (=> bs!454022 m!2668202))

(assert (=> setNonEmpty!20144 d!665162))

(declare-fun bs!454023 () Bool)

(declare-fun d!665164 () Bool)

(assert (= bs!454023 (and d!665164 d!665152)))

(declare-fun lambda!84322 () Int)

(assert (=> bs!454023 (= lambda!84322 lambda!84316)))

(declare-fun bs!454024 () Bool)

(assert (= bs!454024 (and d!665164 d!665154)))

(assert (=> bs!454024 (= lambda!84322 lambda!84317)))

(declare-fun bs!454025 () Bool)

(assert (= bs!454025 (and d!665164 d!665162)))

(assert (=> bs!454025 (= lambda!84322 lambda!84321)))

(assert (=> d!665164 (= (inv!35634 setElem!20145) (forall!5367 (exprs!2477 setElem!20145) lambda!84322))))

(declare-fun bs!454026 () Bool)

(assert (= bs!454026 d!665164))

(declare-fun m!2668204 () Bool)

(assert (=> bs!454026 m!2668204))

(assert (=> setNonEmpty!20145 d!665164))

(declare-fun d!665166 () Bool)

(assert (=> d!665166 (= (get!7930 lt!830624) (v!29835 lt!830624))))

(assert (=> b!2232229 d!665166))

(declare-fun b!2232386 () Bool)

(declare-fun e!1426695 () (InoxSet Context!3954))

(declare-fun e!1426692 () (InoxSet Context!3954))

(assert (=> b!2232386 (= e!1426695 e!1426692)))

(declare-fun c!355980 () Bool)

(assert (=> b!2232386 (= c!355980 ((_ is Union!6429) expr!64))))

(declare-fun b!2232387 () Bool)

(declare-fun call!134081 () (InoxSet Context!3954))

(declare-fun call!134082 () (InoxSet Context!3954))

(assert (=> b!2232387 (= e!1426692 ((_ map or) call!134081 call!134082))))

(declare-fun call!134084 () List!26330)

(declare-fun bm!134074 () Bool)

(assert (=> bm!134074 (= call!134081 (derivationStepZipperDown!49 (ite c!355980 (regOne!13371 expr!64) (regOne!13370 expr!64)) (ite c!355980 context!86 (Context!3955 call!134084)) a!1167))))

(declare-fun bm!134075 () Bool)

(declare-fun call!134083 () (InoxSet Context!3954))

(declare-fun call!134079 () (InoxSet Context!3954))

(assert (=> bm!134075 (= call!134083 call!134079)))

(declare-fun b!2232388 () Bool)

(declare-fun c!355981 () Bool)

(declare-fun e!1426697 () Bool)

(assert (=> b!2232388 (= c!355981 e!1426697)))

(declare-fun res!955903 () Bool)

(assert (=> b!2232388 (=> (not res!955903) (not e!1426697))))

(assert (=> b!2232388 (= res!955903 ((_ is Concat!10767) expr!64))))

(declare-fun e!1426693 () (InoxSet Context!3954))

(assert (=> b!2232388 (= e!1426692 e!1426693)))

(declare-fun b!2232389 () Bool)

(declare-fun e!1426696 () (InoxSet Context!3954))

(assert (=> b!2232389 (= e!1426696 call!134083)))

(declare-fun b!2232390 () Bool)

(assert (=> b!2232390 (= e!1426693 ((_ map or) call!134081 call!134079))))

(declare-fun b!2232391 () Bool)

(declare-fun e!1426694 () (InoxSet Context!3954))

(assert (=> b!2232391 (= e!1426693 e!1426694)))

(declare-fun c!355977 () Bool)

(assert (=> b!2232391 (= c!355977 ((_ is Concat!10767) expr!64))))

(declare-fun bm!134076 () Bool)

(declare-fun call!134080 () List!26330)

(assert (=> bm!134076 (= call!134080 call!134084)))

(declare-fun b!2232392 () Bool)

(assert (=> b!2232392 (= e!1426696 ((as const (Array Context!3954 Bool)) false))))

(declare-fun bm!134077 () Bool)

(assert (=> bm!134077 (= call!134082 (derivationStepZipperDown!49 (ite c!355980 (regTwo!13371 expr!64) (ite c!355981 (regTwo!13370 expr!64) (ite c!355977 (regOne!13370 expr!64) (reg!6758 expr!64)))) (ite (or c!355980 c!355981) context!86 (Context!3955 call!134080)) a!1167))))

(declare-fun bm!134078 () Bool)

(assert (=> bm!134078 (= call!134079 call!134082)))

(declare-fun b!2232393 () Bool)

(declare-fun c!355978 () Bool)

(assert (=> b!2232393 (= c!355978 ((_ is Star!6429) expr!64))))

(assert (=> b!2232393 (= e!1426694 e!1426696)))

(declare-fun d!665168 () Bool)

(declare-fun c!355979 () Bool)

(assert (=> d!665168 (= c!355979 (and ((_ is ElementMatch!6429) expr!64) (= (c!355957 expr!64) a!1167)))))

(assert (=> d!665168 (= (derivationStepZipperDown!49 expr!64 context!86 a!1167) e!1426695)))

(declare-fun b!2232394 () Bool)

(assert (=> b!2232394 (= e!1426697 (nullable!1771 (regOne!13370 expr!64)))))

(declare-fun b!2232395 () Bool)

(assert (=> b!2232395 (= e!1426694 call!134083)))

(declare-fun bm!134079 () Bool)

(assert (=> bm!134079 (= call!134084 ($colon$colon!522 (exprs!2477 context!86) (ite (or c!355981 c!355977) (regTwo!13370 expr!64) expr!64)))))

(declare-fun b!2232396 () Bool)

(assert (=> b!2232396 (= e!1426695 (store ((as const (Array Context!3954 Bool)) false) context!86 true))))

(assert (= (and d!665168 c!355979) b!2232396))

(assert (= (and d!665168 (not c!355979)) b!2232386))

(assert (= (and b!2232386 c!355980) b!2232387))

(assert (= (and b!2232386 (not c!355980)) b!2232388))

(assert (= (and b!2232388 res!955903) b!2232394))

(assert (= (and b!2232388 c!355981) b!2232390))

(assert (= (and b!2232388 (not c!355981)) b!2232391))

(assert (= (and b!2232391 c!355977) b!2232395))

(assert (= (and b!2232391 (not c!355977)) b!2232393))

(assert (= (and b!2232393 c!355978) b!2232389))

(assert (= (and b!2232393 (not c!355978)) b!2232392))

(assert (= (or b!2232395 b!2232389) bm!134076))

(assert (= (or b!2232395 b!2232389) bm!134075))

(assert (= (or b!2232390 bm!134076) bm!134079))

(assert (= (or b!2232390 bm!134075) bm!134078))

(assert (= (or b!2232387 bm!134078) bm!134077))

(assert (= (or b!2232387 b!2232390) bm!134074))

(declare-fun m!2668206 () Bool)

(assert (=> b!2232396 m!2668206))

(declare-fun m!2668208 () Bool)

(assert (=> bm!134074 m!2668208))

(assert (=> b!2232394 m!2668129))

(declare-fun m!2668210 () Bool)

(assert (=> bm!134077 m!2668210))

(declare-fun m!2668212 () Bool)

(assert (=> bm!134079 m!2668212))

(assert (=> b!2232229 d!665168))

(declare-fun bs!454027 () Bool)

(declare-fun d!665170 () Bool)

(assert (= bs!454027 (and d!665170 d!665152)))

(declare-fun lambda!84323 () Int)

(assert (=> bs!454027 (= lambda!84323 lambda!84316)))

(declare-fun bs!454028 () Bool)

(assert (= bs!454028 (and d!665170 d!665154)))

(assert (=> bs!454028 (= lambda!84323 lambda!84317)))

(declare-fun bs!454029 () Bool)

(assert (= bs!454029 (and d!665170 d!665162)))

(assert (=> bs!454029 (= lambda!84323 lambda!84321)))

(declare-fun bs!454030 () Bool)

(assert (= bs!454030 (and d!665170 d!665164)))

(assert (=> bs!454030 (= lambda!84323 lambda!84322)))

(assert (=> d!665170 (= (inv!35634 (_2!15230 (_1!15231 (h!31638 mapValue!14437)))) (forall!5367 (exprs!2477 (_2!15230 (_1!15231 (h!31638 mapValue!14437)))) lambda!84323))))

(declare-fun bs!454031 () Bool)

(assert (= bs!454031 d!665170))

(declare-fun m!2668214 () Bool)

(assert (=> bs!454031 m!2668214))

(assert (=> b!2232277 d!665170))

(declare-fun bs!454032 () Bool)

(declare-fun d!665172 () Bool)

(assert (= bs!454032 (and d!665172 d!665152)))

(declare-fun lambda!84324 () Int)

(assert (=> bs!454032 (= lambda!84324 lambda!84316)))

(declare-fun bs!454033 () Bool)

(assert (= bs!454033 (and d!665172 d!665170)))

(assert (=> bs!454033 (= lambda!84324 lambda!84323)))

(declare-fun bs!454034 () Bool)

(assert (= bs!454034 (and d!665172 d!665164)))

(assert (=> bs!454034 (= lambda!84324 lambda!84322)))

(declare-fun bs!454035 () Bool)

(assert (= bs!454035 (and d!665172 d!665154)))

(assert (=> bs!454035 (= lambda!84324 lambda!84317)))

(declare-fun bs!454036 () Bool)

(assert (= bs!454036 (and d!665172 d!665162)))

(assert (=> bs!454036 (= lambda!84324 lambda!84321)))

(assert (=> d!665172 (= (inv!35634 (_2!15230 (_1!15231 (h!31638 (minValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839)))))))))) (forall!5367 (exprs!2477 (_2!15230 (_1!15231 (h!31638 (minValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839)))))))))) lambda!84324))))

(declare-fun bs!454037 () Bool)

(assert (= bs!454037 d!665172))

(declare-fun m!2668216 () Bool)

(assert (=> bs!454037 m!2668216))

(assert (=> b!2232321 d!665172))

(declare-fun d!665174 () Bool)

(assert (=> d!665174 (= (isEmpty!14899 lt!830624) (not ((_ is Some!5109) lt!830624)))))

(assert (=> d!665140 d!665174))

(declare-fun b!2232403 () Bool)

(declare-fun e!1426705 () Bool)

(declare-fun setRes!20154 () Bool)

(assert (=> b!2232403 (= e!1426705 setRes!20154)))

(declare-fun condSetEmpty!20154 () Bool)

(declare-fun res!955909 () Option!5110)

(assert (=> b!2232403 (= condSetEmpty!20154 (= (v!29835 res!955909) ((as const (Array Context!3954 Bool)) false)))))

(declare-fun e!1426704 () Bool)

(declare-fun b!2232404 () Bool)

(assert (=> b!2232404 (= e!1426704 (= (get!7930 res!955909) (derivationStepZipperDown!49 expr!64 context!86 a!1167)))))

(declare-fun b!2232405 () Bool)

(declare-fun e!1426706 () Bool)

(declare-fun tp!700180 () Bool)

(assert (=> b!2232405 (= e!1426706 tp!700180)))

(declare-fun setIsEmpty!20154 () Bool)

(assert (=> setIsEmpty!20154 setRes!20154))

(declare-fun setNonEmpty!20154 () Bool)

(declare-fun setElem!20154 () Context!3954)

(declare-fun tp!700181 () Bool)

(assert (=> setNonEmpty!20154 (= setRes!20154 (and tp!700181 (inv!35634 setElem!20154) e!1426706))))

(declare-fun setRest!20154 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20154 (= (v!29835 res!955909) ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20154 true) setRest!20154))))

(declare-fun d!665176 () Bool)

(assert (=> d!665176 e!1426704))

(declare-fun res!955908 () Bool)

(assert (=> d!665176 (=> res!955908 e!1426704)))

(assert (=> d!665176 (= res!955908 (isEmpty!14899 res!955909))))

(assert (=> d!665176 e!1426705))

(assert (=> d!665176 (= (choose!13130 cacheDown!839 expr!64 context!86 a!1167) res!955909)))

(assert (= (and b!2232403 condSetEmpty!20154) setIsEmpty!20154))

(assert (= (and b!2232403 (not condSetEmpty!20154)) setNonEmpty!20154))

(assert (= setNonEmpty!20154 b!2232405))

(assert (= (and d!665176 ((_ is Some!5109) res!955909)) b!2232403))

(assert (= (and d!665176 (not res!955908)) b!2232404))

(declare-fun m!2668218 () Bool)

(assert (=> b!2232404 m!2668218))

(assert (=> b!2232404 m!2668149))

(declare-fun m!2668220 () Bool)

(assert (=> setNonEmpty!20154 m!2668220))

(declare-fun m!2668222 () Bool)

(assert (=> d!665176 m!2668222))

(assert (=> d!665140 d!665176))

(assert (=> d!665140 d!665160))

(declare-fun d!665178 () Bool)

(declare-fun res!955914 () Bool)

(declare-fun e!1426711 () Bool)

(assert (=> d!665178 (=> res!955914 e!1426711)))

(assert (=> d!665178 (= res!955914 ((_ is Nil!26236) (exprs!2477 context!86)))))

(assert (=> d!665178 (= (forall!5367 (exprs!2477 context!86) lambda!84316) e!1426711)))

(declare-fun b!2232410 () Bool)

(declare-fun e!1426712 () Bool)

(assert (=> b!2232410 (= e!1426711 e!1426712)))

(declare-fun res!955915 () Bool)

(assert (=> b!2232410 (=> (not res!955915) (not e!1426712))))

(declare-fun dynLambda!11524 (Int Regex!6429) Bool)

(assert (=> b!2232410 (= res!955915 (dynLambda!11524 lambda!84316 (h!31637 (exprs!2477 context!86))))))

(declare-fun b!2232411 () Bool)

(assert (=> b!2232411 (= e!1426712 (forall!5367 (t!199748 (exprs!2477 context!86)) lambda!84316))))

(assert (= (and d!665178 (not res!955914)) b!2232410))

(assert (= (and b!2232410 res!955915) b!2232411))

(declare-fun b_lambda!71661 () Bool)

(assert (=> (not b_lambda!71661) (not b!2232410)))

(declare-fun m!2668224 () Bool)

(assert (=> b!2232410 m!2668224))

(declare-fun m!2668226 () Bool)

(assert (=> b!2232411 m!2668226))

(assert (=> d!665152 d!665178))

(declare-fun bs!454038 () Bool)

(declare-fun d!665180 () Bool)

(assert (= bs!454038 (and d!665180 d!665172)))

(declare-fun lambda!84325 () Int)

(assert (=> bs!454038 (= lambda!84325 lambda!84324)))

(declare-fun bs!454039 () Bool)

(assert (= bs!454039 (and d!665180 d!665152)))

(assert (=> bs!454039 (= lambda!84325 lambda!84316)))

(declare-fun bs!454040 () Bool)

(assert (= bs!454040 (and d!665180 d!665170)))

(assert (=> bs!454040 (= lambda!84325 lambda!84323)))

(declare-fun bs!454041 () Bool)

(assert (= bs!454041 (and d!665180 d!665164)))

(assert (=> bs!454041 (= lambda!84325 lambda!84322)))

(declare-fun bs!454042 () Bool)

(assert (= bs!454042 (and d!665180 d!665154)))

(assert (=> bs!454042 (= lambda!84325 lambda!84317)))

(declare-fun bs!454043 () Bool)

(assert (= bs!454043 (and d!665180 d!665162)))

(assert (=> bs!454043 (= lambda!84325 lambda!84321)))

(assert (=> d!665180 (= (inv!35634 (_2!15230 (_1!15231 (h!31638 mapDefault!14434)))) (forall!5367 (exprs!2477 (_2!15230 (_1!15231 (h!31638 mapDefault!14434)))) lambda!84325))))

(declare-fun bs!454044 () Bool)

(assert (= bs!454044 d!665180))

(declare-fun m!2668228 () Bool)

(assert (=> bs!454044 m!2668228))

(assert (=> b!2232332 d!665180))

(declare-fun b!2232412 () Bool)

(declare-fun e!1426718 () Bool)

(declare-fun e!1426714 () Bool)

(assert (=> b!2232412 (= e!1426718 e!1426714)))

(declare-fun c!355982 () Bool)

(assert (=> b!2232412 (= c!355982 ((_ is Star!6429) (ite c!355963 (regOne!13371 expr!64) (regOne!13370 expr!64))))))

(declare-fun b!2232413 () Bool)

(declare-fun res!955917 () Bool)

(declare-fun e!1426717 () Bool)

(assert (=> b!2232413 (=> res!955917 e!1426717)))

(assert (=> b!2232413 (= res!955917 (not ((_ is Concat!10767) (ite c!355963 (regOne!13371 expr!64) (regOne!13370 expr!64)))))))

(declare-fun e!1426716 () Bool)

(assert (=> b!2232413 (= e!1426716 e!1426717)))

(declare-fun b!2232414 () Bool)

(declare-fun e!1426713 () Bool)

(declare-fun call!134087 () Bool)

(assert (=> b!2232414 (= e!1426713 call!134087)))

(declare-fun c!355983 () Bool)

(declare-fun call!134086 () Bool)

(declare-fun bm!134080 () Bool)

(assert (=> bm!134080 (= call!134086 (validRegex!2400 (ite c!355982 (reg!6758 (ite c!355963 (regOne!13371 expr!64) (regOne!13370 expr!64))) (ite c!355983 (regTwo!13371 (ite c!355963 (regOne!13371 expr!64) (regOne!13370 expr!64))) (regTwo!13370 (ite c!355963 (regOne!13371 expr!64) (regOne!13370 expr!64)))))))))

(declare-fun bm!134081 () Bool)

(assert (=> bm!134081 (= call!134087 call!134086)))

(declare-fun call!134085 () Bool)

(declare-fun bm!134082 () Bool)

(assert (=> bm!134082 (= call!134085 (validRegex!2400 (ite c!355983 (regOne!13371 (ite c!355963 (regOne!13371 expr!64) (regOne!13370 expr!64))) (regOne!13370 (ite c!355963 (regOne!13371 expr!64) (regOne!13370 expr!64))))))))

(declare-fun d!665182 () Bool)

(declare-fun res!955920 () Bool)

(assert (=> d!665182 (=> res!955920 e!1426718)))

(assert (=> d!665182 (= res!955920 ((_ is ElementMatch!6429) (ite c!355963 (regOne!13371 expr!64) (regOne!13370 expr!64))))))

(assert (=> d!665182 (= (validRegex!2400 (ite c!355963 (regOne!13371 expr!64) (regOne!13370 expr!64))) e!1426718)))

(declare-fun b!2232415 () Bool)

(declare-fun e!1426719 () Bool)

(assert (=> b!2232415 (= e!1426714 e!1426719)))

(declare-fun res!955919 () Bool)

(assert (=> b!2232415 (= res!955919 (not (nullable!1771 (reg!6758 (ite c!355963 (regOne!13371 expr!64) (regOne!13370 expr!64))))))))

(assert (=> b!2232415 (=> (not res!955919) (not e!1426719))))

(declare-fun b!2232416 () Bool)

(declare-fun e!1426715 () Bool)

(assert (=> b!2232416 (= e!1426715 call!134087)))

(declare-fun b!2232417 () Bool)

(assert (=> b!2232417 (= e!1426719 call!134086)))

(declare-fun b!2232418 () Bool)

(assert (=> b!2232418 (= e!1426717 e!1426713)))

(declare-fun res!955916 () Bool)

(assert (=> b!2232418 (=> (not res!955916) (not e!1426713))))

(assert (=> b!2232418 (= res!955916 call!134085)))

(declare-fun b!2232419 () Bool)

(declare-fun res!955918 () Bool)

(assert (=> b!2232419 (=> (not res!955918) (not e!1426715))))

(assert (=> b!2232419 (= res!955918 call!134085)))

(assert (=> b!2232419 (= e!1426716 e!1426715)))

(declare-fun b!2232420 () Bool)

(assert (=> b!2232420 (= e!1426714 e!1426716)))

(assert (=> b!2232420 (= c!355983 ((_ is Union!6429) (ite c!355963 (regOne!13371 expr!64) (regOne!13370 expr!64))))))

(assert (= (and d!665182 (not res!955920)) b!2232412))

(assert (= (and b!2232412 c!355982) b!2232415))

(assert (= (and b!2232412 (not c!355982)) b!2232420))

(assert (= (and b!2232415 res!955919) b!2232417))

(assert (= (and b!2232420 c!355983) b!2232419))

(assert (= (and b!2232420 (not c!355983)) b!2232413))

(assert (= (and b!2232419 res!955918) b!2232416))

(assert (= (and b!2232413 (not res!955917)) b!2232418))

(assert (= (and b!2232418 res!955916) b!2232414))

(assert (= (or b!2232416 b!2232414) bm!134081))

(assert (= (or b!2232419 b!2232418) bm!134082))

(assert (= (or b!2232417 bm!134081) bm!134080))

(declare-fun m!2668230 () Bool)

(assert (=> bm!134080 m!2668230))

(declare-fun m!2668232 () Bool)

(assert (=> bm!134082 m!2668232))

(declare-fun m!2668234 () Bool)

(assert (=> b!2232415 m!2668234))

(assert (=> bm!134055 d!665182))

(declare-fun b!2232421 () Bool)

(declare-fun e!1426725 () Bool)

(declare-fun e!1426721 () Bool)

(assert (=> b!2232421 (= e!1426725 e!1426721)))

(declare-fun c!355984 () Bool)

(assert (=> b!2232421 (= c!355984 ((_ is Star!6429) (ite c!355962 (reg!6758 expr!64) (ite c!355963 (regTwo!13371 expr!64) (regTwo!13370 expr!64)))))))

(declare-fun b!2232422 () Bool)

(declare-fun res!955922 () Bool)

(declare-fun e!1426724 () Bool)

(assert (=> b!2232422 (=> res!955922 e!1426724)))

(assert (=> b!2232422 (= res!955922 (not ((_ is Concat!10767) (ite c!355962 (reg!6758 expr!64) (ite c!355963 (regTwo!13371 expr!64) (regTwo!13370 expr!64))))))))

(declare-fun e!1426723 () Bool)

(assert (=> b!2232422 (= e!1426723 e!1426724)))

(declare-fun b!2232423 () Bool)

(declare-fun e!1426720 () Bool)

(declare-fun call!134090 () Bool)

(assert (=> b!2232423 (= e!1426720 call!134090)))

(declare-fun bm!134083 () Bool)

(declare-fun c!355985 () Bool)

(declare-fun call!134089 () Bool)

(assert (=> bm!134083 (= call!134089 (validRegex!2400 (ite c!355984 (reg!6758 (ite c!355962 (reg!6758 expr!64) (ite c!355963 (regTwo!13371 expr!64) (regTwo!13370 expr!64)))) (ite c!355985 (regTwo!13371 (ite c!355962 (reg!6758 expr!64) (ite c!355963 (regTwo!13371 expr!64) (regTwo!13370 expr!64)))) (regTwo!13370 (ite c!355962 (reg!6758 expr!64) (ite c!355963 (regTwo!13371 expr!64) (regTwo!13370 expr!64))))))))))

(declare-fun bm!134084 () Bool)

(assert (=> bm!134084 (= call!134090 call!134089)))

(declare-fun bm!134085 () Bool)

(declare-fun call!134088 () Bool)

(assert (=> bm!134085 (= call!134088 (validRegex!2400 (ite c!355985 (regOne!13371 (ite c!355962 (reg!6758 expr!64) (ite c!355963 (regTwo!13371 expr!64) (regTwo!13370 expr!64)))) (regOne!13370 (ite c!355962 (reg!6758 expr!64) (ite c!355963 (regTwo!13371 expr!64) (regTwo!13370 expr!64)))))))))

(declare-fun d!665184 () Bool)

(declare-fun res!955925 () Bool)

(assert (=> d!665184 (=> res!955925 e!1426725)))

(assert (=> d!665184 (= res!955925 ((_ is ElementMatch!6429) (ite c!355962 (reg!6758 expr!64) (ite c!355963 (regTwo!13371 expr!64) (regTwo!13370 expr!64)))))))

(assert (=> d!665184 (= (validRegex!2400 (ite c!355962 (reg!6758 expr!64) (ite c!355963 (regTwo!13371 expr!64) (regTwo!13370 expr!64)))) e!1426725)))

(declare-fun b!2232424 () Bool)

(declare-fun e!1426726 () Bool)

(assert (=> b!2232424 (= e!1426721 e!1426726)))

(declare-fun res!955924 () Bool)

(assert (=> b!2232424 (= res!955924 (not (nullable!1771 (reg!6758 (ite c!355962 (reg!6758 expr!64) (ite c!355963 (regTwo!13371 expr!64) (regTwo!13370 expr!64)))))))))

(assert (=> b!2232424 (=> (not res!955924) (not e!1426726))))

(declare-fun b!2232425 () Bool)

(declare-fun e!1426722 () Bool)

(assert (=> b!2232425 (= e!1426722 call!134090)))

(declare-fun b!2232426 () Bool)

(assert (=> b!2232426 (= e!1426726 call!134089)))

(declare-fun b!2232427 () Bool)

(assert (=> b!2232427 (= e!1426724 e!1426720)))

(declare-fun res!955921 () Bool)

(assert (=> b!2232427 (=> (not res!955921) (not e!1426720))))

(assert (=> b!2232427 (= res!955921 call!134088)))

(declare-fun b!2232428 () Bool)

(declare-fun res!955923 () Bool)

(assert (=> b!2232428 (=> (not res!955923) (not e!1426722))))

(assert (=> b!2232428 (= res!955923 call!134088)))

(assert (=> b!2232428 (= e!1426723 e!1426722)))

(declare-fun b!2232429 () Bool)

(assert (=> b!2232429 (= e!1426721 e!1426723)))

(assert (=> b!2232429 (= c!355985 ((_ is Union!6429) (ite c!355962 (reg!6758 expr!64) (ite c!355963 (regTwo!13371 expr!64) (regTwo!13370 expr!64)))))))

(assert (= (and d!665184 (not res!955925)) b!2232421))

(assert (= (and b!2232421 c!355984) b!2232424))

(assert (= (and b!2232421 (not c!355984)) b!2232429))

(assert (= (and b!2232424 res!955924) b!2232426))

(assert (= (and b!2232429 c!355985) b!2232428))

(assert (= (and b!2232429 (not c!355985)) b!2232422))

(assert (= (and b!2232428 res!955923) b!2232425))

(assert (= (and b!2232422 (not res!955922)) b!2232427))

(assert (= (and b!2232427 res!955921) b!2232423))

(assert (= (or b!2232425 b!2232423) bm!134084))

(assert (= (or b!2232428 b!2232427) bm!134085))

(assert (= (or b!2232426 bm!134084) bm!134083))

(declare-fun m!2668236 () Bool)

(assert (=> bm!134083 m!2668236))

(declare-fun m!2668238 () Bool)

(assert (=> bm!134085 m!2668238))

(declare-fun m!2668240 () Bool)

(assert (=> b!2232424 m!2668240))

(assert (=> bm!134053 d!665184))

(declare-fun bs!454045 () Bool)

(declare-fun d!665186 () Bool)

(assert (= bs!454045 (and d!665186 d!665180)))

(declare-fun lambda!84326 () Int)

(assert (=> bs!454045 (= lambda!84326 lambda!84325)))

(declare-fun bs!454046 () Bool)

(assert (= bs!454046 (and d!665186 d!665172)))

(assert (=> bs!454046 (= lambda!84326 lambda!84324)))

(declare-fun bs!454047 () Bool)

(assert (= bs!454047 (and d!665186 d!665152)))

(assert (=> bs!454047 (= lambda!84326 lambda!84316)))

(declare-fun bs!454048 () Bool)

(assert (= bs!454048 (and d!665186 d!665170)))

(assert (=> bs!454048 (= lambda!84326 lambda!84323)))

(declare-fun bs!454049 () Bool)

(assert (= bs!454049 (and d!665186 d!665164)))

(assert (=> bs!454049 (= lambda!84326 lambda!84322)))

(declare-fun bs!454050 () Bool)

(assert (= bs!454050 (and d!665186 d!665154)))

(assert (=> bs!454050 (= lambda!84326 lambda!84317)))

(declare-fun bs!454051 () Bool)

(assert (= bs!454051 (and d!665186 d!665162)))

(assert (=> bs!454051 (= lambda!84326 lambda!84321)))

(assert (=> d!665186 (= (inv!35634 (_2!15230 (_1!15231 (h!31638 (zeroValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839)))))))))) (forall!5367 (exprs!2477 (_2!15230 (_1!15231 (h!31638 (zeroValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839)))))))))) lambda!84326))))

(declare-fun bs!454052 () Bool)

(assert (= bs!454052 d!665186))

(declare-fun m!2668242 () Bool)

(assert (=> bs!454052 m!2668242))

(assert (=> b!2232318 d!665186))

(declare-fun bs!454053 () Bool)

(declare-fun d!665188 () Bool)

(assert (= bs!454053 (and d!665188 d!665180)))

(declare-fun lambda!84327 () Int)

(assert (=> bs!454053 (= lambda!84327 lambda!84325)))

(declare-fun bs!454054 () Bool)

(assert (= bs!454054 (and d!665188 d!665186)))

(assert (=> bs!454054 (= lambda!84327 lambda!84326)))

(declare-fun bs!454055 () Bool)

(assert (= bs!454055 (and d!665188 d!665172)))

(assert (=> bs!454055 (= lambda!84327 lambda!84324)))

(declare-fun bs!454056 () Bool)

(assert (= bs!454056 (and d!665188 d!665152)))

(assert (=> bs!454056 (= lambda!84327 lambda!84316)))

(declare-fun bs!454057 () Bool)

(assert (= bs!454057 (and d!665188 d!665170)))

(assert (=> bs!454057 (= lambda!84327 lambda!84323)))

(declare-fun bs!454058 () Bool)

(assert (= bs!454058 (and d!665188 d!665164)))

(assert (=> bs!454058 (= lambda!84327 lambda!84322)))

(declare-fun bs!454059 () Bool)

(assert (= bs!454059 (and d!665188 d!665154)))

(assert (=> bs!454059 (= lambda!84327 lambda!84317)))

(declare-fun bs!454060 () Bool)

(assert (= bs!454060 (and d!665188 d!665162)))

(assert (=> bs!454060 (= lambda!84327 lambda!84321)))

(assert (=> d!665188 (= (inv!35634 (_2!15230 (_1!15231 (h!31638 mapDefault!14437)))) (forall!5367 (exprs!2477 (_2!15230 (_1!15231 (h!31638 mapDefault!14437)))) lambda!84327))))

(declare-fun bs!454061 () Bool)

(assert (= bs!454061 d!665188))

(declare-fun m!2668244 () Bool)

(assert (=> bs!454061 m!2668244))

(assert (=> b!2232278 d!665188))

(declare-fun bs!454062 () Bool)

(declare-fun d!665190 () Bool)

(assert (= bs!454062 (and d!665190 d!665180)))

(declare-fun lambda!84328 () Int)

(assert (=> bs!454062 (= lambda!84328 lambda!84325)))

(declare-fun bs!454063 () Bool)

(assert (= bs!454063 (and d!665190 d!665186)))

(assert (=> bs!454063 (= lambda!84328 lambda!84326)))

(declare-fun bs!454064 () Bool)

(assert (= bs!454064 (and d!665190 d!665172)))

(assert (=> bs!454064 (= lambda!84328 lambda!84324)))

(declare-fun bs!454065 () Bool)

(assert (= bs!454065 (and d!665190 d!665152)))

(assert (=> bs!454065 (= lambda!84328 lambda!84316)))

(declare-fun bs!454066 () Bool)

(assert (= bs!454066 (and d!665190 d!665170)))

(assert (=> bs!454066 (= lambda!84328 lambda!84323)))

(declare-fun bs!454067 () Bool)

(assert (= bs!454067 (and d!665190 d!665164)))

(assert (=> bs!454067 (= lambda!84328 lambda!84322)))

(declare-fun bs!454068 () Bool)

(assert (= bs!454068 (and d!665190 d!665154)))

(assert (=> bs!454068 (= lambda!84328 lambda!84317)))

(declare-fun bs!454069 () Bool)

(assert (= bs!454069 (and d!665190 d!665162)))

(assert (=> bs!454069 (= lambda!84328 lambda!84321)))

(declare-fun bs!454070 () Bool)

(assert (= bs!454070 (and d!665190 d!665188)))

(assert (=> bs!454070 (= lambda!84328 lambda!84327)))

(assert (=> d!665190 (= (inv!35634 setElem!20151) (forall!5367 (exprs!2477 setElem!20151) lambda!84328))))

(declare-fun bs!454071 () Bool)

(assert (= bs!454071 d!665190))

(declare-fun m!2668246 () Bool)

(assert (=> bs!454071 m!2668246))

(assert (=> setNonEmpty!20151 d!665190))

(declare-fun bs!454072 () Bool)

(declare-fun d!665192 () Bool)

(assert (= bs!454072 (and d!665192 d!665180)))

(declare-fun lambda!84329 () Int)

(assert (=> bs!454072 (= lambda!84329 lambda!84325)))

(declare-fun bs!454073 () Bool)

(assert (= bs!454073 (and d!665192 d!665186)))

(assert (=> bs!454073 (= lambda!84329 lambda!84326)))

(declare-fun bs!454074 () Bool)

(assert (= bs!454074 (and d!665192 d!665172)))

(assert (=> bs!454074 (= lambda!84329 lambda!84324)))

(declare-fun bs!454075 () Bool)

(assert (= bs!454075 (and d!665192 d!665152)))

(assert (=> bs!454075 (= lambda!84329 lambda!84316)))

(declare-fun bs!454076 () Bool)

(assert (= bs!454076 (and d!665192 d!665170)))

(assert (=> bs!454076 (= lambda!84329 lambda!84323)))

(declare-fun bs!454077 () Bool)

(assert (= bs!454077 (and d!665192 d!665190)))

(assert (=> bs!454077 (= lambda!84329 lambda!84328)))

(declare-fun bs!454078 () Bool)

(assert (= bs!454078 (and d!665192 d!665164)))

(assert (=> bs!454078 (= lambda!84329 lambda!84322)))

(declare-fun bs!454079 () Bool)

(assert (= bs!454079 (and d!665192 d!665154)))

(assert (=> bs!454079 (= lambda!84329 lambda!84317)))

(declare-fun bs!454080 () Bool)

(assert (= bs!454080 (and d!665192 d!665162)))

(assert (=> bs!454080 (= lambda!84329 lambda!84321)))

(declare-fun bs!454081 () Bool)

(assert (= bs!454081 (and d!665192 d!665188)))

(assert (=> bs!454081 (= lambda!84329 lambda!84327)))

(assert (=> d!665192 (= (inv!35634 (_2!15230 (_1!15231 (h!31638 mapValue!14434)))) (forall!5367 (exprs!2477 (_2!15230 (_1!15231 (h!31638 mapValue!14434)))) lambda!84329))))

(declare-fun bs!454082 () Bool)

(assert (= bs!454082 d!665192))

(declare-fun m!2668248 () Bool)

(assert (=> bs!454082 m!2668248))

(assert (=> b!2232288 d!665192))

(declare-fun bs!454083 () Bool)

(declare-fun d!665194 () Bool)

(assert (= bs!454083 (and d!665194 d!665180)))

(declare-fun lambda!84330 () Int)

(assert (=> bs!454083 (= lambda!84330 lambda!84325)))

(declare-fun bs!454084 () Bool)

(assert (= bs!454084 (and d!665194 d!665186)))

(assert (=> bs!454084 (= lambda!84330 lambda!84326)))

(declare-fun bs!454085 () Bool)

(assert (= bs!454085 (and d!665194 d!665192)))

(assert (=> bs!454085 (= lambda!84330 lambda!84329)))

(declare-fun bs!454086 () Bool)

(assert (= bs!454086 (and d!665194 d!665172)))

(assert (=> bs!454086 (= lambda!84330 lambda!84324)))

(declare-fun bs!454087 () Bool)

(assert (= bs!454087 (and d!665194 d!665152)))

(assert (=> bs!454087 (= lambda!84330 lambda!84316)))

(declare-fun bs!454088 () Bool)

(assert (= bs!454088 (and d!665194 d!665170)))

(assert (=> bs!454088 (= lambda!84330 lambda!84323)))

(declare-fun bs!454089 () Bool)

(assert (= bs!454089 (and d!665194 d!665190)))

(assert (=> bs!454089 (= lambda!84330 lambda!84328)))

(declare-fun bs!454090 () Bool)

(assert (= bs!454090 (and d!665194 d!665164)))

(assert (=> bs!454090 (= lambda!84330 lambda!84322)))

(declare-fun bs!454091 () Bool)

(assert (= bs!454091 (and d!665194 d!665154)))

(assert (=> bs!454091 (= lambda!84330 lambda!84317)))

(declare-fun bs!454092 () Bool)

(assert (= bs!454092 (and d!665194 d!665162)))

(assert (=> bs!454092 (= lambda!84330 lambda!84321)))

(declare-fun bs!454093 () Bool)

(assert (= bs!454093 (and d!665194 d!665188)))

(assert (=> bs!454093 (= lambda!84330 lambda!84327)))

(assert (=> d!665194 (= (inv!35634 setElem!20148) (forall!5367 (exprs!2477 setElem!20148) lambda!84330))))

(declare-fun bs!454094 () Bool)

(assert (= bs!454094 d!665194))

(declare-fun m!2668250 () Bool)

(assert (=> bs!454094 m!2668250))

(assert (=> setNonEmpty!20148 d!665194))

(declare-fun d!665196 () Bool)

(declare-fun res!955926 () Bool)

(declare-fun e!1426727 () Bool)

(assert (=> d!665196 (=> res!955926 e!1426727)))

(assert (=> d!665196 (= res!955926 ((_ is Nil!26236) (exprs!2477 (Context!3955 ($colon$colon!522 (exprs!2477 context!86) expr!64)))))))

(assert (=> d!665196 (= (forall!5367 (exprs!2477 (Context!3955 ($colon$colon!522 (exprs!2477 context!86) expr!64))) lambda!84317) e!1426727)))

(declare-fun b!2232430 () Bool)

(declare-fun e!1426728 () Bool)

(assert (=> b!2232430 (= e!1426727 e!1426728)))

(declare-fun res!955927 () Bool)

(assert (=> b!2232430 (=> (not res!955927) (not e!1426728))))

(assert (=> b!2232430 (= res!955927 (dynLambda!11524 lambda!84317 (h!31637 (exprs!2477 (Context!3955 ($colon$colon!522 (exprs!2477 context!86) expr!64))))))))

(declare-fun b!2232431 () Bool)

(assert (=> b!2232431 (= e!1426728 (forall!5367 (t!199748 (exprs!2477 (Context!3955 ($colon$colon!522 (exprs!2477 context!86) expr!64)))) lambda!84317))))

(assert (= (and d!665196 (not res!955926)) b!2232430))

(assert (= (and b!2232430 res!955927) b!2232431))

(declare-fun b_lambda!71663 () Bool)

(assert (=> (not b_lambda!71663) (not b!2232430)))

(declare-fun m!2668252 () Bool)

(assert (=> b!2232430 m!2668252))

(declare-fun m!2668254 () Bool)

(assert (=> b!2232431 m!2668254))

(assert (=> d!665154 d!665196))

(declare-fun bs!454095 () Bool)

(declare-fun d!665198 () Bool)

(assert (= bs!454095 (and d!665198 d!665180)))

(declare-fun lambda!84331 () Int)

(assert (=> bs!454095 (= lambda!84331 lambda!84325)))

(declare-fun bs!454096 () Bool)

(assert (= bs!454096 (and d!665198 d!665186)))

(assert (=> bs!454096 (= lambda!84331 lambda!84326)))

(declare-fun bs!454097 () Bool)

(assert (= bs!454097 (and d!665198 d!665192)))

(assert (=> bs!454097 (= lambda!84331 lambda!84329)))

(declare-fun bs!454098 () Bool)

(assert (= bs!454098 (and d!665198 d!665172)))

(assert (=> bs!454098 (= lambda!84331 lambda!84324)))

(declare-fun bs!454099 () Bool)

(assert (= bs!454099 (and d!665198 d!665194)))

(assert (=> bs!454099 (= lambda!84331 lambda!84330)))

(declare-fun bs!454100 () Bool)

(assert (= bs!454100 (and d!665198 d!665152)))

(assert (=> bs!454100 (= lambda!84331 lambda!84316)))

(declare-fun bs!454101 () Bool)

(assert (= bs!454101 (and d!665198 d!665170)))

(assert (=> bs!454101 (= lambda!84331 lambda!84323)))

(declare-fun bs!454102 () Bool)

(assert (= bs!454102 (and d!665198 d!665190)))

(assert (=> bs!454102 (= lambda!84331 lambda!84328)))

(declare-fun bs!454103 () Bool)

(assert (= bs!454103 (and d!665198 d!665164)))

(assert (=> bs!454103 (= lambda!84331 lambda!84322)))

(declare-fun bs!454104 () Bool)

(assert (= bs!454104 (and d!665198 d!665154)))

(assert (=> bs!454104 (= lambda!84331 lambda!84317)))

(declare-fun bs!454105 () Bool)

(assert (= bs!454105 (and d!665198 d!665162)))

(assert (=> bs!454105 (= lambda!84331 lambda!84321)))

(declare-fun bs!454106 () Bool)

(assert (= bs!454106 (and d!665198 d!665188)))

(assert (=> bs!454106 (= lambda!84331 lambda!84327)))

(assert (=> d!665198 (= (inv!35634 setElem!20150) (forall!5367 (exprs!2477 setElem!20150) lambda!84331))))

(declare-fun bs!454107 () Bool)

(assert (= bs!454107 d!665198))

(declare-fun m!2668256 () Bool)

(assert (=> bs!454107 m!2668256))

(assert (=> setNonEmpty!20150 d!665198))

(declare-fun d!665200 () Bool)

(assert (=> d!665200 (= (nullable!1771 (reg!6758 expr!64)) (nullableFct!419 (reg!6758 expr!64)))))

(declare-fun bs!454108 () Bool)

(assert (= bs!454108 d!665200))

(declare-fun m!2668258 () Bool)

(assert (=> bs!454108 m!2668258))

(assert (=> b!2232251 d!665200))

(declare-fun bs!454109 () Bool)

(declare-fun d!665202 () Bool)

(assert (= bs!454109 (and d!665202 d!665180)))

(declare-fun lambda!84332 () Int)

(assert (=> bs!454109 (= lambda!84332 lambda!84325)))

(declare-fun bs!454110 () Bool)

(assert (= bs!454110 (and d!665202 d!665186)))

(assert (=> bs!454110 (= lambda!84332 lambda!84326)))

(declare-fun bs!454111 () Bool)

(assert (= bs!454111 (and d!665202 d!665192)))

(assert (=> bs!454111 (= lambda!84332 lambda!84329)))

(declare-fun bs!454112 () Bool)

(assert (= bs!454112 (and d!665202 d!665172)))

(assert (=> bs!454112 (= lambda!84332 lambda!84324)))

(declare-fun bs!454113 () Bool)

(assert (= bs!454113 (and d!665202 d!665194)))

(assert (=> bs!454113 (= lambda!84332 lambda!84330)))

(declare-fun bs!454114 () Bool)

(assert (= bs!454114 (and d!665202 d!665152)))

(assert (=> bs!454114 (= lambda!84332 lambda!84316)))

(declare-fun bs!454115 () Bool)

(assert (= bs!454115 (and d!665202 d!665170)))

(assert (=> bs!454115 (= lambda!84332 lambda!84323)))

(declare-fun bs!454116 () Bool)

(assert (= bs!454116 (and d!665202 d!665190)))

(assert (=> bs!454116 (= lambda!84332 lambda!84328)))

(declare-fun bs!454117 () Bool)

(assert (= bs!454117 (and d!665202 d!665154)))

(assert (=> bs!454117 (= lambda!84332 lambda!84317)))

(declare-fun bs!454118 () Bool)

(assert (= bs!454118 (and d!665202 d!665162)))

(assert (=> bs!454118 (= lambda!84332 lambda!84321)))

(declare-fun bs!454119 () Bool)

(assert (= bs!454119 (and d!665202 d!665188)))

(assert (=> bs!454119 (= lambda!84332 lambda!84327)))

(declare-fun bs!454120 () Bool)

(assert (= bs!454120 (and d!665202 d!665198)))

(assert (=> bs!454120 (= lambda!84332 lambda!84331)))

(declare-fun bs!454121 () Bool)

(assert (= bs!454121 (and d!665202 d!665164)))

(assert (=> bs!454121 (= lambda!84332 lambda!84322)))

(assert (=> d!665202 (= (inv!35634 setElem!20149) (forall!5367 (exprs!2477 setElem!20149) lambda!84332))))

(declare-fun bs!454122 () Bool)

(assert (= bs!454122 d!665202))

(declare-fun m!2668260 () Bool)

(assert (=> bs!454122 m!2668260))

(assert (=> setNonEmpty!20149 d!665202))

(declare-fun condSetEmpty!20157 () Bool)

(assert (=> setNonEmpty!20144 (= condSetEmpty!20157 (= setRest!20144 ((as const (Array Context!3954 Bool)) false)))))

(declare-fun setRes!20157 () Bool)

(assert (=> setNonEmpty!20144 (= tp!700100 setRes!20157)))

(declare-fun setIsEmpty!20157 () Bool)

(assert (=> setIsEmpty!20157 setRes!20157))

(declare-fun e!1426731 () Bool)

(declare-fun setNonEmpty!20157 () Bool)

(declare-fun tp!700187 () Bool)

(declare-fun setElem!20157 () Context!3954)

(assert (=> setNonEmpty!20157 (= setRes!20157 (and tp!700187 (inv!35634 setElem!20157) e!1426731))))

(declare-fun setRest!20157 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20157 (= setRest!20144 ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20157 true) setRest!20157))))

(declare-fun b!2232436 () Bool)

(declare-fun tp!700186 () Bool)

(assert (=> b!2232436 (= e!1426731 tp!700186)))

(assert (= (and setNonEmpty!20144 condSetEmpty!20157) setIsEmpty!20157))

(assert (= (and setNonEmpty!20144 (not condSetEmpty!20157)) setNonEmpty!20157))

(assert (= setNonEmpty!20157 b!2232436))

(declare-fun m!2668262 () Bool)

(assert (=> setNonEmpty!20157 m!2668262))

(declare-fun e!1426732 () Bool)

(assert (=> b!2232317 (= tp!700149 e!1426732)))

(declare-fun b!2232438 () Bool)

(declare-fun tp!700188 () Bool)

(declare-fun tp!700190 () Bool)

(assert (=> b!2232438 (= e!1426732 (and tp!700188 tp!700190))))

(declare-fun b!2232439 () Bool)

(declare-fun tp!700189 () Bool)

(assert (=> b!2232439 (= e!1426732 tp!700189)))

(declare-fun b!2232440 () Bool)

(declare-fun tp!700191 () Bool)

(declare-fun tp!700192 () Bool)

(assert (=> b!2232440 (= e!1426732 (and tp!700191 tp!700192))))

(declare-fun b!2232437 () Bool)

(assert (=> b!2232437 (= e!1426732 tp_is_empty!10083)))

(assert (= (and b!2232317 ((_ is ElementMatch!6429) (h!31637 (exprs!2477 context!86)))) b!2232437))

(assert (= (and b!2232317 ((_ is Concat!10767) (h!31637 (exprs!2477 context!86)))) b!2232438))

(assert (= (and b!2232317 ((_ is Star!6429) (h!31637 (exprs!2477 context!86)))) b!2232439))

(assert (= (and b!2232317 ((_ is Union!6429) (h!31637 (exprs!2477 context!86)))) b!2232440))

(declare-fun b!2232441 () Bool)

(declare-fun e!1426733 () Bool)

(declare-fun tp!700193 () Bool)

(declare-fun tp!700194 () Bool)

(assert (=> b!2232441 (= e!1426733 (and tp!700193 tp!700194))))

(assert (=> b!2232317 (= tp!700150 e!1426733)))

(assert (= (and b!2232317 ((_ is Cons!26236) (t!199748 (exprs!2477 context!86)))) b!2232441))

(declare-fun condSetEmpty!20158 () Bool)

(assert (=> setNonEmpty!20145 (= condSetEmpty!20158 (= setRest!20145 ((as const (Array Context!3954 Bool)) false)))))

(declare-fun setRes!20158 () Bool)

(assert (=> setNonEmpty!20145 (= tp!700094 setRes!20158)))

(declare-fun setIsEmpty!20158 () Bool)

(assert (=> setIsEmpty!20158 setRes!20158))

(declare-fun e!1426734 () Bool)

(declare-fun setElem!20158 () Context!3954)

(declare-fun setNonEmpty!20158 () Bool)

(declare-fun tp!700196 () Bool)

(assert (=> setNonEmpty!20158 (= setRes!20158 (and tp!700196 (inv!35634 setElem!20158) e!1426734))))

(declare-fun setRest!20158 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20158 (= setRest!20145 ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20158 true) setRest!20158))))

(declare-fun b!2232442 () Bool)

(declare-fun tp!700195 () Bool)

(assert (=> b!2232442 (= e!1426734 tp!700195)))

(assert (= (and setNonEmpty!20145 condSetEmpty!20158) setIsEmpty!20158))

(assert (= (and setNonEmpty!20145 (not condSetEmpty!20158)) setNonEmpty!20158))

(assert (= setNonEmpty!20158 b!2232442))

(declare-fun m!2668264 () Bool)

(assert (=> setNonEmpty!20158 m!2668264))

(declare-fun e!1426735 () Bool)

(assert (=> b!2232331 (= tp!700169 e!1426735)))

(declare-fun b!2232444 () Bool)

(declare-fun tp!700197 () Bool)

(declare-fun tp!700199 () Bool)

(assert (=> b!2232444 (= e!1426735 (and tp!700197 tp!700199))))

(declare-fun b!2232445 () Bool)

(declare-fun tp!700198 () Bool)

(assert (=> b!2232445 (= e!1426735 tp!700198)))

(declare-fun b!2232446 () Bool)

(declare-fun tp!700200 () Bool)

(declare-fun tp!700201 () Bool)

(assert (=> b!2232446 (= e!1426735 (and tp!700200 tp!700201))))

(declare-fun b!2232443 () Bool)

(assert (=> b!2232443 (= e!1426735 tp_is_empty!10083)))

(assert (= (and b!2232331 ((_ is ElementMatch!6429) (regOne!13371 (regTwo!13370 expr!64)))) b!2232443))

(assert (= (and b!2232331 ((_ is Concat!10767) (regOne!13371 (regTwo!13370 expr!64)))) b!2232444))

(assert (= (and b!2232331 ((_ is Star!6429) (regOne!13371 (regTwo!13370 expr!64)))) b!2232445))

(assert (= (and b!2232331 ((_ is Union!6429) (regOne!13371 (regTwo!13370 expr!64)))) b!2232446))

(declare-fun e!1426736 () Bool)

(assert (=> b!2232331 (= tp!700170 e!1426736)))

(declare-fun b!2232448 () Bool)

(declare-fun tp!700202 () Bool)

(declare-fun tp!700204 () Bool)

(assert (=> b!2232448 (= e!1426736 (and tp!700202 tp!700204))))

(declare-fun b!2232449 () Bool)

(declare-fun tp!700203 () Bool)

(assert (=> b!2232449 (= e!1426736 tp!700203)))

(declare-fun b!2232450 () Bool)

(declare-fun tp!700205 () Bool)

(declare-fun tp!700206 () Bool)

(assert (=> b!2232450 (= e!1426736 (and tp!700205 tp!700206))))

(declare-fun b!2232447 () Bool)

(assert (=> b!2232447 (= e!1426736 tp_is_empty!10083)))

(assert (= (and b!2232331 ((_ is ElementMatch!6429) (regTwo!13371 (regTwo!13370 expr!64)))) b!2232447))

(assert (= (and b!2232331 ((_ is Concat!10767) (regTwo!13371 (regTwo!13370 expr!64)))) b!2232448))

(assert (= (and b!2232331 ((_ is Star!6429) (regTwo!13371 (regTwo!13370 expr!64)))) b!2232449))

(assert (= (and b!2232331 ((_ is Union!6429) (regTwo!13371 (regTwo!13370 expr!64)))) b!2232450))

(declare-fun e!1426737 () Bool)

(assert (=> b!2232277 (= tp!700101 e!1426737)))

(declare-fun b!2232452 () Bool)

(declare-fun tp!700207 () Bool)

(declare-fun tp!700209 () Bool)

(assert (=> b!2232452 (= e!1426737 (and tp!700207 tp!700209))))

(declare-fun b!2232453 () Bool)

(declare-fun tp!700208 () Bool)

(assert (=> b!2232453 (= e!1426737 tp!700208)))

(declare-fun b!2232454 () Bool)

(declare-fun tp!700210 () Bool)

(declare-fun tp!700211 () Bool)

(assert (=> b!2232454 (= e!1426737 (and tp!700210 tp!700211))))

(declare-fun b!2232451 () Bool)

(assert (=> b!2232451 (= e!1426737 tp_is_empty!10083)))

(assert (= (and b!2232277 ((_ is ElementMatch!6429) (_1!15230 (_1!15231 (h!31638 mapValue!14437))))) b!2232451))

(assert (= (and b!2232277 ((_ is Concat!10767) (_1!15230 (_1!15231 (h!31638 mapValue!14437))))) b!2232452))

(assert (= (and b!2232277 ((_ is Star!6429) (_1!15230 (_1!15231 (h!31638 mapValue!14437))))) b!2232453))

(assert (= (and b!2232277 ((_ is Union!6429) (_1!15230 (_1!15231 (h!31638 mapValue!14437))))) b!2232454))

(declare-fun e!1426740 () Bool)

(assert (=> b!2232277 (= tp!700104 e!1426740)))

(declare-fun setIsEmpty!20159 () Bool)

(declare-fun setRes!20159 () Bool)

(assert (=> setIsEmpty!20159 setRes!20159))

(declare-fun b!2232455 () Bool)

(declare-fun tp!700216 () Bool)

(declare-fun tp!700213 () Bool)

(declare-fun e!1426738 () Bool)

(assert (=> b!2232455 (= e!1426740 (and tp!700213 (inv!35634 (_2!15230 (_1!15231 (h!31638 (t!199749 mapValue!14437))))) e!1426738 tp_is_empty!10083 setRes!20159 tp!700216))))

(declare-fun condSetEmpty!20159 () Bool)

(assert (=> b!2232455 (= condSetEmpty!20159 (= (_2!15231 (h!31638 (t!199749 mapValue!14437))) ((as const (Array Context!3954 Bool)) false)))))

(declare-fun b!2232456 () Bool)

(declare-fun tp!700215 () Bool)

(assert (=> b!2232456 (= e!1426738 tp!700215)))

(declare-fun b!2232457 () Bool)

(declare-fun e!1426739 () Bool)

(declare-fun tp!700214 () Bool)

(assert (=> b!2232457 (= e!1426739 tp!700214)))

(declare-fun tp!700212 () Bool)

(declare-fun setNonEmpty!20159 () Bool)

(declare-fun setElem!20159 () Context!3954)

(assert (=> setNonEmpty!20159 (= setRes!20159 (and tp!700212 (inv!35634 setElem!20159) e!1426739))))

(declare-fun setRest!20159 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20159 (= (_2!15231 (h!31638 (t!199749 mapValue!14437))) ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20159 true) setRest!20159))))

(assert (= b!2232455 b!2232456))

(assert (= (and b!2232455 condSetEmpty!20159) setIsEmpty!20159))

(assert (= (and b!2232455 (not condSetEmpty!20159)) setNonEmpty!20159))

(assert (= setNonEmpty!20159 b!2232457))

(assert (= (and b!2232277 ((_ is Cons!26237) (t!199749 mapValue!14437))) b!2232455))

(declare-fun m!2668266 () Bool)

(assert (=> b!2232455 m!2668266))

(declare-fun m!2668268 () Bool)

(assert (=> setNonEmpty!20159 m!2668268))

(declare-fun e!1426741 () Bool)

(assert (=> b!2232311 (= tp!700141 e!1426741)))

(declare-fun b!2232459 () Bool)

(declare-fun tp!700217 () Bool)

(declare-fun tp!700219 () Bool)

(assert (=> b!2232459 (= e!1426741 (and tp!700217 tp!700219))))

(declare-fun b!2232460 () Bool)

(declare-fun tp!700218 () Bool)

(assert (=> b!2232460 (= e!1426741 tp!700218)))

(declare-fun b!2232461 () Bool)

(declare-fun tp!700220 () Bool)

(declare-fun tp!700221 () Bool)

(assert (=> b!2232461 (= e!1426741 (and tp!700220 tp!700221))))

(declare-fun b!2232458 () Bool)

(assert (=> b!2232458 (= e!1426741 tp_is_empty!10083)))

(assert (= (and b!2232311 ((_ is ElementMatch!6429) (reg!6758 (reg!6758 expr!64)))) b!2232458))

(assert (= (and b!2232311 ((_ is Concat!10767) (reg!6758 (reg!6758 expr!64)))) b!2232459))

(assert (= (and b!2232311 ((_ is Star!6429) (reg!6758 (reg!6758 expr!64)))) b!2232460))

(assert (= (and b!2232311 ((_ is Union!6429) (reg!6758 (reg!6758 expr!64)))) b!2232461))

(declare-fun e!1426742 () Bool)

(assert (=> b!2232302 (= tp!700130 e!1426742)))

(declare-fun b!2232463 () Bool)

(declare-fun tp!700222 () Bool)

(declare-fun tp!700224 () Bool)

(assert (=> b!2232463 (= e!1426742 (and tp!700222 tp!700224))))

(declare-fun b!2232464 () Bool)

(declare-fun tp!700223 () Bool)

(assert (=> b!2232464 (= e!1426742 tp!700223)))

(declare-fun b!2232465 () Bool)

(declare-fun tp!700225 () Bool)

(declare-fun tp!700226 () Bool)

(assert (=> b!2232465 (= e!1426742 (and tp!700225 tp!700226))))

(declare-fun b!2232462 () Bool)

(assert (=> b!2232462 (= e!1426742 tp_is_empty!10083)))

(assert (= (and b!2232302 ((_ is ElementMatch!6429) (regOne!13370 (regOne!13371 expr!64)))) b!2232462))

(assert (= (and b!2232302 ((_ is Concat!10767) (regOne!13370 (regOne!13371 expr!64)))) b!2232463))

(assert (= (and b!2232302 ((_ is Star!6429) (regOne!13370 (regOne!13371 expr!64)))) b!2232464))

(assert (= (and b!2232302 ((_ is Union!6429) (regOne!13370 (regOne!13371 expr!64)))) b!2232465))

(declare-fun e!1426743 () Bool)

(assert (=> b!2232302 (= tp!700132 e!1426743)))

(declare-fun b!2232467 () Bool)

(declare-fun tp!700227 () Bool)

(declare-fun tp!700229 () Bool)

(assert (=> b!2232467 (= e!1426743 (and tp!700227 tp!700229))))

(declare-fun b!2232468 () Bool)

(declare-fun tp!700228 () Bool)

(assert (=> b!2232468 (= e!1426743 tp!700228)))

(declare-fun b!2232469 () Bool)

(declare-fun tp!700230 () Bool)

(declare-fun tp!700231 () Bool)

(assert (=> b!2232469 (= e!1426743 (and tp!700230 tp!700231))))

(declare-fun b!2232466 () Bool)

(assert (=> b!2232466 (= e!1426743 tp_is_empty!10083)))

(assert (= (and b!2232302 ((_ is ElementMatch!6429) (regTwo!13370 (regOne!13371 expr!64)))) b!2232466))

(assert (= (and b!2232302 ((_ is Concat!10767) (regTwo!13370 (regOne!13371 expr!64)))) b!2232467))

(assert (= (and b!2232302 ((_ is Star!6429) (regTwo!13370 (regOne!13371 expr!64)))) b!2232468))

(assert (= (and b!2232302 ((_ is Union!6429) (regTwo!13370 (regOne!13371 expr!64)))) b!2232469))

(declare-fun e!1426744 () Bool)

(assert (=> b!2232310 (= tp!700140 e!1426744)))

(declare-fun b!2232471 () Bool)

(declare-fun tp!700232 () Bool)

(declare-fun tp!700234 () Bool)

(assert (=> b!2232471 (= e!1426744 (and tp!700232 tp!700234))))

(declare-fun b!2232472 () Bool)

(declare-fun tp!700233 () Bool)

(assert (=> b!2232472 (= e!1426744 tp!700233)))

(declare-fun b!2232473 () Bool)

(declare-fun tp!700235 () Bool)

(declare-fun tp!700236 () Bool)

(assert (=> b!2232473 (= e!1426744 (and tp!700235 tp!700236))))

(declare-fun b!2232470 () Bool)

(assert (=> b!2232470 (= e!1426744 tp_is_empty!10083)))

(assert (= (and b!2232310 ((_ is ElementMatch!6429) (regOne!13370 (reg!6758 expr!64)))) b!2232470))

(assert (= (and b!2232310 ((_ is Concat!10767) (regOne!13370 (reg!6758 expr!64)))) b!2232471))

(assert (= (and b!2232310 ((_ is Star!6429) (regOne!13370 (reg!6758 expr!64)))) b!2232472))

(assert (= (and b!2232310 ((_ is Union!6429) (regOne!13370 (reg!6758 expr!64)))) b!2232473))

(declare-fun e!1426745 () Bool)

(assert (=> b!2232310 (= tp!700142 e!1426745)))

(declare-fun b!2232475 () Bool)

(declare-fun tp!700237 () Bool)

(declare-fun tp!700239 () Bool)

(assert (=> b!2232475 (= e!1426745 (and tp!700237 tp!700239))))

(declare-fun b!2232476 () Bool)

(declare-fun tp!700238 () Bool)

(assert (=> b!2232476 (= e!1426745 tp!700238)))

(declare-fun b!2232477 () Bool)

(declare-fun tp!700240 () Bool)

(declare-fun tp!700241 () Bool)

(assert (=> b!2232477 (= e!1426745 (and tp!700240 tp!700241))))

(declare-fun b!2232474 () Bool)

(assert (=> b!2232474 (= e!1426745 tp_is_empty!10083)))

(assert (= (and b!2232310 ((_ is ElementMatch!6429) (regTwo!13370 (reg!6758 expr!64)))) b!2232474))

(assert (= (and b!2232310 ((_ is Concat!10767) (regTwo!13370 (reg!6758 expr!64)))) b!2232475))

(assert (= (and b!2232310 ((_ is Star!6429) (regTwo!13370 (reg!6758 expr!64)))) b!2232476))

(assert (= (and b!2232310 ((_ is Union!6429) (regTwo!13370 (reg!6758 expr!64)))) b!2232477))

(declare-fun e!1426746 () Bool)

(assert (=> b!2232304 (= tp!700133 e!1426746)))

(declare-fun b!2232479 () Bool)

(declare-fun tp!700242 () Bool)

(declare-fun tp!700244 () Bool)

(assert (=> b!2232479 (= e!1426746 (and tp!700242 tp!700244))))

(declare-fun b!2232480 () Bool)

(declare-fun tp!700243 () Bool)

(assert (=> b!2232480 (= e!1426746 tp!700243)))

(declare-fun b!2232481 () Bool)

(declare-fun tp!700245 () Bool)

(declare-fun tp!700246 () Bool)

(assert (=> b!2232481 (= e!1426746 (and tp!700245 tp!700246))))

(declare-fun b!2232478 () Bool)

(assert (=> b!2232478 (= e!1426746 tp_is_empty!10083)))

(assert (= (and b!2232304 ((_ is ElementMatch!6429) (regOne!13371 (regOne!13371 expr!64)))) b!2232478))

(assert (= (and b!2232304 ((_ is Concat!10767) (regOne!13371 (regOne!13371 expr!64)))) b!2232479))

(assert (= (and b!2232304 ((_ is Star!6429) (regOne!13371 (regOne!13371 expr!64)))) b!2232480))

(assert (= (and b!2232304 ((_ is Union!6429) (regOne!13371 (regOne!13371 expr!64)))) b!2232481))

(declare-fun e!1426747 () Bool)

(assert (=> b!2232304 (= tp!700134 e!1426747)))

(declare-fun b!2232483 () Bool)

(declare-fun tp!700247 () Bool)

(declare-fun tp!700249 () Bool)

(assert (=> b!2232483 (= e!1426747 (and tp!700247 tp!700249))))

(declare-fun b!2232484 () Bool)

(declare-fun tp!700248 () Bool)

(assert (=> b!2232484 (= e!1426747 tp!700248)))

(declare-fun b!2232485 () Bool)

(declare-fun tp!700250 () Bool)

(declare-fun tp!700251 () Bool)

(assert (=> b!2232485 (= e!1426747 (and tp!700250 tp!700251))))

(declare-fun b!2232482 () Bool)

(assert (=> b!2232482 (= e!1426747 tp_is_empty!10083)))

(assert (= (and b!2232304 ((_ is ElementMatch!6429) (regTwo!13371 (regOne!13371 expr!64)))) b!2232482))

(assert (= (and b!2232304 ((_ is Concat!10767) (regTwo!13371 (regOne!13371 expr!64)))) b!2232483))

(assert (= (and b!2232304 ((_ is Star!6429) (regTwo!13371 (regOne!13371 expr!64)))) b!2232484))

(assert (= (and b!2232304 ((_ is Union!6429) (regTwo!13371 (regOne!13371 expr!64)))) b!2232485))

(declare-fun b!2232486 () Bool)

(declare-fun e!1426748 () Bool)

(declare-fun tp!700252 () Bool)

(declare-fun tp!700253 () Bool)

(assert (=> b!2232486 (= e!1426748 (and tp!700252 tp!700253))))

(assert (=> b!2232289 (= tp!700118 e!1426748)))

(assert (= (and b!2232289 ((_ is Cons!26236) (exprs!2477 (_2!15230 (_1!15231 (h!31638 mapValue!14434)))))) b!2232486))

(declare-fun e!1426749 () Bool)

(assert (=> b!2232312 (= tp!700143 e!1426749)))

(declare-fun b!2232488 () Bool)

(declare-fun tp!700254 () Bool)

(declare-fun tp!700256 () Bool)

(assert (=> b!2232488 (= e!1426749 (and tp!700254 tp!700256))))

(declare-fun b!2232489 () Bool)

(declare-fun tp!700255 () Bool)

(assert (=> b!2232489 (= e!1426749 tp!700255)))

(declare-fun b!2232490 () Bool)

(declare-fun tp!700257 () Bool)

(declare-fun tp!700258 () Bool)

(assert (=> b!2232490 (= e!1426749 (and tp!700257 tp!700258))))

(declare-fun b!2232487 () Bool)

(assert (=> b!2232487 (= e!1426749 tp_is_empty!10083)))

(assert (= (and b!2232312 ((_ is ElementMatch!6429) (regOne!13371 (reg!6758 expr!64)))) b!2232487))

(assert (= (and b!2232312 ((_ is Concat!10767) (regOne!13371 (reg!6758 expr!64)))) b!2232488))

(assert (= (and b!2232312 ((_ is Star!6429) (regOne!13371 (reg!6758 expr!64)))) b!2232489))

(assert (= (and b!2232312 ((_ is Union!6429) (regOne!13371 (reg!6758 expr!64)))) b!2232490))

(declare-fun e!1426750 () Bool)

(assert (=> b!2232312 (= tp!700144 e!1426750)))

(declare-fun b!2232492 () Bool)

(declare-fun tp!700259 () Bool)

(declare-fun tp!700261 () Bool)

(assert (=> b!2232492 (= e!1426750 (and tp!700259 tp!700261))))

(declare-fun b!2232493 () Bool)

(declare-fun tp!700260 () Bool)

(assert (=> b!2232493 (= e!1426750 tp!700260)))

(declare-fun b!2232494 () Bool)

(declare-fun tp!700262 () Bool)

(declare-fun tp!700263 () Bool)

(assert (=> b!2232494 (= e!1426750 (and tp!700262 tp!700263))))

(declare-fun b!2232491 () Bool)

(assert (=> b!2232491 (= e!1426750 tp_is_empty!10083)))

(assert (= (and b!2232312 ((_ is ElementMatch!6429) (regTwo!13371 (reg!6758 expr!64)))) b!2232491))

(assert (= (and b!2232312 ((_ is Concat!10767) (regTwo!13371 (reg!6758 expr!64)))) b!2232492))

(assert (= (and b!2232312 ((_ is Star!6429) (regTwo!13371 (reg!6758 expr!64)))) b!2232493))

(assert (= (and b!2232312 ((_ is Union!6429) (regTwo!13371 (reg!6758 expr!64)))) b!2232494))

(declare-fun e!1426751 () Bool)

(assert (=> b!2232278 (= tp!700103 e!1426751)))

(declare-fun b!2232496 () Bool)

(declare-fun tp!700264 () Bool)

(declare-fun tp!700266 () Bool)

(assert (=> b!2232496 (= e!1426751 (and tp!700264 tp!700266))))

(declare-fun b!2232497 () Bool)

(declare-fun tp!700265 () Bool)

(assert (=> b!2232497 (= e!1426751 tp!700265)))

(declare-fun b!2232498 () Bool)

(declare-fun tp!700267 () Bool)

(declare-fun tp!700268 () Bool)

(assert (=> b!2232498 (= e!1426751 (and tp!700267 tp!700268))))

(declare-fun b!2232495 () Bool)

(assert (=> b!2232495 (= e!1426751 tp_is_empty!10083)))

(assert (= (and b!2232278 ((_ is ElementMatch!6429) (_1!15230 (_1!15231 (h!31638 mapDefault!14437))))) b!2232495))

(assert (= (and b!2232278 ((_ is Concat!10767) (_1!15230 (_1!15231 (h!31638 mapDefault!14437))))) b!2232496))

(assert (= (and b!2232278 ((_ is Star!6429) (_1!15230 (_1!15231 (h!31638 mapDefault!14437))))) b!2232497))

(assert (= (and b!2232278 ((_ is Union!6429) (_1!15230 (_1!15231 (h!31638 mapDefault!14437))))) b!2232498))

(declare-fun e!1426754 () Bool)

(assert (=> b!2232278 (= tp!700098 e!1426754)))

(declare-fun setIsEmpty!20160 () Bool)

(declare-fun setRes!20160 () Bool)

(assert (=> setIsEmpty!20160 setRes!20160))

(declare-fun tp!700273 () Bool)

(declare-fun b!2232499 () Bool)

(declare-fun e!1426752 () Bool)

(declare-fun tp!700270 () Bool)

(assert (=> b!2232499 (= e!1426754 (and tp!700270 (inv!35634 (_2!15230 (_1!15231 (h!31638 (t!199749 mapDefault!14437))))) e!1426752 tp_is_empty!10083 setRes!20160 tp!700273))))

(declare-fun condSetEmpty!20160 () Bool)

(assert (=> b!2232499 (= condSetEmpty!20160 (= (_2!15231 (h!31638 (t!199749 mapDefault!14437))) ((as const (Array Context!3954 Bool)) false)))))

(declare-fun b!2232500 () Bool)

(declare-fun tp!700272 () Bool)

(assert (=> b!2232500 (= e!1426752 tp!700272)))

(declare-fun b!2232501 () Bool)

(declare-fun e!1426753 () Bool)

(declare-fun tp!700271 () Bool)

(assert (=> b!2232501 (= e!1426753 tp!700271)))

(declare-fun tp!700269 () Bool)

(declare-fun setElem!20160 () Context!3954)

(declare-fun setNonEmpty!20160 () Bool)

(assert (=> setNonEmpty!20160 (= setRes!20160 (and tp!700269 (inv!35634 setElem!20160) e!1426753))))

(declare-fun setRest!20160 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20160 (= (_2!15231 (h!31638 (t!199749 mapDefault!14437))) ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20160 true) setRest!20160))))

(assert (= b!2232499 b!2232500))

(assert (= (and b!2232499 condSetEmpty!20160) setIsEmpty!20160))

(assert (= (and b!2232499 (not condSetEmpty!20160)) setNonEmpty!20160))

(assert (= setNonEmpty!20160 b!2232501))

(assert (= (and b!2232278 ((_ is Cons!26237) (t!199749 mapDefault!14437))) b!2232499))

(declare-fun m!2668270 () Bool)

(assert (=> b!2232499 m!2668270))

(declare-fun m!2668272 () Bool)

(assert (=> setNonEmpty!20160 m!2668272))

(declare-fun e!1426755 () Bool)

(assert (=> b!2232303 (= tp!700131 e!1426755)))

(declare-fun b!2232503 () Bool)

(declare-fun tp!700274 () Bool)

(declare-fun tp!700276 () Bool)

(assert (=> b!2232503 (= e!1426755 (and tp!700274 tp!700276))))

(declare-fun b!2232504 () Bool)

(declare-fun tp!700275 () Bool)

(assert (=> b!2232504 (= e!1426755 tp!700275)))

(declare-fun b!2232505 () Bool)

(declare-fun tp!700277 () Bool)

(declare-fun tp!700278 () Bool)

(assert (=> b!2232505 (= e!1426755 (and tp!700277 tp!700278))))

(declare-fun b!2232502 () Bool)

(assert (=> b!2232502 (= e!1426755 tp_is_empty!10083)))

(assert (= (and b!2232303 ((_ is ElementMatch!6429) (reg!6758 (regOne!13371 expr!64)))) b!2232502))

(assert (= (and b!2232303 ((_ is Concat!10767) (reg!6758 (regOne!13371 expr!64)))) b!2232503))

(assert (= (and b!2232303 ((_ is Star!6429) (reg!6758 (regOne!13371 expr!64)))) b!2232504))

(assert (= (and b!2232303 ((_ is Union!6429) (reg!6758 (regOne!13371 expr!64)))) b!2232505))

(declare-fun b!2232506 () Bool)

(declare-fun e!1426756 () Bool)

(declare-fun tp!700279 () Bool)

(declare-fun tp!700280 () Bool)

(assert (=> b!2232506 (= e!1426756 (and tp!700279 tp!700280))))

(assert (=> b!2232279 (= tp!700099 e!1426756)))

(assert (= (and b!2232279 ((_ is Cons!26236) (exprs!2477 setElem!20144))) b!2232506))

(declare-fun e!1426757 () Bool)

(assert (=> b!2232288 (= tp!700116 e!1426757)))

(declare-fun b!2232508 () Bool)

(declare-fun tp!700281 () Bool)

(declare-fun tp!700283 () Bool)

(assert (=> b!2232508 (= e!1426757 (and tp!700281 tp!700283))))

(declare-fun b!2232509 () Bool)

(declare-fun tp!700282 () Bool)

(assert (=> b!2232509 (= e!1426757 tp!700282)))

(declare-fun b!2232510 () Bool)

(declare-fun tp!700284 () Bool)

(declare-fun tp!700285 () Bool)

(assert (=> b!2232510 (= e!1426757 (and tp!700284 tp!700285))))

(declare-fun b!2232507 () Bool)

(assert (=> b!2232507 (= e!1426757 tp_is_empty!10083)))

(assert (= (and b!2232288 ((_ is ElementMatch!6429) (_1!15230 (_1!15231 (h!31638 mapValue!14434))))) b!2232507))

(assert (= (and b!2232288 ((_ is Concat!10767) (_1!15230 (_1!15231 (h!31638 mapValue!14434))))) b!2232508))

(assert (= (and b!2232288 ((_ is Star!6429) (_1!15230 (_1!15231 (h!31638 mapValue!14434))))) b!2232509))

(assert (= (and b!2232288 ((_ is Union!6429) (_1!15230 (_1!15231 (h!31638 mapValue!14434))))) b!2232510))

(declare-fun e!1426760 () Bool)

(assert (=> b!2232288 (= tp!700119 e!1426760)))

(declare-fun setIsEmpty!20161 () Bool)

(declare-fun setRes!20161 () Bool)

(assert (=> setIsEmpty!20161 setRes!20161))

(declare-fun tp!700290 () Bool)

(declare-fun tp!700287 () Bool)

(declare-fun b!2232511 () Bool)

(declare-fun e!1426758 () Bool)

(assert (=> b!2232511 (= e!1426760 (and tp!700287 (inv!35634 (_2!15230 (_1!15231 (h!31638 (t!199749 mapValue!14434))))) e!1426758 tp_is_empty!10083 setRes!20161 tp!700290))))

(declare-fun condSetEmpty!20161 () Bool)

(assert (=> b!2232511 (= condSetEmpty!20161 (= (_2!15231 (h!31638 (t!199749 mapValue!14434))) ((as const (Array Context!3954 Bool)) false)))))

(declare-fun b!2232512 () Bool)

(declare-fun tp!700289 () Bool)

(assert (=> b!2232512 (= e!1426758 tp!700289)))

(declare-fun b!2232513 () Bool)

(declare-fun e!1426759 () Bool)

(declare-fun tp!700288 () Bool)

(assert (=> b!2232513 (= e!1426759 tp!700288)))

(declare-fun setNonEmpty!20161 () Bool)

(declare-fun tp!700286 () Bool)

(declare-fun setElem!20161 () Context!3954)

(assert (=> setNonEmpty!20161 (= setRes!20161 (and tp!700286 (inv!35634 setElem!20161) e!1426759))))

(declare-fun setRest!20161 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20161 (= (_2!15231 (h!31638 (t!199749 mapValue!14434))) ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20161 true) setRest!20161))))

(assert (= b!2232511 b!2232512))

(assert (= (and b!2232511 condSetEmpty!20161) setIsEmpty!20161))

(assert (= (and b!2232511 (not condSetEmpty!20161)) setNonEmpty!20161))

(assert (= setNonEmpty!20161 b!2232513))

(assert (= (and b!2232288 ((_ is Cons!26237) (t!199749 mapValue!14434))) b!2232511))

(declare-fun m!2668274 () Bool)

(assert (=> b!2232511 m!2668274))

(declare-fun m!2668276 () Bool)

(assert (=> setNonEmpty!20161 m!2668276))

(declare-fun e!1426761 () Bool)

(assert (=> b!2232325 (= tp!700161 e!1426761)))

(declare-fun b!2232515 () Bool)

(declare-fun tp!700291 () Bool)

(declare-fun tp!700293 () Bool)

(assert (=> b!2232515 (= e!1426761 (and tp!700291 tp!700293))))

(declare-fun b!2232516 () Bool)

(declare-fun tp!700292 () Bool)

(assert (=> b!2232516 (= e!1426761 tp!700292)))

(declare-fun b!2232517 () Bool)

(declare-fun tp!700294 () Bool)

(declare-fun tp!700295 () Bool)

(assert (=> b!2232517 (= e!1426761 (and tp!700294 tp!700295))))

(declare-fun b!2232514 () Bool)

(assert (=> b!2232514 (= e!1426761 tp_is_empty!10083)))

(assert (= (and b!2232325 ((_ is ElementMatch!6429) (regOne!13370 (regOne!13370 expr!64)))) b!2232514))

(assert (= (and b!2232325 ((_ is Concat!10767) (regOne!13370 (regOne!13370 expr!64)))) b!2232515))

(assert (= (and b!2232325 ((_ is Star!6429) (regOne!13370 (regOne!13370 expr!64)))) b!2232516))

(assert (= (and b!2232325 ((_ is Union!6429) (regOne!13370 (regOne!13370 expr!64)))) b!2232517))

(declare-fun e!1426762 () Bool)

(assert (=> b!2232325 (= tp!700163 e!1426762)))

(declare-fun b!2232519 () Bool)

(declare-fun tp!700296 () Bool)

(declare-fun tp!700298 () Bool)

(assert (=> b!2232519 (= e!1426762 (and tp!700296 tp!700298))))

(declare-fun b!2232520 () Bool)

(declare-fun tp!700297 () Bool)

(assert (=> b!2232520 (= e!1426762 tp!700297)))

(declare-fun b!2232521 () Bool)

(declare-fun tp!700299 () Bool)

(declare-fun tp!700300 () Bool)

(assert (=> b!2232521 (= e!1426762 (and tp!700299 tp!700300))))

(declare-fun b!2232518 () Bool)

(assert (=> b!2232518 (= e!1426762 tp_is_empty!10083)))

(assert (= (and b!2232325 ((_ is ElementMatch!6429) (regTwo!13370 (regOne!13370 expr!64)))) b!2232518))

(assert (= (and b!2232325 ((_ is Concat!10767) (regTwo!13370 (regOne!13370 expr!64)))) b!2232519))

(assert (= (and b!2232325 ((_ is Star!6429) (regTwo!13370 (regOne!13370 expr!64)))) b!2232520))

(assert (= (and b!2232325 ((_ is Union!6429) (regTwo!13370 (regOne!13370 expr!64)))) b!2232521))

(declare-fun condSetEmpty!20162 () Bool)

(assert (=> setNonEmpty!20148 (= condSetEmpty!20162 (= setRest!20148 ((as const (Array Context!3954 Bool)) false)))))

(declare-fun setRes!20162 () Bool)

(assert (=> setNonEmpty!20148 (= tp!700115 setRes!20162)))

(declare-fun setIsEmpty!20162 () Bool)

(assert (=> setIsEmpty!20162 setRes!20162))

(declare-fun e!1426763 () Bool)

(declare-fun tp!700302 () Bool)

(declare-fun setElem!20162 () Context!3954)

(declare-fun setNonEmpty!20162 () Bool)

(assert (=> setNonEmpty!20162 (= setRes!20162 (and tp!700302 (inv!35634 setElem!20162) e!1426763))))

(declare-fun setRest!20162 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20162 (= setRest!20148 ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20162 true) setRest!20162))))

(declare-fun b!2232522 () Bool)

(declare-fun tp!700301 () Bool)

(assert (=> b!2232522 (= e!1426763 tp!700301)))

(assert (= (and setNonEmpty!20148 condSetEmpty!20162) setIsEmpty!20162))

(assert (= (and setNonEmpty!20148 (not condSetEmpty!20162)) setNonEmpty!20162))

(assert (= setNonEmpty!20162 b!2232522))

(declare-fun m!2668278 () Bool)

(assert (=> setNonEmpty!20162 m!2668278))

(declare-fun e!1426764 () Bool)

(assert (=> b!2232326 (= tp!700162 e!1426764)))

(declare-fun b!2232524 () Bool)

(declare-fun tp!700303 () Bool)

(declare-fun tp!700305 () Bool)

(assert (=> b!2232524 (= e!1426764 (and tp!700303 tp!700305))))

(declare-fun b!2232525 () Bool)

(declare-fun tp!700304 () Bool)

(assert (=> b!2232525 (= e!1426764 tp!700304)))

(declare-fun b!2232526 () Bool)

(declare-fun tp!700306 () Bool)

(declare-fun tp!700307 () Bool)

(assert (=> b!2232526 (= e!1426764 (and tp!700306 tp!700307))))

(declare-fun b!2232523 () Bool)

(assert (=> b!2232523 (= e!1426764 tp_is_empty!10083)))

(assert (= (and b!2232326 ((_ is ElementMatch!6429) (reg!6758 (regOne!13370 expr!64)))) b!2232523))

(assert (= (and b!2232326 ((_ is Concat!10767) (reg!6758 (regOne!13370 expr!64)))) b!2232524))

(assert (= (and b!2232326 ((_ is Star!6429) (reg!6758 (regOne!13370 expr!64)))) b!2232525))

(assert (= (and b!2232326 ((_ is Union!6429) (reg!6758 (regOne!13370 expr!64)))) b!2232526))

(declare-fun b!2232527 () Bool)

(declare-fun e!1426765 () Bool)

(declare-fun tp!700308 () Bool)

(declare-fun tp!700309 () Bool)

(assert (=> b!2232527 (= e!1426765 (and tp!700308 tp!700309))))

(assert (=> b!2232290 (= tp!700117 e!1426765)))

(assert (= (and b!2232290 ((_ is Cons!26236) (exprs!2477 setElem!20148))) b!2232527))

(declare-fun e!1426766 () Bool)

(assert (=> b!2232327 (= tp!700164 e!1426766)))

(declare-fun b!2232529 () Bool)

(declare-fun tp!700310 () Bool)

(declare-fun tp!700312 () Bool)

(assert (=> b!2232529 (= e!1426766 (and tp!700310 tp!700312))))

(declare-fun b!2232530 () Bool)

(declare-fun tp!700311 () Bool)

(assert (=> b!2232530 (= e!1426766 tp!700311)))

(declare-fun b!2232531 () Bool)

(declare-fun tp!700313 () Bool)

(declare-fun tp!700314 () Bool)

(assert (=> b!2232531 (= e!1426766 (and tp!700313 tp!700314))))

(declare-fun b!2232528 () Bool)

(assert (=> b!2232528 (= e!1426766 tp_is_empty!10083)))

(assert (= (and b!2232327 ((_ is ElementMatch!6429) (regOne!13371 (regOne!13370 expr!64)))) b!2232528))

(assert (= (and b!2232327 ((_ is Concat!10767) (regOne!13371 (regOne!13370 expr!64)))) b!2232529))

(assert (= (and b!2232327 ((_ is Star!6429) (regOne!13371 (regOne!13370 expr!64)))) b!2232530))

(assert (= (and b!2232327 ((_ is Union!6429) (regOne!13371 (regOne!13370 expr!64)))) b!2232531))

(declare-fun e!1426767 () Bool)

(assert (=> b!2232327 (= tp!700165 e!1426767)))

(declare-fun b!2232533 () Bool)

(declare-fun tp!700315 () Bool)

(declare-fun tp!700317 () Bool)

(assert (=> b!2232533 (= e!1426767 (and tp!700315 tp!700317))))

(declare-fun b!2232534 () Bool)

(declare-fun tp!700316 () Bool)

(assert (=> b!2232534 (= e!1426767 tp!700316)))

(declare-fun b!2232535 () Bool)

(declare-fun tp!700318 () Bool)

(declare-fun tp!700319 () Bool)

(assert (=> b!2232535 (= e!1426767 (and tp!700318 tp!700319))))

(declare-fun b!2232532 () Bool)

(assert (=> b!2232532 (= e!1426767 tp_is_empty!10083)))

(assert (= (and b!2232327 ((_ is ElementMatch!6429) (regTwo!13371 (regOne!13370 expr!64)))) b!2232532))

(assert (= (and b!2232327 ((_ is Concat!10767) (regTwo!13371 (regOne!13370 expr!64)))) b!2232533))

(assert (= (and b!2232327 ((_ is Star!6429) (regTwo!13371 (regOne!13370 expr!64)))) b!2232534))

(assert (= (and b!2232327 ((_ is Union!6429) (regTwo!13371 (regOne!13370 expr!64)))) b!2232535))

(declare-fun e!1426768 () Bool)

(assert (=> b!2232306 (= tp!700135 e!1426768)))

(declare-fun b!2232537 () Bool)

(declare-fun tp!700320 () Bool)

(declare-fun tp!700322 () Bool)

(assert (=> b!2232537 (= e!1426768 (and tp!700320 tp!700322))))

(declare-fun b!2232538 () Bool)

(declare-fun tp!700321 () Bool)

(assert (=> b!2232538 (= e!1426768 tp!700321)))

(declare-fun b!2232539 () Bool)

(declare-fun tp!700323 () Bool)

(declare-fun tp!700324 () Bool)

(assert (=> b!2232539 (= e!1426768 (and tp!700323 tp!700324))))

(declare-fun b!2232536 () Bool)

(assert (=> b!2232536 (= e!1426768 tp_is_empty!10083)))

(assert (= (and b!2232306 ((_ is ElementMatch!6429) (regOne!13370 (regTwo!13371 expr!64)))) b!2232536))

(assert (= (and b!2232306 ((_ is Concat!10767) (regOne!13370 (regTwo!13371 expr!64)))) b!2232537))

(assert (= (and b!2232306 ((_ is Star!6429) (regOne!13370 (regTwo!13371 expr!64)))) b!2232538))

(assert (= (and b!2232306 ((_ is Union!6429) (regOne!13370 (regTwo!13371 expr!64)))) b!2232539))

(declare-fun e!1426769 () Bool)

(assert (=> b!2232306 (= tp!700137 e!1426769)))

(declare-fun b!2232541 () Bool)

(declare-fun tp!700325 () Bool)

(declare-fun tp!700327 () Bool)

(assert (=> b!2232541 (= e!1426769 (and tp!700325 tp!700327))))

(declare-fun b!2232542 () Bool)

(declare-fun tp!700326 () Bool)

(assert (=> b!2232542 (= e!1426769 tp!700326)))

(declare-fun b!2232543 () Bool)

(declare-fun tp!700328 () Bool)

(declare-fun tp!700329 () Bool)

(assert (=> b!2232543 (= e!1426769 (and tp!700328 tp!700329))))

(declare-fun b!2232540 () Bool)

(assert (=> b!2232540 (= e!1426769 tp_is_empty!10083)))

(assert (= (and b!2232306 ((_ is ElementMatch!6429) (regTwo!13370 (regTwo!13371 expr!64)))) b!2232540))

(assert (= (and b!2232306 ((_ is Concat!10767) (regTwo!13370 (regTwo!13371 expr!64)))) b!2232541))

(assert (= (and b!2232306 ((_ is Star!6429) (regTwo!13370 (regTwo!13371 expr!64)))) b!2232542))

(assert (= (and b!2232306 ((_ is Union!6429) (regTwo!13370 (regTwo!13371 expr!64)))) b!2232543))

(declare-fun b!2232544 () Bool)

(declare-fun e!1426770 () Bool)

(declare-fun tp!700330 () Bool)

(declare-fun tp!700331 () Bool)

(assert (=> b!2232544 (= e!1426770 (and tp!700330 tp!700331))))

(assert (=> b!2232333 (= tp!700174 e!1426770)))

(assert (= (and b!2232333 ((_ is Cons!26236) (exprs!2477 (_2!15230 (_1!15231 (h!31638 mapDefault!14434)))))) b!2232544))

(declare-fun e!1426771 () Bool)

(assert (=> b!2232307 (= tp!700136 e!1426771)))

(declare-fun b!2232546 () Bool)

(declare-fun tp!700332 () Bool)

(declare-fun tp!700334 () Bool)

(assert (=> b!2232546 (= e!1426771 (and tp!700332 tp!700334))))

(declare-fun b!2232547 () Bool)

(declare-fun tp!700333 () Bool)

(assert (=> b!2232547 (= e!1426771 tp!700333)))

(declare-fun b!2232548 () Bool)

(declare-fun tp!700335 () Bool)

(declare-fun tp!700336 () Bool)

(assert (=> b!2232548 (= e!1426771 (and tp!700335 tp!700336))))

(declare-fun b!2232545 () Bool)

(assert (=> b!2232545 (= e!1426771 tp_is_empty!10083)))

(assert (= (and b!2232307 ((_ is ElementMatch!6429) (reg!6758 (regTwo!13371 expr!64)))) b!2232545))

(assert (= (and b!2232307 ((_ is Concat!10767) (reg!6758 (regTwo!13371 expr!64)))) b!2232546))

(assert (= (and b!2232307 ((_ is Star!6429) (reg!6758 (regTwo!13371 expr!64)))) b!2232547))

(assert (= (and b!2232307 ((_ is Union!6429) (reg!6758 (regTwo!13371 expr!64)))) b!2232548))

(declare-fun e!1426772 () Bool)

(assert (=> b!2232321 (= tp!700157 e!1426772)))

(declare-fun b!2232550 () Bool)

(declare-fun tp!700337 () Bool)

(declare-fun tp!700339 () Bool)

(assert (=> b!2232550 (= e!1426772 (and tp!700337 tp!700339))))

(declare-fun b!2232551 () Bool)

(declare-fun tp!700338 () Bool)

(assert (=> b!2232551 (= e!1426772 tp!700338)))

(declare-fun b!2232552 () Bool)

(declare-fun tp!700340 () Bool)

(declare-fun tp!700341 () Bool)

(assert (=> b!2232552 (= e!1426772 (and tp!700340 tp!700341))))

(declare-fun b!2232549 () Bool)

(assert (=> b!2232549 (= e!1426772 tp_is_empty!10083)))

(assert (= (and b!2232321 ((_ is ElementMatch!6429) (_1!15230 (_1!15231 (h!31638 (minValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))))))) b!2232549))

(assert (= (and b!2232321 ((_ is Concat!10767) (_1!15230 (_1!15231 (h!31638 (minValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))))))) b!2232550))

(assert (= (and b!2232321 ((_ is Star!6429) (_1!15230 (_1!15231 (h!31638 (minValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))))))) b!2232551))

(assert (= (and b!2232321 ((_ is Union!6429) (_1!15230 (_1!15231 (h!31638 (minValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))))))) b!2232552))

(declare-fun e!1426775 () Bool)

(assert (=> b!2232321 (= tp!700160 e!1426775)))

(declare-fun setIsEmpty!20163 () Bool)

(declare-fun setRes!20163 () Bool)

(assert (=> setIsEmpty!20163 setRes!20163))

(declare-fun e!1426773 () Bool)

(declare-fun b!2232553 () Bool)

(declare-fun tp!700343 () Bool)

(declare-fun tp!700346 () Bool)

(assert (=> b!2232553 (= e!1426775 (and tp!700343 (inv!35634 (_2!15230 (_1!15231 (h!31638 (t!199749 (minValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))))))) e!1426773 tp_is_empty!10083 setRes!20163 tp!700346))))

(declare-fun condSetEmpty!20163 () Bool)

(assert (=> b!2232553 (= condSetEmpty!20163 (= (_2!15231 (h!31638 (t!199749 (minValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))))) ((as const (Array Context!3954 Bool)) false)))))

(declare-fun b!2232554 () Bool)

(declare-fun tp!700345 () Bool)

(assert (=> b!2232554 (= e!1426773 tp!700345)))

(declare-fun b!2232555 () Bool)

(declare-fun e!1426774 () Bool)

(declare-fun tp!700344 () Bool)

(assert (=> b!2232555 (= e!1426774 tp!700344)))

(declare-fun setElem!20163 () Context!3954)

(declare-fun setNonEmpty!20163 () Bool)

(declare-fun tp!700342 () Bool)

(assert (=> setNonEmpty!20163 (= setRes!20163 (and tp!700342 (inv!35634 setElem!20163) e!1426774))))

(declare-fun setRest!20163 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20163 (= (_2!15231 (h!31638 (t!199749 (minValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))))) ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20163 true) setRest!20163))))

(assert (= b!2232553 b!2232554))

(assert (= (and b!2232553 condSetEmpty!20163) setIsEmpty!20163))

(assert (= (and b!2232553 (not condSetEmpty!20163)) setNonEmpty!20163))

(assert (= setNonEmpty!20163 b!2232555))

(assert (= (and b!2232321 ((_ is Cons!26237) (t!199749 (minValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))))) b!2232553))

(declare-fun m!2668280 () Bool)

(assert (=> b!2232553 m!2668280))

(declare-fun m!2668282 () Bool)

(assert (=> setNonEmpty!20163 m!2668282))

(declare-fun e!1426776 () Bool)

(assert (=> b!2232332 (= tp!700172 e!1426776)))

(declare-fun b!2232557 () Bool)

(declare-fun tp!700347 () Bool)

(declare-fun tp!700349 () Bool)

(assert (=> b!2232557 (= e!1426776 (and tp!700347 tp!700349))))

(declare-fun b!2232558 () Bool)

(declare-fun tp!700348 () Bool)

(assert (=> b!2232558 (= e!1426776 tp!700348)))

(declare-fun b!2232559 () Bool)

(declare-fun tp!700350 () Bool)

(declare-fun tp!700351 () Bool)

(assert (=> b!2232559 (= e!1426776 (and tp!700350 tp!700351))))

(declare-fun b!2232556 () Bool)

(assert (=> b!2232556 (= e!1426776 tp_is_empty!10083)))

(assert (= (and b!2232332 ((_ is ElementMatch!6429) (_1!15230 (_1!15231 (h!31638 mapDefault!14434))))) b!2232556))

(assert (= (and b!2232332 ((_ is Concat!10767) (_1!15230 (_1!15231 (h!31638 mapDefault!14434))))) b!2232557))

(assert (= (and b!2232332 ((_ is Star!6429) (_1!15230 (_1!15231 (h!31638 mapDefault!14434))))) b!2232558))

(assert (= (and b!2232332 ((_ is Union!6429) (_1!15230 (_1!15231 (h!31638 mapDefault!14434))))) b!2232559))

(declare-fun e!1426779 () Bool)

(assert (=> b!2232332 (= tp!700175 e!1426779)))

(declare-fun setIsEmpty!20164 () Bool)

(declare-fun setRes!20164 () Bool)

(assert (=> setIsEmpty!20164 setRes!20164))

(declare-fun e!1426777 () Bool)

(declare-fun tp!700356 () Bool)

(declare-fun tp!700353 () Bool)

(declare-fun b!2232560 () Bool)

(assert (=> b!2232560 (= e!1426779 (and tp!700353 (inv!35634 (_2!15230 (_1!15231 (h!31638 (t!199749 mapDefault!14434))))) e!1426777 tp_is_empty!10083 setRes!20164 tp!700356))))

(declare-fun condSetEmpty!20164 () Bool)

(assert (=> b!2232560 (= condSetEmpty!20164 (= (_2!15231 (h!31638 (t!199749 mapDefault!14434))) ((as const (Array Context!3954 Bool)) false)))))

(declare-fun b!2232561 () Bool)

(declare-fun tp!700355 () Bool)

(assert (=> b!2232561 (= e!1426777 tp!700355)))

(declare-fun b!2232562 () Bool)

(declare-fun e!1426778 () Bool)

(declare-fun tp!700354 () Bool)

(assert (=> b!2232562 (= e!1426778 tp!700354)))

(declare-fun setNonEmpty!20164 () Bool)

(declare-fun tp!700352 () Bool)

(declare-fun setElem!20164 () Context!3954)

(assert (=> setNonEmpty!20164 (= setRes!20164 (and tp!700352 (inv!35634 setElem!20164) e!1426778))))

(declare-fun setRest!20164 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20164 (= (_2!15231 (h!31638 (t!199749 mapDefault!14434))) ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20164 true) setRest!20164))))

(assert (= b!2232560 b!2232561))

(assert (= (and b!2232560 condSetEmpty!20164) setIsEmpty!20164))

(assert (= (and b!2232560 (not condSetEmpty!20164)) setNonEmpty!20164))

(assert (= setNonEmpty!20164 b!2232562))

(assert (= (and b!2232332 ((_ is Cons!26237) (t!199749 mapDefault!14434))) b!2232560))

(declare-fun m!2668284 () Bool)

(assert (=> b!2232560 m!2668284))

(declare-fun m!2668286 () Bool)

(assert (=> setNonEmpty!20164 m!2668286))

(declare-fun b!2232563 () Bool)

(declare-fun e!1426780 () Bool)

(declare-fun tp!700357 () Bool)

(declare-fun tp!700358 () Bool)

(assert (=> b!2232563 (= e!1426780 (and tp!700357 tp!700358))))

(assert (=> b!2232323 (= tp!700158 e!1426780)))

(assert (= (and b!2232323 ((_ is Cons!26236) (exprs!2477 setElem!20150))) b!2232563))

(declare-fun condMapEmpty!14438 () Bool)

(declare-fun mapDefault!14438 () List!26331)

(assert (=> mapNonEmpty!14437 (= condMapEmpty!14438 (= mapRest!14437 ((as const (Array (_ BitVec 32) List!26331)) mapDefault!14438)))))

(declare-fun e!1426783 () Bool)

(declare-fun mapRes!14438 () Bool)

(assert (=> mapNonEmpty!14437 (= tp!700095 (and e!1426783 mapRes!14438))))

(declare-fun setIsEmpty!20165 () Bool)

(declare-fun setRes!20166 () Bool)

(assert (=> setIsEmpty!20165 setRes!20166))

(declare-fun mapNonEmpty!14438 () Bool)

(declare-fun tp!700360 () Bool)

(declare-fun e!1426785 () Bool)

(assert (=> mapNonEmpty!14438 (= mapRes!14438 (and tp!700360 e!1426785))))

(declare-fun mapValue!14438 () List!26331)

(declare-fun mapRest!14438 () (Array (_ BitVec 32) List!26331))

(declare-fun mapKey!14438 () (_ BitVec 32))

(assert (=> mapNonEmpty!14438 (= mapRest!14437 (store mapRest!14438 mapKey!14438 mapValue!14438))))

(declare-fun b!2232564 () Bool)

(declare-fun e!1426784 () Bool)

(declare-fun tp!700361 () Bool)

(assert (=> b!2232564 (= e!1426784 tp!700361)))

(declare-fun b!2232565 () Bool)

(declare-fun e!1426781 () Bool)

(declare-fun tp!700362 () Bool)

(assert (=> b!2232565 (= e!1426781 tp!700362)))

(declare-fun b!2232566 () Bool)

(declare-fun e!1426782 () Bool)

(declare-fun tp!700367 () Bool)

(assert (=> b!2232566 (= e!1426782 tp!700367)))

(declare-fun b!2232567 () Bool)

(declare-fun tp!700369 () Bool)

(declare-fun tp!700366 () Bool)

(assert (=> b!2232567 (= e!1426785 (and tp!700366 (inv!35634 (_2!15230 (_1!15231 (h!31638 mapValue!14438)))) e!1426781 tp_is_empty!10083 setRes!20166 tp!700369))))

(declare-fun condSetEmpty!20165 () Bool)

(assert (=> b!2232567 (= condSetEmpty!20165 (= (_2!15231 (h!31638 mapValue!14438)) ((as const (Array Context!3954 Bool)) false)))))

(declare-fun setNonEmpty!20165 () Bool)

(declare-fun setElem!20165 () Context!3954)

(declare-fun setRes!20165 () Bool)

(declare-fun tp!700365 () Bool)

(declare-fun e!1426786 () Bool)

(assert (=> setNonEmpty!20165 (= setRes!20165 (and tp!700365 (inv!35634 setElem!20165) e!1426786))))

(declare-fun setRest!20165 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20165 (= (_2!15231 (h!31638 mapDefault!14438)) ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20165 true) setRest!20165))))

(declare-fun setElem!20166 () Context!3954)

(declare-fun setNonEmpty!20166 () Bool)

(declare-fun tp!700359 () Bool)

(assert (=> setNonEmpty!20166 (= setRes!20166 (and tp!700359 (inv!35634 setElem!20166) e!1426784))))

(declare-fun setRest!20166 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20166 (= (_2!15231 (h!31638 mapValue!14438)) ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20166 true) setRest!20166))))

(declare-fun mapIsEmpty!14438 () Bool)

(assert (=> mapIsEmpty!14438 mapRes!14438))

(declare-fun setIsEmpty!20166 () Bool)

(assert (=> setIsEmpty!20166 setRes!20165))

(declare-fun tp!700368 () Bool)

(declare-fun b!2232568 () Bool)

(declare-fun tp!700363 () Bool)

(assert (=> b!2232568 (= e!1426783 (and tp!700368 (inv!35634 (_2!15230 (_1!15231 (h!31638 mapDefault!14438)))) e!1426782 tp_is_empty!10083 setRes!20165 tp!700363))))

(declare-fun condSetEmpty!20166 () Bool)

(assert (=> b!2232568 (= condSetEmpty!20166 (= (_2!15231 (h!31638 mapDefault!14438)) ((as const (Array Context!3954 Bool)) false)))))

(declare-fun b!2232569 () Bool)

(declare-fun tp!700364 () Bool)

(assert (=> b!2232569 (= e!1426786 tp!700364)))

(assert (= (and mapNonEmpty!14437 condMapEmpty!14438) mapIsEmpty!14438))

(assert (= (and mapNonEmpty!14437 (not condMapEmpty!14438)) mapNonEmpty!14438))

(assert (= b!2232567 b!2232565))

(assert (= (and b!2232567 condSetEmpty!20165) setIsEmpty!20165))

(assert (= (and b!2232567 (not condSetEmpty!20165)) setNonEmpty!20166))

(assert (= setNonEmpty!20166 b!2232564))

(assert (= (and mapNonEmpty!14438 ((_ is Cons!26237) mapValue!14438)) b!2232567))

(assert (= b!2232568 b!2232566))

(assert (= (and b!2232568 condSetEmpty!20166) setIsEmpty!20166))

(assert (= (and b!2232568 (not condSetEmpty!20166)) setNonEmpty!20165))

(assert (= setNonEmpty!20165 b!2232569))

(assert (= (and mapNonEmpty!14437 ((_ is Cons!26237) mapDefault!14438)) b!2232568))

(declare-fun m!2668288 () Bool)

(assert (=> setNonEmpty!20165 m!2668288))

(declare-fun m!2668290 () Bool)

(assert (=> mapNonEmpty!14438 m!2668290))

(declare-fun m!2668292 () Bool)

(assert (=> b!2232568 m!2668292))

(declare-fun m!2668294 () Bool)

(assert (=> setNonEmpty!20166 m!2668294))

(declare-fun m!2668296 () Bool)

(assert (=> b!2232567 m!2668296))

(declare-fun b!2232570 () Bool)

(declare-fun e!1426787 () Bool)

(declare-fun tp!700370 () Bool)

(declare-fun tp!700371 () Bool)

(assert (=> b!2232570 (= e!1426787 (and tp!700370 tp!700371))))

(assert (=> b!2232320 (= tp!700153 e!1426787)))

(assert (= (and b!2232320 ((_ is Cons!26236) (exprs!2477 setElem!20149))) b!2232570))

(declare-fun e!1426788 () Bool)

(assert (=> b!2232318 (= tp!700152 e!1426788)))

(declare-fun b!2232572 () Bool)

(declare-fun tp!700372 () Bool)

(declare-fun tp!700374 () Bool)

(assert (=> b!2232572 (= e!1426788 (and tp!700372 tp!700374))))

(declare-fun b!2232573 () Bool)

(declare-fun tp!700373 () Bool)

(assert (=> b!2232573 (= e!1426788 tp!700373)))

(declare-fun b!2232574 () Bool)

(declare-fun tp!700375 () Bool)

(declare-fun tp!700376 () Bool)

(assert (=> b!2232574 (= e!1426788 (and tp!700375 tp!700376))))

(declare-fun b!2232571 () Bool)

(assert (=> b!2232571 (= e!1426788 tp_is_empty!10083)))

(assert (= (and b!2232318 ((_ is ElementMatch!6429) (_1!15230 (_1!15231 (h!31638 (zeroValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))))))) b!2232571))

(assert (= (and b!2232318 ((_ is Concat!10767) (_1!15230 (_1!15231 (h!31638 (zeroValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))))))) b!2232572))

(assert (= (and b!2232318 ((_ is Star!6429) (_1!15230 (_1!15231 (h!31638 (zeroValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))))))) b!2232573))

(assert (= (and b!2232318 ((_ is Union!6429) (_1!15230 (_1!15231 (h!31638 (zeroValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))))))) b!2232574))

(declare-fun e!1426791 () Bool)

(assert (=> b!2232318 (= tp!700155 e!1426791)))

(declare-fun setIsEmpty!20167 () Bool)

(declare-fun setRes!20167 () Bool)

(assert (=> setIsEmpty!20167 setRes!20167))

(declare-fun b!2232575 () Bool)

(declare-fun tp!700378 () Bool)

(declare-fun e!1426789 () Bool)

(declare-fun tp!700381 () Bool)

(assert (=> b!2232575 (= e!1426791 (and tp!700378 (inv!35634 (_2!15230 (_1!15231 (h!31638 (t!199749 (zeroValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))))))) e!1426789 tp_is_empty!10083 setRes!20167 tp!700381))))

(declare-fun condSetEmpty!20167 () Bool)

(assert (=> b!2232575 (= condSetEmpty!20167 (= (_2!15231 (h!31638 (t!199749 (zeroValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))))) ((as const (Array Context!3954 Bool)) false)))))

(declare-fun b!2232576 () Bool)

(declare-fun tp!700380 () Bool)

(assert (=> b!2232576 (= e!1426789 tp!700380)))

(declare-fun b!2232577 () Bool)

(declare-fun e!1426790 () Bool)

(declare-fun tp!700379 () Bool)

(assert (=> b!2232577 (= e!1426790 tp!700379)))

(declare-fun tp!700377 () Bool)

(declare-fun setNonEmpty!20167 () Bool)

(declare-fun setElem!20167 () Context!3954)

(assert (=> setNonEmpty!20167 (= setRes!20167 (and tp!700377 (inv!35634 setElem!20167) e!1426790))))

(declare-fun setRest!20167 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20167 (= (_2!15231 (h!31638 (t!199749 (zeroValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))))) ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20167 true) setRest!20167))))

(assert (= b!2232575 b!2232576))

(assert (= (and b!2232575 condSetEmpty!20167) setIsEmpty!20167))

(assert (= (and b!2232575 (not condSetEmpty!20167)) setNonEmpty!20167))

(assert (= setNonEmpty!20167 b!2232577))

(assert (= (and b!2232318 ((_ is Cons!26237) (t!199749 (zeroValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839))))))))) b!2232575))

(declare-fun m!2668298 () Bool)

(assert (=> b!2232575 m!2668298))

(declare-fun m!2668300 () Bool)

(assert (=> setNonEmpty!20167 m!2668300))

(declare-fun b!2232578 () Bool)

(declare-fun e!1426792 () Bool)

(declare-fun tp!700382 () Bool)

(declare-fun tp!700383 () Bool)

(assert (=> b!2232578 (= e!1426792 (and tp!700382 tp!700383))))

(assert (=> b!2232334 (= tp!700173 e!1426792)))

(assert (= (and b!2232334 ((_ is Cons!26236) (exprs!2477 setElem!20151))) b!2232578))

(declare-fun e!1426793 () Bool)

(assert (=> b!2232308 (= tp!700138 e!1426793)))

(declare-fun b!2232580 () Bool)

(declare-fun tp!700384 () Bool)

(declare-fun tp!700386 () Bool)

(assert (=> b!2232580 (= e!1426793 (and tp!700384 tp!700386))))

(declare-fun b!2232581 () Bool)

(declare-fun tp!700385 () Bool)

(assert (=> b!2232581 (= e!1426793 tp!700385)))

(declare-fun b!2232582 () Bool)

(declare-fun tp!700387 () Bool)

(declare-fun tp!700388 () Bool)

(assert (=> b!2232582 (= e!1426793 (and tp!700387 tp!700388))))

(declare-fun b!2232579 () Bool)

(assert (=> b!2232579 (= e!1426793 tp_is_empty!10083)))

(assert (= (and b!2232308 ((_ is ElementMatch!6429) (regOne!13371 (regTwo!13371 expr!64)))) b!2232579))

(assert (= (and b!2232308 ((_ is Concat!10767) (regOne!13371 (regTwo!13371 expr!64)))) b!2232580))

(assert (= (and b!2232308 ((_ is Star!6429) (regOne!13371 (regTwo!13371 expr!64)))) b!2232581))

(assert (= (and b!2232308 ((_ is Union!6429) (regOne!13371 (regTwo!13371 expr!64)))) b!2232582))

(declare-fun e!1426794 () Bool)

(assert (=> b!2232308 (= tp!700139 e!1426794)))

(declare-fun b!2232584 () Bool)

(declare-fun tp!700389 () Bool)

(declare-fun tp!700391 () Bool)

(assert (=> b!2232584 (= e!1426794 (and tp!700389 tp!700391))))

(declare-fun b!2232585 () Bool)

(declare-fun tp!700390 () Bool)

(assert (=> b!2232585 (= e!1426794 tp!700390)))

(declare-fun b!2232586 () Bool)

(declare-fun tp!700392 () Bool)

(declare-fun tp!700393 () Bool)

(assert (=> b!2232586 (= e!1426794 (and tp!700392 tp!700393))))

(declare-fun b!2232583 () Bool)

(assert (=> b!2232583 (= e!1426794 tp_is_empty!10083)))

(assert (= (and b!2232308 ((_ is ElementMatch!6429) (regTwo!13371 (regTwo!13371 expr!64)))) b!2232583))

(assert (= (and b!2232308 ((_ is Concat!10767) (regTwo!13371 (regTwo!13371 expr!64)))) b!2232584))

(assert (= (and b!2232308 ((_ is Star!6429) (regTwo!13371 (regTwo!13371 expr!64)))) b!2232585))

(assert (= (and b!2232308 ((_ is Union!6429) (regTwo!13371 (regTwo!13371 expr!64)))) b!2232586))

(declare-fun b!2232587 () Bool)

(declare-fun e!1426795 () Bool)

(declare-fun tp!700394 () Bool)

(declare-fun tp!700395 () Bool)

(assert (=> b!2232587 (= e!1426795 (and tp!700394 tp!700395))))

(assert (=> b!2232322 (= tp!700159 e!1426795)))

(assert (= (and b!2232322 ((_ is Cons!26236) (exprs!2477 (_2!15230 (_1!15231 (h!31638 (minValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839)))))))))))) b!2232587))

(declare-fun b!2232588 () Bool)

(declare-fun e!1426796 () Bool)

(declare-fun tp!700396 () Bool)

(declare-fun tp!700397 () Bool)

(assert (=> b!2232588 (= e!1426796 (and tp!700396 tp!700397))))

(assert (=> b!2232319 (= tp!700154 e!1426796)))

(assert (= (and b!2232319 ((_ is Cons!26236) (exprs!2477 (_2!15230 (_1!15231 (h!31638 (zeroValue!3325 (v!29833 (underlying!6335 (v!29834 (underlying!6336 (cache!3358 cacheDown!839)))))))))))) b!2232588))

(declare-fun condSetEmpty!20168 () Bool)

(assert (=> setNonEmpty!20151 (= condSetEmpty!20168 (= setRest!20151 ((as const (Array Context!3954 Bool)) false)))))

(declare-fun setRes!20168 () Bool)

(assert (=> setNonEmpty!20151 (= tp!700171 setRes!20168)))

(declare-fun setIsEmpty!20168 () Bool)

(assert (=> setIsEmpty!20168 setRes!20168))

(declare-fun tp!700399 () Bool)

(declare-fun e!1426797 () Bool)

(declare-fun setElem!20168 () Context!3954)

(declare-fun setNonEmpty!20168 () Bool)

(assert (=> setNonEmpty!20168 (= setRes!20168 (and tp!700399 (inv!35634 setElem!20168) e!1426797))))

(declare-fun setRest!20168 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20168 (= setRest!20151 ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20168 true) setRest!20168))))

(declare-fun b!2232589 () Bool)

(declare-fun tp!700398 () Bool)

(assert (=> b!2232589 (= e!1426797 tp!700398)))

(assert (= (and setNonEmpty!20151 condSetEmpty!20168) setIsEmpty!20168))

(assert (= (and setNonEmpty!20151 (not condSetEmpty!20168)) setNonEmpty!20168))

(assert (= setNonEmpty!20168 b!2232589))

(declare-fun m!2668302 () Bool)

(assert (=> setNonEmpty!20168 m!2668302))

(declare-fun e!1426798 () Bool)

(assert (=> b!2232330 (= tp!700167 e!1426798)))

(declare-fun b!2232591 () Bool)

(declare-fun tp!700400 () Bool)

(declare-fun tp!700402 () Bool)

(assert (=> b!2232591 (= e!1426798 (and tp!700400 tp!700402))))

(declare-fun b!2232592 () Bool)

(declare-fun tp!700401 () Bool)

(assert (=> b!2232592 (= e!1426798 tp!700401)))

(declare-fun b!2232593 () Bool)

(declare-fun tp!700403 () Bool)

(declare-fun tp!700404 () Bool)

(assert (=> b!2232593 (= e!1426798 (and tp!700403 tp!700404))))

(declare-fun b!2232590 () Bool)

(assert (=> b!2232590 (= e!1426798 tp_is_empty!10083)))

(assert (= (and b!2232330 ((_ is ElementMatch!6429) (reg!6758 (regTwo!13370 expr!64)))) b!2232590))

(assert (= (and b!2232330 ((_ is Concat!10767) (reg!6758 (regTwo!13370 expr!64)))) b!2232591))

(assert (= (and b!2232330 ((_ is Star!6429) (reg!6758 (regTwo!13370 expr!64)))) b!2232592))

(assert (= (and b!2232330 ((_ is Union!6429) (reg!6758 (regTwo!13370 expr!64)))) b!2232593))

(declare-fun b!2232594 () Bool)

(declare-fun e!1426799 () Bool)

(declare-fun tp!700405 () Bool)

(declare-fun tp!700406 () Bool)

(assert (=> b!2232594 (= e!1426799 (and tp!700405 tp!700406))))

(assert (=> b!2232276 (= tp!700102 e!1426799)))

(assert (= (and b!2232276 ((_ is Cons!26236) (exprs!2477 (_2!15230 (_1!15231 (h!31638 mapDefault!14437)))))) b!2232594))

(declare-fun condSetEmpty!20169 () Bool)

(assert (=> setNonEmpty!20150 (= condSetEmpty!20169 (= setRest!20150 ((as const (Array Context!3954 Bool)) false)))))

(declare-fun setRes!20169 () Bool)

(assert (=> setNonEmpty!20150 (= tp!700156 setRes!20169)))

(declare-fun setIsEmpty!20169 () Bool)

(assert (=> setIsEmpty!20169 setRes!20169))

(declare-fun setElem!20169 () Context!3954)

(declare-fun setNonEmpty!20169 () Bool)

(declare-fun tp!700408 () Bool)

(declare-fun e!1426800 () Bool)

(assert (=> setNonEmpty!20169 (= setRes!20169 (and tp!700408 (inv!35634 setElem!20169) e!1426800))))

(declare-fun setRest!20169 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20169 (= setRest!20150 ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20169 true) setRest!20169))))

(declare-fun b!2232595 () Bool)

(declare-fun tp!700407 () Bool)

(assert (=> b!2232595 (= e!1426800 tp!700407)))

(assert (= (and setNonEmpty!20150 condSetEmpty!20169) setIsEmpty!20169))

(assert (= (and setNonEmpty!20150 (not condSetEmpty!20169)) setNonEmpty!20169))

(assert (= setNonEmpty!20169 b!2232595))

(declare-fun m!2668304 () Bool)

(assert (=> setNonEmpty!20169 m!2668304))

(declare-fun b!2232596 () Bool)

(declare-fun e!1426801 () Bool)

(declare-fun tp!700409 () Bool)

(declare-fun tp!700410 () Bool)

(assert (=> b!2232596 (= e!1426801 (and tp!700409 tp!700410))))

(assert (=> b!2232274 (= tp!700096 e!1426801)))

(assert (= (and b!2232274 ((_ is Cons!26236) (exprs!2477 setElem!20145))) b!2232596))

(declare-fun condSetEmpty!20170 () Bool)

(assert (=> setNonEmpty!20149 (= condSetEmpty!20170 (= setRest!20149 ((as const (Array Context!3954 Bool)) false)))))

(declare-fun setRes!20170 () Bool)

(assert (=> setNonEmpty!20149 (= tp!700151 setRes!20170)))

(declare-fun setIsEmpty!20170 () Bool)

(assert (=> setIsEmpty!20170 setRes!20170))

(declare-fun tp!700412 () Bool)

(declare-fun e!1426802 () Bool)

(declare-fun setNonEmpty!20170 () Bool)

(declare-fun setElem!20170 () Context!3954)

(assert (=> setNonEmpty!20170 (= setRes!20170 (and tp!700412 (inv!35634 setElem!20170) e!1426802))))

(declare-fun setRest!20170 () (InoxSet Context!3954))

(assert (=> setNonEmpty!20170 (= setRest!20149 ((_ map or) (store ((as const (Array Context!3954 Bool)) false) setElem!20170 true) setRest!20170))))

(declare-fun b!2232597 () Bool)

(declare-fun tp!700411 () Bool)

(assert (=> b!2232597 (= e!1426802 tp!700411)))

(assert (= (and setNonEmpty!20149 condSetEmpty!20170) setIsEmpty!20170))

(assert (= (and setNonEmpty!20149 (not condSetEmpty!20170)) setNonEmpty!20170))

(assert (= setNonEmpty!20170 b!2232597))

(declare-fun m!2668306 () Bool)

(assert (=> setNonEmpty!20170 m!2668306))

(declare-fun e!1426803 () Bool)

(assert (=> b!2232329 (= tp!700166 e!1426803)))

(declare-fun b!2232599 () Bool)

(declare-fun tp!700413 () Bool)

(declare-fun tp!700415 () Bool)

(assert (=> b!2232599 (= e!1426803 (and tp!700413 tp!700415))))

(declare-fun b!2232600 () Bool)

(declare-fun tp!700414 () Bool)

(assert (=> b!2232600 (= e!1426803 tp!700414)))

(declare-fun b!2232601 () Bool)

(declare-fun tp!700416 () Bool)

(declare-fun tp!700417 () Bool)

(assert (=> b!2232601 (= e!1426803 (and tp!700416 tp!700417))))

(declare-fun b!2232598 () Bool)

(assert (=> b!2232598 (= e!1426803 tp_is_empty!10083)))

(assert (= (and b!2232329 ((_ is ElementMatch!6429) (regOne!13370 (regTwo!13370 expr!64)))) b!2232598))

(assert (= (and b!2232329 ((_ is Concat!10767) (regOne!13370 (regTwo!13370 expr!64)))) b!2232599))

(assert (= (and b!2232329 ((_ is Star!6429) (regOne!13370 (regTwo!13370 expr!64)))) b!2232600))

(assert (= (and b!2232329 ((_ is Union!6429) (regOne!13370 (regTwo!13370 expr!64)))) b!2232601))

(declare-fun e!1426804 () Bool)

(assert (=> b!2232329 (= tp!700168 e!1426804)))

(declare-fun b!2232603 () Bool)

(declare-fun tp!700418 () Bool)

(declare-fun tp!700420 () Bool)

(assert (=> b!2232603 (= e!1426804 (and tp!700418 tp!700420))))

(declare-fun b!2232604 () Bool)

(declare-fun tp!700419 () Bool)

(assert (=> b!2232604 (= e!1426804 tp!700419)))

(declare-fun b!2232605 () Bool)

(declare-fun tp!700421 () Bool)

(declare-fun tp!700422 () Bool)

(assert (=> b!2232605 (= e!1426804 (and tp!700421 tp!700422))))

(declare-fun b!2232602 () Bool)

(assert (=> b!2232602 (= e!1426804 tp_is_empty!10083)))

(assert (= (and b!2232329 ((_ is ElementMatch!6429) (regTwo!13370 (regTwo!13370 expr!64)))) b!2232602))

(assert (= (and b!2232329 ((_ is Concat!10767) (regTwo!13370 (regTwo!13370 expr!64)))) b!2232603))

(assert (= (and b!2232329 ((_ is Star!6429) (regTwo!13370 (regTwo!13370 expr!64)))) b!2232604))

(assert (= (and b!2232329 ((_ is Union!6429) (regTwo!13370 (regTwo!13370 expr!64)))) b!2232605))

(declare-fun b!2232606 () Bool)

(declare-fun e!1426805 () Bool)

(declare-fun tp!700423 () Bool)

(declare-fun tp!700424 () Bool)

(assert (=> b!2232606 (= e!1426805 (and tp!700423 tp!700424))))

(assert (=> b!2232275 (= tp!700097 e!1426805)))

(assert (= (and b!2232275 ((_ is Cons!26236) (exprs!2477 (_2!15230 (_1!15231 (h!31638 mapValue!14437)))))) b!2232606))

(declare-fun b_lambda!71665 () Bool)

(assert (= b_lambda!71663 (or d!665154 b_lambda!71665)))

(declare-fun bs!454123 () Bool)

(declare-fun d!665204 () Bool)

(assert (= bs!454123 (and d!665204 d!665154)))

(assert (=> bs!454123 (= (dynLambda!11524 lambda!84317 (h!31637 (exprs!2477 (Context!3955 ($colon$colon!522 (exprs!2477 context!86) expr!64))))) (validRegex!2400 (h!31637 (exprs!2477 (Context!3955 ($colon$colon!522 (exprs!2477 context!86) expr!64))))))))

(declare-fun m!2668308 () Bool)

(assert (=> bs!454123 m!2668308))

(assert (=> b!2232430 d!665204))

(declare-fun b_lambda!71667 () Bool)

(assert (= b_lambda!71661 (or d!665152 b_lambda!71667)))

(declare-fun bs!454124 () Bool)

(declare-fun d!665206 () Bool)

(assert (= bs!454124 (and d!665206 d!665152)))

(assert (=> bs!454124 (= (dynLambda!11524 lambda!84316 (h!31637 (exprs!2477 context!86))) (validRegex!2400 (h!31637 (exprs!2477 context!86))))))

(declare-fun m!2668310 () Bool)

(assert (=> bs!454124 m!2668310))

(assert (=> b!2232410 d!665206))

(check-sat (not b!2232485) (not b!2232525) (not b!2232475) (not b!2232464) (not b!2232442) (not b!2232554) (not b!2232531) (not b!2232516) (not b!2232563) (not bm!134085) (not bm!134080) (not b!2232592) (not b!2232488) (not b!2232444) (not b!2232558) (not b!2232436) (not b!2232362) (not b!2232440) (not b!2232529) (not b!2232511) (not setNonEmpty!20159) (not bm!134061) (not b!2232565) (not b!2232552) (not b!2232569) (not b!2232476) (not b!2232526) (not b!2232578) (not b!2232553) (not d!665202) (not b!2232494) (not b!2232454) (not b!2232460) (not b!2232575) (not b!2232597) (not d!665186) (not b!2232580) (not b!2232521) (not b!2232457) (not setNonEmpty!20158) (not b!2232591) (not b!2232560) (not b!2232605) (not d!665164) (not d!665176) (not b!2232515) (not b!2232453) (not setNonEmpty!20170) (not bm!134082) (not b!2232472) (not b!2232490) (not b!2232415) (not b!2232512) (not b_lambda!71667) (not b!2232561) (not b!2232551) (not b!2232471) (not b!2232449) (not b!2232517) (not b!2232446) (not mapNonEmpty!14438) (not setNonEmpty!20157) (not b!2232479) (not b!2232486) (not b!2232542) (not b_next!65433) (not b!2232533) (not setNonEmpty!20162) (not b!2232544) (not b_lambda!71665) (not b!2232534) (not b!2232562) (not b!2232599) (not b!2232455) (not d!665198) (not b!2232477) (not b!2232473) (not b!2232604) (not b!2232504) (not b!2232394) (not bs!454124) b_and!174717 (not b!2232555) (not b!2232519) (not b!2232441) (not b!2232596) (not b!2232469) (not b!2232527) (not b!2232547) (not b!2232483) (not b!2232450) (not b!2232606) (not b!2232576) (not d!665200) (not setNonEmpty!20169) (not d!665172) (not b!2232492) (not b!2232459) (not b!2232448) (not bm!134079) (not b!2232543) (not b!2232595) (not setNonEmpty!20161) (not b!2232541) (not bm!134074) (not b!2232411) (not b!2232510) (not b!2232452) (not b!2232546) (not b!2232456) (not b!2232573) (not setNonEmpty!20160) (not b!2232586) (not b!2232589) (not b!2232600) (not b!2232489) (not b!2232445) (not b!2232498) (not b!2232481) (not b!2232404) (not b!2232603) (not b!2232463) (not bm!134077) (not b!2232480) tp_is_empty!10083 (not b!2232508) (not b!2232577) (not b!2232548) (not b!2232506) (not b!2232424) (not b!2232574) (not b!2232501) (not setNonEmpty!20163) (not d!665162) (not b!2232513) (not b!2232550) (not d!665180) (not b!2232564) (not b!2232582) (not d!665188) (not b!2232593) (not bs!454123) (not setNonEmpty!20154) (not d!665192) (not b!2232439) (not b!2232557) (not b!2232524) (not b!2232499) (not setNonEmpty!20166) (not b!2232484) (not setNonEmpty!20167) (not setNonEmpty!20168) (not b!2232537) (not b!2232567) (not b!2232496) (not b!2232438) (not b!2232461) (not d!665190) (not b!2232601) (not b_next!65435) (not b!2232468) (not b!2232497) (not b!2232522) (not b!2232535) (not setNonEmpty!20165) (not b!2232500) (not b!2232566) (not b!2232581) (not b!2232539) (not bm!134083) (not b!2232572) (not b!2232520) (not b!2232570) (not b!2232505) (not bm!134060) (not b!2232503) (not b!2232594) (not b!2232509) (not d!665170) (not b!2232588) (not b!2232465) (not b!2232363) (not b!2232587) (not d!665160) (not b!2232530) (not b!2232467) (not b!2232405) (not b!2232568) (not b!2232585) (not b!2232431) (not setNonEmpty!20164) (not d!665194) b_and!174719 (not b!2232538) (not b!2232559) (not b!2232584) (not b!2232493))
(check-sat b_and!174717 b_and!174719 (not b_next!65435) (not b_next!65433))

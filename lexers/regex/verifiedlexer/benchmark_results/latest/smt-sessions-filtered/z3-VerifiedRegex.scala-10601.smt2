; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544882 () Bool)

(assert start!544882)

(declare-fun b!5149077 () Bool)

(declare-fun e!3210125 () Bool)

(declare-fun tp!1439639 () Bool)

(assert (=> b!5149077 (= e!3210125 tp!1439639)))

(declare-fun b!5149078 () Bool)

(declare-fun e!3210127 () Bool)

(declare-fun e!3210128 () Bool)

(assert (=> b!5149078 (= e!3210127 (not e!3210128))))

(declare-fun res!2191293 () Bool)

(assert (=> b!5149078 (=> res!2191293 e!3210128)))

(declare-datatypes ((C!29252 0))(
  ( (C!29253 (val!24278 Int)) )
))
(declare-datatypes ((Regex!14493 0))(
  ( (ElementMatch!14493 (c!886302 C!29252)) (Concat!23338 (regOne!29498 Regex!14493) (regTwo!29498 Regex!14493)) (EmptyExpr!14493) (Star!14493 (reg!14822 Regex!14493)) (EmptyLang!14493) (Union!14493 (regOne!29499 Regex!14493) (regTwo!29499 Regex!14493)) )
))
(declare-fun expr!117 () Regex!14493)

(declare-fun validRegex!6348 (Regex!14493) Bool)

(assert (=> b!5149078 (= res!2191293 (not (validRegex!6348 (regTwo!29498 expr!117))))))

(declare-fun lostCause!1538 (Regex!14493) Bool)

(assert (=> b!5149078 (not (lostCause!1538 (regOne!29498 expr!117)))))

(declare-datatypes ((Unit!151189 0))(
  ( (Unit!151190) )
))
(declare-fun lt!2121157 () Unit!151189)

(declare-fun lemmaNullableThenNotLostCause!82 (Regex!14493) Unit!151189)

(assert (=> b!5149078 (= lt!2121157 (lemmaNullableThenNotLostCause!82 (regOne!29498 expr!117)))))

(declare-fun b!5149079 () Bool)

(declare-fun tp!1439636 () Bool)

(declare-fun tp!1439638 () Bool)

(assert (=> b!5149079 (= e!3210125 (and tp!1439636 tp!1439638))))

(declare-fun b!5149081 () Bool)

(declare-fun regexDepth!139 (Regex!14493) Int)

(assert (=> b!5149081 (= e!3210128 (< (regexDepth!139 (regOne!29498 expr!117)) (regexDepth!139 expr!117)))))

(declare-fun b!5149082 () Bool)

(declare-fun tp!1439640 () Bool)

(declare-fun tp!1439641 () Bool)

(assert (=> b!5149082 (= e!3210125 (and tp!1439640 tp!1439641))))

(declare-fun b!5149083 () Bool)

(declare-fun e!3210126 () Bool)

(declare-datatypes ((List!59901 0))(
  ( (Nil!59777) (Cons!59777 (h!66225 Regex!14493) (t!372942 List!59901)) )
))
(declare-datatypes ((Context!7754 0))(
  ( (Context!7755 (exprs!4377 List!59901)) )
))
(declare-fun ctx!100 () Context!7754)

(declare-fun lostCause!1539 (Context!7754) Bool)

(assert (=> b!5149083 (= e!3210126 (lostCause!1539 ctx!100))))

(declare-fun b!5149084 () Bool)

(declare-fun res!2191299 () Bool)

(assert (=> b!5149084 (=> (not res!2191299) (not e!3210127))))

(assert (=> b!5149084 (= res!2191299 e!3210126)))

(declare-fun res!2191298 () Bool)

(assert (=> b!5149084 (=> res!2191298 e!3210126)))

(assert (=> b!5149084 (= res!2191298 (lostCause!1538 expr!117))))

(declare-fun b!5149085 () Bool)

(declare-fun tp_is_empty!38135 () Bool)

(assert (=> b!5149085 (= e!3210125 tp_is_empty!38135)))

(declare-fun b!5149086 () Bool)

(declare-fun res!2191300 () Bool)

(assert (=> b!5149086 (=> (not res!2191300) (not e!3210127))))

(declare-fun nullable!4849 (Regex!14493) Bool)

(assert (=> b!5149086 (= res!2191300 (nullable!4849 (regOne!29498 expr!117)))))

(declare-fun b!5149087 () Bool)

(declare-fun res!2191296 () Bool)

(assert (=> b!5149087 (=> res!2191296 e!3210128)))

(declare-fun $colon$colon!1215 (List!59901 Regex!14493) List!59901)

(assert (=> b!5149087 (= res!2191296 (not (lostCause!1539 (Context!7755 ($colon$colon!1215 (exprs!4377 ctx!100) (regTwo!29498 expr!117))))))))

(declare-fun b!5149080 () Bool)

(declare-fun res!2191294 () Bool)

(assert (=> b!5149080 (=> res!2191294 e!3210128)))

(assert (=> b!5149080 (= res!2191294 (not (validRegex!6348 (regOne!29498 expr!117))))))

(declare-fun res!2191297 () Bool)

(assert (=> start!544882 (=> (not res!2191297) (not e!3210127))))

(assert (=> start!544882 (= res!2191297 (validRegex!6348 expr!117))))

(assert (=> start!544882 e!3210127))

(assert (=> start!544882 e!3210125))

(declare-fun e!3210124 () Bool)

(declare-fun inv!79413 (Context!7754) Bool)

(assert (=> start!544882 (and (inv!79413 ctx!100) e!3210124)))

(assert (=> start!544882 tp_is_empty!38135))

(declare-fun b!5149088 () Bool)

(declare-fun res!2191295 () Bool)

(assert (=> b!5149088 (=> (not res!2191295) (not e!3210127))))

(declare-fun a!1296 () C!29252)

(get-info :version)

(assert (=> b!5149088 (= res!2191295 (and (or (not ((_ is ElementMatch!14493) expr!117)) (not (= (c!886302 expr!117) a!1296))) (not ((_ is Union!14493) expr!117)) ((_ is Concat!23338) expr!117)))))

(declare-fun b!5149089 () Bool)

(declare-fun tp!1439637 () Bool)

(assert (=> b!5149089 (= e!3210124 tp!1439637)))

(assert (= (and start!544882 res!2191297) b!5149084))

(assert (= (and b!5149084 (not res!2191298)) b!5149083))

(assert (= (and b!5149084 res!2191299) b!5149088))

(assert (= (and b!5149088 res!2191295) b!5149086))

(assert (= (and b!5149086 res!2191300) b!5149078))

(assert (= (and b!5149078 (not res!2191293)) b!5149080))

(assert (= (and b!5149080 (not res!2191294)) b!5149087))

(assert (= (and b!5149087 (not res!2191296)) b!5149081))

(assert (= (and start!544882 ((_ is ElementMatch!14493) expr!117)) b!5149085))

(assert (= (and start!544882 ((_ is Concat!23338) expr!117)) b!5149082))

(assert (= (and start!544882 ((_ is Star!14493) expr!117)) b!5149077))

(assert (= (and start!544882 ((_ is Union!14493) expr!117)) b!5149079))

(assert (= start!544882 b!5149089))

(declare-fun m!6207550 () Bool)

(assert (=> b!5149087 m!6207550))

(declare-fun m!6207552 () Bool)

(assert (=> b!5149087 m!6207552))

(declare-fun m!6207554 () Bool)

(assert (=> b!5149080 m!6207554))

(declare-fun m!6207556 () Bool)

(assert (=> b!5149086 m!6207556))

(declare-fun m!6207558 () Bool)

(assert (=> b!5149081 m!6207558))

(declare-fun m!6207560 () Bool)

(assert (=> b!5149081 m!6207560))

(declare-fun m!6207562 () Bool)

(assert (=> b!5149083 m!6207562))

(declare-fun m!6207564 () Bool)

(assert (=> b!5149078 m!6207564))

(declare-fun m!6207566 () Bool)

(assert (=> b!5149078 m!6207566))

(declare-fun m!6207568 () Bool)

(assert (=> b!5149078 m!6207568))

(declare-fun m!6207570 () Bool)

(assert (=> b!5149084 m!6207570))

(declare-fun m!6207572 () Bool)

(assert (=> start!544882 m!6207572))

(declare-fun m!6207574 () Bool)

(assert (=> start!544882 m!6207574))

(check-sat (not b!5149082) (not b!5149080) (not start!544882) (not b!5149079) (not b!5149087) (not b!5149086) (not b!5149078) (not b!5149084) (not b!5149077) (not b!5149089) tp_is_empty!38135 (not b!5149081) (not b!5149083))
(check-sat)
(get-model)

(declare-fun b!5149108 () Bool)

(declare-fun e!3210144 () Bool)

(declare-fun e!3210146 () Bool)

(assert (=> b!5149108 (= e!3210144 e!3210146)))

(declare-fun c!886308 () Bool)

(assert (=> b!5149108 (= c!886308 ((_ is Union!14493) (regOne!29498 expr!117)))))

(declare-fun b!5149109 () Bool)

(declare-fun e!3210148 () Bool)

(assert (=> b!5149109 (= e!3210148 e!3210144)))

(declare-fun c!886307 () Bool)

(assert (=> b!5149109 (= c!886307 ((_ is Star!14493) (regOne!29498 expr!117)))))

(declare-fun b!5149110 () Bool)

(declare-fun e!3210145 () Bool)

(declare-fun call!360047 () Bool)

(assert (=> b!5149110 (= e!3210145 call!360047)))

(declare-fun b!5149111 () Bool)

(declare-fun res!2191313 () Bool)

(declare-fun e!3210149 () Bool)

(assert (=> b!5149111 (=> (not res!2191313) (not e!3210149))))

(declare-fun call!360048 () Bool)

(assert (=> b!5149111 (= res!2191313 call!360048)))

(assert (=> b!5149111 (= e!3210146 e!3210149)))

(declare-fun bm!360041 () Bool)

(declare-fun call!360046 () Bool)

(assert (=> bm!360041 (= call!360046 (validRegex!6348 (ite c!886308 (regTwo!29499 (regOne!29498 expr!117)) (regTwo!29498 (regOne!29498 expr!117)))))))

(declare-fun b!5149112 () Bool)

(declare-fun e!3210147 () Bool)

(declare-fun e!3210143 () Bool)

(assert (=> b!5149112 (= e!3210147 e!3210143)))

(declare-fun res!2191312 () Bool)

(assert (=> b!5149112 (=> (not res!2191312) (not e!3210143))))

(assert (=> b!5149112 (= res!2191312 call!360048)))

(declare-fun bm!360042 () Bool)

(assert (=> bm!360042 (= call!360048 call!360047)))

(declare-fun b!5149114 () Bool)

(assert (=> b!5149114 (= e!3210149 call!360046)))

(declare-fun bm!360043 () Bool)

(assert (=> bm!360043 (= call!360047 (validRegex!6348 (ite c!886307 (reg!14822 (regOne!29498 expr!117)) (ite c!886308 (regOne!29499 (regOne!29498 expr!117)) (regOne!29498 (regOne!29498 expr!117))))))))

(declare-fun b!5149115 () Bool)

(assert (=> b!5149115 (= e!3210144 e!3210145)))

(declare-fun res!2191314 () Bool)

(assert (=> b!5149115 (= res!2191314 (not (nullable!4849 (reg!14822 (regOne!29498 expr!117)))))))

(assert (=> b!5149115 (=> (not res!2191314) (not e!3210145))))

(declare-fun b!5149116 () Bool)

(declare-fun res!2191311 () Bool)

(assert (=> b!5149116 (=> res!2191311 e!3210147)))

(assert (=> b!5149116 (= res!2191311 (not ((_ is Concat!23338) (regOne!29498 expr!117))))))

(assert (=> b!5149116 (= e!3210146 e!3210147)))

(declare-fun d!1663846 () Bool)

(declare-fun res!2191315 () Bool)

(assert (=> d!1663846 (=> res!2191315 e!3210148)))

(assert (=> d!1663846 (= res!2191315 ((_ is ElementMatch!14493) (regOne!29498 expr!117)))))

(assert (=> d!1663846 (= (validRegex!6348 (regOne!29498 expr!117)) e!3210148)))

(declare-fun b!5149113 () Bool)

(assert (=> b!5149113 (= e!3210143 call!360046)))

(assert (= (and d!1663846 (not res!2191315)) b!5149109))

(assert (= (and b!5149109 c!886307) b!5149115))

(assert (= (and b!5149109 (not c!886307)) b!5149108))

(assert (= (and b!5149115 res!2191314) b!5149110))

(assert (= (and b!5149108 c!886308) b!5149111))

(assert (= (and b!5149108 (not c!886308)) b!5149116))

(assert (= (and b!5149111 res!2191313) b!5149114))

(assert (= (and b!5149116 (not res!2191311)) b!5149112))

(assert (= (and b!5149112 res!2191312) b!5149113))

(assert (= (or b!5149114 b!5149113) bm!360041))

(assert (= (or b!5149111 b!5149112) bm!360042))

(assert (= (or b!5149110 bm!360042) bm!360043))

(declare-fun m!6207576 () Bool)

(assert (=> bm!360041 m!6207576))

(declare-fun m!6207578 () Bool)

(assert (=> bm!360043 m!6207578))

(declare-fun m!6207580 () Bool)

(assert (=> b!5149115 m!6207580))

(assert (=> b!5149080 d!1663846))

(declare-fun d!1663850 () Bool)

(declare-fun lostCauseFct!370 (Regex!14493) Bool)

(assert (=> d!1663850 (= (lostCause!1538 expr!117) (lostCauseFct!370 expr!117))))

(declare-fun bs!1201395 () Bool)

(assert (= bs!1201395 d!1663850))

(declare-fun m!6207582 () Bool)

(assert (=> bs!1201395 m!6207582))

(assert (=> b!5149084 d!1663850))

(declare-fun b!5149117 () Bool)

(declare-fun e!3210151 () Bool)

(declare-fun e!3210153 () Bool)

(assert (=> b!5149117 (= e!3210151 e!3210153)))

(declare-fun c!886310 () Bool)

(assert (=> b!5149117 (= c!886310 ((_ is Union!14493) expr!117))))

(declare-fun b!5149118 () Bool)

(declare-fun e!3210155 () Bool)

(assert (=> b!5149118 (= e!3210155 e!3210151)))

(declare-fun c!886309 () Bool)

(assert (=> b!5149118 (= c!886309 ((_ is Star!14493) expr!117))))

(declare-fun b!5149119 () Bool)

(declare-fun e!3210152 () Bool)

(declare-fun call!360050 () Bool)

(assert (=> b!5149119 (= e!3210152 call!360050)))

(declare-fun b!5149120 () Bool)

(declare-fun res!2191318 () Bool)

(declare-fun e!3210156 () Bool)

(assert (=> b!5149120 (=> (not res!2191318) (not e!3210156))))

(declare-fun call!360051 () Bool)

(assert (=> b!5149120 (= res!2191318 call!360051)))

(assert (=> b!5149120 (= e!3210153 e!3210156)))

(declare-fun bm!360044 () Bool)

(declare-fun call!360049 () Bool)

(assert (=> bm!360044 (= call!360049 (validRegex!6348 (ite c!886310 (regTwo!29499 expr!117) (regTwo!29498 expr!117))))))

(declare-fun b!5149121 () Bool)

(declare-fun e!3210154 () Bool)

(declare-fun e!3210150 () Bool)

(assert (=> b!5149121 (= e!3210154 e!3210150)))

(declare-fun res!2191317 () Bool)

(assert (=> b!5149121 (=> (not res!2191317) (not e!3210150))))

(assert (=> b!5149121 (= res!2191317 call!360051)))

(declare-fun bm!360045 () Bool)

(assert (=> bm!360045 (= call!360051 call!360050)))

(declare-fun b!5149123 () Bool)

(assert (=> b!5149123 (= e!3210156 call!360049)))

(declare-fun bm!360046 () Bool)

(assert (=> bm!360046 (= call!360050 (validRegex!6348 (ite c!886309 (reg!14822 expr!117) (ite c!886310 (regOne!29499 expr!117) (regOne!29498 expr!117)))))))

(declare-fun b!5149124 () Bool)

(assert (=> b!5149124 (= e!3210151 e!3210152)))

(declare-fun res!2191319 () Bool)

(assert (=> b!5149124 (= res!2191319 (not (nullable!4849 (reg!14822 expr!117))))))

(assert (=> b!5149124 (=> (not res!2191319) (not e!3210152))))

(declare-fun b!5149125 () Bool)

(declare-fun res!2191316 () Bool)

(assert (=> b!5149125 (=> res!2191316 e!3210154)))

(assert (=> b!5149125 (= res!2191316 (not ((_ is Concat!23338) expr!117)))))

(assert (=> b!5149125 (= e!3210153 e!3210154)))

(declare-fun d!1663852 () Bool)

(declare-fun res!2191320 () Bool)

(assert (=> d!1663852 (=> res!2191320 e!3210155)))

(assert (=> d!1663852 (= res!2191320 ((_ is ElementMatch!14493) expr!117))))

(assert (=> d!1663852 (= (validRegex!6348 expr!117) e!3210155)))

(declare-fun b!5149122 () Bool)

(assert (=> b!5149122 (= e!3210150 call!360049)))

(assert (= (and d!1663852 (not res!2191320)) b!5149118))

(assert (= (and b!5149118 c!886309) b!5149124))

(assert (= (and b!5149118 (not c!886309)) b!5149117))

(assert (= (and b!5149124 res!2191319) b!5149119))

(assert (= (and b!5149117 c!886310) b!5149120))

(assert (= (and b!5149117 (not c!886310)) b!5149125))

(assert (= (and b!5149120 res!2191318) b!5149123))

(assert (= (and b!5149125 (not res!2191316)) b!5149121))

(assert (= (and b!5149121 res!2191317) b!5149122))

(assert (= (or b!5149123 b!5149122) bm!360044))

(assert (= (or b!5149120 b!5149121) bm!360045))

(assert (= (or b!5149119 bm!360045) bm!360046))

(declare-fun m!6207584 () Bool)

(assert (=> bm!360044 m!6207584))

(declare-fun m!6207586 () Bool)

(assert (=> bm!360046 m!6207586))

(declare-fun m!6207588 () Bool)

(assert (=> b!5149124 m!6207588))

(assert (=> start!544882 d!1663852))

(declare-fun d!1663854 () Bool)

(declare-fun lambda!256939 () Int)

(declare-fun forall!13965 (List!59901 Int) Bool)

(assert (=> d!1663854 (= (inv!79413 ctx!100) (forall!13965 (exprs!4377 ctx!100) lambda!256939))))

(declare-fun bs!1201406 () Bool)

(assert (= bs!1201406 d!1663854))

(declare-fun m!6207642 () Bool)

(assert (=> bs!1201406 m!6207642))

(assert (=> start!544882 d!1663854))

(declare-fun b!5149274 () Bool)

(declare-fun e!3210243 () Bool)

(declare-fun e!3210245 () Bool)

(assert (=> b!5149274 (= e!3210243 e!3210245)))

(declare-fun c!886350 () Bool)

(assert (=> b!5149274 (= c!886350 ((_ is Union!14493) (regTwo!29498 expr!117)))))

(declare-fun b!5149275 () Bool)

(declare-fun e!3210247 () Bool)

(assert (=> b!5149275 (= e!3210247 e!3210243)))

(declare-fun c!886349 () Bool)

(assert (=> b!5149275 (= c!886349 ((_ is Star!14493) (regTwo!29498 expr!117)))))

(declare-fun b!5149276 () Bool)

(declare-fun e!3210244 () Bool)

(declare-fun call!360096 () Bool)

(assert (=> b!5149276 (= e!3210244 call!360096)))

(declare-fun b!5149277 () Bool)

(declare-fun res!2191360 () Bool)

(declare-fun e!3210248 () Bool)

(assert (=> b!5149277 (=> (not res!2191360) (not e!3210248))))

(declare-fun call!360097 () Bool)

(assert (=> b!5149277 (= res!2191360 call!360097)))

(assert (=> b!5149277 (= e!3210245 e!3210248)))

(declare-fun bm!360090 () Bool)

(declare-fun call!360095 () Bool)

(assert (=> bm!360090 (= call!360095 (validRegex!6348 (ite c!886350 (regTwo!29499 (regTwo!29498 expr!117)) (regTwo!29498 (regTwo!29498 expr!117)))))))

(declare-fun b!5149278 () Bool)

(declare-fun e!3210246 () Bool)

(declare-fun e!3210242 () Bool)

(assert (=> b!5149278 (= e!3210246 e!3210242)))

(declare-fun res!2191359 () Bool)

(assert (=> b!5149278 (=> (not res!2191359) (not e!3210242))))

(assert (=> b!5149278 (= res!2191359 call!360097)))

(declare-fun bm!360091 () Bool)

(assert (=> bm!360091 (= call!360097 call!360096)))

(declare-fun b!5149280 () Bool)

(assert (=> b!5149280 (= e!3210248 call!360095)))

(declare-fun bm!360092 () Bool)

(assert (=> bm!360092 (= call!360096 (validRegex!6348 (ite c!886349 (reg!14822 (regTwo!29498 expr!117)) (ite c!886350 (regOne!29499 (regTwo!29498 expr!117)) (regOne!29498 (regTwo!29498 expr!117))))))))

(declare-fun b!5149281 () Bool)

(assert (=> b!5149281 (= e!3210243 e!3210244)))

(declare-fun res!2191361 () Bool)

(assert (=> b!5149281 (= res!2191361 (not (nullable!4849 (reg!14822 (regTwo!29498 expr!117)))))))

(assert (=> b!5149281 (=> (not res!2191361) (not e!3210244))))

(declare-fun b!5149282 () Bool)

(declare-fun res!2191358 () Bool)

(assert (=> b!5149282 (=> res!2191358 e!3210246)))

(assert (=> b!5149282 (= res!2191358 (not ((_ is Concat!23338) (regTwo!29498 expr!117))))))

(assert (=> b!5149282 (= e!3210245 e!3210246)))

(declare-fun d!1663880 () Bool)

(declare-fun res!2191362 () Bool)

(assert (=> d!1663880 (=> res!2191362 e!3210247)))

(assert (=> d!1663880 (= res!2191362 ((_ is ElementMatch!14493) (regTwo!29498 expr!117)))))

(assert (=> d!1663880 (= (validRegex!6348 (regTwo!29498 expr!117)) e!3210247)))

(declare-fun b!5149279 () Bool)

(assert (=> b!5149279 (= e!3210242 call!360095)))

(assert (= (and d!1663880 (not res!2191362)) b!5149275))

(assert (= (and b!5149275 c!886349) b!5149281))

(assert (= (and b!5149275 (not c!886349)) b!5149274))

(assert (= (and b!5149281 res!2191361) b!5149276))

(assert (= (and b!5149274 c!886350) b!5149277))

(assert (= (and b!5149274 (not c!886350)) b!5149282))

(assert (= (and b!5149277 res!2191360) b!5149280))

(assert (= (and b!5149282 (not res!2191358)) b!5149278))

(assert (= (and b!5149278 res!2191359) b!5149279))

(assert (= (or b!5149280 b!5149279) bm!360090))

(assert (= (or b!5149277 b!5149278) bm!360091))

(assert (= (or b!5149276 bm!360091) bm!360092))

(declare-fun m!6207644 () Bool)

(assert (=> bm!360090 m!6207644))

(declare-fun m!6207646 () Bool)

(assert (=> bm!360092 m!6207646))

(declare-fun m!6207648 () Bool)

(assert (=> b!5149281 m!6207648))

(assert (=> b!5149078 d!1663880))

(declare-fun d!1663882 () Bool)

(assert (=> d!1663882 (= (lostCause!1538 (regOne!29498 expr!117)) (lostCauseFct!370 (regOne!29498 expr!117)))))

(declare-fun bs!1201407 () Bool)

(assert (= bs!1201407 d!1663882))

(declare-fun m!6207650 () Bool)

(assert (=> bs!1201407 m!6207650))

(assert (=> b!5149078 d!1663882))

(declare-fun d!1663884 () Bool)

(assert (=> d!1663884 (not (lostCause!1538 (regOne!29498 expr!117)))))

(declare-fun lt!2121167 () Unit!151189)

(declare-fun choose!38082 (Regex!14493) Unit!151189)

(assert (=> d!1663884 (= lt!2121167 (choose!38082 (regOne!29498 expr!117)))))

(assert (=> d!1663884 (validRegex!6348 (regOne!29498 expr!117))))

(assert (=> d!1663884 (= (lemmaNullableThenNotLostCause!82 (regOne!29498 expr!117)) lt!2121167)))

(declare-fun bs!1201408 () Bool)

(assert (= bs!1201408 d!1663884))

(assert (=> bs!1201408 m!6207566))

(declare-fun m!6207652 () Bool)

(assert (=> bs!1201408 m!6207652))

(assert (=> bs!1201408 m!6207554))

(assert (=> b!5149078 d!1663884))

(declare-fun bs!1201409 () Bool)

(declare-fun d!1663886 () Bool)

(assert (= bs!1201409 (and d!1663886 d!1663854)))

(declare-fun lambda!256942 () Int)

(assert (=> bs!1201409 (not (= lambda!256942 lambda!256939))))

(declare-fun exists!1822 (List!59901 Int) Bool)

(assert (=> d!1663886 (= (lostCause!1539 ctx!100) (exists!1822 (exprs!4377 ctx!100) lambda!256942))))

(declare-fun bs!1201410 () Bool)

(assert (= bs!1201410 d!1663886))

(declare-fun m!6207654 () Bool)

(assert (=> bs!1201410 m!6207654))

(assert (=> b!5149083 d!1663886))

(declare-fun bs!1201411 () Bool)

(declare-fun d!1663888 () Bool)

(assert (= bs!1201411 (and d!1663888 d!1663854)))

(declare-fun lambda!256943 () Int)

(assert (=> bs!1201411 (not (= lambda!256943 lambda!256939))))

(declare-fun bs!1201412 () Bool)

(assert (= bs!1201412 (and d!1663888 d!1663886)))

(assert (=> bs!1201412 (= lambda!256943 lambda!256942)))

(assert (=> d!1663888 (= (lostCause!1539 (Context!7755 ($colon$colon!1215 (exprs!4377 ctx!100) (regTwo!29498 expr!117)))) (exists!1822 (exprs!4377 (Context!7755 ($colon$colon!1215 (exprs!4377 ctx!100) (regTwo!29498 expr!117)))) lambda!256943))))

(declare-fun bs!1201413 () Bool)

(assert (= bs!1201413 d!1663888))

(declare-fun m!6207656 () Bool)

(assert (=> bs!1201413 m!6207656))

(assert (=> b!5149087 d!1663888))

(declare-fun d!1663890 () Bool)

(assert (=> d!1663890 (= ($colon$colon!1215 (exprs!4377 ctx!100) (regTwo!29498 expr!117)) (Cons!59777 (regTwo!29498 expr!117) (exprs!4377 ctx!100)))))

(assert (=> b!5149087 d!1663890))

(declare-fun b!5149317 () Bool)

(declare-fun e!3210274 () Bool)

(declare-fun e!3210273 () Bool)

(assert (=> b!5149317 (= e!3210274 e!3210273)))

(declare-fun c!886368 () Bool)

(assert (=> b!5149317 (= c!886368 ((_ is Union!14493) (regOne!29498 expr!117)))))

(declare-fun bm!360107 () Bool)

(declare-fun c!886370 () Bool)

(declare-fun call!360115 () Int)

(assert (=> bm!360107 (= call!360115 (regexDepth!139 (ite c!886368 (regTwo!29499 (regOne!29498 expr!117)) (ite c!886370 (regOne!29498 (regOne!29498 expr!117)) (reg!14822 (regOne!29498 expr!117))))))))

(declare-fun bm!360108 () Bool)

(declare-fun call!360116 () Int)

(assert (=> bm!360108 (= call!360116 call!360115)))

(declare-fun b!5149318 () Bool)

(declare-fun res!2191370 () Bool)

(declare-fun e!3210278 () Bool)

(assert (=> b!5149318 (=> (not res!2191370) (not e!3210278))))

(declare-fun lt!2121170 () Int)

(assert (=> b!5149318 (= res!2191370 (> lt!2121170 call!360116))))

(declare-fun e!3210277 () Bool)

(assert (=> b!5149318 (= e!3210277 e!3210278)))

(declare-fun b!5149319 () Bool)

(declare-fun e!3210269 () Bool)

(assert (=> b!5149319 (= e!3210273 e!3210269)))

(declare-fun res!2191369 () Bool)

(declare-fun call!360113 () Int)

(assert (=> b!5149319 (= res!2191369 (> lt!2121170 call!360113))))

(assert (=> b!5149319 (=> (not res!2191369) (not e!3210269))))

(declare-fun bm!360109 () Bool)

(declare-fun call!360114 () Int)

(declare-fun c!886365 () Bool)

(assert (=> bm!360109 (= call!360114 (regexDepth!139 (ite c!886365 (regTwo!29499 (regOne!29498 expr!117)) (regOne!29498 (regOne!29498 expr!117)))))))

(declare-fun bm!360110 () Bool)

(declare-fun c!886366 () Bool)

(declare-fun call!360112 () Int)

(assert (=> bm!360110 (= call!360112 (regexDepth!139 (ite c!886366 (reg!14822 (regOne!29498 expr!117)) (ite c!886365 (regOne!29499 (regOne!29498 expr!117)) (regTwo!29498 (regOne!29498 expr!117))))))))

(declare-fun b!5149320 () Bool)

(declare-fun e!3210271 () Int)

(assert (=> b!5149320 (= e!3210271 1)))

(declare-fun b!5149321 () Bool)

(declare-fun call!360118 () Int)

(assert (=> b!5149321 (= e!3210271 (+ 1 call!360118))))

(declare-fun b!5149322 () Bool)

(declare-fun e!3210275 () Int)

(assert (=> b!5149322 (= e!3210275 (+ 1 call!360112))))

(declare-fun bm!360111 () Bool)

(declare-fun call!360117 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!360111 (= call!360118 (maxBigInt!0 (ite c!886365 call!360117 call!360114) (ite c!886365 call!360114 call!360117)))))

(declare-fun d!1663892 () Bool)

(assert (=> d!1663892 e!3210274))

(declare-fun res!2191371 () Bool)

(assert (=> d!1663892 (=> (not res!2191371) (not e!3210274))))

(assert (=> d!1663892 (= res!2191371 (> lt!2121170 0))))

(declare-fun e!3210276 () Int)

(assert (=> d!1663892 (= lt!2121170 e!3210276)))

(declare-fun c!886367 () Bool)

(assert (=> d!1663892 (= c!886367 ((_ is ElementMatch!14493) (regOne!29498 expr!117)))))

(assert (=> d!1663892 (= (regexDepth!139 (regOne!29498 expr!117)) lt!2121170)))

(declare-fun bm!360112 () Bool)

(assert (=> bm!360112 (= call!360117 call!360112)))

(declare-fun b!5149323 () Bool)

(assert (=> b!5149323 (= e!3210269 (> lt!2121170 call!360115))))

(declare-fun b!5149324 () Bool)

(assert (=> b!5149324 (= e!3210273 e!3210277)))

(assert (=> b!5149324 (= c!886370 ((_ is Concat!23338) (regOne!29498 expr!117)))))

(declare-fun b!5149325 () Bool)

(declare-fun c!886369 () Bool)

(assert (=> b!5149325 (= c!886369 ((_ is Star!14493) (regOne!29498 expr!117)))))

(declare-fun e!3210272 () Bool)

(assert (=> b!5149325 (= e!3210277 e!3210272)))

(declare-fun b!5149326 () Bool)

(assert (=> b!5149326 (= e!3210272 (= lt!2121170 1))))

(declare-fun b!5149327 () Bool)

(assert (=> b!5149327 (= e!3210276 1)))

(declare-fun b!5149328 () Bool)

(declare-fun e!3210270 () Int)

(assert (=> b!5149328 (= e!3210270 e!3210271)))

(declare-fun c!886371 () Bool)

(assert (=> b!5149328 (= c!886371 ((_ is Concat!23338) (regOne!29498 expr!117)))))

(declare-fun b!5149329 () Bool)

(assert (=> b!5149329 (= c!886365 ((_ is Union!14493) (regOne!29498 expr!117)))))

(assert (=> b!5149329 (= e!3210275 e!3210270)))

(declare-fun b!5149330 () Bool)

(assert (=> b!5149330 (= e!3210270 (+ 1 call!360118))))

(declare-fun b!5149331 () Bool)

(assert (=> b!5149331 (= e!3210278 (> lt!2121170 call!360113))))

(declare-fun b!5149332 () Bool)

(assert (=> b!5149332 (= e!3210272 (> lt!2121170 call!360116))))

(declare-fun b!5149333 () Bool)

(assert (=> b!5149333 (= e!3210276 e!3210275)))

(assert (=> b!5149333 (= c!886366 ((_ is Star!14493) (regOne!29498 expr!117)))))

(declare-fun bm!360113 () Bool)

(assert (=> bm!360113 (= call!360113 (regexDepth!139 (ite c!886368 (regOne!29499 (regOne!29498 expr!117)) (regTwo!29498 (regOne!29498 expr!117)))))))

(assert (= (and d!1663892 c!886367) b!5149327))

(assert (= (and d!1663892 (not c!886367)) b!5149333))

(assert (= (and b!5149333 c!886366) b!5149322))

(assert (= (and b!5149333 (not c!886366)) b!5149329))

(assert (= (and b!5149329 c!886365) b!5149330))

(assert (= (and b!5149329 (not c!886365)) b!5149328))

(assert (= (and b!5149328 c!886371) b!5149321))

(assert (= (and b!5149328 (not c!886371)) b!5149320))

(assert (= (or b!5149330 b!5149321) bm!360109))

(assert (= (or b!5149330 b!5149321) bm!360112))

(assert (= (or b!5149330 b!5149321) bm!360111))

(assert (= (or b!5149322 bm!360112) bm!360110))

(assert (= (and d!1663892 res!2191371) b!5149317))

(assert (= (and b!5149317 c!886368) b!5149319))

(assert (= (and b!5149317 (not c!886368)) b!5149324))

(assert (= (and b!5149319 res!2191369) b!5149323))

(assert (= (and b!5149324 c!886370) b!5149318))

(assert (= (and b!5149324 (not c!886370)) b!5149325))

(assert (= (and b!5149318 res!2191370) b!5149331))

(assert (= (and b!5149325 c!886369) b!5149332))

(assert (= (and b!5149325 (not c!886369)) b!5149326))

(assert (= (or b!5149318 b!5149332) bm!360108))

(assert (= (or b!5149323 bm!360108) bm!360107))

(assert (= (or b!5149319 b!5149331) bm!360113))

(declare-fun m!6207658 () Bool)

(assert (=> bm!360113 m!6207658))

(declare-fun m!6207660 () Bool)

(assert (=> bm!360111 m!6207660))

(declare-fun m!6207662 () Bool)

(assert (=> bm!360110 m!6207662))

(declare-fun m!6207664 () Bool)

(assert (=> bm!360109 m!6207664))

(declare-fun m!6207666 () Bool)

(assert (=> bm!360107 m!6207666))

(assert (=> b!5149081 d!1663892))

(declare-fun b!5149334 () Bool)

(declare-fun e!3210284 () Bool)

(declare-fun e!3210283 () Bool)

(assert (=> b!5149334 (= e!3210284 e!3210283)))

(declare-fun c!886375 () Bool)

(assert (=> b!5149334 (= c!886375 ((_ is Union!14493) expr!117))))

(declare-fun call!360122 () Int)

(declare-fun c!886377 () Bool)

(declare-fun bm!360114 () Bool)

(assert (=> bm!360114 (= call!360122 (regexDepth!139 (ite c!886375 (regTwo!29499 expr!117) (ite c!886377 (regOne!29498 expr!117) (reg!14822 expr!117)))))))

(declare-fun bm!360115 () Bool)

(declare-fun call!360123 () Int)

(assert (=> bm!360115 (= call!360123 call!360122)))

(declare-fun b!5149335 () Bool)

(declare-fun res!2191373 () Bool)

(declare-fun e!3210288 () Bool)

(assert (=> b!5149335 (=> (not res!2191373) (not e!3210288))))

(declare-fun lt!2121171 () Int)

(assert (=> b!5149335 (= res!2191373 (> lt!2121171 call!360123))))

(declare-fun e!3210287 () Bool)

(assert (=> b!5149335 (= e!3210287 e!3210288)))

(declare-fun b!5149336 () Bool)

(declare-fun e!3210279 () Bool)

(assert (=> b!5149336 (= e!3210283 e!3210279)))

(declare-fun res!2191372 () Bool)

(declare-fun call!360120 () Int)

(assert (=> b!5149336 (= res!2191372 (> lt!2121171 call!360120))))

(assert (=> b!5149336 (=> (not res!2191372) (not e!3210279))))

(declare-fun bm!360116 () Bool)

(declare-fun call!360121 () Int)

(declare-fun c!886372 () Bool)

(assert (=> bm!360116 (= call!360121 (regexDepth!139 (ite c!886372 (regTwo!29499 expr!117) (regOne!29498 expr!117))))))

(declare-fun c!886373 () Bool)

(declare-fun call!360119 () Int)

(declare-fun bm!360117 () Bool)

(assert (=> bm!360117 (= call!360119 (regexDepth!139 (ite c!886373 (reg!14822 expr!117) (ite c!886372 (regOne!29499 expr!117) (regTwo!29498 expr!117)))))))

(declare-fun b!5149337 () Bool)

(declare-fun e!3210281 () Int)

(assert (=> b!5149337 (= e!3210281 1)))

(declare-fun b!5149338 () Bool)

(declare-fun call!360125 () Int)

(assert (=> b!5149338 (= e!3210281 (+ 1 call!360125))))

(declare-fun b!5149339 () Bool)

(declare-fun e!3210285 () Int)

(assert (=> b!5149339 (= e!3210285 (+ 1 call!360119))))

(declare-fun call!360124 () Int)

(declare-fun bm!360118 () Bool)

(assert (=> bm!360118 (= call!360125 (maxBigInt!0 (ite c!886372 call!360124 call!360121) (ite c!886372 call!360121 call!360124)))))

(declare-fun d!1663894 () Bool)

(assert (=> d!1663894 e!3210284))

(declare-fun res!2191374 () Bool)

(assert (=> d!1663894 (=> (not res!2191374) (not e!3210284))))

(assert (=> d!1663894 (= res!2191374 (> lt!2121171 0))))

(declare-fun e!3210286 () Int)

(assert (=> d!1663894 (= lt!2121171 e!3210286)))

(declare-fun c!886374 () Bool)

(assert (=> d!1663894 (= c!886374 ((_ is ElementMatch!14493) expr!117))))

(assert (=> d!1663894 (= (regexDepth!139 expr!117) lt!2121171)))

(declare-fun bm!360119 () Bool)

(assert (=> bm!360119 (= call!360124 call!360119)))

(declare-fun b!5149340 () Bool)

(assert (=> b!5149340 (= e!3210279 (> lt!2121171 call!360122))))

(declare-fun b!5149341 () Bool)

(assert (=> b!5149341 (= e!3210283 e!3210287)))

(assert (=> b!5149341 (= c!886377 ((_ is Concat!23338) expr!117))))

(declare-fun b!5149342 () Bool)

(declare-fun c!886376 () Bool)

(assert (=> b!5149342 (= c!886376 ((_ is Star!14493) expr!117))))

(declare-fun e!3210282 () Bool)

(assert (=> b!5149342 (= e!3210287 e!3210282)))

(declare-fun b!5149343 () Bool)

(assert (=> b!5149343 (= e!3210282 (= lt!2121171 1))))

(declare-fun b!5149344 () Bool)

(assert (=> b!5149344 (= e!3210286 1)))

(declare-fun b!5149345 () Bool)

(declare-fun e!3210280 () Int)

(assert (=> b!5149345 (= e!3210280 e!3210281)))

(declare-fun c!886378 () Bool)

(assert (=> b!5149345 (= c!886378 ((_ is Concat!23338) expr!117))))

(declare-fun b!5149346 () Bool)

(assert (=> b!5149346 (= c!886372 ((_ is Union!14493) expr!117))))

(assert (=> b!5149346 (= e!3210285 e!3210280)))

(declare-fun b!5149347 () Bool)

(assert (=> b!5149347 (= e!3210280 (+ 1 call!360125))))

(declare-fun b!5149348 () Bool)

(assert (=> b!5149348 (= e!3210288 (> lt!2121171 call!360120))))

(declare-fun b!5149349 () Bool)

(assert (=> b!5149349 (= e!3210282 (> lt!2121171 call!360123))))

(declare-fun b!5149350 () Bool)

(assert (=> b!5149350 (= e!3210286 e!3210285)))

(assert (=> b!5149350 (= c!886373 ((_ is Star!14493) expr!117))))

(declare-fun bm!360120 () Bool)

(assert (=> bm!360120 (= call!360120 (regexDepth!139 (ite c!886375 (regOne!29499 expr!117) (regTwo!29498 expr!117))))))

(assert (= (and d!1663894 c!886374) b!5149344))

(assert (= (and d!1663894 (not c!886374)) b!5149350))

(assert (= (and b!5149350 c!886373) b!5149339))

(assert (= (and b!5149350 (not c!886373)) b!5149346))

(assert (= (and b!5149346 c!886372) b!5149347))

(assert (= (and b!5149346 (not c!886372)) b!5149345))

(assert (= (and b!5149345 c!886378) b!5149338))

(assert (= (and b!5149345 (not c!886378)) b!5149337))

(assert (= (or b!5149347 b!5149338) bm!360116))

(assert (= (or b!5149347 b!5149338) bm!360119))

(assert (= (or b!5149347 b!5149338) bm!360118))

(assert (= (or b!5149339 bm!360119) bm!360117))

(assert (= (and d!1663894 res!2191374) b!5149334))

(assert (= (and b!5149334 c!886375) b!5149336))

(assert (= (and b!5149334 (not c!886375)) b!5149341))

(assert (= (and b!5149336 res!2191372) b!5149340))

(assert (= (and b!5149341 c!886377) b!5149335))

(assert (= (and b!5149341 (not c!886377)) b!5149342))

(assert (= (and b!5149335 res!2191373) b!5149348))

(assert (= (and b!5149342 c!886376) b!5149349))

(assert (= (and b!5149342 (not c!886376)) b!5149343))

(assert (= (or b!5149335 b!5149349) bm!360115))

(assert (= (or b!5149340 bm!360115) bm!360114))

(assert (= (or b!5149336 b!5149348) bm!360120))

(declare-fun m!6207668 () Bool)

(assert (=> bm!360120 m!6207668))

(declare-fun m!6207670 () Bool)

(assert (=> bm!360118 m!6207670))

(declare-fun m!6207672 () Bool)

(assert (=> bm!360117 m!6207672))

(declare-fun m!6207674 () Bool)

(assert (=> bm!360116 m!6207674))

(declare-fun m!6207676 () Bool)

(assert (=> bm!360114 m!6207676))

(assert (=> b!5149081 d!1663894))

(declare-fun d!1663896 () Bool)

(declare-fun nullableFct!1330 (Regex!14493) Bool)

(assert (=> d!1663896 (= (nullable!4849 (regOne!29498 expr!117)) (nullableFct!1330 (regOne!29498 expr!117)))))

(declare-fun bs!1201414 () Bool)

(assert (= bs!1201414 d!1663896))

(declare-fun m!6207678 () Bool)

(assert (=> bs!1201414 m!6207678))

(assert (=> b!5149086 d!1663896))

(declare-fun b!5149363 () Bool)

(declare-fun e!3210291 () Bool)

(declare-fun tp!1439694 () Bool)

(assert (=> b!5149363 (= e!3210291 tp!1439694)))

(declare-fun b!5149364 () Bool)

(declare-fun tp!1439695 () Bool)

(declare-fun tp!1439696 () Bool)

(assert (=> b!5149364 (= e!3210291 (and tp!1439695 tp!1439696))))

(assert (=> b!5149079 (= tp!1439636 e!3210291)))

(declare-fun b!5149361 () Bool)

(assert (=> b!5149361 (= e!3210291 tp_is_empty!38135)))

(declare-fun b!5149362 () Bool)

(declare-fun tp!1439697 () Bool)

(declare-fun tp!1439693 () Bool)

(assert (=> b!5149362 (= e!3210291 (and tp!1439697 tp!1439693))))

(assert (= (and b!5149079 ((_ is ElementMatch!14493) (regOne!29499 expr!117))) b!5149361))

(assert (= (and b!5149079 ((_ is Concat!23338) (regOne!29499 expr!117))) b!5149362))

(assert (= (and b!5149079 ((_ is Star!14493) (regOne!29499 expr!117))) b!5149363))

(assert (= (and b!5149079 ((_ is Union!14493) (regOne!29499 expr!117))) b!5149364))

(declare-fun b!5149367 () Bool)

(declare-fun e!3210292 () Bool)

(declare-fun tp!1439699 () Bool)

(assert (=> b!5149367 (= e!3210292 tp!1439699)))

(declare-fun b!5149368 () Bool)

(declare-fun tp!1439700 () Bool)

(declare-fun tp!1439701 () Bool)

(assert (=> b!5149368 (= e!3210292 (and tp!1439700 tp!1439701))))

(assert (=> b!5149079 (= tp!1439638 e!3210292)))

(declare-fun b!5149365 () Bool)

(assert (=> b!5149365 (= e!3210292 tp_is_empty!38135)))

(declare-fun b!5149366 () Bool)

(declare-fun tp!1439702 () Bool)

(declare-fun tp!1439698 () Bool)

(assert (=> b!5149366 (= e!3210292 (and tp!1439702 tp!1439698))))

(assert (= (and b!5149079 ((_ is ElementMatch!14493) (regTwo!29499 expr!117))) b!5149365))

(assert (= (and b!5149079 ((_ is Concat!23338) (regTwo!29499 expr!117))) b!5149366))

(assert (= (and b!5149079 ((_ is Star!14493) (regTwo!29499 expr!117))) b!5149367))

(assert (= (and b!5149079 ((_ is Union!14493) (regTwo!29499 expr!117))) b!5149368))

(declare-fun b!5149373 () Bool)

(declare-fun e!3210295 () Bool)

(declare-fun tp!1439707 () Bool)

(declare-fun tp!1439708 () Bool)

(assert (=> b!5149373 (= e!3210295 (and tp!1439707 tp!1439708))))

(assert (=> b!5149089 (= tp!1439637 e!3210295)))

(assert (= (and b!5149089 ((_ is Cons!59777) (exprs!4377 ctx!100))) b!5149373))

(declare-fun b!5149376 () Bool)

(declare-fun e!3210296 () Bool)

(declare-fun tp!1439710 () Bool)

(assert (=> b!5149376 (= e!3210296 tp!1439710)))

(declare-fun b!5149377 () Bool)

(declare-fun tp!1439711 () Bool)

(declare-fun tp!1439712 () Bool)

(assert (=> b!5149377 (= e!3210296 (and tp!1439711 tp!1439712))))

(assert (=> b!5149077 (= tp!1439639 e!3210296)))

(declare-fun b!5149374 () Bool)

(assert (=> b!5149374 (= e!3210296 tp_is_empty!38135)))

(declare-fun b!5149375 () Bool)

(declare-fun tp!1439713 () Bool)

(declare-fun tp!1439709 () Bool)

(assert (=> b!5149375 (= e!3210296 (and tp!1439713 tp!1439709))))

(assert (= (and b!5149077 ((_ is ElementMatch!14493) (reg!14822 expr!117))) b!5149374))

(assert (= (and b!5149077 ((_ is Concat!23338) (reg!14822 expr!117))) b!5149375))

(assert (= (and b!5149077 ((_ is Star!14493) (reg!14822 expr!117))) b!5149376))

(assert (= (and b!5149077 ((_ is Union!14493) (reg!14822 expr!117))) b!5149377))

(declare-fun b!5149380 () Bool)

(declare-fun e!3210297 () Bool)

(declare-fun tp!1439715 () Bool)

(assert (=> b!5149380 (= e!3210297 tp!1439715)))

(declare-fun b!5149381 () Bool)

(declare-fun tp!1439716 () Bool)

(declare-fun tp!1439717 () Bool)

(assert (=> b!5149381 (= e!3210297 (and tp!1439716 tp!1439717))))

(assert (=> b!5149082 (= tp!1439640 e!3210297)))

(declare-fun b!5149378 () Bool)

(assert (=> b!5149378 (= e!3210297 tp_is_empty!38135)))

(declare-fun b!5149379 () Bool)

(declare-fun tp!1439718 () Bool)

(declare-fun tp!1439714 () Bool)

(assert (=> b!5149379 (= e!3210297 (and tp!1439718 tp!1439714))))

(assert (= (and b!5149082 ((_ is ElementMatch!14493) (regOne!29498 expr!117))) b!5149378))

(assert (= (and b!5149082 ((_ is Concat!23338) (regOne!29498 expr!117))) b!5149379))

(assert (= (and b!5149082 ((_ is Star!14493) (regOne!29498 expr!117))) b!5149380))

(assert (= (and b!5149082 ((_ is Union!14493) (regOne!29498 expr!117))) b!5149381))

(declare-fun b!5149384 () Bool)

(declare-fun e!3210298 () Bool)

(declare-fun tp!1439720 () Bool)

(assert (=> b!5149384 (= e!3210298 tp!1439720)))

(declare-fun b!5149385 () Bool)

(declare-fun tp!1439721 () Bool)

(declare-fun tp!1439722 () Bool)

(assert (=> b!5149385 (= e!3210298 (and tp!1439721 tp!1439722))))

(assert (=> b!5149082 (= tp!1439641 e!3210298)))

(declare-fun b!5149382 () Bool)

(assert (=> b!5149382 (= e!3210298 tp_is_empty!38135)))

(declare-fun b!5149383 () Bool)

(declare-fun tp!1439723 () Bool)

(declare-fun tp!1439719 () Bool)

(assert (=> b!5149383 (= e!3210298 (and tp!1439723 tp!1439719))))

(assert (= (and b!5149082 ((_ is ElementMatch!14493) (regTwo!29498 expr!117))) b!5149382))

(assert (= (and b!5149082 ((_ is Concat!23338) (regTwo!29498 expr!117))) b!5149383))

(assert (= (and b!5149082 ((_ is Star!14493) (regTwo!29498 expr!117))) b!5149384))

(assert (= (and b!5149082 ((_ is Union!14493) (regTwo!29498 expr!117))) b!5149385))

(check-sat (not d!1663888) (not bm!360046) (not bm!360043) (not bm!360116) (not d!1663896) (not bm!360117) (not b!5149366) (not b!5149364) (not d!1663884) (not d!1663854) (not bm!360120) (not d!1663882) tp_is_empty!38135 (not b!5149379) (not bm!360092) (not bm!360041) (not bm!360118) (not bm!360114) (not b!5149363) (not bm!360109) (not b!5149367) (not bm!360111) (not b!5149373) (not bm!360090) (not b!5149385) (not b!5149383) (not b!5149375) (not b!5149115) (not b!5149281) (not b!5149376) (not b!5149384) (not bm!360110) (not b!5149377) (not bm!360107) (not b!5149362) (not b!5149124) (not b!5149381) (not bm!360113) (not bm!360044) (not d!1663850) (not b!5149368) (not d!1663886) (not b!5149380))
(check-sat)

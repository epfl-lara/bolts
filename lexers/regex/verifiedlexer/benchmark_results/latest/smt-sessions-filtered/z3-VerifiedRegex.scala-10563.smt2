; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!543880 () Bool)

(assert start!543880)

(declare-fun b!5137080 () Bool)

(declare-fun res!2188046 () Bool)

(declare-fun e!3204216 () Bool)

(assert (=> b!5137080 (=> (not res!2188046) (not e!3204216))))

(declare-fun e!3204215 () Bool)

(assert (=> b!5137080 (= res!2188046 e!3204215)))

(declare-fun res!2188047 () Bool)

(assert (=> b!5137080 (=> res!2188047 e!3204215)))

(declare-datatypes ((C!29100 0))(
  ( (C!29101 (val!24202 Int)) )
))
(declare-datatypes ((Regex!14417 0))(
  ( (ElementMatch!14417 (c!884445 C!29100)) (Concat!23262 (regOne!29346 Regex!14417) (regTwo!29346 Regex!14417)) (EmptyExpr!14417) (Star!14417 (reg!14746 Regex!14417)) (EmptyLang!14417) (Union!14417 (regOne!29347 Regex!14417) (regTwo!29347 Regex!14417)) )
))
(declare-datatypes ((List!59771 0))(
  ( (Nil!59647) (Cons!59647 (h!66095 Regex!14417) (t!372800 List!59771)) )
))
(declare-datatypes ((Context!7602 0))(
  ( (Context!7603 (exprs!4301 List!59771)) )
))
(declare-fun ctx!74 () Context!7602)

(get-info :version)

(assert (=> b!5137080 (= res!2188047 (not ((_ is Cons!59647) (exprs!4301 ctx!74))))))

(declare-fun b!5137081 () Bool)

(declare-fun e!3204217 () Bool)

(declare-fun a!1252 () C!29100)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1239 ((InoxSet Context!7602)) Bool)

(declare-fun derivationStepZipperUp!97 (Context!7602 C!29100) (InoxSet Context!7602))

(assert (=> b!5137081 (= e!3204217 (not (lostCauseZipper!1239 (derivationStepZipperUp!97 ctx!74 a!1252))))))

(declare-fun lt!2119644 () Context!7602)

(declare-fun derivationStepZipperDown!120 (Regex!14417 Context!7602 C!29100) (InoxSet Context!7602))

(assert (=> b!5137081 (lostCauseZipper!1239 (derivationStepZipperDown!120 (h!66095 (exprs!4301 ctx!74)) lt!2119644 a!1252))))

(declare-datatypes ((Unit!151005 0))(
  ( (Unit!151006) )
))
(declare-fun lt!2119643 () Unit!151005)

(declare-fun lemmaLostCauseFixPointDerivDown!14 (Regex!14417 Context!7602 C!29100) Unit!151005)

(assert (=> b!5137081 (= lt!2119643 (lemmaLostCauseFixPointDerivDown!14 (h!66095 (exprs!4301 ctx!74)) lt!2119644 a!1252))))

(declare-fun b!5137082 () Bool)

(declare-fun res!2188045 () Bool)

(assert (=> b!5137082 (=> (not res!2188045) (not e!3204217))))

(declare-fun e!3204213 () Bool)

(assert (=> b!5137082 (= res!2188045 e!3204213)))

(declare-fun res!2188044 () Bool)

(assert (=> b!5137082 (=> res!2188044 e!3204213)))

(declare-fun lostCause!1390 (Regex!14417) Bool)

(assert (=> b!5137082 (= res!2188044 (lostCause!1390 (h!66095 (exprs!4301 ctx!74))))))

(declare-fun b!5137083 () Bool)

(declare-fun nullable!4790 (Regex!14417) Bool)

(assert (=> b!5137083 (= e!3204215 (not (nullable!4790 (h!66095 (exprs!4301 ctx!74)))))))

(declare-fun b!5137084 () Bool)

(declare-fun e!3204214 () Bool)

(declare-fun tp!1432681 () Bool)

(assert (=> b!5137084 (= e!3204214 tp!1432681)))

(declare-fun b!5137085 () Bool)

(declare-fun lostCause!1391 (Context!7602) Bool)

(assert (=> b!5137085 (= e!3204213 (lostCause!1391 lt!2119644))))

(declare-fun b!5137086 () Bool)

(declare-fun res!2188043 () Bool)

(assert (=> b!5137086 (=> (not res!2188043) (not e!3204216))))

(assert (=> b!5137086 (= res!2188043 ((_ is Cons!59647) (exprs!4301 ctx!74)))))

(declare-fun b!5137087 () Bool)

(assert (=> b!5137087 (= e!3204216 e!3204217)))

(declare-fun res!2188042 () Bool)

(assert (=> b!5137087 (=> (not res!2188042) (not e!3204217))))

(declare-fun validRegex!6274 (Regex!14417) Bool)

(assert (=> b!5137087 (= res!2188042 (validRegex!6274 (h!66095 (exprs!4301 ctx!74))))))

(assert (=> b!5137087 (= lt!2119644 (Context!7603 (t!372800 (exprs!4301 ctx!74))))))

(declare-fun res!2188048 () Bool)

(assert (=> start!543880 (=> (not res!2188048) (not e!3204216))))

(assert (=> start!543880 (= res!2188048 (lostCause!1391 ctx!74))))

(assert (=> start!543880 e!3204216))

(declare-fun inv!79223 (Context!7602) Bool)

(assert (=> start!543880 (and (inv!79223 ctx!74) e!3204214)))

(declare-fun tp_is_empty!37987 () Bool)

(assert (=> start!543880 tp_is_empty!37987))

(assert (= (and start!543880 res!2188048) b!5137080))

(assert (= (and b!5137080 (not res!2188047)) b!5137083))

(assert (= (and b!5137080 res!2188046) b!5137086))

(assert (= (and b!5137086 res!2188043) b!5137087))

(assert (= (and b!5137087 res!2188042) b!5137082))

(assert (= (and b!5137082 (not res!2188044)) b!5137085))

(assert (= (and b!5137082 res!2188045) b!5137081))

(assert (= start!543880 b!5137084))

(declare-fun m!6202350 () Bool)

(assert (=> b!5137087 m!6202350))

(declare-fun m!6202352 () Bool)

(assert (=> start!543880 m!6202352))

(declare-fun m!6202354 () Bool)

(assert (=> start!543880 m!6202354))

(declare-fun m!6202356 () Bool)

(assert (=> b!5137082 m!6202356))

(declare-fun m!6202358 () Bool)

(assert (=> b!5137085 m!6202358))

(declare-fun m!6202360 () Bool)

(assert (=> b!5137081 m!6202360))

(declare-fun m!6202362 () Bool)

(assert (=> b!5137081 m!6202362))

(declare-fun m!6202364 () Bool)

(assert (=> b!5137081 m!6202364))

(assert (=> b!5137081 m!6202362))

(declare-fun m!6202366 () Bool)

(assert (=> b!5137081 m!6202366))

(assert (=> b!5137081 m!6202360))

(declare-fun m!6202368 () Bool)

(assert (=> b!5137081 m!6202368))

(declare-fun m!6202370 () Bool)

(assert (=> b!5137083 m!6202370))

(check-sat (not b!5137083) (not b!5137084) (not b!5137082) (not start!543880) (not b!5137081) tp_is_empty!37987 (not b!5137085) (not b!5137087))
(check-sat)
(get-model)

(declare-fun d!1662192 () Bool)

(declare-fun lambda!256070 () Int)

(declare-fun exists!1755 (List!59771 Int) Bool)

(assert (=> d!1662192 (= (lostCause!1391 lt!2119644) (exists!1755 (exprs!4301 lt!2119644) lambda!256070))))

(declare-fun bs!1200261 () Bool)

(assert (= bs!1200261 d!1662192))

(declare-fun m!6202396 () Bool)

(assert (=> bs!1200261 m!6202396))

(assert (=> b!5137085 d!1662192))

(declare-fun bs!1200262 () Bool)

(declare-fun d!1662198 () Bool)

(assert (= bs!1200262 (and d!1662198 d!1662192)))

(declare-fun lambda!256071 () Int)

(assert (=> bs!1200262 (= lambda!256071 lambda!256070)))

(assert (=> d!1662198 (= (lostCause!1391 ctx!74) (exists!1755 (exprs!4301 ctx!74) lambda!256071))))

(declare-fun bs!1200263 () Bool)

(assert (= bs!1200263 d!1662198))

(declare-fun m!6202398 () Bool)

(assert (=> bs!1200263 m!6202398))

(assert (=> start!543880 d!1662198))

(declare-fun bs!1200264 () Bool)

(declare-fun d!1662200 () Bool)

(assert (= bs!1200264 (and d!1662200 d!1662192)))

(declare-fun lambda!256074 () Int)

(assert (=> bs!1200264 (not (= lambda!256074 lambda!256070))))

(declare-fun bs!1200265 () Bool)

(assert (= bs!1200265 (and d!1662200 d!1662198)))

(assert (=> bs!1200265 (not (= lambda!256074 lambda!256071))))

(declare-fun forall!13886 (List!59771 Int) Bool)

(assert (=> d!1662200 (= (inv!79223 ctx!74) (forall!13886 (exprs!4301 ctx!74) lambda!256074))))

(declare-fun bs!1200266 () Bool)

(assert (= bs!1200266 d!1662200))

(declare-fun m!6202400 () Bool)

(assert (=> bs!1200266 m!6202400))

(assert (=> start!543880 d!1662200))

(declare-fun d!1662202 () Bool)

(assert (=> d!1662202 (lostCauseZipper!1239 (derivationStepZipperDown!120 (h!66095 (exprs!4301 ctx!74)) lt!2119644 a!1252))))

(declare-fun lt!2119682 () Unit!151005)

(declare-fun choose!38020 (Regex!14417 Context!7602 C!29100) Unit!151005)

(assert (=> d!1662202 (= lt!2119682 (choose!38020 (h!66095 (exprs!4301 ctx!74)) lt!2119644 a!1252))))

(assert (=> d!1662202 (validRegex!6274 (h!66095 (exprs!4301 ctx!74)))))

(assert (=> d!1662202 (= (lemmaLostCauseFixPointDerivDown!14 (h!66095 (exprs!4301 ctx!74)) lt!2119644 a!1252) lt!2119682)))

(declare-fun bs!1200280 () Bool)

(assert (= bs!1200280 d!1662202))

(assert (=> bs!1200280 m!6202362))

(assert (=> bs!1200280 m!6202362))

(assert (=> bs!1200280 m!6202366))

(declare-fun m!6202418 () Bool)

(assert (=> bs!1200280 m!6202418))

(assert (=> bs!1200280 m!6202350))

(assert (=> b!5137081 d!1662202))

(declare-fun bs!1200283 () Bool)

(declare-fun b!5137175 () Bool)

(declare-fun d!1662208 () Bool)

(assert (= bs!1200283 (and b!5137175 d!1662208)))

(declare-fun lambda!256091 () Int)

(declare-fun lambda!256090 () Int)

(assert (=> bs!1200283 (not (= lambda!256091 lambda!256090))))

(declare-fun bs!1200284 () Bool)

(declare-fun b!5137176 () Bool)

(assert (= bs!1200284 (and b!5137176 d!1662208)))

(declare-fun lambda!256094 () Int)

(assert (=> bs!1200284 (not (= lambda!256094 lambda!256090))))

(declare-fun bs!1200285 () Bool)

(assert (= bs!1200285 (and b!5137176 b!5137175)))

(assert (=> bs!1200285 (= lambda!256094 lambda!256091)))

(declare-fun e!3204280 () Unit!151005)

(declare-fun Unit!151011 () Unit!151005)

(assert (=> b!5137175 (= e!3204280 Unit!151011)))

(declare-datatypes ((List!59774 0))(
  ( (Nil!59650) (Cons!59650 (h!66098 Context!7602) (t!372803 List!59774)) )
))
(declare-fun lt!2119703 () List!59774)

(declare-fun call!358228 () List!59774)

(assert (=> b!5137175 (= lt!2119703 call!358228)))

(declare-fun lt!2119699 () Unit!151005)

(declare-fun lemmaNotForallThenExists!420 (List!59774 Int) Unit!151005)

(assert (=> b!5137175 (= lt!2119699 (lemmaNotForallThenExists!420 lt!2119703 lambda!256090))))

(declare-fun call!358229 () Bool)

(assert (=> b!5137175 call!358229))

(declare-fun lt!2119700 () Unit!151005)

(assert (=> b!5137175 (= lt!2119700 lt!2119699)))

(declare-fun Unit!151012 () Unit!151005)

(assert (=> b!5137176 (= e!3204280 Unit!151012)))

(declare-fun lt!2119704 () List!59774)

(assert (=> b!5137176 (= lt!2119704 call!358228)))

(declare-fun lt!2119705 () Unit!151005)

(declare-fun lemmaForallThenNotExists!387 (List!59774 Int) Unit!151005)

(assert (=> b!5137176 (= lt!2119705 (lemmaForallThenNotExists!387 lt!2119704 lambda!256090))))

(assert (=> b!5137176 (not call!358229)))

(declare-fun lt!2119701 () Unit!151005)

(assert (=> b!5137176 (= lt!2119701 lt!2119705)))

(declare-fun bm!358223 () Bool)

(declare-fun toList!8373 ((InoxSet Context!7602)) List!59774)

(assert (=> bm!358223 (= call!358228 (toList!8373 (derivationStepZipperDown!120 (h!66095 (exprs!4301 ctx!74)) lt!2119644 a!1252)))))

(declare-fun lt!2119702 () Bool)

(declare-datatypes ((List!59775 0))(
  ( (Nil!59651) (Cons!59651 (h!66099 C!29100) (t!372804 List!59775)) )
))
(declare-datatypes ((Option!14771 0))(
  ( (None!14770) (Some!14770 (v!50799 List!59775)) )
))
(declare-fun isEmpty!32032 (Option!14771) Bool)

(declare-fun getLanguageWitness!916 ((InoxSet Context!7602)) Option!14771)

(assert (=> d!1662208 (= lt!2119702 (isEmpty!32032 (getLanguageWitness!916 (derivationStepZipperDown!120 (h!66095 (exprs!4301 ctx!74)) lt!2119644 a!1252))))))

(declare-fun forall!13887 ((InoxSet Context!7602) Int) Bool)

(assert (=> d!1662208 (= lt!2119702 (forall!13887 (derivationStepZipperDown!120 (h!66095 (exprs!4301 ctx!74)) lt!2119644 a!1252) lambda!256090))))

(declare-fun lt!2119706 () Unit!151005)

(assert (=> d!1662208 (= lt!2119706 e!3204280)))

(declare-fun c!884495 () Bool)

(assert (=> d!1662208 (= c!884495 (not (forall!13887 (derivationStepZipperDown!120 (h!66095 (exprs!4301 ctx!74)) lt!2119644 a!1252) lambda!256090)))))

(assert (=> d!1662208 (= (lostCauseZipper!1239 (derivationStepZipperDown!120 (h!66095 (exprs!4301 ctx!74)) lt!2119644 a!1252)) lt!2119702)))

(declare-fun bm!358224 () Bool)

(declare-fun exists!1756 (List!59774 Int) Bool)

(assert (=> bm!358224 (= call!358229 (exists!1756 (ite c!884495 lt!2119703 lt!2119704) (ite c!884495 lambda!256091 lambda!256094)))))

(assert (= (and d!1662208 c!884495) b!5137175))

(assert (= (and d!1662208 (not c!884495)) b!5137176))

(assert (= (or b!5137175 b!5137176) bm!358223))

(assert (= (or b!5137175 b!5137176) bm!358224))

(declare-fun m!6202436 () Bool)

(assert (=> b!5137176 m!6202436))

(assert (=> bm!358223 m!6202362))

(declare-fun m!6202438 () Bool)

(assert (=> bm!358223 m!6202438))

(assert (=> d!1662208 m!6202362))

(declare-fun m!6202440 () Bool)

(assert (=> d!1662208 m!6202440))

(assert (=> d!1662208 m!6202440))

(declare-fun m!6202442 () Bool)

(assert (=> d!1662208 m!6202442))

(assert (=> d!1662208 m!6202362))

(declare-fun m!6202444 () Bool)

(assert (=> d!1662208 m!6202444))

(assert (=> d!1662208 m!6202362))

(assert (=> d!1662208 m!6202444))

(declare-fun m!6202446 () Bool)

(assert (=> b!5137175 m!6202446))

(declare-fun m!6202448 () Bool)

(assert (=> bm!358224 m!6202448))

(assert (=> b!5137081 d!1662208))

(declare-fun bm!358237 () Bool)

(declare-fun call!358246 () List!59771)

(declare-fun call!358242 () List!59771)

(assert (=> bm!358237 (= call!358246 call!358242)))

(declare-fun b!5137204 () Bool)

(declare-fun e!3204300 () (InoxSet Context!7602))

(declare-fun call!358244 () (InoxSet Context!7602))

(assert (=> b!5137204 (= e!3204300 call!358244)))

(declare-fun b!5137205 () Bool)

(declare-fun e!3204299 () (InoxSet Context!7602))

(assert (=> b!5137205 (= e!3204299 call!358244)))

(declare-fun d!1662220 () Bool)

(declare-fun c!884507 () Bool)

(assert (=> d!1662220 (= c!884507 (and ((_ is ElementMatch!14417) (h!66095 (exprs!4301 ctx!74))) (= (c!884445 (h!66095 (exprs!4301 ctx!74))) a!1252)))))

(declare-fun e!3204296 () (InoxSet Context!7602))

(assert (=> d!1662220 (= (derivationStepZipperDown!120 (h!66095 (exprs!4301 ctx!74)) lt!2119644 a!1252) e!3204296)))

(declare-fun b!5137206 () Bool)

(declare-fun c!884510 () Bool)

(declare-fun e!3204301 () Bool)

(assert (=> b!5137206 (= c!884510 e!3204301)))

(declare-fun res!2188072 () Bool)

(assert (=> b!5137206 (=> (not res!2188072) (not e!3204301))))

(assert (=> b!5137206 (= res!2188072 ((_ is Concat!23262) (h!66095 (exprs!4301 ctx!74))))))

(declare-fun e!3204298 () (InoxSet Context!7602))

(declare-fun e!3204297 () (InoxSet Context!7602))

(assert (=> b!5137206 (= e!3204298 e!3204297)))

(declare-fun bm!358238 () Bool)

(declare-fun call!358243 () (InoxSet Context!7602))

(declare-fun call!358245 () (InoxSet Context!7602))

(assert (=> bm!358238 (= call!358243 call!358245)))

(declare-fun b!5137207 () Bool)

(declare-fun call!358247 () (InoxSet Context!7602))

(assert (=> b!5137207 (= e!3204298 ((_ map or) call!358245 call!358247))))

(declare-fun bm!358239 () Bool)

(declare-fun c!884506 () Bool)

(assert (=> bm!358239 (= call!358247 (derivationStepZipperDown!120 (ite c!884506 (regTwo!29347 (h!66095 (exprs!4301 ctx!74))) (regOne!29346 (h!66095 (exprs!4301 ctx!74)))) (ite c!884506 lt!2119644 (Context!7603 call!358242)) a!1252))))

(declare-fun b!5137208 () Bool)

(assert (=> b!5137208 (= e!3204301 (nullable!4790 (regOne!29346 (h!66095 (exprs!4301 ctx!74)))))))

(declare-fun c!884508 () Bool)

(declare-fun bm!358240 () Bool)

(declare-fun $colon$colon!1170 (List!59771 Regex!14417) List!59771)

(assert (=> bm!358240 (= call!358242 ($colon$colon!1170 (exprs!4301 lt!2119644) (ite (or c!884510 c!884508) (regTwo!29346 (h!66095 (exprs!4301 ctx!74))) (h!66095 (exprs!4301 ctx!74)))))))

(declare-fun b!5137209 () Bool)

(declare-fun c!884509 () Bool)

(assert (=> b!5137209 (= c!884509 ((_ is Star!14417) (h!66095 (exprs!4301 ctx!74))))))

(assert (=> b!5137209 (= e!3204300 e!3204299)))

(declare-fun bm!358241 () Bool)

(assert (=> bm!358241 (= call!358244 call!358243)))

(declare-fun b!5137210 () Bool)

(assert (=> b!5137210 (= e!3204297 e!3204300)))

(assert (=> b!5137210 (= c!884508 ((_ is Concat!23262) (h!66095 (exprs!4301 ctx!74))))))

(declare-fun b!5137211 () Bool)

(assert (=> b!5137211 (= e!3204296 e!3204298)))

(assert (=> b!5137211 (= c!884506 ((_ is Union!14417) (h!66095 (exprs!4301 ctx!74))))))

(declare-fun b!5137212 () Bool)

(assert (=> b!5137212 (= e!3204299 ((as const (Array Context!7602 Bool)) false))))

(declare-fun b!5137213 () Bool)

(assert (=> b!5137213 (= e!3204297 ((_ map or) call!358247 call!358243))))

(declare-fun bm!358242 () Bool)

(assert (=> bm!358242 (= call!358245 (derivationStepZipperDown!120 (ite c!884506 (regOne!29347 (h!66095 (exprs!4301 ctx!74))) (ite c!884510 (regTwo!29346 (h!66095 (exprs!4301 ctx!74))) (ite c!884508 (regOne!29346 (h!66095 (exprs!4301 ctx!74))) (reg!14746 (h!66095 (exprs!4301 ctx!74)))))) (ite (or c!884506 c!884510) lt!2119644 (Context!7603 call!358246)) a!1252))))

(declare-fun b!5137214 () Bool)

(assert (=> b!5137214 (= e!3204296 (store ((as const (Array Context!7602 Bool)) false) lt!2119644 true))))

(assert (= (and d!1662220 c!884507) b!5137214))

(assert (= (and d!1662220 (not c!884507)) b!5137211))

(assert (= (and b!5137211 c!884506) b!5137207))

(assert (= (and b!5137211 (not c!884506)) b!5137206))

(assert (= (and b!5137206 res!2188072) b!5137208))

(assert (= (and b!5137206 c!884510) b!5137213))

(assert (= (and b!5137206 (not c!884510)) b!5137210))

(assert (= (and b!5137210 c!884508) b!5137204))

(assert (= (and b!5137210 (not c!884508)) b!5137209))

(assert (= (and b!5137209 c!884509) b!5137205))

(assert (= (and b!5137209 (not c!884509)) b!5137212))

(assert (= (or b!5137204 b!5137205) bm!358237))

(assert (= (or b!5137204 b!5137205) bm!358241))

(assert (= (or b!5137213 bm!358237) bm!358240))

(assert (= (or b!5137213 bm!358241) bm!358238))

(assert (= (or b!5137207 bm!358238) bm!358242))

(assert (= (or b!5137207 b!5137213) bm!358239))

(declare-fun m!6202454 () Bool)

(assert (=> bm!358240 m!6202454))

(declare-fun m!6202456 () Bool)

(assert (=> bm!358239 m!6202456))

(declare-fun m!6202458 () Bool)

(assert (=> b!5137208 m!6202458))

(declare-fun m!6202460 () Bool)

(assert (=> b!5137214 m!6202460))

(declare-fun m!6202462 () Bool)

(assert (=> bm!358242 m!6202462))

(assert (=> b!5137081 d!1662220))

(declare-fun bs!1200292 () Bool)

(declare-fun d!1662224 () Bool)

(assert (= bs!1200292 (and d!1662224 d!1662208)))

(declare-fun lambda!256100 () Int)

(assert (=> bs!1200292 (= lambda!256100 lambda!256090)))

(declare-fun bs!1200293 () Bool)

(assert (= bs!1200293 (and d!1662224 b!5137175)))

(assert (=> bs!1200293 (not (= lambda!256100 lambda!256091))))

(declare-fun bs!1200294 () Bool)

(assert (= bs!1200294 (and d!1662224 b!5137176)))

(assert (=> bs!1200294 (not (= lambda!256100 lambda!256094))))

(declare-fun bs!1200295 () Bool)

(declare-fun b!5137215 () Bool)

(assert (= bs!1200295 (and b!5137215 d!1662208)))

(declare-fun lambda!256101 () Int)

(assert (=> bs!1200295 (not (= lambda!256101 lambda!256090))))

(declare-fun bs!1200296 () Bool)

(assert (= bs!1200296 (and b!5137215 b!5137175)))

(assert (=> bs!1200296 (= lambda!256101 lambda!256091)))

(declare-fun bs!1200297 () Bool)

(assert (= bs!1200297 (and b!5137215 b!5137176)))

(assert (=> bs!1200297 (= lambda!256101 lambda!256094)))

(declare-fun bs!1200298 () Bool)

(assert (= bs!1200298 (and b!5137215 d!1662224)))

(assert (=> bs!1200298 (not (= lambda!256101 lambda!256100))))

(declare-fun bs!1200299 () Bool)

(declare-fun b!5137216 () Bool)

(assert (= bs!1200299 (and b!5137216 b!5137215)))

(declare-fun lambda!256102 () Int)

(assert (=> bs!1200299 (= lambda!256102 lambda!256101)))

(declare-fun bs!1200300 () Bool)

(assert (= bs!1200300 (and b!5137216 d!1662208)))

(assert (=> bs!1200300 (not (= lambda!256102 lambda!256090))))

(declare-fun bs!1200301 () Bool)

(assert (= bs!1200301 (and b!5137216 d!1662224)))

(assert (=> bs!1200301 (not (= lambda!256102 lambda!256100))))

(declare-fun bs!1200302 () Bool)

(assert (= bs!1200302 (and b!5137216 b!5137175)))

(assert (=> bs!1200302 (= lambda!256102 lambda!256091)))

(declare-fun bs!1200303 () Bool)

(assert (= bs!1200303 (and b!5137216 b!5137176)))

(assert (=> bs!1200303 (= lambda!256102 lambda!256094)))

(declare-fun e!3204302 () Unit!151005)

(declare-fun Unit!151013 () Unit!151005)

(assert (=> b!5137215 (= e!3204302 Unit!151013)))

(declare-fun lt!2119711 () List!59774)

(declare-fun call!358248 () List!59774)

(assert (=> b!5137215 (= lt!2119711 call!358248)))

(declare-fun lt!2119707 () Unit!151005)

(assert (=> b!5137215 (= lt!2119707 (lemmaNotForallThenExists!420 lt!2119711 lambda!256100))))

(declare-fun call!358249 () Bool)

(assert (=> b!5137215 call!358249))

(declare-fun lt!2119708 () Unit!151005)

(assert (=> b!5137215 (= lt!2119708 lt!2119707)))

(declare-fun Unit!151014 () Unit!151005)

(assert (=> b!5137216 (= e!3204302 Unit!151014)))

(declare-fun lt!2119712 () List!59774)

(assert (=> b!5137216 (= lt!2119712 call!358248)))

(declare-fun lt!2119713 () Unit!151005)

(assert (=> b!5137216 (= lt!2119713 (lemmaForallThenNotExists!387 lt!2119712 lambda!256100))))

(assert (=> b!5137216 (not call!358249)))

(declare-fun lt!2119709 () Unit!151005)

(assert (=> b!5137216 (= lt!2119709 lt!2119713)))

(declare-fun bm!358243 () Bool)

(assert (=> bm!358243 (= call!358248 (toList!8373 (derivationStepZipperUp!97 ctx!74 a!1252)))))

(declare-fun lt!2119710 () Bool)

(assert (=> d!1662224 (= lt!2119710 (isEmpty!32032 (getLanguageWitness!916 (derivationStepZipperUp!97 ctx!74 a!1252))))))

(assert (=> d!1662224 (= lt!2119710 (forall!13887 (derivationStepZipperUp!97 ctx!74 a!1252) lambda!256100))))

(declare-fun lt!2119714 () Unit!151005)

(assert (=> d!1662224 (= lt!2119714 e!3204302)))

(declare-fun c!884511 () Bool)

(assert (=> d!1662224 (= c!884511 (not (forall!13887 (derivationStepZipperUp!97 ctx!74 a!1252) lambda!256100)))))

(assert (=> d!1662224 (= (lostCauseZipper!1239 (derivationStepZipperUp!97 ctx!74 a!1252)) lt!2119710)))

(declare-fun bm!358244 () Bool)

(assert (=> bm!358244 (= call!358249 (exists!1756 (ite c!884511 lt!2119711 lt!2119712) (ite c!884511 lambda!256101 lambda!256102)))))

(assert (= (and d!1662224 c!884511) b!5137215))

(assert (= (and d!1662224 (not c!884511)) b!5137216))

(assert (= (or b!5137215 b!5137216) bm!358243))

(assert (= (or b!5137215 b!5137216) bm!358244))

(declare-fun m!6202464 () Bool)

(assert (=> b!5137216 m!6202464))

(assert (=> bm!358243 m!6202360))

(declare-fun m!6202466 () Bool)

(assert (=> bm!358243 m!6202466))

(assert (=> d!1662224 m!6202360))

(declare-fun m!6202468 () Bool)

(assert (=> d!1662224 m!6202468))

(assert (=> d!1662224 m!6202468))

(declare-fun m!6202470 () Bool)

(assert (=> d!1662224 m!6202470))

(assert (=> d!1662224 m!6202360))

(declare-fun m!6202472 () Bool)

(assert (=> d!1662224 m!6202472))

(assert (=> d!1662224 m!6202360))

(assert (=> d!1662224 m!6202472))

(declare-fun m!6202474 () Bool)

(assert (=> b!5137215 m!6202474))

(declare-fun m!6202476 () Bool)

(assert (=> bm!358244 m!6202476))

(assert (=> b!5137081 d!1662224))

(declare-fun b!5137227 () Bool)

(declare-fun e!3204309 () (InoxSet Context!7602))

(declare-fun e!3204310 () (InoxSet Context!7602))

(assert (=> b!5137227 (= e!3204309 e!3204310)))

(declare-fun c!884516 () Bool)

(assert (=> b!5137227 (= c!884516 ((_ is Cons!59647) (exprs!4301 ctx!74)))))

(declare-fun b!5137228 () Bool)

(assert (=> b!5137228 (= e!3204310 ((as const (Array Context!7602 Bool)) false))))

(declare-fun bm!358247 () Bool)

(declare-fun call!358252 () (InoxSet Context!7602))

(assert (=> bm!358247 (= call!358252 (derivationStepZipperDown!120 (h!66095 (exprs!4301 ctx!74)) (Context!7603 (t!372800 (exprs!4301 ctx!74))) a!1252))))

(declare-fun b!5137229 () Bool)

(assert (=> b!5137229 (= e!3204310 call!358252)))

(declare-fun d!1662226 () Bool)

(declare-fun c!884517 () Bool)

(declare-fun e!3204311 () Bool)

(assert (=> d!1662226 (= c!884517 e!3204311)))

(declare-fun res!2188075 () Bool)

(assert (=> d!1662226 (=> (not res!2188075) (not e!3204311))))

(assert (=> d!1662226 (= res!2188075 ((_ is Cons!59647) (exprs!4301 ctx!74)))))

(assert (=> d!1662226 (= (derivationStepZipperUp!97 ctx!74 a!1252) e!3204309)))

(declare-fun b!5137230 () Bool)

(assert (=> b!5137230 (= e!3204311 (nullable!4790 (h!66095 (exprs!4301 ctx!74))))))

(declare-fun b!5137231 () Bool)

(assert (=> b!5137231 (= e!3204309 ((_ map or) call!358252 (derivationStepZipperUp!97 (Context!7603 (t!372800 (exprs!4301 ctx!74))) a!1252)))))

(assert (= (and d!1662226 res!2188075) b!5137230))

(assert (= (and d!1662226 c!884517) b!5137231))

(assert (= (and d!1662226 (not c!884517)) b!5137227))

(assert (= (and b!5137227 c!884516) b!5137229))

(assert (= (and b!5137227 (not c!884516)) b!5137228))

(assert (= (or b!5137231 b!5137229) bm!358247))

(declare-fun m!6202478 () Bool)

(assert (=> bm!358247 m!6202478))

(assert (=> b!5137230 m!6202370))

(declare-fun m!6202480 () Bool)

(assert (=> b!5137231 m!6202480))

(assert (=> b!5137081 d!1662226))

(declare-fun b!5137250 () Bool)

(declare-fun e!3204329 () Bool)

(declare-fun e!3204330 () Bool)

(assert (=> b!5137250 (= e!3204329 e!3204330)))

(declare-fun res!2188088 () Bool)

(assert (=> b!5137250 (=> (not res!2188088) (not e!3204330))))

(declare-fun call!358259 () Bool)

(assert (=> b!5137250 (= res!2188088 call!358259)))

(declare-fun bm!358254 () Bool)

(declare-fun call!358260 () Bool)

(assert (=> bm!358254 (= call!358259 call!358260)))

(declare-fun bm!358255 () Bool)

(declare-fun c!884523 () Bool)

(declare-fun c!884522 () Bool)

(assert (=> bm!358255 (= call!358260 (validRegex!6274 (ite c!884523 (reg!14746 (h!66095 (exprs!4301 ctx!74))) (ite c!884522 (regTwo!29347 (h!66095 (exprs!4301 ctx!74))) (regOne!29346 (h!66095 (exprs!4301 ctx!74)))))))))

(declare-fun b!5137252 () Bool)

(declare-fun e!3204327 () Bool)

(assert (=> b!5137252 (= e!3204327 call!358260)))

(declare-fun b!5137253 () Bool)

(declare-fun e!3204328 () Bool)

(declare-fun e!3204331 () Bool)

(assert (=> b!5137253 (= e!3204328 e!3204331)))

(assert (=> b!5137253 (= c!884523 ((_ is Star!14417) (h!66095 (exprs!4301 ctx!74))))))

(declare-fun b!5137254 () Bool)

(declare-fun call!358261 () Bool)

(assert (=> b!5137254 (= e!3204330 call!358261)))

(declare-fun b!5137255 () Bool)

(declare-fun e!3204326 () Bool)

(assert (=> b!5137255 (= e!3204326 call!358259)))

(declare-fun d!1662228 () Bool)

(declare-fun res!2188090 () Bool)

(assert (=> d!1662228 (=> res!2188090 e!3204328)))

(assert (=> d!1662228 (= res!2188090 ((_ is ElementMatch!14417) (h!66095 (exprs!4301 ctx!74))))))

(assert (=> d!1662228 (= (validRegex!6274 (h!66095 (exprs!4301 ctx!74))) e!3204328)))

(declare-fun b!5137251 () Bool)

(assert (=> b!5137251 (= e!3204331 e!3204327)))

(declare-fun res!2188089 () Bool)

(assert (=> b!5137251 (= res!2188089 (not (nullable!4790 (reg!14746 (h!66095 (exprs!4301 ctx!74))))))))

(assert (=> b!5137251 (=> (not res!2188089) (not e!3204327))))

(declare-fun b!5137256 () Bool)

(declare-fun e!3204332 () Bool)

(assert (=> b!5137256 (= e!3204331 e!3204332)))

(assert (=> b!5137256 (= c!884522 ((_ is Union!14417) (h!66095 (exprs!4301 ctx!74))))))

(declare-fun b!5137257 () Bool)

(declare-fun res!2188086 () Bool)

(assert (=> b!5137257 (=> (not res!2188086) (not e!3204326))))

(assert (=> b!5137257 (= res!2188086 call!358261)))

(assert (=> b!5137257 (= e!3204332 e!3204326)))

(declare-fun bm!358256 () Bool)

(assert (=> bm!358256 (= call!358261 (validRegex!6274 (ite c!884522 (regOne!29347 (h!66095 (exprs!4301 ctx!74))) (regTwo!29346 (h!66095 (exprs!4301 ctx!74))))))))

(declare-fun b!5137258 () Bool)

(declare-fun res!2188087 () Bool)

(assert (=> b!5137258 (=> res!2188087 e!3204329)))

(assert (=> b!5137258 (= res!2188087 (not ((_ is Concat!23262) (h!66095 (exprs!4301 ctx!74)))))))

(assert (=> b!5137258 (= e!3204332 e!3204329)))

(assert (= (and d!1662228 (not res!2188090)) b!5137253))

(assert (= (and b!5137253 c!884523) b!5137251))

(assert (= (and b!5137253 (not c!884523)) b!5137256))

(assert (= (and b!5137251 res!2188089) b!5137252))

(assert (= (and b!5137256 c!884522) b!5137257))

(assert (= (and b!5137256 (not c!884522)) b!5137258))

(assert (= (and b!5137257 res!2188086) b!5137255))

(assert (= (and b!5137258 (not res!2188087)) b!5137250))

(assert (= (and b!5137250 res!2188088) b!5137254))

(assert (= (or b!5137257 b!5137254) bm!358256))

(assert (= (or b!5137255 b!5137250) bm!358254))

(assert (= (or b!5137252 bm!358254) bm!358255))

(declare-fun m!6202482 () Bool)

(assert (=> bm!358255 m!6202482))

(declare-fun m!6202484 () Bool)

(assert (=> b!5137251 m!6202484))

(declare-fun m!6202486 () Bool)

(assert (=> bm!358256 m!6202486))

(assert (=> b!5137087 d!1662228))

(declare-fun d!1662230 () Bool)

(declare-fun lostCauseFct!338 (Regex!14417) Bool)

(assert (=> d!1662230 (= (lostCause!1390 (h!66095 (exprs!4301 ctx!74))) (lostCauseFct!338 (h!66095 (exprs!4301 ctx!74))))))

(declare-fun bs!1200304 () Bool)

(assert (= bs!1200304 d!1662230))

(declare-fun m!6202488 () Bool)

(assert (=> bs!1200304 m!6202488))

(assert (=> b!5137082 d!1662230))

(declare-fun d!1662232 () Bool)

(declare-fun nullableFct!1311 (Regex!14417) Bool)

(assert (=> d!1662232 (= (nullable!4790 (h!66095 (exprs!4301 ctx!74))) (nullableFct!1311 (h!66095 (exprs!4301 ctx!74))))))

(declare-fun bs!1200305 () Bool)

(assert (= bs!1200305 d!1662232))

(declare-fun m!6202490 () Bool)

(assert (=> bs!1200305 m!6202490))

(assert (=> b!5137083 d!1662232))

(declare-fun b!5137263 () Bool)

(declare-fun e!3204335 () Bool)

(declare-fun tp!1432692 () Bool)

(declare-fun tp!1432693 () Bool)

(assert (=> b!5137263 (= e!3204335 (and tp!1432692 tp!1432693))))

(assert (=> b!5137084 (= tp!1432681 e!3204335)))

(assert (= (and b!5137084 ((_ is Cons!59647) (exprs!4301 ctx!74))) b!5137263))

(check-sat (not b!5137216) (not b!5137263) (not bm!358247) (not d!1662200) (not bm!358256) (not bm!358239) tp_is_empty!37987 (not d!1662202) (not b!5137251) (not b!5137208) (not b!5137175) (not d!1662208) (not d!1662192) (not bm!358223) (not bm!358255) (not bm!358244) (not bm!358242) (not d!1662230) (not b!5137215) (not d!1662232) (not b!5137231) (not bm!358240) (not d!1662224) (not d!1662198) (not bm!358243) (not b!5137176) (not bm!358224) (not b!5137230))
(check-sat)

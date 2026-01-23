; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!717616 () Bool)

(assert start!717616)

(declare-fun b!7348383 () Bool)

(declare-fun e!4399995 () Bool)

(declare-fun e!4399990 () Bool)

(assert (=> b!7348383 (= e!4399995 (not e!4399990))))

(declare-fun res!2967825 () Bool)

(assert (=> b!7348383 (=> res!2967825 e!4399990)))

(declare-datatypes ((C!38584 0))(
  ( (C!38585 (val!29652 Int)) )
))
(declare-datatypes ((Regex!19155 0))(
  ( (ElementMatch!19155 (c!1365129 C!38584)) (Concat!28000 (regOne!38822 Regex!19155) (regTwo!38822 Regex!19155)) (EmptyExpr!19155) (Star!19155 (reg!19484 Regex!19155)) (EmptyLang!19155) (Union!19155 (regOne!38823 Regex!19155) (regTwo!38823 Regex!19155)) )
))
(declare-datatypes ((List!71651 0))(
  ( (Nil!71527) (Cons!71527 (h!77975 Regex!19155) (t!386060 List!71651)) )
))
(declare-datatypes ((Context!16190 0))(
  ( (Context!16191 (exprs!8595 List!71651)) )
))
(declare-fun cWitness!61 () Context!16190)

(declare-fun lambda!456325 () Int)

(declare-fun forall!17979 (List!71651 Int) Bool)

(assert (=> b!7348383 (= res!2967825 (not (forall!17979 (exprs!8595 cWitness!61) lambda!456325)))))

(declare-fun c!10362 () C!38584)

(declare-fun lt!2611691 () Context!16190)

(declare-fun r1!2370 () Regex!19155)

(declare-fun ct2!378 () Context!16190)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperDown!2981 (Regex!19155 Context!16190 C!38584) (InoxSet Context!16190))

(declare-fun ++!16973 (List!71651 List!71651) List!71651)

(assert (=> b!7348383 (select (derivationStepZipperDown!2981 (regTwo!38822 r1!2370) lt!2611691 c!10362) (Context!16191 (++!16973 (exprs!8595 cWitness!61) (exprs!8595 ct2!378))))))

(declare-datatypes ((Unit!165263 0))(
  ( (Unit!165264) )
))
(declare-fun lt!2611692 () Unit!165263)

(declare-fun ct1!282 () Context!16190)

(declare-fun lemmaConcatPreservesForall!1830 (List!71651 List!71651 Int) Unit!165263)

(assert (=> b!7348383 (= lt!2611692 (lemmaConcatPreservesForall!1830 (exprs!8595 ct1!282) (exprs!8595 ct2!378) lambda!456325))))

(declare-fun lt!2611686 () Unit!165263)

(assert (=> b!7348383 (= lt!2611686 (lemmaConcatPreservesForall!1830 (exprs!8595 cWitness!61) (exprs!8595 ct2!378) lambda!456325))))

(declare-fun lt!2611687 () Unit!165263)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!80 (Regex!19155 Context!16190 Context!16190 Context!16190 C!38584) Unit!165263)

(assert (=> b!7348383 (= lt!2611687 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!80 (regTwo!38822 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7348384 () Bool)

(declare-fun res!2967826 () Bool)

(declare-fun e!4399991 () Bool)

(assert (=> b!7348384 (=> (not res!2967826) (not e!4399991))))

(declare-fun validRegex!9751 (Regex!19155) Bool)

(assert (=> b!7348384 (= res!2967826 (validRegex!9751 (regTwo!38822 r1!2370)))))

(declare-fun b!7348385 () Bool)

(declare-fun res!2967821 () Bool)

(assert (=> b!7348385 (=> (not res!2967821) (not e!4399995))))

(declare-fun lt!2611689 () (InoxSet Context!16190))

(assert (=> b!7348385 (= res!2967821 (not (select lt!2611689 cWitness!61)))))

(declare-fun b!7348386 () Bool)

(assert (=> b!7348386 (= e!4399991 e!4399995)))

(declare-fun res!2967824 () Bool)

(assert (=> b!7348386 (=> (not res!2967824) (not e!4399995))))

(declare-fun lt!2611693 () (InoxSet Context!16190))

(assert (=> b!7348386 (= res!2967824 (= lt!2611693 ((_ map or) lt!2611689 (derivationStepZipperDown!2981 (regTwo!38822 r1!2370) ct1!282 c!10362))))))

(declare-fun $colon$colon!3153 (List!71651 Regex!19155) List!71651)

(assert (=> b!7348386 (= lt!2611689 (derivationStepZipperDown!2981 (regOne!38822 r1!2370) (Context!16191 ($colon$colon!3153 (exprs!8595 ct1!282) (regTwo!38822 r1!2370))) c!10362))))

(declare-fun b!7348387 () Bool)

(declare-fun e!4399997 () Bool)

(declare-fun tp!2087050 () Bool)

(assert (=> b!7348387 (= e!4399997 tp!2087050)))

(declare-fun b!7348388 () Bool)

(declare-fun e!4399993 () Bool)

(assert (=> b!7348388 (= e!4399993 e!4399991)))

(declare-fun res!2967828 () Bool)

(assert (=> b!7348388 (=> (not res!2967828) (not e!4399991))))

(get-info :version)

(assert (=> b!7348388 (= res!2967828 (and (or (not ((_ is ElementMatch!19155) r1!2370)) (not (= c!10362 (c!1365129 r1!2370)))) (not ((_ is Union!19155) r1!2370)) ((_ is Concat!28000) r1!2370)))))

(declare-fun lt!2611688 () (InoxSet Context!16190))

(assert (=> b!7348388 (= lt!2611688 (derivationStepZipperDown!2981 r1!2370 lt!2611691 c!10362))))

(assert (=> b!7348388 (= lt!2611691 (Context!16191 (++!16973 (exprs!8595 ct1!282) (exprs!8595 ct2!378))))))

(declare-fun lt!2611690 () Unit!165263)

(assert (=> b!7348388 (= lt!2611690 (lemmaConcatPreservesForall!1830 (exprs!8595 ct1!282) (exprs!8595 ct2!378) lambda!456325))))

(declare-fun b!7348389 () Bool)

(declare-fun e!4399994 () Bool)

(declare-fun tp!2087056 () Bool)

(assert (=> b!7348389 (= e!4399994 tp!2087056)))

(declare-fun b!7348390 () Bool)

(declare-fun e!4399998 () Bool)

(declare-fun tp!2087057 () Bool)

(assert (=> b!7348390 (= e!4399998 tp!2087057)))

(declare-fun b!7348391 () Bool)

(declare-fun e!4399996 () Bool)

(declare-fun tp!2087052 () Bool)

(declare-fun tp!2087051 () Bool)

(assert (=> b!7348391 (= e!4399996 (and tp!2087052 tp!2087051))))

(declare-fun b!7348392 () Bool)

(declare-fun tp!2087055 () Bool)

(declare-fun tp!2087054 () Bool)

(assert (=> b!7348392 (= e!4399996 (and tp!2087055 tp!2087054))))

(declare-fun b!7348393 () Bool)

(declare-fun tp!2087053 () Bool)

(assert (=> b!7348393 (= e!4399996 tp!2087053)))

(declare-fun b!7348394 () Bool)

(assert (=> b!7348394 (= e!4399990 (forall!17979 (exprs!8595 ct2!378) lambda!456325))))

(declare-fun b!7348395 () Bool)

(declare-fun e!4399992 () Bool)

(assert (=> b!7348395 (= e!4399992 e!4399993)))

(declare-fun res!2967823 () Bool)

(assert (=> b!7348395 (=> (not res!2967823) (not e!4399993))))

(assert (=> b!7348395 (= res!2967823 (select lt!2611693 cWitness!61))))

(assert (=> b!7348395 (= lt!2611693 (derivationStepZipperDown!2981 r1!2370 ct1!282 c!10362))))

(declare-fun b!7348396 () Bool)

(declare-fun tp_is_empty!48555 () Bool)

(assert (=> b!7348396 (= e!4399996 tp_is_empty!48555)))

(declare-fun b!7348397 () Bool)

(declare-fun res!2967827 () Bool)

(assert (=> b!7348397 (=> (not res!2967827) (not e!4399991))))

(declare-fun nullable!8246 (Regex!19155) Bool)

(assert (=> b!7348397 (= res!2967827 (nullable!8246 (regOne!38822 r1!2370)))))

(declare-fun res!2967822 () Bool)

(assert (=> start!717616 (=> (not res!2967822) (not e!4399992))))

(assert (=> start!717616 (= res!2967822 (validRegex!9751 r1!2370))))

(assert (=> start!717616 e!4399992))

(assert (=> start!717616 tp_is_empty!48555))

(declare-fun inv!91227 (Context!16190) Bool)

(assert (=> start!717616 (and (inv!91227 cWitness!61) e!4399997)))

(assert (=> start!717616 (and (inv!91227 ct1!282) e!4399998)))

(assert (=> start!717616 e!4399996))

(assert (=> start!717616 (and (inv!91227 ct2!378) e!4399994)))

(assert (= (and start!717616 res!2967822) b!7348395))

(assert (= (and b!7348395 res!2967823) b!7348388))

(assert (= (and b!7348388 res!2967828) b!7348397))

(assert (= (and b!7348397 res!2967827) b!7348384))

(assert (= (and b!7348384 res!2967826) b!7348386))

(assert (= (and b!7348386 res!2967824) b!7348385))

(assert (= (and b!7348385 res!2967821) b!7348383))

(assert (= (and b!7348383 (not res!2967825)) b!7348394))

(assert (= start!717616 b!7348387))

(assert (= start!717616 b!7348390))

(assert (= (and start!717616 ((_ is ElementMatch!19155) r1!2370)) b!7348396))

(assert (= (and start!717616 ((_ is Concat!28000) r1!2370)) b!7348392))

(assert (= (and start!717616 ((_ is Star!19155) r1!2370)) b!7348393))

(assert (= (and start!717616 ((_ is Union!19155) r1!2370)) b!7348391))

(assert (= start!717616 b!7348389))

(declare-fun m!8010246 () Bool)

(assert (=> b!7348383 m!8010246))

(declare-fun m!8010248 () Bool)

(assert (=> b!7348383 m!8010248))

(declare-fun m!8010250 () Bool)

(assert (=> b!7348383 m!8010250))

(declare-fun m!8010252 () Bool)

(assert (=> b!7348383 m!8010252))

(declare-fun m!8010254 () Bool)

(assert (=> b!7348383 m!8010254))

(declare-fun m!8010256 () Bool)

(assert (=> b!7348383 m!8010256))

(declare-fun m!8010258 () Bool)

(assert (=> b!7348383 m!8010258))

(declare-fun m!8010260 () Bool)

(assert (=> b!7348397 m!8010260))

(declare-fun m!8010262 () Bool)

(assert (=> b!7348386 m!8010262))

(declare-fun m!8010264 () Bool)

(assert (=> b!7348386 m!8010264))

(declare-fun m!8010266 () Bool)

(assert (=> b!7348386 m!8010266))

(declare-fun m!8010268 () Bool)

(assert (=> b!7348395 m!8010268))

(declare-fun m!8010270 () Bool)

(assert (=> b!7348395 m!8010270))

(declare-fun m!8010272 () Bool)

(assert (=> b!7348394 m!8010272))

(declare-fun m!8010274 () Bool)

(assert (=> b!7348384 m!8010274))

(declare-fun m!8010276 () Bool)

(assert (=> start!717616 m!8010276))

(declare-fun m!8010278 () Bool)

(assert (=> start!717616 m!8010278))

(declare-fun m!8010280 () Bool)

(assert (=> start!717616 m!8010280))

(declare-fun m!8010282 () Bool)

(assert (=> start!717616 m!8010282))

(declare-fun m!8010284 () Bool)

(assert (=> b!7348385 m!8010284))

(declare-fun m!8010286 () Bool)

(assert (=> b!7348388 m!8010286))

(declare-fun m!8010288 () Bool)

(assert (=> b!7348388 m!8010288))

(assert (=> b!7348388 m!8010256))

(check-sat (not b!7348388) (not b!7348387) (not b!7348391) (not b!7348384) (not b!7348383) (not b!7348397) (not b!7348395) tp_is_empty!48555 (not b!7348392) (not start!717616) (not b!7348389) (not b!7348390) (not b!7348393) (not b!7348394) (not b!7348386))
(check-sat)
(get-model)

(declare-fun d!2280064 () Bool)

(declare-fun nullableFct!3282 (Regex!19155) Bool)

(assert (=> d!2280064 (= (nullable!8246 (regOne!38822 r1!2370)) (nullableFct!3282 (regOne!38822 r1!2370)))))

(declare-fun bs!1919068 () Bool)

(assert (= bs!1919068 d!2280064))

(declare-fun m!8010290 () Bool)

(assert (=> bs!1919068 m!8010290))

(assert (=> b!7348397 d!2280064))

(declare-fun b!7348428 () Bool)

(declare-fun e!4400018 () (InoxSet Context!16190))

(declare-fun e!4400022 () (InoxSet Context!16190))

(assert (=> b!7348428 (= e!4400018 e!4400022)))

(declare-fun c!1365144 () Bool)

(assert (=> b!7348428 (= c!1365144 ((_ is Concat!28000) r1!2370))))

(declare-fun b!7348429 () Bool)

(declare-fun e!4400017 () (InoxSet Context!16190))

(declare-fun e!4400020 () (InoxSet Context!16190))

(assert (=> b!7348429 (= e!4400017 e!4400020)))

(declare-fun c!1365141 () Bool)

(assert (=> b!7348429 (= c!1365141 ((_ is Union!19155) r1!2370))))

(declare-fun b!7348430 () Bool)

(declare-fun call!671772 () (InoxSet Context!16190))

(assert (=> b!7348430 (= e!4400022 call!671772)))

(declare-fun bm!671767 () Bool)

(declare-fun call!671776 () List!71651)

(declare-fun c!1365143 () Bool)

(declare-fun call!671774 () (InoxSet Context!16190))

(assert (=> bm!671767 (= call!671774 (derivationStepZipperDown!2981 (ite c!1365141 (regOne!38823 r1!2370) (ite c!1365143 (regTwo!38822 r1!2370) (ite c!1365144 (regOne!38822 r1!2370) (reg!19484 r1!2370)))) (ite (or c!1365141 c!1365143) lt!2611691 (Context!16191 call!671776)) c!10362))))

(declare-fun bm!671768 () Bool)

(declare-fun call!671777 () List!71651)

(assert (=> bm!671768 (= call!671777 ($colon$colon!3153 (exprs!8595 lt!2611691) (ite (or c!1365143 c!1365144) (regTwo!38822 r1!2370) r1!2370)))))

(declare-fun b!7348431 () Bool)

(declare-fun call!671773 () (InoxSet Context!16190))

(declare-fun call!671775 () (InoxSet Context!16190))

(assert (=> b!7348431 (= e!4400018 ((_ map or) call!671773 call!671775))))

(declare-fun b!7348432 () Bool)

(declare-fun e!4400019 () (InoxSet Context!16190))

(assert (=> b!7348432 (= e!4400019 call!671772)))

(declare-fun bm!671769 () Bool)

(assert (=> bm!671769 (= call!671775 call!671774)))

(declare-fun b!7348433 () Bool)

(assert (=> b!7348433 (= e!4400017 (store ((as const (Array Context!16190 Bool)) false) lt!2611691 true))))

(declare-fun b!7348434 () Bool)

(declare-fun c!1365140 () Bool)

(assert (=> b!7348434 (= c!1365140 ((_ is Star!19155) r1!2370))))

(assert (=> b!7348434 (= e!4400022 e!4400019)))

(declare-fun bm!671770 () Bool)

(assert (=> bm!671770 (= call!671772 call!671775)))

(declare-fun b!7348435 () Bool)

(assert (=> b!7348435 (= e!4400020 ((_ map or) call!671774 call!671773))))

(declare-fun b!7348437 () Bool)

(declare-fun e!4400021 () Bool)

(assert (=> b!7348437 (= c!1365143 e!4400021)))

(declare-fun res!2967837 () Bool)

(assert (=> b!7348437 (=> (not res!2967837) (not e!4400021))))

(assert (=> b!7348437 (= res!2967837 ((_ is Concat!28000) r1!2370))))

(assert (=> b!7348437 (= e!4400020 e!4400018)))

(declare-fun b!7348439 () Bool)

(assert (=> b!7348439 (= e!4400019 ((as const (Array Context!16190 Bool)) false))))

(declare-fun d!2280066 () Bool)

(declare-fun c!1365142 () Bool)

(assert (=> d!2280066 (= c!1365142 (and ((_ is ElementMatch!19155) r1!2370) (= (c!1365129 r1!2370) c!10362)))))

(assert (=> d!2280066 (= (derivationStepZipperDown!2981 r1!2370 lt!2611691 c!10362) e!4400017)))

(declare-fun bm!671771 () Bool)

(assert (=> bm!671771 (= call!671776 call!671777)))

(declare-fun b!7348440 () Bool)

(assert (=> b!7348440 (= e!4400021 (nullable!8246 (regOne!38822 r1!2370)))))

(declare-fun bm!671772 () Bool)

(assert (=> bm!671772 (= call!671773 (derivationStepZipperDown!2981 (ite c!1365141 (regTwo!38823 r1!2370) (regOne!38822 r1!2370)) (ite c!1365141 lt!2611691 (Context!16191 call!671777)) c!10362))))

(assert (= (and d!2280066 c!1365142) b!7348433))

(assert (= (and d!2280066 (not c!1365142)) b!7348429))

(assert (= (and b!7348429 c!1365141) b!7348435))

(assert (= (and b!7348429 (not c!1365141)) b!7348437))

(assert (= (and b!7348437 res!2967837) b!7348440))

(assert (= (and b!7348437 c!1365143) b!7348431))

(assert (= (and b!7348437 (not c!1365143)) b!7348428))

(assert (= (and b!7348428 c!1365144) b!7348430))

(assert (= (and b!7348428 (not c!1365144)) b!7348434))

(assert (= (and b!7348434 c!1365140) b!7348432))

(assert (= (and b!7348434 (not c!1365140)) b!7348439))

(assert (= (or b!7348430 b!7348432) bm!671771))

(assert (= (or b!7348430 b!7348432) bm!671770))

(assert (= (or b!7348431 bm!671770) bm!671769))

(assert (= (or b!7348431 bm!671771) bm!671768))

(assert (= (or b!7348435 b!7348431) bm!671772))

(assert (= (or b!7348435 bm!671769) bm!671767))

(assert (=> b!7348440 m!8010260))

(declare-fun m!8010296 () Bool)

(assert (=> bm!671768 m!8010296))

(declare-fun m!8010298 () Bool)

(assert (=> b!7348433 m!8010298))

(declare-fun m!8010300 () Bool)

(assert (=> bm!671772 m!8010300))

(declare-fun m!8010302 () Bool)

(assert (=> bm!671767 m!8010302))

(assert (=> b!7348388 d!2280066))

(declare-fun lt!2611696 () List!71651)

(declare-fun e!4400060 () Bool)

(declare-fun b!7348499 () Bool)

(assert (=> b!7348499 (= e!4400060 (or (not (= (exprs!8595 ct2!378) Nil!71527)) (= lt!2611696 (exprs!8595 ct1!282))))))

(declare-fun b!7348497 () Bool)

(declare-fun e!4400059 () List!71651)

(assert (=> b!7348497 (= e!4400059 (Cons!71527 (h!77975 (exprs!8595 ct1!282)) (++!16973 (t!386060 (exprs!8595 ct1!282)) (exprs!8595 ct2!378))))))

(declare-fun b!7348496 () Bool)

(assert (=> b!7348496 (= e!4400059 (exprs!8595 ct2!378))))

(declare-fun d!2280072 () Bool)

(assert (=> d!2280072 e!4400060))

(declare-fun res!2967855 () Bool)

(assert (=> d!2280072 (=> (not res!2967855) (not e!4400060))))

(declare-fun content!15062 (List!71651) (InoxSet Regex!19155))

(assert (=> d!2280072 (= res!2967855 (= (content!15062 lt!2611696) ((_ map or) (content!15062 (exprs!8595 ct1!282)) (content!15062 (exprs!8595 ct2!378)))))))

(assert (=> d!2280072 (= lt!2611696 e!4400059)))

(declare-fun c!1365166 () Bool)

(assert (=> d!2280072 (= c!1365166 ((_ is Nil!71527) (exprs!8595 ct1!282)))))

(assert (=> d!2280072 (= (++!16973 (exprs!8595 ct1!282) (exprs!8595 ct2!378)) lt!2611696)))

(declare-fun b!7348498 () Bool)

(declare-fun res!2967856 () Bool)

(assert (=> b!7348498 (=> (not res!2967856) (not e!4400060))))

(declare-fun size!42041 (List!71651) Int)

(assert (=> b!7348498 (= res!2967856 (= (size!42041 lt!2611696) (+ (size!42041 (exprs!8595 ct1!282)) (size!42041 (exprs!8595 ct2!378)))))))

(assert (= (and d!2280072 c!1365166) b!7348496))

(assert (= (and d!2280072 (not c!1365166)) b!7348497))

(assert (= (and d!2280072 res!2967855) b!7348498))

(assert (= (and b!7348498 res!2967856) b!7348499))

(declare-fun m!8010312 () Bool)

(assert (=> b!7348497 m!8010312))

(declare-fun m!8010314 () Bool)

(assert (=> d!2280072 m!8010314))

(declare-fun m!8010316 () Bool)

(assert (=> d!2280072 m!8010316))

(declare-fun m!8010318 () Bool)

(assert (=> d!2280072 m!8010318))

(declare-fun m!8010320 () Bool)

(assert (=> b!7348498 m!8010320))

(declare-fun m!8010322 () Bool)

(assert (=> b!7348498 m!8010322))

(declare-fun m!8010324 () Bool)

(assert (=> b!7348498 m!8010324))

(assert (=> b!7348388 d!2280072))

(declare-fun d!2280076 () Bool)

(assert (=> d!2280076 (forall!17979 (++!16973 (exprs!8595 ct1!282) (exprs!8595 ct2!378)) lambda!456325)))

(declare-fun lt!2611699 () Unit!165263)

(declare-fun choose!57160 (List!71651 List!71651 Int) Unit!165263)

(assert (=> d!2280076 (= lt!2611699 (choose!57160 (exprs!8595 ct1!282) (exprs!8595 ct2!378) lambda!456325))))

(assert (=> d!2280076 (forall!17979 (exprs!8595 ct1!282) lambda!456325)))

(assert (=> d!2280076 (= (lemmaConcatPreservesForall!1830 (exprs!8595 ct1!282) (exprs!8595 ct2!378) lambda!456325) lt!2611699)))

(declare-fun bs!1919071 () Bool)

(assert (= bs!1919071 d!2280076))

(assert (=> bs!1919071 m!8010288))

(assert (=> bs!1919071 m!8010288))

(declare-fun m!8010334 () Bool)

(assert (=> bs!1919071 m!8010334))

(declare-fun m!8010336 () Bool)

(assert (=> bs!1919071 m!8010336))

(declare-fun m!8010338 () Bool)

(assert (=> bs!1919071 m!8010338))

(assert (=> b!7348388 d!2280076))

(declare-fun d!2280084 () Bool)

(declare-fun res!2967868 () Bool)

(declare-fun e!4400084 () Bool)

(assert (=> d!2280084 (=> res!2967868 e!4400084)))

(assert (=> d!2280084 (= res!2967868 ((_ is Nil!71527) (exprs!8595 ct2!378)))))

(assert (=> d!2280084 (= (forall!17979 (exprs!8595 ct2!378) lambda!456325) e!4400084)))

(declare-fun b!7348535 () Bool)

(declare-fun e!4400085 () Bool)

(assert (=> b!7348535 (= e!4400084 e!4400085)))

(declare-fun res!2967869 () Bool)

(assert (=> b!7348535 (=> (not res!2967869) (not e!4400085))))

(declare-fun dynLambda!29484 (Int Regex!19155) Bool)

(assert (=> b!7348535 (= res!2967869 (dynLambda!29484 lambda!456325 (h!77975 (exprs!8595 ct2!378))))))

(declare-fun b!7348536 () Bool)

(assert (=> b!7348536 (= e!4400085 (forall!17979 (t!386060 (exprs!8595 ct2!378)) lambda!456325))))

(assert (= (and d!2280084 (not res!2967868)) b!7348535))

(assert (= (and b!7348535 res!2967869) b!7348536))

(declare-fun b_lambda!284061 () Bool)

(assert (=> (not b_lambda!284061) (not b!7348535)))

(declare-fun m!8010362 () Bool)

(assert (=> b!7348535 m!8010362))

(declare-fun m!8010364 () Bool)

(assert (=> b!7348536 m!8010364))

(assert (=> b!7348394 d!2280084))

(assert (=> b!7348383 d!2280076))

(declare-fun e!4400087 () Bool)

(declare-fun lt!2611700 () List!71651)

(declare-fun b!7348540 () Bool)

(assert (=> b!7348540 (= e!4400087 (or (not (= (exprs!8595 ct2!378) Nil!71527)) (= lt!2611700 (exprs!8595 cWitness!61))))))

(declare-fun b!7348538 () Bool)

(declare-fun e!4400086 () List!71651)

(assert (=> b!7348538 (= e!4400086 (Cons!71527 (h!77975 (exprs!8595 cWitness!61)) (++!16973 (t!386060 (exprs!8595 cWitness!61)) (exprs!8595 ct2!378))))))

(declare-fun b!7348537 () Bool)

(assert (=> b!7348537 (= e!4400086 (exprs!8595 ct2!378))))

(declare-fun d!2280094 () Bool)

(assert (=> d!2280094 e!4400087))

(declare-fun res!2967870 () Bool)

(assert (=> d!2280094 (=> (not res!2967870) (not e!4400087))))

(assert (=> d!2280094 (= res!2967870 (= (content!15062 lt!2611700) ((_ map or) (content!15062 (exprs!8595 cWitness!61)) (content!15062 (exprs!8595 ct2!378)))))))

(assert (=> d!2280094 (= lt!2611700 e!4400086)))

(declare-fun c!1365179 () Bool)

(assert (=> d!2280094 (= c!1365179 ((_ is Nil!71527) (exprs!8595 cWitness!61)))))

(assert (=> d!2280094 (= (++!16973 (exprs!8595 cWitness!61) (exprs!8595 ct2!378)) lt!2611700)))

(declare-fun b!7348539 () Bool)

(declare-fun res!2967871 () Bool)

(assert (=> b!7348539 (=> (not res!2967871) (not e!4400087))))

(assert (=> b!7348539 (= res!2967871 (= (size!42041 lt!2611700) (+ (size!42041 (exprs!8595 cWitness!61)) (size!42041 (exprs!8595 ct2!378)))))))

(assert (= (and d!2280094 c!1365179) b!7348537))

(assert (= (and d!2280094 (not c!1365179)) b!7348538))

(assert (= (and d!2280094 res!2967870) b!7348539))

(assert (= (and b!7348539 res!2967871) b!7348540))

(declare-fun m!8010366 () Bool)

(assert (=> b!7348538 m!8010366))

(declare-fun m!8010368 () Bool)

(assert (=> d!2280094 m!8010368))

(declare-fun m!8010370 () Bool)

(assert (=> d!2280094 m!8010370))

(assert (=> d!2280094 m!8010318))

(declare-fun m!8010372 () Bool)

(assert (=> b!7348539 m!8010372))

(declare-fun m!8010374 () Bool)

(assert (=> b!7348539 m!8010374))

(assert (=> b!7348539 m!8010324))

(assert (=> b!7348383 d!2280094))

(declare-fun bs!1919086 () Bool)

(declare-fun d!2280096 () Bool)

(assert (= bs!1919086 (and d!2280096 b!7348388)))

(declare-fun lambda!456340 () Int)

(assert (=> bs!1919086 (= lambda!456340 lambda!456325)))

(assert (=> d!2280096 (select (derivationStepZipperDown!2981 (regTwo!38822 r1!2370) (Context!16191 (++!16973 (exprs!8595 ct1!282) (exprs!8595 ct2!378))) c!10362) (Context!16191 (++!16973 (exprs!8595 cWitness!61) (exprs!8595 ct2!378))))))

(declare-fun lt!2611725 () Unit!165263)

(assert (=> d!2280096 (= lt!2611725 (lemmaConcatPreservesForall!1830 (exprs!8595 ct1!282) (exprs!8595 ct2!378) lambda!456340))))

(declare-fun lt!2611724 () Unit!165263)

(assert (=> d!2280096 (= lt!2611724 (lemmaConcatPreservesForall!1830 (exprs!8595 cWitness!61) (exprs!8595 ct2!378) lambda!456340))))

(declare-fun lt!2611723 () Unit!165263)

(declare-fun choose!57163 (Regex!19155 Context!16190 Context!16190 Context!16190 C!38584) Unit!165263)

(assert (=> d!2280096 (= lt!2611723 (choose!57163 (regTwo!38822 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2280096 (validRegex!9751 (regTwo!38822 r1!2370))))

(assert (=> d!2280096 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!80 (regTwo!38822 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2611723)))

(declare-fun bs!1919087 () Bool)

(assert (= bs!1919087 d!2280096))

(assert (=> bs!1919087 m!8010288))

(assert (=> bs!1919087 m!8010274))

(declare-fun m!8010422 () Bool)

(assert (=> bs!1919087 m!8010422))

(declare-fun m!8010424 () Bool)

(assert (=> bs!1919087 m!8010424))

(declare-fun m!8010426 () Bool)

(assert (=> bs!1919087 m!8010426))

(assert (=> bs!1919087 m!8010252))

(declare-fun m!8010428 () Bool)

(assert (=> bs!1919087 m!8010428))

(declare-fun m!8010430 () Bool)

(assert (=> bs!1919087 m!8010430))

(assert (=> b!7348383 d!2280096))

(declare-fun d!2280110 () Bool)

(declare-fun res!2967882 () Bool)

(declare-fun e!4400108 () Bool)

(assert (=> d!2280110 (=> res!2967882 e!4400108)))

(assert (=> d!2280110 (= res!2967882 ((_ is Nil!71527) (exprs!8595 cWitness!61)))))

(assert (=> d!2280110 (= (forall!17979 (exprs!8595 cWitness!61) lambda!456325) e!4400108)))

(declare-fun b!7348577 () Bool)

(declare-fun e!4400109 () Bool)

(assert (=> b!7348577 (= e!4400108 e!4400109)))

(declare-fun res!2967883 () Bool)

(assert (=> b!7348577 (=> (not res!2967883) (not e!4400109))))

(assert (=> b!7348577 (= res!2967883 (dynLambda!29484 lambda!456325 (h!77975 (exprs!8595 cWitness!61))))))

(declare-fun b!7348578 () Bool)

(assert (=> b!7348578 (= e!4400109 (forall!17979 (t!386060 (exprs!8595 cWitness!61)) lambda!456325))))

(assert (= (and d!2280110 (not res!2967882)) b!7348577))

(assert (= (and b!7348577 res!2967883) b!7348578))

(declare-fun b_lambda!284065 () Bool)

(assert (=> (not b_lambda!284065) (not b!7348577)))

(declare-fun m!8010446 () Bool)

(assert (=> b!7348577 m!8010446))

(declare-fun m!8010450 () Bool)

(assert (=> b!7348578 m!8010450))

(assert (=> b!7348383 d!2280110))

(declare-fun b!7348592 () Bool)

(declare-fun e!4400120 () (InoxSet Context!16190))

(declare-fun e!4400124 () (InoxSet Context!16190))

(assert (=> b!7348592 (= e!4400120 e!4400124)))

(declare-fun c!1365202 () Bool)

(assert (=> b!7348592 (= c!1365202 ((_ is Concat!28000) (regTwo!38822 r1!2370)))))

(declare-fun b!7348593 () Bool)

(declare-fun e!4400119 () (InoxSet Context!16190))

(declare-fun e!4400122 () (InoxSet Context!16190))

(assert (=> b!7348593 (= e!4400119 e!4400122)))

(declare-fun c!1365199 () Bool)

(assert (=> b!7348593 (= c!1365199 ((_ is Union!19155) (regTwo!38822 r1!2370)))))

(declare-fun b!7348594 () Bool)

(declare-fun call!671832 () (InoxSet Context!16190))

(assert (=> b!7348594 (= e!4400124 call!671832)))

(declare-fun call!671836 () List!71651)

(declare-fun call!671834 () (InoxSet Context!16190))

(declare-fun bm!671827 () Bool)

(declare-fun c!1365201 () Bool)

(assert (=> bm!671827 (= call!671834 (derivationStepZipperDown!2981 (ite c!1365199 (regOne!38823 (regTwo!38822 r1!2370)) (ite c!1365201 (regTwo!38822 (regTwo!38822 r1!2370)) (ite c!1365202 (regOne!38822 (regTwo!38822 r1!2370)) (reg!19484 (regTwo!38822 r1!2370))))) (ite (or c!1365199 c!1365201) lt!2611691 (Context!16191 call!671836)) c!10362))))

(declare-fun bm!671828 () Bool)

(declare-fun call!671837 () List!71651)

(assert (=> bm!671828 (= call!671837 ($colon$colon!3153 (exprs!8595 lt!2611691) (ite (or c!1365201 c!1365202) (regTwo!38822 (regTwo!38822 r1!2370)) (regTwo!38822 r1!2370))))))

(declare-fun b!7348595 () Bool)

(declare-fun call!671833 () (InoxSet Context!16190))

(declare-fun call!671835 () (InoxSet Context!16190))

(assert (=> b!7348595 (= e!4400120 ((_ map or) call!671833 call!671835))))

(declare-fun b!7348596 () Bool)

(declare-fun e!4400121 () (InoxSet Context!16190))

(assert (=> b!7348596 (= e!4400121 call!671832)))

(declare-fun bm!671829 () Bool)

(assert (=> bm!671829 (= call!671835 call!671834)))

(declare-fun b!7348597 () Bool)

(assert (=> b!7348597 (= e!4400119 (store ((as const (Array Context!16190 Bool)) false) lt!2611691 true))))

(declare-fun b!7348598 () Bool)

(declare-fun c!1365198 () Bool)

(assert (=> b!7348598 (= c!1365198 ((_ is Star!19155) (regTwo!38822 r1!2370)))))

(assert (=> b!7348598 (= e!4400124 e!4400121)))

(declare-fun bm!671830 () Bool)

(assert (=> bm!671830 (= call!671832 call!671835)))

(declare-fun b!7348599 () Bool)

(assert (=> b!7348599 (= e!4400122 ((_ map or) call!671834 call!671833))))

(declare-fun b!7348600 () Bool)

(declare-fun e!4400123 () Bool)

(assert (=> b!7348600 (= c!1365201 e!4400123)))

(declare-fun res!2967891 () Bool)

(assert (=> b!7348600 (=> (not res!2967891) (not e!4400123))))

(assert (=> b!7348600 (= res!2967891 ((_ is Concat!28000) (regTwo!38822 r1!2370)))))

(assert (=> b!7348600 (= e!4400122 e!4400120)))

(declare-fun b!7348601 () Bool)

(assert (=> b!7348601 (= e!4400121 ((as const (Array Context!16190 Bool)) false))))

(declare-fun d!2280116 () Bool)

(declare-fun c!1365200 () Bool)

(assert (=> d!2280116 (= c!1365200 (and ((_ is ElementMatch!19155) (regTwo!38822 r1!2370)) (= (c!1365129 (regTwo!38822 r1!2370)) c!10362)))))

(assert (=> d!2280116 (= (derivationStepZipperDown!2981 (regTwo!38822 r1!2370) lt!2611691 c!10362) e!4400119)))

(declare-fun bm!671831 () Bool)

(assert (=> bm!671831 (= call!671836 call!671837)))

(declare-fun b!7348602 () Bool)

(assert (=> b!7348602 (= e!4400123 (nullable!8246 (regOne!38822 (regTwo!38822 r1!2370))))))

(declare-fun bm!671832 () Bool)

(assert (=> bm!671832 (= call!671833 (derivationStepZipperDown!2981 (ite c!1365199 (regTwo!38823 (regTwo!38822 r1!2370)) (regOne!38822 (regTwo!38822 r1!2370))) (ite c!1365199 lt!2611691 (Context!16191 call!671837)) c!10362))))

(assert (= (and d!2280116 c!1365200) b!7348597))

(assert (= (and d!2280116 (not c!1365200)) b!7348593))

(assert (= (and b!7348593 c!1365199) b!7348599))

(assert (= (and b!7348593 (not c!1365199)) b!7348600))

(assert (= (and b!7348600 res!2967891) b!7348602))

(assert (= (and b!7348600 c!1365201) b!7348595))

(assert (= (and b!7348600 (not c!1365201)) b!7348592))

(assert (= (and b!7348592 c!1365202) b!7348594))

(assert (= (and b!7348592 (not c!1365202)) b!7348598))

(assert (= (and b!7348598 c!1365198) b!7348596))

(assert (= (and b!7348598 (not c!1365198)) b!7348601))

(assert (= (or b!7348594 b!7348596) bm!671831))

(assert (= (or b!7348594 b!7348596) bm!671830))

(assert (= (or b!7348595 bm!671830) bm!671829))

(assert (= (or b!7348595 bm!671831) bm!671828))

(assert (= (or b!7348599 b!7348595) bm!671832))

(assert (= (or b!7348599 bm!671829) bm!671827))

(declare-fun m!8010460 () Bool)

(assert (=> b!7348602 m!8010460))

(declare-fun m!8010462 () Bool)

(assert (=> bm!671828 m!8010462))

(assert (=> b!7348597 m!8010298))

(declare-fun m!8010464 () Bool)

(assert (=> bm!671832 m!8010464))

(declare-fun m!8010466 () Bool)

(assert (=> bm!671827 m!8010466))

(assert (=> b!7348383 d!2280116))

(declare-fun d!2280120 () Bool)

(assert (=> d!2280120 (forall!17979 (++!16973 (exprs!8595 cWitness!61) (exprs!8595 ct2!378)) lambda!456325)))

(declare-fun lt!2611727 () Unit!165263)

(assert (=> d!2280120 (= lt!2611727 (choose!57160 (exprs!8595 cWitness!61) (exprs!8595 ct2!378) lambda!456325))))

(assert (=> d!2280120 (forall!17979 (exprs!8595 cWitness!61) lambda!456325)))

(assert (=> d!2280120 (= (lemmaConcatPreservesForall!1830 (exprs!8595 cWitness!61) (exprs!8595 ct2!378) lambda!456325) lt!2611727)))

(declare-fun bs!1919089 () Bool)

(assert (= bs!1919089 d!2280120))

(assert (=> bs!1919089 m!8010252))

(assert (=> bs!1919089 m!8010252))

(declare-fun m!8010468 () Bool)

(assert (=> bs!1919089 m!8010468))

(declare-fun m!8010470 () Bool)

(assert (=> bs!1919089 m!8010470))

(assert (=> bs!1919089 m!8010248))

(assert (=> b!7348383 d!2280120))

(declare-fun b!7348658 () Bool)

(declare-fun e!4400154 () Bool)

(declare-fun e!4400153 () Bool)

(assert (=> b!7348658 (= e!4400154 e!4400153)))

(declare-fun res!2967904 () Bool)

(assert (=> b!7348658 (=> (not res!2967904) (not e!4400153))))

(declare-fun call!671846 () Bool)

(assert (=> b!7348658 (= res!2967904 call!671846)))

(declare-fun b!7348659 () Bool)

(declare-fun e!4400157 () Bool)

(declare-fun call!671845 () Bool)

(assert (=> b!7348659 (= e!4400157 call!671845)))

(declare-fun b!7348660 () Bool)

(declare-fun e!4400155 () Bool)

(assert (=> b!7348660 (= e!4400155 call!671846)))

(declare-fun b!7348661 () Bool)

(declare-fun e!4400156 () Bool)

(declare-fun e!4400152 () Bool)

(assert (=> b!7348661 (= e!4400156 e!4400152)))

(declare-fun c!1365207 () Bool)

(assert (=> b!7348661 (= c!1365207 ((_ is Star!19155) (regTwo!38822 r1!2370)))))

(declare-fun b!7348662 () Bool)

(declare-fun res!2967906 () Bool)

(assert (=> b!7348662 (=> (not res!2967906) (not e!4400155))))

(declare-fun call!671844 () Bool)

(assert (=> b!7348662 (= res!2967906 call!671844)))

(declare-fun e!4400151 () Bool)

(assert (=> b!7348662 (= e!4400151 e!4400155)))

(declare-fun b!7348663 () Bool)

(declare-fun res!2967905 () Bool)

(assert (=> b!7348663 (=> res!2967905 e!4400154)))

(assert (=> b!7348663 (= res!2967905 (not ((_ is Concat!28000) (regTwo!38822 r1!2370))))))

(assert (=> b!7348663 (= e!4400151 e!4400154)))

(declare-fun bm!671839 () Bool)

(assert (=> bm!671839 (= call!671846 call!671845)))

(declare-fun b!7348664 () Bool)

(assert (=> b!7348664 (= e!4400153 call!671844)))

(declare-fun b!7348665 () Bool)

(assert (=> b!7348665 (= e!4400152 e!4400157)))

(declare-fun res!2967903 () Bool)

(assert (=> b!7348665 (= res!2967903 (not (nullable!8246 (reg!19484 (regTwo!38822 r1!2370)))))))

(assert (=> b!7348665 (=> (not res!2967903) (not e!4400157))))

(declare-fun d!2280122 () Bool)

(declare-fun res!2967902 () Bool)

(assert (=> d!2280122 (=> res!2967902 e!4400156)))

(assert (=> d!2280122 (= res!2967902 ((_ is ElementMatch!19155) (regTwo!38822 r1!2370)))))

(assert (=> d!2280122 (= (validRegex!9751 (regTwo!38822 r1!2370)) e!4400156)))

(declare-fun c!1365208 () Bool)

(declare-fun bm!671840 () Bool)

(assert (=> bm!671840 (= call!671845 (validRegex!9751 (ite c!1365207 (reg!19484 (regTwo!38822 r1!2370)) (ite c!1365208 (regTwo!38823 (regTwo!38822 r1!2370)) (regOne!38822 (regTwo!38822 r1!2370))))))))

(declare-fun b!7348666 () Bool)

(assert (=> b!7348666 (= e!4400152 e!4400151)))

(assert (=> b!7348666 (= c!1365208 ((_ is Union!19155) (regTwo!38822 r1!2370)))))

(declare-fun bm!671841 () Bool)

(assert (=> bm!671841 (= call!671844 (validRegex!9751 (ite c!1365208 (regOne!38823 (regTwo!38822 r1!2370)) (regTwo!38822 (regTwo!38822 r1!2370)))))))

(assert (= (and d!2280122 (not res!2967902)) b!7348661))

(assert (= (and b!7348661 c!1365207) b!7348665))

(assert (= (and b!7348661 (not c!1365207)) b!7348666))

(assert (= (and b!7348665 res!2967903) b!7348659))

(assert (= (and b!7348666 c!1365208) b!7348662))

(assert (= (and b!7348666 (not c!1365208)) b!7348663))

(assert (= (and b!7348662 res!2967906) b!7348660))

(assert (= (and b!7348663 (not res!2967905)) b!7348658))

(assert (= (and b!7348658 res!2967904) b!7348664))

(assert (= (or b!7348662 b!7348664) bm!671841))

(assert (= (or b!7348660 b!7348658) bm!671839))

(assert (= (or b!7348659 bm!671839) bm!671840))

(declare-fun m!8010476 () Bool)

(assert (=> b!7348665 m!8010476))

(declare-fun m!8010478 () Bool)

(assert (=> bm!671840 m!8010478))

(declare-fun m!8010480 () Bool)

(assert (=> bm!671841 m!8010480))

(assert (=> b!7348384 d!2280122))

(declare-fun b!7348667 () Bool)

(declare-fun e!4400159 () (InoxSet Context!16190))

(declare-fun e!4400163 () (InoxSet Context!16190))

(assert (=> b!7348667 (= e!4400159 e!4400163)))

(declare-fun c!1365213 () Bool)

(assert (=> b!7348667 (= c!1365213 ((_ is Concat!28000) r1!2370))))

(declare-fun b!7348668 () Bool)

(declare-fun e!4400158 () (InoxSet Context!16190))

(declare-fun e!4400161 () (InoxSet Context!16190))

(assert (=> b!7348668 (= e!4400158 e!4400161)))

(declare-fun c!1365210 () Bool)

(assert (=> b!7348668 (= c!1365210 ((_ is Union!19155) r1!2370))))

(declare-fun b!7348669 () Bool)

(declare-fun call!671847 () (InoxSet Context!16190))

(assert (=> b!7348669 (= e!4400163 call!671847)))

(declare-fun bm!671842 () Bool)

(declare-fun call!671851 () List!71651)

(declare-fun c!1365212 () Bool)

(declare-fun call!671849 () (InoxSet Context!16190))

(assert (=> bm!671842 (= call!671849 (derivationStepZipperDown!2981 (ite c!1365210 (regOne!38823 r1!2370) (ite c!1365212 (regTwo!38822 r1!2370) (ite c!1365213 (regOne!38822 r1!2370) (reg!19484 r1!2370)))) (ite (or c!1365210 c!1365212) ct1!282 (Context!16191 call!671851)) c!10362))))

(declare-fun call!671852 () List!71651)

(declare-fun bm!671843 () Bool)

(assert (=> bm!671843 (= call!671852 ($colon$colon!3153 (exprs!8595 ct1!282) (ite (or c!1365212 c!1365213) (regTwo!38822 r1!2370) r1!2370)))))

(declare-fun b!7348670 () Bool)

(declare-fun call!671848 () (InoxSet Context!16190))

(declare-fun call!671850 () (InoxSet Context!16190))

(assert (=> b!7348670 (= e!4400159 ((_ map or) call!671848 call!671850))))

(declare-fun b!7348671 () Bool)

(declare-fun e!4400160 () (InoxSet Context!16190))

(assert (=> b!7348671 (= e!4400160 call!671847)))

(declare-fun bm!671844 () Bool)

(assert (=> bm!671844 (= call!671850 call!671849)))

(declare-fun b!7348672 () Bool)

(assert (=> b!7348672 (= e!4400158 (store ((as const (Array Context!16190 Bool)) false) ct1!282 true))))

(declare-fun b!7348673 () Bool)

(declare-fun c!1365209 () Bool)

(assert (=> b!7348673 (= c!1365209 ((_ is Star!19155) r1!2370))))

(assert (=> b!7348673 (= e!4400163 e!4400160)))

(declare-fun bm!671845 () Bool)

(assert (=> bm!671845 (= call!671847 call!671850)))

(declare-fun b!7348674 () Bool)

(assert (=> b!7348674 (= e!4400161 ((_ map or) call!671849 call!671848))))

(declare-fun b!7348675 () Bool)

(declare-fun e!4400162 () Bool)

(assert (=> b!7348675 (= c!1365212 e!4400162)))

(declare-fun res!2967907 () Bool)

(assert (=> b!7348675 (=> (not res!2967907) (not e!4400162))))

(assert (=> b!7348675 (= res!2967907 ((_ is Concat!28000) r1!2370))))

(assert (=> b!7348675 (= e!4400161 e!4400159)))

(declare-fun b!7348676 () Bool)

(assert (=> b!7348676 (= e!4400160 ((as const (Array Context!16190 Bool)) false))))

(declare-fun d!2280128 () Bool)

(declare-fun c!1365211 () Bool)

(assert (=> d!2280128 (= c!1365211 (and ((_ is ElementMatch!19155) r1!2370) (= (c!1365129 r1!2370) c!10362)))))

(assert (=> d!2280128 (= (derivationStepZipperDown!2981 r1!2370 ct1!282 c!10362) e!4400158)))

(declare-fun bm!671846 () Bool)

(assert (=> bm!671846 (= call!671851 call!671852)))

(declare-fun b!7348677 () Bool)

(assert (=> b!7348677 (= e!4400162 (nullable!8246 (regOne!38822 r1!2370)))))

(declare-fun bm!671847 () Bool)

(assert (=> bm!671847 (= call!671848 (derivationStepZipperDown!2981 (ite c!1365210 (regTwo!38823 r1!2370) (regOne!38822 r1!2370)) (ite c!1365210 ct1!282 (Context!16191 call!671852)) c!10362))))

(assert (= (and d!2280128 c!1365211) b!7348672))

(assert (= (and d!2280128 (not c!1365211)) b!7348668))

(assert (= (and b!7348668 c!1365210) b!7348674))

(assert (= (and b!7348668 (not c!1365210)) b!7348675))

(assert (= (and b!7348675 res!2967907) b!7348677))

(assert (= (and b!7348675 c!1365212) b!7348670))

(assert (= (and b!7348675 (not c!1365212)) b!7348667))

(assert (= (and b!7348667 c!1365213) b!7348669))

(assert (= (and b!7348667 (not c!1365213)) b!7348673))

(assert (= (and b!7348673 c!1365209) b!7348671))

(assert (= (and b!7348673 (not c!1365209)) b!7348676))

(assert (= (or b!7348669 b!7348671) bm!671846))

(assert (= (or b!7348669 b!7348671) bm!671845))

(assert (= (or b!7348670 bm!671845) bm!671844))

(assert (= (or b!7348670 bm!671846) bm!671843))

(assert (= (or b!7348674 b!7348670) bm!671847))

(assert (= (or b!7348674 bm!671844) bm!671842))

(assert (=> b!7348677 m!8010260))

(declare-fun m!8010482 () Bool)

(assert (=> bm!671843 m!8010482))

(declare-fun m!8010484 () Bool)

(assert (=> b!7348672 m!8010484))

(declare-fun m!8010486 () Bool)

(assert (=> bm!671847 m!8010486))

(declare-fun m!8010488 () Bool)

(assert (=> bm!671842 m!8010488))

(assert (=> b!7348395 d!2280128))

(declare-fun b!7348678 () Bool)

(declare-fun e!4400165 () (InoxSet Context!16190))

(declare-fun e!4400169 () (InoxSet Context!16190))

(assert (=> b!7348678 (= e!4400165 e!4400169)))

(declare-fun c!1365218 () Bool)

(assert (=> b!7348678 (= c!1365218 ((_ is Concat!28000) (regTwo!38822 r1!2370)))))

(declare-fun b!7348679 () Bool)

(declare-fun e!4400164 () (InoxSet Context!16190))

(declare-fun e!4400167 () (InoxSet Context!16190))

(assert (=> b!7348679 (= e!4400164 e!4400167)))

(declare-fun c!1365215 () Bool)

(assert (=> b!7348679 (= c!1365215 ((_ is Union!19155) (regTwo!38822 r1!2370)))))

(declare-fun b!7348680 () Bool)

(declare-fun call!671853 () (InoxSet Context!16190))

(assert (=> b!7348680 (= e!4400169 call!671853)))

(declare-fun call!671855 () (InoxSet Context!16190))

(declare-fun call!671857 () List!71651)

(declare-fun bm!671848 () Bool)

(declare-fun c!1365217 () Bool)

(assert (=> bm!671848 (= call!671855 (derivationStepZipperDown!2981 (ite c!1365215 (regOne!38823 (regTwo!38822 r1!2370)) (ite c!1365217 (regTwo!38822 (regTwo!38822 r1!2370)) (ite c!1365218 (regOne!38822 (regTwo!38822 r1!2370)) (reg!19484 (regTwo!38822 r1!2370))))) (ite (or c!1365215 c!1365217) ct1!282 (Context!16191 call!671857)) c!10362))))

(declare-fun bm!671849 () Bool)

(declare-fun call!671858 () List!71651)

(assert (=> bm!671849 (= call!671858 ($colon$colon!3153 (exprs!8595 ct1!282) (ite (or c!1365217 c!1365218) (regTwo!38822 (regTwo!38822 r1!2370)) (regTwo!38822 r1!2370))))))

(declare-fun b!7348681 () Bool)

(declare-fun call!671854 () (InoxSet Context!16190))

(declare-fun call!671856 () (InoxSet Context!16190))

(assert (=> b!7348681 (= e!4400165 ((_ map or) call!671854 call!671856))))

(declare-fun b!7348682 () Bool)

(declare-fun e!4400166 () (InoxSet Context!16190))

(assert (=> b!7348682 (= e!4400166 call!671853)))

(declare-fun bm!671850 () Bool)

(assert (=> bm!671850 (= call!671856 call!671855)))

(declare-fun b!7348683 () Bool)

(assert (=> b!7348683 (= e!4400164 (store ((as const (Array Context!16190 Bool)) false) ct1!282 true))))

(declare-fun b!7348684 () Bool)

(declare-fun c!1365214 () Bool)

(assert (=> b!7348684 (= c!1365214 ((_ is Star!19155) (regTwo!38822 r1!2370)))))

(assert (=> b!7348684 (= e!4400169 e!4400166)))

(declare-fun bm!671851 () Bool)

(assert (=> bm!671851 (= call!671853 call!671856)))

(declare-fun b!7348685 () Bool)

(assert (=> b!7348685 (= e!4400167 ((_ map or) call!671855 call!671854))))

(declare-fun b!7348686 () Bool)

(declare-fun e!4400168 () Bool)

(assert (=> b!7348686 (= c!1365217 e!4400168)))

(declare-fun res!2967908 () Bool)

(assert (=> b!7348686 (=> (not res!2967908) (not e!4400168))))

(assert (=> b!7348686 (= res!2967908 ((_ is Concat!28000) (regTwo!38822 r1!2370)))))

(assert (=> b!7348686 (= e!4400167 e!4400165)))

(declare-fun b!7348687 () Bool)

(assert (=> b!7348687 (= e!4400166 ((as const (Array Context!16190 Bool)) false))))

(declare-fun d!2280130 () Bool)

(declare-fun c!1365216 () Bool)

(assert (=> d!2280130 (= c!1365216 (and ((_ is ElementMatch!19155) (regTwo!38822 r1!2370)) (= (c!1365129 (regTwo!38822 r1!2370)) c!10362)))))

(assert (=> d!2280130 (= (derivationStepZipperDown!2981 (regTwo!38822 r1!2370) ct1!282 c!10362) e!4400164)))

(declare-fun bm!671852 () Bool)

(assert (=> bm!671852 (= call!671857 call!671858)))

(declare-fun b!7348688 () Bool)

(assert (=> b!7348688 (= e!4400168 (nullable!8246 (regOne!38822 (regTwo!38822 r1!2370))))))

(declare-fun bm!671853 () Bool)

(assert (=> bm!671853 (= call!671854 (derivationStepZipperDown!2981 (ite c!1365215 (regTwo!38823 (regTwo!38822 r1!2370)) (regOne!38822 (regTwo!38822 r1!2370))) (ite c!1365215 ct1!282 (Context!16191 call!671858)) c!10362))))

(assert (= (and d!2280130 c!1365216) b!7348683))

(assert (= (and d!2280130 (not c!1365216)) b!7348679))

(assert (= (and b!7348679 c!1365215) b!7348685))

(assert (= (and b!7348679 (not c!1365215)) b!7348686))

(assert (= (and b!7348686 res!2967908) b!7348688))

(assert (= (and b!7348686 c!1365217) b!7348681))

(assert (= (and b!7348686 (not c!1365217)) b!7348678))

(assert (= (and b!7348678 c!1365218) b!7348680))

(assert (= (and b!7348678 (not c!1365218)) b!7348684))

(assert (= (and b!7348684 c!1365214) b!7348682))

(assert (= (and b!7348684 (not c!1365214)) b!7348687))

(assert (= (or b!7348680 b!7348682) bm!671852))

(assert (= (or b!7348680 b!7348682) bm!671851))

(assert (= (or b!7348681 bm!671851) bm!671850))

(assert (= (or b!7348681 bm!671852) bm!671849))

(assert (= (or b!7348685 b!7348681) bm!671853))

(assert (= (or b!7348685 bm!671850) bm!671848))

(assert (=> b!7348688 m!8010460))

(declare-fun m!8010490 () Bool)

(assert (=> bm!671849 m!8010490))

(assert (=> b!7348683 m!8010484))

(declare-fun m!8010492 () Bool)

(assert (=> bm!671853 m!8010492))

(declare-fun m!8010494 () Bool)

(assert (=> bm!671848 m!8010494))

(assert (=> b!7348386 d!2280130))

(declare-fun b!7348689 () Bool)

(declare-fun e!4400171 () (InoxSet Context!16190))

(declare-fun e!4400175 () (InoxSet Context!16190))

(assert (=> b!7348689 (= e!4400171 e!4400175)))

(declare-fun c!1365223 () Bool)

(assert (=> b!7348689 (= c!1365223 ((_ is Concat!28000) (regOne!38822 r1!2370)))))

(declare-fun b!7348690 () Bool)

(declare-fun e!4400170 () (InoxSet Context!16190))

(declare-fun e!4400173 () (InoxSet Context!16190))

(assert (=> b!7348690 (= e!4400170 e!4400173)))

(declare-fun c!1365220 () Bool)

(assert (=> b!7348690 (= c!1365220 ((_ is Union!19155) (regOne!38822 r1!2370)))))

(declare-fun b!7348691 () Bool)

(declare-fun call!671859 () (InoxSet Context!16190))

(assert (=> b!7348691 (= e!4400175 call!671859)))

(declare-fun c!1365222 () Bool)

(declare-fun call!671863 () List!71651)

(declare-fun bm!671854 () Bool)

(declare-fun call!671861 () (InoxSet Context!16190))

(assert (=> bm!671854 (= call!671861 (derivationStepZipperDown!2981 (ite c!1365220 (regOne!38823 (regOne!38822 r1!2370)) (ite c!1365222 (regTwo!38822 (regOne!38822 r1!2370)) (ite c!1365223 (regOne!38822 (regOne!38822 r1!2370)) (reg!19484 (regOne!38822 r1!2370))))) (ite (or c!1365220 c!1365222) (Context!16191 ($colon$colon!3153 (exprs!8595 ct1!282) (regTwo!38822 r1!2370))) (Context!16191 call!671863)) c!10362))))

(declare-fun call!671864 () List!71651)

(declare-fun bm!671855 () Bool)

(assert (=> bm!671855 (= call!671864 ($colon$colon!3153 (exprs!8595 (Context!16191 ($colon$colon!3153 (exprs!8595 ct1!282) (regTwo!38822 r1!2370)))) (ite (or c!1365222 c!1365223) (regTwo!38822 (regOne!38822 r1!2370)) (regOne!38822 r1!2370))))))

(declare-fun b!7348692 () Bool)

(declare-fun call!671860 () (InoxSet Context!16190))

(declare-fun call!671862 () (InoxSet Context!16190))

(assert (=> b!7348692 (= e!4400171 ((_ map or) call!671860 call!671862))))

(declare-fun b!7348693 () Bool)

(declare-fun e!4400172 () (InoxSet Context!16190))

(assert (=> b!7348693 (= e!4400172 call!671859)))

(declare-fun bm!671856 () Bool)

(assert (=> bm!671856 (= call!671862 call!671861)))

(declare-fun b!7348694 () Bool)

(assert (=> b!7348694 (= e!4400170 (store ((as const (Array Context!16190 Bool)) false) (Context!16191 ($colon$colon!3153 (exprs!8595 ct1!282) (regTwo!38822 r1!2370))) true))))

(declare-fun b!7348695 () Bool)

(declare-fun c!1365219 () Bool)

(assert (=> b!7348695 (= c!1365219 ((_ is Star!19155) (regOne!38822 r1!2370)))))

(assert (=> b!7348695 (= e!4400175 e!4400172)))

(declare-fun bm!671857 () Bool)

(assert (=> bm!671857 (= call!671859 call!671862)))

(declare-fun b!7348696 () Bool)

(assert (=> b!7348696 (= e!4400173 ((_ map or) call!671861 call!671860))))

(declare-fun b!7348697 () Bool)

(declare-fun e!4400174 () Bool)

(assert (=> b!7348697 (= c!1365222 e!4400174)))

(declare-fun res!2967909 () Bool)

(assert (=> b!7348697 (=> (not res!2967909) (not e!4400174))))

(assert (=> b!7348697 (= res!2967909 ((_ is Concat!28000) (regOne!38822 r1!2370)))))

(assert (=> b!7348697 (= e!4400173 e!4400171)))

(declare-fun b!7348698 () Bool)

(assert (=> b!7348698 (= e!4400172 ((as const (Array Context!16190 Bool)) false))))

(declare-fun d!2280132 () Bool)

(declare-fun c!1365221 () Bool)

(assert (=> d!2280132 (= c!1365221 (and ((_ is ElementMatch!19155) (regOne!38822 r1!2370)) (= (c!1365129 (regOne!38822 r1!2370)) c!10362)))))

(assert (=> d!2280132 (= (derivationStepZipperDown!2981 (regOne!38822 r1!2370) (Context!16191 ($colon$colon!3153 (exprs!8595 ct1!282) (regTwo!38822 r1!2370))) c!10362) e!4400170)))

(declare-fun bm!671858 () Bool)

(assert (=> bm!671858 (= call!671863 call!671864)))

(declare-fun b!7348699 () Bool)

(assert (=> b!7348699 (= e!4400174 (nullable!8246 (regOne!38822 (regOne!38822 r1!2370))))))

(declare-fun bm!671859 () Bool)

(assert (=> bm!671859 (= call!671860 (derivationStepZipperDown!2981 (ite c!1365220 (regTwo!38823 (regOne!38822 r1!2370)) (regOne!38822 (regOne!38822 r1!2370))) (ite c!1365220 (Context!16191 ($colon$colon!3153 (exprs!8595 ct1!282) (regTwo!38822 r1!2370))) (Context!16191 call!671864)) c!10362))))

(assert (= (and d!2280132 c!1365221) b!7348694))

(assert (= (and d!2280132 (not c!1365221)) b!7348690))

(assert (= (and b!7348690 c!1365220) b!7348696))

(assert (= (and b!7348690 (not c!1365220)) b!7348697))

(assert (= (and b!7348697 res!2967909) b!7348699))

(assert (= (and b!7348697 c!1365222) b!7348692))

(assert (= (and b!7348697 (not c!1365222)) b!7348689))

(assert (= (and b!7348689 c!1365223) b!7348691))

(assert (= (and b!7348689 (not c!1365223)) b!7348695))

(assert (= (and b!7348695 c!1365219) b!7348693))

(assert (= (and b!7348695 (not c!1365219)) b!7348698))

(assert (= (or b!7348691 b!7348693) bm!671858))

(assert (= (or b!7348691 b!7348693) bm!671857))

(assert (= (or b!7348692 bm!671857) bm!671856))

(assert (= (or b!7348692 bm!671858) bm!671855))

(assert (= (or b!7348696 b!7348692) bm!671859))

(assert (= (or b!7348696 bm!671856) bm!671854))

(declare-fun m!8010496 () Bool)

(assert (=> b!7348699 m!8010496))

(declare-fun m!8010498 () Bool)

(assert (=> bm!671855 m!8010498))

(declare-fun m!8010500 () Bool)

(assert (=> b!7348694 m!8010500))

(declare-fun m!8010502 () Bool)

(assert (=> bm!671859 m!8010502))

(declare-fun m!8010504 () Bool)

(assert (=> bm!671854 m!8010504))

(assert (=> b!7348386 d!2280132))

(declare-fun d!2280134 () Bool)

(assert (=> d!2280134 (= ($colon$colon!3153 (exprs!8595 ct1!282) (regTwo!38822 r1!2370)) (Cons!71527 (regTwo!38822 r1!2370) (exprs!8595 ct1!282)))))

(assert (=> b!7348386 d!2280134))

(declare-fun b!7348700 () Bool)

(declare-fun e!4400179 () Bool)

(declare-fun e!4400178 () Bool)

(assert (=> b!7348700 (= e!4400179 e!4400178)))

(declare-fun res!2967912 () Bool)

(assert (=> b!7348700 (=> (not res!2967912) (not e!4400178))))

(declare-fun call!671867 () Bool)

(assert (=> b!7348700 (= res!2967912 call!671867)))

(declare-fun b!7348701 () Bool)

(declare-fun e!4400182 () Bool)

(declare-fun call!671866 () Bool)

(assert (=> b!7348701 (= e!4400182 call!671866)))

(declare-fun b!7348702 () Bool)

(declare-fun e!4400180 () Bool)

(assert (=> b!7348702 (= e!4400180 call!671867)))

(declare-fun b!7348703 () Bool)

(declare-fun e!4400181 () Bool)

(declare-fun e!4400177 () Bool)

(assert (=> b!7348703 (= e!4400181 e!4400177)))

(declare-fun c!1365224 () Bool)

(assert (=> b!7348703 (= c!1365224 ((_ is Star!19155) r1!2370))))

(declare-fun b!7348704 () Bool)

(declare-fun res!2967914 () Bool)

(assert (=> b!7348704 (=> (not res!2967914) (not e!4400180))))

(declare-fun call!671865 () Bool)

(assert (=> b!7348704 (= res!2967914 call!671865)))

(declare-fun e!4400176 () Bool)

(assert (=> b!7348704 (= e!4400176 e!4400180)))

(declare-fun b!7348705 () Bool)

(declare-fun res!2967913 () Bool)

(assert (=> b!7348705 (=> res!2967913 e!4400179)))

(assert (=> b!7348705 (= res!2967913 (not ((_ is Concat!28000) r1!2370)))))

(assert (=> b!7348705 (= e!4400176 e!4400179)))

(declare-fun bm!671860 () Bool)

(assert (=> bm!671860 (= call!671867 call!671866)))

(declare-fun b!7348706 () Bool)

(assert (=> b!7348706 (= e!4400178 call!671865)))

(declare-fun b!7348707 () Bool)

(assert (=> b!7348707 (= e!4400177 e!4400182)))

(declare-fun res!2967911 () Bool)

(assert (=> b!7348707 (= res!2967911 (not (nullable!8246 (reg!19484 r1!2370))))))

(assert (=> b!7348707 (=> (not res!2967911) (not e!4400182))))

(declare-fun d!2280136 () Bool)

(declare-fun res!2967910 () Bool)

(assert (=> d!2280136 (=> res!2967910 e!4400181)))

(assert (=> d!2280136 (= res!2967910 ((_ is ElementMatch!19155) r1!2370))))

(assert (=> d!2280136 (= (validRegex!9751 r1!2370) e!4400181)))

(declare-fun c!1365225 () Bool)

(declare-fun bm!671861 () Bool)

(assert (=> bm!671861 (= call!671866 (validRegex!9751 (ite c!1365224 (reg!19484 r1!2370) (ite c!1365225 (regTwo!38823 r1!2370) (regOne!38822 r1!2370)))))))

(declare-fun b!7348708 () Bool)

(assert (=> b!7348708 (= e!4400177 e!4400176)))

(assert (=> b!7348708 (= c!1365225 ((_ is Union!19155) r1!2370))))

(declare-fun bm!671862 () Bool)

(assert (=> bm!671862 (= call!671865 (validRegex!9751 (ite c!1365225 (regOne!38823 r1!2370) (regTwo!38822 r1!2370))))))

(assert (= (and d!2280136 (not res!2967910)) b!7348703))

(assert (= (and b!7348703 c!1365224) b!7348707))

(assert (= (and b!7348703 (not c!1365224)) b!7348708))

(assert (= (and b!7348707 res!2967911) b!7348701))

(assert (= (and b!7348708 c!1365225) b!7348704))

(assert (= (and b!7348708 (not c!1365225)) b!7348705))

(assert (= (and b!7348704 res!2967914) b!7348702))

(assert (= (and b!7348705 (not res!2967913)) b!7348700))

(assert (= (and b!7348700 res!2967912) b!7348706))

(assert (= (or b!7348704 b!7348706) bm!671862))

(assert (= (or b!7348702 b!7348700) bm!671860))

(assert (= (or b!7348701 bm!671860) bm!671861))

(declare-fun m!8010506 () Bool)

(assert (=> b!7348707 m!8010506))

(declare-fun m!8010508 () Bool)

(assert (=> bm!671861 m!8010508))

(declare-fun m!8010510 () Bool)

(assert (=> bm!671862 m!8010510))

(assert (=> start!717616 d!2280136))

(declare-fun bs!1919092 () Bool)

(declare-fun d!2280138 () Bool)

(assert (= bs!1919092 (and d!2280138 b!7348388)))

(declare-fun lambda!456343 () Int)

(assert (=> bs!1919092 (= lambda!456343 lambda!456325)))

(declare-fun bs!1919093 () Bool)

(assert (= bs!1919093 (and d!2280138 d!2280096)))

(assert (=> bs!1919093 (= lambda!456343 lambda!456340)))

(assert (=> d!2280138 (= (inv!91227 cWitness!61) (forall!17979 (exprs!8595 cWitness!61) lambda!456343))))

(declare-fun bs!1919094 () Bool)

(assert (= bs!1919094 d!2280138))

(declare-fun m!8010512 () Bool)

(assert (=> bs!1919094 m!8010512))

(assert (=> start!717616 d!2280138))

(declare-fun bs!1919095 () Bool)

(declare-fun d!2280140 () Bool)

(assert (= bs!1919095 (and d!2280140 b!7348388)))

(declare-fun lambda!456344 () Int)

(assert (=> bs!1919095 (= lambda!456344 lambda!456325)))

(declare-fun bs!1919096 () Bool)

(assert (= bs!1919096 (and d!2280140 d!2280096)))

(assert (=> bs!1919096 (= lambda!456344 lambda!456340)))

(declare-fun bs!1919097 () Bool)

(assert (= bs!1919097 (and d!2280140 d!2280138)))

(assert (=> bs!1919097 (= lambda!456344 lambda!456343)))

(assert (=> d!2280140 (= (inv!91227 ct1!282) (forall!17979 (exprs!8595 ct1!282) lambda!456344))))

(declare-fun bs!1919098 () Bool)

(assert (= bs!1919098 d!2280140))

(declare-fun m!8010514 () Bool)

(assert (=> bs!1919098 m!8010514))

(assert (=> start!717616 d!2280140))

(declare-fun bs!1919099 () Bool)

(declare-fun d!2280142 () Bool)

(assert (= bs!1919099 (and d!2280142 b!7348388)))

(declare-fun lambda!456345 () Int)

(assert (=> bs!1919099 (= lambda!456345 lambda!456325)))

(declare-fun bs!1919100 () Bool)

(assert (= bs!1919100 (and d!2280142 d!2280096)))

(assert (=> bs!1919100 (= lambda!456345 lambda!456340)))

(declare-fun bs!1919101 () Bool)

(assert (= bs!1919101 (and d!2280142 d!2280138)))

(assert (=> bs!1919101 (= lambda!456345 lambda!456343)))

(declare-fun bs!1919102 () Bool)

(assert (= bs!1919102 (and d!2280142 d!2280140)))

(assert (=> bs!1919102 (= lambda!456345 lambda!456344)))

(assert (=> d!2280142 (= (inv!91227 ct2!378) (forall!17979 (exprs!8595 ct2!378) lambda!456345))))

(declare-fun bs!1919103 () Bool)

(assert (= bs!1919103 d!2280142))

(declare-fun m!8010516 () Bool)

(assert (=> bs!1919103 m!8010516))

(assert (=> start!717616 d!2280142))

(declare-fun e!4400185 () Bool)

(assert (=> b!7348392 (= tp!2087055 e!4400185)))

(declare-fun b!7348719 () Bool)

(assert (=> b!7348719 (= e!4400185 tp_is_empty!48555)))

(declare-fun b!7348720 () Bool)

(declare-fun tp!2087115 () Bool)

(declare-fun tp!2087116 () Bool)

(assert (=> b!7348720 (= e!4400185 (and tp!2087115 tp!2087116))))

(declare-fun b!7348721 () Bool)

(declare-fun tp!2087117 () Bool)

(assert (=> b!7348721 (= e!4400185 tp!2087117)))

(declare-fun b!7348722 () Bool)

(declare-fun tp!2087113 () Bool)

(declare-fun tp!2087114 () Bool)

(assert (=> b!7348722 (= e!4400185 (and tp!2087113 tp!2087114))))

(assert (= (and b!7348392 ((_ is ElementMatch!19155) (regOne!38822 r1!2370))) b!7348719))

(assert (= (and b!7348392 ((_ is Concat!28000) (regOne!38822 r1!2370))) b!7348720))

(assert (= (and b!7348392 ((_ is Star!19155) (regOne!38822 r1!2370))) b!7348721))

(assert (= (and b!7348392 ((_ is Union!19155) (regOne!38822 r1!2370))) b!7348722))

(declare-fun e!4400186 () Bool)

(assert (=> b!7348392 (= tp!2087054 e!4400186)))

(declare-fun b!7348723 () Bool)

(assert (=> b!7348723 (= e!4400186 tp_is_empty!48555)))

(declare-fun b!7348724 () Bool)

(declare-fun tp!2087120 () Bool)

(declare-fun tp!2087121 () Bool)

(assert (=> b!7348724 (= e!4400186 (and tp!2087120 tp!2087121))))

(declare-fun b!7348725 () Bool)

(declare-fun tp!2087122 () Bool)

(assert (=> b!7348725 (= e!4400186 tp!2087122)))

(declare-fun b!7348726 () Bool)

(declare-fun tp!2087118 () Bool)

(declare-fun tp!2087119 () Bool)

(assert (=> b!7348726 (= e!4400186 (and tp!2087118 tp!2087119))))

(assert (= (and b!7348392 ((_ is ElementMatch!19155) (regTwo!38822 r1!2370))) b!7348723))

(assert (= (and b!7348392 ((_ is Concat!28000) (regTwo!38822 r1!2370))) b!7348724))

(assert (= (and b!7348392 ((_ is Star!19155) (regTwo!38822 r1!2370))) b!7348725))

(assert (= (and b!7348392 ((_ is Union!19155) (regTwo!38822 r1!2370))) b!7348726))

(declare-fun b!7348731 () Bool)

(declare-fun e!4400189 () Bool)

(declare-fun tp!2087127 () Bool)

(declare-fun tp!2087128 () Bool)

(assert (=> b!7348731 (= e!4400189 (and tp!2087127 tp!2087128))))

(assert (=> b!7348387 (= tp!2087050 e!4400189)))

(assert (= (and b!7348387 ((_ is Cons!71527) (exprs!8595 cWitness!61))) b!7348731))

(declare-fun e!4400190 () Bool)

(assert (=> b!7348393 (= tp!2087053 e!4400190)))

(declare-fun b!7348732 () Bool)

(assert (=> b!7348732 (= e!4400190 tp_is_empty!48555)))

(declare-fun b!7348733 () Bool)

(declare-fun tp!2087131 () Bool)

(declare-fun tp!2087132 () Bool)

(assert (=> b!7348733 (= e!4400190 (and tp!2087131 tp!2087132))))

(declare-fun b!7348734 () Bool)

(declare-fun tp!2087133 () Bool)

(assert (=> b!7348734 (= e!4400190 tp!2087133)))

(declare-fun b!7348735 () Bool)

(declare-fun tp!2087129 () Bool)

(declare-fun tp!2087130 () Bool)

(assert (=> b!7348735 (= e!4400190 (and tp!2087129 tp!2087130))))

(assert (= (and b!7348393 ((_ is ElementMatch!19155) (reg!19484 r1!2370))) b!7348732))

(assert (= (and b!7348393 ((_ is Concat!28000) (reg!19484 r1!2370))) b!7348733))

(assert (= (and b!7348393 ((_ is Star!19155) (reg!19484 r1!2370))) b!7348734))

(assert (= (and b!7348393 ((_ is Union!19155) (reg!19484 r1!2370))) b!7348735))

(declare-fun b!7348736 () Bool)

(declare-fun e!4400191 () Bool)

(declare-fun tp!2087134 () Bool)

(declare-fun tp!2087135 () Bool)

(assert (=> b!7348736 (= e!4400191 (and tp!2087134 tp!2087135))))

(assert (=> b!7348389 (= tp!2087056 e!4400191)))

(assert (= (and b!7348389 ((_ is Cons!71527) (exprs!8595 ct2!378))) b!7348736))

(declare-fun b!7348737 () Bool)

(declare-fun e!4400192 () Bool)

(declare-fun tp!2087136 () Bool)

(declare-fun tp!2087137 () Bool)

(assert (=> b!7348737 (= e!4400192 (and tp!2087136 tp!2087137))))

(assert (=> b!7348390 (= tp!2087057 e!4400192)))

(assert (= (and b!7348390 ((_ is Cons!71527) (exprs!8595 ct1!282))) b!7348737))

(declare-fun e!4400193 () Bool)

(assert (=> b!7348391 (= tp!2087052 e!4400193)))

(declare-fun b!7348738 () Bool)

(assert (=> b!7348738 (= e!4400193 tp_is_empty!48555)))

(declare-fun b!7348739 () Bool)

(declare-fun tp!2087140 () Bool)

(declare-fun tp!2087141 () Bool)

(assert (=> b!7348739 (= e!4400193 (and tp!2087140 tp!2087141))))

(declare-fun b!7348740 () Bool)

(declare-fun tp!2087142 () Bool)

(assert (=> b!7348740 (= e!4400193 tp!2087142)))

(declare-fun b!7348741 () Bool)

(declare-fun tp!2087138 () Bool)

(declare-fun tp!2087139 () Bool)

(assert (=> b!7348741 (= e!4400193 (and tp!2087138 tp!2087139))))

(assert (= (and b!7348391 ((_ is ElementMatch!19155) (regOne!38823 r1!2370))) b!7348738))

(assert (= (and b!7348391 ((_ is Concat!28000) (regOne!38823 r1!2370))) b!7348739))

(assert (= (and b!7348391 ((_ is Star!19155) (regOne!38823 r1!2370))) b!7348740))

(assert (= (and b!7348391 ((_ is Union!19155) (regOne!38823 r1!2370))) b!7348741))

(declare-fun e!4400194 () Bool)

(assert (=> b!7348391 (= tp!2087051 e!4400194)))

(declare-fun b!7348742 () Bool)

(assert (=> b!7348742 (= e!4400194 tp_is_empty!48555)))

(declare-fun b!7348743 () Bool)

(declare-fun tp!2087145 () Bool)

(declare-fun tp!2087146 () Bool)

(assert (=> b!7348743 (= e!4400194 (and tp!2087145 tp!2087146))))

(declare-fun b!7348744 () Bool)

(declare-fun tp!2087147 () Bool)

(assert (=> b!7348744 (= e!4400194 tp!2087147)))

(declare-fun b!7348745 () Bool)

(declare-fun tp!2087143 () Bool)

(declare-fun tp!2087144 () Bool)

(assert (=> b!7348745 (= e!4400194 (and tp!2087143 tp!2087144))))

(assert (= (and b!7348391 ((_ is ElementMatch!19155) (regTwo!38823 r1!2370))) b!7348742))

(assert (= (and b!7348391 ((_ is Concat!28000) (regTwo!38823 r1!2370))) b!7348743))

(assert (= (and b!7348391 ((_ is Star!19155) (regTwo!38823 r1!2370))) b!7348744))

(assert (= (and b!7348391 ((_ is Union!19155) (regTwo!38823 r1!2370))) b!7348745))

(declare-fun b_lambda!284071 () Bool)

(assert (= b_lambda!284065 (or b!7348388 b_lambda!284071)))

(declare-fun bs!1919104 () Bool)

(declare-fun d!2280144 () Bool)

(assert (= bs!1919104 (and d!2280144 b!7348388)))

(assert (=> bs!1919104 (= (dynLambda!29484 lambda!456325 (h!77975 (exprs!8595 cWitness!61))) (validRegex!9751 (h!77975 (exprs!8595 cWitness!61))))))

(declare-fun m!8010518 () Bool)

(assert (=> bs!1919104 m!8010518))

(assert (=> b!7348577 d!2280144))

(declare-fun b_lambda!284073 () Bool)

(assert (= b_lambda!284061 (or b!7348388 b_lambda!284073)))

(declare-fun bs!1919105 () Bool)

(declare-fun d!2280146 () Bool)

(assert (= bs!1919105 (and d!2280146 b!7348388)))

(assert (=> bs!1919105 (= (dynLambda!29484 lambda!456325 (h!77975 (exprs!8595 ct2!378))) (validRegex!9751 (h!77975 (exprs!8595 ct2!378))))))

(declare-fun m!8010520 () Bool)

(assert (=> bs!1919105 m!8010520))

(assert (=> b!7348535 d!2280146))

(check-sat (not bm!671841) (not bm!671862) (not b!7348736) (not bs!1919105) (not b!7348602) (not b!7348724) tp_is_empty!48555 (not b!7348739) (not d!2280076) (not b!7348740) (not bm!671772) (not b!7348741) (not b!7348722) (not d!2280142) (not bm!671840) (not b!7348677) (not bm!671855) (not bm!671853) (not b!7348743) (not b!7348578) (not d!2280094) (not bm!671832) (not bs!1919104) (not bm!671861) (not d!2280120) (not d!2280138) (not bm!671859) (not b!7348688) (not b!7348536) (not bm!671848) (not bm!671767) (not bm!671843) (not d!2280096) (not b!7348725) (not d!2280140) (not b!7348539) (not b!7348538) (not b!7348721) (not b!7348745) (not d!2280064) (not b_lambda!284071) (not bm!671847) (not b!7348744) (not b!7348707) (not b!7348733) (not bm!671854) (not b!7348498) (not b!7348726) (not bm!671827) (not b!7348699) (not b!7348737) (not bm!671828) (not b!7348734) (not b_lambda!284073) (not bm!671849) (not bm!671768) (not bm!671842) (not b!7348735) (not b!7348665) (not d!2280072) (not b!7348720) (not b!7348440) (not b!7348731) (not b!7348497))
(check-sat)

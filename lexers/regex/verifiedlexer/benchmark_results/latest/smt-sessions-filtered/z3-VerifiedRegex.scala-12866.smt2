; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!710506 () Bool)

(assert start!710506)

(declare-fun b!7275486 () Bool)

(assert (=> b!7275486 true))

(declare-fun b!7275476 () Bool)

(declare-fun res!2949140 () Bool)

(declare-fun e!4362837 () Bool)

(assert (=> b!7275476 (=> (not res!2949140) (not e!4362837))))

(declare-datatypes ((C!37956 0))(
  ( (C!37957 (val!28926 Int)) )
))
(declare-datatypes ((List!70997 0))(
  ( (Nil!70873) (Cons!70873 (h!77321 C!37956) (t!385069 List!70997)) )
))
(declare-fun s!7854 () List!70997)

(get-info :version)

(assert (=> b!7275476 (= res!2949140 ((_ is Cons!70873) s!7854))))

(declare-fun b!7275477 () Bool)

(declare-fun e!4362838 () Bool)

(declare-fun tp!2042024 () Bool)

(assert (=> b!7275477 (= e!4362838 tp!2042024)))

(declare-fun b!7275478 () Bool)

(declare-fun e!4362839 () Bool)

(declare-fun e!4362841 () Bool)

(assert (=> b!7275478 (= e!4362839 e!4362841)))

(declare-fun res!2949137 () Bool)

(assert (=> b!7275478 (=> res!2949137 e!4362841)))

(declare-datatypes ((Regex!18841 0))(
  ( (ElementMatch!18841 (c!1354743 C!37956)) (Concat!27686 (regOne!38194 Regex!18841) (regTwo!38194 Regex!18841)) (EmptyExpr!18841) (Star!18841 (reg!19170 Regex!18841)) (EmptyLang!18841) (Union!18841 (regOne!38195 Regex!18841) (regTwo!38195 Regex!18841)) )
))
(declare-datatypes ((List!70998 0))(
  ( (Nil!70874) (Cons!70874 (h!77322 Regex!18841) (t!385070 List!70998)) )
))
(declare-datatypes ((Context!15562 0))(
  ( (Context!15563 (exprs!8281 List!70998)) )
))
(declare-fun ct1!250 () Context!15562)

(declare-fun nullable!8024 (Regex!18841) Bool)

(assert (=> b!7275478 (= res!2949137 (not (nullable!8024 (h!77322 (exprs!8281 ct1!250)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2596946 () (InoxSet Context!15562))

(declare-fun derivationStepZipperUp!2597 (Context!15562 C!37956) (InoxSet Context!15562))

(assert (=> b!7275478 (= lt!2596946 (derivationStepZipperUp!2597 ct1!250 (h!77321 s!7854)))))

(declare-fun lt!2596945 () Context!15562)

(declare-fun lt!2596951 () List!70998)

(assert (=> b!7275478 (= lt!2596945 (Context!15563 lt!2596951))))

(declare-fun tail!14550 (List!70998) List!70998)

(assert (=> b!7275478 (= lt!2596951 (tail!14550 (exprs!8281 ct1!250)))))

(declare-fun b!7275479 () Bool)

(declare-fun e!4362836 () Bool)

(assert (=> b!7275479 (= e!4362841 e!4362836)))

(declare-fun res!2949136 () Bool)

(assert (=> b!7275479 (=> res!2949136 e!4362836)))

(declare-fun lt!2596944 () (InoxSet Context!15562))

(declare-fun lt!2596948 () (InoxSet Context!15562))

(declare-fun lt!2596938 () (InoxSet Context!15562))

(assert (=> b!7275479 (= res!2949136 (not (= lt!2596948 ((_ map or) lt!2596938 lt!2596944))))))

(declare-fun lt!2596952 () Context!15562)

(assert (=> b!7275479 (= lt!2596944 (derivationStepZipperUp!2597 lt!2596952 (h!77321 s!7854)))))

(declare-fun derivationStepZipperDown!2755 (Regex!18841 Context!15562 C!37956) (InoxSet Context!15562))

(assert (=> b!7275479 (= lt!2596938 (derivationStepZipperDown!2755 (h!77322 (exprs!8281 ct1!250)) lt!2596952 (h!77321 s!7854)))))

(declare-fun ct2!346 () Context!15562)

(declare-fun ++!16735 (List!70998 List!70998) List!70998)

(assert (=> b!7275479 (= lt!2596952 (Context!15563 (++!16735 lt!2596951 (exprs!8281 ct2!346))))))

(declare-fun lambda!449780 () Int)

(declare-datatypes ((Unit!164288 0))(
  ( (Unit!164289) )
))
(declare-fun lt!2596959 () Unit!164288)

(declare-fun lemmaConcatPreservesForall!1592 (List!70998 List!70998 Int) Unit!164288)

(assert (=> b!7275479 (= lt!2596959 (lemmaConcatPreservesForall!1592 lt!2596951 (exprs!8281 ct2!346) lambda!449780))))

(declare-fun lt!2596943 () Unit!164288)

(assert (=> b!7275479 (= lt!2596943 (lemmaConcatPreservesForall!1592 lt!2596951 (exprs!8281 ct2!346) lambda!449780))))

(declare-fun res!2949133 () Bool)

(assert (=> start!710506 (=> (not res!2949133) (not e!4362837))))

(declare-fun matchZipper!3745 ((InoxSet Context!15562) List!70997) Bool)

(assert (=> start!710506 (= res!2949133 (matchZipper!3745 (store ((as const (Array Context!15562 Bool)) false) ct2!346 true) s!7854))))

(assert (=> start!710506 e!4362837))

(declare-fun inv!90112 (Context!15562) Bool)

(assert (=> start!710506 (and (inv!90112 ct2!346) e!4362838)))

(declare-fun e!4362840 () Bool)

(assert (=> start!710506 e!4362840))

(declare-fun e!4362835 () Bool)

(assert (=> start!710506 (and (inv!90112 ct1!250) e!4362835)))

(declare-fun b!7275480 () Bool)

(declare-fun tp_is_empty!47147 () Bool)

(declare-fun tp!2042025 () Bool)

(assert (=> b!7275480 (= e!4362840 (and tp_is_empty!47147 tp!2042025))))

(declare-fun b!7275481 () Bool)

(assert (=> b!7275481 (= e!4362836 (matchZipper!3745 lt!2596944 (t!385069 s!7854)))))

(declare-fun lt!2596955 () Unit!164288)

(assert (=> b!7275481 (= lt!2596955 (lemmaConcatPreservesForall!1592 lt!2596951 (exprs!8281 ct2!346) lambda!449780))))

(declare-fun lambda!449781 () Int)

(declare-fun lt!2596953 () (InoxSet Context!15562))

(declare-fun flatMap!2940 ((InoxSet Context!15562) Int) (InoxSet Context!15562))

(assert (=> b!7275481 (= (flatMap!2940 lt!2596953 lambda!449781) (derivationStepZipperUp!2597 lt!2596952 (h!77321 s!7854)))))

(declare-fun lt!2596960 () Unit!164288)

(declare-fun lemmaFlatMapOnSingletonSet!2340 ((InoxSet Context!15562) Context!15562 Int) Unit!164288)

(assert (=> b!7275481 (= lt!2596960 (lemmaFlatMapOnSingletonSet!2340 lt!2596953 lt!2596952 lambda!449781))))

(declare-fun lt!2596942 () Unit!164288)

(assert (=> b!7275481 (= lt!2596942 (lemmaConcatPreservesForall!1592 lt!2596951 (exprs!8281 ct2!346) lambda!449780))))

(declare-fun lt!2596937 () Unit!164288)

(assert (=> b!7275481 (= lt!2596937 (lemmaConcatPreservesForall!1592 lt!2596951 (exprs!8281 ct2!346) lambda!449780))))

(declare-fun lt!2596939 () Unit!164288)

(assert (=> b!7275481 (= lt!2596939 (lemmaConcatPreservesForall!1592 lt!2596951 (exprs!8281 ct2!346) lambda!449780))))

(assert (=> b!7275481 (matchZipper!3745 lt!2596953 s!7854)))

(assert (=> b!7275481 (= lt!2596953 (store ((as const (Array Context!15562 Bool)) false) lt!2596952 true))))

(declare-fun lt!2596947 () Unit!164288)

(assert (=> b!7275481 (= lt!2596947 (lemmaConcatPreservesForall!1592 lt!2596951 (exprs!8281 ct2!346) lambda!449780))))

(declare-fun lt!2596957 () Unit!164288)

(declare-fun lemmaPrependingNullableCtxStillMatches!46 (Context!15562 Context!15562 List!70997) Unit!164288)

(assert (=> b!7275481 (= lt!2596957 (lemmaPrependingNullableCtxStillMatches!46 lt!2596945 ct2!346 s!7854))))

(declare-fun b!7275482 () Bool)

(declare-fun res!2949134 () Bool)

(assert (=> b!7275482 (=> res!2949134 e!4362841)))

(assert (=> b!7275482 (= res!2949134 (not (= lt!2596946 ((_ map or) (derivationStepZipperDown!2755 (h!77322 (exprs!8281 ct1!250)) lt!2596945 (h!77321 s!7854)) (derivationStepZipperUp!2597 lt!2596945 (h!77321 s!7854))))))))

(declare-fun b!7275483 () Bool)

(declare-fun res!2949139 () Bool)

(assert (=> b!7275483 (=> res!2949139 e!4362839)))

(assert (=> b!7275483 (= res!2949139 (not ((_ is Cons!70874) (exprs!8281 ct1!250))))))

(declare-fun b!7275484 () Bool)

(declare-fun res!2949138 () Bool)

(assert (=> b!7275484 (=> res!2949138 e!4362839)))

(declare-fun isEmpty!40765 (List!70998) Bool)

(assert (=> b!7275484 (= res!2949138 (isEmpty!40765 (exprs!8281 ct1!250)))))

(declare-fun b!7275485 () Bool)

(declare-fun res!2949135 () Bool)

(assert (=> b!7275485 (=> (not res!2949135) (not e!4362837))))

(declare-fun nullableContext!331 (Context!15562) Bool)

(assert (=> b!7275485 (= res!2949135 (nullableContext!331 ct1!250))))

(assert (=> b!7275486 (= e!4362837 (not e!4362839))))

(declare-fun res!2949141 () Bool)

(assert (=> b!7275486 (=> res!2949141 e!4362839)))

(declare-fun lt!2596961 () (InoxSet Context!15562))

(declare-fun derivationStepZipper!3577 ((InoxSet Context!15562) C!37956) (InoxSet Context!15562))

(assert (=> b!7275486 (= res!2949141 (not (= lt!2596948 (derivationStepZipper!3577 lt!2596961 (h!77321 s!7854)))))))

(declare-fun lt!2596941 () Unit!164288)

(assert (=> b!7275486 (= lt!2596941 (lemmaConcatPreservesForall!1592 (exprs!8281 ct1!250) (exprs!8281 ct2!346) lambda!449780))))

(declare-fun lt!2596949 () Context!15562)

(assert (=> b!7275486 (= (flatMap!2940 lt!2596961 lambda!449781) (derivationStepZipperUp!2597 lt!2596949 (h!77321 s!7854)))))

(declare-fun lt!2596958 () Unit!164288)

(assert (=> b!7275486 (= lt!2596958 (lemmaFlatMapOnSingletonSet!2340 lt!2596961 lt!2596949 lambda!449781))))

(assert (=> b!7275486 (= lt!2596961 (store ((as const (Array Context!15562 Bool)) false) lt!2596949 true))))

(declare-fun lt!2596936 () Unit!164288)

(assert (=> b!7275486 (= lt!2596936 (lemmaConcatPreservesForall!1592 (exprs!8281 ct1!250) (exprs!8281 ct2!346) lambda!449780))))

(declare-fun lt!2596956 () Unit!164288)

(assert (=> b!7275486 (= lt!2596956 (lemmaConcatPreservesForall!1592 (exprs!8281 ct1!250) (exprs!8281 ct2!346) lambda!449780))))

(declare-fun lt!2596950 () (InoxSet Context!15562))

(assert (=> b!7275486 (= (flatMap!2940 lt!2596950 lambda!449781) (derivationStepZipperUp!2597 ct1!250 (h!77321 s!7854)))))

(declare-fun lt!2596954 () Unit!164288)

(assert (=> b!7275486 (= lt!2596954 (lemmaFlatMapOnSingletonSet!2340 lt!2596950 ct1!250 lambda!449781))))

(assert (=> b!7275486 (= lt!2596950 (store ((as const (Array Context!15562 Bool)) false) ct1!250 true))))

(assert (=> b!7275486 (= lt!2596948 (derivationStepZipperUp!2597 lt!2596949 (h!77321 s!7854)))))

(assert (=> b!7275486 (= lt!2596949 (Context!15563 (++!16735 (exprs!8281 ct1!250) (exprs!8281 ct2!346))))))

(declare-fun lt!2596940 () Unit!164288)

(assert (=> b!7275486 (= lt!2596940 (lemmaConcatPreservesForall!1592 (exprs!8281 ct1!250) (exprs!8281 ct2!346) lambda!449780))))

(declare-fun b!7275487 () Bool)

(declare-fun tp!2042026 () Bool)

(assert (=> b!7275487 (= e!4362835 tp!2042026)))

(assert (= (and start!710506 res!2949133) b!7275485))

(assert (= (and b!7275485 res!2949135) b!7275476))

(assert (= (and b!7275476 res!2949140) b!7275486))

(assert (= (and b!7275486 (not res!2949141)) b!7275483))

(assert (= (and b!7275483 (not res!2949139)) b!7275484))

(assert (= (and b!7275484 (not res!2949138)) b!7275478))

(assert (= (and b!7275478 (not res!2949137)) b!7275482))

(assert (= (and b!7275482 (not res!2949134)) b!7275479))

(assert (= (and b!7275479 (not res!2949136)) b!7275481))

(assert (= start!710506 b!7275477))

(assert (= (and start!710506 ((_ is Cons!70873) s!7854)) b!7275480))

(assert (= start!710506 b!7275487))

(declare-fun m!7962240 () Bool)

(assert (=> b!7275486 m!7962240))

(declare-fun m!7962242 () Bool)

(assert (=> b!7275486 m!7962242))

(declare-fun m!7962244 () Bool)

(assert (=> b!7275486 m!7962244))

(assert (=> b!7275486 m!7962240))

(assert (=> b!7275486 m!7962240))

(assert (=> b!7275486 m!7962240))

(declare-fun m!7962246 () Bool)

(assert (=> b!7275486 m!7962246))

(declare-fun m!7962248 () Bool)

(assert (=> b!7275486 m!7962248))

(declare-fun m!7962250 () Bool)

(assert (=> b!7275486 m!7962250))

(declare-fun m!7962252 () Bool)

(assert (=> b!7275486 m!7962252))

(declare-fun m!7962254 () Bool)

(assert (=> b!7275486 m!7962254))

(declare-fun m!7962256 () Bool)

(assert (=> b!7275486 m!7962256))

(declare-fun m!7962258 () Bool)

(assert (=> b!7275486 m!7962258))

(declare-fun m!7962260 () Bool)

(assert (=> b!7275486 m!7962260))

(declare-fun m!7962262 () Bool)

(assert (=> b!7275482 m!7962262))

(declare-fun m!7962264 () Bool)

(assert (=> b!7275482 m!7962264))

(declare-fun m!7962266 () Bool)

(assert (=> b!7275478 m!7962266))

(assert (=> b!7275478 m!7962260))

(declare-fun m!7962268 () Bool)

(assert (=> b!7275478 m!7962268))

(declare-fun m!7962270 () Bool)

(assert (=> b!7275479 m!7962270))

(declare-fun m!7962272 () Bool)

(assert (=> b!7275479 m!7962272))

(assert (=> b!7275479 m!7962270))

(declare-fun m!7962274 () Bool)

(assert (=> b!7275479 m!7962274))

(declare-fun m!7962276 () Bool)

(assert (=> b!7275479 m!7962276))

(declare-fun m!7962278 () Bool)

(assert (=> start!710506 m!7962278))

(assert (=> start!710506 m!7962278))

(declare-fun m!7962280 () Bool)

(assert (=> start!710506 m!7962280))

(declare-fun m!7962282 () Bool)

(assert (=> start!710506 m!7962282))

(declare-fun m!7962284 () Bool)

(assert (=> start!710506 m!7962284))

(declare-fun m!7962286 () Bool)

(assert (=> b!7275484 m!7962286))

(declare-fun m!7962288 () Bool)

(assert (=> b!7275485 m!7962288))

(assert (=> b!7275481 m!7962270))

(assert (=> b!7275481 m!7962274))

(assert (=> b!7275481 m!7962270))

(declare-fun m!7962290 () Bool)

(assert (=> b!7275481 m!7962290))

(assert (=> b!7275481 m!7962270))

(declare-fun m!7962292 () Bool)

(assert (=> b!7275481 m!7962292))

(declare-fun m!7962294 () Bool)

(assert (=> b!7275481 m!7962294))

(assert (=> b!7275481 m!7962270))

(declare-fun m!7962296 () Bool)

(assert (=> b!7275481 m!7962296))

(assert (=> b!7275481 m!7962270))

(declare-fun m!7962298 () Bool)

(assert (=> b!7275481 m!7962298))

(declare-fun m!7962300 () Bool)

(assert (=> b!7275481 m!7962300))

(check-sat (not b!7275478) (not b!7275486) (not b!7275477) (not b!7275481) (not b!7275482) (not b!7275480) (not start!710506) (not b!7275487) (not b!7275484) tp_is_empty!47147 (not b!7275485) (not b!7275479))
(check-sat)
(get-model)

(declare-fun bs!1912003 () Bool)

(declare-fun d!2264539 () Bool)

(assert (= bs!1912003 (and d!2264539 b!7275486)))

(declare-fun lambda!449784 () Int)

(assert (=> bs!1912003 (not (= lambda!449784 lambda!449780))))

(declare-fun forall!17666 (List!70998 Int) Bool)

(assert (=> d!2264539 (= (nullableContext!331 ct1!250) (forall!17666 (exprs!8281 ct1!250) lambda!449784))))

(declare-fun bs!1912004 () Bool)

(assert (= bs!1912004 d!2264539))

(declare-fun m!7962314 () Bool)

(assert (=> bs!1912004 m!7962314))

(assert (=> b!7275485 d!2264539))

(declare-fun d!2264543 () Bool)

(assert (=> d!2264543 (= (isEmpty!40765 (exprs!8281 ct1!250)) ((_ is Nil!70874) (exprs!8281 ct1!250)))))

(assert (=> b!7275484 d!2264543))

(declare-fun d!2264545 () Bool)

(declare-fun e!4362873 () Bool)

(assert (=> d!2264545 e!4362873))

(declare-fun res!2949157 () Bool)

(assert (=> d!2264545 (=> (not res!2949157) (not e!4362873))))

(declare-fun lt!2596970 () List!70998)

(declare-fun content!14800 (List!70998) (InoxSet Regex!18841))

(assert (=> d!2264545 (= res!2949157 (= (content!14800 lt!2596970) ((_ map or) (content!14800 lt!2596951) (content!14800 (exprs!8281 ct2!346)))))))

(declare-fun e!4362874 () List!70998)

(assert (=> d!2264545 (= lt!2596970 e!4362874)))

(declare-fun c!1354766 () Bool)

(assert (=> d!2264545 (= c!1354766 ((_ is Nil!70874) lt!2596951))))

(assert (=> d!2264545 (= (++!16735 lt!2596951 (exprs!8281 ct2!346)) lt!2596970)))

(declare-fun b!7275549 () Bool)

(declare-fun res!2949158 () Bool)

(assert (=> b!7275549 (=> (not res!2949158) (not e!4362873))))

(declare-fun size!41846 (List!70998) Int)

(assert (=> b!7275549 (= res!2949158 (= (size!41846 lt!2596970) (+ (size!41846 lt!2596951) (size!41846 (exprs!8281 ct2!346)))))))

(declare-fun b!7275550 () Bool)

(assert (=> b!7275550 (= e!4362873 (or (not (= (exprs!8281 ct2!346) Nil!70874)) (= lt!2596970 lt!2596951)))))

(declare-fun b!7275547 () Bool)

(assert (=> b!7275547 (= e!4362874 (exprs!8281 ct2!346))))

(declare-fun b!7275548 () Bool)

(assert (=> b!7275548 (= e!4362874 (Cons!70874 (h!77322 lt!2596951) (++!16735 (t!385070 lt!2596951) (exprs!8281 ct2!346))))))

(assert (= (and d!2264545 c!1354766) b!7275547))

(assert (= (and d!2264545 (not c!1354766)) b!7275548))

(assert (= (and d!2264545 res!2949157) b!7275549))

(assert (= (and b!7275549 res!2949158) b!7275550))

(declare-fun m!7962330 () Bool)

(assert (=> d!2264545 m!7962330))

(declare-fun m!7962332 () Bool)

(assert (=> d!2264545 m!7962332))

(declare-fun m!7962334 () Bool)

(assert (=> d!2264545 m!7962334))

(declare-fun m!7962336 () Bool)

(assert (=> b!7275549 m!7962336))

(declare-fun m!7962338 () Bool)

(assert (=> b!7275549 m!7962338))

(declare-fun m!7962340 () Bool)

(assert (=> b!7275549 m!7962340))

(declare-fun m!7962342 () Bool)

(assert (=> b!7275548 m!7962342))

(assert (=> b!7275479 d!2264545))

(declare-fun d!2264549 () Bool)

(assert (=> d!2264549 (forall!17666 (++!16735 lt!2596951 (exprs!8281 ct2!346)) lambda!449780)))

(declare-fun lt!2596973 () Unit!164288)

(declare-fun choose!56488 (List!70998 List!70998 Int) Unit!164288)

(assert (=> d!2264549 (= lt!2596973 (choose!56488 lt!2596951 (exprs!8281 ct2!346) lambda!449780))))

(assert (=> d!2264549 (forall!17666 lt!2596951 lambda!449780)))

(assert (=> d!2264549 (= (lemmaConcatPreservesForall!1592 lt!2596951 (exprs!8281 ct2!346) lambda!449780) lt!2596973)))

(declare-fun bs!1912005 () Bool)

(assert (= bs!1912005 d!2264549))

(assert (=> bs!1912005 m!7962276))

(assert (=> bs!1912005 m!7962276))

(declare-fun m!7962366 () Bool)

(assert (=> bs!1912005 m!7962366))

(declare-fun m!7962368 () Bool)

(assert (=> bs!1912005 m!7962368))

(declare-fun m!7962370 () Bool)

(assert (=> bs!1912005 m!7962370))

(assert (=> b!7275479 d!2264549))

(declare-fun bm!663803 () Bool)

(declare-fun call!663812 () (InoxSet Context!15562))

(declare-fun call!663811 () (InoxSet Context!15562))

(assert (=> bm!663803 (= call!663812 call!663811)))

(declare-fun b!7275637 () Bool)

(declare-fun e!4362927 () (InoxSet Context!15562))

(declare-fun call!663810 () (InoxSet Context!15562))

(assert (=> b!7275637 (= e!4362927 ((_ map or) call!663810 call!663811))))

(declare-fun b!7275638 () Bool)

(declare-fun e!4362926 () (InoxSet Context!15562))

(declare-fun call!663813 () (InoxSet Context!15562))

(assert (=> b!7275638 (= e!4362926 call!663813)))

(declare-fun b!7275639 () Bool)

(declare-fun e!4362924 () (InoxSet Context!15562))

(assert (=> b!7275639 (= e!4362924 e!4362927)))

(declare-fun c!1354806 () Bool)

(assert (=> b!7275639 (= c!1354806 ((_ is Union!18841) (h!77322 (exprs!8281 ct1!250))))))

(declare-fun b!7275640 () Bool)

(assert (=> b!7275640 (= e!4362924 (store ((as const (Array Context!15562 Bool)) false) lt!2596952 true))))

(declare-fun d!2264557 () Bool)

(declare-fun c!1354802 () Bool)

(assert (=> d!2264557 (= c!1354802 (and ((_ is ElementMatch!18841) (h!77322 (exprs!8281 ct1!250))) (= (c!1354743 (h!77322 (exprs!8281 ct1!250))) (h!77321 s!7854))))))

(assert (=> d!2264557 (= (derivationStepZipperDown!2755 (h!77322 (exprs!8281 ct1!250)) lt!2596952 (h!77321 s!7854)) e!4362924)))

(declare-fun b!7275641 () Bool)

(declare-fun c!1354805 () Bool)

(assert (=> b!7275641 (= c!1354805 ((_ is Star!18841) (h!77322 (exprs!8281 ct1!250))))))

(declare-fun e!4362923 () (InoxSet Context!15562))

(assert (=> b!7275641 (= e!4362923 e!4362926)))

(declare-fun bm!663804 () Bool)

(declare-fun call!663808 () List!70998)

(declare-fun call!663809 () List!70998)

(assert (=> bm!663804 (= call!663808 call!663809)))

(declare-fun bm!663805 () Bool)

(assert (=> bm!663805 (= call!663813 call!663812)))

(declare-fun c!1354803 () Bool)

(declare-fun bm!663806 () Bool)

(declare-fun c!1354804 () Bool)

(declare-fun $colon$colon!2987 (List!70998 Regex!18841) List!70998)

(assert (=> bm!663806 (= call!663809 ($colon$colon!2987 (exprs!8281 lt!2596952) (ite (or c!1354804 c!1354803) (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (h!77322 (exprs!8281 ct1!250)))))))

(declare-fun b!7275642 () Bool)

(declare-fun e!4362925 () (InoxSet Context!15562))

(assert (=> b!7275642 (= e!4362925 e!4362923)))

(assert (=> b!7275642 (= c!1354803 ((_ is Concat!27686) (h!77322 (exprs!8281 ct1!250))))))

(declare-fun b!7275643 () Bool)

(assert (=> b!7275643 (= e!4362925 ((_ map or) call!663810 call!663812))))

(declare-fun b!7275644 () Bool)

(assert (=> b!7275644 (= e!4362923 call!663813)))

(declare-fun b!7275645 () Bool)

(declare-fun e!4362922 () Bool)

(assert (=> b!7275645 (= c!1354804 e!4362922)))

(declare-fun res!2949168 () Bool)

(assert (=> b!7275645 (=> (not res!2949168) (not e!4362922))))

(assert (=> b!7275645 (= res!2949168 ((_ is Concat!27686) (h!77322 (exprs!8281 ct1!250))))))

(assert (=> b!7275645 (= e!4362927 e!4362925)))

(declare-fun b!7275646 () Bool)

(assert (=> b!7275646 (= e!4362922 (nullable!8024 (regOne!38194 (h!77322 (exprs!8281 ct1!250)))))))

(declare-fun b!7275647 () Bool)

(assert (=> b!7275647 (= e!4362926 ((as const (Array Context!15562 Bool)) false))))

(declare-fun bm!663807 () Bool)

(assert (=> bm!663807 (= call!663810 (derivationStepZipperDown!2755 (ite c!1354806 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250)))) (ite c!1354806 lt!2596952 (Context!15563 call!663809)) (h!77321 s!7854)))))

(declare-fun bm!663808 () Bool)

(assert (=> bm!663808 (= call!663811 (derivationStepZipperDown!2755 (ite c!1354806 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354804 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354803 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250)))))) (ite (or c!1354806 c!1354804) lt!2596952 (Context!15563 call!663808)) (h!77321 s!7854)))))

(assert (= (and d!2264557 c!1354802) b!7275640))

(assert (= (and d!2264557 (not c!1354802)) b!7275639))

(assert (= (and b!7275639 c!1354806) b!7275637))

(assert (= (and b!7275639 (not c!1354806)) b!7275645))

(assert (= (and b!7275645 res!2949168) b!7275646))

(assert (= (and b!7275645 c!1354804) b!7275643))

(assert (= (and b!7275645 (not c!1354804)) b!7275642))

(assert (= (and b!7275642 c!1354803) b!7275644))

(assert (= (and b!7275642 (not c!1354803)) b!7275641))

(assert (= (and b!7275641 c!1354805) b!7275638))

(assert (= (and b!7275641 (not c!1354805)) b!7275647))

(assert (= (or b!7275644 b!7275638) bm!663804))

(assert (= (or b!7275644 b!7275638) bm!663805))

(assert (= (or b!7275643 bm!663804) bm!663806))

(assert (= (or b!7275643 bm!663805) bm!663803))

(assert (= (or b!7275637 b!7275643) bm!663807))

(assert (= (or b!7275637 bm!663803) bm!663808))

(declare-fun m!7962466 () Bool)

(assert (=> bm!663806 m!7962466))

(declare-fun m!7962468 () Bool)

(assert (=> bm!663808 m!7962468))

(assert (=> b!7275640 m!7962296))

(declare-fun m!7962470 () Bool)

(assert (=> b!7275646 m!7962470))

(declare-fun m!7962472 () Bool)

(assert (=> bm!663807 m!7962472))

(assert (=> b!7275479 d!2264557))

(declare-fun b!7275658 () Bool)

(declare-fun e!4362935 () (InoxSet Context!15562))

(declare-fun call!663816 () (InoxSet Context!15562))

(assert (=> b!7275658 (= e!4362935 call!663816)))

(declare-fun b!7275659 () Bool)

(assert (=> b!7275659 (= e!4362935 ((as const (Array Context!15562 Bool)) false))))

(declare-fun b!7275660 () Bool)

(declare-fun e!4362934 () Bool)

(assert (=> b!7275660 (= e!4362934 (nullable!8024 (h!77322 (exprs!8281 lt!2596952))))))

(declare-fun bm!663811 () Bool)

(assert (=> bm!663811 (= call!663816 (derivationStepZipperDown!2755 (h!77322 (exprs!8281 lt!2596952)) (Context!15563 (t!385070 (exprs!8281 lt!2596952))) (h!77321 s!7854)))))

(declare-fun b!7275662 () Bool)

(declare-fun e!4362936 () (InoxSet Context!15562))

(assert (=> b!7275662 (= e!4362936 e!4362935)))

(declare-fun c!1354811 () Bool)

(assert (=> b!7275662 (= c!1354811 ((_ is Cons!70874) (exprs!8281 lt!2596952)))))

(declare-fun d!2264605 () Bool)

(declare-fun c!1354812 () Bool)

(assert (=> d!2264605 (= c!1354812 e!4362934)))

(declare-fun res!2949171 () Bool)

(assert (=> d!2264605 (=> (not res!2949171) (not e!4362934))))

(assert (=> d!2264605 (= res!2949171 ((_ is Cons!70874) (exprs!8281 lt!2596952)))))

(assert (=> d!2264605 (= (derivationStepZipperUp!2597 lt!2596952 (h!77321 s!7854)) e!4362936)))

(declare-fun b!7275661 () Bool)

(assert (=> b!7275661 (= e!4362936 ((_ map or) call!663816 (derivationStepZipperUp!2597 (Context!15563 (t!385070 (exprs!8281 lt!2596952))) (h!77321 s!7854))))))

(assert (= (and d!2264605 res!2949171) b!7275660))

(assert (= (and d!2264605 c!1354812) b!7275661))

(assert (= (and d!2264605 (not c!1354812)) b!7275662))

(assert (= (and b!7275662 c!1354811) b!7275658))

(assert (= (and b!7275662 (not c!1354811)) b!7275659))

(assert (= (or b!7275661 b!7275658) bm!663811))

(declare-fun m!7962474 () Bool)

(assert (=> b!7275660 m!7962474))

(declare-fun m!7962476 () Bool)

(assert (=> bm!663811 m!7962476))

(declare-fun m!7962478 () Bool)

(assert (=> b!7275661 m!7962478))

(assert (=> b!7275479 d!2264605))

(declare-fun d!2264607 () Bool)

(declare-fun nullableFct!3170 (Regex!18841) Bool)

(assert (=> d!2264607 (= (nullable!8024 (h!77322 (exprs!8281 ct1!250))) (nullableFct!3170 (h!77322 (exprs!8281 ct1!250))))))

(declare-fun bs!1912033 () Bool)

(assert (= bs!1912033 d!2264607))

(declare-fun m!7962480 () Bool)

(assert (=> bs!1912033 m!7962480))

(assert (=> b!7275478 d!2264607))

(declare-fun b!7275663 () Bool)

(declare-fun e!4362938 () (InoxSet Context!15562))

(declare-fun call!663817 () (InoxSet Context!15562))

(assert (=> b!7275663 (= e!4362938 call!663817)))

(declare-fun b!7275664 () Bool)

(assert (=> b!7275664 (= e!4362938 ((as const (Array Context!15562 Bool)) false))))

(declare-fun b!7275665 () Bool)

(declare-fun e!4362937 () Bool)

(assert (=> b!7275665 (= e!4362937 (nullable!8024 (h!77322 (exprs!8281 ct1!250))))))

(declare-fun bm!663812 () Bool)

(assert (=> bm!663812 (= call!663817 (derivationStepZipperDown!2755 (h!77322 (exprs!8281 ct1!250)) (Context!15563 (t!385070 (exprs!8281 ct1!250))) (h!77321 s!7854)))))

(declare-fun b!7275667 () Bool)

(declare-fun e!4362939 () (InoxSet Context!15562))

(assert (=> b!7275667 (= e!4362939 e!4362938)))

(declare-fun c!1354813 () Bool)

(assert (=> b!7275667 (= c!1354813 ((_ is Cons!70874) (exprs!8281 ct1!250)))))

(declare-fun d!2264609 () Bool)

(declare-fun c!1354814 () Bool)

(assert (=> d!2264609 (= c!1354814 e!4362937)))

(declare-fun res!2949172 () Bool)

(assert (=> d!2264609 (=> (not res!2949172) (not e!4362937))))

(assert (=> d!2264609 (= res!2949172 ((_ is Cons!70874) (exprs!8281 ct1!250)))))

(assert (=> d!2264609 (= (derivationStepZipperUp!2597 ct1!250 (h!77321 s!7854)) e!4362939)))

(declare-fun b!7275666 () Bool)

(assert (=> b!7275666 (= e!4362939 ((_ map or) call!663817 (derivationStepZipperUp!2597 (Context!15563 (t!385070 (exprs!8281 ct1!250))) (h!77321 s!7854))))))

(assert (= (and d!2264609 res!2949172) b!7275665))

(assert (= (and d!2264609 c!1354814) b!7275666))

(assert (= (and d!2264609 (not c!1354814)) b!7275667))

(assert (= (and b!7275667 c!1354813) b!7275663))

(assert (= (and b!7275667 (not c!1354813)) b!7275664))

(assert (= (or b!7275666 b!7275663) bm!663812))

(assert (=> b!7275665 m!7962266))

(declare-fun m!7962482 () Bool)

(assert (=> bm!663812 m!7962482))

(declare-fun m!7962484 () Bool)

(assert (=> b!7275666 m!7962484))

(assert (=> b!7275478 d!2264609))

(declare-fun d!2264611 () Bool)

(assert (=> d!2264611 (= (tail!14550 (exprs!8281 ct1!250)) (t!385070 (exprs!8281 ct1!250)))))

(assert (=> b!7275478 d!2264611))

(declare-fun bm!663813 () Bool)

(declare-fun call!663822 () (InoxSet Context!15562))

(declare-fun call!663821 () (InoxSet Context!15562))

(assert (=> bm!663813 (= call!663822 call!663821)))

(declare-fun b!7275668 () Bool)

(declare-fun e!4362945 () (InoxSet Context!15562))

(declare-fun call!663820 () (InoxSet Context!15562))

(assert (=> b!7275668 (= e!4362945 ((_ map or) call!663820 call!663821))))

(declare-fun b!7275669 () Bool)

(declare-fun e!4362944 () (InoxSet Context!15562))

(declare-fun call!663823 () (InoxSet Context!15562))

(assert (=> b!7275669 (= e!4362944 call!663823)))

(declare-fun b!7275670 () Bool)

(declare-fun e!4362942 () (InoxSet Context!15562))

(assert (=> b!7275670 (= e!4362942 e!4362945)))

(declare-fun c!1354819 () Bool)

(assert (=> b!7275670 (= c!1354819 ((_ is Union!18841) (h!77322 (exprs!8281 ct1!250))))))

(declare-fun b!7275671 () Bool)

(assert (=> b!7275671 (= e!4362942 (store ((as const (Array Context!15562 Bool)) false) lt!2596945 true))))

(declare-fun d!2264613 () Bool)

(declare-fun c!1354815 () Bool)

(assert (=> d!2264613 (= c!1354815 (and ((_ is ElementMatch!18841) (h!77322 (exprs!8281 ct1!250))) (= (c!1354743 (h!77322 (exprs!8281 ct1!250))) (h!77321 s!7854))))))

(assert (=> d!2264613 (= (derivationStepZipperDown!2755 (h!77322 (exprs!8281 ct1!250)) lt!2596945 (h!77321 s!7854)) e!4362942)))

(declare-fun b!7275672 () Bool)

(declare-fun c!1354818 () Bool)

(assert (=> b!7275672 (= c!1354818 ((_ is Star!18841) (h!77322 (exprs!8281 ct1!250))))))

(declare-fun e!4362941 () (InoxSet Context!15562))

(assert (=> b!7275672 (= e!4362941 e!4362944)))

(declare-fun bm!663814 () Bool)

(declare-fun call!663818 () List!70998)

(declare-fun call!663819 () List!70998)

(assert (=> bm!663814 (= call!663818 call!663819)))

(declare-fun bm!663815 () Bool)

(assert (=> bm!663815 (= call!663823 call!663822)))

(declare-fun c!1354817 () Bool)

(declare-fun bm!663816 () Bool)

(declare-fun c!1354816 () Bool)

(assert (=> bm!663816 (= call!663819 ($colon$colon!2987 (exprs!8281 lt!2596945) (ite (or c!1354817 c!1354816) (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (h!77322 (exprs!8281 ct1!250)))))))

(declare-fun b!7275673 () Bool)

(declare-fun e!4362943 () (InoxSet Context!15562))

(assert (=> b!7275673 (= e!4362943 e!4362941)))

(assert (=> b!7275673 (= c!1354816 ((_ is Concat!27686) (h!77322 (exprs!8281 ct1!250))))))

(declare-fun b!7275674 () Bool)

(assert (=> b!7275674 (= e!4362943 ((_ map or) call!663820 call!663822))))

(declare-fun b!7275675 () Bool)

(assert (=> b!7275675 (= e!4362941 call!663823)))

(declare-fun b!7275676 () Bool)

(declare-fun e!4362940 () Bool)

(assert (=> b!7275676 (= c!1354817 e!4362940)))

(declare-fun res!2949173 () Bool)

(assert (=> b!7275676 (=> (not res!2949173) (not e!4362940))))

(assert (=> b!7275676 (= res!2949173 ((_ is Concat!27686) (h!77322 (exprs!8281 ct1!250))))))

(assert (=> b!7275676 (= e!4362945 e!4362943)))

(declare-fun b!7275677 () Bool)

(assert (=> b!7275677 (= e!4362940 (nullable!8024 (regOne!38194 (h!77322 (exprs!8281 ct1!250)))))))

(declare-fun b!7275678 () Bool)

(assert (=> b!7275678 (= e!4362944 ((as const (Array Context!15562 Bool)) false))))

(declare-fun bm!663817 () Bool)

(assert (=> bm!663817 (= call!663820 (derivationStepZipperDown!2755 (ite c!1354819 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250)))) (ite c!1354819 lt!2596945 (Context!15563 call!663819)) (h!77321 s!7854)))))

(declare-fun bm!663818 () Bool)

(assert (=> bm!663818 (= call!663821 (derivationStepZipperDown!2755 (ite c!1354819 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354817 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354816 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250)))))) (ite (or c!1354819 c!1354817) lt!2596945 (Context!15563 call!663818)) (h!77321 s!7854)))))

(assert (= (and d!2264613 c!1354815) b!7275671))

(assert (= (and d!2264613 (not c!1354815)) b!7275670))

(assert (= (and b!7275670 c!1354819) b!7275668))

(assert (= (and b!7275670 (not c!1354819)) b!7275676))

(assert (= (and b!7275676 res!2949173) b!7275677))

(assert (= (and b!7275676 c!1354817) b!7275674))

(assert (= (and b!7275676 (not c!1354817)) b!7275673))

(assert (= (and b!7275673 c!1354816) b!7275675))

(assert (= (and b!7275673 (not c!1354816)) b!7275672))

(assert (= (and b!7275672 c!1354818) b!7275669))

(assert (= (and b!7275672 (not c!1354818)) b!7275678))

(assert (= (or b!7275675 b!7275669) bm!663814))

(assert (= (or b!7275675 b!7275669) bm!663815))

(assert (= (or b!7275674 bm!663814) bm!663816))

(assert (= (or b!7275674 bm!663815) bm!663813))

(assert (= (or b!7275668 b!7275674) bm!663817))

(assert (= (or b!7275668 bm!663813) bm!663818))

(declare-fun m!7962486 () Bool)

(assert (=> bm!663816 m!7962486))

(declare-fun m!7962488 () Bool)

(assert (=> bm!663818 m!7962488))

(declare-fun m!7962490 () Bool)

(assert (=> b!7275671 m!7962490))

(assert (=> b!7275677 m!7962470))

(declare-fun m!7962492 () Bool)

(assert (=> bm!663817 m!7962492))

(assert (=> b!7275482 d!2264613))

(declare-fun b!7275679 () Bool)

(declare-fun e!4362947 () (InoxSet Context!15562))

(declare-fun call!663824 () (InoxSet Context!15562))

(assert (=> b!7275679 (= e!4362947 call!663824)))

(declare-fun b!7275680 () Bool)

(assert (=> b!7275680 (= e!4362947 ((as const (Array Context!15562 Bool)) false))))

(declare-fun b!7275681 () Bool)

(declare-fun e!4362946 () Bool)

(assert (=> b!7275681 (= e!4362946 (nullable!8024 (h!77322 (exprs!8281 lt!2596945))))))

(declare-fun bm!663819 () Bool)

(assert (=> bm!663819 (= call!663824 (derivationStepZipperDown!2755 (h!77322 (exprs!8281 lt!2596945)) (Context!15563 (t!385070 (exprs!8281 lt!2596945))) (h!77321 s!7854)))))

(declare-fun b!7275683 () Bool)

(declare-fun e!4362948 () (InoxSet Context!15562))

(assert (=> b!7275683 (= e!4362948 e!4362947)))

(declare-fun c!1354820 () Bool)

(assert (=> b!7275683 (= c!1354820 ((_ is Cons!70874) (exprs!8281 lt!2596945)))))

(declare-fun d!2264615 () Bool)

(declare-fun c!1354821 () Bool)

(assert (=> d!2264615 (= c!1354821 e!4362946)))

(declare-fun res!2949174 () Bool)

(assert (=> d!2264615 (=> (not res!2949174) (not e!4362946))))

(assert (=> d!2264615 (= res!2949174 ((_ is Cons!70874) (exprs!8281 lt!2596945)))))

(assert (=> d!2264615 (= (derivationStepZipperUp!2597 lt!2596945 (h!77321 s!7854)) e!4362948)))

(declare-fun b!7275682 () Bool)

(assert (=> b!7275682 (= e!4362948 ((_ map or) call!663824 (derivationStepZipperUp!2597 (Context!15563 (t!385070 (exprs!8281 lt!2596945))) (h!77321 s!7854))))))

(assert (= (and d!2264615 res!2949174) b!7275681))

(assert (= (and d!2264615 c!1354821) b!7275682))

(assert (= (and d!2264615 (not c!1354821)) b!7275683))

(assert (= (and b!7275683 c!1354820) b!7275679))

(assert (= (and b!7275683 (not c!1354820)) b!7275680))

(assert (= (or b!7275682 b!7275679) bm!663819))

(declare-fun m!7962494 () Bool)

(assert (=> b!7275681 m!7962494))

(declare-fun m!7962496 () Bool)

(assert (=> bm!663819 m!7962496))

(declare-fun m!7962498 () Bool)

(assert (=> b!7275682 m!7962498))

(assert (=> b!7275482 d!2264615))

(declare-fun d!2264617 () Bool)

(declare-fun c!1354824 () Bool)

(declare-fun isEmpty!40767 (List!70997) Bool)

(assert (=> d!2264617 (= c!1354824 (isEmpty!40767 s!7854))))

(declare-fun e!4362951 () Bool)

(assert (=> d!2264617 (= (matchZipper!3745 (store ((as const (Array Context!15562 Bool)) false) ct2!346 true) s!7854) e!4362951)))

(declare-fun b!7275688 () Bool)

(declare-fun nullableZipper!3041 ((InoxSet Context!15562)) Bool)

(assert (=> b!7275688 (= e!4362951 (nullableZipper!3041 (store ((as const (Array Context!15562 Bool)) false) ct2!346 true)))))

(declare-fun b!7275689 () Bool)

(declare-fun head!15039 (List!70997) C!37956)

(declare-fun tail!14552 (List!70997) List!70997)

(assert (=> b!7275689 (= e!4362951 (matchZipper!3745 (derivationStepZipper!3577 (store ((as const (Array Context!15562 Bool)) false) ct2!346 true) (head!15039 s!7854)) (tail!14552 s!7854)))))

(assert (= (and d!2264617 c!1354824) b!7275688))

(assert (= (and d!2264617 (not c!1354824)) b!7275689))

(declare-fun m!7962500 () Bool)

(assert (=> d!2264617 m!7962500))

(assert (=> b!7275688 m!7962278))

(declare-fun m!7962502 () Bool)

(assert (=> b!7275688 m!7962502))

(declare-fun m!7962504 () Bool)

(assert (=> b!7275689 m!7962504))

(assert (=> b!7275689 m!7962278))

(assert (=> b!7275689 m!7962504))

(declare-fun m!7962506 () Bool)

(assert (=> b!7275689 m!7962506))

(declare-fun m!7962508 () Bool)

(assert (=> b!7275689 m!7962508))

(assert (=> b!7275689 m!7962506))

(assert (=> b!7275689 m!7962508))

(declare-fun m!7962510 () Bool)

(assert (=> b!7275689 m!7962510))

(assert (=> start!710506 d!2264617))

(declare-fun bs!1912034 () Bool)

(declare-fun d!2264619 () Bool)

(assert (= bs!1912034 (and d!2264619 b!7275486)))

(declare-fun lambda!449800 () Int)

(assert (=> bs!1912034 (= lambda!449800 lambda!449780)))

(declare-fun bs!1912035 () Bool)

(assert (= bs!1912035 (and d!2264619 d!2264539)))

(assert (=> bs!1912035 (not (= lambda!449800 lambda!449784))))

(assert (=> d!2264619 (= (inv!90112 ct2!346) (forall!17666 (exprs!8281 ct2!346) lambda!449800))))

(declare-fun bs!1912036 () Bool)

(assert (= bs!1912036 d!2264619))

(declare-fun m!7962512 () Bool)

(assert (=> bs!1912036 m!7962512))

(assert (=> start!710506 d!2264619))

(declare-fun bs!1912037 () Bool)

(declare-fun d!2264621 () Bool)

(assert (= bs!1912037 (and d!2264621 b!7275486)))

(declare-fun lambda!449801 () Int)

(assert (=> bs!1912037 (= lambda!449801 lambda!449780)))

(declare-fun bs!1912038 () Bool)

(assert (= bs!1912038 (and d!2264621 d!2264539)))

(assert (=> bs!1912038 (not (= lambda!449801 lambda!449784))))

(declare-fun bs!1912039 () Bool)

(assert (= bs!1912039 (and d!2264621 d!2264619)))

(assert (=> bs!1912039 (= lambda!449801 lambda!449800)))

(assert (=> d!2264621 (= (inv!90112 ct1!250) (forall!17666 (exprs!8281 ct1!250) lambda!449801))))

(declare-fun bs!1912040 () Bool)

(assert (= bs!1912040 d!2264621))

(declare-fun m!7962514 () Bool)

(assert (=> bs!1912040 m!7962514))

(assert (=> start!710506 d!2264621))

(declare-fun d!2264623 () Bool)

(declare-fun choose!56489 ((InoxSet Context!15562) Int) (InoxSet Context!15562))

(assert (=> d!2264623 (= (flatMap!2940 lt!2596961 lambda!449781) (choose!56489 lt!2596961 lambda!449781))))

(declare-fun bs!1912041 () Bool)

(assert (= bs!1912041 d!2264623))

(declare-fun m!7962516 () Bool)

(assert (=> bs!1912041 m!7962516))

(assert (=> b!7275486 d!2264623))

(declare-fun b!7275690 () Bool)

(declare-fun e!4362953 () (InoxSet Context!15562))

(declare-fun call!663825 () (InoxSet Context!15562))

(assert (=> b!7275690 (= e!4362953 call!663825)))

(declare-fun b!7275691 () Bool)

(assert (=> b!7275691 (= e!4362953 ((as const (Array Context!15562 Bool)) false))))

(declare-fun b!7275692 () Bool)

(declare-fun e!4362952 () Bool)

(assert (=> b!7275692 (= e!4362952 (nullable!8024 (h!77322 (exprs!8281 lt!2596949))))))

(declare-fun bm!663820 () Bool)

(assert (=> bm!663820 (= call!663825 (derivationStepZipperDown!2755 (h!77322 (exprs!8281 lt!2596949)) (Context!15563 (t!385070 (exprs!8281 lt!2596949))) (h!77321 s!7854)))))

(declare-fun b!7275694 () Bool)

(declare-fun e!4362954 () (InoxSet Context!15562))

(assert (=> b!7275694 (= e!4362954 e!4362953)))

(declare-fun c!1354825 () Bool)

(assert (=> b!7275694 (= c!1354825 ((_ is Cons!70874) (exprs!8281 lt!2596949)))))

(declare-fun d!2264625 () Bool)

(declare-fun c!1354826 () Bool)

(assert (=> d!2264625 (= c!1354826 e!4362952)))

(declare-fun res!2949175 () Bool)

(assert (=> d!2264625 (=> (not res!2949175) (not e!4362952))))

(assert (=> d!2264625 (= res!2949175 ((_ is Cons!70874) (exprs!8281 lt!2596949)))))

(assert (=> d!2264625 (= (derivationStepZipperUp!2597 lt!2596949 (h!77321 s!7854)) e!4362954)))

(declare-fun b!7275693 () Bool)

(assert (=> b!7275693 (= e!4362954 ((_ map or) call!663825 (derivationStepZipperUp!2597 (Context!15563 (t!385070 (exprs!8281 lt!2596949))) (h!77321 s!7854))))))

(assert (= (and d!2264625 res!2949175) b!7275692))

(assert (= (and d!2264625 c!1354826) b!7275693))

(assert (= (and d!2264625 (not c!1354826)) b!7275694))

(assert (= (and b!7275694 c!1354825) b!7275690))

(assert (= (and b!7275694 (not c!1354825)) b!7275691))

(assert (= (or b!7275693 b!7275690) bm!663820))

(declare-fun m!7962518 () Bool)

(assert (=> b!7275692 m!7962518))

(declare-fun m!7962520 () Bool)

(assert (=> bm!663820 m!7962520))

(declare-fun m!7962522 () Bool)

(assert (=> b!7275693 m!7962522))

(assert (=> b!7275486 d!2264625))

(declare-fun d!2264627 () Bool)

(declare-fun dynLambda!28981 (Int Context!15562) (InoxSet Context!15562))

(assert (=> d!2264627 (= (flatMap!2940 lt!2596961 lambda!449781) (dynLambda!28981 lambda!449781 lt!2596949))))

(declare-fun lt!2596989 () Unit!164288)

(declare-fun choose!56490 ((InoxSet Context!15562) Context!15562 Int) Unit!164288)

(assert (=> d!2264627 (= lt!2596989 (choose!56490 lt!2596961 lt!2596949 lambda!449781))))

(assert (=> d!2264627 (= lt!2596961 (store ((as const (Array Context!15562 Bool)) false) lt!2596949 true))))

(assert (=> d!2264627 (= (lemmaFlatMapOnSingletonSet!2340 lt!2596961 lt!2596949 lambda!449781) lt!2596989)))

(declare-fun b_lambda!280825 () Bool)

(assert (=> (not b_lambda!280825) (not d!2264627)))

(declare-fun bs!1912042 () Bool)

(assert (= bs!1912042 d!2264627))

(assert (=> bs!1912042 m!7962242))

(declare-fun m!7962524 () Bool)

(assert (=> bs!1912042 m!7962524))

(declare-fun m!7962526 () Bool)

(assert (=> bs!1912042 m!7962526))

(assert (=> bs!1912042 m!7962244))

(assert (=> b!7275486 d!2264627))

(assert (=> b!7275486 d!2264609))

(declare-fun d!2264629 () Bool)

(assert (=> d!2264629 (forall!17666 (++!16735 (exprs!8281 ct1!250) (exprs!8281 ct2!346)) lambda!449780)))

(declare-fun lt!2596990 () Unit!164288)

(assert (=> d!2264629 (= lt!2596990 (choose!56488 (exprs!8281 ct1!250) (exprs!8281 ct2!346) lambda!449780))))

(assert (=> d!2264629 (forall!17666 (exprs!8281 ct1!250) lambda!449780)))

(assert (=> d!2264629 (= (lemmaConcatPreservesForall!1592 (exprs!8281 ct1!250) (exprs!8281 ct2!346) lambda!449780) lt!2596990)))

(declare-fun bs!1912043 () Bool)

(assert (= bs!1912043 d!2264629))

(assert (=> bs!1912043 m!7962254))

(assert (=> bs!1912043 m!7962254))

(declare-fun m!7962528 () Bool)

(assert (=> bs!1912043 m!7962528))

(declare-fun m!7962530 () Bool)

(assert (=> bs!1912043 m!7962530))

(declare-fun m!7962532 () Bool)

(assert (=> bs!1912043 m!7962532))

(assert (=> b!7275486 d!2264629))

(declare-fun d!2264631 () Bool)

(declare-fun e!4362955 () Bool)

(assert (=> d!2264631 e!4362955))

(declare-fun res!2949176 () Bool)

(assert (=> d!2264631 (=> (not res!2949176) (not e!4362955))))

(declare-fun lt!2596991 () List!70998)

(assert (=> d!2264631 (= res!2949176 (= (content!14800 lt!2596991) ((_ map or) (content!14800 (exprs!8281 ct1!250)) (content!14800 (exprs!8281 ct2!346)))))))

(declare-fun e!4362956 () List!70998)

(assert (=> d!2264631 (= lt!2596991 e!4362956)))

(declare-fun c!1354827 () Bool)

(assert (=> d!2264631 (= c!1354827 ((_ is Nil!70874) (exprs!8281 ct1!250)))))

(assert (=> d!2264631 (= (++!16735 (exprs!8281 ct1!250) (exprs!8281 ct2!346)) lt!2596991)))

(declare-fun b!7275697 () Bool)

(declare-fun res!2949177 () Bool)

(assert (=> b!7275697 (=> (not res!2949177) (not e!4362955))))

(assert (=> b!7275697 (= res!2949177 (= (size!41846 lt!2596991) (+ (size!41846 (exprs!8281 ct1!250)) (size!41846 (exprs!8281 ct2!346)))))))

(declare-fun b!7275698 () Bool)

(assert (=> b!7275698 (= e!4362955 (or (not (= (exprs!8281 ct2!346) Nil!70874)) (= lt!2596991 (exprs!8281 ct1!250))))))

(declare-fun b!7275695 () Bool)

(assert (=> b!7275695 (= e!4362956 (exprs!8281 ct2!346))))

(declare-fun b!7275696 () Bool)

(assert (=> b!7275696 (= e!4362956 (Cons!70874 (h!77322 (exprs!8281 ct1!250)) (++!16735 (t!385070 (exprs!8281 ct1!250)) (exprs!8281 ct2!346))))))

(assert (= (and d!2264631 c!1354827) b!7275695))

(assert (= (and d!2264631 (not c!1354827)) b!7275696))

(assert (= (and d!2264631 res!2949176) b!7275697))

(assert (= (and b!7275697 res!2949177) b!7275698))

(declare-fun m!7962534 () Bool)

(assert (=> d!2264631 m!7962534))

(declare-fun m!7962536 () Bool)

(assert (=> d!2264631 m!7962536))

(assert (=> d!2264631 m!7962334))

(declare-fun m!7962538 () Bool)

(assert (=> b!7275697 m!7962538))

(declare-fun m!7962540 () Bool)

(assert (=> b!7275697 m!7962540))

(assert (=> b!7275697 m!7962340))

(declare-fun m!7962542 () Bool)

(assert (=> b!7275696 m!7962542))

(assert (=> b!7275486 d!2264631))

(declare-fun bs!1912044 () Bool)

(declare-fun d!2264633 () Bool)

(assert (= bs!1912044 (and d!2264633 b!7275486)))

(declare-fun lambda!449804 () Int)

(assert (=> bs!1912044 (= lambda!449804 lambda!449781)))

(assert (=> d!2264633 true))

(assert (=> d!2264633 (= (derivationStepZipper!3577 lt!2596961 (h!77321 s!7854)) (flatMap!2940 lt!2596961 lambda!449804))))

(declare-fun bs!1912045 () Bool)

(assert (= bs!1912045 d!2264633))

(declare-fun m!7962544 () Bool)

(assert (=> bs!1912045 m!7962544))

(assert (=> b!7275486 d!2264633))

(declare-fun d!2264635 () Bool)

(assert (=> d!2264635 (= (flatMap!2940 lt!2596950 lambda!449781) (choose!56489 lt!2596950 lambda!449781))))

(declare-fun bs!1912046 () Bool)

(assert (= bs!1912046 d!2264635))

(declare-fun m!7962546 () Bool)

(assert (=> bs!1912046 m!7962546))

(assert (=> b!7275486 d!2264635))

(declare-fun d!2264637 () Bool)

(assert (=> d!2264637 (= (flatMap!2940 lt!2596950 lambda!449781) (dynLambda!28981 lambda!449781 ct1!250))))

(declare-fun lt!2596992 () Unit!164288)

(assert (=> d!2264637 (= lt!2596992 (choose!56490 lt!2596950 ct1!250 lambda!449781))))

(assert (=> d!2264637 (= lt!2596950 (store ((as const (Array Context!15562 Bool)) false) ct1!250 true))))

(assert (=> d!2264637 (= (lemmaFlatMapOnSingletonSet!2340 lt!2596950 ct1!250 lambda!449781) lt!2596992)))

(declare-fun b_lambda!280827 () Bool)

(assert (=> (not b_lambda!280827) (not d!2264637)))

(declare-fun bs!1912047 () Bool)

(assert (= bs!1912047 d!2264637))

(assert (=> bs!1912047 m!7962246))

(declare-fun m!7962548 () Bool)

(assert (=> bs!1912047 m!7962548))

(declare-fun m!7962550 () Bool)

(assert (=> bs!1912047 m!7962550))

(assert (=> bs!1912047 m!7962250))

(assert (=> b!7275486 d!2264637))

(assert (=> b!7275481 d!2264549))

(assert (=> b!7275481 d!2264605))

(declare-fun d!2264639 () Bool)

(assert (=> d!2264639 (= (flatMap!2940 lt!2596953 lambda!449781) (choose!56489 lt!2596953 lambda!449781))))

(declare-fun bs!1912048 () Bool)

(assert (= bs!1912048 d!2264639))

(declare-fun m!7962552 () Bool)

(assert (=> bs!1912048 m!7962552))

(assert (=> b!7275481 d!2264639))

(declare-fun d!2264641 () Bool)

(declare-fun c!1354830 () Bool)

(assert (=> d!2264641 (= c!1354830 (isEmpty!40767 (t!385069 s!7854)))))

(declare-fun e!4362957 () Bool)

(assert (=> d!2264641 (= (matchZipper!3745 lt!2596944 (t!385069 s!7854)) e!4362957)))

(declare-fun b!7275701 () Bool)

(assert (=> b!7275701 (= e!4362957 (nullableZipper!3041 lt!2596944))))

(declare-fun b!7275702 () Bool)

(assert (=> b!7275702 (= e!4362957 (matchZipper!3745 (derivationStepZipper!3577 lt!2596944 (head!15039 (t!385069 s!7854))) (tail!14552 (t!385069 s!7854))))))

(assert (= (and d!2264641 c!1354830) b!7275701))

(assert (= (and d!2264641 (not c!1354830)) b!7275702))

(declare-fun m!7962554 () Bool)

(assert (=> d!2264641 m!7962554))

(declare-fun m!7962556 () Bool)

(assert (=> b!7275701 m!7962556))

(declare-fun m!7962558 () Bool)

(assert (=> b!7275702 m!7962558))

(assert (=> b!7275702 m!7962558))

(declare-fun m!7962560 () Bool)

(assert (=> b!7275702 m!7962560))

(declare-fun m!7962562 () Bool)

(assert (=> b!7275702 m!7962562))

(assert (=> b!7275702 m!7962560))

(assert (=> b!7275702 m!7962562))

(declare-fun m!7962564 () Bool)

(assert (=> b!7275702 m!7962564))

(assert (=> b!7275481 d!2264641))

(declare-fun d!2264643 () Bool)

(assert (=> d!2264643 (= (flatMap!2940 lt!2596953 lambda!449781) (dynLambda!28981 lambda!449781 lt!2596952))))

(declare-fun lt!2596993 () Unit!164288)

(assert (=> d!2264643 (= lt!2596993 (choose!56490 lt!2596953 lt!2596952 lambda!449781))))

(assert (=> d!2264643 (= lt!2596953 (store ((as const (Array Context!15562 Bool)) false) lt!2596952 true))))

(assert (=> d!2264643 (= (lemmaFlatMapOnSingletonSet!2340 lt!2596953 lt!2596952 lambda!449781) lt!2596993)))

(declare-fun b_lambda!280829 () Bool)

(assert (=> (not b_lambda!280829) (not d!2264643)))

(declare-fun bs!1912049 () Bool)

(assert (= bs!1912049 d!2264643))

(assert (=> bs!1912049 m!7962298))

(declare-fun m!7962566 () Bool)

(assert (=> bs!1912049 m!7962566))

(declare-fun m!7962568 () Bool)

(assert (=> bs!1912049 m!7962568))

(assert (=> bs!1912049 m!7962296))

(assert (=> b!7275481 d!2264643))

(declare-fun bs!1912050 () Bool)

(declare-fun d!2264645 () Bool)

(assert (= bs!1912050 (and d!2264645 b!7275486)))

(declare-fun lambda!449807 () Int)

(assert (=> bs!1912050 (= lambda!449807 lambda!449780)))

(declare-fun bs!1912051 () Bool)

(assert (= bs!1912051 (and d!2264645 d!2264539)))

(assert (=> bs!1912051 (not (= lambda!449807 lambda!449784))))

(declare-fun bs!1912052 () Bool)

(assert (= bs!1912052 (and d!2264645 d!2264619)))

(assert (=> bs!1912052 (= lambda!449807 lambda!449800)))

(declare-fun bs!1912053 () Bool)

(assert (= bs!1912053 (and d!2264645 d!2264621)))

(assert (=> bs!1912053 (= lambda!449807 lambda!449801)))

(assert (=> d!2264645 (matchZipper!3745 (store ((as const (Array Context!15562 Bool)) false) (Context!15563 (++!16735 (exprs!8281 lt!2596945) (exprs!8281 ct2!346))) true) s!7854)))

(declare-fun lt!2596999 () Unit!164288)

(assert (=> d!2264645 (= lt!2596999 (lemmaConcatPreservesForall!1592 (exprs!8281 lt!2596945) (exprs!8281 ct2!346) lambda!449807))))

(declare-fun lt!2596998 () Unit!164288)

(declare-fun choose!56491 (Context!15562 Context!15562 List!70997) Unit!164288)

(assert (=> d!2264645 (= lt!2596998 (choose!56491 lt!2596945 ct2!346 s!7854))))

(assert (=> d!2264645 (matchZipper!3745 (store ((as const (Array Context!15562 Bool)) false) ct2!346 true) s!7854)))

(assert (=> d!2264645 (= (lemmaPrependingNullableCtxStillMatches!46 lt!2596945 ct2!346 s!7854) lt!2596998)))

(declare-fun bs!1912054 () Bool)

(assert (= bs!1912054 d!2264645))

(declare-fun m!7962570 () Bool)

(assert (=> bs!1912054 m!7962570))

(declare-fun m!7962572 () Bool)

(assert (=> bs!1912054 m!7962572))

(assert (=> bs!1912054 m!7962570))

(declare-fun m!7962574 () Bool)

(assert (=> bs!1912054 m!7962574))

(assert (=> bs!1912054 m!7962278))

(assert (=> bs!1912054 m!7962278))

(assert (=> bs!1912054 m!7962280))

(declare-fun m!7962576 () Bool)

(assert (=> bs!1912054 m!7962576))

(declare-fun m!7962578 () Bool)

(assert (=> bs!1912054 m!7962578))

(assert (=> b!7275481 d!2264645))

(declare-fun d!2264647 () Bool)

(declare-fun c!1354831 () Bool)

(assert (=> d!2264647 (= c!1354831 (isEmpty!40767 s!7854))))

(declare-fun e!4362958 () Bool)

(assert (=> d!2264647 (= (matchZipper!3745 lt!2596953 s!7854) e!4362958)))

(declare-fun b!7275703 () Bool)

(assert (=> b!7275703 (= e!4362958 (nullableZipper!3041 lt!2596953))))

(declare-fun b!7275704 () Bool)

(assert (=> b!7275704 (= e!4362958 (matchZipper!3745 (derivationStepZipper!3577 lt!2596953 (head!15039 s!7854)) (tail!14552 s!7854)))))

(assert (= (and d!2264647 c!1354831) b!7275703))

(assert (= (and d!2264647 (not c!1354831)) b!7275704))

(assert (=> d!2264647 m!7962500))

(declare-fun m!7962580 () Bool)

(assert (=> b!7275703 m!7962580))

(assert (=> b!7275704 m!7962504))

(assert (=> b!7275704 m!7962504))

(declare-fun m!7962582 () Bool)

(assert (=> b!7275704 m!7962582))

(assert (=> b!7275704 m!7962508))

(assert (=> b!7275704 m!7962582))

(assert (=> b!7275704 m!7962508))

(declare-fun m!7962584 () Bool)

(assert (=> b!7275704 m!7962584))

(assert (=> b!7275481 d!2264647))

(declare-fun b!7275709 () Bool)

(declare-fun e!4362961 () Bool)

(declare-fun tp!2042042 () Bool)

(declare-fun tp!2042043 () Bool)

(assert (=> b!7275709 (= e!4362961 (and tp!2042042 tp!2042043))))

(assert (=> b!7275477 (= tp!2042024 e!4362961)))

(assert (= (and b!7275477 ((_ is Cons!70874) (exprs!8281 ct2!346))) b!7275709))

(declare-fun b!7275710 () Bool)

(declare-fun e!4362962 () Bool)

(declare-fun tp!2042044 () Bool)

(declare-fun tp!2042045 () Bool)

(assert (=> b!7275710 (= e!4362962 (and tp!2042044 tp!2042045))))

(assert (=> b!7275487 (= tp!2042026 e!4362962)))

(assert (= (and b!7275487 ((_ is Cons!70874) (exprs!8281 ct1!250))) b!7275710))

(declare-fun b!7275715 () Bool)

(declare-fun e!4362965 () Bool)

(declare-fun tp!2042048 () Bool)

(assert (=> b!7275715 (= e!4362965 (and tp_is_empty!47147 tp!2042048))))

(assert (=> b!7275480 (= tp!2042025 e!4362965)))

(assert (= (and b!7275480 ((_ is Cons!70873) (t!385069 s!7854))) b!7275715))

(declare-fun b_lambda!280831 () Bool)

(assert (= b_lambda!280827 (or b!7275486 b_lambda!280831)))

(declare-fun bs!1912055 () Bool)

(declare-fun d!2264649 () Bool)

(assert (= bs!1912055 (and d!2264649 b!7275486)))

(assert (=> bs!1912055 (= (dynLambda!28981 lambda!449781 ct1!250) (derivationStepZipperUp!2597 ct1!250 (h!77321 s!7854)))))

(assert (=> bs!1912055 m!7962260))

(assert (=> d!2264637 d!2264649))

(declare-fun b_lambda!280833 () Bool)

(assert (= b_lambda!280829 (or b!7275486 b_lambda!280833)))

(declare-fun bs!1912056 () Bool)

(declare-fun d!2264651 () Bool)

(assert (= bs!1912056 (and d!2264651 b!7275486)))

(assert (=> bs!1912056 (= (dynLambda!28981 lambda!449781 lt!2596952) (derivationStepZipperUp!2597 lt!2596952 (h!77321 s!7854)))))

(assert (=> bs!1912056 m!7962274))

(assert (=> d!2264643 d!2264651))

(declare-fun b_lambda!280835 () Bool)

(assert (= b_lambda!280825 (or b!7275486 b_lambda!280835)))

(declare-fun bs!1912057 () Bool)

(declare-fun d!2264653 () Bool)

(assert (= bs!1912057 (and d!2264653 b!7275486)))

(assert (=> bs!1912057 (= (dynLambda!28981 lambda!449781 lt!2596949) (derivationStepZipperUp!2597 lt!2596949 (h!77321 s!7854)))))

(assert (=> bs!1912057 m!7962248))

(assert (=> d!2264627 d!2264653))

(check-sat (not bs!1912055) (not b!7275710) (not bm!663811) (not b!7275709) (not d!2264631) (not d!2264645) (not d!2264635) (not b!7275660) (not b!7275666) (not bm!663819) (not b!7275677) (not d!2264633) (not b!7275696) (not b_lambda!280835) (not bs!1912056) (not b!7275665) (not b!7275646) (not d!2264639) (not b!7275688) (not d!2264545) (not b!7275702) (not d!2264641) (not b!7275681) (not b!7275682) (not b!7275548) (not b!7275692) (not bm!663808) (not b!7275703) (not bm!663817) (not d!2264617) (not d!2264539) tp_is_empty!47147 (not bm!663816) (not b!7275661) (not bm!663820) (not d!2264647) (not bm!663818) (not b_lambda!280833) (not d!2264643) (not d!2264637) (not d!2264621) (not d!2264623) (not b!7275715) (not bm!663806) (not d!2264629) (not d!2264549) (not b!7275697) (not b!7275701) (not b!7275704) (not b!7275689) (not d!2264619) (not d!2264627) (not b!7275549) (not b!7275693) (not d!2264607) (not bs!1912057) (not b_lambda!280831) (not bm!663812) (not bm!663807))
(check-sat)
(get-model)

(declare-fun d!2264679 () Bool)

(assert (=> d!2264679 true))

(declare-fun setRes!53659 () Bool)

(assert (=> d!2264679 setRes!53659))

(declare-fun condSetEmpty!53659 () Bool)

(declare-fun res!2949194 () (InoxSet Context!15562))

(assert (=> d!2264679 (= condSetEmpty!53659 (= res!2949194 ((as const (Array Context!15562 Bool)) false)))))

(assert (=> d!2264679 (= (choose!56489 lt!2596950 lambda!449781) res!2949194)))

(declare-fun setIsEmpty!53659 () Bool)

(assert (=> setIsEmpty!53659 setRes!53659))

(declare-fun setElem!53659 () Context!15562)

(declare-fun setNonEmpty!53659 () Bool)

(declare-fun tp!2042060 () Bool)

(declare-fun e!4362989 () Bool)

(assert (=> setNonEmpty!53659 (= setRes!53659 (and tp!2042060 (inv!90112 setElem!53659) e!4362989))))

(declare-fun setRest!53659 () (InoxSet Context!15562))

(assert (=> setNonEmpty!53659 (= res!2949194 ((_ map or) (store ((as const (Array Context!15562 Bool)) false) setElem!53659 true) setRest!53659))))

(declare-fun b!7275750 () Bool)

(declare-fun tp!2042059 () Bool)

(assert (=> b!7275750 (= e!4362989 tp!2042059)))

(assert (= (and d!2264679 condSetEmpty!53659) setIsEmpty!53659))

(assert (= (and d!2264679 (not condSetEmpty!53659)) setNonEmpty!53659))

(assert (= setNonEmpty!53659 b!7275750))

(declare-fun m!7962632 () Bool)

(assert (=> setNonEmpty!53659 m!7962632))

(assert (=> d!2264635 d!2264679))

(declare-fun bm!663822 () Bool)

(declare-fun call!663831 () (InoxSet Context!15562))

(declare-fun call!663830 () (InoxSet Context!15562))

(assert (=> bm!663822 (= call!663831 call!663830)))

(declare-fun b!7275751 () Bool)

(declare-fun e!4362995 () (InoxSet Context!15562))

(declare-fun call!663829 () (InoxSet Context!15562))

(assert (=> b!7275751 (= e!4362995 ((_ map or) call!663829 call!663830))))

(declare-fun b!7275752 () Bool)

(declare-fun e!4362994 () (InoxSet Context!15562))

(declare-fun call!663832 () (InoxSet Context!15562))

(assert (=> b!7275752 (= e!4362994 call!663832)))

(declare-fun b!7275753 () Bool)

(declare-fun e!4362992 () (InoxSet Context!15562))

(assert (=> b!7275753 (= e!4362992 e!4362995)))

(declare-fun c!1354847 () Bool)

(assert (=> b!7275753 (= c!1354847 ((_ is Union!18841) (h!77322 (exprs!8281 lt!2596945))))))

(declare-fun b!7275754 () Bool)

(assert (=> b!7275754 (= e!4362992 (store ((as const (Array Context!15562 Bool)) false) (Context!15563 (t!385070 (exprs!8281 lt!2596945))) true))))

(declare-fun d!2264683 () Bool)

(declare-fun c!1354843 () Bool)

(assert (=> d!2264683 (= c!1354843 (and ((_ is ElementMatch!18841) (h!77322 (exprs!8281 lt!2596945))) (= (c!1354743 (h!77322 (exprs!8281 lt!2596945))) (h!77321 s!7854))))))

(assert (=> d!2264683 (= (derivationStepZipperDown!2755 (h!77322 (exprs!8281 lt!2596945)) (Context!15563 (t!385070 (exprs!8281 lt!2596945))) (h!77321 s!7854)) e!4362992)))

(declare-fun b!7275755 () Bool)

(declare-fun c!1354846 () Bool)

(assert (=> b!7275755 (= c!1354846 ((_ is Star!18841) (h!77322 (exprs!8281 lt!2596945))))))

(declare-fun e!4362991 () (InoxSet Context!15562))

(assert (=> b!7275755 (= e!4362991 e!4362994)))

(declare-fun bm!663823 () Bool)

(declare-fun call!663827 () List!70998)

(declare-fun call!663828 () List!70998)

(assert (=> bm!663823 (= call!663827 call!663828)))

(declare-fun bm!663824 () Bool)

(assert (=> bm!663824 (= call!663832 call!663831)))

(declare-fun bm!663825 () Bool)

(declare-fun c!1354845 () Bool)

(declare-fun c!1354844 () Bool)

(assert (=> bm!663825 (= call!663828 ($colon$colon!2987 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596945)))) (ite (or c!1354845 c!1354844) (regTwo!38194 (h!77322 (exprs!8281 lt!2596945))) (h!77322 (exprs!8281 lt!2596945)))))))

(declare-fun b!7275758 () Bool)

(declare-fun e!4362993 () (InoxSet Context!15562))

(assert (=> b!7275758 (= e!4362993 e!4362991)))

(assert (=> b!7275758 (= c!1354844 ((_ is Concat!27686) (h!77322 (exprs!8281 lt!2596945))))))

(declare-fun b!7275759 () Bool)

(assert (=> b!7275759 (= e!4362993 ((_ map or) call!663829 call!663831))))

(declare-fun b!7275760 () Bool)

(assert (=> b!7275760 (= e!4362991 call!663832)))

(declare-fun b!7275761 () Bool)

(declare-fun e!4362990 () Bool)

(assert (=> b!7275761 (= c!1354845 e!4362990)))

(declare-fun res!2949195 () Bool)

(assert (=> b!7275761 (=> (not res!2949195) (not e!4362990))))

(assert (=> b!7275761 (= res!2949195 ((_ is Concat!27686) (h!77322 (exprs!8281 lt!2596945))))))

(assert (=> b!7275761 (= e!4362995 e!4362993)))

(declare-fun b!7275762 () Bool)

(assert (=> b!7275762 (= e!4362990 (nullable!8024 (regOne!38194 (h!77322 (exprs!8281 lt!2596945)))))))

(declare-fun b!7275763 () Bool)

(assert (=> b!7275763 (= e!4362994 ((as const (Array Context!15562 Bool)) false))))

(declare-fun bm!663826 () Bool)

(assert (=> bm!663826 (= call!663829 (derivationStepZipperDown!2755 (ite c!1354847 (regOne!38195 (h!77322 (exprs!8281 lt!2596945))) (regOne!38194 (h!77322 (exprs!8281 lt!2596945)))) (ite c!1354847 (Context!15563 (t!385070 (exprs!8281 lt!2596945))) (Context!15563 call!663828)) (h!77321 s!7854)))))

(declare-fun bm!663827 () Bool)

(assert (=> bm!663827 (= call!663830 (derivationStepZipperDown!2755 (ite c!1354847 (regTwo!38195 (h!77322 (exprs!8281 lt!2596945))) (ite c!1354845 (regTwo!38194 (h!77322 (exprs!8281 lt!2596945))) (ite c!1354844 (regOne!38194 (h!77322 (exprs!8281 lt!2596945))) (reg!19170 (h!77322 (exprs!8281 lt!2596945)))))) (ite (or c!1354847 c!1354845) (Context!15563 (t!385070 (exprs!8281 lt!2596945))) (Context!15563 call!663827)) (h!77321 s!7854)))))

(assert (= (and d!2264683 c!1354843) b!7275754))

(assert (= (and d!2264683 (not c!1354843)) b!7275753))

(assert (= (and b!7275753 c!1354847) b!7275751))

(assert (= (and b!7275753 (not c!1354847)) b!7275761))

(assert (= (and b!7275761 res!2949195) b!7275762))

(assert (= (and b!7275761 c!1354845) b!7275759))

(assert (= (and b!7275761 (not c!1354845)) b!7275758))

(assert (= (and b!7275758 c!1354844) b!7275760))

(assert (= (and b!7275758 (not c!1354844)) b!7275755))

(assert (= (and b!7275755 c!1354846) b!7275752))

(assert (= (and b!7275755 (not c!1354846)) b!7275763))

(assert (= (or b!7275760 b!7275752) bm!663823))

(assert (= (or b!7275760 b!7275752) bm!663824))

(assert (= (or b!7275759 bm!663823) bm!663825))

(assert (= (or b!7275759 bm!663824) bm!663822))

(assert (= (or b!7275751 b!7275759) bm!663826))

(assert (= (or b!7275751 bm!663822) bm!663827))

(declare-fun m!7962656 () Bool)

(assert (=> bm!663825 m!7962656))

(declare-fun m!7962658 () Bool)

(assert (=> bm!663827 m!7962658))

(declare-fun m!7962660 () Bool)

(assert (=> b!7275754 m!7962660))

(declare-fun m!7962662 () Bool)

(assert (=> b!7275762 m!7962662))

(declare-fun m!7962664 () Bool)

(assert (=> bm!663826 m!7962664))

(assert (=> bm!663819 d!2264683))

(declare-fun d!2264695 () Bool)

(assert (=> d!2264695 (= (flatMap!2940 lt!2596961 lambda!449804) (choose!56489 lt!2596961 lambda!449804))))

(declare-fun bs!1912068 () Bool)

(assert (= bs!1912068 d!2264695))

(declare-fun m!7962666 () Bool)

(assert (=> bs!1912068 m!7962666))

(assert (=> d!2264633 d!2264695))

(declare-fun bm!663834 () Bool)

(declare-fun call!663843 () (InoxSet Context!15562))

(declare-fun call!663842 () (InoxSet Context!15562))

(assert (=> bm!663834 (= call!663843 call!663842)))

(declare-fun b!7275779 () Bool)

(declare-fun e!4363010 () (InoxSet Context!15562))

(declare-fun call!663841 () (InoxSet Context!15562))

(assert (=> b!7275779 (= e!4363010 ((_ map or) call!663841 call!663842))))

(declare-fun b!7275780 () Bool)

(declare-fun e!4363009 () (InoxSet Context!15562))

(declare-fun call!663844 () (InoxSet Context!15562))

(assert (=> b!7275780 (= e!4363009 call!663844)))

(declare-fun b!7275781 () Bool)

(declare-fun e!4363007 () (InoxSet Context!15562))

(assert (=> b!7275781 (= e!4363007 e!4363010)))

(declare-fun c!1354859 () Bool)

(assert (=> b!7275781 (= c!1354859 ((_ is Union!18841) (h!77322 (exprs!8281 lt!2596949))))))

(declare-fun b!7275782 () Bool)

(assert (=> b!7275782 (= e!4363007 (store ((as const (Array Context!15562 Bool)) false) (Context!15563 (t!385070 (exprs!8281 lt!2596949))) true))))

(declare-fun d!2264697 () Bool)

(declare-fun c!1354855 () Bool)

(assert (=> d!2264697 (= c!1354855 (and ((_ is ElementMatch!18841) (h!77322 (exprs!8281 lt!2596949))) (= (c!1354743 (h!77322 (exprs!8281 lt!2596949))) (h!77321 s!7854))))))

(assert (=> d!2264697 (= (derivationStepZipperDown!2755 (h!77322 (exprs!8281 lt!2596949)) (Context!15563 (t!385070 (exprs!8281 lt!2596949))) (h!77321 s!7854)) e!4363007)))

(declare-fun b!7275783 () Bool)

(declare-fun c!1354858 () Bool)

(assert (=> b!7275783 (= c!1354858 ((_ is Star!18841) (h!77322 (exprs!8281 lt!2596949))))))

(declare-fun e!4363006 () (InoxSet Context!15562))

(assert (=> b!7275783 (= e!4363006 e!4363009)))

(declare-fun bm!663835 () Bool)

(declare-fun call!663839 () List!70998)

(declare-fun call!663840 () List!70998)

(assert (=> bm!663835 (= call!663839 call!663840)))

(declare-fun bm!663836 () Bool)

(assert (=> bm!663836 (= call!663844 call!663843)))

(declare-fun c!1354857 () Bool)

(declare-fun c!1354856 () Bool)

(declare-fun bm!663837 () Bool)

(assert (=> bm!663837 (= call!663840 ($colon$colon!2987 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596949)))) (ite (or c!1354857 c!1354856) (regTwo!38194 (h!77322 (exprs!8281 lt!2596949))) (h!77322 (exprs!8281 lt!2596949)))))))

(declare-fun b!7275784 () Bool)

(declare-fun e!4363008 () (InoxSet Context!15562))

(assert (=> b!7275784 (= e!4363008 e!4363006)))

(assert (=> b!7275784 (= c!1354856 ((_ is Concat!27686) (h!77322 (exprs!8281 lt!2596949))))))

(declare-fun b!7275785 () Bool)

(assert (=> b!7275785 (= e!4363008 ((_ map or) call!663841 call!663843))))

(declare-fun b!7275786 () Bool)

(assert (=> b!7275786 (= e!4363006 call!663844)))

(declare-fun b!7275787 () Bool)

(declare-fun e!4363005 () Bool)

(assert (=> b!7275787 (= c!1354857 e!4363005)))

(declare-fun res!2949199 () Bool)

(assert (=> b!7275787 (=> (not res!2949199) (not e!4363005))))

(assert (=> b!7275787 (= res!2949199 ((_ is Concat!27686) (h!77322 (exprs!8281 lt!2596949))))))

(assert (=> b!7275787 (= e!4363010 e!4363008)))

(declare-fun b!7275788 () Bool)

(assert (=> b!7275788 (= e!4363005 (nullable!8024 (regOne!38194 (h!77322 (exprs!8281 lt!2596949)))))))

(declare-fun b!7275789 () Bool)

(assert (=> b!7275789 (= e!4363009 ((as const (Array Context!15562 Bool)) false))))

(declare-fun bm!663838 () Bool)

(assert (=> bm!663838 (= call!663841 (derivationStepZipperDown!2755 (ite c!1354859 (regOne!38195 (h!77322 (exprs!8281 lt!2596949))) (regOne!38194 (h!77322 (exprs!8281 lt!2596949)))) (ite c!1354859 (Context!15563 (t!385070 (exprs!8281 lt!2596949))) (Context!15563 call!663840)) (h!77321 s!7854)))))

(declare-fun bm!663839 () Bool)

(assert (=> bm!663839 (= call!663842 (derivationStepZipperDown!2755 (ite c!1354859 (regTwo!38195 (h!77322 (exprs!8281 lt!2596949))) (ite c!1354857 (regTwo!38194 (h!77322 (exprs!8281 lt!2596949))) (ite c!1354856 (regOne!38194 (h!77322 (exprs!8281 lt!2596949))) (reg!19170 (h!77322 (exprs!8281 lt!2596949)))))) (ite (or c!1354859 c!1354857) (Context!15563 (t!385070 (exprs!8281 lt!2596949))) (Context!15563 call!663839)) (h!77321 s!7854)))))

(assert (= (and d!2264697 c!1354855) b!7275782))

(assert (= (and d!2264697 (not c!1354855)) b!7275781))

(assert (= (and b!7275781 c!1354859) b!7275779))

(assert (= (and b!7275781 (not c!1354859)) b!7275787))

(assert (= (and b!7275787 res!2949199) b!7275788))

(assert (= (and b!7275787 c!1354857) b!7275785))

(assert (= (and b!7275787 (not c!1354857)) b!7275784))

(assert (= (and b!7275784 c!1354856) b!7275786))

(assert (= (and b!7275784 (not c!1354856)) b!7275783))

(assert (= (and b!7275783 c!1354858) b!7275780))

(assert (= (and b!7275783 (not c!1354858)) b!7275789))

(assert (= (or b!7275786 b!7275780) bm!663835))

(assert (= (or b!7275786 b!7275780) bm!663836))

(assert (= (or b!7275785 bm!663835) bm!663837))

(assert (= (or b!7275785 bm!663836) bm!663834))

(assert (= (or b!7275779 b!7275785) bm!663838))

(assert (= (or b!7275779 bm!663834) bm!663839))

(declare-fun m!7962684 () Bool)

(assert (=> bm!663837 m!7962684))

(declare-fun m!7962686 () Bool)

(assert (=> bm!663839 m!7962686))

(declare-fun m!7962692 () Bool)

(assert (=> b!7275782 m!7962692))

(declare-fun m!7962694 () Bool)

(assert (=> b!7275788 m!7962694))

(declare-fun m!7962696 () Bool)

(assert (=> bm!663838 m!7962696))

(assert (=> bm!663820 d!2264697))

(declare-fun bm!663841 () Bool)

(declare-fun call!663850 () (InoxSet Context!15562))

(declare-fun call!663849 () (InoxSet Context!15562))

(assert (=> bm!663841 (= call!663850 call!663849)))

(declare-fun b!7275797 () Bool)

(declare-fun e!4363021 () (InoxSet Context!15562))

(declare-fun call!663848 () (InoxSet Context!15562))

(assert (=> b!7275797 (= e!4363021 ((_ map or) call!663848 call!663849))))

(declare-fun b!7275798 () Bool)

(declare-fun e!4363020 () (InoxSet Context!15562))

(declare-fun call!663851 () (InoxSet Context!15562))

(assert (=> b!7275798 (= e!4363020 call!663851)))

(declare-fun b!7275799 () Bool)

(declare-fun e!4363018 () (InoxSet Context!15562))

(assert (=> b!7275799 (= e!4363018 e!4363021)))

(declare-fun c!1354866 () Bool)

(assert (=> b!7275799 (= c!1354866 ((_ is Union!18841) (ite c!1354806 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))))))

(declare-fun b!7275800 () Bool)

(assert (=> b!7275800 (= e!4363018 (store ((as const (Array Context!15562 Bool)) false) (ite c!1354806 lt!2596952 (Context!15563 call!663809)) true))))

(declare-fun d!2264705 () Bool)

(declare-fun c!1354862 () Bool)

(assert (=> d!2264705 (= c!1354862 (and ((_ is ElementMatch!18841) (ite c!1354806 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))) (= (c!1354743 (ite c!1354806 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))) (h!77321 s!7854))))))

(assert (=> d!2264705 (= (derivationStepZipperDown!2755 (ite c!1354806 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250)))) (ite c!1354806 lt!2596952 (Context!15563 call!663809)) (h!77321 s!7854)) e!4363018)))

(declare-fun b!7275801 () Bool)

(declare-fun c!1354865 () Bool)

(assert (=> b!7275801 (= c!1354865 ((_ is Star!18841) (ite c!1354806 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))))))

(declare-fun e!4363017 () (InoxSet Context!15562))

(assert (=> b!7275801 (= e!4363017 e!4363020)))

(declare-fun bm!663842 () Bool)

(declare-fun call!663846 () List!70998)

(declare-fun call!663847 () List!70998)

(assert (=> bm!663842 (= call!663846 call!663847)))

(declare-fun bm!663843 () Bool)

(assert (=> bm!663843 (= call!663851 call!663850)))

(declare-fun c!1354863 () Bool)

(declare-fun bm!663844 () Bool)

(declare-fun c!1354864 () Bool)

(assert (=> bm!663844 (= call!663847 ($colon$colon!2987 (exprs!8281 (ite c!1354806 lt!2596952 (Context!15563 call!663809))) (ite (or c!1354864 c!1354863) (regTwo!38194 (ite c!1354806 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))) (ite c!1354806 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250)))))))))

(declare-fun b!7275802 () Bool)

(declare-fun e!4363019 () (InoxSet Context!15562))

(assert (=> b!7275802 (= e!4363019 e!4363017)))

(assert (=> b!7275802 (= c!1354863 ((_ is Concat!27686) (ite c!1354806 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))))))

(declare-fun b!7275803 () Bool)

(assert (=> b!7275803 (= e!4363019 ((_ map or) call!663848 call!663850))))

(declare-fun b!7275804 () Bool)

(assert (=> b!7275804 (= e!4363017 call!663851)))

(declare-fun b!7275805 () Bool)

(declare-fun e!4363016 () Bool)

(assert (=> b!7275805 (= c!1354864 e!4363016)))

(declare-fun res!2949203 () Bool)

(assert (=> b!7275805 (=> (not res!2949203) (not e!4363016))))

(assert (=> b!7275805 (= res!2949203 ((_ is Concat!27686) (ite c!1354806 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))))))

(assert (=> b!7275805 (= e!4363021 e!4363019)))

(declare-fun b!7275806 () Bool)

(assert (=> b!7275806 (= e!4363016 (nullable!8024 (regOne!38194 (ite c!1354806 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250)))))))))

(declare-fun b!7275807 () Bool)

(assert (=> b!7275807 (= e!4363020 ((as const (Array Context!15562 Bool)) false))))

(declare-fun bm!663845 () Bool)

(assert (=> bm!663845 (= call!663848 (derivationStepZipperDown!2755 (ite c!1354866 (regOne!38195 (ite c!1354806 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))) (regOne!38194 (ite c!1354806 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250)))))) (ite c!1354866 (ite c!1354806 lt!2596952 (Context!15563 call!663809)) (Context!15563 call!663847)) (h!77321 s!7854)))))

(declare-fun bm!663846 () Bool)

(assert (=> bm!663846 (= call!663849 (derivationStepZipperDown!2755 (ite c!1354866 (regTwo!38195 (ite c!1354806 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))) (ite c!1354864 (regTwo!38194 (ite c!1354806 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))) (ite c!1354863 (regOne!38194 (ite c!1354806 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))) (reg!19170 (ite c!1354806 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250)))))))) (ite (or c!1354866 c!1354864) (ite c!1354806 lt!2596952 (Context!15563 call!663809)) (Context!15563 call!663846)) (h!77321 s!7854)))))

(assert (= (and d!2264705 c!1354862) b!7275800))

(assert (= (and d!2264705 (not c!1354862)) b!7275799))

(assert (= (and b!7275799 c!1354866) b!7275797))

(assert (= (and b!7275799 (not c!1354866)) b!7275805))

(assert (= (and b!7275805 res!2949203) b!7275806))

(assert (= (and b!7275805 c!1354864) b!7275803))

(assert (= (and b!7275805 (not c!1354864)) b!7275802))

(assert (= (and b!7275802 c!1354863) b!7275804))

(assert (= (and b!7275802 (not c!1354863)) b!7275801))

(assert (= (and b!7275801 c!1354865) b!7275798))

(assert (= (and b!7275801 (not c!1354865)) b!7275807))

(assert (= (or b!7275804 b!7275798) bm!663842))

(assert (= (or b!7275804 b!7275798) bm!663843))

(assert (= (or b!7275803 bm!663842) bm!663844))

(assert (= (or b!7275803 bm!663843) bm!663841))

(assert (= (or b!7275797 b!7275803) bm!663845))

(assert (= (or b!7275797 bm!663841) bm!663846))

(declare-fun m!7962706 () Bool)

(assert (=> bm!663844 m!7962706))

(declare-fun m!7962708 () Bool)

(assert (=> bm!663846 m!7962708))

(declare-fun m!7962710 () Bool)

(assert (=> b!7275800 m!7962710))

(declare-fun m!7962712 () Bool)

(assert (=> b!7275806 m!7962712))

(declare-fun m!7962714 () Bool)

(assert (=> bm!663845 m!7962714))

(assert (=> bm!663807 d!2264705))

(declare-fun b!7275880 () Bool)

(declare-fun e!4363077 () Bool)

(declare-fun e!4363076 () Bool)

(assert (=> b!7275880 (= e!4363077 e!4363076)))

(declare-fun res!2949242 () Bool)

(declare-fun call!663876 () Bool)

(assert (=> b!7275880 (= res!2949242 call!663876)))

(assert (=> b!7275880 (=> (not res!2949242) (not e!4363076))))

(declare-fun b!7275881 () Bool)

(declare-fun e!4363079 () Bool)

(declare-fun e!4363075 () Bool)

(assert (=> b!7275881 (= e!4363079 e!4363075)))

(declare-fun res!2949239 () Bool)

(assert (=> b!7275881 (=> res!2949239 e!4363075)))

(assert (=> b!7275881 (= res!2949239 ((_ is Star!18841) (h!77322 (exprs!8281 ct1!250))))))

(declare-fun d!2264717 () Bool)

(declare-fun res!2949238 () Bool)

(declare-fun e!4363080 () Bool)

(assert (=> d!2264717 (=> res!2949238 e!4363080)))

(assert (=> d!2264717 (= res!2949238 ((_ is EmptyExpr!18841) (h!77322 (exprs!8281 ct1!250))))))

(assert (=> d!2264717 (= (nullableFct!3170 (h!77322 (exprs!8281 ct1!250))) e!4363080)))

(declare-fun b!7275882 () Bool)

(declare-fun call!663877 () Bool)

(assert (=> b!7275882 (= e!4363076 call!663877)))

(declare-fun bm!663871 () Bool)

(declare-fun c!1354886 () Bool)

(assert (=> bm!663871 (= call!663876 (nullable!8024 (ite c!1354886 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))))))

(declare-fun b!7275883 () Bool)

(declare-fun e!4363078 () Bool)

(assert (=> b!7275883 (= e!4363077 e!4363078)))

(declare-fun res!2949241 () Bool)

(assert (=> b!7275883 (= res!2949241 call!663877)))

(assert (=> b!7275883 (=> res!2949241 e!4363078)))

(declare-fun b!7275884 () Bool)

(assert (=> b!7275884 (= e!4363078 call!663876)))

(declare-fun bm!663872 () Bool)

(assert (=> bm!663872 (= call!663877 (nullable!8024 (ite c!1354886 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regTwo!38194 (h!77322 (exprs!8281 ct1!250))))))))

(declare-fun b!7275885 () Bool)

(assert (=> b!7275885 (= e!4363080 e!4363079)))

(declare-fun res!2949240 () Bool)

(assert (=> b!7275885 (=> (not res!2949240) (not e!4363079))))

(assert (=> b!7275885 (= res!2949240 (and (not ((_ is EmptyLang!18841) (h!77322 (exprs!8281 ct1!250)))) (not ((_ is ElementMatch!18841) (h!77322 (exprs!8281 ct1!250))))))))

(declare-fun b!7275886 () Bool)

(assert (=> b!7275886 (= e!4363075 e!4363077)))

(assert (=> b!7275886 (= c!1354886 ((_ is Union!18841) (h!77322 (exprs!8281 ct1!250))))))

(assert (= (and d!2264717 (not res!2949238)) b!7275885))

(assert (= (and b!7275885 res!2949240) b!7275881))

(assert (= (and b!7275881 (not res!2949239)) b!7275886))

(assert (= (and b!7275886 c!1354886) b!7275883))

(assert (= (and b!7275886 (not c!1354886)) b!7275880))

(assert (= (and b!7275883 (not res!2949241)) b!7275884))

(assert (= (and b!7275880 res!2949242) b!7275882))

(assert (= (or b!7275883 b!7275882) bm!663872))

(assert (= (or b!7275884 b!7275880) bm!663871))

(declare-fun m!7962758 () Bool)

(assert (=> bm!663871 m!7962758))

(declare-fun m!7962762 () Bool)

(assert (=> bm!663872 m!7962762))

(assert (=> d!2264607 d!2264717))

(declare-fun d!2264735 () Bool)

(declare-fun res!2949248 () Bool)

(declare-fun e!4363093 () Bool)

(assert (=> d!2264735 (=> res!2949248 e!4363093)))

(assert (=> d!2264735 (= res!2949248 ((_ is Nil!70874) (exprs!8281 ct2!346)))))

(assert (=> d!2264735 (= (forall!17666 (exprs!8281 ct2!346) lambda!449800) e!4363093)))

(declare-fun b!7275906 () Bool)

(declare-fun e!4363094 () Bool)

(assert (=> b!7275906 (= e!4363093 e!4363094)))

(declare-fun res!2949249 () Bool)

(assert (=> b!7275906 (=> (not res!2949249) (not e!4363094))))

(declare-fun dynLambda!28983 (Int Regex!18841) Bool)

(assert (=> b!7275906 (= res!2949249 (dynLambda!28983 lambda!449800 (h!77322 (exprs!8281 ct2!346))))))

(declare-fun b!7275907 () Bool)

(assert (=> b!7275907 (= e!4363094 (forall!17666 (t!385070 (exprs!8281 ct2!346)) lambda!449800))))

(assert (= (and d!2264735 (not res!2949248)) b!7275906))

(assert (= (and b!7275906 res!2949249) b!7275907))

(declare-fun b_lambda!280849 () Bool)

(assert (=> (not b_lambda!280849) (not b!7275906)))

(declare-fun m!7962788 () Bool)

(assert (=> b!7275906 m!7962788))

(declare-fun m!7962794 () Bool)

(assert (=> b!7275907 m!7962794))

(assert (=> d!2264619 d!2264735))

(assert (=> bs!1912057 d!2264625))

(declare-fun bm!663873 () Bool)

(declare-fun call!663882 () (InoxSet Context!15562))

(declare-fun call!663881 () (InoxSet Context!15562))

(assert (=> bm!663873 (= call!663882 call!663881)))

(declare-fun b!7275910 () Bool)

(declare-fun e!4363101 () (InoxSet Context!15562))

(declare-fun call!663880 () (InoxSet Context!15562))

(assert (=> b!7275910 (= e!4363101 ((_ map or) call!663880 call!663881))))

(declare-fun b!7275911 () Bool)

(declare-fun e!4363100 () (InoxSet Context!15562))

(declare-fun call!663883 () (InoxSet Context!15562))

(assert (=> b!7275911 (= e!4363100 call!663883)))

(declare-fun b!7275912 () Bool)

(declare-fun e!4363098 () (InoxSet Context!15562))

(assert (=> b!7275912 (= e!4363098 e!4363101)))

(declare-fun c!1354899 () Bool)

(assert (=> b!7275912 (= c!1354899 ((_ is Union!18841) (h!77322 (exprs!8281 ct1!250))))))

(declare-fun b!7275913 () Bool)

(assert (=> b!7275913 (= e!4363098 (store ((as const (Array Context!15562 Bool)) false) (Context!15563 (t!385070 (exprs!8281 ct1!250))) true))))

(declare-fun d!2264757 () Bool)

(declare-fun c!1354895 () Bool)

(assert (=> d!2264757 (= c!1354895 (and ((_ is ElementMatch!18841) (h!77322 (exprs!8281 ct1!250))) (= (c!1354743 (h!77322 (exprs!8281 ct1!250))) (h!77321 s!7854))))))

(assert (=> d!2264757 (= (derivationStepZipperDown!2755 (h!77322 (exprs!8281 ct1!250)) (Context!15563 (t!385070 (exprs!8281 ct1!250))) (h!77321 s!7854)) e!4363098)))

(declare-fun b!7275914 () Bool)

(declare-fun c!1354898 () Bool)

(assert (=> b!7275914 (= c!1354898 ((_ is Star!18841) (h!77322 (exprs!8281 ct1!250))))))

(declare-fun e!4363097 () (InoxSet Context!15562))

(assert (=> b!7275914 (= e!4363097 e!4363100)))

(declare-fun bm!663874 () Bool)

(declare-fun call!663878 () List!70998)

(declare-fun call!663879 () List!70998)

(assert (=> bm!663874 (= call!663878 call!663879)))

(declare-fun bm!663875 () Bool)

(assert (=> bm!663875 (= call!663883 call!663882)))

(declare-fun c!1354897 () Bool)

(declare-fun bm!663876 () Bool)

(declare-fun c!1354896 () Bool)

(assert (=> bm!663876 (= call!663879 ($colon$colon!2987 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 ct1!250)))) (ite (or c!1354897 c!1354896) (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (h!77322 (exprs!8281 ct1!250)))))))

(declare-fun b!7275915 () Bool)

(declare-fun e!4363099 () (InoxSet Context!15562))

(assert (=> b!7275915 (= e!4363099 e!4363097)))

(assert (=> b!7275915 (= c!1354896 ((_ is Concat!27686) (h!77322 (exprs!8281 ct1!250))))))

(declare-fun b!7275916 () Bool)

(assert (=> b!7275916 (= e!4363099 ((_ map or) call!663880 call!663882))))

(declare-fun b!7275917 () Bool)

(assert (=> b!7275917 (= e!4363097 call!663883)))

(declare-fun b!7275918 () Bool)

(declare-fun e!4363096 () Bool)

(assert (=> b!7275918 (= c!1354897 e!4363096)))

(declare-fun res!2949250 () Bool)

(assert (=> b!7275918 (=> (not res!2949250) (not e!4363096))))

(assert (=> b!7275918 (= res!2949250 ((_ is Concat!27686) (h!77322 (exprs!8281 ct1!250))))))

(assert (=> b!7275918 (= e!4363101 e!4363099)))

(declare-fun b!7275919 () Bool)

(assert (=> b!7275919 (= e!4363096 (nullable!8024 (regOne!38194 (h!77322 (exprs!8281 ct1!250)))))))

(declare-fun b!7275920 () Bool)

(assert (=> b!7275920 (= e!4363100 ((as const (Array Context!15562 Bool)) false))))

(declare-fun bm!663877 () Bool)

(assert (=> bm!663877 (= call!663880 (derivationStepZipperDown!2755 (ite c!1354899 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250)))) (ite c!1354899 (Context!15563 (t!385070 (exprs!8281 ct1!250))) (Context!15563 call!663879)) (h!77321 s!7854)))))

(declare-fun bm!663878 () Bool)

(assert (=> bm!663878 (= call!663881 (derivationStepZipperDown!2755 (ite c!1354899 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354897 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354896 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250)))))) (ite (or c!1354899 c!1354897) (Context!15563 (t!385070 (exprs!8281 ct1!250))) (Context!15563 call!663878)) (h!77321 s!7854)))))

(assert (= (and d!2264757 c!1354895) b!7275913))

(assert (= (and d!2264757 (not c!1354895)) b!7275912))

(assert (= (and b!7275912 c!1354899) b!7275910))

(assert (= (and b!7275912 (not c!1354899)) b!7275918))

(assert (= (and b!7275918 res!2949250) b!7275919))

(assert (= (and b!7275918 c!1354897) b!7275916))

(assert (= (and b!7275918 (not c!1354897)) b!7275915))

(assert (= (and b!7275915 c!1354896) b!7275917))

(assert (= (and b!7275915 (not c!1354896)) b!7275914))

(assert (= (and b!7275914 c!1354898) b!7275911))

(assert (= (and b!7275914 (not c!1354898)) b!7275920))

(assert (= (or b!7275917 b!7275911) bm!663874))

(assert (= (or b!7275917 b!7275911) bm!663875))

(assert (= (or b!7275916 bm!663874) bm!663876))

(assert (= (or b!7275916 bm!663875) bm!663873))

(assert (= (or b!7275910 b!7275916) bm!663877))

(assert (= (or b!7275910 bm!663873) bm!663878))

(declare-fun m!7962800 () Bool)

(assert (=> bm!663876 m!7962800))

(declare-fun m!7962802 () Bool)

(assert (=> bm!663878 m!7962802))

(declare-fun m!7962804 () Bool)

(assert (=> b!7275913 m!7962804))

(assert (=> b!7275919 m!7962470))

(declare-fun m!7962806 () Bool)

(assert (=> bm!663877 m!7962806))

(assert (=> bm!663812 d!2264757))

(declare-fun d!2264767 () Bool)

(assert (=> d!2264767 (forall!17666 (++!16735 (exprs!8281 lt!2596945) (exprs!8281 ct2!346)) lambda!449807)))

(declare-fun lt!2597012 () Unit!164288)

(assert (=> d!2264767 (= lt!2597012 (choose!56488 (exprs!8281 lt!2596945) (exprs!8281 ct2!346) lambda!449807))))

(assert (=> d!2264767 (forall!17666 (exprs!8281 lt!2596945) lambda!449807)))

(assert (=> d!2264767 (= (lemmaConcatPreservesForall!1592 (exprs!8281 lt!2596945) (exprs!8281 ct2!346) lambda!449807) lt!2597012)))

(declare-fun bs!1912082 () Bool)

(assert (= bs!1912082 d!2264767))

(assert (=> bs!1912082 m!7962578))

(assert (=> bs!1912082 m!7962578))

(declare-fun m!7962818 () Bool)

(assert (=> bs!1912082 m!7962818))

(declare-fun m!7962820 () Bool)

(assert (=> bs!1912082 m!7962820))

(declare-fun m!7962824 () Bool)

(assert (=> bs!1912082 m!7962824))

(assert (=> d!2264645 d!2264767))

(declare-fun bs!1912095 () Bool)

(declare-fun d!2264771 () Bool)

(assert (= bs!1912095 (and d!2264771 d!2264619)))

(declare-fun lambda!449821 () Int)

(assert (=> bs!1912095 (= lambda!449821 lambda!449800)))

(declare-fun bs!1912096 () Bool)

(assert (= bs!1912096 (and d!2264771 b!7275486)))

(assert (=> bs!1912096 (= lambda!449821 lambda!449780)))

(declare-fun bs!1912097 () Bool)

(assert (= bs!1912097 (and d!2264771 d!2264539)))

(assert (=> bs!1912097 (not (= lambda!449821 lambda!449784))))

(declare-fun bs!1912098 () Bool)

(assert (= bs!1912098 (and d!2264771 d!2264621)))

(assert (=> bs!1912098 (= lambda!449821 lambda!449801)))

(declare-fun bs!1912099 () Bool)

(assert (= bs!1912099 (and d!2264771 d!2264645)))

(assert (=> bs!1912099 (= lambda!449821 lambda!449807)))

(assert (=> d!2264771 (matchZipper!3745 (store ((as const (Array Context!15562 Bool)) false) (Context!15563 (++!16735 (exprs!8281 lt!2596945) (exprs!8281 ct2!346))) true) s!7854)))

(declare-fun lt!2597017 () Unit!164288)

(assert (=> d!2264771 (= lt!2597017 (lemmaConcatPreservesForall!1592 (exprs!8281 lt!2596945) (exprs!8281 ct2!346) lambda!449821))))

(assert (=> d!2264771 true))

(declare-fun _$57!149 () Unit!164288)

(assert (=> d!2264771 (= (choose!56491 lt!2596945 ct2!346 s!7854) _$57!149)))

(declare-fun bs!1912100 () Bool)

(assert (= bs!1912100 d!2264771))

(assert (=> bs!1912100 m!7962578))

(assert (=> bs!1912100 m!7962570))

(assert (=> bs!1912100 m!7962570))

(assert (=> bs!1912100 m!7962574))

(declare-fun m!7962904 () Bool)

(assert (=> bs!1912100 m!7962904))

(assert (=> d!2264645 d!2264771))

(assert (=> d!2264645 d!2264617))

(declare-fun d!2264813 () Bool)

(declare-fun c!1354929 () Bool)

(assert (=> d!2264813 (= c!1354929 (isEmpty!40767 s!7854))))

(declare-fun e!4363149 () Bool)

(assert (=> d!2264813 (= (matchZipper!3745 (store ((as const (Array Context!15562 Bool)) false) (Context!15563 (++!16735 (exprs!8281 lt!2596945) (exprs!8281 ct2!346))) true) s!7854) e!4363149)))

(declare-fun b!7276011 () Bool)

(assert (=> b!7276011 (= e!4363149 (nullableZipper!3041 (store ((as const (Array Context!15562 Bool)) false) (Context!15563 (++!16735 (exprs!8281 lt!2596945) (exprs!8281 ct2!346))) true)))))

(declare-fun b!7276012 () Bool)

(assert (=> b!7276012 (= e!4363149 (matchZipper!3745 (derivationStepZipper!3577 (store ((as const (Array Context!15562 Bool)) false) (Context!15563 (++!16735 (exprs!8281 lt!2596945) (exprs!8281 ct2!346))) true) (head!15039 s!7854)) (tail!14552 s!7854)))))

(assert (= (and d!2264813 c!1354929) b!7276011))

(assert (= (and d!2264813 (not c!1354929)) b!7276012))

(assert (=> d!2264813 m!7962500))

(assert (=> b!7276011 m!7962570))

(declare-fun m!7962912 () Bool)

(assert (=> b!7276011 m!7962912))

(assert (=> b!7276012 m!7962504))

(assert (=> b!7276012 m!7962570))

(assert (=> b!7276012 m!7962504))

(declare-fun m!7962914 () Bool)

(assert (=> b!7276012 m!7962914))

(assert (=> b!7276012 m!7962508))

(assert (=> b!7276012 m!7962914))

(assert (=> b!7276012 m!7962508))

(declare-fun m!7962916 () Bool)

(assert (=> b!7276012 m!7962916))

(assert (=> d!2264645 d!2264813))

(declare-fun d!2264823 () Bool)

(declare-fun e!4363150 () Bool)

(assert (=> d!2264823 e!4363150))

(declare-fun res!2949262 () Bool)

(assert (=> d!2264823 (=> (not res!2949262) (not e!4363150))))

(declare-fun lt!2597018 () List!70998)

(assert (=> d!2264823 (= res!2949262 (= (content!14800 lt!2597018) ((_ map or) (content!14800 (exprs!8281 lt!2596945)) (content!14800 (exprs!8281 ct2!346)))))))

(declare-fun e!4363151 () List!70998)

(assert (=> d!2264823 (= lt!2597018 e!4363151)))

(declare-fun c!1354930 () Bool)

(assert (=> d!2264823 (= c!1354930 ((_ is Nil!70874) (exprs!8281 lt!2596945)))))

(assert (=> d!2264823 (= (++!16735 (exprs!8281 lt!2596945) (exprs!8281 ct2!346)) lt!2597018)))

(declare-fun b!7276015 () Bool)

(declare-fun res!2949263 () Bool)

(assert (=> b!7276015 (=> (not res!2949263) (not e!4363150))))

(assert (=> b!7276015 (= res!2949263 (= (size!41846 lt!2597018) (+ (size!41846 (exprs!8281 lt!2596945)) (size!41846 (exprs!8281 ct2!346)))))))

(declare-fun b!7276016 () Bool)

(assert (=> b!7276016 (= e!4363150 (or (not (= (exprs!8281 ct2!346) Nil!70874)) (= lt!2597018 (exprs!8281 lt!2596945))))))

(declare-fun b!7276013 () Bool)

(assert (=> b!7276013 (= e!4363151 (exprs!8281 ct2!346))))

(declare-fun b!7276014 () Bool)

(assert (=> b!7276014 (= e!4363151 (Cons!70874 (h!77322 (exprs!8281 lt!2596945)) (++!16735 (t!385070 (exprs!8281 lt!2596945)) (exprs!8281 ct2!346))))))

(assert (= (and d!2264823 c!1354930) b!7276013))

(assert (= (and d!2264823 (not c!1354930)) b!7276014))

(assert (= (and d!2264823 res!2949262) b!7276015))

(assert (= (and b!7276015 res!2949263) b!7276016))

(declare-fun m!7962918 () Bool)

(assert (=> d!2264823 m!7962918))

(declare-fun m!7962920 () Bool)

(assert (=> d!2264823 m!7962920))

(assert (=> d!2264823 m!7962334))

(declare-fun m!7962922 () Bool)

(assert (=> b!7276015 m!7962922))

(declare-fun m!7962924 () Bool)

(assert (=> b!7276015 m!7962924))

(assert (=> b!7276015 m!7962340))

(declare-fun m!7962926 () Bool)

(assert (=> b!7276014 m!7962926))

(assert (=> d!2264645 d!2264823))

(declare-fun d!2264825 () Bool)

(declare-fun lambda!449824 () Int)

(declare-fun exists!4494 ((InoxSet Context!15562) Int) Bool)

(assert (=> d!2264825 (= (nullableZipper!3041 (store ((as const (Array Context!15562 Bool)) false) ct2!346 true)) (exists!4494 (store ((as const (Array Context!15562 Bool)) false) ct2!346 true) lambda!449824))))

(declare-fun bs!1912108 () Bool)

(assert (= bs!1912108 d!2264825))

(assert (=> bs!1912108 m!7962278))

(declare-fun m!7962928 () Bool)

(assert (=> bs!1912108 m!7962928))

(assert (=> b!7275688 d!2264825))

(declare-fun bs!1912109 () Bool)

(declare-fun d!2264827 () Bool)

(assert (= bs!1912109 (and d!2264827 d!2264825)))

(declare-fun lambda!449825 () Int)

(assert (=> bs!1912109 (= lambda!449825 lambda!449824)))

(assert (=> d!2264827 (= (nullableZipper!3041 lt!2596953) (exists!4494 lt!2596953 lambda!449825))))

(declare-fun bs!1912110 () Bool)

(assert (= bs!1912110 d!2264827))

(declare-fun m!7962930 () Bool)

(assert (=> bs!1912110 m!7962930))

(assert (=> b!7275703 d!2264827))

(declare-fun bm!663909 () Bool)

(declare-fun call!663918 () (InoxSet Context!15562))

(declare-fun call!663917 () (InoxSet Context!15562))

(assert (=> bm!663909 (= call!663918 call!663917)))

(declare-fun b!7276017 () Bool)

(declare-fun e!4363157 () (InoxSet Context!15562))

(declare-fun call!663916 () (InoxSet Context!15562))

(assert (=> b!7276017 (= e!4363157 ((_ map or) call!663916 call!663917))))

(declare-fun b!7276018 () Bool)

(declare-fun e!4363156 () (InoxSet Context!15562))

(declare-fun call!663919 () (InoxSet Context!15562))

(assert (=> b!7276018 (= e!4363156 call!663919)))

(declare-fun b!7276019 () Bool)

(declare-fun e!4363154 () (InoxSet Context!15562))

(assert (=> b!7276019 (= e!4363154 e!4363157)))

(declare-fun c!1354937 () Bool)

(assert (=> b!7276019 (= c!1354937 ((_ is Union!18841) (ite c!1354819 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354817 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354816 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))))))

(declare-fun b!7276020 () Bool)

(assert (=> b!7276020 (= e!4363154 (store ((as const (Array Context!15562 Bool)) false) (ite (or c!1354819 c!1354817) lt!2596945 (Context!15563 call!663818)) true))))

(declare-fun c!1354933 () Bool)

(declare-fun d!2264829 () Bool)

(assert (=> d!2264829 (= c!1354933 (and ((_ is ElementMatch!18841) (ite c!1354819 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354817 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354816 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))) (= (c!1354743 (ite c!1354819 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354817 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354816 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))) (h!77321 s!7854))))))

(assert (=> d!2264829 (= (derivationStepZipperDown!2755 (ite c!1354819 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354817 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354816 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250)))))) (ite (or c!1354819 c!1354817) lt!2596945 (Context!15563 call!663818)) (h!77321 s!7854)) e!4363154)))

(declare-fun c!1354936 () Bool)

(declare-fun b!7276021 () Bool)

(assert (=> b!7276021 (= c!1354936 ((_ is Star!18841) (ite c!1354819 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354817 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354816 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))))))

(declare-fun e!4363153 () (InoxSet Context!15562))

(assert (=> b!7276021 (= e!4363153 e!4363156)))

(declare-fun bm!663910 () Bool)

(declare-fun call!663914 () List!70998)

(declare-fun call!663915 () List!70998)

(assert (=> bm!663910 (= call!663914 call!663915)))

(declare-fun bm!663911 () Bool)

(assert (=> bm!663911 (= call!663919 call!663918)))

(declare-fun c!1354934 () Bool)

(declare-fun bm!663912 () Bool)

(declare-fun c!1354935 () Bool)

(assert (=> bm!663912 (= call!663915 ($colon$colon!2987 (exprs!8281 (ite (or c!1354819 c!1354817) lt!2596945 (Context!15563 call!663818))) (ite (or c!1354935 c!1354934) (regTwo!38194 (ite c!1354819 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354817 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354816 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))) (ite c!1354819 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354817 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354816 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250)))))))))))

(declare-fun b!7276022 () Bool)

(declare-fun e!4363155 () (InoxSet Context!15562))

(assert (=> b!7276022 (= e!4363155 e!4363153)))

(assert (=> b!7276022 (= c!1354934 ((_ is Concat!27686) (ite c!1354819 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354817 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354816 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))))))

(declare-fun b!7276023 () Bool)

(assert (=> b!7276023 (= e!4363155 ((_ map or) call!663916 call!663918))))

(declare-fun b!7276024 () Bool)

(assert (=> b!7276024 (= e!4363153 call!663919)))

(declare-fun b!7276025 () Bool)

(declare-fun e!4363152 () Bool)

(assert (=> b!7276025 (= c!1354935 e!4363152)))

(declare-fun res!2949264 () Bool)

(assert (=> b!7276025 (=> (not res!2949264) (not e!4363152))))

(assert (=> b!7276025 (= res!2949264 ((_ is Concat!27686) (ite c!1354819 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354817 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354816 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))))))

(assert (=> b!7276025 (= e!4363157 e!4363155)))

(declare-fun b!7276026 () Bool)

(assert (=> b!7276026 (= e!4363152 (nullable!8024 (regOne!38194 (ite c!1354819 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354817 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354816 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250)))))))))))

(declare-fun b!7276027 () Bool)

(assert (=> b!7276027 (= e!4363156 ((as const (Array Context!15562 Bool)) false))))

(declare-fun bm!663913 () Bool)

(assert (=> bm!663913 (= call!663916 (derivationStepZipperDown!2755 (ite c!1354937 (regOne!38195 (ite c!1354819 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354817 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354816 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))) (regOne!38194 (ite c!1354819 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354817 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354816 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250)))))))) (ite c!1354937 (ite (or c!1354819 c!1354817) lt!2596945 (Context!15563 call!663818)) (Context!15563 call!663915)) (h!77321 s!7854)))))

(declare-fun bm!663914 () Bool)

(assert (=> bm!663914 (= call!663917 (derivationStepZipperDown!2755 (ite c!1354937 (regTwo!38195 (ite c!1354819 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354817 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354816 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))) (ite c!1354935 (regTwo!38194 (ite c!1354819 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354817 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354816 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))) (ite c!1354934 (regOne!38194 (ite c!1354819 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354817 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354816 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))) (reg!19170 (ite c!1354819 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354817 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354816 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250)))))))))) (ite (or c!1354937 c!1354935) (ite (or c!1354819 c!1354817) lt!2596945 (Context!15563 call!663818)) (Context!15563 call!663914)) (h!77321 s!7854)))))

(assert (= (and d!2264829 c!1354933) b!7276020))

(assert (= (and d!2264829 (not c!1354933)) b!7276019))

(assert (= (and b!7276019 c!1354937) b!7276017))

(assert (= (and b!7276019 (not c!1354937)) b!7276025))

(assert (= (and b!7276025 res!2949264) b!7276026))

(assert (= (and b!7276025 c!1354935) b!7276023))

(assert (= (and b!7276025 (not c!1354935)) b!7276022))

(assert (= (and b!7276022 c!1354934) b!7276024))

(assert (= (and b!7276022 (not c!1354934)) b!7276021))

(assert (= (and b!7276021 c!1354936) b!7276018))

(assert (= (and b!7276021 (not c!1354936)) b!7276027))

(assert (= (or b!7276024 b!7276018) bm!663910))

(assert (= (or b!7276024 b!7276018) bm!663911))

(assert (= (or b!7276023 bm!663910) bm!663912))

(assert (= (or b!7276023 bm!663911) bm!663909))

(assert (= (or b!7276017 b!7276023) bm!663913))

(assert (= (or b!7276017 bm!663909) bm!663914))

(declare-fun m!7962932 () Bool)

(assert (=> bm!663912 m!7962932))

(declare-fun m!7962934 () Bool)

(assert (=> bm!663914 m!7962934))

(declare-fun m!7962936 () Bool)

(assert (=> b!7276020 m!7962936))

(declare-fun m!7962938 () Bool)

(assert (=> b!7276026 m!7962938))

(declare-fun m!7962940 () Bool)

(assert (=> bm!663913 m!7962940))

(assert (=> bm!663818 d!2264829))

(declare-fun bs!1912111 () Bool)

(declare-fun d!2264831 () Bool)

(assert (= bs!1912111 (and d!2264831 d!2264825)))

(declare-fun lambda!449826 () Int)

(assert (=> bs!1912111 (= lambda!449826 lambda!449824)))

(declare-fun bs!1912112 () Bool)

(assert (= bs!1912112 (and d!2264831 d!2264827)))

(assert (=> bs!1912112 (= lambda!449826 lambda!449825)))

(assert (=> d!2264831 (= (nullableZipper!3041 lt!2596944) (exists!4494 lt!2596944 lambda!449826))))

(declare-fun bs!1912113 () Bool)

(assert (= bs!1912113 d!2264831))

(declare-fun m!7962942 () Bool)

(assert (=> bs!1912113 m!7962942))

(assert (=> b!7275701 d!2264831))

(declare-fun d!2264833 () Bool)

(assert (=> d!2264833 (= (isEmpty!40767 s!7854) ((_ is Nil!70873) s!7854))))

(assert (=> d!2264617 d!2264833))

(declare-fun d!2264835 () Bool)

(declare-fun lt!2597021 () Int)

(assert (=> d!2264835 (>= lt!2597021 0)))

(declare-fun e!4363160 () Int)

(assert (=> d!2264835 (= lt!2597021 e!4363160)))

(declare-fun c!1354940 () Bool)

(assert (=> d!2264835 (= c!1354940 ((_ is Nil!70874) lt!2596970))))

(assert (=> d!2264835 (= (size!41846 lt!2596970) lt!2597021)))

(declare-fun b!7276032 () Bool)

(assert (=> b!7276032 (= e!4363160 0)))

(declare-fun b!7276033 () Bool)

(assert (=> b!7276033 (= e!4363160 (+ 1 (size!41846 (t!385070 lt!2596970))))))

(assert (= (and d!2264835 c!1354940) b!7276032))

(assert (= (and d!2264835 (not c!1354940)) b!7276033))

(declare-fun m!7962944 () Bool)

(assert (=> b!7276033 m!7962944))

(assert (=> b!7275549 d!2264835))

(declare-fun d!2264837 () Bool)

(declare-fun lt!2597022 () Int)

(assert (=> d!2264837 (>= lt!2597022 0)))

(declare-fun e!4363161 () Int)

(assert (=> d!2264837 (= lt!2597022 e!4363161)))

(declare-fun c!1354941 () Bool)

(assert (=> d!2264837 (= c!1354941 ((_ is Nil!70874) lt!2596951))))

(assert (=> d!2264837 (= (size!41846 lt!2596951) lt!2597022)))

(declare-fun b!7276034 () Bool)

(assert (=> b!7276034 (= e!4363161 0)))

(declare-fun b!7276035 () Bool)

(assert (=> b!7276035 (= e!4363161 (+ 1 (size!41846 (t!385070 lt!2596951))))))

(assert (= (and d!2264837 c!1354941) b!7276034))

(assert (= (and d!2264837 (not c!1354941)) b!7276035))

(declare-fun m!7962946 () Bool)

(assert (=> b!7276035 m!7962946))

(assert (=> b!7275549 d!2264837))

(declare-fun d!2264839 () Bool)

(declare-fun lt!2597023 () Int)

(assert (=> d!2264839 (>= lt!2597023 0)))

(declare-fun e!4363162 () Int)

(assert (=> d!2264839 (= lt!2597023 e!4363162)))

(declare-fun c!1354942 () Bool)

(assert (=> d!2264839 (= c!1354942 ((_ is Nil!70874) (exprs!8281 ct2!346)))))

(assert (=> d!2264839 (= (size!41846 (exprs!8281 ct2!346)) lt!2597023)))

(declare-fun b!7276036 () Bool)

(assert (=> b!7276036 (= e!4363162 0)))

(declare-fun b!7276037 () Bool)

(assert (=> b!7276037 (= e!4363162 (+ 1 (size!41846 (t!385070 (exprs!8281 ct2!346)))))))

(assert (= (and d!2264839 c!1354942) b!7276036))

(assert (= (and d!2264839 (not c!1354942)) b!7276037))

(declare-fun m!7962948 () Bool)

(assert (=> b!7276037 m!7962948))

(assert (=> b!7275549 d!2264839))

(declare-fun d!2264841 () Bool)

(assert (=> d!2264841 (= ($colon$colon!2987 (exprs!8281 lt!2596952) (ite (or c!1354804 c!1354803) (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (h!77322 (exprs!8281 ct1!250)))) (Cons!70874 (ite (or c!1354804 c!1354803) (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (h!77322 (exprs!8281 ct1!250))) (exprs!8281 lt!2596952)))))

(assert (=> bm!663806 d!2264841))

(assert (=> d!2264627 d!2264623))

(declare-fun d!2264843 () Bool)

(assert (=> d!2264843 (= (flatMap!2940 lt!2596961 lambda!449781) (dynLambda!28981 lambda!449781 lt!2596949))))

(assert (=> d!2264843 true))

(declare-fun _$13!4659 () Unit!164288)

(assert (=> d!2264843 (= (choose!56490 lt!2596961 lt!2596949 lambda!449781) _$13!4659)))

(declare-fun b_lambda!280879 () Bool)

(assert (=> (not b_lambda!280879) (not d!2264843)))

(declare-fun bs!1912114 () Bool)

(assert (= bs!1912114 d!2264843))

(assert (=> bs!1912114 m!7962242))

(assert (=> bs!1912114 m!7962524))

(assert (=> d!2264627 d!2264843))

(declare-fun bm!663915 () Bool)

(declare-fun call!663924 () (InoxSet Context!15562))

(declare-fun call!663923 () (InoxSet Context!15562))

(assert (=> bm!663915 (= call!663924 call!663923)))

(declare-fun b!7276038 () Bool)

(declare-fun e!4363168 () (InoxSet Context!15562))

(declare-fun call!663922 () (InoxSet Context!15562))

(assert (=> b!7276038 (= e!4363168 ((_ map or) call!663922 call!663923))))

(declare-fun b!7276039 () Bool)

(declare-fun e!4363167 () (InoxSet Context!15562))

(declare-fun call!663925 () (InoxSet Context!15562))

(assert (=> b!7276039 (= e!4363167 call!663925)))

(declare-fun b!7276040 () Bool)

(declare-fun e!4363165 () (InoxSet Context!15562))

(assert (=> b!7276040 (= e!4363165 e!4363168)))

(declare-fun c!1354947 () Bool)

(assert (=> b!7276040 (= c!1354947 ((_ is Union!18841) (h!77322 (exprs!8281 lt!2596952))))))

(declare-fun b!7276041 () Bool)

(assert (=> b!7276041 (= e!4363165 (store ((as const (Array Context!15562 Bool)) false) (Context!15563 (t!385070 (exprs!8281 lt!2596952))) true))))

(declare-fun d!2264845 () Bool)

(declare-fun c!1354943 () Bool)

(assert (=> d!2264845 (= c!1354943 (and ((_ is ElementMatch!18841) (h!77322 (exprs!8281 lt!2596952))) (= (c!1354743 (h!77322 (exprs!8281 lt!2596952))) (h!77321 s!7854))))))

(assert (=> d!2264845 (= (derivationStepZipperDown!2755 (h!77322 (exprs!8281 lt!2596952)) (Context!15563 (t!385070 (exprs!8281 lt!2596952))) (h!77321 s!7854)) e!4363165)))

(declare-fun b!7276042 () Bool)

(declare-fun c!1354946 () Bool)

(assert (=> b!7276042 (= c!1354946 ((_ is Star!18841) (h!77322 (exprs!8281 lt!2596952))))))

(declare-fun e!4363164 () (InoxSet Context!15562))

(assert (=> b!7276042 (= e!4363164 e!4363167)))

(declare-fun bm!663916 () Bool)

(declare-fun call!663920 () List!70998)

(declare-fun call!663921 () List!70998)

(assert (=> bm!663916 (= call!663920 call!663921)))

(declare-fun bm!663917 () Bool)

(assert (=> bm!663917 (= call!663925 call!663924)))

(declare-fun c!1354944 () Bool)

(declare-fun bm!663918 () Bool)

(declare-fun c!1354945 () Bool)

(assert (=> bm!663918 (= call!663921 ($colon$colon!2987 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596952)))) (ite (or c!1354945 c!1354944) (regTwo!38194 (h!77322 (exprs!8281 lt!2596952))) (h!77322 (exprs!8281 lt!2596952)))))))

(declare-fun b!7276043 () Bool)

(declare-fun e!4363166 () (InoxSet Context!15562))

(assert (=> b!7276043 (= e!4363166 e!4363164)))

(assert (=> b!7276043 (= c!1354944 ((_ is Concat!27686) (h!77322 (exprs!8281 lt!2596952))))))

(declare-fun b!7276044 () Bool)

(assert (=> b!7276044 (= e!4363166 ((_ map or) call!663922 call!663924))))

(declare-fun b!7276045 () Bool)

(assert (=> b!7276045 (= e!4363164 call!663925)))

(declare-fun b!7276046 () Bool)

(declare-fun e!4363163 () Bool)

(assert (=> b!7276046 (= c!1354945 e!4363163)))

(declare-fun res!2949265 () Bool)

(assert (=> b!7276046 (=> (not res!2949265) (not e!4363163))))

(assert (=> b!7276046 (= res!2949265 ((_ is Concat!27686) (h!77322 (exprs!8281 lt!2596952))))))

(assert (=> b!7276046 (= e!4363168 e!4363166)))

(declare-fun b!7276047 () Bool)

(assert (=> b!7276047 (= e!4363163 (nullable!8024 (regOne!38194 (h!77322 (exprs!8281 lt!2596952)))))))

(declare-fun b!7276048 () Bool)

(assert (=> b!7276048 (= e!4363167 ((as const (Array Context!15562 Bool)) false))))

(declare-fun bm!663919 () Bool)

(assert (=> bm!663919 (= call!663922 (derivationStepZipperDown!2755 (ite c!1354947 (regOne!38195 (h!77322 (exprs!8281 lt!2596952))) (regOne!38194 (h!77322 (exprs!8281 lt!2596952)))) (ite c!1354947 (Context!15563 (t!385070 (exprs!8281 lt!2596952))) (Context!15563 call!663921)) (h!77321 s!7854)))))

(declare-fun bm!663920 () Bool)

(assert (=> bm!663920 (= call!663923 (derivationStepZipperDown!2755 (ite c!1354947 (regTwo!38195 (h!77322 (exprs!8281 lt!2596952))) (ite c!1354945 (regTwo!38194 (h!77322 (exprs!8281 lt!2596952))) (ite c!1354944 (regOne!38194 (h!77322 (exprs!8281 lt!2596952))) (reg!19170 (h!77322 (exprs!8281 lt!2596952)))))) (ite (or c!1354947 c!1354945) (Context!15563 (t!385070 (exprs!8281 lt!2596952))) (Context!15563 call!663920)) (h!77321 s!7854)))))

(assert (= (and d!2264845 c!1354943) b!7276041))

(assert (= (and d!2264845 (not c!1354943)) b!7276040))

(assert (= (and b!7276040 c!1354947) b!7276038))

(assert (= (and b!7276040 (not c!1354947)) b!7276046))

(assert (= (and b!7276046 res!2949265) b!7276047))

(assert (= (and b!7276046 c!1354945) b!7276044))

(assert (= (and b!7276046 (not c!1354945)) b!7276043))

(assert (= (and b!7276043 c!1354944) b!7276045))

(assert (= (and b!7276043 (not c!1354944)) b!7276042))

(assert (= (and b!7276042 c!1354946) b!7276039))

(assert (= (and b!7276042 (not c!1354946)) b!7276048))

(assert (= (or b!7276045 b!7276039) bm!663916))

(assert (= (or b!7276045 b!7276039) bm!663917))

(assert (= (or b!7276044 bm!663916) bm!663918))

(assert (= (or b!7276044 bm!663917) bm!663915))

(assert (= (or b!7276038 b!7276044) bm!663919))

(assert (= (or b!7276038 bm!663915) bm!663920))

(declare-fun m!7962950 () Bool)

(assert (=> bm!663918 m!7962950))

(declare-fun m!7962952 () Bool)

(assert (=> bm!663920 m!7962952))

(declare-fun m!7962954 () Bool)

(assert (=> b!7276041 m!7962954))

(declare-fun m!7962956 () Bool)

(assert (=> b!7276047 m!7962956))

(declare-fun m!7962958 () Bool)

(assert (=> bm!663919 m!7962958))

(assert (=> bm!663811 d!2264845))

(declare-fun d!2264847 () Bool)

(declare-fun lt!2597024 () Int)

(assert (=> d!2264847 (>= lt!2597024 0)))

(declare-fun e!4363169 () Int)

(assert (=> d!2264847 (= lt!2597024 e!4363169)))

(declare-fun c!1354948 () Bool)

(assert (=> d!2264847 (= c!1354948 ((_ is Nil!70874) lt!2596991))))

(assert (=> d!2264847 (= (size!41846 lt!2596991) lt!2597024)))

(declare-fun b!7276049 () Bool)

(assert (=> b!7276049 (= e!4363169 0)))

(declare-fun b!7276050 () Bool)

(assert (=> b!7276050 (= e!4363169 (+ 1 (size!41846 (t!385070 lt!2596991))))))

(assert (= (and d!2264847 c!1354948) b!7276049))

(assert (= (and d!2264847 (not c!1354948)) b!7276050))

(declare-fun m!7962960 () Bool)

(assert (=> b!7276050 m!7962960))

(assert (=> b!7275697 d!2264847))

(declare-fun d!2264849 () Bool)

(declare-fun lt!2597025 () Int)

(assert (=> d!2264849 (>= lt!2597025 0)))

(declare-fun e!4363170 () Int)

(assert (=> d!2264849 (= lt!2597025 e!4363170)))

(declare-fun c!1354949 () Bool)

(assert (=> d!2264849 (= c!1354949 ((_ is Nil!70874) (exprs!8281 ct1!250)))))

(assert (=> d!2264849 (= (size!41846 (exprs!8281 ct1!250)) lt!2597025)))

(declare-fun b!7276051 () Bool)

(assert (=> b!7276051 (= e!4363170 0)))

(declare-fun b!7276052 () Bool)

(assert (=> b!7276052 (= e!4363170 (+ 1 (size!41846 (t!385070 (exprs!8281 ct1!250)))))))

(assert (= (and d!2264849 c!1354949) b!7276051))

(assert (= (and d!2264849 (not c!1354949)) b!7276052))

(declare-fun m!7962962 () Bool)

(assert (=> b!7276052 m!7962962))

(assert (=> b!7275697 d!2264849))

(assert (=> b!7275697 d!2264839))

(assert (=> b!7275665 d!2264607))

(assert (=> bs!1912056 d!2264605))

(declare-fun d!2264851 () Bool)

(declare-fun c!1354952 () Bool)

(assert (=> d!2264851 (= c!1354952 ((_ is Nil!70874) lt!2596970))))

(declare-fun e!4363173 () (InoxSet Regex!18841))

(assert (=> d!2264851 (= (content!14800 lt!2596970) e!4363173)))

(declare-fun b!7276057 () Bool)

(assert (=> b!7276057 (= e!4363173 ((as const (Array Regex!18841 Bool)) false))))

(declare-fun b!7276058 () Bool)

(assert (=> b!7276058 (= e!4363173 ((_ map or) (store ((as const (Array Regex!18841 Bool)) false) (h!77322 lt!2596970) true) (content!14800 (t!385070 lt!2596970))))))

(assert (= (and d!2264851 c!1354952) b!7276057))

(assert (= (and d!2264851 (not c!1354952)) b!7276058))

(declare-fun m!7962964 () Bool)

(assert (=> b!7276058 m!7962964))

(declare-fun m!7962966 () Bool)

(assert (=> b!7276058 m!7962966))

(assert (=> d!2264545 d!2264851))

(declare-fun d!2264853 () Bool)

(declare-fun c!1354953 () Bool)

(assert (=> d!2264853 (= c!1354953 ((_ is Nil!70874) lt!2596951))))

(declare-fun e!4363174 () (InoxSet Regex!18841))

(assert (=> d!2264853 (= (content!14800 lt!2596951) e!4363174)))

(declare-fun b!7276059 () Bool)

(assert (=> b!7276059 (= e!4363174 ((as const (Array Regex!18841 Bool)) false))))

(declare-fun b!7276060 () Bool)

(assert (=> b!7276060 (= e!4363174 ((_ map or) (store ((as const (Array Regex!18841 Bool)) false) (h!77322 lt!2596951) true) (content!14800 (t!385070 lt!2596951))))))

(assert (= (and d!2264853 c!1354953) b!7276059))

(assert (= (and d!2264853 (not c!1354953)) b!7276060))

(declare-fun m!7962968 () Bool)

(assert (=> b!7276060 m!7962968))

(declare-fun m!7962970 () Bool)

(assert (=> b!7276060 m!7962970))

(assert (=> d!2264545 d!2264853))

(declare-fun d!2264855 () Bool)

(declare-fun c!1354954 () Bool)

(assert (=> d!2264855 (= c!1354954 ((_ is Nil!70874) (exprs!8281 ct2!346)))))

(declare-fun e!4363175 () (InoxSet Regex!18841))

(assert (=> d!2264855 (= (content!14800 (exprs!8281 ct2!346)) e!4363175)))

(declare-fun b!7276061 () Bool)

(assert (=> b!7276061 (= e!4363175 ((as const (Array Regex!18841 Bool)) false))))

(declare-fun b!7276062 () Bool)

(assert (=> b!7276062 (= e!4363175 ((_ map or) (store ((as const (Array Regex!18841 Bool)) false) (h!77322 (exprs!8281 ct2!346)) true) (content!14800 (t!385070 (exprs!8281 ct2!346)))))))

(assert (= (and d!2264855 c!1354954) b!7276061))

(assert (= (and d!2264855 (not c!1354954)) b!7276062))

(declare-fun m!7962972 () Bool)

(assert (=> b!7276062 m!7962972))

(declare-fun m!7962974 () Bool)

(assert (=> b!7276062 m!7962974))

(assert (=> d!2264545 d!2264855))

(declare-fun bm!663921 () Bool)

(declare-fun call!663930 () (InoxSet Context!15562))

(declare-fun call!663929 () (InoxSet Context!15562))

(assert (=> bm!663921 (= call!663930 call!663929)))

(declare-fun b!7276063 () Bool)

(declare-fun e!4363181 () (InoxSet Context!15562))

(declare-fun call!663928 () (InoxSet Context!15562))

(assert (=> b!7276063 (= e!4363181 ((_ map or) call!663928 call!663929))))

(declare-fun b!7276064 () Bool)

(declare-fun e!4363180 () (InoxSet Context!15562))

(declare-fun call!663931 () (InoxSet Context!15562))

(assert (=> b!7276064 (= e!4363180 call!663931)))

(declare-fun b!7276065 () Bool)

(declare-fun e!4363178 () (InoxSet Context!15562))

(assert (=> b!7276065 (= e!4363178 e!4363181)))

(declare-fun c!1354959 () Bool)

(assert (=> b!7276065 (= c!1354959 ((_ is Union!18841) (ite c!1354819 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))))))

(declare-fun b!7276066 () Bool)

(assert (=> b!7276066 (= e!4363178 (store ((as const (Array Context!15562 Bool)) false) (ite c!1354819 lt!2596945 (Context!15563 call!663819)) true))))

(declare-fun d!2264857 () Bool)

(declare-fun c!1354955 () Bool)

(assert (=> d!2264857 (= c!1354955 (and ((_ is ElementMatch!18841) (ite c!1354819 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))) (= (c!1354743 (ite c!1354819 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))) (h!77321 s!7854))))))

(assert (=> d!2264857 (= (derivationStepZipperDown!2755 (ite c!1354819 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250)))) (ite c!1354819 lt!2596945 (Context!15563 call!663819)) (h!77321 s!7854)) e!4363178)))

(declare-fun b!7276067 () Bool)

(declare-fun c!1354958 () Bool)

(assert (=> b!7276067 (= c!1354958 ((_ is Star!18841) (ite c!1354819 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))))))

(declare-fun e!4363177 () (InoxSet Context!15562))

(assert (=> b!7276067 (= e!4363177 e!4363180)))

(declare-fun bm!663922 () Bool)

(declare-fun call!663926 () List!70998)

(declare-fun call!663927 () List!70998)

(assert (=> bm!663922 (= call!663926 call!663927)))

(declare-fun bm!663923 () Bool)

(assert (=> bm!663923 (= call!663931 call!663930)))

(declare-fun c!1354957 () Bool)

(declare-fun bm!663924 () Bool)

(declare-fun c!1354956 () Bool)

(assert (=> bm!663924 (= call!663927 ($colon$colon!2987 (exprs!8281 (ite c!1354819 lt!2596945 (Context!15563 call!663819))) (ite (or c!1354957 c!1354956) (regTwo!38194 (ite c!1354819 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))) (ite c!1354819 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250)))))))))

(declare-fun b!7276068 () Bool)

(declare-fun e!4363179 () (InoxSet Context!15562))

(assert (=> b!7276068 (= e!4363179 e!4363177)))

(assert (=> b!7276068 (= c!1354956 ((_ is Concat!27686) (ite c!1354819 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))))))

(declare-fun b!7276069 () Bool)

(assert (=> b!7276069 (= e!4363179 ((_ map or) call!663928 call!663930))))

(declare-fun b!7276070 () Bool)

(assert (=> b!7276070 (= e!4363177 call!663931)))

(declare-fun b!7276071 () Bool)

(declare-fun e!4363176 () Bool)

(assert (=> b!7276071 (= c!1354957 e!4363176)))

(declare-fun res!2949266 () Bool)

(assert (=> b!7276071 (=> (not res!2949266) (not e!4363176))))

(assert (=> b!7276071 (= res!2949266 ((_ is Concat!27686) (ite c!1354819 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))))))

(assert (=> b!7276071 (= e!4363181 e!4363179)))

(declare-fun b!7276072 () Bool)

(assert (=> b!7276072 (= e!4363176 (nullable!8024 (regOne!38194 (ite c!1354819 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250)))))))))

(declare-fun b!7276073 () Bool)

(assert (=> b!7276073 (= e!4363180 ((as const (Array Context!15562 Bool)) false))))

(declare-fun bm!663925 () Bool)

(assert (=> bm!663925 (= call!663928 (derivationStepZipperDown!2755 (ite c!1354959 (regOne!38195 (ite c!1354819 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))) (regOne!38194 (ite c!1354819 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250)))))) (ite c!1354959 (ite c!1354819 lt!2596945 (Context!15563 call!663819)) (Context!15563 call!663927)) (h!77321 s!7854)))))

(declare-fun bm!663926 () Bool)

(assert (=> bm!663926 (= call!663929 (derivationStepZipperDown!2755 (ite c!1354959 (regTwo!38195 (ite c!1354819 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))) (ite c!1354957 (regTwo!38194 (ite c!1354819 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))) (ite c!1354956 (regOne!38194 (ite c!1354819 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250))))) (reg!19170 (ite c!1354819 (regOne!38195 (h!77322 (exprs!8281 ct1!250))) (regOne!38194 (h!77322 (exprs!8281 ct1!250)))))))) (ite (or c!1354959 c!1354957) (ite c!1354819 lt!2596945 (Context!15563 call!663819)) (Context!15563 call!663926)) (h!77321 s!7854)))))

(assert (= (and d!2264857 c!1354955) b!7276066))

(assert (= (and d!2264857 (not c!1354955)) b!7276065))

(assert (= (and b!7276065 c!1354959) b!7276063))

(assert (= (and b!7276065 (not c!1354959)) b!7276071))

(assert (= (and b!7276071 res!2949266) b!7276072))

(assert (= (and b!7276071 c!1354957) b!7276069))

(assert (= (and b!7276071 (not c!1354957)) b!7276068))

(assert (= (and b!7276068 c!1354956) b!7276070))

(assert (= (and b!7276068 (not c!1354956)) b!7276067))

(assert (= (and b!7276067 c!1354958) b!7276064))

(assert (= (and b!7276067 (not c!1354958)) b!7276073))

(assert (= (or b!7276070 b!7276064) bm!663922))

(assert (= (or b!7276070 b!7276064) bm!663923))

(assert (= (or b!7276069 bm!663922) bm!663924))

(assert (= (or b!7276069 bm!663923) bm!663921))

(assert (= (or b!7276063 b!7276069) bm!663925))

(assert (= (or b!7276063 bm!663921) bm!663926))

(declare-fun m!7962976 () Bool)

(assert (=> bm!663924 m!7962976))

(declare-fun m!7962978 () Bool)

(assert (=> bm!663926 m!7962978))

(declare-fun m!7962980 () Bool)

(assert (=> b!7276066 m!7962980))

(declare-fun m!7962982 () Bool)

(assert (=> b!7276072 m!7962982))

(declare-fun m!7962984 () Bool)

(assert (=> bm!663925 m!7962984))

(assert (=> bm!663817 d!2264857))

(assert (=> d!2264647 d!2264833))

(declare-fun d!2264859 () Bool)

(assert (=> d!2264859 (= (nullable!8024 (h!77322 (exprs!8281 lt!2596945))) (nullableFct!3170 (h!77322 (exprs!8281 lt!2596945))))))

(declare-fun bs!1912115 () Bool)

(assert (= bs!1912115 d!2264859))

(declare-fun m!7962986 () Bool)

(assert (=> bs!1912115 m!7962986))

(assert (=> b!7275681 d!2264859))

(declare-fun d!2264861 () Bool)

(assert (=> d!2264861 true))

(declare-fun setRes!53662 () Bool)

(assert (=> d!2264861 setRes!53662))

(declare-fun condSetEmpty!53662 () Bool)

(declare-fun res!2949267 () (InoxSet Context!15562))

(assert (=> d!2264861 (= condSetEmpty!53662 (= res!2949267 ((as const (Array Context!15562 Bool)) false)))))

(assert (=> d!2264861 (= (choose!56489 lt!2596961 lambda!449781) res!2949267)))

(declare-fun setIsEmpty!53662 () Bool)

(assert (=> setIsEmpty!53662 setRes!53662))

(declare-fun tp!2042091 () Bool)

(declare-fun setElem!53662 () Context!15562)

(declare-fun setNonEmpty!53662 () Bool)

(declare-fun e!4363182 () Bool)

(assert (=> setNonEmpty!53662 (= setRes!53662 (and tp!2042091 (inv!90112 setElem!53662) e!4363182))))

(declare-fun setRest!53662 () (InoxSet Context!15562))

(assert (=> setNonEmpty!53662 (= res!2949267 ((_ map or) (store ((as const (Array Context!15562 Bool)) false) setElem!53662 true) setRest!53662))))

(declare-fun b!7276074 () Bool)

(declare-fun tp!2042090 () Bool)

(assert (=> b!7276074 (= e!4363182 tp!2042090)))

(assert (= (and d!2264861 condSetEmpty!53662) setIsEmpty!53662))

(assert (= (and d!2264861 (not condSetEmpty!53662)) setNonEmpty!53662))

(assert (= setNonEmpty!53662 b!7276074))

(declare-fun m!7962988 () Bool)

(assert (=> setNonEmpty!53662 m!7962988))

(assert (=> d!2264623 d!2264861))

(declare-fun b!7276075 () Bool)

(declare-fun e!4363184 () (InoxSet Context!15562))

(declare-fun call!663932 () (InoxSet Context!15562))

(assert (=> b!7276075 (= e!4363184 call!663932)))

(declare-fun b!7276076 () Bool)

(assert (=> b!7276076 (= e!4363184 ((as const (Array Context!15562 Bool)) false))))

(declare-fun b!7276077 () Bool)

(declare-fun e!4363183 () Bool)

(assert (=> b!7276077 (= e!4363183 (nullable!8024 (h!77322 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596949)))))))))

(declare-fun bm!663927 () Bool)

(assert (=> bm!663927 (= call!663932 (derivationStepZipperDown!2755 (h!77322 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596949))))) (Context!15563 (t!385070 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596949)))))) (h!77321 s!7854)))))

(declare-fun b!7276079 () Bool)

(declare-fun e!4363185 () (InoxSet Context!15562))

(assert (=> b!7276079 (= e!4363185 e!4363184)))

(declare-fun c!1354960 () Bool)

(assert (=> b!7276079 (= c!1354960 ((_ is Cons!70874) (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596949))))))))

(declare-fun d!2264863 () Bool)

(declare-fun c!1354961 () Bool)

(assert (=> d!2264863 (= c!1354961 e!4363183)))

(declare-fun res!2949268 () Bool)

(assert (=> d!2264863 (=> (not res!2949268) (not e!4363183))))

(assert (=> d!2264863 (= res!2949268 ((_ is Cons!70874) (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596949))))))))

(assert (=> d!2264863 (= (derivationStepZipperUp!2597 (Context!15563 (t!385070 (exprs!8281 lt!2596949))) (h!77321 s!7854)) e!4363185)))

(declare-fun b!7276078 () Bool)

(assert (=> b!7276078 (= e!4363185 ((_ map or) call!663932 (derivationStepZipperUp!2597 (Context!15563 (t!385070 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596949)))))) (h!77321 s!7854))))))

(assert (= (and d!2264863 res!2949268) b!7276077))

(assert (= (and d!2264863 c!1354961) b!7276078))

(assert (= (and d!2264863 (not c!1354961)) b!7276079))

(assert (= (and b!7276079 c!1354960) b!7276075))

(assert (= (and b!7276079 (not c!1354960)) b!7276076))

(assert (= (or b!7276078 b!7276075) bm!663927))

(declare-fun m!7962990 () Bool)

(assert (=> b!7276077 m!7962990))

(declare-fun m!7962992 () Bool)

(assert (=> bm!663927 m!7962992))

(declare-fun m!7962994 () Bool)

(assert (=> b!7276078 m!7962994))

(assert (=> b!7275693 d!2264863))

(declare-fun d!2264865 () Bool)

(declare-fun res!2949269 () Bool)

(declare-fun e!4363186 () Bool)

(assert (=> d!2264865 (=> res!2949269 e!4363186)))

(assert (=> d!2264865 (= res!2949269 ((_ is Nil!70874) (++!16735 lt!2596951 (exprs!8281 ct2!346))))))

(assert (=> d!2264865 (= (forall!17666 (++!16735 lt!2596951 (exprs!8281 ct2!346)) lambda!449780) e!4363186)))

(declare-fun b!7276080 () Bool)

(declare-fun e!4363187 () Bool)

(assert (=> b!7276080 (= e!4363186 e!4363187)))

(declare-fun res!2949270 () Bool)

(assert (=> b!7276080 (=> (not res!2949270) (not e!4363187))))

(assert (=> b!7276080 (= res!2949270 (dynLambda!28983 lambda!449780 (h!77322 (++!16735 lt!2596951 (exprs!8281 ct2!346)))))))

(declare-fun b!7276081 () Bool)

(assert (=> b!7276081 (= e!4363187 (forall!17666 (t!385070 (++!16735 lt!2596951 (exprs!8281 ct2!346))) lambda!449780))))

(assert (= (and d!2264865 (not res!2949269)) b!7276080))

(assert (= (and b!7276080 res!2949270) b!7276081))

(declare-fun b_lambda!280881 () Bool)

(assert (=> (not b_lambda!280881) (not b!7276080)))

(declare-fun m!7962996 () Bool)

(assert (=> b!7276080 m!7962996))

(declare-fun m!7962998 () Bool)

(assert (=> b!7276081 m!7962998))

(assert (=> d!2264549 d!2264865))

(assert (=> d!2264549 d!2264545))

(declare-fun d!2264867 () Bool)

(assert (=> d!2264867 (forall!17666 (++!16735 lt!2596951 (exprs!8281 ct2!346)) lambda!449780)))

(assert (=> d!2264867 true))

(declare-fun _$78!842 () Unit!164288)

(assert (=> d!2264867 (= (choose!56488 lt!2596951 (exprs!8281 ct2!346) lambda!449780) _$78!842)))

(declare-fun bs!1912116 () Bool)

(assert (= bs!1912116 d!2264867))

(assert (=> bs!1912116 m!7962276))

(assert (=> bs!1912116 m!7962276))

(assert (=> bs!1912116 m!7962366))

(assert (=> d!2264549 d!2264867))

(declare-fun d!2264869 () Bool)

(declare-fun res!2949271 () Bool)

(declare-fun e!4363188 () Bool)

(assert (=> d!2264869 (=> res!2949271 e!4363188)))

(assert (=> d!2264869 (= res!2949271 ((_ is Nil!70874) lt!2596951))))

(assert (=> d!2264869 (= (forall!17666 lt!2596951 lambda!449780) e!4363188)))

(declare-fun b!7276082 () Bool)

(declare-fun e!4363189 () Bool)

(assert (=> b!7276082 (= e!4363188 e!4363189)))

(declare-fun res!2949272 () Bool)

(assert (=> b!7276082 (=> (not res!2949272) (not e!4363189))))

(assert (=> b!7276082 (= res!2949272 (dynLambda!28983 lambda!449780 (h!77322 lt!2596951)))))

(declare-fun b!7276083 () Bool)

(assert (=> b!7276083 (= e!4363189 (forall!17666 (t!385070 lt!2596951) lambda!449780))))

(assert (= (and d!2264869 (not res!2949271)) b!7276082))

(assert (= (and b!7276082 res!2949272) b!7276083))

(declare-fun b_lambda!280883 () Bool)

(assert (=> (not b_lambda!280883) (not b!7276082)))

(declare-fun m!7963000 () Bool)

(assert (=> b!7276082 m!7963000))

(declare-fun m!7963002 () Bool)

(assert (=> b!7276083 m!7963002))

(assert (=> d!2264549 d!2264869))

(declare-fun d!2264871 () Bool)

(assert (=> d!2264871 (= (nullable!8024 (h!77322 (exprs!8281 lt!2596949))) (nullableFct!3170 (h!77322 (exprs!8281 lt!2596949))))))

(declare-fun bs!1912117 () Bool)

(assert (= bs!1912117 d!2264871))

(declare-fun m!7963004 () Bool)

(assert (=> bs!1912117 m!7963004))

(assert (=> b!7275692 d!2264871))

(declare-fun d!2264873 () Bool)

(assert (=> d!2264873 (= (isEmpty!40767 (t!385069 s!7854)) ((_ is Nil!70873) (t!385069 s!7854)))))

(assert (=> d!2264641 d!2264873))

(declare-fun bm!663928 () Bool)

(declare-fun call!663937 () (InoxSet Context!15562))

(declare-fun call!663936 () (InoxSet Context!15562))

(assert (=> bm!663928 (= call!663937 call!663936)))

(declare-fun b!7276084 () Bool)

(declare-fun e!4363195 () (InoxSet Context!15562))

(declare-fun call!663935 () (InoxSet Context!15562))

(assert (=> b!7276084 (= e!4363195 ((_ map or) call!663935 call!663936))))

(declare-fun b!7276085 () Bool)

(declare-fun e!4363194 () (InoxSet Context!15562))

(declare-fun call!663938 () (InoxSet Context!15562))

(assert (=> b!7276085 (= e!4363194 call!663938)))

(declare-fun b!7276086 () Bool)

(declare-fun e!4363192 () (InoxSet Context!15562))

(assert (=> b!7276086 (= e!4363192 e!4363195)))

(declare-fun c!1354966 () Bool)

(assert (=> b!7276086 (= c!1354966 ((_ is Union!18841) (ite c!1354806 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354804 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354803 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))))))

(declare-fun b!7276087 () Bool)

(assert (=> b!7276087 (= e!4363192 (store ((as const (Array Context!15562 Bool)) false) (ite (or c!1354806 c!1354804) lt!2596952 (Context!15563 call!663808)) true))))

(declare-fun d!2264875 () Bool)

(declare-fun c!1354962 () Bool)

(assert (=> d!2264875 (= c!1354962 (and ((_ is ElementMatch!18841) (ite c!1354806 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354804 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354803 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))) (= (c!1354743 (ite c!1354806 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354804 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354803 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))) (h!77321 s!7854))))))

(assert (=> d!2264875 (= (derivationStepZipperDown!2755 (ite c!1354806 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354804 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354803 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250)))))) (ite (or c!1354806 c!1354804) lt!2596952 (Context!15563 call!663808)) (h!77321 s!7854)) e!4363192)))

(declare-fun c!1354965 () Bool)

(declare-fun b!7276088 () Bool)

(assert (=> b!7276088 (= c!1354965 ((_ is Star!18841) (ite c!1354806 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354804 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354803 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))))))

(declare-fun e!4363191 () (InoxSet Context!15562))

(assert (=> b!7276088 (= e!4363191 e!4363194)))

(declare-fun bm!663929 () Bool)

(declare-fun call!663933 () List!70998)

(declare-fun call!663934 () List!70998)

(assert (=> bm!663929 (= call!663933 call!663934)))

(declare-fun bm!663930 () Bool)

(assert (=> bm!663930 (= call!663938 call!663937)))

(declare-fun c!1354964 () Bool)

(declare-fun c!1354963 () Bool)

(declare-fun bm!663931 () Bool)

(assert (=> bm!663931 (= call!663934 ($colon$colon!2987 (exprs!8281 (ite (or c!1354806 c!1354804) lt!2596952 (Context!15563 call!663808))) (ite (or c!1354964 c!1354963) (regTwo!38194 (ite c!1354806 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354804 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354803 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))) (ite c!1354806 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354804 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354803 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250)))))))))))

(declare-fun b!7276089 () Bool)

(declare-fun e!4363193 () (InoxSet Context!15562))

(assert (=> b!7276089 (= e!4363193 e!4363191)))

(assert (=> b!7276089 (= c!1354963 ((_ is Concat!27686) (ite c!1354806 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354804 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354803 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))))))

(declare-fun b!7276090 () Bool)

(assert (=> b!7276090 (= e!4363193 ((_ map or) call!663935 call!663937))))

(declare-fun b!7276091 () Bool)

(assert (=> b!7276091 (= e!4363191 call!663938)))

(declare-fun b!7276092 () Bool)

(declare-fun e!4363190 () Bool)

(assert (=> b!7276092 (= c!1354964 e!4363190)))

(declare-fun res!2949273 () Bool)

(assert (=> b!7276092 (=> (not res!2949273) (not e!4363190))))

(assert (=> b!7276092 (= res!2949273 ((_ is Concat!27686) (ite c!1354806 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354804 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354803 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))))))

(assert (=> b!7276092 (= e!4363195 e!4363193)))

(declare-fun b!7276093 () Bool)

(assert (=> b!7276093 (= e!4363190 (nullable!8024 (regOne!38194 (ite c!1354806 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354804 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354803 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250)))))))))))

(declare-fun b!7276094 () Bool)

(assert (=> b!7276094 (= e!4363194 ((as const (Array Context!15562 Bool)) false))))

(declare-fun bm!663932 () Bool)

(assert (=> bm!663932 (= call!663935 (derivationStepZipperDown!2755 (ite c!1354966 (regOne!38195 (ite c!1354806 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354804 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354803 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))) (regOne!38194 (ite c!1354806 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354804 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354803 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250)))))))) (ite c!1354966 (ite (or c!1354806 c!1354804) lt!2596952 (Context!15563 call!663808)) (Context!15563 call!663934)) (h!77321 s!7854)))))

(declare-fun bm!663933 () Bool)

(assert (=> bm!663933 (= call!663936 (derivationStepZipperDown!2755 (ite c!1354966 (regTwo!38195 (ite c!1354806 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354804 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354803 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))) (ite c!1354964 (regTwo!38194 (ite c!1354806 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354804 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354803 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))) (ite c!1354963 (regOne!38194 (ite c!1354806 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354804 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354803 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250))))))) (reg!19170 (ite c!1354806 (regTwo!38195 (h!77322 (exprs!8281 ct1!250))) (ite c!1354804 (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (ite c!1354803 (regOne!38194 (h!77322 (exprs!8281 ct1!250))) (reg!19170 (h!77322 (exprs!8281 ct1!250)))))))))) (ite (or c!1354966 c!1354964) (ite (or c!1354806 c!1354804) lt!2596952 (Context!15563 call!663808)) (Context!15563 call!663933)) (h!77321 s!7854)))))

(assert (= (and d!2264875 c!1354962) b!7276087))

(assert (= (and d!2264875 (not c!1354962)) b!7276086))

(assert (= (and b!7276086 c!1354966) b!7276084))

(assert (= (and b!7276086 (not c!1354966)) b!7276092))

(assert (= (and b!7276092 res!2949273) b!7276093))

(assert (= (and b!7276092 c!1354964) b!7276090))

(assert (= (and b!7276092 (not c!1354964)) b!7276089))

(assert (= (and b!7276089 c!1354963) b!7276091))

(assert (= (and b!7276089 (not c!1354963)) b!7276088))

(assert (= (and b!7276088 c!1354965) b!7276085))

(assert (= (and b!7276088 (not c!1354965)) b!7276094))

(assert (= (or b!7276091 b!7276085) bm!663929))

(assert (= (or b!7276091 b!7276085) bm!663930))

(assert (= (or b!7276090 bm!663929) bm!663931))

(assert (= (or b!7276090 bm!663930) bm!663928))

(assert (= (or b!7276084 b!7276090) bm!663932))

(assert (= (or b!7276084 bm!663928) bm!663933))

(declare-fun m!7963006 () Bool)

(assert (=> bm!663931 m!7963006))

(declare-fun m!7963008 () Bool)

(assert (=> bm!663933 m!7963008))

(declare-fun m!7963010 () Bool)

(assert (=> b!7276087 m!7963010))

(declare-fun m!7963012 () Bool)

(assert (=> b!7276093 m!7963012))

(declare-fun m!7963014 () Bool)

(assert (=> bm!663932 m!7963014))

(assert (=> bm!663808 d!2264875))

(declare-fun d!2264877 () Bool)

(assert (=> d!2264877 (= (nullable!8024 (regOne!38194 (h!77322 (exprs!8281 ct1!250)))) (nullableFct!3170 (regOne!38194 (h!77322 (exprs!8281 ct1!250)))))))

(declare-fun bs!1912118 () Bool)

(assert (= bs!1912118 d!2264877))

(declare-fun m!7963016 () Bool)

(assert (=> bs!1912118 m!7963016))

(assert (=> b!7275677 d!2264877))

(declare-fun d!2264879 () Bool)

(declare-fun c!1354967 () Bool)

(assert (=> d!2264879 (= c!1354967 ((_ is Nil!70874) lt!2596991))))

(declare-fun e!4363196 () (InoxSet Regex!18841))

(assert (=> d!2264879 (= (content!14800 lt!2596991) e!4363196)))

(declare-fun b!7276095 () Bool)

(assert (=> b!7276095 (= e!4363196 ((as const (Array Regex!18841 Bool)) false))))

(declare-fun b!7276096 () Bool)

(assert (=> b!7276096 (= e!4363196 ((_ map or) (store ((as const (Array Regex!18841 Bool)) false) (h!77322 lt!2596991) true) (content!14800 (t!385070 lt!2596991))))))

(assert (= (and d!2264879 c!1354967) b!7276095))

(assert (= (and d!2264879 (not c!1354967)) b!7276096))

(declare-fun m!7963018 () Bool)

(assert (=> b!7276096 m!7963018))

(declare-fun m!7963020 () Bool)

(assert (=> b!7276096 m!7963020))

(assert (=> d!2264631 d!2264879))

(declare-fun d!2264881 () Bool)

(declare-fun c!1354968 () Bool)

(assert (=> d!2264881 (= c!1354968 ((_ is Nil!70874) (exprs!8281 ct1!250)))))

(declare-fun e!4363197 () (InoxSet Regex!18841))

(assert (=> d!2264881 (= (content!14800 (exprs!8281 ct1!250)) e!4363197)))

(declare-fun b!7276097 () Bool)

(assert (=> b!7276097 (= e!4363197 ((as const (Array Regex!18841 Bool)) false))))

(declare-fun b!7276098 () Bool)

(assert (=> b!7276098 (= e!4363197 ((_ map or) (store ((as const (Array Regex!18841 Bool)) false) (h!77322 (exprs!8281 ct1!250)) true) (content!14800 (t!385070 (exprs!8281 ct1!250)))))))

(assert (= (and d!2264881 c!1354968) b!7276097))

(assert (= (and d!2264881 (not c!1354968)) b!7276098))

(declare-fun m!7963022 () Bool)

(assert (=> b!7276098 m!7963022))

(declare-fun m!7963024 () Bool)

(assert (=> b!7276098 m!7963024))

(assert (=> d!2264631 d!2264881))

(assert (=> d!2264631 d!2264855))

(declare-fun b!7276099 () Bool)

(declare-fun e!4363199 () (InoxSet Context!15562))

(declare-fun call!663939 () (InoxSet Context!15562))

(assert (=> b!7276099 (= e!4363199 call!663939)))

(declare-fun b!7276100 () Bool)

(assert (=> b!7276100 (= e!4363199 ((as const (Array Context!15562 Bool)) false))))

(declare-fun b!7276101 () Bool)

(declare-fun e!4363198 () Bool)

(assert (=> b!7276101 (= e!4363198 (nullable!8024 (h!77322 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 ct1!250)))))))))

(declare-fun bm!663934 () Bool)

(assert (=> bm!663934 (= call!663939 (derivationStepZipperDown!2755 (h!77322 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 ct1!250))))) (Context!15563 (t!385070 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 ct1!250)))))) (h!77321 s!7854)))))

(declare-fun b!7276103 () Bool)

(declare-fun e!4363200 () (InoxSet Context!15562))

(assert (=> b!7276103 (= e!4363200 e!4363199)))

(declare-fun c!1354969 () Bool)

(assert (=> b!7276103 (= c!1354969 ((_ is Cons!70874) (exprs!8281 (Context!15563 (t!385070 (exprs!8281 ct1!250))))))))

(declare-fun d!2264883 () Bool)

(declare-fun c!1354970 () Bool)

(assert (=> d!2264883 (= c!1354970 e!4363198)))

(declare-fun res!2949274 () Bool)

(assert (=> d!2264883 (=> (not res!2949274) (not e!4363198))))

(assert (=> d!2264883 (= res!2949274 ((_ is Cons!70874) (exprs!8281 (Context!15563 (t!385070 (exprs!8281 ct1!250))))))))

(assert (=> d!2264883 (= (derivationStepZipperUp!2597 (Context!15563 (t!385070 (exprs!8281 ct1!250))) (h!77321 s!7854)) e!4363200)))

(declare-fun b!7276102 () Bool)

(assert (=> b!7276102 (= e!4363200 ((_ map or) call!663939 (derivationStepZipperUp!2597 (Context!15563 (t!385070 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 ct1!250)))))) (h!77321 s!7854))))))

(assert (= (and d!2264883 res!2949274) b!7276101))

(assert (= (and d!2264883 c!1354970) b!7276102))

(assert (= (and d!2264883 (not c!1354970)) b!7276103))

(assert (= (and b!7276103 c!1354969) b!7276099))

(assert (= (and b!7276103 (not c!1354969)) b!7276100))

(assert (= (or b!7276102 b!7276099) bm!663934))

(declare-fun m!7963026 () Bool)

(assert (=> b!7276101 m!7963026))

(declare-fun m!7963028 () Bool)

(assert (=> bm!663934 m!7963028))

(declare-fun m!7963030 () Bool)

(assert (=> b!7276102 m!7963030))

(assert (=> b!7275666 d!2264883))

(declare-fun d!2264885 () Bool)

(declare-fun c!1354971 () Bool)

(assert (=> d!2264885 (= c!1354971 (isEmpty!40767 (tail!14552 s!7854)))))

(declare-fun e!4363201 () Bool)

(assert (=> d!2264885 (= (matchZipper!3745 (derivationStepZipper!3577 (store ((as const (Array Context!15562 Bool)) false) ct2!346 true) (head!15039 s!7854)) (tail!14552 s!7854)) e!4363201)))

(declare-fun b!7276104 () Bool)

(assert (=> b!7276104 (= e!4363201 (nullableZipper!3041 (derivationStepZipper!3577 (store ((as const (Array Context!15562 Bool)) false) ct2!346 true) (head!15039 s!7854))))))

(declare-fun b!7276105 () Bool)

(assert (=> b!7276105 (= e!4363201 (matchZipper!3745 (derivationStepZipper!3577 (derivationStepZipper!3577 (store ((as const (Array Context!15562 Bool)) false) ct2!346 true) (head!15039 s!7854)) (head!15039 (tail!14552 s!7854))) (tail!14552 (tail!14552 s!7854))))))

(assert (= (and d!2264885 c!1354971) b!7276104))

(assert (= (and d!2264885 (not c!1354971)) b!7276105))

(assert (=> d!2264885 m!7962508))

(declare-fun m!7963032 () Bool)

(assert (=> d!2264885 m!7963032))

(assert (=> b!7276104 m!7962506))

(declare-fun m!7963034 () Bool)

(assert (=> b!7276104 m!7963034))

(assert (=> b!7276105 m!7962508))

(declare-fun m!7963036 () Bool)

(assert (=> b!7276105 m!7963036))

(assert (=> b!7276105 m!7962506))

(assert (=> b!7276105 m!7963036))

(declare-fun m!7963038 () Bool)

(assert (=> b!7276105 m!7963038))

(assert (=> b!7276105 m!7962508))

(declare-fun m!7963040 () Bool)

(assert (=> b!7276105 m!7963040))

(assert (=> b!7276105 m!7963038))

(assert (=> b!7276105 m!7963040))

(declare-fun m!7963042 () Bool)

(assert (=> b!7276105 m!7963042))

(assert (=> b!7275689 d!2264885))

(declare-fun bs!1912119 () Bool)

(declare-fun d!2264887 () Bool)

(assert (= bs!1912119 (and d!2264887 b!7275486)))

(declare-fun lambda!449827 () Int)

(assert (=> bs!1912119 (= (= (head!15039 s!7854) (h!77321 s!7854)) (= lambda!449827 lambda!449781))))

(declare-fun bs!1912120 () Bool)

(assert (= bs!1912120 (and d!2264887 d!2264633)))

(assert (=> bs!1912120 (= (= (head!15039 s!7854) (h!77321 s!7854)) (= lambda!449827 lambda!449804))))

(assert (=> d!2264887 true))

(assert (=> d!2264887 (= (derivationStepZipper!3577 (store ((as const (Array Context!15562 Bool)) false) ct2!346 true) (head!15039 s!7854)) (flatMap!2940 (store ((as const (Array Context!15562 Bool)) false) ct2!346 true) lambda!449827))))

(declare-fun bs!1912121 () Bool)

(assert (= bs!1912121 d!2264887))

(assert (=> bs!1912121 m!7962278))

(declare-fun m!7963044 () Bool)

(assert (=> bs!1912121 m!7963044))

(assert (=> b!7275689 d!2264887))

(declare-fun d!2264889 () Bool)

(assert (=> d!2264889 (= (head!15039 s!7854) (h!77321 s!7854))))

(assert (=> b!7275689 d!2264889))

(declare-fun d!2264891 () Bool)

(assert (=> d!2264891 (= (tail!14552 s!7854) (t!385069 s!7854))))

(assert (=> b!7275689 d!2264891))

(assert (=> d!2264637 d!2264635))

(declare-fun d!2264893 () Bool)

(assert (=> d!2264893 (= (flatMap!2940 lt!2596950 lambda!449781) (dynLambda!28981 lambda!449781 ct1!250))))

(assert (=> d!2264893 true))

(declare-fun _$13!4660 () Unit!164288)

(assert (=> d!2264893 (= (choose!56490 lt!2596950 ct1!250 lambda!449781) _$13!4660)))

(declare-fun b_lambda!280885 () Bool)

(assert (=> (not b_lambda!280885) (not d!2264893)))

(declare-fun bs!1912122 () Bool)

(assert (= bs!1912122 d!2264893))

(assert (=> bs!1912122 m!7962246))

(assert (=> bs!1912122 m!7962548))

(assert (=> d!2264637 d!2264893))

(declare-fun d!2264895 () Bool)

(declare-fun res!2949275 () Bool)

(declare-fun e!4363202 () Bool)

(assert (=> d!2264895 (=> res!2949275 e!4363202)))

(assert (=> d!2264895 (= res!2949275 ((_ is Nil!70874) (++!16735 (exprs!8281 ct1!250) (exprs!8281 ct2!346))))))

(assert (=> d!2264895 (= (forall!17666 (++!16735 (exprs!8281 ct1!250) (exprs!8281 ct2!346)) lambda!449780) e!4363202)))

(declare-fun b!7276106 () Bool)

(declare-fun e!4363203 () Bool)

(assert (=> b!7276106 (= e!4363202 e!4363203)))

(declare-fun res!2949276 () Bool)

(assert (=> b!7276106 (=> (not res!2949276) (not e!4363203))))

(assert (=> b!7276106 (= res!2949276 (dynLambda!28983 lambda!449780 (h!77322 (++!16735 (exprs!8281 ct1!250) (exprs!8281 ct2!346)))))))

(declare-fun b!7276107 () Bool)

(assert (=> b!7276107 (= e!4363203 (forall!17666 (t!385070 (++!16735 (exprs!8281 ct1!250) (exprs!8281 ct2!346))) lambda!449780))))

(assert (= (and d!2264895 (not res!2949275)) b!7276106))

(assert (= (and b!7276106 res!2949276) b!7276107))

(declare-fun b_lambda!280887 () Bool)

(assert (=> (not b_lambda!280887) (not b!7276106)))

(declare-fun m!7963046 () Bool)

(assert (=> b!7276106 m!7963046))

(declare-fun m!7963048 () Bool)

(assert (=> b!7276107 m!7963048))

(assert (=> d!2264629 d!2264895))

(assert (=> d!2264629 d!2264631))

(declare-fun d!2264897 () Bool)

(assert (=> d!2264897 (forall!17666 (++!16735 (exprs!8281 ct1!250) (exprs!8281 ct2!346)) lambda!449780)))

(assert (=> d!2264897 true))

(declare-fun _$78!843 () Unit!164288)

(assert (=> d!2264897 (= (choose!56488 (exprs!8281 ct1!250) (exprs!8281 ct2!346) lambda!449780) _$78!843)))

(declare-fun bs!1912123 () Bool)

(assert (= bs!1912123 d!2264897))

(assert (=> bs!1912123 m!7962254))

(assert (=> bs!1912123 m!7962254))

(assert (=> bs!1912123 m!7962528))

(assert (=> d!2264629 d!2264897))

(declare-fun d!2264899 () Bool)

(declare-fun res!2949277 () Bool)

(declare-fun e!4363204 () Bool)

(assert (=> d!2264899 (=> res!2949277 e!4363204)))

(assert (=> d!2264899 (= res!2949277 ((_ is Nil!70874) (exprs!8281 ct1!250)))))

(assert (=> d!2264899 (= (forall!17666 (exprs!8281 ct1!250) lambda!449780) e!4363204)))

(declare-fun b!7276108 () Bool)

(declare-fun e!4363205 () Bool)

(assert (=> b!7276108 (= e!4363204 e!4363205)))

(declare-fun res!2949278 () Bool)

(assert (=> b!7276108 (=> (not res!2949278) (not e!4363205))))

(assert (=> b!7276108 (= res!2949278 (dynLambda!28983 lambda!449780 (h!77322 (exprs!8281 ct1!250))))))

(declare-fun b!7276109 () Bool)

(assert (=> b!7276109 (= e!4363205 (forall!17666 (t!385070 (exprs!8281 ct1!250)) lambda!449780))))

(assert (= (and d!2264899 (not res!2949277)) b!7276108))

(assert (= (and b!7276108 res!2949278) b!7276109))

(declare-fun b_lambda!280889 () Bool)

(assert (=> (not b_lambda!280889) (not b!7276108)))

(declare-fun m!7963050 () Bool)

(assert (=> b!7276108 m!7963050))

(declare-fun m!7963052 () Bool)

(assert (=> b!7276109 m!7963052))

(assert (=> d!2264629 d!2264899))

(declare-fun d!2264901 () Bool)

(declare-fun e!4363206 () Bool)

(assert (=> d!2264901 e!4363206))

(declare-fun res!2949279 () Bool)

(assert (=> d!2264901 (=> (not res!2949279) (not e!4363206))))

(declare-fun lt!2597026 () List!70998)

(assert (=> d!2264901 (= res!2949279 (= (content!14800 lt!2597026) ((_ map or) (content!14800 (t!385070 (exprs!8281 ct1!250))) (content!14800 (exprs!8281 ct2!346)))))))

(declare-fun e!4363207 () List!70998)

(assert (=> d!2264901 (= lt!2597026 e!4363207)))

(declare-fun c!1354972 () Bool)

(assert (=> d!2264901 (= c!1354972 ((_ is Nil!70874) (t!385070 (exprs!8281 ct1!250))))))

(assert (=> d!2264901 (= (++!16735 (t!385070 (exprs!8281 ct1!250)) (exprs!8281 ct2!346)) lt!2597026)))

(declare-fun b!7276112 () Bool)

(declare-fun res!2949280 () Bool)

(assert (=> b!7276112 (=> (not res!2949280) (not e!4363206))))

(assert (=> b!7276112 (= res!2949280 (= (size!41846 lt!2597026) (+ (size!41846 (t!385070 (exprs!8281 ct1!250))) (size!41846 (exprs!8281 ct2!346)))))))

(declare-fun b!7276113 () Bool)

(assert (=> b!7276113 (= e!4363206 (or (not (= (exprs!8281 ct2!346) Nil!70874)) (= lt!2597026 (t!385070 (exprs!8281 ct1!250)))))))

(declare-fun b!7276110 () Bool)

(assert (=> b!7276110 (= e!4363207 (exprs!8281 ct2!346))))

(declare-fun b!7276111 () Bool)

(assert (=> b!7276111 (= e!4363207 (Cons!70874 (h!77322 (t!385070 (exprs!8281 ct1!250))) (++!16735 (t!385070 (t!385070 (exprs!8281 ct1!250))) (exprs!8281 ct2!346))))))

(assert (= (and d!2264901 c!1354972) b!7276110))

(assert (= (and d!2264901 (not c!1354972)) b!7276111))

(assert (= (and d!2264901 res!2949279) b!7276112))

(assert (= (and b!7276112 res!2949280) b!7276113))

(declare-fun m!7963054 () Bool)

(assert (=> d!2264901 m!7963054))

(assert (=> d!2264901 m!7963024))

(assert (=> d!2264901 m!7962334))

(declare-fun m!7963056 () Bool)

(assert (=> b!7276112 m!7963056))

(assert (=> b!7276112 m!7962962))

(assert (=> b!7276112 m!7962340))

(declare-fun m!7963058 () Bool)

(assert (=> b!7276111 m!7963058))

(assert (=> b!7275696 d!2264901))

(declare-fun d!2264903 () Bool)

(declare-fun c!1354973 () Bool)

(assert (=> d!2264903 (= c!1354973 (isEmpty!40767 (tail!14552 s!7854)))))

(declare-fun e!4363208 () Bool)

(assert (=> d!2264903 (= (matchZipper!3745 (derivationStepZipper!3577 lt!2596953 (head!15039 s!7854)) (tail!14552 s!7854)) e!4363208)))

(declare-fun b!7276114 () Bool)

(assert (=> b!7276114 (= e!4363208 (nullableZipper!3041 (derivationStepZipper!3577 lt!2596953 (head!15039 s!7854))))))

(declare-fun b!7276115 () Bool)

(assert (=> b!7276115 (= e!4363208 (matchZipper!3745 (derivationStepZipper!3577 (derivationStepZipper!3577 lt!2596953 (head!15039 s!7854)) (head!15039 (tail!14552 s!7854))) (tail!14552 (tail!14552 s!7854))))))

(assert (= (and d!2264903 c!1354973) b!7276114))

(assert (= (and d!2264903 (not c!1354973)) b!7276115))

(assert (=> d!2264903 m!7962508))

(assert (=> d!2264903 m!7963032))

(assert (=> b!7276114 m!7962582))

(declare-fun m!7963060 () Bool)

(assert (=> b!7276114 m!7963060))

(assert (=> b!7276115 m!7962508))

(assert (=> b!7276115 m!7963036))

(assert (=> b!7276115 m!7962582))

(assert (=> b!7276115 m!7963036))

(declare-fun m!7963062 () Bool)

(assert (=> b!7276115 m!7963062))

(assert (=> b!7276115 m!7962508))

(assert (=> b!7276115 m!7963040))

(assert (=> b!7276115 m!7963062))

(assert (=> b!7276115 m!7963040))

(declare-fun m!7963064 () Bool)

(assert (=> b!7276115 m!7963064))

(assert (=> b!7275704 d!2264903))

(declare-fun bs!1912124 () Bool)

(declare-fun d!2264905 () Bool)

(assert (= bs!1912124 (and d!2264905 b!7275486)))

(declare-fun lambda!449828 () Int)

(assert (=> bs!1912124 (= (= (head!15039 s!7854) (h!77321 s!7854)) (= lambda!449828 lambda!449781))))

(declare-fun bs!1912125 () Bool)

(assert (= bs!1912125 (and d!2264905 d!2264633)))

(assert (=> bs!1912125 (= (= (head!15039 s!7854) (h!77321 s!7854)) (= lambda!449828 lambda!449804))))

(declare-fun bs!1912126 () Bool)

(assert (= bs!1912126 (and d!2264905 d!2264887)))

(assert (=> bs!1912126 (= lambda!449828 lambda!449827)))

(assert (=> d!2264905 true))

(assert (=> d!2264905 (= (derivationStepZipper!3577 lt!2596953 (head!15039 s!7854)) (flatMap!2940 lt!2596953 lambda!449828))))

(declare-fun bs!1912127 () Bool)

(assert (= bs!1912127 d!2264905))

(declare-fun m!7963066 () Bool)

(assert (=> bs!1912127 m!7963066))

(assert (=> b!7275704 d!2264905))

(assert (=> b!7275704 d!2264889))

(assert (=> b!7275704 d!2264891))

(declare-fun d!2264907 () Bool)

(declare-fun res!2949281 () Bool)

(declare-fun e!4363209 () Bool)

(assert (=> d!2264907 (=> res!2949281 e!4363209)))

(assert (=> d!2264907 (= res!2949281 ((_ is Nil!70874) (exprs!8281 ct1!250)))))

(assert (=> d!2264907 (= (forall!17666 (exprs!8281 ct1!250) lambda!449784) e!4363209)))

(declare-fun b!7276116 () Bool)

(declare-fun e!4363210 () Bool)

(assert (=> b!7276116 (= e!4363209 e!4363210)))

(declare-fun res!2949282 () Bool)

(assert (=> b!7276116 (=> (not res!2949282) (not e!4363210))))

(assert (=> b!7276116 (= res!2949282 (dynLambda!28983 lambda!449784 (h!77322 (exprs!8281 ct1!250))))))

(declare-fun b!7276117 () Bool)

(assert (=> b!7276117 (= e!4363210 (forall!17666 (t!385070 (exprs!8281 ct1!250)) lambda!449784))))

(assert (= (and d!2264907 (not res!2949281)) b!7276116))

(assert (= (and b!7276116 res!2949282) b!7276117))

(declare-fun b_lambda!280891 () Bool)

(assert (=> (not b_lambda!280891) (not b!7276116)))

(declare-fun m!7963068 () Bool)

(assert (=> b!7276116 m!7963068))

(declare-fun m!7963070 () Bool)

(assert (=> b!7276117 m!7963070))

(assert (=> d!2264539 d!2264907))

(declare-fun d!2264909 () Bool)

(declare-fun c!1354974 () Bool)

(assert (=> d!2264909 (= c!1354974 (isEmpty!40767 (tail!14552 (t!385069 s!7854))))))

(declare-fun e!4363211 () Bool)

(assert (=> d!2264909 (= (matchZipper!3745 (derivationStepZipper!3577 lt!2596944 (head!15039 (t!385069 s!7854))) (tail!14552 (t!385069 s!7854))) e!4363211)))

(declare-fun b!7276118 () Bool)

(assert (=> b!7276118 (= e!4363211 (nullableZipper!3041 (derivationStepZipper!3577 lt!2596944 (head!15039 (t!385069 s!7854)))))))

(declare-fun b!7276119 () Bool)

(assert (=> b!7276119 (= e!4363211 (matchZipper!3745 (derivationStepZipper!3577 (derivationStepZipper!3577 lt!2596944 (head!15039 (t!385069 s!7854))) (head!15039 (tail!14552 (t!385069 s!7854)))) (tail!14552 (tail!14552 (t!385069 s!7854)))))))

(assert (= (and d!2264909 c!1354974) b!7276118))

(assert (= (and d!2264909 (not c!1354974)) b!7276119))

(assert (=> d!2264909 m!7962562))

(declare-fun m!7963072 () Bool)

(assert (=> d!2264909 m!7963072))

(assert (=> b!7276118 m!7962560))

(declare-fun m!7963074 () Bool)

(assert (=> b!7276118 m!7963074))

(assert (=> b!7276119 m!7962562))

(declare-fun m!7963076 () Bool)

(assert (=> b!7276119 m!7963076))

(assert (=> b!7276119 m!7962560))

(assert (=> b!7276119 m!7963076))

(declare-fun m!7963078 () Bool)

(assert (=> b!7276119 m!7963078))

(assert (=> b!7276119 m!7962562))

(declare-fun m!7963080 () Bool)

(assert (=> b!7276119 m!7963080))

(assert (=> b!7276119 m!7963078))

(assert (=> b!7276119 m!7963080))

(declare-fun m!7963082 () Bool)

(assert (=> b!7276119 m!7963082))

(assert (=> b!7275702 d!2264909))

(declare-fun bs!1912128 () Bool)

(declare-fun d!2264911 () Bool)

(assert (= bs!1912128 (and d!2264911 b!7275486)))

(declare-fun lambda!449829 () Int)

(assert (=> bs!1912128 (= (= (head!15039 (t!385069 s!7854)) (h!77321 s!7854)) (= lambda!449829 lambda!449781))))

(declare-fun bs!1912129 () Bool)

(assert (= bs!1912129 (and d!2264911 d!2264633)))

(assert (=> bs!1912129 (= (= (head!15039 (t!385069 s!7854)) (h!77321 s!7854)) (= lambda!449829 lambda!449804))))

(declare-fun bs!1912130 () Bool)

(assert (= bs!1912130 (and d!2264911 d!2264887)))

(assert (=> bs!1912130 (= (= (head!15039 (t!385069 s!7854)) (head!15039 s!7854)) (= lambda!449829 lambda!449827))))

(declare-fun bs!1912131 () Bool)

(assert (= bs!1912131 (and d!2264911 d!2264905)))

(assert (=> bs!1912131 (= (= (head!15039 (t!385069 s!7854)) (head!15039 s!7854)) (= lambda!449829 lambda!449828))))

(assert (=> d!2264911 true))

(assert (=> d!2264911 (= (derivationStepZipper!3577 lt!2596944 (head!15039 (t!385069 s!7854))) (flatMap!2940 lt!2596944 lambda!449829))))

(declare-fun bs!1912132 () Bool)

(assert (= bs!1912132 d!2264911))

(declare-fun m!7963084 () Bool)

(assert (=> bs!1912132 m!7963084))

(assert (=> b!7275702 d!2264911))

(declare-fun d!2264913 () Bool)

(assert (=> d!2264913 (= (head!15039 (t!385069 s!7854)) (h!77321 (t!385069 s!7854)))))

(assert (=> b!7275702 d!2264913))

(declare-fun d!2264915 () Bool)

(assert (=> d!2264915 (= (tail!14552 (t!385069 s!7854)) (t!385069 (t!385069 s!7854)))))

(assert (=> b!7275702 d!2264915))

(declare-fun b!7276120 () Bool)

(declare-fun e!4363213 () (InoxSet Context!15562))

(declare-fun call!663940 () (InoxSet Context!15562))

(assert (=> b!7276120 (= e!4363213 call!663940)))

(declare-fun b!7276121 () Bool)

(assert (=> b!7276121 (= e!4363213 ((as const (Array Context!15562 Bool)) false))))

(declare-fun b!7276122 () Bool)

(declare-fun e!4363212 () Bool)

(assert (=> b!7276122 (= e!4363212 (nullable!8024 (h!77322 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596945)))))))))

(declare-fun bm!663935 () Bool)

(assert (=> bm!663935 (= call!663940 (derivationStepZipperDown!2755 (h!77322 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596945))))) (Context!15563 (t!385070 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596945)))))) (h!77321 s!7854)))))

(declare-fun b!7276124 () Bool)

(declare-fun e!4363214 () (InoxSet Context!15562))

(assert (=> b!7276124 (= e!4363214 e!4363213)))

(declare-fun c!1354975 () Bool)

(assert (=> b!7276124 (= c!1354975 ((_ is Cons!70874) (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596945))))))))

(declare-fun d!2264917 () Bool)

(declare-fun c!1354976 () Bool)

(assert (=> d!2264917 (= c!1354976 e!4363212)))

(declare-fun res!2949283 () Bool)

(assert (=> d!2264917 (=> (not res!2949283) (not e!4363212))))

(assert (=> d!2264917 (= res!2949283 ((_ is Cons!70874) (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596945))))))))

(assert (=> d!2264917 (= (derivationStepZipperUp!2597 (Context!15563 (t!385070 (exprs!8281 lt!2596945))) (h!77321 s!7854)) e!4363214)))

(declare-fun b!7276123 () Bool)

(assert (=> b!7276123 (= e!4363214 ((_ map or) call!663940 (derivationStepZipperUp!2597 (Context!15563 (t!385070 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596945)))))) (h!77321 s!7854))))))

(assert (= (and d!2264917 res!2949283) b!7276122))

(assert (= (and d!2264917 c!1354976) b!7276123))

(assert (= (and d!2264917 (not c!1354976)) b!7276124))

(assert (= (and b!7276124 c!1354975) b!7276120))

(assert (= (and b!7276124 (not c!1354975)) b!7276121))

(assert (= (or b!7276123 b!7276120) bm!663935))

(declare-fun m!7963086 () Bool)

(assert (=> b!7276122 m!7963086))

(declare-fun m!7963088 () Bool)

(assert (=> bm!663935 m!7963088))

(declare-fun m!7963090 () Bool)

(assert (=> b!7276123 m!7963090))

(assert (=> b!7275682 d!2264917))

(declare-fun b!7276125 () Bool)

(declare-fun e!4363216 () (InoxSet Context!15562))

(declare-fun call!663941 () (InoxSet Context!15562))

(assert (=> b!7276125 (= e!4363216 call!663941)))

(declare-fun b!7276126 () Bool)

(assert (=> b!7276126 (= e!4363216 ((as const (Array Context!15562 Bool)) false))))

(declare-fun b!7276127 () Bool)

(declare-fun e!4363215 () Bool)

(assert (=> b!7276127 (= e!4363215 (nullable!8024 (h!77322 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596952)))))))))

(declare-fun bm!663936 () Bool)

(assert (=> bm!663936 (= call!663941 (derivationStepZipperDown!2755 (h!77322 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596952))))) (Context!15563 (t!385070 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596952)))))) (h!77321 s!7854)))))

(declare-fun b!7276129 () Bool)

(declare-fun e!4363217 () (InoxSet Context!15562))

(assert (=> b!7276129 (= e!4363217 e!4363216)))

(declare-fun c!1354977 () Bool)

(assert (=> b!7276129 (= c!1354977 ((_ is Cons!70874) (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596952))))))))

(declare-fun d!2264919 () Bool)

(declare-fun c!1354978 () Bool)

(assert (=> d!2264919 (= c!1354978 e!4363215)))

(declare-fun res!2949284 () Bool)

(assert (=> d!2264919 (=> (not res!2949284) (not e!4363215))))

(assert (=> d!2264919 (= res!2949284 ((_ is Cons!70874) (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596952))))))))

(assert (=> d!2264919 (= (derivationStepZipperUp!2597 (Context!15563 (t!385070 (exprs!8281 lt!2596952))) (h!77321 s!7854)) e!4363217)))

(declare-fun b!7276128 () Bool)

(assert (=> b!7276128 (= e!4363217 ((_ map or) call!663941 (derivationStepZipperUp!2597 (Context!15563 (t!385070 (exprs!8281 (Context!15563 (t!385070 (exprs!8281 lt!2596952)))))) (h!77321 s!7854))))))

(assert (= (and d!2264919 res!2949284) b!7276127))

(assert (= (and d!2264919 c!1354978) b!7276128))

(assert (= (and d!2264919 (not c!1354978)) b!7276129))

(assert (= (and b!7276129 c!1354977) b!7276125))

(assert (= (and b!7276129 (not c!1354977)) b!7276126))

(assert (= (or b!7276128 b!7276125) bm!663936))

(declare-fun m!7963092 () Bool)

(assert (=> b!7276127 m!7963092))

(declare-fun m!7963094 () Bool)

(assert (=> bm!663936 m!7963094))

(declare-fun m!7963096 () Bool)

(assert (=> b!7276128 m!7963096))

(assert (=> b!7275661 d!2264919))

(declare-fun d!2264921 () Bool)

(declare-fun e!4363218 () Bool)

(assert (=> d!2264921 e!4363218))

(declare-fun res!2949285 () Bool)

(assert (=> d!2264921 (=> (not res!2949285) (not e!4363218))))

(declare-fun lt!2597027 () List!70998)

(assert (=> d!2264921 (= res!2949285 (= (content!14800 lt!2597027) ((_ map or) (content!14800 (t!385070 lt!2596951)) (content!14800 (exprs!8281 ct2!346)))))))

(declare-fun e!4363219 () List!70998)

(assert (=> d!2264921 (= lt!2597027 e!4363219)))

(declare-fun c!1354979 () Bool)

(assert (=> d!2264921 (= c!1354979 ((_ is Nil!70874) (t!385070 lt!2596951)))))

(assert (=> d!2264921 (= (++!16735 (t!385070 lt!2596951) (exprs!8281 ct2!346)) lt!2597027)))

(declare-fun b!7276132 () Bool)

(declare-fun res!2949286 () Bool)

(assert (=> b!7276132 (=> (not res!2949286) (not e!4363218))))

(assert (=> b!7276132 (= res!2949286 (= (size!41846 lt!2597027) (+ (size!41846 (t!385070 lt!2596951)) (size!41846 (exprs!8281 ct2!346)))))))

(declare-fun b!7276133 () Bool)

(assert (=> b!7276133 (= e!4363218 (or (not (= (exprs!8281 ct2!346) Nil!70874)) (= lt!2597027 (t!385070 lt!2596951))))))

(declare-fun b!7276130 () Bool)

(assert (=> b!7276130 (= e!4363219 (exprs!8281 ct2!346))))

(declare-fun b!7276131 () Bool)

(assert (=> b!7276131 (= e!4363219 (Cons!70874 (h!77322 (t!385070 lt!2596951)) (++!16735 (t!385070 (t!385070 lt!2596951)) (exprs!8281 ct2!346))))))

(assert (= (and d!2264921 c!1354979) b!7276130))

(assert (= (and d!2264921 (not c!1354979)) b!7276131))

(assert (= (and d!2264921 res!2949285) b!7276132))

(assert (= (and b!7276132 res!2949286) b!7276133))

(declare-fun m!7963098 () Bool)

(assert (=> d!2264921 m!7963098))

(assert (=> d!2264921 m!7962970))

(assert (=> d!2264921 m!7962334))

(declare-fun m!7963100 () Bool)

(assert (=> b!7276132 m!7963100))

(assert (=> b!7276132 m!7962946))

(assert (=> b!7276132 m!7962340))

(declare-fun m!7963102 () Bool)

(assert (=> b!7276131 m!7963102))

(assert (=> b!7275548 d!2264921))

(declare-fun d!2264923 () Bool)

(assert (=> d!2264923 (= (nullable!8024 (h!77322 (exprs!8281 lt!2596952))) (nullableFct!3170 (h!77322 (exprs!8281 lt!2596952))))))

(declare-fun bs!1912133 () Bool)

(assert (= bs!1912133 d!2264923))

(declare-fun m!7963104 () Bool)

(assert (=> bs!1912133 m!7963104))

(assert (=> b!7275660 d!2264923))

(assert (=> b!7275646 d!2264877))

(assert (=> d!2264643 d!2264639))

(declare-fun d!2264925 () Bool)

(assert (=> d!2264925 (= (flatMap!2940 lt!2596953 lambda!449781) (dynLambda!28981 lambda!449781 lt!2596952))))

(assert (=> d!2264925 true))

(declare-fun _$13!4661 () Unit!164288)

(assert (=> d!2264925 (= (choose!56490 lt!2596953 lt!2596952 lambda!449781) _$13!4661)))

(declare-fun b_lambda!280893 () Bool)

(assert (=> (not b_lambda!280893) (not d!2264925)))

(declare-fun bs!1912134 () Bool)

(assert (= bs!1912134 d!2264925))

(assert (=> bs!1912134 m!7962298))

(assert (=> bs!1912134 m!7962566))

(assert (=> d!2264643 d!2264925))

(declare-fun d!2264927 () Bool)

(assert (=> d!2264927 (= ($colon$colon!2987 (exprs!8281 lt!2596945) (ite (or c!1354817 c!1354816) (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (h!77322 (exprs!8281 ct1!250)))) (Cons!70874 (ite (or c!1354817 c!1354816) (regTwo!38194 (h!77322 (exprs!8281 ct1!250))) (h!77322 (exprs!8281 ct1!250))) (exprs!8281 lt!2596945)))))

(assert (=> bm!663816 d!2264927))

(declare-fun d!2264929 () Bool)

(assert (=> d!2264929 true))

(declare-fun setRes!53663 () Bool)

(assert (=> d!2264929 setRes!53663))

(declare-fun condSetEmpty!53663 () Bool)

(declare-fun res!2949287 () (InoxSet Context!15562))

(assert (=> d!2264929 (= condSetEmpty!53663 (= res!2949287 ((as const (Array Context!15562 Bool)) false)))))

(assert (=> d!2264929 (= (choose!56489 lt!2596953 lambda!449781) res!2949287)))

(declare-fun setIsEmpty!53663 () Bool)

(assert (=> setIsEmpty!53663 setRes!53663))

(declare-fun tp!2042093 () Bool)

(declare-fun setElem!53663 () Context!15562)

(declare-fun e!4363220 () Bool)

(declare-fun setNonEmpty!53663 () Bool)

(assert (=> setNonEmpty!53663 (= setRes!53663 (and tp!2042093 (inv!90112 setElem!53663) e!4363220))))

(declare-fun setRest!53663 () (InoxSet Context!15562))

(assert (=> setNonEmpty!53663 (= res!2949287 ((_ map or) (store ((as const (Array Context!15562 Bool)) false) setElem!53663 true) setRest!53663))))

(declare-fun b!7276134 () Bool)

(declare-fun tp!2042092 () Bool)

(assert (=> b!7276134 (= e!4363220 tp!2042092)))

(assert (= (and d!2264929 condSetEmpty!53663) setIsEmpty!53663))

(assert (= (and d!2264929 (not condSetEmpty!53663)) setNonEmpty!53663))

(assert (= setNonEmpty!53663 b!7276134))

(declare-fun m!7963106 () Bool)

(assert (=> setNonEmpty!53663 m!7963106))

(assert (=> d!2264639 d!2264929))

(assert (=> bs!1912055 d!2264609))

(declare-fun d!2264931 () Bool)

(declare-fun res!2949288 () Bool)

(declare-fun e!4363221 () Bool)

(assert (=> d!2264931 (=> res!2949288 e!4363221)))

(assert (=> d!2264931 (= res!2949288 ((_ is Nil!70874) (exprs!8281 ct1!250)))))

(assert (=> d!2264931 (= (forall!17666 (exprs!8281 ct1!250) lambda!449801) e!4363221)))

(declare-fun b!7276135 () Bool)

(declare-fun e!4363222 () Bool)

(assert (=> b!7276135 (= e!4363221 e!4363222)))

(declare-fun res!2949289 () Bool)

(assert (=> b!7276135 (=> (not res!2949289) (not e!4363222))))

(assert (=> b!7276135 (= res!2949289 (dynLambda!28983 lambda!449801 (h!77322 (exprs!8281 ct1!250))))))

(declare-fun b!7276136 () Bool)

(assert (=> b!7276136 (= e!4363222 (forall!17666 (t!385070 (exprs!8281 ct1!250)) lambda!449801))))

(assert (= (and d!2264931 (not res!2949288)) b!7276135))

(assert (= (and b!7276135 res!2949289) b!7276136))

(declare-fun b_lambda!280895 () Bool)

(assert (=> (not b_lambda!280895) (not b!7276135)))

(declare-fun m!7963108 () Bool)

(assert (=> b!7276135 m!7963108))

(declare-fun m!7963110 () Bool)

(assert (=> b!7276136 m!7963110))

(assert (=> d!2264621 d!2264931))

(declare-fun b!7276149 () Bool)

(declare-fun e!4363225 () Bool)

(declare-fun tp!2042107 () Bool)

(assert (=> b!7276149 (= e!4363225 tp!2042107)))

(declare-fun b!7276150 () Bool)

(declare-fun tp!2042106 () Bool)

(declare-fun tp!2042104 () Bool)

(assert (=> b!7276150 (= e!4363225 (and tp!2042106 tp!2042104))))

(declare-fun b!7276147 () Bool)

(assert (=> b!7276147 (= e!4363225 tp_is_empty!47147)))

(declare-fun b!7276148 () Bool)

(declare-fun tp!2042108 () Bool)

(declare-fun tp!2042105 () Bool)

(assert (=> b!7276148 (= e!4363225 (and tp!2042108 tp!2042105))))

(assert (=> b!7275710 (= tp!2042044 e!4363225)))

(assert (= (and b!7275710 ((_ is ElementMatch!18841) (h!77322 (exprs!8281 ct1!250)))) b!7276147))

(assert (= (and b!7275710 ((_ is Concat!27686) (h!77322 (exprs!8281 ct1!250)))) b!7276148))

(assert (= (and b!7275710 ((_ is Star!18841) (h!77322 (exprs!8281 ct1!250)))) b!7276149))

(assert (= (and b!7275710 ((_ is Union!18841) (h!77322 (exprs!8281 ct1!250)))) b!7276150))

(declare-fun b!7276151 () Bool)

(declare-fun e!4363226 () Bool)

(declare-fun tp!2042109 () Bool)

(declare-fun tp!2042110 () Bool)

(assert (=> b!7276151 (= e!4363226 (and tp!2042109 tp!2042110))))

(assert (=> b!7275710 (= tp!2042045 e!4363226)))

(assert (= (and b!7275710 ((_ is Cons!70874) (t!385070 (exprs!8281 ct1!250)))) b!7276151))

(declare-fun b!7276152 () Bool)

(declare-fun e!4363227 () Bool)

(declare-fun tp!2042111 () Bool)

(assert (=> b!7276152 (= e!4363227 (and tp_is_empty!47147 tp!2042111))))

(assert (=> b!7275715 (= tp!2042048 e!4363227)))

(assert (= (and b!7275715 ((_ is Cons!70873) (t!385069 (t!385069 s!7854)))) b!7276152))

(declare-fun b!7276155 () Bool)

(declare-fun e!4363228 () Bool)

(declare-fun tp!2042115 () Bool)

(assert (=> b!7276155 (= e!4363228 tp!2042115)))

(declare-fun b!7276156 () Bool)

(declare-fun tp!2042114 () Bool)

(declare-fun tp!2042112 () Bool)

(assert (=> b!7276156 (= e!4363228 (and tp!2042114 tp!2042112))))

(declare-fun b!7276153 () Bool)

(assert (=> b!7276153 (= e!4363228 tp_is_empty!47147)))

(declare-fun b!7276154 () Bool)

(declare-fun tp!2042116 () Bool)

(declare-fun tp!2042113 () Bool)

(assert (=> b!7276154 (= e!4363228 (and tp!2042116 tp!2042113))))

(assert (=> b!7275709 (= tp!2042042 e!4363228)))

(assert (= (and b!7275709 ((_ is ElementMatch!18841) (h!77322 (exprs!8281 ct2!346)))) b!7276153))

(assert (= (and b!7275709 ((_ is Concat!27686) (h!77322 (exprs!8281 ct2!346)))) b!7276154))

(assert (= (and b!7275709 ((_ is Star!18841) (h!77322 (exprs!8281 ct2!346)))) b!7276155))

(assert (= (and b!7275709 ((_ is Union!18841) (h!77322 (exprs!8281 ct2!346)))) b!7276156))

(declare-fun b!7276157 () Bool)

(declare-fun e!4363229 () Bool)

(declare-fun tp!2042117 () Bool)

(declare-fun tp!2042118 () Bool)

(assert (=> b!7276157 (= e!4363229 (and tp!2042117 tp!2042118))))

(assert (=> b!7275709 (= tp!2042043 e!4363229)))

(assert (= (and b!7275709 ((_ is Cons!70874) (t!385070 (exprs!8281 ct2!346)))) b!7276157))

(declare-fun b_lambda!280897 () Bool)

(assert (= b_lambda!280893 (or b!7275486 b_lambda!280897)))

(assert (=> d!2264925 d!2264651))

(declare-fun b_lambda!280899 () Bool)

(assert (= b_lambda!280891 (or d!2264539 b_lambda!280899)))

(declare-fun bs!1912135 () Bool)

(declare-fun d!2264933 () Bool)

(assert (= bs!1912135 (and d!2264933 d!2264539)))

(assert (=> bs!1912135 (= (dynLambda!28983 lambda!449784 (h!77322 (exprs!8281 ct1!250))) (nullable!8024 (h!77322 (exprs!8281 ct1!250))))))

(assert (=> bs!1912135 m!7962266))

(assert (=> b!7276116 d!2264933))

(declare-fun b_lambda!280901 () Bool)

(assert (= b_lambda!280889 (or b!7275486 b_lambda!280901)))

(declare-fun bs!1912136 () Bool)

(declare-fun d!2264935 () Bool)

(assert (= bs!1912136 (and d!2264935 b!7275486)))

(declare-fun validRegex!9600 (Regex!18841) Bool)

(assert (=> bs!1912136 (= (dynLambda!28983 lambda!449780 (h!77322 (exprs!8281 ct1!250))) (validRegex!9600 (h!77322 (exprs!8281 ct1!250))))))

(declare-fun m!7963112 () Bool)

(assert (=> bs!1912136 m!7963112))

(assert (=> b!7276108 d!2264935))

(declare-fun b_lambda!280903 () Bool)

(assert (= b_lambda!280881 (or b!7275486 b_lambda!280903)))

(declare-fun bs!1912137 () Bool)

(declare-fun d!2264937 () Bool)

(assert (= bs!1912137 (and d!2264937 b!7275486)))

(assert (=> bs!1912137 (= (dynLambda!28983 lambda!449780 (h!77322 (++!16735 lt!2596951 (exprs!8281 ct2!346)))) (validRegex!9600 (h!77322 (++!16735 lt!2596951 (exprs!8281 ct2!346)))))))

(declare-fun m!7963114 () Bool)

(assert (=> bs!1912137 m!7963114))

(assert (=> b!7276080 d!2264937))

(declare-fun b_lambda!280905 () Bool)

(assert (= b_lambda!280879 (or b!7275486 b_lambda!280905)))

(assert (=> d!2264843 d!2264653))

(declare-fun b_lambda!280907 () Bool)

(assert (= b_lambda!280887 (or b!7275486 b_lambda!280907)))

(declare-fun bs!1912138 () Bool)

(declare-fun d!2264939 () Bool)

(assert (= bs!1912138 (and d!2264939 b!7275486)))

(assert (=> bs!1912138 (= (dynLambda!28983 lambda!449780 (h!77322 (++!16735 (exprs!8281 ct1!250) (exprs!8281 ct2!346)))) (validRegex!9600 (h!77322 (++!16735 (exprs!8281 ct1!250) (exprs!8281 ct2!346)))))))

(declare-fun m!7963116 () Bool)

(assert (=> bs!1912138 m!7963116))

(assert (=> b!7276106 d!2264939))

(declare-fun b_lambda!280909 () Bool)

(assert (= b_lambda!280885 (or b!7275486 b_lambda!280909)))

(assert (=> d!2264893 d!2264649))

(declare-fun b_lambda!280911 () Bool)

(assert (= b_lambda!280883 (or b!7275486 b_lambda!280911)))

(declare-fun bs!1912139 () Bool)

(declare-fun d!2264941 () Bool)

(assert (= bs!1912139 (and d!2264941 b!7275486)))

(assert (=> bs!1912139 (= (dynLambda!28983 lambda!449780 (h!77322 lt!2596951)) (validRegex!9600 (h!77322 lt!2596951)))))

(declare-fun m!7963118 () Bool)

(assert (=> bs!1912139 m!7963118))

(assert (=> b!7276082 d!2264941))

(declare-fun b_lambda!280913 () Bool)

(assert (= b_lambda!280849 (or d!2264619 b_lambda!280913)))

(declare-fun bs!1912140 () Bool)

(declare-fun d!2264943 () Bool)

(assert (= bs!1912140 (and d!2264943 d!2264619)))

(assert (=> bs!1912140 (= (dynLambda!28983 lambda!449800 (h!77322 (exprs!8281 ct2!346))) (validRegex!9600 (h!77322 (exprs!8281 ct2!346))))))

(declare-fun m!7963120 () Bool)

(assert (=> bs!1912140 m!7963120))

(assert (=> b!7275906 d!2264943))

(declare-fun b_lambda!280915 () Bool)

(assert (= b_lambda!280895 (or d!2264621 b_lambda!280915)))

(declare-fun bs!1912141 () Bool)

(declare-fun d!2264945 () Bool)

(assert (= bs!1912141 (and d!2264945 d!2264621)))

(assert (=> bs!1912141 (= (dynLambda!28983 lambda!449801 (h!77322 (exprs!8281 ct1!250))) (validRegex!9600 (h!77322 (exprs!8281 ct1!250))))))

(assert (=> bs!1912141 m!7963112))

(assert (=> b!7276135 d!2264945))

(check-sat (not b!7276050) (not b!7276152) (not b!7276131) (not b_lambda!280835) (not bm!663925) (not d!2264921) (not bm!663826) (not bm!663926) (not b!7276156) (not b!7275919) (not bs!1912140) (not b!7276074) (not d!2264909) (not b!7276083) (not b_lambda!280897) (not b!7276128) (not d!2264867) (not bm!663872) (not b!7276154) (not d!2264771) (not bm!663871) (not b_lambda!280899) (not bm!663877) (not b!7276035) (not b!7276072) (not b!7276104) (not b!7276119) (not b!7275806) (not b!7276148) (not bs!1912141) (not b!7276105) (not b!7276015) (not b!7276114) (not b_lambda!280907) (not bm!663825) (not b!7276037) (not bm!663839) (not bm!663837) (not d!2264897) (not d!2264893) (not setNonEmpty!53662) (not bm!663827) (not bm!663936) (not b!7275907) (not b!7276132) tp_is_empty!47147 (not bm!663913) (not b!7276101) (not b_lambda!280915) (not b!7276107) (not d!2264827) (not b!7276157) (not b!7276112) (not b!7276136) (not setNonEmpty!53659) (not b!7276115) (not b_lambda!280833) (not bs!1912135) (not d!2264925) (not bs!1912139) (not b_lambda!280905) (not bm!663918) (not bm!663845) (not d!2264813) (not b!7276077) (not b!7276081) (not bs!1912136) (not b!7276134) (not bm!663933) (not bm!663846) (not bm!663876) (not bm!663924) (not bm!663935) (not bm!663934) (not d!2264859) (not bm!663931) (not bm!663919) (not bm!663932) (not b!7276111) (not d!2264905) (not d!2264767) (not b!7276122) (not b!7276155) (not d!2264885) (not d!2264843) (not b!7276014) (not b!7276151) (not d!2264903) (not b!7275762) (not d!2264831) (not b!7276011) (not b!7276149) (not bm!663838) (not bm!663927) (not bm!663914) (not b_lambda!280903) (not b!7276078) (not b!7276117) (not b!7276109) (not b!7276058) (not b_lambda!280909) (not d!2264923) (not d!2264911) (not b!7276060) (not b!7276026) (not b!7276098) (not b!7276123) (not b!7276150) (not b!7276102) (not b_lambda!280831) (not b!7275750) (not bs!1912137) (not d!2264871) (not b!7275788) (not b!7276047) (not d!2264695) (not d!2264877) (not d!2264825) (not d!2264823) (not b!7276062) (not b_lambda!280901) (not bm!663878) (not b!7276093) (not bm!663844) (not setNonEmpty!53663) (not b!7276012) (not b_lambda!280913) (not bs!1912138) (not b!7276096) (not bm!663912) (not bm!663920) (not b_lambda!280911) (not b!7276052) (not d!2264901) (not b!7276118) (not b!7276033) (not d!2264887) (not b!7276127))
(check-sat)

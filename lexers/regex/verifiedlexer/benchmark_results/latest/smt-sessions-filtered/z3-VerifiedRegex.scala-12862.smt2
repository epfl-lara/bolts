; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!710258 () Bool)

(assert start!710258)

(declare-fun b!7274339 () Bool)

(assert (=> b!7274339 true))

(declare-fun b!7274334 () Bool)

(declare-fun e!4362192 () Bool)

(declare-fun tp!2041798 () Bool)

(assert (=> b!7274334 (= e!4362192 tp!2041798)))

(declare-fun b!7274335 () Bool)

(declare-fun res!2948773 () Bool)

(declare-fun e!4362193 () Bool)

(assert (=> b!7274335 (=> (not res!2948773) (not e!4362193))))

(declare-datatypes ((C!37940 0))(
  ( (C!37941 (val!28918 Int)) )
))
(declare-datatypes ((Regex!18833 0))(
  ( (ElementMatch!18833 (c!1354397 C!37940)) (Concat!27678 (regOne!38178 Regex!18833) (regTwo!38178 Regex!18833)) (EmptyExpr!18833) (Star!18833 (reg!19162 Regex!18833)) (EmptyLang!18833) (Union!18833 (regOne!38179 Regex!18833) (regTwo!38179 Regex!18833)) )
))
(declare-datatypes ((List!70981 0))(
  ( (Nil!70857) (Cons!70857 (h!77305 Regex!18833) (t!385053 List!70981)) )
))
(declare-datatypes ((Context!15546 0))(
  ( (Context!15547 (exprs!8273 List!70981)) )
))
(declare-fun ct1!250 () Context!15546)

(declare-fun nullableContext!323 (Context!15546) Bool)

(assert (=> b!7274335 (= res!2948773 (nullableContext!323 ct1!250))))

(declare-fun b!7274336 () Bool)

(declare-fun e!4362195 () Bool)

(declare-fun tp!2041799 () Bool)

(assert (=> b!7274336 (= e!4362195 tp!2041799)))

(declare-fun res!2948774 () Bool)

(assert (=> start!710258 (=> (not res!2948774) (not e!4362193))))

(declare-fun ct2!346 () Context!15546)

(declare-datatypes ((List!70982 0))(
  ( (Nil!70858) (Cons!70858 (h!77306 C!37940) (t!385054 List!70982)) )
))
(declare-fun s!7854 () List!70982)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!3737 ((InoxSet Context!15546) List!70982) Bool)

(assert (=> start!710258 (= res!2948774 (matchZipper!3737 (store ((as const (Array Context!15546 Bool)) false) ct2!346 true) s!7854))))

(assert (=> start!710258 e!4362193))

(declare-fun inv!90092 (Context!15546) Bool)

(assert (=> start!710258 (and (inv!90092 ct2!346) e!4362195)))

(declare-fun e!4362194 () Bool)

(assert (=> start!710258 e!4362194))

(assert (=> start!710258 (and (inv!90092 ct1!250) e!4362192)))

(declare-fun b!7274337 () Bool)

(declare-fun res!2948775 () Bool)

(assert (=> b!7274337 (=> (not res!2948775) (not e!4362193))))

(get-info :version)

(assert (=> b!7274337 (= res!2948775 ((_ is Cons!70858) s!7854))))

(declare-fun b!7274338 () Bool)

(declare-fun tp_is_empty!47131 () Bool)

(declare-fun tp!2041800 () Bool)

(assert (=> b!7274338 (= e!4362194 (and tp_is_empty!47131 tp!2041800))))

(declare-fun lt!2596474 () (InoxSet Context!15546))

(declare-fun lt!2596471 () Context!15546)

(declare-fun derivationStepZipperUp!2589 (Context!15546 C!37940) (InoxSet Context!15546))

(declare-fun derivationStepZipper!3569 ((InoxSet Context!15546) C!37940) (InoxSet Context!15546))

(assert (=> b!7274339 (= e!4362193 (not (= (derivationStepZipperUp!2589 lt!2596471 (h!77306 s!7854)) (derivationStepZipper!3569 lt!2596474 (h!77306 s!7854)))))))

(declare-fun lambda!449540 () Int)

(declare-datatypes ((Unit!164272 0))(
  ( (Unit!164273) )
))
(declare-fun lt!2596472 () Unit!164272)

(declare-fun lemmaConcatPreservesForall!1584 (List!70981 List!70981 Int) Unit!164272)

(assert (=> b!7274339 (= lt!2596472 (lemmaConcatPreservesForall!1584 (exprs!8273 ct1!250) (exprs!8273 ct2!346) lambda!449540))))

(declare-fun lambda!449541 () Int)

(declare-fun flatMap!2932 ((InoxSet Context!15546) Int) (InoxSet Context!15546))

(assert (=> b!7274339 (= (flatMap!2932 lt!2596474 lambda!449541) (derivationStepZipperUp!2589 lt!2596471 (h!77306 s!7854)))))

(declare-fun lt!2596473 () Unit!164272)

(declare-fun lemmaFlatMapOnSingletonSet!2332 ((InoxSet Context!15546) Context!15546 Int) Unit!164272)

(assert (=> b!7274339 (= lt!2596473 (lemmaFlatMapOnSingletonSet!2332 lt!2596474 lt!2596471 lambda!449541))))

(assert (=> b!7274339 (= lt!2596474 (store ((as const (Array Context!15546 Bool)) false) lt!2596471 true))))

(declare-fun lt!2596475 () Unit!164272)

(assert (=> b!7274339 (= lt!2596475 (lemmaConcatPreservesForall!1584 (exprs!8273 ct1!250) (exprs!8273 ct2!346) lambda!449540))))

(declare-fun lt!2596468 () Unit!164272)

(assert (=> b!7274339 (= lt!2596468 (lemmaConcatPreservesForall!1584 (exprs!8273 ct1!250) (exprs!8273 ct2!346) lambda!449540))))

(declare-fun lt!2596467 () (InoxSet Context!15546))

(assert (=> b!7274339 (= (flatMap!2932 lt!2596467 lambda!449541) (derivationStepZipperUp!2589 ct1!250 (h!77306 s!7854)))))

(declare-fun lt!2596470 () Unit!164272)

(assert (=> b!7274339 (= lt!2596470 (lemmaFlatMapOnSingletonSet!2332 lt!2596467 ct1!250 lambda!449541))))

(assert (=> b!7274339 (= lt!2596467 (store ((as const (Array Context!15546 Bool)) false) ct1!250 true))))

(declare-fun ++!16727 (List!70981 List!70981) List!70981)

(assert (=> b!7274339 (= lt!2596471 (Context!15547 (++!16727 (exprs!8273 ct1!250) (exprs!8273 ct2!346))))))

(declare-fun lt!2596469 () Unit!164272)

(assert (=> b!7274339 (= lt!2596469 (lemmaConcatPreservesForall!1584 (exprs!8273 ct1!250) (exprs!8273 ct2!346) lambda!449540))))

(assert (= (and start!710258 res!2948774) b!7274335))

(assert (= (and b!7274335 res!2948773) b!7274337))

(assert (= (and b!7274337 res!2948775) b!7274339))

(assert (= start!710258 b!7274336))

(assert (= (and start!710258 ((_ is Cons!70858) s!7854)) b!7274338))

(assert (= start!710258 b!7274334))

(declare-fun m!7961034 () Bool)

(assert (=> b!7274335 m!7961034))

(declare-fun m!7961036 () Bool)

(assert (=> start!710258 m!7961036))

(assert (=> start!710258 m!7961036))

(declare-fun m!7961038 () Bool)

(assert (=> start!710258 m!7961038))

(declare-fun m!7961040 () Bool)

(assert (=> start!710258 m!7961040))

(declare-fun m!7961042 () Bool)

(assert (=> start!710258 m!7961042))

(declare-fun m!7961044 () Bool)

(assert (=> b!7274339 m!7961044))

(declare-fun m!7961046 () Bool)

(assert (=> b!7274339 m!7961046))

(declare-fun m!7961048 () Bool)

(assert (=> b!7274339 m!7961048))

(declare-fun m!7961050 () Bool)

(assert (=> b!7274339 m!7961050))

(declare-fun m!7961052 () Bool)

(assert (=> b!7274339 m!7961052))

(assert (=> b!7274339 m!7961050))

(declare-fun m!7961054 () Bool)

(assert (=> b!7274339 m!7961054))

(assert (=> b!7274339 m!7961050))

(declare-fun m!7961056 () Bool)

(assert (=> b!7274339 m!7961056))

(declare-fun m!7961058 () Bool)

(assert (=> b!7274339 m!7961058))

(assert (=> b!7274339 m!7961050))

(declare-fun m!7961060 () Bool)

(assert (=> b!7274339 m!7961060))

(declare-fun m!7961062 () Bool)

(assert (=> b!7274339 m!7961062))

(declare-fun m!7961064 () Bool)

(assert (=> b!7274339 m!7961064))

(check-sat (not b!7274335) (not b!7274336) (not b!7274334) (not start!710258) (not b!7274339) (not b!7274338) tp_is_empty!47131)
(check-sat)
(get-model)

(declare-fun bs!1911814 () Bool)

(declare-fun d!2264087 () Bool)

(assert (= bs!1911814 (and d!2264087 b!7274339)))

(declare-fun lambda!449544 () Int)

(assert (=> bs!1911814 (not (= lambda!449544 lambda!449540))))

(declare-fun forall!17657 (List!70981 Int) Bool)

(assert (=> d!2264087 (= (nullableContext!323 ct1!250) (forall!17657 (exprs!8273 ct1!250) lambda!449544))))

(declare-fun bs!1911815 () Bool)

(assert (= bs!1911815 d!2264087))

(declare-fun m!7961066 () Bool)

(assert (=> bs!1911815 m!7961066))

(assert (=> b!7274335 d!2264087))

(declare-fun d!2264089 () Bool)

(declare-fun c!1354401 () Bool)

(declare-fun isEmpty!40750 (List!70982) Bool)

(assert (=> d!2264089 (= c!1354401 (isEmpty!40750 s!7854))))

(declare-fun e!4362198 () Bool)

(assert (=> d!2264089 (= (matchZipper!3737 (store ((as const (Array Context!15546 Bool)) false) ct2!346 true) s!7854) e!4362198)))

(declare-fun b!7274346 () Bool)

(declare-fun nullableZipper!3032 ((InoxSet Context!15546)) Bool)

(assert (=> b!7274346 (= e!4362198 (nullableZipper!3032 (store ((as const (Array Context!15546 Bool)) false) ct2!346 true)))))

(declare-fun b!7274347 () Bool)

(declare-fun head!15030 (List!70982) C!37940)

(declare-fun tail!14537 (List!70982) List!70982)

(assert (=> b!7274347 (= e!4362198 (matchZipper!3737 (derivationStepZipper!3569 (store ((as const (Array Context!15546 Bool)) false) ct2!346 true) (head!15030 s!7854)) (tail!14537 s!7854)))))

(assert (= (and d!2264089 c!1354401) b!7274346))

(assert (= (and d!2264089 (not c!1354401)) b!7274347))

(declare-fun m!7961068 () Bool)

(assert (=> d!2264089 m!7961068))

(assert (=> b!7274346 m!7961036))

(declare-fun m!7961070 () Bool)

(assert (=> b!7274346 m!7961070))

(declare-fun m!7961072 () Bool)

(assert (=> b!7274347 m!7961072))

(assert (=> b!7274347 m!7961036))

(assert (=> b!7274347 m!7961072))

(declare-fun m!7961074 () Bool)

(assert (=> b!7274347 m!7961074))

(declare-fun m!7961076 () Bool)

(assert (=> b!7274347 m!7961076))

(assert (=> b!7274347 m!7961074))

(assert (=> b!7274347 m!7961076))

(declare-fun m!7961078 () Bool)

(assert (=> b!7274347 m!7961078))

(assert (=> start!710258 d!2264089))

(declare-fun bs!1911816 () Bool)

(declare-fun d!2264091 () Bool)

(assert (= bs!1911816 (and d!2264091 b!7274339)))

(declare-fun lambda!449547 () Int)

(assert (=> bs!1911816 (= lambda!449547 lambda!449540)))

(declare-fun bs!1911817 () Bool)

(assert (= bs!1911817 (and d!2264091 d!2264087)))

(assert (=> bs!1911817 (not (= lambda!449547 lambda!449544))))

(assert (=> d!2264091 (= (inv!90092 ct2!346) (forall!17657 (exprs!8273 ct2!346) lambda!449547))))

(declare-fun bs!1911818 () Bool)

(assert (= bs!1911818 d!2264091))

(declare-fun m!7961080 () Bool)

(assert (=> bs!1911818 m!7961080))

(assert (=> start!710258 d!2264091))

(declare-fun bs!1911819 () Bool)

(declare-fun d!2264095 () Bool)

(assert (= bs!1911819 (and d!2264095 b!7274339)))

(declare-fun lambda!449548 () Int)

(assert (=> bs!1911819 (= lambda!449548 lambda!449540)))

(declare-fun bs!1911820 () Bool)

(assert (= bs!1911820 (and d!2264095 d!2264087)))

(assert (=> bs!1911820 (not (= lambda!449548 lambda!449544))))

(declare-fun bs!1911821 () Bool)

(assert (= bs!1911821 (and d!2264095 d!2264091)))

(assert (=> bs!1911821 (= lambda!449548 lambda!449547)))

(assert (=> d!2264095 (= (inv!90092 ct1!250) (forall!17657 (exprs!8273 ct1!250) lambda!449548))))

(declare-fun bs!1911822 () Bool)

(assert (= bs!1911822 d!2264095))

(declare-fun m!7961082 () Bool)

(assert (=> bs!1911822 m!7961082))

(assert (=> start!710258 d!2264095))

(declare-fun d!2264097 () Bool)

(declare-fun dynLambda!28971 (Int Context!15546) (InoxSet Context!15546))

(assert (=> d!2264097 (= (flatMap!2932 lt!2596474 lambda!449541) (dynLambda!28971 lambda!449541 lt!2596471))))

(declare-fun lt!2596478 () Unit!164272)

(declare-fun choose!56463 ((InoxSet Context!15546) Context!15546 Int) Unit!164272)

(assert (=> d!2264097 (= lt!2596478 (choose!56463 lt!2596474 lt!2596471 lambda!449541))))

(assert (=> d!2264097 (= lt!2596474 (store ((as const (Array Context!15546 Bool)) false) lt!2596471 true))))

(assert (=> d!2264097 (= (lemmaFlatMapOnSingletonSet!2332 lt!2596474 lt!2596471 lambda!449541) lt!2596478)))

(declare-fun b_lambda!280693 () Bool)

(assert (=> (not b_lambda!280693) (not d!2264097)))

(declare-fun bs!1911826 () Bool)

(assert (= bs!1911826 d!2264097))

(assert (=> bs!1911826 m!7961054))

(declare-fun m!7961088 () Bool)

(assert (=> bs!1911826 m!7961088))

(declare-fun m!7961090 () Bool)

(assert (=> bs!1911826 m!7961090))

(assert (=> bs!1911826 m!7961058))

(assert (=> b!7274339 d!2264097))

(declare-fun b!7274360 () Bool)

(declare-fun e!4362206 () (InoxSet Context!15546))

(declare-fun e!4362205 () (InoxSet Context!15546))

(assert (=> b!7274360 (= e!4362206 e!4362205)))

(declare-fun c!1354408 () Bool)

(assert (=> b!7274360 (= c!1354408 ((_ is Cons!70857) (exprs!8273 ct1!250)))))

(declare-fun b!7274361 () Bool)

(declare-fun call!663582 () (InoxSet Context!15546))

(assert (=> b!7274361 (= e!4362206 ((_ map or) call!663582 (derivationStepZipperUp!2589 (Context!15547 (t!385053 (exprs!8273 ct1!250))) (h!77306 s!7854))))))

(declare-fun b!7274362 () Bool)

(assert (=> b!7274362 (= e!4362205 ((as const (Array Context!15546 Bool)) false))))

(declare-fun bm!663577 () Bool)

(declare-fun derivationStepZipperDown!2746 (Regex!18833 Context!15546 C!37940) (InoxSet Context!15546))

(assert (=> bm!663577 (= call!663582 (derivationStepZipperDown!2746 (h!77305 (exprs!8273 ct1!250)) (Context!15547 (t!385053 (exprs!8273 ct1!250))) (h!77306 s!7854)))))

(declare-fun d!2264103 () Bool)

(declare-fun c!1354409 () Bool)

(declare-fun e!4362207 () Bool)

(assert (=> d!2264103 (= c!1354409 e!4362207)))

(declare-fun res!2948778 () Bool)

(assert (=> d!2264103 (=> (not res!2948778) (not e!4362207))))

(assert (=> d!2264103 (= res!2948778 ((_ is Cons!70857) (exprs!8273 ct1!250)))))

(assert (=> d!2264103 (= (derivationStepZipperUp!2589 ct1!250 (h!77306 s!7854)) e!4362206)))

(declare-fun b!7274363 () Bool)

(assert (=> b!7274363 (= e!4362205 call!663582)))

(declare-fun b!7274364 () Bool)

(declare-fun nullable!8015 (Regex!18833) Bool)

(assert (=> b!7274364 (= e!4362207 (nullable!8015 (h!77305 (exprs!8273 ct1!250))))))

(assert (= (and d!2264103 res!2948778) b!7274364))

(assert (= (and d!2264103 c!1354409) b!7274361))

(assert (= (and d!2264103 (not c!1354409)) b!7274360))

(assert (= (and b!7274360 c!1354408) b!7274363))

(assert (= (and b!7274360 (not c!1354408)) b!7274362))

(assert (= (or b!7274361 b!7274363) bm!663577))

(declare-fun m!7961106 () Bool)

(assert (=> b!7274361 m!7961106))

(declare-fun m!7961108 () Bool)

(assert (=> bm!663577 m!7961108))

(declare-fun m!7961110 () Bool)

(assert (=> b!7274364 m!7961110))

(assert (=> b!7274339 d!2264103))

(declare-fun d!2264111 () Bool)

(declare-fun choose!56464 ((InoxSet Context!15546) Int) (InoxSet Context!15546))

(assert (=> d!2264111 (= (flatMap!2932 lt!2596467 lambda!449541) (choose!56464 lt!2596467 lambda!449541))))

(declare-fun bs!1911830 () Bool)

(assert (= bs!1911830 d!2264111))

(declare-fun m!7961112 () Bool)

(assert (=> bs!1911830 m!7961112))

(assert (=> b!7274339 d!2264111))

(declare-fun d!2264113 () Bool)

(declare-fun e!4362219 () Bool)

(assert (=> d!2264113 e!4362219))

(declare-fun res!2948789 () Bool)

(assert (=> d!2264113 (=> (not res!2948789) (not e!4362219))))

(declare-fun lt!2596491 () List!70981)

(declare-fun content!14792 (List!70981) (InoxSet Regex!18833))

(assert (=> d!2264113 (= res!2948789 (= (content!14792 lt!2596491) ((_ map or) (content!14792 (exprs!8273 ct1!250)) (content!14792 (exprs!8273 ct2!346)))))))

(declare-fun e!4362218 () List!70981)

(assert (=> d!2264113 (= lt!2596491 e!4362218)))

(declare-fun c!1354415 () Bool)

(assert (=> d!2264113 (= c!1354415 ((_ is Nil!70857) (exprs!8273 ct1!250)))))

(assert (=> d!2264113 (= (++!16727 (exprs!8273 ct1!250) (exprs!8273 ct2!346)) lt!2596491)))

(declare-fun b!7274388 () Bool)

(assert (=> b!7274388 (= e!4362219 (or (not (= (exprs!8273 ct2!346) Nil!70857)) (= lt!2596491 (exprs!8273 ct1!250))))))

(declare-fun b!7274385 () Bool)

(assert (=> b!7274385 (= e!4362218 (exprs!8273 ct2!346))))

(declare-fun b!7274386 () Bool)

(assert (=> b!7274386 (= e!4362218 (Cons!70857 (h!77305 (exprs!8273 ct1!250)) (++!16727 (t!385053 (exprs!8273 ct1!250)) (exprs!8273 ct2!346))))))

(declare-fun b!7274387 () Bool)

(declare-fun res!2948790 () Bool)

(assert (=> b!7274387 (=> (not res!2948790) (not e!4362219))))

(declare-fun size!41839 (List!70981) Int)

(assert (=> b!7274387 (= res!2948790 (= (size!41839 lt!2596491) (+ (size!41839 (exprs!8273 ct1!250)) (size!41839 (exprs!8273 ct2!346)))))))

(assert (= (and d!2264113 c!1354415) b!7274385))

(assert (= (and d!2264113 (not c!1354415)) b!7274386))

(assert (= (and d!2264113 res!2948789) b!7274387))

(assert (= (and b!7274387 res!2948790) b!7274388))

(declare-fun m!7961130 () Bool)

(assert (=> d!2264113 m!7961130))

(declare-fun m!7961132 () Bool)

(assert (=> d!2264113 m!7961132))

(declare-fun m!7961134 () Bool)

(assert (=> d!2264113 m!7961134))

(declare-fun m!7961136 () Bool)

(assert (=> b!7274386 m!7961136))

(declare-fun m!7961138 () Bool)

(assert (=> b!7274387 m!7961138))

(declare-fun m!7961140 () Bool)

(assert (=> b!7274387 m!7961140))

(declare-fun m!7961142 () Bool)

(assert (=> b!7274387 m!7961142))

(assert (=> b!7274339 d!2264113))

(declare-fun d!2264119 () Bool)

(assert (=> d!2264119 (= (flatMap!2932 lt!2596467 lambda!449541) (dynLambda!28971 lambda!449541 ct1!250))))

(declare-fun lt!2596492 () Unit!164272)

(assert (=> d!2264119 (= lt!2596492 (choose!56463 lt!2596467 ct1!250 lambda!449541))))

(assert (=> d!2264119 (= lt!2596467 (store ((as const (Array Context!15546 Bool)) false) ct1!250 true))))

(assert (=> d!2264119 (= (lemmaFlatMapOnSingletonSet!2332 lt!2596467 ct1!250 lambda!449541) lt!2596492)))

(declare-fun b_lambda!280699 () Bool)

(assert (=> (not b_lambda!280699) (not d!2264119)))

(declare-fun bs!1911832 () Bool)

(assert (= bs!1911832 d!2264119))

(assert (=> bs!1911832 m!7961048))

(declare-fun m!7961144 () Bool)

(assert (=> bs!1911832 m!7961144))

(declare-fun m!7961146 () Bool)

(assert (=> bs!1911832 m!7961146))

(assert (=> bs!1911832 m!7961064))

(assert (=> b!7274339 d!2264119))

(declare-fun d!2264121 () Bool)

(assert (=> d!2264121 (= (flatMap!2932 lt!2596474 lambda!449541) (choose!56464 lt!2596474 lambda!449541))))

(declare-fun bs!1911833 () Bool)

(assert (= bs!1911833 d!2264121))

(declare-fun m!7961148 () Bool)

(assert (=> bs!1911833 m!7961148))

(assert (=> b!7274339 d!2264121))

(declare-fun bs!1911834 () Bool)

(declare-fun d!2264123 () Bool)

(assert (= bs!1911834 (and d!2264123 b!7274339)))

(declare-fun lambda!449554 () Int)

(assert (=> bs!1911834 (= lambda!449554 lambda!449541)))

(assert (=> d!2264123 true))

(assert (=> d!2264123 (= (derivationStepZipper!3569 lt!2596474 (h!77306 s!7854)) (flatMap!2932 lt!2596474 lambda!449554))))

(declare-fun bs!1911835 () Bool)

(assert (= bs!1911835 d!2264123))

(declare-fun m!7961150 () Bool)

(assert (=> bs!1911835 m!7961150))

(assert (=> b!7274339 d!2264123))

(declare-fun b!7274401 () Bool)

(declare-fun e!4362227 () (InoxSet Context!15546))

(declare-fun e!4362226 () (InoxSet Context!15546))

(assert (=> b!7274401 (= e!4362227 e!4362226)))

(declare-fun c!1354422 () Bool)

(assert (=> b!7274401 (= c!1354422 ((_ is Cons!70857) (exprs!8273 lt!2596471)))))

(declare-fun b!7274402 () Bool)

(declare-fun call!663585 () (InoxSet Context!15546))

(assert (=> b!7274402 (= e!4362227 ((_ map or) call!663585 (derivationStepZipperUp!2589 (Context!15547 (t!385053 (exprs!8273 lt!2596471))) (h!77306 s!7854))))))

(declare-fun b!7274403 () Bool)

(assert (=> b!7274403 (= e!4362226 ((as const (Array Context!15546 Bool)) false))))

(declare-fun bm!663580 () Bool)

(assert (=> bm!663580 (= call!663585 (derivationStepZipperDown!2746 (h!77305 (exprs!8273 lt!2596471)) (Context!15547 (t!385053 (exprs!8273 lt!2596471))) (h!77306 s!7854)))))

(declare-fun d!2264125 () Bool)

(declare-fun c!1354423 () Bool)

(declare-fun e!4362228 () Bool)

(assert (=> d!2264125 (= c!1354423 e!4362228)))

(declare-fun res!2948793 () Bool)

(assert (=> d!2264125 (=> (not res!2948793) (not e!4362228))))

(assert (=> d!2264125 (= res!2948793 ((_ is Cons!70857) (exprs!8273 lt!2596471)))))

(assert (=> d!2264125 (= (derivationStepZipperUp!2589 lt!2596471 (h!77306 s!7854)) e!4362227)))

(declare-fun b!7274404 () Bool)

(assert (=> b!7274404 (= e!4362226 call!663585)))

(declare-fun b!7274405 () Bool)

(assert (=> b!7274405 (= e!4362228 (nullable!8015 (h!77305 (exprs!8273 lt!2596471))))))

(assert (= (and d!2264125 res!2948793) b!7274405))

(assert (= (and d!2264125 c!1354423) b!7274402))

(assert (= (and d!2264125 (not c!1354423)) b!7274401))

(assert (= (and b!7274401 c!1354422) b!7274404))

(assert (= (and b!7274401 (not c!1354422)) b!7274403))

(assert (= (or b!7274402 b!7274404) bm!663580))

(declare-fun m!7961152 () Bool)

(assert (=> b!7274402 m!7961152))

(declare-fun m!7961154 () Bool)

(assert (=> bm!663580 m!7961154))

(declare-fun m!7961156 () Bool)

(assert (=> b!7274405 m!7961156))

(assert (=> b!7274339 d!2264125))

(declare-fun d!2264127 () Bool)

(assert (=> d!2264127 (forall!17657 (++!16727 (exprs!8273 ct1!250) (exprs!8273 ct2!346)) lambda!449540)))

(declare-fun lt!2596495 () Unit!164272)

(declare-fun choose!56465 (List!70981 List!70981 Int) Unit!164272)

(assert (=> d!2264127 (= lt!2596495 (choose!56465 (exprs!8273 ct1!250) (exprs!8273 ct2!346) lambda!449540))))

(assert (=> d!2264127 (forall!17657 (exprs!8273 ct1!250) lambda!449540)))

(assert (=> d!2264127 (= (lemmaConcatPreservesForall!1584 (exprs!8273 ct1!250) (exprs!8273 ct2!346) lambda!449540) lt!2596495)))

(declare-fun bs!1911837 () Bool)

(assert (= bs!1911837 d!2264127))

(assert (=> bs!1911837 m!7961056))

(assert (=> bs!1911837 m!7961056))

(declare-fun m!7961170 () Bool)

(assert (=> bs!1911837 m!7961170))

(declare-fun m!7961174 () Bool)

(assert (=> bs!1911837 m!7961174))

(declare-fun m!7961176 () Bool)

(assert (=> bs!1911837 m!7961176))

(assert (=> b!7274339 d!2264127))

(declare-fun b!7274420 () Bool)

(declare-fun e!4362237 () Bool)

(declare-fun tp!2041805 () Bool)

(declare-fun tp!2041806 () Bool)

(assert (=> b!7274420 (= e!4362237 (and tp!2041805 tp!2041806))))

(assert (=> b!7274336 (= tp!2041799 e!4362237)))

(assert (= (and b!7274336 ((_ is Cons!70857) (exprs!8273 ct2!346))) b!7274420))

(declare-fun b!7274421 () Bool)

(declare-fun e!4362238 () Bool)

(declare-fun tp!2041807 () Bool)

(declare-fun tp!2041808 () Bool)

(assert (=> b!7274421 (= e!4362238 (and tp!2041807 tp!2041808))))

(assert (=> b!7274334 (= tp!2041798 e!4362238)))

(assert (= (and b!7274334 ((_ is Cons!70857) (exprs!8273 ct1!250))) b!7274421))

(declare-fun b!7274426 () Bool)

(declare-fun e!4362241 () Bool)

(declare-fun tp!2041811 () Bool)

(assert (=> b!7274426 (= e!4362241 (and tp_is_empty!47131 tp!2041811))))

(assert (=> b!7274338 (= tp!2041800 e!4362241)))

(assert (= (and b!7274338 ((_ is Cons!70858) (t!385054 s!7854))) b!7274426))

(declare-fun b_lambda!280701 () Bool)

(assert (= b_lambda!280693 (or b!7274339 b_lambda!280701)))

(declare-fun bs!1911839 () Bool)

(declare-fun d!2264135 () Bool)

(assert (= bs!1911839 (and d!2264135 b!7274339)))

(assert (=> bs!1911839 (= (dynLambda!28971 lambda!449541 lt!2596471) (derivationStepZipperUp!2589 lt!2596471 (h!77306 s!7854)))))

(assert (=> bs!1911839 m!7961060))

(assert (=> d!2264097 d!2264135))

(declare-fun b_lambda!280703 () Bool)

(assert (= b_lambda!280699 (or b!7274339 b_lambda!280703)))

(declare-fun bs!1911840 () Bool)

(declare-fun d!2264137 () Bool)

(assert (= bs!1911840 (and d!2264137 b!7274339)))

(assert (=> bs!1911840 (= (dynLambda!28971 lambda!449541 ct1!250) (derivationStepZipperUp!2589 ct1!250 (h!77306 s!7854)))))

(assert (=> bs!1911840 m!7961052))

(assert (=> d!2264119 d!2264137))

(check-sat (not bm!663577) (not b!7274347) (not d!2264121) (not b!7274346) (not d!2264095) (not b!7274405) (not b_lambda!280701) (not d!2264119) (not bs!1911840) (not bs!1911839) (not d!2264089) (not d!2264111) (not d!2264127) (not bm!663580) (not b!7274402) (not d!2264123) (not b_lambda!280703) (not b!7274420) (not b!7274421) (not b!7274426) (not b!7274386) tp_is_empty!47131 (not b!7274361) (not d!2264087) (not d!2264091) (not d!2264113) (not b!7274387) (not b!7274364) (not d!2264097))
(check-sat)

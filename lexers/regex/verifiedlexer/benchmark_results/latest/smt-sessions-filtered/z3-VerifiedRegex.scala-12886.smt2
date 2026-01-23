; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!711678 () Bool)

(assert start!711678)

(declare-fun b!7298558 () Bool)

(assert (=> b!7298558 true))

(declare-fun b!7298548 () Bool)

(declare-fun res!2951856 () Bool)

(declare-fun e!4371361 () Bool)

(assert (=> b!7298548 (=> (not res!2951856) (not e!4371361))))

(declare-datatypes ((C!38036 0))(
  ( (C!38037 (val!28966 Int)) )
))
(declare-datatypes ((List!71079 0))(
  ( (Nil!70955) (Cons!70955 (h!77403 C!38036) (t!385157 List!71079)) )
))
(declare-fun s!7854 () List!71079)

(get-info :version)

(assert (=> b!7298548 (= res!2951856 ((_ is Cons!70955) s!7854))))

(declare-fun b!7298549 () Bool)

(declare-fun e!4371365 () Bool)

(declare-fun tp_is_empty!47227 () Bool)

(declare-fun tp!2062721 () Bool)

(assert (=> b!7298549 (= e!4371365 (and tp_is_empty!47227 tp!2062721))))

(declare-fun res!2951849 () Bool)

(assert (=> start!711678 (=> (not res!2951849) (not e!4371361))))

(declare-datatypes ((Regex!18881 0))(
  ( (ElementMatch!18881 (c!1356855 C!38036)) (Concat!27726 (regOne!38274 Regex!18881) (regTwo!38274 Regex!18881)) (EmptyExpr!18881) (Star!18881 (reg!19210 Regex!18881)) (EmptyLang!18881) (Union!18881 (regOne!38275 Regex!18881) (regTwo!38275 Regex!18881)) )
))
(declare-datatypes ((List!71080 0))(
  ( (Nil!70956) (Cons!70956 (h!77404 Regex!18881) (t!385158 List!71080)) )
))
(declare-datatypes ((Context!15642 0))(
  ( (Context!15643 (exprs!8321 List!71080)) )
))
(declare-fun ct2!346 () Context!15642)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!3785 ((InoxSet Context!15642) List!71079) Bool)

(assert (=> start!711678 (= res!2951849 (matchZipper!3785 (store ((as const (Array Context!15642 Bool)) false) ct2!346 true) s!7854))))

(assert (=> start!711678 e!4371361))

(declare-fun e!4371366 () Bool)

(declare-fun inv!90212 (Context!15642) Bool)

(assert (=> start!711678 (and (inv!90212 ct2!346) e!4371366)))

(assert (=> start!711678 e!4371365))

(declare-fun ct1!250 () Context!15642)

(declare-fun e!4371367 () Bool)

(assert (=> start!711678 (and (inv!90212 ct1!250) e!4371367)))

(declare-fun b!7298550 () Bool)

(declare-fun res!2951855 () Bool)

(declare-fun e!4371363 () Bool)

(assert (=> b!7298550 (=> res!2951855 e!4371363)))

(assert (=> b!7298550 (= res!2951855 (not ((_ is Cons!70956) (exprs!8321 ct1!250))))))

(declare-fun b!7298551 () Bool)

(declare-fun e!4371368 () Bool)

(assert (=> b!7298551 (= e!4371368 true)))

(declare-fun lambda!451114 () Int)

(declare-datatypes ((Unit!164360 0))(
  ( (Unit!164361) )
))
(declare-fun lt!2599617 () Unit!164360)

(declare-fun lemmaConcatPreservesForall!1628 (List!71080 List!71080 Int) Unit!164360)

(assert (=> b!7298551 (= lt!2599617 (lemmaConcatPreservesForall!1628 (exprs!8321 ct1!250) (exprs!8321 ct2!346) lambda!451114))))

(declare-fun b!7298552 () Bool)

(declare-fun res!2951851 () Bool)

(declare-fun e!4371362 () Bool)

(assert (=> b!7298552 (=> res!2951851 e!4371362)))

(declare-fun lt!2599622 () Context!15642)

(declare-fun lt!2599621 () (InoxSet Context!15642))

(declare-fun derivationStepZipperDown!2787 (Regex!18881 Context!15642 C!38036) (InoxSet Context!15642))

(declare-fun derivationStepZipperUp!2631 (Context!15642 C!38036) (InoxSet Context!15642))

(assert (=> b!7298552 (= res!2951851 (not (= lt!2599621 ((_ map or) (derivationStepZipperDown!2787 (h!77404 (exprs!8321 ct1!250)) lt!2599622 (h!77403 s!7854)) (derivationStepZipperUp!2631 lt!2599622 (h!77403 s!7854))))))))

(declare-fun b!7298553 () Bool)

(declare-fun tp!2062722 () Bool)

(assert (=> b!7298553 (= e!4371366 tp!2062722)))

(declare-fun b!7298554 () Bool)

(declare-fun res!2951854 () Bool)

(assert (=> b!7298554 (=> res!2951854 e!4371363)))

(declare-fun isEmpty!40824 (List!71080) Bool)

(assert (=> b!7298554 (= res!2951854 (isEmpty!40824 (exprs!8321 ct1!250)))))

(declare-fun b!7298555 () Bool)

(declare-fun e!4371364 () Bool)

(declare-fun e!4371369 () Bool)

(assert (=> b!7298555 (= e!4371364 e!4371369)))

(declare-fun res!2951847 () Bool)

(assert (=> b!7298555 (=> res!2951847 e!4371369)))

(declare-fun lt!2599607 () (InoxSet Context!15642))

(assert (=> b!7298555 (= res!2951847 (not (matchZipper!3785 lt!2599607 (t!385157 s!7854))))))

(declare-fun lt!2599610 () Unit!164360)

(declare-fun lt!2599604 () List!71080)

(assert (=> b!7298555 (= lt!2599610 (lemmaConcatPreservesForall!1628 lt!2599604 (exprs!8321 ct2!346) lambda!451114))))

(declare-fun lt!2599618 () (InoxSet Context!15642))

(declare-fun lt!2599594 () Context!15642)

(declare-fun lambda!451115 () Int)

(declare-fun flatMap!2976 ((InoxSet Context!15642) Int) (InoxSet Context!15642))

(assert (=> b!7298555 (= (flatMap!2976 lt!2599618 lambda!451115) (derivationStepZipperUp!2631 lt!2599594 (h!77403 s!7854)))))

(declare-fun lt!2599612 () Unit!164360)

(declare-fun lemmaFlatMapOnSingletonSet!2374 ((InoxSet Context!15642) Context!15642 Int) Unit!164360)

(assert (=> b!7298555 (= lt!2599612 (lemmaFlatMapOnSingletonSet!2374 lt!2599618 lt!2599594 lambda!451115))))

(declare-fun lt!2599601 () Unit!164360)

(assert (=> b!7298555 (= lt!2599601 (lemmaConcatPreservesForall!1628 lt!2599604 (exprs!8321 ct2!346) lambda!451114))))

(declare-fun lt!2599602 () Unit!164360)

(assert (=> b!7298555 (= lt!2599602 (lemmaConcatPreservesForall!1628 lt!2599604 (exprs!8321 ct2!346) lambda!451114))))

(declare-fun lt!2599599 () Unit!164360)

(assert (=> b!7298555 (= lt!2599599 (lemmaConcatPreservesForall!1628 lt!2599604 (exprs!8321 ct2!346) lambda!451114))))

(assert (=> b!7298555 (matchZipper!3785 lt!2599618 s!7854)))

(assert (=> b!7298555 (= lt!2599618 (store ((as const (Array Context!15642 Bool)) false) lt!2599594 true))))

(declare-fun lt!2599608 () Unit!164360)

(assert (=> b!7298555 (= lt!2599608 (lemmaConcatPreservesForall!1628 lt!2599604 (exprs!8321 ct2!346) lambda!451114))))

(declare-fun lt!2599603 () Unit!164360)

(declare-fun lemmaPrependingNullableCtxStillMatches!64 (Context!15642 Context!15642 List!71079) Unit!164360)

(assert (=> b!7298555 (= lt!2599603 (lemmaPrependingNullableCtxStillMatches!64 lt!2599622 ct2!346 s!7854))))

(declare-fun b!7298556 () Bool)

(assert (=> b!7298556 (= e!4371363 e!4371362)))

(declare-fun res!2951853 () Bool)

(assert (=> b!7298556 (=> res!2951853 e!4371362)))

(declare-fun nullable!8058 (Regex!18881) Bool)

(assert (=> b!7298556 (= res!2951853 (not (nullable!8058 (h!77404 (exprs!8321 ct1!250)))))))

(assert (=> b!7298556 (= lt!2599621 (derivationStepZipperUp!2631 ct1!250 (h!77403 s!7854)))))

(assert (=> b!7298556 (= lt!2599622 (Context!15643 lt!2599604))))

(declare-fun tail!14607 (List!71080) List!71080)

(assert (=> b!7298556 (= lt!2599604 (tail!14607 (exprs!8321 ct1!250)))))

(declare-fun b!7298557 () Bool)

(assert (=> b!7298557 (= e!4371369 e!4371368)))

(declare-fun res!2951848 () Bool)

(assert (=> b!7298557 (=> res!2951848 e!4371368)))

(declare-fun lt!2599611 () (InoxSet Context!15642))

(assert (=> b!7298557 (= res!2951848 (not (matchZipper!3785 lt!2599611 s!7854)))))

(declare-fun lt!2599606 () Unit!164360)

(assert (=> b!7298557 (= lt!2599606 (lemmaConcatPreservesForall!1628 (exprs!8321 ct1!250) (exprs!8321 ct2!346) lambda!451114))))

(declare-fun lt!2599598 () (InoxSet Context!15642))

(assert (=> b!7298557 (matchZipper!3785 lt!2599598 (t!385157 s!7854))))

(declare-fun lt!2599595 () Bool)

(declare-fun lt!2599609 () (InoxSet Context!15642))

(assert (=> b!7298557 (= lt!2599595 (matchZipper!3785 lt!2599609 (t!385157 s!7854)))))

(declare-fun lt!2599597 () Unit!164360)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1788 ((InoxSet Context!15642) (InoxSet Context!15642) List!71079) Unit!164360)

(assert (=> b!7298557 (= lt!2599597 (lemmaZipperConcatMatchesSameAsBothZippers!1788 lt!2599609 lt!2599607 (t!385157 s!7854)))))

(declare-fun lt!2599613 () Unit!164360)

(assert (=> b!7298557 (= lt!2599613 (lemmaConcatPreservesForall!1628 lt!2599604 (exprs!8321 ct2!346) lambda!451114))))

(declare-fun lt!2599596 () Unit!164360)

(assert (=> b!7298557 (= lt!2599596 (lemmaConcatPreservesForall!1628 lt!2599604 (exprs!8321 ct2!346) lambda!451114))))

(assert (=> b!7298558 (= e!4371361 (not e!4371363))))

(declare-fun res!2951852 () Bool)

(assert (=> b!7298558 (=> res!2951852 e!4371363)))

(declare-fun lt!2599620 () (InoxSet Context!15642))

(declare-fun derivationStepZipper!3614 ((InoxSet Context!15642) C!38036) (InoxSet Context!15642))

(assert (=> b!7298558 (= res!2951852 (not (= lt!2599620 (derivationStepZipper!3614 lt!2599611 (h!77403 s!7854)))))))

(declare-fun lt!2599593 () Unit!164360)

(assert (=> b!7298558 (= lt!2599593 (lemmaConcatPreservesForall!1628 (exprs!8321 ct1!250) (exprs!8321 ct2!346) lambda!451114))))

(declare-fun lt!2599623 () Context!15642)

(assert (=> b!7298558 (= (flatMap!2976 lt!2599611 lambda!451115) (derivationStepZipperUp!2631 lt!2599623 (h!77403 s!7854)))))

(declare-fun lt!2599600 () Unit!164360)

(assert (=> b!7298558 (= lt!2599600 (lemmaFlatMapOnSingletonSet!2374 lt!2599611 lt!2599623 lambda!451115))))

(assert (=> b!7298558 (= lt!2599611 (store ((as const (Array Context!15642 Bool)) false) lt!2599623 true))))

(declare-fun lt!2599624 () Unit!164360)

(assert (=> b!7298558 (= lt!2599624 (lemmaConcatPreservesForall!1628 (exprs!8321 ct1!250) (exprs!8321 ct2!346) lambda!451114))))

(declare-fun lt!2599605 () Unit!164360)

(assert (=> b!7298558 (= lt!2599605 (lemmaConcatPreservesForall!1628 (exprs!8321 ct1!250) (exprs!8321 ct2!346) lambda!451114))))

(declare-fun lt!2599615 () (InoxSet Context!15642))

(assert (=> b!7298558 (= (flatMap!2976 lt!2599615 lambda!451115) (derivationStepZipperUp!2631 ct1!250 (h!77403 s!7854)))))

(declare-fun lt!2599614 () Unit!164360)

(assert (=> b!7298558 (= lt!2599614 (lemmaFlatMapOnSingletonSet!2374 lt!2599615 ct1!250 lambda!451115))))

(assert (=> b!7298558 (= lt!2599615 (store ((as const (Array Context!15642 Bool)) false) ct1!250 true))))

(assert (=> b!7298558 (= lt!2599620 (derivationStepZipperUp!2631 lt!2599623 (h!77403 s!7854)))))

(declare-fun ++!16771 (List!71080 List!71080) List!71080)

(assert (=> b!7298558 (= lt!2599623 (Context!15643 (++!16771 (exprs!8321 ct1!250) (exprs!8321 ct2!346))))))

(declare-fun lt!2599616 () Unit!164360)

(assert (=> b!7298558 (= lt!2599616 (lemmaConcatPreservesForall!1628 (exprs!8321 ct1!250) (exprs!8321 ct2!346) lambda!451114))))

(declare-fun b!7298559 () Bool)

(declare-fun tp!2062720 () Bool)

(assert (=> b!7298559 (= e!4371367 tp!2062720)))

(declare-fun b!7298560 () Bool)

(declare-fun res!2951850 () Bool)

(assert (=> b!7298560 (=> (not res!2951850) (not e!4371361))))

(declare-fun nullableContext!371 (Context!15642) Bool)

(assert (=> b!7298560 (= res!2951850 (nullableContext!371 ct1!250))))

(declare-fun b!7298561 () Bool)

(assert (=> b!7298561 (= e!4371362 e!4371364)))

(declare-fun res!2951857 () Bool)

(assert (=> b!7298561 (=> res!2951857 e!4371364)))

(assert (=> b!7298561 (= res!2951857 (not (= lt!2599620 lt!2599598)))))

(assert (=> b!7298561 (= lt!2599598 ((_ map or) lt!2599609 lt!2599607))))

(assert (=> b!7298561 (= lt!2599607 (derivationStepZipperUp!2631 lt!2599594 (h!77403 s!7854)))))

(assert (=> b!7298561 (= lt!2599609 (derivationStepZipperDown!2787 (h!77404 (exprs!8321 ct1!250)) lt!2599594 (h!77403 s!7854)))))

(assert (=> b!7298561 (= lt!2599594 (Context!15643 (++!16771 lt!2599604 (exprs!8321 ct2!346))))))

(declare-fun lt!2599619 () Unit!164360)

(assert (=> b!7298561 (= lt!2599619 (lemmaConcatPreservesForall!1628 lt!2599604 (exprs!8321 ct2!346) lambda!451114))))

(declare-fun lt!2599625 () Unit!164360)

(assert (=> b!7298561 (= lt!2599625 (lemmaConcatPreservesForall!1628 lt!2599604 (exprs!8321 ct2!346) lambda!451114))))

(assert (= (and start!711678 res!2951849) b!7298560))

(assert (= (and b!7298560 res!2951850) b!7298548))

(assert (= (and b!7298548 res!2951856) b!7298558))

(assert (= (and b!7298558 (not res!2951852)) b!7298550))

(assert (= (and b!7298550 (not res!2951855)) b!7298554))

(assert (= (and b!7298554 (not res!2951854)) b!7298556))

(assert (= (and b!7298556 (not res!2951853)) b!7298552))

(assert (= (and b!7298552 (not res!2951851)) b!7298561))

(assert (= (and b!7298561 (not res!2951857)) b!7298555))

(assert (= (and b!7298555 (not res!2951847)) b!7298557))

(assert (= (and b!7298557 (not res!2951848)) b!7298551))

(assert (= start!711678 b!7298553))

(assert (= (and start!711678 ((_ is Cons!70955) s!7854)) b!7298549))

(assert (= start!711678 b!7298559))

(declare-fun m!7971132 () Bool)

(assert (=> b!7298560 m!7971132))

(declare-fun m!7971134 () Bool)

(assert (=> b!7298556 m!7971134))

(declare-fun m!7971136 () Bool)

(assert (=> b!7298556 m!7971136))

(declare-fun m!7971138 () Bool)

(assert (=> b!7298556 m!7971138))

(declare-fun m!7971140 () Bool)

(assert (=> b!7298551 m!7971140))

(declare-fun m!7971142 () Bool)

(assert (=> b!7298554 m!7971142))

(declare-fun m!7971144 () Bool)

(assert (=> b!7298561 m!7971144))

(declare-fun m!7971146 () Bool)

(assert (=> b!7298561 m!7971146))

(declare-fun m!7971148 () Bool)

(assert (=> b!7298561 m!7971148))

(declare-fun m!7971150 () Bool)

(assert (=> b!7298561 m!7971150))

(assert (=> b!7298561 m!7971150))

(declare-fun m!7971152 () Bool)

(assert (=> b!7298557 m!7971152))

(declare-fun m!7971154 () Bool)

(assert (=> b!7298557 m!7971154))

(declare-fun m!7971156 () Bool)

(assert (=> b!7298557 m!7971156))

(declare-fun m!7971158 () Bool)

(assert (=> b!7298557 m!7971158))

(assert (=> b!7298557 m!7971150))

(assert (=> b!7298557 m!7971140))

(assert (=> b!7298557 m!7971150))

(declare-fun m!7971160 () Bool)

(assert (=> start!711678 m!7971160))

(assert (=> start!711678 m!7971160))

(declare-fun m!7971162 () Bool)

(assert (=> start!711678 m!7971162))

(declare-fun m!7971164 () Bool)

(assert (=> start!711678 m!7971164))

(declare-fun m!7971166 () Bool)

(assert (=> start!711678 m!7971166))

(assert (=> b!7298558 m!7971136))

(assert (=> b!7298558 m!7971140))

(declare-fun m!7971168 () Bool)

(assert (=> b!7298558 m!7971168))

(declare-fun m!7971170 () Bool)

(assert (=> b!7298558 m!7971170))

(assert (=> b!7298558 m!7971140))

(declare-fun m!7971172 () Bool)

(assert (=> b!7298558 m!7971172))

(declare-fun m!7971174 () Bool)

(assert (=> b!7298558 m!7971174))

(assert (=> b!7298558 m!7971140))

(assert (=> b!7298558 m!7971140))

(declare-fun m!7971176 () Bool)

(assert (=> b!7298558 m!7971176))

(declare-fun m!7971178 () Bool)

(assert (=> b!7298558 m!7971178))

(declare-fun m!7971180 () Bool)

(assert (=> b!7298558 m!7971180))

(declare-fun m!7971182 () Bool)

(assert (=> b!7298558 m!7971182))

(declare-fun m!7971184 () Bool)

(assert (=> b!7298558 m!7971184))

(assert (=> b!7298555 m!7971150))

(declare-fun m!7971186 () Bool)

(assert (=> b!7298555 m!7971186))

(assert (=> b!7298555 m!7971144))

(assert (=> b!7298555 m!7971150))

(declare-fun m!7971188 () Bool)

(assert (=> b!7298555 m!7971188))

(assert (=> b!7298555 m!7971150))

(declare-fun m!7971190 () Bool)

(assert (=> b!7298555 m!7971190))

(declare-fun m!7971192 () Bool)

(assert (=> b!7298555 m!7971192))

(declare-fun m!7971194 () Bool)

(assert (=> b!7298555 m!7971194))

(assert (=> b!7298555 m!7971150))

(declare-fun m!7971196 () Bool)

(assert (=> b!7298555 m!7971196))

(assert (=> b!7298555 m!7971150))

(declare-fun m!7971198 () Bool)

(assert (=> b!7298552 m!7971198))

(declare-fun m!7971200 () Bool)

(assert (=> b!7298552 m!7971200))

(check-sat tp_is_empty!47227 (not b!7298558) (not b!7298552) (not b!7298556) (not b!7298555) (not b!7298553) (not b!7298559) (not start!711678) (not b!7298561) (not b!7298554) (not b!7298549) (not b!7298551) (not b!7298557) (not b!7298560))
(check-sat)

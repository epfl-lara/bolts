; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!711682 () Bool)

(assert start!711682)

(declare-fun b!7298612 () Bool)

(assert (=> b!7298612 true))

(declare-fun b!7298606 () Bool)

(declare-fun e!4371397 () Bool)

(declare-fun tp!2062739 () Bool)

(assert (=> b!7298606 (= e!4371397 tp!2062739)))

(declare-fun b!7298607 () Bool)

(declare-fun e!4371398 () Bool)

(declare-fun tp_is_empty!47231 () Bool)

(declare-fun tp!2062738 () Bool)

(assert (=> b!7298607 (= e!4371398 (and tp_is_empty!47231 tp!2062738))))

(declare-fun b!7298608 () Bool)

(declare-fun e!4371399 () Bool)

(declare-datatypes ((C!38040 0))(
  ( (C!38041 (val!28968 Int)) )
))
(declare-datatypes ((Regex!18883 0))(
  ( (ElementMatch!18883 (c!1356865 C!38040)) (Concat!27728 (regOne!38278 Regex!18883) (regTwo!38278 Regex!18883)) (EmptyExpr!18883) (Star!18883 (reg!19212 Regex!18883)) (EmptyLang!18883) (Union!18883 (regOne!38279 Regex!18883) (regTwo!38279 Regex!18883)) )
))
(declare-datatypes ((List!71083 0))(
  ( (Nil!70959) (Cons!70959 (h!77407 Regex!18883) (t!385161 List!71083)) )
))
(declare-datatypes ((Context!15646 0))(
  ( (Context!15647 (exprs!8323 List!71083)) )
))
(declare-fun lt!2599687 () Context!15646)

(declare-fun inv!90217 (Context!15646) Bool)

(assert (=> b!7298608 (= e!4371399 (inv!90217 lt!2599687))))

(declare-fun ct1!250 () Context!15646)

(declare-datatypes ((Unit!164364 0))(
  ( (Unit!164365) )
))
(declare-fun lt!2599688 () Unit!164364)

(declare-fun lambda!451146 () Int)

(declare-fun ct2!346 () Context!15646)

(declare-fun lemmaConcatPreservesForall!1630 (List!71083 List!71083 Int) Unit!164364)

(assert (=> b!7298608 (= lt!2599688 (lemmaConcatPreservesForall!1630 (exprs!8323 ct1!250) (exprs!8323 ct2!346) lambda!451146))))

(declare-fun b!7298609 () Bool)

(declare-fun res!2951884 () Bool)

(declare-fun e!4371395 () Bool)

(assert (=> b!7298609 (=> (not res!2951884) (not e!4371395))))

(declare-fun nullableContext!373 (Context!15646) Bool)

(assert (=> b!7298609 (= res!2951884 (nullableContext!373 ct1!250))))

(declare-fun b!7298610 () Bool)

(declare-fun res!2951886 () Bool)

(assert (=> b!7298610 (=> (not res!2951886) (not e!4371395))))

(declare-datatypes ((List!71084 0))(
  ( (Nil!70960) (Cons!70960 (h!77408 C!38040) (t!385162 List!71084)) )
))
(declare-fun s!7854 () List!71084)

(get-info :version)

(assert (=> b!7298610 (= res!2951886 ((_ is Cons!70960) s!7854))))

(declare-fun res!2951883 () Bool)

(assert (=> start!711682 (=> (not res!2951883) (not e!4371395))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!3787 ((InoxSet Context!15646) List!71084) Bool)

(assert (=> start!711682 (= res!2951883 (matchZipper!3787 (store ((as const (Array Context!15646 Bool)) false) ct2!346 true) s!7854))))

(assert (=> start!711682 e!4371395))

(declare-fun e!4371396 () Bool)

(assert (=> start!711682 (and (inv!90217 ct2!346) e!4371396)))

(assert (=> start!711682 e!4371398))

(assert (=> start!711682 (and (inv!90217 ct1!250) e!4371397)))

(declare-fun b!7298611 () Bool)

(declare-fun tp!2062740 () Bool)

(assert (=> b!7298611 (= e!4371396 tp!2062740)))

(assert (=> b!7298612 (= e!4371395 (not e!4371399))))

(declare-fun res!2951887 () Bool)

(assert (=> b!7298612 (=> res!2951887 e!4371399)))

(declare-fun lt!2599684 () (InoxSet Context!15646))

(declare-fun lt!2599691 () (InoxSet Context!15646))

(declare-fun derivationStepZipper!3616 ((InoxSet Context!15646) C!38040) (InoxSet Context!15646))

(assert (=> b!7298612 (= res!2951887 (not (= lt!2599684 (derivationStepZipper!3616 lt!2599691 (h!77408 s!7854)))))))

(declare-fun lt!2599685 () Unit!164364)

(assert (=> b!7298612 (= lt!2599685 (lemmaConcatPreservesForall!1630 (exprs!8323 ct1!250) (exprs!8323 ct2!346) lambda!451146))))

(declare-fun lambda!451147 () Int)

(declare-fun flatMap!2978 ((InoxSet Context!15646) Int) (InoxSet Context!15646))

(declare-fun derivationStepZipperUp!2633 (Context!15646 C!38040) (InoxSet Context!15646))

(assert (=> b!7298612 (= (flatMap!2978 lt!2599691 lambda!451147) (derivationStepZipperUp!2633 lt!2599687 (h!77408 s!7854)))))

(declare-fun lt!2599683 () Unit!164364)

(declare-fun lemmaFlatMapOnSingletonSet!2376 ((InoxSet Context!15646) Context!15646 Int) Unit!164364)

(assert (=> b!7298612 (= lt!2599683 (lemmaFlatMapOnSingletonSet!2376 lt!2599691 lt!2599687 lambda!451147))))

(assert (=> b!7298612 (= lt!2599691 (store ((as const (Array Context!15646 Bool)) false) lt!2599687 true))))

(declare-fun lt!2599689 () Unit!164364)

(assert (=> b!7298612 (= lt!2599689 (lemmaConcatPreservesForall!1630 (exprs!8323 ct1!250) (exprs!8323 ct2!346) lambda!451146))))

(declare-fun lt!2599686 () Unit!164364)

(assert (=> b!7298612 (= lt!2599686 (lemmaConcatPreservesForall!1630 (exprs!8323 ct1!250) (exprs!8323 ct2!346) lambda!451146))))

(declare-fun lt!2599682 () (InoxSet Context!15646))

(assert (=> b!7298612 (= (flatMap!2978 lt!2599682 lambda!451147) (derivationStepZipperUp!2633 ct1!250 (h!77408 s!7854)))))

(declare-fun lt!2599690 () Unit!164364)

(assert (=> b!7298612 (= lt!2599690 (lemmaFlatMapOnSingletonSet!2376 lt!2599682 ct1!250 lambda!451147))))

(assert (=> b!7298612 (= lt!2599682 (store ((as const (Array Context!15646 Bool)) false) ct1!250 true))))

(assert (=> b!7298612 (= lt!2599684 (derivationStepZipperUp!2633 lt!2599687 (h!77408 s!7854)))))

(declare-fun ++!16773 (List!71083 List!71083) List!71083)

(assert (=> b!7298612 (= lt!2599687 (Context!15647 (++!16773 (exprs!8323 ct1!250) (exprs!8323 ct2!346))))))

(declare-fun lt!2599681 () Unit!164364)

(assert (=> b!7298612 (= lt!2599681 (lemmaConcatPreservesForall!1630 (exprs!8323 ct1!250) (exprs!8323 ct2!346) lambda!451146))))

(declare-fun b!7298613 () Bool)

(declare-fun res!2951885 () Bool)

(assert (=> b!7298613 (=> res!2951885 e!4371399)))

(assert (=> b!7298613 (= res!2951885 ((_ is Cons!70959) (exprs!8323 ct1!250)))))

(assert (= (and start!711682 res!2951883) b!7298609))

(assert (= (and b!7298609 res!2951884) b!7298610))

(assert (= (and b!7298610 res!2951886) b!7298612))

(assert (= (and b!7298612 (not res!2951887)) b!7298613))

(assert (= (and b!7298613 (not res!2951885)) b!7298608))

(assert (= start!711682 b!7298611))

(assert (= (and start!711682 ((_ is Cons!70960) s!7854)) b!7298607))

(assert (= start!711682 b!7298606))

(declare-fun m!7971236 () Bool)

(assert (=> b!7298608 m!7971236))

(declare-fun m!7971238 () Bool)

(assert (=> b!7298608 m!7971238))

(declare-fun m!7971240 () Bool)

(assert (=> b!7298609 m!7971240))

(declare-fun m!7971242 () Bool)

(assert (=> start!711682 m!7971242))

(assert (=> start!711682 m!7971242))

(declare-fun m!7971244 () Bool)

(assert (=> start!711682 m!7971244))

(declare-fun m!7971246 () Bool)

(assert (=> start!711682 m!7971246))

(declare-fun m!7971248 () Bool)

(assert (=> start!711682 m!7971248))

(declare-fun m!7971250 () Bool)

(assert (=> b!7298612 m!7971250))

(declare-fun m!7971252 () Bool)

(assert (=> b!7298612 m!7971252))

(declare-fun m!7971254 () Bool)

(assert (=> b!7298612 m!7971254))

(declare-fun m!7971256 () Bool)

(assert (=> b!7298612 m!7971256))

(declare-fun m!7971258 () Bool)

(assert (=> b!7298612 m!7971258))

(assert (=> b!7298612 m!7971238))

(assert (=> b!7298612 m!7971238))

(declare-fun m!7971260 () Bool)

(assert (=> b!7298612 m!7971260))

(declare-fun m!7971262 () Bool)

(assert (=> b!7298612 m!7971262))

(assert (=> b!7298612 m!7971238))

(declare-fun m!7971264 () Bool)

(assert (=> b!7298612 m!7971264))

(declare-fun m!7971266 () Bool)

(assert (=> b!7298612 m!7971266))

(declare-fun m!7971268 () Bool)

(assert (=> b!7298612 m!7971268))

(assert (=> b!7298612 m!7971238))

(check-sat (not b!7298612) (not b!7298611) tp_is_empty!47231 (not b!7298606) (not b!7298607) (not b!7298608) (not b!7298609) (not start!711682))
(check-sat)
(get-model)

(declare-fun d!2268048 () Bool)

(declare-fun c!1356871 () Bool)

(declare-fun isEmpty!40826 (List!71084) Bool)

(assert (=> d!2268048 (= c!1356871 (isEmpty!40826 s!7854))))

(declare-fun e!4371405 () Bool)

(assert (=> d!2268048 (= (matchZipper!3787 (store ((as const (Array Context!15646 Bool)) false) ct2!346 true) s!7854) e!4371405)))

(declare-fun b!7298626 () Bool)

(declare-fun nullableZipper!3070 ((InoxSet Context!15646)) Bool)

(assert (=> b!7298626 (= e!4371405 (nullableZipper!3070 (store ((as const (Array Context!15646 Bool)) false) ct2!346 true)))))

(declare-fun b!7298627 () Bool)

(declare-fun head!15068 (List!71084) C!38040)

(declare-fun tail!14609 (List!71084) List!71084)

(assert (=> b!7298627 (= e!4371405 (matchZipper!3787 (derivationStepZipper!3616 (store ((as const (Array Context!15646 Bool)) false) ct2!346 true) (head!15068 s!7854)) (tail!14609 s!7854)))))

(assert (= (and d!2268048 c!1356871) b!7298626))

(assert (= (and d!2268048 (not c!1356871)) b!7298627))

(declare-fun m!7971288 () Bool)

(assert (=> d!2268048 m!7971288))

(assert (=> b!7298626 m!7971242))

(declare-fun m!7971290 () Bool)

(assert (=> b!7298626 m!7971290))

(declare-fun m!7971292 () Bool)

(assert (=> b!7298627 m!7971292))

(assert (=> b!7298627 m!7971242))

(assert (=> b!7298627 m!7971292))

(declare-fun m!7971294 () Bool)

(assert (=> b!7298627 m!7971294))

(declare-fun m!7971296 () Bool)

(assert (=> b!7298627 m!7971296))

(assert (=> b!7298627 m!7971294))

(assert (=> b!7298627 m!7971296))

(declare-fun m!7971298 () Bool)

(assert (=> b!7298627 m!7971298))

(assert (=> start!711682 d!2268048))

(declare-fun bs!1913539 () Bool)

(declare-fun d!2268058 () Bool)

(assert (= bs!1913539 (and d!2268058 b!7298612)))

(declare-fun lambda!451155 () Int)

(assert (=> bs!1913539 (= lambda!451155 lambda!451146)))

(declare-fun forall!17701 (List!71083 Int) Bool)

(assert (=> d!2268058 (= (inv!90217 ct2!346) (forall!17701 (exprs!8323 ct2!346) lambda!451155))))

(declare-fun bs!1913540 () Bool)

(assert (= bs!1913540 d!2268058))

(declare-fun m!7971306 () Bool)

(assert (=> bs!1913540 m!7971306))

(assert (=> start!711682 d!2268058))

(declare-fun bs!1913541 () Bool)

(declare-fun d!2268062 () Bool)

(assert (= bs!1913541 (and d!2268062 b!7298612)))

(declare-fun lambda!451156 () Int)

(assert (=> bs!1913541 (= lambda!451156 lambda!451146)))

(declare-fun bs!1913542 () Bool)

(assert (= bs!1913542 (and d!2268062 d!2268058)))

(assert (=> bs!1913542 (= lambda!451156 lambda!451155)))

(assert (=> d!2268062 (= (inv!90217 ct1!250) (forall!17701 (exprs!8323 ct1!250) lambda!451156))))

(declare-fun bs!1913543 () Bool)

(assert (= bs!1913543 d!2268062))

(declare-fun m!7971308 () Bool)

(assert (=> bs!1913543 m!7971308))

(assert (=> start!711682 d!2268062))

(declare-fun d!2268064 () Bool)

(declare-fun choose!56579 ((InoxSet Context!15646) Int) (InoxSet Context!15646))

(assert (=> d!2268064 (= (flatMap!2978 lt!2599682 lambda!451147) (choose!56579 lt!2599682 lambda!451147))))

(declare-fun bs!1913544 () Bool)

(assert (= bs!1913544 d!2268064))

(declare-fun m!7971310 () Bool)

(assert (=> bs!1913544 m!7971310))

(assert (=> b!7298612 d!2268064))

(declare-fun e!4371424 () (InoxSet Context!15646))

(declare-fun call!665247 () (InoxSet Context!15646))

(declare-fun b!7298658 () Bool)

(assert (=> b!7298658 (= e!4371424 ((_ map or) call!665247 (derivationStepZipperUp!2633 (Context!15647 (t!385161 (exprs!8323 ct1!250))) (h!77408 s!7854))))))

(declare-fun bm!665242 () Bool)

(declare-fun derivationStepZipperDown!2789 (Regex!18883 Context!15646 C!38040) (InoxSet Context!15646))

(assert (=> bm!665242 (= call!665247 (derivationStepZipperDown!2789 (h!77407 (exprs!8323 ct1!250)) (Context!15647 (t!385161 (exprs!8323 ct1!250))) (h!77408 s!7854)))))

(declare-fun b!7298659 () Bool)

(declare-fun e!4371425 () (InoxSet Context!15646))

(assert (=> b!7298659 (= e!4371424 e!4371425)))

(declare-fun c!1356885 () Bool)

(assert (=> b!7298659 (= c!1356885 ((_ is Cons!70959) (exprs!8323 ct1!250)))))

(declare-fun d!2268066 () Bool)

(declare-fun c!1356884 () Bool)

(declare-fun e!4371426 () Bool)

(assert (=> d!2268066 (= c!1356884 e!4371426)))

(declare-fun res!2951894 () Bool)

(assert (=> d!2268066 (=> (not res!2951894) (not e!4371426))))

(assert (=> d!2268066 (= res!2951894 ((_ is Cons!70959) (exprs!8323 ct1!250)))))

(assert (=> d!2268066 (= (derivationStepZipperUp!2633 ct1!250 (h!77408 s!7854)) e!4371424)))

(declare-fun b!7298660 () Bool)

(assert (=> b!7298660 (= e!4371425 call!665247)))

(declare-fun b!7298661 () Bool)

(declare-fun nullable!8060 (Regex!18883) Bool)

(assert (=> b!7298661 (= e!4371426 (nullable!8060 (h!77407 (exprs!8323 ct1!250))))))

(declare-fun b!7298662 () Bool)

(assert (=> b!7298662 (= e!4371425 ((as const (Array Context!15646 Bool)) false))))

(assert (= (and d!2268066 res!2951894) b!7298661))

(assert (= (and d!2268066 c!1356884) b!7298658))

(assert (= (and d!2268066 (not c!1356884)) b!7298659))

(assert (= (and b!7298659 c!1356885) b!7298660))

(assert (= (and b!7298659 (not c!1356885)) b!7298662))

(assert (= (or b!7298658 b!7298660) bm!665242))

(declare-fun m!7971324 () Bool)

(assert (=> b!7298658 m!7971324))

(declare-fun m!7971326 () Bool)

(assert (=> bm!665242 m!7971326))

(declare-fun m!7971328 () Bool)

(assert (=> b!7298661 m!7971328))

(assert (=> b!7298612 d!2268066))

(declare-fun d!2268072 () Bool)

(declare-fun dynLambda!29018 (Int Context!15646) (InoxSet Context!15646))

(assert (=> d!2268072 (= (flatMap!2978 lt!2599682 lambda!451147) (dynLambda!29018 lambda!451147 ct1!250))))

(declare-fun lt!2599700 () Unit!164364)

(declare-fun choose!56581 ((InoxSet Context!15646) Context!15646 Int) Unit!164364)

(assert (=> d!2268072 (= lt!2599700 (choose!56581 lt!2599682 ct1!250 lambda!451147))))

(assert (=> d!2268072 (= lt!2599682 (store ((as const (Array Context!15646 Bool)) false) ct1!250 true))))

(assert (=> d!2268072 (= (lemmaFlatMapOnSingletonSet!2376 lt!2599682 ct1!250 lambda!451147) lt!2599700)))

(declare-fun b_lambda!281601 () Bool)

(assert (=> (not b_lambda!281601) (not d!2268072)))

(declare-fun bs!1913545 () Bool)

(assert (= bs!1913545 d!2268072))

(assert (=> bs!1913545 m!7971252))

(declare-fun m!7971344 () Bool)

(assert (=> bs!1913545 m!7971344))

(declare-fun m!7971346 () Bool)

(assert (=> bs!1913545 m!7971346))

(assert (=> bs!1913545 m!7971262))

(assert (=> b!7298612 d!2268072))

(declare-fun bs!1913549 () Bool)

(declare-fun d!2268076 () Bool)

(assert (= bs!1913549 (and d!2268076 b!7298612)))

(declare-fun lambda!451159 () Int)

(assert (=> bs!1913549 (= lambda!451159 lambda!451147)))

(assert (=> d!2268076 true))

(assert (=> d!2268076 (= (derivationStepZipper!3616 lt!2599691 (h!77408 s!7854)) (flatMap!2978 lt!2599691 lambda!451159))))

(declare-fun bs!1913550 () Bool)

(assert (= bs!1913550 d!2268076))

(declare-fun m!7971358 () Bool)

(assert (=> bs!1913550 m!7971358))

(assert (=> b!7298612 d!2268076))

(declare-fun d!2268084 () Bool)

(declare-fun e!4371445 () Bool)

(assert (=> d!2268084 e!4371445))

(declare-fun res!2951905 () Bool)

(assert (=> d!2268084 (=> (not res!2951905) (not e!4371445))))

(declare-fun lt!2599707 () List!71083)

(declare-fun content!14827 (List!71083) (InoxSet Regex!18883))

(assert (=> d!2268084 (= res!2951905 (= (content!14827 lt!2599707) ((_ map or) (content!14827 (exprs!8323 ct1!250)) (content!14827 (exprs!8323 ct2!346)))))))

(declare-fun e!4371444 () List!71083)

(assert (=> d!2268084 (= lt!2599707 e!4371444)))

(declare-fun c!1356896 () Bool)

(assert (=> d!2268084 (= c!1356896 ((_ is Nil!70959) (exprs!8323 ct1!250)))))

(assert (=> d!2268084 (= (++!16773 (exprs!8323 ct1!250) (exprs!8323 ct2!346)) lt!2599707)))

(declare-fun b!7298699 () Bool)

(assert (=> b!7298699 (= e!4371444 (Cons!70959 (h!77407 (exprs!8323 ct1!250)) (++!16773 (t!385161 (exprs!8323 ct1!250)) (exprs!8323 ct2!346))))))

(declare-fun b!7298700 () Bool)

(declare-fun res!2951906 () Bool)

(assert (=> b!7298700 (=> (not res!2951906) (not e!4371445))))

(declare-fun size!41873 (List!71083) Int)

(assert (=> b!7298700 (= res!2951906 (= (size!41873 lt!2599707) (+ (size!41873 (exprs!8323 ct1!250)) (size!41873 (exprs!8323 ct2!346)))))))

(declare-fun b!7298698 () Bool)

(assert (=> b!7298698 (= e!4371444 (exprs!8323 ct2!346))))

(declare-fun b!7298701 () Bool)

(assert (=> b!7298701 (= e!4371445 (or (not (= (exprs!8323 ct2!346) Nil!70959)) (= lt!2599707 (exprs!8323 ct1!250))))))

(assert (= (and d!2268084 c!1356896) b!7298698))

(assert (= (and d!2268084 (not c!1356896)) b!7298699))

(assert (= (and d!2268084 res!2951905) b!7298700))

(assert (= (and b!7298700 res!2951906) b!7298701))

(declare-fun m!7971366 () Bool)

(assert (=> d!2268084 m!7971366))

(declare-fun m!7971368 () Bool)

(assert (=> d!2268084 m!7971368))

(declare-fun m!7971370 () Bool)

(assert (=> d!2268084 m!7971370))

(declare-fun m!7971372 () Bool)

(assert (=> b!7298699 m!7971372))

(declare-fun m!7971374 () Bool)

(assert (=> b!7298700 m!7971374))

(declare-fun m!7971376 () Bool)

(assert (=> b!7298700 m!7971376))

(declare-fun m!7971378 () Bool)

(assert (=> b!7298700 m!7971378))

(assert (=> b!7298612 d!2268084))

(declare-fun d!2268094 () Bool)

(assert (=> d!2268094 (= (flatMap!2978 lt!2599691 lambda!451147) (choose!56579 lt!2599691 lambda!451147))))

(declare-fun bs!1913561 () Bool)

(assert (= bs!1913561 d!2268094))

(declare-fun m!7971380 () Bool)

(assert (=> bs!1913561 m!7971380))

(assert (=> b!7298612 d!2268094))

(declare-fun d!2268096 () Bool)

(assert (=> d!2268096 (= (flatMap!2978 lt!2599691 lambda!451147) (dynLambda!29018 lambda!451147 lt!2599687))))

(declare-fun lt!2599708 () Unit!164364)

(assert (=> d!2268096 (= lt!2599708 (choose!56581 lt!2599691 lt!2599687 lambda!451147))))

(assert (=> d!2268096 (= lt!2599691 (store ((as const (Array Context!15646 Bool)) false) lt!2599687 true))))

(assert (=> d!2268096 (= (lemmaFlatMapOnSingletonSet!2376 lt!2599691 lt!2599687 lambda!451147) lt!2599708)))

(declare-fun b_lambda!281611 () Bool)

(assert (=> (not b_lambda!281611) (not d!2268096)))

(declare-fun bs!1913562 () Bool)

(assert (= bs!1913562 d!2268096))

(assert (=> bs!1913562 m!7971266))

(declare-fun m!7971382 () Bool)

(assert (=> bs!1913562 m!7971382))

(declare-fun m!7971384 () Bool)

(assert (=> bs!1913562 m!7971384))

(assert (=> bs!1913562 m!7971260))

(assert (=> b!7298612 d!2268096))

(declare-fun b!7298702 () Bool)

(declare-fun e!4371446 () (InoxSet Context!15646))

(declare-fun call!665248 () (InoxSet Context!15646))

(assert (=> b!7298702 (= e!4371446 ((_ map or) call!665248 (derivationStepZipperUp!2633 (Context!15647 (t!385161 (exprs!8323 lt!2599687))) (h!77408 s!7854))))))

(declare-fun bm!665243 () Bool)

(assert (=> bm!665243 (= call!665248 (derivationStepZipperDown!2789 (h!77407 (exprs!8323 lt!2599687)) (Context!15647 (t!385161 (exprs!8323 lt!2599687))) (h!77408 s!7854)))))

(declare-fun b!7298703 () Bool)

(declare-fun e!4371447 () (InoxSet Context!15646))

(assert (=> b!7298703 (= e!4371446 e!4371447)))

(declare-fun c!1356898 () Bool)

(assert (=> b!7298703 (= c!1356898 ((_ is Cons!70959) (exprs!8323 lt!2599687)))))

(declare-fun d!2268098 () Bool)

(declare-fun c!1356897 () Bool)

(declare-fun e!4371448 () Bool)

(assert (=> d!2268098 (= c!1356897 e!4371448)))

(declare-fun res!2951907 () Bool)

(assert (=> d!2268098 (=> (not res!2951907) (not e!4371448))))

(assert (=> d!2268098 (= res!2951907 ((_ is Cons!70959) (exprs!8323 lt!2599687)))))

(assert (=> d!2268098 (= (derivationStepZipperUp!2633 lt!2599687 (h!77408 s!7854)) e!4371446)))

(declare-fun b!7298704 () Bool)

(assert (=> b!7298704 (= e!4371447 call!665248)))

(declare-fun b!7298705 () Bool)

(assert (=> b!7298705 (= e!4371448 (nullable!8060 (h!77407 (exprs!8323 lt!2599687))))))

(declare-fun b!7298706 () Bool)

(assert (=> b!7298706 (= e!4371447 ((as const (Array Context!15646 Bool)) false))))

(assert (= (and d!2268098 res!2951907) b!7298705))

(assert (= (and d!2268098 c!1356897) b!7298702))

(assert (= (and d!2268098 (not c!1356897)) b!7298703))

(assert (= (and b!7298703 c!1356898) b!7298704))

(assert (= (and b!7298703 (not c!1356898)) b!7298706))

(assert (= (or b!7298702 b!7298704) bm!665243))

(declare-fun m!7971386 () Bool)

(assert (=> b!7298702 m!7971386))

(declare-fun m!7971388 () Bool)

(assert (=> bm!665243 m!7971388))

(declare-fun m!7971390 () Bool)

(assert (=> b!7298705 m!7971390))

(assert (=> b!7298612 d!2268098))

(declare-fun d!2268100 () Bool)

(assert (=> d!2268100 (forall!17701 (++!16773 (exprs!8323 ct1!250) (exprs!8323 ct2!346)) lambda!451146)))

(declare-fun lt!2599711 () Unit!164364)

(declare-fun choose!56583 (List!71083 List!71083 Int) Unit!164364)

(assert (=> d!2268100 (= lt!2599711 (choose!56583 (exprs!8323 ct1!250) (exprs!8323 ct2!346) lambda!451146))))

(assert (=> d!2268100 (forall!17701 (exprs!8323 ct1!250) lambda!451146)))

(assert (=> d!2268100 (= (lemmaConcatPreservesForall!1630 (exprs!8323 ct1!250) (exprs!8323 ct2!346) lambda!451146) lt!2599711)))

(declare-fun bs!1913563 () Bool)

(assert (= bs!1913563 d!2268100))

(assert (=> bs!1913563 m!7971264))

(assert (=> bs!1913563 m!7971264))

(declare-fun m!7971392 () Bool)

(assert (=> bs!1913563 m!7971392))

(declare-fun m!7971394 () Bool)

(assert (=> bs!1913563 m!7971394))

(declare-fun m!7971396 () Bool)

(assert (=> bs!1913563 m!7971396))

(assert (=> b!7298612 d!2268100))

(declare-fun bs!1913564 () Bool)

(declare-fun d!2268102 () Bool)

(assert (= bs!1913564 (and d!2268102 b!7298612)))

(declare-fun lambda!451166 () Int)

(assert (=> bs!1913564 (= lambda!451166 lambda!451146)))

(declare-fun bs!1913565 () Bool)

(assert (= bs!1913565 (and d!2268102 d!2268058)))

(assert (=> bs!1913565 (= lambda!451166 lambda!451155)))

(declare-fun bs!1913566 () Bool)

(assert (= bs!1913566 (and d!2268102 d!2268062)))

(assert (=> bs!1913566 (= lambda!451166 lambda!451156)))

(assert (=> d!2268102 (= (inv!90217 lt!2599687) (forall!17701 (exprs!8323 lt!2599687) lambda!451166))))

(declare-fun bs!1913567 () Bool)

(assert (= bs!1913567 d!2268102))

(declare-fun m!7971398 () Bool)

(assert (=> bs!1913567 m!7971398))

(assert (=> b!7298608 d!2268102))

(assert (=> b!7298608 d!2268100))

(declare-fun bs!1913568 () Bool)

(declare-fun d!2268104 () Bool)

(assert (= bs!1913568 (and d!2268104 b!7298612)))

(declare-fun lambda!451169 () Int)

(assert (=> bs!1913568 (not (= lambda!451169 lambda!451146))))

(declare-fun bs!1913569 () Bool)

(assert (= bs!1913569 (and d!2268104 d!2268058)))

(assert (=> bs!1913569 (not (= lambda!451169 lambda!451155))))

(declare-fun bs!1913570 () Bool)

(assert (= bs!1913570 (and d!2268104 d!2268062)))

(assert (=> bs!1913570 (not (= lambda!451169 lambda!451156))))

(declare-fun bs!1913571 () Bool)

(assert (= bs!1913571 (and d!2268104 d!2268102)))

(assert (=> bs!1913571 (not (= lambda!451169 lambda!451166))))

(assert (=> d!2268104 (= (nullableContext!373 ct1!250) (forall!17701 (exprs!8323 ct1!250) lambda!451169))))

(declare-fun bs!1913572 () Bool)

(assert (= bs!1913572 d!2268104))

(declare-fun m!7971400 () Bool)

(assert (=> bs!1913572 m!7971400))

(assert (=> b!7298609 d!2268104))

(declare-fun b!7298711 () Bool)

(declare-fun e!4371451 () Bool)

(declare-fun tp!2062756 () Bool)

(declare-fun tp!2062757 () Bool)

(assert (=> b!7298711 (= e!4371451 (and tp!2062756 tp!2062757))))

(assert (=> b!7298606 (= tp!2062739 e!4371451)))

(assert (= (and b!7298606 ((_ is Cons!70959) (exprs!8323 ct1!250))) b!7298711))

(declare-fun b!7298712 () Bool)

(declare-fun e!4371452 () Bool)

(declare-fun tp!2062758 () Bool)

(declare-fun tp!2062759 () Bool)

(assert (=> b!7298712 (= e!4371452 (and tp!2062758 tp!2062759))))

(assert (=> b!7298611 (= tp!2062740 e!4371452)))

(assert (= (and b!7298611 ((_ is Cons!70959) (exprs!8323 ct2!346))) b!7298712))

(declare-fun b!7298717 () Bool)

(declare-fun e!4371455 () Bool)

(declare-fun tp!2062762 () Bool)

(assert (=> b!7298717 (= e!4371455 (and tp_is_empty!47231 tp!2062762))))

(assert (=> b!7298607 (= tp!2062738 e!4371455)))

(assert (= (and b!7298607 ((_ is Cons!70960) (t!385162 s!7854))) b!7298717))

(declare-fun b_lambda!281613 () Bool)

(assert (= b_lambda!281601 (or b!7298612 b_lambda!281613)))

(declare-fun bs!1913573 () Bool)

(declare-fun d!2268106 () Bool)

(assert (= bs!1913573 (and d!2268106 b!7298612)))

(assert (=> bs!1913573 (= (dynLambda!29018 lambda!451147 ct1!250) (derivationStepZipperUp!2633 ct1!250 (h!77408 s!7854)))))

(assert (=> bs!1913573 m!7971258))

(assert (=> d!2268072 d!2268106))

(declare-fun b_lambda!281615 () Bool)

(assert (= b_lambda!281611 (or b!7298612 b_lambda!281615)))

(declare-fun bs!1913574 () Bool)

(declare-fun d!2268108 () Bool)

(assert (= bs!1913574 (and d!2268108 b!7298612)))

(assert (=> bs!1913574 (= (dynLambda!29018 lambda!451147 lt!2599687) (derivationStepZipperUp!2633 lt!2599687 (h!77408 s!7854)))))

(assert (=> bs!1913574 m!7971250))

(assert (=> d!2268096 d!2268108))

(check-sat (not bs!1913573) (not d!2268076) (not bm!665243) (not b!7298712) (not d!2268094) (not d!2268096) (not d!2268064) (not b!7298699) (not b!7298711) tp_is_empty!47231 (not d!2268084) (not d!2268062) (not d!2268072) (not d!2268102) (not b_lambda!281613) (not bs!1913574) (not d!2268104) (not b_lambda!281615) (not b!7298700) (not b!7298626) (not d!2268100) (not b!7298717) (not d!2268048) (not bm!665242) (not b!7298658) (not b!7298661) (not b!7298627) (not d!2268058) (not b!7298702) (not b!7298705))
(check-sat)

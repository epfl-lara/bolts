; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!669070 () Bool)

(assert start!669070)

(declare-fun b!6977822 () Bool)

(assert (=> b!6977822 true))

(declare-fun b!6977818 () Bool)

(assert (=> b!6977818 true))

(declare-fun b!6977815 () Bool)

(declare-fun res!2845292 () Bool)

(declare-fun e!4193663 () Bool)

(assert (=> b!6977815 (=> res!2845292 e!4193663)))

(declare-datatypes ((C!34574 0))(
  ( (C!34575 (val!26989 Int)) )
))
(declare-datatypes ((Regex!17152 0))(
  ( (ElementMatch!17152 (c!1293341 C!34574)) (Concat!25997 (regOne!34816 Regex!17152) (regTwo!34816 Regex!17152)) (EmptyExpr!17152) (Star!17152 (reg!17481 Regex!17152)) (EmptyLang!17152) (Union!17152 (regOne!34817 Regex!17152) (regTwo!34817 Regex!17152)) )
))
(declare-datatypes ((List!67001 0))(
  ( (Nil!66877) (Cons!66877 (h!73325 Regex!17152) (t!380744 List!67001)) )
))
(declare-datatypes ((Context!12296 0))(
  ( (Context!12297 (exprs!6648 List!67001)) )
))
(declare-fun lt!2480367 () Context!12296)

(declare-fun lt!2480368 () (Set Context!12296))

(assert (=> b!6977815 (= res!2845292 (not (set.member lt!2480367 lt!2480368)))))

(declare-fun e!4193659 () Bool)

(declare-fun setRes!47398 () Bool)

(declare-fun setElem!47398 () Context!12296)

(declare-fun setNonEmpty!47398 () Bool)

(declare-fun tp!1927513 () Bool)

(declare-fun inv!85740 (Context!12296) Bool)

(assert (=> setNonEmpty!47398 (= setRes!47398 (and tp!1927513 (inv!85740 setElem!47398) e!4193659))))

(declare-fun z1!570 () (Set Context!12296))

(declare-fun setRest!47398 () (Set Context!12296))

(assert (=> setNonEmpty!47398 (= z1!570 (set.union (set.insert setElem!47398 (as set.empty (Set Context!12296))) setRest!47398))))

(declare-fun b!6977816 () Bool)

(declare-fun res!2845297 () Bool)

(declare-fun e!4193664 () Bool)

(assert (=> b!6977816 (=> (not res!2845297) (not e!4193664))))

(declare-datatypes ((List!67002 0))(
  ( (Nil!66878) (Cons!66878 (h!73326 C!34574) (t!380745 List!67002)) )
))
(declare-fun s!7408 () List!67002)

(assert (=> b!6977816 (= res!2845297 (is-Cons!66878 s!7408))))

(declare-fun b!6977817 () Bool)

(declare-fun e!4193662 () Bool)

(declare-fun tp_is_empty!43529 () Bool)

(declare-fun tp!1927515 () Bool)

(assert (=> b!6977817 (= e!4193662 (and tp_is_empty!43529 tp!1927515))))

(declare-fun res!2845295 () Bool)

(assert (=> start!669070 (=> (not res!2845295) (not e!4193664))))

(declare-fun matchZipper!2692 ((Set Context!12296) List!67002) Bool)

(assert (=> start!669070 (= res!2845295 (matchZipper!2692 lt!2480368 s!7408))))

(declare-fun ct2!306 () Context!12296)

(declare-fun appendTo!273 ((Set Context!12296) Context!12296) (Set Context!12296))

(assert (=> start!669070 (= lt!2480368 (appendTo!273 z1!570 ct2!306))))

(assert (=> start!669070 e!4193664))

(declare-fun condSetEmpty!47398 () Bool)

(assert (=> start!669070 (= condSetEmpty!47398 (= z1!570 (as set.empty (Set Context!12296))))))

(assert (=> start!669070 setRes!47398))

(declare-fun e!4193661 () Bool)

(assert (=> start!669070 (and (inv!85740 ct2!306) e!4193661)))

(assert (=> start!669070 e!4193662))

(declare-fun setIsEmpty!47398 () Bool)

(assert (=> setIsEmpty!47398 setRes!47398))

(declare-fun e!4193658 () Bool)

(assert (=> b!6977818 (= e!4193663 e!4193658)))

(declare-fun res!2845296 () Bool)

(assert (=> b!6977818 (=> res!2845296 e!4193658)))

(declare-fun lt!2480364 () Context!12296)

(declare-fun ++!15097 (List!67001 List!67001) List!67001)

(assert (=> b!6977818 (= res!2845296 (not (= (Context!12297 (++!15097 (exprs!6648 lt!2480364) (exprs!6648 ct2!306))) lt!2480367)))))

(declare-datatypes ((Unit!160953 0))(
  ( (Unit!160954) )
))
(declare-fun lt!2480366 () Unit!160953)

(declare-fun lambda!398344 () Int)

(declare-fun lemmaConcatPreservesForall!488 (List!67001 List!67001 Int) Unit!160953)

(assert (=> b!6977818 (= lt!2480366 (lemmaConcatPreservesForall!488 (exprs!6648 lt!2480364) (exprs!6648 ct2!306) lambda!398344))))

(declare-fun lambda!398343 () Int)

(declare-fun mapPost2!7 ((Set Context!12296) Int Context!12296) Context!12296)

(assert (=> b!6977818 (= lt!2480364 (mapPost2!7 z1!570 lambda!398343 lt!2480367))))

(declare-fun b!6977819 () Bool)

(declare-fun tp!1927514 () Bool)

(assert (=> b!6977819 (= e!4193659 tp!1927514)))

(declare-fun b!6977820 () Bool)

(declare-fun e!4193660 () Bool)

(assert (=> b!6977820 (= e!4193658 e!4193660)))

(declare-fun res!2845294 () Bool)

(assert (=> b!6977820 (=> res!2845294 e!4193660)))

(declare-fun forall!16029 (List!67001 Int) Bool)

(assert (=> b!6977820 (= res!2845294 (not (forall!16029 (exprs!6648 lt!2480364) lambda!398344)))))

(declare-fun b!6977821 () Bool)

(declare-fun tp!1927516 () Bool)

(assert (=> b!6977821 (= e!4193661 tp!1927516)))

(assert (=> b!6977822 (= e!4193664 (not e!4193663))))

(declare-fun res!2845291 () Bool)

(assert (=> b!6977822 (=> res!2845291 e!4193663)))

(assert (=> b!6977822 (= res!2845291 (not (matchZipper!2692 (set.insert lt!2480367 (as set.empty (Set Context!12296))) s!7408)))))

(declare-fun lambda!398342 () Int)

(declare-fun getWitness!1007 ((Set Context!12296) Int) Context!12296)

(assert (=> b!6977822 (= lt!2480367 (getWitness!1007 lt!2480368 lambda!398342))))

(declare-datatypes ((List!67003 0))(
  ( (Nil!66879) (Cons!66879 (h!73327 Context!12296) (t!380746 List!67003)) )
))
(declare-fun lt!2480369 () List!67003)

(declare-fun exists!2896 (List!67003 Int) Bool)

(assert (=> b!6977822 (exists!2896 lt!2480369 lambda!398342)))

(declare-fun lt!2480365 () Unit!160953)

(declare-fun lemmaZipperMatchesExistsMatchingContext!121 (List!67003 List!67002) Unit!160953)

(assert (=> b!6977822 (= lt!2480365 (lemmaZipperMatchesExistsMatchingContext!121 lt!2480369 s!7408))))

(declare-fun toList!10512 ((Set Context!12296)) List!67003)

(assert (=> b!6977822 (= lt!2480369 (toList!10512 lt!2480368))))

(declare-fun b!6977823 () Bool)

(assert (=> b!6977823 (= e!4193660 (forall!16029 (exprs!6648 ct2!306) lambda!398344))))

(declare-fun b!6977824 () Bool)

(declare-fun res!2845293 () Bool)

(assert (=> b!6977824 (=> res!2845293 e!4193658)))

(assert (=> b!6977824 (= res!2845293 (not (set.member lt!2480364 z1!570)))))

(assert (= (and start!669070 res!2845295) b!6977816))

(assert (= (and b!6977816 res!2845297) b!6977822))

(assert (= (and b!6977822 (not res!2845291)) b!6977815))

(assert (= (and b!6977815 (not res!2845292)) b!6977818))

(assert (= (and b!6977818 (not res!2845296)) b!6977824))

(assert (= (and b!6977824 (not res!2845293)) b!6977820))

(assert (= (and b!6977820 (not res!2845294)) b!6977823))

(assert (= (and start!669070 condSetEmpty!47398) setIsEmpty!47398))

(assert (= (and start!669070 (not condSetEmpty!47398)) setNonEmpty!47398))

(assert (= setNonEmpty!47398 b!6977819))

(assert (= start!669070 b!6977821))

(assert (= (and start!669070 (is-Cons!66878 s!7408)) b!6977817))

(declare-fun m!7663402 () Bool)

(assert (=> b!6977820 m!7663402))

(declare-fun m!7663404 () Bool)

(assert (=> b!6977822 m!7663404))

(declare-fun m!7663406 () Bool)

(assert (=> b!6977822 m!7663406))

(declare-fun m!7663408 () Bool)

(assert (=> b!6977822 m!7663408))

(assert (=> b!6977822 m!7663408))

(declare-fun m!7663410 () Bool)

(assert (=> b!6977822 m!7663410))

(declare-fun m!7663412 () Bool)

(assert (=> b!6977822 m!7663412))

(declare-fun m!7663414 () Bool)

(assert (=> b!6977822 m!7663414))

(declare-fun m!7663416 () Bool)

(assert (=> setNonEmpty!47398 m!7663416))

(declare-fun m!7663418 () Bool)

(assert (=> b!6977818 m!7663418))

(declare-fun m!7663420 () Bool)

(assert (=> b!6977818 m!7663420))

(declare-fun m!7663422 () Bool)

(assert (=> b!6977818 m!7663422))

(declare-fun m!7663424 () Bool)

(assert (=> b!6977823 m!7663424))

(declare-fun m!7663426 () Bool)

(assert (=> start!669070 m!7663426))

(declare-fun m!7663428 () Bool)

(assert (=> start!669070 m!7663428))

(declare-fun m!7663430 () Bool)

(assert (=> start!669070 m!7663430))

(declare-fun m!7663432 () Bool)

(assert (=> b!6977824 m!7663432))

(declare-fun m!7663434 () Bool)

(assert (=> b!6977815 m!7663434))

(push 1)

(assert (not start!669070))

(assert (not b!6977821))

(assert (not b!6977823))

(assert (not b!6977818))

(assert (not b!6977822))

(assert (not b!6977819))

(assert tp_is_empty!43529)

(assert (not setNonEmpty!47398))

(assert (not b!6977817))

(assert (not b!6977820))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6977872 () Bool)

(declare-fun e!4193691 () List!67001)

(assert (=> b!6977872 (= e!4193691 (Cons!66877 (h!73325 (exprs!6648 lt!2480364)) (++!15097 (t!380744 (exprs!6648 lt!2480364)) (exprs!6648 ct2!306))))))

(declare-fun b!6977871 () Bool)

(assert (=> b!6977871 (= e!4193691 (exprs!6648 ct2!306))))

(declare-fun d!2172604 () Bool)

(declare-fun e!4193690 () Bool)

(assert (=> d!2172604 e!4193690))

(declare-fun res!2845325 () Bool)

(assert (=> d!2172604 (=> (not res!2845325) (not e!4193690))))

(declare-fun lt!2480392 () List!67001)

(declare-fun content!13171 (List!67001) (Set Regex!17152))

(assert (=> d!2172604 (= res!2845325 (= (content!13171 lt!2480392) (set.union (content!13171 (exprs!6648 lt!2480364)) (content!13171 (exprs!6648 ct2!306)))))))

(assert (=> d!2172604 (= lt!2480392 e!4193691)))

(declare-fun c!1293351 () Bool)

(assert (=> d!2172604 (= c!1293351 (is-Nil!66877 (exprs!6648 lt!2480364)))))

(assert (=> d!2172604 (= (++!15097 (exprs!6648 lt!2480364) (exprs!6648 ct2!306)) lt!2480392)))

(declare-fun b!6977874 () Bool)

(assert (=> b!6977874 (= e!4193690 (or (not (= (exprs!6648 ct2!306) Nil!66877)) (= lt!2480392 (exprs!6648 lt!2480364))))))

(declare-fun b!6977873 () Bool)

(declare-fun res!2845326 () Bool)

(assert (=> b!6977873 (=> (not res!2845326) (not e!4193690))))

(declare-fun size!40860 (List!67001) Int)

(assert (=> b!6977873 (= res!2845326 (= (size!40860 lt!2480392) (+ (size!40860 (exprs!6648 lt!2480364)) (size!40860 (exprs!6648 ct2!306)))))))

(assert (= (and d!2172604 c!1293351) b!6977871))

(assert (= (and d!2172604 (not c!1293351)) b!6977872))

(assert (= (and d!2172604 res!2845325) b!6977873))

(assert (= (and b!6977873 res!2845326) b!6977874))

(declare-fun m!7663470 () Bool)

(assert (=> b!6977872 m!7663470))

(declare-fun m!7663472 () Bool)

(assert (=> d!2172604 m!7663472))

(declare-fun m!7663474 () Bool)

(assert (=> d!2172604 m!7663474))

(declare-fun m!7663476 () Bool)

(assert (=> d!2172604 m!7663476))

(declare-fun m!7663478 () Bool)

(assert (=> b!6977873 m!7663478))

(declare-fun m!7663480 () Bool)

(assert (=> b!6977873 m!7663480))

(declare-fun m!7663482 () Bool)

(assert (=> b!6977873 m!7663482))

(assert (=> b!6977818 d!2172604))

(declare-fun d!2172608 () Bool)

(assert (=> d!2172608 (forall!16029 (++!15097 (exprs!6648 lt!2480364) (exprs!6648 ct2!306)) lambda!398344)))

(declare-fun lt!2480395 () Unit!160953)

(declare-fun choose!51953 (List!67001 List!67001 Int) Unit!160953)

(assert (=> d!2172608 (= lt!2480395 (choose!51953 (exprs!6648 lt!2480364) (exprs!6648 ct2!306) lambda!398344))))

(assert (=> d!2172608 (forall!16029 (exprs!6648 lt!2480364) lambda!398344)))

(assert (=> d!2172608 (= (lemmaConcatPreservesForall!488 (exprs!6648 lt!2480364) (exprs!6648 ct2!306) lambda!398344) lt!2480395)))

(declare-fun bs!1860247 () Bool)

(assert (= bs!1860247 d!2172608))

(assert (=> bs!1860247 m!7663418))

(assert (=> bs!1860247 m!7663418))

(declare-fun m!7663486 () Bool)

(assert (=> bs!1860247 m!7663486))

(declare-fun m!7663488 () Bool)

(assert (=> bs!1860247 m!7663488))

(assert (=> bs!1860247 m!7663402))

(assert (=> b!6977818 d!2172608))

(declare-fun d!2172612 () Bool)

(declare-fun e!4193698 () Bool)

(assert (=> d!2172612 e!4193698))

(declare-fun res!2845333 () Bool)

(assert (=> d!2172612 (=> (not res!2845333) (not e!4193698))))

(declare-fun lt!2480398 () Context!12296)

(declare-fun dynLambda!26684 (Int Context!12296) Context!12296)

(assert (=> d!2172612 (= res!2845333 (= lt!2480367 (dynLambda!26684 lambda!398343 lt!2480398)))))

(declare-fun choose!51954 ((Set Context!12296) Int Context!12296) Context!12296)

(assert (=> d!2172612 (= lt!2480398 (choose!51954 z1!570 lambda!398343 lt!2480367))))

(declare-fun map!15402 ((Set Context!12296) Int) (Set Context!12296))

(assert (=> d!2172612 (set.member lt!2480367 (map!15402 z1!570 lambda!398343))))

(assert (=> d!2172612 (= (mapPost2!7 z1!570 lambda!398343 lt!2480367) lt!2480398)))

(declare-fun b!6977882 () Bool)

(assert (=> b!6977882 (= e!4193698 (set.member lt!2480398 z1!570))))

(assert (= (and d!2172612 res!2845333) b!6977882))

(declare-fun b_lambda!261175 () Bool)

(assert (=> (not b_lambda!261175) (not d!2172612)))

(declare-fun m!7663490 () Bool)

(assert (=> d!2172612 m!7663490))

(declare-fun m!7663492 () Bool)

(assert (=> d!2172612 m!7663492))

(declare-fun m!7663494 () Bool)

(assert (=> d!2172612 m!7663494))

(declare-fun m!7663496 () Bool)

(assert (=> d!2172612 m!7663496))

(declare-fun m!7663498 () Bool)

(assert (=> b!6977882 m!7663498))

(assert (=> b!6977818 d!2172612))

(declare-fun d!2172614 () Bool)

(declare-fun res!2845342 () Bool)

(declare-fun e!4193707 () Bool)

(assert (=> d!2172614 (=> res!2845342 e!4193707)))

(assert (=> d!2172614 (= res!2845342 (is-Nil!66877 (exprs!6648 ct2!306)))))

(assert (=> d!2172614 (= (forall!16029 (exprs!6648 ct2!306) lambda!398344) e!4193707)))

(declare-fun b!6977891 () Bool)

(declare-fun e!4193708 () Bool)

(assert (=> b!6977891 (= e!4193707 e!4193708)))

(declare-fun res!2845343 () Bool)

(assert (=> b!6977891 (=> (not res!2845343) (not e!4193708))))

(declare-fun dynLambda!26685 (Int Regex!17152) Bool)

(assert (=> b!6977891 (= res!2845343 (dynLambda!26685 lambda!398344 (h!73325 (exprs!6648 ct2!306))))))

(declare-fun b!6977892 () Bool)

(assert (=> b!6977892 (= e!4193708 (forall!16029 (t!380744 (exprs!6648 ct2!306)) lambda!398344))))

(assert (= (and d!2172614 (not res!2845342)) b!6977891))

(assert (= (and b!6977891 res!2845343) b!6977892))

(declare-fun b_lambda!261179 () Bool)

(assert (=> (not b_lambda!261179) (not b!6977891)))

(declare-fun m!7663504 () Bool)

(assert (=> b!6977891 m!7663504))

(declare-fun m!7663506 () Bool)

(assert (=> b!6977892 m!7663506))

(assert (=> b!6977823 d!2172614))

(declare-fun d!2172618 () Bool)

(declare-fun c!1293354 () Bool)

(declare-fun isEmpty!39044 (List!67002) Bool)

(assert (=> d!2172618 (= c!1293354 (isEmpty!39044 s!7408))))

(declare-fun e!4193711 () Bool)

(assert (=> d!2172618 (= (matchZipper!2692 (set.insert lt!2480367 (as set.empty (Set Context!12296))) s!7408) e!4193711)))

(declare-fun b!6977897 () Bool)

(declare-fun nullableZipper!2388 ((Set Context!12296)) Bool)

(assert (=> b!6977897 (= e!4193711 (nullableZipper!2388 (set.insert lt!2480367 (as set.empty (Set Context!12296)))))))

(declare-fun b!6977898 () Bool)

(declare-fun derivationStepZipper!2635 ((Set Context!12296) C!34574) (Set Context!12296))

(declare-fun head!14057 (List!67002) C!34574)

(declare-fun tail!13123 (List!67002) List!67002)

(assert (=> b!6977898 (= e!4193711 (matchZipper!2692 (derivationStepZipper!2635 (set.insert lt!2480367 (as set.empty (Set Context!12296))) (head!14057 s!7408)) (tail!13123 s!7408)))))

(assert (= (and d!2172618 c!1293354) b!6977897))

(assert (= (and d!2172618 (not c!1293354)) b!6977898))

(declare-fun m!7663512 () Bool)

(assert (=> d!2172618 m!7663512))

(assert (=> b!6977897 m!7663408))

(declare-fun m!7663514 () Bool)

(assert (=> b!6977897 m!7663514))

(declare-fun m!7663516 () Bool)

(assert (=> b!6977898 m!7663516))

(assert (=> b!6977898 m!7663408))

(assert (=> b!6977898 m!7663516))

(declare-fun m!7663518 () Bool)

(assert (=> b!6977898 m!7663518))

(declare-fun m!7663520 () Bool)

(assert (=> b!6977898 m!7663520))

(assert (=> b!6977898 m!7663518))

(assert (=> b!6977898 m!7663520))

(declare-fun m!7663522 () Bool)

(assert (=> b!6977898 m!7663522))

(assert (=> b!6977822 d!2172618))

(declare-fun bs!1860248 () Bool)

(declare-fun d!2172622 () Bool)

(assert (= bs!1860248 (and d!2172622 b!6977822)))

(declare-fun lambda!398365 () Int)

(assert (=> bs!1860248 (not (= lambda!398365 lambda!398342))))

(assert (=> d!2172622 true))

(declare-fun order!27809 () Int)

(declare-fun dynLambda!26686 (Int Int) Int)

(assert (=> d!2172622 (< (dynLambda!26686 order!27809 lambda!398342) (dynLambda!26686 order!27809 lambda!398365))))

(declare-fun forall!16031 (List!67003 Int) Bool)

(assert (=> d!2172622 (= (exists!2896 lt!2480369 lambda!398342) (not (forall!16031 lt!2480369 lambda!398365)))))

(declare-fun bs!1860249 () Bool)

(assert (= bs!1860249 d!2172622))

(declare-fun m!7663524 () Bool)

(assert (=> bs!1860249 m!7663524))

(assert (=> b!6977822 d!2172622))

(declare-fun d!2172624 () Bool)

(declare-fun e!4193718 () Bool)

(assert (=> d!2172624 e!4193718))

(declare-fun res!2845350 () Bool)

(assert (=> d!2172624 (=> (not res!2845350) (not e!4193718))))

(declare-fun lt!2480403 () Context!12296)

(declare-fun dynLambda!26687 (Int Context!12296) Bool)

(assert (=> d!2172624 (= res!2845350 (dynLambda!26687 lambda!398342 lt!2480403))))

(declare-fun getWitness!1009 (List!67003 Int) Context!12296)

(assert (=> d!2172624 (= lt!2480403 (getWitness!1009 (toList!10512 lt!2480368) lambda!398342))))

(declare-fun exists!2898 ((Set Context!12296) Int) Bool)

(assert (=> d!2172624 (exists!2898 lt!2480368 lambda!398342)))

(assert (=> d!2172624 (= (getWitness!1007 lt!2480368 lambda!398342) lt!2480403)))

(declare-fun b!6977911 () Bool)

(assert (=> b!6977911 (= e!4193718 (set.member lt!2480403 lt!2480368))))

(assert (= (and d!2172624 res!2845350) b!6977911))

(declare-fun b_lambda!261183 () Bool)

(assert (=> (not b_lambda!261183) (not d!2172624)))

(declare-fun m!7663526 () Bool)

(assert (=> d!2172624 m!7663526))

(assert (=> d!2172624 m!7663404))

(assert (=> d!2172624 m!7663404))

(declare-fun m!7663528 () Bool)

(assert (=> d!2172624 m!7663528))

(declare-fun m!7663530 () Bool)

(assert (=> d!2172624 m!7663530))

(declare-fun m!7663532 () Bool)

(assert (=> b!6977911 m!7663532))

(assert (=> b!6977822 d!2172624))

(declare-fun d!2172626 () Bool)

(declare-fun e!4193723 () Bool)

(assert (=> d!2172626 e!4193723))

(declare-fun res!2845355 () Bool)

(assert (=> d!2172626 (=> (not res!2845355) (not e!4193723))))

(declare-fun lt!2480407 () List!67003)

(declare-fun noDuplicate!2479 (List!67003) Bool)

(assert (=> d!2172626 (= res!2845355 (noDuplicate!2479 lt!2480407))))

(declare-fun choose!51955 ((Set Context!12296)) List!67003)

(assert (=> d!2172626 (= lt!2480407 (choose!51955 lt!2480368))))

(assert (=> d!2172626 (= (toList!10512 lt!2480368) lt!2480407)))

(declare-fun b!6977918 () Bool)

(declare-fun content!13172 (List!67003) (Set Context!12296))

(assert (=> b!6977918 (= e!4193723 (= (content!13172 lt!2480407) lt!2480368))))

(assert (= (and d!2172626 res!2845355) b!6977918))

(declare-fun m!7663544 () Bool)

(assert (=> d!2172626 m!7663544))

(declare-fun m!7663546 () Bool)

(assert (=> d!2172626 m!7663546))

(declare-fun m!7663550 () Bool)

(assert (=> b!6977918 m!7663550))

(assert (=> b!6977822 d!2172626))

(declare-fun bs!1860250 () Bool)

(declare-fun d!2172628 () Bool)

(assert (= bs!1860250 (and d!2172628 b!6977822)))

(declare-fun lambda!398368 () Int)

(assert (=> bs!1860250 (= lambda!398368 lambda!398342)))

(declare-fun bs!1860251 () Bool)

(assert (= bs!1860251 (and d!2172628 d!2172622)))

(assert (=> bs!1860251 (not (= lambda!398368 lambda!398365))))

(assert (=> d!2172628 true))

(assert (=> d!2172628 (exists!2896 lt!2480369 lambda!398368)))

(declare-fun lt!2480412 () Unit!160953)

(declare-fun choose!51956 (List!67003 List!67002) Unit!160953)

(assert (=> d!2172628 (= lt!2480412 (choose!51956 lt!2480369 s!7408))))

(assert (=> d!2172628 (matchZipper!2692 (content!13172 lt!2480369) s!7408)))

(assert (=> d!2172628 (= (lemmaZipperMatchesExistsMatchingContext!121 lt!2480369 s!7408) lt!2480412)))

(declare-fun bs!1860252 () Bool)

(assert (= bs!1860252 d!2172628))

(declare-fun m!7663554 () Bool)

(assert (=> bs!1860252 m!7663554))

(declare-fun m!7663556 () Bool)

(assert (=> bs!1860252 m!7663556))

(declare-fun m!7663558 () Bool)

(assert (=> bs!1860252 m!7663558))

(assert (=> bs!1860252 m!7663558))

(declare-fun m!7663560 () Bool)

(assert (=> bs!1860252 m!7663560))

(assert (=> b!6977822 d!2172628))

(declare-fun d!2172632 () Bool)

(declare-fun c!1293360 () Bool)

(assert (=> d!2172632 (= c!1293360 (isEmpty!39044 s!7408))))

(declare-fun e!4193724 () Bool)

(assert (=> d!2172632 (= (matchZipper!2692 lt!2480368 s!7408) e!4193724)))

(declare-fun b!6977919 () Bool)

(assert (=> b!6977919 (= e!4193724 (nullableZipper!2388 lt!2480368))))

(declare-fun b!6977920 () Bool)

(assert (=> b!6977920 (= e!4193724 (matchZipper!2692 (derivationStepZipper!2635 lt!2480368 (head!14057 s!7408)) (tail!13123 s!7408)))))

(assert (= (and d!2172632 c!1293360) b!6977919))

(assert (= (and d!2172632 (not c!1293360)) b!6977920))

(assert (=> d!2172632 m!7663512))

(declare-fun m!7663562 () Bool)

(assert (=> b!6977919 m!7663562))

(assert (=> b!6977920 m!7663516))

(assert (=> b!6977920 m!7663516))

(declare-fun m!7663566 () Bool)

(assert (=> b!6977920 m!7663566))

(assert (=> b!6977920 m!7663520))

(assert (=> b!6977920 m!7663566))

(assert (=> b!6977920 m!7663520))

(declare-fun m!7663570 () Bool)

(assert (=> b!6977920 m!7663570))

(assert (=> start!669070 d!2172632))

(declare-fun bs!1860254 () Bool)

(declare-fun d!2172634 () Bool)

(assert (= bs!1860254 (and d!2172634 b!6977818)))

(declare-fun lambda!398373 () Int)

(assert (=> bs!1860254 (= lambda!398373 lambda!398343)))

(assert (=> d!2172634 true))

(assert (=> d!2172634 (= (appendTo!273 z1!570 ct2!306) (map!15402 z1!570 lambda!398373))))

(declare-fun bs!1860255 () Bool)

(assert (= bs!1860255 d!2172634))

(declare-fun m!7663572 () Bool)

(assert (=> bs!1860255 m!7663572))

(assert (=> start!669070 d!2172634))

(declare-fun bs!1860256 () Bool)

(declare-fun d!2172638 () Bool)

(assert (= bs!1860256 (and d!2172638 b!6977818)))

(declare-fun lambda!398376 () Int)

(assert (=> bs!1860256 (= lambda!398376 lambda!398344)))

(assert (=> d!2172638 (= (inv!85740 ct2!306) (forall!16029 (exprs!6648 ct2!306) lambda!398376))))

(declare-fun bs!1860257 () Bool)

(assert (= bs!1860257 d!2172638))

(declare-fun m!7663574 () Bool)

(assert (=> bs!1860257 m!7663574))

(assert (=> start!669070 d!2172638))

(declare-fun d!2172640 () Bool)

(declare-fun res!2845358 () Bool)

(declare-fun e!4193727 () Bool)

(assert (=> d!2172640 (=> res!2845358 e!4193727)))

(assert (=> d!2172640 (= res!2845358 (is-Nil!66877 (exprs!6648 lt!2480364)))))

(assert (=> d!2172640 (= (forall!16029 (exprs!6648 lt!2480364) lambda!398344) e!4193727)))

(declare-fun b!6977924 () Bool)

(declare-fun e!4193728 () Bool)

(assert (=> b!6977924 (= e!4193727 e!4193728)))

(declare-fun res!2845359 () Bool)

(assert (=> b!6977924 (=> (not res!2845359) (not e!4193728))))

(assert (=> b!6977924 (= res!2845359 (dynLambda!26685 lambda!398344 (h!73325 (exprs!6648 lt!2480364))))))

(declare-fun b!6977925 () Bool)

(assert (=> b!6977925 (= e!4193728 (forall!16029 (t!380744 (exprs!6648 lt!2480364)) lambda!398344))))

(assert (= (and d!2172640 (not res!2845358)) b!6977924))

(assert (= (and b!6977924 res!2845359) b!6977925))

(declare-fun b_lambda!261185 () Bool)

(assert (=> (not b_lambda!261185) (not b!6977924)))

(declare-fun m!7663576 () Bool)

(assert (=> b!6977924 m!7663576))

(declare-fun m!7663578 () Bool)

(assert (=> b!6977925 m!7663578))

(assert (=> b!6977820 d!2172640))

(declare-fun bs!1860258 () Bool)

(declare-fun d!2172642 () Bool)

(assert (= bs!1860258 (and d!2172642 b!6977818)))

(declare-fun lambda!398377 () Int)

(assert (=> bs!1860258 (= lambda!398377 lambda!398344)))

(declare-fun bs!1860259 () Bool)

(assert (= bs!1860259 (and d!2172642 d!2172638)))

(assert (=> bs!1860259 (= lambda!398377 lambda!398376)))

(assert (=> d!2172642 (= (inv!85740 setElem!47398) (forall!16029 (exprs!6648 setElem!47398) lambda!398377))))

(declare-fun bs!1860260 () Bool)

(assert (= bs!1860260 d!2172642))

(declare-fun m!7663580 () Bool)

(assert (=> bs!1860260 m!7663580))

(assert (=> setNonEmpty!47398 d!2172642))

(declare-fun b!6977931 () Bool)

(declare-fun e!4193732 () Bool)

(declare-fun tp!1927531 () Bool)

(assert (=> b!6977931 (= e!4193732 (and tp_is_empty!43529 tp!1927531))))

(assert (=> b!6977817 (= tp!1927515 e!4193732)))

(assert (= (and b!6977817 (is-Cons!66878 (t!380745 s!7408))) b!6977931))

(declare-fun b!6977936 () Bool)

(declare-fun e!4193735 () Bool)

(declare-fun tp!1927536 () Bool)

(declare-fun tp!1927537 () Bool)

(assert (=> b!6977936 (= e!4193735 (and tp!1927536 tp!1927537))))

(assert (=> b!6977821 (= tp!1927516 e!4193735)))

(assert (= (and b!6977821 (is-Cons!66877 (exprs!6648 ct2!306))) b!6977936))

(declare-fun condSetEmpty!47404 () Bool)

(assert (=> setNonEmpty!47398 (= condSetEmpty!47404 (= setRest!47398 (as set.empty (Set Context!12296))))))

(declare-fun setRes!47404 () Bool)

(assert (=> setNonEmpty!47398 (= tp!1927513 setRes!47404)))

(declare-fun setIsEmpty!47404 () Bool)

(assert (=> setIsEmpty!47404 setRes!47404))

(declare-fun setElem!47404 () Context!12296)

(declare-fun e!4193738 () Bool)

(declare-fun setNonEmpty!47404 () Bool)

(declare-fun tp!1927542 () Bool)

(assert (=> setNonEmpty!47404 (= setRes!47404 (and tp!1927542 (inv!85740 setElem!47404) e!4193738))))

(declare-fun setRest!47404 () (Set Context!12296))

(assert (=> setNonEmpty!47404 (= setRest!47398 (set.union (set.insert setElem!47404 (as set.empty (Set Context!12296))) setRest!47404))))

(declare-fun b!6977941 () Bool)

(declare-fun tp!1927543 () Bool)

(assert (=> b!6977941 (= e!4193738 tp!1927543)))

(assert (= (and setNonEmpty!47398 condSetEmpty!47404) setIsEmpty!47404))

(assert (= (and setNonEmpty!47398 (not condSetEmpty!47404)) setNonEmpty!47404))

(assert (= setNonEmpty!47404 b!6977941))

(declare-fun m!7663592 () Bool)

(assert (=> setNonEmpty!47404 m!7663592))

(declare-fun b!6977942 () Bool)

(declare-fun e!4193739 () Bool)

(declare-fun tp!1927544 () Bool)

(declare-fun tp!1927545 () Bool)

(assert (=> b!6977942 (= e!4193739 (and tp!1927544 tp!1927545))))

(assert (=> b!6977819 (= tp!1927514 e!4193739)))

(assert (= (and b!6977819 (is-Cons!66877 (exprs!6648 setElem!47398))) b!6977942))

(declare-fun b_lambda!261189 () Bool)

(assert (= b_lambda!261175 (or b!6977818 b_lambda!261189)))

(declare-fun bs!1860261 () Bool)

(declare-fun d!2172646 () Bool)

(assert (= bs!1860261 (and d!2172646 b!6977818)))

(declare-fun lt!2480419 () Unit!160953)

(assert (=> bs!1860261 (= lt!2480419 (lemmaConcatPreservesForall!488 (exprs!6648 lt!2480398) (exprs!6648 ct2!306) lambda!398344))))

(assert (=> bs!1860261 (= (dynLambda!26684 lambda!398343 lt!2480398) (Context!12297 (++!15097 (exprs!6648 lt!2480398) (exprs!6648 ct2!306))))))

(declare-fun m!7663594 () Bool)

(assert (=> bs!1860261 m!7663594))

(declare-fun m!7663596 () Bool)

(assert (=> bs!1860261 m!7663596))

(assert (=> d!2172612 d!2172646))

(declare-fun b_lambda!261191 () Bool)

(assert (= b_lambda!261179 (or b!6977818 b_lambda!261191)))

(declare-fun bs!1860262 () Bool)

(declare-fun d!2172648 () Bool)

(assert (= bs!1860262 (and d!2172648 b!6977818)))

(declare-fun validRegex!8825 (Regex!17152) Bool)

(assert (=> bs!1860262 (= (dynLambda!26685 lambda!398344 (h!73325 (exprs!6648 ct2!306))) (validRegex!8825 (h!73325 (exprs!6648 ct2!306))))))

(declare-fun m!7663598 () Bool)

(assert (=> bs!1860262 m!7663598))

(assert (=> b!6977891 d!2172648))

(declare-fun b_lambda!261193 () Bool)

(assert (= b_lambda!261185 (or b!6977818 b_lambda!261193)))

(declare-fun bs!1860263 () Bool)

(declare-fun d!2172650 () Bool)

(assert (= bs!1860263 (and d!2172650 b!6977818)))

(assert (=> bs!1860263 (= (dynLambda!26685 lambda!398344 (h!73325 (exprs!6648 lt!2480364))) (validRegex!8825 (h!73325 (exprs!6648 lt!2480364))))))

(declare-fun m!7663600 () Bool)

(assert (=> bs!1860263 m!7663600))

(assert (=> b!6977924 d!2172650))

(declare-fun b_lambda!261195 () Bool)

(assert (= b_lambda!261183 (or b!6977822 b_lambda!261195)))

(declare-fun bs!1860264 () Bool)

(declare-fun d!2172652 () Bool)

(assert (= bs!1860264 (and d!2172652 b!6977822)))

(assert (=> bs!1860264 (= (dynLambda!26687 lambda!398342 lt!2480403) (matchZipper!2692 (set.insert lt!2480403 (as set.empty (Set Context!12296))) s!7408))))

(declare-fun m!7663602 () Bool)

(assert (=> bs!1860264 m!7663602))

(assert (=> bs!1860264 m!7663602))

(declare-fun m!7663604 () Bool)

(assert (=> bs!1860264 m!7663604))

(assert (=> d!2172624 d!2172652))

(push 1)

(assert (not d!2172642))

(assert (not bs!1860264))

(assert (not b!6977931))

(assert (not d!2172634))

(assert (not b!6977920))

(assert (not d!2172626))

(assert (not b!6977919))

(assert (not b!6977936))

(assert (not b!6977897))

(assert (not bs!1860263))

(assert (not b_lambda!261189))

(assert (not d!2172622))

(assert (not setNonEmpty!47404))

(assert (not b_lambda!261191))

(assert (not d!2172632))

(assert (not d!2172608))

(assert (not b!6977941))

(assert (not bs!1860262))

(assert (not d!2172604))

(assert (not b!6977873))

(assert (not b!6977925))

(assert (not b_lambda!261193))

(assert (not bs!1860261))

(assert tp_is_empty!43529)

(assert (not d!2172618))

(assert (not d!2172624))

(assert (not d!2172612))

(assert (not b!6977892))

(assert (not d!2172628))

(assert (not b_lambda!261195))

(assert (not d!2172638))

(assert (not b!6977942))

(assert (not b!6977872))

(assert (not b!6977918))

(assert (not b!6977898))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


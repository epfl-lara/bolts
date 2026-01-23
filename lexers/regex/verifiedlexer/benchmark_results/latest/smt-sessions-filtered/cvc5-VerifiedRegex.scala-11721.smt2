; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!662282 () Bool)

(assert start!662282)

(declare-fun b!6859549 () Bool)

(assert (=> b!6859549 true))

(declare-fun b!6859551 () Bool)

(assert (=> b!6859551 true))

(declare-fun bs!1833204 () Bool)

(declare-fun b!6859548 () Bool)

(assert (= bs!1833204 (and b!6859548 b!6859549)))

(declare-fun lambda!387934 () Int)

(declare-fun lambda!387932 () Int)

(assert (=> bs!1833204 (not (= lambda!387934 lambda!387932))))

(declare-fun b!6859534 () Bool)

(declare-fun e!4135699 () Bool)

(declare-fun tp_is_empty!42629 () Bool)

(assert (=> b!6859534 (= e!4135699 tp_is_empty!42629)))

(declare-fun b!6859535 () Bool)

(declare-fun res!2799009 () Bool)

(declare-fun e!4135709 () Bool)

(assert (=> b!6859535 (=> (not res!2799009) (not e!4135709))))

(declare-datatypes ((C!33646 0))(
  ( (C!33647 (val!26525 Int)) )
))
(declare-datatypes ((Regex!16688 0))(
  ( (ElementMatch!16688 (c!1276846 C!33646)) (Concat!25533 (regOne!33888 Regex!16688) (regTwo!33888 Regex!16688)) (EmptyExpr!16688) (Star!16688 (reg!17017 Regex!16688)) (EmptyLang!16688) (Union!16688 (regOne!33889 Regex!16688) (regTwo!33889 Regex!16688)) )
))
(declare-datatypes ((List!66363 0))(
  ( (Nil!66239) (Cons!66239 (h!72687 Regex!16688) (t!380106 List!66363)) )
))
(declare-datatypes ((Context!12144 0))(
  ( (Context!12145 (exprs!6572 List!66363)) )
))
(declare-fun z!1189 () (Set Context!12144))

(declare-datatypes ((List!66364 0))(
  ( (Nil!66240) (Cons!66240 (h!72688 Context!12144) (t!380107 List!66364)) )
))
(declare-fun zl!343 () List!66364)

(declare-fun toList!10472 ((Set Context!12144)) List!66364)

(assert (=> b!6859535 (= res!2799009 (= (toList!10472 z!1189) zl!343))))

(declare-fun b!6859536 () Bool)

(declare-fun e!4135701 () Bool)

(assert (=> b!6859536 (= e!4135709 (not e!4135701))))

(declare-fun res!2799014 () Bool)

(assert (=> b!6859536 (=> res!2799014 e!4135701)))

(declare-fun e!4135700 () Bool)

(assert (=> b!6859536 (= res!2799014 e!4135700)))

(declare-fun res!2799011 () Bool)

(assert (=> b!6859536 (=> (not res!2799011) (not e!4135700))))

(assert (=> b!6859536 (= res!2799011 (is-Cons!66240 zl!343))))

(declare-fun lt!2457284 () Bool)

(declare-fun r!7292 () Regex!16688)

(declare-datatypes ((List!66365 0))(
  ( (Nil!66241) (Cons!66241 (h!72689 C!33646) (t!380108 List!66365)) )
))
(declare-fun s!2326 () List!66365)

(declare-fun matchRSpec!3789 (Regex!16688 List!66365) Bool)

(assert (=> b!6859536 (= lt!2457284 (matchRSpec!3789 r!7292 s!2326))))

(declare-fun matchR!8871 (Regex!16688 List!66365) Bool)

(assert (=> b!6859536 (= lt!2457284 (matchR!8871 r!7292 s!2326))))

(declare-datatypes ((Unit!160131 0))(
  ( (Unit!160132) )
))
(declare-fun lt!2457288 () Unit!160131)

(declare-fun mainMatchTheorem!3789 (Regex!16688 List!66365) Unit!160131)

(assert (=> b!6859536 (= lt!2457288 (mainMatchTheorem!3789 r!7292 s!2326))))

(declare-fun b!6859537 () Bool)

(declare-fun e!4135708 () Bool)

(declare-fun tp!1881075 () Bool)

(assert (=> b!6859537 (= e!4135708 tp!1881075)))

(declare-fun res!2799013 () Bool)

(assert (=> start!662282 (=> (not res!2799013) (not e!4135709))))

(declare-fun validRegex!8424 (Regex!16688) Bool)

(assert (=> start!662282 (= res!2799013 (validRegex!8424 r!7292))))

(assert (=> start!662282 e!4135709))

(assert (=> start!662282 e!4135699))

(declare-fun condSetEmpty!47166 () Bool)

(assert (=> start!662282 (= condSetEmpty!47166 (= z!1189 (as set.empty (Set Context!12144))))))

(declare-fun setRes!47166 () Bool)

(assert (=> start!662282 setRes!47166))

(declare-fun e!4135707 () Bool)

(assert (=> start!662282 e!4135707))

(declare-fun e!4135706 () Bool)

(assert (=> start!662282 e!4135706))

(declare-fun b!6859538 () Bool)

(declare-fun tp!1881077 () Bool)

(assert (=> b!6859538 (= e!4135706 (and tp_is_empty!42629 tp!1881077))))

(declare-fun b!6859539 () Bool)

(declare-fun tp!1881070 () Bool)

(declare-fun tp!1881072 () Bool)

(assert (=> b!6859539 (= e!4135699 (and tp!1881070 tp!1881072))))

(declare-fun b!6859540 () Bool)

(declare-fun res!2799016 () Bool)

(declare-fun e!4135704 () Bool)

(assert (=> b!6859540 (=> res!2799016 e!4135704)))

(declare-fun matchZipper!2654 ((Set Context!12144) List!66365) Bool)

(assert (=> b!6859540 (= res!2799016 (not (matchZipper!2654 z!1189 s!2326)))))

(declare-fun b!6859541 () Bool)

(declare-fun res!2799018 () Bool)

(assert (=> b!6859541 (=> res!2799018 e!4135704)))

(declare-fun lt!2457285 () List!66363)

(declare-fun exists!2806 (List!66363 Int) Bool)

(assert (=> b!6859541 (= res!2799018 (exists!2806 lt!2457285 lambda!387932))))

(declare-fun b!6859542 () Bool)

(declare-fun tp!1881073 () Bool)

(assert (=> b!6859542 (= e!4135699 tp!1881073)))

(declare-fun b!6859543 () Bool)

(declare-fun isEmpty!38602 (List!66364) Bool)

(assert (=> b!6859543 (= e!4135700 (isEmpty!38602 (t!380107 zl!343)))))

(declare-fun b!6859544 () Bool)

(declare-fun tp!1881076 () Bool)

(declare-fun e!4135705 () Bool)

(declare-fun inv!84968 (Context!12144) Bool)

(assert (=> b!6859544 (= e!4135707 (and (inv!84968 (h!72688 zl!343)) e!4135705 tp!1881076))))

(declare-fun setIsEmpty!47166 () Bool)

(assert (=> setIsEmpty!47166 setRes!47166))

(declare-fun b!6859545 () Bool)

(declare-fun res!2799017 () Bool)

(assert (=> b!6859545 (=> (not res!2799017) (not e!4135709))))

(declare-fun unfocusZipper!2430 (List!66364) Regex!16688)

(assert (=> b!6859545 (= res!2799017 (= r!7292 (unfocusZipper!2430 zl!343)))))

(declare-fun tp!1881069 () Bool)

(declare-fun setElem!47166 () Context!12144)

(declare-fun setNonEmpty!47166 () Bool)

(assert (=> setNonEmpty!47166 (= setRes!47166 (and tp!1881069 (inv!84968 setElem!47166) e!4135708))))

(declare-fun setRest!47166 () (Set Context!12144))

(assert (=> setNonEmpty!47166 (= z!1189 (set.union (set.insert setElem!47166 (as set.empty (Set Context!12144))) setRest!47166))))

(declare-fun b!6859546 () Bool)

(declare-fun res!2799008 () Bool)

(assert (=> b!6859546 (=> res!2799008 e!4135701)))

(assert (=> b!6859546 (= res!2799008 (isEmpty!38602 (t!380107 zl!343)))))

(declare-fun b!6859547 () Bool)

(declare-fun e!4135703 () Bool)

(declare-fun lt!2457286 () Context!12144)

(declare-fun contains!20346 (List!66364 Context!12144) Bool)

(assert (=> b!6859547 (= e!4135703 (contains!20346 zl!343 lt!2457286))))

(declare-fun e!4135702 () Bool)

(assert (=> b!6859548 (= e!4135702 e!4135703)))

(declare-fun res!2799007 () Bool)

(assert (=> b!6859548 (=> res!2799007 e!4135703)))

(declare-fun forall!15873 (List!66363 Int) Bool)

(assert (=> b!6859548 (= res!2799007 (not (forall!15873 (exprs!6572 lt!2457286) lambda!387934)))))

(assert (=> b!6859548 (forall!15873 (exprs!6572 lt!2457286) lambda!387934)))

(declare-fun lt!2457287 () Unit!160131)

(declare-fun lemmaContextForallValidExprs!63 (Context!12144 List!66363) Unit!160131)

(assert (=> b!6859548 (= lt!2457287 (lemmaContextForallValidExprs!63 lt!2457286 (exprs!6572 lt!2457286)))))

(declare-fun lambda!387933 () Int)

(declare-fun getWitness!967 (List!66364 Int) Context!12144)

(assert (=> b!6859548 (= lt!2457286 (getWitness!967 zl!343 lambda!387933))))

(assert (=> b!6859549 (= e!4135701 e!4135704)))

(declare-fun res!2799012 () Bool)

(assert (=> b!6859549 (=> res!2799012 e!4135704)))

(assert (=> b!6859549 (= res!2799012 lt!2457284)))

(assert (=> b!6859549 (= lt!2457284 (exists!2806 lt!2457285 lambda!387932))))

(declare-fun lt!2457289 () Unit!160131)

(declare-fun matchRGenUnionSpec!327 (Regex!16688 List!66363 List!66365) Unit!160131)

(assert (=> b!6859549 (= lt!2457289 (matchRGenUnionSpec!327 r!7292 lt!2457285 s!2326))))

(declare-fun unfocusZipperList!2105 (List!66364) List!66363)

(assert (=> b!6859549 (= lt!2457285 (unfocusZipperList!2105 zl!343))))

(declare-fun b!6859550 () Bool)

(declare-fun tp!1881074 () Bool)

(assert (=> b!6859550 (= e!4135705 tp!1881074)))

(assert (=> b!6859551 (= e!4135704 e!4135702)))

(declare-fun res!2799015 () Bool)

(assert (=> b!6859551 (=> res!2799015 e!4135702)))

(declare-fun exists!2807 (List!66364 Int) Bool)

(assert (=> b!6859551 (= res!2799015 (not (exists!2807 zl!343 lambda!387933)))))

(assert (=> b!6859551 (exists!2807 zl!343 lambda!387933)))

(declare-fun lt!2457283 () Unit!160131)

(declare-fun lemmaZipperMatchesExistsMatchingContext!87 (List!66364 List!66365) Unit!160131)

(assert (=> b!6859551 (= lt!2457283 (lemmaZipperMatchesExistsMatchingContext!87 zl!343 s!2326))))

(declare-fun b!6859552 () Bool)

(declare-fun tp!1881068 () Bool)

(declare-fun tp!1881071 () Bool)

(assert (=> b!6859552 (= e!4135699 (and tp!1881068 tp!1881071))))

(declare-fun b!6859553 () Bool)

(declare-fun res!2799010 () Bool)

(assert (=> b!6859553 (=> res!2799010 e!4135701)))

(assert (=> b!6859553 (= res!2799010 (or (not (is-Cons!66240 zl!343)) (is-Nil!66241 s!2326) (not (= zl!343 (Cons!66240 (h!72688 zl!343) (t!380107 zl!343))))))))

(assert (= (and start!662282 res!2799013) b!6859535))

(assert (= (and b!6859535 res!2799009) b!6859545))

(assert (= (and b!6859545 res!2799017) b!6859536))

(assert (= (and b!6859536 res!2799011) b!6859543))

(assert (= (and b!6859536 (not res!2799014)) b!6859553))

(assert (= (and b!6859553 (not res!2799010)) b!6859546))

(assert (= (and b!6859546 (not res!2799008)) b!6859549))

(assert (= (and b!6859549 (not res!2799012)) b!6859541))

(assert (= (and b!6859541 (not res!2799018)) b!6859540))

(assert (= (and b!6859540 (not res!2799016)) b!6859551))

(assert (= (and b!6859551 (not res!2799015)) b!6859548))

(assert (= (and b!6859548 (not res!2799007)) b!6859547))

(assert (= (and start!662282 (is-ElementMatch!16688 r!7292)) b!6859534))

(assert (= (and start!662282 (is-Concat!25533 r!7292)) b!6859552))

(assert (= (and start!662282 (is-Star!16688 r!7292)) b!6859542))

(assert (= (and start!662282 (is-Union!16688 r!7292)) b!6859539))

(assert (= (and start!662282 condSetEmpty!47166) setIsEmpty!47166))

(assert (= (and start!662282 (not condSetEmpty!47166)) setNonEmpty!47166))

(assert (= setNonEmpty!47166 b!6859537))

(assert (= b!6859544 b!6859550))

(assert (= (and start!662282 (is-Cons!66240 zl!343)) b!6859544))

(assert (= (and start!662282 (is-Cons!66241 s!2326)) b!6859538))

(declare-fun m!7594596 () Bool)

(assert (=> b!6859541 m!7594596))

(declare-fun m!7594598 () Bool)

(assert (=> b!6859547 m!7594598))

(declare-fun m!7594600 () Bool)

(assert (=> b!6859544 m!7594600))

(declare-fun m!7594602 () Bool)

(assert (=> start!662282 m!7594602))

(declare-fun m!7594604 () Bool)

(assert (=> b!6859540 m!7594604))

(declare-fun m!7594606 () Bool)

(assert (=> b!6859546 m!7594606))

(declare-fun m!7594608 () Bool)

(assert (=> b!6859536 m!7594608))

(declare-fun m!7594610 () Bool)

(assert (=> b!6859536 m!7594610))

(declare-fun m!7594612 () Bool)

(assert (=> b!6859536 m!7594612))

(assert (=> b!6859549 m!7594596))

(declare-fun m!7594614 () Bool)

(assert (=> b!6859549 m!7594614))

(declare-fun m!7594616 () Bool)

(assert (=> b!6859549 m!7594616))

(declare-fun m!7594618 () Bool)

(assert (=> b!6859551 m!7594618))

(assert (=> b!6859551 m!7594618))

(declare-fun m!7594620 () Bool)

(assert (=> b!6859551 m!7594620))

(assert (=> b!6859543 m!7594606))

(declare-fun m!7594622 () Bool)

(assert (=> setNonEmpty!47166 m!7594622))

(declare-fun m!7594624 () Bool)

(assert (=> b!6859535 m!7594624))

(declare-fun m!7594626 () Bool)

(assert (=> b!6859548 m!7594626))

(assert (=> b!6859548 m!7594626))

(declare-fun m!7594628 () Bool)

(assert (=> b!6859548 m!7594628))

(declare-fun m!7594630 () Bool)

(assert (=> b!6859548 m!7594630))

(declare-fun m!7594632 () Bool)

(assert (=> b!6859545 m!7594632))

(push 1)

(assert (not b!6859542))

(assert tp_is_empty!42629)

(assert (not b!6859540))

(assert (not b!6859536))

(assert (not b!6859541))

(assert (not b!6859547))

(assert (not b!6859550))

(assert (not b!6859543))

(assert (not start!662282))

(assert (not b!6859545))

(assert (not b!6859538))

(assert (not b!6859539))

(assert (not b!6859546))

(assert (not setNonEmpty!47166))

(assert (not b!6859537))

(assert (not b!6859552))

(assert (not b!6859535))

(assert (not b!6859551))

(assert (not b!6859549))

(assert (not b!6859544))

(assert (not b!6859548))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2155334 () Bool)

(assert (=> d!2155334 (= (isEmpty!38602 (t!380107 zl!343)) (is-Nil!66240 (t!380107 zl!343)))))

(assert (=> b!6859543 d!2155334))

(declare-fun bs!1833206 () Bool)

(declare-fun d!2155336 () Bool)

(assert (= bs!1833206 (and d!2155336 b!6859549)))

(declare-fun lambda!387954 () Int)

(assert (=> bs!1833206 (not (= lambda!387954 lambda!387932))))

(declare-fun bs!1833207 () Bool)

(assert (= bs!1833207 (and d!2155336 b!6859548)))

(assert (=> bs!1833207 (= lambda!387954 lambda!387934)))

(assert (=> d!2155336 (= (inv!84968 (h!72688 zl!343)) (forall!15873 (exprs!6572 (h!72688 zl!343)) lambda!387954))))

(declare-fun bs!1833208 () Bool)

(assert (= bs!1833208 d!2155336))

(declare-fun m!7594672 () Bool)

(assert (=> bs!1833208 m!7594672))

(assert (=> b!6859544 d!2155336))

(declare-fun bs!1833209 () Bool)

(declare-fun d!2155338 () Bool)

(assert (= bs!1833209 (and d!2155338 b!6859551)))

(declare-fun lambda!387957 () Int)

(assert (=> bs!1833209 (not (= lambda!387957 lambda!387933))))

(assert (=> d!2155338 true))

(declare-fun order!27693 () Int)

(declare-fun dynLambda!26493 (Int Int) Int)

(assert (=> d!2155338 (< (dynLambda!26493 order!27693 lambda!387933) (dynLambda!26493 order!27693 lambda!387957))))

(declare-fun forall!15875 (List!66364 Int) Bool)

(assert (=> d!2155338 (= (exists!2807 zl!343 lambda!387933) (not (forall!15875 zl!343 lambda!387957)))))

(declare-fun bs!1833210 () Bool)

(assert (= bs!1833210 d!2155338))

(declare-fun m!7594674 () Bool)

(assert (=> bs!1833210 m!7594674))

(assert (=> b!6859551 d!2155338))

(declare-fun bs!1833211 () Bool)

(declare-fun d!2155340 () Bool)

(assert (= bs!1833211 (and d!2155340 b!6859551)))

(declare-fun lambda!387960 () Int)

(assert (=> bs!1833211 (= lambda!387960 lambda!387933)))

(declare-fun bs!1833212 () Bool)

(assert (= bs!1833212 (and d!2155340 d!2155338)))

(assert (=> bs!1833212 (not (= lambda!387960 lambda!387957))))

(assert (=> d!2155340 true))

(assert (=> d!2155340 (exists!2807 zl!343 lambda!387960)))

(declare-fun lt!2457313 () Unit!160131)

(declare-fun choose!51119 (List!66364 List!66365) Unit!160131)

(assert (=> d!2155340 (= lt!2457313 (choose!51119 zl!343 s!2326))))

(declare-fun content!13001 (List!66364) (Set Context!12144))

(assert (=> d!2155340 (matchZipper!2654 (content!13001 zl!343) s!2326)))

(assert (=> d!2155340 (= (lemmaZipperMatchesExistsMatchingContext!87 zl!343 s!2326) lt!2457313)))

(declare-fun bs!1833213 () Bool)

(assert (= bs!1833213 d!2155340))

(declare-fun m!7594676 () Bool)

(assert (=> bs!1833213 m!7594676))

(declare-fun m!7594678 () Bool)

(assert (=> bs!1833213 m!7594678))

(declare-fun m!7594680 () Bool)

(assert (=> bs!1833213 m!7594680))

(assert (=> bs!1833213 m!7594680))

(declare-fun m!7594682 () Bool)

(assert (=> bs!1833213 m!7594682))

(assert (=> b!6859551 d!2155340))

(declare-fun bs!1833214 () Bool)

(declare-fun d!2155342 () Bool)

(assert (= bs!1833214 (and d!2155342 b!6859549)))

(declare-fun lambda!387963 () Int)

(assert (=> bs!1833214 (not (= lambda!387963 lambda!387932))))

(declare-fun bs!1833215 () Bool)

(assert (= bs!1833215 (and d!2155342 b!6859548)))

(assert (=> bs!1833215 (not (= lambda!387963 lambda!387934))))

(declare-fun bs!1833216 () Bool)

(assert (= bs!1833216 (and d!2155342 d!2155336)))

(assert (=> bs!1833216 (not (= lambda!387963 lambda!387954))))

(assert (=> d!2155342 true))

(declare-fun order!27695 () Int)

(declare-fun dynLambda!26494 (Int Int) Int)

(assert (=> d!2155342 (< (dynLambda!26494 order!27695 lambda!387932) (dynLambda!26494 order!27695 lambda!387963))))

(assert (=> d!2155342 (= (exists!2806 lt!2457285 lambda!387932) (not (forall!15873 lt!2457285 lambda!387963)))))

(declare-fun bs!1833217 () Bool)

(assert (= bs!1833217 d!2155342))

(declare-fun m!7594684 () Bool)

(assert (=> bs!1833217 m!7594684))

(assert (=> b!6859549 d!2155342))

(declare-fun bs!1833218 () Bool)

(declare-fun d!2155344 () Bool)

(assert (= bs!1833218 (and d!2155344 b!6859549)))

(declare-fun lambda!387968 () Int)

(assert (=> bs!1833218 (not (= lambda!387968 lambda!387932))))

(declare-fun bs!1833219 () Bool)

(assert (= bs!1833219 (and d!2155344 b!6859548)))

(assert (=> bs!1833219 (= lambda!387968 lambda!387934)))

(declare-fun bs!1833220 () Bool)

(assert (= bs!1833220 (and d!2155344 d!2155336)))

(assert (=> bs!1833220 (= lambda!387968 lambda!387954)))

(declare-fun bs!1833221 () Bool)

(assert (= bs!1833221 (and d!2155344 d!2155342)))

(assert (=> bs!1833221 (not (= lambda!387968 lambda!387963))))

(declare-fun bs!1833222 () Bool)

(assert (= bs!1833222 d!2155344))

(declare-fun lambda!387969 () Int)

(assert (=> bs!1833222 (not (= lambda!387969 lambda!387968))))

(assert (=> bs!1833219 (not (= lambda!387969 lambda!387934))))

(assert (=> bs!1833218 (= lambda!387969 lambda!387932)))

(assert (=> bs!1833221 (not (= lambda!387969 lambda!387963))))

(assert (=> bs!1833220 (not (= lambda!387969 lambda!387954))))

(assert (=> d!2155344 true))

(assert (=> d!2155344 (= (matchR!8871 r!7292 s!2326) (exists!2806 lt!2457285 lambda!387969))))

(declare-fun lt!2457316 () Unit!160131)

(declare-fun choose!51120 (Regex!16688 List!66363 List!66365) Unit!160131)

(assert (=> d!2155344 (= lt!2457316 (choose!51120 r!7292 lt!2457285 s!2326))))

(assert (=> d!2155344 (forall!15873 lt!2457285 lambda!387968)))

(assert (=> d!2155344 (= (matchRGenUnionSpec!327 r!7292 lt!2457285 s!2326) lt!2457316)))

(assert (=> bs!1833222 m!7594610))

(declare-fun m!7594686 () Bool)

(assert (=> bs!1833222 m!7594686))

(declare-fun m!7594688 () Bool)

(assert (=> bs!1833222 m!7594688))

(declare-fun m!7594690 () Bool)

(assert (=> bs!1833222 m!7594690))

(assert (=> b!6859549 d!2155344))

(declare-fun bs!1833224 () Bool)

(declare-fun d!2155348 () Bool)

(assert (= bs!1833224 (and d!2155348 d!2155344)))

(declare-fun lambda!387972 () Int)

(assert (=> bs!1833224 (= lambda!387972 lambda!387968)))

(declare-fun bs!1833225 () Bool)

(assert (= bs!1833225 (and d!2155348 b!6859548)))

(assert (=> bs!1833225 (= lambda!387972 lambda!387934)))

(declare-fun bs!1833226 () Bool)

(assert (= bs!1833226 (and d!2155348 b!6859549)))

(assert (=> bs!1833226 (not (= lambda!387972 lambda!387932))))

(declare-fun bs!1833227 () Bool)

(assert (= bs!1833227 (and d!2155348 d!2155342)))

(assert (=> bs!1833227 (not (= lambda!387972 lambda!387963))))

(declare-fun bs!1833228 () Bool)

(assert (= bs!1833228 (and d!2155348 d!2155336)))

(assert (=> bs!1833228 (= lambda!387972 lambda!387954)))

(assert (=> bs!1833224 (not (= lambda!387972 lambda!387969))))

(declare-fun lt!2457322 () List!66363)

(assert (=> d!2155348 (forall!15873 lt!2457322 lambda!387972)))

(declare-fun e!4135751 () List!66363)

(assert (=> d!2155348 (= lt!2457322 e!4135751)))

(declare-fun c!1276854 () Bool)

(assert (=> d!2155348 (= c!1276854 (is-Cons!66240 zl!343))))

(assert (=> d!2155348 (= (unfocusZipperList!2105 zl!343) lt!2457322)))

(declare-fun b!6859636 () Bool)

(declare-fun generalisedConcat!2277 (List!66363) Regex!16688)

(assert (=> b!6859636 (= e!4135751 (Cons!66239 (generalisedConcat!2277 (exprs!6572 (h!72688 zl!343))) (unfocusZipperList!2105 (t!380107 zl!343))))))

(declare-fun b!6859637 () Bool)

(assert (=> b!6859637 (= e!4135751 Nil!66239)))

(assert (= (and d!2155348 c!1276854) b!6859636))

(assert (= (and d!2155348 (not c!1276854)) b!6859637))

(declare-fun m!7594696 () Bool)

(assert (=> d!2155348 m!7594696))

(declare-fun m!7594698 () Bool)

(assert (=> b!6859636 m!7594698))

(declare-fun m!7594700 () Bool)

(assert (=> b!6859636 m!7594700))

(assert (=> b!6859549 d!2155348))

(assert (=> b!6859541 d!2155342))

(declare-fun d!2155352 () Bool)

(declare-fun res!2799065 () Bool)

(declare-fun e!4135756 () Bool)

(assert (=> d!2155352 (=> res!2799065 e!4135756)))

(assert (=> d!2155352 (= res!2799065 (is-Nil!66239 (exprs!6572 lt!2457286)))))

(assert (=> d!2155352 (= (forall!15873 (exprs!6572 lt!2457286) lambda!387934) e!4135756)))

(declare-fun b!6859642 () Bool)

(declare-fun e!4135757 () Bool)

(assert (=> b!6859642 (= e!4135756 e!4135757)))

(declare-fun res!2799066 () Bool)

(assert (=> b!6859642 (=> (not res!2799066) (not e!4135757))))

(declare-fun dynLambda!26495 (Int Regex!16688) Bool)

(assert (=> b!6859642 (= res!2799066 (dynLambda!26495 lambda!387934 (h!72687 (exprs!6572 lt!2457286))))))

(declare-fun b!6859643 () Bool)

(assert (=> b!6859643 (= e!4135757 (forall!15873 (t!380106 (exprs!6572 lt!2457286)) lambda!387934))))

(assert (= (and d!2155352 (not res!2799065)) b!6859642))

(assert (= (and b!6859642 res!2799066) b!6859643))

(declare-fun b_lambda!259139 () Bool)

(assert (=> (not b_lambda!259139) (not b!6859642)))

(declare-fun m!7594702 () Bool)

(assert (=> b!6859642 m!7594702))

(declare-fun m!7594704 () Bool)

(assert (=> b!6859643 m!7594704))

(assert (=> b!6859548 d!2155352))

(declare-fun bs!1833231 () Bool)

(declare-fun d!2155354 () Bool)

(assert (= bs!1833231 (and d!2155354 d!2155344)))

(declare-fun lambda!387978 () Int)

(assert (=> bs!1833231 (= lambda!387978 lambda!387968)))

(declare-fun bs!1833232 () Bool)

(assert (= bs!1833232 (and d!2155354 b!6859548)))

(assert (=> bs!1833232 (= lambda!387978 lambda!387934)))

(declare-fun bs!1833233 () Bool)

(assert (= bs!1833233 (and d!2155354 b!6859549)))

(assert (=> bs!1833233 (not (= lambda!387978 lambda!387932))))

(declare-fun bs!1833234 () Bool)

(assert (= bs!1833234 (and d!2155354 d!2155342)))

(assert (=> bs!1833234 (not (= lambda!387978 lambda!387963))))

(declare-fun bs!1833235 () Bool)

(assert (= bs!1833235 (and d!2155354 d!2155336)))

(assert (=> bs!1833235 (= lambda!387978 lambda!387954)))

(assert (=> bs!1833231 (not (= lambda!387978 lambda!387969))))

(declare-fun bs!1833236 () Bool)

(assert (= bs!1833236 (and d!2155354 d!2155348)))

(assert (=> bs!1833236 (= lambda!387978 lambda!387972)))

(assert (=> d!2155354 (forall!15873 (exprs!6572 lt!2457286) lambda!387978)))

(declare-fun lt!2457325 () Unit!160131)

(declare-fun choose!51121 (Context!12144 List!66363) Unit!160131)

(assert (=> d!2155354 (= lt!2457325 (choose!51121 lt!2457286 (exprs!6572 lt!2457286)))))

(assert (=> d!2155354 (= (exprs!6572 lt!2457286) (exprs!6572 lt!2457286))))

(assert (=> d!2155354 (= (lemmaContextForallValidExprs!63 lt!2457286 (exprs!6572 lt!2457286)) lt!2457325)))

(declare-fun bs!1833237 () Bool)

(assert (= bs!1833237 d!2155354))

(declare-fun m!7594708 () Bool)

(assert (=> bs!1833237 m!7594708))

(declare-fun m!7594710 () Bool)

(assert (=> bs!1833237 m!7594710))

(assert (=> b!6859548 d!2155354))

(declare-fun b!6859658 () Bool)

(declare-fun lt!2457330 () Unit!160131)

(declare-fun Unit!160135 () Unit!160131)

(assert (=> b!6859658 (= lt!2457330 Unit!160135)))

(assert (=> b!6859658 false))

(declare-fun e!4135768 () Context!12144)

(declare-fun head!13755 (List!66364) Context!12144)

(assert (=> b!6859658 (= e!4135768 (head!13755 zl!343))))

(declare-fun b!6859659 () Bool)

(declare-fun e!4135766 () Context!12144)

(assert (=> b!6859659 (= e!4135766 (h!72688 zl!343))))

(declare-fun d!2155358 () Bool)

(declare-fun e!4135767 () Bool)

(assert (=> d!2155358 e!4135767))

(declare-fun res!2799071 () Bool)

(assert (=> d!2155358 (=> (not res!2799071) (not e!4135767))))

(declare-fun lt!2457331 () Context!12144)

(declare-fun dynLambda!26496 (Int Context!12144) Bool)

(assert (=> d!2155358 (= res!2799071 (dynLambda!26496 lambda!387933 lt!2457331))))

(assert (=> d!2155358 (= lt!2457331 e!4135766)))

(declare-fun c!1276860 () Bool)

(declare-fun e!4135769 () Bool)

(assert (=> d!2155358 (= c!1276860 e!4135769)))

(declare-fun res!2799072 () Bool)

(assert (=> d!2155358 (=> (not res!2799072) (not e!4135769))))

(assert (=> d!2155358 (= res!2799072 (is-Cons!66240 zl!343))))

(assert (=> d!2155358 (exists!2807 zl!343 lambda!387933)))

(assert (=> d!2155358 (= (getWitness!967 zl!343 lambda!387933) lt!2457331)))

(declare-fun b!6859660 () Bool)

(assert (=> b!6859660 (= e!4135767 (contains!20346 zl!343 lt!2457331))))

(declare-fun b!6859661 () Bool)

(assert (=> b!6859661 (= e!4135769 (dynLambda!26496 lambda!387933 (h!72688 zl!343)))))

(declare-fun b!6859662 () Bool)

(assert (=> b!6859662 (= e!4135766 e!4135768)))

(declare-fun c!1276861 () Bool)

(assert (=> b!6859662 (= c!1276861 (is-Cons!66240 zl!343))))

(declare-fun b!6859663 () Bool)

(assert (=> b!6859663 (= e!4135768 (getWitness!967 (t!380107 zl!343) lambda!387933))))

(assert (= (and d!2155358 res!2799072) b!6859661))

(assert (= (and d!2155358 c!1276860) b!6859659))

(assert (= (and d!2155358 (not c!1276860)) b!6859662))

(assert (= (and b!6859662 c!1276861) b!6859663))

(assert (= (and b!6859662 (not c!1276861)) b!6859658))

(assert (= (and d!2155358 res!2799071) b!6859660))

(declare-fun b_lambda!259141 () Bool)

(assert (=> (not b_lambda!259141) (not d!2155358)))

(declare-fun b_lambda!259143 () Bool)

(assert (=> (not b_lambda!259143) (not b!6859661)))

(declare-fun m!7594712 () Bool)

(assert (=> b!6859658 m!7594712))

(declare-fun m!7594714 () Bool)

(assert (=> b!6859663 m!7594714))

(declare-fun m!7594716 () Bool)

(assert (=> d!2155358 m!7594716))

(assert (=> d!2155358 m!7594618))

(declare-fun m!7594718 () Bool)

(assert (=> b!6859660 m!7594718))

(declare-fun m!7594720 () Bool)

(assert (=> b!6859661 m!7594720))

(assert (=> b!6859548 d!2155358))

(declare-fun d!2155360 () Bool)

(declare-fun c!1276866 () Bool)

(declare-fun isEmpty!38604 (List!66365) Bool)

(assert (=> d!2155360 (= c!1276866 (isEmpty!38604 s!2326))))

(declare-fun e!4135772 () Bool)

(assert (=> d!2155360 (= (matchZipper!2654 z!1189 s!2326) e!4135772)))

(declare-fun b!6859668 () Bool)

(declare-fun nullableZipper!2362 ((Set Context!12144)) Bool)

(assert (=> b!6859668 (= e!4135772 (nullableZipper!2362 z!1189))))

(declare-fun b!6859669 () Bool)

(declare-fun derivationStepZipper!2609 ((Set Context!12144) C!33646) (Set Context!12144))

(declare-fun head!13756 (List!66365) C!33646)

(declare-fun tail!12820 (List!66365) List!66365)

(assert (=> b!6859669 (= e!4135772 (matchZipper!2654 (derivationStepZipper!2609 z!1189 (head!13756 s!2326)) (tail!12820 s!2326)))))

(assert (= (and d!2155360 c!1276866) b!6859668))

(assert (= (and d!2155360 (not c!1276866)) b!6859669))

(declare-fun m!7594722 () Bool)

(assert (=> d!2155360 m!7594722))

(declare-fun m!7594724 () Bool)

(assert (=> b!6859668 m!7594724))

(declare-fun m!7594726 () Bool)

(assert (=> b!6859669 m!7594726))

(assert (=> b!6859669 m!7594726))

(declare-fun m!7594728 () Bool)

(assert (=> b!6859669 m!7594728))

(declare-fun m!7594730 () Bool)

(assert (=> b!6859669 m!7594730))

(assert (=> b!6859669 m!7594728))

(assert (=> b!6859669 m!7594730))

(declare-fun m!7594732 () Bool)

(assert (=> b!6859669 m!7594732))

(assert (=> b!6859540 d!2155360))

(declare-fun d!2155362 () Bool)

(declare-fun lt!2457337 () Bool)

(assert (=> d!2155362 (= lt!2457337 (set.member lt!2457286 (content!13001 zl!343)))))

(declare-fun e!4135777 () Bool)

(assert (=> d!2155362 (= lt!2457337 e!4135777)))

(declare-fun res!2799077 () Bool)

(assert (=> d!2155362 (=> (not res!2799077) (not e!4135777))))

(assert (=> d!2155362 (= res!2799077 (is-Cons!66240 zl!343))))

(assert (=> d!2155362 (= (contains!20346 zl!343 lt!2457286) lt!2457337)))

(declare-fun b!6859674 () Bool)

(declare-fun e!4135778 () Bool)

(assert (=> b!6859674 (= e!4135777 e!4135778)))

(declare-fun res!2799078 () Bool)

(assert (=> b!6859674 (=> res!2799078 e!4135778)))

(assert (=> b!6859674 (= res!2799078 (= (h!72688 zl!343) lt!2457286))))

(declare-fun b!6859675 () Bool)

(assert (=> b!6859675 (= e!4135778 (contains!20346 (t!380107 zl!343) lt!2457286))))

(assert (= (and d!2155362 res!2799077) b!6859674))

(assert (= (and b!6859674 (not res!2799078)) b!6859675))

(assert (=> d!2155362 m!7594680))

(declare-fun m!7594742 () Bool)

(assert (=> d!2155362 m!7594742))

(declare-fun m!7594744 () Bool)

(assert (=> b!6859675 m!7594744))

(assert (=> b!6859547 d!2155362))

(declare-fun bs!1833241 () Bool)

(declare-fun d!2155366 () Bool)

(assert (= bs!1833241 (and d!2155366 d!2155344)))

(declare-fun lambda!387982 () Int)

(assert (=> bs!1833241 (= lambda!387982 lambda!387968)))

(declare-fun bs!1833242 () Bool)

(assert (= bs!1833242 (and d!2155366 b!6859549)))

(assert (=> bs!1833242 (not (= lambda!387982 lambda!387932))))

(declare-fun bs!1833243 () Bool)

(assert (= bs!1833243 (and d!2155366 d!2155342)))

(assert (=> bs!1833243 (not (= lambda!387982 lambda!387963))))

(declare-fun bs!1833244 () Bool)

(assert (= bs!1833244 (and d!2155366 d!2155336)))

(assert (=> bs!1833244 (= lambda!387982 lambda!387954)))

(declare-fun bs!1833245 () Bool)

(assert (= bs!1833245 (and d!2155366 d!2155354)))

(assert (=> bs!1833245 (= lambda!387982 lambda!387978)))

(declare-fun bs!1833246 () Bool)

(assert (= bs!1833246 (and d!2155366 b!6859548)))

(assert (=> bs!1833246 (= lambda!387982 lambda!387934)))

(assert (=> bs!1833241 (not (= lambda!387982 lambda!387969))))

(declare-fun bs!1833247 () Bool)

(assert (= bs!1833247 (and d!2155366 d!2155348)))

(assert (=> bs!1833247 (= lambda!387982 lambda!387972)))

(assert (=> d!2155366 (= (inv!84968 setElem!47166) (forall!15873 (exprs!6572 setElem!47166) lambda!387982))))

(declare-fun bs!1833248 () Bool)

(assert (= bs!1833248 d!2155366))

(declare-fun m!7594746 () Bool)

(assert (=> bs!1833248 m!7594746))

(assert (=> setNonEmpty!47166 d!2155366))

(assert (=> b!6859546 d!2155334))

(declare-fun d!2155368 () Bool)

(declare-fun e!4135781 () Bool)

(assert (=> d!2155368 e!4135781))

(declare-fun res!2799081 () Bool)

(assert (=> d!2155368 (=> (not res!2799081) (not e!4135781))))

(declare-fun lt!2457340 () List!66364)

(declare-fun noDuplicate!2452 (List!66364) Bool)

(assert (=> d!2155368 (= res!2799081 (noDuplicate!2452 lt!2457340))))

(declare-fun choose!51122 ((Set Context!12144)) List!66364)

(assert (=> d!2155368 (= lt!2457340 (choose!51122 z!1189))))

(assert (=> d!2155368 (= (toList!10472 z!1189) lt!2457340)))

(declare-fun b!6859678 () Bool)

(assert (=> b!6859678 (= e!4135781 (= (content!13001 lt!2457340) z!1189))))

(assert (= (and d!2155368 res!2799081) b!6859678))

(declare-fun m!7594748 () Bool)

(assert (=> d!2155368 m!7594748))

(declare-fun m!7594750 () Bool)

(assert (=> d!2155368 m!7594750))

(declare-fun m!7594752 () Bool)

(assert (=> b!6859678 m!7594752))

(assert (=> b!6859535 d!2155368))

(declare-fun d!2155370 () Bool)

(declare-fun lt!2457343 () Regex!16688)

(assert (=> d!2155370 (validRegex!8424 lt!2457343)))

(declare-fun generalisedUnion!2524 (List!66363) Regex!16688)

(assert (=> d!2155370 (= lt!2457343 (generalisedUnion!2524 (unfocusZipperList!2105 zl!343)))))

(assert (=> d!2155370 (= (unfocusZipper!2430 zl!343) lt!2457343)))

(declare-fun bs!1833249 () Bool)

(assert (= bs!1833249 d!2155370))

(declare-fun m!7594754 () Bool)

(assert (=> bs!1833249 m!7594754))

(assert (=> bs!1833249 m!7594616))

(assert (=> bs!1833249 m!7594616))

(declare-fun m!7594756 () Bool)

(assert (=> bs!1833249 m!7594756))

(assert (=> b!6859545 d!2155370))

(declare-fun b!6859743 () Bool)

(assert (=> b!6859743 true))

(assert (=> b!6859743 true))

(declare-fun bs!1833250 () Bool)

(declare-fun b!6859739 () Bool)

(assert (= bs!1833250 (and b!6859739 b!6859743)))

(declare-fun lambda!387991 () Int)

(declare-fun lambda!387989 () Int)

(assert (=> bs!1833250 (not (= lambda!387991 lambda!387989))))

(assert (=> b!6859739 true))

(assert (=> b!6859739 true))

(declare-fun e!4135820 () Bool)

(declare-fun call!624808 () Bool)

(assert (=> b!6859739 (= e!4135820 call!624808)))

(declare-fun b!6859740 () Bool)

(declare-fun e!4135819 () Bool)

(declare-fun e!4135817 () Bool)

(assert (=> b!6859740 (= e!4135819 e!4135817)))

(declare-fun res!2799111 () Bool)

(assert (=> b!6859740 (= res!2799111 (not (is-EmptyLang!16688 r!7292)))))

(assert (=> b!6859740 (=> (not res!2799111) (not e!4135817))))

(declare-fun b!6859741 () Bool)

(declare-fun call!624809 () Bool)

(assert (=> b!6859741 (= e!4135819 call!624809)))

(declare-fun e!4135822 () Bool)

(assert (=> b!6859743 (= e!4135822 call!624808)))

(declare-fun b!6859744 () Bool)

(declare-fun e!4135821 () Bool)

(declare-fun e!4135816 () Bool)

(assert (=> b!6859744 (= e!4135821 e!4135816)))

(declare-fun res!2799110 () Bool)

(assert (=> b!6859744 (= res!2799110 (matchRSpec!3789 (regOne!33889 r!7292) s!2326))))

(assert (=> b!6859744 (=> res!2799110 e!4135816)))

(declare-fun b!6859745 () Bool)

(declare-fun res!2799112 () Bool)

(assert (=> b!6859745 (=> res!2799112 e!4135822)))

(assert (=> b!6859745 (= res!2799112 call!624809)))

(assert (=> b!6859745 (= e!4135820 e!4135822)))

(declare-fun b!6859746 () Bool)

(declare-fun c!1276883 () Bool)

(assert (=> b!6859746 (= c!1276883 (is-ElementMatch!16688 r!7292))))

(declare-fun e!4135818 () Bool)

(assert (=> b!6859746 (= e!4135817 e!4135818)))

(declare-fun bm!624803 () Bool)

(declare-fun c!1276885 () Bool)

(declare-fun Exists!3748 (Int) Bool)

(assert (=> bm!624803 (= call!624808 (Exists!3748 (ite c!1276885 lambda!387989 lambda!387991)))))

(declare-fun b!6859747 () Bool)

(declare-fun c!1276886 () Bool)

(assert (=> b!6859747 (= c!1276886 (is-Union!16688 r!7292))))

(assert (=> b!6859747 (= e!4135818 e!4135821)))

(declare-fun bm!624804 () Bool)

(assert (=> bm!624804 (= call!624809 (isEmpty!38604 s!2326))))

(declare-fun b!6859748 () Bool)

(assert (=> b!6859748 (= e!4135816 (matchRSpec!3789 (regTwo!33889 r!7292) s!2326))))

(declare-fun b!6859749 () Bool)

(assert (=> b!6859749 (= e!4135821 e!4135820)))

(assert (=> b!6859749 (= c!1276885 (is-Star!16688 r!7292))))

(declare-fun d!2155372 () Bool)

(declare-fun c!1276884 () Bool)

(assert (=> d!2155372 (= c!1276884 (is-EmptyExpr!16688 r!7292))))

(assert (=> d!2155372 (= (matchRSpec!3789 r!7292 s!2326) e!4135819)))

(declare-fun b!6859742 () Bool)

(assert (=> b!6859742 (= e!4135818 (= s!2326 (Cons!66241 (c!1276846 r!7292) Nil!66241)))))

(assert (= (and d!2155372 c!1276884) b!6859741))

(assert (= (and d!2155372 (not c!1276884)) b!6859740))

(assert (= (and b!6859740 res!2799111) b!6859746))

(assert (= (and b!6859746 c!1276883) b!6859742))

(assert (= (and b!6859746 (not c!1276883)) b!6859747))

(assert (= (and b!6859747 c!1276886) b!6859744))

(assert (= (and b!6859747 (not c!1276886)) b!6859749))

(assert (= (and b!6859744 (not res!2799110)) b!6859748))

(assert (= (and b!6859749 c!1276885) b!6859745))

(assert (= (and b!6859749 (not c!1276885)) b!6859739))

(assert (= (and b!6859745 (not res!2799112)) b!6859743))

(assert (= (or b!6859743 b!6859739) bm!624803))

(assert (= (or b!6859741 b!6859745) bm!624804))

(declare-fun m!7594758 () Bool)

(assert (=> b!6859744 m!7594758))

(declare-fun m!7594760 () Bool)

(assert (=> bm!624803 m!7594760))

(assert (=> bm!624804 m!7594722))

(declare-fun m!7594762 () Bool)

(assert (=> b!6859748 m!7594762))

(assert (=> b!6859536 d!2155372))

(declare-fun b!6859786 () Bool)

(declare-fun e!4135844 () Bool)

(declare-fun lt!2457346 () Bool)

(assert (=> b!6859786 (= e!4135844 (not lt!2457346))))

(declare-fun b!6859787 () Bool)

(declare-fun e!4135841 () Bool)

(assert (=> b!6859787 (= e!4135841 (not (= (head!13756 s!2326) (c!1276846 r!7292))))))

(declare-fun b!6859788 () Bool)

(declare-fun e!4135840 () Bool)

(declare-fun e!4135842 () Bool)

(assert (=> b!6859788 (= e!4135840 e!4135842)))

(declare-fun res!2799139 () Bool)

(assert (=> b!6859788 (=> (not res!2799139) (not e!4135842))))

(assert (=> b!6859788 (= res!2799139 (not lt!2457346))))

(declare-fun b!6859789 () Bool)

(declare-fun res!2799133 () Bool)

(declare-fun e!4135839 () Bool)

(assert (=> b!6859789 (=> (not res!2799133) (not e!4135839))))

(declare-fun call!624816 () Bool)

(assert (=> b!6859789 (= res!2799133 (not call!624816))))

(declare-fun b!6859790 () Bool)

(assert (=> b!6859790 (= e!4135842 e!4135841)))

(declare-fun res!2799138 () Bool)

(assert (=> b!6859790 (=> res!2799138 e!4135841)))

(assert (=> b!6859790 (= res!2799138 call!624816)))

(declare-fun d!2155374 () Bool)

(declare-fun e!4135845 () Bool)

(assert (=> d!2155374 e!4135845))

(declare-fun c!1276894 () Bool)

(assert (=> d!2155374 (= c!1276894 (is-EmptyExpr!16688 r!7292))))

(declare-fun e!4135843 () Bool)

(assert (=> d!2155374 (= lt!2457346 e!4135843)))

(declare-fun c!1276893 () Bool)

(assert (=> d!2155374 (= c!1276893 (isEmpty!38604 s!2326))))

(assert (=> d!2155374 (validRegex!8424 r!7292)))

(assert (=> d!2155374 (= (matchR!8871 r!7292 s!2326) lt!2457346)))

(declare-fun b!6859791 () Bool)

(declare-fun res!2799140 () Bool)

(assert (=> b!6859791 (=> res!2799140 e!4135840)))

(assert (=> b!6859791 (= res!2799140 (not (is-ElementMatch!16688 r!7292)))))

(assert (=> b!6859791 (= e!4135844 e!4135840)))

(declare-fun b!6859792 () Bool)

(assert (=> b!6859792 (= e!4135845 (= lt!2457346 call!624816))))

(declare-fun b!6859793 () Bool)

(assert (=> b!6859793 (= e!4135845 e!4135844)))

(declare-fun c!1276895 () Bool)

(assert (=> b!6859793 (= c!1276895 (is-EmptyLang!16688 r!7292))))

(declare-fun b!6859794 () Bool)

(declare-fun res!2799134 () Bool)

(assert (=> b!6859794 (=> res!2799134 e!4135840)))

(assert (=> b!6859794 (= res!2799134 e!4135839)))

(declare-fun res!2799137 () Bool)

(assert (=> b!6859794 (=> (not res!2799137) (not e!4135839))))

(assert (=> b!6859794 (= res!2799137 lt!2457346)))

(declare-fun b!6859795 () Bool)

(declare-fun res!2799136 () Bool)

(assert (=> b!6859795 (=> (not res!2799136) (not e!4135839))))

(assert (=> b!6859795 (= res!2799136 (isEmpty!38604 (tail!12820 s!2326)))))

(declare-fun b!6859796 () Bool)

(declare-fun nullable!6649 (Regex!16688) Bool)

(assert (=> b!6859796 (= e!4135843 (nullable!6649 r!7292))))

(declare-fun bm!624811 () Bool)

(assert (=> bm!624811 (= call!624816 (isEmpty!38604 s!2326))))

(declare-fun b!6859797 () Bool)

(declare-fun derivativeStep!5331 (Regex!16688 C!33646) Regex!16688)

(assert (=> b!6859797 (= e!4135843 (matchR!8871 (derivativeStep!5331 r!7292 (head!13756 s!2326)) (tail!12820 s!2326)))))

(declare-fun b!6859798 () Bool)

(declare-fun res!2799135 () Bool)

(assert (=> b!6859798 (=> res!2799135 e!4135841)))

(assert (=> b!6859798 (= res!2799135 (not (isEmpty!38604 (tail!12820 s!2326))))))

(declare-fun b!6859799 () Bool)

(assert (=> b!6859799 (= e!4135839 (= (head!13756 s!2326) (c!1276846 r!7292)))))

(assert (= (and d!2155374 c!1276893) b!6859796))

(assert (= (and d!2155374 (not c!1276893)) b!6859797))

(assert (= (and d!2155374 c!1276894) b!6859792))

(assert (= (and d!2155374 (not c!1276894)) b!6859793))

(assert (= (and b!6859793 c!1276895) b!6859786))

(assert (= (and b!6859793 (not c!1276895)) b!6859791))

(assert (= (and b!6859791 (not res!2799140)) b!6859794))

(assert (= (and b!6859794 res!2799137) b!6859789))

(assert (= (and b!6859789 res!2799133) b!6859795))

(assert (= (and b!6859795 res!2799136) b!6859799))

(assert (= (and b!6859794 (not res!2799134)) b!6859788))

(assert (= (and b!6859788 res!2799139) b!6859790))

(assert (= (and b!6859790 (not res!2799138)) b!6859798))

(assert (= (and b!6859798 (not res!2799135)) b!6859787))

(assert (= (or b!6859792 b!6859789 b!6859790) bm!624811))

(assert (=> b!6859798 m!7594730))

(assert (=> b!6859798 m!7594730))

(declare-fun m!7594764 () Bool)

(assert (=> b!6859798 m!7594764))

(assert (=> b!6859787 m!7594726))

(assert (=> b!6859797 m!7594726))

(assert (=> b!6859797 m!7594726))

(declare-fun m!7594766 () Bool)

(assert (=> b!6859797 m!7594766))

(assert (=> b!6859797 m!7594730))

(assert (=> b!6859797 m!7594766))

(assert (=> b!6859797 m!7594730))

(declare-fun m!7594768 () Bool)

(assert (=> b!6859797 m!7594768))

(assert (=> bm!624811 m!7594722))

(declare-fun m!7594770 () Bool)

(assert (=> b!6859796 m!7594770))

(assert (=> b!6859795 m!7594730))

(assert (=> b!6859795 m!7594730))

(assert (=> b!6859795 m!7594764))

(assert (=> d!2155374 m!7594722))

(assert (=> d!2155374 m!7594602))

(assert (=> b!6859799 m!7594726))

(assert (=> b!6859536 d!2155374))

(declare-fun d!2155376 () Bool)

(assert (=> d!2155376 (= (matchR!8871 r!7292 s!2326) (matchRSpec!3789 r!7292 s!2326))))

(declare-fun lt!2457349 () Unit!160131)

(declare-fun choose!51123 (Regex!16688 List!66365) Unit!160131)

(assert (=> d!2155376 (= lt!2457349 (choose!51123 r!7292 s!2326))))

(assert (=> d!2155376 (validRegex!8424 r!7292)))

(assert (=> d!2155376 (= (mainMatchTheorem!3789 r!7292 s!2326) lt!2457349)))

(declare-fun bs!1833252 () Bool)

(assert (= bs!1833252 d!2155376))

(assert (=> bs!1833252 m!7594610))

(assert (=> bs!1833252 m!7594608))

(declare-fun m!7594772 () Bool)

(assert (=> bs!1833252 m!7594772))

(assert (=> bs!1833252 m!7594602))

(assert (=> b!6859536 d!2155376))

(declare-fun bm!624820 () Bool)

(declare-fun call!624825 () Bool)

(declare-fun call!624827 () Bool)

(assert (=> bm!624820 (= call!624825 call!624827)))

(declare-fun b!6859833 () Bool)

(declare-fun e!4135869 () Bool)

(declare-fun e!4135867 () Bool)

(assert (=> b!6859833 (= e!4135869 e!4135867)))

(declare-fun res!2799154 () Bool)

(assert (=> b!6859833 (= res!2799154 (not (nullable!6649 (reg!17017 r!7292))))))

(assert (=> b!6859833 (=> (not res!2799154) (not e!4135867))))

(declare-fun b!6859834 () Bool)

(assert (=> b!6859834 (= e!4135867 call!624827)))

(declare-fun bm!624821 () Bool)

(declare-fun call!624826 () Bool)

(declare-fun c!1276904 () Bool)

(assert (=> bm!624821 (= call!624826 (validRegex!8424 (ite c!1276904 (regOne!33889 r!7292) (regOne!33888 r!7292))))))

(declare-fun b!6859835 () Bool)

(declare-fun e!4135872 () Bool)

(assert (=> b!6859835 (= e!4135869 e!4135872)))

(assert (=> b!6859835 (= c!1276904 (is-Union!16688 r!7292))))

(declare-fun b!6859836 () Bool)

(declare-fun e!4135868 () Bool)

(assert (=> b!6859836 (= e!4135868 call!624825)))

(declare-fun b!6859837 () Bool)

(declare-fun e!4135871 () Bool)

(assert (=> b!6859837 (= e!4135871 e!4135868)))

(declare-fun res!2799157 () Bool)

(assert (=> b!6859837 (=> (not res!2799157) (not e!4135868))))

(assert (=> b!6859837 (= res!2799157 call!624826)))

(declare-fun b!6859838 () Bool)

(declare-fun e!4135873 () Bool)

(assert (=> b!6859838 (= e!4135873 call!624825)))

(declare-fun c!1276905 () Bool)

(declare-fun bm!624822 () Bool)

(assert (=> bm!624822 (= call!624827 (validRegex!8424 (ite c!1276905 (reg!17017 r!7292) (ite c!1276904 (regTwo!33889 r!7292) (regTwo!33888 r!7292)))))))

(declare-fun b!6859839 () Bool)

(declare-fun res!2799158 () Bool)

(assert (=> b!6859839 (=> (not res!2799158) (not e!4135873))))

(assert (=> b!6859839 (= res!2799158 call!624826)))

(assert (=> b!6859839 (= e!4135872 e!4135873)))

(declare-fun b!6859840 () Bool)

(declare-fun e!4135870 () Bool)

(assert (=> b!6859840 (= e!4135870 e!4135869)))

(assert (=> b!6859840 (= c!1276905 (is-Star!16688 r!7292))))

(declare-fun d!2155378 () Bool)

(declare-fun res!2799155 () Bool)

(assert (=> d!2155378 (=> res!2799155 e!4135870)))

(assert (=> d!2155378 (= res!2799155 (is-ElementMatch!16688 r!7292))))

(assert (=> d!2155378 (= (validRegex!8424 r!7292) e!4135870)))

(declare-fun b!6859841 () Bool)

(declare-fun res!2799156 () Bool)

(assert (=> b!6859841 (=> res!2799156 e!4135871)))

(assert (=> b!6859841 (= res!2799156 (not (is-Concat!25533 r!7292)))))

(assert (=> b!6859841 (= e!4135872 e!4135871)))

(assert (= (and d!2155378 (not res!2799155)) b!6859840))

(assert (= (and b!6859840 c!1276905) b!6859833))

(assert (= (and b!6859840 (not c!1276905)) b!6859835))

(assert (= (and b!6859833 res!2799154) b!6859834))

(assert (= (and b!6859835 c!1276904) b!6859839))

(assert (= (and b!6859835 (not c!1276904)) b!6859841))

(assert (= (and b!6859839 res!2799158) b!6859838))

(assert (= (and b!6859841 (not res!2799156)) b!6859837))

(assert (= (and b!6859837 res!2799157) b!6859836))

(assert (= (or b!6859838 b!6859836) bm!624820))

(assert (= (or b!6859839 b!6859837) bm!624821))

(assert (= (or b!6859834 bm!624820) bm!624822))

(declare-fun m!7594782 () Bool)

(assert (=> b!6859833 m!7594782))

(declare-fun m!7594784 () Bool)

(assert (=> bm!624821 m!7594784))

(declare-fun m!7594786 () Bool)

(assert (=> bm!624822 m!7594786))

(assert (=> start!662282 d!2155378))

(declare-fun b!6859846 () Bool)

(declare-fun e!4135876 () Bool)

(declare-fun tp!1881110 () Bool)

(assert (=> b!6859846 (= e!4135876 (and tp_is_empty!42629 tp!1881110))))

(assert (=> b!6859538 (= tp!1881077 e!4135876)))

(assert (= (and b!6859538 (is-Cons!66241 (t!380108 s!2326))) b!6859846))

(declare-fun e!4135879 () Bool)

(assert (=> b!6859552 (= tp!1881068 e!4135879)))

(declare-fun b!6859859 () Bool)

(declare-fun tp!1881123 () Bool)

(assert (=> b!6859859 (= e!4135879 tp!1881123)))

(declare-fun b!6859858 () Bool)

(declare-fun tp!1881124 () Bool)

(declare-fun tp!1881122 () Bool)

(assert (=> b!6859858 (= e!4135879 (and tp!1881124 tp!1881122))))

(declare-fun b!6859860 () Bool)

(declare-fun tp!1881125 () Bool)

(declare-fun tp!1881121 () Bool)

(assert (=> b!6859860 (= e!4135879 (and tp!1881125 tp!1881121))))

(declare-fun b!6859857 () Bool)

(assert (=> b!6859857 (= e!4135879 tp_is_empty!42629)))

(assert (= (and b!6859552 (is-ElementMatch!16688 (regOne!33888 r!7292))) b!6859857))

(assert (= (and b!6859552 (is-Concat!25533 (regOne!33888 r!7292))) b!6859858))

(assert (= (and b!6859552 (is-Star!16688 (regOne!33888 r!7292))) b!6859859))

(assert (= (and b!6859552 (is-Union!16688 (regOne!33888 r!7292))) b!6859860))

(declare-fun e!4135880 () Bool)

(assert (=> b!6859552 (= tp!1881071 e!4135880)))

(declare-fun b!6859863 () Bool)

(declare-fun tp!1881128 () Bool)

(assert (=> b!6859863 (= e!4135880 tp!1881128)))

(declare-fun b!6859862 () Bool)

(declare-fun tp!1881129 () Bool)

(declare-fun tp!1881127 () Bool)

(assert (=> b!6859862 (= e!4135880 (and tp!1881129 tp!1881127))))

(declare-fun b!6859864 () Bool)

(declare-fun tp!1881130 () Bool)

(declare-fun tp!1881126 () Bool)

(assert (=> b!6859864 (= e!4135880 (and tp!1881130 tp!1881126))))

(declare-fun b!6859861 () Bool)

(assert (=> b!6859861 (= e!4135880 tp_is_empty!42629)))

(assert (= (and b!6859552 (is-ElementMatch!16688 (regTwo!33888 r!7292))) b!6859861))

(assert (= (and b!6859552 (is-Concat!25533 (regTwo!33888 r!7292))) b!6859862))

(assert (= (and b!6859552 (is-Star!16688 (regTwo!33888 r!7292))) b!6859863))

(assert (= (and b!6859552 (is-Union!16688 (regTwo!33888 r!7292))) b!6859864))

(declare-fun b!6859872 () Bool)

(declare-fun e!4135886 () Bool)

(declare-fun tp!1881135 () Bool)

(assert (=> b!6859872 (= e!4135886 tp!1881135)))

(declare-fun tp!1881136 () Bool)

(declare-fun b!6859871 () Bool)

(declare-fun e!4135885 () Bool)

(assert (=> b!6859871 (= e!4135885 (and (inv!84968 (h!72688 (t!380107 zl!343))) e!4135886 tp!1881136))))

(assert (=> b!6859544 (= tp!1881076 e!4135885)))

(assert (= b!6859871 b!6859872))

(assert (= (and b!6859544 (is-Cons!66240 (t!380107 zl!343))) b!6859871))

(declare-fun m!7594788 () Bool)

(assert (=> b!6859871 m!7594788))

(declare-fun condSetEmpty!47172 () Bool)

(assert (=> setNonEmpty!47166 (= condSetEmpty!47172 (= setRest!47166 (as set.empty (Set Context!12144))))))

(declare-fun setRes!47172 () Bool)

(assert (=> setNonEmpty!47166 (= tp!1881069 setRes!47172)))

(declare-fun setIsEmpty!47172 () Bool)

(assert (=> setIsEmpty!47172 setRes!47172))

(declare-fun setElem!47172 () Context!12144)

(declare-fun setNonEmpty!47172 () Bool)

(declare-fun tp!1881141 () Bool)

(declare-fun e!4135889 () Bool)

(assert (=> setNonEmpty!47172 (= setRes!47172 (and tp!1881141 (inv!84968 setElem!47172) e!4135889))))

(declare-fun setRest!47172 () (Set Context!12144))

(assert (=> setNonEmpty!47172 (= setRest!47166 (set.union (set.insert setElem!47172 (as set.empty (Set Context!12144))) setRest!47172))))

(declare-fun b!6859877 () Bool)

(declare-fun tp!1881142 () Bool)

(assert (=> b!6859877 (= e!4135889 tp!1881142)))

(assert (= (and setNonEmpty!47166 condSetEmpty!47172) setIsEmpty!47172))

(assert (= (and setNonEmpty!47166 (not condSetEmpty!47172)) setNonEmpty!47172))

(assert (= setNonEmpty!47172 b!6859877))

(declare-fun m!7594790 () Bool)

(assert (=> setNonEmpty!47172 m!7594790))

(declare-fun e!4135890 () Bool)

(assert (=> b!6859542 (= tp!1881073 e!4135890)))

(declare-fun b!6859880 () Bool)

(declare-fun tp!1881145 () Bool)

(assert (=> b!6859880 (= e!4135890 tp!1881145)))

(declare-fun b!6859879 () Bool)

(declare-fun tp!1881146 () Bool)

(declare-fun tp!1881144 () Bool)

(assert (=> b!6859879 (= e!4135890 (and tp!1881146 tp!1881144))))

(declare-fun b!6859881 () Bool)

(declare-fun tp!1881147 () Bool)

(declare-fun tp!1881143 () Bool)

(assert (=> b!6859881 (= e!4135890 (and tp!1881147 tp!1881143))))

(declare-fun b!6859878 () Bool)

(assert (=> b!6859878 (= e!4135890 tp_is_empty!42629)))

(assert (= (and b!6859542 (is-ElementMatch!16688 (reg!17017 r!7292))) b!6859878))

(assert (= (and b!6859542 (is-Concat!25533 (reg!17017 r!7292))) b!6859879))

(assert (= (and b!6859542 (is-Star!16688 (reg!17017 r!7292))) b!6859880))

(assert (= (and b!6859542 (is-Union!16688 (reg!17017 r!7292))) b!6859881))

(declare-fun b!6859886 () Bool)

(declare-fun e!4135893 () Bool)

(declare-fun tp!1881152 () Bool)

(declare-fun tp!1881153 () Bool)

(assert (=> b!6859886 (= e!4135893 (and tp!1881152 tp!1881153))))

(assert (=> b!6859537 (= tp!1881075 e!4135893)))

(assert (= (and b!6859537 (is-Cons!66239 (exprs!6572 setElem!47166))) b!6859886))

(declare-fun b!6859887 () Bool)

(declare-fun e!4135894 () Bool)

(declare-fun tp!1881154 () Bool)

(declare-fun tp!1881155 () Bool)

(assert (=> b!6859887 (= e!4135894 (and tp!1881154 tp!1881155))))

(assert (=> b!6859550 (= tp!1881074 e!4135894)))

(assert (= (and b!6859550 (is-Cons!66239 (exprs!6572 (h!72688 zl!343)))) b!6859887))

(declare-fun e!4135895 () Bool)

(assert (=> b!6859539 (= tp!1881070 e!4135895)))

(declare-fun b!6859890 () Bool)

(declare-fun tp!1881158 () Bool)

(assert (=> b!6859890 (= e!4135895 tp!1881158)))

(declare-fun b!6859889 () Bool)

(declare-fun tp!1881159 () Bool)

(declare-fun tp!1881157 () Bool)

(assert (=> b!6859889 (= e!4135895 (and tp!1881159 tp!1881157))))

(declare-fun b!6859891 () Bool)

(declare-fun tp!1881160 () Bool)

(declare-fun tp!1881156 () Bool)

(assert (=> b!6859891 (= e!4135895 (and tp!1881160 tp!1881156))))

(declare-fun b!6859888 () Bool)

(assert (=> b!6859888 (= e!4135895 tp_is_empty!42629)))

(assert (= (and b!6859539 (is-ElementMatch!16688 (regOne!33889 r!7292))) b!6859888))

(assert (= (and b!6859539 (is-Concat!25533 (regOne!33889 r!7292))) b!6859889))

(assert (= (and b!6859539 (is-Star!16688 (regOne!33889 r!7292))) b!6859890))

(assert (= (and b!6859539 (is-Union!16688 (regOne!33889 r!7292))) b!6859891))

(declare-fun e!4135896 () Bool)

(assert (=> b!6859539 (= tp!1881072 e!4135896)))

(declare-fun b!6859894 () Bool)

(declare-fun tp!1881163 () Bool)

(assert (=> b!6859894 (= e!4135896 tp!1881163)))

(declare-fun b!6859893 () Bool)

(declare-fun tp!1881164 () Bool)

(declare-fun tp!1881162 () Bool)

(assert (=> b!6859893 (= e!4135896 (and tp!1881164 tp!1881162))))

(declare-fun b!6859895 () Bool)

(declare-fun tp!1881165 () Bool)

(declare-fun tp!1881161 () Bool)

(assert (=> b!6859895 (= e!4135896 (and tp!1881165 tp!1881161))))

(declare-fun b!6859892 () Bool)

(assert (=> b!6859892 (= e!4135896 tp_is_empty!42629)))

(assert (= (and b!6859539 (is-ElementMatch!16688 (regTwo!33889 r!7292))) b!6859892))

(assert (= (and b!6859539 (is-Concat!25533 (regTwo!33889 r!7292))) b!6859893))

(assert (= (and b!6859539 (is-Star!16688 (regTwo!33889 r!7292))) b!6859894))

(assert (= (and b!6859539 (is-Union!16688 (regTwo!33889 r!7292))) b!6859895))

(declare-fun b_lambda!259145 () Bool)

(assert (= b_lambda!259141 (or b!6859551 b_lambda!259145)))

(declare-fun bs!1833253 () Bool)

(declare-fun d!2155382 () Bool)

(assert (= bs!1833253 (and d!2155382 b!6859551)))

(assert (=> bs!1833253 (= (dynLambda!26496 lambda!387933 lt!2457331) (matchZipper!2654 (set.insert lt!2457331 (as set.empty (Set Context!12144))) s!2326))))

(declare-fun m!7594792 () Bool)

(assert (=> bs!1833253 m!7594792))

(assert (=> bs!1833253 m!7594792))

(declare-fun m!7594794 () Bool)

(assert (=> bs!1833253 m!7594794))

(assert (=> d!2155358 d!2155382))

(declare-fun b_lambda!259147 () Bool)

(assert (= b_lambda!259139 (or b!6859548 b_lambda!259147)))

(declare-fun bs!1833254 () Bool)

(declare-fun d!2155384 () Bool)

(assert (= bs!1833254 (and d!2155384 b!6859548)))

(assert (=> bs!1833254 (= (dynLambda!26495 lambda!387934 (h!72687 (exprs!6572 lt!2457286))) (validRegex!8424 (h!72687 (exprs!6572 lt!2457286))))))

(declare-fun m!7594796 () Bool)

(assert (=> bs!1833254 m!7594796))

(assert (=> b!6859642 d!2155384))

(declare-fun b_lambda!259149 () Bool)

(assert (= b_lambda!259143 (or b!6859551 b_lambda!259149)))

(declare-fun bs!1833255 () Bool)

(declare-fun d!2155386 () Bool)

(assert (= bs!1833255 (and d!2155386 b!6859551)))

(assert (=> bs!1833255 (= (dynLambda!26496 lambda!387933 (h!72688 zl!343)) (matchZipper!2654 (set.insert (h!72688 zl!343) (as set.empty (Set Context!12144))) s!2326))))

(declare-fun m!7594798 () Bool)

(assert (=> bs!1833255 m!7594798))

(assert (=> bs!1833255 m!7594798))

(declare-fun m!7594800 () Bool)

(assert (=> bs!1833255 m!7594800))

(assert (=> b!6859661 d!2155386))

(push 1)

(assert (not d!2155342))

(assert (not b!6859668))

(assert (not d!2155376))

(assert (not b!6859879))

(assert (not b!6859863))

(assert (not d!2155368))

(assert (not b!6859744))

(assert (not d!2155338))

(assert (not bs!1833255))

(assert (not b!6859887))

(assert (not b!6859891))

(assert tp_is_empty!42629)

(assert (not b!6859660))

(assert (not b!6859669))

(assert (not bm!624822))

(assert (not bs!1833253))

(assert (not b!6859675))

(assert (not d!2155360))

(assert (not b!6859846))

(assert (not b!6859860))

(assert (not b!6859663))

(assert (not b!6859894))

(assert (not d!2155362))

(assert (not b!6859799))

(assert (not b!6859787))

(assert (not b!6859886))

(assert (not bm!624821))

(assert (not b!6859858))

(assert (not d!2155344))

(assert (not b!6859880))

(assert (not bm!624803))

(assert (not d!2155354))

(assert (not b_lambda!259145))

(assert (not d!2155340))

(assert (not b!6859864))

(assert (not b!6859890))

(assert (not d!2155358))

(assert (not b!6859862))

(assert (not b!6859796))

(assert (not d!2155374))

(assert (not b!6859643))

(assert (not bm!624811))

(assert (not b_lambda!259149))

(assert (not b_lambda!259147))

(assert (not b!6859795))

(assert (not b!6859877))

(assert (not bs!1833254))

(assert (not d!2155348))

(assert (not b!6859889))

(assert (not d!2155370))

(assert (not b!6859895))

(assert (not b!6859833))

(assert (not b!6859636))

(assert (not b!6859797))

(assert (not b!6859748))

(assert (not b!6859798))

(assert (not d!2155366))

(assert (not d!2155336))

(assert (not b!6859871))

(assert (not b!6859893))

(assert (not b!6859678))

(assert (not setNonEmpty!47172))

(assert (not b!6859881))

(assert (not bm!624804))

(assert (not b!6859658))

(assert (not b!6859859))

(assert (not b!6859872))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


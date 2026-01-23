; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!235610 () Bool)

(assert start!235610)

(declare-fun b!2402421 () Bool)

(declare-fun e!1530397 () Bool)

(declare-fun tp!764551 () Bool)

(declare-fun tp!764548 () Bool)

(assert (=> b!2402421 (= e!1530397 (and tp!764551 tp!764548))))

(declare-fun b!2402422 () Bool)

(declare-fun tp!764553 () Bool)

(declare-fun tp!764552 () Bool)

(assert (=> b!2402422 (= e!1530397 (and tp!764553 tp!764552))))

(declare-fun b!2402423 () Bool)

(declare-fun e!1530398 () Bool)

(declare-fun lt!872658 () Bool)

(declare-datatypes ((C!14242 0))(
  ( (C!14243 (val!8363 Int)) )
))
(declare-datatypes ((List!28322 0))(
  ( (Nil!28224) (Cons!28224 (h!33625 C!14242) (t!208299 List!28322)) )
))
(declare-fun s!9460 () List!28322)

(declare-fun isEmpty!16221 (List!28322) Bool)

(assert (=> b!2402423 (= e!1530398 (not (= lt!872658 (isEmpty!16221 s!9460))))))

(declare-fun b!2402424 () Bool)

(declare-fun e!1530399 () Bool)

(declare-fun e!1530396 () Bool)

(assert (=> b!2402424 (= e!1530399 (not e!1530396))))

(declare-fun res!1020601 () Bool)

(assert (=> b!2402424 (=> res!1020601 e!1530396)))

(declare-datatypes ((Regex!7042 0))(
  ( (ElementMatch!7042 (c!382555 C!14242)) (Concat!11678 (regOne!14596 Regex!7042) (regTwo!14596 Regex!7042)) (EmptyExpr!7042) (Star!7042 (reg!7371 Regex!7042)) (EmptyLang!7042) (Union!7042 (regOne!14597 Regex!7042) (regTwo!14597 Regex!7042)) )
))
(declare-fun r!13927 () Regex!7042)

(assert (=> b!2402424 (= res!1020601 (or (is-Concat!11678 r!13927) (not (is-EmptyExpr!7042 r!13927))))))

(declare-fun matchRSpec!891 (Regex!7042 List!28322) Bool)

(assert (=> b!2402424 (= lt!872658 (matchRSpec!891 r!13927 s!9460))))

(declare-fun matchR!3159 (Regex!7042 List!28322) Bool)

(assert (=> b!2402424 (= lt!872658 (matchR!3159 r!13927 s!9460))))

(declare-datatypes ((Unit!41355 0))(
  ( (Unit!41356) )
))
(declare-fun lt!872657 () Unit!41355)

(declare-fun mainMatchTheorem!891 (Regex!7042 List!28322) Unit!41355)

(assert (=> b!2402424 (= lt!872657 (mainMatchTheorem!891 r!13927 s!9460))))

(declare-fun res!1020602 () Bool)

(assert (=> start!235610 (=> (not res!1020602) (not e!1530399))))

(declare-datatypes ((List!28323 0))(
  ( (Nil!28225) (Cons!28225 (h!33626 Regex!7042) (t!208300 List!28323)) )
))
(declare-fun l!9164 () List!28323)

(declare-fun lambda!90318 () Int)

(declare-fun forall!5676 (List!28323 Int) Bool)

(assert (=> start!235610 (= res!1020602 (forall!5676 l!9164 lambda!90318))))

(assert (=> start!235610 e!1530399))

(declare-fun e!1530395 () Bool)

(assert (=> start!235610 e!1530395))

(assert (=> start!235610 e!1530397))

(declare-fun e!1530400 () Bool)

(assert (=> start!235610 e!1530400))

(declare-fun b!2402425 () Bool)

(declare-fun res!1020603 () Bool)

(assert (=> b!2402425 (=> (not res!1020603) (not e!1530399))))

(declare-fun generalisedConcat!143 (List!28323) Regex!7042)

(assert (=> b!2402425 (= res!1020603 (= r!13927 (generalisedConcat!143 l!9164)))))

(declare-fun b!2402426 () Bool)

(declare-datatypes ((tuple2!27924 0))(
  ( (tuple2!27925 (_1!16503 List!28322) (_2!16503 List!28322)) )
))
(declare-datatypes ((Option!5573 0))(
  ( (None!5572) (Some!5572 (v!30980 tuple2!27924)) )
))
(declare-fun isDefined!4401 (Option!5573) Bool)

(declare-fun findConcatSeparation!681 (Regex!7042 Regex!7042 List!28322 List!28322 List!28322) Option!5573)

(assert (=> b!2402426 (= e!1530398 (not (= lt!872658 (isDefined!4401 (findConcatSeparation!681 (h!33626 l!9164) (generalisedConcat!143 (t!208300 l!9164)) Nil!28224 s!9460 s!9460)))))))

(declare-fun b!2402427 () Bool)

(declare-fun res!1020599 () Bool)

(assert (=> b!2402427 (=> res!1020599 e!1530396)))

(assert (=> b!2402427 (= res!1020599 e!1530398)))

(declare-fun c!382554 () Bool)

(assert (=> b!2402427 (= c!382554 (is-Cons!28225 l!9164))))

(declare-fun b!2402428 () Bool)

(assert (=> b!2402428 (= e!1530396 (forall!5676 (t!208300 l!9164) lambda!90318))))

(declare-fun b!2402429 () Bool)

(declare-fun tp_is_empty!11497 () Bool)

(declare-fun tp!764547 () Bool)

(assert (=> b!2402429 (= e!1530400 (and tp_is_empty!11497 tp!764547))))

(declare-fun b!2402430 () Bool)

(declare-fun tp!764546 () Bool)

(assert (=> b!2402430 (= e!1530397 tp!764546)))

(declare-fun b!2402431 () Bool)

(declare-fun tp!764549 () Bool)

(declare-fun tp!764550 () Bool)

(assert (=> b!2402431 (= e!1530395 (and tp!764549 tp!764550))))

(declare-fun b!2402432 () Bool)

(declare-fun res!1020600 () Bool)

(assert (=> b!2402432 (=> res!1020600 e!1530396)))

(assert (=> b!2402432 (= res!1020600 (not (is-Cons!28225 l!9164)))))

(declare-fun b!2402433 () Bool)

(assert (=> b!2402433 (= e!1530397 tp_is_empty!11497)))

(assert (= (and start!235610 res!1020602) b!2402425))

(assert (= (and b!2402425 res!1020603) b!2402424))

(assert (= (and b!2402424 (not res!1020601)) b!2402427))

(assert (= (and b!2402427 c!382554) b!2402426))

(assert (= (and b!2402427 (not c!382554)) b!2402423))

(assert (= (and b!2402427 (not res!1020599)) b!2402432))

(assert (= (and b!2402432 (not res!1020600)) b!2402428))

(assert (= (and start!235610 (is-Cons!28225 l!9164)) b!2402431))

(assert (= (and start!235610 (is-ElementMatch!7042 r!13927)) b!2402433))

(assert (= (and start!235610 (is-Concat!11678 r!13927)) b!2402421))

(assert (= (and start!235610 (is-Star!7042 r!13927)) b!2402430))

(assert (= (and start!235610 (is-Union!7042 r!13927)) b!2402422))

(assert (= (and start!235610 (is-Cons!28224 s!9460)) b!2402429))

(declare-fun m!2798463 () Bool)

(assert (=> b!2402425 m!2798463))

(declare-fun m!2798465 () Bool)

(assert (=> b!2402426 m!2798465))

(assert (=> b!2402426 m!2798465))

(declare-fun m!2798467 () Bool)

(assert (=> b!2402426 m!2798467))

(assert (=> b!2402426 m!2798467))

(declare-fun m!2798469 () Bool)

(assert (=> b!2402426 m!2798469))

(declare-fun m!2798471 () Bool)

(assert (=> b!2402428 m!2798471))

(declare-fun m!2798473 () Bool)

(assert (=> b!2402424 m!2798473))

(declare-fun m!2798475 () Bool)

(assert (=> b!2402424 m!2798475))

(declare-fun m!2798477 () Bool)

(assert (=> b!2402424 m!2798477))

(declare-fun m!2798479 () Bool)

(assert (=> b!2402423 m!2798479))

(declare-fun m!2798481 () Bool)

(assert (=> start!235610 m!2798481))

(push 1)

(assert (not b!2402423))

(assert (not start!235610))

(assert (not b!2402421))

(assert (not b!2402430))

(assert (not b!2402428))

(assert (not b!2402424))

(assert (not b!2402429))

(assert (not b!2402431))

(assert (not b!2402425))

(assert tp_is_empty!11497)

(assert (not b!2402426))

(assert (not b!2402422))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!699770 () Bool)

(declare-fun res!1020623 () Bool)

(declare-fun e!1530423 () Bool)

(assert (=> d!699770 (=> res!1020623 e!1530423)))

(assert (=> d!699770 (= res!1020623 (is-Nil!28225 l!9164))))

(assert (=> d!699770 (= (forall!5676 l!9164 lambda!90318) e!1530423)))

(declare-fun b!2402477 () Bool)

(declare-fun e!1530424 () Bool)

(assert (=> b!2402477 (= e!1530423 e!1530424)))

(declare-fun res!1020624 () Bool)

(assert (=> b!2402477 (=> (not res!1020624) (not e!1530424))))

(declare-fun dynLambda!12156 (Int Regex!7042) Bool)

(assert (=> b!2402477 (= res!1020624 (dynLambda!12156 lambda!90318 (h!33626 l!9164)))))

(declare-fun b!2402478 () Bool)

(assert (=> b!2402478 (= e!1530424 (forall!5676 (t!208300 l!9164) lambda!90318))))

(assert (= (and d!699770 (not res!1020623)) b!2402477))

(assert (= (and b!2402477 res!1020624) b!2402478))

(declare-fun b_lambda!74347 () Bool)

(assert (=> (not b_lambda!74347) (not b!2402477)))

(declare-fun m!2798505 () Bool)

(assert (=> b!2402477 m!2798505))

(assert (=> b!2402478 m!2798471))

(assert (=> start!235610 d!699770))

(declare-fun d!699776 () Bool)

(declare-fun isEmpty!16223 (Option!5573) Bool)

(assert (=> d!699776 (= (isDefined!4401 (findConcatSeparation!681 (h!33626 l!9164) (generalisedConcat!143 (t!208300 l!9164)) Nil!28224 s!9460 s!9460)) (not (isEmpty!16223 (findConcatSeparation!681 (h!33626 l!9164) (generalisedConcat!143 (t!208300 l!9164)) Nil!28224 s!9460 s!9460))))))

(declare-fun bs!463192 () Bool)

(assert (= bs!463192 d!699776))

(assert (=> bs!463192 m!2798467))

(declare-fun m!2798507 () Bool)

(assert (=> bs!463192 m!2798507))

(assert (=> b!2402426 d!699776))

(declare-fun b!2402497 () Bool)

(declare-fun res!1020636 () Bool)

(declare-fun e!1530437 () Bool)

(assert (=> b!2402497 (=> (not res!1020636) (not e!1530437))))

(declare-fun lt!872673 () Option!5573)

(declare-fun get!8649 (Option!5573) tuple2!27924)

(assert (=> b!2402497 (= res!1020636 (matchR!3159 (generalisedConcat!143 (t!208300 l!9164)) (_2!16503 (get!8649 lt!872673))))))

(declare-fun b!2402498 () Bool)

(declare-fun e!1530439 () Bool)

(assert (=> b!2402498 (= e!1530439 (matchR!3159 (generalisedConcat!143 (t!208300 l!9164)) s!9460))))

(declare-fun b!2402499 () Bool)

(declare-fun res!1020637 () Bool)

(assert (=> b!2402499 (=> (not res!1020637) (not e!1530437))))

(assert (=> b!2402499 (= res!1020637 (matchR!3159 (h!33626 l!9164) (_1!16503 (get!8649 lt!872673))))))

(declare-fun b!2402500 () Bool)

(declare-fun lt!872671 () Unit!41355)

(declare-fun lt!872672 () Unit!41355)

(assert (=> b!2402500 (= lt!872671 lt!872672)))

(declare-fun ++!6986 (List!28322 List!28322) List!28322)

(assert (=> b!2402500 (= (++!6986 (++!6986 Nil!28224 (Cons!28224 (h!33625 s!9460) Nil!28224)) (t!208299 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!626 (List!28322 C!14242 List!28322 List!28322) Unit!41355)

(assert (=> b!2402500 (= lt!872672 (lemmaMoveElementToOtherListKeepsConcatEq!626 Nil!28224 (h!33625 s!9460) (t!208299 s!9460) s!9460))))

(declare-fun e!1530438 () Option!5573)

(assert (=> b!2402500 (= e!1530438 (findConcatSeparation!681 (h!33626 l!9164) (generalisedConcat!143 (t!208300 l!9164)) (++!6986 Nil!28224 (Cons!28224 (h!33625 s!9460) Nil!28224)) (t!208299 s!9460) s!9460))))

(declare-fun b!2402501 () Bool)

(declare-fun e!1530436 () Bool)

(assert (=> b!2402501 (= e!1530436 (not (isDefined!4401 lt!872673)))))

(declare-fun b!2402502 () Bool)

(assert (=> b!2402502 (= e!1530438 None!5572)))

(declare-fun d!699778 () Bool)

(assert (=> d!699778 e!1530436))

(declare-fun res!1020639 () Bool)

(assert (=> d!699778 (=> res!1020639 e!1530436)))

(assert (=> d!699778 (= res!1020639 e!1530437)))

(declare-fun res!1020638 () Bool)

(assert (=> d!699778 (=> (not res!1020638) (not e!1530437))))

(assert (=> d!699778 (= res!1020638 (isDefined!4401 lt!872673))))

(declare-fun e!1530435 () Option!5573)

(assert (=> d!699778 (= lt!872673 e!1530435)))

(declare-fun c!382565 () Bool)

(assert (=> d!699778 (= c!382565 e!1530439)))

(declare-fun res!1020635 () Bool)

(assert (=> d!699778 (=> (not res!1020635) (not e!1530439))))

(assert (=> d!699778 (= res!1020635 (matchR!3159 (h!33626 l!9164) Nil!28224))))

(declare-fun validRegex!2767 (Regex!7042) Bool)

(assert (=> d!699778 (validRegex!2767 (h!33626 l!9164))))

(assert (=> d!699778 (= (findConcatSeparation!681 (h!33626 l!9164) (generalisedConcat!143 (t!208300 l!9164)) Nil!28224 s!9460 s!9460) lt!872673)))

(declare-fun b!2402503 () Bool)

(assert (=> b!2402503 (= e!1530435 e!1530438)))

(declare-fun c!382564 () Bool)

(assert (=> b!2402503 (= c!382564 (is-Nil!28224 s!9460))))

(declare-fun b!2402504 () Bool)

(assert (=> b!2402504 (= e!1530435 (Some!5572 (tuple2!27925 Nil!28224 s!9460)))))

(declare-fun b!2402505 () Bool)

(assert (=> b!2402505 (= e!1530437 (= (++!6986 (_1!16503 (get!8649 lt!872673)) (_2!16503 (get!8649 lt!872673))) s!9460))))

(assert (= (and d!699778 res!1020635) b!2402498))

(assert (= (and d!699778 c!382565) b!2402504))

(assert (= (and d!699778 (not c!382565)) b!2402503))

(assert (= (and b!2402503 c!382564) b!2402502))

(assert (= (and b!2402503 (not c!382564)) b!2402500))

(assert (= (and d!699778 res!1020638) b!2402499))

(assert (= (and b!2402499 res!1020637) b!2402497))

(assert (= (and b!2402497 res!1020636) b!2402505))

(assert (= (and d!699778 (not res!1020639)) b!2402501))

(declare-fun m!2798509 () Bool)

(assert (=> d!699778 m!2798509))

(declare-fun m!2798511 () Bool)

(assert (=> d!699778 m!2798511))

(declare-fun m!2798513 () Bool)

(assert (=> d!699778 m!2798513))

(assert (=> b!2402498 m!2798465))

(declare-fun m!2798515 () Bool)

(assert (=> b!2402498 m!2798515))

(assert (=> b!2402501 m!2798509))

(declare-fun m!2798517 () Bool)

(assert (=> b!2402497 m!2798517))

(assert (=> b!2402497 m!2798465))

(declare-fun m!2798519 () Bool)

(assert (=> b!2402497 m!2798519))

(declare-fun m!2798521 () Bool)

(assert (=> b!2402500 m!2798521))

(assert (=> b!2402500 m!2798521))

(declare-fun m!2798523 () Bool)

(assert (=> b!2402500 m!2798523))

(declare-fun m!2798525 () Bool)

(assert (=> b!2402500 m!2798525))

(assert (=> b!2402500 m!2798465))

(assert (=> b!2402500 m!2798521))

(declare-fun m!2798527 () Bool)

(assert (=> b!2402500 m!2798527))

(assert (=> b!2402505 m!2798517))

(declare-fun m!2798529 () Bool)

(assert (=> b!2402505 m!2798529))

(assert (=> b!2402499 m!2798517))

(declare-fun m!2798531 () Bool)

(assert (=> b!2402499 m!2798531))

(assert (=> b!2402426 d!699778))

(declare-fun bs!463193 () Bool)

(declare-fun d!699780 () Bool)

(assert (= bs!463193 (and d!699780 start!235610)))

(declare-fun lambda!90326 () Int)

(assert (=> bs!463193 (= lambda!90326 lambda!90318)))

(declare-fun b!2402545 () Bool)

(declare-fun e!1530462 () Bool)

(declare-fun e!1530464 () Bool)

(assert (=> b!2402545 (= e!1530462 e!1530464)))

(declare-fun c!382579 () Bool)

(declare-fun isEmpty!16224 (List!28323) Bool)

(assert (=> b!2402545 (= c!382579 (isEmpty!16224 (t!208300 l!9164)))))

(declare-fun b!2402546 () Bool)

(declare-fun e!1530466 () Regex!7042)

(assert (=> b!2402546 (= e!1530466 (Concat!11678 (h!33626 (t!208300 l!9164)) (generalisedConcat!143 (t!208300 (t!208300 l!9164)))))))

(declare-fun b!2402547 () Bool)

(declare-fun e!1530467 () Bool)

(assert (=> b!2402547 (= e!1530467 (isEmpty!16224 (t!208300 (t!208300 l!9164))))))

(declare-fun b!2402548 () Bool)

(declare-fun e!1530463 () Bool)

(declare-fun lt!872682 () Regex!7042)

(declare-fun isConcat!110 (Regex!7042) Bool)

(assert (=> b!2402548 (= e!1530463 (isConcat!110 lt!872682))))

(declare-fun b!2402549 () Bool)

(declare-fun e!1530465 () Regex!7042)

(assert (=> b!2402549 (= e!1530465 (h!33626 (t!208300 l!9164)))))

(assert (=> d!699780 e!1530462))

(declare-fun res!1020655 () Bool)

(assert (=> d!699780 (=> (not res!1020655) (not e!1530462))))

(assert (=> d!699780 (= res!1020655 (validRegex!2767 lt!872682))))

(assert (=> d!699780 (= lt!872682 e!1530465)))

(declare-fun c!382581 () Bool)

(assert (=> d!699780 (= c!382581 e!1530467)))

(declare-fun res!1020654 () Bool)

(assert (=> d!699780 (=> (not res!1020654) (not e!1530467))))

(assert (=> d!699780 (= res!1020654 (is-Cons!28225 (t!208300 l!9164)))))

(assert (=> d!699780 (forall!5676 (t!208300 l!9164) lambda!90326)))

(assert (=> d!699780 (= (generalisedConcat!143 (t!208300 l!9164)) lt!872682)))

(declare-fun b!2402544 () Bool)

(assert (=> b!2402544 (= e!1530465 e!1530466)))

(declare-fun c!382580 () Bool)

(assert (=> b!2402544 (= c!382580 (is-Cons!28225 (t!208300 l!9164)))))

(declare-fun b!2402550 () Bool)

(declare-fun head!5314 (List!28323) Regex!7042)

(assert (=> b!2402550 (= e!1530463 (= lt!872682 (head!5314 (t!208300 l!9164))))))

(declare-fun b!2402551 () Bool)

(assert (=> b!2402551 (= e!1530464 e!1530463)))

(declare-fun c!382578 () Bool)

(declare-fun tail!3584 (List!28323) List!28323)

(assert (=> b!2402551 (= c!382578 (isEmpty!16224 (tail!3584 (t!208300 l!9164))))))

(declare-fun b!2402552 () Bool)

(assert (=> b!2402552 (= e!1530466 EmptyExpr!7042)))

(declare-fun b!2402553 () Bool)

(declare-fun isEmptyExpr!110 (Regex!7042) Bool)

(assert (=> b!2402553 (= e!1530464 (isEmptyExpr!110 lt!872682))))

(assert (= (and d!699780 res!1020654) b!2402547))

(assert (= (and d!699780 c!382581) b!2402549))

(assert (= (and d!699780 (not c!382581)) b!2402544))

(assert (= (and b!2402544 c!382580) b!2402546))

(assert (= (and b!2402544 (not c!382580)) b!2402552))

(assert (= (and d!699780 res!1020655) b!2402545))

(assert (= (and b!2402545 c!382579) b!2402553))

(assert (= (and b!2402545 (not c!382579)) b!2402551))

(assert (= (and b!2402551 c!382578) b!2402550))

(assert (= (and b!2402551 (not c!382578)) b!2402548))

(declare-fun m!2798533 () Bool)

(assert (=> b!2402545 m!2798533))

(declare-fun m!2798535 () Bool)

(assert (=> b!2402553 m!2798535))

(declare-fun m!2798537 () Bool)

(assert (=> b!2402546 m!2798537))

(declare-fun m!2798539 () Bool)

(assert (=> b!2402548 m!2798539))

(declare-fun m!2798541 () Bool)

(assert (=> b!2402551 m!2798541))

(assert (=> b!2402551 m!2798541))

(declare-fun m!2798543 () Bool)

(assert (=> b!2402551 m!2798543))

(declare-fun m!2798545 () Bool)

(assert (=> b!2402550 m!2798545))

(declare-fun m!2798547 () Bool)

(assert (=> b!2402547 m!2798547))

(declare-fun m!2798549 () Bool)

(assert (=> d!699780 m!2798549))

(declare-fun m!2798551 () Bool)

(assert (=> d!699780 m!2798551))

(assert (=> b!2402426 d!699780))

(declare-fun d!699782 () Bool)

(assert (=> d!699782 (= (isEmpty!16221 s!9460) (is-Nil!28224 s!9460))))

(assert (=> b!2402423 d!699782))

(declare-fun d!699784 () Bool)

(declare-fun res!1020656 () Bool)

(declare-fun e!1530468 () Bool)

(assert (=> d!699784 (=> res!1020656 e!1530468)))

(assert (=> d!699784 (= res!1020656 (is-Nil!28225 (t!208300 l!9164)))))

(assert (=> d!699784 (= (forall!5676 (t!208300 l!9164) lambda!90318) e!1530468)))

(declare-fun b!2402554 () Bool)

(declare-fun e!1530469 () Bool)

(assert (=> b!2402554 (= e!1530468 e!1530469)))

(declare-fun res!1020657 () Bool)

(assert (=> b!2402554 (=> (not res!1020657) (not e!1530469))))

(assert (=> b!2402554 (= res!1020657 (dynLambda!12156 lambda!90318 (h!33626 (t!208300 l!9164))))))

(declare-fun b!2402555 () Bool)

(assert (=> b!2402555 (= e!1530469 (forall!5676 (t!208300 (t!208300 l!9164)) lambda!90318))))

(assert (= (and d!699784 (not res!1020656)) b!2402554))

(assert (= (and b!2402554 res!1020657) b!2402555))

(declare-fun b_lambda!74349 () Bool)

(assert (=> (not b_lambda!74349) (not b!2402554)))

(declare-fun m!2798553 () Bool)

(assert (=> b!2402554 m!2798553))

(declare-fun m!2798555 () Bool)

(assert (=> b!2402555 m!2798555))

(assert (=> b!2402428 d!699784))

(declare-fun b!2402621 () Bool)

(assert (=> b!2402621 true))

(assert (=> b!2402621 true))

(declare-fun bs!463194 () Bool)

(declare-fun b!2402619 () Bool)

(assert (= bs!463194 (and b!2402619 b!2402621)))

(declare-fun lambda!90334 () Int)

(declare-fun lambda!90333 () Int)

(assert (=> bs!463194 (not (= lambda!90334 lambda!90333))))

(assert (=> b!2402619 true))

(assert (=> b!2402619 true))

(declare-fun b!2402611 () Bool)

(declare-fun c!382596 () Bool)

(assert (=> b!2402611 (= c!382596 (is-ElementMatch!7042 r!13927))))

(declare-fun e!1530505 () Bool)

(declare-fun e!1530507 () Bool)

(assert (=> b!2402611 (= e!1530505 e!1530507)))

(declare-fun b!2402612 () Bool)

(declare-fun c!382597 () Bool)

(assert (=> b!2402612 (= c!382597 (is-Union!7042 r!13927))))

(declare-fun e!1530501 () Bool)

(assert (=> b!2402612 (= e!1530507 e!1530501)))

(declare-fun b!2402613 () Bool)

(declare-fun e!1530506 () Bool)

(assert (=> b!2402613 (= e!1530506 e!1530505)))

(declare-fun res!1020685 () Bool)

(assert (=> b!2402613 (= res!1020685 (not (is-EmptyLang!7042 r!13927)))))

(assert (=> b!2402613 (=> (not res!1020685) (not e!1530505))))

(declare-fun d!699786 () Bool)

(declare-fun c!382598 () Bool)

(assert (=> d!699786 (= c!382598 (is-EmptyExpr!7042 r!13927))))

(assert (=> d!699786 (= (matchRSpec!891 r!13927 s!9460) e!1530506)))

(declare-fun b!2402614 () Bool)

(declare-fun e!1530502 () Bool)

(assert (=> b!2402614 (= e!1530501 e!1530502)))

(declare-fun res!1020684 () Bool)

(assert (=> b!2402614 (= res!1020684 (matchRSpec!891 (regOne!14597 r!13927) s!9460))))

(assert (=> b!2402614 (=> res!1020684 e!1530502)))

(declare-fun b!2402615 () Bool)

(assert (=> b!2402615 (= e!1530502 (matchRSpec!891 (regTwo!14597 r!13927) s!9460))))

(declare-fun b!2402616 () Bool)

(assert (=> b!2402616 (= e!1530507 (= s!9460 (Cons!28224 (c!382555 r!13927) Nil!28224)))))

(declare-fun b!2402617 () Bool)

(declare-fun e!1530504 () Bool)

(assert (=> b!2402617 (= e!1530501 e!1530504)))

(declare-fun c!382599 () Bool)

(assert (=> b!2402617 (= c!382599 (is-Star!7042 r!13927))))

(declare-fun b!2402618 () Bool)

(declare-fun call!146785 () Bool)

(assert (=> b!2402618 (= e!1530506 call!146785)))

(declare-fun bm!146780 () Bool)

(assert (=> bm!146780 (= call!146785 (isEmpty!16221 s!9460))))

(declare-fun call!146786 () Bool)

(assert (=> b!2402619 (= e!1530504 call!146786)))

(declare-fun b!2402620 () Bool)

(declare-fun res!1020683 () Bool)

(declare-fun e!1530503 () Bool)

(assert (=> b!2402620 (=> res!1020683 e!1530503)))

(assert (=> b!2402620 (= res!1020683 call!146785)))

(assert (=> b!2402620 (= e!1530504 e!1530503)))

(declare-fun bm!146781 () Bool)

(declare-fun Exists!1101 (Int) Bool)

(assert (=> bm!146781 (= call!146786 (Exists!1101 (ite c!382599 lambda!90333 lambda!90334)))))

(assert (=> b!2402621 (= e!1530503 call!146786)))

(assert (= (and d!699786 c!382598) b!2402618))

(assert (= (and d!699786 (not c!382598)) b!2402613))

(assert (= (and b!2402613 res!1020685) b!2402611))

(assert (= (and b!2402611 c!382596) b!2402616))

(assert (= (and b!2402611 (not c!382596)) b!2402612))

(assert (= (and b!2402612 c!382597) b!2402614))

(assert (= (and b!2402612 (not c!382597)) b!2402617))

(assert (= (and b!2402614 (not res!1020684)) b!2402615))

(assert (= (and b!2402617 c!382599) b!2402620))

(assert (= (and b!2402617 (not c!382599)) b!2402619))

(assert (= (and b!2402620 (not res!1020683)) b!2402621))

(assert (= (or b!2402621 b!2402619) bm!146781))

(assert (= (or b!2402618 b!2402620) bm!146780))

(declare-fun m!2798581 () Bool)

(assert (=> b!2402614 m!2798581))

(declare-fun m!2798583 () Bool)

(assert (=> b!2402615 m!2798583))

(assert (=> bm!146780 m!2798479))

(declare-fun m!2798585 () Bool)

(assert (=> bm!146781 m!2798585))

(assert (=> b!2402424 d!699786))

(declare-fun d!699790 () Bool)

(declare-fun e!1530532 () Bool)

(assert (=> d!699790 e!1530532))

(declare-fun c!382614 () Bool)

(assert (=> d!699790 (= c!382614 (is-EmptyExpr!7042 r!13927))))

(declare-fun lt!872691 () Bool)

(declare-fun e!1530533 () Bool)

(assert (=> d!699790 (= lt!872691 e!1530533)))

(declare-fun c!382616 () Bool)

(assert (=> d!699790 (= c!382616 (isEmpty!16221 s!9460))))

(assert (=> d!699790 (validRegex!2767 r!13927)))

(assert (=> d!699790 (= (matchR!3159 r!13927 s!9460) lt!872691)))

(declare-fun b!2402670 () Bool)

(declare-fun res!1020704 () Bool)

(declare-fun e!1530536 () Bool)

(assert (=> b!2402670 (=> (not res!1020704) (not e!1530536))))

(declare-fun call!146789 () Bool)

(assert (=> b!2402670 (= res!1020704 (not call!146789))))

(declare-fun b!2402671 () Bool)

(declare-fun e!1530535 () Bool)

(assert (=> b!2402671 (= e!1530535 (not lt!872691))))

(declare-fun b!2402672 () Bool)

(assert (=> b!2402672 (= e!1530532 e!1530535)))

(declare-fun c!382615 () Bool)

(assert (=> b!2402672 (= c!382615 (is-EmptyLang!7042 r!13927))))

(declare-fun b!2402673 () Bool)

(declare-fun res!1020705 () Bool)

(declare-fun e!1530537 () Bool)

(assert (=> b!2402673 (=> res!1020705 e!1530537)))

(assert (=> b!2402673 (= res!1020705 e!1530536)))

(declare-fun res!1020706 () Bool)

(assert (=> b!2402673 (=> (not res!1020706) (not e!1530536))))

(assert (=> b!2402673 (= res!1020706 lt!872691)))

(declare-fun bm!146784 () Bool)

(assert (=> bm!146784 (= call!146789 (isEmpty!16221 s!9460))))

(declare-fun b!2402674 () Bool)

(declare-fun res!1020710 () Bool)

(declare-fun e!1530534 () Bool)

(assert (=> b!2402674 (=> res!1020710 e!1530534)))

(declare-fun tail!3585 (List!28322) List!28322)

(assert (=> b!2402674 (= res!1020710 (not (isEmpty!16221 (tail!3585 s!9460))))))

(declare-fun b!2402675 () Bool)

(declare-fun res!1020709 () Bool)

(assert (=> b!2402675 (=> res!1020709 e!1530537)))

(assert (=> b!2402675 (= res!1020709 (not (is-ElementMatch!7042 r!13927)))))

(assert (=> b!2402675 (= e!1530535 e!1530537)))

(declare-fun b!2402676 () Bool)

(declare-fun derivativeStep!1749 (Regex!7042 C!14242) Regex!7042)

(declare-fun head!5315 (List!28322) C!14242)

(assert (=> b!2402676 (= e!1530533 (matchR!3159 (derivativeStep!1749 r!13927 (head!5315 s!9460)) (tail!3585 s!9460)))))

(declare-fun b!2402677 () Bool)

(declare-fun res!1020711 () Bool)

(assert (=> b!2402677 (=> (not res!1020711) (not e!1530536))))

(assert (=> b!2402677 (= res!1020711 (isEmpty!16221 (tail!3585 s!9460)))))

(declare-fun b!2402678 () Bool)

(assert (=> b!2402678 (= e!1530532 (= lt!872691 call!146789))))

(declare-fun b!2402679 () Bool)

(declare-fun e!1530538 () Bool)

(assert (=> b!2402679 (= e!1530538 e!1530534)))

(declare-fun res!1020708 () Bool)

(assert (=> b!2402679 (=> res!1020708 e!1530534)))

(assert (=> b!2402679 (= res!1020708 call!146789)))

(declare-fun b!2402680 () Bool)

(assert (=> b!2402680 (= e!1530534 (not (= (head!5315 s!9460) (c!382555 r!13927))))))

(declare-fun b!2402681 () Bool)

(declare-fun nullable!2091 (Regex!7042) Bool)

(assert (=> b!2402681 (= e!1530533 (nullable!2091 r!13927))))

(declare-fun b!2402682 () Bool)

(assert (=> b!2402682 (= e!1530537 e!1530538)))

(declare-fun res!1020707 () Bool)

(assert (=> b!2402682 (=> (not res!1020707) (not e!1530538))))

(assert (=> b!2402682 (= res!1020707 (not lt!872691))))

(declare-fun b!2402683 () Bool)

(assert (=> b!2402683 (= e!1530536 (= (head!5315 s!9460) (c!382555 r!13927)))))

(assert (= (and d!699790 c!382616) b!2402681))

(assert (= (and d!699790 (not c!382616)) b!2402676))

(assert (= (and d!699790 c!382614) b!2402678))

(assert (= (and d!699790 (not c!382614)) b!2402672))

(assert (= (and b!2402672 c!382615) b!2402671))

(assert (= (and b!2402672 (not c!382615)) b!2402675))

(assert (= (and b!2402675 (not res!1020709)) b!2402673))

(assert (= (and b!2402673 res!1020706) b!2402670))

(assert (= (and b!2402670 res!1020704) b!2402677))

(assert (= (and b!2402677 res!1020711) b!2402683))

(assert (= (and b!2402673 (not res!1020705)) b!2402682))

(assert (= (and b!2402682 res!1020707) b!2402679))

(assert (= (and b!2402679 (not res!1020708)) b!2402674))

(assert (= (and b!2402674 (not res!1020710)) b!2402680))

(assert (= (or b!2402678 b!2402670 b!2402679) bm!146784))

(declare-fun m!2798607 () Bool)

(assert (=> b!2402676 m!2798607))

(assert (=> b!2402676 m!2798607))

(declare-fun m!2798609 () Bool)

(assert (=> b!2402676 m!2798609))

(declare-fun m!2798611 () Bool)

(assert (=> b!2402676 m!2798611))

(assert (=> b!2402676 m!2798609))

(assert (=> b!2402676 m!2798611))

(declare-fun m!2798613 () Bool)

(assert (=> b!2402676 m!2798613))

(assert (=> b!2402677 m!2798611))

(assert (=> b!2402677 m!2798611))

(declare-fun m!2798615 () Bool)

(assert (=> b!2402677 m!2798615))

(assert (=> d!699790 m!2798479))

(declare-fun m!2798617 () Bool)

(assert (=> d!699790 m!2798617))

(declare-fun m!2798619 () Bool)

(assert (=> b!2402681 m!2798619))

(assert (=> bm!146784 m!2798479))

(assert (=> b!2402674 m!2798611))

(assert (=> b!2402674 m!2798611))

(assert (=> b!2402674 m!2798615))

(assert (=> b!2402683 m!2798607))

(assert (=> b!2402680 m!2798607))

(assert (=> b!2402424 d!699790))

(declare-fun d!699796 () Bool)

(assert (=> d!699796 (= (matchR!3159 r!13927 s!9460) (matchRSpec!891 r!13927 s!9460))))

(declare-fun lt!872694 () Unit!41355)

(declare-fun choose!14219 (Regex!7042 List!28322) Unit!41355)

(assert (=> d!699796 (= lt!872694 (choose!14219 r!13927 s!9460))))

(assert (=> d!699796 (validRegex!2767 r!13927)))

(assert (=> d!699796 (= (mainMatchTheorem!891 r!13927 s!9460) lt!872694)))

(declare-fun bs!463196 () Bool)

(assert (= bs!463196 d!699796))

(assert (=> bs!463196 m!2798475))

(assert (=> bs!463196 m!2798473))

(declare-fun m!2798621 () Bool)

(assert (=> bs!463196 m!2798621))

(assert (=> bs!463196 m!2798617))

(assert (=> b!2402424 d!699796))

(declare-fun bs!463197 () Bool)

(declare-fun d!699798 () Bool)

(assert (= bs!463197 (and d!699798 start!235610)))

(declare-fun lambda!90336 () Int)

(assert (=> bs!463197 (= lambda!90336 lambda!90318)))

(declare-fun bs!463198 () Bool)

(assert (= bs!463198 (and d!699798 d!699780)))

(assert (=> bs!463198 (= lambda!90336 lambda!90326)))

(declare-fun b!2402685 () Bool)

(declare-fun e!1530539 () Bool)

(declare-fun e!1530541 () Bool)

(assert (=> b!2402685 (= e!1530539 e!1530541)))

(declare-fun c!382618 () Bool)

(assert (=> b!2402685 (= c!382618 (isEmpty!16224 l!9164))))

(declare-fun b!2402686 () Bool)

(declare-fun e!1530543 () Regex!7042)

(assert (=> b!2402686 (= e!1530543 (Concat!11678 (h!33626 l!9164) (generalisedConcat!143 (t!208300 l!9164))))))

(declare-fun b!2402687 () Bool)

(declare-fun e!1530544 () Bool)

(assert (=> b!2402687 (= e!1530544 (isEmpty!16224 (t!208300 l!9164)))))

(declare-fun b!2402688 () Bool)

(declare-fun e!1530540 () Bool)

(declare-fun lt!872695 () Regex!7042)

(assert (=> b!2402688 (= e!1530540 (isConcat!110 lt!872695))))

(declare-fun b!2402689 () Bool)

(declare-fun e!1530542 () Regex!7042)

(assert (=> b!2402689 (= e!1530542 (h!33626 l!9164))))

(assert (=> d!699798 e!1530539))

(declare-fun res!1020713 () Bool)

(assert (=> d!699798 (=> (not res!1020713) (not e!1530539))))

(assert (=> d!699798 (= res!1020713 (validRegex!2767 lt!872695))))

(assert (=> d!699798 (= lt!872695 e!1530542)))

(declare-fun c!382620 () Bool)

(assert (=> d!699798 (= c!382620 e!1530544)))

(declare-fun res!1020712 () Bool)

(assert (=> d!699798 (=> (not res!1020712) (not e!1530544))))

(assert (=> d!699798 (= res!1020712 (is-Cons!28225 l!9164))))

(assert (=> d!699798 (forall!5676 l!9164 lambda!90336)))

(assert (=> d!699798 (= (generalisedConcat!143 l!9164) lt!872695)))

(declare-fun b!2402684 () Bool)

(assert (=> b!2402684 (= e!1530542 e!1530543)))

(declare-fun c!382619 () Bool)

(assert (=> b!2402684 (= c!382619 (is-Cons!28225 l!9164))))

(declare-fun b!2402690 () Bool)

(assert (=> b!2402690 (= e!1530540 (= lt!872695 (head!5314 l!9164)))))

(declare-fun b!2402691 () Bool)

(assert (=> b!2402691 (= e!1530541 e!1530540)))

(declare-fun c!382617 () Bool)

(assert (=> b!2402691 (= c!382617 (isEmpty!16224 (tail!3584 l!9164)))))

(declare-fun b!2402692 () Bool)

(assert (=> b!2402692 (= e!1530543 EmptyExpr!7042)))

(declare-fun b!2402693 () Bool)

(assert (=> b!2402693 (= e!1530541 (isEmptyExpr!110 lt!872695))))

(assert (= (and d!699798 res!1020712) b!2402687))

(assert (= (and d!699798 c!382620) b!2402689))

(assert (= (and d!699798 (not c!382620)) b!2402684))

(assert (= (and b!2402684 c!382619) b!2402686))

(assert (= (and b!2402684 (not c!382619)) b!2402692))

(assert (= (and d!699798 res!1020713) b!2402685))

(assert (= (and b!2402685 c!382618) b!2402693))

(assert (= (and b!2402685 (not c!382618)) b!2402691))

(assert (= (and b!2402691 c!382617) b!2402690))

(assert (= (and b!2402691 (not c!382617)) b!2402688))

(declare-fun m!2798623 () Bool)

(assert (=> b!2402685 m!2798623))

(declare-fun m!2798625 () Bool)

(assert (=> b!2402693 m!2798625))

(assert (=> b!2402686 m!2798465))

(declare-fun m!2798627 () Bool)

(assert (=> b!2402688 m!2798627))

(declare-fun m!2798629 () Bool)

(assert (=> b!2402691 m!2798629))

(assert (=> b!2402691 m!2798629))

(declare-fun m!2798631 () Bool)

(assert (=> b!2402691 m!2798631))

(declare-fun m!2798633 () Bool)

(assert (=> b!2402690 m!2798633))

(assert (=> b!2402687 m!2798533))

(declare-fun m!2798635 () Bool)

(assert (=> d!699798 m!2798635))

(declare-fun m!2798637 () Bool)

(assert (=> d!699798 m!2798637))

(assert (=> b!2402425 d!699798))

(declare-fun b!2402729 () Bool)

(declare-fun e!1530561 () Bool)

(declare-fun tp!764588 () Bool)

(declare-fun tp!764591 () Bool)

(assert (=> b!2402729 (= e!1530561 (and tp!764588 tp!764591))))

(declare-fun b!2402728 () Bool)

(declare-fun tp!764592 () Bool)

(assert (=> b!2402728 (= e!1530561 tp!764592)))

(declare-fun b!2402727 () Bool)

(declare-fun tp!764589 () Bool)

(declare-fun tp!764590 () Bool)

(assert (=> b!2402727 (= e!1530561 (and tp!764589 tp!764590))))

(assert (=> b!2402421 (= tp!764551 e!1530561)))

(declare-fun b!2402726 () Bool)

(assert (=> b!2402726 (= e!1530561 tp_is_empty!11497)))

(assert (= (and b!2402421 (is-ElementMatch!7042 (regOne!14596 r!13927))) b!2402726))

(assert (= (and b!2402421 (is-Concat!11678 (regOne!14596 r!13927))) b!2402727))

(assert (= (and b!2402421 (is-Star!7042 (regOne!14596 r!13927))) b!2402728))

(assert (= (and b!2402421 (is-Union!7042 (regOne!14596 r!13927))) b!2402729))

(declare-fun b!2402733 () Bool)

(declare-fun e!1530562 () Bool)

(declare-fun tp!764593 () Bool)

(declare-fun tp!764596 () Bool)

(assert (=> b!2402733 (= e!1530562 (and tp!764593 tp!764596))))

(declare-fun b!2402732 () Bool)

(declare-fun tp!764597 () Bool)

(assert (=> b!2402732 (= e!1530562 tp!764597)))

(declare-fun b!2402731 () Bool)

(declare-fun tp!764594 () Bool)

(declare-fun tp!764595 () Bool)

(assert (=> b!2402731 (= e!1530562 (and tp!764594 tp!764595))))

(assert (=> b!2402421 (= tp!764548 e!1530562)))

(declare-fun b!2402730 () Bool)

(assert (=> b!2402730 (= e!1530562 tp_is_empty!11497)))

(assert (= (and b!2402421 (is-ElementMatch!7042 (regTwo!14596 r!13927))) b!2402730))

(assert (= (and b!2402421 (is-Concat!11678 (regTwo!14596 r!13927))) b!2402731))

(assert (= (and b!2402421 (is-Star!7042 (regTwo!14596 r!13927))) b!2402732))

(assert (= (and b!2402421 (is-Union!7042 (regTwo!14596 r!13927))) b!2402733))

(declare-fun b!2402737 () Bool)

(declare-fun e!1530563 () Bool)

(declare-fun tp!764598 () Bool)

(declare-fun tp!764601 () Bool)

(assert (=> b!2402737 (= e!1530563 (and tp!764598 tp!764601))))

(declare-fun b!2402736 () Bool)

(declare-fun tp!764602 () Bool)

(assert (=> b!2402736 (= e!1530563 tp!764602)))

(declare-fun b!2402735 () Bool)

(declare-fun tp!764599 () Bool)

(declare-fun tp!764600 () Bool)

(assert (=> b!2402735 (= e!1530563 (and tp!764599 tp!764600))))

(assert (=> b!2402422 (= tp!764553 e!1530563)))

(declare-fun b!2402734 () Bool)

(assert (=> b!2402734 (= e!1530563 tp_is_empty!11497)))

(assert (= (and b!2402422 (is-ElementMatch!7042 (regOne!14597 r!13927))) b!2402734))

(assert (= (and b!2402422 (is-Concat!11678 (regOne!14597 r!13927))) b!2402735))

(assert (= (and b!2402422 (is-Star!7042 (regOne!14597 r!13927))) b!2402736))

(assert (= (and b!2402422 (is-Union!7042 (regOne!14597 r!13927))) b!2402737))

(declare-fun b!2402741 () Bool)

(declare-fun e!1530564 () Bool)

(declare-fun tp!764603 () Bool)

(declare-fun tp!764606 () Bool)

(assert (=> b!2402741 (= e!1530564 (and tp!764603 tp!764606))))

(declare-fun b!2402740 () Bool)

(declare-fun tp!764607 () Bool)

(assert (=> b!2402740 (= e!1530564 tp!764607)))

(declare-fun b!2402739 () Bool)

(declare-fun tp!764604 () Bool)

(declare-fun tp!764605 () Bool)

(assert (=> b!2402739 (= e!1530564 (and tp!764604 tp!764605))))

(assert (=> b!2402422 (= tp!764552 e!1530564)))

(declare-fun b!2402738 () Bool)

(assert (=> b!2402738 (= e!1530564 tp_is_empty!11497)))

(assert (= (and b!2402422 (is-ElementMatch!7042 (regTwo!14597 r!13927))) b!2402738))

(assert (= (and b!2402422 (is-Concat!11678 (regTwo!14597 r!13927))) b!2402739))

(assert (= (and b!2402422 (is-Star!7042 (regTwo!14597 r!13927))) b!2402740))

(assert (= (and b!2402422 (is-Union!7042 (regTwo!14597 r!13927))) b!2402741))

(declare-fun b!2402746 () Bool)

(declare-fun e!1530567 () Bool)

(declare-fun tp!764610 () Bool)

(assert (=> b!2402746 (= e!1530567 (and tp_is_empty!11497 tp!764610))))

(assert (=> b!2402429 (= tp!764547 e!1530567)))

(assert (= (and b!2402429 (is-Cons!28224 (t!208299 s!9460))) b!2402746))

(declare-fun b!2402750 () Bool)

(declare-fun e!1530568 () Bool)

(declare-fun tp!764611 () Bool)

(declare-fun tp!764614 () Bool)

(assert (=> b!2402750 (= e!1530568 (and tp!764611 tp!764614))))

(declare-fun b!2402749 () Bool)

(declare-fun tp!764615 () Bool)

(assert (=> b!2402749 (= e!1530568 tp!764615)))

(declare-fun b!2402748 () Bool)

(declare-fun tp!764612 () Bool)

(declare-fun tp!764613 () Bool)

(assert (=> b!2402748 (= e!1530568 (and tp!764612 tp!764613))))

(assert (=> b!2402431 (= tp!764549 e!1530568)))

(declare-fun b!2402747 () Bool)

(assert (=> b!2402747 (= e!1530568 tp_is_empty!11497)))

(assert (= (and b!2402431 (is-ElementMatch!7042 (h!33626 l!9164))) b!2402747))

(assert (= (and b!2402431 (is-Concat!11678 (h!33626 l!9164))) b!2402748))

(assert (= (and b!2402431 (is-Star!7042 (h!33626 l!9164))) b!2402749))

(assert (= (and b!2402431 (is-Union!7042 (h!33626 l!9164))) b!2402750))

(declare-fun b!2402757 () Bool)

(declare-fun e!1530573 () Bool)

(declare-fun tp!764620 () Bool)

(declare-fun tp!764621 () Bool)

(assert (=> b!2402757 (= e!1530573 (and tp!764620 tp!764621))))

(assert (=> b!2402431 (= tp!764550 e!1530573)))

(assert (= (and b!2402431 (is-Cons!28225 (t!208300 l!9164))) b!2402757))

(declare-fun b!2402765 () Bool)

(declare-fun e!1530574 () Bool)

(declare-fun tp!764622 () Bool)

(declare-fun tp!764625 () Bool)

(assert (=> b!2402765 (= e!1530574 (and tp!764622 tp!764625))))

(declare-fun b!2402764 () Bool)

(declare-fun tp!764626 () Bool)

(assert (=> b!2402764 (= e!1530574 tp!764626)))

(declare-fun b!2402763 () Bool)

(declare-fun tp!764623 () Bool)

(declare-fun tp!764624 () Bool)

(assert (=> b!2402763 (= e!1530574 (and tp!764623 tp!764624))))

(assert (=> b!2402430 (= tp!764546 e!1530574)))

(declare-fun b!2402762 () Bool)

(assert (=> b!2402762 (= e!1530574 tp_is_empty!11497)))

(assert (= (and b!2402430 (is-ElementMatch!7042 (reg!7371 r!13927))) b!2402762))

(assert (= (and b!2402430 (is-Concat!11678 (reg!7371 r!13927))) b!2402763))

(assert (= (and b!2402430 (is-Star!7042 (reg!7371 r!13927))) b!2402764))

(assert (= (and b!2402430 (is-Union!7042 (reg!7371 r!13927))) b!2402765))

(declare-fun b_lambda!74351 () Bool)

(assert (= b_lambda!74349 (or start!235610 b_lambda!74351)))

(declare-fun bs!463199 () Bool)

(declare-fun d!699800 () Bool)

(assert (= bs!463199 (and d!699800 start!235610)))

(assert (=> bs!463199 (= (dynLambda!12156 lambda!90318 (h!33626 (t!208300 l!9164))) (validRegex!2767 (h!33626 (t!208300 l!9164))))))

(declare-fun m!2798639 () Bool)

(assert (=> bs!463199 m!2798639))

(assert (=> b!2402554 d!699800))

(declare-fun b_lambda!74353 () Bool)

(assert (= b_lambda!74347 (or start!235610 b_lambda!74353)))

(declare-fun bs!463200 () Bool)

(declare-fun d!699802 () Bool)

(assert (= bs!463200 (and d!699802 start!235610)))

(assert (=> bs!463200 (= (dynLambda!12156 lambda!90318 (h!33626 l!9164)) (validRegex!2767 (h!33626 l!9164)))))

(assert (=> bs!463200 m!2798513))

(assert (=> b!2402477 d!699802))

(push 1)

(assert (not b!2402746))

(assert (not b!2402687))

(assert (not b!2402741))

(assert (not b!2402478))

(assert (not b!2402615))

(assert (not b!2402757))

(assert (not d!699790))

(assert (not d!699776))

(assert (not b!2402553))

(assert (not b!2402500))

(assert (not b!2402499))

(assert (not b!2402683))

(assert (not b!2402498))

(assert (not b!2402764))

(assert (not b!2402677))

(assert (not b!2402614))

(assert (not bm!146781))

(assert (not b!2402686))

(assert (not b_lambda!74353))

(assert (not b!2402501))

(assert (not b!2402685))

(assert (not b!2402740))

(assert (not b!2402676))

(assert (not d!699798))

(assert (not b!2402545))

(assert (not b!2402729))

(assert (not b!2402750))

(assert (not b_lambda!74351))

(assert (not b!2402749))

(assert (not b!2402505))

(assert (not b!2402728))

(assert (not b!2402727))

(assert (not b!2402763))

(assert (not b!2402688))

(assert (not b!2402674))

(assert (not bm!146780))

(assert (not b!2402735))

(assert (not d!699780))

(assert (not b!2402731))

(assert (not bm!146784))

(assert (not b!2402555))

(assert (not b!2402548))

(assert (not b!2402693))

(assert (not b!2402551))

(assert (not bs!463199))

(assert (not d!699778))

(assert (not b!2402691))

(assert (not b!2402546))

(assert (not b!2402690))

(assert (not b!2402736))

(assert (not b!2402765))

(assert (not b!2402732))

(assert (not bs!463200))

(assert (not b!2402497))

(assert (not b!2402739))

(assert (not b!2402547))

(assert (not b!2402748))

(assert (not b!2402733))

(assert tp_is_empty!11497)

(assert (not b!2402550))

(assert (not d!699796))

(assert (not b!2402681))

(assert (not b!2402680))

(assert (not b!2402737))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


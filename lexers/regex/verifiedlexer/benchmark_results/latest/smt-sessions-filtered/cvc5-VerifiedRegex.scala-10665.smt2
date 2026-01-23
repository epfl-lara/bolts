; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546490 () Bool)

(assert start!546490)

(declare-fun b!5165458 () Bool)

(declare-fun res!2195878 () Bool)

(declare-fun e!3218558 () Bool)

(assert (=> b!5165458 (=> (not res!2195878) (not e!3218558))))

(declare-datatypes ((C!29422 0))(
  ( (C!29423 (val!24413 Int)) )
))
(declare-datatypes ((Regex!14576 0))(
  ( (ElementMatch!14576 (c!888721 C!29422)) (Concat!23421 (regOne!29664 Regex!14576) (regTwo!29664 Regex!14576)) (EmptyExpr!14576) (Star!14576 (reg!14905 Regex!14576)) (EmptyLang!14576) (Union!14576 (regOne!29665 Regex!14576) (regTwo!29665 Regex!14576)) )
))
(declare-datatypes ((List!60107 0))(
  ( (Nil!59983) (Cons!59983 (h!66431 Regex!14576) (t!373260 List!60107)) )
))
(declare-datatypes ((Context!7920 0))(
  ( (Context!7921 (exprs!4460 List!60107)) )
))
(declare-fun baseZ!62 () (Set Context!7920))

(declare-datatypes ((List!60108 0))(
  ( (Nil!59984) (Cons!59984 (h!66432 C!29422) (t!373261 List!60108)) )
))
(declare-fun testedP!294 () List!60108)

(declare-fun z!4581 () (Set Context!7920))

(declare-fun derivationZipper!199 ((Set Context!7920) List!60108) (Set Context!7920))

(assert (=> b!5165458 (= res!2195878 (= (derivationZipper!199 baseZ!62 testedP!294) z!4581))))

(declare-fun setIsEmpty!31661 () Bool)

(declare-fun setRes!31662 () Bool)

(assert (=> setIsEmpty!31661 setRes!31662))

(declare-fun tp!1449082 () Bool)

(declare-fun setNonEmpty!31661 () Bool)

(declare-fun setRes!31661 () Bool)

(declare-fun e!3218559 () Bool)

(declare-fun setElem!31661 () Context!7920)

(declare-fun inv!79688 (Context!7920) Bool)

(assert (=> setNonEmpty!31661 (= setRes!31661 (and tp!1449082 (inv!79688 setElem!31661) e!3218559))))

(declare-fun setRest!31661 () (Set Context!7920))

(assert (=> setNonEmpty!31661 (= z!4581 (set.union (set.insert setElem!31661 (as set.empty (Set Context!7920))) setRest!31661))))

(declare-fun b!5165460 () Bool)

(declare-fun e!3218562 () Bool)

(declare-fun tp!1449083 () Bool)

(assert (=> b!5165460 (= e!3218562 tp!1449083)))

(declare-fun b!5165461 () Bool)

(declare-fun res!2195880 () Bool)

(declare-fun e!3218561 () Bool)

(assert (=> b!5165461 (=> (not res!2195880) (not e!3218561))))

(declare-fun nullableZipper!1132 ((Set Context!7920)) Bool)

(assert (=> b!5165461 (= res!2195880 (not (nullableZipper!1132 z!4581)))))

(declare-fun setNonEmpty!31662 () Bool)

(declare-fun tp!1449080 () Bool)

(declare-fun setElem!31662 () Context!7920)

(assert (=> setNonEmpty!31662 (= setRes!31662 (and tp!1449080 (inv!79688 setElem!31662) e!3218562))))

(declare-fun setRest!31662 () (Set Context!7920))

(assert (=> setNonEmpty!31662 (= baseZ!62 (set.union (set.insert setElem!31662 (as set.empty (Set Context!7920))) setRest!31662))))

(declare-fun b!5165462 () Bool)

(declare-fun e!3218557 () Bool)

(declare-fun tp_is_empty!38405 () Bool)

(declare-fun tp!1449084 () Bool)

(assert (=> b!5165462 (= e!3218557 (and tp_is_empty!38405 tp!1449084))))

(declare-fun b!5165463 () Bool)

(assert (=> b!5165463 (= e!3218558 e!3218561)))

(declare-fun res!2195877 () Bool)

(assert (=> b!5165463 (=> (not res!2195877) (not e!3218561))))

(declare-fun input!5817 () List!60108)

(declare-fun lt!2124396 () Int)

(declare-fun lt!2124395 () List!60108)

(declare-fun isEmpty!32114 (List!60108) Bool)

(declare-datatypes ((tuple2!63706 0))(
  ( (tuple2!63707 (_1!35156 List!60108) (_2!35156 List!60108)) )
))
(declare-fun findLongestMatchInnerZipper!234 ((Set Context!7920) List!60108 Int List!60108 List!60108 Int) tuple2!63706)

(declare-fun size!39612 (List!60108) Int)

(assert (=> b!5165463 (= res!2195877 (not (isEmpty!32114 (_1!35156 (findLongestMatchInnerZipper!234 z!4581 testedP!294 lt!2124396 lt!2124395 input!5817 (size!39612 input!5817))))))))

(declare-fun getSuffix!3359 (List!60108 List!60108) List!60108)

(assert (=> b!5165463 (= lt!2124395 (getSuffix!3359 input!5817 testedP!294))))

(assert (=> b!5165463 (= lt!2124396 (size!39612 testedP!294))))

(declare-fun b!5165459 () Bool)

(declare-fun res!2195879 () Bool)

(assert (=> b!5165459 (=> (not res!2195879) (not e!3218561))))

(assert (=> b!5165459 (= res!2195879 (= testedP!294 input!5817))))

(declare-fun res!2195881 () Bool)

(assert (=> start!546490 (=> (not res!2195881) (not e!3218558))))

(declare-fun isPrefix!5709 (List!60108 List!60108) Bool)

(assert (=> start!546490 (= res!2195881 (isPrefix!5709 testedP!294 input!5817))))

(assert (=> start!546490 e!3218558))

(declare-fun e!3218560 () Bool)

(assert (=> start!546490 e!3218560))

(assert (=> start!546490 e!3218557))

(declare-fun condSetEmpty!31662 () Bool)

(assert (=> start!546490 (= condSetEmpty!31662 (= baseZ!62 (as set.empty (Set Context!7920))))))

(assert (=> start!546490 setRes!31662))

(declare-fun condSetEmpty!31661 () Bool)

(assert (=> start!546490 (= condSetEmpty!31661 (= z!4581 (as set.empty (Set Context!7920))))))

(assert (=> start!546490 setRes!31661))

(declare-fun b!5165464 () Bool)

(declare-fun tp!1449081 () Bool)

(assert (=> b!5165464 (= e!3218559 tp!1449081)))

(declare-fun b!5165465 () Bool)

(declare-fun ++!13108 (List!60108 List!60108) List!60108)

(assert (=> b!5165465 (= e!3218561 (not (= (++!13108 testedP!294 lt!2124395) input!5817)))))

(declare-fun setIsEmpty!31662 () Bool)

(assert (=> setIsEmpty!31662 setRes!31661))

(declare-fun b!5165466 () Bool)

(declare-fun tp!1449085 () Bool)

(assert (=> b!5165466 (= e!3218560 (and tp_is_empty!38405 tp!1449085))))

(assert (= (and start!546490 res!2195881) b!5165458))

(assert (= (and b!5165458 res!2195878) b!5165463))

(assert (= (and b!5165463 res!2195877) b!5165459))

(assert (= (and b!5165459 res!2195879) b!5165461))

(assert (= (and b!5165461 res!2195880) b!5165465))

(assert (= (and start!546490 (is-Cons!59984 testedP!294)) b!5165466))

(assert (= (and start!546490 (is-Cons!59984 input!5817)) b!5165462))

(assert (= (and start!546490 condSetEmpty!31662) setIsEmpty!31661))

(assert (= (and start!546490 (not condSetEmpty!31662)) setNonEmpty!31662))

(assert (= setNonEmpty!31662 b!5165460))

(assert (= (and start!546490 condSetEmpty!31661) setIsEmpty!31662))

(assert (= (and start!546490 (not condSetEmpty!31661)) setNonEmpty!31661))

(assert (= setNonEmpty!31661 b!5165464))

(declare-fun m!6215944 () Bool)

(assert (=> setNonEmpty!31662 m!6215944))

(declare-fun m!6215946 () Bool)

(assert (=> b!5165465 m!6215946))

(declare-fun m!6215948 () Bool)

(assert (=> setNonEmpty!31661 m!6215948))

(declare-fun m!6215950 () Bool)

(assert (=> b!5165461 m!6215950))

(declare-fun m!6215952 () Bool)

(assert (=> b!5165458 m!6215952))

(declare-fun m!6215954 () Bool)

(assert (=> start!546490 m!6215954))

(declare-fun m!6215956 () Bool)

(assert (=> b!5165463 m!6215956))

(declare-fun m!6215958 () Bool)

(assert (=> b!5165463 m!6215958))

(declare-fun m!6215960 () Bool)

(assert (=> b!5165463 m!6215960))

(declare-fun m!6215962 () Bool)

(assert (=> b!5165463 m!6215962))

(assert (=> b!5165463 m!6215960))

(declare-fun m!6215964 () Bool)

(assert (=> b!5165463 m!6215964))

(push 1)

(assert (not b!5165461))

(assert (not setNonEmpty!31662))

(assert (not setNonEmpty!31661))

(assert (not b!5165464))

(assert (not b!5165466))

(assert (not b!5165460))

(assert (not b!5165465))

(assert (not start!546490))

(assert (not b!5165462))

(assert (not b!5165458))

(assert (not b!5165463))

(assert tp_is_empty!38405)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1666468 () Bool)

(declare-fun lambda!257772 () Int)

(declare-fun forall!14104 (List!60107 Int) Bool)

(assert (=> d!1666468 (= (inv!79688 setElem!31661) (forall!14104 (exprs!4460 setElem!31661) lambda!257772))))

(declare-fun bs!1202796 () Bool)

(assert (= bs!1202796 d!1666468))

(declare-fun m!6216066 () Bool)

(assert (=> bs!1202796 m!6216066))

(assert (=> setNonEmpty!31661 d!1666468))

(declare-fun d!1666486 () Bool)

(declare-fun e!3218635 () Bool)

(assert (=> d!1666486 e!3218635))

(declare-fun res!2195932 () Bool)

(assert (=> d!1666486 (=> res!2195932 e!3218635)))

(declare-fun lt!2124496 () Bool)

(assert (=> d!1666486 (= res!2195932 (not lt!2124496))))

(declare-fun e!3218634 () Bool)

(assert (=> d!1666486 (= lt!2124496 e!3218634)))

(declare-fun res!2195930 () Bool)

(assert (=> d!1666486 (=> res!2195930 e!3218634)))

(assert (=> d!1666486 (= res!2195930 (is-Nil!59984 testedP!294))))

(assert (=> d!1666486 (= (isPrefix!5709 testedP!294 input!5817) lt!2124496)))

(declare-fun b!5165583 () Bool)

(declare-fun res!2195929 () Bool)

(declare-fun e!3218633 () Bool)

(assert (=> b!5165583 (=> (not res!2195929) (not e!3218633))))

(declare-fun head!11010 (List!60108) C!29422)

(assert (=> b!5165583 (= res!2195929 (= (head!11010 testedP!294) (head!11010 input!5817)))))

(declare-fun b!5165585 () Bool)

(assert (=> b!5165585 (= e!3218635 (>= (size!39612 input!5817) (size!39612 testedP!294)))))

(declare-fun b!5165582 () Bool)

(assert (=> b!5165582 (= e!3218634 e!3218633)))

(declare-fun res!2195931 () Bool)

(assert (=> b!5165582 (=> (not res!2195931) (not e!3218633))))

(assert (=> b!5165582 (= res!2195931 (not (is-Nil!59984 input!5817)))))

(declare-fun b!5165584 () Bool)

(declare-fun tail!10121 (List!60108) List!60108)

(assert (=> b!5165584 (= e!3218633 (isPrefix!5709 (tail!10121 testedP!294) (tail!10121 input!5817)))))

(assert (= (and d!1666486 (not res!2195930)) b!5165582))

(assert (= (and b!5165582 res!2195931) b!5165583))

(assert (= (and b!5165583 res!2195929) b!5165584))

(assert (= (and d!1666486 (not res!2195932)) b!5165585))

(declare-fun m!6216068 () Bool)

(assert (=> b!5165583 m!6216068))

(declare-fun m!6216070 () Bool)

(assert (=> b!5165583 m!6216070))

(assert (=> b!5165585 m!6215960))

(assert (=> b!5165585 m!6215956))

(declare-fun m!6216072 () Bool)

(assert (=> b!5165584 m!6216072))

(declare-fun m!6216074 () Bool)

(assert (=> b!5165584 m!6216074))

(assert (=> b!5165584 m!6216072))

(assert (=> b!5165584 m!6216074))

(declare-fun m!6216076 () Bool)

(assert (=> b!5165584 m!6216076))

(assert (=> start!546490 d!1666486))

(declare-fun d!1666488 () Bool)

(declare-fun lt!2124499 () Int)

(assert (=> d!1666488 (>= lt!2124499 0)))

(declare-fun e!3218638 () Int)

(assert (=> d!1666488 (= lt!2124499 e!3218638)))

(declare-fun c!888755 () Bool)

(assert (=> d!1666488 (= c!888755 (is-Nil!59984 input!5817))))

(assert (=> d!1666488 (= (size!39612 input!5817) lt!2124499)))

(declare-fun b!5165590 () Bool)

(assert (=> b!5165590 (= e!3218638 0)))

(declare-fun b!5165591 () Bool)

(assert (=> b!5165591 (= e!3218638 (+ 1 (size!39612 (t!373261 input!5817))))))

(assert (= (and d!1666488 c!888755) b!5165590))

(assert (= (and d!1666488 (not c!888755)) b!5165591))

(declare-fun m!6216078 () Bool)

(assert (=> b!5165591 m!6216078))

(assert (=> b!5165463 d!1666488))

(declare-fun d!1666490 () Bool)

(assert (=> d!1666490 (= (isEmpty!32114 (_1!35156 (findLongestMatchInnerZipper!234 z!4581 testedP!294 lt!2124396 lt!2124395 input!5817 (size!39612 input!5817)))) (is-Nil!59984 (_1!35156 (findLongestMatchInnerZipper!234 z!4581 testedP!294 lt!2124396 lt!2124395 input!5817 (size!39612 input!5817)))))))

(assert (=> b!5165463 d!1666490))

(declare-fun d!1666492 () Bool)

(declare-fun lt!2124502 () List!60108)

(assert (=> d!1666492 (= (++!13108 testedP!294 lt!2124502) input!5817)))

(declare-fun e!3218641 () List!60108)

(assert (=> d!1666492 (= lt!2124502 e!3218641)))

(declare-fun c!888758 () Bool)

(assert (=> d!1666492 (= c!888758 (is-Cons!59984 testedP!294))))

(assert (=> d!1666492 (>= (size!39612 input!5817) (size!39612 testedP!294))))

(assert (=> d!1666492 (= (getSuffix!3359 input!5817 testedP!294) lt!2124502)))

(declare-fun b!5165596 () Bool)

(assert (=> b!5165596 (= e!3218641 (getSuffix!3359 (tail!10121 input!5817) (t!373261 testedP!294)))))

(declare-fun b!5165597 () Bool)

(assert (=> b!5165597 (= e!3218641 input!5817)))

(assert (= (and d!1666492 c!888758) b!5165596))

(assert (= (and d!1666492 (not c!888758)) b!5165597))

(declare-fun m!6216080 () Bool)

(assert (=> d!1666492 m!6216080))

(assert (=> d!1666492 m!6215960))

(assert (=> d!1666492 m!6215956))

(assert (=> b!5165596 m!6216074))

(assert (=> b!5165596 m!6216074))

(declare-fun m!6216082 () Bool)

(assert (=> b!5165596 m!6216082))

(assert (=> b!5165463 d!1666492))

(declare-fun d!1666494 () Bool)

(declare-fun lt!2124503 () Int)

(assert (=> d!1666494 (>= lt!2124503 0)))

(declare-fun e!3218642 () Int)

(assert (=> d!1666494 (= lt!2124503 e!3218642)))

(declare-fun c!888759 () Bool)

(assert (=> d!1666494 (= c!888759 (is-Nil!59984 testedP!294))))

(assert (=> d!1666494 (= (size!39612 testedP!294) lt!2124503)))

(declare-fun b!5165598 () Bool)

(assert (=> b!5165598 (= e!3218642 0)))

(declare-fun b!5165599 () Bool)

(assert (=> b!5165599 (= e!3218642 (+ 1 (size!39612 (t!373261 testedP!294))))))

(assert (= (and d!1666494 c!888759) b!5165598))

(assert (= (and d!1666494 (not c!888759)) b!5165599))

(declare-fun m!6216084 () Bool)

(assert (=> b!5165599 m!6216084))

(assert (=> b!5165463 d!1666494))

(declare-fun bm!362367 () Bool)

(declare-datatypes ((Unit!151424 0))(
  ( (Unit!151425) )
))
(declare-fun call!362377 () Unit!151424)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1364 (List!60108 List!60108 List!60108) Unit!151424)

(assert (=> bm!362367 (= call!362377 (lemmaIsPrefixSameLengthThenSameList!1364 input!5817 testedP!294 input!5817))))

(declare-fun b!5165628 () Bool)

(declare-fun e!3218663 () Bool)

(declare-fun e!3218661 () Bool)

(assert (=> b!5165628 (= e!3218663 e!3218661)))

(declare-fun res!2195937 () Bool)

(assert (=> b!5165628 (=> res!2195937 e!3218661)))

(declare-fun lt!2124561 () tuple2!63706)

(assert (=> b!5165628 (= res!2195937 (isEmpty!32114 (_1!35156 lt!2124561)))))

(declare-fun bm!362368 () Bool)

(declare-fun call!362376 () List!60108)

(assert (=> bm!362368 (= call!362376 (tail!10121 lt!2124395))))

(declare-fun b!5165629 () Bool)

(declare-fun c!888777 () Bool)

(declare-fun call!362374 () Bool)

(assert (=> b!5165629 (= c!888777 call!362374)))

(declare-fun lt!2124581 () Unit!151424)

(declare-fun lt!2124563 () Unit!151424)

(assert (=> b!5165629 (= lt!2124581 lt!2124563)))

(assert (=> b!5165629 (= input!5817 testedP!294)))

(assert (=> b!5165629 (= lt!2124563 call!362377)))

(declare-fun lt!2124556 () Unit!151424)

(declare-fun lt!2124566 () Unit!151424)

(assert (=> b!5165629 (= lt!2124556 lt!2124566)))

(declare-fun call!362373 () Bool)

(assert (=> b!5165629 call!362373))

(declare-fun call!362372 () Unit!151424)

(assert (=> b!5165629 (= lt!2124566 call!362372)))

(declare-fun e!3218662 () tuple2!63706)

(declare-fun e!3218665 () tuple2!63706)

(assert (=> b!5165629 (= e!3218662 e!3218665)))

(declare-fun bm!362369 () Bool)

(declare-fun lemmaIsPrefixRefl!3720 (List!60108 List!60108) Unit!151424)

(assert (=> bm!362369 (= call!362372 (lemmaIsPrefixRefl!3720 input!5817 input!5817))))

(declare-fun b!5165630 () Bool)

(declare-fun e!3218660 () tuple2!63706)

(declare-fun lt!2124558 () tuple2!63706)

(assert (=> b!5165630 (= e!3218660 lt!2124558)))

(declare-fun bm!362370 () Bool)

(declare-fun call!362375 () C!29422)

(assert (=> bm!362370 (= call!362375 (head!11010 lt!2124395))))

(declare-fun d!1666496 () Bool)

(assert (=> d!1666496 e!3218663))

(declare-fun res!2195938 () Bool)

(assert (=> d!1666496 (=> (not res!2195938) (not e!3218663))))

(assert (=> d!1666496 (= res!2195938 (= (++!13108 (_1!35156 lt!2124561) (_2!35156 lt!2124561)) input!5817))))

(declare-fun e!3218666 () tuple2!63706)

(assert (=> d!1666496 (= lt!2124561 e!3218666)))

(declare-fun c!888772 () Bool)

(declare-fun lostCauseZipper!1311 ((Set Context!7920)) Bool)

(assert (=> d!1666496 (= c!888772 (lostCauseZipper!1311 z!4581))))

(declare-fun lt!2124574 () Unit!151424)

(declare-fun Unit!151426 () Unit!151424)

(assert (=> d!1666496 (= lt!2124574 Unit!151426)))

(assert (=> d!1666496 (= (getSuffix!3359 input!5817 testedP!294) lt!2124395)))

(declare-fun lt!2124573 () Unit!151424)

(declare-fun lt!2124569 () Unit!151424)

(assert (=> d!1666496 (= lt!2124573 lt!2124569)))

(declare-fun lt!2124580 () List!60108)

(assert (=> d!1666496 (= lt!2124395 lt!2124580)))

(declare-fun lemmaSamePrefixThenSameSuffix!2678 (List!60108 List!60108 List!60108 List!60108 List!60108) Unit!151424)

(assert (=> d!1666496 (= lt!2124569 (lemmaSamePrefixThenSameSuffix!2678 testedP!294 lt!2124395 testedP!294 lt!2124580 input!5817))))

(assert (=> d!1666496 (= lt!2124580 (getSuffix!3359 input!5817 testedP!294))))

(declare-fun lt!2124578 () Unit!151424)

(declare-fun lt!2124557 () Unit!151424)

(assert (=> d!1666496 (= lt!2124578 lt!2124557)))

(assert (=> d!1666496 (isPrefix!5709 testedP!294 (++!13108 testedP!294 lt!2124395))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3572 (List!60108 List!60108) Unit!151424)

(assert (=> d!1666496 (= lt!2124557 (lemmaConcatTwoListThenFirstIsPrefix!3572 testedP!294 lt!2124395))))

(assert (=> d!1666496 (= (++!13108 testedP!294 lt!2124395) input!5817)))

(assert (=> d!1666496 (= (findLongestMatchInnerZipper!234 z!4581 testedP!294 lt!2124396 lt!2124395 input!5817 (size!39612 input!5817)) lt!2124561)))

(declare-fun b!5165631 () Bool)

(assert (=> b!5165631 (= e!3218665 (tuple2!63707 Nil!59984 input!5817))))

(declare-fun b!5165632 () Bool)

(declare-fun e!3218664 () Unit!151424)

(declare-fun Unit!151427 () Unit!151424)

(assert (=> b!5165632 (= e!3218664 Unit!151427)))

(declare-fun lt!2124564 () Unit!151424)

(assert (=> b!5165632 (= lt!2124564 call!362372)))

(assert (=> b!5165632 call!362373))

(declare-fun lt!2124559 () Unit!151424)

(assert (=> b!5165632 (= lt!2124559 lt!2124564)))

(declare-fun lt!2124560 () Unit!151424)

(assert (=> b!5165632 (= lt!2124560 call!362377)))

(assert (=> b!5165632 (= input!5817 testedP!294)))

(declare-fun lt!2124576 () Unit!151424)

(assert (=> b!5165632 (= lt!2124576 lt!2124560)))

(assert (=> b!5165632 false))

(declare-fun b!5165633 () Bool)

(assert (=> b!5165633 (= e!3218660 (tuple2!63707 testedP!294 lt!2124395))))

(declare-fun b!5165634 () Bool)

(assert (=> b!5165634 (= e!3218666 e!3218662)))

(declare-fun c!888775 () Bool)

(assert (=> b!5165634 (= c!888775 (= lt!2124396 (size!39612 input!5817)))))

(declare-fun b!5165635 () Bool)

(assert (=> b!5165635 (= e!3218661 (>= (size!39612 (_1!35156 lt!2124561)) (size!39612 testedP!294)))))

(declare-fun b!5165636 () Bool)

(declare-fun e!3218659 () tuple2!63706)

(declare-fun call!362378 () tuple2!63706)

(assert (=> b!5165636 (= e!3218659 call!362378)))

(declare-fun b!5165637 () Bool)

(declare-fun Unit!151428 () Unit!151424)

(assert (=> b!5165637 (= e!3218664 Unit!151428)))

(declare-fun b!5165638 () Bool)

(assert (=> b!5165638 (= e!3218659 e!3218660)))

(assert (=> b!5165638 (= lt!2124558 call!362378)))

(declare-fun c!888774 () Bool)

(assert (=> b!5165638 (= c!888774 (isEmpty!32114 (_1!35156 lt!2124558)))))

(declare-fun b!5165639 () Bool)

(assert (=> b!5165639 (= e!3218666 (tuple2!63707 Nil!59984 input!5817))))

(declare-fun bm!362371 () Bool)

(declare-fun call!362379 () (Set Context!7920))

(declare-fun lt!2124562 () List!60108)

(assert (=> bm!362371 (= call!362378 (findLongestMatchInnerZipper!234 call!362379 lt!2124562 (+ lt!2124396 1) call!362376 input!5817 (size!39612 input!5817)))))

(declare-fun bm!362372 () Bool)

(assert (=> bm!362372 (= call!362373 (isPrefix!5709 input!5817 input!5817))))

(declare-fun bm!362373 () Bool)

(declare-fun derivationStepZipper!944 ((Set Context!7920) C!29422) (Set Context!7920))

(assert (=> bm!362373 (= call!362379 (derivationStepZipper!944 z!4581 call!362375))))

(declare-fun b!5165640 () Bool)

(declare-fun c!888773 () Bool)

(assert (=> b!5165640 (= c!888773 call!362374)))

(declare-fun lt!2124565 () Unit!151424)

(declare-fun lt!2124570 () Unit!151424)

(assert (=> b!5165640 (= lt!2124565 lt!2124570)))

(declare-fun lt!2124567 () List!60108)

(declare-fun lt!2124579 () C!29422)

(assert (=> b!5165640 (= (++!13108 (++!13108 testedP!294 (Cons!59984 lt!2124579 Nil!59984)) lt!2124567) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1559 (List!60108 C!29422 List!60108 List!60108) Unit!151424)

(assert (=> b!5165640 (= lt!2124570 (lemmaMoveElementToOtherListKeepsConcatEq!1559 testedP!294 lt!2124579 lt!2124567 input!5817))))

(assert (=> b!5165640 (= lt!2124567 (tail!10121 lt!2124395))))

(assert (=> b!5165640 (= lt!2124579 (head!11010 lt!2124395))))

(declare-fun lt!2124575 () Unit!151424)

(declare-fun lt!2124572 () Unit!151424)

(assert (=> b!5165640 (= lt!2124575 lt!2124572)))

(assert (=> b!5165640 (isPrefix!5709 (++!13108 testedP!294 (Cons!59984 (head!11010 (getSuffix!3359 input!5817 testedP!294)) Nil!59984)) input!5817)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1034 (List!60108 List!60108) Unit!151424)

(assert (=> b!5165640 (= lt!2124572 (lemmaAddHeadSuffixToPrefixStillPrefix!1034 testedP!294 input!5817))))

(assert (=> b!5165640 (= lt!2124562 (++!13108 testedP!294 (Cons!59984 (head!11010 lt!2124395) Nil!59984)))))

(declare-fun lt!2124577 () Unit!151424)

(assert (=> b!5165640 (= lt!2124577 e!3218664)))

(declare-fun c!888776 () Bool)

(assert (=> b!5165640 (= c!888776 (= (size!39612 testedP!294) (size!39612 input!5817)))))

(declare-fun lt!2124571 () Unit!151424)

(declare-fun lt!2124568 () Unit!151424)

(assert (=> b!5165640 (= lt!2124571 lt!2124568)))

(assert (=> b!5165640 (<= (size!39612 testedP!294) (size!39612 input!5817))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!874 (List!60108 List!60108) Unit!151424)

(assert (=> b!5165640 (= lt!2124568 (lemmaIsPrefixThenSmallerEqSize!874 testedP!294 input!5817))))

(assert (=> b!5165640 (= e!3218662 e!3218659)))

(declare-fun bm!362374 () Bool)

(assert (=> bm!362374 (= call!362374 (nullableZipper!1132 z!4581))))

(declare-fun b!5165641 () Bool)

(assert (=> b!5165641 (= e!3218665 (tuple2!63707 testedP!294 Nil!59984))))

(assert (= (and d!1666496 c!888772) b!5165639))

(assert (= (and d!1666496 (not c!888772)) b!5165634))

(assert (= (and b!5165634 c!888775) b!5165629))

(assert (= (and b!5165634 (not c!888775)) b!5165640))

(assert (= (and b!5165629 c!888777) b!5165641))

(assert (= (and b!5165629 (not c!888777)) b!5165631))

(assert (= (and b!5165640 c!888776) b!5165632))

(assert (= (and b!5165640 (not c!888776)) b!5165637))

(assert (= (and b!5165640 c!888773) b!5165638))

(assert (= (and b!5165640 (not c!888773)) b!5165636))

(assert (= (and b!5165638 c!888774) b!5165633))

(assert (= (and b!5165638 (not c!888774)) b!5165630))

(assert (= (or b!5165638 b!5165636) bm!362368))

(assert (= (or b!5165638 b!5165636) bm!362370))

(assert (= (or b!5165638 b!5165636) bm!362373))

(assert (= (or b!5165638 b!5165636) bm!362371))

(assert (= (or b!5165629 b!5165632) bm!362369))

(assert (= (or b!5165629 b!5165640) bm!362374))

(assert (= (or b!5165629 b!5165632) bm!362372))

(assert (= (or b!5165629 b!5165632) bm!362367))

(assert (= (and d!1666496 res!2195938) b!5165628))

(assert (= (and b!5165628 (not res!2195937)) b!5165635))

(assert (=> bm!362371 m!6215960))

(declare-fun m!6216086 () Bool)

(assert (=> bm!362371 m!6216086))

(assert (=> bm!362374 m!6215950))

(declare-fun m!6216088 () Bool)

(assert (=> bm!362369 m!6216088))

(declare-fun m!6216090 () Bool)

(assert (=> bm!362373 m!6216090))

(declare-fun m!6216092 () Bool)

(assert (=> bm!362372 m!6216092))

(assert (=> d!1666496 m!6215958))

(declare-fun m!6216094 () Bool)

(assert (=> d!1666496 m!6216094))

(assert (=> d!1666496 m!6215946))

(declare-fun m!6216096 () Bool)

(assert (=> d!1666496 m!6216096))

(declare-fun m!6216098 () Bool)

(assert (=> d!1666496 m!6216098))

(declare-fun m!6216100 () Bool)

(assert (=> d!1666496 m!6216100))

(assert (=> d!1666496 m!6215946))

(declare-fun m!6216102 () Bool)

(assert (=> d!1666496 m!6216102))

(declare-fun m!6216104 () Bool)

(assert (=> bm!362368 m!6216104))

(declare-fun m!6216106 () Bool)

(assert (=> bm!362367 m!6216106))

(declare-fun m!6216108 () Bool)

(assert (=> b!5165640 m!6216108))

(declare-fun m!6216110 () Bool)

(assert (=> b!5165640 m!6216110))

(assert (=> b!5165640 m!6215956))

(assert (=> b!5165640 m!6216104))

(assert (=> b!5165640 m!6216110))

(declare-fun m!6216112 () Bool)

(assert (=> b!5165640 m!6216112))

(assert (=> b!5165640 m!6215960))

(declare-fun m!6216114 () Bool)

(assert (=> b!5165640 m!6216114))

(assert (=> b!5165640 m!6215958))

(declare-fun m!6216116 () Bool)

(assert (=> b!5165640 m!6216116))

(declare-fun m!6216118 () Bool)

(assert (=> b!5165640 m!6216118))

(declare-fun m!6216120 () Bool)

(assert (=> b!5165640 m!6216120))

(assert (=> b!5165640 m!6215958))

(declare-fun m!6216122 () Bool)

(assert (=> b!5165640 m!6216122))

(declare-fun m!6216124 () Bool)

(assert (=> b!5165640 m!6216124))

(assert (=> b!5165640 m!6216114))

(declare-fun m!6216126 () Bool)

(assert (=> b!5165640 m!6216126))

(declare-fun m!6216128 () Bool)

(assert (=> b!5165628 m!6216128))

(declare-fun m!6216130 () Bool)

(assert (=> b!5165638 m!6216130))

(assert (=> bm!362370 m!6216116))

(declare-fun m!6216132 () Bool)

(assert (=> b!5165635 m!6216132))

(assert (=> b!5165635 m!6215956))

(assert (=> b!5165463 d!1666496))

(declare-fun bs!1202797 () Bool)

(declare-fun d!1666498 () Bool)

(assert (= bs!1202797 (and d!1666498 d!1666468)))

(declare-fun lambda!257773 () Int)

(assert (=> bs!1202797 (= lambda!257773 lambda!257772)))

(assert (=> d!1666498 (= (inv!79688 setElem!31662) (forall!14104 (exprs!4460 setElem!31662) lambda!257773))))

(declare-fun bs!1202798 () Bool)

(assert (= bs!1202798 d!1666498))

(declare-fun m!6216134 () Bool)

(assert (=> bs!1202798 m!6216134))

(assert (=> setNonEmpty!31662 d!1666498))

(declare-fun d!1666500 () Bool)

(declare-fun e!3218672 () Bool)

(assert (=> d!1666500 e!3218672))

(declare-fun res!2195943 () Bool)

(assert (=> d!1666500 (=> (not res!2195943) (not e!3218672))))

(declare-fun lt!2124584 () List!60108)

(declare-fun content!10628 (List!60108) (Set C!29422))

(assert (=> d!1666500 (= res!2195943 (= (content!10628 lt!2124584) (set.union (content!10628 testedP!294) (content!10628 lt!2124395))))))

(declare-fun e!3218671 () List!60108)

(assert (=> d!1666500 (= lt!2124584 e!3218671)))

(declare-fun c!888780 () Bool)

(assert (=> d!1666500 (= c!888780 (is-Nil!59984 testedP!294))))

(assert (=> d!1666500 (= (++!13108 testedP!294 lt!2124395) lt!2124584)))

(declare-fun b!5165653 () Bool)

(assert (=> b!5165653 (= e!3218672 (or (not (= lt!2124395 Nil!59984)) (= lt!2124584 testedP!294)))))

(declare-fun b!5165651 () Bool)

(assert (=> b!5165651 (= e!3218671 (Cons!59984 (h!66432 testedP!294) (++!13108 (t!373261 testedP!294) lt!2124395)))))

(declare-fun b!5165650 () Bool)

(assert (=> b!5165650 (= e!3218671 lt!2124395)))

(declare-fun b!5165652 () Bool)

(declare-fun res!2195944 () Bool)

(assert (=> b!5165652 (=> (not res!2195944) (not e!3218672))))

(assert (=> b!5165652 (= res!2195944 (= (size!39612 lt!2124584) (+ (size!39612 testedP!294) (size!39612 lt!2124395))))))

(assert (= (and d!1666500 c!888780) b!5165650))

(assert (= (and d!1666500 (not c!888780)) b!5165651))

(assert (= (and d!1666500 res!2195943) b!5165652))

(assert (= (and b!5165652 res!2195944) b!5165653))

(declare-fun m!6216136 () Bool)

(assert (=> d!1666500 m!6216136))

(declare-fun m!6216138 () Bool)

(assert (=> d!1666500 m!6216138))

(declare-fun m!6216140 () Bool)

(assert (=> d!1666500 m!6216140))

(declare-fun m!6216142 () Bool)

(assert (=> b!5165651 m!6216142))

(declare-fun m!6216144 () Bool)

(assert (=> b!5165652 m!6216144))

(assert (=> b!5165652 m!6215956))

(declare-fun m!6216146 () Bool)

(assert (=> b!5165652 m!6216146))

(assert (=> b!5165465 d!1666500))

(declare-fun d!1666502 () Bool)

(declare-fun lambda!257776 () Int)

(declare-fun exists!1889 ((Set Context!7920) Int) Bool)

(assert (=> d!1666502 (= (nullableZipper!1132 z!4581) (exists!1889 z!4581 lambda!257776))))

(declare-fun bs!1202799 () Bool)

(assert (= bs!1202799 d!1666502))

(declare-fun m!6216148 () Bool)

(assert (=> bs!1202799 m!6216148))

(assert (=> b!5165461 d!1666502))

(declare-fun d!1666504 () Bool)

(declare-fun c!888785 () Bool)

(assert (=> d!1666504 (= c!888785 (is-Cons!59984 testedP!294))))

(declare-fun e!3218675 () (Set Context!7920))

(assert (=> d!1666504 (= (derivationZipper!199 baseZ!62 testedP!294) e!3218675)))

(declare-fun b!5165658 () Bool)

(assert (=> b!5165658 (= e!3218675 (derivationZipper!199 (derivationStepZipper!944 baseZ!62 (h!66432 testedP!294)) (t!373261 testedP!294)))))

(declare-fun b!5165659 () Bool)

(assert (=> b!5165659 (= e!3218675 baseZ!62)))

(assert (= (and d!1666504 c!888785) b!5165658))

(assert (= (and d!1666504 (not c!888785)) b!5165659))

(declare-fun m!6216150 () Bool)

(assert (=> b!5165658 m!6216150))

(assert (=> b!5165658 m!6216150))

(declare-fun m!6216152 () Bool)

(assert (=> b!5165658 m!6216152))

(assert (=> b!5165458 d!1666504))

(declare-fun b!5165664 () Bool)

(declare-fun e!3218678 () Bool)

(declare-fun tp!1449108 () Bool)

(declare-fun tp!1449109 () Bool)

(assert (=> b!5165664 (= e!3218678 (and tp!1449108 tp!1449109))))

(assert (=> b!5165464 (= tp!1449081 e!3218678)))

(assert (= (and b!5165464 (is-Cons!59983 (exprs!4460 setElem!31661))) b!5165664))

(declare-fun b!5165665 () Bool)

(declare-fun e!3218679 () Bool)

(declare-fun tp!1449110 () Bool)

(declare-fun tp!1449111 () Bool)

(assert (=> b!5165665 (= e!3218679 (and tp!1449110 tp!1449111))))

(assert (=> b!5165460 (= tp!1449083 e!3218679)))

(assert (= (and b!5165460 (is-Cons!59983 (exprs!4460 setElem!31662))) b!5165665))

(declare-fun b!5165670 () Bool)

(declare-fun e!3218682 () Bool)

(declare-fun tp!1449114 () Bool)

(assert (=> b!5165670 (= e!3218682 (and tp_is_empty!38405 tp!1449114))))

(assert (=> b!5165462 (= tp!1449084 e!3218682)))

(assert (= (and b!5165462 (is-Cons!59984 (t!373261 input!5817))) b!5165670))

(declare-fun condSetEmpty!31671 () Bool)

(assert (=> setNonEmpty!31661 (= condSetEmpty!31671 (= setRest!31661 (as set.empty (Set Context!7920))))))

(declare-fun setRes!31671 () Bool)

(assert (=> setNonEmpty!31661 (= tp!1449082 setRes!31671)))

(declare-fun setIsEmpty!31671 () Bool)

(assert (=> setIsEmpty!31671 setRes!31671))

(declare-fun setNonEmpty!31671 () Bool)

(declare-fun tp!1449119 () Bool)

(declare-fun setElem!31671 () Context!7920)

(declare-fun e!3218685 () Bool)

(assert (=> setNonEmpty!31671 (= setRes!31671 (and tp!1449119 (inv!79688 setElem!31671) e!3218685))))

(declare-fun setRest!31671 () (Set Context!7920))

(assert (=> setNonEmpty!31671 (= setRest!31661 (set.union (set.insert setElem!31671 (as set.empty (Set Context!7920))) setRest!31671))))

(declare-fun b!5165675 () Bool)

(declare-fun tp!1449120 () Bool)

(assert (=> b!5165675 (= e!3218685 tp!1449120)))

(assert (= (and setNonEmpty!31661 condSetEmpty!31671) setIsEmpty!31671))

(assert (= (and setNonEmpty!31661 (not condSetEmpty!31671)) setNonEmpty!31671))

(assert (= setNonEmpty!31671 b!5165675))

(declare-fun m!6216154 () Bool)

(assert (=> setNonEmpty!31671 m!6216154))

(declare-fun condSetEmpty!31672 () Bool)

(assert (=> setNonEmpty!31662 (= condSetEmpty!31672 (= setRest!31662 (as set.empty (Set Context!7920))))))

(declare-fun setRes!31672 () Bool)

(assert (=> setNonEmpty!31662 (= tp!1449080 setRes!31672)))

(declare-fun setIsEmpty!31672 () Bool)

(assert (=> setIsEmpty!31672 setRes!31672))

(declare-fun tp!1449121 () Bool)

(declare-fun setElem!31672 () Context!7920)

(declare-fun setNonEmpty!31672 () Bool)

(declare-fun e!3218686 () Bool)

(assert (=> setNonEmpty!31672 (= setRes!31672 (and tp!1449121 (inv!79688 setElem!31672) e!3218686))))

(declare-fun setRest!31672 () (Set Context!7920))

(assert (=> setNonEmpty!31672 (= setRest!31662 (set.union (set.insert setElem!31672 (as set.empty (Set Context!7920))) setRest!31672))))

(declare-fun b!5165676 () Bool)

(declare-fun tp!1449122 () Bool)

(assert (=> b!5165676 (= e!3218686 tp!1449122)))

(assert (= (and setNonEmpty!31662 condSetEmpty!31672) setIsEmpty!31672))

(assert (= (and setNonEmpty!31662 (not condSetEmpty!31672)) setNonEmpty!31672))

(assert (= setNonEmpty!31672 b!5165676))

(declare-fun m!6216156 () Bool)

(assert (=> setNonEmpty!31672 m!6216156))

(declare-fun b!5165677 () Bool)

(declare-fun e!3218687 () Bool)

(declare-fun tp!1449123 () Bool)

(assert (=> b!5165677 (= e!3218687 (and tp_is_empty!38405 tp!1449123))))

(assert (=> b!5165466 (= tp!1449085 e!3218687)))

(assert (= (and b!5165466 (is-Cons!59984 (t!373261 testedP!294))) b!5165677))

(push 1)

(assert (not b!5165652))

(assert (not setNonEmpty!31671))

(assert (not d!1666496))

(assert (not bm!362367))

(assert (not b!5165638))

(assert tp_is_empty!38405)

(assert (not setNonEmpty!31672))

(assert (not b!5165591))

(assert (not d!1666500))

(assert (not bm!362374))

(assert (not b!5165651))

(assert (not d!1666468))

(assert (not b!5165658))

(assert (not b!5165583))

(assert (not b!5165670))

(assert (not b!5165635))

(assert (not bm!362369))

(assert (not d!1666498))

(assert (not b!5165677))

(assert (not b!5165599))

(assert (not d!1666502))

(assert (not bm!362372))

(assert (not b!5165628))

(assert (not d!1666492))

(assert (not b!5165640))

(assert (not b!5165676))

(assert (not b!5165664))

(assert (not b!5165665))

(assert (not b!5165596))

(assert (not b!5165584))

(assert (not bm!362368))

(assert (not bm!362371))

(assert (not bm!362370))

(assert (not bm!362373))

(assert (not b!5165585))

(assert (not b!5165675))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


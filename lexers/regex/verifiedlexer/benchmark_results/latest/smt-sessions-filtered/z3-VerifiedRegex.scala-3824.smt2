; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212546 () Bool)

(assert start!212546)

(declare-fun setIsEmpty!18570 () Bool)

(declare-fun setRes!18570 () Bool)

(assert (=> setIsEmpty!18570 setRes!18570))

(declare-fun b!2191516 () Bool)

(declare-fun res!942001 () Bool)

(declare-fun e!1400494 () Bool)

(assert (=> b!2191516 (=> (not res!942001) (not e!1400494))))

(declare-fun from!1114 () Int)

(declare-fun lt!819079 () Int)

(assert (=> b!2191516 (= res!942001 (not (= from!1114 lt!819079)))))

(declare-fun b!2191517 () Bool)

(declare-fun e!1400486 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12376 0))(
  ( (C!12377 (val!7174 Int)) )
))
(declare-datatypes ((Regex!6115 0))(
  ( (ElementMatch!6115 (c!348590 C!12376)) (Concat!10417 (regOne!12742 Regex!6115) (regTwo!12742 Regex!6115)) (EmptyExpr!6115) (Star!6115 (reg!6444 Regex!6115)) (EmptyLang!6115) (Union!6115 (regOne!12743 Regex!6115) (regTwo!12743 Regex!6115)) )
))
(declare-datatypes ((List!25503 0))(
  ( (Nil!25419) (Cons!25419 (h!30820 Regex!6115) (t!198101 List!25503)) )
))
(declare-datatypes ((Context!3370 0))(
  ( (Context!3371 (exprs!2185 List!25503)) )
))
(declare-fun lt!819075 () (InoxSet Context!3370))

(declare-fun lostCauseZipper!233 ((InoxSet Context!3370)) Bool)

(assert (=> b!2191517 (= e!1400486 (lostCauseZipper!233 lt!819075))))

(declare-fun b!2191518 () Bool)

(declare-fun e!1400483 () Bool)

(declare-fun tp!683127 () Bool)

(assert (=> b!2191518 (= e!1400483 tp!683127)))

(declare-fun tp!683128 () Bool)

(declare-fun setNonEmpty!18570 () Bool)

(declare-fun setElem!18570 () Context!3370)

(declare-fun inv!33918 (Context!3370) Bool)

(assert (=> setNonEmpty!18570 (= setRes!18570 (and tp!683128 (inv!33918 setElem!18570) e!1400483))))

(declare-fun z!3955 () (InoxSet Context!3370))

(declare-fun setRest!18570 () (InoxSet Context!3370))

(assert (=> setNonEmpty!18570 (= z!3955 ((_ map or) (store ((as const (Array Context!3370 Bool)) false) setElem!18570 true) setRest!18570))))

(declare-fun b!2191519 () Bool)

(declare-fun e!1400492 () Bool)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2191519 (= e!1400492 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2191520 () Bool)

(declare-fun e!1400479 () Int)

(declare-fun lt!819076 () Int)

(assert (=> b!2191520 (= e!1400479 lt!819076)))

(declare-fun b!2191521 () Bool)

(declare-fun res!941987 () Bool)

(declare-fun e!1400484 () Bool)

(assert (=> b!2191521 (=> (not res!941987) (not e!1400484))))

(declare-fun e!1400478 () Bool)

(assert (=> b!2191521 (= res!941987 e!1400478)))

(declare-fun res!941998 () Bool)

(assert (=> b!2191521 (=> res!941998 e!1400478)))

(declare-fun lt!819071 () Int)

(declare-fun lt!819073 () Int)

(declare-fun lt!819072 () Int)

(assert (=> b!2191521 (= res!941998 (or (> lt!819072 0) (> lt!819071 from!1114) (< lt!819071 lt!819076) (< lt!819076 lastNullablePos!193) (> lt!819076 from!1114) (and (not (= lt!819076 from!1114)) (not (= lt!819076 lastNullablePos!193))) (not (= lt!819076 lastNullablePos!193)) (not (= (+ 1 (- lt!819073 from!1114)) 1))))))

(declare-fun b!2191522 () Bool)

(declare-fun e!1400488 () Bool)

(assert (=> b!2191522 (= e!1400488 e!1400494)))

(declare-fun res!941997 () Bool)

(assert (=> b!2191522 (=> (not res!941997) (not e!1400494))))

(assert (=> b!2191522 (= res!941997 (and (<= from!1114 lt!819079) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-datatypes ((List!25504 0))(
  ( (Nil!25420) (Cons!25420 (h!30821 C!12376) (t!198102 List!25504)) )
))
(declare-datatypes ((IArray!16507 0))(
  ( (IArray!16508 (innerList!8311 List!25504)) )
))
(declare-datatypes ((Conc!8251 0))(
  ( (Node!8251 (left!19503 Conc!8251) (right!19833 Conc!8251) (csize!16732 Int) (cheight!8462 Int)) (Leaf!12076 (xs!11193 IArray!16507) (csize!16733 Int)) (Empty!8251) )
))
(declare-datatypes ((BalanceConc!16264 0))(
  ( (BalanceConc!16265 (c!348591 Conc!8251)) )
))
(declare-fun totalInput!923 () BalanceConc!16264)

(declare-fun size!19833 (BalanceConc!16264) Int)

(assert (=> b!2191522 (= lt!819079 (size!19833 totalInput!923))))

(declare-fun b!2191523 () Bool)

(declare-fun e!1400491 () Bool)

(assert (=> b!2191523 (= e!1400478 e!1400491)))

(declare-fun res!942002 () Bool)

(assert (=> b!2191523 (=> (not res!942002) (not e!1400491))))

(assert (=> b!2191523 (= res!942002 (= lt!819071 e!1400479))))

(declare-fun c!348587 () Bool)

(assert (=> b!2191523 (= c!348587 e!1400486)))

(declare-fun res!941990 () Bool)

(assert (=> b!2191523 (=> res!941990 e!1400486)))

(assert (=> b!2191523 (= res!941990 (= (+ 1 from!1114) lt!819079))))

(declare-fun b!2191524 () Bool)

(declare-fun res!941992 () Bool)

(assert (=> b!2191524 (=> (not res!941992) (not e!1400494))))

(assert (=> b!2191524 (= res!941992 e!1400492)))

(declare-fun res!941986 () Bool)

(assert (=> b!2191524 (=> res!941986 e!1400492)))

(declare-fun nullableZipper!395 ((InoxSet Context!3370)) Bool)

(assert (=> b!2191524 (= res!941986 (not (nullableZipper!395 z!3955)))))

(declare-fun res!942003 () Bool)

(assert (=> start!212546 (=> (not res!942003) (not e!1400488))))

(assert (=> start!212546 (= res!942003 (>= from!1114 0))))

(assert (=> start!212546 e!1400488))

(assert (=> start!212546 true))

(declare-fun e!1400496 () Bool)

(declare-fun inv!33919 (BalanceConc!16264) Bool)

(assert (=> start!212546 (and (inv!33919 totalInput!923) e!1400496)))

(declare-fun condSetEmpty!18570 () Bool)

(assert (=> start!212546 (= condSetEmpty!18570 (= z!3955 ((as const (Array Context!3370 Bool)) false)))))

(assert (=> start!212546 setRes!18570))

(declare-fun b!2191525 () Bool)

(declare-fun lt!819069 () (InoxSet Context!3370))

(declare-fun e!1400493 () Int)

(declare-fun furthestNullablePosition!285 ((InoxSet Context!3370) Int BalanceConc!16264 Int Int) Int)

(assert (=> b!2191525 (= e!1400479 (furthestNullablePosition!285 lt!819069 (+ 2 from!1114) totalInput!923 lt!819079 e!1400493))))

(declare-fun derivationStepZipper!192 ((InoxSet Context!3370) C!12376) (InoxSet Context!3370))

(declare-fun apply!6151 (BalanceConc!16264 Int) C!12376)

(assert (=> b!2191525 (= lt!819069 (derivationStepZipper!192 lt!819075 (apply!6151 totalInput!923 (+ 1 from!1114))))))

(declare-fun c!348586 () Bool)

(assert (=> b!2191525 (= c!348586 (nullableZipper!395 lt!819069))))

(declare-fun b!2191526 () Bool)

(declare-datatypes ((Unit!38527 0))(
  ( (Unit!38528) )
))
(declare-fun e!1400489 () Unit!38527)

(declare-fun Unit!38529 () Unit!38527)

(assert (=> b!2191526 (= e!1400489 Unit!38529)))

(declare-fun lt!819067 () Int)

(declare-fun e!1400495 () Bool)

(declare-fun b!2191527 () Bool)

(declare-fun matchZipper!215 ((InoxSet Context!3370) List!25504) Bool)

(declare-fun take!307 (List!25504 Int) List!25504)

(declare-fun drop!1317 (List!25504 Int) List!25504)

(declare-fun list!9762 (BalanceConc!16264) List!25504)

(assert (=> b!2191527 (= e!1400495 (matchZipper!215 z!3955 (take!307 (drop!1317 (list!9762 totalInput!923) from!1114) lt!819067)))))

(declare-fun b!2191528 () Bool)

(declare-fun res!941988 () Bool)

(declare-fun lt!819074 () Int)

(assert (=> b!2191528 (= res!941988 (<= lt!819074 0))))

(declare-fun e!1400485 () Bool)

(assert (=> b!2191528 (=> res!941988 e!1400485)))

(declare-fun e!1400480 () Bool)

(assert (=> b!2191528 (= e!1400480 e!1400485)))

(declare-fun b!2191529 () Bool)

(declare-fun tp!683126 () Bool)

(declare-fun inv!33920 (Conc!8251) Bool)

(assert (=> b!2191529 (= e!1400496 (and (inv!33920 (c!348591 totalInput!923)) tp!683126))))

(declare-fun b!2191530 () Bool)

(declare-fun e!1400482 () Bool)

(assert (=> b!2191530 (= e!1400482 true)))

(declare-fun lt!819078 () Unit!38527)

(assert (=> b!2191530 (= lt!819078 e!1400489)))

(declare-fun c!348589 () Bool)

(assert (=> b!2191530 (= c!348589 (= lt!819076 lastNullablePos!193))))

(declare-fun lt!819065 () List!25504)

(declare-fun b!2191531 () Bool)

(assert (=> b!2191531 (= e!1400485 (matchZipper!215 z!3955 (take!307 lt!819065 lt!819074)))))

(declare-fun b!2191532 () Bool)

(declare-fun e!1400497 () Bool)

(assert (=> b!2191532 (= e!1400484 e!1400497)))

(declare-fun res!941996 () Bool)

(assert (=> b!2191532 (=> res!941996 e!1400497)))

(assert (=> b!2191532 (= res!941996 (or (> lt!819072 0) (> lt!819071 from!1114) (< lt!819071 lt!819076) (< lt!819076 lastNullablePos!193) (> lt!819076 from!1114) (and (not (= lt!819076 from!1114)) (not (= lt!819076 lastNullablePos!193))) (not (= lt!819076 lastNullablePos!193))))))

(declare-fun b!2191533 () Bool)

(declare-fun e!1400481 () Int)

(assert (=> b!2191533 (= e!1400481 from!1114)))

(declare-fun b!2191534 () Bool)

(declare-fun Unit!38530 () Unit!38527)

(assert (=> b!2191534 (= e!1400489 Unit!38530)))

(assert (=> b!2191534 (= lt!819074 (+ 1 (- lt!819073 from!1114)))))

(declare-fun lt!819077 () List!25504)

(assert (=> b!2191534 (= lt!819077 (list!9762 totalInput!923))))

(declare-fun lt!819070 () Unit!38527)

(declare-fun lemmaDropTakeAddOneLeft!4 (List!25504 Int Int) Unit!38527)

(assert (=> b!2191534 (= lt!819070 (lemmaDropTakeAddOneLeft!4 lt!819077 from!1114 0))))

(declare-fun lt!819066 () C!12376)

(declare-fun apply!6152 (List!25504 Int) C!12376)

(assert (=> b!2191534 (= lt!819066 (apply!6152 lt!819077 from!1114))))

(declare-fun lt!819080 () List!25504)

(assert (=> b!2191534 (= lt!819080 (take!307 (drop!1317 lt!819077 (+ 1 from!1114)) 0))))

(assert (=> b!2191534 (= lt!819065 (drop!1317 lt!819077 from!1114))))

(declare-fun res!941991 () Bool)

(assert (=> b!2191534 (= res!941991 (= (Cons!25420 lt!819066 lt!819080) (take!307 lt!819065 1)))))

(assert (=> b!2191534 (=> (not res!941991) (not e!1400480))))

(assert (=> b!2191534 e!1400480))

(declare-fun b!2191535 () Bool)

(assert (=> b!2191535 (= e!1400493 (+ 1 from!1114))))

(declare-fun b!2191536 () Bool)

(assert (=> b!2191536 (= e!1400497 e!1400495)))

(declare-fun res!941995 () Bool)

(assert (=> b!2191536 (=> res!941995 e!1400495)))

(assert (=> b!2191536 (= res!941995 (<= lt!819067 0))))

(assert (=> b!2191536 (= lt!819067 (+ 1 (- lt!819073 from!1114)))))

(declare-fun b!2191537 () Bool)

(assert (=> b!2191537 (= e!1400491 false)))

(declare-fun b!2191538 () Bool)

(declare-fun e!1400490 () Bool)

(assert (=> b!2191538 (= e!1400490 (not e!1400482))))

(declare-fun res!941993 () Bool)

(assert (=> b!2191538 (=> res!941993 e!1400482)))

(assert (=> b!2191538 (= res!941993 (or (> lt!819072 0) (> lt!819071 from!1114) (< lt!819071 lt!819076) (< lt!819076 lastNullablePos!193) (> lt!819076 from!1114) (and (not (= lt!819076 from!1114)) (not (= lt!819076 lastNullablePos!193)))))))

(assert (=> b!2191538 e!1400484))

(declare-fun res!941989 () Bool)

(assert (=> b!2191538 (=> (not res!941989) (not e!1400484))))

(declare-fun e!1400487 () Bool)

(assert (=> b!2191538 (= res!941989 e!1400487)))

(declare-fun res!942000 () Bool)

(assert (=> b!2191538 (=> res!942000 e!1400487)))

(assert (=> b!2191538 (= res!942000 (<= lt!819072 0))))

(assert (=> b!2191538 (= lt!819072 (+ 1 (- lt!819071 (+ 1 from!1114))))))

(declare-fun lt!819068 () Unit!38527)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!120 ((InoxSet Context!3370) Int BalanceConc!16264 Int) Unit!38527)

(assert (=> b!2191538 (= lt!819068 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!120 lt!819075 (+ 1 from!1114) totalInput!923 lt!819076))))

(declare-fun b!2191539 () Bool)

(assert (=> b!2191539 (= e!1400481 lastNullablePos!193)))

(declare-fun b!2191540 () Bool)

(assert (=> b!2191540 (= e!1400493 lt!819076)))

(declare-fun b!2191541 () Bool)

(assert (=> b!2191541 (= e!1400494 e!1400490)))

(declare-fun res!941999 () Bool)

(assert (=> b!2191541 (=> (not res!941999) (not e!1400490))))

(assert (=> b!2191541 (= res!941999 (= lt!819073 lt!819071))))

(assert (=> b!2191541 (= lt!819071 (furthestNullablePosition!285 lt!819075 (+ 1 from!1114) totalInput!923 lt!819079 lt!819076))))

(assert (=> b!2191541 (= lt!819073 (furthestNullablePosition!285 z!3955 from!1114 totalInput!923 lt!819079 lastNullablePos!193))))

(assert (=> b!2191541 (= lt!819076 e!1400481)))

(declare-fun c!348588 () Bool)

(assert (=> b!2191541 (= c!348588 (nullableZipper!395 lt!819075))))

(assert (=> b!2191541 (= lt!819075 (derivationStepZipper!192 z!3955 (apply!6151 totalInput!923 from!1114)))))

(declare-fun b!2191542 () Bool)

(declare-fun res!941994 () Bool)

(assert (=> b!2191542 (=> (not res!941994) (not e!1400494))))

(assert (=> b!2191542 (= res!941994 (not (lostCauseZipper!233 z!3955)))))

(declare-fun b!2191543 () Bool)

(assert (=> b!2191543 (= e!1400487 (matchZipper!215 lt!819075 (take!307 (drop!1317 (list!9762 totalInput!923) (+ 1 from!1114)) lt!819072)))))

(assert (= (and start!212546 res!942003) b!2191522))

(assert (= (and b!2191522 res!941997) b!2191524))

(assert (= (and b!2191524 (not res!941986)) b!2191519))

(assert (= (and b!2191524 res!941992) b!2191516))

(assert (= (and b!2191516 res!942001) b!2191542))

(assert (= (and b!2191542 res!941994) b!2191541))

(assert (= (and b!2191541 c!348588) b!2191533))

(assert (= (and b!2191541 (not c!348588)) b!2191539))

(assert (= (and b!2191541 res!941999) b!2191538))

(assert (= (and b!2191538 (not res!942000)) b!2191543))

(assert (= (and b!2191538 res!941989) b!2191521))

(assert (= (and b!2191521 (not res!941998)) b!2191523))

(assert (= (and b!2191523 (not res!941990)) b!2191517))

(assert (= (and b!2191523 c!348587) b!2191520))

(assert (= (and b!2191523 (not c!348587)) b!2191525))

(assert (= (and b!2191525 c!348586) b!2191535))

(assert (= (and b!2191525 (not c!348586)) b!2191540))

(assert (= (and b!2191523 res!942002) b!2191537))

(assert (= (and b!2191521 res!941987) b!2191532))

(assert (= (and b!2191532 (not res!941996)) b!2191536))

(assert (= (and b!2191536 (not res!941995)) b!2191527))

(assert (= (and b!2191538 (not res!941993)) b!2191530))

(assert (= (and b!2191530 c!348589) b!2191526))

(assert (= (and b!2191530 (not c!348589)) b!2191534))

(assert (= (and b!2191534 res!941991) b!2191528))

(assert (= (and b!2191528 (not res!941988)) b!2191531))

(assert (= start!212546 b!2191529))

(assert (= (and start!212546 condSetEmpty!18570) setIsEmpty!18570))

(assert (= (and start!212546 (not condSetEmpty!18570)) setNonEmpty!18570))

(assert (= setNonEmpty!18570 b!2191518))

(declare-fun m!2634303 () Bool)

(assert (=> b!2191527 m!2634303))

(assert (=> b!2191527 m!2634303))

(declare-fun m!2634305 () Bool)

(assert (=> b!2191527 m!2634305))

(assert (=> b!2191527 m!2634305))

(declare-fun m!2634307 () Bool)

(assert (=> b!2191527 m!2634307))

(assert (=> b!2191527 m!2634307))

(declare-fun m!2634309 () Bool)

(assert (=> b!2191527 m!2634309))

(declare-fun m!2634311 () Bool)

(assert (=> b!2191517 m!2634311))

(declare-fun m!2634313 () Bool)

(assert (=> b!2191525 m!2634313))

(declare-fun m!2634315 () Bool)

(assert (=> b!2191525 m!2634315))

(assert (=> b!2191525 m!2634315))

(declare-fun m!2634317 () Bool)

(assert (=> b!2191525 m!2634317))

(declare-fun m!2634319 () Bool)

(assert (=> b!2191525 m!2634319))

(declare-fun m!2634321 () Bool)

(assert (=> start!212546 m!2634321))

(assert (=> b!2191543 m!2634303))

(assert (=> b!2191543 m!2634303))

(declare-fun m!2634323 () Bool)

(assert (=> b!2191543 m!2634323))

(assert (=> b!2191543 m!2634323))

(declare-fun m!2634325 () Bool)

(assert (=> b!2191543 m!2634325))

(assert (=> b!2191543 m!2634325))

(declare-fun m!2634327 () Bool)

(assert (=> b!2191543 m!2634327))

(declare-fun m!2634329 () Bool)

(assert (=> setNonEmpty!18570 m!2634329))

(declare-fun m!2634331 () Bool)

(assert (=> b!2191531 m!2634331))

(assert (=> b!2191531 m!2634331))

(declare-fun m!2634333 () Bool)

(assert (=> b!2191531 m!2634333))

(declare-fun m!2634335 () Bool)

(assert (=> b!2191534 m!2634335))

(declare-fun m!2634337 () Bool)

(assert (=> b!2191534 m!2634337))

(assert (=> b!2191534 m!2634337))

(declare-fun m!2634339 () Bool)

(assert (=> b!2191534 m!2634339))

(declare-fun m!2634341 () Bool)

(assert (=> b!2191534 m!2634341))

(declare-fun m!2634343 () Bool)

(assert (=> b!2191534 m!2634343))

(declare-fun m!2634345 () Bool)

(assert (=> b!2191534 m!2634345))

(assert (=> b!2191534 m!2634303))

(declare-fun m!2634347 () Bool)

(assert (=> b!2191524 m!2634347))

(declare-fun m!2634349 () Bool)

(assert (=> b!2191529 m!2634349))

(declare-fun m!2634351 () Bool)

(assert (=> b!2191522 m!2634351))

(declare-fun m!2634353 () Bool)

(assert (=> b!2191542 m!2634353))

(declare-fun m!2634355 () Bool)

(assert (=> b!2191538 m!2634355))

(declare-fun m!2634357 () Bool)

(assert (=> b!2191541 m!2634357))

(declare-fun m!2634359 () Bool)

(assert (=> b!2191541 m!2634359))

(assert (=> b!2191541 m!2634359))

(declare-fun m!2634361 () Bool)

(assert (=> b!2191541 m!2634361))

(declare-fun m!2634363 () Bool)

(assert (=> b!2191541 m!2634363))

(declare-fun m!2634365 () Bool)

(assert (=> b!2191541 m!2634365))

(check-sat (not b!2191524) (not b!2191525) (not b!2191541) (not b!2191534) (not start!212546) (not b!2191531) (not b!2191522) (not b!2191538) (not b!2191518) (not b!2191529) (not setNonEmpty!18570) (not b!2191543) (not b!2191527) (not b!2191517) (not b!2191542))
(check-sat)

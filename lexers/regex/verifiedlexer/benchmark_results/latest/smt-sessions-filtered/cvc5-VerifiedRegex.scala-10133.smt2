; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!530320 () Bool)

(assert start!530320)

(declare-fun b!5019307 () Bool)

(declare-fun e!3135636 () Bool)

(declare-fun tp!1407573 () Bool)

(assert (=> b!5019307 (= e!3135636 tp!1407573)))

(declare-fun res!2140391 () Bool)

(declare-fun e!3135638 () Bool)

(assert (=> start!530320 (=> (not res!2140391) (not e!3135638))))

(declare-fun from!1212 () Int)

(assert (=> start!530320 (= res!2140391 (>= from!1212 0))))

(assert (=> start!530320 e!3135638))

(assert (=> start!530320 true))

(declare-datatypes ((C!27950 0))(
  ( (C!27951 (val!23341 Int)) )
))
(declare-datatypes ((List!58124 0))(
  ( (Nil!58000) (Cons!58000 (h!64448 C!27950) (t!370500 List!58124)) )
))
(declare-datatypes ((IArray!30799 0))(
  ( (IArray!30800 (innerList!15457 List!58124)) )
))
(declare-datatypes ((Conc!15369 0))(
  ( (Node!15369 (left!42400 Conc!15369) (right!42730 Conc!15369) (csize!30968 Int) (cheight!15580 Int)) (Leaf!25503 (xs!18695 IArray!30799) (csize!30969 Int)) (Empty!15369) )
))
(declare-datatypes ((BalanceConc!30168 0))(
  ( (BalanceConc!30169 (c!857627 Conc!15369)) )
))
(declare-fun totalInput!1125 () BalanceConc!30168)

(declare-fun e!3135639 () Bool)

(declare-fun inv!76325 (BalanceConc!30168) Bool)

(assert (=> start!530320 (and (inv!76325 totalInput!1125) e!3135639)))

(declare-fun condSetEmpty!28633 () Bool)

(declare-datatypes ((Regex!13850 0))(
  ( (ElementMatch!13850 (c!857628 C!27950)) (Concat!22643 (regOne!28212 Regex!13850) (regTwo!28212 Regex!13850)) (EmptyExpr!13850) (Star!13850 (reg!14179 Regex!13850)) (EmptyLang!13850) (Union!13850 (regOne!28213 Regex!13850) (regTwo!28213 Regex!13850)) )
))
(declare-datatypes ((List!58125 0))(
  ( (Nil!58001) (Cons!58001 (h!64449 Regex!13850) (t!370501 List!58125)) )
))
(declare-datatypes ((Context!6550 0))(
  ( (Context!6551 (exprs!3775 List!58125)) )
))
(declare-fun z!4710 () (Set Context!6550))

(assert (=> start!530320 (= condSetEmpty!28633 (= z!4710 (as set.empty (Set Context!6550))))))

(declare-fun setRes!28633 () Bool)

(assert (=> start!530320 setRes!28633))

(declare-fun b!5019308 () Bool)

(declare-fun res!2140389 () Bool)

(declare-fun e!3135637 () Bool)

(assert (=> b!5019308 (=> (not res!2140389) (not e!3135637))))

(declare-fun lostCauseZipper!864 ((Set Context!6550)) Bool)

(assert (=> b!5019308 (= res!2140389 (not (lostCauseZipper!864 z!4710)))))

(declare-fun setIsEmpty!28633 () Bool)

(assert (=> setIsEmpty!28633 setRes!28633))

(declare-fun b!5019309 () Bool)

(declare-fun e!3135640 () Bool)

(assert (=> b!5019309 (= e!3135640 e!3135637)))

(declare-fun res!2140387 () Bool)

(assert (=> b!5019309 (=> (not res!2140387) (not e!3135637))))

(declare-fun lt!2077318 () List!58124)

(declare-fun matchZipper!618 ((Set Context!6550) List!58124) Bool)

(assert (=> b!5019309 (= res!2140387 (matchZipper!618 z!4710 lt!2077318))))

(declare-fun lt!2077320 () List!58124)

(declare-fun knownSize!24 () Int)

(declare-fun take!709 (List!58124 Int) List!58124)

(declare-fun drop!2513 (List!58124 Int) List!58124)

(assert (=> b!5019309 (= lt!2077318 (take!709 (drop!2513 lt!2077320 from!1212) knownSize!24))))

(declare-fun list!18700 (BalanceConc!30168) List!58124)

(assert (=> b!5019309 (= lt!2077320 (list!18700 totalInput!1125))))

(declare-fun b!5019310 () Bool)

(assert (=> b!5019310 (= e!3135638 e!3135640)))

(declare-fun res!2140392 () Bool)

(assert (=> b!5019310 (=> (not res!2140392) (not e!3135640))))

(declare-fun lt!2077317 () Int)

(assert (=> b!5019310 (= res!2140392 (and (<= from!1212 lt!2077317) (>= knownSize!24 0) (<= knownSize!24 (- lt!2077317 from!1212))))))

(declare-fun size!38586 (BalanceConc!30168) Int)

(assert (=> b!5019310 (= lt!2077317 (size!38586 totalInput!1125))))

(declare-fun b!5019311 () Bool)

(declare-fun res!2140388 () Bool)

(assert (=> b!5019311 (=> (not res!2140388) (not e!3135637))))

(assert (=> b!5019311 (= res!2140388 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun b!5019312 () Bool)

(declare-fun res!2140386 () Bool)

(assert (=> b!5019312 (=> (not res!2140386) (not e!3135637))))

(declare-fun size!38587 (List!58124) Int)

(assert (=> b!5019312 (= res!2140386 (= (size!38587 lt!2077318) knownSize!24))))

(declare-fun b!5019313 () Bool)

(assert (=> b!5019313 (= e!3135637 (>= from!1212 (size!38587 lt!2077320)))))

(declare-fun lt!2077319 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!172 ((Set Context!6550) Int BalanceConc!30168 Int) Int)

(declare-fun derivationStepZipper!656 ((Set Context!6550) C!27950) (Set Context!6550))

(declare-fun apply!14034 (BalanceConc!30168 Int) C!27950)

(assert (=> b!5019313 (= lt!2077319 (findLongestMatchInnerZipperFastV2!172 (derivationStepZipper!656 z!4710 (apply!14034 totalInput!1125 from!1212)) (+ 1 from!1212) totalInput!1125 lt!2077317))))

(declare-fun b!5019314 () Bool)

(declare-fun tp!1407575 () Bool)

(declare-fun inv!76326 (Conc!15369) Bool)

(assert (=> b!5019314 (= e!3135639 (and (inv!76326 (c!857627 totalInput!1125)) tp!1407575))))

(declare-fun b!5019315 () Bool)

(declare-fun res!2140390 () Bool)

(assert (=> b!5019315 (=> (not res!2140390) (not e!3135637))))

(assert (=> b!5019315 (= res!2140390 (not (= from!1212 lt!2077317)))))

(declare-fun setNonEmpty!28633 () Bool)

(declare-fun setElem!28633 () Context!6550)

(declare-fun tp!1407574 () Bool)

(declare-fun inv!76327 (Context!6550) Bool)

(assert (=> setNonEmpty!28633 (= setRes!28633 (and tp!1407574 (inv!76327 setElem!28633) e!3135636))))

(declare-fun setRest!28633 () (Set Context!6550))

(assert (=> setNonEmpty!28633 (= z!4710 (set.union (set.insert setElem!28633 (as set.empty (Set Context!6550))) setRest!28633))))

(assert (= (and start!530320 res!2140391) b!5019310))

(assert (= (and b!5019310 res!2140392) b!5019309))

(assert (= (and b!5019309 res!2140387) b!5019311))

(assert (= (and b!5019311 res!2140388) b!5019312))

(assert (= (and b!5019312 res!2140386) b!5019308))

(assert (= (and b!5019308 res!2140389) b!5019315))

(assert (= (and b!5019315 res!2140390) b!5019313))

(assert (= start!530320 b!5019314))

(assert (= (and start!530320 condSetEmpty!28633) setIsEmpty!28633))

(assert (= (and start!530320 (not condSetEmpty!28633)) setNonEmpty!28633))

(assert (= setNonEmpty!28633 b!5019307))

(declare-fun m!6054458 () Bool)

(assert (=> b!5019308 m!6054458))

(declare-fun m!6054460 () Bool)

(assert (=> b!5019309 m!6054460))

(declare-fun m!6054462 () Bool)

(assert (=> b!5019309 m!6054462))

(assert (=> b!5019309 m!6054462))

(declare-fun m!6054464 () Bool)

(assert (=> b!5019309 m!6054464))

(declare-fun m!6054466 () Bool)

(assert (=> b!5019309 m!6054466))

(declare-fun m!6054468 () Bool)

(assert (=> b!5019312 m!6054468))

(declare-fun m!6054470 () Bool)

(assert (=> b!5019310 m!6054470))

(declare-fun m!6054472 () Bool)

(assert (=> b!5019314 m!6054472))

(declare-fun m!6054474 () Bool)

(assert (=> setNonEmpty!28633 m!6054474))

(declare-fun m!6054476 () Bool)

(assert (=> start!530320 m!6054476))

(declare-fun m!6054478 () Bool)

(assert (=> b!5019313 m!6054478))

(declare-fun m!6054480 () Bool)

(assert (=> b!5019313 m!6054480))

(assert (=> b!5019313 m!6054480))

(declare-fun m!6054482 () Bool)

(assert (=> b!5019313 m!6054482))

(assert (=> b!5019313 m!6054482))

(declare-fun m!6054484 () Bool)

(assert (=> b!5019313 m!6054484))

(push 1)

(assert (not b!5019312))

(assert (not b!5019308))

(assert (not b!5019313))

(assert (not b!5019314))

(assert (not b!5019310))

(assert (not start!530320))

(assert (not b!5019309))

(assert (not b!5019307))

(assert (not setNonEmpty!28633))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1615758 () Bool)

(declare-fun lambda!248687 () Int)

(declare-fun forall!13387 (List!58125 Int) Bool)

(assert (=> d!1615758 (= (inv!76327 setElem!28633) (forall!13387 (exprs!3775 setElem!28633) lambda!248687))))

(declare-fun bs!1187121 () Bool)

(assert (= bs!1187121 d!1615758))

(declare-fun m!6054526 () Bool)

(assert (=> bs!1187121 m!6054526))

(assert (=> setNonEmpty!28633 d!1615758))

(declare-fun d!1615766 () Bool)

(declare-fun isBalanced!4287 (Conc!15369) Bool)

(assert (=> d!1615766 (= (inv!76325 totalInput!1125) (isBalanced!4287 (c!857627 totalInput!1125)))))

(declare-fun bs!1187122 () Bool)

(assert (= bs!1187122 d!1615766))

(declare-fun m!6054528 () Bool)

(assert (=> bs!1187122 m!6054528))

(assert (=> start!530320 d!1615766))

(declare-fun d!1615768 () Bool)

(declare-fun lt!2077347 () Int)

(assert (=> d!1615768 (= lt!2077347 (size!38587 (list!18700 totalInput!1125)))))

(declare-fun size!38590 (Conc!15369) Int)

(assert (=> d!1615768 (= lt!2077347 (size!38590 (c!857627 totalInput!1125)))))

(assert (=> d!1615768 (= (size!38586 totalInput!1125) lt!2077347)))

(declare-fun bs!1187123 () Bool)

(assert (= bs!1187123 d!1615768))

(assert (=> bs!1187123 m!6054466))

(assert (=> bs!1187123 m!6054466))

(declare-fun m!6054530 () Bool)

(assert (=> bs!1187123 m!6054530))

(declare-fun m!6054532 () Bool)

(assert (=> bs!1187123 m!6054532))

(assert (=> b!5019310 d!1615768))

(declare-fun d!1615770 () Bool)

(declare-fun c!857647 () Bool)

(declare-fun isEmpty!31409 (List!58124) Bool)

(assert (=> d!1615770 (= c!857647 (isEmpty!31409 lt!2077318))))

(declare-fun e!3135676 () Bool)

(assert (=> d!1615770 (= (matchZipper!618 z!4710 lt!2077318) e!3135676)))

(declare-fun b!5019377 () Bool)

(declare-fun nullableZipper!899 ((Set Context!6550)) Bool)

(assert (=> b!5019377 (= e!3135676 (nullableZipper!899 z!4710))))

(declare-fun b!5019378 () Bool)

(declare-fun head!10753 (List!58124) C!27950)

(declare-fun tail!9886 (List!58124) List!58124)

(assert (=> b!5019378 (= e!3135676 (matchZipper!618 (derivationStepZipper!656 z!4710 (head!10753 lt!2077318)) (tail!9886 lt!2077318)))))

(assert (= (and d!1615770 c!857647) b!5019377))

(assert (= (and d!1615770 (not c!857647)) b!5019378))

(declare-fun m!6054534 () Bool)

(assert (=> d!1615770 m!6054534))

(declare-fun m!6054536 () Bool)

(assert (=> b!5019377 m!6054536))

(declare-fun m!6054538 () Bool)

(assert (=> b!5019378 m!6054538))

(assert (=> b!5019378 m!6054538))

(declare-fun m!6054540 () Bool)

(assert (=> b!5019378 m!6054540))

(declare-fun m!6054542 () Bool)

(assert (=> b!5019378 m!6054542))

(assert (=> b!5019378 m!6054540))

(assert (=> b!5019378 m!6054542))

(declare-fun m!6054544 () Bool)

(assert (=> b!5019378 m!6054544))

(assert (=> b!5019309 d!1615770))

(declare-fun b!5019393 () Bool)

(declare-fun e!3135685 () List!58124)

(assert (=> b!5019393 (= e!3135685 (Cons!58000 (h!64448 (drop!2513 lt!2077320 from!1212)) (take!709 (t!370500 (drop!2513 lt!2077320 from!1212)) (- knownSize!24 1))))))

(declare-fun d!1615772 () Bool)

(declare-fun e!3135688 () Bool)

(assert (=> d!1615772 e!3135688))

(declare-fun res!2140422 () Bool)

(assert (=> d!1615772 (=> (not res!2140422) (not e!3135688))))

(declare-fun lt!2077350 () List!58124)

(declare-fun content!10277 (List!58124) (Set C!27950))

(assert (=> d!1615772 (= res!2140422 (set.subset (content!10277 lt!2077350) (content!10277 (drop!2513 lt!2077320 from!1212))))))

(assert (=> d!1615772 (= lt!2077350 e!3135685)))

(declare-fun c!857655 () Bool)

(assert (=> d!1615772 (= c!857655 (or (is-Nil!58000 (drop!2513 lt!2077320 from!1212)) (<= knownSize!24 0)))))

(assert (=> d!1615772 (= (take!709 (drop!2513 lt!2077320 from!1212) knownSize!24) lt!2077350)))

(declare-fun b!5019394 () Bool)

(declare-fun e!3135686 () Int)

(declare-fun e!3135687 () Int)

(assert (=> b!5019394 (= e!3135686 e!3135687)))

(declare-fun c!857656 () Bool)

(assert (=> b!5019394 (= c!857656 (>= knownSize!24 (size!38587 (drop!2513 lt!2077320 from!1212))))))

(declare-fun b!5019395 () Bool)

(assert (=> b!5019395 (= e!3135688 (= (size!38587 lt!2077350) e!3135686))))

(declare-fun c!857654 () Bool)

(assert (=> b!5019395 (= c!857654 (<= knownSize!24 0))))

(declare-fun b!5019396 () Bool)

(assert (=> b!5019396 (= e!3135687 (size!38587 (drop!2513 lt!2077320 from!1212)))))

(declare-fun b!5019397 () Bool)

(assert (=> b!5019397 (= e!3135686 0)))

(declare-fun b!5019398 () Bool)

(assert (=> b!5019398 (= e!3135687 knownSize!24)))

(declare-fun b!5019399 () Bool)

(assert (=> b!5019399 (= e!3135685 Nil!58000)))

(assert (= (and d!1615772 c!857655) b!5019399))

(assert (= (and d!1615772 (not c!857655)) b!5019393))

(assert (= (and d!1615772 res!2140422) b!5019395))

(assert (= (and b!5019395 c!857654) b!5019397))

(assert (= (and b!5019395 (not c!857654)) b!5019394))

(assert (= (and b!5019394 c!857656) b!5019396))

(assert (= (and b!5019394 (not c!857656)) b!5019398))

(assert (=> b!5019396 m!6054462))

(declare-fun m!6054546 () Bool)

(assert (=> b!5019396 m!6054546))

(declare-fun m!6054548 () Bool)

(assert (=> b!5019395 m!6054548))

(declare-fun m!6054550 () Bool)

(assert (=> d!1615772 m!6054550))

(assert (=> d!1615772 m!6054462))

(declare-fun m!6054552 () Bool)

(assert (=> d!1615772 m!6054552))

(assert (=> b!5019394 m!6054462))

(assert (=> b!5019394 m!6054546))

(declare-fun m!6054554 () Bool)

(assert (=> b!5019393 m!6054554))

(assert (=> b!5019309 d!1615772))

(declare-fun b!5019418 () Bool)

(declare-fun e!3135703 () Bool)

(declare-fun lt!2077353 () List!58124)

(declare-fun e!3135702 () Int)

(assert (=> b!5019418 (= e!3135703 (= (size!38587 lt!2077353) e!3135702))))

(declare-fun c!857668 () Bool)

(assert (=> b!5019418 (= c!857668 (<= from!1212 0))))

(declare-fun b!5019419 () Bool)

(declare-fun e!3135701 () List!58124)

(assert (=> b!5019419 (= e!3135701 lt!2077320)))

(declare-fun bm!350517 () Bool)

(declare-fun call!350522 () Int)

(assert (=> bm!350517 (= call!350522 (size!38587 lt!2077320))))

(declare-fun b!5019420 () Bool)

(declare-fun e!3135699 () List!58124)

(assert (=> b!5019420 (= e!3135699 Nil!58000)))

(declare-fun b!5019421 () Bool)

(declare-fun e!3135700 () Int)

(assert (=> b!5019421 (= e!3135700 (- call!350522 from!1212))))

(declare-fun b!5019422 () Bool)

(assert (=> b!5019422 (= e!3135699 e!3135701)))

(declare-fun c!857666 () Bool)

(assert (=> b!5019422 (= c!857666 (<= from!1212 0))))

(declare-fun b!5019423 () Bool)

(assert (=> b!5019423 (= e!3135702 call!350522)))

(declare-fun b!5019424 () Bool)

(assert (=> b!5019424 (= e!3135701 (drop!2513 (t!370500 lt!2077320) (- from!1212 1)))))

(declare-fun d!1615774 () Bool)

(assert (=> d!1615774 e!3135703))

(declare-fun res!2140425 () Bool)

(assert (=> d!1615774 (=> (not res!2140425) (not e!3135703))))

(assert (=> d!1615774 (= res!2140425 (set.subset (content!10277 lt!2077353) (content!10277 lt!2077320)))))

(assert (=> d!1615774 (= lt!2077353 e!3135699)))

(declare-fun c!857665 () Bool)

(assert (=> d!1615774 (= c!857665 (is-Nil!58000 lt!2077320))))

(assert (=> d!1615774 (= (drop!2513 lt!2077320 from!1212) lt!2077353)))

(declare-fun b!5019425 () Bool)

(assert (=> b!5019425 (= e!3135700 0)))

(declare-fun b!5019426 () Bool)

(assert (=> b!5019426 (= e!3135702 e!3135700)))

(declare-fun c!857667 () Bool)

(assert (=> b!5019426 (= c!857667 (>= from!1212 call!350522))))

(assert (= (and d!1615774 c!857665) b!5019420))

(assert (= (and d!1615774 (not c!857665)) b!5019422))

(assert (= (and b!5019422 c!857666) b!5019419))

(assert (= (and b!5019422 (not c!857666)) b!5019424))

(assert (= (and d!1615774 res!2140425) b!5019418))

(assert (= (and b!5019418 c!857668) b!5019423))

(assert (= (and b!5019418 (not c!857668)) b!5019426))

(assert (= (and b!5019426 c!857667) b!5019425))

(assert (= (and b!5019426 (not c!857667)) b!5019421))

(assert (= (or b!5019423 b!5019426 b!5019421) bm!350517))

(declare-fun m!6054556 () Bool)

(assert (=> b!5019418 m!6054556))

(assert (=> bm!350517 m!6054478))

(declare-fun m!6054558 () Bool)

(assert (=> b!5019424 m!6054558))

(declare-fun m!6054560 () Bool)

(assert (=> d!1615774 m!6054560))

(declare-fun m!6054562 () Bool)

(assert (=> d!1615774 m!6054562))

(assert (=> b!5019309 d!1615774))

(declare-fun d!1615776 () Bool)

(declare-fun list!18702 (Conc!15369) List!58124)

(assert (=> d!1615776 (= (list!18700 totalInput!1125) (list!18702 (c!857627 totalInput!1125)))))

(declare-fun bs!1187124 () Bool)

(assert (= bs!1187124 d!1615776))

(declare-fun m!6054564 () Bool)

(assert (=> bs!1187124 m!6054564))

(assert (=> b!5019309 d!1615776))

(declare-fun d!1615778 () Bool)

(declare-fun c!857671 () Bool)

(assert (=> d!1615778 (= c!857671 (is-Node!15369 (c!857627 totalInput!1125)))))

(declare-fun e!3135708 () Bool)

(assert (=> d!1615778 (= (inv!76326 (c!857627 totalInput!1125)) e!3135708)))

(declare-fun b!5019433 () Bool)

(declare-fun inv!76331 (Conc!15369) Bool)

(assert (=> b!5019433 (= e!3135708 (inv!76331 (c!857627 totalInput!1125)))))

(declare-fun b!5019434 () Bool)

(declare-fun e!3135709 () Bool)

(assert (=> b!5019434 (= e!3135708 e!3135709)))

(declare-fun res!2140428 () Bool)

(assert (=> b!5019434 (= res!2140428 (not (is-Leaf!25503 (c!857627 totalInput!1125))))))

(assert (=> b!5019434 (=> res!2140428 e!3135709)))

(declare-fun b!5019435 () Bool)

(declare-fun inv!76332 (Conc!15369) Bool)

(assert (=> b!5019435 (= e!3135709 (inv!76332 (c!857627 totalInput!1125)))))

(assert (= (and d!1615778 c!857671) b!5019433))

(assert (= (and d!1615778 (not c!857671)) b!5019434))

(assert (= (and b!5019434 (not res!2140428)) b!5019435))

(declare-fun m!6054566 () Bool)

(assert (=> b!5019433 m!6054566))

(declare-fun m!6054568 () Bool)

(assert (=> b!5019435 m!6054568))

(assert (=> b!5019314 d!1615778))

(declare-fun bs!1187125 () Bool)

(declare-fun b!5019440 () Bool)

(declare-fun d!1615780 () Bool)

(assert (= bs!1187125 (and b!5019440 d!1615780)))

(declare-fun lambda!248701 () Int)

(declare-fun lambda!248700 () Int)

(assert (=> bs!1187125 (not (= lambda!248701 lambda!248700))))

(declare-fun bs!1187126 () Bool)

(declare-fun b!5019441 () Bool)

(assert (= bs!1187126 (and b!5019441 d!1615780)))

(declare-fun lambda!248702 () Int)

(assert (=> bs!1187126 (not (= lambda!248702 lambda!248700))))

(declare-fun bs!1187127 () Bool)

(assert (= bs!1187127 (and b!5019441 b!5019440)))

(assert (=> bs!1187127 (= lambda!248702 lambda!248701)))

(declare-datatypes ((Unit!149197 0))(
  ( (Unit!149198) )
))
(declare-fun e!3135716 () Unit!149197)

(declare-fun Unit!149199 () Unit!149197)

(assert (=> b!5019440 (= e!3135716 Unit!149199)))

(declare-datatypes ((List!58128 0))(
  ( (Nil!58004) (Cons!58004 (h!64452 Context!6550) (t!370504 List!58128)) )
))
(declare-fun lt!2077375 () List!58128)

(declare-fun call!350528 () List!58128)

(assert (=> b!5019440 (= lt!2077375 call!350528)))

(declare-fun lt!2077373 () Unit!149197)

(declare-fun lemmaNotForallThenExists!254 (List!58128 Int) Unit!149197)

(assert (=> b!5019440 (= lt!2077373 (lemmaNotForallThenExists!254 lt!2077375 lambda!248700))))

(declare-fun call!350527 () Bool)

(assert (=> b!5019440 call!350527))

(declare-fun lt!2077372 () Unit!149197)

(assert (=> b!5019440 (= lt!2077372 lt!2077373)))

(declare-fun bm!350522 () Bool)

(declare-fun toList!8105 ((Set Context!6550)) List!58128)

(assert (=> bm!350522 (= call!350528 (toList!8105 z!4710))))

(declare-fun Unit!149200 () Unit!149197)

(assert (=> b!5019441 (= e!3135716 Unit!149200)))

(declare-fun lt!2077377 () List!58128)

(assert (=> b!5019441 (= lt!2077377 call!350528)))

(declare-fun lt!2077376 () Unit!149197)

(declare-fun lemmaForallThenNotExists!237 (List!58128 Int) Unit!149197)

(assert (=> b!5019441 (= lt!2077376 (lemmaForallThenNotExists!237 lt!2077377 lambda!248700))))

(assert (=> b!5019441 (not call!350527)))

(declare-fun lt!2077371 () Unit!149197)

(assert (=> b!5019441 (= lt!2077371 lt!2077376)))

(declare-fun lt!2077374 () Bool)

(declare-datatypes ((Option!14584 0))(
  ( (None!14583) (Some!14583 (v!50584 List!58124)) )
))
(declare-fun isEmpty!31410 (Option!14584) Bool)

(declare-fun getLanguageWitness!717 ((Set Context!6550)) Option!14584)

(assert (=> d!1615780 (= lt!2077374 (isEmpty!31410 (getLanguageWitness!717 z!4710)))))

(declare-fun forall!13388 ((Set Context!6550) Int) Bool)

(assert (=> d!1615780 (= lt!2077374 (forall!13388 z!4710 lambda!248700))))

(declare-fun lt!2077370 () Unit!149197)

(assert (=> d!1615780 (= lt!2077370 e!3135716)))

(declare-fun c!857682 () Bool)

(assert (=> d!1615780 (= c!857682 (not (forall!13388 z!4710 lambda!248700)))))

(assert (=> d!1615780 (= (lostCauseZipper!864 z!4710) lt!2077374)))

(declare-fun bm!350523 () Bool)

(declare-fun exists!1370 (List!58128 Int) Bool)

(assert (=> bm!350523 (= call!350527 (exists!1370 (ite c!857682 lt!2077375 lt!2077377) (ite c!857682 lambda!248701 lambda!248702)))))

(assert (= (and d!1615780 c!857682) b!5019440))

(assert (= (and d!1615780 (not c!857682)) b!5019441))

(assert (= (or b!5019440 b!5019441) bm!350522))

(assert (= (or b!5019440 b!5019441) bm!350523))

(declare-fun m!6054570 () Bool)

(assert (=> d!1615780 m!6054570))

(assert (=> d!1615780 m!6054570))

(declare-fun m!6054572 () Bool)

(assert (=> d!1615780 m!6054572))

(declare-fun m!6054574 () Bool)

(assert (=> d!1615780 m!6054574))

(assert (=> d!1615780 m!6054574))

(declare-fun m!6054576 () Bool)

(assert (=> bm!350522 m!6054576))

(declare-fun m!6054578 () Bool)

(assert (=> b!5019441 m!6054578))

(declare-fun m!6054580 () Bool)

(assert (=> b!5019440 m!6054580))

(declare-fun m!6054582 () Bool)

(assert (=> bm!350523 m!6054582))

(assert (=> b!5019308 d!1615780))

(declare-fun d!1615782 () Bool)

(declare-fun lt!2077380 () Int)

(assert (=> d!1615782 (>= lt!2077380 0)))

(declare-fun e!3135719 () Int)

(assert (=> d!1615782 (= lt!2077380 e!3135719)))

(declare-fun c!857685 () Bool)

(assert (=> d!1615782 (= c!857685 (is-Nil!58000 lt!2077318))))

(assert (=> d!1615782 (= (size!38587 lt!2077318) lt!2077380)))

(declare-fun b!5019446 () Bool)

(assert (=> b!5019446 (= e!3135719 0)))

(declare-fun b!5019447 () Bool)

(assert (=> b!5019447 (= e!3135719 (+ 1 (size!38587 (t!370500 lt!2077318))))))

(assert (= (and d!1615782 c!857685) b!5019446))

(assert (= (and d!1615782 (not c!857685)) b!5019447))

(declare-fun m!6054584 () Bool)

(assert (=> b!5019447 m!6054584))

(assert (=> b!5019312 d!1615782))

(declare-fun d!1615784 () Bool)

(declare-fun lt!2077381 () Int)

(assert (=> d!1615784 (>= lt!2077381 0)))

(declare-fun e!3135720 () Int)

(assert (=> d!1615784 (= lt!2077381 e!3135720)))

(declare-fun c!857686 () Bool)

(assert (=> d!1615784 (= c!857686 (is-Nil!58000 lt!2077320))))

(assert (=> d!1615784 (= (size!38587 lt!2077320) lt!2077381)))

(declare-fun b!5019448 () Bool)

(assert (=> b!5019448 (= e!3135720 0)))

(declare-fun b!5019449 () Bool)

(assert (=> b!5019449 (= e!3135720 (+ 1 (size!38587 (t!370500 lt!2077320))))))

(assert (= (and d!1615784 c!857686) b!5019448))

(assert (= (and d!1615784 (not c!857686)) b!5019449))

(declare-fun m!6054586 () Bool)

(assert (=> b!5019449 m!6054586))

(assert (=> b!5019313 d!1615784))

(declare-fun b!5019467 () Bool)

(declare-fun e!3135731 () Int)

(assert (=> b!5019467 (= e!3135731 0)))

(declare-fun b!5019468 () Bool)

(declare-fun e!3135734 () Int)

(declare-fun lt!2077389 () Int)

(assert (=> b!5019468 (= e!3135734 (+ 1 lt!2077389))))

(declare-fun b!5019469 () Bool)

(declare-fun e!3135733 () Bool)

(assert (=> b!5019469 (= e!3135733 (<= (+ 1 from!1212) (size!38586 totalInput!1125)))))

(declare-fun b!5019470 () Bool)

(assert (=> b!5019470 (= e!3135731 1)))

(declare-fun b!5019471 () Bool)

(declare-fun e!3135735 () Bool)

(assert (=> b!5019471 (= e!3135735 (lostCauseZipper!864 (derivationStepZipper!656 z!4710 (apply!14034 totalInput!1125 from!1212))))))

(declare-fun b!5019466 () Bool)

(declare-fun e!3135732 () Int)

(assert (=> b!5019466 (= e!3135732 e!3135734)))

(declare-fun lt!2077388 () (Set Context!6550))

(assert (=> b!5019466 (= lt!2077388 (derivationStepZipper!656 (derivationStepZipper!656 z!4710 (apply!14034 totalInput!1125 from!1212)) (apply!14034 totalInput!1125 (+ 1 from!1212))))))

(assert (=> b!5019466 (= lt!2077389 (findLongestMatchInnerZipperFastV2!172 lt!2077388 (+ 1 from!1212 1) totalInput!1125 lt!2077317))))

(declare-fun c!857695 () Bool)

(assert (=> b!5019466 (= c!857695 (> lt!2077389 0))))

(declare-fun d!1615786 () Bool)

(declare-fun lt!2077390 () Int)

(assert (=> d!1615786 (and (>= lt!2077390 0) (<= lt!2077390 (- lt!2077317 (+ 1 from!1212))))))

(assert (=> d!1615786 (= lt!2077390 e!3135732)))

(declare-fun c!857693 () Bool)

(assert (=> d!1615786 (= c!857693 e!3135735)))

(declare-fun res!2140434 () Bool)

(assert (=> d!1615786 (=> res!2140434 e!3135735)))

(assert (=> d!1615786 (= res!2140434 (= (+ 1 from!1212) lt!2077317))))

(assert (=> d!1615786 e!3135733))

(declare-fun res!2140433 () Bool)

(assert (=> d!1615786 (=> (not res!2140433) (not e!3135733))))

(assert (=> d!1615786 (= res!2140433 (>= (+ 1 from!1212) 0))))

(assert (=> d!1615786 (= (findLongestMatchInnerZipperFastV2!172 (derivationStepZipper!656 z!4710 (apply!14034 totalInput!1125 from!1212)) (+ 1 from!1212) totalInput!1125 lt!2077317) lt!2077390)))

(declare-fun b!5019472 () Bool)

(assert (=> b!5019472 (= e!3135732 0)))

(declare-fun b!5019473 () Bool)

(declare-fun c!857694 () Bool)

(assert (=> b!5019473 (= c!857694 (nullableZipper!899 lt!2077388))))

(assert (=> b!5019473 (= e!3135734 e!3135731)))

(assert (= (and d!1615786 res!2140433) b!5019469))

(assert (= (and d!1615786 (not res!2140434)) b!5019471))

(assert (= (and d!1615786 c!857693) b!5019472))

(assert (= (and d!1615786 (not c!857693)) b!5019466))

(assert (= (and b!5019466 c!857695) b!5019468))

(assert (= (and b!5019466 (not c!857695)) b!5019473))

(assert (= (and b!5019473 c!857694) b!5019470))

(assert (= (and b!5019473 (not c!857694)) b!5019467))

(assert (=> b!5019469 m!6054470))

(assert (=> b!5019471 m!6054482))

(declare-fun m!6054588 () Bool)

(assert (=> b!5019471 m!6054588))

(declare-fun m!6054590 () Bool)

(assert (=> b!5019466 m!6054590))

(assert (=> b!5019466 m!6054482))

(assert (=> b!5019466 m!6054590))

(declare-fun m!6054592 () Bool)

(assert (=> b!5019466 m!6054592))

(declare-fun m!6054594 () Bool)

(assert (=> b!5019466 m!6054594))

(declare-fun m!6054596 () Bool)

(assert (=> b!5019473 m!6054596))

(assert (=> b!5019313 d!1615786))

(declare-fun d!1615788 () Bool)

(assert (=> d!1615788 true))

(declare-fun lambda!248705 () Int)

(declare-fun flatMap!286 ((Set Context!6550) Int) (Set Context!6550))

(assert (=> d!1615788 (= (derivationStepZipper!656 z!4710 (apply!14034 totalInput!1125 from!1212)) (flatMap!286 z!4710 lambda!248705))))

(declare-fun bs!1187128 () Bool)

(assert (= bs!1187128 d!1615788))

(declare-fun m!6054598 () Bool)

(assert (=> bs!1187128 m!6054598))

(assert (=> b!5019313 d!1615788))

(declare-fun d!1615790 () Bool)

(declare-fun lt!2077393 () C!27950)

(declare-fun apply!14036 (List!58124 Int) C!27950)

(assert (=> d!1615790 (= lt!2077393 (apply!14036 (list!18700 totalInput!1125) from!1212))))

(declare-fun apply!14037 (Conc!15369 Int) C!27950)

(assert (=> d!1615790 (= lt!2077393 (apply!14037 (c!857627 totalInput!1125) from!1212))))

(declare-fun e!3135738 () Bool)

(assert (=> d!1615790 e!3135738))

(declare-fun res!2140437 () Bool)

(assert (=> d!1615790 (=> (not res!2140437) (not e!3135738))))

(assert (=> d!1615790 (= res!2140437 (<= 0 from!1212))))

(assert (=> d!1615790 (= (apply!14034 totalInput!1125 from!1212) lt!2077393)))

(declare-fun b!5019478 () Bool)

(assert (=> b!5019478 (= e!3135738 (< from!1212 (size!38586 totalInput!1125)))))

(assert (= (and d!1615790 res!2140437) b!5019478))

(assert (=> d!1615790 m!6054466))

(assert (=> d!1615790 m!6054466))

(declare-fun m!6054600 () Bool)

(assert (=> d!1615790 m!6054600))

(declare-fun m!6054602 () Bool)

(assert (=> d!1615790 m!6054602))

(assert (=> b!5019478 m!6054470))

(assert (=> b!5019313 d!1615790))

(declare-fun condSetEmpty!28639 () Bool)

(assert (=> setNonEmpty!28633 (= condSetEmpty!28639 (= setRest!28633 (as set.empty (Set Context!6550))))))

(declare-fun setRes!28639 () Bool)

(assert (=> setNonEmpty!28633 (= tp!1407574 setRes!28639)))

(declare-fun setIsEmpty!28639 () Bool)

(assert (=> setIsEmpty!28639 setRes!28639))

(declare-fun setNonEmpty!28639 () Bool)

(declare-fun setElem!28639 () Context!6550)

(declare-fun e!3135741 () Bool)

(declare-fun tp!1407590 () Bool)

(assert (=> setNonEmpty!28639 (= setRes!28639 (and tp!1407590 (inv!76327 setElem!28639) e!3135741))))

(declare-fun setRest!28639 () (Set Context!6550))

(assert (=> setNonEmpty!28639 (= setRest!28633 (set.union (set.insert setElem!28639 (as set.empty (Set Context!6550))) setRest!28639))))

(declare-fun b!5019483 () Bool)

(declare-fun tp!1407589 () Bool)

(assert (=> b!5019483 (= e!3135741 tp!1407589)))

(assert (= (and setNonEmpty!28633 condSetEmpty!28639) setIsEmpty!28639))

(assert (= (and setNonEmpty!28633 (not condSetEmpty!28639)) setNonEmpty!28639))

(assert (= setNonEmpty!28639 b!5019483))

(declare-fun m!6054604 () Bool)

(assert (=> setNonEmpty!28639 m!6054604))

(declare-fun b!5019488 () Bool)

(declare-fun e!3135744 () Bool)

(declare-fun tp!1407595 () Bool)

(declare-fun tp!1407596 () Bool)

(assert (=> b!5019488 (= e!3135744 (and tp!1407595 tp!1407596))))

(assert (=> b!5019307 (= tp!1407573 e!3135744)))

(assert (= (and b!5019307 (is-Cons!58001 (exprs!3775 setElem!28633))) b!5019488))

(declare-fun e!3135750 () Bool)

(declare-fun tp!1407605 () Bool)

(declare-fun b!5019497 () Bool)

(declare-fun tp!1407604 () Bool)

(assert (=> b!5019497 (= e!3135750 (and (inv!76326 (left!42400 (c!857627 totalInput!1125))) tp!1407605 (inv!76326 (right!42730 (c!857627 totalInput!1125))) tp!1407604))))

(declare-fun b!5019499 () Bool)

(declare-fun e!3135749 () Bool)

(declare-fun tp!1407603 () Bool)

(assert (=> b!5019499 (= e!3135749 tp!1407603)))

(declare-fun b!5019498 () Bool)

(declare-fun inv!76333 (IArray!30799) Bool)

(assert (=> b!5019498 (= e!3135750 (and (inv!76333 (xs!18695 (c!857627 totalInput!1125))) e!3135749))))

(assert (=> b!5019314 (= tp!1407575 (and (inv!76326 (c!857627 totalInput!1125)) e!3135750))))

(assert (= (and b!5019314 (is-Node!15369 (c!857627 totalInput!1125))) b!5019497))

(assert (= b!5019498 b!5019499))

(assert (= (and b!5019314 (is-Leaf!25503 (c!857627 totalInput!1125))) b!5019498))

(declare-fun m!6054606 () Bool)

(assert (=> b!5019497 m!6054606))

(declare-fun m!6054608 () Bool)

(assert (=> b!5019497 m!6054608))

(declare-fun m!6054610 () Bool)

(assert (=> b!5019498 m!6054610))

(assert (=> b!5019314 m!6054472))

(push 1)

(assert (not d!1615768))

(assert (not d!1615772))

(assert (not b!5019469))

(assert (not b!5019440))

(assert (not b!5019418))

(assert (not b!5019435))

(assert (not bm!350522))

(assert (not b!5019433))

(assert (not d!1615774))

(assert (not d!1615790))

(assert (not b!5019378))

(assert (not b!5019395))

(assert (not d!1615788))

(assert (not b!5019441))

(assert (not b!5019498))

(assert (not d!1615770))

(assert (not d!1615766))

(assert (not d!1615776))

(assert (not b!5019396))

(assert (not b!5019499))

(assert (not bm!350517))

(assert (not setNonEmpty!28639))

(assert (not b!5019466))

(assert (not b!5019424))

(assert (not b!5019488))

(assert (not d!1615758))

(assert (not b!5019377))

(assert (not b!5019471))

(assert (not b!5019314))

(assert (not b!5019393))

(assert (not b!5019449))

(assert (not b!5019447))

(assert (not b!5019473))

(assert (not b!5019478))

(assert (not b!5019483))

(assert (not d!1615780))

(assert (not b!5019497))

(assert (not bm!350523))

(assert (not b!5019394))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


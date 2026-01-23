; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!213924 () Bool)

(assert start!213924)

(declare-fun setRes!19027 () Bool)

(declare-fun tp!685167 () Bool)

(declare-fun setNonEmpty!19027 () Bool)

(declare-fun e!1407056 () Bool)

(declare-datatypes ((C!12614 0))(
  ( (C!12615 (val!7293 Int)) )
))
(declare-datatypes ((Regex!6234 0))(
  ( (ElementMatch!6234 (c!351306 C!12614)) (Concat!10536 (regOne!12980 Regex!6234) (regTwo!12980 Regex!6234)) (EmptyExpr!6234) (Star!6234 (reg!6563 Regex!6234)) (EmptyLang!6234) (Union!6234 (regOne!12981 Regex!6234) (regTwo!12981 Regex!6234)) )
))
(declare-datatypes ((List!25766 0))(
  ( (Nil!25682) (Cons!25682 (h!31083 Regex!6234) (t!198400 List!25766)) )
))
(declare-datatypes ((Context!3608 0))(
  ( (Context!3609 (exprs!2304 List!25766)) )
))
(declare-fun setElem!19027 () Context!3608)

(declare-fun inv!34530 (Context!3608) Bool)

(assert (=> setNonEmpty!19027 (= setRes!19027 (and tp!685167 (inv!34530 setElem!19027) e!1407056))))

(declare-fun z!3888 () (Set Context!3608))

(declare-fun setRest!19027 () (Set Context!3608))

(assert (=> setNonEmpty!19027 (= z!3888 (set.union (set.insert setElem!19027 (as set.empty (Set Context!3608))) setRest!19027))))

(declare-fun b!2202176 () Bool)

(declare-fun res!946665 () Bool)

(declare-fun e!1407057 () Bool)

(assert (=> b!2202176 (=> (not res!946665) (not e!1407057))))

(declare-fun e!1407054 () Bool)

(assert (=> b!2202176 (= res!946665 e!1407054)))

(declare-fun res!946660 () Bool)

(assert (=> b!2202176 (=> res!946660 e!1407054)))

(declare-fun nullableZipper!514 ((Set Context!3608)) Bool)

(assert (=> b!2202176 (= res!946660 (not (nullableZipper!514 z!3888)))))

(declare-fun b!2202177 () Bool)

(declare-fun res!946659 () Bool)

(assert (=> b!2202177 (=> (not res!946659) (not e!1407057))))

(declare-datatypes ((List!25767 0))(
  ( (Nil!25683) (Cons!25683 (h!31084 C!12614) (t!198401 List!25767)) )
))
(declare-datatypes ((IArray!16745 0))(
  ( (IArray!16746 (innerList!8430 List!25767)) )
))
(declare-datatypes ((Conc!8370 0))(
  ( (Node!8370 (left!19730 Conc!8370) (right!20060 Conc!8370) (csize!16970 Int) (cheight!8581 Int)) (Leaf!12255 (xs!11312 IArray!16745) (csize!16971 Int)) (Empty!8370) )
))
(declare-datatypes ((BalanceConc!16502 0))(
  ( (BalanceConc!16503 (c!351307 Conc!8370)) )
))
(declare-fun totalInput!891 () BalanceConc!16502)

(declare-fun isEmpty!14658 (BalanceConc!16502) Bool)

(assert (=> b!2202177 (= res!946659 (isEmpty!14658 totalInput!891))))

(declare-fun b!2202178 () Bool)

(declare-fun e!1407060 () Bool)

(declare-fun e!1407058 () Bool)

(assert (=> b!2202178 (= e!1407060 e!1407058)))

(declare-fun res!946658 () Bool)

(assert (=> b!2202178 (=> (not res!946658) (not e!1407058))))

(declare-fun from!1082 () Int)

(declare-fun lt!823570 () Int)

(declare-fun knownSize!10 () Int)

(assert (=> b!2202178 (= res!946658 (and (<= from!1082 lt!823570) (>= knownSize!10 0) (<= knownSize!10 (- lt!823570 from!1082))))))

(declare-fun size!20011 (BalanceConc!16502) Int)

(assert (=> b!2202178 (= lt!823570 (size!20011 totalInput!891))))

(declare-fun res!946663 () Bool)

(assert (=> start!213924 (=> (not res!946663) (not e!1407060))))

(assert (=> start!213924 (= res!946663 (>= from!1082 0))))

(assert (=> start!213924 e!1407060))

(assert (=> start!213924 true))

(declare-fun e!1407055 () Bool)

(declare-fun inv!34531 (BalanceConc!16502) Bool)

(assert (=> start!213924 (and (inv!34531 totalInput!891) e!1407055)))

(declare-fun condSetEmpty!19027 () Bool)

(assert (=> start!213924 (= condSetEmpty!19027 (= z!3888 (as set.empty (Set Context!3608))))))

(assert (=> start!213924 setRes!19027))

(declare-fun b!2202179 () Bool)

(declare-fun res!946661 () Bool)

(assert (=> b!2202179 (=> (not res!946661) (not e!1407057))))

(assert (=> b!2202179 (= res!946661 (= from!1082 0))))

(declare-fun setIsEmpty!19027 () Bool)

(assert (=> setIsEmpty!19027 setRes!19027))

(declare-fun b!2202180 () Bool)

(declare-fun tp!685166 () Bool)

(assert (=> b!2202180 (= e!1407056 tp!685166)))

(declare-fun b!2202181 () Bool)

(declare-fun e!1407059 () Bool)

(assert (=> b!2202181 (= e!1407057 e!1407059)))

(declare-fun res!946662 () Bool)

(assert (=> b!2202181 (=> (not res!946662) (not e!1407059))))

(declare-fun lt!823572 () Int)

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2202181 (= res!946662 (and (= lt!823572 lastNullablePos!161) (= lt!823572 (- 1))))))

(declare-fun furthestNullablePosition!384 ((Set Context!3608) Int BalanceConc!16502 Int Int) Int)

(assert (=> b!2202181 (= lt!823572 (furthestNullablePosition!384 z!3888 from!1082 totalInput!891 lt!823570 lastNullablePos!161))))

(declare-fun b!2202182 () Bool)

(assert (=> b!2202182 (= e!1407054 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2202183 () Bool)

(declare-fun lt!823571 () List!25767)

(declare-fun isEmpty!14659 (List!25767) Bool)

(assert (=> b!2202183 (= e!1407059 (not (isEmpty!14659 lt!823571)))))

(declare-fun b!2202184 () Bool)

(declare-fun res!946667 () Bool)

(assert (=> b!2202184 (=> (not res!946667) (not e!1407059))))

(declare-fun lt!823569 () List!25767)

(assert (=> b!2202184 (= res!946667 (isEmpty!14659 lt!823569))))

(declare-fun b!2202185 () Bool)

(declare-fun res!946664 () Bool)

(assert (=> b!2202185 (=> (not res!946664) (not e!1407057))))

(assert (=> b!2202185 (= res!946664 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2202186 () Bool)

(declare-fun tp!685165 () Bool)

(declare-fun inv!34532 (Conc!8370) Bool)

(assert (=> b!2202186 (= e!1407055 (and (inv!34532 (c!351307 totalInput!891)) tp!685165))))

(declare-fun b!2202187 () Bool)

(assert (=> b!2202187 (= e!1407058 e!1407057)))

(declare-fun res!946666 () Bool)

(assert (=> b!2202187 (=> (not res!946666) (not e!1407057))))

(declare-fun matchZipper!320 ((Set Context!3608) List!25767) Bool)

(declare-fun take!412 (List!25767 Int) List!25767)

(assert (=> b!2202187 (= res!946666 (matchZipper!320 z!3888 (take!412 lt!823571 knownSize!10)))))

(declare-fun drop!1422 (List!25767 Int) List!25767)

(assert (=> b!2202187 (= lt!823571 (drop!1422 lt!823569 from!1082))))

(declare-fun list!9901 (BalanceConc!16502) List!25767)

(assert (=> b!2202187 (= lt!823569 (list!9901 totalInput!891))))

(assert (= (and start!213924 res!946663) b!2202178))

(assert (= (and b!2202178 res!946658) b!2202187))

(assert (= (and b!2202187 res!946666) b!2202185))

(assert (= (and b!2202185 res!946664) b!2202176))

(assert (= (and b!2202176 (not res!946660)) b!2202182))

(assert (= (and b!2202176 res!946665) b!2202177))

(assert (= (and b!2202177 res!946659) b!2202179))

(assert (= (and b!2202179 res!946661) b!2202181))

(assert (= (and b!2202181 res!946662) b!2202184))

(assert (= (and b!2202184 res!946667) b!2202183))

(assert (= start!213924 b!2202186))

(assert (= (and start!213924 condSetEmpty!19027) setIsEmpty!19027))

(assert (= (and start!213924 (not condSetEmpty!19027)) setNonEmpty!19027))

(assert (= setNonEmpty!19027 b!2202180))

(declare-fun m!2644575 () Bool)

(assert (=> setNonEmpty!19027 m!2644575))

(declare-fun m!2644577 () Bool)

(assert (=> b!2202187 m!2644577))

(assert (=> b!2202187 m!2644577))

(declare-fun m!2644579 () Bool)

(assert (=> b!2202187 m!2644579))

(declare-fun m!2644581 () Bool)

(assert (=> b!2202187 m!2644581))

(declare-fun m!2644583 () Bool)

(assert (=> b!2202187 m!2644583))

(declare-fun m!2644585 () Bool)

(assert (=> b!2202181 m!2644585))

(declare-fun m!2644587 () Bool)

(assert (=> b!2202183 m!2644587))

(declare-fun m!2644589 () Bool)

(assert (=> b!2202184 m!2644589))

(declare-fun m!2644591 () Bool)

(assert (=> b!2202178 m!2644591))

(declare-fun m!2644593 () Bool)

(assert (=> b!2202177 m!2644593))

(declare-fun m!2644595 () Bool)

(assert (=> b!2202186 m!2644595))

(declare-fun m!2644597 () Bool)

(assert (=> start!213924 m!2644597))

(declare-fun m!2644599 () Bool)

(assert (=> b!2202176 m!2644599))

(push 1)

(assert (not b!2202186))

(assert (not b!2202187))

(assert (not b!2202178))

(assert (not setNonEmpty!19027))

(assert (not b!2202176))

(assert (not start!213924))

(assert (not b!2202177))

(assert (not b!2202181))

(assert (not b!2202180))

(assert (not b!2202183))

(assert (not b!2202184))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!658741 () Bool)

(declare-fun isBalanced!2574 (Conc!8370) Bool)

(assert (=> d!658741 (= (inv!34531 totalInput!891) (isBalanced!2574 (c!351307 totalInput!891)))))

(declare-fun bs!450635 () Bool)

(assert (= bs!450635 d!658741))

(declare-fun m!2644641 () Bool)

(assert (=> bs!450635 m!2644641))

(assert (=> start!213924 d!658741))

(declare-fun d!658745 () Bool)

(assert (=> d!658745 (= (isEmpty!14659 lt!823569) (is-Nil!25683 lt!823569))))

(assert (=> b!2202184 d!658745))

(declare-fun d!658747 () Bool)

(declare-fun lambda!82988 () Int)

(declare-fun forall!5250 (List!25766 Int) Bool)

(assert (=> d!658747 (= (inv!34530 setElem!19027) (forall!5250 (exprs!2304 setElem!19027) lambda!82988))))

(declare-fun bs!450639 () Bool)

(assert (= bs!450639 d!658747))

(declare-fun m!2644681 () Bool)

(assert (=> bs!450639 m!2644681))

(assert (=> setNonEmpty!19027 d!658747))

(declare-fun d!658763 () Bool)

(declare-fun lambda!82991 () Int)

(declare-fun exists!838 ((Set Context!3608) Int) Bool)

(assert (=> d!658763 (= (nullableZipper!514 z!3888) (exists!838 z!3888 lambda!82991))))

(declare-fun bs!450640 () Bool)

(assert (= bs!450640 d!658763))

(declare-fun m!2644683 () Bool)

(assert (=> bs!450640 m!2644683))

(assert (=> b!2202176 d!658763))

(declare-fun b!2202312 () Bool)

(declare-fun e!1407134 () Int)

(assert (=> b!2202312 (= e!1407134 from!1082)))

(declare-fun b!2202313 () Bool)

(declare-fun e!1407135 () Int)

(assert (=> b!2202313 (= e!1407135 lastNullablePos!161)))

(declare-fun b!2202314 () Bool)

(assert (=> b!2202314 (= e!1407134 lastNullablePos!161)))

(declare-fun d!658765 () Bool)

(declare-fun lt!823604 () Int)

(assert (=> d!658765 (and (>= lt!823604 (- 1)) (< lt!823604 lt!823570) (>= lt!823604 lastNullablePos!161) (or (= lt!823604 lastNullablePos!161) (>= lt!823604 from!1082)))))

(assert (=> d!658765 (= lt!823604 e!1407135)))

(declare-fun c!351350 () Bool)

(declare-fun e!1407133 () Bool)

(assert (=> d!658765 (= c!351350 e!1407133)))

(declare-fun res!946712 () Bool)

(assert (=> d!658765 (=> res!946712 e!1407133)))

(assert (=> d!658765 (= res!946712 (= from!1082 lt!823570))))

(assert (=> d!658765 (and (>= from!1082 0) (<= from!1082 lt!823570))))

(assert (=> d!658765 (= (furthestNullablePosition!384 z!3888 from!1082 totalInput!891 lt!823570 lastNullablePos!161) lt!823604)))

(declare-fun b!2202315 () Bool)

(declare-fun lostCauseZipper!339 ((Set Context!3608)) Bool)

(assert (=> b!2202315 (= e!1407133 (lostCauseZipper!339 z!3888))))

(declare-fun lt!823605 () (Set Context!3608))

(declare-fun b!2202316 () Bool)

(assert (=> b!2202316 (= e!1407135 (furthestNullablePosition!384 lt!823605 (+ from!1082 1) totalInput!891 lt!823570 e!1407134))))

(declare-fun derivationStepZipper!290 ((Set Context!3608) C!12614) (Set Context!3608))

(declare-fun apply!6317 (BalanceConc!16502 Int) C!12614)

(assert (=> b!2202316 (= lt!823605 (derivationStepZipper!290 z!3888 (apply!6317 totalInput!891 from!1082)))))

(declare-fun c!351349 () Bool)

(assert (=> b!2202316 (= c!351349 (nullableZipper!514 lt!823605))))

(assert (= (and d!658765 (not res!946712)) b!2202315))

(assert (= (and d!658765 c!351350) b!2202313))

(assert (= (and d!658765 (not c!351350)) b!2202316))

(assert (= (and b!2202316 c!351349) b!2202312))

(assert (= (and b!2202316 (not c!351349)) b!2202314))

(declare-fun m!2644685 () Bool)

(assert (=> b!2202315 m!2644685))

(declare-fun m!2644687 () Bool)

(assert (=> b!2202316 m!2644687))

(declare-fun m!2644689 () Bool)

(assert (=> b!2202316 m!2644689))

(assert (=> b!2202316 m!2644689))

(declare-fun m!2644691 () Bool)

(assert (=> b!2202316 m!2644691))

(declare-fun m!2644693 () Bool)

(assert (=> b!2202316 m!2644693))

(assert (=> b!2202181 d!658765))

(declare-fun d!658767 () Bool)

(declare-fun c!351353 () Bool)

(assert (=> d!658767 (= c!351353 (is-Node!8370 (c!351307 totalInput!891)))))

(declare-fun e!1407140 () Bool)

(assert (=> d!658767 (= (inv!34532 (c!351307 totalInput!891)) e!1407140)))

(declare-fun b!2202323 () Bool)

(declare-fun inv!34536 (Conc!8370) Bool)

(assert (=> b!2202323 (= e!1407140 (inv!34536 (c!351307 totalInput!891)))))

(declare-fun b!2202324 () Bool)

(declare-fun e!1407141 () Bool)

(assert (=> b!2202324 (= e!1407140 e!1407141)))

(declare-fun res!946715 () Bool)

(assert (=> b!2202324 (= res!946715 (not (is-Leaf!12255 (c!351307 totalInput!891))))))

(assert (=> b!2202324 (=> res!946715 e!1407141)))

(declare-fun b!2202325 () Bool)

(declare-fun inv!34537 (Conc!8370) Bool)

(assert (=> b!2202325 (= e!1407141 (inv!34537 (c!351307 totalInput!891)))))

(assert (= (and d!658767 c!351353) b!2202323))

(assert (= (and d!658767 (not c!351353)) b!2202324))

(assert (= (and b!2202324 (not res!946715)) b!2202325))

(declare-fun m!2644695 () Bool)

(assert (=> b!2202323 m!2644695))

(declare-fun m!2644697 () Bool)

(assert (=> b!2202325 m!2644697))

(assert (=> b!2202186 d!658767))

(declare-fun d!658769 () Bool)

(declare-fun c!351356 () Bool)

(assert (=> d!658769 (= c!351356 (isEmpty!14659 (take!412 lt!823571 knownSize!10)))))

(declare-fun e!1407144 () Bool)

(assert (=> d!658769 (= (matchZipper!320 z!3888 (take!412 lt!823571 knownSize!10)) e!1407144)))

(declare-fun b!2202330 () Bool)

(assert (=> b!2202330 (= e!1407144 (nullableZipper!514 z!3888))))

(declare-fun b!2202331 () Bool)

(declare-fun head!4699 (List!25767) C!12614)

(declare-fun tail!3177 (List!25767) List!25767)

(assert (=> b!2202331 (= e!1407144 (matchZipper!320 (derivationStepZipper!290 z!3888 (head!4699 (take!412 lt!823571 knownSize!10))) (tail!3177 (take!412 lt!823571 knownSize!10))))))

(assert (= (and d!658769 c!351356) b!2202330))

(assert (= (and d!658769 (not c!351356)) b!2202331))

(assert (=> d!658769 m!2644577))

(declare-fun m!2644699 () Bool)

(assert (=> d!658769 m!2644699))

(assert (=> b!2202330 m!2644599))

(assert (=> b!2202331 m!2644577))

(declare-fun m!2644701 () Bool)

(assert (=> b!2202331 m!2644701))

(assert (=> b!2202331 m!2644701))

(declare-fun m!2644703 () Bool)

(assert (=> b!2202331 m!2644703))

(assert (=> b!2202331 m!2644577))

(declare-fun m!2644705 () Bool)

(assert (=> b!2202331 m!2644705))

(assert (=> b!2202331 m!2644703))

(assert (=> b!2202331 m!2644705))

(declare-fun m!2644707 () Bool)

(assert (=> b!2202331 m!2644707))

(assert (=> b!2202187 d!658769))

(declare-fun d!658771 () Bool)

(declare-fun e!1407154 () Bool)

(assert (=> d!658771 e!1407154))

(declare-fun res!946718 () Bool)

(assert (=> d!658771 (=> (not res!946718) (not e!1407154))))

(declare-fun lt!823608 () List!25767)

(declare-fun content!3485 (List!25767) (Set C!12614))

(assert (=> d!658771 (= res!946718 (set.subset (content!3485 lt!823608) (content!3485 lt!823571)))))

(declare-fun e!1407155 () List!25767)

(assert (=> d!658771 (= lt!823608 e!1407155)))

(declare-fun c!351364 () Bool)

(assert (=> d!658771 (= c!351364 (or (is-Nil!25683 lt!823571) (<= knownSize!10 0)))))

(assert (=> d!658771 (= (take!412 lt!823571 knownSize!10) lt!823608)))

(declare-fun b!2202346 () Bool)

(declare-fun e!1407153 () Int)

(assert (=> b!2202346 (= e!1407153 0)))

(declare-fun b!2202347 () Bool)

(assert (=> b!2202347 (= e!1407155 (Cons!25683 (h!31084 lt!823571) (take!412 (t!198401 lt!823571) (- knownSize!10 1))))))

(declare-fun b!2202348 () Bool)

(declare-fun e!1407156 () Int)

(assert (=> b!2202348 (= e!1407156 knownSize!10)))

(declare-fun b!2202349 () Bool)

(declare-fun size!20013 (List!25767) Int)

(assert (=> b!2202349 (= e!1407156 (size!20013 lt!823571))))

(declare-fun b!2202350 () Bool)

(assert (=> b!2202350 (= e!1407153 e!1407156)))

(declare-fun c!351365 () Bool)

(assert (=> b!2202350 (= c!351365 (>= knownSize!10 (size!20013 lt!823571)))))

(declare-fun b!2202351 () Bool)

(assert (=> b!2202351 (= e!1407155 Nil!25683)))

(declare-fun b!2202352 () Bool)

(assert (=> b!2202352 (= e!1407154 (= (size!20013 lt!823608) e!1407153))))

(declare-fun c!351363 () Bool)

(assert (=> b!2202352 (= c!351363 (<= knownSize!10 0))))

(assert (= (and d!658771 c!351364) b!2202351))

(assert (= (and d!658771 (not c!351364)) b!2202347))

(assert (= (and d!658771 res!946718) b!2202352))

(assert (= (and b!2202352 c!351363) b!2202346))

(assert (= (and b!2202352 (not c!351363)) b!2202350))

(assert (= (and b!2202350 c!351365) b!2202349))

(assert (= (and b!2202350 (not c!351365)) b!2202348))

(declare-fun m!2644709 () Bool)

(assert (=> b!2202347 m!2644709))

(declare-fun m!2644711 () Bool)

(assert (=> b!2202352 m!2644711))

(declare-fun m!2644713 () Bool)

(assert (=> b!2202350 m!2644713))

(declare-fun m!2644715 () Bool)

(assert (=> d!658771 m!2644715))

(declare-fun m!2644717 () Bool)

(assert (=> d!658771 m!2644717))

(assert (=> b!2202349 m!2644713))

(assert (=> b!2202187 d!658771))

(declare-fun b!2202371 () Bool)

(declare-fun e!1407167 () Int)

(assert (=> b!2202371 (= e!1407167 0)))

(declare-fun b!2202372 () Bool)

(declare-fun e!1407168 () Int)

(declare-fun call!132150 () Int)

(assert (=> b!2202372 (= e!1407168 call!132150)))

(declare-fun b!2202373 () Bool)

(assert (=> b!2202373 (= e!1407168 e!1407167)))

(declare-fun c!351375 () Bool)

(assert (=> b!2202373 (= c!351375 (>= from!1082 call!132150))))

(declare-fun bm!132145 () Bool)

(assert (=> bm!132145 (= call!132150 (size!20013 lt!823569))))

(declare-fun b!2202374 () Bool)

(declare-fun e!1407169 () List!25767)

(assert (=> b!2202374 (= e!1407169 lt!823569)))

(declare-fun b!2202375 () Bool)

(declare-fun e!1407170 () List!25767)

(assert (=> b!2202375 (= e!1407170 e!1407169)))

(declare-fun c!351374 () Bool)

(assert (=> b!2202375 (= c!351374 (<= from!1082 0))))

(declare-fun b!2202376 () Bool)

(assert (=> b!2202376 (= e!1407170 Nil!25683)))

(declare-fun d!658773 () Bool)

(declare-fun e!1407171 () Bool)

(assert (=> d!658773 e!1407171))

(declare-fun res!946721 () Bool)

(assert (=> d!658773 (=> (not res!946721) (not e!1407171))))

(declare-fun lt!823611 () List!25767)

(assert (=> d!658773 (= res!946721 (set.subset (content!3485 lt!823611) (content!3485 lt!823569)))))

(assert (=> d!658773 (= lt!823611 e!1407170)))

(declare-fun c!351377 () Bool)

(assert (=> d!658773 (= c!351377 (is-Nil!25683 lt!823569))))

(assert (=> d!658773 (= (drop!1422 lt!823569 from!1082) lt!823611)))

(declare-fun b!2202377 () Bool)

(assert (=> b!2202377 (= e!1407169 (drop!1422 (t!198401 lt!823569) (- from!1082 1)))))

(declare-fun b!2202378 () Bool)

(assert (=> b!2202378 (= e!1407171 (= (size!20013 lt!823611) e!1407168))))

(declare-fun c!351376 () Bool)

(assert (=> b!2202378 (= c!351376 (<= from!1082 0))))

(declare-fun b!2202379 () Bool)

(assert (=> b!2202379 (= e!1407167 (- call!132150 from!1082))))

(assert (= (and d!658773 c!351377) b!2202376))

(assert (= (and d!658773 (not c!351377)) b!2202375))

(assert (= (and b!2202375 c!351374) b!2202374))

(assert (= (and b!2202375 (not c!351374)) b!2202377))

(assert (= (and d!658773 res!946721) b!2202378))

(assert (= (and b!2202378 c!351376) b!2202372))

(assert (= (and b!2202378 (not c!351376)) b!2202373))

(assert (= (and b!2202373 c!351375) b!2202371))

(assert (= (and b!2202373 (not c!351375)) b!2202379))

(assert (= (or b!2202372 b!2202373 b!2202379) bm!132145))

(declare-fun m!2644719 () Bool)

(assert (=> bm!132145 m!2644719))

(declare-fun m!2644721 () Bool)

(assert (=> d!658773 m!2644721))

(declare-fun m!2644723 () Bool)

(assert (=> d!658773 m!2644723))

(declare-fun m!2644725 () Bool)

(assert (=> b!2202377 m!2644725))

(declare-fun m!2644727 () Bool)

(assert (=> b!2202378 m!2644727))

(assert (=> b!2202187 d!658773))

(declare-fun d!658775 () Bool)

(declare-fun list!9903 (Conc!8370) List!25767)

(assert (=> d!658775 (= (list!9901 totalInput!891) (list!9903 (c!351307 totalInput!891)))))

(declare-fun bs!450641 () Bool)

(assert (= bs!450641 d!658775))

(declare-fun m!2644729 () Bool)

(assert (=> bs!450641 m!2644729))

(assert (=> b!2202187 d!658775))

(declare-fun d!658777 () Bool)

(declare-fun lt!823614 () Bool)

(assert (=> d!658777 (= lt!823614 (isEmpty!14659 (list!9901 totalInput!891)))))

(declare-fun isEmpty!14662 (Conc!8370) Bool)

(assert (=> d!658777 (= lt!823614 (isEmpty!14662 (c!351307 totalInput!891)))))

(assert (=> d!658777 (= (isEmpty!14658 totalInput!891) lt!823614)))

(declare-fun bs!450642 () Bool)

(assert (= bs!450642 d!658777))

(assert (=> bs!450642 m!2644583))

(assert (=> bs!450642 m!2644583))

(declare-fun m!2644731 () Bool)

(assert (=> bs!450642 m!2644731))

(declare-fun m!2644733 () Bool)

(assert (=> bs!450642 m!2644733))

(assert (=> b!2202177 d!658777))

(declare-fun d!658779 () Bool)

(declare-fun lt!823617 () Int)

(assert (=> d!658779 (= lt!823617 (size!20013 (list!9901 totalInput!891)))))

(declare-fun size!20014 (Conc!8370) Int)

(assert (=> d!658779 (= lt!823617 (size!20014 (c!351307 totalInput!891)))))

(assert (=> d!658779 (= (size!20011 totalInput!891) lt!823617)))

(declare-fun bs!450643 () Bool)

(assert (= bs!450643 d!658779))

(assert (=> bs!450643 m!2644583))

(assert (=> bs!450643 m!2644583))

(declare-fun m!2644735 () Bool)

(assert (=> bs!450643 m!2644735))

(declare-fun m!2644737 () Bool)

(assert (=> bs!450643 m!2644737))

(assert (=> b!2202178 d!658779))

(declare-fun d!658781 () Bool)

(assert (=> d!658781 (= (isEmpty!14659 lt!823571) (is-Nil!25683 lt!823571))))

(assert (=> b!2202183 d!658781))

(declare-fun condSetEmpty!19033 () Bool)

(assert (=> setNonEmpty!19027 (= condSetEmpty!19033 (= setRest!19027 (as set.empty (Set Context!3608))))))

(declare-fun setRes!19033 () Bool)

(assert (=> setNonEmpty!19027 (= tp!685167 setRes!19033)))

(declare-fun setIsEmpty!19033 () Bool)

(assert (=> setIsEmpty!19033 setRes!19033))

(declare-fun tp!685182 () Bool)

(declare-fun e!1407174 () Bool)

(declare-fun setNonEmpty!19033 () Bool)

(declare-fun setElem!19033 () Context!3608)

(assert (=> setNonEmpty!19033 (= setRes!19033 (and tp!685182 (inv!34530 setElem!19033) e!1407174))))

(declare-fun setRest!19033 () (Set Context!3608))

(assert (=> setNonEmpty!19033 (= setRest!19027 (set.union (set.insert setElem!19033 (as set.empty (Set Context!3608))) setRest!19033))))

(declare-fun b!2202384 () Bool)

(declare-fun tp!685181 () Bool)

(assert (=> b!2202384 (= e!1407174 tp!685181)))

(assert (= (and setNonEmpty!19027 condSetEmpty!19033) setIsEmpty!19033))

(assert (= (and setNonEmpty!19027 (not condSetEmpty!19033)) setNonEmpty!19033))

(assert (= setNonEmpty!19033 b!2202384))

(declare-fun m!2644739 () Bool)

(assert (=> setNonEmpty!19033 m!2644739))

(declare-fun b!2202389 () Bool)

(declare-fun e!1407177 () Bool)

(declare-fun tp!685187 () Bool)

(declare-fun tp!685188 () Bool)

(assert (=> b!2202389 (= e!1407177 (and tp!685187 tp!685188))))

(assert (=> b!2202180 (= tp!685166 e!1407177)))

(assert (= (and b!2202180 (is-Cons!25682 (exprs!2304 setElem!19027))) b!2202389))

(declare-fun e!1407183 () Bool)

(declare-fun tp!685196 () Bool)

(declare-fun tp!685195 () Bool)

(declare-fun b!2202398 () Bool)

(assert (=> b!2202398 (= e!1407183 (and (inv!34532 (left!19730 (c!351307 totalInput!891))) tp!685196 (inv!34532 (right!20060 (c!351307 totalInput!891))) tp!685195))))

(declare-fun b!2202400 () Bool)

(declare-fun e!1407182 () Bool)

(declare-fun tp!685197 () Bool)

(assert (=> b!2202400 (= e!1407182 tp!685197)))

(declare-fun b!2202399 () Bool)

(declare-fun inv!34538 (IArray!16745) Bool)

(assert (=> b!2202399 (= e!1407183 (and (inv!34538 (xs!11312 (c!351307 totalInput!891))) e!1407182))))

(assert (=> b!2202186 (= tp!685165 (and (inv!34532 (c!351307 totalInput!891)) e!1407183))))

(assert (= (and b!2202186 (is-Node!8370 (c!351307 totalInput!891))) b!2202398))

(assert (= b!2202399 b!2202400))

(assert (= (and b!2202186 (is-Leaf!12255 (c!351307 totalInput!891))) b!2202399))

(declare-fun m!2644741 () Bool)

(assert (=> b!2202398 m!2644741))

(declare-fun m!2644743 () Bool)

(assert (=> b!2202398 m!2644743))

(declare-fun m!2644745 () Bool)

(assert (=> b!2202399 m!2644745))

(assert (=> b!2202186 m!2644595))

(push 1)

(assert (not d!658769))

(assert (not setNonEmpty!19033))

(assert (not b!2202186))

(assert (not b!2202398))

(assert (not b!2202316))

(assert (not b!2202325))

(assert (not d!658775))

(assert (not d!658777))

(assert (not b!2202400))

(assert (not d!658773))

(assert (not d!658779))

(assert (not b!2202349))

(assert (not d!658763))

(assert (not b!2202389))

(assert (not b!2202384))

(assert (not b!2202352))

(assert (not d!658741))

(assert (not b!2202378))

(assert (not b!2202331))

(assert (not b!2202323))

(assert (not b!2202315))

(assert (not bm!132145))

(assert (not d!658771))

(assert (not b!2202350))

(assert (not b!2202377))

(assert (not b!2202330))

(assert (not d!658747))

(assert (not b!2202399))

(assert (not b!2202347))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


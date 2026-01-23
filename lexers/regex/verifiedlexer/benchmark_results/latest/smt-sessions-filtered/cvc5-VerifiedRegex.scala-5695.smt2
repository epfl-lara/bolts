; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!283560 () Bool)

(assert start!283560)

(declare-fun b!2910623 () Bool)

(declare-fun e!1837198 () Bool)

(declare-fun e!1837199 () Bool)

(assert (=> b!2910623 (= e!1837198 e!1837199)))

(declare-fun res!1201546 () Bool)

(assert (=> b!2910623 (=> (not res!1201546) (not e!1837199))))

(declare-fun i!1878 () Int)

(declare-fun lt!1023726 () Int)

(assert (=> b!2910623 (= res!1201546 (and (<= i!1878 lt!1023726) (not (= i!1878 lt!1023726))))))

(declare-datatypes ((C!18070 0))(
  ( (C!18071 (val!11069 Int)) )
))
(declare-datatypes ((List!34801 0))(
  ( (Nil!34677) (Cons!34677 (h!40097 C!18070) (t!233864 List!34801)) )
))
(declare-datatypes ((IArray!21043 0))(
  ( (IArray!21044 (innerList!10579 List!34801)) )
))
(declare-datatypes ((Conc!10519 0))(
  ( (Node!10519 (left!26050 Conc!10519) (right!26380 Conc!10519) (csize!21268 Int) (cheight!10730 Int)) (Leaf!16215 (xs!13637 IArray!21043) (csize!21269 Int)) (Empty!10519) )
))
(declare-datatypes ((BalanceConc!20676 0))(
  ( (BalanceConc!20677 (c!474585 Conc!10519)) )
))
(declare-fun input!3770 () BalanceConc!20676)

(declare-fun size!26423 (BalanceConc!20676) Int)

(assert (=> b!2910623 (= lt!1023726 (size!26423 input!3770))))

(declare-fun setIsEmpty!25922 () Bool)

(declare-fun setRes!25922 () Bool)

(assert (=> setIsEmpty!25922 setRes!25922))

(declare-fun res!1201547 () Bool)

(assert (=> start!283560 (=> (not res!1201547) (not e!1837198))))

(assert (=> start!283560 (= res!1201547 (>= i!1878 0))))

(assert (=> start!283560 e!1837198))

(assert (=> start!283560 true))

(declare-fun e!1837197 () Bool)

(declare-fun inv!46858 (BalanceConc!20676) Bool)

(assert (=> start!283560 (and (inv!46858 input!3770) e!1837197)))

(declare-fun condSetEmpty!25922 () Bool)

(declare-datatypes ((Regex!8944 0))(
  ( (ElementMatch!8944 (c!474586 C!18070)) (Concat!14265 (regOne!18400 Regex!8944) (regTwo!18400 Regex!8944)) (EmptyExpr!8944) (Star!8944 (reg!9273 Regex!8944)) (EmptyLang!8944) (Union!8944 (regOne!18401 Regex!8944) (regTwo!18401 Regex!8944)) )
))
(declare-datatypes ((List!34802 0))(
  ( (Nil!34678) (Cons!34678 (h!40098 Regex!8944) (t!233865 List!34802)) )
))
(declare-datatypes ((Context!5528 0))(
  ( (Context!5529 (exprs!3264 List!34802)) )
))
(declare-fun z!644 () (Set Context!5528))

(assert (=> start!283560 (= condSetEmpty!25922 (= z!644 (as set.empty (Set Context!5528))))))

(assert (=> start!283560 setRes!25922))

(declare-fun b!2910624 () Bool)

(declare-fun e!1837196 () Bool)

(declare-fun tp!935158 () Bool)

(assert (=> b!2910624 (= e!1837196 tp!935158)))

(declare-fun b!2910625 () Bool)

(declare-fun size!26424 (List!34801) Int)

(declare-fun list!12621 (BalanceConc!20676) List!34801)

(assert (=> b!2910625 (= e!1837199 (not (< i!1878 (size!26424 (list!12621 input!3770)))))))

(declare-fun lt!1023725 () (Set Context!5528))

(declare-fun prefixMatchZipper!380 ((Set Context!5528) List!34801) Bool)

(declare-fun dropList!1045 (BalanceConc!20676 Int) List!34801)

(declare-fun prefixMatchZipperSequence!784 ((Set Context!5528) BalanceConc!20676 Int) Bool)

(assert (=> b!2910625 (= (prefixMatchZipper!380 lt!1023725 (dropList!1045 input!3770 (+ 1 i!1878))) (prefixMatchZipperSequence!784 lt!1023725 input!3770 (+ 1 i!1878)))))

(declare-datatypes ((Unit!48227 0))(
  ( (Unit!48228) )
))
(declare-fun lt!1023724 () Unit!48227)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!258 ((Set Context!5528) BalanceConc!20676 Int) Unit!48227)

(assert (=> b!2910625 (= lt!1023724 (lemmaprefixMatchZipperSequenceEquivalent!258 lt!1023725 input!3770 (+ 1 i!1878)))))

(declare-fun derivationStepZipper!524 ((Set Context!5528) C!18070) (Set Context!5528))

(declare-fun apply!7916 (BalanceConc!20676 Int) C!18070)

(assert (=> b!2910625 (= lt!1023725 (derivationStepZipper!524 z!644 (apply!7916 input!3770 i!1878)))))

(declare-fun setNonEmpty!25922 () Bool)

(declare-fun setElem!25922 () Context!5528)

(declare-fun tp!935156 () Bool)

(declare-fun inv!46859 (Context!5528) Bool)

(assert (=> setNonEmpty!25922 (= setRes!25922 (and tp!935156 (inv!46859 setElem!25922) e!1837196))))

(declare-fun setRest!25922 () (Set Context!5528))

(assert (=> setNonEmpty!25922 (= z!644 (set.union (set.insert setElem!25922 (as set.empty (Set Context!5528))) setRest!25922))))

(declare-fun b!2910626 () Bool)

(declare-fun tp!935157 () Bool)

(declare-fun inv!46860 (Conc!10519) Bool)

(assert (=> b!2910626 (= e!1837197 (and (inv!46860 (c!474585 input!3770)) tp!935157))))

(assert (= (and start!283560 res!1201547) b!2910623))

(assert (= (and b!2910623 res!1201546) b!2910625))

(assert (= start!283560 b!2910626))

(assert (= (and start!283560 condSetEmpty!25922) setIsEmpty!25922))

(assert (= (and start!283560 (not condSetEmpty!25922)) setNonEmpty!25922))

(assert (= setNonEmpty!25922 b!2910624))

(declare-fun m!3312179 () Bool)

(assert (=> start!283560 m!3312179))

(declare-fun m!3312181 () Bool)

(assert (=> setNonEmpty!25922 m!3312181))

(declare-fun m!3312183 () Bool)

(assert (=> b!2910625 m!3312183))

(declare-fun m!3312185 () Bool)

(assert (=> b!2910625 m!3312185))

(declare-fun m!3312187 () Bool)

(assert (=> b!2910625 m!3312187))

(declare-fun m!3312189 () Bool)

(assert (=> b!2910625 m!3312189))

(declare-fun m!3312191 () Bool)

(assert (=> b!2910625 m!3312191))

(declare-fun m!3312193 () Bool)

(assert (=> b!2910625 m!3312193))

(assert (=> b!2910625 m!3312189))

(assert (=> b!2910625 m!3312185))

(declare-fun m!3312195 () Bool)

(assert (=> b!2910625 m!3312195))

(assert (=> b!2910625 m!3312193))

(declare-fun m!3312197 () Bool)

(assert (=> b!2910625 m!3312197))

(declare-fun m!3312199 () Bool)

(assert (=> b!2910626 m!3312199))

(declare-fun m!3312201 () Bool)

(assert (=> b!2910623 m!3312201))

(push 1)

(assert (not b!2910626))

(assert (not b!2910623))

(assert (not b!2910625))

(assert (not b!2910624))

(assert (not start!283560))

(assert (not setNonEmpty!25922))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!837506 () Bool)

(declare-fun isBalanced!3170 (Conc!10519) Bool)

(assert (=> d!837506 (= (inv!46858 input!3770) (isBalanced!3170 (c!474585 input!3770)))))

(declare-fun bs!524514 () Bool)

(assert (= bs!524514 d!837506))

(declare-fun m!3312227 () Bool)

(assert (=> bs!524514 m!3312227))

(assert (=> start!283560 d!837506))

(declare-fun d!837510 () Bool)

(declare-fun lt!1023738 () C!18070)

(declare-fun apply!7918 (List!34801 Int) C!18070)

(assert (=> d!837510 (= lt!1023738 (apply!7918 (list!12621 input!3770) i!1878))))

(declare-fun apply!7919 (Conc!10519 Int) C!18070)

(assert (=> d!837510 (= lt!1023738 (apply!7919 (c!474585 input!3770) i!1878))))

(declare-fun e!1837214 () Bool)

(assert (=> d!837510 e!1837214))

(declare-fun res!1201556 () Bool)

(assert (=> d!837510 (=> (not res!1201556) (not e!1837214))))

(assert (=> d!837510 (= res!1201556 (<= 0 i!1878))))

(assert (=> d!837510 (= (apply!7916 input!3770 i!1878) lt!1023738)))

(declare-fun b!2910641 () Bool)

(assert (=> b!2910641 (= e!1837214 (< i!1878 (size!26423 input!3770)))))

(assert (= (and d!837510 res!1201556) b!2910641))

(assert (=> d!837510 m!3312193))

(assert (=> d!837510 m!3312193))

(declare-fun m!3312229 () Bool)

(assert (=> d!837510 m!3312229))

(declare-fun m!3312231 () Bool)

(assert (=> d!837510 m!3312231))

(assert (=> b!2910641 m!3312201))

(assert (=> b!2910625 d!837510))

(declare-fun d!837512 () Bool)

(assert (=> d!837512 true))

(declare-fun lambda!108046 () Int)

(declare-fun flatMap!249 ((Set Context!5528) Int) (Set Context!5528))

(assert (=> d!837512 (= (derivationStepZipper!524 z!644 (apply!7916 input!3770 i!1878)) (flatMap!249 z!644 lambda!108046))))

(declare-fun bs!524515 () Bool)

(assert (= bs!524515 d!837512))

(declare-fun m!3312249 () Bool)

(assert (=> bs!524515 m!3312249))

(assert (=> b!2910625 d!837512))

(declare-fun d!837518 () Bool)

(declare-fun c!474598 () Bool)

(assert (=> d!837518 (= c!474598 (= (+ 1 i!1878) (size!26423 input!3770)))))

(declare-fun e!1837223 () Bool)

(assert (=> d!837518 (= (prefixMatchZipperSequence!784 lt!1023725 input!3770 (+ 1 i!1878)) e!1837223)))

(declare-fun b!2910657 () Bool)

(declare-fun lostCauseZipper!617 ((Set Context!5528)) Bool)

(assert (=> b!2910657 (= e!1837223 (not (lostCauseZipper!617 lt!1023725)))))

(declare-fun b!2910658 () Bool)

(assert (=> b!2910658 (= e!1837223 (prefixMatchZipperSequence!784 (derivationStepZipper!524 lt!1023725 (apply!7916 input!3770 (+ 1 i!1878))) input!3770 (+ 1 i!1878 1)))))

(assert (= (and d!837518 c!474598) b!2910657))

(assert (= (and d!837518 (not c!474598)) b!2910658))

(assert (=> d!837518 m!3312201))

(declare-fun m!3312251 () Bool)

(assert (=> b!2910657 m!3312251))

(declare-fun m!3312253 () Bool)

(assert (=> b!2910658 m!3312253))

(assert (=> b!2910658 m!3312253))

(declare-fun m!3312255 () Bool)

(assert (=> b!2910658 m!3312255))

(assert (=> b!2910658 m!3312255))

(declare-fun m!3312257 () Bool)

(assert (=> b!2910658 m!3312257))

(assert (=> b!2910625 d!837518))

(declare-fun d!837520 () Bool)

(declare-fun list!12623 (Conc!10519) List!34801)

(assert (=> d!837520 (= (list!12621 input!3770) (list!12623 (c!474585 input!3770)))))

(declare-fun bs!524516 () Bool)

(assert (= bs!524516 d!837520))

(declare-fun m!3312259 () Bool)

(assert (=> bs!524516 m!3312259))

(assert (=> b!2910625 d!837520))

(declare-fun d!837522 () Bool)

(declare-fun c!474601 () Bool)

(declare-fun isEmpty!18926 (List!34801) Bool)

(assert (=> d!837522 (= c!474601 (isEmpty!18926 (dropList!1045 input!3770 (+ 1 i!1878))))))

(declare-fun e!1837226 () Bool)

(assert (=> d!837522 (= (prefixMatchZipper!380 lt!1023725 (dropList!1045 input!3770 (+ 1 i!1878))) e!1837226)))

(declare-fun b!2910663 () Bool)

(assert (=> b!2910663 (= e!1837226 (not (lostCauseZipper!617 lt!1023725)))))

(declare-fun b!2910664 () Bool)

(declare-fun head!6460 (List!34801) C!18070)

(declare-fun tail!4685 (List!34801) List!34801)

(assert (=> b!2910664 (= e!1837226 (prefixMatchZipper!380 (derivationStepZipper!524 lt!1023725 (head!6460 (dropList!1045 input!3770 (+ 1 i!1878)))) (tail!4685 (dropList!1045 input!3770 (+ 1 i!1878)))))))

(assert (= (and d!837522 c!474601) b!2910663))

(assert (= (and d!837522 (not c!474601)) b!2910664))

(assert (=> d!837522 m!3312189))

(declare-fun m!3312261 () Bool)

(assert (=> d!837522 m!3312261))

(assert (=> b!2910663 m!3312251))

(assert (=> b!2910664 m!3312189))

(declare-fun m!3312263 () Bool)

(assert (=> b!2910664 m!3312263))

(assert (=> b!2910664 m!3312263))

(declare-fun m!3312265 () Bool)

(assert (=> b!2910664 m!3312265))

(assert (=> b!2910664 m!3312189))

(declare-fun m!3312267 () Bool)

(assert (=> b!2910664 m!3312267))

(assert (=> b!2910664 m!3312265))

(assert (=> b!2910664 m!3312267))

(declare-fun m!3312269 () Bool)

(assert (=> b!2910664 m!3312269))

(assert (=> b!2910625 d!837522))

(declare-fun d!837524 () Bool)

(assert (=> d!837524 (= (prefixMatchZipper!380 lt!1023725 (dropList!1045 input!3770 (+ 1 i!1878))) (prefixMatchZipperSequence!784 lt!1023725 input!3770 (+ 1 i!1878)))))

(declare-fun lt!1023744 () Unit!48227)

(declare-fun choose!17114 ((Set Context!5528) BalanceConc!20676 Int) Unit!48227)

(assert (=> d!837524 (= lt!1023744 (choose!17114 lt!1023725 input!3770 (+ 1 i!1878)))))

(declare-fun e!1837229 () Bool)

(assert (=> d!837524 e!1837229))

(declare-fun res!1201562 () Bool)

(assert (=> d!837524 (=> (not res!1201562) (not e!1837229))))

(assert (=> d!837524 (= res!1201562 (>= (+ 1 i!1878) 0))))

(assert (=> d!837524 (= (lemmaprefixMatchZipperSequenceEquivalent!258 lt!1023725 input!3770 (+ 1 i!1878)) lt!1023744)))

(declare-fun b!2910667 () Bool)

(assert (=> b!2910667 (= e!1837229 (<= (+ 1 i!1878) (size!26423 input!3770)))))

(assert (= (and d!837524 res!1201562) b!2910667))

(assert (=> d!837524 m!3312189))

(assert (=> d!837524 m!3312189))

(assert (=> d!837524 m!3312191))

(assert (=> d!837524 m!3312183))

(declare-fun m!3312271 () Bool)

(assert (=> d!837524 m!3312271))

(assert (=> b!2910667 m!3312201))

(assert (=> b!2910625 d!837524))

(declare-fun d!837526 () Bool)

(declare-fun drop!1829 (List!34801 Int) List!34801)

(assert (=> d!837526 (= (dropList!1045 input!3770 (+ 1 i!1878)) (drop!1829 (list!12623 (c!474585 input!3770)) (+ 1 i!1878)))))

(declare-fun bs!524517 () Bool)

(assert (= bs!524517 d!837526))

(assert (=> bs!524517 m!3312259))

(assert (=> bs!524517 m!3312259))

(declare-fun m!3312273 () Bool)

(assert (=> bs!524517 m!3312273))

(assert (=> b!2910625 d!837526))

(declare-fun d!837528 () Bool)

(declare-fun lt!1023747 () Int)

(assert (=> d!837528 (>= lt!1023747 0)))

(declare-fun e!1837232 () Int)

(assert (=> d!837528 (= lt!1023747 e!1837232)))

(declare-fun c!474604 () Bool)

(assert (=> d!837528 (= c!474604 (is-Nil!34677 (list!12621 input!3770)))))

(assert (=> d!837528 (= (size!26424 (list!12621 input!3770)) lt!1023747)))

(declare-fun b!2910672 () Bool)

(assert (=> b!2910672 (= e!1837232 0)))

(declare-fun b!2910673 () Bool)

(assert (=> b!2910673 (= e!1837232 (+ 1 (size!26424 (t!233864 (list!12621 input!3770)))))))

(assert (= (and d!837528 c!474604) b!2910672))

(assert (= (and d!837528 (not c!474604)) b!2910673))

(declare-fun m!3312275 () Bool)

(assert (=> b!2910673 m!3312275))

(assert (=> b!2910625 d!837528))

(declare-fun d!837530 () Bool)

(declare-fun lambda!108049 () Int)

(declare-fun forall!7136 (List!34802 Int) Bool)

(assert (=> d!837530 (= (inv!46859 setElem!25922) (forall!7136 (exprs!3264 setElem!25922) lambda!108049))))

(declare-fun bs!524518 () Bool)

(assert (= bs!524518 d!837530))

(declare-fun m!3312277 () Bool)

(assert (=> bs!524518 m!3312277))

(assert (=> setNonEmpty!25922 d!837530))

(declare-fun d!837532 () Bool)

(declare-fun c!474607 () Bool)

(assert (=> d!837532 (= c!474607 (is-Node!10519 (c!474585 input!3770)))))

(declare-fun e!1837237 () Bool)

(assert (=> d!837532 (= (inv!46860 (c!474585 input!3770)) e!1837237)))

(declare-fun b!2910680 () Bool)

(declare-fun inv!46864 (Conc!10519) Bool)

(assert (=> b!2910680 (= e!1837237 (inv!46864 (c!474585 input!3770)))))

(declare-fun b!2910681 () Bool)

(declare-fun e!1837238 () Bool)

(assert (=> b!2910681 (= e!1837237 e!1837238)))

(declare-fun res!1201565 () Bool)

(assert (=> b!2910681 (= res!1201565 (not (is-Leaf!16215 (c!474585 input!3770))))))

(assert (=> b!2910681 (=> res!1201565 e!1837238)))

(declare-fun b!2910682 () Bool)

(declare-fun inv!46865 (Conc!10519) Bool)

(assert (=> b!2910682 (= e!1837238 (inv!46865 (c!474585 input!3770)))))

(assert (= (and d!837532 c!474607) b!2910680))

(assert (= (and d!837532 (not c!474607)) b!2910681))

(assert (= (and b!2910681 (not res!1201565)) b!2910682))

(declare-fun m!3312279 () Bool)

(assert (=> b!2910680 m!3312279))

(declare-fun m!3312281 () Bool)

(assert (=> b!2910682 m!3312281))

(assert (=> b!2910626 d!837532))

(declare-fun d!837534 () Bool)

(declare-fun lt!1023750 () Int)

(assert (=> d!837534 (= lt!1023750 (size!26424 (list!12621 input!3770)))))

(declare-fun size!26427 (Conc!10519) Int)

(assert (=> d!837534 (= lt!1023750 (size!26427 (c!474585 input!3770)))))

(assert (=> d!837534 (= (size!26423 input!3770) lt!1023750)))

(declare-fun bs!524519 () Bool)

(assert (= bs!524519 d!837534))

(assert (=> bs!524519 m!3312193))

(assert (=> bs!524519 m!3312193))

(assert (=> bs!524519 m!3312197))

(declare-fun m!3312283 () Bool)

(assert (=> bs!524519 m!3312283))

(assert (=> b!2910623 d!837534))

(declare-fun b!2910687 () Bool)

(declare-fun e!1837241 () Bool)

(declare-fun tp!935172 () Bool)

(declare-fun tp!935173 () Bool)

(assert (=> b!2910687 (= e!1837241 (and tp!935172 tp!935173))))

(assert (=> b!2910624 (= tp!935158 e!1837241)))

(assert (= (and b!2910624 (is-Cons!34678 (exprs!3264 setElem!25922))) b!2910687))

(declare-fun condSetEmpty!25928 () Bool)

(assert (=> setNonEmpty!25922 (= condSetEmpty!25928 (= setRest!25922 (as set.empty (Set Context!5528))))))

(declare-fun setRes!25928 () Bool)

(assert (=> setNonEmpty!25922 (= tp!935156 setRes!25928)))

(declare-fun setIsEmpty!25928 () Bool)

(assert (=> setIsEmpty!25928 setRes!25928))

(declare-fun setNonEmpty!25928 () Bool)

(declare-fun setElem!25928 () Context!5528)

(declare-fun tp!935179 () Bool)

(declare-fun e!1837244 () Bool)

(assert (=> setNonEmpty!25928 (= setRes!25928 (and tp!935179 (inv!46859 setElem!25928) e!1837244))))

(declare-fun setRest!25928 () (Set Context!5528))

(assert (=> setNonEmpty!25928 (= setRest!25922 (set.union (set.insert setElem!25928 (as set.empty (Set Context!5528))) setRest!25928))))

(declare-fun b!2910692 () Bool)

(declare-fun tp!935178 () Bool)

(assert (=> b!2910692 (= e!1837244 tp!935178)))

(assert (= (and setNonEmpty!25922 condSetEmpty!25928) setIsEmpty!25928))

(assert (= (and setNonEmpty!25922 (not condSetEmpty!25928)) setNonEmpty!25928))

(assert (= setNonEmpty!25928 b!2910692))

(declare-fun m!3312285 () Bool)

(assert (=> setNonEmpty!25928 m!3312285))

(declare-fun tp!935188 () Bool)

(declare-fun e!1837249 () Bool)

(declare-fun b!2910701 () Bool)

(declare-fun tp!935187 () Bool)

(assert (=> b!2910701 (= e!1837249 (and (inv!46860 (left!26050 (c!474585 input!3770))) tp!935188 (inv!46860 (right!26380 (c!474585 input!3770))) tp!935187))))

(declare-fun b!2910703 () Bool)

(declare-fun e!1837250 () Bool)

(declare-fun tp!935186 () Bool)

(assert (=> b!2910703 (= e!1837250 tp!935186)))

(declare-fun b!2910702 () Bool)

(declare-fun inv!46866 (IArray!21043) Bool)

(assert (=> b!2910702 (= e!1837249 (and (inv!46866 (xs!13637 (c!474585 input!3770))) e!1837250))))

(assert (=> b!2910626 (= tp!935157 (and (inv!46860 (c!474585 input!3770)) e!1837249))))

(assert (= (and b!2910626 (is-Node!10519 (c!474585 input!3770))) b!2910701))

(assert (= b!2910702 b!2910703))

(assert (= (and b!2910626 (is-Leaf!16215 (c!474585 input!3770))) b!2910702))

(declare-fun m!3312287 () Bool)

(assert (=> b!2910701 m!3312287))

(declare-fun m!3312289 () Bool)

(assert (=> b!2910701 m!3312289))

(declare-fun m!3312291 () Bool)

(assert (=> b!2910702 m!3312291))

(assert (=> b!2910626 m!3312199))

(push 1)

(assert (not b!2910663))

(assert (not d!837530))

(assert (not d!837524))

(assert (not d!837526))

(assert (not b!2910626))

(assert (not b!2910658))

(assert (not b!2910664))

(assert (not b!2910703))

(assert (not d!837520))

(assert (not d!837506))

(assert (not b!2910667))

(assert (not d!837534))

(assert (not d!837512))

(assert (not d!837522))

(assert (not b!2910701))

(assert (not b!2910692))

(assert (not b!2910687))

(assert (not d!837518))

(assert (not b!2910682))

(assert (not b!2910673))

(assert (not b!2910657))

(assert (not b!2910641))

(assert (not b!2910702))

(assert (not d!837510))

(assert (not b!2910680))

(assert (not setNonEmpty!25928))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


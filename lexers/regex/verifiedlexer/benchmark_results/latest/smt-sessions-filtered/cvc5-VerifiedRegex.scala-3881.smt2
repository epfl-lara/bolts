; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!213752 () Bool)

(assert start!213752)

(declare-fun b!2201304 () Bool)

(declare-fun e!1406569 () Bool)

(declare-datatypes ((C!12602 0))(
  ( (C!12603 (val!7287 Int)) )
))
(declare-datatypes ((List!25752 0))(
  ( (Nil!25668) (Cons!25668 (h!31069 C!12602) (t!198378 List!25752)) )
))
(declare-datatypes ((IArray!16733 0))(
  ( (IArray!16734 (innerList!8424 List!25752)) )
))
(declare-datatypes ((Conc!8364 0))(
  ( (Node!8364 (left!19717 Conc!8364) (right!20047 Conc!8364) (csize!16958 Int) (cheight!8575 Int)) (Leaf!12246 (xs!11306 IArray!16733) (csize!16959 Int)) (Empty!8364) )
))
(declare-datatypes ((BalanceConc!16490 0))(
  ( (BalanceConc!16491 (c!351068 Conc!8364)) )
))
(declare-fun totalInput!891 () BalanceConc!16490)

(declare-fun tp!684967 () Bool)

(declare-fun inv!34492 (Conc!8364) Bool)

(assert (=> b!2201304 (= e!1406569 (and (inv!34492 (c!351068 totalInput!891)) tp!684967))))

(declare-fun e!1406568 () Bool)

(declare-datatypes ((Regex!6228 0))(
  ( (ElementMatch!6228 (c!351069 C!12602)) (Concat!10530 (regOne!12968 Regex!6228) (regTwo!12968 Regex!6228)) (EmptyExpr!6228) (Star!6228 (reg!6557 Regex!6228)) (EmptyLang!6228) (Union!6228 (regOne!12969 Regex!6228) (regTwo!12969 Regex!6228)) )
))
(declare-datatypes ((List!25753 0))(
  ( (Nil!25669) (Cons!25669 (h!31070 Regex!6228) (t!198379 List!25753)) )
))
(declare-datatypes ((Context!3596 0))(
  ( (Context!3597 (exprs!2298 List!25753)) )
))
(declare-fun setElem!18995 () Context!3596)

(declare-fun tp!684968 () Bool)

(declare-fun setNonEmpty!18995 () Bool)

(declare-fun setRes!18995 () Bool)

(declare-fun inv!34493 (Context!3596) Bool)

(assert (=> setNonEmpty!18995 (= setRes!18995 (and tp!684968 (inv!34493 setElem!18995) e!1406568))))

(declare-fun z!3888 () (Set Context!3596))

(declare-fun setRest!18995 () (Set Context!3596))

(assert (=> setNonEmpty!18995 (= z!3888 (set.union (set.insert setElem!18995 (as set.empty (Set Context!3596))) setRest!18995))))

(declare-fun res!946365 () Bool)

(declare-fun e!1406570 () Bool)

(assert (=> start!213752 (=> (not res!946365) (not e!1406570))))

(declare-fun from!1082 () Int)

(assert (=> start!213752 (= res!946365 (>= from!1082 0))))

(assert (=> start!213752 e!1406570))

(assert (=> start!213752 true))

(declare-fun inv!34494 (BalanceConc!16490) Bool)

(assert (=> start!213752 (and (inv!34494 totalInput!891) e!1406569)))

(declare-fun condSetEmpty!18995 () Bool)

(assert (=> start!213752 (= condSetEmpty!18995 (= z!3888 (as set.empty (Set Context!3596))))))

(assert (=> start!213752 setRes!18995))

(declare-fun b!2201305 () Bool)

(declare-fun e!1406571 () Bool)

(assert (=> b!2201305 (= e!1406570 e!1406571)))

(declare-fun res!946364 () Bool)

(assert (=> b!2201305 (=> (not res!946364) (not e!1406571))))

(declare-fun knownSize!10 () Int)

(declare-fun lt!823363 () Int)

(assert (=> b!2201305 (= res!946364 (and (<= from!1082 lt!823363) (>= knownSize!10 0) (<= knownSize!10 (- lt!823363 from!1082))))))

(declare-fun size!19999 (BalanceConc!16490) Int)

(assert (=> b!2201305 (= lt!823363 (size!19999 totalInput!891))))

(declare-fun setIsEmpty!18995 () Bool)

(assert (=> setIsEmpty!18995 setRes!18995))

(declare-fun b!2201306 () Bool)

(declare-fun res!946363 () Bool)

(assert (=> b!2201306 (=> (not res!946363) (not e!1406571))))

(assert (=> b!2201306 (= res!946363 (= from!1082 0))))

(declare-fun b!2201307 () Bool)

(declare-fun res!946362 () Bool)

(assert (=> b!2201307 (=> (not res!946362) (not e!1406571))))

(declare-fun isEmpty!14642 (BalanceConc!16490) Bool)

(assert (=> b!2201307 (= res!946362 (isEmpty!14642 totalInput!891))))

(declare-fun b!2201308 () Bool)

(declare-fun tp!684969 () Bool)

(assert (=> b!2201308 (= e!1406568 tp!684969)))

(declare-fun lastNullablePos!161 () Int)

(declare-fun b!2201309 () Bool)

(declare-fun furthestNullablePosition!378 ((Set Context!3596) Int BalanceConc!16490 Int Int) Int)

(assert (=> b!2201309 (= e!1406571 (not (= (furthestNullablePosition!378 z!3888 from!1082 totalInput!891 lt!823363 lastNullablePos!161) lastNullablePos!161)))))

(declare-fun b!2201310 () Bool)

(declare-fun res!946366 () Bool)

(assert (=> b!2201310 (=> (not res!946366) (not e!1406571))))

(assert (=> b!2201310 (= res!946366 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2201311 () Bool)

(declare-fun res!946368 () Bool)

(assert (=> b!2201311 (=> (not res!946368) (not e!1406571))))

(declare-fun e!1406572 () Bool)

(assert (=> b!2201311 (= res!946368 e!1406572)))

(declare-fun res!946369 () Bool)

(assert (=> b!2201311 (=> res!946369 e!1406572)))

(declare-fun nullableZipper!508 ((Set Context!3596)) Bool)

(assert (=> b!2201311 (= res!946369 (not (nullableZipper!508 z!3888)))))

(declare-fun b!2201312 () Bool)

(declare-fun res!946367 () Bool)

(assert (=> b!2201312 (=> (not res!946367) (not e!1406571))))

(declare-fun matchZipper!314 ((Set Context!3596) List!25752) Bool)

(declare-fun take!406 (List!25752 Int) List!25752)

(declare-fun drop!1416 (List!25752 Int) List!25752)

(declare-fun list!9890 (BalanceConc!16490) List!25752)

(assert (=> b!2201312 (= res!946367 (matchZipper!314 z!3888 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10)))))

(declare-fun b!2201313 () Bool)

(assert (=> b!2201313 (= e!1406572 (= lastNullablePos!161 (- from!1082 1)))))

(assert (= (and start!213752 res!946365) b!2201305))

(assert (= (and b!2201305 res!946364) b!2201312))

(assert (= (and b!2201312 res!946367) b!2201310))

(assert (= (and b!2201310 res!946366) b!2201311))

(assert (= (and b!2201311 (not res!946369)) b!2201313))

(assert (= (and b!2201311 res!946368) b!2201307))

(assert (= (and b!2201307 res!946362) b!2201306))

(assert (= (and b!2201306 res!946363) b!2201309))

(assert (= start!213752 b!2201304))

(assert (= (and start!213752 condSetEmpty!18995) setIsEmpty!18995))

(assert (= (and start!213752 (not condSetEmpty!18995)) setNonEmpty!18995))

(assert (= setNonEmpty!18995 b!2201308))

(declare-fun m!2643871 () Bool)

(assert (=> b!2201305 m!2643871))

(declare-fun m!2643873 () Bool)

(assert (=> setNonEmpty!18995 m!2643873))

(declare-fun m!2643875 () Bool)

(assert (=> b!2201309 m!2643875))

(declare-fun m!2643877 () Bool)

(assert (=> b!2201307 m!2643877))

(declare-fun m!2643879 () Bool)

(assert (=> start!213752 m!2643879))

(declare-fun m!2643881 () Bool)

(assert (=> b!2201311 m!2643881))

(declare-fun m!2643883 () Bool)

(assert (=> b!2201304 m!2643883))

(declare-fun m!2643885 () Bool)

(assert (=> b!2201312 m!2643885))

(assert (=> b!2201312 m!2643885))

(declare-fun m!2643887 () Bool)

(assert (=> b!2201312 m!2643887))

(assert (=> b!2201312 m!2643887))

(declare-fun m!2643889 () Bool)

(assert (=> b!2201312 m!2643889))

(assert (=> b!2201312 m!2643889))

(declare-fun m!2643891 () Bool)

(assert (=> b!2201312 m!2643891))

(push 1)

(assert (not start!213752))

(assert (not b!2201312))

(assert (not b!2201308))

(assert (not b!2201307))

(assert (not b!2201311))

(assert (not b!2201304))

(assert (not b!2201305))

(assert (not setNonEmpty!18995))

(assert (not b!2201309))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!658508 () Bool)

(declare-fun c!351076 () Bool)

(assert (=> d!658508 (= c!351076 (is-Node!8364 (c!351068 totalInput!891)))))

(declare-fun e!1406592 () Bool)

(assert (=> d!658508 (= (inv!34492 (c!351068 totalInput!891)) e!1406592)))

(declare-fun b!2201350 () Bool)

(declare-fun inv!34498 (Conc!8364) Bool)

(assert (=> b!2201350 (= e!1406592 (inv!34498 (c!351068 totalInput!891)))))

(declare-fun b!2201351 () Bool)

(declare-fun e!1406593 () Bool)

(assert (=> b!2201351 (= e!1406592 e!1406593)))

(declare-fun res!946396 () Bool)

(assert (=> b!2201351 (= res!946396 (not (is-Leaf!12246 (c!351068 totalInput!891))))))

(assert (=> b!2201351 (=> res!946396 e!1406593)))

(declare-fun b!2201352 () Bool)

(declare-fun inv!34499 (Conc!8364) Bool)

(assert (=> b!2201352 (= e!1406593 (inv!34499 (c!351068 totalInput!891)))))

(assert (= (and d!658508 c!351076) b!2201350))

(assert (= (and d!658508 (not c!351076)) b!2201351))

(assert (= (and b!2201351 (not res!946396)) b!2201352))

(declare-fun m!2643917 () Bool)

(assert (=> b!2201350 m!2643917))

(declare-fun m!2643919 () Bool)

(assert (=> b!2201352 m!2643919))

(assert (=> b!2201304 d!658508))

(declare-fun c!351079 () Bool)

(declare-fun d!658510 () Bool)

(declare-fun isEmpty!14644 (List!25752) Bool)

(assert (=> d!658510 (= c!351079 (isEmpty!14644 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10)))))

(declare-fun e!1406596 () Bool)

(assert (=> d!658510 (= (matchZipper!314 z!3888 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10)) e!1406596)))

(declare-fun b!2201357 () Bool)

(assert (=> b!2201357 (= e!1406596 (nullableZipper!508 z!3888))))

(declare-fun b!2201358 () Bool)

(declare-fun derivationStepZipper!286 ((Set Context!3596) C!12602) (Set Context!3596))

(declare-fun head!4695 (List!25752) C!12602)

(declare-fun tail!3173 (List!25752) List!25752)

(assert (=> b!2201358 (= e!1406596 (matchZipper!314 (derivationStepZipper!286 z!3888 (head!4695 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10))) (tail!3173 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10))))))

(assert (= (and d!658510 c!351079) b!2201357))

(assert (= (and d!658510 (not c!351079)) b!2201358))

(assert (=> d!658510 m!2643889))

(declare-fun m!2643921 () Bool)

(assert (=> d!658510 m!2643921))

(assert (=> b!2201357 m!2643881))

(assert (=> b!2201358 m!2643889))

(declare-fun m!2643923 () Bool)

(assert (=> b!2201358 m!2643923))

(assert (=> b!2201358 m!2643923))

(declare-fun m!2643925 () Bool)

(assert (=> b!2201358 m!2643925))

(assert (=> b!2201358 m!2643889))

(declare-fun m!2643927 () Bool)

(assert (=> b!2201358 m!2643927))

(assert (=> b!2201358 m!2643925))

(assert (=> b!2201358 m!2643927))

(declare-fun m!2643929 () Bool)

(assert (=> b!2201358 m!2643929))

(assert (=> b!2201312 d!658510))

(declare-fun b!2201373 () Bool)

(declare-fun e!1406606 () List!25752)

(assert (=> b!2201373 (= e!1406606 Nil!25668)))

(declare-fun b!2201374 () Bool)

(declare-fun e!1406607 () Bool)

(declare-fun lt!823369 () List!25752)

(declare-fun e!1406605 () Int)

(declare-fun size!20001 (List!25752) Int)

(assert (=> b!2201374 (= e!1406607 (= (size!20001 lt!823369) e!1406605))))

(declare-fun c!351086 () Bool)

(assert (=> b!2201374 (= c!351086 (<= knownSize!10 0))))

(declare-fun b!2201375 () Bool)

(declare-fun e!1406608 () Int)

(assert (=> b!2201375 (= e!1406608 (size!20001 (drop!1416 (list!9890 totalInput!891) from!1082)))))

(declare-fun b!2201376 () Bool)

(assert (=> b!2201376 (= e!1406608 knownSize!10)))

(declare-fun b!2201377 () Bool)

(assert (=> b!2201377 (= e!1406605 e!1406608)))

(declare-fun c!351087 () Bool)

(assert (=> b!2201377 (= c!351087 (>= knownSize!10 (size!20001 (drop!1416 (list!9890 totalInput!891) from!1082))))))

(declare-fun b!2201378 () Bool)

(assert (=> b!2201378 (= e!1406605 0)))

(declare-fun d!658512 () Bool)

(assert (=> d!658512 e!1406607))

(declare-fun res!946399 () Bool)

(assert (=> d!658512 (=> (not res!946399) (not e!1406607))))

(declare-fun content!3482 (List!25752) (Set C!12602))

(assert (=> d!658512 (= res!946399 (set.subset (content!3482 lt!823369) (content!3482 (drop!1416 (list!9890 totalInput!891) from!1082))))))

(assert (=> d!658512 (= lt!823369 e!1406606)))

(declare-fun c!351088 () Bool)

(assert (=> d!658512 (= c!351088 (or (is-Nil!25668 (drop!1416 (list!9890 totalInput!891) from!1082)) (<= knownSize!10 0)))))

(assert (=> d!658512 (= (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10) lt!823369)))

(declare-fun b!2201379 () Bool)

(assert (=> b!2201379 (= e!1406606 (Cons!25668 (h!31069 (drop!1416 (list!9890 totalInput!891) from!1082)) (take!406 (t!198378 (drop!1416 (list!9890 totalInput!891) from!1082)) (- knownSize!10 1))))))

(assert (= (and d!658512 c!351088) b!2201373))

(assert (= (and d!658512 (not c!351088)) b!2201379))

(assert (= (and d!658512 res!946399) b!2201374))

(assert (= (and b!2201374 c!351086) b!2201378))

(assert (= (and b!2201374 (not c!351086)) b!2201377))

(assert (= (and b!2201377 c!351087) b!2201375))

(assert (= (and b!2201377 (not c!351087)) b!2201376))

(declare-fun m!2643931 () Bool)

(assert (=> b!2201374 m!2643931))

(declare-fun m!2643933 () Bool)

(assert (=> d!658512 m!2643933))

(assert (=> d!658512 m!2643887))

(declare-fun m!2643935 () Bool)

(assert (=> d!658512 m!2643935))

(assert (=> b!2201377 m!2643887))

(declare-fun m!2643937 () Bool)

(assert (=> b!2201377 m!2643937))

(declare-fun m!2643939 () Bool)

(assert (=> b!2201379 m!2643939))

(assert (=> b!2201375 m!2643887))

(assert (=> b!2201375 m!2643937))

(assert (=> b!2201312 d!658512))

(declare-fun b!2201398 () Bool)

(declare-fun e!1406619 () Int)

(declare-fun call!132121 () Int)

(assert (=> b!2201398 (= e!1406619 call!132121)))

(declare-fun b!2201399 () Bool)

(declare-fun e!1406621 () Bool)

(declare-fun lt!823372 () List!25752)

(assert (=> b!2201399 (= e!1406621 (= (size!20001 lt!823372) e!1406619))))

(declare-fun c!351098 () Bool)

(assert (=> b!2201399 (= c!351098 (<= from!1082 0))))

(declare-fun b!2201400 () Bool)

(declare-fun e!1406620 () List!25752)

(assert (=> b!2201400 (= e!1406620 (drop!1416 (t!198378 (list!9890 totalInput!891)) (- from!1082 1)))))

(declare-fun b!2201401 () Bool)

(declare-fun e!1406623 () Int)

(assert (=> b!2201401 (= e!1406623 0)))

(declare-fun bm!132116 () Bool)

(assert (=> bm!132116 (= call!132121 (size!20001 (list!9890 totalInput!891)))))

(declare-fun b!2201402 () Bool)

(assert (=> b!2201402 (= e!1406619 e!1406623)))

(declare-fun c!351100 () Bool)

(assert (=> b!2201402 (= c!351100 (>= from!1082 call!132121))))

(declare-fun b!2201403 () Bool)

(declare-fun e!1406622 () List!25752)

(assert (=> b!2201403 (= e!1406622 Nil!25668)))

(declare-fun d!658514 () Bool)

(assert (=> d!658514 e!1406621))

(declare-fun res!946402 () Bool)

(assert (=> d!658514 (=> (not res!946402) (not e!1406621))))

(assert (=> d!658514 (= res!946402 (set.subset (content!3482 lt!823372) (content!3482 (list!9890 totalInput!891))))))

(assert (=> d!658514 (= lt!823372 e!1406622)))

(declare-fun c!351097 () Bool)

(assert (=> d!658514 (= c!351097 (is-Nil!25668 (list!9890 totalInput!891)))))

(assert (=> d!658514 (= (drop!1416 (list!9890 totalInput!891) from!1082) lt!823372)))

(declare-fun b!2201404 () Bool)

(assert (=> b!2201404 (= e!1406623 (- call!132121 from!1082))))

(declare-fun b!2201405 () Bool)

(assert (=> b!2201405 (= e!1406620 (list!9890 totalInput!891))))

(declare-fun b!2201406 () Bool)

(assert (=> b!2201406 (= e!1406622 e!1406620)))

(declare-fun c!351099 () Bool)

(assert (=> b!2201406 (= c!351099 (<= from!1082 0))))

(assert (= (and d!658514 c!351097) b!2201403))

(assert (= (and d!658514 (not c!351097)) b!2201406))

(assert (= (and b!2201406 c!351099) b!2201405))

(assert (= (and b!2201406 (not c!351099)) b!2201400))

(assert (= (and d!658514 res!946402) b!2201399))

(assert (= (and b!2201399 c!351098) b!2201398))

(assert (= (and b!2201399 (not c!351098)) b!2201402))

(assert (= (and b!2201402 c!351100) b!2201401))

(assert (= (and b!2201402 (not c!351100)) b!2201404))

(assert (= (or b!2201398 b!2201402 b!2201404) bm!132116))

(declare-fun m!2643941 () Bool)

(assert (=> b!2201399 m!2643941))

(declare-fun m!2643943 () Bool)

(assert (=> b!2201400 m!2643943))

(assert (=> bm!132116 m!2643885))

(declare-fun m!2643945 () Bool)

(assert (=> bm!132116 m!2643945))

(declare-fun m!2643947 () Bool)

(assert (=> d!658514 m!2643947))

(assert (=> d!658514 m!2643885))

(declare-fun m!2643949 () Bool)

(assert (=> d!658514 m!2643949))

(assert (=> b!2201312 d!658514))

(declare-fun d!658516 () Bool)

(declare-fun list!9892 (Conc!8364) List!25752)

(assert (=> d!658516 (= (list!9890 totalInput!891) (list!9892 (c!351068 totalInput!891)))))

(declare-fun bs!450564 () Bool)

(assert (= bs!450564 d!658516))

(declare-fun m!2643951 () Bool)

(assert (=> bs!450564 m!2643951))

(assert (=> b!2201312 d!658516))

(declare-fun d!658518 () Bool)

(declare-fun lt!823375 () Bool)

(assert (=> d!658518 (= lt!823375 (isEmpty!14644 (list!9890 totalInput!891)))))

(declare-fun isEmpty!14645 (Conc!8364) Bool)

(assert (=> d!658518 (= lt!823375 (isEmpty!14645 (c!351068 totalInput!891)))))

(assert (=> d!658518 (= (isEmpty!14642 totalInput!891) lt!823375)))

(declare-fun bs!450565 () Bool)

(assert (= bs!450565 d!658518))

(assert (=> bs!450565 m!2643885))

(assert (=> bs!450565 m!2643885))

(declare-fun m!2643953 () Bool)

(assert (=> bs!450565 m!2643953))

(declare-fun m!2643955 () Bool)

(assert (=> bs!450565 m!2643955))

(assert (=> b!2201307 d!658518))

(declare-fun d!658520 () Bool)

(declare-fun lambda!82922 () Int)

(declare-fun exists!833 ((Set Context!3596) Int) Bool)

(assert (=> d!658520 (= (nullableZipper!508 z!3888) (exists!833 z!3888 lambda!82922))))

(declare-fun bs!450566 () Bool)

(assert (= bs!450566 d!658520))

(declare-fun m!2643957 () Bool)

(assert (=> bs!450566 m!2643957))

(assert (=> b!2201311 d!658520))

(declare-fun d!658522 () Bool)

(declare-fun isBalanced!2571 (Conc!8364) Bool)

(assert (=> d!658522 (= (inv!34494 totalInput!891) (isBalanced!2571 (c!351068 totalInput!891)))))

(declare-fun bs!450567 () Bool)

(assert (= bs!450567 d!658522))

(declare-fun m!2643959 () Bool)

(assert (=> bs!450567 m!2643959))

(assert (=> start!213752 d!658522))

(declare-fun d!658524 () Bool)

(declare-fun lt!823378 () Int)

(assert (=> d!658524 (= lt!823378 (size!20001 (list!9890 totalInput!891)))))

(declare-fun size!20002 (Conc!8364) Int)

(assert (=> d!658524 (= lt!823378 (size!20002 (c!351068 totalInput!891)))))

(assert (=> d!658524 (= (size!19999 totalInput!891) lt!823378)))

(declare-fun bs!450569 () Bool)

(assert (= bs!450569 d!658524))

(assert (=> bs!450569 m!2643885))

(assert (=> bs!450569 m!2643885))

(assert (=> bs!450569 m!2643945))

(declare-fun m!2643963 () Bool)

(assert (=> bs!450569 m!2643963))

(assert (=> b!2201305 d!658524))

(declare-fun b!2201444 () Bool)

(declare-fun e!1406646 () Int)

(assert (=> b!2201444 (= e!1406646 lastNullablePos!161)))

(declare-fun b!2201445 () Bool)

(declare-fun e!1406645 () Int)

(assert (=> b!2201445 (= e!1406645 from!1082)))

(declare-fun b!2201446 () Bool)

(declare-fun e!1406647 () Bool)

(declare-fun lostCauseZipper!336 ((Set Context!3596)) Bool)

(assert (=> b!2201446 (= e!1406647 (lostCauseZipper!336 z!3888))))

(declare-fun b!2201447 () Bool)

(assert (=> b!2201447 (= e!1406645 lastNullablePos!161)))

(declare-fun b!2201448 () Bool)

(declare-fun lt!823390 () (Set Context!3596))

(assert (=> b!2201448 (= e!1406646 (furthestNullablePosition!378 lt!823390 (+ from!1082 1) totalInput!891 lt!823363 e!1406645))))

(declare-fun apply!6310 (BalanceConc!16490 Int) C!12602)

(assert (=> b!2201448 (= lt!823390 (derivationStepZipper!286 z!3888 (apply!6310 totalInput!891 from!1082)))))

(declare-fun c!351120 () Bool)

(assert (=> b!2201448 (= c!351120 (nullableZipper!508 lt!823390))))

(declare-fun d!658528 () Bool)

(declare-fun lt!823389 () Int)

(assert (=> d!658528 (and (>= lt!823389 (- 1)) (< lt!823389 lt!823363) (>= lt!823389 lastNullablePos!161) (or (= lt!823389 lastNullablePos!161) (>= lt!823389 from!1082)))))

(assert (=> d!658528 (= lt!823389 e!1406646)))

(declare-fun c!351119 () Bool)

(assert (=> d!658528 (= c!351119 e!1406647)))

(declare-fun res!946408 () Bool)

(assert (=> d!658528 (=> res!946408 e!1406647)))

(assert (=> d!658528 (= res!946408 (= from!1082 lt!823363))))

(assert (=> d!658528 (and (>= from!1082 0) (<= from!1082 lt!823363))))

(assert (=> d!658528 (= (furthestNullablePosition!378 z!3888 from!1082 totalInput!891 lt!823363 lastNullablePos!161) lt!823389)))

(assert (= (and d!658528 (not res!946408)) b!2201446))

(assert (= (and d!658528 c!351119) b!2201444))

(assert (= (and d!658528 (not c!351119)) b!2201448))

(assert (= (and b!2201448 c!351120) b!2201445))

(assert (= (and b!2201448 (not c!351120)) b!2201447))

(declare-fun m!2643991 () Bool)

(assert (=> b!2201446 m!2643991))

(declare-fun m!2643993 () Bool)

(assert (=> b!2201448 m!2643993))

(declare-fun m!2643995 () Bool)

(assert (=> b!2201448 m!2643995))

(assert (=> b!2201448 m!2643995))

(declare-fun m!2643997 () Bool)

(assert (=> b!2201448 m!2643997))

(declare-fun m!2643999 () Bool)

(assert (=> b!2201448 m!2643999))

(assert (=> b!2201309 d!658528))

(declare-fun d!658538 () Bool)

(declare-fun lambda!82931 () Int)

(declare-fun forall!5245 (List!25753 Int) Bool)

(assert (=> d!658538 (= (inv!34493 setElem!18995) (forall!5245 (exprs!2298 setElem!18995) lambda!82931))))

(declare-fun bs!450572 () Bool)

(assert (= bs!450572 d!658538))

(declare-fun m!2644001 () Bool)

(assert (=> bs!450572 m!2644001))

(assert (=> setNonEmpty!18995 d!658538))

(declare-fun tp!684985 () Bool)

(declare-fun e!1406662 () Bool)

(declare-fun tp!684986 () Bool)

(declare-fun b!2201475 () Bool)

(assert (=> b!2201475 (= e!1406662 (and (inv!34492 (left!19717 (c!351068 totalInput!891))) tp!684985 (inv!34492 (right!20047 (c!351068 totalInput!891))) tp!684986))))

(declare-fun b!2201477 () Bool)

(declare-fun e!1406663 () Bool)

(declare-fun tp!684987 () Bool)

(assert (=> b!2201477 (= e!1406663 tp!684987)))

(declare-fun b!2201476 () Bool)

(declare-fun inv!34500 (IArray!16733) Bool)

(assert (=> b!2201476 (= e!1406662 (and (inv!34500 (xs!11306 (c!351068 totalInput!891))) e!1406663))))

(assert (=> b!2201304 (= tp!684967 (and (inv!34492 (c!351068 totalInput!891)) e!1406662))))

(assert (= (and b!2201304 (is-Node!8364 (c!351068 totalInput!891))) b!2201475))

(assert (= b!2201476 b!2201477))

(assert (= (and b!2201304 (is-Leaf!12246 (c!351068 totalInput!891))) b!2201476))

(declare-fun m!2644003 () Bool)

(assert (=> b!2201475 m!2644003))

(declare-fun m!2644005 () Bool)

(assert (=> b!2201475 m!2644005))

(declare-fun m!2644007 () Bool)

(assert (=> b!2201476 m!2644007))

(assert (=> b!2201304 m!2643883))

(declare-fun b!2201491 () Bool)

(declare-fun e!1406671 () Bool)

(declare-fun tp!684992 () Bool)

(declare-fun tp!684993 () Bool)

(assert (=> b!2201491 (= e!1406671 (and tp!684992 tp!684993))))

(assert (=> b!2201308 (= tp!684969 e!1406671)))

(assert (= (and b!2201308 (is-Cons!25669 (exprs!2298 setElem!18995))) b!2201491))

(declare-fun condSetEmpty!19001 () Bool)

(assert (=> setNonEmpty!18995 (= condSetEmpty!19001 (= setRest!18995 (as set.empty (Set Context!3596))))))

(declare-fun setRes!19001 () Bool)

(assert (=> setNonEmpty!18995 (= tp!684968 setRes!19001)))

(declare-fun setIsEmpty!19001 () Bool)

(assert (=> setIsEmpty!19001 setRes!19001))

(declare-fun setNonEmpty!19001 () Bool)

(declare-fun e!1406674 () Bool)

(declare-fun setElem!19001 () Context!3596)

(declare-fun tp!684999 () Bool)

(assert (=> setNonEmpty!19001 (= setRes!19001 (and tp!684999 (inv!34493 setElem!19001) e!1406674))))

(declare-fun setRest!19001 () (Set Context!3596))

(assert (=> setNonEmpty!19001 (= setRest!18995 (set.union (set.insert setElem!19001 (as set.empty (Set Context!3596))) setRest!19001))))

(declare-fun b!2201496 () Bool)

(declare-fun tp!684998 () Bool)

(assert (=> b!2201496 (= e!1406674 tp!684998)))

(assert (= (and setNonEmpty!18995 condSetEmpty!19001) setIsEmpty!19001))

(assert (= (and setNonEmpty!18995 (not condSetEmpty!19001)) setNonEmpty!19001))

(assert (= setNonEmpty!19001 b!2201496))

(declare-fun m!2644019 () Bool)

(assert (=> setNonEmpty!19001 m!2644019))

(push 1)

(assert (not b!2201399))

(assert (not d!658518))

(assert (not b!2201476))

(assert (not b!2201358))

(assert (not b!2201475))

(assert (not b!2201304))

(assert (not b!2201350))

(assert (not b!2201357))

(assert (not d!658538))

(assert (not d!658512))

(assert (not bm!132116))

(assert (not b!2201374))

(assert (not b!2201448))

(assert (not b!2201477))

(assert (not d!658514))

(assert (not b!2201400))

(assert (not d!658520))

(assert (not d!658524))

(assert (not setNonEmpty!19001))

(assert (not b!2201352))

(assert (not b!2201446))

(assert (not d!658510))

(assert (not d!658516))

(assert (not d!658522))

(assert (not b!2201496))

(assert (not b!2201375))

(assert (not b!2201379))

(assert (not b!2201377))

(assert (not b!2201491))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!658548 () Bool)

(assert (=> d!658548 (= (isEmpty!14644 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10)) (is-Nil!25668 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10)))))

(assert (=> d!658510 d!658548))

(declare-fun b!2201554 () Bool)

(declare-fun e!1406706 () Bool)

(declare-fun e!1406707 () Bool)

(assert (=> b!2201554 (= e!1406706 e!1406707)))

(declare-fun res!946430 () Bool)

(assert (=> b!2201554 (=> (not res!946430) (not e!1406707))))

(declare-fun height!1254 (Conc!8364) Int)

(assert (=> b!2201554 (= res!946430 (<= (- 1) (- (height!1254 (left!19717 (c!351068 totalInput!891))) (height!1254 (right!20047 (c!351068 totalInput!891))))))))

(declare-fun b!2201555 () Bool)

(assert (=> b!2201555 (= e!1406707 (not (isEmpty!14645 (right!20047 (c!351068 totalInput!891)))))))

(declare-fun b!2201557 () Bool)

(declare-fun res!946431 () Bool)

(assert (=> b!2201557 (=> (not res!946431) (not e!1406707))))

(assert (=> b!2201557 (= res!946431 (isBalanced!2571 (left!19717 (c!351068 totalInput!891))))))

(declare-fun b!2201558 () Bool)

(declare-fun res!946433 () Bool)

(assert (=> b!2201558 (=> (not res!946433) (not e!1406707))))

(assert (=> b!2201558 (= res!946433 (not (isEmpty!14645 (left!19717 (c!351068 totalInput!891)))))))

(declare-fun b!2201559 () Bool)

(declare-fun res!946435 () Bool)

(assert (=> b!2201559 (=> (not res!946435) (not e!1406707))))

(assert (=> b!2201559 (= res!946435 (<= (- (height!1254 (left!19717 (c!351068 totalInput!891))) (height!1254 (right!20047 (c!351068 totalInput!891)))) 1))))

(declare-fun b!2201556 () Bool)

(declare-fun res!946432 () Bool)

(assert (=> b!2201556 (=> (not res!946432) (not e!1406707))))

(assert (=> b!2201556 (= res!946432 (isBalanced!2571 (right!20047 (c!351068 totalInput!891))))))

(declare-fun d!658550 () Bool)

(declare-fun res!946434 () Bool)

(assert (=> d!658550 (=> res!946434 e!1406706)))

(assert (=> d!658550 (= res!946434 (not (is-Node!8364 (c!351068 totalInput!891))))))

(assert (=> d!658550 (= (isBalanced!2571 (c!351068 totalInput!891)) e!1406706)))

(assert (= (and d!658550 (not res!946434)) b!2201554))

(assert (= (and b!2201554 res!946430) b!2201559))

(assert (= (and b!2201559 res!946435) b!2201557))

(assert (= (and b!2201557 res!946431) b!2201556))

(assert (= (and b!2201556 res!946432) b!2201558))

(assert (= (and b!2201558 res!946433) b!2201555))

(declare-fun m!2644047 () Bool)

(assert (=> b!2201556 m!2644047))

(declare-fun m!2644049 () Bool)

(assert (=> b!2201558 m!2644049))

(declare-fun m!2644051 () Bool)

(assert (=> b!2201559 m!2644051))

(declare-fun m!2644053 () Bool)

(assert (=> b!2201559 m!2644053))

(assert (=> b!2201554 m!2644051))

(assert (=> b!2201554 m!2644053))

(declare-fun m!2644055 () Bool)

(assert (=> b!2201557 m!2644055))

(declare-fun m!2644057 () Bool)

(assert (=> b!2201555 m!2644057))

(assert (=> d!658522 d!658550))

(declare-fun d!658552 () Bool)

(declare-fun c!351142 () Bool)

(assert (=> d!658552 (= c!351142 (is-Node!8364 (left!19717 (c!351068 totalInput!891))))))

(declare-fun e!1406708 () Bool)

(assert (=> d!658552 (= (inv!34492 (left!19717 (c!351068 totalInput!891))) e!1406708)))

(declare-fun b!2201560 () Bool)

(assert (=> b!2201560 (= e!1406708 (inv!34498 (left!19717 (c!351068 totalInput!891))))))

(declare-fun b!2201561 () Bool)

(declare-fun e!1406709 () Bool)

(assert (=> b!2201561 (= e!1406708 e!1406709)))

(declare-fun res!946436 () Bool)

(assert (=> b!2201561 (= res!946436 (not (is-Leaf!12246 (left!19717 (c!351068 totalInput!891)))))))

(assert (=> b!2201561 (=> res!946436 e!1406709)))

(declare-fun b!2201562 () Bool)

(assert (=> b!2201562 (= e!1406709 (inv!34499 (left!19717 (c!351068 totalInput!891))))))

(assert (= (and d!658552 c!351142) b!2201560))

(assert (= (and d!658552 (not c!351142)) b!2201561))

(assert (= (and b!2201561 (not res!946436)) b!2201562))

(declare-fun m!2644059 () Bool)

(assert (=> b!2201560 m!2644059))

(declare-fun m!2644061 () Bool)

(assert (=> b!2201562 m!2644061))

(assert (=> b!2201475 d!658552))

(declare-fun d!658554 () Bool)

(declare-fun c!351143 () Bool)

(assert (=> d!658554 (= c!351143 (is-Node!8364 (right!20047 (c!351068 totalInput!891))))))

(declare-fun e!1406710 () Bool)

(assert (=> d!658554 (= (inv!34492 (right!20047 (c!351068 totalInput!891))) e!1406710)))

(declare-fun b!2201563 () Bool)

(assert (=> b!2201563 (= e!1406710 (inv!34498 (right!20047 (c!351068 totalInput!891))))))

(declare-fun b!2201564 () Bool)

(declare-fun e!1406711 () Bool)

(assert (=> b!2201564 (= e!1406710 e!1406711)))

(declare-fun res!946437 () Bool)

(assert (=> b!2201564 (= res!946437 (not (is-Leaf!12246 (right!20047 (c!351068 totalInput!891)))))))

(assert (=> b!2201564 (=> res!946437 e!1406711)))

(declare-fun b!2201565 () Bool)

(assert (=> b!2201565 (= e!1406711 (inv!34499 (right!20047 (c!351068 totalInput!891))))))

(assert (= (and d!658554 c!351143) b!2201563))

(assert (= (and d!658554 (not c!351143)) b!2201564))

(assert (= (and b!2201564 (not res!946437)) b!2201565))

(declare-fun m!2644063 () Bool)

(assert (=> b!2201563 m!2644063))

(declare-fun m!2644065 () Bool)

(assert (=> b!2201565 m!2644065))

(assert (=> b!2201475 d!658554))

(declare-fun b!2201566 () Bool)

(declare-fun e!1406713 () List!25752)

(assert (=> b!2201566 (= e!1406713 Nil!25668)))

(declare-fun b!2201567 () Bool)

(declare-fun e!1406714 () Bool)

(declare-fun lt!823403 () List!25752)

(declare-fun e!1406712 () Int)

(assert (=> b!2201567 (= e!1406714 (= (size!20001 lt!823403) e!1406712))))

(declare-fun c!351144 () Bool)

(assert (=> b!2201567 (= c!351144 (<= (- knownSize!10 1) 0))))

(declare-fun b!2201568 () Bool)

(declare-fun e!1406715 () Int)

(assert (=> b!2201568 (= e!1406715 (size!20001 (t!198378 (drop!1416 (list!9890 totalInput!891) from!1082))))))

(declare-fun b!2201569 () Bool)

(assert (=> b!2201569 (= e!1406715 (- knownSize!10 1))))

(declare-fun b!2201570 () Bool)

(assert (=> b!2201570 (= e!1406712 e!1406715)))

(declare-fun c!351145 () Bool)

(assert (=> b!2201570 (= c!351145 (>= (- knownSize!10 1) (size!20001 (t!198378 (drop!1416 (list!9890 totalInput!891) from!1082)))))))

(declare-fun b!2201571 () Bool)

(assert (=> b!2201571 (= e!1406712 0)))

(declare-fun d!658556 () Bool)

(assert (=> d!658556 e!1406714))

(declare-fun res!946438 () Bool)

(assert (=> d!658556 (=> (not res!946438) (not e!1406714))))

(assert (=> d!658556 (= res!946438 (set.subset (content!3482 lt!823403) (content!3482 (t!198378 (drop!1416 (list!9890 totalInput!891) from!1082)))))))

(assert (=> d!658556 (= lt!823403 e!1406713)))

(declare-fun c!351146 () Bool)

(assert (=> d!658556 (= c!351146 (or (is-Nil!25668 (t!198378 (drop!1416 (list!9890 totalInput!891) from!1082))) (<= (- knownSize!10 1) 0)))))

(assert (=> d!658556 (= (take!406 (t!198378 (drop!1416 (list!9890 totalInput!891) from!1082)) (- knownSize!10 1)) lt!823403)))

(declare-fun b!2201572 () Bool)

(assert (=> b!2201572 (= e!1406713 (Cons!25668 (h!31069 (t!198378 (drop!1416 (list!9890 totalInput!891) from!1082))) (take!406 (t!198378 (t!198378 (drop!1416 (list!9890 totalInput!891) from!1082))) (- (- knownSize!10 1) 1))))))

(assert (= (and d!658556 c!351146) b!2201566))

(assert (= (and d!658556 (not c!351146)) b!2201572))

(assert (= (and d!658556 res!946438) b!2201567))

(assert (= (and b!2201567 c!351144) b!2201571))

(assert (= (and b!2201567 (not c!351144)) b!2201570))

(assert (= (and b!2201570 c!351145) b!2201568))

(assert (= (and b!2201570 (not c!351145)) b!2201569))

(declare-fun m!2644067 () Bool)

(assert (=> b!2201567 m!2644067))

(declare-fun m!2644069 () Bool)

(assert (=> d!658556 m!2644069))

(declare-fun m!2644071 () Bool)

(assert (=> d!658556 m!2644071))

(declare-fun m!2644073 () Bool)

(assert (=> b!2201570 m!2644073))

(declare-fun m!2644075 () Bool)

(assert (=> b!2201572 m!2644075))

(assert (=> b!2201568 m!2644073))

(assert (=> b!2201379 d!658556))

(declare-fun d!658558 () Bool)

(declare-fun c!351147 () Bool)

(assert (=> d!658558 (= c!351147 (isEmpty!14644 (tail!3173 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10))))))

(declare-fun e!1406716 () Bool)

(assert (=> d!658558 (= (matchZipper!314 (derivationStepZipper!286 z!3888 (head!4695 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10))) (tail!3173 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10))) e!1406716)))

(declare-fun b!2201573 () Bool)

(assert (=> b!2201573 (= e!1406716 (nullableZipper!508 (derivationStepZipper!286 z!3888 (head!4695 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10)))))))

(declare-fun b!2201574 () Bool)

(assert (=> b!2201574 (= e!1406716 (matchZipper!314 (derivationStepZipper!286 (derivationStepZipper!286 z!3888 (head!4695 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10))) (head!4695 (tail!3173 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10)))) (tail!3173 (tail!3173 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10)))))))

(assert (= (and d!658558 c!351147) b!2201573))

(assert (= (and d!658558 (not c!351147)) b!2201574))

(assert (=> d!658558 m!2643927))

(declare-fun m!2644077 () Bool)

(assert (=> d!658558 m!2644077))

(assert (=> b!2201573 m!2643925))

(declare-fun m!2644079 () Bool)

(assert (=> b!2201573 m!2644079))

(assert (=> b!2201574 m!2643927))

(declare-fun m!2644081 () Bool)

(assert (=> b!2201574 m!2644081))

(assert (=> b!2201574 m!2643925))

(assert (=> b!2201574 m!2644081))

(declare-fun m!2644083 () Bool)

(assert (=> b!2201574 m!2644083))

(assert (=> b!2201574 m!2643927))

(declare-fun m!2644085 () Bool)

(assert (=> b!2201574 m!2644085))

(assert (=> b!2201574 m!2644083))

(assert (=> b!2201574 m!2644085))

(declare-fun m!2644087 () Bool)

(assert (=> b!2201574 m!2644087))

(assert (=> b!2201358 d!658558))

(declare-fun d!658560 () Bool)

(assert (=> d!658560 true))

(declare-fun lambda!82934 () Int)

(declare-fun flatMap!161 ((Set Context!3596) Int) (Set Context!3596))

(assert (=> d!658560 (= (derivationStepZipper!286 z!3888 (head!4695 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10))) (flatMap!161 z!3888 lambda!82934))))

(declare-fun bs!450575 () Bool)

(assert (= bs!450575 d!658560))

(declare-fun m!2644089 () Bool)

(assert (=> bs!450575 m!2644089))

(assert (=> b!2201358 d!658560))

(declare-fun d!658562 () Bool)

(assert (=> d!658562 (= (head!4695 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10)) (h!31069 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10)))))

(assert (=> b!2201358 d!658562))

(declare-fun d!658564 () Bool)

(assert (=> d!658564 (= (tail!3173 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10)) (t!198378 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10)))))

(assert (=> b!2201358 d!658564))

(assert (=> b!2201357 d!658520))

(declare-fun d!658566 () Bool)

(declare-fun res!946443 () Bool)

(declare-fun e!1406719 () Bool)

(assert (=> d!658566 (=> (not res!946443) (not e!1406719))))

(declare-fun list!9894 (IArray!16733) List!25752)

(assert (=> d!658566 (= res!946443 (<= (size!20001 (list!9894 (xs!11306 (c!351068 totalInput!891)))) 512))))

(assert (=> d!658566 (= (inv!34499 (c!351068 totalInput!891)) e!1406719)))

(declare-fun b!2201581 () Bool)

(declare-fun res!946444 () Bool)

(assert (=> b!2201581 (=> (not res!946444) (not e!1406719))))

(assert (=> b!2201581 (= res!946444 (= (csize!16959 (c!351068 totalInput!891)) (size!20001 (list!9894 (xs!11306 (c!351068 totalInput!891))))))))

(declare-fun b!2201582 () Bool)

(assert (=> b!2201582 (= e!1406719 (and (> (csize!16959 (c!351068 totalInput!891)) 0) (<= (csize!16959 (c!351068 totalInput!891)) 512)))))

(assert (= (and d!658566 res!946443) b!2201581))

(assert (= (and b!2201581 res!946444) b!2201582))

(declare-fun m!2644091 () Bool)

(assert (=> d!658566 m!2644091))

(assert (=> d!658566 m!2644091))

(declare-fun m!2644093 () Bool)

(assert (=> d!658566 m!2644093))

(assert (=> b!2201581 m!2644091))

(assert (=> b!2201581 m!2644091))

(assert (=> b!2201581 m!2644093))

(assert (=> b!2201352 d!658566))

(declare-fun d!658568 () Bool)

(declare-fun lt!823406 () Int)

(assert (=> d!658568 (>= lt!823406 0)))

(declare-fun e!1406722 () Int)

(assert (=> d!658568 (= lt!823406 e!1406722)))

(declare-fun c!351152 () Bool)

(assert (=> d!658568 (= c!351152 (is-Nil!25668 (drop!1416 (list!9890 totalInput!891) from!1082)))))

(assert (=> d!658568 (= (size!20001 (drop!1416 (list!9890 totalInput!891) from!1082)) lt!823406)))

(declare-fun b!2201587 () Bool)

(assert (=> b!2201587 (= e!1406722 0)))

(declare-fun b!2201588 () Bool)

(assert (=> b!2201588 (= e!1406722 (+ 1 (size!20001 (t!198378 (drop!1416 (list!9890 totalInput!891) from!1082)))))))

(assert (= (and d!658568 c!351152) b!2201587))

(assert (= (and d!658568 (not c!351152)) b!2201588))

(assert (=> b!2201588 m!2644073))

(assert (=> b!2201377 d!658568))

(declare-fun d!658570 () Bool)

(declare-fun res!946449 () Bool)

(declare-fun e!1406727 () Bool)

(assert (=> d!658570 (=> res!946449 e!1406727)))

(assert (=> d!658570 (= res!946449 (is-Nil!25669 (exprs!2298 setElem!18995)))))

(assert (=> d!658570 (= (forall!5245 (exprs!2298 setElem!18995) lambda!82931) e!1406727)))

(declare-fun b!2201593 () Bool)

(declare-fun e!1406728 () Bool)

(assert (=> b!2201593 (= e!1406727 e!1406728)))

(declare-fun res!946450 () Bool)

(assert (=> b!2201593 (=> (not res!946450) (not e!1406728))))

(declare-fun dynLambda!11452 (Int Regex!6228) Bool)

(assert (=> b!2201593 (= res!946450 (dynLambda!11452 lambda!82931 (h!31070 (exprs!2298 setElem!18995))))))

(declare-fun b!2201594 () Bool)

(assert (=> b!2201594 (= e!1406728 (forall!5245 (t!198379 (exprs!2298 setElem!18995)) lambda!82931))))

(assert (= (and d!658570 (not res!946449)) b!2201593))

(assert (= (and b!2201593 res!946450) b!2201594))

(declare-fun b_lambda!71233 () Bool)

(assert (=> (not b_lambda!71233) (not b!2201593)))

(declare-fun m!2644095 () Bool)

(assert (=> b!2201593 m!2644095))

(declare-fun m!2644097 () Bool)

(assert (=> b!2201594 m!2644097))

(assert (=> d!658538 d!658570))

(declare-fun d!658572 () Bool)

(declare-fun lt!823407 () Int)

(assert (=> d!658572 (>= lt!823407 0)))

(declare-fun e!1406729 () Int)

(assert (=> d!658572 (= lt!823407 e!1406729)))

(declare-fun c!351153 () Bool)

(assert (=> d!658572 (= c!351153 (is-Nil!25668 (list!9890 totalInput!891)))))

(assert (=> d!658572 (= (size!20001 (list!9890 totalInput!891)) lt!823407)))

(declare-fun b!2201595 () Bool)

(assert (=> b!2201595 (= e!1406729 0)))

(declare-fun b!2201596 () Bool)

(assert (=> b!2201596 (= e!1406729 (+ 1 (size!20001 (t!198378 (list!9890 totalInput!891)))))))

(assert (= (and d!658572 c!351153) b!2201595))

(assert (= (and d!658572 (not c!351153)) b!2201596))

(declare-fun m!2644099 () Bool)

(assert (=> b!2201596 m!2644099))

(assert (=> d!658524 d!658572))

(assert (=> d!658524 d!658516))

(declare-fun d!658574 () Bool)

(declare-fun lt!823410 () Int)

(assert (=> d!658574 (= lt!823410 (size!20001 (list!9892 (c!351068 totalInput!891))))))

(assert (=> d!658574 (= lt!823410 (ite (is-Empty!8364 (c!351068 totalInput!891)) 0 (ite (is-Leaf!12246 (c!351068 totalInput!891)) (csize!16959 (c!351068 totalInput!891)) (csize!16958 (c!351068 totalInput!891)))))))

(assert (=> d!658574 (= (size!20002 (c!351068 totalInput!891)) lt!823410)))

(declare-fun bs!450576 () Bool)

(assert (= bs!450576 d!658574))

(assert (=> bs!450576 m!2643951))

(assert (=> bs!450576 m!2643951))

(declare-fun m!2644101 () Bool)

(assert (=> bs!450576 m!2644101))

(assert (=> d!658524 d!658574))

(declare-fun d!658576 () Bool)

(declare-fun res!946457 () Bool)

(declare-fun e!1406732 () Bool)

(assert (=> d!658576 (=> (not res!946457) (not e!1406732))))

(assert (=> d!658576 (= res!946457 (= (csize!16958 (c!351068 totalInput!891)) (+ (size!20002 (left!19717 (c!351068 totalInput!891))) (size!20002 (right!20047 (c!351068 totalInput!891))))))))

(assert (=> d!658576 (= (inv!34498 (c!351068 totalInput!891)) e!1406732)))

(declare-fun b!2201603 () Bool)

(declare-fun res!946458 () Bool)

(assert (=> b!2201603 (=> (not res!946458) (not e!1406732))))

(assert (=> b!2201603 (= res!946458 (and (not (= (left!19717 (c!351068 totalInput!891)) Empty!8364)) (not (= (right!20047 (c!351068 totalInput!891)) Empty!8364))))))

(declare-fun b!2201604 () Bool)

(declare-fun res!946459 () Bool)

(assert (=> b!2201604 (=> (not res!946459) (not e!1406732))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2201604 (= res!946459 (= (cheight!8575 (c!351068 totalInput!891)) (+ (max!0 (height!1254 (left!19717 (c!351068 totalInput!891))) (height!1254 (right!20047 (c!351068 totalInput!891)))) 1)))))

(declare-fun b!2201605 () Bool)

(assert (=> b!2201605 (= e!1406732 (<= 0 (cheight!8575 (c!351068 totalInput!891))))))

(assert (= (and d!658576 res!946457) b!2201603))

(assert (= (and b!2201603 res!946458) b!2201604))

(assert (= (and b!2201604 res!946459) b!2201605))

(declare-fun m!2644103 () Bool)

(assert (=> d!658576 m!2644103))

(declare-fun m!2644105 () Bool)

(assert (=> d!658576 m!2644105))

(assert (=> b!2201604 m!2644051))

(assert (=> b!2201604 m!2644053))

(assert (=> b!2201604 m!2644051))

(assert (=> b!2201604 m!2644053))

(declare-fun m!2644107 () Bool)

(assert (=> b!2201604 m!2644107))

(assert (=> b!2201350 d!658576))

(declare-fun d!658578 () Bool)

(assert (=> d!658578 (= (isEmpty!14644 (list!9890 totalInput!891)) (is-Nil!25668 (list!9890 totalInput!891)))))

(assert (=> d!658518 d!658578))

(assert (=> d!658518 d!658516))

(declare-fun d!658580 () Bool)

(declare-fun lt!823413 () Bool)

(assert (=> d!658580 (= lt!823413 (isEmpty!14644 (list!9892 (c!351068 totalInput!891))))))

(assert (=> d!658580 (= lt!823413 (= (size!20002 (c!351068 totalInput!891)) 0))))

(assert (=> d!658580 (= (isEmpty!14645 (c!351068 totalInput!891)) lt!823413)))

(declare-fun bs!450577 () Bool)

(assert (= bs!450577 d!658580))

(assert (=> bs!450577 m!2643951))

(assert (=> bs!450577 m!2643951))

(declare-fun m!2644109 () Bool)

(assert (=> bs!450577 m!2644109))

(assert (=> bs!450577 m!2643963))

(assert (=> d!658518 d!658580))

(assert (=> b!2201375 d!658568))

(declare-fun d!658582 () Bool)

(declare-fun lt!823414 () Int)

(assert (=> d!658582 (>= lt!823414 0)))

(declare-fun e!1406733 () Int)

(assert (=> d!658582 (= lt!823414 e!1406733)))

(declare-fun c!351154 () Bool)

(assert (=> d!658582 (= c!351154 (is-Nil!25668 lt!823369))))

(assert (=> d!658582 (= (size!20001 lt!823369) lt!823414)))

(declare-fun b!2201606 () Bool)

(assert (=> b!2201606 (= e!1406733 0)))

(declare-fun b!2201607 () Bool)

(assert (=> b!2201607 (= e!1406733 (+ 1 (size!20001 (t!198378 lt!823369))))))

(assert (= (and d!658582 c!351154) b!2201606))

(assert (= (and d!658582 (not c!351154)) b!2201607))

(declare-fun m!2644111 () Bool)

(assert (=> b!2201607 m!2644111))

(assert (=> b!2201374 d!658582))

(declare-fun bs!450578 () Bool)

(declare-fun d!658584 () Bool)

(assert (= bs!450578 (and d!658584 d!658538)))

(declare-fun lambda!82935 () Int)

(assert (=> bs!450578 (= lambda!82935 lambda!82931)))

(assert (=> d!658584 (= (inv!34493 setElem!19001) (forall!5245 (exprs!2298 setElem!19001) lambda!82935))))

(declare-fun bs!450579 () Bool)

(assert (= bs!450579 d!658584))

(declare-fun m!2644113 () Bool)

(assert (=> bs!450579 m!2644113))

(assert (=> setNonEmpty!19001 d!658584))

(assert (=> b!2201304 d!658508))

(declare-fun d!658586 () Bool)

(declare-fun lt!823415 () Int)

(assert (=> d!658586 (>= lt!823415 0)))

(declare-fun e!1406734 () Int)

(assert (=> d!658586 (= lt!823415 e!1406734)))

(declare-fun c!351155 () Bool)

(assert (=> d!658586 (= c!351155 (is-Nil!25668 lt!823372))))

(assert (=> d!658586 (= (size!20001 lt!823372) lt!823415)))

(declare-fun b!2201608 () Bool)

(assert (=> b!2201608 (= e!1406734 0)))

(declare-fun b!2201609 () Bool)

(assert (=> b!2201609 (= e!1406734 (+ 1 (size!20001 (t!198378 lt!823372))))))

(assert (= (and d!658586 c!351155) b!2201608))

(assert (= (and d!658586 (not c!351155)) b!2201609))

(declare-fun m!2644115 () Bool)

(assert (=> b!2201609 m!2644115))

(assert (=> b!2201399 d!658586))

(declare-fun b!2201620 () Bool)

(declare-fun e!1406740 () List!25752)

(assert (=> b!2201620 (= e!1406740 (list!9894 (xs!11306 (c!351068 totalInput!891))))))

(declare-fun d!658588 () Bool)

(declare-fun c!351160 () Bool)

(assert (=> d!658588 (= c!351160 (is-Empty!8364 (c!351068 totalInput!891)))))

(declare-fun e!1406739 () List!25752)

(assert (=> d!658588 (= (list!9892 (c!351068 totalInput!891)) e!1406739)))

(declare-fun b!2201618 () Bool)

(assert (=> b!2201618 (= e!1406739 Nil!25668)))

(declare-fun b!2201621 () Bool)

(declare-fun ++!6427 (List!25752 List!25752) List!25752)

(assert (=> b!2201621 (= e!1406740 (++!6427 (list!9892 (left!19717 (c!351068 totalInput!891))) (list!9892 (right!20047 (c!351068 totalInput!891)))))))

(declare-fun b!2201619 () Bool)

(assert (=> b!2201619 (= e!1406739 e!1406740)))

(declare-fun c!351161 () Bool)

(assert (=> b!2201619 (= c!351161 (is-Leaf!12246 (c!351068 totalInput!891)))))

(assert (= (and d!658588 c!351160) b!2201618))

(assert (= (and d!658588 (not c!351160)) b!2201619))

(assert (= (and b!2201619 c!351161) b!2201620))

(assert (= (and b!2201619 (not c!351161)) b!2201621))

(assert (=> b!2201620 m!2644091))

(declare-fun m!2644117 () Bool)

(assert (=> b!2201621 m!2644117))

(declare-fun m!2644119 () Bool)

(assert (=> b!2201621 m!2644119))

(assert (=> b!2201621 m!2644117))

(assert (=> b!2201621 m!2644119))

(declare-fun m!2644121 () Bool)

(assert (=> b!2201621 m!2644121))

(assert (=> d!658516 d!658588))

(declare-fun d!658590 () Bool)

(declare-fun lt!823418 () Bool)

(declare-datatypes ((List!25756 0))(
  ( (Nil!25672) (Cons!25672 (h!31073 Context!3596) (t!198390 List!25756)) )
))
(declare-fun exists!835 (List!25756 Int) Bool)

(declare-fun toList!1266 ((Set Context!3596)) List!25756)

(assert (=> d!658590 (= lt!823418 (exists!835 (toList!1266 z!3888) lambda!82922))))

(declare-fun choose!13024 ((Set Context!3596) Int) Bool)

(assert (=> d!658590 (= lt!823418 (choose!13024 z!3888 lambda!82922))))

(assert (=> d!658590 (= (exists!833 z!3888 lambda!82922) lt!823418)))

(declare-fun bs!450580 () Bool)

(assert (= bs!450580 d!658590))

(declare-fun m!2644123 () Bool)

(assert (=> bs!450580 m!2644123))

(assert (=> bs!450580 m!2644123))

(declare-fun m!2644125 () Bool)

(assert (=> bs!450580 m!2644125))

(declare-fun m!2644127 () Bool)

(assert (=> bs!450580 m!2644127))

(assert (=> d!658520 d!658590))

(declare-fun d!658592 () Bool)

(assert (=> d!658592 (= (inv!34500 (xs!11306 (c!351068 totalInput!891))) (<= (size!20001 (innerList!8424 (xs!11306 (c!351068 totalInput!891)))) 2147483647))))

(declare-fun bs!450581 () Bool)

(assert (= bs!450581 d!658592))

(declare-fun m!2644129 () Bool)

(assert (=> bs!450581 m!2644129))

(assert (=> b!2201476 d!658592))

(declare-fun bs!450582 () Bool)

(declare-fun d!658594 () Bool)

(assert (= bs!450582 (and d!658594 d!658520)))

(declare-fun lambda!82948 () Int)

(assert (=> bs!450582 (not (= lambda!82948 lambda!82922))))

(declare-fun bs!450583 () Bool)

(declare-fun b!2201626 () Bool)

(assert (= bs!450583 (and b!2201626 d!658520)))

(declare-fun lambda!82949 () Int)

(assert (=> bs!450583 (not (= lambda!82949 lambda!82922))))

(declare-fun bs!450584 () Bool)

(assert (= bs!450584 (and b!2201626 d!658594)))

(assert (=> bs!450584 (not (= lambda!82949 lambda!82948))))

(declare-fun bs!450585 () Bool)

(declare-fun b!2201627 () Bool)

(assert (= bs!450585 (and b!2201627 d!658520)))

(declare-fun lambda!82950 () Int)

(assert (=> bs!450585 (not (= lambda!82950 lambda!82922))))

(declare-fun bs!450586 () Bool)

(assert (= bs!450586 (and b!2201627 d!658594)))

(assert (=> bs!450586 (not (= lambda!82950 lambda!82948))))

(declare-fun bs!450587 () Bool)

(assert (= bs!450587 (and b!2201627 b!2201626)))

(assert (=> bs!450587 (= lambda!82950 lambda!82949)))

(declare-fun bm!132124 () Bool)

(declare-fun call!132129 () Bool)

(declare-fun lt!823437 () List!25756)

(declare-fun lt!823439 () List!25756)

(declare-fun c!351172 () Bool)

(assert (=> bm!132124 (= call!132129 (exists!835 (ite c!351172 lt!823439 lt!823437) (ite c!351172 lambda!82949 lambda!82950)))))

(declare-datatypes ((Unit!38765 0))(
  ( (Unit!38766) )
))
(declare-fun e!1406747 () Unit!38765)

(declare-fun Unit!38767 () Unit!38765)

(assert (=> b!2201627 (= e!1406747 Unit!38767)))

(declare-fun call!132130 () List!25756)

(assert (=> b!2201627 (= lt!823437 call!132130)))

(declare-fun lt!823442 () Unit!38765)

(declare-fun lemmaForallThenNotExists!54 (List!25756 Int) Unit!38765)

(assert (=> b!2201627 (= lt!823442 (lemmaForallThenNotExists!54 lt!823437 lambda!82948))))

(assert (=> b!2201627 (not call!132129)))

(declare-fun lt!823441 () Unit!38765)

(assert (=> b!2201627 (= lt!823441 lt!823442)))

(declare-fun lt!823440 () Bool)

(declare-datatypes ((Option!5029 0))(
  ( (None!5028) (Some!5028 (v!29425 List!25752)) )
))
(declare-fun isEmpty!14649 (Option!5029) Bool)

(declare-fun getLanguageWitness!152 ((Set Context!3596)) Option!5029)

(assert (=> d!658594 (= lt!823440 (isEmpty!14649 (getLanguageWitness!152 z!3888)))))

(declare-fun forall!5247 ((Set Context!3596) Int) Bool)

(assert (=> d!658594 (= lt!823440 (forall!5247 z!3888 lambda!82948))))

(declare-fun lt!823438 () Unit!38765)

(assert (=> d!658594 (= lt!823438 e!1406747)))

(assert (=> d!658594 (= c!351172 (not (forall!5247 z!3888 lambda!82948)))))

(assert (=> d!658594 (= (lostCauseZipper!336 z!3888) lt!823440)))

(declare-fun Unit!38768 () Unit!38765)

(assert (=> b!2201626 (= e!1406747 Unit!38768)))

(assert (=> b!2201626 (= lt!823439 call!132130)))

(declare-fun lt!823435 () Unit!38765)

(declare-fun lemmaNotForallThenExists!54 (List!25756 Int) Unit!38765)

(assert (=> b!2201626 (= lt!823435 (lemmaNotForallThenExists!54 lt!823439 lambda!82948))))

(assert (=> b!2201626 call!132129))

(declare-fun lt!823436 () Unit!38765)

(assert (=> b!2201626 (= lt!823436 lt!823435)))

(declare-fun bm!132125 () Bool)

(assert (=> bm!132125 (= call!132130 (toList!1266 z!3888))))

(assert (= (and d!658594 c!351172) b!2201626))

(assert (= (and d!658594 (not c!351172)) b!2201627))

(assert (= (or b!2201626 b!2201627) bm!132124))

(assert (= (or b!2201626 b!2201627) bm!132125))

(declare-fun m!2644131 () Bool)

(assert (=> d!658594 m!2644131))

(assert (=> d!658594 m!2644131))

(declare-fun m!2644133 () Bool)

(assert (=> d!658594 m!2644133))

(declare-fun m!2644135 () Bool)

(assert (=> d!658594 m!2644135))

(assert (=> d!658594 m!2644135))

(declare-fun m!2644137 () Bool)

(assert (=> bm!132124 m!2644137))

(declare-fun m!2644139 () Bool)

(assert (=> b!2201626 m!2644139))

(declare-fun m!2644141 () Bool)

(assert (=> b!2201627 m!2644141))

(assert (=> bm!132125 m!2644123))

(assert (=> b!2201446 d!658594))

(assert (=> bm!132116 d!658572))

(declare-fun d!658598 () Bool)

(declare-fun c!351175 () Bool)

(assert (=> d!658598 (= c!351175 (is-Nil!25668 lt!823372))))

(declare-fun e!1406750 () (Set C!12602))

(assert (=> d!658598 (= (content!3482 lt!823372) e!1406750)))

(declare-fun b!2201632 () Bool)

(assert (=> b!2201632 (= e!1406750 (as set.empty (Set C!12602)))))

(declare-fun b!2201633 () Bool)

(assert (=> b!2201633 (= e!1406750 (set.union (set.insert (h!31069 lt!823372) (as set.empty (Set C!12602))) (content!3482 (t!198378 lt!823372))))))

(assert (= (and d!658598 c!351175) b!2201632))

(assert (= (and d!658598 (not c!351175)) b!2201633))

(declare-fun m!2644143 () Bool)

(assert (=> b!2201633 m!2644143))

(declare-fun m!2644145 () Bool)

(assert (=> b!2201633 m!2644145))

(assert (=> d!658514 d!658598))

(declare-fun d!658600 () Bool)

(declare-fun c!351176 () Bool)

(assert (=> d!658600 (= c!351176 (is-Nil!25668 (list!9890 totalInput!891)))))

(declare-fun e!1406751 () (Set C!12602))

(assert (=> d!658600 (= (content!3482 (list!9890 totalInput!891)) e!1406751)))

(declare-fun b!2201634 () Bool)

(assert (=> b!2201634 (= e!1406751 (as set.empty (Set C!12602)))))

(declare-fun b!2201635 () Bool)

(assert (=> b!2201635 (= e!1406751 (set.union (set.insert (h!31069 (list!9890 totalInput!891)) (as set.empty (Set C!12602))) (content!3482 (t!198378 (list!9890 totalInput!891)))))))

(assert (= (and d!658600 c!351176) b!2201634))

(assert (= (and d!658600 (not c!351176)) b!2201635))

(declare-fun m!2644147 () Bool)

(assert (=> b!2201635 m!2644147))

(declare-fun m!2644149 () Bool)

(assert (=> b!2201635 m!2644149))

(assert (=> d!658514 d!658600))

(declare-fun d!658602 () Bool)

(declare-fun c!351177 () Bool)

(assert (=> d!658602 (= c!351177 (is-Nil!25668 lt!823369))))

(declare-fun e!1406752 () (Set C!12602))

(assert (=> d!658602 (= (content!3482 lt!823369) e!1406752)))

(declare-fun b!2201636 () Bool)

(assert (=> b!2201636 (= e!1406752 (as set.empty (Set C!12602)))))

(declare-fun b!2201637 () Bool)

(assert (=> b!2201637 (= e!1406752 (set.union (set.insert (h!31069 lt!823369) (as set.empty (Set C!12602))) (content!3482 (t!198378 lt!823369))))))

(assert (= (and d!658602 c!351177) b!2201636))

(assert (= (and d!658602 (not c!351177)) b!2201637))

(declare-fun m!2644151 () Bool)

(assert (=> b!2201637 m!2644151))

(declare-fun m!2644153 () Bool)

(assert (=> b!2201637 m!2644153))

(assert (=> d!658512 d!658602))

(declare-fun d!658604 () Bool)

(declare-fun c!351178 () Bool)

(assert (=> d!658604 (= c!351178 (is-Nil!25668 (drop!1416 (list!9890 totalInput!891) from!1082)))))

(declare-fun e!1406753 () (Set C!12602))

(assert (=> d!658604 (= (content!3482 (drop!1416 (list!9890 totalInput!891) from!1082)) e!1406753)))

(declare-fun b!2201638 () Bool)

(assert (=> b!2201638 (= e!1406753 (as set.empty (Set C!12602)))))

(declare-fun b!2201639 () Bool)

(assert (=> b!2201639 (= e!1406753 (set.union (set.insert (h!31069 (drop!1416 (list!9890 totalInput!891) from!1082)) (as set.empty (Set C!12602))) (content!3482 (t!198378 (drop!1416 (list!9890 totalInput!891) from!1082)))))))

(assert (= (and d!658604 c!351178) b!2201638))

(assert (= (and d!658604 (not c!351178)) b!2201639))

(declare-fun m!2644155 () Bool)

(assert (=> b!2201639 m!2644155))

(assert (=> b!2201639 m!2644071))

(assert (=> d!658512 d!658604))

(declare-fun b!2201640 () Bool)

(declare-fun e!1406754 () Int)

(declare-fun call!132131 () Int)

(assert (=> b!2201640 (= e!1406754 call!132131)))

(declare-fun b!2201641 () Bool)

(declare-fun e!1406756 () Bool)

(declare-fun lt!823443 () List!25752)

(assert (=> b!2201641 (= e!1406756 (= (size!20001 lt!823443) e!1406754))))

(declare-fun c!351180 () Bool)

(assert (=> b!2201641 (= c!351180 (<= (- from!1082 1) 0))))

(declare-fun b!2201642 () Bool)

(declare-fun e!1406755 () List!25752)

(assert (=> b!2201642 (= e!1406755 (drop!1416 (t!198378 (t!198378 (list!9890 totalInput!891))) (- (- from!1082 1) 1)))))

(declare-fun b!2201643 () Bool)

(declare-fun e!1406758 () Int)

(assert (=> b!2201643 (= e!1406758 0)))

(declare-fun bm!132126 () Bool)

(assert (=> bm!132126 (= call!132131 (size!20001 (t!198378 (list!9890 totalInput!891))))))

(declare-fun b!2201644 () Bool)

(assert (=> b!2201644 (= e!1406754 e!1406758)))

(declare-fun c!351182 () Bool)

(assert (=> b!2201644 (= c!351182 (>= (- from!1082 1) call!132131))))

(declare-fun b!2201645 () Bool)

(declare-fun e!1406757 () List!25752)

(assert (=> b!2201645 (= e!1406757 Nil!25668)))

(declare-fun d!658606 () Bool)

(assert (=> d!658606 e!1406756))

(declare-fun res!946460 () Bool)

(assert (=> d!658606 (=> (not res!946460) (not e!1406756))))

(assert (=> d!658606 (= res!946460 (set.subset (content!3482 lt!823443) (content!3482 (t!198378 (list!9890 totalInput!891)))))))

(assert (=> d!658606 (= lt!823443 e!1406757)))

(declare-fun c!351179 () Bool)

(assert (=> d!658606 (= c!351179 (is-Nil!25668 (t!198378 (list!9890 totalInput!891))))))

(assert (=> d!658606 (= (drop!1416 (t!198378 (list!9890 totalInput!891)) (- from!1082 1)) lt!823443)))

(declare-fun b!2201646 () Bool)

(assert (=> b!2201646 (= e!1406758 (- call!132131 (- from!1082 1)))))

(declare-fun b!2201647 () Bool)

(assert (=> b!2201647 (= e!1406755 (t!198378 (list!9890 totalInput!891)))))

(declare-fun b!2201648 () Bool)

(assert (=> b!2201648 (= e!1406757 e!1406755)))

(declare-fun c!351181 () Bool)

(assert (=> b!2201648 (= c!351181 (<= (- from!1082 1) 0))))

(assert (= (and d!658606 c!351179) b!2201645))

(assert (= (and d!658606 (not c!351179)) b!2201648))

(assert (= (and b!2201648 c!351181) b!2201647))

(assert (= (and b!2201648 (not c!351181)) b!2201642))

(assert (= (and d!658606 res!946460) b!2201641))

(assert (= (and b!2201641 c!351180) b!2201640))

(assert (= (and b!2201641 (not c!351180)) b!2201644))

(assert (= (and b!2201644 c!351182) b!2201643))

(assert (= (and b!2201644 (not c!351182)) b!2201646))

(assert (= (or b!2201640 b!2201644 b!2201646) bm!132126))

(declare-fun m!2644157 () Bool)

(assert (=> b!2201641 m!2644157))

(declare-fun m!2644159 () Bool)

(assert (=> b!2201642 m!2644159))

(assert (=> bm!132126 m!2644099))

(declare-fun m!2644161 () Bool)

(assert (=> d!658606 m!2644161))

(assert (=> d!658606 m!2644149))

(assert (=> b!2201400 d!658606))

(declare-fun b!2201649 () Bool)

(declare-fun e!1406760 () Int)

(assert (=> b!2201649 (= e!1406760 e!1406645)))

(declare-fun b!2201650 () Bool)

(declare-fun e!1406759 () Int)

(assert (=> b!2201650 (= e!1406759 (+ from!1082 1))))

(declare-fun b!2201651 () Bool)

(declare-fun e!1406761 () Bool)

(assert (=> b!2201651 (= e!1406761 (lostCauseZipper!336 lt!823390))))

(declare-fun b!2201652 () Bool)

(assert (=> b!2201652 (= e!1406759 e!1406645)))

(declare-fun lt!823445 () (Set Context!3596))

(declare-fun b!2201653 () Bool)

(assert (=> b!2201653 (= e!1406760 (furthestNullablePosition!378 lt!823445 (+ from!1082 1 1) totalInput!891 lt!823363 e!1406759))))

(assert (=> b!2201653 (= lt!823445 (derivationStepZipper!286 lt!823390 (apply!6310 totalInput!891 (+ from!1082 1))))))

(declare-fun c!351184 () Bool)

(assert (=> b!2201653 (= c!351184 (nullableZipper!508 lt!823445))))

(declare-fun d!658608 () Bool)

(declare-fun lt!823444 () Int)

(assert (=> d!658608 (and (>= lt!823444 (- 1)) (< lt!823444 lt!823363) (>= lt!823444 e!1406645) (or (= lt!823444 e!1406645) (>= lt!823444 (+ from!1082 1))))))

(assert (=> d!658608 (= lt!823444 e!1406760)))

(declare-fun c!351183 () Bool)

(assert (=> d!658608 (= c!351183 e!1406761)))

(declare-fun res!946461 () Bool)

(assert (=> d!658608 (=> res!946461 e!1406761)))

(assert (=> d!658608 (= res!946461 (= (+ from!1082 1) lt!823363))))

(assert (=> d!658608 (and (>= (+ from!1082 1) 0) (<= (+ from!1082 1) lt!823363))))

(assert (=> d!658608 (= (furthestNullablePosition!378 lt!823390 (+ from!1082 1) totalInput!891 lt!823363 e!1406645) lt!823444)))

(assert (= (and d!658608 (not res!946461)) b!2201651))

(assert (= (and d!658608 c!351183) b!2201649))

(assert (= (and d!658608 (not c!351183)) b!2201653))

(assert (= (and b!2201653 c!351184) b!2201650))

(assert (= (and b!2201653 (not c!351184)) b!2201652))

(declare-fun m!2644163 () Bool)

(assert (=> b!2201651 m!2644163))

(declare-fun m!2644165 () Bool)

(assert (=> b!2201653 m!2644165))

(declare-fun m!2644167 () Bool)

(assert (=> b!2201653 m!2644167))

(assert (=> b!2201653 m!2644167))

(declare-fun m!2644169 () Bool)

(assert (=> b!2201653 m!2644169))

(declare-fun m!2644171 () Bool)

(assert (=> b!2201653 m!2644171))

(assert (=> b!2201448 d!658608))

(declare-fun bs!450588 () Bool)

(declare-fun d!658610 () Bool)

(assert (= bs!450588 (and d!658610 d!658560)))

(declare-fun lambda!82951 () Int)

(assert (=> bs!450588 (= (= (apply!6310 totalInput!891 from!1082) (head!4695 (take!406 (drop!1416 (list!9890 totalInput!891) from!1082) knownSize!10))) (= lambda!82951 lambda!82934))))

(assert (=> d!658610 true))

(assert (=> d!658610 (= (derivationStepZipper!286 z!3888 (apply!6310 totalInput!891 from!1082)) (flatMap!161 z!3888 lambda!82951))))

(declare-fun bs!450589 () Bool)

(assert (= bs!450589 d!658610))

(declare-fun m!2644173 () Bool)

(assert (=> bs!450589 m!2644173))

(assert (=> b!2201448 d!658610))

(declare-fun d!658612 () Bool)

(declare-fun lt!823464 () C!12602)

(declare-fun apply!6314 (List!25752 Int) C!12602)

(assert (=> d!658612 (= lt!823464 (apply!6314 (list!9890 totalInput!891) from!1082))))

(declare-fun apply!6315 (Conc!8364 Int) C!12602)

(assert (=> d!658612 (= lt!823464 (apply!6315 (c!351068 totalInput!891) from!1082))))

(declare-fun e!1406770 () Bool)

(assert (=> d!658612 e!1406770))

(declare-fun res!946464 () Bool)

(assert (=> d!658612 (=> (not res!946464) (not e!1406770))))

(assert (=> d!658612 (= res!946464 (<= 0 from!1082))))

(assert (=> d!658612 (= (apply!6310 totalInput!891 from!1082) lt!823464)))

(declare-fun b!2201660 () Bool)

(assert (=> b!2201660 (= e!1406770 (< from!1082 (size!19999 totalInput!891)))))

(assert (= (and d!658612 res!946464) b!2201660))

(assert (=> d!658612 m!2643885))

(assert (=> d!658612 m!2643885))

(declare-fun m!2644175 () Bool)

(assert (=> d!658612 m!2644175))

(declare-fun m!2644177 () Bool)

(assert (=> d!658612 m!2644177))

(assert (=> b!2201660 m!2643871))

(assert (=> b!2201448 d!658612))

(declare-fun bs!450590 () Bool)

(declare-fun d!658614 () Bool)

(assert (= bs!450590 (and d!658614 d!658520)))

(declare-fun lambda!82964 () Int)

(assert (=> bs!450590 (= lambda!82964 lambda!82922)))

(declare-fun bs!450591 () Bool)

(assert (= bs!450591 (and d!658614 d!658594)))

(assert (=> bs!450591 (not (= lambda!82964 lambda!82948))))

(declare-fun bs!450592 () Bool)

(assert (= bs!450592 (and d!658614 b!2201626)))

(assert (=> bs!450592 (not (= lambda!82964 lambda!82949))))

(declare-fun bs!450593 () Bool)

(assert (= bs!450593 (and d!658614 b!2201627)))

(assert (=> bs!450593 (not (= lambda!82964 lambda!82950))))

(assert (=> d!658614 (= (nullableZipper!508 lt!823390) (exists!833 lt!823390 lambda!82964))))

(declare-fun bs!450594 () Bool)

(assert (= bs!450594 d!658614))

(declare-fun m!2644179 () Bool)

(assert (=> bs!450594 m!2644179))

(assert (=> b!2201448 d!658614))

(declare-fun b!2201667 () Bool)

(declare-fun e!1406774 () Bool)

(declare-fun tp_is_empty!9739 () Bool)

(declare-fun tp!685023 () Bool)

(assert (=> b!2201667 (= e!1406774 (and tp_is_empty!9739 tp!685023))))

(assert (=> b!2201477 (= tp!684987 e!1406774)))

(assert (= (and b!2201477 (is-Cons!25668 (innerList!8424 (xs!11306 (c!351068 totalInput!891))))) b!2201667))

(declare-fun tp!685024 () Bool)

(declare-fun e!1406775 () Bool)

(declare-fun tp!685025 () Bool)

(declare-fun b!2201668 () Bool)

(assert (=> b!2201668 (= e!1406775 (and (inv!34492 (left!19717 (left!19717 (c!351068 totalInput!891)))) tp!685024 (inv!34492 (right!20047 (left!19717 (c!351068 totalInput!891)))) tp!685025))))

(declare-fun b!2201670 () Bool)

(declare-fun e!1406776 () Bool)

(declare-fun tp!685026 () Bool)

(assert (=> b!2201670 (= e!1406776 tp!685026)))

(declare-fun b!2201669 () Bool)

(assert (=> b!2201669 (= e!1406775 (and (inv!34500 (xs!11306 (left!19717 (c!351068 totalInput!891)))) e!1406776))))

(assert (=> b!2201475 (= tp!684985 (and (inv!34492 (left!19717 (c!351068 totalInput!891))) e!1406775))))

(assert (= (and b!2201475 (is-Node!8364 (left!19717 (c!351068 totalInput!891)))) b!2201668))

(assert (= b!2201669 b!2201670))

(assert (= (and b!2201475 (is-Leaf!12246 (left!19717 (c!351068 totalInput!891)))) b!2201669))

(declare-fun m!2644181 () Bool)

(assert (=> b!2201668 m!2644181))

(declare-fun m!2644183 () Bool)

(assert (=> b!2201668 m!2644183))

(declare-fun m!2644185 () Bool)

(assert (=> b!2201669 m!2644185))

(assert (=> b!2201475 m!2644003))

(declare-fun e!1406777 () Bool)

(declare-fun tp!685027 () Bool)

(declare-fun tp!685028 () Bool)

(declare-fun b!2201671 () Bool)

(assert (=> b!2201671 (= e!1406777 (and (inv!34492 (left!19717 (right!20047 (c!351068 totalInput!891)))) tp!685027 (inv!34492 (right!20047 (right!20047 (c!351068 totalInput!891)))) tp!685028))))

(declare-fun b!2201673 () Bool)

(declare-fun e!1406778 () Bool)

(declare-fun tp!685029 () Bool)

(assert (=> b!2201673 (= e!1406778 tp!685029)))

(declare-fun b!2201672 () Bool)

(assert (=> b!2201672 (= e!1406777 (and (inv!34500 (xs!11306 (right!20047 (c!351068 totalInput!891)))) e!1406778))))

(assert (=> b!2201475 (= tp!684986 (and (inv!34492 (right!20047 (c!351068 totalInput!891))) e!1406777))))

(assert (= (and b!2201475 (is-Node!8364 (right!20047 (c!351068 totalInput!891)))) b!2201671))

(assert (= b!2201672 b!2201673))

(assert (= (and b!2201475 (is-Leaf!12246 (right!20047 (c!351068 totalInput!891)))) b!2201672))

(declare-fun m!2644187 () Bool)

(assert (=> b!2201671 m!2644187))

(declare-fun m!2644189 () Bool)

(assert (=> b!2201671 m!2644189))

(declare-fun m!2644191 () Bool)

(assert (=> b!2201672 m!2644191))

(assert (=> b!2201475 m!2644005))

(declare-fun b!2201674 () Bool)

(declare-fun e!1406779 () Bool)

(declare-fun tp!685030 () Bool)

(declare-fun tp!685031 () Bool)

(assert (=> b!2201674 (= e!1406779 (and tp!685030 tp!685031))))

(assert (=> b!2201496 (= tp!684998 e!1406779)))

(assert (= (and b!2201496 (is-Cons!25669 (exprs!2298 setElem!19001))) b!2201674))

(declare-fun b!2201686 () Bool)

(declare-fun e!1406782 () Bool)

(declare-fun tp!685042 () Bool)

(declare-fun tp!685043 () Bool)

(assert (=> b!2201686 (= e!1406782 (and tp!685042 tp!685043))))

(declare-fun b!2201687 () Bool)

(declare-fun tp!685045 () Bool)

(assert (=> b!2201687 (= e!1406782 tp!685045)))

(assert (=> b!2201491 (= tp!684992 e!1406782)))

(declare-fun b!2201685 () Bool)

(assert (=> b!2201685 (= e!1406782 tp_is_empty!9739)))

(declare-fun b!2201688 () Bool)

(declare-fun tp!685046 () Bool)

(declare-fun tp!685044 () Bool)

(assert (=> b!2201688 (= e!1406782 (and tp!685046 tp!685044))))

(assert (= (and b!2201491 (is-ElementMatch!6228 (h!31070 (exprs!2298 setElem!18995)))) b!2201685))

(assert (= (and b!2201491 (is-Concat!10530 (h!31070 (exprs!2298 setElem!18995)))) b!2201686))

(assert (= (and b!2201491 (is-Star!6228 (h!31070 (exprs!2298 setElem!18995)))) b!2201687))

(assert (= (and b!2201491 (is-Union!6228 (h!31070 (exprs!2298 setElem!18995)))) b!2201688))

(declare-fun b!2201689 () Bool)

(declare-fun e!1406783 () Bool)

(declare-fun tp!685047 () Bool)

(declare-fun tp!685048 () Bool)

(assert (=> b!2201689 (= e!1406783 (and tp!685047 tp!685048))))

(assert (=> b!2201491 (= tp!684993 e!1406783)))

(assert (= (and b!2201491 (is-Cons!25669 (t!198379 (exprs!2298 setElem!18995)))) b!2201689))

(declare-fun condSetEmpty!19005 () Bool)

(assert (=> setNonEmpty!19001 (= condSetEmpty!19005 (= setRest!19001 (as set.empty (Set Context!3596))))))

(declare-fun setRes!19005 () Bool)

(assert (=> setNonEmpty!19001 (= tp!684999 setRes!19005)))

(declare-fun setIsEmpty!19005 () Bool)

(assert (=> setIsEmpty!19005 setRes!19005))

(declare-fun tp!685050 () Bool)

(declare-fun e!1406784 () Bool)

(declare-fun setNonEmpty!19005 () Bool)

(declare-fun setElem!19005 () Context!3596)

(assert (=> setNonEmpty!19005 (= setRes!19005 (and tp!685050 (inv!34493 setElem!19005) e!1406784))))

(declare-fun setRest!19005 () (Set Context!3596))

(assert (=> setNonEmpty!19005 (= setRest!19001 (set.union (set.insert setElem!19005 (as set.empty (Set Context!3596))) setRest!19005))))

(declare-fun b!2201690 () Bool)

(declare-fun tp!685049 () Bool)

(assert (=> b!2201690 (= e!1406784 tp!685049)))

(assert (= (and setNonEmpty!19001 condSetEmpty!19005) setIsEmpty!19005))

(assert (= (and setNonEmpty!19001 (not condSetEmpty!19005)) setNonEmpty!19005))

(assert (= setNonEmpty!19005 b!2201690))

(declare-fun m!2644207 () Bool)

(assert (=> setNonEmpty!19005 m!2644207))

(declare-fun b_lambda!71235 () Bool)

(assert (= b_lambda!71233 (or d!658538 b_lambda!71235)))

(declare-fun bs!450601 () Bool)

(declare-fun d!658618 () Bool)

(assert (= bs!450601 (and d!658618 d!658538)))

(declare-fun validRegex!2342 (Regex!6228) Bool)

(assert (=> bs!450601 (= (dynLambda!11452 lambda!82931 (h!31070 (exprs!2298 setElem!18995))) (validRegex!2342 (h!31070 (exprs!2298 setElem!18995))))))

(declare-fun m!2644209 () Bool)

(assert (=> bs!450601 m!2644209))

(assert (=> b!2201593 d!658618))

(push 1)

(assert (not b_lambda!71235))

(assert (not b!2201674))

(assert (not b!2201563))

(assert (not b!2201588))

(assert (not bm!132124))

(assert (not d!658580))

(assert (not b!2201688))

(assert (not b!2201581))

(assert (not b!2201668))

(assert (not b!2201562))

(assert (not d!658576))

(assert (not b!2201557))

(assert (not b!2201554))

(assert (not b!2201620))

(assert (not b!2201604))

(assert (not b!2201651))

(assert (not d!658606))

(assert (not b!2201673))

(assert (not b!2201637))

(assert (not d!658560))

(assert (not b!2201572))

(assert (not d!658592))

(assert (not b!2201565))

(assert (not b!2201686))

(assert (not b!2201670))

(assert (not setNonEmpty!19005))

(assert (not b!2201627))

(assert (not b!2201556))

(assert (not b!2201621))

(assert (not b!2201567))

(assert (not b!2201641))

(assert (not b!2201475))

(assert (not b!2201570))

(assert (not b!2201687))

(assert (not d!658584))

(assert (not b!2201559))

(assert (not d!658612))

(assert (not b!2201669))

(assert (not bm!132126))

(assert (not b!2201607))

(assert (not d!658590))

(assert (not b!2201558))

(assert (not d!658610))

(assert (not bs!450601))

(assert (not bm!132125))

(assert (not b!2201690))

(assert (not d!658556))

(assert (not b!2201596))

(assert (not d!658566))

(assert (not b!2201660))

(assert tp_is_empty!9739)

(assert (not b!2201574))

(assert (not b!2201639))

(assert (not b!2201671))

(assert (not b!2201642))

(assert (not b!2201626))

(assert (not b!2201635))

(assert (not b!2201573))

(assert (not d!658558))

(assert (not b!2201560))

(assert (not b!2201653))

(assert (not d!658574))

(assert (not b!2201672))

(assert (not b!2201555))

(assert (not d!658594))

(assert (not b!2201594))

(assert (not b!2201667))

(assert (not b!2201609))

(assert (not b!2201689))

(assert (not b!2201568))

(assert (not d!658614))

(assert (not b!2201633))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!213872 () Bool)

(assert start!213872)

(declare-fun b!2201910 () Bool)

(declare-fun res!946584 () Bool)

(declare-fun e!1406900 () Bool)

(assert (=> b!2201910 (=> (not res!946584) (not e!1406900))))

(declare-fun from!1082 () Int)

(assert (=> b!2201910 (= res!946584 (= from!1082 0))))

(declare-fun b!2201911 () Bool)

(declare-fun e!1406898 () Bool)

(assert (=> b!2201911 (= e!1406900 e!1406898)))

(declare-fun res!946586 () Bool)

(assert (=> b!2201911 (=> (not res!946586) (not e!1406898))))

(declare-fun lt!823513 () Int)

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2201911 (= res!946586 (and (= lt!823513 lastNullablePos!161) (= lt!823513 (- 1))))))

(declare-datatypes ((C!12610 0))(
  ( (C!12611 (val!7291 Int)) )
))
(declare-datatypes ((List!25762 0))(
  ( (Nil!25678) (Cons!25678 (h!31079 C!12610) (t!198396 List!25762)) )
))
(declare-datatypes ((IArray!16741 0))(
  ( (IArray!16742 (innerList!8428 List!25762)) )
))
(declare-datatypes ((Conc!8368 0))(
  ( (Node!8368 (left!19727 Conc!8368) (right!20057 Conc!8368) (csize!16966 Int) (cheight!8579 Int)) (Leaf!12252 (xs!11310 IArray!16741) (csize!16967 Int)) (Empty!8368) )
))
(declare-datatypes ((BalanceConc!16498 0))(
  ( (BalanceConc!16499 (c!351232 Conc!8368)) )
))
(declare-fun totalInput!891 () BalanceConc!16498)

(declare-fun lt!823515 () Int)

(declare-datatypes ((Regex!6232 0))(
  ( (ElementMatch!6232 (c!351233 C!12610)) (Concat!10534 (regOne!12976 Regex!6232) (regTwo!12976 Regex!6232)) (EmptyExpr!6232) (Star!6232 (reg!6561 Regex!6232)) (EmptyLang!6232) (Union!6232 (regOne!12977 Regex!6232) (regTwo!12977 Regex!6232)) )
))
(declare-datatypes ((List!25763 0))(
  ( (Nil!25679) (Cons!25679 (h!31080 Regex!6232) (t!198397 List!25763)) )
))
(declare-datatypes ((Context!3604 0))(
  ( (Context!3605 (exprs!2302 List!25763)) )
))
(declare-fun z!3888 () (Set Context!3604))

(declare-fun furthestNullablePosition!382 ((Set Context!3604) Int BalanceConc!16498 Int Int) Int)

(assert (=> b!2201911 (= lt!823513 (furthestNullablePosition!382 z!3888 from!1082 totalInput!891 lt!823515 lastNullablePos!161))))

(declare-fun b!2201912 () Bool)

(declare-fun e!1406903 () Bool)

(assert (=> b!2201912 (= e!1406903 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2201913 () Bool)

(declare-fun res!946583 () Bool)

(assert (=> b!2201913 (=> (not res!946583) (not e!1406900))))

(declare-fun isEmpty!14652 (BalanceConc!16498) Bool)

(assert (=> b!2201913 (= res!946583 (isEmpty!14652 totalInput!891))))

(declare-fun b!2201914 () Bool)

(declare-fun lt!823514 () List!25762)

(declare-fun isEmpty!14653 (List!25762) Bool)

(assert (=> b!2201914 (= e!1406898 (not (isEmpty!14653 lt!823514)))))

(declare-fun b!2201915 () Bool)

(declare-fun res!946585 () Bool)

(assert (=> b!2201915 (=> (not res!946585) (not e!1406900))))

(assert (=> b!2201915 (= res!946585 e!1406903)))

(declare-fun res!946582 () Bool)

(assert (=> b!2201915 (=> res!946582 e!1406903)))

(declare-fun nullableZipper!512 ((Set Context!3604)) Bool)

(assert (=> b!2201915 (= res!946582 (not (nullableZipper!512 z!3888)))))

(declare-fun res!946581 () Bool)

(declare-fun e!1406901 () Bool)

(assert (=> start!213872 (=> (not res!946581) (not e!1406901))))

(assert (=> start!213872 (= res!946581 (>= from!1082 0))))

(assert (=> start!213872 e!1406901))

(assert (=> start!213872 true))

(declare-fun e!1406904 () Bool)

(declare-fun inv!34516 (BalanceConc!16498) Bool)

(assert (=> start!213872 (and (inv!34516 totalInput!891) e!1406904)))

(declare-fun condSetEmpty!19015 () Bool)

(assert (=> start!213872 (= condSetEmpty!19015 (= z!3888 (as set.empty (Set Context!3604))))))

(declare-fun setRes!19015 () Bool)

(assert (=> start!213872 setRes!19015))

(declare-fun b!2201916 () Bool)

(declare-fun tp!685105 () Bool)

(declare-fun inv!34517 (Conc!8368) Bool)

(assert (=> b!2201916 (= e!1406904 (and (inv!34517 (c!351232 totalInput!891)) tp!685105))))

(declare-fun b!2201917 () Bool)

(declare-fun e!1406899 () Bool)

(assert (=> b!2201917 (= e!1406899 e!1406900)))

(declare-fun res!946580 () Bool)

(assert (=> b!2201917 (=> (not res!946580) (not e!1406900))))

(declare-fun knownSize!10 () Int)

(declare-fun matchZipper!318 ((Set Context!3604) List!25762) Bool)

(declare-fun take!410 (List!25762 Int) List!25762)

(declare-fun drop!1420 (List!25762 Int) List!25762)

(assert (=> b!2201917 (= res!946580 (matchZipper!318 z!3888 (take!410 (drop!1420 lt!823514 from!1082) knownSize!10)))))

(declare-fun list!9898 (BalanceConc!16498) List!25762)

(assert (=> b!2201917 (= lt!823514 (list!9898 totalInput!891))))

(declare-fun b!2201918 () Bool)

(assert (=> b!2201918 (= e!1406901 e!1406899)))

(declare-fun res!946579 () Bool)

(assert (=> b!2201918 (=> (not res!946579) (not e!1406899))))

(assert (=> b!2201918 (= res!946579 (and (<= from!1082 lt!823515) (>= knownSize!10 0) (<= knownSize!10 (- lt!823515 from!1082))))))

(declare-fun size!20007 (BalanceConc!16498) Int)

(assert (=> b!2201918 (= lt!823515 (size!20007 totalInput!891))))

(declare-fun e!1406902 () Bool)

(declare-fun tp!685107 () Bool)

(declare-fun setElem!19015 () Context!3604)

(declare-fun setNonEmpty!19015 () Bool)

(declare-fun inv!34518 (Context!3604) Bool)

(assert (=> setNonEmpty!19015 (= setRes!19015 (and tp!685107 (inv!34518 setElem!19015) e!1406902))))

(declare-fun setRest!19015 () (Set Context!3604))

(assert (=> setNonEmpty!19015 (= z!3888 (set.union (set.insert setElem!19015 (as set.empty (Set Context!3604))) setRest!19015))))

(declare-fun setIsEmpty!19015 () Bool)

(assert (=> setIsEmpty!19015 setRes!19015))

(declare-fun b!2201919 () Bool)

(declare-fun tp!685106 () Bool)

(assert (=> b!2201919 (= e!1406902 tp!685106)))

(declare-fun b!2201920 () Bool)

(declare-fun res!946578 () Bool)

(assert (=> b!2201920 (=> (not res!946578) (not e!1406900))))

(assert (=> b!2201920 (= res!946578 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(assert (= (and start!213872 res!946581) b!2201918))

(assert (= (and b!2201918 res!946579) b!2201917))

(assert (= (and b!2201917 res!946580) b!2201920))

(assert (= (and b!2201920 res!946578) b!2201915))

(assert (= (and b!2201915 (not res!946582)) b!2201912))

(assert (= (and b!2201915 res!946585) b!2201913))

(assert (= (and b!2201913 res!946583) b!2201910))

(assert (= (and b!2201910 res!946584) b!2201911))

(assert (= (and b!2201911 res!946586) b!2201914))

(assert (= start!213872 b!2201916))

(assert (= (and start!213872 condSetEmpty!19015) setIsEmpty!19015))

(assert (= (and start!213872 (not condSetEmpty!19015)) setNonEmpty!19015))

(assert (= setNonEmpty!19015 b!2201919))

(declare-fun m!2644391 () Bool)

(assert (=> b!2201914 m!2644391))

(declare-fun m!2644393 () Bool)

(assert (=> b!2201918 m!2644393))

(declare-fun m!2644395 () Bool)

(assert (=> b!2201917 m!2644395))

(assert (=> b!2201917 m!2644395))

(declare-fun m!2644397 () Bool)

(assert (=> b!2201917 m!2644397))

(assert (=> b!2201917 m!2644397))

(declare-fun m!2644399 () Bool)

(assert (=> b!2201917 m!2644399))

(declare-fun m!2644401 () Bool)

(assert (=> b!2201917 m!2644401))

(declare-fun m!2644403 () Bool)

(assert (=> setNonEmpty!19015 m!2644403))

(declare-fun m!2644405 () Bool)

(assert (=> start!213872 m!2644405))

(declare-fun m!2644407 () Bool)

(assert (=> b!2201915 m!2644407))

(declare-fun m!2644409 () Bool)

(assert (=> b!2201913 m!2644409))

(declare-fun m!2644411 () Bool)

(assert (=> b!2201911 m!2644411))

(declare-fun m!2644413 () Bool)

(assert (=> b!2201916 m!2644413))

(push 1)

(assert (not b!2201916))

(assert (not b!2201913))

(assert (not b!2201917))

(assert (not b!2201914))

(assert (not b!2201918))

(assert (not setNonEmpty!19015))

(assert (not start!213872))

(assert (not b!2201911))

(assert (not b!2201915))

(assert (not b!2201919))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!658688 () Bool)

(declare-fun c!351241 () Bool)

(assert (=> d!658688 (= c!351241 (is-Node!8368 (c!351232 totalInput!891)))))

(declare-fun e!1406936 () Bool)

(assert (=> d!658688 (= (inv!34517 (c!351232 totalInput!891)) e!1406936)))

(declare-fun b!2201969 () Bool)

(declare-fun inv!34522 (Conc!8368) Bool)

(assert (=> b!2201969 (= e!1406936 (inv!34522 (c!351232 totalInput!891)))))

(declare-fun b!2201970 () Bool)

(declare-fun e!1406937 () Bool)

(assert (=> b!2201970 (= e!1406936 e!1406937)))

(declare-fun res!946619 () Bool)

(assert (=> b!2201970 (= res!946619 (not (is-Leaf!12252 (c!351232 totalInput!891))))))

(assert (=> b!2201970 (=> res!946619 e!1406937)))

(declare-fun b!2201971 () Bool)

(declare-fun inv!34523 (Conc!8368) Bool)

(assert (=> b!2201971 (= e!1406937 (inv!34523 (c!351232 totalInput!891)))))

(assert (= (and d!658688 c!351241) b!2201969))

(assert (= (and d!658688 (not c!351241)) b!2201970))

(assert (= (and b!2201970 (not res!946619)) b!2201971))

(declare-fun m!2644443 () Bool)

(assert (=> b!2201969 m!2644443))

(declare-fun m!2644445 () Bool)

(assert (=> b!2201971 m!2644445))

(assert (=> b!2201916 d!658688))

(declare-fun d!658692 () Bool)

(declare-fun lambda!82976 () Int)

(declare-fun exists!837 ((Set Context!3604) Int) Bool)

(assert (=> d!658692 (= (nullableZipper!512 z!3888) (exists!837 z!3888 lambda!82976))))

(declare-fun bs!450622 () Bool)

(assert (= bs!450622 d!658692))

(declare-fun m!2644451 () Bool)

(assert (=> bs!450622 m!2644451))

(assert (=> b!2201915 d!658692))

(declare-fun d!658696 () Bool)

(declare-fun isBalanced!2573 (Conc!8368) Bool)

(assert (=> d!658696 (= (inv!34516 totalInput!891) (isBalanced!2573 (c!351232 totalInput!891)))))

(declare-fun bs!450623 () Bool)

(assert (= bs!450623 d!658696))

(declare-fun m!2644453 () Bool)

(assert (=> bs!450623 m!2644453))

(assert (=> start!213872 d!658696))

(declare-fun d!658698 () Bool)

(declare-fun c!351246 () Bool)

(assert (=> d!658698 (= c!351246 (isEmpty!14653 (take!410 (drop!1420 lt!823514 from!1082) knownSize!10)))))

(declare-fun e!1406940 () Bool)

(assert (=> d!658698 (= (matchZipper!318 z!3888 (take!410 (drop!1420 lt!823514 from!1082) knownSize!10)) e!1406940)))

(declare-fun b!2201976 () Bool)

(assert (=> b!2201976 (= e!1406940 (nullableZipper!512 z!3888))))

(declare-fun b!2201977 () Bool)

(declare-fun derivationStepZipper!288 ((Set Context!3604) C!12610) (Set Context!3604))

(declare-fun head!4697 (List!25762) C!12610)

(declare-fun tail!3175 (List!25762) List!25762)

(assert (=> b!2201977 (= e!1406940 (matchZipper!318 (derivationStepZipper!288 z!3888 (head!4697 (take!410 (drop!1420 lt!823514 from!1082) knownSize!10))) (tail!3175 (take!410 (drop!1420 lt!823514 from!1082) knownSize!10))))))

(assert (= (and d!658698 c!351246) b!2201976))

(assert (= (and d!658698 (not c!351246)) b!2201977))

(assert (=> d!658698 m!2644397))

(declare-fun m!2644455 () Bool)

(assert (=> d!658698 m!2644455))

(assert (=> b!2201976 m!2644407))

(assert (=> b!2201977 m!2644397))

(declare-fun m!2644457 () Bool)

(assert (=> b!2201977 m!2644457))

(assert (=> b!2201977 m!2644457))

(declare-fun m!2644459 () Bool)

(assert (=> b!2201977 m!2644459))

(assert (=> b!2201977 m!2644397))

(declare-fun m!2644461 () Bool)

(assert (=> b!2201977 m!2644461))

(assert (=> b!2201977 m!2644459))

(assert (=> b!2201977 m!2644461))

(declare-fun m!2644463 () Bool)

(assert (=> b!2201977 m!2644463))

(assert (=> b!2201917 d!658698))

(declare-fun d!658700 () Bool)

(declare-fun e!1406952 () Bool)

(assert (=> d!658700 e!1406952))

(declare-fun res!946622 () Bool)

(assert (=> d!658700 (=> (not res!946622) (not e!1406952))))

(declare-fun lt!823530 () List!25762)

(declare-fun content!3484 (List!25762) (Set C!12610))

(assert (=> d!658700 (= res!946622 (set.subset (content!3484 lt!823530) (content!3484 (drop!1420 lt!823514 from!1082))))))

(declare-fun e!1406951 () List!25762)

(assert (=> d!658700 (= lt!823530 e!1406951)))

(declare-fun c!351254 () Bool)

(assert (=> d!658700 (= c!351254 (or (is-Nil!25678 (drop!1420 lt!823514 from!1082)) (<= knownSize!10 0)))))

(assert (=> d!658700 (= (take!410 (drop!1420 lt!823514 from!1082) knownSize!10) lt!823530)))

(declare-fun b!2201992 () Bool)

(declare-fun e!1406950 () Int)

(declare-fun size!20009 (List!25762) Int)

(assert (=> b!2201992 (= e!1406950 (size!20009 (drop!1420 lt!823514 from!1082)))))

(declare-fun b!2201993 () Bool)

(declare-fun e!1406949 () Int)

(assert (=> b!2201993 (= e!1406949 0)))

(declare-fun b!2201994 () Bool)

(assert (=> b!2201994 (= e!1406952 (= (size!20009 lt!823530) e!1406949))))

(declare-fun c!351255 () Bool)

(assert (=> b!2201994 (= c!351255 (<= knownSize!10 0))))

(declare-fun b!2201995 () Bool)

(assert (=> b!2201995 (= e!1406949 e!1406950)))

(declare-fun c!351253 () Bool)

(assert (=> b!2201995 (= c!351253 (>= knownSize!10 (size!20009 (drop!1420 lt!823514 from!1082))))))

(declare-fun b!2201996 () Bool)

(assert (=> b!2201996 (= e!1406951 Nil!25678)))

(declare-fun b!2201997 () Bool)

(assert (=> b!2201997 (= e!1406951 (Cons!25678 (h!31079 (drop!1420 lt!823514 from!1082)) (take!410 (t!198396 (drop!1420 lt!823514 from!1082)) (- knownSize!10 1))))))

(declare-fun b!2201998 () Bool)

(assert (=> b!2201998 (= e!1406950 knownSize!10)))

(assert (= (and d!658700 c!351254) b!2201996))

(assert (= (and d!658700 (not c!351254)) b!2201997))

(assert (= (and d!658700 res!946622) b!2201994))

(assert (= (and b!2201994 c!351255) b!2201993))

(assert (= (and b!2201994 (not c!351255)) b!2201995))

(assert (= (and b!2201995 c!351253) b!2201992))

(assert (= (and b!2201995 (not c!351253)) b!2201998))

(assert (=> b!2201992 m!2644395))

(declare-fun m!2644465 () Bool)

(assert (=> b!2201992 m!2644465))

(declare-fun m!2644467 () Bool)

(assert (=> b!2201994 m!2644467))

(declare-fun m!2644469 () Bool)

(assert (=> b!2201997 m!2644469))

(assert (=> b!2201995 m!2644395))

(assert (=> b!2201995 m!2644465))

(declare-fun m!2644471 () Bool)

(assert (=> d!658700 m!2644471))

(assert (=> d!658700 m!2644395))

(declare-fun m!2644473 () Bool)

(assert (=> d!658700 m!2644473))

(assert (=> b!2201917 d!658700))

(declare-fun d!658702 () Bool)

(declare-fun e!1406967 () Bool)

(assert (=> d!658702 e!1406967))

(declare-fun res!946625 () Bool)

(assert (=> d!658702 (=> (not res!946625) (not e!1406967))))

(declare-fun lt!823533 () List!25762)

(assert (=> d!658702 (= res!946625 (set.subset (content!3484 lt!823533) (content!3484 lt!823514)))))

(declare-fun e!1406964 () List!25762)

(assert (=> d!658702 (= lt!823533 e!1406964)))

(declare-fun c!351266 () Bool)

(assert (=> d!658702 (= c!351266 (is-Nil!25678 lt!823514))))

(assert (=> d!658702 (= (drop!1420 lt!823514 from!1082) lt!823533)))

(declare-fun b!2202017 () Bool)

(assert (=> b!2202017 (= e!1406964 Nil!25678)))

(declare-fun b!2202018 () Bool)

(declare-fun e!1406963 () Int)

(assert (=> b!2202018 (= e!1406967 (= (size!20009 lt!823533) e!1406963))))

(declare-fun c!351264 () Bool)

(assert (=> b!2202018 (= c!351264 (<= from!1082 0))))

(declare-fun b!2202019 () Bool)

(declare-fun e!1406965 () List!25762)

(assert (=> b!2202019 (= e!1406965 lt!823514)))

(declare-fun b!2202020 () Bool)

(declare-fun call!132141 () Int)

(assert (=> b!2202020 (= e!1406963 call!132141)))

(declare-fun b!2202021 () Bool)

(declare-fun e!1406966 () Int)

(assert (=> b!2202021 (= e!1406966 (- call!132141 from!1082))))

(declare-fun b!2202022 () Bool)

(assert (=> b!2202022 (= e!1406963 e!1406966)))

(declare-fun c!351267 () Bool)

(assert (=> b!2202022 (= c!351267 (>= from!1082 call!132141))))

(declare-fun b!2202023 () Bool)

(assert (=> b!2202023 (= e!1406964 e!1406965)))

(declare-fun c!351265 () Bool)

(assert (=> b!2202023 (= c!351265 (<= from!1082 0))))

(declare-fun b!2202024 () Bool)

(assert (=> b!2202024 (= e!1406966 0)))

(declare-fun b!2202025 () Bool)

(assert (=> b!2202025 (= e!1406965 (drop!1420 (t!198396 lt!823514) (- from!1082 1)))))

(declare-fun bm!132136 () Bool)

(assert (=> bm!132136 (= call!132141 (size!20009 lt!823514))))

(assert (= (and d!658702 c!351266) b!2202017))

(assert (= (and d!658702 (not c!351266)) b!2202023))

(assert (= (and b!2202023 c!351265) b!2202019))

(assert (= (and b!2202023 (not c!351265)) b!2202025))

(assert (= (and d!658702 res!946625) b!2202018))

(assert (= (and b!2202018 c!351264) b!2202020))

(assert (= (and b!2202018 (not c!351264)) b!2202022))

(assert (= (and b!2202022 c!351267) b!2202024))

(assert (= (and b!2202022 (not c!351267)) b!2202021))

(assert (= (or b!2202020 b!2202022 b!2202021) bm!132136))

(declare-fun m!2644475 () Bool)

(assert (=> d!658702 m!2644475))

(declare-fun m!2644477 () Bool)

(assert (=> d!658702 m!2644477))

(declare-fun m!2644479 () Bool)

(assert (=> b!2202018 m!2644479))

(declare-fun m!2644481 () Bool)

(assert (=> b!2202025 m!2644481))

(declare-fun m!2644483 () Bool)

(assert (=> bm!132136 m!2644483))

(assert (=> b!2201917 d!658702))

(declare-fun d!658704 () Bool)

(declare-fun list!9900 (Conc!8368) List!25762)

(assert (=> d!658704 (= (list!9898 totalInput!891) (list!9900 (c!351232 totalInput!891)))))

(declare-fun bs!450624 () Bool)

(assert (= bs!450624 d!658704))

(declare-fun m!2644485 () Bool)

(assert (=> bs!450624 m!2644485))

(assert (=> b!2201917 d!658704))

(declare-fun b!2202036 () Bool)

(declare-fun e!1406974 () Int)

(assert (=> b!2202036 (= e!1406974 lastNullablePos!161)))

(declare-fun b!2202037 () Bool)

(declare-fun e!1406975 () Bool)

(declare-fun lostCauseZipper!338 ((Set Context!3604)) Bool)

(assert (=> b!2202037 (= e!1406975 (lostCauseZipper!338 z!3888))))

(declare-fun b!2202038 () Bool)

(assert (=> b!2202038 (= e!1406974 from!1082)))

(declare-fun lt!823539 () (Set Context!3604))

(declare-fun e!1406976 () Int)

(declare-fun b!2202039 () Bool)

(assert (=> b!2202039 (= e!1406976 (furthestNullablePosition!382 lt!823539 (+ from!1082 1) totalInput!891 lt!823515 e!1406974))))

(declare-fun apply!6316 (BalanceConc!16498 Int) C!12610)

(assert (=> b!2202039 (= lt!823539 (derivationStepZipper!288 z!3888 (apply!6316 totalInput!891 from!1082)))))

(declare-fun c!351272 () Bool)

(assert (=> b!2202039 (= c!351272 (nullableZipper!512 lt!823539))))

(declare-fun b!2202040 () Bool)

(assert (=> b!2202040 (= e!1406976 lastNullablePos!161)))

(declare-fun lt!823538 () Int)

(declare-fun d!658706 () Bool)

(assert (=> d!658706 (and (>= lt!823538 (- 1)) (< lt!823538 lt!823515) (>= lt!823538 lastNullablePos!161) (or (= lt!823538 lastNullablePos!161) (>= lt!823538 from!1082)))))

(assert (=> d!658706 (= lt!823538 e!1406976)))

(declare-fun c!351273 () Bool)

(assert (=> d!658706 (= c!351273 e!1406975)))

(declare-fun res!946628 () Bool)

(assert (=> d!658706 (=> res!946628 e!1406975)))

(assert (=> d!658706 (= res!946628 (= from!1082 lt!823515))))

(assert (=> d!658706 (and (>= from!1082 0) (<= from!1082 lt!823515))))

(assert (=> d!658706 (= (furthestNullablePosition!382 z!3888 from!1082 totalInput!891 lt!823515 lastNullablePos!161) lt!823538)))

(assert (= (and d!658706 (not res!946628)) b!2202037))

(assert (= (and d!658706 c!351273) b!2202040))

(assert (= (and d!658706 (not c!351273)) b!2202039))

(assert (= (and b!2202039 c!351272) b!2202038))

(assert (= (and b!2202039 (not c!351272)) b!2202036))

(declare-fun m!2644487 () Bool)

(assert (=> b!2202037 m!2644487))

(declare-fun m!2644489 () Bool)

(assert (=> b!2202039 m!2644489))

(declare-fun m!2644491 () Bool)

(assert (=> b!2202039 m!2644491))

(assert (=> b!2202039 m!2644491))

(declare-fun m!2644493 () Bool)

(assert (=> b!2202039 m!2644493))

(declare-fun m!2644495 () Bool)

(assert (=> b!2202039 m!2644495))

(assert (=> b!2201911 d!658706))

(declare-fun d!658708 () Bool)

(declare-fun lt!823542 () Bool)

(assert (=> d!658708 (= lt!823542 (isEmpty!14653 (list!9898 totalInput!891)))))

(declare-fun isEmpty!14656 (Conc!8368) Bool)

(assert (=> d!658708 (= lt!823542 (isEmpty!14656 (c!351232 totalInput!891)))))

(assert (=> d!658708 (= (isEmpty!14652 totalInput!891) lt!823542)))

(declare-fun bs!450625 () Bool)

(assert (= bs!450625 d!658708))

(assert (=> bs!450625 m!2644401))

(assert (=> bs!450625 m!2644401))

(declare-fun m!2644497 () Bool)

(assert (=> bs!450625 m!2644497))

(declare-fun m!2644499 () Bool)

(assert (=> bs!450625 m!2644499))

(assert (=> b!2201913 d!658708))

(declare-fun d!658710 () Bool)

(declare-fun lt!823545 () Int)

(assert (=> d!658710 (= lt!823545 (size!20009 (list!9898 totalInput!891)))))

(declare-fun size!20010 (Conc!8368) Int)

(assert (=> d!658710 (= lt!823545 (size!20010 (c!351232 totalInput!891)))))

(assert (=> d!658710 (= (size!20007 totalInput!891) lt!823545)))

(declare-fun bs!450626 () Bool)

(assert (= bs!450626 d!658710))

(assert (=> bs!450626 m!2644401))

(assert (=> bs!450626 m!2644401))

(declare-fun m!2644501 () Bool)

(assert (=> bs!450626 m!2644501))

(declare-fun m!2644503 () Bool)

(assert (=> bs!450626 m!2644503))

(assert (=> b!2201918 d!658710))

(declare-fun d!658712 () Bool)

(assert (=> d!658712 (= (isEmpty!14653 lt!823514) (is-Nil!25678 lt!823514))))

(assert (=> b!2201914 d!658712))

(declare-fun d!658714 () Bool)

(declare-fun lambda!82979 () Int)

(declare-fun forall!5248 (List!25763 Int) Bool)

(assert (=> d!658714 (= (inv!34518 setElem!19015) (forall!5248 (exprs!2302 setElem!19015) lambda!82979))))

(declare-fun bs!450627 () Bool)

(assert (= bs!450627 d!658714))

(declare-fun m!2644505 () Bool)

(assert (=> bs!450627 m!2644505))

(assert (=> setNonEmpty!19015 d!658714))

(declare-fun b!2202049 () Bool)

(declare-fun e!1406982 () Bool)

(declare-fun tp!685124 () Bool)

(declare-fun tp!685125 () Bool)

(assert (=> b!2202049 (= e!1406982 (and (inv!34517 (left!19727 (c!351232 totalInput!891))) tp!685124 (inv!34517 (right!20057 (c!351232 totalInput!891))) tp!685125))))

(declare-fun b!2202051 () Bool)

(declare-fun e!1406981 () Bool)

(declare-fun tp!685123 () Bool)

(assert (=> b!2202051 (= e!1406981 tp!685123)))

(declare-fun b!2202050 () Bool)

(declare-fun inv!34524 (IArray!16741) Bool)

(assert (=> b!2202050 (= e!1406982 (and (inv!34524 (xs!11310 (c!351232 totalInput!891))) e!1406981))))

(assert (=> b!2201916 (= tp!685105 (and (inv!34517 (c!351232 totalInput!891)) e!1406982))))

(assert (= (and b!2201916 (is-Node!8368 (c!351232 totalInput!891))) b!2202049))

(assert (= b!2202050 b!2202051))

(assert (= (and b!2201916 (is-Leaf!12252 (c!351232 totalInput!891))) b!2202050))

(declare-fun m!2644507 () Bool)

(assert (=> b!2202049 m!2644507))

(declare-fun m!2644509 () Bool)

(assert (=> b!2202049 m!2644509))

(declare-fun m!2644511 () Bool)

(assert (=> b!2202050 m!2644511))

(assert (=> b!2201916 m!2644413))

(declare-fun b!2202056 () Bool)

(declare-fun e!1406985 () Bool)

(declare-fun tp!685130 () Bool)

(declare-fun tp!685131 () Bool)

(assert (=> b!2202056 (= e!1406985 (and tp!685130 tp!685131))))

(assert (=> b!2201919 (= tp!685106 e!1406985)))

(assert (= (and b!2201919 (is-Cons!25679 (exprs!2302 setElem!19015))) b!2202056))

(declare-fun condSetEmpty!19021 () Bool)

(assert (=> setNonEmpty!19015 (= condSetEmpty!19021 (= setRest!19015 (as set.empty (Set Context!3604))))))

(declare-fun setRes!19021 () Bool)

(assert (=> setNonEmpty!19015 (= tp!685107 setRes!19021)))

(declare-fun setIsEmpty!19021 () Bool)

(assert (=> setIsEmpty!19021 setRes!19021))

(declare-fun setNonEmpty!19021 () Bool)

(declare-fun e!1406988 () Bool)

(declare-fun tp!685137 () Bool)

(declare-fun setElem!19021 () Context!3604)

(assert (=> setNonEmpty!19021 (= setRes!19021 (and tp!685137 (inv!34518 setElem!19021) e!1406988))))

(declare-fun setRest!19021 () (Set Context!3604))

(assert (=> setNonEmpty!19021 (= setRest!19015 (set.union (set.insert setElem!19021 (as set.empty (Set Context!3604))) setRest!19021))))

(declare-fun b!2202061 () Bool)

(declare-fun tp!685136 () Bool)

(assert (=> b!2202061 (= e!1406988 tp!685136)))

(assert (= (and setNonEmpty!19015 condSetEmpty!19021) setIsEmpty!19021))

(assert (= (and setNonEmpty!19015 (not condSetEmpty!19021)) setNonEmpty!19021))

(assert (= setNonEmpty!19021 b!2202061))

(declare-fun m!2644513 () Bool)

(assert (=> setNonEmpty!19021 m!2644513))

(push 1)

(assert (not d!658702))

(assert (not d!658700))

(assert (not b!2201916))

(assert (not b!2201995))

(assert (not b!2202061))

(assert (not b!2201971))

(assert (not b!2202025))

(assert (not b!2201976))

(assert (not b!2202018))

(assert (not d!658708))

(assert (not d!658714))

(assert (not d!658692))

(assert (not b!2202051))

(assert (not b!2201969))

(assert (not b!2201994))

(assert (not b!2202049))

(assert (not b!2202039))

(assert (not d!658710))

(assert (not b!2201997))

(assert (not b!2201977))

(assert (not b!2202050))

(assert (not setNonEmpty!19021))

(assert (not d!658696))

(assert (not bm!132136))

(assert (not b!2202056))

(assert (not b!2202037))

(assert (not d!658704))

(assert (not b!2201992))

(assert (not d!658698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


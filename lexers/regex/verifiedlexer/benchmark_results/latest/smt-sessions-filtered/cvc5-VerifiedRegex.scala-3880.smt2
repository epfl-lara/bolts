; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!213648 () Bool)

(assert start!213648)

(declare-fun res!946214 () Bool)

(declare-fun e!1406319 () Bool)

(assert (=> start!213648 (=> (not res!946214) (not e!1406319))))

(declare-fun from!1082 () Int)

(assert (=> start!213648 (= res!946214 (>= from!1082 0))))

(assert (=> start!213648 e!1406319))

(assert (=> start!213648 true))

(declare-datatypes ((C!12598 0))(
  ( (C!12599 (val!7285 Int)) )
))
(declare-datatypes ((List!25746 0))(
  ( (Nil!25662) (Cons!25662 (h!31063 C!12598) (t!198364 List!25746)) )
))
(declare-datatypes ((IArray!16729 0))(
  ( (IArray!16730 (innerList!8422 List!25746)) )
))
(declare-datatypes ((Conc!8362 0))(
  ( (Node!8362 (left!19710 Conc!8362) (right!20040 Conc!8362) (csize!16954 Int) (cheight!8573 Int)) (Leaf!12243 (xs!11304 IArray!16729) (csize!16955 Int)) (Empty!8362) )
))
(declare-datatypes ((BalanceConc!16486 0))(
  ( (BalanceConc!16487 (c!350946 Conc!8362)) )
))
(declare-fun totalInput!891 () BalanceConc!16486)

(declare-fun e!1406318 () Bool)

(declare-fun inv!34477 (BalanceConc!16486) Bool)

(assert (=> start!213648 (and (inv!34477 totalInput!891) e!1406318)))

(declare-fun condSetEmpty!18981 () Bool)

(declare-datatypes ((Regex!6226 0))(
  ( (ElementMatch!6226 (c!350947 C!12598)) (Concat!10528 (regOne!12964 Regex!6226) (regTwo!12964 Regex!6226)) (EmptyExpr!6226) (Star!6226 (reg!6555 Regex!6226)) (EmptyLang!6226) (Union!6226 (regOne!12965 Regex!6226) (regTwo!12965 Regex!6226)) )
))
(declare-datatypes ((List!25747 0))(
  ( (Nil!25663) (Cons!25663 (h!31064 Regex!6226) (t!198365 List!25747)) )
))
(declare-datatypes ((Context!3592 0))(
  ( (Context!3593 (exprs!2296 List!25747)) )
))
(declare-fun z!3888 () (Set Context!3592))

(assert (=> start!213648 (= condSetEmpty!18981 (= z!3888 (as set.empty (Set Context!3592))))))

(declare-fun setRes!18981 () Bool)

(assert (=> start!213648 setRes!18981))

(declare-fun b!2200822 () Bool)

(declare-fun res!946215 () Bool)

(declare-fun e!1406320 () Bool)

(assert (=> b!2200822 (=> (not res!946215) (not e!1406320))))

(declare-fun isEmpty!14636 (BalanceConc!16486) Bool)

(assert (=> b!2200822 (= res!946215 (isEmpty!14636 totalInput!891))))

(declare-fun b!2200823 () Bool)

(declare-fun e!1406316 () Bool)

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2200823 (= e!1406316 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun e!1406317 () Bool)

(declare-fun setElem!18981 () Context!3592)

(declare-fun tp!684848 () Bool)

(declare-fun setNonEmpty!18981 () Bool)

(declare-fun inv!34478 (Context!3592) Bool)

(assert (=> setNonEmpty!18981 (= setRes!18981 (and tp!684848 (inv!34478 setElem!18981) e!1406317))))

(declare-fun setRest!18981 () (Set Context!3592))

(assert (=> setNonEmpty!18981 (= z!3888 (set.union (set.insert setElem!18981 (as set.empty (Set Context!3592))) setRest!18981))))

(declare-fun b!2200824 () Bool)

(declare-fun res!946218 () Bool)

(assert (=> b!2200824 (=> (not res!946218) (not e!1406320))))

(assert (=> b!2200824 (= res!946218 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2200825 () Bool)

(declare-fun res!946217 () Bool)

(assert (=> b!2200825 (=> (not res!946217) (not e!1406320))))

(assert (=> b!2200825 (= res!946217 e!1406316)))

(declare-fun res!946220 () Bool)

(assert (=> b!2200825 (=> res!946220 e!1406316)))

(declare-fun nullableZipper!506 ((Set Context!3592)) Bool)

(assert (=> b!2200825 (= res!946220 (not (nullableZipper!506 z!3888)))))

(declare-fun b!2200826 () Bool)

(assert (=> b!2200826 (= e!1406319 e!1406320)))

(declare-fun res!946219 () Bool)

(assert (=> b!2200826 (=> (not res!946219) (not e!1406320))))

(declare-fun knownSize!10 () Int)

(declare-fun lt!823299 () Int)

(assert (=> b!2200826 (= res!946219 (and (<= from!1082 lt!823299) (>= knownSize!10 0) (<= knownSize!10 (- lt!823299 from!1082))))))

(declare-fun size!19993 (BalanceConc!16486) Int)

(assert (=> b!2200826 (= lt!823299 (size!19993 totalInput!891))))

(declare-fun b!2200827 () Bool)

(declare-fun res!946216 () Bool)

(assert (=> b!2200827 (=> (not res!946216) (not e!1406320))))

(declare-fun matchZipper!312 ((Set Context!3592) List!25746) Bool)

(declare-fun take!404 (List!25746 Int) List!25746)

(declare-fun drop!1414 (List!25746 Int) List!25746)

(declare-fun list!9884 (BalanceConc!16486) List!25746)

(assert (=> b!2200827 (= res!946216 (matchZipper!312 z!3888 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10)))))

(declare-fun setIsEmpty!18981 () Bool)

(assert (=> setIsEmpty!18981 setRes!18981))

(declare-fun b!2200828 () Bool)

(declare-fun tp!684849 () Bool)

(declare-fun inv!34479 (Conc!8362) Bool)

(assert (=> b!2200828 (= e!1406318 (and (inv!34479 (c!350946 totalInput!891)) tp!684849))))

(declare-fun b!2200829 () Bool)

(declare-fun tp!684847 () Bool)

(assert (=> b!2200829 (= e!1406317 tp!684847)))

(declare-fun b!2200830 () Bool)

(assert (=> b!2200830 (= e!1406320 (not (= from!1082 0)))))

(assert (= (and start!213648 res!946214) b!2200826))

(assert (= (and b!2200826 res!946219) b!2200827))

(assert (= (and b!2200827 res!946216) b!2200824))

(assert (= (and b!2200824 res!946218) b!2200825))

(assert (= (and b!2200825 (not res!946220)) b!2200823))

(assert (= (and b!2200825 res!946217) b!2200822))

(assert (= (and b!2200822 res!946215) b!2200830))

(assert (= start!213648 b!2200828))

(assert (= (and start!213648 condSetEmpty!18981) setIsEmpty!18981))

(assert (= (and start!213648 (not condSetEmpty!18981)) setNonEmpty!18981))

(assert (= setNonEmpty!18981 b!2200829))

(declare-fun m!2643479 () Bool)

(assert (=> start!213648 m!2643479))

(declare-fun m!2643481 () Bool)

(assert (=> b!2200826 m!2643481))

(declare-fun m!2643483 () Bool)

(assert (=> setNonEmpty!18981 m!2643483))

(declare-fun m!2643485 () Bool)

(assert (=> b!2200825 m!2643485))

(declare-fun m!2643487 () Bool)

(assert (=> b!2200828 m!2643487))

(declare-fun m!2643489 () Bool)

(assert (=> b!2200822 m!2643489))

(declare-fun m!2643491 () Bool)

(assert (=> b!2200827 m!2643491))

(assert (=> b!2200827 m!2643491))

(declare-fun m!2643493 () Bool)

(assert (=> b!2200827 m!2643493))

(assert (=> b!2200827 m!2643493))

(declare-fun m!2643495 () Bool)

(assert (=> b!2200827 m!2643495))

(assert (=> b!2200827 m!2643495))

(declare-fun m!2643497 () Bool)

(assert (=> b!2200827 m!2643497))

(push 1)

(assert (not setNonEmpty!18981))

(assert (not b!2200822))

(assert (not b!2200825))

(assert (not b!2200829))

(assert (not b!2200828))

(assert (not b!2200826))

(assert (not b!2200827))

(assert (not start!213648))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!658347 () Bool)

(declare-fun lt!823305 () Bool)

(declare-fun isEmpty!14638 (List!25746) Bool)

(assert (=> d!658347 (= lt!823305 (isEmpty!14638 (list!9884 totalInput!891)))))

(declare-fun isEmpty!14639 (Conc!8362) Bool)

(assert (=> d!658347 (= lt!823305 (isEmpty!14639 (c!350946 totalInput!891)))))

(assert (=> d!658347 (= (isEmpty!14636 totalInput!891) lt!823305)))

(declare-fun bs!450533 () Bool)

(assert (= bs!450533 d!658347))

(assert (=> bs!450533 m!2643491))

(assert (=> bs!450533 m!2643491))

(declare-fun m!2643519 () Bool)

(assert (=> bs!450533 m!2643519))

(declare-fun m!2643521 () Bool)

(assert (=> bs!450533 m!2643521))

(assert (=> b!2200822 d!658347))

(declare-fun c!350954 () Bool)

(declare-fun d!658351 () Bool)

(assert (=> d!658351 (= c!350954 (isEmpty!14638 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10)))))

(declare-fun e!1406340 () Bool)

(assert (=> d!658351 (= (matchZipper!312 z!3888 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10)) e!1406340)))

(declare-fun b!2200866 () Bool)

(assert (=> b!2200866 (= e!1406340 (nullableZipper!506 z!3888))))

(declare-fun b!2200867 () Bool)

(declare-fun derivationStepZipper!284 ((Set Context!3592) C!12598) (Set Context!3592))

(declare-fun head!4693 (List!25746) C!12598)

(declare-fun tail!3171 (List!25746) List!25746)

(assert (=> b!2200867 (= e!1406340 (matchZipper!312 (derivationStepZipper!284 z!3888 (head!4693 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10))) (tail!3171 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10))))))

(assert (= (and d!658351 c!350954) b!2200866))

(assert (= (and d!658351 (not c!350954)) b!2200867))

(assert (=> d!658351 m!2643495))

(declare-fun m!2643523 () Bool)

(assert (=> d!658351 m!2643523))

(assert (=> b!2200866 m!2643485))

(assert (=> b!2200867 m!2643495))

(declare-fun m!2643525 () Bool)

(assert (=> b!2200867 m!2643525))

(assert (=> b!2200867 m!2643525))

(declare-fun m!2643527 () Bool)

(assert (=> b!2200867 m!2643527))

(assert (=> b!2200867 m!2643495))

(declare-fun m!2643529 () Bool)

(assert (=> b!2200867 m!2643529))

(assert (=> b!2200867 m!2643527))

(assert (=> b!2200867 m!2643529))

(declare-fun m!2643531 () Bool)

(assert (=> b!2200867 m!2643531))

(assert (=> b!2200827 d!658351))

(declare-fun b!2200898 () Bool)

(declare-fun e!1406358 () Int)

(declare-fun e!1406361 () Int)

(assert (=> b!2200898 (= e!1406358 e!1406361)))

(declare-fun c!350969 () Bool)

(declare-fun size!19995 (List!25746) Int)

(assert (=> b!2200898 (= c!350969 (>= knownSize!10 (size!19995 (drop!1414 (list!9884 totalInput!891) from!1082))))))

(declare-fun d!658353 () Bool)

(declare-fun e!1406359 () Bool)

(assert (=> d!658353 e!1406359))

(declare-fun res!946246 () Bool)

(assert (=> d!658353 (=> (not res!946246) (not e!1406359))))

(declare-fun lt!823310 () List!25746)

(declare-fun content!3480 (List!25746) (Set C!12598))

(assert (=> d!658353 (= res!946246 (set.subset (content!3480 lt!823310) (content!3480 (drop!1414 (list!9884 totalInput!891) from!1082))))))

(declare-fun e!1406360 () List!25746)

(assert (=> d!658353 (= lt!823310 e!1406360)))

(declare-fun c!350968 () Bool)

(assert (=> d!658353 (= c!350968 (or (is-Nil!25662 (drop!1414 (list!9884 totalInput!891) from!1082)) (<= knownSize!10 0)))))

(assert (=> d!658353 (= (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10) lt!823310)))

(declare-fun b!2200899 () Bool)

(assert (=> b!2200899 (= e!1406358 0)))

(declare-fun b!2200900 () Bool)

(assert (=> b!2200900 (= e!1406361 (size!19995 (drop!1414 (list!9884 totalInput!891) from!1082)))))

(declare-fun b!2200901 () Bool)

(assert (=> b!2200901 (= e!1406360 Nil!25662)))

(declare-fun b!2200902 () Bool)

(assert (=> b!2200902 (= e!1406359 (= (size!19995 lt!823310) e!1406358))))

(declare-fun c!350970 () Bool)

(assert (=> b!2200902 (= c!350970 (<= knownSize!10 0))))

(declare-fun b!2200903 () Bool)

(assert (=> b!2200903 (= e!1406361 knownSize!10)))

(declare-fun b!2200904 () Bool)

(assert (=> b!2200904 (= e!1406360 (Cons!25662 (h!31063 (drop!1414 (list!9884 totalInput!891) from!1082)) (take!404 (t!198364 (drop!1414 (list!9884 totalInput!891) from!1082)) (- knownSize!10 1))))))

(assert (= (and d!658353 c!350968) b!2200901))

(assert (= (and d!658353 (not c!350968)) b!2200904))

(assert (= (and d!658353 res!946246) b!2200902))

(assert (= (and b!2200902 c!350970) b!2200899))

(assert (= (and b!2200902 (not c!350970)) b!2200898))

(assert (= (and b!2200898 c!350969) b!2200900))

(assert (= (and b!2200898 (not c!350969)) b!2200903))

(declare-fun m!2643543 () Bool)

(assert (=> d!658353 m!2643543))

(assert (=> d!658353 m!2643493))

(declare-fun m!2643545 () Bool)

(assert (=> d!658353 m!2643545))

(declare-fun m!2643547 () Bool)

(assert (=> b!2200902 m!2643547))

(declare-fun m!2643549 () Bool)

(assert (=> b!2200904 m!2643549))

(assert (=> b!2200898 m!2643493))

(declare-fun m!2643551 () Bool)

(assert (=> b!2200898 m!2643551))

(assert (=> b!2200900 m!2643493))

(assert (=> b!2200900 m!2643551))

(assert (=> b!2200827 d!658353))

(declare-fun d!658357 () Bool)

(declare-fun e!1406390 () Bool)

(assert (=> d!658357 e!1406390))

(declare-fun res!946252 () Bool)

(assert (=> d!658357 (=> (not res!946252) (not e!1406390))))

(declare-fun lt!823316 () List!25746)

(assert (=> d!658357 (= res!946252 (set.subset (content!3480 lt!823316) (content!3480 (list!9884 totalInput!891))))))

(declare-fun e!1406389 () List!25746)

(assert (=> d!658357 (= lt!823316 e!1406389)))

(declare-fun c!350992 () Bool)

(assert (=> d!658357 (= c!350992 (is-Nil!25662 (list!9884 totalInput!891)))))

(assert (=> d!658357 (= (drop!1414 (list!9884 totalInput!891) from!1082) lt!823316)))

(declare-fun b!2200948 () Bool)

(declare-fun e!1406387 () List!25746)

(assert (=> b!2200948 (= e!1406387 (drop!1414 (t!198364 (list!9884 totalInput!891)) (- from!1082 1)))))

(declare-fun b!2200949 () Bool)

(declare-fun e!1406386 () Int)

(declare-fun call!132115 () Int)

(assert (=> b!2200949 (= e!1406386 call!132115)))

(declare-fun b!2200950 () Bool)

(assert (=> b!2200950 (= e!1406389 Nil!25662)))

(declare-fun b!2200951 () Bool)

(assert (=> b!2200951 (= e!1406390 (= (size!19995 lt!823316) e!1406386))))

(declare-fun c!350991 () Bool)

(assert (=> b!2200951 (= c!350991 (<= from!1082 0))))

(declare-fun b!2200952 () Bool)

(declare-fun e!1406388 () Int)

(assert (=> b!2200952 (= e!1406386 e!1406388)))

(declare-fun c!350990 () Bool)

(assert (=> b!2200952 (= c!350990 (>= from!1082 call!132115))))

(declare-fun b!2200953 () Bool)

(assert (=> b!2200953 (= e!1406388 (- call!132115 from!1082))))

(declare-fun b!2200954 () Bool)

(assert (=> b!2200954 (= e!1406387 (list!9884 totalInput!891))))

(declare-fun b!2200955 () Bool)

(assert (=> b!2200955 (= e!1406388 0)))

(declare-fun bm!132110 () Bool)

(assert (=> bm!132110 (= call!132115 (size!19995 (list!9884 totalInput!891)))))

(declare-fun b!2200956 () Bool)

(assert (=> b!2200956 (= e!1406389 e!1406387)))

(declare-fun c!350993 () Bool)

(assert (=> b!2200956 (= c!350993 (<= from!1082 0))))

(assert (= (and d!658357 c!350992) b!2200950))

(assert (= (and d!658357 (not c!350992)) b!2200956))

(assert (= (and b!2200956 c!350993) b!2200954))

(assert (= (and b!2200956 (not c!350993)) b!2200948))

(assert (= (and d!658357 res!946252) b!2200951))

(assert (= (and b!2200951 c!350991) b!2200949))

(assert (= (and b!2200951 (not c!350991)) b!2200952))

(assert (= (and b!2200952 c!350990) b!2200955))

(assert (= (and b!2200952 (not c!350990)) b!2200953))

(assert (= (or b!2200949 b!2200952 b!2200953) bm!132110))

(declare-fun m!2643563 () Bool)

(assert (=> d!658357 m!2643563))

(assert (=> d!658357 m!2643491))

(declare-fun m!2643565 () Bool)

(assert (=> d!658357 m!2643565))

(declare-fun m!2643567 () Bool)

(assert (=> b!2200948 m!2643567))

(declare-fun m!2643569 () Bool)

(assert (=> b!2200951 m!2643569))

(assert (=> bm!132110 m!2643491))

(declare-fun m!2643571 () Bool)

(assert (=> bm!132110 m!2643571))

(assert (=> b!2200827 d!658357))

(declare-fun d!658361 () Bool)

(declare-fun list!9886 (Conc!8362) List!25746)

(assert (=> d!658361 (= (list!9884 totalInput!891) (list!9886 (c!350946 totalInput!891)))))

(declare-fun bs!450534 () Bool)

(assert (= bs!450534 d!658361))

(declare-fun m!2643573 () Bool)

(assert (=> bs!450534 m!2643573))

(assert (=> b!2200827 d!658361))

(declare-fun d!658363 () Bool)

(declare-fun lambda!82902 () Int)

(declare-fun forall!5242 (List!25747 Int) Bool)

(assert (=> d!658363 (= (inv!34478 setElem!18981) (forall!5242 (exprs!2296 setElem!18981) lambda!82902))))

(declare-fun bs!450539 () Bool)

(assert (= bs!450539 d!658363))

(declare-fun m!2643599 () Bool)

(assert (=> bs!450539 m!2643599))

(assert (=> setNonEmpty!18981 d!658363))

(declare-fun d!658377 () Bool)

(declare-fun isBalanced!2569 (Conc!8362) Bool)

(assert (=> d!658377 (= (inv!34477 totalInput!891) (isBalanced!2569 (c!350946 totalInput!891)))))

(declare-fun bs!450540 () Bool)

(assert (= bs!450540 d!658377))

(declare-fun m!2643601 () Bool)

(assert (=> bs!450540 m!2643601))

(assert (=> start!213648 d!658377))

(declare-fun d!658379 () Bool)

(declare-fun c!351003 () Bool)

(assert (=> d!658379 (= c!351003 (is-Node!8362 (c!350946 totalInput!891)))))

(declare-fun e!1406406 () Bool)

(assert (=> d!658379 (= (inv!34479 (c!350946 totalInput!891)) e!1406406)))

(declare-fun b!2200981 () Bool)

(declare-fun inv!34483 (Conc!8362) Bool)

(assert (=> b!2200981 (= e!1406406 (inv!34483 (c!350946 totalInput!891)))))

(declare-fun b!2200982 () Bool)

(declare-fun e!1406407 () Bool)

(assert (=> b!2200982 (= e!1406406 e!1406407)))

(declare-fun res!946259 () Bool)

(assert (=> b!2200982 (= res!946259 (not (is-Leaf!12243 (c!350946 totalInput!891))))))

(assert (=> b!2200982 (=> res!946259 e!1406407)))

(declare-fun b!2200983 () Bool)

(declare-fun inv!34484 (Conc!8362) Bool)

(assert (=> b!2200983 (= e!1406407 (inv!34484 (c!350946 totalInput!891)))))

(assert (= (and d!658379 c!351003) b!2200981))

(assert (= (and d!658379 (not c!351003)) b!2200982))

(assert (= (and b!2200982 (not res!946259)) b!2200983))

(declare-fun m!2643603 () Bool)

(assert (=> b!2200981 m!2643603))

(declare-fun m!2643605 () Bool)

(assert (=> b!2200983 m!2643605))

(assert (=> b!2200828 d!658379))

(declare-fun d!658381 () Bool)

(declare-fun lambda!82905 () Int)

(declare-fun exists!829 ((Set Context!3592) Int) Bool)

(assert (=> d!658381 (= (nullableZipper!506 z!3888) (exists!829 z!3888 lambda!82905))))

(declare-fun bs!450541 () Bool)

(assert (= bs!450541 d!658381))

(declare-fun m!2643607 () Bool)

(assert (=> bs!450541 m!2643607))

(assert (=> b!2200825 d!658381))

(declare-fun d!658383 () Bool)

(declare-fun lt!823326 () Int)

(assert (=> d!658383 (= lt!823326 (size!19995 (list!9884 totalInput!891)))))

(declare-fun size!19996 (Conc!8362) Int)

(assert (=> d!658383 (= lt!823326 (size!19996 (c!350946 totalInput!891)))))

(assert (=> d!658383 (= (size!19993 totalInput!891) lt!823326)))

(declare-fun bs!450542 () Bool)

(assert (= bs!450542 d!658383))

(assert (=> bs!450542 m!2643491))

(assert (=> bs!450542 m!2643491))

(assert (=> bs!450542 m!2643571))

(declare-fun m!2643609 () Bool)

(assert (=> bs!450542 m!2643609))

(assert (=> b!2200826 d!658383))

(declare-fun condSetEmpty!18987 () Bool)

(assert (=> setNonEmpty!18981 (= condSetEmpty!18987 (= setRest!18981 (as set.empty (Set Context!3592))))))

(declare-fun setRes!18987 () Bool)

(assert (=> setNonEmpty!18981 (= tp!684848 setRes!18987)))

(declare-fun setIsEmpty!18987 () Bool)

(assert (=> setIsEmpty!18987 setRes!18987))

(declare-fun tp!684863 () Bool)

(declare-fun setElem!18987 () Context!3592)

(declare-fun setNonEmpty!18987 () Bool)

(declare-fun e!1406410 () Bool)

(assert (=> setNonEmpty!18987 (= setRes!18987 (and tp!684863 (inv!34478 setElem!18987) e!1406410))))

(declare-fun setRest!18987 () (Set Context!3592))

(assert (=> setNonEmpty!18987 (= setRest!18981 (set.union (set.insert setElem!18987 (as set.empty (Set Context!3592))) setRest!18987))))

(declare-fun b!2200988 () Bool)

(declare-fun tp!684864 () Bool)

(assert (=> b!2200988 (= e!1406410 tp!684864)))

(assert (= (and setNonEmpty!18981 condSetEmpty!18987) setIsEmpty!18987))

(assert (= (and setNonEmpty!18981 (not condSetEmpty!18987)) setNonEmpty!18987))

(assert (= setNonEmpty!18987 b!2200988))

(declare-fun m!2643611 () Bool)

(assert (=> setNonEmpty!18987 m!2643611))

(declare-fun b!2200997 () Bool)

(declare-fun e!1406416 () Bool)

(declare-fun tp!684871 () Bool)

(declare-fun tp!684873 () Bool)

(assert (=> b!2200997 (= e!1406416 (and (inv!34479 (left!19710 (c!350946 totalInput!891))) tp!684873 (inv!34479 (right!20040 (c!350946 totalInput!891))) tp!684871))))

(declare-fun b!2200999 () Bool)

(declare-fun e!1406415 () Bool)

(declare-fun tp!684872 () Bool)

(assert (=> b!2200999 (= e!1406415 tp!684872)))

(declare-fun b!2200998 () Bool)

(declare-fun inv!34485 (IArray!16729) Bool)

(assert (=> b!2200998 (= e!1406416 (and (inv!34485 (xs!11304 (c!350946 totalInput!891))) e!1406415))))

(assert (=> b!2200828 (= tp!684849 (and (inv!34479 (c!350946 totalInput!891)) e!1406416))))

(assert (= (and b!2200828 (is-Node!8362 (c!350946 totalInput!891))) b!2200997))

(assert (= b!2200998 b!2200999))

(assert (= (and b!2200828 (is-Leaf!12243 (c!350946 totalInput!891))) b!2200998))

(declare-fun m!2643613 () Bool)

(assert (=> b!2200997 m!2643613))

(declare-fun m!2643615 () Bool)

(assert (=> b!2200997 m!2643615))

(declare-fun m!2643617 () Bool)

(assert (=> b!2200998 m!2643617))

(assert (=> b!2200828 m!2643487))

(declare-fun b!2201004 () Bool)

(declare-fun e!1406419 () Bool)

(declare-fun tp!684878 () Bool)

(declare-fun tp!684879 () Bool)

(assert (=> b!2201004 (= e!1406419 (and tp!684878 tp!684879))))

(assert (=> b!2200829 (= tp!684847 e!1406419)))

(assert (= (and b!2200829 (is-Cons!25663 (exprs!2296 setElem!18981))) b!2201004))

(push 1)

(assert (not d!658377))

(assert (not b!2200902))

(assert (not b!2201004))

(assert (not d!658361))

(assert (not d!658347))

(assert (not b!2200898))

(assert (not d!658357))

(assert (not b!2200866))

(assert (not d!658363))

(assert (not b!2200999))

(assert (not d!658381))

(assert (not b!2200951))

(assert (not setNonEmpty!18987))

(assert (not b!2200981))

(assert (not b!2200983))

(assert (not b!2200988))

(assert (not d!658353))

(assert (not bm!132110))

(assert (not b!2200948))

(assert (not b!2200997))

(assert (not b!2200904))

(assert (not d!658383))

(assert (not b!2200867))

(assert (not b!2200998))

(assert (not b!2200900))

(assert (not b!2200828))

(assert (not d!658351))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!658387 () Bool)

(assert (=> d!658387 (= (isEmpty!14638 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10)) (is-Nil!25662 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10)))))

(assert (=> d!658351 d!658387))

(declare-fun d!658389 () Bool)

(declare-fun c!351010 () Bool)

(assert (=> d!658389 (= c!351010 (is-Nil!25662 lt!823310))))

(declare-fun e!1406434 () (Set C!12598))

(assert (=> d!658389 (= (content!3480 lt!823310) e!1406434)))

(declare-fun b!2201030 () Bool)

(assert (=> b!2201030 (= e!1406434 (as set.empty (Set C!12598)))))

(declare-fun b!2201031 () Bool)

(assert (=> b!2201031 (= e!1406434 (set.union (set.insert (h!31063 lt!823310) (as set.empty (Set C!12598))) (content!3480 (t!198364 lt!823310))))))

(assert (= (and d!658389 c!351010) b!2201030))

(assert (= (and d!658389 (not c!351010)) b!2201031))

(declare-fun m!2643631 () Bool)

(assert (=> b!2201031 m!2643631))

(declare-fun m!2643633 () Bool)

(assert (=> b!2201031 m!2643633))

(assert (=> d!658353 d!658389))

(declare-fun d!658391 () Bool)

(declare-fun c!351011 () Bool)

(assert (=> d!658391 (= c!351011 (is-Nil!25662 (drop!1414 (list!9884 totalInput!891) from!1082)))))

(declare-fun e!1406435 () (Set C!12598))

(assert (=> d!658391 (= (content!3480 (drop!1414 (list!9884 totalInput!891) from!1082)) e!1406435)))

(declare-fun b!2201032 () Bool)

(assert (=> b!2201032 (= e!1406435 (as set.empty (Set C!12598)))))

(declare-fun b!2201033 () Bool)

(assert (=> b!2201033 (= e!1406435 (set.union (set.insert (h!31063 (drop!1414 (list!9884 totalInput!891) from!1082)) (as set.empty (Set C!12598))) (content!3480 (t!198364 (drop!1414 (list!9884 totalInput!891) from!1082)))))))

(assert (= (and d!658391 c!351011) b!2201032))

(assert (= (and d!658391 (not c!351011)) b!2201033))

(declare-fun m!2643635 () Bool)

(assert (=> b!2201033 m!2643635))

(declare-fun m!2643637 () Bool)

(assert (=> b!2201033 m!2643637))

(assert (=> d!658353 d!658391))

(declare-fun d!658393 () Bool)

(declare-fun res!946264 () Bool)

(declare-fun e!1406440 () Bool)

(assert (=> d!658393 (=> res!946264 e!1406440)))

(assert (=> d!658393 (= res!946264 (is-Nil!25663 (exprs!2296 setElem!18981)))))

(assert (=> d!658393 (= (forall!5242 (exprs!2296 setElem!18981) lambda!82902) e!1406440)))

(declare-fun b!2201038 () Bool)

(declare-fun e!1406441 () Bool)

(assert (=> b!2201038 (= e!1406440 e!1406441)))

(declare-fun res!946265 () Bool)

(assert (=> b!2201038 (=> (not res!946265) (not e!1406441))))

(declare-fun dynLambda!11450 (Int Regex!6226) Bool)

(assert (=> b!2201038 (= res!946265 (dynLambda!11450 lambda!82902 (h!31064 (exprs!2296 setElem!18981))))))

(declare-fun b!2201039 () Bool)

(assert (=> b!2201039 (= e!1406441 (forall!5242 (t!198365 (exprs!2296 setElem!18981)) lambda!82902))))

(assert (= (and d!658393 (not res!946264)) b!2201038))

(assert (= (and b!2201038 res!946265) b!2201039))

(declare-fun b_lambda!71225 () Bool)

(assert (=> (not b_lambda!71225) (not b!2201038)))

(declare-fun m!2643639 () Bool)

(assert (=> b!2201038 m!2643639))

(declare-fun m!2643641 () Bool)

(assert (=> b!2201039 m!2643641))

(assert (=> d!658363 d!658393))

(declare-fun d!658395 () Bool)

(declare-fun lt!823329 () Int)

(assert (=> d!658395 (>= lt!823329 0)))

(declare-fun e!1406444 () Int)

(assert (=> d!658395 (= lt!823329 e!1406444)))

(declare-fun c!351014 () Bool)

(assert (=> d!658395 (= c!351014 (is-Nil!25662 (list!9884 totalInput!891)))))

(assert (=> d!658395 (= (size!19995 (list!9884 totalInput!891)) lt!823329)))

(declare-fun b!2201044 () Bool)

(assert (=> b!2201044 (= e!1406444 0)))

(declare-fun b!2201045 () Bool)

(assert (=> b!2201045 (= e!1406444 (+ 1 (size!19995 (t!198364 (list!9884 totalInput!891)))))))

(assert (= (and d!658395 c!351014) b!2201044))

(assert (= (and d!658395 (not c!351014)) b!2201045))

(declare-fun m!2643643 () Bool)

(assert (=> b!2201045 m!2643643))

(assert (=> bm!132110 d!658395))

(declare-fun d!658397 () Bool)

(declare-fun lt!823330 () Int)

(assert (=> d!658397 (>= lt!823330 0)))

(declare-fun e!1406445 () Int)

(assert (=> d!658397 (= lt!823330 e!1406445)))

(declare-fun c!351015 () Bool)

(assert (=> d!658397 (= c!351015 (is-Nil!25662 lt!823316))))

(assert (=> d!658397 (= (size!19995 lt!823316) lt!823330)))

(declare-fun b!2201046 () Bool)

(assert (=> b!2201046 (= e!1406445 0)))

(declare-fun b!2201047 () Bool)

(assert (=> b!2201047 (= e!1406445 (+ 1 (size!19995 (t!198364 lt!823316))))))

(assert (= (and d!658397 c!351015) b!2201046))

(assert (= (and d!658397 (not c!351015)) b!2201047))

(declare-fun m!2643645 () Bool)

(assert (=> b!2201047 m!2643645))

(assert (=> b!2200951 d!658397))

(declare-fun d!658399 () Bool)

(declare-fun c!351016 () Bool)

(assert (=> d!658399 (= c!351016 (is-Node!8362 (left!19710 (c!350946 totalInput!891))))))

(declare-fun e!1406446 () Bool)

(assert (=> d!658399 (= (inv!34479 (left!19710 (c!350946 totalInput!891))) e!1406446)))

(declare-fun b!2201048 () Bool)

(assert (=> b!2201048 (= e!1406446 (inv!34483 (left!19710 (c!350946 totalInput!891))))))

(declare-fun b!2201049 () Bool)

(declare-fun e!1406447 () Bool)

(assert (=> b!2201049 (= e!1406446 e!1406447)))

(declare-fun res!946266 () Bool)

(assert (=> b!2201049 (= res!946266 (not (is-Leaf!12243 (left!19710 (c!350946 totalInput!891)))))))

(assert (=> b!2201049 (=> res!946266 e!1406447)))

(declare-fun b!2201050 () Bool)

(assert (=> b!2201050 (= e!1406447 (inv!34484 (left!19710 (c!350946 totalInput!891))))))

(assert (= (and d!658399 c!351016) b!2201048))

(assert (= (and d!658399 (not c!351016)) b!2201049))

(assert (= (and b!2201049 (not res!946266)) b!2201050))

(declare-fun m!2643647 () Bool)

(assert (=> b!2201048 m!2643647))

(declare-fun m!2643649 () Bool)

(assert (=> b!2201050 m!2643649))

(assert (=> b!2200997 d!658399))

(declare-fun d!658401 () Bool)

(declare-fun c!351017 () Bool)

(assert (=> d!658401 (= c!351017 (is-Node!8362 (right!20040 (c!350946 totalInput!891))))))

(declare-fun e!1406448 () Bool)

(assert (=> d!658401 (= (inv!34479 (right!20040 (c!350946 totalInput!891))) e!1406448)))

(declare-fun b!2201051 () Bool)

(assert (=> b!2201051 (= e!1406448 (inv!34483 (right!20040 (c!350946 totalInput!891))))))

(declare-fun b!2201052 () Bool)

(declare-fun e!1406449 () Bool)

(assert (=> b!2201052 (= e!1406448 e!1406449)))

(declare-fun res!946267 () Bool)

(assert (=> b!2201052 (= res!946267 (not (is-Leaf!12243 (right!20040 (c!350946 totalInput!891)))))))

(assert (=> b!2201052 (=> res!946267 e!1406449)))

(declare-fun b!2201053 () Bool)

(assert (=> b!2201053 (= e!1406449 (inv!34484 (right!20040 (c!350946 totalInput!891))))))

(assert (= (and d!658401 c!351017) b!2201051))

(assert (= (and d!658401 (not c!351017)) b!2201052))

(assert (= (and b!2201052 (not res!946267)) b!2201053))

(declare-fun m!2643651 () Bool)

(assert (=> b!2201051 m!2643651))

(declare-fun m!2643653 () Bool)

(assert (=> b!2201053 m!2643653))

(assert (=> b!2200997 d!658401))

(declare-fun b!2201066 () Bool)

(declare-fun e!1406454 () Bool)

(declare-fun e!1406455 () Bool)

(assert (=> b!2201066 (= e!1406454 e!1406455)))

(declare-fun res!946280 () Bool)

(assert (=> b!2201066 (=> (not res!946280) (not e!1406455))))

(declare-fun height!1252 (Conc!8362) Int)

(assert (=> b!2201066 (= res!946280 (<= (- 1) (- (height!1252 (left!19710 (c!350946 totalInput!891))) (height!1252 (right!20040 (c!350946 totalInput!891))))))))

(declare-fun b!2201067 () Bool)

(declare-fun res!946285 () Bool)

(assert (=> b!2201067 (=> (not res!946285) (not e!1406455))))

(assert (=> b!2201067 (= res!946285 (isBalanced!2569 (right!20040 (c!350946 totalInput!891))))))

(declare-fun b!2201068 () Bool)

(declare-fun res!946282 () Bool)

(assert (=> b!2201068 (=> (not res!946282) (not e!1406455))))

(assert (=> b!2201068 (= res!946282 (not (isEmpty!14639 (left!19710 (c!350946 totalInput!891)))))))

(declare-fun b!2201069 () Bool)

(declare-fun res!946283 () Bool)

(assert (=> b!2201069 (=> (not res!946283) (not e!1406455))))

(assert (=> b!2201069 (= res!946283 (isBalanced!2569 (left!19710 (c!350946 totalInput!891))))))

(declare-fun b!2201070 () Bool)

(declare-fun res!946284 () Bool)

(assert (=> b!2201070 (=> (not res!946284) (not e!1406455))))

(assert (=> b!2201070 (= res!946284 (<= (- (height!1252 (left!19710 (c!350946 totalInput!891))) (height!1252 (right!20040 (c!350946 totalInput!891)))) 1))))

(declare-fun b!2201071 () Bool)

(assert (=> b!2201071 (= e!1406455 (not (isEmpty!14639 (right!20040 (c!350946 totalInput!891)))))))

(declare-fun d!658403 () Bool)

(declare-fun res!946281 () Bool)

(assert (=> d!658403 (=> res!946281 e!1406454)))

(assert (=> d!658403 (= res!946281 (not (is-Node!8362 (c!350946 totalInput!891))))))

(assert (=> d!658403 (= (isBalanced!2569 (c!350946 totalInput!891)) e!1406454)))

(assert (= (and d!658403 (not res!946281)) b!2201066))

(assert (= (and b!2201066 res!946280) b!2201070))

(assert (= (and b!2201070 res!946284) b!2201069))

(assert (= (and b!2201069 res!946283) b!2201067))

(assert (= (and b!2201067 res!946285) b!2201068))

(assert (= (and b!2201068 res!946282) b!2201071))

(declare-fun m!2643655 () Bool)

(assert (=> b!2201066 m!2643655))

(declare-fun m!2643657 () Bool)

(assert (=> b!2201066 m!2643657))

(declare-fun m!2643659 () Bool)

(assert (=> b!2201068 m!2643659))

(declare-fun m!2643661 () Bool)

(assert (=> b!2201069 m!2643661))

(declare-fun m!2643663 () Bool)

(assert (=> b!2201067 m!2643663))

(declare-fun m!2643665 () Bool)

(assert (=> b!2201071 m!2643665))

(assert (=> b!2201070 m!2643655))

(assert (=> b!2201070 m!2643657))

(assert (=> d!658377 d!658403))

(declare-fun b!2201072 () Bool)

(declare-fun e!1406456 () Int)

(declare-fun e!1406459 () Int)

(assert (=> b!2201072 (= e!1406456 e!1406459)))

(declare-fun c!351019 () Bool)

(assert (=> b!2201072 (= c!351019 (>= (- knownSize!10 1) (size!19995 (t!198364 (drop!1414 (list!9884 totalInput!891) from!1082)))))))

(declare-fun d!658405 () Bool)

(declare-fun e!1406457 () Bool)

(assert (=> d!658405 e!1406457))

(declare-fun res!946286 () Bool)

(assert (=> d!658405 (=> (not res!946286) (not e!1406457))))

(declare-fun lt!823331 () List!25746)

(assert (=> d!658405 (= res!946286 (set.subset (content!3480 lt!823331) (content!3480 (t!198364 (drop!1414 (list!9884 totalInput!891) from!1082)))))))

(declare-fun e!1406458 () List!25746)

(assert (=> d!658405 (= lt!823331 e!1406458)))

(declare-fun c!351018 () Bool)

(assert (=> d!658405 (= c!351018 (or (is-Nil!25662 (t!198364 (drop!1414 (list!9884 totalInput!891) from!1082))) (<= (- knownSize!10 1) 0)))))

(assert (=> d!658405 (= (take!404 (t!198364 (drop!1414 (list!9884 totalInput!891) from!1082)) (- knownSize!10 1)) lt!823331)))

(declare-fun b!2201073 () Bool)

(assert (=> b!2201073 (= e!1406456 0)))

(declare-fun b!2201074 () Bool)

(assert (=> b!2201074 (= e!1406459 (size!19995 (t!198364 (drop!1414 (list!9884 totalInput!891) from!1082))))))

(declare-fun b!2201075 () Bool)

(assert (=> b!2201075 (= e!1406458 Nil!25662)))

(declare-fun b!2201076 () Bool)

(assert (=> b!2201076 (= e!1406457 (= (size!19995 lt!823331) e!1406456))))

(declare-fun c!351020 () Bool)

(assert (=> b!2201076 (= c!351020 (<= (- knownSize!10 1) 0))))

(declare-fun b!2201077 () Bool)

(assert (=> b!2201077 (= e!1406459 (- knownSize!10 1))))

(declare-fun b!2201078 () Bool)

(assert (=> b!2201078 (= e!1406458 (Cons!25662 (h!31063 (t!198364 (drop!1414 (list!9884 totalInput!891) from!1082))) (take!404 (t!198364 (t!198364 (drop!1414 (list!9884 totalInput!891) from!1082))) (- (- knownSize!10 1) 1))))))

(assert (= (and d!658405 c!351018) b!2201075))

(assert (= (and d!658405 (not c!351018)) b!2201078))

(assert (= (and d!658405 res!946286) b!2201076))

(assert (= (and b!2201076 c!351020) b!2201073))

(assert (= (and b!2201076 (not c!351020)) b!2201072))

(assert (= (and b!2201072 c!351019) b!2201074))

(assert (= (and b!2201072 (not c!351019)) b!2201077))

(declare-fun m!2643667 () Bool)

(assert (=> d!658405 m!2643667))

(assert (=> d!658405 m!2643637))

(declare-fun m!2643669 () Bool)

(assert (=> b!2201076 m!2643669))

(declare-fun m!2643671 () Bool)

(assert (=> b!2201078 m!2643671))

(declare-fun m!2643673 () Bool)

(assert (=> b!2201072 m!2643673))

(assert (=> b!2201074 m!2643673))

(assert (=> b!2200904 d!658405))

(declare-fun bs!450545 () Bool)

(declare-fun d!658407 () Bool)

(assert (= bs!450545 (and d!658407 d!658363)))

(declare-fun lambda!82912 () Int)

(assert (=> bs!450545 (= lambda!82912 lambda!82902)))

(assert (=> d!658407 (= (inv!34478 setElem!18987) (forall!5242 (exprs!2296 setElem!18987) lambda!82912))))

(declare-fun bs!450546 () Bool)

(assert (= bs!450546 d!658407))

(declare-fun m!2643675 () Bool)

(assert (=> bs!450546 m!2643675))

(assert (=> setNonEmpty!18987 d!658407))

(assert (=> b!2200828 d!658379))

(declare-fun d!658409 () Bool)

(declare-fun lt!823332 () Int)

(assert (=> d!658409 (>= lt!823332 0)))

(declare-fun e!1406460 () Int)

(assert (=> d!658409 (= lt!823332 e!1406460)))

(declare-fun c!351021 () Bool)

(assert (=> d!658409 (= c!351021 (is-Nil!25662 lt!823310))))

(assert (=> d!658409 (= (size!19995 lt!823310) lt!823332)))

(declare-fun b!2201079 () Bool)

(assert (=> b!2201079 (= e!1406460 0)))

(declare-fun b!2201080 () Bool)

(assert (=> b!2201080 (= e!1406460 (+ 1 (size!19995 (t!198364 lt!823310))))))

(assert (= (and d!658409 c!351021) b!2201079))

(assert (= (and d!658409 (not c!351021)) b!2201080))

(declare-fun m!2643677 () Bool)

(assert (=> b!2201080 m!2643677))

(assert (=> b!2200902 d!658409))

(declare-fun d!658411 () Bool)

(declare-fun lt!823335 () Bool)

(declare-datatypes ((List!25750 0))(
  ( (Nil!25666) (Cons!25666 (h!31067 Context!3592) (t!198373 List!25750)) )
))
(declare-fun exists!831 (List!25750 Int) Bool)

(declare-fun toList!1264 ((Set Context!3592)) List!25750)

(assert (=> d!658411 (= lt!823335 (exists!831 (toList!1264 z!3888) lambda!82905))))

(declare-fun choose!13022 ((Set Context!3592) Int) Bool)

(assert (=> d!658411 (= lt!823335 (choose!13022 z!3888 lambda!82905))))

(assert (=> d!658411 (= (exists!829 z!3888 lambda!82905) lt!823335)))

(declare-fun bs!450547 () Bool)

(assert (= bs!450547 d!658411))

(declare-fun m!2643679 () Bool)

(assert (=> bs!450547 m!2643679))

(assert (=> bs!450547 m!2643679))

(declare-fun m!2643681 () Bool)

(assert (=> bs!450547 m!2643681))

(declare-fun m!2643683 () Bool)

(assert (=> bs!450547 m!2643683))

(assert (=> d!658381 d!658411))

(declare-fun b!2201092 () Bool)

(declare-fun e!1406466 () List!25746)

(declare-fun ++!6425 (List!25746 List!25746) List!25746)

(assert (=> b!2201092 (= e!1406466 (++!6425 (list!9886 (left!19710 (c!350946 totalInput!891))) (list!9886 (right!20040 (c!350946 totalInput!891)))))))

(declare-fun b!2201089 () Bool)

(declare-fun e!1406465 () List!25746)

(assert (=> b!2201089 (= e!1406465 Nil!25662)))

(declare-fun d!658413 () Bool)

(declare-fun c!351026 () Bool)

(assert (=> d!658413 (= c!351026 (is-Empty!8362 (c!350946 totalInput!891)))))

(assert (=> d!658413 (= (list!9886 (c!350946 totalInput!891)) e!1406465)))

(declare-fun b!2201091 () Bool)

(declare-fun list!9888 (IArray!16729) List!25746)

(assert (=> b!2201091 (= e!1406466 (list!9888 (xs!11304 (c!350946 totalInput!891))))))

(declare-fun b!2201090 () Bool)

(assert (=> b!2201090 (= e!1406465 e!1406466)))

(declare-fun c!351027 () Bool)

(assert (=> b!2201090 (= c!351027 (is-Leaf!12243 (c!350946 totalInput!891)))))

(assert (= (and d!658413 c!351026) b!2201089))

(assert (= (and d!658413 (not c!351026)) b!2201090))

(assert (= (and b!2201090 c!351027) b!2201091))

(assert (= (and b!2201090 (not c!351027)) b!2201092))

(declare-fun m!2643685 () Bool)

(assert (=> b!2201092 m!2643685))

(declare-fun m!2643687 () Bool)

(assert (=> b!2201092 m!2643687))

(assert (=> b!2201092 m!2643685))

(assert (=> b!2201092 m!2643687))

(declare-fun m!2643689 () Bool)

(assert (=> b!2201092 m!2643689))

(declare-fun m!2643691 () Bool)

(assert (=> b!2201091 m!2643691))

(assert (=> d!658361 d!658413))

(declare-fun d!658415 () Bool)

(declare-fun e!1406471 () Bool)

(assert (=> d!658415 e!1406471))

(declare-fun res!946287 () Bool)

(assert (=> d!658415 (=> (not res!946287) (not e!1406471))))

(declare-fun lt!823336 () List!25746)

(assert (=> d!658415 (= res!946287 (set.subset (content!3480 lt!823336) (content!3480 (t!198364 (list!9884 totalInput!891)))))))

(declare-fun e!1406470 () List!25746)

(assert (=> d!658415 (= lt!823336 e!1406470)))

(declare-fun c!351030 () Bool)

(assert (=> d!658415 (= c!351030 (is-Nil!25662 (t!198364 (list!9884 totalInput!891))))))

(assert (=> d!658415 (= (drop!1414 (t!198364 (list!9884 totalInput!891)) (- from!1082 1)) lt!823336)))

(declare-fun b!2201093 () Bool)

(declare-fun e!1406468 () List!25746)

(assert (=> b!2201093 (= e!1406468 (drop!1414 (t!198364 (t!198364 (list!9884 totalInput!891))) (- (- from!1082 1) 1)))))

(declare-fun b!2201094 () Bool)

(declare-fun e!1406467 () Int)

(declare-fun call!132117 () Int)

(assert (=> b!2201094 (= e!1406467 call!132117)))

(declare-fun b!2201095 () Bool)

(assert (=> b!2201095 (= e!1406470 Nil!25662)))

(declare-fun b!2201096 () Bool)

(assert (=> b!2201096 (= e!1406471 (= (size!19995 lt!823336) e!1406467))))

(declare-fun c!351029 () Bool)

(assert (=> b!2201096 (= c!351029 (<= (- from!1082 1) 0))))

(declare-fun b!2201097 () Bool)

(declare-fun e!1406469 () Int)

(assert (=> b!2201097 (= e!1406467 e!1406469)))

(declare-fun c!351028 () Bool)

(assert (=> b!2201097 (= c!351028 (>= (- from!1082 1) call!132117))))

(declare-fun b!2201098 () Bool)

(assert (=> b!2201098 (= e!1406469 (- call!132117 (- from!1082 1)))))

(declare-fun b!2201099 () Bool)

(assert (=> b!2201099 (= e!1406468 (t!198364 (list!9884 totalInput!891)))))

(declare-fun b!2201100 () Bool)

(assert (=> b!2201100 (= e!1406469 0)))

(declare-fun bm!132112 () Bool)

(assert (=> bm!132112 (= call!132117 (size!19995 (t!198364 (list!9884 totalInput!891))))))

(declare-fun b!2201101 () Bool)

(assert (=> b!2201101 (= e!1406470 e!1406468)))

(declare-fun c!351031 () Bool)

(assert (=> b!2201101 (= c!351031 (<= (- from!1082 1) 0))))

(assert (= (and d!658415 c!351030) b!2201095))

(assert (= (and d!658415 (not c!351030)) b!2201101))

(assert (= (and b!2201101 c!351031) b!2201099))

(assert (= (and b!2201101 (not c!351031)) b!2201093))

(assert (= (and d!658415 res!946287) b!2201096))

(assert (= (and b!2201096 c!351029) b!2201094))

(assert (= (and b!2201096 (not c!351029)) b!2201097))

(assert (= (and b!2201097 c!351028) b!2201100))

(assert (= (and b!2201097 (not c!351028)) b!2201098))

(assert (= (or b!2201094 b!2201097 b!2201098) bm!132112))

(declare-fun m!2643693 () Bool)

(assert (=> d!658415 m!2643693))

(declare-fun m!2643695 () Bool)

(assert (=> d!658415 m!2643695))

(declare-fun m!2643697 () Bool)

(assert (=> b!2201093 m!2643697))

(declare-fun m!2643699 () Bool)

(assert (=> b!2201096 m!2643699))

(assert (=> bm!132112 m!2643643))

(assert (=> b!2200948 d!658415))

(declare-fun d!658417 () Bool)

(declare-fun lt!823337 () Int)

(assert (=> d!658417 (>= lt!823337 0)))

(declare-fun e!1406472 () Int)

(assert (=> d!658417 (= lt!823337 e!1406472)))

(declare-fun c!351032 () Bool)

(assert (=> d!658417 (= c!351032 (is-Nil!25662 (drop!1414 (list!9884 totalInput!891) from!1082)))))

(assert (=> d!658417 (= (size!19995 (drop!1414 (list!9884 totalInput!891) from!1082)) lt!823337)))

(declare-fun b!2201102 () Bool)

(assert (=> b!2201102 (= e!1406472 0)))

(declare-fun b!2201103 () Bool)

(assert (=> b!2201103 (= e!1406472 (+ 1 (size!19995 (t!198364 (drop!1414 (list!9884 totalInput!891) from!1082)))))))

(assert (= (and d!658417 c!351032) b!2201102))

(assert (= (and d!658417 (not c!351032)) b!2201103))

(assert (=> b!2201103 m!2643673))

(assert (=> b!2200900 d!658417))

(declare-fun d!658419 () Bool)

(declare-fun res!946294 () Bool)

(declare-fun e!1406475 () Bool)

(assert (=> d!658419 (=> (not res!946294) (not e!1406475))))

(assert (=> d!658419 (= res!946294 (= (csize!16954 (c!350946 totalInput!891)) (+ (size!19996 (left!19710 (c!350946 totalInput!891))) (size!19996 (right!20040 (c!350946 totalInput!891))))))))

(assert (=> d!658419 (= (inv!34483 (c!350946 totalInput!891)) e!1406475)))

(declare-fun b!2201110 () Bool)

(declare-fun res!946295 () Bool)

(assert (=> b!2201110 (=> (not res!946295) (not e!1406475))))

(assert (=> b!2201110 (= res!946295 (and (not (= (left!19710 (c!350946 totalInput!891)) Empty!8362)) (not (= (right!20040 (c!350946 totalInput!891)) Empty!8362))))))

(declare-fun b!2201111 () Bool)

(declare-fun res!946296 () Bool)

(assert (=> b!2201111 (=> (not res!946296) (not e!1406475))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2201111 (= res!946296 (= (cheight!8573 (c!350946 totalInput!891)) (+ (max!0 (height!1252 (left!19710 (c!350946 totalInput!891))) (height!1252 (right!20040 (c!350946 totalInput!891)))) 1)))))

(declare-fun b!2201112 () Bool)

(assert (=> b!2201112 (= e!1406475 (<= 0 (cheight!8573 (c!350946 totalInput!891))))))

(assert (= (and d!658419 res!946294) b!2201110))

(assert (= (and b!2201110 res!946295) b!2201111))

(assert (= (and b!2201111 res!946296) b!2201112))

(declare-fun m!2643701 () Bool)

(assert (=> d!658419 m!2643701))

(declare-fun m!2643703 () Bool)

(assert (=> d!658419 m!2643703))

(assert (=> b!2201111 m!2643655))

(assert (=> b!2201111 m!2643657))

(assert (=> b!2201111 m!2643655))

(assert (=> b!2201111 m!2643657))

(declare-fun m!2643705 () Bool)

(assert (=> b!2201111 m!2643705))

(assert (=> b!2200981 d!658419))

(assert (=> d!658383 d!658395))

(assert (=> d!658383 d!658361))

(declare-fun d!658421 () Bool)

(declare-fun lt!823340 () Int)

(assert (=> d!658421 (= lt!823340 (size!19995 (list!9886 (c!350946 totalInput!891))))))

(assert (=> d!658421 (= lt!823340 (ite (is-Empty!8362 (c!350946 totalInput!891)) 0 (ite (is-Leaf!12243 (c!350946 totalInput!891)) (csize!16955 (c!350946 totalInput!891)) (csize!16954 (c!350946 totalInput!891)))))))

(assert (=> d!658421 (= (size!19996 (c!350946 totalInput!891)) lt!823340)))

(declare-fun bs!450548 () Bool)

(assert (= bs!450548 d!658421))

(assert (=> bs!450548 m!2643573))

(assert (=> bs!450548 m!2643573))

(declare-fun m!2643707 () Bool)

(assert (=> bs!450548 m!2643707))

(assert (=> d!658383 d!658421))

(assert (=> b!2200898 d!658417))

(declare-fun d!658423 () Bool)

(declare-fun res!946301 () Bool)

(declare-fun e!1406478 () Bool)

(assert (=> d!658423 (=> (not res!946301) (not e!1406478))))

(assert (=> d!658423 (= res!946301 (<= (size!19995 (list!9888 (xs!11304 (c!350946 totalInput!891)))) 512))))

(assert (=> d!658423 (= (inv!34484 (c!350946 totalInput!891)) e!1406478)))

(declare-fun b!2201117 () Bool)

(declare-fun res!946302 () Bool)

(assert (=> b!2201117 (=> (not res!946302) (not e!1406478))))

(assert (=> b!2201117 (= res!946302 (= (csize!16955 (c!350946 totalInput!891)) (size!19995 (list!9888 (xs!11304 (c!350946 totalInput!891))))))))

(declare-fun b!2201118 () Bool)

(assert (=> b!2201118 (= e!1406478 (and (> (csize!16955 (c!350946 totalInput!891)) 0) (<= (csize!16955 (c!350946 totalInput!891)) 512)))))

(assert (= (and d!658423 res!946301) b!2201117))

(assert (= (and b!2201117 res!946302) b!2201118))

(assert (=> d!658423 m!2643691))

(assert (=> d!658423 m!2643691))

(declare-fun m!2643709 () Bool)

(assert (=> d!658423 m!2643709))

(assert (=> b!2201117 m!2643691))

(assert (=> b!2201117 m!2643691))

(assert (=> b!2201117 m!2643709))

(assert (=> b!2200983 d!658423))

(assert (=> b!2200866 d!658381))

(declare-fun d!658425 () Bool)

(assert (=> d!658425 (= (isEmpty!14638 (list!9884 totalInput!891)) (is-Nil!25662 (list!9884 totalInput!891)))))

(assert (=> d!658347 d!658425))

(assert (=> d!658347 d!658361))

(declare-fun d!658427 () Bool)

(declare-fun lt!823343 () Bool)

(assert (=> d!658427 (= lt!823343 (isEmpty!14638 (list!9886 (c!350946 totalInput!891))))))

(assert (=> d!658427 (= lt!823343 (= (size!19996 (c!350946 totalInput!891)) 0))))

(assert (=> d!658427 (= (isEmpty!14639 (c!350946 totalInput!891)) lt!823343)))

(declare-fun bs!450549 () Bool)

(assert (= bs!450549 d!658427))

(assert (=> bs!450549 m!2643573))

(assert (=> bs!450549 m!2643573))

(declare-fun m!2643711 () Bool)

(assert (=> bs!450549 m!2643711))

(assert (=> bs!450549 m!2643609))

(assert (=> d!658347 d!658427))

(declare-fun d!658429 () Bool)

(declare-fun c!351033 () Bool)

(assert (=> d!658429 (= c!351033 (isEmpty!14638 (tail!3171 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10))))))

(declare-fun e!1406479 () Bool)

(assert (=> d!658429 (= (matchZipper!312 (derivationStepZipper!284 z!3888 (head!4693 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10))) (tail!3171 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10))) e!1406479)))

(declare-fun b!2201119 () Bool)

(assert (=> b!2201119 (= e!1406479 (nullableZipper!506 (derivationStepZipper!284 z!3888 (head!4693 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10)))))))

(declare-fun b!2201120 () Bool)

(assert (=> b!2201120 (= e!1406479 (matchZipper!312 (derivationStepZipper!284 (derivationStepZipper!284 z!3888 (head!4693 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10))) (head!4693 (tail!3171 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10)))) (tail!3171 (tail!3171 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10)))))))

(assert (= (and d!658429 c!351033) b!2201119))

(assert (= (and d!658429 (not c!351033)) b!2201120))

(assert (=> d!658429 m!2643529))

(declare-fun m!2643713 () Bool)

(assert (=> d!658429 m!2643713))

(assert (=> b!2201119 m!2643527))

(declare-fun m!2643715 () Bool)

(assert (=> b!2201119 m!2643715))

(assert (=> b!2201120 m!2643529))

(declare-fun m!2643717 () Bool)

(assert (=> b!2201120 m!2643717))

(assert (=> b!2201120 m!2643527))

(assert (=> b!2201120 m!2643717))

(declare-fun m!2643719 () Bool)

(assert (=> b!2201120 m!2643719))

(assert (=> b!2201120 m!2643529))

(declare-fun m!2643721 () Bool)

(assert (=> b!2201120 m!2643721))

(assert (=> b!2201120 m!2643719))

(assert (=> b!2201120 m!2643721))

(declare-fun m!2643723 () Bool)

(assert (=> b!2201120 m!2643723))

(assert (=> b!2200867 d!658429))

(declare-fun d!658431 () Bool)

(assert (=> d!658431 true))

(declare-fun lambda!82915 () Int)

(declare-fun flatMap!159 ((Set Context!3592) Int) (Set Context!3592))

(assert (=> d!658431 (= (derivationStepZipper!284 z!3888 (head!4693 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10))) (flatMap!159 z!3888 lambda!82915))))

(declare-fun bs!450550 () Bool)

(assert (= bs!450550 d!658431))

(declare-fun m!2643725 () Bool)

(assert (=> bs!450550 m!2643725))

(assert (=> b!2200867 d!658431))

(declare-fun d!658433 () Bool)

(assert (=> d!658433 (= (head!4693 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10)) (h!31063 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10)))))

(assert (=> b!2200867 d!658433))

(declare-fun d!658435 () Bool)

(assert (=> d!658435 (= (tail!3171 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10)) (t!198364 (take!404 (drop!1414 (list!9884 totalInput!891) from!1082) knownSize!10)))))

(assert (=> b!2200867 d!658435))

(declare-fun d!658437 () Bool)

(declare-fun c!351036 () Bool)

(assert (=> d!658437 (= c!351036 (is-Nil!25662 lt!823316))))

(declare-fun e!1406480 () (Set C!12598))

(assert (=> d!658437 (= (content!3480 lt!823316) e!1406480)))

(declare-fun b!2201123 () Bool)

(assert (=> b!2201123 (= e!1406480 (as set.empty (Set C!12598)))))

(declare-fun b!2201124 () Bool)

(assert (=> b!2201124 (= e!1406480 (set.union (set.insert (h!31063 lt!823316) (as set.empty (Set C!12598))) (content!3480 (t!198364 lt!823316))))))

(assert (= (and d!658437 c!351036) b!2201123))

(assert (= (and d!658437 (not c!351036)) b!2201124))

(declare-fun m!2643727 () Bool)

(assert (=> b!2201124 m!2643727))

(declare-fun m!2643729 () Bool)

(assert (=> b!2201124 m!2643729))

(assert (=> d!658357 d!658437))

(declare-fun d!658439 () Bool)

(declare-fun c!351037 () Bool)

(assert (=> d!658439 (= c!351037 (is-Nil!25662 (list!9884 totalInput!891)))))

(declare-fun e!1406481 () (Set C!12598))

(assert (=> d!658439 (= (content!3480 (list!9884 totalInput!891)) e!1406481)))

(declare-fun b!2201125 () Bool)

(assert (=> b!2201125 (= e!1406481 (as set.empty (Set C!12598)))))

(declare-fun b!2201126 () Bool)

(assert (=> b!2201126 (= e!1406481 (set.union (set.insert (h!31063 (list!9884 totalInput!891)) (as set.empty (Set C!12598))) (content!3480 (t!198364 (list!9884 totalInput!891)))))))

(assert (= (and d!658439 c!351037) b!2201125))

(assert (= (and d!658439 (not c!351037)) b!2201126))

(declare-fun m!2643731 () Bool)

(assert (=> b!2201126 m!2643731))

(assert (=> b!2201126 m!2643695))

(assert (=> d!658357 d!658439))

(declare-fun d!658441 () Bool)

(assert (=> d!658441 (= (inv!34485 (xs!11304 (c!350946 totalInput!891))) (<= (size!19995 (innerList!8422 (xs!11304 (c!350946 totalInput!891)))) 2147483647))))

(declare-fun bs!450551 () Bool)

(assert (= bs!450551 d!658441))

(declare-fun m!2643733 () Bool)

(assert (=> bs!450551 m!2643733))

(assert (=> b!2200998 d!658441))

(declare-fun b!2201127 () Bool)

(declare-fun e!1406482 () Bool)

(declare-fun tp!684901 () Bool)

(declare-fun tp!684902 () Bool)

(assert (=> b!2201127 (= e!1406482 (and tp!684901 tp!684902))))

(assert (=> b!2200988 (= tp!684864 e!1406482)))

(assert (= (and b!2200988 (is-Cons!25663 (exprs!2296 setElem!18987))) b!2201127))

(declare-fun b!2201132 () Bool)

(declare-fun e!1406485 () Bool)

(declare-fun tp_is_empty!9735 () Bool)

(declare-fun tp!684905 () Bool)

(assert (=> b!2201132 (= e!1406485 (and tp_is_empty!9735 tp!684905))))

(assert (=> b!2200999 (= tp!684872 e!1406485)))

(assert (= (and b!2200999 (is-Cons!25662 (innerList!8422 (xs!11304 (c!350946 totalInput!891))))) b!2201132))

(declare-fun condSetEmpty!18991 () Bool)

(assert (=> setNonEmpty!18987 (= condSetEmpty!18991 (= setRest!18987 (as set.empty (Set Context!3592))))))

(declare-fun setRes!18991 () Bool)

(assert (=> setNonEmpty!18987 (= tp!684863 setRes!18991)))

(declare-fun setIsEmpty!18991 () Bool)

(assert (=> setIsEmpty!18991 setRes!18991))

(declare-fun e!1406486 () Bool)

(declare-fun setElem!18991 () Context!3592)

(declare-fun setNonEmpty!18991 () Bool)

(declare-fun tp!684906 () Bool)

(assert (=> setNonEmpty!18991 (= setRes!18991 (and tp!684906 (inv!34478 setElem!18991) e!1406486))))

(declare-fun setRest!18991 () (Set Context!3592))

(assert (=> setNonEmpty!18991 (= setRest!18987 (set.union (set.insert setElem!18991 (as set.empty (Set Context!3592))) setRest!18991))))

(declare-fun b!2201133 () Bool)

(declare-fun tp!684907 () Bool)

(assert (=> b!2201133 (= e!1406486 tp!684907)))

(assert (= (and setNonEmpty!18987 condSetEmpty!18991) setIsEmpty!18991))

(assert (= (and setNonEmpty!18987 (not condSetEmpty!18991)) setNonEmpty!18991))

(assert (= setNonEmpty!18991 b!2201133))

(declare-fun m!2643735 () Bool)

(assert (=> setNonEmpty!18991 m!2643735))

(declare-fun tp!684910 () Bool)

(declare-fun b!2201134 () Bool)

(declare-fun tp!684908 () Bool)

(declare-fun e!1406488 () Bool)

(assert (=> b!2201134 (= e!1406488 (and (inv!34479 (left!19710 (left!19710 (c!350946 totalInput!891)))) tp!684910 (inv!34479 (right!20040 (left!19710 (c!350946 totalInput!891)))) tp!684908))))

(declare-fun b!2201136 () Bool)

(declare-fun e!1406487 () Bool)

(declare-fun tp!684909 () Bool)

(assert (=> b!2201136 (= e!1406487 tp!684909)))

(declare-fun b!2201135 () Bool)

(assert (=> b!2201135 (= e!1406488 (and (inv!34485 (xs!11304 (left!19710 (c!350946 totalInput!891)))) e!1406487))))

(assert (=> b!2200997 (= tp!684873 (and (inv!34479 (left!19710 (c!350946 totalInput!891))) e!1406488))))

(assert (= (and b!2200997 (is-Node!8362 (left!19710 (c!350946 totalInput!891)))) b!2201134))

(assert (= b!2201135 b!2201136))

(assert (= (and b!2200997 (is-Leaf!12243 (left!19710 (c!350946 totalInput!891)))) b!2201135))

(declare-fun m!2643737 () Bool)

(assert (=> b!2201134 m!2643737))

(declare-fun m!2643739 () Bool)

(assert (=> b!2201134 m!2643739))

(declare-fun m!2643741 () Bool)

(assert (=> b!2201135 m!2643741))

(assert (=> b!2200997 m!2643613))

(declare-fun e!1406490 () Bool)

(declare-fun tp!684911 () Bool)

(declare-fun b!2201137 () Bool)

(declare-fun tp!684913 () Bool)

(assert (=> b!2201137 (= e!1406490 (and (inv!34479 (left!19710 (right!20040 (c!350946 totalInput!891)))) tp!684913 (inv!34479 (right!20040 (right!20040 (c!350946 totalInput!891)))) tp!684911))))

(declare-fun b!2201139 () Bool)

(declare-fun e!1406489 () Bool)

(declare-fun tp!684912 () Bool)

(assert (=> b!2201139 (= e!1406489 tp!684912)))

(declare-fun b!2201138 () Bool)

(assert (=> b!2201138 (= e!1406490 (and (inv!34485 (xs!11304 (right!20040 (c!350946 totalInput!891)))) e!1406489))))

(assert (=> b!2200997 (= tp!684871 (and (inv!34479 (right!20040 (c!350946 totalInput!891))) e!1406490))))

(assert (= (and b!2200997 (is-Node!8362 (right!20040 (c!350946 totalInput!891)))) b!2201137))

(assert (= b!2201138 b!2201139))

(assert (= (and b!2200997 (is-Leaf!12243 (right!20040 (c!350946 totalInput!891)))) b!2201138))

(declare-fun m!2643743 () Bool)

(assert (=> b!2201137 m!2643743))

(declare-fun m!2643745 () Bool)

(assert (=> b!2201137 m!2643745))

(declare-fun m!2643747 () Bool)

(assert (=> b!2201138 m!2643747))

(assert (=> b!2200997 m!2643615))

(declare-fun b!2201153 () Bool)

(declare-fun e!1406493 () Bool)

(declare-fun tp!684925 () Bool)

(declare-fun tp!684928 () Bool)

(assert (=> b!2201153 (= e!1406493 (and tp!684925 tp!684928))))

(assert (=> b!2201004 (= tp!684878 e!1406493)))

(declare-fun b!2201152 () Bool)

(declare-fun tp!684924 () Bool)

(assert (=> b!2201152 (= e!1406493 tp!684924)))

(declare-fun b!2201150 () Bool)

(assert (=> b!2201150 (= e!1406493 tp_is_empty!9735)))

(declare-fun b!2201151 () Bool)

(declare-fun tp!684927 () Bool)

(declare-fun tp!684926 () Bool)

(assert (=> b!2201151 (= e!1406493 (and tp!684927 tp!684926))))

(assert (= (and b!2201004 (is-ElementMatch!6226 (h!31064 (exprs!2296 setElem!18981)))) b!2201150))

(assert (= (and b!2201004 (is-Concat!10528 (h!31064 (exprs!2296 setElem!18981)))) b!2201151))

(assert (= (and b!2201004 (is-Star!6226 (h!31064 (exprs!2296 setElem!18981)))) b!2201152))

(assert (= (and b!2201004 (is-Union!6226 (h!31064 (exprs!2296 setElem!18981)))) b!2201153))

(declare-fun b!2201154 () Bool)

(declare-fun e!1406494 () Bool)

(declare-fun tp!684929 () Bool)

(declare-fun tp!684930 () Bool)

(assert (=> b!2201154 (= e!1406494 (and tp!684929 tp!684930))))

(assert (=> b!2201004 (= tp!684879 e!1406494)))

(assert (= (and b!2201004 (is-Cons!25663 (t!198365 (exprs!2296 setElem!18981)))) b!2201154))

(declare-fun b_lambda!71227 () Bool)

(assert (= b_lambda!71225 (or d!658363 b_lambda!71227)))

(declare-fun bs!450552 () Bool)

(declare-fun d!658443 () Bool)

(assert (= bs!450552 (and d!658443 d!658363)))

(declare-fun validRegex!2340 (Regex!6226) Bool)

(assert (=> bs!450552 (= (dynLambda!11450 lambda!82902 (h!31064 (exprs!2296 setElem!18981))) (validRegex!2340 (h!31064 (exprs!2296 setElem!18981))))))

(declare-fun m!2643749 () Bool)

(assert (=> bs!450552 m!2643749))

(assert (=> b!2201038 d!658443))

(push 1)

(assert (not d!658415))

(assert (not b!2201067))

(assert (not b!2201135))

(assert (not b!2201074))

(assert (not bs!450552))

(assert (not setNonEmpty!18991))

(assert (not b!2201137))

(assert (not b!2201051))

(assert (not b!2201134))

(assert (not d!658419))

(assert (not b!2201045))

(assert (not d!658441))

(assert (not b!2201151))

(assert (not b!2201047))

(assert (not b!2201092))

(assert (not d!658421))

(assert (not b!2201053))

(assert (not b!2201091))

(assert (not b!2201031))

(assert (not b!2201070))

(assert (not b!2201124))

(assert (not d!658423))

(assert (not b!2201050))

(assert (not b!2201120))

(assert (not b!2201071))

(assert (not b!2201154))

(assert (not b!2201068))

(assert (not b!2201096))

(assert (not b!2201039))

(assert (not b!2201048))

(assert (not b!2201152))

(assert (not b!2201111))

(assert (not b!2201080))

(assert (not b!2201093))

(assert (not b!2201126))

(assert (not b!2201133))

(assert (not b!2200997))

(assert (not b!2201117))

(assert (not b!2201136))

(assert (not b!2201103))

(assert (not d!658429))

(assert (not bm!132112))

(assert (not b!2201033))

(assert (not b!2201076))

(assert (not d!658427))

(assert (not b!2201066))

(assert (not b!2201153))

(assert (not d!658407))

(assert (not b!2201139))

(assert (not b_lambda!71227))

(assert (not b!2201132))

(assert (not d!658411))

(assert (not b!2201138))

(assert (not d!658405))

(assert (not b!2201069))

(assert (not b!2201127))

(assert (not d!658431))

(assert (not b!2201078))

(assert (not b!2201072))

(assert (not b!2201119))

(assert tp_is_empty!9735)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


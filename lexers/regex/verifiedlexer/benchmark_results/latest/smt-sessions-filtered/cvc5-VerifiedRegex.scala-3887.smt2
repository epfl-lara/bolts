; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!214076 () Bool)

(assert start!214076)

(declare-fun b!2202966 () Bool)

(declare-fun res!946893 () Bool)

(declare-fun e!1407507 () Bool)

(assert (=> b!2202966 (=> (not res!946893) (not e!1407507))))

(declare-datatypes ((C!12626 0))(
  ( (C!12627 (val!7299 Int)) )
))
(declare-datatypes ((List!25778 0))(
  ( (Nil!25694) (Cons!25694 (h!31095 C!12626) (t!198412 List!25778)) )
))
(declare-fun lt!823718 () List!25778)

(declare-fun isEmpty!14675 (List!25778) Bool)

(assert (=> b!2202966 (= res!946893 (isEmpty!14675 lt!823718))))

(declare-fun setIsEmpty!19063 () Bool)

(declare-fun setRes!19063 () Bool)

(assert (=> setIsEmpty!19063 setRes!19063))

(declare-fun b!2202967 () Bool)

(declare-fun res!946890 () Bool)

(assert (=> b!2202967 (=> (not res!946890) (not e!1407507))))

(declare-datatypes ((IArray!16757 0))(
  ( (IArray!16758 (innerList!8436 List!25778)) )
))
(declare-datatypes ((Conc!8376 0))(
  ( (Node!8376 (left!19739 Conc!8376) (right!20069 Conc!8376) (csize!16982 Int) (cheight!8587 Int)) (Leaf!12264 (xs!11318 IArray!16757) (csize!16983 Int)) (Empty!8376) )
))
(declare-datatypes ((BalanceConc!16514 0))(
  ( (BalanceConc!16515 (c!351528 Conc!8376)) )
))
(declare-fun totalInput!891 () BalanceConc!16514)

(declare-fun isEmpty!14676 (BalanceConc!16514) Bool)

(assert (=> b!2202967 (= res!946890 (not (isEmpty!14676 totalInput!891)))))

(declare-fun b!2202968 () Bool)

(declare-fun e!1407502 () Bool)

(declare-fun tp!685346 () Bool)

(declare-fun inv!34574 (Conc!8376) Bool)

(assert (=> b!2202968 (= e!1407502 (and (inv!34574 (c!351528 totalInput!891)) tp!685346))))

(declare-datatypes ((Regex!6240 0))(
  ( (ElementMatch!6240 (c!351529 C!12626)) (Concat!10542 (regOne!12992 Regex!6240) (regTwo!12992 Regex!6240)) (EmptyExpr!6240) (Star!6240 (reg!6569 Regex!6240)) (EmptyLang!6240) (Union!6240 (regOne!12993 Regex!6240) (regTwo!12993 Regex!6240)) )
))
(declare-datatypes ((List!25779 0))(
  ( (Nil!25695) (Cons!25695 (h!31096 Regex!6240) (t!198413 List!25779)) )
))
(declare-datatypes ((Context!3620 0))(
  ( (Context!3621 (exprs!2310 List!25779)) )
))
(declare-fun setElem!19063 () Context!3620)

(declare-fun setNonEmpty!19063 () Bool)

(declare-fun tp!685345 () Bool)

(declare-fun e!1407503 () Bool)

(declare-fun inv!34575 (Context!3620) Bool)

(assert (=> setNonEmpty!19063 (= setRes!19063 (and tp!685345 (inv!34575 setElem!19063) e!1407503))))

(declare-fun z!3888 () (Set Context!3620))

(declare-fun setRest!19063 () (Set Context!3620))

(assert (=> setNonEmpty!19063 (= z!3888 (set.union (set.insert setElem!19063 (as set.empty (Set Context!3620))) setRest!19063))))

(declare-fun b!2202969 () Bool)

(declare-fun res!946896 () Bool)

(assert (=> b!2202969 (=> (not res!946896) (not e!1407507))))

(declare-fun knownSize!10 () Int)

(assert (=> b!2202969 (= res!946896 (= knownSize!10 0))))

(declare-fun b!2202970 () Bool)

(declare-fun lt!823717 () Bool)

(assert (=> b!2202970 (= e!1407507 (not lt!823717))))

(declare-fun b!2202971 () Bool)

(declare-fun e!1407505 () Bool)

(declare-fun e!1407506 () Bool)

(assert (=> b!2202971 (= e!1407505 e!1407506)))

(declare-fun res!946892 () Bool)

(assert (=> b!2202971 (=> (not res!946892) (not e!1407506))))

(declare-fun matchZipper!326 ((Set Context!3620) List!25778) Bool)

(assert (=> b!2202971 (= res!946892 (matchZipper!326 z!3888 lt!823718))))

(declare-fun from!1082 () Int)

(declare-fun take!418 (List!25778 Int) List!25778)

(declare-fun drop!1428 (List!25778 Int) List!25778)

(declare-fun list!9912 (BalanceConc!16514) List!25778)

(assert (=> b!2202971 (= lt!823718 (take!418 (drop!1428 (list!9912 totalInput!891) from!1082) knownSize!10))))

(declare-fun b!2202972 () Bool)

(declare-fun tp!685347 () Bool)

(assert (=> b!2202972 (= e!1407503 tp!685347)))

(declare-fun b!2202973 () Bool)

(declare-fun res!946897 () Bool)

(assert (=> b!2202973 (=> (not res!946897) (not e!1407506))))

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2202973 (= res!946897 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2202974 () Bool)

(declare-fun res!946898 () Bool)

(assert (=> b!2202974 (=> (not res!946898) (not e!1407507))))

(declare-fun lt!823719 () Int)

(declare-fun furthestNullablePosition!390 ((Set Context!3620) Int BalanceConc!16514 Int Int) Int)

(assert (=> b!2202974 (= res!946898 (>= (furthestNullablePosition!390 z!3888 from!1082 totalInput!891 lt!823719 lastNullablePos!161) lastNullablePos!161))))

(declare-fun res!946891 () Bool)

(declare-fun e!1407504 () Bool)

(assert (=> start!214076 (=> (not res!946891) (not e!1407504))))

(assert (=> start!214076 (= res!946891 (>= from!1082 0))))

(assert (=> start!214076 e!1407504))

(assert (=> start!214076 true))

(declare-fun inv!34576 (BalanceConc!16514) Bool)

(assert (=> start!214076 (and (inv!34576 totalInput!891) e!1407502)))

(declare-fun condSetEmpty!19063 () Bool)

(assert (=> start!214076 (= condSetEmpty!19063 (= z!3888 (as set.empty (Set Context!3620))))))

(assert (=> start!214076 setRes!19063))

(declare-fun b!2202975 () Bool)

(assert (=> b!2202975 (= e!1407506 e!1407507)))

(declare-fun res!946894 () Bool)

(assert (=> b!2202975 (=> (not res!946894) (not e!1407507))))

(assert (=> b!2202975 (= res!946894 (or (not lt!823717) (= lastNullablePos!161 (- from!1082 1))))))

(declare-fun nullableZipper!520 ((Set Context!3620)) Bool)

(assert (=> b!2202975 (= lt!823717 (nullableZipper!520 z!3888))))

(declare-fun b!2202976 () Bool)

(assert (=> b!2202976 (= e!1407504 e!1407505)))

(declare-fun res!946895 () Bool)

(assert (=> b!2202976 (=> (not res!946895) (not e!1407505))))

(assert (=> b!2202976 (= res!946895 (and (<= from!1082 lt!823719) (>= knownSize!10 0) (<= knownSize!10 (- lt!823719 from!1082))))))

(declare-fun size!20027 (BalanceConc!16514) Int)

(assert (=> b!2202976 (= lt!823719 (size!20027 totalInput!891))))

(assert (= (and start!214076 res!946891) b!2202976))

(assert (= (and b!2202976 res!946895) b!2202971))

(assert (= (and b!2202971 res!946892) b!2202973))

(assert (= (and b!2202973 res!946897) b!2202975))

(assert (= (and b!2202975 res!946894) b!2202967))

(assert (= (and b!2202967 res!946890) b!2202969))

(assert (= (and b!2202969 res!946896) b!2202974))

(assert (= (and b!2202974 res!946898) b!2202966))

(assert (= (and b!2202966 res!946893) b!2202970))

(assert (= start!214076 b!2202968))

(assert (= (and start!214076 condSetEmpty!19063) setIsEmpty!19063))

(assert (= (and start!214076 (not condSetEmpty!19063)) setNonEmpty!19063))

(assert (= setNonEmpty!19063 b!2202972))

(declare-fun m!2645115 () Bool)

(assert (=> b!2202967 m!2645115))

(declare-fun m!2645117 () Bool)

(assert (=> setNonEmpty!19063 m!2645117))

(declare-fun m!2645119 () Bool)

(assert (=> b!2202976 m!2645119))

(declare-fun m!2645121 () Bool)

(assert (=> b!2202974 m!2645121))

(declare-fun m!2645123 () Bool)

(assert (=> start!214076 m!2645123))

(declare-fun m!2645125 () Bool)

(assert (=> b!2202975 m!2645125))

(declare-fun m!2645127 () Bool)

(assert (=> b!2202966 m!2645127))

(declare-fun m!2645129 () Bool)

(assert (=> b!2202971 m!2645129))

(declare-fun m!2645131 () Bool)

(assert (=> b!2202971 m!2645131))

(assert (=> b!2202971 m!2645131))

(declare-fun m!2645133 () Bool)

(assert (=> b!2202971 m!2645133))

(assert (=> b!2202971 m!2645133))

(declare-fun m!2645135 () Bool)

(assert (=> b!2202971 m!2645135))

(declare-fun m!2645137 () Bool)

(assert (=> b!2202968 m!2645137))

(push 1)

(assert (not b!2202968))

(assert (not start!214076))

(assert (not b!2202975))

(assert (not b!2202966))

(assert (not b!2202972))

(assert (not b!2202974))

(assert (not b!2202971))

(assert (not b!2202976))

(assert (not setNonEmpty!19063))

(assert (not b!2202967))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!658882 () Bool)

(declare-fun c!351536 () Bool)

(assert (=> d!658882 (= c!351536 (is-Node!8376 (c!351528 totalInput!891)))))

(declare-fun e!1407534 () Bool)

(assert (=> d!658882 (= (inv!34574 (c!351528 totalInput!891)) e!1407534)))

(declare-fun b!2203022 () Bool)

(declare-fun inv!34580 (Conc!8376) Bool)

(assert (=> b!2203022 (= e!1407534 (inv!34580 (c!351528 totalInput!891)))))

(declare-fun b!2203023 () Bool)

(declare-fun e!1407535 () Bool)

(assert (=> b!2203023 (= e!1407534 e!1407535)))

(declare-fun res!946930 () Bool)

(assert (=> b!2203023 (= res!946930 (not (is-Leaf!12264 (c!351528 totalInput!891))))))

(assert (=> b!2203023 (=> res!946930 e!1407535)))

(declare-fun b!2203024 () Bool)

(declare-fun inv!34581 (Conc!8376) Bool)

(assert (=> b!2203024 (= e!1407535 (inv!34581 (c!351528 totalInput!891)))))

(assert (= (and d!658882 c!351536) b!2203022))

(assert (= (and d!658882 (not c!351536)) b!2203023))

(assert (= (and b!2203023 (not res!946930)) b!2203024))

(declare-fun m!2645163 () Bool)

(assert (=> b!2203022 m!2645163))

(declare-fun m!2645165 () Bool)

(assert (=> b!2203024 m!2645165))

(assert (=> b!2202968 d!658882))

(declare-fun d!658886 () Bool)

(declare-fun c!351540 () Bool)

(assert (=> d!658886 (= c!351540 (isEmpty!14675 lt!823718))))

(declare-fun e!1407540 () Bool)

(assert (=> d!658886 (= (matchZipper!326 z!3888 lt!823718) e!1407540)))

(declare-fun b!2203032 () Bool)

(assert (=> b!2203032 (= e!1407540 (nullableZipper!520 z!3888))))

(declare-fun b!2203033 () Bool)

(declare-fun derivationStepZipper!296 ((Set Context!3620) C!12626) (Set Context!3620))

(declare-fun head!4705 (List!25778) C!12626)

(declare-fun tail!3183 (List!25778) List!25778)

(assert (=> b!2203033 (= e!1407540 (matchZipper!326 (derivationStepZipper!296 z!3888 (head!4705 lt!823718)) (tail!3183 lt!823718)))))

(assert (= (and d!658886 c!351540) b!2203032))

(assert (= (and d!658886 (not c!351540)) b!2203033))

(assert (=> d!658886 m!2645127))

(assert (=> b!2203032 m!2645125))

(declare-fun m!2645175 () Bool)

(assert (=> b!2203033 m!2645175))

(assert (=> b!2203033 m!2645175))

(declare-fun m!2645177 () Bool)

(assert (=> b!2203033 m!2645177))

(declare-fun m!2645179 () Bool)

(assert (=> b!2203033 m!2645179))

(assert (=> b!2203033 m!2645177))

(assert (=> b!2203033 m!2645179))

(declare-fun m!2645181 () Bool)

(assert (=> b!2203033 m!2645181))

(assert (=> b!2202971 d!658886))

(declare-fun b!2203054 () Bool)

(declare-fun e!1407554 () Int)

(assert (=> b!2203054 (= e!1407554 knownSize!10)))

(declare-fun b!2203055 () Bool)

(declare-fun e!1407555 () List!25778)

(assert (=> b!2203055 (= e!1407555 Nil!25694)))

(declare-fun b!2203056 () Bool)

(declare-fun e!1407553 () Int)

(assert (=> b!2203056 (= e!1407553 e!1407554)))

(declare-fun c!351551 () Bool)

(declare-fun size!20029 (List!25778) Int)

(assert (=> b!2203056 (= c!351551 (>= knownSize!10 (size!20029 (drop!1428 (list!9912 totalInput!891) from!1082))))))

(declare-fun d!658892 () Bool)

(declare-fun e!1407552 () Bool)

(assert (=> d!658892 e!1407552))

(declare-fun res!946934 () Bool)

(assert (=> d!658892 (=> (not res!946934) (not e!1407552))))

(declare-fun lt!823734 () List!25778)

(declare-fun content!3491 (List!25778) (Set C!12626))

(assert (=> d!658892 (= res!946934 (set.subset (content!3491 lt!823734) (content!3491 (drop!1428 (list!9912 totalInput!891) from!1082))))))

(assert (=> d!658892 (= lt!823734 e!1407555)))

(declare-fun c!351552 () Bool)

(assert (=> d!658892 (= c!351552 (or (is-Nil!25694 (drop!1428 (list!9912 totalInput!891) from!1082)) (<= knownSize!10 0)))))

(assert (=> d!658892 (= (take!418 (drop!1428 (list!9912 totalInput!891) from!1082) knownSize!10) lt!823734)))

(declare-fun b!2203057 () Bool)

(assert (=> b!2203057 (= e!1407555 (Cons!25694 (h!31095 (drop!1428 (list!9912 totalInput!891) from!1082)) (take!418 (t!198412 (drop!1428 (list!9912 totalInput!891) from!1082)) (- knownSize!10 1))))))

(declare-fun b!2203058 () Bool)

(assert (=> b!2203058 (= e!1407552 (= (size!20029 lt!823734) e!1407553))))

(declare-fun c!351550 () Bool)

(assert (=> b!2203058 (= c!351550 (<= knownSize!10 0))))

(declare-fun b!2203059 () Bool)

(assert (=> b!2203059 (= e!1407554 (size!20029 (drop!1428 (list!9912 totalInput!891) from!1082)))))

(declare-fun b!2203060 () Bool)

(assert (=> b!2203060 (= e!1407553 0)))

(assert (= (and d!658892 c!351552) b!2203055))

(assert (= (and d!658892 (not c!351552)) b!2203057))

(assert (= (and d!658892 res!946934) b!2203058))

(assert (= (and b!2203058 c!351550) b!2203060))

(assert (= (and b!2203058 (not c!351550)) b!2203056))

(assert (= (and b!2203056 c!351551) b!2203059))

(assert (= (and b!2203056 (not c!351551)) b!2203054))

(assert (=> b!2203056 m!2645133))

(declare-fun m!2645191 () Bool)

(assert (=> b!2203056 m!2645191))

(declare-fun m!2645193 () Bool)

(assert (=> b!2203057 m!2645193))

(assert (=> b!2203059 m!2645133))

(assert (=> b!2203059 m!2645191))

(declare-fun m!2645195 () Bool)

(assert (=> b!2203058 m!2645195))

(declare-fun m!2645197 () Bool)

(assert (=> d!658892 m!2645197))

(assert (=> d!658892 m!2645133))

(declare-fun m!2645199 () Bool)

(assert (=> d!658892 m!2645199))

(assert (=> b!2202971 d!658892))

(declare-fun b!2203108 () Bool)

(declare-fun e!1407584 () Int)

(declare-fun e!1407582 () Int)

(assert (=> b!2203108 (= e!1407584 e!1407582)))

(declare-fun c!351577 () Bool)

(declare-fun call!132165 () Int)

(assert (=> b!2203108 (= c!351577 (>= from!1082 call!132165))))

(declare-fun b!2203109 () Bool)

(declare-fun e!1407586 () List!25778)

(declare-fun e!1407583 () List!25778)

(assert (=> b!2203109 (= e!1407586 e!1407583)))

(declare-fun c!351576 () Bool)

(assert (=> b!2203109 (= c!351576 (<= from!1082 0))))

(declare-fun b!2203110 () Bool)

(assert (=> b!2203110 (= e!1407582 (- call!132165 from!1082))))

(declare-fun bm!132160 () Bool)

(assert (=> bm!132160 (= call!132165 (size!20029 (list!9912 totalInput!891)))))

(declare-fun d!658896 () Bool)

(declare-fun e!1407585 () Bool)

(assert (=> d!658896 e!1407585))

(declare-fun res!946940 () Bool)

(assert (=> d!658896 (=> (not res!946940) (not e!1407585))))

(declare-fun lt!823742 () List!25778)

(assert (=> d!658896 (= res!946940 (set.subset (content!3491 lt!823742) (content!3491 (list!9912 totalInput!891))))))

(assert (=> d!658896 (= lt!823742 e!1407586)))

(declare-fun c!351574 () Bool)

(assert (=> d!658896 (= c!351574 (is-Nil!25694 (list!9912 totalInput!891)))))

(assert (=> d!658896 (= (drop!1428 (list!9912 totalInput!891) from!1082) lt!823742)))

(declare-fun b!2203111 () Bool)

(assert (=> b!2203111 (= e!1407585 (= (size!20029 lt!823742) e!1407584))))

(declare-fun c!351575 () Bool)

(assert (=> b!2203111 (= c!351575 (<= from!1082 0))))

(declare-fun b!2203112 () Bool)

(assert (=> b!2203112 (= e!1407586 Nil!25694)))

(declare-fun b!2203113 () Bool)

(assert (=> b!2203113 (= e!1407583 (drop!1428 (t!198412 (list!9912 totalInput!891)) (- from!1082 1)))))

(declare-fun b!2203114 () Bool)

(assert (=> b!2203114 (= e!1407583 (list!9912 totalInput!891))))

(declare-fun b!2203115 () Bool)

(assert (=> b!2203115 (= e!1407584 call!132165)))

(declare-fun b!2203116 () Bool)

(assert (=> b!2203116 (= e!1407582 0)))

(assert (= (and d!658896 c!351574) b!2203112))

(assert (= (and d!658896 (not c!351574)) b!2203109))

(assert (= (and b!2203109 c!351576) b!2203114))

(assert (= (and b!2203109 (not c!351576)) b!2203113))

(assert (= (and d!658896 res!946940) b!2203111))

(assert (= (and b!2203111 c!351575) b!2203115))

(assert (= (and b!2203111 (not c!351575)) b!2203108))

(assert (= (and b!2203108 c!351577) b!2203116))

(assert (= (and b!2203108 (not c!351577)) b!2203110))

(assert (= (or b!2203115 b!2203108 b!2203110) bm!132160))

(assert (=> bm!132160 m!2645131))

(declare-fun m!2645211 () Bool)

(assert (=> bm!132160 m!2645211))

(declare-fun m!2645213 () Bool)

(assert (=> d!658896 m!2645213))

(assert (=> d!658896 m!2645131))

(declare-fun m!2645215 () Bool)

(assert (=> d!658896 m!2645215))

(declare-fun m!2645217 () Bool)

(assert (=> b!2203111 m!2645217))

(declare-fun m!2645219 () Bool)

(assert (=> b!2203113 m!2645219))

(assert (=> b!2202971 d!658896))

(declare-fun d!658900 () Bool)

(declare-fun list!9914 (Conc!8376) List!25778)

(assert (=> d!658900 (= (list!9912 totalInput!891) (list!9914 (c!351528 totalInput!891)))))

(declare-fun bs!450678 () Bool)

(assert (= bs!450678 d!658900))

(declare-fun m!2645221 () Bool)

(assert (=> bs!450678 m!2645221))

(assert (=> b!2202971 d!658900))

(declare-fun d!658902 () Bool)

(declare-fun lt!823746 () Bool)

(assert (=> d!658902 (= lt!823746 (isEmpty!14675 (list!9912 totalInput!891)))))

(declare-fun isEmpty!14679 (Conc!8376) Bool)

(assert (=> d!658902 (= lt!823746 (isEmpty!14679 (c!351528 totalInput!891)))))

(assert (=> d!658902 (= (isEmpty!14676 totalInput!891) lt!823746)))

(declare-fun bs!450679 () Bool)

(assert (= bs!450679 d!658902))

(assert (=> bs!450679 m!2645131))

(assert (=> bs!450679 m!2645131))

(declare-fun m!2645231 () Bool)

(assert (=> bs!450679 m!2645231))

(declare-fun m!2645233 () Bool)

(assert (=> bs!450679 m!2645233))

(assert (=> b!2202967 d!658902))

(declare-fun d!658906 () Bool)

(declare-fun lt!823749 () Int)

(assert (=> d!658906 (= lt!823749 (size!20029 (list!9912 totalInput!891)))))

(declare-fun size!20030 (Conc!8376) Int)

(assert (=> d!658906 (= lt!823749 (size!20030 (c!351528 totalInput!891)))))

(assert (=> d!658906 (= (size!20027 totalInput!891) lt!823749)))

(declare-fun bs!450681 () Bool)

(assert (= bs!450681 d!658906))

(assert (=> bs!450681 m!2645131))

(assert (=> bs!450681 m!2645131))

(assert (=> bs!450681 m!2645211))

(declare-fun m!2645237 () Bool)

(assert (=> bs!450681 m!2645237))

(assert (=> b!2202976 d!658906))

(declare-fun d!658910 () Bool)

(declare-fun lambda!83024 () Int)

(declare-fun exists!843 ((Set Context!3620) Int) Bool)

(assert (=> d!658910 (= (nullableZipper!520 z!3888) (exists!843 z!3888 lambda!83024))))

(declare-fun bs!450682 () Bool)

(assert (= bs!450682 d!658910))

(declare-fun m!2645239 () Bool)

(assert (=> bs!450682 m!2645239))

(assert (=> b!2202975 d!658910))

(declare-fun d!658912 () Bool)

(assert (=> d!658912 (= (isEmpty!14675 lt!823718) (is-Nil!25694 lt!823718))))

(assert (=> b!2202966 d!658912))

(declare-fun d!658914 () Bool)

(declare-fun isBalanced!2579 (Conc!8376) Bool)

(assert (=> d!658914 (= (inv!34576 totalInput!891) (isBalanced!2579 (c!351528 totalInput!891)))))

(declare-fun bs!450683 () Bool)

(assert (= bs!450683 d!658914))

(declare-fun m!2645241 () Bool)

(assert (=> bs!450683 m!2645241))

(assert (=> start!214076 d!658914))

(declare-fun b!2203146 () Bool)

(declare-fun e!1407605 () Int)

(assert (=> b!2203146 (= e!1407605 lastNullablePos!161)))

(declare-fun b!2203147 () Bool)

(declare-fun e!1407604 () Bool)

(declare-fun lostCauseZipper!344 ((Set Context!3620)) Bool)

(assert (=> b!2203147 (= e!1407604 (lostCauseZipper!344 z!3888))))

(declare-fun b!2203148 () Bool)

(declare-fun e!1407606 () Int)

(assert (=> b!2203148 (= e!1407606 lastNullablePos!161)))

(declare-fun lt!823755 () Int)

(declare-fun d!658916 () Bool)

(assert (=> d!658916 (and (>= lt!823755 (- 1)) (< lt!823755 lt!823719) (>= lt!823755 lastNullablePos!161) (or (= lt!823755 lastNullablePos!161) (>= lt!823755 from!1082)))))

(assert (=> d!658916 (= lt!823755 e!1407605)))

(declare-fun c!351594 () Bool)

(assert (=> d!658916 (= c!351594 e!1407604)))

(declare-fun res!946946 () Bool)

(assert (=> d!658916 (=> res!946946 e!1407604)))

(assert (=> d!658916 (= res!946946 (= from!1082 lt!823719))))

(assert (=> d!658916 (and (>= from!1082 0) (<= from!1082 lt!823719))))

(assert (=> d!658916 (= (furthestNullablePosition!390 z!3888 from!1082 totalInput!891 lt!823719 lastNullablePos!161) lt!823755)))

(declare-fun b!2203149 () Bool)

(assert (=> b!2203149 (= e!1407606 from!1082)))

(declare-fun lt!823754 () (Set Context!3620))

(declare-fun b!2203150 () Bool)

(assert (=> b!2203150 (= e!1407605 (furthestNullablePosition!390 lt!823754 (+ from!1082 1) totalInput!891 lt!823719 e!1407606))))

(declare-fun apply!6322 (BalanceConc!16514 Int) C!12626)

(assert (=> b!2203150 (= lt!823754 (derivationStepZipper!296 z!3888 (apply!6322 totalInput!891 from!1082)))))

(declare-fun c!351595 () Bool)

(assert (=> b!2203150 (= c!351595 (nullableZipper!520 lt!823754))))

(assert (= (and d!658916 (not res!946946)) b!2203147))

(assert (= (and d!658916 c!351594) b!2203146))

(assert (= (and d!658916 (not c!351594)) b!2203150))

(assert (= (and b!2203150 c!351595) b!2203149))

(assert (= (and b!2203150 (not c!351595)) b!2203148))

(declare-fun m!2645243 () Bool)

(assert (=> b!2203147 m!2645243))

(declare-fun m!2645245 () Bool)

(assert (=> b!2203150 m!2645245))

(declare-fun m!2645247 () Bool)

(assert (=> b!2203150 m!2645247))

(assert (=> b!2203150 m!2645247))

(declare-fun m!2645249 () Bool)

(assert (=> b!2203150 m!2645249))

(declare-fun m!2645251 () Bool)

(assert (=> b!2203150 m!2645251))

(assert (=> b!2202974 d!658916))

(declare-fun d!658918 () Bool)

(declare-fun lambda!83027 () Int)

(declare-fun forall!5255 (List!25779 Int) Bool)

(assert (=> d!658918 (= (inv!34575 setElem!19063) (forall!5255 (exprs!2310 setElem!19063) lambda!83027))))

(declare-fun bs!450684 () Bool)

(assert (= bs!450684 d!658918))

(declare-fun m!2645253 () Bool)

(assert (=> bs!450684 m!2645253))

(assert (=> setNonEmpty!19063 d!658918))

(declare-fun e!1407611 () Bool)

(declare-fun tp!685365 () Bool)

(declare-fun b!2203159 () Bool)

(declare-fun tp!685364 () Bool)

(assert (=> b!2203159 (= e!1407611 (and (inv!34574 (left!19739 (c!351528 totalInput!891))) tp!685364 (inv!34574 (right!20069 (c!351528 totalInput!891))) tp!685365))))

(declare-fun b!2203161 () Bool)

(declare-fun e!1407612 () Bool)

(declare-fun tp!685363 () Bool)

(assert (=> b!2203161 (= e!1407612 tp!685363)))

(declare-fun b!2203160 () Bool)

(declare-fun inv!34582 (IArray!16757) Bool)

(assert (=> b!2203160 (= e!1407611 (and (inv!34582 (xs!11318 (c!351528 totalInput!891))) e!1407612))))

(assert (=> b!2202968 (= tp!685346 (and (inv!34574 (c!351528 totalInput!891)) e!1407611))))

(assert (= (and b!2202968 (is-Node!8376 (c!351528 totalInput!891))) b!2203159))

(assert (= b!2203160 b!2203161))

(assert (= (and b!2202968 (is-Leaf!12264 (c!351528 totalInput!891))) b!2203160))

(declare-fun m!2645255 () Bool)

(assert (=> b!2203159 m!2645255))

(declare-fun m!2645257 () Bool)

(assert (=> b!2203159 m!2645257))

(declare-fun m!2645259 () Bool)

(assert (=> b!2203160 m!2645259))

(assert (=> b!2202968 m!2645137))

(declare-fun b!2203166 () Bool)

(declare-fun e!1407615 () Bool)

(declare-fun tp!685370 () Bool)

(declare-fun tp!685371 () Bool)

(assert (=> b!2203166 (= e!1407615 (and tp!685370 tp!685371))))

(assert (=> b!2202972 (= tp!685347 e!1407615)))

(assert (= (and b!2202972 (is-Cons!25695 (exprs!2310 setElem!19063))) b!2203166))

(declare-fun condSetEmpty!19069 () Bool)

(assert (=> setNonEmpty!19063 (= condSetEmpty!19069 (= setRest!19063 (as set.empty (Set Context!3620))))))

(declare-fun setRes!19069 () Bool)

(assert (=> setNonEmpty!19063 (= tp!685345 setRes!19069)))

(declare-fun setIsEmpty!19069 () Bool)

(assert (=> setIsEmpty!19069 setRes!19069))

(declare-fun e!1407618 () Bool)

(declare-fun tp!685376 () Bool)

(declare-fun setNonEmpty!19069 () Bool)

(declare-fun setElem!19069 () Context!3620)

(assert (=> setNonEmpty!19069 (= setRes!19069 (and tp!685376 (inv!34575 setElem!19069) e!1407618))))

(declare-fun setRest!19069 () (Set Context!3620))

(assert (=> setNonEmpty!19069 (= setRest!19063 (set.union (set.insert setElem!19069 (as set.empty (Set Context!3620))) setRest!19069))))

(declare-fun b!2203171 () Bool)

(declare-fun tp!685377 () Bool)

(assert (=> b!2203171 (= e!1407618 tp!685377)))

(assert (= (and setNonEmpty!19063 condSetEmpty!19069) setIsEmpty!19069))

(assert (= (and setNonEmpty!19063 (not condSetEmpty!19069)) setNonEmpty!19069))

(assert (= setNonEmpty!19069 b!2203171))

(declare-fun m!2645261 () Bool)

(assert (=> setNonEmpty!19069 m!2645261))

(push 1)

(assert (not b!2202968))

(assert (not b!2203024))

(assert (not d!658902))

(assert (not b!2203056))

(assert (not d!658914))

(assert (not d!658918))

(assert (not b!2203022))

(assert (not b!2203159))

(assert (not b!2203166))

(assert (not setNonEmpty!19069))

(assert (not b!2203059))

(assert (not b!2203032))

(assert (not b!2203057))

(assert (not bm!132160))

(assert (not b!2203171))

(assert (not b!2203147))

(assert (not b!2203150))

(assert (not d!658910))

(assert (not b!2203160))

(assert (not b!2203161))

(assert (not d!658900))

(assert (not b!2203111))

(assert (not b!2203113))

(assert (not d!658886))

(assert (not d!658896))

(assert (not b!2203058))

(assert (not d!658892))

(assert (not d!658906))

(assert (not b!2203033))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


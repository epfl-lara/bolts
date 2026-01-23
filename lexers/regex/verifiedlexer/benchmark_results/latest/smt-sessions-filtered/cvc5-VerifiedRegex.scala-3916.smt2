; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!214732 () Bool)

(assert start!214732)

(declare-fun b!2207527 () Bool)

(declare-fun e!1410212 () Bool)

(declare-fun e!1410208 () Bool)

(assert (=> b!2207527 (= e!1410212 e!1410208)))

(declare-fun res!948930 () Bool)

(assert (=> b!2207527 (=> (not res!948930) (not e!1410208))))

(declare-fun e!1410210 () Int)

(declare-datatypes ((C!12742 0))(
  ( (C!12743 (val!7357 Int)) )
))
(declare-datatypes ((List!25905 0))(
  ( (Nil!25821) (Cons!25821 (h!31222 C!12742) (t!198555 List!25905)) )
))
(declare-datatypes ((IArray!16873 0))(
  ( (IArray!16874 (innerList!8494 List!25905)) )
))
(declare-datatypes ((Conc!8434 0))(
  ( (Node!8434 (left!19846 Conc!8434) (right!20176 Conc!8434) (csize!17098 Int) (cheight!8645 Int)) (Leaf!12351 (xs!11376 IArray!16873) (csize!17099 Int)) (Empty!8434) )
))
(declare-datatypes ((BalanceConc!16630 0))(
  ( (BalanceConc!16631 (c!352633 Conc!8434)) )
))
(declare-fun totalInput!846 () BalanceConc!16630)

(declare-datatypes ((Regex!6298 0))(
  ( (ElementMatch!6298 (c!352634 C!12742)) (Concat!10600 (regOne!13108 Regex!6298) (regTwo!13108 Regex!6298)) (EmptyExpr!6298) (Star!6298 (reg!6627 Regex!6298)) (EmptyLang!6298) (Union!6298 (regOne!13109 Regex!6298) (regTwo!13109 Regex!6298)) )
))
(declare-datatypes ((List!25906 0))(
  ( (Nil!25822) (Cons!25822 (h!31223 Regex!6298) (t!198556 List!25906)) )
))
(declare-datatypes ((Context!3736 0))(
  ( (Context!3737 (exprs!2368 List!25906)) )
))
(declare-fun z!3830 () (Set Context!3736))

(declare-fun lt!825603 () Int)

(declare-fun lt!825604 () Int)

(declare-fun furthestNullablePosition!424 ((Set Context!3736) Int BalanceConc!16630 Int Int) Int)

(assert (=> b!2207527 (= res!948930 (< (+ 1 (- (furthestNullablePosition!424 z!3830 lt!825603 totalInput!846 lt!825604 e!1410210) lt!825603)) 0))))

(declare-fun c!352632 () Bool)

(declare-fun nullableZipper!578 ((Set Context!3736)) Bool)

(assert (=> b!2207527 (= c!352632 (nullableZipper!578 z!3830))))

(declare-fun input!5506 () BalanceConc!16630)

(declare-fun size!20112 (BalanceConc!16630) Int)

(assert (=> b!2207527 (= lt!825603 (- lt!825604 (size!20112 input!5506)))))

(assert (=> b!2207527 (= lt!825604 (size!20112 totalInput!846))))

(declare-fun setRes!19283 () Bool)

(declare-fun setElem!19283 () Context!3736)

(declare-fun e!1410209 () Bool)

(declare-fun setNonEmpty!19283 () Bool)

(declare-fun tp!686329 () Bool)

(declare-fun inv!34870 (Context!3736) Bool)

(assert (=> setNonEmpty!19283 (= setRes!19283 (and tp!686329 (inv!34870 setElem!19283) e!1410209))))

(declare-fun setRest!19283 () (Set Context!3736))

(assert (=> setNonEmpty!19283 (= z!3830 (set.union (set.insert setElem!19283 (as set.empty (Set Context!3736))) setRest!19283))))

(declare-fun b!2207528 () Bool)

(declare-fun isBalanced!2592 (Conc!8434) Bool)

(assert (=> b!2207528 (= e!1410208 (not (isBalanced!2592 (c!352633 input!5506))))))

(declare-fun b!2207529 () Bool)

(assert (=> b!2207529 (= e!1410210 (- 1))))

(declare-fun b!2207530 () Bool)

(assert (=> b!2207530 (= e!1410210 (- lt!825603 1))))

(declare-fun setIsEmpty!19283 () Bool)

(assert (=> setIsEmpty!19283 setRes!19283))

(declare-fun res!948931 () Bool)

(assert (=> start!214732 (=> (not res!948931) (not e!1410212))))

(declare-fun isSuffix!735 (List!25905 List!25905) Bool)

(declare-fun list!9985 (BalanceConc!16630) List!25905)

(assert (=> start!214732 (= res!948931 (isSuffix!735 (list!9985 input!5506) (list!9985 totalInput!846)))))

(assert (=> start!214732 e!1410212))

(declare-fun e!1410213 () Bool)

(declare-fun inv!34871 (BalanceConc!16630) Bool)

(assert (=> start!214732 (and (inv!34871 input!5506) e!1410213)))

(declare-fun e!1410211 () Bool)

(assert (=> start!214732 (and (inv!34871 totalInput!846) e!1410211)))

(declare-fun condSetEmpty!19283 () Bool)

(assert (=> start!214732 (= condSetEmpty!19283 (= z!3830 (as set.empty (Set Context!3736))))))

(assert (=> start!214732 setRes!19283))

(declare-fun b!2207526 () Bool)

(declare-fun tp!686330 () Bool)

(declare-fun inv!34872 (Conc!8434) Bool)

(assert (=> b!2207526 (= e!1410211 (and (inv!34872 (c!352633 totalInput!846)) tp!686330))))

(declare-fun b!2207531 () Bool)

(declare-fun tp!686327 () Bool)

(assert (=> b!2207531 (= e!1410213 (and (inv!34872 (c!352633 input!5506)) tp!686327))))

(declare-fun b!2207532 () Bool)

(declare-fun tp!686328 () Bool)

(assert (=> b!2207532 (= e!1410209 tp!686328)))

(assert (= (and start!214732 res!948931) b!2207527))

(assert (= (and b!2207527 c!352632) b!2207530))

(assert (= (and b!2207527 (not c!352632)) b!2207529))

(assert (= (and b!2207527 res!948930) b!2207528))

(assert (= start!214732 b!2207531))

(assert (= start!214732 b!2207526))

(assert (= (and start!214732 condSetEmpty!19283) setIsEmpty!19283))

(assert (= (and start!214732 (not condSetEmpty!19283)) setNonEmpty!19283))

(assert (= setNonEmpty!19283 b!2207532))

(declare-fun m!2649203 () Bool)

(assert (=> b!2207531 m!2649203))

(declare-fun m!2649205 () Bool)

(assert (=> b!2207528 m!2649205))

(declare-fun m!2649207 () Bool)

(assert (=> start!214732 m!2649207))

(declare-fun m!2649209 () Bool)

(assert (=> start!214732 m!2649209))

(declare-fun m!2649211 () Bool)

(assert (=> start!214732 m!2649211))

(declare-fun m!2649213 () Bool)

(assert (=> start!214732 m!2649213))

(assert (=> start!214732 m!2649207))

(assert (=> start!214732 m!2649209))

(declare-fun m!2649215 () Bool)

(assert (=> start!214732 m!2649215))

(declare-fun m!2649217 () Bool)

(assert (=> b!2207526 m!2649217))

(declare-fun m!2649219 () Bool)

(assert (=> setNonEmpty!19283 m!2649219))

(declare-fun m!2649221 () Bool)

(assert (=> b!2207527 m!2649221))

(declare-fun m!2649223 () Bool)

(assert (=> b!2207527 m!2649223))

(declare-fun m!2649225 () Bool)

(assert (=> b!2207527 m!2649225))

(declare-fun m!2649227 () Bool)

(assert (=> b!2207527 m!2649227))

(push 1)

(assert (not b!2207532))

(assert (not b!2207531))

(assert (not setNonEmpty!19283))

(assert (not b!2207526))

(assert (not b!2207528))

(assert (not b!2207527))

(assert (not start!214732))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!659769 () Bool)

(declare-fun c!352644 () Bool)

(assert (=> d!659769 (= c!352644 (is-Node!8434 (c!352633 totalInput!846)))))

(declare-fun e!1410240 () Bool)

(assert (=> d!659769 (= (inv!34872 (c!352633 totalInput!846)) e!1410240)))

(declare-fun b!2207566 () Bool)

(declare-fun inv!34876 (Conc!8434) Bool)

(assert (=> b!2207566 (= e!1410240 (inv!34876 (c!352633 totalInput!846)))))

(declare-fun b!2207567 () Bool)

(declare-fun e!1410241 () Bool)

(assert (=> b!2207567 (= e!1410240 e!1410241)))

(declare-fun res!948942 () Bool)

(assert (=> b!2207567 (= res!948942 (not (is-Leaf!12351 (c!352633 totalInput!846))))))

(assert (=> b!2207567 (=> res!948942 e!1410241)))

(declare-fun b!2207568 () Bool)

(declare-fun inv!34877 (Conc!8434) Bool)

(assert (=> b!2207568 (= e!1410241 (inv!34877 (c!352633 totalInput!846)))))

(assert (= (and d!659769 c!352644) b!2207566))

(assert (= (and d!659769 (not c!352644)) b!2207567))

(assert (= (and b!2207567 (not res!948942)) b!2207568))

(declare-fun m!2649255 () Bool)

(assert (=> b!2207566 m!2649255))

(declare-fun m!2649257 () Bool)

(assert (=> b!2207568 m!2649257))

(assert (=> b!2207526 d!659769))

(declare-fun d!659771 () Bool)

(declare-fun lambda!83348 () Int)

(declare-fun forall!5279 (List!25906 Int) Bool)

(assert (=> d!659771 (= (inv!34870 setElem!19283) (forall!5279 (exprs!2368 setElem!19283) lambda!83348))))

(declare-fun bs!451143 () Bool)

(assert (= bs!451143 d!659771))

(declare-fun m!2649289 () Bool)

(assert (=> bs!451143 m!2649289))

(assert (=> setNonEmpty!19283 d!659771))

(declare-fun d!659781 () Bool)

(declare-fun c!352655 () Bool)

(assert (=> d!659781 (= c!352655 (is-Node!8434 (c!352633 input!5506)))))

(declare-fun e!1410261 () Bool)

(assert (=> d!659781 (= (inv!34872 (c!352633 input!5506)) e!1410261)))

(declare-fun b!2207608 () Bool)

(assert (=> b!2207608 (= e!1410261 (inv!34876 (c!352633 input!5506)))))

(declare-fun b!2207609 () Bool)

(declare-fun e!1410262 () Bool)

(assert (=> b!2207609 (= e!1410261 e!1410262)))

(declare-fun res!948966 () Bool)

(assert (=> b!2207609 (= res!948966 (not (is-Leaf!12351 (c!352633 input!5506))))))

(assert (=> b!2207609 (=> res!948966 e!1410262)))

(declare-fun b!2207610 () Bool)

(assert (=> b!2207610 (= e!1410262 (inv!34877 (c!352633 input!5506)))))

(assert (= (and d!659781 c!352655) b!2207608))

(assert (= (and d!659781 (not c!352655)) b!2207609))

(assert (= (and b!2207609 (not res!948966)) b!2207610))

(declare-fun m!2649291 () Bool)

(assert (=> b!2207608 m!2649291))

(declare-fun m!2649293 () Bool)

(assert (=> b!2207610 m!2649293))

(assert (=> b!2207531 d!659781))

(declare-fun b!2207622 () Bool)

(declare-fun e!1410270 () Int)

(assert (=> b!2207622 (= e!1410270 e!1410210)))

(declare-fun b!2207623 () Bool)

(declare-fun e!1410269 () Int)

(assert (=> b!2207623 (= e!1410269 e!1410210)))

(declare-fun b!2207624 () Bool)

(assert (=> b!2207624 (= e!1410270 lt!825603)))

(declare-fun b!2207625 () Bool)

(declare-fun e!1410271 () Bool)

(declare-fun lostCauseZipper!386 ((Set Context!3736)) Bool)

(assert (=> b!2207625 (= e!1410271 (lostCauseZipper!386 z!3830))))

(declare-fun lt!825622 () Int)

(declare-fun d!659783 () Bool)

(assert (=> d!659783 (and (>= lt!825622 (- 1)) (< lt!825622 lt!825604) (>= lt!825622 e!1410210) (or (= lt!825622 e!1410210) (>= lt!825622 lt!825603)))))

(assert (=> d!659783 (= lt!825622 e!1410269)))

(declare-fun c!352660 () Bool)

(assert (=> d!659783 (= c!352660 e!1410271)))

(declare-fun res!948969 () Bool)

(assert (=> d!659783 (=> res!948969 e!1410271)))

(assert (=> d!659783 (= res!948969 (= lt!825603 lt!825604))))

(assert (=> d!659783 (and (>= lt!825603 0) (<= lt!825603 lt!825604))))

(assert (=> d!659783 (= (furthestNullablePosition!424 z!3830 lt!825603 totalInput!846 lt!825604 e!1410210) lt!825622)))

(declare-fun b!2207621 () Bool)

(declare-fun lt!825621 () (Set Context!3736))

(assert (=> b!2207621 (= e!1410269 (furthestNullablePosition!424 lt!825621 (+ lt!825603 1) totalInput!846 lt!825604 e!1410270))))

(declare-fun derivationStepZipper!322 ((Set Context!3736) C!12742) (Set Context!3736))

(declare-fun apply!6380 (BalanceConc!16630 Int) C!12742)

(assert (=> b!2207621 (= lt!825621 (derivationStepZipper!322 z!3830 (apply!6380 totalInput!846 lt!825603)))))

(declare-fun c!352661 () Bool)

(assert (=> b!2207621 (= c!352661 (nullableZipper!578 lt!825621))))

(assert (= (and d!659783 (not res!948969)) b!2207625))

(assert (= (and d!659783 c!352660) b!2207623))

(assert (= (and d!659783 (not c!352660)) b!2207621))

(assert (= (and b!2207621 c!352661) b!2207624))

(assert (= (and b!2207621 (not c!352661)) b!2207622))

(declare-fun m!2649295 () Bool)

(assert (=> b!2207625 m!2649295))

(declare-fun m!2649297 () Bool)

(assert (=> b!2207621 m!2649297))

(declare-fun m!2649299 () Bool)

(assert (=> b!2207621 m!2649299))

(assert (=> b!2207621 m!2649299))

(declare-fun m!2649301 () Bool)

(assert (=> b!2207621 m!2649301))

(declare-fun m!2649303 () Bool)

(assert (=> b!2207621 m!2649303))

(assert (=> b!2207527 d!659783))

(declare-fun d!659785 () Bool)

(declare-fun lambda!83351 () Int)

(declare-fun exists!867 ((Set Context!3736) Int) Bool)

(assert (=> d!659785 (= (nullableZipper!578 z!3830) (exists!867 z!3830 lambda!83351))))

(declare-fun bs!451144 () Bool)

(assert (= bs!451144 d!659785))

(declare-fun m!2649305 () Bool)

(assert (=> bs!451144 m!2649305))

(assert (=> b!2207527 d!659785))

(declare-fun d!659787 () Bool)

(declare-fun lt!825625 () Int)

(declare-fun size!20114 (List!25905) Int)

(assert (=> d!659787 (= lt!825625 (size!20114 (list!9985 input!5506)))))

(declare-fun size!20115 (Conc!8434) Int)

(assert (=> d!659787 (= lt!825625 (size!20115 (c!352633 input!5506)))))

(assert (=> d!659787 (= (size!20112 input!5506) lt!825625)))

(declare-fun bs!451145 () Bool)

(assert (= bs!451145 d!659787))

(assert (=> bs!451145 m!2649207))

(assert (=> bs!451145 m!2649207))

(declare-fun m!2649307 () Bool)

(assert (=> bs!451145 m!2649307))

(declare-fun m!2649309 () Bool)

(assert (=> bs!451145 m!2649309))

(assert (=> b!2207527 d!659787))

(declare-fun d!659789 () Bool)

(declare-fun lt!825626 () Int)

(assert (=> d!659789 (= lt!825626 (size!20114 (list!9985 totalInput!846)))))

(assert (=> d!659789 (= lt!825626 (size!20115 (c!352633 totalInput!846)))))

(assert (=> d!659789 (= (size!20112 totalInput!846) lt!825626)))

(declare-fun bs!451146 () Bool)

(assert (= bs!451146 d!659789))

(assert (=> bs!451146 m!2649209))

(assert (=> bs!451146 m!2649209))

(declare-fun m!2649311 () Bool)

(assert (=> bs!451146 m!2649311))

(declare-fun m!2649313 () Bool)

(assert (=> bs!451146 m!2649313))

(assert (=> b!2207527 d!659789))

(declare-fun b!2207638 () Bool)

(declare-fun e!1410277 () Bool)

(declare-fun isEmpty!14767 (Conc!8434) Bool)

(assert (=> b!2207638 (= e!1410277 (not (isEmpty!14767 (right!20176 (c!352633 input!5506)))))))

(declare-fun b!2207639 () Bool)

(declare-fun res!948985 () Bool)

(assert (=> b!2207639 (=> (not res!948985) (not e!1410277))))

(declare-fun height!1260 (Conc!8434) Int)

(assert (=> b!2207639 (= res!948985 (<= (- (height!1260 (left!19846 (c!352633 input!5506))) (height!1260 (right!20176 (c!352633 input!5506)))) 1))))

(declare-fun b!2207640 () Bool)

(declare-fun res!948987 () Bool)

(assert (=> b!2207640 (=> (not res!948987) (not e!1410277))))

(assert (=> b!2207640 (= res!948987 (not (isEmpty!14767 (left!19846 (c!352633 input!5506)))))))

(declare-fun b!2207641 () Bool)

(declare-fun e!1410276 () Bool)

(assert (=> b!2207641 (= e!1410276 e!1410277)))

(declare-fun res!948982 () Bool)

(assert (=> b!2207641 (=> (not res!948982) (not e!1410277))))

(assert (=> b!2207641 (= res!948982 (<= (- 1) (- (height!1260 (left!19846 (c!352633 input!5506))) (height!1260 (right!20176 (c!352633 input!5506))))))))

(declare-fun b!2207642 () Bool)

(declare-fun res!948984 () Bool)

(assert (=> b!2207642 (=> (not res!948984) (not e!1410277))))

(assert (=> b!2207642 (= res!948984 (isBalanced!2592 (right!20176 (c!352633 input!5506))))))

(declare-fun d!659791 () Bool)

(declare-fun res!948986 () Bool)

(assert (=> d!659791 (=> res!948986 e!1410276)))

(assert (=> d!659791 (= res!948986 (not (is-Node!8434 (c!352633 input!5506))))))

(assert (=> d!659791 (= (isBalanced!2592 (c!352633 input!5506)) e!1410276)))

(declare-fun b!2207643 () Bool)

(declare-fun res!948983 () Bool)

(assert (=> b!2207643 (=> (not res!948983) (not e!1410277))))

(assert (=> b!2207643 (= res!948983 (isBalanced!2592 (left!19846 (c!352633 input!5506))))))

(assert (= (and d!659791 (not res!948986)) b!2207641))

(assert (= (and b!2207641 res!948982) b!2207639))

(assert (= (and b!2207639 res!948985) b!2207643))

(assert (= (and b!2207643 res!948983) b!2207642))

(assert (= (and b!2207642 res!948984) b!2207640))

(assert (= (and b!2207640 res!948987) b!2207638))

(declare-fun m!2649315 () Bool)

(assert (=> b!2207641 m!2649315))

(declare-fun m!2649317 () Bool)

(assert (=> b!2207641 m!2649317))

(declare-fun m!2649319 () Bool)

(assert (=> b!2207638 m!2649319))

(declare-fun m!2649321 () Bool)

(assert (=> b!2207640 m!2649321))

(declare-fun m!2649323 () Bool)

(assert (=> b!2207642 m!2649323))

(declare-fun m!2649325 () Bool)

(assert (=> b!2207643 m!2649325))

(assert (=> b!2207639 m!2649315))

(assert (=> b!2207639 m!2649317))

(assert (=> b!2207528 d!659791))

(declare-fun d!659793 () Bool)

(declare-fun list!9987 (Conc!8434) List!25905)

(assert (=> d!659793 (= (list!9985 totalInput!846) (list!9987 (c!352633 totalInput!846)))))

(declare-fun bs!451147 () Bool)

(assert (= bs!451147 d!659793))

(declare-fun m!2649327 () Bool)

(assert (=> bs!451147 m!2649327))

(assert (=> start!214732 d!659793))

(declare-fun d!659795 () Bool)

(declare-fun e!1410280 () Bool)

(assert (=> d!659795 e!1410280))

(declare-fun res!948990 () Bool)

(assert (=> d!659795 (=> res!948990 e!1410280)))

(declare-fun lt!825629 () Bool)

(assert (=> d!659795 (= res!948990 (not lt!825629))))

(declare-fun drop!1480 (List!25905 Int) List!25905)

(assert (=> d!659795 (= lt!825629 (= (list!9985 input!5506) (drop!1480 (list!9985 totalInput!846) (- (size!20114 (list!9985 totalInput!846)) (size!20114 (list!9985 input!5506))))))))

(assert (=> d!659795 (= (isSuffix!735 (list!9985 input!5506) (list!9985 totalInput!846)) lt!825629)))

(declare-fun b!2207646 () Bool)

(assert (=> b!2207646 (= e!1410280 (>= (size!20114 (list!9985 totalInput!846)) (size!20114 (list!9985 input!5506))))))

(assert (= (and d!659795 (not res!948990)) b!2207646))

(assert (=> d!659795 m!2649209))

(assert (=> d!659795 m!2649311))

(assert (=> d!659795 m!2649207))

(assert (=> d!659795 m!2649307))

(assert (=> d!659795 m!2649209))

(declare-fun m!2649329 () Bool)

(assert (=> d!659795 m!2649329))

(assert (=> b!2207646 m!2649209))

(assert (=> b!2207646 m!2649311))

(assert (=> b!2207646 m!2649207))

(assert (=> b!2207646 m!2649307))

(assert (=> start!214732 d!659795))

(declare-fun d!659797 () Bool)

(assert (=> d!659797 (= (inv!34871 totalInput!846) (isBalanced!2592 (c!352633 totalInput!846)))))

(declare-fun bs!451148 () Bool)

(assert (= bs!451148 d!659797))

(declare-fun m!2649331 () Bool)

(assert (=> bs!451148 m!2649331))

(assert (=> start!214732 d!659797))

(declare-fun d!659799 () Bool)

(assert (=> d!659799 (= (list!9985 input!5506) (list!9987 (c!352633 input!5506)))))

(declare-fun bs!451149 () Bool)

(assert (= bs!451149 d!659799))

(declare-fun m!2649333 () Bool)

(assert (=> bs!451149 m!2649333))

(assert (=> start!214732 d!659799))

(declare-fun d!659801 () Bool)

(assert (=> d!659801 (= (inv!34871 input!5506) (isBalanced!2592 (c!352633 input!5506)))))

(declare-fun bs!451150 () Bool)

(assert (= bs!451150 d!659801))

(assert (=> bs!451150 m!2649205))

(assert (=> start!214732 d!659801))

(declare-fun b!2207655 () Bool)

(declare-fun e!1410285 () Bool)

(declare-fun tp!686349 () Bool)

(declare-fun tp!686350 () Bool)

(assert (=> b!2207655 (= e!1410285 (and (inv!34872 (left!19846 (c!352633 totalInput!846))) tp!686349 (inv!34872 (right!20176 (c!352633 totalInput!846))) tp!686350))))

(declare-fun b!2207657 () Bool)

(declare-fun e!1410286 () Bool)

(declare-fun tp!686351 () Bool)

(assert (=> b!2207657 (= e!1410286 tp!686351)))

(declare-fun b!2207656 () Bool)

(declare-fun inv!34878 (IArray!16873) Bool)

(assert (=> b!2207656 (= e!1410285 (and (inv!34878 (xs!11376 (c!352633 totalInput!846))) e!1410286))))

(assert (=> b!2207526 (= tp!686330 (and (inv!34872 (c!352633 totalInput!846)) e!1410285))))

(assert (= (and b!2207526 (is-Node!8434 (c!352633 totalInput!846))) b!2207655))

(assert (= b!2207656 b!2207657))

(assert (= (and b!2207526 (is-Leaf!12351 (c!352633 totalInput!846))) b!2207656))

(declare-fun m!2649335 () Bool)

(assert (=> b!2207655 m!2649335))

(declare-fun m!2649337 () Bool)

(assert (=> b!2207655 m!2649337))

(declare-fun m!2649339 () Bool)

(assert (=> b!2207656 m!2649339))

(assert (=> b!2207526 m!2649217))

(declare-fun condSetEmpty!19289 () Bool)

(assert (=> setNonEmpty!19283 (= condSetEmpty!19289 (= setRest!19283 (as set.empty (Set Context!3736))))))

(declare-fun setRes!19289 () Bool)

(assert (=> setNonEmpty!19283 (= tp!686329 setRes!19289)))

(declare-fun setIsEmpty!19289 () Bool)

(assert (=> setIsEmpty!19289 setRes!19289))

(declare-fun tp!686357 () Bool)

(declare-fun e!1410289 () Bool)

(declare-fun setNonEmpty!19289 () Bool)

(declare-fun setElem!19289 () Context!3736)

(assert (=> setNonEmpty!19289 (= setRes!19289 (and tp!686357 (inv!34870 setElem!19289) e!1410289))))

(declare-fun setRest!19289 () (Set Context!3736))

(assert (=> setNonEmpty!19289 (= setRest!19283 (set.union (set.insert setElem!19289 (as set.empty (Set Context!3736))) setRest!19289))))

(declare-fun b!2207662 () Bool)

(declare-fun tp!686356 () Bool)

(assert (=> b!2207662 (= e!1410289 tp!686356)))

(assert (= (and setNonEmpty!19283 condSetEmpty!19289) setIsEmpty!19289))

(assert (= (and setNonEmpty!19283 (not condSetEmpty!19289)) setNonEmpty!19289))

(assert (= setNonEmpty!19289 b!2207662))

(declare-fun m!2649341 () Bool)

(assert (=> setNonEmpty!19289 m!2649341))

(declare-fun tp!686358 () Bool)

(declare-fun b!2207663 () Bool)

(declare-fun e!1410290 () Bool)

(declare-fun tp!686359 () Bool)

(assert (=> b!2207663 (= e!1410290 (and (inv!34872 (left!19846 (c!352633 input!5506))) tp!686358 (inv!34872 (right!20176 (c!352633 input!5506))) tp!686359))))

(declare-fun b!2207665 () Bool)

(declare-fun e!1410291 () Bool)

(declare-fun tp!686360 () Bool)

(assert (=> b!2207665 (= e!1410291 tp!686360)))

(declare-fun b!2207664 () Bool)

(assert (=> b!2207664 (= e!1410290 (and (inv!34878 (xs!11376 (c!352633 input!5506))) e!1410291))))

(assert (=> b!2207531 (= tp!686327 (and (inv!34872 (c!352633 input!5506)) e!1410290))))

(assert (= (and b!2207531 (is-Node!8434 (c!352633 input!5506))) b!2207663))

(assert (= b!2207664 b!2207665))

(assert (= (and b!2207531 (is-Leaf!12351 (c!352633 input!5506))) b!2207664))

(declare-fun m!2649343 () Bool)

(assert (=> b!2207663 m!2649343))

(declare-fun m!2649345 () Bool)

(assert (=> b!2207663 m!2649345))

(declare-fun m!2649347 () Bool)

(assert (=> b!2207664 m!2649347))

(assert (=> b!2207531 m!2649203))

(declare-fun b!2207670 () Bool)

(declare-fun e!1410294 () Bool)

(declare-fun tp!686365 () Bool)

(declare-fun tp!686366 () Bool)

(assert (=> b!2207670 (= e!1410294 (and tp!686365 tp!686366))))

(assert (=> b!2207532 (= tp!686328 e!1410294)))

(assert (= (and b!2207532 (is-Cons!25822 (exprs!2368 setElem!19283))) b!2207670))

(push 1)

(assert (not b!2207656))

(assert (not d!659793))

(assert (not d!659787))

(assert (not d!659797))

(assert (not b!2207610))

(assert (not d!659795))

(assert (not b!2207640))

(assert (not b!2207625))

(assert (not b!2207642))

(assert (not d!659801))

(assert (not b!2207608))

(assert (not b!2207664))

(assert (not b!2207655))

(assert (not b!2207641))

(assert (not b!2207621))

(assert (not b!2207531))

(assert (not b!2207662))

(assert (not b!2207526))

(assert (not b!2207646))

(assert (not b!2207643))

(assert (not b!2207663))

(assert (not d!659799))

(assert (not setNonEmpty!19289))

(assert (not b!2207566))

(assert (not b!2207665))

(assert (not b!2207670))

(assert (not b!2207657))

(assert (not d!659785))

(assert (not d!659789))

(assert (not b!2207639))

(assert (not d!659771))

(assert (not b!2207568))

(assert (not b!2207638))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


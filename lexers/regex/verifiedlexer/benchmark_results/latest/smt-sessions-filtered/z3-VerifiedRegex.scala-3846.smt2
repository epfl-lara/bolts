; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212810 () Bool)

(assert start!212810)

(declare-fun res!943354 () Bool)

(declare-fun e!1402183 () Bool)

(assert (=> start!212810 (=> (not res!943354) (not e!1402183))))

(declare-fun from!1114 () Int)

(assert (=> start!212810 (= res!943354 (>= from!1114 0))))

(assert (=> start!212810 e!1402183))

(assert (=> start!212810 true))

(declare-datatypes ((C!12464 0))(
  ( (C!12465 (val!7218 Int)) )
))
(declare-datatypes ((List!25598 0))(
  ( (Nil!25514) (Cons!25514 (h!30915 C!12464) (t!198196 List!25598)) )
))
(declare-datatypes ((IArray!16595 0))(
  ( (IArray!16596 (innerList!8355 List!25598)) )
))
(declare-datatypes ((Conc!8295 0))(
  ( (Node!8295 (left!19581 Conc!8295) (right!19911 Conc!8295) (csize!16820 Int) (cheight!8506 Int)) (Leaf!12142 (xs!11237 IArray!16595) (csize!16821 Int)) (Empty!8295) )
))
(declare-datatypes ((BalanceConc!16352 0))(
  ( (BalanceConc!16353 (c!349130 Conc!8295)) )
))
(declare-fun totalInput!923 () BalanceConc!16352)

(declare-fun e!1402181 () Bool)

(declare-fun inv!34138 (BalanceConc!16352) Bool)

(assert (=> start!212810 (and (inv!34138 totalInput!923) e!1402181)))

(declare-fun condSetEmpty!18726 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6159 0))(
  ( (ElementMatch!6159 (c!349131 C!12464)) (Concat!10461 (regOne!12830 Regex!6159) (regTwo!12830 Regex!6159)) (EmptyExpr!6159) (Star!6159 (reg!6488 Regex!6159)) (EmptyLang!6159) (Union!6159 (regOne!12831 Regex!6159) (regTwo!12831 Regex!6159)) )
))
(declare-datatypes ((List!25599 0))(
  ( (Nil!25515) (Cons!25515 (h!30916 Regex!6159) (t!198197 List!25599)) )
))
(declare-datatypes ((Context!3458 0))(
  ( (Context!3459 (exprs!2229 List!25599)) )
))
(declare-fun z!3955 () (InoxSet Context!3458))

(assert (=> start!212810 (= condSetEmpty!18726 (= z!3955 ((as const (Array Context!3458 Bool)) false)))))

(declare-fun setRes!18726 () Bool)

(assert (=> start!212810 setRes!18726))

(declare-fun setNonEmpty!18726 () Bool)

(declare-fun setElem!18726 () Context!3458)

(declare-fun e!1402182 () Bool)

(declare-fun tp!683690 () Bool)

(declare-fun inv!34139 (Context!3458) Bool)

(assert (=> setNonEmpty!18726 (= setRes!18726 (and tp!683690 (inv!34139 setElem!18726) e!1402182))))

(declare-fun setRest!18726 () (InoxSet Context!3458))

(assert (=> setNonEmpty!18726 (= z!3955 ((_ map or) (store ((as const (Array Context!3458 Bool)) false) setElem!18726 true) setRest!18726))))

(declare-fun b!2194049 () Bool)

(declare-fun e!1402188 () Int)

(assert (=> b!2194049 (= e!1402188 from!1114)))

(declare-fun b!2194050 () Bool)

(declare-fun tp!683691 () Bool)

(assert (=> b!2194050 (= e!1402182 tp!683691)))

(declare-fun b!2194051 () Bool)

(declare-fun res!943352 () Bool)

(declare-fun e!1402189 () Bool)

(assert (=> b!2194051 (=> (not res!943352) (not e!1402189))))

(declare-fun lt!820576 () Int)

(assert (=> b!2194051 (= res!943352 (not (= from!1114 lt!820576)))))

(declare-fun b!2194052 () Bool)

(declare-fun tp!683692 () Bool)

(declare-fun inv!34140 (Conc!8295) Bool)

(assert (=> b!2194052 (= e!1402181 (and (inv!34140 (c!349130 totalInput!923)) tp!683692))))

(declare-fun b!2194053 () Bool)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2194053 (= e!1402188 lastNullablePos!193)))

(declare-fun b!2194054 () Bool)

(declare-fun e!1402187 () Bool)

(assert (=> b!2194054 (= e!1402189 e!1402187)))

(declare-fun res!943353 () Bool)

(assert (=> b!2194054 (=> (not res!943353) (not e!1402187))))

(declare-fun lt!820572 () Int)

(declare-fun lt!820569 () Int)

(assert (=> b!2194054 (= res!943353 (= lt!820572 lt!820569))))

(declare-fun lt!820573 () Int)

(declare-fun lt!820570 () (InoxSet Context!3458))

(declare-fun furthestNullablePosition!329 ((InoxSet Context!3458) Int BalanceConc!16352 Int Int) Int)

(assert (=> b!2194054 (= lt!820569 (furthestNullablePosition!329 lt!820570 (+ 1 from!1114) totalInput!923 lt!820576 lt!820573))))

(assert (=> b!2194054 (= lt!820572 (furthestNullablePosition!329 z!3955 from!1114 totalInput!923 lt!820576 lastNullablePos!193))))

(assert (=> b!2194054 (= lt!820573 e!1402188)))

(declare-fun c!349129 () Bool)

(declare-fun nullableZipper!439 ((InoxSet Context!3458)) Bool)

(assert (=> b!2194054 (= c!349129 (nullableZipper!439 lt!820570))))

(declare-fun lt!820574 () C!12464)

(declare-fun derivationStepZipper!233 ((InoxSet Context!3458) C!12464) (InoxSet Context!3458))

(assert (=> b!2194054 (= lt!820570 (derivationStepZipper!233 z!3955 lt!820574))))

(declare-fun apply!6214 (BalanceConc!16352 Int) C!12464)

(assert (=> b!2194054 (= lt!820574 (apply!6214 totalInput!923 from!1114))))

(declare-fun b!2194055 () Bool)

(declare-fun res!943351 () Bool)

(assert (=> b!2194055 (=> (not res!943351) (not e!1402189))))

(declare-fun e!1402186 () Bool)

(assert (=> b!2194055 (= res!943351 e!1402186)))

(declare-fun res!943350 () Bool)

(assert (=> b!2194055 (=> res!943350 e!1402186)))

(assert (=> b!2194055 (= res!943350 (not (nullableZipper!439 z!3955)))))

(declare-fun setIsEmpty!18726 () Bool)

(assert (=> setIsEmpty!18726 setRes!18726))

(declare-fun b!2194056 () Bool)

(declare-fun e!1402184 () Bool)

(assert (=> b!2194056 (= e!1402187 (not e!1402184))))

(declare-fun res!943357 () Bool)

(assert (=> b!2194056 (=> res!943357 e!1402184)))

(declare-fun lt!820568 () Int)

(assert (=> b!2194056 (= res!943357 (or (> lt!820568 0) (> lt!820569 from!1114) (< lt!820569 lt!820573) (< lt!820573 lastNullablePos!193) (> lt!820573 from!1114) (and (not (= lt!820573 from!1114)) (not (= lt!820573 lastNullablePos!193))) (= lt!820573 lastNullablePos!193) (not (= (+ 1 (- lt!820572 from!1114)) 1))))))

(declare-fun e!1402185 () Bool)

(assert (=> b!2194056 e!1402185))

(declare-fun res!943356 () Bool)

(assert (=> b!2194056 (=> res!943356 e!1402185)))

(assert (=> b!2194056 (= res!943356 (<= lt!820568 0))))

(assert (=> b!2194056 (= lt!820568 (+ 1 (- lt!820569 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38633 0))(
  ( (Unit!38634) )
))
(declare-fun lt!820571 () Unit!38633)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!158 ((InoxSet Context!3458) Int BalanceConc!16352 Int) Unit!38633)

(assert (=> b!2194056 (= lt!820571 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!158 lt!820570 (+ 1 from!1114) totalInput!923 lt!820573))))

(declare-fun b!2194057 () Bool)

(declare-fun lt!820567 () List!25598)

(assert (=> b!2194057 (= e!1402184 (= lt!820567 (Cons!25514 lt!820574 Nil!25514)))))

(declare-fun lt!820575 () C!12464)

(declare-fun lt!820578 () List!25598)

(assert (=> b!2194057 (= (Cons!25514 lt!820575 lt!820578) lt!820567)))

(declare-fun lt!820577 () List!25598)

(declare-fun take!347 (List!25598 Int) List!25598)

(declare-fun drop!1357 (List!25598 Int) List!25598)

(assert (=> b!2194057 (= lt!820567 (take!347 (drop!1357 lt!820577 from!1114) 1))))

(assert (=> b!2194057 (= lt!820578 (take!347 (drop!1357 lt!820577 (+ 1 from!1114)) 0))))

(declare-fun apply!6215 (List!25598 Int) C!12464)

(assert (=> b!2194057 (= lt!820575 (apply!6215 lt!820577 from!1114))))

(declare-fun lt!820566 () Unit!38633)

(declare-fun lemmaDropTakeAddOneLeft!14 (List!25598 Int Int) Unit!38633)

(assert (=> b!2194057 (= lt!820566 (lemmaDropTakeAddOneLeft!14 lt!820577 from!1114 0))))

(declare-fun list!9809 (BalanceConc!16352) List!25598)

(assert (=> b!2194057 (= lt!820577 (list!9809 totalInput!923))))

(declare-fun b!2194058 () Bool)

(declare-fun res!943355 () Bool)

(assert (=> b!2194058 (=> (not res!943355) (not e!1402189))))

(declare-fun lostCauseZipper!277 ((InoxSet Context!3458)) Bool)

(assert (=> b!2194058 (= res!943355 (not (lostCauseZipper!277 z!3955)))))

(declare-fun b!2194059 () Bool)

(assert (=> b!2194059 (= e!1402183 e!1402189)))

(declare-fun res!943349 () Bool)

(assert (=> b!2194059 (=> (not res!943349) (not e!1402189))))

(assert (=> b!2194059 (= res!943349 (and (<= from!1114 lt!820576) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19893 (BalanceConc!16352) Int)

(assert (=> b!2194059 (= lt!820576 (size!19893 totalInput!923))))

(declare-fun b!2194060 () Bool)

(declare-fun matchZipper!255 ((InoxSet Context!3458) List!25598) Bool)

(assert (=> b!2194060 (= e!1402185 (matchZipper!255 lt!820570 (take!347 (drop!1357 (list!9809 totalInput!923) (+ 1 from!1114)) lt!820568)))))

(declare-fun b!2194061 () Bool)

(assert (=> b!2194061 (= e!1402186 (= lastNullablePos!193 (- from!1114 1)))))

(assert (= (and start!212810 res!943354) b!2194059))

(assert (= (and b!2194059 res!943349) b!2194055))

(assert (= (and b!2194055 (not res!943350)) b!2194061))

(assert (= (and b!2194055 res!943351) b!2194051))

(assert (= (and b!2194051 res!943352) b!2194058))

(assert (= (and b!2194058 res!943355) b!2194054))

(assert (= (and b!2194054 c!349129) b!2194049))

(assert (= (and b!2194054 (not c!349129)) b!2194053))

(assert (= (and b!2194054 res!943353) b!2194056))

(assert (= (and b!2194056 (not res!943356)) b!2194060))

(assert (= (and b!2194056 (not res!943357)) b!2194057))

(assert (= start!212810 b!2194052))

(assert (= (and start!212810 condSetEmpty!18726) setIsEmpty!18726))

(assert (= (and start!212810 (not condSetEmpty!18726)) setNonEmpty!18726))

(assert (= setNonEmpty!18726 b!2194050))

(declare-fun m!2636543 () Bool)

(assert (=> b!2194056 m!2636543))

(declare-fun m!2636545 () Bool)

(assert (=> b!2194057 m!2636545))

(declare-fun m!2636547 () Bool)

(assert (=> b!2194057 m!2636547))

(declare-fun m!2636549 () Bool)

(assert (=> b!2194057 m!2636549))

(assert (=> b!2194057 m!2636549))

(declare-fun m!2636551 () Bool)

(assert (=> b!2194057 m!2636551))

(declare-fun m!2636553 () Bool)

(assert (=> b!2194057 m!2636553))

(declare-fun m!2636555 () Bool)

(assert (=> b!2194057 m!2636555))

(declare-fun m!2636557 () Bool)

(assert (=> b!2194057 m!2636557))

(assert (=> b!2194057 m!2636553))

(declare-fun m!2636559 () Bool)

(assert (=> b!2194058 m!2636559))

(declare-fun m!2636561 () Bool)

(assert (=> start!212810 m!2636561))

(declare-fun m!2636563 () Bool)

(assert (=> b!2194059 m!2636563))

(assert (=> b!2194060 m!2636557))

(assert (=> b!2194060 m!2636557))

(declare-fun m!2636565 () Bool)

(assert (=> b!2194060 m!2636565))

(assert (=> b!2194060 m!2636565))

(declare-fun m!2636567 () Bool)

(assert (=> b!2194060 m!2636567))

(assert (=> b!2194060 m!2636567))

(declare-fun m!2636569 () Bool)

(assert (=> b!2194060 m!2636569))

(declare-fun m!2636571 () Bool)

(assert (=> b!2194052 m!2636571))

(declare-fun m!2636573 () Bool)

(assert (=> b!2194054 m!2636573))

(declare-fun m!2636575 () Bool)

(assert (=> b!2194054 m!2636575))

(declare-fun m!2636577 () Bool)

(assert (=> b!2194054 m!2636577))

(declare-fun m!2636579 () Bool)

(assert (=> b!2194054 m!2636579))

(declare-fun m!2636581 () Bool)

(assert (=> b!2194054 m!2636581))

(declare-fun m!2636583 () Bool)

(assert (=> b!2194055 m!2636583))

(declare-fun m!2636585 () Bool)

(assert (=> setNonEmpty!18726 m!2636585))

(check-sat (not b!2194055) (not b!2194056) (not b!2194057) (not setNonEmpty!18726) (not b!2194060) (not b!2194058) (not start!212810) (not b!2194059) (not b!2194050) (not b!2194052) (not b!2194054))
(check-sat)
(get-model)

(declare-fun d!656433 () Bool)

(declare-fun e!1402194 () Bool)

(assert (=> d!656433 e!1402194))

(declare-fun res!943363 () Bool)

(assert (=> d!656433 (=> res!943363 e!1402194)))

(declare-fun lt!820584 () Int)

(assert (=> d!656433 (= res!943363 (<= lt!820584 0))))

(assert (=> d!656433 (= lt!820584 (+ (- (furthestNullablePosition!329 lt!820570 (+ 1 from!1114) totalInput!923 (size!19893 totalInput!923) lt!820573) (+ 1 from!1114)) 1))))

(declare-fun lt!820583 () Unit!38633)

(declare-fun choose!12978 ((InoxSet Context!3458) Int BalanceConc!16352 Int) Unit!38633)

(assert (=> d!656433 (= lt!820583 (choose!12978 lt!820570 (+ 1 from!1114) totalInput!923 lt!820573))))

(declare-fun e!1402195 () Bool)

(assert (=> d!656433 e!1402195))

(declare-fun res!943362 () Bool)

(assert (=> d!656433 (=> (not res!943362) (not e!1402195))))

(assert (=> d!656433 (= res!943362 (>= (+ 1 from!1114) 0))))

(assert (=> d!656433 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!158 lt!820570 (+ 1 from!1114) totalInput!923 lt!820573) lt!820583)))

(declare-fun b!2194066 () Bool)

(assert (=> b!2194066 (= e!1402195 (<= (+ 1 from!1114) (size!19893 totalInput!923)))))

(declare-fun b!2194067 () Bool)

(assert (=> b!2194067 (= e!1402194 (matchZipper!255 lt!820570 (take!347 (drop!1357 (list!9809 totalInput!923) (+ 1 from!1114)) lt!820584)))))

(assert (= (and d!656433 res!943362) b!2194066))

(assert (= (and d!656433 (not res!943363)) b!2194067))

(assert (=> d!656433 m!2636563))

(assert (=> d!656433 m!2636563))

(declare-fun m!2636587 () Bool)

(assert (=> d!656433 m!2636587))

(declare-fun m!2636589 () Bool)

(assert (=> d!656433 m!2636589))

(assert (=> b!2194066 m!2636563))

(assert (=> b!2194067 m!2636557))

(assert (=> b!2194067 m!2636557))

(assert (=> b!2194067 m!2636565))

(assert (=> b!2194067 m!2636565))

(declare-fun m!2636591 () Bool)

(assert (=> b!2194067 m!2636591))

(assert (=> b!2194067 m!2636591))

(declare-fun m!2636593 () Bool)

(assert (=> b!2194067 m!2636593))

(assert (=> b!2194056 d!656433))

(declare-fun d!656437 () Bool)

(declare-fun c!349137 () Bool)

(get-info :version)

(assert (=> d!656437 (= c!349137 ((_ is Node!8295) (c!349130 totalInput!923)))))

(declare-fun e!1402203 () Bool)

(assert (=> d!656437 (= (inv!34140 (c!349130 totalInput!923)) e!1402203)))

(declare-fun b!2194080 () Bool)

(declare-fun inv!34141 (Conc!8295) Bool)

(assert (=> b!2194080 (= e!1402203 (inv!34141 (c!349130 totalInput!923)))))

(declare-fun b!2194081 () Bool)

(declare-fun e!1402204 () Bool)

(assert (=> b!2194081 (= e!1402203 e!1402204)))

(declare-fun res!943366 () Bool)

(assert (=> b!2194081 (= res!943366 (not ((_ is Leaf!12142) (c!349130 totalInput!923))))))

(assert (=> b!2194081 (=> res!943366 e!1402204)))

(declare-fun b!2194082 () Bool)

(declare-fun inv!34142 (Conc!8295) Bool)

(assert (=> b!2194082 (= e!1402204 (inv!34142 (c!349130 totalInput!923)))))

(assert (= (and d!656437 c!349137) b!2194080))

(assert (= (and d!656437 (not c!349137)) b!2194081))

(assert (= (and b!2194081 (not res!943366)) b!2194082))

(declare-fun m!2636603 () Bool)

(assert (=> b!2194080 m!2636603))

(declare-fun m!2636605 () Bool)

(assert (=> b!2194082 m!2636605))

(assert (=> b!2194052 d!656437))

(declare-fun d!656439 () Bool)

(declare-fun lt!820589 () C!12464)

(declare-fun contains!4276 (List!25598 C!12464) Bool)

(assert (=> d!656439 (contains!4276 lt!820577 lt!820589)))

(declare-fun e!1402212 () C!12464)

(assert (=> d!656439 (= lt!820589 e!1402212)))

(declare-fun c!349142 () Bool)

(assert (=> d!656439 (= c!349142 (= from!1114 0))))

(declare-fun e!1402211 () Bool)

(assert (=> d!656439 e!1402211))

(declare-fun res!943369 () Bool)

(assert (=> d!656439 (=> (not res!943369) (not e!1402211))))

(assert (=> d!656439 (= res!943369 (<= 0 from!1114))))

(assert (=> d!656439 (= (apply!6215 lt!820577 from!1114) lt!820589)))

(declare-fun b!2194093 () Bool)

(declare-fun size!19895 (List!25598) Int)

(assert (=> b!2194093 (= e!1402211 (< from!1114 (size!19895 lt!820577)))))

(declare-fun b!2194094 () Bool)

(declare-fun head!4680 (List!25598) C!12464)

(assert (=> b!2194094 (= e!1402212 (head!4680 lt!820577))))

(declare-fun b!2194095 () Bool)

(declare-fun tail!3152 (List!25598) List!25598)

(assert (=> b!2194095 (= e!1402212 (apply!6215 (tail!3152 lt!820577) (- from!1114 1)))))

(assert (= (and d!656439 res!943369) b!2194093))

(assert (= (and d!656439 c!349142) b!2194094))

(assert (= (and d!656439 (not c!349142)) b!2194095))

(declare-fun m!2636609 () Bool)

(assert (=> d!656439 m!2636609))

(declare-fun m!2636611 () Bool)

(assert (=> b!2194093 m!2636611))

(declare-fun m!2636613 () Bool)

(assert (=> b!2194094 m!2636613))

(declare-fun m!2636615 () Bool)

(assert (=> b!2194095 m!2636615))

(assert (=> b!2194095 m!2636615))

(declare-fun m!2636617 () Bool)

(assert (=> b!2194095 m!2636617))

(assert (=> b!2194057 d!656439))

(declare-fun b!2194139 () Bool)

(declare-fun e!1402239 () Int)

(declare-fun call!131897 () Int)

(assert (=> b!2194139 (= e!1402239 (- call!131897 from!1114))))

(declare-fun b!2194140 () Bool)

(declare-fun e!1402238 () List!25598)

(declare-fun e!1402241 () List!25598)

(assert (=> b!2194140 (= e!1402238 e!1402241)))

(declare-fun c!349162 () Bool)

(assert (=> b!2194140 (= c!349162 (<= from!1114 0))))

(declare-fun b!2194141 () Bool)

(declare-fun e!1402240 () Int)

(assert (=> b!2194141 (= e!1402240 e!1402239)))

(declare-fun c!349163 () Bool)

(assert (=> b!2194141 (= c!349163 (>= from!1114 call!131897))))

(declare-fun bm!131892 () Bool)

(assert (=> bm!131892 (= call!131897 (size!19895 lt!820577))))

(declare-fun d!656443 () Bool)

(declare-fun e!1402237 () Bool)

(assert (=> d!656443 e!1402237))

(declare-fun res!943375 () Bool)

(assert (=> d!656443 (=> (not res!943375) (not e!1402237))))

(declare-fun lt!820595 () List!25598)

(declare-fun content!3463 (List!25598) (InoxSet C!12464))

(assert (=> d!656443 (= res!943375 (= ((_ map implies) (content!3463 lt!820595) (content!3463 lt!820577)) ((as const (InoxSet C!12464)) true)))))

(assert (=> d!656443 (= lt!820595 e!1402238)))

(declare-fun c!349164 () Bool)

(assert (=> d!656443 (= c!349164 ((_ is Nil!25514) lt!820577))))

(assert (=> d!656443 (= (drop!1357 lt!820577 from!1114) lt!820595)))

(declare-fun b!2194142 () Bool)

(assert (=> b!2194142 (= e!1402241 (drop!1357 (t!198196 lt!820577) (- from!1114 1)))))

(declare-fun b!2194143 () Bool)

(assert (=> b!2194143 (= e!1402240 call!131897)))

(declare-fun b!2194144 () Bool)

(assert (=> b!2194144 (= e!1402239 0)))

(declare-fun b!2194145 () Bool)

(assert (=> b!2194145 (= e!1402241 lt!820577)))

(declare-fun b!2194146 () Bool)

(assert (=> b!2194146 (= e!1402238 Nil!25514)))

(declare-fun b!2194147 () Bool)

(assert (=> b!2194147 (= e!1402237 (= (size!19895 lt!820595) e!1402240))))

(declare-fun c!349165 () Bool)

(assert (=> b!2194147 (= c!349165 (<= from!1114 0))))

(assert (= (and d!656443 c!349164) b!2194146))

(assert (= (and d!656443 (not c!349164)) b!2194140))

(assert (= (and b!2194140 c!349162) b!2194145))

(assert (= (and b!2194140 (not c!349162)) b!2194142))

(assert (= (and d!656443 res!943375) b!2194147))

(assert (= (and b!2194147 c!349165) b!2194143))

(assert (= (and b!2194147 (not c!349165)) b!2194141))

(assert (= (and b!2194141 c!349163) b!2194144))

(assert (= (and b!2194141 (not c!349163)) b!2194139))

(assert (= (or b!2194143 b!2194141 b!2194139) bm!131892))

(assert (=> bm!131892 m!2636611))

(declare-fun m!2636629 () Bool)

(assert (=> d!656443 m!2636629))

(declare-fun m!2636631 () Bool)

(assert (=> d!656443 m!2636631))

(declare-fun m!2636633 () Bool)

(assert (=> b!2194142 m!2636633))

(declare-fun m!2636635 () Bool)

(assert (=> b!2194147 m!2636635))

(assert (=> b!2194057 d!656443))

(declare-fun b!2194181 () Bool)

(declare-fun e!1402262 () List!25598)

(assert (=> b!2194181 (= e!1402262 Nil!25514)))

(declare-fun b!2194182 () Bool)

(declare-fun e!1402261 () Int)

(assert (=> b!2194182 (= e!1402261 0)))

(declare-fun b!2194183 () Bool)

(assert (=> b!2194183 (= e!1402262 (Cons!25514 (h!30915 (drop!1357 lt!820577 (+ 1 from!1114))) (take!347 (t!198196 (drop!1357 lt!820577 (+ 1 from!1114))) (- 0 1))))))

(declare-fun d!656447 () Bool)

(declare-fun e!1402264 () Bool)

(assert (=> d!656447 e!1402264))

(declare-fun res!943381 () Bool)

(assert (=> d!656447 (=> (not res!943381) (not e!1402264))))

(declare-fun lt!820599 () List!25598)

(assert (=> d!656447 (= res!943381 (= ((_ map implies) (content!3463 lt!820599) (content!3463 (drop!1357 lt!820577 (+ 1 from!1114)))) ((as const (InoxSet C!12464)) true)))))

(assert (=> d!656447 (= lt!820599 e!1402262)))

(declare-fun c!349182 () Bool)

(assert (=> d!656447 (= c!349182 (or ((_ is Nil!25514) (drop!1357 lt!820577 (+ 1 from!1114))) (<= 0 0)))))

(assert (=> d!656447 (= (take!347 (drop!1357 lt!820577 (+ 1 from!1114)) 0) lt!820599)))

(declare-fun b!2194184 () Bool)

(declare-fun e!1402263 () Int)

(assert (=> b!2194184 (= e!1402263 (size!19895 (drop!1357 lt!820577 (+ 1 from!1114))))))

(declare-fun b!2194185 () Bool)

(assert (=> b!2194185 (= e!1402263 0)))

(declare-fun b!2194186 () Bool)

(assert (=> b!2194186 (= e!1402261 e!1402263)))

(declare-fun c!349180 () Bool)

(assert (=> b!2194186 (= c!349180 (>= 0 (size!19895 (drop!1357 lt!820577 (+ 1 from!1114)))))))

(declare-fun b!2194187 () Bool)

(assert (=> b!2194187 (= e!1402264 (= (size!19895 lt!820599) e!1402261))))

(declare-fun c!349181 () Bool)

(assert (=> b!2194187 (= c!349181 (<= 0 0))))

(assert (= (and d!656447 c!349182) b!2194181))

(assert (= (and d!656447 (not c!349182)) b!2194183))

(assert (= (and d!656447 res!943381) b!2194187))

(assert (= (and b!2194187 c!349181) b!2194182))

(assert (= (and b!2194187 (not c!349181)) b!2194186))

(assert (= (and b!2194186 c!349180) b!2194184))

(assert (= (and b!2194186 (not c!349180)) b!2194185))

(declare-fun m!2636649 () Bool)

(assert (=> d!656447 m!2636649))

(assert (=> d!656447 m!2636553))

(declare-fun m!2636651 () Bool)

(assert (=> d!656447 m!2636651))

(assert (=> b!2194184 m!2636553))

(declare-fun m!2636653 () Bool)

(assert (=> b!2194184 m!2636653))

(assert (=> b!2194186 m!2636553))

(assert (=> b!2194186 m!2636653))

(declare-fun m!2636655 () Bool)

(assert (=> b!2194183 m!2636655))

(declare-fun m!2636657 () Bool)

(assert (=> b!2194187 m!2636657))

(assert (=> b!2194057 d!656447))

(declare-fun b!2194188 () Bool)

(declare-fun e!1402266 () List!25598)

(assert (=> b!2194188 (= e!1402266 Nil!25514)))

(declare-fun b!2194189 () Bool)

(declare-fun e!1402265 () Int)

(assert (=> b!2194189 (= e!1402265 0)))

(declare-fun b!2194190 () Bool)

(assert (=> b!2194190 (= e!1402266 (Cons!25514 (h!30915 (drop!1357 lt!820577 from!1114)) (take!347 (t!198196 (drop!1357 lt!820577 from!1114)) (- 1 1))))))

(declare-fun d!656453 () Bool)

(declare-fun e!1402268 () Bool)

(assert (=> d!656453 e!1402268))

(declare-fun res!943382 () Bool)

(assert (=> d!656453 (=> (not res!943382) (not e!1402268))))

(declare-fun lt!820600 () List!25598)

(assert (=> d!656453 (= res!943382 (= ((_ map implies) (content!3463 lt!820600) (content!3463 (drop!1357 lt!820577 from!1114))) ((as const (InoxSet C!12464)) true)))))

(assert (=> d!656453 (= lt!820600 e!1402266)))

(declare-fun c!349185 () Bool)

(assert (=> d!656453 (= c!349185 (or ((_ is Nil!25514) (drop!1357 lt!820577 from!1114)) (<= 1 0)))))

(assert (=> d!656453 (= (take!347 (drop!1357 lt!820577 from!1114) 1) lt!820600)))

(declare-fun b!2194191 () Bool)

(declare-fun e!1402267 () Int)

(assert (=> b!2194191 (= e!1402267 (size!19895 (drop!1357 lt!820577 from!1114)))))

(declare-fun b!2194192 () Bool)

(assert (=> b!2194192 (= e!1402267 1)))

(declare-fun b!2194193 () Bool)

(assert (=> b!2194193 (= e!1402265 e!1402267)))

(declare-fun c!349183 () Bool)

(assert (=> b!2194193 (= c!349183 (>= 1 (size!19895 (drop!1357 lt!820577 from!1114))))))

(declare-fun b!2194194 () Bool)

(assert (=> b!2194194 (= e!1402268 (= (size!19895 lt!820600) e!1402265))))

(declare-fun c!349184 () Bool)

(assert (=> b!2194194 (= c!349184 (<= 1 0))))

(assert (= (and d!656453 c!349185) b!2194188))

(assert (= (and d!656453 (not c!349185)) b!2194190))

(assert (= (and d!656453 res!943382) b!2194194))

(assert (= (and b!2194194 c!349184) b!2194189))

(assert (= (and b!2194194 (not c!349184)) b!2194193))

(assert (= (and b!2194193 c!349183) b!2194191))

(assert (= (and b!2194193 (not c!349183)) b!2194192))

(declare-fun m!2636659 () Bool)

(assert (=> d!656453 m!2636659))

(assert (=> d!656453 m!2636549))

(declare-fun m!2636661 () Bool)

(assert (=> d!656453 m!2636661))

(assert (=> b!2194191 m!2636549))

(declare-fun m!2636663 () Bool)

(assert (=> b!2194191 m!2636663))

(assert (=> b!2194193 m!2636549))

(assert (=> b!2194193 m!2636663))

(declare-fun m!2636665 () Bool)

(assert (=> b!2194190 m!2636665))

(declare-fun m!2636667 () Bool)

(assert (=> b!2194194 m!2636667))

(assert (=> b!2194057 d!656453))

(declare-fun d!656455 () Bool)

(declare-fun list!9811 (Conc!8295) List!25598)

(assert (=> d!656455 (= (list!9809 totalInput!923) (list!9811 (c!349130 totalInput!923)))))

(declare-fun bs!448600 () Bool)

(assert (= bs!448600 d!656455))

(declare-fun m!2636669 () Bool)

(assert (=> bs!448600 m!2636669))

(assert (=> b!2194057 d!656455))

(declare-fun d!656457 () Bool)

(assert (=> d!656457 (= (Cons!25514 (apply!6215 lt!820577 from!1114) (take!347 (drop!1357 lt!820577 (+ from!1114 1)) 0)) (take!347 (drop!1357 lt!820577 from!1114) (+ 0 1)))))

(declare-fun lt!820603 () Unit!38633)

(declare-fun choose!12980 (List!25598 Int Int) Unit!38633)

(assert (=> d!656457 (= lt!820603 (choose!12980 lt!820577 from!1114 0))))

(declare-fun e!1402271 () Bool)

(assert (=> d!656457 e!1402271))

(declare-fun res!943385 () Bool)

(assert (=> d!656457 (=> (not res!943385) (not e!1402271))))

(assert (=> d!656457 (= res!943385 (>= from!1114 0))))

(assert (=> d!656457 (= (lemmaDropTakeAddOneLeft!14 lt!820577 from!1114 0) lt!820603)))

(declare-fun b!2194197 () Bool)

(assert (=> b!2194197 (= e!1402271 (< from!1114 (size!19895 lt!820577)))))

(assert (= (and d!656457 res!943385) b!2194197))

(assert (=> d!656457 m!2636549))

(declare-fun m!2636671 () Bool)

(assert (=> d!656457 m!2636671))

(assert (=> d!656457 m!2636547))

(assert (=> d!656457 m!2636549))

(declare-fun m!2636673 () Bool)

(assert (=> d!656457 m!2636673))

(declare-fun m!2636675 () Bool)

(assert (=> d!656457 m!2636675))

(declare-fun m!2636677 () Bool)

(assert (=> d!656457 m!2636677))

(assert (=> d!656457 m!2636675))

(assert (=> b!2194197 m!2636611))

(assert (=> b!2194057 d!656457))

(declare-fun b!2194198 () Bool)

(declare-fun e!1402274 () Int)

(declare-fun call!131901 () Int)

(assert (=> b!2194198 (= e!1402274 (- call!131901 (+ 1 from!1114)))))

(declare-fun b!2194199 () Bool)

(declare-fun e!1402273 () List!25598)

(declare-fun e!1402276 () List!25598)

(assert (=> b!2194199 (= e!1402273 e!1402276)))

(declare-fun c!349186 () Bool)

(assert (=> b!2194199 (= c!349186 (<= (+ 1 from!1114) 0))))

(declare-fun b!2194200 () Bool)

(declare-fun e!1402275 () Int)

(assert (=> b!2194200 (= e!1402275 e!1402274)))

(declare-fun c!349187 () Bool)

(assert (=> b!2194200 (= c!349187 (>= (+ 1 from!1114) call!131901))))

(declare-fun bm!131896 () Bool)

(assert (=> bm!131896 (= call!131901 (size!19895 lt!820577))))

(declare-fun d!656459 () Bool)

(declare-fun e!1402272 () Bool)

(assert (=> d!656459 e!1402272))

(declare-fun res!943386 () Bool)

(assert (=> d!656459 (=> (not res!943386) (not e!1402272))))

(declare-fun lt!820604 () List!25598)

(assert (=> d!656459 (= res!943386 (= ((_ map implies) (content!3463 lt!820604) (content!3463 lt!820577)) ((as const (InoxSet C!12464)) true)))))

(assert (=> d!656459 (= lt!820604 e!1402273)))

(declare-fun c!349188 () Bool)

(assert (=> d!656459 (= c!349188 ((_ is Nil!25514) lt!820577))))

(assert (=> d!656459 (= (drop!1357 lt!820577 (+ 1 from!1114)) lt!820604)))

(declare-fun b!2194201 () Bool)

(assert (=> b!2194201 (= e!1402276 (drop!1357 (t!198196 lt!820577) (- (+ 1 from!1114) 1)))))

(declare-fun b!2194202 () Bool)

(assert (=> b!2194202 (= e!1402275 call!131901)))

(declare-fun b!2194203 () Bool)

(assert (=> b!2194203 (= e!1402274 0)))

(declare-fun b!2194204 () Bool)

(assert (=> b!2194204 (= e!1402276 lt!820577)))

(declare-fun b!2194205 () Bool)

(assert (=> b!2194205 (= e!1402273 Nil!25514)))

(declare-fun b!2194206 () Bool)

(assert (=> b!2194206 (= e!1402272 (= (size!19895 lt!820604) e!1402275))))

(declare-fun c!349189 () Bool)

(assert (=> b!2194206 (= c!349189 (<= (+ 1 from!1114) 0))))

(assert (= (and d!656459 c!349188) b!2194205))

(assert (= (and d!656459 (not c!349188)) b!2194199))

(assert (= (and b!2194199 c!349186) b!2194204))

(assert (= (and b!2194199 (not c!349186)) b!2194201))

(assert (= (and d!656459 res!943386) b!2194206))

(assert (= (and b!2194206 c!349189) b!2194202))

(assert (= (and b!2194206 (not c!349189)) b!2194200))

(assert (= (and b!2194200 c!349187) b!2194203))

(assert (= (and b!2194200 (not c!349187)) b!2194198))

(assert (= (or b!2194202 b!2194200 b!2194198) bm!131896))

(assert (=> bm!131896 m!2636611))

(declare-fun m!2636679 () Bool)

(assert (=> d!656459 m!2636679))

(assert (=> d!656459 m!2636631))

(declare-fun m!2636681 () Bool)

(assert (=> b!2194201 m!2636681))

(declare-fun m!2636683 () Bool)

(assert (=> b!2194206 m!2636683))

(assert (=> b!2194057 d!656459))

(declare-fun d!656461 () Bool)

(declare-fun lambda!82384 () Int)

(declare-fun forall!5211 (List!25599 Int) Bool)

(assert (=> d!656461 (= (inv!34139 setElem!18726) (forall!5211 (exprs!2229 setElem!18726) lambda!82384))))

(declare-fun bs!448603 () Bool)

(assert (= bs!448603 d!656461))

(declare-fun m!2636713 () Bool)

(assert (=> bs!448603 m!2636713))

(assert (=> setNonEmpty!18726 d!656461))

(declare-fun bs!448605 () Bool)

(declare-fun b!2194242 () Bool)

(declare-fun d!656473 () Bool)

(assert (= bs!448605 (and b!2194242 d!656473)))

(declare-fun lambda!82401 () Int)

(declare-fun lambda!82400 () Int)

(assert (=> bs!448605 (not (= lambda!82401 lambda!82400))))

(declare-fun bs!448606 () Bool)

(declare-fun b!2194243 () Bool)

(assert (= bs!448606 (and b!2194243 d!656473)))

(declare-fun lambda!82402 () Int)

(assert (=> bs!448606 (not (= lambda!82402 lambda!82400))))

(declare-fun bs!448607 () Bool)

(assert (= bs!448607 (and b!2194243 b!2194242)))

(assert (=> bs!448607 (= lambda!82402 lambda!82401)))

(declare-fun e!1402304 () Unit!38633)

(declare-fun Unit!38637 () Unit!38633)

(assert (=> b!2194243 (= e!1402304 Unit!38637)))

(declare-datatypes ((List!25601 0))(
  ( (Nil!25517) (Cons!25517 (h!30918 Context!3458) (t!198199 List!25601)) )
))
(declare-fun lt!820640 () List!25601)

(declare-fun call!131906 () List!25601)

(assert (=> b!2194243 (= lt!820640 call!131906)))

(declare-fun lt!820644 () Unit!38633)

(declare-fun lemmaForallThenNotExists!40 (List!25601 Int) Unit!38633)

(assert (=> b!2194243 (= lt!820644 (lemmaForallThenNotExists!40 lt!820640 lambda!82400))))

(declare-fun call!131907 () Bool)

(assert (=> b!2194243 (not call!131907)))

(declare-fun lt!820643 () Unit!38633)

(assert (=> b!2194243 (= lt!820643 lt!820644)))

(declare-fun Unit!38638 () Unit!38633)

(assert (=> b!2194242 (= e!1402304 Unit!38638)))

(declare-fun lt!820639 () List!25601)

(assert (=> b!2194242 (= lt!820639 call!131906)))

(declare-fun lt!820642 () Unit!38633)

(declare-fun lemmaNotForallThenExists!40 (List!25601 Int) Unit!38633)

(assert (=> b!2194242 (= lt!820642 (lemmaNotForallThenExists!40 lt!820639 lambda!82400))))

(assert (=> b!2194242 call!131907))

(declare-fun lt!820645 () Unit!38633)

(assert (=> b!2194242 (= lt!820645 lt!820642)))

(declare-fun bm!131901 () Bool)

(declare-fun c!349212 () Bool)

(declare-fun exists!801 (List!25601 Int) Bool)

(assert (=> bm!131901 (= call!131907 (exists!801 (ite c!349212 lt!820639 lt!820640) (ite c!349212 lambda!82401 lambda!82402)))))

(declare-fun bm!131902 () Bool)

(declare-fun toList!1251 ((InoxSet Context!3458)) List!25601)

(assert (=> bm!131902 (= call!131906 (toList!1251 z!3955))))

(declare-fun lt!820641 () Bool)

(declare-datatypes ((Option!5015 0))(
  ( (None!5014) (Some!5014 (v!29409 List!25598)) )
))
(declare-fun isEmpty!14572 (Option!5015) Bool)

(declare-fun getLanguageWitness!132 ((InoxSet Context!3458)) Option!5015)

(assert (=> d!656473 (= lt!820641 (isEmpty!14572 (getLanguageWitness!132 z!3955)))))

(declare-fun forall!5213 ((InoxSet Context!3458) Int) Bool)

(assert (=> d!656473 (= lt!820641 (forall!5213 z!3955 lambda!82400))))

(declare-fun lt!820638 () Unit!38633)

(assert (=> d!656473 (= lt!820638 e!1402304)))

(assert (=> d!656473 (= c!349212 (not (forall!5213 z!3955 lambda!82400)))))

(assert (=> d!656473 (= (lostCauseZipper!277 z!3955) lt!820641)))

(assert (= (and d!656473 c!349212) b!2194242))

(assert (= (and d!656473 (not c!349212)) b!2194243))

(assert (= (or b!2194242 b!2194243) bm!131901))

(assert (= (or b!2194242 b!2194243) bm!131902))

(declare-fun m!2636721 () Bool)

(assert (=> bm!131902 m!2636721))

(declare-fun m!2636723 () Bool)

(assert (=> d!656473 m!2636723))

(assert (=> d!656473 m!2636723))

(declare-fun m!2636725 () Bool)

(assert (=> d!656473 m!2636725))

(declare-fun m!2636727 () Bool)

(assert (=> d!656473 m!2636727))

(assert (=> d!656473 m!2636727))

(declare-fun m!2636729 () Bool)

(assert (=> bm!131901 m!2636729))

(declare-fun m!2636731 () Bool)

(assert (=> b!2194242 m!2636731))

(declare-fun m!2636733 () Bool)

(assert (=> b!2194243 m!2636733))

(assert (=> b!2194058 d!656473))

(declare-fun b!2194276 () Bool)

(declare-fun e!1402329 () Int)

(assert (=> b!2194276 (= e!1402329 lt!820573)))

(declare-fun b!2194277 () Bool)

(declare-fun e!1402330 () Int)

(assert (=> b!2194277 (= e!1402330 lt!820573)))

(declare-fun lt!820678 () (InoxSet Context!3458))

(declare-fun b!2194278 () Bool)

(assert (=> b!2194278 (= e!1402329 (furthestNullablePosition!329 lt!820678 (+ 1 from!1114 1) totalInput!923 lt!820576 e!1402330))))

(assert (=> b!2194278 (= lt!820678 (derivationStepZipper!233 lt!820570 (apply!6214 totalInput!923 (+ 1 from!1114))))))

(declare-fun c!349235 () Bool)

(assert (=> b!2194278 (= c!349235 (nullableZipper!439 lt!820678))))

(declare-fun b!2194279 () Bool)

(assert (=> b!2194279 (= e!1402330 (+ 1 from!1114))))

(declare-fun b!2194280 () Bool)

(declare-fun e!1402328 () Bool)

(assert (=> b!2194280 (= e!1402328 (lostCauseZipper!277 lt!820570))))

(declare-fun d!656479 () Bool)

(declare-fun lt!820679 () Int)

(assert (=> d!656479 (and (>= lt!820679 (- 1)) (< lt!820679 lt!820576) (>= lt!820679 lt!820573) (or (= lt!820679 lt!820573) (>= lt!820679 (+ 1 from!1114))))))

(assert (=> d!656479 (= lt!820679 e!1402329)))

(declare-fun c!349234 () Bool)

(assert (=> d!656479 (= c!349234 e!1402328)))

(declare-fun res!943406 () Bool)

(assert (=> d!656479 (=> res!943406 e!1402328)))

(assert (=> d!656479 (= res!943406 (= (+ 1 from!1114) lt!820576))))

(assert (=> d!656479 (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!820576))))

(assert (=> d!656479 (= (furthestNullablePosition!329 lt!820570 (+ 1 from!1114) totalInput!923 lt!820576 lt!820573) lt!820679)))

(assert (= (and d!656479 (not res!943406)) b!2194280))

(assert (= (and d!656479 c!349234) b!2194276))

(assert (= (and d!656479 (not c!349234)) b!2194278))

(assert (= (and b!2194278 c!349235) b!2194279))

(assert (= (and b!2194278 (not c!349235)) b!2194277))

(declare-fun m!2636769 () Bool)

(assert (=> b!2194278 m!2636769))

(declare-fun m!2636771 () Bool)

(assert (=> b!2194278 m!2636771))

(assert (=> b!2194278 m!2636771))

(declare-fun m!2636773 () Bool)

(assert (=> b!2194278 m!2636773))

(declare-fun m!2636775 () Bool)

(assert (=> b!2194278 m!2636775))

(declare-fun m!2636777 () Bool)

(assert (=> b!2194280 m!2636777))

(assert (=> b!2194054 d!656479))

(declare-fun d!656487 () Bool)

(assert (=> d!656487 true))

(declare-fun lambda!82420 () Int)

(declare-fun flatMap!146 ((InoxSet Context!3458) Int) (InoxSet Context!3458))

(assert (=> d!656487 (= (derivationStepZipper!233 z!3955 lt!820574) (flatMap!146 z!3955 lambda!82420))))

(declare-fun bs!448614 () Bool)

(assert (= bs!448614 d!656487))

(declare-fun m!2636779 () Bool)

(assert (=> bs!448614 m!2636779))

(assert (=> b!2194054 d!656487))

(declare-fun d!656489 () Bool)

(declare-fun lt!820688 () C!12464)

(assert (=> d!656489 (= lt!820688 (apply!6215 (list!9809 totalInput!923) from!1114))))

(declare-fun apply!6217 (Conc!8295 Int) C!12464)

(assert (=> d!656489 (= lt!820688 (apply!6217 (c!349130 totalInput!923) from!1114))))

(declare-fun e!1402350 () Bool)

(assert (=> d!656489 e!1402350))

(declare-fun res!943415 () Bool)

(assert (=> d!656489 (=> (not res!943415) (not e!1402350))))

(assert (=> d!656489 (= res!943415 (<= 0 from!1114))))

(assert (=> d!656489 (= (apply!6214 totalInput!923 from!1114) lt!820688)))

(declare-fun b!2194313 () Bool)

(assert (=> b!2194313 (= e!1402350 (< from!1114 (size!19893 totalInput!923)))))

(assert (= (and d!656489 res!943415) b!2194313))

(assert (=> d!656489 m!2636557))

(assert (=> d!656489 m!2636557))

(declare-fun m!2636813 () Bool)

(assert (=> d!656489 m!2636813))

(declare-fun m!2636815 () Bool)

(assert (=> d!656489 m!2636815))

(assert (=> b!2194313 m!2636563))

(assert (=> b!2194054 d!656489))

(declare-fun b!2194314 () Bool)

(declare-fun e!1402352 () Int)

(assert (=> b!2194314 (= e!1402352 lastNullablePos!193)))

(declare-fun b!2194315 () Bool)

(declare-fun e!1402353 () Int)

(assert (=> b!2194315 (= e!1402353 lastNullablePos!193)))

(declare-fun lt!820689 () (InoxSet Context!3458))

(declare-fun b!2194316 () Bool)

(assert (=> b!2194316 (= e!1402352 (furthestNullablePosition!329 lt!820689 (+ from!1114 1) totalInput!923 lt!820576 e!1402353))))

(assert (=> b!2194316 (= lt!820689 (derivationStepZipper!233 z!3955 (apply!6214 totalInput!923 from!1114)))))

(declare-fun c!349250 () Bool)

(assert (=> b!2194316 (= c!349250 (nullableZipper!439 lt!820689))))

(declare-fun b!2194317 () Bool)

(assert (=> b!2194317 (= e!1402353 from!1114)))

(declare-fun b!2194318 () Bool)

(declare-fun e!1402351 () Bool)

(assert (=> b!2194318 (= e!1402351 (lostCauseZipper!277 z!3955))))

(declare-fun d!656499 () Bool)

(declare-fun lt!820690 () Int)

(assert (=> d!656499 (and (>= lt!820690 (- 1)) (< lt!820690 lt!820576) (>= lt!820690 lastNullablePos!193) (or (= lt!820690 lastNullablePos!193) (>= lt!820690 from!1114)))))

(assert (=> d!656499 (= lt!820690 e!1402352)))

(declare-fun c!349249 () Bool)

(assert (=> d!656499 (= c!349249 e!1402351)))

(declare-fun res!943416 () Bool)

(assert (=> d!656499 (=> res!943416 e!1402351)))

(assert (=> d!656499 (= res!943416 (= from!1114 lt!820576))))

(assert (=> d!656499 (and (>= from!1114 0) (<= from!1114 lt!820576))))

(assert (=> d!656499 (= (furthestNullablePosition!329 z!3955 from!1114 totalInput!923 lt!820576 lastNullablePos!193) lt!820690)))

(assert (= (and d!656499 (not res!943416)) b!2194318))

(assert (= (and d!656499 c!349249) b!2194314))

(assert (= (and d!656499 (not c!349249)) b!2194316))

(assert (= (and b!2194316 c!349250) b!2194317))

(assert (= (and b!2194316 (not c!349250)) b!2194315))

(declare-fun m!2636817 () Bool)

(assert (=> b!2194316 m!2636817))

(assert (=> b!2194316 m!2636575))

(assert (=> b!2194316 m!2636575))

(declare-fun m!2636819 () Bool)

(assert (=> b!2194316 m!2636819))

(declare-fun m!2636821 () Bool)

(assert (=> b!2194316 m!2636821))

(assert (=> b!2194318 m!2636559))

(assert (=> b!2194054 d!656499))

(declare-fun bs!448615 () Bool)

(declare-fun d!656501 () Bool)

(assert (= bs!448615 (and d!656501 d!656473)))

(declare-fun lambda!82423 () Int)

(assert (=> bs!448615 (not (= lambda!82423 lambda!82400))))

(declare-fun bs!448616 () Bool)

(assert (= bs!448616 (and d!656501 b!2194242)))

(assert (=> bs!448616 (not (= lambda!82423 lambda!82401))))

(declare-fun bs!448617 () Bool)

(assert (= bs!448617 (and d!656501 b!2194243)))

(assert (=> bs!448617 (not (= lambda!82423 lambda!82402))))

(declare-fun exists!802 ((InoxSet Context!3458) Int) Bool)

(assert (=> d!656501 (= (nullableZipper!439 lt!820570) (exists!802 lt!820570 lambda!82423))))

(declare-fun bs!448618 () Bool)

(assert (= bs!448618 d!656501))

(declare-fun m!2636827 () Bool)

(assert (=> bs!448618 m!2636827))

(assert (=> b!2194054 d!656501))

(declare-fun d!656505 () Bool)

(declare-fun isBalanced!2556 (Conc!8295) Bool)

(assert (=> d!656505 (= (inv!34138 totalInput!923) (isBalanced!2556 (c!349130 totalInput!923)))))

(declare-fun bs!448620 () Bool)

(assert (= bs!448620 d!656505))

(declare-fun m!2636831 () Bool)

(assert (=> bs!448620 m!2636831))

(assert (=> start!212810 d!656505))

(declare-fun d!656509 () Bool)

(declare-fun lt!820696 () Int)

(assert (=> d!656509 (= lt!820696 (size!19895 (list!9809 totalInput!923)))))

(declare-fun size!19896 (Conc!8295) Int)

(assert (=> d!656509 (= lt!820696 (size!19896 (c!349130 totalInput!923)))))

(assert (=> d!656509 (= (size!19893 totalInput!923) lt!820696)))

(declare-fun bs!448625 () Bool)

(assert (= bs!448625 d!656509))

(assert (=> bs!448625 m!2636557))

(assert (=> bs!448625 m!2636557))

(declare-fun m!2636835 () Bool)

(assert (=> bs!448625 m!2636835))

(declare-fun m!2636837 () Bool)

(assert (=> bs!448625 m!2636837))

(assert (=> b!2194059 d!656509))

(declare-fun bs!448628 () Bool)

(declare-fun d!656513 () Bool)

(assert (= bs!448628 (and d!656513 d!656473)))

(declare-fun lambda!82425 () Int)

(assert (=> bs!448628 (not (= lambda!82425 lambda!82400))))

(declare-fun bs!448629 () Bool)

(assert (= bs!448629 (and d!656513 b!2194242)))

(assert (=> bs!448629 (not (= lambda!82425 lambda!82401))))

(declare-fun bs!448630 () Bool)

(assert (= bs!448630 (and d!656513 b!2194243)))

(assert (=> bs!448630 (not (= lambda!82425 lambda!82402))))

(declare-fun bs!448631 () Bool)

(assert (= bs!448631 (and d!656513 d!656501)))

(assert (=> bs!448631 (= lambda!82425 lambda!82423)))

(assert (=> d!656513 (= (nullableZipper!439 z!3955) (exists!802 z!3955 lambda!82425))))

(declare-fun bs!448632 () Bool)

(assert (= bs!448632 d!656513))

(declare-fun m!2636841 () Bool)

(assert (=> bs!448632 m!2636841))

(assert (=> b!2194055 d!656513))

(declare-fun d!656515 () Bool)

(declare-fun c!349258 () Bool)

(declare-fun isEmpty!14573 (List!25598) Bool)

(assert (=> d!656515 (= c!349258 (isEmpty!14573 (take!347 (drop!1357 (list!9809 totalInput!923) (+ 1 from!1114)) lt!820568)))))

(declare-fun e!1402374 () Bool)

(assert (=> d!656515 (= (matchZipper!255 lt!820570 (take!347 (drop!1357 (list!9809 totalInput!923) (+ 1 from!1114)) lt!820568)) e!1402374)))

(declare-fun b!2194353 () Bool)

(assert (=> b!2194353 (= e!1402374 (nullableZipper!439 lt!820570))))

(declare-fun b!2194354 () Bool)

(assert (=> b!2194354 (= e!1402374 (matchZipper!255 (derivationStepZipper!233 lt!820570 (head!4680 (take!347 (drop!1357 (list!9809 totalInput!923) (+ 1 from!1114)) lt!820568))) (tail!3152 (take!347 (drop!1357 (list!9809 totalInput!923) (+ 1 from!1114)) lt!820568))))))

(assert (= (and d!656515 c!349258) b!2194353))

(assert (= (and d!656515 (not c!349258)) b!2194354))

(assert (=> d!656515 m!2636567))

(declare-fun m!2636851 () Bool)

(assert (=> d!656515 m!2636851))

(assert (=> b!2194353 m!2636581))

(assert (=> b!2194354 m!2636567))

(declare-fun m!2636853 () Bool)

(assert (=> b!2194354 m!2636853))

(assert (=> b!2194354 m!2636853))

(declare-fun m!2636855 () Bool)

(assert (=> b!2194354 m!2636855))

(assert (=> b!2194354 m!2636567))

(declare-fun m!2636857 () Bool)

(assert (=> b!2194354 m!2636857))

(assert (=> b!2194354 m!2636855))

(assert (=> b!2194354 m!2636857))

(declare-fun m!2636859 () Bool)

(assert (=> b!2194354 m!2636859))

(assert (=> b!2194060 d!656515))

(declare-fun b!2194355 () Bool)

(declare-fun e!1402376 () List!25598)

(assert (=> b!2194355 (= e!1402376 Nil!25514)))

(declare-fun b!2194356 () Bool)

(declare-fun e!1402375 () Int)

(assert (=> b!2194356 (= e!1402375 0)))

(declare-fun b!2194357 () Bool)

(assert (=> b!2194357 (= e!1402376 (Cons!25514 (h!30915 (drop!1357 (list!9809 totalInput!923) (+ 1 from!1114))) (take!347 (t!198196 (drop!1357 (list!9809 totalInput!923) (+ 1 from!1114))) (- lt!820568 1))))))

(declare-fun d!656517 () Bool)

(declare-fun e!1402378 () Bool)

(assert (=> d!656517 e!1402378))

(declare-fun res!943420 () Bool)

(assert (=> d!656517 (=> (not res!943420) (not e!1402378))))

(declare-fun lt!820697 () List!25598)

(assert (=> d!656517 (= res!943420 (= ((_ map implies) (content!3463 lt!820697) (content!3463 (drop!1357 (list!9809 totalInput!923) (+ 1 from!1114)))) ((as const (InoxSet C!12464)) true)))))

(assert (=> d!656517 (= lt!820697 e!1402376)))

(declare-fun c!349261 () Bool)

(assert (=> d!656517 (= c!349261 (or ((_ is Nil!25514) (drop!1357 (list!9809 totalInput!923) (+ 1 from!1114))) (<= lt!820568 0)))))

(assert (=> d!656517 (= (take!347 (drop!1357 (list!9809 totalInput!923) (+ 1 from!1114)) lt!820568) lt!820697)))

(declare-fun b!2194358 () Bool)

(declare-fun e!1402377 () Int)

(assert (=> b!2194358 (= e!1402377 (size!19895 (drop!1357 (list!9809 totalInput!923) (+ 1 from!1114))))))

(declare-fun b!2194359 () Bool)

(assert (=> b!2194359 (= e!1402377 lt!820568)))

(declare-fun b!2194360 () Bool)

(assert (=> b!2194360 (= e!1402375 e!1402377)))

(declare-fun c!349259 () Bool)

(assert (=> b!2194360 (= c!349259 (>= lt!820568 (size!19895 (drop!1357 (list!9809 totalInput!923) (+ 1 from!1114)))))))

(declare-fun b!2194361 () Bool)

(assert (=> b!2194361 (= e!1402378 (= (size!19895 lt!820697) e!1402375))))

(declare-fun c!349260 () Bool)

(assert (=> b!2194361 (= c!349260 (<= lt!820568 0))))

(assert (= (and d!656517 c!349261) b!2194355))

(assert (= (and d!656517 (not c!349261)) b!2194357))

(assert (= (and d!656517 res!943420) b!2194361))

(assert (= (and b!2194361 c!349260) b!2194356))

(assert (= (and b!2194361 (not c!349260)) b!2194360))

(assert (= (and b!2194360 c!349259) b!2194358))

(assert (= (and b!2194360 (not c!349259)) b!2194359))

(declare-fun m!2636861 () Bool)

(assert (=> d!656517 m!2636861))

(assert (=> d!656517 m!2636565))

(declare-fun m!2636863 () Bool)

(assert (=> d!656517 m!2636863))

(assert (=> b!2194358 m!2636565))

(declare-fun m!2636865 () Bool)

(assert (=> b!2194358 m!2636865))

(assert (=> b!2194360 m!2636565))

(assert (=> b!2194360 m!2636865))

(declare-fun m!2636867 () Bool)

(assert (=> b!2194357 m!2636867))

(declare-fun m!2636869 () Bool)

(assert (=> b!2194361 m!2636869))

(assert (=> b!2194060 d!656517))

(declare-fun b!2194362 () Bool)

(declare-fun e!1402381 () Int)

(declare-fun call!131916 () Int)

(assert (=> b!2194362 (= e!1402381 (- call!131916 (+ 1 from!1114)))))

(declare-fun b!2194363 () Bool)

(declare-fun e!1402380 () List!25598)

(declare-fun e!1402383 () List!25598)

(assert (=> b!2194363 (= e!1402380 e!1402383)))

(declare-fun c!349262 () Bool)

(assert (=> b!2194363 (= c!349262 (<= (+ 1 from!1114) 0))))

(declare-fun b!2194364 () Bool)

(declare-fun e!1402382 () Int)

(assert (=> b!2194364 (= e!1402382 e!1402381)))

(declare-fun c!349263 () Bool)

(assert (=> b!2194364 (= c!349263 (>= (+ 1 from!1114) call!131916))))

(declare-fun bm!131911 () Bool)

(assert (=> bm!131911 (= call!131916 (size!19895 (list!9809 totalInput!923)))))

(declare-fun d!656519 () Bool)

(declare-fun e!1402379 () Bool)

(assert (=> d!656519 e!1402379))

(declare-fun res!943421 () Bool)

(assert (=> d!656519 (=> (not res!943421) (not e!1402379))))

(declare-fun lt!820698 () List!25598)

(assert (=> d!656519 (= res!943421 (= ((_ map implies) (content!3463 lt!820698) (content!3463 (list!9809 totalInput!923))) ((as const (InoxSet C!12464)) true)))))

(assert (=> d!656519 (= lt!820698 e!1402380)))

(declare-fun c!349264 () Bool)

(assert (=> d!656519 (= c!349264 ((_ is Nil!25514) (list!9809 totalInput!923)))))

(assert (=> d!656519 (= (drop!1357 (list!9809 totalInput!923) (+ 1 from!1114)) lt!820698)))

(declare-fun b!2194365 () Bool)

(assert (=> b!2194365 (= e!1402383 (drop!1357 (t!198196 (list!9809 totalInput!923)) (- (+ 1 from!1114) 1)))))

(declare-fun b!2194366 () Bool)

(assert (=> b!2194366 (= e!1402382 call!131916)))

(declare-fun b!2194367 () Bool)

(assert (=> b!2194367 (= e!1402381 0)))

(declare-fun b!2194368 () Bool)

(assert (=> b!2194368 (= e!1402383 (list!9809 totalInput!923))))

(declare-fun b!2194369 () Bool)

(assert (=> b!2194369 (= e!1402380 Nil!25514)))

(declare-fun b!2194370 () Bool)

(assert (=> b!2194370 (= e!1402379 (= (size!19895 lt!820698) e!1402382))))

(declare-fun c!349265 () Bool)

(assert (=> b!2194370 (= c!349265 (<= (+ 1 from!1114) 0))))

(assert (= (and d!656519 c!349264) b!2194369))

(assert (= (and d!656519 (not c!349264)) b!2194363))

(assert (= (and b!2194363 c!349262) b!2194368))

(assert (= (and b!2194363 (not c!349262)) b!2194365))

(assert (= (and d!656519 res!943421) b!2194370))

(assert (= (and b!2194370 c!349265) b!2194366))

(assert (= (and b!2194370 (not c!349265)) b!2194364))

(assert (= (and b!2194364 c!349263) b!2194367))

(assert (= (and b!2194364 (not c!349263)) b!2194362))

(assert (= (or b!2194366 b!2194364 b!2194362) bm!131911))

(assert (=> bm!131911 m!2636557))

(assert (=> bm!131911 m!2636835))

(declare-fun m!2636871 () Bool)

(assert (=> d!656519 m!2636871))

(assert (=> d!656519 m!2636557))

(declare-fun m!2636873 () Bool)

(assert (=> d!656519 m!2636873))

(declare-fun m!2636875 () Bool)

(assert (=> b!2194365 m!2636875))

(declare-fun m!2636877 () Bool)

(assert (=> b!2194370 m!2636877))

(assert (=> b!2194060 d!656519))

(assert (=> b!2194060 d!656455))

(declare-fun tp!683720 () Bool)

(declare-fun tp!683721 () Bool)

(declare-fun b!2194379 () Bool)

(declare-fun e!1402388 () Bool)

(assert (=> b!2194379 (= e!1402388 (and (inv!34140 (left!19581 (c!349130 totalInput!923))) tp!683721 (inv!34140 (right!19911 (c!349130 totalInput!923))) tp!683720))))

(declare-fun b!2194381 () Bool)

(declare-fun e!1402389 () Bool)

(declare-fun tp!683722 () Bool)

(assert (=> b!2194381 (= e!1402389 tp!683722)))

(declare-fun b!2194380 () Bool)

(declare-fun inv!34145 (IArray!16595) Bool)

(assert (=> b!2194380 (= e!1402388 (and (inv!34145 (xs!11237 (c!349130 totalInput!923))) e!1402389))))

(assert (=> b!2194052 (= tp!683692 (and (inv!34140 (c!349130 totalInput!923)) e!1402388))))

(assert (= (and b!2194052 ((_ is Node!8295) (c!349130 totalInput!923))) b!2194379))

(assert (= b!2194380 b!2194381))

(assert (= (and b!2194052 ((_ is Leaf!12142) (c!349130 totalInput!923))) b!2194380))

(declare-fun m!2636879 () Bool)

(assert (=> b!2194379 m!2636879))

(declare-fun m!2636881 () Bool)

(assert (=> b!2194379 m!2636881))

(declare-fun m!2636883 () Bool)

(assert (=> b!2194380 m!2636883))

(assert (=> b!2194052 m!2636571))

(declare-fun condSetEmpty!18732 () Bool)

(assert (=> setNonEmpty!18726 (= condSetEmpty!18732 (= setRest!18726 ((as const (Array Context!3458 Bool)) false)))))

(declare-fun setRes!18732 () Bool)

(assert (=> setNonEmpty!18726 (= tp!683690 setRes!18732)))

(declare-fun setIsEmpty!18732 () Bool)

(assert (=> setIsEmpty!18732 setRes!18732))

(declare-fun e!1402392 () Bool)

(declare-fun setNonEmpty!18732 () Bool)

(declare-fun tp!683728 () Bool)

(declare-fun setElem!18732 () Context!3458)

(assert (=> setNonEmpty!18732 (= setRes!18732 (and tp!683728 (inv!34139 setElem!18732) e!1402392))))

(declare-fun setRest!18732 () (InoxSet Context!3458))

(assert (=> setNonEmpty!18732 (= setRest!18726 ((_ map or) (store ((as const (Array Context!3458 Bool)) false) setElem!18732 true) setRest!18732))))

(declare-fun b!2194386 () Bool)

(declare-fun tp!683727 () Bool)

(assert (=> b!2194386 (= e!1402392 tp!683727)))

(assert (= (and setNonEmpty!18726 condSetEmpty!18732) setIsEmpty!18732))

(assert (= (and setNonEmpty!18726 (not condSetEmpty!18732)) setNonEmpty!18732))

(assert (= setNonEmpty!18732 b!2194386))

(declare-fun m!2636885 () Bool)

(assert (=> setNonEmpty!18732 m!2636885))

(declare-fun b!2194391 () Bool)

(declare-fun e!1402395 () Bool)

(declare-fun tp!683733 () Bool)

(declare-fun tp!683734 () Bool)

(assert (=> b!2194391 (= e!1402395 (and tp!683733 tp!683734))))

(assert (=> b!2194050 (= tp!683691 e!1402395)))

(assert (= (and b!2194050 ((_ is Cons!25515) (exprs!2229 setElem!18726))) b!2194391))

(check-sat (not d!656473) (not b!2194147) (not d!656439) (not bm!131902) (not b!2194242) (not d!656433) (not b!2194080) (not b!2194193) (not d!656515) (not b!2194082) (not d!656513) (not d!656487) (not b!2194278) (not b!2194353) (not b!2194052) (not b!2194370) (not b!2194386) (not b!2194186) (not d!656489) (not b!2194197) (not b!2194280) (not d!656443) (not setNonEmpty!18732) (not b!2194313) (not d!656455) (not d!656517) (not b!2194206) (not b!2194379) (not b!2194183) (not d!656459) (not bm!131901) (not b!2194381) (not b!2194191) (not d!656501) (not b!2194358) (not b!2194066) (not b!2194067) (not b!2194184) (not b!2194194) (not b!2194360) (not b!2194380) (not b!2194357) (not b!2194354) (not bm!131892) (not b!2194243) (not b!2194093) (not b!2194095) (not d!656447) (not d!656461) (not b!2194187) (not d!656505) (not bm!131896) (not b!2194318) (not d!656519) (not b!2194201) (not d!656509) (not b!2194190) (not b!2194361) (not b!2194142) (not b!2194391) (not b!2194094) (not d!656453) (not b!2194316) (not b!2194365) (not bm!131911) (not d!656457))
(check-sat)

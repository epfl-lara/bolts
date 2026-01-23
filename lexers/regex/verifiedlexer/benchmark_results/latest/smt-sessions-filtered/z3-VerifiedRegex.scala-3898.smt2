; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214402 () Bool)

(assert start!214402)

(declare-fun b!2205184 () Bool)

(declare-fun res!947847 () Bool)

(declare-fun e!1408813 () Bool)

(assert (=> b!2205184 (=> res!947847 e!1408813)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12672 0))(
  ( (C!12673 (val!7322 Int)) )
))
(declare-datatypes ((Regex!6263 0))(
  ( (ElementMatch!6263 (c!352106 C!12672)) (Concat!10565 (regOne!13038 Regex!6263) (regTwo!13038 Regex!6263)) (EmptyExpr!6263) (Star!6263 (reg!6592 Regex!6263)) (EmptyLang!6263) (Union!6263 (regOne!13039 Regex!6263) (regTwo!13039 Regex!6263)) )
))
(declare-datatypes ((List!25828 0))(
  ( (Nil!25744) (Cons!25744 (h!31145 Regex!6263) (t!198472 List!25828)) )
))
(declare-datatypes ((Context!3666 0))(
  ( (Context!3667 (exprs!2333 List!25828)) )
))
(declare-fun lt!824574 () (InoxSet Context!3666))

(declare-datatypes ((List!25829 0))(
  ( (Nil!25745) (Cons!25745 (h!31146 C!12672) (t!198473 List!25829)) )
))
(declare-fun lt!824571 () List!25829)

(declare-fun matchZipper!349 ((InoxSet Context!3666) List!25829) Bool)

(assert (=> b!2205184 (= res!947847 (not (matchZipper!349 lt!824574 lt!824571)))))

(declare-fun b!2205185 () Bool)

(declare-fun res!947845 () Bool)

(declare-fun e!1408818 () Bool)

(assert (=> b!2205185 (=> (not res!947845) (not e!1408818))))

(declare-fun knownSize!10 () Int)

(declare-fun lt!824577 () Int)

(declare-fun from!1082 () Int)

(assert (=> b!2205185 (= res!947845 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!824577))))))

(declare-fun res!947853 () Bool)

(declare-fun e!1408820 () Bool)

(assert (=> start!214402 (=> (not res!947853) (not e!1408820))))

(assert (=> start!214402 (= res!947853 (>= from!1082 0))))

(assert (=> start!214402 e!1408820))

(assert (=> start!214402 true))

(declare-datatypes ((IArray!16803 0))(
  ( (IArray!16804 (innerList!8459 List!25829)) )
))
(declare-datatypes ((Conc!8399 0))(
  ( (Node!8399 (left!19781 Conc!8399) (right!20111 Conc!8399) (csize!17028 Int) (cheight!8610 Int)) (Leaf!12298 (xs!11341 IArray!16803) (csize!17029 Int)) (Empty!8399) )
))
(declare-datatypes ((BalanceConc!16560 0))(
  ( (BalanceConc!16561 (c!352107 Conc!8399)) )
))
(declare-fun totalInput!891 () BalanceConc!16560)

(declare-fun e!1408821 () Bool)

(declare-fun inv!34694 (BalanceConc!16560) Bool)

(assert (=> start!214402 (and (inv!34694 totalInput!891) e!1408821)))

(declare-fun condSetEmpty!19152 () Bool)

(declare-fun z!3888 () (InoxSet Context!3666))

(assert (=> start!214402 (= condSetEmpty!19152 (= z!3888 ((as const (Array Context!3666 Bool)) false)))))

(declare-fun setRes!19152 () Bool)

(assert (=> start!214402 setRes!19152))

(declare-fun setElem!19152 () Context!3666)

(declare-fun tp!685738 () Bool)

(declare-fun e!1408819 () Bool)

(declare-fun setNonEmpty!19152 () Bool)

(declare-fun inv!34695 (Context!3666) Bool)

(assert (=> setNonEmpty!19152 (= setRes!19152 (and tp!685738 (inv!34695 setElem!19152) e!1408819))))

(declare-fun setRest!19152 () (InoxSet Context!3666))

(assert (=> setNonEmpty!19152 (= z!3888 ((_ map or) (store ((as const (Array Context!3666 Bool)) false) setElem!19152 true) setRest!19152))))

(declare-fun b!2205186 () Bool)

(declare-fun e!1408814 () Int)

(assert (=> b!2205186 (= e!1408814 from!1082)))

(declare-fun b!2205187 () Bool)

(declare-fun tp!685739 () Bool)

(assert (=> b!2205187 (= e!1408819 tp!685739)))

(declare-fun b!2205188 () Bool)

(assert (=> b!2205188 (= e!1408818 (not e!1408813))))

(declare-fun res!947849 () Bool)

(assert (=> b!2205188 (=> res!947849 e!1408813)))

(declare-fun lt!824580 () List!25829)

(declare-fun tail!3192 (List!25829) List!25829)

(assert (=> b!2205188 (= res!947849 (not (= lt!824571 (tail!3192 lt!824580))))))

(declare-fun lt!824578 () C!12672)

(declare-fun lt!824570 () List!25829)

(declare-fun take!441 (List!25829 Int) List!25829)

(assert (=> b!2205188 (= (Cons!25745 lt!824578 lt!824571) (take!441 lt!824570 (+ 1 (- knownSize!10 1))))))

(declare-fun lt!824579 () List!25829)

(declare-fun drop!1451 (List!25829 Int) List!25829)

(assert (=> b!2205188 (= lt!824571 (take!441 (drop!1451 lt!824579 (+ 1 from!1082)) (- knownSize!10 1)))))

(declare-fun apply!6344 (List!25829 Int) C!12672)

(assert (=> b!2205188 (= lt!824578 (apply!6344 lt!824579 from!1082))))

(declare-datatypes ((Unit!38833 0))(
  ( (Unit!38834) )
))
(declare-fun lt!824576 () Unit!38833)

(declare-fun lemmaDropTakeAddOneLeft!40 (List!25829 Int Int) Unit!38833)

(assert (=> b!2205188 (= lt!824576 (lemmaDropTakeAddOneLeft!40 lt!824579 from!1082 (- knownSize!10 1)))))

(declare-fun lt!824573 () Int)

(declare-fun lt!824575 () Int)

(declare-fun furthestNullablePosition!401 ((InoxSet Context!3666) Int BalanceConc!16560 Int Int) Int)

(assert (=> b!2205188 (= lt!824573 (furthestNullablePosition!401 lt!824574 (+ 1 from!1082) totalInput!891 lt!824577 lt!824575))))

(assert (=> b!2205188 (= lt!824575 e!1408814)))

(declare-fun c!352105 () Bool)

(declare-fun nullableZipper!543 ((InoxSet Context!3666)) Bool)

(assert (=> b!2205188 (= c!352105 (nullableZipper!543 lt!824574))))

(declare-fun derivationStepZipper!305 ((InoxSet Context!3666) C!12672) (InoxSet Context!3666))

(declare-fun apply!6345 (BalanceConc!16560 Int) C!12672)

(assert (=> b!2205188 (= lt!824574 (derivationStepZipper!305 z!3888 (apply!6345 totalInput!891 from!1082)))))

(declare-fun b!2205189 () Bool)

(declare-fun e!1408816 () Bool)

(assert (=> b!2205189 (= e!1408813 e!1408816)))

(declare-fun res!947850 () Bool)

(assert (=> b!2205189 (=> res!947850 e!1408816)))

(assert (=> b!2205189 (= res!947850 (< lt!824573 (+ (- from!1082 1) knownSize!10)))))

(assert (=> b!2205189 (>= lt!824573 (+ from!1082 (- knownSize!10 1)))))

(declare-fun lt!824572 () Unit!38833)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV3!12 ((InoxSet Context!3666) Int BalanceConc!16560 Int Int) Unit!38833)

(assert (=> b!2205189 (= lt!824572 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV3!12 lt!824574 (+ 1 from!1082) totalInput!891 (- knownSize!10 1) lt!824575))))

(declare-fun b!2205190 () Bool)

(declare-fun e!1408815 () Bool)

(assert (=> b!2205190 (= e!1408815 e!1408818)))

(declare-fun res!947844 () Bool)

(assert (=> b!2205190 (=> (not res!947844) (not e!1408818))))

(assert (=> b!2205190 (= res!947844 (matchZipper!349 z!3888 lt!824580))))

(assert (=> b!2205190 (= lt!824580 (take!441 lt!824570 knownSize!10))))

(assert (=> b!2205190 (= lt!824570 (drop!1451 lt!824579 from!1082))))

(declare-fun list!9943 (BalanceConc!16560) List!25829)

(assert (=> b!2205190 (= lt!824579 (list!9943 totalInput!891))))

(declare-fun lastNullablePos!161 () Int)

(declare-fun b!2205191 () Bool)

(assert (=> b!2205191 (= e!1408816 (= (furthestNullablePosition!401 z!3888 from!1082 totalInput!891 lt!824577 lastNullablePos!161) lt!824573))))

(declare-fun b!2205192 () Bool)

(declare-fun res!947851 () Bool)

(assert (=> b!2205192 (=> (not res!947851) (not e!1408818))))

(declare-fun lostCauseZipper!363 ((InoxSet Context!3666)) Bool)

(assert (=> b!2205192 (= res!947851 (not (lostCauseZipper!363 z!3888)))))

(declare-fun b!2205193 () Bool)

(declare-fun res!947843 () Bool)

(assert (=> b!2205193 (=> (not res!947843) (not e!1408818))))

(declare-fun e!1408817 () Bool)

(assert (=> b!2205193 (= res!947843 e!1408817)))

(declare-fun res!947846 () Bool)

(assert (=> b!2205193 (=> res!947846 e!1408817)))

(assert (=> b!2205193 (= res!947846 (not (nullableZipper!543 z!3888)))))

(declare-fun setIsEmpty!19152 () Bool)

(assert (=> setIsEmpty!19152 setRes!19152))

(declare-fun b!2205194 () Bool)

(assert (=> b!2205194 (= e!1408814 lastNullablePos!161)))

(declare-fun b!2205195 () Bool)

(declare-fun res!947852 () Bool)

(assert (=> b!2205195 (=> (not res!947852) (not e!1408818))))

(assert (=> b!2205195 (= res!947852 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2205196 () Bool)

(assert (=> b!2205196 (= e!1408817 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2205197 () Bool)

(declare-fun res!947842 () Bool)

(assert (=> b!2205197 (=> (not res!947842) (not e!1408818))))

(declare-fun isEmpty!14722 (BalanceConc!16560) Bool)

(assert (=> b!2205197 (= res!947842 (not (isEmpty!14722 totalInput!891)))))

(declare-fun b!2205198 () Bool)

(declare-fun tp!685740 () Bool)

(declare-fun inv!34696 (Conc!8399) Bool)

(assert (=> b!2205198 (= e!1408821 (and (inv!34696 (c!352107 totalInput!891)) tp!685740))))

(declare-fun b!2205199 () Bool)

(assert (=> b!2205199 (= e!1408820 e!1408815)))

(declare-fun res!947848 () Bool)

(assert (=> b!2205199 (=> (not res!947848) (not e!1408815))))

(assert (=> b!2205199 (= res!947848 (and (<= from!1082 lt!824577) (>= knownSize!10 0) (<= knownSize!10 (- lt!824577 from!1082))))))

(declare-fun size!20062 (BalanceConc!16560) Int)

(assert (=> b!2205199 (= lt!824577 (size!20062 totalInput!891))))

(assert (= (and start!214402 res!947853) b!2205199))

(assert (= (and b!2205199 res!947848) b!2205190))

(assert (= (and b!2205190 res!947844) b!2205195))

(assert (= (and b!2205195 res!947852) b!2205193))

(assert (= (and b!2205193 (not res!947846)) b!2205196))

(assert (= (and b!2205193 res!947843) b!2205197))

(assert (= (and b!2205197 res!947842) b!2205185))

(assert (= (and b!2205185 res!947845) b!2205192))

(assert (= (and b!2205192 res!947851) b!2205188))

(assert (= (and b!2205188 c!352105) b!2205186))

(assert (= (and b!2205188 (not c!352105)) b!2205194))

(assert (= (and b!2205188 (not res!947849)) b!2205184))

(assert (= (and b!2205184 (not res!947847)) b!2205189))

(assert (= (and b!2205189 (not res!947850)) b!2205191))

(assert (= start!214402 b!2205198))

(assert (= (and start!214402 condSetEmpty!19152) setIsEmpty!19152))

(assert (= (and start!214402 (not condSetEmpty!19152)) setNonEmpty!19152))

(assert (= setNonEmpty!19152 b!2205187))

(declare-fun m!2647071 () Bool)

(assert (=> b!2205191 m!2647071))

(declare-fun m!2647073 () Bool)

(assert (=> b!2205189 m!2647073))

(declare-fun m!2647075 () Bool)

(assert (=> b!2205198 m!2647075))

(declare-fun m!2647077 () Bool)

(assert (=> b!2205192 m!2647077))

(declare-fun m!2647079 () Bool)

(assert (=> b!2205190 m!2647079))

(declare-fun m!2647081 () Bool)

(assert (=> b!2205190 m!2647081))

(declare-fun m!2647083 () Bool)

(assert (=> b!2205190 m!2647083))

(declare-fun m!2647085 () Bool)

(assert (=> b!2205190 m!2647085))

(declare-fun m!2647087 () Bool)

(assert (=> start!214402 m!2647087))

(declare-fun m!2647089 () Bool)

(assert (=> b!2205188 m!2647089))

(declare-fun m!2647091 () Bool)

(assert (=> b!2205188 m!2647091))

(declare-fun m!2647093 () Bool)

(assert (=> b!2205188 m!2647093))

(declare-fun m!2647095 () Bool)

(assert (=> b!2205188 m!2647095))

(declare-fun m!2647097 () Bool)

(assert (=> b!2205188 m!2647097))

(declare-fun m!2647099 () Bool)

(assert (=> b!2205188 m!2647099))

(declare-fun m!2647101 () Bool)

(assert (=> b!2205188 m!2647101))

(declare-fun m!2647103 () Bool)

(assert (=> b!2205188 m!2647103))

(assert (=> b!2205188 m!2647093))

(declare-fun m!2647105 () Bool)

(assert (=> b!2205188 m!2647105))

(assert (=> b!2205188 m!2647099))

(declare-fun m!2647107 () Bool)

(assert (=> b!2205188 m!2647107))

(declare-fun m!2647109 () Bool)

(assert (=> setNonEmpty!19152 m!2647109))

(declare-fun m!2647111 () Bool)

(assert (=> b!2205184 m!2647111))

(declare-fun m!2647113 () Bool)

(assert (=> b!2205199 m!2647113))

(declare-fun m!2647115 () Bool)

(assert (=> b!2205197 m!2647115))

(declare-fun m!2647117 () Bool)

(assert (=> b!2205193 m!2647117))

(check-sat (not setNonEmpty!19152) (not b!2205188) (not b!2205197) (not b!2205189) (not b!2205187) (not b!2205192) (not b!2205193) (not b!2205199) (not b!2205190) (not b!2205198) (not start!214402) (not b!2205191) (not b!2205184))
(check-sat)
(get-model)

(declare-fun d!659389 () Bool)

(declare-fun lambda!83184 () Int)

(declare-fun forall!5266 (List!25828 Int) Bool)

(assert (=> d!659389 (= (inv!34695 setElem!19152) (forall!5266 (exprs!2333 setElem!19152) lambda!83184))))

(declare-fun bs!450967 () Bool)

(assert (= bs!450967 d!659389))

(declare-fun m!2647119 () Bool)

(assert (=> bs!450967 m!2647119))

(assert (=> setNonEmpty!19152 d!659389))

(declare-fun d!659393 () Bool)

(declare-fun isBalanced!2585 (Conc!8399) Bool)

(assert (=> d!659393 (= (inv!34694 totalInput!891) (isBalanced!2585 (c!352107 totalInput!891)))))

(declare-fun bs!450968 () Bool)

(assert (= bs!450968 d!659393))

(declare-fun m!2647121 () Bool)

(assert (=> bs!450968 m!2647121))

(assert (=> start!214402 d!659393))

(declare-fun d!659395 () Bool)

(declare-fun lt!824583 () Bool)

(declare-fun isEmpty!14723 (List!25829) Bool)

(assert (=> d!659395 (= lt!824583 (isEmpty!14723 (list!9943 totalInput!891)))))

(declare-fun isEmpty!14724 (Conc!8399) Bool)

(assert (=> d!659395 (= lt!824583 (isEmpty!14724 (c!352107 totalInput!891)))))

(assert (=> d!659395 (= (isEmpty!14722 totalInput!891) lt!824583)))

(declare-fun bs!450969 () Bool)

(assert (= bs!450969 d!659395))

(assert (=> bs!450969 m!2647085))

(assert (=> bs!450969 m!2647085))

(declare-fun m!2647123 () Bool)

(assert (=> bs!450969 m!2647123))

(declare-fun m!2647125 () Bool)

(assert (=> bs!450969 m!2647125))

(assert (=> b!2205197 d!659395))

(declare-fun d!659397 () Bool)

(declare-fun c!352110 () Bool)

(get-info :version)

(assert (=> d!659397 (= c!352110 ((_ is Node!8399) (c!352107 totalInput!891)))))

(declare-fun e!1408826 () Bool)

(assert (=> d!659397 (= (inv!34696 (c!352107 totalInput!891)) e!1408826)))

(declare-fun b!2205206 () Bool)

(declare-fun inv!34697 (Conc!8399) Bool)

(assert (=> b!2205206 (= e!1408826 (inv!34697 (c!352107 totalInput!891)))))

(declare-fun b!2205207 () Bool)

(declare-fun e!1408827 () Bool)

(assert (=> b!2205207 (= e!1408826 e!1408827)))

(declare-fun res!947856 () Bool)

(assert (=> b!2205207 (= res!947856 (not ((_ is Leaf!12298) (c!352107 totalInput!891))))))

(assert (=> b!2205207 (=> res!947856 e!1408827)))

(declare-fun b!2205208 () Bool)

(declare-fun inv!34698 (Conc!8399) Bool)

(assert (=> b!2205208 (= e!1408827 (inv!34698 (c!352107 totalInput!891)))))

(assert (= (and d!659397 c!352110) b!2205206))

(assert (= (and d!659397 (not c!352110)) b!2205207))

(assert (= (and b!2205207 (not res!947856)) b!2205208))

(declare-fun m!2647127 () Bool)

(assert (=> b!2205206 m!2647127))

(declare-fun m!2647129 () Bool)

(assert (=> b!2205208 m!2647129))

(assert (=> b!2205198 d!659397))

(declare-fun d!659399 () Bool)

(assert (=> d!659399 true))

(declare-fun lambda!83187 () Int)

(declare-fun flatMap!167 ((InoxSet Context!3666) Int) (InoxSet Context!3666))

(assert (=> d!659399 (= (derivationStepZipper!305 z!3888 (apply!6345 totalInput!891 from!1082)) (flatMap!167 z!3888 lambda!83187))))

(declare-fun bs!450970 () Bool)

(assert (= bs!450970 d!659399))

(declare-fun m!2647131 () Bool)

(assert (=> bs!450970 m!2647131))

(assert (=> b!2205188 d!659399))

(declare-fun b!2205221 () Bool)

(declare-fun e!1408834 () Bool)

(assert (=> b!2205221 (= e!1408834 (lostCauseZipper!363 lt!824574))))

(declare-fun b!2205222 () Bool)

(declare-fun e!1408835 () Int)

(assert (=> b!2205222 (= e!1408835 lt!824575)))

(declare-fun lt!824589 () (InoxSet Context!3666))

(declare-fun e!1408836 () Int)

(declare-fun b!2205223 () Bool)

(assert (=> b!2205223 (= e!1408836 (furthestNullablePosition!401 lt!824589 (+ 1 from!1082 1) totalInput!891 lt!824577 e!1408835))))

(assert (=> b!2205223 (= lt!824589 (derivationStepZipper!305 lt!824574 (apply!6345 totalInput!891 (+ 1 from!1082))))))

(declare-fun c!352118 () Bool)

(assert (=> b!2205223 (= c!352118 (nullableZipper!543 lt!824589))))

(declare-fun d!659401 () Bool)

(declare-fun lt!824588 () Int)

(assert (=> d!659401 (and (>= lt!824588 (- 1)) (< lt!824588 lt!824577) (>= lt!824588 lt!824575) (or (= lt!824588 lt!824575) (>= lt!824588 (+ 1 from!1082))))))

(assert (=> d!659401 (= lt!824588 e!1408836)))

(declare-fun c!352117 () Bool)

(assert (=> d!659401 (= c!352117 e!1408834)))

(declare-fun res!947859 () Bool)

(assert (=> d!659401 (=> res!947859 e!1408834)))

(assert (=> d!659401 (= res!947859 (= (+ 1 from!1082) lt!824577))))

(assert (=> d!659401 (and (>= (+ 1 from!1082) 0) (<= (+ 1 from!1082) lt!824577))))

(assert (=> d!659401 (= (furthestNullablePosition!401 lt!824574 (+ 1 from!1082) totalInput!891 lt!824577 lt!824575) lt!824588)))

(declare-fun b!2205224 () Bool)

(assert (=> b!2205224 (= e!1408835 (+ 1 from!1082))))

(declare-fun b!2205225 () Bool)

(assert (=> b!2205225 (= e!1408836 lt!824575)))

(assert (= (and d!659401 (not res!947859)) b!2205221))

(assert (= (and d!659401 c!352117) b!2205225))

(assert (= (and d!659401 (not c!352117)) b!2205223))

(assert (= (and b!2205223 c!352118) b!2205224))

(assert (= (and b!2205223 (not c!352118)) b!2205222))

(declare-fun m!2647133 () Bool)

(assert (=> b!2205221 m!2647133))

(declare-fun m!2647135 () Bool)

(assert (=> b!2205223 m!2647135))

(declare-fun m!2647137 () Bool)

(assert (=> b!2205223 m!2647137))

(assert (=> b!2205223 m!2647137))

(declare-fun m!2647139 () Bool)

(assert (=> b!2205223 m!2647139))

(declare-fun m!2647141 () Bool)

(assert (=> b!2205223 m!2647141))

(assert (=> b!2205188 d!659401))

(declare-fun d!659403 () Bool)

(declare-fun lt!824592 () C!12672)

(declare-fun contains!4289 (List!25829 C!12672) Bool)

(assert (=> d!659403 (contains!4289 lt!824579 lt!824592)))

(declare-fun e!1408841 () C!12672)

(assert (=> d!659403 (= lt!824592 e!1408841)))

(declare-fun c!352121 () Bool)

(assert (=> d!659403 (= c!352121 (= from!1082 0))))

(declare-fun e!1408842 () Bool)

(assert (=> d!659403 e!1408842))

(declare-fun res!947862 () Bool)

(assert (=> d!659403 (=> (not res!947862) (not e!1408842))))

(assert (=> d!659403 (= res!947862 (<= 0 from!1082))))

(assert (=> d!659403 (= (apply!6344 lt!824579 from!1082) lt!824592)))

(declare-fun b!2205232 () Bool)

(declare-fun size!20063 (List!25829) Int)

(assert (=> b!2205232 (= e!1408842 (< from!1082 (size!20063 lt!824579)))))

(declare-fun b!2205233 () Bool)

(declare-fun head!4711 (List!25829) C!12672)

(assert (=> b!2205233 (= e!1408841 (head!4711 lt!824579))))

(declare-fun b!2205234 () Bool)

(assert (=> b!2205234 (= e!1408841 (apply!6344 (tail!3192 lt!824579) (- from!1082 1)))))

(assert (= (and d!659403 res!947862) b!2205232))

(assert (= (and d!659403 c!352121) b!2205233))

(assert (= (and d!659403 (not c!352121)) b!2205234))

(declare-fun m!2647143 () Bool)

(assert (=> d!659403 m!2647143))

(declare-fun m!2647145 () Bool)

(assert (=> b!2205232 m!2647145))

(declare-fun m!2647147 () Bool)

(assert (=> b!2205233 m!2647147))

(declare-fun m!2647149 () Bool)

(assert (=> b!2205234 m!2647149))

(assert (=> b!2205234 m!2647149))

(declare-fun m!2647151 () Bool)

(assert (=> b!2205234 m!2647151))

(assert (=> b!2205188 d!659403))

(declare-fun d!659405 () Bool)

(declare-fun lambda!83190 () Int)

(declare-fun exists!853 ((InoxSet Context!3666) Int) Bool)

(assert (=> d!659405 (= (nullableZipper!543 lt!824574) (exists!853 lt!824574 lambda!83190))))

(declare-fun bs!450971 () Bool)

(assert (= bs!450971 d!659405))

(declare-fun m!2647153 () Bool)

(assert (=> bs!450971 m!2647153))

(assert (=> b!2205188 d!659405))

(declare-fun b!2205253 () Bool)

(declare-fun e!1408855 () List!25829)

(declare-fun e!1408853 () List!25829)

(assert (=> b!2205253 (= e!1408855 e!1408853)))

(declare-fun c!352135 () Bool)

(assert (=> b!2205253 (= c!352135 (<= (+ 1 from!1082) 0))))

(declare-fun b!2205254 () Bool)

(declare-fun e!1408856 () Int)

(declare-fun call!132227 () Int)

(assert (=> b!2205254 (= e!1408856 (- call!132227 (+ 1 from!1082)))))

(declare-fun b!2205255 () Bool)

(assert (=> b!2205255 (= e!1408855 Nil!25745)))

(declare-fun b!2205256 () Bool)

(assert (=> b!2205256 (= e!1408856 0)))

(declare-fun bm!132222 () Bool)

(assert (=> bm!132222 (= call!132227 (size!20063 lt!824579))))

(declare-fun b!2205257 () Bool)

(declare-fun e!1408857 () Int)

(assert (=> b!2205257 (= e!1408857 call!132227)))

(declare-fun b!2205258 () Bool)

(assert (=> b!2205258 (= e!1408857 e!1408856)))

(declare-fun c!352133 () Bool)

(assert (=> b!2205258 (= c!352133 (>= (+ 1 from!1082) call!132227))))

(declare-fun b!2205260 () Bool)

(declare-fun e!1408854 () Bool)

(declare-fun lt!824595 () List!25829)

(assert (=> b!2205260 (= e!1408854 (= (size!20063 lt!824595) e!1408857))))

(declare-fun c!352134 () Bool)

(assert (=> b!2205260 (= c!352134 (<= (+ 1 from!1082) 0))))

(declare-fun b!2205261 () Bool)

(assert (=> b!2205261 (= e!1408853 lt!824579)))

(declare-fun d!659407 () Bool)

(assert (=> d!659407 e!1408854))

(declare-fun res!947865 () Bool)

(assert (=> d!659407 (=> (not res!947865) (not e!1408854))))

(declare-fun content!3498 (List!25829) (InoxSet C!12672))

(assert (=> d!659407 (= res!947865 (= ((_ map implies) (content!3498 lt!824595) (content!3498 lt!824579)) ((as const (InoxSet C!12672)) true)))))

(assert (=> d!659407 (= lt!824595 e!1408855)))

(declare-fun c!352132 () Bool)

(assert (=> d!659407 (= c!352132 ((_ is Nil!25745) lt!824579))))

(assert (=> d!659407 (= (drop!1451 lt!824579 (+ 1 from!1082)) lt!824595)))

(declare-fun b!2205259 () Bool)

(assert (=> b!2205259 (= e!1408853 (drop!1451 (t!198473 lt!824579) (- (+ 1 from!1082) 1)))))

(assert (= (and d!659407 c!352132) b!2205255))

(assert (= (and d!659407 (not c!352132)) b!2205253))

(assert (= (and b!2205253 c!352135) b!2205261))

(assert (= (and b!2205253 (not c!352135)) b!2205259))

(assert (= (and d!659407 res!947865) b!2205260))

(assert (= (and b!2205260 c!352134) b!2205257))

(assert (= (and b!2205260 (not c!352134)) b!2205258))

(assert (= (and b!2205258 c!352133) b!2205256))

(assert (= (and b!2205258 (not c!352133)) b!2205254))

(assert (= (or b!2205257 b!2205258 b!2205254) bm!132222))

(assert (=> bm!132222 m!2647145))

(declare-fun m!2647155 () Bool)

(assert (=> b!2205260 m!2647155))

(declare-fun m!2647157 () Bool)

(assert (=> d!659407 m!2647157))

(declare-fun m!2647159 () Bool)

(assert (=> d!659407 m!2647159))

(declare-fun m!2647161 () Bool)

(assert (=> b!2205259 m!2647161))

(assert (=> b!2205188 d!659407))

(declare-fun d!659409 () Bool)

(assert (=> d!659409 (= (tail!3192 lt!824580) (t!198473 lt!824580))))

(assert (=> b!2205188 d!659409))

(declare-fun d!659411 () Bool)

(declare-fun lt!824598 () C!12672)

(assert (=> d!659411 (= lt!824598 (apply!6344 (list!9943 totalInput!891) from!1082))))

(declare-fun apply!6346 (Conc!8399 Int) C!12672)

(assert (=> d!659411 (= lt!824598 (apply!6346 (c!352107 totalInput!891) from!1082))))

(declare-fun e!1408860 () Bool)

(assert (=> d!659411 e!1408860))

(declare-fun res!947868 () Bool)

(assert (=> d!659411 (=> (not res!947868) (not e!1408860))))

(assert (=> d!659411 (= res!947868 (<= 0 from!1082))))

(assert (=> d!659411 (= (apply!6345 totalInput!891 from!1082) lt!824598)))

(declare-fun b!2205264 () Bool)

(assert (=> b!2205264 (= e!1408860 (< from!1082 (size!20062 totalInput!891)))))

(assert (= (and d!659411 res!947868) b!2205264))

(assert (=> d!659411 m!2647085))

(assert (=> d!659411 m!2647085))

(declare-fun m!2647163 () Bool)

(assert (=> d!659411 m!2647163))

(declare-fun m!2647165 () Bool)

(assert (=> d!659411 m!2647165))

(assert (=> b!2205264 m!2647113))

(assert (=> b!2205188 d!659411))

(declare-fun b!2205279 () Bool)

(declare-fun e!1408869 () Int)

(assert (=> b!2205279 (= e!1408869 0)))

(declare-fun b!2205280 () Bool)

(declare-fun e!1408872 () Bool)

(declare-fun lt!824601 () List!25829)

(assert (=> b!2205280 (= e!1408872 (= (size!20063 lt!824601) e!1408869))))

(declare-fun c!352144 () Bool)

(assert (=> b!2205280 (= c!352144 (<= (- knownSize!10 1) 0))))

(declare-fun b!2205281 () Bool)

(declare-fun e!1408871 () List!25829)

(assert (=> b!2205281 (= e!1408871 Nil!25745)))

(declare-fun d!659413 () Bool)

(assert (=> d!659413 e!1408872))

(declare-fun res!947871 () Bool)

(assert (=> d!659413 (=> (not res!947871) (not e!1408872))))

(assert (=> d!659413 (= res!947871 (= ((_ map implies) (content!3498 lt!824601) (content!3498 (drop!1451 lt!824579 (+ 1 from!1082)))) ((as const (InoxSet C!12672)) true)))))

(assert (=> d!659413 (= lt!824601 e!1408871)))

(declare-fun c!352142 () Bool)

(assert (=> d!659413 (= c!352142 (or ((_ is Nil!25745) (drop!1451 lt!824579 (+ 1 from!1082))) (<= (- knownSize!10 1) 0)))))

(assert (=> d!659413 (= (take!441 (drop!1451 lt!824579 (+ 1 from!1082)) (- knownSize!10 1)) lt!824601)))

(declare-fun b!2205282 () Bool)

(assert (=> b!2205282 (= e!1408871 (Cons!25745 (h!31146 (drop!1451 lt!824579 (+ 1 from!1082))) (take!441 (t!198473 (drop!1451 lt!824579 (+ 1 from!1082))) (- (- knownSize!10 1) 1))))))

(declare-fun b!2205283 () Bool)

(declare-fun e!1408870 () Int)

(assert (=> b!2205283 (= e!1408869 e!1408870)))

(declare-fun c!352143 () Bool)

(assert (=> b!2205283 (= c!352143 (>= (- knownSize!10 1) (size!20063 (drop!1451 lt!824579 (+ 1 from!1082)))))))

(declare-fun b!2205284 () Bool)

(assert (=> b!2205284 (= e!1408870 (- knownSize!10 1))))

(declare-fun b!2205285 () Bool)

(assert (=> b!2205285 (= e!1408870 (size!20063 (drop!1451 lt!824579 (+ 1 from!1082))))))

(assert (= (and d!659413 c!352142) b!2205281))

(assert (= (and d!659413 (not c!352142)) b!2205282))

(assert (= (and d!659413 res!947871) b!2205280))

(assert (= (and b!2205280 c!352144) b!2205279))

(assert (= (and b!2205280 (not c!352144)) b!2205283))

(assert (= (and b!2205283 c!352143) b!2205285))

(assert (= (and b!2205283 (not c!352143)) b!2205284))

(declare-fun m!2647167 () Bool)

(assert (=> d!659413 m!2647167))

(assert (=> d!659413 m!2647093))

(declare-fun m!2647169 () Bool)

(assert (=> d!659413 m!2647169))

(assert (=> b!2205283 m!2647093))

(declare-fun m!2647171 () Bool)

(assert (=> b!2205283 m!2647171))

(declare-fun m!2647173 () Bool)

(assert (=> b!2205282 m!2647173))

(assert (=> b!2205285 m!2647093))

(assert (=> b!2205285 m!2647171))

(declare-fun m!2647175 () Bool)

(assert (=> b!2205280 m!2647175))

(assert (=> b!2205188 d!659413))

(declare-fun d!659415 () Bool)

(assert (=> d!659415 (= (Cons!25745 (apply!6344 lt!824579 from!1082) (take!441 (drop!1451 lt!824579 (+ from!1082 1)) (- knownSize!10 1))) (take!441 (drop!1451 lt!824579 from!1082) (+ (- knownSize!10 1) 1)))))

(declare-fun lt!824604 () Unit!38833)

(declare-fun choose!13036 (List!25829 Int Int) Unit!38833)

(assert (=> d!659415 (= lt!824604 (choose!13036 lt!824579 from!1082 (- knownSize!10 1)))))

(declare-fun e!1408875 () Bool)

(assert (=> d!659415 e!1408875))

(declare-fun res!947874 () Bool)

(assert (=> d!659415 (=> (not res!947874) (not e!1408875))))

(assert (=> d!659415 (= res!947874 (>= from!1082 0))))

(assert (=> d!659415 (= (lemmaDropTakeAddOneLeft!40 lt!824579 from!1082 (- knownSize!10 1)) lt!824604)))

(declare-fun b!2205288 () Bool)

(assert (=> b!2205288 (= e!1408875 (< from!1082 (size!20063 lt!824579)))))

(assert (= (and d!659415 res!947874) b!2205288))

(assert (=> d!659415 m!2647097))

(declare-fun m!2647177 () Bool)

(assert (=> d!659415 m!2647177))

(assert (=> d!659415 m!2647083))

(declare-fun m!2647179 () Bool)

(assert (=> d!659415 m!2647179))

(declare-fun m!2647181 () Bool)

(assert (=> d!659415 m!2647181))

(assert (=> d!659415 m!2647177))

(declare-fun m!2647183 () Bool)

(assert (=> d!659415 m!2647183))

(assert (=> d!659415 m!2647083))

(assert (=> b!2205288 m!2647145))

(assert (=> b!2205188 d!659415))

(declare-fun b!2205289 () Bool)

(declare-fun e!1408876 () Int)

(assert (=> b!2205289 (= e!1408876 0)))

(declare-fun b!2205290 () Bool)

(declare-fun e!1408879 () Bool)

(declare-fun lt!824605 () List!25829)

(assert (=> b!2205290 (= e!1408879 (= (size!20063 lt!824605) e!1408876))))

(declare-fun c!352147 () Bool)

(assert (=> b!2205290 (= c!352147 (<= (+ 1 (- knownSize!10 1)) 0))))

(declare-fun b!2205291 () Bool)

(declare-fun e!1408878 () List!25829)

(assert (=> b!2205291 (= e!1408878 Nil!25745)))

(declare-fun d!659417 () Bool)

(assert (=> d!659417 e!1408879))

(declare-fun res!947875 () Bool)

(assert (=> d!659417 (=> (not res!947875) (not e!1408879))))

(assert (=> d!659417 (= res!947875 (= ((_ map implies) (content!3498 lt!824605) (content!3498 lt!824570)) ((as const (InoxSet C!12672)) true)))))

(assert (=> d!659417 (= lt!824605 e!1408878)))

(declare-fun c!352145 () Bool)

(assert (=> d!659417 (= c!352145 (or ((_ is Nil!25745) lt!824570) (<= (+ 1 (- knownSize!10 1)) 0)))))

(assert (=> d!659417 (= (take!441 lt!824570 (+ 1 (- knownSize!10 1))) lt!824605)))

(declare-fun b!2205292 () Bool)

(assert (=> b!2205292 (= e!1408878 (Cons!25745 (h!31146 lt!824570) (take!441 (t!198473 lt!824570) (- (+ 1 (- knownSize!10 1)) 1))))))

(declare-fun b!2205293 () Bool)

(declare-fun e!1408877 () Int)

(assert (=> b!2205293 (= e!1408876 e!1408877)))

(declare-fun c!352146 () Bool)

(assert (=> b!2205293 (= c!352146 (>= (+ 1 (- knownSize!10 1)) (size!20063 lt!824570)))))

(declare-fun b!2205294 () Bool)

(assert (=> b!2205294 (= e!1408877 (+ 1 (- knownSize!10 1)))))

(declare-fun b!2205295 () Bool)

(assert (=> b!2205295 (= e!1408877 (size!20063 lt!824570))))

(assert (= (and d!659417 c!352145) b!2205291))

(assert (= (and d!659417 (not c!352145)) b!2205292))

(assert (= (and d!659417 res!947875) b!2205290))

(assert (= (and b!2205290 c!352147) b!2205289))

(assert (= (and b!2205290 (not c!352147)) b!2205293))

(assert (= (and b!2205293 c!352146) b!2205295))

(assert (= (and b!2205293 (not c!352146)) b!2205294))

(declare-fun m!2647185 () Bool)

(assert (=> d!659417 m!2647185))

(declare-fun m!2647187 () Bool)

(assert (=> d!659417 m!2647187))

(declare-fun m!2647189 () Bool)

(assert (=> b!2205293 m!2647189))

(declare-fun m!2647191 () Bool)

(assert (=> b!2205292 m!2647191))

(assert (=> b!2205295 m!2647189))

(declare-fun m!2647193 () Bool)

(assert (=> b!2205290 m!2647193))

(assert (=> b!2205188 d!659417))

(declare-fun d!659419 () Bool)

(declare-fun e!1408885 () Bool)

(assert (=> d!659419 e!1408885))

(declare-fun res!947880 () Bool)

(assert (=> d!659419 (=> res!947880 e!1408885)))

(assert (=> d!659419 (= res!947880 (isEmpty!14722 totalInput!891))))

(declare-fun lt!824608 () Unit!38833)

(declare-fun choose!13037 ((InoxSet Context!3666) Int BalanceConc!16560 Int Int) Unit!38833)

(assert (=> d!659419 (= lt!824608 (choose!13037 lt!824574 (+ 1 from!1082) totalInput!891 (- knownSize!10 1) lt!824575))))

(declare-fun e!1408884 () Bool)

(assert (=> d!659419 e!1408884))

(declare-fun res!947881 () Bool)

(assert (=> d!659419 (=> (not res!947881) (not e!1408884))))

(assert (=> d!659419 (= res!947881 (>= (+ 1 from!1082) 0))))

(assert (=> d!659419 (= (lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV3!12 lt!824574 (+ 1 from!1082) totalInput!891 (- knownSize!10 1) lt!824575) lt!824608)))

(declare-fun b!2205300 () Bool)

(assert (=> b!2205300 (= e!1408884 (<= (+ 1 from!1082) (size!20062 totalInput!891)))))

(declare-fun b!2205301 () Bool)

(assert (=> b!2205301 (= e!1408885 (>= (furthestNullablePosition!401 lt!824574 (+ 1 from!1082) totalInput!891 (size!20062 totalInput!891) lt!824575) (+ (- (+ 1 from!1082) 1) (- knownSize!10 1))))))

(assert (= (and d!659419 res!947881) b!2205300))

(assert (= (and d!659419 (not res!947880)) b!2205301))

(assert (=> d!659419 m!2647115))

(declare-fun m!2647195 () Bool)

(assert (=> d!659419 m!2647195))

(assert (=> b!2205300 m!2647113))

(assert (=> b!2205301 m!2647113))

(assert (=> b!2205301 m!2647113))

(declare-fun m!2647197 () Bool)

(assert (=> b!2205301 m!2647197))

(assert (=> b!2205189 d!659419))

(declare-fun d!659421 () Bool)

(declare-fun lt!824611 () Int)

(assert (=> d!659421 (= lt!824611 (size!20063 (list!9943 totalInput!891)))))

(declare-fun size!20064 (Conc!8399) Int)

(assert (=> d!659421 (= lt!824611 (size!20064 (c!352107 totalInput!891)))))

(assert (=> d!659421 (= (size!20062 totalInput!891) lt!824611)))

(declare-fun bs!450972 () Bool)

(assert (= bs!450972 d!659421))

(assert (=> bs!450972 m!2647085))

(assert (=> bs!450972 m!2647085))

(declare-fun m!2647199 () Bool)

(assert (=> bs!450972 m!2647199))

(declare-fun m!2647201 () Bool)

(assert (=> bs!450972 m!2647201))

(assert (=> b!2205199 d!659421))

(declare-fun d!659423 () Bool)

(declare-fun c!352150 () Bool)

(assert (=> d!659423 (= c!352150 (isEmpty!14723 lt!824580))))

(declare-fun e!1408888 () Bool)

(assert (=> d!659423 (= (matchZipper!349 z!3888 lt!824580) e!1408888)))

(declare-fun b!2205306 () Bool)

(assert (=> b!2205306 (= e!1408888 (nullableZipper!543 z!3888))))

(declare-fun b!2205307 () Bool)

(assert (=> b!2205307 (= e!1408888 (matchZipper!349 (derivationStepZipper!305 z!3888 (head!4711 lt!824580)) (tail!3192 lt!824580)))))

(assert (= (and d!659423 c!352150) b!2205306))

(assert (= (and d!659423 (not c!352150)) b!2205307))

(declare-fun m!2647205 () Bool)

(assert (=> d!659423 m!2647205))

(assert (=> b!2205306 m!2647117))

(declare-fun m!2647207 () Bool)

(assert (=> b!2205307 m!2647207))

(assert (=> b!2205307 m!2647207))

(declare-fun m!2647209 () Bool)

(assert (=> b!2205307 m!2647209))

(assert (=> b!2205307 m!2647107))

(assert (=> b!2205307 m!2647209))

(assert (=> b!2205307 m!2647107))

(declare-fun m!2647211 () Bool)

(assert (=> b!2205307 m!2647211))

(assert (=> b!2205190 d!659423))

(declare-fun b!2205308 () Bool)

(declare-fun e!1408889 () Int)

(assert (=> b!2205308 (= e!1408889 0)))

(declare-fun b!2205309 () Bool)

(declare-fun e!1408892 () Bool)

(declare-fun lt!824612 () List!25829)

(assert (=> b!2205309 (= e!1408892 (= (size!20063 lt!824612) e!1408889))))

(declare-fun c!352153 () Bool)

(assert (=> b!2205309 (= c!352153 (<= knownSize!10 0))))

(declare-fun b!2205310 () Bool)

(declare-fun e!1408891 () List!25829)

(assert (=> b!2205310 (= e!1408891 Nil!25745)))

(declare-fun d!659427 () Bool)

(assert (=> d!659427 e!1408892))

(declare-fun res!947882 () Bool)

(assert (=> d!659427 (=> (not res!947882) (not e!1408892))))

(assert (=> d!659427 (= res!947882 (= ((_ map implies) (content!3498 lt!824612) (content!3498 lt!824570)) ((as const (InoxSet C!12672)) true)))))

(assert (=> d!659427 (= lt!824612 e!1408891)))

(declare-fun c!352151 () Bool)

(assert (=> d!659427 (= c!352151 (or ((_ is Nil!25745) lt!824570) (<= knownSize!10 0)))))

(assert (=> d!659427 (= (take!441 lt!824570 knownSize!10) lt!824612)))

(declare-fun b!2205311 () Bool)

(assert (=> b!2205311 (= e!1408891 (Cons!25745 (h!31146 lt!824570) (take!441 (t!198473 lt!824570) (- knownSize!10 1))))))

(declare-fun b!2205312 () Bool)

(declare-fun e!1408890 () Int)

(assert (=> b!2205312 (= e!1408889 e!1408890)))

(declare-fun c!352152 () Bool)

(assert (=> b!2205312 (= c!352152 (>= knownSize!10 (size!20063 lt!824570)))))

(declare-fun b!2205313 () Bool)

(assert (=> b!2205313 (= e!1408890 knownSize!10)))

(declare-fun b!2205314 () Bool)

(assert (=> b!2205314 (= e!1408890 (size!20063 lt!824570))))

(assert (= (and d!659427 c!352151) b!2205310))

(assert (= (and d!659427 (not c!352151)) b!2205311))

(assert (= (and d!659427 res!947882) b!2205309))

(assert (= (and b!2205309 c!352153) b!2205308))

(assert (= (and b!2205309 (not c!352153)) b!2205312))

(assert (= (and b!2205312 c!352152) b!2205314))

(assert (= (and b!2205312 (not c!352152)) b!2205313))

(declare-fun m!2647213 () Bool)

(assert (=> d!659427 m!2647213))

(assert (=> d!659427 m!2647187))

(assert (=> b!2205312 m!2647189))

(declare-fun m!2647215 () Bool)

(assert (=> b!2205311 m!2647215))

(assert (=> b!2205314 m!2647189))

(declare-fun m!2647217 () Bool)

(assert (=> b!2205309 m!2647217))

(assert (=> b!2205190 d!659427))

(declare-fun b!2205321 () Bool)

(declare-fun e!1408899 () List!25829)

(declare-fun e!1408897 () List!25829)

(assert (=> b!2205321 (= e!1408899 e!1408897)))

(declare-fun c!352159 () Bool)

(assert (=> b!2205321 (= c!352159 (<= from!1082 0))))

(declare-fun b!2205322 () Bool)

(declare-fun e!1408900 () Int)

(declare-fun call!132228 () Int)

(assert (=> b!2205322 (= e!1408900 (- call!132228 from!1082))))

(declare-fun b!2205323 () Bool)

(assert (=> b!2205323 (= e!1408899 Nil!25745)))

(declare-fun b!2205324 () Bool)

(assert (=> b!2205324 (= e!1408900 0)))

(declare-fun bm!132223 () Bool)

(assert (=> bm!132223 (= call!132228 (size!20063 lt!824579))))

(declare-fun b!2205325 () Bool)

(declare-fun e!1408901 () Int)

(assert (=> b!2205325 (= e!1408901 call!132228)))

(declare-fun b!2205326 () Bool)

(assert (=> b!2205326 (= e!1408901 e!1408900)))

(declare-fun c!352157 () Bool)

(assert (=> b!2205326 (= c!352157 (>= from!1082 call!132228))))

(declare-fun b!2205328 () Bool)

(declare-fun e!1408898 () Bool)

(declare-fun lt!824613 () List!25829)

(assert (=> b!2205328 (= e!1408898 (= (size!20063 lt!824613) e!1408901))))

(declare-fun c!352158 () Bool)

(assert (=> b!2205328 (= c!352158 (<= from!1082 0))))

(declare-fun b!2205329 () Bool)

(assert (=> b!2205329 (= e!1408897 lt!824579)))

(declare-fun d!659429 () Bool)

(assert (=> d!659429 e!1408898))

(declare-fun res!947885 () Bool)

(assert (=> d!659429 (=> (not res!947885) (not e!1408898))))

(assert (=> d!659429 (= res!947885 (= ((_ map implies) (content!3498 lt!824613) (content!3498 lt!824579)) ((as const (InoxSet C!12672)) true)))))

(assert (=> d!659429 (= lt!824613 e!1408899)))

(declare-fun c!352156 () Bool)

(assert (=> d!659429 (= c!352156 ((_ is Nil!25745) lt!824579))))

(assert (=> d!659429 (= (drop!1451 lt!824579 from!1082) lt!824613)))

(declare-fun b!2205327 () Bool)

(assert (=> b!2205327 (= e!1408897 (drop!1451 (t!198473 lt!824579) (- from!1082 1)))))

(assert (= (and d!659429 c!352156) b!2205323))

(assert (= (and d!659429 (not c!352156)) b!2205321))

(assert (= (and b!2205321 c!352159) b!2205329))

(assert (= (and b!2205321 (not c!352159)) b!2205327))

(assert (= (and d!659429 res!947885) b!2205328))

(assert (= (and b!2205328 c!352158) b!2205325))

(assert (= (and b!2205328 (not c!352158)) b!2205326))

(assert (= (and b!2205326 c!352157) b!2205324))

(assert (= (and b!2205326 (not c!352157)) b!2205322))

(assert (= (or b!2205325 b!2205326 b!2205322) bm!132223))

(assert (=> bm!132223 m!2647145))

(declare-fun m!2647219 () Bool)

(assert (=> b!2205328 m!2647219))

(declare-fun m!2647221 () Bool)

(assert (=> d!659429 m!2647221))

(assert (=> d!659429 m!2647159))

(declare-fun m!2647223 () Bool)

(assert (=> b!2205327 m!2647223))

(assert (=> b!2205190 d!659429))

(declare-fun d!659431 () Bool)

(declare-fun list!9944 (Conc!8399) List!25829)

(assert (=> d!659431 (= (list!9943 totalInput!891) (list!9944 (c!352107 totalInput!891)))))

(declare-fun bs!450974 () Bool)

(assert (= bs!450974 d!659431))

(declare-fun m!2647229 () Bool)

(assert (=> bs!450974 m!2647229))

(assert (=> b!2205190 d!659431))

(declare-fun b!2205333 () Bool)

(declare-fun e!1408904 () Bool)

(assert (=> b!2205333 (= e!1408904 (lostCauseZipper!363 z!3888))))

(declare-fun b!2205334 () Bool)

(declare-fun e!1408905 () Int)

(assert (=> b!2205334 (= e!1408905 lastNullablePos!161)))

(declare-fun lt!824615 () (InoxSet Context!3666))

(declare-fun e!1408906 () Int)

(declare-fun b!2205335 () Bool)

(assert (=> b!2205335 (= e!1408906 (furthestNullablePosition!401 lt!824615 (+ from!1082 1) totalInput!891 lt!824577 e!1408905))))

(assert (=> b!2205335 (= lt!824615 (derivationStepZipper!305 z!3888 (apply!6345 totalInput!891 from!1082)))))

(declare-fun c!352162 () Bool)

(assert (=> b!2205335 (= c!352162 (nullableZipper!543 lt!824615))))

(declare-fun lt!824614 () Int)

(declare-fun d!659435 () Bool)

(assert (=> d!659435 (and (>= lt!824614 (- 1)) (< lt!824614 lt!824577) (>= lt!824614 lastNullablePos!161) (or (= lt!824614 lastNullablePos!161) (>= lt!824614 from!1082)))))

(assert (=> d!659435 (= lt!824614 e!1408906)))

(declare-fun c!352161 () Bool)

(assert (=> d!659435 (= c!352161 e!1408904)))

(declare-fun res!947887 () Bool)

(assert (=> d!659435 (=> res!947887 e!1408904)))

(assert (=> d!659435 (= res!947887 (= from!1082 lt!824577))))

(assert (=> d!659435 (and (>= from!1082 0) (<= from!1082 lt!824577))))

(assert (=> d!659435 (= (furthestNullablePosition!401 z!3888 from!1082 totalInput!891 lt!824577 lastNullablePos!161) lt!824614)))

(declare-fun b!2205336 () Bool)

(assert (=> b!2205336 (= e!1408905 from!1082)))

(declare-fun b!2205337 () Bool)

(assert (=> b!2205337 (= e!1408906 lastNullablePos!161)))

(assert (= (and d!659435 (not res!947887)) b!2205333))

(assert (= (and d!659435 c!352161) b!2205337))

(assert (= (and d!659435 (not c!352161)) b!2205335))

(assert (= (and b!2205335 c!352162) b!2205336))

(assert (= (and b!2205335 (not c!352162)) b!2205334))

(assert (=> b!2205333 m!2647077))

(declare-fun m!2647231 () Bool)

(assert (=> b!2205335 m!2647231))

(assert (=> b!2205335 m!2647099))

(assert (=> b!2205335 m!2647099))

(assert (=> b!2205335 m!2647101))

(declare-fun m!2647233 () Bool)

(assert (=> b!2205335 m!2647233))

(assert (=> b!2205191 d!659435))

(declare-fun bs!450976 () Bool)

(declare-fun d!659437 () Bool)

(assert (= bs!450976 (and d!659437 d!659405)))

(declare-fun lambda!83218 () Int)

(assert (=> bs!450976 (not (= lambda!83218 lambda!83190))))

(declare-fun bs!450977 () Bool)

(declare-fun b!2205346 () Bool)

(assert (= bs!450977 (and b!2205346 d!659405)))

(declare-fun lambda!83219 () Int)

(assert (=> bs!450977 (not (= lambda!83219 lambda!83190))))

(declare-fun bs!450978 () Bool)

(assert (= bs!450978 (and b!2205346 d!659437)))

(assert (=> bs!450978 (not (= lambda!83219 lambda!83218))))

(declare-fun bs!450979 () Bool)

(declare-fun b!2205347 () Bool)

(assert (= bs!450979 (and b!2205347 d!659405)))

(declare-fun lambda!83220 () Int)

(assert (=> bs!450979 (not (= lambda!83220 lambda!83190))))

(declare-fun bs!450980 () Bool)

(assert (= bs!450980 (and b!2205347 d!659437)))

(assert (=> bs!450980 (not (= lambda!83220 lambda!83218))))

(declare-fun bs!450981 () Bool)

(assert (= bs!450981 (and b!2205347 b!2205346)))

(assert (=> bs!450981 (= lambda!83220 lambda!83219)))

(declare-fun e!1408919 () Unit!38833)

(declare-fun Unit!38837 () Unit!38833)

(assert (=> b!2205346 (= e!1408919 Unit!38837)))

(declare-datatypes ((List!25831 0))(
  ( (Nil!25747) (Cons!25747 (h!31148 Context!3666) (t!198475 List!25831)) )
))
(declare-fun lt!824651 () List!25831)

(declare-fun call!132237 () List!25831)

(assert (=> b!2205346 (= lt!824651 call!132237)))

(declare-fun lt!824655 () Unit!38833)

(declare-fun lemmaNotForallThenExists!60 (List!25831 Int) Unit!38833)

(assert (=> b!2205346 (= lt!824655 (lemmaNotForallThenExists!60 lt!824651 lambda!83218))))

(declare-fun call!132238 () Bool)

(assert (=> b!2205346 call!132238))

(declare-fun lt!824654 () Unit!38833)

(assert (=> b!2205346 (= lt!824654 lt!824655)))

(declare-fun lt!824652 () Bool)

(declare-datatypes ((Option!5035 0))(
  ( (None!5034) (Some!5034 (v!29433 List!25829)) )
))
(declare-fun isEmpty!14726 (Option!5035) Bool)

(declare-fun getLanguageWitness!159 ((InoxSet Context!3666)) Option!5035)

(assert (=> d!659437 (= lt!824652 (isEmpty!14726 (getLanguageWitness!159 z!3888)))))

(declare-fun forall!5269 ((InoxSet Context!3666) Int) Bool)

(assert (=> d!659437 (= lt!824652 (forall!5269 z!3888 lambda!83218))))

(declare-fun lt!824649 () Unit!38833)

(assert (=> d!659437 (= lt!824649 e!1408919)))

(declare-fun c!352183 () Bool)

(assert (=> d!659437 (= c!352183 (not (forall!5269 z!3888 lambda!83218)))))

(assert (=> d!659437 (= (lostCauseZipper!363 z!3888) lt!824652)))

(declare-fun bm!132233 () Bool)

(declare-fun toList!1273 ((InoxSet Context!3666)) List!25831)

(assert (=> bm!132233 (= call!132237 (toList!1273 z!3888))))

(declare-fun Unit!38838 () Unit!38833)

(assert (=> b!2205347 (= e!1408919 Unit!38838)))

(declare-fun lt!824650 () List!25831)

(assert (=> b!2205347 (= lt!824650 call!132237)))

(declare-fun lt!824648 () Unit!38833)

(declare-fun lemmaForallThenNotExists!60 (List!25831 Int) Unit!38833)

(assert (=> b!2205347 (= lt!824648 (lemmaForallThenNotExists!60 lt!824650 lambda!83218))))

(assert (=> b!2205347 (not call!132238)))

(declare-fun lt!824653 () Unit!38833)

(assert (=> b!2205347 (= lt!824653 lt!824648)))

(declare-fun bm!132232 () Bool)

(declare-fun exists!855 (List!25831 Int) Bool)

(assert (=> bm!132232 (= call!132238 (exists!855 (ite c!352183 lt!824651 lt!824650) (ite c!352183 lambda!83219 lambda!83220)))))

(assert (= (and d!659437 c!352183) b!2205346))

(assert (= (and d!659437 (not c!352183)) b!2205347))

(assert (= (or b!2205346 b!2205347) bm!132232))

(assert (= (or b!2205346 b!2205347) bm!132233))

(declare-fun m!2647237 () Bool)

(assert (=> bm!132233 m!2647237))

(declare-fun m!2647239 () Bool)

(assert (=> b!2205346 m!2647239))

(declare-fun m!2647241 () Bool)

(assert (=> bm!132232 m!2647241))

(declare-fun m!2647243 () Bool)

(assert (=> d!659437 m!2647243))

(assert (=> d!659437 m!2647243))

(declare-fun m!2647245 () Bool)

(assert (=> d!659437 m!2647245))

(declare-fun m!2647247 () Bool)

(assert (=> d!659437 m!2647247))

(assert (=> d!659437 m!2647247))

(declare-fun m!2647249 () Bool)

(assert (=> b!2205347 m!2647249))

(assert (=> b!2205192 d!659437))

(declare-fun bs!450983 () Bool)

(declare-fun d!659441 () Bool)

(assert (= bs!450983 (and d!659441 d!659405)))

(declare-fun lambda!83223 () Int)

(assert (=> bs!450983 (= lambda!83223 lambda!83190)))

(declare-fun bs!450985 () Bool)

(assert (= bs!450985 (and d!659441 d!659437)))

(assert (=> bs!450985 (not (= lambda!83223 lambda!83218))))

(declare-fun bs!450987 () Bool)

(assert (= bs!450987 (and d!659441 b!2205346)))

(assert (=> bs!450987 (not (= lambda!83223 lambda!83219))))

(declare-fun bs!450988 () Bool)

(assert (= bs!450988 (and d!659441 b!2205347)))

(assert (=> bs!450988 (not (= lambda!83223 lambda!83220))))

(assert (=> d!659441 (= (nullableZipper!543 z!3888) (exists!853 z!3888 lambda!83223))))

(declare-fun bs!450989 () Bool)

(assert (= bs!450989 d!659441))

(declare-fun m!2647251 () Bool)

(assert (=> bs!450989 m!2647251))

(assert (=> b!2205193 d!659441))

(declare-fun d!659443 () Bool)

(declare-fun c!352185 () Bool)

(assert (=> d!659443 (= c!352185 (isEmpty!14723 lt!824571))))

(declare-fun e!1408921 () Bool)

(assert (=> d!659443 (= (matchZipper!349 lt!824574 lt!824571) e!1408921)))

(declare-fun b!2205350 () Bool)

(assert (=> b!2205350 (= e!1408921 (nullableZipper!543 lt!824574))))

(declare-fun b!2205351 () Bool)

(assert (=> b!2205351 (= e!1408921 (matchZipper!349 (derivationStepZipper!305 lt!824574 (head!4711 lt!824571)) (tail!3192 lt!824571)))))

(assert (= (and d!659443 c!352185) b!2205350))

(assert (= (and d!659443 (not c!352185)) b!2205351))

(declare-fun m!2647253 () Bool)

(assert (=> d!659443 m!2647253))

(assert (=> b!2205350 m!2647091))

(declare-fun m!2647255 () Bool)

(assert (=> b!2205351 m!2647255))

(assert (=> b!2205351 m!2647255))

(declare-fun m!2647257 () Bool)

(assert (=> b!2205351 m!2647257))

(declare-fun m!2647259 () Bool)

(assert (=> b!2205351 m!2647259))

(assert (=> b!2205351 m!2647257))

(assert (=> b!2205351 m!2647259))

(declare-fun m!2647261 () Bool)

(assert (=> b!2205351 m!2647261))

(assert (=> b!2205184 d!659443))

(declare-fun condSetEmpty!19155 () Bool)

(assert (=> setNonEmpty!19152 (= condSetEmpty!19155 (= setRest!19152 ((as const (Array Context!3666 Bool)) false)))))

(declare-fun setRes!19155 () Bool)

(assert (=> setNonEmpty!19152 (= tp!685738 setRes!19155)))

(declare-fun setIsEmpty!19155 () Bool)

(assert (=> setIsEmpty!19155 setRes!19155))

(declare-fun e!1408924 () Bool)

(declare-fun setElem!19155 () Context!3666)

(declare-fun setNonEmpty!19155 () Bool)

(declare-fun tp!685745 () Bool)

(assert (=> setNonEmpty!19155 (= setRes!19155 (and tp!685745 (inv!34695 setElem!19155) e!1408924))))

(declare-fun setRest!19155 () (InoxSet Context!3666))

(assert (=> setNonEmpty!19155 (= setRest!19152 ((_ map or) (store ((as const (Array Context!3666 Bool)) false) setElem!19155 true) setRest!19155))))

(declare-fun b!2205356 () Bool)

(declare-fun tp!685746 () Bool)

(assert (=> b!2205356 (= e!1408924 tp!685746)))

(assert (= (and setNonEmpty!19152 condSetEmpty!19155) setIsEmpty!19155))

(assert (= (and setNonEmpty!19152 (not condSetEmpty!19155)) setNonEmpty!19155))

(assert (= setNonEmpty!19155 b!2205356))

(declare-fun m!2647277 () Bool)

(assert (=> setNonEmpty!19155 m!2647277))

(declare-fun b!2205361 () Bool)

(declare-fun e!1408927 () Bool)

(declare-fun tp!685751 () Bool)

(declare-fun tp!685752 () Bool)

(assert (=> b!2205361 (= e!1408927 (and tp!685751 tp!685752))))

(assert (=> b!2205187 (= tp!685739 e!1408927)))

(assert (= (and b!2205187 ((_ is Cons!25744) (exprs!2333 setElem!19152))) b!2205361))

(declare-fun b!2205370 () Bool)

(declare-fun tp!685761 () Bool)

(declare-fun tp!685759 () Bool)

(declare-fun e!1408933 () Bool)

(assert (=> b!2205370 (= e!1408933 (and (inv!34696 (left!19781 (c!352107 totalInput!891))) tp!685761 (inv!34696 (right!20111 (c!352107 totalInput!891))) tp!685759))))

(declare-fun b!2205372 () Bool)

(declare-fun e!1408932 () Bool)

(declare-fun tp!685760 () Bool)

(assert (=> b!2205372 (= e!1408932 tp!685760)))

(declare-fun b!2205371 () Bool)

(declare-fun inv!34701 (IArray!16803) Bool)

(assert (=> b!2205371 (= e!1408933 (and (inv!34701 (xs!11341 (c!352107 totalInput!891))) e!1408932))))

(assert (=> b!2205198 (= tp!685740 (and (inv!34696 (c!352107 totalInput!891)) e!1408933))))

(assert (= (and b!2205198 ((_ is Node!8399) (c!352107 totalInput!891))) b!2205370))

(assert (= b!2205371 b!2205372))

(assert (= (and b!2205198 ((_ is Leaf!12298) (c!352107 totalInput!891))) b!2205371))

(declare-fun m!2647283 () Bool)

(assert (=> b!2205370 m!2647283))

(declare-fun m!2647285 () Bool)

(assert (=> b!2205370 m!2647285))

(declare-fun m!2647287 () Bool)

(assert (=> b!2205371 m!2647287))

(assert (=> b!2205198 m!2647075))

(check-sat (not d!659427) (not b!2205233) (not bm!132232) (not d!659415) (not b!2205312) (not d!659393) (not d!659395) (not b!2205371) (not bm!132222) (not b!2205223) (not b!2205346) (not b!2205295) (not b!2205234) (not b!2205300) (not b!2205335) (not b!2205361) (not b!2205372) (not b!2205221) (not b!2205307) (not d!659421) (not b!2205285) (not b!2205232) (not b!2205311) (not b!2205301) (not b!2205198) (not b!2205309) (not d!659441) (not b!2205288) (not b!2205282) (not d!659407) (not b!2205350) (not b!2205293) (not d!659419) (not b!2205347) (not d!659411) (not b!2205283) (not b!2205259) (not setNonEmpty!19155) (not d!659437) (not d!659413) (not b!2205356) (not b!2205208) (not b!2205290) (not d!659405) (not b!2205370) (not d!659429) (not b!2205264) (not b!2205306) (not b!2205333) (not b!2205314) (not d!659417) (not b!2205327) (not bm!132223) (not b!2205206) (not d!659443) (not d!659403) (not b!2205280) (not d!659389) (not b!2205260) (not b!2205351) (not d!659399) (not d!659423) (not b!2205292) (not bm!132233) (not d!659431) (not b!2205328))
(check-sat)

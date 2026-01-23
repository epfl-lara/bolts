; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!213516 () Bool)

(assert start!213516)

(declare-fun b!2199160 () Bool)

(declare-fun res!945130 () Bool)

(declare-fun e!1405385 () Bool)

(assert (=> b!2199160 (=> (not res!945130) (not e!1405385))))

(declare-datatypes ((C!12526 0))(
  ( (C!12527 (val!7249 Int)) )
))
(declare-datatypes ((Regex!6190 0))(
  ( (ElementMatch!6190 (c!350693 C!12526)) (Concat!10492 (regOne!12892 Regex!6190) (regTwo!12892 Regex!6190)) (EmptyExpr!6190) (Star!6190 (reg!6519 Regex!6190)) (EmptyLang!6190) (Union!6190 (regOne!12893 Regex!6190) (regTwo!12893 Regex!6190)) )
))
(declare-datatypes ((List!25672 0))(
  ( (Nil!25588) (Cons!25588 (h!30989 Regex!6190) (t!198290 List!25672)) )
))
(declare-datatypes ((Context!3520 0))(
  ( (Context!3521 (exprs!2260 List!25672)) )
))
(declare-fun z!3955 () (Set Context!3520))

(declare-fun lostCauseZipper!306 ((Set Context!3520)) Bool)

(assert (=> b!2199160 (= res!945130 (not (lostCauseZipper!306 z!3955)))))

(declare-fun b!2199161 () Bool)

(declare-fun res!945134 () Bool)

(declare-fun e!1405393 () Bool)

(assert (=> b!2199161 (=> res!945134 e!1405393)))

(declare-datatypes ((List!25673 0))(
  ( (Nil!25589) (Cons!25589 (h!30990 C!12526) (t!198291 List!25673)) )
))
(declare-fun lt!822581 () List!25673)

(declare-fun lt!822580 () C!12526)

(declare-fun matchZipper!276 ((Set Context!3520) List!25673) Bool)

(assert (=> b!2199161 (= res!945134 (not (matchZipper!276 z!3955 (Cons!25589 lt!822580 lt!822581))))))

(declare-fun b!2199162 () Bool)

(declare-fun e!1405390 () Bool)

(declare-fun tp!684482 () Bool)

(assert (=> b!2199162 (= e!1405390 tp!684482)))

(declare-fun b!2199163 () Bool)

(declare-fun e!1405391 () Bool)

(declare-fun lastNullablePos!193 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2199163 (= e!1405391 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun setElem!18867 () Context!3520)

(declare-fun tp!684483 () Bool)

(declare-fun setRes!18867 () Bool)

(declare-fun setNonEmpty!18867 () Bool)

(declare-fun inv!34309 (Context!3520) Bool)

(assert (=> setNonEmpty!18867 (= setRes!18867 (and tp!684483 (inv!34309 setElem!18867) e!1405390))))

(declare-fun setRest!18867 () (Set Context!3520))

(assert (=> setNonEmpty!18867 (= z!3955 (set.union (set.insert setElem!18867 (as set.empty (Set Context!3520))) setRest!18867))))

(declare-fun b!2199164 () Bool)

(declare-fun e!1405388 () Bool)

(declare-fun e!1405386 () Bool)

(assert (=> b!2199164 (= e!1405388 (not e!1405386))))

(declare-fun res!945135 () Bool)

(assert (=> b!2199164 (=> res!945135 e!1405386)))

(declare-fun lt!822585 () Bool)

(assert (=> b!2199164 (= res!945135 lt!822585)))

(declare-fun e!1405389 () Bool)

(assert (=> b!2199164 e!1405389))

(declare-fun res!945139 () Bool)

(assert (=> b!2199164 (=> res!945139 e!1405389)))

(assert (=> b!2199164 (= res!945139 lt!822585)))

(declare-fun lt!822577 () Int)

(assert (=> b!2199164 (= lt!822585 (<= lt!822577 0))))

(declare-fun lt!822586 () Int)

(assert (=> b!2199164 (= lt!822577 (+ 1 (- lt!822586 (+ 1 from!1114))))))

(declare-datatypes ((IArray!16657 0))(
  ( (IArray!16658 (innerList!8386 List!25673)) )
))
(declare-datatypes ((Conc!8326 0))(
  ( (Node!8326 (left!19652 Conc!8326) (right!19982 Conc!8326) (csize!16882 Int) (cheight!8537 Int)) (Leaf!12189 (xs!11268 IArray!16657) (csize!16883 Int)) (Empty!8326) )
))
(declare-datatypes ((BalanceConc!16414 0))(
  ( (BalanceConc!16415 (c!350694 Conc!8326)) )
))
(declare-fun totalInput!923 () BalanceConc!16414)

(declare-fun lt!822579 () Int)

(declare-datatypes ((Unit!38717 0))(
  ( (Unit!38718) )
))
(declare-fun lt!822582 () Unit!38717)

(declare-fun lt!822584 () (Set Context!3520))

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!179 ((Set Context!3520) Int BalanceConc!16414 Int) Unit!38717)

(assert (=> b!2199164 (= lt!822582 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!179 lt!822584 (+ 1 from!1114) totalInput!923 lt!822579))))

(declare-fun b!2199165 () Bool)

(declare-fun e!1405384 () Int)

(assert (=> b!2199165 (= e!1405384 lastNullablePos!193)))

(declare-fun res!945131 () Bool)

(declare-fun e!1405387 () Bool)

(assert (=> start!213516 (=> (not res!945131) (not e!1405387))))

(assert (=> start!213516 (= res!945131 (>= from!1114 0))))

(assert (=> start!213516 e!1405387))

(assert (=> start!213516 true))

(declare-fun e!1405392 () Bool)

(declare-fun inv!34310 (BalanceConc!16414) Bool)

(assert (=> start!213516 (and (inv!34310 totalInput!923) e!1405392)))

(declare-fun condSetEmpty!18867 () Bool)

(assert (=> start!213516 (= condSetEmpty!18867 (= z!3955 (as set.empty (Set Context!3520))))))

(assert (=> start!213516 setRes!18867))

(declare-fun setIsEmpty!18867 () Bool)

(assert (=> setIsEmpty!18867 setRes!18867))

(declare-fun b!2199166 () Bool)

(assert (=> b!2199166 (= e!1405387 e!1405385)))

(declare-fun res!945138 () Bool)

(assert (=> b!2199166 (=> (not res!945138) (not e!1405385))))

(declare-fun lt!822578 () Int)

(assert (=> b!2199166 (= res!945138 (and (<= from!1114 lt!822578) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19951 (BalanceConc!16414) Int)

(assert (=> b!2199166 (= lt!822578 (size!19951 totalInput!923))))

(declare-fun b!2199167 () Bool)

(declare-fun tp!684481 () Bool)

(declare-fun inv!34311 (Conc!8326) Bool)

(assert (=> b!2199167 (= e!1405392 (and (inv!34311 (c!350694 totalInput!923)) tp!684481))))

(declare-fun b!2199168 () Bool)

(assert (=> b!2199168 (= e!1405385 e!1405388)))

(declare-fun res!945137 () Bool)

(assert (=> b!2199168 (=> (not res!945137) (not e!1405388))))

(declare-fun lt!822575 () Int)

(assert (=> b!2199168 (= res!945137 (= lt!822575 lt!822586))))

(declare-fun furthestNullablePosition!358 ((Set Context!3520) Int BalanceConc!16414 Int Int) Int)

(assert (=> b!2199168 (= lt!822586 (furthestNullablePosition!358 lt!822584 (+ 1 from!1114) totalInput!923 lt!822578 lt!822579))))

(assert (=> b!2199168 (= lt!822575 (furthestNullablePosition!358 z!3955 from!1114 totalInput!923 lt!822578 lastNullablePos!193))))

(assert (=> b!2199168 (= lt!822579 e!1405384)))

(declare-fun c!350692 () Bool)

(declare-fun nullableZipper!470 ((Set Context!3520)) Bool)

(assert (=> b!2199168 (= c!350692 (nullableZipper!470 lt!822584))))

(declare-fun derivationStepZipper!262 ((Set Context!3520) C!12526) (Set Context!3520))

(assert (=> b!2199168 (= lt!822584 (derivationStepZipper!262 z!3955 lt!822580))))

(declare-fun apply!6274 (BalanceConc!16414 Int) C!12526)

(assert (=> b!2199168 (= lt!822580 (apply!6274 totalInput!923 from!1114))))

(declare-fun b!2199169 () Bool)

(declare-fun res!945132 () Bool)

(assert (=> b!2199169 (=> (not res!945132) (not e!1405385))))

(assert (=> b!2199169 (= res!945132 (not (= from!1114 lt!822578)))))

(declare-fun b!2199170 () Bool)

(declare-fun res!945140 () Bool)

(assert (=> b!2199170 (=> (not res!945140) (not e!1405385))))

(assert (=> b!2199170 (= res!945140 e!1405391)))

(declare-fun res!945133 () Bool)

(assert (=> b!2199170 (=> res!945133 e!1405391)))

(assert (=> b!2199170 (= res!945133 (not (nullableZipper!470 z!3955)))))

(declare-fun b!2199171 () Bool)

(declare-fun take!368 (List!25673 Int) List!25673)

(declare-fun drop!1378 (List!25673 Int) List!25673)

(declare-fun list!9846 (BalanceConc!16414) List!25673)

(assert (=> b!2199171 (= e!1405389 (matchZipper!276 lt!822584 (take!368 (drop!1378 (list!9846 totalInput!923) (+ 1 from!1114)) lt!822577)))))

(declare-fun b!2199172 () Bool)

(assert (=> b!2199172 (= e!1405386 e!1405393)))

(declare-fun res!945136 () Bool)

(assert (=> b!2199172 (=> res!945136 e!1405393)))

(assert (=> b!2199172 (= res!945136 (not (matchZipper!276 lt!822584 lt!822581)))))

(declare-fun lt!822576 () List!25673)

(assert (=> b!2199172 (= lt!822581 (take!368 (drop!1378 lt!822576 (+ 1 from!1114)) lt!822577))))

(assert (=> b!2199172 (= lt!822576 (list!9846 totalInput!923))))

(declare-fun b!2199173 () Bool)

(assert (=> b!2199173 (= e!1405384 from!1114)))

(declare-fun lt!822583 () Int)

(declare-fun b!2199174 () Bool)

(assert (=> b!2199174 (= e!1405393 (or (>= from!1114 lt!822583) (and (>= lt!822577 0) (<= lt!822577 (- (- lt!822583 from!1114) 1)))))))

(declare-fun size!19952 (List!25673) Int)

(assert (=> b!2199174 (= lt!822583 (size!19952 lt!822576))))

(assert (= (and start!213516 res!945131) b!2199166))

(assert (= (and b!2199166 res!945138) b!2199170))

(assert (= (and b!2199170 (not res!945133)) b!2199163))

(assert (= (and b!2199170 res!945140) b!2199169))

(assert (= (and b!2199169 res!945132) b!2199160))

(assert (= (and b!2199160 res!945130) b!2199168))

(assert (= (and b!2199168 c!350692) b!2199173))

(assert (= (and b!2199168 (not c!350692)) b!2199165))

(assert (= (and b!2199168 res!945137) b!2199164))

(assert (= (and b!2199164 (not res!945139)) b!2199171))

(assert (= (and b!2199164 (not res!945135)) b!2199172))

(assert (= (and b!2199172 (not res!945136)) b!2199161))

(assert (= (and b!2199161 (not res!945134)) b!2199174))

(assert (= start!213516 b!2199167))

(assert (= (and start!213516 condSetEmpty!18867) setIsEmpty!18867))

(assert (= (and start!213516 (not condSetEmpty!18867)) setNonEmpty!18867))

(assert (= setNonEmpty!18867 b!2199162))

(declare-fun m!2642051 () Bool)

(assert (=> b!2199172 m!2642051))

(declare-fun m!2642053 () Bool)

(assert (=> b!2199172 m!2642053))

(assert (=> b!2199172 m!2642053))

(declare-fun m!2642055 () Bool)

(assert (=> b!2199172 m!2642055))

(declare-fun m!2642057 () Bool)

(assert (=> b!2199172 m!2642057))

(declare-fun m!2642059 () Bool)

(assert (=> b!2199174 m!2642059))

(declare-fun m!2642061 () Bool)

(assert (=> b!2199160 m!2642061))

(declare-fun m!2642063 () Bool)

(assert (=> b!2199168 m!2642063))

(declare-fun m!2642065 () Bool)

(assert (=> b!2199168 m!2642065))

(declare-fun m!2642067 () Bool)

(assert (=> b!2199168 m!2642067))

(declare-fun m!2642069 () Bool)

(assert (=> b!2199168 m!2642069))

(declare-fun m!2642071 () Bool)

(assert (=> b!2199168 m!2642071))

(declare-fun m!2642073 () Bool)

(assert (=> start!213516 m!2642073))

(declare-fun m!2642075 () Bool)

(assert (=> b!2199167 m!2642075))

(declare-fun m!2642077 () Bool)

(assert (=> b!2199161 m!2642077))

(declare-fun m!2642079 () Bool)

(assert (=> b!2199164 m!2642079))

(assert (=> b!2199171 m!2642057))

(assert (=> b!2199171 m!2642057))

(declare-fun m!2642081 () Bool)

(assert (=> b!2199171 m!2642081))

(assert (=> b!2199171 m!2642081))

(declare-fun m!2642083 () Bool)

(assert (=> b!2199171 m!2642083))

(assert (=> b!2199171 m!2642083))

(declare-fun m!2642085 () Bool)

(assert (=> b!2199171 m!2642085))

(declare-fun m!2642087 () Bool)

(assert (=> b!2199170 m!2642087))

(declare-fun m!2642089 () Bool)

(assert (=> b!2199166 m!2642089))

(declare-fun m!2642091 () Bool)

(assert (=> setNonEmpty!18867 m!2642091))

(push 1)

(assert (not b!2199161))

(assert (not b!2199171))

(assert (not setNonEmpty!18867))

(assert (not b!2199167))

(assert (not b!2199166))

(assert (not b!2199168))

(assert (not b!2199164))

(assert (not b!2199172))

(assert (not b!2199160))

(assert (not b!2199174))

(assert (not start!213516))

(assert (not b!2199170))

(assert (not b!2199162))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!658247 () Bool)

(declare-fun lt!822625 () Int)

(assert (=> d!658247 (= lt!822625 (size!19952 (list!9846 totalInput!923)))))

(declare-fun size!19955 (Conc!8326) Int)

(assert (=> d!658247 (= lt!822625 (size!19955 (c!350694 totalInput!923)))))

(assert (=> d!658247 (= (size!19951 totalInput!923) lt!822625)))

(declare-fun bs!450463 () Bool)

(assert (= bs!450463 d!658247))

(assert (=> bs!450463 m!2642057))

(assert (=> bs!450463 m!2642057))

(declare-fun m!2642135 () Bool)

(assert (=> bs!450463 m!2642135))

(declare-fun m!2642137 () Bool)

(assert (=> bs!450463 m!2642137))

(assert (=> b!2199166 d!658247))

(declare-fun d!658249 () Bool)

(declare-fun c!350702 () Bool)

(assert (=> d!658249 (= c!350702 (is-Node!8326 (c!350694 totalInput!923)))))

(declare-fun e!1405428 () Bool)

(assert (=> d!658249 (= (inv!34311 (c!350694 totalInput!923)) e!1405428)))

(declare-fun b!2199226 () Bool)

(declare-fun inv!34315 (Conc!8326) Bool)

(assert (=> b!2199226 (= e!1405428 (inv!34315 (c!350694 totalInput!923)))))

(declare-fun b!2199227 () Bool)

(declare-fun e!1405429 () Bool)

(assert (=> b!2199227 (= e!1405428 e!1405429)))

(declare-fun res!945176 () Bool)

(assert (=> b!2199227 (= res!945176 (not (is-Leaf!12189 (c!350694 totalInput!923))))))

(assert (=> b!2199227 (=> res!945176 e!1405429)))

(declare-fun b!2199228 () Bool)

(declare-fun inv!34316 (Conc!8326) Bool)

(assert (=> b!2199228 (= e!1405429 (inv!34316 (c!350694 totalInput!923)))))

(assert (= (and d!658249 c!350702) b!2199226))

(assert (= (and d!658249 (not c!350702)) b!2199227))

(assert (= (and b!2199227 (not res!945176)) b!2199228))

(declare-fun m!2642139 () Bool)

(assert (=> b!2199226 m!2642139))

(declare-fun m!2642141 () Bool)

(assert (=> b!2199228 m!2642141))

(assert (=> b!2199167 d!658249))

(declare-fun bs!450464 () Bool)

(declare-fun b!2199239 () Bool)

(declare-fun d!658251 () Bool)

(assert (= bs!450464 (and b!2199239 d!658251)))

(declare-fun lambda!82863 () Int)

(declare-fun lambda!82862 () Int)

(assert (=> bs!450464 (not (= lambda!82863 lambda!82862))))

(declare-fun bs!450465 () Bool)

(declare-fun b!2199240 () Bool)

(assert (= bs!450465 (and b!2199240 d!658251)))

(declare-fun lambda!82864 () Int)

(assert (=> bs!450465 (not (= lambda!82864 lambda!82862))))

(declare-fun bs!450466 () Bool)

(assert (= bs!450466 (and b!2199240 b!2199239)))

(assert (=> bs!450466 (= lambda!82864 lambda!82863)))

(declare-fun bm!132091 () Bool)

(declare-datatypes ((List!25676 0))(
  ( (Nil!25592) (Cons!25592 (h!30993 Context!3520) (t!198294 List!25676)) )
))
(declare-fun call!132096 () List!25676)

(declare-fun toList!1262 ((Set Context!3520)) List!25676)

(assert (=> bm!132091 (= call!132096 (toList!1262 z!3955))))

(declare-fun bm!132090 () Bool)

(declare-fun lt!822651 () List!25676)

(declare-fun lt!822649 () List!25676)

(declare-fun c!350715 () Bool)

(declare-fun call!132095 () Bool)

(declare-fun exists!825 (List!25676 Int) Bool)

(assert (=> bm!132090 (= call!132095 (exists!825 (ite c!350715 lt!822651 lt!822649) (ite c!350715 lambda!82863 lambda!82864)))))

(declare-fun e!1405442 () Unit!38717)

(declare-fun Unit!38721 () Unit!38717)

(assert (=> b!2199239 (= e!1405442 Unit!38721)))

(assert (=> b!2199239 (= lt!822651 call!132096)))

(declare-fun lt!822655 () Unit!38717)

(declare-fun lemmaNotForallThenExists!51 (List!25676 Int) Unit!38717)

(assert (=> b!2199239 (= lt!822655 (lemmaNotForallThenExists!51 lt!822651 lambda!82862))))

(assert (=> b!2199239 call!132095))

(declare-fun lt!822653 () Unit!38717)

(assert (=> b!2199239 (= lt!822653 lt!822655)))

(declare-fun lt!822654 () Bool)

(declare-datatypes ((Option!5026 0))(
  ( (None!5025) (Some!5025 (v!29422 List!25673)) )
))
(declare-fun isEmpty!14598 (Option!5026) Bool)

(declare-fun getLanguageWitness!149 ((Set Context!3520)) Option!5026)

(assert (=> d!658251 (= lt!822654 (isEmpty!14598 (getLanguageWitness!149 z!3955)))))

(declare-fun forall!5238 ((Set Context!3520) Int) Bool)

(assert (=> d!658251 (= lt!822654 (forall!5238 z!3955 lambda!82862))))

(declare-fun lt!822650 () Unit!38717)

(assert (=> d!658251 (= lt!822650 e!1405442)))

(assert (=> d!658251 (= c!350715 (not (forall!5238 z!3955 lambda!82862)))))

(assert (=> d!658251 (= (lostCauseZipper!306 z!3955) lt!822654)))

(declare-fun Unit!38722 () Unit!38717)

(assert (=> b!2199240 (= e!1405442 Unit!38722)))

(assert (=> b!2199240 (= lt!822649 call!132096)))

(declare-fun lt!822652 () Unit!38717)

(declare-fun lemmaForallThenNotExists!51 (List!25676 Int) Unit!38717)

(assert (=> b!2199240 (= lt!822652 (lemmaForallThenNotExists!51 lt!822649 lambda!82862))))

(assert (=> b!2199240 (not call!132095)))

(declare-fun lt!822648 () Unit!38717)

(assert (=> b!2199240 (= lt!822648 lt!822652)))

(assert (= (and d!658251 c!350715) b!2199239))

(assert (= (and d!658251 (not c!350715)) b!2199240))

(assert (= (or b!2199239 b!2199240) bm!132090))

(assert (= (or b!2199239 b!2199240) bm!132091))

(declare-fun m!2642151 () Bool)

(assert (=> b!2199239 m!2642151))

(declare-fun m!2642153 () Bool)

(assert (=> b!2199240 m!2642153))

(declare-fun m!2642155 () Bool)

(assert (=> d!658251 m!2642155))

(assert (=> d!658251 m!2642155))

(declare-fun m!2642157 () Bool)

(assert (=> d!658251 m!2642157))

(declare-fun m!2642159 () Bool)

(assert (=> d!658251 m!2642159))

(assert (=> d!658251 m!2642159))

(declare-fun m!2642161 () Bool)

(assert (=> bm!132091 m!2642161))

(declare-fun m!2642163 () Bool)

(assert (=> bm!132090 m!2642163))

(assert (=> b!2199160 d!658251))

(declare-fun d!658255 () Bool)

(assert (=> d!658255 true))

(declare-fun lambda!82867 () Int)

(declare-fun flatMap!157 ((Set Context!3520) Int) (Set Context!3520))

(assert (=> d!658255 (= (derivationStepZipper!262 z!3955 lt!822580) (flatMap!157 z!3955 lambda!82867))))

(declare-fun bs!450467 () Bool)

(assert (= bs!450467 d!658255))

(declare-fun m!2642165 () Bool)

(assert (=> bs!450467 m!2642165))

(assert (=> b!2199168 d!658255))

(declare-fun d!658257 () Bool)

(declare-fun lt!822658 () C!12526)

(declare-fun apply!6276 (List!25673 Int) C!12526)

(assert (=> d!658257 (= lt!822658 (apply!6276 (list!9846 totalInput!923) from!1114))))

(declare-fun apply!6277 (Conc!8326 Int) C!12526)

(assert (=> d!658257 (= lt!822658 (apply!6277 (c!350694 totalInput!923) from!1114))))

(declare-fun e!1405445 () Bool)

(assert (=> d!658257 e!1405445))

(declare-fun res!945185 () Bool)

(assert (=> d!658257 (=> (not res!945185) (not e!1405445))))

(assert (=> d!658257 (= res!945185 (<= 0 from!1114))))

(assert (=> d!658257 (= (apply!6274 totalInput!923 from!1114) lt!822658)))

(declare-fun b!2199245 () Bool)

(assert (=> b!2199245 (= e!1405445 (< from!1114 (size!19951 totalInput!923)))))

(assert (= (and d!658257 res!945185) b!2199245))

(assert (=> d!658257 m!2642057))

(assert (=> d!658257 m!2642057))

(declare-fun m!2642167 () Bool)

(assert (=> d!658257 m!2642167))

(declare-fun m!2642169 () Bool)

(assert (=> d!658257 m!2642169))

(assert (=> b!2199245 m!2642089))

(assert (=> b!2199168 d!658257))

(declare-fun e!1405453 () Int)

(declare-fun lt!822664 () (Set Context!3520))

(declare-fun b!2199256 () Bool)

(declare-fun e!1405454 () Int)

(assert (=> b!2199256 (= e!1405453 (furthestNullablePosition!358 lt!822664 (+ from!1114 1) totalInput!923 lt!822578 e!1405454))))

(assert (=> b!2199256 (= lt!822664 (derivationStepZipper!262 z!3955 (apply!6274 totalInput!923 from!1114)))))

(declare-fun c!350722 () Bool)

(assert (=> b!2199256 (= c!350722 (nullableZipper!470 lt!822664))))

(declare-fun b!2199258 () Bool)

(assert (=> b!2199258 (= e!1405454 lastNullablePos!193)))

(declare-fun lt!822663 () Int)

(declare-fun d!658259 () Bool)

(assert (=> d!658259 (and (>= lt!822663 (- 1)) (< lt!822663 lt!822578) (>= lt!822663 lastNullablePos!193) (or (= lt!822663 lastNullablePos!193) (>= lt!822663 from!1114)))))

(assert (=> d!658259 (= lt!822663 e!1405453)))

(declare-fun c!350723 () Bool)

(declare-fun e!1405452 () Bool)

(assert (=> d!658259 (= c!350723 e!1405452)))

(declare-fun res!945188 () Bool)

(assert (=> d!658259 (=> res!945188 e!1405452)))

(assert (=> d!658259 (= res!945188 (= from!1114 lt!822578))))

(assert (=> d!658259 (and (>= from!1114 0) (<= from!1114 lt!822578))))

(assert (=> d!658259 (= (furthestNullablePosition!358 z!3955 from!1114 totalInput!923 lt!822578 lastNullablePos!193) lt!822663)))

(declare-fun b!2199257 () Bool)

(assert (=> b!2199257 (= e!1405453 lastNullablePos!193)))

(declare-fun b!2199259 () Bool)

(assert (=> b!2199259 (= e!1405454 from!1114)))

(declare-fun b!2199260 () Bool)

(assert (=> b!2199260 (= e!1405452 (lostCauseZipper!306 z!3955))))

(assert (= (and d!658259 (not res!945188)) b!2199260))

(assert (= (and d!658259 c!350723) b!2199257))

(assert (= (and d!658259 (not c!350723)) b!2199256))

(assert (= (and b!2199256 c!350722) b!2199259))

(assert (= (and b!2199256 (not c!350722)) b!2199258))

(declare-fun m!2642171 () Bool)

(assert (=> b!2199256 m!2642171))

(assert (=> b!2199256 m!2642067))

(assert (=> b!2199256 m!2642067))

(declare-fun m!2642173 () Bool)

(assert (=> b!2199256 m!2642173))

(declare-fun m!2642175 () Bool)

(assert (=> b!2199256 m!2642175))

(assert (=> b!2199260 m!2642061))

(assert (=> b!2199168 d!658259))

(declare-fun e!1405457 () Int)

(declare-fun b!2199261 () Bool)

(declare-fun e!1405456 () Int)

(declare-fun lt!822666 () (Set Context!3520))

(assert (=> b!2199261 (= e!1405456 (furthestNullablePosition!358 lt!822666 (+ 1 from!1114 1) totalInput!923 lt!822578 e!1405457))))

(assert (=> b!2199261 (= lt!822666 (derivationStepZipper!262 lt!822584 (apply!6274 totalInput!923 (+ 1 from!1114))))))

(declare-fun c!350724 () Bool)

(assert (=> b!2199261 (= c!350724 (nullableZipper!470 lt!822666))))

(declare-fun b!2199263 () Bool)

(assert (=> b!2199263 (= e!1405457 lt!822579)))

(declare-fun lt!822665 () Int)

(declare-fun d!658261 () Bool)

(assert (=> d!658261 (and (>= lt!822665 (- 1)) (< lt!822665 lt!822578) (>= lt!822665 lt!822579) (or (= lt!822665 lt!822579) (>= lt!822665 (+ 1 from!1114))))))

(assert (=> d!658261 (= lt!822665 e!1405456)))

(declare-fun c!350725 () Bool)

(declare-fun e!1405455 () Bool)

(assert (=> d!658261 (= c!350725 e!1405455)))

(declare-fun res!945189 () Bool)

(assert (=> d!658261 (=> res!945189 e!1405455)))

(assert (=> d!658261 (= res!945189 (= (+ 1 from!1114) lt!822578))))

(assert (=> d!658261 (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!822578))))

(assert (=> d!658261 (= (furthestNullablePosition!358 lt!822584 (+ 1 from!1114) totalInput!923 lt!822578 lt!822579) lt!822665)))

(declare-fun b!2199262 () Bool)

(assert (=> b!2199262 (= e!1405456 lt!822579)))

(declare-fun b!2199264 () Bool)

(assert (=> b!2199264 (= e!1405457 (+ 1 from!1114))))

(declare-fun b!2199265 () Bool)

(assert (=> b!2199265 (= e!1405455 (lostCauseZipper!306 lt!822584))))

(assert (= (and d!658261 (not res!945189)) b!2199265))

(assert (= (and d!658261 c!350725) b!2199262))

(assert (= (and d!658261 (not c!350725)) b!2199261))

(assert (= (and b!2199261 c!350724) b!2199264))

(assert (= (and b!2199261 (not c!350724)) b!2199263))

(declare-fun m!2642177 () Bool)

(assert (=> b!2199261 m!2642177))

(declare-fun m!2642179 () Bool)

(assert (=> b!2199261 m!2642179))

(assert (=> b!2199261 m!2642179))

(declare-fun m!2642181 () Bool)

(assert (=> b!2199261 m!2642181))

(declare-fun m!2642183 () Bool)

(assert (=> b!2199261 m!2642183))

(declare-fun m!2642185 () Bool)

(assert (=> b!2199265 m!2642185))

(assert (=> b!2199168 d!658261))

(declare-fun bs!450468 () Bool)

(declare-fun d!658263 () Bool)

(assert (= bs!450468 (and d!658263 d!658251)))

(declare-fun lambda!82870 () Int)

(assert (=> bs!450468 (not (= lambda!82870 lambda!82862))))

(declare-fun bs!450469 () Bool)

(assert (= bs!450469 (and d!658263 b!2199239)))

(assert (=> bs!450469 (not (= lambda!82870 lambda!82863))))

(declare-fun bs!450470 () Bool)

(assert (= bs!450470 (and d!658263 b!2199240)))

(assert (=> bs!450470 (not (= lambda!82870 lambda!82864))))

(declare-fun exists!826 ((Set Context!3520) Int) Bool)

(assert (=> d!658263 (= (nullableZipper!470 lt!822584) (exists!826 lt!822584 lambda!82870))))

(declare-fun bs!450471 () Bool)

(assert (= bs!450471 d!658263))

(declare-fun m!2642187 () Bool)

(assert (=> bs!450471 m!2642187))

(assert (=> b!2199168 d!658263))

(declare-fun bs!450472 () Bool)

(declare-fun d!658265 () Bool)

(assert (= bs!450472 (and d!658265 d!658251)))

(declare-fun lambda!82871 () Int)

(assert (=> bs!450472 (not (= lambda!82871 lambda!82862))))

(declare-fun bs!450473 () Bool)

(assert (= bs!450473 (and d!658265 b!2199239)))

(assert (=> bs!450473 (not (= lambda!82871 lambda!82863))))

(declare-fun bs!450474 () Bool)

(assert (= bs!450474 (and d!658265 b!2199240)))

(assert (=> bs!450474 (not (= lambda!82871 lambda!82864))))

(declare-fun bs!450475 () Bool)

(assert (= bs!450475 (and d!658265 d!658263)))

(assert (=> bs!450475 (= lambda!82871 lambda!82870)))

(assert (=> d!658265 (= (nullableZipper!470 z!3955) (exists!826 z!3955 lambda!82871))))

(declare-fun bs!450476 () Bool)

(assert (= bs!450476 d!658265))

(declare-fun m!2642189 () Bool)

(assert (=> bs!450476 m!2642189))

(assert (=> b!2199170 d!658265))

(declare-fun d!658267 () Bool)

(declare-fun c!350730 () Bool)

(declare-fun isEmpty!14599 (List!25673) Bool)

(assert (=> d!658267 (= c!350730 (isEmpty!14599 (Cons!25589 lt!822580 lt!822581)))))

(declare-fun e!1405460 () Bool)

(assert (=> d!658267 (= (matchZipper!276 z!3955 (Cons!25589 lt!822580 lt!822581)) e!1405460)))

(declare-fun b!2199270 () Bool)

(assert (=> b!2199270 (= e!1405460 (nullableZipper!470 z!3955))))

(declare-fun b!2199271 () Bool)

(declare-fun head!4691 (List!25673) C!12526)

(declare-fun tail!3163 (List!25673) List!25673)

(assert (=> b!2199271 (= e!1405460 (matchZipper!276 (derivationStepZipper!262 z!3955 (head!4691 (Cons!25589 lt!822580 lt!822581))) (tail!3163 (Cons!25589 lt!822580 lt!822581))))))

(assert (= (and d!658267 c!350730) b!2199270))

(assert (= (and d!658267 (not c!350730)) b!2199271))

(declare-fun m!2642191 () Bool)

(assert (=> d!658267 m!2642191))

(assert (=> b!2199270 m!2642087))

(declare-fun m!2642193 () Bool)

(assert (=> b!2199271 m!2642193))

(assert (=> b!2199271 m!2642193))

(declare-fun m!2642195 () Bool)

(assert (=> b!2199271 m!2642195))

(declare-fun m!2642197 () Bool)

(assert (=> b!2199271 m!2642197))

(assert (=> b!2199271 m!2642195))

(assert (=> b!2199271 m!2642197))

(declare-fun m!2642199 () Bool)

(assert (=> b!2199271 m!2642199))

(assert (=> b!2199161 d!658267))

(declare-fun d!658269 () Bool)

(declare-fun c!350731 () Bool)

(assert (=> d!658269 (= c!350731 (isEmpty!14599 (take!368 (drop!1378 (list!9846 totalInput!923) (+ 1 from!1114)) lt!822577)))))

(declare-fun e!1405461 () Bool)

(assert (=> d!658269 (= (matchZipper!276 lt!822584 (take!368 (drop!1378 (list!9846 totalInput!923) (+ 1 from!1114)) lt!822577)) e!1405461)))

(declare-fun b!2199272 () Bool)

(assert (=> b!2199272 (= e!1405461 (nullableZipper!470 lt!822584))))

(declare-fun b!2199273 () Bool)

(assert (=> b!2199273 (= e!1405461 (matchZipper!276 (derivationStepZipper!262 lt!822584 (head!4691 (take!368 (drop!1378 (list!9846 totalInput!923) (+ 1 from!1114)) lt!822577))) (tail!3163 (take!368 (drop!1378 (list!9846 totalInput!923) (+ 1 from!1114)) lt!822577))))))

(assert (= (and d!658269 c!350731) b!2199272))

(assert (= (and d!658269 (not c!350731)) b!2199273))

(assert (=> d!658269 m!2642083))

(declare-fun m!2642201 () Bool)

(assert (=> d!658269 m!2642201))

(assert (=> b!2199272 m!2642071))

(assert (=> b!2199273 m!2642083))

(declare-fun m!2642203 () Bool)

(assert (=> b!2199273 m!2642203))

(assert (=> b!2199273 m!2642203))

(declare-fun m!2642205 () Bool)

(assert (=> b!2199273 m!2642205))

(assert (=> b!2199273 m!2642083))

(declare-fun m!2642207 () Bool)

(assert (=> b!2199273 m!2642207))

(assert (=> b!2199273 m!2642205))

(assert (=> b!2199273 m!2642207))

(declare-fun m!2642209 () Bool)

(assert (=> b!2199273 m!2642209))

(assert (=> b!2199171 d!658269))

(declare-fun b!2199288 () Bool)

(declare-fun e!1405471 () Int)

(declare-fun e!1405473 () Int)

(assert (=> b!2199288 (= e!1405471 e!1405473)))

(declare-fun c!350738 () Bool)

(assert (=> b!2199288 (= c!350738 (>= lt!822577 (size!19952 (drop!1378 (list!9846 totalInput!923) (+ 1 from!1114)))))))

(declare-fun e!1405472 () List!25673)

(declare-fun b!2199289 () Bool)

(assert (=> b!2199289 (= e!1405472 (Cons!25589 (h!30990 (drop!1378 (list!9846 totalInput!923) (+ 1 from!1114))) (take!368 (t!198291 (drop!1378 (list!9846 totalInput!923) (+ 1 from!1114))) (- lt!822577 1))))))

(declare-fun b!2199290 () Bool)

(assert (=> b!2199290 (= e!1405471 0)))

(declare-fun b!2199291 () Bool)

(assert (=> b!2199291 (= e!1405473 lt!822577)))

(declare-fun b!2199292 () Bool)

(assert (=> b!2199292 (= e!1405473 (size!19952 (drop!1378 (list!9846 totalInput!923) (+ 1 from!1114))))))

(declare-fun d!658271 () Bool)

(declare-fun e!1405470 () Bool)

(assert (=> d!658271 e!1405470))

(declare-fun res!945192 () Bool)

(assert (=> d!658271 (=> (not res!945192) (not e!1405470))))

(declare-fun lt!822669 () List!25673)

(declare-fun content!3478 (List!25673) (Set C!12526))

(assert (=> d!658271 (= res!945192 (set.subset (content!3478 lt!822669) (content!3478 (drop!1378 (list!9846 totalInput!923) (+ 1 from!1114)))))))

(assert (=> d!658271 (= lt!822669 e!1405472)))

(declare-fun c!350739 () Bool)

(assert (=> d!658271 (= c!350739 (or (is-Nil!25589 (drop!1378 (list!9846 totalInput!923) (+ 1 from!1114))) (<= lt!822577 0)))))

(assert (=> d!658271 (= (take!368 (drop!1378 (list!9846 totalInput!923) (+ 1 from!1114)) lt!822577) lt!822669)))

(declare-fun b!2199293 () Bool)

(assert (=> b!2199293 (= e!1405470 (= (size!19952 lt!822669) e!1405471))))

(declare-fun c!350740 () Bool)

(assert (=> b!2199293 (= c!350740 (<= lt!822577 0))))

(declare-fun b!2199294 () Bool)

(assert (=> b!2199294 (= e!1405472 Nil!25589)))

(assert (= (and d!658271 c!350739) b!2199294))

(assert (= (and d!658271 (not c!350739)) b!2199289))

(assert (= (and d!658271 res!945192) b!2199293))

(assert (= (and b!2199293 c!350740) b!2199290))

(assert (= (and b!2199293 (not c!350740)) b!2199288))

(assert (= (and b!2199288 c!350738) b!2199292))

(assert (= (and b!2199288 (not c!350738)) b!2199291))

(declare-fun m!2642211 () Bool)

(assert (=> b!2199289 m!2642211))

(declare-fun m!2642213 () Bool)

(assert (=> d!658271 m!2642213))

(assert (=> d!658271 m!2642081))

(declare-fun m!2642215 () Bool)

(assert (=> d!658271 m!2642215))

(assert (=> b!2199288 m!2642081))

(declare-fun m!2642217 () Bool)

(assert (=> b!2199288 m!2642217))

(declare-fun m!2642219 () Bool)

(assert (=> b!2199293 m!2642219))

(assert (=> b!2199292 m!2642081))

(assert (=> b!2199292 m!2642217))

(assert (=> b!2199171 d!658271))

(declare-fun b!2199313 () Bool)

(declare-fun e!1405485 () Int)

(declare-fun call!132099 () Int)

(assert (=> b!2199313 (= e!1405485 call!132099)))

(declare-fun b!2199314 () Bool)

(declare-fun e!1405486 () List!25673)

(assert (=> b!2199314 (= e!1405486 (list!9846 totalInput!923))))

(declare-fun b!2199315 () Bool)

(declare-fun e!1405488 () List!25673)

(assert (=> b!2199315 (= e!1405488 Nil!25589)))

(declare-fun b!2199316 () Bool)

(declare-fun e!1405484 () Int)

(assert (=> b!2199316 (= e!1405484 0)))

(declare-fun b!2199317 () Bool)

(assert (=> b!2199317 (= e!1405484 (- call!132099 (+ 1 from!1114)))))

(declare-fun d!658273 () Bool)

(declare-fun e!1405487 () Bool)

(assert (=> d!658273 e!1405487))

(declare-fun res!945195 () Bool)

(assert (=> d!658273 (=> (not res!945195) (not e!1405487))))

(declare-fun lt!822672 () List!25673)

(assert (=> d!658273 (= res!945195 (set.subset (content!3478 lt!822672) (content!3478 (list!9846 totalInput!923))))))

(assert (=> d!658273 (= lt!822672 e!1405488)))

(declare-fun c!350752 () Bool)

(assert (=> d!658273 (= c!350752 (is-Nil!25589 (list!9846 totalInput!923)))))

(assert (=> d!658273 (= (drop!1378 (list!9846 totalInput!923) (+ 1 from!1114)) lt!822672)))

(declare-fun b!2199318 () Bool)

(assert (=> b!2199318 (= e!1405488 e!1405486)))

(declare-fun c!350751 () Bool)

(assert (=> b!2199318 (= c!350751 (<= (+ 1 from!1114) 0))))

(declare-fun b!2199319 () Bool)

(assert (=> b!2199319 (= e!1405487 (= (size!19952 lt!822672) e!1405485))))

(declare-fun c!350750 () Bool)

(assert (=> b!2199319 (= c!350750 (<= (+ 1 from!1114) 0))))

(declare-fun bm!132094 () Bool)

(assert (=> bm!132094 (= call!132099 (size!19952 (list!9846 totalInput!923)))))

(declare-fun b!2199320 () Bool)

(assert (=> b!2199320 (= e!1405485 e!1405484)))

(declare-fun c!350749 () Bool)

(assert (=> b!2199320 (= c!350749 (>= (+ 1 from!1114) call!132099))))

(declare-fun b!2199321 () Bool)

(assert (=> b!2199321 (= e!1405486 (drop!1378 (t!198291 (list!9846 totalInput!923)) (- (+ 1 from!1114) 1)))))

(assert (= (and d!658273 c!350752) b!2199315))

(assert (= (and d!658273 (not c!350752)) b!2199318))

(assert (= (and b!2199318 c!350751) b!2199314))

(assert (= (and b!2199318 (not c!350751)) b!2199321))

(assert (= (and d!658273 res!945195) b!2199319))

(assert (= (and b!2199319 c!350750) b!2199313))

(assert (= (and b!2199319 (not c!350750)) b!2199320))

(assert (= (and b!2199320 c!350749) b!2199316))

(assert (= (and b!2199320 (not c!350749)) b!2199317))

(assert (= (or b!2199313 b!2199320 b!2199317) bm!132094))

(declare-fun m!2642221 () Bool)

(assert (=> d!658273 m!2642221))

(assert (=> d!658273 m!2642057))

(declare-fun m!2642223 () Bool)

(assert (=> d!658273 m!2642223))

(declare-fun m!2642225 () Bool)

(assert (=> b!2199319 m!2642225))

(assert (=> bm!132094 m!2642057))

(assert (=> bm!132094 m!2642135))

(declare-fun m!2642227 () Bool)

(assert (=> b!2199321 m!2642227))

(assert (=> b!2199171 d!658273))

(declare-fun d!658275 () Bool)

(declare-fun list!9848 (Conc!8326) List!25673)

(assert (=> d!658275 (= (list!9846 totalInput!923) (list!9848 (c!350694 totalInput!923)))))

(declare-fun bs!450477 () Bool)

(assert (= bs!450477 d!658275))

(declare-fun m!2642229 () Bool)

(assert (=> bs!450477 m!2642229))

(assert (=> b!2199171 d!658275))

(declare-fun d!658277 () Bool)

(declare-fun isBalanced!2567 (Conc!8326) Bool)

(assert (=> d!658277 (= (inv!34310 totalInput!923) (isBalanced!2567 (c!350694 totalInput!923)))))

(declare-fun bs!450478 () Bool)

(assert (= bs!450478 d!658277))

(declare-fun m!2642231 () Bool)

(assert (=> bs!450478 m!2642231))

(assert (=> start!213516 d!658277))

(declare-fun d!658279 () Bool)

(declare-fun lambda!82874 () Int)

(declare-fun forall!5239 (List!25672 Int) Bool)

(assert (=> d!658279 (= (inv!34309 setElem!18867) (forall!5239 (exprs!2260 setElem!18867) lambda!82874))))

(declare-fun bs!450479 () Bool)

(assert (= bs!450479 d!658279))

(declare-fun m!2642233 () Bool)

(assert (=> bs!450479 m!2642233))

(assert (=> setNonEmpty!18867 d!658279))

(declare-fun d!658281 () Bool)

(declare-fun c!350753 () Bool)

(assert (=> d!658281 (= c!350753 (isEmpty!14599 lt!822581))))

(declare-fun e!1405489 () Bool)

(assert (=> d!658281 (= (matchZipper!276 lt!822584 lt!822581) e!1405489)))

(declare-fun b!2199322 () Bool)

(assert (=> b!2199322 (= e!1405489 (nullableZipper!470 lt!822584))))

(declare-fun b!2199323 () Bool)

(assert (=> b!2199323 (= e!1405489 (matchZipper!276 (derivationStepZipper!262 lt!822584 (head!4691 lt!822581)) (tail!3163 lt!822581)))))

(assert (= (and d!658281 c!350753) b!2199322))

(assert (= (and d!658281 (not c!350753)) b!2199323))

(declare-fun m!2642235 () Bool)

(assert (=> d!658281 m!2642235))

(assert (=> b!2199322 m!2642071))

(declare-fun m!2642237 () Bool)

(assert (=> b!2199323 m!2642237))

(assert (=> b!2199323 m!2642237))

(declare-fun m!2642239 () Bool)

(assert (=> b!2199323 m!2642239))

(declare-fun m!2642241 () Bool)

(assert (=> b!2199323 m!2642241))

(assert (=> b!2199323 m!2642239))

(assert (=> b!2199323 m!2642241))

(declare-fun m!2642243 () Bool)

(assert (=> b!2199323 m!2642243))

(assert (=> b!2199172 d!658281))

(declare-fun b!2199324 () Bool)

(declare-fun e!1405491 () Int)

(declare-fun e!1405493 () Int)

(assert (=> b!2199324 (= e!1405491 e!1405493)))

(declare-fun c!350754 () Bool)

(assert (=> b!2199324 (= c!350754 (>= lt!822577 (size!19952 (drop!1378 lt!822576 (+ 1 from!1114)))))))

(declare-fun b!2199325 () Bool)

(declare-fun e!1405492 () List!25673)

(assert (=> b!2199325 (= e!1405492 (Cons!25589 (h!30990 (drop!1378 lt!822576 (+ 1 from!1114))) (take!368 (t!198291 (drop!1378 lt!822576 (+ 1 from!1114))) (- lt!822577 1))))))

(declare-fun b!2199326 () Bool)

(assert (=> b!2199326 (= e!1405491 0)))

(declare-fun b!2199327 () Bool)

(assert (=> b!2199327 (= e!1405493 lt!822577)))

(declare-fun b!2199328 () Bool)

(assert (=> b!2199328 (= e!1405493 (size!19952 (drop!1378 lt!822576 (+ 1 from!1114))))))

(declare-fun d!658283 () Bool)

(declare-fun e!1405490 () Bool)

(assert (=> d!658283 e!1405490))

(declare-fun res!945196 () Bool)

(assert (=> d!658283 (=> (not res!945196) (not e!1405490))))

(declare-fun lt!822673 () List!25673)

(assert (=> d!658283 (= res!945196 (set.subset (content!3478 lt!822673) (content!3478 (drop!1378 lt!822576 (+ 1 from!1114)))))))

(assert (=> d!658283 (= lt!822673 e!1405492)))

(declare-fun c!350755 () Bool)

(assert (=> d!658283 (= c!350755 (or (is-Nil!25589 (drop!1378 lt!822576 (+ 1 from!1114))) (<= lt!822577 0)))))

(assert (=> d!658283 (= (take!368 (drop!1378 lt!822576 (+ 1 from!1114)) lt!822577) lt!822673)))

(declare-fun b!2199329 () Bool)

(assert (=> b!2199329 (= e!1405490 (= (size!19952 lt!822673) e!1405491))))

(declare-fun c!350756 () Bool)

(assert (=> b!2199329 (= c!350756 (<= lt!822577 0))))

(declare-fun b!2199330 () Bool)

(assert (=> b!2199330 (= e!1405492 Nil!25589)))

(assert (= (and d!658283 c!350755) b!2199330))

(assert (= (and d!658283 (not c!350755)) b!2199325))

(assert (= (and d!658283 res!945196) b!2199329))

(assert (= (and b!2199329 c!350756) b!2199326))

(assert (= (and b!2199329 (not c!350756)) b!2199324))

(assert (= (and b!2199324 c!350754) b!2199328))

(assert (= (and b!2199324 (not c!350754)) b!2199327))

(declare-fun m!2642245 () Bool)

(assert (=> b!2199325 m!2642245))

(declare-fun m!2642247 () Bool)

(assert (=> d!658283 m!2642247))

(assert (=> d!658283 m!2642053))

(declare-fun m!2642249 () Bool)

(assert (=> d!658283 m!2642249))

(assert (=> b!2199324 m!2642053))

(declare-fun m!2642251 () Bool)

(assert (=> b!2199324 m!2642251))

(declare-fun m!2642253 () Bool)

(assert (=> b!2199329 m!2642253))

(assert (=> b!2199328 m!2642053))

(assert (=> b!2199328 m!2642251))

(assert (=> b!2199172 d!658283))

(declare-fun b!2199331 () Bool)

(declare-fun e!1405495 () Int)

(declare-fun call!132100 () Int)

(assert (=> b!2199331 (= e!1405495 call!132100)))

(declare-fun b!2199332 () Bool)

(declare-fun e!1405496 () List!25673)

(assert (=> b!2199332 (= e!1405496 lt!822576)))

(declare-fun b!2199333 () Bool)

(declare-fun e!1405498 () List!25673)

(assert (=> b!2199333 (= e!1405498 Nil!25589)))

(declare-fun b!2199334 () Bool)

(declare-fun e!1405494 () Int)

(assert (=> b!2199334 (= e!1405494 0)))

(declare-fun b!2199335 () Bool)

(assert (=> b!2199335 (= e!1405494 (- call!132100 (+ 1 from!1114)))))

(declare-fun d!658285 () Bool)

(declare-fun e!1405497 () Bool)

(assert (=> d!658285 e!1405497))

(declare-fun res!945197 () Bool)

(assert (=> d!658285 (=> (not res!945197) (not e!1405497))))

(declare-fun lt!822674 () List!25673)

(assert (=> d!658285 (= res!945197 (set.subset (content!3478 lt!822674) (content!3478 lt!822576)))))

(assert (=> d!658285 (= lt!822674 e!1405498)))

(declare-fun c!350760 () Bool)

(assert (=> d!658285 (= c!350760 (is-Nil!25589 lt!822576))))

(assert (=> d!658285 (= (drop!1378 lt!822576 (+ 1 from!1114)) lt!822674)))

(declare-fun b!2199336 () Bool)

(assert (=> b!2199336 (= e!1405498 e!1405496)))

(declare-fun c!350759 () Bool)

(assert (=> b!2199336 (= c!350759 (<= (+ 1 from!1114) 0))))

(declare-fun b!2199337 () Bool)

(assert (=> b!2199337 (= e!1405497 (= (size!19952 lt!822674) e!1405495))))

(declare-fun c!350758 () Bool)

(assert (=> b!2199337 (= c!350758 (<= (+ 1 from!1114) 0))))

(declare-fun bm!132095 () Bool)

(assert (=> bm!132095 (= call!132100 (size!19952 lt!822576))))

(declare-fun b!2199338 () Bool)

(assert (=> b!2199338 (= e!1405495 e!1405494)))

(declare-fun c!350757 () Bool)

(assert (=> b!2199338 (= c!350757 (>= (+ 1 from!1114) call!132100))))

(declare-fun b!2199339 () Bool)

(assert (=> b!2199339 (= e!1405496 (drop!1378 (t!198291 lt!822576) (- (+ 1 from!1114) 1)))))

(assert (= (and d!658285 c!350760) b!2199333))

(assert (= (and d!658285 (not c!350760)) b!2199336))

(assert (= (and b!2199336 c!350759) b!2199332))

(assert (= (and b!2199336 (not c!350759)) b!2199339))

(assert (= (and d!658285 res!945197) b!2199337))

(assert (= (and b!2199337 c!350758) b!2199331))

(assert (= (and b!2199337 (not c!350758)) b!2199338))

(assert (= (and b!2199338 c!350757) b!2199334))

(assert (= (and b!2199338 (not c!350757)) b!2199335))

(assert (= (or b!2199331 b!2199338 b!2199335) bm!132095))

(declare-fun m!2642255 () Bool)

(assert (=> d!658285 m!2642255))

(declare-fun m!2642257 () Bool)

(assert (=> d!658285 m!2642257))

(declare-fun m!2642259 () Bool)

(assert (=> b!2199337 m!2642259))

(assert (=> bm!132095 m!2642059))

(declare-fun m!2642261 () Bool)

(assert (=> b!2199339 m!2642261))

(assert (=> b!2199172 d!658285))

(assert (=> b!2199172 d!658275))

(declare-fun d!658287 () Bool)

(declare-fun lt!822677 () Int)

(assert (=> d!658287 (>= lt!822677 0)))

(declare-fun e!1405501 () Int)

(assert (=> d!658287 (= lt!822677 e!1405501)))

(declare-fun c!350763 () Bool)

(assert (=> d!658287 (= c!350763 (is-Nil!25589 lt!822576))))

(assert (=> d!658287 (= (size!19952 lt!822576) lt!822677)))

(declare-fun b!2199344 () Bool)

(assert (=> b!2199344 (= e!1405501 0)))

(declare-fun b!2199345 () Bool)

(assert (=> b!2199345 (= e!1405501 (+ 1 (size!19952 (t!198291 lt!822576))))))

(assert (= (and d!658287 c!350763) b!2199344))

(assert (= (and d!658287 (not c!350763)) b!2199345))

(declare-fun m!2642263 () Bool)

(assert (=> b!2199345 m!2642263))

(assert (=> b!2199174 d!658287))

(declare-fun d!658289 () Bool)

(declare-fun e!1405507 () Bool)

(assert (=> d!658289 e!1405507))

(declare-fun res!945202 () Bool)

(assert (=> d!658289 (=> res!945202 e!1405507)))

(declare-fun lt!822682 () Int)

(assert (=> d!658289 (= res!945202 (<= lt!822682 0))))

(assert (=> d!658289 (= lt!822682 (+ (- (furthestNullablePosition!358 lt!822584 (+ 1 from!1114) totalInput!923 (size!19951 totalInput!923) lt!822579) (+ 1 from!1114)) 1))))

(declare-fun lt!822683 () Unit!38717)

(declare-fun choose!13021 ((Set Context!3520) Int BalanceConc!16414 Int) Unit!38717)

(assert (=> d!658289 (= lt!822683 (choose!13021 lt!822584 (+ 1 from!1114) totalInput!923 lt!822579))))

(declare-fun e!1405506 () Bool)

(assert (=> d!658289 e!1405506))

(declare-fun res!945203 () Bool)

(assert (=> d!658289 (=> (not res!945203) (not e!1405506))))

(assert (=> d!658289 (= res!945203 (>= (+ 1 from!1114) 0))))

(assert (=> d!658289 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!179 lt!822584 (+ 1 from!1114) totalInput!923 lt!822579) lt!822683)))

(declare-fun b!2199350 () Bool)

(assert (=> b!2199350 (= e!1405506 (<= (+ 1 from!1114) (size!19951 totalInput!923)))))

(declare-fun b!2199351 () Bool)

(assert (=> b!2199351 (= e!1405507 (matchZipper!276 lt!822584 (take!368 (drop!1378 (list!9846 totalInput!923) (+ 1 from!1114)) lt!822682)))))

(assert (= (and d!658289 res!945203) b!2199350))

(assert (= (and d!658289 (not res!945202)) b!2199351))

(assert (=> d!658289 m!2642089))

(assert (=> d!658289 m!2642089))

(declare-fun m!2642265 () Bool)

(assert (=> d!658289 m!2642265))

(declare-fun m!2642267 () Bool)

(assert (=> d!658289 m!2642267))

(assert (=> b!2199350 m!2642089))

(assert (=> b!2199351 m!2642057))

(assert (=> b!2199351 m!2642057))

(assert (=> b!2199351 m!2642081))

(assert (=> b!2199351 m!2642081))

(declare-fun m!2642269 () Bool)

(assert (=> b!2199351 m!2642269))

(assert (=> b!2199351 m!2642269))

(declare-fun m!2642271 () Bool)

(assert (=> b!2199351 m!2642271))

(assert (=> b!2199164 d!658289))

(declare-fun b!2199356 () Bool)

(declare-fun e!1405510 () Bool)

(declare-fun tp!684497 () Bool)

(declare-fun tp!684498 () Bool)

(assert (=> b!2199356 (= e!1405510 (and tp!684497 tp!684498))))

(assert (=> b!2199162 (= tp!684482 e!1405510)))

(assert (= (and b!2199162 (is-Cons!25588 (exprs!2260 setElem!18867))) b!2199356))

(declare-fun condSetEmpty!18873 () Bool)

(assert (=> setNonEmpty!18867 (= condSetEmpty!18873 (= setRest!18867 (as set.empty (Set Context!3520))))))

(declare-fun setRes!18873 () Bool)

(assert (=> setNonEmpty!18867 (= tp!684483 setRes!18873)))

(declare-fun setIsEmpty!18873 () Bool)

(assert (=> setIsEmpty!18873 setRes!18873))

(declare-fun e!1405513 () Bool)

(declare-fun setElem!18873 () Context!3520)

(declare-fun tp!684503 () Bool)

(declare-fun setNonEmpty!18873 () Bool)

(assert (=> setNonEmpty!18873 (= setRes!18873 (and tp!684503 (inv!34309 setElem!18873) e!1405513))))

(declare-fun setRest!18873 () (Set Context!3520))

(assert (=> setNonEmpty!18873 (= setRest!18867 (set.union (set.insert setElem!18873 (as set.empty (Set Context!3520))) setRest!18873))))

(declare-fun b!2199361 () Bool)

(declare-fun tp!684504 () Bool)

(assert (=> b!2199361 (= e!1405513 tp!684504)))

(assert (= (and setNonEmpty!18867 condSetEmpty!18873) setIsEmpty!18873))

(assert (= (and setNonEmpty!18867 (not condSetEmpty!18873)) setNonEmpty!18873))

(assert (= setNonEmpty!18873 b!2199361))

(declare-fun m!2642273 () Bool)

(assert (=> setNonEmpty!18873 m!2642273))

(declare-fun e!1405519 () Bool)

(declare-fun tp!684513 () Bool)

(declare-fun b!2199370 () Bool)

(declare-fun tp!684512 () Bool)

(assert (=> b!2199370 (= e!1405519 (and (inv!34311 (left!19652 (c!350694 totalInput!923))) tp!684512 (inv!34311 (right!19982 (c!350694 totalInput!923))) tp!684513))))

(declare-fun b!2199372 () Bool)

(declare-fun e!1405518 () Bool)

(declare-fun tp!684511 () Bool)

(assert (=> b!2199372 (= e!1405518 tp!684511)))

(declare-fun b!2199371 () Bool)

(declare-fun inv!34317 (IArray!16657) Bool)

(assert (=> b!2199371 (= e!1405519 (and (inv!34317 (xs!11268 (c!350694 totalInput!923))) e!1405518))))

(assert (=> b!2199167 (= tp!684481 (and (inv!34311 (c!350694 totalInput!923)) e!1405519))))

(assert (= (and b!2199167 (is-Node!8326 (c!350694 totalInput!923))) b!2199370))

(assert (= b!2199371 b!2199372))

(assert (= (and b!2199167 (is-Leaf!12189 (c!350694 totalInput!923))) b!2199371))

(declare-fun m!2642275 () Bool)

(assert (=> b!2199370 m!2642275))

(declare-fun m!2642277 () Bool)

(assert (=> b!2199370 m!2642277))

(declare-fun m!2642279 () Bool)

(assert (=> b!2199371 m!2642279))

(assert (=> b!2199167 m!2642075))

(push 1)

(assert (not d!658283))

(assert (not d!658255))

(assert (not b!2199167))

(assert (not d!658271))

(assert (not b!2199328))

(assert (not b!2199260))

(assert (not b!2199239))

(assert (not b!2199339))

(assert (not b!2199372))

(assert (not b!2199245))

(assert (not b!2199256))

(assert (not b!2199270))

(assert (not d!658267))

(assert (not b!2199226))

(assert (not b!2199323))

(assert (not d!658265))

(assert (not setNonEmpty!18873))

(assert (not d!658263))

(assert (not d!658277))

(assert (not b!2199272))

(assert (not b!2199293))

(assert (not b!2199337))

(assert (not d!658247))

(assert (not d!658279))

(assert (not b!2199289))

(assert (not b!2199324))

(assert (not b!2199350))

(assert (not d!658269))

(assert (not bm!132094))

(assert (not b!2199288))

(assert (not b!2199329))

(assert (not b!2199325))

(assert (not b!2199273))

(assert (not d!658289))

(assert (not b!2199240))

(assert (not b!2199345))

(assert (not b!2199261))

(assert (not b!2199371))

(assert (not bm!132095))

(assert (not b!2199351))

(assert (not b!2199361))

(assert (not bm!132091))

(assert (not b!2199292))

(assert (not d!658281))

(assert (not d!658273))

(assert (not b!2199322))

(assert (not d!658257))

(assert (not b!2199271))

(assert (not b!2199228))

(assert (not d!658275))

(assert (not bm!132090))

(assert (not b!2199319))

(assert (not b!2199265))

(assert (not d!658251))

(assert (not d!658285))

(assert (not b!2199370))

(assert (not b!2199356))

(assert (not b!2199321))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


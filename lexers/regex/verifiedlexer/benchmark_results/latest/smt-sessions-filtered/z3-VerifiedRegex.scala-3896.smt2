; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214230 () Bool)

(assert start!214230)

(declare-fun b!2204216 () Bool)

(declare-fun res!947529 () Bool)

(declare-fun e!1408260 () Bool)

(assert (=> b!2204216 (=> (not res!947529) (not e!1408260))))

(declare-fun e!1408263 () Bool)

(assert (=> b!2204216 (= res!947529 e!1408263)))

(declare-fun res!947537 () Bool)

(assert (=> b!2204216 (=> res!947537 e!1408263)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12664 0))(
  ( (C!12665 (val!7318 Int)) )
))
(declare-datatypes ((Regex!6259 0))(
  ( (ElementMatch!6259 (c!351800 C!12664)) (Concat!10561 (regOne!13030 Regex!6259) (regTwo!13030 Regex!6259)) (EmptyExpr!6259) (Star!6259 (reg!6588 Regex!6259)) (EmptyLang!6259) (Union!6259 (regOne!13031 Regex!6259) (regTwo!13031 Regex!6259)) )
))
(declare-datatypes ((List!25818 0))(
  ( (Nil!25734) (Cons!25734 (h!31135 Regex!6259) (t!198452 List!25818)) )
))
(declare-datatypes ((Context!3658 0))(
  ( (Context!3659 (exprs!2329 List!25818)) )
))
(declare-fun z!3888 () (InoxSet Context!3658))

(declare-fun nullableZipper!539 ((InoxSet Context!3658)) Bool)

(assert (=> b!2204216 (= res!947537 (not (nullableZipper!539 z!3888)))))

(declare-fun b!2204218 () Bool)

(declare-fun lastNullablePos!161 () Int)

(declare-fun from!1082 () Int)

(assert (=> b!2204218 (= e!1408263 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2204219 () Bool)

(declare-fun res!947535 () Bool)

(assert (=> b!2204219 (=> (not res!947535) (not e!1408260))))

(declare-fun lostCauseZipper!359 ((InoxSet Context!3658)) Bool)

(assert (=> b!2204219 (= res!947535 (not (lostCauseZipper!359 z!3888)))))

(declare-fun b!2204220 () Bool)

(declare-fun e!1408266 () Bool)

(assert (=> b!2204220 (= e!1408260 (not e!1408266))))

(declare-fun res!947534 () Bool)

(assert (=> b!2204220 (=> res!947534 e!1408266)))

(declare-datatypes ((List!25819 0))(
  ( (Nil!25735) (Cons!25735 (h!31136 C!12664) (t!198453 List!25819)) )
))
(declare-fun lt!824204 () List!25819)

(declare-fun lt!824208 () List!25819)

(declare-fun tail!3188 (List!25819) List!25819)

(assert (=> b!2204220 (= res!947534 (not (= lt!824204 (tail!3188 lt!824208))))))

(declare-fun knownSize!10 () Int)

(declare-fun lt!824206 () C!12664)

(declare-fun lt!824200 () List!25819)

(declare-fun take!437 (List!25819 Int) List!25819)

(assert (=> b!2204220 (= (Cons!25735 lt!824206 lt!824204) (take!437 lt!824200 (+ 1 (- knownSize!10 1))))))

(declare-fun lt!824203 () List!25819)

(declare-fun drop!1447 (List!25819 Int) List!25819)

(assert (=> b!2204220 (= lt!824204 (take!437 (drop!1447 lt!824203 (+ 1 from!1082)) (- knownSize!10 1)))))

(declare-fun apply!6332 (List!25819 Int) C!12664)

(assert (=> b!2204220 (= lt!824206 (apply!6332 lt!824203 from!1082))))

(declare-datatypes ((Unit!38819 0))(
  ( (Unit!38820) )
))
(declare-fun lt!824205 () Unit!38819)

(declare-fun lemmaDropTakeAddOneLeft!36 (List!25819 Int Int) Unit!38819)

(assert (=> b!2204220 (= lt!824205 (lemmaDropTakeAddOneLeft!36 lt!824203 from!1082 (- knownSize!10 1)))))

(declare-fun e!1408262 () Int)

(declare-datatypes ((IArray!16795 0))(
  ( (IArray!16796 (innerList!8455 List!25819)) )
))
(declare-datatypes ((Conc!8395 0))(
  ( (Node!8395 (left!19771 Conc!8395) (right!20101 Conc!8395) (csize!17020 Int) (cheight!8606 Int)) (Leaf!12292 (xs!11337 IArray!16795) (csize!17021 Int)) (Empty!8395) )
))
(declare-datatypes ((BalanceConc!16552 0))(
  ( (BalanceConc!16553 (c!351801 Conc!8395)) )
))
(declare-fun totalInput!891 () BalanceConc!16552)

(declare-fun lt!824207 () Int)

(declare-fun lt!824202 () Int)

(declare-fun lt!824201 () (InoxSet Context!3658))

(declare-fun furthestNullablePosition!397 ((InoxSet Context!3658) Int BalanceConc!16552 Int Int) Int)

(assert (=> b!2204220 (= lt!824202 (furthestNullablePosition!397 lt!824201 (+ 1 from!1082) totalInput!891 lt!824207 e!1408262))))

(declare-fun c!351799 () Bool)

(assert (=> b!2204220 (= c!351799 (nullableZipper!539 lt!824201))))

(declare-fun derivationStepZipper!301 ((InoxSet Context!3658) C!12664) (InoxSet Context!3658))

(declare-fun apply!6333 (BalanceConc!16552 Int) C!12664)

(assert (=> b!2204220 (= lt!824201 (derivationStepZipper!301 z!3888 (apply!6333 totalInput!891 from!1082)))))

(declare-fun b!2204221 () Bool)

(declare-fun e!1408261 () Bool)

(assert (=> b!2204221 (= e!1408261 e!1408260)))

(declare-fun res!947533 () Bool)

(assert (=> b!2204221 (=> (not res!947533) (not e!1408260))))

(declare-fun matchZipper!345 ((InoxSet Context!3658) List!25819) Bool)

(assert (=> b!2204221 (= res!947533 (matchZipper!345 z!3888 lt!824208))))

(assert (=> b!2204221 (= lt!824208 (take!437 lt!824200 knownSize!10))))

(assert (=> b!2204221 (= lt!824200 (drop!1447 lt!824203 from!1082))))

(declare-fun list!9935 (BalanceConc!16552) List!25819)

(assert (=> b!2204221 (= lt!824203 (list!9935 totalInput!891))))

(declare-fun b!2204222 () Bool)

(declare-fun e!1408264 () Bool)

(declare-fun tp!685602 () Bool)

(declare-fun inv!34670 (Conc!8395) Bool)

(assert (=> b!2204222 (= e!1408264 (and (inv!34670 (c!351801 totalInput!891)) tp!685602))))

(declare-fun b!2204223 () Bool)

(declare-fun e!1408265 () Bool)

(declare-fun tp!685601 () Bool)

(assert (=> b!2204223 (= e!1408265 tp!685601)))

(declare-fun res!947530 () Bool)

(declare-fun e!1408267 () Bool)

(assert (=> start!214230 (=> (not res!947530) (not e!1408267))))

(assert (=> start!214230 (= res!947530 (>= from!1082 0))))

(assert (=> start!214230 e!1408267))

(assert (=> start!214230 true))

(declare-fun inv!34671 (BalanceConc!16552) Bool)

(assert (=> start!214230 (and (inv!34671 totalInput!891) e!1408264)))

(declare-fun condSetEmpty!19132 () Bool)

(assert (=> start!214230 (= condSetEmpty!19132 (= z!3888 ((as const (Array Context!3658 Bool)) false)))))

(declare-fun setRes!19132 () Bool)

(assert (=> start!214230 setRes!19132))

(declare-fun b!2204217 () Bool)

(declare-fun res!947531 () Bool)

(assert (=> b!2204217 (=> (not res!947531) (not e!1408260))))

(assert (=> b!2204217 (= res!947531 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2204224 () Bool)

(assert (=> b!2204224 (= e!1408262 lastNullablePos!161)))

(declare-fun tp!685600 () Bool)

(declare-fun setElem!19132 () Context!3658)

(declare-fun setNonEmpty!19132 () Bool)

(declare-fun inv!34672 (Context!3658) Bool)

(assert (=> setNonEmpty!19132 (= setRes!19132 (and tp!685600 (inv!34672 setElem!19132) e!1408265))))

(declare-fun setRest!19132 () (InoxSet Context!3658))

(assert (=> setNonEmpty!19132 (= z!3888 ((_ map or) (store ((as const (Array Context!3658 Bool)) false) setElem!19132 true) setRest!19132))))

(declare-fun b!2204225 () Bool)

(declare-fun res!947532 () Bool)

(assert (=> b!2204225 (=> (not res!947532) (not e!1408260))))

(declare-fun isEmpty!14712 (BalanceConc!16552) Bool)

(assert (=> b!2204225 (= res!947532 (not (isEmpty!14712 totalInput!891)))))

(declare-fun b!2204226 () Bool)

(assert (=> b!2204226 (= e!1408267 e!1408261)))

(declare-fun res!947528 () Bool)

(assert (=> b!2204226 (=> (not res!947528) (not e!1408261))))

(assert (=> b!2204226 (= res!947528 (and (<= from!1082 lt!824207) (>= knownSize!10 0) (<= knownSize!10 (- lt!824207 from!1082))))))

(declare-fun size!20054 (BalanceConc!16552) Int)

(assert (=> b!2204226 (= lt!824207 (size!20054 totalInput!891))))

(declare-fun b!2204227 () Bool)

(assert (=> b!2204227 (= e!1408262 from!1082)))

(declare-fun b!2204228 () Bool)

(declare-fun res!947536 () Bool)

(assert (=> b!2204228 (=> (not res!947536) (not e!1408260))))

(assert (=> b!2204228 (= res!947536 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!824207))))))

(declare-fun setIsEmpty!19132 () Bool)

(assert (=> setIsEmpty!19132 setRes!19132))

(declare-fun b!2204229 () Bool)

(assert (=> b!2204229 (= e!1408266 (matchZipper!345 lt!824201 lt!824204))))

(assert (= (and start!214230 res!947530) b!2204226))

(assert (= (and b!2204226 res!947528) b!2204221))

(assert (= (and b!2204221 res!947533) b!2204217))

(assert (= (and b!2204217 res!947531) b!2204216))

(assert (= (and b!2204216 (not res!947537)) b!2204218))

(assert (= (and b!2204216 res!947529) b!2204225))

(assert (= (and b!2204225 res!947532) b!2204228))

(assert (= (and b!2204228 res!947536) b!2204219))

(assert (= (and b!2204219 res!947535) b!2204220))

(assert (= (and b!2204220 c!351799) b!2204227))

(assert (= (and b!2204220 (not c!351799)) b!2204224))

(assert (= (and b!2204220 (not res!947534)) b!2204229))

(assert (= start!214230 b!2204222))

(assert (= (and start!214230 condSetEmpty!19132) setIsEmpty!19132))

(assert (= (and start!214230 (not condSetEmpty!19132)) setNonEmpty!19132))

(assert (= setNonEmpty!19132 b!2204223))

(declare-fun m!2646011 () Bool)

(assert (=> b!2204229 m!2646011))

(declare-fun m!2646013 () Bool)

(assert (=> b!2204222 m!2646013))

(declare-fun m!2646015 () Bool)

(assert (=> b!2204226 m!2646015))

(declare-fun m!2646017 () Bool)

(assert (=> b!2204220 m!2646017))

(declare-fun m!2646019 () Bool)

(assert (=> b!2204220 m!2646019))

(declare-fun m!2646021 () Bool)

(assert (=> b!2204220 m!2646021))

(declare-fun m!2646023 () Bool)

(assert (=> b!2204220 m!2646023))

(assert (=> b!2204220 m!2646019))

(declare-fun m!2646025 () Bool)

(assert (=> b!2204220 m!2646025))

(declare-fun m!2646027 () Bool)

(assert (=> b!2204220 m!2646027))

(assert (=> b!2204220 m!2646027))

(declare-fun m!2646029 () Bool)

(assert (=> b!2204220 m!2646029))

(declare-fun m!2646031 () Bool)

(assert (=> b!2204220 m!2646031))

(declare-fun m!2646033 () Bool)

(assert (=> b!2204220 m!2646033))

(declare-fun m!2646035 () Bool)

(assert (=> b!2204220 m!2646035))

(declare-fun m!2646037 () Bool)

(assert (=> b!2204216 m!2646037))

(declare-fun m!2646039 () Bool)

(assert (=> b!2204221 m!2646039))

(declare-fun m!2646041 () Bool)

(assert (=> b!2204221 m!2646041))

(declare-fun m!2646043 () Bool)

(assert (=> b!2204221 m!2646043))

(declare-fun m!2646045 () Bool)

(assert (=> b!2204221 m!2646045))

(declare-fun m!2646047 () Bool)

(assert (=> start!214230 m!2646047))

(declare-fun m!2646049 () Bool)

(assert (=> b!2204225 m!2646049))

(declare-fun m!2646051 () Bool)

(assert (=> b!2204219 m!2646051))

(declare-fun m!2646053 () Bool)

(assert (=> setNonEmpty!19132 m!2646053))

(check-sat (not b!2204220) (not b!2204222) (not b!2204223) (not start!214230) (not b!2204226) (not b!2204229) (not b!2204219) (not b!2204216) (not b!2204225) (not b!2204221) (not setNonEmpty!19132))
(check-sat)
(get-model)

(declare-fun d!659023 () Bool)

(declare-fun lt!824211 () Int)

(declare-fun size!20055 (List!25819) Int)

(assert (=> d!659023 (= lt!824211 (size!20055 (list!9935 totalInput!891)))))

(declare-fun size!20056 (Conc!8395) Int)

(assert (=> d!659023 (= lt!824211 (size!20056 (c!351801 totalInput!891)))))

(assert (=> d!659023 (= (size!20054 totalInput!891) lt!824211)))

(declare-fun bs!450743 () Bool)

(assert (= bs!450743 d!659023))

(assert (=> bs!450743 m!2646045))

(assert (=> bs!450743 m!2646045))

(declare-fun m!2646055 () Bool)

(assert (=> bs!450743 m!2646055))

(declare-fun m!2646057 () Bool)

(assert (=> bs!450743 m!2646057))

(assert (=> b!2204226 d!659023))

(declare-fun d!659025 () Bool)

(declare-fun lambda!83086 () Int)

(declare-fun exists!849 ((InoxSet Context!3658) Int) Bool)

(assert (=> d!659025 (= (nullableZipper!539 z!3888) (exists!849 z!3888 lambda!83086))))

(declare-fun bs!450745 () Bool)

(assert (= bs!450745 d!659025))

(declare-fun m!2646065 () Bool)

(assert (=> bs!450745 m!2646065))

(assert (=> b!2204216 d!659025))

(declare-fun d!659033 () Bool)

(declare-fun c!351811 () Bool)

(declare-fun isEmpty!14713 (List!25819) Bool)

(assert (=> d!659033 (= c!351811 (isEmpty!14713 lt!824208))))

(declare-fun e!1408276 () Bool)

(assert (=> d!659033 (= (matchZipper!345 z!3888 lt!824208) e!1408276)))

(declare-fun b!2204243 () Bool)

(assert (=> b!2204243 (= e!1408276 (nullableZipper!539 z!3888))))

(declare-fun b!2204244 () Bool)

(declare-fun head!4709 (List!25819) C!12664)

(assert (=> b!2204244 (= e!1408276 (matchZipper!345 (derivationStepZipper!301 z!3888 (head!4709 lt!824208)) (tail!3188 lt!824208)))))

(assert (= (and d!659033 c!351811) b!2204243))

(assert (= (and d!659033 (not c!351811)) b!2204244))

(declare-fun m!2646067 () Bool)

(assert (=> d!659033 m!2646067))

(assert (=> b!2204243 m!2646037))

(declare-fun m!2646069 () Bool)

(assert (=> b!2204244 m!2646069))

(assert (=> b!2204244 m!2646069))

(declare-fun m!2646071 () Bool)

(assert (=> b!2204244 m!2646071))

(assert (=> b!2204244 m!2646023))

(assert (=> b!2204244 m!2646071))

(assert (=> b!2204244 m!2646023))

(declare-fun m!2646073 () Bool)

(assert (=> b!2204244 m!2646073))

(assert (=> b!2204221 d!659033))

(declare-fun b!2204261 () Bool)

(declare-fun e!1408288 () Int)

(assert (=> b!2204261 (= e!1408288 (size!20055 lt!824200))))

(declare-fun d!659035 () Bool)

(declare-fun e!1408287 () Bool)

(assert (=> d!659035 e!1408287))

(declare-fun res!947543 () Bool)

(assert (=> d!659035 (=> (not res!947543) (not e!1408287))))

(declare-fun lt!824214 () List!25819)

(declare-fun content!3495 (List!25819) (InoxSet C!12664))

(assert (=> d!659035 (= res!947543 (= ((_ map implies) (content!3495 lt!824214) (content!3495 lt!824200)) ((as const (InoxSet C!12664)) true)))))

(declare-fun e!1408285 () List!25819)

(assert (=> d!659035 (= lt!824214 e!1408285)))

(declare-fun c!351818 () Bool)

(get-info :version)

(assert (=> d!659035 (= c!351818 (or ((_ is Nil!25735) lt!824200) (<= knownSize!10 0)))))

(assert (=> d!659035 (= (take!437 lt!824200 knownSize!10) lt!824214)))

(declare-fun b!2204262 () Bool)

(declare-fun e!1408286 () Int)

(assert (=> b!2204262 (= e!1408286 e!1408288)))

(declare-fun c!351819 () Bool)

(assert (=> b!2204262 (= c!351819 (>= knownSize!10 (size!20055 lt!824200)))))

(declare-fun b!2204263 () Bool)

(assert (=> b!2204263 (= e!1408288 knownSize!10)))

(declare-fun b!2204264 () Bool)

(assert (=> b!2204264 (= e!1408286 0)))

(declare-fun b!2204265 () Bool)

(assert (=> b!2204265 (= e!1408285 Nil!25735)))

(declare-fun b!2204266 () Bool)

(assert (=> b!2204266 (= e!1408285 (Cons!25735 (h!31136 lt!824200) (take!437 (t!198453 lt!824200) (- knownSize!10 1))))))

(declare-fun b!2204267 () Bool)

(assert (=> b!2204267 (= e!1408287 (= (size!20055 lt!824214) e!1408286))))

(declare-fun c!351820 () Bool)

(assert (=> b!2204267 (= c!351820 (<= knownSize!10 0))))

(assert (= (and d!659035 c!351818) b!2204265))

(assert (= (and d!659035 (not c!351818)) b!2204266))

(assert (= (and d!659035 res!947543) b!2204267))

(assert (= (and b!2204267 c!351820) b!2204264))

(assert (= (and b!2204267 (not c!351820)) b!2204262))

(assert (= (and b!2204262 c!351819) b!2204261))

(assert (= (and b!2204262 (not c!351819)) b!2204263))

(declare-fun m!2646077 () Bool)

(assert (=> b!2204267 m!2646077))

(declare-fun m!2646079 () Bool)

(assert (=> b!2204261 m!2646079))

(assert (=> b!2204262 m!2646079))

(declare-fun m!2646081 () Bool)

(assert (=> b!2204266 m!2646081))

(declare-fun m!2646083 () Bool)

(assert (=> d!659035 m!2646083))

(declare-fun m!2646085 () Bool)

(assert (=> d!659035 m!2646085))

(assert (=> b!2204221 d!659035))

(declare-fun b!2204295 () Bool)

(declare-fun e!1408305 () Int)

(declare-fun call!132191 () Int)

(assert (=> b!2204295 (= e!1408305 (- call!132191 from!1082))))

(declare-fun b!2204296 () Bool)

(declare-fun e!1408306 () List!25819)

(declare-fun e!1408307 () List!25819)

(assert (=> b!2204296 (= e!1408306 e!1408307)))

(declare-fun c!351836 () Bool)

(assert (=> b!2204296 (= c!351836 (<= from!1082 0))))

(declare-fun b!2204297 () Bool)

(assert (=> b!2204297 (= e!1408306 Nil!25735)))

(declare-fun b!2204298 () Bool)

(assert (=> b!2204298 (= e!1408307 lt!824203)))

(declare-fun b!2204299 () Bool)

(assert (=> b!2204299 (= e!1408307 (drop!1447 (t!198453 lt!824203) (- from!1082 1)))))

(declare-fun bm!132186 () Bool)

(assert (=> bm!132186 (= call!132191 (size!20055 lt!824203))))

(declare-fun d!659039 () Bool)

(declare-fun e!1408308 () Bool)

(assert (=> d!659039 e!1408308))

(declare-fun res!947549 () Bool)

(assert (=> d!659039 (=> (not res!947549) (not e!1408308))))

(declare-fun lt!824220 () List!25819)

(assert (=> d!659039 (= res!947549 (= ((_ map implies) (content!3495 lt!824220) (content!3495 lt!824203)) ((as const (InoxSet C!12664)) true)))))

(assert (=> d!659039 (= lt!824220 e!1408306)))

(declare-fun c!351835 () Bool)

(assert (=> d!659039 (= c!351835 ((_ is Nil!25735) lt!824203))))

(assert (=> d!659039 (= (drop!1447 lt!824203 from!1082) lt!824220)))

(declare-fun b!2204300 () Bool)

(declare-fun e!1408309 () Int)

(assert (=> b!2204300 (= e!1408308 (= (size!20055 lt!824220) e!1408309))))

(declare-fun c!351834 () Bool)

(assert (=> b!2204300 (= c!351834 (<= from!1082 0))))

(declare-fun b!2204301 () Bool)

(assert (=> b!2204301 (= e!1408309 e!1408305)))

(declare-fun c!351837 () Bool)

(assert (=> b!2204301 (= c!351837 (>= from!1082 call!132191))))

(declare-fun b!2204302 () Bool)

(assert (=> b!2204302 (= e!1408305 0)))

(declare-fun b!2204303 () Bool)

(assert (=> b!2204303 (= e!1408309 call!132191)))

(assert (= (and d!659039 c!351835) b!2204297))

(assert (= (and d!659039 (not c!351835)) b!2204296))

(assert (= (and b!2204296 c!351836) b!2204298))

(assert (= (and b!2204296 (not c!351836)) b!2204299))

(assert (= (and d!659039 res!947549) b!2204300))

(assert (= (and b!2204300 c!351834) b!2204303))

(assert (= (and b!2204300 (not c!351834)) b!2204301))

(assert (= (and b!2204301 c!351837) b!2204302))

(assert (= (and b!2204301 (not c!351837)) b!2204295))

(assert (= (or b!2204303 b!2204301 b!2204295) bm!132186))

(declare-fun m!2646099 () Bool)

(assert (=> b!2204299 m!2646099))

(declare-fun m!2646101 () Bool)

(assert (=> bm!132186 m!2646101))

(declare-fun m!2646103 () Bool)

(assert (=> d!659039 m!2646103))

(declare-fun m!2646105 () Bool)

(assert (=> d!659039 m!2646105))

(declare-fun m!2646107 () Bool)

(assert (=> b!2204300 m!2646107))

(assert (=> b!2204221 d!659039))

(declare-fun d!659047 () Bool)

(declare-fun list!9936 (Conc!8395) List!25819)

(assert (=> d!659047 (= (list!9935 totalInput!891) (list!9936 (c!351801 totalInput!891)))))

(declare-fun bs!450748 () Bool)

(assert (= bs!450748 d!659047))

(declare-fun m!2646109 () Bool)

(assert (=> bs!450748 m!2646109))

(assert (=> b!2204221 d!659047))

(declare-fun d!659049 () Bool)

(declare-fun lt!824226 () Bool)

(assert (=> d!659049 (= lt!824226 (isEmpty!14713 (list!9935 totalInput!891)))))

(declare-fun isEmpty!14714 (Conc!8395) Bool)

(assert (=> d!659049 (= lt!824226 (isEmpty!14714 (c!351801 totalInput!891)))))

(assert (=> d!659049 (= (isEmpty!14712 totalInput!891) lt!824226)))

(declare-fun bs!450749 () Bool)

(assert (= bs!450749 d!659049))

(assert (=> bs!450749 m!2646045))

(assert (=> bs!450749 m!2646045))

(declare-fun m!2646111 () Bool)

(assert (=> bs!450749 m!2646111))

(declare-fun m!2646113 () Bool)

(assert (=> bs!450749 m!2646113))

(assert (=> b!2204225 d!659049))

(declare-fun d!659051 () Bool)

(declare-fun c!351847 () Bool)

(assert (=> d!659051 (= c!351847 (isEmpty!14713 lt!824204))))

(declare-fun e!1408322 () Bool)

(assert (=> d!659051 (= (matchZipper!345 lt!824201 lt!824204) e!1408322)))

(declare-fun b!2204325 () Bool)

(assert (=> b!2204325 (= e!1408322 (nullableZipper!539 lt!824201))))

(declare-fun b!2204326 () Bool)

(assert (=> b!2204326 (= e!1408322 (matchZipper!345 (derivationStepZipper!301 lt!824201 (head!4709 lt!824204)) (tail!3188 lt!824204)))))

(assert (= (and d!659051 c!351847) b!2204325))

(assert (= (and d!659051 (not c!351847)) b!2204326))

(declare-fun m!2646115 () Bool)

(assert (=> d!659051 m!2646115))

(assert (=> b!2204325 m!2646031))

(declare-fun m!2646119 () Bool)

(assert (=> b!2204326 m!2646119))

(assert (=> b!2204326 m!2646119))

(declare-fun m!2646123 () Bool)

(assert (=> b!2204326 m!2646123))

(declare-fun m!2646127 () Bool)

(assert (=> b!2204326 m!2646127))

(assert (=> b!2204326 m!2646123))

(assert (=> b!2204326 m!2646127))

(declare-fun m!2646133 () Bool)

(assert (=> b!2204326 m!2646133))

(assert (=> b!2204229 d!659051))

(declare-fun d!659055 () Bool)

(assert (=> d!659055 true))

(declare-fun lambda!83095 () Int)

(declare-fun flatMap!166 ((InoxSet Context!3658) Int) (InoxSet Context!3658))

(assert (=> d!659055 (= (derivationStepZipper!301 z!3888 (apply!6333 totalInput!891 from!1082)) (flatMap!166 z!3888 lambda!83095))))

(declare-fun bs!450750 () Bool)

(assert (= bs!450750 d!659055))

(declare-fun m!2646135 () Bool)

(assert (=> bs!450750 m!2646135))

(assert (=> b!2204220 d!659055))

(declare-fun b!2204329 () Bool)

(declare-fun e!1408323 () Int)

(declare-fun call!132192 () Int)

(assert (=> b!2204329 (= e!1408323 (- call!132192 (+ 1 from!1082)))))

(declare-fun b!2204330 () Bool)

(declare-fun e!1408324 () List!25819)

(declare-fun e!1408325 () List!25819)

(assert (=> b!2204330 (= e!1408324 e!1408325)))

(declare-fun c!351852 () Bool)

(assert (=> b!2204330 (= c!351852 (<= (+ 1 from!1082) 0))))

(declare-fun b!2204331 () Bool)

(assert (=> b!2204331 (= e!1408324 Nil!25735)))

(declare-fun b!2204332 () Bool)

(assert (=> b!2204332 (= e!1408325 lt!824203)))

(declare-fun b!2204333 () Bool)

(assert (=> b!2204333 (= e!1408325 (drop!1447 (t!198453 lt!824203) (- (+ 1 from!1082) 1)))))

(declare-fun bm!132187 () Bool)

(assert (=> bm!132187 (= call!132192 (size!20055 lt!824203))))

(declare-fun d!659057 () Bool)

(declare-fun e!1408326 () Bool)

(assert (=> d!659057 e!1408326))

(declare-fun res!947553 () Bool)

(assert (=> d!659057 (=> (not res!947553) (not e!1408326))))

(declare-fun lt!824227 () List!25819)

(assert (=> d!659057 (= res!947553 (= ((_ map implies) (content!3495 lt!824227) (content!3495 lt!824203)) ((as const (InoxSet C!12664)) true)))))

(assert (=> d!659057 (= lt!824227 e!1408324)))

(declare-fun c!351851 () Bool)

(assert (=> d!659057 (= c!351851 ((_ is Nil!25735) lt!824203))))

(assert (=> d!659057 (= (drop!1447 lt!824203 (+ 1 from!1082)) lt!824227)))

(declare-fun b!2204334 () Bool)

(declare-fun e!1408327 () Int)

(assert (=> b!2204334 (= e!1408326 (= (size!20055 lt!824227) e!1408327))))

(declare-fun c!351850 () Bool)

(assert (=> b!2204334 (= c!351850 (<= (+ 1 from!1082) 0))))

(declare-fun b!2204335 () Bool)

(assert (=> b!2204335 (= e!1408327 e!1408323)))

(declare-fun c!351853 () Bool)

(assert (=> b!2204335 (= c!351853 (>= (+ 1 from!1082) call!132192))))

(declare-fun b!2204336 () Bool)

(assert (=> b!2204336 (= e!1408323 0)))

(declare-fun b!2204337 () Bool)

(assert (=> b!2204337 (= e!1408327 call!132192)))

(assert (= (and d!659057 c!351851) b!2204331))

(assert (= (and d!659057 (not c!351851)) b!2204330))

(assert (= (and b!2204330 c!351852) b!2204332))

(assert (= (and b!2204330 (not c!351852)) b!2204333))

(assert (= (and d!659057 res!947553) b!2204334))

(assert (= (and b!2204334 c!351850) b!2204337))

(assert (= (and b!2204334 (not c!351850)) b!2204335))

(assert (= (and b!2204335 c!351853) b!2204336))

(assert (= (and b!2204335 (not c!351853)) b!2204329))

(assert (= (or b!2204337 b!2204335 b!2204329) bm!132187))

(declare-fun m!2646137 () Bool)

(assert (=> b!2204333 m!2646137))

(assert (=> bm!132187 m!2646101))

(declare-fun m!2646139 () Bool)

(assert (=> d!659057 m!2646139))

(assert (=> d!659057 m!2646105))

(declare-fun m!2646141 () Bool)

(assert (=> b!2204334 m!2646141))

(assert (=> b!2204220 d!659057))

(declare-fun b!2204340 () Bool)

(declare-fun e!1408333 () Int)

(assert (=> b!2204340 (= e!1408333 (size!20055 lt!824200))))

(declare-fun d!659059 () Bool)

(declare-fun e!1408332 () Bool)

(assert (=> d!659059 e!1408332))

(declare-fun res!947556 () Bool)

(assert (=> d!659059 (=> (not res!947556) (not e!1408332))))

(declare-fun lt!824230 () List!25819)

(assert (=> d!659059 (= res!947556 (= ((_ map implies) (content!3495 lt!824230) (content!3495 lt!824200)) ((as const (InoxSet C!12664)) true)))))

(declare-fun e!1408330 () List!25819)

(assert (=> d!659059 (= lt!824230 e!1408330)))

(declare-fun c!351854 () Bool)

(assert (=> d!659059 (= c!351854 (or ((_ is Nil!25735) lt!824200) (<= (+ 1 (- knownSize!10 1)) 0)))))

(assert (=> d!659059 (= (take!437 lt!824200 (+ 1 (- knownSize!10 1))) lt!824230)))

(declare-fun b!2204341 () Bool)

(declare-fun e!1408331 () Int)

(assert (=> b!2204341 (= e!1408331 e!1408333)))

(declare-fun c!351855 () Bool)

(assert (=> b!2204341 (= c!351855 (>= (+ 1 (- knownSize!10 1)) (size!20055 lt!824200)))))

(declare-fun b!2204342 () Bool)

(assert (=> b!2204342 (= e!1408333 (+ 1 (- knownSize!10 1)))))

(declare-fun b!2204343 () Bool)

(assert (=> b!2204343 (= e!1408331 0)))

(declare-fun b!2204344 () Bool)

(assert (=> b!2204344 (= e!1408330 Nil!25735)))

(declare-fun b!2204345 () Bool)

(assert (=> b!2204345 (= e!1408330 (Cons!25735 (h!31136 lt!824200) (take!437 (t!198453 lt!824200) (- (+ 1 (- knownSize!10 1)) 1))))))

(declare-fun b!2204346 () Bool)

(assert (=> b!2204346 (= e!1408332 (= (size!20055 lt!824230) e!1408331))))

(declare-fun c!351856 () Bool)

(assert (=> b!2204346 (= c!351856 (<= (+ 1 (- knownSize!10 1)) 0))))

(assert (= (and d!659059 c!351854) b!2204344))

(assert (= (and d!659059 (not c!351854)) b!2204345))

(assert (= (and d!659059 res!947556) b!2204346))

(assert (= (and b!2204346 c!351856) b!2204343))

(assert (= (and b!2204346 (not c!351856)) b!2204341))

(assert (= (and b!2204341 c!351855) b!2204340))

(assert (= (and b!2204341 (not c!351855)) b!2204342))

(declare-fun m!2646143 () Bool)

(assert (=> b!2204346 m!2646143))

(assert (=> b!2204340 m!2646079))

(assert (=> b!2204341 m!2646079))

(declare-fun m!2646145 () Bool)

(assert (=> b!2204345 m!2646145))

(declare-fun m!2646147 () Bool)

(assert (=> d!659059 m!2646147))

(assert (=> d!659059 m!2646085))

(assert (=> b!2204220 d!659059))

(declare-fun d!659061 () Bool)

(assert (=> d!659061 (= (Cons!25735 (apply!6332 lt!824203 from!1082) (take!437 (drop!1447 lt!824203 (+ from!1082 1)) (- knownSize!10 1))) (take!437 (drop!1447 lt!824203 from!1082) (+ (- knownSize!10 1) 1)))))

(declare-fun lt!824235 () Unit!38819)

(declare-fun choose!13028 (List!25819 Int Int) Unit!38819)

(assert (=> d!659061 (= lt!824235 (choose!13028 lt!824203 from!1082 (- knownSize!10 1)))))

(declare-fun e!1408341 () Bool)

(assert (=> d!659061 e!1408341))

(declare-fun res!947561 () Bool)

(assert (=> d!659061 (=> (not res!947561) (not e!1408341))))

(assert (=> d!659061 (= res!947561 (>= from!1082 0))))

(assert (=> d!659061 (= (lemmaDropTakeAddOneLeft!36 lt!824203 from!1082 (- knownSize!10 1)) lt!824235)))

(declare-fun b!2204357 () Bool)

(assert (=> b!2204357 (= e!1408341 (< from!1082 (size!20055 lt!824203)))))

(assert (= (and d!659061 res!947561) b!2204357))

(assert (=> d!659061 m!2646043))

(declare-fun m!2646163 () Bool)

(assert (=> d!659061 m!2646163))

(assert (=> d!659061 m!2646025))

(assert (=> d!659061 m!2646043))

(declare-fun m!2646165 () Bool)

(assert (=> d!659061 m!2646165))

(declare-fun m!2646167 () Bool)

(assert (=> d!659061 m!2646167))

(assert (=> d!659061 m!2646167))

(declare-fun m!2646169 () Bool)

(assert (=> d!659061 m!2646169))

(assert (=> b!2204357 m!2646101))

(assert (=> b!2204220 d!659061))

(declare-fun b!2204398 () Bool)

(declare-fun e!1408368 () Int)

(assert (=> b!2204398 (= e!1408368 (+ 1 from!1082))))

(declare-fun d!659067 () Bool)

(declare-fun lt!824247 () Int)

(assert (=> d!659067 (and (>= lt!824247 (- 1)) (< lt!824247 lt!824207) (>= lt!824247 e!1408262) (or (= lt!824247 e!1408262) (>= lt!824247 (+ 1 from!1082))))))

(declare-fun e!1408367 () Int)

(assert (=> d!659067 (= lt!824247 e!1408367)))

(declare-fun c!351876 () Bool)

(declare-fun e!1408366 () Bool)

(assert (=> d!659067 (= c!351876 e!1408366)))

(declare-fun res!947570 () Bool)

(assert (=> d!659067 (=> res!947570 e!1408366)))

(assert (=> d!659067 (= res!947570 (= (+ 1 from!1082) lt!824207))))

(assert (=> d!659067 (and (>= (+ 1 from!1082) 0) (<= (+ 1 from!1082) lt!824207))))

(assert (=> d!659067 (= (furthestNullablePosition!397 lt!824201 (+ 1 from!1082) totalInput!891 lt!824207 e!1408262) lt!824247)))

(declare-fun b!2204399 () Bool)

(assert (=> b!2204399 (= e!1408366 (lostCauseZipper!359 lt!824201))))

(declare-fun lt!824246 () (InoxSet Context!3658))

(declare-fun b!2204400 () Bool)

(assert (=> b!2204400 (= e!1408367 (furthestNullablePosition!397 lt!824246 (+ 1 from!1082 1) totalInput!891 lt!824207 e!1408368))))

(assert (=> b!2204400 (= lt!824246 (derivationStepZipper!301 lt!824201 (apply!6333 totalInput!891 (+ 1 from!1082))))))

(declare-fun c!351877 () Bool)

(assert (=> b!2204400 (= c!351877 (nullableZipper!539 lt!824246))))

(declare-fun b!2204401 () Bool)

(assert (=> b!2204401 (= e!1408368 e!1408262)))

(declare-fun b!2204402 () Bool)

(assert (=> b!2204402 (= e!1408367 e!1408262)))

(assert (= (and d!659067 (not res!947570)) b!2204399))

(assert (= (and d!659067 c!351876) b!2204402))

(assert (= (and d!659067 (not c!351876)) b!2204400))

(assert (= (and b!2204400 c!351877) b!2204398))

(assert (= (and b!2204400 (not c!351877)) b!2204401))

(declare-fun m!2646187 () Bool)

(assert (=> b!2204399 m!2646187))

(declare-fun m!2646189 () Bool)

(assert (=> b!2204400 m!2646189))

(declare-fun m!2646191 () Bool)

(assert (=> b!2204400 m!2646191))

(assert (=> b!2204400 m!2646191))

(declare-fun m!2646193 () Bool)

(assert (=> b!2204400 m!2646193))

(declare-fun m!2646195 () Bool)

(assert (=> b!2204400 m!2646195))

(assert (=> b!2204220 d!659067))

(declare-fun d!659073 () Bool)

(declare-fun lt!824250 () C!12664)

(assert (=> d!659073 (= lt!824250 (apply!6332 (list!9935 totalInput!891) from!1082))))

(declare-fun apply!6335 (Conc!8395 Int) C!12664)

(assert (=> d!659073 (= lt!824250 (apply!6335 (c!351801 totalInput!891) from!1082))))

(declare-fun e!1408371 () Bool)

(assert (=> d!659073 e!1408371))

(declare-fun res!947573 () Bool)

(assert (=> d!659073 (=> (not res!947573) (not e!1408371))))

(assert (=> d!659073 (= res!947573 (<= 0 from!1082))))

(assert (=> d!659073 (= (apply!6333 totalInput!891 from!1082) lt!824250)))

(declare-fun b!2204405 () Bool)

(assert (=> b!2204405 (= e!1408371 (< from!1082 (size!20054 totalInput!891)))))

(assert (= (and d!659073 res!947573) b!2204405))

(assert (=> d!659073 m!2646045))

(assert (=> d!659073 m!2646045))

(declare-fun m!2646197 () Bool)

(assert (=> d!659073 m!2646197))

(declare-fun m!2646199 () Bool)

(assert (=> d!659073 m!2646199))

(assert (=> b!2204405 m!2646015))

(assert (=> b!2204220 d!659073))

(declare-fun b!2204406 () Bool)

(declare-fun e!1408375 () Int)

(assert (=> b!2204406 (= e!1408375 (size!20055 (drop!1447 lt!824203 (+ 1 from!1082))))))

(declare-fun d!659075 () Bool)

(declare-fun e!1408374 () Bool)

(assert (=> d!659075 e!1408374))

(declare-fun res!947574 () Bool)

(assert (=> d!659075 (=> (not res!947574) (not e!1408374))))

(declare-fun lt!824251 () List!25819)

(assert (=> d!659075 (= res!947574 (= ((_ map implies) (content!3495 lt!824251) (content!3495 (drop!1447 lt!824203 (+ 1 from!1082)))) ((as const (InoxSet C!12664)) true)))))

(declare-fun e!1408372 () List!25819)

(assert (=> d!659075 (= lt!824251 e!1408372)))

(declare-fun c!351878 () Bool)

(assert (=> d!659075 (= c!351878 (or ((_ is Nil!25735) (drop!1447 lt!824203 (+ 1 from!1082))) (<= (- knownSize!10 1) 0)))))

(assert (=> d!659075 (= (take!437 (drop!1447 lt!824203 (+ 1 from!1082)) (- knownSize!10 1)) lt!824251)))

(declare-fun b!2204407 () Bool)

(declare-fun e!1408373 () Int)

(assert (=> b!2204407 (= e!1408373 e!1408375)))

(declare-fun c!351879 () Bool)

(assert (=> b!2204407 (= c!351879 (>= (- knownSize!10 1) (size!20055 (drop!1447 lt!824203 (+ 1 from!1082)))))))

(declare-fun b!2204408 () Bool)

(assert (=> b!2204408 (= e!1408375 (- knownSize!10 1))))

(declare-fun b!2204409 () Bool)

(assert (=> b!2204409 (= e!1408373 0)))

(declare-fun b!2204410 () Bool)

(assert (=> b!2204410 (= e!1408372 Nil!25735)))

(declare-fun b!2204411 () Bool)

(assert (=> b!2204411 (= e!1408372 (Cons!25735 (h!31136 (drop!1447 lt!824203 (+ 1 from!1082))) (take!437 (t!198453 (drop!1447 lt!824203 (+ 1 from!1082))) (- (- knownSize!10 1) 1))))))

(declare-fun b!2204412 () Bool)

(assert (=> b!2204412 (= e!1408374 (= (size!20055 lt!824251) e!1408373))))

(declare-fun c!351880 () Bool)

(assert (=> b!2204412 (= c!351880 (<= (- knownSize!10 1) 0))))

(assert (= (and d!659075 c!351878) b!2204410))

(assert (= (and d!659075 (not c!351878)) b!2204411))

(assert (= (and d!659075 res!947574) b!2204412))

(assert (= (and b!2204412 c!351880) b!2204409))

(assert (= (and b!2204412 (not c!351880)) b!2204407))

(assert (= (and b!2204407 c!351879) b!2204406))

(assert (= (and b!2204407 (not c!351879)) b!2204408))

(declare-fun m!2646201 () Bool)

(assert (=> b!2204412 m!2646201))

(assert (=> b!2204406 m!2646019))

(declare-fun m!2646203 () Bool)

(assert (=> b!2204406 m!2646203))

(assert (=> b!2204407 m!2646019))

(assert (=> b!2204407 m!2646203))

(declare-fun m!2646205 () Bool)

(assert (=> b!2204411 m!2646205))

(declare-fun m!2646207 () Bool)

(assert (=> d!659075 m!2646207))

(assert (=> d!659075 m!2646019))

(declare-fun m!2646209 () Bool)

(assert (=> d!659075 m!2646209))

(assert (=> b!2204220 d!659075))

(declare-fun d!659077 () Bool)

(assert (=> d!659077 (= (tail!3188 lt!824208) (t!198453 lt!824208))))

(assert (=> b!2204220 d!659077))

(declare-fun bs!450751 () Bool)

(declare-fun d!659079 () Bool)

(assert (= bs!450751 (and d!659079 d!659025)))

(declare-fun lambda!83096 () Int)

(assert (=> bs!450751 (= lambda!83096 lambda!83086)))

(assert (=> d!659079 (= (nullableZipper!539 lt!824201) (exists!849 lt!824201 lambda!83096))))

(declare-fun bs!450752 () Bool)

(assert (= bs!450752 d!659079))

(declare-fun m!2646211 () Bool)

(assert (=> bs!450752 m!2646211))

(assert (=> b!2204220 d!659079))

(declare-fun d!659081 () Bool)

(declare-fun lt!824260 () C!12664)

(declare-fun contains!4288 (List!25819 C!12664) Bool)

(assert (=> d!659081 (contains!4288 lt!824203 lt!824260)))

(declare-fun e!1408389 () C!12664)

(assert (=> d!659081 (= lt!824260 e!1408389)))

(declare-fun c!351889 () Bool)

(assert (=> d!659081 (= c!351889 (= from!1082 0))))

(declare-fun e!1408390 () Bool)

(assert (=> d!659081 e!1408390))

(declare-fun res!947580 () Bool)

(assert (=> d!659081 (=> (not res!947580) (not e!1408390))))

(assert (=> d!659081 (= res!947580 (<= 0 from!1082))))

(assert (=> d!659081 (= (apply!6332 lt!824203 from!1082) lt!824260)))

(declare-fun b!2204434 () Bool)

(assert (=> b!2204434 (= e!1408390 (< from!1082 (size!20055 lt!824203)))))

(declare-fun b!2204435 () Bool)

(assert (=> b!2204435 (= e!1408389 (head!4709 lt!824203))))

(declare-fun b!2204436 () Bool)

(assert (=> b!2204436 (= e!1408389 (apply!6332 (tail!3188 lt!824203) (- from!1082 1)))))

(assert (= (and d!659081 res!947580) b!2204434))

(assert (= (and d!659081 c!351889) b!2204435))

(assert (= (and d!659081 (not c!351889)) b!2204436))

(declare-fun m!2646223 () Bool)

(assert (=> d!659081 m!2646223))

(assert (=> b!2204434 m!2646101))

(declare-fun m!2646225 () Bool)

(assert (=> b!2204435 m!2646225))

(declare-fun m!2646227 () Bool)

(assert (=> b!2204436 m!2646227))

(assert (=> b!2204436 m!2646227))

(declare-fun m!2646229 () Bool)

(assert (=> b!2204436 m!2646229))

(assert (=> b!2204220 d!659081))

(declare-fun d!659085 () Bool)

(declare-fun lambda!83101 () Int)

(declare-fun forall!5261 (List!25818 Int) Bool)

(assert (=> d!659085 (= (inv!34672 setElem!19132) (forall!5261 (exprs!2329 setElem!19132) lambda!83101))))

(declare-fun bs!450754 () Bool)

(assert (= bs!450754 d!659085))

(declare-fun m!2646235 () Bool)

(assert (=> bs!450754 m!2646235))

(assert (=> setNonEmpty!19132 d!659085))

(declare-fun bs!450760 () Bool)

(declare-fun d!659089 () Bool)

(assert (= bs!450760 (and d!659089 d!659025)))

(declare-fun lambda!83116 () Int)

(assert (=> bs!450760 (not (= lambda!83116 lambda!83086))))

(declare-fun bs!450761 () Bool)

(assert (= bs!450761 (and d!659089 d!659079)))

(assert (=> bs!450761 (not (= lambda!83116 lambda!83096))))

(declare-fun bs!450762 () Bool)

(declare-fun b!2204465 () Bool)

(assert (= bs!450762 (and b!2204465 d!659025)))

(declare-fun lambda!83117 () Int)

(assert (=> bs!450762 (not (= lambda!83117 lambda!83086))))

(declare-fun bs!450763 () Bool)

(assert (= bs!450763 (and b!2204465 d!659079)))

(assert (=> bs!450763 (not (= lambda!83117 lambda!83096))))

(declare-fun bs!450764 () Bool)

(assert (= bs!450764 (and b!2204465 d!659089)))

(assert (=> bs!450764 (not (= lambda!83117 lambda!83116))))

(declare-fun bs!450765 () Bool)

(declare-fun b!2204466 () Bool)

(assert (= bs!450765 (and b!2204466 d!659025)))

(declare-fun lambda!83118 () Int)

(assert (=> bs!450765 (not (= lambda!83118 lambda!83086))))

(declare-fun bs!450766 () Bool)

(assert (= bs!450766 (and b!2204466 d!659079)))

(assert (=> bs!450766 (not (= lambda!83118 lambda!83096))))

(declare-fun bs!450767 () Bool)

(assert (= bs!450767 (and b!2204466 d!659089)))

(assert (=> bs!450767 (not (= lambda!83118 lambda!83116))))

(declare-fun bs!450768 () Bool)

(assert (= bs!450768 (and b!2204466 b!2204465)))

(assert (=> bs!450768 (= lambda!83118 lambda!83117)))

(declare-fun bm!132197 () Bool)

(declare-datatypes ((List!25820 0))(
  ( (Nil!25736) (Cons!25736 (h!31137 Context!3658) (t!198454 List!25820)) )
))
(declare-fun call!132202 () List!25820)

(declare-fun toList!1270 ((InoxSet Context!3658)) List!25820)

(assert (=> bm!132197 (= call!132202 (toList!1270 z!3888))))

(declare-fun e!1408410 () Unit!38819)

(declare-fun Unit!38821 () Unit!38819)

(assert (=> b!2204465 (= e!1408410 Unit!38821)))

(declare-fun lt!824288 () List!25820)

(assert (=> b!2204465 (= lt!824288 call!132202)))

(declare-fun lt!824291 () Unit!38819)

(declare-fun lemmaNotForallThenExists!57 (List!25820 Int) Unit!38819)

(assert (=> b!2204465 (= lt!824291 (lemmaNotForallThenExists!57 lt!824288 lambda!83116))))

(declare-fun call!132201 () Bool)

(assert (=> b!2204465 call!132201))

(declare-fun lt!824285 () Unit!38819)

(assert (=> b!2204465 (= lt!824285 lt!824291)))

(declare-fun Unit!38822 () Unit!38819)

(assert (=> b!2204466 (= e!1408410 Unit!38822)))

(declare-fun lt!824292 () List!25820)

(assert (=> b!2204466 (= lt!824292 call!132202)))

(declare-fun lt!824290 () Unit!38819)

(declare-fun lemmaForallThenNotExists!57 (List!25820 Int) Unit!38819)

(assert (=> b!2204466 (= lt!824290 (lemmaForallThenNotExists!57 lt!824292 lambda!83116))))

(assert (=> b!2204466 (not call!132201)))

(declare-fun lt!824289 () Unit!38819)

(assert (=> b!2204466 (= lt!824289 lt!824290)))

(declare-fun bm!132196 () Bool)

(declare-fun c!351911 () Bool)

(declare-fun exists!851 (List!25820 Int) Bool)

(assert (=> bm!132196 (= call!132201 (exists!851 (ite c!351911 lt!824288 lt!824292) (ite c!351911 lambda!83117 lambda!83118)))))

(declare-fun lt!824286 () Bool)

(declare-datatypes ((Option!5032 0))(
  ( (None!5031) (Some!5031 (v!29428 List!25819)) )
))
(declare-fun isEmpty!14717 (Option!5032) Bool)

(declare-fun getLanguageWitness!155 ((InoxSet Context!3658)) Option!5032)

(assert (=> d!659089 (= lt!824286 (isEmpty!14717 (getLanguageWitness!155 z!3888)))))

(declare-fun forall!5263 ((InoxSet Context!3658) Int) Bool)

(assert (=> d!659089 (= lt!824286 (forall!5263 z!3888 lambda!83116))))

(declare-fun lt!824287 () Unit!38819)

(assert (=> d!659089 (= lt!824287 e!1408410)))

(assert (=> d!659089 (= c!351911 (not (forall!5263 z!3888 lambda!83116)))))

(assert (=> d!659089 (= (lostCauseZipper!359 z!3888) lt!824286)))

(assert (= (and d!659089 c!351911) b!2204465))

(assert (= (and d!659089 (not c!351911)) b!2204466))

(assert (= (or b!2204465 b!2204466) bm!132196))

(assert (= (or b!2204465 b!2204466) bm!132197))

(declare-fun m!2646277 () Bool)

(assert (=> bm!132197 m!2646277))

(declare-fun m!2646279 () Bool)

(assert (=> bm!132196 m!2646279))

(declare-fun m!2646281 () Bool)

(assert (=> d!659089 m!2646281))

(assert (=> d!659089 m!2646281))

(declare-fun m!2646283 () Bool)

(assert (=> d!659089 m!2646283))

(declare-fun m!2646285 () Bool)

(assert (=> d!659089 m!2646285))

(assert (=> d!659089 m!2646285))

(declare-fun m!2646287 () Bool)

(assert (=> b!2204465 m!2646287))

(declare-fun m!2646289 () Bool)

(assert (=> b!2204466 m!2646289))

(assert (=> b!2204219 d!659089))

(declare-fun d!659107 () Bool)

(declare-fun isBalanced!2584 (Conc!8395) Bool)

(assert (=> d!659107 (= (inv!34671 totalInput!891) (isBalanced!2584 (c!351801 totalInput!891)))))

(declare-fun bs!450769 () Bool)

(assert (= bs!450769 d!659107))

(declare-fun m!2646291 () Bool)

(assert (=> bs!450769 m!2646291))

(assert (=> start!214230 d!659107))

(declare-fun d!659109 () Bool)

(declare-fun c!351924 () Bool)

(assert (=> d!659109 (= c!351924 ((_ is Node!8395) (c!351801 totalInput!891)))))

(declare-fun e!1408421 () Bool)

(assert (=> d!659109 (= (inv!34670 (c!351801 totalInput!891)) e!1408421)))

(declare-fun b!2204477 () Bool)

(declare-fun inv!34675 (Conc!8395) Bool)

(assert (=> b!2204477 (= e!1408421 (inv!34675 (c!351801 totalInput!891)))))

(declare-fun b!2204478 () Bool)

(declare-fun e!1408422 () Bool)

(assert (=> b!2204478 (= e!1408421 e!1408422)))

(declare-fun res!947585 () Bool)

(assert (=> b!2204478 (= res!947585 (not ((_ is Leaf!12292) (c!351801 totalInput!891))))))

(assert (=> b!2204478 (=> res!947585 e!1408422)))

(declare-fun b!2204479 () Bool)

(declare-fun inv!34676 (Conc!8395) Bool)

(assert (=> b!2204479 (= e!1408422 (inv!34676 (c!351801 totalInput!891)))))

(assert (= (and d!659109 c!351924) b!2204477))

(assert (= (and d!659109 (not c!351924)) b!2204478))

(assert (= (and b!2204478 (not res!947585)) b!2204479))

(declare-fun m!2646293 () Bool)

(assert (=> b!2204477 m!2646293))

(declare-fun m!2646295 () Bool)

(assert (=> b!2204479 m!2646295))

(assert (=> b!2204222 d!659109))

(declare-fun condSetEmpty!19135 () Bool)

(assert (=> setNonEmpty!19132 (= condSetEmpty!19135 (= setRest!19132 ((as const (Array Context!3658 Bool)) false)))))

(declare-fun setRes!19135 () Bool)

(assert (=> setNonEmpty!19132 (= tp!685600 setRes!19135)))

(declare-fun setIsEmpty!19135 () Bool)

(assert (=> setIsEmpty!19135 setRes!19135))

(declare-fun setElem!19135 () Context!3658)

(declare-fun tp!685608 () Bool)

(declare-fun setNonEmpty!19135 () Bool)

(declare-fun e!1408425 () Bool)

(assert (=> setNonEmpty!19135 (= setRes!19135 (and tp!685608 (inv!34672 setElem!19135) e!1408425))))

(declare-fun setRest!19135 () (InoxSet Context!3658))

(assert (=> setNonEmpty!19135 (= setRest!19132 ((_ map or) (store ((as const (Array Context!3658 Bool)) false) setElem!19135 true) setRest!19135))))

(declare-fun b!2204484 () Bool)

(declare-fun tp!685607 () Bool)

(assert (=> b!2204484 (= e!1408425 tp!685607)))

(assert (= (and setNonEmpty!19132 condSetEmpty!19135) setIsEmpty!19135))

(assert (= (and setNonEmpty!19132 (not condSetEmpty!19135)) setNonEmpty!19135))

(assert (= setNonEmpty!19135 b!2204484))

(declare-fun m!2646297 () Bool)

(assert (=> setNonEmpty!19135 m!2646297))

(declare-fun b!2204491 () Bool)

(declare-fun e!1408429 () Bool)

(declare-fun tp!685613 () Bool)

(declare-fun tp!685614 () Bool)

(assert (=> b!2204491 (= e!1408429 (and tp!685613 tp!685614))))

(assert (=> b!2204223 (= tp!685601 e!1408429)))

(assert (= (and b!2204223 ((_ is Cons!25734) (exprs!2329 setElem!19132))) b!2204491))

(declare-fun b!2204500 () Bool)

(declare-fun e!1408435 () Bool)

(declare-fun tp!685623 () Bool)

(declare-fun tp!685621 () Bool)

(assert (=> b!2204500 (= e!1408435 (and (inv!34670 (left!19771 (c!351801 totalInput!891))) tp!685623 (inv!34670 (right!20101 (c!351801 totalInput!891))) tp!685621))))

(declare-fun b!2204502 () Bool)

(declare-fun e!1408434 () Bool)

(declare-fun tp!685622 () Bool)

(assert (=> b!2204502 (= e!1408434 tp!685622)))

(declare-fun b!2204501 () Bool)

(declare-fun inv!34677 (IArray!16795) Bool)

(assert (=> b!2204501 (= e!1408435 (and (inv!34677 (xs!11337 (c!351801 totalInput!891))) e!1408434))))

(assert (=> b!2204222 (= tp!685602 (and (inv!34670 (c!351801 totalInput!891)) e!1408435))))

(assert (= (and b!2204222 ((_ is Node!8395) (c!351801 totalInput!891))) b!2204500))

(assert (= b!2204501 b!2204502))

(assert (= (and b!2204222 ((_ is Leaf!12292) (c!351801 totalInput!891))) b!2204501))

(declare-fun m!2646305 () Bool)

(assert (=> b!2204500 m!2646305))

(declare-fun m!2646309 () Bool)

(assert (=> b!2204500 m!2646309))

(declare-fun m!2646313 () Bool)

(assert (=> b!2204501 m!2646313))

(assert (=> b!2204222 m!2646013))

(check-sat (not b!2204345) (not d!659025) (not b!2204407) (not b!2204357) (not b!2204479) (not b!2204491) (not d!659039) (not b!2204411) (not bm!132196) (not d!659023) (not b!2204436) (not b!2204334) (not d!659075) (not d!659079) (not b!2204465) (not d!659081) (not d!659033) (not b!2204434) (not b!2204333) (not b!2204477) (not b!2204222) (not bm!132186) (not b!2204267) (not d!659073) (not bm!132187) (not d!659085) (not b!2204435) (not b!2204500) (not b!2204484) (not setNonEmpty!19135) (not d!659107) (not b!2204244) (not b!2204399) (not b!2204412) (not d!659059) (not b!2204466) (not b!2204266) (not b!2204400) (not b!2204340) (not d!659047) (not bm!132197) (not b!2204406) (not b!2204346) (not b!2204326) (not b!2204243) (not b!2204341) (not d!659049) (not d!659089) (not d!659061) (not b!2204300) (not d!659035) (not b!2204502) (not b!2204262) (not d!659057) (not b!2204501) (not b!2204261) (not b!2204325) (not d!659055) (not b!2204405) (not b!2204299) (not d!659051))
(check-sat)
(get-model)

(declare-fun d!659111 () Bool)

(declare-fun lt!824319 () Int)

(assert (=> d!659111 (>= lt!824319 0)))

(declare-fun e!1408450 () Int)

(assert (=> d!659111 (= lt!824319 e!1408450)))

(declare-fun c!351928 () Bool)

(assert (=> d!659111 (= c!351928 ((_ is Nil!25735) lt!824203))))

(assert (=> d!659111 (= (size!20055 lt!824203) lt!824319)))

(declare-fun b!2204528 () Bool)

(assert (=> b!2204528 (= e!1408450 0)))

(declare-fun b!2204529 () Bool)

(assert (=> b!2204529 (= e!1408450 (+ 1 (size!20055 (t!198453 lt!824203))))))

(assert (= (and d!659111 c!351928) b!2204528))

(assert (= (and d!659111 (not c!351928)) b!2204529))

(declare-fun m!2646327 () Bool)

(assert (=> b!2204529 m!2646327))

(assert (=> bm!132186 d!659111))

(assert (=> d!659061 d!659039))

(declare-fun b!2204530 () Bool)

(declare-fun e!1408454 () Int)

(assert (=> b!2204530 (= e!1408454 (size!20055 (drop!1447 lt!824203 (+ from!1082 1))))))

(declare-fun d!659113 () Bool)

(declare-fun e!1408453 () Bool)

(assert (=> d!659113 e!1408453))

(declare-fun res!947586 () Bool)

(assert (=> d!659113 (=> (not res!947586) (not e!1408453))))

(declare-fun lt!824320 () List!25819)

(assert (=> d!659113 (= res!947586 (= ((_ map implies) (content!3495 lt!824320) (content!3495 (drop!1447 lt!824203 (+ from!1082 1)))) ((as const (InoxSet C!12664)) true)))))

(declare-fun e!1408451 () List!25819)

(assert (=> d!659113 (= lt!824320 e!1408451)))

(declare-fun c!351929 () Bool)

(assert (=> d!659113 (= c!351929 (or ((_ is Nil!25735) (drop!1447 lt!824203 (+ from!1082 1))) (<= (- knownSize!10 1) 0)))))

(assert (=> d!659113 (= (take!437 (drop!1447 lt!824203 (+ from!1082 1)) (- knownSize!10 1)) lt!824320)))

(declare-fun b!2204531 () Bool)

(declare-fun e!1408452 () Int)

(assert (=> b!2204531 (= e!1408452 e!1408454)))

(declare-fun c!351930 () Bool)

(assert (=> b!2204531 (= c!351930 (>= (- knownSize!10 1) (size!20055 (drop!1447 lt!824203 (+ from!1082 1)))))))

(declare-fun b!2204532 () Bool)

(assert (=> b!2204532 (= e!1408454 (- knownSize!10 1))))

(declare-fun b!2204533 () Bool)

(assert (=> b!2204533 (= e!1408452 0)))

(declare-fun b!2204534 () Bool)

(assert (=> b!2204534 (= e!1408451 Nil!25735)))

(declare-fun b!2204535 () Bool)

(assert (=> b!2204535 (= e!1408451 (Cons!25735 (h!31136 (drop!1447 lt!824203 (+ from!1082 1))) (take!437 (t!198453 (drop!1447 lt!824203 (+ from!1082 1))) (- (- knownSize!10 1) 1))))))

(declare-fun b!2204536 () Bool)

(assert (=> b!2204536 (= e!1408453 (= (size!20055 lt!824320) e!1408452))))

(declare-fun c!351931 () Bool)

(assert (=> b!2204536 (= c!351931 (<= (- knownSize!10 1) 0))))

(assert (= (and d!659113 c!351929) b!2204534))

(assert (= (and d!659113 (not c!351929)) b!2204535))

(assert (= (and d!659113 res!947586) b!2204536))

(assert (= (and b!2204536 c!351931) b!2204533))

(assert (= (and b!2204536 (not c!351931)) b!2204531))

(assert (= (and b!2204531 c!351930) b!2204530))

(assert (= (and b!2204531 (not c!351930)) b!2204532))

(declare-fun m!2646329 () Bool)

(assert (=> b!2204536 m!2646329))

(assert (=> b!2204530 m!2646167))

(declare-fun m!2646331 () Bool)

(assert (=> b!2204530 m!2646331))

(assert (=> b!2204531 m!2646167))

(assert (=> b!2204531 m!2646331))

(declare-fun m!2646333 () Bool)

(assert (=> b!2204535 m!2646333))

(declare-fun m!2646335 () Bool)

(assert (=> d!659113 m!2646335))

(assert (=> d!659113 m!2646167))

(declare-fun m!2646337 () Bool)

(assert (=> d!659113 m!2646337))

(assert (=> d!659061 d!659113))

(assert (=> d!659061 d!659081))

(declare-fun b!2204537 () Bool)

(declare-fun e!1408455 () Int)

(declare-fun call!132209 () Int)

(assert (=> b!2204537 (= e!1408455 (- call!132209 (+ from!1082 1)))))

(declare-fun b!2204538 () Bool)

(declare-fun e!1408456 () List!25819)

(declare-fun e!1408457 () List!25819)

(assert (=> b!2204538 (= e!1408456 e!1408457)))

(declare-fun c!351934 () Bool)

(assert (=> b!2204538 (= c!351934 (<= (+ from!1082 1) 0))))

(declare-fun b!2204539 () Bool)

(assert (=> b!2204539 (= e!1408456 Nil!25735)))

(declare-fun b!2204540 () Bool)

(assert (=> b!2204540 (= e!1408457 lt!824203)))

(declare-fun b!2204541 () Bool)

(assert (=> b!2204541 (= e!1408457 (drop!1447 (t!198453 lt!824203) (- (+ from!1082 1) 1)))))

(declare-fun bm!132204 () Bool)

(assert (=> bm!132204 (= call!132209 (size!20055 lt!824203))))

(declare-fun d!659115 () Bool)

(declare-fun e!1408458 () Bool)

(assert (=> d!659115 e!1408458))

(declare-fun res!947587 () Bool)

(assert (=> d!659115 (=> (not res!947587) (not e!1408458))))

(declare-fun lt!824321 () List!25819)

(assert (=> d!659115 (= res!947587 (= ((_ map implies) (content!3495 lt!824321) (content!3495 lt!824203)) ((as const (InoxSet C!12664)) true)))))

(assert (=> d!659115 (= lt!824321 e!1408456)))

(declare-fun c!351933 () Bool)

(assert (=> d!659115 (= c!351933 ((_ is Nil!25735) lt!824203))))

(assert (=> d!659115 (= (drop!1447 lt!824203 (+ from!1082 1)) lt!824321)))

(declare-fun b!2204542 () Bool)

(declare-fun e!1408459 () Int)

(assert (=> b!2204542 (= e!1408458 (= (size!20055 lt!824321) e!1408459))))

(declare-fun c!351932 () Bool)

(assert (=> b!2204542 (= c!351932 (<= (+ from!1082 1) 0))))

(declare-fun b!2204543 () Bool)

(assert (=> b!2204543 (= e!1408459 e!1408455)))

(declare-fun c!351935 () Bool)

(assert (=> b!2204543 (= c!351935 (>= (+ from!1082 1) call!132209))))

(declare-fun b!2204544 () Bool)

(assert (=> b!2204544 (= e!1408455 0)))

(declare-fun b!2204545 () Bool)

(assert (=> b!2204545 (= e!1408459 call!132209)))

(assert (= (and d!659115 c!351933) b!2204539))

(assert (= (and d!659115 (not c!351933)) b!2204538))

(assert (= (and b!2204538 c!351934) b!2204540))

(assert (= (and b!2204538 (not c!351934)) b!2204541))

(assert (= (and d!659115 res!947587) b!2204542))

(assert (= (and b!2204542 c!351932) b!2204545))

(assert (= (and b!2204542 (not c!351932)) b!2204543))

(assert (= (and b!2204543 c!351935) b!2204544))

(assert (= (and b!2204543 (not c!351935)) b!2204537))

(assert (= (or b!2204545 b!2204543 b!2204537) bm!132204))

(declare-fun m!2646339 () Bool)

(assert (=> b!2204541 m!2646339))

(assert (=> bm!132204 m!2646101))

(declare-fun m!2646341 () Bool)

(assert (=> d!659115 m!2646341))

(assert (=> d!659115 m!2646105))

(declare-fun m!2646343 () Bool)

(assert (=> b!2204542 m!2646343))

(assert (=> d!659061 d!659115))

(declare-fun b!2204546 () Bool)

(declare-fun e!1408463 () Int)

(assert (=> b!2204546 (= e!1408463 (size!20055 (drop!1447 lt!824203 from!1082)))))

(declare-fun d!659117 () Bool)

(declare-fun e!1408462 () Bool)

(assert (=> d!659117 e!1408462))

(declare-fun res!947588 () Bool)

(assert (=> d!659117 (=> (not res!947588) (not e!1408462))))

(declare-fun lt!824322 () List!25819)

(assert (=> d!659117 (= res!947588 (= ((_ map implies) (content!3495 lt!824322) (content!3495 (drop!1447 lt!824203 from!1082))) ((as const (InoxSet C!12664)) true)))))

(declare-fun e!1408460 () List!25819)

(assert (=> d!659117 (= lt!824322 e!1408460)))

(declare-fun c!351936 () Bool)

(assert (=> d!659117 (= c!351936 (or ((_ is Nil!25735) (drop!1447 lt!824203 from!1082)) (<= (+ (- knownSize!10 1) 1) 0)))))

(assert (=> d!659117 (= (take!437 (drop!1447 lt!824203 from!1082) (+ (- knownSize!10 1) 1)) lt!824322)))

(declare-fun b!2204547 () Bool)

(declare-fun e!1408461 () Int)

(assert (=> b!2204547 (= e!1408461 e!1408463)))

(declare-fun c!351937 () Bool)

(assert (=> b!2204547 (= c!351937 (>= (+ (- knownSize!10 1) 1) (size!20055 (drop!1447 lt!824203 from!1082))))))

(declare-fun b!2204548 () Bool)

(assert (=> b!2204548 (= e!1408463 (+ (- knownSize!10 1) 1))))

(declare-fun b!2204549 () Bool)

(assert (=> b!2204549 (= e!1408461 0)))

(declare-fun b!2204550 () Bool)

(assert (=> b!2204550 (= e!1408460 Nil!25735)))

(declare-fun b!2204551 () Bool)

(assert (=> b!2204551 (= e!1408460 (Cons!25735 (h!31136 (drop!1447 lt!824203 from!1082)) (take!437 (t!198453 (drop!1447 lt!824203 from!1082)) (- (+ (- knownSize!10 1) 1) 1))))))

(declare-fun b!2204552 () Bool)

(assert (=> b!2204552 (= e!1408462 (= (size!20055 lt!824322) e!1408461))))

(declare-fun c!351938 () Bool)

(assert (=> b!2204552 (= c!351938 (<= (+ (- knownSize!10 1) 1) 0))))

(assert (= (and d!659117 c!351936) b!2204550))

(assert (= (and d!659117 (not c!351936)) b!2204551))

(assert (= (and d!659117 res!947588) b!2204552))

(assert (= (and b!2204552 c!351938) b!2204549))

(assert (= (and b!2204552 (not c!351938)) b!2204547))

(assert (= (and b!2204547 c!351937) b!2204546))

(assert (= (and b!2204547 (not c!351937)) b!2204548))

(declare-fun m!2646345 () Bool)

(assert (=> b!2204552 m!2646345))

(assert (=> b!2204546 m!2646043))

(declare-fun m!2646347 () Bool)

(assert (=> b!2204546 m!2646347))

(assert (=> b!2204547 m!2646043))

(assert (=> b!2204547 m!2646347))

(declare-fun m!2646349 () Bool)

(assert (=> b!2204551 m!2646349))

(declare-fun m!2646351 () Bool)

(assert (=> d!659117 m!2646351))

(assert (=> d!659117 m!2646043))

(declare-fun m!2646353 () Bool)

(assert (=> d!659117 m!2646353))

(assert (=> d!659061 d!659117))

(declare-fun d!659119 () Bool)

(assert (=> d!659119 (= (Cons!25735 (apply!6332 lt!824203 from!1082) (take!437 (drop!1447 lt!824203 (+ from!1082 1)) (- knownSize!10 1))) (take!437 (drop!1447 lt!824203 from!1082) (+ (- knownSize!10 1) 1)))))

(assert (=> d!659119 true))

(declare-fun _$30!122 () Unit!38819)

(assert (=> d!659119 (= (choose!13028 lt!824203 from!1082 (- knownSize!10 1)) _$30!122)))

(declare-fun bs!450779 () Bool)

(assert (= bs!450779 d!659119))

(assert (=> bs!450779 m!2646167))

(assert (=> bs!450779 m!2646025))

(assert (=> bs!450779 m!2646167))

(assert (=> bs!450779 m!2646169))

(assert (=> bs!450779 m!2646043))

(assert (=> bs!450779 m!2646165))

(assert (=> bs!450779 m!2646043))

(assert (=> d!659061 d!659119))

(declare-fun d!659121 () Bool)

(declare-fun res!947595 () Bool)

(declare-fun e!1408466 () Bool)

(assert (=> d!659121 (=> (not res!947595) (not e!1408466))))

(assert (=> d!659121 (= res!947595 (= (csize!17020 (c!351801 totalInput!891)) (+ (size!20056 (left!19771 (c!351801 totalInput!891))) (size!20056 (right!20101 (c!351801 totalInput!891))))))))

(assert (=> d!659121 (= (inv!34675 (c!351801 totalInput!891)) e!1408466)))

(declare-fun b!2204559 () Bool)

(declare-fun res!947596 () Bool)

(assert (=> b!2204559 (=> (not res!947596) (not e!1408466))))

(assert (=> b!2204559 (= res!947596 (and (not (= (left!19771 (c!351801 totalInput!891)) Empty!8395)) (not (= (right!20101 (c!351801 totalInput!891)) Empty!8395))))))

(declare-fun b!2204560 () Bool)

(declare-fun res!947597 () Bool)

(assert (=> b!2204560 (=> (not res!947597) (not e!1408466))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1256 (Conc!8395) Int)

(assert (=> b!2204560 (= res!947597 (= (cheight!8606 (c!351801 totalInput!891)) (+ (max!0 (height!1256 (left!19771 (c!351801 totalInput!891))) (height!1256 (right!20101 (c!351801 totalInput!891)))) 1)))))

(declare-fun b!2204561 () Bool)

(assert (=> b!2204561 (= e!1408466 (<= 0 (cheight!8606 (c!351801 totalInput!891))))))

(assert (= (and d!659121 res!947595) b!2204559))

(assert (= (and b!2204559 res!947596) b!2204560))

(assert (= (and b!2204560 res!947597) b!2204561))

(declare-fun m!2646355 () Bool)

(assert (=> d!659121 m!2646355))

(declare-fun m!2646357 () Bool)

(assert (=> d!659121 m!2646357))

(declare-fun m!2646359 () Bool)

(assert (=> b!2204560 m!2646359))

(declare-fun m!2646361 () Bool)

(assert (=> b!2204560 m!2646361))

(assert (=> b!2204560 m!2646359))

(assert (=> b!2204560 m!2646361))

(declare-fun m!2646363 () Bool)

(assert (=> b!2204560 m!2646363))

(assert (=> b!2204477 d!659121))

(declare-fun d!659123 () Bool)

(declare-fun lt!824325 () Bool)

(assert (=> d!659123 (= lt!824325 (select (content!3495 lt!824203) lt!824260))))

(declare-fun e!1408472 () Bool)

(assert (=> d!659123 (= lt!824325 e!1408472)))

(declare-fun res!947603 () Bool)

(assert (=> d!659123 (=> (not res!947603) (not e!1408472))))

(assert (=> d!659123 (= res!947603 ((_ is Cons!25735) lt!824203))))

(assert (=> d!659123 (= (contains!4288 lt!824203 lt!824260) lt!824325)))

(declare-fun b!2204566 () Bool)

(declare-fun e!1408471 () Bool)

(assert (=> b!2204566 (= e!1408472 e!1408471)))

(declare-fun res!947602 () Bool)

(assert (=> b!2204566 (=> res!947602 e!1408471)))

(assert (=> b!2204566 (= res!947602 (= (h!31136 lt!824203) lt!824260))))

(declare-fun b!2204567 () Bool)

(assert (=> b!2204567 (= e!1408471 (contains!4288 (t!198453 lt!824203) lt!824260))))

(assert (= (and d!659123 res!947603) b!2204566))

(assert (= (and b!2204566 (not res!947602)) b!2204567))

(assert (=> d!659123 m!2646105))

(declare-fun m!2646365 () Bool)

(assert (=> d!659123 m!2646365))

(declare-fun m!2646367 () Bool)

(assert (=> b!2204567 m!2646367))

(assert (=> d!659081 d!659123))

(declare-fun d!659125 () Bool)

(declare-fun lt!824326 () Int)

(assert (=> d!659125 (>= lt!824326 0)))

(declare-fun e!1408473 () Int)

(assert (=> d!659125 (= lt!824326 e!1408473)))

(declare-fun c!351939 () Bool)

(assert (=> d!659125 (= c!351939 ((_ is Nil!25735) (list!9935 totalInput!891)))))

(assert (=> d!659125 (= (size!20055 (list!9935 totalInput!891)) lt!824326)))

(declare-fun b!2204568 () Bool)

(assert (=> b!2204568 (= e!1408473 0)))

(declare-fun b!2204569 () Bool)

(assert (=> b!2204569 (= e!1408473 (+ 1 (size!20055 (t!198453 (list!9935 totalInput!891)))))))

(assert (= (and d!659125 c!351939) b!2204568))

(assert (= (and d!659125 (not c!351939)) b!2204569))

(declare-fun m!2646369 () Bool)

(assert (=> b!2204569 m!2646369))

(assert (=> d!659023 d!659125))

(assert (=> d!659023 d!659047))

(declare-fun d!659127 () Bool)

(declare-fun lt!824329 () Int)

(assert (=> d!659127 (= lt!824329 (size!20055 (list!9936 (c!351801 totalInput!891))))))

(assert (=> d!659127 (= lt!824329 (ite ((_ is Empty!8395) (c!351801 totalInput!891)) 0 (ite ((_ is Leaf!12292) (c!351801 totalInput!891)) (csize!17021 (c!351801 totalInput!891)) (csize!17020 (c!351801 totalInput!891)))))))

(assert (=> d!659127 (= (size!20056 (c!351801 totalInput!891)) lt!824329)))

(declare-fun bs!450780 () Bool)

(assert (= bs!450780 d!659127))

(assert (=> bs!450780 m!2646109))

(assert (=> bs!450780 m!2646109))

(declare-fun m!2646371 () Bool)

(assert (=> bs!450780 m!2646371))

(assert (=> d!659023 d!659127))

(declare-fun b!2204570 () Bool)

(declare-fun e!1408476 () Int)

(assert (=> b!2204570 (= e!1408476 (+ 1 from!1082 1))))

(declare-fun d!659129 () Bool)

(declare-fun lt!824331 () Int)

(assert (=> d!659129 (and (>= lt!824331 (- 1)) (< lt!824331 lt!824207) (>= lt!824331 e!1408368) (or (= lt!824331 e!1408368) (>= lt!824331 (+ 1 from!1082 1))))))

(declare-fun e!1408475 () Int)

(assert (=> d!659129 (= lt!824331 e!1408475)))

(declare-fun c!351940 () Bool)

(declare-fun e!1408474 () Bool)

(assert (=> d!659129 (= c!351940 e!1408474)))

(declare-fun res!947604 () Bool)

(assert (=> d!659129 (=> res!947604 e!1408474)))

(assert (=> d!659129 (= res!947604 (= (+ 1 from!1082 1) lt!824207))))

(assert (=> d!659129 (and (>= (+ 1 from!1082 1) 0) (<= (+ 1 from!1082 1) lt!824207))))

(assert (=> d!659129 (= (furthestNullablePosition!397 lt!824246 (+ 1 from!1082 1) totalInput!891 lt!824207 e!1408368) lt!824331)))

(declare-fun b!2204571 () Bool)

(assert (=> b!2204571 (= e!1408474 (lostCauseZipper!359 lt!824246))))

(declare-fun lt!824330 () (InoxSet Context!3658))

(declare-fun b!2204572 () Bool)

(assert (=> b!2204572 (= e!1408475 (furthestNullablePosition!397 lt!824330 (+ 1 from!1082 1 1) totalInput!891 lt!824207 e!1408476))))

(assert (=> b!2204572 (= lt!824330 (derivationStepZipper!301 lt!824246 (apply!6333 totalInput!891 (+ 1 from!1082 1))))))

(declare-fun c!351941 () Bool)

(assert (=> b!2204572 (= c!351941 (nullableZipper!539 lt!824330))))

(declare-fun b!2204573 () Bool)

(assert (=> b!2204573 (= e!1408476 e!1408368)))

(declare-fun b!2204574 () Bool)

(assert (=> b!2204574 (= e!1408475 e!1408368)))

(assert (= (and d!659129 (not res!947604)) b!2204571))

(assert (= (and d!659129 c!351940) b!2204574))

(assert (= (and d!659129 (not c!351940)) b!2204572))

(assert (= (and b!2204572 c!351941) b!2204570))

(assert (= (and b!2204572 (not c!351941)) b!2204573))

(declare-fun m!2646373 () Bool)

(assert (=> b!2204571 m!2646373))

(declare-fun m!2646375 () Bool)

(assert (=> b!2204572 m!2646375))

(declare-fun m!2646377 () Bool)

(assert (=> b!2204572 m!2646377))

(assert (=> b!2204572 m!2646377))

(declare-fun m!2646379 () Bool)

(assert (=> b!2204572 m!2646379))

(declare-fun m!2646381 () Bool)

(assert (=> b!2204572 m!2646381))

(assert (=> b!2204400 d!659129))

(declare-fun bs!450781 () Bool)

(declare-fun d!659131 () Bool)

(assert (= bs!450781 (and d!659131 d!659055)))

(declare-fun lambda!83134 () Int)

(assert (=> bs!450781 (= (= (apply!6333 totalInput!891 (+ 1 from!1082)) (apply!6333 totalInput!891 from!1082)) (= lambda!83134 lambda!83095))))

(assert (=> d!659131 true))

(assert (=> d!659131 (= (derivationStepZipper!301 lt!824201 (apply!6333 totalInput!891 (+ 1 from!1082))) (flatMap!166 lt!824201 lambda!83134))))

(declare-fun bs!450782 () Bool)

(assert (= bs!450782 d!659131))

(declare-fun m!2646383 () Bool)

(assert (=> bs!450782 m!2646383))

(assert (=> b!2204400 d!659131))

(declare-fun d!659133 () Bool)

(declare-fun lt!824332 () C!12664)

(assert (=> d!659133 (= lt!824332 (apply!6332 (list!9935 totalInput!891) (+ 1 from!1082)))))

(assert (=> d!659133 (= lt!824332 (apply!6335 (c!351801 totalInput!891) (+ 1 from!1082)))))

(declare-fun e!1408477 () Bool)

(assert (=> d!659133 e!1408477))

(declare-fun res!947605 () Bool)

(assert (=> d!659133 (=> (not res!947605) (not e!1408477))))

(assert (=> d!659133 (= res!947605 (<= 0 (+ 1 from!1082)))))

(assert (=> d!659133 (= (apply!6333 totalInput!891 (+ 1 from!1082)) lt!824332)))

(declare-fun b!2204575 () Bool)

(assert (=> b!2204575 (= e!1408477 (< (+ 1 from!1082) (size!20054 totalInput!891)))))

(assert (= (and d!659133 res!947605) b!2204575))

(assert (=> d!659133 m!2646045))

(assert (=> d!659133 m!2646045))

(declare-fun m!2646385 () Bool)

(assert (=> d!659133 m!2646385))

(declare-fun m!2646387 () Bool)

(assert (=> d!659133 m!2646387))

(assert (=> b!2204575 m!2646015))

(assert (=> b!2204400 d!659133))

(declare-fun bs!450783 () Bool)

(declare-fun d!659135 () Bool)

(assert (= bs!450783 (and d!659135 d!659079)))

(declare-fun lambda!83135 () Int)

(assert (=> bs!450783 (= lambda!83135 lambda!83096)))

(declare-fun bs!450784 () Bool)

(assert (= bs!450784 (and d!659135 d!659089)))

(assert (=> bs!450784 (not (= lambda!83135 lambda!83116))))

(declare-fun bs!450785 () Bool)

(assert (= bs!450785 (and d!659135 b!2204465)))

(assert (=> bs!450785 (not (= lambda!83135 lambda!83117))))

(declare-fun bs!450786 () Bool)

(assert (= bs!450786 (and d!659135 d!659025)))

(assert (=> bs!450786 (= lambda!83135 lambda!83086)))

(declare-fun bs!450787 () Bool)

(assert (= bs!450787 (and d!659135 b!2204466)))

(assert (=> bs!450787 (not (= lambda!83135 lambda!83118))))

(assert (=> d!659135 (= (nullableZipper!539 lt!824246) (exists!849 lt!824246 lambda!83135))))

(declare-fun bs!450788 () Bool)

(assert (= bs!450788 d!659135))

(declare-fun m!2646389 () Bool)

(assert (=> bs!450788 m!2646389))

(assert (=> b!2204400 d!659135))

(declare-fun d!659137 () Bool)

(declare-fun lt!824333 () Int)

(assert (=> d!659137 (>= lt!824333 0)))

(declare-fun e!1408478 () Int)

(assert (=> d!659137 (= lt!824333 e!1408478)))

(declare-fun c!351942 () Bool)

(assert (=> d!659137 (= c!351942 ((_ is Nil!25735) (drop!1447 lt!824203 (+ 1 from!1082))))))

(assert (=> d!659137 (= (size!20055 (drop!1447 lt!824203 (+ 1 from!1082))) lt!824333)))

(declare-fun b!2204576 () Bool)

(assert (=> b!2204576 (= e!1408478 0)))

(declare-fun b!2204577 () Bool)

(assert (=> b!2204577 (= e!1408478 (+ 1 (size!20055 (t!198453 (drop!1447 lt!824203 (+ 1 from!1082))))))))

(assert (= (and d!659137 c!351942) b!2204576))

(assert (= (and d!659137 (not c!351942)) b!2204577))

(declare-fun m!2646391 () Bool)

(assert (=> b!2204577 m!2646391))

(assert (=> b!2204406 d!659137))

(declare-fun d!659139 () Bool)

(declare-fun res!947610 () Bool)

(declare-fun e!1408481 () Bool)

(assert (=> d!659139 (=> (not res!947610) (not e!1408481))))

(declare-fun list!9938 (IArray!16795) List!25819)

(assert (=> d!659139 (= res!947610 (<= (size!20055 (list!9938 (xs!11337 (c!351801 totalInput!891)))) 512))))

(assert (=> d!659139 (= (inv!34676 (c!351801 totalInput!891)) e!1408481)))

(declare-fun b!2204582 () Bool)

(declare-fun res!947611 () Bool)

(assert (=> b!2204582 (=> (not res!947611) (not e!1408481))))

(assert (=> b!2204582 (= res!947611 (= (csize!17021 (c!351801 totalInput!891)) (size!20055 (list!9938 (xs!11337 (c!351801 totalInput!891))))))))

(declare-fun b!2204583 () Bool)

(assert (=> b!2204583 (= e!1408481 (and (> (csize!17021 (c!351801 totalInput!891)) 0) (<= (csize!17021 (c!351801 totalInput!891)) 512)))))

(assert (= (and d!659139 res!947610) b!2204582))

(assert (= (and b!2204582 res!947611) b!2204583))

(declare-fun m!2646393 () Bool)

(assert (=> d!659139 m!2646393))

(assert (=> d!659139 m!2646393))

(declare-fun m!2646395 () Bool)

(assert (=> d!659139 m!2646395))

(assert (=> b!2204582 m!2646393))

(assert (=> b!2204582 m!2646393))

(assert (=> b!2204582 m!2646395))

(assert (=> b!2204479 d!659139))

(declare-fun d!659141 () Bool)

(declare-fun lt!824334 () Int)

(assert (=> d!659141 (>= lt!824334 0)))

(declare-fun e!1408482 () Int)

(assert (=> d!659141 (= lt!824334 e!1408482)))

(declare-fun c!351943 () Bool)

(assert (=> d!659141 (= c!351943 ((_ is Nil!25735) lt!824200))))

(assert (=> d!659141 (= (size!20055 lt!824200) lt!824334)))

(declare-fun b!2204584 () Bool)

(assert (=> b!2204584 (= e!1408482 0)))

(declare-fun b!2204585 () Bool)

(assert (=> b!2204585 (= e!1408482 (+ 1 (size!20055 (t!198453 lt!824200))))))

(assert (= (and d!659141 c!351943) b!2204584))

(assert (= (and d!659141 (not c!351943)) b!2204585))

(declare-fun m!2646397 () Bool)

(assert (=> b!2204585 m!2646397))

(assert (=> b!2204262 d!659141))

(declare-fun b!2204586 () Bool)

(declare-fun e!1408486 () Int)

(assert (=> b!2204586 (= e!1408486 (size!20055 (t!198453 lt!824200)))))

(declare-fun d!659143 () Bool)

(declare-fun e!1408485 () Bool)

(assert (=> d!659143 e!1408485))

(declare-fun res!947612 () Bool)

(assert (=> d!659143 (=> (not res!947612) (not e!1408485))))

(declare-fun lt!824335 () List!25819)

(assert (=> d!659143 (= res!947612 (= ((_ map implies) (content!3495 lt!824335) (content!3495 (t!198453 lt!824200))) ((as const (InoxSet C!12664)) true)))))

(declare-fun e!1408483 () List!25819)

(assert (=> d!659143 (= lt!824335 e!1408483)))

(declare-fun c!351944 () Bool)

(assert (=> d!659143 (= c!351944 (or ((_ is Nil!25735) (t!198453 lt!824200)) (<= (- knownSize!10 1) 0)))))

(assert (=> d!659143 (= (take!437 (t!198453 lt!824200) (- knownSize!10 1)) lt!824335)))

(declare-fun b!2204587 () Bool)

(declare-fun e!1408484 () Int)

(assert (=> b!2204587 (= e!1408484 e!1408486)))

(declare-fun c!351945 () Bool)

(assert (=> b!2204587 (= c!351945 (>= (- knownSize!10 1) (size!20055 (t!198453 lt!824200))))))

(declare-fun b!2204588 () Bool)

(assert (=> b!2204588 (= e!1408486 (- knownSize!10 1))))

(declare-fun b!2204589 () Bool)

(assert (=> b!2204589 (= e!1408484 0)))

(declare-fun b!2204590 () Bool)

(assert (=> b!2204590 (= e!1408483 Nil!25735)))

(declare-fun b!2204591 () Bool)

(assert (=> b!2204591 (= e!1408483 (Cons!25735 (h!31136 (t!198453 lt!824200)) (take!437 (t!198453 (t!198453 lt!824200)) (- (- knownSize!10 1) 1))))))

(declare-fun b!2204592 () Bool)

(assert (=> b!2204592 (= e!1408485 (= (size!20055 lt!824335) e!1408484))))

(declare-fun c!351946 () Bool)

(assert (=> b!2204592 (= c!351946 (<= (- knownSize!10 1) 0))))

(assert (= (and d!659143 c!351944) b!2204590))

(assert (= (and d!659143 (not c!351944)) b!2204591))

(assert (= (and d!659143 res!947612) b!2204592))

(assert (= (and b!2204592 c!351946) b!2204589))

(assert (= (and b!2204592 (not c!351946)) b!2204587))

(assert (= (and b!2204587 c!351945) b!2204586))

(assert (= (and b!2204587 (not c!351945)) b!2204588))

(declare-fun m!2646399 () Bool)

(assert (=> b!2204592 m!2646399))

(assert (=> b!2204586 m!2646397))

(assert (=> b!2204587 m!2646397))

(declare-fun m!2646401 () Bool)

(assert (=> b!2204591 m!2646401))

(declare-fun m!2646403 () Bool)

(assert (=> d!659143 m!2646403))

(declare-fun m!2646405 () Bool)

(assert (=> d!659143 m!2646405))

(assert (=> b!2204266 d!659143))

(assert (=> b!2204325 d!659079))

(assert (=> b!2204341 d!659141))

(assert (=> b!2204405 d!659023))

(declare-fun d!659145 () Bool)

(declare-fun lt!824336 () Int)

(assert (=> d!659145 (>= lt!824336 0)))

(declare-fun e!1408487 () Int)

(assert (=> d!659145 (= lt!824336 e!1408487)))

(declare-fun c!351947 () Bool)

(assert (=> d!659145 (= c!351947 ((_ is Nil!25735) lt!824214))))

(assert (=> d!659145 (= (size!20055 lt!824214) lt!824336)))

(declare-fun b!2204593 () Bool)

(assert (=> b!2204593 (= e!1408487 0)))

(declare-fun b!2204594 () Bool)

(assert (=> b!2204594 (= e!1408487 (+ 1 (size!20055 (t!198453 lt!824214))))))

(assert (= (and d!659145 c!351947) b!2204593))

(assert (= (and d!659145 (not c!351947)) b!2204594))

(declare-fun m!2646407 () Bool)

(assert (=> b!2204594 m!2646407))

(assert (=> b!2204267 d!659145))

(declare-fun b!2204595 () Bool)

(declare-fun e!1408491 () Int)

(assert (=> b!2204595 (= e!1408491 (size!20055 (t!198453 (drop!1447 lt!824203 (+ 1 from!1082)))))))

(declare-fun d!659147 () Bool)

(declare-fun e!1408490 () Bool)

(assert (=> d!659147 e!1408490))

(declare-fun res!947613 () Bool)

(assert (=> d!659147 (=> (not res!947613) (not e!1408490))))

(declare-fun lt!824337 () List!25819)

(assert (=> d!659147 (= res!947613 (= ((_ map implies) (content!3495 lt!824337) (content!3495 (t!198453 (drop!1447 lt!824203 (+ 1 from!1082))))) ((as const (InoxSet C!12664)) true)))))

(declare-fun e!1408488 () List!25819)

(assert (=> d!659147 (= lt!824337 e!1408488)))

(declare-fun c!351948 () Bool)

(assert (=> d!659147 (= c!351948 (or ((_ is Nil!25735) (t!198453 (drop!1447 lt!824203 (+ 1 from!1082)))) (<= (- (- knownSize!10 1) 1) 0)))))

(assert (=> d!659147 (= (take!437 (t!198453 (drop!1447 lt!824203 (+ 1 from!1082))) (- (- knownSize!10 1) 1)) lt!824337)))

(declare-fun b!2204596 () Bool)

(declare-fun e!1408489 () Int)

(assert (=> b!2204596 (= e!1408489 e!1408491)))

(declare-fun c!351949 () Bool)

(assert (=> b!2204596 (= c!351949 (>= (- (- knownSize!10 1) 1) (size!20055 (t!198453 (drop!1447 lt!824203 (+ 1 from!1082))))))))

(declare-fun b!2204597 () Bool)

(assert (=> b!2204597 (= e!1408491 (- (- knownSize!10 1) 1))))

(declare-fun b!2204598 () Bool)

(assert (=> b!2204598 (= e!1408489 0)))

(declare-fun b!2204599 () Bool)

(assert (=> b!2204599 (= e!1408488 Nil!25735)))

(declare-fun b!2204600 () Bool)

(assert (=> b!2204600 (= e!1408488 (Cons!25735 (h!31136 (t!198453 (drop!1447 lt!824203 (+ 1 from!1082)))) (take!437 (t!198453 (t!198453 (drop!1447 lt!824203 (+ 1 from!1082)))) (- (- (- knownSize!10 1) 1) 1))))))

(declare-fun b!2204601 () Bool)

(assert (=> b!2204601 (= e!1408490 (= (size!20055 lt!824337) e!1408489))))

(declare-fun c!351950 () Bool)

(assert (=> b!2204601 (= c!351950 (<= (- (- knownSize!10 1) 1) 0))))

(assert (= (and d!659147 c!351948) b!2204599))

(assert (= (and d!659147 (not c!351948)) b!2204600))

(assert (= (and d!659147 res!947613) b!2204601))

(assert (= (and b!2204601 c!351950) b!2204598))

(assert (= (and b!2204601 (not c!351950)) b!2204596))

(assert (= (and b!2204596 c!351949) b!2204595))

(assert (= (and b!2204596 (not c!351949)) b!2204597))

(declare-fun m!2646409 () Bool)

(assert (=> b!2204601 m!2646409))

(assert (=> b!2204595 m!2646391))

(assert (=> b!2204596 m!2646391))

(declare-fun m!2646411 () Bool)

(assert (=> b!2204600 m!2646411))

(declare-fun m!2646413 () Bool)

(assert (=> d!659147 m!2646413))

(declare-fun m!2646415 () Bool)

(assert (=> d!659147 m!2646415))

(assert (=> b!2204411 d!659147))

(declare-fun d!659149 () Bool)

(declare-fun lt!824338 () C!12664)

(assert (=> d!659149 (contains!4288 (tail!3188 lt!824203) lt!824338)))

(declare-fun e!1408492 () C!12664)

(assert (=> d!659149 (= lt!824338 e!1408492)))

(declare-fun c!351951 () Bool)

(assert (=> d!659149 (= c!351951 (= (- from!1082 1) 0))))

(declare-fun e!1408493 () Bool)

(assert (=> d!659149 e!1408493))

(declare-fun res!947614 () Bool)

(assert (=> d!659149 (=> (not res!947614) (not e!1408493))))

(assert (=> d!659149 (= res!947614 (<= 0 (- from!1082 1)))))

(assert (=> d!659149 (= (apply!6332 (tail!3188 lt!824203) (- from!1082 1)) lt!824338)))

(declare-fun b!2204602 () Bool)

(assert (=> b!2204602 (= e!1408493 (< (- from!1082 1) (size!20055 (tail!3188 lt!824203))))))

(declare-fun b!2204603 () Bool)

(assert (=> b!2204603 (= e!1408492 (head!4709 (tail!3188 lt!824203)))))

(declare-fun b!2204604 () Bool)

(assert (=> b!2204604 (= e!1408492 (apply!6332 (tail!3188 (tail!3188 lt!824203)) (- (- from!1082 1) 1)))))

(assert (= (and d!659149 res!947614) b!2204602))

(assert (= (and d!659149 c!351951) b!2204603))

(assert (= (and d!659149 (not c!351951)) b!2204604))

(assert (=> d!659149 m!2646227))

(declare-fun m!2646417 () Bool)

(assert (=> d!659149 m!2646417))

(assert (=> b!2204602 m!2646227))

(declare-fun m!2646419 () Bool)

(assert (=> b!2204602 m!2646419))

(assert (=> b!2204603 m!2646227))

(declare-fun m!2646421 () Bool)

(assert (=> b!2204603 m!2646421))

(assert (=> b!2204604 m!2646227))

(declare-fun m!2646423 () Bool)

(assert (=> b!2204604 m!2646423))

(assert (=> b!2204604 m!2646423))

(declare-fun m!2646425 () Bool)

(assert (=> b!2204604 m!2646425))

(assert (=> b!2204436 d!659149))

(declare-fun d!659151 () Bool)

(assert (=> d!659151 (= (tail!3188 lt!824203) (t!198453 lt!824203))))

(assert (=> b!2204436 d!659151))

(declare-fun d!659153 () Bool)

(declare-fun c!351952 () Bool)

(assert (=> d!659153 (= c!351952 ((_ is Node!8395) (left!19771 (c!351801 totalInput!891))))))

(declare-fun e!1408494 () Bool)

(assert (=> d!659153 (= (inv!34670 (left!19771 (c!351801 totalInput!891))) e!1408494)))

(declare-fun b!2204605 () Bool)

(assert (=> b!2204605 (= e!1408494 (inv!34675 (left!19771 (c!351801 totalInput!891))))))

(declare-fun b!2204606 () Bool)

(declare-fun e!1408495 () Bool)

(assert (=> b!2204606 (= e!1408494 e!1408495)))

(declare-fun res!947615 () Bool)

(assert (=> b!2204606 (= res!947615 (not ((_ is Leaf!12292) (left!19771 (c!351801 totalInput!891)))))))

(assert (=> b!2204606 (=> res!947615 e!1408495)))

(declare-fun b!2204607 () Bool)

(assert (=> b!2204607 (= e!1408495 (inv!34676 (left!19771 (c!351801 totalInput!891))))))

(assert (= (and d!659153 c!351952) b!2204605))

(assert (= (and d!659153 (not c!351952)) b!2204606))

(assert (= (and b!2204606 (not res!947615)) b!2204607))

(declare-fun m!2646427 () Bool)

(assert (=> b!2204605 m!2646427))

(declare-fun m!2646429 () Bool)

(assert (=> b!2204607 m!2646429))

(assert (=> b!2204500 d!659153))

(declare-fun d!659155 () Bool)

(declare-fun c!351953 () Bool)

(assert (=> d!659155 (= c!351953 ((_ is Node!8395) (right!20101 (c!351801 totalInput!891))))))

(declare-fun e!1408496 () Bool)

(assert (=> d!659155 (= (inv!34670 (right!20101 (c!351801 totalInput!891))) e!1408496)))

(declare-fun b!2204608 () Bool)

(assert (=> b!2204608 (= e!1408496 (inv!34675 (right!20101 (c!351801 totalInput!891))))))

(declare-fun b!2204609 () Bool)

(declare-fun e!1408497 () Bool)

(assert (=> b!2204609 (= e!1408496 e!1408497)))

(declare-fun res!947616 () Bool)

(assert (=> b!2204609 (= res!947616 (not ((_ is Leaf!12292) (right!20101 (c!351801 totalInput!891)))))))

(assert (=> b!2204609 (=> res!947616 e!1408497)))

(declare-fun b!2204610 () Bool)

(assert (=> b!2204610 (= e!1408497 (inv!34676 (right!20101 (c!351801 totalInput!891))))))

(assert (= (and d!659155 c!351953) b!2204608))

(assert (= (and d!659155 (not c!351953)) b!2204609))

(assert (= (and b!2204609 (not res!947616)) b!2204610))

(declare-fun m!2646431 () Bool)

(assert (=> b!2204608 m!2646431))

(declare-fun m!2646433 () Bool)

(assert (=> b!2204610 m!2646433))

(assert (=> b!2204500 d!659155))

(declare-fun d!659157 () Bool)

(declare-fun e!1408500 () Bool)

(assert (=> d!659157 e!1408500))

(declare-fun res!947619 () Bool)

(assert (=> d!659157 (=> (not res!947619) (not e!1408500))))

(declare-fun lt!824341 () List!25820)

(declare-fun noDuplicate!313 (List!25820) Bool)

(assert (=> d!659157 (= res!947619 (noDuplicate!313 lt!824341))))

(declare-fun choose!13030 ((InoxSet Context!3658)) List!25820)

(assert (=> d!659157 (= lt!824341 (choose!13030 z!3888))))

(assert (=> d!659157 (= (toList!1270 z!3888) lt!824341)))

(declare-fun b!2204613 () Bool)

(declare-fun content!3497 (List!25820) (InoxSet Context!3658))

(assert (=> b!2204613 (= e!1408500 (= (content!3497 lt!824341) z!3888))))

(assert (= (and d!659157 res!947619) b!2204613))

(declare-fun m!2646435 () Bool)

(assert (=> d!659157 m!2646435))

(declare-fun m!2646437 () Bool)

(assert (=> d!659157 m!2646437))

(declare-fun m!2646439 () Bool)

(assert (=> b!2204613 m!2646439))

(assert (=> bm!132197 d!659157))

(assert (=> b!2204357 d!659111))

(declare-fun bs!450789 () Bool)

(declare-fun d!659159 () Bool)

(assert (= bs!450789 (and d!659159 d!659079)))

(declare-fun lambda!83138 () Int)

(assert (=> bs!450789 (not (= lambda!83138 lambda!83096))))

(declare-fun bs!450790 () Bool)

(assert (= bs!450790 (and d!659159 d!659089)))

(assert (=> bs!450790 (not (= lambda!83138 lambda!83116))))

(declare-fun bs!450791 () Bool)

(assert (= bs!450791 (and d!659159 b!2204465)))

(assert (=> bs!450791 (not (= lambda!83138 lambda!83117))))

(declare-fun bs!450792 () Bool)

(assert (= bs!450792 (and d!659159 d!659025)))

(assert (=> bs!450792 (not (= lambda!83138 lambda!83086))))

(declare-fun bs!450793 () Bool)

(assert (= bs!450793 (and d!659159 d!659135)))

(assert (=> bs!450793 (not (= lambda!83138 lambda!83135))))

(declare-fun bs!450794 () Bool)

(assert (= bs!450794 (and d!659159 b!2204466)))

(assert (=> bs!450794 (not (= lambda!83138 lambda!83118))))

(assert (=> d!659159 true))

(declare-fun order!14815 () Int)

(declare-fun dynLambda!11454 (Int Int) Int)

(assert (=> d!659159 (< (dynLambda!11454 order!14815 lambda!83116) (dynLambda!11454 order!14815 lambda!83138))))

(assert (=> d!659159 (not (exists!851 lt!824292 lambda!83138))))

(declare-fun lt!824344 () Unit!38819)

(declare-fun choose!13031 (List!25820 Int) Unit!38819)

(assert (=> d!659159 (= lt!824344 (choose!13031 lt!824292 lambda!83116))))

(declare-fun forall!5265 (List!25820 Int) Bool)

(assert (=> d!659159 (forall!5265 lt!824292 lambda!83116)))

(assert (=> d!659159 (= (lemmaForallThenNotExists!57 lt!824292 lambda!83116) lt!824344)))

(declare-fun bs!450795 () Bool)

(assert (= bs!450795 d!659159))

(declare-fun m!2646441 () Bool)

(assert (=> bs!450795 m!2646441))

(declare-fun m!2646443 () Bool)

(assert (=> bs!450795 m!2646443))

(declare-fun m!2646445 () Bool)

(assert (=> bs!450795 m!2646445))

(assert (=> b!2204466 d!659159))

(declare-fun d!659161 () Bool)

(declare-fun lt!824345 () Int)

(assert (=> d!659161 (>= lt!824345 0)))

(declare-fun e!1408503 () Int)

(assert (=> d!659161 (= lt!824345 e!1408503)))

(declare-fun c!351954 () Bool)

(assert (=> d!659161 (= c!351954 ((_ is Nil!25735) lt!824230))))

(assert (=> d!659161 (= (size!20055 lt!824230) lt!824345)))

(declare-fun b!2204616 () Bool)

(assert (=> b!2204616 (= e!1408503 0)))

(declare-fun b!2204617 () Bool)

(assert (=> b!2204617 (= e!1408503 (+ 1 (size!20055 (t!198453 lt!824230))))))

(assert (= (and d!659161 c!351954) b!2204616))

(assert (= (and d!659161 (not c!351954)) b!2204617))

(declare-fun m!2646447 () Bool)

(assert (=> b!2204617 m!2646447))

(assert (=> b!2204346 d!659161))

(assert (=> b!2204434 d!659111))

(assert (=> b!2204222 d!659109))

(declare-fun d!659163 () Bool)

(declare-fun c!351957 () Bool)

(assert (=> d!659163 (= c!351957 ((_ is Nil!25735) lt!824251))))

(declare-fun e!1408506 () (InoxSet C!12664))

(assert (=> d!659163 (= (content!3495 lt!824251) e!1408506)))

(declare-fun b!2204622 () Bool)

(assert (=> b!2204622 (= e!1408506 ((as const (Array C!12664 Bool)) false))))

(declare-fun b!2204623 () Bool)

(assert (=> b!2204623 (= e!1408506 ((_ map or) (store ((as const (Array C!12664 Bool)) false) (h!31136 lt!824251) true) (content!3495 (t!198453 lt!824251))))))

(assert (= (and d!659163 c!351957) b!2204622))

(assert (= (and d!659163 (not c!351957)) b!2204623))

(declare-fun m!2646449 () Bool)

(assert (=> b!2204623 m!2646449))

(declare-fun m!2646451 () Bool)

(assert (=> b!2204623 m!2646451))

(assert (=> d!659075 d!659163))

(declare-fun d!659165 () Bool)

(declare-fun c!351958 () Bool)

(assert (=> d!659165 (= c!351958 ((_ is Nil!25735) (drop!1447 lt!824203 (+ 1 from!1082))))))

(declare-fun e!1408507 () (InoxSet C!12664))

(assert (=> d!659165 (= (content!3495 (drop!1447 lt!824203 (+ 1 from!1082))) e!1408507)))

(declare-fun b!2204624 () Bool)

(assert (=> b!2204624 (= e!1408507 ((as const (Array C!12664 Bool)) false))))

(declare-fun b!2204625 () Bool)

(assert (=> b!2204625 (= e!1408507 ((_ map or) (store ((as const (Array C!12664 Bool)) false) (h!31136 (drop!1447 lt!824203 (+ 1 from!1082))) true) (content!3495 (t!198453 (drop!1447 lt!824203 (+ 1 from!1082))))))))

(assert (= (and d!659165 c!351958) b!2204624))

(assert (= (and d!659165 (not c!351958)) b!2204625))

(declare-fun m!2646453 () Bool)

(assert (=> b!2204625 m!2646453))

(assert (=> b!2204625 m!2646415))

(assert (=> d!659075 d!659165))

(declare-fun d!659167 () Bool)

(declare-fun lt!824348 () Bool)

(assert (=> d!659167 (= lt!824348 (exists!851 (toList!1270 z!3888) lambda!83086))))

(declare-fun choose!13032 ((InoxSet Context!3658) Int) Bool)

(assert (=> d!659167 (= lt!824348 (choose!13032 z!3888 lambda!83086))))

(assert (=> d!659167 (= (exists!849 z!3888 lambda!83086) lt!824348)))

(declare-fun bs!450796 () Bool)

(assert (= bs!450796 d!659167))

(assert (=> bs!450796 m!2646277))

(assert (=> bs!450796 m!2646277))

(declare-fun m!2646455 () Bool)

(assert (=> bs!450796 m!2646455))

(declare-fun m!2646457 () Bool)

(assert (=> bs!450796 m!2646457))

(assert (=> d!659025 d!659167))

(declare-fun d!659169 () Bool)

(assert (=> d!659169 (= (isEmpty!14713 lt!824208) ((_ is Nil!25735) lt!824208))))

(assert (=> d!659033 d!659169))

(assert (=> bm!132187 d!659111))

(declare-fun d!659171 () Bool)

(declare-fun lt!824349 () Int)

(assert (=> d!659171 (>= lt!824349 0)))

(declare-fun e!1408508 () Int)

(assert (=> d!659171 (= lt!824349 e!1408508)))

(declare-fun c!351959 () Bool)

(assert (=> d!659171 (= c!351959 ((_ is Nil!25735) lt!824220))))

(assert (=> d!659171 (= (size!20055 lt!824220) lt!824349)))

(declare-fun b!2204626 () Bool)

(assert (=> b!2204626 (= e!1408508 0)))

(declare-fun b!2204627 () Bool)

(assert (=> b!2204627 (= e!1408508 (+ 1 (size!20055 (t!198453 lt!824220))))))

(assert (= (and d!659171 c!351959) b!2204626))

(assert (= (and d!659171 (not c!351959)) b!2204627))

(declare-fun m!2646459 () Bool)

(assert (=> b!2204627 m!2646459))

(assert (=> b!2204300 d!659171))

(declare-fun d!659173 () Bool)

(assert (=> d!659173 (= (isEmpty!14717 (getLanguageWitness!155 z!3888)) (not ((_ is Some!5031) (getLanguageWitness!155 z!3888))))))

(assert (=> d!659089 d!659173))

(declare-fun bs!450797 () Bool)

(declare-fun d!659175 () Bool)

(assert (= bs!450797 (and d!659175 d!659079)))

(declare-fun lambda!83145 () Int)

(assert (=> bs!450797 (not (= lambda!83145 lambda!83096))))

(declare-fun bs!450798 () Bool)

(assert (= bs!450798 (and d!659175 d!659089)))

(assert (=> bs!450798 (not (= lambda!83145 lambda!83116))))

(declare-fun bs!450799 () Bool)

(assert (= bs!450799 (and d!659175 b!2204465)))

(assert (=> bs!450799 (= lambda!83145 lambda!83117)))

(declare-fun bs!450800 () Bool)

(assert (= bs!450800 (and d!659175 d!659159)))

(assert (=> bs!450800 (not (= lambda!83145 lambda!83138))))

(declare-fun bs!450801 () Bool)

(assert (= bs!450801 (and d!659175 d!659025)))

(assert (=> bs!450801 (not (= lambda!83145 lambda!83086))))

(declare-fun bs!450802 () Bool)

(assert (= bs!450802 (and d!659175 d!659135)))

(assert (=> bs!450802 (not (= lambda!83145 lambda!83135))))

(declare-fun bs!450803 () Bool)

(assert (= bs!450803 (and d!659175 b!2204466)))

(assert (=> bs!450803 (= lambda!83145 lambda!83118)))

(declare-fun lt!824352 () Option!5032)

(declare-fun isDefined!4114 (Option!5032) Bool)

(assert (=> d!659175 (= (isDefined!4114 lt!824352) (exists!849 z!3888 lambda!83145))))

(declare-fun e!1408511 () Option!5032)

(assert (=> d!659175 (= lt!824352 e!1408511)))

(declare-fun c!351968 () Bool)

(assert (=> d!659175 (= c!351968 (exists!849 z!3888 lambda!83145))))

(assert (=> d!659175 (= (getLanguageWitness!155 z!3888) lt!824352)))

(declare-fun b!2204632 () Bool)

(declare-fun getLanguageWitness!157 (Context!3658) Option!5032)

(declare-fun getWitness!514 ((InoxSet Context!3658) Int) Context!3658)

(assert (=> b!2204632 (= e!1408511 (getLanguageWitness!157 (getWitness!514 z!3888 lambda!83145)))))

(declare-fun b!2204633 () Bool)

(assert (=> b!2204633 (= e!1408511 None!5031)))

(assert (= (and d!659175 c!351968) b!2204632))

(assert (= (and d!659175 (not c!351968)) b!2204633))

(declare-fun m!2646461 () Bool)

(assert (=> d!659175 m!2646461))

(declare-fun m!2646463 () Bool)

(assert (=> d!659175 m!2646463))

(assert (=> d!659175 m!2646463))

(declare-fun m!2646465 () Bool)

(assert (=> b!2204632 m!2646465))

(assert (=> b!2204632 m!2646465))

(declare-fun m!2646467 () Bool)

(assert (=> b!2204632 m!2646467))

(assert (=> d!659089 d!659175))

(declare-fun d!659177 () Bool)

(declare-fun lt!824355 () Bool)

(assert (=> d!659177 (= lt!824355 (forall!5265 (toList!1270 z!3888) lambda!83116))))

(declare-fun choose!13033 ((InoxSet Context!3658) Int) Bool)

(assert (=> d!659177 (= lt!824355 (choose!13033 z!3888 lambda!83116))))

(assert (=> d!659177 (= (forall!5263 z!3888 lambda!83116) lt!824355)))

(declare-fun bs!450804 () Bool)

(assert (= bs!450804 d!659177))

(assert (=> bs!450804 m!2646277))

(assert (=> bs!450804 m!2646277))

(declare-fun m!2646469 () Bool)

(assert (=> bs!450804 m!2646469))

(declare-fun m!2646471 () Bool)

(assert (=> bs!450804 m!2646471))

(assert (=> d!659089 d!659177))

(declare-fun bs!450805 () Bool)

(declare-fun d!659179 () Bool)

(assert (= bs!450805 (and d!659179 d!659079)))

(declare-fun lambda!83146 () Int)

(assert (=> bs!450805 (not (= lambda!83146 lambda!83096))))

(declare-fun bs!450806 () Bool)

(assert (= bs!450806 (and d!659179 d!659089)))

(assert (=> bs!450806 (= lambda!83146 lambda!83116)))

(declare-fun bs!450807 () Bool)

(assert (= bs!450807 (and d!659179 b!2204465)))

(assert (=> bs!450807 (not (= lambda!83146 lambda!83117))))

(declare-fun bs!450808 () Bool)

(assert (= bs!450808 (and d!659179 d!659159)))

(assert (=> bs!450808 (not (= lambda!83146 lambda!83138))))

(declare-fun bs!450809 () Bool)

(assert (= bs!450809 (and d!659179 d!659175)))

(assert (=> bs!450809 (not (= lambda!83146 lambda!83145))))

(declare-fun bs!450810 () Bool)

(assert (= bs!450810 (and d!659179 d!659025)))

(assert (=> bs!450810 (not (= lambda!83146 lambda!83086))))

(declare-fun bs!450811 () Bool)

(assert (= bs!450811 (and d!659179 d!659135)))

(assert (=> bs!450811 (not (= lambda!83146 lambda!83135))))

(declare-fun bs!450812 () Bool)

(assert (= bs!450812 (and d!659179 b!2204466)))

(assert (=> bs!450812 (not (= lambda!83146 lambda!83118))))

(declare-fun bs!450813 () Bool)

(declare-fun b!2204634 () Bool)

(assert (= bs!450813 (and b!2204634 d!659079)))

(declare-fun lambda!83147 () Int)

(assert (=> bs!450813 (not (= lambda!83147 lambda!83096))))

(declare-fun bs!450814 () Bool)

(assert (= bs!450814 (and b!2204634 d!659089)))

(assert (=> bs!450814 (not (= lambda!83147 lambda!83116))))

(declare-fun bs!450815 () Bool)

(assert (= bs!450815 (and b!2204634 b!2204465)))

(assert (=> bs!450815 (= lambda!83147 lambda!83117)))

(declare-fun bs!450816 () Bool)

(assert (= bs!450816 (and b!2204634 d!659159)))

(assert (=> bs!450816 (not (= lambda!83147 lambda!83138))))

(declare-fun bs!450817 () Bool)

(assert (= bs!450817 (and b!2204634 d!659175)))

(assert (=> bs!450817 (= lambda!83147 lambda!83145)))

(declare-fun bs!450818 () Bool)

(assert (= bs!450818 (and b!2204634 d!659179)))

(assert (=> bs!450818 (not (= lambda!83147 lambda!83146))))

(declare-fun bs!450819 () Bool)

(assert (= bs!450819 (and b!2204634 d!659025)))

(assert (=> bs!450819 (not (= lambda!83147 lambda!83086))))

(declare-fun bs!450820 () Bool)

(assert (= bs!450820 (and b!2204634 d!659135)))

(assert (=> bs!450820 (not (= lambda!83147 lambda!83135))))

(declare-fun bs!450821 () Bool)

(assert (= bs!450821 (and b!2204634 b!2204466)))

(assert (=> bs!450821 (= lambda!83147 lambda!83118)))

(declare-fun bs!450822 () Bool)

(declare-fun b!2204635 () Bool)

(assert (= bs!450822 (and b!2204635 d!659079)))

(declare-fun lambda!83148 () Int)

(assert (=> bs!450822 (not (= lambda!83148 lambda!83096))))

(declare-fun bs!450823 () Bool)

(assert (= bs!450823 (and b!2204635 d!659089)))

(assert (=> bs!450823 (not (= lambda!83148 lambda!83116))))

(declare-fun bs!450824 () Bool)

(assert (= bs!450824 (and b!2204635 b!2204465)))

(assert (=> bs!450824 (= lambda!83148 lambda!83117)))

(declare-fun bs!450825 () Bool)

(assert (= bs!450825 (and b!2204635 d!659159)))

(assert (=> bs!450825 (not (= lambda!83148 lambda!83138))))

(declare-fun bs!450826 () Bool)

(assert (= bs!450826 (and b!2204635 d!659175)))

(assert (=> bs!450826 (= lambda!83148 lambda!83145)))

(declare-fun bs!450827 () Bool)

(assert (= bs!450827 (and b!2204635 d!659179)))

(assert (=> bs!450827 (not (= lambda!83148 lambda!83146))))

(declare-fun bs!450828 () Bool)

(assert (= bs!450828 (and b!2204635 d!659025)))

(assert (=> bs!450828 (not (= lambda!83148 lambda!83086))))

(declare-fun bs!450829 () Bool)

(assert (= bs!450829 (and b!2204635 b!2204634)))

(assert (=> bs!450829 (= lambda!83148 lambda!83147)))

(declare-fun bs!450830 () Bool)

(assert (= bs!450830 (and b!2204635 d!659135)))

(assert (=> bs!450830 (not (= lambda!83148 lambda!83135))))

(declare-fun bs!450831 () Bool)

(assert (= bs!450831 (and b!2204635 b!2204466)))

(assert (=> bs!450831 (= lambda!83148 lambda!83118)))

(declare-fun bm!132206 () Bool)

(declare-fun call!132211 () List!25820)

(assert (=> bm!132206 (= call!132211 (toList!1270 lt!824201))))

(declare-fun e!1408512 () Unit!38819)

(declare-fun Unit!38825 () Unit!38819)

(assert (=> b!2204634 (= e!1408512 Unit!38825)))

(declare-fun lt!824359 () List!25820)

(assert (=> b!2204634 (= lt!824359 call!132211)))

(declare-fun lt!824362 () Unit!38819)

(assert (=> b!2204634 (= lt!824362 (lemmaNotForallThenExists!57 lt!824359 lambda!83146))))

(declare-fun call!132210 () Bool)

(assert (=> b!2204634 call!132210))

(declare-fun lt!824356 () Unit!38819)

(assert (=> b!2204634 (= lt!824356 lt!824362)))

(declare-fun Unit!38826 () Unit!38819)

(assert (=> b!2204635 (= e!1408512 Unit!38826)))

(declare-fun lt!824363 () List!25820)

(assert (=> b!2204635 (= lt!824363 call!132211)))

(declare-fun lt!824361 () Unit!38819)

(assert (=> b!2204635 (= lt!824361 (lemmaForallThenNotExists!57 lt!824363 lambda!83146))))

(assert (=> b!2204635 (not call!132210)))

(declare-fun lt!824360 () Unit!38819)

(assert (=> b!2204635 (= lt!824360 lt!824361)))

(declare-fun bm!132205 () Bool)

(declare-fun c!351969 () Bool)

(assert (=> bm!132205 (= call!132210 (exists!851 (ite c!351969 lt!824359 lt!824363) (ite c!351969 lambda!83147 lambda!83148)))))

(declare-fun lt!824357 () Bool)

(assert (=> d!659179 (= lt!824357 (isEmpty!14717 (getLanguageWitness!155 lt!824201)))))

(assert (=> d!659179 (= lt!824357 (forall!5263 lt!824201 lambda!83146))))

(declare-fun lt!824358 () Unit!38819)

(assert (=> d!659179 (= lt!824358 e!1408512)))

(assert (=> d!659179 (= c!351969 (not (forall!5263 lt!824201 lambda!83146)))))

(assert (=> d!659179 (= (lostCauseZipper!359 lt!824201) lt!824357)))

(assert (= (and d!659179 c!351969) b!2204634))

(assert (= (and d!659179 (not c!351969)) b!2204635))

(assert (= (or b!2204634 b!2204635) bm!132205))

(assert (= (or b!2204634 b!2204635) bm!132206))

(declare-fun m!2646473 () Bool)

(assert (=> bm!132206 m!2646473))

(declare-fun m!2646475 () Bool)

(assert (=> bm!132205 m!2646475))

(declare-fun m!2646477 () Bool)

(assert (=> d!659179 m!2646477))

(assert (=> d!659179 m!2646477))

(declare-fun m!2646479 () Bool)

(assert (=> d!659179 m!2646479))

(declare-fun m!2646481 () Bool)

(assert (=> d!659179 m!2646481))

(assert (=> d!659179 m!2646481))

(declare-fun m!2646483 () Bool)

(assert (=> b!2204634 m!2646483))

(declare-fun m!2646485 () Bool)

(assert (=> b!2204635 m!2646485))

(assert (=> b!2204399 d!659179))

(declare-fun d!659181 () Bool)

(declare-fun c!351970 () Bool)

(assert (=> d!659181 (= c!351970 ((_ is Nil!25735) lt!824220))))

(declare-fun e!1408513 () (InoxSet C!12664))

(assert (=> d!659181 (= (content!3495 lt!824220) e!1408513)))

(declare-fun b!2204636 () Bool)

(assert (=> b!2204636 (= e!1408513 ((as const (Array C!12664 Bool)) false))))

(declare-fun b!2204637 () Bool)

(assert (=> b!2204637 (= e!1408513 ((_ map or) (store ((as const (Array C!12664 Bool)) false) (h!31136 lt!824220) true) (content!3495 (t!198453 lt!824220))))))

(assert (= (and d!659181 c!351970) b!2204636))

(assert (= (and d!659181 (not c!351970)) b!2204637))

(declare-fun m!2646487 () Bool)

(assert (=> b!2204637 m!2646487))

(declare-fun m!2646489 () Bool)

(assert (=> b!2204637 m!2646489))

(assert (=> d!659039 d!659181))

(declare-fun d!659183 () Bool)

(declare-fun c!351971 () Bool)

(assert (=> d!659183 (= c!351971 ((_ is Nil!25735) lt!824203))))

(declare-fun e!1408514 () (InoxSet C!12664))

(assert (=> d!659183 (= (content!3495 lt!824203) e!1408514)))

(declare-fun b!2204638 () Bool)

(assert (=> b!2204638 (= e!1408514 ((as const (Array C!12664 Bool)) false))))

(declare-fun b!2204639 () Bool)

(assert (=> b!2204639 (= e!1408514 ((_ map or) (store ((as const (Array C!12664 Bool)) false) (h!31136 lt!824203) true) (content!3495 (t!198453 lt!824203))))))

(assert (= (and d!659183 c!351971) b!2204638))

(assert (= (and d!659183 (not c!351971)) b!2204639))

(declare-fun m!2646491 () Bool)

(assert (=> b!2204639 m!2646491))

(declare-fun m!2646493 () Bool)

(assert (=> b!2204639 m!2646493))

(assert (=> d!659039 d!659183))

(declare-fun b!2204640 () Bool)

(declare-fun e!1408515 () Int)

(declare-fun call!132212 () Int)

(assert (=> b!2204640 (= e!1408515 (- call!132212 (- from!1082 1)))))

(declare-fun b!2204641 () Bool)

(declare-fun e!1408516 () List!25819)

(declare-fun e!1408517 () List!25819)

(assert (=> b!2204641 (= e!1408516 e!1408517)))

(declare-fun c!351974 () Bool)

(assert (=> b!2204641 (= c!351974 (<= (- from!1082 1) 0))))

(declare-fun b!2204642 () Bool)

(assert (=> b!2204642 (= e!1408516 Nil!25735)))

(declare-fun b!2204643 () Bool)

(assert (=> b!2204643 (= e!1408517 (t!198453 lt!824203))))

(declare-fun b!2204644 () Bool)

(assert (=> b!2204644 (= e!1408517 (drop!1447 (t!198453 (t!198453 lt!824203)) (- (- from!1082 1) 1)))))

(declare-fun bm!132207 () Bool)

(assert (=> bm!132207 (= call!132212 (size!20055 (t!198453 lt!824203)))))

(declare-fun d!659185 () Bool)

(declare-fun e!1408518 () Bool)

(assert (=> d!659185 e!1408518))

(declare-fun res!947620 () Bool)

(assert (=> d!659185 (=> (not res!947620) (not e!1408518))))

(declare-fun lt!824364 () List!25819)

(assert (=> d!659185 (= res!947620 (= ((_ map implies) (content!3495 lt!824364) (content!3495 (t!198453 lt!824203))) ((as const (InoxSet C!12664)) true)))))

(assert (=> d!659185 (= lt!824364 e!1408516)))

(declare-fun c!351973 () Bool)

(assert (=> d!659185 (= c!351973 ((_ is Nil!25735) (t!198453 lt!824203)))))

(assert (=> d!659185 (= (drop!1447 (t!198453 lt!824203) (- from!1082 1)) lt!824364)))

(declare-fun b!2204645 () Bool)

(declare-fun e!1408519 () Int)

(assert (=> b!2204645 (= e!1408518 (= (size!20055 lt!824364) e!1408519))))

(declare-fun c!351972 () Bool)

(assert (=> b!2204645 (= c!351972 (<= (- from!1082 1) 0))))

(declare-fun b!2204646 () Bool)

(assert (=> b!2204646 (= e!1408519 e!1408515)))

(declare-fun c!351975 () Bool)

(assert (=> b!2204646 (= c!351975 (>= (- from!1082 1) call!132212))))

(declare-fun b!2204647 () Bool)

(assert (=> b!2204647 (= e!1408515 0)))

(declare-fun b!2204648 () Bool)

(assert (=> b!2204648 (= e!1408519 call!132212)))

(assert (= (and d!659185 c!351973) b!2204642))

(assert (= (and d!659185 (not c!351973)) b!2204641))

(assert (= (and b!2204641 c!351974) b!2204643))

(assert (= (and b!2204641 (not c!351974)) b!2204644))

(assert (= (and d!659185 res!947620) b!2204645))

(assert (= (and b!2204645 c!351972) b!2204648))

(assert (= (and b!2204645 (not c!351972)) b!2204646))

(assert (= (and b!2204646 c!351975) b!2204647))

(assert (= (and b!2204646 (not c!351975)) b!2204640))

(assert (= (or b!2204648 b!2204646 b!2204640) bm!132207))

(declare-fun m!2646495 () Bool)

(assert (=> b!2204644 m!2646495))

(assert (=> bm!132207 m!2646327))

(declare-fun m!2646497 () Bool)

(assert (=> d!659185 m!2646497))

(assert (=> d!659185 m!2646493))

(declare-fun m!2646499 () Bool)

(assert (=> b!2204645 m!2646499))

(assert (=> b!2204299 d!659185))

(declare-fun d!659187 () Bool)

(declare-fun res!947634 () Bool)

(declare-fun e!1408525 () Bool)

(assert (=> d!659187 (=> res!947634 e!1408525)))

(assert (=> d!659187 (= res!947634 (not ((_ is Node!8395) (c!351801 totalInput!891))))))

(assert (=> d!659187 (= (isBalanced!2584 (c!351801 totalInput!891)) e!1408525)))

(declare-fun b!2204661 () Bool)

(declare-fun res!947633 () Bool)

(declare-fun e!1408524 () Bool)

(assert (=> b!2204661 (=> (not res!947633) (not e!1408524))))

(assert (=> b!2204661 (= res!947633 (not (isEmpty!14714 (left!19771 (c!351801 totalInput!891)))))))

(declare-fun b!2204662 () Bool)

(assert (=> b!2204662 (= e!1408525 e!1408524)))

(declare-fun res!947638 () Bool)

(assert (=> b!2204662 (=> (not res!947638) (not e!1408524))))

(assert (=> b!2204662 (= res!947638 (<= (- 1) (- (height!1256 (left!19771 (c!351801 totalInput!891))) (height!1256 (right!20101 (c!351801 totalInput!891))))))))

(declare-fun b!2204663 () Bool)

(declare-fun res!947635 () Bool)

(assert (=> b!2204663 (=> (not res!947635) (not e!1408524))))

(assert (=> b!2204663 (= res!947635 (isBalanced!2584 (left!19771 (c!351801 totalInput!891))))))

(declare-fun b!2204664 () Bool)

(assert (=> b!2204664 (= e!1408524 (not (isEmpty!14714 (right!20101 (c!351801 totalInput!891)))))))

(declare-fun b!2204665 () Bool)

(declare-fun res!947636 () Bool)

(assert (=> b!2204665 (=> (not res!947636) (not e!1408524))))

(assert (=> b!2204665 (= res!947636 (isBalanced!2584 (right!20101 (c!351801 totalInput!891))))))

(declare-fun b!2204666 () Bool)

(declare-fun res!947637 () Bool)

(assert (=> b!2204666 (=> (not res!947637) (not e!1408524))))

(assert (=> b!2204666 (= res!947637 (<= (- (height!1256 (left!19771 (c!351801 totalInput!891))) (height!1256 (right!20101 (c!351801 totalInput!891)))) 1))))

(assert (= (and d!659187 (not res!947634)) b!2204662))

(assert (= (and b!2204662 res!947638) b!2204666))

(assert (= (and b!2204666 res!947637) b!2204663))

(assert (= (and b!2204663 res!947635) b!2204665))

(assert (= (and b!2204665 res!947636) b!2204661))

(assert (= (and b!2204661 res!947633) b!2204664))

(assert (=> b!2204666 m!2646359))

(assert (=> b!2204666 m!2646361))

(declare-fun m!2646501 () Bool)

(assert (=> b!2204663 m!2646501))

(declare-fun m!2646503 () Bool)

(assert (=> b!2204664 m!2646503))

(declare-fun m!2646505 () Bool)

(assert (=> b!2204665 m!2646505))

(declare-fun m!2646507 () Bool)

(assert (=> b!2204661 m!2646507))

(assert (=> b!2204662 m!2646359))

(assert (=> b!2204662 m!2646361))

(assert (=> d!659107 d!659187))

(assert (=> b!2204261 d!659141))

(declare-fun d!659189 () Bool)

(assert (=> d!659189 (= (isEmpty!14713 lt!824204) ((_ is Nil!25735) lt!824204))))

(assert (=> d!659051 d!659189))

(declare-fun bs!450832 () Bool)

(declare-fun d!659191 () Bool)

(assert (= bs!450832 (and d!659191 d!659085)))

(declare-fun lambda!83149 () Int)

(assert (=> bs!450832 (= lambda!83149 lambda!83101)))

(assert (=> d!659191 (= (inv!34672 setElem!19135) (forall!5261 (exprs!2329 setElem!19135) lambda!83149))))

(declare-fun bs!450833 () Bool)

(assert (= bs!450833 d!659191))

(declare-fun m!2646509 () Bool)

(assert (=> bs!450833 m!2646509))

(assert (=> setNonEmpty!19135 d!659191))

(assert (=> b!2204340 d!659141))

(assert (=> b!2204407 d!659137))

(assert (=> b!2204243 d!659025))

(declare-fun d!659193 () Bool)

(declare-fun c!351976 () Bool)

(assert (=> d!659193 (= c!351976 (isEmpty!14713 (tail!3188 lt!824204)))))

(declare-fun e!1408526 () Bool)

(assert (=> d!659193 (= (matchZipper!345 (derivationStepZipper!301 lt!824201 (head!4709 lt!824204)) (tail!3188 lt!824204)) e!1408526)))

(declare-fun b!2204667 () Bool)

(assert (=> b!2204667 (= e!1408526 (nullableZipper!539 (derivationStepZipper!301 lt!824201 (head!4709 lt!824204))))))

(declare-fun b!2204668 () Bool)

(assert (=> b!2204668 (= e!1408526 (matchZipper!345 (derivationStepZipper!301 (derivationStepZipper!301 lt!824201 (head!4709 lt!824204)) (head!4709 (tail!3188 lt!824204))) (tail!3188 (tail!3188 lt!824204))))))

(assert (= (and d!659193 c!351976) b!2204667))

(assert (= (and d!659193 (not c!351976)) b!2204668))

(assert (=> d!659193 m!2646127))

(declare-fun m!2646511 () Bool)

(assert (=> d!659193 m!2646511))

(assert (=> b!2204667 m!2646123))

(declare-fun m!2646513 () Bool)

(assert (=> b!2204667 m!2646513))

(assert (=> b!2204668 m!2646127))

(declare-fun m!2646515 () Bool)

(assert (=> b!2204668 m!2646515))

(assert (=> b!2204668 m!2646123))

(assert (=> b!2204668 m!2646515))

(declare-fun m!2646517 () Bool)

(assert (=> b!2204668 m!2646517))

(assert (=> b!2204668 m!2646127))

(declare-fun m!2646519 () Bool)

(assert (=> b!2204668 m!2646519))

(assert (=> b!2204668 m!2646517))

(assert (=> b!2204668 m!2646519))

(declare-fun m!2646521 () Bool)

(assert (=> b!2204668 m!2646521))

(assert (=> b!2204326 d!659193))

(declare-fun bs!450834 () Bool)

(declare-fun d!659195 () Bool)

(assert (= bs!450834 (and d!659195 d!659055)))

(declare-fun lambda!83150 () Int)

(assert (=> bs!450834 (= (= (head!4709 lt!824204) (apply!6333 totalInput!891 from!1082)) (= lambda!83150 lambda!83095))))

(declare-fun bs!450835 () Bool)

(assert (= bs!450835 (and d!659195 d!659131)))

(assert (=> bs!450835 (= (= (head!4709 lt!824204) (apply!6333 totalInput!891 (+ 1 from!1082))) (= lambda!83150 lambda!83134))))

(assert (=> d!659195 true))

(assert (=> d!659195 (= (derivationStepZipper!301 lt!824201 (head!4709 lt!824204)) (flatMap!166 lt!824201 lambda!83150))))

(declare-fun bs!450836 () Bool)

(assert (= bs!450836 d!659195))

(declare-fun m!2646523 () Bool)

(assert (=> bs!450836 m!2646523))

(assert (=> b!2204326 d!659195))

(declare-fun d!659197 () Bool)

(assert (=> d!659197 (= (head!4709 lt!824204) (h!31136 lt!824204))))

(assert (=> b!2204326 d!659197))

(declare-fun d!659199 () Bool)

(assert (=> d!659199 (= (tail!3188 lt!824204) (t!198453 lt!824204))))

(assert (=> b!2204326 d!659199))

(declare-fun d!659201 () Bool)

(declare-fun res!947643 () Bool)

(declare-fun e!1408531 () Bool)

(assert (=> d!659201 (=> res!947643 e!1408531)))

(assert (=> d!659201 (= res!947643 ((_ is Nil!25734) (exprs!2329 setElem!19132)))))

(assert (=> d!659201 (= (forall!5261 (exprs!2329 setElem!19132) lambda!83101) e!1408531)))

(declare-fun b!2204673 () Bool)

(declare-fun e!1408532 () Bool)

(assert (=> b!2204673 (= e!1408531 e!1408532)))

(declare-fun res!947644 () Bool)

(assert (=> b!2204673 (=> (not res!947644) (not e!1408532))))

(declare-fun dynLambda!11455 (Int Regex!6259) Bool)

(assert (=> b!2204673 (= res!947644 (dynLambda!11455 lambda!83101 (h!31135 (exprs!2329 setElem!19132))))))

(declare-fun b!2204674 () Bool)

(assert (=> b!2204674 (= e!1408532 (forall!5261 (t!198452 (exprs!2329 setElem!19132)) lambda!83101))))

(assert (= (and d!659201 (not res!947643)) b!2204673))

(assert (= (and b!2204673 res!947644) b!2204674))

(declare-fun b_lambda!71241 () Bool)

(assert (=> (not b_lambda!71241) (not b!2204673)))

(declare-fun m!2646525 () Bool)

(assert (=> b!2204673 m!2646525))

(declare-fun m!2646527 () Bool)

(assert (=> b!2204674 m!2646527))

(assert (=> d!659085 d!659201))

(declare-fun bs!450837 () Bool)

(declare-fun d!659203 () Bool)

(assert (= bs!450837 (and d!659203 d!659079)))

(declare-fun lambda!83153 () Int)

(assert (=> bs!450837 (not (= lambda!83153 lambda!83096))))

(declare-fun bs!450838 () Bool)

(assert (= bs!450838 (and d!659203 b!2204465)))

(assert (=> bs!450838 (not (= lambda!83153 lambda!83117))))

(declare-fun bs!450839 () Bool)

(assert (= bs!450839 (and d!659203 d!659159)))

(assert (=> bs!450839 (= lambda!83153 lambda!83138)))

(declare-fun bs!450840 () Bool)

(assert (= bs!450840 (and d!659203 d!659175)))

(assert (=> bs!450840 (not (= lambda!83153 lambda!83145))))

(declare-fun bs!450841 () Bool)

(assert (= bs!450841 (and d!659203 d!659179)))

(assert (=> bs!450841 (not (= lambda!83153 lambda!83146))))

(declare-fun bs!450842 () Bool)

(assert (= bs!450842 (and d!659203 d!659025)))

(assert (=> bs!450842 (not (= lambda!83153 lambda!83086))))

(declare-fun bs!450843 () Bool)

(assert (= bs!450843 (and d!659203 b!2204634)))

(assert (=> bs!450843 (not (= lambda!83153 lambda!83147))))

(declare-fun bs!450844 () Bool)

(assert (= bs!450844 (and d!659203 d!659135)))

(assert (=> bs!450844 (not (= lambda!83153 lambda!83135))))

(declare-fun bs!450845 () Bool)

(assert (= bs!450845 (and d!659203 b!2204466)))

(assert (=> bs!450845 (not (= lambda!83153 lambda!83118))))

(declare-fun bs!450846 () Bool)

(assert (= bs!450846 (and d!659203 d!659089)))

(assert (=> bs!450846 (not (= lambda!83153 lambda!83116))))

(declare-fun bs!450847 () Bool)

(assert (= bs!450847 (and d!659203 b!2204635)))

(assert (=> bs!450847 (not (= lambda!83153 lambda!83148))))

(assert (=> d!659203 true))

(assert (=> d!659203 (< (dynLambda!11454 order!14815 lambda!83116) (dynLambda!11454 order!14815 lambda!83153))))

(assert (=> d!659203 (exists!851 lt!824288 lambda!83153)))

(declare-fun lt!824367 () Unit!38819)

(declare-fun choose!13034 (List!25820 Int) Unit!38819)

(assert (=> d!659203 (= lt!824367 (choose!13034 lt!824288 lambda!83116))))

(assert (=> d!659203 (not (forall!5265 lt!824288 lambda!83116))))

(assert (=> d!659203 (= (lemmaNotForallThenExists!57 lt!824288 lambda!83116) lt!824367)))

(declare-fun bs!450848 () Bool)

(assert (= bs!450848 d!659203))

(declare-fun m!2646529 () Bool)

(assert (=> bs!450848 m!2646529))

(declare-fun m!2646531 () Bool)

(assert (=> bs!450848 m!2646531))

(declare-fun m!2646533 () Bool)

(assert (=> bs!450848 m!2646533))

(assert (=> b!2204465 d!659203))

(declare-fun d!659205 () Bool)

(declare-fun lt!824368 () Int)

(assert (=> d!659205 (>= lt!824368 0)))

(declare-fun e!1408535 () Int)

(assert (=> d!659205 (= lt!824368 e!1408535)))

(declare-fun c!351977 () Bool)

(assert (=> d!659205 (= c!351977 ((_ is Nil!25735) lt!824251))))

(assert (=> d!659205 (= (size!20055 lt!824251) lt!824368)))

(declare-fun b!2204675 () Bool)

(assert (=> b!2204675 (= e!1408535 0)))

(declare-fun b!2204676 () Bool)

(assert (=> b!2204676 (= e!1408535 (+ 1 (size!20055 (t!198453 lt!824251))))))

(assert (= (and d!659205 c!351977) b!2204675))

(assert (= (and d!659205 (not c!351977)) b!2204676))

(declare-fun m!2646535 () Bool)

(assert (=> b!2204676 m!2646535))

(assert (=> b!2204412 d!659205))

(declare-fun b!2204677 () Bool)

(declare-fun e!1408539 () Int)

(assert (=> b!2204677 (= e!1408539 (size!20055 (t!198453 lt!824200)))))

(declare-fun d!659207 () Bool)

(declare-fun e!1408538 () Bool)

(assert (=> d!659207 e!1408538))

(declare-fun res!947645 () Bool)

(assert (=> d!659207 (=> (not res!947645) (not e!1408538))))

(declare-fun lt!824369 () List!25819)

(assert (=> d!659207 (= res!947645 (= ((_ map implies) (content!3495 lt!824369) (content!3495 (t!198453 lt!824200))) ((as const (InoxSet C!12664)) true)))))

(declare-fun e!1408536 () List!25819)

(assert (=> d!659207 (= lt!824369 e!1408536)))

(declare-fun c!351978 () Bool)

(assert (=> d!659207 (= c!351978 (or ((_ is Nil!25735) (t!198453 lt!824200)) (<= (- (+ 1 (- knownSize!10 1)) 1) 0)))))

(assert (=> d!659207 (= (take!437 (t!198453 lt!824200) (- (+ 1 (- knownSize!10 1)) 1)) lt!824369)))

(declare-fun b!2204678 () Bool)

(declare-fun e!1408537 () Int)

(assert (=> b!2204678 (= e!1408537 e!1408539)))

(declare-fun c!351979 () Bool)

(assert (=> b!2204678 (= c!351979 (>= (- (+ 1 (- knownSize!10 1)) 1) (size!20055 (t!198453 lt!824200))))))

(declare-fun b!2204679 () Bool)

(assert (=> b!2204679 (= e!1408539 (- (+ 1 (- knownSize!10 1)) 1))))

(declare-fun b!2204680 () Bool)

(assert (=> b!2204680 (= e!1408537 0)))

(declare-fun b!2204681 () Bool)

(assert (=> b!2204681 (= e!1408536 Nil!25735)))

(declare-fun b!2204682 () Bool)

(assert (=> b!2204682 (= e!1408536 (Cons!25735 (h!31136 (t!198453 lt!824200)) (take!437 (t!198453 (t!198453 lt!824200)) (- (- (+ 1 (- knownSize!10 1)) 1) 1))))))

(declare-fun b!2204683 () Bool)

(assert (=> b!2204683 (= e!1408538 (= (size!20055 lt!824369) e!1408537))))

(declare-fun c!351980 () Bool)

(assert (=> b!2204683 (= c!351980 (<= (- (+ 1 (- knownSize!10 1)) 1) 0))))

(assert (= (and d!659207 c!351978) b!2204681))

(assert (= (and d!659207 (not c!351978)) b!2204682))

(assert (= (and d!659207 res!947645) b!2204683))

(assert (= (and b!2204683 c!351980) b!2204680))

(assert (= (and b!2204683 (not c!351980)) b!2204678))

(assert (= (and b!2204678 c!351979) b!2204677))

(assert (= (and b!2204678 (not c!351979)) b!2204679))

(declare-fun m!2646537 () Bool)

(assert (=> b!2204683 m!2646537))

(assert (=> b!2204677 m!2646397))

(assert (=> b!2204678 m!2646397))

(declare-fun m!2646539 () Bool)

(assert (=> b!2204682 m!2646539))

(declare-fun m!2646541 () Bool)

(assert (=> d!659207 m!2646541))

(assert (=> d!659207 m!2646405))

(assert (=> b!2204345 d!659207))

(declare-fun d!659209 () Bool)

(declare-fun choose!13035 ((InoxSet Context!3658) Int) (InoxSet Context!3658))

(assert (=> d!659209 (= (flatMap!166 z!3888 lambda!83095) (choose!13035 z!3888 lambda!83095))))

(declare-fun bs!450849 () Bool)

(assert (= bs!450849 d!659209))

(declare-fun m!2646543 () Bool)

(assert (=> bs!450849 m!2646543))

(assert (=> d!659055 d!659209))

(declare-fun d!659211 () Bool)

(declare-fun c!351981 () Bool)

(assert (=> d!659211 (= c!351981 (isEmpty!14713 (tail!3188 lt!824208)))))

(declare-fun e!1408540 () Bool)

(assert (=> d!659211 (= (matchZipper!345 (derivationStepZipper!301 z!3888 (head!4709 lt!824208)) (tail!3188 lt!824208)) e!1408540)))

(declare-fun b!2204684 () Bool)

(assert (=> b!2204684 (= e!1408540 (nullableZipper!539 (derivationStepZipper!301 z!3888 (head!4709 lt!824208))))))

(declare-fun b!2204685 () Bool)

(assert (=> b!2204685 (= e!1408540 (matchZipper!345 (derivationStepZipper!301 (derivationStepZipper!301 z!3888 (head!4709 lt!824208)) (head!4709 (tail!3188 lt!824208))) (tail!3188 (tail!3188 lt!824208))))))

(assert (= (and d!659211 c!351981) b!2204684))

(assert (= (and d!659211 (not c!351981)) b!2204685))

(assert (=> d!659211 m!2646023))

(declare-fun m!2646545 () Bool)

(assert (=> d!659211 m!2646545))

(assert (=> b!2204684 m!2646071))

(declare-fun m!2646547 () Bool)

(assert (=> b!2204684 m!2646547))

(assert (=> b!2204685 m!2646023))

(declare-fun m!2646549 () Bool)

(assert (=> b!2204685 m!2646549))

(assert (=> b!2204685 m!2646071))

(assert (=> b!2204685 m!2646549))

(declare-fun m!2646551 () Bool)

(assert (=> b!2204685 m!2646551))

(assert (=> b!2204685 m!2646023))

(declare-fun m!2646553 () Bool)

(assert (=> b!2204685 m!2646553))

(assert (=> b!2204685 m!2646551))

(assert (=> b!2204685 m!2646553))

(declare-fun m!2646555 () Bool)

(assert (=> b!2204685 m!2646555))

(assert (=> b!2204244 d!659211))

(declare-fun bs!450850 () Bool)

(declare-fun d!659213 () Bool)

(assert (= bs!450850 (and d!659213 d!659055)))

(declare-fun lambda!83154 () Int)

(assert (=> bs!450850 (= (= (head!4709 lt!824208) (apply!6333 totalInput!891 from!1082)) (= lambda!83154 lambda!83095))))

(declare-fun bs!450851 () Bool)

(assert (= bs!450851 (and d!659213 d!659131)))

(assert (=> bs!450851 (= (= (head!4709 lt!824208) (apply!6333 totalInput!891 (+ 1 from!1082))) (= lambda!83154 lambda!83134))))

(declare-fun bs!450852 () Bool)

(assert (= bs!450852 (and d!659213 d!659195)))

(assert (=> bs!450852 (= (= (head!4709 lt!824208) (head!4709 lt!824204)) (= lambda!83154 lambda!83150))))

(assert (=> d!659213 true))

(assert (=> d!659213 (= (derivationStepZipper!301 z!3888 (head!4709 lt!824208)) (flatMap!166 z!3888 lambda!83154))))

(declare-fun bs!450853 () Bool)

(assert (= bs!450853 d!659213))

(declare-fun m!2646557 () Bool)

(assert (=> bs!450853 m!2646557))

(assert (=> b!2204244 d!659213))

(declare-fun d!659215 () Bool)

(assert (=> d!659215 (= (head!4709 lt!824208) (h!31136 lt!824208))))

(assert (=> b!2204244 d!659215))

(assert (=> b!2204244 d!659077))

(declare-fun b!2204686 () Bool)

(declare-fun e!1408541 () Int)

(declare-fun call!132213 () Int)

(assert (=> b!2204686 (= e!1408541 (- call!132213 (- (+ 1 from!1082) 1)))))

(declare-fun b!2204687 () Bool)

(declare-fun e!1408542 () List!25819)

(declare-fun e!1408543 () List!25819)

(assert (=> b!2204687 (= e!1408542 e!1408543)))

(declare-fun c!351984 () Bool)

(assert (=> b!2204687 (= c!351984 (<= (- (+ 1 from!1082) 1) 0))))

(declare-fun b!2204688 () Bool)

(assert (=> b!2204688 (= e!1408542 Nil!25735)))

(declare-fun b!2204689 () Bool)

(assert (=> b!2204689 (= e!1408543 (t!198453 lt!824203))))

(declare-fun b!2204690 () Bool)

(assert (=> b!2204690 (= e!1408543 (drop!1447 (t!198453 (t!198453 lt!824203)) (- (- (+ 1 from!1082) 1) 1)))))

(declare-fun bm!132208 () Bool)

(assert (=> bm!132208 (= call!132213 (size!20055 (t!198453 lt!824203)))))

(declare-fun d!659217 () Bool)

(declare-fun e!1408544 () Bool)

(assert (=> d!659217 e!1408544))

(declare-fun res!947646 () Bool)

(assert (=> d!659217 (=> (not res!947646) (not e!1408544))))

(declare-fun lt!824370 () List!25819)

(assert (=> d!659217 (= res!947646 (= ((_ map implies) (content!3495 lt!824370) (content!3495 (t!198453 lt!824203))) ((as const (InoxSet C!12664)) true)))))

(assert (=> d!659217 (= lt!824370 e!1408542)))

(declare-fun c!351983 () Bool)

(assert (=> d!659217 (= c!351983 ((_ is Nil!25735) (t!198453 lt!824203)))))

(assert (=> d!659217 (= (drop!1447 (t!198453 lt!824203) (- (+ 1 from!1082) 1)) lt!824370)))

(declare-fun b!2204691 () Bool)

(declare-fun e!1408545 () Int)

(assert (=> b!2204691 (= e!1408544 (= (size!20055 lt!824370) e!1408545))))

(declare-fun c!351982 () Bool)

(assert (=> b!2204691 (= c!351982 (<= (- (+ 1 from!1082) 1) 0))))

(declare-fun b!2204692 () Bool)

(assert (=> b!2204692 (= e!1408545 e!1408541)))

(declare-fun c!351985 () Bool)

(assert (=> b!2204692 (= c!351985 (>= (- (+ 1 from!1082) 1) call!132213))))

(declare-fun b!2204693 () Bool)

(assert (=> b!2204693 (= e!1408541 0)))

(declare-fun b!2204694 () Bool)

(assert (=> b!2204694 (= e!1408545 call!132213)))

(assert (= (and d!659217 c!351983) b!2204688))

(assert (= (and d!659217 (not c!351983)) b!2204687))

(assert (= (and b!2204687 c!351984) b!2204689))

(assert (= (and b!2204687 (not c!351984)) b!2204690))

(assert (= (and d!659217 res!947646) b!2204691))

(assert (= (and b!2204691 c!351982) b!2204694))

(assert (= (and b!2204691 (not c!351982)) b!2204692))

(assert (= (and b!2204692 c!351985) b!2204693))

(assert (= (and b!2204692 (not c!351985)) b!2204686))

(assert (= (or b!2204694 b!2204692 b!2204686) bm!132208))

(declare-fun m!2646559 () Bool)

(assert (=> b!2204690 m!2646559))

(assert (=> bm!132208 m!2646327))

(declare-fun m!2646561 () Bool)

(assert (=> d!659217 m!2646561))

(assert (=> d!659217 m!2646493))

(declare-fun m!2646563 () Bool)

(assert (=> b!2204691 m!2646563))

(assert (=> b!2204333 d!659217))

(declare-fun d!659219 () Bool)

(assert (=> d!659219 (= (head!4709 lt!824203) (h!31136 lt!824203))))

(assert (=> b!2204435 d!659219))

(declare-fun bs!450854 () Bool)

(declare-fun d!659221 () Bool)

(assert (= bs!450854 (and d!659221 d!659079)))

(declare-fun lambda!83157 () Int)

(assert (=> bs!450854 (not (= lambda!83157 lambda!83096))))

(declare-fun bs!450855 () Bool)

(assert (= bs!450855 (and d!659221 b!2204465)))

(assert (=> bs!450855 (not (= lambda!83157 lambda!83117))))

(declare-fun bs!450856 () Bool)

(assert (= bs!450856 (and d!659221 d!659159)))

(assert (=> bs!450856 (= (= (ite c!351911 lambda!83117 lambda!83118) lambda!83116) (= lambda!83157 lambda!83138))))

(declare-fun bs!450857 () Bool)

(assert (= bs!450857 (and d!659221 d!659175)))

(assert (=> bs!450857 (not (= lambda!83157 lambda!83145))))

(declare-fun bs!450858 () Bool)

(assert (= bs!450858 (and d!659221 d!659179)))

(assert (=> bs!450858 (not (= lambda!83157 lambda!83146))))

(declare-fun bs!450859 () Bool)

(assert (= bs!450859 (and d!659221 d!659025)))

(assert (=> bs!450859 (not (= lambda!83157 lambda!83086))))

(declare-fun bs!450860 () Bool)

(assert (= bs!450860 (and d!659221 b!2204634)))

(assert (=> bs!450860 (not (= lambda!83157 lambda!83147))))

(declare-fun bs!450861 () Bool)

(assert (= bs!450861 (and d!659221 d!659135)))

(assert (=> bs!450861 (not (= lambda!83157 lambda!83135))))

(declare-fun bs!450862 () Bool)

(assert (= bs!450862 (and d!659221 b!2204466)))

(assert (=> bs!450862 (not (= lambda!83157 lambda!83118))))

(declare-fun bs!450863 () Bool)

(assert (= bs!450863 (and d!659221 d!659203)))

(assert (=> bs!450863 (= (= (ite c!351911 lambda!83117 lambda!83118) lambda!83116) (= lambda!83157 lambda!83153))))

(declare-fun bs!450864 () Bool)

(assert (= bs!450864 (and d!659221 d!659089)))

(assert (=> bs!450864 (not (= lambda!83157 lambda!83116))))

(declare-fun bs!450865 () Bool)

(assert (= bs!450865 (and d!659221 b!2204635)))

(assert (=> bs!450865 (not (= lambda!83157 lambda!83148))))

(assert (=> d!659221 true))

(assert (=> d!659221 (< (dynLambda!11454 order!14815 (ite c!351911 lambda!83117 lambda!83118)) (dynLambda!11454 order!14815 lambda!83157))))

(assert (=> d!659221 (= (exists!851 (ite c!351911 lt!824288 lt!824292) (ite c!351911 lambda!83117 lambda!83118)) (not (forall!5265 (ite c!351911 lt!824288 lt!824292) lambda!83157)))))

(declare-fun bs!450866 () Bool)

(assert (= bs!450866 d!659221))

(declare-fun m!2646565 () Bool)

(assert (=> bs!450866 m!2646565))

(assert (=> bm!132196 d!659221))

(declare-fun b!2204705 () Bool)

(declare-fun e!1408551 () List!25819)

(assert (=> b!2204705 (= e!1408551 (list!9938 (xs!11337 (c!351801 totalInput!891))))))

(declare-fun b!2204703 () Bool)

(declare-fun e!1408550 () List!25819)

(assert (=> b!2204703 (= e!1408550 Nil!25735)))

(declare-fun d!659223 () Bool)

(declare-fun c!351990 () Bool)

(assert (=> d!659223 (= c!351990 ((_ is Empty!8395) (c!351801 totalInput!891)))))

(assert (=> d!659223 (= (list!9936 (c!351801 totalInput!891)) e!1408550)))

(declare-fun b!2204706 () Bool)

(declare-fun ++!6429 (List!25819 List!25819) List!25819)

(assert (=> b!2204706 (= e!1408551 (++!6429 (list!9936 (left!19771 (c!351801 totalInput!891))) (list!9936 (right!20101 (c!351801 totalInput!891)))))))

(declare-fun b!2204704 () Bool)

(assert (=> b!2204704 (= e!1408550 e!1408551)))

(declare-fun c!351991 () Bool)

(assert (=> b!2204704 (= c!351991 ((_ is Leaf!12292) (c!351801 totalInput!891)))))

(assert (= (and d!659223 c!351990) b!2204703))

(assert (= (and d!659223 (not c!351990)) b!2204704))

(assert (= (and b!2204704 c!351991) b!2204705))

(assert (= (and b!2204704 (not c!351991)) b!2204706))

(assert (=> b!2204705 m!2646393))

(declare-fun m!2646567 () Bool)

(assert (=> b!2204706 m!2646567))

(declare-fun m!2646569 () Bool)

(assert (=> b!2204706 m!2646569))

(assert (=> b!2204706 m!2646567))

(assert (=> b!2204706 m!2646569))

(declare-fun m!2646571 () Bool)

(assert (=> b!2204706 m!2646571))

(assert (=> d!659047 d!659223))

(declare-fun d!659225 () Bool)

(declare-fun c!351992 () Bool)

(assert (=> d!659225 (= c!351992 ((_ is Nil!25735) lt!824230))))

(declare-fun e!1408552 () (InoxSet C!12664))

(assert (=> d!659225 (= (content!3495 lt!824230) e!1408552)))

(declare-fun b!2204707 () Bool)

(assert (=> b!2204707 (= e!1408552 ((as const (Array C!12664 Bool)) false))))

(declare-fun b!2204708 () Bool)

(assert (=> b!2204708 (= e!1408552 ((_ map or) (store ((as const (Array C!12664 Bool)) false) (h!31136 lt!824230) true) (content!3495 (t!198453 lt!824230))))))

(assert (= (and d!659225 c!351992) b!2204707))

(assert (= (and d!659225 (not c!351992)) b!2204708))

(declare-fun m!2646573 () Bool)

(assert (=> b!2204708 m!2646573))

(declare-fun m!2646575 () Bool)

(assert (=> b!2204708 m!2646575))

(assert (=> d!659059 d!659225))

(declare-fun d!659227 () Bool)

(declare-fun c!351993 () Bool)

(assert (=> d!659227 (= c!351993 ((_ is Nil!25735) lt!824200))))

(declare-fun e!1408553 () (InoxSet C!12664))

(assert (=> d!659227 (= (content!3495 lt!824200) e!1408553)))

(declare-fun b!2204709 () Bool)

(assert (=> b!2204709 (= e!1408553 ((as const (Array C!12664 Bool)) false))))

(declare-fun b!2204710 () Bool)

(assert (=> b!2204710 (= e!1408553 ((_ map or) (store ((as const (Array C!12664 Bool)) false) (h!31136 lt!824200) true) (content!3495 (t!198453 lt!824200))))))

(assert (= (and d!659227 c!351993) b!2204709))

(assert (= (and d!659227 (not c!351993)) b!2204710))

(declare-fun m!2646577 () Bool)

(assert (=> b!2204710 m!2646577))

(assert (=> b!2204710 m!2646405))

(assert (=> d!659059 d!659227))

(declare-fun d!659229 () Bool)

(declare-fun lt!824371 () C!12664)

(assert (=> d!659229 (contains!4288 (list!9935 totalInput!891) lt!824371)))

(declare-fun e!1408554 () C!12664)

(assert (=> d!659229 (= lt!824371 e!1408554)))

(declare-fun c!351994 () Bool)

(assert (=> d!659229 (= c!351994 (= from!1082 0))))

(declare-fun e!1408555 () Bool)

(assert (=> d!659229 e!1408555))

(declare-fun res!947647 () Bool)

(assert (=> d!659229 (=> (not res!947647) (not e!1408555))))

(assert (=> d!659229 (= res!947647 (<= 0 from!1082))))

(assert (=> d!659229 (= (apply!6332 (list!9935 totalInput!891) from!1082) lt!824371)))

(declare-fun b!2204711 () Bool)

(assert (=> b!2204711 (= e!1408555 (< from!1082 (size!20055 (list!9935 totalInput!891))))))

(declare-fun b!2204712 () Bool)

(assert (=> b!2204712 (= e!1408554 (head!4709 (list!9935 totalInput!891)))))

(declare-fun b!2204713 () Bool)

(assert (=> b!2204713 (= e!1408554 (apply!6332 (tail!3188 (list!9935 totalInput!891)) (- from!1082 1)))))

(assert (= (and d!659229 res!947647) b!2204711))

(assert (= (and d!659229 c!351994) b!2204712))

(assert (= (and d!659229 (not c!351994)) b!2204713))

(assert (=> d!659229 m!2646045))

(declare-fun m!2646579 () Bool)

(assert (=> d!659229 m!2646579))

(assert (=> b!2204711 m!2646045))

(assert (=> b!2204711 m!2646055))

(assert (=> b!2204712 m!2646045))

(declare-fun m!2646581 () Bool)

(assert (=> b!2204712 m!2646581))

(assert (=> b!2204713 m!2646045))

(declare-fun m!2646583 () Bool)

(assert (=> b!2204713 m!2646583))

(assert (=> b!2204713 m!2646583))

(declare-fun m!2646585 () Bool)

(assert (=> b!2204713 m!2646585))

(assert (=> d!659073 d!659229))

(assert (=> d!659073 d!659047))

(declare-fun b!2204728 () Bool)

(declare-fun e!1408567 () Int)

(assert (=> b!2204728 (= e!1408567 from!1082)))

(declare-fun bm!132211 () Bool)

(declare-fun c!352002 () Bool)

(declare-fun c!352001 () Bool)

(assert (=> bm!132211 (= c!352002 c!352001)))

(declare-fun call!132216 () C!12664)

(assert (=> bm!132211 (= call!132216 (apply!6335 (ite c!352001 (left!19771 (c!351801 totalInput!891)) (right!20101 (c!351801 totalInput!891))) e!1408567))))

(declare-fun d!659231 () Bool)

(declare-fun lt!824377 () C!12664)

(assert (=> d!659231 (= lt!824377 (apply!6332 (list!9936 (c!351801 totalInput!891)) from!1082))))

(declare-fun e!1408565 () C!12664)

(assert (=> d!659231 (= lt!824377 e!1408565)))

(declare-fun c!352003 () Bool)

(assert (=> d!659231 (= c!352003 ((_ is Leaf!12292) (c!351801 totalInput!891)))))

(declare-fun e!1408564 () Bool)

(assert (=> d!659231 e!1408564))

(declare-fun res!947650 () Bool)

(assert (=> d!659231 (=> (not res!947650) (not e!1408564))))

(assert (=> d!659231 (= res!947650 (<= 0 from!1082))))

(assert (=> d!659231 (= (apply!6335 (c!351801 totalInput!891) from!1082) lt!824377)))

(declare-fun b!2204729 () Bool)

(declare-fun e!1408566 () C!12664)

(assert (=> b!2204729 (= e!1408565 e!1408566)))

(declare-fun lt!824376 () Bool)

(declare-fun appendIndex!254 (List!25819 List!25819 Int) Bool)

(assert (=> b!2204729 (= lt!824376 (appendIndex!254 (list!9936 (left!19771 (c!351801 totalInput!891))) (list!9936 (right!20101 (c!351801 totalInput!891))) from!1082))))

(assert (=> b!2204729 (= c!352001 (< from!1082 (size!20056 (left!19771 (c!351801 totalInput!891)))))))

(declare-fun b!2204730 () Bool)

(assert (=> b!2204730 (= e!1408567 (- from!1082 (size!20056 (left!19771 (c!351801 totalInput!891)))))))

(declare-fun b!2204731 () Bool)

(declare-fun apply!6336 (IArray!16795 Int) C!12664)

(assert (=> b!2204731 (= e!1408565 (apply!6336 (xs!11337 (c!351801 totalInput!891)) from!1082))))

(declare-fun b!2204732 () Bool)

(assert (=> b!2204732 (= e!1408564 (< from!1082 (size!20056 (c!351801 totalInput!891))))))

(declare-fun b!2204733 () Bool)

(assert (=> b!2204733 (= e!1408566 call!132216)))

(declare-fun b!2204734 () Bool)

(assert (=> b!2204734 (= e!1408566 call!132216)))

(assert (= (and d!659231 res!947650) b!2204732))

(assert (= (and d!659231 c!352003) b!2204731))

(assert (= (and d!659231 (not c!352003)) b!2204729))

(assert (= (and b!2204729 c!352001) b!2204734))

(assert (= (and b!2204729 (not c!352001)) b!2204733))

(assert (= (or b!2204734 b!2204733) bm!132211))

(assert (= (and bm!132211 c!352002) b!2204728))

(assert (= (and bm!132211 (not c!352002)) b!2204730))

(assert (=> b!2204730 m!2646355))

(assert (=> b!2204729 m!2646567))

(assert (=> b!2204729 m!2646569))

(assert (=> b!2204729 m!2646567))

(assert (=> b!2204729 m!2646569))

(declare-fun m!2646587 () Bool)

(assert (=> b!2204729 m!2646587))

(assert (=> b!2204729 m!2646355))

(assert (=> b!2204732 m!2646057))

(assert (=> d!659231 m!2646109))

(assert (=> d!659231 m!2646109))

(declare-fun m!2646589 () Bool)

(assert (=> d!659231 m!2646589))

(declare-fun m!2646591 () Bool)

(assert (=> b!2204731 m!2646591))

(declare-fun m!2646593 () Bool)

(assert (=> bm!132211 m!2646593))

(assert (=> d!659073 d!659231))

(declare-fun d!659233 () Bool)

(declare-fun lt!824378 () Int)

(assert (=> d!659233 (>= lt!824378 0)))

(declare-fun e!1408568 () Int)

(assert (=> d!659233 (= lt!824378 e!1408568)))

(declare-fun c!352004 () Bool)

(assert (=> d!659233 (= c!352004 ((_ is Nil!25735) lt!824227))))

(assert (=> d!659233 (= (size!20055 lt!824227) lt!824378)))

(declare-fun b!2204735 () Bool)

(assert (=> b!2204735 (= e!1408568 0)))

(declare-fun b!2204736 () Bool)

(assert (=> b!2204736 (= e!1408568 (+ 1 (size!20055 (t!198453 lt!824227))))))

(assert (= (and d!659233 c!352004) b!2204735))

(assert (= (and d!659233 (not c!352004)) b!2204736))

(declare-fun m!2646595 () Bool)

(assert (=> b!2204736 m!2646595))

(assert (=> b!2204334 d!659233))

(declare-fun d!659235 () Bool)

(assert (=> d!659235 (= (inv!34677 (xs!11337 (c!351801 totalInput!891))) (<= (size!20055 (innerList!8455 (xs!11337 (c!351801 totalInput!891)))) 2147483647))))

(declare-fun bs!450867 () Bool)

(assert (= bs!450867 d!659235))

(declare-fun m!2646597 () Bool)

(assert (=> bs!450867 m!2646597))

(assert (=> b!2204501 d!659235))

(declare-fun d!659237 () Bool)

(declare-fun c!352005 () Bool)

(assert (=> d!659237 (= c!352005 ((_ is Nil!25735) lt!824214))))

(declare-fun e!1408569 () (InoxSet C!12664))

(assert (=> d!659237 (= (content!3495 lt!824214) e!1408569)))

(declare-fun b!2204737 () Bool)

(assert (=> b!2204737 (= e!1408569 ((as const (Array C!12664 Bool)) false))))

(declare-fun b!2204738 () Bool)

(assert (=> b!2204738 (= e!1408569 ((_ map or) (store ((as const (Array C!12664 Bool)) false) (h!31136 lt!824214) true) (content!3495 (t!198453 lt!824214))))))

(assert (= (and d!659237 c!352005) b!2204737))

(assert (= (and d!659237 (not c!352005)) b!2204738))

(declare-fun m!2646599 () Bool)

(assert (=> b!2204738 m!2646599))

(declare-fun m!2646601 () Bool)

(assert (=> b!2204738 m!2646601))

(assert (=> d!659035 d!659237))

(assert (=> d!659035 d!659227))

(declare-fun d!659239 () Bool)

(declare-fun c!352006 () Bool)

(assert (=> d!659239 (= c!352006 ((_ is Nil!25735) lt!824227))))

(declare-fun e!1408570 () (InoxSet C!12664))

(assert (=> d!659239 (= (content!3495 lt!824227) e!1408570)))

(declare-fun b!2204739 () Bool)

(assert (=> b!2204739 (= e!1408570 ((as const (Array C!12664 Bool)) false))))

(declare-fun b!2204740 () Bool)

(assert (=> b!2204740 (= e!1408570 ((_ map or) (store ((as const (Array C!12664 Bool)) false) (h!31136 lt!824227) true) (content!3495 (t!198453 lt!824227))))))

(assert (= (and d!659239 c!352006) b!2204739))

(assert (= (and d!659239 (not c!352006)) b!2204740))

(declare-fun m!2646603 () Bool)

(assert (=> b!2204740 m!2646603))

(declare-fun m!2646605 () Bool)

(assert (=> b!2204740 m!2646605))

(assert (=> d!659057 d!659239))

(assert (=> d!659057 d!659183))

(declare-fun d!659241 () Bool)

(declare-fun lt!824379 () Bool)

(assert (=> d!659241 (= lt!824379 (exists!851 (toList!1270 lt!824201) lambda!83096))))

(assert (=> d!659241 (= lt!824379 (choose!13032 lt!824201 lambda!83096))))

(assert (=> d!659241 (= (exists!849 lt!824201 lambda!83096) lt!824379)))

(declare-fun bs!450868 () Bool)

(assert (= bs!450868 d!659241))

(assert (=> bs!450868 m!2646473))

(assert (=> bs!450868 m!2646473))

(declare-fun m!2646607 () Bool)

(assert (=> bs!450868 m!2646607))

(declare-fun m!2646609 () Bool)

(assert (=> bs!450868 m!2646609))

(assert (=> d!659079 d!659241))

(declare-fun d!659243 () Bool)

(assert (=> d!659243 (= (isEmpty!14713 (list!9935 totalInput!891)) ((_ is Nil!25735) (list!9935 totalInput!891)))))

(assert (=> d!659049 d!659243))

(assert (=> d!659049 d!659047))

(declare-fun d!659245 () Bool)

(declare-fun lt!824382 () Bool)

(assert (=> d!659245 (= lt!824382 (isEmpty!14713 (list!9936 (c!351801 totalInput!891))))))

(assert (=> d!659245 (= lt!824382 (= (size!20056 (c!351801 totalInput!891)) 0))))

(assert (=> d!659245 (= (isEmpty!14714 (c!351801 totalInput!891)) lt!824382)))

(declare-fun bs!450869 () Bool)

(assert (= bs!450869 d!659245))

(assert (=> bs!450869 m!2646109))

(assert (=> bs!450869 m!2646109))

(declare-fun m!2646611 () Bool)

(assert (=> bs!450869 m!2646611))

(assert (=> bs!450869 m!2646057))

(assert (=> d!659049 d!659245))

(declare-fun b!2204745 () Bool)

(declare-fun e!1408573 () Bool)

(declare-fun tp_is_empty!9743 () Bool)

(declare-fun tp!685647 () Bool)

(assert (=> b!2204745 (= e!1408573 (and tp_is_empty!9743 tp!685647))))

(assert (=> b!2204502 (= tp!685622 e!1408573)))

(assert (= (and b!2204502 ((_ is Cons!25735) (innerList!8455 (xs!11337 (c!351801 totalInput!891))))) b!2204745))

(declare-fun b!2204758 () Bool)

(declare-fun e!1408576 () Bool)

(declare-fun tp!685658 () Bool)

(assert (=> b!2204758 (= e!1408576 tp!685658)))

(declare-fun b!2204757 () Bool)

(declare-fun tp!685662 () Bool)

(declare-fun tp!685660 () Bool)

(assert (=> b!2204757 (= e!1408576 (and tp!685662 tp!685660))))

(assert (=> b!2204491 (= tp!685613 e!1408576)))

(declare-fun b!2204756 () Bool)

(assert (=> b!2204756 (= e!1408576 tp_is_empty!9743)))

(declare-fun b!2204759 () Bool)

(declare-fun tp!685659 () Bool)

(declare-fun tp!685661 () Bool)

(assert (=> b!2204759 (= e!1408576 (and tp!685659 tp!685661))))

(assert (= (and b!2204491 ((_ is ElementMatch!6259) (h!31135 (exprs!2329 setElem!19132)))) b!2204756))

(assert (= (and b!2204491 ((_ is Concat!10561) (h!31135 (exprs!2329 setElem!19132)))) b!2204757))

(assert (= (and b!2204491 ((_ is Star!6259) (h!31135 (exprs!2329 setElem!19132)))) b!2204758))

(assert (= (and b!2204491 ((_ is Union!6259) (h!31135 (exprs!2329 setElem!19132)))) b!2204759))

(declare-fun b!2204760 () Bool)

(declare-fun e!1408577 () Bool)

(declare-fun tp!685663 () Bool)

(declare-fun tp!685664 () Bool)

(assert (=> b!2204760 (= e!1408577 (and tp!685663 tp!685664))))

(assert (=> b!2204491 (= tp!685614 e!1408577)))

(assert (= (and b!2204491 ((_ is Cons!25734) (t!198452 (exprs!2329 setElem!19132)))) b!2204760))

(declare-fun tp!685665 () Bool)

(declare-fun b!2204761 () Bool)

(declare-fun tp!685667 () Bool)

(declare-fun e!1408579 () Bool)

(assert (=> b!2204761 (= e!1408579 (and (inv!34670 (left!19771 (left!19771 (c!351801 totalInput!891)))) tp!685667 (inv!34670 (right!20101 (left!19771 (c!351801 totalInput!891)))) tp!685665))))

(declare-fun b!2204763 () Bool)

(declare-fun e!1408578 () Bool)

(declare-fun tp!685666 () Bool)

(assert (=> b!2204763 (= e!1408578 tp!685666)))

(declare-fun b!2204762 () Bool)

(assert (=> b!2204762 (= e!1408579 (and (inv!34677 (xs!11337 (left!19771 (c!351801 totalInput!891)))) e!1408578))))

(assert (=> b!2204500 (= tp!685623 (and (inv!34670 (left!19771 (c!351801 totalInput!891))) e!1408579))))

(assert (= (and b!2204500 ((_ is Node!8395) (left!19771 (c!351801 totalInput!891)))) b!2204761))

(assert (= b!2204762 b!2204763))

(assert (= (and b!2204500 ((_ is Leaf!12292) (left!19771 (c!351801 totalInput!891)))) b!2204762))

(declare-fun m!2646613 () Bool)

(assert (=> b!2204761 m!2646613))

(declare-fun m!2646615 () Bool)

(assert (=> b!2204761 m!2646615))

(declare-fun m!2646617 () Bool)

(assert (=> b!2204762 m!2646617))

(assert (=> b!2204500 m!2646305))

(declare-fun e!1408581 () Bool)

(declare-fun tp!685668 () Bool)

(declare-fun tp!685670 () Bool)

(declare-fun b!2204764 () Bool)

(assert (=> b!2204764 (= e!1408581 (and (inv!34670 (left!19771 (right!20101 (c!351801 totalInput!891)))) tp!685670 (inv!34670 (right!20101 (right!20101 (c!351801 totalInput!891)))) tp!685668))))

(declare-fun b!2204766 () Bool)

(declare-fun e!1408580 () Bool)

(declare-fun tp!685669 () Bool)

(assert (=> b!2204766 (= e!1408580 tp!685669)))

(declare-fun b!2204765 () Bool)

(assert (=> b!2204765 (= e!1408581 (and (inv!34677 (xs!11337 (right!20101 (c!351801 totalInput!891)))) e!1408580))))

(assert (=> b!2204500 (= tp!685621 (and (inv!34670 (right!20101 (c!351801 totalInput!891))) e!1408581))))

(assert (= (and b!2204500 ((_ is Node!8395) (right!20101 (c!351801 totalInput!891)))) b!2204764))

(assert (= b!2204765 b!2204766))

(assert (= (and b!2204500 ((_ is Leaf!12292) (right!20101 (c!351801 totalInput!891)))) b!2204765))

(declare-fun m!2646619 () Bool)

(assert (=> b!2204764 m!2646619))

(declare-fun m!2646621 () Bool)

(assert (=> b!2204764 m!2646621))

(declare-fun m!2646623 () Bool)

(assert (=> b!2204765 m!2646623))

(assert (=> b!2204500 m!2646309))

(declare-fun condSetEmpty!19139 () Bool)

(assert (=> setNonEmpty!19135 (= condSetEmpty!19139 (= setRest!19135 ((as const (Array Context!3658 Bool)) false)))))

(declare-fun setRes!19139 () Bool)

(assert (=> setNonEmpty!19135 (= tp!685608 setRes!19139)))

(declare-fun setIsEmpty!19139 () Bool)

(assert (=> setIsEmpty!19139 setRes!19139))

(declare-fun setNonEmpty!19139 () Bool)

(declare-fun e!1408582 () Bool)

(declare-fun setElem!19139 () Context!3658)

(declare-fun tp!685672 () Bool)

(assert (=> setNonEmpty!19139 (= setRes!19139 (and tp!685672 (inv!34672 setElem!19139) e!1408582))))

(declare-fun setRest!19139 () (InoxSet Context!3658))

(assert (=> setNonEmpty!19139 (= setRest!19135 ((_ map or) (store ((as const (Array Context!3658 Bool)) false) setElem!19139 true) setRest!19139))))

(declare-fun b!2204767 () Bool)

(declare-fun tp!685671 () Bool)

(assert (=> b!2204767 (= e!1408582 tp!685671)))

(assert (= (and setNonEmpty!19135 condSetEmpty!19139) setIsEmpty!19139))

(assert (= (and setNonEmpty!19135 (not condSetEmpty!19139)) setNonEmpty!19139))

(assert (= setNonEmpty!19139 b!2204767))

(declare-fun m!2646625 () Bool)

(assert (=> setNonEmpty!19139 m!2646625))

(declare-fun b!2204768 () Bool)

(declare-fun e!1408583 () Bool)

(declare-fun tp!685673 () Bool)

(declare-fun tp!685674 () Bool)

(assert (=> b!2204768 (= e!1408583 (and tp!685673 tp!685674))))

(assert (=> b!2204484 (= tp!685607 e!1408583)))

(assert (= (and b!2204484 ((_ is Cons!25734) (exprs!2329 setElem!19135))) b!2204768))

(declare-fun b_lambda!71243 () Bool)

(assert (= b_lambda!71241 (or d!659085 b_lambda!71243)))

(declare-fun bs!450870 () Bool)

(declare-fun d!659247 () Bool)

(assert (= bs!450870 (and d!659247 d!659085)))

(declare-fun validRegex!2343 (Regex!6259) Bool)

(assert (=> bs!450870 (= (dynLambda!11455 lambda!83101 (h!31135 (exprs!2329 setElem!19132))) (validRegex!2343 (h!31135 (exprs!2329 setElem!19132))))))

(declare-fun m!2646627 () Bool)

(assert (=> bs!450870 m!2646627))

(assert (=> b!2204673 d!659247))

(check-sat (not d!659245) (not b!2204759) (not d!659211) (not bm!132206) (not b!2204661) (not b!2204586) (not b!2204667) (not b!2204711) (not setNonEmpty!19139) (not d!659209) (not b!2204607) (not b!2204644) (not b!2204632) (not b!2204710) (not b!2204691) (not b!2204765) (not b!2204635) (not b!2204530) (not b!2204677) (not d!659185) (not b!2204731) (not b!2204684) (not b!2204766) (not d!659133) (not b!2204625) (not d!659179) (not b!2204600) (not b!2204637) (not b!2204645) (not b!2204541) (not d!659191) (not d!659229) (not b!2204617) (not b!2204608) (not d!659127) (not bm!132205) (not d!659221) (not d!659203) (not b!2204594) (not b!2204610) (not b!2204761) tp_is_empty!9743 (not d!659135) (not b!2204572) (not b!2204740) (not d!659213) (not b!2204592) (not b_lambda!71243) (not d!659157) (not d!659121) (not b!2204634) (not b!2204668) (not b!2204712) (not d!659195) (not bm!132211) (not b!2204706) (not d!659193) (not b!2204764) (not b!2204664) (not bm!132207) (not b!2204736) (not d!659149) (not b!2204577) (not b!2204529) (not b!2204666) (not b!2204500) (not b!2204763) (not b!2204639) (not d!659235) (not d!659123) (not b!2204582) (not d!659143) (not b!2204575) (not b!2204729) (not b!2204587) (not d!659167) (not b!2204546) (not b!2204602) (not b!2204613) (not d!659241) (not b!2204623) (not b!2204760) (not b!2204552) (not b!2204767) (not b!2204542) (not d!659207) (not b!2204685) (not b!2204569) (not b!2204683) (not b!2204571) (not b!2204768) (not b!2204758) (not b!2204605) (not b!2204730) (not d!659175) (not b!2204560) (not b!2204596) (not bm!132208) (not b!2204601) (not bm!132204) (not b!2204662) (not b!2204591) (not b!2204535) (not b!2204732) (not b!2204547) (not d!659217) (not d!659177) (not b!2204603) (not b!2204690) (not b!2204531) (not b!2204663) (not b!2204536) (not d!659159) (not b!2204627) (not b!2204745) (not b!2204585) (not b!2204676) (not bs!450870) (not b!2204757) (not d!659113) (not b!2204682) (not b!2204705) (not d!659139) (not d!659117) (not b!2204708) (not b!2204762) (not b!2204665) (not b!2204678) (not b!2204674) (not d!659147) (not d!659231) (not d!659115) (not b!2204604) (not b!2204713) (not d!659119) (not d!659131) (not b!2204595) (not b!2204738) (not b!2204551) (not b!2204567))
(check-sat)

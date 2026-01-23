; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279020 () Bool)

(assert start!279020)

(declare-fun setIsEmpty!25494 () Bool)

(declare-fun setRes!25494 () Bool)

(assert (=> setIsEmpty!25494 setRes!25494))

(declare-fun b!2864023 () Bool)

(declare-fun e!1813059 () Bool)

(declare-fun tp!922311 () Bool)

(assert (=> b!2864023 (= e!1813059 tp!922311)))

(declare-fun res!1189029 () Bool)

(declare-fun e!1813060 () Bool)

(assert (=> start!279020 (=> (not res!1189029) (not e!1813060))))

(declare-datatypes ((C!17478 0))(
  ( (C!17479 (val!10773 Int)) )
))
(declare-datatypes ((Regex!8648 0))(
  ( (ElementMatch!8648 (c!461775 C!17478)) (Concat!13969 (regOne!17808 Regex!8648) (regTwo!17808 Regex!8648)) (EmptyExpr!8648) (Star!8648 (reg!8977 Regex!8648)) (EmptyLang!8648) (Union!8648 (regOne!17809 Regex!8648) (regTwo!17809 Regex!8648)) )
))
(declare-datatypes ((List!34285 0))(
  ( (Nil!34161) (Cons!34161 (h!39581 Regex!8648) (t!233326 List!34285)) )
))
(declare-datatypes ((Context!5216 0))(
  ( (Context!5217 (exprs!3108 List!34285)) )
))
(declare-fun z!960 () (Set Context!5216))

(declare-datatypes ((List!34286 0))(
  ( (Nil!34162) (Cons!34162 (h!39582 C!17478) (t!233327 List!34286)) )
))
(declare-fun prefix!919 () List!34286)

(declare-fun prefixMatchZipper!330 ((Set Context!5216) List!34286) Bool)

(assert (=> start!279020 (= res!1189029 (prefixMatchZipper!330 z!960 prefix!919))))

(assert (=> start!279020 e!1813060))

(declare-fun condSetEmpty!25494 () Bool)

(assert (=> start!279020 (= condSetEmpty!25494 (= z!960 (as set.empty (Set Context!5216))))))

(assert (=> start!279020 setRes!25494))

(declare-fun e!1813058 () Bool)

(assert (=> start!279020 e!1813058))

(declare-fun b!2864024 () Bool)

(declare-fun size!26298 (List!34286) Int)

(assert (=> b!2864024 (= e!1813060 (>= (size!26298 (t!233327 prefix!919)) (size!26298 prefix!919)))))

(declare-fun b!2864025 () Bool)

(declare-fun res!1189031 () Bool)

(assert (=> b!2864025 (=> (not res!1189031) (not e!1813060))))

(assert (=> b!2864025 (= res!1189031 (not (is-Nil!34162 prefix!919)))))

(declare-fun setNonEmpty!25494 () Bool)

(declare-fun tp!922310 () Bool)

(declare-fun setElem!25494 () Context!5216)

(declare-fun inv!46208 (Context!5216) Bool)

(assert (=> setNonEmpty!25494 (= setRes!25494 (and tp!922310 (inv!46208 setElem!25494) e!1813059))))

(declare-fun setRest!25494 () (Set Context!5216))

(assert (=> setNonEmpty!25494 (= z!960 (set.union (set.insert setElem!25494 (as set.empty (Set Context!5216))) setRest!25494))))

(declare-fun b!2864026 () Bool)

(declare-fun res!1189030 () Bool)

(assert (=> b!2864026 (=> (not res!1189030) (not e!1813060))))

(declare-fun derivationStepZipper!446 ((Set Context!5216) C!17478) (Set Context!5216))

(assert (=> b!2864026 (= res!1189030 (prefixMatchZipper!330 (derivationStepZipper!446 z!960 (h!39582 prefix!919)) (t!233327 prefix!919)))))

(declare-fun b!2864027 () Bool)

(declare-fun tp_is_empty!15033 () Bool)

(declare-fun tp!922309 () Bool)

(assert (=> b!2864027 (= e!1813058 (and tp_is_empty!15033 tp!922309))))

(assert (= (and start!279020 res!1189029) b!2864025))

(assert (= (and b!2864025 res!1189031) b!2864026))

(assert (= (and b!2864026 res!1189030) b!2864024))

(assert (= (and start!279020 condSetEmpty!25494) setIsEmpty!25494))

(assert (= (and start!279020 (not condSetEmpty!25494)) setNonEmpty!25494))

(assert (= setNonEmpty!25494 b!2864023))

(assert (= (and start!279020 (is-Cons!34162 prefix!919)) b!2864027))

(declare-fun m!3283673 () Bool)

(assert (=> start!279020 m!3283673))

(declare-fun m!3283675 () Bool)

(assert (=> b!2864024 m!3283675))

(declare-fun m!3283677 () Bool)

(assert (=> b!2864024 m!3283677))

(declare-fun m!3283679 () Bool)

(assert (=> setNonEmpty!25494 m!3283679))

(declare-fun m!3283681 () Bool)

(assert (=> b!2864026 m!3283681))

(assert (=> b!2864026 m!3283681))

(declare-fun m!3283683 () Bool)

(assert (=> b!2864026 m!3283683))

(push 1)

(assert (not setNonEmpty!25494))

(assert (not b!2864026))

(assert (not start!279020))

(assert tp_is_empty!15033)

(assert (not b!2864024))

(assert (not b!2864027))

(assert (not b!2864023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!828072 () Bool)

(declare-fun lambda!105691 () Int)

(declare-fun forall!6988 (List!34285 Int) Bool)

(assert (=> d!828072 (= (inv!46208 setElem!25494) (forall!6988 (exprs!3108 setElem!25494) lambda!105691))))

(declare-fun bs!520775 () Bool)

(assert (= bs!520775 d!828072))

(declare-fun m!3283697 () Bool)

(assert (=> bs!520775 m!3283697))

(assert (=> setNonEmpty!25494 d!828072))

(declare-fun d!828076 () Bool)

(declare-fun lt!1015282 () Int)

(assert (=> d!828076 (>= lt!1015282 0)))

(declare-fun e!1813072 () Int)

(assert (=> d!828076 (= lt!1015282 e!1813072)))

(declare-fun c!461779 () Bool)

(assert (=> d!828076 (= c!461779 (is-Nil!34162 (t!233327 prefix!919)))))

(assert (=> d!828076 (= (size!26298 (t!233327 prefix!919)) lt!1015282)))

(declare-fun b!2864047 () Bool)

(assert (=> b!2864047 (= e!1813072 0)))

(declare-fun b!2864048 () Bool)

(assert (=> b!2864048 (= e!1813072 (+ 1 (size!26298 (t!233327 (t!233327 prefix!919)))))))

(assert (= (and d!828076 c!461779) b!2864047))

(assert (= (and d!828076 (not c!461779)) b!2864048))

(declare-fun m!3283699 () Bool)

(assert (=> b!2864048 m!3283699))

(assert (=> b!2864024 d!828076))

(declare-fun d!828078 () Bool)

(declare-fun lt!1015283 () Int)

(assert (=> d!828078 (>= lt!1015283 0)))

(declare-fun e!1813073 () Int)

(assert (=> d!828078 (= lt!1015283 e!1813073)))

(declare-fun c!461780 () Bool)

(assert (=> d!828078 (= c!461780 (is-Nil!34162 prefix!919))))

(assert (=> d!828078 (= (size!26298 prefix!919) lt!1015283)))

(declare-fun b!2864049 () Bool)

(assert (=> b!2864049 (= e!1813073 0)))

(declare-fun b!2864050 () Bool)

(assert (=> b!2864050 (= e!1813073 (+ 1 (size!26298 (t!233327 prefix!919))))))

(assert (= (and d!828078 c!461780) b!2864049))

(assert (= (and d!828078 (not c!461780)) b!2864050))

(assert (=> b!2864050 m!3283675))

(assert (=> b!2864024 d!828078))

(declare-fun d!828080 () Bool)

(declare-fun c!461783 () Bool)

(declare-fun isEmpty!18648 (List!34286) Bool)

(assert (=> d!828080 (= c!461783 (isEmpty!18648 prefix!919))))

(declare-fun e!1813076 () Bool)

(assert (=> d!828080 (= (prefixMatchZipper!330 z!960 prefix!919) e!1813076)))

(declare-fun b!2864055 () Bool)

(declare-fun lostCauseZipper!557 ((Set Context!5216)) Bool)

(assert (=> b!2864055 (= e!1813076 (not (lostCauseZipper!557 z!960)))))

(declare-fun b!2864056 () Bool)

(declare-fun head!6314 (List!34286) C!17478)

(declare-fun tail!4539 (List!34286) List!34286)

(assert (=> b!2864056 (= e!1813076 (prefixMatchZipper!330 (derivationStepZipper!446 z!960 (head!6314 prefix!919)) (tail!4539 prefix!919)))))

(assert (= (and d!828080 c!461783) b!2864055))

(assert (= (and d!828080 (not c!461783)) b!2864056))

(declare-fun m!3283701 () Bool)

(assert (=> d!828080 m!3283701))

(declare-fun m!3283703 () Bool)

(assert (=> b!2864055 m!3283703))

(declare-fun m!3283705 () Bool)

(assert (=> b!2864056 m!3283705))

(assert (=> b!2864056 m!3283705))

(declare-fun m!3283707 () Bool)

(assert (=> b!2864056 m!3283707))

(declare-fun m!3283709 () Bool)

(assert (=> b!2864056 m!3283709))

(assert (=> b!2864056 m!3283707))

(assert (=> b!2864056 m!3283709))

(declare-fun m!3283711 () Bool)

(assert (=> b!2864056 m!3283711))

(assert (=> start!279020 d!828080))

(declare-fun d!828082 () Bool)

(declare-fun c!461784 () Bool)

(assert (=> d!828082 (= c!461784 (isEmpty!18648 (t!233327 prefix!919)))))

(declare-fun e!1813077 () Bool)

(assert (=> d!828082 (= (prefixMatchZipper!330 (derivationStepZipper!446 z!960 (h!39582 prefix!919)) (t!233327 prefix!919)) e!1813077)))

(declare-fun b!2864057 () Bool)

(assert (=> b!2864057 (= e!1813077 (not (lostCauseZipper!557 (derivationStepZipper!446 z!960 (h!39582 prefix!919)))))))

(declare-fun b!2864058 () Bool)

(assert (=> b!2864058 (= e!1813077 (prefixMatchZipper!330 (derivationStepZipper!446 (derivationStepZipper!446 z!960 (h!39582 prefix!919)) (head!6314 (t!233327 prefix!919))) (tail!4539 (t!233327 prefix!919))))))

(assert (= (and d!828082 c!461784) b!2864057))

(assert (= (and d!828082 (not c!461784)) b!2864058))

(declare-fun m!3283713 () Bool)

(assert (=> d!828082 m!3283713))

(assert (=> b!2864057 m!3283681))

(declare-fun m!3283715 () Bool)

(assert (=> b!2864057 m!3283715))

(declare-fun m!3283717 () Bool)

(assert (=> b!2864058 m!3283717))

(assert (=> b!2864058 m!3283681))

(assert (=> b!2864058 m!3283717))

(declare-fun m!3283719 () Bool)

(assert (=> b!2864058 m!3283719))

(declare-fun m!3283721 () Bool)

(assert (=> b!2864058 m!3283721))

(assert (=> b!2864058 m!3283719))

(assert (=> b!2864058 m!3283721))

(declare-fun m!3283723 () Bool)

(assert (=> b!2864058 m!3283723))

(assert (=> b!2864026 d!828082))

(declare-fun d!828084 () Bool)

(assert (=> d!828084 true))

(declare-fun lambda!105694 () Int)

(declare-fun flatMap!214 ((Set Context!5216) Int) (Set Context!5216))

(assert (=> d!828084 (= (derivationStepZipper!446 z!960 (h!39582 prefix!919)) (flatMap!214 z!960 lambda!105694))))

(declare-fun bs!520776 () Bool)

(assert (= bs!520776 d!828084))

(declare-fun m!3283725 () Bool)

(assert (=> bs!520776 m!3283725))

(assert (=> b!2864026 d!828084))

(declare-fun condSetEmpty!25500 () Bool)

(assert (=> setNonEmpty!25494 (= condSetEmpty!25500 (= setRest!25494 (as set.empty (Set Context!5216))))))

(declare-fun setRes!25500 () Bool)

(assert (=> setNonEmpty!25494 (= tp!922310 setRes!25500)))

(declare-fun setIsEmpty!25500 () Bool)

(assert (=> setIsEmpty!25500 setRes!25500))

(declare-fun tp!922325 () Bool)

(declare-fun setElem!25500 () Context!5216)

(declare-fun setNonEmpty!25500 () Bool)

(declare-fun e!1813080 () Bool)

(assert (=> setNonEmpty!25500 (= setRes!25500 (and tp!922325 (inv!46208 setElem!25500) e!1813080))))

(declare-fun setRest!25500 () (Set Context!5216))

(assert (=> setNonEmpty!25500 (= setRest!25494 (set.union (set.insert setElem!25500 (as set.empty (Set Context!5216))) setRest!25500))))

(declare-fun b!2864065 () Bool)

(declare-fun tp!922326 () Bool)

(assert (=> b!2864065 (= e!1813080 tp!922326)))

(assert (= (and setNonEmpty!25494 condSetEmpty!25500) setIsEmpty!25500))

(assert (= (and setNonEmpty!25494 (not condSetEmpty!25500)) setNonEmpty!25500))

(assert (= setNonEmpty!25500 b!2864065))

(declare-fun m!3283727 () Bool)

(assert (=> setNonEmpty!25500 m!3283727))

(declare-fun b!2864070 () Bool)

(declare-fun e!1813083 () Bool)

(declare-fun tp!922329 () Bool)

(assert (=> b!2864070 (= e!1813083 (and tp_is_empty!15033 tp!922329))))

(assert (=> b!2864027 (= tp!922309 e!1813083)))

(assert (= (and b!2864027 (is-Cons!34162 (t!233327 prefix!919))) b!2864070))

(declare-fun b!2864075 () Bool)

(declare-fun e!1813086 () Bool)

(declare-fun tp!922334 () Bool)

(declare-fun tp!922335 () Bool)

(assert (=> b!2864075 (= e!1813086 (and tp!922334 tp!922335))))

(assert (=> b!2864023 (= tp!922311 e!1813086)))

(assert (= (and b!2864023 (is-Cons!34161 (exprs!3108 setElem!25494))) b!2864075))

(push 1)

(assert (not b!2864056))

(assert (not b!2864057))

(assert (not b!2864055))

(assert (not d!828082))

(assert (not d!828084))

(assert (not b!2864075))

(assert (not d!828072))

(assert (not d!828080))

(assert (not setNonEmpty!25500))

(assert (not b!2864065))

(assert (not b!2864058))

(assert tp_is_empty!15033)

(assert (not b!2864048))

(assert (not b!2864070))

(assert (not b!2864050))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


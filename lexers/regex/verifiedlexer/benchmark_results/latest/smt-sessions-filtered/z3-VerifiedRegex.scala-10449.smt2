; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539844 () Bool)

(assert start!539844)

(declare-fun b!5116537 () Bool)

(declare-fun e!3191107 () Bool)

(declare-fun tp_is_empty!37651 () Bool)

(declare-fun tp!1427476 () Bool)

(assert (=> b!5116537 (= e!3191107 (and tp_is_empty!37651 tp!1427476))))

(declare-fun b!5116538 () Bool)

(declare-fun res!2178415 () Bool)

(declare-fun e!3191105 () Bool)

(assert (=> b!5116538 (=> (not res!2178415) (not e!3191105))))

(declare-datatypes ((C!28644 0))(
  ( (C!28645 (val!23974 Int)) )
))
(declare-datatypes ((List!59283 0))(
  ( (Nil!59159) (Cons!59159 (h!65607 C!28644) (t!372294 List!59283)) )
))
(declare-fun knownP!20 () List!59283)

(declare-fun input!5745 () List!59283)

(declare-fun isPrefix!5594 (List!59283 List!59283) Bool)

(assert (=> b!5116538 (= res!2178415 (isPrefix!5594 knownP!20 input!5745))))

(declare-fun b!5116539 () Bool)

(declare-fun e!3191104 () Bool)

(declare-fun tp!1427475 () Bool)

(assert (=> b!5116539 (= e!3191104 (and tp_is_empty!37651 tp!1427475))))

(declare-fun b!5116540 () Bool)

(declare-fun res!2178416 () Bool)

(declare-fun e!3191109 () Bool)

(assert (=> b!5116540 (=> res!2178416 e!3191109)))

(declare-fun lt!2108679 () Int)

(declare-fun lt!2108678 () Int)

(assert (=> b!5116540 (= res!2178416 (= lt!2108679 lt!2108678))))

(declare-fun b!5116541 () Bool)

(declare-fun res!2178420 () Bool)

(declare-fun e!3191106 () Bool)

(assert (=> b!5116541 (=> (not res!2178420) (not e!3191106))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14189 0))(
  ( (ElementMatch!14189 (c!879083 C!28644)) (Concat!23034 (regOne!28890 Regex!14189) (regTwo!28890 Regex!14189)) (EmptyExpr!14189) (Star!14189 (reg!14518 Regex!14189)) (EmptyLang!14189) (Union!14189 (regOne!28891 Regex!14189) (regTwo!28891 Regex!14189)) )
))
(declare-datatypes ((List!59284 0))(
  ( (Nil!59160) (Cons!59160 (h!65608 Regex!14189) (t!372295 List!59284)) )
))
(declare-datatypes ((Context!7146 0))(
  ( (Context!7147 (exprs!4073 List!59284)) )
))
(declare-fun baseZ!46 () (InoxSet Context!7146))

(declare-fun matchZipper!857 ((InoxSet Context!7146) List!59283) Bool)

(assert (=> b!5116541 (= res!2178420 (matchZipper!857 baseZ!46 knownP!20))))

(declare-fun b!5116542 () Bool)

(declare-fun size!39495 (List!59283) Int)

(assert (=> b!5116542 (= e!3191109 (< lt!2108679 (size!39495 input!5745)))))

(declare-fun b!5116543 () Bool)

(declare-fun res!2178414 () Bool)

(assert (=> b!5116543 (=> res!2178414 e!3191109)))

(declare-fun z!4463 () (InoxSet Context!7146))

(declare-fun lostCauseZipper!1075 ((InoxSet Context!7146)) Bool)

(assert (=> b!5116543 (= res!2178414 (lostCauseZipper!1075 z!4463))))

(declare-fun b!5116544 () Bool)

(declare-fun e!3191110 () Bool)

(declare-fun tp!1427477 () Bool)

(assert (=> b!5116544 (= e!3191110 (and tp_is_empty!37651 tp!1427477))))

(declare-fun b!5116545 () Bool)

(declare-fun e!3191108 () Bool)

(declare-fun tp!1427478 () Bool)

(assert (=> b!5116545 (= e!3191108 tp!1427478)))

(declare-fun b!5116546 () Bool)

(declare-fun res!2178413 () Bool)

(assert (=> b!5116546 (=> res!2178413 e!3191109)))

(declare-fun testedP!265 () List!59283)

(declare-fun derivationZipper!88 ((InoxSet Context!7146) List!59283) (InoxSet Context!7146))

(assert (=> b!5116546 (= res!2178413 (not (= (derivationZipper!88 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5116547 () Bool)

(assert (=> b!5116547 (= e!3191105 e!3191106)))

(declare-fun res!2178419 () Bool)

(assert (=> b!5116547 (=> (not res!2178419) (not e!3191106))))

(assert (=> b!5116547 (= res!2178419 (>= lt!2108678 lt!2108679))))

(assert (=> b!5116547 (= lt!2108679 (size!39495 testedP!265))))

(assert (=> b!5116547 (= lt!2108678 (size!39495 knownP!20))))

(declare-fun setIsEmpty!30113 () Bool)

(declare-fun setRes!30114 () Bool)

(assert (=> setIsEmpty!30113 setRes!30114))

(declare-fun setRes!30113 () Bool)

(declare-fun tp!1427481 () Bool)

(declare-fun setElem!30113 () Context!7146)

(declare-fun setNonEmpty!30114 () Bool)

(declare-fun inv!78653 (Context!7146) Bool)

(assert (=> setNonEmpty!30114 (= setRes!30113 (and tp!1427481 (inv!78653 setElem!30113) e!3191108))))

(declare-fun setRest!30114 () (InoxSet Context!7146))

(assert (=> setNonEmpty!30114 (= z!4463 ((_ map or) (store ((as const (Array Context!7146 Bool)) false) setElem!30113 true) setRest!30114))))

(declare-fun setIsEmpty!30114 () Bool)

(assert (=> setIsEmpty!30114 setRes!30113))

(declare-fun tp!1427480 () Bool)

(declare-fun setElem!30114 () Context!7146)

(declare-fun e!3191111 () Bool)

(declare-fun setNonEmpty!30113 () Bool)

(assert (=> setNonEmpty!30113 (= setRes!30114 (and tp!1427480 (inv!78653 setElem!30114) e!3191111))))

(declare-fun setRest!30113 () (InoxSet Context!7146))

(assert (=> setNonEmpty!30113 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7146 Bool)) false) setElem!30114 true) setRest!30113))))

(declare-fun res!2178417 () Bool)

(assert (=> start!539844 (=> (not res!2178417) (not e!3191105))))

(assert (=> start!539844 (= res!2178417 (isPrefix!5594 testedP!265 input!5745))))

(assert (=> start!539844 e!3191105))

(assert (=> start!539844 e!3191110))

(declare-fun condSetEmpty!30114 () Bool)

(assert (=> start!539844 (= condSetEmpty!30114 (= z!4463 ((as const (Array Context!7146 Bool)) false)))))

(assert (=> start!539844 setRes!30113))

(assert (=> start!539844 e!3191104))

(declare-fun condSetEmpty!30113 () Bool)

(assert (=> start!539844 (= condSetEmpty!30113 (= baseZ!46 ((as const (Array Context!7146 Bool)) false)))))

(assert (=> start!539844 setRes!30114))

(assert (=> start!539844 e!3191107))

(declare-fun b!5116548 () Bool)

(declare-fun tp!1427479 () Bool)

(assert (=> b!5116548 (= e!3191111 tp!1427479)))

(declare-fun b!5116549 () Bool)

(assert (=> b!5116549 (= e!3191106 (not e!3191109))))

(declare-fun res!2178418 () Bool)

(assert (=> b!5116549 (=> res!2178418 e!3191109)))

(declare-fun getSuffix!3268 (List!59283 List!59283) List!59283)

(assert (=> b!5116549 (= res!2178418 (not (matchZipper!857 z!4463 (getSuffix!3268 knownP!20 testedP!265))))))

(assert (=> b!5116549 (isPrefix!5594 testedP!265 knownP!20)))

(declare-datatypes ((Unit!150285 0))(
  ( (Unit!150286) )
))
(declare-fun lt!2108680 () Unit!150285)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!731 (List!59283 List!59283 List!59283) Unit!150285)

(assert (=> b!5116549 (= lt!2108680 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!731 knownP!20 testedP!265 input!5745))))

(assert (= (and start!539844 res!2178417) b!5116538))

(assert (= (and b!5116538 res!2178415) b!5116547))

(assert (= (and b!5116547 res!2178419) b!5116541))

(assert (= (and b!5116541 res!2178420) b!5116549))

(assert (= (and b!5116549 (not res!2178418)) b!5116546))

(assert (= (and b!5116546 (not res!2178413)) b!5116543))

(assert (= (and b!5116543 (not res!2178414)) b!5116540))

(assert (= (and b!5116540 (not res!2178416)) b!5116542))

(get-info :version)

(assert (= (and start!539844 ((_ is Cons!59159) input!5745)) b!5116544))

(assert (= (and start!539844 condSetEmpty!30114) setIsEmpty!30114))

(assert (= (and start!539844 (not condSetEmpty!30114)) setNonEmpty!30114))

(assert (= setNonEmpty!30114 b!5116545))

(assert (= (and start!539844 ((_ is Cons!59159) testedP!265)) b!5116539))

(assert (= (and start!539844 condSetEmpty!30113) setIsEmpty!30113))

(assert (= (and start!539844 (not condSetEmpty!30113)) setNonEmpty!30113))

(assert (= setNonEmpty!30113 b!5116548))

(assert (= (and start!539844 ((_ is Cons!59159) knownP!20)) b!5116537))

(declare-fun m!6175998 () Bool)

(assert (=> setNonEmpty!30114 m!6175998))

(declare-fun m!6176000 () Bool)

(assert (=> setNonEmpty!30113 m!6176000))

(declare-fun m!6176002 () Bool)

(assert (=> b!5116546 m!6176002))

(declare-fun m!6176004 () Bool)

(assert (=> b!5116547 m!6176004))

(declare-fun m!6176006 () Bool)

(assert (=> b!5116547 m!6176006))

(declare-fun m!6176008 () Bool)

(assert (=> b!5116538 m!6176008))

(declare-fun m!6176010 () Bool)

(assert (=> b!5116549 m!6176010))

(assert (=> b!5116549 m!6176010))

(declare-fun m!6176012 () Bool)

(assert (=> b!5116549 m!6176012))

(declare-fun m!6176014 () Bool)

(assert (=> b!5116549 m!6176014))

(declare-fun m!6176016 () Bool)

(assert (=> b!5116549 m!6176016))

(declare-fun m!6176018 () Bool)

(assert (=> start!539844 m!6176018))

(declare-fun m!6176020 () Bool)

(assert (=> b!5116543 m!6176020))

(declare-fun m!6176022 () Bool)

(assert (=> b!5116542 m!6176022))

(declare-fun m!6176024 () Bool)

(assert (=> b!5116541 m!6176024))

(check-sat (not b!5116541) (not b!5116545) (not b!5116539) (not b!5116548) (not start!539844) (not setNonEmpty!30114) (not setNonEmpty!30113) (not b!5116547) (not b!5116546) (not b!5116543) (not b!5116538) (not b!5116549) (not b!5116537) (not b!5116542) (not b!5116544) tp_is_empty!37651)
(check-sat)
(get-model)

(declare-fun d!1653448 () Bool)

(declare-fun lt!2108683 () Int)

(assert (=> d!1653448 (>= lt!2108683 0)))

(declare-fun e!3191114 () Int)

(assert (=> d!1653448 (= lt!2108683 e!3191114)))

(declare-fun c!879086 () Bool)

(assert (=> d!1653448 (= c!879086 ((_ is Nil!59159) testedP!265))))

(assert (=> d!1653448 (= (size!39495 testedP!265) lt!2108683)))

(declare-fun b!5116554 () Bool)

(assert (=> b!5116554 (= e!3191114 0)))

(declare-fun b!5116555 () Bool)

(assert (=> b!5116555 (= e!3191114 (+ 1 (size!39495 (t!372294 testedP!265))))))

(assert (= (and d!1653448 c!879086) b!5116554))

(assert (= (and d!1653448 (not c!879086)) b!5116555))

(declare-fun m!6176026 () Bool)

(assert (=> b!5116555 m!6176026))

(assert (=> b!5116547 d!1653448))

(declare-fun d!1653450 () Bool)

(declare-fun lt!2108684 () Int)

(assert (=> d!1653450 (>= lt!2108684 0)))

(declare-fun e!3191115 () Int)

(assert (=> d!1653450 (= lt!2108684 e!3191115)))

(declare-fun c!879087 () Bool)

(assert (=> d!1653450 (= c!879087 ((_ is Nil!59159) knownP!20))))

(assert (=> d!1653450 (= (size!39495 knownP!20) lt!2108684)))

(declare-fun b!5116556 () Bool)

(assert (=> b!5116556 (= e!3191115 0)))

(declare-fun b!5116557 () Bool)

(assert (=> b!5116557 (= e!3191115 (+ 1 (size!39495 (t!372294 knownP!20))))))

(assert (= (and d!1653450 c!879087) b!5116556))

(assert (= (and d!1653450 (not c!879087)) b!5116557))

(declare-fun m!6176028 () Bool)

(assert (=> b!5116557 m!6176028))

(assert (=> b!5116547 d!1653450))

(declare-fun d!1653452 () Bool)

(declare-fun c!879090 () Bool)

(declare-fun isEmpty!31908 (List!59283) Bool)

(assert (=> d!1653452 (= c!879090 (isEmpty!31908 (getSuffix!3268 knownP!20 testedP!265)))))

(declare-fun e!3191118 () Bool)

(assert (=> d!1653452 (= (matchZipper!857 z!4463 (getSuffix!3268 knownP!20 testedP!265)) e!3191118)))

(declare-fun b!5116562 () Bool)

(declare-fun nullableZipper!1014 ((InoxSet Context!7146)) Bool)

(assert (=> b!5116562 (= e!3191118 (nullableZipper!1014 z!4463))))

(declare-fun b!5116563 () Bool)

(declare-fun derivationStepZipper!824 ((InoxSet Context!7146) C!28644) (InoxSet Context!7146))

(declare-fun head!10917 (List!59283) C!28644)

(declare-fun tail!10058 (List!59283) List!59283)

(assert (=> b!5116563 (= e!3191118 (matchZipper!857 (derivationStepZipper!824 z!4463 (head!10917 (getSuffix!3268 knownP!20 testedP!265))) (tail!10058 (getSuffix!3268 knownP!20 testedP!265))))))

(assert (= (and d!1653452 c!879090) b!5116562))

(assert (= (and d!1653452 (not c!879090)) b!5116563))

(assert (=> d!1653452 m!6176010))

(declare-fun m!6176030 () Bool)

(assert (=> d!1653452 m!6176030))

(declare-fun m!6176032 () Bool)

(assert (=> b!5116562 m!6176032))

(assert (=> b!5116563 m!6176010))

(declare-fun m!6176034 () Bool)

(assert (=> b!5116563 m!6176034))

(assert (=> b!5116563 m!6176034))

(declare-fun m!6176036 () Bool)

(assert (=> b!5116563 m!6176036))

(assert (=> b!5116563 m!6176010))

(declare-fun m!6176038 () Bool)

(assert (=> b!5116563 m!6176038))

(assert (=> b!5116563 m!6176036))

(assert (=> b!5116563 m!6176038))

(declare-fun m!6176040 () Bool)

(assert (=> b!5116563 m!6176040))

(assert (=> b!5116549 d!1653452))

(declare-fun d!1653454 () Bool)

(declare-fun lt!2108687 () List!59283)

(declare-fun ++!13014 (List!59283 List!59283) List!59283)

(assert (=> d!1653454 (= (++!13014 testedP!265 lt!2108687) knownP!20)))

(declare-fun e!3191121 () List!59283)

(assert (=> d!1653454 (= lt!2108687 e!3191121)))

(declare-fun c!879093 () Bool)

(assert (=> d!1653454 (= c!879093 ((_ is Cons!59159) testedP!265))))

(assert (=> d!1653454 (>= (size!39495 knownP!20) (size!39495 testedP!265))))

(assert (=> d!1653454 (= (getSuffix!3268 knownP!20 testedP!265) lt!2108687)))

(declare-fun b!5116568 () Bool)

(assert (=> b!5116568 (= e!3191121 (getSuffix!3268 (tail!10058 knownP!20) (t!372294 testedP!265)))))

(declare-fun b!5116569 () Bool)

(assert (=> b!5116569 (= e!3191121 knownP!20)))

(assert (= (and d!1653454 c!879093) b!5116568))

(assert (= (and d!1653454 (not c!879093)) b!5116569))

(declare-fun m!6176042 () Bool)

(assert (=> d!1653454 m!6176042))

(assert (=> d!1653454 m!6176006))

(assert (=> d!1653454 m!6176004))

(declare-fun m!6176044 () Bool)

(assert (=> b!5116568 m!6176044))

(assert (=> b!5116568 m!6176044))

(declare-fun m!6176046 () Bool)

(assert (=> b!5116568 m!6176046))

(assert (=> b!5116549 d!1653454))

(declare-fun d!1653456 () Bool)

(declare-fun e!3191129 () Bool)

(assert (=> d!1653456 e!3191129))

(declare-fun res!2178431 () Bool)

(assert (=> d!1653456 (=> res!2178431 e!3191129)))

(declare-fun lt!2108690 () Bool)

(assert (=> d!1653456 (= res!2178431 (not lt!2108690))))

(declare-fun e!3191128 () Bool)

(assert (=> d!1653456 (= lt!2108690 e!3191128)))

(declare-fun res!2178429 () Bool)

(assert (=> d!1653456 (=> res!2178429 e!3191128)))

(assert (=> d!1653456 (= res!2178429 ((_ is Nil!59159) testedP!265))))

(assert (=> d!1653456 (= (isPrefix!5594 testedP!265 knownP!20) lt!2108690)))

(declare-fun b!5116578 () Bool)

(declare-fun e!3191130 () Bool)

(assert (=> b!5116578 (= e!3191128 e!3191130)))

(declare-fun res!2178430 () Bool)

(assert (=> b!5116578 (=> (not res!2178430) (not e!3191130))))

(assert (=> b!5116578 (= res!2178430 (not ((_ is Nil!59159) knownP!20)))))

(declare-fun b!5116580 () Bool)

(assert (=> b!5116580 (= e!3191130 (isPrefix!5594 (tail!10058 testedP!265) (tail!10058 knownP!20)))))

(declare-fun b!5116579 () Bool)

(declare-fun res!2178432 () Bool)

(assert (=> b!5116579 (=> (not res!2178432) (not e!3191130))))

(assert (=> b!5116579 (= res!2178432 (= (head!10917 testedP!265) (head!10917 knownP!20)))))

(declare-fun b!5116581 () Bool)

(assert (=> b!5116581 (= e!3191129 (>= (size!39495 knownP!20) (size!39495 testedP!265)))))

(assert (= (and d!1653456 (not res!2178429)) b!5116578))

(assert (= (and b!5116578 res!2178430) b!5116579))

(assert (= (and b!5116579 res!2178432) b!5116580))

(assert (= (and d!1653456 (not res!2178431)) b!5116581))

(declare-fun m!6176048 () Bool)

(assert (=> b!5116580 m!6176048))

(assert (=> b!5116580 m!6176044))

(assert (=> b!5116580 m!6176048))

(assert (=> b!5116580 m!6176044))

(declare-fun m!6176050 () Bool)

(assert (=> b!5116580 m!6176050))

(declare-fun m!6176052 () Bool)

(assert (=> b!5116579 m!6176052))

(declare-fun m!6176054 () Bool)

(assert (=> b!5116579 m!6176054))

(assert (=> b!5116581 m!6176006))

(assert (=> b!5116581 m!6176004))

(assert (=> b!5116549 d!1653456))

(declare-fun d!1653458 () Bool)

(assert (=> d!1653458 (isPrefix!5594 testedP!265 knownP!20)))

(declare-fun lt!2108693 () Unit!150285)

(declare-fun choose!37572 (List!59283 List!59283 List!59283) Unit!150285)

(assert (=> d!1653458 (= lt!2108693 (choose!37572 knownP!20 testedP!265 input!5745))))

(assert (=> d!1653458 (isPrefix!5594 knownP!20 input!5745)))

(assert (=> d!1653458 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!731 knownP!20 testedP!265 input!5745) lt!2108693)))

(declare-fun bs!1192390 () Bool)

(assert (= bs!1192390 d!1653458))

(assert (=> bs!1192390 m!6176014))

(declare-fun m!6176056 () Bool)

(assert (=> bs!1192390 m!6176056))

(assert (=> bs!1192390 m!6176008))

(assert (=> b!5116549 d!1653458))

(declare-fun d!1653460 () Bool)

(declare-fun c!879096 () Bool)

(assert (=> d!1653460 (= c!879096 ((_ is Cons!59159) testedP!265))))

(declare-fun e!3191133 () (InoxSet Context!7146))

(assert (=> d!1653460 (= (derivationZipper!88 baseZ!46 testedP!265) e!3191133)))

(declare-fun b!5116586 () Bool)

(assert (=> b!5116586 (= e!3191133 (derivationZipper!88 (derivationStepZipper!824 baseZ!46 (h!65607 testedP!265)) (t!372294 testedP!265)))))

(declare-fun b!5116587 () Bool)

(assert (=> b!5116587 (= e!3191133 baseZ!46)))

(assert (= (and d!1653460 c!879096) b!5116586))

(assert (= (and d!1653460 (not c!879096)) b!5116587))

(declare-fun m!6176058 () Bool)

(assert (=> b!5116586 m!6176058))

(assert (=> b!5116586 m!6176058))

(declare-fun m!6176060 () Bool)

(assert (=> b!5116586 m!6176060))

(assert (=> b!5116546 d!1653460))

(declare-fun d!1653462 () Bool)

(declare-fun c!879097 () Bool)

(assert (=> d!1653462 (= c!879097 (isEmpty!31908 knownP!20))))

(declare-fun e!3191134 () Bool)

(assert (=> d!1653462 (= (matchZipper!857 baseZ!46 knownP!20) e!3191134)))

(declare-fun b!5116588 () Bool)

(assert (=> b!5116588 (= e!3191134 (nullableZipper!1014 baseZ!46))))

(declare-fun b!5116589 () Bool)

(assert (=> b!5116589 (= e!3191134 (matchZipper!857 (derivationStepZipper!824 baseZ!46 (head!10917 knownP!20)) (tail!10058 knownP!20)))))

(assert (= (and d!1653462 c!879097) b!5116588))

(assert (= (and d!1653462 (not c!879097)) b!5116589))

(declare-fun m!6176062 () Bool)

(assert (=> d!1653462 m!6176062))

(declare-fun m!6176064 () Bool)

(assert (=> b!5116588 m!6176064))

(assert (=> b!5116589 m!6176054))

(assert (=> b!5116589 m!6176054))

(declare-fun m!6176066 () Bool)

(assert (=> b!5116589 m!6176066))

(assert (=> b!5116589 m!6176044))

(assert (=> b!5116589 m!6176066))

(assert (=> b!5116589 m!6176044))

(declare-fun m!6176068 () Bool)

(assert (=> b!5116589 m!6176068))

(assert (=> b!5116541 d!1653462))

(declare-fun d!1653464 () Bool)

(declare-fun lambda!250894 () Int)

(declare-fun forall!13583 (List!59284 Int) Bool)

(assert (=> d!1653464 (= (inv!78653 setElem!30114) (forall!13583 (exprs!4073 setElem!30114) lambda!250894))))

(declare-fun bs!1192398 () Bool)

(assert (= bs!1192398 d!1653464))

(declare-fun m!6176146 () Bool)

(assert (=> bs!1192398 m!6176146))

(assert (=> setNonEmpty!30113 d!1653464))

(declare-fun d!1653492 () Bool)

(declare-fun lt!2108734 () Int)

(assert (=> d!1653492 (>= lt!2108734 0)))

(declare-fun e!3191185 () Int)

(assert (=> d!1653492 (= lt!2108734 e!3191185)))

(declare-fun c!879124 () Bool)

(assert (=> d!1653492 (= c!879124 ((_ is Nil!59159) input!5745))))

(assert (=> d!1653492 (= (size!39495 input!5745) lt!2108734)))

(declare-fun b!5116665 () Bool)

(assert (=> b!5116665 (= e!3191185 0)))

(declare-fun b!5116666 () Bool)

(assert (=> b!5116666 (= e!3191185 (+ 1 (size!39495 (t!372294 input!5745))))))

(assert (= (and d!1653492 c!879124) b!5116665))

(assert (= (and d!1653492 (not c!879124)) b!5116666))

(declare-fun m!6176148 () Bool)

(assert (=> b!5116666 m!6176148))

(assert (=> b!5116542 d!1653492))

(declare-fun d!1653494 () Bool)

(declare-fun e!3191187 () Bool)

(assert (=> d!1653494 e!3191187))

(declare-fun res!2178455 () Bool)

(assert (=> d!1653494 (=> res!2178455 e!3191187)))

(declare-fun lt!2108735 () Bool)

(assert (=> d!1653494 (= res!2178455 (not lt!2108735))))

(declare-fun e!3191186 () Bool)

(assert (=> d!1653494 (= lt!2108735 e!3191186)))

(declare-fun res!2178453 () Bool)

(assert (=> d!1653494 (=> res!2178453 e!3191186)))

(assert (=> d!1653494 (= res!2178453 ((_ is Nil!59159) testedP!265))))

(assert (=> d!1653494 (= (isPrefix!5594 testedP!265 input!5745) lt!2108735)))

(declare-fun b!5116667 () Bool)

(declare-fun e!3191188 () Bool)

(assert (=> b!5116667 (= e!3191186 e!3191188)))

(declare-fun res!2178454 () Bool)

(assert (=> b!5116667 (=> (not res!2178454) (not e!3191188))))

(assert (=> b!5116667 (= res!2178454 (not ((_ is Nil!59159) input!5745)))))

(declare-fun b!5116669 () Bool)

(assert (=> b!5116669 (= e!3191188 (isPrefix!5594 (tail!10058 testedP!265) (tail!10058 input!5745)))))

(declare-fun b!5116668 () Bool)

(declare-fun res!2178456 () Bool)

(assert (=> b!5116668 (=> (not res!2178456) (not e!3191188))))

(assert (=> b!5116668 (= res!2178456 (= (head!10917 testedP!265) (head!10917 input!5745)))))

(declare-fun b!5116670 () Bool)

(assert (=> b!5116670 (= e!3191187 (>= (size!39495 input!5745) (size!39495 testedP!265)))))

(assert (= (and d!1653494 (not res!2178453)) b!5116667))

(assert (= (and b!5116667 res!2178454) b!5116668))

(assert (= (and b!5116668 res!2178456) b!5116669))

(assert (= (and d!1653494 (not res!2178455)) b!5116670))

(assert (=> b!5116669 m!6176048))

(declare-fun m!6176150 () Bool)

(assert (=> b!5116669 m!6176150))

(assert (=> b!5116669 m!6176048))

(assert (=> b!5116669 m!6176150))

(declare-fun m!6176152 () Bool)

(assert (=> b!5116669 m!6176152))

(assert (=> b!5116668 m!6176052))

(declare-fun m!6176154 () Bool)

(assert (=> b!5116668 m!6176154))

(assert (=> b!5116670 m!6176022))

(assert (=> b!5116670 m!6176004))

(assert (=> start!539844 d!1653494))

(declare-fun bs!1192399 () Bool)

(declare-fun b!5116675 () Bool)

(declare-fun d!1653496 () Bool)

(assert (= bs!1192399 (and b!5116675 d!1653496)))

(declare-fun lambda!250908 () Int)

(declare-fun lambda!250907 () Int)

(assert (=> bs!1192399 (not (= lambda!250908 lambda!250907))))

(declare-fun bs!1192400 () Bool)

(declare-fun b!5116676 () Bool)

(assert (= bs!1192400 (and b!5116676 d!1653496)))

(declare-fun lambda!250909 () Int)

(assert (=> bs!1192400 (not (= lambda!250909 lambda!250907))))

(declare-fun bs!1192401 () Bool)

(assert (= bs!1192401 (and b!5116676 b!5116675)))

(assert (=> bs!1192401 (= lambda!250909 lambda!250908)))

(declare-fun e!3191195 () Unit!150285)

(declare-fun Unit!150289 () Unit!150285)

(assert (=> b!5116675 (= e!3191195 Unit!150289)))

(declare-datatypes ((List!59286 0))(
  ( (Nil!59162) (Cons!59162 (h!65610 Context!7146) (t!372297 List!59286)) )
))
(declare-fun lt!2108757 () List!59286)

(declare-fun call!356532 () List!59286)

(assert (=> b!5116675 (= lt!2108757 call!356532)))

(declare-fun lt!2108755 () Unit!150285)

(declare-fun lemmaNotForallThenExists!324 (List!59286 Int) Unit!150285)

(assert (=> b!5116675 (= lt!2108755 (lemmaNotForallThenExists!324 lt!2108757 lambda!250907))))

(declare-fun call!356533 () Bool)

(assert (=> b!5116675 call!356533))

(declare-fun lt!2108756 () Unit!150285)

(assert (=> b!5116675 (= lt!2108756 lt!2108755)))

(declare-fun lt!2108759 () Bool)

(declare-datatypes ((Option!14684 0))(
  ( (None!14683) (Some!14683 (v!50696 List!59283)) )
))
(declare-fun isEmpty!31909 (Option!14684) Bool)

(declare-fun getLanguageWitness!801 ((InoxSet Context!7146)) Option!14684)

(assert (=> d!1653496 (= lt!2108759 (isEmpty!31909 (getLanguageWitness!801 z!4463)))))

(declare-fun forall!13584 ((InoxSet Context!7146) Int) Bool)

(assert (=> d!1653496 (= lt!2108759 (forall!13584 z!4463 lambda!250907))))

(declare-fun lt!2108752 () Unit!150285)

(assert (=> d!1653496 (= lt!2108752 e!3191195)))

(declare-fun c!879135 () Bool)

(assert (=> d!1653496 (= c!879135 (not (forall!13584 z!4463 lambda!250907)))))

(assert (=> d!1653496 (= (lostCauseZipper!1075 z!4463) lt!2108759)))

(declare-fun bm!356527 () Bool)

(declare-fun toList!8250 ((InoxSet Context!7146)) List!59286)

(assert (=> bm!356527 (= call!356532 (toList!8250 z!4463))))

(declare-fun lt!2108758 () List!59286)

(declare-fun bm!356528 () Bool)

(declare-fun exists!1461 (List!59286 Int) Bool)

(assert (=> bm!356528 (= call!356533 (exists!1461 (ite c!879135 lt!2108757 lt!2108758) (ite c!879135 lambda!250908 lambda!250909)))))

(declare-fun Unit!150290 () Unit!150285)

(assert (=> b!5116676 (= e!3191195 Unit!150290)))

(assert (=> b!5116676 (= lt!2108758 call!356532)))

(declare-fun lt!2108754 () Unit!150285)

(declare-fun lemmaForallThenNotExists!307 (List!59286 Int) Unit!150285)

(assert (=> b!5116676 (= lt!2108754 (lemmaForallThenNotExists!307 lt!2108758 lambda!250907))))

(assert (=> b!5116676 (not call!356533)))

(declare-fun lt!2108753 () Unit!150285)

(assert (=> b!5116676 (= lt!2108753 lt!2108754)))

(assert (= (and d!1653496 c!879135) b!5116675))

(assert (= (and d!1653496 (not c!879135)) b!5116676))

(assert (= (or b!5116675 b!5116676) bm!356527))

(assert (= (or b!5116675 b!5116676) bm!356528))

(declare-fun m!6176156 () Bool)

(assert (=> d!1653496 m!6176156))

(assert (=> d!1653496 m!6176156))

(declare-fun m!6176158 () Bool)

(assert (=> d!1653496 m!6176158))

(declare-fun m!6176160 () Bool)

(assert (=> d!1653496 m!6176160))

(assert (=> d!1653496 m!6176160))

(declare-fun m!6176162 () Bool)

(assert (=> bm!356528 m!6176162))

(declare-fun m!6176164 () Bool)

(assert (=> b!5116676 m!6176164))

(declare-fun m!6176166 () Bool)

(assert (=> b!5116675 m!6176166))

(declare-fun m!6176168 () Bool)

(assert (=> bm!356527 m!6176168))

(assert (=> b!5116543 d!1653496))

(declare-fun bs!1192402 () Bool)

(declare-fun d!1653498 () Bool)

(assert (= bs!1192402 (and d!1653498 d!1653464)))

(declare-fun lambda!250910 () Int)

(assert (=> bs!1192402 (= lambda!250910 lambda!250894)))

(assert (=> d!1653498 (= (inv!78653 setElem!30113) (forall!13583 (exprs!4073 setElem!30113) lambda!250910))))

(declare-fun bs!1192403 () Bool)

(assert (= bs!1192403 d!1653498))

(declare-fun m!6176170 () Bool)

(assert (=> bs!1192403 m!6176170))

(assert (=> setNonEmpty!30114 d!1653498))

(declare-fun d!1653500 () Bool)

(declare-fun e!3191197 () Bool)

(assert (=> d!1653500 e!3191197))

(declare-fun res!2178459 () Bool)

(assert (=> d!1653500 (=> res!2178459 e!3191197)))

(declare-fun lt!2108760 () Bool)

(assert (=> d!1653500 (= res!2178459 (not lt!2108760))))

(declare-fun e!3191196 () Bool)

(assert (=> d!1653500 (= lt!2108760 e!3191196)))

(declare-fun res!2178457 () Bool)

(assert (=> d!1653500 (=> res!2178457 e!3191196)))

(assert (=> d!1653500 (= res!2178457 ((_ is Nil!59159) knownP!20))))

(assert (=> d!1653500 (= (isPrefix!5594 knownP!20 input!5745) lt!2108760)))

(declare-fun b!5116677 () Bool)

(declare-fun e!3191198 () Bool)

(assert (=> b!5116677 (= e!3191196 e!3191198)))

(declare-fun res!2178458 () Bool)

(assert (=> b!5116677 (=> (not res!2178458) (not e!3191198))))

(assert (=> b!5116677 (= res!2178458 (not ((_ is Nil!59159) input!5745)))))

(declare-fun b!5116679 () Bool)

(assert (=> b!5116679 (= e!3191198 (isPrefix!5594 (tail!10058 knownP!20) (tail!10058 input!5745)))))

(declare-fun b!5116678 () Bool)

(declare-fun res!2178460 () Bool)

(assert (=> b!5116678 (=> (not res!2178460) (not e!3191198))))

(assert (=> b!5116678 (= res!2178460 (= (head!10917 knownP!20) (head!10917 input!5745)))))

(declare-fun b!5116680 () Bool)

(assert (=> b!5116680 (= e!3191197 (>= (size!39495 input!5745) (size!39495 knownP!20)))))

(assert (= (and d!1653500 (not res!2178457)) b!5116677))

(assert (= (and b!5116677 res!2178458) b!5116678))

(assert (= (and b!5116678 res!2178460) b!5116679))

(assert (= (and d!1653500 (not res!2178459)) b!5116680))

(assert (=> b!5116679 m!6176044))

(assert (=> b!5116679 m!6176150))

(assert (=> b!5116679 m!6176044))

(assert (=> b!5116679 m!6176150))

(declare-fun m!6176172 () Bool)

(assert (=> b!5116679 m!6176172))

(assert (=> b!5116678 m!6176054))

(assert (=> b!5116678 m!6176154))

(assert (=> b!5116680 m!6176022))

(assert (=> b!5116680 m!6176006))

(assert (=> b!5116538 d!1653500))

(declare-fun b!5116685 () Bool)

(declare-fun e!3191201 () Bool)

(declare-fun tp!1427505 () Bool)

(assert (=> b!5116685 (= e!3191201 (and tp_is_empty!37651 tp!1427505))))

(assert (=> b!5116544 (= tp!1427477 e!3191201)))

(assert (= (and b!5116544 ((_ is Cons!59159) (t!372294 input!5745))) b!5116685))

(declare-fun b!5116686 () Bool)

(declare-fun e!3191202 () Bool)

(declare-fun tp!1427506 () Bool)

(assert (=> b!5116686 (= e!3191202 (and tp_is_empty!37651 tp!1427506))))

(assert (=> b!5116539 (= tp!1427475 e!3191202)))

(assert (= (and b!5116539 ((_ is Cons!59159) (t!372294 testedP!265))) b!5116686))

(declare-fun b!5116691 () Bool)

(declare-fun e!3191205 () Bool)

(declare-fun tp!1427511 () Bool)

(declare-fun tp!1427512 () Bool)

(assert (=> b!5116691 (= e!3191205 (and tp!1427511 tp!1427512))))

(assert (=> b!5116548 (= tp!1427479 e!3191205)))

(assert (= (and b!5116548 ((_ is Cons!59160) (exprs!4073 setElem!30114))) b!5116691))

(declare-fun condSetEmpty!30121 () Bool)

(assert (=> setNonEmpty!30113 (= condSetEmpty!30121 (= setRest!30113 ((as const (Array Context!7146 Bool)) false)))))

(declare-fun setRes!30121 () Bool)

(assert (=> setNonEmpty!30113 (= tp!1427480 setRes!30121)))

(declare-fun setIsEmpty!30121 () Bool)

(assert (=> setIsEmpty!30121 setRes!30121))

(declare-fun setNonEmpty!30121 () Bool)

(declare-fun tp!1427517 () Bool)

(declare-fun setElem!30121 () Context!7146)

(declare-fun e!3191208 () Bool)

(assert (=> setNonEmpty!30121 (= setRes!30121 (and tp!1427517 (inv!78653 setElem!30121) e!3191208))))

(declare-fun setRest!30121 () (InoxSet Context!7146))

(assert (=> setNonEmpty!30121 (= setRest!30113 ((_ map or) (store ((as const (Array Context!7146 Bool)) false) setElem!30121 true) setRest!30121))))

(declare-fun b!5116696 () Bool)

(declare-fun tp!1427518 () Bool)

(assert (=> b!5116696 (= e!3191208 tp!1427518)))

(assert (= (and setNonEmpty!30113 condSetEmpty!30121) setIsEmpty!30121))

(assert (= (and setNonEmpty!30113 (not condSetEmpty!30121)) setNonEmpty!30121))

(assert (= setNonEmpty!30121 b!5116696))

(declare-fun m!6176174 () Bool)

(assert (=> setNonEmpty!30121 m!6176174))

(declare-fun b!5116697 () Bool)

(declare-fun e!3191209 () Bool)

(declare-fun tp!1427519 () Bool)

(assert (=> b!5116697 (= e!3191209 (and tp_is_empty!37651 tp!1427519))))

(assert (=> b!5116537 (= tp!1427476 e!3191209)))

(assert (= (and b!5116537 ((_ is Cons!59159) (t!372294 knownP!20))) b!5116697))

(declare-fun b!5116698 () Bool)

(declare-fun e!3191210 () Bool)

(declare-fun tp!1427520 () Bool)

(declare-fun tp!1427521 () Bool)

(assert (=> b!5116698 (= e!3191210 (and tp!1427520 tp!1427521))))

(assert (=> b!5116545 (= tp!1427478 e!3191210)))

(assert (= (and b!5116545 ((_ is Cons!59160) (exprs!4073 setElem!30113))) b!5116698))

(declare-fun condSetEmpty!30122 () Bool)

(assert (=> setNonEmpty!30114 (= condSetEmpty!30122 (= setRest!30114 ((as const (Array Context!7146 Bool)) false)))))

(declare-fun setRes!30122 () Bool)

(assert (=> setNonEmpty!30114 (= tp!1427481 setRes!30122)))

(declare-fun setIsEmpty!30122 () Bool)

(assert (=> setIsEmpty!30122 setRes!30122))

(declare-fun tp!1427522 () Bool)

(declare-fun setNonEmpty!30122 () Bool)

(declare-fun setElem!30122 () Context!7146)

(declare-fun e!3191211 () Bool)

(assert (=> setNonEmpty!30122 (= setRes!30122 (and tp!1427522 (inv!78653 setElem!30122) e!3191211))))

(declare-fun setRest!30122 () (InoxSet Context!7146))

(assert (=> setNonEmpty!30122 (= setRest!30114 ((_ map or) (store ((as const (Array Context!7146 Bool)) false) setElem!30122 true) setRest!30122))))

(declare-fun b!5116699 () Bool)

(declare-fun tp!1427523 () Bool)

(assert (=> b!5116699 (= e!3191211 tp!1427523)))

(assert (= (and setNonEmpty!30114 condSetEmpty!30122) setIsEmpty!30122))

(assert (= (and setNonEmpty!30114 (not condSetEmpty!30122)) setNonEmpty!30122))

(assert (= setNonEmpty!30122 b!5116699))

(declare-fun m!6176176 () Bool)

(assert (=> setNonEmpty!30122 m!6176176))

(check-sat (not bm!356528) (not b!5116586) (not d!1653454) (not b!5116697) (not setNonEmpty!30121) (not b!5116675) (not b!5116666) (not b!5116696) (not b!5116562) (not d!1653452) (not b!5116568) (not b!5116678) (not d!1653458) (not b!5116588) (not setNonEmpty!30122) (not b!5116581) (not b!5116668) (not d!1653496) (not b!5116686) (not b!5116579) (not b!5116563) (not b!5116680) (not b!5116557) (not d!1653464) tp_is_empty!37651 (not b!5116679) (not b!5116589) (not b!5116669) (not d!1653462) (not b!5116670) (not b!5116698) (not b!5116676) (not b!5116691) (not bm!356527) (not b!5116685) (not d!1653498) (not b!5116555) (not b!5116580) (not b!5116699))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278772 () Bool)

(assert start!278772)

(declare-fun b!2863219 () Bool)

(declare-fun condSetEmpty!25408 () Bool)

(declare-datatypes ((C!17458 0))(
  ( (C!17459 (val!10763 Int)) )
))
(declare-datatypes ((Regex!8638 0))(
  ( (ElementMatch!8638 (c!461559 C!17458)) (Concat!13959 (regOne!17788 Regex!8638) (regTwo!17788 Regex!8638)) (EmptyExpr!8638) (Star!8638 (reg!8967 Regex!8638)) (EmptyLang!8638) (Union!8638 (regOne!17789 Regex!8638) (regTwo!17789 Regex!8638)) )
))
(declare-datatypes ((List!34260 0))(
  ( (Nil!34136) (Cons!34136 (h!39556 Regex!8638) (t!233299 List!34260)) )
))
(declare-datatypes ((Context!5196 0))(
  ( (Context!5197 (exprs!3098 List!34260)) )
))
(declare-fun lt!1014984 () (Set Context!5196))

(assert (=> b!2863219 (= condSetEmpty!25408 (= lt!1014984 (as set.empty (Set Context!5196))))))

(declare-fun setRes!25408 () Bool)

(assert (=> b!2863219 setRes!25408))

(declare-fun setIsEmpty!25408 () Bool)

(assert (=> setIsEmpty!25408 setRes!25408))

(declare-fun setNonEmpty!25408 () Bool)

(assert (=> setNonEmpty!25408 (= setRes!25408 true)))

(declare-fun setElem!25408 () Context!5196)

(declare-fun setRest!25408 () (Set Context!5196))

(assert (=> setNonEmpty!25408 (= lt!1014984 (set.union (set.insert setElem!25408 (as set.empty (Set Context!5196))) setRest!25408))))

(assert (= (and b!2863219 condSetEmpty!25408) setIsEmpty!25408))

(assert (= (and b!2863219 (not condSetEmpty!25408)) setNonEmpty!25408))

(assert (=> b!2863219 true))

(declare-fun res!1188799 () Bool)

(declare-fun e!1812543 () Bool)

(assert (=> start!278772 (=> (not res!1188799) (not e!1812543))))

(declare-fun z!960 () (Set Context!5196))

(declare-datatypes ((List!34261 0))(
  ( (Nil!34137) (Cons!34137 (h!39557 C!17458) (t!233300 List!34261)) )
))
(declare-fun prefix!919 () List!34261)

(declare-fun prefixMatchZipper!320 ((Set Context!5196) List!34261) Bool)

(assert (=> start!278772 (= res!1188799 (prefixMatchZipper!320 z!960 prefix!919))))

(assert (=> start!278772 e!1812543))

(declare-fun condSetEmpty!25405 () Bool)

(assert (=> start!278772 (= condSetEmpty!25405 (= z!960 (as set.empty (Set Context!5196))))))

(declare-fun setRes!25405 () Bool)

(assert (=> start!278772 setRes!25405))

(declare-fun e!1812545 () Bool)

(assert (=> start!278772 e!1812545))

(declare-fun b!2863215 () Bool)

(declare-fun e!1812547 () Bool)

(declare-fun e!1812546 () Bool)

(assert (=> b!2863215 (= e!1812547 e!1812546)))

(declare-fun res!1188795 () Bool)

(assert (=> b!2863215 (=> res!1188795 e!1812546)))

(declare-fun lt!1014986 () List!34261)

(declare-fun matchZipper!436 ((Set Context!5196) List!34261) Bool)

(assert (=> b!2863215 (= res!1188795 (not (matchZipper!436 z!960 lt!1014986)))))

(declare-fun lt!1014987 () List!34261)

(declare-fun $colon$colon!604 (List!34261 C!17458) List!34261)

(assert (=> b!2863215 (= lt!1014986 ($colon$colon!604 lt!1014987 (h!39557 prefix!919)))))

(declare-fun b!2863216 () Bool)

(declare-fun e!1812544 () Bool)

(declare-fun tp!921954 () Bool)

(assert (=> b!2863216 (= e!1812544 tp!921954)))

(declare-fun b!2863217 () Bool)

(declare-fun res!1188796 () Bool)

(assert (=> b!2863217 (=> (not res!1188796) (not e!1812543))))

(assert (=> b!2863217 (= res!1188796 (not (is-Nil!34137 prefix!919)))))

(declare-fun b!2863218 () Bool)

(declare-fun tp_is_empty!15013 () Bool)

(declare-fun tp!921955 () Bool)

(assert (=> b!2863218 (= e!1812545 (and tp_is_empty!15013 tp!921955))))

(declare-fun setElem!25405 () Context!5196)

(declare-fun setNonEmpty!25405 () Bool)

(declare-fun tp!921953 () Bool)

(declare-fun inv!46183 (Context!5196) Bool)

(assert (=> setNonEmpty!25405 (= setRes!25405 (and tp!921953 (inv!46183 setElem!25405) e!1812544))))

(declare-fun setRest!25405 () (Set Context!5196))

(assert (=> setNonEmpty!25405 (= z!960 (set.union (set.insert setElem!25405 (as set.empty (Set Context!5196))) setRest!25405))))

(assert (=> b!2863219 (= e!1812543 (not e!1812547))))

(declare-fun res!1188798 () Bool)

(assert (=> b!2863219 (=> res!1188798 e!1812547)))

(assert (=> b!2863219 (= res!1188798 (not (matchZipper!436 lt!1014984 lt!1014987)))))

(declare-fun lambda!105462 () Int)

(declare-fun pickWitness!329 (Int) List!34261)

(assert (=> b!2863219 (= lt!1014987 (pickWitness!329 lambda!105462))))

(declare-fun Exists!1322 (Int) Bool)

(assert (=> b!2863219 (Exists!1322 lambda!105462)))

(assert (=> b!2863219 (Exists!1322 lambda!105462)))

(declare-datatypes ((Unit!47801 0))(
  ( (Unit!47802) )
))
(declare-fun lt!1014985 () Unit!47801)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!368 ((Set Context!5196) List!34261) Unit!47801)

(assert (=> b!2863219 (= lt!1014985 (lemmaPrefixMatchThenExistsStringThatMatches!368 lt!1014984 (t!233300 prefix!919)))))

(declare-fun derivationStepZipper!437 ((Set Context!5196) C!17458) (Set Context!5196))

(assert (=> b!2863219 (= lt!1014984 (derivationStepZipper!437 z!960 (h!39557 prefix!919)))))

(declare-fun setIsEmpty!25405 () Bool)

(assert (=> setIsEmpty!25405 setRes!25405))

(declare-fun b!2863220 () Bool)

(declare-fun res!1188797 () Bool)

(assert (=> b!2863220 (=> res!1188797 e!1812547)))

(declare-fun isPrefix!2697 (List!34261 List!34261) Bool)

(assert (=> b!2863220 (= res!1188797 (not (isPrefix!2697 (t!233300 prefix!919) lt!1014987)))))

(declare-fun b!2863221 () Bool)

(assert (=> b!2863221 (= e!1812546 (isPrefix!2697 prefix!919 lt!1014986))))

(assert (= (and start!278772 res!1188799) b!2863217))

(assert (= (and b!2863217 res!1188796) b!2863219))

(assert (= (and b!2863219 (not res!1188798)) b!2863220))

(assert (= (and b!2863220 (not res!1188797)) b!2863215))

(assert (= (and b!2863215 (not res!1188795)) b!2863221))

(assert (= (and start!278772 condSetEmpty!25405) setIsEmpty!25405))

(assert (= (and start!278772 (not condSetEmpty!25405)) setNonEmpty!25405))

(assert (= setNonEmpty!25405 b!2863216))

(assert (= (and start!278772 (is-Cons!34137 prefix!919)) b!2863218))

(declare-fun m!3282669 () Bool)

(assert (=> start!278772 m!3282669))

(declare-fun m!3282671 () Bool)

(assert (=> b!2863221 m!3282671))

(declare-fun m!3282673 () Bool)

(assert (=> b!2863220 m!3282673))

(declare-fun m!3282675 () Bool)

(assert (=> b!2863215 m!3282675))

(declare-fun m!3282677 () Bool)

(assert (=> b!2863215 m!3282677))

(declare-fun m!3282679 () Bool)

(assert (=> setNonEmpty!25405 m!3282679))

(declare-fun m!3282681 () Bool)

(assert (=> b!2863219 m!3282681))

(declare-fun m!3282683 () Bool)

(assert (=> b!2863219 m!3282683))

(declare-fun m!3282685 () Bool)

(assert (=> b!2863219 m!3282685))

(declare-fun m!3282687 () Bool)

(assert (=> b!2863219 m!3282687))

(assert (=> b!2863219 m!3282687))

(declare-fun m!3282689 () Bool)

(assert (=> b!2863219 m!3282689))

(push 1)

(assert (not b!2863218))

(assert (not b!2863219))

(assert (not setNonEmpty!25408))

(assert tp_is_empty!15013)

(assert (not b!2863221))

(assert (not start!278772))

(assert (not b!2863215))

(assert (not b!2863216))

(assert (not setNonEmpty!25405))

(assert (not b!2863220))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2863265 () Bool)

(declare-fun e!1812575 () Bool)

(declare-fun tail!4530 (List!34261) List!34261)

(assert (=> b!2863265 (= e!1812575 (isPrefix!2697 (tail!4530 (t!233300 prefix!919)) (tail!4530 lt!1014987)))))

(declare-fun b!2863263 () Bool)

(declare-fun e!1812573 () Bool)

(assert (=> b!2863263 (= e!1812573 e!1812575)))

(declare-fun res!1188830 () Bool)

(assert (=> b!2863263 (=> (not res!1188830) (not e!1812575))))

(assert (=> b!2863263 (= res!1188830 (not (is-Nil!34137 lt!1014987)))))

(declare-fun b!2863264 () Bool)

(declare-fun res!1188828 () Bool)

(assert (=> b!2863264 (=> (not res!1188828) (not e!1812575))))

(declare-fun head!6305 (List!34261) C!17458)

(assert (=> b!2863264 (= res!1188828 (= (head!6305 (t!233300 prefix!919)) (head!6305 lt!1014987)))))

(declare-fun b!2863266 () Bool)

(declare-fun e!1812574 () Bool)

(declare-fun size!26293 (List!34261) Int)

(assert (=> b!2863266 (= e!1812574 (>= (size!26293 lt!1014987) (size!26293 (t!233300 prefix!919))))))

(declare-fun d!827675 () Bool)

(assert (=> d!827675 e!1812574))

(declare-fun res!1188829 () Bool)

(assert (=> d!827675 (=> res!1188829 e!1812574)))

(declare-fun lt!1015002 () Bool)

(assert (=> d!827675 (= res!1188829 (not lt!1015002))))

(assert (=> d!827675 (= lt!1015002 e!1812573)))

(declare-fun res!1188827 () Bool)

(assert (=> d!827675 (=> res!1188827 e!1812573)))

(assert (=> d!827675 (= res!1188827 (is-Nil!34137 (t!233300 prefix!919)))))

(assert (=> d!827675 (= (isPrefix!2697 (t!233300 prefix!919) lt!1014987) lt!1015002)))

(assert (= (and d!827675 (not res!1188827)) b!2863263))

(assert (= (and b!2863263 res!1188830) b!2863264))

(assert (= (and b!2863264 res!1188828) b!2863265))

(assert (= (and d!827675 (not res!1188829)) b!2863266))

(declare-fun m!3282713 () Bool)

(assert (=> b!2863265 m!3282713))

(declare-fun m!3282715 () Bool)

(assert (=> b!2863265 m!3282715))

(assert (=> b!2863265 m!3282713))

(assert (=> b!2863265 m!3282715))

(declare-fun m!3282717 () Bool)

(assert (=> b!2863265 m!3282717))

(declare-fun m!3282719 () Bool)

(assert (=> b!2863264 m!3282719))

(declare-fun m!3282721 () Bool)

(assert (=> b!2863264 m!3282721))

(declare-fun m!3282723 () Bool)

(assert (=> b!2863266 m!3282723))

(declare-fun m!3282725 () Bool)

(assert (=> b!2863266 m!3282725))

(assert (=> b!2863220 d!827675))

(declare-fun d!827677 () Bool)

(declare-fun c!461563 () Bool)

(declare-fun isEmpty!18634 (List!34261) Bool)

(assert (=> d!827677 (= c!461563 (isEmpty!18634 lt!1014987))))

(declare-fun e!1812578 () Bool)

(assert (=> d!827677 (= (matchZipper!436 lt!1014984 lt!1014987) e!1812578)))

(declare-fun b!2863271 () Bool)

(declare-fun nullableZipper!690 ((Set Context!5196)) Bool)

(assert (=> b!2863271 (= e!1812578 (nullableZipper!690 lt!1014984))))

(declare-fun b!2863272 () Bool)

(assert (=> b!2863272 (= e!1812578 (matchZipper!436 (derivationStepZipper!437 lt!1014984 (head!6305 lt!1014987)) (tail!4530 lt!1014987)))))

(assert (= (and d!827677 c!461563) b!2863271))

(assert (= (and d!827677 (not c!461563)) b!2863272))

(declare-fun m!3282727 () Bool)

(assert (=> d!827677 m!3282727))

(declare-fun m!3282729 () Bool)

(assert (=> b!2863271 m!3282729))

(assert (=> b!2863272 m!3282721))

(assert (=> b!2863272 m!3282721))

(declare-fun m!3282731 () Bool)

(assert (=> b!2863272 m!3282731))

(assert (=> b!2863272 m!3282715))

(assert (=> b!2863272 m!3282731))

(assert (=> b!2863272 m!3282715))

(declare-fun m!3282733 () Bool)

(assert (=> b!2863272 m!3282733))

(assert (=> b!2863219 d!827677))

(declare-fun bs!520586 () Bool)

(declare-fun d!827681 () Bool)

(assert (= bs!520586 (and d!827681 b!2863219)))

(declare-fun lambda!105473 () Int)

(assert (=> bs!520586 (= lambda!105473 lambda!105462)))

(assert (=> d!827681 true))

(declare-fun condSetEmpty!25415 () Bool)

(assert (=> d!827681 (= condSetEmpty!25415 (= lt!1014984 (as set.empty (Set Context!5196))))))

(declare-fun setRes!25415 () Bool)

(assert (=> d!827681 setRes!25415))

(declare-fun setIsEmpty!25415 () Bool)

(assert (=> setIsEmpty!25415 setRes!25415))

(declare-fun setNonEmpty!25415 () Bool)

(assert (=> setNonEmpty!25415 (= setRes!25415 true)))

(declare-fun setElem!25415 () Context!5196)

(declare-fun setRest!25415 () (Set Context!5196))

(assert (=> setNonEmpty!25415 (= lt!1014984 (set.union (set.insert setElem!25415 (as set.empty (Set Context!5196))) setRest!25415))))

(assert (= (and d!827681 condSetEmpty!25415) setIsEmpty!25415))

(assert (= (and d!827681 (not condSetEmpty!25415)) setNonEmpty!25415))

(assert (=> d!827681 (Exists!1322 lambda!105473)))

(declare-fun lt!1015005 () Unit!47801)

(declare-fun choose!16861 ((Set Context!5196) List!34261) Unit!47801)

(assert (=> d!827681 (= lt!1015005 (choose!16861 lt!1014984 (t!233300 prefix!919)))))

(assert (=> d!827681 (prefixMatchZipper!320 lt!1014984 (t!233300 prefix!919))))

(assert (=> d!827681 (= (lemmaPrefixMatchThenExistsStringThatMatches!368 lt!1014984 (t!233300 prefix!919)) lt!1015005)))

(declare-fun m!3282737 () Bool)

(assert (=> d!827681 m!3282737))

(declare-fun m!3282739 () Bool)

(assert (=> d!827681 m!3282739))

(declare-fun m!3282741 () Bool)

(assert (=> d!827681 m!3282741))

(assert (=> b!2863219 d!827681))

(declare-fun d!827685 () Bool)

(assert (=> d!827685 true))

(declare-fun lambda!105479 () Int)

(declare-fun flatMap!209 ((Set Context!5196) Int) (Set Context!5196))

(assert (=> d!827685 (= (derivationStepZipper!437 z!960 (h!39557 prefix!919)) (flatMap!209 z!960 lambda!105479))))

(declare-fun bs!520588 () Bool)

(assert (= bs!520588 d!827685))

(declare-fun m!3282747 () Bool)

(assert (=> bs!520588 m!3282747))

(assert (=> b!2863219 d!827685))

(declare-fun d!827689 () Bool)

(declare-fun lt!1015013 () List!34261)

(declare-fun dynLambda!14252 (Int List!34261) Bool)

(assert (=> d!827689 (dynLambda!14252 lambda!105462 lt!1015013)))

(declare-fun choose!16862 (Int) List!34261)

(assert (=> d!827689 (= lt!1015013 (choose!16862 lambda!105462))))

(assert (=> d!827689 (Exists!1322 lambda!105462)))

(assert (=> d!827689 (= (pickWitness!329 lambda!105462) lt!1015013)))

(declare-fun b_lambda!85819 () Bool)

(assert (=> (not b_lambda!85819) (not d!827689)))

(declare-fun bs!520589 () Bool)

(assert (= bs!520589 d!827689))

(declare-fun m!3282751 () Bool)

(assert (=> bs!520589 m!3282751))

(declare-fun m!3282753 () Bool)

(assert (=> bs!520589 m!3282753))

(assert (=> bs!520589 m!3282687))

(assert (=> b!2863219 d!827689))

(declare-fun d!827691 () Bool)

(declare-fun choose!16864 (Int) Bool)

(assert (=> d!827691 (= (Exists!1322 lambda!105462) (choose!16864 lambda!105462))))

(declare-fun bs!520591 () Bool)

(assert (= bs!520591 d!827691))

(declare-fun m!3282759 () Bool)

(assert (=> bs!520591 m!3282759))

(assert (=> b!2863219 d!827691))

(declare-fun d!827695 () Bool)

(declare-fun c!461573 () Bool)

(assert (=> d!827695 (= c!461573 (isEmpty!18634 prefix!919))))

(declare-fun e!1812588 () Bool)

(assert (=> d!827695 (= (prefixMatchZipper!320 z!960 prefix!919) e!1812588)))

(declare-fun b!2863291 () Bool)

(declare-fun lostCauseZipper!548 ((Set Context!5196)) Bool)

(assert (=> b!2863291 (= e!1812588 (not (lostCauseZipper!548 z!960)))))

(declare-fun b!2863292 () Bool)

(assert (=> b!2863292 (= e!1812588 (prefixMatchZipper!320 (derivationStepZipper!437 z!960 (head!6305 prefix!919)) (tail!4530 prefix!919)))))

(assert (= (and d!827695 c!461573) b!2863291))

(assert (= (and d!827695 (not c!461573)) b!2863292))

(declare-fun m!3282775 () Bool)

(assert (=> d!827695 m!3282775))

(declare-fun m!3282777 () Bool)

(assert (=> b!2863291 m!3282777))

(declare-fun m!3282779 () Bool)

(assert (=> b!2863292 m!3282779))

(assert (=> b!2863292 m!3282779))

(declare-fun m!3282781 () Bool)

(assert (=> b!2863292 m!3282781))

(declare-fun m!3282783 () Bool)

(assert (=> b!2863292 m!3282783))

(assert (=> b!2863292 m!3282781))

(assert (=> b!2863292 m!3282783))

(declare-fun m!3282785 () Bool)

(assert (=> b!2863292 m!3282785))

(assert (=> start!278772 d!827695))

(declare-fun d!827701 () Bool)

(declare-fun c!461574 () Bool)

(assert (=> d!827701 (= c!461574 (isEmpty!18634 lt!1014986))))

(declare-fun e!1812589 () Bool)

(assert (=> d!827701 (= (matchZipper!436 z!960 lt!1014986) e!1812589)))

(declare-fun b!2863293 () Bool)

(assert (=> b!2863293 (= e!1812589 (nullableZipper!690 z!960))))

(declare-fun b!2863294 () Bool)

(assert (=> b!2863294 (= e!1812589 (matchZipper!436 (derivationStepZipper!437 z!960 (head!6305 lt!1014986)) (tail!4530 lt!1014986)))))

(assert (= (and d!827701 c!461574) b!2863293))

(assert (= (and d!827701 (not c!461574)) b!2863294))

(declare-fun m!3282787 () Bool)

(assert (=> d!827701 m!3282787))

(declare-fun m!3282789 () Bool)

(assert (=> b!2863293 m!3282789))

(declare-fun m!3282793 () Bool)

(assert (=> b!2863294 m!3282793))

(assert (=> b!2863294 m!3282793))

(declare-fun m!3282795 () Bool)

(assert (=> b!2863294 m!3282795))

(declare-fun m!3282797 () Bool)

(assert (=> b!2863294 m!3282797))

(assert (=> b!2863294 m!3282795))

(assert (=> b!2863294 m!3282797))

(declare-fun m!3282799 () Bool)

(assert (=> b!2863294 m!3282799))

(assert (=> b!2863215 d!827701))

(declare-fun d!827705 () Bool)

(assert (=> d!827705 (= ($colon$colon!604 lt!1014987 (h!39557 prefix!919)) (Cons!34137 (h!39557 prefix!919) lt!1014987))))

(assert (=> b!2863215 d!827705))

(declare-fun d!827707 () Bool)

(declare-fun lambda!105485 () Int)

(declare-fun forall!6975 (List!34260 Int) Bool)

(assert (=> d!827707 (= (inv!46183 setElem!25405) (forall!6975 (exprs!3098 setElem!25405) lambda!105485))))

(declare-fun bs!520594 () Bool)

(assert (= bs!520594 d!827707))

(declare-fun m!3282801 () Bool)

(assert (=> bs!520594 m!3282801))

(assert (=> setNonEmpty!25405 d!827707))

(declare-fun b!2863309 () Bool)

(declare-fun e!1812601 () Bool)

(assert (=> b!2863309 (= e!1812601 (isPrefix!2697 (tail!4530 prefix!919) (tail!4530 lt!1014986)))))

(declare-fun b!2863307 () Bool)

(declare-fun e!1812599 () Bool)

(assert (=> b!2863307 (= e!1812599 e!1812601)))

(declare-fun res!1188850 () Bool)

(assert (=> b!2863307 (=> (not res!1188850) (not e!1812601))))

(assert (=> b!2863307 (= res!1188850 (not (is-Nil!34137 lt!1014986)))))

(declare-fun b!2863308 () Bool)

(declare-fun res!1188848 () Bool)

(assert (=> b!2863308 (=> (not res!1188848) (not e!1812601))))

(assert (=> b!2863308 (= res!1188848 (= (head!6305 prefix!919) (head!6305 lt!1014986)))))

(declare-fun b!2863310 () Bool)

(declare-fun e!1812600 () Bool)

(assert (=> b!2863310 (= e!1812600 (>= (size!26293 lt!1014986) (size!26293 prefix!919)))))

(declare-fun d!827709 () Bool)

(assert (=> d!827709 e!1812600))

(declare-fun res!1188849 () Bool)

(assert (=> d!827709 (=> res!1188849 e!1812600)))

(declare-fun lt!1015018 () Bool)

(assert (=> d!827709 (= res!1188849 (not lt!1015018))))

(assert (=> d!827709 (= lt!1015018 e!1812599)))

(declare-fun res!1188847 () Bool)

(assert (=> d!827709 (=> res!1188847 e!1812599)))

(assert (=> d!827709 (= res!1188847 (is-Nil!34137 prefix!919))))

(assert (=> d!827709 (= (isPrefix!2697 prefix!919 lt!1014986) lt!1015018)))

(assert (= (and d!827709 (not res!1188847)) b!2863307))

(assert (= (and b!2863307 res!1188850) b!2863308))

(assert (= (and b!2863308 res!1188848) b!2863309))

(assert (= (and d!827709 (not res!1188849)) b!2863310))

(assert (=> b!2863309 m!3282783))

(assert (=> b!2863309 m!3282797))

(assert (=> b!2863309 m!3282783))

(assert (=> b!2863309 m!3282797))

(declare-fun m!3282813 () Bool)

(assert (=> b!2863309 m!3282813))

(assert (=> b!2863308 m!3282779))

(assert (=> b!2863308 m!3282793))

(declare-fun m!3282815 () Bool)

(assert (=> b!2863310 m!3282815))

(declare-fun m!3282817 () Bool)

(assert (=> b!2863310 m!3282817))

(assert (=> b!2863221 d!827709))

(declare-fun b!2863315 () Bool)

(declare-fun e!1812604 () Bool)

(declare-fun tp!921969 () Bool)

(declare-fun tp!921970 () Bool)

(assert (=> b!2863315 (= e!1812604 (and tp!921969 tp!921970))))

(assert (=> b!2863216 (= tp!921954 e!1812604)))

(assert (= (and b!2863216 (is-Cons!34136 (exprs!3098 setElem!25405))) b!2863315))

(declare-fun condSetEmpty!25417 () Bool)

(assert (=> setNonEmpty!25408 (= condSetEmpty!25417 (= setRest!25408 (as set.empty (Set Context!5196))))))

(declare-fun setRes!25417 () Bool)

(assert (=> setNonEmpty!25408 setRes!25417))

(declare-fun setIsEmpty!25417 () Bool)

(assert (=> setIsEmpty!25417 setRes!25417))

(declare-fun setNonEmpty!25417 () Bool)

(assert (=> setNonEmpty!25417 (= setRes!25417 true)))

(declare-fun setElem!25417 () Context!5196)

(declare-fun setRest!25417 () (Set Context!5196))

(assert (=> setNonEmpty!25417 (= setRest!25408 (set.union (set.insert setElem!25417 (as set.empty (Set Context!5196))) setRest!25417))))

(assert (= (and setNonEmpty!25408 condSetEmpty!25417) setIsEmpty!25417))

(assert (= (and setNonEmpty!25408 (not condSetEmpty!25417)) setNonEmpty!25417))

(declare-fun condSetEmpty!25420 () Bool)

(assert (=> setNonEmpty!25405 (= condSetEmpty!25420 (= setRest!25405 (as set.empty (Set Context!5196))))))

(declare-fun setRes!25420 () Bool)

(assert (=> setNonEmpty!25405 (= tp!921953 setRes!25420)))

(declare-fun setIsEmpty!25420 () Bool)

(assert (=> setIsEmpty!25420 setRes!25420))

(declare-fun e!1812607 () Bool)

(declare-fun setNonEmpty!25420 () Bool)

(declare-fun tp!921976 () Bool)

(declare-fun setElem!25420 () Context!5196)

(assert (=> setNonEmpty!25420 (= setRes!25420 (and tp!921976 (inv!46183 setElem!25420) e!1812607))))

(declare-fun setRest!25420 () (Set Context!5196))

(assert (=> setNonEmpty!25420 (= setRest!25405 (set.union (set.insert setElem!25420 (as set.empty (Set Context!5196))) setRest!25420))))

(declare-fun b!2863320 () Bool)

(declare-fun tp!921975 () Bool)

(assert (=> b!2863320 (= e!1812607 tp!921975)))

(assert (= (and setNonEmpty!25405 condSetEmpty!25420) setIsEmpty!25420))

(assert (= (and setNonEmpty!25405 (not condSetEmpty!25420)) setNonEmpty!25420))

(assert (= setNonEmpty!25420 b!2863320))

(declare-fun m!3282819 () Bool)

(assert (=> setNonEmpty!25420 m!3282819))

(declare-fun b!2863325 () Bool)

(declare-fun e!1812610 () Bool)

(declare-fun tp!921979 () Bool)

(assert (=> b!2863325 (= e!1812610 (and tp_is_empty!15013 tp!921979))))

(assert (=> b!2863218 (= tp!921955 e!1812610)))

(assert (= (and b!2863218 (is-Cons!34137 (t!233300 prefix!919))) b!2863325))

(declare-fun b_lambda!85823 () Bool)

(assert (= b_lambda!85819 (or b!2863219 b_lambda!85823)))

(declare-fun bs!520595 () Bool)

(declare-fun d!827713 () Bool)

(assert (= bs!520595 (and d!827713 b!2863219)))

(declare-fun res!1188851 () Bool)

(declare-fun e!1812611 () Bool)

(assert (=> bs!520595 (=> (not res!1188851) (not e!1812611))))

(assert (=> bs!520595 (= res!1188851 (matchZipper!436 lt!1014984 lt!1015013))))

(assert (=> bs!520595 (= (dynLambda!14252 lambda!105462 lt!1015013) e!1812611)))

(declare-fun b!2863326 () Bool)

(assert (=> b!2863326 (= e!1812611 (isPrefix!2697 (t!233300 prefix!919) lt!1015013))))

(assert (= (and bs!520595 res!1188851) b!2863326))

(declare-fun m!3282821 () Bool)

(assert (=> bs!520595 m!3282821))

(declare-fun m!3282823 () Bool)

(assert (=> b!2863326 m!3282823))

(assert (=> d!827689 d!827713))

(push 1)

(assert (not d!827701))

(assert (not b!2863264))

(assert (not setNonEmpty!25415))

(assert (not d!827695))

(assert (not b!2863272))

(assert (not d!827691))

(assert (not b!2863271))

(assert (not b!2863309))

(assert (not b!2863326))

(assert (not d!827689))

(assert (not d!827685))

(assert (not b!2863320))

(assert (not b!2863315))

(assert (not setNonEmpty!25417))

(assert (not b!2863325))

(assert (not b!2863310))

(assert (not b_lambda!85823))

(assert (not d!827681))

(assert (not b!2863291))

(assert (not bs!520595))

(assert (not setNonEmpty!25420))

(assert (not d!827677))

(assert (not b!2863294))

(assert tp_is_empty!15013)

(assert (not b!2863266))

(assert (not b!2863308))

(assert (not b!2863293))

(assert (not d!827707))

(assert (not b!2863265))

(assert (not b!2863292))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!827723 () Bool)

(declare-fun lt!1015022 () Int)

(assert (=> d!827723 (>= lt!1015022 0)))

(declare-fun e!1812631 () Int)

(assert (=> d!827723 (= lt!1015022 e!1812631)))

(declare-fun c!461581 () Bool)

(assert (=> d!827723 (= c!461581 (is-Nil!34137 lt!1014987))))

(assert (=> d!827723 (= (size!26293 lt!1014987) lt!1015022)))

(declare-fun b!2863359 () Bool)

(assert (=> b!2863359 (= e!1812631 0)))

(declare-fun b!2863360 () Bool)

(assert (=> b!2863360 (= e!1812631 (+ 1 (size!26293 (t!233300 lt!1014987))))))

(assert (= (and d!827723 c!461581) b!2863359))

(assert (= (and d!827723 (not c!461581)) b!2863360))

(declare-fun m!3282861 () Bool)

(assert (=> b!2863360 m!3282861))

(assert (=> b!2863266 d!827723))

(declare-fun d!827725 () Bool)

(declare-fun lt!1015023 () Int)

(assert (=> d!827725 (>= lt!1015023 0)))

(declare-fun e!1812632 () Int)

(assert (=> d!827725 (= lt!1015023 e!1812632)))

(declare-fun c!461582 () Bool)

(assert (=> d!827725 (= c!461582 (is-Nil!34137 (t!233300 prefix!919)))))

(assert (=> d!827725 (= (size!26293 (t!233300 prefix!919)) lt!1015023)))

(declare-fun b!2863361 () Bool)

(assert (=> b!2863361 (= e!1812632 0)))

(declare-fun b!2863362 () Bool)

(assert (=> b!2863362 (= e!1812632 (+ 1 (size!26293 (t!233300 (t!233300 prefix!919)))))))

(assert (= (and d!827725 c!461582) b!2863361))

(assert (= (and d!827725 (not c!461582)) b!2863362))

(declare-fun m!3282863 () Bool)

(assert (=> b!2863362 m!3282863))

(assert (=> b!2863266 d!827725))

(declare-fun d!827727 () Bool)

(declare-fun res!1188859 () List!34261)

(assert (=> d!827727 (dynLambda!14252 lambda!105462 res!1188859)))

(declare-fun e!1812635 () Bool)

(assert (=> d!827727 e!1812635))

(assert (=> d!827727 (= (choose!16862 lambda!105462) res!1188859)))

(declare-fun b!2863365 () Bool)

(declare-fun tp!921997 () Bool)

(assert (=> b!2863365 (= e!1812635 (and tp_is_empty!15013 tp!921997))))

(assert (= (and d!827727 (is-Cons!34137 res!1188859)) b!2863365))

(declare-fun b_lambda!85827 () Bool)

(assert (=> (not b_lambda!85827) (not d!827727)))

(declare-fun m!3282865 () Bool)

(assert (=> d!827727 m!3282865))

(assert (=> d!827689 d!827727))

(assert (=> d!827689 d!827691))

(declare-fun d!827729 () Bool)

(declare-fun lt!1015024 () Int)

(assert (=> d!827729 (>= lt!1015024 0)))

(declare-fun e!1812636 () Int)

(assert (=> d!827729 (= lt!1015024 e!1812636)))

(declare-fun c!461583 () Bool)

(assert (=> d!827729 (= c!461583 (is-Nil!34137 lt!1014986))))

(assert (=> d!827729 (= (size!26293 lt!1014986) lt!1015024)))

(declare-fun b!2863366 () Bool)

(assert (=> b!2863366 (= e!1812636 0)))

(declare-fun b!2863367 () Bool)

(assert (=> b!2863367 (= e!1812636 (+ 1 (size!26293 (t!233300 lt!1014986))))))

(assert (= (and d!827729 c!461583) b!2863366))

(assert (= (and d!827729 (not c!461583)) b!2863367))

(declare-fun m!3282867 () Bool)

(assert (=> b!2863367 m!3282867))

(assert (=> b!2863310 d!827729))

(declare-fun d!827731 () Bool)

(declare-fun lt!1015025 () Int)

(assert (=> d!827731 (>= lt!1015025 0)))

(declare-fun e!1812637 () Int)

(assert (=> d!827731 (= lt!1015025 e!1812637)))

(declare-fun c!461584 () Bool)

(assert (=> d!827731 (= c!461584 (is-Nil!34137 prefix!919))))

(assert (=> d!827731 (= (size!26293 prefix!919) lt!1015025)))

(declare-fun b!2863368 () Bool)

(assert (=> b!2863368 (= e!1812637 0)))

(declare-fun b!2863369 () Bool)

(assert (=> b!2863369 (= e!1812637 (+ 1 (size!26293 (t!233300 prefix!919))))))

(assert (= (and d!827731 c!461584) b!2863368))

(assert (= (and d!827731 (not c!461584)) b!2863369))

(assert (=> b!2863369 m!3282725))

(assert (=> b!2863310 d!827731))

(declare-fun b!2863372 () Bool)

(declare-fun e!1812640 () Bool)

(assert (=> b!2863372 (= e!1812640 (isPrefix!2697 (tail!4530 (tail!4530 (t!233300 prefix!919))) (tail!4530 (tail!4530 lt!1014987))))))

(declare-fun b!2863370 () Bool)

(declare-fun e!1812638 () Bool)

(assert (=> b!2863370 (= e!1812638 e!1812640)))

(declare-fun res!1188863 () Bool)

(assert (=> b!2863370 (=> (not res!1188863) (not e!1812640))))

(assert (=> b!2863370 (= res!1188863 (not (is-Nil!34137 (tail!4530 lt!1014987))))))

(declare-fun b!2863371 () Bool)

(declare-fun res!1188861 () Bool)

(assert (=> b!2863371 (=> (not res!1188861) (not e!1812640))))

(assert (=> b!2863371 (= res!1188861 (= (head!6305 (tail!4530 (t!233300 prefix!919))) (head!6305 (tail!4530 lt!1014987))))))

(declare-fun b!2863373 () Bool)

(declare-fun e!1812639 () Bool)

(assert (=> b!2863373 (= e!1812639 (>= (size!26293 (tail!4530 lt!1014987)) (size!26293 (tail!4530 (t!233300 prefix!919)))))))

(declare-fun d!827733 () Bool)

(assert (=> d!827733 e!1812639))

(declare-fun res!1188862 () Bool)

(assert (=> d!827733 (=> res!1188862 e!1812639)))

(declare-fun lt!1015026 () Bool)

(assert (=> d!827733 (= res!1188862 (not lt!1015026))))

(assert (=> d!827733 (= lt!1015026 e!1812638)))

(declare-fun res!1188860 () Bool)

(assert (=> d!827733 (=> res!1188860 e!1812638)))

(assert (=> d!827733 (= res!1188860 (is-Nil!34137 (tail!4530 (t!233300 prefix!919))))))

(assert (=> d!827733 (= (isPrefix!2697 (tail!4530 (t!233300 prefix!919)) (tail!4530 lt!1014987)) lt!1015026)))

(assert (= (and d!827733 (not res!1188860)) b!2863370))

(assert (= (and b!2863370 res!1188863) b!2863371))

(assert (= (and b!2863371 res!1188861) b!2863372))

(assert (= (and d!827733 (not res!1188862)) b!2863373))

(assert (=> b!2863372 m!3282713))

(declare-fun m!3282869 () Bool)

(assert (=> b!2863372 m!3282869))

(assert (=> b!2863372 m!3282715))

(declare-fun m!3282871 () Bool)

(assert (=> b!2863372 m!3282871))

(assert (=> b!2863372 m!3282869))

(assert (=> b!2863372 m!3282871))

(declare-fun m!3282873 () Bool)

(assert (=> b!2863372 m!3282873))

(assert (=> b!2863371 m!3282713))

(declare-fun m!3282875 () Bool)

(assert (=> b!2863371 m!3282875))

(assert (=> b!2863371 m!3282715))

(declare-fun m!3282877 () Bool)

(assert (=> b!2863371 m!3282877))

(assert (=> b!2863373 m!3282715))

(declare-fun m!3282879 () Bool)

(assert (=> b!2863373 m!3282879))

(assert (=> b!2863373 m!3282713))

(declare-fun m!3282881 () Bool)

(assert (=> b!2863373 m!3282881))

(assert (=> b!2863265 d!827733))

(declare-fun d!827735 () Bool)

(assert (=> d!827735 (= (tail!4530 (t!233300 prefix!919)) (t!233300 (t!233300 prefix!919)))))

(assert (=> b!2863265 d!827735))

(declare-fun d!827737 () Bool)

(assert (=> d!827737 (= (tail!4530 lt!1014987) (t!233300 lt!1014987))))

(assert (=> b!2863265 d!827737))

(declare-fun b!2863376 () Bool)

(declare-fun e!1812643 () Bool)

(assert (=> b!2863376 (= e!1812643 (isPrefix!2697 (tail!4530 (tail!4530 prefix!919)) (tail!4530 (tail!4530 lt!1014986))))))

(declare-fun b!2863374 () Bool)

(declare-fun e!1812641 () Bool)

(assert (=> b!2863374 (= e!1812641 e!1812643)))

(declare-fun res!1188867 () Bool)

(assert (=> b!2863374 (=> (not res!1188867) (not e!1812643))))

(assert (=> b!2863374 (= res!1188867 (not (is-Nil!34137 (tail!4530 lt!1014986))))))

(declare-fun b!2863375 () Bool)

(declare-fun res!1188865 () Bool)

(assert (=> b!2863375 (=> (not res!1188865) (not e!1812643))))

(assert (=> b!2863375 (= res!1188865 (= (head!6305 (tail!4530 prefix!919)) (head!6305 (tail!4530 lt!1014986))))))

(declare-fun b!2863377 () Bool)

(declare-fun e!1812642 () Bool)

(assert (=> b!2863377 (= e!1812642 (>= (size!26293 (tail!4530 lt!1014986)) (size!26293 (tail!4530 prefix!919))))))

(declare-fun d!827739 () Bool)

(assert (=> d!827739 e!1812642))

(declare-fun res!1188866 () Bool)

(assert (=> d!827739 (=> res!1188866 e!1812642)))

(declare-fun lt!1015027 () Bool)

(assert (=> d!827739 (= res!1188866 (not lt!1015027))))

(assert (=> d!827739 (= lt!1015027 e!1812641)))

(declare-fun res!1188864 () Bool)

(assert (=> d!827739 (=> res!1188864 e!1812641)))

(assert (=> d!827739 (= res!1188864 (is-Nil!34137 (tail!4530 prefix!919)))))

(assert (=> d!827739 (= (isPrefix!2697 (tail!4530 prefix!919) (tail!4530 lt!1014986)) lt!1015027)))

(assert (= (and d!827739 (not res!1188864)) b!2863374))

(assert (= (and b!2863374 res!1188867) b!2863375))

(assert (= (and b!2863375 res!1188865) b!2863376))

(assert (= (and d!827739 (not res!1188866)) b!2863377))

(assert (=> b!2863376 m!3282783))

(declare-fun m!3282883 () Bool)

(assert (=> b!2863376 m!3282883))

(assert (=> b!2863376 m!3282797))

(declare-fun m!3282885 () Bool)

(assert (=> b!2863376 m!3282885))

(assert (=> b!2863376 m!3282883))

(assert (=> b!2863376 m!3282885))

(declare-fun m!3282887 () Bool)

(assert (=> b!2863376 m!3282887))

(assert (=> b!2863375 m!3282783))

(declare-fun m!3282889 () Bool)

(assert (=> b!2863375 m!3282889))

(assert (=> b!2863375 m!3282797))

(declare-fun m!3282891 () Bool)

(assert (=> b!2863375 m!3282891))

(assert (=> b!2863377 m!3282797))

(declare-fun m!3282893 () Bool)

(assert (=> b!2863377 m!3282893))

(assert (=> b!2863377 m!3282783))

(declare-fun m!3282895 () Bool)

(assert (=> b!2863377 m!3282895))

(assert (=> b!2863309 d!827739))

(declare-fun d!827741 () Bool)

(assert (=> d!827741 (= (tail!4530 prefix!919) (t!233300 prefix!919))))

(assert (=> b!2863309 d!827741))

(declare-fun d!827743 () Bool)

(assert (=> d!827743 (= (tail!4530 lt!1014986) (t!233300 lt!1014986))))

(assert (=> b!2863309 d!827743))

(declare-fun d!827745 () Bool)

(declare-fun choose!16867 ((Set Context!5196) Int) (Set Context!5196))

(assert (=> d!827745 (= (flatMap!209 z!960 lambda!105479) (choose!16867 z!960 lambda!105479))))

(declare-fun bs!520597 () Bool)

(assert (= bs!520597 d!827745))

(declare-fun m!3282897 () Bool)

(assert (=> bs!520597 m!3282897))

(assert (=> d!827685 d!827745))

(declare-fun d!827747 () Bool)

(declare-fun lambda!105488 () Int)

(declare-fun exists!1046 ((Set Context!5196) Int) Bool)

(assert (=> d!827747 (= (nullableZipper!690 z!960) (exists!1046 z!960 lambda!105488))))

(declare-fun bs!520598 () Bool)

(assert (= bs!520598 d!827747))

(declare-fun m!3282899 () Bool)

(assert (=> bs!520598 m!3282899))

(assert (=> b!2863293 d!827747))

(declare-fun d!827749 () Bool)

(declare-fun c!461587 () Bool)

(assert (=> d!827749 (= c!461587 (isEmpty!18634 (tail!4530 prefix!919)))))

(declare-fun e!1812644 () Bool)

(assert (=> d!827749 (= (prefixMatchZipper!320 (derivationStepZipper!437 z!960 (head!6305 prefix!919)) (tail!4530 prefix!919)) e!1812644)))

(declare-fun b!2863378 () Bool)

(assert (=> b!2863378 (= e!1812644 (not (lostCauseZipper!548 (derivationStepZipper!437 z!960 (head!6305 prefix!919)))))))

(declare-fun b!2863379 () Bool)

(assert (=> b!2863379 (= e!1812644 (prefixMatchZipper!320 (derivationStepZipper!437 (derivationStepZipper!437 z!960 (head!6305 prefix!919)) (head!6305 (tail!4530 prefix!919))) (tail!4530 (tail!4530 prefix!919))))))

(assert (= (and d!827749 c!461587) b!2863378))

(assert (= (and d!827749 (not c!461587)) b!2863379))

(assert (=> d!827749 m!3282783))

(declare-fun m!3282901 () Bool)

(assert (=> d!827749 m!3282901))

(assert (=> b!2863378 m!3282781))

(declare-fun m!3282903 () Bool)

(assert (=> b!2863378 m!3282903))

(assert (=> b!2863379 m!3282783))

(assert (=> b!2863379 m!3282889))

(assert (=> b!2863379 m!3282781))

(assert (=> b!2863379 m!3282889))

(declare-fun m!3282905 () Bool)

(assert (=> b!2863379 m!3282905))

(assert (=> b!2863379 m!3282783))

(assert (=> b!2863379 m!3282883))

(assert (=> b!2863379 m!3282905))

(assert (=> b!2863379 m!3282883))

(declare-fun m!3282907 () Bool)

(assert (=> b!2863379 m!3282907))

(assert (=> b!2863292 d!827749))

(declare-fun bs!520599 () Bool)

(declare-fun d!827751 () Bool)

(assert (= bs!520599 (and d!827751 d!827685)))

(declare-fun lambda!105489 () Int)

(assert (=> bs!520599 (= (= (head!6305 prefix!919) (h!39557 prefix!919)) (= lambda!105489 lambda!105479))))

(assert (=> d!827751 true))

(assert (=> d!827751 (= (derivationStepZipper!437 z!960 (head!6305 prefix!919)) (flatMap!209 z!960 lambda!105489))))

(declare-fun bs!520600 () Bool)

(assert (= bs!520600 d!827751))

(declare-fun m!3282909 () Bool)

(assert (=> bs!520600 m!3282909))

(assert (=> b!2863292 d!827751))

(declare-fun d!827753 () Bool)

(assert (=> d!827753 (= (head!6305 prefix!919) (h!39557 prefix!919))))

(assert (=> b!2863292 d!827753))

(assert (=> b!2863292 d!827741))

(declare-fun bs!520601 () Bool)

(declare-fun d!827755 () Bool)

(assert (= bs!520601 (and d!827755 d!827747)))

(declare-fun lambda!105502 () Int)

(assert (=> bs!520601 (not (= lambda!105502 lambda!105488))))

(declare-fun bs!520602 () Bool)

(declare-fun b!2863384 () Bool)

(assert (= bs!520602 (and b!2863384 d!827747)))

(declare-fun lambda!105503 () Int)

(assert (=> bs!520602 (not (= lambda!105503 lambda!105488))))

(declare-fun bs!520603 () Bool)

(assert (= bs!520603 (and b!2863384 d!827755)))

(assert (=> bs!520603 (not (= lambda!105503 lambda!105502))))

(declare-fun bs!520604 () Bool)

(declare-fun b!2863385 () Bool)

(assert (= bs!520604 (and b!2863385 d!827747)))

(declare-fun lambda!105504 () Int)

(assert (=> bs!520604 (not (= lambda!105504 lambda!105488))))

(declare-fun bs!520605 () Bool)

(assert (= bs!520605 (and b!2863385 d!827755)))

(assert (=> bs!520605 (not (= lambda!105504 lambda!105502))))

(declare-fun bs!520606 () Bool)

(assert (= bs!520606 (and b!2863385 b!2863384)))

(assert (=> bs!520606 (= lambda!105504 lambda!105503)))

(declare-fun c!461598 () Bool)

(declare-fun bm!184739 () Bool)

(declare-datatypes ((List!34264 0))(
  ( (Nil!34140) (Cons!34140 (h!39560 Context!5196) (t!233305 List!34264)) )
))
(declare-fun lt!1015049 () List!34264)

(declare-fun call!184743 () Bool)

(declare-fun lt!1015051 () List!34264)

(declare-fun exists!1047 (List!34264 Int) Bool)

(assert (=> bm!184739 (= call!184743 (exists!1047 (ite c!461598 lt!1015051 lt!1015049) (ite c!461598 lambda!105503 lambda!105504)))))

(declare-fun e!1812651 () Unit!47801)

(declare-fun Unit!47805 () Unit!47801)

(assert (=> b!2863385 (= e!1812651 Unit!47805)))

(declare-fun call!184744 () List!34264)

(assert (=> b!2863385 (= lt!1015049 call!184744)))

(declare-fun lt!1015044 () Unit!47801)

(declare-fun lemmaForallThenNotExists!123 (List!34264 Int) Unit!47801)

(assert (=> b!2863385 (= lt!1015044 (lemmaForallThenNotExists!123 lt!1015049 lambda!105502))))

(assert (=> b!2863385 (not call!184743)))

(declare-fun lt!1015047 () Unit!47801)

(assert (=> b!2863385 (= lt!1015047 lt!1015044)))

(declare-fun lt!1015050 () Bool)

(declare-datatypes ((Option!6328 0))(
  ( (None!6327) (Some!6327 (v!34449 List!34261)) )
))
(declare-fun isEmpty!18636 (Option!6328) Bool)

(declare-fun getLanguageWitness!264 ((Set Context!5196)) Option!6328)

(assert (=> d!827755 (= lt!1015050 (isEmpty!18636 (getLanguageWitness!264 z!960)))))

(declare-fun forall!6976 ((Set Context!5196) Int) Bool)

(assert (=> d!827755 (= lt!1015050 (forall!6976 z!960 lambda!105502))))

(declare-fun lt!1015048 () Unit!47801)

(assert (=> d!827755 (= lt!1015048 e!1812651)))

(assert (=> d!827755 (= c!461598 (not (forall!6976 z!960 lambda!105502)))))

(assert (=> d!827755 (= (lostCauseZipper!548 z!960) lt!1015050)))

(declare-fun bm!184738 () Bool)

(declare-fun toList!1982 ((Set Context!5196)) List!34264)

(assert (=> bm!184738 (= call!184744 (toList!1982 z!960))))

(declare-fun Unit!47806 () Unit!47801)

(assert (=> b!2863384 (= e!1812651 Unit!47806)))

(assert (=> b!2863384 (= lt!1015051 call!184744)))

(declare-fun lt!1015046 () Unit!47801)

(declare-fun lemmaNotForallThenExists!123 (List!34264 Int) Unit!47801)

(assert (=> b!2863384 (= lt!1015046 (lemmaNotForallThenExists!123 lt!1015051 lambda!105502))))

(assert (=> b!2863384 call!184743))

(declare-fun lt!1015045 () Unit!47801)

(assert (=> b!2863384 (= lt!1015045 lt!1015046)))

(assert (= (and d!827755 c!461598) b!2863384))

(assert (= (and d!827755 (not c!461598)) b!2863385))

(assert (= (or b!2863384 b!2863385) bm!184738))

(assert (= (or b!2863384 b!2863385) bm!184739))

(declare-fun m!3282911 () Bool)

(assert (=> b!2863384 m!3282911))

(declare-fun m!3282913 () Bool)

(assert (=> bm!184738 m!3282913))

(declare-fun m!3282915 () Bool)

(assert (=> bm!184739 m!3282915))

(declare-fun m!3282917 () Bool)

(assert (=> b!2863385 m!3282917))

(declare-fun m!3282919 () Bool)

(assert (=> d!827755 m!3282919))

(assert (=> d!827755 m!3282919))

(declare-fun m!3282921 () Bool)

(assert (=> d!827755 m!3282921))

(declare-fun m!3282923 () Bool)

(assert (=> d!827755 m!3282923))

(assert (=> d!827755 m!3282923))

(assert (=> b!2863291 d!827755))

(declare-fun b!2863388 () Bool)

(declare-fun e!1812654 () Bool)

(assert (=> b!2863388 (= e!1812654 (isPrefix!2697 (tail!4530 (t!233300 prefix!919)) (tail!4530 lt!1015013)))))

(declare-fun b!2863386 () Bool)

(declare-fun e!1812652 () Bool)

(assert (=> b!2863386 (= e!1812652 e!1812654)))

(declare-fun res!1188871 () Bool)

(assert (=> b!2863386 (=> (not res!1188871) (not e!1812654))))

(assert (=> b!2863386 (= res!1188871 (not (is-Nil!34137 lt!1015013)))))

(declare-fun b!2863387 () Bool)

(declare-fun res!1188869 () Bool)

(assert (=> b!2863387 (=> (not res!1188869) (not e!1812654))))

(assert (=> b!2863387 (= res!1188869 (= (head!6305 (t!233300 prefix!919)) (head!6305 lt!1015013)))))

(declare-fun b!2863389 () Bool)

(declare-fun e!1812653 () Bool)

(assert (=> b!2863389 (= e!1812653 (>= (size!26293 lt!1015013) (size!26293 (t!233300 prefix!919))))))

(declare-fun d!827757 () Bool)

(assert (=> d!827757 e!1812653))

(declare-fun res!1188870 () Bool)

(assert (=> d!827757 (=> res!1188870 e!1812653)))

(declare-fun lt!1015052 () Bool)

(assert (=> d!827757 (= res!1188870 (not lt!1015052))))

(assert (=> d!827757 (= lt!1015052 e!1812652)))

(declare-fun res!1188868 () Bool)

(assert (=> d!827757 (=> res!1188868 e!1812652)))

(assert (=> d!827757 (= res!1188868 (is-Nil!34137 (t!233300 prefix!919)))))

(assert (=> d!827757 (= (isPrefix!2697 (t!233300 prefix!919) lt!1015013) lt!1015052)))

(assert (= (and d!827757 (not res!1188868)) b!2863386))

(assert (= (and b!2863386 res!1188871) b!2863387))

(assert (= (and b!2863387 res!1188869) b!2863388))

(assert (= (and d!827757 (not res!1188870)) b!2863389))

(assert (=> b!2863388 m!3282713))

(declare-fun m!3282925 () Bool)

(assert (=> b!2863388 m!3282925))

(assert (=> b!2863388 m!3282713))

(assert (=> b!2863388 m!3282925))

(declare-fun m!3282927 () Bool)

(assert (=> b!2863388 m!3282927))

(assert (=> b!2863387 m!3282719))

(declare-fun m!3282929 () Bool)

(assert (=> b!2863387 m!3282929))

(declare-fun m!3282931 () Bool)

(assert (=> b!2863389 m!3282931))

(assert (=> b!2863389 m!3282725))

(assert (=> b!2863326 d!827757))

(declare-fun d!827759 () Bool)

(assert (=> d!827759 (= (head!6305 (t!233300 prefix!919)) (h!39557 (t!233300 prefix!919)))))

(assert (=> b!2863264 d!827759))

(declare-fun d!827761 () Bool)

(assert (=> d!827761 (= (head!6305 lt!1014987) (h!39557 lt!1014987))))

(assert (=> b!2863264 d!827761))

(declare-fun d!827763 () Bool)

(assert (=> d!827763 (= (isEmpty!18634 lt!1014986) (is-Nil!34137 lt!1014986))))

(assert (=> d!827701 d!827763))

(assert (=> b!2863308 d!827753))

(declare-fun d!827765 () Bool)

(assert (=> d!827765 (= (head!6305 lt!1014986) (h!39557 lt!1014986))))

(assert (=> b!2863308 d!827765))

(declare-fun d!827767 () Bool)

(assert (=> d!827767 (= (Exists!1322 lambda!105473) (choose!16864 lambda!105473))))

(declare-fun bs!520607 () Bool)

(assert (= bs!520607 d!827767))

(declare-fun m!3282933 () Bool)

(assert (=> bs!520607 m!3282933))

(assert (=> d!827681 d!827767))

(declare-fun bs!520608 () Bool)

(declare-fun d!827769 () Bool)

(assert (= bs!520608 (and d!827769 b!2863219)))

(declare-fun lambda!105507 () Int)

(assert (=> bs!520608 (= lambda!105507 lambda!105462)))

(declare-fun bs!520609 () Bool)

(assert (= bs!520609 (and d!827769 d!827681)))

(assert (=> bs!520609 (= lambda!105507 lambda!105473)))

(assert (=> d!827769 true))

(declare-fun condSetEmpty!25425 () Bool)

(assert (=> d!827769 (= condSetEmpty!25425 (= lt!1014984 (as set.empty (Set Context!5196))))))

(declare-fun setRes!25425 () Bool)

(assert (=> d!827769 setRes!25425))

(declare-fun setIsEmpty!25425 () Bool)

(assert (=> setIsEmpty!25425 setRes!25425))

(declare-fun setNonEmpty!25425 () Bool)

(assert (=> setNonEmpty!25425 (= setRes!25425 true)))

(declare-fun setElem!25425 () Context!5196)

(declare-fun setRest!25425 () (Set Context!5196))

(assert (=> setNonEmpty!25425 (= lt!1014984 (set.union (set.insert setElem!25425 (as set.empty (Set Context!5196))) setRest!25425))))

(assert (= (and d!827769 condSetEmpty!25425) setIsEmpty!25425))

(assert (= (and d!827769 (not condSetEmpty!25425)) setNonEmpty!25425))

(assert (=> d!827769 (Exists!1322 lambda!105507)))

(assert (=> d!827769 true))

(declare-fun _$35!567 () Unit!47801)

(assert (=> d!827769 (= (choose!16861 lt!1014984 (t!233300 prefix!919)) _$35!567)))

(declare-fun m!3282935 () Bool)

(assert (=> d!827769 m!3282935))

(assert (=> d!827681 d!827769))

(declare-fun d!827771 () Bool)

(declare-fun c!461599 () Bool)

(assert (=> d!827771 (= c!461599 (isEmpty!18634 (t!233300 prefix!919)))))

(declare-fun e!1812657 () Bool)

(assert (=> d!827771 (= (prefixMatchZipper!320 lt!1014984 (t!233300 prefix!919)) e!1812657)))

(declare-fun b!2863392 () Bool)

(assert (=> b!2863392 (= e!1812657 (not (lostCauseZipper!548 lt!1014984)))))

(declare-fun b!2863393 () Bool)

(assert (=> b!2863393 (= e!1812657 (prefixMatchZipper!320 (derivationStepZipper!437 lt!1014984 (head!6305 (t!233300 prefix!919))) (tail!4530 (t!233300 prefix!919))))))

(assert (= (and d!827771 c!461599) b!2863392))

(assert (= (and d!827771 (not c!461599)) b!2863393))

(declare-fun m!3282937 () Bool)

(assert (=> d!827771 m!3282937))

(declare-fun m!3282939 () Bool)

(assert (=> b!2863392 m!3282939))

(assert (=> b!2863393 m!3282719))

(assert (=> b!2863393 m!3282719))

(declare-fun m!3282941 () Bool)

(assert (=> b!2863393 m!3282941))

(assert (=> b!2863393 m!3282713))

(assert (=> b!2863393 m!3282941))

(assert (=> b!2863393 m!3282713))

(declare-fun m!3282943 () Bool)

(assert (=> b!2863393 m!3282943))

(assert (=> d!827681 d!827771))

(declare-fun d!827773 () Bool)

(assert (=> d!827773 (= (isEmpty!18634 lt!1014987) (is-Nil!34137 lt!1014987))))

(assert (=> d!827677 d!827773))

(declare-fun bs!520610 () Bool)

(declare-fun d!827775 () Bool)

(assert (= bs!520610 (and d!827775 d!827747)))

(declare-fun lambda!105508 () Int)

(assert (=> bs!520610 (= lambda!105508 lambda!105488)))

(declare-fun bs!520611 () Bool)

(assert (= bs!520611 (and d!827775 d!827755)))

(assert (=> bs!520611 (not (= lambda!105508 lambda!105502))))

(declare-fun bs!520612 () Bool)

(assert (= bs!520612 (and d!827775 b!2863384)))

(assert (=> bs!520612 (not (= lambda!105508 lambda!105503))))

(declare-fun bs!520613 () Bool)

(assert (= bs!520613 (and d!827775 b!2863385)))

(assert (=> bs!520613 (not (= lambda!105508 lambda!105504))))

(assert (=> d!827775 (= (nullableZipper!690 lt!1014984) (exists!1046 lt!1014984 lambda!105508))))

(declare-fun bs!520614 () Bool)

(assert (= bs!520614 d!827775))

(declare-fun m!3282945 () Bool)

(assert (=> bs!520614 m!3282945))

(assert (=> b!2863271 d!827775))

(declare-fun d!827777 () Bool)

(declare-fun c!461600 () Bool)

(assert (=> d!827777 (= c!461600 (isEmpty!18634 (tail!4530 lt!1014987)))))

(declare-fun e!1812658 () Bool)

(assert (=> d!827777 (= (matchZipper!436 (derivationStepZipper!437 lt!1014984 (head!6305 lt!1014987)) (tail!4530 lt!1014987)) e!1812658)))

(declare-fun b!2863394 () Bool)

(assert (=> b!2863394 (= e!1812658 (nullableZipper!690 (derivationStepZipper!437 lt!1014984 (head!6305 lt!1014987))))))

(declare-fun b!2863395 () Bool)

(assert (=> b!2863395 (= e!1812658 (matchZipper!436 (derivationStepZipper!437 (derivationStepZipper!437 lt!1014984 (head!6305 lt!1014987)) (head!6305 (tail!4530 lt!1014987))) (tail!4530 (tail!4530 lt!1014987))))))

(assert (= (and d!827777 c!461600) b!2863394))

(assert (= (and d!827777 (not c!461600)) b!2863395))

(assert (=> d!827777 m!3282715))

(declare-fun m!3282947 () Bool)

(assert (=> d!827777 m!3282947))

(assert (=> b!2863394 m!3282731))

(declare-fun m!3282949 () Bool)

(assert (=> b!2863394 m!3282949))

(assert (=> b!2863395 m!3282715))

(assert (=> b!2863395 m!3282877))

(assert (=> b!2863395 m!3282731))

(assert (=> b!2863395 m!3282877))

(declare-fun m!3282951 () Bool)

(assert (=> b!2863395 m!3282951))

(assert (=> b!2863395 m!3282715))

(assert (=> b!2863395 m!3282871))

(assert (=> b!2863395 m!3282951))

(assert (=> b!2863395 m!3282871))

(declare-fun m!3282953 () Bool)

(assert (=> b!2863395 m!3282953))

(assert (=> b!2863272 d!827777))

(declare-fun bs!520615 () Bool)

(declare-fun d!827779 () Bool)

(assert (= bs!520615 (and d!827779 d!827685)))

(declare-fun lambda!105509 () Int)

(assert (=> bs!520615 (= (= (head!6305 lt!1014987) (h!39557 prefix!919)) (= lambda!105509 lambda!105479))))

(declare-fun bs!520616 () Bool)

(assert (= bs!520616 (and d!827779 d!827751)))

(assert (=> bs!520616 (= (= (head!6305 lt!1014987) (head!6305 prefix!919)) (= lambda!105509 lambda!105489))))

(assert (=> d!827779 true))

(assert (=> d!827779 (= (derivationStepZipper!437 lt!1014984 (head!6305 lt!1014987)) (flatMap!209 lt!1014984 lambda!105509))))

(declare-fun bs!520617 () Bool)

(assert (= bs!520617 d!827779))

(declare-fun m!3282955 () Bool)

(assert (=> bs!520617 m!3282955))

(assert (=> b!2863272 d!827779))

(assert (=> b!2863272 d!827761))

(assert (=> b!2863272 d!827737))

(declare-fun d!827781 () Bool)

(assert (=> d!827781 (= (isEmpty!18634 prefix!919) (is-Nil!34137 prefix!919))))

(assert (=> d!827695 d!827781))

(declare-fun d!827783 () Bool)

(declare-fun res!1188878 () Bool)

(declare-fun e!1812663 () Bool)

(assert (=> d!827783 (=> res!1188878 e!1812663)))

(assert (=> d!827783 (= res!1188878 (is-Nil!34136 (exprs!3098 setElem!25405)))))

(assert (=> d!827783 (= (forall!6975 (exprs!3098 setElem!25405) lambda!105485) e!1812663)))

(declare-fun b!2863400 () Bool)

(declare-fun e!1812664 () Bool)

(assert (=> b!2863400 (= e!1812663 e!1812664)))

(declare-fun res!1188879 () Bool)

(assert (=> b!2863400 (=> (not res!1188879) (not e!1812664))))

(declare-fun dynLambda!14254 (Int Regex!8638) Bool)

(assert (=> b!2863400 (= res!1188879 (dynLambda!14254 lambda!105485 (h!39556 (exprs!3098 setElem!25405))))))

(declare-fun b!2863401 () Bool)

(assert (=> b!2863401 (= e!1812664 (forall!6975 (t!233299 (exprs!3098 setElem!25405)) lambda!105485))))

(assert (= (and d!827783 (not res!1188878)) b!2863400))

(assert (= (and b!2863400 res!1188879) b!2863401))

(declare-fun b_lambda!85829 () Bool)

(assert (=> (not b_lambda!85829) (not b!2863400)))

(declare-fun m!3282957 () Bool)

(assert (=> b!2863400 m!3282957))

(declare-fun m!3282959 () Bool)

(assert (=> b!2863401 m!3282959))

(assert (=> d!827707 d!827783))

(declare-fun bs!520618 () Bool)

(declare-fun d!827785 () Bool)

(assert (= bs!520618 (and d!827785 d!827707)))

(declare-fun lambda!105510 () Int)

(assert (=> bs!520618 (= lambda!105510 lambda!105485)))

(assert (=> d!827785 (= (inv!46183 setElem!25420) (forall!6975 (exprs!3098 setElem!25420) lambda!105510))))

(declare-fun bs!520619 () Bool)

(assert (= bs!520619 d!827785))

(declare-fun m!3282961 () Bool)

(assert (=> bs!520619 m!3282961))

(assert (=> setNonEmpty!25420 d!827785))

(declare-fun d!827787 () Bool)

(declare-fun c!461601 () Bool)

(assert (=> d!827787 (= c!461601 (isEmpty!18634 (tail!4530 lt!1014986)))))

(declare-fun e!1812665 () Bool)

(assert (=> d!827787 (= (matchZipper!436 (derivationStepZipper!437 z!960 (head!6305 lt!1014986)) (tail!4530 lt!1014986)) e!1812665)))

(declare-fun b!2863402 () Bool)

(assert (=> b!2863402 (= e!1812665 (nullableZipper!690 (derivationStepZipper!437 z!960 (head!6305 lt!1014986))))))

(declare-fun b!2863403 () Bool)

(assert (=> b!2863403 (= e!1812665 (matchZipper!436 (derivationStepZipper!437 (derivationStepZipper!437 z!960 (head!6305 lt!1014986)) (head!6305 (tail!4530 lt!1014986))) (tail!4530 (tail!4530 lt!1014986))))))

(assert (= (and d!827787 c!461601) b!2863402))

(assert (= (and d!827787 (not c!461601)) b!2863403))

(assert (=> d!827787 m!3282797))

(declare-fun m!3282963 () Bool)

(assert (=> d!827787 m!3282963))

(assert (=> b!2863402 m!3282795))

(declare-fun m!3282965 () Bool)

(assert (=> b!2863402 m!3282965))

(assert (=> b!2863403 m!3282797))

(assert (=> b!2863403 m!3282891))

(assert (=> b!2863403 m!3282795))

(assert (=> b!2863403 m!3282891))

(declare-fun m!3282967 () Bool)

(assert (=> b!2863403 m!3282967))

(assert (=> b!2863403 m!3282797))

(assert (=> b!2863403 m!3282885))

(assert (=> b!2863403 m!3282967))

(assert (=> b!2863403 m!3282885))

(declare-fun m!3282969 () Bool)

(assert (=> b!2863403 m!3282969))

(assert (=> b!2863294 d!827787))

(declare-fun bs!520620 () Bool)

(declare-fun d!827789 () Bool)

(assert (= bs!520620 (and d!827789 d!827685)))

(declare-fun lambda!105511 () Int)

(assert (=> bs!520620 (= (= (head!6305 lt!1014986) (h!39557 prefix!919)) (= lambda!105511 lambda!105479))))

(declare-fun bs!520621 () Bool)

(assert (= bs!520621 (and d!827789 d!827751)))

(assert (=> bs!520621 (= (= (head!6305 lt!1014986) (head!6305 prefix!919)) (= lambda!105511 lambda!105489))))

(declare-fun bs!520622 () Bool)

(assert (= bs!520622 (and d!827789 d!827779)))

(assert (=> bs!520622 (= (= (head!6305 lt!1014986) (head!6305 lt!1014987)) (= lambda!105511 lambda!105509))))

(assert (=> d!827789 true))

(assert (=> d!827789 (= (derivationStepZipper!437 z!960 (head!6305 lt!1014986)) (flatMap!209 z!960 lambda!105511))))

(declare-fun bs!520623 () Bool)

(assert (= bs!520623 d!827789))

(declare-fun m!3282971 () Bool)

(assert (=> bs!520623 m!3282971))

(assert (=> b!2863294 d!827789))

(assert (=> b!2863294 d!827765))

(assert (=> b!2863294 d!827743))

(declare-fun d!827791 () Bool)

(declare-fun c!461602 () Bool)

(assert (=> d!827791 (= c!461602 (isEmpty!18634 lt!1015013))))

(declare-fun e!1812666 () Bool)

(assert (=> d!827791 (= (matchZipper!436 lt!1014984 lt!1015013) e!1812666)))

(declare-fun b!2863404 () Bool)

(assert (=> b!2863404 (= e!1812666 (nullableZipper!690 lt!1014984))))

(declare-fun b!2863405 () Bool)

(assert (=> b!2863405 (= e!1812666 (matchZipper!436 (derivationStepZipper!437 lt!1014984 (head!6305 lt!1015013)) (tail!4530 lt!1015013)))))

(assert (= (and d!827791 c!461602) b!2863404))

(assert (= (and d!827791 (not c!461602)) b!2863405))

(declare-fun m!3282973 () Bool)

(assert (=> d!827791 m!3282973))

(assert (=> b!2863404 m!3282729))

(assert (=> b!2863405 m!3282929))

(assert (=> b!2863405 m!3282929))

(declare-fun m!3282975 () Bool)

(assert (=> b!2863405 m!3282975))

(assert (=> b!2863405 m!3282925))

(assert (=> b!2863405 m!3282975))

(assert (=> b!2863405 m!3282925))

(declare-fun m!3282977 () Bool)

(assert (=> b!2863405 m!3282977))

(assert (=> bs!520595 d!827791))

(declare-fun d!827793 () Bool)

(assert (=> d!827793 true))

(assert (=> d!827793 true))

(declare-fun res!1188882 () Bool)

(assert (=> d!827793 (= (choose!16864 lambda!105462) res!1188882)))

(assert (=> d!827691 d!827793))

(declare-fun condSetEmpty!25426 () Bool)

(assert (=> setNonEmpty!25417 (= condSetEmpty!25426 (= setRest!25417 (as set.empty (Set Context!5196))))))

(declare-fun setRes!25426 () Bool)

(assert (=> setNonEmpty!25417 setRes!25426))

(declare-fun setIsEmpty!25426 () Bool)

(assert (=> setIsEmpty!25426 setRes!25426))

(declare-fun setNonEmpty!25426 () Bool)

(assert (=> setNonEmpty!25426 (= setRes!25426 true)))

(declare-fun setElem!25426 () Context!5196)

(declare-fun setRest!25426 () (Set Context!5196))

(assert (=> setNonEmpty!25426 (= setRest!25417 (set.union (set.insert setElem!25426 (as set.empty (Set Context!5196))) setRest!25426))))

(assert (= (and setNonEmpty!25417 condSetEmpty!25426) setIsEmpty!25426))

(assert (= (and setNonEmpty!25417 (not condSetEmpty!25426)) setNonEmpty!25426))

(declare-fun b!2863406 () Bool)

(declare-fun e!1812667 () Bool)

(declare-fun tp!921998 () Bool)

(assert (=> b!2863406 (= e!1812667 (and tp_is_empty!15013 tp!921998))))

(assert (=> b!2863325 (= tp!921979 e!1812667)))

(assert (= (and b!2863325 (is-Cons!34137 (t!233300 (t!233300 prefix!919)))) b!2863406))

(declare-fun condSetEmpty!25427 () Bool)

(assert (=> setNonEmpty!25415 (= condSetEmpty!25427 (= setRest!25415 (as set.empty (Set Context!5196))))))

(declare-fun setRes!25427 () Bool)

(assert (=> setNonEmpty!25415 setRes!25427))

(declare-fun setIsEmpty!25427 () Bool)

(assert (=> setIsEmpty!25427 setRes!25427))

(declare-fun setNonEmpty!25427 () Bool)

(assert (=> setNonEmpty!25427 (= setRes!25427 true)))

(declare-fun setElem!25427 () Context!5196)

(declare-fun setRest!25427 () (Set Context!5196))

(assert (=> setNonEmpty!25427 (= setRest!25415 (set.union (set.insert setElem!25427 (as set.empty (Set Context!5196))) setRest!25427))))

(assert (= (and setNonEmpty!25415 condSetEmpty!25427) setIsEmpty!25427))

(assert (= (and setNonEmpty!25415 (not condSetEmpty!25427)) setNonEmpty!25427))

(declare-fun condSetEmpty!25428 () Bool)

(assert (=> setNonEmpty!25420 (= condSetEmpty!25428 (= setRest!25420 (as set.empty (Set Context!5196))))))

(declare-fun setRes!25428 () Bool)

(assert (=> setNonEmpty!25420 (= tp!921976 setRes!25428)))

(declare-fun setIsEmpty!25428 () Bool)

(assert (=> setIsEmpty!25428 setRes!25428))

(declare-fun setNonEmpty!25428 () Bool)

(declare-fun setElem!25428 () Context!5196)

(declare-fun e!1812668 () Bool)

(declare-fun tp!922000 () Bool)

(assert (=> setNonEmpty!25428 (= setRes!25428 (and tp!922000 (inv!46183 setElem!25428) e!1812668))))

(declare-fun setRest!25428 () (Set Context!5196))

(assert (=> setNonEmpty!25428 (= setRest!25420 (set.union (set.insert setElem!25428 (as set.empty (Set Context!5196))) setRest!25428))))

(declare-fun b!2863407 () Bool)

(declare-fun tp!921999 () Bool)

(assert (=> b!2863407 (= e!1812668 tp!921999)))

(assert (= (and setNonEmpty!25420 condSetEmpty!25428) setIsEmpty!25428))

(assert (= (and setNonEmpty!25420 (not condSetEmpty!25428)) setNonEmpty!25428))

(assert (= setNonEmpty!25428 b!2863407))

(declare-fun m!3282979 () Bool)

(assert (=> setNonEmpty!25428 m!3282979))

(declare-fun e!1812671 () Bool)

(assert (=> b!2863315 (= tp!921969 e!1812671)))

(declare-fun b!2863420 () Bool)

(declare-fun tp!922011 () Bool)

(assert (=> b!2863420 (= e!1812671 tp!922011)))

(declare-fun b!2863421 () Bool)

(declare-fun tp!922015 () Bool)

(declare-fun tp!922012 () Bool)

(assert (=> b!2863421 (= e!1812671 (and tp!922015 tp!922012))))

(declare-fun b!2863418 () Bool)

(assert (=> b!2863418 (= e!1812671 tp_is_empty!15013)))

(declare-fun b!2863419 () Bool)

(declare-fun tp!922014 () Bool)

(declare-fun tp!922013 () Bool)

(assert (=> b!2863419 (= e!1812671 (and tp!922014 tp!922013))))

(assert (= (and b!2863315 (is-ElementMatch!8638 (h!39556 (exprs!3098 setElem!25405)))) b!2863418))

(assert (= (and b!2863315 (is-Concat!13959 (h!39556 (exprs!3098 setElem!25405)))) b!2863419))

(assert (= (and b!2863315 (is-Star!8638 (h!39556 (exprs!3098 setElem!25405)))) b!2863420))

(assert (= (and b!2863315 (is-Union!8638 (h!39556 (exprs!3098 setElem!25405)))) b!2863421))

(declare-fun b!2863422 () Bool)

(declare-fun e!1812672 () Bool)

(declare-fun tp!922016 () Bool)

(declare-fun tp!922017 () Bool)

(assert (=> b!2863422 (= e!1812672 (and tp!922016 tp!922017))))

(assert (=> b!2863315 (= tp!921970 e!1812672)))

(assert (= (and b!2863315 (is-Cons!34136 (t!233299 (exprs!3098 setElem!25405)))) b!2863422))

(declare-fun b!2863423 () Bool)

(declare-fun e!1812673 () Bool)

(declare-fun tp!922018 () Bool)

(declare-fun tp!922019 () Bool)

(assert (=> b!2863423 (= e!1812673 (and tp!922018 tp!922019))))

(assert (=> b!2863320 (= tp!921975 e!1812673)))

(assert (= (and b!2863320 (is-Cons!34136 (exprs!3098 setElem!25420))) b!2863423))

(declare-fun b_lambda!85831 () Bool)

(assert (= b_lambda!85829 (or d!827707 b_lambda!85831)))

(declare-fun bs!520624 () Bool)

(declare-fun d!827795 () Bool)

(assert (= bs!520624 (and d!827795 d!827707)))

(declare-fun validRegex!3488 (Regex!8638) Bool)

(assert (=> bs!520624 (= (dynLambda!14254 lambda!105485 (h!39556 (exprs!3098 setElem!25405))) (validRegex!3488 (h!39556 (exprs!3098 setElem!25405))))))

(declare-fun m!3282981 () Bool)

(assert (=> bs!520624 m!3282981))

(assert (=> b!2863400 d!827795))

(declare-fun b_lambda!85833 () Bool)

(assert (= b_lambda!85827 (or b!2863219 b_lambda!85833)))

(declare-fun bs!520625 () Bool)

(declare-fun d!827797 () Bool)

(assert (= bs!520625 (and d!827797 b!2863219)))

(declare-fun res!1188883 () Bool)

(declare-fun e!1812674 () Bool)

(assert (=> bs!520625 (=> (not res!1188883) (not e!1812674))))

(assert (=> bs!520625 (= res!1188883 (matchZipper!436 lt!1014984 res!1188859))))

(assert (=> bs!520625 (= (dynLambda!14252 lambda!105462 res!1188859) e!1812674)))

(declare-fun b!2863424 () Bool)

(assert (=> b!2863424 (= e!1812674 (isPrefix!2697 (t!233300 prefix!919) res!1188859))))

(assert (= (and bs!520625 res!1188883) b!2863424))

(declare-fun m!3282983 () Bool)

(assert (=> bs!520625 m!3282983))

(declare-fun m!3282985 () Bool)

(assert (=> b!2863424 m!3282985))

(assert (=> d!827727 d!827797))

(push 1)

(assert (not b!2863375))

(assert (not b_lambda!85823))

(assert (not b!2863404))

(assert (not b!2863369))

(assert (not b!2863379))

(assert (not b!2863403))

(assert (not b!2863387))

(assert (not d!827791))

(assert (not d!827749))

(assert (not b!2863362))

(assert (not b!2863422))

(assert (not b!2863394))

(assert (not d!827767))

(assert (not b_lambda!85831))

(assert (not b!2863402))

(assert (not b!2863371))

(assert (not d!827747))

(assert (not b!2863401))

(assert (not b!2863377))

(assert (not b!2863405))

(assert (not d!827751))

(assert (not b!2863360))

(assert (not b!2863392))

(assert (not b!2863378))

(assert (not d!827771))

(assert (not b!2863424))

(assert (not d!827777))

(assert (not d!827787))

(assert (not setNonEmpty!25427))

(assert (not b!2863393))

(assert (not bs!520625))

(assert (not b!2863406))

(assert (not bs!520624))

(assert (not b!2863419))

(assert tp_is_empty!15013)

(assert (not b!2863395))

(assert (not d!827775))

(assert (not b!2863407))

(assert (not d!827785))

(assert (not setNonEmpty!25425))

(assert (not b!2863367))

(assert (not b!2863420))

(assert (not b!2863421))

(assert (not b_lambda!85833))

(assert (not d!827779))

(assert (not b!2863384))

(assert (not d!827789))

(assert (not b!2863365))

(assert (not bm!184739))

(assert (not b!2863372))

(assert (not b!2863388))

(assert (not d!827745))

(assert (not b!2863423))

(assert (not d!827769))

(assert (not setNonEmpty!25428))

(assert (not d!827755))

(assert (not b!2863385))

(assert (not b!2863389))

(assert (not setNonEmpty!25426))

(assert (not bm!184738))

(assert (not b!2863373))

(assert (not b!2863376))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


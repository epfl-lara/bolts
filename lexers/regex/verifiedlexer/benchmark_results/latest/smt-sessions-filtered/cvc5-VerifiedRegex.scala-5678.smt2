; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!282948 () Bool)

(assert start!282948)

(declare-fun setIsEmpty!25792 () Bool)

(declare-fun setRes!25792 () Bool)

(assert (=> setIsEmpty!25792 setRes!25792))

(declare-fun res!1200611 () Bool)

(declare-fun e!1835244 () Bool)

(assert (=> start!282948 (=> (not res!1200611) (not e!1835244))))

(declare-datatypes ((C!18002 0))(
  ( (C!18003 (val!11035 Int)) )
))
(declare-datatypes ((List!34731 0))(
  ( (Nil!34607) (Cons!34607 (h!40027 C!18002) (t!233774 List!34731)) )
))
(declare-fun prefix!909 () List!34731)

(declare-fun s!2253 () List!34731)

(declare-fun isPrefix!2747 (List!34731 List!34731) Bool)

(assert (=> start!282948 (= res!1200611 (isPrefix!2747 prefix!909 s!2253))))

(assert (=> start!282948 e!1835244))

(declare-fun e!1835246 () Bool)

(assert (=> start!282948 e!1835246))

(declare-fun e!1835247 () Bool)

(assert (=> start!282948 e!1835247))

(declare-fun condSetEmpty!25792 () Bool)

(declare-datatypes ((Regex!8910 0))(
  ( (ElementMatch!8910 (c!473795 C!18002)) (Concat!14231 (regOne!18332 Regex!8910) (regTwo!18332 Regex!8910)) (EmptyExpr!8910) (Star!8910 (reg!9239 Regex!8910)) (EmptyLang!8910) (Union!8910 (regOne!18333 Regex!8910) (regTwo!18333 Regex!8910)) )
))
(declare-datatypes ((List!34732 0))(
  ( (Nil!34608) (Cons!34608 (h!40028 Regex!8910) (t!233775 List!34732)) )
))
(declare-datatypes ((Context!5476 0))(
  ( (Context!5477 (exprs!3238 List!34732)) )
))
(declare-fun z!929 () (Set Context!5476))

(assert (=> start!282948 (= condSetEmpty!25792 (= z!929 (as set.empty (Set Context!5476))))))

(assert (=> start!282948 setRes!25792))

(declare-fun setElem!25792 () Context!5476)

(declare-fun setNonEmpty!25792 () Bool)

(declare-fun tp!933935 () Bool)

(declare-fun e!1835245 () Bool)

(declare-fun inv!46731 (Context!5476) Bool)

(assert (=> setNonEmpty!25792 (= setRes!25792 (and tp!933935 (inv!46731 setElem!25792) e!1835245))))

(declare-fun setRest!25792 () (Set Context!5476))

(assert (=> setNonEmpty!25792 (= z!929 (set.union (set.insert setElem!25792 (as set.empty (Set Context!5476))) setRest!25792))))

(declare-fun b!2907335 () Bool)

(declare-fun tp_is_empty!15407 () Bool)

(declare-fun tp!933934 () Bool)

(assert (=> b!2907335 (= e!1835247 (and tp_is_empty!15407 tp!933934))))

(declare-fun b!2907336 () Bool)

(declare-fun tp!933937 () Bool)

(assert (=> b!2907336 (= e!1835245 tp!933937)))

(declare-fun b!2907337 () Bool)

(declare-fun res!1200612 () Bool)

(assert (=> b!2907337 (=> (not res!1200612) (not e!1835244))))

(declare-fun prefixMatchZipper!354 ((Set Context!5476) List!34731) Bool)

(assert (=> b!2907337 (= res!1200612 (not (prefixMatchZipper!354 z!929 prefix!909)))))

(declare-fun b!2907338 () Bool)

(declare-fun res!1200610 () Bool)

(assert (=> b!2907338 (=> (not res!1200610) (not e!1835244))))

(assert (=> b!2907338 (= res!1200610 (not (is-Nil!34607 prefix!909)))))

(declare-fun b!2907339 () Bool)

(declare-fun tail!4663 (List!34731) List!34731)

(assert (=> b!2907339 (= e!1835244 (not (isPrefix!2747 (t!233774 prefix!909) (tail!4663 s!2253))))))

(declare-fun b!2907340 () Bool)

(declare-fun tp!933936 () Bool)

(assert (=> b!2907340 (= e!1835246 (and tp_is_empty!15407 tp!933936))))

(assert (= (and start!282948 res!1200611) b!2907337))

(assert (= (and b!2907337 res!1200612) b!2907338))

(assert (= (and b!2907338 res!1200610) b!2907339))

(assert (= (and start!282948 (is-Cons!34607 prefix!909)) b!2907340))

(assert (= (and start!282948 (is-Cons!34607 s!2253)) b!2907335))

(assert (= (and start!282948 condSetEmpty!25792) setIsEmpty!25792))

(assert (= (and start!282948 (not condSetEmpty!25792)) setNonEmpty!25792))

(assert (= setNonEmpty!25792 b!2907336))

(declare-fun m!3309039 () Bool)

(assert (=> start!282948 m!3309039))

(declare-fun m!3309041 () Bool)

(assert (=> setNonEmpty!25792 m!3309041))

(declare-fun m!3309043 () Bool)

(assert (=> b!2907337 m!3309043))

(declare-fun m!3309045 () Bool)

(assert (=> b!2907339 m!3309045))

(assert (=> b!2907339 m!3309045))

(declare-fun m!3309047 () Bool)

(assert (=> b!2907339 m!3309047))

(push 1)

(assert (not b!2907339))

(assert (not setNonEmpty!25792))

(assert (not start!282948))

(assert (not b!2907335))

(assert (not b!2907336))

(assert (not b!2907337))

(assert tp_is_empty!15407)

(assert (not b!2907340))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!836385 () Bool)

(declare-fun lambda!107758 () Int)

(declare-fun forall!7112 (List!34732 Int) Bool)

(assert (=> d!836385 (= (inv!46731 setElem!25792) (forall!7112 (exprs!3238 setElem!25792) lambda!107758))))

(declare-fun bs!524158 () Bool)

(assert (= bs!524158 d!836385))

(declare-fun m!3309073 () Bool)

(assert (=> bs!524158 m!3309073))

(assert (=> setNonEmpty!25792 d!836385))

(declare-fun b!2907379 () Bool)

(declare-fun e!1835275 () Bool)

(declare-fun e!1835277 () Bool)

(assert (=> b!2907379 (= e!1835275 e!1835277)))

(declare-fun res!1200645 () Bool)

(assert (=> b!2907379 (=> (not res!1200645) (not e!1835277))))

(assert (=> b!2907379 (= res!1200645 (not (is-Nil!34607 (tail!4663 s!2253))))))

(declare-fun b!2907380 () Bool)

(declare-fun res!1200643 () Bool)

(assert (=> b!2907380 (=> (not res!1200643) (not e!1835277))))

(declare-fun head!6432 (List!34731) C!18002)

(assert (=> b!2907380 (= res!1200643 (= (head!6432 (t!233774 prefix!909)) (head!6432 (tail!4663 s!2253))))))

(declare-fun b!2907381 () Bool)

(assert (=> b!2907381 (= e!1835277 (isPrefix!2747 (tail!4663 (t!233774 prefix!909)) (tail!4663 (tail!4663 s!2253))))))

(declare-fun d!836393 () Bool)

(declare-fun e!1835276 () Bool)

(assert (=> d!836393 e!1835276))

(declare-fun res!1200644 () Bool)

(assert (=> d!836393 (=> res!1200644 e!1835276)))

(declare-fun lt!1022733 () Bool)

(assert (=> d!836393 (= res!1200644 (not lt!1022733))))

(assert (=> d!836393 (= lt!1022733 e!1835275)))

(declare-fun res!1200642 () Bool)

(assert (=> d!836393 (=> res!1200642 e!1835275)))

(assert (=> d!836393 (= res!1200642 (is-Nil!34607 (t!233774 prefix!909)))))

(assert (=> d!836393 (= (isPrefix!2747 (t!233774 prefix!909) (tail!4663 s!2253)) lt!1022733)))

(declare-fun b!2907382 () Bool)

(declare-fun size!26381 (List!34731) Int)

(assert (=> b!2907382 (= e!1835276 (>= (size!26381 (tail!4663 s!2253)) (size!26381 (t!233774 prefix!909))))))

(assert (= (and d!836393 (not res!1200642)) b!2907379))

(assert (= (and b!2907379 res!1200645) b!2907380))

(assert (= (and b!2907380 res!1200643) b!2907381))

(assert (= (and d!836393 (not res!1200644)) b!2907382))

(declare-fun m!3309075 () Bool)

(assert (=> b!2907380 m!3309075))

(assert (=> b!2907380 m!3309045))

(declare-fun m!3309077 () Bool)

(assert (=> b!2907380 m!3309077))

(declare-fun m!3309079 () Bool)

(assert (=> b!2907381 m!3309079))

(assert (=> b!2907381 m!3309045))

(declare-fun m!3309081 () Bool)

(assert (=> b!2907381 m!3309081))

(assert (=> b!2907381 m!3309079))

(assert (=> b!2907381 m!3309081))

(declare-fun m!3309083 () Bool)

(assert (=> b!2907381 m!3309083))

(assert (=> b!2907382 m!3309045))

(declare-fun m!3309085 () Bool)

(assert (=> b!2907382 m!3309085))

(declare-fun m!3309087 () Bool)

(assert (=> b!2907382 m!3309087))

(assert (=> b!2907339 d!836393))

(declare-fun d!836395 () Bool)

(assert (=> d!836395 (= (tail!4663 s!2253) (t!233774 s!2253))))

(assert (=> b!2907339 d!836395))

(declare-fun b!2907383 () Bool)

(declare-fun e!1835278 () Bool)

(declare-fun e!1835280 () Bool)

(assert (=> b!2907383 (= e!1835278 e!1835280)))

(declare-fun res!1200649 () Bool)

(assert (=> b!2907383 (=> (not res!1200649) (not e!1835280))))

(assert (=> b!2907383 (= res!1200649 (not (is-Nil!34607 s!2253)))))

(declare-fun b!2907384 () Bool)

(declare-fun res!1200647 () Bool)

(assert (=> b!2907384 (=> (not res!1200647) (not e!1835280))))

(assert (=> b!2907384 (= res!1200647 (= (head!6432 prefix!909) (head!6432 s!2253)))))

(declare-fun b!2907385 () Bool)

(assert (=> b!2907385 (= e!1835280 (isPrefix!2747 (tail!4663 prefix!909) (tail!4663 s!2253)))))

(declare-fun d!836397 () Bool)

(declare-fun e!1835279 () Bool)

(assert (=> d!836397 e!1835279))

(declare-fun res!1200648 () Bool)

(assert (=> d!836397 (=> res!1200648 e!1835279)))

(declare-fun lt!1022734 () Bool)

(assert (=> d!836397 (= res!1200648 (not lt!1022734))))

(assert (=> d!836397 (= lt!1022734 e!1835278)))

(declare-fun res!1200646 () Bool)

(assert (=> d!836397 (=> res!1200646 e!1835278)))

(assert (=> d!836397 (= res!1200646 (is-Nil!34607 prefix!909))))

(assert (=> d!836397 (= (isPrefix!2747 prefix!909 s!2253) lt!1022734)))

(declare-fun b!2907386 () Bool)

(assert (=> b!2907386 (= e!1835279 (>= (size!26381 s!2253) (size!26381 prefix!909)))))

(assert (= (and d!836397 (not res!1200646)) b!2907383))

(assert (= (and b!2907383 res!1200649) b!2907384))

(assert (= (and b!2907384 res!1200647) b!2907385))

(assert (= (and d!836397 (not res!1200648)) b!2907386))

(declare-fun m!3309089 () Bool)

(assert (=> b!2907384 m!3309089))

(declare-fun m!3309091 () Bool)

(assert (=> b!2907384 m!3309091))

(declare-fun m!3309093 () Bool)

(assert (=> b!2907385 m!3309093))

(assert (=> b!2907385 m!3309045))

(assert (=> b!2907385 m!3309093))

(assert (=> b!2907385 m!3309045))

(declare-fun m!3309095 () Bool)

(assert (=> b!2907385 m!3309095))

(declare-fun m!3309097 () Bool)

(assert (=> b!2907386 m!3309097))

(declare-fun m!3309099 () Bool)

(assert (=> b!2907386 m!3309099))

(assert (=> start!282948 d!836397))

(declare-fun d!836399 () Bool)

(declare-fun c!473799 () Bool)

(declare-fun isEmpty!18890 (List!34731) Bool)

(assert (=> d!836399 (= c!473799 (isEmpty!18890 prefix!909))))

(declare-fun e!1835283 () Bool)

(assert (=> d!836399 (= (prefixMatchZipper!354 z!929 prefix!909) e!1835283)))

(declare-fun b!2907391 () Bool)

(declare-fun lostCauseZipper!603 ((Set Context!5476)) Bool)

(assert (=> b!2907391 (= e!1835283 (not (lostCauseZipper!603 z!929)))))

(declare-fun b!2907392 () Bool)

(declare-fun derivationStepZipper!500 ((Set Context!5476) C!18002) (Set Context!5476))

(assert (=> b!2907392 (= e!1835283 (prefixMatchZipper!354 (derivationStepZipper!500 z!929 (head!6432 prefix!909)) (tail!4663 prefix!909)))))

(assert (= (and d!836399 c!473799) b!2907391))

(assert (= (and d!836399 (not c!473799)) b!2907392))

(declare-fun m!3309101 () Bool)

(assert (=> d!836399 m!3309101))

(declare-fun m!3309103 () Bool)

(assert (=> b!2907391 m!3309103))

(assert (=> b!2907392 m!3309089))

(assert (=> b!2907392 m!3309089))

(declare-fun m!3309105 () Bool)

(assert (=> b!2907392 m!3309105))

(assert (=> b!2907392 m!3309093))

(assert (=> b!2907392 m!3309105))

(assert (=> b!2907392 m!3309093))

(declare-fun m!3309107 () Bool)

(assert (=> b!2907392 m!3309107))

(assert (=> b!2907337 d!836399))

(declare-fun condSetEmpty!25798 () Bool)

(assert (=> setNonEmpty!25792 (= condSetEmpty!25798 (= setRest!25792 (as set.empty (Set Context!5476))))))

(declare-fun setRes!25798 () Bool)

(assert (=> setNonEmpty!25792 (= tp!933935 setRes!25798)))

(declare-fun setIsEmpty!25798 () Bool)

(assert (=> setIsEmpty!25798 setRes!25798))

(declare-fun e!1835286 () Bool)

(declare-fun setElem!25798 () Context!5476)

(declare-fun setNonEmpty!25798 () Bool)

(declare-fun tp!933955 () Bool)

(assert (=> setNonEmpty!25798 (= setRes!25798 (and tp!933955 (inv!46731 setElem!25798) e!1835286))))

(declare-fun setRest!25798 () (Set Context!5476))

(assert (=> setNonEmpty!25798 (= setRest!25792 (set.union (set.insert setElem!25798 (as set.empty (Set Context!5476))) setRest!25798))))

(declare-fun b!2907397 () Bool)

(declare-fun tp!933954 () Bool)

(assert (=> b!2907397 (= e!1835286 tp!933954)))

(assert (= (and setNonEmpty!25792 condSetEmpty!25798) setIsEmpty!25798))

(assert (= (and setNonEmpty!25792 (not condSetEmpty!25798)) setNonEmpty!25798))

(assert (= setNonEmpty!25798 b!2907397))

(declare-fun m!3309109 () Bool)

(assert (=> setNonEmpty!25798 m!3309109))

(declare-fun b!2907402 () Bool)

(declare-fun e!1835289 () Bool)

(declare-fun tp!933958 () Bool)

(assert (=> b!2907402 (= e!1835289 (and tp_is_empty!15407 tp!933958))))

(assert (=> b!2907335 (= tp!933934 e!1835289)))

(assert (= (and b!2907335 (is-Cons!34607 (t!233774 s!2253))) b!2907402))

(declare-fun b!2907403 () Bool)

(declare-fun e!1835290 () Bool)

(declare-fun tp!933959 () Bool)

(assert (=> b!2907403 (= e!1835290 (and tp_is_empty!15407 tp!933959))))

(assert (=> b!2907340 (= tp!933936 e!1835290)))

(assert (= (and b!2907340 (is-Cons!34607 (t!233774 prefix!909))) b!2907403))

(declare-fun b!2907408 () Bool)

(declare-fun e!1835293 () Bool)

(declare-fun tp!933964 () Bool)

(declare-fun tp!933965 () Bool)

(assert (=> b!2907408 (= e!1835293 (and tp!933964 tp!933965))))

(assert (=> b!2907336 (= tp!933937 e!1835293)))

(assert (= (and b!2907336 (is-Cons!34608 (exprs!3238 setElem!25792))) b!2907408))

(push 1)

(assert (not b!2907408))

(assert (not b!2907402))

(assert (not b!2907385))

(assert (not d!836385))

(assert (not b!2907397))

(assert (not setNonEmpty!25798))

(assert (not b!2907384))

(assert (not b!2907391))

(assert (not b!2907403))

(assert tp_is_empty!15407)

(assert (not b!2907381))

(assert (not b!2907382))

(assert (not b!2907380))

(assert (not b!2907392))

(assert (not d!836399))

(assert (not b!2907386))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!836405 () Bool)

(declare-fun lt!1022738 () Int)

(assert (=> d!836405 (>= lt!1022738 0)))

(declare-fun e!1835312 () Int)

(assert (=> d!836405 (= lt!1022738 e!1835312)))

(declare-fun c!473805 () Bool)

(assert (=> d!836405 (= c!473805 (is-Nil!34607 s!2253))))

(assert (=> d!836405 (= (size!26381 s!2253) lt!1022738)))

(declare-fun b!2907439 () Bool)

(assert (=> b!2907439 (= e!1835312 0)))

(declare-fun b!2907440 () Bool)

(assert (=> b!2907440 (= e!1835312 (+ 1 (size!26381 (t!233774 s!2253))))))

(assert (= (and d!836405 c!473805) b!2907439))

(assert (= (and d!836405 (not c!473805)) b!2907440))

(declare-fun m!3309135 () Bool)

(assert (=> b!2907440 m!3309135))

(assert (=> b!2907386 d!836405))

(declare-fun d!836407 () Bool)

(declare-fun lt!1022739 () Int)

(assert (=> d!836407 (>= lt!1022739 0)))

(declare-fun e!1835313 () Int)

(assert (=> d!836407 (= lt!1022739 e!1835313)))

(declare-fun c!473806 () Bool)

(assert (=> d!836407 (= c!473806 (is-Nil!34607 prefix!909))))

(assert (=> d!836407 (= (size!26381 prefix!909) lt!1022739)))

(declare-fun b!2907441 () Bool)

(assert (=> b!2907441 (= e!1835313 0)))

(declare-fun b!2907442 () Bool)

(assert (=> b!2907442 (= e!1835313 (+ 1 (size!26381 (t!233774 prefix!909))))))

(assert (= (and d!836407 c!473806) b!2907441))

(assert (= (and d!836407 (not c!473806)) b!2907442))

(assert (=> b!2907442 m!3309087))

(assert (=> b!2907386 d!836407))

(declare-fun d!836409 () Bool)

(assert (=> d!836409 (= (head!6432 (t!233774 prefix!909)) (h!40027 (t!233774 prefix!909)))))

(assert (=> b!2907380 d!836409))

(declare-fun d!836411 () Bool)

(assert (=> d!836411 (= (head!6432 (tail!4663 s!2253)) (h!40027 (tail!4663 s!2253)))))

(assert (=> b!2907380 d!836411))

(declare-fun bs!524160 () Bool)

(declare-fun b!2907447 () Bool)

(declare-fun d!836413 () Bool)

(assert (= bs!524160 (and b!2907447 d!836413)))

(declare-fun lambda!107775 () Int)

(declare-fun lambda!107774 () Int)

(assert (=> bs!524160 (not (= lambda!107775 lambda!107774))))

(declare-fun bs!524161 () Bool)

(declare-fun b!2907448 () Bool)

(assert (= bs!524161 (and b!2907448 d!836413)))

(declare-fun lambda!107776 () Int)

(assert (=> bs!524161 (not (= lambda!107776 lambda!107774))))

(declare-fun bs!524162 () Bool)

(assert (= bs!524162 (and b!2907448 b!2907447)))

(assert (=> bs!524162 (= lambda!107776 lambda!107775)))

(declare-datatypes ((Unit!48157 0))(
  ( (Unit!48158) )
))
(declare-fun e!1835320 () Unit!48157)

(declare-fun Unit!48159 () Unit!48157)

(assert (=> b!2907447 (= e!1835320 Unit!48159)))

(declare-datatypes ((List!34735 0))(
  ( (Nil!34611) (Cons!34611 (h!40031 Context!5476) (t!233778 List!34735)) )
))
(declare-fun lt!1022759 () List!34735)

(declare-fun call!189727 () List!34735)

(assert (=> b!2907447 (= lt!1022759 call!189727)))

(declare-fun lt!1022761 () Unit!48157)

(declare-fun lemmaNotForallThenExists!160 (List!34735 Int) Unit!48157)

(assert (=> b!2907447 (= lt!1022761 (lemmaNotForallThenExists!160 lt!1022759 lambda!107774))))

(declare-fun call!189728 () Bool)

(assert (=> b!2907447 call!189728))

(declare-fun lt!1022763 () Unit!48157)

(assert (=> b!2907447 (= lt!1022763 lt!1022761)))

(declare-fun Unit!48160 () Unit!48157)

(assert (=> b!2907448 (= e!1835320 Unit!48160)))

(declare-fun lt!1022758 () List!34735)

(assert (=> b!2907448 (= lt!1022758 call!189727)))

(declare-fun lt!1022762 () Unit!48157)

(declare-fun lemmaForallThenNotExists!143 (List!34735 Int) Unit!48157)

(assert (=> b!2907448 (= lt!1022762 (lemmaForallThenNotExists!143 lt!1022758 lambda!107774))))

(assert (=> b!2907448 (not call!189728)))

(declare-fun lt!1022756 () Unit!48157)

(assert (=> b!2907448 (= lt!1022756 lt!1022762)))

(declare-fun bm!189722 () Bool)

(declare-fun c!473817 () Bool)

(declare-fun exists!1207 (List!34735 Int) Bool)

(assert (=> bm!189722 (= call!189728 (exists!1207 (ite c!473817 lt!1022759 lt!1022758) (ite c!473817 lambda!107775 lambda!107776)))))

(declare-fun bm!189723 () Bool)

(declare-fun toList!2033 ((Set Context!5476)) List!34735)

(assert (=> bm!189723 (= call!189727 (toList!2033 z!929))))

(declare-fun lt!1022757 () Bool)

(declare-datatypes ((Option!6543 0))(
  ( (None!6542) (Some!6542 (v!34668 List!34731)) )
))
(declare-fun isEmpty!18892 (Option!6543) Bool)

(declare-fun getLanguageWitness!578 ((Set Context!5476)) Option!6543)

(assert (=> d!836413 (= lt!1022757 (isEmpty!18892 (getLanguageWitness!578 z!929)))))

(declare-fun forall!7114 ((Set Context!5476) Int) Bool)

(assert (=> d!836413 (= lt!1022757 (forall!7114 z!929 lambda!107774))))

(declare-fun lt!1022760 () Unit!48157)

(assert (=> d!836413 (= lt!1022760 e!1835320)))

(assert (=> d!836413 (= c!473817 (not (forall!7114 z!929 lambda!107774)))))

(assert (=> d!836413 (= (lostCauseZipper!603 z!929) lt!1022757)))

(assert (= (and d!836413 c!473817) b!2907447))

(assert (= (and d!836413 (not c!473817)) b!2907448))

(assert (= (or b!2907447 b!2907448) bm!189722))

(assert (= (or b!2907447 b!2907448) bm!189723))

(declare-fun m!3309137 () Bool)

(assert (=> b!2907447 m!3309137))

(declare-fun m!3309139 () Bool)

(assert (=> bm!189723 m!3309139))

(declare-fun m!3309141 () Bool)

(assert (=> bm!189722 m!3309141))

(declare-fun m!3309143 () Bool)

(assert (=> b!2907448 m!3309143))

(declare-fun m!3309145 () Bool)

(assert (=> d!836413 m!3309145))

(assert (=> d!836413 m!3309145))

(declare-fun m!3309147 () Bool)

(assert (=> d!836413 m!3309147))

(declare-fun m!3309149 () Bool)

(assert (=> d!836413 m!3309149))

(assert (=> d!836413 m!3309149))

(assert (=> b!2907391 d!836413))

(declare-fun d!836415 () Bool)

(declare-fun res!1200658 () Bool)

(declare-fun e!1835325 () Bool)

(assert (=> d!836415 (=> res!1200658 e!1835325)))

(assert (=> d!836415 (= res!1200658 (is-Nil!34608 (exprs!3238 setElem!25792)))))

(assert (=> d!836415 (= (forall!7112 (exprs!3238 setElem!25792) lambda!107758) e!1835325)))

(declare-fun b!2907453 () Bool)

(declare-fun e!1835326 () Bool)

(assert (=> b!2907453 (= e!1835325 e!1835326)))

(declare-fun res!1200659 () Bool)

(assert (=> b!2907453 (=> (not res!1200659) (not e!1835326))))

(declare-fun dynLambda!14346 (Int Regex!8910) Bool)

(assert (=> b!2907453 (= res!1200659 (dynLambda!14346 lambda!107758 (h!40028 (exprs!3238 setElem!25792))))))

(declare-fun b!2907454 () Bool)

(assert (=> b!2907454 (= e!1835326 (forall!7112 (t!233775 (exprs!3238 setElem!25792)) lambda!107758))))

(assert (= (and d!836415 (not res!1200658)) b!2907453))

(assert (= (and b!2907453 res!1200659) b!2907454))

(declare-fun b_lambda!86335 () Bool)

(assert (=> (not b_lambda!86335) (not b!2907453)))

(declare-fun m!3309151 () Bool)

(assert (=> b!2907453 m!3309151))

(declare-fun m!3309153 () Bool)

(assert (=> b!2907454 m!3309153))

(assert (=> d!836385 d!836415))

(declare-fun b!2907455 () Bool)

(declare-fun e!1835327 () Bool)

(declare-fun e!1835329 () Bool)

(assert (=> b!2907455 (= e!1835327 e!1835329)))

(declare-fun res!1200663 () Bool)

(assert (=> b!2907455 (=> (not res!1200663) (not e!1835329))))

(assert (=> b!2907455 (= res!1200663 (not (is-Nil!34607 (tail!4663 s!2253))))))

(declare-fun b!2907456 () Bool)

(declare-fun res!1200661 () Bool)

(assert (=> b!2907456 (=> (not res!1200661) (not e!1835329))))

(assert (=> b!2907456 (= res!1200661 (= (head!6432 (tail!4663 prefix!909)) (head!6432 (tail!4663 s!2253))))))

(declare-fun b!2907457 () Bool)

(assert (=> b!2907457 (= e!1835329 (isPrefix!2747 (tail!4663 (tail!4663 prefix!909)) (tail!4663 (tail!4663 s!2253))))))

(declare-fun d!836417 () Bool)

(declare-fun e!1835328 () Bool)

(assert (=> d!836417 e!1835328))

(declare-fun res!1200662 () Bool)

(assert (=> d!836417 (=> res!1200662 e!1835328)))

(declare-fun lt!1022764 () Bool)

(assert (=> d!836417 (= res!1200662 (not lt!1022764))))

(assert (=> d!836417 (= lt!1022764 e!1835327)))

(declare-fun res!1200660 () Bool)

(assert (=> d!836417 (=> res!1200660 e!1835327)))

(assert (=> d!836417 (= res!1200660 (is-Nil!34607 (tail!4663 prefix!909)))))

(assert (=> d!836417 (= (isPrefix!2747 (tail!4663 prefix!909) (tail!4663 s!2253)) lt!1022764)))

(declare-fun b!2907458 () Bool)

(assert (=> b!2907458 (= e!1835328 (>= (size!26381 (tail!4663 s!2253)) (size!26381 (tail!4663 prefix!909))))))

(assert (= (and d!836417 (not res!1200660)) b!2907455))

(assert (= (and b!2907455 res!1200663) b!2907456))

(assert (= (and b!2907456 res!1200661) b!2907457))

(assert (= (and d!836417 (not res!1200662)) b!2907458))

(assert (=> b!2907456 m!3309093))

(declare-fun m!3309155 () Bool)

(assert (=> b!2907456 m!3309155))

(assert (=> b!2907456 m!3309045))

(assert (=> b!2907456 m!3309077))

(assert (=> b!2907457 m!3309093))

(declare-fun m!3309157 () Bool)

(assert (=> b!2907457 m!3309157))

(assert (=> b!2907457 m!3309045))

(assert (=> b!2907457 m!3309081))

(assert (=> b!2907457 m!3309157))

(assert (=> b!2907457 m!3309081))

(declare-fun m!3309159 () Bool)

(assert (=> b!2907457 m!3309159))

(assert (=> b!2907458 m!3309045))

(assert (=> b!2907458 m!3309085))

(assert (=> b!2907458 m!3309093))

(declare-fun m!3309161 () Bool)

(assert (=> b!2907458 m!3309161))

(assert (=> b!2907385 d!836417))

(declare-fun d!836419 () Bool)

(assert (=> d!836419 (= (tail!4663 prefix!909) (t!233774 prefix!909))))

(assert (=> b!2907385 d!836419))

(assert (=> b!2907385 d!836395))

(declare-fun d!836421 () Bool)

(declare-fun lt!1022765 () Int)

(assert (=> d!836421 (>= lt!1022765 0)))

(declare-fun e!1835330 () Int)

(assert (=> d!836421 (= lt!1022765 e!1835330)))

(declare-fun c!473818 () Bool)

(assert (=> d!836421 (= c!473818 (is-Nil!34607 (tail!4663 s!2253)))))

(assert (=> d!836421 (= (size!26381 (tail!4663 s!2253)) lt!1022765)))

(declare-fun b!2907459 () Bool)

(assert (=> b!2907459 (= e!1835330 0)))

(declare-fun b!2907460 () Bool)

(assert (=> b!2907460 (= e!1835330 (+ 1 (size!26381 (t!233774 (tail!4663 s!2253)))))))

(assert (= (and d!836421 c!473818) b!2907459))

(assert (= (and d!836421 (not c!473818)) b!2907460))

(declare-fun m!3309163 () Bool)

(assert (=> b!2907460 m!3309163))

(assert (=> b!2907382 d!836421))

(declare-fun d!836423 () Bool)

(declare-fun lt!1022766 () Int)

(assert (=> d!836423 (>= lt!1022766 0)))

(declare-fun e!1835331 () Int)

(assert (=> d!836423 (= lt!1022766 e!1835331)))

(declare-fun c!473819 () Bool)

(assert (=> d!836423 (= c!473819 (is-Nil!34607 (t!233774 prefix!909)))))

(assert (=> d!836423 (= (size!26381 (t!233774 prefix!909)) lt!1022766)))

(declare-fun b!2907461 () Bool)

(assert (=> b!2907461 (= e!1835331 0)))

(declare-fun b!2907462 () Bool)

(assert (=> b!2907462 (= e!1835331 (+ 1 (size!26381 (t!233774 (t!233774 prefix!909)))))))

(assert (= (and d!836423 c!473819) b!2907461))

(assert (= (and d!836423 (not c!473819)) b!2907462))

(declare-fun m!3309165 () Bool)

(assert (=> b!2907462 m!3309165))

(assert (=> b!2907382 d!836423))

(declare-fun bs!524163 () Bool)

(declare-fun d!836425 () Bool)

(assert (= bs!524163 (and d!836425 d!836385)))

(declare-fun lambda!107777 () Int)

(assert (=> bs!524163 (= lambda!107777 lambda!107758)))

(assert (=> d!836425 (= (inv!46731 setElem!25798) (forall!7112 (exprs!3238 setElem!25798) lambda!107777))))

(declare-fun bs!524164 () Bool)

(assert (= bs!524164 d!836425))

(declare-fun m!3309167 () Bool)

(assert (=> bs!524164 m!3309167))

(assert (=> setNonEmpty!25798 d!836425))

(declare-fun d!836427 () Bool)

(assert (=> d!836427 (= (head!6432 prefix!909) (h!40027 prefix!909))))

(assert (=> b!2907384 d!836427))

(declare-fun d!836429 () Bool)

(assert (=> d!836429 (= (head!6432 s!2253) (h!40027 s!2253))))

(assert (=> b!2907384 d!836429))

(declare-fun b!2907463 () Bool)

(declare-fun e!1835332 () Bool)

(declare-fun e!1835334 () Bool)

(assert (=> b!2907463 (= e!1835332 e!1835334)))

(declare-fun res!1200667 () Bool)

(assert (=> b!2907463 (=> (not res!1200667) (not e!1835334))))

(assert (=> b!2907463 (= res!1200667 (not (is-Nil!34607 (tail!4663 (tail!4663 s!2253)))))))

(declare-fun b!2907464 () Bool)

(declare-fun res!1200665 () Bool)

(assert (=> b!2907464 (=> (not res!1200665) (not e!1835334))))

(assert (=> b!2907464 (= res!1200665 (= (head!6432 (tail!4663 (t!233774 prefix!909))) (head!6432 (tail!4663 (tail!4663 s!2253)))))))

(declare-fun b!2907465 () Bool)

(assert (=> b!2907465 (= e!1835334 (isPrefix!2747 (tail!4663 (tail!4663 (t!233774 prefix!909))) (tail!4663 (tail!4663 (tail!4663 s!2253)))))))

(declare-fun d!836431 () Bool)

(declare-fun e!1835333 () Bool)

(assert (=> d!836431 e!1835333))

(declare-fun res!1200666 () Bool)

(assert (=> d!836431 (=> res!1200666 e!1835333)))

(declare-fun lt!1022767 () Bool)

(assert (=> d!836431 (= res!1200666 (not lt!1022767))))

(assert (=> d!836431 (= lt!1022767 e!1835332)))

(declare-fun res!1200664 () Bool)

(assert (=> d!836431 (=> res!1200664 e!1835332)))

(assert (=> d!836431 (= res!1200664 (is-Nil!34607 (tail!4663 (t!233774 prefix!909))))))

(assert (=> d!836431 (= (isPrefix!2747 (tail!4663 (t!233774 prefix!909)) (tail!4663 (tail!4663 s!2253))) lt!1022767)))

(declare-fun b!2907466 () Bool)

(assert (=> b!2907466 (= e!1835333 (>= (size!26381 (tail!4663 (tail!4663 s!2253))) (size!26381 (tail!4663 (t!233774 prefix!909)))))))

(assert (= (and d!836431 (not res!1200664)) b!2907463))

(assert (= (and b!2907463 res!1200667) b!2907464))

(assert (= (and b!2907464 res!1200665) b!2907465))

(assert (= (and d!836431 (not res!1200666)) b!2907466))

(assert (=> b!2907464 m!3309079))

(declare-fun m!3309169 () Bool)

(assert (=> b!2907464 m!3309169))

(assert (=> b!2907464 m!3309081))

(declare-fun m!3309171 () Bool)

(assert (=> b!2907464 m!3309171))

(assert (=> b!2907465 m!3309079))

(declare-fun m!3309173 () Bool)

(assert (=> b!2907465 m!3309173))

(assert (=> b!2907465 m!3309081))

(declare-fun m!3309175 () Bool)

(assert (=> b!2907465 m!3309175))

(assert (=> b!2907465 m!3309173))

(assert (=> b!2907465 m!3309175))

(declare-fun m!3309177 () Bool)

(assert (=> b!2907465 m!3309177))

(assert (=> b!2907466 m!3309081))

(declare-fun m!3309179 () Bool)

(assert (=> b!2907466 m!3309179))

(assert (=> b!2907466 m!3309079))

(declare-fun m!3309181 () Bool)

(assert (=> b!2907466 m!3309181))

(assert (=> b!2907381 d!836431))

(declare-fun d!836433 () Bool)

(assert (=> d!836433 (= (tail!4663 (t!233774 prefix!909)) (t!233774 (t!233774 prefix!909)))))

(assert (=> b!2907381 d!836433))

(declare-fun d!836435 () Bool)

(assert (=> d!836435 (= (tail!4663 (tail!4663 s!2253)) (t!233774 (tail!4663 s!2253)))))

(assert (=> b!2907381 d!836435))

(declare-fun d!836437 () Bool)

(declare-fun c!473820 () Bool)

(assert (=> d!836437 (= c!473820 (isEmpty!18890 (tail!4663 prefix!909)))))

(declare-fun e!1835335 () Bool)

(assert (=> d!836437 (= (prefixMatchZipper!354 (derivationStepZipper!500 z!929 (head!6432 prefix!909)) (tail!4663 prefix!909)) e!1835335)))

(declare-fun b!2907467 () Bool)

(assert (=> b!2907467 (= e!1835335 (not (lostCauseZipper!603 (derivationStepZipper!500 z!929 (head!6432 prefix!909)))))))

(declare-fun b!2907468 () Bool)

(assert (=> b!2907468 (= e!1835335 (prefixMatchZipper!354 (derivationStepZipper!500 (derivationStepZipper!500 z!929 (head!6432 prefix!909)) (head!6432 (tail!4663 prefix!909))) (tail!4663 (tail!4663 prefix!909))))))

(assert (= (and d!836437 c!473820) b!2907467))

(assert (= (and d!836437 (not c!473820)) b!2907468))

(assert (=> d!836437 m!3309093))

(declare-fun m!3309183 () Bool)

(assert (=> d!836437 m!3309183))

(assert (=> b!2907467 m!3309105))

(declare-fun m!3309185 () Bool)

(assert (=> b!2907467 m!3309185))

(assert (=> b!2907468 m!3309093))

(assert (=> b!2907468 m!3309155))

(assert (=> b!2907468 m!3309105))

(assert (=> b!2907468 m!3309155))

(declare-fun m!3309187 () Bool)

(assert (=> b!2907468 m!3309187))

(assert (=> b!2907468 m!3309093))

(assert (=> b!2907468 m!3309157))

(assert (=> b!2907468 m!3309187))

(assert (=> b!2907468 m!3309157))

(declare-fun m!3309189 () Bool)

(assert (=> b!2907468 m!3309189))

(assert (=> b!2907392 d!836437))

(declare-fun d!836439 () Bool)

(assert (=> d!836439 true))

(declare-fun lambda!107780 () Int)

(declare-fun flatMap!237 ((Set Context!5476) Int) (Set Context!5476))

(assert (=> d!836439 (= (derivationStepZipper!500 z!929 (head!6432 prefix!909)) (flatMap!237 z!929 lambda!107780))))

(declare-fun bs!524165 () Bool)

(assert (= bs!524165 d!836439))

(declare-fun m!3309191 () Bool)

(assert (=> bs!524165 m!3309191))

(assert (=> b!2907392 d!836439))

(assert (=> b!2907392 d!836427))

(assert (=> b!2907392 d!836419))

(declare-fun d!836441 () Bool)

(assert (=> d!836441 (= (isEmpty!18890 prefix!909) (is-Nil!34607 prefix!909))))

(assert (=> d!836399 d!836441))

(declare-fun b!2907471 () Bool)

(declare-fun e!1835336 () Bool)

(declare-fun tp!933982 () Bool)

(assert (=> b!2907471 (= e!1835336 (and tp_is_empty!15407 tp!933982))))

(assert (=> b!2907402 (= tp!933958 e!1835336)))

(assert (= (and b!2907402 (is-Cons!34607 (t!233774 (t!233774 s!2253)))) b!2907471))

(declare-fun b!2907484 () Bool)

(declare-fun e!1835339 () Bool)

(declare-fun tp!933995 () Bool)

(assert (=> b!2907484 (= e!1835339 tp!933995)))

(declare-fun b!2907485 () Bool)

(declare-fun tp!933996 () Bool)

(declare-fun tp!933997 () Bool)

(assert (=> b!2907485 (= e!1835339 (and tp!933996 tp!933997))))

(declare-fun b!2907483 () Bool)

(declare-fun tp!933993 () Bool)

(declare-fun tp!933994 () Bool)

(assert (=> b!2907483 (= e!1835339 (and tp!933993 tp!933994))))

(declare-fun b!2907482 () Bool)

(assert (=> b!2907482 (= e!1835339 tp_is_empty!15407)))

(assert (=> b!2907408 (= tp!933964 e!1835339)))

(assert (= (and b!2907408 (is-ElementMatch!8910 (h!40028 (exprs!3238 setElem!25792)))) b!2907482))

(assert (= (and b!2907408 (is-Concat!14231 (h!40028 (exprs!3238 setElem!25792)))) b!2907483))

(assert (= (and b!2907408 (is-Star!8910 (h!40028 (exprs!3238 setElem!25792)))) b!2907484))

(assert (= (and b!2907408 (is-Union!8910 (h!40028 (exprs!3238 setElem!25792)))) b!2907485))

(declare-fun b!2907486 () Bool)

(declare-fun e!1835340 () Bool)

(declare-fun tp!933998 () Bool)

(declare-fun tp!933999 () Bool)

(assert (=> b!2907486 (= e!1835340 (and tp!933998 tp!933999))))

(assert (=> b!2907408 (= tp!933965 e!1835340)))

(assert (= (and b!2907408 (is-Cons!34608 (t!233775 (exprs!3238 setElem!25792)))) b!2907486))

(declare-fun b!2907487 () Bool)

(declare-fun e!1835341 () Bool)

(declare-fun tp!934000 () Bool)

(declare-fun tp!934001 () Bool)

(assert (=> b!2907487 (= e!1835341 (and tp!934000 tp!934001))))

(assert (=> b!2907397 (= tp!933954 e!1835341)))

(assert (= (and b!2907397 (is-Cons!34608 (exprs!3238 setElem!25798))) b!2907487))

(declare-fun condSetEmpty!25802 () Bool)

(assert (=> setNonEmpty!25798 (= condSetEmpty!25802 (= setRest!25798 (as set.empty (Set Context!5476))))))

(declare-fun setRes!25802 () Bool)

(assert (=> setNonEmpty!25798 (= tp!933955 setRes!25802)))

(declare-fun setIsEmpty!25802 () Bool)

(assert (=> setIsEmpty!25802 setRes!25802))

(declare-fun setNonEmpty!25802 () Bool)

(declare-fun e!1835342 () Bool)

(declare-fun tp!934003 () Bool)

(declare-fun setElem!25802 () Context!5476)

(assert (=> setNonEmpty!25802 (= setRes!25802 (and tp!934003 (inv!46731 setElem!25802) e!1835342))))

(declare-fun setRest!25802 () (Set Context!5476))

(assert (=> setNonEmpty!25802 (= setRest!25798 (set.union (set.insert setElem!25802 (as set.empty (Set Context!5476))) setRest!25802))))

(declare-fun b!2907488 () Bool)

(declare-fun tp!934002 () Bool)

(assert (=> b!2907488 (= e!1835342 tp!934002)))

(assert (= (and setNonEmpty!25798 condSetEmpty!25802) setIsEmpty!25802))

(assert (= (and setNonEmpty!25798 (not condSetEmpty!25802)) setNonEmpty!25802))

(assert (= setNonEmpty!25802 b!2907488))

(declare-fun m!3309193 () Bool)

(assert (=> setNonEmpty!25802 m!3309193))

(declare-fun b!2907489 () Bool)

(declare-fun e!1835343 () Bool)

(declare-fun tp!934004 () Bool)

(assert (=> b!2907489 (= e!1835343 (and tp_is_empty!15407 tp!934004))))

(assert (=> b!2907403 (= tp!933959 e!1835343)))

(assert (= (and b!2907403 (is-Cons!34607 (t!233774 (t!233774 prefix!909)))) b!2907489))

(declare-fun b_lambda!86337 () Bool)

(assert (= b_lambda!86335 (or d!836385 b_lambda!86337)))

(declare-fun bs!524166 () Bool)

(declare-fun d!836443 () Bool)

(assert (= bs!524166 (and d!836443 d!836385)))

(declare-fun validRegex!3666 (Regex!8910) Bool)

(assert (=> bs!524166 (= (dynLambda!14346 lambda!107758 (h!40028 (exprs!3238 setElem!25792))) (validRegex!3666 (h!40028 (exprs!3238 setElem!25792))))))

(declare-fun m!3309195 () Bool)

(assert (=> bs!524166 m!3309195))

(assert (=> b!2907453 d!836443))

(push 1)

(assert (not b!2907448))

(assert (not b!2907458))

(assert (not b!2907484))

(assert (not b!2907483))

(assert (not b!2907442))

(assert (not b!2907447))

(assert (not b!2907456))

(assert (not d!836413))

(assert (not bs!524166))

(assert (not b!2907486))

(assert (not b!2907454))

(assert (not b!2907487))

(assert (not d!836439))

(assert (not b!2907464))

(assert (not b_lambda!86337))

(assert (not bm!189723))

(assert (not b!2907466))

(assert (not setNonEmpty!25802))

(assert (not d!836437))

(assert (not b!2907457))

(assert (not b!2907467))

(assert (not b!2907465))

(assert (not b!2907460))

(assert (not b!2907489))

(assert (not b!2907488))

(assert (not b!2907471))

(assert (not b!2907468))

(assert (not d!836425))

(assert (not b!2907485))

(assert tp_is_empty!15407)

(assert (not b!2907440))

(assert (not b!2907462))

(assert (not bm!189722))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


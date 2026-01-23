; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!541740 () Bool)

(assert start!541740)

(declare-fun b!5128370 () Bool)

(declare-fun e!3198333 () Bool)

(declare-datatypes ((C!28854 0))(
  ( (C!28855 (val!24079 Int)) )
))
(declare-datatypes ((Regex!14294 0))(
  ( (ElementMatch!14294 (c!881898 C!28854)) (Concat!23139 (regOne!29100 Regex!14294) (regTwo!29100 Regex!14294)) (EmptyExpr!14294) (Star!14294 (reg!14623 Regex!14294)) (EmptyLang!14294) (Union!14294 (regOne!29101 Regex!14294) (regTwo!29101 Regex!14294)) )
))
(declare-datatypes ((List!59519 0))(
  ( (Nil!59395) (Cons!59395 (h!65843 Regex!14294) (t!372546 List!59519)) )
))
(declare-datatypes ((Context!7356 0))(
  ( (Context!7357 (exprs!4178 List!59519)) )
))
(declare-fun z!1113 () (Set Context!7356))

(declare-fun lambda!252530 () Int)

(declare-fun nullableContext!13 (Context!7356) Bool)

(declare-fun getWitness!707 ((Set Context!7356) Int) Context!7356)

(assert (=> b!5128370 (= e!3198333 (not (nullableContext!13 (getWitness!707 z!1113 lambda!252530))))))

(declare-fun res!2183565 () Bool)

(assert (=> start!541740 (=> (not res!2183565) (not e!3198333))))

(declare-fun nullableZipper!1079 ((Set Context!7356)) Bool)

(assert (=> start!541740 (= res!2183565 (nullableZipper!1079 z!1113))))

(assert (=> start!541740 e!3198333))

(declare-fun condSetEmpty!30851 () Bool)

(assert (=> start!541740 (= condSetEmpty!30851 (= z!1113 (as set.empty (Set Context!7356))))))

(declare-fun setRes!30851 () Bool)

(assert (=> start!541740 setRes!30851))

(declare-fun b!5128371 () Bool)

(declare-fun e!3198332 () Bool)

(declare-fun tp!1430767 () Bool)

(assert (=> b!5128371 (= e!3198332 tp!1430767)))

(declare-fun setIsEmpty!30851 () Bool)

(assert (=> setIsEmpty!30851 setRes!30851))

(declare-fun tp!1430766 () Bool)

(declare-fun setNonEmpty!30851 () Bool)

(declare-fun setElem!30851 () Context!7356)

(declare-fun inv!78917 (Context!7356) Bool)

(assert (=> setNonEmpty!30851 (= setRes!30851 (and tp!1430766 (inv!78917 setElem!30851) e!3198332))))

(declare-fun setRest!30851 () (Set Context!7356))

(assert (=> setNonEmpty!30851 (= z!1113 (set.union (set.insert setElem!30851 (as set.empty (Set Context!7356))) setRest!30851))))

(declare-fun b!5128372 () Bool)

(declare-fun res!2183566 () Bool)

(assert (=> b!5128372 (=> (not res!2183566) (not e!3198333))))

(declare-fun exists!1551 ((Set Context!7356) Int) Bool)

(assert (=> b!5128372 (= res!2183566 (exists!1551 z!1113 lambda!252530))))

(assert (= (and start!541740 res!2183565) b!5128372))

(assert (= (and b!5128372 res!2183566) b!5128370))

(assert (= (and start!541740 condSetEmpty!30851) setIsEmpty!30851))

(assert (= (and start!541740 (not condSetEmpty!30851)) setNonEmpty!30851))

(assert (= setNonEmpty!30851 b!5128371))

(declare-fun m!6192622 () Bool)

(assert (=> b!5128370 m!6192622))

(assert (=> b!5128370 m!6192622))

(declare-fun m!6192624 () Bool)

(assert (=> b!5128370 m!6192624))

(declare-fun m!6192626 () Bool)

(assert (=> start!541740 m!6192626))

(declare-fun m!6192628 () Bool)

(assert (=> setNonEmpty!30851 m!6192628))

(declare-fun m!6192630 () Bool)

(assert (=> b!5128372 m!6192630))

(push 1)

(assert (not b!5128372))

(assert (not b!5128370))

(assert (not setNonEmpty!30851))

(assert (not b!5128371))

(assert (not start!541740))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1658937 () Bool)

(declare-fun lambda!252538 () Int)

(declare-fun forall!13688 (List!59519 Int) Bool)

(assert (=> d!1658937 (= (inv!78917 setElem!30851) (forall!13688 (exprs!4178 setElem!30851) lambda!252538))))

(declare-fun bs!1194780 () Bool)

(assert (= bs!1194780 d!1658937))

(declare-fun m!6192642 () Bool)

(assert (=> bs!1194780 m!6192642))

(assert (=> setNonEmpty!30851 d!1658937))

(declare-fun d!1658939 () Bool)

(declare-fun lt!2115205 () Bool)

(declare-datatypes ((List!59521 0))(
  ( (Nil!59397) (Cons!59397 (h!65845 Context!7356) (t!372548 List!59521)) )
))
(declare-fun exists!1553 (List!59521 Int) Bool)

(declare-fun toList!8292 ((Set Context!7356)) List!59521)

(assert (=> d!1658939 (= lt!2115205 (exists!1553 (toList!8292 z!1113) lambda!252530))))

(declare-fun choose!37789 ((Set Context!7356) Int) Bool)

(assert (=> d!1658939 (= lt!2115205 (choose!37789 z!1113 lambda!252530))))

(assert (=> d!1658939 (= (exists!1551 z!1113 lambda!252530) lt!2115205)))

(declare-fun bs!1194781 () Bool)

(assert (= bs!1194781 d!1658939))

(declare-fun m!6192644 () Bool)

(assert (=> bs!1194781 m!6192644))

(assert (=> bs!1194781 m!6192644))

(declare-fun m!6192646 () Bool)

(assert (=> bs!1194781 m!6192646))

(declare-fun m!6192648 () Bool)

(assert (=> bs!1194781 m!6192648))

(assert (=> b!5128372 d!1658939))

(declare-fun bs!1194782 () Bool)

(declare-fun d!1658941 () Bool)

(assert (= bs!1194782 (and d!1658941 d!1658937)))

(declare-fun lambda!252541 () Int)

(assert (=> bs!1194782 (not (= lambda!252541 lambda!252538))))

(assert (=> d!1658941 (= (nullableContext!13 (getWitness!707 z!1113 lambda!252530)) (forall!13688 (exprs!4178 (getWitness!707 z!1113 lambda!252530)) lambda!252541))))

(declare-fun bs!1194783 () Bool)

(assert (= bs!1194783 d!1658941))

(declare-fun m!6192650 () Bool)

(assert (=> bs!1194783 m!6192650))

(assert (=> b!5128370 d!1658941))

(declare-fun d!1658943 () Bool)

(declare-fun e!3198342 () Bool)

(assert (=> d!1658943 e!3198342))

(declare-fun res!2183575 () Bool)

(assert (=> d!1658943 (=> (not res!2183575) (not e!3198342))))

(declare-fun lt!2115208 () Context!7356)

(declare-fun dynLambda!23630 (Int Context!7356) Bool)

(assert (=> d!1658943 (= res!2183575 (dynLambda!23630 lambda!252530 lt!2115208))))

(declare-fun getWitness!709 (List!59521 Int) Context!7356)

(assert (=> d!1658943 (= lt!2115208 (getWitness!709 (toList!8292 z!1113) lambda!252530))))

(assert (=> d!1658943 (exists!1551 z!1113 lambda!252530)))

(assert (=> d!1658943 (= (getWitness!707 z!1113 lambda!252530) lt!2115208)))

(declare-fun b!5128384 () Bool)

(assert (=> b!5128384 (= e!3198342 (set.member lt!2115208 z!1113))))

(assert (= (and d!1658943 res!2183575) b!5128384))

(declare-fun b_lambda!199153 () Bool)

(assert (=> (not b_lambda!199153) (not d!1658943)))

(declare-fun m!6192652 () Bool)

(assert (=> d!1658943 m!6192652))

(assert (=> d!1658943 m!6192644))

(assert (=> d!1658943 m!6192644))

(declare-fun m!6192654 () Bool)

(assert (=> d!1658943 m!6192654))

(assert (=> d!1658943 m!6192630))

(declare-fun m!6192656 () Bool)

(assert (=> b!5128384 m!6192656))

(assert (=> b!5128370 d!1658943))

(declare-fun bs!1194784 () Bool)

(declare-fun d!1658947 () Bool)

(assert (= bs!1194784 (and d!1658947 b!5128372)))

(declare-fun lambda!252544 () Int)

(assert (=> bs!1194784 (= lambda!252544 lambda!252530)))

(assert (=> d!1658947 (= (nullableZipper!1079 z!1113) (exists!1551 z!1113 lambda!252544))))

(declare-fun bs!1194785 () Bool)

(assert (= bs!1194785 d!1658947))

(declare-fun m!6192658 () Bool)

(assert (=> bs!1194785 m!6192658))

(assert (=> start!541740 d!1658947))

(declare-fun condSetEmpty!30857 () Bool)

(assert (=> setNonEmpty!30851 (= condSetEmpty!30857 (= setRest!30851 (as set.empty (Set Context!7356))))))

(declare-fun setRes!30857 () Bool)

(assert (=> setNonEmpty!30851 (= tp!1430766 setRes!30857)))

(declare-fun setIsEmpty!30857 () Bool)

(assert (=> setIsEmpty!30857 setRes!30857))

(declare-fun setNonEmpty!30857 () Bool)

(declare-fun tp!1430778 () Bool)

(declare-fun setElem!30857 () Context!7356)

(declare-fun e!3198345 () Bool)

(assert (=> setNonEmpty!30857 (= setRes!30857 (and tp!1430778 (inv!78917 setElem!30857) e!3198345))))

(declare-fun setRest!30857 () (Set Context!7356))

(assert (=> setNonEmpty!30857 (= setRest!30851 (set.union (set.insert setElem!30857 (as set.empty (Set Context!7356))) setRest!30857))))

(declare-fun b!5128389 () Bool)

(declare-fun tp!1430779 () Bool)

(assert (=> b!5128389 (= e!3198345 tp!1430779)))

(assert (= (and setNonEmpty!30851 condSetEmpty!30857) setIsEmpty!30857))

(assert (= (and setNonEmpty!30851 (not condSetEmpty!30857)) setNonEmpty!30857))

(assert (= setNonEmpty!30857 b!5128389))

(declare-fun m!6192660 () Bool)

(assert (=> setNonEmpty!30857 m!6192660))

(declare-fun b!5128394 () Bool)

(declare-fun e!3198348 () Bool)

(declare-fun tp!1430784 () Bool)

(declare-fun tp!1430785 () Bool)

(assert (=> b!5128394 (= e!3198348 (and tp!1430784 tp!1430785))))

(assert (=> b!5128371 (= tp!1430767 e!3198348)))

(assert (= (and b!5128371 (is-Cons!59395 (exprs!4178 setElem!30851))) b!5128394))

(declare-fun b_lambda!199155 () Bool)

(assert (= b_lambda!199153 (or b!5128372 b_lambda!199155)))

(declare-fun bs!1194786 () Bool)

(declare-fun d!1658949 () Bool)

(assert (= bs!1194786 (and d!1658949 b!5128372)))

(assert (=> bs!1194786 (= (dynLambda!23630 lambda!252530 lt!2115208) (nullableContext!13 lt!2115208))))

(declare-fun m!6192662 () Bool)

(assert (=> bs!1194786 m!6192662))

(assert (=> d!1658943 d!1658949))

(push 1)

(assert (not b_lambda!199155))

(assert (not d!1658939))

(assert (not d!1658943))

(assert (not bs!1194786))

(assert (not d!1658947))

(assert (not b!5128394))

(assert (not d!1658941))

(assert (not setNonEmpty!30857))

(assert (not b!5128389))

(assert (not d!1658937))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!541794 () Bool)

(assert start!541794)

(declare-fun bs!1194823 () Bool)

(declare-fun b!5128484 () Bool)

(declare-fun b!5128482 () Bool)

(assert (= bs!1194823 (and b!5128484 b!5128482)))

(declare-fun lambda!252601 () Int)

(declare-fun lambda!252600 () Int)

(assert (=> bs!1194823 (not (= lambda!252601 lambda!252600))))

(declare-fun setIsEmpty!30875 () Bool)

(declare-fun setRes!30875 () Bool)

(assert (=> setIsEmpty!30875 setRes!30875))

(declare-fun b!5128480 () Bool)

(declare-fun res!2183625 () Bool)

(declare-fun e!3198414 () Bool)

(assert (=> b!5128480 (=> (not res!2183625) (not e!3198414))))

(declare-datatypes ((C!28862 0))(
  ( (C!28863 (val!24083 Int)) )
))
(declare-datatypes ((Regex!14298 0))(
  ( (ElementMatch!14298 (c!881932 C!28862)) (Concat!23143 (regOne!29108 Regex!14298) (regTwo!29108 Regex!14298)) (EmptyExpr!14298) (Star!14298 (reg!14627 Regex!14298)) (EmptyLang!14298) (Union!14298 (regOne!29109 Regex!14298) (regTwo!29109 Regex!14298)) )
))
(declare-datatypes ((List!59526 0))(
  ( (Nil!59402) (Cons!59402 (h!65850 Regex!14298) (t!372553 List!59526)) )
))
(declare-datatypes ((Context!7364 0))(
  ( (Context!7365 (exprs!4182 List!59526)) )
))
(declare-fun z!1113 () (Set Context!7364))

(declare-fun lambda!252599 () Int)

(declare-fun exists!1557 ((Set Context!7364) Int) Bool)

(assert (=> b!5128480 (= res!2183625 (exists!1557 z!1113 lambda!252599))))

(declare-fun res!2183626 () Bool)

(assert (=> start!541794 (=> (not res!2183626) (not e!3198414))))

(declare-fun nullableZipper!1083 ((Set Context!7364)) Bool)

(assert (=> start!541794 (= res!2183626 (nullableZipper!1083 z!1113))))

(assert (=> start!541794 e!3198414))

(declare-fun condSetEmpty!30875 () Bool)

(assert (=> start!541794 (= condSetEmpty!30875 (= z!1113 (as set.empty (Set Context!7364))))))

(assert (=> start!541794 setRes!30875))

(declare-fun b!5128481 () Bool)

(declare-fun e!3198415 () Bool)

(declare-fun tp!1430838 () Bool)

(assert (=> b!5128481 (= e!3198415 tp!1430838)))

(declare-fun e!3198417 () Bool)

(declare-fun e!3198416 () Bool)

(assert (=> b!5128482 (= e!3198417 (not e!3198416))))

(declare-fun res!2183624 () Bool)

(assert (=> b!5128482 (=> res!2183624 e!3198416)))

(declare-fun lt!2115250 () Context!7364)

(assert (=> b!5128482 (= res!2183624 (not (set.member lt!2115250 z!1113)))))

(declare-fun forall!13691 (List!59526 Int) Bool)

(assert (=> b!5128482 (forall!13691 (exprs!4182 lt!2115250) lambda!252600)))

(declare-datatypes ((Unit!150602 0))(
  ( (Unit!150603) )
))
(declare-fun lt!2115249 () Unit!150602)

(declare-fun lemmaContextForallValidExprs!13 (Context!7364 List!59526) Unit!150602)

(assert (=> b!5128482 (= lt!2115249 (lemmaContextForallValidExprs!13 lt!2115250 (exprs!4182 lt!2115250)))))

(declare-fun setNonEmpty!30875 () Bool)

(declare-fun tp!1430839 () Bool)

(declare-fun setElem!30875 () Context!7364)

(declare-fun inv!78927 (Context!7364) Bool)

(assert (=> setNonEmpty!30875 (= setRes!30875 (and tp!1430839 (inv!78927 setElem!30875) e!3198415))))

(declare-fun setRest!30875 () (Set Context!7364))

(assert (=> setNonEmpty!30875 (= z!1113 (set.union (set.insert setElem!30875 (as set.empty (Set Context!7364))) setRest!30875))))

(declare-fun b!5128483 () Bool)

(assert (=> b!5128483 (= e!3198414 e!3198417)))

(declare-fun res!2183623 () Bool)

(assert (=> b!5128483 (=> (not res!2183623) (not e!3198417))))

(declare-fun nullableContext!17 (Context!7364) Bool)

(assert (=> b!5128483 (= res!2183623 (nullableContext!17 lt!2115250))))

(declare-fun getWitness!714 ((Set Context!7364) Int) Context!7364)

(assert (=> b!5128483 (= lt!2115250 (getWitness!714 z!1113 lambda!252599))))

(assert (=> b!5128484 (= e!3198416 (forall!13691 (exprs!4182 lt!2115250) lambda!252601))))

(assert (= (and start!541794 res!2183626) b!5128480))

(assert (= (and b!5128480 res!2183625) b!5128483))

(assert (= (and b!5128483 res!2183623) b!5128482))

(assert (= (and b!5128482 (not res!2183624)) b!5128484))

(assert (= (and start!541794 condSetEmpty!30875) setIsEmpty!30875))

(assert (= (and start!541794 (not condSetEmpty!30875)) setNonEmpty!30875))

(assert (= setNonEmpty!30875 b!5128481))

(declare-fun m!6192770 () Bool)

(assert (=> b!5128480 m!6192770))

(declare-fun m!6192772 () Bool)

(assert (=> b!5128484 m!6192772))

(declare-fun m!6192774 () Bool)

(assert (=> b!5128482 m!6192774))

(declare-fun m!6192776 () Bool)

(assert (=> b!5128482 m!6192776))

(declare-fun m!6192778 () Bool)

(assert (=> b!5128482 m!6192778))

(declare-fun m!6192780 () Bool)

(assert (=> setNonEmpty!30875 m!6192780))

(declare-fun m!6192782 () Bool)

(assert (=> b!5128483 m!6192782))

(declare-fun m!6192784 () Bool)

(assert (=> b!5128483 m!6192784))

(declare-fun m!6192786 () Bool)

(assert (=> start!541794 m!6192786))

(push 1)

(assert (not b!5128481))

(assert (not b!5128482))

(assert (not b!5128484))

(assert (not start!541794))

(assert (not b!5128483))

(assert (not setNonEmpty!30875))

(assert (not b!5128480))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1194825 () Bool)

(declare-fun d!1658995 () Bool)

(assert (= bs!1194825 (and d!1658995 b!5128482)))

(declare-fun lambda!252615 () Int)

(assert (=> bs!1194825 (= lambda!252615 lambda!252600)))

(declare-fun bs!1194826 () Bool)

(assert (= bs!1194826 (and d!1658995 b!5128484)))

(assert (=> bs!1194826 (not (= lambda!252615 lambda!252601))))

(assert (=> d!1658995 (= (inv!78927 setElem!30875) (forall!13691 (exprs!4182 setElem!30875) lambda!252615))))

(declare-fun bs!1194827 () Bool)

(assert (= bs!1194827 d!1658995))

(declare-fun m!6192806 () Bool)

(assert (=> bs!1194827 m!6192806))

(assert (=> setNonEmpty!30875 d!1658995))

(declare-fun bs!1194828 () Bool)

(declare-fun d!1658997 () Bool)

(assert (= bs!1194828 (and d!1658997 b!5128480)))

(declare-fun lambda!252618 () Int)

(assert (=> bs!1194828 (= lambda!252618 lambda!252599)))

(assert (=> d!1658997 (= (nullableZipper!1083 z!1113) (exists!1557 z!1113 lambda!252618))))

(declare-fun bs!1194829 () Bool)

(assert (= bs!1194829 d!1658997))

(declare-fun m!6192808 () Bool)

(assert (=> bs!1194829 m!6192808))

(assert (=> start!541794 d!1658997))

(declare-fun d!1658999 () Bool)

(declare-fun res!2183643 () Bool)

(declare-fun e!3198434 () Bool)

(assert (=> d!1658999 (=> res!2183643 e!3198434)))

(assert (=> d!1658999 (= res!2183643 (is-Nil!59402 (exprs!4182 lt!2115250)))))

(assert (=> d!1658999 (= (forall!13691 (exprs!4182 lt!2115250) lambda!252600) e!3198434)))

(declare-fun b!5128504 () Bool)

(declare-fun e!3198435 () Bool)

(assert (=> b!5128504 (= e!3198434 e!3198435)))

(declare-fun res!2183644 () Bool)

(assert (=> b!5128504 (=> (not res!2183644) (not e!3198435))))

(declare-fun dynLambda!23634 (Int Regex!14298) Bool)

(assert (=> b!5128504 (= res!2183644 (dynLambda!23634 lambda!252600 (h!65850 (exprs!4182 lt!2115250))))))

(declare-fun b!5128505 () Bool)

(assert (=> b!5128505 (= e!3198435 (forall!13691 (t!372553 (exprs!4182 lt!2115250)) lambda!252600))))

(assert (= (and d!1658999 (not res!2183643)) b!5128504))

(assert (= (and b!5128504 res!2183644) b!5128505))

(declare-fun b_lambda!199173 () Bool)

(assert (=> (not b_lambda!199173) (not b!5128504)))

(declare-fun m!6192810 () Bool)

(assert (=> b!5128504 m!6192810))

(declare-fun m!6192812 () Bool)

(assert (=> b!5128505 m!6192812))

(assert (=> b!5128482 d!1658999))

(declare-fun bs!1194832 () Bool)

(declare-fun d!1659003 () Bool)

(assert (= bs!1194832 (and d!1659003 b!5128482)))

(declare-fun lambda!252624 () Int)

(assert (=> bs!1194832 (= lambda!252624 lambda!252600)))

(declare-fun bs!1194833 () Bool)

(assert (= bs!1194833 (and d!1659003 b!5128484)))

(assert (=> bs!1194833 (not (= lambda!252624 lambda!252601))))

(declare-fun bs!1194834 () Bool)

(assert (= bs!1194834 (and d!1659003 d!1658995)))

(assert (=> bs!1194834 (= lambda!252624 lambda!252615)))

(assert (=> d!1659003 (forall!13691 (exprs!4182 lt!2115250) lambda!252624)))

(declare-fun lt!2115259 () Unit!150602)

(declare-fun choose!37792 (Context!7364 List!59526) Unit!150602)

(assert (=> d!1659003 (= lt!2115259 (choose!37792 lt!2115250 (exprs!4182 lt!2115250)))))

(assert (=> d!1659003 (= (exprs!4182 lt!2115250) (exprs!4182 lt!2115250))))

(assert (=> d!1659003 (= (lemmaContextForallValidExprs!13 lt!2115250 (exprs!4182 lt!2115250)) lt!2115259)))

(declare-fun bs!1194835 () Bool)

(assert (= bs!1194835 d!1659003))

(declare-fun m!6192816 () Bool)

(assert (=> bs!1194835 m!6192816))

(declare-fun m!6192818 () Bool)

(assert (=> bs!1194835 m!6192818))

(assert (=> b!5128482 d!1659003))

(declare-fun d!1659007 () Bool)

(declare-fun lt!2115262 () Bool)

(declare-datatypes ((List!59528 0))(
  ( (Nil!59404) (Cons!59404 (h!65852 Context!7364) (t!372555 List!59528)) )
))
(declare-fun exists!1559 (List!59528 Int) Bool)

(declare-fun toList!8295 ((Set Context!7364)) List!59528)

(assert (=> d!1659007 (= lt!2115262 (exists!1559 (toList!8295 z!1113) lambda!252599))))

(declare-fun choose!37793 ((Set Context!7364) Int) Bool)

(assert (=> d!1659007 (= lt!2115262 (choose!37793 z!1113 lambda!252599))))

(assert (=> d!1659007 (= (exists!1557 z!1113 lambda!252599) lt!2115262)))

(declare-fun bs!1194839 () Bool)

(assert (= bs!1194839 d!1659007))

(declare-fun m!6192822 () Bool)

(assert (=> bs!1194839 m!6192822))

(assert (=> bs!1194839 m!6192822))

(declare-fun m!6192824 () Bool)

(assert (=> bs!1194839 m!6192824))

(declare-fun m!6192826 () Bool)

(assert (=> bs!1194839 m!6192826))

(assert (=> b!5128480 d!1659007))

(declare-fun d!1659011 () Bool)

(declare-fun res!2183645 () Bool)

(declare-fun e!3198436 () Bool)

(assert (=> d!1659011 (=> res!2183645 e!3198436)))

(assert (=> d!1659011 (= res!2183645 (is-Nil!59402 (exprs!4182 lt!2115250)))))

(assert (=> d!1659011 (= (forall!13691 (exprs!4182 lt!2115250) lambda!252601) e!3198436)))

(declare-fun b!5128506 () Bool)

(declare-fun e!3198437 () Bool)

(assert (=> b!5128506 (= e!3198436 e!3198437)))

(declare-fun res!2183646 () Bool)

(assert (=> b!5128506 (=> (not res!2183646) (not e!3198437))))

(assert (=> b!5128506 (= res!2183646 (dynLambda!23634 lambda!252601 (h!65850 (exprs!4182 lt!2115250))))))

(declare-fun b!5128507 () Bool)

(assert (=> b!5128507 (= e!3198437 (forall!13691 (t!372553 (exprs!4182 lt!2115250)) lambda!252601))))

(assert (= (and d!1659011 (not res!2183645)) b!5128506))

(assert (= (and b!5128506 res!2183646) b!5128507))

(declare-fun b_lambda!199175 () Bool)

(assert (=> (not b_lambda!199175) (not b!5128506)))

(declare-fun m!6192828 () Bool)

(assert (=> b!5128506 m!6192828))

(declare-fun m!6192830 () Bool)

(assert (=> b!5128507 m!6192830))

(assert (=> b!5128484 d!1659011))

(declare-fun bs!1194840 () Bool)

(declare-fun d!1659013 () Bool)

(assert (= bs!1194840 (and d!1659013 b!5128482)))

(declare-fun lambda!252630 () Int)

(assert (=> bs!1194840 (not (= lambda!252630 lambda!252600))))

(declare-fun bs!1194841 () Bool)

(assert (= bs!1194841 (and d!1659013 b!5128484)))

(assert (=> bs!1194841 (= lambda!252630 lambda!252601)))

(declare-fun bs!1194842 () Bool)

(assert (= bs!1194842 (and d!1659013 d!1658995)))

(assert (=> bs!1194842 (not (= lambda!252630 lambda!252615))))

(declare-fun bs!1194843 () Bool)

(assert (= bs!1194843 (and d!1659013 d!1659003)))

(assert (=> bs!1194843 (not (= lambda!252630 lambda!252624))))

(assert (=> d!1659013 (= (nullableContext!17 lt!2115250) (forall!13691 (exprs!4182 lt!2115250) lambda!252630))))

(declare-fun bs!1194844 () Bool)

(assert (= bs!1194844 d!1659013))

(declare-fun m!6192832 () Bool)

(assert (=> bs!1194844 m!6192832))

(assert (=> b!5128483 d!1659013))

(declare-fun d!1659015 () Bool)

(declare-fun e!3198449 () Bool)

(assert (=> d!1659015 e!3198449))

(declare-fun res!2183658 () Bool)

(assert (=> d!1659015 (=> (not res!2183658) (not e!3198449))))

(declare-fun lt!2115268 () Context!7364)

(declare-fun dynLambda!23636 (Int Context!7364) Bool)

(assert (=> d!1659015 (= res!2183658 (dynLambda!23636 lambda!252599 lt!2115268))))

(declare-fun getWitness!717 (List!59528 Int) Context!7364)

(assert (=> d!1659015 (= lt!2115268 (getWitness!717 (toList!8295 z!1113) lambda!252599))))

(assert (=> d!1659015 (exists!1557 z!1113 lambda!252599)))

(assert (=> d!1659015 (= (getWitness!714 z!1113 lambda!252599) lt!2115268)))

(declare-fun b!5128519 () Bool)

(assert (=> b!5128519 (= e!3198449 (set.member lt!2115268 z!1113))))

(assert (= (and d!1659015 res!2183658) b!5128519))

(declare-fun b_lambda!199181 () Bool)

(assert (=> (not b_lambda!199181) (not d!1659015)))

(declare-fun m!6192846 () Bool)

(assert (=> d!1659015 m!6192846))

(assert (=> d!1659015 m!6192822))

(assert (=> d!1659015 m!6192822))

(declare-fun m!6192848 () Bool)

(assert (=> d!1659015 m!6192848))

(assert (=> d!1659015 m!6192770))

(declare-fun m!6192850 () Bool)

(assert (=> b!5128519 m!6192850))

(assert (=> b!5128483 d!1659015))

(declare-fun condSetEmpty!30881 () Bool)

(assert (=> setNonEmpty!30875 (= condSetEmpty!30881 (= setRest!30875 (as set.empty (Set Context!7364))))))

(declare-fun setRes!30881 () Bool)

(assert (=> setNonEmpty!30875 (= tp!1430839 setRes!30881)))

(declare-fun setIsEmpty!30881 () Bool)

(assert (=> setIsEmpty!30881 setRes!30881))

(declare-fun e!3198452 () Bool)

(declare-fun tp!1430851 () Bool)

(declare-fun setElem!30881 () Context!7364)

(declare-fun setNonEmpty!30881 () Bool)

(assert (=> setNonEmpty!30881 (= setRes!30881 (and tp!1430851 (inv!78927 setElem!30881) e!3198452))))

(declare-fun setRest!30881 () (Set Context!7364))

(assert (=> setNonEmpty!30881 (= setRest!30875 (set.union (set.insert setElem!30881 (as set.empty (Set Context!7364))) setRest!30881))))

(declare-fun b!5128524 () Bool)

(declare-fun tp!1430850 () Bool)

(assert (=> b!5128524 (= e!3198452 tp!1430850)))

(assert (= (and setNonEmpty!30875 condSetEmpty!30881) setIsEmpty!30881))

(assert (= (and setNonEmpty!30875 (not condSetEmpty!30881)) setNonEmpty!30881))

(assert (= setNonEmpty!30881 b!5128524))

(declare-fun m!6192852 () Bool)

(assert (=> setNonEmpty!30881 m!6192852))

(declare-fun b!5128529 () Bool)

(declare-fun e!3198455 () Bool)

(declare-fun tp!1430856 () Bool)

(declare-fun tp!1430857 () Bool)

(assert (=> b!5128529 (= e!3198455 (and tp!1430856 tp!1430857))))

(assert (=> b!5128481 (= tp!1430838 e!3198455)))

(assert (= (and b!5128481 (is-Cons!59402 (exprs!4182 setElem!30875))) b!5128529))

(declare-fun b_lambda!199183 () Bool)

(assert (= b_lambda!199173 (or b!5128482 b_lambda!199183)))

(declare-fun bs!1194845 () Bool)

(declare-fun d!1659021 () Bool)

(assert (= bs!1194845 (and d!1659021 b!5128482)))

(declare-fun validRegex!6225 (Regex!14298) Bool)

(assert (=> bs!1194845 (= (dynLambda!23634 lambda!252600 (h!65850 (exprs!4182 lt!2115250))) (validRegex!6225 (h!65850 (exprs!4182 lt!2115250))))))

(declare-fun m!6192854 () Bool)

(assert (=> bs!1194845 m!6192854))

(assert (=> b!5128504 d!1659021))

(declare-fun b_lambda!199185 () Bool)

(assert (= b_lambda!199175 (or b!5128484 b_lambda!199185)))

(declare-fun bs!1194846 () Bool)

(declare-fun d!1659023 () Bool)

(assert (= bs!1194846 (and d!1659023 b!5128484)))

(declare-fun nullable!4729 (Regex!14298) Bool)

(assert (=> bs!1194846 (= (dynLambda!23634 lambda!252601 (h!65850 (exprs!4182 lt!2115250))) (nullable!4729 (h!65850 (exprs!4182 lt!2115250))))))

(declare-fun m!6192856 () Bool)

(assert (=> bs!1194846 m!6192856))

(assert (=> b!5128506 d!1659023))

(declare-fun b_lambda!199187 () Bool)

(assert (= b_lambda!199181 (or b!5128480 b_lambda!199187)))

(declare-fun bs!1194847 () Bool)

(declare-fun d!1659025 () Bool)

(assert (= bs!1194847 (and d!1659025 b!5128480)))

(assert (=> bs!1194847 (= (dynLambda!23636 lambda!252599 lt!2115268) (nullableContext!17 lt!2115268))))

(declare-fun m!6192858 () Bool)

(assert (=> bs!1194847 m!6192858))

(assert (=> d!1659015 d!1659025))

(push 1)

(assert (not bs!1194847))

(assert (not b!5128529))

(assert (not d!1658997))

(assert (not b!5128507))

(assert (not b!5128505))

(assert (not d!1659003))

(assert (not d!1659013))

(assert (not setNonEmpty!30881))

(assert (not d!1659007))

(assert (not b_lambda!199187))

(assert (not d!1658995))

(assert (not b_lambda!199183))

(assert (not d!1659015))

(assert (not bs!1194845))

(assert (not bs!1194846))

(assert (not b!5128524))

(assert (not b_lambda!199185))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!541762 () Bool)

(assert start!541762)

(declare-fun b!5128416 () Bool)

(declare-fun e!3198365 () Bool)

(declare-fun tp!1430803 () Bool)

(assert (=> b!5128416 (= e!3198365 tp!1430803)))

(declare-fun setRes!30863 () Bool)

(declare-fun tp!1430802 () Bool)

(declare-datatypes ((C!28858 0))(
  ( (C!28859 (val!24081 Int)) )
))
(declare-datatypes ((Regex!14296 0))(
  ( (ElementMatch!14296 (c!881914 C!28858)) (Concat!23141 (regOne!29104 Regex!14296) (regTwo!29104 Regex!14296)) (EmptyExpr!14296) (Star!14296 (reg!14625 Regex!14296)) (EmptyLang!14296) (Union!14296 (regOne!29105 Regex!14296) (regTwo!29105 Regex!14296)) )
))
(declare-datatypes ((List!59522 0))(
  ( (Nil!59398) (Cons!59398 (h!65846 Regex!14296) (t!372549 List!59522)) )
))
(declare-datatypes ((Context!7360 0))(
  ( (Context!7361 (exprs!4180 List!59522)) )
))
(declare-fun setElem!30863 () Context!7360)

(declare-fun setNonEmpty!30863 () Bool)

(declare-fun inv!78922 (Context!7360) Bool)

(assert (=> setNonEmpty!30863 (= setRes!30863 (and tp!1430802 (inv!78922 setElem!30863) e!3198365))))

(declare-fun z!1113 () (Set Context!7360))

(declare-fun setRest!30863 () (Set Context!7360))

(assert (=> setNonEmpty!30863 (= z!1113 (set.union (set.insert setElem!30863 (as set.empty (Set Context!7360))) setRest!30863))))

(declare-fun b!5128417 () Bool)

(declare-fun res!2183585 () Bool)

(declare-fun e!3198364 () Bool)

(assert (=> b!5128417 (=> (not res!2183585) (not e!3198364))))

(declare-fun lambda!252557 () Int)

(declare-fun exists!1554 ((Set Context!7360) Int) Bool)

(assert (=> b!5128417 (= res!2183585 (exists!1554 z!1113 lambda!252557))))

(declare-fun b!5128418 () Bool)

(declare-fun e!3198366 () Bool)

(declare-fun lt!2115219 () Context!7360)

(assert (=> b!5128418 (= e!3198366 (not (set.member lt!2115219 z!1113)))))

(declare-fun lambda!252558 () Int)

(declare-fun forall!13689 (List!59522 Int) Bool)

(assert (=> b!5128418 (forall!13689 (exprs!4180 lt!2115219) lambda!252558)))

(declare-datatypes ((Unit!150598 0))(
  ( (Unit!150599) )
))
(declare-fun lt!2115220 () Unit!150598)

(declare-fun lemmaContextForallValidExprs!11 (Context!7360 List!59522) Unit!150598)

(assert (=> b!5128418 (= lt!2115220 (lemmaContextForallValidExprs!11 lt!2115219 (exprs!4180 lt!2115219)))))

(declare-fun res!2183587 () Bool)

(assert (=> start!541762 (=> (not res!2183587) (not e!3198364))))

(declare-fun nullableZipper!1081 ((Set Context!7360)) Bool)

(assert (=> start!541762 (= res!2183587 (nullableZipper!1081 z!1113))))

(assert (=> start!541762 e!3198364))

(declare-fun condSetEmpty!30863 () Bool)

(assert (=> start!541762 (= condSetEmpty!30863 (= z!1113 (as set.empty (Set Context!7360))))))

(assert (=> start!541762 setRes!30863))

(declare-fun setIsEmpty!30863 () Bool)

(assert (=> setIsEmpty!30863 setRes!30863))

(declare-fun b!5128419 () Bool)

(assert (=> b!5128419 (= e!3198364 e!3198366)))

(declare-fun res!2183586 () Bool)

(assert (=> b!5128419 (=> (not res!2183586) (not e!3198366))))

(declare-fun nullableContext!15 (Context!7360) Bool)

(assert (=> b!5128419 (= res!2183586 (nullableContext!15 lt!2115219))))

(declare-fun getWitness!710 ((Set Context!7360) Int) Context!7360)

(assert (=> b!5128419 (= lt!2115219 (getWitness!710 z!1113 lambda!252557))))

(assert (= (and start!541762 res!2183587) b!5128417))

(assert (= (and b!5128417 res!2183585) b!5128419))

(assert (= (and b!5128419 res!2183586) b!5128418))

(assert (= (and start!541762 condSetEmpty!30863) setIsEmpty!30863))

(assert (= (and start!541762 (not condSetEmpty!30863)) setNonEmpty!30863))

(assert (= setNonEmpty!30863 b!5128416))

(declare-fun m!6192674 () Bool)

(assert (=> b!5128418 m!6192674))

(declare-fun m!6192676 () Bool)

(assert (=> b!5128418 m!6192676))

(declare-fun m!6192678 () Bool)

(assert (=> b!5128418 m!6192678))

(declare-fun m!6192680 () Bool)

(assert (=> b!5128417 m!6192680))

(declare-fun m!6192682 () Bool)

(assert (=> b!5128419 m!6192682))

(declare-fun m!6192684 () Bool)

(assert (=> b!5128419 m!6192684))

(declare-fun m!6192686 () Bool)

(assert (=> setNonEmpty!30863 m!6192686))

(declare-fun m!6192688 () Bool)

(assert (=> start!541762 m!6192688))

(push 1)

(assert (not start!541762))

(assert (not b!5128416))

(assert (not setNonEmpty!30863))

(assert (not b!5128418))

(assert (not b!5128419))

(assert (not b!5128417))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1194793 () Bool)

(declare-fun d!1658958 () Bool)

(assert (= bs!1194793 (and d!1658958 b!5128418)))

(declare-fun lambda!252569 () Int)

(assert (=> bs!1194793 (= lambda!252569 lambda!252558)))

(assert (=> d!1658958 (= (inv!78922 setElem!30863) (forall!13689 (exprs!4180 setElem!30863) lambda!252569))))

(declare-fun bs!1194794 () Bool)

(assert (= bs!1194794 d!1658958))

(declare-fun m!6192706 () Bool)

(assert (=> bs!1194794 m!6192706))

(assert (=> setNonEmpty!30863 d!1658958))

(declare-fun d!1658960 () Bool)

(declare-fun lt!2115229 () Bool)

(declare-datatypes ((List!59524 0))(
  ( (Nil!59400) (Cons!59400 (h!65848 Context!7360) (t!372551 List!59524)) )
))
(declare-fun exists!1556 (List!59524 Int) Bool)

(declare-fun toList!8293 ((Set Context!7360)) List!59524)

(assert (=> d!1658960 (= lt!2115229 (exists!1556 (toList!8293 z!1113) lambda!252557))))

(declare-fun choose!37790 ((Set Context!7360) Int) Bool)

(assert (=> d!1658960 (= lt!2115229 (choose!37790 z!1113 lambda!252557))))

(assert (=> d!1658960 (= (exists!1554 z!1113 lambda!252557) lt!2115229)))

(declare-fun bs!1194795 () Bool)

(assert (= bs!1194795 d!1658960))

(declare-fun m!6192708 () Bool)

(assert (=> bs!1194795 m!6192708))

(assert (=> bs!1194795 m!6192708))

(declare-fun m!6192710 () Bool)

(assert (=> bs!1194795 m!6192710))

(declare-fun m!6192712 () Bool)

(assert (=> bs!1194795 m!6192712))

(assert (=> b!5128417 d!1658960))

(declare-fun d!1658962 () Bool)

(declare-fun res!2183601 () Bool)

(declare-fun e!3198380 () Bool)

(assert (=> d!1658962 (=> res!2183601 e!3198380)))

(assert (=> d!1658962 (= res!2183601 (is-Nil!59398 (exprs!4180 lt!2115219)))))

(assert (=> d!1658962 (= (forall!13689 (exprs!4180 lt!2115219) lambda!252558) e!3198380)))

(declare-fun b!5128436 () Bool)

(declare-fun e!3198381 () Bool)

(assert (=> b!5128436 (= e!3198380 e!3198381)))

(declare-fun res!2183602 () Bool)

(assert (=> b!5128436 (=> (not res!2183602) (not e!3198381))))

(declare-fun dynLambda!23631 (Int Regex!14296) Bool)

(assert (=> b!5128436 (= res!2183602 (dynLambda!23631 lambda!252558 (h!65846 (exprs!4180 lt!2115219))))))

(declare-fun b!5128437 () Bool)

(assert (=> b!5128437 (= e!3198381 (forall!13689 (t!372549 (exprs!4180 lt!2115219)) lambda!252558))))

(assert (= (and d!1658962 (not res!2183601)) b!5128436))

(assert (= (and b!5128436 res!2183602) b!5128437))

(declare-fun b_lambda!199157 () Bool)

(assert (=> (not b_lambda!199157) (not b!5128436)))

(declare-fun m!6192714 () Bool)

(assert (=> b!5128436 m!6192714))

(declare-fun m!6192716 () Bool)

(assert (=> b!5128437 m!6192716))

(assert (=> b!5128418 d!1658962))

(declare-fun bs!1194796 () Bool)

(declare-fun d!1658966 () Bool)

(assert (= bs!1194796 (and d!1658966 b!5128418)))

(declare-fun lambda!252574 () Int)

(assert (=> bs!1194796 (= lambda!252574 lambda!252558)))

(declare-fun bs!1194797 () Bool)

(assert (= bs!1194797 (and d!1658966 d!1658958)))

(assert (=> bs!1194797 (= lambda!252574 lambda!252569)))

(assert (=> d!1658966 (forall!13689 (exprs!4180 lt!2115219) lambda!252574)))

(declare-fun lt!2115232 () Unit!150598)

(declare-fun choose!37791 (Context!7360 List!59522) Unit!150598)

(assert (=> d!1658966 (= lt!2115232 (choose!37791 lt!2115219 (exprs!4180 lt!2115219)))))

(assert (=> d!1658966 (= (exprs!4180 lt!2115219) (exprs!4180 lt!2115219))))

(assert (=> d!1658966 (= (lemmaContextForallValidExprs!11 lt!2115219 (exprs!4180 lt!2115219)) lt!2115232)))

(declare-fun bs!1194798 () Bool)

(assert (= bs!1194798 d!1658966))

(declare-fun m!6192718 () Bool)

(assert (=> bs!1194798 m!6192718))

(declare-fun m!6192720 () Bool)

(assert (=> bs!1194798 m!6192720))

(assert (=> b!5128418 d!1658966))

(declare-fun bs!1194800 () Bool)

(declare-fun d!1658968 () Bool)

(assert (= bs!1194800 (and d!1658968 b!5128418)))

(declare-fun lambda!252578 () Int)

(assert (=> bs!1194800 (not (= lambda!252578 lambda!252558))))

(declare-fun bs!1194801 () Bool)

(assert (= bs!1194801 (and d!1658968 d!1658958)))

(assert (=> bs!1194801 (not (= lambda!252578 lambda!252569))))

(declare-fun bs!1194802 () Bool)

(assert (= bs!1194802 (and d!1658968 d!1658966)))

(assert (=> bs!1194802 (not (= lambda!252578 lambda!252574))))

(assert (=> d!1658968 (= (nullableContext!15 lt!2115219) (forall!13689 (exprs!4180 lt!2115219) lambda!252578))))

(declare-fun bs!1194803 () Bool)

(assert (= bs!1194803 d!1658968))

(declare-fun m!6192724 () Bool)

(assert (=> bs!1194803 m!6192724))

(assert (=> b!5128419 d!1658968))

(declare-fun d!1658970 () Bool)

(declare-fun e!3198384 () Bool)

(assert (=> d!1658970 e!3198384))

(declare-fun res!2183605 () Bool)

(assert (=> d!1658970 (=> (not res!2183605) (not e!3198384))))

(declare-fun lt!2115235 () Context!7360)

(declare-fun dynLambda!23632 (Int Context!7360) Bool)

(assert (=> d!1658970 (= res!2183605 (dynLambda!23632 lambda!252557 lt!2115235))))

(declare-fun getWitness!712 (List!59524 Int) Context!7360)

(assert (=> d!1658970 (= lt!2115235 (getWitness!712 (toList!8293 z!1113) lambda!252557))))

(assert (=> d!1658970 (exists!1554 z!1113 lambda!252557)))

(assert (=> d!1658970 (= (getWitness!710 z!1113 lambda!252557) lt!2115235)))

(declare-fun b!5128440 () Bool)

(assert (=> b!5128440 (= e!3198384 (set.member lt!2115235 z!1113))))

(assert (= (and d!1658970 res!2183605) b!5128440))

(declare-fun b_lambda!199159 () Bool)

(assert (=> (not b_lambda!199159) (not d!1658970)))

(declare-fun m!6192726 () Bool)

(assert (=> d!1658970 m!6192726))

(assert (=> d!1658970 m!6192708))

(assert (=> d!1658970 m!6192708))

(declare-fun m!6192728 () Bool)

(assert (=> d!1658970 m!6192728))

(assert (=> d!1658970 m!6192680))

(declare-fun m!6192730 () Bool)

(assert (=> b!5128440 m!6192730))

(assert (=> b!5128419 d!1658970))

(declare-fun bs!1194805 () Bool)

(declare-fun d!1658974 () Bool)

(assert (= bs!1194805 (and d!1658974 b!5128417)))

(declare-fun lambda!252581 () Int)

(assert (=> bs!1194805 (= lambda!252581 lambda!252557)))

(assert (=> d!1658974 (= (nullableZipper!1081 z!1113) (exists!1554 z!1113 lambda!252581))))

(declare-fun bs!1194806 () Bool)

(assert (= bs!1194806 d!1658974))

(declare-fun m!6192732 () Bool)

(assert (=> bs!1194806 m!6192732))

(assert (=> start!541762 d!1658974))

(declare-fun condSetEmpty!30869 () Bool)

(assert (=> setNonEmpty!30863 (= condSetEmpty!30869 (= setRest!30863 (as set.empty (Set Context!7360))))))

(declare-fun setRes!30869 () Bool)

(assert (=> setNonEmpty!30863 (= tp!1430802 setRes!30869)))

(declare-fun setIsEmpty!30869 () Bool)

(assert (=> setIsEmpty!30869 setRes!30869))

(declare-fun tp!1430814 () Bool)

(declare-fun setNonEmpty!30869 () Bool)

(declare-fun setElem!30869 () Context!7360)

(declare-fun e!3198389 () Bool)

(assert (=> setNonEmpty!30869 (= setRes!30869 (and tp!1430814 (inv!78922 setElem!30869) e!3198389))))

(declare-fun setRest!30869 () (Set Context!7360))

(assert (=> setNonEmpty!30869 (= setRest!30863 (set.union (set.insert setElem!30869 (as set.empty (Set Context!7360))) setRest!30869))))

(declare-fun b!5128447 () Bool)

(declare-fun tp!1430815 () Bool)

(assert (=> b!5128447 (= e!3198389 tp!1430815)))

(assert (= (and setNonEmpty!30863 condSetEmpty!30869) setIsEmpty!30869))

(assert (= (and setNonEmpty!30863 (not condSetEmpty!30869)) setNonEmpty!30869))

(assert (= setNonEmpty!30869 b!5128447))

(declare-fun m!6192734 () Bool)

(assert (=> setNonEmpty!30869 m!6192734))

(declare-fun b!5128452 () Bool)

(declare-fun e!3198392 () Bool)

(declare-fun tp!1430820 () Bool)

(declare-fun tp!1430821 () Bool)

(assert (=> b!5128452 (= e!3198392 (and tp!1430820 tp!1430821))))

(assert (=> b!5128416 (= tp!1430803 e!3198392)))

(assert (= (and b!5128416 (is-Cons!59398 (exprs!4180 setElem!30863))) b!5128452))

(declare-fun b_lambda!199161 () Bool)

(assert (= b_lambda!199159 (or b!5128417 b_lambda!199161)))

(declare-fun bs!1194807 () Bool)

(declare-fun d!1658976 () Bool)

(assert (= bs!1194807 (and d!1658976 b!5128417)))

(assert (=> bs!1194807 (= (dynLambda!23632 lambda!252557 lt!2115235) (nullableContext!15 lt!2115235))))

(declare-fun m!6192736 () Bool)

(assert (=> bs!1194807 m!6192736))

(assert (=> d!1658970 d!1658976))

(declare-fun b_lambda!199163 () Bool)

(assert (= b_lambda!199157 (or b!5128418 b_lambda!199163)))

(declare-fun bs!1194808 () Bool)

(declare-fun d!1658978 () Bool)

(assert (= bs!1194808 (and d!1658978 b!5128418)))

(declare-fun validRegex!6224 (Regex!14296) Bool)

(assert (=> bs!1194808 (= (dynLambda!23631 lambda!252558 (h!65846 (exprs!4180 lt!2115219))) (validRegex!6224 (h!65846 (exprs!4180 lt!2115219))))))

(declare-fun m!6192738 () Bool)

(assert (=> bs!1194808 m!6192738))

(assert (=> b!5128436 d!1658978))

(push 1)

(assert (not d!1658960))

(assert (not d!1658958))

(assert (not bs!1194807))

(assert (not b!5128437))

(assert (not b!5128447))

(assert (not b_lambda!199161))

(assert (not d!1658974))

(assert (not b!5128452))

(assert (not d!1658970))

(assert (not d!1658966))

(assert (not bs!1194808))

(assert (not d!1658968))

(assert (not b_lambda!199163))

(assert (not setNonEmpty!30869))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


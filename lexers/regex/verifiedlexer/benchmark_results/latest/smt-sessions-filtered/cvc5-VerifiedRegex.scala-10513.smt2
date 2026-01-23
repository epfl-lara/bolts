; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!542162 () Bool)

(assert start!542162)

(declare-fun bs!1195437 () Bool)

(declare-fun b!5129591 () Bool)

(declare-fun b!5129587 () Bool)

(assert (= bs!1195437 (and b!5129591 b!5129587)))

(declare-fun lambda!253221 () Int)

(declare-fun lambda!253220 () Int)

(assert (=> bs!1195437 (not (= lambda!253221 lambda!253220))))

(declare-fun bs!1195438 () Bool)

(declare-fun b!5129589 () Bool)

(assert (= bs!1195438 (and b!5129589 b!5129587)))

(declare-fun lambda!253222 () Int)

(assert (=> bs!1195438 (not (= lambda!253222 lambda!253220))))

(declare-fun bs!1195439 () Bool)

(assert (= bs!1195439 (and b!5129589 b!5129591)))

(assert (=> bs!1195439 (not (= lambda!253222 lambda!253221))))

(declare-fun b!5129582 () Bool)

(declare-fun e!3199180 () Bool)

(declare-fun e!3199178 () Bool)

(assert (=> b!5129582 (= e!3199180 e!3199178)))

(declare-fun res!2184325 () Bool)

(assert (=> b!5129582 (=> res!2184325 e!3199178)))

(declare-datatypes ((C!28898 0))(
  ( (C!28899 (val!24101 Int)) )
))
(declare-datatypes ((Regex!14316 0))(
  ( (ElementMatch!14316 (c!882226 C!28898)) (Concat!23161 (regOne!29144 Regex!14316) (regTwo!29144 Regex!14316)) (EmptyExpr!14316) (Star!14316 (reg!14645 Regex!14316)) (EmptyLang!14316) (Union!14316 (regOne!29145 Regex!14316) (regTwo!29145 Regex!14316)) )
))
(declare-fun lt!2115893 () Regex!14316)

(declare-fun nullable!4739 (Regex!14316) Bool)

(assert (=> b!5129582 (= res!2184325 (not (nullable!4739 lt!2115893)))))

(declare-datatypes ((List!59562 0))(
  ( (Nil!59438) (Cons!59438 (h!65886 Regex!14316) (t!372589 List!59562)) )
))
(declare-datatypes ((Context!7400 0))(
  ( (Context!7401 (exprs!4200 List!59562)) )
))
(declare-fun lt!2115894 () Context!7400)

(declare-datatypes ((Unit!150667 0))(
  ( (Unit!150668) )
))
(declare-fun lt!2115892 () Unit!150667)

(declare-fun forallContained!4604 (List!59562 Int Regex!14316) Unit!150667)

(assert (=> b!5129582 (= lt!2115892 (forallContained!4604 (exprs!4200 lt!2115894) lambda!253220 lt!2115893))))

(declare-fun lt!2115891 () Unit!150667)

(assert (=> b!5129582 (= lt!2115891 (forallContained!4604 (exprs!4200 lt!2115894) lambda!253221 lt!2115893))))

(declare-fun b!5129583 () Bool)

(declare-fun res!2184329 () Bool)

(assert (=> b!5129583 (=> res!2184329 e!3199180)))

(declare-fun lostCause!1263 (Regex!14316) Bool)

(assert (=> b!5129583 (= res!2184329 (not (lostCause!1263 lt!2115893)))))

(declare-fun b!5129584 () Bool)

(declare-fun res!2184323 () Bool)

(declare-fun e!3199179 () Bool)

(assert (=> b!5129584 (=> (not res!2184323) (not e!3199179))))

(declare-fun z!1113 () (Set Context!7400))

(declare-fun lambda!253219 () Int)

(declare-fun exists!1600 ((Set Context!7400) Int) Bool)

(assert (=> b!5129584 (= res!2184323 (exists!1600 z!1113 lambda!253219))))

(declare-fun b!5129585 () Bool)

(declare-fun e!3199177 () Bool)

(declare-fun tp!1431114 () Bool)

(assert (=> b!5129585 (= e!3199177 tp!1431114)))

(declare-fun b!5129586 () Bool)

(declare-fun e!3199176 () Bool)

(assert (=> b!5129586 (= e!3199176 e!3199180)))

(declare-fun res!2184332 () Bool)

(assert (=> b!5129586 (=> res!2184332 e!3199180)))

(declare-fun contains!19626 (List!59562 Regex!14316) Bool)

(assert (=> b!5129586 (= res!2184332 (not (contains!19626 (exprs!4200 lt!2115894) lt!2115893)))))

(declare-fun getWitness!757 (List!59562 Int) Regex!14316)

(assert (=> b!5129586 (= lt!2115893 (getWitness!757 (exprs!4200 lt!2115894) lambda!253222))))

(declare-fun e!3199181 () Bool)

(assert (=> b!5129587 (= e!3199181 (not e!3199176))))

(declare-fun res!2184324 () Bool)

(assert (=> b!5129587 (=> res!2184324 e!3199176)))

(assert (=> b!5129587 (= res!2184324 (not (set.member lt!2115894 z!1113)))))

(declare-fun forall!13721 (List!59562 Int) Bool)

(assert (=> b!5129587 (forall!13721 (exprs!4200 lt!2115894) lambda!253220)))

(declare-fun lt!2115895 () Unit!150667)

(declare-fun lemmaContextForallValidExprs!31 (Context!7400 List!59562) Unit!150667)

(assert (=> b!5129587 (= lt!2115895 (lemmaContextForallValidExprs!31 lt!2115894 (exprs!4200 lt!2115894)))))

(declare-fun res!2184328 () Bool)

(assert (=> start!542162 (=> (not res!2184328) (not e!3199179))))

(declare-fun nullableZipper!1101 ((Set Context!7400)) Bool)

(assert (=> start!542162 (= res!2184328 (nullableZipper!1101 z!1113))))

(assert (=> start!542162 e!3199179))

(declare-fun condSetEmpty!30971 () Bool)

(assert (=> start!542162 (= condSetEmpty!30971 (= z!1113 (as set.empty (Set Context!7400))))))

(declare-fun setRes!30971 () Bool)

(assert (=> start!542162 setRes!30971))

(declare-fun b!5129588 () Bool)

(assert (=> b!5129588 (= e!3199179 e!3199181)))

(declare-fun res!2184331 () Bool)

(assert (=> b!5129588 (=> (not res!2184331) (not e!3199181))))

(declare-fun nullableContext!35 (Context!7400) Bool)

(assert (=> b!5129588 (= res!2184331 (nullableContext!35 lt!2115894))))

(declare-fun getWitness!758 ((Set Context!7400) Int) Context!7400)

(assert (=> b!5129588 (= lt!2115894 (getWitness!758 z!1113 lambda!253219))))

(declare-fun res!2184330 () Bool)

(assert (=> b!5129589 (=> res!2184330 e!3199176)))

(declare-fun exists!1601 (List!59562 Int) Bool)

(assert (=> b!5129589 (= res!2184330 (not (exists!1601 (exprs!4200 lt!2115894) lambda!253222)))))

(declare-fun tp!1431115 () Bool)

(declare-fun setElem!30971 () Context!7400)

(declare-fun setNonEmpty!30971 () Bool)

(declare-fun inv!78972 (Context!7400) Bool)

(assert (=> setNonEmpty!30971 (= setRes!30971 (and tp!1431115 (inv!78972 setElem!30971) e!3199177))))

(declare-fun setRest!30971 () (Set Context!7400))

(assert (=> setNonEmpty!30971 (= z!1113 (set.union (set.insert setElem!30971 (as set.empty (Set Context!7400))) setRest!30971))))

(declare-fun b!5129590 () Bool)

(declare-fun res!2184326 () Bool)

(assert (=> b!5129590 (=> res!2184326 e!3199176)))

(declare-fun lostCause!1264 (Context!7400) Bool)

(assert (=> b!5129590 (= res!2184326 (not (lostCause!1264 lt!2115894)))))

(declare-fun res!2184327 () Bool)

(assert (=> b!5129591 (=> res!2184327 e!3199176)))

(assert (=> b!5129591 (= res!2184327 (not (forall!13721 (exprs!4200 lt!2115894) lambda!253221)))))

(declare-fun b!5129592 () Bool)

(declare-fun validRegex!6235 (Regex!14316) Bool)

(assert (=> b!5129592 (= e!3199178 (validRegex!6235 lt!2115893))))

(declare-fun setIsEmpty!30971 () Bool)

(assert (=> setIsEmpty!30971 setRes!30971))

(assert (= (and start!542162 res!2184328) b!5129584))

(assert (= (and b!5129584 res!2184323) b!5129588))

(assert (= (and b!5129588 res!2184331) b!5129587))

(assert (= (and b!5129587 (not res!2184324)) b!5129591))

(assert (= (and b!5129591 (not res!2184327)) b!5129590))

(assert (= (and b!5129590 (not res!2184326)) b!5129589))

(assert (= (and b!5129589 (not res!2184330)) b!5129586))

(assert (= (and b!5129586 (not res!2184332)) b!5129583))

(assert (= (and b!5129583 (not res!2184329)) b!5129582))

(assert (= (and b!5129582 (not res!2184325)) b!5129592))

(assert (= (and start!542162 condSetEmpty!30971) setIsEmpty!30971))

(assert (= (and start!542162 (not condSetEmpty!30971)) setNonEmpty!30971))

(assert (= setNonEmpty!30971 b!5129585))

(declare-fun m!6194246 () Bool)

(assert (=> b!5129587 m!6194246))

(declare-fun m!6194248 () Bool)

(assert (=> b!5129587 m!6194248))

(declare-fun m!6194250 () Bool)

(assert (=> b!5129587 m!6194250))

(declare-fun m!6194252 () Bool)

(assert (=> b!5129590 m!6194252))

(declare-fun m!6194254 () Bool)

(assert (=> start!542162 m!6194254))

(declare-fun m!6194256 () Bool)

(assert (=> b!5129584 m!6194256))

(declare-fun m!6194258 () Bool)

(assert (=> b!5129588 m!6194258))

(declare-fun m!6194260 () Bool)

(assert (=> b!5129588 m!6194260))

(declare-fun m!6194262 () Bool)

(assert (=> setNonEmpty!30971 m!6194262))

(declare-fun m!6194264 () Bool)

(assert (=> b!5129592 m!6194264))

(declare-fun m!6194266 () Bool)

(assert (=> b!5129582 m!6194266))

(declare-fun m!6194268 () Bool)

(assert (=> b!5129582 m!6194268))

(declare-fun m!6194270 () Bool)

(assert (=> b!5129582 m!6194270))

(declare-fun m!6194272 () Bool)

(assert (=> b!5129583 m!6194272))

(declare-fun m!6194274 () Bool)

(assert (=> b!5129591 m!6194274))

(declare-fun m!6194276 () Bool)

(assert (=> b!5129589 m!6194276))

(declare-fun m!6194278 () Bool)

(assert (=> b!5129586 m!6194278))

(declare-fun m!6194280 () Bool)

(assert (=> b!5129586 m!6194280))

(push 1)

(assert (not b!5129588))

(assert (not b!5129583))

(assert (not b!5129589))

(assert (not b!5129582))

(assert (not b!5129586))

(assert (not b!5129584))

(assert (not setNonEmpty!30971))

(assert (not b!5129592))

(assert (not b!5129591))

(assert (not b!5129590))

(assert (not start!542162))

(assert (not b!5129585))

(assert (not b!5129587))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1195443 () Bool)

(declare-fun d!1659528 () Bool)

(assert (= bs!1195443 (and d!1659528 b!5129587)))

(declare-fun lambda!253245 () Int)

(assert (=> bs!1195443 (not (= lambda!253245 lambda!253220))))

(declare-fun bs!1195444 () Bool)

(assert (= bs!1195444 (and d!1659528 b!5129591)))

(assert (=> bs!1195444 (= lambda!253245 lambda!253221)))

(declare-fun bs!1195445 () Bool)

(assert (= bs!1195445 (and d!1659528 b!5129589)))

(assert (=> bs!1195445 (not (= lambda!253245 lambda!253222))))

(assert (=> d!1659528 (= (nullableContext!35 lt!2115894) (forall!13721 (exprs!4200 lt!2115894) lambda!253245))))

(declare-fun bs!1195446 () Bool)

(assert (= bs!1195446 d!1659528))

(declare-fun m!6194318 () Bool)

(assert (=> bs!1195446 m!6194318))

(assert (=> b!5129588 d!1659528))

(declare-fun d!1659532 () Bool)

(declare-fun e!3199202 () Bool)

(assert (=> d!1659532 e!3199202))

(declare-fun res!2184365 () Bool)

(assert (=> d!1659532 (=> (not res!2184365) (not e!3199202))))

(declare-fun lt!2115913 () Context!7400)

(declare-fun dynLambda!23663 (Int Context!7400) Bool)

(assert (=> d!1659532 (= res!2184365 (dynLambda!23663 lambda!253219 lt!2115913))))

(declare-datatypes ((List!59564 0))(
  ( (Nil!59440) (Cons!59440 (h!65888 Context!7400) (t!372591 List!59564)) )
))
(declare-fun getWitness!761 (List!59564 Int) Context!7400)

(declare-fun toList!8310 ((Set Context!7400)) List!59564)

(assert (=> d!1659532 (= lt!2115913 (getWitness!761 (toList!8310 z!1113) lambda!253219))))

(assert (=> d!1659532 (exists!1600 z!1113 lambda!253219)))

(assert (=> d!1659532 (= (getWitness!758 z!1113 lambda!253219) lt!2115913)))

(declare-fun b!5129628 () Bool)

(assert (=> b!5129628 (= e!3199202 (set.member lt!2115913 z!1113))))

(assert (= (and d!1659532 res!2184365) b!5129628))

(declare-fun b_lambda!199477 () Bool)

(assert (=> (not b_lambda!199477) (not d!1659532)))

(declare-fun m!6194322 () Bool)

(assert (=> d!1659532 m!6194322))

(declare-fun m!6194324 () Bool)

(assert (=> d!1659532 m!6194324))

(assert (=> d!1659532 m!6194324))

(declare-fun m!6194326 () Bool)

(assert (=> d!1659532 m!6194326))

(assert (=> d!1659532 m!6194256))

(declare-fun m!6194328 () Bool)

(assert (=> b!5129628 m!6194328))

(assert (=> b!5129588 d!1659532))

(declare-fun bs!1195448 () Bool)

(declare-fun d!1659536 () Bool)

(assert (= bs!1195448 (and d!1659536 b!5129587)))

(declare-fun lambda!253248 () Int)

(assert (=> bs!1195448 (not (= lambda!253248 lambda!253220))))

(declare-fun bs!1195449 () Bool)

(assert (= bs!1195449 (and d!1659536 b!5129591)))

(assert (=> bs!1195449 (not (= lambda!253248 lambda!253221))))

(declare-fun bs!1195450 () Bool)

(assert (= bs!1195450 (and d!1659536 b!5129589)))

(assert (=> bs!1195450 (not (= lambda!253248 lambda!253222))))

(declare-fun bs!1195451 () Bool)

(assert (= bs!1195451 (and d!1659536 d!1659528)))

(assert (=> bs!1195451 (not (= lambda!253248 lambda!253245))))

(assert (=> d!1659536 true))

(declare-fun order!26831 () Int)

(declare-fun dynLambda!23664 (Int Int) Int)

(assert (=> d!1659536 (< (dynLambda!23664 order!26831 lambda!253222) (dynLambda!23664 order!26831 lambda!253248))))

(assert (=> d!1659536 (= (exists!1601 (exprs!4200 lt!2115894) lambda!253222) (not (forall!13721 (exprs!4200 lt!2115894) lambda!253248)))))

(declare-fun bs!1195452 () Bool)

(assert (= bs!1195452 d!1659536))

(declare-fun m!6194330 () Bool)

(assert (=> bs!1195452 m!6194330))

(assert (=> b!5129589 d!1659536))

(declare-fun d!1659538 () Bool)

(declare-fun res!2184376 () Bool)

(declare-fun e!3199213 () Bool)

(assert (=> d!1659538 (=> res!2184376 e!3199213)))

(assert (=> d!1659538 (= res!2184376 (is-Nil!59438 (exprs!4200 lt!2115894)))))

(assert (=> d!1659538 (= (forall!13721 (exprs!4200 lt!2115894) lambda!253220) e!3199213)))

(declare-fun b!5129641 () Bool)

(declare-fun e!3199214 () Bool)

(assert (=> b!5129641 (= e!3199213 e!3199214)))

(declare-fun res!2184377 () Bool)

(assert (=> b!5129641 (=> (not res!2184377) (not e!3199214))))

(declare-fun dynLambda!23665 (Int Regex!14316) Bool)

(assert (=> b!5129641 (= res!2184377 (dynLambda!23665 lambda!253220 (h!65886 (exprs!4200 lt!2115894))))))

(declare-fun b!5129642 () Bool)

(assert (=> b!5129642 (= e!3199214 (forall!13721 (t!372589 (exprs!4200 lt!2115894)) lambda!253220))))

(assert (= (and d!1659538 (not res!2184376)) b!5129641))

(assert (= (and b!5129641 res!2184377) b!5129642))

(declare-fun b_lambda!199481 () Bool)

(assert (=> (not b_lambda!199481) (not b!5129641)))

(declare-fun m!6194336 () Bool)

(assert (=> b!5129641 m!6194336))

(declare-fun m!6194338 () Bool)

(assert (=> b!5129642 m!6194338))

(assert (=> b!5129587 d!1659538))

(declare-fun bs!1195453 () Bool)

(declare-fun d!1659542 () Bool)

(assert (= bs!1195453 (and d!1659542 d!1659528)))

(declare-fun lambda!253251 () Int)

(assert (=> bs!1195453 (not (= lambda!253251 lambda!253245))))

(declare-fun bs!1195454 () Bool)

(assert (= bs!1195454 (and d!1659542 b!5129589)))

(assert (=> bs!1195454 (not (= lambda!253251 lambda!253222))))

(declare-fun bs!1195455 () Bool)

(assert (= bs!1195455 (and d!1659542 b!5129591)))

(assert (=> bs!1195455 (not (= lambda!253251 lambda!253221))))

(declare-fun bs!1195456 () Bool)

(assert (= bs!1195456 (and d!1659542 b!5129587)))

(assert (=> bs!1195456 (= lambda!253251 lambda!253220)))

(declare-fun bs!1195457 () Bool)

(assert (= bs!1195457 (and d!1659542 d!1659536)))

(assert (=> bs!1195457 (not (= lambda!253251 lambda!253248))))

(assert (=> d!1659542 (forall!13721 (exprs!4200 lt!2115894) lambda!253251)))

(declare-fun lt!2115916 () Unit!150667)

(declare-fun choose!37828 (Context!7400 List!59562) Unit!150667)

(assert (=> d!1659542 (= lt!2115916 (choose!37828 lt!2115894 (exprs!4200 lt!2115894)))))

(assert (=> d!1659542 (= (exprs!4200 lt!2115894) (exprs!4200 lt!2115894))))

(assert (=> d!1659542 (= (lemmaContextForallValidExprs!31 lt!2115894 (exprs!4200 lt!2115894)) lt!2115916)))

(declare-fun bs!1195458 () Bool)

(assert (= bs!1195458 d!1659542))

(declare-fun m!6194340 () Bool)

(assert (=> bs!1195458 m!6194340))

(declare-fun m!6194342 () Bool)

(assert (=> bs!1195458 m!6194342))

(assert (=> b!5129587 d!1659542))

(declare-fun d!1659544 () Bool)

(declare-fun lt!2115922 () Bool)

(declare-fun content!10564 (List!59562) (Set Regex!14316))

(assert (=> d!1659544 (= lt!2115922 (set.member lt!2115893 (content!10564 (exprs!4200 lt!2115894))))))

(declare-fun e!3199222 () Bool)

(assert (=> d!1659544 (= lt!2115922 e!3199222)))

(declare-fun res!2184385 () Bool)

(assert (=> d!1659544 (=> (not res!2184385) (not e!3199222))))

(assert (=> d!1659544 (= res!2184385 (is-Cons!59438 (exprs!4200 lt!2115894)))))

(assert (=> d!1659544 (= (contains!19626 (exprs!4200 lt!2115894) lt!2115893) lt!2115922)))

(declare-fun b!5129649 () Bool)

(declare-fun e!3199221 () Bool)

(assert (=> b!5129649 (= e!3199222 e!3199221)))

(declare-fun res!2184384 () Bool)

(assert (=> b!5129649 (=> res!2184384 e!3199221)))

(assert (=> b!5129649 (= res!2184384 (= (h!65886 (exprs!4200 lt!2115894)) lt!2115893))))

(declare-fun b!5129650 () Bool)

(assert (=> b!5129650 (= e!3199221 (contains!19626 (t!372589 (exprs!4200 lt!2115894)) lt!2115893))))

(assert (= (and d!1659544 res!2184385) b!5129649))

(assert (= (and b!5129649 (not res!2184384)) b!5129650))

(declare-fun m!6194354 () Bool)

(assert (=> d!1659544 m!6194354))

(declare-fun m!6194356 () Bool)

(assert (=> d!1659544 m!6194356))

(declare-fun m!6194358 () Bool)

(assert (=> b!5129650 m!6194358))

(assert (=> b!5129586 d!1659544))

(declare-fun b!5129663 () Bool)

(declare-fun e!3199234 () Regex!14316)

(declare-fun e!3199231 () Regex!14316)

(assert (=> b!5129663 (= e!3199234 e!3199231)))

(declare-fun c!882239 () Bool)

(assert (=> b!5129663 (= c!882239 (is-Cons!59438 (exprs!4200 lt!2115894)))))

(declare-fun d!1659550 () Bool)

(declare-fun e!3199232 () Bool)

(assert (=> d!1659550 e!3199232))

(declare-fun res!2184390 () Bool)

(assert (=> d!1659550 (=> (not res!2184390) (not e!3199232))))

(declare-fun lt!2115931 () Regex!14316)

(assert (=> d!1659550 (= res!2184390 (dynLambda!23665 lambda!253222 lt!2115931))))

(assert (=> d!1659550 (= lt!2115931 e!3199234)))

(declare-fun c!882240 () Bool)

(declare-fun e!3199233 () Bool)

(assert (=> d!1659550 (= c!882240 e!3199233)))

(declare-fun res!2184391 () Bool)

(assert (=> d!1659550 (=> (not res!2184391) (not e!3199233))))

(assert (=> d!1659550 (= res!2184391 (is-Cons!59438 (exprs!4200 lt!2115894)))))

(assert (=> d!1659550 (exists!1601 (exprs!4200 lt!2115894) lambda!253222)))

(assert (=> d!1659550 (= (getWitness!757 (exprs!4200 lt!2115894) lambda!253222) lt!2115931)))

(declare-fun b!5129664 () Bool)

(assert (=> b!5129664 (= e!3199234 (h!65886 (exprs!4200 lt!2115894)))))

(declare-fun b!5129665 () Bool)

(assert (=> b!5129665 (= e!3199231 (getWitness!757 (t!372589 (exprs!4200 lt!2115894)) lambda!253222))))

(declare-fun b!5129666 () Bool)

(assert (=> b!5129666 (= e!3199233 (dynLambda!23665 lambda!253222 (h!65886 (exprs!4200 lt!2115894))))))

(declare-fun b!5129667 () Bool)

(declare-fun lt!2115930 () Unit!150667)

(declare-fun Unit!150671 () Unit!150667)

(assert (=> b!5129667 (= lt!2115930 Unit!150671)))

(assert (=> b!5129667 false))

(declare-fun head!10978 (List!59562) Regex!14316)

(assert (=> b!5129667 (= e!3199231 (head!10978 (exprs!4200 lt!2115894)))))

(declare-fun b!5129668 () Bool)

(assert (=> b!5129668 (= e!3199232 (contains!19626 (exprs!4200 lt!2115894) lt!2115931))))

(assert (= (and d!1659550 res!2184391) b!5129666))

(assert (= (and d!1659550 c!882240) b!5129664))

(assert (= (and d!1659550 (not c!882240)) b!5129663))

(assert (= (and b!5129663 c!882239) b!5129665))

(assert (= (and b!5129663 (not c!882239)) b!5129667))

(assert (= (and d!1659550 res!2184390) b!5129668))

(declare-fun b_lambda!199485 () Bool)

(assert (=> (not b_lambda!199485) (not d!1659550)))

(declare-fun b_lambda!199487 () Bool)

(assert (=> (not b_lambda!199487) (not b!5129666)))

(declare-fun m!6194360 () Bool)

(assert (=> b!5129668 m!6194360))

(declare-fun m!6194362 () Bool)

(assert (=> b!5129667 m!6194362))

(declare-fun m!6194364 () Bool)

(assert (=> d!1659550 m!6194364))

(assert (=> d!1659550 m!6194276))

(declare-fun m!6194366 () Bool)

(assert (=> b!5129666 m!6194366))

(declare-fun m!6194368 () Bool)

(assert (=> b!5129665 m!6194368))

(assert (=> b!5129586 d!1659550))

(declare-fun d!1659552 () Bool)

(declare-fun lt!2115934 () Bool)

(declare-fun exists!1604 (List!59564 Int) Bool)

(assert (=> d!1659552 (= lt!2115934 (exists!1604 (toList!8310 z!1113) lambda!253219))))

(declare-fun choose!37829 ((Set Context!7400) Int) Bool)

(assert (=> d!1659552 (= lt!2115934 (choose!37829 z!1113 lambda!253219))))

(assert (=> d!1659552 (= (exists!1600 z!1113 lambda!253219) lt!2115934)))

(declare-fun bs!1195464 () Bool)

(assert (= bs!1195464 d!1659552))

(assert (=> bs!1195464 m!6194324))

(assert (=> bs!1195464 m!6194324))

(declare-fun m!6194374 () Bool)

(assert (=> bs!1195464 m!6194374))

(declare-fun m!6194376 () Bool)

(assert (=> bs!1195464 m!6194376))

(assert (=> b!5129584 d!1659552))

(declare-fun d!1659556 () Bool)

(declare-fun lostCauseFct!312 (Regex!14316) Bool)

(assert (=> d!1659556 (= (lostCause!1263 lt!2115893) (lostCauseFct!312 lt!2115893))))

(declare-fun bs!1195465 () Bool)

(assert (= bs!1195465 d!1659556))

(declare-fun m!6194378 () Bool)

(assert (=> bs!1195465 m!6194378))

(assert (=> b!5129583 d!1659556))

(declare-fun bs!1195468 () Bool)

(declare-fun d!1659558 () Bool)

(assert (= bs!1195468 (and d!1659558 b!5129584)))

(declare-fun lambda!253260 () Int)

(assert (=> bs!1195468 (= lambda!253260 lambda!253219)))

(assert (=> d!1659558 (= (nullableZipper!1101 z!1113) (exists!1600 z!1113 lambda!253260))))

(declare-fun bs!1195469 () Bool)

(assert (= bs!1195469 d!1659558))

(declare-fun m!6194382 () Bool)

(assert (=> bs!1195469 m!6194382))

(assert (=> start!542162 d!1659558))

(declare-fun d!1659562 () Bool)

(declare-fun res!2184392 () Bool)

(declare-fun e!3199235 () Bool)

(assert (=> d!1659562 (=> res!2184392 e!3199235)))

(assert (=> d!1659562 (= res!2184392 (is-Nil!59438 (exprs!4200 lt!2115894)))))

(assert (=> d!1659562 (= (forall!13721 (exprs!4200 lt!2115894) lambda!253221) e!3199235)))

(declare-fun b!5129669 () Bool)

(declare-fun e!3199236 () Bool)

(assert (=> b!5129669 (= e!3199235 e!3199236)))

(declare-fun res!2184393 () Bool)

(assert (=> b!5129669 (=> (not res!2184393) (not e!3199236))))

(assert (=> b!5129669 (= res!2184393 (dynLambda!23665 lambda!253221 (h!65886 (exprs!4200 lt!2115894))))))

(declare-fun b!5129670 () Bool)

(assert (=> b!5129670 (= e!3199236 (forall!13721 (t!372589 (exprs!4200 lt!2115894)) lambda!253221))))

(assert (= (and d!1659562 (not res!2184392)) b!5129669))

(assert (= (and b!5129669 res!2184393) b!5129670))

(declare-fun b_lambda!199489 () Bool)

(assert (=> (not b_lambda!199489) (not b!5129669)))

(declare-fun m!6194384 () Bool)

(assert (=> b!5129669 m!6194384))

(declare-fun m!6194386 () Bool)

(assert (=> b!5129670 m!6194386))

(assert (=> b!5129591 d!1659562))

(declare-fun b!5129707 () Bool)

(declare-fun e!3199265 () Bool)

(declare-fun call!357019 () Bool)

(assert (=> b!5129707 (= e!3199265 call!357019)))

(declare-fun c!882253 () Bool)

(declare-fun call!357018 () Bool)

(declare-fun c!882254 () Bool)

(declare-fun bm!357013 () Bool)

(assert (=> bm!357013 (= call!357018 (validRegex!6235 (ite c!882253 (reg!14645 lt!2115893) (ite c!882254 (regOne!29145 lt!2115893) (regTwo!29144 lt!2115893)))))))

(declare-fun b!5129708 () Bool)

(declare-fun e!3199270 () Bool)

(declare-fun call!357020 () Bool)

(assert (=> b!5129708 (= e!3199270 call!357020)))

(declare-fun bm!357014 () Bool)

(assert (=> bm!357014 (= call!357019 (validRegex!6235 (ite c!882254 (regTwo!29145 lt!2115893) (regOne!29144 lt!2115893))))))

(declare-fun b!5129709 () Bool)

(declare-fun e!3199268 () Bool)

(declare-fun e!3199266 () Bool)

(assert (=> b!5129709 (= e!3199268 e!3199266)))

(assert (=> b!5129709 (= c!882254 (is-Union!14316 lt!2115893))))

(declare-fun b!5129710 () Bool)

(declare-fun e!3199269 () Bool)

(assert (=> b!5129710 (= e!3199268 e!3199269)))

(declare-fun res!2184418 () Bool)

(assert (=> b!5129710 (= res!2184418 (not (nullable!4739 (reg!14645 lt!2115893))))))

(assert (=> b!5129710 (=> (not res!2184418) (not e!3199269))))

(declare-fun b!5129711 () Bool)

(declare-fun res!2184415 () Bool)

(declare-fun e!3199271 () Bool)

(assert (=> b!5129711 (=> res!2184415 e!3199271)))

(assert (=> b!5129711 (= res!2184415 (not (is-Concat!23161 lt!2115893)))))

(assert (=> b!5129711 (= e!3199266 e!3199271)))

(declare-fun b!5129712 () Bool)

(declare-fun e!3199267 () Bool)

(assert (=> b!5129712 (= e!3199267 e!3199268)))

(assert (=> b!5129712 (= c!882253 (is-Star!14316 lt!2115893))))

(declare-fun b!5129713 () Bool)

(declare-fun res!2184417 () Bool)

(assert (=> b!5129713 (=> (not res!2184417) (not e!3199265))))

(assert (=> b!5129713 (= res!2184417 call!357020)))

(assert (=> b!5129713 (= e!3199266 e!3199265)))

(declare-fun d!1659564 () Bool)

(declare-fun res!2184414 () Bool)

(assert (=> d!1659564 (=> res!2184414 e!3199267)))

(assert (=> d!1659564 (= res!2184414 (is-ElementMatch!14316 lt!2115893))))

(assert (=> d!1659564 (= (validRegex!6235 lt!2115893) e!3199267)))

(declare-fun b!5129714 () Bool)

(assert (=> b!5129714 (= e!3199269 call!357018)))

(declare-fun bm!357015 () Bool)

(assert (=> bm!357015 (= call!357020 call!357018)))

(declare-fun b!5129715 () Bool)

(assert (=> b!5129715 (= e!3199271 e!3199270)))

(declare-fun res!2184416 () Bool)

(assert (=> b!5129715 (=> (not res!2184416) (not e!3199270))))

(assert (=> b!5129715 (= res!2184416 call!357019)))

(assert (= (and d!1659564 (not res!2184414)) b!5129712))

(assert (= (and b!5129712 c!882253) b!5129710))

(assert (= (and b!5129712 (not c!882253)) b!5129709))

(assert (= (and b!5129710 res!2184418) b!5129714))

(assert (= (and b!5129709 c!882254) b!5129713))

(assert (= (and b!5129709 (not c!882254)) b!5129711))

(assert (= (and b!5129713 res!2184417) b!5129707))

(assert (= (and b!5129711 (not res!2184415)) b!5129715))

(assert (= (and b!5129715 res!2184416) b!5129708))

(assert (= (or b!5129707 b!5129715) bm!357014))

(assert (= (or b!5129713 b!5129708) bm!357015))

(assert (= (or b!5129714 bm!357015) bm!357013))

(declare-fun m!6194388 () Bool)

(assert (=> bm!357013 m!6194388))

(declare-fun m!6194390 () Bool)

(assert (=> bm!357014 m!6194390))

(declare-fun m!6194392 () Bool)

(assert (=> b!5129710 m!6194392))

(assert (=> b!5129592 d!1659564))

(declare-fun d!1659566 () Bool)

(declare-fun nullableFct!1279 (Regex!14316) Bool)

(assert (=> d!1659566 (= (nullable!4739 lt!2115893) (nullableFct!1279 lt!2115893))))

(declare-fun bs!1195470 () Bool)

(assert (= bs!1195470 d!1659566))

(declare-fun m!6194394 () Bool)

(assert (=> bs!1195470 m!6194394))

(assert (=> b!5129582 d!1659566))

(declare-fun d!1659568 () Bool)

(assert (=> d!1659568 (dynLambda!23665 lambda!253220 lt!2115893)))

(declare-fun lt!2115937 () Unit!150667)

(declare-fun choose!37830 (List!59562 Int Regex!14316) Unit!150667)

(assert (=> d!1659568 (= lt!2115937 (choose!37830 (exprs!4200 lt!2115894) lambda!253220 lt!2115893))))

(declare-fun e!3199274 () Bool)

(assert (=> d!1659568 e!3199274))

(declare-fun res!2184421 () Bool)

(assert (=> d!1659568 (=> (not res!2184421) (not e!3199274))))

(assert (=> d!1659568 (= res!2184421 (forall!13721 (exprs!4200 lt!2115894) lambda!253220))))

(assert (=> d!1659568 (= (forallContained!4604 (exprs!4200 lt!2115894) lambda!253220 lt!2115893) lt!2115937)))

(declare-fun b!5129718 () Bool)

(assert (=> b!5129718 (= e!3199274 (contains!19626 (exprs!4200 lt!2115894) lt!2115893))))

(assert (= (and d!1659568 res!2184421) b!5129718))

(declare-fun b_lambda!199491 () Bool)

(assert (=> (not b_lambda!199491) (not d!1659568)))

(declare-fun m!6194396 () Bool)

(assert (=> d!1659568 m!6194396))

(declare-fun m!6194398 () Bool)

(assert (=> d!1659568 m!6194398))

(assert (=> d!1659568 m!6194248))

(assert (=> b!5129718 m!6194278))

(assert (=> b!5129582 d!1659568))

(declare-fun d!1659570 () Bool)

(assert (=> d!1659570 (dynLambda!23665 lambda!253221 lt!2115893)))

(declare-fun lt!2115938 () Unit!150667)

(assert (=> d!1659570 (= lt!2115938 (choose!37830 (exprs!4200 lt!2115894) lambda!253221 lt!2115893))))

(declare-fun e!3199275 () Bool)

(assert (=> d!1659570 e!3199275))

(declare-fun res!2184422 () Bool)

(assert (=> d!1659570 (=> (not res!2184422) (not e!3199275))))

(assert (=> d!1659570 (= res!2184422 (forall!13721 (exprs!4200 lt!2115894) lambda!253221))))

(assert (=> d!1659570 (= (forallContained!4604 (exprs!4200 lt!2115894) lambda!253221 lt!2115893) lt!2115938)))

(declare-fun b!5129719 () Bool)

(assert (=> b!5129719 (= e!3199275 (contains!19626 (exprs!4200 lt!2115894) lt!2115893))))

(assert (= (and d!1659570 res!2184422) b!5129719))

(declare-fun b_lambda!199493 () Bool)

(assert (=> (not b_lambda!199493) (not d!1659570)))

(declare-fun m!6194400 () Bool)

(assert (=> d!1659570 m!6194400))

(declare-fun m!6194402 () Bool)

(assert (=> d!1659570 m!6194402))

(assert (=> d!1659570 m!6194274))

(assert (=> b!5129719 m!6194278))

(assert (=> b!5129582 d!1659570))

(declare-fun bs!1195471 () Bool)

(declare-fun d!1659572 () Bool)

(assert (= bs!1195471 (and d!1659572 d!1659528)))

(declare-fun lambda!253263 () Int)

(assert (=> bs!1195471 (not (= lambda!253263 lambda!253245))))

(declare-fun bs!1195472 () Bool)

(assert (= bs!1195472 (and d!1659572 b!5129591)))

(assert (=> bs!1195472 (not (= lambda!253263 lambda!253221))))

(declare-fun bs!1195473 () Bool)

(assert (= bs!1195473 (and d!1659572 b!5129587)))

(assert (=> bs!1195473 (not (= lambda!253263 lambda!253220))))

(declare-fun bs!1195474 () Bool)

(assert (= bs!1195474 (and d!1659572 d!1659536)))

(assert (=> bs!1195474 (not (= lambda!253263 lambda!253248))))

(declare-fun bs!1195475 () Bool)

(assert (= bs!1195475 (and d!1659572 d!1659542)))

(assert (=> bs!1195475 (not (= lambda!253263 lambda!253251))))

(declare-fun bs!1195476 () Bool)

(assert (= bs!1195476 (and d!1659572 b!5129589)))

(assert (=> bs!1195476 (= lambda!253263 lambda!253222)))

(assert (=> d!1659572 (= (lostCause!1264 lt!2115894) (exists!1601 (exprs!4200 lt!2115894) lambda!253263))))

(declare-fun bs!1195477 () Bool)

(assert (= bs!1195477 d!1659572))

(declare-fun m!6194404 () Bool)

(assert (=> bs!1195477 m!6194404))

(assert (=> b!5129590 d!1659572))

(declare-fun bs!1195478 () Bool)

(declare-fun d!1659574 () Bool)

(assert (= bs!1195478 (and d!1659574 d!1659528)))

(declare-fun lambda!253266 () Int)

(assert (=> bs!1195478 (not (= lambda!253266 lambda!253245))))

(declare-fun bs!1195479 () Bool)

(assert (= bs!1195479 (and d!1659574 b!5129591)))

(assert (=> bs!1195479 (not (= lambda!253266 lambda!253221))))

(declare-fun bs!1195480 () Bool)

(assert (= bs!1195480 (and d!1659574 b!5129587)))

(assert (=> bs!1195480 (= lambda!253266 lambda!253220)))

(declare-fun bs!1195481 () Bool)

(assert (= bs!1195481 (and d!1659574 d!1659536)))

(assert (=> bs!1195481 (not (= lambda!253266 lambda!253248))))

(declare-fun bs!1195482 () Bool)

(assert (= bs!1195482 (and d!1659574 d!1659572)))

(assert (=> bs!1195482 (not (= lambda!253266 lambda!253263))))

(declare-fun bs!1195483 () Bool)

(assert (= bs!1195483 (and d!1659574 d!1659542)))

(assert (=> bs!1195483 (= lambda!253266 lambda!253251)))

(declare-fun bs!1195484 () Bool)

(assert (= bs!1195484 (and d!1659574 b!5129589)))

(assert (=> bs!1195484 (not (= lambda!253266 lambda!253222))))

(assert (=> d!1659574 (= (inv!78972 setElem!30971) (forall!13721 (exprs!4200 setElem!30971) lambda!253266))))

(declare-fun bs!1195485 () Bool)

(assert (= bs!1195485 d!1659574))

(declare-fun m!6194412 () Bool)

(assert (=> bs!1195485 m!6194412))

(assert (=> setNonEmpty!30971 d!1659574))

(declare-fun b!5129733 () Bool)

(declare-fun e!3199285 () Bool)

(declare-fun tp!1431126 () Bool)

(declare-fun tp!1431127 () Bool)

(assert (=> b!5129733 (= e!3199285 (and tp!1431126 tp!1431127))))

(assert (=> b!5129585 (= tp!1431114 e!3199285)))

(assert (= (and b!5129585 (is-Cons!59438 (exprs!4200 setElem!30971))) b!5129733))

(declare-fun condSetEmpty!30977 () Bool)

(assert (=> setNonEmpty!30971 (= condSetEmpty!30977 (= setRest!30971 (as set.empty (Set Context!7400))))))

(declare-fun setRes!30977 () Bool)

(assert (=> setNonEmpty!30971 (= tp!1431115 setRes!30977)))

(declare-fun setIsEmpty!30977 () Bool)

(assert (=> setIsEmpty!30977 setRes!30977))

(declare-fun setNonEmpty!30977 () Bool)

(declare-fun e!3199288 () Bool)

(declare-fun setElem!30977 () Context!7400)

(declare-fun tp!1431133 () Bool)

(assert (=> setNonEmpty!30977 (= setRes!30977 (and tp!1431133 (inv!78972 setElem!30977) e!3199288))))

(declare-fun setRest!30977 () (Set Context!7400))

(assert (=> setNonEmpty!30977 (= setRest!30971 (set.union (set.insert setElem!30977 (as set.empty (Set Context!7400))) setRest!30977))))

(declare-fun b!5129738 () Bool)

(declare-fun tp!1431132 () Bool)

(assert (=> b!5129738 (= e!3199288 tp!1431132)))

(assert (= (and setNonEmpty!30971 condSetEmpty!30977) setIsEmpty!30977))

(assert (= (and setNonEmpty!30971 (not condSetEmpty!30977)) setNonEmpty!30977))

(assert (= setNonEmpty!30977 b!5129738))

(declare-fun m!6194414 () Bool)

(assert (=> setNonEmpty!30977 m!6194414))

(declare-fun b_lambda!199495 () Bool)

(assert (= b_lambda!199481 (or b!5129587 b_lambda!199495)))

(declare-fun bs!1195486 () Bool)

(declare-fun d!1659578 () Bool)

(assert (= bs!1195486 (and d!1659578 b!5129587)))

(assert (=> bs!1195486 (= (dynLambda!23665 lambda!253220 (h!65886 (exprs!4200 lt!2115894))) (validRegex!6235 (h!65886 (exprs!4200 lt!2115894))))))

(declare-fun m!6194416 () Bool)

(assert (=> bs!1195486 m!6194416))

(assert (=> b!5129641 d!1659578))

(declare-fun b_lambda!199497 () Bool)

(assert (= b_lambda!199491 (or b!5129587 b_lambda!199497)))

(declare-fun bs!1195487 () Bool)

(declare-fun d!1659580 () Bool)

(assert (= bs!1195487 (and d!1659580 b!5129587)))

(assert (=> bs!1195487 (= (dynLambda!23665 lambda!253220 lt!2115893) (validRegex!6235 lt!2115893))))

(assert (=> bs!1195487 m!6194264))

(assert (=> d!1659568 d!1659580))

(declare-fun b_lambda!199499 () Bool)

(assert (= b_lambda!199477 (or b!5129584 b_lambda!199499)))

(declare-fun bs!1195488 () Bool)

(declare-fun d!1659582 () Bool)

(assert (= bs!1195488 (and d!1659582 b!5129584)))

(assert (=> bs!1195488 (= (dynLambda!23663 lambda!253219 lt!2115913) (nullableContext!35 lt!2115913))))

(declare-fun m!6194418 () Bool)

(assert (=> bs!1195488 m!6194418))

(assert (=> d!1659532 d!1659582))

(declare-fun b_lambda!199501 () Bool)

(assert (= b_lambda!199489 (or b!5129591 b_lambda!199501)))

(declare-fun bs!1195489 () Bool)

(declare-fun d!1659584 () Bool)

(assert (= bs!1195489 (and d!1659584 b!5129591)))

(assert (=> bs!1195489 (= (dynLambda!23665 lambda!253221 (h!65886 (exprs!4200 lt!2115894))) (nullable!4739 (h!65886 (exprs!4200 lt!2115894))))))

(declare-fun m!6194420 () Bool)

(assert (=> bs!1195489 m!6194420))

(assert (=> b!5129669 d!1659584))

(declare-fun b_lambda!199503 () Bool)

(assert (= b_lambda!199487 (or b!5129589 b_lambda!199503)))

(declare-fun bs!1195490 () Bool)

(declare-fun d!1659586 () Bool)

(assert (= bs!1195490 (and d!1659586 b!5129589)))

(assert (=> bs!1195490 (= (dynLambda!23665 lambda!253222 (h!65886 (exprs!4200 lt!2115894))) (lostCause!1263 (h!65886 (exprs!4200 lt!2115894))))))

(declare-fun m!6194422 () Bool)

(assert (=> bs!1195490 m!6194422))

(assert (=> b!5129666 d!1659586))

(declare-fun b_lambda!199505 () Bool)

(assert (= b_lambda!199493 (or b!5129591 b_lambda!199505)))

(declare-fun bs!1195491 () Bool)

(declare-fun d!1659588 () Bool)

(assert (= bs!1195491 (and d!1659588 b!5129591)))

(assert (=> bs!1195491 (= (dynLambda!23665 lambda!253221 lt!2115893) (nullable!4739 lt!2115893))))

(assert (=> bs!1195491 m!6194266))

(assert (=> d!1659570 d!1659588))

(declare-fun b_lambda!199507 () Bool)

(assert (= b_lambda!199485 (or b!5129589 b_lambda!199507)))

(declare-fun bs!1195492 () Bool)

(declare-fun d!1659590 () Bool)

(assert (= bs!1195492 (and d!1659590 b!5129589)))

(assert (=> bs!1195492 (= (dynLambda!23665 lambda!253222 lt!2115931) (lostCause!1263 lt!2115931))))

(declare-fun m!6194424 () Bool)

(assert (=> bs!1195492 m!6194424))

(assert (=> d!1659550 d!1659590))

(push 1)

(assert (not d!1659570))

(assert (not b!5129718))

(assert (not b_lambda!199499))

(assert (not d!1659568))

(assert (not d!1659556))

(assert (not d!1659566))

(assert (not b!5129642))

(assert (not bs!1195488))

(assert (not d!1659544))

(assert (not d!1659574))

(assert (not b!5129710))

(assert (not b_lambda!199505))

(assert (not d!1659550))

(assert (not b_lambda!199501))

(assert (not b!5129650))

(assert (not bs!1195490))

(assert (not setNonEmpty!30977))

(assert (not d!1659542))

(assert (not bs!1195487))

(assert (not d!1659558))

(assert (not d!1659528))

(assert (not d!1659536))

(assert (not d!1659532))

(assert (not b!5129668))

(assert (not d!1659572))

(assert (not b!5129670))

(assert (not b_lambda!199497))

(assert (not b_lambda!199495))

(assert (not b_lambda!199507))

(assert (not d!1659552))

(assert (not bm!357013))

(assert (not b!5129665))

(assert (not bs!1195489))

(assert (not b!5129667))

(assert (not b_lambda!199503))

(assert (not b!5129719))

(assert (not bm!357014))

(assert (not b!5129733))

(assert (not bs!1195491))

(assert (not bs!1195486))

(assert (not b!5129738))

(assert (not bs!1195492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


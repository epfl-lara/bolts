; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!677196 () Bool)

(assert start!677196)

(declare-fun b!7021272 () Bool)

(declare-fun e!4220637 () Bool)

(declare-fun tp!1934110 () Bool)

(assert (=> b!7021272 (= e!4220637 tp!1934110)))

(declare-fun b!7021273 () Bool)

(declare-fun res!2866027 () Bool)

(declare-fun e!4220634 () Bool)

(assert (=> b!7021273 (=> (not res!2866027) (not e!4220634))))

(declare-datatypes ((C!35058 0))(
  ( (C!35059 (val!27231 Int)) )
))
(declare-datatypes ((Regex!17394 0))(
  ( (ElementMatch!17394 (c!1304903 C!35058)) (Concat!26239 (regOne!35300 Regex!17394) (regTwo!35300 Regex!17394)) (EmptyExpr!17394) (Star!17394 (reg!17723 Regex!17394)) (EmptyLang!17394) (Union!17394 (regOne!35301 Regex!17394) (regTwo!35301 Regex!17394)) )
))
(declare-datatypes ((List!67725 0))(
  ( (Nil!67601) (Cons!67601 (h!74049 Regex!17394) (t!381480 List!67725)) )
))
(declare-datatypes ((Context!12780 0))(
  ( (Context!12781 (exprs!6890 List!67725)) )
))
(declare-fun lt!2512135 () (Set Context!12780))

(declare-fun lambda!411472 () Int)

(declare-fun exists!3280 ((Set Context!12780) Int) Bool)

(assert (=> b!7021273 (= res!2866027 (exists!3280 lt!2512135 lambda!411472))))

(declare-fun b!7021274 () Bool)

(declare-fun e!4220636 () Bool)

(declare-fun tp!1934108 () Bool)

(assert (=> b!7021274 (= e!4220636 tp!1934108)))

(declare-fun b!7021276 () Bool)

(declare-fun res!2866029 () Bool)

(assert (=> b!7021276 (=> (not res!2866029) (not e!4220634))))

(declare-fun nullableZipper!2523 ((Set Context!12780)) Bool)

(assert (=> b!7021276 (= res!2866029 (nullableZipper!2523 lt!2512135))))

(declare-fun setIsEmpty!48717 () Bool)

(declare-fun setRes!48717 () Bool)

(assert (=> setIsEmpty!48717 setRes!48717))

(declare-fun setElem!48717 () Context!12780)

(declare-fun tp!1934107 () Bool)

(declare-fun setNonEmpty!48717 () Bool)

(declare-fun inv!86345 (Context!12780) Bool)

(assert (=> setNonEmpty!48717 (= setRes!48717 (and tp!1934107 (inv!86345 setElem!48717) e!4220637))))

(declare-fun z1!570 () (Set Context!12780))

(declare-fun setRest!48717 () (Set Context!12780))

(assert (=> setNonEmpty!48717 (= z1!570 (set.union (set.insert setElem!48717 (as set.empty (Set Context!12780))) setRest!48717))))

(declare-fun b!7021277 () Bool)

(declare-fun e!4220633 () Bool)

(declare-fun tp!1934109 () Bool)

(assert (=> b!7021277 (= e!4220633 tp!1934109)))

(declare-fun b!7021278 () Bool)

(declare-fun e!4220635 () Bool)

(declare-fun tp_is_empty!44013 () Bool)

(declare-fun tp!1934106 () Bool)

(assert (=> b!7021278 (= e!4220635 (and tp_is_empty!44013 tp!1934106))))

(declare-fun b!7021279 () Bool)

(declare-fun res!2866028 () Bool)

(assert (=> b!7021279 (=> (not res!2866028) (not e!4220634))))

(declare-datatypes ((List!67726 0))(
  ( (Nil!67602) (Cons!67602 (h!74050 C!35058) (t!381481 List!67726)) )
))
(declare-fun s!7408 () List!67726)

(assert (=> b!7021279 (= res!2866028 (not (is-Cons!67602 s!7408)))))

(declare-fun b!7021280 () Bool)

(declare-fun c!161 () Context!12780)

(declare-fun lambda!411473 () Int)

(declare-fun forall!16299 (List!67725 Int) Bool)

(assert (=> b!7021280 (= e!4220634 (not (forall!16299 (exprs!6890 c!161) lambda!411473)))))

(declare-fun res!2866030 () Bool)

(assert (=> start!677196 (=> (not res!2866030) (not e!4220634))))

(declare-fun matchZipper!2934 ((Set Context!12780) List!67726) Bool)

(assert (=> start!677196 (= res!2866030 (matchZipper!2934 lt!2512135 s!7408))))

(declare-fun ct2!306 () Context!12780)

(declare-fun appendTo!515 ((Set Context!12780) Context!12780) (Set Context!12780))

(assert (=> start!677196 (= lt!2512135 (appendTo!515 z1!570 ct2!306))))

(assert (=> start!677196 e!4220634))

(assert (=> start!677196 (and (inv!86345 c!161) e!4220636)))

(declare-fun condSetEmpty!48717 () Bool)

(assert (=> start!677196 (= condSetEmpty!48717 (= z1!570 (as set.empty (Set Context!12780))))))

(assert (=> start!677196 setRes!48717))

(assert (=> start!677196 e!4220635))

(assert (=> start!677196 (and (inv!86345 ct2!306) e!4220633)))

(declare-fun b!7021275 () Bool)

(declare-fun res!2866026 () Bool)

(assert (=> b!7021275 (=> (not res!2866026) (not e!4220634))))

(declare-fun nullableContext!54 (Context!12780) Bool)

(declare-fun getWitness!1363 ((Set Context!12780) Int) Context!12780)

(assert (=> b!7021275 (= res!2866026 (nullableContext!54 (getWitness!1363 lt!2512135 lambda!411472)))))

(assert (= (and start!677196 res!2866030) b!7021279))

(assert (= (and b!7021279 res!2866028) b!7021276))

(assert (= (and b!7021276 res!2866029) b!7021273))

(assert (= (and b!7021273 res!2866027) b!7021275))

(assert (= (and b!7021275 res!2866026) b!7021280))

(assert (= start!677196 b!7021274))

(assert (= (and start!677196 condSetEmpty!48717) setIsEmpty!48717))

(assert (= (and start!677196 (not condSetEmpty!48717)) setNonEmpty!48717))

(assert (= setNonEmpty!48717 b!7021272))

(assert (= (and start!677196 (is-Cons!67602 s!7408)) b!7021278))

(assert (= start!677196 b!7021277))

(declare-fun m!7723176 () Bool)

(assert (=> setNonEmpty!48717 m!7723176))

(declare-fun m!7723178 () Bool)

(assert (=> start!677196 m!7723178))

(declare-fun m!7723180 () Bool)

(assert (=> start!677196 m!7723180))

(declare-fun m!7723182 () Bool)

(assert (=> start!677196 m!7723182))

(declare-fun m!7723184 () Bool)

(assert (=> start!677196 m!7723184))

(declare-fun m!7723186 () Bool)

(assert (=> b!7021280 m!7723186))

(declare-fun m!7723188 () Bool)

(assert (=> b!7021275 m!7723188))

(assert (=> b!7021275 m!7723188))

(declare-fun m!7723190 () Bool)

(assert (=> b!7021275 m!7723190))

(declare-fun m!7723192 () Bool)

(assert (=> b!7021273 m!7723192))

(declare-fun m!7723194 () Bool)

(assert (=> b!7021276 m!7723194))

(push 1)

(assert (not b!7021273))

(assert (not b!7021274))

(assert (not b!7021275))

(assert (not start!677196))

(assert (not b!7021280))

(assert (not setNonEmpty!48717))

(assert tp_is_empty!44013)

(assert (not b!7021272))

(assert (not b!7021277))

(assert (not b!7021276))

(assert (not b!7021278))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1867591 () Bool)

(declare-fun d!2188575 () Bool)

(assert (= bs!1867591 (and d!2188575 b!7021280)))

(declare-fun lambda!411484 () Int)

(assert (=> bs!1867591 (= lambda!411484 lambda!411473)))

(assert (=> d!2188575 (= (inv!86345 setElem!48717) (forall!16299 (exprs!6890 setElem!48717) lambda!411484))))

(declare-fun bs!1867592 () Bool)

(assert (= bs!1867592 d!2188575))

(declare-fun m!7723216 () Bool)

(assert (=> bs!1867592 m!7723216))

(assert (=> setNonEmpty!48717 d!2188575))

(declare-fun d!2188577 () Bool)

(declare-fun lt!2512141 () Bool)

(declare-datatypes ((List!67729 0))(
  ( (Nil!67605) (Cons!67605 (h!74053 Context!12780) (t!381484 List!67729)) )
))
(declare-fun exists!3282 (List!67729 Int) Bool)

(declare-fun toList!10752 ((Set Context!12780)) List!67729)

(assert (=> d!2188577 (= lt!2512141 (exists!3282 (toList!10752 lt!2512135) lambda!411472))))

(declare-fun choose!52972 ((Set Context!12780) Int) Bool)

(assert (=> d!2188577 (= lt!2512141 (choose!52972 lt!2512135 lambda!411472))))

(assert (=> d!2188577 (= (exists!3280 lt!2512135 lambda!411472) lt!2512141)))

(declare-fun bs!1867593 () Bool)

(assert (= bs!1867593 d!2188577))

(declare-fun m!7723218 () Bool)

(assert (=> bs!1867593 m!7723218))

(assert (=> bs!1867593 m!7723218))

(declare-fun m!7723220 () Bool)

(assert (=> bs!1867593 m!7723220))

(declare-fun m!7723222 () Bool)

(assert (=> bs!1867593 m!7723222))

(assert (=> b!7021273 d!2188577))

(declare-fun d!2188579 () Bool)

(declare-fun res!2866050 () Bool)

(declare-fun e!4220657 () Bool)

(assert (=> d!2188579 (=> res!2866050 e!4220657)))

(assert (=> d!2188579 (= res!2866050 (is-Nil!67601 (exprs!6890 c!161)))))

(assert (=> d!2188579 (= (forall!16299 (exprs!6890 c!161) lambda!411473) e!4220657)))

(declare-fun b!7021312 () Bool)

(declare-fun e!4220658 () Bool)

(assert (=> b!7021312 (= e!4220657 e!4220658)))

(declare-fun res!2866051 () Bool)

(assert (=> b!7021312 (=> (not res!2866051) (not e!4220658))))

(declare-fun dynLambda!27232 (Int Regex!17394) Bool)

(assert (=> b!7021312 (= res!2866051 (dynLambda!27232 lambda!411473 (h!74049 (exprs!6890 c!161))))))

(declare-fun b!7021313 () Bool)

(assert (=> b!7021313 (= e!4220658 (forall!16299 (t!381480 (exprs!6890 c!161)) lambda!411473))))

(assert (= (and d!2188579 (not res!2866050)) b!7021312))

(assert (= (and b!7021312 res!2866051) b!7021313))

(declare-fun b_lambda!265091 () Bool)

(assert (=> (not b_lambda!265091) (not b!7021312)))

(declare-fun m!7723224 () Bool)

(assert (=> b!7021312 m!7723224))

(declare-fun m!7723226 () Bool)

(assert (=> b!7021313 m!7723226))

(assert (=> b!7021280 d!2188579))

(declare-fun bs!1867594 () Bool)

(declare-fun d!2188581 () Bool)

(assert (= bs!1867594 (and d!2188581 b!7021280)))

(declare-fun lambda!411487 () Int)

(assert (=> bs!1867594 (not (= lambda!411487 lambda!411473))))

(declare-fun bs!1867595 () Bool)

(assert (= bs!1867595 (and d!2188581 d!2188575)))

(assert (=> bs!1867595 (not (= lambda!411487 lambda!411484))))

(assert (=> d!2188581 (= (nullableContext!54 (getWitness!1363 lt!2512135 lambda!411472)) (forall!16299 (exprs!6890 (getWitness!1363 lt!2512135 lambda!411472)) lambda!411487))))

(declare-fun bs!1867596 () Bool)

(assert (= bs!1867596 d!2188581))

(declare-fun m!7723228 () Bool)

(assert (=> bs!1867596 m!7723228))

(assert (=> b!7021275 d!2188581))

(declare-fun d!2188585 () Bool)

(declare-fun e!4220661 () Bool)

(assert (=> d!2188585 e!4220661))

(declare-fun res!2866054 () Bool)

(assert (=> d!2188585 (=> (not res!2866054) (not e!4220661))))

(declare-fun lt!2512144 () Context!12780)

(declare-fun dynLambda!27233 (Int Context!12780) Bool)

(assert (=> d!2188585 (= res!2866054 (dynLambda!27233 lambda!411472 lt!2512144))))

(declare-fun getWitness!1365 (List!67729 Int) Context!12780)

(assert (=> d!2188585 (= lt!2512144 (getWitness!1365 (toList!10752 lt!2512135) lambda!411472))))

(assert (=> d!2188585 (exists!3280 lt!2512135 lambda!411472)))

(assert (=> d!2188585 (= (getWitness!1363 lt!2512135 lambda!411472) lt!2512144)))

(declare-fun b!7021316 () Bool)

(assert (=> b!7021316 (= e!4220661 (set.member lt!2512144 lt!2512135))))

(assert (= (and d!2188585 res!2866054) b!7021316))

(declare-fun b_lambda!265093 () Bool)

(assert (=> (not b_lambda!265093) (not d!2188585)))

(declare-fun m!7723230 () Bool)

(assert (=> d!2188585 m!7723230))

(assert (=> d!2188585 m!7723218))

(assert (=> d!2188585 m!7723218))

(declare-fun m!7723232 () Bool)

(assert (=> d!2188585 m!7723232))

(assert (=> d!2188585 m!7723192))

(declare-fun m!7723234 () Bool)

(assert (=> b!7021316 m!7723234))

(assert (=> b!7021275 d!2188585))

(declare-fun bs!1867599 () Bool)

(declare-fun d!2188587 () Bool)

(assert (= bs!1867599 (and d!2188587 b!7021273)))

(declare-fun lambda!411493 () Int)

(assert (=> bs!1867599 (= lambda!411493 lambda!411472)))

(assert (=> d!2188587 (= (nullableZipper!2523 lt!2512135) (exists!3280 lt!2512135 lambda!411493))))

(declare-fun bs!1867600 () Bool)

(assert (= bs!1867600 d!2188587))

(declare-fun m!7723238 () Bool)

(assert (=> bs!1867600 m!7723238))

(assert (=> b!7021276 d!2188587))

(declare-fun d!2188591 () Bool)

(declare-fun c!1304916 () Bool)

(declare-fun isEmpty!39458 (List!67726) Bool)

(assert (=> d!2188591 (= c!1304916 (isEmpty!39458 s!7408))))

(declare-fun e!4220668 () Bool)

(assert (=> d!2188591 (= (matchZipper!2934 lt!2512135 s!7408) e!4220668)))

(declare-fun b!7021325 () Bool)

(assert (=> b!7021325 (= e!4220668 (nullableZipper!2523 lt!2512135))))

(declare-fun b!7021326 () Bool)

(declare-fun derivationStepZipper!2870 ((Set Context!12780) C!35058) (Set Context!12780))

(declare-fun head!14211 (List!67726) C!35058)

(declare-fun tail!13480 (List!67726) List!67726)

(assert (=> b!7021326 (= e!4220668 (matchZipper!2934 (derivationStepZipper!2870 lt!2512135 (head!14211 s!7408)) (tail!13480 s!7408)))))

(assert (= (and d!2188591 c!1304916) b!7021325))

(assert (= (and d!2188591 (not c!1304916)) b!7021326))

(declare-fun m!7723240 () Bool)

(assert (=> d!2188591 m!7723240))

(assert (=> b!7021325 m!7723194))

(declare-fun m!7723242 () Bool)

(assert (=> b!7021326 m!7723242))

(assert (=> b!7021326 m!7723242))

(declare-fun m!7723244 () Bool)

(assert (=> b!7021326 m!7723244))

(declare-fun m!7723246 () Bool)

(assert (=> b!7021326 m!7723246))

(assert (=> b!7021326 m!7723244))

(assert (=> b!7021326 m!7723246))

(declare-fun m!7723248 () Bool)

(assert (=> b!7021326 m!7723248))

(assert (=> start!677196 d!2188591))

(declare-fun d!2188593 () Bool)

(assert (=> d!2188593 true))

(declare-fun lambda!411498 () Int)

(declare-fun map!15682 ((Set Context!12780) Int) (Set Context!12780))

(assert (=> d!2188593 (= (appendTo!515 z1!570 ct2!306) (map!15682 z1!570 lambda!411498))))

(declare-fun bs!1867602 () Bool)

(assert (= bs!1867602 d!2188593))

(declare-fun m!7723260 () Bool)

(assert (=> bs!1867602 m!7723260))

(assert (=> start!677196 d!2188593))

(declare-fun bs!1867603 () Bool)

(declare-fun d!2188599 () Bool)

(assert (= bs!1867603 (and d!2188599 b!7021280)))

(declare-fun lambda!411499 () Int)

(assert (=> bs!1867603 (= lambda!411499 lambda!411473)))

(declare-fun bs!1867604 () Bool)

(assert (= bs!1867604 (and d!2188599 d!2188575)))

(assert (=> bs!1867604 (= lambda!411499 lambda!411484)))

(declare-fun bs!1867605 () Bool)

(assert (= bs!1867605 (and d!2188599 d!2188581)))

(assert (=> bs!1867605 (not (= lambda!411499 lambda!411487))))

(assert (=> d!2188599 (= (inv!86345 c!161) (forall!16299 (exprs!6890 c!161) lambda!411499))))

(declare-fun bs!1867606 () Bool)

(assert (= bs!1867606 d!2188599))

(declare-fun m!7723262 () Bool)

(assert (=> bs!1867606 m!7723262))

(assert (=> start!677196 d!2188599))

(declare-fun bs!1867607 () Bool)

(declare-fun d!2188601 () Bool)

(assert (= bs!1867607 (and d!2188601 b!7021280)))

(declare-fun lambda!411500 () Int)

(assert (=> bs!1867607 (= lambda!411500 lambda!411473)))

(declare-fun bs!1867608 () Bool)

(assert (= bs!1867608 (and d!2188601 d!2188575)))

(assert (=> bs!1867608 (= lambda!411500 lambda!411484)))

(declare-fun bs!1867609 () Bool)

(assert (= bs!1867609 (and d!2188601 d!2188581)))

(assert (=> bs!1867609 (not (= lambda!411500 lambda!411487))))

(declare-fun bs!1867610 () Bool)

(assert (= bs!1867610 (and d!2188601 d!2188599)))

(assert (=> bs!1867610 (= lambda!411500 lambda!411499)))

(assert (=> d!2188601 (= (inv!86345 ct2!306) (forall!16299 (exprs!6890 ct2!306) lambda!411500))))

(declare-fun bs!1867611 () Bool)

(assert (= bs!1867611 d!2188601))

(declare-fun m!7723264 () Bool)

(assert (=> bs!1867611 m!7723264))

(assert (=> start!677196 d!2188601))

(declare-fun condSetEmpty!48723 () Bool)

(assert (=> setNonEmpty!48717 (= condSetEmpty!48723 (= setRest!48717 (as set.empty (Set Context!12780))))))

(declare-fun setRes!48723 () Bool)

(assert (=> setNonEmpty!48717 (= tp!1934107 setRes!48723)))

(declare-fun setIsEmpty!48723 () Bool)

(assert (=> setIsEmpty!48723 setRes!48723))

(declare-fun tp!1934130 () Bool)

(declare-fun e!4220673 () Bool)

(declare-fun setNonEmpty!48723 () Bool)

(declare-fun setElem!48723 () Context!12780)

(assert (=> setNonEmpty!48723 (= setRes!48723 (and tp!1934130 (inv!86345 setElem!48723) e!4220673))))

(declare-fun setRest!48723 () (Set Context!12780))

(assert (=> setNonEmpty!48723 (= setRest!48717 (set.union (set.insert setElem!48723 (as set.empty (Set Context!12780))) setRest!48723))))

(declare-fun b!7021335 () Bool)

(declare-fun tp!1934131 () Bool)

(assert (=> b!7021335 (= e!4220673 tp!1934131)))

(assert (= (and setNonEmpty!48717 condSetEmpty!48723) setIsEmpty!48723))

(assert (= (and setNonEmpty!48717 (not condSetEmpty!48723)) setNonEmpty!48723))

(assert (= setNonEmpty!48723 b!7021335))

(declare-fun m!7723266 () Bool)

(assert (=> setNonEmpty!48723 m!7723266))

(declare-fun b!7021340 () Bool)

(declare-fun e!4220676 () Bool)

(declare-fun tp!1934136 () Bool)

(declare-fun tp!1934137 () Bool)

(assert (=> b!7021340 (= e!4220676 (and tp!1934136 tp!1934137))))

(assert (=> b!7021272 (= tp!1934110 e!4220676)))

(assert (= (and b!7021272 (is-Cons!67601 (exprs!6890 setElem!48717))) b!7021340))

(declare-fun b!7021341 () Bool)

(declare-fun e!4220677 () Bool)

(declare-fun tp!1934138 () Bool)

(declare-fun tp!1934139 () Bool)

(assert (=> b!7021341 (= e!4220677 (and tp!1934138 tp!1934139))))

(assert (=> b!7021274 (= tp!1934108 e!4220677)))

(assert (= (and b!7021274 (is-Cons!67601 (exprs!6890 c!161))) b!7021341))

(declare-fun b!7021342 () Bool)

(declare-fun e!4220678 () Bool)

(declare-fun tp!1934140 () Bool)

(declare-fun tp!1934141 () Bool)

(assert (=> b!7021342 (= e!4220678 (and tp!1934140 tp!1934141))))

(assert (=> b!7021277 (= tp!1934109 e!4220678)))

(assert (= (and b!7021277 (is-Cons!67601 (exprs!6890 ct2!306))) b!7021342))

(declare-fun b!7021347 () Bool)

(declare-fun e!4220681 () Bool)

(declare-fun tp!1934144 () Bool)

(assert (=> b!7021347 (= e!4220681 (and tp_is_empty!44013 tp!1934144))))

(assert (=> b!7021278 (= tp!1934106 e!4220681)))

(assert (= (and b!7021278 (is-Cons!67602 (t!381481 s!7408))) b!7021347))

(declare-fun b_lambda!265097 () Bool)

(assert (= b_lambda!265091 (or b!7021280 b_lambda!265097)))

(declare-fun bs!1867614 () Bool)

(declare-fun d!2188605 () Bool)

(assert (= bs!1867614 (and d!2188605 b!7021280)))

(declare-fun validRegex!8917 (Regex!17394) Bool)

(assert (=> bs!1867614 (= (dynLambda!27232 lambda!411473 (h!74049 (exprs!6890 c!161))) (validRegex!8917 (h!74049 (exprs!6890 c!161))))))

(declare-fun m!7723270 () Bool)

(assert (=> bs!1867614 m!7723270))

(assert (=> b!7021312 d!2188605))

(declare-fun b_lambda!265099 () Bool)

(assert (= b_lambda!265093 (or b!7021273 b_lambda!265099)))

(declare-fun bs!1867615 () Bool)

(declare-fun d!2188607 () Bool)

(assert (= bs!1867615 (and d!2188607 b!7021273)))

(assert (=> bs!1867615 (= (dynLambda!27233 lambda!411472 lt!2512144) (nullableContext!54 lt!2512144))))

(declare-fun m!7723272 () Bool)

(assert (=> bs!1867615 m!7723272))

(assert (=> d!2188585 d!2188607))

(push 1)

(assert (not b!7021340))

(assert (not d!2188593))

(assert (not d!2188601))

(assert (not b!7021341))

(assert (not bs!1867614))

(assert (not b_lambda!265097))

(assert (not b!7021313))

(assert (not d!2188575))

(assert (not d!2188599))

(assert (not bs!1867615))

(assert (not b_lambda!265099))

(assert (not d!2188585))

(assert (not b!7021335))

(assert (not setNonEmpty!48723))

(assert (not d!2188587))

(assert (not b!7021326))

(assert (not d!2188581))

(assert (not b!7021342))

(assert (not d!2188577))

(assert tp_is_empty!44013)

(assert (not b!7021325))

(assert (not b!7021347))

(assert (not d!2188591))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


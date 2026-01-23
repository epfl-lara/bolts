; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713254 () Bool)

(assert start!713254)

(declare-fun setRes!54674 () Bool)

(declare-fun e!4380380 () Bool)

(declare-fun tp!2077432 () Bool)

(declare-datatypes ((C!38170 0))(
  ( (C!38171 (val!29181 Int)) )
))
(declare-datatypes ((Regex!18948 0))(
  ( (ElementMatch!18948 (c!1358325 C!38170)) (Concat!27793 (regOne!38408 Regex!18948) (regTwo!38408 Regex!18948)) (EmptyExpr!18948) (Star!18948 (reg!19277 Regex!18948)) (EmptyLang!18948) (Union!18948 (regOne!38409 Regex!18948) (regTwo!38409 Regex!18948)) )
))
(declare-datatypes ((List!71324 0))(
  ( (Nil!71200) (Cons!71200 (h!77648 Regex!18948) (t!385556 List!71324)) )
))
(declare-datatypes ((Context!15776 0))(
  ( (Context!15777 (exprs!8388 List!71324)) )
))
(declare-fun setElem!54675 () Context!15776)

(declare-fun setNonEmpty!54674 () Bool)

(declare-fun inv!90492 (Context!15776) Bool)

(assert (=> setNonEmpty!54674 (= setRes!54674 (and tp!2077432 (inv!90492 setElem!54675) e!4380380))))

(declare-fun z2!461 () (Set Context!15776))

(declare-fun setRest!54674 () (Set Context!15776))

(assert (=> setNonEmpty!54674 (= z2!461 (set.union (set.insert setElem!54675 (as set.empty (Set Context!15776))) setRest!54674))))

(declare-fun b!7316974 () Bool)

(declare-fun lt!2602353 () (Set Context!15776))

(declare-fun lambda!452539 () Int)

(declare-fun e!4380373 () Bool)

(declare-fun getWitness!2341 ((Set Context!15776) Int) Context!15776)

(assert (=> b!7316974 (= e!4380373 (not (set.member (getWitness!2341 z2!461 lambda!452539) lt!2602353)))))

(declare-fun setIsEmpty!54674 () Bool)

(declare-fun setRes!54675 () Bool)

(assert (=> setIsEmpty!54674 setRes!54675))

(declare-fun b!7316975 () Bool)

(declare-fun e!4380378 () Bool)

(declare-fun e!4380375 () Bool)

(assert (=> b!7316975 (= e!4380378 e!4380375)))

(declare-fun res!2956656 () Bool)

(assert (=> b!7316975 (=> (not res!2956656) (not e!4380375))))

(declare-fun nullableZipper!3127 ((Set Context!15776)) Bool)

(assert (=> b!7316975 (= res!2956656 (not (nullableZipper!3127 lt!2602353)))))

(declare-fun z1!542 () (Set Context!15776))

(assert (=> b!7316975 (= lt!2602353 (set.union z1!542 z2!461))))

(declare-fun b!7316976 () Bool)

(declare-datatypes ((Unit!164639 0))(
  ( (Unit!164640) )
))
(declare-fun e!4380379 () Unit!164639)

(declare-fun Unit!164641 () Unit!164639)

(assert (=> b!7316976 (= e!4380379 Unit!164641)))

(declare-fun res!2956660 () Bool)

(assert (=> start!713254 (=> (not res!2956660) (not e!4380378))))

(declare-datatypes ((List!71325 0))(
  ( (Nil!71201) (Cons!71201 (h!77649 C!38170) (t!385557 List!71325)) )
))
(declare-fun s!7362 () List!71325)

(assert (=> start!713254 (= res!2956660 (not (is-Cons!71201 s!7362)))))

(assert (=> start!713254 e!4380378))

(declare-fun e!4380374 () Bool)

(assert (=> start!713254 e!4380374))

(declare-fun condSetEmpty!54675 () Bool)

(assert (=> start!713254 (= condSetEmpty!54675 (= z1!542 (as set.empty (Set Context!15776))))))

(assert (=> start!713254 setRes!54675))

(declare-fun condSetEmpty!54674 () Bool)

(assert (=> start!713254 (= condSetEmpty!54674 (= z2!461 (as set.empty (Set Context!15776))))))

(assert (=> start!713254 setRes!54674))

(declare-fun b!7316977 () Bool)

(declare-fun Unit!164642 () Unit!164639)

(assert (=> b!7316977 (= e!4380379 Unit!164642)))

(declare-fun lt!2602355 () Unit!164639)

(declare-fun lemmaContainsThenExists!258 ((Set Context!15776) Context!15776 Int) Unit!164639)

(assert (=> b!7316977 (= lt!2602355 (lemmaContainsThenExists!258 lt!2602353 (getWitness!2341 z1!542 lambda!452539) lambda!452539))))

(declare-fun res!2956657 () Bool)

(declare-fun exists!4603 ((Set Context!15776) Int) Bool)

(assert (=> b!7316977 (= res!2956657 (exists!4603 lt!2602353 lambda!452539))))

(declare-fun e!4380376 () Bool)

(assert (=> b!7316977 (=> (not res!2956657) (not e!4380376))))

(assert (=> b!7316977 e!4380376))

(declare-fun b!7316978 () Bool)

(declare-fun tp_is_empty!47641 () Bool)

(declare-fun tp!2077431 () Bool)

(assert (=> b!7316978 (= e!4380374 (and tp_is_empty!47641 tp!2077431))))

(declare-fun b!7316979 () Bool)

(declare-fun tp!2077433 () Bool)

(assert (=> b!7316979 (= e!4380380 tp!2077433)))

(declare-fun b!7316980 () Bool)

(assert (=> b!7316980 (= e!4380376 false)))

(declare-fun e!4380377 () Bool)

(declare-fun setElem!54674 () Context!15776)

(declare-fun setNonEmpty!54675 () Bool)

(declare-fun tp!2077430 () Bool)

(assert (=> setNonEmpty!54675 (= setRes!54675 (and tp!2077430 (inv!90492 setElem!54674) e!4380377))))

(declare-fun setRest!54675 () (Set Context!15776))

(assert (=> setNonEmpty!54675 (= z1!542 (set.union (set.insert setElem!54674 (as set.empty (Set Context!15776))) setRest!54675))))

(declare-fun b!7316981 () Bool)

(assert (=> b!7316981 (= e!4380375 e!4380373)))

(declare-fun res!2956658 () Bool)

(assert (=> b!7316981 (=> (not res!2956658) (not e!4380373))))

(assert (=> b!7316981 (= res!2956658 (nullableZipper!3127 z2!461))))

(declare-fun lt!2602354 () Unit!164639)

(assert (=> b!7316981 (= lt!2602354 e!4380379)))

(declare-fun c!1358324 () Bool)

(assert (=> b!7316981 (= c!1358324 (nullableZipper!3127 z1!542))))

(declare-fun b!7316982 () Bool)

(declare-fun tp!2077434 () Bool)

(assert (=> b!7316982 (= e!4380377 tp!2077434)))

(declare-fun b!7316983 () Bool)

(declare-fun res!2956659 () Bool)

(assert (=> b!7316983 (=> (not res!2956659) (not e!4380375))))

(assert (=> b!7316983 (= res!2956659 (not (exists!4603 lt!2602353 lambda!452539)))))

(declare-fun setIsEmpty!54675 () Bool)

(assert (=> setIsEmpty!54675 setRes!54674))

(assert (= (and start!713254 res!2956660) b!7316975))

(assert (= (and b!7316975 res!2956656) b!7316983))

(assert (= (and b!7316983 res!2956659) b!7316981))

(assert (= (and b!7316981 c!1358324) b!7316977))

(assert (= (and b!7316981 (not c!1358324)) b!7316976))

(assert (= (and b!7316977 res!2956657) b!7316980))

(assert (= (and b!7316981 res!2956658) b!7316974))

(assert (= (and start!713254 (is-Cons!71201 s!7362)) b!7316978))

(assert (= (and start!713254 condSetEmpty!54675) setIsEmpty!54674))

(assert (= (and start!713254 (not condSetEmpty!54675)) setNonEmpty!54675))

(assert (= setNonEmpty!54675 b!7316982))

(assert (= (and start!713254 condSetEmpty!54674) setIsEmpty!54675))

(assert (= (and start!713254 (not condSetEmpty!54674)) setNonEmpty!54674))

(assert (= setNonEmpty!54674 b!7316979))

(declare-fun m!7981160 () Bool)

(assert (=> setNonEmpty!54675 m!7981160))

(declare-fun m!7981162 () Bool)

(assert (=> setNonEmpty!54674 m!7981162))

(declare-fun m!7981164 () Bool)

(assert (=> b!7316983 m!7981164))

(declare-fun m!7981166 () Bool)

(assert (=> b!7316974 m!7981166))

(assert (=> b!7316974 m!7981166))

(declare-fun m!7981168 () Bool)

(assert (=> b!7316974 m!7981168))

(declare-fun m!7981170 () Bool)

(assert (=> b!7316981 m!7981170))

(declare-fun m!7981172 () Bool)

(assert (=> b!7316981 m!7981172))

(declare-fun m!7981174 () Bool)

(assert (=> b!7316977 m!7981174))

(assert (=> b!7316977 m!7981174))

(declare-fun m!7981176 () Bool)

(assert (=> b!7316977 m!7981176))

(assert (=> b!7316977 m!7981164))

(declare-fun m!7981178 () Bool)

(assert (=> b!7316975 m!7981178))

(push 1)

(assert (not setNonEmpty!54674))

(assert (not b!7316974))

(assert (not b!7316977))

(assert (not setNonEmpty!54675))

(assert (not b!7316979))

(assert (not b!7316983))

(assert (not b!7316978))

(assert (not b!7316981))

(assert (not b!7316975))

(assert tp_is_empty!47641)

(assert (not b!7316982))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2271922 () Bool)

(assert (=> d!2271922 (exists!4603 lt!2602353 lambda!452539)))

(declare-fun lt!2602367 () Unit!164639)

(declare-fun choose!56754 ((Set Context!15776) Context!15776 Int) Unit!164639)

(assert (=> d!2271922 (= lt!2602367 (choose!56754 lt!2602353 (getWitness!2341 z1!542 lambda!452539) lambda!452539))))

(assert (=> d!2271922 (set.member (getWitness!2341 z1!542 lambda!452539) lt!2602353)))

(assert (=> d!2271922 (= (lemmaContainsThenExists!258 lt!2602353 (getWitness!2341 z1!542 lambda!452539) lambda!452539) lt!2602367)))

(declare-fun bs!1915282 () Bool)

(assert (= bs!1915282 d!2271922))

(assert (=> bs!1915282 m!7981164))

(assert (=> bs!1915282 m!7981174))

(declare-fun m!7981200 () Bool)

(assert (=> bs!1915282 m!7981200))

(assert (=> bs!1915282 m!7981174))

(declare-fun m!7981202 () Bool)

(assert (=> bs!1915282 m!7981202))

(assert (=> b!7316977 d!2271922))

(declare-fun d!2271924 () Bool)

(declare-fun e!4380408 () Bool)

(assert (=> d!2271924 e!4380408))

(declare-fun res!2956678 () Bool)

(assert (=> d!2271924 (=> (not res!2956678) (not e!4380408))))

(declare-fun lt!2602370 () Context!15776)

(declare-fun dynLambda!29168 (Int Context!15776) Bool)

(assert (=> d!2271924 (= res!2956678 (dynLambda!29168 lambda!452539 lt!2602370))))

(declare-datatypes ((List!71328 0))(
  ( (Nil!71204) (Cons!71204 (h!77652 Context!15776) (t!385560 List!71328)) )
))
(declare-fun getWitness!2343 (List!71328 Int) Context!15776)

(declare-fun toList!11633 ((Set Context!15776)) List!71328)

(assert (=> d!2271924 (= lt!2602370 (getWitness!2343 (toList!11633 z1!542) lambda!452539))))

(assert (=> d!2271924 (exists!4603 z1!542 lambda!452539)))

(assert (=> d!2271924 (= (getWitness!2341 z1!542 lambda!452539) lt!2602370)))

(declare-fun b!7317016 () Bool)

(assert (=> b!7317016 (= e!4380408 (set.member lt!2602370 z1!542))))

(assert (= (and d!2271924 res!2956678) b!7317016))

(declare-fun b_lambda!282623 () Bool)

(assert (=> (not b_lambda!282623) (not d!2271924)))

(declare-fun m!7981204 () Bool)

(assert (=> d!2271924 m!7981204))

(declare-fun m!7981206 () Bool)

(assert (=> d!2271924 m!7981206))

(assert (=> d!2271924 m!7981206))

(declare-fun m!7981208 () Bool)

(assert (=> d!2271924 m!7981208))

(declare-fun m!7981210 () Bool)

(assert (=> d!2271924 m!7981210))

(declare-fun m!7981212 () Bool)

(assert (=> b!7317016 m!7981212))

(assert (=> b!7316977 d!2271924))

(declare-fun d!2271926 () Bool)

(declare-fun lt!2602373 () Bool)

(declare-fun exists!4605 (List!71328 Int) Bool)

(assert (=> d!2271926 (= lt!2602373 (exists!4605 (toList!11633 lt!2602353) lambda!452539))))

(declare-fun choose!56755 ((Set Context!15776) Int) Bool)

(assert (=> d!2271926 (= lt!2602373 (choose!56755 lt!2602353 lambda!452539))))

(assert (=> d!2271926 (= (exists!4603 lt!2602353 lambda!452539) lt!2602373)))

(declare-fun bs!1915283 () Bool)

(assert (= bs!1915283 d!2271926))

(declare-fun m!7981214 () Bool)

(assert (=> bs!1915283 m!7981214))

(assert (=> bs!1915283 m!7981214))

(declare-fun m!7981216 () Bool)

(assert (=> bs!1915283 m!7981216))

(declare-fun m!7981218 () Bool)

(assert (=> bs!1915283 m!7981218))

(assert (=> b!7316977 d!2271926))

(declare-fun d!2271928 () Bool)

(declare-fun lambda!452551 () Int)

(declare-fun forall!17781 (List!71324 Int) Bool)

(assert (=> d!2271928 (= (inv!90492 setElem!54675) (forall!17781 (exprs!8388 setElem!54675) lambda!452551))))

(declare-fun bs!1915284 () Bool)

(assert (= bs!1915284 d!2271928))

(declare-fun m!7981220 () Bool)

(assert (=> bs!1915284 m!7981220))

(assert (=> setNonEmpty!54674 d!2271928))

(declare-fun bs!1915285 () Bool)

(declare-fun d!2271930 () Bool)

(assert (= bs!1915285 (and d!2271930 b!7316983)))

(declare-fun lambda!452554 () Int)

(assert (=> bs!1915285 (= lambda!452554 lambda!452539)))

(assert (=> d!2271930 (= (nullableZipper!3127 z2!461) (exists!4603 z2!461 lambda!452554))))

(declare-fun bs!1915286 () Bool)

(assert (= bs!1915286 d!2271930))

(declare-fun m!7981222 () Bool)

(assert (=> bs!1915286 m!7981222))

(assert (=> b!7316981 d!2271930))

(declare-fun bs!1915287 () Bool)

(declare-fun d!2271932 () Bool)

(assert (= bs!1915287 (and d!2271932 b!7316983)))

(declare-fun lambda!452555 () Int)

(assert (=> bs!1915287 (= lambda!452555 lambda!452539)))

(declare-fun bs!1915288 () Bool)

(assert (= bs!1915288 (and d!2271932 d!2271930)))

(assert (=> bs!1915288 (= lambda!452555 lambda!452554)))

(assert (=> d!2271932 (= (nullableZipper!3127 z1!542) (exists!4603 z1!542 lambda!452555))))

(declare-fun bs!1915289 () Bool)

(assert (= bs!1915289 d!2271932))

(declare-fun m!7981224 () Bool)

(assert (=> bs!1915289 m!7981224))

(assert (=> b!7316981 d!2271932))

(declare-fun d!2271934 () Bool)

(declare-fun e!4380409 () Bool)

(assert (=> d!2271934 e!4380409))

(declare-fun res!2956679 () Bool)

(assert (=> d!2271934 (=> (not res!2956679) (not e!4380409))))

(declare-fun lt!2602374 () Context!15776)

(assert (=> d!2271934 (= res!2956679 (dynLambda!29168 lambda!452539 lt!2602374))))

(assert (=> d!2271934 (= lt!2602374 (getWitness!2343 (toList!11633 z2!461) lambda!452539))))

(assert (=> d!2271934 (exists!4603 z2!461 lambda!452539)))

(assert (=> d!2271934 (= (getWitness!2341 z2!461 lambda!452539) lt!2602374)))

(declare-fun b!7317017 () Bool)

(assert (=> b!7317017 (= e!4380409 (set.member lt!2602374 z2!461))))

(assert (= (and d!2271934 res!2956679) b!7317017))

(declare-fun b_lambda!282625 () Bool)

(assert (=> (not b_lambda!282625) (not d!2271934)))

(declare-fun m!7981226 () Bool)

(assert (=> d!2271934 m!7981226))

(declare-fun m!7981228 () Bool)

(assert (=> d!2271934 m!7981228))

(assert (=> d!2271934 m!7981228))

(declare-fun m!7981230 () Bool)

(assert (=> d!2271934 m!7981230))

(declare-fun m!7981232 () Bool)

(assert (=> d!2271934 m!7981232))

(declare-fun m!7981234 () Bool)

(assert (=> b!7317017 m!7981234))

(assert (=> b!7316974 d!2271934))

(assert (=> b!7316983 d!2271926))

(declare-fun bs!1915290 () Bool)

(declare-fun d!2271936 () Bool)

(assert (= bs!1915290 (and d!2271936 d!2271928)))

(declare-fun lambda!452556 () Int)

(assert (=> bs!1915290 (= lambda!452556 lambda!452551)))

(assert (=> d!2271936 (= (inv!90492 setElem!54674) (forall!17781 (exprs!8388 setElem!54674) lambda!452556))))

(declare-fun bs!1915291 () Bool)

(assert (= bs!1915291 d!2271936))

(declare-fun m!7981236 () Bool)

(assert (=> bs!1915291 m!7981236))

(assert (=> setNonEmpty!54675 d!2271936))

(declare-fun bs!1915292 () Bool)

(declare-fun d!2271938 () Bool)

(assert (= bs!1915292 (and d!2271938 b!7316983)))

(declare-fun lambda!452557 () Int)

(assert (=> bs!1915292 (= lambda!452557 lambda!452539)))

(declare-fun bs!1915293 () Bool)

(assert (= bs!1915293 (and d!2271938 d!2271930)))

(assert (=> bs!1915293 (= lambda!452557 lambda!452554)))

(declare-fun bs!1915294 () Bool)

(assert (= bs!1915294 (and d!2271938 d!2271932)))

(assert (=> bs!1915294 (= lambda!452557 lambda!452555)))

(assert (=> d!2271938 (= (nullableZipper!3127 lt!2602353) (exists!4603 lt!2602353 lambda!452557))))

(declare-fun bs!1915295 () Bool)

(assert (= bs!1915295 d!2271938))

(declare-fun m!7981238 () Bool)

(assert (=> bs!1915295 m!7981238))

(assert (=> b!7316975 d!2271938))

(declare-fun condSetEmpty!54684 () Bool)

(assert (=> setNonEmpty!54674 (= condSetEmpty!54684 (= setRest!54674 (as set.empty (Set Context!15776))))))

(declare-fun setRes!54684 () Bool)

(assert (=> setNonEmpty!54674 (= tp!2077432 setRes!54684)))

(declare-fun setIsEmpty!54684 () Bool)

(assert (=> setIsEmpty!54684 setRes!54684))

(declare-fun setNonEmpty!54684 () Bool)

(declare-fun e!4380412 () Bool)

(declare-fun setElem!54684 () Context!15776)

(declare-fun tp!2077455 () Bool)

(assert (=> setNonEmpty!54684 (= setRes!54684 (and tp!2077455 (inv!90492 setElem!54684) e!4380412))))

(declare-fun setRest!54684 () (Set Context!15776))

(assert (=> setNonEmpty!54684 (= setRest!54674 (set.union (set.insert setElem!54684 (as set.empty (Set Context!15776))) setRest!54684))))

(declare-fun b!7317022 () Bool)

(declare-fun tp!2077454 () Bool)

(assert (=> b!7317022 (= e!4380412 tp!2077454)))

(assert (= (and setNonEmpty!54674 condSetEmpty!54684) setIsEmpty!54684))

(assert (= (and setNonEmpty!54674 (not condSetEmpty!54684)) setNonEmpty!54684))

(assert (= setNonEmpty!54684 b!7317022))

(declare-fun m!7981240 () Bool)

(assert (=> setNonEmpty!54684 m!7981240))

(declare-fun b!7317027 () Bool)

(declare-fun e!4380415 () Bool)

(declare-fun tp!2077460 () Bool)

(declare-fun tp!2077461 () Bool)

(assert (=> b!7317027 (= e!4380415 (and tp!2077460 tp!2077461))))

(assert (=> b!7316982 (= tp!2077434 e!4380415)))

(assert (= (and b!7316982 (is-Cons!71200 (exprs!8388 setElem!54674))) b!7317027))

(declare-fun b!7317032 () Bool)

(declare-fun e!4380418 () Bool)

(declare-fun tp!2077464 () Bool)

(assert (=> b!7317032 (= e!4380418 (and tp_is_empty!47641 tp!2077464))))

(assert (=> b!7316978 (= tp!2077431 e!4380418)))

(assert (= (and b!7316978 (is-Cons!71201 (t!385557 s!7362))) b!7317032))

(declare-fun b!7317033 () Bool)

(declare-fun e!4380419 () Bool)

(declare-fun tp!2077465 () Bool)

(declare-fun tp!2077466 () Bool)

(assert (=> b!7317033 (= e!4380419 (and tp!2077465 tp!2077466))))

(assert (=> b!7316979 (= tp!2077433 e!4380419)))

(assert (= (and b!7316979 (is-Cons!71200 (exprs!8388 setElem!54675))) b!7317033))

(declare-fun condSetEmpty!54685 () Bool)

(assert (=> setNonEmpty!54675 (= condSetEmpty!54685 (= setRest!54675 (as set.empty (Set Context!15776))))))

(declare-fun setRes!54685 () Bool)

(assert (=> setNonEmpty!54675 (= tp!2077430 setRes!54685)))

(declare-fun setIsEmpty!54685 () Bool)

(assert (=> setIsEmpty!54685 setRes!54685))

(declare-fun setNonEmpty!54685 () Bool)

(declare-fun tp!2077468 () Bool)

(declare-fun e!4380420 () Bool)

(declare-fun setElem!54685 () Context!15776)

(assert (=> setNonEmpty!54685 (= setRes!54685 (and tp!2077468 (inv!90492 setElem!54685) e!4380420))))

(declare-fun setRest!54685 () (Set Context!15776))

(assert (=> setNonEmpty!54685 (= setRest!54675 (set.union (set.insert setElem!54685 (as set.empty (Set Context!15776))) setRest!54685))))

(declare-fun b!7317034 () Bool)

(declare-fun tp!2077467 () Bool)

(assert (=> b!7317034 (= e!4380420 tp!2077467)))

(assert (= (and setNonEmpty!54675 condSetEmpty!54685) setIsEmpty!54685))

(assert (= (and setNonEmpty!54675 (not condSetEmpty!54685)) setNonEmpty!54685))

(assert (= setNonEmpty!54685 b!7317034))

(declare-fun m!7981242 () Bool)

(assert (=> setNonEmpty!54685 m!7981242))

(declare-fun b_lambda!282627 () Bool)

(assert (= b_lambda!282623 (or b!7316983 b_lambda!282627)))

(declare-fun bs!1915296 () Bool)

(declare-fun d!2271940 () Bool)

(assert (= bs!1915296 (and d!2271940 b!7316983)))

(declare-fun nullableContext!410 (Context!15776) Bool)

(assert (=> bs!1915296 (= (dynLambda!29168 lambda!452539 lt!2602370) (nullableContext!410 lt!2602370))))

(declare-fun m!7981244 () Bool)

(assert (=> bs!1915296 m!7981244))

(assert (=> d!2271924 d!2271940))

(declare-fun b_lambda!282629 () Bool)

(assert (= b_lambda!282625 (or b!7316983 b_lambda!282629)))

(declare-fun bs!1915297 () Bool)

(declare-fun d!2271942 () Bool)

(assert (= bs!1915297 (and d!2271942 b!7316983)))

(assert (=> bs!1915297 (= (dynLambda!29168 lambda!452539 lt!2602374) (nullableContext!410 lt!2602374))))

(declare-fun m!7981246 () Bool)

(assert (=> bs!1915297 m!7981246))

(assert (=> d!2271934 d!2271942))

(push 1)

(assert (not b!7317032))

(assert (not bs!1915296))

(assert (not setNonEmpty!54685))

(assert (not d!2271928))

(assert (not d!2271936))

(assert (not d!2271924))

(assert (not b_lambda!282627))

(assert (not setNonEmpty!54684))

(assert (not bs!1915297))

(assert (not d!2271922))

(assert (not b!7317033))

(assert (not b!7317022))

(assert (not d!2271934))

(assert (not d!2271926))

(assert (not d!2271932))

(assert (not b!7317027))

(assert (not d!2271938))

(assert (not b_lambda!282629))

(assert (not d!2271930))

(assert (not b!7317034))

(assert tp_is_empty!47641)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712922 () Bool)

(assert start!712922)

(declare-fun setRes!54386 () Bool)

(declare-fun setNonEmpty!54386 () Bool)

(declare-fun e!4379331 () Bool)

(declare-datatypes ((C!38106 0))(
  ( (C!38107 (val!29149 Int)) )
))
(declare-datatypes ((Regex!18916 0))(
  ( (ElementMatch!18916 (c!1357998 C!38106)) (Concat!27761 (regOne!38344 Regex!18916) (regTwo!38344 Regex!18916)) (EmptyExpr!18916) (Star!18916 (reg!19245 Regex!18916)) (EmptyLang!18916) (Union!18916 (regOne!38345 Regex!18916) (regTwo!38345 Regex!18916)) )
))
(declare-datatypes ((List!71246 0))(
  ( (Nil!71122) (Cons!71122 (h!77570 Regex!18916) (t!385478 List!71246)) )
))
(declare-datatypes ((Context!15712 0))(
  ( (Context!15713 (exprs!8356 List!71246)) )
))
(declare-fun setElem!54387 () Context!15712)

(declare-fun tp!2076400 () Bool)

(declare-fun inv!90412 (Context!15712) Bool)

(assert (=> setNonEmpty!54386 (= setRes!54386 (and tp!2076400 (inv!90412 setElem!54387) e!4379331))))

(declare-fun z2!461 () (Set Context!15712))

(declare-fun setRest!54386 () (Set Context!15712))

(assert (=> setNonEmpty!54386 (= z2!461 (set.union (set.insert setElem!54387 (as set.empty (Set Context!15712))) setRest!54386))))

(declare-fun b!7315549 () Bool)

(declare-fun tp!2076403 () Bool)

(assert (=> b!7315549 (= e!4379331 tp!2076403)))

(declare-fun res!2956166 () Bool)

(declare-fun e!4379329 () Bool)

(assert (=> start!712922 (=> (not res!2956166) (not e!4379329))))

(declare-datatypes ((List!71247 0))(
  ( (Nil!71123) (Cons!71123 (h!77571 C!38106) (t!385479 List!71247)) )
))
(declare-fun s!7362 () List!71247)

(assert (=> start!712922 (= res!2956166 (not (is-Cons!71123 s!7362)))))

(assert (=> start!712922 e!4379329))

(declare-fun e!4379332 () Bool)

(assert (=> start!712922 e!4379332))

(declare-fun condSetEmpty!54387 () Bool)

(declare-fun z1!542 () (Set Context!15712))

(assert (=> start!712922 (= condSetEmpty!54387 (= z1!542 (as set.empty (Set Context!15712))))))

(declare-fun setRes!54387 () Bool)

(assert (=> start!712922 setRes!54387))

(declare-fun condSetEmpty!54386 () Bool)

(assert (=> start!712922 (= condSetEmpty!54386 (= z2!461 (as set.empty (Set Context!15712))))))

(assert (=> start!712922 setRes!54386))

(declare-fun b!7315550 () Bool)

(declare-fun e!4379328 () Bool)

(assert (=> b!7315550 (= e!4379329 e!4379328)))

(declare-fun res!2956168 () Bool)

(assert (=> b!7315550 (=> (not res!2956168) (not e!4379328))))

(declare-fun lt!2601925 () (Set Context!15712))

(declare-fun nullableZipper!3097 ((Set Context!15712)) Bool)

(assert (=> b!7315550 (= res!2956168 (nullableZipper!3097 lt!2601925))))

(assert (=> b!7315550 (= lt!2601925 (set.union z1!542 z2!461))))

(declare-fun b!7315551 () Bool)

(declare-fun e!4379327 () Bool)

(assert (=> b!7315551 (= e!4379327 (not (nullableZipper!3097 z1!542)))))

(declare-fun lambda!452115 () Int)

(declare-fun exists!4560 ((Set Context!15712) Int) Bool)

(assert (=> b!7315551 (exists!4560 z1!542 lambda!452115)))

(declare-datatypes ((Unit!164589 0))(
  ( (Unit!164590) )
))
(declare-fun lt!2601923 () Unit!164589)

(declare-fun lt!2601924 () Context!15712)

(declare-fun lemmaContainsThenExists!244 ((Set Context!15712) Context!15712 Int) Unit!164589)

(assert (=> b!7315551 (= lt!2601923 (lemmaContainsThenExists!244 z1!542 lt!2601924 lambda!452115))))

(declare-fun setElem!54386 () Context!15712)

(declare-fun tp!2076402 () Bool)

(declare-fun setNonEmpty!54387 () Bool)

(declare-fun e!4379330 () Bool)

(assert (=> setNonEmpty!54387 (= setRes!54387 (and tp!2076402 (inv!90412 setElem!54386) e!4379330))))

(declare-fun setRest!54387 () (Set Context!15712))

(assert (=> setNonEmpty!54387 (= z1!542 (set.union (set.insert setElem!54386 (as set.empty (Set Context!15712))) setRest!54387))))

(declare-fun b!7315552 () Bool)

(declare-fun res!2956167 () Bool)

(assert (=> b!7315552 (=> (not res!2956167) (not e!4379328))))

(assert (=> b!7315552 (= res!2956167 (exists!4560 lt!2601925 lambda!452115))))

(declare-fun setIsEmpty!54386 () Bool)

(assert (=> setIsEmpty!54386 setRes!54386))

(declare-fun b!7315553 () Bool)

(declare-fun tp!2076401 () Bool)

(assert (=> b!7315553 (= e!4379330 tp!2076401)))

(declare-fun b!7315554 () Bool)

(declare-fun tp_is_empty!47577 () Bool)

(declare-fun tp!2076404 () Bool)

(assert (=> b!7315554 (= e!4379332 (and tp_is_empty!47577 tp!2076404))))

(declare-fun b!7315555 () Bool)

(assert (=> b!7315555 (= e!4379328 e!4379327)))

(declare-fun res!2956165 () Bool)

(assert (=> b!7315555 (=> (not res!2956165) (not e!4379327))))

(assert (=> b!7315555 (= res!2956165 (and (set.member lt!2601924 lt!2601925) (set.member lt!2601924 z1!542)))))

(declare-fun getWitness!2304 ((Set Context!15712) Int) Context!15712)

(assert (=> b!7315555 (= lt!2601924 (getWitness!2304 lt!2601925 lambda!452115))))

(declare-fun setIsEmpty!54387 () Bool)

(assert (=> setIsEmpty!54387 setRes!54387))

(assert (= (and start!712922 res!2956166) b!7315550))

(assert (= (and b!7315550 res!2956168) b!7315552))

(assert (= (and b!7315552 res!2956167) b!7315555))

(assert (= (and b!7315555 res!2956165) b!7315551))

(assert (= (and start!712922 (is-Cons!71123 s!7362)) b!7315554))

(assert (= (and start!712922 condSetEmpty!54387) setIsEmpty!54387))

(assert (= (and start!712922 (not condSetEmpty!54387)) setNonEmpty!54387))

(assert (= setNonEmpty!54387 b!7315553))

(assert (= (and start!712922 condSetEmpty!54386) setIsEmpty!54386))

(assert (= (and start!712922 (not condSetEmpty!54386)) setNonEmpty!54386))

(assert (= setNonEmpty!54386 b!7315549))

(declare-fun m!7979530 () Bool)

(assert (=> b!7315552 m!7979530))

(declare-fun m!7979532 () Bool)

(assert (=> setNonEmpty!54386 m!7979532))

(declare-fun m!7979534 () Bool)

(assert (=> b!7315555 m!7979534))

(declare-fun m!7979536 () Bool)

(assert (=> b!7315555 m!7979536))

(declare-fun m!7979538 () Bool)

(assert (=> b!7315555 m!7979538))

(declare-fun m!7979540 () Bool)

(assert (=> setNonEmpty!54387 m!7979540))

(declare-fun m!7979542 () Bool)

(assert (=> b!7315550 m!7979542))

(declare-fun m!7979544 () Bool)

(assert (=> b!7315551 m!7979544))

(declare-fun m!7979546 () Bool)

(assert (=> b!7315551 m!7979546))

(declare-fun m!7979548 () Bool)

(assert (=> b!7315551 m!7979548))

(push 1)

(assert (not setNonEmpty!54386))

(assert (not b!7315551))

(assert (not b!7315554))

(assert (not b!7315555))

(assert (not b!7315549))

(assert (not b!7315552))

(assert (not b!7315550))

(assert (not b!7315553))

(assert (not setNonEmpty!54387))

(assert tp_is_empty!47577)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2271308 () Bool)

(declare-fun e!4379353 () Bool)

(assert (=> d!2271308 e!4379353))

(declare-fun res!2956183 () Bool)

(assert (=> d!2271308 (=> (not res!2956183) (not e!4379353))))

(declare-fun lt!2601937 () Context!15712)

(declare-fun dynLambda!29151 (Int Context!15712) Bool)

(assert (=> d!2271308 (= res!2956183 (dynLambda!29151 lambda!452115 lt!2601937))))

(declare-datatypes ((List!71250 0))(
  ( (Nil!71126) (Cons!71126 (h!77574 Context!15712) (t!385482 List!71250)) )
))
(declare-fun getWitness!2306 (List!71250 Int) Context!15712)

(declare-fun toList!11619 ((Set Context!15712)) List!71250)

(assert (=> d!2271308 (= lt!2601937 (getWitness!2306 (toList!11619 lt!2601925) lambda!452115))))

(assert (=> d!2271308 (exists!4560 lt!2601925 lambda!452115)))

(assert (=> d!2271308 (= (getWitness!2304 lt!2601925 lambda!452115) lt!2601937)))

(declare-fun b!7315579 () Bool)

(assert (=> b!7315579 (= e!4379353 (set.member lt!2601937 lt!2601925))))

(assert (= (and d!2271308 res!2956183) b!7315579))

(declare-fun b_lambda!282523 () Bool)

(assert (=> (not b_lambda!282523) (not d!2271308)))

(declare-fun m!7979570 () Bool)

(assert (=> d!2271308 m!7979570))

(declare-fun m!7979572 () Bool)

(assert (=> d!2271308 m!7979572))

(assert (=> d!2271308 m!7979572))

(declare-fun m!7979574 () Bool)

(assert (=> d!2271308 m!7979574))

(assert (=> d!2271308 m!7979530))

(declare-fun m!7979576 () Bool)

(assert (=> b!7315579 m!7979576))

(assert (=> b!7315555 d!2271308))

(declare-fun d!2271310 () Bool)

(declare-fun lambda!452125 () Int)

(declare-fun forall!17765 (List!71246 Int) Bool)

(assert (=> d!2271310 (= (inv!90412 setElem!54386) (forall!17765 (exprs!8356 setElem!54386) lambda!452125))))

(declare-fun bs!1914810 () Bool)

(assert (= bs!1914810 d!2271310))

(declare-fun m!7979578 () Bool)

(assert (=> bs!1914810 m!7979578))

(assert (=> setNonEmpty!54387 d!2271310))

(declare-fun bs!1914811 () Bool)

(declare-fun d!2271312 () Bool)

(assert (= bs!1914811 (and d!2271312 b!7315552)))

(declare-fun lambda!452128 () Int)

(assert (=> bs!1914811 (= lambda!452128 lambda!452115)))

(assert (=> d!2271312 (= (nullableZipper!3097 z1!542) (exists!4560 z1!542 lambda!452128))))

(declare-fun bs!1914812 () Bool)

(assert (= bs!1914812 d!2271312))

(declare-fun m!7979580 () Bool)

(assert (=> bs!1914812 m!7979580))

(assert (=> b!7315551 d!2271312))

(declare-fun d!2271314 () Bool)

(declare-fun lt!2601940 () Bool)

(declare-fun exists!4562 (List!71250 Int) Bool)

(assert (=> d!2271314 (= lt!2601940 (exists!4562 (toList!11619 z1!542) lambda!452115))))

(declare-fun choose!56727 ((Set Context!15712) Int) Bool)

(assert (=> d!2271314 (= lt!2601940 (choose!56727 z1!542 lambda!452115))))

(assert (=> d!2271314 (= (exists!4560 z1!542 lambda!452115) lt!2601940)))

(declare-fun bs!1914813 () Bool)

(assert (= bs!1914813 d!2271314))

(declare-fun m!7979582 () Bool)

(assert (=> bs!1914813 m!7979582))

(assert (=> bs!1914813 m!7979582))

(declare-fun m!7979584 () Bool)

(assert (=> bs!1914813 m!7979584))

(declare-fun m!7979586 () Bool)

(assert (=> bs!1914813 m!7979586))

(assert (=> b!7315551 d!2271314))

(declare-fun d!2271316 () Bool)

(assert (=> d!2271316 (exists!4560 z1!542 lambda!452115)))

(declare-fun lt!2601943 () Unit!164589)

(declare-fun choose!56728 ((Set Context!15712) Context!15712 Int) Unit!164589)

(assert (=> d!2271316 (= lt!2601943 (choose!56728 z1!542 lt!2601924 lambda!452115))))

(assert (=> d!2271316 (set.member lt!2601924 z1!542)))

(assert (=> d!2271316 (= (lemmaContainsThenExists!244 z1!542 lt!2601924 lambda!452115) lt!2601943)))

(declare-fun bs!1914814 () Bool)

(assert (= bs!1914814 d!2271316))

(assert (=> bs!1914814 m!7979546))

(declare-fun m!7979588 () Bool)

(assert (=> bs!1914814 m!7979588))

(assert (=> bs!1914814 m!7979536))

(assert (=> b!7315551 d!2271316))

(declare-fun bs!1914815 () Bool)

(declare-fun d!2271318 () Bool)

(assert (= bs!1914815 (and d!2271318 b!7315552)))

(declare-fun lambda!452129 () Int)

(assert (=> bs!1914815 (= lambda!452129 lambda!452115)))

(declare-fun bs!1914816 () Bool)

(assert (= bs!1914816 (and d!2271318 d!2271312)))

(assert (=> bs!1914816 (= lambda!452129 lambda!452128)))

(assert (=> d!2271318 (= (nullableZipper!3097 lt!2601925) (exists!4560 lt!2601925 lambda!452129))))

(declare-fun bs!1914817 () Bool)

(assert (= bs!1914817 d!2271318))

(declare-fun m!7979590 () Bool)

(assert (=> bs!1914817 m!7979590))

(assert (=> b!7315550 d!2271318))

(declare-fun d!2271320 () Bool)

(declare-fun lt!2601944 () Bool)

(assert (=> d!2271320 (= lt!2601944 (exists!4562 (toList!11619 lt!2601925) lambda!452115))))

(assert (=> d!2271320 (= lt!2601944 (choose!56727 lt!2601925 lambda!452115))))

(assert (=> d!2271320 (= (exists!4560 lt!2601925 lambda!452115) lt!2601944)))

(declare-fun bs!1914818 () Bool)

(assert (= bs!1914818 d!2271320))

(assert (=> bs!1914818 m!7979572))

(assert (=> bs!1914818 m!7979572))

(declare-fun m!7979592 () Bool)

(assert (=> bs!1914818 m!7979592))

(declare-fun m!7979594 () Bool)

(assert (=> bs!1914818 m!7979594))

(assert (=> b!7315552 d!2271320))

(declare-fun bs!1914819 () Bool)

(declare-fun d!2271322 () Bool)

(assert (= bs!1914819 (and d!2271322 d!2271310)))

(declare-fun lambda!452130 () Int)

(assert (=> bs!1914819 (= lambda!452130 lambda!452125)))

(assert (=> d!2271322 (= (inv!90412 setElem!54387) (forall!17765 (exprs!8356 setElem!54387) lambda!452130))))

(declare-fun bs!1914820 () Bool)

(assert (= bs!1914820 d!2271322))

(declare-fun m!7979596 () Bool)

(assert (=> bs!1914820 m!7979596))

(assert (=> setNonEmpty!54386 d!2271322))

(declare-fun condSetEmpty!54396 () Bool)

(assert (=> setNonEmpty!54387 (= condSetEmpty!54396 (= setRest!54387 (as set.empty (Set Context!15712))))))

(declare-fun setRes!54396 () Bool)

(assert (=> setNonEmpty!54387 (= tp!2076402 setRes!54396)))

(declare-fun setIsEmpty!54396 () Bool)

(assert (=> setIsEmpty!54396 setRes!54396))

(declare-fun tp!2076425 () Bool)

(declare-fun setNonEmpty!54396 () Bool)

(declare-fun e!4379357 () Bool)

(declare-fun setElem!54396 () Context!15712)

(assert (=> setNonEmpty!54396 (= setRes!54396 (and tp!2076425 (inv!90412 setElem!54396) e!4379357))))

(declare-fun setRest!54396 () (Set Context!15712))

(assert (=> setNonEmpty!54396 (= setRest!54387 (set.union (set.insert setElem!54396 (as set.empty (Set Context!15712))) setRest!54396))))

(declare-fun b!7315584 () Bool)

(declare-fun tp!2076424 () Bool)

(assert (=> b!7315584 (= e!4379357 tp!2076424)))

(assert (= (and setNonEmpty!54387 condSetEmpty!54396) setIsEmpty!54396))

(assert (= (and setNonEmpty!54387 (not condSetEmpty!54396)) setNonEmpty!54396))

(assert (= setNonEmpty!54396 b!7315584))

(declare-fun m!7979598 () Bool)

(assert (=> setNonEmpty!54396 m!7979598))

(declare-fun b!7315589 () Bool)

(declare-fun e!4379360 () Bool)

(declare-fun tp!2076428 () Bool)

(assert (=> b!7315589 (= e!4379360 (and tp_is_empty!47577 tp!2076428))))

(assert (=> b!7315554 (= tp!2076404 e!4379360)))

(assert (= (and b!7315554 (is-Cons!71123 (t!385479 s!7362))) b!7315589))

(declare-fun b!7315594 () Bool)

(declare-fun e!4379363 () Bool)

(declare-fun tp!2076433 () Bool)

(declare-fun tp!2076434 () Bool)

(assert (=> b!7315594 (= e!4379363 (and tp!2076433 tp!2076434))))

(assert (=> b!7315553 (= tp!2076401 e!4379363)))

(assert (= (and b!7315553 (is-Cons!71122 (exprs!8356 setElem!54386))) b!7315594))

(declare-fun b!7315595 () Bool)

(declare-fun e!4379364 () Bool)

(declare-fun tp!2076435 () Bool)

(declare-fun tp!2076436 () Bool)

(assert (=> b!7315595 (= e!4379364 (and tp!2076435 tp!2076436))))

(assert (=> b!7315549 (= tp!2076403 e!4379364)))

(assert (= (and b!7315549 (is-Cons!71122 (exprs!8356 setElem!54387))) b!7315595))

(declare-fun condSetEmpty!54397 () Bool)

(assert (=> setNonEmpty!54386 (= condSetEmpty!54397 (= setRest!54386 (as set.empty (Set Context!15712))))))

(declare-fun setRes!54397 () Bool)

(assert (=> setNonEmpty!54386 (= tp!2076400 setRes!54397)))

(declare-fun setIsEmpty!54397 () Bool)

(assert (=> setIsEmpty!54397 setRes!54397))

(declare-fun e!4379365 () Bool)

(declare-fun tp!2076438 () Bool)

(declare-fun setNonEmpty!54397 () Bool)

(declare-fun setElem!54397 () Context!15712)

(assert (=> setNonEmpty!54397 (= setRes!54397 (and tp!2076438 (inv!90412 setElem!54397) e!4379365))))

(declare-fun setRest!54397 () (Set Context!15712))

(assert (=> setNonEmpty!54397 (= setRest!54386 (set.union (set.insert setElem!54397 (as set.empty (Set Context!15712))) setRest!54397))))

(declare-fun b!7315596 () Bool)

(declare-fun tp!2076437 () Bool)

(assert (=> b!7315596 (= e!4379365 tp!2076437)))

(assert (= (and setNonEmpty!54386 condSetEmpty!54397) setIsEmpty!54397))

(assert (= (and setNonEmpty!54386 (not condSetEmpty!54397)) setNonEmpty!54397))

(assert (= setNonEmpty!54397 b!7315596))

(declare-fun m!7979600 () Bool)

(assert (=> setNonEmpty!54397 m!7979600))

(declare-fun b_lambda!282525 () Bool)

(assert (= b_lambda!282523 (or b!7315552 b_lambda!282525)))

(declare-fun bs!1914821 () Bool)

(declare-fun d!2271324 () Bool)

(assert (= bs!1914821 (and d!2271324 b!7315552)))

(declare-fun nullableContext!398 (Context!15712) Bool)

(assert (=> bs!1914821 (= (dynLambda!29151 lambda!452115 lt!2601937) (nullableContext!398 lt!2601937))))

(declare-fun m!7979602 () Bool)

(assert (=> bs!1914821 m!7979602))

(assert (=> d!2271308 d!2271324))

(push 1)

(assert (not d!2271318))

(assert (not b!7315596))

(assert (not b_lambda!282525))

(assert (not d!2271310))

(assert (not b!7315594))

(assert (not b!7315589))

(assert (not d!2271312))

(assert (not bs!1914821))

(assert (not d!2271308))

(assert tp_is_empty!47577)

(assert (not b!7315584))

(assert (not setNonEmpty!54397))

(assert (not b!7315595))

(assert (not d!2271322))

(assert (not d!2271316))

(assert (not d!2271314))

(assert (not d!2271320))

(assert (not setNonEmpty!54396))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


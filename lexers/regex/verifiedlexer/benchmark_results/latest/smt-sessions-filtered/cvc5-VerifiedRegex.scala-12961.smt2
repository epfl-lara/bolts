; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713314 () Bool)

(assert start!713314)

(declare-fun b!7317323 () Bool)

(declare-fun e!4380654 () Bool)

(declare-fun tp_is_empty!47657 () Bool)

(declare-fun tp!2077628 () Bool)

(assert (=> b!7317323 (= e!4380654 (and tp_is_empty!47657 tp!2077628))))

(declare-fun res!2956801 () Bool)

(declare-fun e!4380656 () Bool)

(assert (=> start!713314 (=> (not res!2956801) (not e!4380656))))

(declare-datatypes ((C!38186 0))(
  ( (C!38187 (val!29189 Int)) )
))
(declare-datatypes ((List!71343 0))(
  ( (Nil!71219) (Cons!71219 (h!77667 C!38186) (t!385575 List!71343)) )
))
(declare-fun s!7362 () List!71343)

(assert (=> start!713314 (= res!2956801 (not (is-Cons!71219 s!7362)))))

(assert (=> start!713314 e!4380656))

(assert (=> start!713314 e!4380654))

(declare-fun condSetEmpty!54739 () Bool)

(declare-datatypes ((Regex!18956 0))(
  ( (ElementMatch!18956 (c!1358450 C!38186)) (Concat!27801 (regOne!38424 Regex!18956) (regTwo!38424 Regex!18956)) (EmptyExpr!18956) (Star!18956 (reg!19285 Regex!18956)) (EmptyLang!18956) (Union!18956 (regOne!38425 Regex!18956) (regTwo!38425 Regex!18956)) )
))
(declare-datatypes ((List!71344 0))(
  ( (Nil!71220) (Cons!71220 (h!77668 Regex!18956) (t!385576 List!71344)) )
))
(declare-datatypes ((Context!15792 0))(
  ( (Context!15793 (exprs!8396 List!71344)) )
))
(declare-fun z1!542 () (Set Context!15792))

(assert (=> start!713314 (= condSetEmpty!54739 (= z1!542 (as set.empty (Set Context!15792))))))

(declare-fun setRes!54738 () Bool)

(assert (=> start!713314 setRes!54738))

(declare-fun condSetEmpty!54738 () Bool)

(declare-fun z2!461 () (Set Context!15792))

(assert (=> start!713314 (= condSetEmpty!54738 (= z2!461 (as set.empty (Set Context!15792))))))

(declare-fun setRes!54739 () Bool)

(assert (=> start!713314 setRes!54739))

(declare-fun b!7317324 () Bool)

(declare-fun e!4380653 () Bool)

(assert (=> b!7317324 (= e!4380656 e!4380653)))

(declare-fun res!2956806 () Bool)

(assert (=> b!7317324 (=> (not res!2956806) (not e!4380653))))

(declare-fun lt!2602513 () (Set Context!15792))

(declare-fun nullableZipper!3135 ((Set Context!15792)) Bool)

(assert (=> b!7317324 (= res!2956806 (not (nullableZipper!3135 lt!2602513)))))

(assert (=> b!7317324 (= lt!2602513 (set.union z1!542 z2!461))))

(declare-fun setIsEmpty!54738 () Bool)

(assert (=> setIsEmpty!54738 setRes!54738))

(declare-fun b!7317325 () Bool)

(declare-datatypes ((Unit!164675 0))(
  ( (Unit!164676) )
))
(declare-fun e!4380646 () Unit!164675)

(declare-fun Unit!164677 () Unit!164675)

(assert (=> b!7317325 (= e!4380646 Unit!164677)))

(declare-fun b!7317326 () Bool)

(declare-fun e!4380655 () Unit!164675)

(declare-fun Unit!164678 () Unit!164675)

(assert (=> b!7317326 (= e!4380655 Unit!164678)))

(declare-fun b!7317327 () Bool)

(declare-fun e!4380651 () Bool)

(assert (=> b!7317327 (= e!4380651 false)))

(declare-fun b!7317328 () Bool)

(declare-fun res!2956804 () Bool)

(assert (=> b!7317328 (=> (not res!2956804) (not e!4380653))))

(declare-fun lambda!452662 () Int)

(declare-fun exists!4614 ((Set Context!15792) Int) Bool)

(assert (=> b!7317328 (= res!2956804 (not (exists!4614 lt!2602513 lambda!452662)))))

(declare-fun b!7317329 () Bool)

(declare-fun e!4380648 () Bool)

(assert (=> b!7317329 (= e!4380653 e!4380648)))

(declare-fun res!2956805 () Bool)

(assert (=> b!7317329 (=> (not res!2956805) (not e!4380648))))

(declare-fun lt!2602514 () Bool)

(declare-fun lt!2602509 () Bool)

(assert (=> b!7317329 (= res!2956805 (and (not lt!2602514) (not lt!2602509)))))

(declare-fun lt!2602512 () Unit!164675)

(assert (=> b!7317329 (= lt!2602512 e!4380646)))

(declare-fun c!1358449 () Bool)

(assert (=> b!7317329 (= c!1358449 lt!2602509)))

(assert (=> b!7317329 (= lt!2602509 (nullableZipper!3135 z2!461))))

(declare-fun lt!2602510 () Unit!164675)

(assert (=> b!7317329 (= lt!2602510 e!4380655)))

(declare-fun c!1358448 () Bool)

(assert (=> b!7317329 (= c!1358448 lt!2602514)))

(assert (=> b!7317329 (= lt!2602514 (nullableZipper!3135 z1!542))))

(declare-fun b!7317330 () Bool)

(declare-fun e!4380652 () Bool)

(declare-fun tp!2077626 () Bool)

(assert (=> b!7317330 (= e!4380652 tp!2077626)))

(declare-fun e!4380650 () Bool)

(declare-fun setElem!54739 () Context!15792)

(declare-fun setNonEmpty!54738 () Bool)

(declare-fun tp!2077630 () Bool)

(declare-fun inv!90512 (Context!15792) Bool)

(assert (=> setNonEmpty!54738 (= setRes!54739 (and tp!2077630 (inv!90512 setElem!54739) e!4380650))))

(declare-fun setRest!54739 () (Set Context!15792))

(assert (=> setNonEmpty!54738 (= z2!461 (set.union (set.insert setElem!54739 (as set.empty (Set Context!15792))) setRest!54739))))

(declare-fun setNonEmpty!54739 () Bool)

(declare-fun tp!2077627 () Bool)

(declare-fun setElem!54738 () Context!15792)

(assert (=> setNonEmpty!54739 (= setRes!54738 (and tp!2077627 (inv!90512 setElem!54738) e!4380652))))

(declare-fun setRest!54738 () (Set Context!15792))

(assert (=> setNonEmpty!54739 (= z1!542 (set.union (set.insert setElem!54738 (as set.empty (Set Context!15792))) setRest!54738))))

(declare-fun b!7317331 () Bool)

(declare-fun e!4380647 () Bool)

(assert (=> b!7317331 (= e!4380647 false)))

(declare-fun b!7317332 () Bool)

(declare-fun Unit!164679 () Unit!164675)

(assert (=> b!7317332 (= e!4380646 Unit!164679)))

(declare-fun lt!2602511 () Unit!164675)

(declare-fun lemmaContainsThenExists!266 ((Set Context!15792) Context!15792 Int) Unit!164675)

(declare-fun getWitness!2352 ((Set Context!15792) Int) Context!15792)

(assert (=> b!7317332 (= lt!2602511 (lemmaContainsThenExists!266 lt!2602513 (getWitness!2352 z2!461 lambda!452662) lambda!452662))))

(declare-fun res!2956802 () Bool)

(assert (=> b!7317332 (= res!2956802 (exists!4614 lt!2602513 lambda!452662))))

(assert (=> b!7317332 (=> (not res!2956802) (not e!4380647))))

(assert (=> b!7317332 e!4380647))

(declare-fun b!7317333 () Bool)

(declare-fun Unit!164680 () Unit!164675)

(assert (=> b!7317333 (= e!4380655 Unit!164680)))

(declare-fun lt!2602508 () Unit!164675)

(assert (=> b!7317333 (= lt!2602508 (lemmaContainsThenExists!266 lt!2602513 (getWitness!2352 z1!542 lambda!452662) lambda!452662))))

(declare-fun res!2956803 () Bool)

(assert (=> b!7317333 (= res!2956803 (exists!4614 lt!2602513 lambda!452662))))

(assert (=> b!7317333 (=> (not res!2956803) (not e!4380651))))

(assert (=> b!7317333 e!4380651))

(declare-fun setIsEmpty!54739 () Bool)

(assert (=> setIsEmpty!54739 setRes!54739))

(declare-fun b!7317334 () Bool)

(declare-fun e!4380649 () Bool)

(declare-fun matchZipper!3806 ((Set Context!15792) List!71343) Bool)

(assert (=> b!7317334 (= e!4380649 (matchZipper!3806 z2!461 s!7362))))

(declare-fun b!7317335 () Bool)

(assert (=> b!7317335 (= e!4380648 (not (= (matchZipper!3806 lt!2602513 s!7362) e!4380649)))))

(declare-fun res!2956807 () Bool)

(assert (=> b!7317335 (=> res!2956807 e!4380649)))

(assert (=> b!7317335 (= res!2956807 (matchZipper!3806 z1!542 s!7362))))

(declare-fun b!7317336 () Bool)

(declare-fun tp!2077629 () Bool)

(assert (=> b!7317336 (= e!4380650 tp!2077629)))

(assert (= (and start!713314 res!2956801) b!7317324))

(assert (= (and b!7317324 res!2956806) b!7317328))

(assert (= (and b!7317328 res!2956804) b!7317329))

(assert (= (and b!7317329 c!1358448) b!7317333))

(assert (= (and b!7317329 (not c!1358448)) b!7317326))

(assert (= (and b!7317333 res!2956803) b!7317327))

(assert (= (and b!7317329 c!1358449) b!7317332))

(assert (= (and b!7317329 (not c!1358449)) b!7317325))

(assert (= (and b!7317332 res!2956802) b!7317331))

(assert (= (and b!7317329 res!2956805) b!7317335))

(assert (= (and b!7317335 (not res!2956807)) b!7317334))

(assert (= (and start!713314 (is-Cons!71219 s!7362)) b!7317323))

(assert (= (and start!713314 condSetEmpty!54739) setIsEmpty!54738))

(assert (= (and start!713314 (not condSetEmpty!54739)) setNonEmpty!54739))

(assert (= setNonEmpty!54739 b!7317330))

(assert (= (and start!713314 condSetEmpty!54738) setIsEmpty!54739))

(assert (= (and start!713314 (not condSetEmpty!54738)) setNonEmpty!54738))

(assert (= setNonEmpty!54738 b!7317336))

(declare-fun m!7981490 () Bool)

(assert (=> b!7317328 m!7981490))

(declare-fun m!7981492 () Bool)

(assert (=> setNonEmpty!54739 m!7981492))

(declare-fun m!7981494 () Bool)

(assert (=> b!7317333 m!7981494))

(assert (=> b!7317333 m!7981494))

(declare-fun m!7981496 () Bool)

(assert (=> b!7317333 m!7981496))

(assert (=> b!7317333 m!7981490))

(declare-fun m!7981498 () Bool)

(assert (=> b!7317335 m!7981498))

(declare-fun m!7981500 () Bool)

(assert (=> b!7317335 m!7981500))

(declare-fun m!7981502 () Bool)

(assert (=> b!7317334 m!7981502))

(declare-fun m!7981504 () Bool)

(assert (=> setNonEmpty!54738 m!7981504))

(declare-fun m!7981506 () Bool)

(assert (=> b!7317324 m!7981506))

(declare-fun m!7981508 () Bool)

(assert (=> b!7317329 m!7981508))

(declare-fun m!7981510 () Bool)

(assert (=> b!7317329 m!7981510))

(declare-fun m!7981512 () Bool)

(assert (=> b!7317332 m!7981512))

(assert (=> b!7317332 m!7981512))

(declare-fun m!7981514 () Bool)

(assert (=> b!7317332 m!7981514))

(assert (=> b!7317332 m!7981490))

(push 1)

(assert (not b!7317333))

(assert (not b!7317334))

(assert (not b!7317336))

(assert (not setNonEmpty!54738))

(assert (not b!7317329))

(assert tp_is_empty!47657)

(assert (not b!7317328))

(assert (not b!7317324))

(assert (not b!7317330))

(assert (not b!7317332))

(assert (not b!7317323))

(assert (not setNonEmpty!54739))

(assert (not b!7317335))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2272010 () Bool)

(declare-fun c!1358470 () Bool)

(declare-fun isEmpty!40863 (List!71343) Bool)

(assert (=> d!2272010 (= c!1358470 (isEmpty!40863 s!7362))))

(declare-fun e!4380692 () Bool)

(assert (=> d!2272010 (= (matchZipper!3806 z2!461 s!7362) e!4380692)))

(declare-fun b!7317383 () Bool)

(assert (=> b!7317383 (= e!4380692 (nullableZipper!3135 z2!461))))

(declare-fun b!7317384 () Bool)

(declare-fun derivationStepZipper!3634 ((Set Context!15792) C!38186) (Set Context!15792))

(declare-fun head!15083 (List!71343) C!38186)

(declare-fun tail!14642 (List!71343) List!71343)

(assert (=> b!7317384 (= e!4380692 (matchZipper!3806 (derivationStepZipper!3634 z2!461 (head!15083 s!7362)) (tail!14642 s!7362)))))

(assert (= (and d!2272010 c!1358470) b!7317383))

(assert (= (and d!2272010 (not c!1358470)) b!7317384))

(declare-fun m!7981542 () Bool)

(assert (=> d!2272010 m!7981542))

(assert (=> b!7317383 m!7981508))

(declare-fun m!7981544 () Bool)

(assert (=> b!7317384 m!7981544))

(assert (=> b!7317384 m!7981544))

(declare-fun m!7981546 () Bool)

(assert (=> b!7317384 m!7981546))

(declare-fun m!7981548 () Bool)

(assert (=> b!7317384 m!7981548))

(assert (=> b!7317384 m!7981546))

(assert (=> b!7317384 m!7981548))

(declare-fun m!7981550 () Bool)

(assert (=> b!7317384 m!7981550))

(assert (=> b!7317334 d!2272010))

(declare-fun d!2272012 () Bool)

(declare-fun lambda!452676 () Int)

(declare-fun forall!17784 (List!71344 Int) Bool)

(assert (=> d!2272012 (= (inv!90512 setElem!54739) (forall!17784 (exprs!8396 setElem!54739) lambda!452676))))

(declare-fun bs!1915354 () Bool)

(assert (= bs!1915354 d!2272012))

(declare-fun m!7981552 () Bool)

(assert (=> bs!1915354 m!7981552))

(assert (=> setNonEmpty!54738 d!2272012))

(declare-fun d!2272014 () Bool)

(assert (=> d!2272014 (exists!4614 lt!2602513 lambda!452662)))

(declare-fun lt!2602538 () Unit!164675)

(declare-fun choose!56760 ((Set Context!15792) Context!15792 Int) Unit!164675)

(assert (=> d!2272014 (= lt!2602538 (choose!56760 lt!2602513 (getWitness!2352 z1!542 lambda!452662) lambda!452662))))

(assert (=> d!2272014 (set.member (getWitness!2352 z1!542 lambda!452662) lt!2602513)))

(assert (=> d!2272014 (= (lemmaContainsThenExists!266 lt!2602513 (getWitness!2352 z1!542 lambda!452662) lambda!452662) lt!2602538)))

(declare-fun bs!1915355 () Bool)

(assert (= bs!1915355 d!2272014))

(assert (=> bs!1915355 m!7981490))

(assert (=> bs!1915355 m!7981494))

(declare-fun m!7981554 () Bool)

(assert (=> bs!1915355 m!7981554))

(assert (=> bs!1915355 m!7981494))

(declare-fun m!7981556 () Bool)

(assert (=> bs!1915355 m!7981556))

(assert (=> b!7317333 d!2272014))

(declare-fun d!2272016 () Bool)

(declare-fun e!4380696 () Bool)

(assert (=> d!2272016 e!4380696))

(declare-fun res!2956831 () Bool)

(assert (=> d!2272016 (=> (not res!2956831) (not e!4380696))))

(declare-fun lt!2602541 () Context!15792)

(declare-fun dynLambda!29171 (Int Context!15792) Bool)

(assert (=> d!2272016 (= res!2956831 (dynLambda!29171 lambda!452662 lt!2602541))))

(declare-datatypes ((List!71347 0))(
  ( (Nil!71223) (Cons!71223 (h!77671 Context!15792) (t!385579 List!71347)) )
))
(declare-fun getWitness!2354 (List!71347 Int) Context!15792)

(declare-fun toList!11636 ((Set Context!15792)) List!71347)

(assert (=> d!2272016 (= lt!2602541 (getWitness!2354 (toList!11636 z1!542) lambda!452662))))

(assert (=> d!2272016 (exists!4614 z1!542 lambda!452662)))

(assert (=> d!2272016 (= (getWitness!2352 z1!542 lambda!452662) lt!2602541)))

(declare-fun b!7317387 () Bool)

(assert (=> b!7317387 (= e!4380696 (set.member lt!2602541 z1!542))))

(assert (= (and d!2272016 res!2956831) b!7317387))

(declare-fun b_lambda!282647 () Bool)

(assert (=> (not b_lambda!282647) (not d!2272016)))

(declare-fun m!7981558 () Bool)

(assert (=> d!2272016 m!7981558))

(declare-fun m!7981560 () Bool)

(assert (=> d!2272016 m!7981560))

(assert (=> d!2272016 m!7981560))

(declare-fun m!7981562 () Bool)

(assert (=> d!2272016 m!7981562))

(declare-fun m!7981564 () Bool)

(assert (=> d!2272016 m!7981564))

(declare-fun m!7981566 () Bool)

(assert (=> b!7317387 m!7981566))

(assert (=> b!7317333 d!2272016))

(declare-fun d!2272018 () Bool)

(declare-fun lt!2602544 () Bool)

(declare-fun exists!4616 (List!71347 Int) Bool)

(assert (=> d!2272018 (= lt!2602544 (exists!4616 (toList!11636 lt!2602513) lambda!452662))))

(declare-fun choose!56761 ((Set Context!15792) Int) Bool)

(assert (=> d!2272018 (= lt!2602544 (choose!56761 lt!2602513 lambda!452662))))

(assert (=> d!2272018 (= (exists!4614 lt!2602513 lambda!452662) lt!2602544)))

(declare-fun bs!1915356 () Bool)

(assert (= bs!1915356 d!2272018))

(declare-fun m!7981568 () Bool)

(assert (=> bs!1915356 m!7981568))

(assert (=> bs!1915356 m!7981568))

(declare-fun m!7981570 () Bool)

(assert (=> bs!1915356 m!7981570))

(declare-fun m!7981572 () Bool)

(assert (=> bs!1915356 m!7981572))

(assert (=> b!7317333 d!2272018))

(declare-fun bs!1915357 () Bool)

(declare-fun d!2272022 () Bool)

(assert (= bs!1915357 (and d!2272022 b!7317328)))

(declare-fun lambda!452679 () Int)

(assert (=> bs!1915357 (= lambda!452679 lambda!452662)))

(assert (=> d!2272022 (= (nullableZipper!3135 z2!461) (exists!4614 z2!461 lambda!452679))))

(declare-fun bs!1915358 () Bool)

(assert (= bs!1915358 d!2272022))

(declare-fun m!7981574 () Bool)

(assert (=> bs!1915358 m!7981574))

(assert (=> b!7317329 d!2272022))

(declare-fun bs!1915359 () Bool)

(declare-fun d!2272024 () Bool)

(assert (= bs!1915359 (and d!2272024 b!7317328)))

(declare-fun lambda!452680 () Int)

(assert (=> bs!1915359 (= lambda!452680 lambda!452662)))

(declare-fun bs!1915360 () Bool)

(assert (= bs!1915360 (and d!2272024 d!2272022)))

(assert (=> bs!1915360 (= lambda!452680 lambda!452679)))

(assert (=> d!2272024 (= (nullableZipper!3135 z1!542) (exists!4614 z1!542 lambda!452680))))

(declare-fun bs!1915361 () Bool)

(assert (= bs!1915361 d!2272024))

(declare-fun m!7981576 () Bool)

(assert (=> bs!1915361 m!7981576))

(assert (=> b!7317329 d!2272024))

(declare-fun d!2272026 () Bool)

(assert (=> d!2272026 (exists!4614 lt!2602513 lambda!452662)))

(declare-fun lt!2602545 () Unit!164675)

(assert (=> d!2272026 (= lt!2602545 (choose!56760 lt!2602513 (getWitness!2352 z2!461 lambda!452662) lambda!452662))))

(assert (=> d!2272026 (set.member (getWitness!2352 z2!461 lambda!452662) lt!2602513)))

(assert (=> d!2272026 (= (lemmaContainsThenExists!266 lt!2602513 (getWitness!2352 z2!461 lambda!452662) lambda!452662) lt!2602545)))

(declare-fun bs!1915362 () Bool)

(assert (= bs!1915362 d!2272026))

(assert (=> bs!1915362 m!7981490))

(assert (=> bs!1915362 m!7981512))

(declare-fun m!7981578 () Bool)

(assert (=> bs!1915362 m!7981578))

(assert (=> bs!1915362 m!7981512))

(declare-fun m!7981580 () Bool)

(assert (=> bs!1915362 m!7981580))

(assert (=> b!7317332 d!2272026))

(declare-fun d!2272028 () Bool)

(declare-fun e!4380697 () Bool)

(assert (=> d!2272028 e!4380697))

(declare-fun res!2956832 () Bool)

(assert (=> d!2272028 (=> (not res!2956832) (not e!4380697))))

(declare-fun lt!2602546 () Context!15792)

(assert (=> d!2272028 (= res!2956832 (dynLambda!29171 lambda!452662 lt!2602546))))

(assert (=> d!2272028 (= lt!2602546 (getWitness!2354 (toList!11636 z2!461) lambda!452662))))

(assert (=> d!2272028 (exists!4614 z2!461 lambda!452662)))

(assert (=> d!2272028 (= (getWitness!2352 z2!461 lambda!452662) lt!2602546)))

(declare-fun b!7317388 () Bool)

(assert (=> b!7317388 (= e!4380697 (set.member lt!2602546 z2!461))))

(assert (= (and d!2272028 res!2956832) b!7317388))

(declare-fun b_lambda!282649 () Bool)

(assert (=> (not b_lambda!282649) (not d!2272028)))

(declare-fun m!7981582 () Bool)

(assert (=> d!2272028 m!7981582))

(declare-fun m!7981584 () Bool)

(assert (=> d!2272028 m!7981584))

(assert (=> d!2272028 m!7981584))

(declare-fun m!7981586 () Bool)

(assert (=> d!2272028 m!7981586))

(declare-fun m!7981588 () Bool)

(assert (=> d!2272028 m!7981588))

(declare-fun m!7981590 () Bool)

(assert (=> b!7317388 m!7981590))

(assert (=> b!7317332 d!2272028))

(assert (=> b!7317332 d!2272018))

(declare-fun bs!1915363 () Bool)

(declare-fun d!2272030 () Bool)

(assert (= bs!1915363 (and d!2272030 b!7317328)))

(declare-fun lambda!452683 () Int)

(assert (=> bs!1915363 (= lambda!452683 lambda!452662)))

(declare-fun bs!1915364 () Bool)

(assert (= bs!1915364 (and d!2272030 d!2272022)))

(assert (=> bs!1915364 (= lambda!452683 lambda!452679)))

(declare-fun bs!1915365 () Bool)

(assert (= bs!1915365 (and d!2272030 d!2272024)))

(assert (=> bs!1915365 (= lambda!452683 lambda!452680)))

(assert (=> d!2272030 (= (nullableZipper!3135 lt!2602513) (exists!4614 lt!2602513 lambda!452683))))

(declare-fun bs!1915366 () Bool)

(assert (= bs!1915366 d!2272030))

(declare-fun m!7981592 () Bool)

(assert (=> bs!1915366 m!7981592))

(assert (=> b!7317324 d!2272030))

(assert (=> b!7317328 d!2272018))

(declare-fun d!2272032 () Bool)

(declare-fun c!1358475 () Bool)

(assert (=> d!2272032 (= c!1358475 (isEmpty!40863 s!7362))))

(declare-fun e!4380698 () Bool)

(assert (=> d!2272032 (= (matchZipper!3806 lt!2602513 s!7362) e!4380698)))

(declare-fun b!7317389 () Bool)

(assert (=> b!7317389 (= e!4380698 (nullableZipper!3135 lt!2602513))))

(declare-fun b!7317390 () Bool)

(assert (=> b!7317390 (= e!4380698 (matchZipper!3806 (derivationStepZipper!3634 lt!2602513 (head!15083 s!7362)) (tail!14642 s!7362)))))

(assert (= (and d!2272032 c!1358475) b!7317389))

(assert (= (and d!2272032 (not c!1358475)) b!7317390))

(assert (=> d!2272032 m!7981542))

(assert (=> b!7317389 m!7981506))

(assert (=> b!7317390 m!7981544))

(assert (=> b!7317390 m!7981544))

(declare-fun m!7981594 () Bool)

(assert (=> b!7317390 m!7981594))

(assert (=> b!7317390 m!7981548))

(assert (=> b!7317390 m!7981594))

(assert (=> b!7317390 m!7981548))

(declare-fun m!7981596 () Bool)

(assert (=> b!7317390 m!7981596))

(assert (=> b!7317335 d!2272032))

(declare-fun d!2272034 () Bool)

(declare-fun c!1358476 () Bool)

(assert (=> d!2272034 (= c!1358476 (isEmpty!40863 s!7362))))

(declare-fun e!4380699 () Bool)

(assert (=> d!2272034 (= (matchZipper!3806 z1!542 s!7362) e!4380699)))

(declare-fun b!7317391 () Bool)

(assert (=> b!7317391 (= e!4380699 (nullableZipper!3135 z1!542))))

(declare-fun b!7317392 () Bool)

(assert (=> b!7317392 (= e!4380699 (matchZipper!3806 (derivationStepZipper!3634 z1!542 (head!15083 s!7362)) (tail!14642 s!7362)))))

(assert (= (and d!2272034 c!1358476) b!7317391))

(assert (= (and d!2272034 (not c!1358476)) b!7317392))

(assert (=> d!2272034 m!7981542))

(assert (=> b!7317391 m!7981510))

(assert (=> b!7317392 m!7981544))

(assert (=> b!7317392 m!7981544))

(declare-fun m!7981598 () Bool)

(assert (=> b!7317392 m!7981598))

(assert (=> b!7317392 m!7981548))

(assert (=> b!7317392 m!7981598))

(assert (=> b!7317392 m!7981548))

(declare-fun m!7981600 () Bool)

(assert (=> b!7317392 m!7981600))

(assert (=> b!7317335 d!2272034))

(declare-fun bs!1915367 () Bool)

(declare-fun d!2272036 () Bool)

(assert (= bs!1915367 (and d!2272036 d!2272012)))

(declare-fun lambda!452684 () Int)

(assert (=> bs!1915367 (= lambda!452684 lambda!452676)))

(assert (=> d!2272036 (= (inv!90512 setElem!54738) (forall!17784 (exprs!8396 setElem!54738) lambda!452684))))

(declare-fun bs!1915368 () Bool)

(assert (= bs!1915368 d!2272036))

(declare-fun m!7981602 () Bool)

(assert (=> bs!1915368 m!7981602))

(assert (=> setNonEmpty!54739 d!2272036))

(declare-fun condSetEmpty!54748 () Bool)

(assert (=> setNonEmpty!54738 (= condSetEmpty!54748 (= setRest!54739 (as set.empty (Set Context!15792))))))

(declare-fun setRes!54748 () Bool)

(assert (=> setNonEmpty!54738 (= tp!2077630 setRes!54748)))

(declare-fun setIsEmpty!54748 () Bool)

(assert (=> setIsEmpty!54748 setRes!54748))

(declare-fun tp!2077650 () Bool)

(declare-fun setNonEmpty!54748 () Bool)

(declare-fun e!4380702 () Bool)

(declare-fun setElem!54748 () Context!15792)

(assert (=> setNonEmpty!54748 (= setRes!54748 (and tp!2077650 (inv!90512 setElem!54748) e!4380702))))

(declare-fun setRest!54748 () (Set Context!15792))

(assert (=> setNonEmpty!54748 (= setRest!54739 (set.union (set.insert setElem!54748 (as set.empty (Set Context!15792))) setRest!54748))))

(declare-fun b!7317397 () Bool)

(declare-fun tp!2077651 () Bool)

(assert (=> b!7317397 (= e!4380702 tp!2077651)))

(assert (= (and setNonEmpty!54738 condSetEmpty!54748) setIsEmpty!54748))

(assert (= (and setNonEmpty!54738 (not condSetEmpty!54748)) setNonEmpty!54748))

(assert (= setNonEmpty!54748 b!7317397))

(declare-fun m!7981606 () Bool)

(assert (=> setNonEmpty!54748 m!7981606))

(declare-fun b!7317402 () Bool)

(declare-fun e!4380705 () Bool)

(declare-fun tp!2077656 () Bool)

(declare-fun tp!2077657 () Bool)

(assert (=> b!7317402 (= e!4380705 (and tp!2077656 tp!2077657))))

(assert (=> b!7317330 (= tp!2077626 e!4380705)))

(assert (= (and b!7317330 (is-Cons!71220 (exprs!8396 setElem!54738))) b!7317402))

(declare-fun b!7317403 () Bool)

(declare-fun e!4380706 () Bool)

(declare-fun tp!2077658 () Bool)

(declare-fun tp!2077659 () Bool)

(assert (=> b!7317403 (= e!4380706 (and tp!2077658 tp!2077659))))

(assert (=> b!7317336 (= tp!2077629 e!4380706)))

(assert (= (and b!7317336 (is-Cons!71220 (exprs!8396 setElem!54739))) b!7317403))

(declare-fun b!7317408 () Bool)

(declare-fun e!4380709 () Bool)

(declare-fun tp!2077662 () Bool)

(assert (=> b!7317408 (= e!4380709 (and tp_is_empty!47657 tp!2077662))))

(assert (=> b!7317323 (= tp!2077628 e!4380709)))

(assert (= (and b!7317323 (is-Cons!71219 (t!385575 s!7362))) b!7317408))

(declare-fun condSetEmpty!54749 () Bool)

(assert (=> setNonEmpty!54739 (= condSetEmpty!54749 (= setRest!54738 (as set.empty (Set Context!15792))))))

(declare-fun setRes!54749 () Bool)

(assert (=> setNonEmpty!54739 (= tp!2077627 setRes!54749)))

(declare-fun setIsEmpty!54749 () Bool)

(assert (=> setIsEmpty!54749 setRes!54749))

(declare-fun e!4380710 () Bool)

(declare-fun tp!2077663 () Bool)

(declare-fun setElem!54749 () Context!15792)

(declare-fun setNonEmpty!54749 () Bool)

(assert (=> setNonEmpty!54749 (= setRes!54749 (and tp!2077663 (inv!90512 setElem!54749) e!4380710))))

(declare-fun setRest!54749 () (Set Context!15792))

(assert (=> setNonEmpty!54749 (= setRest!54738 (set.union (set.insert setElem!54749 (as set.empty (Set Context!15792))) setRest!54749))))

(declare-fun b!7317409 () Bool)

(declare-fun tp!2077664 () Bool)

(assert (=> b!7317409 (= e!4380710 tp!2077664)))

(assert (= (and setNonEmpty!54739 condSetEmpty!54749) setIsEmpty!54749))

(assert (= (and setNonEmpty!54739 (not condSetEmpty!54749)) setNonEmpty!54749))

(assert (= setNonEmpty!54749 b!7317409))

(declare-fun m!7981608 () Bool)

(assert (=> setNonEmpty!54749 m!7981608))

(declare-fun b_lambda!282651 () Bool)

(assert (= b_lambda!282647 (or b!7317328 b_lambda!282651)))

(declare-fun bs!1915371 () Bool)

(declare-fun d!2272040 () Bool)

(assert (= bs!1915371 (and d!2272040 b!7317328)))

(declare-fun nullableContext!413 (Context!15792) Bool)

(assert (=> bs!1915371 (= (dynLambda!29171 lambda!452662 lt!2602541) (nullableContext!413 lt!2602541))))

(declare-fun m!7981610 () Bool)

(assert (=> bs!1915371 m!7981610))

(assert (=> d!2272016 d!2272040))

(declare-fun b_lambda!282653 () Bool)

(assert (= b_lambda!282649 (or b!7317328 b_lambda!282653)))

(declare-fun bs!1915372 () Bool)

(declare-fun d!2272042 () Bool)

(assert (= bs!1915372 (and d!2272042 b!7317328)))

(assert (=> bs!1915372 (= (dynLambda!29171 lambda!452662 lt!2602546) (nullableContext!413 lt!2602546))))

(declare-fun m!7981612 () Bool)

(assert (=> bs!1915372 m!7981612))

(assert (=> d!2272028 d!2272042))

(push 1)

(assert (not d!2272026))

(assert (not d!2272034))

(assert (not d!2272012))

(assert (not b!7317402))

(assert (not setNonEmpty!54749))

(assert (not b!7317391))

(assert tp_is_empty!47657)

(assert (not d!2272016))

(assert (not b!7317403))

(assert (not d!2272010))

(assert (not b!7317390))

(assert (not b!7317383))

(assert (not b!7317409))

(assert (not b!7317392))

(assert (not d!2272018))

(assert (not d!2272024))

(assert (not b_lambda!282653))

(assert (not d!2272032))

(assert (not b!7317408))

(assert (not setNonEmpty!54748))

(assert (not bs!1915371))

(assert (not bs!1915372))

(assert (not d!2272022))

(assert (not b_lambda!282651))

(assert (not b!7317389))

(assert (not d!2272028))

(assert (not d!2272030))

(assert (not b!7317384))

(assert (not b!7317397))

(assert (not d!2272036))

(assert (not d!2272014))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2272070 () Bool)

(declare-fun c!1358482 () Bool)

(assert (=> d!2272070 (= c!1358482 (isEmpty!40863 (tail!14642 s!7362)))))

(declare-fun e!4380732 () Bool)

(assert (=> d!2272070 (= (matchZipper!3806 (derivationStepZipper!3634 z2!461 (head!15083 s!7362)) (tail!14642 s!7362)) e!4380732)))

(declare-fun b!7317441 () Bool)

(assert (=> b!7317441 (= e!4380732 (nullableZipper!3135 (derivationStepZipper!3634 z2!461 (head!15083 s!7362))))))

(declare-fun b!7317442 () Bool)

(assert (=> b!7317442 (= e!4380732 (matchZipper!3806 (derivationStepZipper!3634 (derivationStepZipper!3634 z2!461 (head!15083 s!7362)) (head!15083 (tail!14642 s!7362))) (tail!14642 (tail!14642 s!7362))))))

(assert (= (and d!2272070 c!1358482) b!7317441))

(assert (= (and d!2272070 (not c!1358482)) b!7317442))

(assert (=> d!2272070 m!7981548))

(declare-fun m!7981682 () Bool)

(assert (=> d!2272070 m!7981682))

(assert (=> b!7317441 m!7981546))

(declare-fun m!7981684 () Bool)

(assert (=> b!7317441 m!7981684))

(assert (=> b!7317442 m!7981548))

(declare-fun m!7981686 () Bool)

(assert (=> b!7317442 m!7981686))

(assert (=> b!7317442 m!7981546))

(assert (=> b!7317442 m!7981686))

(declare-fun m!7981688 () Bool)

(assert (=> b!7317442 m!7981688))

(assert (=> b!7317442 m!7981548))

(declare-fun m!7981690 () Bool)

(assert (=> b!7317442 m!7981690))

(assert (=> b!7317442 m!7981688))

(assert (=> b!7317442 m!7981690))

(declare-fun m!7981692 () Bool)

(assert (=> b!7317442 m!7981692))

(assert (=> b!7317384 d!2272070))

(declare-fun d!2272072 () Bool)

(assert (=> d!2272072 true))

(declare-fun lambda!452694 () Int)

(declare-fun flatMap!3052 ((Set Context!15792) Int) (Set Context!15792))

(assert (=> d!2272072 (= (derivationStepZipper!3634 z2!461 (head!15083 s!7362)) (flatMap!3052 z2!461 lambda!452694))))

(declare-fun bs!1915388 () Bool)

(assert (= bs!1915388 d!2272072))

(declare-fun m!7981694 () Bool)

(assert (=> bs!1915388 m!7981694))

(assert (=> b!7317384 d!2272072))

(declare-fun d!2272074 () Bool)

(assert (=> d!2272074 (= (head!15083 s!7362) (h!77667 s!7362))))

(assert (=> b!7317384 d!2272074))

(declare-fun d!2272076 () Bool)

(assert (=> d!2272076 (= (tail!14642 s!7362) (t!385575 s!7362))))

(assert (=> b!7317384 d!2272076))

(assert (=> b!7317383 d!2272022))

(assert (=> d!2272026 d!2272018))

(declare-fun d!2272078 () Bool)

(assert (=> d!2272078 (exists!4614 lt!2602513 lambda!452662)))

(assert (=> d!2272078 true))

(declare-fun _$17!675 () Unit!164675)

(assert (=> d!2272078 (= (choose!56760 lt!2602513 (getWitness!2352 z2!461 lambda!452662) lambda!452662) _$17!675)))

(declare-fun bs!1915389 () Bool)

(assert (= bs!1915389 d!2272078))

(assert (=> bs!1915389 m!7981490))

(assert (=> d!2272026 d!2272078))

(declare-fun d!2272080 () Bool)

(declare-fun c!1358485 () Bool)

(assert (=> d!2272080 (= c!1358485 (isEmpty!40863 (tail!14642 s!7362)))))

(declare-fun e!4380734 () Bool)

(assert (=> d!2272080 (= (matchZipper!3806 (derivationStepZipper!3634 lt!2602513 (head!15083 s!7362)) (tail!14642 s!7362)) e!4380734)))

(declare-fun b!7317445 () Bool)

(assert (=> b!7317445 (= e!4380734 (nullableZipper!3135 (derivationStepZipper!3634 lt!2602513 (head!15083 s!7362))))))

(declare-fun b!7317446 () Bool)

(assert (=> b!7317446 (= e!4380734 (matchZipper!3806 (derivationStepZipper!3634 (derivationStepZipper!3634 lt!2602513 (head!15083 s!7362)) (head!15083 (tail!14642 s!7362))) (tail!14642 (tail!14642 s!7362))))))

(assert (= (and d!2272080 c!1358485) b!7317445))

(assert (= (and d!2272080 (not c!1358485)) b!7317446))

(assert (=> d!2272080 m!7981548))

(assert (=> d!2272080 m!7981682))

(assert (=> b!7317445 m!7981594))

(declare-fun m!7981696 () Bool)

(assert (=> b!7317445 m!7981696))

(assert (=> b!7317446 m!7981548))

(assert (=> b!7317446 m!7981686))

(assert (=> b!7317446 m!7981594))

(assert (=> b!7317446 m!7981686))

(declare-fun m!7981698 () Bool)

(assert (=> b!7317446 m!7981698))

(assert (=> b!7317446 m!7981548))

(assert (=> b!7317446 m!7981690))

(assert (=> b!7317446 m!7981698))

(assert (=> b!7317446 m!7981690))

(declare-fun m!7981700 () Bool)

(assert (=> b!7317446 m!7981700))

(assert (=> b!7317390 d!2272080))

(declare-fun bs!1915390 () Bool)

(declare-fun d!2272082 () Bool)

(assert (= bs!1915390 (and d!2272082 d!2272072)))

(declare-fun lambda!452695 () Int)

(assert (=> bs!1915390 (= lambda!452695 lambda!452694)))

(assert (=> d!2272082 true))

(assert (=> d!2272082 (= (derivationStepZipper!3634 lt!2602513 (head!15083 s!7362)) (flatMap!3052 lt!2602513 lambda!452695))))

(declare-fun bs!1915391 () Bool)

(assert (= bs!1915391 d!2272082))

(declare-fun m!7981702 () Bool)

(assert (=> bs!1915391 m!7981702))

(assert (=> b!7317390 d!2272082))

(assert (=> b!7317390 d!2272074))

(assert (=> b!7317390 d!2272076))

(assert (=> b!7317389 d!2272030))

(declare-fun b!7317460 () Bool)

(declare-fun e!4380745 () Context!15792)

(assert (=> b!7317460 (= e!4380745 (h!77671 (toList!11636 z2!461)))))

(declare-fun b!7317461 () Bool)

(declare-fun e!4380746 () Context!15792)

(assert (=> b!7317461 (= e!4380745 e!4380746)))

(declare-fun c!1358490 () Bool)

(assert (=> b!7317461 (= c!1358490 (is-Cons!71223 (toList!11636 z2!461)))))

(declare-fun b!7317462 () Bool)

(declare-fun e!4380744 () Bool)

(declare-fun lt!2602562 () Context!15792)

(declare-fun contains!20799 (List!71347 Context!15792) Bool)

(assert (=> b!7317462 (= e!4380744 (contains!20799 (toList!11636 z2!461) lt!2602562))))

(declare-fun b!7317459 () Bool)

(declare-fun e!4380743 () Bool)

(assert (=> b!7317459 (= e!4380743 (dynLambda!29171 lambda!452662 (h!77671 (toList!11636 z2!461))))))

(declare-fun d!2272084 () Bool)

(assert (=> d!2272084 e!4380744))

(declare-fun res!2956841 () Bool)

(assert (=> d!2272084 (=> (not res!2956841) (not e!4380744))))

(assert (=> d!2272084 (= res!2956841 (dynLambda!29171 lambda!452662 lt!2602562))))

(assert (=> d!2272084 (= lt!2602562 e!4380745)))

(declare-fun c!1358491 () Bool)

(assert (=> d!2272084 (= c!1358491 e!4380743)))

(declare-fun res!2956842 () Bool)

(assert (=> d!2272084 (=> (not res!2956842) (not e!4380743))))

(assert (=> d!2272084 (= res!2956842 (is-Cons!71223 (toList!11636 z2!461)))))

(assert (=> d!2272084 (exists!4616 (toList!11636 z2!461) lambda!452662)))

(assert (=> d!2272084 (= (getWitness!2354 (toList!11636 z2!461) lambda!452662) lt!2602562)))

(declare-fun b!7317463 () Bool)

(declare-fun lt!2602563 () Unit!164675)

(declare-fun Unit!164687 () Unit!164675)

(assert (=> b!7317463 (= lt!2602563 Unit!164687)))

(assert (=> b!7317463 false))

(declare-fun head!15085 (List!71347) Context!15792)

(assert (=> b!7317463 (= e!4380746 (head!15085 (toList!11636 z2!461)))))

(declare-fun b!7317464 () Bool)

(assert (=> b!7317464 (= e!4380746 (getWitness!2354 (t!385579 (toList!11636 z2!461)) lambda!452662))))

(assert (= (and d!2272084 res!2956842) b!7317459))

(assert (= (and d!2272084 c!1358491) b!7317460))

(assert (= (and d!2272084 (not c!1358491)) b!7317461))

(assert (= (and b!7317461 c!1358490) b!7317464))

(assert (= (and b!7317461 (not c!1358490)) b!7317463))

(assert (= (and d!2272084 res!2956841) b!7317462))

(declare-fun b_lambda!282663 () Bool)

(assert (=> (not b_lambda!282663) (not b!7317459)))

(declare-fun b_lambda!282665 () Bool)

(assert (=> (not b_lambda!282665) (not d!2272084)))

(assert (=> b!7317462 m!7981584))

(declare-fun m!7981704 () Bool)

(assert (=> b!7317462 m!7981704))

(declare-fun m!7981706 () Bool)

(assert (=> b!7317464 m!7981706))

(declare-fun m!7981708 () Bool)

(assert (=> b!7317459 m!7981708))

(assert (=> b!7317463 m!7981584))

(declare-fun m!7981710 () Bool)

(assert (=> b!7317463 m!7981710))

(declare-fun m!7981712 () Bool)

(assert (=> d!2272084 m!7981712))

(assert (=> d!2272084 m!7981584))

(declare-fun m!7981714 () Bool)

(assert (=> d!2272084 m!7981714))

(assert (=> d!2272028 d!2272084))

(declare-fun d!2272086 () Bool)

(declare-fun e!4380749 () Bool)

(assert (=> d!2272086 e!4380749))

(declare-fun res!2956845 () Bool)

(assert (=> d!2272086 (=> (not res!2956845) (not e!4380749))))

(declare-fun lt!2602566 () List!71347)

(declare-fun noDuplicate!3060 (List!71347) Bool)

(assert (=> d!2272086 (= res!2956845 (noDuplicate!3060 lt!2602566))))

(declare-fun choose!56764 ((Set Context!15792)) List!71347)

(assert (=> d!2272086 (= lt!2602566 (choose!56764 z2!461))))

(assert (=> d!2272086 (= (toList!11636 z2!461) lt!2602566)))

(declare-fun b!7317467 () Bool)

(declare-fun content!14879 (List!71347) (Set Context!15792))

(assert (=> b!7317467 (= e!4380749 (= (content!14879 lt!2602566) z2!461))))

(assert (= (and d!2272086 res!2956845) b!7317467))

(declare-fun m!7981716 () Bool)

(assert (=> d!2272086 m!7981716))

(declare-fun m!7981718 () Bool)

(assert (=> d!2272086 m!7981718))

(declare-fun m!7981720 () Bool)

(assert (=> b!7317467 m!7981720))

(assert (=> d!2272028 d!2272086))

(declare-fun d!2272088 () Bool)

(declare-fun lt!2602567 () Bool)

(assert (=> d!2272088 (= lt!2602567 (exists!4616 (toList!11636 z2!461) lambda!452662))))

(assert (=> d!2272088 (= lt!2602567 (choose!56761 z2!461 lambda!452662))))

(assert (=> d!2272088 (= (exists!4614 z2!461 lambda!452662) lt!2602567)))

(declare-fun bs!1915392 () Bool)

(assert (= bs!1915392 d!2272088))

(assert (=> bs!1915392 m!7981584))

(assert (=> bs!1915392 m!7981584))

(assert (=> bs!1915392 m!7981714))

(declare-fun m!7981722 () Bool)

(assert (=> bs!1915392 m!7981722))

(assert (=> d!2272028 d!2272088))

(declare-fun bs!1915393 () Bool)

(declare-fun d!2272090 () Bool)

(assert (= bs!1915393 (and d!2272090 d!2272012)))

(declare-fun lambda!452696 () Int)

(assert (=> bs!1915393 (= lambda!452696 lambda!452676)))

(declare-fun bs!1915394 () Bool)

(assert (= bs!1915394 (and d!2272090 d!2272036)))

(assert (=> bs!1915394 (= lambda!452696 lambda!452684)))

(assert (=> d!2272090 (= (inv!90512 setElem!54748) (forall!17784 (exprs!8396 setElem!54748) lambda!452696))))

(declare-fun bs!1915395 () Bool)

(assert (= bs!1915395 d!2272090))

(declare-fun m!7981724 () Bool)

(assert (=> bs!1915395 m!7981724))

(assert (=> setNonEmpty!54748 d!2272090))

(declare-fun bs!1915396 () Bool)

(declare-fun d!2272092 () Bool)

(assert (= bs!1915396 (and d!2272092 d!2272012)))

(declare-fun lambda!452699 () Int)

(assert (=> bs!1915396 (not (= lambda!452699 lambda!452676))))

(declare-fun bs!1915397 () Bool)

(assert (= bs!1915397 (and d!2272092 d!2272036)))

(assert (=> bs!1915397 (not (= lambda!452699 lambda!452684))))

(declare-fun bs!1915398 () Bool)

(assert (= bs!1915398 (and d!2272092 d!2272090)))

(assert (=> bs!1915398 (not (= lambda!452699 lambda!452696))))

(assert (=> d!2272092 (= (nullableContext!413 lt!2602546) (forall!17784 (exprs!8396 lt!2602546) lambda!452699))))

(declare-fun bs!1915399 () Bool)

(assert (= bs!1915399 d!2272092))

(declare-fun m!7981726 () Bool)

(assert (=> bs!1915399 m!7981726))

(assert (=> bs!1915372 d!2272092))

(declare-fun bs!1915400 () Bool)

(declare-fun d!2272094 () Bool)

(assert (= bs!1915400 (and d!2272094 b!7317328)))

(declare-fun lambda!452702 () Int)

(assert (=> bs!1915400 (not (= lambda!452702 lambda!452662))))

(declare-fun bs!1915401 () Bool)

(assert (= bs!1915401 (and d!2272094 d!2272022)))

(assert (=> bs!1915401 (not (= lambda!452702 lambda!452679))))

(declare-fun bs!1915402 () Bool)

(assert (= bs!1915402 (and d!2272094 d!2272024)))

(assert (=> bs!1915402 (not (= lambda!452702 lambda!452680))))

(declare-fun bs!1915403 () Bool)

(assert (= bs!1915403 (and d!2272094 d!2272030)))

(assert (=> bs!1915403 (not (= lambda!452702 lambda!452683))))

(assert (=> d!2272094 true))

(declare-fun order!29145 () Int)

(declare-fun dynLambda!29173 (Int Int) Int)

(assert (=> d!2272094 (< (dynLambda!29173 order!29145 lambda!452662) (dynLambda!29173 order!29145 lambda!452702))))

(declare-fun forall!17786 (List!71347 Int) Bool)

(assert (=> d!2272094 (= (exists!4616 (toList!11636 lt!2602513) lambda!452662) (not (forall!17786 (toList!11636 lt!2602513) lambda!452702)))))

(declare-fun bs!1915404 () Bool)

(assert (= bs!1915404 d!2272094))

(assert (=> bs!1915404 m!7981568))

(declare-fun m!7981728 () Bool)

(assert (=> bs!1915404 m!7981728))

(assert (=> d!2272018 d!2272094))

(declare-fun d!2272096 () Bool)

(declare-fun e!4380750 () Bool)

(assert (=> d!2272096 e!4380750))

(declare-fun res!2956846 () Bool)

(assert (=> d!2272096 (=> (not res!2956846) (not e!4380750))))

(declare-fun lt!2602568 () List!71347)

(assert (=> d!2272096 (= res!2956846 (noDuplicate!3060 lt!2602568))))

(assert (=> d!2272096 (= lt!2602568 (choose!56764 lt!2602513))))

(assert (=> d!2272096 (= (toList!11636 lt!2602513) lt!2602568)))

(declare-fun b!7317470 () Bool)

(assert (=> b!7317470 (= e!4380750 (= (content!14879 lt!2602568) lt!2602513))))

(assert (= (and d!2272096 res!2956846) b!7317470))

(declare-fun m!7981730 () Bool)

(assert (=> d!2272096 m!7981730))

(declare-fun m!7981732 () Bool)

(assert (=> d!2272096 m!7981732))

(declare-fun m!7981734 () Bool)

(assert (=> b!7317470 m!7981734))

(assert (=> d!2272018 d!2272096))

(declare-fun d!2272098 () Bool)

(declare-fun res!2956849 () Bool)

(assert (=> d!2272098 (= res!2956849 (exists!4616 (toList!11636 lt!2602513) lambda!452662))))

(assert (=> d!2272098 true))

(assert (=> d!2272098 (= (choose!56761 lt!2602513 lambda!452662) res!2956849)))

(declare-fun bs!1915405 () Bool)

(assert (= bs!1915405 d!2272098))

(assert (=> bs!1915405 m!7981568))

(assert (=> bs!1915405 m!7981568))

(assert (=> bs!1915405 m!7981570))

(assert (=> d!2272018 d!2272098))

(declare-fun d!2272100 () Bool)

(declare-fun c!1358493 () Bool)

(assert (=> d!2272100 (= c!1358493 (isEmpty!40863 (tail!14642 s!7362)))))

(declare-fun e!4380751 () Bool)

(assert (=> d!2272100 (= (matchZipper!3806 (derivationStepZipper!3634 z1!542 (head!15083 s!7362)) (tail!14642 s!7362)) e!4380751)))

(declare-fun b!7317471 () Bool)

(assert (=> b!7317471 (= e!4380751 (nullableZipper!3135 (derivationStepZipper!3634 z1!542 (head!15083 s!7362))))))

(declare-fun b!7317472 () Bool)

(assert (=> b!7317472 (= e!4380751 (matchZipper!3806 (derivationStepZipper!3634 (derivationStepZipper!3634 z1!542 (head!15083 s!7362)) (head!15083 (tail!14642 s!7362))) (tail!14642 (tail!14642 s!7362))))))

(assert (= (and d!2272100 c!1358493) b!7317471))

(assert (= (and d!2272100 (not c!1358493)) b!7317472))

(assert (=> d!2272100 m!7981548))

(assert (=> d!2272100 m!7981682))

(assert (=> b!7317471 m!7981598))

(declare-fun m!7981736 () Bool)

(assert (=> b!7317471 m!7981736))

(assert (=> b!7317472 m!7981548))

(assert (=> b!7317472 m!7981686))

(assert (=> b!7317472 m!7981598))

(assert (=> b!7317472 m!7981686))

(declare-fun m!7981738 () Bool)

(assert (=> b!7317472 m!7981738))

(assert (=> b!7317472 m!7981548))

(assert (=> b!7317472 m!7981690))

(assert (=> b!7317472 m!7981738))

(assert (=> b!7317472 m!7981690))

(declare-fun m!7981740 () Bool)

(assert (=> b!7317472 m!7981740))

(assert (=> b!7317392 d!2272100))

(declare-fun bs!1915406 () Bool)

(declare-fun d!2272102 () Bool)

(assert (= bs!1915406 (and d!2272102 d!2272072)))

(declare-fun lambda!452703 () Int)

(assert (=> bs!1915406 (= lambda!452703 lambda!452694)))

(declare-fun bs!1915407 () Bool)

(assert (= bs!1915407 (and d!2272102 d!2272082)))

(assert (=> bs!1915407 (= lambda!452703 lambda!452695)))

(assert (=> d!2272102 true))

(assert (=> d!2272102 (= (derivationStepZipper!3634 z1!542 (head!15083 s!7362)) (flatMap!3052 z1!542 lambda!452703))))

(declare-fun bs!1915408 () Bool)

(assert (= bs!1915408 d!2272102))

(declare-fun m!7981742 () Bool)

(assert (=> bs!1915408 m!7981742))

(assert (=> b!7317392 d!2272102))

(assert (=> b!7317392 d!2272074))

(assert (=> b!7317392 d!2272076))

(declare-fun d!2272104 () Bool)

(declare-fun lt!2602569 () Bool)

(assert (=> d!2272104 (= lt!2602569 (exists!4616 (toList!11636 z1!542) lambda!452680))))

(assert (=> d!2272104 (= lt!2602569 (choose!56761 z1!542 lambda!452680))))

(assert (=> d!2272104 (= (exists!4614 z1!542 lambda!452680) lt!2602569)))

(declare-fun bs!1915409 () Bool)

(assert (= bs!1915409 d!2272104))

(assert (=> bs!1915409 m!7981560))

(assert (=> bs!1915409 m!7981560))

(declare-fun m!7981744 () Bool)

(assert (=> bs!1915409 m!7981744))

(declare-fun m!7981746 () Bool)

(assert (=> bs!1915409 m!7981746))

(assert (=> d!2272024 d!2272104))

(assert (=> b!7317391 d!2272024))

(declare-fun d!2272106 () Bool)

(declare-fun lt!2602570 () Bool)

(assert (=> d!2272106 (= lt!2602570 (exists!4616 (toList!11636 lt!2602513) lambda!452683))))

(assert (=> d!2272106 (= lt!2602570 (choose!56761 lt!2602513 lambda!452683))))

(assert (=> d!2272106 (= (exists!4614 lt!2602513 lambda!452683) lt!2602570)))

(declare-fun bs!1915410 () Bool)

(assert (= bs!1915410 d!2272106))

(assert (=> bs!1915410 m!7981568))

(assert (=> bs!1915410 m!7981568))

(declare-fun m!7981748 () Bool)

(assert (=> bs!1915410 m!7981748))

(declare-fun m!7981750 () Bool)

(assert (=> bs!1915410 m!7981750))

(assert (=> d!2272030 d!2272106))

(declare-fun d!2272108 () Bool)

(assert (=> d!2272108 (= (isEmpty!40863 s!7362) (is-Nil!71219 s!7362))))

(assert (=> d!2272010 d!2272108))

(declare-fun b!7317474 () Bool)

(declare-fun e!4380754 () Context!15792)

(assert (=> b!7317474 (= e!4380754 (h!77671 (toList!11636 z1!542)))))

(declare-fun b!7317475 () Bool)

(declare-fun e!4380755 () Context!15792)

(assert (=> b!7317475 (= e!4380754 e!4380755)))

(declare-fun c!1358494 () Bool)

(assert (=> b!7317475 (= c!1358494 (is-Cons!71223 (toList!11636 z1!542)))))

(declare-fun b!7317476 () Bool)

(declare-fun e!4380753 () Bool)

(declare-fun lt!2602571 () Context!15792)

(assert (=> b!7317476 (= e!4380753 (contains!20799 (toList!11636 z1!542) lt!2602571))))

(declare-fun b!7317473 () Bool)

(declare-fun e!4380752 () Bool)

(assert (=> b!7317473 (= e!4380752 (dynLambda!29171 lambda!452662 (h!77671 (toList!11636 z1!542))))))

(declare-fun d!2272110 () Bool)

(assert (=> d!2272110 e!4380753))

(declare-fun res!2956850 () Bool)

(assert (=> d!2272110 (=> (not res!2956850) (not e!4380753))))

(assert (=> d!2272110 (= res!2956850 (dynLambda!29171 lambda!452662 lt!2602571))))

(assert (=> d!2272110 (= lt!2602571 e!4380754)))

(declare-fun c!1358495 () Bool)

(assert (=> d!2272110 (= c!1358495 e!4380752)))

(declare-fun res!2956851 () Bool)

(assert (=> d!2272110 (=> (not res!2956851) (not e!4380752))))

(assert (=> d!2272110 (= res!2956851 (is-Cons!71223 (toList!11636 z1!542)))))

(assert (=> d!2272110 (exists!4616 (toList!11636 z1!542) lambda!452662)))

(assert (=> d!2272110 (= (getWitness!2354 (toList!11636 z1!542) lambda!452662) lt!2602571)))

(declare-fun b!7317477 () Bool)

(declare-fun lt!2602572 () Unit!164675)

(declare-fun Unit!164688 () Unit!164675)

(assert (=> b!7317477 (= lt!2602572 Unit!164688)))

(assert (=> b!7317477 false))

(assert (=> b!7317477 (= e!4380755 (head!15085 (toList!11636 z1!542)))))

(declare-fun b!7317478 () Bool)

(assert (=> b!7317478 (= e!4380755 (getWitness!2354 (t!385579 (toList!11636 z1!542)) lambda!452662))))

(assert (= (and d!2272110 res!2956851) b!7317473))

(assert (= (and d!2272110 c!1358495) b!7317474))

(assert (= (and d!2272110 (not c!1358495)) b!7317475))

(assert (= (and b!7317475 c!1358494) b!7317478))

(assert (= (and b!7317475 (not c!1358494)) b!7317477))

(assert (= (and d!2272110 res!2956850) b!7317476))

(declare-fun b_lambda!282667 () Bool)

(assert (=> (not b_lambda!282667) (not b!7317473)))

(declare-fun b_lambda!282669 () Bool)

(assert (=> (not b_lambda!282669) (not d!2272110)))

(assert (=> b!7317476 m!7981560))

(declare-fun m!7981752 () Bool)

(assert (=> b!7317476 m!7981752))

(declare-fun m!7981754 () Bool)

(assert (=> b!7317478 m!7981754))

(declare-fun m!7981756 () Bool)

(assert (=> b!7317473 m!7981756))

(assert (=> b!7317477 m!7981560))

(declare-fun m!7981758 () Bool)

(assert (=> b!7317477 m!7981758))

(declare-fun m!7981760 () Bool)

(assert (=> d!2272110 m!7981760))

(assert (=> d!2272110 m!7981560))

(declare-fun m!7981762 () Bool)

(assert (=> d!2272110 m!7981762))

(assert (=> d!2272016 d!2272110))

(declare-fun d!2272112 () Bool)

(declare-fun e!4380756 () Bool)

(assert (=> d!2272112 e!4380756))

(declare-fun res!2956852 () Bool)

(assert (=> d!2272112 (=> (not res!2956852) (not e!4380756))))

(declare-fun lt!2602573 () List!71347)

(assert (=> d!2272112 (= res!2956852 (noDuplicate!3060 lt!2602573))))

(assert (=> d!2272112 (= lt!2602573 (choose!56764 z1!542))))

(assert (=> d!2272112 (= (toList!11636 z1!542) lt!2602573)))

(declare-fun b!7317479 () Bool)

(assert (=> b!7317479 (= e!4380756 (= (content!14879 lt!2602573) z1!542))))

(assert (= (and d!2272112 res!2956852) b!7317479))

(declare-fun m!7981764 () Bool)

(assert (=> d!2272112 m!7981764))

(declare-fun m!7981766 () Bool)

(assert (=> d!2272112 m!7981766))

(declare-fun m!7981768 () Bool)

(assert (=> b!7317479 m!7981768))

(assert (=> d!2272016 d!2272112))

(declare-fun d!2272114 () Bool)

(declare-fun lt!2602574 () Bool)

(assert (=> d!2272114 (= lt!2602574 (exists!4616 (toList!11636 z1!542) lambda!452662))))

(assert (=> d!2272114 (= lt!2602574 (choose!56761 z1!542 lambda!452662))))

(assert (=> d!2272114 (= (exists!4614 z1!542 lambda!452662) lt!2602574)))

(declare-fun bs!1915411 () Bool)

(assert (= bs!1915411 d!2272114))

(assert (=> bs!1915411 m!7981560))

(assert (=> bs!1915411 m!7981560))

(assert (=> bs!1915411 m!7981762))

(declare-fun m!7981770 () Bool)

(assert (=> bs!1915411 m!7981770))

(assert (=> d!2272016 d!2272114))

(declare-fun d!2272116 () Bool)

(declare-fun lt!2602575 () Bool)

(assert (=> d!2272116 (= lt!2602575 (exists!4616 (toList!11636 z2!461) lambda!452679))))

(assert (=> d!2272116 (= lt!2602575 (choose!56761 z2!461 lambda!452679))))

(assert (=> d!2272116 (= (exists!4614 z2!461 lambda!452679) lt!2602575)))

(declare-fun bs!1915412 () Bool)

(assert (= bs!1915412 d!2272116))

(assert (=> bs!1915412 m!7981584))

(assert (=> bs!1915412 m!7981584))

(declare-fun m!7981772 () Bool)

(assert (=> bs!1915412 m!7981772))

(declare-fun m!7981774 () Bool)

(assert (=> bs!1915412 m!7981774))

(assert (=> d!2272022 d!2272116))

(assert (=> d!2272032 d!2272108))

(assert (=> d!2272034 d!2272108))

(declare-fun d!2272118 () Bool)

(declare-fun res!2956857 () Bool)

(declare-fun e!4380761 () Bool)

(assert (=> d!2272118 (=> res!2956857 e!4380761)))

(assert (=> d!2272118 (= res!2956857 (is-Nil!71220 (exprs!8396 setElem!54738)))))

(assert (=> d!2272118 (= (forall!17784 (exprs!8396 setElem!54738) lambda!452684) e!4380761)))

(declare-fun b!7317484 () Bool)

(declare-fun e!4380762 () Bool)

(assert (=> b!7317484 (= e!4380761 e!4380762)))

(declare-fun res!2956858 () Bool)

(assert (=> b!7317484 (=> (not res!2956858) (not e!4380762))))

(declare-fun dynLambda!29174 (Int Regex!18956) Bool)

(assert (=> b!7317484 (= res!2956858 (dynLambda!29174 lambda!452684 (h!77668 (exprs!8396 setElem!54738))))))

(declare-fun b!7317485 () Bool)

(assert (=> b!7317485 (= e!4380762 (forall!17784 (t!385576 (exprs!8396 setElem!54738)) lambda!452684))))

(assert (= (and d!2272118 (not res!2956857)) b!7317484))

(assert (= (and b!7317484 res!2956858) b!7317485))

(declare-fun b_lambda!282671 () Bool)

(assert (=> (not b_lambda!282671) (not b!7317484)))

(declare-fun m!7981776 () Bool)

(assert (=> b!7317484 m!7981776))

(declare-fun m!7981778 () Bool)

(assert (=> b!7317485 m!7981778))

(assert (=> d!2272036 d!2272118))

(declare-fun bs!1915413 () Bool)

(declare-fun d!2272120 () Bool)

(assert (= bs!1915413 (and d!2272120 d!2272012)))

(declare-fun lambda!452704 () Int)

(assert (=> bs!1915413 (= lambda!452704 lambda!452676)))

(declare-fun bs!1915414 () Bool)

(assert (= bs!1915414 (and d!2272120 d!2272036)))

(assert (=> bs!1915414 (= lambda!452704 lambda!452684)))

(declare-fun bs!1915415 () Bool)

(assert (= bs!1915415 (and d!2272120 d!2272090)))

(assert (=> bs!1915415 (= lambda!452704 lambda!452696)))

(declare-fun bs!1915416 () Bool)

(assert (= bs!1915416 (and d!2272120 d!2272092)))

(assert (=> bs!1915416 (not (= lambda!452704 lambda!452699))))

(assert (=> d!2272120 (= (inv!90512 setElem!54749) (forall!17784 (exprs!8396 setElem!54749) lambda!452704))))

(declare-fun bs!1915417 () Bool)

(assert (= bs!1915417 d!2272120))

(declare-fun m!7981780 () Bool)

(assert (=> bs!1915417 m!7981780))

(assert (=> setNonEmpty!54749 d!2272120))

(declare-fun bs!1915418 () Bool)

(declare-fun d!2272122 () Bool)

(assert (= bs!1915418 (and d!2272122 d!2272012)))

(declare-fun lambda!452705 () Int)

(assert (=> bs!1915418 (not (= lambda!452705 lambda!452676))))

(declare-fun bs!1915419 () Bool)

(assert (= bs!1915419 (and d!2272122 d!2272036)))

(assert (=> bs!1915419 (not (= lambda!452705 lambda!452684))))

(declare-fun bs!1915420 () Bool)

(assert (= bs!1915420 (and d!2272122 d!2272120)))

(assert (=> bs!1915420 (not (= lambda!452705 lambda!452704))))

(declare-fun bs!1915421 () Bool)

(assert (= bs!1915421 (and d!2272122 d!2272092)))

(assert (=> bs!1915421 (= lambda!452705 lambda!452699)))

(declare-fun bs!1915422 () Bool)

(assert (= bs!1915422 (and d!2272122 d!2272090)))

(assert (=> bs!1915422 (not (= lambda!452705 lambda!452696))))

(assert (=> d!2272122 (= (nullableContext!413 lt!2602541) (forall!17784 (exprs!8396 lt!2602541) lambda!452705))))

(declare-fun bs!1915423 () Bool)

(assert (= bs!1915423 d!2272122))

(declare-fun m!7981782 () Bool)

(assert (=> bs!1915423 m!7981782))

(assert (=> bs!1915371 d!2272122))

(assert (=> d!2272014 d!2272018))

(declare-fun d!2272124 () Bool)

(assert (=> d!2272124 (exists!4614 lt!2602513 lambda!452662)))

(assert (=> d!2272124 true))

(declare-fun _$17!676 () Unit!164675)

(assert (=> d!2272124 (= (choose!56760 lt!2602513 (getWitness!2352 z1!542 lambda!452662) lambda!452662) _$17!676)))

(declare-fun bs!1915424 () Bool)

(assert (= bs!1915424 d!2272124))

(assert (=> bs!1915424 m!7981490))

(assert (=> d!2272014 d!2272124))

(declare-fun d!2272126 () Bool)

(declare-fun res!2956859 () Bool)

(declare-fun e!4380763 () Bool)

(assert (=> d!2272126 (=> res!2956859 e!4380763)))

(assert (=> d!2272126 (= res!2956859 (is-Nil!71220 (exprs!8396 setElem!54739)))))

(assert (=> d!2272126 (= (forall!17784 (exprs!8396 setElem!54739) lambda!452676) e!4380763)))

(declare-fun b!7317486 () Bool)

(declare-fun e!4380764 () Bool)

(assert (=> b!7317486 (= e!4380763 e!4380764)))

(declare-fun res!2956860 () Bool)

(assert (=> b!7317486 (=> (not res!2956860) (not e!4380764))))

(assert (=> b!7317486 (= res!2956860 (dynLambda!29174 lambda!452676 (h!77668 (exprs!8396 setElem!54739))))))

(declare-fun b!7317487 () Bool)

(assert (=> b!7317487 (= e!4380764 (forall!17784 (t!385576 (exprs!8396 setElem!54739)) lambda!452676))))

(assert (= (and d!2272126 (not res!2956859)) b!7317486))

(assert (= (and b!7317486 res!2956860) b!7317487))

(declare-fun b_lambda!282673 () Bool)

(assert (=> (not b_lambda!282673) (not b!7317486)))

(declare-fun m!7981784 () Bool)

(assert (=> b!7317486 m!7981784))

(declare-fun m!7981786 () Bool)

(assert (=> b!7317487 m!7981786))

(assert (=> d!2272012 d!2272126))

(declare-fun e!4380767 () Bool)

(assert (=> b!7317403 (= tp!2077658 e!4380767)))

(declare-fun b!7317498 () Bool)

(assert (=> b!7317498 (= e!4380767 tp_is_empty!47657)))

(declare-fun b!7317501 () Bool)

(declare-fun tp!2077696 () Bool)

(declare-fun tp!2077698 () Bool)

(assert (=> b!7317501 (= e!4380767 (and tp!2077696 tp!2077698))))

(declare-fun b!7317499 () Bool)

(declare-fun tp!2077695 () Bool)

(declare-fun tp!2077697 () Bool)

(assert (=> b!7317499 (= e!4380767 (and tp!2077695 tp!2077697))))

(declare-fun b!7317500 () Bool)

(declare-fun tp!2077694 () Bool)

(assert (=> b!7317500 (= e!4380767 tp!2077694)))

(assert (= (and b!7317403 (is-ElementMatch!18956 (h!77668 (exprs!8396 setElem!54739)))) b!7317498))

(assert (= (and b!7317403 (is-Concat!27801 (h!77668 (exprs!8396 setElem!54739)))) b!7317499))

(assert (= (and b!7317403 (is-Star!18956 (h!77668 (exprs!8396 setElem!54739)))) b!7317500))

(assert (= (and b!7317403 (is-Union!18956 (h!77668 (exprs!8396 setElem!54739)))) b!7317501))

(declare-fun b!7317502 () Bool)

(declare-fun e!4380768 () Bool)

(declare-fun tp!2077699 () Bool)

(declare-fun tp!2077700 () Bool)

(assert (=> b!7317502 (= e!4380768 (and tp!2077699 tp!2077700))))

(assert (=> b!7317403 (= tp!2077659 e!4380768)))

(assert (= (and b!7317403 (is-Cons!71220 (t!385576 (exprs!8396 setElem!54739)))) b!7317502))

(declare-fun b!7317503 () Bool)

(declare-fun e!4380769 () Bool)

(declare-fun tp!2077701 () Bool)

(assert (=> b!7317503 (= e!4380769 (and tp_is_empty!47657 tp!2077701))))

(assert (=> b!7317408 (= tp!2077662 e!4380769)))

(assert (= (and b!7317408 (is-Cons!71219 (t!385575 (t!385575 s!7362)))) b!7317503))

(declare-fun b!7317504 () Bool)

(declare-fun e!4380770 () Bool)

(declare-fun tp!2077702 () Bool)

(declare-fun tp!2077703 () Bool)

(assert (=> b!7317504 (= e!4380770 (and tp!2077702 tp!2077703))))

(assert (=> b!7317409 (= tp!2077664 e!4380770)))

(assert (= (and b!7317409 (is-Cons!71220 (exprs!8396 setElem!54749))) b!7317504))

(declare-fun b!7317505 () Bool)

(declare-fun e!4380771 () Bool)

(declare-fun tp!2077704 () Bool)

(declare-fun tp!2077705 () Bool)

(assert (=> b!7317505 (= e!4380771 (and tp!2077704 tp!2077705))))

(assert (=> b!7317397 (= tp!2077651 e!4380771)))

(assert (= (and b!7317397 (is-Cons!71220 (exprs!8396 setElem!54748))) b!7317505))

(declare-fun condSetEmpty!54754 () Bool)

(assert (=> setNonEmpty!54749 (= condSetEmpty!54754 (= setRest!54749 (as set.empty (Set Context!15792))))))

(declare-fun setRes!54754 () Bool)

(assert (=> setNonEmpty!54749 (= tp!2077663 setRes!54754)))

(declare-fun setIsEmpty!54754 () Bool)

(assert (=> setIsEmpty!54754 setRes!54754))

(declare-fun e!4380772 () Bool)

(declare-fun tp!2077706 () Bool)

(declare-fun setNonEmpty!54754 () Bool)

(declare-fun setElem!54754 () Context!15792)

(assert (=> setNonEmpty!54754 (= setRes!54754 (and tp!2077706 (inv!90512 setElem!54754) e!4380772))))

(declare-fun setRest!54754 () (Set Context!15792))

(assert (=> setNonEmpty!54754 (= setRest!54749 (set.union (set.insert setElem!54754 (as set.empty (Set Context!15792))) setRest!54754))))

(declare-fun b!7317506 () Bool)

(declare-fun tp!2077707 () Bool)

(assert (=> b!7317506 (= e!4380772 tp!2077707)))

(assert (= (and setNonEmpty!54749 condSetEmpty!54754) setIsEmpty!54754))

(assert (= (and setNonEmpty!54749 (not condSetEmpty!54754)) setNonEmpty!54754))

(assert (= setNonEmpty!54754 b!7317506))

(declare-fun m!7981788 () Bool)

(assert (=> setNonEmpty!54754 m!7981788))

(declare-fun condSetEmpty!54755 () Bool)

(assert (=> setNonEmpty!54748 (= condSetEmpty!54755 (= setRest!54748 (as set.empty (Set Context!15792))))))

(declare-fun setRes!54755 () Bool)

(assert (=> setNonEmpty!54748 (= tp!2077650 setRes!54755)))

(declare-fun setIsEmpty!54755 () Bool)

(assert (=> setIsEmpty!54755 setRes!54755))

(declare-fun setElem!54755 () Context!15792)

(declare-fun e!4380773 () Bool)

(declare-fun setNonEmpty!54755 () Bool)

(declare-fun tp!2077708 () Bool)

(assert (=> setNonEmpty!54755 (= setRes!54755 (and tp!2077708 (inv!90512 setElem!54755) e!4380773))))

(declare-fun setRest!54755 () (Set Context!15792))

(assert (=> setNonEmpty!54755 (= setRest!54748 (set.union (set.insert setElem!54755 (as set.empty (Set Context!15792))) setRest!54755))))

(declare-fun b!7317507 () Bool)

(declare-fun tp!2077709 () Bool)

(assert (=> b!7317507 (= e!4380773 tp!2077709)))

(assert (= (and setNonEmpty!54748 condSetEmpty!54755) setIsEmpty!54755))

(assert (= (and setNonEmpty!54748 (not condSetEmpty!54755)) setNonEmpty!54755))

(assert (= setNonEmpty!54755 b!7317507))

(declare-fun m!7981790 () Bool)

(assert (=> setNonEmpty!54755 m!7981790))

(declare-fun e!4380774 () Bool)

(assert (=> b!7317402 (= tp!2077656 e!4380774)))

(declare-fun b!7317508 () Bool)

(assert (=> b!7317508 (= e!4380774 tp_is_empty!47657)))

(declare-fun b!7317511 () Bool)

(declare-fun tp!2077712 () Bool)

(declare-fun tp!2077714 () Bool)

(assert (=> b!7317511 (= e!4380774 (and tp!2077712 tp!2077714))))

(declare-fun b!7317509 () Bool)

(declare-fun tp!2077711 () Bool)

(declare-fun tp!2077713 () Bool)

(assert (=> b!7317509 (= e!4380774 (and tp!2077711 tp!2077713))))

(declare-fun b!7317510 () Bool)

(declare-fun tp!2077710 () Bool)

(assert (=> b!7317510 (= e!4380774 tp!2077710)))

(assert (= (and b!7317402 (is-ElementMatch!18956 (h!77668 (exprs!8396 setElem!54738)))) b!7317508))

(assert (= (and b!7317402 (is-Concat!27801 (h!77668 (exprs!8396 setElem!54738)))) b!7317509))

(assert (= (and b!7317402 (is-Star!18956 (h!77668 (exprs!8396 setElem!54738)))) b!7317510))

(assert (= (and b!7317402 (is-Union!18956 (h!77668 (exprs!8396 setElem!54738)))) b!7317511))

(declare-fun b!7317512 () Bool)

(declare-fun e!4380775 () Bool)

(declare-fun tp!2077715 () Bool)

(declare-fun tp!2077716 () Bool)

(assert (=> b!7317512 (= e!4380775 (and tp!2077715 tp!2077716))))

(assert (=> b!7317402 (= tp!2077657 e!4380775)))

(assert (= (and b!7317402 (is-Cons!71220 (t!385576 (exprs!8396 setElem!54738)))) b!7317512))

(declare-fun b_lambda!282675 () Bool)

(assert (= b_lambda!282673 (or d!2272012 b_lambda!282675)))

(declare-fun bs!1915425 () Bool)

(declare-fun d!2272128 () Bool)

(assert (= bs!1915425 (and d!2272128 d!2272012)))

(declare-fun validRegex!9614 (Regex!18956) Bool)

(assert (=> bs!1915425 (= (dynLambda!29174 lambda!452676 (h!77668 (exprs!8396 setElem!54739))) (validRegex!9614 (h!77668 (exprs!8396 setElem!54739))))))

(declare-fun m!7981792 () Bool)

(assert (=> bs!1915425 m!7981792))

(assert (=> b!7317486 d!2272128))

(declare-fun b_lambda!282677 () Bool)

(assert (= b_lambda!282671 (or d!2272036 b_lambda!282677)))

(declare-fun bs!1915426 () Bool)

(declare-fun d!2272130 () Bool)

(assert (= bs!1915426 (and d!2272130 d!2272036)))

(assert (=> bs!1915426 (= (dynLambda!29174 lambda!452684 (h!77668 (exprs!8396 setElem!54738))) (validRegex!9614 (h!77668 (exprs!8396 setElem!54738))))))

(declare-fun m!7981794 () Bool)

(assert (=> bs!1915426 m!7981794))

(assert (=> b!7317484 d!2272130))

(declare-fun b_lambda!282679 () Bool)

(assert (= b_lambda!282665 (or b!7317328 b_lambda!282679)))

(declare-fun bs!1915427 () Bool)

(declare-fun d!2272132 () Bool)

(assert (= bs!1915427 (and d!2272132 b!7317328)))

(assert (=> bs!1915427 (= (dynLambda!29171 lambda!452662 lt!2602562) (nullableContext!413 lt!2602562))))

(declare-fun m!7981796 () Bool)

(assert (=> bs!1915427 m!7981796))

(assert (=> d!2272084 d!2272132))

(declare-fun b_lambda!282681 () Bool)

(assert (= b_lambda!282663 (or b!7317328 b_lambda!282681)))

(declare-fun bs!1915428 () Bool)

(declare-fun d!2272134 () Bool)

(assert (= bs!1915428 (and d!2272134 b!7317328)))

(assert (=> bs!1915428 (= (dynLambda!29171 lambda!452662 (h!77671 (toList!11636 z2!461))) (nullableContext!413 (h!77671 (toList!11636 z2!461))))))

(declare-fun m!7981798 () Bool)

(assert (=> bs!1915428 m!7981798))

(assert (=> b!7317459 d!2272134))

(declare-fun b_lambda!282683 () Bool)

(assert (= b_lambda!282667 (or b!7317328 b_lambda!282683)))

(declare-fun bs!1915429 () Bool)

(declare-fun d!2272136 () Bool)

(assert (= bs!1915429 (and d!2272136 b!7317328)))

(assert (=> bs!1915429 (= (dynLambda!29171 lambda!452662 (h!77671 (toList!11636 z1!542))) (nullableContext!413 (h!77671 (toList!11636 z1!542))))))

(declare-fun m!7981800 () Bool)

(assert (=> bs!1915429 m!7981800))

(assert (=> b!7317473 d!2272136))

(declare-fun b_lambda!282685 () Bool)

(assert (= b_lambda!282669 (or b!7317328 b_lambda!282685)))

(declare-fun bs!1915430 () Bool)

(declare-fun d!2272138 () Bool)

(assert (= bs!1915430 (and d!2272138 b!7317328)))

(assert (=> bs!1915430 (= (dynLambda!29171 lambda!452662 lt!2602571) (nullableContext!413 lt!2602571))))

(declare-fun m!7981802 () Bool)

(assert (=> bs!1915430 m!7981802))

(assert (=> d!2272110 d!2272138))

(push 1)

(assert (not b!7317467))

(assert (not d!2272082))

(assert (not b!7317471))

(assert (not b!7317499))

(assert (not d!2272096))

(assert (not d!2272084))

(assert (not b_lambda!282675))

(assert (not d!2272122))

(assert (not bs!1915427))

(assert (not b!7317509))

(assert (not d!2272088))

(assert (not bs!1915428))

(assert (not b!7317503))

(assert (not b!7317504))

(assert (not d!2272120))

(assert (not b!7317441))

(assert (not b!7317501))

(assert (not b!7317470))

(assert (not d!2272090))

(assert (not d!2272110))

(assert (not bs!1915426))

(assert (not d!2272078))

(assert (not bs!1915430))

(assert (not d!2272070))

(assert (not d!2272124))

(assert (not bs!1915429))

(assert (not b!7317464))

(assert (not d!2272086))

(assert (not b_lambda!282681))

(assert (not b!7317500))

(assert (not d!2272116))

(assert (not b!7317463))

(assert (not b!7317472))

(assert (not b_lambda!282677))

(assert (not d!2272114))

(assert (not b_lambda!282685))

(assert (not d!2272100))

(assert (not b!7317487))

(assert (not bs!1915425))

(assert (not b!7317462))

(assert (not d!2272072))

(assert (not b!7317446))

(assert (not d!2272094))

(assert (not setNonEmpty!54754))

(assert (not b!7317512))

(assert (not b!7317479))

(assert (not d!2272080))

(assert (not d!2272092))

(assert (not d!2272098))

(assert (not b!7317510))

(assert (not b!7317502))

(assert (not b_lambda!282653))

(assert (not d!2272104))

(assert (not b!7317478))

(assert (not b!7317506))

(assert (not b_lambda!282683))

(assert (not b!7317511))

(assert tp_is_empty!47657)

(assert (not b!7317476))

(assert (not d!2272106))

(assert (not b_lambda!282679))

(assert (not b!7317477))

(assert (not d!2272112))

(assert (not b!7317505))

(assert (not b!7317485))

(assert (not b!7317442))

(assert (not setNonEmpty!54755))

(assert (not b!7317445))

(assert (not b_lambda!282651))

(assert (not d!2272102))

(assert (not b!7317507))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!722674 () Bool)

(assert start!722674)

(declare-fun b!7440296 () Bool)

(assert (=> b!7440296 true))

(declare-fun b!7440298 () Bool)

(declare-fun m!8052520 () Bool)

(assert (=> b!7440298 m!8052520))

(assert (=> b!7440298 true))

(assert (=> b!7440298 true))

(declare-fun b!7440293 () Bool)

(declare-fun e!4442898 () Bool)

(declare-fun tp_is_empty!49159 () Bool)

(declare-fun tp!2150534 () Bool)

(assert (=> b!7440293 (= e!4442898 (and tp_is_empty!49159 tp!2150534))))

(declare-fun setIsEmpty!56552 () Bool)

(declare-fun setRes!56552 () Bool)

(assert (=> setIsEmpty!56552 setRes!56552))

(declare-fun b!7440295 () Bool)

(declare-fun e!4442900 () Bool)

(declare-fun tp!2150531 () Bool)

(assert (=> b!7440295 (= e!4442900 tp!2150531)))

(declare-fun e!4442899 () Bool)

(declare-fun e!4442897 () Bool)

(assert (=> b!7440296 (= e!4442899 e!4442897)))

(declare-fun res!2986258 () Bool)

(assert (=> b!7440296 (=> (not res!2986258) (not e!4442897))))

(declare-datatypes ((C!39174 0))(
  ( (C!39175 (val!29961 Int)) )
))
(declare-datatypes ((Regex!19450 0))(
  ( (ElementMatch!19450 (c!1376936 C!39174)) (Concat!28295 (regOne!39412 Regex!19450) (regTwo!39412 Regex!19450)) (EmptyExpr!19450) (Star!19450 (reg!19779 Regex!19450)) (EmptyLang!19450) (Union!19450 (regOne!39413 Regex!19450) (regTwo!39413 Regex!19450)) )
))
(declare-datatypes ((List!72120 0))(
  ( (Nil!71996) (Cons!71996 (h!78444 Regex!19450) (t!386683 List!72120)) )
))
(declare-datatypes ((Context!16780 0))(
  ( (Context!16781 (exprs!8890 List!72120)) )
))
(declare-fun lt!2619342 () Context!16780)

(declare-fun lambda!460374 () Int)

(declare-fun z!3488 () (Set Context!16780))

(declare-fun flatMap!3234 ((Set Context!16780) Int) (Set Context!16780))

(assert (=> b!7440296 (= res!2986258 (set.member lt!2619342 (flatMap!3234 z!3488 lambda!460374)))))

(declare-fun lt!2619341 () (Set Context!16780))

(declare-datatypes ((List!72121 0))(
  ( (Nil!71997) (Cons!71997 (h!78445 Context!16780) (t!386684 List!72121)) )
))
(declare-fun head!15260 (List!72121) Context!16780)

(declare-fun toList!11787 ((Set Context!16780)) List!72121)

(assert (=> b!7440296 (= lt!2619342 (head!15260 (toList!11787 lt!2619341)))))

(declare-fun b!7440297 () Bool)

(declare-fun res!2986260 () Bool)

(assert (=> b!7440297 (=> (not res!2986260) (not e!4442899))))

(assert (=> b!7440297 (= res!2986260 (not (= lt!2619341 (as set.empty (Set Context!16780)))))))

(declare-fun lambda!460375 () Int)

(declare-fun exists!4805 ((Set Context!16780) Int) Bool)

(assert (=> b!7440298 (= e!4442897 (not (not (exists!4805 z!3488 lambda!460375))))))

(declare-fun empty!3659 () Context!16780)

(declare-fun flatMapPost!235 ((Set Context!16780) Int Context!16780) Context!16780)

(assert (=> b!7440298 (= (flatMapPost!235 z!3488 lambda!460374 lt!2619342) empty!3659)))

(assert (=> b!7440298 true))

(declare-fun inv!91987 (Context!16780) Bool)

(assert (=> b!7440298 (and (inv!91987 empty!3659) e!4442900)))

(declare-fun setElem!56552 () Context!16780)

(declare-fun e!4442902 () Bool)

(declare-fun setNonEmpty!56552 () Bool)

(declare-fun tp!2150532 () Bool)

(assert (=> setNonEmpty!56552 (= setRes!56552 (and tp!2150532 (inv!91987 setElem!56552) e!4442902))))

(declare-fun setRest!56552 () (Set Context!16780))

(assert (=> setNonEmpty!56552 (= z!3488 (set.union (set.insert setElem!56552 (as set.empty (Set Context!16780))) setRest!56552))))

(declare-fun res!2986262 () Bool)

(declare-fun e!4442901 () Bool)

(assert (=> start!722674 (=> (not res!2986262) (not e!4442901))))

(declare-fun lt!2619343 () Context!16780)

(declare-datatypes ((List!72122 0))(
  ( (Nil!71998) (Cons!71998 (h!78446 C!39174) (t!386685 List!72122)) )
))
(declare-fun s!7945 () List!72122)

(assert (=> start!722674 (= res!2986262 (and (= z!3488 (set.insert lt!2619343 (as set.empty (Set Context!16780)))) (is-Cons!71998 s!7945)))))

(assert (=> start!722674 (= lt!2619343 (Context!16781 Nil!71996))))

(assert (=> start!722674 e!4442901))

(declare-fun condSetEmpty!56552 () Bool)

(assert (=> start!722674 (= condSetEmpty!56552 (= z!3488 (as set.empty (Set Context!16780))))))

(assert (=> start!722674 setRes!56552))

(assert (=> start!722674 e!4442898))

(declare-fun b!7440294 () Bool)

(declare-fun res!2986259 () Bool)

(assert (=> b!7440294 (=> (not res!2986259) (not e!4442897))))

(assert (=> b!7440294 (= res!2986259 (set.member lt!2619342 lt!2619341))))

(declare-fun b!7440299 () Bool)

(assert (=> b!7440299 (= e!4442901 e!4442899)))

(declare-fun res!2986261 () Bool)

(assert (=> b!7440299 (=> (not res!2986261) (not e!4442899))))

(declare-fun derivationStepZipperUp!2840 (Context!16780 C!39174) (Set Context!16780))

(assert (=> b!7440299 (= res!2986261 (= (derivationStepZipperUp!2840 lt!2619343 (h!78446 s!7945)) (as set.empty (Set Context!16780))))))

(declare-fun derivationStepZipper!3710 ((Set Context!16780) C!39174) (Set Context!16780))

(assert (=> b!7440299 (= lt!2619341 (derivationStepZipper!3710 z!3488 (h!78446 s!7945)))))

(declare-fun b!7440300 () Bool)

(declare-fun tp!2150533 () Bool)

(assert (=> b!7440300 (= e!4442902 tp!2150533)))

(assert (= (and start!722674 res!2986262) b!7440299))

(assert (= (and b!7440299 res!2986261) b!7440297))

(assert (= (and b!7440297 res!2986260) b!7440296))

(assert (= (and b!7440296 res!2986258) b!7440294))

(assert (= (and b!7440294 res!2986259) b!7440298))

(assert (= b!7440298 b!7440295))

(assert (= (and start!722674 condSetEmpty!56552) setIsEmpty!56552))

(assert (= (and start!722674 (not condSetEmpty!56552)) setNonEmpty!56552))

(assert (= setNonEmpty!56552 b!7440300))

(assert (= (and start!722674 (is-Cons!71998 s!7945)) b!7440293))

(declare-fun m!8052522 () Bool)

(assert (=> b!7440294 m!8052522))

(declare-fun m!8052524 () Bool)

(assert (=> setNonEmpty!56552 m!8052524))

(declare-fun m!8052526 () Bool)

(assert (=> b!7440298 m!8052526))

(declare-fun m!8052528 () Bool)

(assert (=> b!7440298 m!8052528))

(declare-fun m!8052530 () Bool)

(assert (=> b!7440298 m!8052530))

(declare-fun m!8052532 () Bool)

(assert (=> b!7440296 m!8052532))

(declare-fun m!8052534 () Bool)

(assert (=> b!7440296 m!8052534))

(declare-fun m!8052536 () Bool)

(assert (=> b!7440296 m!8052536))

(assert (=> b!7440296 m!8052536))

(declare-fun m!8052538 () Bool)

(assert (=> b!7440296 m!8052538))

(declare-fun m!8052540 () Bool)

(assert (=> b!7440299 m!8052540))

(declare-fun m!8052542 () Bool)

(assert (=> b!7440299 m!8052542))

(declare-fun m!8052544 () Bool)

(assert (=> start!722674 m!8052544))

(push 1)

(assert (not b!7440299))

(assert (not b!7440293))

(assert (not b!7440300))

(assert (not b!7440295))

(assert tp_is_empty!49159)

(assert (not b!7440298))

(assert (not setNonEmpty!56552))

(assert (not b!7440296))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2295107 () Bool)

(declare-fun head!15262 (List!72122) C!39174)

(assert (=> d!2295107 (= (head!15262 s!7945) (h!78446 s!7945))))

(assert (=> b!7440298 d!2295107))

(declare-fun d!2295109 () Bool)

(declare-fun lt!2619355 () Bool)

(declare-fun exists!4807 (List!72121 Int) Bool)

(assert (=> d!2295109 (= lt!2619355 (exists!4807 (toList!11787 z!3488) lambda!460375))))

(declare-fun choose!57517 ((Set Context!16780) Int) Bool)

(assert (=> d!2295109 (= lt!2619355 (choose!57517 z!3488 lambda!460375))))

(assert (=> d!2295109 (= (exists!4805 z!3488 lambda!460375) lt!2619355)))

(declare-fun bs!1926069 () Bool)

(assert (= bs!1926069 d!2295109))

(declare-fun m!8052572 () Bool)

(assert (=> bs!1926069 m!8052572))

(assert (=> bs!1926069 m!8052572))

(declare-fun m!8052574 () Bool)

(assert (=> bs!1926069 m!8052574))

(declare-fun m!8052576 () Bool)

(assert (=> bs!1926069 m!8052576))

(assert (=> b!7440298 d!2295109))

(declare-fun bs!1926070 () Bool)

(declare-fun d!2295111 () Bool)

(assert (= bs!1926070 (and d!2295111 b!7440298)))

(declare-fun lambda!460384 () Int)

(assert (=> bs!1926070 (not (= lambda!460384 lambda!460375))))

(assert (=> d!2295111 true))

(assert (=> d!2295111 true))

(declare-fun order!29581 () Int)

(declare-fun order!29583 () Int)

(declare-fun dynLambda!29721 (Int Int) Int)

(declare-fun dynLambda!29722 (Int Int) Int)

(assert (=> d!2295111 (< (dynLambda!29721 order!29581 lambda!460374) (dynLambda!29722 order!29583 lambda!460384))))

(assert (=> d!2295111 (= (set.member lt!2619342 (flatMap!3234 z!3488 lambda!460374)) (exists!4805 z!3488 lambda!460384))))

(declare-fun lt!2619358 () Context!16780)

(declare-fun choose!57518 ((Set Context!16780) Int Context!16780) Context!16780)

(assert (=> d!2295111 (= lt!2619358 (choose!57518 z!3488 lambda!460374 lt!2619342))))

(assert (=> d!2295111 (= (flatMapPost!235 z!3488 lambda!460374 lt!2619342) lt!2619358)))

(declare-fun bs!1926071 () Bool)

(assert (= bs!1926071 d!2295111))

(assert (=> bs!1926071 m!8052532))

(assert (=> bs!1926071 m!8052534))

(declare-fun m!8052578 () Bool)

(assert (=> bs!1926071 m!8052578))

(declare-fun m!8052580 () Bool)

(assert (=> bs!1926071 m!8052580))

(assert (=> b!7440298 d!2295111))

(declare-fun d!2295115 () Bool)

(declare-fun lambda!460390 () Int)

(declare-fun forall!18228 (List!72120 Int) Bool)

(assert (=> d!2295115 (= (inv!91987 empty!3659) (forall!18228 (exprs!8890 empty!3659) lambda!460390))))

(declare-fun bs!1926074 () Bool)

(assert (= bs!1926074 d!2295115))

(declare-fun m!8052586 () Bool)

(assert (=> bs!1926074 m!8052586))

(assert (=> b!7440298 d!2295115))

(declare-fun bs!1926075 () Bool)

(declare-fun d!2295123 () Bool)

(assert (= bs!1926075 (and d!2295123 d!2295115)))

(declare-fun lambda!460391 () Int)

(assert (=> bs!1926075 (= lambda!460391 lambda!460390)))

(assert (=> d!2295123 (= (inv!91987 setElem!56552) (forall!18228 (exprs!8890 setElem!56552) lambda!460391))))

(declare-fun bs!1926076 () Bool)

(assert (= bs!1926076 d!2295123))

(declare-fun m!8052588 () Bool)

(assert (=> bs!1926076 m!8052588))

(assert (=> setNonEmpty!56552 d!2295123))

(declare-fun bm!683844 () Bool)

(declare-fun call!683849 () (Set Context!16780))

(declare-fun derivationStepZipperDown!3225 (Regex!19450 Context!16780 C!39174) (Set Context!16780))

(assert (=> bm!683844 (= call!683849 (derivationStepZipperDown!3225 (h!78444 (exprs!8890 lt!2619343)) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (h!78446 s!7945)))))

(declare-fun b!7440354 () Bool)

(declare-fun e!4442932 () (Set Context!16780))

(declare-fun e!4442930 () (Set Context!16780))

(assert (=> b!7440354 (= e!4442932 e!4442930)))

(declare-fun c!1376943 () Bool)

(assert (=> b!7440354 (= c!1376943 (is-Cons!71996 (exprs!8890 lt!2619343)))))

(declare-fun b!7440355 () Bool)

(assert (=> b!7440355 (= e!4442930 (as set.empty (Set Context!16780)))))

(declare-fun b!7440356 () Bool)

(assert (=> b!7440356 (= e!4442930 call!683849)))

(declare-fun b!7440357 () Bool)

(declare-fun e!4442931 () Bool)

(declare-fun nullable!8477 (Regex!19450) Bool)

(assert (=> b!7440357 (= e!4442931 (nullable!8477 (h!78444 (exprs!8890 lt!2619343))))))

(declare-fun d!2295125 () Bool)

(declare-fun c!1376942 () Bool)

(assert (=> d!2295125 (= c!1376942 e!4442931)))

(declare-fun res!2986283 () Bool)

(assert (=> d!2295125 (=> (not res!2986283) (not e!4442931))))

(assert (=> d!2295125 (= res!2986283 (is-Cons!71996 (exprs!8890 lt!2619343)))))

(assert (=> d!2295125 (= (derivationStepZipperUp!2840 lt!2619343 (h!78446 s!7945)) e!4442932)))

(declare-fun b!7440353 () Bool)

(assert (=> b!7440353 (= e!4442932 (set.union call!683849 (derivationStepZipperUp!2840 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (h!78446 s!7945))))))

(assert (= (and d!2295125 res!2986283) b!7440357))

(assert (= (and d!2295125 c!1376942) b!7440353))

(assert (= (and d!2295125 (not c!1376942)) b!7440354))

(assert (= (and b!7440354 c!1376943) b!7440356))

(assert (= (and b!7440354 (not c!1376943)) b!7440355))

(assert (= (or b!7440353 b!7440356) bm!683844))

(declare-fun m!8052602 () Bool)

(assert (=> bm!683844 m!8052602))

(declare-fun m!8052604 () Bool)

(assert (=> b!7440357 m!8052604))

(declare-fun m!8052606 () Bool)

(assert (=> b!7440353 m!8052606))

(assert (=> b!7440299 d!2295125))

(declare-fun bs!1926078 () Bool)

(declare-fun d!2295133 () Bool)

(assert (= bs!1926078 (and d!2295133 b!7440296)))

(declare-fun lambda!460397 () Int)

(assert (=> bs!1926078 (= lambda!460397 lambda!460374)))

(assert (=> d!2295133 true))

(assert (=> d!2295133 (= (derivationStepZipper!3710 z!3488 (h!78446 s!7945)) (flatMap!3234 z!3488 lambda!460397))))

(declare-fun bs!1926080 () Bool)

(assert (= bs!1926080 d!2295133))

(declare-fun m!8052608 () Bool)

(assert (=> bs!1926080 m!8052608))

(assert (=> b!7440299 d!2295133))

(declare-fun d!2295135 () Bool)

(declare-fun choose!57522 ((Set Context!16780) Int) (Set Context!16780))

(assert (=> d!2295135 (= (flatMap!3234 z!3488 lambda!460374) (choose!57522 z!3488 lambda!460374))))

(declare-fun bs!1926083 () Bool)

(assert (= bs!1926083 d!2295135))

(declare-fun m!8052614 () Bool)

(assert (=> bs!1926083 m!8052614))

(assert (=> b!7440296 d!2295135))

(declare-fun d!2295139 () Bool)

(assert (=> d!2295139 (= (head!15260 (toList!11787 lt!2619341)) (h!78445 (toList!11787 lt!2619341)))))

(assert (=> b!7440296 d!2295139))

(declare-fun d!2295143 () Bool)

(declare-fun e!4442935 () Bool)

(assert (=> d!2295143 e!4442935))

(declare-fun res!2986286 () Bool)

(assert (=> d!2295143 (=> (not res!2986286) (not e!4442935))))

(declare-fun lt!2619370 () List!72121)

(declare-fun noDuplicate!3123 (List!72121) Bool)

(assert (=> d!2295143 (= res!2986286 (noDuplicate!3123 lt!2619370))))

(declare-fun choose!57524 ((Set Context!16780)) List!72121)

(assert (=> d!2295143 (= lt!2619370 (choose!57524 lt!2619341))))

(assert (=> d!2295143 (= (toList!11787 lt!2619341) lt!2619370)))

(declare-fun b!7440365 () Bool)

(declare-fun content!15235 (List!72121) (Set Context!16780))

(assert (=> b!7440365 (= e!4442935 (= (content!15235 lt!2619370) lt!2619341))))

(assert (= (and d!2295143 res!2986286) b!7440365))

(declare-fun m!8052618 () Bool)

(assert (=> d!2295143 m!8052618))

(declare-fun m!8052620 () Bool)

(assert (=> d!2295143 m!8052620))

(declare-fun m!8052622 () Bool)

(assert (=> b!7440365 m!8052622))

(assert (=> b!7440296 d!2295143))

(declare-fun b!7440380 () Bool)

(declare-fun e!4442944 () Bool)

(declare-fun tp!2150549 () Bool)

(assert (=> b!7440380 (= e!4442944 (and tp_is_empty!49159 tp!2150549))))

(assert (=> b!7440293 (= tp!2150534 e!4442944)))

(assert (= (and b!7440293 (is-Cons!71998 (t!386685 s!7945))) b!7440380))

(declare-fun condSetEmpty!56558 () Bool)

(assert (=> setNonEmpty!56552 (= condSetEmpty!56558 (= setRest!56552 (as set.empty (Set Context!16780))))))

(declare-fun setRes!56558 () Bool)

(assert (=> setNonEmpty!56552 (= tp!2150532 setRes!56558)))

(declare-fun setIsEmpty!56558 () Bool)

(assert (=> setIsEmpty!56558 setRes!56558))

(declare-fun e!4442947 () Bool)

(declare-fun setElem!56558 () Context!16780)

(declare-fun tp!2150555 () Bool)

(declare-fun setNonEmpty!56558 () Bool)

(assert (=> setNonEmpty!56558 (= setRes!56558 (and tp!2150555 (inv!91987 setElem!56558) e!4442947))))

(declare-fun setRest!56558 () (Set Context!16780))

(assert (=> setNonEmpty!56558 (= setRest!56552 (set.union (set.insert setElem!56558 (as set.empty (Set Context!16780))) setRest!56558))))

(declare-fun b!7440385 () Bool)

(declare-fun tp!2150554 () Bool)

(assert (=> b!7440385 (= e!4442947 tp!2150554)))

(assert (= (and setNonEmpty!56552 condSetEmpty!56558) setIsEmpty!56558))

(assert (= (and setNonEmpty!56552 (not condSetEmpty!56558)) setNonEmpty!56558))

(assert (= setNonEmpty!56558 b!7440385))

(declare-fun m!8052624 () Bool)

(assert (=> setNonEmpty!56558 m!8052624))

(declare-fun b!7440390 () Bool)

(declare-fun e!4442950 () Bool)

(declare-fun tp!2150560 () Bool)

(declare-fun tp!2150561 () Bool)

(assert (=> b!7440390 (= e!4442950 (and tp!2150560 tp!2150561))))

(assert (=> b!7440295 (= tp!2150531 e!4442950)))

(assert (= (and b!7440295 (is-Cons!71996 (exprs!8890 empty!3659))) b!7440390))

(declare-fun b!7440391 () Bool)

(declare-fun e!4442951 () Bool)

(declare-fun tp!2150562 () Bool)

(declare-fun tp!2150563 () Bool)

(assert (=> b!7440391 (= e!4442951 (and tp!2150562 tp!2150563))))

(assert (=> b!7440300 (= tp!2150533 e!4442951)))

(assert (= (and b!7440300 (is-Cons!71996 (exprs!8890 setElem!56552))) b!7440391))

(push 1)

(assert (not bm!683844))

(assert (not d!2295123))

(assert (not d!2295111))

(assert (not b!7440385))

(assert (not b!7440357))

(assert (not d!2295115))

(assert tp_is_empty!49159)

(assert (not d!2295133))

(assert (not setNonEmpty!56558))

(assert (not b!7440390))

(assert (not d!2295143))

(assert (not b!7440391))

(assert (not d!2295109))

(assert (not d!2295135))

(assert (not b!7440380))

(assert (not b!7440353))

(assert (not b!7440365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!2295111 d!2295135))

(declare-fun d!2295147 () Bool)

(declare-fun lt!2619371 () Bool)

(assert (=> d!2295147 (= lt!2619371 (exists!4807 (toList!11787 z!3488) lambda!460384))))

(assert (=> d!2295147 (= lt!2619371 (choose!57517 z!3488 lambda!460384))))

(assert (=> d!2295147 (= (exists!4805 z!3488 lambda!460384) lt!2619371)))

(declare-fun bs!1926087 () Bool)

(assert (= bs!1926087 d!2295147))

(assert (=> bs!1926087 m!8052572))

(assert (=> bs!1926087 m!8052572))

(declare-fun m!8052636 () Bool)

(assert (=> bs!1926087 m!8052636))

(declare-fun m!8052638 () Bool)

(assert (=> bs!1926087 m!8052638))

(assert (=> d!2295111 d!2295147))

(declare-fun bs!1926088 () Bool)

(declare-fun d!2295149 () Bool)

(assert (= bs!1926088 (and d!2295149 b!7440298)))

(declare-fun lambda!460404 () Int)

(assert (=> bs!1926088 (not (= lambda!460404 lambda!460375))))

(declare-fun bs!1926089 () Bool)

(assert (= bs!1926089 (and d!2295149 d!2295111)))

(assert (=> bs!1926089 (= lambda!460404 lambda!460384)))

(assert (=> d!2295149 true))

(assert (=> d!2295149 true))

(assert (=> d!2295149 (< (dynLambda!29721 order!29581 lambda!460374) (dynLambda!29722 order!29583 lambda!460404))))

(assert (=> d!2295149 (= (set.member lt!2619342 (flatMap!3234 z!3488 lambda!460374)) (exists!4805 z!3488 lambda!460404))))

(declare-fun _$3!601 () Context!16780)

(declare-fun e!4442967 () Bool)

(assert (=> d!2295149 (and (inv!91987 _$3!601) e!4442967)))

(assert (=> d!2295149 (= (choose!57518 z!3488 lambda!460374 lt!2619342) _$3!601)))

(declare-fun b!7440418 () Bool)

(declare-fun tp!2150583 () Bool)

(assert (=> b!7440418 (= e!4442967 tp!2150583)))

(assert (= d!2295149 b!7440418))

(assert (=> d!2295149 m!8052532))

(assert (=> d!2295149 m!8052534))

(declare-fun m!8052640 () Bool)

(assert (=> d!2295149 m!8052640))

(declare-fun m!8052642 () Bool)

(assert (=> d!2295149 m!8052642))

(assert (=> d!2295111 d!2295149))

(declare-fun d!2295151 () Bool)

(assert (=> d!2295151 (= (flatMap!3234 z!3488 lambda!460397) (choose!57522 z!3488 lambda!460397))))

(declare-fun bs!1926090 () Bool)

(assert (= bs!1926090 d!2295151))

(declare-fun m!8052644 () Bool)

(assert (=> bs!1926090 m!8052644))

(assert (=> d!2295133 d!2295151))

(declare-fun bs!1926091 () Bool)

(declare-fun d!2295153 () Bool)

(assert (= bs!1926091 (and d!2295153 d!2295115)))

(declare-fun lambda!460405 () Int)

(assert (=> bs!1926091 (= lambda!460405 lambda!460390)))

(declare-fun bs!1926092 () Bool)

(assert (= bs!1926092 (and d!2295153 d!2295123)))

(assert (=> bs!1926092 (= lambda!460405 lambda!460391)))

(assert (=> d!2295153 (= (inv!91987 setElem!56558) (forall!18228 (exprs!8890 setElem!56558) lambda!460405))))

(declare-fun bs!1926093 () Bool)

(assert (= bs!1926093 d!2295153))

(declare-fun m!8052646 () Bool)

(assert (=> bs!1926093 m!8052646))

(assert (=> setNonEmpty!56558 d!2295153))

(declare-fun c!1376968 () Bool)

(declare-fun c!1376964 () Bool)

(declare-fun call!683868 () List!72120)

(declare-fun bm!683860 () Bool)

(declare-fun call!683867 () (Set Context!16780))

(declare-fun c!1376967 () Bool)

(assert (=> bm!683860 (= call!683867 (derivationStepZipperDown!3225 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))) (ite (or c!1376967 c!1376968) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683868)) (h!78446 s!7945)))))

(declare-fun b!7440441 () Bool)

(declare-fun e!4442984 () (Set Context!16780))

(declare-fun e!4442985 () (Set Context!16780))

(assert (=> b!7440441 (= e!4442984 e!4442985)))

(assert (=> b!7440441 (= c!1376964 (is-Concat!28295 (h!78444 (exprs!8890 lt!2619343))))))

(declare-fun b!7440442 () Bool)

(declare-fun call!683869 () (Set Context!16780))

(declare-fun call!683870 () (Set Context!16780))

(assert (=> b!7440442 (= e!4442984 (set.union call!683869 call!683870))))

(declare-fun d!2295155 () Bool)

(declare-fun c!1376965 () Bool)

(assert (=> d!2295155 (= c!1376965 (and (is-ElementMatch!19450 (h!78444 (exprs!8890 lt!2619343))) (= (c!1376936 (h!78444 (exprs!8890 lt!2619343))) (h!78446 s!7945))))))

(declare-fun e!4442981 () (Set Context!16780))

(assert (=> d!2295155 (= (derivationStepZipperDown!3225 (h!78444 (exprs!8890 lt!2619343)) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (h!78446 s!7945)) e!4442981)))

(declare-fun bm!683861 () Bool)

(assert (=> bm!683861 (= call!683870 call!683867)))

(declare-fun b!7440443 () Bool)

(declare-fun e!4442983 () Bool)

(assert (=> b!7440443 (= c!1376968 e!4442983)))

(declare-fun res!2986292 () Bool)

(assert (=> b!7440443 (=> (not res!2986292) (not e!4442983))))

(assert (=> b!7440443 (= res!2986292 (is-Concat!28295 (h!78444 (exprs!8890 lt!2619343))))))

(declare-fun e!4442980 () (Set Context!16780))

(assert (=> b!7440443 (= e!4442980 e!4442984)))

(declare-fun b!7440444 () Bool)

(assert (=> b!7440444 (= e!4442983 (nullable!8477 (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))

(declare-fun bm!683862 () Bool)

(declare-fun call!683866 () List!72120)

(declare-fun $colon$colon!3354 (List!72120 Regex!19450) List!72120)

(assert (=> bm!683862 (= call!683866 ($colon$colon!3354 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))) (ite (or c!1376968 c!1376964) (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (h!78444 (exprs!8890 lt!2619343)))))))

(declare-fun bm!683863 () Bool)

(assert (=> bm!683863 (= call!683868 call!683866)))

(declare-fun bm!683864 () Bool)

(declare-fun call!683865 () (Set Context!16780))

(assert (=> bm!683864 (= call!683865 call!683870)))

(declare-fun b!7440445 () Bool)

(assert (=> b!7440445 (= e!4442981 e!4442980)))

(assert (=> b!7440445 (= c!1376967 (is-Union!19450 (h!78444 (exprs!8890 lt!2619343))))))

(declare-fun b!7440446 () Bool)

(assert (=> b!7440446 (= e!4442981 (set.insert (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (as set.empty (Set Context!16780))))))

(declare-fun b!7440447 () Bool)

(assert (=> b!7440447 (= e!4442985 call!683865)))

(declare-fun b!7440448 () Bool)

(declare-fun e!4442982 () (Set Context!16780))

(assert (=> b!7440448 (= e!4442982 (as set.empty (Set Context!16780)))))

(declare-fun bm!683865 () Bool)

(assert (=> bm!683865 (= call!683869 (derivationStepZipperDown!3225 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))) (ite c!1376967 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683866)) (h!78446 s!7945)))))

(declare-fun b!7440449 () Bool)

(assert (=> b!7440449 (= e!4442980 (set.union call!683867 call!683869))))

(declare-fun b!7440450 () Bool)

(declare-fun c!1376966 () Bool)

(assert (=> b!7440450 (= c!1376966 (is-Star!19450 (h!78444 (exprs!8890 lt!2619343))))))

(assert (=> b!7440450 (= e!4442985 e!4442982)))

(declare-fun b!7440451 () Bool)

(assert (=> b!7440451 (= e!4442982 call!683865)))

(assert (= (and d!2295155 c!1376965) b!7440446))

(assert (= (and d!2295155 (not c!1376965)) b!7440445))

(assert (= (and b!7440445 c!1376967) b!7440449))

(assert (= (and b!7440445 (not c!1376967)) b!7440443))

(assert (= (and b!7440443 res!2986292) b!7440444))

(assert (= (and b!7440443 c!1376968) b!7440442))

(assert (= (and b!7440443 (not c!1376968)) b!7440441))

(assert (= (and b!7440441 c!1376964) b!7440447))

(assert (= (and b!7440441 (not c!1376964)) b!7440450))

(assert (= (and b!7440450 c!1376966) b!7440451))

(assert (= (and b!7440450 (not c!1376966)) b!7440448))

(assert (= (or b!7440447 b!7440451) bm!683863))

(assert (= (or b!7440447 b!7440451) bm!683864))

(assert (= (or b!7440442 bm!683864) bm!683861))

(assert (= (or b!7440442 bm!683863) bm!683862))

(assert (= (or b!7440449 b!7440442) bm!683865))

(assert (= (or b!7440449 bm!683861) bm!683860))

(declare-fun m!8052648 () Bool)

(assert (=> bm!683860 m!8052648))

(declare-fun m!8052650 () Bool)

(assert (=> bm!683865 m!8052650))

(declare-fun m!8052652 () Bool)

(assert (=> b!7440446 m!8052652))

(declare-fun m!8052654 () Bool)

(assert (=> bm!683862 m!8052654))

(declare-fun m!8052656 () Bool)

(assert (=> b!7440444 m!8052656))

(assert (=> bm!683844 d!2295155))

(declare-fun d!2295157 () Bool)

(assert (=> d!2295157 true))

(declare-fun setRes!56564 () Bool)

(assert (=> d!2295157 setRes!56564))

(declare-fun condSetEmpty!56564 () Bool)

(declare-fun res!2986295 () (Set Context!16780))

(assert (=> d!2295157 (= condSetEmpty!56564 (= res!2986295 (as set.empty (Set Context!16780))))))

(assert (=> d!2295157 (= (choose!57522 z!3488 lambda!460374) res!2986295)))

(declare-fun setIsEmpty!56564 () Bool)

(assert (=> setIsEmpty!56564 setRes!56564))

(declare-fun setElem!56564 () Context!16780)

(declare-fun e!4442988 () Bool)

(declare-fun setNonEmpty!56564 () Bool)

(declare-fun tp!2150589 () Bool)

(assert (=> setNonEmpty!56564 (= setRes!56564 (and tp!2150589 (inv!91987 setElem!56564) e!4442988))))

(declare-fun setRest!56564 () (Set Context!16780))

(assert (=> setNonEmpty!56564 (= res!2986295 (set.union (set.insert setElem!56564 (as set.empty (Set Context!16780))) setRest!56564))))

(declare-fun b!7440454 () Bool)

(declare-fun tp!2150588 () Bool)

(assert (=> b!7440454 (= e!4442988 tp!2150588)))

(assert (= (and d!2295157 condSetEmpty!56564) setIsEmpty!56564))

(assert (= (and d!2295157 (not condSetEmpty!56564)) setNonEmpty!56564))

(assert (= setNonEmpty!56564 b!7440454))

(declare-fun m!8052658 () Bool)

(assert (=> setNonEmpty!56564 m!8052658))

(assert (=> d!2295135 d!2295157))

(declare-fun bm!683866 () Bool)

(declare-fun call!683871 () (Set Context!16780))

(assert (=> bm!683866 (= call!683871 (derivationStepZipperDown!3225 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))) (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (h!78446 s!7945)))))

(declare-fun b!7440456 () Bool)

(declare-fun e!4442991 () (Set Context!16780))

(declare-fun e!4442989 () (Set Context!16780))

(assert (=> b!7440456 (= e!4442991 e!4442989)))

(declare-fun c!1376970 () Bool)

(assert (=> b!7440456 (= c!1376970 (is-Cons!71996 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))

(declare-fun b!7440457 () Bool)

(assert (=> b!7440457 (= e!4442989 (as set.empty (Set Context!16780)))))

(declare-fun b!7440458 () Bool)

(assert (=> b!7440458 (= e!4442989 call!683871)))

(declare-fun b!7440459 () Bool)

(declare-fun e!4442990 () Bool)

(assert (=> b!7440459 (= e!4442990 (nullable!8477 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))

(declare-fun d!2295159 () Bool)

(declare-fun c!1376969 () Bool)

(assert (=> d!2295159 (= c!1376969 e!4442990)))

(declare-fun res!2986296 () Bool)

(assert (=> d!2295159 (=> (not res!2986296) (not e!4442990))))

(assert (=> d!2295159 (= res!2986296 (is-Cons!71996 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))

(assert (=> d!2295159 (= (derivationStepZipperUp!2840 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (h!78446 s!7945)) e!4442991)))

(declare-fun b!7440455 () Bool)

(assert (=> b!7440455 (= e!4442991 (set.union call!683871 (derivationStepZipperUp!2840 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (h!78446 s!7945))))))

(assert (= (and d!2295159 res!2986296) b!7440459))

(assert (= (and d!2295159 c!1376969) b!7440455))

(assert (= (and d!2295159 (not c!1376969)) b!7440456))

(assert (= (and b!7440456 c!1376970) b!7440458))

(assert (= (and b!7440456 (not c!1376970)) b!7440457))

(assert (= (or b!7440455 b!7440458) bm!683866))

(declare-fun m!8052660 () Bool)

(assert (=> bm!683866 m!8052660))

(declare-fun m!8052662 () Bool)

(assert (=> b!7440459 m!8052662))

(declare-fun m!8052664 () Bool)

(assert (=> b!7440455 m!8052664))

(assert (=> b!7440353 d!2295159))

(declare-fun d!2295161 () Bool)

(declare-fun res!2986301 () Bool)

(declare-fun e!4442996 () Bool)

(assert (=> d!2295161 (=> res!2986301 e!4442996)))

(assert (=> d!2295161 (= res!2986301 (is-Nil!71997 lt!2619370))))

(assert (=> d!2295161 (= (noDuplicate!3123 lt!2619370) e!4442996)))

(declare-fun b!7440464 () Bool)

(declare-fun e!4442997 () Bool)

(assert (=> b!7440464 (= e!4442996 e!4442997)))

(declare-fun res!2986302 () Bool)

(assert (=> b!7440464 (=> (not res!2986302) (not e!4442997))))

(declare-fun contains!20861 (List!72121 Context!16780) Bool)

(assert (=> b!7440464 (= res!2986302 (not (contains!20861 (t!386684 lt!2619370) (h!78445 lt!2619370))))))

(declare-fun b!7440465 () Bool)

(assert (=> b!7440465 (= e!4442997 (noDuplicate!3123 (t!386684 lt!2619370)))))

(assert (= (and d!2295161 (not res!2986301)) b!7440464))

(assert (= (and b!7440464 res!2986302) b!7440465))

(declare-fun m!8052666 () Bool)

(assert (=> b!7440464 m!8052666))

(declare-fun m!8052668 () Bool)

(assert (=> b!7440465 m!8052668))

(assert (=> d!2295143 d!2295161))

(declare-fun d!2295163 () Bool)

(declare-fun e!4443006 () Bool)

(assert (=> d!2295163 e!4443006))

(declare-fun res!2986308 () Bool)

(assert (=> d!2295163 (=> (not res!2986308) (not e!4443006))))

(declare-fun res!2986307 () List!72121)

(assert (=> d!2295163 (= res!2986308 (noDuplicate!3123 res!2986307))))

(declare-fun e!4443005 () Bool)

(assert (=> d!2295163 e!4443005))

(assert (=> d!2295163 (= (choose!57524 lt!2619341) res!2986307)))

(declare-fun b!7440473 () Bool)

(declare-fun e!4443004 () Bool)

(declare-fun tp!2150594 () Bool)

(assert (=> b!7440473 (= e!4443004 tp!2150594)))

(declare-fun tp!2150595 () Bool)

(declare-fun b!7440472 () Bool)

(assert (=> b!7440472 (= e!4443005 (and (inv!91987 (h!78445 res!2986307)) e!4443004 tp!2150595))))

(declare-fun b!7440474 () Bool)

(assert (=> b!7440474 (= e!4443006 (= (content!15235 res!2986307) lt!2619341))))

(assert (= b!7440472 b!7440473))

(assert (= (and d!2295163 (is-Cons!71997 res!2986307)) b!7440472))

(assert (= (and d!2295163 res!2986308) b!7440474))

(declare-fun m!8052670 () Bool)

(assert (=> d!2295163 m!8052670))

(declare-fun m!8052672 () Bool)

(assert (=> b!7440472 m!8052672))

(declare-fun m!8052674 () Bool)

(assert (=> b!7440474 m!8052674))

(assert (=> d!2295143 d!2295163))

(declare-fun d!2295165 () Bool)

(declare-fun res!2986313 () Bool)

(declare-fun e!4443011 () Bool)

(assert (=> d!2295165 (=> res!2986313 e!4443011)))

(assert (=> d!2295165 (= res!2986313 (is-Nil!71996 (exprs!8890 setElem!56552)))))

(assert (=> d!2295165 (= (forall!18228 (exprs!8890 setElem!56552) lambda!460391) e!4443011)))

(declare-fun b!7440479 () Bool)

(declare-fun e!4443012 () Bool)

(assert (=> b!7440479 (= e!4443011 e!4443012)))

(declare-fun res!2986314 () Bool)

(assert (=> b!7440479 (=> (not res!2986314) (not e!4443012))))

(declare-fun dynLambda!29725 (Int Regex!19450) Bool)

(assert (=> b!7440479 (= res!2986314 (dynLambda!29725 lambda!460391 (h!78444 (exprs!8890 setElem!56552))))))

(declare-fun b!7440480 () Bool)

(assert (=> b!7440480 (= e!4443012 (forall!18228 (t!386683 (exprs!8890 setElem!56552)) lambda!460391))))

(assert (= (and d!2295165 (not res!2986313)) b!7440479))

(assert (= (and b!7440479 res!2986314) b!7440480))

(declare-fun b_lambda!287435 () Bool)

(assert (=> (not b_lambda!287435) (not b!7440479)))

(declare-fun m!8052676 () Bool)

(assert (=> b!7440479 m!8052676))

(declare-fun m!8052678 () Bool)

(assert (=> b!7440480 m!8052678))

(assert (=> d!2295123 d!2295165))

(declare-fun d!2295167 () Bool)

(declare-fun res!2986315 () Bool)

(declare-fun e!4443013 () Bool)

(assert (=> d!2295167 (=> res!2986315 e!4443013)))

(assert (=> d!2295167 (= res!2986315 (is-Nil!71996 (exprs!8890 empty!3659)))))

(assert (=> d!2295167 (= (forall!18228 (exprs!8890 empty!3659) lambda!460390) e!4443013)))

(declare-fun b!7440481 () Bool)

(declare-fun e!4443014 () Bool)

(assert (=> b!7440481 (= e!4443013 e!4443014)))

(declare-fun res!2986316 () Bool)

(assert (=> b!7440481 (=> (not res!2986316) (not e!4443014))))

(assert (=> b!7440481 (= res!2986316 (dynLambda!29725 lambda!460390 (h!78444 (exprs!8890 empty!3659))))))

(declare-fun b!7440482 () Bool)

(assert (=> b!7440482 (= e!4443014 (forall!18228 (t!386683 (exprs!8890 empty!3659)) lambda!460390))))

(assert (= (and d!2295167 (not res!2986315)) b!7440481))

(assert (= (and b!7440481 res!2986316) b!7440482))

(declare-fun b_lambda!287437 () Bool)

(assert (=> (not b_lambda!287437) (not b!7440481)))

(declare-fun m!8052680 () Bool)

(assert (=> b!7440481 m!8052680))

(declare-fun m!8052682 () Bool)

(assert (=> b!7440482 m!8052682))

(assert (=> d!2295115 d!2295167))

(declare-fun d!2295169 () Bool)

(declare-fun c!1376973 () Bool)

(assert (=> d!2295169 (= c!1376973 (is-Nil!71997 lt!2619370))))

(declare-fun e!4443017 () (Set Context!16780))

(assert (=> d!2295169 (= (content!15235 lt!2619370) e!4443017)))

(declare-fun b!7440487 () Bool)

(assert (=> b!7440487 (= e!4443017 (as set.empty (Set Context!16780)))))

(declare-fun b!7440488 () Bool)

(assert (=> b!7440488 (= e!4443017 (set.union (set.insert (h!78445 lt!2619370) (as set.empty (Set Context!16780))) (content!15235 (t!386684 lt!2619370))))))

(assert (= (and d!2295169 c!1376973) b!7440487))

(assert (= (and d!2295169 (not c!1376973)) b!7440488))

(declare-fun m!8052684 () Bool)

(assert (=> b!7440488 m!8052684))

(declare-fun m!8052686 () Bool)

(assert (=> b!7440488 m!8052686))

(assert (=> b!7440365 d!2295169))

(declare-fun bs!1926094 () Bool)

(declare-fun d!2295171 () Bool)

(assert (= bs!1926094 (and d!2295171 b!7440298)))

(declare-fun lambda!460408 () Int)

(assert (=> bs!1926094 (not (= lambda!460408 lambda!460375))))

(declare-fun bs!1926095 () Bool)

(assert (= bs!1926095 (and d!2295171 d!2295111)))

(assert (=> bs!1926095 (not (= lambda!460408 lambda!460384))))

(declare-fun bs!1926096 () Bool)

(assert (= bs!1926096 (and d!2295171 d!2295149)))

(assert (=> bs!1926096 (not (= lambda!460408 lambda!460404))))

(assert (=> d!2295171 true))

(assert (=> d!2295171 (< (dynLambda!29722 order!29583 lambda!460375) (dynLambda!29722 order!29583 lambda!460408))))

(declare-fun forall!18229 (List!72121 Int) Bool)

(assert (=> d!2295171 (= (exists!4807 (toList!11787 z!3488) lambda!460375) (not (forall!18229 (toList!11787 z!3488) lambda!460408)))))

(declare-fun bs!1926097 () Bool)

(assert (= bs!1926097 d!2295171))

(assert (=> bs!1926097 m!8052572))

(declare-fun m!8052688 () Bool)

(assert (=> bs!1926097 m!8052688))

(assert (=> d!2295109 d!2295171))

(declare-fun d!2295173 () Bool)

(declare-fun e!4443018 () Bool)

(assert (=> d!2295173 e!4443018))

(declare-fun res!2986317 () Bool)

(assert (=> d!2295173 (=> (not res!2986317) (not e!4443018))))

(declare-fun lt!2619372 () List!72121)

(assert (=> d!2295173 (= res!2986317 (noDuplicate!3123 lt!2619372))))

(assert (=> d!2295173 (= lt!2619372 (choose!57524 z!3488))))

(assert (=> d!2295173 (= (toList!11787 z!3488) lt!2619372)))

(declare-fun b!7440491 () Bool)

(assert (=> b!7440491 (= e!4443018 (= (content!15235 lt!2619372) z!3488))))

(assert (= (and d!2295173 res!2986317) b!7440491))

(declare-fun m!8052690 () Bool)

(assert (=> d!2295173 m!8052690))

(declare-fun m!8052692 () Bool)

(assert (=> d!2295173 m!8052692))

(declare-fun m!8052694 () Bool)

(assert (=> b!7440491 m!8052694))

(assert (=> d!2295109 d!2295173))

(declare-fun d!2295175 () Bool)

(declare-fun res!2986320 () Bool)

(assert (=> d!2295175 (= res!2986320 (exists!4807 (toList!11787 z!3488) lambda!460375))))

(assert (=> d!2295175 true))

(assert (=> d!2295175 (= (choose!57517 z!3488 lambda!460375) res!2986320)))

(declare-fun bs!1926098 () Bool)

(assert (= bs!1926098 d!2295175))

(assert (=> bs!1926098 m!8052572))

(assert (=> bs!1926098 m!8052572))

(assert (=> bs!1926098 m!8052574))

(assert (=> d!2295109 d!2295175))

(declare-fun d!2295177 () Bool)

(declare-fun nullableFct!3420 (Regex!19450) Bool)

(assert (=> d!2295177 (= (nullable!8477 (h!78444 (exprs!8890 lt!2619343))) (nullableFct!3420 (h!78444 (exprs!8890 lt!2619343))))))

(declare-fun bs!1926099 () Bool)

(assert (= bs!1926099 d!2295177))

(declare-fun m!8052696 () Bool)

(assert (=> bs!1926099 m!8052696))

(assert (=> b!7440357 d!2295177))

(declare-fun b!7440492 () Bool)

(declare-fun e!4443019 () Bool)

(declare-fun tp!2150596 () Bool)

(declare-fun tp!2150597 () Bool)

(assert (=> b!7440492 (= e!4443019 (and tp!2150596 tp!2150597))))

(assert (=> b!7440385 (= tp!2150554 e!4443019)))

(assert (= (and b!7440385 (is-Cons!71996 (exprs!8890 setElem!56558))) b!7440492))

(declare-fun b!7440493 () Bool)

(declare-fun e!4443020 () Bool)

(declare-fun tp!2150598 () Bool)

(assert (=> b!7440493 (= e!4443020 (and tp_is_empty!49159 tp!2150598))))

(assert (=> b!7440380 (= tp!2150549 e!4443020)))

(assert (= (and b!7440380 (is-Cons!71998 (t!386685 (t!386685 s!7945)))) b!7440493))

(declare-fun condSetEmpty!56565 () Bool)

(assert (=> setNonEmpty!56558 (= condSetEmpty!56565 (= setRest!56558 (as set.empty (Set Context!16780))))))

(declare-fun setRes!56565 () Bool)

(assert (=> setNonEmpty!56558 (= tp!2150555 setRes!56565)))

(declare-fun setIsEmpty!56565 () Bool)

(assert (=> setIsEmpty!56565 setRes!56565))

(declare-fun setNonEmpty!56565 () Bool)

(declare-fun setElem!56565 () Context!16780)

(declare-fun tp!2150600 () Bool)

(declare-fun e!4443021 () Bool)

(assert (=> setNonEmpty!56565 (= setRes!56565 (and tp!2150600 (inv!91987 setElem!56565) e!4443021))))

(declare-fun setRest!56565 () (Set Context!16780))

(assert (=> setNonEmpty!56565 (= setRest!56558 (set.union (set.insert setElem!56565 (as set.empty (Set Context!16780))) setRest!56565))))

(declare-fun b!7440494 () Bool)

(declare-fun tp!2150599 () Bool)

(assert (=> b!7440494 (= e!4443021 tp!2150599)))

(assert (= (and setNonEmpty!56558 condSetEmpty!56565) setIsEmpty!56565))

(assert (= (and setNonEmpty!56558 (not condSetEmpty!56565)) setNonEmpty!56565))

(assert (= setNonEmpty!56565 b!7440494))

(declare-fun m!8052698 () Bool)

(assert (=> setNonEmpty!56565 m!8052698))

(declare-fun b!7440507 () Bool)

(declare-fun e!4443024 () Bool)

(declare-fun tp!2150611 () Bool)

(assert (=> b!7440507 (= e!4443024 tp!2150611)))

(declare-fun b!7440505 () Bool)

(assert (=> b!7440505 (= e!4443024 tp_is_empty!49159)))

(declare-fun b!7440508 () Bool)

(declare-fun tp!2150614 () Bool)

(declare-fun tp!2150612 () Bool)

(assert (=> b!7440508 (= e!4443024 (and tp!2150614 tp!2150612))))

(assert (=> b!7440390 (= tp!2150560 e!4443024)))

(declare-fun b!7440506 () Bool)

(declare-fun tp!2150613 () Bool)

(declare-fun tp!2150615 () Bool)

(assert (=> b!7440506 (= e!4443024 (and tp!2150613 tp!2150615))))

(assert (= (and b!7440390 (is-ElementMatch!19450 (h!78444 (exprs!8890 empty!3659)))) b!7440505))

(assert (= (and b!7440390 (is-Concat!28295 (h!78444 (exprs!8890 empty!3659)))) b!7440506))

(assert (= (and b!7440390 (is-Star!19450 (h!78444 (exprs!8890 empty!3659)))) b!7440507))

(assert (= (and b!7440390 (is-Union!19450 (h!78444 (exprs!8890 empty!3659)))) b!7440508))

(declare-fun b!7440509 () Bool)

(declare-fun e!4443025 () Bool)

(declare-fun tp!2150616 () Bool)

(declare-fun tp!2150617 () Bool)

(assert (=> b!7440509 (= e!4443025 (and tp!2150616 tp!2150617))))

(assert (=> b!7440390 (= tp!2150561 e!4443025)))

(assert (= (and b!7440390 (is-Cons!71996 (t!386683 (exprs!8890 empty!3659)))) b!7440509))

(declare-fun b!7440512 () Bool)

(declare-fun e!4443026 () Bool)

(declare-fun tp!2150618 () Bool)

(assert (=> b!7440512 (= e!4443026 tp!2150618)))

(declare-fun b!7440510 () Bool)

(assert (=> b!7440510 (= e!4443026 tp_is_empty!49159)))

(declare-fun b!7440513 () Bool)

(declare-fun tp!2150621 () Bool)

(declare-fun tp!2150619 () Bool)

(assert (=> b!7440513 (= e!4443026 (and tp!2150621 tp!2150619))))

(assert (=> b!7440391 (= tp!2150562 e!4443026)))

(declare-fun b!7440511 () Bool)

(declare-fun tp!2150620 () Bool)

(declare-fun tp!2150622 () Bool)

(assert (=> b!7440511 (= e!4443026 (and tp!2150620 tp!2150622))))

(assert (= (and b!7440391 (is-ElementMatch!19450 (h!78444 (exprs!8890 setElem!56552)))) b!7440510))

(assert (= (and b!7440391 (is-Concat!28295 (h!78444 (exprs!8890 setElem!56552)))) b!7440511))

(assert (= (and b!7440391 (is-Star!19450 (h!78444 (exprs!8890 setElem!56552)))) b!7440512))

(assert (= (and b!7440391 (is-Union!19450 (h!78444 (exprs!8890 setElem!56552)))) b!7440513))

(declare-fun b!7440514 () Bool)

(declare-fun e!4443027 () Bool)

(declare-fun tp!2150623 () Bool)

(declare-fun tp!2150624 () Bool)

(assert (=> b!7440514 (= e!4443027 (and tp!2150623 tp!2150624))))

(assert (=> b!7440391 (= tp!2150563 e!4443027)))

(assert (= (and b!7440391 (is-Cons!71996 (t!386683 (exprs!8890 setElem!56552)))) b!7440514))

(declare-fun b_lambda!287439 () Bool)

(assert (= b_lambda!287437 (or d!2295115 b_lambda!287439)))

(declare-fun bs!1926100 () Bool)

(declare-fun d!2295179 () Bool)

(assert (= bs!1926100 (and d!2295179 d!2295115)))

(declare-fun validRegex!9979 (Regex!19450) Bool)

(assert (=> bs!1926100 (= (dynLambda!29725 lambda!460390 (h!78444 (exprs!8890 empty!3659))) (validRegex!9979 (h!78444 (exprs!8890 empty!3659))))))

(declare-fun m!8052700 () Bool)

(assert (=> bs!1926100 m!8052700))

(assert (=> b!7440481 d!2295179))

(declare-fun b_lambda!287441 () Bool)

(assert (= b_lambda!287435 (or d!2295123 b_lambda!287441)))

(declare-fun bs!1926101 () Bool)

(declare-fun d!2295181 () Bool)

(assert (= bs!1926101 (and d!2295181 d!2295123)))

(assert (=> bs!1926101 (= (dynLambda!29725 lambda!460391 (h!78444 (exprs!8890 setElem!56552))) (validRegex!9979 (h!78444 (exprs!8890 setElem!56552))))))

(declare-fun m!8052702 () Bool)

(assert (=> bs!1926101 m!8052702))

(assert (=> b!7440479 d!2295181))

(push 1)

(assert (not b!7440465))

(assert (not bm!683866))

(assert (not bm!683860))

(assert (not d!2295171))

(assert (not d!2295173))

(assert tp_is_empty!49159)

(assert (not b!7440514))

(assert (not b!7440512))

(assert (not b!7440488))

(assert (not d!2295175))

(assert (not b!7440508))

(assert (not b!7440509))

(assert (not d!2295147))

(assert (not b!7440444))

(assert (not d!2295163))

(assert (not b!7440455))

(assert (not b!7440459))

(assert (not b!7440491))

(assert (not b!7440482))

(assert (not b!7440506))

(assert (not setNonEmpty!56565))

(assert (not d!2295151))

(assert (not b_lambda!287441))

(assert (not b!7440418))

(assert (not b!7440511))

(assert (not b!7440472))

(assert (not bm!683862))

(assert (not b!7440480))

(assert (not b!7440464))

(assert (not bm!683865))

(assert (not d!2295149))

(assert (not setNonEmpty!56564))

(assert (not b!7440507))

(assert (not d!2295153))

(assert (not b!7440474))

(assert (not bs!1926101))

(assert (not b!7440513))

(assert (not b!7440494))

(assert (not d!2295177))

(assert (not b!7440473))

(assert (not b!7440454))

(assert (not bs!1926100))

(assert (not b!7440492))

(assert (not b!7440493))

(assert (not b_lambda!287439))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1926117 () Bool)

(declare-fun d!2295219 () Bool)

(assert (= bs!1926117 (and d!2295219 d!2295115)))

(declare-fun lambda!460416 () Int)

(assert (=> bs!1926117 (= lambda!460416 lambda!460390)))

(declare-fun bs!1926118 () Bool)

(assert (= bs!1926118 (and d!2295219 d!2295123)))

(assert (=> bs!1926118 (= lambda!460416 lambda!460391)))

(declare-fun bs!1926119 () Bool)

(assert (= bs!1926119 (and d!2295219 d!2295153)))

(assert (=> bs!1926119 (= lambda!460416 lambda!460405)))

(assert (=> d!2295219 (= (inv!91987 setElem!56565) (forall!18228 (exprs!8890 setElem!56565) lambda!460416))))

(declare-fun bs!1926120 () Bool)

(assert (= bs!1926120 d!2295219))

(declare-fun m!8052772 () Bool)

(assert (=> bs!1926120 m!8052772))

(assert (=> setNonEmpty!56565 d!2295219))

(declare-fun bm!683886 () Bool)

(declare-fun call!683891 () (Set Context!16780))

(assert (=> bm!683886 (= call!683891 (derivationStepZipperDown!3225 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))) (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))) (h!78446 s!7945)))))

(declare-fun b!7440616 () Bool)

(declare-fun e!4443093 () (Set Context!16780))

(declare-fun e!4443091 () (Set Context!16780))

(assert (=> b!7440616 (= e!4443093 e!4443091)))

(declare-fun c!1376995 () Bool)

(assert (=> b!7440616 (= c!1376995 (is-Cons!71996 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))

(declare-fun b!7440617 () Bool)

(assert (=> b!7440617 (= e!4443091 (as set.empty (Set Context!16780)))))

(declare-fun b!7440618 () Bool)

(assert (=> b!7440618 (= e!4443091 call!683891)))

(declare-fun b!7440619 () Bool)

(declare-fun e!4443092 () Bool)

(assert (=> b!7440619 (= e!4443092 (nullable!8477 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))))

(declare-fun d!2295221 () Bool)

(declare-fun c!1376994 () Bool)

(assert (=> d!2295221 (= c!1376994 e!4443092)))

(declare-fun res!2986352 () Bool)

(assert (=> d!2295221 (=> (not res!2986352) (not e!4443092))))

(assert (=> d!2295221 (= res!2986352 (is-Cons!71996 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))

(assert (=> d!2295221 (= (derivationStepZipperUp!2840 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (h!78446 s!7945)) e!4443093)))

(declare-fun b!7440615 () Bool)

(assert (=> b!7440615 (= e!4443093 (set.union call!683891 (derivationStepZipperUp!2840 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))) (h!78446 s!7945))))))

(assert (= (and d!2295221 res!2986352) b!7440619))

(assert (= (and d!2295221 c!1376994) b!7440615))

(assert (= (and d!2295221 (not c!1376994)) b!7440616))

(assert (= (and b!7440616 c!1376995) b!7440618))

(assert (= (and b!7440616 (not c!1376995)) b!7440617))

(assert (= (or b!7440615 b!7440618) bm!683886))

(declare-fun m!8052774 () Bool)

(assert (=> bm!683886 m!8052774))

(declare-fun m!8052776 () Bool)

(assert (=> b!7440619 m!8052776))

(declare-fun m!8052778 () Bool)

(assert (=> b!7440615 m!8052778))

(assert (=> b!7440455 d!2295221))

(declare-fun c!1377000 () Bool)

(declare-fun c!1376999 () Bool)

(declare-fun call!683895 () List!72120)

(declare-fun bm!683887 () Bool)

(declare-fun c!1376996 () Bool)

(declare-fun call!683894 () (Set Context!16780))

(assert (=> bm!683887 (= call!683894 (derivationStepZipperDown!3225 (ite c!1376999 (regOne!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377000 (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376996 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (reg!19779 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))))))) (ite (or c!1376999 c!1377000) (ite (or c!1376967 c!1376968) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683868)) (Context!16781 call!683895)) (h!78446 s!7945)))))

(declare-fun b!7440620 () Bool)

(declare-fun e!4443098 () (Set Context!16780))

(declare-fun e!4443099 () (Set Context!16780))

(assert (=> b!7440620 (= e!4443098 e!4443099)))

(assert (=> b!7440620 (= c!1376996 (is-Concat!28295 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))

(declare-fun b!7440621 () Bool)

(declare-fun call!683896 () (Set Context!16780))

(declare-fun call!683897 () (Set Context!16780))

(assert (=> b!7440621 (= e!4443098 (set.union call!683896 call!683897))))

(declare-fun c!1376997 () Bool)

(declare-fun d!2295223 () Bool)

(assert (=> d!2295223 (= c!1376997 (and (is-ElementMatch!19450 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (= (c!1376936 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (h!78446 s!7945))))))

(declare-fun e!4443095 () (Set Context!16780))

(assert (=> d!2295223 (= (derivationStepZipperDown!3225 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))) (ite (or c!1376967 c!1376968) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683868)) (h!78446 s!7945)) e!4443095)))

(declare-fun bm!683888 () Bool)

(assert (=> bm!683888 (= call!683897 call!683894)))

(declare-fun b!7440622 () Bool)

(declare-fun e!4443097 () Bool)

(assert (=> b!7440622 (= c!1377000 e!4443097)))

(declare-fun res!2986353 () Bool)

(assert (=> b!7440622 (=> (not res!2986353) (not e!4443097))))

(assert (=> b!7440622 (= res!2986353 (is-Concat!28295 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))

(declare-fun e!4443094 () (Set Context!16780))

(assert (=> b!7440622 (= e!4443094 e!4443098)))

(declare-fun b!7440623 () Bool)

(assert (=> b!7440623 (= e!4443097 (nullable!8477 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))))))))

(declare-fun call!683893 () List!72120)

(declare-fun bm!683889 () Bool)

(assert (=> bm!683889 (= call!683893 ($colon$colon!3354 (exprs!8890 (ite (or c!1376967 c!1376968) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683868))) (ite (or c!1377000 c!1376996) (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))))))))

(declare-fun bm!683890 () Bool)

(assert (=> bm!683890 (= call!683895 call!683893)))

(declare-fun bm!683891 () Bool)

(declare-fun call!683892 () (Set Context!16780))

(assert (=> bm!683891 (= call!683892 call!683897)))

(declare-fun b!7440624 () Bool)

(assert (=> b!7440624 (= e!4443095 e!4443094)))

(assert (=> b!7440624 (= c!1376999 (is-Union!19450 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))

(declare-fun b!7440625 () Bool)

(assert (=> b!7440625 (= e!4443095 (set.insert (ite (or c!1376967 c!1376968) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683868)) (as set.empty (Set Context!16780))))))

(declare-fun b!7440626 () Bool)

(assert (=> b!7440626 (= e!4443099 call!683892)))

(declare-fun b!7440627 () Bool)

(declare-fun e!4443096 () (Set Context!16780))

(assert (=> b!7440627 (= e!4443096 (as set.empty (Set Context!16780)))))

(declare-fun bm!683892 () Bool)

(assert (=> bm!683892 (= call!683896 (derivationStepZipperDown!3225 (ite c!1376999 (regTwo!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))))) (ite c!1376999 (ite (or c!1376967 c!1376968) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683868)) (Context!16781 call!683893)) (h!78446 s!7945)))))

(declare-fun b!7440628 () Bool)

(assert (=> b!7440628 (= e!4443094 (set.union call!683894 call!683896))))

(declare-fun c!1376998 () Bool)

(declare-fun b!7440629 () Bool)

(assert (=> b!7440629 (= c!1376998 (is-Star!19450 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))

(assert (=> b!7440629 (= e!4443099 e!4443096)))

(declare-fun b!7440630 () Bool)

(assert (=> b!7440630 (= e!4443096 call!683892)))

(assert (= (and d!2295223 c!1376997) b!7440625))

(assert (= (and d!2295223 (not c!1376997)) b!7440624))

(assert (= (and b!7440624 c!1376999) b!7440628))

(assert (= (and b!7440624 (not c!1376999)) b!7440622))

(assert (= (and b!7440622 res!2986353) b!7440623))

(assert (= (and b!7440622 c!1377000) b!7440621))

(assert (= (and b!7440622 (not c!1377000)) b!7440620))

(assert (= (and b!7440620 c!1376996) b!7440626))

(assert (= (and b!7440620 (not c!1376996)) b!7440629))

(assert (= (and b!7440629 c!1376998) b!7440630))

(assert (= (and b!7440629 (not c!1376998)) b!7440627))

(assert (= (or b!7440626 b!7440630) bm!683890))

(assert (= (or b!7440626 b!7440630) bm!683891))

(assert (= (or b!7440621 bm!683891) bm!683888))

(assert (= (or b!7440621 bm!683890) bm!683889))

(assert (= (or b!7440628 b!7440621) bm!683892))

(assert (= (or b!7440628 bm!683888) bm!683887))

(declare-fun m!8052780 () Bool)

(assert (=> bm!683887 m!8052780))

(declare-fun m!8052782 () Bool)

(assert (=> bm!683892 m!8052782))

(declare-fun m!8052784 () Bool)

(assert (=> b!7440625 m!8052784))

(declare-fun m!8052786 () Bool)

(assert (=> bm!683889 m!8052786))

(declare-fun m!8052788 () Bool)

(assert (=> b!7440623 m!8052788))

(assert (=> bm!683860 d!2295223))

(declare-fun d!2295225 () Bool)

(declare-fun res!2986354 () Bool)

(declare-fun e!4443100 () Bool)

(assert (=> d!2295225 (=> res!2986354 e!4443100)))

(assert (=> d!2295225 (= res!2986354 (is-Nil!71997 (t!386684 lt!2619370)))))

(assert (=> d!2295225 (= (noDuplicate!3123 (t!386684 lt!2619370)) e!4443100)))

(declare-fun b!7440631 () Bool)

(declare-fun e!4443101 () Bool)

(assert (=> b!7440631 (= e!4443100 e!4443101)))

(declare-fun res!2986355 () Bool)

(assert (=> b!7440631 (=> (not res!2986355) (not e!4443101))))

(assert (=> b!7440631 (= res!2986355 (not (contains!20861 (t!386684 (t!386684 lt!2619370)) (h!78445 (t!386684 lt!2619370)))))))

(declare-fun b!7440632 () Bool)

(assert (=> b!7440632 (= e!4443101 (noDuplicate!3123 (t!386684 (t!386684 lt!2619370))))))

(assert (= (and d!2295225 (not res!2986354)) b!7440631))

(assert (= (and b!7440631 res!2986355) b!7440632))

(declare-fun m!8052790 () Bool)

(assert (=> b!7440631 m!8052790))

(declare-fun m!8052792 () Bool)

(assert (=> b!7440632 m!8052792))

(assert (=> b!7440465 d!2295225))

(declare-fun d!2295227 () Bool)

(assert (=> d!2295227 true))

(declare-fun setRes!56570 () Bool)

(assert (=> d!2295227 setRes!56570))

(declare-fun condSetEmpty!56570 () Bool)

(declare-fun res!2986356 () (Set Context!16780))

(assert (=> d!2295227 (= condSetEmpty!56570 (= res!2986356 (as set.empty (Set Context!16780))))))

(assert (=> d!2295227 (= (choose!57522 z!3488 lambda!460397) res!2986356)))

(declare-fun setIsEmpty!56570 () Bool)

(assert (=> setIsEmpty!56570 setRes!56570))

(declare-fun e!4443102 () Bool)

(declare-fun tp!2150670 () Bool)

(declare-fun setElem!56570 () Context!16780)

(declare-fun setNonEmpty!56570 () Bool)

(assert (=> setNonEmpty!56570 (= setRes!56570 (and tp!2150670 (inv!91987 setElem!56570) e!4443102))))

(declare-fun setRest!56570 () (Set Context!16780))

(assert (=> setNonEmpty!56570 (= res!2986356 (set.union (set.insert setElem!56570 (as set.empty (Set Context!16780))) setRest!56570))))

(declare-fun b!7440633 () Bool)

(declare-fun tp!2150669 () Bool)

(assert (=> b!7440633 (= e!4443102 tp!2150669)))

(assert (= (and d!2295227 condSetEmpty!56570) setIsEmpty!56570))

(assert (= (and d!2295227 (not condSetEmpty!56570)) setNonEmpty!56570))

(assert (= setNonEmpty!56570 b!7440633))

(declare-fun m!8052794 () Bool)

(assert (=> setNonEmpty!56570 m!8052794))

(assert (=> d!2295151 d!2295227))

(declare-fun d!2295229 () Bool)

(declare-fun c!1377001 () Bool)

(assert (=> d!2295229 (= c!1377001 (is-Nil!71997 lt!2619372))))

(declare-fun e!4443103 () (Set Context!16780))

(assert (=> d!2295229 (= (content!15235 lt!2619372) e!4443103)))

(declare-fun b!7440634 () Bool)

(assert (=> b!7440634 (= e!4443103 (as set.empty (Set Context!16780)))))

(declare-fun b!7440635 () Bool)

(assert (=> b!7440635 (= e!4443103 (set.union (set.insert (h!78445 lt!2619372) (as set.empty (Set Context!16780))) (content!15235 (t!386684 lt!2619372))))))

(assert (= (and d!2295229 c!1377001) b!7440634))

(assert (= (and d!2295229 (not c!1377001)) b!7440635))

(declare-fun m!8052796 () Bool)

(assert (=> b!7440635 m!8052796))

(declare-fun m!8052798 () Bool)

(assert (=> b!7440635 m!8052798))

(assert (=> b!7440491 d!2295229))

(declare-fun d!2295231 () Bool)

(declare-fun lt!2619377 () Bool)

(assert (=> d!2295231 (= lt!2619377 (set.member (h!78445 lt!2619370) (content!15235 (t!386684 lt!2619370))))))

(declare-fun e!4443108 () Bool)

(assert (=> d!2295231 (= lt!2619377 e!4443108)))

(declare-fun res!2986362 () Bool)

(assert (=> d!2295231 (=> (not res!2986362) (not e!4443108))))

(assert (=> d!2295231 (= res!2986362 (is-Cons!71997 (t!386684 lt!2619370)))))

(assert (=> d!2295231 (= (contains!20861 (t!386684 lt!2619370) (h!78445 lt!2619370)) lt!2619377)))

(declare-fun b!7440640 () Bool)

(declare-fun e!4443109 () Bool)

(assert (=> b!7440640 (= e!4443108 e!4443109)))

(declare-fun res!2986361 () Bool)

(assert (=> b!7440640 (=> res!2986361 e!4443109)))

(assert (=> b!7440640 (= res!2986361 (= (h!78445 (t!386684 lt!2619370)) (h!78445 lt!2619370)))))

(declare-fun b!7440641 () Bool)

(assert (=> b!7440641 (= e!4443109 (contains!20861 (t!386684 (t!386684 lt!2619370)) (h!78445 lt!2619370)))))

(assert (= (and d!2295231 res!2986362) b!7440640))

(assert (= (and b!7440640 (not res!2986361)) b!7440641))

(assert (=> d!2295231 m!8052686))

(declare-fun m!8052800 () Bool)

(assert (=> d!2295231 m!8052800))

(declare-fun m!8052802 () Bool)

(assert (=> b!7440641 m!8052802))

(assert (=> b!7440464 d!2295231))

(declare-fun b!7440656 () Bool)

(declare-fun e!4443125 () Bool)

(declare-fun e!4443126 () Bool)

(assert (=> b!7440656 (= e!4443125 e!4443126)))

(declare-fun res!2986377 () Bool)

(declare-fun call!683903 () Bool)

(assert (=> b!7440656 (= res!2986377 call!683903)))

(assert (=> b!7440656 (=> (not res!2986377) (not e!4443126))))

(declare-fun bm!683897 () Bool)

(declare-fun call!683902 () Bool)

(declare-fun c!1377004 () Bool)

(assert (=> bm!683897 (= call!683902 (nullable!8477 (ite c!1377004 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))))))))

(declare-fun b!7440657 () Bool)

(assert (=> b!7440657 (= e!4443126 call!683902)))

(declare-fun b!7440658 () Bool)

(declare-fun e!4443123 () Bool)

(assert (=> b!7440658 (= e!4443123 e!4443125)))

(assert (=> b!7440658 (= c!1377004 (is-Union!19450 (h!78444 (exprs!8890 lt!2619343))))))

(declare-fun b!7440659 () Bool)

(declare-fun e!4443127 () Bool)

(assert (=> b!7440659 (= e!4443127 call!683902)))

(declare-fun d!2295233 () Bool)

(declare-fun res!2986374 () Bool)

(declare-fun e!4443124 () Bool)

(assert (=> d!2295233 (=> res!2986374 e!4443124)))

(assert (=> d!2295233 (= res!2986374 (is-EmptyExpr!19450 (h!78444 (exprs!8890 lt!2619343))))))

(assert (=> d!2295233 (= (nullableFct!3420 (h!78444 (exprs!8890 lt!2619343))) e!4443124)))

(declare-fun bm!683898 () Bool)

(assert (=> bm!683898 (= call!683903 (nullable!8477 (ite c!1377004 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))

(declare-fun b!7440660 () Bool)

(assert (=> b!7440660 (= e!4443125 e!4443127)))

(declare-fun res!2986375 () Bool)

(assert (=> b!7440660 (= res!2986375 call!683903)))

(assert (=> b!7440660 (=> res!2986375 e!4443127)))

(declare-fun b!7440661 () Bool)

(declare-fun e!4443122 () Bool)

(assert (=> b!7440661 (= e!4443122 e!4443123)))

(declare-fun res!2986373 () Bool)

(assert (=> b!7440661 (=> res!2986373 e!4443123)))

(assert (=> b!7440661 (= res!2986373 (is-Star!19450 (h!78444 (exprs!8890 lt!2619343))))))

(declare-fun b!7440662 () Bool)

(assert (=> b!7440662 (= e!4443124 e!4443122)))

(declare-fun res!2986376 () Bool)

(assert (=> b!7440662 (=> (not res!2986376) (not e!4443122))))

(assert (=> b!7440662 (= res!2986376 (and (not (is-EmptyLang!19450 (h!78444 (exprs!8890 lt!2619343)))) (not (is-ElementMatch!19450 (h!78444 (exprs!8890 lt!2619343))))))))

(assert (= (and d!2295233 (not res!2986374)) b!7440662))

(assert (= (and b!7440662 res!2986376) b!7440661))

(assert (= (and b!7440661 (not res!2986373)) b!7440658))

(assert (= (and b!7440658 c!1377004) b!7440660))

(assert (= (and b!7440658 (not c!1377004)) b!7440656))

(assert (= (and b!7440660 (not res!2986375)) b!7440659))

(assert (= (and b!7440656 res!2986377) b!7440657))

(assert (= (or b!7440660 b!7440656) bm!683898))

(assert (= (or b!7440659 b!7440657) bm!683897))

(declare-fun m!8052804 () Bool)

(assert (=> bm!683897 m!8052804))

(declare-fun m!8052806 () Bool)

(assert (=> bm!683898 m!8052806))

(assert (=> d!2295177 d!2295233))

(declare-fun d!2295235 () Bool)

(declare-fun c!1377005 () Bool)

(assert (=> d!2295235 (= c!1377005 (is-Nil!71997 res!2986307))))

(declare-fun e!4443128 () (Set Context!16780))

(assert (=> d!2295235 (= (content!15235 res!2986307) e!4443128)))

(declare-fun b!7440663 () Bool)

(assert (=> b!7440663 (= e!4443128 (as set.empty (Set Context!16780)))))

(declare-fun b!7440664 () Bool)

(assert (=> b!7440664 (= e!4443128 (set.union (set.insert (h!78445 res!2986307) (as set.empty (Set Context!16780))) (content!15235 (t!386684 res!2986307))))))

(assert (= (and d!2295235 c!1377005) b!7440663))

(assert (= (and d!2295235 (not c!1377005)) b!7440664))

(declare-fun m!8052808 () Bool)

(assert (=> b!7440664 m!8052808))

(declare-fun m!8052810 () Bool)

(assert (=> b!7440664 m!8052810))

(assert (=> b!7440474 d!2295235))

(declare-fun d!2295237 () Bool)

(declare-fun res!2986378 () Bool)

(declare-fun e!4443129 () Bool)

(assert (=> d!2295237 (=> res!2986378 e!4443129)))

(assert (=> d!2295237 (= res!2986378 (is-Nil!71997 lt!2619372))))

(assert (=> d!2295237 (= (noDuplicate!3123 lt!2619372) e!4443129)))

(declare-fun b!7440665 () Bool)

(declare-fun e!4443130 () Bool)

(assert (=> b!7440665 (= e!4443129 e!4443130)))

(declare-fun res!2986379 () Bool)

(assert (=> b!7440665 (=> (not res!2986379) (not e!4443130))))

(assert (=> b!7440665 (= res!2986379 (not (contains!20861 (t!386684 lt!2619372) (h!78445 lt!2619372))))))

(declare-fun b!7440666 () Bool)

(assert (=> b!7440666 (= e!4443130 (noDuplicate!3123 (t!386684 lt!2619372)))))

(assert (= (and d!2295237 (not res!2986378)) b!7440665))

(assert (= (and b!7440665 res!2986379) b!7440666))

(declare-fun m!8052812 () Bool)

(assert (=> b!7440665 m!8052812))

(declare-fun m!8052814 () Bool)

(assert (=> b!7440666 m!8052814))

(assert (=> d!2295173 d!2295237))

(declare-fun d!2295239 () Bool)

(declare-fun e!4443133 () Bool)

(assert (=> d!2295239 e!4443133))

(declare-fun res!2986381 () Bool)

(assert (=> d!2295239 (=> (not res!2986381) (not e!4443133))))

(declare-fun res!2986380 () List!72121)

(assert (=> d!2295239 (= res!2986381 (noDuplicate!3123 res!2986380))))

(declare-fun e!4443132 () Bool)

(assert (=> d!2295239 e!4443132))

(assert (=> d!2295239 (= (choose!57524 z!3488) res!2986380)))

(declare-fun b!7440668 () Bool)

(declare-fun e!4443131 () Bool)

(declare-fun tp!2150671 () Bool)

(assert (=> b!7440668 (= e!4443131 tp!2150671)))

(declare-fun tp!2150672 () Bool)

(declare-fun b!7440667 () Bool)

(assert (=> b!7440667 (= e!4443132 (and (inv!91987 (h!78445 res!2986380)) e!4443131 tp!2150672))))

(declare-fun b!7440669 () Bool)

(assert (=> b!7440669 (= e!4443133 (= (content!15235 res!2986380) z!3488))))

(assert (= b!7440667 b!7440668))

(assert (= (and d!2295239 (is-Cons!71997 res!2986380)) b!7440667))

(assert (= (and d!2295239 res!2986381) b!7440669))

(declare-fun m!8052816 () Bool)

(assert (=> d!2295239 m!8052816))

(declare-fun m!8052818 () Bool)

(assert (=> b!7440667 m!8052818))

(declare-fun m!8052820 () Bool)

(assert (=> b!7440669 m!8052820))

(assert (=> d!2295173 d!2295239))

(declare-fun bs!1926121 () Bool)

(declare-fun d!2295241 () Bool)

(assert (= bs!1926121 (and d!2295241 d!2295115)))

(declare-fun lambda!460417 () Int)

(assert (=> bs!1926121 (= lambda!460417 lambda!460390)))

(declare-fun bs!1926122 () Bool)

(assert (= bs!1926122 (and d!2295241 d!2295123)))

(assert (=> bs!1926122 (= lambda!460417 lambda!460391)))

(declare-fun bs!1926123 () Bool)

(assert (= bs!1926123 (and d!2295241 d!2295153)))

(assert (=> bs!1926123 (= lambda!460417 lambda!460405)))

(declare-fun bs!1926124 () Bool)

(assert (= bs!1926124 (and d!2295241 d!2295219)))

(assert (=> bs!1926124 (= lambda!460417 lambda!460416)))

(assert (=> d!2295241 (= (inv!91987 (h!78445 res!2986307)) (forall!18228 (exprs!8890 (h!78445 res!2986307)) lambda!460417))))

(declare-fun bs!1926125 () Bool)

(assert (= bs!1926125 d!2295241))

(declare-fun m!8052822 () Bool)

(assert (=> bs!1926125 m!8052822))

(assert (=> b!7440472 d!2295241))

(declare-fun d!2295243 () Bool)

(declare-fun res!2986386 () Bool)

(declare-fun e!4443138 () Bool)

(assert (=> d!2295243 (=> res!2986386 e!4443138)))

(assert (=> d!2295243 (= res!2986386 (is-Nil!71997 (toList!11787 z!3488)))))

(assert (=> d!2295243 (= (forall!18229 (toList!11787 z!3488) lambda!460408) e!4443138)))

(declare-fun b!7440674 () Bool)

(declare-fun e!4443139 () Bool)

(assert (=> b!7440674 (= e!4443138 e!4443139)))

(declare-fun res!2986387 () Bool)

(assert (=> b!7440674 (=> (not res!2986387) (not e!4443139))))

(declare-fun dynLambda!29727 (Int Context!16780) Bool)

(assert (=> b!7440674 (= res!2986387 (dynLambda!29727 lambda!460408 (h!78445 (toList!11787 z!3488))))))

(declare-fun b!7440675 () Bool)

(assert (=> b!7440675 (= e!4443139 (forall!18229 (t!386684 (toList!11787 z!3488)) lambda!460408))))

(assert (= (and d!2295243 (not res!2986386)) b!7440674))

(assert (= (and b!7440674 res!2986387) b!7440675))

(declare-fun b_lambda!287451 () Bool)

(assert (=> (not b_lambda!287451) (not b!7440674)))

(declare-fun m!8052824 () Bool)

(assert (=> b!7440674 m!8052824))

(declare-fun m!8052826 () Bool)

(assert (=> b!7440675 m!8052826))

(assert (=> d!2295171 d!2295243))

(declare-fun d!2295245 () Bool)

(declare-fun res!2986388 () Bool)

(declare-fun e!4443140 () Bool)

(assert (=> d!2295245 (=> res!2986388 e!4443140)))

(assert (=> d!2295245 (= res!2986388 (is-Nil!71996 (t!386683 (exprs!8890 setElem!56552))))))

(assert (=> d!2295245 (= (forall!18228 (t!386683 (exprs!8890 setElem!56552)) lambda!460391) e!4443140)))

(declare-fun b!7440676 () Bool)

(declare-fun e!4443141 () Bool)

(assert (=> b!7440676 (= e!4443140 e!4443141)))

(declare-fun res!2986389 () Bool)

(assert (=> b!7440676 (=> (not res!2986389) (not e!4443141))))

(assert (=> b!7440676 (= res!2986389 (dynLambda!29725 lambda!460391 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))))

(declare-fun b!7440677 () Bool)

(assert (=> b!7440677 (= e!4443141 (forall!18228 (t!386683 (t!386683 (exprs!8890 setElem!56552))) lambda!460391))))

(assert (= (and d!2295245 (not res!2986388)) b!7440676))

(assert (= (and b!7440676 res!2986389) b!7440677))

(declare-fun b_lambda!287453 () Bool)

(assert (=> (not b_lambda!287453) (not b!7440676)))

(declare-fun m!8052828 () Bool)

(assert (=> b!7440676 m!8052828))

(declare-fun m!8052830 () Bool)

(assert (=> b!7440677 m!8052830))

(assert (=> b!7440480 d!2295245))

(declare-fun c!1377006 () Bool)

(declare-fun call!683906 () (Set Context!16780))

(declare-fun call!683907 () List!72120)

(declare-fun bm!683899 () Bool)

(declare-fun c!1377010 () Bool)

(declare-fun c!1377009 () Bool)

(assert (=> bm!683899 (= call!683906 (derivationStepZipperDown!3225 (ite c!1377009 (regOne!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377010 (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377006 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (reg!19779 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))) (ite (or c!1377009 c!1377010) (ite c!1376967 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683866)) (Context!16781 call!683907)) (h!78446 s!7945)))))

(declare-fun b!7440678 () Bool)

(declare-fun e!4443146 () (Set Context!16780))

(declare-fun e!4443147 () (Set Context!16780))

(assert (=> b!7440678 (= e!4443146 e!4443147)))

(assert (=> b!7440678 (= c!1377006 (is-Concat!28295 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))

(declare-fun b!7440679 () Bool)

(declare-fun call!683908 () (Set Context!16780))

(declare-fun call!683909 () (Set Context!16780))

(assert (=> b!7440679 (= e!4443146 (set.union call!683908 call!683909))))

(declare-fun c!1377007 () Bool)

(declare-fun d!2295247 () Bool)

(assert (=> d!2295247 (= c!1377007 (and (is-ElementMatch!19450 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (= (c!1376936 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (h!78446 s!7945))))))

(declare-fun e!4443143 () (Set Context!16780))

(assert (=> d!2295247 (= (derivationStepZipperDown!3225 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))) (ite c!1376967 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683866)) (h!78446 s!7945)) e!4443143)))

(declare-fun bm!683900 () Bool)

(assert (=> bm!683900 (= call!683909 call!683906)))

(declare-fun b!7440680 () Bool)

(declare-fun e!4443145 () Bool)

(assert (=> b!7440680 (= c!1377010 e!4443145)))

(declare-fun res!2986390 () Bool)

(assert (=> b!7440680 (=> (not res!2986390) (not e!4443145))))

(assert (=> b!7440680 (= res!2986390 (is-Concat!28295 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))

(declare-fun e!4443142 () (Set Context!16780))

(assert (=> b!7440680 (= e!4443142 e!4443146)))

(declare-fun b!7440681 () Bool)

(assert (=> b!7440681 (= e!4443145 (nullable!8477 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))))

(declare-fun bm!683901 () Bool)

(declare-fun call!683905 () List!72120)

(assert (=> bm!683901 (= call!683905 ($colon$colon!3354 (exprs!8890 (ite c!1376967 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683866))) (ite (or c!1377010 c!1377006) (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))))

(declare-fun bm!683902 () Bool)

(assert (=> bm!683902 (= call!683907 call!683905)))

(declare-fun bm!683903 () Bool)

(declare-fun call!683904 () (Set Context!16780))

(assert (=> bm!683903 (= call!683904 call!683909)))

(declare-fun b!7440682 () Bool)

(assert (=> b!7440682 (= e!4443143 e!4443142)))

(assert (=> b!7440682 (= c!1377009 (is-Union!19450 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))

(declare-fun b!7440683 () Bool)

(assert (=> b!7440683 (= e!4443143 (set.insert (ite c!1376967 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683866)) (as set.empty (Set Context!16780))))))

(declare-fun b!7440684 () Bool)

(assert (=> b!7440684 (= e!4443147 call!683904)))

(declare-fun b!7440685 () Bool)

(declare-fun e!4443144 () (Set Context!16780))

(assert (=> b!7440685 (= e!4443144 (as set.empty (Set Context!16780)))))

(declare-fun bm!683904 () Bool)

(assert (=> bm!683904 (= call!683908 (derivationStepZipperDown!3225 (ite c!1377009 (regTwo!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))) (ite c!1377009 (ite c!1376967 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683866)) (Context!16781 call!683905)) (h!78446 s!7945)))))

(declare-fun b!7440686 () Bool)

(assert (=> b!7440686 (= e!4443142 (set.union call!683906 call!683908))))

(declare-fun b!7440687 () Bool)

(declare-fun c!1377008 () Bool)

(assert (=> b!7440687 (= c!1377008 (is-Star!19450 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))

(assert (=> b!7440687 (= e!4443147 e!4443144)))

(declare-fun b!7440688 () Bool)

(assert (=> b!7440688 (= e!4443144 call!683904)))

(assert (= (and d!2295247 c!1377007) b!7440683))

(assert (= (and d!2295247 (not c!1377007)) b!7440682))

(assert (= (and b!7440682 c!1377009) b!7440686))

(assert (= (and b!7440682 (not c!1377009)) b!7440680))

(assert (= (and b!7440680 res!2986390) b!7440681))

(assert (= (and b!7440680 c!1377010) b!7440679))

(assert (= (and b!7440680 (not c!1377010)) b!7440678))

(assert (= (and b!7440678 c!1377006) b!7440684))

(assert (= (and b!7440678 (not c!1377006)) b!7440687))

(assert (= (and b!7440687 c!1377008) b!7440688))

(assert (= (and b!7440687 (not c!1377008)) b!7440685))

(assert (= (or b!7440684 b!7440688) bm!683902))

(assert (= (or b!7440684 b!7440688) bm!683903))

(assert (= (or b!7440679 bm!683903) bm!683900))

(assert (= (or b!7440679 bm!683902) bm!683901))

(assert (= (or b!7440686 b!7440679) bm!683904))

(assert (= (or b!7440686 bm!683900) bm!683899))

(declare-fun m!8052832 () Bool)

(assert (=> bm!683899 m!8052832))

(declare-fun m!8052834 () Bool)

(assert (=> bm!683904 m!8052834))

(declare-fun m!8052836 () Bool)

(assert (=> b!7440683 m!8052836))

(declare-fun m!8052838 () Bool)

(assert (=> bm!683901 m!8052838))

(declare-fun m!8052840 () Bool)

(assert (=> b!7440681 m!8052840))

(assert (=> bm!683865 d!2295247))

(assert (=> d!2295149 d!2295135))

(declare-fun d!2295249 () Bool)

(declare-fun lt!2619378 () Bool)

(assert (=> d!2295249 (= lt!2619378 (exists!4807 (toList!11787 z!3488) lambda!460404))))

(assert (=> d!2295249 (= lt!2619378 (choose!57517 z!3488 lambda!460404))))

(assert (=> d!2295249 (= (exists!4805 z!3488 lambda!460404) lt!2619378)))

(declare-fun bs!1926126 () Bool)

(assert (= bs!1926126 d!2295249))

(assert (=> bs!1926126 m!8052572))

(assert (=> bs!1926126 m!8052572))

(declare-fun m!8052842 () Bool)

(assert (=> bs!1926126 m!8052842))

(declare-fun m!8052844 () Bool)

(assert (=> bs!1926126 m!8052844))

(assert (=> d!2295149 d!2295249))

(declare-fun bs!1926127 () Bool)

(declare-fun d!2295251 () Bool)

(assert (= bs!1926127 (and d!2295251 d!2295123)))

(declare-fun lambda!460418 () Int)

(assert (=> bs!1926127 (= lambda!460418 lambda!460391)))

(declare-fun bs!1926128 () Bool)

(assert (= bs!1926128 (and d!2295251 d!2295241)))

(assert (=> bs!1926128 (= lambda!460418 lambda!460417)))

(declare-fun bs!1926129 () Bool)

(assert (= bs!1926129 (and d!2295251 d!2295153)))

(assert (=> bs!1926129 (= lambda!460418 lambda!460405)))

(declare-fun bs!1926130 () Bool)

(assert (= bs!1926130 (and d!2295251 d!2295115)))

(assert (=> bs!1926130 (= lambda!460418 lambda!460390)))

(declare-fun bs!1926131 () Bool)

(assert (= bs!1926131 (and d!2295251 d!2295219)))

(assert (=> bs!1926131 (= lambda!460418 lambda!460416)))

(assert (=> d!2295251 (= (inv!91987 _$3!601) (forall!18228 (exprs!8890 _$3!601) lambda!460418))))

(declare-fun bs!1926132 () Bool)

(assert (= bs!1926132 d!2295251))

(declare-fun m!8052846 () Bool)

(assert (=> bs!1926132 m!8052846))

(assert (=> d!2295149 d!2295251))

(declare-fun b!7440708 () Bool)

(declare-fun e!4443165 () Bool)

(declare-fun e!4443166 () Bool)

(assert (=> b!7440708 (= e!4443165 e!4443166)))

(declare-fun c!1377016 () Bool)

(assert (=> b!7440708 (= c!1377016 (is-Star!19450 (h!78444 (exprs!8890 setElem!56552))))))

(declare-fun b!7440709 () Bool)

(declare-fun e!4443164 () Bool)

(declare-fun call!683918 () Bool)

(assert (=> b!7440709 (= e!4443164 call!683918)))

(declare-fun bm!683911 () Bool)

(declare-fun c!1377015 () Bool)

(assert (=> bm!683911 (= call!683918 (validRegex!9979 (ite c!1377015 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552))) (regOne!39412 (h!78444 (exprs!8890 setElem!56552))))))))

(declare-fun bm!683912 () Bool)

(declare-fun call!683916 () Bool)

(assert (=> bm!683912 (= call!683916 (validRegex!9979 (ite c!1377016 (reg!19779 (h!78444 (exprs!8890 setElem!56552))) (ite c!1377015 (regOne!39413 (h!78444 (exprs!8890 setElem!56552))) (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))))))

(declare-fun b!7440710 () Bool)

(declare-fun res!2986404 () Bool)

(assert (=> b!7440710 (=> (not res!2986404) (not e!4443164))))

(declare-fun call!683917 () Bool)

(assert (=> b!7440710 (= res!2986404 call!683917)))

(declare-fun e!4443163 () Bool)

(assert (=> b!7440710 (= e!4443163 e!4443164)))

(declare-fun b!7440711 () Bool)

(declare-fun e!4443168 () Bool)

(assert (=> b!7440711 (= e!4443168 call!683916)))

(declare-fun b!7440712 () Bool)

(declare-fun res!2986401 () Bool)

(declare-fun e!4443162 () Bool)

(assert (=> b!7440712 (=> res!2986401 e!4443162)))

(assert (=> b!7440712 (= res!2986401 (not (is-Concat!28295 (h!78444 (exprs!8890 setElem!56552)))))))

(assert (=> b!7440712 (= e!4443163 e!4443162)))

(declare-fun d!2295253 () Bool)

(declare-fun res!2986403 () Bool)

(assert (=> d!2295253 (=> res!2986403 e!4443165)))

(assert (=> d!2295253 (= res!2986403 (is-ElementMatch!19450 (h!78444 (exprs!8890 setElem!56552))))))

(assert (=> d!2295253 (= (validRegex!9979 (h!78444 (exprs!8890 setElem!56552))) e!4443165)))

(declare-fun b!7440707 () Bool)

(assert (=> b!7440707 (= e!4443166 e!4443168)))

(declare-fun res!2986405 () Bool)

(assert (=> b!7440707 (= res!2986405 (not (nullable!8477 (reg!19779 (h!78444 (exprs!8890 setElem!56552))))))))

(assert (=> b!7440707 (=> (not res!2986405) (not e!4443168))))

(declare-fun b!7440713 () Bool)

(declare-fun e!4443167 () Bool)

(assert (=> b!7440713 (= e!4443162 e!4443167)))

(declare-fun res!2986402 () Bool)

(assert (=> b!7440713 (=> (not res!2986402) (not e!4443167))))

(assert (=> b!7440713 (= res!2986402 call!683918)))

(declare-fun bm!683913 () Bool)

(assert (=> bm!683913 (= call!683917 call!683916)))

(declare-fun b!7440714 () Bool)

(assert (=> b!7440714 (= e!4443166 e!4443163)))

(assert (=> b!7440714 (= c!1377015 (is-Union!19450 (h!78444 (exprs!8890 setElem!56552))))))

(declare-fun b!7440715 () Bool)

(assert (=> b!7440715 (= e!4443167 call!683917)))

(assert (= (and d!2295253 (not res!2986403)) b!7440708))

(assert (= (and b!7440708 c!1377016) b!7440707))

(assert (= (and b!7440708 (not c!1377016)) b!7440714))

(assert (= (and b!7440707 res!2986405) b!7440711))

(assert (= (and b!7440714 c!1377015) b!7440710))

(assert (= (and b!7440714 (not c!1377015)) b!7440712))

(assert (= (and b!7440710 res!2986404) b!7440709))

(assert (= (and b!7440712 (not res!2986401)) b!7440713))

(assert (= (and b!7440713 res!2986402) b!7440715))

(assert (= (or b!7440710 b!7440715) bm!683913))

(assert (= (or b!7440709 b!7440713) bm!683911))

(assert (= (or b!7440711 bm!683913) bm!683912))

(declare-fun m!8052848 () Bool)

(assert (=> bm!683911 m!8052848))

(declare-fun m!8052850 () Bool)

(assert (=> bm!683912 m!8052850))

(declare-fun m!8052852 () Bool)

(assert (=> b!7440707 m!8052852))

(assert (=> bs!1926101 d!2295253))

(declare-fun bs!1926133 () Bool)

(declare-fun d!2295255 () Bool)

(assert (= bs!1926133 (and d!2295255 d!2295123)))

(declare-fun lambda!460419 () Int)

(assert (=> bs!1926133 (= lambda!460419 lambda!460391)))

(declare-fun bs!1926134 () Bool)

(assert (= bs!1926134 (and d!2295255 d!2295241)))

(assert (=> bs!1926134 (= lambda!460419 lambda!460417)))

(declare-fun bs!1926135 () Bool)

(assert (= bs!1926135 (and d!2295255 d!2295153)))

(assert (=> bs!1926135 (= lambda!460419 lambda!460405)))

(declare-fun bs!1926136 () Bool)

(assert (= bs!1926136 (and d!2295255 d!2295251)))

(assert (=> bs!1926136 (= lambda!460419 lambda!460418)))

(declare-fun bs!1926137 () Bool)

(assert (= bs!1926137 (and d!2295255 d!2295115)))

(assert (=> bs!1926137 (= lambda!460419 lambda!460390)))

(declare-fun bs!1926138 () Bool)

(assert (= bs!1926138 (and d!2295255 d!2295219)))

(assert (=> bs!1926138 (= lambda!460419 lambda!460416)))

(assert (=> d!2295255 (= (inv!91987 setElem!56564) (forall!18228 (exprs!8890 setElem!56564) lambda!460419))))

(declare-fun bs!1926139 () Bool)

(assert (= bs!1926139 d!2295255))

(declare-fun m!8052854 () Bool)

(assert (=> bs!1926139 m!8052854))

(assert (=> setNonEmpty!56564 d!2295255))

(declare-fun d!2295257 () Bool)

(declare-fun c!1377017 () Bool)

(assert (=> d!2295257 (= c!1377017 (is-Nil!71997 (t!386684 lt!2619370)))))

(declare-fun e!4443169 () (Set Context!16780))

(assert (=> d!2295257 (= (content!15235 (t!386684 lt!2619370)) e!4443169)))

(declare-fun b!7440716 () Bool)

(assert (=> b!7440716 (= e!4443169 (as set.empty (Set Context!16780)))))

(declare-fun b!7440717 () Bool)

(assert (=> b!7440717 (= e!4443169 (set.union (set.insert (h!78445 (t!386684 lt!2619370)) (as set.empty (Set Context!16780))) (content!15235 (t!386684 (t!386684 lt!2619370)))))))

(assert (= (and d!2295257 c!1377017) b!7440716))

(assert (= (and d!2295257 (not c!1377017)) b!7440717))

(declare-fun m!8052856 () Bool)

(assert (=> b!7440717 m!8052856))

(declare-fun m!8052858 () Bool)

(assert (=> b!7440717 m!8052858))

(assert (=> b!7440488 d!2295257))

(assert (=> d!2295175 d!2295171))

(assert (=> d!2295175 d!2295173))

(declare-fun d!2295259 () Bool)

(declare-fun res!2986406 () Bool)

(declare-fun e!4443170 () Bool)

(assert (=> d!2295259 (=> res!2986406 e!4443170)))

(assert (=> d!2295259 (= res!2986406 (is-Nil!71996 (t!386683 (exprs!8890 empty!3659))))))

(assert (=> d!2295259 (= (forall!18228 (t!386683 (exprs!8890 empty!3659)) lambda!460390) e!4443170)))

(declare-fun b!7440718 () Bool)

(declare-fun e!4443171 () Bool)

(assert (=> b!7440718 (= e!4443170 e!4443171)))

(declare-fun res!2986407 () Bool)

(assert (=> b!7440718 (=> (not res!2986407) (not e!4443171))))

(assert (=> b!7440718 (= res!2986407 (dynLambda!29725 lambda!460390 (h!78444 (t!386683 (exprs!8890 empty!3659)))))))

(declare-fun b!7440719 () Bool)

(assert (=> b!7440719 (= e!4443171 (forall!18228 (t!386683 (t!386683 (exprs!8890 empty!3659))) lambda!460390))))

(assert (= (and d!2295259 (not res!2986406)) b!7440718))

(assert (= (and b!7440718 res!2986407) b!7440719))

(declare-fun b_lambda!287455 () Bool)

(assert (=> (not b_lambda!287455) (not b!7440718)))

(declare-fun m!8052860 () Bool)

(assert (=> b!7440718 m!8052860))

(declare-fun m!8052862 () Bool)

(assert (=> b!7440719 m!8052862))

(assert (=> b!7440482 d!2295259))

(declare-fun d!2295261 () Bool)

(declare-fun res!2986408 () Bool)

(declare-fun e!4443172 () Bool)

(assert (=> d!2295261 (=> res!2986408 e!4443172)))

(assert (=> d!2295261 (= res!2986408 (is-Nil!71997 res!2986307))))

(assert (=> d!2295261 (= (noDuplicate!3123 res!2986307) e!4443172)))

(declare-fun b!7440720 () Bool)

(declare-fun e!4443173 () Bool)

(assert (=> b!7440720 (= e!4443172 e!4443173)))

(declare-fun res!2986409 () Bool)

(assert (=> b!7440720 (=> (not res!2986409) (not e!4443173))))

(assert (=> b!7440720 (= res!2986409 (not (contains!20861 (t!386684 res!2986307) (h!78445 res!2986307))))))

(declare-fun b!7440721 () Bool)

(assert (=> b!7440721 (= e!4443173 (noDuplicate!3123 (t!386684 res!2986307)))))

(assert (= (and d!2295261 (not res!2986408)) b!7440720))

(assert (= (and b!7440720 res!2986409) b!7440721))

(declare-fun m!8052864 () Bool)

(assert (=> b!7440720 m!8052864))

(declare-fun m!8052866 () Bool)

(assert (=> b!7440721 m!8052866))

(assert (=> d!2295163 d!2295261))

(declare-fun d!2295263 () Bool)

(assert (=> d!2295263 (= ($colon$colon!3354 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))) (ite (or c!1376968 c!1376964) (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (h!78444 (exprs!8890 lt!2619343)))) (Cons!71996 (ite (or c!1376968 c!1376964) (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (h!78444 (exprs!8890 lt!2619343))) (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))

(assert (=> bm!683862 d!2295263))

(declare-fun d!2295265 () Bool)

(assert (=> d!2295265 (= (nullable!8477 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (nullableFct!3420 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))

(declare-fun bs!1926140 () Bool)

(assert (= bs!1926140 d!2295265))

(declare-fun m!8052868 () Bool)

(assert (=> bs!1926140 m!8052868))

(assert (=> b!7440459 d!2295265))

(declare-fun d!2295267 () Bool)

(assert (=> d!2295267 (= (nullable!8477 (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))) (nullableFct!3420 (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))

(declare-fun bs!1926141 () Bool)

(assert (= bs!1926141 d!2295267))

(declare-fun m!8052870 () Bool)

(assert (=> bs!1926141 m!8052870))

(assert (=> b!7440444 d!2295267))

(declare-fun b!7440723 () Bool)

(declare-fun e!4443177 () Bool)

(declare-fun e!4443178 () Bool)

(assert (=> b!7440723 (= e!4443177 e!4443178)))

(declare-fun c!1377019 () Bool)

(assert (=> b!7440723 (= c!1377019 (is-Star!19450 (h!78444 (exprs!8890 empty!3659))))))

(declare-fun b!7440724 () Bool)

(declare-fun e!4443176 () Bool)

(declare-fun call!683921 () Bool)

(assert (=> b!7440724 (= e!4443176 call!683921)))

(declare-fun bm!683914 () Bool)

(declare-fun c!1377018 () Bool)

(assert (=> bm!683914 (= call!683921 (validRegex!9979 (ite c!1377018 (regTwo!39413 (h!78444 (exprs!8890 empty!3659))) (regOne!39412 (h!78444 (exprs!8890 empty!3659))))))))

(declare-fun bm!683915 () Bool)

(declare-fun call!683919 () Bool)

(assert (=> bm!683915 (= call!683919 (validRegex!9979 (ite c!1377019 (reg!19779 (h!78444 (exprs!8890 empty!3659))) (ite c!1377018 (regOne!39413 (h!78444 (exprs!8890 empty!3659))) (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))))))

(declare-fun b!7440725 () Bool)

(declare-fun res!2986413 () Bool)

(assert (=> b!7440725 (=> (not res!2986413) (not e!4443176))))

(declare-fun call!683920 () Bool)

(assert (=> b!7440725 (= res!2986413 call!683920)))

(declare-fun e!4443175 () Bool)

(assert (=> b!7440725 (= e!4443175 e!4443176)))

(declare-fun b!7440726 () Bool)

(declare-fun e!4443180 () Bool)

(assert (=> b!7440726 (= e!4443180 call!683919)))

(declare-fun b!7440727 () Bool)

(declare-fun res!2986410 () Bool)

(declare-fun e!4443174 () Bool)

(assert (=> b!7440727 (=> res!2986410 e!4443174)))

(assert (=> b!7440727 (= res!2986410 (not (is-Concat!28295 (h!78444 (exprs!8890 empty!3659)))))))

(assert (=> b!7440727 (= e!4443175 e!4443174)))

(declare-fun d!2295269 () Bool)

(declare-fun res!2986412 () Bool)

(assert (=> d!2295269 (=> res!2986412 e!4443177)))

(assert (=> d!2295269 (= res!2986412 (is-ElementMatch!19450 (h!78444 (exprs!8890 empty!3659))))))

(assert (=> d!2295269 (= (validRegex!9979 (h!78444 (exprs!8890 empty!3659))) e!4443177)))

(declare-fun b!7440722 () Bool)

(assert (=> b!7440722 (= e!4443178 e!4443180)))

(declare-fun res!2986414 () Bool)

(assert (=> b!7440722 (= res!2986414 (not (nullable!8477 (reg!19779 (h!78444 (exprs!8890 empty!3659))))))))

(assert (=> b!7440722 (=> (not res!2986414) (not e!4443180))))

(declare-fun b!7440728 () Bool)

(declare-fun e!4443179 () Bool)

(assert (=> b!7440728 (= e!4443174 e!4443179)))

(declare-fun res!2986411 () Bool)

(assert (=> b!7440728 (=> (not res!2986411) (not e!4443179))))

(assert (=> b!7440728 (= res!2986411 call!683921)))

(declare-fun bm!683916 () Bool)

(assert (=> bm!683916 (= call!683920 call!683919)))

(declare-fun b!7440729 () Bool)

(assert (=> b!7440729 (= e!4443178 e!4443175)))

(assert (=> b!7440729 (= c!1377018 (is-Union!19450 (h!78444 (exprs!8890 empty!3659))))))

(declare-fun b!7440730 () Bool)

(assert (=> b!7440730 (= e!4443179 call!683920)))

(assert (= (and d!2295269 (not res!2986412)) b!7440723))

(assert (= (and b!7440723 c!1377019) b!7440722))

(assert (= (and b!7440723 (not c!1377019)) b!7440729))

(assert (= (and b!7440722 res!2986414) b!7440726))

(assert (= (and b!7440729 c!1377018) b!7440725))

(assert (= (and b!7440729 (not c!1377018)) b!7440727))

(assert (= (and b!7440725 res!2986413) b!7440724))

(assert (= (and b!7440727 (not res!2986410)) b!7440728))

(assert (= (and b!7440728 res!2986411) b!7440730))

(assert (= (or b!7440725 b!7440730) bm!683916))

(assert (= (or b!7440724 b!7440728) bm!683914))

(assert (= (or b!7440726 bm!683916) bm!683915))

(declare-fun m!8052872 () Bool)

(assert (=> bm!683914 m!8052872))

(declare-fun m!8052874 () Bool)

(assert (=> bm!683915 m!8052874))

(declare-fun m!8052876 () Bool)

(assert (=> b!7440722 m!8052876))

(assert (=> bs!1926100 d!2295269))

(declare-fun d!2295271 () Bool)

(declare-fun res!2986415 () Bool)

(declare-fun e!4443181 () Bool)

(assert (=> d!2295271 (=> res!2986415 e!4443181)))

(assert (=> d!2295271 (= res!2986415 (is-Nil!71996 (exprs!8890 setElem!56558)))))

(assert (=> d!2295271 (= (forall!18228 (exprs!8890 setElem!56558) lambda!460405) e!4443181)))

(declare-fun b!7440731 () Bool)

(declare-fun e!4443182 () Bool)

(assert (=> b!7440731 (= e!4443181 e!4443182)))

(declare-fun res!2986416 () Bool)

(assert (=> b!7440731 (=> (not res!2986416) (not e!4443182))))

(assert (=> b!7440731 (= res!2986416 (dynLambda!29725 lambda!460405 (h!78444 (exprs!8890 setElem!56558))))))

(declare-fun b!7440732 () Bool)

(assert (=> b!7440732 (= e!4443182 (forall!18228 (t!386683 (exprs!8890 setElem!56558)) lambda!460405))))

(assert (= (and d!2295271 (not res!2986415)) b!7440731))

(assert (= (and b!7440731 res!2986416) b!7440732))

(declare-fun b_lambda!287457 () Bool)

(assert (=> (not b_lambda!287457) (not b!7440731)))

(declare-fun m!8052878 () Bool)

(assert (=> b!7440731 m!8052878))

(declare-fun m!8052880 () Bool)

(assert (=> b!7440732 m!8052880))

(assert (=> d!2295153 d!2295271))

(declare-fun bs!1926142 () Bool)

(declare-fun d!2295273 () Bool)

(assert (= bs!1926142 (and d!2295273 b!7440298)))

(declare-fun lambda!460420 () Int)

(assert (=> bs!1926142 (not (= lambda!460420 lambda!460375))))

(declare-fun bs!1926143 () Bool)

(assert (= bs!1926143 (and d!2295273 d!2295111)))

(assert (=> bs!1926143 (not (= lambda!460420 lambda!460384))))

(declare-fun bs!1926144 () Bool)

(assert (= bs!1926144 (and d!2295273 d!2295149)))

(assert (=> bs!1926144 (not (= lambda!460420 lambda!460404))))

(declare-fun bs!1926145 () Bool)

(assert (= bs!1926145 (and d!2295273 d!2295171)))

(assert (=> bs!1926145 (= (= lambda!460384 lambda!460375) (= lambda!460420 lambda!460408))))

(assert (=> d!2295273 true))

(assert (=> d!2295273 (< (dynLambda!29722 order!29583 lambda!460384) (dynLambda!29722 order!29583 lambda!460420))))

(assert (=> d!2295273 (= (exists!4807 (toList!11787 z!3488) lambda!460384) (not (forall!18229 (toList!11787 z!3488) lambda!460420)))))

(declare-fun bs!1926146 () Bool)

(assert (= bs!1926146 d!2295273))

(assert (=> bs!1926146 m!8052572))

(declare-fun m!8052882 () Bool)

(assert (=> bs!1926146 m!8052882))

(assert (=> d!2295147 d!2295273))

(assert (=> d!2295147 d!2295173))

(declare-fun d!2295275 () Bool)

(declare-fun res!2986417 () Bool)

(assert (=> d!2295275 (= res!2986417 (exists!4807 (toList!11787 z!3488) lambda!460384))))

(assert (=> d!2295275 true))

(assert (=> d!2295275 (= (choose!57517 z!3488 lambda!460384) res!2986417)))

(declare-fun bs!1926147 () Bool)

(assert (= bs!1926147 d!2295275))

(assert (=> bs!1926147 m!8052572))

(assert (=> bs!1926147 m!8052572))

(assert (=> bs!1926147 m!8052636))

(assert (=> d!2295147 d!2295275))

(declare-fun call!683925 () List!72120)

(declare-fun c!1377023 () Bool)

(declare-fun c!1377020 () Bool)

(declare-fun bm!683917 () Bool)

(declare-fun call!683924 () (Set Context!16780))

(declare-fun c!1377024 () Bool)

(assert (=> bm!683917 (= call!683924 (derivationStepZipperDown!3225 (ite c!1377023 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377024 (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377020 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (reg!19779 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))) (ite (or c!1377023 c!1377024) (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (Context!16781 call!683925)) (h!78446 s!7945)))))

(declare-fun b!7440733 () Bool)

(declare-fun e!4443187 () (Set Context!16780))

(declare-fun e!4443188 () (Set Context!16780))

(assert (=> b!7440733 (= e!4443187 e!4443188)))

(assert (=> b!7440733 (= c!1377020 (is-Concat!28295 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))

(declare-fun b!7440734 () Bool)

(declare-fun call!683926 () (Set Context!16780))

(declare-fun call!683927 () (Set Context!16780))

(assert (=> b!7440734 (= e!4443187 (set.union call!683926 call!683927))))

(declare-fun d!2295277 () Bool)

(declare-fun c!1377021 () Bool)

(assert (=> d!2295277 (= c!1377021 (and (is-ElementMatch!19450 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (= (c!1376936 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (h!78446 s!7945))))))

(declare-fun e!4443184 () (Set Context!16780))

(assert (=> d!2295277 (= (derivationStepZipperDown!3225 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))) (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (h!78446 s!7945)) e!4443184)))

(declare-fun bm!683918 () Bool)

(assert (=> bm!683918 (= call!683927 call!683924)))

(declare-fun b!7440735 () Bool)

(declare-fun e!4443186 () Bool)

(assert (=> b!7440735 (= c!1377024 e!4443186)))

(declare-fun res!2986418 () Bool)

(assert (=> b!7440735 (=> (not res!2986418) (not e!4443186))))

(assert (=> b!7440735 (= res!2986418 (is-Concat!28295 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))

(declare-fun e!4443183 () (Set Context!16780))

(assert (=> b!7440735 (= e!4443183 e!4443187)))

(declare-fun b!7440736 () Bool)

(assert (=> b!7440736 (= e!4443186 (nullable!8477 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))

(declare-fun bm!683919 () Bool)

(declare-fun call!683923 () List!72120)

(assert (=> bm!683919 (= call!683923 ($colon$colon!3354 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))) (ite (or c!1377024 c!1377020) (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))

(declare-fun bm!683920 () Bool)

(assert (=> bm!683920 (= call!683925 call!683923)))

(declare-fun bm!683921 () Bool)

(declare-fun call!683922 () (Set Context!16780))

(assert (=> bm!683921 (= call!683922 call!683927)))

(declare-fun b!7440737 () Bool)

(assert (=> b!7440737 (= e!4443184 e!4443183)))

(assert (=> b!7440737 (= c!1377023 (is-Union!19450 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))

(declare-fun b!7440738 () Bool)

(assert (=> b!7440738 (= e!4443184 (set.insert (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (as set.empty (Set Context!16780))))))

(declare-fun b!7440739 () Bool)

(assert (=> b!7440739 (= e!4443188 call!683922)))

(declare-fun b!7440740 () Bool)

(declare-fun e!4443185 () (Set Context!16780))

(assert (=> b!7440740 (= e!4443185 (as set.empty (Set Context!16780)))))

(declare-fun bm!683922 () Bool)

(assert (=> bm!683922 (= call!683926 (derivationStepZipperDown!3225 (ite c!1377023 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))) (ite c!1377023 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (Context!16781 call!683923)) (h!78446 s!7945)))))

(declare-fun b!7440741 () Bool)

(assert (=> b!7440741 (= e!4443183 (set.union call!683924 call!683926))))

(declare-fun b!7440742 () Bool)

(declare-fun c!1377022 () Bool)

(assert (=> b!7440742 (= c!1377022 (is-Star!19450 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))

(assert (=> b!7440742 (= e!4443188 e!4443185)))

(declare-fun b!7440743 () Bool)

(assert (=> b!7440743 (= e!4443185 call!683922)))

(assert (= (and d!2295277 c!1377021) b!7440738))

(assert (= (and d!2295277 (not c!1377021)) b!7440737))

(assert (= (and b!7440737 c!1377023) b!7440741))

(assert (= (and b!7440737 (not c!1377023)) b!7440735))

(assert (= (and b!7440735 res!2986418) b!7440736))

(assert (= (and b!7440735 c!1377024) b!7440734))

(assert (= (and b!7440735 (not c!1377024)) b!7440733))

(assert (= (and b!7440733 c!1377020) b!7440739))

(assert (= (and b!7440733 (not c!1377020)) b!7440742))

(assert (= (and b!7440742 c!1377022) b!7440743))

(assert (= (and b!7440742 (not c!1377022)) b!7440740))

(assert (= (or b!7440739 b!7440743) bm!683920))

(assert (= (or b!7440739 b!7440743) bm!683921))

(assert (= (or b!7440734 bm!683921) bm!683918))

(assert (= (or b!7440734 bm!683920) bm!683919))

(assert (= (or b!7440741 b!7440734) bm!683922))

(assert (= (or b!7440741 bm!683918) bm!683917))

(declare-fun m!8052884 () Bool)

(assert (=> bm!683917 m!8052884))

(declare-fun m!8052886 () Bool)

(assert (=> bm!683922 m!8052886))

(declare-fun m!8052888 () Bool)

(assert (=> b!7440738 m!8052888))

(declare-fun m!8052890 () Bool)

(assert (=> bm!683919 m!8052890))

(declare-fun m!8052892 () Bool)

(assert (=> b!7440736 m!8052892))

(assert (=> bm!683866 d!2295277))

(declare-fun condSetEmpty!56571 () Bool)

(assert (=> setNonEmpty!56565 (= condSetEmpty!56571 (= setRest!56565 (as set.empty (Set Context!16780))))))

(declare-fun setRes!56571 () Bool)

(assert (=> setNonEmpty!56565 (= tp!2150600 setRes!56571)))

(declare-fun setIsEmpty!56571 () Bool)

(assert (=> setIsEmpty!56571 setRes!56571))

(declare-fun setElem!56571 () Context!16780)

(declare-fun tp!2150674 () Bool)

(declare-fun e!4443189 () Bool)

(declare-fun setNonEmpty!56571 () Bool)

(assert (=> setNonEmpty!56571 (= setRes!56571 (and tp!2150674 (inv!91987 setElem!56571) e!4443189))))

(declare-fun setRest!56571 () (Set Context!16780))

(assert (=> setNonEmpty!56571 (= setRest!56565 (set.union (set.insert setElem!56571 (as set.empty (Set Context!16780))) setRest!56571))))

(declare-fun b!7440744 () Bool)

(declare-fun tp!2150673 () Bool)

(assert (=> b!7440744 (= e!4443189 tp!2150673)))

(assert (= (and setNonEmpty!56565 condSetEmpty!56571) setIsEmpty!56571))

(assert (= (and setNonEmpty!56565 (not condSetEmpty!56571)) setNonEmpty!56571))

(assert (= setNonEmpty!56571 b!7440744))

(declare-fun m!8052894 () Bool)

(assert (=> setNonEmpty!56571 m!8052894))

(declare-fun b!7440747 () Bool)

(declare-fun e!4443190 () Bool)

(declare-fun tp!2150675 () Bool)

(assert (=> b!7440747 (= e!4443190 tp!2150675)))

(declare-fun b!7440745 () Bool)

(assert (=> b!7440745 (= e!4443190 tp_is_empty!49159)))

(declare-fun b!7440748 () Bool)

(declare-fun tp!2150678 () Bool)

(declare-fun tp!2150676 () Bool)

(assert (=> b!7440748 (= e!4443190 (and tp!2150678 tp!2150676))))

(assert (=> b!7440511 (= tp!2150620 e!4443190)))

(declare-fun b!7440746 () Bool)

(declare-fun tp!2150677 () Bool)

(declare-fun tp!2150679 () Bool)

(assert (=> b!7440746 (= e!4443190 (and tp!2150677 tp!2150679))))

(assert (= (and b!7440511 (is-ElementMatch!19450 (regOne!39412 (h!78444 (exprs!8890 setElem!56552))))) b!7440745))

(assert (= (and b!7440511 (is-Concat!28295 (regOne!39412 (h!78444 (exprs!8890 setElem!56552))))) b!7440746))

(assert (= (and b!7440511 (is-Star!19450 (regOne!39412 (h!78444 (exprs!8890 setElem!56552))))) b!7440747))

(assert (= (and b!7440511 (is-Union!19450 (regOne!39412 (h!78444 (exprs!8890 setElem!56552))))) b!7440748))

(declare-fun b!7440751 () Bool)

(declare-fun e!4443191 () Bool)

(declare-fun tp!2150680 () Bool)

(assert (=> b!7440751 (= e!4443191 tp!2150680)))

(declare-fun b!7440749 () Bool)

(assert (=> b!7440749 (= e!4443191 tp_is_empty!49159)))

(declare-fun b!7440752 () Bool)

(declare-fun tp!2150683 () Bool)

(declare-fun tp!2150681 () Bool)

(assert (=> b!7440752 (= e!4443191 (and tp!2150683 tp!2150681))))

(assert (=> b!7440511 (= tp!2150622 e!4443191)))

(declare-fun b!7440750 () Bool)

(declare-fun tp!2150682 () Bool)

(declare-fun tp!2150684 () Bool)

(assert (=> b!7440750 (= e!4443191 (and tp!2150682 tp!2150684))))

(assert (= (and b!7440511 (is-ElementMatch!19450 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552))))) b!7440749))

(assert (= (and b!7440511 (is-Concat!28295 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552))))) b!7440750))

(assert (= (and b!7440511 (is-Star!19450 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552))))) b!7440751))

(assert (= (and b!7440511 (is-Union!19450 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552))))) b!7440752))

(declare-fun b!7440755 () Bool)

(declare-fun e!4443192 () Bool)

(declare-fun tp!2150685 () Bool)

(assert (=> b!7440755 (= e!4443192 tp!2150685)))

(declare-fun b!7440753 () Bool)

(assert (=> b!7440753 (= e!4443192 tp_is_empty!49159)))

(declare-fun b!7440756 () Bool)

(declare-fun tp!2150688 () Bool)

(declare-fun tp!2150686 () Bool)

(assert (=> b!7440756 (= e!4443192 (and tp!2150688 tp!2150686))))

(assert (=> b!7440492 (= tp!2150596 e!4443192)))

(declare-fun b!7440754 () Bool)

(declare-fun tp!2150687 () Bool)

(declare-fun tp!2150689 () Bool)

(assert (=> b!7440754 (= e!4443192 (and tp!2150687 tp!2150689))))

(assert (= (and b!7440492 (is-ElementMatch!19450 (h!78444 (exprs!8890 setElem!56558)))) b!7440753))

(assert (= (and b!7440492 (is-Concat!28295 (h!78444 (exprs!8890 setElem!56558)))) b!7440754))

(assert (= (and b!7440492 (is-Star!19450 (h!78444 (exprs!8890 setElem!56558)))) b!7440755))

(assert (= (and b!7440492 (is-Union!19450 (h!78444 (exprs!8890 setElem!56558)))) b!7440756))

(declare-fun b!7440757 () Bool)

(declare-fun e!4443193 () Bool)

(declare-fun tp!2150690 () Bool)

(declare-fun tp!2150691 () Bool)

(assert (=> b!7440757 (= e!4443193 (and tp!2150690 tp!2150691))))

(assert (=> b!7440492 (= tp!2150597 e!4443193)))

(assert (= (and b!7440492 (is-Cons!71996 (t!386683 (exprs!8890 setElem!56558)))) b!7440757))

(declare-fun b!7440758 () Bool)

(declare-fun e!4443194 () Bool)

(declare-fun tp!2150692 () Bool)

(declare-fun tp!2150693 () Bool)

(assert (=> b!7440758 (= e!4443194 (and tp!2150692 tp!2150693))))

(assert (=> b!7440454 (= tp!2150588 e!4443194)))

(assert (= (and b!7440454 (is-Cons!71996 (exprs!8890 setElem!56564))) b!7440758))

(declare-fun b!7440761 () Bool)

(declare-fun e!4443195 () Bool)

(declare-fun tp!2150694 () Bool)

(assert (=> b!7440761 (= e!4443195 tp!2150694)))

(declare-fun b!7440759 () Bool)

(assert (=> b!7440759 (= e!4443195 tp_is_empty!49159)))

(declare-fun b!7440762 () Bool)

(declare-fun tp!2150697 () Bool)

(declare-fun tp!2150695 () Bool)

(assert (=> b!7440762 (= e!4443195 (and tp!2150697 tp!2150695))))

(assert (=> b!7440508 (= tp!2150614 e!4443195)))

(declare-fun b!7440760 () Bool)

(declare-fun tp!2150696 () Bool)

(declare-fun tp!2150698 () Bool)

(assert (=> b!7440760 (= e!4443195 (and tp!2150696 tp!2150698))))

(assert (= (and b!7440508 (is-ElementMatch!19450 (regOne!39413 (h!78444 (exprs!8890 empty!3659))))) b!7440759))

(assert (= (and b!7440508 (is-Concat!28295 (regOne!39413 (h!78444 (exprs!8890 empty!3659))))) b!7440760))

(assert (= (and b!7440508 (is-Star!19450 (regOne!39413 (h!78444 (exprs!8890 empty!3659))))) b!7440761))

(assert (= (and b!7440508 (is-Union!19450 (regOne!39413 (h!78444 (exprs!8890 empty!3659))))) b!7440762))

(declare-fun b!7440765 () Bool)

(declare-fun e!4443196 () Bool)

(declare-fun tp!2150699 () Bool)

(assert (=> b!7440765 (= e!4443196 tp!2150699)))

(declare-fun b!7440763 () Bool)

(assert (=> b!7440763 (= e!4443196 tp_is_empty!49159)))

(declare-fun b!7440766 () Bool)

(declare-fun tp!2150702 () Bool)

(declare-fun tp!2150700 () Bool)

(assert (=> b!7440766 (= e!4443196 (and tp!2150702 tp!2150700))))

(assert (=> b!7440508 (= tp!2150612 e!4443196)))

(declare-fun b!7440764 () Bool)

(declare-fun tp!2150701 () Bool)

(declare-fun tp!2150703 () Bool)

(assert (=> b!7440764 (= e!4443196 (and tp!2150701 tp!2150703))))

(assert (= (and b!7440508 (is-ElementMatch!19450 (regTwo!39413 (h!78444 (exprs!8890 empty!3659))))) b!7440763))

(assert (= (and b!7440508 (is-Concat!28295 (regTwo!39413 (h!78444 (exprs!8890 empty!3659))))) b!7440764))

(assert (= (and b!7440508 (is-Star!19450 (regTwo!39413 (h!78444 (exprs!8890 empty!3659))))) b!7440765))

(assert (= (and b!7440508 (is-Union!19450 (regTwo!39413 (h!78444 (exprs!8890 empty!3659))))) b!7440766))

(declare-fun condSetEmpty!56572 () Bool)

(assert (=> setNonEmpty!56564 (= condSetEmpty!56572 (= setRest!56564 (as set.empty (Set Context!16780))))))

(declare-fun setRes!56572 () Bool)

(assert (=> setNonEmpty!56564 (= tp!2150589 setRes!56572)))

(declare-fun setIsEmpty!56572 () Bool)

(assert (=> setIsEmpty!56572 setRes!56572))

(declare-fun setNonEmpty!56572 () Bool)

(declare-fun setElem!56572 () Context!16780)

(declare-fun e!4443197 () Bool)

(declare-fun tp!2150705 () Bool)

(assert (=> setNonEmpty!56572 (= setRes!56572 (and tp!2150705 (inv!91987 setElem!56572) e!4443197))))

(declare-fun setRest!56572 () (Set Context!16780))

(assert (=> setNonEmpty!56572 (= setRest!56564 (set.union (set.insert setElem!56572 (as set.empty (Set Context!16780))) setRest!56572))))

(declare-fun b!7440767 () Bool)

(declare-fun tp!2150704 () Bool)

(assert (=> b!7440767 (= e!4443197 tp!2150704)))

(assert (= (and setNonEmpty!56564 condSetEmpty!56572) setIsEmpty!56572))

(assert (= (and setNonEmpty!56564 (not condSetEmpty!56572)) setNonEmpty!56572))

(assert (= setNonEmpty!56572 b!7440767))

(declare-fun m!8052896 () Bool)

(assert (=> setNonEmpty!56572 m!8052896))

(declare-fun b!7440770 () Bool)

(declare-fun e!4443198 () Bool)

(declare-fun tp!2150706 () Bool)

(assert (=> b!7440770 (= e!4443198 tp!2150706)))

(declare-fun b!7440768 () Bool)

(assert (=> b!7440768 (= e!4443198 tp_is_empty!49159)))

(declare-fun b!7440771 () Bool)

(declare-fun tp!2150709 () Bool)

(declare-fun tp!2150707 () Bool)

(assert (=> b!7440771 (= e!4443198 (and tp!2150709 tp!2150707))))

(assert (=> b!7440507 (= tp!2150611 e!4443198)))

(declare-fun b!7440769 () Bool)

(declare-fun tp!2150708 () Bool)

(declare-fun tp!2150710 () Bool)

(assert (=> b!7440769 (= e!4443198 (and tp!2150708 tp!2150710))))

(assert (= (and b!7440507 (is-ElementMatch!19450 (reg!19779 (h!78444 (exprs!8890 empty!3659))))) b!7440768))

(assert (= (and b!7440507 (is-Concat!28295 (reg!19779 (h!78444 (exprs!8890 empty!3659))))) b!7440769))

(assert (= (and b!7440507 (is-Star!19450 (reg!19779 (h!78444 (exprs!8890 empty!3659))))) b!7440770))

(assert (= (and b!7440507 (is-Union!19450 (reg!19779 (h!78444 (exprs!8890 empty!3659))))) b!7440771))

(declare-fun b!7440774 () Bool)

(declare-fun e!4443199 () Bool)

(declare-fun tp!2150711 () Bool)

(assert (=> b!7440774 (= e!4443199 tp!2150711)))

(declare-fun b!7440772 () Bool)

(assert (=> b!7440772 (= e!4443199 tp_is_empty!49159)))

(declare-fun b!7440775 () Bool)

(declare-fun tp!2150714 () Bool)

(declare-fun tp!2150712 () Bool)

(assert (=> b!7440775 (= e!4443199 (and tp!2150714 tp!2150712))))

(assert (=> b!7440514 (= tp!2150623 e!4443199)))

(declare-fun b!7440773 () Bool)

(declare-fun tp!2150713 () Bool)

(declare-fun tp!2150715 () Bool)

(assert (=> b!7440773 (= e!4443199 (and tp!2150713 tp!2150715))))

(assert (= (and b!7440514 (is-ElementMatch!19450 (h!78444 (t!386683 (exprs!8890 setElem!56552))))) b!7440772))

(assert (= (and b!7440514 (is-Concat!28295 (h!78444 (t!386683 (exprs!8890 setElem!56552))))) b!7440773))

(assert (= (and b!7440514 (is-Star!19450 (h!78444 (t!386683 (exprs!8890 setElem!56552))))) b!7440774))

(assert (= (and b!7440514 (is-Union!19450 (h!78444 (t!386683 (exprs!8890 setElem!56552))))) b!7440775))

(declare-fun b!7440776 () Bool)

(declare-fun e!4443200 () Bool)

(declare-fun tp!2150716 () Bool)

(declare-fun tp!2150717 () Bool)

(assert (=> b!7440776 (= e!4443200 (and tp!2150716 tp!2150717))))

(assert (=> b!7440514 (= tp!2150624 e!4443200)))

(assert (= (and b!7440514 (is-Cons!71996 (t!386683 (t!386683 (exprs!8890 setElem!56552))))) b!7440776))

(declare-fun b!7440779 () Bool)

(declare-fun e!4443201 () Bool)

(declare-fun tp!2150718 () Bool)

(assert (=> b!7440779 (= e!4443201 tp!2150718)))

(declare-fun b!7440777 () Bool)

(assert (=> b!7440777 (= e!4443201 tp_is_empty!49159)))

(declare-fun b!7440780 () Bool)

(declare-fun tp!2150721 () Bool)

(declare-fun tp!2150719 () Bool)

(assert (=> b!7440780 (= e!4443201 (and tp!2150721 tp!2150719))))

(assert (=> b!7440506 (= tp!2150613 e!4443201)))

(declare-fun b!7440778 () Bool)

(declare-fun tp!2150720 () Bool)

(declare-fun tp!2150722 () Bool)

(assert (=> b!7440778 (= e!4443201 (and tp!2150720 tp!2150722))))

(assert (= (and b!7440506 (is-ElementMatch!19450 (regOne!39412 (h!78444 (exprs!8890 empty!3659))))) b!7440777))

(assert (= (and b!7440506 (is-Concat!28295 (regOne!39412 (h!78444 (exprs!8890 empty!3659))))) b!7440778))

(assert (= (and b!7440506 (is-Star!19450 (regOne!39412 (h!78444 (exprs!8890 empty!3659))))) b!7440779))

(assert (= (and b!7440506 (is-Union!19450 (regOne!39412 (h!78444 (exprs!8890 empty!3659))))) b!7440780))

(declare-fun b!7440783 () Bool)

(declare-fun e!4443202 () Bool)

(declare-fun tp!2150723 () Bool)

(assert (=> b!7440783 (= e!4443202 tp!2150723)))

(declare-fun b!7440781 () Bool)

(assert (=> b!7440781 (= e!4443202 tp_is_empty!49159)))

(declare-fun b!7440784 () Bool)

(declare-fun tp!2150726 () Bool)

(declare-fun tp!2150724 () Bool)

(assert (=> b!7440784 (= e!4443202 (and tp!2150726 tp!2150724))))

(assert (=> b!7440506 (= tp!2150615 e!4443202)))

(declare-fun b!7440782 () Bool)

(declare-fun tp!2150725 () Bool)

(declare-fun tp!2150727 () Bool)

(assert (=> b!7440782 (= e!4443202 (and tp!2150725 tp!2150727))))

(assert (= (and b!7440506 (is-ElementMatch!19450 (regTwo!39412 (h!78444 (exprs!8890 empty!3659))))) b!7440781))

(assert (= (and b!7440506 (is-Concat!28295 (regTwo!39412 (h!78444 (exprs!8890 empty!3659))))) b!7440782))

(assert (= (and b!7440506 (is-Star!19450 (regTwo!39412 (h!78444 (exprs!8890 empty!3659))))) b!7440783))

(assert (= (and b!7440506 (is-Union!19450 (regTwo!39412 (h!78444 (exprs!8890 empty!3659))))) b!7440784))

(declare-fun b!7440785 () Bool)

(declare-fun e!4443203 () Bool)

(declare-fun tp!2150728 () Bool)

(declare-fun tp!2150729 () Bool)

(assert (=> b!7440785 (= e!4443203 (and tp!2150728 tp!2150729))))

(assert (=> b!7440473 (= tp!2150594 e!4443203)))

(assert (= (and b!7440473 (is-Cons!71996 (exprs!8890 (h!78445 res!2986307)))) b!7440785))

(declare-fun b!7440793 () Bool)

(declare-fun e!4443209 () Bool)

(declare-fun tp!2150734 () Bool)

(assert (=> b!7440793 (= e!4443209 tp!2150734)))

(declare-fun e!4443208 () Bool)

(declare-fun tp!2150735 () Bool)

(declare-fun b!7440792 () Bool)

(assert (=> b!7440792 (= e!4443208 (and (inv!91987 (h!78445 (t!386684 res!2986307))) e!4443209 tp!2150735))))

(assert (=> b!7440472 (= tp!2150595 e!4443208)))

(assert (= b!7440792 b!7440793))

(assert (= (and b!7440472 (is-Cons!71997 (t!386684 res!2986307))) b!7440792))

(declare-fun m!8052898 () Bool)

(assert (=> b!7440792 m!8052898))

(declare-fun b!7440796 () Bool)

(declare-fun e!4443210 () Bool)

(declare-fun tp!2150736 () Bool)

(assert (=> b!7440796 (= e!4443210 tp!2150736)))

(declare-fun b!7440794 () Bool)

(assert (=> b!7440794 (= e!4443210 tp_is_empty!49159)))

(declare-fun b!7440797 () Bool)

(declare-fun tp!2150739 () Bool)

(declare-fun tp!2150737 () Bool)

(assert (=> b!7440797 (= e!4443210 (and tp!2150739 tp!2150737))))

(assert (=> b!7440509 (= tp!2150616 e!4443210)))

(declare-fun b!7440795 () Bool)

(declare-fun tp!2150738 () Bool)

(declare-fun tp!2150740 () Bool)

(assert (=> b!7440795 (= e!4443210 (and tp!2150738 tp!2150740))))

(assert (= (and b!7440509 (is-ElementMatch!19450 (h!78444 (t!386683 (exprs!8890 empty!3659))))) b!7440794))

(assert (= (and b!7440509 (is-Concat!28295 (h!78444 (t!386683 (exprs!8890 empty!3659))))) b!7440795))

(assert (= (and b!7440509 (is-Star!19450 (h!78444 (t!386683 (exprs!8890 empty!3659))))) b!7440796))

(assert (= (and b!7440509 (is-Union!19450 (h!78444 (t!386683 (exprs!8890 empty!3659))))) b!7440797))

(declare-fun b!7440798 () Bool)

(declare-fun e!4443211 () Bool)

(declare-fun tp!2150741 () Bool)

(declare-fun tp!2150742 () Bool)

(assert (=> b!7440798 (= e!4443211 (and tp!2150741 tp!2150742))))

(assert (=> b!7440509 (= tp!2150617 e!4443211)))

(assert (= (and b!7440509 (is-Cons!71996 (t!386683 (t!386683 (exprs!8890 empty!3659))))) b!7440798))

(declare-fun b!7440801 () Bool)

(declare-fun e!4443212 () Bool)

(declare-fun tp!2150743 () Bool)

(assert (=> b!7440801 (= e!4443212 tp!2150743)))

(declare-fun b!7440799 () Bool)

(assert (=> b!7440799 (= e!4443212 tp_is_empty!49159)))

(declare-fun b!7440802 () Bool)

(declare-fun tp!2150746 () Bool)

(declare-fun tp!2150744 () Bool)

(assert (=> b!7440802 (= e!4443212 (and tp!2150746 tp!2150744))))

(assert (=> b!7440513 (= tp!2150621 e!4443212)))

(declare-fun b!7440800 () Bool)

(declare-fun tp!2150745 () Bool)

(declare-fun tp!2150747 () Bool)

(assert (=> b!7440800 (= e!4443212 (and tp!2150745 tp!2150747))))

(assert (= (and b!7440513 (is-ElementMatch!19450 (regOne!39413 (h!78444 (exprs!8890 setElem!56552))))) b!7440799))

(assert (= (and b!7440513 (is-Concat!28295 (regOne!39413 (h!78444 (exprs!8890 setElem!56552))))) b!7440800))

(assert (= (and b!7440513 (is-Star!19450 (regOne!39413 (h!78444 (exprs!8890 setElem!56552))))) b!7440801))

(assert (= (and b!7440513 (is-Union!19450 (regOne!39413 (h!78444 (exprs!8890 setElem!56552))))) b!7440802))

(declare-fun b!7440805 () Bool)

(declare-fun e!4443213 () Bool)

(declare-fun tp!2150748 () Bool)

(assert (=> b!7440805 (= e!4443213 tp!2150748)))

(declare-fun b!7440803 () Bool)

(assert (=> b!7440803 (= e!4443213 tp_is_empty!49159)))

(declare-fun b!7440806 () Bool)

(declare-fun tp!2150751 () Bool)

(declare-fun tp!2150749 () Bool)

(assert (=> b!7440806 (= e!4443213 (and tp!2150751 tp!2150749))))

(assert (=> b!7440513 (= tp!2150619 e!4443213)))

(declare-fun b!7440804 () Bool)

(declare-fun tp!2150750 () Bool)

(declare-fun tp!2150752 () Bool)

(assert (=> b!7440804 (= e!4443213 (and tp!2150750 tp!2150752))))

(assert (= (and b!7440513 (is-ElementMatch!19450 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552))))) b!7440803))

(assert (= (and b!7440513 (is-Concat!28295 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552))))) b!7440804))

(assert (= (and b!7440513 (is-Star!19450 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552))))) b!7440805))

(assert (= (and b!7440513 (is-Union!19450 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552))))) b!7440806))

(declare-fun b!7440807 () Bool)

(declare-fun e!4443214 () Bool)

(declare-fun tp!2150753 () Bool)

(assert (=> b!7440807 (= e!4443214 (and tp_is_empty!49159 tp!2150753))))

(assert (=> b!7440493 (= tp!2150598 e!4443214)))

(assert (= (and b!7440493 (is-Cons!71998 (t!386685 (t!386685 (t!386685 s!7945))))) b!7440807))

(declare-fun b!7440808 () Bool)

(declare-fun e!4443215 () Bool)

(declare-fun tp!2150754 () Bool)

(declare-fun tp!2150755 () Bool)

(assert (=> b!7440808 (= e!4443215 (and tp!2150754 tp!2150755))))

(assert (=> b!7440494 (= tp!2150599 e!4443215)))

(assert (= (and b!7440494 (is-Cons!71996 (exprs!8890 setElem!56565))) b!7440808))

(declare-fun b!7440811 () Bool)

(declare-fun e!4443216 () Bool)

(declare-fun tp!2150756 () Bool)

(assert (=> b!7440811 (= e!4443216 tp!2150756)))

(declare-fun b!7440809 () Bool)

(assert (=> b!7440809 (= e!4443216 tp_is_empty!49159)))

(declare-fun b!7440812 () Bool)

(declare-fun tp!2150759 () Bool)

(declare-fun tp!2150757 () Bool)

(assert (=> b!7440812 (= e!4443216 (and tp!2150759 tp!2150757))))

(assert (=> b!7440512 (= tp!2150618 e!4443216)))

(declare-fun b!7440810 () Bool)

(declare-fun tp!2150758 () Bool)

(declare-fun tp!2150760 () Bool)

(assert (=> b!7440810 (= e!4443216 (and tp!2150758 tp!2150760))))

(assert (= (and b!7440512 (is-ElementMatch!19450 (reg!19779 (h!78444 (exprs!8890 setElem!56552))))) b!7440809))

(assert (= (and b!7440512 (is-Concat!28295 (reg!19779 (h!78444 (exprs!8890 setElem!56552))))) b!7440810))

(assert (= (and b!7440512 (is-Star!19450 (reg!19779 (h!78444 (exprs!8890 setElem!56552))))) b!7440811))

(assert (= (and b!7440512 (is-Union!19450 (reg!19779 (h!78444 (exprs!8890 setElem!56552))))) b!7440812))

(declare-fun b!7440813 () Bool)

(declare-fun e!4443217 () Bool)

(declare-fun tp!2150761 () Bool)

(declare-fun tp!2150762 () Bool)

(assert (=> b!7440813 (= e!4443217 (and tp!2150761 tp!2150762))))

(assert (=> b!7440418 (= tp!2150583 e!4443217)))

(assert (= (and b!7440418 (is-Cons!71996 (exprs!8890 _$3!601))) b!7440813))

(declare-fun b_lambda!287459 () Bool)

(assert (= b_lambda!287453 (or d!2295123 b_lambda!287459)))

(declare-fun bs!1926148 () Bool)

(declare-fun d!2295279 () Bool)

(assert (= bs!1926148 (and d!2295279 d!2295123)))

(assert (=> bs!1926148 (= (dynLambda!29725 lambda!460391 (h!78444 (t!386683 (exprs!8890 setElem!56552)))) (validRegex!9979 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))))

(declare-fun m!8052900 () Bool)

(assert (=> bs!1926148 m!8052900))

(assert (=> b!7440676 d!2295279))

(declare-fun b_lambda!287461 () Bool)

(assert (= b_lambda!287455 (or d!2295115 b_lambda!287461)))

(declare-fun bs!1926149 () Bool)

(declare-fun d!2295281 () Bool)

(assert (= bs!1926149 (and d!2295281 d!2295115)))

(assert (=> bs!1926149 (= (dynLambda!29725 lambda!460390 (h!78444 (t!386683 (exprs!8890 empty!3659)))) (validRegex!9979 (h!78444 (t!386683 (exprs!8890 empty!3659)))))))

(declare-fun m!8052902 () Bool)

(assert (=> bs!1926149 m!8052902))

(assert (=> b!7440718 d!2295281))

(declare-fun b_lambda!287463 () Bool)

(assert (= b_lambda!287451 (or d!2295171 b_lambda!287463)))

(declare-fun bs!1926150 () Bool)

(declare-fun d!2295283 () Bool)

(assert (= bs!1926150 (and d!2295283 d!2295171)))

(assert (=> bs!1926150 (= (dynLambda!29727 lambda!460408 (h!78445 (toList!11787 z!3488))) (not (dynLambda!29727 lambda!460375 (h!78445 (toList!11787 z!3488)))))))

(declare-fun b_lambda!287467 () Bool)

(assert (=> (not b_lambda!287467) (not bs!1926150)))

(declare-fun m!8052904 () Bool)

(assert (=> bs!1926150 m!8052904))

(assert (=> b!7440674 d!2295283))

(declare-fun b_lambda!287465 () Bool)

(assert (= b_lambda!287457 (or d!2295153 b_lambda!287465)))

(declare-fun bs!1926151 () Bool)

(declare-fun d!2295285 () Bool)

(assert (= bs!1926151 (and d!2295285 d!2295153)))

(assert (=> bs!1926151 (= (dynLambda!29725 lambda!460405 (h!78444 (exprs!8890 setElem!56558))) (validRegex!9979 (h!78444 (exprs!8890 setElem!56558))))))

(declare-fun m!8052906 () Bool)

(assert (=> bs!1926151 m!8052906))

(assert (=> b!7440731 d!2295285))

(push 1)

(assert (not b!7440752))

(assert (not b!7440811))

(assert (not b_lambda!287463))

(assert (not b!7440667))

(assert (not b_lambda!287461))

(assert (not bm!683899))

(assert (not bs!1926148))

(assert (not b!7440792))

(assert (not b!7440623))

(assert (not bm!683919))

(assert (not b!7440758))

(assert (not b!7440771))

(assert (not b!7440764))

(assert (not bm!683897))

(assert (not b!7440632))

(assert (not b!7440719))

(assert (not b!7440664))

(assert (not b!7440717))

(assert (not b!7440812))

(assert (not bm!683887))

(assert (not d!2295241))

(assert (not b!7440774))

(assert (not bm!683889))

(assert (not b!7440666))

(assert (not b!7440769))

(assert (not b!7440677))

(assert (not d!2295265))

(assert (not b!7440619))

(assert (not b!7440796))

(assert (not d!2295231))

(assert (not b!7440707))

(assert (not bm!683914))

(assert (not bm!683901))

(assert (not b!7440736))

(assert (not b!7440751))

(assert (not bm!683911))

(assert (not bm!683922))

(assert (not b!7440782))

(assert (not b!7440785))

(assert (not b!7440615))

(assert (not b!7440779))

(assert (not d!2295255))

(assert (not bs!1926149))

(assert (not b!7440665))

(assert (not bs!1926151))

(assert (not b!7440675))

(assert (not b!7440806))

(assert (not d!2295267))

(assert (not b!7440793))

(assert (not b!7440668))

(assert (not b!7440776))

(assert (not b!7440798))

(assert (not b!7440783))

(assert (not b_lambda!287441))

(assert (not b_lambda!287465))

(assert (not d!2295239))

(assert (not d!2295249))

(assert (not b!7440784))

(assert (not b!7440762))

(assert (not bm!683886))

(assert (not setNonEmpty!56571))

(assert (not b_lambda!287459))

(assert (not b!7440800))

(assert (not b!7440775))

(assert (not bm!683898))

(assert (not bm!683917))

(assert (not b!7440681))

(assert (not b!7440747))

(assert (not bm!683915))

(assert tp_is_empty!49159)

(assert (not b!7440766))

(assert (not b!7440748))

(assert (not b_lambda!287467))

(assert (not bm!683912))

(assert (not d!2295273))

(assert (not b!7440795))

(assert (not b!7440757))

(assert (not b!7440807))

(assert (not bm!683904))

(assert (not setNonEmpty!56570))

(assert (not b!7440732))

(assert (not b!7440631))

(assert (not b!7440633))

(assert (not b!7440778))

(assert (not setNonEmpty!56572))

(assert (not b!7440744))

(assert (not b!7440802))

(assert (not b!7440780))

(assert (not d!2295275))

(assert (not d!2295251))

(assert (not b!7440721))

(assert (not b!7440804))

(assert (not bm!683892))

(assert (not b!7440750))

(assert (not b!7440760))

(assert (not b!7440746))

(assert (not b!7440755))

(assert (not b!7440761))

(assert (not b!7440801))

(assert (not b!7440810))

(assert (not b!7440754))

(assert (not b!7440805))

(assert (not b!7440641))

(assert (not b!7440635))

(assert (not b!7440797))

(assert (not b!7440767))

(assert (not d!2295219))

(assert (not b!7440669))

(assert (not b!7440756))

(assert (not b!7440770))

(assert (not b!7440808))

(assert (not b!7440722))

(assert (not b!7440773))

(assert (not b!7440720))

(assert (not b_lambda!287439))

(assert (not b!7440813))

(assert (not b!7440765))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!287487 () Bool)

(assert (= b_lambda!287467 (or b!7440298 b_lambda!287487)))

(declare-fun bs!1926187 () Bool)

(declare-fun d!2295355 () Bool)

(assert (= bs!1926187 (and d!2295355 b!7440298)))

(assert (=> bs!1926187 (= (dynLambda!29727 lambda!460375 (h!78445 (toList!11787 z!3488))) (set.member lt!2619342 (derivationStepZipperUp!2840 (h!78445 (toList!11787 z!3488)) (head!15262 s!7945))))))

(declare-fun m!8053044 () Bool)

(assert (=> bs!1926187 m!8053044))

(declare-fun m!8053046 () Bool)

(assert (=> bs!1926187 m!8053046))

(assert (=> bs!1926150 d!2295355))

(push 1)

(assert (not b!7440752))

(assert (not b!7440811))

(assert (not b_lambda!287463))

(assert (not b!7440667))

(assert (not b_lambda!287461))

(assert (not bm!683899))

(assert (not bs!1926148))

(assert (not b!7440792))

(assert (not b!7440623))

(assert (not bm!683919))

(assert (not bs!1926187))

(assert (not b!7440758))

(assert (not b!7440771))

(assert (not b!7440764))

(assert (not bm!683897))

(assert (not b!7440632))

(assert (not b!7440719))

(assert (not b!7440664))

(assert (not b!7440717))

(assert (not b!7440812))

(assert (not bm!683887))

(assert (not d!2295241))

(assert (not b!7440774))

(assert (not bm!683889))

(assert (not b!7440666))

(assert (not b!7440769))

(assert (not b!7440677))

(assert (not d!2295265))

(assert (not b!7440619))

(assert (not b!7440796))

(assert (not d!2295231))

(assert (not b!7440707))

(assert (not bm!683914))

(assert (not bm!683901))

(assert (not b!7440736))

(assert (not b!7440751))

(assert (not bm!683911))

(assert (not bm!683922))

(assert (not b!7440782))

(assert (not b!7440785))

(assert (not b!7440615))

(assert (not b!7440779))

(assert (not d!2295255))

(assert (not bs!1926149))

(assert (not b!7440665))

(assert (not bs!1926151))

(assert (not b!7440675))

(assert (not b!7440806))

(assert (not d!2295267))

(assert (not b!7440793))

(assert (not b!7440668))

(assert (not b!7440776))

(assert (not b!7440798))

(assert (not b!7440783))

(assert (not b_lambda!287441))

(assert (not b_lambda!287465))

(assert (not d!2295239))

(assert (not d!2295249))

(assert (not b!7440784))

(assert (not b!7440762))

(assert (not bm!683886))

(assert (not setNonEmpty!56571))

(assert (not b_lambda!287459))

(assert (not b!7440800))

(assert (not b!7440775))

(assert (not bm!683898))

(assert (not bm!683917))

(assert (not b!7440681))

(assert (not b!7440747))

(assert (not b!7440748))

(assert (not bm!683915))

(assert tp_is_empty!49159)

(assert (not b!7440766))

(assert (not bm!683912))

(assert (not d!2295273))

(assert (not b!7440795))

(assert (not b!7440757))

(assert (not b!7440807))

(assert (not bm!683904))

(assert (not setNonEmpty!56570))

(assert (not b!7440732))

(assert (not b!7440631))

(assert (not b!7440633))

(assert (not b!7440778))

(assert (not setNonEmpty!56572))

(assert (not b!7440744))

(assert (not b!7440802))

(assert (not b!7440780))

(assert (not d!2295275))

(assert (not d!2295251))

(assert (not b!7440721))

(assert (not b!7440804))

(assert (not bm!683892))

(assert (not b!7440750))

(assert (not b!7440760))

(assert (not b!7440746))

(assert (not b!7440755))

(assert (not b!7440761))

(assert (not b!7440801))

(assert (not b!7440810))

(assert (not b!7440754))

(assert (not b_lambda!287487))

(assert (not b!7440805))

(assert (not b!7440641))

(assert (not b!7440635))

(assert (not b!7440797))

(assert (not b!7440767))

(assert (not d!2295219))

(assert (not b!7440669))

(assert (not b!7440756))

(assert (not b!7440770))

(assert (not b!7440808))

(assert (not b!7440722))

(assert (not b!7440773))

(assert (not b!7440720))

(assert (not b_lambda!287439))

(assert (not b!7440813))

(assert (not b!7440765))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!2295231 d!2295257))

(declare-fun d!2295357 () Bool)

(declare-fun c!1377056 () Bool)

(assert (=> d!2295357 (= c!1377056 (is-Nil!71997 (t!386684 (t!386684 lt!2619370))))))

(declare-fun e!4443345 () (Set Context!16780))

(assert (=> d!2295357 (= (content!15235 (t!386684 (t!386684 lt!2619370))) e!4443345)))

(declare-fun b!7441013 () Bool)

(assert (=> b!7441013 (= e!4443345 (as set.empty (Set Context!16780)))))

(declare-fun b!7441014 () Bool)

(assert (=> b!7441014 (= e!4443345 (set.union (set.insert (h!78445 (t!386684 (t!386684 lt!2619370))) (as set.empty (Set Context!16780))) (content!15235 (t!386684 (t!386684 (t!386684 lt!2619370))))))))

(assert (= (and d!2295357 c!1377056) b!7441013))

(assert (= (and d!2295357 (not c!1377056)) b!7441014))

(declare-fun m!8053048 () Bool)

(assert (=> b!7441014 m!8053048))

(declare-fun m!8053050 () Bool)

(assert (=> b!7441014 m!8053050))

(assert (=> b!7440717 d!2295357))

(declare-fun c!1377061 () Bool)

(declare-fun call!683968 () List!72120)

(declare-fun bm!683960 () Bool)

(declare-fun c!1377060 () Bool)

(declare-fun call!683967 () (Set Context!16780))

(declare-fun c!1377057 () Bool)

(assert (=> bm!683960 (= call!683967 (derivationStepZipperDown!3225 (ite c!1377060 (regOne!39413 (ite c!1376999 (regOne!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377000 (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376996 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (reg!19779 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))) (ite c!1377061 (regTwo!39412 (ite c!1376999 (regOne!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377000 (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376996 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (reg!19779 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))) (ite c!1377057 (regOne!39412 (ite c!1376999 (regOne!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377000 (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376996 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (reg!19779 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))) (reg!19779 (ite c!1376999 (regOne!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377000 (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376996 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (reg!19779 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))))))))))) (ite (or c!1377060 c!1377061) (ite (or c!1376999 c!1377000) (ite (or c!1376967 c!1376968) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683868)) (Context!16781 call!683895)) (Context!16781 call!683968)) (h!78446 s!7945)))))

(declare-fun b!7441015 () Bool)

(declare-fun e!4443350 () (Set Context!16780))

(declare-fun e!4443351 () (Set Context!16780))

(assert (=> b!7441015 (= e!4443350 e!4443351)))

(assert (=> b!7441015 (= c!1377057 (is-Concat!28295 (ite c!1376999 (regOne!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377000 (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376996 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (reg!19779 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))))))

(declare-fun b!7441016 () Bool)

(declare-fun call!683969 () (Set Context!16780))

(declare-fun call!683970 () (Set Context!16780))

(assert (=> b!7441016 (= e!4443350 (set.union call!683969 call!683970))))

(declare-fun d!2295359 () Bool)

(declare-fun c!1377058 () Bool)

(assert (=> d!2295359 (= c!1377058 (and (is-ElementMatch!19450 (ite c!1376999 (regOne!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377000 (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376996 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (reg!19779 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))) (= (c!1376936 (ite c!1376999 (regOne!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377000 (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376996 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (reg!19779 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))) (h!78446 s!7945))))))

(declare-fun e!4443347 () (Set Context!16780))

(assert (=> d!2295359 (= (derivationStepZipperDown!3225 (ite c!1376999 (regOne!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377000 (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376996 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (reg!19779 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))))))) (ite (or c!1376999 c!1377000) (ite (or c!1376967 c!1376968) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683868)) (Context!16781 call!683895)) (h!78446 s!7945)) e!4443347)))

(declare-fun bm!683961 () Bool)

(assert (=> bm!683961 (= call!683970 call!683967)))

(declare-fun b!7441017 () Bool)

(declare-fun e!4443349 () Bool)

(assert (=> b!7441017 (= c!1377061 e!4443349)))

(declare-fun res!2986486 () Bool)

(assert (=> b!7441017 (=> (not res!2986486) (not e!4443349))))

(assert (=> b!7441017 (= res!2986486 (is-Concat!28295 (ite c!1376999 (regOne!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377000 (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376996 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (reg!19779 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))))))

(declare-fun e!4443346 () (Set Context!16780))

(assert (=> b!7441017 (= e!4443346 e!4443350)))

(declare-fun b!7441018 () Bool)

(assert (=> b!7441018 (= e!4443349 (nullable!8477 (regOne!39412 (ite c!1376999 (regOne!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377000 (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376996 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (reg!19779 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))))))))))))

(declare-fun call!683966 () List!72120)

(declare-fun bm!683962 () Bool)

(assert (=> bm!683962 (= call!683966 ($colon$colon!3354 (exprs!8890 (ite (or c!1376999 c!1377000) (ite (or c!1376967 c!1376968) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683868)) (Context!16781 call!683895))) (ite (or c!1377061 c!1377057) (regTwo!39412 (ite c!1376999 (regOne!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377000 (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376996 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (reg!19779 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))) (ite c!1376999 (regOne!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377000 (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376996 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (reg!19779 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))))))))))))

(declare-fun bm!683963 () Bool)

(assert (=> bm!683963 (= call!683968 call!683966)))

(declare-fun bm!683964 () Bool)

(declare-fun call!683965 () (Set Context!16780))

(assert (=> bm!683964 (= call!683965 call!683970)))

(declare-fun b!7441019 () Bool)

(assert (=> b!7441019 (= e!4443347 e!4443346)))

(assert (=> b!7441019 (= c!1377060 (is-Union!19450 (ite c!1376999 (regOne!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377000 (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376996 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (reg!19779 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))))))

(declare-fun b!7441020 () Bool)

(assert (=> b!7441020 (= e!4443347 (set.insert (ite (or c!1376999 c!1377000) (ite (or c!1376967 c!1376968) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683868)) (Context!16781 call!683895)) (as set.empty (Set Context!16780))))))

(declare-fun b!7441021 () Bool)

(assert (=> b!7441021 (= e!4443351 call!683965)))

(declare-fun b!7441022 () Bool)

(declare-fun e!4443348 () (Set Context!16780))

(assert (=> b!7441022 (= e!4443348 (as set.empty (Set Context!16780)))))

(declare-fun bm!683965 () Bool)

(assert (=> bm!683965 (= call!683969 (derivationStepZipperDown!3225 (ite c!1377060 (regTwo!39413 (ite c!1376999 (regOne!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377000 (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376996 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (reg!19779 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))) (regOne!39412 (ite c!1376999 (regOne!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377000 (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376996 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (reg!19779 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))))))))) (ite c!1377060 (ite (or c!1376999 c!1377000) (ite (or c!1376967 c!1376968) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683868)) (Context!16781 call!683895)) (Context!16781 call!683966)) (h!78446 s!7945)))))

(declare-fun b!7441023 () Bool)

(assert (=> b!7441023 (= e!4443346 (set.union call!683967 call!683969))))

(declare-fun b!7441024 () Bool)

(declare-fun c!1377059 () Bool)

(assert (=> b!7441024 (= c!1377059 (is-Star!19450 (ite c!1376999 (regOne!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377000 (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376996 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (reg!19779 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))))))

(assert (=> b!7441024 (= e!4443351 e!4443348)))

(declare-fun b!7441025 () Bool)

(assert (=> b!7441025 (= e!4443348 call!683965)))

(assert (= (and d!2295359 c!1377058) b!7441020))

(assert (= (and d!2295359 (not c!1377058)) b!7441019))

(assert (= (and b!7441019 c!1377060) b!7441023))

(assert (= (and b!7441019 (not c!1377060)) b!7441017))

(assert (= (and b!7441017 res!2986486) b!7441018))

(assert (= (and b!7441017 c!1377061) b!7441016))

(assert (= (and b!7441017 (not c!1377061)) b!7441015))

(assert (= (and b!7441015 c!1377057) b!7441021))

(assert (= (and b!7441015 (not c!1377057)) b!7441024))

(assert (= (and b!7441024 c!1377059) b!7441025))

(assert (= (and b!7441024 (not c!1377059)) b!7441022))

(assert (= (or b!7441021 b!7441025) bm!683963))

(assert (= (or b!7441021 b!7441025) bm!683964))

(assert (= (or b!7441016 bm!683964) bm!683961))

(assert (= (or b!7441016 bm!683963) bm!683962))

(assert (= (or b!7441023 b!7441016) bm!683965))

(assert (= (or b!7441023 bm!683961) bm!683960))

(declare-fun m!8053052 () Bool)

(assert (=> bm!683960 m!8053052))

(declare-fun m!8053054 () Bool)

(assert (=> bm!683965 m!8053054))

(declare-fun m!8053056 () Bool)

(assert (=> b!7441020 m!8053056))

(declare-fun m!8053058 () Bool)

(assert (=> bm!683962 m!8053058))

(declare-fun m!8053060 () Bool)

(assert (=> b!7441018 m!8053060))

(assert (=> bm!683887 d!2295359))

(declare-fun d!2295361 () Bool)

(declare-fun res!2986487 () Bool)

(declare-fun e!4443352 () Bool)

(assert (=> d!2295361 (=> res!2986487 e!4443352)))

(assert (=> d!2295361 (= res!2986487 (is-Nil!71997 (t!386684 lt!2619372)))))

(assert (=> d!2295361 (= (noDuplicate!3123 (t!386684 lt!2619372)) e!4443352)))

(declare-fun b!7441026 () Bool)

(declare-fun e!4443353 () Bool)

(assert (=> b!7441026 (= e!4443352 e!4443353)))

(declare-fun res!2986488 () Bool)

(assert (=> b!7441026 (=> (not res!2986488) (not e!4443353))))

(assert (=> b!7441026 (= res!2986488 (not (contains!20861 (t!386684 (t!386684 lt!2619372)) (h!78445 (t!386684 lt!2619372)))))))

(declare-fun b!7441027 () Bool)

(assert (=> b!7441027 (= e!4443353 (noDuplicate!3123 (t!386684 (t!386684 lt!2619372))))))

(assert (= (and d!2295361 (not res!2986487)) b!7441026))

(assert (= (and b!7441026 res!2986488) b!7441027))

(declare-fun m!8053062 () Bool)

(assert (=> b!7441026 m!8053062))

(declare-fun m!8053064 () Bool)

(assert (=> b!7441027 m!8053064))

(assert (=> b!7440666 d!2295361))

(declare-fun b!7441028 () Bool)

(declare-fun e!4443357 () Bool)

(declare-fun e!4443358 () Bool)

(assert (=> b!7441028 (= e!4443357 e!4443358)))

(declare-fun res!2986493 () Bool)

(declare-fun call!683972 () Bool)

(assert (=> b!7441028 (= res!2986493 call!683972)))

(assert (=> b!7441028 (=> (not res!2986493) (not e!4443358))))

(declare-fun bm!683966 () Bool)

(declare-fun call!683971 () Bool)

(declare-fun c!1377062 () Bool)

(assert (=> bm!683966 (= call!683971 (nullable!8477 (ite c!1377062 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))

(declare-fun b!7441029 () Bool)

(assert (=> b!7441029 (= e!4443358 call!683971)))

(declare-fun b!7441030 () Bool)

(declare-fun e!4443355 () Bool)

(assert (=> b!7441030 (= e!4443355 e!4443357)))

(assert (=> b!7441030 (= c!1377062 (is-Union!19450 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))

(declare-fun b!7441031 () Bool)

(declare-fun e!4443359 () Bool)

(assert (=> b!7441031 (= e!4443359 call!683971)))

(declare-fun d!2295363 () Bool)

(declare-fun res!2986490 () Bool)

(declare-fun e!4443356 () Bool)

(assert (=> d!2295363 (=> res!2986490 e!4443356)))

(assert (=> d!2295363 (= res!2986490 (is-EmptyExpr!19450 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))

(assert (=> d!2295363 (= (nullableFct!3420 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) e!4443356)))

(declare-fun bm!683967 () Bool)

(assert (=> bm!683967 (= call!683972 (nullable!8477 (ite c!1377062 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))

(declare-fun b!7441032 () Bool)

(assert (=> b!7441032 (= e!4443357 e!4443359)))

(declare-fun res!2986491 () Bool)

(assert (=> b!7441032 (= res!2986491 call!683972)))

(assert (=> b!7441032 (=> res!2986491 e!4443359)))

(declare-fun b!7441033 () Bool)

(declare-fun e!4443354 () Bool)

(assert (=> b!7441033 (= e!4443354 e!4443355)))

(declare-fun res!2986489 () Bool)

(assert (=> b!7441033 (=> res!2986489 e!4443355)))

(assert (=> b!7441033 (= res!2986489 (is-Star!19450 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))

(declare-fun b!7441034 () Bool)

(assert (=> b!7441034 (= e!4443356 e!4443354)))

(declare-fun res!2986492 () Bool)

(assert (=> b!7441034 (=> (not res!2986492) (not e!4443354))))

(assert (=> b!7441034 (= res!2986492 (and (not (is-EmptyLang!19450 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))) (not (is-ElementMatch!19450 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))

(assert (= (and d!2295363 (not res!2986490)) b!7441034))

(assert (= (and b!7441034 res!2986492) b!7441033))

(assert (= (and b!7441033 (not res!2986489)) b!7441030))

(assert (= (and b!7441030 c!1377062) b!7441032))

(assert (= (and b!7441030 (not c!1377062)) b!7441028))

(assert (= (and b!7441032 (not res!2986491)) b!7441031))

(assert (= (and b!7441028 res!2986493) b!7441029))

(assert (= (or b!7441032 b!7441028) bm!683967))

(assert (= (or b!7441031 b!7441029) bm!683966))

(declare-fun m!8053066 () Bool)

(assert (=> bm!683966 m!8053066))

(declare-fun m!8053068 () Bool)

(assert (=> bm!683967 m!8053068))

(assert (=> d!2295265 d!2295363))

(declare-fun b!7441036 () Bool)

(declare-fun e!4443363 () Bool)

(declare-fun e!4443364 () Bool)

(assert (=> b!7441036 (= e!4443363 e!4443364)))

(declare-fun c!1377064 () Bool)

(assert (=> b!7441036 (= c!1377064 (is-Star!19450 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))))

(declare-fun b!7441037 () Bool)

(declare-fun e!4443362 () Bool)

(declare-fun call!683975 () Bool)

(assert (=> b!7441037 (= e!4443362 call!683975)))

(declare-fun bm!683968 () Bool)

(declare-fun c!1377063 () Bool)

(assert (=> bm!683968 (= call!683975 (validRegex!9979 (ite c!1377063 (regTwo!39413 (h!78444 (t!386683 (exprs!8890 setElem!56552)))) (regOne!39412 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))))))

(declare-fun bm!683969 () Bool)

(declare-fun call!683973 () Bool)

(assert (=> bm!683969 (= call!683973 (validRegex!9979 (ite c!1377064 (reg!19779 (h!78444 (t!386683 (exprs!8890 setElem!56552)))) (ite c!1377063 (regOne!39413 (h!78444 (t!386683 (exprs!8890 setElem!56552)))) (regTwo!39412 (h!78444 (t!386683 (exprs!8890 setElem!56552))))))))))

(declare-fun b!7441038 () Bool)

(declare-fun res!2986497 () Bool)

(assert (=> b!7441038 (=> (not res!2986497) (not e!4443362))))

(declare-fun call!683974 () Bool)

(assert (=> b!7441038 (= res!2986497 call!683974)))

(declare-fun e!4443361 () Bool)

(assert (=> b!7441038 (= e!4443361 e!4443362)))

(declare-fun b!7441039 () Bool)

(declare-fun e!4443366 () Bool)

(assert (=> b!7441039 (= e!4443366 call!683973)))

(declare-fun b!7441040 () Bool)

(declare-fun res!2986494 () Bool)

(declare-fun e!4443360 () Bool)

(assert (=> b!7441040 (=> res!2986494 e!4443360)))

(assert (=> b!7441040 (= res!2986494 (not (is-Concat!28295 (h!78444 (t!386683 (exprs!8890 setElem!56552))))))))

(assert (=> b!7441040 (= e!4443361 e!4443360)))

(declare-fun d!2295365 () Bool)

(declare-fun res!2986496 () Bool)

(assert (=> d!2295365 (=> res!2986496 e!4443363)))

(assert (=> d!2295365 (= res!2986496 (is-ElementMatch!19450 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))))

(assert (=> d!2295365 (= (validRegex!9979 (h!78444 (t!386683 (exprs!8890 setElem!56552)))) e!4443363)))

(declare-fun b!7441035 () Bool)

(assert (=> b!7441035 (= e!4443364 e!4443366)))

(declare-fun res!2986498 () Bool)

(assert (=> b!7441035 (= res!2986498 (not (nullable!8477 (reg!19779 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))))))

(assert (=> b!7441035 (=> (not res!2986498) (not e!4443366))))

(declare-fun b!7441041 () Bool)

(declare-fun e!4443365 () Bool)

(assert (=> b!7441041 (= e!4443360 e!4443365)))

(declare-fun res!2986495 () Bool)

(assert (=> b!7441041 (=> (not res!2986495) (not e!4443365))))

(assert (=> b!7441041 (= res!2986495 call!683975)))

(declare-fun bm!683970 () Bool)

(assert (=> bm!683970 (= call!683974 call!683973)))

(declare-fun b!7441042 () Bool)

(assert (=> b!7441042 (= e!4443364 e!4443361)))

(assert (=> b!7441042 (= c!1377063 (is-Union!19450 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))))

(declare-fun b!7441043 () Bool)

(assert (=> b!7441043 (= e!4443365 call!683974)))

(assert (= (and d!2295365 (not res!2986496)) b!7441036))

(assert (= (and b!7441036 c!1377064) b!7441035))

(assert (= (and b!7441036 (not c!1377064)) b!7441042))

(assert (= (and b!7441035 res!2986498) b!7441039))

(assert (= (and b!7441042 c!1377063) b!7441038))

(assert (= (and b!7441042 (not c!1377063)) b!7441040))

(assert (= (and b!7441038 res!2986497) b!7441037))

(assert (= (and b!7441040 (not res!2986494)) b!7441041))

(assert (= (and b!7441041 res!2986495) b!7441043))

(assert (= (or b!7441038 b!7441043) bm!683970))

(assert (= (or b!7441037 b!7441041) bm!683968))

(assert (= (or b!7441039 bm!683970) bm!683969))

(declare-fun m!8053070 () Bool)

(assert (=> bm!683968 m!8053070))

(declare-fun m!8053072 () Bool)

(assert (=> bm!683969 m!8053072))

(declare-fun m!8053074 () Bool)

(assert (=> b!7441035 m!8053074))

(assert (=> bs!1926148 d!2295365))

(declare-fun call!683979 () List!72120)

(declare-fun bm!683971 () Bool)

(declare-fun c!1377065 () Bool)

(declare-fun call!683978 () (Set Context!16780))

(declare-fun c!1377069 () Bool)

(declare-fun c!1377068 () Bool)

(assert (=> bm!683971 (= call!683978 (derivationStepZipperDown!3225 (ite c!1377068 (regOne!39413 (ite c!1377023 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))) (ite c!1377069 (regTwo!39412 (ite c!1377023 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))) (ite c!1377065 (regOne!39412 (ite c!1377023 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))) (reg!19779 (ite c!1377023 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))) (ite (or c!1377068 c!1377069) (ite c!1377023 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (Context!16781 call!683923)) (Context!16781 call!683979)) (h!78446 s!7945)))))

(declare-fun b!7441044 () Bool)

(declare-fun e!4443371 () (Set Context!16780))

(declare-fun e!4443372 () (Set Context!16780))

(assert (=> b!7441044 (= e!4443371 e!4443372)))

(assert (=> b!7441044 (= c!1377065 (is-Concat!28295 (ite c!1377023 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))

(declare-fun b!7441045 () Bool)

(declare-fun call!683980 () (Set Context!16780))

(declare-fun call!683981 () (Set Context!16780))

(assert (=> b!7441045 (= e!4443371 (set.union call!683980 call!683981))))

(declare-fun c!1377066 () Bool)

(declare-fun d!2295367 () Bool)

(assert (=> d!2295367 (= c!1377066 (and (is-ElementMatch!19450 (ite c!1377023 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))) (= (c!1376936 (ite c!1377023 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))) (h!78446 s!7945))))))

(declare-fun e!4443368 () (Set Context!16780))

(assert (=> d!2295367 (= (derivationStepZipperDown!3225 (ite c!1377023 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))) (ite c!1377023 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (Context!16781 call!683923)) (h!78446 s!7945)) e!4443368)))

(declare-fun bm!683972 () Bool)

(assert (=> bm!683972 (= call!683981 call!683978)))

(declare-fun b!7441046 () Bool)

(declare-fun e!4443370 () Bool)

(assert (=> b!7441046 (= c!1377069 e!4443370)))

(declare-fun res!2986499 () Bool)

(assert (=> b!7441046 (=> (not res!2986499) (not e!4443370))))

(assert (=> b!7441046 (= res!2986499 (is-Concat!28295 (ite c!1377023 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))

(declare-fun e!4443367 () (Set Context!16780))

(assert (=> b!7441046 (= e!4443367 e!4443371)))

(declare-fun b!7441047 () Bool)

(assert (=> b!7441047 (= e!4443370 (nullable!8477 (regOne!39412 (ite c!1377023 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))))

(declare-fun bm!683973 () Bool)

(declare-fun call!683977 () List!72120)

(assert (=> bm!683973 (= call!683977 ($colon$colon!3354 (exprs!8890 (ite c!1377023 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (Context!16781 call!683923))) (ite (or c!1377069 c!1377065) (regTwo!39412 (ite c!1377023 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))) (ite c!1377023 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))))

(declare-fun bm!683974 () Bool)

(assert (=> bm!683974 (= call!683979 call!683977)))

(declare-fun bm!683975 () Bool)

(declare-fun call!683976 () (Set Context!16780))

(assert (=> bm!683975 (= call!683976 call!683981)))

(declare-fun b!7441048 () Bool)

(assert (=> b!7441048 (= e!4443368 e!4443367)))

(assert (=> b!7441048 (= c!1377068 (is-Union!19450 (ite c!1377023 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))

(declare-fun b!7441049 () Bool)

(assert (=> b!7441049 (= e!4443368 (set.insert (ite c!1377023 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (Context!16781 call!683923)) (as set.empty (Set Context!16780))))))

(declare-fun b!7441050 () Bool)

(assert (=> b!7441050 (= e!4443372 call!683976)))

(declare-fun b!7441051 () Bool)

(declare-fun e!4443369 () (Set Context!16780))

(assert (=> b!7441051 (= e!4443369 (as set.empty (Set Context!16780)))))

(declare-fun bm!683976 () Bool)

(assert (=> bm!683976 (= call!683980 (derivationStepZipperDown!3225 (ite c!1377068 (regTwo!39413 (ite c!1377023 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))) (regOne!39412 (ite c!1377023 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))) (ite c!1377068 (ite c!1377023 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (Context!16781 call!683923)) (Context!16781 call!683977)) (h!78446 s!7945)))))

(declare-fun b!7441052 () Bool)

(assert (=> b!7441052 (= e!4443367 (set.union call!683978 call!683980))))

(declare-fun b!7441053 () Bool)

(declare-fun c!1377067 () Bool)

(assert (=> b!7441053 (= c!1377067 (is-Star!19450 (ite c!1377023 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))

(assert (=> b!7441053 (= e!4443372 e!4443369)))

(declare-fun b!7441054 () Bool)

(assert (=> b!7441054 (= e!4443369 call!683976)))

(assert (= (and d!2295367 c!1377066) b!7441049))

(assert (= (and d!2295367 (not c!1377066)) b!7441048))

(assert (= (and b!7441048 c!1377068) b!7441052))

(assert (= (and b!7441048 (not c!1377068)) b!7441046))

(assert (= (and b!7441046 res!2986499) b!7441047))

(assert (= (and b!7441046 c!1377069) b!7441045))

(assert (= (and b!7441046 (not c!1377069)) b!7441044))

(assert (= (and b!7441044 c!1377065) b!7441050))

(assert (= (and b!7441044 (not c!1377065)) b!7441053))

(assert (= (and b!7441053 c!1377067) b!7441054))

(assert (= (and b!7441053 (not c!1377067)) b!7441051))

(assert (= (or b!7441050 b!7441054) bm!683974))

(assert (= (or b!7441050 b!7441054) bm!683975))

(assert (= (or b!7441045 bm!683975) bm!683972))

(assert (= (or b!7441045 bm!683974) bm!683973))

(assert (= (or b!7441052 b!7441045) bm!683976))

(assert (= (or b!7441052 bm!683972) bm!683971))

(declare-fun m!8053076 () Bool)

(assert (=> bm!683971 m!8053076))

(declare-fun m!8053078 () Bool)

(assert (=> bm!683976 m!8053078))

(declare-fun m!8053080 () Bool)

(assert (=> b!7441049 m!8053080))

(declare-fun m!8053082 () Bool)

(assert (=> bm!683973 m!8053082))

(declare-fun m!8053084 () Bool)

(assert (=> b!7441047 m!8053084))

(assert (=> bm!683922 d!2295367))

(declare-fun d!2295369 () Bool)

(assert (=> d!2295369 (= (nullable!8477 (ite c!1377004 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (nullableFct!3420 (ite c!1377004 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))

(declare-fun bs!1926188 () Bool)

(assert (= bs!1926188 d!2295369))

(declare-fun m!8053086 () Bool)

(assert (=> bs!1926188 m!8053086))

(assert (=> bm!683898 d!2295369))

(declare-fun d!2295371 () Bool)

(assert (=> d!2295371 (= ($colon$colon!3354 (exprs!8890 (ite c!1376967 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683866))) (ite (or c!1377010 c!1377006) (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))) (Cons!71996 (ite (or c!1377010 c!1377006) (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (exprs!8890 (ite c!1376967 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683866)))))))

(assert (=> bm!683901 d!2295371))

(declare-fun d!2295373 () Bool)

(declare-fun c!1377070 () Bool)

(assert (=> d!2295373 (= c!1377070 (is-Nil!71997 (t!386684 lt!2619372)))))

(declare-fun e!4443373 () (Set Context!16780))

(assert (=> d!2295373 (= (content!15235 (t!386684 lt!2619372)) e!4443373)))

(declare-fun b!7441055 () Bool)

(assert (=> b!7441055 (= e!4443373 (as set.empty (Set Context!16780)))))

(declare-fun b!7441056 () Bool)

(assert (=> b!7441056 (= e!4443373 (set.union (set.insert (h!78445 (t!386684 lt!2619372)) (as set.empty (Set Context!16780))) (content!15235 (t!386684 (t!386684 lt!2619372)))))))

(assert (= (and d!2295373 c!1377070) b!7441055))

(assert (= (and d!2295373 (not c!1377070)) b!7441056))

(declare-fun m!8053088 () Bool)

(assert (=> b!7441056 m!8053088))

(declare-fun m!8053090 () Bool)

(assert (=> b!7441056 m!8053090))

(assert (=> b!7440635 d!2295373))

(declare-fun d!2295375 () Bool)

(assert (=> d!2295375 (= (nullable!8477 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))) (nullableFct!3420 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))))

(declare-fun bs!1926189 () Bool)

(assert (= bs!1926189 d!2295375))

(declare-fun m!8053092 () Bool)

(assert (=> bs!1926189 m!8053092))

(assert (=> b!7440619 d!2295375))

(declare-fun d!2295377 () Bool)

(declare-fun res!2986500 () Bool)

(declare-fun e!4443374 () Bool)

(assert (=> d!2295377 (=> res!2986500 e!4443374)))

(assert (=> d!2295377 (= res!2986500 (is-Nil!71997 (toList!11787 z!3488)))))

(assert (=> d!2295377 (= (forall!18229 (toList!11787 z!3488) lambda!460420) e!4443374)))

(declare-fun b!7441057 () Bool)

(declare-fun e!4443375 () Bool)

(assert (=> b!7441057 (= e!4443374 e!4443375)))

(declare-fun res!2986501 () Bool)

(assert (=> b!7441057 (=> (not res!2986501) (not e!4443375))))

(assert (=> b!7441057 (= res!2986501 (dynLambda!29727 lambda!460420 (h!78445 (toList!11787 z!3488))))))

(declare-fun b!7441058 () Bool)

(assert (=> b!7441058 (= e!4443375 (forall!18229 (t!386684 (toList!11787 z!3488)) lambda!460420))))

(assert (= (and d!2295377 (not res!2986500)) b!7441057))

(assert (= (and b!7441057 res!2986501) b!7441058))

(declare-fun b_lambda!287489 () Bool)

(assert (=> (not b_lambda!287489) (not b!7441057)))

(declare-fun m!8053094 () Bool)

(assert (=> b!7441057 m!8053094))

(declare-fun m!8053096 () Bool)

(assert (=> b!7441058 m!8053096))

(assert (=> d!2295273 d!2295377))

(declare-fun bs!1926190 () Bool)

(declare-fun d!2295379 () Bool)

(assert (= bs!1926190 (and d!2295379 d!2295123)))

(declare-fun lambda!460426 () Int)

(assert (=> bs!1926190 (= lambda!460426 lambda!460391)))

(declare-fun bs!1926191 () Bool)

(assert (= bs!1926191 (and d!2295379 d!2295241)))

(assert (=> bs!1926191 (= lambda!460426 lambda!460417)))

(declare-fun bs!1926192 () Bool)

(assert (= bs!1926192 (and d!2295379 d!2295153)))

(assert (=> bs!1926192 (= lambda!460426 lambda!460405)))

(declare-fun bs!1926193 () Bool)

(assert (= bs!1926193 (and d!2295379 d!2295251)))

(assert (=> bs!1926193 (= lambda!460426 lambda!460418)))

(declare-fun bs!1926194 () Bool)

(assert (= bs!1926194 (and d!2295379 d!2295255)))

(assert (=> bs!1926194 (= lambda!460426 lambda!460419)))

(declare-fun bs!1926195 () Bool)

(assert (= bs!1926195 (and d!2295379 d!2295115)))

(assert (=> bs!1926195 (= lambda!460426 lambda!460390)))

(declare-fun bs!1926196 () Bool)

(assert (= bs!1926196 (and d!2295379 d!2295219)))

(assert (=> bs!1926196 (= lambda!460426 lambda!460416)))

(assert (=> d!2295379 (= (inv!91987 (h!78445 (t!386684 res!2986307))) (forall!18228 (exprs!8890 (h!78445 (t!386684 res!2986307))) lambda!460426))))

(declare-fun bs!1926197 () Bool)

(assert (= bs!1926197 d!2295379))

(declare-fun m!8053098 () Bool)

(assert (=> bs!1926197 m!8053098))

(assert (=> b!7440792 d!2295379))

(declare-fun b!7441060 () Bool)

(declare-fun e!4443379 () Bool)

(declare-fun e!4443380 () Bool)

(assert (=> b!7441060 (= e!4443379 e!4443380)))

(declare-fun c!1377072 () Bool)

(assert (=> b!7441060 (= c!1377072 (is-Star!19450 (h!78444 (exprs!8890 setElem!56558))))))

(declare-fun b!7441061 () Bool)

(declare-fun e!4443378 () Bool)

(declare-fun call!683984 () Bool)

(assert (=> b!7441061 (= e!4443378 call!683984)))

(declare-fun bm!683977 () Bool)

(declare-fun c!1377071 () Bool)

(assert (=> bm!683977 (= call!683984 (validRegex!9979 (ite c!1377071 (regTwo!39413 (h!78444 (exprs!8890 setElem!56558))) (regOne!39412 (h!78444 (exprs!8890 setElem!56558))))))))

(declare-fun bm!683978 () Bool)

(declare-fun call!683982 () Bool)

(assert (=> bm!683978 (= call!683982 (validRegex!9979 (ite c!1377072 (reg!19779 (h!78444 (exprs!8890 setElem!56558))) (ite c!1377071 (regOne!39413 (h!78444 (exprs!8890 setElem!56558))) (regTwo!39412 (h!78444 (exprs!8890 setElem!56558)))))))))

(declare-fun b!7441062 () Bool)

(declare-fun res!2986505 () Bool)

(assert (=> b!7441062 (=> (not res!2986505) (not e!4443378))))

(declare-fun call!683983 () Bool)

(assert (=> b!7441062 (= res!2986505 call!683983)))

(declare-fun e!4443377 () Bool)

(assert (=> b!7441062 (= e!4443377 e!4443378)))

(declare-fun b!7441063 () Bool)

(declare-fun e!4443382 () Bool)

(assert (=> b!7441063 (= e!4443382 call!683982)))

(declare-fun b!7441064 () Bool)

(declare-fun res!2986502 () Bool)

(declare-fun e!4443376 () Bool)

(assert (=> b!7441064 (=> res!2986502 e!4443376)))

(assert (=> b!7441064 (= res!2986502 (not (is-Concat!28295 (h!78444 (exprs!8890 setElem!56558)))))))

(assert (=> b!7441064 (= e!4443377 e!4443376)))

(declare-fun d!2295381 () Bool)

(declare-fun res!2986504 () Bool)

(assert (=> d!2295381 (=> res!2986504 e!4443379)))

(assert (=> d!2295381 (= res!2986504 (is-ElementMatch!19450 (h!78444 (exprs!8890 setElem!56558))))))

(assert (=> d!2295381 (= (validRegex!9979 (h!78444 (exprs!8890 setElem!56558))) e!4443379)))

(declare-fun b!7441059 () Bool)

(assert (=> b!7441059 (= e!4443380 e!4443382)))

(declare-fun res!2986506 () Bool)

(assert (=> b!7441059 (= res!2986506 (not (nullable!8477 (reg!19779 (h!78444 (exprs!8890 setElem!56558))))))))

(assert (=> b!7441059 (=> (not res!2986506) (not e!4443382))))

(declare-fun b!7441065 () Bool)

(declare-fun e!4443381 () Bool)

(assert (=> b!7441065 (= e!4443376 e!4443381)))

(declare-fun res!2986503 () Bool)

(assert (=> b!7441065 (=> (not res!2986503) (not e!4443381))))

(assert (=> b!7441065 (= res!2986503 call!683984)))

(declare-fun bm!683979 () Bool)

(assert (=> bm!683979 (= call!683983 call!683982)))

(declare-fun b!7441066 () Bool)

(assert (=> b!7441066 (= e!4443380 e!4443377)))

(assert (=> b!7441066 (= c!1377071 (is-Union!19450 (h!78444 (exprs!8890 setElem!56558))))))

(declare-fun b!7441067 () Bool)

(assert (=> b!7441067 (= e!4443381 call!683983)))

(assert (= (and d!2295381 (not res!2986504)) b!7441060))

(assert (= (and b!7441060 c!1377072) b!7441059))

(assert (= (and b!7441060 (not c!1377072)) b!7441066))

(assert (= (and b!7441059 res!2986506) b!7441063))

(assert (= (and b!7441066 c!1377071) b!7441062))

(assert (= (and b!7441066 (not c!1377071)) b!7441064))

(assert (= (and b!7441062 res!2986505) b!7441061))

(assert (= (and b!7441064 (not res!2986502)) b!7441065))

(assert (= (and b!7441065 res!2986503) b!7441067))

(assert (= (or b!7441062 b!7441067) bm!683979))

(assert (= (or b!7441061 b!7441065) bm!683977))

(assert (= (or b!7441063 bm!683979) bm!683978))

(declare-fun m!8053100 () Bool)

(assert (=> bm!683977 m!8053100))

(declare-fun m!8053102 () Bool)

(assert (=> bm!683978 m!8053102))

(declare-fun m!8053104 () Bool)

(assert (=> b!7441059 m!8053104))

(assert (=> bs!1926151 d!2295381))

(declare-fun d!2295383 () Bool)

(declare-fun res!2986507 () Bool)

(declare-fun e!4443383 () Bool)

(assert (=> d!2295383 (=> res!2986507 e!4443383)))

(assert (=> d!2295383 (= res!2986507 (is-Nil!71997 (t!386684 (t!386684 lt!2619370))))))

(assert (=> d!2295383 (= (noDuplicate!3123 (t!386684 (t!386684 lt!2619370))) e!4443383)))

(declare-fun b!7441068 () Bool)

(declare-fun e!4443384 () Bool)

(assert (=> b!7441068 (= e!4443383 e!4443384)))

(declare-fun res!2986508 () Bool)

(assert (=> b!7441068 (=> (not res!2986508) (not e!4443384))))

(assert (=> b!7441068 (= res!2986508 (not (contains!20861 (t!386684 (t!386684 (t!386684 lt!2619370))) (h!78445 (t!386684 (t!386684 lt!2619370))))))))

(declare-fun b!7441069 () Bool)

(assert (=> b!7441069 (= e!4443384 (noDuplicate!3123 (t!386684 (t!386684 (t!386684 lt!2619370)))))))

(assert (= (and d!2295383 (not res!2986507)) b!7441068))

(assert (= (and b!7441068 res!2986508) b!7441069))

(declare-fun m!8053106 () Bool)

(assert (=> b!7441068 m!8053106))

(declare-fun m!8053108 () Bool)

(assert (=> b!7441069 m!8053108))

(assert (=> b!7440632 d!2295383))

(declare-fun d!2295385 () Bool)

(assert (=> d!2295385 (= (nullable!8477 (ite c!1377004 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))))) (nullableFct!3420 (ite c!1377004 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))))))))

(declare-fun bs!1926198 () Bool)

(assert (= bs!1926198 d!2295385))

(declare-fun m!8053110 () Bool)

(assert (=> bs!1926198 m!8053110))

(assert (=> bm!683897 d!2295385))

(declare-fun b!7441071 () Bool)

(declare-fun e!4443388 () Bool)

(declare-fun e!4443389 () Bool)

(assert (=> b!7441071 (= e!4443388 e!4443389)))

(declare-fun c!1377074 () Bool)

(assert (=> b!7441071 (= c!1377074 (is-Star!19450 (ite c!1377016 (reg!19779 (h!78444 (exprs!8890 setElem!56552))) (ite c!1377015 (regOne!39413 (h!78444 (exprs!8890 setElem!56552))) (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))))))

(declare-fun b!7441072 () Bool)

(declare-fun e!4443387 () Bool)

(declare-fun call!683987 () Bool)

(assert (=> b!7441072 (= e!4443387 call!683987)))

(declare-fun c!1377073 () Bool)

(declare-fun bm!683980 () Bool)

(assert (=> bm!683980 (= call!683987 (validRegex!9979 (ite c!1377073 (regTwo!39413 (ite c!1377016 (reg!19779 (h!78444 (exprs!8890 setElem!56552))) (ite c!1377015 (regOne!39413 (h!78444 (exprs!8890 setElem!56552))) (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) (regOne!39412 (ite c!1377016 (reg!19779 (h!78444 (exprs!8890 setElem!56552))) (ite c!1377015 (regOne!39413 (h!78444 (exprs!8890 setElem!56552))) (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))))))))

(declare-fun call!683985 () Bool)

(declare-fun bm!683981 () Bool)

(assert (=> bm!683981 (= call!683985 (validRegex!9979 (ite c!1377074 (reg!19779 (ite c!1377016 (reg!19779 (h!78444 (exprs!8890 setElem!56552))) (ite c!1377015 (regOne!39413 (h!78444 (exprs!8890 setElem!56552))) (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) (ite c!1377073 (regOne!39413 (ite c!1377016 (reg!19779 (h!78444 (exprs!8890 setElem!56552))) (ite c!1377015 (regOne!39413 (h!78444 (exprs!8890 setElem!56552))) (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) (regTwo!39412 (ite c!1377016 (reg!19779 (h!78444 (exprs!8890 setElem!56552))) (ite c!1377015 (regOne!39413 (h!78444 (exprs!8890 setElem!56552))) (regTwo!39412 (h!78444 (exprs!8890 setElem!56552))))))))))))

(declare-fun b!7441073 () Bool)

(declare-fun res!2986512 () Bool)

(assert (=> b!7441073 (=> (not res!2986512) (not e!4443387))))

(declare-fun call!683986 () Bool)

(assert (=> b!7441073 (= res!2986512 call!683986)))

(declare-fun e!4443386 () Bool)

(assert (=> b!7441073 (= e!4443386 e!4443387)))

(declare-fun b!7441074 () Bool)

(declare-fun e!4443391 () Bool)

(assert (=> b!7441074 (= e!4443391 call!683985)))

(declare-fun b!7441075 () Bool)

(declare-fun res!2986509 () Bool)

(declare-fun e!4443385 () Bool)

(assert (=> b!7441075 (=> res!2986509 e!4443385)))

(assert (=> b!7441075 (= res!2986509 (not (is-Concat!28295 (ite c!1377016 (reg!19779 (h!78444 (exprs!8890 setElem!56552))) (ite c!1377015 (regOne!39413 (h!78444 (exprs!8890 setElem!56552))) (regTwo!39412 (h!78444 (exprs!8890 setElem!56552))))))))))

(assert (=> b!7441075 (= e!4443386 e!4443385)))

(declare-fun d!2295387 () Bool)

(declare-fun res!2986511 () Bool)

(assert (=> d!2295387 (=> res!2986511 e!4443388)))

(assert (=> d!2295387 (= res!2986511 (is-ElementMatch!19450 (ite c!1377016 (reg!19779 (h!78444 (exprs!8890 setElem!56552))) (ite c!1377015 (regOne!39413 (h!78444 (exprs!8890 setElem!56552))) (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))))))

(assert (=> d!2295387 (= (validRegex!9979 (ite c!1377016 (reg!19779 (h!78444 (exprs!8890 setElem!56552))) (ite c!1377015 (regOne!39413 (h!78444 (exprs!8890 setElem!56552))) (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) e!4443388)))

(declare-fun b!7441070 () Bool)

(assert (=> b!7441070 (= e!4443389 e!4443391)))

(declare-fun res!2986513 () Bool)

(assert (=> b!7441070 (= res!2986513 (not (nullable!8477 (reg!19779 (ite c!1377016 (reg!19779 (h!78444 (exprs!8890 setElem!56552))) (ite c!1377015 (regOne!39413 (h!78444 (exprs!8890 setElem!56552))) (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))))))))

(assert (=> b!7441070 (=> (not res!2986513) (not e!4443391))))

(declare-fun b!7441076 () Bool)

(declare-fun e!4443390 () Bool)

(assert (=> b!7441076 (= e!4443385 e!4443390)))

(declare-fun res!2986510 () Bool)

(assert (=> b!7441076 (=> (not res!2986510) (not e!4443390))))

(assert (=> b!7441076 (= res!2986510 call!683987)))

(declare-fun bm!683982 () Bool)

(assert (=> bm!683982 (= call!683986 call!683985)))

(declare-fun b!7441077 () Bool)

(assert (=> b!7441077 (= e!4443389 e!4443386)))

(assert (=> b!7441077 (= c!1377073 (is-Union!19450 (ite c!1377016 (reg!19779 (h!78444 (exprs!8890 setElem!56552))) (ite c!1377015 (regOne!39413 (h!78444 (exprs!8890 setElem!56552))) (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))))))

(declare-fun b!7441078 () Bool)

(assert (=> b!7441078 (= e!4443390 call!683986)))

(assert (= (and d!2295387 (not res!2986511)) b!7441071))

(assert (= (and b!7441071 c!1377074) b!7441070))

(assert (= (and b!7441071 (not c!1377074)) b!7441077))

(assert (= (and b!7441070 res!2986513) b!7441074))

(assert (= (and b!7441077 c!1377073) b!7441073))

(assert (= (and b!7441077 (not c!1377073)) b!7441075))

(assert (= (and b!7441073 res!2986512) b!7441072))

(assert (= (and b!7441075 (not res!2986509)) b!7441076))

(assert (= (and b!7441076 res!2986510) b!7441078))

(assert (= (or b!7441073 b!7441078) bm!683982))

(assert (= (or b!7441072 b!7441076) bm!683980))

(assert (= (or b!7441074 bm!683982) bm!683981))

(declare-fun m!8053112 () Bool)

(assert (=> bm!683980 m!8053112))

(declare-fun m!8053114 () Bool)

(assert (=> bm!683981 m!8053114))

(declare-fun m!8053116 () Bool)

(assert (=> b!7441070 m!8053116))

(assert (=> bm!683912 d!2295387))

(declare-fun call!683991 () List!72120)

(declare-fun bm!683983 () Bool)

(declare-fun c!1377075 () Bool)

(declare-fun c!1377078 () Bool)

(declare-fun c!1377079 () Bool)

(declare-fun call!683990 () (Set Context!16780))

(assert (=> bm!683983 (= call!683990 (derivationStepZipperDown!3225 (ite c!1377078 (regOne!39413 (ite c!1376999 (regTwo!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))) (ite c!1377079 (regTwo!39412 (ite c!1376999 (regTwo!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))) (ite c!1377075 (regOne!39412 (ite c!1376999 (regTwo!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))) (reg!19779 (ite c!1376999 (regTwo!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))))))))) (ite (or c!1377078 c!1377079) (ite c!1376999 (ite (or c!1376967 c!1376968) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683868)) (Context!16781 call!683893)) (Context!16781 call!683991)) (h!78446 s!7945)))))

(declare-fun b!7441079 () Bool)

(declare-fun e!4443396 () (Set Context!16780))

(declare-fun e!4443397 () (Set Context!16780))

(assert (=> b!7441079 (= e!4443396 e!4443397)))

(assert (=> b!7441079 (= c!1377075 (is-Concat!28295 (ite c!1376999 (regTwo!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))))

(declare-fun b!7441080 () Bool)

(declare-fun call!683992 () (Set Context!16780))

(declare-fun call!683993 () (Set Context!16780))

(assert (=> b!7441080 (= e!4443396 (set.union call!683992 call!683993))))

(declare-fun d!2295389 () Bool)

(declare-fun c!1377076 () Bool)

(assert (=> d!2295389 (= c!1377076 (and (is-ElementMatch!19450 (ite c!1376999 (regTwo!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))) (= (c!1376936 (ite c!1376999 (regTwo!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))) (h!78446 s!7945))))))

(declare-fun e!4443393 () (Set Context!16780))

(assert (=> d!2295389 (= (derivationStepZipperDown!3225 (ite c!1376999 (regTwo!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))))) (ite c!1376999 (ite (or c!1376967 c!1376968) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683868)) (Context!16781 call!683893)) (h!78446 s!7945)) e!4443393)))

(declare-fun bm!683984 () Bool)

(assert (=> bm!683984 (= call!683993 call!683990)))

(declare-fun b!7441081 () Bool)

(declare-fun e!4443395 () Bool)

(assert (=> b!7441081 (= c!1377079 e!4443395)))

(declare-fun res!2986514 () Bool)

(assert (=> b!7441081 (=> (not res!2986514) (not e!4443395))))

(assert (=> b!7441081 (= res!2986514 (is-Concat!28295 (ite c!1376999 (regTwo!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))))

(declare-fun e!4443392 () (Set Context!16780))

(assert (=> b!7441081 (= e!4443392 e!4443396)))

(declare-fun b!7441082 () Bool)

(assert (=> b!7441082 (= e!4443395 (nullable!8477 (regOne!39412 (ite c!1376999 (regTwo!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))))))))))

(declare-fun bm!683985 () Bool)

(declare-fun call!683989 () List!72120)

(assert (=> bm!683985 (= call!683989 ($colon$colon!3354 (exprs!8890 (ite c!1376999 (ite (or c!1376967 c!1376968) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683868)) (Context!16781 call!683893))) (ite (or c!1377079 c!1377075) (regTwo!39412 (ite c!1376999 (regTwo!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))) (ite c!1376999 (regTwo!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))))))))))

(declare-fun bm!683986 () Bool)

(assert (=> bm!683986 (= call!683991 call!683989)))

(declare-fun bm!683987 () Bool)

(declare-fun call!683988 () (Set Context!16780))

(assert (=> bm!683987 (= call!683988 call!683993)))

(declare-fun b!7441083 () Bool)

(assert (=> b!7441083 (= e!4443393 e!4443392)))

(assert (=> b!7441083 (= c!1377078 (is-Union!19450 (ite c!1376999 (regTwo!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))))

(declare-fun b!7441084 () Bool)

(assert (=> b!7441084 (= e!4443393 (set.insert (ite c!1376999 (ite (or c!1376967 c!1376968) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683868)) (Context!16781 call!683893)) (as set.empty (Set Context!16780))))))

(declare-fun b!7441085 () Bool)

(assert (=> b!7441085 (= e!4443397 call!683988)))

(declare-fun b!7441086 () Bool)

(declare-fun e!4443394 () (Set Context!16780))

(assert (=> b!7441086 (= e!4443394 (as set.empty (Set Context!16780)))))

(declare-fun bm!683988 () Bool)

(assert (=> bm!683988 (= call!683992 (derivationStepZipperDown!3225 (ite c!1377078 (regTwo!39413 (ite c!1376999 (regTwo!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))) (regOne!39412 (ite c!1376999 (regTwo!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))))))) (ite c!1377078 (ite c!1376999 (ite (or c!1376967 c!1376968) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683868)) (Context!16781 call!683893)) (Context!16781 call!683989)) (h!78446 s!7945)))))

(declare-fun b!7441087 () Bool)

(assert (=> b!7441087 (= e!4443392 (set.union call!683990 call!683992))))

(declare-fun c!1377077 () Bool)

(declare-fun b!7441088 () Bool)

(assert (=> b!7441088 (= c!1377077 (is-Star!19450 (ite c!1376999 (regTwo!39413 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))))))))

(assert (=> b!7441088 (= e!4443397 e!4443394)))

(declare-fun b!7441089 () Bool)

(assert (=> b!7441089 (= e!4443394 call!683988)))

(assert (= (and d!2295389 c!1377076) b!7441084))

(assert (= (and d!2295389 (not c!1377076)) b!7441083))

(assert (= (and b!7441083 c!1377078) b!7441087))

(assert (= (and b!7441083 (not c!1377078)) b!7441081))

(assert (= (and b!7441081 res!2986514) b!7441082))

(assert (= (and b!7441081 c!1377079) b!7441080))

(assert (= (and b!7441081 (not c!1377079)) b!7441079))

(assert (= (and b!7441079 c!1377075) b!7441085))

(assert (= (and b!7441079 (not c!1377075)) b!7441088))

(assert (= (and b!7441088 c!1377077) b!7441089))

(assert (= (and b!7441088 (not c!1377077)) b!7441086))

(assert (= (or b!7441085 b!7441089) bm!683986))

(assert (= (or b!7441085 b!7441089) bm!683987))

(assert (= (or b!7441080 bm!683987) bm!683984))

(assert (= (or b!7441080 bm!683986) bm!683985))

(assert (= (or b!7441087 b!7441080) bm!683988))

(assert (= (or b!7441087 bm!683984) bm!683983))

(declare-fun m!8053118 () Bool)

(assert (=> bm!683983 m!8053118))

(declare-fun m!8053120 () Bool)

(assert (=> bm!683988 m!8053120))

(declare-fun m!8053122 () Bool)

(assert (=> b!7441084 m!8053122))

(declare-fun m!8053124 () Bool)

(assert (=> bm!683985 m!8053124))

(declare-fun m!8053126 () Bool)

(assert (=> b!7441082 m!8053126))

(assert (=> bm!683892 d!2295389))

(declare-fun c!1377083 () Bool)

(declare-fun bm!683989 () Bool)

(declare-fun c!1377084 () Bool)

(declare-fun call!683997 () List!72120)

(declare-fun call!683996 () (Set Context!16780))

(declare-fun c!1377080 () Bool)

(assert (=> bm!683989 (= call!683996 (derivationStepZipperDown!3225 (ite c!1377083 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))) (ite c!1377084 (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))) (ite c!1377080 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))) (reg!19779 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))) (ite (or c!1377083 c!1377084) (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))) (Context!16781 call!683997)) (h!78446 s!7945)))))

(declare-fun b!7441090 () Bool)

(declare-fun e!4443402 () (Set Context!16780))

(declare-fun e!4443403 () (Set Context!16780))

(assert (=> b!7441090 (= e!4443402 e!4443403)))

(assert (=> b!7441090 (= c!1377080 (is-Concat!28295 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))))

(declare-fun b!7441091 () Bool)

(declare-fun call!683998 () (Set Context!16780))

(declare-fun call!683999 () (Set Context!16780))

(assert (=> b!7441091 (= e!4443402 (set.union call!683998 call!683999))))

(declare-fun d!2295391 () Bool)

(declare-fun c!1377081 () Bool)

(assert (=> d!2295391 (= c!1377081 (and (is-ElementMatch!19450 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))) (= (c!1376936 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))) (h!78446 s!7945))))))

(declare-fun e!4443399 () (Set Context!16780))

(assert (=> d!2295391 (= (derivationStepZipperDown!3225 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))) (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))) (h!78446 s!7945)) e!4443399)))

(declare-fun bm!683990 () Bool)

(assert (=> bm!683990 (= call!683999 call!683996)))

(declare-fun b!7441092 () Bool)

(declare-fun e!4443401 () Bool)

(assert (=> b!7441092 (= c!1377084 e!4443401)))

(declare-fun res!2986515 () Bool)

(assert (=> b!7441092 (=> (not res!2986515) (not e!4443401))))

(assert (=> b!7441092 (= res!2986515 (is-Concat!28295 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))))

(declare-fun e!4443398 () (Set Context!16780))

(assert (=> b!7441092 (= e!4443398 e!4443402)))

(declare-fun b!7441093 () Bool)

(assert (=> b!7441093 (= e!4443401 (nullable!8477 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))))

(declare-fun call!683995 () List!72120)

(declare-fun bm!683991 () Bool)

(assert (=> bm!683991 (= call!683995 ($colon$colon!3354 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))) (ite (or c!1377084 c!1377080) (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))) (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))))

(declare-fun bm!683992 () Bool)

(assert (=> bm!683992 (= call!683997 call!683995)))

(declare-fun bm!683993 () Bool)

(declare-fun call!683994 () (Set Context!16780))

(assert (=> bm!683993 (= call!683994 call!683999)))

(declare-fun b!7441094 () Bool)

(assert (=> b!7441094 (= e!4443399 e!4443398)))

(assert (=> b!7441094 (= c!1377083 (is-Union!19450 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))))

(declare-fun b!7441095 () Bool)

(assert (=> b!7441095 (= e!4443399 (set.insert (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))) (as set.empty (Set Context!16780))))))

(declare-fun b!7441096 () Bool)

(assert (=> b!7441096 (= e!4443403 call!683994)))

(declare-fun b!7441097 () Bool)

(declare-fun e!4443400 () (Set Context!16780))

(assert (=> b!7441097 (= e!4443400 (as set.empty (Set Context!16780)))))

(declare-fun bm!683994 () Bool)

(assert (=> bm!683994 (= call!683998 (derivationStepZipperDown!3225 (ite c!1377083 (regTwo!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))) (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))) (ite c!1377083 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))) (Context!16781 call!683995)) (h!78446 s!7945)))))

(declare-fun b!7441098 () Bool)

(assert (=> b!7441098 (= e!4443398 (set.union call!683996 call!683998))))

(declare-fun b!7441099 () Bool)

(declare-fun c!1377082 () Bool)

(assert (=> b!7441099 (= c!1377082 (is-Star!19450 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))))

(assert (=> b!7441099 (= e!4443403 e!4443400)))

(declare-fun b!7441100 () Bool)

(assert (=> b!7441100 (= e!4443400 call!683994)))

(assert (= (and d!2295391 c!1377081) b!7441095))

(assert (= (and d!2295391 (not c!1377081)) b!7441094))

(assert (= (and b!7441094 c!1377083) b!7441098))

(assert (= (and b!7441094 (not c!1377083)) b!7441092))

(assert (= (and b!7441092 res!2986515) b!7441093))

(assert (= (and b!7441092 c!1377084) b!7441091))

(assert (= (and b!7441092 (not c!1377084)) b!7441090))

(assert (= (and b!7441090 c!1377080) b!7441096))

(assert (= (and b!7441090 (not c!1377080)) b!7441099))

(assert (= (and b!7441099 c!1377082) b!7441100))

(assert (= (and b!7441099 (not c!1377082)) b!7441097))

(assert (= (or b!7441096 b!7441100) bm!683992))

(assert (= (or b!7441096 b!7441100) bm!683993))

(assert (= (or b!7441091 bm!683993) bm!683990))

(assert (= (or b!7441091 bm!683992) bm!683991))

(assert (= (or b!7441098 b!7441091) bm!683994))

(assert (= (or b!7441098 bm!683990) bm!683989))

(declare-fun m!8053128 () Bool)

(assert (=> bm!683989 m!8053128))

(declare-fun m!8053130 () Bool)

(assert (=> bm!683994 m!8053130))

(declare-fun m!8053132 () Bool)

(assert (=> b!7441095 m!8053132))

(declare-fun m!8053134 () Bool)

(assert (=> bm!683991 m!8053134))

(declare-fun m!8053136 () Bool)

(assert (=> b!7441093 m!8053136))

(assert (=> bm!683886 d!2295391))

(declare-fun c!1377089 () Bool)

(declare-fun call!684002 () (Set Context!16780))

(declare-fun c!1377088 () Bool)

(declare-fun bm!683995 () Bool)

(declare-fun call!684003 () List!72120)

(declare-fun c!1377085 () Bool)

(assert (=> bm!683995 (= call!684002 (derivationStepZipperDown!3225 (ite c!1377088 (regOne!39413 (ite c!1377009 (regOne!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377010 (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377006 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (reg!19779 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))) (ite c!1377089 (regTwo!39412 (ite c!1377009 (regOne!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377010 (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377006 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (reg!19779 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))) (ite c!1377085 (regOne!39412 (ite c!1377009 (regOne!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377010 (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377006 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (reg!19779 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))) (reg!19779 (ite c!1377009 (regOne!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377010 (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377006 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (reg!19779 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))))))) (ite (or c!1377088 c!1377089) (ite (or c!1377009 c!1377010) (ite c!1376967 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683866)) (Context!16781 call!683907)) (Context!16781 call!684003)) (h!78446 s!7945)))))

(declare-fun b!7441101 () Bool)

(declare-fun e!4443408 () (Set Context!16780))

(declare-fun e!4443409 () (Set Context!16780))

(assert (=> b!7441101 (= e!4443408 e!4443409)))

(assert (=> b!7441101 (= c!1377085 (is-Concat!28295 (ite c!1377009 (regOne!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377010 (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377006 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (reg!19779 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))))))

(declare-fun b!7441102 () Bool)

(declare-fun call!684004 () (Set Context!16780))

(declare-fun call!684005 () (Set Context!16780))

(assert (=> b!7441102 (= e!4443408 (set.union call!684004 call!684005))))

(declare-fun d!2295393 () Bool)

(declare-fun c!1377086 () Bool)

(assert (=> d!2295393 (= c!1377086 (and (is-ElementMatch!19450 (ite c!1377009 (regOne!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377010 (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377006 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (reg!19779 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))) (= (c!1376936 (ite c!1377009 (regOne!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377010 (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377006 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (reg!19779 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))) (h!78446 s!7945))))))

(declare-fun e!4443405 () (Set Context!16780))

(assert (=> d!2295393 (= (derivationStepZipperDown!3225 (ite c!1377009 (regOne!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377010 (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377006 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (reg!19779 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))) (ite (or c!1377009 c!1377010) (ite c!1376967 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683866)) (Context!16781 call!683907)) (h!78446 s!7945)) e!4443405)))

(declare-fun bm!683996 () Bool)

(assert (=> bm!683996 (= call!684005 call!684002)))

(declare-fun b!7441103 () Bool)

(declare-fun e!4443407 () Bool)

(assert (=> b!7441103 (= c!1377089 e!4443407)))

(declare-fun res!2986516 () Bool)

(assert (=> b!7441103 (=> (not res!2986516) (not e!4443407))))

(assert (=> b!7441103 (= res!2986516 (is-Concat!28295 (ite c!1377009 (regOne!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377010 (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377006 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (reg!19779 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))))))

(declare-fun e!4443404 () (Set Context!16780))

(assert (=> b!7441103 (= e!4443404 e!4443408)))

(declare-fun b!7441104 () Bool)

(assert (=> b!7441104 (= e!4443407 (nullable!8477 (regOne!39412 (ite c!1377009 (regOne!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377010 (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377006 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (reg!19779 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))))))))

(declare-fun bm!683997 () Bool)

(declare-fun call!684001 () List!72120)

(assert (=> bm!683997 (= call!684001 ($colon$colon!3354 (exprs!8890 (ite (or c!1377009 c!1377010) (ite c!1376967 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683866)) (Context!16781 call!683907))) (ite (or c!1377089 c!1377085) (regTwo!39412 (ite c!1377009 (regOne!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377010 (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377006 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (reg!19779 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))) (ite c!1377009 (regOne!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377010 (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377006 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (reg!19779 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))))))))

(declare-fun bm!683998 () Bool)

(assert (=> bm!683998 (= call!684003 call!684001)))

(declare-fun bm!683999 () Bool)

(declare-fun call!684000 () (Set Context!16780))

(assert (=> bm!683999 (= call!684000 call!684005)))

(declare-fun b!7441105 () Bool)

(assert (=> b!7441105 (= e!4443405 e!4443404)))

(assert (=> b!7441105 (= c!1377088 (is-Union!19450 (ite c!1377009 (regOne!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377010 (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377006 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (reg!19779 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))))))

(declare-fun b!7441106 () Bool)

(assert (=> b!7441106 (= e!4443405 (set.insert (ite (or c!1377009 c!1377010) (ite c!1376967 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683866)) (Context!16781 call!683907)) (as set.empty (Set Context!16780))))))

(declare-fun b!7441107 () Bool)

(assert (=> b!7441107 (= e!4443409 call!684000)))

(declare-fun b!7441108 () Bool)

(declare-fun e!4443406 () (Set Context!16780))

(assert (=> b!7441108 (= e!4443406 (as set.empty (Set Context!16780)))))

(declare-fun bm!684000 () Bool)

(assert (=> bm!684000 (= call!684004 (derivationStepZipperDown!3225 (ite c!1377088 (regTwo!39413 (ite c!1377009 (regOne!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377010 (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377006 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (reg!19779 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))) (regOne!39412 (ite c!1377009 (regOne!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377010 (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377006 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (reg!19779 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))))) (ite c!1377088 (ite (or c!1377009 c!1377010) (ite c!1376967 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683866)) (Context!16781 call!683907)) (Context!16781 call!684001)) (h!78446 s!7945)))))

(declare-fun b!7441109 () Bool)

(assert (=> b!7441109 (= e!4443404 (set.union call!684002 call!684004))))

(declare-fun c!1377087 () Bool)

(declare-fun b!7441110 () Bool)

(assert (=> b!7441110 (= c!1377087 (is-Star!19450 (ite c!1377009 (regOne!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377010 (regTwo!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (ite c!1377006 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (reg!19779 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))))))

(assert (=> b!7441110 (= e!4443409 e!4443406)))

(declare-fun b!7441111 () Bool)

(assert (=> b!7441111 (= e!4443406 call!684000)))

(assert (= (and d!2295393 c!1377086) b!7441106))

(assert (= (and d!2295393 (not c!1377086)) b!7441105))

(assert (= (and b!7441105 c!1377088) b!7441109))

(assert (= (and b!7441105 (not c!1377088)) b!7441103))

(assert (= (and b!7441103 res!2986516) b!7441104))

(assert (= (and b!7441103 c!1377089) b!7441102))

(assert (= (and b!7441103 (not c!1377089)) b!7441101))

(assert (= (and b!7441101 c!1377085) b!7441107))

(assert (= (and b!7441101 (not c!1377085)) b!7441110))

(assert (= (and b!7441110 c!1377087) b!7441111))

(assert (= (and b!7441110 (not c!1377087)) b!7441108))

(assert (= (or b!7441107 b!7441111) bm!683998))

(assert (= (or b!7441107 b!7441111) bm!683999))

(assert (= (or b!7441102 bm!683999) bm!683996))

(assert (= (or b!7441102 bm!683998) bm!683997))

(assert (= (or b!7441109 b!7441102) bm!684000))

(assert (= (or b!7441109 bm!683996) bm!683995))

(declare-fun m!8053138 () Bool)

(assert (=> bm!683995 m!8053138))

(declare-fun m!8053140 () Bool)

(assert (=> bm!684000 m!8053140))

(declare-fun m!8053142 () Bool)

(assert (=> b!7441106 m!8053142))

(declare-fun m!8053144 () Bool)

(assert (=> bm!683997 m!8053144))

(declare-fun m!8053146 () Bool)

(assert (=> b!7441104 m!8053146))

(assert (=> bm!683899 d!2295393))

(declare-fun d!2295395 () Bool)

(assert (=> d!2295395 (= (nullable!8477 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))) (nullableFct!3420 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))

(declare-fun bs!1926199 () Bool)

(assert (= bs!1926199 d!2295395))

(declare-fun m!8053148 () Bool)

(assert (=> bs!1926199 m!8053148))

(assert (=> b!7440736 d!2295395))

(declare-fun d!2295397 () Bool)

(assert (=> d!2295397 (= (nullable!8477 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))) (nullableFct!3420 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))))

(declare-fun bs!1926200 () Bool)

(assert (= bs!1926200 d!2295397))

(declare-fun m!8053150 () Bool)

(assert (=> bs!1926200 m!8053150))

(assert (=> b!7440707 d!2295397))

(declare-fun d!2295399 () Bool)

(declare-fun c!1377090 () Bool)

(assert (=> d!2295399 (= c!1377090 (is-Nil!71997 (t!386684 res!2986307)))))

(declare-fun e!4443410 () (Set Context!16780))

(assert (=> d!2295399 (= (content!15235 (t!386684 res!2986307)) e!4443410)))

(declare-fun b!7441112 () Bool)

(assert (=> b!7441112 (= e!4443410 (as set.empty (Set Context!16780)))))

(declare-fun b!7441113 () Bool)

(assert (=> b!7441113 (= e!4443410 (set.union (set.insert (h!78445 (t!386684 res!2986307)) (as set.empty (Set Context!16780))) (content!15235 (t!386684 (t!386684 res!2986307)))))))

(assert (= (and d!2295399 c!1377090) b!7441112))

(assert (= (and d!2295399 (not c!1377090)) b!7441113))

(declare-fun m!8053152 () Bool)

(assert (=> b!7441113 m!8053152))

(declare-fun m!8053154 () Bool)

(assert (=> b!7441113 m!8053154))

(assert (=> b!7440664 d!2295399))

(declare-fun b!7441115 () Bool)

(declare-fun e!4443414 () Bool)

(declare-fun e!4443415 () Bool)

(assert (=> b!7441115 (= e!4443414 e!4443415)))

(declare-fun c!1377092 () Bool)

(assert (=> b!7441115 (= c!1377092 (is-Star!19450 (ite c!1377019 (reg!19779 (h!78444 (exprs!8890 empty!3659))) (ite c!1377018 (regOne!39413 (h!78444 (exprs!8890 empty!3659))) (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))))))

(declare-fun b!7441116 () Bool)

(declare-fun e!4443413 () Bool)

(declare-fun call!684008 () Bool)

(assert (=> b!7441116 (= e!4443413 call!684008)))

(declare-fun c!1377091 () Bool)

(declare-fun bm!684001 () Bool)

(assert (=> bm!684001 (= call!684008 (validRegex!9979 (ite c!1377091 (regTwo!39413 (ite c!1377019 (reg!19779 (h!78444 (exprs!8890 empty!3659))) (ite c!1377018 (regOne!39413 (h!78444 (exprs!8890 empty!3659))) (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) (regOne!39412 (ite c!1377019 (reg!19779 (h!78444 (exprs!8890 empty!3659))) (ite c!1377018 (regOne!39413 (h!78444 (exprs!8890 empty!3659))) (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))))))))

(declare-fun call!684006 () Bool)

(declare-fun bm!684002 () Bool)

(assert (=> bm!684002 (= call!684006 (validRegex!9979 (ite c!1377092 (reg!19779 (ite c!1377019 (reg!19779 (h!78444 (exprs!8890 empty!3659))) (ite c!1377018 (regOne!39413 (h!78444 (exprs!8890 empty!3659))) (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) (ite c!1377091 (regOne!39413 (ite c!1377019 (reg!19779 (h!78444 (exprs!8890 empty!3659))) (ite c!1377018 (regOne!39413 (h!78444 (exprs!8890 empty!3659))) (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) (regTwo!39412 (ite c!1377019 (reg!19779 (h!78444 (exprs!8890 empty!3659))) (ite c!1377018 (regOne!39413 (h!78444 (exprs!8890 empty!3659))) (regTwo!39412 (h!78444 (exprs!8890 empty!3659))))))))))))

(declare-fun b!7441117 () Bool)

(declare-fun res!2986520 () Bool)

(assert (=> b!7441117 (=> (not res!2986520) (not e!4443413))))

(declare-fun call!684007 () Bool)

(assert (=> b!7441117 (= res!2986520 call!684007)))

(declare-fun e!4443412 () Bool)

(assert (=> b!7441117 (= e!4443412 e!4443413)))

(declare-fun b!7441118 () Bool)

(declare-fun e!4443417 () Bool)

(assert (=> b!7441118 (= e!4443417 call!684006)))

(declare-fun b!7441119 () Bool)

(declare-fun res!2986517 () Bool)

(declare-fun e!4443411 () Bool)

(assert (=> b!7441119 (=> res!2986517 e!4443411)))

(assert (=> b!7441119 (= res!2986517 (not (is-Concat!28295 (ite c!1377019 (reg!19779 (h!78444 (exprs!8890 empty!3659))) (ite c!1377018 (regOne!39413 (h!78444 (exprs!8890 empty!3659))) (regTwo!39412 (h!78444 (exprs!8890 empty!3659))))))))))

(assert (=> b!7441119 (= e!4443412 e!4443411)))

(declare-fun d!2295401 () Bool)

(declare-fun res!2986519 () Bool)

(assert (=> d!2295401 (=> res!2986519 e!4443414)))

(assert (=> d!2295401 (= res!2986519 (is-ElementMatch!19450 (ite c!1377019 (reg!19779 (h!78444 (exprs!8890 empty!3659))) (ite c!1377018 (regOne!39413 (h!78444 (exprs!8890 empty!3659))) (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))))))

(assert (=> d!2295401 (= (validRegex!9979 (ite c!1377019 (reg!19779 (h!78444 (exprs!8890 empty!3659))) (ite c!1377018 (regOne!39413 (h!78444 (exprs!8890 empty!3659))) (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) e!4443414)))

(declare-fun b!7441114 () Bool)

(assert (=> b!7441114 (= e!4443415 e!4443417)))

(declare-fun res!2986521 () Bool)

(assert (=> b!7441114 (= res!2986521 (not (nullable!8477 (reg!19779 (ite c!1377019 (reg!19779 (h!78444 (exprs!8890 empty!3659))) (ite c!1377018 (regOne!39413 (h!78444 (exprs!8890 empty!3659))) (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))))))))

(assert (=> b!7441114 (=> (not res!2986521) (not e!4443417))))

(declare-fun b!7441120 () Bool)

(declare-fun e!4443416 () Bool)

(assert (=> b!7441120 (= e!4443411 e!4443416)))

(declare-fun res!2986518 () Bool)

(assert (=> b!7441120 (=> (not res!2986518) (not e!4443416))))

(assert (=> b!7441120 (= res!2986518 call!684008)))

(declare-fun bm!684003 () Bool)

(assert (=> bm!684003 (= call!684007 call!684006)))

(declare-fun b!7441121 () Bool)

(assert (=> b!7441121 (= e!4443415 e!4443412)))

(assert (=> b!7441121 (= c!1377091 (is-Union!19450 (ite c!1377019 (reg!19779 (h!78444 (exprs!8890 empty!3659))) (ite c!1377018 (regOne!39413 (h!78444 (exprs!8890 empty!3659))) (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))))))

(declare-fun b!7441122 () Bool)

(assert (=> b!7441122 (= e!4443416 call!684007)))

(assert (= (and d!2295401 (not res!2986519)) b!7441115))

(assert (= (and b!7441115 c!1377092) b!7441114))

(assert (= (and b!7441115 (not c!1377092)) b!7441121))

(assert (= (and b!7441114 res!2986521) b!7441118))

(assert (= (and b!7441121 c!1377091) b!7441117))

(assert (= (and b!7441121 (not c!1377091)) b!7441119))

(assert (= (and b!7441117 res!2986520) b!7441116))

(assert (= (and b!7441119 (not res!2986517)) b!7441120))

(assert (= (and b!7441120 res!2986518) b!7441122))

(assert (= (or b!7441117 b!7441122) bm!684003))

(assert (= (or b!7441116 b!7441120) bm!684001))

(assert (= (or b!7441118 bm!684003) bm!684002))

(declare-fun m!8053156 () Bool)

(assert (=> bm!684001 m!8053156))

(declare-fun m!8053158 () Bool)

(assert (=> bm!684002 m!8053158))

(declare-fun m!8053160 () Bool)

(assert (=> b!7441114 m!8053160))

(assert (=> bm!683915 d!2295401))

(declare-fun d!2295403 () Bool)

(declare-fun res!2986522 () Bool)

(declare-fun e!4443418 () Bool)

(assert (=> d!2295403 (=> res!2986522 e!4443418)))

(assert (=> d!2295403 (= res!2986522 (is-Nil!71996 (t!386683 (exprs!8890 setElem!56558))))))

(assert (=> d!2295403 (= (forall!18228 (t!386683 (exprs!8890 setElem!56558)) lambda!460405) e!4443418)))

(declare-fun b!7441123 () Bool)

(declare-fun e!4443419 () Bool)

(assert (=> b!7441123 (= e!4443418 e!4443419)))

(declare-fun res!2986523 () Bool)

(assert (=> b!7441123 (=> (not res!2986523) (not e!4443419))))

(assert (=> b!7441123 (= res!2986523 (dynLambda!29725 lambda!460405 (h!78444 (t!386683 (exprs!8890 setElem!56558)))))))

(declare-fun b!7441124 () Bool)

(assert (=> b!7441124 (= e!4443419 (forall!18228 (t!386683 (t!386683 (exprs!8890 setElem!56558))) lambda!460405))))

(assert (= (and d!2295403 (not res!2986522)) b!7441123))

(assert (= (and b!7441123 res!2986523) b!7441124))

(declare-fun b_lambda!287491 () Bool)

(assert (=> (not b_lambda!287491) (not b!7441123)))

(declare-fun m!8053162 () Bool)

(assert (=> b!7441123 m!8053162))

(declare-fun m!8053164 () Bool)

(assert (=> b!7441124 m!8053164))

(assert (=> b!7440732 d!2295403))

(declare-fun d!2295405 () Bool)

(declare-fun res!2986524 () Bool)

(declare-fun e!4443420 () Bool)

(assert (=> d!2295405 (=> res!2986524 e!4443420)))

(assert (=> d!2295405 (= res!2986524 (is-Nil!71997 (t!386684 res!2986307)))))

(assert (=> d!2295405 (= (noDuplicate!3123 (t!386684 res!2986307)) e!4443420)))

(declare-fun b!7441125 () Bool)

(declare-fun e!4443421 () Bool)

(assert (=> b!7441125 (= e!4443420 e!4443421)))

(declare-fun res!2986525 () Bool)

(assert (=> b!7441125 (=> (not res!2986525) (not e!4443421))))

(assert (=> b!7441125 (= res!2986525 (not (contains!20861 (t!386684 (t!386684 res!2986307)) (h!78445 (t!386684 res!2986307)))))))

(declare-fun b!7441126 () Bool)

(assert (=> b!7441126 (= e!4443421 (noDuplicate!3123 (t!386684 (t!386684 res!2986307))))))

(assert (= (and d!2295405 (not res!2986524)) b!7441125))

(assert (= (and b!7441125 res!2986525) b!7441126))

(declare-fun m!8053166 () Bool)

(assert (=> b!7441125 m!8053166))

(declare-fun m!8053168 () Bool)

(assert (=> b!7441126 m!8053168))

(assert (=> b!7440721 d!2295405))

(declare-fun d!2295407 () Bool)

(declare-fun res!2986526 () Bool)

(declare-fun e!4443422 () Bool)

(assert (=> d!2295407 (=> res!2986526 e!4443422)))

(assert (=> d!2295407 (= res!2986526 (is-Nil!71996 (exprs!8890 setElem!56564)))))

(assert (=> d!2295407 (= (forall!18228 (exprs!8890 setElem!56564) lambda!460419) e!4443422)))

(declare-fun b!7441127 () Bool)

(declare-fun e!4443423 () Bool)

(assert (=> b!7441127 (= e!4443422 e!4443423)))

(declare-fun res!2986527 () Bool)

(assert (=> b!7441127 (=> (not res!2986527) (not e!4443423))))

(assert (=> b!7441127 (= res!2986527 (dynLambda!29725 lambda!460419 (h!78444 (exprs!8890 setElem!56564))))))

(declare-fun b!7441128 () Bool)

(assert (=> b!7441128 (= e!4443423 (forall!18228 (t!386683 (exprs!8890 setElem!56564)) lambda!460419))))

(assert (= (and d!2295407 (not res!2986526)) b!7441127))

(assert (= (and b!7441127 res!2986527) b!7441128))

(declare-fun b_lambda!287493 () Bool)

(assert (=> (not b_lambda!287493) (not b!7441127)))

(declare-fun m!8053170 () Bool)

(assert (=> b!7441127 m!8053170))

(declare-fun m!8053172 () Bool)

(assert (=> b!7441128 m!8053172))

(assert (=> d!2295255 d!2295407))

(declare-fun d!2295409 () Bool)

(assert (=> d!2295409 (= (nullable!8477 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))))) (nullableFct!3420 (regOne!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))))))))

(declare-fun bs!1926201 () Bool)

(assert (= bs!1926201 d!2295409))

(declare-fun m!8053174 () Bool)

(assert (=> bs!1926201 m!8053174))

(assert (=> b!7440623 d!2295409))

(declare-fun d!2295411 () Bool)

(declare-fun res!2986528 () Bool)

(declare-fun e!4443424 () Bool)

(assert (=> d!2295411 (=> res!2986528 e!4443424)))

(assert (=> d!2295411 (= res!2986528 (is-Nil!71996 (t!386683 (t!386683 (exprs!8890 setElem!56552)))))))

(assert (=> d!2295411 (= (forall!18228 (t!386683 (t!386683 (exprs!8890 setElem!56552))) lambda!460391) e!4443424)))

(declare-fun b!7441129 () Bool)

(declare-fun e!4443425 () Bool)

(assert (=> b!7441129 (= e!4443424 e!4443425)))

(declare-fun res!2986529 () Bool)

(assert (=> b!7441129 (=> (not res!2986529) (not e!4443425))))

(assert (=> b!7441129 (= res!2986529 (dynLambda!29725 lambda!460391 (h!78444 (t!386683 (t!386683 (exprs!8890 setElem!56552))))))))

(declare-fun b!7441130 () Bool)

(assert (=> b!7441130 (= e!4443425 (forall!18228 (t!386683 (t!386683 (t!386683 (exprs!8890 setElem!56552)))) lambda!460391))))

(assert (= (and d!2295411 (not res!2986528)) b!7441129))

(assert (= (and b!7441129 res!2986529) b!7441130))

(declare-fun b_lambda!287495 () Bool)

(assert (=> (not b_lambda!287495) (not b!7441129)))

(declare-fun m!8053176 () Bool)

(assert (=> b!7441129 m!8053176))

(declare-fun m!8053178 () Bool)

(assert (=> b!7441130 m!8053178))

(assert (=> b!7440677 d!2295411))

(declare-fun d!2295413 () Bool)

(declare-fun res!2986530 () Bool)

(declare-fun e!4443426 () Bool)

(assert (=> d!2295413 (=> res!2986530 e!4443426)))

(assert (=> d!2295413 (= res!2986530 (is-Nil!71996 (exprs!8890 _$3!601)))))

(assert (=> d!2295413 (= (forall!18228 (exprs!8890 _$3!601) lambda!460418) e!4443426)))

(declare-fun b!7441131 () Bool)

(declare-fun e!4443427 () Bool)

(assert (=> b!7441131 (= e!4443426 e!4443427)))

(declare-fun res!2986531 () Bool)

(assert (=> b!7441131 (=> (not res!2986531) (not e!4443427))))

(assert (=> b!7441131 (= res!2986531 (dynLambda!29725 lambda!460418 (h!78444 (exprs!8890 _$3!601))))))

(declare-fun b!7441132 () Bool)

(assert (=> b!7441132 (= e!4443427 (forall!18228 (t!386683 (exprs!8890 _$3!601)) lambda!460418))))

(assert (= (and d!2295413 (not res!2986530)) b!7441131))

(assert (= (and b!7441131 res!2986531) b!7441132))

(declare-fun b_lambda!287497 () Bool)

(assert (=> (not b_lambda!287497) (not b!7441131)))

(declare-fun m!8053180 () Bool)

(assert (=> b!7441131 m!8053180))

(declare-fun m!8053182 () Bool)

(assert (=> b!7441132 m!8053182))

(assert (=> d!2295251 d!2295413))

(declare-fun d!2295415 () Bool)

(assert (=> d!2295415 (= (nullable!8477 (reg!19779 (h!78444 (exprs!8890 empty!3659)))) (nullableFct!3420 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))))

(declare-fun bs!1926202 () Bool)

(assert (= bs!1926202 d!2295415))

(declare-fun m!8053184 () Bool)

(assert (=> bs!1926202 m!8053184))

(assert (=> b!7440722 d!2295415))

(declare-fun c!1377096 () Bool)

(declare-fun call!684011 () (Set Context!16780))

(declare-fun call!684012 () List!72120)

(declare-fun c!1377097 () Bool)

(declare-fun bm!684004 () Bool)

(declare-fun c!1377093 () Bool)

(assert (=> bm!684004 (= call!684011 (derivationStepZipperDown!3225 (ite c!1377096 (regOne!39413 (ite c!1377009 (regTwo!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377097 (regTwo!39412 (ite c!1377009 (regTwo!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377093 (regOne!39412 (ite c!1377009 (regTwo!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))) (reg!19779 (ite c!1377009 (regTwo!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))))) (ite (or c!1377096 c!1377097) (ite c!1377009 (ite c!1376967 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683866)) (Context!16781 call!683905)) (Context!16781 call!684012)) (h!78446 s!7945)))))

(declare-fun b!7441133 () Bool)

(declare-fun e!4443432 () (Set Context!16780))

(declare-fun e!4443433 () (Set Context!16780))

(assert (=> b!7441133 (= e!4443432 e!4443433)))

(assert (=> b!7441133 (= c!1377093 (is-Concat!28295 (ite c!1377009 (regTwo!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))))

(declare-fun b!7441134 () Bool)

(declare-fun call!684013 () (Set Context!16780))

(declare-fun call!684014 () (Set Context!16780))

(assert (=> b!7441134 (= e!4443432 (set.union call!684013 call!684014))))

(declare-fun d!2295417 () Bool)

(declare-fun c!1377094 () Bool)

(assert (=> d!2295417 (= c!1377094 (and (is-ElementMatch!19450 (ite c!1377009 (regTwo!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))) (= (c!1376936 (ite c!1377009 (regTwo!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))) (h!78446 s!7945))))))

(declare-fun e!4443429 () (Set Context!16780))

(assert (=> d!2295417 (= (derivationStepZipperDown!3225 (ite c!1377009 (regTwo!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))) (ite c!1377009 (ite c!1376967 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683866)) (Context!16781 call!683905)) (h!78446 s!7945)) e!4443429)))

(declare-fun bm!684005 () Bool)

(assert (=> bm!684005 (= call!684014 call!684011)))

(declare-fun b!7441135 () Bool)

(declare-fun e!4443431 () Bool)

(assert (=> b!7441135 (= c!1377097 e!4443431)))

(declare-fun res!2986532 () Bool)

(assert (=> b!7441135 (=> (not res!2986532) (not e!4443431))))

(assert (=> b!7441135 (= res!2986532 (is-Concat!28295 (ite c!1377009 (regTwo!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))))

(declare-fun e!4443428 () (Set Context!16780))

(assert (=> b!7441135 (= e!4443428 e!4443432)))

(declare-fun b!7441136 () Bool)

(assert (=> b!7441136 (= e!4443431 (nullable!8477 (regOne!39412 (ite c!1377009 (regTwo!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))))))

(declare-fun bm!684006 () Bool)

(declare-fun call!684010 () List!72120)

(assert (=> bm!684006 (= call!684010 ($colon$colon!3354 (exprs!8890 (ite c!1377009 (ite c!1376967 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683866)) (Context!16781 call!683905))) (ite (or c!1377097 c!1377093) (regTwo!39412 (ite c!1377009 (regTwo!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1377009 (regTwo!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))))))

(declare-fun bm!684007 () Bool)

(assert (=> bm!684007 (= call!684012 call!684010)))

(declare-fun bm!684008 () Bool)

(declare-fun call!684009 () (Set Context!16780))

(assert (=> bm!684008 (= call!684009 call!684014)))

(declare-fun b!7441137 () Bool)

(assert (=> b!7441137 (= e!4443429 e!4443428)))

(assert (=> b!7441137 (= c!1377096 (is-Union!19450 (ite c!1377009 (regTwo!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))))

(declare-fun b!7441138 () Bool)

(assert (=> b!7441138 (= e!4443429 (set.insert (ite c!1377009 (ite c!1376967 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683866)) (Context!16781 call!683905)) (as set.empty (Set Context!16780))))))

(declare-fun b!7441139 () Bool)

(assert (=> b!7441139 (= e!4443433 call!684009)))

(declare-fun b!7441140 () Bool)

(declare-fun e!4443430 () (Set Context!16780))

(assert (=> b!7441140 (= e!4443430 (as set.empty (Set Context!16780)))))

(declare-fun bm!684009 () Bool)

(assert (=> bm!684009 (= call!684013 (derivationStepZipperDown!3225 (ite c!1377096 (regTwo!39413 (ite c!1377009 (regTwo!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))) (regOne!39412 (ite c!1377009 (regTwo!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))) (ite c!1377096 (ite c!1377009 (ite c!1376967 (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683866)) (Context!16781 call!683905)) (Context!16781 call!684010)) (h!78446 s!7945)))))

(declare-fun b!7441141 () Bool)

(assert (=> b!7441141 (= e!4443428 (set.union call!684011 call!684013))))

(declare-fun b!7441142 () Bool)

(declare-fun c!1377095 () Bool)

(assert (=> b!7441142 (= c!1377095 (is-Star!19450 (ite c!1377009 (regTwo!39413 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))))))))

(assert (=> b!7441142 (= e!4443433 e!4443430)))

(declare-fun b!7441143 () Bool)

(assert (=> b!7441143 (= e!4443430 call!684009)))

(assert (= (and d!2295417 c!1377094) b!7441138))

(assert (= (and d!2295417 (not c!1377094)) b!7441137))

(assert (= (and b!7441137 c!1377096) b!7441141))

(assert (= (and b!7441137 (not c!1377096)) b!7441135))

(assert (= (and b!7441135 res!2986532) b!7441136))

(assert (= (and b!7441135 c!1377097) b!7441134))

(assert (= (and b!7441135 (not c!1377097)) b!7441133))

(assert (= (and b!7441133 c!1377093) b!7441139))

(assert (= (and b!7441133 (not c!1377093)) b!7441142))

(assert (= (and b!7441142 c!1377095) b!7441143))

(assert (= (and b!7441142 (not c!1377095)) b!7441140))

(assert (= (or b!7441139 b!7441143) bm!684007))

(assert (= (or b!7441139 b!7441143) bm!684008))

(assert (= (or b!7441134 bm!684008) bm!684005))

(assert (= (or b!7441134 bm!684007) bm!684006))

(assert (= (or b!7441141 b!7441134) bm!684009))

(assert (= (or b!7441141 bm!684005) bm!684004))

(declare-fun m!8053186 () Bool)

(assert (=> bm!684004 m!8053186))

(declare-fun m!8053188 () Bool)

(assert (=> bm!684009 m!8053188))

(declare-fun m!8053190 () Bool)

(assert (=> b!7441138 m!8053190))

(declare-fun m!8053192 () Bool)

(assert (=> bm!684006 m!8053192))

(declare-fun m!8053194 () Bool)

(assert (=> b!7441136 m!8053194))

(assert (=> bm!683904 d!2295417))

(declare-fun b!7441144 () Bool)

(declare-fun e!4443437 () Bool)

(declare-fun e!4443438 () Bool)

(assert (=> b!7441144 (= e!4443437 e!4443438)))

(declare-fun res!2986537 () Bool)

(declare-fun call!684016 () Bool)

(assert (=> b!7441144 (= res!2986537 call!684016)))

(assert (=> b!7441144 (=> (not res!2986537) (not e!4443438))))

(declare-fun bm!684010 () Bool)

(declare-fun call!684015 () Bool)

(declare-fun c!1377098 () Bool)

(assert (=> bm!684010 (= call!684015 (nullable!8477 (ite c!1377098 (regTwo!39413 (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))) (regTwo!39412 (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))))

(declare-fun b!7441145 () Bool)

(assert (=> b!7441145 (= e!4443438 call!684015)))

(declare-fun b!7441146 () Bool)

(declare-fun e!4443435 () Bool)

(assert (=> b!7441146 (= e!4443435 e!4443437)))

(assert (=> b!7441146 (= c!1377098 (is-Union!19450 (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))

(declare-fun b!7441147 () Bool)

(declare-fun e!4443439 () Bool)

(assert (=> b!7441147 (= e!4443439 call!684015)))

(declare-fun d!2295419 () Bool)

(declare-fun res!2986534 () Bool)

(declare-fun e!4443436 () Bool)

(assert (=> d!2295419 (=> res!2986534 e!4443436)))

(assert (=> d!2295419 (= res!2986534 (is-EmptyExpr!19450 (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))

(assert (=> d!2295419 (= (nullableFct!3420 (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))) e!4443436)))

(declare-fun bm!684011 () Bool)

(assert (=> bm!684011 (= call!684016 (nullable!8477 (ite c!1377098 (regOne!39413 (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))) (regOne!39412 (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))))

(declare-fun b!7441148 () Bool)

(assert (=> b!7441148 (= e!4443437 e!4443439)))

(declare-fun res!2986535 () Bool)

(assert (=> b!7441148 (= res!2986535 call!684016)))

(assert (=> b!7441148 (=> res!2986535 e!4443439)))

(declare-fun b!7441149 () Bool)

(declare-fun e!4443434 () Bool)

(assert (=> b!7441149 (= e!4443434 e!4443435)))

(declare-fun res!2986533 () Bool)

(assert (=> b!7441149 (=> res!2986533 e!4443435)))

(assert (=> b!7441149 (= res!2986533 (is-Star!19450 (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))

(declare-fun b!7441150 () Bool)

(assert (=> b!7441150 (= e!4443436 e!4443434)))

(declare-fun res!2986536 () Bool)

(assert (=> b!7441150 (=> (not res!2986536) (not e!4443434))))

(assert (=> b!7441150 (= res!2986536 (and (not (is-EmptyLang!19450 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))))) (not (is-ElementMatch!19450 (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))))

(assert (= (and d!2295419 (not res!2986534)) b!7441150))

(assert (= (and b!7441150 res!2986536) b!7441149))

(assert (= (and b!7441149 (not res!2986533)) b!7441146))

(assert (= (and b!7441146 c!1377098) b!7441148))

(assert (= (and b!7441146 (not c!1377098)) b!7441144))

(assert (= (and b!7441148 (not res!2986535)) b!7441147))

(assert (= (and b!7441144 res!2986537) b!7441145))

(assert (= (or b!7441148 b!7441144) bm!684011))

(assert (= (or b!7441147 b!7441145) bm!684010))

(declare-fun m!8053196 () Bool)

(assert (=> bm!684010 m!8053196))

(declare-fun m!8053198 () Bool)

(assert (=> bm!684011 m!8053198))

(assert (=> d!2295267 d!2295419))

(declare-fun d!2295421 () Bool)

(declare-fun res!2986538 () Bool)

(declare-fun e!4443440 () Bool)

(assert (=> d!2295421 (=> res!2986538 e!4443440)))

(assert (=> d!2295421 (= res!2986538 (is-Nil!71996 (exprs!8890 (h!78445 res!2986307))))))

(assert (=> d!2295421 (= (forall!18228 (exprs!8890 (h!78445 res!2986307)) lambda!460417) e!4443440)))

(declare-fun b!7441151 () Bool)

(declare-fun e!4443441 () Bool)

(assert (=> b!7441151 (= e!4443440 e!4443441)))

(declare-fun res!2986539 () Bool)

(assert (=> b!7441151 (=> (not res!2986539) (not e!4443441))))

(assert (=> b!7441151 (= res!2986539 (dynLambda!29725 lambda!460417 (h!78444 (exprs!8890 (h!78445 res!2986307)))))))

(declare-fun b!7441152 () Bool)

(assert (=> b!7441152 (= e!4443441 (forall!18228 (t!386683 (exprs!8890 (h!78445 res!2986307))) lambda!460417))))

(assert (= (and d!2295421 (not res!2986538)) b!7441151))

(assert (= (and b!7441151 res!2986539) b!7441152))

(declare-fun b_lambda!287499 () Bool)

(assert (=> (not b_lambda!287499) (not b!7441151)))

(declare-fun m!8053200 () Bool)

(assert (=> b!7441151 m!8053200))

(declare-fun m!8053202 () Bool)

(assert (=> b!7441152 m!8053202))

(assert (=> d!2295241 d!2295421))

(declare-fun b!7441154 () Bool)

(declare-fun e!4443445 () Bool)

(declare-fun e!4443446 () Bool)

(assert (=> b!7441154 (= e!4443445 e!4443446)))

(declare-fun c!1377100 () Bool)

(assert (=> b!7441154 (= c!1377100 (is-Star!19450 (h!78444 (t!386683 (exprs!8890 empty!3659)))))))

(declare-fun b!7441155 () Bool)

(declare-fun e!4443444 () Bool)

(declare-fun call!684019 () Bool)

(assert (=> b!7441155 (= e!4443444 call!684019)))

(declare-fun bm!684012 () Bool)

(declare-fun c!1377099 () Bool)

(assert (=> bm!684012 (= call!684019 (validRegex!9979 (ite c!1377099 (regTwo!39413 (h!78444 (t!386683 (exprs!8890 empty!3659)))) (regOne!39412 (h!78444 (t!386683 (exprs!8890 empty!3659)))))))))

(declare-fun call!684017 () Bool)

(declare-fun bm!684013 () Bool)

(assert (=> bm!684013 (= call!684017 (validRegex!9979 (ite c!1377100 (reg!19779 (h!78444 (t!386683 (exprs!8890 empty!3659)))) (ite c!1377099 (regOne!39413 (h!78444 (t!386683 (exprs!8890 empty!3659)))) (regTwo!39412 (h!78444 (t!386683 (exprs!8890 empty!3659))))))))))

(declare-fun b!7441156 () Bool)

(declare-fun res!2986543 () Bool)

(assert (=> b!7441156 (=> (not res!2986543) (not e!4443444))))

(declare-fun call!684018 () Bool)

(assert (=> b!7441156 (= res!2986543 call!684018)))

(declare-fun e!4443443 () Bool)

(assert (=> b!7441156 (= e!4443443 e!4443444)))

(declare-fun b!7441157 () Bool)

(declare-fun e!4443448 () Bool)

(assert (=> b!7441157 (= e!4443448 call!684017)))

(declare-fun b!7441158 () Bool)

(declare-fun res!2986540 () Bool)

(declare-fun e!4443442 () Bool)

(assert (=> b!7441158 (=> res!2986540 e!4443442)))

(assert (=> b!7441158 (= res!2986540 (not (is-Concat!28295 (h!78444 (t!386683 (exprs!8890 empty!3659))))))))

(assert (=> b!7441158 (= e!4443443 e!4443442)))

(declare-fun d!2295423 () Bool)

(declare-fun res!2986542 () Bool)

(assert (=> d!2295423 (=> res!2986542 e!4443445)))

(assert (=> d!2295423 (= res!2986542 (is-ElementMatch!19450 (h!78444 (t!386683 (exprs!8890 empty!3659)))))))

(assert (=> d!2295423 (= (validRegex!9979 (h!78444 (t!386683 (exprs!8890 empty!3659)))) e!4443445)))

(declare-fun b!7441153 () Bool)

(assert (=> b!7441153 (= e!4443446 e!4443448)))

(declare-fun res!2986544 () Bool)

(assert (=> b!7441153 (= res!2986544 (not (nullable!8477 (reg!19779 (h!78444 (t!386683 (exprs!8890 empty!3659)))))))))

(assert (=> b!7441153 (=> (not res!2986544) (not e!4443448))))

(declare-fun b!7441159 () Bool)

(declare-fun e!4443447 () Bool)

(assert (=> b!7441159 (= e!4443442 e!4443447)))

(declare-fun res!2986541 () Bool)

(assert (=> b!7441159 (=> (not res!2986541) (not e!4443447))))

(assert (=> b!7441159 (= res!2986541 call!684019)))

(declare-fun bm!684014 () Bool)

(assert (=> bm!684014 (= call!684018 call!684017)))

(declare-fun b!7441160 () Bool)

(assert (=> b!7441160 (= e!4443446 e!4443443)))

(assert (=> b!7441160 (= c!1377099 (is-Union!19450 (h!78444 (t!386683 (exprs!8890 empty!3659)))))))

(declare-fun b!7441161 () Bool)

(assert (=> b!7441161 (= e!4443447 call!684018)))

(assert (= (and d!2295423 (not res!2986542)) b!7441154))

(assert (= (and b!7441154 c!1377100) b!7441153))

(assert (= (and b!7441154 (not c!1377100)) b!7441160))

(assert (= (and b!7441153 res!2986544) b!7441157))

(assert (= (and b!7441160 c!1377099) b!7441156))

(assert (= (and b!7441160 (not c!1377099)) b!7441158))

(assert (= (and b!7441156 res!2986543) b!7441155))

(assert (= (and b!7441158 (not res!2986540)) b!7441159))

(assert (= (and b!7441159 res!2986541) b!7441161))

(assert (= (or b!7441156 b!7441161) bm!684014))

(assert (= (or b!7441155 b!7441159) bm!684012))

(assert (= (or b!7441157 bm!684014) bm!684013))

(declare-fun m!8053204 () Bool)

(assert (=> bm!684012 m!8053204))

(declare-fun m!8053206 () Bool)

(assert (=> bm!684013 m!8053206))

(declare-fun m!8053208 () Bool)

(assert (=> b!7441153 m!8053208))

(assert (=> bs!1926149 d!2295423))

(declare-fun bm!684015 () Bool)

(declare-fun call!684020 () (Set Context!16780))

(assert (=> bm!684015 (= call!684020 (derivationStepZipperDown!3225 (h!78444 (exprs!8890 (h!78445 (toList!11787 z!3488)))) (Context!16781 (t!386683 (exprs!8890 (h!78445 (toList!11787 z!3488))))) (head!15262 s!7945)))))

(declare-fun b!7441163 () Bool)

(declare-fun e!4443451 () (Set Context!16780))

(declare-fun e!4443449 () (Set Context!16780))

(assert (=> b!7441163 (= e!4443451 e!4443449)))

(declare-fun c!1377102 () Bool)

(assert (=> b!7441163 (= c!1377102 (is-Cons!71996 (exprs!8890 (h!78445 (toList!11787 z!3488)))))))

(declare-fun b!7441164 () Bool)

(assert (=> b!7441164 (= e!4443449 (as set.empty (Set Context!16780)))))

(declare-fun b!7441165 () Bool)

(assert (=> b!7441165 (= e!4443449 call!684020)))

(declare-fun b!7441166 () Bool)

(declare-fun e!4443450 () Bool)

(assert (=> b!7441166 (= e!4443450 (nullable!8477 (h!78444 (exprs!8890 (h!78445 (toList!11787 z!3488))))))))

(declare-fun d!2295425 () Bool)

(declare-fun c!1377101 () Bool)

(assert (=> d!2295425 (= c!1377101 e!4443450)))

(declare-fun res!2986545 () Bool)

(assert (=> d!2295425 (=> (not res!2986545) (not e!4443450))))

(assert (=> d!2295425 (= res!2986545 (is-Cons!71996 (exprs!8890 (h!78445 (toList!11787 z!3488)))))))

(assert (=> d!2295425 (= (derivationStepZipperUp!2840 (h!78445 (toList!11787 z!3488)) (head!15262 s!7945)) e!4443451)))

(declare-fun b!7441162 () Bool)

(assert (=> b!7441162 (= e!4443451 (set.union call!684020 (derivationStepZipperUp!2840 (Context!16781 (t!386683 (exprs!8890 (h!78445 (toList!11787 z!3488))))) (head!15262 s!7945))))))

(assert (= (and d!2295425 res!2986545) b!7441166))

(assert (= (and d!2295425 c!1377101) b!7441162))

(assert (= (and d!2295425 (not c!1377101)) b!7441163))

(assert (= (and b!7441163 c!1377102) b!7441165))

(assert (= (and b!7441163 (not c!1377102)) b!7441164))

(assert (= (or b!7441162 b!7441165) bm!684015))

(declare-fun m!8053210 () Bool)

(assert (=> bm!684015 m!8053210))

(declare-fun m!8053212 () Bool)

(assert (=> b!7441166 m!8053212))

(declare-fun m!8053214 () Bool)

(assert (=> b!7441162 m!8053214))

(assert (=> bs!1926187 d!2295425))

(declare-fun d!2295427 () Bool)

(declare-fun lt!2619383 () Bool)

(assert (=> d!2295427 (= lt!2619383 (set.member (h!78445 lt!2619372) (content!15235 (t!386684 lt!2619372))))))

(declare-fun e!4443452 () Bool)

(assert (=> d!2295427 (= lt!2619383 e!4443452)))

(declare-fun res!2986547 () Bool)

(assert (=> d!2295427 (=> (not res!2986547) (not e!4443452))))

(assert (=> d!2295427 (= res!2986547 (is-Cons!71997 (t!386684 lt!2619372)))))

(assert (=> d!2295427 (= (contains!20861 (t!386684 lt!2619372) (h!78445 lt!2619372)) lt!2619383)))

(declare-fun b!7441167 () Bool)

(declare-fun e!4443453 () Bool)

(assert (=> b!7441167 (= e!4443452 e!4443453)))

(declare-fun res!2986546 () Bool)

(assert (=> b!7441167 (=> res!2986546 e!4443453)))

(assert (=> b!7441167 (= res!2986546 (= (h!78445 (t!386684 lt!2619372)) (h!78445 lt!2619372)))))

(declare-fun b!7441168 () Bool)

(assert (=> b!7441168 (= e!4443453 (contains!20861 (t!386684 (t!386684 lt!2619372)) (h!78445 lt!2619372)))))

(assert (= (and d!2295427 res!2986547) b!7441167))

(assert (= (and b!7441167 (not res!2986546)) b!7441168))

(assert (=> d!2295427 m!8052798))

(declare-fun m!8053216 () Bool)

(assert (=> d!2295427 m!8053216))

(declare-fun m!8053218 () Bool)

(assert (=> b!7441168 m!8053218))

(assert (=> b!7440665 d!2295427))

(declare-fun bs!1926203 () Bool)

(declare-fun d!2295429 () Bool)

(assert (= bs!1926203 (and d!2295429 d!2295123)))

(declare-fun lambda!460427 () Int)

(assert (=> bs!1926203 (= lambda!460427 lambda!460391)))

(declare-fun bs!1926204 () Bool)

(assert (= bs!1926204 (and d!2295429 d!2295153)))

(assert (=> bs!1926204 (= lambda!460427 lambda!460405)))

(declare-fun bs!1926205 () Bool)

(assert (= bs!1926205 (and d!2295429 d!2295251)))

(assert (=> bs!1926205 (= lambda!460427 lambda!460418)))

(declare-fun bs!1926206 () Bool)

(assert (= bs!1926206 (and d!2295429 d!2295255)))

(assert (=> bs!1926206 (= lambda!460427 lambda!460419)))

(declare-fun bs!1926207 () Bool)

(assert (= bs!1926207 (and d!2295429 d!2295241)))

(assert (=> bs!1926207 (= lambda!460427 lambda!460417)))

(declare-fun bs!1926208 () Bool)

(assert (= bs!1926208 (and d!2295429 d!2295379)))

(assert (=> bs!1926208 (= lambda!460427 lambda!460426)))

(declare-fun bs!1926209 () Bool)

(assert (= bs!1926209 (and d!2295429 d!2295115)))

(assert (=> bs!1926209 (= lambda!460427 lambda!460390)))

(declare-fun bs!1926210 () Bool)

(assert (= bs!1926210 (and d!2295429 d!2295219)))

(assert (=> bs!1926210 (= lambda!460427 lambda!460416)))

(assert (=> d!2295429 (= (inv!91987 setElem!56571) (forall!18228 (exprs!8890 setElem!56571) lambda!460427))))

(declare-fun bs!1926211 () Bool)

(assert (= bs!1926211 d!2295429))

(declare-fun m!8053220 () Bool)

(assert (=> bs!1926211 m!8053220))

(assert (=> setNonEmpty!56571 d!2295429))

(declare-fun bs!1926212 () Bool)

(declare-fun d!2295431 () Bool)

(assert (= bs!1926212 (and d!2295431 d!2295171)))

(declare-fun lambda!460428 () Int)

(assert (=> bs!1926212 (= (= lambda!460404 lambda!460375) (= lambda!460428 lambda!460408))))

(declare-fun bs!1926213 () Bool)

(assert (= bs!1926213 (and d!2295431 d!2295273)))

(assert (=> bs!1926213 (= (= lambda!460404 lambda!460384) (= lambda!460428 lambda!460420))))

(declare-fun bs!1926214 () Bool)

(assert (= bs!1926214 (and d!2295431 d!2295111)))

(assert (=> bs!1926214 (not (= lambda!460428 lambda!460384))))

(declare-fun bs!1926215 () Bool)

(assert (= bs!1926215 (and d!2295431 b!7440298)))

(assert (=> bs!1926215 (not (= lambda!460428 lambda!460375))))

(declare-fun bs!1926216 () Bool)

(assert (= bs!1926216 (and d!2295431 d!2295149)))

(assert (=> bs!1926216 (not (= lambda!460428 lambda!460404))))

(assert (=> d!2295431 true))

(assert (=> d!2295431 (< (dynLambda!29722 order!29583 lambda!460404) (dynLambda!29722 order!29583 lambda!460428))))

(assert (=> d!2295431 (= (exists!4807 (toList!11787 z!3488) lambda!460404) (not (forall!18229 (toList!11787 z!3488) lambda!460428)))))

(declare-fun bs!1926217 () Bool)

(assert (= bs!1926217 d!2295431))

(assert (=> bs!1926217 m!8052572))

(declare-fun m!8053222 () Bool)

(assert (=> bs!1926217 m!8053222))

(assert (=> d!2295249 d!2295431))

(assert (=> d!2295249 d!2295173))

(declare-fun d!2295433 () Bool)

(declare-fun res!2986548 () Bool)

(assert (=> d!2295433 (= res!2986548 (exists!4807 (toList!11787 z!3488) lambda!460404))))

(assert (=> d!2295433 true))

(assert (=> d!2295433 (= (choose!57517 z!3488 lambda!460404) res!2986548)))

(declare-fun bs!1926218 () Bool)

(assert (= bs!1926218 d!2295433))

(assert (=> bs!1926218 m!8052572))

(assert (=> bs!1926218 m!8052572))

(assert (=> bs!1926218 m!8052842))

(assert (=> d!2295249 d!2295433))

(declare-fun d!2295435 () Bool)

(assert (=> d!2295435 (= (nullable!8477 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))) (nullableFct!3420 (regOne!39412 (ite c!1376967 (regTwo!39413 (h!78444 (exprs!8890 lt!2619343))) (regOne!39412 (h!78444 (exprs!8890 lt!2619343)))))))))

(declare-fun bs!1926219 () Bool)

(assert (= bs!1926219 d!2295435))

(declare-fun m!8053224 () Bool)

(assert (=> bs!1926219 m!8053224))

(assert (=> b!7440681 d!2295435))

(declare-fun d!2295437 () Bool)

(declare-fun res!2986549 () Bool)

(declare-fun e!4443454 () Bool)

(assert (=> d!2295437 (=> res!2986549 e!4443454)))

(assert (=> d!2295437 (= res!2986549 (is-Nil!71996 (exprs!8890 setElem!56565)))))

(assert (=> d!2295437 (= (forall!18228 (exprs!8890 setElem!56565) lambda!460416) e!4443454)))

(declare-fun b!7441169 () Bool)

(declare-fun e!4443455 () Bool)

(assert (=> b!7441169 (= e!4443454 e!4443455)))

(declare-fun res!2986550 () Bool)

(assert (=> b!7441169 (=> (not res!2986550) (not e!4443455))))

(assert (=> b!7441169 (= res!2986550 (dynLambda!29725 lambda!460416 (h!78444 (exprs!8890 setElem!56565))))))

(declare-fun b!7441170 () Bool)

(assert (=> b!7441170 (= e!4443455 (forall!18228 (t!386683 (exprs!8890 setElem!56565)) lambda!460416))))

(assert (= (and d!2295437 (not res!2986549)) b!7441169))

(assert (= (and b!7441169 res!2986550) b!7441170))

(declare-fun b_lambda!287501 () Bool)

(assert (=> (not b_lambda!287501) (not b!7441169)))

(declare-fun m!8053226 () Bool)

(assert (=> b!7441169 m!8053226))

(declare-fun m!8053228 () Bool)

(assert (=> b!7441170 m!8053228))

(assert (=> d!2295219 d!2295437))

(declare-fun d!2295439 () Bool)

(declare-fun c!1377103 () Bool)

(assert (=> d!2295439 (= c!1377103 (is-Nil!71997 res!2986380))))

(declare-fun e!4443456 () (Set Context!16780))

(assert (=> d!2295439 (= (content!15235 res!2986380) e!4443456)))

(declare-fun b!7441171 () Bool)

(assert (=> b!7441171 (= e!4443456 (as set.empty (Set Context!16780)))))

(declare-fun b!7441172 () Bool)

(assert (=> b!7441172 (= e!4443456 (set.union (set.insert (h!78445 res!2986380) (as set.empty (Set Context!16780))) (content!15235 (t!386684 res!2986380))))))

(assert (= (and d!2295439 c!1377103) b!7441171))

(assert (= (and d!2295439 (not c!1377103)) b!7441172))

(declare-fun m!8053230 () Bool)

(assert (=> b!7441172 m!8053230))

(declare-fun m!8053232 () Bool)

(assert (=> b!7441172 m!8053232))

(assert (=> b!7440669 d!2295439))

(declare-fun bs!1926220 () Bool)

(declare-fun d!2295441 () Bool)

(assert (= bs!1926220 (and d!2295441 d!2295123)))

(declare-fun lambda!460429 () Int)

(assert (=> bs!1926220 (= lambda!460429 lambda!460391)))

(declare-fun bs!1926221 () Bool)

(assert (= bs!1926221 (and d!2295441 d!2295251)))

(assert (=> bs!1926221 (= lambda!460429 lambda!460418)))

(declare-fun bs!1926222 () Bool)

(assert (= bs!1926222 (and d!2295441 d!2295255)))

(assert (=> bs!1926222 (= lambda!460429 lambda!460419)))

(declare-fun bs!1926223 () Bool)

(assert (= bs!1926223 (and d!2295441 d!2295241)))

(assert (=> bs!1926223 (= lambda!460429 lambda!460417)))

(declare-fun bs!1926224 () Bool)

(assert (= bs!1926224 (and d!2295441 d!2295379)))

(assert (=> bs!1926224 (= lambda!460429 lambda!460426)))

(declare-fun bs!1926225 () Bool)

(assert (= bs!1926225 (and d!2295441 d!2295153)))

(assert (=> bs!1926225 (= lambda!460429 lambda!460405)))

(declare-fun bs!1926226 () Bool)

(assert (= bs!1926226 (and d!2295441 d!2295429)))

(assert (=> bs!1926226 (= lambda!460429 lambda!460427)))

(declare-fun bs!1926227 () Bool)

(assert (= bs!1926227 (and d!2295441 d!2295115)))

(assert (=> bs!1926227 (= lambda!460429 lambda!460390)))

(declare-fun bs!1926228 () Bool)

(assert (= bs!1926228 (and d!2295441 d!2295219)))

(assert (=> bs!1926228 (= lambda!460429 lambda!460416)))

(assert (=> d!2295441 (= (inv!91987 (h!78445 res!2986380)) (forall!18228 (exprs!8890 (h!78445 res!2986380)) lambda!460429))))

(declare-fun bs!1926229 () Bool)

(assert (= bs!1926229 d!2295441))

(declare-fun m!8053234 () Bool)

(assert (=> bs!1926229 m!8053234))

(assert (=> b!7440667 d!2295441))

(declare-fun d!2295443 () Bool)

(declare-fun res!2986551 () Bool)

(declare-fun e!4443457 () Bool)

(assert (=> d!2295443 (=> res!2986551 e!4443457)))

(assert (=> d!2295443 (= res!2986551 (is-Nil!71996 (t!386683 (t!386683 (exprs!8890 empty!3659)))))))

(assert (=> d!2295443 (= (forall!18228 (t!386683 (t!386683 (exprs!8890 empty!3659))) lambda!460390) e!4443457)))

(declare-fun b!7441173 () Bool)

(declare-fun e!4443458 () Bool)

(assert (=> b!7441173 (= e!4443457 e!4443458)))

(declare-fun res!2986552 () Bool)

(assert (=> b!7441173 (=> (not res!2986552) (not e!4443458))))

(assert (=> b!7441173 (= res!2986552 (dynLambda!29725 lambda!460390 (h!78444 (t!386683 (t!386683 (exprs!8890 empty!3659))))))))

(declare-fun b!7441174 () Bool)

(assert (=> b!7441174 (= e!4443458 (forall!18228 (t!386683 (t!386683 (t!386683 (exprs!8890 empty!3659)))) lambda!460390))))

(assert (= (and d!2295443 (not res!2986551)) b!7441173))

(assert (= (and b!7441173 res!2986552) b!7441174))

(declare-fun b_lambda!287503 () Bool)

(assert (=> (not b_lambda!287503) (not b!7441173)))

(declare-fun m!8053236 () Bool)

(assert (=> b!7441173 m!8053236))

(declare-fun m!8053238 () Bool)

(assert (=> b!7441174 m!8053238))

(assert (=> b!7440719 d!2295443))

(declare-fun d!2295445 () Bool)

(declare-fun res!2986553 () Bool)

(declare-fun e!4443459 () Bool)

(assert (=> d!2295445 (=> res!2986553 e!4443459)))

(assert (=> d!2295445 (= res!2986553 (is-Nil!71997 (t!386684 (toList!11787 z!3488))))))

(assert (=> d!2295445 (= (forall!18229 (t!386684 (toList!11787 z!3488)) lambda!460408) e!4443459)))

(declare-fun b!7441175 () Bool)

(declare-fun e!4443460 () Bool)

(assert (=> b!7441175 (= e!4443459 e!4443460)))

(declare-fun res!2986554 () Bool)

(assert (=> b!7441175 (=> (not res!2986554) (not e!4443460))))

(assert (=> b!7441175 (= res!2986554 (dynLambda!29727 lambda!460408 (h!78445 (t!386684 (toList!11787 z!3488)))))))

(declare-fun b!7441176 () Bool)

(assert (=> b!7441176 (= e!4443460 (forall!18229 (t!386684 (t!386684 (toList!11787 z!3488))) lambda!460408))))

(assert (= (and d!2295445 (not res!2986553)) b!7441175))

(assert (= (and b!7441175 res!2986554) b!7441176))

(declare-fun b_lambda!287505 () Bool)

(assert (=> (not b_lambda!287505) (not b!7441175)))

(declare-fun m!8053240 () Bool)

(assert (=> b!7441175 m!8053240))

(declare-fun m!8053242 () Bool)

(assert (=> b!7441176 m!8053242))

(assert (=> b!7440675 d!2295445))

(declare-fun d!2295447 () Bool)

(assert (=> d!2295447 (= ($colon$colon!3354 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))) (ite (or c!1377024 c!1377020) (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))) (Cons!71996 (ite (or c!1377024 c!1377020) (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))

(assert (=> bm!683919 d!2295447))

(declare-fun d!2295449 () Bool)

(declare-fun lt!2619384 () Bool)

(assert (=> d!2295449 (= lt!2619384 (set.member (h!78445 (t!386684 lt!2619370)) (content!15235 (t!386684 (t!386684 lt!2619370)))))))

(declare-fun e!4443461 () Bool)

(assert (=> d!2295449 (= lt!2619384 e!4443461)))

(declare-fun res!2986556 () Bool)

(assert (=> d!2295449 (=> (not res!2986556) (not e!4443461))))

(assert (=> d!2295449 (= res!2986556 (is-Cons!71997 (t!386684 (t!386684 lt!2619370))))))

(assert (=> d!2295449 (= (contains!20861 (t!386684 (t!386684 lt!2619370)) (h!78445 (t!386684 lt!2619370))) lt!2619384)))

(declare-fun b!7441177 () Bool)

(declare-fun e!4443462 () Bool)

(assert (=> b!7441177 (= e!4443461 e!4443462)))

(declare-fun res!2986555 () Bool)

(assert (=> b!7441177 (=> res!2986555 e!4443462)))

(assert (=> b!7441177 (= res!2986555 (= (h!78445 (t!386684 (t!386684 lt!2619370))) (h!78445 (t!386684 lt!2619370))))))

(declare-fun b!7441178 () Bool)

(assert (=> b!7441178 (= e!4443462 (contains!20861 (t!386684 (t!386684 (t!386684 lt!2619370))) (h!78445 (t!386684 lt!2619370))))))

(assert (= (and d!2295449 res!2986556) b!7441177))

(assert (= (and b!7441177 (not res!2986555)) b!7441178))

(assert (=> d!2295449 m!8052858))

(declare-fun m!8053244 () Bool)

(assert (=> d!2295449 m!8053244))

(declare-fun m!8053246 () Bool)

(assert (=> b!7441178 m!8053246))

(assert (=> b!7440631 d!2295449))

(declare-fun b!7441180 () Bool)

(declare-fun e!4443466 () Bool)

(declare-fun e!4443467 () Bool)

(assert (=> b!7441180 (= e!4443466 e!4443467)))

(declare-fun c!1377105 () Bool)

(assert (=> b!7441180 (= c!1377105 (is-Star!19450 (ite c!1377015 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552))) (regOne!39412 (h!78444 (exprs!8890 setElem!56552))))))))

(declare-fun b!7441181 () Bool)

(declare-fun e!4443465 () Bool)

(declare-fun call!684023 () Bool)

(assert (=> b!7441181 (= e!4443465 call!684023)))

(declare-fun c!1377104 () Bool)

(declare-fun bm!684016 () Bool)

(assert (=> bm!684016 (= call!684023 (validRegex!9979 (ite c!1377104 (regTwo!39413 (ite c!1377015 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552))) (regOne!39412 (h!78444 (exprs!8890 setElem!56552))))) (regOne!39412 (ite c!1377015 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552))) (regOne!39412 (h!78444 (exprs!8890 setElem!56552))))))))))

(declare-fun bm!684017 () Bool)

(declare-fun call!684021 () Bool)

(assert (=> bm!684017 (= call!684021 (validRegex!9979 (ite c!1377105 (reg!19779 (ite c!1377015 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552))) (regOne!39412 (h!78444 (exprs!8890 setElem!56552))))) (ite c!1377104 (regOne!39413 (ite c!1377015 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552))) (regOne!39412 (h!78444 (exprs!8890 setElem!56552))))) (regTwo!39412 (ite c!1377015 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552))) (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))))))))

(declare-fun b!7441182 () Bool)

(declare-fun res!2986560 () Bool)

(assert (=> b!7441182 (=> (not res!2986560) (not e!4443465))))

(declare-fun call!684022 () Bool)

(assert (=> b!7441182 (= res!2986560 call!684022)))

(declare-fun e!4443464 () Bool)

(assert (=> b!7441182 (= e!4443464 e!4443465)))

(declare-fun b!7441183 () Bool)

(declare-fun e!4443469 () Bool)

(assert (=> b!7441183 (= e!4443469 call!684021)))

(declare-fun b!7441184 () Bool)

(declare-fun res!2986557 () Bool)

(declare-fun e!4443463 () Bool)

(assert (=> b!7441184 (=> res!2986557 e!4443463)))

(assert (=> b!7441184 (= res!2986557 (not (is-Concat!28295 (ite c!1377015 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552))) (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))))))

(assert (=> b!7441184 (= e!4443464 e!4443463)))

(declare-fun d!2295451 () Bool)

(declare-fun res!2986559 () Bool)

(assert (=> d!2295451 (=> res!2986559 e!4443466)))

(assert (=> d!2295451 (= res!2986559 (is-ElementMatch!19450 (ite c!1377015 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552))) (regOne!39412 (h!78444 (exprs!8890 setElem!56552))))))))

(assert (=> d!2295451 (= (validRegex!9979 (ite c!1377015 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552))) (regOne!39412 (h!78444 (exprs!8890 setElem!56552))))) e!4443466)))

(declare-fun b!7441179 () Bool)

(assert (=> b!7441179 (= e!4443467 e!4443469)))

(declare-fun res!2986561 () Bool)

(assert (=> b!7441179 (= res!2986561 (not (nullable!8477 (reg!19779 (ite c!1377015 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552))) (regOne!39412 (h!78444 (exprs!8890 setElem!56552))))))))))

(assert (=> b!7441179 (=> (not res!2986561) (not e!4443469))))

(declare-fun b!7441185 () Bool)

(declare-fun e!4443468 () Bool)

(assert (=> b!7441185 (= e!4443463 e!4443468)))

(declare-fun res!2986558 () Bool)

(assert (=> b!7441185 (=> (not res!2986558) (not e!4443468))))

(assert (=> b!7441185 (= res!2986558 call!684023)))

(declare-fun bm!684018 () Bool)

(assert (=> bm!684018 (= call!684022 call!684021)))

(declare-fun b!7441186 () Bool)

(assert (=> b!7441186 (= e!4443467 e!4443464)))

(assert (=> b!7441186 (= c!1377104 (is-Union!19450 (ite c!1377015 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552))) (regOne!39412 (h!78444 (exprs!8890 setElem!56552))))))))

(declare-fun b!7441187 () Bool)

(assert (=> b!7441187 (= e!4443468 call!684022)))

(assert (= (and d!2295451 (not res!2986559)) b!7441180))

(assert (= (and b!7441180 c!1377105) b!7441179))

(assert (= (and b!7441180 (not c!1377105)) b!7441186))

(assert (= (and b!7441179 res!2986561) b!7441183))

(assert (= (and b!7441186 c!1377104) b!7441182))

(assert (= (and b!7441186 (not c!1377104)) b!7441184))

(assert (= (and b!7441182 res!2986560) b!7441181))

(assert (= (and b!7441184 (not res!2986557)) b!7441185))

(assert (= (and b!7441185 res!2986558) b!7441187))

(assert (= (or b!7441182 b!7441187) bm!684018))

(assert (= (or b!7441181 b!7441185) bm!684016))

(assert (= (or b!7441183 bm!684018) bm!684017))

(declare-fun m!8053248 () Bool)

(assert (=> bm!684016 m!8053248))

(declare-fun m!8053250 () Bool)

(assert (=> bm!684017 m!8053250))

(declare-fun m!8053252 () Bool)

(assert (=> b!7441179 m!8053252))

(assert (=> bm!683911 d!2295451))

(declare-fun bm!684019 () Bool)

(declare-fun call!684024 () (Set Context!16780))

(assert (=> bm!684019 (= call!684024 (derivationStepZipperDown!3225 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))) (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))) (h!78446 s!7945)))))

(declare-fun b!7441189 () Bool)

(declare-fun e!4443472 () (Set Context!16780))

(declare-fun e!4443470 () (Set Context!16780))

(assert (=> b!7441189 (= e!4443472 e!4443470)))

(declare-fun c!1377107 () Bool)

(assert (=> b!7441189 (= c!1377107 (is-Cons!71996 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))))))

(declare-fun b!7441190 () Bool)

(assert (=> b!7441190 (= e!4443470 (as set.empty (Set Context!16780)))))

(declare-fun b!7441191 () Bool)

(assert (=> b!7441191 (= e!4443470 call!684024)))

(declare-fun b!7441192 () Bool)

(declare-fun e!4443471 () Bool)

(assert (=> b!7441192 (= e!4443471 (nullable!8477 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))))))

(declare-fun d!2295453 () Bool)

(declare-fun c!1377106 () Bool)

(assert (=> d!2295453 (= c!1377106 e!4443471)))

(declare-fun res!2986562 () Bool)

(assert (=> d!2295453 (=> (not res!2986562) (not e!4443471))))

(assert (=> d!2295453 (= res!2986562 (is-Cons!71996 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))))))

(assert (=> d!2295453 (= (derivationStepZipperUp!2840 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))) (h!78446 s!7945)) e!4443472)))

(declare-fun b!7441188 () Bool)

(assert (=> b!7441188 (= e!4443472 (set.union call!684024 (derivationStepZipperUp!2840 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))) (h!78446 s!7945))))))

(assert (= (and d!2295453 res!2986562) b!7441192))

(assert (= (and d!2295453 c!1377106) b!7441188))

(assert (= (and d!2295453 (not c!1377106)) b!7441189))

(assert (= (and b!7441189 c!1377107) b!7441191))

(assert (= (and b!7441189 (not c!1377107)) b!7441190))

(assert (= (or b!7441188 b!7441191) bm!684019))

(declare-fun m!8053254 () Bool)

(assert (=> bm!684019 m!8053254))

(declare-fun m!8053256 () Bool)

(assert (=> b!7441192 m!8053256))

(declare-fun m!8053258 () Bool)

(assert (=> b!7441188 m!8053258))

(assert (=> b!7440615 d!2295453))

(declare-fun bs!1926230 () Bool)

(declare-fun d!2295455 () Bool)

(assert (= bs!1926230 (and d!2295455 d!2295123)))

(declare-fun lambda!460430 () Int)

(assert (=> bs!1926230 (= lambda!460430 lambda!460391)))

(declare-fun bs!1926231 () Bool)

(assert (= bs!1926231 (and d!2295455 d!2295441)))

(assert (=> bs!1926231 (= lambda!460430 lambda!460429)))

(declare-fun bs!1926232 () Bool)

(assert (= bs!1926232 (and d!2295455 d!2295251)))

(assert (=> bs!1926232 (= lambda!460430 lambda!460418)))

(declare-fun bs!1926233 () Bool)

(assert (= bs!1926233 (and d!2295455 d!2295255)))

(assert (=> bs!1926233 (= lambda!460430 lambda!460419)))

(declare-fun bs!1926234 () Bool)

(assert (= bs!1926234 (and d!2295455 d!2295241)))

(assert (=> bs!1926234 (= lambda!460430 lambda!460417)))

(declare-fun bs!1926235 () Bool)

(assert (= bs!1926235 (and d!2295455 d!2295379)))

(assert (=> bs!1926235 (= lambda!460430 lambda!460426)))

(declare-fun bs!1926236 () Bool)

(assert (= bs!1926236 (and d!2295455 d!2295153)))

(assert (=> bs!1926236 (= lambda!460430 lambda!460405)))

(declare-fun bs!1926237 () Bool)

(assert (= bs!1926237 (and d!2295455 d!2295429)))

(assert (=> bs!1926237 (= lambda!460430 lambda!460427)))

(declare-fun bs!1926238 () Bool)

(assert (= bs!1926238 (and d!2295455 d!2295115)))

(assert (=> bs!1926238 (= lambda!460430 lambda!460390)))

(declare-fun bs!1926239 () Bool)

(assert (= bs!1926239 (and d!2295455 d!2295219)))

(assert (=> bs!1926239 (= lambda!460430 lambda!460416)))

(assert (=> d!2295455 (= (inv!91987 setElem!56570) (forall!18228 (exprs!8890 setElem!56570) lambda!460430))))

(declare-fun bs!1926240 () Bool)

(assert (= bs!1926240 d!2295455))

(declare-fun m!8053260 () Bool)

(assert (=> bs!1926240 m!8053260))

(assert (=> setNonEmpty!56570 d!2295455))

(declare-fun d!2295457 () Bool)

(assert (=> d!2295457 (= ($colon$colon!3354 (exprs!8890 (ite (or c!1376967 c!1376968) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683868))) (ite (or c!1377000 c!1376996) (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343)))))))) (Cons!71996 (ite (or c!1377000 c!1376996) (regTwo!39412 (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (ite c!1376967 (regOne!39413 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376968 (regTwo!39412 (h!78444 (exprs!8890 lt!2619343))) (ite c!1376964 (regOne!39412 (h!78444 (exprs!8890 lt!2619343))) (reg!19779 (h!78444 (exprs!8890 lt!2619343))))))) (exprs!8890 (ite (or c!1376967 c!1376968) (Context!16781 (t!386683 (exprs!8890 lt!2619343))) (Context!16781 call!683868)))))))

(assert (=> bm!683889 d!2295457))

(declare-fun b!7441194 () Bool)

(declare-fun e!4443476 () Bool)

(declare-fun e!4443477 () Bool)

(assert (=> b!7441194 (= e!4443476 e!4443477)))

(declare-fun c!1377109 () Bool)

(assert (=> b!7441194 (= c!1377109 (is-Star!19450 (ite c!1377018 (regTwo!39413 (h!78444 (exprs!8890 empty!3659))) (regOne!39412 (h!78444 (exprs!8890 empty!3659))))))))

(declare-fun b!7441195 () Bool)

(declare-fun e!4443475 () Bool)

(declare-fun call!684027 () Bool)

(assert (=> b!7441195 (= e!4443475 call!684027)))

(declare-fun bm!684020 () Bool)

(declare-fun c!1377108 () Bool)

(assert (=> bm!684020 (= call!684027 (validRegex!9979 (ite c!1377108 (regTwo!39413 (ite c!1377018 (regTwo!39413 (h!78444 (exprs!8890 empty!3659))) (regOne!39412 (h!78444 (exprs!8890 empty!3659))))) (regOne!39412 (ite c!1377018 (regTwo!39413 (h!78444 (exprs!8890 empty!3659))) (regOne!39412 (h!78444 (exprs!8890 empty!3659))))))))))

(declare-fun call!684025 () Bool)

(declare-fun bm!684021 () Bool)

(assert (=> bm!684021 (= call!684025 (validRegex!9979 (ite c!1377109 (reg!19779 (ite c!1377018 (regTwo!39413 (h!78444 (exprs!8890 empty!3659))) (regOne!39412 (h!78444 (exprs!8890 empty!3659))))) (ite c!1377108 (regOne!39413 (ite c!1377018 (regTwo!39413 (h!78444 (exprs!8890 empty!3659))) (regOne!39412 (h!78444 (exprs!8890 empty!3659))))) (regTwo!39412 (ite c!1377018 (regTwo!39413 (h!78444 (exprs!8890 empty!3659))) (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))))))))

(declare-fun b!7441196 () Bool)

(declare-fun res!2986566 () Bool)

(assert (=> b!7441196 (=> (not res!2986566) (not e!4443475))))

(declare-fun call!684026 () Bool)

(assert (=> b!7441196 (= res!2986566 call!684026)))

(declare-fun e!4443474 () Bool)

(assert (=> b!7441196 (= e!4443474 e!4443475)))

(declare-fun b!7441197 () Bool)

(declare-fun e!4443479 () Bool)

(assert (=> b!7441197 (= e!4443479 call!684025)))

(declare-fun b!7441198 () Bool)

(declare-fun res!2986563 () Bool)

(declare-fun e!4443473 () Bool)

(assert (=> b!7441198 (=> res!2986563 e!4443473)))

(assert (=> b!7441198 (= res!2986563 (not (is-Concat!28295 (ite c!1377018 (regTwo!39413 (h!78444 (exprs!8890 empty!3659))) (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))))))

(assert (=> b!7441198 (= e!4443474 e!4443473)))

(declare-fun d!2295459 () Bool)

(declare-fun res!2986565 () Bool)

(assert (=> d!2295459 (=> res!2986565 e!4443476)))

(assert (=> d!2295459 (= res!2986565 (is-ElementMatch!19450 (ite c!1377018 (regTwo!39413 (h!78444 (exprs!8890 empty!3659))) (regOne!39412 (h!78444 (exprs!8890 empty!3659))))))))

(assert (=> d!2295459 (= (validRegex!9979 (ite c!1377018 (regTwo!39413 (h!78444 (exprs!8890 empty!3659))) (regOne!39412 (h!78444 (exprs!8890 empty!3659))))) e!4443476)))

(declare-fun b!7441193 () Bool)

(assert (=> b!7441193 (= e!4443477 e!4443479)))

(declare-fun res!2986567 () Bool)

(assert (=> b!7441193 (= res!2986567 (not (nullable!8477 (reg!19779 (ite c!1377018 (regTwo!39413 (h!78444 (exprs!8890 empty!3659))) (regOne!39412 (h!78444 (exprs!8890 empty!3659))))))))))

(assert (=> b!7441193 (=> (not res!2986567) (not e!4443479))))

(declare-fun b!7441199 () Bool)

(declare-fun e!4443478 () Bool)

(assert (=> b!7441199 (= e!4443473 e!4443478)))

(declare-fun res!2986564 () Bool)

(assert (=> b!7441199 (=> (not res!2986564) (not e!4443478))))

(assert (=> b!7441199 (= res!2986564 call!684027)))

(declare-fun bm!684022 () Bool)

(assert (=> bm!684022 (= call!684026 call!684025)))

(declare-fun b!7441200 () Bool)

(assert (=> b!7441200 (= e!4443477 e!4443474)))

(assert (=> b!7441200 (= c!1377108 (is-Union!19450 (ite c!1377018 (regTwo!39413 (h!78444 (exprs!8890 empty!3659))) (regOne!39412 (h!78444 (exprs!8890 empty!3659))))))))

(declare-fun b!7441201 () Bool)

(assert (=> b!7441201 (= e!4443478 call!684026)))

(assert (= (and d!2295459 (not res!2986565)) b!7441194))

(assert (= (and b!7441194 c!1377109) b!7441193))

(assert (= (and b!7441194 (not c!1377109)) b!7441200))

(assert (= (and b!7441193 res!2986567) b!7441197))

(assert (= (and b!7441200 c!1377108) b!7441196))

(assert (= (and b!7441200 (not c!1377108)) b!7441198))

(assert (= (and b!7441196 res!2986566) b!7441195))

(assert (= (and b!7441198 (not res!2986563)) b!7441199))

(assert (= (and b!7441199 res!2986564) b!7441201))

(assert (= (or b!7441196 b!7441201) bm!684022))

(assert (= (or b!7441195 b!7441199) bm!684020))

(assert (= (or b!7441197 bm!684022) bm!684021))

(declare-fun m!8053262 () Bool)

(assert (=> bm!684020 m!8053262))

(declare-fun m!8053264 () Bool)

(assert (=> bm!684021 m!8053264))

(declare-fun m!8053266 () Bool)

(assert (=> b!7441193 m!8053266))

(assert (=> bm!683914 d!2295459))

(declare-fun d!2295461 () Bool)

(declare-fun lt!2619385 () Bool)

(assert (=> d!2295461 (= lt!2619385 (set.member (h!78445 lt!2619370) (content!15235 (t!386684 (t!386684 lt!2619370)))))))

(declare-fun e!4443480 () Bool)

(assert (=> d!2295461 (= lt!2619385 e!4443480)))

(declare-fun res!2986569 () Bool)

(assert (=> d!2295461 (=> (not res!2986569) (not e!4443480))))

(assert (=> d!2295461 (= res!2986569 (is-Cons!71997 (t!386684 (t!386684 lt!2619370))))))

(assert (=> d!2295461 (= (contains!20861 (t!386684 (t!386684 lt!2619370)) (h!78445 lt!2619370)) lt!2619385)))

(declare-fun b!7441202 () Bool)

(declare-fun e!4443481 () Bool)

(assert (=> b!7441202 (= e!4443480 e!4443481)))

(declare-fun res!2986568 () Bool)

(assert (=> b!7441202 (=> res!2986568 e!4443481)))

(assert (=> b!7441202 (= res!2986568 (= (h!78445 (t!386684 (t!386684 lt!2619370))) (h!78445 lt!2619370)))))

(declare-fun b!7441203 () Bool)

(assert (=> b!7441203 (= e!4443481 (contains!20861 (t!386684 (t!386684 (t!386684 lt!2619370))) (h!78445 lt!2619370)))))

(assert (= (and d!2295461 res!2986569) b!7441202))

(assert (= (and b!7441202 (not res!2986568)) b!7441203))

(assert (=> d!2295461 m!8052858))

(declare-fun m!8053268 () Bool)

(assert (=> d!2295461 m!8053268))

(declare-fun m!8053270 () Bool)

(assert (=> b!7441203 m!8053270))

(assert (=> b!7440641 d!2295461))

(declare-fun d!2295463 () Bool)

(declare-fun res!2986570 () Bool)

(declare-fun e!4443482 () Bool)

(assert (=> d!2295463 (=> res!2986570 e!4443482)))

(assert (=> d!2295463 (= res!2986570 (is-Nil!71997 res!2986380))))

(assert (=> d!2295463 (= (noDuplicate!3123 res!2986380) e!4443482)))

(declare-fun b!7441204 () Bool)

(declare-fun e!4443483 () Bool)

(assert (=> b!7441204 (= e!4443482 e!4443483)))

(declare-fun res!2986571 () Bool)

(assert (=> b!7441204 (=> (not res!2986571) (not e!4443483))))

(assert (=> b!7441204 (= res!2986571 (not (contains!20861 (t!386684 res!2986380) (h!78445 res!2986380))))))

(declare-fun b!7441205 () Bool)

(assert (=> b!7441205 (= e!4443483 (noDuplicate!3123 (t!386684 res!2986380)))))

(assert (= (and d!2295463 (not res!2986570)) b!7441204))

(assert (= (and b!7441204 res!2986571) b!7441205))

(declare-fun m!8053272 () Bool)

(assert (=> b!7441204 m!8053272))

(declare-fun m!8053274 () Bool)

(assert (=> b!7441205 m!8053274))

(assert (=> d!2295239 d!2295463))

(declare-fun c!1377110 () Bool)

(declare-fun call!684030 () (Set Context!16780))

(declare-fun bm!684023 () Bool)

(declare-fun c!1377114 () Bool)

(declare-fun call!684031 () List!72120)

(declare-fun c!1377113 () Bool)

(assert (=> bm!684023 (= call!684030 (derivationStepZipperDown!3225 (ite c!1377113 (regOne!39413 (ite c!1377023 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377024 (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377020 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (reg!19779 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))) (ite c!1377114 (regTwo!39412 (ite c!1377023 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377024 (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377020 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (reg!19779 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))) (ite c!1377110 (regOne!39412 (ite c!1377023 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377024 (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377020 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (reg!19779 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))) (reg!19779 (ite c!1377023 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377024 (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377020 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (reg!19779 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))))) (ite (or c!1377113 c!1377114) (ite (or c!1377023 c!1377024) (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (Context!16781 call!683925)) (Context!16781 call!684031)) (h!78446 s!7945)))))

(declare-fun b!7441206 () Bool)

(declare-fun e!4443488 () (Set Context!16780))

(declare-fun e!4443489 () (Set Context!16780))

(assert (=> b!7441206 (= e!4443488 e!4443489)))

(assert (=> b!7441206 (= c!1377110 (is-Concat!28295 (ite c!1377023 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377024 (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377020 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (reg!19779 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))))

(declare-fun b!7441207 () Bool)

(declare-fun call!684032 () (Set Context!16780))

(declare-fun call!684033 () (Set Context!16780))

(assert (=> b!7441207 (= e!4443488 (set.union call!684032 call!684033))))

(declare-fun c!1377111 () Bool)

(declare-fun d!2295465 () Bool)

(assert (=> d!2295465 (= c!1377111 (and (is-ElementMatch!19450 (ite c!1377023 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377024 (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377020 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (reg!19779 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))) (= (c!1376936 (ite c!1377023 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377024 (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377020 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (reg!19779 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))) (h!78446 s!7945))))))

(declare-fun e!4443485 () (Set Context!16780))

(assert (=> d!2295465 (= (derivationStepZipperDown!3225 (ite c!1377023 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377024 (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377020 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (reg!19779 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))) (ite (or c!1377023 c!1377024) (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (Context!16781 call!683925)) (h!78446 s!7945)) e!4443485)))

(declare-fun bm!684024 () Bool)

(assert (=> bm!684024 (= call!684033 call!684030)))

(declare-fun b!7441208 () Bool)

(declare-fun e!4443487 () Bool)

(assert (=> b!7441208 (= c!1377114 e!4443487)))

(declare-fun res!2986572 () Bool)

(assert (=> b!7441208 (=> (not res!2986572) (not e!4443487))))

(assert (=> b!7441208 (= res!2986572 (is-Concat!28295 (ite c!1377023 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377024 (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377020 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (reg!19779 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))))

(declare-fun e!4443484 () (Set Context!16780))

(assert (=> b!7441208 (= e!4443484 e!4443488)))

(declare-fun b!7441209 () Bool)

(assert (=> b!7441209 (= e!4443487 (nullable!8477 (regOne!39412 (ite c!1377023 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377024 (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377020 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (reg!19779 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))))))

(declare-fun bm!684025 () Bool)

(declare-fun call!684029 () List!72120)

(assert (=> bm!684025 (= call!684029 ($colon$colon!3354 (exprs!8890 (ite (or c!1377023 c!1377024) (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (Context!16781 call!683925))) (ite (or c!1377114 c!1377110) (regTwo!39412 (ite c!1377023 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377024 (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377020 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (reg!19779 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))) (ite c!1377023 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377024 (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377020 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (reg!19779 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))))))

(declare-fun bm!684026 () Bool)

(assert (=> bm!684026 (= call!684031 call!684029)))

(declare-fun bm!684027 () Bool)

(declare-fun call!684028 () (Set Context!16780))

(assert (=> bm!684027 (= call!684028 call!684033)))

(declare-fun b!7441210 () Bool)

(assert (=> b!7441210 (= e!4443485 e!4443484)))

(assert (=> b!7441210 (= c!1377113 (is-Union!19450 (ite c!1377023 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377024 (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377020 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (reg!19779 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))))

(declare-fun b!7441211 () Bool)

(assert (=> b!7441211 (= e!4443485 (set.insert (ite (or c!1377023 c!1377024) (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (Context!16781 call!683925)) (as set.empty (Set Context!16780))))))

(declare-fun b!7441212 () Bool)

(assert (=> b!7441212 (= e!4443489 call!684028)))

(declare-fun b!7441213 () Bool)

(declare-fun e!4443486 () (Set Context!16780))

(assert (=> b!7441213 (= e!4443486 (as set.empty (Set Context!16780)))))

(declare-fun bm!684028 () Bool)

(assert (=> bm!684028 (= call!684032 (derivationStepZipperDown!3225 (ite c!1377113 (regTwo!39413 (ite c!1377023 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377024 (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377020 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (reg!19779 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))) (regOne!39412 (ite c!1377023 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377024 (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377020 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (reg!19779 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343))))))))))) (ite c!1377113 (ite (or c!1377023 c!1377024) (Context!16781 (t!386683 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (Context!16781 call!683925)) (Context!16781 call!684029)) (h!78446 s!7945)))))

(declare-fun b!7441214 () Bool)

(assert (=> b!7441214 (= e!4443484 (set.union call!684030 call!684032))))

(declare-fun c!1377112 () Bool)

(declare-fun b!7441215 () Bool)

(assert (=> b!7441215 (= c!1377112 (is-Star!19450 (ite c!1377023 (regOne!39413 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377024 (regTwo!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (ite c!1377020 (regOne!39412 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))) (reg!19779 (h!78444 (exprs!8890 (Context!16781 (t!386683 (exprs!8890 lt!2619343)))))))))))))

(assert (=> b!7441215 (= e!4443489 e!4443486)))

(declare-fun b!7441216 () Bool)

(assert (=> b!7441216 (= e!4443486 call!684028)))

(assert (= (and d!2295465 c!1377111) b!7441211))

(assert (= (and d!2295465 (not c!1377111)) b!7441210))

(assert (= (and b!7441210 c!1377113) b!7441214))

(assert (= (and b!7441210 (not c!1377113)) b!7441208))

(assert (= (and b!7441208 res!2986572) b!7441209))

(assert (= (and b!7441208 c!1377114) b!7441207))

(assert (= (and b!7441208 (not c!1377114)) b!7441206))

(assert (= (and b!7441206 c!1377110) b!7441212))

(assert (= (and b!7441206 (not c!1377110)) b!7441215))

(assert (= (and b!7441215 c!1377112) b!7441216))

(assert (= (and b!7441215 (not c!1377112)) b!7441213))

(assert (= (or b!7441212 b!7441216) bm!684026))

(assert (= (or b!7441212 b!7441216) bm!684027))

(assert (= (or b!7441207 bm!684027) bm!684024))

(assert (= (or b!7441207 bm!684026) bm!684025))

(assert (= (or b!7441214 b!7441207) bm!684028))

(assert (= (or b!7441214 bm!684024) bm!684023))

(declare-fun m!8053276 () Bool)

(assert (=> bm!684023 m!8053276))

(declare-fun m!8053278 () Bool)

(assert (=> bm!684028 m!8053278))

(declare-fun m!8053280 () Bool)

(assert (=> b!7441211 m!8053280))

(declare-fun m!8053282 () Bool)

(assert (=> bm!684025 m!8053282))

(declare-fun m!8053284 () Bool)

(assert (=> b!7441209 m!8053284))

(assert (=> bm!683917 d!2295465))

(declare-fun d!2295467 () Bool)

(declare-fun lt!2619386 () Bool)

(assert (=> d!2295467 (= lt!2619386 (set.member (h!78445 res!2986307) (content!15235 (t!386684 res!2986307))))))

(declare-fun e!4443490 () Bool)

(assert (=> d!2295467 (= lt!2619386 e!4443490)))

(declare-fun res!2986574 () Bool)

(assert (=> d!2295467 (=> (not res!2986574) (not e!4443490))))

(assert (=> d!2295467 (= res!2986574 (is-Cons!71997 (t!386684 res!2986307)))))

(assert (=> d!2295467 (= (contains!20861 (t!386684 res!2986307) (h!78445 res!2986307)) lt!2619386)))

(declare-fun b!7441217 () Bool)

(declare-fun e!4443491 () Bool)

(assert (=> b!7441217 (= e!4443490 e!4443491)))

(declare-fun res!2986573 () Bool)

(assert (=> b!7441217 (=> res!2986573 e!4443491)))

(assert (=> b!7441217 (= res!2986573 (= (h!78445 (t!386684 res!2986307)) (h!78445 res!2986307)))))

(declare-fun b!7441218 () Bool)

(assert (=> b!7441218 (= e!4443491 (contains!20861 (t!386684 (t!386684 res!2986307)) (h!78445 res!2986307)))))

(assert (= (and d!2295467 res!2986574) b!7441217))

(assert (= (and b!7441217 (not res!2986573)) b!7441218))

(assert (=> d!2295467 m!8052810))

(declare-fun m!8053286 () Bool)

(assert (=> d!2295467 m!8053286))

(declare-fun m!8053288 () Bool)

(assert (=> b!7441218 m!8053288))

(assert (=> b!7440720 d!2295467))

(assert (=> d!2295275 d!2295273))

(assert (=> d!2295275 d!2295173))

(declare-fun bs!1926241 () Bool)

(declare-fun d!2295469 () Bool)

(assert (= bs!1926241 (and d!2295469 d!2295455)))

(declare-fun lambda!460431 () Int)

(assert (=> bs!1926241 (= lambda!460431 lambda!460430)))

(declare-fun bs!1926242 () Bool)

(assert (= bs!1926242 (and d!2295469 d!2295123)))

(assert (=> bs!1926242 (= lambda!460431 lambda!460391)))

(declare-fun bs!1926243 () Bool)

(assert (= bs!1926243 (and d!2295469 d!2295441)))

(assert (=> bs!1926243 (= lambda!460431 lambda!460429)))

(declare-fun bs!1926244 () Bool)

(assert (= bs!1926244 (and d!2295469 d!2295251)))

(assert (=> bs!1926244 (= lambda!460431 lambda!460418)))

(declare-fun bs!1926245 () Bool)

(assert (= bs!1926245 (and d!2295469 d!2295255)))

(assert (=> bs!1926245 (= lambda!460431 lambda!460419)))

(declare-fun bs!1926246 () Bool)

(assert (= bs!1926246 (and d!2295469 d!2295241)))

(assert (=> bs!1926246 (= lambda!460431 lambda!460417)))

(declare-fun bs!1926247 () Bool)

(assert (= bs!1926247 (and d!2295469 d!2295379)))

(assert (=> bs!1926247 (= lambda!460431 lambda!460426)))

(declare-fun bs!1926248 () Bool)

(assert (= bs!1926248 (and d!2295469 d!2295153)))

(assert (=> bs!1926248 (= lambda!460431 lambda!460405)))

(declare-fun bs!1926249 () Bool)

(assert (= bs!1926249 (and d!2295469 d!2295429)))

(assert (=> bs!1926249 (= lambda!460431 lambda!460427)))

(declare-fun bs!1926250 () Bool)

(assert (= bs!1926250 (and d!2295469 d!2295115)))

(assert (=> bs!1926250 (= lambda!460431 lambda!460390)))

(declare-fun bs!1926251 () Bool)

(assert (= bs!1926251 (and d!2295469 d!2295219)))

(assert (=> bs!1926251 (= lambda!460431 lambda!460416)))

(assert (=> d!2295469 (= (inv!91987 setElem!56572) (forall!18228 (exprs!8890 setElem!56572) lambda!460431))))

(declare-fun bs!1926252 () Bool)

(assert (= bs!1926252 d!2295469))

(declare-fun m!8053290 () Bool)

(assert (=> bs!1926252 m!8053290))

(assert (=> setNonEmpty!56572 d!2295469))

(declare-fun b!7441221 () Bool)

(declare-fun e!4443492 () Bool)

(declare-fun tp!2150857 () Bool)

(assert (=> b!7441221 (= e!4443492 tp!2150857)))

(declare-fun b!7441219 () Bool)

(assert (=> b!7441219 (= e!4443492 tp_is_empty!49159)))

(declare-fun b!7441222 () Bool)

(declare-fun tp!2150860 () Bool)

(declare-fun tp!2150858 () Bool)

(assert (=> b!7441222 (= e!4443492 (and tp!2150860 tp!2150858))))

(assert (=> b!7440802 (= tp!2150746 e!4443492)))

(declare-fun b!7441220 () Bool)

(declare-fun tp!2150859 () Bool)

(declare-fun tp!2150861 () Bool)

(assert (=> b!7441220 (= e!4443492 (and tp!2150859 tp!2150861))))

(assert (= (and b!7440802 (is-ElementMatch!19450 (regOne!39413 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441219))

(assert (= (and b!7440802 (is-Concat!28295 (regOne!39413 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441220))

(assert (= (and b!7440802 (is-Star!19450 (regOne!39413 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441221))

(assert (= (and b!7440802 (is-Union!19450 (regOne!39413 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441222))

(declare-fun b!7441225 () Bool)

(declare-fun e!4443493 () Bool)

(declare-fun tp!2150862 () Bool)

(assert (=> b!7441225 (= e!4443493 tp!2150862)))

(declare-fun b!7441223 () Bool)

(assert (=> b!7441223 (= e!4443493 tp_is_empty!49159)))

(declare-fun b!7441226 () Bool)

(declare-fun tp!2150865 () Bool)

(declare-fun tp!2150863 () Bool)

(assert (=> b!7441226 (= e!4443493 (and tp!2150865 tp!2150863))))

(assert (=> b!7440802 (= tp!2150744 e!4443493)))

(declare-fun b!7441224 () Bool)

(declare-fun tp!2150864 () Bool)

(declare-fun tp!2150866 () Bool)

(assert (=> b!7441224 (= e!4443493 (and tp!2150864 tp!2150866))))

(assert (= (and b!7440802 (is-ElementMatch!19450 (regTwo!39413 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441223))

(assert (= (and b!7440802 (is-Concat!28295 (regTwo!39413 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441224))

(assert (= (and b!7440802 (is-Star!19450 (regTwo!39413 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441225))

(assert (= (and b!7440802 (is-Union!19450 (regTwo!39413 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441226))

(declare-fun b!7441227 () Bool)

(declare-fun e!4443494 () Bool)

(declare-fun tp!2150867 () Bool)

(declare-fun tp!2150868 () Bool)

(assert (=> b!7441227 (= e!4443494 (and tp!2150867 tp!2150868))))

(assert (=> b!7440744 (= tp!2150673 e!4443494)))

(assert (= (and b!7440744 (is-Cons!71996 (exprs!8890 setElem!56571))) b!7441227))

(declare-fun b!7441230 () Bool)

(declare-fun e!4443495 () Bool)

(declare-fun tp!2150869 () Bool)

(assert (=> b!7441230 (= e!4443495 tp!2150869)))

(declare-fun b!7441228 () Bool)

(assert (=> b!7441228 (= e!4443495 tp_is_empty!49159)))

(declare-fun b!7441231 () Bool)

(declare-fun tp!2150872 () Bool)

(declare-fun tp!2150870 () Bool)

(assert (=> b!7441231 (= e!4443495 (and tp!2150872 tp!2150870))))

(assert (=> b!7440751 (= tp!2150680 e!4443495)))

(declare-fun b!7441229 () Bool)

(declare-fun tp!2150871 () Bool)

(declare-fun tp!2150873 () Bool)

(assert (=> b!7441229 (= e!4443495 (and tp!2150871 tp!2150873))))

(assert (= (and b!7440751 (is-ElementMatch!19450 (reg!19779 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441228))

(assert (= (and b!7440751 (is-Concat!28295 (reg!19779 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441229))

(assert (= (and b!7440751 (is-Star!19450 (reg!19779 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441230))

(assert (= (and b!7440751 (is-Union!19450 (reg!19779 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441231))

(declare-fun b!7441234 () Bool)

(declare-fun e!4443496 () Bool)

(declare-fun tp!2150874 () Bool)

(assert (=> b!7441234 (= e!4443496 tp!2150874)))

(declare-fun b!7441232 () Bool)

(assert (=> b!7441232 (= e!4443496 tp_is_empty!49159)))

(declare-fun b!7441235 () Bool)

(declare-fun tp!2150877 () Bool)

(declare-fun tp!2150875 () Bool)

(assert (=> b!7441235 (= e!4443496 (and tp!2150877 tp!2150875))))

(assert (=> b!7440779 (= tp!2150718 e!4443496)))

(declare-fun b!7441233 () Bool)

(declare-fun tp!2150876 () Bool)

(declare-fun tp!2150878 () Bool)

(assert (=> b!7441233 (= e!4443496 (and tp!2150876 tp!2150878))))

(assert (= (and b!7440779 (is-ElementMatch!19450 (reg!19779 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441232))

(assert (= (and b!7440779 (is-Concat!28295 (reg!19779 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441233))

(assert (= (and b!7440779 (is-Star!19450 (reg!19779 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441234))

(assert (= (and b!7440779 (is-Union!19450 (reg!19779 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441235))

(declare-fun b!7441238 () Bool)

(declare-fun e!4443497 () Bool)

(declare-fun tp!2150879 () Bool)

(assert (=> b!7441238 (= e!4443497 tp!2150879)))

(declare-fun b!7441236 () Bool)

(assert (=> b!7441236 (= e!4443497 tp_is_empty!49159)))

(declare-fun b!7441239 () Bool)

(declare-fun tp!2150882 () Bool)

(declare-fun tp!2150880 () Bool)

(assert (=> b!7441239 (= e!4443497 (and tp!2150882 tp!2150880))))

(assert (=> b!7440771 (= tp!2150709 e!4443497)))

(declare-fun b!7441237 () Bool)

(declare-fun tp!2150881 () Bool)

(declare-fun tp!2150883 () Bool)

(assert (=> b!7441237 (= e!4443497 (and tp!2150881 tp!2150883))))

(assert (= (and b!7440771 (is-ElementMatch!19450 (regOne!39413 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441236))

(assert (= (and b!7440771 (is-Concat!28295 (regOne!39413 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441237))

(assert (= (and b!7440771 (is-Star!19450 (regOne!39413 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441238))

(assert (= (and b!7440771 (is-Union!19450 (regOne!39413 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441239))

(declare-fun b!7441242 () Bool)

(declare-fun e!4443498 () Bool)

(declare-fun tp!2150884 () Bool)

(assert (=> b!7441242 (= e!4443498 tp!2150884)))

(declare-fun b!7441240 () Bool)

(assert (=> b!7441240 (= e!4443498 tp_is_empty!49159)))

(declare-fun b!7441243 () Bool)

(declare-fun tp!2150887 () Bool)

(declare-fun tp!2150885 () Bool)

(assert (=> b!7441243 (= e!4443498 (and tp!2150887 tp!2150885))))

(assert (=> b!7440771 (= tp!2150707 e!4443498)))

(declare-fun b!7441241 () Bool)

(declare-fun tp!2150886 () Bool)

(declare-fun tp!2150888 () Bool)

(assert (=> b!7441241 (= e!4443498 (and tp!2150886 tp!2150888))))

(assert (= (and b!7440771 (is-ElementMatch!19450 (regTwo!39413 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441240))

(assert (= (and b!7440771 (is-Concat!28295 (regTwo!39413 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441241))

(assert (= (and b!7440771 (is-Star!19450 (regTwo!39413 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441242))

(assert (= (and b!7440771 (is-Union!19450 (regTwo!39413 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441243))

(declare-fun b!7441246 () Bool)

(declare-fun e!4443499 () Bool)

(declare-fun tp!2150889 () Bool)

(assert (=> b!7441246 (= e!4443499 tp!2150889)))

(declare-fun b!7441244 () Bool)

(assert (=> b!7441244 (= e!4443499 tp_is_empty!49159)))

(declare-fun b!7441247 () Bool)

(declare-fun tp!2150892 () Bool)

(declare-fun tp!2150890 () Bool)

(assert (=> b!7441247 (= e!4443499 (and tp!2150892 tp!2150890))))

(assert (=> b!7440758 (= tp!2150692 e!4443499)))

(declare-fun b!7441245 () Bool)

(declare-fun tp!2150891 () Bool)

(declare-fun tp!2150893 () Bool)

(assert (=> b!7441245 (= e!4443499 (and tp!2150891 tp!2150893))))

(assert (= (and b!7440758 (is-ElementMatch!19450 (h!78444 (exprs!8890 setElem!56564)))) b!7441244))

(assert (= (and b!7440758 (is-Concat!28295 (h!78444 (exprs!8890 setElem!56564)))) b!7441245))

(assert (= (and b!7440758 (is-Star!19450 (h!78444 (exprs!8890 setElem!56564)))) b!7441246))

(assert (= (and b!7440758 (is-Union!19450 (h!78444 (exprs!8890 setElem!56564)))) b!7441247))

(declare-fun b!7441248 () Bool)

(declare-fun e!4443500 () Bool)

(declare-fun tp!2150894 () Bool)

(declare-fun tp!2150895 () Bool)

(assert (=> b!7441248 (= e!4443500 (and tp!2150894 tp!2150895))))

(assert (=> b!7440758 (= tp!2150693 e!4443500)))

(assert (= (and b!7440758 (is-Cons!71996 (t!386683 (exprs!8890 setElem!56564)))) b!7441248))

(declare-fun b!7441251 () Bool)

(declare-fun e!4443501 () Bool)

(declare-fun tp!2150896 () Bool)

(assert (=> b!7441251 (= e!4443501 tp!2150896)))

(declare-fun b!7441249 () Bool)

(assert (=> b!7441249 (= e!4443501 tp_is_empty!49159)))

(declare-fun b!7441252 () Bool)

(declare-fun tp!2150899 () Bool)

(declare-fun tp!2150897 () Bool)

(assert (=> b!7441252 (= e!4443501 (and tp!2150899 tp!2150897))))

(assert (=> b!7440800 (= tp!2150745 e!4443501)))

(declare-fun b!7441250 () Bool)

(declare-fun tp!2150898 () Bool)

(declare-fun tp!2150900 () Bool)

(assert (=> b!7441250 (= e!4443501 (and tp!2150898 tp!2150900))))

(assert (= (and b!7440800 (is-ElementMatch!19450 (regOne!39412 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441249))

(assert (= (and b!7440800 (is-Concat!28295 (regOne!39412 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441250))

(assert (= (and b!7440800 (is-Star!19450 (regOne!39412 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441251))

(assert (= (and b!7440800 (is-Union!19450 (regOne!39412 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441252))

(declare-fun b!7441255 () Bool)

(declare-fun e!4443502 () Bool)

(declare-fun tp!2150901 () Bool)

(assert (=> b!7441255 (= e!4443502 tp!2150901)))

(declare-fun b!7441253 () Bool)

(assert (=> b!7441253 (= e!4443502 tp_is_empty!49159)))

(declare-fun b!7441256 () Bool)

(declare-fun tp!2150904 () Bool)

(declare-fun tp!2150902 () Bool)

(assert (=> b!7441256 (= e!4443502 (and tp!2150904 tp!2150902))))

(assert (=> b!7440800 (= tp!2150747 e!4443502)))

(declare-fun b!7441254 () Bool)

(declare-fun tp!2150903 () Bool)

(declare-fun tp!2150905 () Bool)

(assert (=> b!7441254 (= e!4443502 (and tp!2150903 tp!2150905))))

(assert (= (and b!7440800 (is-ElementMatch!19450 (regTwo!39412 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441253))

(assert (= (and b!7440800 (is-Concat!28295 (regTwo!39412 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441254))

(assert (= (and b!7440800 (is-Star!19450 (regTwo!39412 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441255))

(assert (= (and b!7440800 (is-Union!19450 (regTwo!39412 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441256))

(declare-fun b!7441259 () Bool)

(declare-fun e!4443503 () Bool)

(declare-fun tp!2150906 () Bool)

(assert (=> b!7441259 (= e!4443503 tp!2150906)))

(declare-fun b!7441257 () Bool)

(assert (=> b!7441257 (= e!4443503 tp_is_empty!49159)))

(declare-fun b!7441260 () Bool)

(declare-fun tp!2150909 () Bool)

(declare-fun tp!2150907 () Bool)

(assert (=> b!7441260 (= e!4443503 (and tp!2150909 tp!2150907))))

(assert (=> b!7440765 (= tp!2150699 e!4443503)))

(declare-fun b!7441258 () Bool)

(declare-fun tp!2150908 () Bool)

(declare-fun tp!2150910 () Bool)

(assert (=> b!7441258 (= e!4443503 (and tp!2150908 tp!2150910))))

(assert (= (and b!7440765 (is-ElementMatch!19450 (reg!19779 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441257))

(assert (= (and b!7440765 (is-Concat!28295 (reg!19779 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441258))

(assert (= (and b!7440765 (is-Star!19450 (reg!19779 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441259))

(assert (= (and b!7440765 (is-Union!19450 (reg!19779 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441260))

(declare-fun b!7441263 () Bool)

(declare-fun e!4443504 () Bool)

(declare-fun tp!2150911 () Bool)

(assert (=> b!7441263 (= e!4443504 tp!2150911)))

(declare-fun b!7441261 () Bool)

(assert (=> b!7441261 (= e!4443504 tp_is_empty!49159)))

(declare-fun b!7441264 () Bool)

(declare-fun tp!2150914 () Bool)

(declare-fun tp!2150912 () Bool)

(assert (=> b!7441264 (= e!4443504 (and tp!2150914 tp!2150912))))

(assert (=> b!7440808 (= tp!2150754 e!4443504)))

(declare-fun b!7441262 () Bool)

(declare-fun tp!2150913 () Bool)

(declare-fun tp!2150915 () Bool)

(assert (=> b!7441262 (= e!4443504 (and tp!2150913 tp!2150915))))

(assert (= (and b!7440808 (is-ElementMatch!19450 (h!78444 (exprs!8890 setElem!56565)))) b!7441261))

(assert (= (and b!7440808 (is-Concat!28295 (h!78444 (exprs!8890 setElem!56565)))) b!7441262))

(assert (= (and b!7440808 (is-Star!19450 (h!78444 (exprs!8890 setElem!56565)))) b!7441263))

(assert (= (and b!7440808 (is-Union!19450 (h!78444 (exprs!8890 setElem!56565)))) b!7441264))

(declare-fun b!7441265 () Bool)

(declare-fun e!4443505 () Bool)

(declare-fun tp!2150916 () Bool)

(declare-fun tp!2150917 () Bool)

(assert (=> b!7441265 (= e!4443505 (and tp!2150916 tp!2150917))))

(assert (=> b!7440808 (= tp!2150755 e!4443505)))

(assert (= (and b!7440808 (is-Cons!71996 (t!386683 (exprs!8890 setElem!56565)))) b!7441265))

(declare-fun b!7441266 () Bool)

(declare-fun e!4443506 () Bool)

(declare-fun tp!2150918 () Bool)

(declare-fun tp!2150919 () Bool)

(assert (=> b!7441266 (= e!4443506 (and tp!2150918 tp!2150919))))

(assert (=> b!7440668 (= tp!2150671 e!4443506)))

(assert (= (and b!7440668 (is-Cons!71996 (exprs!8890 (h!78445 res!2986380)))) b!7441266))

(declare-fun b!7441268 () Bool)

(declare-fun e!4443508 () Bool)

(declare-fun tp!2150920 () Bool)

(assert (=> b!7441268 (= e!4443508 tp!2150920)))

(declare-fun e!4443507 () Bool)

(declare-fun b!7441267 () Bool)

(declare-fun tp!2150921 () Bool)

(assert (=> b!7441267 (= e!4443507 (and (inv!91987 (h!78445 (t!386684 (t!386684 res!2986307)))) e!4443508 tp!2150921))))

(assert (=> b!7440792 (= tp!2150735 e!4443507)))

(assert (= b!7441267 b!7441268))

(assert (= (and b!7440792 (is-Cons!71997 (t!386684 (t!386684 res!2986307)))) b!7441267))

(declare-fun m!8053292 () Bool)

(assert (=> b!7441267 m!8053292))

(declare-fun b!7441271 () Bool)

(declare-fun e!4443509 () Bool)

(declare-fun tp!2150922 () Bool)

(assert (=> b!7441271 (= e!4443509 tp!2150922)))

(declare-fun b!7441269 () Bool)

(assert (=> b!7441269 (= e!4443509 tp_is_empty!49159)))

(declare-fun b!7441272 () Bool)

(declare-fun tp!2150925 () Bool)

(declare-fun tp!2150923 () Bool)

(assert (=> b!7441272 (= e!4443509 (and tp!2150925 tp!2150923))))

(assert (=> b!7440769 (= tp!2150708 e!4443509)))

(declare-fun b!7441270 () Bool)

(declare-fun tp!2150924 () Bool)

(declare-fun tp!2150926 () Bool)

(assert (=> b!7441270 (= e!4443509 (and tp!2150924 tp!2150926))))

(assert (= (and b!7440769 (is-ElementMatch!19450 (regOne!39412 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441269))

(assert (= (and b!7440769 (is-Concat!28295 (regOne!39412 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441270))

(assert (= (and b!7440769 (is-Star!19450 (regOne!39412 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441271))

(assert (= (and b!7440769 (is-Union!19450 (regOne!39412 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441272))

(declare-fun b!7441275 () Bool)

(declare-fun e!4443510 () Bool)

(declare-fun tp!2150927 () Bool)

(assert (=> b!7441275 (= e!4443510 tp!2150927)))

(declare-fun b!7441273 () Bool)

(assert (=> b!7441273 (= e!4443510 tp_is_empty!49159)))

(declare-fun b!7441276 () Bool)

(declare-fun tp!2150930 () Bool)

(declare-fun tp!2150928 () Bool)

(assert (=> b!7441276 (= e!4443510 (and tp!2150930 tp!2150928))))

(assert (=> b!7440769 (= tp!2150710 e!4443510)))

(declare-fun b!7441274 () Bool)

(declare-fun tp!2150929 () Bool)

(declare-fun tp!2150931 () Bool)

(assert (=> b!7441274 (= e!4443510 (and tp!2150929 tp!2150931))))

(assert (= (and b!7440769 (is-ElementMatch!19450 (regTwo!39412 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441273))

(assert (= (and b!7440769 (is-Concat!28295 (regTwo!39412 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441274))

(assert (= (and b!7440769 (is-Star!19450 (regTwo!39412 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441275))

(assert (= (and b!7440769 (is-Union!19450 (regTwo!39412 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441276))

(declare-fun b!7441279 () Bool)

(declare-fun e!4443511 () Bool)

(declare-fun tp!2150932 () Bool)

(assert (=> b!7441279 (= e!4443511 tp!2150932)))

(declare-fun b!7441277 () Bool)

(assert (=> b!7441277 (= e!4443511 tp_is_empty!49159)))

(declare-fun b!7441280 () Bool)

(declare-fun tp!2150935 () Bool)

(declare-fun tp!2150933 () Bool)

(assert (=> b!7441280 (= e!4443511 (and tp!2150935 tp!2150933))))

(assert (=> b!7440757 (= tp!2150690 e!4443511)))

(declare-fun b!7441278 () Bool)

(declare-fun tp!2150934 () Bool)

(declare-fun tp!2150936 () Bool)

(assert (=> b!7441278 (= e!4443511 (and tp!2150934 tp!2150936))))

(assert (= (and b!7440757 (is-ElementMatch!19450 (h!78444 (t!386683 (exprs!8890 setElem!56558))))) b!7441277))

(assert (= (and b!7440757 (is-Concat!28295 (h!78444 (t!386683 (exprs!8890 setElem!56558))))) b!7441278))

(assert (= (and b!7440757 (is-Star!19450 (h!78444 (t!386683 (exprs!8890 setElem!56558))))) b!7441279))

(assert (= (and b!7440757 (is-Union!19450 (h!78444 (t!386683 (exprs!8890 setElem!56558))))) b!7441280))

(declare-fun b!7441281 () Bool)

(declare-fun e!4443512 () Bool)

(declare-fun tp!2150937 () Bool)

(declare-fun tp!2150938 () Bool)

(assert (=> b!7441281 (= e!4443512 (and tp!2150937 tp!2150938))))

(assert (=> b!7440757 (= tp!2150691 e!4443512)))

(assert (= (and b!7440757 (is-Cons!71996 (t!386683 (t!386683 (exprs!8890 setElem!56558))))) b!7441281))

(declare-fun b!7441282 () Bool)

(declare-fun e!4443513 () Bool)

(declare-fun tp!2150939 () Bool)

(assert (=> b!7441282 (= e!4443513 (and tp_is_empty!49159 tp!2150939))))

(assert (=> b!7440807 (= tp!2150753 e!4443513)))

(assert (= (and b!7440807 (is-Cons!71998 (t!386685 (t!386685 (t!386685 (t!386685 s!7945)))))) b!7441282))

(declare-fun b!7441285 () Bool)

(declare-fun e!4443514 () Bool)

(declare-fun tp!2150940 () Bool)

(assert (=> b!7441285 (= e!4443514 tp!2150940)))

(declare-fun b!7441283 () Bool)

(assert (=> b!7441283 (= e!4443514 tp_is_empty!49159)))

(declare-fun b!7441286 () Bool)

(declare-fun tp!2150943 () Bool)

(declare-fun tp!2150941 () Bool)

(assert (=> b!7441286 (= e!4443514 (and tp!2150943 tp!2150941))))

(assert (=> b!7440785 (= tp!2150728 e!4443514)))

(declare-fun b!7441284 () Bool)

(declare-fun tp!2150942 () Bool)

(declare-fun tp!2150944 () Bool)

(assert (=> b!7441284 (= e!4443514 (and tp!2150942 tp!2150944))))

(assert (= (and b!7440785 (is-ElementMatch!19450 (h!78444 (exprs!8890 (h!78445 res!2986307))))) b!7441283))

(assert (= (and b!7440785 (is-Concat!28295 (h!78444 (exprs!8890 (h!78445 res!2986307))))) b!7441284))

(assert (= (and b!7440785 (is-Star!19450 (h!78444 (exprs!8890 (h!78445 res!2986307))))) b!7441285))

(assert (= (and b!7440785 (is-Union!19450 (h!78444 (exprs!8890 (h!78445 res!2986307))))) b!7441286))

(declare-fun b!7441287 () Bool)

(declare-fun e!4443515 () Bool)

(declare-fun tp!2150945 () Bool)

(declare-fun tp!2150946 () Bool)

(assert (=> b!7441287 (= e!4443515 (and tp!2150945 tp!2150946))))

(assert (=> b!7440785 (= tp!2150729 e!4443515)))

(assert (= (and b!7440785 (is-Cons!71996 (t!386683 (exprs!8890 (h!78445 res!2986307))))) b!7441287))

(declare-fun b!7441290 () Bool)

(declare-fun e!4443516 () Bool)

(declare-fun tp!2150947 () Bool)

(assert (=> b!7441290 (= e!4443516 tp!2150947)))

(declare-fun b!7441288 () Bool)

(assert (=> b!7441288 (= e!4443516 tp_is_empty!49159)))

(declare-fun b!7441291 () Bool)

(declare-fun tp!2150950 () Bool)

(declare-fun tp!2150948 () Bool)

(assert (=> b!7441291 (= e!4443516 (and tp!2150950 tp!2150948))))

(assert (=> b!7440747 (= tp!2150675 e!4443516)))

(declare-fun b!7441289 () Bool)

(declare-fun tp!2150949 () Bool)

(declare-fun tp!2150951 () Bool)

(assert (=> b!7441289 (= e!4443516 (and tp!2150949 tp!2150951))))

(assert (= (and b!7440747 (is-ElementMatch!19450 (reg!19779 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441288))

(assert (= (and b!7440747 (is-Concat!28295 (reg!19779 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441289))

(assert (= (and b!7440747 (is-Star!19450 (reg!19779 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441290))

(assert (= (and b!7440747 (is-Union!19450 (reg!19779 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441291))

(declare-fun b!7441294 () Bool)

(declare-fun e!4443517 () Bool)

(declare-fun tp!2150952 () Bool)

(assert (=> b!7441294 (= e!4443517 tp!2150952)))

(declare-fun b!7441292 () Bool)

(assert (=> b!7441292 (= e!4443517 tp_is_empty!49159)))

(declare-fun b!7441295 () Bool)

(declare-fun tp!2150955 () Bool)

(declare-fun tp!2150953 () Bool)

(assert (=> b!7441295 (= e!4443517 (and tp!2150955 tp!2150953))))

(assert (=> b!7440756 (= tp!2150688 e!4443517)))

(declare-fun b!7441293 () Bool)

(declare-fun tp!2150954 () Bool)

(declare-fun tp!2150956 () Bool)

(assert (=> b!7441293 (= e!4443517 (and tp!2150954 tp!2150956))))

(assert (= (and b!7440756 (is-ElementMatch!19450 (regOne!39413 (h!78444 (exprs!8890 setElem!56558))))) b!7441292))

(assert (= (and b!7440756 (is-Concat!28295 (regOne!39413 (h!78444 (exprs!8890 setElem!56558))))) b!7441293))

(assert (= (and b!7440756 (is-Star!19450 (regOne!39413 (h!78444 (exprs!8890 setElem!56558))))) b!7441294))

(assert (= (and b!7440756 (is-Union!19450 (regOne!39413 (h!78444 (exprs!8890 setElem!56558))))) b!7441295))

(declare-fun b!7441298 () Bool)

(declare-fun e!4443518 () Bool)

(declare-fun tp!2150957 () Bool)

(assert (=> b!7441298 (= e!4443518 tp!2150957)))

(declare-fun b!7441296 () Bool)

(assert (=> b!7441296 (= e!4443518 tp_is_empty!49159)))

(declare-fun b!7441299 () Bool)

(declare-fun tp!2150960 () Bool)

(declare-fun tp!2150958 () Bool)

(assert (=> b!7441299 (= e!4443518 (and tp!2150960 tp!2150958))))

(assert (=> b!7440756 (= tp!2150686 e!4443518)))

(declare-fun b!7441297 () Bool)

(declare-fun tp!2150959 () Bool)

(declare-fun tp!2150961 () Bool)

(assert (=> b!7441297 (= e!4443518 (and tp!2150959 tp!2150961))))

(assert (= (and b!7440756 (is-ElementMatch!19450 (regTwo!39413 (h!78444 (exprs!8890 setElem!56558))))) b!7441296))

(assert (= (and b!7440756 (is-Concat!28295 (regTwo!39413 (h!78444 (exprs!8890 setElem!56558))))) b!7441297))

(assert (= (and b!7440756 (is-Star!19450 (regTwo!39413 (h!78444 (exprs!8890 setElem!56558))))) b!7441298))

(assert (= (and b!7440756 (is-Union!19450 (regTwo!39413 (h!78444 (exprs!8890 setElem!56558))))) b!7441299))

(declare-fun b!7441302 () Bool)

(declare-fun e!4443519 () Bool)

(declare-fun tp!2150962 () Bool)

(assert (=> b!7441302 (= e!4443519 tp!2150962)))

(declare-fun b!7441300 () Bool)

(assert (=> b!7441300 (= e!4443519 tp_is_empty!49159)))

(declare-fun b!7441303 () Bool)

(declare-fun tp!2150965 () Bool)

(declare-fun tp!2150963 () Bool)

(assert (=> b!7441303 (= e!4443519 (and tp!2150965 tp!2150963))))

(assert (=> b!7440798 (= tp!2150741 e!4443519)))

(declare-fun b!7441301 () Bool)

(declare-fun tp!2150964 () Bool)

(declare-fun tp!2150966 () Bool)

(assert (=> b!7441301 (= e!4443519 (and tp!2150964 tp!2150966))))

(assert (= (and b!7440798 (is-ElementMatch!19450 (h!78444 (t!386683 (t!386683 (exprs!8890 empty!3659)))))) b!7441300))

(assert (= (and b!7440798 (is-Concat!28295 (h!78444 (t!386683 (t!386683 (exprs!8890 empty!3659)))))) b!7441301))

(assert (= (and b!7440798 (is-Star!19450 (h!78444 (t!386683 (t!386683 (exprs!8890 empty!3659)))))) b!7441302))

(assert (= (and b!7440798 (is-Union!19450 (h!78444 (t!386683 (t!386683 (exprs!8890 empty!3659)))))) b!7441303))

(declare-fun b!7441304 () Bool)

(declare-fun e!4443520 () Bool)

(declare-fun tp!2150967 () Bool)

(declare-fun tp!2150968 () Bool)

(assert (=> b!7441304 (= e!4443520 (and tp!2150967 tp!2150968))))

(assert (=> b!7440798 (= tp!2150742 e!4443520)))

(assert (= (and b!7440798 (is-Cons!71996 (t!386683 (t!386683 (t!386683 (exprs!8890 empty!3659)))))) b!7441304))

(declare-fun b!7441305 () Bool)

(declare-fun e!4443521 () Bool)

(declare-fun tp!2150969 () Bool)

(declare-fun tp!2150970 () Bool)

(assert (=> b!7441305 (= e!4443521 (and tp!2150969 tp!2150970))))

(assert (=> b!7440633 (= tp!2150669 e!4443521)))

(assert (= (and b!7440633 (is-Cons!71996 (exprs!8890 setElem!56570))) b!7441305))

(declare-fun b!7441308 () Bool)

(declare-fun e!4443522 () Bool)

(declare-fun tp!2150971 () Bool)

(assert (=> b!7441308 (= e!4443522 tp!2150971)))

(declare-fun b!7441306 () Bool)

(assert (=> b!7441306 (= e!4443522 tp_is_empty!49159)))

(declare-fun b!7441309 () Bool)

(declare-fun tp!2150974 () Bool)

(declare-fun tp!2150972 () Bool)

(assert (=> b!7441309 (= e!4443522 (and tp!2150974 tp!2150972))))

(assert (=> b!7440754 (= tp!2150687 e!4443522)))

(declare-fun b!7441307 () Bool)

(declare-fun tp!2150973 () Bool)

(declare-fun tp!2150975 () Bool)

(assert (=> b!7441307 (= e!4443522 (and tp!2150973 tp!2150975))))

(assert (= (and b!7440754 (is-ElementMatch!19450 (regOne!39412 (h!78444 (exprs!8890 setElem!56558))))) b!7441306))

(assert (= (and b!7440754 (is-Concat!28295 (regOne!39412 (h!78444 (exprs!8890 setElem!56558))))) b!7441307))

(assert (= (and b!7440754 (is-Star!19450 (regOne!39412 (h!78444 (exprs!8890 setElem!56558))))) b!7441308))

(assert (= (and b!7440754 (is-Union!19450 (regOne!39412 (h!78444 (exprs!8890 setElem!56558))))) b!7441309))

(declare-fun b!7441312 () Bool)

(declare-fun e!4443523 () Bool)

(declare-fun tp!2150976 () Bool)

(assert (=> b!7441312 (= e!4443523 tp!2150976)))

(declare-fun b!7441310 () Bool)

(assert (=> b!7441310 (= e!4443523 tp_is_empty!49159)))

(declare-fun b!7441313 () Bool)

(declare-fun tp!2150979 () Bool)

(declare-fun tp!2150977 () Bool)

(assert (=> b!7441313 (= e!4443523 (and tp!2150979 tp!2150977))))

(assert (=> b!7440754 (= tp!2150689 e!4443523)))

(declare-fun b!7441311 () Bool)

(declare-fun tp!2150978 () Bool)

(declare-fun tp!2150980 () Bool)

(assert (=> b!7441311 (= e!4443523 (and tp!2150978 tp!2150980))))

(assert (= (and b!7440754 (is-ElementMatch!19450 (regTwo!39412 (h!78444 (exprs!8890 setElem!56558))))) b!7441310))

(assert (= (and b!7440754 (is-Concat!28295 (regTwo!39412 (h!78444 (exprs!8890 setElem!56558))))) b!7441311))

(assert (= (and b!7440754 (is-Star!19450 (regTwo!39412 (h!78444 (exprs!8890 setElem!56558))))) b!7441312))

(assert (= (and b!7440754 (is-Union!19450 (regTwo!39412 (h!78444 (exprs!8890 setElem!56558))))) b!7441313))

(declare-fun b!7441316 () Bool)

(declare-fun e!4443524 () Bool)

(declare-fun tp!2150981 () Bool)

(assert (=> b!7441316 (= e!4443524 tp!2150981)))

(declare-fun b!7441314 () Bool)

(assert (=> b!7441314 (= e!4443524 tp_is_empty!49159)))

(declare-fun b!7441317 () Bool)

(declare-fun tp!2150984 () Bool)

(declare-fun tp!2150982 () Bool)

(assert (=> b!7441317 (= e!4443524 (and tp!2150984 tp!2150982))))

(assert (=> b!7440805 (= tp!2150748 e!4443524)))

(declare-fun b!7441315 () Bool)

(declare-fun tp!2150983 () Bool)

(declare-fun tp!2150985 () Bool)

(assert (=> b!7441315 (= e!4443524 (and tp!2150983 tp!2150985))))

(assert (= (and b!7440805 (is-ElementMatch!19450 (reg!19779 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441314))

(assert (= (and b!7440805 (is-Concat!28295 (reg!19779 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441315))

(assert (= (and b!7440805 (is-Star!19450 (reg!19779 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441316))

(assert (= (and b!7440805 (is-Union!19450 (reg!19779 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441317))

(declare-fun b!7441320 () Bool)

(declare-fun e!4443525 () Bool)

(declare-fun tp!2150986 () Bool)

(assert (=> b!7441320 (= e!4443525 tp!2150986)))

(declare-fun b!7441318 () Bool)

(assert (=> b!7441318 (= e!4443525 tp_is_empty!49159)))

(declare-fun b!7441321 () Bool)

(declare-fun tp!2150989 () Bool)

(declare-fun tp!2150987 () Bool)

(assert (=> b!7441321 (= e!4443525 (and tp!2150989 tp!2150987))))

(assert (=> b!7440784 (= tp!2150726 e!4443525)))

(declare-fun b!7441319 () Bool)

(declare-fun tp!2150988 () Bool)

(declare-fun tp!2150990 () Bool)

(assert (=> b!7441319 (= e!4443525 (and tp!2150988 tp!2150990))))

(assert (= (and b!7440784 (is-ElementMatch!19450 (regOne!39413 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441318))

(assert (= (and b!7440784 (is-Concat!28295 (regOne!39413 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441319))

(assert (= (and b!7440784 (is-Star!19450 (regOne!39413 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441320))

(assert (= (and b!7440784 (is-Union!19450 (regOne!39413 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441321))

(declare-fun b!7441324 () Bool)

(declare-fun e!4443526 () Bool)

(declare-fun tp!2150991 () Bool)

(assert (=> b!7441324 (= e!4443526 tp!2150991)))

(declare-fun b!7441322 () Bool)

(assert (=> b!7441322 (= e!4443526 tp_is_empty!49159)))

(declare-fun b!7441325 () Bool)

(declare-fun tp!2150994 () Bool)

(declare-fun tp!2150992 () Bool)

(assert (=> b!7441325 (= e!4443526 (and tp!2150994 tp!2150992))))

(assert (=> b!7440784 (= tp!2150724 e!4443526)))

(declare-fun b!7441323 () Bool)

(declare-fun tp!2150993 () Bool)

(declare-fun tp!2150995 () Bool)

(assert (=> b!7441323 (= e!4443526 (and tp!2150993 tp!2150995))))

(assert (= (and b!7440784 (is-ElementMatch!19450 (regTwo!39413 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441322))

(assert (= (and b!7440784 (is-Concat!28295 (regTwo!39413 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441323))

(assert (= (and b!7440784 (is-Star!19450 (regTwo!39413 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441324))

(assert (= (and b!7440784 (is-Union!19450 (regTwo!39413 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441325))

(declare-fun b!7441328 () Bool)

(declare-fun e!4443527 () Bool)

(declare-fun tp!2150996 () Bool)

(assert (=> b!7441328 (= e!4443527 tp!2150996)))

(declare-fun b!7441326 () Bool)

(assert (=> b!7441326 (= e!4443527 tp_is_empty!49159)))

(declare-fun b!7441329 () Bool)

(declare-fun tp!2150999 () Bool)

(declare-fun tp!2150997 () Bool)

(assert (=> b!7441329 (= e!4443527 (and tp!2150999 tp!2150997))))

(assert (=> b!7440782 (= tp!2150725 e!4443527)))

(declare-fun b!7441327 () Bool)

(declare-fun tp!2150998 () Bool)

(declare-fun tp!2151000 () Bool)

(assert (=> b!7441327 (= e!4443527 (and tp!2150998 tp!2151000))))

(assert (= (and b!7440782 (is-ElementMatch!19450 (regOne!39412 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441326))

(assert (= (and b!7440782 (is-Concat!28295 (regOne!39412 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441327))

(assert (= (and b!7440782 (is-Star!19450 (regOne!39412 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441328))

(assert (= (and b!7440782 (is-Union!19450 (regOne!39412 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441329))

(declare-fun b!7441332 () Bool)

(declare-fun e!4443528 () Bool)

(declare-fun tp!2151001 () Bool)

(assert (=> b!7441332 (= e!4443528 tp!2151001)))

(declare-fun b!7441330 () Bool)

(assert (=> b!7441330 (= e!4443528 tp_is_empty!49159)))

(declare-fun b!7441333 () Bool)

(declare-fun tp!2151004 () Bool)

(declare-fun tp!2151002 () Bool)

(assert (=> b!7441333 (= e!4443528 (and tp!2151004 tp!2151002))))

(assert (=> b!7440782 (= tp!2150727 e!4443528)))

(declare-fun b!7441331 () Bool)

(declare-fun tp!2151003 () Bool)

(declare-fun tp!2151005 () Bool)

(assert (=> b!7441331 (= e!4443528 (and tp!2151003 tp!2151005))))

(assert (= (and b!7440782 (is-ElementMatch!19450 (regTwo!39412 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441330))

(assert (= (and b!7440782 (is-Concat!28295 (regTwo!39412 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441331))

(assert (= (and b!7440782 (is-Star!19450 (regTwo!39412 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441332))

(assert (= (and b!7440782 (is-Union!19450 (regTwo!39412 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441333))

(declare-fun b!7441334 () Bool)

(declare-fun e!4443529 () Bool)

(declare-fun tp!2151006 () Bool)

(declare-fun tp!2151007 () Bool)

(assert (=> b!7441334 (= e!4443529 (and tp!2151006 tp!2151007))))

(assert (=> b!7440767 (= tp!2150704 e!4443529)))

(assert (= (and b!7440767 (is-Cons!71996 (exprs!8890 setElem!56572))) b!7441334))

(declare-fun b!7441337 () Bool)

(declare-fun e!4443530 () Bool)

(declare-fun tp!2151008 () Bool)

(assert (=> b!7441337 (= e!4443530 tp!2151008)))

(declare-fun b!7441335 () Bool)

(assert (=> b!7441335 (= e!4443530 tp_is_empty!49159)))

(declare-fun b!7441338 () Bool)

(declare-fun tp!2151011 () Bool)

(declare-fun tp!2151009 () Bool)

(assert (=> b!7441338 (= e!4443530 (and tp!2151011 tp!2151009))))

(assert (=> b!7440774 (= tp!2150711 e!4443530)))

(declare-fun b!7441336 () Bool)

(declare-fun tp!2151010 () Bool)

(declare-fun tp!2151012 () Bool)

(assert (=> b!7441336 (= e!4443530 (and tp!2151010 tp!2151012))))

(assert (= (and b!7440774 (is-ElementMatch!19450 (reg!19779 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441335))

(assert (= (and b!7440774 (is-Concat!28295 (reg!19779 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441336))

(assert (= (and b!7440774 (is-Star!19450 (reg!19779 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441337))

(assert (= (and b!7440774 (is-Union!19450 (reg!19779 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441338))

(declare-fun b!7441341 () Bool)

(declare-fun e!4443531 () Bool)

(declare-fun tp!2151013 () Bool)

(assert (=> b!7441341 (= e!4443531 tp!2151013)))

(declare-fun b!7441339 () Bool)

(assert (=> b!7441339 (= e!4443531 tp_is_empty!49159)))

(declare-fun b!7441342 () Bool)

(declare-fun tp!2151016 () Bool)

(declare-fun tp!2151014 () Bool)

(assert (=> b!7441342 (= e!4443531 (and tp!2151016 tp!2151014))))

(assert (=> b!7440797 (= tp!2150739 e!4443531)))

(declare-fun b!7441340 () Bool)

(declare-fun tp!2151015 () Bool)

(declare-fun tp!2151017 () Bool)

(assert (=> b!7441340 (= e!4443531 (and tp!2151015 tp!2151017))))

(assert (= (and b!7440797 (is-ElementMatch!19450 (regOne!39413 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441339))

(assert (= (and b!7440797 (is-Concat!28295 (regOne!39413 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441340))

(assert (= (and b!7440797 (is-Star!19450 (regOne!39413 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441341))

(assert (= (and b!7440797 (is-Union!19450 (regOne!39413 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441342))

(declare-fun b!7441345 () Bool)

(declare-fun e!4443532 () Bool)

(declare-fun tp!2151018 () Bool)

(assert (=> b!7441345 (= e!4443532 tp!2151018)))

(declare-fun b!7441343 () Bool)

(assert (=> b!7441343 (= e!4443532 tp_is_empty!49159)))

(declare-fun b!7441346 () Bool)

(declare-fun tp!2151021 () Bool)

(declare-fun tp!2151019 () Bool)

(assert (=> b!7441346 (= e!4443532 (and tp!2151021 tp!2151019))))

(assert (=> b!7440797 (= tp!2150737 e!4443532)))

(declare-fun b!7441344 () Bool)

(declare-fun tp!2151020 () Bool)

(declare-fun tp!2151022 () Bool)

(assert (=> b!7441344 (= e!4443532 (and tp!2151020 tp!2151022))))

(assert (= (and b!7440797 (is-ElementMatch!19450 (regTwo!39413 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441343))

(assert (= (and b!7440797 (is-Concat!28295 (regTwo!39413 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441344))

(assert (= (and b!7440797 (is-Star!19450 (regTwo!39413 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441345))

(assert (= (and b!7440797 (is-Union!19450 (regTwo!39413 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441346))

(declare-fun b!7441349 () Bool)

(declare-fun e!4443533 () Bool)

(declare-fun tp!2151023 () Bool)

(assert (=> b!7441349 (= e!4443533 tp!2151023)))

(declare-fun b!7441347 () Bool)

(assert (=> b!7441347 (= e!4443533 tp_is_empty!49159)))

(declare-fun b!7441350 () Bool)

(declare-fun tp!2151026 () Bool)

(declare-fun tp!2151024 () Bool)

(assert (=> b!7441350 (= e!4443533 (and tp!2151026 tp!2151024))))

(assert (=> b!7440761 (= tp!2150694 e!4443533)))

(declare-fun b!7441348 () Bool)

(declare-fun tp!2151025 () Bool)

(declare-fun tp!2151027 () Bool)

(assert (=> b!7441348 (= e!4443533 (and tp!2151025 tp!2151027))))

(assert (= (and b!7440761 (is-ElementMatch!19450 (reg!19779 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441347))

(assert (= (and b!7440761 (is-Concat!28295 (reg!19779 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441348))

(assert (= (and b!7440761 (is-Star!19450 (reg!19779 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441349))

(assert (= (and b!7440761 (is-Union!19450 (reg!19779 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441350))

(declare-fun b!7441353 () Bool)

(declare-fun e!4443534 () Bool)

(declare-fun tp!2151028 () Bool)

(assert (=> b!7441353 (= e!4443534 tp!2151028)))

(declare-fun b!7441351 () Bool)

(assert (=> b!7441351 (= e!4443534 tp_is_empty!49159)))

(declare-fun b!7441354 () Bool)

(declare-fun tp!2151031 () Bool)

(declare-fun tp!2151029 () Bool)

(assert (=> b!7441354 (= e!4443534 (and tp!2151031 tp!2151029))))

(assert (=> b!7440795 (= tp!2150738 e!4443534)))

(declare-fun b!7441352 () Bool)

(declare-fun tp!2151030 () Bool)

(declare-fun tp!2151032 () Bool)

(assert (=> b!7441352 (= e!4443534 (and tp!2151030 tp!2151032))))

(assert (= (and b!7440795 (is-ElementMatch!19450 (regOne!39412 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441351))

(assert (= (and b!7440795 (is-Concat!28295 (regOne!39412 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441352))

(assert (= (and b!7440795 (is-Star!19450 (regOne!39412 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441353))

(assert (= (and b!7440795 (is-Union!19450 (regOne!39412 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441354))

(declare-fun b!7441357 () Bool)

(declare-fun e!4443535 () Bool)

(declare-fun tp!2151033 () Bool)

(assert (=> b!7441357 (= e!4443535 tp!2151033)))

(declare-fun b!7441355 () Bool)

(assert (=> b!7441355 (= e!4443535 tp_is_empty!49159)))

(declare-fun b!7441358 () Bool)

(declare-fun tp!2151036 () Bool)

(declare-fun tp!2151034 () Bool)

(assert (=> b!7441358 (= e!4443535 (and tp!2151036 tp!2151034))))

(assert (=> b!7440795 (= tp!2150740 e!4443535)))

(declare-fun b!7441356 () Bool)

(declare-fun tp!2151035 () Bool)

(declare-fun tp!2151037 () Bool)

(assert (=> b!7441356 (= e!4443535 (and tp!2151035 tp!2151037))))

(assert (= (and b!7440795 (is-ElementMatch!19450 (regTwo!39412 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441355))

(assert (= (and b!7440795 (is-Concat!28295 (regTwo!39412 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441356))

(assert (= (and b!7440795 (is-Star!19450 (regTwo!39412 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441357))

(assert (= (and b!7440795 (is-Union!19450 (regTwo!39412 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441358))

(declare-fun b!7441361 () Bool)

(declare-fun e!4443536 () Bool)

(declare-fun tp!2151038 () Bool)

(assert (=> b!7441361 (= e!4443536 tp!2151038)))

(declare-fun b!7441359 () Bool)

(assert (=> b!7441359 (= e!4443536 tp_is_empty!49159)))

(declare-fun b!7441362 () Bool)

(declare-fun tp!2151041 () Bool)

(declare-fun tp!2151039 () Bool)

(assert (=> b!7441362 (= e!4443536 (and tp!2151041 tp!2151039))))

(assert (=> b!7440811 (= tp!2150756 e!4443536)))

(declare-fun b!7441360 () Bool)

(declare-fun tp!2151040 () Bool)

(declare-fun tp!2151042 () Bool)

(assert (=> b!7441360 (= e!4443536 (and tp!2151040 tp!2151042))))

(assert (= (and b!7440811 (is-ElementMatch!19450 (reg!19779 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441359))

(assert (= (and b!7440811 (is-Concat!28295 (reg!19779 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441360))

(assert (= (and b!7440811 (is-Star!19450 (reg!19779 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441361))

(assert (= (and b!7440811 (is-Union!19450 (reg!19779 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441362))

(declare-fun b!7441365 () Bool)

(declare-fun e!4443537 () Bool)

(declare-fun tp!2151043 () Bool)

(assert (=> b!7441365 (= e!4443537 tp!2151043)))

(declare-fun b!7441363 () Bool)

(assert (=> b!7441363 (= e!4443537 tp_is_empty!49159)))

(declare-fun b!7441366 () Bool)

(declare-fun tp!2151046 () Bool)

(declare-fun tp!2151044 () Bool)

(assert (=> b!7441366 (= e!4443537 (and tp!2151046 tp!2151044))))

(assert (=> b!7440752 (= tp!2150683 e!4443537)))

(declare-fun b!7441364 () Bool)

(declare-fun tp!2151045 () Bool)

(declare-fun tp!2151047 () Bool)

(assert (=> b!7441364 (= e!4443537 (and tp!2151045 tp!2151047))))

(assert (= (and b!7440752 (is-ElementMatch!19450 (regOne!39413 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441363))

(assert (= (and b!7440752 (is-Concat!28295 (regOne!39413 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441364))

(assert (= (and b!7440752 (is-Star!19450 (regOne!39413 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441365))

(assert (= (and b!7440752 (is-Union!19450 (regOne!39413 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441366))

(declare-fun b!7441369 () Bool)

(declare-fun e!4443538 () Bool)

(declare-fun tp!2151048 () Bool)

(assert (=> b!7441369 (= e!4443538 tp!2151048)))

(declare-fun b!7441367 () Bool)

(assert (=> b!7441367 (= e!4443538 tp_is_empty!49159)))

(declare-fun b!7441370 () Bool)

(declare-fun tp!2151051 () Bool)

(declare-fun tp!2151049 () Bool)

(assert (=> b!7441370 (= e!4443538 (and tp!2151051 tp!2151049))))

(assert (=> b!7440752 (= tp!2150681 e!4443538)))

(declare-fun b!7441368 () Bool)

(declare-fun tp!2151050 () Bool)

(declare-fun tp!2151052 () Bool)

(assert (=> b!7441368 (= e!4443538 (and tp!2151050 tp!2151052))))

(assert (= (and b!7440752 (is-ElementMatch!19450 (regTwo!39413 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441367))

(assert (= (and b!7440752 (is-Concat!28295 (regTwo!39413 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441368))

(assert (= (and b!7440752 (is-Star!19450 (regTwo!39413 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441369))

(assert (= (and b!7440752 (is-Union!19450 (regTwo!39413 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441370))

(declare-fun b!7441373 () Bool)

(declare-fun e!4443539 () Bool)

(declare-fun tp!2151053 () Bool)

(assert (=> b!7441373 (= e!4443539 tp!2151053)))

(declare-fun b!7441371 () Bool)

(assert (=> b!7441371 (= e!4443539 tp_is_empty!49159)))

(declare-fun b!7441374 () Bool)

(declare-fun tp!2151056 () Bool)

(declare-fun tp!2151054 () Bool)

(assert (=> b!7441374 (= e!4443539 (and tp!2151056 tp!2151054))))

(assert (=> b!7440780 (= tp!2150721 e!4443539)))

(declare-fun b!7441372 () Bool)

(declare-fun tp!2151055 () Bool)

(declare-fun tp!2151057 () Bool)

(assert (=> b!7441372 (= e!4443539 (and tp!2151055 tp!2151057))))

(assert (= (and b!7440780 (is-ElementMatch!19450 (regOne!39413 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441371))

(assert (= (and b!7440780 (is-Concat!28295 (regOne!39413 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441372))

(assert (= (and b!7440780 (is-Star!19450 (regOne!39413 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441373))

(assert (= (and b!7440780 (is-Union!19450 (regOne!39413 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441374))

(declare-fun b!7441377 () Bool)

(declare-fun e!4443540 () Bool)

(declare-fun tp!2151058 () Bool)

(assert (=> b!7441377 (= e!4443540 tp!2151058)))

(declare-fun b!7441375 () Bool)

(assert (=> b!7441375 (= e!4443540 tp_is_empty!49159)))

(declare-fun b!7441378 () Bool)

(declare-fun tp!2151061 () Bool)

(declare-fun tp!2151059 () Bool)

(assert (=> b!7441378 (= e!4443540 (and tp!2151061 tp!2151059))))

(assert (=> b!7440780 (= tp!2150719 e!4443540)))

(declare-fun b!7441376 () Bool)

(declare-fun tp!2151060 () Bool)

(declare-fun tp!2151062 () Bool)

(assert (=> b!7441376 (= e!4443540 (and tp!2151060 tp!2151062))))

(assert (= (and b!7440780 (is-ElementMatch!19450 (regTwo!39413 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441375))

(assert (= (and b!7440780 (is-Concat!28295 (regTwo!39413 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441376))

(assert (= (and b!7440780 (is-Star!19450 (regTwo!39413 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441377))

(assert (= (and b!7440780 (is-Union!19450 (regTwo!39413 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441378))

(declare-fun condSetEmpty!56576 () Bool)

(assert (=> setNonEmpty!56571 (= condSetEmpty!56576 (= setRest!56571 (as set.empty (Set Context!16780))))))

(declare-fun setRes!56576 () Bool)

(assert (=> setNonEmpty!56571 (= tp!2150674 setRes!56576)))

(declare-fun setIsEmpty!56576 () Bool)

(assert (=> setIsEmpty!56576 setRes!56576))

(declare-fun setElem!56576 () Context!16780)

(declare-fun e!4443541 () Bool)

(declare-fun setNonEmpty!56576 () Bool)

(declare-fun tp!2151064 () Bool)

(assert (=> setNonEmpty!56576 (= setRes!56576 (and tp!2151064 (inv!91987 setElem!56576) e!4443541))))

(declare-fun setRest!56576 () (Set Context!16780))

(assert (=> setNonEmpty!56576 (= setRest!56571 (set.union (set.insert setElem!56576 (as set.empty (Set Context!16780))) setRest!56576))))

(declare-fun b!7441379 () Bool)

(declare-fun tp!2151063 () Bool)

(assert (=> b!7441379 (= e!4443541 tp!2151063)))

(assert (= (and setNonEmpty!56571 condSetEmpty!56576) setIsEmpty!56576))

(assert (= (and setNonEmpty!56571 (not condSetEmpty!56576)) setNonEmpty!56576))

(assert (= setNonEmpty!56576 b!7441379))

(declare-fun m!8053294 () Bool)

(assert (=> setNonEmpty!56576 m!8053294))

(declare-fun b!7441382 () Bool)

(declare-fun e!4443542 () Bool)

(declare-fun tp!2151065 () Bool)

(assert (=> b!7441382 (= e!4443542 tp!2151065)))

(declare-fun b!7441380 () Bool)

(assert (=> b!7441380 (= e!4443542 tp_is_empty!49159)))

(declare-fun b!7441383 () Bool)

(declare-fun tp!2151068 () Bool)

(declare-fun tp!2151066 () Bool)

(assert (=> b!7441383 (= e!4443542 (and tp!2151068 tp!2151066))))

(assert (=> b!7440750 (= tp!2150682 e!4443542)))

(declare-fun b!7441381 () Bool)

(declare-fun tp!2151067 () Bool)

(declare-fun tp!2151069 () Bool)

(assert (=> b!7441381 (= e!4443542 (and tp!2151067 tp!2151069))))

(assert (= (and b!7440750 (is-ElementMatch!19450 (regOne!39412 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441380))

(assert (= (and b!7440750 (is-Concat!28295 (regOne!39412 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441381))

(assert (= (and b!7440750 (is-Star!19450 (regOne!39412 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441382))

(assert (= (and b!7440750 (is-Union!19450 (regOne!39412 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441383))

(declare-fun b!7441386 () Bool)

(declare-fun e!4443543 () Bool)

(declare-fun tp!2151070 () Bool)

(assert (=> b!7441386 (= e!4443543 tp!2151070)))

(declare-fun b!7441384 () Bool)

(assert (=> b!7441384 (= e!4443543 tp_is_empty!49159)))

(declare-fun b!7441387 () Bool)

(declare-fun tp!2151073 () Bool)

(declare-fun tp!2151071 () Bool)

(assert (=> b!7441387 (= e!4443543 (and tp!2151073 tp!2151071))))

(assert (=> b!7440750 (= tp!2150684 e!4443543)))

(declare-fun b!7441385 () Bool)

(declare-fun tp!2151072 () Bool)

(declare-fun tp!2151074 () Bool)

(assert (=> b!7441385 (= e!4443543 (and tp!2151072 tp!2151074))))

(assert (= (and b!7440750 (is-ElementMatch!19450 (regTwo!39412 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441384))

(assert (= (and b!7440750 (is-Concat!28295 (regTwo!39412 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441385))

(assert (= (and b!7440750 (is-Star!19450 (regTwo!39412 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441386))

(assert (= (and b!7440750 (is-Union!19450 (regTwo!39412 (regTwo!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441387))

(declare-fun b!7441390 () Bool)

(declare-fun e!4443544 () Bool)

(declare-fun tp!2151075 () Bool)

(assert (=> b!7441390 (= e!4443544 tp!2151075)))

(declare-fun b!7441388 () Bool)

(assert (=> b!7441388 (= e!4443544 tp_is_empty!49159)))

(declare-fun b!7441391 () Bool)

(declare-fun tp!2151078 () Bool)

(declare-fun tp!2151076 () Bool)

(assert (=> b!7441391 (= e!4443544 (and tp!2151078 tp!2151076))))

(assert (=> b!7440801 (= tp!2150743 e!4443544)))

(declare-fun b!7441389 () Bool)

(declare-fun tp!2151077 () Bool)

(declare-fun tp!2151079 () Bool)

(assert (=> b!7441389 (= e!4443544 (and tp!2151077 tp!2151079))))

(assert (= (and b!7440801 (is-ElementMatch!19450 (reg!19779 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441388))

(assert (= (and b!7440801 (is-Concat!28295 (reg!19779 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441389))

(assert (= (and b!7440801 (is-Star!19450 (reg!19779 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441390))

(assert (= (and b!7440801 (is-Union!19450 (reg!19779 (regOne!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441391))

(declare-fun b!7441394 () Bool)

(declare-fun e!4443545 () Bool)

(declare-fun tp!2151080 () Bool)

(assert (=> b!7441394 (= e!4443545 tp!2151080)))

(declare-fun b!7441392 () Bool)

(assert (=> b!7441392 (= e!4443545 tp_is_empty!49159)))

(declare-fun b!7441395 () Bool)

(declare-fun tp!2151083 () Bool)

(declare-fun tp!2151081 () Bool)

(assert (=> b!7441395 (= e!4443545 (and tp!2151083 tp!2151081))))

(assert (=> b!7440778 (= tp!2150720 e!4443545)))

(declare-fun b!7441393 () Bool)

(declare-fun tp!2151082 () Bool)

(declare-fun tp!2151084 () Bool)

(assert (=> b!7441393 (= e!4443545 (and tp!2151082 tp!2151084))))

(assert (= (and b!7440778 (is-ElementMatch!19450 (regOne!39412 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441392))

(assert (= (and b!7440778 (is-Concat!28295 (regOne!39412 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441393))

(assert (= (and b!7440778 (is-Star!19450 (regOne!39412 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441394))

(assert (= (and b!7440778 (is-Union!19450 (regOne!39412 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441395))

(declare-fun b!7441398 () Bool)

(declare-fun e!4443546 () Bool)

(declare-fun tp!2151085 () Bool)

(assert (=> b!7441398 (= e!4443546 tp!2151085)))

(declare-fun b!7441396 () Bool)

(assert (=> b!7441396 (= e!4443546 tp_is_empty!49159)))

(declare-fun b!7441399 () Bool)

(declare-fun tp!2151088 () Bool)

(declare-fun tp!2151086 () Bool)

(assert (=> b!7441399 (= e!4443546 (and tp!2151088 tp!2151086))))

(assert (=> b!7440778 (= tp!2150722 e!4443546)))

(declare-fun b!7441397 () Bool)

(declare-fun tp!2151087 () Bool)

(declare-fun tp!2151089 () Bool)

(assert (=> b!7441397 (= e!4443546 (and tp!2151087 tp!2151089))))

(assert (= (and b!7440778 (is-ElementMatch!19450 (regTwo!39412 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441396))

(assert (= (and b!7440778 (is-Concat!28295 (regTwo!39412 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441397))

(assert (= (and b!7440778 (is-Star!19450 (regTwo!39412 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441398))

(assert (= (and b!7440778 (is-Union!19450 (regTwo!39412 (regOne!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441399))

(declare-fun b!7441402 () Bool)

(declare-fun e!4443547 () Bool)

(declare-fun tp!2151090 () Bool)

(assert (=> b!7441402 (= e!4443547 tp!2151090)))

(declare-fun b!7441400 () Bool)

(assert (=> b!7441400 (= e!4443547 tp_is_empty!49159)))

(declare-fun b!7441403 () Bool)

(declare-fun tp!2151093 () Bool)

(declare-fun tp!2151091 () Bool)

(assert (=> b!7441403 (= e!4443547 (and tp!2151093 tp!2151091))))

(assert (=> b!7440766 (= tp!2150702 e!4443547)))

(declare-fun b!7441401 () Bool)

(declare-fun tp!2151092 () Bool)

(declare-fun tp!2151094 () Bool)

(assert (=> b!7441401 (= e!4443547 (and tp!2151092 tp!2151094))))

(assert (= (and b!7440766 (is-ElementMatch!19450 (regOne!39413 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441400))

(assert (= (and b!7440766 (is-Concat!28295 (regOne!39413 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441401))

(assert (= (and b!7440766 (is-Star!19450 (regOne!39413 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441402))

(assert (= (and b!7440766 (is-Union!19450 (regOne!39413 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441403))

(declare-fun b!7441406 () Bool)

(declare-fun e!4443548 () Bool)

(declare-fun tp!2151095 () Bool)

(assert (=> b!7441406 (= e!4443548 tp!2151095)))

(declare-fun b!7441404 () Bool)

(assert (=> b!7441404 (= e!4443548 tp_is_empty!49159)))

(declare-fun b!7441407 () Bool)

(declare-fun tp!2151098 () Bool)

(declare-fun tp!2151096 () Bool)

(assert (=> b!7441407 (= e!4443548 (and tp!2151098 tp!2151096))))

(assert (=> b!7440766 (= tp!2150700 e!4443548)))

(declare-fun b!7441405 () Bool)

(declare-fun tp!2151097 () Bool)

(declare-fun tp!2151099 () Bool)

(assert (=> b!7441405 (= e!4443548 (and tp!2151097 tp!2151099))))

(assert (= (and b!7440766 (is-ElementMatch!19450 (regTwo!39413 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441404))

(assert (= (and b!7440766 (is-Concat!28295 (regTwo!39413 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441405))

(assert (= (and b!7440766 (is-Star!19450 (regTwo!39413 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441406))

(assert (= (and b!7440766 (is-Union!19450 (regTwo!39413 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441407))

(declare-fun b!7441410 () Bool)

(declare-fun e!4443549 () Bool)

(declare-fun tp!2151100 () Bool)

(assert (=> b!7441410 (= e!4443549 tp!2151100)))

(declare-fun b!7441408 () Bool)

(assert (=> b!7441408 (= e!4443549 tp_is_empty!49159)))

(declare-fun b!7441411 () Bool)

(declare-fun tp!2151103 () Bool)

(declare-fun tp!2151101 () Bool)

(assert (=> b!7441411 (= e!4443549 (and tp!2151103 tp!2151101))))

(assert (=> b!7440770 (= tp!2150706 e!4443549)))

(declare-fun b!7441409 () Bool)

(declare-fun tp!2151102 () Bool)

(declare-fun tp!2151104 () Bool)

(assert (=> b!7441409 (= e!4443549 (and tp!2151102 tp!2151104))))

(assert (= (and b!7440770 (is-ElementMatch!19450 (reg!19779 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441408))

(assert (= (and b!7440770 (is-Concat!28295 (reg!19779 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441409))

(assert (= (and b!7440770 (is-Star!19450 (reg!19779 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441410))

(assert (= (and b!7440770 (is-Union!19450 (reg!19779 (reg!19779 (h!78444 (exprs!8890 empty!3659)))))) b!7441411))

(declare-fun b!7441414 () Bool)

(declare-fun e!4443550 () Bool)

(declare-fun tp!2151105 () Bool)

(assert (=> b!7441414 (= e!4443550 tp!2151105)))

(declare-fun b!7441412 () Bool)

(assert (=> b!7441412 (= e!4443550 tp_is_empty!49159)))

(declare-fun b!7441415 () Bool)

(declare-fun tp!2151108 () Bool)

(declare-fun tp!2151106 () Bool)

(assert (=> b!7441415 (= e!4443550 (and tp!2151108 tp!2151106))))

(assert (=> b!7440764 (= tp!2150701 e!4443550)))

(declare-fun b!7441413 () Bool)

(declare-fun tp!2151107 () Bool)

(declare-fun tp!2151109 () Bool)

(assert (=> b!7441413 (= e!4443550 (and tp!2151107 tp!2151109))))

(assert (= (and b!7440764 (is-ElementMatch!19450 (regOne!39412 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441412))

(assert (= (and b!7440764 (is-Concat!28295 (regOne!39412 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441413))

(assert (= (and b!7440764 (is-Star!19450 (regOne!39412 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441414))

(assert (= (and b!7440764 (is-Union!19450 (regOne!39412 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441415))

(declare-fun b!7441418 () Bool)

(declare-fun e!4443551 () Bool)

(declare-fun tp!2151110 () Bool)

(assert (=> b!7441418 (= e!4443551 tp!2151110)))

(declare-fun b!7441416 () Bool)

(assert (=> b!7441416 (= e!4443551 tp_is_empty!49159)))

(declare-fun b!7441419 () Bool)

(declare-fun tp!2151113 () Bool)

(declare-fun tp!2151111 () Bool)

(assert (=> b!7441419 (= e!4443551 (and tp!2151113 tp!2151111))))

(assert (=> b!7440764 (= tp!2150703 e!4443551)))

(declare-fun b!7441417 () Bool)

(declare-fun tp!2151112 () Bool)

(declare-fun tp!2151114 () Bool)

(assert (=> b!7441417 (= e!4443551 (and tp!2151112 tp!2151114))))

(assert (= (and b!7440764 (is-ElementMatch!19450 (regTwo!39412 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441416))

(assert (= (and b!7440764 (is-Concat!28295 (regTwo!39412 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441417))

(assert (= (and b!7440764 (is-Star!19450 (regTwo!39412 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441418))

(assert (= (and b!7440764 (is-Union!19450 (regTwo!39412 (regTwo!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441419))

(declare-fun b!7441420 () Bool)

(declare-fun e!4443552 () Bool)

(declare-fun tp!2151115 () Bool)

(declare-fun tp!2151116 () Bool)

(assert (=> b!7441420 (= e!4443552 (and tp!2151115 tp!2151116))))

(assert (=> b!7440793 (= tp!2150734 e!4443552)))

(assert (= (and b!7440793 (is-Cons!71996 (exprs!8890 (h!78445 (t!386684 res!2986307))))) b!7441420))

(declare-fun b!7441422 () Bool)

(declare-fun e!4443554 () Bool)

(declare-fun tp!2151117 () Bool)

(assert (=> b!7441422 (= e!4443554 tp!2151117)))

(declare-fun b!7441421 () Bool)

(declare-fun tp!2151118 () Bool)

(declare-fun e!4443553 () Bool)

(assert (=> b!7441421 (= e!4443553 (and (inv!91987 (h!78445 (t!386684 res!2986380))) e!4443554 tp!2151118))))

(assert (=> b!7440667 (= tp!2150672 e!4443553)))

(assert (= b!7441421 b!7441422))

(assert (= (and b!7440667 (is-Cons!71997 (t!386684 res!2986380))) b!7441421))

(declare-fun m!8053296 () Bool)

(assert (=> b!7441421 m!8053296))

(declare-fun b!7441425 () Bool)

(declare-fun e!4443555 () Bool)

(declare-fun tp!2151119 () Bool)

(assert (=> b!7441425 (= e!4443555 tp!2151119)))

(declare-fun b!7441423 () Bool)

(assert (=> b!7441423 (= e!4443555 tp_is_empty!49159)))

(declare-fun b!7441426 () Bool)

(declare-fun tp!2151122 () Bool)

(declare-fun tp!2151120 () Bool)

(assert (=> b!7441426 (= e!4443555 (and tp!2151122 tp!2151120))))

(assert (=> b!7440748 (= tp!2150678 e!4443555)))

(declare-fun b!7441424 () Bool)

(declare-fun tp!2151121 () Bool)

(declare-fun tp!2151123 () Bool)

(assert (=> b!7441424 (= e!4443555 (and tp!2151121 tp!2151123))))

(assert (= (and b!7440748 (is-ElementMatch!19450 (regOne!39413 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441423))

(assert (= (and b!7440748 (is-Concat!28295 (regOne!39413 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441424))

(assert (= (and b!7440748 (is-Star!19450 (regOne!39413 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441425))

(assert (= (and b!7440748 (is-Union!19450 (regOne!39413 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441426))

(declare-fun b!7441429 () Bool)

(declare-fun e!4443556 () Bool)

(declare-fun tp!2151124 () Bool)

(assert (=> b!7441429 (= e!4443556 tp!2151124)))

(declare-fun b!7441427 () Bool)

(assert (=> b!7441427 (= e!4443556 tp_is_empty!49159)))

(declare-fun b!7441430 () Bool)

(declare-fun tp!2151127 () Bool)

(declare-fun tp!2151125 () Bool)

(assert (=> b!7441430 (= e!4443556 (and tp!2151127 tp!2151125))))

(assert (=> b!7440748 (= tp!2150676 e!4443556)))

(declare-fun b!7441428 () Bool)

(declare-fun tp!2151126 () Bool)

(declare-fun tp!2151128 () Bool)

(assert (=> b!7441428 (= e!4443556 (and tp!2151126 tp!2151128))))

(assert (= (and b!7440748 (is-ElementMatch!19450 (regTwo!39413 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441427))

(assert (= (and b!7440748 (is-Concat!28295 (regTwo!39413 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441428))

(assert (= (and b!7440748 (is-Star!19450 (regTwo!39413 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441429))

(assert (= (and b!7440748 (is-Union!19450 (regTwo!39413 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441430))

(declare-fun b!7441433 () Bool)

(declare-fun e!4443557 () Bool)

(declare-fun tp!2151129 () Bool)

(assert (=> b!7441433 (= e!4443557 tp!2151129)))

(declare-fun b!7441431 () Bool)

(assert (=> b!7441431 (= e!4443557 tp_is_empty!49159)))

(declare-fun b!7441434 () Bool)

(declare-fun tp!2151132 () Bool)

(declare-fun tp!2151130 () Bool)

(assert (=> b!7441434 (= e!4443557 (and tp!2151132 tp!2151130))))

(assert (=> b!7440746 (= tp!2150677 e!4443557)))

(declare-fun b!7441432 () Bool)

(declare-fun tp!2151131 () Bool)

(declare-fun tp!2151133 () Bool)

(assert (=> b!7441432 (= e!4443557 (and tp!2151131 tp!2151133))))

(assert (= (and b!7440746 (is-ElementMatch!19450 (regOne!39412 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441431))

(assert (= (and b!7440746 (is-Concat!28295 (regOne!39412 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441432))

(assert (= (and b!7440746 (is-Star!19450 (regOne!39412 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441433))

(assert (= (and b!7440746 (is-Union!19450 (regOne!39412 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441434))

(declare-fun b!7441437 () Bool)

(declare-fun e!4443558 () Bool)

(declare-fun tp!2151134 () Bool)

(assert (=> b!7441437 (= e!4443558 tp!2151134)))

(declare-fun b!7441435 () Bool)

(assert (=> b!7441435 (= e!4443558 tp_is_empty!49159)))

(declare-fun b!7441438 () Bool)

(declare-fun tp!2151137 () Bool)

(declare-fun tp!2151135 () Bool)

(assert (=> b!7441438 (= e!4443558 (and tp!2151137 tp!2151135))))

(assert (=> b!7440746 (= tp!2150679 e!4443558)))

(declare-fun b!7441436 () Bool)

(declare-fun tp!2151136 () Bool)

(declare-fun tp!2151138 () Bool)

(assert (=> b!7441436 (= e!4443558 (and tp!2151136 tp!2151138))))

(assert (= (and b!7440746 (is-ElementMatch!19450 (regTwo!39412 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441435))

(assert (= (and b!7440746 (is-Concat!28295 (regTwo!39412 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441436))

(assert (= (and b!7440746 (is-Star!19450 (regTwo!39412 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441437))

(assert (= (and b!7440746 (is-Union!19450 (regTwo!39412 (regOne!39412 (h!78444 (exprs!8890 setElem!56552)))))) b!7441438))

(declare-fun b!7441441 () Bool)

(declare-fun e!4443559 () Bool)

(declare-fun tp!2151139 () Bool)

(assert (=> b!7441441 (= e!4443559 tp!2151139)))

(declare-fun b!7441439 () Bool)

(assert (=> b!7441439 (= e!4443559 tp_is_empty!49159)))

(declare-fun b!7441442 () Bool)

(declare-fun tp!2151142 () Bool)

(declare-fun tp!2151140 () Bool)

(assert (=> b!7441442 (= e!4443559 (and tp!2151142 tp!2151140))))

(assert (=> b!7440755 (= tp!2150685 e!4443559)))

(declare-fun b!7441440 () Bool)

(declare-fun tp!2151141 () Bool)

(declare-fun tp!2151143 () Bool)

(assert (=> b!7441440 (= e!4443559 (and tp!2151141 tp!2151143))))

(assert (= (and b!7440755 (is-ElementMatch!19450 (reg!19779 (h!78444 (exprs!8890 setElem!56558))))) b!7441439))

(assert (= (and b!7440755 (is-Concat!28295 (reg!19779 (h!78444 (exprs!8890 setElem!56558))))) b!7441440))

(assert (= (and b!7440755 (is-Star!19450 (reg!19779 (h!78444 (exprs!8890 setElem!56558))))) b!7441441))

(assert (= (and b!7440755 (is-Union!19450 (reg!19779 (h!78444 (exprs!8890 setElem!56558))))) b!7441442))

(declare-fun b!7441445 () Bool)

(declare-fun e!4443560 () Bool)

(declare-fun tp!2151144 () Bool)

(assert (=> b!7441445 (= e!4443560 tp!2151144)))

(declare-fun b!7441443 () Bool)

(assert (=> b!7441443 (= e!4443560 tp_is_empty!49159)))

(declare-fun b!7441446 () Bool)

(declare-fun tp!2151147 () Bool)

(declare-fun tp!2151145 () Bool)

(assert (=> b!7441446 (= e!4443560 (and tp!2151147 tp!2151145))))

(assert (=> b!7440776 (= tp!2150716 e!4443560)))

(declare-fun b!7441444 () Bool)

(declare-fun tp!2151146 () Bool)

(declare-fun tp!2151148 () Bool)

(assert (=> b!7441444 (= e!4443560 (and tp!2151146 tp!2151148))))

(assert (= (and b!7440776 (is-ElementMatch!19450 (h!78444 (t!386683 (t!386683 (exprs!8890 setElem!56552)))))) b!7441443))

(assert (= (and b!7440776 (is-Concat!28295 (h!78444 (t!386683 (t!386683 (exprs!8890 setElem!56552)))))) b!7441444))

(assert (= (and b!7440776 (is-Star!19450 (h!78444 (t!386683 (t!386683 (exprs!8890 setElem!56552)))))) b!7441445))

(assert (= (and b!7440776 (is-Union!19450 (h!78444 (t!386683 (t!386683 (exprs!8890 setElem!56552)))))) b!7441446))

(declare-fun b!7441447 () Bool)

(declare-fun e!4443561 () Bool)

(declare-fun tp!2151149 () Bool)

(declare-fun tp!2151150 () Bool)

(assert (=> b!7441447 (= e!4443561 (and tp!2151149 tp!2151150))))

(assert (=> b!7440776 (= tp!2150717 e!4443561)))

(assert (= (and b!7440776 (is-Cons!71996 (t!386683 (t!386683 (t!386683 (exprs!8890 setElem!56552)))))) b!7441447))

(declare-fun condSetEmpty!56577 () Bool)

(assert (=> setNonEmpty!56570 (= condSetEmpty!56577 (= setRest!56570 (as set.empty (Set Context!16780))))))

(declare-fun setRes!56577 () Bool)

(assert (=> setNonEmpty!56570 (= tp!2150670 setRes!56577)))

(declare-fun setIsEmpty!56577 () Bool)

(assert (=> setIsEmpty!56577 setRes!56577))

(declare-fun tp!2151152 () Bool)

(declare-fun e!4443562 () Bool)

(declare-fun setElem!56577 () Context!16780)

(declare-fun setNonEmpty!56577 () Bool)

(assert (=> setNonEmpty!56577 (= setRes!56577 (and tp!2151152 (inv!91987 setElem!56577) e!4443562))))

(declare-fun setRest!56577 () (Set Context!16780))

(assert (=> setNonEmpty!56577 (= setRest!56570 (set.union (set.insert setElem!56577 (as set.empty (Set Context!16780))) setRest!56577))))

(declare-fun b!7441448 () Bool)

(declare-fun tp!2151151 () Bool)

(assert (=> b!7441448 (= e!4443562 tp!2151151)))

(assert (= (and setNonEmpty!56570 condSetEmpty!56577) setIsEmpty!56577))

(assert (= (and setNonEmpty!56570 (not condSetEmpty!56577)) setNonEmpty!56577))

(assert (= setNonEmpty!56577 b!7441448))

(declare-fun m!8053298 () Bool)

(assert (=> setNonEmpty!56577 m!8053298))

(declare-fun b!7441451 () Bool)

(declare-fun e!4443563 () Bool)

(declare-fun tp!2151153 () Bool)

(assert (=> b!7441451 (= e!4443563 tp!2151153)))

(declare-fun b!7441449 () Bool)

(assert (=> b!7441449 (= e!4443563 tp_is_empty!49159)))

(declare-fun b!7441452 () Bool)

(declare-fun tp!2151156 () Bool)

(declare-fun tp!2151154 () Bool)

(assert (=> b!7441452 (= e!4443563 (and tp!2151156 tp!2151154))))

(assert (=> b!7440783 (= tp!2150723 e!4443563)))

(declare-fun b!7441450 () Bool)

(declare-fun tp!2151155 () Bool)

(declare-fun tp!2151157 () Bool)

(assert (=> b!7441450 (= e!4443563 (and tp!2151155 tp!2151157))))

(assert (= (and b!7440783 (is-ElementMatch!19450 (reg!19779 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441449))

(assert (= (and b!7440783 (is-Concat!28295 (reg!19779 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441450))

(assert (= (and b!7440783 (is-Star!19450 (reg!19779 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441451))

(assert (= (and b!7440783 (is-Union!19450 (reg!19779 (regTwo!39412 (h!78444 (exprs!8890 empty!3659)))))) b!7441452))

(declare-fun b!7441455 () Bool)

(declare-fun e!4443564 () Bool)

(declare-fun tp!2151158 () Bool)

(assert (=> b!7441455 (= e!4443564 tp!2151158)))

(declare-fun b!7441453 () Bool)

(assert (=> b!7441453 (= e!4443564 tp_is_empty!49159)))

(declare-fun b!7441456 () Bool)

(declare-fun tp!2151161 () Bool)

(declare-fun tp!2151159 () Bool)

(assert (=> b!7441456 (= e!4443564 (and tp!2151161 tp!2151159))))

(assert (=> b!7440806 (= tp!2150751 e!4443564)))

(declare-fun b!7441454 () Bool)

(declare-fun tp!2151160 () Bool)

(declare-fun tp!2151162 () Bool)

(assert (=> b!7441454 (= e!4443564 (and tp!2151160 tp!2151162))))

(assert (= (and b!7440806 (is-ElementMatch!19450 (regOne!39413 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441453))

(assert (= (and b!7440806 (is-Concat!28295 (regOne!39413 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441454))

(assert (= (and b!7440806 (is-Star!19450 (regOne!39413 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441455))

(assert (= (and b!7440806 (is-Union!19450 (regOne!39413 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441456))

(declare-fun b!7441459 () Bool)

(declare-fun e!4443565 () Bool)

(declare-fun tp!2151163 () Bool)

(assert (=> b!7441459 (= e!4443565 tp!2151163)))

(declare-fun b!7441457 () Bool)

(assert (=> b!7441457 (= e!4443565 tp_is_empty!49159)))

(declare-fun b!7441460 () Bool)

(declare-fun tp!2151166 () Bool)

(declare-fun tp!2151164 () Bool)

(assert (=> b!7441460 (= e!4443565 (and tp!2151166 tp!2151164))))

(assert (=> b!7440806 (= tp!2150749 e!4443565)))

(declare-fun b!7441458 () Bool)

(declare-fun tp!2151165 () Bool)

(declare-fun tp!2151167 () Bool)

(assert (=> b!7441458 (= e!4443565 (and tp!2151165 tp!2151167))))

(assert (= (and b!7440806 (is-ElementMatch!19450 (regTwo!39413 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441457))

(assert (= (and b!7440806 (is-Concat!28295 (regTwo!39413 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441458))

(assert (= (and b!7440806 (is-Star!19450 (regTwo!39413 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441459))

(assert (= (and b!7440806 (is-Union!19450 (regTwo!39413 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441460))

(declare-fun b!7441463 () Bool)

(declare-fun e!4443566 () Bool)

(declare-fun tp!2151168 () Bool)

(assert (=> b!7441463 (= e!4443566 tp!2151168)))

(declare-fun b!7441461 () Bool)

(assert (=> b!7441461 (= e!4443566 tp_is_empty!49159)))

(declare-fun b!7441464 () Bool)

(declare-fun tp!2151171 () Bool)

(declare-fun tp!2151169 () Bool)

(assert (=> b!7441464 (= e!4443566 (and tp!2151171 tp!2151169))))

(assert (=> b!7440813 (= tp!2150761 e!4443566)))

(declare-fun b!7441462 () Bool)

(declare-fun tp!2151170 () Bool)

(declare-fun tp!2151172 () Bool)

(assert (=> b!7441462 (= e!4443566 (and tp!2151170 tp!2151172))))

(assert (= (and b!7440813 (is-ElementMatch!19450 (h!78444 (exprs!8890 _$3!601)))) b!7441461))

(assert (= (and b!7440813 (is-Concat!28295 (h!78444 (exprs!8890 _$3!601)))) b!7441462))

(assert (= (and b!7440813 (is-Star!19450 (h!78444 (exprs!8890 _$3!601)))) b!7441463))

(assert (= (and b!7440813 (is-Union!19450 (h!78444 (exprs!8890 _$3!601)))) b!7441464))

(declare-fun b!7441465 () Bool)

(declare-fun e!4443567 () Bool)

(declare-fun tp!2151173 () Bool)

(declare-fun tp!2151174 () Bool)

(assert (=> b!7441465 (= e!4443567 (and tp!2151173 tp!2151174))))

(assert (=> b!7440813 (= tp!2150762 e!4443567)))

(assert (= (and b!7440813 (is-Cons!71996 (t!386683 (exprs!8890 _$3!601)))) b!7441465))

(declare-fun b!7441468 () Bool)

(declare-fun e!4443568 () Bool)

(declare-fun tp!2151175 () Bool)

(assert (=> b!7441468 (= e!4443568 tp!2151175)))

(declare-fun b!7441466 () Bool)

(assert (=> b!7441466 (= e!4443568 tp_is_empty!49159)))

(declare-fun b!7441469 () Bool)

(declare-fun tp!2151178 () Bool)

(declare-fun tp!2151176 () Bool)

(assert (=> b!7441469 (= e!4443568 (and tp!2151178 tp!2151176))))

(assert (=> b!7440762 (= tp!2150697 e!4443568)))

(declare-fun b!7441467 () Bool)

(declare-fun tp!2151177 () Bool)

(declare-fun tp!2151179 () Bool)

(assert (=> b!7441467 (= e!4443568 (and tp!2151177 tp!2151179))))

(assert (= (and b!7440762 (is-ElementMatch!19450 (regOne!39413 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441466))

(assert (= (and b!7440762 (is-Concat!28295 (regOne!39413 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441467))

(assert (= (and b!7440762 (is-Star!19450 (regOne!39413 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441468))

(assert (= (and b!7440762 (is-Union!19450 (regOne!39413 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441469))

(declare-fun b!7441472 () Bool)

(declare-fun e!4443569 () Bool)

(declare-fun tp!2151180 () Bool)

(assert (=> b!7441472 (= e!4443569 tp!2151180)))

(declare-fun b!7441470 () Bool)

(assert (=> b!7441470 (= e!4443569 tp_is_empty!49159)))

(declare-fun b!7441473 () Bool)

(declare-fun tp!2151183 () Bool)

(declare-fun tp!2151181 () Bool)

(assert (=> b!7441473 (= e!4443569 (and tp!2151183 tp!2151181))))

(assert (=> b!7440762 (= tp!2150695 e!4443569)))

(declare-fun b!7441471 () Bool)

(declare-fun tp!2151182 () Bool)

(declare-fun tp!2151184 () Bool)

(assert (=> b!7441471 (= e!4443569 (and tp!2151182 tp!2151184))))

(assert (= (and b!7440762 (is-ElementMatch!19450 (regTwo!39413 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441470))

(assert (= (and b!7440762 (is-Concat!28295 (regTwo!39413 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441471))

(assert (= (and b!7440762 (is-Star!19450 (regTwo!39413 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441472))

(assert (= (and b!7440762 (is-Union!19450 (regTwo!39413 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441473))

(declare-fun b!7441476 () Bool)

(declare-fun e!4443570 () Bool)

(declare-fun tp!2151185 () Bool)

(assert (=> b!7441476 (= e!4443570 tp!2151185)))

(declare-fun b!7441474 () Bool)

(assert (=> b!7441474 (= e!4443570 tp_is_empty!49159)))

(declare-fun b!7441477 () Bool)

(declare-fun tp!2151188 () Bool)

(declare-fun tp!2151186 () Bool)

(assert (=> b!7441477 (= e!4443570 (and tp!2151188 tp!2151186))))

(assert (=> b!7440804 (= tp!2150750 e!4443570)))

(declare-fun b!7441475 () Bool)

(declare-fun tp!2151187 () Bool)

(declare-fun tp!2151189 () Bool)

(assert (=> b!7441475 (= e!4443570 (and tp!2151187 tp!2151189))))

(assert (= (and b!7440804 (is-ElementMatch!19450 (regOne!39412 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441474))

(assert (= (and b!7440804 (is-Concat!28295 (regOne!39412 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441475))

(assert (= (and b!7440804 (is-Star!19450 (regOne!39412 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441476))

(assert (= (and b!7440804 (is-Union!19450 (regOne!39412 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441477))

(declare-fun b!7441480 () Bool)

(declare-fun e!4443571 () Bool)

(declare-fun tp!2151190 () Bool)

(assert (=> b!7441480 (= e!4443571 tp!2151190)))

(declare-fun b!7441478 () Bool)

(assert (=> b!7441478 (= e!4443571 tp_is_empty!49159)))

(declare-fun b!7441481 () Bool)

(declare-fun tp!2151193 () Bool)

(declare-fun tp!2151191 () Bool)

(assert (=> b!7441481 (= e!4443571 (and tp!2151193 tp!2151191))))

(assert (=> b!7440804 (= tp!2150752 e!4443571)))

(declare-fun b!7441479 () Bool)

(declare-fun tp!2151192 () Bool)

(declare-fun tp!2151194 () Bool)

(assert (=> b!7441479 (= e!4443571 (and tp!2151192 tp!2151194))))

(assert (= (and b!7440804 (is-ElementMatch!19450 (regTwo!39412 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441478))

(assert (= (and b!7440804 (is-Concat!28295 (regTwo!39412 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441479))

(assert (= (and b!7440804 (is-Star!19450 (regTwo!39412 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441480))

(assert (= (and b!7440804 (is-Union!19450 (regTwo!39412 (regTwo!39413 (h!78444 (exprs!8890 setElem!56552)))))) b!7441481))

(declare-fun b!7441484 () Bool)

(declare-fun e!4443572 () Bool)

(declare-fun tp!2151195 () Bool)

(assert (=> b!7441484 (= e!4443572 tp!2151195)))

(declare-fun b!7441482 () Bool)

(assert (=> b!7441482 (= e!4443572 tp_is_empty!49159)))

(declare-fun b!7441485 () Bool)

(declare-fun tp!2151198 () Bool)

(declare-fun tp!2151196 () Bool)

(assert (=> b!7441485 (= e!4443572 (and tp!2151198 tp!2151196))))

(assert (=> b!7440796 (= tp!2150736 e!4443572)))

(declare-fun b!7441483 () Bool)

(declare-fun tp!2151197 () Bool)

(declare-fun tp!2151199 () Bool)

(assert (=> b!7441483 (= e!4443572 (and tp!2151197 tp!2151199))))

(assert (= (and b!7440796 (is-ElementMatch!19450 (reg!19779 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441482))

(assert (= (and b!7440796 (is-Concat!28295 (reg!19779 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441483))

(assert (= (and b!7440796 (is-Star!19450 (reg!19779 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441484))

(assert (= (and b!7440796 (is-Union!19450 (reg!19779 (h!78444 (t!386683 (exprs!8890 empty!3659)))))) b!7441485))

(declare-fun b!7441488 () Bool)

(declare-fun e!4443573 () Bool)

(declare-fun tp!2151200 () Bool)

(assert (=> b!7441488 (= e!4443573 tp!2151200)))

(declare-fun b!7441486 () Bool)

(assert (=> b!7441486 (= e!4443573 tp_is_empty!49159)))

(declare-fun b!7441489 () Bool)

(declare-fun tp!2151203 () Bool)

(declare-fun tp!2151201 () Bool)

(assert (=> b!7441489 (= e!4443573 (and tp!2151203 tp!2151201))))

(assert (=> b!7440775 (= tp!2150714 e!4443573)))

(declare-fun b!7441487 () Bool)

(declare-fun tp!2151202 () Bool)

(declare-fun tp!2151204 () Bool)

(assert (=> b!7441487 (= e!4443573 (and tp!2151202 tp!2151204))))

(assert (= (and b!7440775 (is-ElementMatch!19450 (regOne!39413 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441486))

(assert (= (and b!7440775 (is-Concat!28295 (regOne!39413 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441487))

(assert (= (and b!7440775 (is-Star!19450 (regOne!39413 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441488))

(assert (= (and b!7440775 (is-Union!19450 (regOne!39413 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441489))

(declare-fun b!7441492 () Bool)

(declare-fun e!4443574 () Bool)

(declare-fun tp!2151205 () Bool)

(assert (=> b!7441492 (= e!4443574 tp!2151205)))

(declare-fun b!7441490 () Bool)

(assert (=> b!7441490 (= e!4443574 tp_is_empty!49159)))

(declare-fun b!7441493 () Bool)

(declare-fun tp!2151208 () Bool)

(declare-fun tp!2151206 () Bool)

(assert (=> b!7441493 (= e!4443574 (and tp!2151208 tp!2151206))))

(assert (=> b!7440775 (= tp!2150712 e!4443574)))

(declare-fun b!7441491 () Bool)

(declare-fun tp!2151207 () Bool)

(declare-fun tp!2151209 () Bool)

(assert (=> b!7441491 (= e!4443574 (and tp!2151207 tp!2151209))))

(assert (= (and b!7440775 (is-ElementMatch!19450 (regTwo!39413 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441490))

(assert (= (and b!7440775 (is-Concat!28295 (regTwo!39413 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441491))

(assert (= (and b!7440775 (is-Star!19450 (regTwo!39413 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441492))

(assert (= (and b!7440775 (is-Union!19450 (regTwo!39413 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441493))

(declare-fun b!7441496 () Bool)

(declare-fun e!4443575 () Bool)

(declare-fun tp!2151210 () Bool)

(assert (=> b!7441496 (= e!4443575 tp!2151210)))

(declare-fun b!7441494 () Bool)

(assert (=> b!7441494 (= e!4443575 tp_is_empty!49159)))

(declare-fun b!7441497 () Bool)

(declare-fun tp!2151213 () Bool)

(declare-fun tp!2151211 () Bool)

(assert (=> b!7441497 (= e!4443575 (and tp!2151213 tp!2151211))))

(assert (=> b!7440773 (= tp!2150713 e!4443575)))

(declare-fun b!7441495 () Bool)

(declare-fun tp!2151212 () Bool)

(declare-fun tp!2151214 () Bool)

(assert (=> b!7441495 (= e!4443575 (and tp!2151212 tp!2151214))))

(assert (= (and b!7440773 (is-ElementMatch!19450 (regOne!39412 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441494))

(assert (= (and b!7440773 (is-Concat!28295 (regOne!39412 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441495))

(assert (= (and b!7440773 (is-Star!19450 (regOne!39412 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441496))

(assert (= (and b!7440773 (is-Union!19450 (regOne!39412 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441497))

(declare-fun b!7441500 () Bool)

(declare-fun e!4443576 () Bool)

(declare-fun tp!2151215 () Bool)

(assert (=> b!7441500 (= e!4443576 tp!2151215)))

(declare-fun b!7441498 () Bool)

(assert (=> b!7441498 (= e!4443576 tp_is_empty!49159)))

(declare-fun b!7441501 () Bool)

(declare-fun tp!2151218 () Bool)

(declare-fun tp!2151216 () Bool)

(assert (=> b!7441501 (= e!4443576 (and tp!2151218 tp!2151216))))

(assert (=> b!7440773 (= tp!2150715 e!4443576)))

(declare-fun b!7441499 () Bool)

(declare-fun tp!2151217 () Bool)

(declare-fun tp!2151219 () Bool)

(assert (=> b!7441499 (= e!4443576 (and tp!2151217 tp!2151219))))

(assert (= (and b!7440773 (is-ElementMatch!19450 (regTwo!39412 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441498))

(assert (= (and b!7440773 (is-Concat!28295 (regTwo!39412 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441499))

(assert (= (and b!7440773 (is-Star!19450 (regTwo!39412 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441500))

(assert (= (and b!7440773 (is-Union!19450 (regTwo!39412 (h!78444 (t!386683 (exprs!8890 setElem!56552)))))) b!7441501))

(declare-fun b!7441504 () Bool)

(declare-fun e!4443577 () Bool)

(declare-fun tp!2151220 () Bool)

(assert (=> b!7441504 (= e!4443577 tp!2151220)))

(declare-fun b!7441502 () Bool)

(assert (=> b!7441502 (= e!4443577 tp_is_empty!49159)))

(declare-fun b!7441505 () Bool)

(declare-fun tp!2151223 () Bool)

(declare-fun tp!2151221 () Bool)

(assert (=> b!7441505 (= e!4443577 (and tp!2151223 tp!2151221))))

(assert (=> b!7440760 (= tp!2150696 e!4443577)))

(declare-fun b!7441503 () Bool)

(declare-fun tp!2151222 () Bool)

(declare-fun tp!2151224 () Bool)

(assert (=> b!7441503 (= e!4443577 (and tp!2151222 tp!2151224))))

(assert (= (and b!7440760 (is-ElementMatch!19450 (regOne!39412 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441502))

(assert (= (and b!7440760 (is-Concat!28295 (regOne!39412 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441503))

(assert (= (and b!7440760 (is-Star!19450 (regOne!39412 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441504))

(assert (= (and b!7440760 (is-Union!19450 (regOne!39412 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441505))

(declare-fun b!7441508 () Bool)

(declare-fun e!4443578 () Bool)

(declare-fun tp!2151225 () Bool)

(assert (=> b!7441508 (= e!4443578 tp!2151225)))

(declare-fun b!7441506 () Bool)

(assert (=> b!7441506 (= e!4443578 tp_is_empty!49159)))

(declare-fun b!7441509 () Bool)

(declare-fun tp!2151228 () Bool)

(declare-fun tp!2151226 () Bool)

(assert (=> b!7441509 (= e!4443578 (and tp!2151228 tp!2151226))))

(assert (=> b!7440760 (= tp!2150698 e!4443578)))

(declare-fun b!7441507 () Bool)

(declare-fun tp!2151227 () Bool)

(declare-fun tp!2151229 () Bool)

(assert (=> b!7441507 (= e!4443578 (and tp!2151227 tp!2151229))))

(assert (= (and b!7440760 (is-ElementMatch!19450 (regTwo!39412 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441506))

(assert (= (and b!7440760 (is-Concat!28295 (regTwo!39412 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441507))

(assert (= (and b!7440760 (is-Star!19450 (regTwo!39412 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441508))

(assert (= (and b!7440760 (is-Union!19450 (regTwo!39412 (regOne!39413 (h!78444 (exprs!8890 empty!3659)))))) b!7441509))

(declare-fun condSetEmpty!56578 () Bool)

(assert (=> setNonEmpty!56572 (= condSetEmpty!56578 (= setRest!56572 (as set.empty (Set Context!16780))))))

(declare-fun setRes!56578 () Bool)

(assert (=> setNonEmpty!56572 (= tp!2150705 setRes!56578)))

(declare-fun setIsEmpty!56578 () Bool)

(assert (=> setIsEmpty!56578 setRes!56578))

(declare-fun tp!2151231 () Bool)

(declare-fun setNonEmpty!56578 () Bool)

(declare-fun setElem!56578 () Context!16780)

(declare-fun e!4443579 () Bool)

(assert (=> setNonEmpty!56578 (= setRes!56578 (and tp!2151231 (inv!91987 setElem!56578) e!4443579))))

(declare-fun setRest!56578 () (Set Context!16780))

(assert (=> setNonEmpty!56578 (= setRest!56572 (set.union (set.insert setElem!56578 (as set.empty (Set Context!16780))) setRest!56578))))

(declare-fun b!7441510 () Bool)

(declare-fun tp!2151230 () Bool)

(assert (=> b!7441510 (= e!4443579 tp!2151230)))

(assert (= (and setNonEmpty!56572 condSetEmpty!56578) setIsEmpty!56578))

(assert (= (and setNonEmpty!56572 (not condSetEmpty!56578)) setNonEmpty!56578))

(assert (= setNonEmpty!56578 b!7441510))

(declare-fun m!8053300 () Bool)

(assert (=> setNonEmpty!56578 m!8053300))

(declare-fun b!7441513 () Bool)

(declare-fun e!4443580 () Bool)

(declare-fun tp!2151232 () Bool)

(assert (=> b!7441513 (= e!4443580 tp!2151232)))

(declare-fun b!7441511 () Bool)

(assert (=> b!7441511 (= e!4443580 tp_is_empty!49159)))

(declare-fun b!7441514 () Bool)

(declare-fun tp!2151235 () Bool)

(declare-fun tp!2151233 () Bool)

(assert (=> b!7441514 (= e!4443580 (and tp!2151235 tp!2151233))))

(assert (=> b!7440812 (= tp!2150759 e!4443580)))

(declare-fun b!7441512 () Bool)

(declare-fun tp!2151234 () Bool)

(declare-fun tp!2151236 () Bool)

(assert (=> b!7441512 (= e!4443580 (and tp!2151234 tp!2151236))))

(assert (= (and b!7440812 (is-ElementMatch!19450 (regOne!39413 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441511))

(assert (= (and b!7440812 (is-Concat!28295 (regOne!39413 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441512))

(assert (= (and b!7440812 (is-Star!19450 (regOne!39413 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441513))

(assert (= (and b!7440812 (is-Union!19450 (regOne!39413 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441514))

(declare-fun b!7441517 () Bool)

(declare-fun e!4443581 () Bool)

(declare-fun tp!2151237 () Bool)

(assert (=> b!7441517 (= e!4443581 tp!2151237)))

(declare-fun b!7441515 () Bool)

(assert (=> b!7441515 (= e!4443581 tp_is_empty!49159)))

(declare-fun b!7441518 () Bool)

(declare-fun tp!2151240 () Bool)

(declare-fun tp!2151238 () Bool)

(assert (=> b!7441518 (= e!4443581 (and tp!2151240 tp!2151238))))

(assert (=> b!7440812 (= tp!2150757 e!4443581)))

(declare-fun b!7441516 () Bool)

(declare-fun tp!2151239 () Bool)

(declare-fun tp!2151241 () Bool)

(assert (=> b!7441516 (= e!4443581 (and tp!2151239 tp!2151241))))

(assert (= (and b!7440812 (is-ElementMatch!19450 (regTwo!39413 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441515))

(assert (= (and b!7440812 (is-Concat!28295 (regTwo!39413 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441516))

(assert (= (and b!7440812 (is-Star!19450 (regTwo!39413 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441517))

(assert (= (and b!7440812 (is-Union!19450 (regTwo!39413 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441518))

(declare-fun b!7441521 () Bool)

(declare-fun e!4443582 () Bool)

(declare-fun tp!2151242 () Bool)

(assert (=> b!7441521 (= e!4443582 tp!2151242)))

(declare-fun b!7441519 () Bool)

(assert (=> b!7441519 (= e!4443582 tp_is_empty!49159)))

(declare-fun b!7441522 () Bool)

(declare-fun tp!2151245 () Bool)

(declare-fun tp!2151243 () Bool)

(assert (=> b!7441522 (= e!4443582 (and tp!2151245 tp!2151243))))

(assert (=> b!7440810 (= tp!2150758 e!4443582)))

(declare-fun b!7441520 () Bool)

(declare-fun tp!2151244 () Bool)

(declare-fun tp!2151246 () Bool)

(assert (=> b!7441520 (= e!4443582 (and tp!2151244 tp!2151246))))

(assert (= (and b!7440810 (is-ElementMatch!19450 (regOne!39412 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441519))

(assert (= (and b!7440810 (is-Concat!28295 (regOne!39412 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441520))

(assert (= (and b!7440810 (is-Star!19450 (regOne!39412 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441521))

(assert (= (and b!7440810 (is-Union!19450 (regOne!39412 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441522))

(declare-fun b!7441525 () Bool)

(declare-fun e!4443583 () Bool)

(declare-fun tp!2151247 () Bool)

(assert (=> b!7441525 (= e!4443583 tp!2151247)))

(declare-fun b!7441523 () Bool)

(assert (=> b!7441523 (= e!4443583 tp_is_empty!49159)))

(declare-fun b!7441526 () Bool)

(declare-fun tp!2151250 () Bool)

(declare-fun tp!2151248 () Bool)

(assert (=> b!7441526 (= e!4443583 (and tp!2151250 tp!2151248))))

(assert (=> b!7440810 (= tp!2150760 e!4443583)))

(declare-fun b!7441524 () Bool)

(declare-fun tp!2151249 () Bool)

(declare-fun tp!2151251 () Bool)

(assert (=> b!7441524 (= e!4443583 (and tp!2151249 tp!2151251))))

(assert (= (and b!7440810 (is-ElementMatch!19450 (regTwo!39412 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441523))

(assert (= (and b!7440810 (is-Concat!28295 (regTwo!39412 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441524))

(assert (= (and b!7440810 (is-Star!19450 (regTwo!39412 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441525))

(assert (= (and b!7440810 (is-Union!19450 (regTwo!39412 (reg!19779 (h!78444 (exprs!8890 setElem!56552)))))) b!7441526))

(declare-fun b_lambda!287507 () Bool)

(assert (= b_lambda!287495 (or d!2295123 b_lambda!287507)))

(declare-fun bs!1926253 () Bool)

(declare-fun d!2295471 () Bool)

(assert (= bs!1926253 (and d!2295471 d!2295123)))

(assert (=> bs!1926253 (= (dynLambda!29725 lambda!460391 (h!78444 (t!386683 (t!386683 (exprs!8890 setElem!56552))))) (validRegex!9979 (h!78444 (t!386683 (t!386683 (exprs!8890 setElem!56552))))))))

(declare-fun m!8053302 () Bool)

(assert (=> bs!1926253 m!8053302))

(assert (=> b!7441129 d!2295471))

(declare-fun b_lambda!287509 () Bool)

(assert (= b_lambda!287491 (or d!2295153 b_lambda!287509)))

(declare-fun bs!1926254 () Bool)

(declare-fun d!2295473 () Bool)

(assert (= bs!1926254 (and d!2295473 d!2295153)))

(assert (=> bs!1926254 (= (dynLambda!29725 lambda!460405 (h!78444 (t!386683 (exprs!8890 setElem!56558)))) (validRegex!9979 (h!78444 (t!386683 (exprs!8890 setElem!56558)))))))

(declare-fun m!8053304 () Bool)

(assert (=> bs!1926254 m!8053304))

(assert (=> b!7441123 d!2295473))

(declare-fun b_lambda!287511 () Bool)

(assert (= b_lambda!287493 (or d!2295255 b_lambda!287511)))

(declare-fun bs!1926255 () Bool)

(declare-fun d!2295475 () Bool)

(assert (= bs!1926255 (and d!2295475 d!2295255)))

(assert (=> bs!1926255 (= (dynLambda!29725 lambda!460419 (h!78444 (exprs!8890 setElem!56564))) (validRegex!9979 (h!78444 (exprs!8890 setElem!56564))))))

(declare-fun m!8053306 () Bool)

(assert (=> bs!1926255 m!8053306))

(assert (=> b!7441127 d!2295475))

(declare-fun b_lambda!287513 () Bool)

(assert (= b_lambda!287501 (or d!2295219 b_lambda!287513)))

(declare-fun bs!1926256 () Bool)

(declare-fun d!2295477 () Bool)

(assert (= bs!1926256 (and d!2295477 d!2295219)))

(assert (=> bs!1926256 (= (dynLambda!29725 lambda!460416 (h!78444 (exprs!8890 setElem!56565))) (validRegex!9979 (h!78444 (exprs!8890 setElem!56565))))))

(declare-fun m!8053308 () Bool)

(assert (=> bs!1926256 m!8053308))

(assert (=> b!7441169 d!2295477))

(declare-fun b_lambda!287515 () Bool)

(assert (= b_lambda!287497 (or d!2295251 b_lambda!287515)))

(declare-fun bs!1926257 () Bool)

(declare-fun d!2295479 () Bool)

(assert (= bs!1926257 (and d!2295479 d!2295251)))

(assert (=> bs!1926257 (= (dynLambda!29725 lambda!460418 (h!78444 (exprs!8890 _$3!601))) (validRegex!9979 (h!78444 (exprs!8890 _$3!601))))))

(declare-fun m!8053310 () Bool)

(assert (=> bs!1926257 m!8053310))

(assert (=> b!7441131 d!2295479))

(declare-fun b_lambda!287517 () Bool)

(assert (= b_lambda!287503 (or d!2295115 b_lambda!287517)))

(declare-fun bs!1926258 () Bool)

(declare-fun d!2295481 () Bool)

(assert (= bs!1926258 (and d!2295481 d!2295115)))

(assert (=> bs!1926258 (= (dynLambda!29725 lambda!460390 (h!78444 (t!386683 (t!386683 (exprs!8890 empty!3659))))) (validRegex!9979 (h!78444 (t!386683 (t!386683 (exprs!8890 empty!3659))))))))

(declare-fun m!8053312 () Bool)

(assert (=> bs!1926258 m!8053312))

(assert (=> b!7441173 d!2295481))

(declare-fun b_lambda!287519 () Bool)

(assert (= b_lambda!287489 (or d!2295273 b_lambda!287519)))

(declare-fun bs!1926259 () Bool)

(declare-fun d!2295483 () Bool)

(assert (= bs!1926259 (and d!2295483 d!2295273)))

(assert (=> bs!1926259 (= (dynLambda!29727 lambda!460420 (h!78445 (toList!11787 z!3488))) (not (dynLambda!29727 lambda!460384 (h!78445 (toList!11787 z!3488)))))))

(declare-fun b_lambda!287525 () Bool)

(assert (=> (not b_lambda!287525) (not bs!1926259)))

(declare-fun m!8053314 () Bool)

(assert (=> bs!1926259 m!8053314))

(assert (=> b!7441057 d!2295483))

(declare-fun b_lambda!287521 () Bool)

(assert (= b_lambda!287505 (or d!2295171 b_lambda!287521)))

(declare-fun bs!1926260 () Bool)

(declare-fun d!2295485 () Bool)

(assert (= bs!1926260 (and d!2295485 d!2295171)))

(assert (=> bs!1926260 (= (dynLambda!29727 lambda!460408 (h!78445 (t!386684 (toList!11787 z!3488)))) (not (dynLambda!29727 lambda!460375 (h!78445 (t!386684 (toList!11787 z!3488))))))))

(declare-fun b_lambda!287527 () Bool)

(assert (=> (not b_lambda!287527) (not bs!1926260)))

(declare-fun m!8053316 () Bool)

(assert (=> bs!1926260 m!8053316))

(assert (=> b!7441175 d!2295485))

(declare-fun b_lambda!287523 () Bool)

(assert (= b_lambda!287499 (or d!2295241 b_lambda!287523)))

(declare-fun bs!1926261 () Bool)

(declare-fun d!2295487 () Bool)

(assert (= bs!1926261 (and d!2295487 d!2295241)))

(assert (=> bs!1926261 (= (dynLambda!29725 lambda!460417 (h!78444 (exprs!8890 (h!78445 res!2986307)))) (validRegex!9979 (h!78444 (exprs!8890 (h!78445 res!2986307)))))))

(declare-fun m!8053318 () Bool)

(assert (=> bs!1926261 m!8053318))

(assert (=> b!7441151 d!2295487))

(push 1)

(assert (not b!7441505))

(assert (not b!7441418))

(assert (not b!7441337))

(assert (not bm!684006))

(assert (not b!7441395))

(assert (not bm!683994))

(assert (not b!7441434))

(assert (not setNonEmpty!56576))

(assert (not b_lambda!287461))

(assert (not bm!683965))

(assert (not b!7441353))

(assert (not b!7441381))

(assert (not b!7441203))

(assert (not b!7441472))

(assert (not b!7441282))

(assert (not b!7441285))

(assert (not b!7441421))

(assert (not b!7441258))

(assert (not b!7441489))

(assert (not b!7441422))

(assert (not b!7441360))

(assert (not b!7441504))

(assert (not bm!683978))

(assert (not b!7441460))

(assert (not b!7441320))

(assert (not b!7441382))

(assert (not setNonEmpty!56578))

(assert (not b!7441445))

(assert (not bm!683995))

(assert (not bm!684010))

(assert (not bm!683985))

(assert (not b!7441479))

(assert (not b!7441356))

(assert (not b!7441349))

(assert (not b!7441411))

(assert (not bm!684017))

(assert (not b!7441340))

(assert (not b!7441495))

(assert (not b!7441231))

(assert (not b!7441513))

(assert (not b!7441372))

(assert (not b!7441414))

(assert (not bm!683967))

(assert (not b!7441126))

(assert (not bm!683976))

(assert (not b!7441035))

(assert (not b!7441247))

(assert (not b!7441192))

(assert (not b!7441301))

(assert (not b!7441526))

(assert (not b!7441262))

(assert (not b!7441093))

(assert (not b!7441245))

(assert (not b!7441323))

(assert (not b!7441333))

(assert (not b!7441403))

(assert (not d!2295409))

(assert (not b!7441508))

(assert (not b!7441328))

(assert (not b!7441368))

(assert (not b!7441239))

(assert (not b!7441254))

(assert (not d!2295375))

(assert (not d!2295415))

(assert (not b!7441297))

(assert (not b!7441174))

(assert (not b!7441480))

(assert (not b!7441272))

(assert (not b!7441280))

(assert (not b!7441263))

(assert (not d!2295369))

(assert (not bs!1926254))

(assert (not b!7441113))

(assert (not b!7441104))

(assert (not b!7441493))

(assert (not b!7441246))

(assert (not d!2295469))

(assert (not b!7441130))

(assert (not b!7441336))

(assert (not b!7441267))

(assert (not b!7441128))

(assert (not b!7441438))

(assert (not bm!684001))

(assert (not d!2295435))

(assert (not b!7441524))

(assert (not b!7441270))

(assert (not bm!683997))

(assert (not b!7441248))

(assert (not b!7441459))

(assert (not bs!1926253))

(assert (not b!7441413))

(assert (not b!7441488))

(assert (not b!7441362))

(assert (not b!7441331))

(assert (not d!2295449))

(assert (not b!7441456))

(assert (not bm!683960))

(assert (not b!7441522))

(assert (not b!7441321))

(assert (not b!7441510))

(assert (not b!7441342))

(assert (not b!7441516))

(assert (not b!7441397))

(assert (not d!2295429))

(assert (not b!7441405))

(assert (not b!7441383))

(assert (not b!7441259))

(assert (not bm!684025))

(assert (not b!7441168))

(assert (not b!7441433))

(assert (not b!7441454))

(assert (not b!7441430))

(assert (not b!7441166))

(assert (not b!7441018))

(assert (not b!7441316))

(assert (not b!7441294))

(assert (not b!7441437))

(assert (not b!7441346))

(assert (not b!7441402))

(assert (not d!2295441))

(assert (not bm!684028))

(assert (not b!7441132))

(assert (not b!7441458))

(assert (not d!2295431))

(assert (not b!7441447))

(assert (not b!7441385))

(assert (not b!7441179))

(assert (not b!7441309))

(assert (not b!7441407))

(assert (not b!7441467))

(assert (not b!7441266))

(assert (not b!7441509))

(assert (not b!7441209))

(assert (not b_lambda!287507))

(assert (not b!7441441))

(assert (not bm!683968))

(assert (not b!7441286))

(assert (not b!7441238))

(assert (not b!7441429))

(assert (not b!7441492))

(assert (not b!7441389))

(assert (not bm!683988))

(assert (not b!7441227))

(assert (not b!7441136))

(assert (not b!7441114))

(assert (not b!7441483))

(assert (not bm!684011))

(assert (not b_lambda!287521))

(assert (not b!7441222))

(assert (not b!7441345))

(assert (not b!7441255))

(assert (not b!7441348))

(assert (not b!7441275))

(assert (not b_lambda!287527))

(assert (not b!7441391))

(assert (not setNonEmpty!56577))

(assert (not b!7441235))

(assert (not b!7441302))

(assert (not d!2295395))

(assert (not b!7441361))

(assert (not b!7441276))

(assert (not b!7441243))

(assert (not bs!1926256))

(assert (not b!7441370))

(assert (not b!7441014))

(assert (not b!7441442))

(assert (not b!7441026))

(assert (not b!7441313))

(assert (not b!7441465))

(assert (not b!7441341))

(assert (not b!7441264))

(assert (not b!7441512))

(assert (not b!7441307))

(assert (not d!2295467))

(assert (not b!7441308))

(assert (not bm!683962))

(assert (not b!7441176))

(assert (not bm!684023))

(assert (not b!7441499))

(assert (not b!7441291))

(assert (not b_lambda!287441))

(assert (not b!7441205))

(assert (not b!7441152))

(assert (not b!7441226))

(assert (not bs!1926257))

(assert (not b_lambda!287465))

(assert (not d!2295397))

(assert (not b!7441464))

(assert (not bm!684015))

(assert (not bm!684016))

(assert (not b_lambda!287525))

(assert (not b!7441178))

(assert (not bm!684012))

(assert (not b!7441204))

(assert (not b!7441521))

(assert (not b!7441290))

(assert (not b!7441284))

(assert (not b!7441520))

(assert (not b!7441514))

(assert (not bm!683973))

(assert (not b!7441378))

(assert (not b!7441265))

(assert (not b_lambda!287459))

(assert (not b!7441462))

(assert (not bm!684013))

(assert (not b!7441225))

(assert (not b!7441317))

(assert (not b!7441220))

(assert (not b!7441218))

(assert (not bm!684009))

(assert (not b!7441298))

(assert (not b!7441047))

(assert (not bm!683966))

(assert (not b!7441172))

(assert (not b!7441224))

(assert (not b!7441366))

(assert (not b!7441334))

(assert (not b!7441357))

(assert (not b_lambda!287511))

(assert (not b!7441068))

(assert (not b!7441491))

(assert (not b!7441153))

(assert (not b!7441281))

(assert (not b!7441256))

(assert (not b!7441409))

(assert tp_is_empty!49159)

(assert (not b!7441475))

(assert (not b!7441497))

(assert (not d!2295385))

(assert (not b_lambda!287519))

(assert (not b!7441387))

(assert (not b!7441287))

(assert (not b!7441501))

(assert (not b!7441398))

(assert (not bm!683981))

(assert (not b!7441473))

(assert (not bm!683969))

(assert (not b!7441485))

(assert (not b!7441484))

(assert (not b!7441455))

(assert (not d!2295461))

(assert (not b_lambda!287515))

(assert (not b!7441379))

(assert (not b!7441436))

(assert (not b!7441260))

(assert (not bm!683989))

(assert (not b!7441354))

(assert (not b!7441315))

(assert (not bm!683980))

(assert (not b!7441327))

(assert (not b!7441518))

(assert (not b!7441303))

(assert (not b!7441386))

(assert (not b!7441324))

(assert (not bm!684021))

(assert (not b!7441305))

(assert (not b!7441419))

(assert (not d!2295427))

(assert (not b!7441374))

(assert (not b!7441481))

(assert (not b!7441278))

(assert (not b!7441424))

(assert (not b!7441487))

(assert (not b!7441420))

(assert (not b!7441476))

(assert (not b!7441070))

(assert (not b!7441295))

(assert (not b!7441358))

(assert (not b!7441415))

(assert (not b!7441069))

(assert (not d!2295455))

(assert (not b!7441432))

(assert (not bs!1926255))

(assert (not b!7441319))

(assert (not b!7441056))

(assert (not b!7441289))

(assert (not b!7441444))

(assert (not bm!683991))

(assert (not d!2295433))

(assert (not b!7441304))

(assert (not b!7441271))

(assert (not b!7441293))

(assert (not b!7441376))

(assert (not b!7441082))

(assert (not b!7441496))

(assert (not b!7441425))

(assert (not b!7441279))

(assert (not b!7441338))

(assert (not b!7441450))

(assert (not b!7441393))

(assert (not bm!683983))

(assert (not b!7441468))

(assert (not b!7441426))

(assert (not b!7441417))

(assert (not b!7441507))

(assert (not b!7441229))

(assert (not b_lambda!287513))

(assert (not b!7441350))

(assert (not b!7441274))

(assert (not b!7441477))

(assert (not bs!1926261))

(assert (not bm!684000))

(assert (not b!7441410))

(assert (not b!7441332))

(assert (not b!7441452))

(assert (not b!7441299))

(assert (not bm!683977))

(assert (not b!7441525))

(assert (not b!7441517))

(assert (not b!7441124))

(assert (not bm!683971))

(assert (not b!7441193))

(assert (not b!7441369))

(assert (not b!7441251))

(assert (not b!7441268))

(assert (not b!7441125))

(assert (not b!7441399))

(assert (not b_lambda!287487))

(assert (not b!7441364))

(assert (not b!7441352))

(assert (not bm!684002))

(assert (not b!7441401))

(assert (not bm!684004))

(assert (not d!2295379))

(assert (not b!7441241))

(assert (not b!7441373))

(assert (not bm!684019))

(assert (not b!7441221))

(assert (not b_lambda!287463))

(assert (not b!7441448))

(assert (not b!7441377))

(assert (not b!7441188))

(assert (not b!7441365))

(assert (not b!7441394))

(assert (not b!7441233))

(assert (not b!7441250))

(assert (not b!7441058))

(assert (not b!7441059))

(assert (not b_lambda!287509))

(assert (not b_lambda!287523))

(assert (not b!7441469))

(assert (not b!7441390))

(assert (not b!7441503))

(assert (not b!7441500))

(assert (not b_lambda!287517))

(assert (not b!7441406))

(assert (not b!7441252))

(assert (not b!7441451))

(assert (not b!7441234))

(assert (not b!7441440))

(assert (not b!7441428))

(assert (not b!7441230))

(assert (not b!7441312))

(assert (not b!7441170))

(assert (not bm!684020))

(assert (not b!7441344))

(assert (not b!7441027))

(assert (not bs!1926258))

(assert (not b!7441242))

(assert (not b!7441471))

(assert (not b!7441463))

(assert (not b!7441311))

(assert (not b!7441162))

(assert (not b!7441446))

(assert (not b!7441329))

(assert (not b!7441237))

(assert (not b_lambda!287439))

(assert (not b!7441325))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


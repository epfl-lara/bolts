; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!698500 () Bool)

(assert start!698500)

(declare-fun b!7167906 () Bool)

(assert (=> b!7167906 true))

(declare-fun b!7167900 () Bool)

(assert (=> b!7167900 true))

(assert (=> b!7167900 true))

(declare-fun b!7167896 () Bool)

(declare-fun e!4305521 () Bool)

(declare-fun e!4305528 () Bool)

(assert (=> b!7167896 (= e!4305521 e!4305528)))

(declare-fun res!2921222 () Bool)

(assert (=> b!7167896 (=> res!2921222 e!4305528)))

(declare-datatypes ((C!36922 0))(
  ( (C!36923 (val!28409 Int)) )
))
(declare-datatypes ((Regex!18324 0))(
  ( (ElementMatch!18324 (c!1335328 C!36922)) (Concat!27169 (regOne!37160 Regex!18324) (regTwo!37160 Regex!18324)) (EmptyExpr!18324) (Star!18324 (reg!18653 Regex!18324)) (EmptyLang!18324) (Union!18324 (regOne!37161 Regex!18324) (regTwo!37161 Regex!18324)) )
))
(declare-datatypes ((List!69712 0))(
  ( (Nil!69588) (Cons!69588 (h!76036 Regex!18324) (t!383731 List!69712)) )
))
(declare-datatypes ((Context!14552 0))(
  ( (Context!14553 (exprs!7776 List!69712)) )
))
(declare-fun lt!2570156 () Context!14552)

(declare-fun lt!2570158 () C!36922)

(declare-fun derivationStepZipperUp!2312 (Context!14552 C!36922) (Set Context!14552))

(assert (=> b!7167896 (= res!2921222 (not (= (derivationStepZipperUp!2312 lt!2570156 lt!2570158) (as set.empty (Set Context!14552)))))))

(declare-fun lt!2570155 () (Set Context!14552))

(declare-fun z!3530 () (Set Context!14552))

(declare-fun derivationStepZipper!3205 ((Set Context!14552) C!36922) (Set Context!14552))

(assert (=> b!7167896 (= lt!2570155 (derivationStepZipper!3205 z!3530 lt!2570158))))

(declare-datatypes ((List!69713 0))(
  ( (Nil!69589) (Cons!69589 (h!76037 C!36922) (t!383732 List!69713)) )
))
(declare-fun s!7967 () List!69713)

(declare-fun head!14626 (List!69713) C!36922)

(assert (=> b!7167896 (= lt!2570158 (head!14626 s!7967))))

(declare-fun tp!1985224 () Bool)

(declare-fun setElem!52934 () Context!14552)

(declare-fun setNonEmpty!52934 () Bool)

(declare-fun e!4305524 () Bool)

(declare-fun setRes!52934 () Bool)

(declare-fun inv!88833 (Context!14552) Bool)

(assert (=> setNonEmpty!52934 (= setRes!52934 (and tp!1985224 (inv!88833 setElem!52934) e!4305524))))

(declare-fun setRest!52934 () (Set Context!14552))

(assert (=> setNonEmpty!52934 (= z!3530 (set.union (set.insert setElem!52934 (as set.empty (Set Context!14552))) setRest!52934))))

(declare-fun b!7167897 () Bool)

(declare-fun e!4305526 () Bool)

(assert (=> b!7167897 (= e!4305526 (= z!3530 (set.insert lt!2570156 (as set.empty (Set Context!14552)))))))

(declare-fun b!7167898 () Bool)

(declare-fun e!4305523 () Bool)

(declare-fun tp!1985223 () Bool)

(assert (=> b!7167898 (= e!4305523 tp!1985223)))

(declare-fun setIsEmpty!52934 () Bool)

(assert (=> setIsEmpty!52934 setRes!52934))

(declare-fun b!7167899 () Bool)

(declare-fun res!2921225 () Bool)

(declare-fun e!4305522 () Bool)

(assert (=> b!7167899 (=> (not res!2921225) (not e!4305522))))

(declare-fun focus!399 (Regex!18324) (Set Context!14552))

(assert (=> b!7167899 (= res!2921225 (= z!3530 (focus!399 EmptyExpr!18324)))))

(declare-fun e!4305525 () Bool)

(assert (=> b!7167900 (= e!4305525 e!4305526)))

(declare-fun res!2921223 () Bool)

(assert (=> b!7167900 (=> res!2921223 e!4305526)))

(declare-fun lambda!437016 () Int)

(declare-fun exists!4061 ((Set Context!14552) Int) Bool)

(assert (=> b!7167900 (= res!2921223 (not (exists!4061 z!3530 lambda!437016)))))

(declare-fun lambda!437015 () Int)

(declare-fun empty!2939 () Context!14552)

(declare-fun lt!2570157 () Context!14552)

(declare-fun flatMapPost!55 ((Set Context!14552) Int Context!14552) Context!14552)

(assert (=> b!7167900 (= (flatMapPost!55 z!3530 lambda!437015 lt!2570157) empty!2939)))

(assert (=> b!7167900 true))

(assert (=> b!7167900 (and (inv!88833 empty!2939) e!4305523)))

(declare-fun b!7167901 () Bool)

(declare-fun res!2921226 () Bool)

(assert (=> b!7167901 (=> res!2921226 e!4305528)))

(assert (=> b!7167901 (= res!2921226 (= lt!2570155 (as set.empty (Set Context!14552))))))

(declare-fun b!7167902 () Bool)

(declare-fun e!4305527 () Bool)

(declare-fun tp_is_empty!46221 () Bool)

(declare-fun tp!1985222 () Bool)

(assert (=> b!7167902 (= e!4305527 (and tp_is_empty!46221 tp!1985222))))

(declare-fun b!7167903 () Bool)

(declare-fun res!2921224 () Bool)

(assert (=> b!7167903 (=> res!2921224 e!4305525)))

(assert (=> b!7167903 (= res!2921224 (not (set.member lt!2570157 lt!2570155)))))

(declare-fun b!7167904 () Bool)

(assert (=> b!7167904 (= e!4305522 (not e!4305521))))

(declare-fun res!2921221 () Bool)

(assert (=> b!7167904 (=> res!2921221 e!4305521)))

(declare-fun isEmpty!40184 (List!69713) Bool)

(assert (=> b!7167904 (= res!2921221 (isEmpty!40184 s!7967))))

(declare-fun nullableContext!187 (Context!14552) Bool)

(assert (=> b!7167904 (nullableContext!187 lt!2570156)))

(assert (=> b!7167904 (= lt!2570156 (Context!14553 (Cons!69588 EmptyExpr!18324 Nil!69588)))))

(declare-fun b!7167905 () Bool)

(declare-fun tp!1985225 () Bool)

(assert (=> b!7167905 (= e!4305524 tp!1985225)))

(assert (=> b!7167906 (= e!4305528 e!4305525)))

(declare-fun res!2921220 () Bool)

(assert (=> b!7167906 (=> res!2921220 e!4305525)))

(declare-fun flatMap!2656 ((Set Context!14552) Int) (Set Context!14552))

(assert (=> b!7167906 (= res!2921220 (not (set.member lt!2570157 (flatMap!2656 z!3530 lambda!437015))))))

(declare-datatypes ((List!69714 0))(
  ( (Nil!69590) (Cons!69590 (h!76038 Context!14552) (t!383733 List!69714)) )
))
(declare-fun head!14627 (List!69714) Context!14552)

(declare-fun toList!11267 ((Set Context!14552)) List!69714)

(assert (=> b!7167906 (= lt!2570157 (head!14627 (toList!11267 lt!2570155)))))

(declare-fun res!2921227 () Bool)

(assert (=> start!698500 (=> (not res!2921227) (not e!4305522))))

(declare-fun unfocusZipper!2584 (List!69714) Regex!18324)

(assert (=> start!698500 (= res!2921227 (= (unfocusZipper!2584 (toList!11267 z!3530)) EmptyExpr!18324))))

(assert (=> start!698500 e!4305522))

(declare-fun condSetEmpty!52934 () Bool)

(assert (=> start!698500 (= condSetEmpty!52934 (= z!3530 (as set.empty (Set Context!14552))))))

(assert (=> start!698500 setRes!52934))

(assert (=> start!698500 e!4305527))

(assert (= (and start!698500 res!2921227) b!7167899))

(assert (= (and b!7167899 res!2921225) b!7167904))

(assert (= (and b!7167904 (not res!2921221)) b!7167896))

(assert (= (and b!7167896 (not res!2921222)) b!7167901))

(assert (= (and b!7167901 (not res!2921226)) b!7167906))

(assert (= (and b!7167906 (not res!2921220)) b!7167903))

(assert (= (and b!7167903 (not res!2921224)) b!7167900))

(assert (= b!7167900 b!7167898))

(assert (= (and b!7167900 (not res!2921223)) b!7167897))

(assert (= (and start!698500 condSetEmpty!52934) setIsEmpty!52934))

(assert (= (and start!698500 (not condSetEmpty!52934)) setNonEmpty!52934))

(assert (= setNonEmpty!52934 b!7167905))

(assert (= (and start!698500 (is-Cons!69589 s!7967)) b!7167902))

(declare-fun m!7870480 () Bool)

(assert (=> b!7167899 m!7870480))

(declare-fun m!7870482 () Bool)

(assert (=> b!7167896 m!7870482))

(declare-fun m!7870484 () Bool)

(assert (=> b!7167896 m!7870484))

(declare-fun m!7870486 () Bool)

(assert (=> b!7167896 m!7870486))

(declare-fun m!7870488 () Bool)

(assert (=> setNonEmpty!52934 m!7870488))

(declare-fun m!7870490 () Bool)

(assert (=> b!7167906 m!7870490))

(declare-fun m!7870492 () Bool)

(assert (=> b!7167906 m!7870492))

(declare-fun m!7870494 () Bool)

(assert (=> b!7167906 m!7870494))

(assert (=> b!7167906 m!7870494))

(declare-fun m!7870496 () Bool)

(assert (=> b!7167906 m!7870496))

(declare-fun m!7870498 () Bool)

(assert (=> b!7167897 m!7870498))

(declare-fun m!7870500 () Bool)

(assert (=> b!7167904 m!7870500))

(declare-fun m!7870502 () Bool)

(assert (=> b!7167904 m!7870502))

(declare-fun m!7870504 () Bool)

(assert (=> b!7167900 m!7870504))

(declare-fun m!7870506 () Bool)

(assert (=> b!7167900 m!7870506))

(declare-fun m!7870508 () Bool)

(assert (=> b!7167900 m!7870508))

(declare-fun m!7870510 () Bool)

(assert (=> start!698500 m!7870510))

(assert (=> start!698500 m!7870510))

(declare-fun m!7870512 () Bool)

(assert (=> start!698500 m!7870512))

(declare-fun m!7870514 () Bool)

(assert (=> b!7167903 m!7870514))

(push 1)

(assert (not b!7167906))

(assert tp_is_empty!46221)

(assert (not start!698500))

(assert (not b!7167900))

(assert (not b!7167899))

(assert (not b!7167902))

(assert (not b!7167896))

(assert (not b!7167904))

(assert (not b!7167905))

(assert (not b!7167898))

(assert (not setNonEmpty!52934))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2232779 () Bool)

(declare-fun lambda!437025 () Int)

(declare-fun forall!17154 (List!69712 Int) Bool)

(assert (=> d!2232779 (= (inv!88833 setElem!52934) (forall!17154 (exprs!7776 setElem!52934) lambda!437025))))

(declare-fun bs!1892588 () Bool)

(assert (= bs!1892588 d!2232779))

(declare-fun m!7870552 () Bool)

(assert (=> bs!1892588 m!7870552))

(assert (=> setNonEmpty!52934 d!2232779))

(declare-fun d!2232781 () Bool)

(declare-fun choose!55348 ((Set Context!14552) Int) (Set Context!14552))

(assert (=> d!2232781 (= (flatMap!2656 z!3530 lambda!437015) (choose!55348 z!3530 lambda!437015))))

(declare-fun bs!1892589 () Bool)

(assert (= bs!1892589 d!2232781))

(declare-fun m!7870554 () Bool)

(assert (=> bs!1892589 m!7870554))

(assert (=> b!7167906 d!2232781))

(declare-fun d!2232783 () Bool)

(assert (=> d!2232783 (= (head!14627 (toList!11267 lt!2570155)) (h!76038 (toList!11267 lt!2570155)))))

(assert (=> b!7167906 d!2232783))

(declare-fun d!2232785 () Bool)

(declare-fun e!4305555 () Bool)

(assert (=> d!2232785 e!4305555))

(declare-fun res!2921254 () Bool)

(assert (=> d!2232785 (=> (not res!2921254) (not e!4305555))))

(declare-fun lt!2570173 () List!69714)

(declare-fun noDuplicate!2868 (List!69714) Bool)

(assert (=> d!2232785 (= res!2921254 (noDuplicate!2868 lt!2570173))))

(declare-fun choose!55349 ((Set Context!14552)) List!69714)

(assert (=> d!2232785 (= lt!2570173 (choose!55349 lt!2570155))))

(assert (=> d!2232785 (= (toList!11267 lt!2570155) lt!2570173)))

(declare-fun b!7167954 () Bool)

(declare-fun content!14297 (List!69714) (Set Context!14552))

(assert (=> b!7167954 (= e!4305555 (= (content!14297 lt!2570173) lt!2570155))))

(assert (= (and d!2232785 res!2921254) b!7167954))

(declare-fun m!7870556 () Bool)

(assert (=> d!2232785 m!7870556))

(declare-fun m!7870558 () Bool)

(assert (=> d!2232785 m!7870558))

(declare-fun m!7870560 () Bool)

(assert (=> b!7167954 m!7870560))

(assert (=> b!7167906 d!2232785))

(declare-fun d!2232787 () Bool)

(declare-fun lt!2570176 () Bool)

(declare-fun exists!4063 (List!69714 Int) Bool)

(assert (=> d!2232787 (= lt!2570176 (exists!4063 (toList!11267 z!3530) lambda!437016))))

(declare-fun choose!55350 ((Set Context!14552) Int) Bool)

(assert (=> d!2232787 (= lt!2570176 (choose!55350 z!3530 lambda!437016))))

(assert (=> d!2232787 (= (exists!4061 z!3530 lambda!437016) lt!2570176)))

(declare-fun bs!1892590 () Bool)

(assert (= bs!1892590 d!2232787))

(assert (=> bs!1892590 m!7870510))

(assert (=> bs!1892590 m!7870510))

(declare-fun m!7870562 () Bool)

(assert (=> bs!1892590 m!7870562))

(declare-fun m!7870564 () Bool)

(assert (=> bs!1892590 m!7870564))

(assert (=> b!7167900 d!2232787))

(declare-fun bs!1892591 () Bool)

(declare-fun d!2232789 () Bool)

(assert (= bs!1892591 (and d!2232789 b!7167900)))

(declare-fun lambda!437028 () Int)

(assert (=> bs!1892591 (not (= lambda!437028 lambda!437016))))

(assert (=> d!2232789 true))

(assert (=> d!2232789 true))

(declare-fun order!28665 () Int)

(declare-fun order!28663 () Int)

(declare-fun dynLambda!28339 (Int Int) Int)

(declare-fun dynLambda!28340 (Int Int) Int)

(assert (=> d!2232789 (< (dynLambda!28339 order!28663 lambda!437015) (dynLambda!28340 order!28665 lambda!437028))))

(assert (=> d!2232789 (= (set.member lt!2570157 (flatMap!2656 z!3530 lambda!437015)) (exists!4061 z!3530 lambda!437028))))

(declare-fun lt!2570179 () Context!14552)

(declare-fun choose!55351 ((Set Context!14552) Int Context!14552) Context!14552)

(assert (=> d!2232789 (= lt!2570179 (choose!55351 z!3530 lambda!437015 lt!2570157))))

(assert (=> d!2232789 (= (flatMapPost!55 z!3530 lambda!437015 lt!2570157) lt!2570179)))

(declare-fun bs!1892592 () Bool)

(assert (= bs!1892592 d!2232789))

(assert (=> bs!1892592 m!7870490))

(assert (=> bs!1892592 m!7870492))

(declare-fun m!7870566 () Bool)

(assert (=> bs!1892592 m!7870566))

(declare-fun m!7870568 () Bool)

(assert (=> bs!1892592 m!7870568))

(assert (=> b!7167900 d!2232789))

(declare-fun bs!1892593 () Bool)

(declare-fun d!2232791 () Bool)

(assert (= bs!1892593 (and d!2232791 d!2232779)))

(declare-fun lambda!437029 () Int)

(assert (=> bs!1892593 (= lambda!437029 lambda!437025)))

(assert (=> d!2232791 (= (inv!88833 empty!2939) (forall!17154 (exprs!7776 empty!2939) lambda!437029))))

(declare-fun bs!1892594 () Bool)

(assert (= bs!1892594 d!2232791))

(declare-fun m!7870570 () Bool)

(assert (=> bs!1892594 m!7870570))

(assert (=> b!7167900 d!2232791))

(declare-fun d!2232793 () Bool)

(declare-fun e!4305558 () Bool)

(assert (=> d!2232793 e!4305558))

(declare-fun res!2921258 () Bool)

(assert (=> d!2232793 (=> (not res!2921258) (not e!4305558))))

(declare-fun validRegex!9449 (Regex!18324) Bool)

(assert (=> d!2232793 (= res!2921258 (validRegex!9449 EmptyExpr!18324))))

(assert (=> d!2232793 (= (focus!399 EmptyExpr!18324) (set.insert (Context!14553 (Cons!69588 EmptyExpr!18324 Nil!69588)) (as set.empty (Set Context!14552))))))

(declare-fun b!7167960 () Bool)

(assert (=> b!7167960 (= e!4305558 (= (unfocusZipper!2584 (toList!11267 (set.insert (Context!14553 (Cons!69588 EmptyExpr!18324 Nil!69588)) (as set.empty (Set Context!14552))))) EmptyExpr!18324))))

(assert (= (and d!2232793 res!2921258) b!7167960))

(declare-fun m!7870572 () Bool)

(assert (=> d!2232793 m!7870572))

(declare-fun m!7870574 () Bool)

(assert (=> d!2232793 m!7870574))

(assert (=> b!7167960 m!7870574))

(assert (=> b!7167960 m!7870574))

(declare-fun m!7870576 () Bool)

(assert (=> b!7167960 m!7870576))

(assert (=> b!7167960 m!7870576))

(declare-fun m!7870578 () Bool)

(assert (=> b!7167960 m!7870578))

(assert (=> b!7167899 d!2232793))

(declare-fun d!2232795 () Bool)

(declare-fun c!1335335 () Bool)

(declare-fun e!4305565 () Bool)

(assert (=> d!2232795 (= c!1335335 e!4305565)))

(declare-fun res!2921261 () Bool)

(assert (=> d!2232795 (=> (not res!2921261) (not e!4305565))))

(assert (=> d!2232795 (= res!2921261 (is-Cons!69588 (exprs!7776 lt!2570156)))))

(declare-fun e!4305567 () (Set Context!14552))

(assert (=> d!2232795 (= (derivationStepZipperUp!2312 lt!2570156 lt!2570158) e!4305567)))

(declare-fun b!7167971 () Bool)

(declare-fun call!652985 () (Set Context!14552))

(assert (=> b!7167971 (= e!4305567 (set.union call!652985 (derivationStepZipperUp!2312 (Context!14553 (t!383731 (exprs!7776 lt!2570156))) lt!2570158)))))

(declare-fun b!7167972 () Bool)

(declare-fun e!4305566 () (Set Context!14552))

(assert (=> b!7167972 (= e!4305567 e!4305566)))

(declare-fun c!1335334 () Bool)

(assert (=> b!7167972 (= c!1335334 (is-Cons!69588 (exprs!7776 lt!2570156)))))

(declare-fun bm!652980 () Bool)

(declare-fun derivationStepZipperDown!2502 (Regex!18324 Context!14552 C!36922) (Set Context!14552))

(assert (=> bm!652980 (= call!652985 (derivationStepZipperDown!2502 (h!76036 (exprs!7776 lt!2570156)) (Context!14553 (t!383731 (exprs!7776 lt!2570156))) lt!2570158))))

(declare-fun b!7167973 () Bool)

(assert (=> b!7167973 (= e!4305566 (as set.empty (Set Context!14552)))))

(declare-fun b!7167974 () Bool)

(declare-fun nullable!7760 (Regex!18324) Bool)

(assert (=> b!7167974 (= e!4305565 (nullable!7760 (h!76036 (exprs!7776 lt!2570156))))))

(declare-fun b!7167975 () Bool)

(assert (=> b!7167975 (= e!4305566 call!652985)))

(assert (= (and d!2232795 res!2921261) b!7167974))

(assert (= (and d!2232795 c!1335335) b!7167971))

(assert (= (and d!2232795 (not c!1335335)) b!7167972))

(assert (= (and b!7167972 c!1335334) b!7167975))

(assert (= (and b!7167972 (not c!1335334)) b!7167973))

(assert (= (or b!7167971 b!7167975) bm!652980))

(declare-fun m!7870580 () Bool)

(assert (=> b!7167971 m!7870580))

(declare-fun m!7870582 () Bool)

(assert (=> bm!652980 m!7870582))

(declare-fun m!7870584 () Bool)

(assert (=> b!7167974 m!7870584))

(assert (=> b!7167896 d!2232795))

(declare-fun bs!1892595 () Bool)

(declare-fun d!2232797 () Bool)

(assert (= bs!1892595 (and d!2232797 b!7167906)))

(declare-fun lambda!437032 () Int)

(assert (=> bs!1892595 (= lambda!437032 lambda!437015)))

(assert (=> d!2232797 true))

(assert (=> d!2232797 (= (derivationStepZipper!3205 z!3530 lt!2570158) (flatMap!2656 z!3530 lambda!437032))))

(declare-fun bs!1892596 () Bool)

(assert (= bs!1892596 d!2232797))

(declare-fun m!7870586 () Bool)

(assert (=> bs!1892596 m!7870586))

(assert (=> b!7167896 d!2232797))

(declare-fun d!2232799 () Bool)

(assert (=> d!2232799 (= (head!14626 s!7967) (h!76037 s!7967))))

(assert (=> b!7167896 d!2232799))

(declare-fun d!2232803 () Bool)

(assert (=> d!2232803 (= (isEmpty!40184 s!7967) (is-Nil!69589 s!7967))))

(assert (=> b!7167904 d!2232803))

(declare-fun bs!1892597 () Bool)

(declare-fun d!2232805 () Bool)

(assert (= bs!1892597 (and d!2232805 d!2232779)))

(declare-fun lambda!437037 () Int)

(assert (=> bs!1892597 (not (= lambda!437037 lambda!437025))))

(declare-fun bs!1892598 () Bool)

(assert (= bs!1892598 (and d!2232805 d!2232791)))

(assert (=> bs!1892598 (not (= lambda!437037 lambda!437029))))

(assert (=> d!2232805 (= (nullableContext!187 lt!2570156) (forall!17154 (exprs!7776 lt!2570156) lambda!437037))))

(declare-fun bs!1892599 () Bool)

(assert (= bs!1892599 d!2232805))

(declare-fun m!7870588 () Bool)

(assert (=> bs!1892599 m!7870588))

(assert (=> b!7167904 d!2232805))

(declare-fun d!2232807 () Bool)

(declare-fun lt!2570182 () Regex!18324)

(assert (=> d!2232807 (validRegex!9449 lt!2570182)))

(declare-fun generalisedUnion!2752 (List!69712) Regex!18324)

(declare-fun unfocusZipperList!2308 (List!69714) List!69712)

(assert (=> d!2232807 (= lt!2570182 (generalisedUnion!2752 (unfocusZipperList!2308 (toList!11267 z!3530))))))

(assert (=> d!2232807 (= (unfocusZipper!2584 (toList!11267 z!3530)) lt!2570182)))

(declare-fun bs!1892601 () Bool)

(assert (= bs!1892601 d!2232807))

(declare-fun m!7870592 () Bool)

(assert (=> bs!1892601 m!7870592))

(assert (=> bs!1892601 m!7870510))

(declare-fun m!7870594 () Bool)

(assert (=> bs!1892601 m!7870594))

(assert (=> bs!1892601 m!7870594))

(declare-fun m!7870596 () Bool)

(assert (=> bs!1892601 m!7870596))

(assert (=> start!698500 d!2232807))

(declare-fun d!2232811 () Bool)

(declare-fun e!4305568 () Bool)

(assert (=> d!2232811 e!4305568))

(declare-fun res!2921263 () Bool)

(assert (=> d!2232811 (=> (not res!2921263) (not e!4305568))))

(declare-fun lt!2570183 () List!69714)

(assert (=> d!2232811 (= res!2921263 (noDuplicate!2868 lt!2570183))))

(assert (=> d!2232811 (= lt!2570183 (choose!55349 z!3530))))

(assert (=> d!2232811 (= (toList!11267 z!3530) lt!2570183)))

(declare-fun b!7167976 () Bool)

(assert (=> b!7167976 (= e!4305568 (= (content!14297 lt!2570183) z!3530))))

(assert (= (and d!2232811 res!2921263) b!7167976))

(declare-fun m!7870598 () Bool)

(assert (=> d!2232811 m!7870598))

(declare-fun m!7870600 () Bool)

(assert (=> d!2232811 m!7870600))

(declare-fun m!7870602 () Bool)

(assert (=> b!7167976 m!7870602))

(assert (=> start!698500 d!2232811))

(declare-fun b!7167981 () Bool)

(declare-fun e!4305571 () Bool)

(declare-fun tp!1985240 () Bool)

(assert (=> b!7167981 (= e!4305571 (and tp_is_empty!46221 tp!1985240))))

(assert (=> b!7167902 (= tp!1985222 e!4305571)))

(assert (= (and b!7167902 (is-Cons!69589 (t!383732 s!7967))) b!7167981))

(declare-fun condSetEmpty!52940 () Bool)

(assert (=> setNonEmpty!52934 (= condSetEmpty!52940 (= setRest!52934 (as set.empty (Set Context!14552))))))

(declare-fun setRes!52940 () Bool)

(assert (=> setNonEmpty!52934 (= tp!1985224 setRes!52940)))

(declare-fun setIsEmpty!52940 () Bool)

(assert (=> setIsEmpty!52940 setRes!52940))

(declare-fun setNonEmpty!52940 () Bool)

(declare-fun e!4305574 () Bool)

(declare-fun tp!1985246 () Bool)

(declare-fun setElem!52940 () Context!14552)

(assert (=> setNonEmpty!52940 (= setRes!52940 (and tp!1985246 (inv!88833 setElem!52940) e!4305574))))

(declare-fun setRest!52940 () (Set Context!14552))

(assert (=> setNonEmpty!52940 (= setRest!52934 (set.union (set.insert setElem!52940 (as set.empty (Set Context!14552))) setRest!52940))))

(declare-fun b!7167986 () Bool)

(declare-fun tp!1985245 () Bool)

(assert (=> b!7167986 (= e!4305574 tp!1985245)))

(assert (= (and setNonEmpty!52934 condSetEmpty!52940) setIsEmpty!52940))

(assert (= (and setNonEmpty!52934 (not condSetEmpty!52940)) setNonEmpty!52940))

(assert (= setNonEmpty!52940 b!7167986))

(declare-fun m!7870604 () Bool)

(assert (=> setNonEmpty!52940 m!7870604))

(declare-fun b!7167993 () Bool)

(declare-fun e!4305579 () Bool)

(declare-fun tp!1985251 () Bool)

(declare-fun tp!1985252 () Bool)

(assert (=> b!7167993 (= e!4305579 (and tp!1985251 tp!1985252))))

(assert (=> b!7167905 (= tp!1985225 e!4305579)))

(assert (= (and b!7167905 (is-Cons!69588 (exprs!7776 setElem!52934))) b!7167993))

(declare-fun b!7167994 () Bool)

(declare-fun e!4305580 () Bool)

(declare-fun tp!1985253 () Bool)

(declare-fun tp!1985254 () Bool)

(assert (=> b!7167994 (= e!4305580 (and tp!1985253 tp!1985254))))

(assert (=> b!7167898 (= tp!1985223 e!4305580)))

(assert (= (and b!7167898 (is-Cons!69588 (exprs!7776 empty!2939))) b!7167994))

(push 1)

(assert tp_is_empty!46221)

(assert (not d!2232791))

(assert (not d!2232793))

(assert (not d!2232781))

(assert (not b!7167993))

(assert (not b!7167974))

(assert (not setNonEmpty!52940))

(assert (not d!2232805))

(assert (not b!7167971))

(assert (not bm!652980))

(assert (not d!2232797))

(assert (not d!2232811))

(assert (not b!7167960))

(assert (not d!2232789))

(assert (not d!2232787))

(assert (not b!7167954))

(assert (not b!7167986))

(assert (not b!7167981))

(assert (not d!2232807))

(assert (not d!2232785))

(assert (not b!7167994))

(assert (not d!2232779))

(assert (not b!7167976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


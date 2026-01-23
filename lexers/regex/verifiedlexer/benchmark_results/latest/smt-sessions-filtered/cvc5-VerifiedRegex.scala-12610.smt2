; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!698648 () Bool)

(assert start!698648)

(declare-fun setIsEmpty!52964 () Bool)

(declare-fun setRes!52964 () Bool)

(assert (=> setIsEmpty!52964 setRes!52964))

(declare-fun b!7169534 () Bool)

(declare-fun e!4306542 () Bool)

(declare-fun tp!1985904 () Bool)

(assert (=> b!7169534 (= e!4306542 tp!1985904)))

(declare-fun b!7169535 () Bool)

(declare-fun res!2921801 () Bool)

(declare-fun e!4306544 () Bool)

(assert (=> b!7169535 (=> (not res!2921801) (not e!4306544))))

(declare-datatypes ((C!36930 0))(
  ( (C!36931 (val!28413 Int)) )
))
(declare-datatypes ((List!69722 0))(
  ( (Nil!69598) (Cons!69598 (h!76046 C!36930) (t!383741 List!69722)) )
))
(declare-fun s!7967 () List!69722)

(declare-fun isEmpty!40188 (List!69722) Bool)

(assert (=> b!7169535 (= res!2921801 (not (isEmpty!40188 s!7967)))))

(declare-datatypes ((Regex!18328 0))(
  ( (ElementMatch!18328 (c!1335594 C!36930)) (Concat!27173 (regOne!37168 Regex!18328) (regTwo!37168 Regex!18328)) (EmptyExpr!18328) (Star!18328 (reg!18657 Regex!18328)) (EmptyLang!18328) (Union!18328 (regOne!37169 Regex!18328) (regTwo!37169 Regex!18328)) )
))
(declare-datatypes ((List!69723 0))(
  ( (Nil!69599) (Cons!69599 (h!76047 Regex!18328) (t!383742 List!69723)) )
))
(declare-datatypes ((Context!14560 0))(
  ( (Context!14561 (exprs!7780 List!69723)) )
))
(declare-fun setElem!52964 () Context!14560)

(declare-fun tp!1985905 () Bool)

(declare-fun setNonEmpty!52964 () Bool)

(declare-fun inv!88843 (Context!14560) Bool)

(assert (=> setNonEmpty!52964 (= setRes!52964 (and tp!1985905 (inv!88843 setElem!52964) e!4306542))))

(declare-fun z!3530 () (Set Context!14560))

(declare-fun setRest!52964 () (Set Context!14560))

(assert (=> setNonEmpty!52964 (= z!3530 (set.union (set.insert setElem!52964 (as set.empty (Set Context!14560))) setRest!52964))))

(declare-fun b!7169536 () Bool)

(declare-fun res!2921799 () Bool)

(declare-fun e!4306541 () Bool)

(assert (=> b!7169536 (=> (not res!2921799) (not e!4306541))))

(declare-fun focus!403 (Regex!18328) (Set Context!14560))

(assert (=> b!7169536 (= res!2921799 (not (= z!3530 (focus!403 EmptyExpr!18328))))))

(declare-fun b!7169537 () Bool)

(declare-fun lt!2570269 () Context!14560)

(declare-fun derivationStepZipperUp!2314 (Context!14560 C!36930) (Set Context!14560))

(declare-fun head!14632 (List!69722) C!36930)

(assert (=> b!7169537 (= e!4306544 (not (= (derivationStepZipperUp!2314 lt!2570269 (head!14632 s!7967)) (as set.empty (Set Context!14560)))))))

(declare-fun b!7169538 () Bool)

(assert (=> b!7169538 (= e!4306541 e!4306544)))

(declare-fun res!2921798 () Bool)

(assert (=> b!7169538 (=> (not res!2921798) (not e!4306544))))

(assert (=> b!7169538 (= res!2921798 (= z!3530 (set.insert lt!2570269 (as set.empty (Set Context!14560)))))))

(assert (=> b!7169538 (= lt!2570269 (Context!14561 Nil!69599))))

(declare-fun b!7169539 () Bool)

(declare-fun e!4306543 () Bool)

(declare-fun tp_is_empty!46229 () Bool)

(declare-fun tp!1985906 () Bool)

(assert (=> b!7169539 (= e!4306543 (and tp_is_empty!46229 tp!1985906))))

(declare-fun res!2921800 () Bool)

(assert (=> start!698648 (=> (not res!2921800) (not e!4306541))))

(declare-datatypes ((List!69724 0))(
  ( (Nil!69600) (Cons!69600 (h!76048 Context!14560) (t!383743 List!69724)) )
))
(declare-fun unfocusZipper!2588 (List!69724) Regex!18328)

(declare-fun toList!11271 ((Set Context!14560)) List!69724)

(assert (=> start!698648 (= res!2921800 (= (unfocusZipper!2588 (toList!11271 z!3530)) EmptyExpr!18328))))

(assert (=> start!698648 e!4306541))

(declare-fun condSetEmpty!52964 () Bool)

(assert (=> start!698648 (= condSetEmpty!52964 (= z!3530 (as set.empty (Set Context!14560))))))

(assert (=> start!698648 setRes!52964))

(assert (=> start!698648 e!4306543))

(assert (= (and start!698648 res!2921800) b!7169536))

(assert (= (and b!7169536 res!2921799) b!7169538))

(assert (= (and b!7169538 res!2921798) b!7169535))

(assert (= (and b!7169535 res!2921801) b!7169537))

(assert (= (and start!698648 condSetEmpty!52964) setIsEmpty!52964))

(assert (= (and start!698648 (not condSetEmpty!52964)) setNonEmpty!52964))

(assert (= setNonEmpty!52964 b!7169534))

(assert (= (and start!698648 (is-Cons!69598 s!7967)) b!7169539))

(declare-fun m!7871884 () Bool)

(assert (=> b!7169535 m!7871884))

(declare-fun m!7871886 () Bool)

(assert (=> setNonEmpty!52964 m!7871886))

(declare-fun m!7871888 () Bool)

(assert (=> b!7169536 m!7871888))

(declare-fun m!7871890 () Bool)

(assert (=> b!7169538 m!7871890))

(declare-fun m!7871892 () Bool)

(assert (=> b!7169537 m!7871892))

(assert (=> b!7169537 m!7871892))

(declare-fun m!7871894 () Bool)

(assert (=> b!7169537 m!7871894))

(declare-fun m!7871896 () Bool)

(assert (=> start!698648 m!7871896))

(assert (=> start!698648 m!7871896))

(declare-fun m!7871898 () Bool)

(assert (=> start!698648 m!7871898))

(push 1)

(assert (not b!7169539))

(assert (not b!7169536))

(assert (not start!698648))

(assert (not b!7169537))

(assert (not setNonEmpty!52964))

(assert (not b!7169535))

(assert (not b!7169534))

(assert tp_is_empty!46229)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2233397 () Bool)

(declare-fun lambda!437109 () Int)

(declare-fun forall!17158 (List!69723 Int) Bool)

(assert (=> d!2233397 (= (inv!88843 setElem!52964) (forall!17158 (exprs!7780 setElem!52964) lambda!437109))))

(declare-fun bs!1893101 () Bool)

(assert (= bs!1893101 d!2233397))

(declare-fun m!7871934 () Bool)

(assert (=> bs!1893101 m!7871934))

(assert (=> setNonEmpty!52964 d!2233397))

(declare-fun d!2233409 () Bool)

(assert (=> d!2233409 (= (isEmpty!40188 s!7967) (is-Nil!69598 s!7967))))

(assert (=> b!7169535 d!2233409))

(declare-fun d!2233411 () Bool)

(declare-fun lt!2570281 () Regex!18328)

(declare-fun validRegex!9453 (Regex!18328) Bool)

(assert (=> d!2233411 (validRegex!9453 lt!2570281)))

(declare-fun generalisedUnion!2756 (List!69723) Regex!18328)

(declare-fun unfocusZipperList!2312 (List!69724) List!69723)

(assert (=> d!2233411 (= lt!2570281 (generalisedUnion!2756 (unfocusZipperList!2312 (toList!11271 z!3530))))))

(assert (=> d!2233411 (= (unfocusZipper!2588 (toList!11271 z!3530)) lt!2570281)))

(declare-fun bs!1893102 () Bool)

(assert (= bs!1893102 d!2233411))

(declare-fun m!7871936 () Bool)

(assert (=> bs!1893102 m!7871936))

(assert (=> bs!1893102 m!7871896))

(declare-fun m!7871938 () Bool)

(assert (=> bs!1893102 m!7871938))

(assert (=> bs!1893102 m!7871938))

(declare-fun m!7871940 () Bool)

(assert (=> bs!1893102 m!7871940))

(assert (=> start!698648 d!2233411))

(declare-fun d!2233413 () Bool)

(declare-fun e!4306571 () Bool)

(assert (=> d!2233413 e!4306571))

(declare-fun res!2921822 () Bool)

(assert (=> d!2233413 (=> (not res!2921822) (not e!4306571))))

(declare-fun lt!2570284 () List!69724)

(declare-fun noDuplicate!2872 (List!69724) Bool)

(assert (=> d!2233413 (= res!2921822 (noDuplicate!2872 lt!2570284))))

(declare-fun choose!55358 ((Set Context!14560)) List!69724)

(assert (=> d!2233413 (= lt!2570284 (choose!55358 z!3530))))

(assert (=> d!2233413 (= (toList!11271 z!3530) lt!2570284)))

(declare-fun b!7169578 () Bool)

(declare-fun content!14301 (List!69724) (Set Context!14560))

(assert (=> b!7169578 (= e!4306571 (= (content!14301 lt!2570284) z!3530))))

(assert (= (and d!2233413 res!2921822) b!7169578))

(declare-fun m!7871942 () Bool)

(assert (=> d!2233413 m!7871942))

(declare-fun m!7871944 () Bool)

(assert (=> d!2233413 m!7871944))

(declare-fun m!7871946 () Bool)

(assert (=> b!7169578 m!7871946))

(assert (=> start!698648 d!2233413))

(declare-fun b!7169589 () Bool)

(declare-fun e!4306578 () (Set Context!14560))

(assert (=> b!7169589 (= e!4306578 (as set.empty (Set Context!14560)))))

(declare-fun b!7169590 () Bool)

(declare-fun e!4306580 () Bool)

(declare-fun nullable!7764 (Regex!18328) Bool)

(assert (=> b!7169590 (= e!4306580 (nullable!7764 (h!76047 (exprs!7780 lt!2570269))))))

(declare-fun b!7169591 () Bool)

(declare-fun call!653156 () (Set Context!14560))

(assert (=> b!7169591 (= e!4306578 call!653156)))

(declare-fun bm!653151 () Bool)

(declare-fun derivationStepZipperDown!2504 (Regex!18328 Context!14560 C!36930) (Set Context!14560))

(assert (=> bm!653151 (= call!653156 (derivationStepZipperDown!2504 (h!76047 (exprs!7780 lt!2570269)) (Context!14561 (t!383742 (exprs!7780 lt!2570269))) (head!14632 s!7967)))))

(declare-fun b!7169593 () Bool)

(declare-fun e!4306579 () (Set Context!14560))

(assert (=> b!7169593 (= e!4306579 e!4306578)))

(declare-fun c!1335607 () Bool)

(assert (=> b!7169593 (= c!1335607 (is-Cons!69599 (exprs!7780 lt!2570269)))))

(declare-fun b!7169592 () Bool)

(assert (=> b!7169592 (= e!4306579 (set.union call!653156 (derivationStepZipperUp!2314 (Context!14561 (t!383742 (exprs!7780 lt!2570269))) (head!14632 s!7967))))))

(declare-fun d!2233415 () Bool)

(declare-fun c!1335606 () Bool)

(assert (=> d!2233415 (= c!1335606 e!4306580)))

(declare-fun res!2921825 () Bool)

(assert (=> d!2233415 (=> (not res!2921825) (not e!4306580))))

(assert (=> d!2233415 (= res!2921825 (is-Cons!69599 (exprs!7780 lt!2570269)))))

(assert (=> d!2233415 (= (derivationStepZipperUp!2314 lt!2570269 (head!14632 s!7967)) e!4306579)))

(assert (= (and d!2233415 res!2921825) b!7169590))

(assert (= (and d!2233415 c!1335606) b!7169592))

(assert (= (and d!2233415 (not c!1335606)) b!7169593))

(assert (= (and b!7169593 c!1335607) b!7169591))

(assert (= (and b!7169593 (not c!1335607)) b!7169589))

(assert (= (or b!7169592 b!7169591) bm!653151))

(declare-fun m!7871948 () Bool)

(assert (=> b!7169590 m!7871948))

(assert (=> bm!653151 m!7871892))

(declare-fun m!7871950 () Bool)

(assert (=> bm!653151 m!7871950))

(assert (=> b!7169592 m!7871892))

(declare-fun m!7871952 () Bool)

(assert (=> b!7169592 m!7871952))

(assert (=> b!7169537 d!2233415))

(declare-fun d!2233417 () Bool)

(assert (=> d!2233417 (= (head!14632 s!7967) (h!76046 s!7967))))

(assert (=> b!7169537 d!2233417))

(declare-fun d!2233419 () Bool)

(declare-fun e!4306583 () Bool)

(assert (=> d!2233419 e!4306583))

(declare-fun res!2921829 () Bool)

(assert (=> d!2233419 (=> (not res!2921829) (not e!4306583))))

(assert (=> d!2233419 (= res!2921829 (validRegex!9453 EmptyExpr!18328))))

(assert (=> d!2233419 (= (focus!403 EmptyExpr!18328) (set.insert (Context!14561 (Cons!69599 EmptyExpr!18328 Nil!69599)) (as set.empty (Set Context!14560))))))

(declare-fun b!7169596 () Bool)

(assert (=> b!7169596 (= e!4306583 (= (unfocusZipper!2588 (toList!11271 (set.insert (Context!14561 (Cons!69599 EmptyExpr!18328 Nil!69599)) (as set.empty (Set Context!14560))))) EmptyExpr!18328))))

(assert (= (and d!2233419 res!2921829) b!7169596))

(declare-fun m!7871954 () Bool)

(assert (=> d!2233419 m!7871954))

(declare-fun m!7871956 () Bool)

(assert (=> d!2233419 m!7871956))

(assert (=> b!7169596 m!7871956))

(assert (=> b!7169596 m!7871956))

(declare-fun m!7871958 () Bool)

(assert (=> b!7169596 m!7871958))

(assert (=> b!7169596 m!7871958))

(declare-fun m!7871960 () Bool)

(assert (=> b!7169596 m!7871960))

(assert (=> b!7169536 d!2233419))

(declare-fun condSetEmpty!52970 () Bool)

(assert (=> setNonEmpty!52964 (= condSetEmpty!52970 (= setRest!52964 (as set.empty (Set Context!14560))))))

(declare-fun setRes!52970 () Bool)

(assert (=> setNonEmpty!52964 (= tp!1985905 setRes!52970)))

(declare-fun setIsEmpty!52970 () Bool)

(assert (=> setIsEmpty!52970 setRes!52970))

(declare-fun tp!1985920 () Bool)

(declare-fun setNonEmpty!52970 () Bool)

(declare-fun e!4306586 () Bool)

(declare-fun setElem!52970 () Context!14560)

(assert (=> setNonEmpty!52970 (= setRes!52970 (and tp!1985920 (inv!88843 setElem!52970) e!4306586))))

(declare-fun setRest!52970 () (Set Context!14560))

(assert (=> setNonEmpty!52970 (= setRest!52964 (set.union (set.insert setElem!52970 (as set.empty (Set Context!14560))) setRest!52970))))

(declare-fun b!7169601 () Bool)

(declare-fun tp!1985921 () Bool)

(assert (=> b!7169601 (= e!4306586 tp!1985921)))

(assert (= (and setNonEmpty!52964 condSetEmpty!52970) setIsEmpty!52970))

(assert (= (and setNonEmpty!52964 (not condSetEmpty!52970)) setNonEmpty!52970))

(assert (= setNonEmpty!52970 b!7169601))

(declare-fun m!7871962 () Bool)

(assert (=> setNonEmpty!52970 m!7871962))

(declare-fun b!7169606 () Bool)

(declare-fun e!4306589 () Bool)

(declare-fun tp!1985924 () Bool)

(assert (=> b!7169606 (= e!4306589 (and tp_is_empty!46229 tp!1985924))))

(assert (=> b!7169539 (= tp!1985906 e!4306589)))

(assert (= (and b!7169539 (is-Cons!69598 (t!383741 s!7967))) b!7169606))

(declare-fun b!7169611 () Bool)

(declare-fun e!4306592 () Bool)

(declare-fun tp!1985929 () Bool)

(declare-fun tp!1985930 () Bool)

(assert (=> b!7169611 (= e!4306592 (and tp!1985929 tp!1985930))))

(assert (=> b!7169534 (= tp!1985904 e!4306592)))

(assert (= (and b!7169534 (is-Cons!69599 (exprs!7780 setElem!52964))) b!7169611))

(push 1)

(assert (not b!7169611))

(assert (not d!2233411))

(assert (not d!2233419))

(assert (not b!7169578))

(assert (not d!2233413))

(assert (not b!7169590))

(assert (not b!7169601))

(assert (not b!7169592))

(assert (not d!2233397))

(assert (not b!7169606))

(assert (not setNonEmpty!52970))

(assert tp_is_empty!46229)

(assert (not b!7169596))

(assert (not bm!653151))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


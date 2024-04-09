; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75162 () Bool)

(assert start!75162)

(declare-fun res!601438 () Bool)

(declare-fun e!492842 () Bool)

(assert (=> start!75162 (=> (not res!601438) (not e!492842))))

(declare-datatypes ((B!1272 0))(
  ( (B!1273 (val!8942 Int)) )
))
(declare-datatypes ((tuple2!11904 0))(
  ( (tuple2!11905 (_1!5962 (_ BitVec 64)) (_2!5962 B!1272)) )
))
(declare-datatypes ((List!17742 0))(
  ( (Nil!17739) (Cons!17738 (h!18869 tuple2!11904) (t!25027 List!17742)) )
))
(declare-fun l!906 () List!17742)

(declare-fun isStrictlySorted!475 (List!17742) Bool)

(assert (=> start!75162 (= res!601438 (isStrictlySorted!475 l!906))))

(assert (=> start!75162 e!492842))

(declare-fun e!492841 () Bool)

(assert (=> start!75162 e!492841))

(assert (=> start!75162 true))

(declare-fun tp_is_empty!17783 () Bool)

(assert (=> start!75162 tp_is_empty!17783))

(declare-fun b!885473 () Bool)

(declare-fun res!601439 () Bool)

(assert (=> b!885473 (=> (not res!601439) (not e!492842))))

(declare-fun key1!49 () (_ BitVec 64))

(assert (=> b!885473 (= res!601439 (or (not (is-Cons!17738 l!906)) (bvsge (_1!5962 (h!18869 l!906)) key1!49)))))

(declare-fun b!885474 () Bool)

(declare-fun v1!38 () B!1272)

(declare-fun insertStrictlySorted!296 (List!17742 (_ BitVec 64) B!1272) List!17742)

(assert (=> b!885474 (= e!492842 (not (isStrictlySorted!475 (insertStrictlySorted!296 l!906 key1!49 v1!38))))))

(declare-fun b!885475 () Bool)

(declare-fun tp!54291 () Bool)

(assert (=> b!885475 (= e!492841 (and tp_is_empty!17783 tp!54291))))

(assert (= (and start!75162 res!601438) b!885473))

(assert (= (and b!885473 res!601439) b!885474))

(assert (= (and start!75162 (is-Cons!17738 l!906)) b!885475))

(declare-fun m!825749 () Bool)

(assert (=> start!75162 m!825749))

(declare-fun m!825751 () Bool)

(assert (=> b!885474 m!825751))

(assert (=> b!885474 m!825751))

(declare-fun m!825753 () Bool)

(assert (=> b!885474 m!825753))

(push 1)

(assert (not start!75162))

(assert (not b!885474))

(assert (not b!885475))

(assert tp_is_empty!17783)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109347 () Bool)

(declare-fun res!601458 () Bool)

(declare-fun e!492861 () Bool)

(assert (=> d!109347 (=> res!601458 e!492861)))

(assert (=> d!109347 (= res!601458 (or (is-Nil!17739 l!906) (is-Nil!17739 (t!25027 l!906))))))

(assert (=> d!109347 (= (isStrictlySorted!475 l!906) e!492861)))

(declare-fun b!885494 () Bool)

(declare-fun e!492862 () Bool)

(assert (=> b!885494 (= e!492861 e!492862)))

(declare-fun res!601459 () Bool)

(assert (=> b!885494 (=> (not res!601459) (not e!492862))))

(assert (=> b!885494 (= res!601459 (bvslt (_1!5962 (h!18869 l!906)) (_1!5962 (h!18869 (t!25027 l!906)))))))

(declare-fun b!885495 () Bool)

(assert (=> b!885495 (= e!492862 (isStrictlySorted!475 (t!25027 l!906)))))

(assert (= (and d!109347 (not res!601458)) b!885494))

(assert (= (and b!885494 res!601459) b!885495))

(declare-fun m!825761 () Bool)

(assert (=> b!885495 m!825761))

(assert (=> start!75162 d!109347))

(declare-fun d!109353 () Bool)

(declare-fun res!601461 () Bool)

(declare-fun e!492864 () Bool)

(assert (=> d!109353 (=> res!601461 e!492864)))

(assert (=> d!109353 (= res!601461 (or (is-Nil!17739 (insertStrictlySorted!296 l!906 key1!49 v1!38)) (is-Nil!17739 (t!25027 (insertStrictlySorted!296 l!906 key1!49 v1!38)))))))

(assert (=> d!109353 (= (isStrictlySorted!475 (insertStrictlySorted!296 l!906 key1!49 v1!38)) e!492864)))

(declare-fun b!885497 () Bool)

(declare-fun e!492866 () Bool)

(assert (=> b!885497 (= e!492864 e!492866)))

(declare-fun res!601463 () Bool)

(assert (=> b!885497 (=> (not res!601463) (not e!492866))))

(assert (=> b!885497 (= res!601463 (bvslt (_1!5962 (h!18869 (insertStrictlySorted!296 l!906 key1!49 v1!38))) (_1!5962 (h!18869 (t!25027 (insertStrictlySorted!296 l!906 key1!49 v1!38))))))))

(declare-fun b!885499 () Bool)

(assert (=> b!885499 (= e!492866 (isStrictlySorted!475 (t!25027 (insertStrictlySorted!296 l!906 key1!49 v1!38))))))

(assert (= (and d!109353 (not res!601461)) b!885497))

(assert (= (and b!885497 res!601463) b!885499))

(declare-fun m!825764 () Bool)

(assert (=> b!885499 m!825764))

(assert (=> b!885474 d!109353))

(declare-fun d!109359 () Bool)

(declare-fun e!492909 () Bool)

(assert (=> d!109359 e!492909))

(declare-fun res!601480 () Bool)

(assert (=> d!109359 (=> (not res!601480) (not e!492909))))

(declare-fun lt!400989 () List!17742)

(assert (=> d!109359 (= res!601480 (isStrictlySorted!475 lt!400989))))

(declare-fun e!492906 () List!17742)

(assert (=> d!109359 (= lt!400989 e!492906)))

(declare-fun c!93268 () Bool)

(assert (=> d!109359 (= c!93268 (and (is-Cons!17738 l!906) (bvslt (_1!5962 (h!18869 l!906)) key1!49)))))

(assert (=> d!109359 (isStrictlySorted!475 l!906)))

(assert (=> d!109359 (= (insertStrictlySorted!296 l!906 key1!49 v1!38) lt!400989)))

(declare-fun b!885576 () Bool)

(declare-fun c!93266 () Bool)

(assert (=> b!885576 (= c!93266 (and (is-Cons!17738 l!906) (bvsgt (_1!5962 (h!18869 l!906)) key1!49)))))

(declare-fun e!492910 () List!17742)

(declare-fun e!492911 () List!17742)

(assert (=> b!885576 (= e!492910 e!492911)))

(declare-fun b!885577 () Bool)

(assert (=> b!885577 (= e!492906 e!492910)))

(declare-fun c!93267 () Bool)

(assert (=> b!885577 (= c!93267 (and (is-Cons!17738 l!906) (= (_1!5962 (h!18869 l!906)) key1!49)))))

(declare-fun b!885579 () Bool)

(declare-fun call!39148 () List!17742)

(assert (=> b!885579 (= e!492910 call!39148)))

(declare-fun b!885580 () Bool)

(declare-fun call!39147 () List!17742)

(assert (=> b!885580 (= e!492906 call!39147)))

(declare-fun e!492907 () List!17742)

(declare-fun b!885582 () Bool)

(assert (=> b!885582 (= e!492907 (ite c!93267 (t!25027 l!906) (ite c!93266 (Cons!17738 (h!18869 l!906) (t!25027 l!906)) Nil!17739)))))

(declare-fun b!885584 () Bool)

(declare-fun call!39144 () List!17742)

(assert (=> b!885584 (= e!492911 call!39144)))

(declare-fun b!885586 () Bool)

(declare-fun res!601481 () Bool)

(assert (=> b!885586 (=> (not res!601481) (not e!492909))))

(declare-fun containsKey!411 (List!17742 (_ BitVec 64)) Bool)

(assert (=> b!885586 (= res!601481 (containsKey!411 lt!400989 key1!49))))

(declare-fun bm!39143 () Bool)

(assert (=> bm!39143 (= call!39148 call!39147)))

(declare-fun bm!39144 () Bool)

(assert (=> bm!39144 (= call!39144 call!39148)))

(declare-fun b!885587 () Bool)

(declare-fun contains!4290 (List!17742 tuple2!11904) Bool)

(assert (=> b!885587 (= e!492909 (contains!4290 lt!400989 (tuple2!11905 key1!49 v1!38)))))

(declare-fun b!885588 () Bool)

(assert (=> b!885588 (= e!492907 (insertStrictlySorted!296 (t!25027 l!906) key1!49 v1!38))))

(declare-fun bm!39145 () Bool)

(declare-fun $colon$colon!546 (List!17742 tuple2!11904) List!17742)

(assert (=> bm!39145 (= call!39147 ($colon$colon!546 e!492907 (ite c!93268 (h!18869 l!906) (tuple2!11905 key1!49 v1!38))))))

(declare-fun c!93271 () Bool)

(assert (=> bm!39145 (= c!93271 c!93268)))

(declare-fun b!885589 () Bool)

(assert (=> b!885589 (= e!492911 call!39144)))

(assert (= (and d!109359 c!93268) b!885580))

(assert (= (and d!109359 (not c!93268)) b!885577))

(assert (= (and b!885577 c!93267) b!885579))

(assert (= (and b!885577 (not c!93267)) b!885576))

(assert (= (and b!885576 c!93266) b!885589))

(assert (= (and b!885576 (not c!93266)) b!885584))

(assert (= (or b!885589 b!885584) bm!39144))

(assert (= (or b!885579 bm!39144) bm!39143))

(assert (= (or b!885580 bm!39143) bm!39145))

(assert (= (and bm!39145 c!93271) b!885588))

(assert (= (and bm!39145 (not c!93271)) b!885582))

(assert (= (and d!109359 res!601480) b!885586))

(assert (= (and b!885586 res!601481) b!885587))

(declare-fun m!825779 () Bool)

(assert (=> b!885587 m!825779))

(declare-fun m!825783 () Bool)

(assert (=> bm!39145 m!825783))

(declare-fun m!825787 () Bool)

(assert (=> b!885586 m!825787))

(declare-fun m!825791 () Bool)

(assert (=> b!885588 m!825791))

(declare-fun m!825795 () Bool)

(assert (=> d!109359 m!825795))

(assert (=> d!109359 m!825749))

(assert (=> b!885474 d!109359))

(declare-fun b!885604 () Bool)

(declare-fun e!492920 () Bool)

(declare-fun tp!54300 () Bool)


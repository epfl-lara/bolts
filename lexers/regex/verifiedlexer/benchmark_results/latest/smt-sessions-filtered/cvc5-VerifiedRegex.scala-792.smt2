; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45024 () Bool)

(assert start!45024)

(declare-fun b_free!13117 () Bool)

(declare-fun b_next!13117 () Bool)

(assert (=> start!45024 (= b_free!13117 (not b_next!13117))))

(declare-fun tp!130552 () Bool)

(declare-fun b_and!50399 () Bool)

(assert (=> start!45024 (= tp!130552 b_and!50399)))

(declare-fun b_free!13119 () Bool)

(declare-fun b_next!13119 () Bool)

(assert (=> start!45024 (= b_free!13119 (not b_next!13119))))

(declare-fun tp!130554 () Bool)

(declare-fun b_and!50401 () Bool)

(assert (=> start!45024 (= tp!130554 b_and!50401)))

(assert (=> start!45024 true))

(declare-fun order!4131 () Int)

(declare-fun lambda!13924 () Int)

(declare-fun f!1027 () Int)

(declare-fun order!4133 () Int)

(declare-fun dynLambda!2825 (Int Int) Int)

(declare-fun dynLambda!2826 (Int Int) Int)

(assert (=> start!45024 (< (dynLambda!2825 order!4131 f!1027) (dynLambda!2826 order!4133 lambda!13924))))

(assert (=> start!45024 true))

(declare-fun order!4135 () Int)

(declare-fun p!1789 () Int)

(declare-fun dynLambda!2827 (Int Int) Int)

(assert (=> start!45024 (< (dynLambda!2827 order!4135 p!1789) (dynLambda!2826 order!4133 lambda!13924))))

(declare-fun res!209004 () Bool)

(declare-fun e!288254 () Bool)

(assert (=> start!45024 (=> (not res!209004) (not e!288254))))

(declare-fun Forall!231 (Int) Bool)

(assert (=> start!45024 (= res!209004 (Forall!231 lambda!13924))))

(assert (=> start!45024 e!288254))

(assert (=> start!45024 tp!130552))

(assert (=> start!45024 tp!130554))

(declare-fun e!288255 () Bool)

(assert (=> start!45024 e!288255))

(declare-fun condSetEmpty!1897 () Bool)

(declare-datatypes ((A!353 0))(
  ( (A!354 (val!1491 Int)) )
))
(declare-fun s!1494 () (Set A!353))

(assert (=> start!45024 (= condSetEmpty!1897 (= s!1494 (as set.empty (Set A!353))))))

(declare-fun setRes!1897 () Bool)

(assert (=> start!45024 setRes!1897))

(declare-fun setIsEmpty!1897 () Bool)

(assert (=> setIsEmpty!1897 setRes!1897))

(declare-fun b!471364 () Bool)

(declare-fun res!209005 () Bool)

(assert (=> b!471364 (=> (not res!209005) (not e!288254))))

(declare-datatypes ((B!915 0))(
  ( (B!916 (val!1492 Int)) )
))
(declare-datatypes ((List!4544 0))(
  ( (Nil!4534) (Cons!4534 (h!9931 B!915) (t!72955 List!4544)) )
))
(declare-fun l!2882 () List!4544)

(declare-fun subseq!102 (List!4544 List!4544) Bool)

(declare-fun toList!315 ((Set B!915)) List!4544)

(declare-fun flatMap!81 ((Set A!353) Int) (Set B!915))

(assert (=> b!471364 (= res!209005 (subseq!102 l!2882 (toList!315 (flatMap!81 s!1494 f!1027))))))

(declare-fun b!471365 () Bool)

(declare-fun tp_is_empty!2085 () Bool)

(declare-fun tp!130553 () Bool)

(assert (=> b!471365 (= e!288255 (and tp_is_empty!2085 tp!130553))))

(declare-fun b!471366 () Bool)

(declare-fun ListPrimitiveSize!37 (List!4544) Int)

(assert (=> b!471366 (= e!288254 (< (ListPrimitiveSize!37 l!2882) 0))))

(declare-fun setNonEmpty!1897 () Bool)

(declare-fun tp!130555 () Bool)

(declare-fun tp_is_empty!2087 () Bool)

(assert (=> setNonEmpty!1897 (= setRes!1897 (and tp!130555 tp_is_empty!2087))))

(declare-fun setElem!1897 () A!353)

(declare-fun setRest!1897 () (Set A!353))

(assert (=> setNonEmpty!1897 (= s!1494 (set.union (set.insert setElem!1897 (as set.empty (Set A!353))) setRest!1897))))

(assert (= (and start!45024 res!209004) b!471364))

(assert (= (and b!471364 res!209005) b!471366))

(assert (= (and start!45024 (is-Cons!4534 l!2882)) b!471365))

(assert (= (and start!45024 condSetEmpty!1897) setIsEmpty!1897))

(assert (= (and start!45024 (not condSetEmpty!1897)) setNonEmpty!1897))

(declare-fun m!744909 () Bool)

(assert (=> start!45024 m!744909))

(declare-fun m!744911 () Bool)

(assert (=> b!471364 m!744911))

(assert (=> b!471364 m!744911))

(declare-fun m!744913 () Bool)

(assert (=> b!471364 m!744913))

(assert (=> b!471364 m!744913))

(declare-fun m!744915 () Bool)

(assert (=> b!471364 m!744915))

(declare-fun m!744917 () Bool)

(assert (=> b!471366 m!744917))

(push 1)

(assert (not b_next!13117))

(assert tp_is_empty!2087)

(assert (not setNonEmpty!1897))

(assert (not b_next!13119))

(assert b_and!50401)

(assert (not start!45024))

(assert tp_is_empty!2085)

(assert (not b!471366))

(assert b_and!50399)

(assert (not b!471365))

(assert (not b!471364))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50399)

(assert b_and!50401)

(assert (not b_next!13119))

(assert (not b_next!13117))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!179303 () Bool)

(declare-fun lt!210001 () Int)

(assert (=> d!179303 (>= lt!210001 0)))

(declare-fun e!288264 () Int)

(assert (=> d!179303 (= lt!210001 e!288264)))

(declare-fun c!94800 () Bool)

(assert (=> d!179303 (= c!94800 (is-Nil!4534 l!2882))))

(assert (=> d!179303 (= (ListPrimitiveSize!37 l!2882) lt!210001)))

(declare-fun b!471388 () Bool)

(assert (=> b!471388 (= e!288264 0)))

(declare-fun b!471389 () Bool)

(assert (=> b!471389 (= e!288264 (+ 1 (ListPrimitiveSize!37 (t!72955 l!2882))))))

(assert (= (and d!179303 c!94800) b!471388))

(assert (= (and d!179303 (not c!94800)) b!471389))

(declare-fun m!744929 () Bool)

(assert (=> b!471389 m!744929))

(assert (=> b!471366 d!179303))

(declare-fun d!179305 () Bool)

(declare-fun choose!3547 (Int) Bool)

(assert (=> d!179305 (= (Forall!231 lambda!13924) (choose!3547 lambda!13924))))

(declare-fun bs!58413 () Bool)

(assert (= bs!58413 d!179305))

(declare-fun m!744931 () Bool)

(assert (=> bs!58413 m!744931))

(assert (=> start!45024 d!179305))

(declare-fun d!179307 () Bool)

(declare-fun res!209021 () Bool)

(declare-fun e!288276 () Bool)

(assert (=> d!179307 (=> res!209021 e!288276)))

(assert (=> d!179307 (= res!209021 (is-Nil!4534 l!2882))))

(assert (=> d!179307 (= (subseq!102 l!2882 (toList!315 (flatMap!81 s!1494 f!1027))) e!288276)))

(declare-fun e!288273 () Bool)

(declare-fun b!471401 () Bool)

(assert (=> b!471401 (= e!288273 (subseq!102 l!2882 (t!72955 (toList!315 (flatMap!81 s!1494 f!1027)))))))

(declare-fun b!471399 () Bool)

(declare-fun e!288274 () Bool)

(assert (=> b!471399 (= e!288274 e!288273)))

(declare-fun res!209022 () Bool)

(assert (=> b!471399 (=> res!209022 e!288273)))

(declare-fun e!288275 () Bool)

(assert (=> b!471399 (= res!209022 e!288275)))

(declare-fun res!209020 () Bool)

(assert (=> b!471399 (=> (not res!209020) (not e!288275))))

(assert (=> b!471399 (= res!209020 (= (h!9931 l!2882) (h!9931 (toList!315 (flatMap!81 s!1494 f!1027)))))))

(declare-fun b!471400 () Bool)

(assert (=> b!471400 (= e!288275 (subseq!102 (t!72955 l!2882) (t!72955 (toList!315 (flatMap!81 s!1494 f!1027)))))))

(declare-fun b!471398 () Bool)

(assert (=> b!471398 (= e!288276 e!288274)))

(declare-fun res!209023 () Bool)

(assert (=> b!471398 (=> (not res!209023) (not e!288274))))

(assert (=> b!471398 (= res!209023 (is-Cons!4534 (toList!315 (flatMap!81 s!1494 f!1027))))))

(assert (= (and d!179307 (not res!209021)) b!471398))

(assert (= (and b!471398 res!209023) b!471399))

(assert (= (and b!471399 res!209020) b!471400))

(assert (= (and b!471399 (not res!209022)) b!471401))

(declare-fun m!744933 () Bool)

(assert (=> b!471401 m!744933))

(declare-fun m!744935 () Bool)

(assert (=> b!471400 m!744935))

(assert (=> b!471364 d!179307))

(declare-fun d!179309 () Bool)

(declare-fun e!288279 () Bool)

(assert (=> d!179309 e!288279))

(declare-fun res!209026 () Bool)

(assert (=> d!179309 (=> (not res!209026) (not e!288279))))

(declare-fun lt!210004 () List!4544)

(declare-fun noDuplicate!93 (List!4544) Bool)

(assert (=> d!179309 (= res!209026 (noDuplicate!93 lt!210004))))

(declare-fun choose!3548 ((Set B!915)) List!4544)

(assert (=> d!179309 (= lt!210004 (choose!3548 (flatMap!81 s!1494 f!1027)))))

(assert (=> d!179309 (= (toList!315 (flatMap!81 s!1494 f!1027)) lt!210004)))

(declare-fun b!471404 () Bool)

(declare-fun content!770 (List!4544) (Set B!915))

(assert (=> b!471404 (= e!288279 (= (content!770 lt!210004) (flatMap!81 s!1494 f!1027)))))

(assert (= (and d!179309 res!209026) b!471404))

(declare-fun m!744937 () Bool)

(assert (=> d!179309 m!744937))

(assert (=> d!179309 m!744911))

(declare-fun m!744939 () Bool)

(assert (=> d!179309 m!744939))

(declare-fun m!744941 () Bool)

(assert (=> b!471404 m!744941))

(assert (=> b!471364 d!179309))

(declare-fun d!179311 () Bool)

(declare-fun choose!3549 ((Set A!353) Int) (Set B!915))

(assert (=> d!179311 (= (flatMap!81 s!1494 f!1027) (choose!3549 s!1494 f!1027))))

(declare-fun bs!58414 () Bool)

(assert (= bs!58414 d!179311))

(declare-fun m!744943 () Bool)

(assert (=> bs!58414 m!744943))

(assert (=> b!471364 d!179311))

(declare-fun b!471409 () Bool)

(declare-fun e!288282 () Bool)

(declare-fun tp!130570 () Bool)

(assert (=> b!471409 (= e!288282 (and tp_is_empty!2085 tp!130570))))

(assert (=> b!471365 (= tp!130553 e!288282)))

(assert (= (and b!471365 (is-Cons!4534 (t!72955 l!2882))) b!471409))

(declare-fun condSetEmpty!1903 () Bool)

(assert (=> setNonEmpty!1897 (= condSetEmpty!1903 (= setRest!1897 (as set.empty (Set A!353))))))

(declare-fun setRes!1903 () Bool)

(assert (=> setNonEmpty!1897 (= tp!130555 setRes!1903)))

(declare-fun setIsEmpty!1903 () Bool)

(assert (=> setIsEmpty!1903 setRes!1903))

(declare-fun setNonEmpty!1903 () Bool)

(declare-fun tp!130573 () Bool)

(assert (=> setNonEmpty!1903 (= setRes!1903 (and tp!130573 tp_is_empty!2087))))

(declare-fun setElem!1903 () A!353)

(declare-fun setRest!1903 () (Set A!353))

(assert (=> setNonEmpty!1903 (= setRest!1897 (set.union (set.insert setElem!1903 (as set.empty (Set A!353))) setRest!1903))))

(assert (= (and setNonEmpty!1897 condSetEmpty!1903) setIsEmpty!1903))

(assert (= (and setNonEmpty!1897 (not condSetEmpty!1903)) setNonEmpty!1903))

(push 1)

(assert (not b!471400))

(assert (not b!471389))

(assert (not d!179311))

(assert b_and!50401)

(assert (not b!471401))

(assert tp_is_empty!2085)

(assert (not b!471404))

(assert (not b_next!13117))

(assert (not d!179305))

(assert (not b!471409))

(assert tp_is_empty!2087)

(assert (not b_next!13119))

(assert (not d!179309))

(assert (not setNonEmpty!1903))

(assert b_and!50399)

(check-sat)

(pop 1)

(push 1)

(assert b_and!50399)

(assert b_and!50401)

(assert (not b_next!13119))

(assert (not b_next!13117))

(check-sat)

(pop 1)


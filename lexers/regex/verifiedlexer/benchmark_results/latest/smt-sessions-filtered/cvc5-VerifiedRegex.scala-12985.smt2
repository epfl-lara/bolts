; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713848 () Bool)

(assert start!713848)

(declare-fun b_free!134115 () Bool)

(declare-fun b_next!134905 () Bool)

(assert (=> start!713848 (= b_free!134115 (not b_next!134905))))

(declare-fun tp!2078665 () Bool)

(declare-fun b_and!351523 () Bool)

(assert (=> start!713848 (= tp!2078665 b_and!351523)))

(declare-fun setIsEmpty!55185 () Bool)

(declare-fun setRes!55185 () Bool)

(assert (=> setIsEmpty!55185 setRes!55185))

(declare-fun b!7319418 () Bool)

(declare-fun e!4382218 () Bool)

(declare-fun tp_is_empty!47815 () Bool)

(declare-fun tp!2078664 () Bool)

(assert (=> b!7319418 (= e!4382218 (and tp_is_empty!47815 tp!2078664))))

(declare-fun b!7319419 () Bool)

(declare-fun e!4382217 () Bool)

(declare-fun tp!2078663 () Bool)

(assert (=> b!7319419 (= e!4382217 (and tp_is_empty!47815 tp!2078663))))

(declare-fun setNonEmpty!55185 () Bool)

(declare-fun tp!2078662 () Bool)

(declare-fun tp_is_empty!47813 () Bool)

(assert (=> setNonEmpty!55185 (= setRes!55185 (and tp!2078662 tp_is_empty!47813))))

(declare-datatypes ((A!961 0))(
  ( (A!962 (val!29281 Int)) )
))
(declare-fun s1!446 () (Set A!961))

(declare-fun setElem!55185 () A!961)

(declare-fun setRest!55186 () (Set A!961))

(assert (=> setNonEmpty!55185 (= s1!446 (set.union (set.insert setElem!55185 (as set.empty (Set A!961))) setRest!55186))))

(declare-fun b!7319420 () Bool)

(declare-fun res!2957932 () Bool)

(declare-fun e!4382216 () Bool)

(assert (=> b!7319420 (=> (not res!2957932) (not e!4382216))))

(declare-datatypes ((B!3663 0))(
  ( (B!3664 (val!29282 Int)) )
))
(declare-datatypes ((List!71395 0))(
  ( (Nil!71271) (Cons!71271 (h!77719 B!3663) (t!385630 List!71395)) )
))
(declare-fun l1!805 () List!71395)

(assert (=> b!7319420 (= res!2957932 (is-Cons!71271 l1!805))))

(declare-fun setNonEmpty!55186 () Bool)

(declare-fun setRes!55186 () Bool)

(declare-fun tp!2078661 () Bool)

(assert (=> setNonEmpty!55186 (= setRes!55186 (and tp!2078661 tp_is_empty!47813))))

(declare-fun s2!417 () (Set A!961))

(declare-fun setElem!55186 () A!961)

(declare-fun setRest!55185 () (Set A!961))

(assert (=> setNonEmpty!55186 (= s2!417 (set.union (set.insert setElem!55186 (as set.empty (Set A!961))) setRest!55185))))

(declare-fun b!7319421 () Bool)

(declare-fun e!4382215 () Bool)

(declare-fun size!41891 (List!71395) Int)

(assert (=> b!7319421 (= e!4382215 (< (size!41891 (t!385630 l1!805)) (size!41891 l1!805)))))

(declare-fun b!7319422 () Bool)

(assert (=> b!7319422 (= e!4382216 (not e!4382215))))

(declare-fun res!2957934 () Bool)

(assert (=> b!7319422 (=> res!2957934 e!4382215)))

(declare-fun lt!2603498 () List!71395)

(declare-fun subseq!892 (List!71395 List!71395) Bool)

(assert (=> b!7319422 (= res!2957934 (not (subseq!892 (t!385630 l1!805) lt!2603498)))))

(declare-datatypes ((Unit!164791 0))(
  ( (Unit!164792) )
))
(declare-fun lt!2603497 () Unit!164791)

(declare-fun subseqTail!105 (List!71395 List!71395) Unit!164791)

(assert (=> b!7319422 (= lt!2603497 (subseqTail!105 l1!805 lt!2603498))))

(declare-fun lt!2603496 () (Set B!3663))

(declare-fun lt!2603500 () (Set B!3663))

(assert (=> b!7319422 (= (set.member (h!77719 l1!805) lt!2603496) (set.member (h!77719 l1!805) lt!2603500))))

(declare-fun lt!2603499 () Unit!164791)

(declare-fun f!760 () Int)

(declare-fun lemmaFlatMapAssociativeElem!23 ((Set A!961) (Set A!961) Int B!3663) Unit!164791)

(assert (=> b!7319422 (= lt!2603499 (lemmaFlatMapAssociativeElem!23 s1!446 s2!417 f!760 (h!77719 l1!805)))))

(declare-fun b!7319423 () Bool)

(declare-fun e!4382219 () Bool)

(assert (=> b!7319423 (= e!4382219 e!4382216)))

(declare-fun res!2957933 () Bool)

(assert (=> b!7319423 (=> (not res!2957933) (not e!4382216))))

(declare-fun l2!794 () List!71395)

(declare-fun toList!11682 ((Set B!3663)) List!71395)

(assert (=> b!7319423 (= res!2957933 (= l2!794 (toList!11682 lt!2603500)))))

(declare-fun flatMap!3100 ((Set A!961) Int) (Set B!3663))

(assert (=> b!7319423 (= lt!2603500 (flatMap!3100 (set.union s1!446 s2!417) f!760))))

(declare-fun setIsEmpty!55186 () Bool)

(assert (=> setIsEmpty!55186 setRes!55186))

(declare-fun res!2957935 () Bool)

(assert (=> start!713848 (=> (not res!2957935) (not e!4382219))))

(assert (=> start!713848 (= res!2957935 (subseq!892 l1!805 lt!2603498))))

(assert (=> start!713848 (= lt!2603498 (toList!11682 lt!2603496))))

(assert (=> start!713848 (= lt!2603496 (set.union (flatMap!3100 s1!446 f!760) (flatMap!3100 s2!417 f!760)))))

(assert (=> start!713848 e!4382219))

(declare-fun condSetEmpty!55185 () Bool)

(assert (=> start!713848 (= condSetEmpty!55185 (= s2!417 (as set.empty (Set A!961))))))

(assert (=> start!713848 setRes!55186))

(declare-fun condSetEmpty!55186 () Bool)

(assert (=> start!713848 (= condSetEmpty!55186 (= s1!446 (as set.empty (Set A!961))))))

(assert (=> start!713848 setRes!55185))

(assert (=> start!713848 tp!2078665))

(assert (=> start!713848 e!4382217))

(assert (=> start!713848 e!4382218))

(assert (= (and start!713848 res!2957935) b!7319423))

(assert (= (and b!7319423 res!2957933) b!7319420))

(assert (= (and b!7319420 res!2957932) b!7319422))

(assert (= (and b!7319422 (not res!2957934)) b!7319421))

(assert (= (and start!713848 condSetEmpty!55185) setIsEmpty!55186))

(assert (= (and start!713848 (not condSetEmpty!55185)) setNonEmpty!55186))

(assert (= (and start!713848 condSetEmpty!55186) setIsEmpty!55185))

(assert (= (and start!713848 (not condSetEmpty!55186)) setNonEmpty!55185))

(assert (= (and start!713848 (is-Cons!71271 l2!794)) b!7319419))

(assert (= (and start!713848 (is-Cons!71271 l1!805)) b!7319418))

(declare-fun m!7984226 () Bool)

(assert (=> b!7319421 m!7984226))

(declare-fun m!7984228 () Bool)

(assert (=> b!7319421 m!7984228))

(declare-fun m!7984230 () Bool)

(assert (=> b!7319422 m!7984230))

(declare-fun m!7984232 () Bool)

(assert (=> b!7319422 m!7984232))

(declare-fun m!7984234 () Bool)

(assert (=> b!7319422 m!7984234))

(declare-fun m!7984236 () Bool)

(assert (=> b!7319422 m!7984236))

(declare-fun m!7984238 () Bool)

(assert (=> b!7319422 m!7984238))

(declare-fun m!7984240 () Bool)

(assert (=> b!7319423 m!7984240))

(declare-fun m!7984242 () Bool)

(assert (=> b!7319423 m!7984242))

(declare-fun m!7984244 () Bool)

(assert (=> start!713848 m!7984244))

(declare-fun m!7984246 () Bool)

(assert (=> start!713848 m!7984246))

(declare-fun m!7984248 () Bool)

(assert (=> start!713848 m!7984248))

(declare-fun m!7984250 () Bool)

(assert (=> start!713848 m!7984250))

(push 1)

(assert (not b!7319421))

(assert (not b_next!134905))

(assert tp_is_empty!47815)

(assert (not b!7319418))

(assert b_and!351523)

(assert tp_is_empty!47813)

(assert (not b!7319423))

(assert (not b!7319419))

(assert (not b!7319422))

(assert (not start!713848))

(assert (not setNonEmpty!55186))

(assert (not setNonEmpty!55185))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351523)

(assert (not b_next!134905))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7319453 () Bool)

(declare-fun e!4382244 () Bool)

(assert (=> b!7319453 (= e!4382244 (subseq!892 l1!805 (t!385630 lt!2603498)))))

(declare-fun b!7319450 () Bool)

(declare-fun e!4382245 () Bool)

(declare-fun e!4382243 () Bool)

(assert (=> b!7319450 (= e!4382245 e!4382243)))

(declare-fun res!2957959 () Bool)

(assert (=> b!7319450 (=> (not res!2957959) (not e!4382243))))

(assert (=> b!7319450 (= res!2957959 (is-Cons!71271 lt!2603498))))

(declare-fun b!7319451 () Bool)

(assert (=> b!7319451 (= e!4382243 e!4382244)))

(declare-fun res!2957956 () Bool)

(assert (=> b!7319451 (=> res!2957956 e!4382244)))

(declare-fun e!4382246 () Bool)

(assert (=> b!7319451 (= res!2957956 e!4382246)))

(declare-fun res!2957958 () Bool)

(assert (=> b!7319451 (=> (not res!2957958) (not e!4382246))))

(assert (=> b!7319451 (= res!2957958 (= (h!77719 l1!805) (h!77719 lt!2603498)))))

(declare-fun d!2272946 () Bool)

(declare-fun res!2957957 () Bool)

(assert (=> d!2272946 (=> res!2957957 e!4382245)))

(assert (=> d!2272946 (= res!2957957 (is-Nil!71271 l1!805))))

(assert (=> d!2272946 (= (subseq!892 l1!805 lt!2603498) e!4382245)))

(declare-fun b!7319452 () Bool)

(assert (=> b!7319452 (= e!4382246 (subseq!892 (t!385630 l1!805) (t!385630 lt!2603498)))))

(assert (= (and d!2272946 (not res!2957957)) b!7319450))

(assert (= (and b!7319450 res!2957959) b!7319451))

(assert (= (and b!7319451 res!2957958) b!7319452))

(assert (= (and b!7319451 (not res!2957956)) b!7319453))

(declare-fun m!7984278 () Bool)

(assert (=> b!7319453 m!7984278))

(declare-fun m!7984280 () Bool)

(assert (=> b!7319452 m!7984280))

(assert (=> start!713848 d!2272946))

(declare-fun d!2272948 () Bool)

(declare-fun e!4382249 () Bool)

(assert (=> d!2272948 e!4382249))

(declare-fun res!2957962 () Bool)

(assert (=> d!2272948 (=> (not res!2957962) (not e!4382249))))

(declare-fun lt!2603518 () List!71395)

(declare-fun noDuplicate!3080 (List!71395) Bool)

(assert (=> d!2272948 (= res!2957962 (noDuplicate!3080 lt!2603518))))

(declare-fun choose!56833 ((Set B!3663)) List!71395)

(assert (=> d!2272948 (= lt!2603518 (choose!56833 lt!2603496))))

(assert (=> d!2272948 (= (toList!11682 lt!2603496) lt!2603518)))

(declare-fun b!7319456 () Bool)

(declare-fun content!14899 (List!71395) (Set B!3663))

(assert (=> b!7319456 (= e!4382249 (= (content!14899 lt!2603518) lt!2603496))))

(assert (= (and d!2272948 res!2957962) b!7319456))

(declare-fun m!7984282 () Bool)

(assert (=> d!2272948 m!7984282))

(declare-fun m!7984284 () Bool)

(assert (=> d!2272948 m!7984284))

(declare-fun m!7984286 () Bool)

(assert (=> b!7319456 m!7984286))

(assert (=> start!713848 d!2272948))

(declare-fun d!2272950 () Bool)

(declare-fun choose!56834 ((Set A!961) Int) (Set B!3663))

(assert (=> d!2272950 (= (flatMap!3100 s1!446 f!760) (choose!56834 s1!446 f!760))))

(declare-fun bs!1915711 () Bool)

(assert (= bs!1915711 d!2272950))

(declare-fun m!7984288 () Bool)

(assert (=> bs!1915711 m!7984288))

(assert (=> start!713848 d!2272950))

(declare-fun d!2272952 () Bool)

(assert (=> d!2272952 (= (flatMap!3100 s2!417 f!760) (choose!56834 s2!417 f!760))))

(declare-fun bs!1915712 () Bool)

(assert (= bs!1915712 d!2272952))

(declare-fun m!7984290 () Bool)

(assert (=> bs!1915712 m!7984290))

(assert (=> start!713848 d!2272952))

(declare-fun b!7319460 () Bool)

(declare-fun e!4382251 () Bool)

(assert (=> b!7319460 (= e!4382251 (subseq!892 (t!385630 l1!805) (t!385630 lt!2603498)))))

(declare-fun b!7319457 () Bool)

(declare-fun e!4382252 () Bool)

(declare-fun e!4382250 () Bool)

(assert (=> b!7319457 (= e!4382252 e!4382250)))

(declare-fun res!2957966 () Bool)

(assert (=> b!7319457 (=> (not res!2957966) (not e!4382250))))

(assert (=> b!7319457 (= res!2957966 (is-Cons!71271 lt!2603498))))

(declare-fun b!7319458 () Bool)

(assert (=> b!7319458 (= e!4382250 e!4382251)))

(declare-fun res!2957963 () Bool)

(assert (=> b!7319458 (=> res!2957963 e!4382251)))

(declare-fun e!4382253 () Bool)

(assert (=> b!7319458 (= res!2957963 e!4382253)))

(declare-fun res!2957965 () Bool)

(assert (=> b!7319458 (=> (not res!2957965) (not e!4382253))))

(assert (=> b!7319458 (= res!2957965 (= (h!77719 (t!385630 l1!805)) (h!77719 lt!2603498)))))

(declare-fun d!2272954 () Bool)

(declare-fun res!2957964 () Bool)

(assert (=> d!2272954 (=> res!2957964 e!4382252)))

(assert (=> d!2272954 (= res!2957964 (is-Nil!71271 (t!385630 l1!805)))))

(assert (=> d!2272954 (= (subseq!892 (t!385630 l1!805) lt!2603498) e!4382252)))

(declare-fun b!7319459 () Bool)

(assert (=> b!7319459 (= e!4382253 (subseq!892 (t!385630 (t!385630 l1!805)) (t!385630 lt!2603498)))))

(assert (= (and d!2272954 (not res!2957964)) b!7319457))

(assert (= (and b!7319457 res!2957966) b!7319458))

(assert (= (and b!7319458 res!2957965) b!7319459))

(assert (= (and b!7319458 (not res!2957963)) b!7319460))

(assert (=> b!7319460 m!7984280))

(declare-fun m!7984292 () Bool)

(assert (=> b!7319459 m!7984292))

(assert (=> b!7319422 d!2272954))

(declare-fun d!2272956 () Bool)

(declare-fun tail!14654 (List!71395) List!71395)

(assert (=> d!2272956 (subseq!892 (tail!14654 l1!805) lt!2603498)))

(declare-fun lt!2603524 () Unit!164791)

(declare-fun e!4382268 () Unit!164791)

(assert (=> d!2272956 (= lt!2603524 e!4382268)))

(declare-fun c!1358690 () Bool)

(assert (=> d!2272956 (= c!1358690 (and (is-Cons!71271 l1!805) (is-Cons!71271 lt!2603498)))))

(declare-fun e!4382265 () Bool)

(assert (=> d!2272956 e!4382265))

(declare-fun res!2957972 () Bool)

(assert (=> d!2272956 (=> (not res!2957972) (not e!4382265))))

(declare-fun isEmpty!40879 (List!71395) Bool)

(assert (=> d!2272956 (= res!2957972 (not (isEmpty!40879 l1!805)))))

(assert (=> d!2272956 (= (subseqTail!105 l1!805 lt!2603498) lt!2603524)))

(declare-fun b!7319478 () Bool)

(declare-fun e!4382267 () Unit!164791)

(declare-fun call!665856 () Unit!164791)

(assert (=> b!7319478 (= e!4382267 call!665856)))

(declare-fun c!1358689 () Bool)

(declare-fun bm!665851 () Bool)

(assert (=> bm!665851 (= call!665856 (subseqTail!105 (ite c!1358689 l1!805 (t!385630 l1!805)) (t!385630 lt!2603498)))))

(declare-fun b!7319479 () Bool)

(declare-fun Unit!164795 () Unit!164791)

(assert (=> b!7319479 (= e!4382268 Unit!164795)))

(declare-fun b!7319480 () Bool)

(declare-fun c!1358691 () Bool)

(assert (=> b!7319480 (= c!1358691 (not (isEmpty!40879 (t!385630 l1!805))))))

(declare-fun e!4382266 () Unit!164791)

(assert (=> b!7319480 (= e!4382266 e!4382267)))

(declare-fun b!7319481 () Bool)

(assert (=> b!7319481 (= e!4382265 (subseq!892 l1!805 lt!2603498))))

(declare-fun b!7319482 () Bool)

(assert (=> b!7319482 (= e!4382266 call!665856)))

(declare-fun b!7319483 () Bool)

(declare-fun Unit!164796 () Unit!164791)

(assert (=> b!7319483 (= e!4382267 Unit!164796)))

(declare-fun b!7319484 () Bool)

(assert (=> b!7319484 (= e!4382268 e!4382266)))

(assert (=> b!7319484 (= c!1358689 (subseq!892 l1!805 (t!385630 lt!2603498)))))

(assert (= (and d!2272956 res!2957972) b!7319481))

(assert (= (and d!2272956 c!1358690) b!7319484))

(assert (= (and d!2272956 (not c!1358690)) b!7319479))

(assert (= (and b!7319484 c!1358689) b!7319482))

(assert (= (and b!7319484 (not c!1358689)) b!7319480))

(assert (= (and b!7319480 c!1358691) b!7319478))

(assert (= (and b!7319480 (not c!1358691)) b!7319483))

(assert (= (or b!7319482 b!7319478) bm!665851))

(declare-fun m!7984300 () Bool)

(assert (=> b!7319480 m!7984300))

(declare-fun m!7984302 () Bool)

(assert (=> bm!665851 m!7984302))

(declare-fun m!7984304 () Bool)

(assert (=> d!2272956 m!7984304))

(assert (=> d!2272956 m!7984304))

(declare-fun m!7984306 () Bool)

(assert (=> d!2272956 m!7984306))

(declare-fun m!7984308 () Bool)

(assert (=> d!2272956 m!7984308))

(assert (=> b!7319484 m!7984278))

(assert (=> b!7319481 m!7984244))

(assert (=> b!7319422 d!2272956))

(declare-fun d!2272962 () Bool)

(assert (=> d!2272962 (= (set.member (h!77719 l1!805) (set.union (flatMap!3100 s1!446 f!760) (flatMap!3100 s2!417 f!760))) (set.member (h!77719 l1!805) (flatMap!3100 (set.union s1!446 s2!417) f!760)))))

(declare-fun lt!2603527 () Unit!164791)

(declare-fun choose!56835 ((Set A!961) (Set A!961) Int B!3663) Unit!164791)

(assert (=> d!2272962 (= lt!2603527 (choose!56835 s1!446 s2!417 f!760 (h!77719 l1!805)))))

(assert (=> d!2272962 (= (lemmaFlatMapAssociativeElem!23 s1!446 s2!417 f!760 (h!77719 l1!805)) lt!2603527)))

(declare-fun bs!1915714 () Bool)

(assert (= bs!1915714 d!2272962))

(declare-fun m!7984312 () Bool)

(assert (=> bs!1915714 m!7984312))

(assert (=> bs!1915714 m!7984248))

(assert (=> bs!1915714 m!7984250))

(assert (=> bs!1915714 m!7984242))

(declare-fun m!7984314 () Bool)

(assert (=> bs!1915714 m!7984314))

(declare-fun m!7984316 () Bool)

(assert (=> bs!1915714 m!7984316))

(assert (=> b!7319422 d!2272962))

(declare-fun d!2272966 () Bool)

(declare-fun e!4382269 () Bool)

(assert (=> d!2272966 e!4382269))

(declare-fun res!2957973 () Bool)

(assert (=> d!2272966 (=> (not res!2957973) (not e!4382269))))

(declare-fun lt!2603528 () List!71395)

(assert (=> d!2272966 (= res!2957973 (noDuplicate!3080 lt!2603528))))

(assert (=> d!2272966 (= lt!2603528 (choose!56833 lt!2603500))))

(assert (=> d!2272966 (= (toList!11682 lt!2603500) lt!2603528)))

(declare-fun b!7319486 () Bool)

(assert (=> b!7319486 (= e!4382269 (= (content!14899 lt!2603528) lt!2603500))))

(assert (= (and d!2272966 res!2957973) b!7319486))

(declare-fun m!7984318 () Bool)

(assert (=> d!2272966 m!7984318))

(declare-fun m!7984320 () Bool)

(assert (=> d!2272966 m!7984320))

(declare-fun m!7984322 () Bool)

(assert (=> b!7319486 m!7984322))

(assert (=> b!7319423 d!2272966))

(declare-fun d!2272968 () Bool)

(assert (=> d!2272968 (= (flatMap!3100 (set.union s1!446 s2!417) f!760) (choose!56834 (set.union s1!446 s2!417) f!760))))

(declare-fun bs!1915715 () Bool)

(assert (= bs!1915715 d!2272968))

(declare-fun m!7984324 () Bool)

(assert (=> bs!1915715 m!7984324))

(assert (=> b!7319423 d!2272968))

(declare-fun d!2272970 () Bool)

(declare-fun lt!2603531 () Int)

(assert (=> d!2272970 (>= lt!2603531 0)))

(declare-fun e!4382280 () Int)

(assert (=> d!2272970 (= lt!2603531 e!4382280)))

(declare-fun c!1358694 () Bool)

(assert (=> d!2272970 (= c!1358694 (is-Nil!71271 (t!385630 l1!805)))))

(assert (=> d!2272970 (= (size!41891 (t!385630 l1!805)) lt!2603531)))

(declare-fun b!7319495 () Bool)

(assert (=> b!7319495 (= e!4382280 0)))

(declare-fun b!7319496 () Bool)

(assert (=> b!7319496 (= e!4382280 (+ 1 (size!41891 (t!385630 (t!385630 l1!805)))))))

(assert (= (and d!2272970 c!1358694) b!7319495))

(assert (= (and d!2272970 (not c!1358694)) b!7319496))

(declare-fun m!7984326 () Bool)

(assert (=> b!7319496 m!7984326))

(assert (=> b!7319421 d!2272970))

(declare-fun d!2272972 () Bool)

(declare-fun lt!2603532 () Int)

(assert (=> d!2272972 (>= lt!2603532 0)))

(declare-fun e!4382281 () Int)

(assert (=> d!2272972 (= lt!2603532 e!4382281)))

(declare-fun c!1358695 () Bool)

(assert (=> d!2272972 (= c!1358695 (is-Nil!71271 l1!805))))

(assert (=> d!2272972 (= (size!41891 l1!805) lt!2603532)))

(declare-fun b!7319501 () Bool)

(assert (=> b!7319501 (= e!4382281 0)))

(declare-fun b!7319502 () Bool)

(assert (=> b!7319502 (= e!4382281 (+ 1 (size!41891 (t!385630 l1!805))))))

(assert (= (and d!2272972 c!1358695) b!7319501))

(assert (= (and d!2272972 (not c!1358695)) b!7319502))

(assert (=> b!7319502 m!7984226))

(assert (=> b!7319421 d!2272972))

(declare-fun condSetEmpty!55195 () Bool)

(assert (=> setNonEmpty!55186 (= condSetEmpty!55195 (= setRest!55185 (as set.empty (Set A!961))))))

(declare-fun setRes!55195 () Bool)

(assert (=> setNonEmpty!55186 (= tp!2078661 setRes!55195)))

(declare-fun setIsEmpty!55195 () Bool)

(assert (=> setIsEmpty!55195 setRes!55195))

(declare-fun setNonEmpty!55195 () Bool)

(declare-fun tp!2078683 () Bool)

(assert (=> setNonEmpty!55195 (= setRes!55195 (and tp!2078683 tp_is_empty!47813))))

(declare-fun setElem!55195 () A!961)

(declare-fun setRest!55195 () (Set A!961))

(assert (=> setNonEmpty!55195 (= setRest!55185 (set.union (set.insert setElem!55195 (as set.empty (Set A!961))) setRest!55195))))

(assert (= (and setNonEmpty!55186 condSetEmpty!55195) setIsEmpty!55195))

(assert (= (and setNonEmpty!55186 (not condSetEmpty!55195)) setNonEmpty!55195))

(declare-fun b!7319509 () Bool)

(declare-fun e!4382284 () Bool)

(declare-fun tp!2078686 () Bool)

(assert (=> b!7319509 (= e!4382284 (and tp_is_empty!47815 tp!2078686))))

(assert (=> b!7319418 (= tp!2078664 e!4382284)))

(assert (= (and b!7319418 (is-Cons!71271 (t!385630 l1!805))) b!7319509))

(declare-fun condSetEmpty!55196 () Bool)

(assert (=> setNonEmpty!55185 (= condSetEmpty!55196 (= setRest!55186 (as set.empty (Set A!961))))))

(declare-fun setRes!55196 () Bool)

(assert (=> setNonEmpty!55185 (= tp!2078662 setRes!55196)))

(declare-fun setIsEmpty!55196 () Bool)

(assert (=> setIsEmpty!55196 setRes!55196))

(declare-fun setNonEmpty!55196 () Bool)

(declare-fun tp!2078687 () Bool)

(assert (=> setNonEmpty!55196 (= setRes!55196 (and tp!2078687 tp_is_empty!47813))))

(declare-fun setElem!55196 () A!961)

(declare-fun setRest!55196 () (Set A!961))

(assert (=> setNonEmpty!55196 (= setRest!55186 (set.union (set.insert setElem!55196 (as set.empty (Set A!961))) setRest!55196))))

(assert (= (and setNonEmpty!55185 condSetEmpty!55196) setIsEmpty!55196))

(assert (= (and setNonEmpty!55185 (not condSetEmpty!55196)) setNonEmpty!55196))

(declare-fun b!7319510 () Bool)

(declare-fun e!4382285 () Bool)

(declare-fun tp!2078688 () Bool)

(assert (=> b!7319510 (= e!4382285 (and tp_is_empty!47815 tp!2078688))))

(assert (=> b!7319419 (= tp!2078663 e!4382285)))

(assert (= (and b!7319419 (is-Cons!71271 (t!385630 l2!794))) b!7319510))

(push 1)

(assert (not d!2272956))

(assert (not b_next!134905))

(assert (not b!7319486))

(assert (not d!2272950))

(assert (not setNonEmpty!55196))

(assert (not b!7319460))

(assert tp_is_empty!47815)

(assert (not d!2272968))

(assert (not b!7319480))

(assert (not b!7319453))

(assert (not setNonEmpty!55195))

(assert (not b!7319459))

(assert (not b!7319484))

(assert (not d!2272952))

(assert (not b!7319502))

(assert (not b!7319452))

(assert (not bm!665851))

(assert (not b!7319509))

(assert (not b!7319496))

(assert (not b!7319510))

(assert (not d!2272962))

(assert b_and!351523)

(assert (not b!7319481))

(assert tp_is_empty!47813)

(assert (not d!2272966))

(assert (not b!7319456))

(assert (not d!2272948))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351523)

(assert (not b_next!134905))

(check-sat)

(pop 1)


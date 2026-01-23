; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713632 () Bool)

(assert start!713632)

(declare-fun b_free!134083 () Bool)

(declare-fun b_next!134873 () Bool)

(assert (=> start!713632 (= b_free!134083 (not b_next!134873))))

(declare-fun tp!2078289 () Bool)

(declare-fun b_and!351491 () Bool)

(assert (=> start!713632 (= tp!2078289 b_and!351491)))

(declare-fun b!7318523 () Bool)

(assert (=> b!7318523 true))

(declare-fun b!7318520 () Bool)

(declare-fun res!2957404 () Bool)

(declare-fun e!4381518 () Bool)

(assert (=> b!7318520 (=> (not res!2957404) (not e!4381518))))

(declare-datatypes ((B!3631 0))(
  ( (B!3632 (val!29249 Int)) )
))
(declare-datatypes ((List!71379 0))(
  ( (Nil!71255) (Cons!71255 (h!77703 B!3631) (t!385611 List!71379)) )
))
(declare-fun l2!808 () List!71379)

(assert (=> b!7318520 (= res!2957404 (is-Cons!71255 l2!808))))

(declare-fun b!7318521 () Bool)

(declare-fun e!4381520 () Bool)

(declare-fun tp_is_empty!47749 () Bool)

(declare-fun tp!2078290 () Bool)

(assert (=> b!7318521 (= e!4381520 (and tp_is_empty!47749 tp!2078290))))

(declare-fun setIsEmpty!55020 () Bool)

(declare-fun setRes!55021 () Bool)

(assert (=> setIsEmpty!55020 setRes!55021))

(declare-fun setIsEmpty!55021 () Bool)

(declare-fun setRes!55020 () Bool)

(assert (=> setIsEmpty!55021 setRes!55020))

(declare-fun setNonEmpty!55020 () Bool)

(declare-fun tp!2078288 () Bool)

(declare-fun tp_is_empty!47751 () Bool)

(assert (=> setNonEmpty!55020 (= setRes!55020 (and tp!2078288 tp_is_empty!47751))))

(declare-datatypes ((A!929 0))(
  ( (A!930 (val!29250 Int)) )
))
(declare-fun s2!427 () (Set A!929))

(declare-fun setElem!55020 () A!929)

(declare-fun setRest!55020 () (Set A!929))

(assert (=> setNonEmpty!55020 (= s2!427 (set.union (set.insert setElem!55020 (as set.empty (Set A!929))) setRest!55020))))

(declare-fun res!2957402 () Bool)

(declare-fun e!4381519 () Bool)

(assert (=> start!713632 (=> (not res!2957402) (not e!4381519))))

(declare-fun l1!819 () List!71379)

(declare-fun lt!2603209 () (Set B!3631))

(declare-fun toList!11666 ((Set B!3631)) List!71379)

(assert (=> start!713632 (= res!2957402 (= l1!819 (toList!11666 lt!2603209)))))

(declare-fun s1!456 () (Set A!929))

(declare-fun f!803 () Int)

(declare-fun flatMap!3084 ((Set A!929) Int) (Set B!3631))

(assert (=> start!713632 (= lt!2603209 (set.union (flatMap!3084 s1!456 f!803) (flatMap!3084 s2!427 f!803)))))

(assert (=> start!713632 e!4381519))

(assert (=> start!713632 e!4381520))

(declare-fun condSetEmpty!55021 () Bool)

(assert (=> start!713632 (= condSetEmpty!55021 (= s1!456 (as set.empty (Set A!929))))))

(assert (=> start!713632 setRes!55021))

(assert (=> start!713632 tp!2078289))

(declare-fun e!4381517 () Bool)

(assert (=> start!713632 e!4381517))

(declare-fun condSetEmpty!55020 () Bool)

(assert (=> start!713632 (= condSetEmpty!55020 (= s2!427 (as set.empty (Set A!929))))))

(assert (=> start!713632 setRes!55020))

(declare-fun b!7318522 () Bool)

(declare-fun tp!2078286 () Bool)

(assert (=> b!7318522 (= e!4381517 (and tp_is_empty!47749 tp!2078286))))

(declare-fun setNonEmpty!55021 () Bool)

(declare-fun tp!2078287 () Bool)

(assert (=> setNonEmpty!55021 (= setRes!55021 (and tp!2078287 tp_is_empty!47751))))

(declare-fun setElem!55021 () A!929)

(declare-fun setRest!55021 () (Set A!929))

(assert (=> setNonEmpty!55021 (= s1!456 (set.union (set.insert setElem!55021 (as set.empty (Set A!929))) setRest!55021))))

(declare-fun lambda!452892 () Int)

(declare-fun forall!17803 (List!71379 Int) Bool)

(assert (=> b!7318523 (= e!4381518 (not (forall!17803 l2!808 lambda!452892)))))

(declare-datatypes ((Unit!164757 0))(
  ( (Unit!164758) )
))
(declare-fun lt!2603215 () Unit!164757)

(declare-fun lt!2603211 () List!71379)

(declare-fun subseqContains!51 (List!71379 List!71379 B!3631) Unit!164757)

(assert (=> b!7318523 (= lt!2603215 (subseqContains!51 l2!808 lt!2603211 (h!77703 l2!808)))))

(assert (=> b!7318523 (forall!17803 (t!385611 l2!808) lambda!452892)))

(declare-fun lt!2603213 () Unit!164757)

(declare-fun lemmaFlatMapAssociativeToList2!15 ((Set A!929) (Set A!929) Int List!71379 List!71379) Unit!164757)

(assert (=> b!7318523 (= lt!2603213 (lemmaFlatMapAssociativeToList2!15 s1!456 s2!427 f!803 l1!819 (t!385611 l2!808)))))

(declare-fun lt!2603212 () Unit!164757)

(declare-fun subseqTail!97 (List!71379 List!71379) Unit!164757)

(assert (=> b!7318523 (= lt!2603212 (subseqTail!97 l2!808 lt!2603211))))

(declare-fun lt!2603210 () (Set B!3631))

(assert (=> b!7318523 (= (set.member (h!77703 l2!808) lt!2603209) (set.member (h!77703 l2!808) lt!2603210))))

(declare-fun lt!2603214 () Unit!164757)

(declare-fun lemmaFlatMapAssociativeElem!13 ((Set A!929) (Set A!929) Int B!3631) Unit!164757)

(assert (=> b!7318523 (= lt!2603214 (lemmaFlatMapAssociativeElem!13 s1!456 s2!427 f!803 (h!77703 l2!808)))))

(declare-fun b!7318524 () Bool)

(assert (=> b!7318524 (= e!4381519 e!4381518)))

(declare-fun res!2957403 () Bool)

(assert (=> b!7318524 (=> (not res!2957403) (not e!4381518))))

(declare-fun subseq!876 (List!71379 List!71379) Bool)

(assert (=> b!7318524 (= res!2957403 (subseq!876 l2!808 lt!2603211))))

(assert (=> b!7318524 (= lt!2603211 (toList!11666 lt!2603210))))

(assert (=> b!7318524 (= lt!2603210 (flatMap!3084 (set.union s1!456 s2!427) f!803))))

(assert (= (and start!713632 res!2957402) b!7318524))

(assert (= (and b!7318524 res!2957403) b!7318520))

(assert (= (and b!7318520 res!2957404) b!7318523))

(assert (= (and start!713632 (is-Cons!71255 l2!808)) b!7318521))

(assert (= (and start!713632 condSetEmpty!55021) setIsEmpty!55020))

(assert (= (and start!713632 (not condSetEmpty!55021)) setNonEmpty!55021))

(assert (= (and start!713632 (is-Cons!71255 l1!819)) b!7318522))

(assert (= (and start!713632 condSetEmpty!55020) setIsEmpty!55021))

(assert (= (and start!713632 (not condSetEmpty!55020)) setNonEmpty!55020))

(declare-fun m!7983268 () Bool)

(assert (=> start!713632 m!7983268))

(declare-fun m!7983270 () Bool)

(assert (=> start!713632 m!7983270))

(declare-fun m!7983272 () Bool)

(assert (=> start!713632 m!7983272))

(declare-fun m!7983274 () Bool)

(assert (=> b!7318523 m!7983274))

(declare-fun m!7983276 () Bool)

(assert (=> b!7318523 m!7983276))

(declare-fun m!7983278 () Bool)

(assert (=> b!7318523 m!7983278))

(declare-fun m!7983280 () Bool)

(assert (=> b!7318523 m!7983280))

(declare-fun m!7983282 () Bool)

(assert (=> b!7318523 m!7983282))

(declare-fun m!7983284 () Bool)

(assert (=> b!7318523 m!7983284))

(declare-fun m!7983286 () Bool)

(assert (=> b!7318523 m!7983286))

(declare-fun m!7983288 () Bool)

(assert (=> b!7318523 m!7983288))

(declare-fun m!7983290 () Bool)

(assert (=> b!7318524 m!7983290))

(declare-fun m!7983292 () Bool)

(assert (=> b!7318524 m!7983292))

(declare-fun m!7983294 () Bool)

(assert (=> b!7318524 m!7983294))

(push 1)

(assert tp_is_empty!47749)

(assert (not setNonEmpty!55021))

(assert (not start!713632))

(assert (not b!7318522))

(assert (not b!7318523))

(assert b_and!351491)

(assert (not b_next!134873))

(assert (not b!7318521))

(assert tp_is_empty!47751)

(assert (not b!7318524))

(assert (not setNonEmpty!55020))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351491)

(assert (not b_next!134873))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7318558 () Bool)

(declare-fun e!4381541 () Unit!164757)

(declare-fun call!665835 () Unit!164757)

(assert (=> b!7318558 (= e!4381541 call!665835)))

(declare-fun d!2272586 () Bool)

(declare-fun tail!14649 (List!71379) List!71379)

(assert (=> d!2272586 (subseq!876 (tail!14649 l2!808) lt!2603211)))

(declare-fun lt!2603239 () Unit!164757)

(declare-fun e!4381542 () Unit!164757)

(assert (=> d!2272586 (= lt!2603239 e!4381542)))

(declare-fun c!1358609 () Bool)

(assert (=> d!2272586 (= c!1358609 (and (is-Cons!71255 l2!808) (is-Cons!71255 lt!2603211)))))

(declare-fun e!4381544 () Bool)

(assert (=> d!2272586 e!4381544))

(declare-fun res!2957416 () Bool)

(assert (=> d!2272586 (=> (not res!2957416) (not e!4381544))))

(declare-fun isEmpty!40872 (List!71379) Bool)

(assert (=> d!2272586 (= res!2957416 (not (isEmpty!40872 l2!808)))))

(assert (=> d!2272586 (= (subseqTail!97 l2!808 lt!2603211) lt!2603239)))

(declare-fun b!7318559 () Bool)

(declare-fun c!1358608 () Bool)

(assert (=> b!7318559 (= c!1358608 (not (isEmpty!40872 (t!385611 l2!808))))))

(declare-fun e!4381543 () Unit!164757)

(assert (=> b!7318559 (= e!4381543 e!4381541)))

(declare-fun b!7318560 () Bool)

(assert (=> b!7318560 (= e!4381543 call!665835)))

(declare-fun b!7318561 () Bool)

(declare-fun Unit!164761 () Unit!164757)

(assert (=> b!7318561 (= e!4381542 Unit!164761)))

(declare-fun b!7318562 () Bool)

(declare-fun Unit!164762 () Unit!164757)

(assert (=> b!7318562 (= e!4381541 Unit!164762)))

(declare-fun b!7318563 () Bool)

(assert (=> b!7318563 (= e!4381542 e!4381543)))

(declare-fun c!1358610 () Bool)

(assert (=> b!7318563 (= c!1358610 (subseq!876 l2!808 (t!385611 lt!2603211)))))

(declare-fun bm!665830 () Bool)

(assert (=> bm!665830 (= call!665835 (subseqTail!97 (ite c!1358610 l2!808 (t!385611 l2!808)) (t!385611 lt!2603211)))))

(declare-fun b!7318564 () Bool)

(assert (=> b!7318564 (= e!4381544 (subseq!876 l2!808 lt!2603211))))

(assert (= (and d!2272586 res!2957416) b!7318564))

(assert (= (and d!2272586 c!1358609) b!7318563))

(assert (= (and d!2272586 (not c!1358609)) b!7318561))

(assert (= (and b!7318563 c!1358610) b!7318560))

(assert (= (and b!7318563 (not c!1358610)) b!7318559))

(assert (= (and b!7318559 c!1358608) b!7318558))

(assert (= (and b!7318559 (not c!1358608)) b!7318562))

(assert (= (or b!7318560 b!7318558) bm!665830))

(declare-fun m!7983324 () Bool)

(assert (=> b!7318563 m!7983324))

(assert (=> b!7318564 m!7983290))

(declare-fun m!7983326 () Bool)

(assert (=> bm!665830 m!7983326))

(declare-fun m!7983328 () Bool)

(assert (=> d!2272586 m!7983328))

(assert (=> d!2272586 m!7983328))

(declare-fun m!7983330 () Bool)

(assert (=> d!2272586 m!7983330))

(declare-fun m!7983332 () Bool)

(assert (=> d!2272586 m!7983332))

(declare-fun m!7983334 () Bool)

(assert (=> b!7318559 m!7983334))

(assert (=> b!7318523 d!2272586))

(declare-fun d!2272588 () Bool)

(declare-fun contains!20804 (List!71379 B!3631) Bool)

(assert (=> d!2272588 (contains!20804 lt!2603211 (h!77703 l2!808))))

(declare-fun lt!2603242 () Unit!164757)

(declare-fun choose!56806 (List!71379 List!71379 B!3631) Unit!164757)

(assert (=> d!2272588 (= lt!2603242 (choose!56806 l2!808 lt!2603211 (h!77703 l2!808)))))

(declare-fun e!4381547 () Bool)

(assert (=> d!2272588 e!4381547))

(declare-fun res!2957419 () Bool)

(assert (=> d!2272588 (=> (not res!2957419) (not e!4381547))))

(assert (=> d!2272588 (= res!2957419 (subseq!876 l2!808 lt!2603211))))

(assert (=> d!2272588 (= (subseqContains!51 l2!808 lt!2603211 (h!77703 l2!808)) lt!2603242)))

(declare-fun b!7318567 () Bool)

(assert (=> b!7318567 (= e!4381547 (contains!20804 l2!808 (h!77703 l2!808)))))

(assert (= (and d!2272588 res!2957419) b!7318567))

(declare-fun m!7983336 () Bool)

(assert (=> d!2272588 m!7983336))

(declare-fun m!7983338 () Bool)

(assert (=> d!2272588 m!7983338))

(assert (=> d!2272588 m!7983290))

(declare-fun m!7983340 () Bool)

(assert (=> b!7318567 m!7983340))

(assert (=> b!7318523 d!2272588))

(declare-fun d!2272590 () Bool)

(declare-fun res!2957424 () Bool)

(declare-fun e!4381552 () Bool)

(assert (=> d!2272590 (=> res!2957424 e!4381552)))

(assert (=> d!2272590 (= res!2957424 (is-Nil!71255 (t!385611 l2!808)))))

(assert (=> d!2272590 (= (forall!17803 (t!385611 l2!808) lambda!452892) e!4381552)))

(declare-fun b!7318572 () Bool)

(declare-fun e!4381553 () Bool)

(assert (=> b!7318572 (= e!4381552 e!4381553)))

(declare-fun res!2957425 () Bool)

(assert (=> b!7318572 (=> (not res!2957425) (not e!4381553))))

(declare-fun dynLambda!29178 (Int B!3631) Bool)

(assert (=> b!7318572 (= res!2957425 (dynLambda!29178 lambda!452892 (h!77703 (t!385611 l2!808))))))

(declare-fun b!7318573 () Bool)

(assert (=> b!7318573 (= e!4381553 (forall!17803 (t!385611 (t!385611 l2!808)) lambda!452892))))

(assert (= (and d!2272590 (not res!2957424)) b!7318572))

(assert (= (and b!7318572 res!2957425) b!7318573))

(declare-fun b_lambda!282735 () Bool)

(assert (=> (not b_lambda!282735) (not b!7318572)))

(declare-fun m!7983342 () Bool)

(assert (=> b!7318572 m!7983342))

(declare-fun m!7983344 () Bool)

(assert (=> b!7318573 m!7983344))

(assert (=> b!7318523 d!2272590))

(declare-fun d!2272592 () Bool)

(assert (=> d!2272592 (= (set.member (h!77703 l2!808) (set.union (flatMap!3084 s1!456 f!803) (flatMap!3084 s2!427 f!803))) (set.member (h!77703 l2!808) (flatMap!3084 (set.union s1!456 s2!427) f!803)))))

(declare-fun lt!2603245 () Unit!164757)

(declare-fun choose!56807 ((Set A!929) (Set A!929) Int B!3631) Unit!164757)

(assert (=> d!2272592 (= lt!2603245 (choose!56807 s1!456 s2!427 f!803 (h!77703 l2!808)))))

(assert (=> d!2272592 (= (lemmaFlatMapAssociativeElem!13 s1!456 s2!427 f!803 (h!77703 l2!808)) lt!2603245)))

(declare-fun bs!1915630 () Bool)

(assert (= bs!1915630 d!2272592))

(assert (=> bs!1915630 m!7983270))

(declare-fun m!7983346 () Bool)

(assert (=> bs!1915630 m!7983346))

(declare-fun m!7983348 () Bool)

(assert (=> bs!1915630 m!7983348))

(assert (=> bs!1915630 m!7983294))

(declare-fun m!7983350 () Bool)

(assert (=> bs!1915630 m!7983350))

(assert (=> bs!1915630 m!7983272))

(assert (=> b!7318523 d!2272592))

(declare-fun d!2272594 () Bool)

(declare-fun res!2957426 () Bool)

(declare-fun e!4381554 () Bool)

(assert (=> d!2272594 (=> res!2957426 e!4381554)))

(assert (=> d!2272594 (= res!2957426 (is-Nil!71255 l2!808))))

(assert (=> d!2272594 (= (forall!17803 l2!808 lambda!452892) e!4381554)))

(declare-fun b!7318575 () Bool)

(declare-fun e!4381555 () Bool)

(assert (=> b!7318575 (= e!4381554 e!4381555)))

(declare-fun res!2957427 () Bool)

(assert (=> b!7318575 (=> (not res!2957427) (not e!4381555))))

(assert (=> b!7318575 (= res!2957427 (dynLambda!29178 lambda!452892 (h!77703 l2!808)))))

(declare-fun b!7318576 () Bool)

(assert (=> b!7318576 (= e!4381555 (forall!17803 (t!385611 l2!808) lambda!452892))))

(assert (= (and d!2272594 (not res!2957426)) b!7318575))

(assert (= (and b!7318575 res!2957427) b!7318576))

(declare-fun b_lambda!282737 () Bool)

(assert (=> (not b_lambda!282737) (not b!7318575)))

(declare-fun m!7983352 () Bool)

(assert (=> b!7318575 m!7983352))

(assert (=> b!7318576 m!7983278))

(assert (=> b!7318523 d!2272594))

(declare-fun bs!1915631 () Bool)

(declare-fun d!2272596 () Bool)

(assert (= bs!1915631 (and d!2272596 b!7318523)))

(declare-fun lambda!452900 () Int)

(assert (=> bs!1915631 (= lambda!452900 lambda!452892)))

(assert (=> d!2272596 true))

(assert (=> d!2272596 (forall!17803 (t!385611 l2!808) lambda!452900)))

(declare-fun lt!2603248 () Unit!164757)

(declare-fun choose!56808 ((Set A!929) (Set A!929) Int List!71379 List!71379) Unit!164757)

(assert (=> d!2272596 (= lt!2603248 (choose!56808 s1!456 s2!427 f!803 l1!819 (t!385611 l2!808)))))

(assert (=> d!2272596 (= l1!819 (toList!11666 (set.union (flatMap!3084 s1!456 f!803) (flatMap!3084 s2!427 f!803))))))

(assert (=> d!2272596 (= (lemmaFlatMapAssociativeToList2!15 s1!456 s2!427 f!803 l1!819 (t!385611 l2!808)) lt!2603248)))

(declare-fun bs!1915632 () Bool)

(assert (= bs!1915632 d!2272596))

(declare-fun m!7983354 () Bool)

(assert (=> bs!1915632 m!7983354))

(assert (=> bs!1915632 m!7983272))

(declare-fun m!7983356 () Bool)

(assert (=> bs!1915632 m!7983356))

(assert (=> bs!1915632 m!7983270))

(declare-fun m!7983358 () Bool)

(assert (=> bs!1915632 m!7983358))

(assert (=> b!7318523 d!2272596))

(declare-fun b!7318586 () Bool)

(declare-fun e!4381565 () Bool)

(declare-fun e!4381566 () Bool)

(assert (=> b!7318586 (= e!4381565 e!4381566)))

(declare-fun res!2957437 () Bool)

(assert (=> b!7318586 (=> res!2957437 e!4381566)))

(declare-fun e!4381564 () Bool)

(assert (=> b!7318586 (= res!2957437 e!4381564)))

(declare-fun res!2957438 () Bool)

(assert (=> b!7318586 (=> (not res!2957438) (not e!4381564))))

(assert (=> b!7318586 (= res!2957438 (= (h!77703 l2!808) (h!77703 lt!2603211)))))

(declare-fun b!7318587 () Bool)

(assert (=> b!7318587 (= e!4381564 (subseq!876 (t!385611 l2!808) (t!385611 lt!2603211)))))

(declare-fun b!7318588 () Bool)

(assert (=> b!7318588 (= e!4381566 (subseq!876 l2!808 (t!385611 lt!2603211)))))

(declare-fun d!2272598 () Bool)

(declare-fun res!2957436 () Bool)

(declare-fun e!4381567 () Bool)

(assert (=> d!2272598 (=> res!2957436 e!4381567)))

(assert (=> d!2272598 (= res!2957436 (is-Nil!71255 l2!808))))

(assert (=> d!2272598 (= (subseq!876 l2!808 lt!2603211) e!4381567)))

(declare-fun b!7318585 () Bool)

(assert (=> b!7318585 (= e!4381567 e!4381565)))

(declare-fun res!2957439 () Bool)

(assert (=> b!7318585 (=> (not res!2957439) (not e!4381565))))

(assert (=> b!7318585 (= res!2957439 (is-Cons!71255 lt!2603211))))

(assert (= (and d!2272598 (not res!2957436)) b!7318585))

(assert (= (and b!7318585 res!2957439) b!7318586))

(assert (= (and b!7318586 res!2957438) b!7318587))

(assert (= (and b!7318586 (not res!2957437)) b!7318588))

(declare-fun m!7983360 () Bool)

(assert (=> b!7318587 m!7983360))

(assert (=> b!7318588 m!7983324))

(assert (=> b!7318524 d!2272598))

(declare-fun d!2272602 () Bool)

(declare-fun e!4381578 () Bool)

(assert (=> d!2272602 e!4381578))

(declare-fun res!2957449 () Bool)

(assert (=> d!2272602 (=> (not res!2957449) (not e!4381578))))

(declare-fun lt!2603251 () List!71379)

(declare-fun noDuplicate!3072 (List!71379) Bool)

(assert (=> d!2272602 (= res!2957449 (noDuplicate!3072 lt!2603251))))

(declare-fun choose!56809 ((Set B!3631)) List!71379)

(assert (=> d!2272602 (= lt!2603251 (choose!56809 lt!2603210))))

(assert (=> d!2272602 (= (toList!11666 lt!2603210) lt!2603251)))

(declare-fun b!7318595 () Bool)

(declare-fun content!14891 (List!71379) (Set B!3631))

(assert (=> b!7318595 (= e!4381578 (= (content!14891 lt!2603251) lt!2603210))))

(assert (= (and d!2272602 res!2957449) b!7318595))

(declare-fun m!7983362 () Bool)

(assert (=> d!2272602 m!7983362))

(declare-fun m!7983364 () Bool)

(assert (=> d!2272602 m!7983364))

(declare-fun m!7983366 () Bool)

(assert (=> b!7318595 m!7983366))

(assert (=> b!7318524 d!2272602))

(declare-fun d!2272604 () Bool)

(declare-fun choose!56810 ((Set A!929) Int) (Set B!3631))

(assert (=> d!2272604 (= (flatMap!3084 (set.union s1!456 s2!427) f!803) (choose!56810 (set.union s1!456 s2!427) f!803))))

(declare-fun bs!1915633 () Bool)

(assert (= bs!1915633 d!2272604))

(declare-fun m!7983368 () Bool)

(assert (=> bs!1915633 m!7983368))

(assert (=> b!7318524 d!2272604))

(declare-fun d!2272606 () Bool)

(declare-fun e!4381579 () Bool)

(assert (=> d!2272606 e!4381579))

(declare-fun res!2957451 () Bool)

(assert (=> d!2272606 (=> (not res!2957451) (not e!4381579))))

(declare-fun lt!2603252 () List!71379)

(assert (=> d!2272606 (= res!2957451 (noDuplicate!3072 lt!2603252))))

(assert (=> d!2272606 (= lt!2603252 (choose!56809 lt!2603209))))

(assert (=> d!2272606 (= (toList!11666 lt!2603209) lt!2603252)))

(declare-fun b!7318600 () Bool)

(assert (=> b!7318600 (= e!4381579 (= (content!14891 lt!2603252) lt!2603209))))

(assert (= (and d!2272606 res!2957451) b!7318600))

(declare-fun m!7983370 () Bool)

(assert (=> d!2272606 m!7983370))

(declare-fun m!7983372 () Bool)

(assert (=> d!2272606 m!7983372))

(declare-fun m!7983374 () Bool)

(assert (=> b!7318600 m!7983374))

(assert (=> start!713632 d!2272606))

(declare-fun d!2272608 () Bool)

(assert (=> d!2272608 (= (flatMap!3084 s1!456 f!803) (choose!56810 s1!456 f!803))))

(declare-fun bs!1915634 () Bool)

(assert (= bs!1915634 d!2272608))

(declare-fun m!7983376 () Bool)

(assert (=> bs!1915634 m!7983376))

(assert (=> start!713632 d!2272608))

(declare-fun d!2272610 () Bool)

(assert (=> d!2272610 (= (flatMap!3084 s2!427 f!803) (choose!56810 s2!427 f!803))))

(declare-fun bs!1915635 () Bool)

(assert (= bs!1915635 d!2272610))

(declare-fun m!7983378 () Bool)

(assert (=> bs!1915635 m!7983378))

(assert (=> start!713632 d!2272610))

(declare-fun b!7318605 () Bool)

(declare-fun e!4381582 () Bool)

(declare-fun tp!2078308 () Bool)

(assert (=> b!7318605 (= e!4381582 (and tp_is_empty!47749 tp!2078308))))

(assert (=> b!7318521 (= tp!2078290 e!4381582)))

(assert (= (and b!7318521 (is-Cons!71255 (t!385611 l2!808))) b!7318605))

(declare-fun condSetEmpty!55030 () Bool)

(assert (=> setNonEmpty!55021 (= condSetEmpty!55030 (= setRest!55021 (as set.empty (Set A!929))))))

(declare-fun setRes!55030 () Bool)

(assert (=> setNonEmpty!55021 (= tp!2078287 setRes!55030)))

(declare-fun setIsEmpty!55030 () Bool)

(assert (=> setIsEmpty!55030 setRes!55030))

(declare-fun setNonEmpty!55030 () Bool)

(declare-fun tp!2078311 () Bool)

(assert (=> setNonEmpty!55030 (= setRes!55030 (and tp!2078311 tp_is_empty!47751))))

(declare-fun setElem!55030 () A!929)

(declare-fun setRest!55030 () (Set A!929))

(assert (=> setNonEmpty!55030 (= setRest!55021 (set.union (set.insert setElem!55030 (as set.empty (Set A!929))) setRest!55030))))

(assert (= (and setNonEmpty!55021 condSetEmpty!55030) setIsEmpty!55030))

(assert (= (and setNonEmpty!55021 (not condSetEmpty!55030)) setNonEmpty!55030))

(declare-fun b!7318608 () Bool)

(declare-fun e!4381583 () Bool)

(declare-fun tp!2078312 () Bool)

(assert (=> b!7318608 (= e!4381583 (and tp_is_empty!47749 tp!2078312))))

(assert (=> b!7318522 (= tp!2078286 e!4381583)))

(assert (= (and b!7318522 (is-Cons!71255 (t!385611 l1!819))) b!7318608))

(declare-fun condSetEmpty!55031 () Bool)

(assert (=> setNonEmpty!55020 (= condSetEmpty!55031 (= setRest!55020 (as set.empty (Set A!929))))))

(declare-fun setRes!55031 () Bool)

(assert (=> setNonEmpty!55020 (= tp!2078288 setRes!55031)))

(declare-fun setIsEmpty!55031 () Bool)

(assert (=> setIsEmpty!55031 setRes!55031))

(declare-fun setNonEmpty!55031 () Bool)

(declare-fun tp!2078313 () Bool)

(assert (=> setNonEmpty!55031 (= setRes!55031 (and tp!2078313 tp_is_empty!47751))))

(declare-fun setElem!55031 () A!929)

(declare-fun setRest!55031 () (Set A!929))

(assert (=> setNonEmpty!55031 (= setRest!55020 (set.union (set.insert setElem!55031 (as set.empty (Set A!929))) setRest!55031))))

(assert (= (and setNonEmpty!55020 condSetEmpty!55031) setIsEmpty!55031))

(assert (= (and setNonEmpty!55020 (not condSetEmpty!55031)) setNonEmpty!55031))

(declare-fun b_lambda!282739 () Bool)

(assert (= b_lambda!282737 (or b!7318523 b_lambda!282739)))

(declare-fun bs!1915636 () Bool)

(declare-fun d!2272612 () Bool)

(assert (= bs!1915636 (and d!2272612 b!7318523)))

(assert (=> bs!1915636 (= (dynLambda!29178 lambda!452892 (h!77703 l2!808)) (contains!20804 l1!819 (h!77703 l2!808)))))

(declare-fun m!7983380 () Bool)

(assert (=> bs!1915636 m!7983380))

(assert (=> b!7318575 d!2272612))

(declare-fun b_lambda!282741 () Bool)

(assert (= b_lambda!282735 (or b!7318523 b_lambda!282741)))

(declare-fun bs!1915637 () Bool)

(declare-fun d!2272614 () Bool)

(assert (= bs!1915637 (and d!2272614 b!7318523)))

(assert (=> bs!1915637 (= (dynLambda!29178 lambda!452892 (h!77703 (t!385611 l2!808))) (contains!20804 l1!819 (h!77703 (t!385611 l2!808))))))

(declare-fun m!7983382 () Bool)

(assert (=> bs!1915637 m!7983382))

(assert (=> b!7318572 d!2272614))

(push 1)

(assert tp_is_empty!47751)

(assert tp_is_empty!47749)

(assert (not b!7318576))

(assert (not b_lambda!282739))

(assert (not b!7318588))

(assert (not b_lambda!282741))

(assert (not b!7318559))

(assert (not b!7318595))

(assert (not b!7318567))

(assert (not b_next!134873))

(assert (not d!2272610))

(assert (not d!2272604))

(assert (not setNonEmpty!55031))

(assert (not d!2272592))

(assert (not b!7318600))

(assert (not b!7318608))

(assert (not b!7318605))

(assert (not d!2272606))

(assert (not d!2272596))

(assert (not b!7318564))

(assert (not setNonEmpty!55030))

(assert (not b!7318563))

(assert (not d!2272588))

(assert (not b!7318587))

(assert b_and!351491)

(assert (not bm!665830))

(assert (not bs!1915636))

(assert (not b!7318573))

(assert (not d!2272586))

(assert (not bs!1915637))

(assert (not d!2272608))

(assert (not d!2272602))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351491)

(assert (not b_next!134873))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7318659 () Bool)

(declare-fun e!4381620 () Bool)

(declare-fun e!4381621 () Bool)

(assert (=> b!7318659 (= e!4381620 e!4381621)))

(declare-fun res!2957475 () Bool)

(assert (=> b!7318659 (=> res!2957475 e!4381621)))

(declare-fun e!4381619 () Bool)

(assert (=> b!7318659 (= res!2957475 e!4381619)))

(declare-fun res!2957476 () Bool)

(assert (=> b!7318659 (=> (not res!2957476) (not e!4381619))))

(assert (=> b!7318659 (= res!2957476 (= (h!77703 (t!385611 l2!808)) (h!77703 (t!385611 lt!2603211))))))

(declare-fun b!7318660 () Bool)

(assert (=> b!7318660 (= e!4381619 (subseq!876 (t!385611 (t!385611 l2!808)) (t!385611 (t!385611 lt!2603211))))))

(declare-fun b!7318661 () Bool)

(assert (=> b!7318661 (= e!4381621 (subseq!876 (t!385611 l2!808) (t!385611 (t!385611 lt!2603211))))))

(declare-fun d!2272642 () Bool)

(declare-fun res!2957474 () Bool)

(declare-fun e!4381622 () Bool)

(assert (=> d!2272642 (=> res!2957474 e!4381622)))

(assert (=> d!2272642 (= res!2957474 (is-Nil!71255 (t!385611 l2!808)))))

(assert (=> d!2272642 (= (subseq!876 (t!385611 l2!808) (t!385611 lt!2603211)) e!4381622)))

(declare-fun b!7318658 () Bool)

(assert (=> b!7318658 (= e!4381622 e!4381620)))

(declare-fun res!2957477 () Bool)

(assert (=> b!7318658 (=> (not res!2957477) (not e!4381620))))

(assert (=> b!7318658 (= res!2957477 (is-Cons!71255 (t!385611 lt!2603211)))))

(assert (= (and d!2272642 (not res!2957474)) b!7318658))

(assert (= (and b!7318658 res!2957477) b!7318659))

(assert (= (and b!7318659 res!2957476) b!7318660))

(assert (= (and b!7318659 (not res!2957475)) b!7318661))

(declare-fun m!7983444 () Bool)

(assert (=> b!7318660 m!7983444))

(declare-fun m!7983446 () Bool)

(assert (=> b!7318661 m!7983446))

(assert (=> b!7318587 d!2272642))

(declare-fun d!2272644 () Bool)

(declare-fun res!2957478 () Bool)

(declare-fun e!4381623 () Bool)

(assert (=> d!2272644 (=> res!2957478 e!4381623)))

(assert (=> d!2272644 (= res!2957478 (is-Nil!71255 (t!385611 l2!808)))))

(assert (=> d!2272644 (= (forall!17803 (t!385611 l2!808) lambda!452900) e!4381623)))

(declare-fun b!7318662 () Bool)

(declare-fun e!4381624 () Bool)

(assert (=> b!7318662 (= e!4381623 e!4381624)))

(declare-fun res!2957479 () Bool)

(assert (=> b!7318662 (=> (not res!2957479) (not e!4381624))))

(assert (=> b!7318662 (= res!2957479 (dynLambda!29178 lambda!452900 (h!77703 (t!385611 l2!808))))))

(declare-fun b!7318663 () Bool)

(assert (=> b!7318663 (= e!4381624 (forall!17803 (t!385611 (t!385611 l2!808)) lambda!452900))))

(assert (= (and d!2272644 (not res!2957478)) b!7318662))

(assert (= (and b!7318662 res!2957479) b!7318663))

(declare-fun b_lambda!282751 () Bool)

(assert (=> (not b_lambda!282751) (not b!7318662)))

(declare-fun m!7983448 () Bool)

(assert (=> b!7318662 m!7983448))

(declare-fun m!7983450 () Bool)

(assert (=> b!7318663 m!7983450))

(assert (=> d!2272596 d!2272644))

(declare-fun d!2272646 () Bool)

(declare-fun e!4381625 () Bool)

(assert (=> d!2272646 e!4381625))

(declare-fun res!2957480 () Bool)

(assert (=> d!2272646 (=> (not res!2957480) (not e!4381625))))

(declare-fun lt!2603269 () List!71379)

(assert (=> d!2272646 (= res!2957480 (noDuplicate!3072 lt!2603269))))

(assert (=> d!2272646 (= lt!2603269 (choose!56809 (set.union (flatMap!3084 s1!456 f!803) (flatMap!3084 s2!427 f!803))))))

(assert (=> d!2272646 (= (toList!11666 (set.union (flatMap!3084 s1!456 f!803) (flatMap!3084 s2!427 f!803))) lt!2603269)))

(declare-fun b!7318664 () Bool)

(assert (=> b!7318664 (= e!4381625 (= (content!14891 lt!2603269) (set.union (flatMap!3084 s1!456 f!803) (flatMap!3084 s2!427 f!803))))))

(assert (= (and d!2272646 res!2957480) b!7318664))

(declare-fun m!7983452 () Bool)

(assert (=> d!2272646 m!7983452))

(declare-fun m!7983454 () Bool)

(assert (=> d!2272646 m!7983454))

(declare-fun m!7983456 () Bool)

(assert (=> b!7318664 m!7983456))

(assert (=> d!2272596 d!2272646))

(assert (=> d!2272596 d!2272608))

(assert (=> d!2272596 d!2272610))

(declare-fun bs!1915646 () Bool)

(declare-fun d!2272648 () Bool)

(assert (= bs!1915646 (and d!2272648 b!7318523)))

(declare-fun lambda!452906 () Int)

(assert (=> bs!1915646 (= lambda!452906 lambda!452892)))

(declare-fun bs!1915647 () Bool)

(assert (= bs!1915647 (and d!2272648 d!2272596)))

(assert (=> bs!1915647 (= lambda!452906 lambda!452900)))

(assert (=> d!2272648 true))

(assert (=> d!2272648 (forall!17803 (t!385611 l2!808) lambda!452906)))

(assert (=> d!2272648 true))

(declare-fun _$11!1230 () Unit!164757)

(assert (=> d!2272648 (= (choose!56808 s1!456 s2!427 f!803 l1!819 (t!385611 l2!808)) _$11!1230)))

(declare-fun bs!1915648 () Bool)

(assert (= bs!1915648 d!2272648))

(declare-fun m!7983458 () Bool)

(assert (=> bs!1915648 m!7983458))

(assert (=> d!2272596 d!2272648))

(declare-fun d!2272650 () Bool)

(declare-fun lt!2603272 () Bool)

(assert (=> d!2272650 (= lt!2603272 (set.member (h!77703 (t!385611 l2!808)) (content!14891 l1!819)))))

(declare-fun e!4381630 () Bool)

(assert (=> d!2272650 (= lt!2603272 e!4381630)))

(declare-fun res!2957486 () Bool)

(assert (=> d!2272650 (=> (not res!2957486) (not e!4381630))))

(assert (=> d!2272650 (= res!2957486 (is-Cons!71255 l1!819))))

(assert (=> d!2272650 (= (contains!20804 l1!819 (h!77703 (t!385611 l2!808))) lt!2603272)))

(declare-fun b!7318669 () Bool)

(declare-fun e!4381631 () Bool)

(assert (=> b!7318669 (= e!4381630 e!4381631)))

(declare-fun res!2957485 () Bool)

(assert (=> b!7318669 (=> res!2957485 e!4381631)))

(assert (=> b!7318669 (= res!2957485 (= (h!77703 l1!819) (h!77703 (t!385611 l2!808))))))

(declare-fun b!7318670 () Bool)

(assert (=> b!7318670 (= e!4381631 (contains!20804 (t!385611 l1!819) (h!77703 (t!385611 l2!808))))))

(assert (= (and d!2272650 res!2957486) b!7318669))

(assert (= (and b!7318669 (not res!2957485)) b!7318670))

(declare-fun m!7983460 () Bool)

(assert (=> d!2272650 m!7983460))

(declare-fun m!7983462 () Bool)

(assert (=> d!2272650 m!7983462))

(declare-fun m!7983464 () Bool)

(assert (=> b!7318670 m!7983464))

(assert (=> bs!1915637 d!2272650))

(assert (=> b!7318564 d!2272598))

(assert (=> d!2272592 d!2272608))

(assert (=> d!2272592 d!2272610))

(assert (=> d!2272592 d!2272604))

(declare-fun d!2272652 () Bool)

(assert (=> d!2272652 (= (set.member (h!77703 l2!808) (set.union (flatMap!3084 s1!456 f!803) (flatMap!3084 s2!427 f!803))) (set.member (h!77703 l2!808) (flatMap!3084 (set.union s1!456 s2!427) f!803)))))

(assert (=> d!2272652 true))

(declare-fun _$8!749 () Unit!164757)

(assert (=> d!2272652 (= (choose!56807 s1!456 s2!427 f!803 (h!77703 l2!808)) _$8!749)))

(declare-fun bs!1915649 () Bool)

(assert (= bs!1915649 d!2272652))

(assert (=> bs!1915649 m!7983350))

(assert (=> bs!1915649 m!7983272))

(assert (=> bs!1915649 m!7983346))

(assert (=> bs!1915649 m!7983294))

(assert (=> bs!1915649 m!7983270))

(assert (=> d!2272592 d!2272652))

(declare-fun d!2272654 () Bool)

(declare-fun c!1358622 () Bool)

(assert (=> d!2272654 (= c!1358622 (is-Nil!71255 lt!2603251))))

(declare-fun e!4381634 () (Set B!3631))

(assert (=> d!2272654 (= (content!14891 lt!2603251) e!4381634)))

(declare-fun b!7318676 () Bool)

(assert (=> b!7318676 (= e!4381634 (as set.empty (Set B!3631)))))

(declare-fun b!7318677 () Bool)

(assert (=> b!7318677 (= e!4381634 (set.union (set.insert (h!77703 lt!2603251) (as set.empty (Set B!3631))) (content!14891 (t!385611 lt!2603251))))))

(assert (= (and d!2272654 c!1358622) b!7318676))

(assert (= (and d!2272654 (not c!1358622)) b!7318677))

(declare-fun m!7983466 () Bool)

(assert (=> b!7318677 m!7983466))

(declare-fun m!7983468 () Bool)

(assert (=> b!7318677 m!7983468))

(assert (=> b!7318595 d!2272654))

(declare-fun b!7318679 () Bool)

(declare-fun e!4381636 () Bool)

(declare-fun e!4381637 () Bool)

(assert (=> b!7318679 (= e!4381636 e!4381637)))

(declare-fun res!2957488 () Bool)

(assert (=> b!7318679 (=> res!2957488 e!4381637)))

(declare-fun e!4381635 () Bool)

(assert (=> b!7318679 (= res!2957488 e!4381635)))

(declare-fun res!2957489 () Bool)

(assert (=> b!7318679 (=> (not res!2957489) (not e!4381635))))

(assert (=> b!7318679 (= res!2957489 (= (h!77703 l2!808) (h!77703 (t!385611 lt!2603211))))))

(declare-fun b!7318680 () Bool)

(assert (=> b!7318680 (= e!4381635 (subseq!876 (t!385611 l2!808) (t!385611 (t!385611 lt!2603211))))))

(declare-fun b!7318681 () Bool)

(assert (=> b!7318681 (= e!4381637 (subseq!876 l2!808 (t!385611 (t!385611 lt!2603211))))))

(declare-fun d!2272656 () Bool)

(declare-fun res!2957487 () Bool)

(declare-fun e!4381638 () Bool)

(assert (=> d!2272656 (=> res!2957487 e!4381638)))

(assert (=> d!2272656 (= res!2957487 (is-Nil!71255 l2!808))))

(assert (=> d!2272656 (= (subseq!876 l2!808 (t!385611 lt!2603211)) e!4381638)))

(declare-fun b!7318678 () Bool)

(assert (=> b!7318678 (= e!4381638 e!4381636)))

(declare-fun res!2957490 () Bool)

(assert (=> b!7318678 (=> (not res!2957490) (not e!4381636))))

(assert (=> b!7318678 (= res!2957490 (is-Cons!71255 (t!385611 lt!2603211)))))

(assert (= (and d!2272656 (not res!2957487)) b!7318678))

(assert (= (and b!7318678 res!2957490) b!7318679))

(assert (= (and b!7318679 res!2957489) b!7318680))

(assert (= (and b!7318679 (not res!2957488)) b!7318681))

(assert (=> b!7318680 m!7983446))

(declare-fun m!7983470 () Bool)

(assert (=> b!7318681 m!7983470))

(assert (=> b!7318588 d!2272656))

(declare-fun d!2272658 () Bool)

(declare-fun res!2957495 () Bool)

(declare-fun e!4381643 () Bool)

(assert (=> d!2272658 (=> res!2957495 e!4381643)))

(assert (=> d!2272658 (= res!2957495 (is-Nil!71255 lt!2603252))))

(assert (=> d!2272658 (= (noDuplicate!3072 lt!2603252) e!4381643)))

(declare-fun b!7318686 () Bool)

(declare-fun e!4381644 () Bool)

(assert (=> b!7318686 (= e!4381643 e!4381644)))

(declare-fun res!2957496 () Bool)

(assert (=> b!7318686 (=> (not res!2957496) (not e!4381644))))

(assert (=> b!7318686 (= res!2957496 (not (contains!20804 (t!385611 lt!2603252) (h!77703 lt!2603252))))))

(declare-fun b!7318687 () Bool)

(assert (=> b!7318687 (= e!4381644 (noDuplicate!3072 (t!385611 lt!2603252)))))

(assert (= (and d!2272658 (not res!2957495)) b!7318686))

(assert (= (and b!7318686 res!2957496) b!7318687))

(declare-fun m!7983472 () Bool)

(assert (=> b!7318686 m!7983472))

(declare-fun m!7983474 () Bool)

(assert (=> b!7318687 m!7983474))

(assert (=> d!2272606 d!2272658))

(declare-fun d!2272660 () Bool)

(declare-fun e!4381649 () Bool)

(assert (=> d!2272660 e!4381649))

(declare-fun res!2957502 () Bool)

(assert (=> d!2272660 (=> (not res!2957502) (not e!4381649))))

(declare-fun res!2957501 () List!71379)

(assert (=> d!2272660 (= res!2957502 (noDuplicate!3072 res!2957501))))

(declare-fun e!4381650 () Bool)

(assert (=> d!2272660 e!4381650))

(assert (=> d!2272660 (= (choose!56809 lt!2603209) res!2957501)))

(declare-fun b!7318692 () Bool)

(declare-fun tp!2078324 () Bool)

(assert (=> b!7318692 (= e!4381650 (and tp_is_empty!47749 tp!2078324))))

(declare-fun b!7318693 () Bool)

(assert (=> b!7318693 (= e!4381649 (= (content!14891 res!2957501) lt!2603209))))

(assert (= (and d!2272660 (is-Cons!71255 res!2957501)) b!7318692))

(assert (= (and d!2272660 res!2957502) b!7318693))

(declare-fun m!7983476 () Bool)

(assert (=> d!2272660 m!7983476))

(declare-fun m!7983478 () Bool)

(assert (=> b!7318693 m!7983478))

(assert (=> d!2272606 d!2272660))

(declare-fun d!2272662 () Bool)

(declare-fun lt!2603273 () Bool)

(assert (=> d!2272662 (= lt!2603273 (set.member (h!77703 l2!808) (content!14891 lt!2603211)))))

(declare-fun e!4381651 () Bool)

(assert (=> d!2272662 (= lt!2603273 e!4381651)))

(declare-fun res!2957504 () Bool)

(assert (=> d!2272662 (=> (not res!2957504) (not e!4381651))))

(assert (=> d!2272662 (= res!2957504 (is-Cons!71255 lt!2603211))))

(assert (=> d!2272662 (= (contains!20804 lt!2603211 (h!77703 l2!808)) lt!2603273)))

(declare-fun b!7318694 () Bool)

(declare-fun e!4381652 () Bool)

(assert (=> b!7318694 (= e!4381651 e!4381652)))

(declare-fun res!2957503 () Bool)

(assert (=> b!7318694 (=> res!2957503 e!4381652)))

(assert (=> b!7318694 (= res!2957503 (= (h!77703 lt!2603211) (h!77703 l2!808)))))

(declare-fun b!7318695 () Bool)

(assert (=> b!7318695 (= e!4381652 (contains!20804 (t!385611 lt!2603211) (h!77703 l2!808)))))

(assert (= (and d!2272662 res!2957504) b!7318694))

(assert (= (and b!7318694 (not res!2957503)) b!7318695))

(declare-fun m!7983480 () Bool)

(assert (=> d!2272662 m!7983480))

(declare-fun m!7983482 () Bool)

(assert (=> d!2272662 m!7983482))

(declare-fun m!7983484 () Bool)

(assert (=> b!7318695 m!7983484))

(assert (=> d!2272588 d!2272662))

(declare-fun d!2272664 () Bool)

(assert (=> d!2272664 (contains!20804 lt!2603211 (h!77703 l2!808))))

(assert (=> d!2272664 true))

(declare-fun _$10!248 () Unit!164757)

(assert (=> d!2272664 (= (choose!56806 l2!808 lt!2603211 (h!77703 l2!808)) _$10!248)))

(declare-fun bs!1915650 () Bool)

(assert (= bs!1915650 d!2272664))

(assert (=> bs!1915650 m!7983336))

(assert (=> d!2272588 d!2272664))

(assert (=> d!2272588 d!2272598))

(declare-fun d!2272666 () Bool)

(assert (=> d!2272666 true))

(declare-fun setRes!55038 () Bool)

(assert (=> d!2272666 setRes!55038))

(declare-fun condSetEmpty!55038 () Bool)

(declare-fun res!2957507 () (Set B!3631))

(assert (=> d!2272666 (= condSetEmpty!55038 (= res!2957507 (as set.empty (Set B!3631))))))

(assert (=> d!2272666 (= (choose!56810 (set.union s1!456 s2!427) f!803) res!2957507)))

(declare-fun setIsEmpty!55038 () Bool)

(assert (=> setIsEmpty!55038 setRes!55038))

(declare-fun setNonEmpty!55038 () Bool)

(declare-fun tp!2078327 () Bool)

(assert (=> setNonEmpty!55038 (= setRes!55038 (and tp!2078327 tp_is_empty!47749))))

(declare-fun setElem!55038 () B!3631)

(declare-fun setRest!55038 () (Set B!3631))

(assert (=> setNonEmpty!55038 (= res!2957507 (set.union (set.insert setElem!55038 (as set.empty (Set B!3631))) setRest!55038))))

(assert (= (and d!2272666 condSetEmpty!55038) setIsEmpty!55038))

(assert (= (and d!2272666 (not condSetEmpty!55038)) setNonEmpty!55038))

(assert (=> d!2272604 d!2272666))

(declare-fun d!2272668 () Bool)

(declare-fun lt!2603274 () Bool)

(assert (=> d!2272668 (= lt!2603274 (set.member (h!77703 l2!808) (content!14891 l2!808)))))

(declare-fun e!4381653 () Bool)

(assert (=> d!2272668 (= lt!2603274 e!4381653)))

(declare-fun res!2957509 () Bool)

(assert (=> d!2272668 (=> (not res!2957509) (not e!4381653))))

(assert (=> d!2272668 (= res!2957509 (is-Cons!71255 l2!808))))

(assert (=> d!2272668 (= (contains!20804 l2!808 (h!77703 l2!808)) lt!2603274)))

(declare-fun b!7318696 () Bool)

(declare-fun e!4381654 () Bool)

(assert (=> b!7318696 (= e!4381653 e!4381654)))

(declare-fun res!2957508 () Bool)

(assert (=> b!7318696 (=> res!2957508 e!4381654)))

(assert (=> b!7318696 (= res!2957508 (= (h!77703 l2!808) (h!77703 l2!808)))))

(declare-fun b!7318697 () Bool)

(assert (=> b!7318697 (= e!4381654 (contains!20804 (t!385611 l2!808) (h!77703 l2!808)))))

(assert (= (and d!2272668 res!2957509) b!7318696))

(assert (= (and b!7318696 (not res!2957508)) b!7318697))

(declare-fun m!7983486 () Bool)

(assert (=> d!2272668 m!7983486))

(declare-fun m!7983488 () Bool)

(assert (=> d!2272668 m!7983488))

(declare-fun m!7983490 () Bool)

(assert (=> b!7318697 m!7983490))

(assert (=> b!7318567 d!2272668))

(declare-fun d!2272670 () Bool)

(assert (=> d!2272670 true))

(declare-fun setRes!55039 () Bool)

(assert (=> d!2272670 setRes!55039))

(declare-fun condSetEmpty!55039 () Bool)

(declare-fun res!2957510 () (Set B!3631))

(assert (=> d!2272670 (= condSetEmpty!55039 (= res!2957510 (as set.empty (Set B!3631))))))

(assert (=> d!2272670 (= (choose!56810 s1!456 f!803) res!2957510)))

(declare-fun setIsEmpty!55039 () Bool)

(assert (=> setIsEmpty!55039 setRes!55039))

(declare-fun setNonEmpty!55039 () Bool)

(declare-fun tp!2078328 () Bool)

(assert (=> setNonEmpty!55039 (= setRes!55039 (and tp!2078328 tp_is_empty!47749))))

(declare-fun setElem!55039 () B!3631)

(declare-fun setRest!55039 () (Set B!3631))

(assert (=> setNonEmpty!55039 (= res!2957510 (set.union (set.insert setElem!55039 (as set.empty (Set B!3631))) setRest!55039))))

(assert (= (and d!2272670 condSetEmpty!55039) setIsEmpty!55039))

(assert (= (and d!2272670 (not condSetEmpty!55039)) setNonEmpty!55039))

(assert (=> d!2272608 d!2272670))

(declare-fun d!2272672 () Bool)

(declare-fun res!2957511 () Bool)

(declare-fun e!4381655 () Bool)

(assert (=> d!2272672 (=> res!2957511 e!4381655)))

(assert (=> d!2272672 (= res!2957511 (is-Nil!71255 (t!385611 (t!385611 l2!808))))))

(assert (=> d!2272672 (= (forall!17803 (t!385611 (t!385611 l2!808)) lambda!452892) e!4381655)))

(declare-fun b!7318698 () Bool)

(declare-fun e!4381656 () Bool)

(assert (=> b!7318698 (= e!4381655 e!4381656)))

(declare-fun res!2957512 () Bool)

(assert (=> b!7318698 (=> (not res!2957512) (not e!4381656))))

(assert (=> b!7318698 (= res!2957512 (dynLambda!29178 lambda!452892 (h!77703 (t!385611 (t!385611 l2!808)))))))

(declare-fun b!7318699 () Bool)

(assert (=> b!7318699 (= e!4381656 (forall!17803 (t!385611 (t!385611 (t!385611 l2!808))) lambda!452892))))

(assert (= (and d!2272672 (not res!2957511)) b!7318698))

(assert (= (and b!7318698 res!2957512) b!7318699))

(declare-fun b_lambda!282753 () Bool)

(assert (=> (not b_lambda!282753) (not b!7318698)))

(declare-fun m!7983492 () Bool)

(assert (=> b!7318698 m!7983492))

(declare-fun m!7983494 () Bool)

(assert (=> b!7318699 m!7983494))

(assert (=> b!7318573 d!2272672))

(assert (=> b!7318576 d!2272590))

(declare-fun d!2272674 () Bool)

(assert (=> d!2272674 (= (isEmpty!40872 (t!385611 l2!808)) (is-Nil!71255 (t!385611 l2!808)))))

(assert (=> b!7318559 d!2272674))

(declare-fun b!7318701 () Bool)

(declare-fun e!4381658 () Bool)

(declare-fun e!4381659 () Bool)

(assert (=> b!7318701 (= e!4381658 e!4381659)))

(declare-fun res!2957514 () Bool)

(assert (=> b!7318701 (=> res!2957514 e!4381659)))

(declare-fun e!4381657 () Bool)

(assert (=> b!7318701 (= res!2957514 e!4381657)))

(declare-fun res!2957515 () Bool)

(assert (=> b!7318701 (=> (not res!2957515) (not e!4381657))))

(assert (=> b!7318701 (= res!2957515 (= (h!77703 (tail!14649 l2!808)) (h!77703 lt!2603211)))))

(declare-fun b!7318702 () Bool)

(assert (=> b!7318702 (= e!4381657 (subseq!876 (t!385611 (tail!14649 l2!808)) (t!385611 lt!2603211)))))

(declare-fun b!7318703 () Bool)

(assert (=> b!7318703 (= e!4381659 (subseq!876 (tail!14649 l2!808) (t!385611 lt!2603211)))))

(declare-fun d!2272676 () Bool)

(declare-fun res!2957513 () Bool)

(declare-fun e!4381660 () Bool)

(assert (=> d!2272676 (=> res!2957513 e!4381660)))

(assert (=> d!2272676 (= res!2957513 (is-Nil!71255 (tail!14649 l2!808)))))

(assert (=> d!2272676 (= (subseq!876 (tail!14649 l2!808) lt!2603211) e!4381660)))

(declare-fun b!7318700 () Bool)

(assert (=> b!7318700 (= e!4381660 e!4381658)))

(declare-fun res!2957516 () Bool)

(assert (=> b!7318700 (=> (not res!2957516) (not e!4381658))))

(assert (=> b!7318700 (= res!2957516 (is-Cons!71255 lt!2603211))))

(assert (= (and d!2272676 (not res!2957513)) b!7318700))

(assert (= (and b!7318700 res!2957516) b!7318701))

(assert (= (and b!7318701 res!2957515) b!7318702))

(assert (= (and b!7318701 (not res!2957514)) b!7318703))

(declare-fun m!7983496 () Bool)

(assert (=> b!7318702 m!7983496))

(assert (=> b!7318703 m!7983328))

(declare-fun m!7983498 () Bool)

(assert (=> b!7318703 m!7983498))

(assert (=> d!2272586 d!2272676))

(declare-fun d!2272678 () Bool)

(assert (=> d!2272678 (= (tail!14649 l2!808) (t!385611 l2!808))))

(assert (=> d!2272586 d!2272678))

(declare-fun d!2272680 () Bool)

(assert (=> d!2272680 (= (isEmpty!40872 l2!808) (is-Nil!71255 l2!808))))

(assert (=> d!2272586 d!2272680))

(declare-fun d!2272682 () Bool)

(declare-fun lt!2603275 () Bool)

(assert (=> d!2272682 (= lt!2603275 (set.member (h!77703 l2!808) (content!14891 l1!819)))))

(declare-fun e!4381661 () Bool)

(assert (=> d!2272682 (= lt!2603275 e!4381661)))

(declare-fun res!2957518 () Bool)

(assert (=> d!2272682 (=> (not res!2957518) (not e!4381661))))

(assert (=> d!2272682 (= res!2957518 (is-Cons!71255 l1!819))))

(assert (=> d!2272682 (= (contains!20804 l1!819 (h!77703 l2!808)) lt!2603275)))

(declare-fun b!7318704 () Bool)

(declare-fun e!4381662 () Bool)

(assert (=> b!7318704 (= e!4381661 e!4381662)))

(declare-fun res!2957517 () Bool)

(assert (=> b!7318704 (=> res!2957517 e!4381662)))

(assert (=> b!7318704 (= res!2957517 (= (h!77703 l1!819) (h!77703 l2!808)))))

(declare-fun b!7318705 () Bool)

(assert (=> b!7318705 (= e!4381662 (contains!20804 (t!385611 l1!819) (h!77703 l2!808)))))

(assert (= (and d!2272682 res!2957518) b!7318704))

(assert (= (and b!7318704 (not res!2957517)) b!7318705))

(assert (=> d!2272682 m!7983460))

(declare-fun m!7983500 () Bool)

(assert (=> d!2272682 m!7983500))

(declare-fun m!7983502 () Bool)

(assert (=> b!7318705 m!7983502))

(assert (=> bs!1915636 d!2272682))

(declare-fun d!2272684 () Bool)

(declare-fun res!2957519 () Bool)

(declare-fun e!4381663 () Bool)

(assert (=> d!2272684 (=> res!2957519 e!4381663)))

(assert (=> d!2272684 (= res!2957519 (is-Nil!71255 lt!2603251))))

(assert (=> d!2272684 (= (noDuplicate!3072 lt!2603251) e!4381663)))

(declare-fun b!7318706 () Bool)

(declare-fun e!4381664 () Bool)

(assert (=> b!7318706 (= e!4381663 e!4381664)))

(declare-fun res!2957520 () Bool)

(assert (=> b!7318706 (=> (not res!2957520) (not e!4381664))))

(assert (=> b!7318706 (= res!2957520 (not (contains!20804 (t!385611 lt!2603251) (h!77703 lt!2603251))))))

(declare-fun b!7318707 () Bool)

(assert (=> b!7318707 (= e!4381664 (noDuplicate!3072 (t!385611 lt!2603251)))))

(assert (= (and d!2272684 (not res!2957519)) b!7318706))

(assert (= (and b!7318706 res!2957520) b!7318707))

(declare-fun m!7983504 () Bool)

(assert (=> b!7318706 m!7983504))

(declare-fun m!7983506 () Bool)

(assert (=> b!7318707 m!7983506))

(assert (=> d!2272602 d!2272684))

(declare-fun d!2272686 () Bool)

(declare-fun e!4381665 () Bool)

(assert (=> d!2272686 e!4381665))

(declare-fun res!2957522 () Bool)

(assert (=> d!2272686 (=> (not res!2957522) (not e!4381665))))

(declare-fun res!2957521 () List!71379)

(assert (=> d!2272686 (= res!2957522 (noDuplicate!3072 res!2957521))))

(declare-fun e!4381666 () Bool)

(assert (=> d!2272686 e!4381666))

(assert (=> d!2272686 (= (choose!56809 lt!2603210) res!2957521)))

(declare-fun b!7318708 () Bool)

(declare-fun tp!2078329 () Bool)

(assert (=> b!7318708 (= e!4381666 (and tp_is_empty!47749 tp!2078329))))

(declare-fun b!7318709 () Bool)

(assert (=> b!7318709 (= e!4381665 (= (content!14891 res!2957521) lt!2603210))))

(assert (= (and d!2272686 (is-Cons!71255 res!2957521)) b!7318708))

(assert (= (and d!2272686 res!2957522) b!7318709))

(declare-fun m!7983508 () Bool)

(assert (=> d!2272686 m!7983508))

(declare-fun m!7983510 () Bool)

(assert (=> b!7318709 m!7983510))

(assert (=> d!2272602 d!2272686))

(declare-fun d!2272688 () Bool)

(declare-fun c!1358623 () Bool)

(assert (=> d!2272688 (= c!1358623 (is-Nil!71255 lt!2603252))))

(declare-fun e!4381667 () (Set B!3631))

(assert (=> d!2272688 (= (content!14891 lt!2603252) e!4381667)))

(declare-fun b!7318710 () Bool)

(assert (=> b!7318710 (= e!4381667 (as set.empty (Set B!3631)))))

(declare-fun b!7318711 () Bool)

(assert (=> b!7318711 (= e!4381667 (set.union (set.insert (h!77703 lt!2603252) (as set.empty (Set B!3631))) (content!14891 (t!385611 lt!2603252))))))

(assert (= (and d!2272688 c!1358623) b!7318710))

(assert (= (and d!2272688 (not c!1358623)) b!7318711))

(declare-fun m!7983512 () Bool)

(assert (=> b!7318711 m!7983512))

(declare-fun m!7983514 () Bool)

(assert (=> b!7318711 m!7983514))

(assert (=> b!7318600 d!2272688))

(assert (=> b!7318563 d!2272656))

(declare-fun d!2272690 () Bool)

(assert (=> d!2272690 true))

(declare-fun setRes!55040 () Bool)

(assert (=> d!2272690 setRes!55040))

(declare-fun condSetEmpty!55040 () Bool)

(declare-fun res!2957523 () (Set B!3631))

(assert (=> d!2272690 (= condSetEmpty!55040 (= res!2957523 (as set.empty (Set B!3631))))))

(assert (=> d!2272690 (= (choose!56810 s2!427 f!803) res!2957523)))

(declare-fun setIsEmpty!55040 () Bool)

(assert (=> setIsEmpty!55040 setRes!55040))

(declare-fun setNonEmpty!55040 () Bool)

(declare-fun tp!2078330 () Bool)

(assert (=> setNonEmpty!55040 (= setRes!55040 (and tp!2078330 tp_is_empty!47749))))

(declare-fun setElem!55040 () B!3631)

(declare-fun setRest!55040 () (Set B!3631))

(assert (=> setNonEmpty!55040 (= res!2957523 (set.union (set.insert setElem!55040 (as set.empty (Set B!3631))) setRest!55040))))

(assert (= (and d!2272690 condSetEmpty!55040) setIsEmpty!55040))

(assert (= (and d!2272690 (not condSetEmpty!55040)) setNonEmpty!55040))

(assert (=> d!2272610 d!2272690))

(declare-fun b!7318712 () Bool)

(declare-fun e!4381668 () Unit!164757)

(declare-fun call!665839 () Unit!164757)

(assert (=> b!7318712 (= e!4381668 call!665839)))

(declare-fun d!2272692 () Bool)

(assert (=> d!2272692 (subseq!876 (tail!14649 (ite c!1358610 l2!808 (t!385611 l2!808))) (t!385611 lt!2603211))))

(declare-fun lt!2603276 () Unit!164757)

(declare-fun e!4381669 () Unit!164757)

(assert (=> d!2272692 (= lt!2603276 e!4381669)))

(declare-fun c!1358625 () Bool)

(assert (=> d!2272692 (= c!1358625 (and (is-Cons!71255 (ite c!1358610 l2!808 (t!385611 l2!808))) (is-Cons!71255 (t!385611 lt!2603211))))))

(declare-fun e!4381671 () Bool)

(assert (=> d!2272692 e!4381671))

(declare-fun res!2957524 () Bool)

(assert (=> d!2272692 (=> (not res!2957524) (not e!4381671))))

(assert (=> d!2272692 (= res!2957524 (not (isEmpty!40872 (ite c!1358610 l2!808 (t!385611 l2!808)))))))

(assert (=> d!2272692 (= (subseqTail!97 (ite c!1358610 l2!808 (t!385611 l2!808)) (t!385611 lt!2603211)) lt!2603276)))

(declare-fun b!7318713 () Bool)

(declare-fun c!1358624 () Bool)

(assert (=> b!7318713 (= c!1358624 (not (isEmpty!40872 (t!385611 (ite c!1358610 l2!808 (t!385611 l2!808))))))))

(declare-fun e!4381670 () Unit!164757)

(assert (=> b!7318713 (= e!4381670 e!4381668)))

(declare-fun b!7318714 () Bool)

(assert (=> b!7318714 (= e!4381670 call!665839)))

(declare-fun b!7318715 () Bool)

(declare-fun Unit!164765 () Unit!164757)

(assert (=> b!7318715 (= e!4381669 Unit!164765)))

(declare-fun b!7318716 () Bool)

(declare-fun Unit!164766 () Unit!164757)

(assert (=> b!7318716 (= e!4381668 Unit!164766)))

(declare-fun b!7318717 () Bool)

(assert (=> b!7318717 (= e!4381669 e!4381670)))

(declare-fun c!1358626 () Bool)

(assert (=> b!7318717 (= c!1358626 (subseq!876 (ite c!1358610 l2!808 (t!385611 l2!808)) (t!385611 (t!385611 lt!2603211))))))

(declare-fun bm!665834 () Bool)

(assert (=> bm!665834 (= call!665839 (subseqTail!97 (ite c!1358626 (ite c!1358610 l2!808 (t!385611 l2!808)) (t!385611 (ite c!1358610 l2!808 (t!385611 l2!808)))) (t!385611 (t!385611 lt!2603211))))))

(declare-fun b!7318718 () Bool)

(assert (=> b!7318718 (= e!4381671 (subseq!876 (ite c!1358610 l2!808 (t!385611 l2!808)) (t!385611 lt!2603211)))))

(assert (= (and d!2272692 res!2957524) b!7318718))

(assert (= (and d!2272692 c!1358625) b!7318717))

(assert (= (and d!2272692 (not c!1358625)) b!7318715))

(assert (= (and b!7318717 c!1358626) b!7318714))

(assert (= (and b!7318717 (not c!1358626)) b!7318713))

(assert (= (and b!7318713 c!1358624) b!7318712))

(assert (= (and b!7318713 (not c!1358624)) b!7318716))

(assert (= (or b!7318714 b!7318712) bm!665834))

(declare-fun m!7983516 () Bool)

(assert (=> b!7318717 m!7983516))

(declare-fun m!7983518 () Bool)

(assert (=> b!7318718 m!7983518))

(declare-fun m!7983520 () Bool)

(assert (=> bm!665834 m!7983520))

(declare-fun m!7983522 () Bool)

(assert (=> d!2272692 m!7983522))

(assert (=> d!2272692 m!7983522))

(declare-fun m!7983524 () Bool)

(assert (=> d!2272692 m!7983524))

(declare-fun m!7983526 () Bool)

(assert (=> d!2272692 m!7983526))

(declare-fun m!7983528 () Bool)

(assert (=> b!7318713 m!7983528))

(assert (=> bm!665830 d!2272692))

(declare-fun b!7318719 () Bool)

(declare-fun e!4381672 () Bool)

(declare-fun tp!2078331 () Bool)

(assert (=> b!7318719 (= e!4381672 (and tp_is_empty!47749 tp!2078331))))

(assert (=> b!7318608 (= tp!2078312 e!4381672)))

(assert (= (and b!7318608 (is-Cons!71255 (t!385611 (t!385611 l1!819)))) b!7318719))

(declare-fun condSetEmpty!55041 () Bool)

(assert (=> setNonEmpty!55030 (= condSetEmpty!55041 (= setRest!55030 (as set.empty (Set A!929))))))

(declare-fun setRes!55041 () Bool)

(assert (=> setNonEmpty!55030 (= tp!2078311 setRes!55041)))

(declare-fun setIsEmpty!55041 () Bool)

(assert (=> setIsEmpty!55041 setRes!55041))

(declare-fun setNonEmpty!55041 () Bool)

(declare-fun tp!2078332 () Bool)

(assert (=> setNonEmpty!55041 (= setRes!55041 (and tp!2078332 tp_is_empty!47751))))

(declare-fun setElem!55041 () A!929)

(declare-fun setRest!55041 () (Set A!929))

(assert (=> setNonEmpty!55041 (= setRest!55030 (set.union (set.insert setElem!55041 (as set.empty (Set A!929))) setRest!55041))))

(assert (= (and setNonEmpty!55030 condSetEmpty!55041) setIsEmpty!55041))

(assert (= (and setNonEmpty!55030 (not condSetEmpty!55041)) setNonEmpty!55041))

(declare-fun b!7318720 () Bool)

(declare-fun e!4381673 () Bool)

(declare-fun tp!2078333 () Bool)

(assert (=> b!7318720 (= e!4381673 (and tp_is_empty!47749 tp!2078333))))

(assert (=> b!7318605 (= tp!2078308 e!4381673)))

(assert (= (and b!7318605 (is-Cons!71255 (t!385611 (t!385611 l2!808)))) b!7318720))

(declare-fun condSetEmpty!55042 () Bool)

(assert (=> setNonEmpty!55031 (= condSetEmpty!55042 (= setRest!55031 (as set.empty (Set A!929))))))

(declare-fun setRes!55042 () Bool)

(assert (=> setNonEmpty!55031 (= tp!2078313 setRes!55042)))

(declare-fun setIsEmpty!55042 () Bool)

(assert (=> setIsEmpty!55042 setRes!55042))

(declare-fun setNonEmpty!55042 () Bool)

(declare-fun tp!2078334 () Bool)

(assert (=> setNonEmpty!55042 (= setRes!55042 (and tp!2078334 tp_is_empty!47751))))

(declare-fun setElem!55042 () A!929)

(declare-fun setRest!55042 () (Set A!929))

(assert (=> setNonEmpty!55042 (= setRest!55031 (set.union (set.insert setElem!55042 (as set.empty (Set A!929))) setRest!55042))))

(assert (= (and setNonEmpty!55031 condSetEmpty!55042) setIsEmpty!55042))

(assert (= (and setNonEmpty!55031 (not condSetEmpty!55042)) setNonEmpty!55042))

(declare-fun b_lambda!282755 () Bool)

(assert (= b_lambda!282751 (or d!2272596 b_lambda!282755)))

(declare-fun bs!1915651 () Bool)

(declare-fun d!2272694 () Bool)

(assert (= bs!1915651 (and d!2272694 d!2272596)))

(assert (=> bs!1915651 (= (dynLambda!29178 lambda!452900 (h!77703 (t!385611 l2!808))) (contains!20804 l1!819 (h!77703 (t!385611 l2!808))))))

(assert (=> bs!1915651 m!7983382))

(assert (=> b!7318662 d!2272694))

(declare-fun b_lambda!282757 () Bool)

(assert (= b_lambda!282753 (or b!7318523 b_lambda!282757)))

(declare-fun bs!1915652 () Bool)

(declare-fun d!2272696 () Bool)

(assert (= bs!1915652 (and d!2272696 b!7318523)))

(assert (=> bs!1915652 (= (dynLambda!29178 lambda!452892 (h!77703 (t!385611 (t!385611 l2!808)))) (contains!20804 l1!819 (h!77703 (t!385611 (t!385611 l2!808)))))))

(declare-fun m!7983530 () Bool)

(assert (=> bs!1915652 m!7983530))

(assert (=> b!7318698 d!2272696))

(push 1)

(assert tp_is_empty!47751)

(assert (not setNonEmpty!55038))

(assert (not d!2272660))

(assert (not d!2272652))

(assert (not b!7318706))

(assert (not b!7318660))

(assert (not bs!1915651))

(assert (not d!2272668))

(assert (not b!7318686))

(assert (not b_lambda!282757))

(assert (not b!7318707))

(assert (not b!7318670))

(assert (not d!2272648))

(assert tp_is_empty!47749)

(assert (not d!2272662))

(assert (not b!7318718))

(assert (not b!7318687))

(assert (not b!7318720))

(assert (not b!7318681))

(assert (not bm!665834))

(assert (not b!7318677))

(assert (not setNonEmpty!55042))

(assert (not b!7318697))

(assert (not b!7318708))

(assert (not setNonEmpty!55041))

(assert (not d!2272682))

(assert (not setNonEmpty!55039))

(assert (not b!7318705))

(assert (not b!7318713))

(assert (not d!2272686))

(assert (not b!7318711))

(assert (not b!7318680))

(assert (not b_lambda!282739))

(assert (not b!7318702))

(assert (not b!7318709))

(assert (not d!2272650))

(assert (not b_lambda!282755))

(assert (not b!7318699))

(assert (not b!7318661))

(assert (not b!7318717))

(assert (not b_lambda!282741))

(assert (not setNonEmpty!55040))

(assert (not d!2272646))

(assert (not bs!1915652))

(assert (not b!7318703))

(assert b_and!351491)

(assert (not d!2272664))

(assert (not b!7318692))

(assert (not b!7318693))

(assert (not b_next!134873))

(assert (not b!7318664))

(assert (not d!2272692))

(assert (not b!7318663))

(assert (not b!7318695))

(assert (not b!7318719))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351491)

(assert (not b_next!134873))

(check-sat)

(pop 1)


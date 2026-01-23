; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693836 () Bool)

(assert start!693836)

(declare-fun b_free!133747 () Bool)

(declare-fun b_next!134537 () Bool)

(assert (=> start!693836 (= b_free!133747 (not b_next!134537))))

(declare-fun tp!1961667 () Bool)

(declare-fun b_and!350843 () Bool)

(assert (=> start!693836 (= tp!1961667 b_and!350843)))

(declare-fun b!7123480 () Bool)

(assert (=> b!7123480 true))

(declare-fun e!4280619 () Bool)

(declare-datatypes ((B!3311 0))(
  ( (B!3312 (val!27979 Int)) )
))
(declare-datatypes ((List!69025 0))(
  ( (Nil!68901) (Cons!68901 (h!75349 B!3311) (t!382936 List!69025)) )
))
(declare-fun l2!759 () List!69025)

(declare-fun lambda!432934 () Int)

(declare-fun forall!16898 (List!69025 Int) Bool)

(assert (=> b!7123480 (= e!4280619 (not (forall!16898 l2!759 lambda!432934)))))

(declare-datatypes ((Unit!162769 0))(
  ( (Unit!162770) )
))
(declare-fun lt!2562500 () Unit!162769)

(declare-fun lt!2562502 () List!69025)

(declare-fun subseqContains!25 (List!69025 List!69025 B!3311) Unit!162769)

(assert (=> b!7123480 (= lt!2562500 (subseqContains!25 l2!759 lt!2562502 (h!75349 l2!759)))))

(assert (=> b!7123480 (forall!16898 (t!382936 l2!759) lambda!432934)))

(declare-datatypes ((A!653 0))(
  ( (A!654 (val!27980 Int)) )
))
(declare-fun s1!424 () (Set A!653))

(declare-fun l1!770 () List!69025)

(declare-fun s2!395 () (Set A!653))

(declare-fun f!607 () Int)

(declare-fun lt!2562499 () Unit!162769)

(declare-fun lemmaMapAssociativeToList2!15 ((Set A!653) (Set A!653) Int List!69025 List!69025) Unit!162769)

(assert (=> b!7123480 (= lt!2562499 (lemmaMapAssociativeToList2!15 s1!424 s2!395 f!607 l1!770 (t!382936 l2!759)))))

(declare-fun lt!2562498 () Unit!162769)

(declare-fun subseqTail!37 (List!69025 List!69025) Unit!162769)

(assert (=> b!7123480 (= lt!2562498 (subseqTail!37 l2!759 lt!2562502))))

(declare-fun lt!2562501 () (Set B!3311))

(declare-fun lt!2562497 () (Set B!3311))

(assert (=> b!7123480 (= (set.member (h!75349 l2!759) lt!2562501) (set.member (h!75349 l2!759) lt!2562497))))

(declare-fun lt!2562496 () Unit!162769)

(declare-fun lemmaMapAssociativeElem!25 ((Set A!653) (Set A!653) Int B!3311) Unit!162769)

(assert (=> b!7123480 (= lt!2562496 (lemmaMapAssociativeElem!25 s1!424 s2!395 f!607 (h!75349 l2!759)))))

(declare-fun b!7123481 () Bool)

(declare-fun res!2906457 () Bool)

(assert (=> b!7123481 (=> (not res!2906457) (not e!4280619))))

(assert (=> b!7123481 (= res!2906457 (is-Cons!68901 l2!759))))

(declare-fun setIsEmpty!51278 () Bool)

(declare-fun setRes!51278 () Bool)

(assert (=> setIsEmpty!51278 setRes!51278))

(declare-fun setIsEmpty!51279 () Bool)

(declare-fun setRes!51279 () Bool)

(assert (=> setIsEmpty!51279 setRes!51279))

(declare-fun b!7123482 () Bool)

(declare-fun e!4280620 () Bool)

(declare-fun tp_is_empty!45459 () Bool)

(declare-fun tp!1961666 () Bool)

(assert (=> b!7123482 (= e!4280620 (and tp_is_empty!45459 tp!1961666))))

(declare-fun res!2906459 () Bool)

(declare-fun e!4280621 () Bool)

(assert (=> start!693836 (=> (not res!2906459) (not e!4280621))))

(declare-fun toList!11128 ((Set B!3311)) List!69025)

(assert (=> start!693836 (= res!2906459 (= l1!770 (toList!11128 lt!2562501)))))

(declare-fun map!16436 ((Set A!653) Int) (Set B!3311))

(assert (=> start!693836 (= lt!2562501 (set.union (map!16436 s1!424 f!607) (map!16436 s2!395 f!607)))))

(assert (=> start!693836 e!4280621))

(declare-fun condSetEmpty!51279 () Bool)

(assert (=> start!693836 (= condSetEmpty!51279 (= s1!424 (as set.empty (Set A!653))))))

(assert (=> start!693836 setRes!51278))

(declare-fun e!4280618 () Bool)

(assert (=> start!693836 e!4280618))

(assert (=> start!693836 e!4280620))

(declare-fun condSetEmpty!51278 () Bool)

(assert (=> start!693836 (= condSetEmpty!51278 (= s2!395 (as set.empty (Set A!653))))))

(assert (=> start!693836 setRes!51279))

(assert (=> start!693836 tp!1961667))

(declare-fun b!7123483 () Bool)

(declare-fun tp!1961670 () Bool)

(assert (=> b!7123483 (= e!4280618 (and tp_is_empty!45459 tp!1961670))))

(declare-fun b!7123484 () Bool)

(assert (=> b!7123484 (= e!4280621 e!4280619)))

(declare-fun res!2906458 () Bool)

(assert (=> b!7123484 (=> (not res!2906458) (not e!4280619))))

(declare-fun subseq!764 (List!69025 List!69025) Bool)

(assert (=> b!7123484 (= res!2906458 (subseq!764 l2!759 lt!2562502))))

(assert (=> b!7123484 (= lt!2562502 (toList!11128 lt!2562497))))

(assert (=> b!7123484 (= lt!2562497 (map!16436 (set.union s1!424 s2!395) f!607))))

(declare-fun setNonEmpty!51278 () Bool)

(declare-fun tp!1961668 () Bool)

(declare-fun tp_is_empty!45457 () Bool)

(assert (=> setNonEmpty!51278 (= setRes!51279 (and tp!1961668 tp_is_empty!45457))))

(declare-fun setElem!51278 () A!653)

(declare-fun setRest!51279 () (Set A!653))

(assert (=> setNonEmpty!51278 (= s2!395 (set.union (set.insert setElem!51278 (as set.empty (Set A!653))) setRest!51279))))

(declare-fun setNonEmpty!51279 () Bool)

(declare-fun tp!1961669 () Bool)

(assert (=> setNonEmpty!51279 (= setRes!51278 (and tp!1961669 tp_is_empty!45457))))

(declare-fun setElem!51279 () A!653)

(declare-fun setRest!51278 () (Set A!653))

(assert (=> setNonEmpty!51279 (= s1!424 (set.union (set.insert setElem!51279 (as set.empty (Set A!653))) setRest!51278))))

(assert (= (and start!693836 res!2906459) b!7123484))

(assert (= (and b!7123484 res!2906458) b!7123481))

(assert (= (and b!7123481 res!2906457) b!7123480))

(assert (= (and start!693836 condSetEmpty!51279) setIsEmpty!51278))

(assert (= (and start!693836 (not condSetEmpty!51279)) setNonEmpty!51279))

(assert (= (and start!693836 (is-Cons!68901 l2!759)) b!7123483))

(assert (= (and start!693836 (is-Cons!68901 l1!770)) b!7123482))

(assert (= (and start!693836 condSetEmpty!51278) setIsEmpty!51279))

(assert (= (and start!693836 (not condSetEmpty!51278)) setNonEmpty!51278))

(declare-fun m!7840766 () Bool)

(assert (=> b!7123480 m!7840766))

(declare-fun m!7840768 () Bool)

(assert (=> b!7123480 m!7840768))

(declare-fun m!7840770 () Bool)

(assert (=> b!7123480 m!7840770))

(declare-fun m!7840772 () Bool)

(assert (=> b!7123480 m!7840772))

(declare-fun m!7840774 () Bool)

(assert (=> b!7123480 m!7840774))

(declare-fun m!7840776 () Bool)

(assert (=> b!7123480 m!7840776))

(declare-fun m!7840778 () Bool)

(assert (=> b!7123480 m!7840778))

(declare-fun m!7840780 () Bool)

(assert (=> b!7123480 m!7840780))

(declare-fun m!7840782 () Bool)

(assert (=> start!693836 m!7840782))

(declare-fun m!7840784 () Bool)

(assert (=> start!693836 m!7840784))

(declare-fun m!7840786 () Bool)

(assert (=> start!693836 m!7840786))

(declare-fun m!7840788 () Bool)

(assert (=> b!7123484 m!7840788))

(declare-fun m!7840790 () Bool)

(assert (=> b!7123484 m!7840790))

(declare-fun m!7840792 () Bool)

(assert (=> b!7123484 m!7840792))

(push 1)

(assert (not b_next!134537))

(assert (not setNonEmpty!51279))

(assert tp_is_empty!45459)

(assert (not b!7123482))

(assert b_and!350843)

(assert (not b!7123480))

(assert (not b!7123483))

(assert tp_is_empty!45457)

(assert (not setNonEmpty!51278))

(assert (not b!7123484))

(assert (not start!693836))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350843)

(assert (not b_next!134537))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2223000 () Bool)

(declare-fun res!2906473 () Bool)

(declare-fun e!4280638 () Bool)

(assert (=> d!2223000 (=> res!2906473 e!4280638)))

(assert (=> d!2223000 (= res!2906473 (is-Nil!68901 l2!759))))

(assert (=> d!2223000 (= (forall!16898 l2!759 lambda!432934) e!4280638)))

(declare-fun b!7123508 () Bool)

(declare-fun e!4280639 () Bool)

(assert (=> b!7123508 (= e!4280638 e!4280639)))

(declare-fun res!2906474 () Bool)

(assert (=> b!7123508 (=> (not res!2906474) (not e!4280639))))

(declare-fun dynLambda!28082 (Int B!3311) Bool)

(assert (=> b!7123508 (= res!2906474 (dynLambda!28082 lambda!432934 (h!75349 l2!759)))))

(declare-fun b!7123509 () Bool)

(assert (=> b!7123509 (= e!4280639 (forall!16898 (t!382936 l2!759) lambda!432934))))

(assert (= (and d!2223000 (not res!2906473)) b!7123508))

(assert (= (and b!7123508 res!2906474) b!7123509))

(declare-fun b_lambda!271741 () Bool)

(assert (=> (not b_lambda!271741) (not b!7123508)))

(declare-fun m!7840822 () Bool)

(assert (=> b!7123508 m!7840822))

(assert (=> b!7123509 m!7840776))

(assert (=> b!7123480 d!2223000))

(declare-fun bs!1886151 () Bool)

(declare-fun d!2223002 () Bool)

(assert (= bs!1886151 (and d!2223002 b!7123480)))

(declare-fun lambda!432942 () Int)

(assert (=> bs!1886151 (= lambda!432942 lambda!432934)))

(assert (=> d!2223002 true))

(assert (=> d!2223002 (forall!16898 (t!382936 l2!759) lambda!432942)))

(declare-fun lt!2562526 () Unit!162769)

(declare-fun choose!55040 ((Set A!653) (Set A!653) Int List!69025 List!69025) Unit!162769)

(assert (=> d!2223002 (= lt!2562526 (choose!55040 s1!424 s2!395 f!607 l1!770 (t!382936 l2!759)))))

(assert (=> d!2223002 (= l1!770 (toList!11128 (set.union (map!16436 s1!424 f!607) (map!16436 s2!395 f!607))))))

(assert (=> d!2223002 (= (lemmaMapAssociativeToList2!15 s1!424 s2!395 f!607 l1!770 (t!382936 l2!759)) lt!2562526)))

(declare-fun bs!1886152 () Bool)

(assert (= bs!1886152 d!2223002))

(assert (=> bs!1886152 m!7840786))

(declare-fun m!7840824 () Bool)

(assert (=> bs!1886152 m!7840824))

(assert (=> bs!1886152 m!7840784))

(declare-fun m!7840826 () Bool)

(assert (=> bs!1886152 m!7840826))

(declare-fun m!7840828 () Bool)

(assert (=> bs!1886152 m!7840828))

(assert (=> b!7123480 d!2223002))

(declare-fun b!7123524 () Bool)

(declare-fun e!4280648 () Unit!162769)

(declare-fun e!4280651 () Unit!162769)

(assert (=> b!7123524 (= e!4280648 e!4280651)))

(declare-fun c!1329154 () Bool)

(assert (=> b!7123524 (= c!1329154 (subseq!764 l2!759 (t!382936 lt!2562502)))))

(declare-fun b!7123525 () Bool)

(declare-fun call!650779 () Unit!162769)

(assert (=> b!7123525 (= e!4280651 call!650779)))

(declare-fun b!7123526 () Bool)

(declare-fun Unit!162773 () Unit!162769)

(assert (=> b!7123526 (= e!4280648 Unit!162773)))

(declare-fun b!7123527 () Bool)

(declare-fun e!4280649 () Unit!162769)

(declare-fun Unit!162774 () Unit!162769)

(assert (=> b!7123527 (= e!4280649 Unit!162774)))

(declare-fun b!7123528 () Bool)

(declare-fun c!1329153 () Bool)

(declare-fun isEmpty!40013 (List!69025) Bool)

(assert (=> b!7123528 (= c!1329153 (not (isEmpty!40013 (t!382936 l2!759))))))

(assert (=> b!7123528 (= e!4280651 e!4280649)))

(declare-fun d!2223004 () Bool)

(declare-fun tail!13929 (List!69025) List!69025)

(assert (=> d!2223004 (subseq!764 (tail!13929 l2!759) lt!2562502)))

(declare-fun lt!2562529 () Unit!162769)

(assert (=> d!2223004 (= lt!2562529 e!4280648)))

(declare-fun c!1329152 () Bool)

(assert (=> d!2223004 (= c!1329152 (and (is-Cons!68901 l2!759) (is-Cons!68901 lt!2562502)))))

(declare-fun e!4280650 () Bool)

(assert (=> d!2223004 e!4280650))

(declare-fun res!2906477 () Bool)

(assert (=> d!2223004 (=> (not res!2906477) (not e!4280650))))

(assert (=> d!2223004 (= res!2906477 (not (isEmpty!40013 l2!759)))))

(assert (=> d!2223004 (= (subseqTail!37 l2!759 lt!2562502) lt!2562529)))

(declare-fun b!7123529 () Bool)

(assert (=> b!7123529 (= e!4280649 call!650779)))

(declare-fun b!7123530 () Bool)

(assert (=> b!7123530 (= e!4280650 (subseq!764 l2!759 lt!2562502))))

(declare-fun bm!650774 () Bool)

(assert (=> bm!650774 (= call!650779 (subseqTail!37 (ite c!1329154 l2!759 (t!382936 l2!759)) (t!382936 lt!2562502)))))

(assert (= (and d!2223004 res!2906477) b!7123530))

(assert (= (and d!2223004 c!1329152) b!7123524))

(assert (= (and d!2223004 (not c!1329152)) b!7123526))

(assert (= (and b!7123524 c!1329154) b!7123525))

(assert (= (and b!7123524 (not c!1329154)) b!7123528))

(assert (= (and b!7123528 c!1329153) b!7123529))

(assert (= (and b!7123528 (not c!1329153)) b!7123527))

(assert (= (or b!7123525 b!7123529) bm!650774))

(declare-fun m!7840830 () Bool)

(assert (=> bm!650774 m!7840830))

(declare-fun m!7840832 () Bool)

(assert (=> d!2223004 m!7840832))

(assert (=> d!2223004 m!7840832))

(declare-fun m!7840834 () Bool)

(assert (=> d!2223004 m!7840834))

(declare-fun m!7840836 () Bool)

(assert (=> d!2223004 m!7840836))

(declare-fun m!7840838 () Bool)

(assert (=> b!7123528 m!7840838))

(assert (=> b!7123530 m!7840788))

(declare-fun m!7840840 () Bool)

(assert (=> b!7123524 m!7840840))

(assert (=> b!7123480 d!2223004))

(declare-fun d!2223008 () Bool)

(declare-fun res!2906478 () Bool)

(declare-fun e!4280652 () Bool)

(assert (=> d!2223008 (=> res!2906478 e!4280652)))

(assert (=> d!2223008 (= res!2906478 (is-Nil!68901 (t!382936 l2!759)))))

(assert (=> d!2223008 (= (forall!16898 (t!382936 l2!759) lambda!432934) e!4280652)))

(declare-fun b!7123531 () Bool)

(declare-fun e!4280653 () Bool)

(assert (=> b!7123531 (= e!4280652 e!4280653)))

(declare-fun res!2906479 () Bool)

(assert (=> b!7123531 (=> (not res!2906479) (not e!4280653))))

(assert (=> b!7123531 (= res!2906479 (dynLambda!28082 lambda!432934 (h!75349 (t!382936 l2!759))))))

(declare-fun b!7123532 () Bool)

(assert (=> b!7123532 (= e!4280653 (forall!16898 (t!382936 (t!382936 l2!759)) lambda!432934))))

(assert (= (and d!2223008 (not res!2906478)) b!7123531))

(assert (= (and b!7123531 res!2906479) b!7123532))

(declare-fun b_lambda!271743 () Bool)

(assert (=> (not b_lambda!271743) (not b!7123531)))

(declare-fun m!7840842 () Bool)

(assert (=> b!7123531 m!7840842))

(declare-fun m!7840844 () Bool)

(assert (=> b!7123532 m!7840844))

(assert (=> b!7123480 d!2223008))

(declare-fun d!2223010 () Bool)

(declare-fun contains!20529 (List!69025 B!3311) Bool)

(assert (=> d!2223010 (contains!20529 lt!2562502 (h!75349 l2!759))))

(declare-fun lt!2562532 () Unit!162769)

(declare-fun choose!55041 (List!69025 List!69025 B!3311) Unit!162769)

(assert (=> d!2223010 (= lt!2562532 (choose!55041 l2!759 lt!2562502 (h!75349 l2!759)))))

(declare-fun e!4280656 () Bool)

(assert (=> d!2223010 e!4280656))

(declare-fun res!2906482 () Bool)

(assert (=> d!2223010 (=> (not res!2906482) (not e!4280656))))

(assert (=> d!2223010 (= res!2906482 (subseq!764 l2!759 lt!2562502))))

(assert (=> d!2223010 (= (subseqContains!25 l2!759 lt!2562502 (h!75349 l2!759)) lt!2562532)))

(declare-fun b!7123535 () Bool)

(assert (=> b!7123535 (= e!4280656 (contains!20529 l2!759 (h!75349 l2!759)))))

(assert (= (and d!2223010 res!2906482) b!7123535))

(declare-fun m!7840846 () Bool)

(assert (=> d!2223010 m!7840846))

(declare-fun m!7840848 () Bool)

(assert (=> d!2223010 m!7840848))

(assert (=> d!2223010 m!7840788))

(declare-fun m!7840850 () Bool)

(assert (=> b!7123535 m!7840850))

(assert (=> b!7123480 d!2223010))

(declare-fun d!2223012 () Bool)

(assert (=> d!2223012 (= (set.member (h!75349 l2!759) (set.union (map!16436 s1!424 f!607) (map!16436 s2!395 f!607))) (set.member (h!75349 l2!759) (map!16436 (set.union s1!424 s2!395) f!607)))))

(declare-fun lt!2562535 () Unit!162769)

(declare-fun choose!55042 ((Set A!653) (Set A!653) Int B!3311) Unit!162769)

(assert (=> d!2223012 (= lt!2562535 (choose!55042 s1!424 s2!395 f!607 (h!75349 l2!759)))))

(assert (=> d!2223012 (= (lemmaMapAssociativeElem!25 s1!424 s2!395 f!607 (h!75349 l2!759)) lt!2562535)))

(declare-fun bs!1886153 () Bool)

(assert (= bs!1886153 d!2223012))

(assert (=> bs!1886153 m!7840784))

(declare-fun m!7840852 () Bool)

(assert (=> bs!1886153 m!7840852))

(assert (=> bs!1886153 m!7840786))

(declare-fun m!7840854 () Bool)

(assert (=> bs!1886153 m!7840854))

(assert (=> bs!1886153 m!7840792))

(declare-fun m!7840856 () Bool)

(assert (=> bs!1886153 m!7840856))

(assert (=> b!7123480 d!2223012))

(declare-fun b!7123559 () Bool)

(declare-fun e!4280677 () Bool)

(assert (=> b!7123559 (= e!4280677 (subseq!764 (t!382936 l2!759) (t!382936 lt!2562502)))))

(declare-fun b!7123557 () Bool)

(declare-fun e!4280680 () Bool)

(declare-fun e!4280679 () Bool)

(assert (=> b!7123557 (= e!4280680 e!4280679)))

(declare-fun res!2906503 () Bool)

(assert (=> b!7123557 (=> (not res!2906503) (not e!4280679))))

(assert (=> b!7123557 (= res!2906503 (is-Cons!68901 lt!2562502))))

(declare-fun b!7123558 () Bool)

(declare-fun e!4280678 () Bool)

(assert (=> b!7123558 (= e!4280679 e!4280678)))

(declare-fun res!2906504 () Bool)

(assert (=> b!7123558 (=> res!2906504 e!4280678)))

(assert (=> b!7123558 (= res!2906504 e!4280677)))

(declare-fun res!2906505 () Bool)

(assert (=> b!7123558 (=> (not res!2906505) (not e!4280677))))

(assert (=> b!7123558 (= res!2906505 (= (h!75349 l2!759) (h!75349 lt!2562502)))))

(declare-fun b!7123560 () Bool)

(assert (=> b!7123560 (= e!4280678 (subseq!764 l2!759 (t!382936 lt!2562502)))))

(declare-fun d!2223014 () Bool)

(declare-fun res!2906506 () Bool)

(assert (=> d!2223014 (=> res!2906506 e!4280680)))

(assert (=> d!2223014 (= res!2906506 (is-Nil!68901 l2!759))))

(assert (=> d!2223014 (= (subseq!764 l2!759 lt!2562502) e!4280680)))

(assert (= (and d!2223014 (not res!2906506)) b!7123557))

(assert (= (and b!7123557 res!2906503) b!7123558))

(assert (= (and b!7123558 res!2906505) b!7123559))

(assert (= (and b!7123558 (not res!2906504)) b!7123560))

(declare-fun m!7840862 () Bool)

(assert (=> b!7123559 m!7840862))

(assert (=> b!7123560 m!7840840))

(assert (=> b!7123484 d!2223014))

(declare-fun d!2223018 () Bool)

(declare-fun e!4280685 () Bool)

(assert (=> d!2223018 e!4280685))

(declare-fun res!2906511 () Bool)

(assert (=> d!2223018 (=> (not res!2906511) (not e!4280685))))

(declare-fun lt!2562540 () List!69025)

(declare-fun noDuplicate!2800 (List!69025) Bool)

(assert (=> d!2223018 (= res!2906511 (noDuplicate!2800 lt!2562540))))

(declare-fun choose!55043 ((Set B!3311)) List!69025)

(assert (=> d!2223018 (= lt!2562540 (choose!55043 lt!2562497))))

(assert (=> d!2223018 (= (toList!11128 lt!2562497) lt!2562540)))

(declare-fun b!7123565 () Bool)

(declare-fun content!14099 (List!69025) (Set B!3311))

(assert (=> b!7123565 (= e!4280685 (= (content!14099 lt!2562540) lt!2562497))))

(assert (= (and d!2223018 res!2906511) b!7123565))

(declare-fun m!7840864 () Bool)

(assert (=> d!2223018 m!7840864))

(declare-fun m!7840866 () Bool)

(assert (=> d!2223018 m!7840866))

(declare-fun m!7840868 () Bool)

(assert (=> b!7123565 m!7840868))

(assert (=> b!7123484 d!2223018))

(declare-fun d!2223020 () Bool)

(declare-fun choose!55044 ((Set A!653) Int) (Set B!3311))

(assert (=> d!2223020 (= (map!16436 (set.union s1!424 s2!395) f!607) (choose!55044 (set.union s1!424 s2!395) f!607))))

(declare-fun bs!1886154 () Bool)

(assert (= bs!1886154 d!2223020))

(declare-fun m!7840870 () Bool)

(assert (=> bs!1886154 m!7840870))

(assert (=> b!7123484 d!2223020))

(declare-fun d!2223022 () Bool)

(declare-fun e!4280686 () Bool)

(assert (=> d!2223022 e!4280686))

(declare-fun res!2906512 () Bool)

(assert (=> d!2223022 (=> (not res!2906512) (not e!4280686))))

(declare-fun lt!2562541 () List!69025)

(assert (=> d!2223022 (= res!2906512 (noDuplicate!2800 lt!2562541))))

(assert (=> d!2223022 (= lt!2562541 (choose!55043 lt!2562501))))

(assert (=> d!2223022 (= (toList!11128 lt!2562501) lt!2562541)))

(declare-fun b!7123566 () Bool)

(assert (=> b!7123566 (= e!4280686 (= (content!14099 lt!2562541) lt!2562501))))

(assert (= (and d!2223022 res!2906512) b!7123566))

(declare-fun m!7840872 () Bool)

(assert (=> d!2223022 m!7840872))

(declare-fun m!7840874 () Bool)

(assert (=> d!2223022 m!7840874))

(declare-fun m!7840876 () Bool)

(assert (=> b!7123566 m!7840876))

(assert (=> start!693836 d!2223022))

(declare-fun d!2223024 () Bool)

(assert (=> d!2223024 (= (map!16436 s1!424 f!607) (choose!55044 s1!424 f!607))))

(declare-fun bs!1886155 () Bool)

(assert (= bs!1886155 d!2223024))

(declare-fun m!7840878 () Bool)

(assert (=> bs!1886155 m!7840878))

(assert (=> start!693836 d!2223024))

(declare-fun d!2223026 () Bool)

(assert (=> d!2223026 (= (map!16436 s2!395 f!607) (choose!55044 s2!395 f!607))))

(declare-fun bs!1886156 () Bool)

(assert (= bs!1886156 d!2223026))

(declare-fun m!7840880 () Bool)

(assert (=> bs!1886156 m!7840880))

(assert (=> start!693836 d!2223026))

(declare-fun condSetEmpty!51288 () Bool)

(assert (=> setNonEmpty!51279 (= condSetEmpty!51288 (= setRest!51278 (as set.empty (Set A!653))))))

(declare-fun setRes!51288 () Bool)

(assert (=> setNonEmpty!51279 (= tp!1961669 setRes!51288)))

(declare-fun setIsEmpty!51288 () Bool)

(assert (=> setIsEmpty!51288 setRes!51288))

(declare-fun setNonEmpty!51288 () Bool)

(declare-fun tp!1961688 () Bool)

(assert (=> setNonEmpty!51288 (= setRes!51288 (and tp!1961688 tp_is_empty!45457))))

(declare-fun setElem!51288 () A!653)

(declare-fun setRest!51288 () (Set A!653))

(assert (=> setNonEmpty!51288 (= setRest!51278 (set.union (set.insert setElem!51288 (as set.empty (Set A!653))) setRest!51288))))

(assert (= (and setNonEmpty!51279 condSetEmpty!51288) setIsEmpty!51288))

(assert (= (and setNonEmpty!51279 (not condSetEmpty!51288)) setNonEmpty!51288))

(declare-fun condSetEmpty!51289 () Bool)

(assert (=> setNonEmpty!51278 (= condSetEmpty!51289 (= setRest!51279 (as set.empty (Set A!653))))))

(declare-fun setRes!51289 () Bool)

(assert (=> setNonEmpty!51278 (= tp!1961668 setRes!51289)))

(declare-fun setIsEmpty!51289 () Bool)

(assert (=> setIsEmpty!51289 setRes!51289))

(declare-fun setNonEmpty!51289 () Bool)

(declare-fun tp!1961689 () Bool)

(assert (=> setNonEmpty!51289 (= setRes!51289 (and tp!1961689 tp_is_empty!45457))))

(declare-fun setElem!51289 () A!653)

(declare-fun setRest!51289 () (Set A!653))

(assert (=> setNonEmpty!51289 (= setRest!51279 (set.union (set.insert setElem!51289 (as set.empty (Set A!653))) setRest!51289))))

(assert (= (and setNonEmpty!51278 condSetEmpty!51289) setIsEmpty!51289))

(assert (= (and setNonEmpty!51278 (not condSetEmpty!51289)) setNonEmpty!51289))

(declare-fun b!7123574 () Bool)

(declare-fun e!4280690 () Bool)

(declare-fun tp!1961692 () Bool)

(assert (=> b!7123574 (= e!4280690 (and tp_is_empty!45459 tp!1961692))))

(assert (=> b!7123482 (= tp!1961666 e!4280690)))

(assert (= (and b!7123482 (is-Cons!68901 (t!382936 l1!770))) b!7123574))

(declare-fun b!7123575 () Bool)

(declare-fun e!4280691 () Bool)

(declare-fun tp!1961693 () Bool)

(assert (=> b!7123575 (= e!4280691 (and tp_is_empty!45459 tp!1961693))))

(assert (=> b!7123483 (= tp!1961670 e!4280691)))

(assert (= (and b!7123483 (is-Cons!68901 (t!382936 l2!759))) b!7123575))

(declare-fun b_lambda!271745 () Bool)

(assert (= b_lambda!271741 (or b!7123480 b_lambda!271745)))

(declare-fun bs!1886157 () Bool)

(declare-fun d!2223030 () Bool)

(assert (= bs!1886157 (and d!2223030 b!7123480)))

(assert (=> bs!1886157 (= (dynLambda!28082 lambda!432934 (h!75349 l2!759)) (contains!20529 l1!770 (h!75349 l2!759)))))

(declare-fun m!7840890 () Bool)

(assert (=> bs!1886157 m!7840890))

(assert (=> b!7123508 d!2223030))

(declare-fun b_lambda!271747 () Bool)

(assert (= b_lambda!271743 (or b!7123480 b_lambda!271747)))

(declare-fun bs!1886159 () Bool)

(declare-fun d!2223032 () Bool)

(assert (= bs!1886159 (and d!2223032 b!7123480)))

(assert (=> bs!1886159 (= (dynLambda!28082 lambda!432934 (h!75349 (t!382936 l2!759))) (contains!20529 l1!770 (h!75349 (t!382936 l2!759))))))

(declare-fun m!7840892 () Bool)

(assert (=> bs!1886159 m!7840892))

(assert (=> b!7123531 d!2223032))

(push 1)

(assert (not d!2223020))

(assert (not b!7123535))

(assert (not b_next!134537))

(assert (not d!2223022))

(assert (not bs!1886159))

(assert (not b!7123532))

(assert tp_is_empty!45457)

(assert (not setNonEmpty!51288))

(assert (not d!2223004))

(assert (not d!2223024))

(assert (not b_lambda!271747))

(assert (not d!2223002))

(assert (not b!7123559))

(assert (not b!7123566))

(assert (not d!2223010))

(assert (not b!7123560))

(assert (not b!7123565))

(assert (not b_lambda!271745))

(assert (not b!7123575))

(assert (not bm!650774))

(assert tp_is_empty!45459)

(assert (not b!7123528))

(assert (not bs!1886157))

(assert (not setNonEmpty!51289))

(assert b_and!350843)

(assert (not d!2223012))

(assert (not b!7123530))

(assert (not b!7123524))

(assert (not d!2223026))

(assert (not b!7123574))

(assert (not b!7123509))

(assert (not d!2223018))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350843)

(assert (not b_next!134537))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2223056 () Bool)

(assert (=> d!2223056 (= (isEmpty!40013 (t!382936 l2!759)) (is-Nil!68901 (t!382936 l2!759)))))

(assert (=> b!7123528 d!2223056))

(declare-fun d!2223058 () Bool)

(declare-fun c!1329166 () Bool)

(assert (=> d!2223058 (= c!1329166 (is-Nil!68901 lt!2562541))))

(declare-fun e!4280722 () (Set B!3311))

(assert (=> d!2223058 (= (content!14099 lt!2562541) e!4280722)))

(declare-fun b!7123622 () Bool)

(assert (=> b!7123622 (= e!4280722 (as set.empty (Set B!3311)))))

(declare-fun b!7123623 () Bool)

(assert (=> b!7123623 (= e!4280722 (set.union (set.insert (h!75349 lt!2562541) (as set.empty (Set B!3311))) (content!14099 (t!382936 lt!2562541))))))

(assert (= (and d!2223058 c!1329166) b!7123622))

(assert (= (and d!2223058 (not c!1329166)) b!7123623))

(declare-fun m!7840942 () Bool)

(assert (=> b!7123623 m!7840942))

(declare-fun m!7840944 () Bool)

(assert (=> b!7123623 m!7840944))

(assert (=> b!7123566 d!2223058))

(declare-fun d!2223060 () Bool)

(declare-fun c!1329167 () Bool)

(assert (=> d!2223060 (= c!1329167 (is-Nil!68901 lt!2562540))))

(declare-fun e!4280723 () (Set B!3311))

(assert (=> d!2223060 (= (content!14099 lt!2562540) e!4280723)))

(declare-fun b!7123624 () Bool)

(assert (=> b!7123624 (= e!4280723 (as set.empty (Set B!3311)))))

(declare-fun b!7123625 () Bool)

(assert (=> b!7123625 (= e!4280723 (set.union (set.insert (h!75349 lt!2562540) (as set.empty (Set B!3311))) (content!14099 (t!382936 lt!2562540))))))

(assert (= (and d!2223060 c!1329167) b!7123624))

(assert (= (and d!2223060 (not c!1329167)) b!7123625))

(declare-fun m!7840946 () Bool)

(assert (=> b!7123625 m!7840946))

(declare-fun m!7840948 () Bool)

(assert (=> b!7123625 m!7840948))

(assert (=> b!7123565 d!2223060))

(declare-fun d!2223062 () Bool)

(declare-fun res!2906529 () Bool)

(declare-fun e!4280724 () Bool)

(assert (=> d!2223062 (=> res!2906529 e!4280724)))

(assert (=> d!2223062 (= res!2906529 (is-Nil!68901 (t!382936 l2!759)))))

(assert (=> d!2223062 (= (forall!16898 (t!382936 l2!759) lambda!432942) e!4280724)))

(declare-fun b!7123626 () Bool)

(declare-fun e!4280725 () Bool)

(assert (=> b!7123626 (= e!4280724 e!4280725)))

(declare-fun res!2906530 () Bool)

(assert (=> b!7123626 (=> (not res!2906530) (not e!4280725))))

(assert (=> b!7123626 (= res!2906530 (dynLambda!28082 lambda!432942 (h!75349 (t!382936 l2!759))))))

(declare-fun b!7123627 () Bool)

(assert (=> b!7123627 (= e!4280725 (forall!16898 (t!382936 (t!382936 l2!759)) lambda!432942))))

(assert (= (and d!2223062 (not res!2906529)) b!7123626))

(assert (= (and b!7123626 res!2906530) b!7123627))

(declare-fun b_lambda!271757 () Bool)

(assert (=> (not b_lambda!271757) (not b!7123626)))

(declare-fun m!7840950 () Bool)

(assert (=> b!7123626 m!7840950))

(declare-fun m!7840952 () Bool)

(assert (=> b!7123627 m!7840952))

(assert (=> d!2223002 d!2223062))

(assert (=> d!2223002 d!2223024))

(declare-fun d!2223064 () Bool)

(declare-fun e!4280726 () Bool)

(assert (=> d!2223064 e!4280726))

(declare-fun res!2906531 () Bool)

(assert (=> d!2223064 (=> (not res!2906531) (not e!4280726))))

(declare-fun lt!2562556 () List!69025)

(assert (=> d!2223064 (= res!2906531 (noDuplicate!2800 lt!2562556))))

(assert (=> d!2223064 (= lt!2562556 (choose!55043 (set.union (map!16436 s1!424 f!607) (map!16436 s2!395 f!607))))))

(assert (=> d!2223064 (= (toList!11128 (set.union (map!16436 s1!424 f!607) (map!16436 s2!395 f!607))) lt!2562556)))

(declare-fun b!7123628 () Bool)

(assert (=> b!7123628 (= e!4280726 (= (content!14099 lt!2562556) (set.union (map!16436 s1!424 f!607) (map!16436 s2!395 f!607))))))

(assert (= (and d!2223064 res!2906531) b!7123628))

(declare-fun m!7840954 () Bool)

(assert (=> d!2223064 m!7840954))

(declare-fun m!7840956 () Bool)

(assert (=> d!2223064 m!7840956))

(declare-fun m!7840958 () Bool)

(assert (=> b!7123628 m!7840958))

(assert (=> d!2223002 d!2223064))

(assert (=> d!2223002 d!2223026))

(declare-fun bs!1886167 () Bool)

(declare-fun d!2223066 () Bool)

(assert (= bs!1886167 (and d!2223066 b!7123480)))

(declare-fun lambda!432948 () Int)

(assert (=> bs!1886167 (= lambda!432948 lambda!432934)))

(declare-fun bs!1886168 () Bool)

(assert (= bs!1886168 (and d!2223066 d!2223002)))

(assert (=> bs!1886168 (= lambda!432948 lambda!432942)))

(assert (=> d!2223066 true))

(assert (=> d!2223066 (forall!16898 (t!382936 l2!759) lambda!432948)))

(assert (=> d!2223066 true))

(declare-fun _$7!2518 () Unit!162769)

(assert (=> d!2223066 (= (choose!55040 s1!424 s2!395 f!607 l1!770 (t!382936 l2!759)) _$7!2518)))

(declare-fun bs!1886169 () Bool)

(assert (= bs!1886169 d!2223066))

(declare-fun m!7840960 () Bool)

(assert (=> bs!1886169 m!7840960))

(assert (=> d!2223002 d!2223066))

(declare-fun b!7123629 () Bool)

(declare-fun e!4280727 () Unit!162769)

(declare-fun e!4280730 () Unit!162769)

(assert (=> b!7123629 (= e!4280727 e!4280730)))

(declare-fun c!1329170 () Bool)

(assert (=> b!7123629 (= c!1329170 (subseq!764 (ite c!1329154 l2!759 (t!382936 l2!759)) (t!382936 (t!382936 lt!2562502))))))

(declare-fun b!7123630 () Bool)

(declare-fun call!650783 () Unit!162769)

(assert (=> b!7123630 (= e!4280730 call!650783)))

(declare-fun b!7123631 () Bool)

(declare-fun Unit!162777 () Unit!162769)

(assert (=> b!7123631 (= e!4280727 Unit!162777)))

(declare-fun b!7123632 () Bool)

(declare-fun e!4280728 () Unit!162769)

(declare-fun Unit!162778 () Unit!162769)

(assert (=> b!7123632 (= e!4280728 Unit!162778)))

(declare-fun b!7123633 () Bool)

(declare-fun c!1329169 () Bool)

(assert (=> b!7123633 (= c!1329169 (not (isEmpty!40013 (t!382936 (ite c!1329154 l2!759 (t!382936 l2!759))))))))

(assert (=> b!7123633 (= e!4280730 e!4280728)))

(declare-fun d!2223068 () Bool)

(assert (=> d!2223068 (subseq!764 (tail!13929 (ite c!1329154 l2!759 (t!382936 l2!759))) (t!382936 lt!2562502))))

(declare-fun lt!2562557 () Unit!162769)

(assert (=> d!2223068 (= lt!2562557 e!4280727)))

(declare-fun c!1329168 () Bool)

(assert (=> d!2223068 (= c!1329168 (and (is-Cons!68901 (ite c!1329154 l2!759 (t!382936 l2!759))) (is-Cons!68901 (t!382936 lt!2562502))))))

(declare-fun e!4280729 () Bool)

(assert (=> d!2223068 e!4280729))

(declare-fun res!2906532 () Bool)

(assert (=> d!2223068 (=> (not res!2906532) (not e!4280729))))

(assert (=> d!2223068 (= res!2906532 (not (isEmpty!40013 (ite c!1329154 l2!759 (t!382936 l2!759)))))))

(assert (=> d!2223068 (= (subseqTail!37 (ite c!1329154 l2!759 (t!382936 l2!759)) (t!382936 lt!2562502)) lt!2562557)))

(declare-fun b!7123634 () Bool)

(assert (=> b!7123634 (= e!4280728 call!650783)))

(declare-fun b!7123635 () Bool)

(assert (=> b!7123635 (= e!4280729 (subseq!764 (ite c!1329154 l2!759 (t!382936 l2!759)) (t!382936 lt!2562502)))))

(declare-fun bm!650778 () Bool)

(assert (=> bm!650778 (= call!650783 (subseqTail!37 (ite c!1329170 (ite c!1329154 l2!759 (t!382936 l2!759)) (t!382936 (ite c!1329154 l2!759 (t!382936 l2!759)))) (t!382936 (t!382936 lt!2562502))))))

(assert (= (and d!2223068 res!2906532) b!7123635))

(assert (= (and d!2223068 c!1329168) b!7123629))

(assert (= (and d!2223068 (not c!1329168)) b!7123631))

(assert (= (and b!7123629 c!1329170) b!7123630))

(assert (= (and b!7123629 (not c!1329170)) b!7123633))

(assert (= (and b!7123633 c!1329169) b!7123634))

(assert (= (and b!7123633 (not c!1329169)) b!7123632))

(assert (= (or b!7123630 b!7123634) bm!650778))

(declare-fun m!7840962 () Bool)

(assert (=> bm!650778 m!7840962))

(declare-fun m!7840964 () Bool)

(assert (=> d!2223068 m!7840964))

(assert (=> d!2223068 m!7840964))

(declare-fun m!7840966 () Bool)

(assert (=> d!2223068 m!7840966))

(declare-fun m!7840968 () Bool)

(assert (=> d!2223068 m!7840968))

(declare-fun m!7840970 () Bool)

(assert (=> b!7123633 m!7840970))

(declare-fun m!7840972 () Bool)

(assert (=> b!7123635 m!7840972))

(declare-fun m!7840974 () Bool)

(assert (=> b!7123629 m!7840974))

(assert (=> bm!650774 d!2223068))

(declare-fun b!7123638 () Bool)

(declare-fun e!4280731 () Bool)

(assert (=> b!7123638 (= e!4280731 (subseq!764 (t!382936 (t!382936 l2!759)) (t!382936 (t!382936 lt!2562502))))))

(declare-fun b!7123636 () Bool)

(declare-fun e!4280734 () Bool)

(declare-fun e!4280733 () Bool)

(assert (=> b!7123636 (= e!4280734 e!4280733)))

(declare-fun res!2906533 () Bool)

(assert (=> b!7123636 (=> (not res!2906533) (not e!4280733))))

(assert (=> b!7123636 (= res!2906533 (is-Cons!68901 (t!382936 lt!2562502)))))

(declare-fun b!7123637 () Bool)

(declare-fun e!4280732 () Bool)

(assert (=> b!7123637 (= e!4280733 e!4280732)))

(declare-fun res!2906534 () Bool)

(assert (=> b!7123637 (=> res!2906534 e!4280732)))

(assert (=> b!7123637 (= res!2906534 e!4280731)))

(declare-fun res!2906535 () Bool)

(assert (=> b!7123637 (=> (not res!2906535) (not e!4280731))))

(assert (=> b!7123637 (= res!2906535 (= (h!75349 (t!382936 l2!759)) (h!75349 (t!382936 lt!2562502))))))

(declare-fun b!7123639 () Bool)

(assert (=> b!7123639 (= e!4280732 (subseq!764 (t!382936 l2!759) (t!382936 (t!382936 lt!2562502))))))

(declare-fun d!2223070 () Bool)

(declare-fun res!2906536 () Bool)

(assert (=> d!2223070 (=> res!2906536 e!4280734)))

(assert (=> d!2223070 (= res!2906536 (is-Nil!68901 (t!382936 l2!759)))))

(assert (=> d!2223070 (= (subseq!764 (t!382936 l2!759) (t!382936 lt!2562502)) e!4280734)))

(assert (= (and d!2223070 (not res!2906536)) b!7123636))

(assert (= (and b!7123636 res!2906533) b!7123637))

(assert (= (and b!7123637 res!2906535) b!7123638))

(assert (= (and b!7123637 (not res!2906534)) b!7123639))

(declare-fun m!7840976 () Bool)

(assert (=> b!7123638 m!7840976))

(declare-fun m!7840978 () Bool)

(assert (=> b!7123639 m!7840978))

(assert (=> b!7123559 d!2223070))

(declare-fun b!7123642 () Bool)

(declare-fun e!4280735 () Bool)

(assert (=> b!7123642 (= e!4280735 (subseq!764 (t!382936 (tail!13929 l2!759)) (t!382936 lt!2562502)))))

(declare-fun b!7123640 () Bool)

(declare-fun e!4280738 () Bool)

(declare-fun e!4280737 () Bool)

(assert (=> b!7123640 (= e!4280738 e!4280737)))

(declare-fun res!2906537 () Bool)

(assert (=> b!7123640 (=> (not res!2906537) (not e!4280737))))

(assert (=> b!7123640 (= res!2906537 (is-Cons!68901 lt!2562502))))

(declare-fun b!7123641 () Bool)

(declare-fun e!4280736 () Bool)

(assert (=> b!7123641 (= e!4280737 e!4280736)))

(declare-fun res!2906538 () Bool)

(assert (=> b!7123641 (=> res!2906538 e!4280736)))

(assert (=> b!7123641 (= res!2906538 e!4280735)))

(declare-fun res!2906539 () Bool)

(assert (=> b!7123641 (=> (not res!2906539) (not e!4280735))))

(assert (=> b!7123641 (= res!2906539 (= (h!75349 (tail!13929 l2!759)) (h!75349 lt!2562502)))))

(declare-fun b!7123643 () Bool)

(assert (=> b!7123643 (= e!4280736 (subseq!764 (tail!13929 l2!759) (t!382936 lt!2562502)))))

(declare-fun d!2223072 () Bool)

(declare-fun res!2906540 () Bool)

(assert (=> d!2223072 (=> res!2906540 e!4280738)))

(assert (=> d!2223072 (= res!2906540 (is-Nil!68901 (tail!13929 l2!759)))))

(assert (=> d!2223072 (= (subseq!764 (tail!13929 l2!759) lt!2562502) e!4280738)))

(assert (= (and d!2223072 (not res!2906540)) b!7123640))

(assert (= (and b!7123640 res!2906537) b!7123641))

(assert (= (and b!7123641 res!2906539) b!7123642))

(assert (= (and b!7123641 (not res!2906538)) b!7123643))

(declare-fun m!7840980 () Bool)

(assert (=> b!7123642 m!7840980))

(assert (=> b!7123643 m!7840832))

(declare-fun m!7840982 () Bool)

(assert (=> b!7123643 m!7840982))

(assert (=> d!2223004 d!2223072))

(declare-fun d!2223074 () Bool)

(assert (=> d!2223074 (= (tail!13929 l2!759) (t!382936 l2!759))))

(assert (=> d!2223004 d!2223074))

(declare-fun d!2223076 () Bool)

(assert (=> d!2223076 (= (isEmpty!40013 l2!759) (is-Nil!68901 l2!759))))

(assert (=> d!2223004 d!2223076))

(declare-fun d!2223078 () Bool)

(declare-fun lt!2562560 () Bool)

(assert (=> d!2223078 (= lt!2562560 (set.member (h!75349 l2!759) (content!14099 lt!2562502)))))

(declare-fun e!4280744 () Bool)

(assert (=> d!2223078 (= lt!2562560 e!4280744)))

(declare-fun res!2906546 () Bool)

(assert (=> d!2223078 (=> (not res!2906546) (not e!4280744))))

(assert (=> d!2223078 (= res!2906546 (is-Cons!68901 lt!2562502))))

(assert (=> d!2223078 (= (contains!20529 lt!2562502 (h!75349 l2!759)) lt!2562560)))

(declare-fun b!7123648 () Bool)

(declare-fun e!4280743 () Bool)

(assert (=> b!7123648 (= e!4280744 e!4280743)))

(declare-fun res!2906545 () Bool)

(assert (=> b!7123648 (=> res!2906545 e!4280743)))

(assert (=> b!7123648 (= res!2906545 (= (h!75349 lt!2562502) (h!75349 l2!759)))))

(declare-fun b!7123649 () Bool)

(assert (=> b!7123649 (= e!4280743 (contains!20529 (t!382936 lt!2562502) (h!75349 l2!759)))))

(assert (= (and d!2223078 res!2906546) b!7123648))

(assert (= (and b!7123648 (not res!2906545)) b!7123649))

(declare-fun m!7840984 () Bool)

(assert (=> d!2223078 m!7840984))

(declare-fun m!7840986 () Bool)

(assert (=> d!2223078 m!7840986))

(declare-fun m!7840988 () Bool)

(assert (=> b!7123649 m!7840988))

(assert (=> d!2223010 d!2223078))

(declare-fun d!2223080 () Bool)

(assert (=> d!2223080 (contains!20529 lt!2562502 (h!75349 l2!759))))

(assert (=> d!2223080 true))

(declare-fun _$10!230 () Unit!162769)

(assert (=> d!2223080 (= (choose!55041 l2!759 lt!2562502 (h!75349 l2!759)) _$10!230)))

(declare-fun bs!1886170 () Bool)

(assert (= bs!1886170 d!2223080))

(assert (=> bs!1886170 m!7840846))

(assert (=> d!2223010 d!2223080))

(assert (=> d!2223010 d!2223014))

(assert (=> b!7123530 d!2223014))

(declare-fun b!7123652 () Bool)

(declare-fun e!4280745 () Bool)

(assert (=> b!7123652 (= e!4280745 (subseq!764 (t!382936 l2!759) (t!382936 (t!382936 lt!2562502))))))

(declare-fun b!7123650 () Bool)

(declare-fun e!4280748 () Bool)

(declare-fun e!4280747 () Bool)

(assert (=> b!7123650 (= e!4280748 e!4280747)))

(declare-fun res!2906547 () Bool)

(assert (=> b!7123650 (=> (not res!2906547) (not e!4280747))))

(assert (=> b!7123650 (= res!2906547 (is-Cons!68901 (t!382936 lt!2562502)))))

(declare-fun b!7123651 () Bool)

(declare-fun e!4280746 () Bool)

(assert (=> b!7123651 (= e!4280747 e!4280746)))

(declare-fun res!2906548 () Bool)

(assert (=> b!7123651 (=> res!2906548 e!4280746)))

(assert (=> b!7123651 (= res!2906548 e!4280745)))

(declare-fun res!2906549 () Bool)

(assert (=> b!7123651 (=> (not res!2906549) (not e!4280745))))

(assert (=> b!7123651 (= res!2906549 (= (h!75349 l2!759) (h!75349 (t!382936 lt!2562502))))))

(declare-fun b!7123653 () Bool)

(assert (=> b!7123653 (= e!4280746 (subseq!764 l2!759 (t!382936 (t!382936 lt!2562502))))))

(declare-fun d!2223082 () Bool)

(declare-fun res!2906550 () Bool)

(assert (=> d!2223082 (=> res!2906550 e!4280748)))

(assert (=> d!2223082 (= res!2906550 (is-Nil!68901 l2!759))))

(assert (=> d!2223082 (= (subseq!764 l2!759 (t!382936 lt!2562502)) e!4280748)))

(assert (= (and d!2223082 (not res!2906550)) b!7123650))

(assert (= (and b!7123650 res!2906547) b!7123651))

(assert (= (and b!7123651 res!2906549) b!7123652))

(assert (= (and b!7123651 (not res!2906548)) b!7123653))

(assert (=> b!7123652 m!7840978))

(declare-fun m!7840990 () Bool)

(assert (=> b!7123653 m!7840990))

(assert (=> b!7123560 d!2223082))

(declare-fun d!2223084 () Bool)

(declare-fun lt!2562561 () Bool)

(assert (=> d!2223084 (= lt!2562561 (set.member (h!75349 l2!759) (content!14099 l1!770)))))

(declare-fun e!4280750 () Bool)

(assert (=> d!2223084 (= lt!2562561 e!4280750)))

(declare-fun res!2906552 () Bool)

(assert (=> d!2223084 (=> (not res!2906552) (not e!4280750))))

(assert (=> d!2223084 (= res!2906552 (is-Cons!68901 l1!770))))

(assert (=> d!2223084 (= (contains!20529 l1!770 (h!75349 l2!759)) lt!2562561)))

(declare-fun b!7123654 () Bool)

(declare-fun e!4280749 () Bool)

(assert (=> b!7123654 (= e!4280750 e!4280749)))

(declare-fun res!2906551 () Bool)

(assert (=> b!7123654 (=> res!2906551 e!4280749)))

(assert (=> b!7123654 (= res!2906551 (= (h!75349 l1!770) (h!75349 l2!759)))))

(declare-fun b!7123655 () Bool)

(assert (=> b!7123655 (= e!4280749 (contains!20529 (t!382936 l1!770) (h!75349 l2!759)))))

(assert (= (and d!2223084 res!2906552) b!7123654))

(assert (= (and b!7123654 (not res!2906551)) b!7123655))

(declare-fun m!7840992 () Bool)

(assert (=> d!2223084 m!7840992))

(declare-fun m!7840994 () Bool)

(assert (=> d!2223084 m!7840994))

(declare-fun m!7840996 () Bool)

(assert (=> b!7123655 m!7840996))

(assert (=> bs!1886157 d!2223084))

(declare-fun d!2223086 () Bool)

(declare-fun res!2906557 () Bool)

(declare-fun e!4280755 () Bool)

(assert (=> d!2223086 (=> res!2906557 e!4280755)))

(assert (=> d!2223086 (= res!2906557 (is-Nil!68901 lt!2562540))))

(assert (=> d!2223086 (= (noDuplicate!2800 lt!2562540) e!4280755)))

(declare-fun b!7123660 () Bool)

(declare-fun e!4280756 () Bool)

(assert (=> b!7123660 (= e!4280755 e!4280756)))

(declare-fun res!2906558 () Bool)

(assert (=> b!7123660 (=> (not res!2906558) (not e!4280756))))

(assert (=> b!7123660 (= res!2906558 (not (contains!20529 (t!382936 lt!2562540) (h!75349 lt!2562540))))))

(declare-fun b!7123661 () Bool)

(assert (=> b!7123661 (= e!4280756 (noDuplicate!2800 (t!382936 lt!2562540)))))

(assert (= (and d!2223086 (not res!2906557)) b!7123660))

(assert (= (and b!7123660 res!2906558) b!7123661))

(declare-fun m!7840998 () Bool)

(assert (=> b!7123660 m!7840998))

(declare-fun m!7841000 () Bool)

(assert (=> b!7123661 m!7841000))

(assert (=> d!2223018 d!2223086))

(declare-fun d!2223088 () Bool)

(declare-fun e!4280761 () Bool)

(assert (=> d!2223088 e!4280761))

(declare-fun res!2906564 () Bool)

(assert (=> d!2223088 (=> (not res!2906564) (not e!4280761))))

(declare-fun res!2906563 () List!69025)

(assert (=> d!2223088 (= res!2906564 (noDuplicate!2800 res!2906563))))

(declare-fun e!4280762 () Bool)

(assert (=> d!2223088 e!4280762))

(assert (=> d!2223088 (= (choose!55043 lt!2562497) res!2906563)))

(declare-fun b!7123666 () Bool)

(declare-fun tp!1961704 () Bool)

(assert (=> b!7123666 (= e!4280762 (and tp_is_empty!45459 tp!1961704))))

(declare-fun b!7123667 () Bool)

(assert (=> b!7123667 (= e!4280761 (= (content!14099 res!2906563) lt!2562497))))

(assert (= (and d!2223088 (is-Cons!68901 res!2906563)) b!7123666))

(assert (= (and d!2223088 res!2906564) b!7123667))

(declare-fun m!7841002 () Bool)

(assert (=> d!2223088 m!7841002))

(declare-fun m!7841004 () Bool)

(assert (=> b!7123667 m!7841004))

(assert (=> d!2223018 d!2223088))

(declare-fun d!2223090 () Bool)

(assert (=> d!2223090 true))

(declare-fun setRes!51296 () Bool)

(assert (=> d!2223090 setRes!51296))

(declare-fun condSetEmpty!51296 () Bool)

(declare-fun res!2906567 () (Set B!3311))

(assert (=> d!2223090 (= condSetEmpty!51296 (= res!2906567 (as set.empty (Set B!3311))))))

(assert (=> d!2223090 (= (choose!55044 s2!395 f!607) res!2906567)))

(declare-fun setIsEmpty!51296 () Bool)

(assert (=> setIsEmpty!51296 setRes!51296))

(declare-fun setNonEmpty!51296 () Bool)

(declare-fun tp!1961707 () Bool)

(assert (=> setNonEmpty!51296 (= setRes!51296 (and tp!1961707 tp_is_empty!45459))))

(declare-fun setElem!51296 () B!3311)

(declare-fun setRest!51296 () (Set B!3311))

(assert (=> setNonEmpty!51296 (= res!2906567 (set.union (set.insert setElem!51296 (as set.empty (Set B!3311))) setRest!51296))))

(assert (= (and d!2223090 condSetEmpty!51296) setIsEmpty!51296))

(assert (= (and d!2223090 (not condSetEmpty!51296)) setNonEmpty!51296))

(assert (=> d!2223026 d!2223090))

(assert (=> b!7123509 d!2223008))

(declare-fun d!2223092 () Bool)

(declare-fun res!2906568 () Bool)

(declare-fun e!4280763 () Bool)

(assert (=> d!2223092 (=> res!2906568 e!4280763)))

(assert (=> d!2223092 (= res!2906568 (is-Nil!68901 (t!382936 (t!382936 l2!759))))))

(assert (=> d!2223092 (= (forall!16898 (t!382936 (t!382936 l2!759)) lambda!432934) e!4280763)))

(declare-fun b!7123668 () Bool)

(declare-fun e!4280764 () Bool)

(assert (=> b!7123668 (= e!4280763 e!4280764)))

(declare-fun res!2906569 () Bool)

(assert (=> b!7123668 (=> (not res!2906569) (not e!4280764))))

(assert (=> b!7123668 (= res!2906569 (dynLambda!28082 lambda!432934 (h!75349 (t!382936 (t!382936 l2!759)))))))

(declare-fun b!7123669 () Bool)

(assert (=> b!7123669 (= e!4280764 (forall!16898 (t!382936 (t!382936 (t!382936 l2!759))) lambda!432934))))

(assert (= (and d!2223092 (not res!2906568)) b!7123668))

(assert (= (and b!7123668 res!2906569) b!7123669))

(declare-fun b_lambda!271759 () Bool)

(assert (=> (not b_lambda!271759) (not b!7123668)))

(declare-fun m!7841006 () Bool)

(assert (=> b!7123668 m!7841006))

(declare-fun m!7841008 () Bool)

(assert (=> b!7123669 m!7841008))

(assert (=> b!7123532 d!2223092))

(assert (=> d!2223012 d!2223024))

(assert (=> d!2223012 d!2223026))

(assert (=> d!2223012 d!2223020))

(declare-fun d!2223094 () Bool)

(assert (=> d!2223094 (= (set.member (h!75349 l2!759) (set.union (map!16436 s1!424 f!607) (map!16436 s2!395 f!607))) (set.member (h!75349 l2!759) (map!16436 (set.union s1!424 s2!395) f!607)))))

(assert (=> d!2223094 true))

(declare-fun _$5!305 () Unit!162769)

(assert (=> d!2223094 (= (choose!55042 s1!424 s2!395 f!607 (h!75349 l2!759)) _$5!305)))

(declare-fun bs!1886171 () Bool)

(assert (= bs!1886171 d!2223094))

(assert (=> bs!1886171 m!7840856))

(assert (=> bs!1886171 m!7840792))

(assert (=> bs!1886171 m!7840786))

(assert (=> bs!1886171 m!7840852))

(assert (=> bs!1886171 m!7840784))

(assert (=> d!2223012 d!2223094))

(declare-fun d!2223096 () Bool)

(declare-fun lt!2562562 () Bool)

(assert (=> d!2223096 (= lt!2562562 (set.member (h!75349 (t!382936 l2!759)) (content!14099 l1!770)))))

(declare-fun e!4280766 () Bool)

(assert (=> d!2223096 (= lt!2562562 e!4280766)))

(declare-fun res!2906571 () Bool)

(assert (=> d!2223096 (=> (not res!2906571) (not e!4280766))))

(assert (=> d!2223096 (= res!2906571 (is-Cons!68901 l1!770))))

(assert (=> d!2223096 (= (contains!20529 l1!770 (h!75349 (t!382936 l2!759))) lt!2562562)))

(declare-fun b!7123671 () Bool)

(declare-fun e!4280765 () Bool)

(assert (=> b!7123671 (= e!4280766 e!4280765)))

(declare-fun res!2906570 () Bool)

(assert (=> b!7123671 (=> res!2906570 e!4280765)))

(assert (=> b!7123671 (= res!2906570 (= (h!75349 l1!770) (h!75349 (t!382936 l2!759))))))

(declare-fun b!7123672 () Bool)

(assert (=> b!7123672 (= e!4280765 (contains!20529 (t!382936 l1!770) (h!75349 (t!382936 l2!759))))))

(assert (= (and d!2223096 res!2906571) b!7123671))

(assert (= (and b!7123671 (not res!2906570)) b!7123672))

(assert (=> d!2223096 m!7840992))

(declare-fun m!7841010 () Bool)

(assert (=> d!2223096 m!7841010))

(declare-fun m!7841012 () Bool)

(assert (=> b!7123672 m!7841012))

(assert (=> bs!1886159 d!2223096))

(declare-fun d!2223098 () Bool)

(assert (=> d!2223098 true))

(declare-fun setRes!51297 () Bool)

(assert (=> d!2223098 setRes!51297))

(declare-fun condSetEmpty!51297 () Bool)

(declare-fun res!2906572 () (Set B!3311))

(assert (=> d!2223098 (= condSetEmpty!51297 (= res!2906572 (as set.empty (Set B!3311))))))

(assert (=> d!2223098 (= (choose!55044 s1!424 f!607) res!2906572)))

(declare-fun setIsEmpty!51297 () Bool)

(assert (=> setIsEmpty!51297 setRes!51297))

(declare-fun setNonEmpty!51297 () Bool)

(declare-fun tp!1961708 () Bool)

(assert (=> setNonEmpty!51297 (= setRes!51297 (and tp!1961708 tp_is_empty!45459))))

(declare-fun setElem!51297 () B!3311)

(declare-fun setRest!51297 () (Set B!3311))

(assert (=> setNonEmpty!51297 (= res!2906572 (set.union (set.insert setElem!51297 (as set.empty (Set B!3311))) setRest!51297))))

(assert (= (and d!2223098 condSetEmpty!51297) setIsEmpty!51297))

(assert (= (and d!2223098 (not condSetEmpty!51297)) setNonEmpty!51297))

(assert (=> d!2223024 d!2223098))

(declare-fun d!2223100 () Bool)

(assert (=> d!2223100 true))

(declare-fun setRes!51298 () Bool)

(assert (=> d!2223100 setRes!51298))

(declare-fun condSetEmpty!51298 () Bool)

(declare-fun res!2906573 () (Set B!3311))

(assert (=> d!2223100 (= condSetEmpty!51298 (= res!2906573 (as set.empty (Set B!3311))))))

(assert (=> d!2223100 (= (choose!55044 (set.union s1!424 s2!395) f!607) res!2906573)))

(declare-fun setIsEmpty!51298 () Bool)

(assert (=> setIsEmpty!51298 setRes!51298))

(declare-fun setNonEmpty!51298 () Bool)

(declare-fun tp!1961709 () Bool)

(assert (=> setNonEmpty!51298 (= setRes!51298 (and tp!1961709 tp_is_empty!45459))))

(declare-fun setElem!51298 () B!3311)

(declare-fun setRest!51298 () (Set B!3311))

(assert (=> setNonEmpty!51298 (= res!2906573 (set.union (set.insert setElem!51298 (as set.empty (Set B!3311))) setRest!51298))))

(assert (= (and d!2223100 condSetEmpty!51298) setIsEmpty!51298))

(assert (= (and d!2223100 (not condSetEmpty!51298)) setNonEmpty!51298))

(assert (=> d!2223020 d!2223100))

(assert (=> b!7123524 d!2223082))

(declare-fun d!2223102 () Bool)

(declare-fun res!2906574 () Bool)

(declare-fun e!4280767 () Bool)

(assert (=> d!2223102 (=> res!2906574 e!4280767)))

(assert (=> d!2223102 (= res!2906574 (is-Nil!68901 lt!2562541))))

(assert (=> d!2223102 (= (noDuplicate!2800 lt!2562541) e!4280767)))

(declare-fun b!7123673 () Bool)

(declare-fun e!4280768 () Bool)

(assert (=> b!7123673 (= e!4280767 e!4280768)))

(declare-fun res!2906575 () Bool)

(assert (=> b!7123673 (=> (not res!2906575) (not e!4280768))))

(assert (=> b!7123673 (= res!2906575 (not (contains!20529 (t!382936 lt!2562541) (h!75349 lt!2562541))))))

(declare-fun b!7123674 () Bool)

(assert (=> b!7123674 (= e!4280768 (noDuplicate!2800 (t!382936 lt!2562541)))))

(assert (= (and d!2223102 (not res!2906574)) b!7123673))

(assert (= (and b!7123673 res!2906575) b!7123674))

(declare-fun m!7841014 () Bool)

(assert (=> b!7123673 m!7841014))

(declare-fun m!7841016 () Bool)

(assert (=> b!7123674 m!7841016))

(assert (=> d!2223022 d!2223102))

(declare-fun d!2223104 () Bool)

(declare-fun e!4280769 () Bool)

(assert (=> d!2223104 e!4280769))

(declare-fun res!2906577 () Bool)

(assert (=> d!2223104 (=> (not res!2906577) (not e!4280769))))

(declare-fun res!2906576 () List!69025)

(assert (=> d!2223104 (= res!2906577 (noDuplicate!2800 res!2906576))))

(declare-fun e!4280770 () Bool)

(assert (=> d!2223104 e!4280770))

(assert (=> d!2223104 (= (choose!55043 lt!2562501) res!2906576)))

(declare-fun b!7123675 () Bool)

(declare-fun tp!1961710 () Bool)

(assert (=> b!7123675 (= e!4280770 (and tp_is_empty!45459 tp!1961710))))

(declare-fun b!7123676 () Bool)

(assert (=> b!7123676 (= e!4280769 (= (content!14099 res!2906576) lt!2562501))))

(assert (= (and d!2223104 (is-Cons!68901 res!2906576)) b!7123675))

(assert (= (and d!2223104 res!2906577) b!7123676))

(declare-fun m!7841018 () Bool)

(assert (=> d!2223104 m!7841018))

(declare-fun m!7841020 () Bool)

(assert (=> b!7123676 m!7841020))

(assert (=> d!2223022 d!2223104))

(declare-fun d!2223106 () Bool)

(declare-fun lt!2562563 () Bool)

(assert (=> d!2223106 (= lt!2562563 (set.member (h!75349 l2!759) (content!14099 l2!759)))))

(declare-fun e!4280772 () Bool)

(assert (=> d!2223106 (= lt!2562563 e!4280772)))

(declare-fun res!2906579 () Bool)

(assert (=> d!2223106 (=> (not res!2906579) (not e!4280772))))

(assert (=> d!2223106 (= res!2906579 (is-Cons!68901 l2!759))))

(assert (=> d!2223106 (= (contains!20529 l2!759 (h!75349 l2!759)) lt!2562563)))

(declare-fun b!7123677 () Bool)

(declare-fun e!4280771 () Bool)

(assert (=> b!7123677 (= e!4280772 e!4280771)))

(declare-fun res!2906578 () Bool)

(assert (=> b!7123677 (=> res!2906578 e!4280771)))

(assert (=> b!7123677 (= res!2906578 (= (h!75349 l2!759) (h!75349 l2!759)))))

(declare-fun b!7123678 () Bool)

(assert (=> b!7123678 (= e!4280771 (contains!20529 (t!382936 l2!759) (h!75349 l2!759)))))

(assert (= (and d!2223106 res!2906579) b!7123677))

(assert (= (and b!7123677 (not res!2906578)) b!7123678))

(declare-fun m!7841022 () Bool)

(assert (=> d!2223106 m!7841022))

(declare-fun m!7841024 () Bool)

(assert (=> d!2223106 m!7841024))

(declare-fun m!7841026 () Bool)

(assert (=> b!7123678 m!7841026))

(assert (=> b!7123535 d!2223106))

(declare-fun b!7123679 () Bool)

(declare-fun e!4280773 () Bool)

(declare-fun tp!1961711 () Bool)

(assert (=> b!7123679 (= e!4280773 (and tp_is_empty!45459 tp!1961711))))

(assert (=> b!7123574 (= tp!1961692 e!4280773)))

(assert (= (and b!7123574 (is-Cons!68901 (t!382936 (t!382936 l1!770)))) b!7123679))

(declare-fun b!7123680 () Bool)

(declare-fun e!4280774 () Bool)

(declare-fun tp!1961712 () Bool)

(assert (=> b!7123680 (= e!4280774 (and tp_is_empty!45459 tp!1961712))))

(assert (=> b!7123575 (= tp!1961693 e!4280774)))

(assert (= (and b!7123575 (is-Cons!68901 (t!382936 (t!382936 l2!759)))) b!7123680))

(declare-fun condSetEmpty!51299 () Bool)

(assert (=> setNonEmpty!51289 (= condSetEmpty!51299 (= setRest!51289 (as set.empty (Set A!653))))))

(declare-fun setRes!51299 () Bool)

(assert (=> setNonEmpty!51289 (= tp!1961689 setRes!51299)))

(declare-fun setIsEmpty!51299 () Bool)

(assert (=> setIsEmpty!51299 setRes!51299))

(declare-fun setNonEmpty!51299 () Bool)

(declare-fun tp!1961713 () Bool)

(assert (=> setNonEmpty!51299 (= setRes!51299 (and tp!1961713 tp_is_empty!45457))))

(declare-fun setElem!51299 () A!653)

(declare-fun setRest!51299 () (Set A!653))

(assert (=> setNonEmpty!51299 (= setRest!51289 (set.union (set.insert setElem!51299 (as set.empty (Set A!653))) setRest!51299))))

(assert (= (and setNonEmpty!51289 condSetEmpty!51299) setIsEmpty!51299))

(assert (= (and setNonEmpty!51289 (not condSetEmpty!51299)) setNonEmpty!51299))

(declare-fun condSetEmpty!51300 () Bool)

(assert (=> setNonEmpty!51288 (= condSetEmpty!51300 (= setRest!51288 (as set.empty (Set A!653))))))

(declare-fun setRes!51300 () Bool)

(assert (=> setNonEmpty!51288 (= tp!1961688 setRes!51300)))

(declare-fun setIsEmpty!51300 () Bool)

(assert (=> setIsEmpty!51300 setRes!51300))

(declare-fun setNonEmpty!51300 () Bool)

(declare-fun tp!1961714 () Bool)

(assert (=> setNonEmpty!51300 (= setRes!51300 (and tp!1961714 tp_is_empty!45457))))

(declare-fun setElem!51300 () A!653)

(declare-fun setRest!51300 () (Set A!653))

(assert (=> setNonEmpty!51300 (= setRest!51288 (set.union (set.insert setElem!51300 (as set.empty (Set A!653))) setRest!51300))))

(assert (= (and setNonEmpty!51288 condSetEmpty!51300) setIsEmpty!51300))

(assert (= (and setNonEmpty!51288 (not condSetEmpty!51300)) setNonEmpty!51300))

(declare-fun b_lambda!271761 () Bool)

(assert (= b_lambda!271759 (or b!7123480 b_lambda!271761)))

(declare-fun bs!1886172 () Bool)

(declare-fun d!2223108 () Bool)

(assert (= bs!1886172 (and d!2223108 b!7123480)))

(assert (=> bs!1886172 (= (dynLambda!28082 lambda!432934 (h!75349 (t!382936 (t!382936 l2!759)))) (contains!20529 l1!770 (h!75349 (t!382936 (t!382936 l2!759)))))))

(declare-fun m!7841028 () Bool)

(assert (=> bs!1886172 m!7841028))

(assert (=> b!7123668 d!2223108))

(declare-fun b_lambda!271763 () Bool)

(assert (= b_lambda!271757 (or d!2223002 b_lambda!271763)))

(declare-fun bs!1886173 () Bool)

(declare-fun d!2223110 () Bool)

(assert (= bs!1886173 (and d!2223110 d!2223002)))

(assert (=> bs!1886173 (= (dynLambda!28082 lambda!432942 (h!75349 (t!382936 l2!759))) (contains!20529 l1!770 (h!75349 (t!382936 l2!759))))))

(assert (=> bs!1886173 m!7840892))

(assert (=> b!7123626 d!2223110))

(push 1)

(assert (not b!7123669))

(assert (not d!2223094))

(assert (not b!7123672))

(assert (not b!7123643))

(assert (not bs!1886172))

(assert (not b!7123660))

(assert (not b_lambda!271747))

(assert (not b!7123675))

(assert (not d!2223068))

(assert (not b_lambda!271761))

(assert (not b!7123639))

(assert (not setNonEmpty!51296))

(assert (not b!7123653))

(assert (not b!7123633))

(assert (not b!7123652))

(assert (not b_next!134537))

(assert (not b!7123655))

(assert (not b!7123678))

(assert (not setNonEmpty!51298))

(assert (not b!7123627))

(assert (not setNonEmpty!51299))

(assert (not d!2223096))

(assert (not b_lambda!271745))

(assert (not b!7123635))

(assert (not d!2223066))

(assert (not d!2223106))

(assert tp_is_empty!45459)

(assert (not d!2223080))

(assert (not b!7123674))

(assert (not setNonEmpty!51297))

(assert tp_is_empty!45457)

(assert (not b!7123649))

(assert (not b!7123629))

(assert (not b!7123666))

(assert (not b!7123625))

(assert (not setNonEmpty!51300))

(assert (not b!7123673))

(assert (not bm!650778))

(assert b_and!350843)

(assert (not b!7123676))

(assert (not b!7123623))

(assert (not d!2223088))

(assert (not b!7123642))

(assert (not d!2223064))

(assert (not b!7123661))

(assert (not d!2223104))

(assert (not b!7123667))

(assert (not b!7123638))

(assert (not bs!1886173))

(assert (not d!2223084))

(assert (not d!2223078))

(assert (not b!7123628))

(assert (not b_lambda!271763))

(assert (not b!7123679))

(assert (not b!7123680))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350843)

(assert (not b_next!134537))

(check-sat)

(pop 1)


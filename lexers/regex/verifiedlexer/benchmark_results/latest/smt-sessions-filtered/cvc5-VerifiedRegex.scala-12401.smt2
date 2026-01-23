; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693572 () Bool)

(assert start!693572)

(declare-fun b_free!133707 () Bool)

(declare-fun b_next!134497 () Bool)

(assert (=> start!693572 (= b_free!133707 (not b_next!134497))))

(declare-fun tp!1961210 () Bool)

(declare-fun b_and!350803 () Bool)

(assert (=> start!693572 (= tp!1961210 b_and!350803)))

(declare-fun b!7122347 () Bool)

(assert (=> b!7122347 true))

(declare-fun b!7122344 () Bool)

(declare-fun res!2905789 () Bool)

(declare-fun e!4279740 () Bool)

(assert (=> b!7122344 (=> (not res!2905789) (not e!4279740))))

(declare-datatypes ((B!3271 0))(
  ( (B!3272 (val!27939 Int)) )
))
(declare-datatypes ((List!69005 0))(
  ( (Nil!68881) (Cons!68881 (h!75329 B!3271) (t!382912 List!69005)) )
))
(declare-fun l1!756 () List!69005)

(assert (=> b!7122344 (= res!2905789 (is-Cons!68881 l1!756))))

(declare-fun b!7122345 () Bool)

(declare-fun e!4279739 () Bool)

(assert (=> b!7122345 (= e!4279739 e!4279740)))

(declare-fun res!2905790 () Bool)

(assert (=> b!7122345 (=> (not res!2905790) (not e!4279740))))

(declare-fun l2!745 () List!69005)

(declare-fun lt!2562118 () (Set B!3271))

(declare-fun toList!11108 ((Set B!3271)) List!69005)

(assert (=> b!7122345 (= res!2905790 (= l2!745 (toList!11108 lt!2562118)))))

(declare-datatypes ((A!613 0))(
  ( (A!614 (val!27940 Int)) )
))
(declare-fun s1!414 () (Set A!613))

(declare-fun s2!385 () (Set A!613))

(declare-fun f!567 () Int)

(declare-fun map!16406 ((Set A!613) Int) (Set B!3271))

(assert (=> b!7122345 (= lt!2562118 (map!16406 (set.union s1!414 s2!385) f!567))))

(declare-fun setIsEmpty!51074 () Bool)

(declare-fun setRes!51075 () Bool)

(assert (=> setIsEmpty!51074 setRes!51075))

(declare-fun b!7122346 () Bool)

(declare-fun e!4279738 () Bool)

(declare-fun tp_is_empty!45377 () Bool)

(declare-fun tp!1961212 () Bool)

(assert (=> b!7122346 (= e!4279738 (and tp_is_empty!45377 tp!1961212))))

(declare-fun lambda!432894 () Int)

(declare-fun forall!16892 (List!69005 Int) Bool)

(assert (=> b!7122347 (= e!4279740 (not (forall!16892 l1!756 lambda!432894)))))

(declare-datatypes ((Unit!162721 0))(
  ( (Unit!162722) )
))
(declare-fun lt!2562113 () Unit!162721)

(declare-fun lt!2562116 () List!69005)

(declare-fun subseqContains!23 (List!69005 List!69005 B!3271) Unit!162721)

(assert (=> b!7122347 (= lt!2562113 (subseqContains!23 l1!756 lt!2562116 (h!75329 l1!756)))))

(assert (=> b!7122347 (forall!16892 (t!382912 l1!756) lambda!432894)))

(declare-fun lt!2562115 () Unit!162721)

(declare-fun lemmaMapAssociativeToList1!13 ((Set A!613) (Set A!613) Int List!69005 List!69005) Unit!162721)

(assert (=> b!7122347 (= lt!2562115 (lemmaMapAssociativeToList1!13 s1!414 s2!385 f!567 (t!382912 l1!756) l2!745))))

(declare-fun lt!2562117 () Unit!162721)

(declare-fun subseqTail!25 (List!69005 List!69005) Unit!162721)

(assert (=> b!7122347 (= lt!2562117 (subseqTail!25 l1!756 lt!2562116))))

(declare-fun lt!2562112 () (Set B!3271))

(assert (=> b!7122347 (= (set.member (h!75329 l1!756) lt!2562112) (set.member (h!75329 l1!756) lt!2562118))))

(declare-fun lt!2562114 () Unit!162721)

(declare-fun lemmaMapAssociativeElem!11 ((Set A!613) (Set A!613) Int B!3271) Unit!162721)

(assert (=> b!7122347 (= lt!2562114 (lemmaMapAssociativeElem!11 s1!414 s2!385 f!567 (h!75329 l1!756)))))

(declare-fun res!2905788 () Bool)

(assert (=> start!693572 (=> (not res!2905788) (not e!4279739))))

(declare-fun subseq!744 (List!69005 List!69005) Bool)

(assert (=> start!693572 (= res!2905788 (subseq!744 l1!756 lt!2562116))))

(assert (=> start!693572 (= lt!2562116 (toList!11108 lt!2562112))))

(assert (=> start!693572 (= lt!2562112 (set.union (map!16406 s1!414 f!567) (map!16406 s2!385 f!567)))))

(assert (=> start!693572 e!4279739))

(declare-fun e!4279737 () Bool)

(assert (=> start!693572 e!4279737))

(declare-fun condSetEmpty!51075 () Bool)

(assert (=> start!693572 (= condSetEmpty!51075 (= s1!414 (as set.empty (Set A!613))))))

(assert (=> start!693572 setRes!51075))

(declare-fun condSetEmpty!51074 () Bool)

(assert (=> start!693572 (= condSetEmpty!51074 (= s2!385 (as set.empty (Set A!613))))))

(declare-fun setRes!51074 () Bool)

(assert (=> start!693572 setRes!51074))

(assert (=> start!693572 e!4279738))

(assert (=> start!693572 tp!1961210))

(declare-fun b!7122348 () Bool)

(declare-fun tp!1961208 () Bool)

(assert (=> b!7122348 (= e!4279737 (and tp_is_empty!45377 tp!1961208))))

(declare-fun setNonEmpty!51074 () Bool)

(declare-fun tp!1961209 () Bool)

(declare-fun tp_is_empty!45379 () Bool)

(assert (=> setNonEmpty!51074 (= setRes!51074 (and tp!1961209 tp_is_empty!45379))))

(declare-fun setElem!51075 () A!613)

(declare-fun setRest!51075 () (Set A!613))

(assert (=> setNonEmpty!51074 (= s2!385 (set.union (set.insert setElem!51075 (as set.empty (Set A!613))) setRest!51075))))

(declare-fun setIsEmpty!51075 () Bool)

(assert (=> setIsEmpty!51075 setRes!51074))

(declare-fun setNonEmpty!51075 () Bool)

(declare-fun tp!1961211 () Bool)

(assert (=> setNonEmpty!51075 (= setRes!51075 (and tp!1961211 tp_is_empty!45379))))

(declare-fun setElem!51074 () A!613)

(declare-fun setRest!51074 () (Set A!613))

(assert (=> setNonEmpty!51075 (= s1!414 (set.union (set.insert setElem!51074 (as set.empty (Set A!613))) setRest!51074))))

(assert (= (and start!693572 res!2905788) b!7122345))

(assert (= (and b!7122345 res!2905790) b!7122344))

(assert (= (and b!7122344 res!2905789) b!7122347))

(assert (= (and start!693572 (is-Cons!68881 l1!756)) b!7122348))

(assert (= (and start!693572 condSetEmpty!51075) setIsEmpty!51074))

(assert (= (and start!693572 (not condSetEmpty!51075)) setNonEmpty!51075))

(assert (= (and start!693572 condSetEmpty!51074) setIsEmpty!51075))

(assert (= (and start!693572 (not condSetEmpty!51074)) setNonEmpty!51074))

(assert (= (and start!693572 (is-Cons!68881 l2!745)) b!7122346))

(declare-fun m!7839558 () Bool)

(assert (=> b!7122345 m!7839558))

(declare-fun m!7839560 () Bool)

(assert (=> b!7122345 m!7839560))

(declare-fun m!7839562 () Bool)

(assert (=> b!7122347 m!7839562))

(declare-fun m!7839564 () Bool)

(assert (=> b!7122347 m!7839564))

(declare-fun m!7839566 () Bool)

(assert (=> b!7122347 m!7839566))

(declare-fun m!7839568 () Bool)

(assert (=> b!7122347 m!7839568))

(declare-fun m!7839570 () Bool)

(assert (=> b!7122347 m!7839570))

(declare-fun m!7839572 () Bool)

(assert (=> b!7122347 m!7839572))

(declare-fun m!7839574 () Bool)

(assert (=> b!7122347 m!7839574))

(declare-fun m!7839576 () Bool)

(assert (=> b!7122347 m!7839576))

(declare-fun m!7839578 () Bool)

(assert (=> start!693572 m!7839578))

(declare-fun m!7839580 () Bool)

(assert (=> start!693572 m!7839580))

(declare-fun m!7839582 () Bool)

(assert (=> start!693572 m!7839582))

(declare-fun m!7839584 () Bool)

(assert (=> start!693572 m!7839584))

(push 1)

(assert (not b_next!134497))

(assert (not setNonEmpty!51075))

(assert (not b!7122347))

(assert (not start!693572))

(assert (not b!7122345))

(assert b_and!350803)

(assert tp_is_empty!45377)

(assert tp_is_empty!45379)

(assert (not setNonEmpty!51074))

(assert (not b!7122348))

(assert (not b!7122346))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350803)

(assert (not b_next!134497))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2222544 () Bool)

(declare-fun res!2905807 () Bool)

(declare-fun e!4279760 () Bool)

(assert (=> d!2222544 (=> res!2905807 e!4279760)))

(assert (=> d!2222544 (= res!2905807 (is-Nil!68881 (t!382912 l1!756)))))

(assert (=> d!2222544 (= (forall!16892 (t!382912 l1!756) lambda!432894) e!4279760)))

(declare-fun b!7122375 () Bool)

(declare-fun e!4279761 () Bool)

(assert (=> b!7122375 (= e!4279760 e!4279761)))

(declare-fun res!2905808 () Bool)

(assert (=> b!7122375 (=> (not res!2905808) (not e!4279761))))

(declare-fun dynLambda!28078 (Int B!3271) Bool)

(assert (=> b!7122375 (= res!2905808 (dynLambda!28078 lambda!432894 (h!75329 (t!382912 l1!756))))))

(declare-fun b!7122376 () Bool)

(assert (=> b!7122376 (= e!4279761 (forall!16892 (t!382912 (t!382912 l1!756)) lambda!432894))))

(assert (= (and d!2222544 (not res!2905807)) b!7122375))

(assert (= (and b!7122375 res!2905808) b!7122376))

(declare-fun b_lambda!271697 () Bool)

(assert (=> (not b_lambda!271697) (not b!7122375)))

(declare-fun m!7839622 () Bool)

(assert (=> b!7122375 m!7839622))

(declare-fun m!7839624 () Bool)

(assert (=> b!7122376 m!7839624))

(assert (=> b!7122347 d!2222544))

(declare-fun d!2222548 () Bool)

(declare-fun res!2905809 () Bool)

(declare-fun e!4279762 () Bool)

(assert (=> d!2222548 (=> res!2905809 e!4279762)))

(assert (=> d!2222548 (= res!2905809 (is-Nil!68881 l1!756))))

(assert (=> d!2222548 (= (forall!16892 l1!756 lambda!432894) e!4279762)))

(declare-fun b!7122377 () Bool)

(declare-fun e!4279763 () Bool)

(assert (=> b!7122377 (= e!4279762 e!4279763)))

(declare-fun res!2905810 () Bool)

(assert (=> b!7122377 (=> (not res!2905810) (not e!4279763))))

(assert (=> b!7122377 (= res!2905810 (dynLambda!28078 lambda!432894 (h!75329 l1!756)))))

(declare-fun b!7122378 () Bool)

(assert (=> b!7122378 (= e!4279763 (forall!16892 (t!382912 l1!756) lambda!432894))))

(assert (= (and d!2222548 (not res!2905809)) b!7122377))

(assert (= (and b!7122377 res!2905810) b!7122378))

(declare-fun b_lambda!271699 () Bool)

(assert (=> (not b_lambda!271699) (not b!7122377)))

(declare-fun m!7839626 () Bool)

(assert (=> b!7122377 m!7839626))

(assert (=> b!7122378 m!7839570))

(assert (=> b!7122347 d!2222548))

(declare-fun b!7122395 () Bool)

(declare-fun e!4279777 () Bool)

(assert (=> b!7122395 (= e!4279777 (subseq!744 l1!756 lt!2562116))))

(declare-fun b!7122396 () Bool)

(declare-fun e!4279775 () Unit!162721)

(declare-fun call!650751 () Unit!162721)

(assert (=> b!7122396 (= e!4279775 call!650751)))

(declare-fun b!7122397 () Bool)

(declare-fun e!4279776 () Unit!162721)

(assert (=> b!7122397 (= e!4279776 call!650751)))

(declare-fun b!7122398 () Bool)

(declare-fun e!4279774 () Unit!162721)

(assert (=> b!7122398 (= e!4279774 e!4279776)))

(declare-fun c!1329039 () Bool)

(assert (=> b!7122398 (= c!1329039 (subseq!744 l1!756 (t!382912 lt!2562116)))))

(declare-fun b!7122399 () Bool)

(declare-fun Unit!162725 () Unit!162721)

(assert (=> b!7122399 (= e!4279774 Unit!162725)))

(declare-fun b!7122400 () Bool)

(declare-fun Unit!162726 () Unit!162721)

(assert (=> b!7122400 (= e!4279775 Unit!162726)))

(declare-fun b!7122401 () Bool)

(declare-fun c!1329038 () Bool)

(declare-fun isEmpty!40004 (List!69005) Bool)

(assert (=> b!7122401 (= c!1329038 (not (isEmpty!40004 (t!382912 l1!756))))))

(assert (=> b!7122401 (= e!4279776 e!4279775)))

(declare-fun d!2222550 () Bool)

(declare-fun tail!13922 (List!69005) List!69005)

(assert (=> d!2222550 (subseq!744 (tail!13922 l1!756) lt!2562116)))

(declare-fun lt!2562145 () Unit!162721)

(assert (=> d!2222550 (= lt!2562145 e!4279774)))

(declare-fun c!1329040 () Bool)

(assert (=> d!2222550 (= c!1329040 (and (is-Cons!68881 l1!756) (is-Cons!68881 lt!2562116)))))

(assert (=> d!2222550 e!4279777))

(declare-fun res!2905815 () Bool)

(assert (=> d!2222550 (=> (not res!2905815) (not e!4279777))))

(assert (=> d!2222550 (= res!2905815 (not (isEmpty!40004 l1!756)))))

(assert (=> d!2222550 (= (subseqTail!25 l1!756 lt!2562116) lt!2562145)))

(declare-fun bm!650746 () Bool)

(assert (=> bm!650746 (= call!650751 (subseqTail!25 (ite c!1329039 l1!756 (t!382912 l1!756)) (t!382912 lt!2562116)))))

(assert (= (and d!2222550 res!2905815) b!7122395))

(assert (= (and d!2222550 c!1329040) b!7122398))

(assert (= (and d!2222550 (not c!1329040)) b!7122399))

(assert (= (and b!7122398 c!1329039) b!7122397))

(assert (= (and b!7122398 (not c!1329039)) b!7122401))

(assert (= (and b!7122401 c!1329038) b!7122396))

(assert (= (and b!7122401 (not c!1329038)) b!7122400))

(assert (= (or b!7122397 b!7122396) bm!650746))

(declare-fun m!7839628 () Bool)

(assert (=> b!7122398 m!7839628))

(assert (=> b!7122395 m!7839578))

(declare-fun m!7839630 () Bool)

(assert (=> b!7122401 m!7839630))

(declare-fun m!7839632 () Bool)

(assert (=> bm!650746 m!7839632))

(declare-fun m!7839634 () Bool)

(assert (=> d!2222550 m!7839634))

(assert (=> d!2222550 m!7839634))

(declare-fun m!7839636 () Bool)

(assert (=> d!2222550 m!7839636))

(declare-fun m!7839638 () Bool)

(assert (=> d!2222550 m!7839638))

(assert (=> b!7122347 d!2222550))

(declare-fun d!2222552 () Bool)

(declare-fun contains!20522 (List!69005 B!3271) Bool)

(assert (=> d!2222552 (contains!20522 lt!2562116 (h!75329 l1!756))))

(declare-fun lt!2562150 () Unit!162721)

(declare-fun choose!55004 (List!69005 List!69005 B!3271) Unit!162721)

(assert (=> d!2222552 (= lt!2562150 (choose!55004 l1!756 lt!2562116 (h!75329 l1!756)))))

(declare-fun e!4279786 () Bool)

(assert (=> d!2222552 e!4279786))

(declare-fun res!2905818 () Bool)

(assert (=> d!2222552 (=> (not res!2905818) (not e!4279786))))

(assert (=> d!2222552 (= res!2905818 (subseq!744 l1!756 lt!2562116))))

(assert (=> d!2222552 (= (subseqContains!23 l1!756 lt!2562116 (h!75329 l1!756)) lt!2562150)))

(declare-fun b!7122416 () Bool)

(assert (=> b!7122416 (= e!4279786 (contains!20522 l1!756 (h!75329 l1!756)))))

(assert (= (and d!2222552 res!2905818) b!7122416))

(declare-fun m!7839640 () Bool)

(assert (=> d!2222552 m!7839640))

(declare-fun m!7839642 () Bool)

(assert (=> d!2222552 m!7839642))

(assert (=> d!2222552 m!7839578))

(declare-fun m!7839644 () Bool)

(assert (=> b!7122416 m!7839644))

(assert (=> b!7122347 d!2222552))

(declare-fun bs!1886053 () Bool)

(declare-fun d!2222554 () Bool)

(assert (= bs!1886053 (and d!2222554 b!7122347)))

(declare-fun lambda!432902 () Int)

(assert (=> bs!1886053 (= lambda!432902 lambda!432894)))

(assert (=> d!2222554 true))

(assert (=> d!2222554 (forall!16892 (t!382912 l1!756) lambda!432902)))

(declare-fun lt!2562153 () Unit!162721)

(declare-fun choose!55005 ((Set A!613) (Set A!613) Int List!69005 List!69005) Unit!162721)

(assert (=> d!2222554 (= lt!2562153 (choose!55005 s1!414 s2!385 f!567 (t!382912 l1!756) l2!745))))

(assert (=> d!2222554 (subseq!744 (t!382912 l1!756) (toList!11108 (set.union (map!16406 s1!414 f!567) (map!16406 s2!385 f!567))))))

(assert (=> d!2222554 (= (lemmaMapAssociativeToList1!13 s1!414 s2!385 f!567 (t!382912 l1!756) l2!745) lt!2562153)))

(declare-fun bs!1886054 () Bool)

(assert (= bs!1886054 d!2222554))

(declare-fun m!7839646 () Bool)

(assert (=> bs!1886054 m!7839646))

(declare-fun m!7839648 () Bool)

(assert (=> bs!1886054 m!7839648))

(declare-fun m!7839650 () Bool)

(assert (=> bs!1886054 m!7839650))

(assert (=> bs!1886054 m!7839650))

(declare-fun m!7839652 () Bool)

(assert (=> bs!1886054 m!7839652))

(assert (=> bs!1886054 m!7839584))

(assert (=> bs!1886054 m!7839582))

(assert (=> b!7122347 d!2222554))

(declare-fun d!2222556 () Bool)

(assert (=> d!2222556 (= (set.member (h!75329 l1!756) (set.union (map!16406 s1!414 f!567) (map!16406 s2!385 f!567))) (set.member (h!75329 l1!756) (map!16406 (set.union s1!414 s2!385) f!567)))))

(declare-fun lt!2562157 () Unit!162721)

(declare-fun choose!55006 ((Set A!613) (Set A!613) Int B!3271) Unit!162721)

(assert (=> d!2222556 (= lt!2562157 (choose!55006 s1!414 s2!385 f!567 (h!75329 l1!756)))))

(assert (=> d!2222556 (= (lemmaMapAssociativeElem!11 s1!414 s2!385 f!567 (h!75329 l1!756)) lt!2562157)))

(declare-fun bs!1886055 () Bool)

(assert (= bs!1886055 d!2222556))

(declare-fun m!7839666 () Bool)

(assert (=> bs!1886055 m!7839666))

(assert (=> bs!1886055 m!7839560))

(assert (=> bs!1886055 m!7839582))

(declare-fun m!7839668 () Bool)

(assert (=> bs!1886055 m!7839668))

(declare-fun m!7839670 () Bool)

(assert (=> bs!1886055 m!7839670))

(assert (=> bs!1886055 m!7839584))

(assert (=> b!7122347 d!2222556))

(declare-fun d!2222560 () Bool)

(declare-fun e!4279793 () Bool)

(assert (=> d!2222560 e!4279793))

(declare-fun res!2905822 () Bool)

(assert (=> d!2222560 (=> (not res!2905822) (not e!4279793))))

(declare-fun lt!2562160 () List!69005)

(declare-fun noDuplicate!2789 (List!69005) Bool)

(assert (=> d!2222560 (= res!2905822 (noDuplicate!2789 lt!2562160))))

(declare-fun choose!55007 ((Set B!3271)) List!69005)

(assert (=> d!2222560 (= lt!2562160 (choose!55007 lt!2562118))))

(assert (=> d!2222560 (= (toList!11108 lt!2562118) lt!2562160)))

(declare-fun b!7122427 () Bool)

(declare-fun content!14088 (List!69005) (Set B!3271))

(assert (=> b!7122427 (= e!4279793 (= (content!14088 lt!2562160) lt!2562118))))

(assert (= (and d!2222560 res!2905822) b!7122427))

(declare-fun m!7839672 () Bool)

(assert (=> d!2222560 m!7839672))

(declare-fun m!7839674 () Bool)

(assert (=> d!2222560 m!7839674))

(declare-fun m!7839676 () Bool)

(assert (=> b!7122427 m!7839676))

(assert (=> b!7122345 d!2222560))

(declare-fun d!2222562 () Bool)

(declare-fun choose!55008 ((Set A!613) Int) (Set B!3271))

(assert (=> d!2222562 (= (map!16406 (set.union s1!414 s2!385) f!567) (choose!55008 (set.union s1!414 s2!385) f!567))))

(declare-fun bs!1886056 () Bool)

(assert (= bs!1886056 d!2222562))

(declare-fun m!7839678 () Bool)

(assert (=> bs!1886056 m!7839678))

(assert (=> b!7122345 d!2222562))

(declare-fun d!2222564 () Bool)

(declare-fun res!2905836 () Bool)

(declare-fun e!4279805 () Bool)

(assert (=> d!2222564 (=> res!2905836 e!4279805)))

(assert (=> d!2222564 (= res!2905836 (is-Nil!68881 l1!756))))

(assert (=> d!2222564 (= (subseq!744 l1!756 lt!2562116) e!4279805)))

(declare-fun b!7122439 () Bool)

(declare-fun e!4279806 () Bool)

(assert (=> b!7122439 (= e!4279805 e!4279806)))

(declare-fun res!2905834 () Bool)

(assert (=> b!7122439 (=> (not res!2905834) (not e!4279806))))

(assert (=> b!7122439 (= res!2905834 (is-Cons!68881 lt!2562116))))

(declare-fun b!7122441 () Bool)

(declare-fun e!4279808 () Bool)

(assert (=> b!7122441 (= e!4279808 (subseq!744 (t!382912 l1!756) (t!382912 lt!2562116)))))

(declare-fun b!7122440 () Bool)

(declare-fun e!4279807 () Bool)

(assert (=> b!7122440 (= e!4279806 e!4279807)))

(declare-fun res!2905837 () Bool)

(assert (=> b!7122440 (=> res!2905837 e!4279807)))

(assert (=> b!7122440 (= res!2905837 e!4279808)))

(declare-fun res!2905835 () Bool)

(assert (=> b!7122440 (=> (not res!2905835) (not e!4279808))))

(assert (=> b!7122440 (= res!2905835 (= (h!75329 l1!756) (h!75329 lt!2562116)))))

(declare-fun b!7122442 () Bool)

(assert (=> b!7122442 (= e!4279807 (subseq!744 l1!756 (t!382912 lt!2562116)))))

(assert (= (and d!2222564 (not res!2905836)) b!7122439))

(assert (= (and b!7122439 res!2905834) b!7122440))

(assert (= (and b!7122440 res!2905835) b!7122441))

(assert (= (and b!7122440 (not res!2905837)) b!7122442))

(declare-fun m!7839686 () Bool)

(assert (=> b!7122441 m!7839686))

(assert (=> b!7122442 m!7839628))

(assert (=> start!693572 d!2222564))

(declare-fun d!2222568 () Bool)

(declare-fun e!4279809 () Bool)

(assert (=> d!2222568 e!4279809))

(declare-fun res!2905838 () Bool)

(assert (=> d!2222568 (=> (not res!2905838) (not e!4279809))))

(declare-fun lt!2562164 () List!69005)

(assert (=> d!2222568 (= res!2905838 (noDuplicate!2789 lt!2562164))))

(assert (=> d!2222568 (= lt!2562164 (choose!55007 lt!2562112))))

(assert (=> d!2222568 (= (toList!11108 lt!2562112) lt!2562164)))

(declare-fun b!7122443 () Bool)

(assert (=> b!7122443 (= e!4279809 (= (content!14088 lt!2562164) lt!2562112))))

(assert (= (and d!2222568 res!2905838) b!7122443))

(declare-fun m!7839688 () Bool)

(assert (=> d!2222568 m!7839688))

(declare-fun m!7839690 () Bool)

(assert (=> d!2222568 m!7839690))

(declare-fun m!7839692 () Bool)

(assert (=> b!7122443 m!7839692))

(assert (=> start!693572 d!2222568))

(declare-fun d!2222570 () Bool)

(assert (=> d!2222570 (= (map!16406 s1!414 f!567) (choose!55008 s1!414 f!567))))

(declare-fun bs!1886057 () Bool)

(assert (= bs!1886057 d!2222570))

(declare-fun m!7839694 () Bool)

(assert (=> bs!1886057 m!7839694))

(assert (=> start!693572 d!2222570))

(declare-fun d!2222572 () Bool)

(assert (=> d!2222572 (= (map!16406 s2!385 f!567) (choose!55008 s2!385 f!567))))

(declare-fun bs!1886058 () Bool)

(assert (= bs!1886058 d!2222572))

(declare-fun m!7839696 () Bool)

(assert (=> bs!1886058 m!7839696))

(assert (=> start!693572 d!2222572))

(declare-fun b!7122452 () Bool)

(declare-fun e!4279816 () Bool)

(declare-fun tp!1961230 () Bool)

(assert (=> b!7122452 (= e!4279816 (and tp_is_empty!45377 tp!1961230))))

(assert (=> b!7122346 (= tp!1961212 e!4279816)))

(assert (= (and b!7122346 (is-Cons!68881 (t!382912 l2!745))) b!7122452))

(declare-fun condSetEmpty!51084 () Bool)

(assert (=> setNonEmpty!51075 (= condSetEmpty!51084 (= setRest!51074 (as set.empty (Set A!613))))))

(declare-fun setRes!51084 () Bool)

(assert (=> setNonEmpty!51075 (= tp!1961211 setRes!51084)))

(declare-fun setIsEmpty!51084 () Bool)

(assert (=> setIsEmpty!51084 setRes!51084))

(declare-fun setNonEmpty!51084 () Bool)

(declare-fun tp!1961233 () Bool)

(assert (=> setNonEmpty!51084 (= setRes!51084 (and tp!1961233 tp_is_empty!45379))))

(declare-fun setElem!51084 () A!613)

(declare-fun setRest!51084 () (Set A!613))

(assert (=> setNonEmpty!51084 (= setRest!51074 (set.union (set.insert setElem!51084 (as set.empty (Set A!613))) setRest!51084))))

(assert (= (and setNonEmpty!51075 condSetEmpty!51084) setIsEmpty!51084))

(assert (= (and setNonEmpty!51075 (not condSetEmpty!51084)) setNonEmpty!51084))

(declare-fun condSetEmpty!51085 () Bool)

(assert (=> setNonEmpty!51074 (= condSetEmpty!51085 (= setRest!51075 (as set.empty (Set A!613))))))

(declare-fun setRes!51085 () Bool)

(assert (=> setNonEmpty!51074 (= tp!1961209 setRes!51085)))

(declare-fun setIsEmpty!51085 () Bool)

(assert (=> setIsEmpty!51085 setRes!51085))

(declare-fun setNonEmpty!51085 () Bool)

(declare-fun tp!1961234 () Bool)

(assert (=> setNonEmpty!51085 (= setRes!51085 (and tp!1961234 tp_is_empty!45379))))

(declare-fun setElem!51085 () A!613)

(declare-fun setRest!51085 () (Set A!613))

(assert (=> setNonEmpty!51085 (= setRest!51075 (set.union (set.insert setElem!51085 (as set.empty (Set A!613))) setRest!51085))))

(assert (= (and setNonEmpty!51074 condSetEmpty!51085) setIsEmpty!51085))

(assert (= (and setNonEmpty!51074 (not condSetEmpty!51085)) setNonEmpty!51085))

(declare-fun b!7122455 () Bool)

(declare-fun e!4279817 () Bool)

(declare-fun tp!1961235 () Bool)

(assert (=> b!7122455 (= e!4279817 (and tp_is_empty!45377 tp!1961235))))

(assert (=> b!7122348 (= tp!1961208 e!4279817)))

(assert (= (and b!7122348 (is-Cons!68881 (t!382912 l1!756))) b!7122455))

(declare-fun b_lambda!271701 () Bool)

(assert (= b_lambda!271697 (or b!7122347 b_lambda!271701)))

(declare-fun bs!1886059 () Bool)

(declare-fun d!2222574 () Bool)

(assert (= bs!1886059 (and d!2222574 b!7122347)))

(assert (=> bs!1886059 (= (dynLambda!28078 lambda!432894 (h!75329 (t!382912 l1!756))) (contains!20522 l2!745 (h!75329 (t!382912 l1!756))))))

(declare-fun m!7839698 () Bool)

(assert (=> bs!1886059 m!7839698))

(assert (=> b!7122375 d!2222574))

(declare-fun b_lambda!271703 () Bool)

(assert (= b_lambda!271699 (or b!7122347 b_lambda!271703)))

(declare-fun bs!1886060 () Bool)

(declare-fun d!2222576 () Bool)

(assert (= bs!1886060 (and d!2222576 b!7122347)))

(assert (=> bs!1886060 (= (dynLambda!28078 lambda!432894 (h!75329 l1!756)) (contains!20522 l2!745 (h!75329 l1!756)))))

(declare-fun m!7839700 () Bool)

(assert (=> bs!1886060 m!7839700))

(assert (=> b!7122377 d!2222576))

(push 1)

(assert (not d!2222554))

(assert (not b!7122395))

(assert (not b!7122401))

(assert (not b!7122378))

(assert (not b!7122443))

(assert (not d!2222550))

(assert (not b!7122427))

(assert (not b_lambda!271701))

(assert (not b!7122416))

(assert (not d!2222568))

(assert (not d!2222556))

(assert (not b!7122441))

(assert b_and!350803)

(assert tp_is_empty!45377)

(assert (not d!2222560))

(assert (not b!7122455))

(assert (not d!2222562))

(assert (not setNonEmpty!51085))

(assert (not b_lambda!271703))

(assert (not b!7122452))

(assert (not b_next!134497))

(assert (not d!2222572))

(assert tp_is_empty!45379)

(assert (not bs!1886059))

(assert (not d!2222552))

(assert (not d!2222570))

(assert (not bs!1886060))

(assert (not b!7122398))

(assert (not setNonEmpty!51084))

(assert (not b!7122376))

(assert (not bm!650746))

(assert (not b!7122442))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350803)

(assert (not b_next!134497))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2222596 () Bool)

(declare-fun res!2905864 () Bool)

(declare-fun e!4279843 () Bool)

(assert (=> d!2222596 (=> res!2905864 e!4279843)))

(assert (=> d!2222596 (= res!2905864 (is-Nil!68881 lt!2562164))))

(assert (=> d!2222596 (= (noDuplicate!2789 lt!2562164) e!4279843)))

(declare-fun b!7122486 () Bool)

(declare-fun e!4279844 () Bool)

(assert (=> b!7122486 (= e!4279843 e!4279844)))

(declare-fun res!2905865 () Bool)

(assert (=> b!7122486 (=> (not res!2905865) (not e!4279844))))

(assert (=> b!7122486 (= res!2905865 (not (contains!20522 (t!382912 lt!2562164) (h!75329 lt!2562164))))))

(declare-fun b!7122487 () Bool)

(assert (=> b!7122487 (= e!4279844 (noDuplicate!2789 (t!382912 lt!2562164)))))

(assert (= (and d!2222596 (not res!2905864)) b!7122486))

(assert (= (and b!7122486 res!2905865) b!7122487))

(declare-fun m!7839738 () Bool)

(assert (=> b!7122486 m!7839738))

(declare-fun m!7839740 () Bool)

(assert (=> b!7122487 m!7839740))

(assert (=> d!2222568 d!2222596))

(declare-fun d!2222598 () Bool)

(declare-fun e!4279849 () Bool)

(assert (=> d!2222598 e!4279849))

(declare-fun res!2905870 () Bool)

(assert (=> d!2222598 (=> (not res!2905870) (not e!4279849))))

(declare-fun res!2905871 () List!69005)

(assert (=> d!2222598 (= res!2905870 (noDuplicate!2789 res!2905871))))

(declare-fun e!4279850 () Bool)

(assert (=> d!2222598 e!4279850))

(assert (=> d!2222598 (= (choose!55007 lt!2562112) res!2905871)))

(declare-fun b!7122492 () Bool)

(declare-fun tp!1961246 () Bool)

(assert (=> b!7122492 (= e!4279850 (and tp_is_empty!45377 tp!1961246))))

(declare-fun b!7122493 () Bool)

(assert (=> b!7122493 (= e!4279849 (= (content!14088 res!2905871) lt!2562112))))

(assert (= (and d!2222598 (is-Cons!68881 res!2905871)) b!7122492))

(assert (= (and d!2222598 res!2905870) b!7122493))

(declare-fun m!7839742 () Bool)

(assert (=> d!2222598 m!7839742))

(declare-fun m!7839744 () Bool)

(assert (=> b!7122493 m!7839744))

(assert (=> d!2222568 d!2222598))

(declare-fun d!2222600 () Bool)

(declare-fun lt!2562174 () Bool)

(assert (=> d!2222600 (= lt!2562174 (set.member (h!75329 (t!382912 l1!756)) (content!14088 l2!745)))))

(declare-fun e!4279855 () Bool)

(assert (=> d!2222600 (= lt!2562174 e!4279855)))

(declare-fun res!2905876 () Bool)

(assert (=> d!2222600 (=> (not res!2905876) (not e!4279855))))

(assert (=> d!2222600 (= res!2905876 (is-Cons!68881 l2!745))))

(assert (=> d!2222600 (= (contains!20522 l2!745 (h!75329 (t!382912 l1!756))) lt!2562174)))

(declare-fun b!7122498 () Bool)

(declare-fun e!4279856 () Bool)

(assert (=> b!7122498 (= e!4279855 e!4279856)))

(declare-fun res!2905877 () Bool)

(assert (=> b!7122498 (=> res!2905877 e!4279856)))

(assert (=> b!7122498 (= res!2905877 (= (h!75329 l2!745) (h!75329 (t!382912 l1!756))))))

(declare-fun b!7122499 () Bool)

(assert (=> b!7122499 (= e!4279856 (contains!20522 (t!382912 l2!745) (h!75329 (t!382912 l1!756))))))

(assert (= (and d!2222600 res!2905876) b!7122498))

(assert (= (and b!7122498 (not res!2905877)) b!7122499))

(declare-fun m!7839746 () Bool)

(assert (=> d!2222600 m!7839746))

(declare-fun m!7839748 () Bool)

(assert (=> d!2222600 m!7839748))

(declare-fun m!7839750 () Bool)

(assert (=> b!7122499 m!7839750))

(assert (=> bs!1886059 d!2222600))

(declare-fun d!2222602 () Bool)

(assert (=> d!2222602 (= (isEmpty!40004 (t!382912 l1!756)) (is-Nil!68881 (t!382912 l1!756)))))

(assert (=> b!7122401 d!2222602))

(declare-fun d!2222604 () Bool)

(declare-fun c!1329052 () Bool)

(assert (=> d!2222604 (= c!1329052 (is-Nil!68881 lt!2562160))))

(declare-fun e!4279859 () (Set B!3271))

(assert (=> d!2222604 (= (content!14088 lt!2562160) e!4279859)))

(declare-fun b!7122504 () Bool)

(assert (=> b!7122504 (= e!4279859 (as set.empty (Set B!3271)))))

(declare-fun b!7122505 () Bool)

(assert (=> b!7122505 (= e!4279859 (set.union (set.insert (h!75329 lt!2562160) (as set.empty (Set B!3271))) (content!14088 (t!382912 lt!2562160))))))

(assert (= (and d!2222604 c!1329052) b!7122504))

(assert (= (and d!2222604 (not c!1329052)) b!7122505))

(declare-fun m!7839752 () Bool)

(assert (=> b!7122505 m!7839752))

(declare-fun m!7839754 () Bool)

(assert (=> b!7122505 m!7839754))

(assert (=> b!7122427 d!2222604))

(assert (=> b!7122378 d!2222544))

(declare-fun d!2222606 () Bool)

(declare-fun res!2905880 () Bool)

(declare-fun e!4279860 () Bool)

(assert (=> d!2222606 (=> res!2905880 e!4279860)))

(assert (=> d!2222606 (= res!2905880 (is-Nil!68881 l1!756))))

(assert (=> d!2222606 (= (subseq!744 l1!756 (t!382912 lt!2562116)) e!4279860)))

(declare-fun b!7122506 () Bool)

(declare-fun e!4279861 () Bool)

(assert (=> b!7122506 (= e!4279860 e!4279861)))

(declare-fun res!2905878 () Bool)

(assert (=> b!7122506 (=> (not res!2905878) (not e!4279861))))

(assert (=> b!7122506 (= res!2905878 (is-Cons!68881 (t!382912 lt!2562116)))))

(declare-fun b!7122508 () Bool)

(declare-fun e!4279863 () Bool)

(assert (=> b!7122508 (= e!4279863 (subseq!744 (t!382912 l1!756) (t!382912 (t!382912 lt!2562116))))))

(declare-fun b!7122507 () Bool)

(declare-fun e!4279862 () Bool)

(assert (=> b!7122507 (= e!4279861 e!4279862)))

(declare-fun res!2905881 () Bool)

(assert (=> b!7122507 (=> res!2905881 e!4279862)))

(assert (=> b!7122507 (= res!2905881 e!4279863)))

(declare-fun res!2905879 () Bool)

(assert (=> b!7122507 (=> (not res!2905879) (not e!4279863))))

(assert (=> b!7122507 (= res!2905879 (= (h!75329 l1!756) (h!75329 (t!382912 lt!2562116))))))

(declare-fun b!7122509 () Bool)

(assert (=> b!7122509 (= e!4279862 (subseq!744 l1!756 (t!382912 (t!382912 lt!2562116))))))

(assert (= (and d!2222606 (not res!2905880)) b!7122506))

(assert (= (and b!7122506 res!2905878) b!7122507))

(assert (= (and b!7122507 res!2905879) b!7122508))

(assert (= (and b!7122507 (not res!2905881)) b!7122509))

(declare-fun m!7839756 () Bool)

(assert (=> b!7122508 m!7839756))

(declare-fun m!7839758 () Bool)

(assert (=> b!7122509 m!7839758))

(assert (=> b!7122398 d!2222606))

(assert (=> b!7122442 d!2222606))

(declare-fun d!2222608 () Bool)

(assert (=> d!2222608 true))

(declare-fun setRes!51092 () Bool)

(assert (=> d!2222608 setRes!51092))

(declare-fun condSetEmpty!51092 () Bool)

(declare-fun res!2905884 () (Set B!3271))

(assert (=> d!2222608 (= condSetEmpty!51092 (= res!2905884 (as set.empty (Set B!3271))))))

(assert (=> d!2222608 (= (choose!55008 (set.union s1!414 s2!385) f!567) res!2905884)))

(declare-fun setIsEmpty!51092 () Bool)

(assert (=> setIsEmpty!51092 setRes!51092))

(declare-fun setNonEmpty!51092 () Bool)

(declare-fun tp!1961249 () Bool)

(assert (=> setNonEmpty!51092 (= setRes!51092 (and tp!1961249 tp_is_empty!45377))))

(declare-fun setElem!51092 () B!3271)

(declare-fun setRest!51092 () (Set B!3271))

(assert (=> setNonEmpty!51092 (= res!2905884 (set.union (set.insert setElem!51092 (as set.empty (Set B!3271))) setRest!51092))))

(assert (= (and d!2222608 condSetEmpty!51092) setIsEmpty!51092))

(assert (= (and d!2222608 (not condSetEmpty!51092)) setNonEmpty!51092))

(assert (=> d!2222562 d!2222608))

(declare-fun d!2222610 () Bool)

(declare-fun res!2905885 () Bool)

(declare-fun e!4279864 () Bool)

(assert (=> d!2222610 (=> res!2905885 e!4279864)))

(assert (=> d!2222610 (= res!2905885 (is-Nil!68881 lt!2562160))))

(assert (=> d!2222610 (= (noDuplicate!2789 lt!2562160) e!4279864)))

(declare-fun b!7122510 () Bool)

(declare-fun e!4279865 () Bool)

(assert (=> b!7122510 (= e!4279864 e!4279865)))

(declare-fun res!2905886 () Bool)

(assert (=> b!7122510 (=> (not res!2905886) (not e!4279865))))

(assert (=> b!7122510 (= res!2905886 (not (contains!20522 (t!382912 lt!2562160) (h!75329 lt!2562160))))))

(declare-fun b!7122511 () Bool)

(assert (=> b!7122511 (= e!4279865 (noDuplicate!2789 (t!382912 lt!2562160)))))

(assert (= (and d!2222610 (not res!2905885)) b!7122510))

(assert (= (and b!7122510 res!2905886) b!7122511))

(declare-fun m!7839760 () Bool)

(assert (=> b!7122510 m!7839760))

(declare-fun m!7839762 () Bool)

(assert (=> b!7122511 m!7839762))

(assert (=> d!2222560 d!2222610))

(declare-fun d!2222612 () Bool)

(declare-fun e!4279866 () Bool)

(assert (=> d!2222612 e!4279866))

(declare-fun res!2905887 () Bool)

(assert (=> d!2222612 (=> (not res!2905887) (not e!4279866))))

(declare-fun res!2905888 () List!69005)

(assert (=> d!2222612 (= res!2905887 (noDuplicate!2789 res!2905888))))

(declare-fun e!4279867 () Bool)

(assert (=> d!2222612 e!4279867))

(assert (=> d!2222612 (= (choose!55007 lt!2562118) res!2905888)))

(declare-fun b!7122512 () Bool)

(declare-fun tp!1961250 () Bool)

(assert (=> b!7122512 (= e!4279867 (and tp_is_empty!45377 tp!1961250))))

(declare-fun b!7122513 () Bool)

(assert (=> b!7122513 (= e!4279866 (= (content!14088 res!2905888) lt!2562118))))

(assert (= (and d!2222612 (is-Cons!68881 res!2905888)) b!7122512))

(assert (= (and d!2222612 res!2905887) b!7122513))

(declare-fun m!7839764 () Bool)

(assert (=> d!2222612 m!7839764))

(declare-fun m!7839766 () Bool)

(assert (=> b!7122513 m!7839766))

(assert (=> d!2222560 d!2222612))

(assert (=> d!2222556 d!2222570))

(assert (=> d!2222556 d!2222572))

(assert (=> d!2222556 d!2222562))

(declare-fun d!2222614 () Bool)

(assert (=> d!2222614 (= (set.member (h!75329 l1!756) (set.union (map!16406 s1!414 f!567) (map!16406 s2!385 f!567))) (set.member (h!75329 l1!756) (map!16406 (set.union s1!414 s2!385) f!567)))))

(assert (=> d!2222614 true))

(declare-fun _$5!293 () Unit!162721)

(assert (=> d!2222614 (= (choose!55006 s1!414 s2!385 f!567 (h!75329 l1!756)) _$5!293)))

(declare-fun bs!1886068 () Bool)

(assert (= bs!1886068 d!2222614))

(assert (=> bs!1886068 m!7839584))

(assert (=> bs!1886068 m!7839668))

(assert (=> bs!1886068 m!7839560))

(assert (=> bs!1886068 m!7839670))

(assert (=> bs!1886068 m!7839582))

(assert (=> d!2222556 d!2222614))

(declare-fun d!2222616 () Bool)

(declare-fun res!2905891 () Bool)

(declare-fun e!4279868 () Bool)

(assert (=> d!2222616 (=> res!2905891 e!4279868)))

(assert (=> d!2222616 (= res!2905891 (is-Nil!68881 (t!382912 l1!756)))))

(assert (=> d!2222616 (= (subseq!744 (t!382912 l1!756) (t!382912 lt!2562116)) e!4279868)))

(declare-fun b!7122515 () Bool)

(declare-fun e!4279869 () Bool)

(assert (=> b!7122515 (= e!4279868 e!4279869)))

(declare-fun res!2905889 () Bool)

(assert (=> b!7122515 (=> (not res!2905889) (not e!4279869))))

(assert (=> b!7122515 (= res!2905889 (is-Cons!68881 (t!382912 lt!2562116)))))

(declare-fun b!7122517 () Bool)

(declare-fun e!4279871 () Bool)

(assert (=> b!7122517 (= e!4279871 (subseq!744 (t!382912 (t!382912 l1!756)) (t!382912 (t!382912 lt!2562116))))))

(declare-fun b!7122516 () Bool)

(declare-fun e!4279870 () Bool)

(assert (=> b!7122516 (= e!4279869 e!4279870)))

(declare-fun res!2905892 () Bool)

(assert (=> b!7122516 (=> res!2905892 e!4279870)))

(assert (=> b!7122516 (= res!2905892 e!4279871)))

(declare-fun res!2905890 () Bool)

(assert (=> b!7122516 (=> (not res!2905890) (not e!4279871))))

(assert (=> b!7122516 (= res!2905890 (= (h!75329 (t!382912 l1!756)) (h!75329 (t!382912 lt!2562116))))))

(declare-fun b!7122518 () Bool)

(assert (=> b!7122518 (= e!4279870 (subseq!744 (t!382912 l1!756) (t!382912 (t!382912 lt!2562116))))))

(assert (= (and d!2222616 (not res!2905891)) b!7122515))

(assert (= (and b!7122515 res!2905889) b!7122516))

(assert (= (and b!7122516 res!2905890) b!7122517))

(assert (= (and b!7122516 (not res!2905892)) b!7122518))

(declare-fun m!7839768 () Bool)

(assert (=> b!7122517 m!7839768))

(assert (=> b!7122518 m!7839756))

(assert (=> b!7122441 d!2222616))

(declare-fun d!2222618 () Bool)

(declare-fun lt!2562175 () Bool)

(assert (=> d!2222618 (= lt!2562175 (set.member (h!75329 l1!756) (content!14088 lt!2562116)))))

(declare-fun e!4279872 () Bool)

(assert (=> d!2222618 (= lt!2562175 e!4279872)))

(declare-fun res!2905893 () Bool)

(assert (=> d!2222618 (=> (not res!2905893) (not e!4279872))))

(assert (=> d!2222618 (= res!2905893 (is-Cons!68881 lt!2562116))))

(assert (=> d!2222618 (= (contains!20522 lt!2562116 (h!75329 l1!756)) lt!2562175)))

(declare-fun b!7122519 () Bool)

(declare-fun e!4279873 () Bool)

(assert (=> b!7122519 (= e!4279872 e!4279873)))

(declare-fun res!2905894 () Bool)

(assert (=> b!7122519 (=> res!2905894 e!4279873)))

(assert (=> b!7122519 (= res!2905894 (= (h!75329 lt!2562116) (h!75329 l1!756)))))

(declare-fun b!7122520 () Bool)

(assert (=> b!7122520 (= e!4279873 (contains!20522 (t!382912 lt!2562116) (h!75329 l1!756)))))

(assert (= (and d!2222618 res!2905893) b!7122519))

(assert (= (and b!7122519 (not res!2905894)) b!7122520))

(declare-fun m!7839770 () Bool)

(assert (=> d!2222618 m!7839770))

(declare-fun m!7839772 () Bool)

(assert (=> d!2222618 m!7839772))

(declare-fun m!7839774 () Bool)

(assert (=> b!7122520 m!7839774))

(assert (=> d!2222552 d!2222618))

(declare-fun d!2222620 () Bool)

(assert (=> d!2222620 (contains!20522 lt!2562116 (h!75329 l1!756))))

(assert (=> d!2222620 true))

(declare-fun _$10!224 () Unit!162721)

(assert (=> d!2222620 (= (choose!55004 l1!756 lt!2562116 (h!75329 l1!756)) _$10!224)))

(declare-fun bs!1886069 () Bool)

(assert (= bs!1886069 d!2222620))

(assert (=> bs!1886069 m!7839640))

(assert (=> d!2222552 d!2222620))

(assert (=> d!2222552 d!2222564))

(declare-fun d!2222622 () Bool)

(declare-fun res!2905895 () Bool)

(declare-fun e!4279874 () Bool)

(assert (=> d!2222622 (=> res!2905895 e!4279874)))

(assert (=> d!2222622 (= res!2905895 (is-Nil!68881 (t!382912 (t!382912 l1!756))))))

(assert (=> d!2222622 (= (forall!16892 (t!382912 (t!382912 l1!756)) lambda!432894) e!4279874)))

(declare-fun b!7122521 () Bool)

(declare-fun e!4279875 () Bool)

(assert (=> b!7122521 (= e!4279874 e!4279875)))

(declare-fun res!2905896 () Bool)

(assert (=> b!7122521 (=> (not res!2905896) (not e!4279875))))

(assert (=> b!7122521 (= res!2905896 (dynLambda!28078 lambda!432894 (h!75329 (t!382912 (t!382912 l1!756)))))))

(declare-fun b!7122522 () Bool)

(assert (=> b!7122522 (= e!4279875 (forall!16892 (t!382912 (t!382912 (t!382912 l1!756))) lambda!432894))))

(assert (= (and d!2222622 (not res!2905895)) b!7122521))

(assert (= (and b!7122521 res!2905896) b!7122522))

(declare-fun b_lambda!271713 () Bool)

(assert (=> (not b_lambda!271713) (not b!7122521)))

(declare-fun m!7839776 () Bool)

(assert (=> b!7122521 m!7839776))

(declare-fun m!7839778 () Bool)

(assert (=> b!7122522 m!7839778))

(assert (=> b!7122376 d!2222622))

(declare-fun d!2222624 () Bool)

(assert (=> d!2222624 true))

(declare-fun setRes!51093 () Bool)

(assert (=> d!2222624 setRes!51093))

(declare-fun condSetEmpty!51093 () Bool)

(declare-fun res!2905897 () (Set B!3271))

(assert (=> d!2222624 (= condSetEmpty!51093 (= res!2905897 (as set.empty (Set B!3271))))))

(assert (=> d!2222624 (= (choose!55008 s2!385 f!567) res!2905897)))

(declare-fun setIsEmpty!51093 () Bool)

(assert (=> setIsEmpty!51093 setRes!51093))

(declare-fun setNonEmpty!51093 () Bool)

(declare-fun tp!1961251 () Bool)

(assert (=> setNonEmpty!51093 (= setRes!51093 (and tp!1961251 tp_is_empty!45377))))

(declare-fun setElem!51093 () B!3271)

(declare-fun setRest!51093 () (Set B!3271))

(assert (=> setNonEmpty!51093 (= res!2905897 (set.union (set.insert setElem!51093 (as set.empty (Set B!3271))) setRest!51093))))

(assert (= (and d!2222624 condSetEmpty!51093) setIsEmpty!51093))

(assert (= (and d!2222624 (not condSetEmpty!51093)) setNonEmpty!51093))

(assert (=> d!2222572 d!2222624))

(declare-fun b!7122523 () Bool)

(declare-fun e!4279879 () Bool)

(assert (=> b!7122523 (= e!4279879 (subseq!744 (ite c!1329039 l1!756 (t!382912 l1!756)) (t!382912 lt!2562116)))))

(declare-fun b!7122524 () Bool)

(declare-fun e!4279877 () Unit!162721)

(declare-fun call!650755 () Unit!162721)

(assert (=> b!7122524 (= e!4279877 call!650755)))

(declare-fun b!7122525 () Bool)

(declare-fun e!4279878 () Unit!162721)

(assert (=> b!7122525 (= e!4279878 call!650755)))

(declare-fun b!7122526 () Bool)

(declare-fun e!4279876 () Unit!162721)

(assert (=> b!7122526 (= e!4279876 e!4279878)))

(declare-fun c!1329054 () Bool)

(assert (=> b!7122526 (= c!1329054 (subseq!744 (ite c!1329039 l1!756 (t!382912 l1!756)) (t!382912 (t!382912 lt!2562116))))))

(declare-fun b!7122527 () Bool)

(declare-fun Unit!162729 () Unit!162721)

(assert (=> b!7122527 (= e!4279876 Unit!162729)))

(declare-fun b!7122528 () Bool)

(declare-fun Unit!162730 () Unit!162721)

(assert (=> b!7122528 (= e!4279877 Unit!162730)))

(declare-fun b!7122529 () Bool)

(declare-fun c!1329053 () Bool)

(assert (=> b!7122529 (= c!1329053 (not (isEmpty!40004 (t!382912 (ite c!1329039 l1!756 (t!382912 l1!756))))))))

(assert (=> b!7122529 (= e!4279878 e!4279877)))

(declare-fun d!2222626 () Bool)

(assert (=> d!2222626 (subseq!744 (tail!13922 (ite c!1329039 l1!756 (t!382912 l1!756))) (t!382912 lt!2562116))))

(declare-fun lt!2562176 () Unit!162721)

(assert (=> d!2222626 (= lt!2562176 e!4279876)))

(declare-fun c!1329055 () Bool)

(assert (=> d!2222626 (= c!1329055 (and (is-Cons!68881 (ite c!1329039 l1!756 (t!382912 l1!756))) (is-Cons!68881 (t!382912 lt!2562116))))))

(assert (=> d!2222626 e!4279879))

(declare-fun res!2905898 () Bool)

(assert (=> d!2222626 (=> (not res!2905898) (not e!4279879))))

(assert (=> d!2222626 (= res!2905898 (not (isEmpty!40004 (ite c!1329039 l1!756 (t!382912 l1!756)))))))

(assert (=> d!2222626 (= (subseqTail!25 (ite c!1329039 l1!756 (t!382912 l1!756)) (t!382912 lt!2562116)) lt!2562176)))

(declare-fun bm!650750 () Bool)

(assert (=> bm!650750 (= call!650755 (subseqTail!25 (ite c!1329054 (ite c!1329039 l1!756 (t!382912 l1!756)) (t!382912 (ite c!1329039 l1!756 (t!382912 l1!756)))) (t!382912 (t!382912 lt!2562116))))))

(assert (= (and d!2222626 res!2905898) b!7122523))

(assert (= (and d!2222626 c!1329055) b!7122526))

(assert (= (and d!2222626 (not c!1329055)) b!7122527))

(assert (= (and b!7122526 c!1329054) b!7122525))

(assert (= (and b!7122526 (not c!1329054)) b!7122529))

(assert (= (and b!7122529 c!1329053) b!7122524))

(assert (= (and b!7122529 (not c!1329053)) b!7122528))

(assert (= (or b!7122525 b!7122524) bm!650750))

(declare-fun m!7839780 () Bool)

(assert (=> b!7122526 m!7839780))

(declare-fun m!7839782 () Bool)

(assert (=> b!7122523 m!7839782))

(declare-fun m!7839784 () Bool)

(assert (=> b!7122529 m!7839784))

(declare-fun m!7839786 () Bool)

(assert (=> bm!650750 m!7839786))

(declare-fun m!7839788 () Bool)

(assert (=> d!2222626 m!7839788))

(assert (=> d!2222626 m!7839788))

(declare-fun m!7839790 () Bool)

(assert (=> d!2222626 m!7839790))

(declare-fun m!7839792 () Bool)

(assert (=> d!2222626 m!7839792))

(assert (=> bm!650746 d!2222626))

(declare-fun d!2222628 () Bool)

(declare-fun c!1329056 () Bool)

(assert (=> d!2222628 (= c!1329056 (is-Nil!68881 lt!2562164))))

(declare-fun e!4279880 () (Set B!3271))

(assert (=> d!2222628 (= (content!14088 lt!2562164) e!4279880)))

(declare-fun b!7122530 () Bool)

(assert (=> b!7122530 (= e!4279880 (as set.empty (Set B!3271)))))

(declare-fun b!7122531 () Bool)

(assert (=> b!7122531 (= e!4279880 (set.union (set.insert (h!75329 lt!2562164) (as set.empty (Set B!3271))) (content!14088 (t!382912 lt!2562164))))))

(assert (= (and d!2222628 c!1329056) b!7122530))

(assert (= (and d!2222628 (not c!1329056)) b!7122531))

(declare-fun m!7839794 () Bool)

(assert (=> b!7122531 m!7839794))

(declare-fun m!7839796 () Bool)

(assert (=> b!7122531 m!7839796))

(assert (=> b!7122443 d!2222628))

(declare-fun d!2222630 () Bool)

(declare-fun lt!2562177 () Bool)

(assert (=> d!2222630 (= lt!2562177 (set.member (h!75329 l1!756) (content!14088 l2!745)))))

(declare-fun e!4279881 () Bool)

(assert (=> d!2222630 (= lt!2562177 e!4279881)))

(declare-fun res!2905899 () Bool)

(assert (=> d!2222630 (=> (not res!2905899) (not e!4279881))))

(assert (=> d!2222630 (= res!2905899 (is-Cons!68881 l2!745))))

(assert (=> d!2222630 (= (contains!20522 l2!745 (h!75329 l1!756)) lt!2562177)))

(declare-fun b!7122532 () Bool)

(declare-fun e!4279882 () Bool)

(assert (=> b!7122532 (= e!4279881 e!4279882)))

(declare-fun res!2905900 () Bool)

(assert (=> b!7122532 (=> res!2905900 e!4279882)))

(assert (=> b!7122532 (= res!2905900 (= (h!75329 l2!745) (h!75329 l1!756)))))

(declare-fun b!7122533 () Bool)

(assert (=> b!7122533 (= e!4279882 (contains!20522 (t!382912 l2!745) (h!75329 l1!756)))))

(assert (= (and d!2222630 res!2905899) b!7122532))

(assert (= (and b!7122532 (not res!2905900)) b!7122533))

(assert (=> d!2222630 m!7839746))

(declare-fun m!7839798 () Bool)

(assert (=> d!2222630 m!7839798))

(declare-fun m!7839800 () Bool)

(assert (=> b!7122533 m!7839800))

(assert (=> bs!1886060 d!2222630))

(declare-fun d!2222632 () Bool)

(declare-fun res!2905903 () Bool)

(declare-fun e!4279883 () Bool)

(assert (=> d!2222632 (=> res!2905903 e!4279883)))

(assert (=> d!2222632 (= res!2905903 (is-Nil!68881 (tail!13922 l1!756)))))

(assert (=> d!2222632 (= (subseq!744 (tail!13922 l1!756) lt!2562116) e!4279883)))

(declare-fun b!7122534 () Bool)

(declare-fun e!4279884 () Bool)

(assert (=> b!7122534 (= e!4279883 e!4279884)))

(declare-fun res!2905901 () Bool)

(assert (=> b!7122534 (=> (not res!2905901) (not e!4279884))))

(assert (=> b!7122534 (= res!2905901 (is-Cons!68881 lt!2562116))))

(declare-fun b!7122536 () Bool)

(declare-fun e!4279886 () Bool)

(assert (=> b!7122536 (= e!4279886 (subseq!744 (t!382912 (tail!13922 l1!756)) (t!382912 lt!2562116)))))

(declare-fun b!7122535 () Bool)

(declare-fun e!4279885 () Bool)

(assert (=> b!7122535 (= e!4279884 e!4279885)))

(declare-fun res!2905904 () Bool)

(assert (=> b!7122535 (=> res!2905904 e!4279885)))

(assert (=> b!7122535 (= res!2905904 e!4279886)))

(declare-fun res!2905902 () Bool)

(assert (=> b!7122535 (=> (not res!2905902) (not e!4279886))))

(assert (=> b!7122535 (= res!2905902 (= (h!75329 (tail!13922 l1!756)) (h!75329 lt!2562116)))))

(declare-fun b!7122537 () Bool)

(assert (=> b!7122537 (= e!4279885 (subseq!744 (tail!13922 l1!756) (t!382912 lt!2562116)))))

(assert (= (and d!2222632 (not res!2905903)) b!7122534))

(assert (= (and b!7122534 res!2905901) b!7122535))

(assert (= (and b!7122535 res!2905902) b!7122536))

(assert (= (and b!7122535 (not res!2905904)) b!7122537))

(declare-fun m!7839802 () Bool)

(assert (=> b!7122536 m!7839802))

(assert (=> b!7122537 m!7839634))

(declare-fun m!7839804 () Bool)

(assert (=> b!7122537 m!7839804))

(assert (=> d!2222550 d!2222632))

(declare-fun d!2222634 () Bool)

(assert (=> d!2222634 (= (tail!13922 l1!756) (t!382912 l1!756))))

(assert (=> d!2222550 d!2222634))

(declare-fun d!2222636 () Bool)

(assert (=> d!2222636 (= (isEmpty!40004 l1!756) (is-Nil!68881 l1!756))))

(assert (=> d!2222550 d!2222636))

(declare-fun d!2222638 () Bool)

(declare-fun lt!2562178 () Bool)

(assert (=> d!2222638 (= lt!2562178 (set.member (h!75329 l1!756) (content!14088 l1!756)))))

(declare-fun e!4279887 () Bool)

(assert (=> d!2222638 (= lt!2562178 e!4279887)))

(declare-fun res!2905905 () Bool)

(assert (=> d!2222638 (=> (not res!2905905) (not e!4279887))))

(assert (=> d!2222638 (= res!2905905 (is-Cons!68881 l1!756))))

(assert (=> d!2222638 (= (contains!20522 l1!756 (h!75329 l1!756)) lt!2562178)))

(declare-fun b!7122538 () Bool)

(declare-fun e!4279888 () Bool)

(assert (=> b!7122538 (= e!4279887 e!4279888)))

(declare-fun res!2905906 () Bool)

(assert (=> b!7122538 (=> res!2905906 e!4279888)))

(assert (=> b!7122538 (= res!2905906 (= (h!75329 l1!756) (h!75329 l1!756)))))

(declare-fun b!7122539 () Bool)

(assert (=> b!7122539 (= e!4279888 (contains!20522 (t!382912 l1!756) (h!75329 l1!756)))))

(assert (= (and d!2222638 res!2905905) b!7122538))

(assert (= (and b!7122538 (not res!2905906)) b!7122539))

(declare-fun m!7839806 () Bool)

(assert (=> d!2222638 m!7839806))

(declare-fun m!7839808 () Bool)

(assert (=> d!2222638 m!7839808))

(declare-fun m!7839810 () Bool)

(assert (=> b!7122539 m!7839810))

(assert (=> b!7122416 d!2222638))

(assert (=> b!7122395 d!2222564))

(declare-fun d!2222640 () Bool)

(assert (=> d!2222640 true))

(declare-fun setRes!51094 () Bool)

(assert (=> d!2222640 setRes!51094))

(declare-fun condSetEmpty!51094 () Bool)

(declare-fun res!2905907 () (Set B!3271))

(assert (=> d!2222640 (= condSetEmpty!51094 (= res!2905907 (as set.empty (Set B!3271))))))

(assert (=> d!2222640 (= (choose!55008 s1!414 f!567) res!2905907)))

(declare-fun setIsEmpty!51094 () Bool)

(assert (=> setIsEmpty!51094 setRes!51094))

(declare-fun setNonEmpty!51094 () Bool)

(declare-fun tp!1961252 () Bool)

(assert (=> setNonEmpty!51094 (= setRes!51094 (and tp!1961252 tp_is_empty!45377))))

(declare-fun setElem!51094 () B!3271)

(declare-fun setRest!51094 () (Set B!3271))

(assert (=> setNonEmpty!51094 (= res!2905907 (set.union (set.insert setElem!51094 (as set.empty (Set B!3271))) setRest!51094))))

(assert (= (and d!2222640 condSetEmpty!51094) setIsEmpty!51094))

(assert (= (and d!2222640 (not condSetEmpty!51094)) setNonEmpty!51094))

(assert (=> d!2222570 d!2222640))

(declare-fun d!2222642 () Bool)

(declare-fun e!4279889 () Bool)

(assert (=> d!2222642 e!4279889))

(declare-fun res!2905908 () Bool)

(assert (=> d!2222642 (=> (not res!2905908) (not e!4279889))))

(declare-fun lt!2562179 () List!69005)

(assert (=> d!2222642 (= res!2905908 (noDuplicate!2789 lt!2562179))))

(assert (=> d!2222642 (= lt!2562179 (choose!55007 (set.union (map!16406 s1!414 f!567) (map!16406 s2!385 f!567))))))

(assert (=> d!2222642 (= (toList!11108 (set.union (map!16406 s1!414 f!567) (map!16406 s2!385 f!567))) lt!2562179)))

(declare-fun b!7122540 () Bool)

(assert (=> b!7122540 (= e!4279889 (= (content!14088 lt!2562179) (set.union (map!16406 s1!414 f!567) (map!16406 s2!385 f!567))))))

(assert (= (and d!2222642 res!2905908) b!7122540))

(declare-fun m!7839812 () Bool)

(assert (=> d!2222642 m!7839812))

(declare-fun m!7839814 () Bool)

(assert (=> d!2222642 m!7839814))

(declare-fun m!7839816 () Bool)

(assert (=> b!7122540 m!7839816))

(assert (=> d!2222554 d!2222642))

(declare-fun d!2222644 () Bool)

(declare-fun res!2905911 () Bool)

(declare-fun e!4279890 () Bool)

(assert (=> d!2222644 (=> res!2905911 e!4279890)))

(assert (=> d!2222644 (= res!2905911 (is-Nil!68881 (t!382912 l1!756)))))

(assert (=> d!2222644 (= (subseq!744 (t!382912 l1!756) (toList!11108 (set.union (map!16406 s1!414 f!567) (map!16406 s2!385 f!567)))) e!4279890)))

(declare-fun b!7122541 () Bool)

(declare-fun e!4279891 () Bool)

(assert (=> b!7122541 (= e!4279890 e!4279891)))

(declare-fun res!2905909 () Bool)

(assert (=> b!7122541 (=> (not res!2905909) (not e!4279891))))

(assert (=> b!7122541 (= res!2905909 (is-Cons!68881 (toList!11108 (set.union (map!16406 s1!414 f!567) (map!16406 s2!385 f!567)))))))

(declare-fun b!7122543 () Bool)

(declare-fun e!4279893 () Bool)

(assert (=> b!7122543 (= e!4279893 (subseq!744 (t!382912 (t!382912 l1!756)) (t!382912 (toList!11108 (set.union (map!16406 s1!414 f!567) (map!16406 s2!385 f!567))))))))

(declare-fun b!7122542 () Bool)

(declare-fun e!4279892 () Bool)

(assert (=> b!7122542 (= e!4279891 e!4279892)))

(declare-fun res!2905912 () Bool)

(assert (=> b!7122542 (=> res!2905912 e!4279892)))

(assert (=> b!7122542 (= res!2905912 e!4279893)))

(declare-fun res!2905910 () Bool)

(assert (=> b!7122542 (=> (not res!2905910) (not e!4279893))))

(assert (=> b!7122542 (= res!2905910 (= (h!75329 (t!382912 l1!756)) (h!75329 (toList!11108 (set.union (map!16406 s1!414 f!567) (map!16406 s2!385 f!567))))))))

(declare-fun b!7122544 () Bool)

(assert (=> b!7122544 (= e!4279892 (subseq!744 (t!382912 l1!756) (t!382912 (toList!11108 (set.union (map!16406 s1!414 f!567) (map!16406 s2!385 f!567))))))))

(assert (= (and d!2222644 (not res!2905911)) b!7122541))

(assert (= (and b!7122541 res!2905909) b!7122542))

(assert (= (and b!7122542 res!2905910) b!7122543))

(assert (= (and b!7122542 (not res!2905912)) b!7122544))

(declare-fun m!7839818 () Bool)

(assert (=> b!7122543 m!7839818))

(declare-fun m!7839820 () Bool)

(assert (=> b!7122544 m!7839820))

(assert (=> d!2222554 d!2222644))

(assert (=> d!2222554 d!2222572))

(assert (=> d!2222554 d!2222570))

(declare-fun d!2222646 () Bool)

(declare-fun res!2905913 () Bool)

(declare-fun e!4279894 () Bool)

(assert (=> d!2222646 (=> res!2905913 e!4279894)))

(assert (=> d!2222646 (= res!2905913 (is-Nil!68881 (t!382912 l1!756)))))

(assert (=> d!2222646 (= (forall!16892 (t!382912 l1!756) lambda!432902) e!4279894)))

(declare-fun b!7122545 () Bool)

(declare-fun e!4279895 () Bool)

(assert (=> b!7122545 (= e!4279894 e!4279895)))

(declare-fun res!2905914 () Bool)

(assert (=> b!7122545 (=> (not res!2905914) (not e!4279895))))

(assert (=> b!7122545 (= res!2905914 (dynLambda!28078 lambda!432902 (h!75329 (t!382912 l1!756))))))

(declare-fun b!7122546 () Bool)

(assert (=> b!7122546 (= e!4279895 (forall!16892 (t!382912 (t!382912 l1!756)) lambda!432902))))

(assert (= (and d!2222646 (not res!2905913)) b!7122545))

(assert (= (and b!7122545 res!2905914) b!7122546))

(declare-fun b_lambda!271715 () Bool)

(assert (=> (not b_lambda!271715) (not b!7122545)))

(declare-fun m!7839822 () Bool)

(assert (=> b!7122545 m!7839822))

(declare-fun m!7839824 () Bool)

(assert (=> b!7122546 m!7839824))

(assert (=> d!2222554 d!2222646))

(declare-fun bs!1886070 () Bool)

(declare-fun d!2222648 () Bool)

(assert (= bs!1886070 (and d!2222648 b!7122347)))

(declare-fun lambda!432908 () Int)

(assert (=> bs!1886070 (= lambda!432908 lambda!432894)))

(declare-fun bs!1886071 () Bool)

(assert (= bs!1886071 (and d!2222648 d!2222554)))

(assert (=> bs!1886071 (= lambda!432908 lambda!432902)))

(assert (=> d!2222648 true))

(assert (=> d!2222648 (forall!16892 (t!382912 l1!756) lambda!432908)))

(assert (=> d!2222648 true))

(declare-fun _$6!612 () Unit!162721)

(assert (=> d!2222648 (= (choose!55005 s1!414 s2!385 f!567 (t!382912 l1!756) l2!745) _$6!612)))

(declare-fun bs!1886072 () Bool)

(assert (= bs!1886072 d!2222648))

(declare-fun m!7839826 () Bool)

(assert (=> bs!1886072 m!7839826))

(assert (=> d!2222554 d!2222648))

(declare-fun condSetEmpty!51095 () Bool)

(assert (=> setNonEmpty!51085 (= condSetEmpty!51095 (= setRest!51085 (as set.empty (Set A!613))))))

(declare-fun setRes!51095 () Bool)

(assert (=> setNonEmpty!51085 (= tp!1961234 setRes!51095)))

(declare-fun setIsEmpty!51095 () Bool)

(assert (=> setIsEmpty!51095 setRes!51095))

(declare-fun setNonEmpty!51095 () Bool)

(declare-fun tp!1961253 () Bool)

(assert (=> setNonEmpty!51095 (= setRes!51095 (and tp!1961253 tp_is_empty!45379))))

(declare-fun setElem!51095 () A!613)

(declare-fun setRest!51095 () (Set A!613))

(assert (=> setNonEmpty!51095 (= setRest!51085 (set.union (set.insert setElem!51095 (as set.empty (Set A!613))) setRest!51095))))

(assert (= (and setNonEmpty!51085 condSetEmpty!51095) setIsEmpty!51095))

(assert (= (and setNonEmpty!51085 (not condSetEmpty!51095)) setNonEmpty!51095))

(declare-fun b!7122547 () Bool)

(declare-fun e!4279896 () Bool)

(declare-fun tp!1961254 () Bool)

(assert (=> b!7122547 (= e!4279896 (and tp_is_empty!45377 tp!1961254))))

(assert (=> b!7122452 (= tp!1961230 e!4279896)))

(assert (= (and b!7122452 (is-Cons!68881 (t!382912 (t!382912 l2!745)))) b!7122547))

(declare-fun b!7122548 () Bool)

(declare-fun e!4279897 () Bool)

(declare-fun tp!1961255 () Bool)

(assert (=> b!7122548 (= e!4279897 (and tp_is_empty!45377 tp!1961255))))

(assert (=> b!7122455 (= tp!1961235 e!4279897)))

(assert (= (and b!7122455 (is-Cons!68881 (t!382912 (t!382912 l1!756)))) b!7122548))

(declare-fun condSetEmpty!51096 () Bool)

(assert (=> setNonEmpty!51084 (= condSetEmpty!51096 (= setRest!51084 (as set.empty (Set A!613))))))

(declare-fun setRes!51096 () Bool)

(assert (=> setNonEmpty!51084 (= tp!1961233 setRes!51096)))

(declare-fun setIsEmpty!51096 () Bool)

(assert (=> setIsEmpty!51096 setRes!51096))

(declare-fun setNonEmpty!51096 () Bool)

(declare-fun tp!1961256 () Bool)

(assert (=> setNonEmpty!51096 (= setRes!51096 (and tp!1961256 tp_is_empty!45379))))

(declare-fun setElem!51096 () A!613)

(declare-fun setRest!51096 () (Set A!613))

(assert (=> setNonEmpty!51096 (= setRest!51084 (set.union (set.insert setElem!51096 (as set.empty (Set A!613))) setRest!51096))))

(assert (= (and setNonEmpty!51084 condSetEmpty!51096) setIsEmpty!51096))

(assert (= (and setNonEmpty!51084 (not condSetEmpty!51096)) setNonEmpty!51096))

(declare-fun b_lambda!271717 () Bool)

(assert (= b_lambda!271715 (or d!2222554 b_lambda!271717)))

(declare-fun bs!1886073 () Bool)

(declare-fun d!2222650 () Bool)

(assert (= bs!1886073 (and d!2222650 d!2222554)))

(assert (=> bs!1886073 (= (dynLambda!28078 lambda!432902 (h!75329 (t!382912 l1!756))) (contains!20522 l2!745 (h!75329 (t!382912 l1!756))))))

(assert (=> bs!1886073 m!7839698))

(assert (=> b!7122545 d!2222650))

(declare-fun b_lambda!271719 () Bool)

(assert (= b_lambda!271713 (or b!7122347 b_lambda!271719)))

(declare-fun bs!1886074 () Bool)

(declare-fun d!2222652 () Bool)

(assert (= bs!1886074 (and d!2222652 b!7122347)))

(assert (=> bs!1886074 (= (dynLambda!28078 lambda!432894 (h!75329 (t!382912 (t!382912 l1!756)))) (contains!20522 l2!745 (h!75329 (t!382912 (t!382912 l1!756)))))))

(declare-fun m!7839828 () Bool)

(assert (=> bs!1886074 m!7839828))

(assert (=> b!7122521 d!2222652))

(push 1)

(assert (not b!7122517))

(assert (not b!7122522))

(assert (not b!7122544))

(assert (not d!2222600))

(assert (not b!7122493))

(assert (not b!7122499))

(assert (not b_lambda!271703))

(assert (not b!7122486))

(assert (not b_next!134497))

(assert (not b!7122510))

(assert (not bs!1886074))

(assert (not b!7122548))

(assert (not d!2222638))

(assert (not b!7122536))

(assert (not d!2222598))

(assert (not d!2222612))

(assert (not d!2222626))

(assert (not b!7122533))

(assert (not b!7122509))

(assert (not b!7122529))

(assert b_and!350803)

(assert (not d!2222618))

(assert (not b!7122513))

(assert tp_is_empty!45377)

(assert (not b!7122540))

(assert (not b!7122543))

(assert (not b_lambda!271717))

(assert (not d!2222614))

(assert (not b_lambda!271719))

(assert (not d!2222630))

(assert tp_is_empty!45379)

(assert (not b!7122547))

(assert (not b!7122523))

(assert (not setNonEmpty!51096))

(assert (not bm!650750))

(assert (not d!2222620))

(assert (not b!7122520))

(assert (not d!2222642))

(assert (not b!7122537))

(assert (not b!7122539))

(assert (not b!7122492))

(assert (not b!7122511))

(assert (not b!7122526))

(assert (not setNonEmpty!51092))

(assert (not d!2222648))

(assert (not b!7122531))

(assert (not b!7122508))

(assert (not b!7122518))

(assert (not setNonEmpty!51095))

(assert (not b!7122487))

(assert (not b!7122512))

(assert (not b!7122505))

(assert (not b_lambda!271701))

(assert (not b!7122546))

(assert (not bs!1886073))

(assert (not setNonEmpty!51093))

(assert (not setNonEmpty!51094))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350803)

(assert (not b_next!134497))

(check-sat)

(pop 1)


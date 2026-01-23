; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!44950 () Bool)

(assert start!44950)

(declare-fun b_free!13085 () Bool)

(declare-fun b_next!13085 () Bool)

(assert (=> start!44950 (= b_free!13085 (not b_next!13085))))

(declare-fun tp!130427 () Bool)

(declare-fun b_and!50353 () Bool)

(assert (=> start!44950 (= tp!130427 b_and!50353)))

(declare-fun b_free!13087 () Bool)

(declare-fun b_next!13087 () Bool)

(assert (=> start!44950 (= b_free!13087 (not b_next!13087))))

(declare-fun tp!130426 () Bool)

(declare-fun b_and!50355 () Bool)

(assert (=> start!44950 (= tp!130426 b_and!50355)))

(assert (=> start!44950 true))

(declare-fun lambda!13889 () Int)

(declare-fun order!4085 () Int)

(declare-fun order!4083 () Int)

(declare-fun f!1027 () Int)

(declare-fun dynLambda!2795 (Int Int) Int)

(declare-fun dynLambda!2796 (Int Int) Int)

(assert (=> start!44950 (< (dynLambda!2795 order!4083 f!1027) (dynLambda!2796 order!4085 lambda!13889))))

(assert (=> start!44950 true))

(declare-fun p!1789 () Int)

(declare-fun order!4087 () Int)

(declare-fun dynLambda!2797 (Int Int) Int)

(assert (=> start!44950 (< (dynLambda!2797 order!4087 p!1789) (dynLambda!2796 order!4085 lambda!13889))))

(declare-fun b!471087 () Bool)

(declare-fun e!288061 () Bool)

(declare-fun e!288062 () Bool)

(assert (=> b!471087 (= e!288061 e!288062)))

(declare-fun res!208815 () Bool)

(assert (=> b!471087 (=> (not res!208815) (not e!288062))))

(declare-datatypes ((B!899 0))(
  ( (B!900 (val!1475 Int)) )
))
(declare-datatypes ((List!4536 0))(
  ( (Nil!4526) (Cons!4526 (h!9923 B!899) (t!72932 List!4536)) )
))
(declare-fun l!2882 () List!4536)

(declare-fun lt!209871 () (Set B!899))

(assert (=> b!471087 (= res!208815 (set.member (h!9923 l!2882) lt!209871))))

(declare-datatypes ((Unit!8257 0))(
  ( (Unit!8258) )
))
(declare-fun lt!209874 () Unit!8257)

(declare-fun lt!209873 () List!4536)

(declare-fun subseqContains!5 (List!4536 List!4536 B!899) Unit!8257)

(assert (=> b!471087 (= lt!209874 (subseqContains!5 l!2882 lt!209873 (h!9923 l!2882)))))

(declare-fun b!471089 () Bool)

(declare-fun e!288063 () Bool)

(declare-fun tp_is_empty!2055 () Bool)

(declare-fun tp!130424 () Bool)

(assert (=> b!471089 (= e!288063 (and tp_is_empty!2055 tp!130424))))

(declare-fun b!471090 () Bool)

(declare-fun e!288064 () Bool)

(assert (=> b!471090 (= e!288064 e!288061)))

(declare-fun res!208816 () Bool)

(assert (=> b!471090 (=> (not res!208816) (not e!288061))))

(declare-fun subseq!94 (List!4536 List!4536) Bool)

(assert (=> b!471090 (= res!208816 (subseq!94 l!2882 lt!209873))))

(declare-fun toList!307 ((Set B!899)) List!4536)

(assert (=> b!471090 (= lt!209873 (toList!307 lt!209871))))

(declare-datatypes ((A!337 0))(
  ( (A!338 (val!1476 Int)) )
))
(declare-fun s!1494 () (Set A!337))

(declare-fun flatMap!73 ((Set A!337) Int) (Set B!899))

(assert (=> b!471090 (= lt!209871 (flatMap!73 s!1494 f!1027))))

(declare-fun setIsEmpty!1857 () Bool)

(declare-fun setRes!1857 () Bool)

(assert (=> setIsEmpty!1857 setRes!1857))

(declare-fun b!471091 () Bool)

(declare-fun res!208817 () Bool)

(assert (=> b!471091 (=> (not res!208817) (not e!288061))))

(assert (=> b!471091 (= res!208817 (is-Cons!4526 l!2882))))

(declare-fun setNonEmpty!1857 () Bool)

(declare-fun tp!130425 () Bool)

(declare-fun tp_is_empty!2053 () Bool)

(assert (=> setNonEmpty!1857 (= setRes!1857 (and tp!130425 tp_is_empty!2053))))

(declare-fun setElem!1857 () A!337)

(declare-fun setRest!1857 () (Set A!337))

(assert (=> setNonEmpty!1857 (= s!1494 (set.union (set.insert setElem!1857 (as set.empty (Set A!337))) setRest!1857))))

(declare-fun b!471088 () Bool)

(declare-fun isEmpty!3525 (List!4536) Bool)

(assert (=> b!471088 (= e!288062 (not (not (isEmpty!3525 l!2882))))))

(declare-fun dynLambda!2798 (Int B!899) Bool)

(assert (=> b!471088 (dynLambda!2798 p!1789 (h!9923 l!2882))))

(declare-fun lt!209872 () Unit!8257)

(declare-fun lemmaFlatMapForallElem!1 ((Set A!337) Int Int B!899) Unit!8257)

(assert (=> b!471088 (= lt!209872 (lemmaFlatMapForallElem!1 s!1494 f!1027 p!1789 (h!9923 l!2882)))))

(declare-fun empty!2551 () A!337)

(declare-fun flatMapPost!5 ((Set A!337) Int B!899) A!337)

(assert (=> b!471088 (= (flatMapPost!5 s!1494 f!1027 (h!9923 l!2882)) empty!2551)))

(assert (=> b!471088 true))

(assert (=> b!471088 tp_is_empty!2053))

(declare-fun res!208818 () Bool)

(assert (=> start!44950 (=> (not res!208818) (not e!288064))))

(declare-fun Forall!223 (Int) Bool)

(assert (=> start!44950 (= res!208818 (Forall!223 lambda!13889))))

(assert (=> start!44950 e!288064))

(assert (=> start!44950 tp!130427))

(assert (=> start!44950 tp!130426))

(declare-fun condSetEmpty!1857 () Bool)

(assert (=> start!44950 (= condSetEmpty!1857 (= s!1494 (as set.empty (Set A!337))))))

(assert (=> start!44950 setRes!1857))

(assert (=> start!44950 e!288063))

(assert (= (and start!44950 res!208818) b!471090))

(assert (= (and b!471090 res!208816) b!471091))

(assert (= (and b!471091 res!208817) b!471087))

(assert (= (and b!471087 res!208815) b!471088))

(assert (= (and start!44950 condSetEmpty!1857) setIsEmpty!1857))

(assert (= (and start!44950 (not condSetEmpty!1857)) setNonEmpty!1857))

(assert (= (and start!44950 (is-Cons!4526 l!2882)) b!471089))

(declare-fun b_lambda!19643 () Bool)

(assert (=> (not b_lambda!19643) (not b!471088)))

(declare-fun t!72931 () Bool)

(declare-fun tb!47005 () Bool)

(assert (=> (and start!44950 (= p!1789 p!1789) t!72931) tb!47005))

(declare-fun result!51736 () Bool)

(assert (=> tb!47005 (= result!51736 true)))

(assert (=> b!471088 t!72931))

(declare-fun b_and!50357 () Bool)

(assert (= b_and!50355 (and (=> t!72931 result!51736) b_and!50357)))

(declare-fun m!744655 () Bool)

(assert (=> b!471087 m!744655))

(declare-fun m!744657 () Bool)

(assert (=> b!471087 m!744657))

(declare-fun m!744659 () Bool)

(assert (=> b!471090 m!744659))

(declare-fun m!744661 () Bool)

(assert (=> b!471090 m!744661))

(declare-fun m!744663 () Bool)

(assert (=> b!471090 m!744663))

(declare-fun m!744665 () Bool)

(assert (=> b!471088 m!744665))

(declare-fun m!744667 () Bool)

(assert (=> b!471088 m!744667))

(declare-fun m!744669 () Bool)

(assert (=> b!471088 m!744669))

(declare-fun m!744671 () Bool)

(assert (=> b!471088 m!744671))

(declare-fun m!744673 () Bool)

(assert (=> start!44950 m!744673))

(push 1)

(assert b_and!50353)

(assert tp_is_empty!2055)

(assert (not b!471088))

(assert (not b!471090))

(assert (not b_lambda!19643))

(assert b_and!50357)

(assert (not b!471089))

(assert (not start!44950))

(assert (not b_next!13087))

(assert (not b!471087))

(assert (not b_next!13085))

(assert tp_is_empty!2053)

(assert (not setNonEmpty!1857))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50353)

(assert b_and!50357)

(assert (not b_next!13087))

(assert (not b_next!13085))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!19647 () Bool)

(assert (= b_lambda!19643 (or (and start!44950 b_free!13087) b_lambda!19647)))

(push 1)

(assert b_and!50353)

(assert tp_is_empty!2055)

(assert (not b!471088))

(assert (not b!471090))

(assert b_and!50357)

(assert (not b!471089))

(assert (not start!44950))

(assert (not b_lambda!19647))

(assert (not b_next!13087))

(assert (not b!471087))

(assert (not b_next!13085))

(assert tp_is_empty!2053)

(assert (not setNonEmpty!1857))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50353)

(assert b_and!50357)

(assert (not b_next!13087))

(assert (not b_next!13085))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!471126 () Bool)

(declare-fun e!288085 () Bool)

(assert (=> b!471126 (= e!288085 (subseq!94 l!2882 (t!72932 lt!209873)))))

(declare-fun b!471125 () Bool)

(declare-fun e!288087 () Bool)

(assert (=> b!471125 (= e!288087 (subseq!94 (t!72932 l!2882) (t!72932 lt!209873)))))

(declare-fun d!179235 () Bool)

(declare-fun res!208839 () Bool)

(declare-fun e!288086 () Bool)

(assert (=> d!179235 (=> res!208839 e!288086)))

(assert (=> d!179235 (= res!208839 (is-Nil!4526 l!2882))))

(assert (=> d!179235 (= (subseq!94 l!2882 lt!209873) e!288086)))

(declare-fun b!471123 () Bool)

(declare-fun e!288088 () Bool)

(assert (=> b!471123 (= e!288086 e!288088)))

(declare-fun res!208841 () Bool)

(assert (=> b!471123 (=> (not res!208841) (not e!288088))))

(assert (=> b!471123 (= res!208841 (is-Cons!4526 lt!209873))))

(declare-fun b!471124 () Bool)

(assert (=> b!471124 (= e!288088 e!288085)))

(declare-fun res!208842 () Bool)

(assert (=> b!471124 (=> res!208842 e!288085)))

(assert (=> b!471124 (= res!208842 e!288087)))

(declare-fun res!208840 () Bool)

(assert (=> b!471124 (=> (not res!208840) (not e!288087))))

(assert (=> b!471124 (= res!208840 (= (h!9923 l!2882) (h!9923 lt!209873)))))

(assert (= (and d!179235 (not res!208839)) b!471123))

(assert (= (and b!471123 res!208841) b!471124))

(assert (= (and b!471124 res!208840) b!471125))

(assert (= (and b!471124 (not res!208842)) b!471126))

(declare-fun m!744695 () Bool)

(assert (=> b!471126 m!744695))

(declare-fun m!744697 () Bool)

(assert (=> b!471125 m!744697))

(assert (=> b!471090 d!179235))

(declare-fun d!179237 () Bool)

(declare-fun e!288091 () Bool)

(assert (=> d!179237 e!288091))

(declare-fun res!208845 () Bool)

(assert (=> d!179237 (=> (not res!208845) (not e!288091))))

(declare-fun lt!209889 () List!4536)

(declare-fun noDuplicate!90 (List!4536) Bool)

(assert (=> d!179237 (= res!208845 (noDuplicate!90 lt!209889))))

(declare-fun choose!3533 ((Set B!899)) List!4536)

(assert (=> d!179237 (= lt!209889 (choose!3533 lt!209871))))

(assert (=> d!179237 (= (toList!307 lt!209871) lt!209889)))

(declare-fun b!471129 () Bool)

(declare-fun content!767 (List!4536) (Set B!899))

(assert (=> b!471129 (= e!288091 (= (content!767 lt!209889) lt!209871))))

(assert (= (and d!179237 res!208845) b!471129))

(declare-fun m!744699 () Bool)

(assert (=> d!179237 m!744699))

(declare-fun m!744701 () Bool)

(assert (=> d!179237 m!744701))

(declare-fun m!744703 () Bool)

(assert (=> b!471129 m!744703))

(assert (=> b!471090 d!179237))

(declare-fun d!179239 () Bool)

(declare-fun choose!3534 ((Set A!337) Int) (Set B!899))

(assert (=> d!179239 (= (flatMap!73 s!1494 f!1027) (choose!3534 s!1494 f!1027))))

(declare-fun bs!58395 () Bool)

(assert (= bs!58395 d!179239))

(declare-fun m!744705 () Bool)

(assert (=> bs!58395 m!744705))

(assert (=> b!471090 d!179239))

(declare-fun d!179241 () Bool)

(declare-fun choose!3535 (Int) Bool)

(assert (=> d!179241 (= (Forall!223 lambda!13889) (choose!3535 lambda!13889))))

(declare-fun bs!58396 () Bool)

(assert (= bs!58396 d!179241))

(declare-fun m!744707 () Bool)

(assert (=> bs!58396 m!744707))

(assert (=> start!44950 d!179241))

(declare-fun d!179243 () Bool)

(assert (=> d!179243 (= (isEmpty!3525 l!2882) (is-Nil!4526 l!2882))))

(assert (=> b!471088 d!179243))

(declare-fun d!179245 () Bool)

(assert (=> d!179245 (dynLambda!2798 p!1789 (h!9923 l!2882))))

(declare-fun lt!209892 () Unit!8257)

(declare-fun choose!3536 ((Set A!337) Int Int B!899) Unit!8257)

(assert (=> d!179245 (= lt!209892 (choose!3536 s!1494 f!1027 p!1789 (h!9923 l!2882)))))

(assert (=> d!179245 (set.member (h!9923 l!2882) (flatMap!73 s!1494 f!1027))))

(assert (=> d!179245 (= (lemmaFlatMapForallElem!1 s!1494 f!1027 p!1789 (h!9923 l!2882)) lt!209892)))

(declare-fun b_lambda!19649 () Bool)

(assert (=> (not b_lambda!19649) (not d!179245)))

(assert (=> d!179245 t!72931))

(declare-fun b_and!50365 () Bool)

(assert (= b_and!50357 (and (=> t!72931 result!51736) b_and!50365)))

(assert (=> d!179245 m!744667))

(declare-fun m!744709 () Bool)

(assert (=> d!179245 m!744709))

(assert (=> d!179245 m!744663))

(declare-fun m!744711 () Bool)

(assert (=> d!179245 m!744711))

(assert (=> b!471088 d!179245))

(declare-fun bs!58397 () Bool)

(declare-fun d!179247 () Bool)

(assert (= bs!58397 (and d!179247 start!44950)))

(declare-fun lambda!13895 () Int)

(assert (=> bs!58397 (not (= lambda!13895 lambda!13889))))

(assert (=> d!179247 true))

(assert (=> d!179247 true))

(assert (=> d!179247 (< (dynLambda!2795 order!4083 f!1027) (dynLambda!2796 order!4085 lambda!13895))))

(declare-fun exists!47 ((Set A!337) Int) Bool)

(assert (=> d!179247 (= (set.member (h!9923 l!2882) (flatMap!73 s!1494 f!1027)) (exists!47 s!1494 lambda!13895))))

(declare-fun lt!209895 () A!337)

(declare-fun choose!3537 ((Set A!337) Int B!899) A!337)

(assert (=> d!179247 (= lt!209895 (choose!3537 s!1494 f!1027 (h!9923 l!2882)))))

(assert (=> d!179247 (= (flatMapPost!5 s!1494 f!1027 (h!9923 l!2882)) lt!209895)))

(declare-fun bs!58398 () Bool)

(assert (= bs!58398 d!179247))

(assert (=> bs!58398 m!744663))

(assert (=> bs!58398 m!744711))

(declare-fun m!744713 () Bool)

(assert (=> bs!58398 m!744713))

(declare-fun m!744715 () Bool)

(assert (=> bs!58398 m!744715))

(assert (=> b!471088 d!179247))

(declare-fun d!179249 () Bool)

(declare-fun contains!1020 (List!4536 B!899) Bool)

(assert (=> d!179249 (contains!1020 lt!209873 (h!9923 l!2882))))

(declare-fun lt!209898 () Unit!8257)

(declare-fun choose!3538 (List!4536 List!4536 B!899) Unit!8257)

(assert (=> d!179249 (= lt!209898 (choose!3538 l!2882 lt!209873 (h!9923 l!2882)))))

(declare-fun e!288094 () Bool)

(assert (=> d!179249 e!288094))

(declare-fun res!208848 () Bool)

(assert (=> d!179249 (=> (not res!208848) (not e!288094))))

(assert (=> d!179249 (= res!208848 (subseq!94 l!2882 lt!209873))))

(assert (=> d!179249 (= (subseqContains!5 l!2882 lt!209873 (h!9923 l!2882)) lt!209898)))

(declare-fun b!471135 () Bool)

(assert (=> b!471135 (= e!288094 (contains!1020 l!2882 (h!9923 l!2882)))))

(assert (= (and d!179249 res!208848) b!471135))

(declare-fun m!744717 () Bool)

(assert (=> d!179249 m!744717))

(declare-fun m!744719 () Bool)

(assert (=> d!179249 m!744719))

(assert (=> d!179249 m!744659))

(declare-fun m!744721 () Bool)

(assert (=> b!471135 m!744721))

(assert (=> b!471087 d!179249))

(declare-fun b!471140 () Bool)

(declare-fun e!288097 () Bool)

(declare-fun tp!130442 () Bool)

(assert (=> b!471140 (= e!288097 (and tp_is_empty!2055 tp!130442))))

(assert (=> b!471089 (= tp!130424 e!288097)))

(assert (= (and b!471089 (is-Cons!4526 (t!72932 l!2882))) b!471140))

(declare-fun condSetEmpty!1863 () Bool)

(assert (=> setNonEmpty!1857 (= condSetEmpty!1863 (= setRest!1857 (as set.empty (Set A!337))))))

(declare-fun setRes!1863 () Bool)

(assert (=> setNonEmpty!1857 (= tp!130425 setRes!1863)))

(declare-fun setIsEmpty!1863 () Bool)

(assert (=> setIsEmpty!1863 setRes!1863))

(declare-fun setNonEmpty!1863 () Bool)

(declare-fun tp!130445 () Bool)

(assert (=> setNonEmpty!1863 (= setRes!1863 (and tp!130445 tp_is_empty!2053))))

(declare-fun setElem!1863 () A!337)

(declare-fun setRest!1863 () (Set A!337))

(assert (=> setNonEmpty!1863 (= setRest!1857 (set.union (set.insert setElem!1863 (as set.empty (Set A!337))) setRest!1863))))

(assert (= (and setNonEmpty!1857 condSetEmpty!1863) setIsEmpty!1863))

(assert (= (and setNonEmpty!1857 (not condSetEmpty!1863)) setNonEmpty!1863))

(declare-fun b_lambda!19653 () Bool)

(assert (= b_lambda!19649 (or (and start!44950 b_free!13087) b_lambda!19653)))

(push 1)

(assert b_and!50353)

(assert (not d!179239))

(assert (not d!179241))

(assert (not setNonEmpty!1863))

(assert (not d!179249))

(assert (not b!471129))

(assert (not d!179245))

(assert b_and!50365)

(assert (not b!471126))

(assert tp_is_empty!2053)

(assert (not b_lambda!19653))

(assert (not b!471125))

(assert (not b!471140))

(assert (not b_lambda!19647))

(assert (not d!179237))

(assert (not b_next!13087))

(assert (not b_next!13085))

(assert (not b!471135))

(assert (not d!179247))

(assert tp_is_empty!2055)

(check-sat)

(pop 1)

(push 1)

(assert b_and!50353)

(assert b_and!50365)

(assert (not b_next!13087))

(assert (not b_next!13085))

(check-sat)

(pop 1)


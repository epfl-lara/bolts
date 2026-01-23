; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713430 () Bool)

(assert start!713430)

(declare-fun b_free!134051 () Bool)

(declare-fun b_next!134841 () Bool)

(assert (=> start!713430 (= b_free!134051 (not b_next!134841))))

(declare-fun tp!2077941 () Bool)

(declare-fun b_and!351459 () Bool)

(assert (=> start!713430 (= tp!2077941 b_and!351459)))

(assert (=> start!713430 true))

(declare-fun lambda!452844 () Int)

(declare-fun lambda!452845 () Int)

(declare-datatypes ((B!3599 0))(
  ( (B!3600 (val!29217 Int)) )
))
(declare-datatypes ((List!71363 0))(
  ( (Nil!71239) (Cons!71239 (h!77687 B!3599) (t!385595 List!71363)) )
))
(declare-fun lt!2602839 () List!71363)

(declare-fun lt!2602836 () List!71363)

(assert (=> start!713430 (= (= lt!2602839 lt!2602836) (= lambda!452845 lambda!452844))))

(assert (=> start!713430 true))

(declare-fun setNonEmpty!54862 () Bool)

(declare-fun setRes!54863 () Bool)

(declare-fun tp!2077940 () Bool)

(declare-fun tp_is_empty!47689 () Bool)

(assert (=> setNonEmpty!54862 (= setRes!54863 (and tp!2077940 tp_is_empty!47689))))

(declare-datatypes ((A!897 0))(
  ( (A!898 (val!29218 Int)) )
))
(declare-fun s1!435 () (Set A!897))

(declare-fun setElem!54863 () A!897)

(declare-fun setRest!54862 () (Set A!897))

(assert (=> setNonEmpty!54862 (= s1!435 (set.union (set.insert setElem!54863 (as set.empty (Set A!897))) setRest!54862))))

(declare-fun setIsEmpty!54862 () Bool)

(assert (=> setIsEmpty!54862 setRes!54863))

(declare-fun b!7317695 () Bool)

(declare-fun e!4380884 () Bool)

(declare-fun forall!17799 (List!71363 Int) Bool)

(assert (=> b!7317695 (= e!4380884 (forall!17799 lt!2602839 lambda!452844))))

(declare-fun setIsEmpty!54863 () Bool)

(declare-fun setRes!54862 () Bool)

(assert (=> setIsEmpty!54863 setRes!54862))

(declare-fun b!7317696 () Bool)

(declare-fun res!2956926 () Bool)

(assert (=> b!7317696 (=> (not res!2956926) (not e!4380884))))

(assert (=> b!7317696 (= res!2956926 (forall!17799 lt!2602836 lambda!452845))))

(declare-datatypes ((Unit!164717 0))(
  ( (Unit!164718) )
))
(declare-fun lt!2602845 () Unit!164717)

(declare-fun forallContainsSubset!41 (List!71363 List!71363) Unit!164717)

(assert (=> start!713430 (= lt!2602845 (forallContainsSubset!41 lt!2602839 lt!2602836))))

(declare-fun lt!2602841 () Unit!164717)

(assert (=> start!713430 (= lt!2602841 (forallContainsSubset!41 lt!2602836 lt!2602839))))

(assert (=> start!713430 e!4380884))

(declare-fun res!2956925 () Bool)

(assert (=> start!713430 (=> (not res!2956925) (not e!4380884))))

(assert (=> start!713430 (= res!2956925 (forall!17799 lt!2602836 lambda!452845))))

(declare-fun f!725 () Int)

(declare-fun lt!2602840 () Unit!164717)

(declare-fun s2!406 () (Set A!897))

(declare-fun lemmaFlatMapAssociativeToList1!9 ((Set A!897) (Set A!897) Int List!71363 List!71363) Unit!164717)

(assert (=> start!713430 (= lt!2602840 (lemmaFlatMapAssociativeToList1!9 s1!435 s2!406 f!725 lt!2602836 lt!2602839))))

(assert (=> start!713430 (forall!17799 lt!2602839 lambda!452844)))

(declare-fun lt!2602837 () Unit!164717)

(declare-fun lemmaFlatMapAssociativeToList2!11 ((Set A!897) (Set A!897) Int List!71363 List!71363) Unit!164717)

(assert (=> start!713430 (= lt!2602837 (lemmaFlatMapAssociativeToList2!11 s1!435 s2!406 f!725 lt!2602836 lt!2602839))))

(declare-fun subseq!860 (List!71363 List!71363) Bool)

(assert (=> start!713430 (subseq!860 lt!2602839 lt!2602839)))

(declare-fun lt!2602838 () Unit!164717)

(declare-fun lemmaSubseqRefl!202 (List!71363) Unit!164717)

(assert (=> start!713430 (= lt!2602838 (lemmaSubseqRefl!202 lt!2602839))))

(assert (=> start!713430 (subseq!860 lt!2602836 lt!2602836)))

(declare-fun lt!2602844 () Unit!164717)

(assert (=> start!713430 (= lt!2602844 (lemmaSubseqRefl!202 lt!2602836))))

(declare-fun lt!2602843 () (Set B!3599))

(declare-fun toList!11650 ((Set B!3599)) List!71363)

(assert (=> start!713430 (= lt!2602839 (toList!11650 lt!2602843))))

(declare-fun flatMap!3068 ((Set A!897) Int) (Set B!3599))

(assert (=> start!713430 (= lt!2602843 (flatMap!3068 (set.union s1!435 s2!406) f!725))))

(declare-fun lt!2602842 () (Set B!3599))

(assert (=> start!713430 (= lt!2602836 (toList!11650 lt!2602842))))

(assert (=> start!713430 (= lt!2602842 (set.union (flatMap!3068 s1!435 f!725) (flatMap!3068 s2!406 f!725)))))

(assert (=> start!713430 (not (= lt!2602842 lt!2602843))))

(declare-fun condSetEmpty!54863 () Bool)

(assert (=> start!713430 (= condSetEmpty!54863 (= s1!435 (as set.empty (Set A!897))))))

(assert (=> start!713430 setRes!54863))

(assert (=> start!713430 tp!2077941))

(declare-fun condSetEmpty!54862 () Bool)

(assert (=> start!713430 (= condSetEmpty!54862 (= s2!406 (as set.empty (Set A!897))))))

(assert (=> start!713430 setRes!54862))

(declare-fun setNonEmpty!54863 () Bool)

(declare-fun tp!2077942 () Bool)

(assert (=> setNonEmpty!54863 (= setRes!54862 (and tp!2077942 tp_is_empty!47689))))

(declare-fun setElem!54862 () A!897)

(declare-fun setRest!54863 () (Set A!897))

(assert (=> setNonEmpty!54863 (= s2!406 (set.union (set.insert setElem!54862 (as set.empty (Set A!897))) setRest!54863))))

(assert (= (and start!713430 res!2956925) b!7317696))

(assert (= (and b!7317696 res!2956926) b!7317695))

(assert (= (and start!713430 condSetEmpty!54863) setIsEmpty!54862))

(assert (= (and start!713430 (not condSetEmpty!54863)) setNonEmpty!54862))

(assert (= (and start!713430 condSetEmpty!54862) setIsEmpty!54863))

(assert (= (and start!713430 (not condSetEmpty!54862)) setNonEmpty!54863))

(declare-fun m!7982314 () Bool)

(assert (=> b!7317695 m!7982314))

(declare-fun m!7982316 () Bool)

(assert (=> b!7317696 m!7982316))

(declare-fun m!7982318 () Bool)

(assert (=> start!713430 m!7982318))

(declare-fun m!7982320 () Bool)

(assert (=> start!713430 m!7982320))

(declare-fun m!7982322 () Bool)

(assert (=> start!713430 m!7982322))

(declare-fun m!7982324 () Bool)

(assert (=> start!713430 m!7982324))

(declare-fun m!7982326 () Bool)

(assert (=> start!713430 m!7982326))

(declare-fun m!7982328 () Bool)

(assert (=> start!713430 m!7982328))

(declare-fun m!7982330 () Bool)

(assert (=> start!713430 m!7982330))

(declare-fun m!7982332 () Bool)

(assert (=> start!713430 m!7982332))

(declare-fun m!7982334 () Bool)

(assert (=> start!713430 m!7982334))

(declare-fun m!7982336 () Bool)

(assert (=> start!713430 m!7982336))

(declare-fun m!7982338 () Bool)

(assert (=> start!713430 m!7982338))

(declare-fun m!7982340 () Bool)

(assert (=> start!713430 m!7982340))

(assert (=> start!713430 m!7982316))

(assert (=> start!713430 m!7982314))

(declare-fun m!7982342 () Bool)

(assert (=> start!713430 m!7982342))

(push 1)

(assert (not b!7317695))

(assert (not start!713430))

(assert (not setNonEmpty!54863))

(assert (not setNonEmpty!54862))

(assert (not b!7317696))

(assert b_and!351459)

(assert (not b_next!134841))

(assert tp_is_empty!47689)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351459)

(assert (not b_next!134841))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2272258 () Bool)

(declare-fun res!2956937 () Bool)

(declare-fun e!4380892 () Bool)

(assert (=> d!2272258 (=> res!2956937 e!4380892)))

(assert (=> d!2272258 (= res!2956937 (is-Nil!71239 lt!2602836))))

(assert (=> d!2272258 (= (forall!17799 lt!2602836 lambda!452845) e!4380892)))

(declare-fun b!7317711 () Bool)

(declare-fun e!4380893 () Bool)

(assert (=> b!7317711 (= e!4380892 e!4380893)))

(declare-fun res!2956938 () Bool)

(assert (=> b!7317711 (=> (not res!2956938) (not e!4380893))))

(declare-fun dynLambda!29175 (Int B!3599) Bool)

(assert (=> b!7317711 (= res!2956938 (dynLambda!29175 lambda!452845 (h!77687 lt!2602836)))))

(declare-fun b!7317712 () Bool)

(assert (=> b!7317712 (= e!4380893 (forall!17799 (t!385595 lt!2602836) lambda!452845))))

(assert (= (and d!2272258 (not res!2956937)) b!7317711))

(assert (= (and b!7317711 res!2956938) b!7317712))

(declare-fun b_lambda!282711 () Bool)

(assert (=> (not b_lambda!282711) (not b!7317711)))

(declare-fun m!7982374 () Bool)

(assert (=> b!7317711 m!7982374))

(declare-fun m!7982376 () Bool)

(assert (=> b!7317712 m!7982376))

(assert (=> b!7317696 d!2272258))

(declare-fun d!2272260 () Bool)

(declare-fun res!2956939 () Bool)

(declare-fun e!4380894 () Bool)

(assert (=> d!2272260 (=> res!2956939 e!4380894)))

(assert (=> d!2272260 (= res!2956939 (is-Nil!71239 lt!2602839))))

(assert (=> d!2272260 (= (forall!17799 lt!2602839 lambda!452844) e!4380894)))

(declare-fun b!7317713 () Bool)

(declare-fun e!4380895 () Bool)

(assert (=> b!7317713 (= e!4380894 e!4380895)))

(declare-fun res!2956940 () Bool)

(assert (=> b!7317713 (=> (not res!2956940) (not e!4380895))))

(assert (=> b!7317713 (= res!2956940 (dynLambda!29175 lambda!452844 (h!77687 lt!2602839)))))

(declare-fun b!7317714 () Bool)

(assert (=> b!7317714 (= e!4380895 (forall!17799 (t!385595 lt!2602839) lambda!452844))))

(assert (= (and d!2272260 (not res!2956939)) b!7317713))

(assert (= (and b!7317713 res!2956940) b!7317714))

(declare-fun b_lambda!282713 () Bool)

(assert (=> (not b_lambda!282713) (not b!7317713)))

(declare-fun m!7982378 () Bool)

(assert (=> b!7317713 m!7982378))

(declare-fun m!7982380 () Bool)

(assert (=> b!7317714 m!7982380))

(assert (=> b!7317695 d!2272260))

(declare-fun d!2272262 () Bool)

(declare-fun e!4380898 () Bool)

(assert (=> d!2272262 e!4380898))

(declare-fun res!2956943 () Bool)

(assert (=> d!2272262 (=> (not res!2956943) (not e!4380898))))

(declare-fun lt!2602878 () List!71363)

(declare-fun noDuplicate!3061 (List!71363) Bool)

(assert (=> d!2272262 (= res!2956943 (noDuplicate!3061 lt!2602878))))

(declare-fun choose!56769 ((Set B!3599)) List!71363)

(assert (=> d!2272262 (= lt!2602878 (choose!56769 lt!2602843))))

(assert (=> d!2272262 (= (toList!11650 lt!2602843) lt!2602878)))

(declare-fun b!7317717 () Bool)

(declare-fun content!14880 (List!71363) (Set B!3599))

(assert (=> b!7317717 (= e!4380898 (= (content!14880 lt!2602878) lt!2602843))))

(assert (= (and d!2272262 res!2956943) b!7317717))

(declare-fun m!7982382 () Bool)

(assert (=> d!2272262 m!7982382))

(declare-fun m!7982384 () Bool)

(assert (=> d!2272262 m!7982384))

(declare-fun m!7982386 () Bool)

(assert (=> b!7317717 m!7982386))

(assert (=> start!713430 d!2272262))

(declare-fun d!2272264 () Bool)

(declare-fun choose!56770 ((Set A!897) Int) (Set B!3599))

(assert (=> d!2272264 (= (flatMap!3068 s1!435 f!725) (choose!56770 s1!435 f!725))))

(declare-fun bs!1915528 () Bool)

(assert (= bs!1915528 d!2272264))

(declare-fun m!7982388 () Bool)

(assert (=> bs!1915528 m!7982388))

(assert (=> start!713430 d!2272264))

(declare-fun d!2272266 () Bool)

(assert (=> d!2272266 (= (flatMap!3068 (set.union s1!435 s2!406) f!725) (choose!56770 (set.union s1!435 s2!406) f!725))))

(declare-fun bs!1915529 () Bool)

(assert (= bs!1915529 d!2272266))

(declare-fun m!7982390 () Bool)

(assert (=> bs!1915529 m!7982390))

(assert (=> start!713430 d!2272266))

(declare-fun bs!1915530 () Bool)

(declare-fun d!2272268 () Bool)

(assert (= bs!1915530 (and d!2272268 start!713430)))

(declare-fun lambda!452858 () Int)

(assert (=> bs!1915530 (= (= lt!2602839 lt!2602836) (= lambda!452858 lambda!452844))))

(assert (=> bs!1915530 (= lambda!452858 lambda!452845)))

(assert (=> d!2272268 true))

(assert (=> d!2272268 (forall!17799 lt!2602836 lambda!452858)))

(declare-fun lt!2602881 () Unit!164717)

(declare-fun choose!56771 ((Set A!897) (Set A!897) Int List!71363 List!71363) Unit!164717)

(assert (=> d!2272268 (= lt!2602881 (choose!56771 s1!435 s2!406 f!725 lt!2602836 lt!2602839))))

(assert (=> d!2272268 (subseq!860 lt!2602836 (toList!11650 (set.union (flatMap!3068 s1!435 f!725) (flatMap!3068 s2!406 f!725))))))

(assert (=> d!2272268 (= (lemmaFlatMapAssociativeToList1!9 s1!435 s2!406 f!725 lt!2602836 lt!2602839) lt!2602881)))

(declare-fun bs!1915531 () Bool)

(assert (= bs!1915531 d!2272268))

(declare-fun m!7982392 () Bool)

(assert (=> bs!1915531 m!7982392))

(assert (=> bs!1915531 m!7982324))

(declare-fun m!7982394 () Bool)

(assert (=> bs!1915531 m!7982394))

(assert (=> bs!1915531 m!7982330))

(declare-fun m!7982396 () Bool)

(assert (=> bs!1915531 m!7982396))

(assert (=> bs!1915531 m!7982394))

(declare-fun m!7982398 () Bool)

(assert (=> bs!1915531 m!7982398))

(assert (=> start!713430 d!2272268))

(declare-fun d!2272270 () Bool)

(declare-fun e!4380899 () Bool)

(assert (=> d!2272270 e!4380899))

(declare-fun res!2956944 () Bool)

(assert (=> d!2272270 (=> (not res!2956944) (not e!4380899))))

(declare-fun lt!2602882 () List!71363)

(assert (=> d!2272270 (= res!2956944 (noDuplicate!3061 lt!2602882))))

(assert (=> d!2272270 (= lt!2602882 (choose!56769 lt!2602842))))

(assert (=> d!2272270 (= (toList!11650 lt!2602842) lt!2602882)))

(declare-fun b!7317718 () Bool)

(assert (=> b!7317718 (= e!4380899 (= (content!14880 lt!2602882) lt!2602842))))

(assert (= (and d!2272270 res!2956944) b!7317718))

(declare-fun m!7982400 () Bool)

(assert (=> d!2272270 m!7982400))

(declare-fun m!7982402 () Bool)

(assert (=> d!2272270 m!7982402))

(declare-fun m!7982404 () Bool)

(assert (=> b!7317718 m!7982404))

(assert (=> start!713430 d!2272270))

(declare-fun bs!1915532 () Bool)

(declare-fun d!2272272 () Bool)

(assert (= bs!1915532 (and d!2272272 start!713430)))

(declare-fun lambda!452861 () Int)

(assert (=> bs!1915532 (= lambda!452861 lambda!452844)))

(assert (=> bs!1915532 (= (= lt!2602836 lt!2602839) (= lambda!452861 lambda!452845))))

(declare-fun bs!1915533 () Bool)

(assert (= bs!1915533 (and d!2272272 d!2272268)))

(assert (=> bs!1915533 (= (= lt!2602836 lt!2602839) (= lambda!452861 lambda!452858))))

(assert (=> d!2272272 true))

(assert (=> d!2272272 (set.subset (content!14880 lt!2602839) (content!14880 lt!2602836))))

(declare-fun lt!2602885 () Unit!164717)

(declare-fun choose!56772 (List!71363 List!71363) Unit!164717)

(assert (=> d!2272272 (= lt!2602885 (choose!56772 lt!2602839 lt!2602836))))

(assert (=> d!2272272 (forall!17799 lt!2602839 lambda!452861)))

(assert (=> d!2272272 (= (forallContainsSubset!41 lt!2602839 lt!2602836) lt!2602885)))

(declare-fun bs!1915534 () Bool)

(assert (= bs!1915534 d!2272272))

(declare-fun m!7982406 () Bool)

(assert (=> bs!1915534 m!7982406))

(declare-fun m!7982408 () Bool)

(assert (=> bs!1915534 m!7982408))

(declare-fun m!7982410 () Bool)

(assert (=> bs!1915534 m!7982410))

(declare-fun m!7982412 () Bool)

(assert (=> bs!1915534 m!7982412))

(assert (=> start!713430 d!2272272))

(declare-fun b!7317728 () Bool)

(declare-fun e!4380909 () Bool)

(declare-fun e!4380910 () Bool)

(assert (=> b!7317728 (= e!4380909 e!4380910)))

(declare-fun res!2956953 () Bool)

(assert (=> b!7317728 (=> res!2956953 e!4380910)))

(declare-fun e!4380908 () Bool)

(assert (=> b!7317728 (= res!2956953 e!4380908)))

(declare-fun res!2956955 () Bool)

(assert (=> b!7317728 (=> (not res!2956955) (not e!4380908))))

(assert (=> b!7317728 (= res!2956955 (= (h!77687 lt!2602839) (h!77687 lt!2602839)))))

(declare-fun b!7317730 () Bool)

(assert (=> b!7317730 (= e!4380910 (subseq!860 lt!2602839 (t!385595 lt!2602839)))))

(declare-fun b!7317727 () Bool)

(declare-fun e!4380911 () Bool)

(assert (=> b!7317727 (= e!4380911 e!4380909)))

(declare-fun res!2956954 () Bool)

(assert (=> b!7317727 (=> (not res!2956954) (not e!4380909))))

(assert (=> b!7317727 (= res!2956954 (is-Cons!71239 lt!2602839))))

(declare-fun d!2272274 () Bool)

(declare-fun res!2956956 () Bool)

(assert (=> d!2272274 (=> res!2956956 e!4380911)))

(assert (=> d!2272274 (= res!2956956 (is-Nil!71239 lt!2602839))))

(assert (=> d!2272274 (= (subseq!860 lt!2602839 lt!2602839) e!4380911)))

(declare-fun b!7317729 () Bool)

(assert (=> b!7317729 (= e!4380908 (subseq!860 (t!385595 lt!2602839) (t!385595 lt!2602839)))))

(assert (= (and d!2272274 (not res!2956956)) b!7317727))

(assert (= (and b!7317727 res!2956954) b!7317728))

(assert (= (and b!7317728 res!2956955) b!7317729))

(assert (= (and b!7317728 (not res!2956953)) b!7317730))

(declare-fun m!7982414 () Bool)

(assert (=> b!7317730 m!7982414))

(declare-fun m!7982416 () Bool)

(assert (=> b!7317729 m!7982416))

(assert (=> start!713430 d!2272274))

(declare-fun bs!1915535 () Bool)

(declare-fun d!2272278 () Bool)

(assert (= bs!1915535 (and d!2272278 start!713430)))

(declare-fun lambda!452862 () Int)

(assert (=> bs!1915535 (= (= lt!2602839 lt!2602836) (= lambda!452862 lambda!452844))))

(assert (=> bs!1915535 (= lambda!452862 lambda!452845)))

(declare-fun bs!1915536 () Bool)

(assert (= bs!1915536 (and d!2272278 d!2272268)))

(assert (=> bs!1915536 (= lambda!452862 lambda!452858)))

(declare-fun bs!1915537 () Bool)

(assert (= bs!1915537 (and d!2272278 d!2272272)))

(assert (=> bs!1915537 (= (= lt!2602839 lt!2602836) (= lambda!452862 lambda!452861))))

(assert (=> d!2272278 true))

(assert (=> d!2272278 (set.subset (content!14880 lt!2602836) (content!14880 lt!2602839))))

(declare-fun lt!2602886 () Unit!164717)

(assert (=> d!2272278 (= lt!2602886 (choose!56772 lt!2602836 lt!2602839))))

(assert (=> d!2272278 (forall!17799 lt!2602836 lambda!452862)))

(assert (=> d!2272278 (= (forallContainsSubset!41 lt!2602836 lt!2602839) lt!2602886)))

(declare-fun bs!1915538 () Bool)

(assert (= bs!1915538 d!2272278))

(assert (=> bs!1915538 m!7982408))

(assert (=> bs!1915538 m!7982406))

(declare-fun m!7982418 () Bool)

(assert (=> bs!1915538 m!7982418))

(declare-fun m!7982420 () Bool)

(assert (=> bs!1915538 m!7982420))

(assert (=> start!713430 d!2272278))

(declare-fun b!7317732 () Bool)

(declare-fun e!4380913 () Bool)

(declare-fun e!4380914 () Bool)

(assert (=> b!7317732 (= e!4380913 e!4380914)))

(declare-fun res!2956957 () Bool)

(assert (=> b!7317732 (=> res!2956957 e!4380914)))

(declare-fun e!4380912 () Bool)

(assert (=> b!7317732 (= res!2956957 e!4380912)))

(declare-fun res!2956959 () Bool)

(assert (=> b!7317732 (=> (not res!2956959) (not e!4380912))))

(assert (=> b!7317732 (= res!2956959 (= (h!77687 lt!2602836) (h!77687 lt!2602836)))))

(declare-fun b!7317734 () Bool)

(assert (=> b!7317734 (= e!4380914 (subseq!860 lt!2602836 (t!385595 lt!2602836)))))

(declare-fun b!7317731 () Bool)

(declare-fun e!4380915 () Bool)

(assert (=> b!7317731 (= e!4380915 e!4380913)))

(declare-fun res!2956958 () Bool)

(assert (=> b!7317731 (=> (not res!2956958) (not e!4380913))))

(assert (=> b!7317731 (= res!2956958 (is-Cons!71239 lt!2602836))))

(declare-fun d!2272280 () Bool)

(declare-fun res!2956960 () Bool)

(assert (=> d!2272280 (=> res!2956960 e!4380915)))

(assert (=> d!2272280 (= res!2956960 (is-Nil!71239 lt!2602836))))

(assert (=> d!2272280 (= (subseq!860 lt!2602836 lt!2602836) e!4380915)))

(declare-fun b!7317733 () Bool)

(assert (=> b!7317733 (= e!4380912 (subseq!860 (t!385595 lt!2602836) (t!385595 lt!2602836)))))

(assert (= (and d!2272280 (not res!2956960)) b!7317731))

(assert (= (and b!7317731 res!2956958) b!7317732))

(assert (= (and b!7317732 res!2956959) b!7317733))

(assert (= (and b!7317732 (not res!2956957)) b!7317734))

(declare-fun m!7982422 () Bool)

(assert (=> b!7317734 m!7982422))

(declare-fun m!7982424 () Bool)

(assert (=> b!7317733 m!7982424))

(assert (=> start!713430 d!2272280))

(declare-fun d!2272282 () Bool)

(assert (=> d!2272282 (subseq!860 lt!2602839 lt!2602839)))

(declare-fun lt!2602889 () Unit!164717)

(declare-fun choose!56773 (List!71363) Unit!164717)

(assert (=> d!2272282 (= lt!2602889 (choose!56773 lt!2602839))))

(assert (=> d!2272282 (= (lemmaSubseqRefl!202 lt!2602839) lt!2602889)))

(declare-fun bs!1915539 () Bool)

(assert (= bs!1915539 d!2272282))

(assert (=> bs!1915539 m!7982338))

(declare-fun m!7982426 () Bool)

(assert (=> bs!1915539 m!7982426))

(assert (=> start!713430 d!2272282))

(assert (=> start!713430 d!2272260))

(assert (=> start!713430 d!2272258))

(declare-fun d!2272284 () Bool)

(assert (=> d!2272284 (= (flatMap!3068 s2!406 f!725) (choose!56770 s2!406 f!725))))

(declare-fun bs!1915540 () Bool)

(assert (= bs!1915540 d!2272284))

(declare-fun m!7982428 () Bool)

(assert (=> bs!1915540 m!7982428))

(assert (=> start!713430 d!2272284))

(declare-fun d!2272286 () Bool)

(assert (=> d!2272286 (subseq!860 lt!2602836 lt!2602836)))

(declare-fun lt!2602890 () Unit!164717)

(assert (=> d!2272286 (= lt!2602890 (choose!56773 lt!2602836))))

(assert (=> d!2272286 (= (lemmaSubseqRefl!202 lt!2602836) lt!2602890)))

(declare-fun bs!1915541 () Bool)

(assert (= bs!1915541 d!2272286))

(assert (=> bs!1915541 m!7982318))

(declare-fun m!7982430 () Bool)

(assert (=> bs!1915541 m!7982430))

(assert (=> start!713430 d!2272286))

(declare-fun bs!1915544 () Bool)

(declare-fun d!2272288 () Bool)

(assert (= bs!1915544 (and d!2272288 d!2272272)))

(declare-fun lambda!452868 () Int)

(assert (=> bs!1915544 (= lambda!452868 lambda!452861)))

(declare-fun bs!1915545 () Bool)

(assert (= bs!1915545 (and d!2272288 d!2272278)))

(assert (=> bs!1915545 (= (= lt!2602836 lt!2602839) (= lambda!452868 lambda!452862))))

(declare-fun bs!1915546 () Bool)

(assert (= bs!1915546 (and d!2272288 start!713430)))

(assert (=> bs!1915546 (= (= lt!2602836 lt!2602839) (= lambda!452868 lambda!452845))))

(declare-fun bs!1915547 () Bool)

(assert (= bs!1915547 (and d!2272288 d!2272268)))

(assert (=> bs!1915547 (= (= lt!2602836 lt!2602839) (= lambda!452868 lambda!452858))))

(assert (=> bs!1915546 (= lambda!452868 lambda!452844)))

(assert (=> d!2272288 true))

(assert (=> d!2272288 (forall!17799 lt!2602839 lambda!452868)))

(declare-fun lt!2602896 () Unit!164717)

(declare-fun choose!56775 ((Set A!897) (Set A!897) Int List!71363 List!71363) Unit!164717)

(assert (=> d!2272288 (= lt!2602896 (choose!56775 s1!435 s2!406 f!725 lt!2602836 lt!2602839))))

(assert (=> d!2272288 (= lt!2602836 (toList!11650 (set.union (flatMap!3068 s1!435 f!725) (flatMap!3068 s2!406 f!725))))))

(assert (=> d!2272288 (= (lemmaFlatMapAssociativeToList2!11 s1!435 s2!406 f!725 lt!2602836 lt!2602839) lt!2602896)))

(declare-fun bs!1915549 () Bool)

(assert (= bs!1915549 d!2272288))

(assert (=> bs!1915549 m!7982324))

(assert (=> bs!1915549 m!7982330))

(declare-fun m!7982442 () Bool)

(assert (=> bs!1915549 m!7982442))

(declare-fun m!7982444 () Bool)

(assert (=> bs!1915549 m!7982444))

(assert (=> bs!1915549 m!7982394))

(assert (=> start!713430 d!2272288))

(declare-fun condSetEmpty!54872 () Bool)

(assert (=> setNonEmpty!54863 (= condSetEmpty!54872 (= setRest!54863 (as set.empty (Set A!897))))))

(declare-fun setRes!54872 () Bool)

(assert (=> setNonEmpty!54863 (= tp!2077942 setRes!54872)))

(declare-fun setIsEmpty!54872 () Bool)

(assert (=> setIsEmpty!54872 setRes!54872))

(declare-fun setNonEmpty!54872 () Bool)

(declare-fun tp!2077954 () Bool)

(assert (=> setNonEmpty!54872 (= setRes!54872 (and tp!2077954 tp_is_empty!47689))))

(declare-fun setElem!54872 () A!897)

(declare-fun setRest!54872 () (Set A!897))

(assert (=> setNonEmpty!54872 (= setRest!54863 (set.union (set.insert setElem!54872 (as set.empty (Set A!897))) setRest!54872))))

(assert (= (and setNonEmpty!54863 condSetEmpty!54872) setIsEmpty!54872))

(assert (= (and setNonEmpty!54863 (not condSetEmpty!54872)) setNonEmpty!54872))

(declare-fun condSetEmpty!54873 () Bool)

(assert (=> setNonEmpty!54862 (= condSetEmpty!54873 (= setRest!54862 (as set.empty (Set A!897))))))

(declare-fun setRes!54873 () Bool)

(assert (=> setNonEmpty!54862 (= tp!2077940 setRes!54873)))

(declare-fun setIsEmpty!54873 () Bool)

(assert (=> setIsEmpty!54873 setRes!54873))

(declare-fun setNonEmpty!54873 () Bool)

(declare-fun tp!2077955 () Bool)

(assert (=> setNonEmpty!54873 (= setRes!54873 (and tp!2077955 tp_is_empty!47689))))

(declare-fun setElem!54873 () A!897)

(declare-fun setRest!54873 () (Set A!897))

(assert (=> setNonEmpty!54873 (= setRest!54862 (set.union (set.insert setElem!54873 (as set.empty (Set A!897))) setRest!54873))))

(assert (= (and setNonEmpty!54862 condSetEmpty!54873) setIsEmpty!54873))

(assert (= (and setNonEmpty!54862 (not condSetEmpty!54873)) setNonEmpty!54873))

(declare-fun b_lambda!282715 () Bool)

(assert (= b_lambda!282711 (or start!713430 b_lambda!282715)))

(declare-fun bs!1915550 () Bool)

(declare-fun d!2272294 () Bool)

(assert (= bs!1915550 (and d!2272294 start!713430)))

(declare-fun contains!20800 (List!71363 B!3599) Bool)

(assert (=> bs!1915550 (= (dynLambda!29175 lambda!452845 (h!77687 lt!2602836)) (contains!20800 lt!2602839 (h!77687 lt!2602836)))))

(declare-fun m!7982446 () Bool)

(assert (=> bs!1915550 m!7982446))

(assert (=> b!7317711 d!2272294))

(declare-fun b_lambda!282717 () Bool)

(assert (= b_lambda!282713 (or start!713430 b_lambda!282717)))

(declare-fun bs!1915551 () Bool)

(declare-fun d!2272296 () Bool)

(assert (= bs!1915551 (and d!2272296 start!713430)))

(assert (=> bs!1915551 (= (dynLambda!29175 lambda!452844 (h!77687 lt!2602839)) (contains!20800 lt!2602836 (h!77687 lt!2602839)))))

(declare-fun m!7982448 () Bool)

(assert (=> bs!1915551 m!7982448))

(assert (=> b!7317713 d!2272296))

(push 1)

(assert (not d!2272284))

(assert (not d!2272270))

(assert (not b!7317712))

(assert (not b!7317733))

(assert (not d!2272266))

(assert (not b!7317718))

(assert (not d!2272282))

(assert (not b!7317717))

(assert (not setNonEmpty!54872))

(assert (not setNonEmpty!54873))

(assert b_and!351459)

(assert (not d!2272264))

(assert tp_is_empty!47689)

(assert (not d!2272288))

(assert (not d!2272278))

(assert (not d!2272272))

(assert (not b!7317734))

(assert (not bs!1915551))

(assert (not b!7317730))

(assert (not bs!1915550))

(assert (not b!7317729))

(assert (not b_lambda!282717))

(assert (not d!2272268))

(assert (not b_lambda!282715))

(assert (not d!2272286))

(assert (not d!2272262))

(assert (not b_next!134841))

(assert (not b!7317714))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351459)

(assert (not b_next!134841))

(check-sat)

(pop 1)


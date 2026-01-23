; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713876 () Bool)

(assert start!713876)

(declare-fun b_free!134119 () Bool)

(declare-fun b_next!134909 () Bool)

(assert (=> start!713876 (= b_free!134119 (not b_next!134909))))

(declare-fun tp!2078711 () Bool)

(declare-fun b_and!351527 () Bool)

(assert (=> start!713876 (= tp!2078711 b_and!351527)))

(declare-fun b!7319569 () Bool)

(assert (=> b!7319569 true))

(declare-fun setIsEmpty!55205 () Bool)

(declare-fun setRes!55205 () Bool)

(assert (=> setIsEmpty!55205 setRes!55205))

(declare-fun b!7319568 () Bool)

(declare-fun e!4382326 () Bool)

(declare-fun tp_is_empty!47823 () Bool)

(declare-fun tp!2078708 () Bool)

(assert (=> b!7319568 (= e!4382326 (and tp_is_empty!47823 tp!2078708))))

(declare-fun e!4382323 () Bool)

(declare-datatypes ((B!3667 0))(
  ( (B!3668 (val!29285 Int)) )
))
(declare-datatypes ((List!71397 0))(
  ( (Nil!71273) (Cons!71273 (h!77721 B!3667) (t!385632 List!71397)) )
))
(declare-fun l1!805 () List!71397)

(declare-fun lambda!452929 () Int)

(declare-fun forall!17809 (List!71397 Int) Bool)

(assert (=> b!7319569 (= e!4382323 (not (forall!17809 l1!805 lambda!452929)))))

(declare-datatypes ((Unit!164797 0))(
  ( (Unit!164798) )
))
(declare-fun lt!2603562 () Unit!164797)

(declare-fun lt!2603559 () List!71397)

(declare-fun subseqContains!53 (List!71397 List!71397 B!3667) Unit!164797)

(assert (=> b!7319569 (= lt!2603562 (subseqContains!53 l1!805 lt!2603559 (h!77721 l1!805)))))

(assert (=> b!7319569 (forall!17809 (t!385632 l1!805) lambda!452929)))

(declare-fun lt!2603560 () Unit!164797)

(declare-datatypes ((A!965 0))(
  ( (A!966 (val!29286 Int)) )
))
(declare-fun s2!417 () (Set A!965))

(declare-fun s1!446 () (Set A!965))

(declare-fun f!760 () Int)

(declare-fun l2!794 () List!71397)

(declare-fun lemmaFlatMapAssociativeToList1!13 ((Set A!965) (Set A!965) Int List!71397 List!71397) Unit!164797)

(assert (=> b!7319569 (= lt!2603560 (lemmaFlatMapAssociativeToList1!13 s1!446 s2!417 f!760 (t!385632 l1!805) l2!794))))

(declare-fun lt!2603563 () Unit!164797)

(declare-fun subseqTail!107 (List!71397 List!71397) Unit!164797)

(assert (=> b!7319569 (= lt!2603563 (subseqTail!107 l1!805 lt!2603559))))

(declare-fun lt!2603558 () (Set B!3667))

(declare-fun lt!2603561 () (Set B!3667))

(assert (=> b!7319569 (= (set.member (h!77721 l1!805) lt!2603558) (set.member (h!77721 l1!805) lt!2603561))))

(declare-fun lt!2603564 () Unit!164797)

(declare-fun lemmaFlatMapAssociativeElem!25 ((Set A!965) (Set A!965) Int B!3667) Unit!164797)

(assert (=> b!7319569 (= lt!2603564 (lemmaFlatMapAssociativeElem!25 s1!446 s2!417 f!760 (h!77721 l1!805)))))

(declare-fun b!7319570 () Bool)

(declare-fun res!2958000 () Bool)

(assert (=> b!7319570 (=> (not res!2958000) (not e!4382323))))

(assert (=> b!7319570 (= res!2958000 (is-Cons!71273 l1!805))))

(declare-fun setNonEmpty!55206 () Bool)

(declare-fun tp!2078709 () Bool)

(declare-fun tp_is_empty!47821 () Bool)

(assert (=> setNonEmpty!55206 (= setRes!55205 (and tp!2078709 tp_is_empty!47821))))

(declare-fun setElem!55205 () A!965)

(declare-fun setRest!55206 () (Set A!965))

(assert (=> setNonEmpty!55206 (= s2!417 (set.union (set.insert setElem!55205 (as set.empty (Set A!965))) setRest!55206))))

(declare-fun res!2958001 () Bool)

(declare-fun e!4382324 () Bool)

(assert (=> start!713876 (=> (not res!2958001) (not e!4382324))))

(declare-fun subseq!894 (List!71397 List!71397) Bool)

(assert (=> start!713876 (= res!2958001 (subseq!894 l1!805 lt!2603559))))

(declare-fun toList!11684 ((Set B!3667)) List!71397)

(assert (=> start!713876 (= lt!2603559 (toList!11684 lt!2603558))))

(declare-fun flatMap!3102 ((Set A!965) Int) (Set B!3667))

(assert (=> start!713876 (= lt!2603558 (set.union (flatMap!3102 s1!446 f!760) (flatMap!3102 s2!417 f!760)))))

(assert (=> start!713876 e!4382324))

(declare-fun condSetEmpty!55206 () Bool)

(assert (=> start!713876 (= condSetEmpty!55206 (= s2!417 (as set.empty (Set A!965))))))

(assert (=> start!713876 setRes!55205))

(declare-fun condSetEmpty!55205 () Bool)

(assert (=> start!713876 (= condSetEmpty!55205 (= s1!446 (as set.empty (Set A!965))))))

(declare-fun setRes!55206 () Bool)

(assert (=> start!713876 setRes!55206))

(assert (=> start!713876 tp!2078711))

(assert (=> start!713876 e!4382326))

(declare-fun e!4382325 () Bool)

(assert (=> start!713876 e!4382325))

(declare-fun setNonEmpty!55205 () Bool)

(declare-fun tp!2078710 () Bool)

(assert (=> setNonEmpty!55205 (= setRes!55206 (and tp!2078710 tp_is_empty!47821))))

(declare-fun setElem!55206 () A!965)

(declare-fun setRest!55205 () (Set A!965))

(assert (=> setNonEmpty!55205 (= s1!446 (set.union (set.insert setElem!55206 (as set.empty (Set A!965))) setRest!55205))))

(declare-fun b!7319571 () Bool)

(assert (=> b!7319571 (= e!4382324 e!4382323)))

(declare-fun res!2958002 () Bool)

(assert (=> b!7319571 (=> (not res!2958002) (not e!4382323))))

(assert (=> b!7319571 (= res!2958002 (= l2!794 (toList!11684 lt!2603561)))))

(assert (=> b!7319571 (= lt!2603561 (flatMap!3102 (set.union s1!446 s2!417) f!760))))

(declare-fun b!7319572 () Bool)

(declare-fun tp!2078707 () Bool)

(assert (=> b!7319572 (= e!4382325 (and tp_is_empty!47823 tp!2078707))))

(declare-fun setIsEmpty!55206 () Bool)

(assert (=> setIsEmpty!55206 setRes!55206))

(assert (= (and start!713876 res!2958001) b!7319571))

(assert (= (and b!7319571 res!2958002) b!7319570))

(assert (= (and b!7319570 res!2958000) b!7319569))

(assert (= (and start!713876 condSetEmpty!55206) setIsEmpty!55205))

(assert (= (and start!713876 (not condSetEmpty!55206)) setNonEmpty!55206))

(assert (= (and start!713876 condSetEmpty!55205) setIsEmpty!55206))

(assert (= (and start!713876 (not condSetEmpty!55205)) setNonEmpty!55205))

(assert (= (and start!713876 (is-Cons!71273 l2!794)) b!7319568))

(assert (= (and start!713876 (is-Cons!71273 l1!805)) b!7319572))

(declare-fun m!7984362 () Bool)

(assert (=> b!7319569 m!7984362))

(declare-fun m!7984364 () Bool)

(assert (=> b!7319569 m!7984364))

(declare-fun m!7984366 () Bool)

(assert (=> b!7319569 m!7984366))

(declare-fun m!7984368 () Bool)

(assert (=> b!7319569 m!7984368))

(declare-fun m!7984370 () Bool)

(assert (=> b!7319569 m!7984370))

(declare-fun m!7984372 () Bool)

(assert (=> b!7319569 m!7984372))

(declare-fun m!7984374 () Bool)

(assert (=> b!7319569 m!7984374))

(declare-fun m!7984376 () Bool)

(assert (=> b!7319569 m!7984376))

(declare-fun m!7984378 () Bool)

(assert (=> start!713876 m!7984378))

(declare-fun m!7984380 () Bool)

(assert (=> start!713876 m!7984380))

(declare-fun m!7984382 () Bool)

(assert (=> start!713876 m!7984382))

(declare-fun m!7984384 () Bool)

(assert (=> start!713876 m!7984384))

(declare-fun m!7984386 () Bool)

(assert (=> b!7319571 m!7984386))

(declare-fun m!7984388 () Bool)

(assert (=> b!7319571 m!7984388))

(push 1)

(assert (not setNonEmpty!55205))

(assert (not b!7319572))

(assert (not b!7319571))

(assert b_and!351527)

(assert (not b!7319569))

(assert tp_is_empty!47821)

(assert (not setNonEmpty!55206))

(assert (not start!713876))

(assert (not b_next!134909))

(assert tp_is_empty!47823)

(assert (not b!7319568))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351527)

(assert (not b_next!134909))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2272991 () Bool)

(declare-fun e!4382341 () Bool)

(assert (=> d!2272991 e!4382341))

(declare-fun res!2958014 () Bool)

(assert (=> d!2272991 (=> (not res!2958014) (not e!4382341))))

(declare-fun lt!2603588 () List!71397)

(declare-fun noDuplicate!3082 (List!71397) Bool)

(assert (=> d!2272991 (= res!2958014 (noDuplicate!3082 lt!2603588))))

(declare-fun choose!56838 ((Set B!3667)) List!71397)

(assert (=> d!2272991 (= lt!2603588 (choose!56838 lt!2603561))))

(assert (=> d!2272991 (= (toList!11684 lt!2603561) lt!2603588)))

(declare-fun b!7319594 () Bool)

(declare-fun content!14901 (List!71397) (Set B!3667))

(assert (=> b!7319594 (= e!4382341 (= (content!14901 lt!2603588) lt!2603561))))

(assert (= (and d!2272991 res!2958014) b!7319594))

(declare-fun m!7984418 () Bool)

(assert (=> d!2272991 m!7984418))

(declare-fun m!7984420 () Bool)

(assert (=> d!2272991 m!7984420))

(declare-fun m!7984422 () Bool)

(assert (=> b!7319594 m!7984422))

(assert (=> b!7319571 d!2272991))

(declare-fun d!2272993 () Bool)

(declare-fun choose!56839 ((Set A!965) Int) (Set B!3667))

(assert (=> d!2272993 (= (flatMap!3102 (set.union s1!446 s2!417) f!760) (choose!56839 (set.union s1!446 s2!417) f!760))))

(declare-fun bs!1915721 () Bool)

(assert (= bs!1915721 d!2272993))

(declare-fun m!7984424 () Bool)

(assert (=> bs!1915721 m!7984424))

(assert (=> b!7319571 d!2272993))

(declare-fun d!2272995 () Bool)

(declare-fun contains!20811 (List!71397 B!3667) Bool)

(assert (=> d!2272995 (contains!20811 lt!2603559 (h!77721 l1!805))))

(declare-fun lt!2603591 () Unit!164797)

(declare-fun choose!56840 (List!71397 List!71397 B!3667) Unit!164797)

(assert (=> d!2272995 (= lt!2603591 (choose!56840 l1!805 lt!2603559 (h!77721 l1!805)))))

(declare-fun e!4382344 () Bool)

(assert (=> d!2272995 e!4382344))

(declare-fun res!2958017 () Bool)

(assert (=> d!2272995 (=> (not res!2958017) (not e!4382344))))

(assert (=> d!2272995 (= res!2958017 (subseq!894 l1!805 lt!2603559))))

(assert (=> d!2272995 (= (subseqContains!53 l1!805 lt!2603559 (h!77721 l1!805)) lt!2603591)))

(declare-fun b!7319597 () Bool)

(assert (=> b!7319597 (= e!4382344 (contains!20811 l1!805 (h!77721 l1!805)))))

(assert (= (and d!2272995 res!2958017) b!7319597))

(declare-fun m!7984426 () Bool)

(assert (=> d!2272995 m!7984426))

(declare-fun m!7984428 () Bool)

(assert (=> d!2272995 m!7984428))

(assert (=> d!2272995 m!7984378))

(declare-fun m!7984430 () Bool)

(assert (=> b!7319597 m!7984430))

(assert (=> b!7319569 d!2272995))

(declare-fun bs!1915722 () Bool)

(declare-fun d!2272997 () Bool)

(assert (= bs!1915722 (and d!2272997 b!7319569)))

(declare-fun lambda!452937 () Int)

(assert (=> bs!1915722 (= lambda!452937 lambda!452929)))

(assert (=> d!2272997 true))

(assert (=> d!2272997 (forall!17809 (t!385632 l1!805) lambda!452937)))

(declare-fun lt!2603594 () Unit!164797)

(declare-fun choose!56841 ((Set A!965) (Set A!965) Int List!71397 List!71397) Unit!164797)

(assert (=> d!2272997 (= lt!2603594 (choose!56841 s1!446 s2!417 f!760 (t!385632 l1!805) l2!794))))

(assert (=> d!2272997 (subseq!894 (t!385632 l1!805) (toList!11684 (set.union (flatMap!3102 s1!446 f!760) (flatMap!3102 s2!417 f!760))))))

(assert (=> d!2272997 (= (lemmaFlatMapAssociativeToList1!13 s1!446 s2!417 f!760 (t!385632 l1!805) l2!794) lt!2603594)))

(declare-fun bs!1915723 () Bool)

(assert (= bs!1915723 d!2272997))

(declare-fun m!7984432 () Bool)

(assert (=> bs!1915723 m!7984432))

(declare-fun m!7984434 () Bool)

(assert (=> bs!1915723 m!7984434))

(assert (=> bs!1915723 m!7984384))

(assert (=> bs!1915723 m!7984382))

(declare-fun m!7984436 () Bool)

(assert (=> bs!1915723 m!7984436))

(declare-fun m!7984438 () Bool)

(assert (=> bs!1915723 m!7984438))

(assert (=> bs!1915723 m!7984432))

(assert (=> b!7319569 d!2272997))

(declare-fun d!2272999 () Bool)

(assert (=> d!2272999 (= (set.member (h!77721 l1!805) (set.union (flatMap!3102 s1!446 f!760) (flatMap!3102 s2!417 f!760))) (set.member (h!77721 l1!805) (flatMap!3102 (set.union s1!446 s2!417) f!760)))))

(declare-fun lt!2603597 () Unit!164797)

(declare-fun choose!56842 ((Set A!965) (Set A!965) Int B!3667) Unit!164797)

(assert (=> d!2272999 (= lt!2603597 (choose!56842 s1!446 s2!417 f!760 (h!77721 l1!805)))))

(assert (=> d!2272999 (= (lemmaFlatMapAssociativeElem!25 s1!446 s2!417 f!760 (h!77721 l1!805)) lt!2603597)))

(declare-fun bs!1915724 () Bool)

(assert (= bs!1915724 d!2272999))

(declare-fun m!7984440 () Bool)

(assert (=> bs!1915724 m!7984440))

(assert (=> bs!1915724 m!7984382))

(assert (=> bs!1915724 m!7984388))

(assert (=> bs!1915724 m!7984384))

(declare-fun m!7984442 () Bool)

(assert (=> bs!1915724 m!7984442))

(declare-fun m!7984444 () Bool)

(assert (=> bs!1915724 m!7984444))

(assert (=> b!7319569 d!2272999))

(declare-fun d!2273001 () Bool)

(declare-fun res!2958022 () Bool)

(declare-fun e!4382349 () Bool)

(assert (=> d!2273001 (=> res!2958022 e!4382349)))

(assert (=> d!2273001 (= res!2958022 (is-Nil!71273 (t!385632 l1!805)))))

(assert (=> d!2273001 (= (forall!17809 (t!385632 l1!805) lambda!452929) e!4382349)))

(declare-fun b!7319603 () Bool)

(declare-fun e!4382350 () Bool)

(assert (=> b!7319603 (= e!4382349 e!4382350)))

(declare-fun res!2958023 () Bool)

(assert (=> b!7319603 (=> (not res!2958023) (not e!4382350))))

(declare-fun dynLambda!29182 (Int B!3667) Bool)

(assert (=> b!7319603 (= res!2958023 (dynLambda!29182 lambda!452929 (h!77721 (t!385632 l1!805))))))

(declare-fun b!7319604 () Bool)

(assert (=> b!7319604 (= e!4382350 (forall!17809 (t!385632 (t!385632 l1!805)) lambda!452929))))

(assert (= (and d!2273001 (not res!2958022)) b!7319603))

(assert (= (and b!7319603 res!2958023) b!7319604))

(declare-fun b_lambda!282775 () Bool)

(assert (=> (not b_lambda!282775) (not b!7319603)))

(declare-fun m!7984446 () Bool)

(assert (=> b!7319603 m!7984446))

(declare-fun m!7984448 () Bool)

(assert (=> b!7319604 m!7984448))

(assert (=> b!7319569 d!2273001))

(declare-fun b!7319619 () Bool)

(declare-fun e!4382361 () Unit!164797)

(declare-fun call!665862 () Unit!164797)

(assert (=> b!7319619 (= e!4382361 call!665862)))

(declare-fun b!7319620 () Bool)

(declare-fun e!4382359 () Unit!164797)

(declare-fun e!4382360 () Unit!164797)

(assert (=> b!7319620 (= e!4382359 e!4382360)))

(declare-fun c!1358717 () Bool)

(assert (=> b!7319620 (= c!1358717 (subseq!894 l1!805 (t!385632 lt!2603559)))))

(declare-fun b!7319621 () Bool)

(declare-fun Unit!164801 () Unit!164797)

(assert (=> b!7319621 (= e!4382361 Unit!164801)))

(declare-fun b!7319622 () Bool)

(declare-fun Unit!164802 () Unit!164797)

(assert (=> b!7319622 (= e!4382359 Unit!164802)))

(declare-fun b!7319623 () Bool)

(declare-fun e!4382362 () Bool)

(assert (=> b!7319623 (= e!4382362 (subseq!894 l1!805 lt!2603559))))

(declare-fun d!2273003 () Bool)

(declare-fun tail!14655 (List!71397) List!71397)

(assert (=> d!2273003 (subseq!894 (tail!14655 l1!805) lt!2603559)))

(declare-fun lt!2603600 () Unit!164797)

(assert (=> d!2273003 (= lt!2603600 e!4382359)))

(declare-fun c!1358715 () Bool)

(assert (=> d!2273003 (= c!1358715 (and (is-Cons!71273 l1!805) (is-Cons!71273 lt!2603559)))))

(assert (=> d!2273003 e!4382362))

(declare-fun res!2958026 () Bool)

(assert (=> d!2273003 (=> (not res!2958026) (not e!4382362))))

(declare-fun isEmpty!40880 (List!71397) Bool)

(assert (=> d!2273003 (= res!2958026 (not (isEmpty!40880 l1!805)))))

(assert (=> d!2273003 (= (subseqTail!107 l1!805 lt!2603559) lt!2603600)))

(declare-fun b!7319624 () Bool)

(assert (=> b!7319624 (= e!4382360 call!665862)))

(declare-fun bm!665857 () Bool)

(assert (=> bm!665857 (= call!665862 (subseqTail!107 (ite c!1358717 l1!805 (t!385632 l1!805)) (t!385632 lt!2603559)))))

(declare-fun b!7319625 () Bool)

(declare-fun c!1358716 () Bool)

(assert (=> b!7319625 (= c!1358716 (not (isEmpty!40880 (t!385632 l1!805))))))

(assert (=> b!7319625 (= e!4382360 e!4382361)))

(assert (= (and d!2273003 res!2958026) b!7319623))

(assert (= (and d!2273003 c!1358715) b!7319620))

(assert (= (and d!2273003 (not c!1358715)) b!7319622))

(assert (= (and b!7319620 c!1358717) b!7319624))

(assert (= (and b!7319620 (not c!1358717)) b!7319625))

(assert (= (and b!7319625 c!1358716) b!7319619))

(assert (= (and b!7319625 (not c!1358716)) b!7319621))

(assert (= (or b!7319624 b!7319619) bm!665857))

(assert (=> b!7319623 m!7984378))

(declare-fun m!7984450 () Bool)

(assert (=> bm!665857 m!7984450))

(declare-fun m!7984452 () Bool)

(assert (=> b!7319620 m!7984452))

(declare-fun m!7984454 () Bool)

(assert (=> d!2273003 m!7984454))

(assert (=> d!2273003 m!7984454))

(declare-fun m!7984456 () Bool)

(assert (=> d!2273003 m!7984456))

(declare-fun m!7984458 () Bool)

(assert (=> d!2273003 m!7984458))

(declare-fun m!7984460 () Bool)

(assert (=> b!7319625 m!7984460))

(assert (=> b!7319569 d!2273003))

(declare-fun d!2273005 () Bool)

(declare-fun res!2958027 () Bool)

(declare-fun e!4382363 () Bool)

(assert (=> d!2273005 (=> res!2958027 e!4382363)))

(assert (=> d!2273005 (= res!2958027 (is-Nil!71273 l1!805))))

(assert (=> d!2273005 (= (forall!17809 l1!805 lambda!452929) e!4382363)))

(declare-fun b!7319626 () Bool)

(declare-fun e!4382364 () Bool)

(assert (=> b!7319626 (= e!4382363 e!4382364)))

(declare-fun res!2958028 () Bool)

(assert (=> b!7319626 (=> (not res!2958028) (not e!4382364))))

(assert (=> b!7319626 (= res!2958028 (dynLambda!29182 lambda!452929 (h!77721 l1!805)))))

(declare-fun b!7319627 () Bool)

(assert (=> b!7319627 (= e!4382364 (forall!17809 (t!385632 l1!805) lambda!452929))))

(assert (= (and d!2273005 (not res!2958027)) b!7319626))

(assert (= (and b!7319626 res!2958028) b!7319627))

(declare-fun b_lambda!282777 () Bool)

(assert (=> (not b_lambda!282777) (not b!7319626)))

(declare-fun m!7984462 () Bool)

(assert (=> b!7319626 m!7984462))

(assert (=> b!7319627 m!7984372))

(assert (=> b!7319569 d!2273005))

(declare-fun b!7319638 () Bool)

(declare-fun e!4382374 () Bool)

(assert (=> b!7319638 (= e!4382374 (subseq!894 (t!385632 l1!805) (t!385632 lt!2603559)))))

(declare-fun d!2273009 () Bool)

(declare-fun res!2958038 () Bool)

(declare-fun e!4382375 () Bool)

(assert (=> d!2273009 (=> res!2958038 e!4382375)))

(assert (=> d!2273009 (= res!2958038 (is-Nil!71273 l1!805))))

(assert (=> d!2273009 (= (subseq!894 l1!805 lt!2603559) e!4382375)))

(declare-fun b!7319639 () Bool)

(declare-fun e!4382376 () Bool)

(assert (=> b!7319639 (= e!4382376 (subseq!894 l1!805 (t!385632 lt!2603559)))))

(declare-fun b!7319637 () Bool)

(declare-fun e!4382373 () Bool)

(assert (=> b!7319637 (= e!4382373 e!4382376)))

(declare-fun res!2958039 () Bool)

(assert (=> b!7319637 (=> res!2958039 e!4382376)))

(assert (=> b!7319637 (= res!2958039 e!4382374)))

(declare-fun res!2958037 () Bool)

(assert (=> b!7319637 (=> (not res!2958037) (not e!4382374))))

(assert (=> b!7319637 (= res!2958037 (= (h!77721 l1!805) (h!77721 lt!2603559)))))

(declare-fun b!7319636 () Bool)

(assert (=> b!7319636 (= e!4382375 e!4382373)))

(declare-fun res!2958040 () Bool)

(assert (=> b!7319636 (=> (not res!2958040) (not e!4382373))))

(assert (=> b!7319636 (= res!2958040 (is-Cons!71273 lt!2603559))))

(assert (= (and d!2273009 (not res!2958038)) b!7319636))

(assert (= (and b!7319636 res!2958040) b!7319637))

(assert (= (and b!7319637 res!2958037) b!7319638))

(assert (= (and b!7319637 (not res!2958039)) b!7319639))

(declare-fun m!7984464 () Bool)

(assert (=> b!7319638 m!7984464))

(assert (=> b!7319639 m!7984452))

(assert (=> start!713876 d!2273009))

(declare-fun d!2273011 () Bool)

(declare-fun e!4382377 () Bool)

(assert (=> d!2273011 e!4382377))

(declare-fun res!2958041 () Bool)

(assert (=> d!2273011 (=> (not res!2958041) (not e!4382377))))

(declare-fun lt!2603601 () List!71397)

(assert (=> d!2273011 (= res!2958041 (noDuplicate!3082 lt!2603601))))

(assert (=> d!2273011 (= lt!2603601 (choose!56838 lt!2603558))))

(assert (=> d!2273011 (= (toList!11684 lt!2603558) lt!2603601)))

(declare-fun b!7319640 () Bool)

(assert (=> b!7319640 (= e!4382377 (= (content!14901 lt!2603601) lt!2603558))))

(assert (= (and d!2273011 res!2958041) b!7319640))

(declare-fun m!7984466 () Bool)

(assert (=> d!2273011 m!7984466))

(declare-fun m!7984468 () Bool)

(assert (=> d!2273011 m!7984468))

(declare-fun m!7984470 () Bool)

(assert (=> b!7319640 m!7984470))

(assert (=> start!713876 d!2273011))

(declare-fun d!2273013 () Bool)

(assert (=> d!2273013 (= (flatMap!3102 s1!446 f!760) (choose!56839 s1!446 f!760))))

(declare-fun bs!1915725 () Bool)

(assert (= bs!1915725 d!2273013))

(declare-fun m!7984472 () Bool)

(assert (=> bs!1915725 m!7984472))

(assert (=> start!713876 d!2273013))

(declare-fun d!2273015 () Bool)

(assert (=> d!2273015 (= (flatMap!3102 s2!417 f!760) (choose!56839 s2!417 f!760))))

(declare-fun bs!1915726 () Bool)

(assert (= bs!1915726 d!2273015))

(declare-fun m!7984474 () Bool)

(assert (=> bs!1915726 m!7984474))

(assert (=> start!713876 d!2273015))

(declare-fun b!7319645 () Bool)

(declare-fun e!4382382 () Bool)

(declare-fun tp!2078729 () Bool)

(assert (=> b!7319645 (= e!4382382 (and tp_is_empty!47823 tp!2078729))))

(assert (=> b!7319572 (= tp!2078707 e!4382382)))

(assert (= (and b!7319572 (is-Cons!71273 (t!385632 l1!805))) b!7319645))

(declare-fun b!7319648 () Bool)

(declare-fun e!4382383 () Bool)

(declare-fun tp!2078730 () Bool)

(assert (=> b!7319648 (= e!4382383 (and tp_is_empty!47823 tp!2078730))))

(assert (=> b!7319568 (= tp!2078708 e!4382383)))

(assert (= (and b!7319568 (is-Cons!71273 (t!385632 l2!794))) b!7319648))

(declare-fun condSetEmpty!55215 () Bool)

(assert (=> setNonEmpty!55205 (= condSetEmpty!55215 (= setRest!55205 (as set.empty (Set A!965))))))

(declare-fun setRes!55215 () Bool)

(assert (=> setNonEmpty!55205 (= tp!2078710 setRes!55215)))

(declare-fun setIsEmpty!55215 () Bool)

(assert (=> setIsEmpty!55215 setRes!55215))

(declare-fun setNonEmpty!55215 () Bool)

(declare-fun tp!2078733 () Bool)

(assert (=> setNonEmpty!55215 (= setRes!55215 (and tp!2078733 tp_is_empty!47821))))

(declare-fun setElem!55215 () A!965)

(declare-fun setRest!55215 () (Set A!965))

(assert (=> setNonEmpty!55215 (= setRest!55205 (set.union (set.insert setElem!55215 (as set.empty (Set A!965))) setRest!55215))))

(assert (= (and setNonEmpty!55205 condSetEmpty!55215) setIsEmpty!55215))

(assert (= (and setNonEmpty!55205 (not condSetEmpty!55215)) setNonEmpty!55215))

(declare-fun condSetEmpty!55216 () Bool)

(assert (=> setNonEmpty!55206 (= condSetEmpty!55216 (= setRest!55206 (as set.empty (Set A!965))))))

(declare-fun setRes!55216 () Bool)

(assert (=> setNonEmpty!55206 (= tp!2078709 setRes!55216)))

(declare-fun setIsEmpty!55216 () Bool)

(assert (=> setIsEmpty!55216 setRes!55216))

(declare-fun setNonEmpty!55216 () Bool)

(declare-fun tp!2078734 () Bool)

(assert (=> setNonEmpty!55216 (= setRes!55216 (and tp!2078734 tp_is_empty!47821))))

(declare-fun setElem!55216 () A!965)

(declare-fun setRest!55216 () (Set A!965))

(assert (=> setNonEmpty!55216 (= setRest!55206 (set.union (set.insert setElem!55216 (as set.empty (Set A!965))) setRest!55216))))

(assert (= (and setNonEmpty!55206 condSetEmpty!55216) setIsEmpty!55216))

(assert (= (and setNonEmpty!55206 (not condSetEmpty!55216)) setNonEmpty!55216))

(declare-fun b_lambda!282779 () Bool)

(assert (= b_lambda!282775 (or b!7319569 b_lambda!282779)))

(declare-fun bs!1915727 () Bool)

(declare-fun d!2273017 () Bool)

(assert (= bs!1915727 (and d!2273017 b!7319569)))

(assert (=> bs!1915727 (= (dynLambda!29182 lambda!452929 (h!77721 (t!385632 l1!805))) (contains!20811 l2!794 (h!77721 (t!385632 l1!805))))))

(declare-fun m!7984476 () Bool)

(assert (=> bs!1915727 m!7984476))

(assert (=> b!7319603 d!2273017))

(declare-fun b_lambda!282781 () Bool)

(assert (= b_lambda!282777 (or b!7319569 b_lambda!282781)))

(declare-fun bs!1915728 () Bool)

(declare-fun d!2273019 () Bool)

(assert (= bs!1915728 (and d!2273019 b!7319569)))

(assert (=> bs!1915728 (= (dynLambda!29182 lambda!452929 (h!77721 l1!805)) (contains!20811 l2!794 (h!77721 l1!805)))))

(declare-fun m!7984478 () Bool)

(assert (=> bs!1915728 m!7984478))

(assert (=> b!7319626 d!2273019))

(push 1)

(assert (not b!7319627))

(assert (not d!2272993))

(assert (not b_lambda!282779))

(assert (not b!7319623))

(assert (not b!7319639))

(assert (not b!7319620))

(assert (not b!7319594))

(assert (not b_next!134909))

(assert (not bm!665857))

(assert (not bs!1915728))

(assert (not b!7319640))

(assert (not setNonEmpty!55216))

(assert (not b!7319648))

(assert (not d!2273013))

(assert (not b!7319638))

(assert b_and!351527)

(assert (not b!7319625))

(assert tp_is_empty!47821)

(assert (not d!2272991))

(assert (not b!7319645))

(assert (not d!2273003))

(assert (not d!2272995))

(assert (not d!2273011))

(assert (not d!2272999))

(assert (not d!2273015))

(assert (not d!2272997))

(assert (not b!7319597))

(assert (not setNonEmpty!55215))

(assert (not b_lambda!282781))

(assert tp_is_empty!47823)

(assert (not b!7319604))

(assert (not bs!1915727))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351527)

(assert (not b_next!134909))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2273047 () Bool)

(declare-fun lt!2603620 () Bool)

(assert (=> d!2273047 (= lt!2603620 (set.member (h!77721 l1!805) (content!14901 l1!805)))))

(declare-fun e!4382430 () Bool)

(assert (=> d!2273047 (= lt!2603620 e!4382430)))

(declare-fun res!2958076 () Bool)

(assert (=> d!2273047 (=> (not res!2958076) (not e!4382430))))

(assert (=> d!2273047 (= res!2958076 (is-Cons!71273 l1!805))))

(assert (=> d!2273047 (= (contains!20811 l1!805 (h!77721 l1!805)) lt!2603620)))

(declare-fun b!7319710 () Bool)

(declare-fun e!4382429 () Bool)

(assert (=> b!7319710 (= e!4382430 e!4382429)))

(declare-fun res!2958077 () Bool)

(assert (=> b!7319710 (=> res!2958077 e!4382429)))

(assert (=> b!7319710 (= res!2958077 (= (h!77721 l1!805) (h!77721 l1!805)))))

(declare-fun b!7319711 () Bool)

(assert (=> b!7319711 (= e!4382429 (contains!20811 (t!385632 l1!805) (h!77721 l1!805)))))

(assert (= (and d!2273047 res!2958076) b!7319710))

(assert (= (and b!7319710 (not res!2958077)) b!7319711))

(declare-fun m!7984542 () Bool)

(assert (=> d!2273047 m!7984542))

(declare-fun m!7984544 () Bool)

(assert (=> d!2273047 m!7984544))

(declare-fun m!7984546 () Bool)

(assert (=> b!7319711 m!7984546))

(assert (=> b!7319597 d!2273047))

(declare-fun d!2273049 () Bool)

(declare-fun c!1358729 () Bool)

(assert (=> d!2273049 (= c!1358729 (is-Nil!71273 lt!2603601))))

(declare-fun e!4382433 () (Set B!3667))

(assert (=> d!2273049 (= (content!14901 lt!2603601) e!4382433)))

(declare-fun b!7319716 () Bool)

(assert (=> b!7319716 (= e!4382433 (as set.empty (Set B!3667)))))

(declare-fun b!7319717 () Bool)

(assert (=> b!7319717 (= e!4382433 (set.union (set.insert (h!77721 lt!2603601) (as set.empty (Set B!3667))) (content!14901 (t!385632 lt!2603601))))))

(assert (= (and d!2273049 c!1358729) b!7319716))

(assert (= (and d!2273049 (not c!1358729)) b!7319717))

(declare-fun m!7984548 () Bool)

(assert (=> b!7319717 m!7984548))

(declare-fun m!7984550 () Bool)

(assert (=> b!7319717 m!7984550))

(assert (=> b!7319640 d!2273049))

(declare-fun b!7319720 () Bool)

(declare-fun e!4382435 () Bool)

(assert (=> b!7319720 (= e!4382435 (subseq!894 (t!385632 (t!385632 l1!805)) (t!385632 (t!385632 lt!2603559))))))

(declare-fun d!2273051 () Bool)

(declare-fun res!2958079 () Bool)

(declare-fun e!4382436 () Bool)

(assert (=> d!2273051 (=> res!2958079 e!4382436)))

(assert (=> d!2273051 (= res!2958079 (is-Nil!71273 (t!385632 l1!805)))))

(assert (=> d!2273051 (= (subseq!894 (t!385632 l1!805) (t!385632 lt!2603559)) e!4382436)))

(declare-fun b!7319721 () Bool)

(declare-fun e!4382437 () Bool)

(assert (=> b!7319721 (= e!4382437 (subseq!894 (t!385632 l1!805) (t!385632 (t!385632 lt!2603559))))))

(declare-fun b!7319719 () Bool)

(declare-fun e!4382434 () Bool)

(assert (=> b!7319719 (= e!4382434 e!4382437)))

(declare-fun res!2958080 () Bool)

(assert (=> b!7319719 (=> res!2958080 e!4382437)))

(assert (=> b!7319719 (= res!2958080 e!4382435)))

(declare-fun res!2958078 () Bool)

(assert (=> b!7319719 (=> (not res!2958078) (not e!4382435))))

(assert (=> b!7319719 (= res!2958078 (= (h!77721 (t!385632 l1!805)) (h!77721 (t!385632 lt!2603559))))))

(declare-fun b!7319718 () Bool)

(assert (=> b!7319718 (= e!4382436 e!4382434)))

(declare-fun res!2958081 () Bool)

(assert (=> b!7319718 (=> (not res!2958081) (not e!4382434))))

(assert (=> b!7319718 (= res!2958081 (is-Cons!71273 (t!385632 lt!2603559)))))

(assert (= (and d!2273051 (not res!2958079)) b!7319718))

(assert (= (and b!7319718 res!2958081) b!7319719))

(assert (= (and b!7319719 res!2958078) b!7319720))

(assert (= (and b!7319719 (not res!2958080)) b!7319721))

(declare-fun m!7984552 () Bool)

(assert (=> b!7319720 m!7984552))

(declare-fun m!7984554 () Bool)

(assert (=> b!7319721 m!7984554))

(assert (=> b!7319638 d!2273051))

(declare-fun d!2273053 () Bool)

(declare-fun lt!2603621 () Bool)

(assert (=> d!2273053 (= lt!2603621 (set.member (h!77721 l1!805) (content!14901 l2!794)))))

(declare-fun e!4382439 () Bool)

(assert (=> d!2273053 (= lt!2603621 e!4382439)))

(declare-fun res!2958082 () Bool)

(assert (=> d!2273053 (=> (not res!2958082) (not e!4382439))))

(assert (=> d!2273053 (= res!2958082 (is-Cons!71273 l2!794))))

(assert (=> d!2273053 (= (contains!20811 l2!794 (h!77721 l1!805)) lt!2603621)))

(declare-fun b!7319722 () Bool)

(declare-fun e!4382438 () Bool)

(assert (=> b!7319722 (= e!4382439 e!4382438)))

(declare-fun res!2958083 () Bool)

(assert (=> b!7319722 (=> res!2958083 e!4382438)))

(assert (=> b!7319722 (= res!2958083 (= (h!77721 l2!794) (h!77721 l1!805)))))

(declare-fun b!7319723 () Bool)

(assert (=> b!7319723 (= e!4382438 (contains!20811 (t!385632 l2!794) (h!77721 l1!805)))))

(assert (= (and d!2273053 res!2958082) b!7319722))

(assert (= (and b!7319722 (not res!2958083)) b!7319723))

(declare-fun m!7984556 () Bool)

(assert (=> d!2273053 m!7984556))

(declare-fun m!7984558 () Bool)

(assert (=> d!2273053 m!7984558))

(declare-fun m!7984560 () Bool)

(assert (=> b!7319723 m!7984560))

(assert (=> bs!1915728 d!2273053))

(declare-fun d!2273055 () Bool)

(declare-fun res!2958084 () Bool)

(declare-fun e!4382440 () Bool)

(assert (=> d!2273055 (=> res!2958084 e!4382440)))

(assert (=> d!2273055 (= res!2958084 (is-Nil!71273 (t!385632 l1!805)))))

(assert (=> d!2273055 (= (forall!17809 (t!385632 l1!805) lambda!452937) e!4382440)))

(declare-fun b!7319724 () Bool)

(declare-fun e!4382441 () Bool)

(assert (=> b!7319724 (= e!4382440 e!4382441)))

(declare-fun res!2958085 () Bool)

(assert (=> b!7319724 (=> (not res!2958085) (not e!4382441))))

(assert (=> b!7319724 (= res!2958085 (dynLambda!29182 lambda!452937 (h!77721 (t!385632 l1!805))))))

(declare-fun b!7319725 () Bool)

(assert (=> b!7319725 (= e!4382441 (forall!17809 (t!385632 (t!385632 l1!805)) lambda!452937))))

(assert (= (and d!2273055 (not res!2958084)) b!7319724))

(assert (= (and b!7319724 res!2958085) b!7319725))

(declare-fun b_lambda!282791 () Bool)

(assert (=> (not b_lambda!282791) (not b!7319724)))

(declare-fun m!7984562 () Bool)

(assert (=> b!7319724 m!7984562))

(declare-fun m!7984564 () Bool)

(assert (=> b!7319725 m!7984564))

(assert (=> d!2272997 d!2273055))

(assert (=> d!2272997 d!2273015))

(declare-fun d!2273057 () Bool)

(declare-fun e!4382442 () Bool)

(assert (=> d!2273057 e!4382442))

(declare-fun res!2958086 () Bool)

(assert (=> d!2273057 (=> (not res!2958086) (not e!4382442))))

(declare-fun lt!2603622 () List!71397)

(assert (=> d!2273057 (= res!2958086 (noDuplicate!3082 lt!2603622))))

(assert (=> d!2273057 (= lt!2603622 (choose!56838 (set.union (flatMap!3102 s1!446 f!760) (flatMap!3102 s2!417 f!760))))))

(assert (=> d!2273057 (= (toList!11684 (set.union (flatMap!3102 s1!446 f!760) (flatMap!3102 s2!417 f!760))) lt!2603622)))

(declare-fun b!7319726 () Bool)

(assert (=> b!7319726 (= e!4382442 (= (content!14901 lt!2603622) (set.union (flatMap!3102 s1!446 f!760) (flatMap!3102 s2!417 f!760))))))

(assert (= (and d!2273057 res!2958086) b!7319726))

(declare-fun m!7984566 () Bool)

(assert (=> d!2273057 m!7984566))

(declare-fun m!7984568 () Bool)

(assert (=> d!2273057 m!7984568))

(declare-fun m!7984570 () Bool)

(assert (=> b!7319726 m!7984570))

(assert (=> d!2272997 d!2273057))

(declare-fun bs!1915737 () Bool)

(declare-fun d!2273059 () Bool)

(assert (= bs!1915737 (and d!2273059 b!7319569)))

(declare-fun lambda!452943 () Int)

(assert (=> bs!1915737 (= lambda!452943 lambda!452929)))

(declare-fun bs!1915738 () Bool)

(assert (= bs!1915738 (and d!2273059 d!2272997)))

(assert (=> bs!1915738 (= lambda!452943 lambda!452937)))

(assert (=> d!2273059 true))

(assert (=> d!2273059 (forall!17809 (t!385632 l1!805) lambda!452943)))

(assert (=> d!2273059 true))

(declare-fun _$10!251 () Unit!164797)

(assert (=> d!2273059 (= (choose!56841 s1!446 s2!417 f!760 (t!385632 l1!805) l2!794) _$10!251)))

(declare-fun bs!1915739 () Bool)

(assert (= bs!1915739 d!2273059))

(declare-fun m!7984572 () Bool)

(assert (=> bs!1915739 m!7984572))

(assert (=> d!2272997 d!2273059))

(declare-fun b!7319729 () Bool)

(declare-fun e!4382444 () Bool)

(assert (=> b!7319729 (= e!4382444 (subseq!894 (t!385632 (t!385632 l1!805)) (t!385632 (toList!11684 (set.union (flatMap!3102 s1!446 f!760) (flatMap!3102 s2!417 f!760))))))))

(declare-fun d!2273061 () Bool)

(declare-fun res!2958088 () Bool)

(declare-fun e!4382445 () Bool)

(assert (=> d!2273061 (=> res!2958088 e!4382445)))

(assert (=> d!2273061 (= res!2958088 (is-Nil!71273 (t!385632 l1!805)))))

(assert (=> d!2273061 (= (subseq!894 (t!385632 l1!805) (toList!11684 (set.union (flatMap!3102 s1!446 f!760) (flatMap!3102 s2!417 f!760)))) e!4382445)))

(declare-fun e!4382446 () Bool)

(declare-fun b!7319730 () Bool)

(assert (=> b!7319730 (= e!4382446 (subseq!894 (t!385632 l1!805) (t!385632 (toList!11684 (set.union (flatMap!3102 s1!446 f!760) (flatMap!3102 s2!417 f!760))))))))

(declare-fun b!7319728 () Bool)

(declare-fun e!4382443 () Bool)

(assert (=> b!7319728 (= e!4382443 e!4382446)))

(declare-fun res!2958089 () Bool)

(assert (=> b!7319728 (=> res!2958089 e!4382446)))

(assert (=> b!7319728 (= res!2958089 e!4382444)))

(declare-fun res!2958087 () Bool)

(assert (=> b!7319728 (=> (not res!2958087) (not e!4382444))))

(assert (=> b!7319728 (= res!2958087 (= (h!77721 (t!385632 l1!805)) (h!77721 (toList!11684 (set.union (flatMap!3102 s1!446 f!760) (flatMap!3102 s2!417 f!760))))))))

(declare-fun b!7319727 () Bool)

(assert (=> b!7319727 (= e!4382445 e!4382443)))

(declare-fun res!2958090 () Bool)

(assert (=> b!7319727 (=> (not res!2958090) (not e!4382443))))

(assert (=> b!7319727 (= res!2958090 (is-Cons!71273 (toList!11684 (set.union (flatMap!3102 s1!446 f!760) (flatMap!3102 s2!417 f!760)))))))

(assert (= (and d!2273061 (not res!2958088)) b!7319727))

(assert (= (and b!7319727 res!2958090) b!7319728))

(assert (= (and b!7319728 res!2958087) b!7319729))

(assert (= (and b!7319728 (not res!2958089)) b!7319730))

(declare-fun m!7984574 () Bool)

(assert (=> b!7319729 m!7984574))

(declare-fun m!7984576 () Bool)

(assert (=> b!7319730 m!7984576))

(assert (=> d!2272997 d!2273061))

(assert (=> d!2272997 d!2273013))

(declare-fun b!7319731 () Bool)

(declare-fun e!4382449 () Unit!164797)

(declare-fun call!665866 () Unit!164797)

(assert (=> b!7319731 (= e!4382449 call!665866)))

(declare-fun b!7319732 () Bool)

(declare-fun e!4382447 () Unit!164797)

(declare-fun e!4382448 () Unit!164797)

(assert (=> b!7319732 (= e!4382447 e!4382448)))

(declare-fun c!1358732 () Bool)

(assert (=> b!7319732 (= c!1358732 (subseq!894 (ite c!1358717 l1!805 (t!385632 l1!805)) (t!385632 (t!385632 lt!2603559))))))

(declare-fun b!7319733 () Bool)

(declare-fun Unit!164805 () Unit!164797)

(assert (=> b!7319733 (= e!4382449 Unit!164805)))

(declare-fun b!7319734 () Bool)

(declare-fun Unit!164806 () Unit!164797)

(assert (=> b!7319734 (= e!4382447 Unit!164806)))

(declare-fun b!7319735 () Bool)

(declare-fun e!4382450 () Bool)

(assert (=> b!7319735 (= e!4382450 (subseq!894 (ite c!1358717 l1!805 (t!385632 l1!805)) (t!385632 lt!2603559)))))

(declare-fun d!2273063 () Bool)

(assert (=> d!2273063 (subseq!894 (tail!14655 (ite c!1358717 l1!805 (t!385632 l1!805))) (t!385632 lt!2603559))))

(declare-fun lt!2603623 () Unit!164797)

(assert (=> d!2273063 (= lt!2603623 e!4382447)))

(declare-fun c!1358730 () Bool)

(assert (=> d!2273063 (= c!1358730 (and (is-Cons!71273 (ite c!1358717 l1!805 (t!385632 l1!805))) (is-Cons!71273 (t!385632 lt!2603559))))))

(assert (=> d!2273063 e!4382450))

(declare-fun res!2958091 () Bool)

(assert (=> d!2273063 (=> (not res!2958091) (not e!4382450))))

(assert (=> d!2273063 (= res!2958091 (not (isEmpty!40880 (ite c!1358717 l1!805 (t!385632 l1!805)))))))

(assert (=> d!2273063 (= (subseqTail!107 (ite c!1358717 l1!805 (t!385632 l1!805)) (t!385632 lt!2603559)) lt!2603623)))

(declare-fun b!7319736 () Bool)

(assert (=> b!7319736 (= e!4382448 call!665866)))

(declare-fun bm!665861 () Bool)

(assert (=> bm!665861 (= call!665866 (subseqTail!107 (ite c!1358732 (ite c!1358717 l1!805 (t!385632 l1!805)) (t!385632 (ite c!1358717 l1!805 (t!385632 l1!805)))) (t!385632 (t!385632 lt!2603559))))))

(declare-fun b!7319737 () Bool)

(declare-fun c!1358731 () Bool)

(assert (=> b!7319737 (= c!1358731 (not (isEmpty!40880 (t!385632 (ite c!1358717 l1!805 (t!385632 l1!805))))))))

(assert (=> b!7319737 (= e!4382448 e!4382449)))

(assert (= (and d!2273063 res!2958091) b!7319735))

(assert (= (and d!2273063 c!1358730) b!7319732))

(assert (= (and d!2273063 (not c!1358730)) b!7319734))

(assert (= (and b!7319732 c!1358732) b!7319736))

(assert (= (and b!7319732 (not c!1358732)) b!7319737))

(assert (= (and b!7319737 c!1358731) b!7319731))

(assert (= (and b!7319737 (not c!1358731)) b!7319733))

(assert (= (or b!7319736 b!7319731) bm!665861))

(declare-fun m!7984578 () Bool)

(assert (=> b!7319735 m!7984578))

(declare-fun m!7984580 () Bool)

(assert (=> bm!665861 m!7984580))

(declare-fun m!7984582 () Bool)

(assert (=> b!7319732 m!7984582))

(declare-fun m!7984584 () Bool)

(assert (=> d!2273063 m!7984584))

(assert (=> d!2273063 m!7984584))

(declare-fun m!7984586 () Bool)

(assert (=> d!2273063 m!7984586))

(declare-fun m!7984588 () Bool)

(assert (=> d!2273063 m!7984588))

(declare-fun m!7984590 () Bool)

(assert (=> b!7319737 m!7984590))

(assert (=> bm!665857 d!2273063))

(assert (=> b!7319627 d!2273001))

(declare-fun d!2273065 () Bool)

(assert (=> d!2273065 true))

(declare-fun setRes!55223 () Bool)

(assert (=> d!2273065 setRes!55223))

(declare-fun condSetEmpty!55223 () Bool)

(declare-fun res!2958094 () (Set B!3667))

(assert (=> d!2273065 (= condSetEmpty!55223 (= res!2958094 (as set.empty (Set B!3667))))))

(assert (=> d!2273065 (= (choose!56839 s1!446 f!760) res!2958094)))

(declare-fun setIsEmpty!55223 () Bool)

(assert (=> setIsEmpty!55223 setRes!55223))

(declare-fun setNonEmpty!55223 () Bool)

(declare-fun tp!2078745 () Bool)

(assert (=> setNonEmpty!55223 (= setRes!55223 (and tp!2078745 tp_is_empty!47823))))

(declare-fun setElem!55223 () B!3667)

(declare-fun setRest!55223 () (Set B!3667))

(assert (=> setNonEmpty!55223 (= res!2958094 (set.union (set.insert setElem!55223 (as set.empty (Set B!3667))) setRest!55223))))

(assert (= (and d!2273065 condSetEmpty!55223) setIsEmpty!55223))

(assert (= (and d!2273065 (not condSetEmpty!55223)) setNonEmpty!55223))

(assert (=> d!2273013 d!2273065))

(declare-fun d!2273067 () Bool)

(declare-fun res!2958095 () Bool)

(declare-fun e!4382451 () Bool)

(assert (=> d!2273067 (=> res!2958095 e!4382451)))

(assert (=> d!2273067 (= res!2958095 (is-Nil!71273 (t!385632 (t!385632 l1!805))))))

(assert (=> d!2273067 (= (forall!17809 (t!385632 (t!385632 l1!805)) lambda!452929) e!4382451)))

(declare-fun b!7319738 () Bool)

(declare-fun e!4382452 () Bool)

(assert (=> b!7319738 (= e!4382451 e!4382452)))

(declare-fun res!2958096 () Bool)

(assert (=> b!7319738 (=> (not res!2958096) (not e!4382452))))

(assert (=> b!7319738 (= res!2958096 (dynLambda!29182 lambda!452929 (h!77721 (t!385632 (t!385632 l1!805)))))))

(declare-fun b!7319739 () Bool)

(assert (=> b!7319739 (= e!4382452 (forall!17809 (t!385632 (t!385632 (t!385632 l1!805))) lambda!452929))))

(assert (= (and d!2273067 (not res!2958095)) b!7319738))

(assert (= (and b!7319738 res!2958096) b!7319739))

(declare-fun b_lambda!282793 () Bool)

(assert (=> (not b_lambda!282793) (not b!7319738)))

(declare-fun m!7984592 () Bool)

(assert (=> b!7319738 m!7984592))

(declare-fun m!7984594 () Bool)

(assert (=> b!7319739 m!7984594))

(assert (=> b!7319604 d!2273067))

(declare-fun d!2273069 () Bool)

(assert (=> d!2273069 (= (isEmpty!40880 (t!385632 l1!805)) (is-Nil!71273 (t!385632 l1!805)))))

(assert (=> b!7319625 d!2273069))

(declare-fun d!2273071 () Bool)

(declare-fun c!1358733 () Bool)

(assert (=> d!2273071 (= c!1358733 (is-Nil!71273 lt!2603588))))

(declare-fun e!4382453 () (Set B!3667))

(assert (=> d!2273071 (= (content!14901 lt!2603588) e!4382453)))

(declare-fun b!7319740 () Bool)

(assert (=> b!7319740 (= e!4382453 (as set.empty (Set B!3667)))))

(declare-fun b!7319741 () Bool)

(assert (=> b!7319741 (= e!4382453 (set.union (set.insert (h!77721 lt!2603588) (as set.empty (Set B!3667))) (content!14901 (t!385632 lt!2603588))))))

(assert (= (and d!2273071 c!1358733) b!7319740))

(assert (= (and d!2273071 (not c!1358733)) b!7319741))

(declare-fun m!7984596 () Bool)

(assert (=> b!7319741 m!7984596))

(declare-fun m!7984598 () Bool)

(assert (=> b!7319741 m!7984598))

(assert (=> b!7319594 d!2273071))

(declare-fun d!2273073 () Bool)

(declare-fun lt!2603624 () Bool)

(assert (=> d!2273073 (= lt!2603624 (set.member (h!77721 l1!805) (content!14901 lt!2603559)))))

(declare-fun e!4382455 () Bool)

(assert (=> d!2273073 (= lt!2603624 e!4382455)))

(declare-fun res!2958097 () Bool)

(assert (=> d!2273073 (=> (not res!2958097) (not e!4382455))))

(assert (=> d!2273073 (= res!2958097 (is-Cons!71273 lt!2603559))))

(assert (=> d!2273073 (= (contains!20811 lt!2603559 (h!77721 l1!805)) lt!2603624)))

(declare-fun b!7319742 () Bool)

(declare-fun e!4382454 () Bool)

(assert (=> b!7319742 (= e!4382455 e!4382454)))

(declare-fun res!2958098 () Bool)

(assert (=> b!7319742 (=> res!2958098 e!4382454)))

(assert (=> b!7319742 (= res!2958098 (= (h!77721 lt!2603559) (h!77721 l1!805)))))

(declare-fun b!7319743 () Bool)

(assert (=> b!7319743 (= e!4382454 (contains!20811 (t!385632 lt!2603559) (h!77721 l1!805)))))

(assert (= (and d!2273073 res!2958097) b!7319742))

(assert (= (and b!7319742 (not res!2958098)) b!7319743))

(declare-fun m!7984600 () Bool)

(assert (=> d!2273073 m!7984600))

(declare-fun m!7984602 () Bool)

(assert (=> d!2273073 m!7984602))

(declare-fun m!7984604 () Bool)

(assert (=> b!7319743 m!7984604))

(assert (=> d!2272995 d!2273073))

(declare-fun d!2273075 () Bool)

(assert (=> d!2273075 (contains!20811 lt!2603559 (h!77721 l1!805))))

(assert (=> d!2273075 true))

(declare-fun _$10!254 () Unit!164797)

(assert (=> d!2273075 (= (choose!56840 l1!805 lt!2603559 (h!77721 l1!805)) _$10!254)))

(declare-fun bs!1915740 () Bool)

(assert (= bs!1915740 d!2273075))

(assert (=> bs!1915740 m!7984426))

(assert (=> d!2272995 d!2273075))

(assert (=> d!2272995 d!2273009))

(declare-fun d!2273077 () Bool)

(declare-fun res!2958103 () Bool)

(declare-fun e!4382460 () Bool)

(assert (=> d!2273077 (=> res!2958103 e!4382460)))

(assert (=> d!2273077 (= res!2958103 (is-Nil!71273 lt!2603588))))

(assert (=> d!2273077 (= (noDuplicate!3082 lt!2603588) e!4382460)))

(declare-fun b!7319748 () Bool)

(declare-fun e!4382461 () Bool)

(assert (=> b!7319748 (= e!4382460 e!4382461)))

(declare-fun res!2958104 () Bool)

(assert (=> b!7319748 (=> (not res!2958104) (not e!4382461))))

(assert (=> b!7319748 (= res!2958104 (not (contains!20811 (t!385632 lt!2603588) (h!77721 lt!2603588))))))

(declare-fun b!7319749 () Bool)

(assert (=> b!7319749 (= e!4382461 (noDuplicate!3082 (t!385632 lt!2603588)))))

(assert (= (and d!2273077 (not res!2958103)) b!7319748))

(assert (= (and b!7319748 res!2958104) b!7319749))

(declare-fun m!7984606 () Bool)

(assert (=> b!7319748 m!7984606))

(declare-fun m!7984608 () Bool)

(assert (=> b!7319749 m!7984608))

(assert (=> d!2272991 d!2273077))

(declare-fun d!2273079 () Bool)

(declare-fun e!4382466 () Bool)

(assert (=> d!2273079 e!4382466))

(declare-fun res!2958109 () Bool)

(assert (=> d!2273079 (=> (not res!2958109) (not e!4382466))))

(declare-fun res!2958110 () List!71397)

(assert (=> d!2273079 (= res!2958109 (noDuplicate!3082 res!2958110))))

(declare-fun e!4382467 () Bool)

(assert (=> d!2273079 e!4382467))

(assert (=> d!2273079 (= (choose!56838 lt!2603561) res!2958110)))

(declare-fun b!7319754 () Bool)

(declare-fun tp!2078748 () Bool)

(assert (=> b!7319754 (= e!4382467 (and tp_is_empty!47823 tp!2078748))))

(declare-fun b!7319755 () Bool)

(assert (=> b!7319755 (= e!4382466 (= (content!14901 res!2958110) lt!2603561))))

(assert (= (and d!2273079 (is-Cons!71273 res!2958110)) b!7319754))

(assert (= (and d!2273079 res!2958109) b!7319755))

(declare-fun m!7984610 () Bool)

(assert (=> d!2273079 m!7984610))

(declare-fun m!7984612 () Bool)

(assert (=> b!7319755 m!7984612))

(assert (=> d!2272991 d!2273079))

(declare-fun b!7319758 () Bool)

(declare-fun e!4382469 () Bool)

(assert (=> b!7319758 (= e!4382469 (subseq!894 (t!385632 (tail!14655 l1!805)) (t!385632 lt!2603559)))))

(declare-fun d!2273081 () Bool)

(declare-fun res!2958112 () Bool)

(declare-fun e!4382470 () Bool)

(assert (=> d!2273081 (=> res!2958112 e!4382470)))

(assert (=> d!2273081 (= res!2958112 (is-Nil!71273 (tail!14655 l1!805)))))

(assert (=> d!2273081 (= (subseq!894 (tail!14655 l1!805) lt!2603559) e!4382470)))

(declare-fun b!7319759 () Bool)

(declare-fun e!4382471 () Bool)

(assert (=> b!7319759 (= e!4382471 (subseq!894 (tail!14655 l1!805) (t!385632 lt!2603559)))))

(declare-fun b!7319757 () Bool)

(declare-fun e!4382468 () Bool)

(assert (=> b!7319757 (= e!4382468 e!4382471)))

(declare-fun res!2958113 () Bool)

(assert (=> b!7319757 (=> res!2958113 e!4382471)))

(assert (=> b!7319757 (= res!2958113 e!4382469)))

(declare-fun res!2958111 () Bool)

(assert (=> b!7319757 (=> (not res!2958111) (not e!4382469))))

(assert (=> b!7319757 (= res!2958111 (= (h!77721 (tail!14655 l1!805)) (h!77721 lt!2603559)))))

(declare-fun b!7319756 () Bool)

(assert (=> b!7319756 (= e!4382470 e!4382468)))

(declare-fun res!2958114 () Bool)

(assert (=> b!7319756 (=> (not res!2958114) (not e!4382468))))

(assert (=> b!7319756 (= res!2958114 (is-Cons!71273 lt!2603559))))

(assert (= (and d!2273081 (not res!2958112)) b!7319756))

(assert (= (and b!7319756 res!2958114) b!7319757))

(assert (= (and b!7319757 res!2958111) b!7319758))

(assert (= (and b!7319757 (not res!2958113)) b!7319759))

(declare-fun m!7984614 () Bool)

(assert (=> b!7319758 m!7984614))

(assert (=> b!7319759 m!7984454))

(declare-fun m!7984616 () Bool)

(assert (=> b!7319759 m!7984616))

(assert (=> d!2273003 d!2273081))

(declare-fun d!2273083 () Bool)

(assert (=> d!2273083 (= (tail!14655 l1!805) (t!385632 l1!805))))

(assert (=> d!2273003 d!2273083))

(declare-fun d!2273085 () Bool)

(assert (=> d!2273085 (= (isEmpty!40880 l1!805) (is-Nil!71273 l1!805))))

(assert (=> d!2273003 d!2273085))

(declare-fun d!2273087 () Bool)

(declare-fun lt!2603625 () Bool)

(assert (=> d!2273087 (= lt!2603625 (set.member (h!77721 (t!385632 l1!805)) (content!14901 l2!794)))))

(declare-fun e!4382473 () Bool)

(assert (=> d!2273087 (= lt!2603625 e!4382473)))

(declare-fun res!2958115 () Bool)

(assert (=> d!2273087 (=> (not res!2958115) (not e!4382473))))

(assert (=> d!2273087 (= res!2958115 (is-Cons!71273 l2!794))))

(assert (=> d!2273087 (= (contains!20811 l2!794 (h!77721 (t!385632 l1!805))) lt!2603625)))

(declare-fun b!7319760 () Bool)

(declare-fun e!4382472 () Bool)

(assert (=> b!7319760 (= e!4382473 e!4382472)))

(declare-fun res!2958116 () Bool)

(assert (=> b!7319760 (=> res!2958116 e!4382472)))

(assert (=> b!7319760 (= res!2958116 (= (h!77721 l2!794) (h!77721 (t!385632 l1!805))))))

(declare-fun b!7319761 () Bool)

(assert (=> b!7319761 (= e!4382472 (contains!20811 (t!385632 l2!794) (h!77721 (t!385632 l1!805))))))

(assert (= (and d!2273087 res!2958115) b!7319760))

(assert (= (and b!7319760 (not res!2958116)) b!7319761))

(assert (=> d!2273087 m!7984556))

(declare-fun m!7984618 () Bool)

(assert (=> d!2273087 m!7984618))

(declare-fun m!7984620 () Bool)

(assert (=> b!7319761 m!7984620))

(assert (=> bs!1915727 d!2273087))

(declare-fun d!2273089 () Bool)

(declare-fun res!2958117 () Bool)

(declare-fun e!4382474 () Bool)

(assert (=> d!2273089 (=> res!2958117 e!4382474)))

(assert (=> d!2273089 (= res!2958117 (is-Nil!71273 lt!2603601))))

(assert (=> d!2273089 (= (noDuplicate!3082 lt!2603601) e!4382474)))

(declare-fun b!7319762 () Bool)

(declare-fun e!4382475 () Bool)

(assert (=> b!7319762 (= e!4382474 e!4382475)))

(declare-fun res!2958118 () Bool)

(assert (=> b!7319762 (=> (not res!2958118) (not e!4382475))))

(assert (=> b!7319762 (= res!2958118 (not (contains!20811 (t!385632 lt!2603601) (h!77721 lt!2603601))))))

(declare-fun b!7319763 () Bool)

(assert (=> b!7319763 (= e!4382475 (noDuplicate!3082 (t!385632 lt!2603601)))))

(assert (= (and d!2273089 (not res!2958117)) b!7319762))

(assert (= (and b!7319762 res!2958118) b!7319763))

(declare-fun m!7984622 () Bool)

(assert (=> b!7319762 m!7984622))

(declare-fun m!7984624 () Bool)

(assert (=> b!7319763 m!7984624))

(assert (=> d!2273011 d!2273089))

(declare-fun d!2273091 () Bool)

(declare-fun e!4382476 () Bool)

(assert (=> d!2273091 e!4382476))

(declare-fun res!2958119 () Bool)

(assert (=> d!2273091 (=> (not res!2958119) (not e!4382476))))

(declare-fun res!2958120 () List!71397)

(assert (=> d!2273091 (= res!2958119 (noDuplicate!3082 res!2958120))))

(declare-fun e!4382477 () Bool)

(assert (=> d!2273091 e!4382477))

(assert (=> d!2273091 (= (choose!56838 lt!2603558) res!2958120)))

(declare-fun b!7319764 () Bool)

(declare-fun tp!2078749 () Bool)

(assert (=> b!7319764 (= e!4382477 (and tp_is_empty!47823 tp!2078749))))

(declare-fun b!7319765 () Bool)

(assert (=> b!7319765 (= e!4382476 (= (content!14901 res!2958120) lt!2603558))))

(assert (= (and d!2273091 (is-Cons!71273 res!2958120)) b!7319764))

(assert (= (and d!2273091 res!2958119) b!7319765))

(declare-fun m!7984626 () Bool)

(assert (=> d!2273091 m!7984626))

(declare-fun m!7984628 () Bool)

(assert (=> b!7319765 m!7984628))

(assert (=> d!2273011 d!2273091))

(declare-fun d!2273093 () Bool)

(assert (=> d!2273093 true))

(declare-fun setRes!55224 () Bool)

(assert (=> d!2273093 setRes!55224))

(declare-fun condSetEmpty!55224 () Bool)

(declare-fun res!2958121 () (Set B!3667))

(assert (=> d!2273093 (= condSetEmpty!55224 (= res!2958121 (as set.empty (Set B!3667))))))

(assert (=> d!2273093 (= (choose!56839 (set.union s1!446 s2!417) f!760) res!2958121)))

(declare-fun setIsEmpty!55224 () Bool)

(assert (=> setIsEmpty!55224 setRes!55224))

(declare-fun setNonEmpty!55224 () Bool)

(declare-fun tp!2078750 () Bool)

(assert (=> setNonEmpty!55224 (= setRes!55224 (and tp!2078750 tp_is_empty!47823))))

(declare-fun setElem!55224 () B!3667)

(declare-fun setRest!55224 () (Set B!3667))

(assert (=> setNonEmpty!55224 (= res!2958121 (set.union (set.insert setElem!55224 (as set.empty (Set B!3667))) setRest!55224))))

(assert (= (and d!2273093 condSetEmpty!55224) setIsEmpty!55224))

(assert (= (and d!2273093 (not condSetEmpty!55224)) setNonEmpty!55224))

(assert (=> d!2272993 d!2273093))

(assert (=> b!7319623 d!2273009))

(declare-fun b!7319768 () Bool)

(declare-fun e!4382479 () Bool)

(assert (=> b!7319768 (= e!4382479 (subseq!894 (t!385632 l1!805) (t!385632 (t!385632 lt!2603559))))))

(declare-fun d!2273095 () Bool)

(declare-fun res!2958123 () Bool)

(declare-fun e!4382480 () Bool)

(assert (=> d!2273095 (=> res!2958123 e!4382480)))

(assert (=> d!2273095 (= res!2958123 (is-Nil!71273 l1!805))))

(assert (=> d!2273095 (= (subseq!894 l1!805 (t!385632 lt!2603559)) e!4382480)))

(declare-fun b!7319769 () Bool)

(declare-fun e!4382481 () Bool)

(assert (=> b!7319769 (= e!4382481 (subseq!894 l1!805 (t!385632 (t!385632 lt!2603559))))))

(declare-fun b!7319767 () Bool)

(declare-fun e!4382478 () Bool)

(assert (=> b!7319767 (= e!4382478 e!4382481)))

(declare-fun res!2958124 () Bool)

(assert (=> b!7319767 (=> res!2958124 e!4382481)))

(assert (=> b!7319767 (= res!2958124 e!4382479)))

(declare-fun res!2958122 () Bool)

(assert (=> b!7319767 (=> (not res!2958122) (not e!4382479))))

(assert (=> b!7319767 (= res!2958122 (= (h!77721 l1!805) (h!77721 (t!385632 lt!2603559))))))

(declare-fun b!7319766 () Bool)

(assert (=> b!7319766 (= e!4382480 e!4382478)))

(declare-fun res!2958125 () Bool)

(assert (=> b!7319766 (=> (not res!2958125) (not e!4382478))))

(assert (=> b!7319766 (= res!2958125 (is-Cons!71273 (t!385632 lt!2603559)))))

(assert (= (and d!2273095 (not res!2958123)) b!7319766))

(assert (= (and b!7319766 res!2958125) b!7319767))

(assert (= (and b!7319767 res!2958122) b!7319768))

(assert (= (and b!7319767 (not res!2958124)) b!7319769))

(assert (=> b!7319768 m!7984554))

(declare-fun m!7984630 () Bool)

(assert (=> b!7319769 m!7984630))

(assert (=> b!7319620 d!2273095))

(assert (=> b!7319639 d!2273095))

(declare-fun d!2273097 () Bool)

(assert (=> d!2273097 true))

(declare-fun setRes!55225 () Bool)

(assert (=> d!2273097 setRes!55225))

(declare-fun condSetEmpty!55225 () Bool)

(declare-fun res!2958126 () (Set B!3667))

(assert (=> d!2273097 (= condSetEmpty!55225 (= res!2958126 (as set.empty (Set B!3667))))))

(assert (=> d!2273097 (= (choose!56839 s2!417 f!760) res!2958126)))

(declare-fun setIsEmpty!55225 () Bool)

(assert (=> setIsEmpty!55225 setRes!55225))

(declare-fun setNonEmpty!55225 () Bool)

(declare-fun tp!2078751 () Bool)

(assert (=> setNonEmpty!55225 (= setRes!55225 (and tp!2078751 tp_is_empty!47823))))

(declare-fun setElem!55225 () B!3667)

(declare-fun setRest!55225 () (Set B!3667))

(assert (=> setNonEmpty!55225 (= res!2958126 (set.union (set.insert setElem!55225 (as set.empty (Set B!3667))) setRest!55225))))

(assert (= (and d!2273097 condSetEmpty!55225) setIsEmpty!55225))

(assert (= (and d!2273097 (not condSetEmpty!55225)) setNonEmpty!55225))

(assert (=> d!2273015 d!2273097))

(assert (=> d!2272999 d!2273013))

(assert (=> d!2272999 d!2273015))

(assert (=> d!2272999 d!2272993))

(declare-fun d!2273099 () Bool)

(assert (=> d!2273099 (= (set.member (h!77721 l1!805) (set.union (flatMap!3102 s1!446 f!760) (flatMap!3102 s2!417 f!760))) (set.member (h!77721 l1!805) (flatMap!3102 (set.union s1!446 s2!417) f!760)))))

(assert (=> d!2273099 true))

(declare-fun _$8!758 () Unit!164797)

(assert (=> d!2273099 (= (choose!56842 s1!446 s2!417 f!760 (h!77721 l1!805)) _$8!758)))

(declare-fun bs!1915741 () Bool)

(assert (= bs!1915741 d!2273099))

(assert (=> bs!1915741 m!7984382))

(assert (=> bs!1915741 m!7984384))

(assert (=> bs!1915741 m!7984388))

(assert (=> bs!1915741 m!7984442))

(assert (=> bs!1915741 m!7984440))

(assert (=> d!2272999 d!2273099))

(declare-fun b!7319771 () Bool)

(declare-fun e!4382482 () Bool)

(declare-fun tp!2078752 () Bool)

(assert (=> b!7319771 (= e!4382482 (and tp_is_empty!47823 tp!2078752))))

(assert (=> b!7319645 (= tp!2078729 e!4382482)))

(assert (= (and b!7319645 (is-Cons!71273 (t!385632 (t!385632 l1!805)))) b!7319771))

(declare-fun condSetEmpty!55226 () Bool)

(assert (=> setNonEmpty!55216 (= condSetEmpty!55226 (= setRest!55216 (as set.empty (Set A!965))))))

(declare-fun setRes!55226 () Bool)

(assert (=> setNonEmpty!55216 (= tp!2078734 setRes!55226)))

(declare-fun setIsEmpty!55226 () Bool)

(assert (=> setIsEmpty!55226 setRes!55226))

(declare-fun setNonEmpty!55226 () Bool)

(declare-fun tp!2078753 () Bool)

(assert (=> setNonEmpty!55226 (= setRes!55226 (and tp!2078753 tp_is_empty!47821))))

(declare-fun setElem!55226 () A!965)

(declare-fun setRest!55226 () (Set A!965))

(assert (=> setNonEmpty!55226 (= setRest!55216 (set.union (set.insert setElem!55226 (as set.empty (Set A!965))) setRest!55226))))

(assert (= (and setNonEmpty!55216 condSetEmpty!55226) setIsEmpty!55226))

(assert (= (and setNonEmpty!55216 (not condSetEmpty!55226)) setNonEmpty!55226))

(declare-fun b!7319772 () Bool)

(declare-fun e!4382483 () Bool)

(declare-fun tp!2078754 () Bool)

(assert (=> b!7319772 (= e!4382483 (and tp_is_empty!47823 tp!2078754))))

(assert (=> b!7319648 (= tp!2078730 e!4382483)))

(assert (= (and b!7319648 (is-Cons!71273 (t!385632 (t!385632 l2!794)))) b!7319772))

(declare-fun condSetEmpty!55227 () Bool)

(assert (=> setNonEmpty!55215 (= condSetEmpty!55227 (= setRest!55215 (as set.empty (Set A!965))))))

(declare-fun setRes!55227 () Bool)

(assert (=> setNonEmpty!55215 (= tp!2078733 setRes!55227)))

(declare-fun setIsEmpty!55227 () Bool)

(assert (=> setIsEmpty!55227 setRes!55227))

(declare-fun setNonEmpty!55227 () Bool)

(declare-fun tp!2078755 () Bool)

(assert (=> setNonEmpty!55227 (= setRes!55227 (and tp!2078755 tp_is_empty!47821))))

(declare-fun setElem!55227 () A!965)

(declare-fun setRest!55227 () (Set A!965))

(assert (=> setNonEmpty!55227 (= setRest!55215 (set.union (set.insert setElem!55227 (as set.empty (Set A!965))) setRest!55227))))

(assert (= (and setNonEmpty!55215 condSetEmpty!55227) setIsEmpty!55227))

(assert (= (and setNonEmpty!55215 (not condSetEmpty!55227)) setNonEmpty!55227))

(declare-fun b_lambda!282795 () Bool)

(assert (= b_lambda!282793 (or b!7319569 b_lambda!282795)))

(declare-fun bs!1915742 () Bool)

(declare-fun d!2273101 () Bool)

(assert (= bs!1915742 (and d!2273101 b!7319569)))

(assert (=> bs!1915742 (= (dynLambda!29182 lambda!452929 (h!77721 (t!385632 (t!385632 l1!805)))) (contains!20811 l2!794 (h!77721 (t!385632 (t!385632 l1!805)))))))

(declare-fun m!7984632 () Bool)

(assert (=> bs!1915742 m!7984632))

(assert (=> b!7319738 d!2273101))

(declare-fun b_lambda!282797 () Bool)

(assert (= b_lambda!282791 (or d!2272997 b_lambda!282797)))

(declare-fun bs!1915743 () Bool)

(declare-fun d!2273103 () Bool)

(assert (= bs!1915743 (and d!2273103 d!2272997)))

(assert (=> bs!1915743 (= (dynLambda!29182 lambda!452937 (h!77721 (t!385632 l1!805))) (contains!20811 l2!794 (h!77721 (t!385632 l1!805))))))

(assert (=> bs!1915743 m!7984476))

(assert (=> b!7319724 d!2273103))

(push 1)

(assert (not b!7319735))

(assert (not d!2273063))

(assert (not d!2273091))

(assert (not b!7319749))

(assert (not b!7319739))

(assert b_and!351527)

(assert (not b!7319772))

(assert (not d!2273059))

(assert (not b!7319726))

(assert (not b!7319765))

(assert (not bs!1915742))

(assert (not bs!1915743))

(assert (not b!7319721))

(assert (not setNonEmpty!55224))

(assert (not b_lambda!282779))

(assert (not b!7319748))

(assert (not d!2273087))

(assert (not b!7319711))

(assert (not b!7319768))

(assert (not d!2273075))

(assert (not b!7319737))

(assert (not b!7319741))

(assert (not b!7319729))

(assert (not b!7319725))

(assert tp_is_empty!47821)

(assert (not b!7319762))

(assert (not d!2273079))

(assert (not setNonEmpty!55223))

(assert (not d!2273047))

(assert (not b!7319761))

(assert (not bm!665861))

(assert (not b!7319771))

(assert (not b!7319755))

(assert (not d!2273073))

(assert (not b!7319754))

(assert (not b!7319730))

(assert (not b_lambda!282795))

(assert (not b_next!134909))

(assert (not b!7319720))

(assert (not b!7319732))

(assert (not b!7319717))

(assert (not setNonEmpty!55226))

(assert (not b!7319769))

(assert (not b_lambda!282797))

(assert (not b!7319759))

(assert (not setNonEmpty!55225))

(assert (not b!7319723))

(assert (not d!2273053))

(assert (not setNonEmpty!55227))

(assert (not d!2273099))

(assert (not b!7319743))

(assert (not b!7319763))

(assert (not d!2273057))

(assert (not b_lambda!282781))

(assert tp_is_empty!47823)

(assert (not b!7319764))

(assert (not b!7319758))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351527)

(assert (not b_next!134909))

(check-sat)

(pop 1)


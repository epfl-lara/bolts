; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711986 () Bool)

(assert start!711986)

(declare-fun b_free!133895 () Bool)

(declare-fun b_next!134685 () Bool)

(assert (=> start!711986 (= b_free!133895 (not b_next!134685))))

(declare-fun tp!2074921 () Bool)

(declare-fun b_and!351157 () Bool)

(assert (=> start!711986 (= tp!2074921 b_and!351157)))

(declare-fun b!7310828 () Bool)

(assert (=> b!7310828 true))

(declare-datatypes ((B!3443 0))(
  ( (B!3444 (val!28999 Int)) )
))
(declare-datatypes ((List!71123 0))(
  ( (Nil!70999) (Cons!70999 (h!77447 B!3443) (t!385219 List!71123)) )
))
(declare-fun lt!2600322 () List!71123)

(declare-fun lt!2600319 () List!71123)

(declare-fun lambda!451536 () Int)

(declare-fun lambda!451537 () Int)

(assert (=> b!7310828 (= (= lt!2600322 lt!2600319) (= lambda!451537 lambda!451536))))

(assert (=> b!7310828 true))

(declare-fun res!2953291 () Bool)

(declare-fun e!4375774 () Bool)

(assert (=> start!711986 (=> (not res!2953291) (not e!4375774))))

(declare-datatypes ((A!741 0))(
  ( (A!742 (val!29000 Int)) )
))
(declare-fun s!1428 () (Set A!741))

(declare-fun elmt!109 () A!741)

(assert (=> start!711986 (= res!2953291 (= s!1428 (set.insert elmt!109 (as set.empty (Set A!741)))))))

(assert (=> start!711986 e!4375774))

(declare-fun condSetEmpty!53762 () Bool)

(assert (=> start!711986 (= condSetEmpty!53762 (= s!1428 (as set.empty (Set A!741))))))

(declare-fun setRes!53762 () Bool)

(assert (=> start!711986 setRes!53762))

(declare-fun tp_is_empty!47277 () Bool)

(assert (=> start!711986 tp_is_empty!47277))

(assert (=> start!711986 tp!2074921))

(declare-fun lt!2600315 () (Set B!3443))

(declare-fun lt!2600314 () (Set B!3443))

(assert (=> b!7310828 (= e!4375774 (not (= lt!2600315 lt!2600314)))))

(declare-datatypes ((Unit!164410 0))(
  ( (Unit!164411) )
))
(declare-fun lt!2600318 () Unit!164410)

(declare-fun forallContainsSubset!37 (List!71123 List!71123) Unit!164410)

(assert (=> b!7310828 (= lt!2600318 (forallContainsSubset!37 lt!2600319 lt!2600322))))

(declare-fun lt!2600321 () Unit!164410)

(assert (=> b!7310828 (= lt!2600321 (forallContainsSubset!37 lt!2600322 lt!2600319))))

(declare-fun forall!17719 (List!71123 Int) Bool)

(assert (=> b!7310828 (forall!17719 lt!2600319 lambda!451537)))

(declare-fun lt!2600316 () Unit!164410)

(declare-fun f!864 () Int)

(declare-fun lemmaFlatMapOnSingletonSetList2!5 ((Set A!741) A!741 Int List!71123) Unit!164410)

(assert (=> b!7310828 (= lt!2600316 (lemmaFlatMapOnSingletonSetList2!5 s!1428 elmt!109 f!864 lt!2600319))))

(assert (=> b!7310828 (forall!17719 lt!2600322 lambda!451536)))

(declare-fun lt!2600323 () Unit!164410)

(declare-fun lemmaFlatMapOnSingletonSetList1!7 ((Set A!741) A!741 Int List!71123) Unit!164410)

(assert (=> b!7310828 (= lt!2600323 (lemmaFlatMapOnSingletonSetList1!7 s!1428 elmt!109 f!864 lt!2600322))))

(declare-fun subseq!782 (List!71123 List!71123) Bool)

(assert (=> b!7310828 (subseq!782 lt!2600319 lt!2600319)))

(declare-fun lt!2600317 () Unit!164410)

(declare-fun lemmaSubseqRefl!188 (List!71123) Unit!164410)

(assert (=> b!7310828 (= lt!2600317 (lemmaSubseqRefl!188 lt!2600319))))

(declare-fun toList!11532 ((Set B!3443)) List!71123)

(assert (=> b!7310828 (= lt!2600319 (toList!11532 lt!2600314))))

(declare-fun dynLambda!29037 (Int A!741) (Set B!3443))

(assert (=> b!7310828 (= lt!2600314 (dynLambda!29037 f!864 elmt!109))))

(assert (=> b!7310828 (subseq!782 lt!2600322 lt!2600322)))

(declare-fun lt!2600320 () Unit!164410)

(assert (=> b!7310828 (= lt!2600320 (lemmaSubseqRefl!188 lt!2600322))))

(assert (=> b!7310828 (= lt!2600322 (toList!11532 lt!2600315))))

(declare-fun flatMap!2995 ((Set A!741) Int) (Set B!3443))

(assert (=> b!7310828 (= lt!2600315 (flatMap!2995 s!1428 f!864))))

(declare-fun setIsEmpty!53762 () Bool)

(assert (=> setIsEmpty!53762 setRes!53762))

(declare-fun setNonEmpty!53762 () Bool)

(declare-fun tp!2074920 () Bool)

(assert (=> setNonEmpty!53762 (= setRes!53762 (and tp!2074920 tp_is_empty!47277))))

(declare-fun setElem!53762 () A!741)

(declare-fun setRest!53762 () (Set A!741))

(assert (=> setNonEmpty!53762 (= s!1428 (set.union (set.insert setElem!53762 (as set.empty (Set A!741))) setRest!53762))))

(assert (= (and start!711986 res!2953291) b!7310828))

(assert (= (and start!711986 condSetEmpty!53762) setIsEmpty!53762))

(assert (= (and start!711986 (not condSetEmpty!53762)) setNonEmpty!53762))

(declare-fun b_lambda!282013 () Bool)

(assert (=> (not b_lambda!282013) (not b!7310828)))

(declare-fun t!385218 () Bool)

(declare-fun tb!262133 () Bool)

(assert (=> (and start!711986 (= f!864 f!864) t!385218) tb!262133))

(assert (=> b!7310828 t!385218))

(declare-fun result!352640 () Bool)

(declare-fun b_and!351159 () Bool)

(assert (= b_and!351157 (and (=> t!385218 result!352640) b_and!351159)))

(declare-fun m!7974940 () Bool)

(assert (=> start!711986 m!7974940))

(declare-fun m!7974942 () Bool)

(assert (=> b!7310828 m!7974942))

(declare-fun m!7974944 () Bool)

(assert (=> b!7310828 m!7974944))

(declare-fun m!7974946 () Bool)

(assert (=> b!7310828 m!7974946))

(declare-fun m!7974948 () Bool)

(assert (=> b!7310828 m!7974948))

(declare-fun m!7974950 () Bool)

(assert (=> b!7310828 m!7974950))

(declare-fun m!7974952 () Bool)

(assert (=> b!7310828 m!7974952))

(declare-fun m!7974954 () Bool)

(assert (=> b!7310828 m!7974954))

(declare-fun m!7974956 () Bool)

(assert (=> b!7310828 m!7974956))

(declare-fun m!7974958 () Bool)

(assert (=> b!7310828 m!7974958))

(declare-fun m!7974960 () Bool)

(assert (=> b!7310828 m!7974960))

(declare-fun m!7974962 () Bool)

(assert (=> b!7310828 m!7974962))

(declare-fun m!7974964 () Bool)

(assert (=> b!7310828 m!7974964))

(declare-fun m!7974966 () Bool)

(assert (=> b!7310828 m!7974966))

(declare-fun m!7974968 () Bool)

(assert (=> b!7310828 m!7974968))

(push 1)

(assert (not b_next!134685))

(assert tp_is_empty!47277)

(assert (not tb!262133))

(assert (not setNonEmpty!53762))

(assert (not b_lambda!282013))

(assert (not b!7310828))

(assert b_and!351159)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351159)

(assert (not b_next!134685))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!282017 () Bool)

(assert (= b_lambda!282013 (or (and start!711986 b_free!133895) b_lambda!282017)))

(push 1)

(assert (not b_next!134685))

(assert tp_is_empty!47277)

(assert (not tb!262133))

(assert (not setNonEmpty!53762))

(assert (not b!7310828))

(assert b_and!351159)

(assert (not b_lambda!282017))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351159)

(assert (not b_next!134685))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2269748 () Bool)

(assert (=> d!2269748 (subseq!782 lt!2600319 lt!2600319)))

(declare-fun lt!2600356 () Unit!164410)

(declare-fun choose!56607 (List!71123) Unit!164410)

(assert (=> d!2269748 (= lt!2600356 (choose!56607 lt!2600319))))

(assert (=> d!2269748 (= (lemmaSubseqRefl!188 lt!2600319) lt!2600356)))

(declare-fun bs!1914439 () Bool)

(assert (= bs!1914439 d!2269748))

(assert (=> bs!1914439 m!7974954))

(declare-fun m!7975000 () Bool)

(assert (=> bs!1914439 m!7975000))

(assert (=> b!7310828 d!2269748))

(declare-fun bs!1914440 () Bool)

(declare-fun d!2269750 () Bool)

(assert (= bs!1914440 (and d!2269750 b!7310828)))

(declare-fun lambda!451546 () Int)

(assert (=> bs!1914440 (= lambda!451546 lambda!451536)))

(assert (=> bs!1914440 (= (= lt!2600319 lt!2600322) (= lambda!451546 lambda!451537))))

(assert (=> d!2269750 true))

(declare-fun content!14839 (List!71123) (Set B!3443))

(assert (=> d!2269750 (set.subset (content!14839 lt!2600322) (content!14839 lt!2600319))))

(declare-fun lt!2600359 () Unit!164410)

(declare-fun choose!56608 (List!71123 List!71123) Unit!164410)

(assert (=> d!2269750 (= lt!2600359 (choose!56608 lt!2600322 lt!2600319))))

(assert (=> d!2269750 (forall!17719 lt!2600322 lambda!451546)))

(assert (=> d!2269750 (= (forallContainsSubset!37 lt!2600322 lt!2600319) lt!2600359)))

(declare-fun bs!1914441 () Bool)

(assert (= bs!1914441 d!2269750))

(declare-fun m!7975002 () Bool)

(assert (=> bs!1914441 m!7975002))

(declare-fun m!7975004 () Bool)

(assert (=> bs!1914441 m!7975004))

(declare-fun m!7975006 () Bool)

(assert (=> bs!1914441 m!7975006))

(declare-fun m!7975008 () Bool)

(assert (=> bs!1914441 m!7975008))

(assert (=> b!7310828 d!2269750))

(declare-fun bs!1914442 () Bool)

(declare-fun d!2269752 () Bool)

(assert (= bs!1914442 (and d!2269752 b!7310828)))

(declare-fun lambda!451547 () Int)

(assert (=> bs!1914442 (= (= lt!2600322 lt!2600319) (= lambda!451547 lambda!451536))))

(assert (=> bs!1914442 (= lambda!451547 lambda!451537)))

(declare-fun bs!1914443 () Bool)

(assert (= bs!1914443 (and d!2269752 d!2269750)))

(assert (=> bs!1914443 (= (= lt!2600322 lt!2600319) (= lambda!451547 lambda!451546))))

(assert (=> d!2269752 true))

(assert (=> d!2269752 (set.subset (content!14839 lt!2600319) (content!14839 lt!2600322))))

(declare-fun lt!2600360 () Unit!164410)

(assert (=> d!2269752 (= lt!2600360 (choose!56608 lt!2600319 lt!2600322))))

(assert (=> d!2269752 (forall!17719 lt!2600319 lambda!451547)))

(assert (=> d!2269752 (= (forallContainsSubset!37 lt!2600319 lt!2600322) lt!2600360)))

(declare-fun bs!1914444 () Bool)

(assert (= bs!1914444 d!2269752))

(assert (=> bs!1914444 m!7975004))

(assert (=> bs!1914444 m!7975002))

(declare-fun m!7975010 () Bool)

(assert (=> bs!1914444 m!7975010))

(declare-fun m!7975012 () Bool)

(assert (=> bs!1914444 m!7975012))

(assert (=> b!7310828 d!2269752))

(declare-fun bs!1914445 () Bool)

(declare-fun d!2269754 () Bool)

(assert (= bs!1914445 (and d!2269754 b!7310828)))

(declare-fun lambda!451550 () Int)

(declare-fun lt!2600366 () List!71123)

(assert (=> bs!1914445 (= (= lt!2600366 lt!2600319) (= lambda!451550 lambda!451536))))

(assert (=> bs!1914445 (= (= lt!2600366 lt!2600322) (= lambda!451550 lambda!451537))))

(declare-fun bs!1914446 () Bool)

(assert (= bs!1914446 (and d!2269754 d!2269750)))

(assert (=> bs!1914446 (= (= lt!2600366 lt!2600319) (= lambda!451550 lambda!451546))))

(declare-fun bs!1914447 () Bool)

(assert (= bs!1914447 (and d!2269754 d!2269752)))

(assert (=> bs!1914447 (= (= lt!2600366 lt!2600322) (= lambda!451550 lambda!451547))))

(assert (=> d!2269754 true))

(assert (=> d!2269754 (forall!17719 lt!2600322 lambda!451550)))

(assert (=> d!2269754 (= lt!2600366 (toList!11532 (dynLambda!29037 f!864 elmt!109)))))

(declare-fun lt!2600365 () Unit!164410)

(declare-fun choose!56609 ((Set A!741) A!741 Int List!71123) Unit!164410)

(assert (=> d!2269754 (= lt!2600365 (choose!56609 s!1428 elmt!109 f!864 lt!2600322))))

(assert (=> d!2269754 (= s!1428 (set.insert elmt!109 (as set.empty (Set A!741))))))

(assert (=> d!2269754 (= (lemmaFlatMapOnSingletonSetList1!7 s!1428 elmt!109 f!864 lt!2600322) lt!2600365)))

(declare-fun b_lambda!282021 () Bool)

(assert (=> (not b_lambda!282021) (not d!2269754)))

(assert (=> d!2269754 t!385218))

(declare-fun b_and!351165 () Bool)

(assert (= b_and!351159 (and (=> t!385218 result!352640) b_and!351165)))

(declare-fun m!7975014 () Bool)

(assert (=> d!2269754 m!7975014))

(assert (=> d!2269754 m!7974942))

(assert (=> d!2269754 m!7974940))

(assert (=> d!2269754 m!7974942))

(declare-fun m!7975016 () Bool)

(assert (=> d!2269754 m!7975016))

(declare-fun m!7975018 () Bool)

(assert (=> d!2269754 m!7975018))

(assert (=> b!7310828 d!2269754))

(declare-fun d!2269756 () Bool)

(assert (=> d!2269756 (subseq!782 lt!2600322 lt!2600322)))

(declare-fun lt!2600367 () Unit!164410)

(assert (=> d!2269756 (= lt!2600367 (choose!56607 lt!2600322))))

(assert (=> d!2269756 (= (lemmaSubseqRefl!188 lt!2600322) lt!2600367)))

(declare-fun bs!1914448 () Bool)

(assert (= bs!1914448 d!2269756))

(assert (=> bs!1914448 m!7974956))

(declare-fun m!7975020 () Bool)

(assert (=> bs!1914448 m!7975020))

(assert (=> b!7310828 d!2269756))

(declare-fun d!2269758 () Bool)

(declare-fun res!2953299 () Bool)

(declare-fun e!4375782 () Bool)

(assert (=> d!2269758 (=> res!2953299 e!4375782)))

(assert (=> d!2269758 (= res!2953299 (is-Nil!70999 lt!2600319))))

(assert (=> d!2269758 (= (forall!17719 lt!2600319 lambda!451537) e!4375782)))

(declare-fun b!7310840 () Bool)

(declare-fun e!4375783 () Bool)

(assert (=> b!7310840 (= e!4375782 e!4375783)))

(declare-fun res!2953300 () Bool)

(assert (=> b!7310840 (=> (not res!2953300) (not e!4375783))))

(declare-fun dynLambda!29039 (Int B!3443) Bool)

(assert (=> b!7310840 (= res!2953300 (dynLambda!29039 lambda!451537 (h!77447 lt!2600319)))))

(declare-fun b!7310841 () Bool)

(assert (=> b!7310841 (= e!4375783 (forall!17719 (t!385219 lt!2600319) lambda!451537))))

(assert (= (and d!2269758 (not res!2953299)) b!7310840))

(assert (= (and b!7310840 res!2953300) b!7310841))

(declare-fun b_lambda!282023 () Bool)

(assert (=> (not b_lambda!282023) (not b!7310840)))

(declare-fun m!7975022 () Bool)

(assert (=> b!7310840 m!7975022))

(declare-fun m!7975024 () Bool)

(assert (=> b!7310841 m!7975024))

(assert (=> b!7310828 d!2269758))

(declare-fun b!7310851 () Bool)

(declare-fun e!4375795 () Bool)

(declare-fun e!4375793 () Bool)

(assert (=> b!7310851 (= e!4375795 e!4375793)))

(declare-fun res!2953309 () Bool)

(assert (=> b!7310851 (=> res!2953309 e!4375793)))

(declare-fun e!4375794 () Bool)

(assert (=> b!7310851 (= res!2953309 e!4375794)))

(declare-fun res!2953312 () Bool)

(assert (=> b!7310851 (=> (not res!2953312) (not e!4375794))))

(assert (=> b!7310851 (= res!2953312 (= (h!77447 lt!2600319) (h!77447 lt!2600319)))))

(declare-fun b!7310853 () Bool)

(assert (=> b!7310853 (= e!4375793 (subseq!782 lt!2600319 (t!385219 lt!2600319)))))

(declare-fun b!7310852 () Bool)

(assert (=> b!7310852 (= e!4375794 (subseq!782 (t!385219 lt!2600319) (t!385219 lt!2600319)))))

(declare-fun b!7310850 () Bool)

(declare-fun e!4375792 () Bool)

(assert (=> b!7310850 (= e!4375792 e!4375795)))

(declare-fun res!2953311 () Bool)

(assert (=> b!7310850 (=> (not res!2953311) (not e!4375795))))

(assert (=> b!7310850 (= res!2953311 (is-Cons!70999 lt!2600319))))

(declare-fun d!2269760 () Bool)

(declare-fun res!2953310 () Bool)

(assert (=> d!2269760 (=> res!2953310 e!4375792)))

(assert (=> d!2269760 (= res!2953310 (is-Nil!70999 lt!2600319))))

(assert (=> d!2269760 (= (subseq!782 lt!2600319 lt!2600319) e!4375792)))

(assert (= (and d!2269760 (not res!2953310)) b!7310850))

(assert (= (and b!7310850 res!2953311) b!7310851))

(assert (= (and b!7310851 res!2953312) b!7310852))

(assert (= (and b!7310851 (not res!2953309)) b!7310853))

(declare-fun m!7975026 () Bool)

(assert (=> b!7310853 m!7975026))

(declare-fun m!7975028 () Bool)

(assert (=> b!7310852 m!7975028))

(assert (=> b!7310828 d!2269760))

(declare-fun d!2269762 () Bool)

(declare-fun choose!56610 ((Set A!741) Int) (Set B!3443))

(assert (=> d!2269762 (= (flatMap!2995 s!1428 f!864) (choose!56610 s!1428 f!864))))

(declare-fun bs!1914449 () Bool)

(assert (= bs!1914449 d!2269762))

(declare-fun m!7975030 () Bool)

(assert (=> bs!1914449 m!7975030))

(assert (=> b!7310828 d!2269762))

(declare-fun d!2269764 () Bool)

(declare-fun res!2953313 () Bool)

(declare-fun e!4375796 () Bool)

(assert (=> d!2269764 (=> res!2953313 e!4375796)))

(assert (=> d!2269764 (= res!2953313 (is-Nil!70999 lt!2600322))))

(assert (=> d!2269764 (= (forall!17719 lt!2600322 lambda!451536) e!4375796)))

(declare-fun b!7310854 () Bool)

(declare-fun e!4375797 () Bool)

(assert (=> b!7310854 (= e!4375796 e!4375797)))

(declare-fun res!2953314 () Bool)

(assert (=> b!7310854 (=> (not res!2953314) (not e!4375797))))

(assert (=> b!7310854 (= res!2953314 (dynLambda!29039 lambda!451536 (h!77447 lt!2600322)))))

(declare-fun b!7310855 () Bool)

(assert (=> b!7310855 (= e!4375797 (forall!17719 (t!385219 lt!2600322) lambda!451536))))

(assert (= (and d!2269764 (not res!2953313)) b!7310854))

(assert (= (and b!7310854 res!2953314) b!7310855))

(declare-fun b_lambda!282025 () Bool)

(assert (=> (not b_lambda!282025) (not b!7310854)))

(declare-fun m!7975032 () Bool)

(assert (=> b!7310854 m!7975032))

(declare-fun m!7975034 () Bool)

(assert (=> b!7310855 m!7975034))

(assert (=> b!7310828 d!2269764))

(declare-fun bs!1914450 () Bool)

(declare-fun d!2269766 () Bool)

(assert (= bs!1914450 (and d!2269766 d!2269750)))

(declare-fun lt!2600373 () List!71123)

(declare-fun lambda!451553 () Int)

(assert (=> bs!1914450 (= (= lt!2600373 lt!2600319) (= lambda!451553 lambda!451546))))

(declare-fun bs!1914451 () Bool)

(assert (= bs!1914451 (and d!2269766 b!7310828)))

(assert (=> bs!1914451 (= (= lt!2600373 lt!2600322) (= lambda!451553 lambda!451537))))

(declare-fun bs!1914452 () Bool)

(assert (= bs!1914452 (and d!2269766 d!2269752)))

(assert (=> bs!1914452 (= (= lt!2600373 lt!2600322) (= lambda!451553 lambda!451547))))

(assert (=> bs!1914451 (= (= lt!2600373 lt!2600319) (= lambda!451553 lambda!451536))))

(declare-fun bs!1914453 () Bool)

(assert (= bs!1914453 (and d!2269766 d!2269754)))

(assert (=> bs!1914453 (= (= lt!2600373 lt!2600366) (= lambda!451553 lambda!451550))))

(assert (=> d!2269766 true))

(assert (=> d!2269766 (forall!17719 lt!2600319 lambda!451553)))

(assert (=> d!2269766 (= lt!2600373 (toList!11532 (flatMap!2995 s!1428 f!864)))))

(declare-fun lt!2600372 () Unit!164410)

(declare-fun choose!56611 ((Set A!741) A!741 Int List!71123) Unit!164410)

(assert (=> d!2269766 (= lt!2600372 (choose!56611 s!1428 elmt!109 f!864 lt!2600319))))

(assert (=> d!2269766 (= s!1428 (set.insert elmt!109 (as set.empty (Set A!741))))))

(assert (=> d!2269766 (= (lemmaFlatMapOnSingletonSetList2!5 s!1428 elmt!109 f!864 lt!2600319) lt!2600372)))

(declare-fun bs!1914454 () Bool)

(assert (= bs!1914454 d!2269766))

(declare-fun m!7975036 () Bool)

(assert (=> bs!1914454 m!7975036))

(assert (=> bs!1914454 m!7974950))

(declare-fun m!7975038 () Bool)

(assert (=> bs!1914454 m!7975038))

(assert (=> bs!1914454 m!7974950))

(declare-fun m!7975040 () Bool)

(assert (=> bs!1914454 m!7975040))

(assert (=> bs!1914454 m!7974940))

(assert (=> b!7310828 d!2269766))

(declare-fun d!2269768 () Bool)

(declare-fun e!4375800 () Bool)

(assert (=> d!2269768 e!4375800))

(declare-fun res!2953317 () Bool)

(assert (=> d!2269768 (=> (not res!2953317) (not e!4375800))))

(declare-fun lt!2600376 () List!71123)

(declare-fun noDuplicate!3019 (List!71123) Bool)

(assert (=> d!2269768 (= res!2953317 (noDuplicate!3019 lt!2600376))))

(declare-fun choose!56612 ((Set B!3443)) List!71123)

(assert (=> d!2269768 (= lt!2600376 (choose!56612 lt!2600315))))

(assert (=> d!2269768 (= (toList!11532 lt!2600315) lt!2600376)))

(declare-fun b!7310858 () Bool)

(assert (=> b!7310858 (= e!4375800 (= (content!14839 lt!2600376) lt!2600315))))

(assert (= (and d!2269768 res!2953317) b!7310858))

(declare-fun m!7975042 () Bool)

(assert (=> d!2269768 m!7975042))

(declare-fun m!7975044 () Bool)

(assert (=> d!2269768 m!7975044))

(declare-fun m!7975046 () Bool)

(assert (=> b!7310858 m!7975046))

(assert (=> b!7310828 d!2269768))

(declare-fun b!7310860 () Bool)

(declare-fun e!4375804 () Bool)

(declare-fun e!4375802 () Bool)

(assert (=> b!7310860 (= e!4375804 e!4375802)))

(declare-fun res!2953318 () Bool)

(assert (=> b!7310860 (=> res!2953318 e!4375802)))

(declare-fun e!4375803 () Bool)

(assert (=> b!7310860 (= res!2953318 e!4375803)))

(declare-fun res!2953321 () Bool)

(assert (=> b!7310860 (=> (not res!2953321) (not e!4375803))))

(assert (=> b!7310860 (= res!2953321 (= (h!77447 lt!2600322) (h!77447 lt!2600322)))))

(declare-fun b!7310862 () Bool)

(assert (=> b!7310862 (= e!4375802 (subseq!782 lt!2600322 (t!385219 lt!2600322)))))

(declare-fun b!7310861 () Bool)

(assert (=> b!7310861 (= e!4375803 (subseq!782 (t!385219 lt!2600322) (t!385219 lt!2600322)))))

(declare-fun b!7310859 () Bool)

(declare-fun e!4375801 () Bool)

(assert (=> b!7310859 (= e!4375801 e!4375804)))

(declare-fun res!2953320 () Bool)

(assert (=> b!7310859 (=> (not res!2953320) (not e!4375804))))

(assert (=> b!7310859 (= res!2953320 (is-Cons!70999 lt!2600322))))

(declare-fun d!2269772 () Bool)

(declare-fun res!2953319 () Bool)

(assert (=> d!2269772 (=> res!2953319 e!4375801)))

(assert (=> d!2269772 (= res!2953319 (is-Nil!70999 lt!2600322))))

(assert (=> d!2269772 (= (subseq!782 lt!2600322 lt!2600322) e!4375801)))

(assert (= (and d!2269772 (not res!2953319)) b!7310859))

(assert (= (and b!7310859 res!2953320) b!7310860))

(assert (= (and b!7310860 res!2953321) b!7310861))

(assert (= (and b!7310860 (not res!2953318)) b!7310862))

(declare-fun m!7975048 () Bool)

(assert (=> b!7310862 m!7975048))

(declare-fun m!7975050 () Bool)

(assert (=> b!7310861 m!7975050))

(assert (=> b!7310828 d!2269772))

(declare-fun d!2269774 () Bool)

(declare-fun e!4375805 () Bool)

(assert (=> d!2269774 e!4375805))

(declare-fun res!2953322 () Bool)

(assert (=> d!2269774 (=> (not res!2953322) (not e!4375805))))

(declare-fun lt!2600377 () List!71123)

(assert (=> d!2269774 (= res!2953322 (noDuplicate!3019 lt!2600377))))

(assert (=> d!2269774 (= lt!2600377 (choose!56612 lt!2600314))))

(assert (=> d!2269774 (= (toList!11532 lt!2600314) lt!2600377)))

(declare-fun b!7310863 () Bool)

(assert (=> b!7310863 (= e!4375805 (= (content!14839 lt!2600377) lt!2600314))))

(assert (= (and d!2269774 res!2953322) b!7310863))

(declare-fun m!7975052 () Bool)

(assert (=> d!2269774 m!7975052))

(declare-fun m!7975054 () Bool)

(assert (=> d!2269774 m!7975054))

(declare-fun m!7975056 () Bool)

(assert (=> b!7310863 m!7975056))

(assert (=> b!7310828 d!2269774))

(declare-fun condSetEmpty!53768 () Bool)

(assert (=> tb!262133 (= condSetEmpty!53768 (= (dynLambda!29037 f!864 elmt!109) (as set.empty (Set B!3443))))))

(declare-fun setRes!53768 () Bool)

(assert (=> tb!262133 (= result!352640 setRes!53768)))

(declare-fun setIsEmpty!53768 () Bool)

(assert (=> setIsEmpty!53768 setRes!53768))

(declare-fun setNonEmpty!53768 () Bool)

(declare-fun tp!2074930 () Bool)

(declare-fun tp_is_empty!47281 () Bool)

(assert (=> setNonEmpty!53768 (= setRes!53768 (and tp!2074930 tp_is_empty!47281))))

(declare-fun setElem!53768 () B!3443)

(declare-fun setRest!53768 () (Set B!3443))

(assert (=> setNonEmpty!53768 (= (dynLambda!29037 f!864 elmt!109) (set.union (set.insert setElem!53768 (as set.empty (Set B!3443))) setRest!53768))))

(assert (= (and tb!262133 condSetEmpty!53768) setIsEmpty!53768))

(assert (= (and tb!262133 (not condSetEmpty!53768)) setNonEmpty!53768))

(declare-fun condSetEmpty!53771 () Bool)

(assert (=> setNonEmpty!53762 (= condSetEmpty!53771 (= setRest!53762 (as set.empty (Set A!741))))))

(declare-fun setRes!53771 () Bool)

(assert (=> setNonEmpty!53762 (= tp!2074920 setRes!53771)))

(declare-fun setIsEmpty!53771 () Bool)

(assert (=> setIsEmpty!53771 setRes!53771))

(declare-fun setNonEmpty!53771 () Bool)

(declare-fun tp!2074933 () Bool)

(assert (=> setNonEmpty!53771 (= setRes!53771 (and tp!2074933 tp_is_empty!47277))))

(declare-fun setElem!53771 () A!741)

(declare-fun setRest!53771 () (Set A!741))

(assert (=> setNonEmpty!53771 (= setRest!53762 (set.union (set.insert setElem!53771 (as set.empty (Set A!741))) setRest!53771))))

(assert (= (and setNonEmpty!53762 condSetEmpty!53771) setIsEmpty!53771))

(assert (= (and setNonEmpty!53762 (not condSetEmpty!53771)) setNonEmpty!53771))

(declare-fun b_lambda!282027 () Bool)

(assert (= b_lambda!282021 (or (and start!711986 b_free!133895) b_lambda!282027)))

(declare-fun b_lambda!282029 () Bool)

(assert (= b_lambda!282023 (or b!7310828 b_lambda!282029)))

(declare-fun bs!1914455 () Bool)

(declare-fun d!2269776 () Bool)

(assert (= bs!1914455 (and d!2269776 b!7310828)))

(declare-fun contains!20755 (List!71123 B!3443) Bool)

(assert (=> bs!1914455 (= (dynLambda!29039 lambda!451537 (h!77447 lt!2600319)) (contains!20755 lt!2600322 (h!77447 lt!2600319)))))

(declare-fun m!7975058 () Bool)

(assert (=> bs!1914455 m!7975058))

(assert (=> b!7310840 d!2269776))

(declare-fun b_lambda!282031 () Bool)

(assert (= b_lambda!282025 (or b!7310828 b_lambda!282031)))

(declare-fun bs!1914456 () Bool)

(declare-fun d!2269778 () Bool)

(assert (= bs!1914456 (and d!2269778 b!7310828)))

(assert (=> bs!1914456 (= (dynLambda!29039 lambda!451536 (h!77447 lt!2600322)) (contains!20755 lt!2600319 (h!77447 lt!2600322)))))

(declare-fun m!7975060 () Bool)

(assert (=> bs!1914456 m!7975060))

(assert (=> b!7310854 d!2269778))

(push 1)

(assert (not b_next!134685))

(assert (not b_lambda!282027))

(assert (not b!7310852))

(assert b_and!351165)

(assert (not d!2269762))

(assert (not d!2269750))

(assert (not d!2269768))

(assert (not d!2269754))

(assert (not b!7310855))

(assert tp_is_empty!47281)

(assert (not b!7310863))

(assert (not setNonEmpty!53771))

(assert (not b!7310862))

(assert (not d!2269752))

(assert tp_is_empty!47277)

(assert (not b!7310853))

(assert (not b!7310841))

(assert (not d!2269748))

(assert (not setNonEmpty!53768))

(assert (not b!7310861))

(assert (not b!7310858))

(assert (not b_lambda!282031))

(assert (not b_lambda!282017))

(assert (not d!2269756))

(assert (not b_lambda!282029))

(assert (not d!2269774))

(assert (not d!2269766))

(assert (not bs!1914455))

(assert (not bs!1914456))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351165)

(assert (not b_next!134685))

(check-sat)

(pop 1)


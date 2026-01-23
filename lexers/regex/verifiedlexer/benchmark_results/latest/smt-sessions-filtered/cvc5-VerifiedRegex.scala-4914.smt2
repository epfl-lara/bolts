; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251310 () Bool)

(assert start!251310)

(declare-fun b!2592745 () Bool)

(assert (=> b!2592745 true))

(declare-fun b!2592744 () Bool)

(declare-fun e!1635723 () Bool)

(declare-fun tp_is_empty!13355 () Bool)

(declare-fun tp!822815 () Bool)

(assert (=> b!2592744 (= e!1635723 (and tp_is_empty!13355 tp!822815))))

(declare-fun e!1635729 () Bool)

(declare-fun e!1635726 () Bool)

(assert (=> b!2592745 (= e!1635729 e!1635726)))

(declare-fun res!1090534 () Bool)

(assert (=> b!2592745 (=> res!1090534 e!1635726)))

(declare-datatypes ((B!2075 0))(
  ( (B!2076 (val!9505 Int)) )
))
(declare-datatypes ((List!29938 0))(
  ( (Nil!29838) (Cons!29838 (h!35258 B!2075) (t!212951 List!29938)) )
))
(declare-fun l!3230 () List!29938)

(declare-fun lambda!96219 () Int)

(declare-fun exists!911 (List!29938 Int) Bool)

(assert (=> b!2592745 (= res!1090534 (not (exists!911 l!3230 lambda!96219)))))

(assert (=> b!2592745 (exists!911 l!3230 lambda!96219)))

(declare-datatypes ((Unit!43805 0))(
  ( (Unit!43806) )
))
(declare-fun lt!912337 () Unit!43805)

(declare-fun lt!912342 () List!29938)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!27 (List!29938 List!29938) Unit!43805)

(assert (=> b!2592745 (= lt!912337 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!27 l!3230 lt!912342))))

(declare-fun lt!912341 () Unit!43805)

(declare-fun subsetContains!61 (List!29938 List!29938) Unit!43805)

(assert (=> b!2592745 (= lt!912341 (subsetContains!61 lt!912342 l!3230))))

(declare-fun b!2592746 () Bool)

(declare-fun e!1635725 () Bool)

(declare-fun lt!912338 () B!2075)

(declare-fun contains!5388 (List!29938 B!2075) Bool)

(assert (=> b!2592746 (= e!1635725 (contains!5388 lt!912342 lt!912338))))

(declare-fun b!2592747 () Bool)

(declare-fun e!1635722 () Bool)

(assert (=> b!2592747 (= e!1635722 e!1635729)))

(declare-fun res!1090527 () Bool)

(assert (=> b!2592747 (=> res!1090527 e!1635729)))

(declare-fun lt!912340 () Int)

(declare-fun size!23145 (List!29938) Int)

(assert (=> b!2592747 (= res!1090527 (>= (size!23145 lt!912342) lt!912340))))

(declare-fun lt!912335 () (Set B!2075))

(declare-fun toList!1783 ((Set B!2075)) List!29938)

(assert (=> b!2592747 (= lt!912342 (toList!1783 lt!912335))))

(declare-fun b!2592748 () Bool)

(assert (=> b!2592748 (= e!1635726 e!1635725)))

(declare-fun res!1090528 () Bool)

(assert (=> b!2592748 (=> res!1090528 e!1635725)))

(assert (=> b!2592748 (= res!1090528 (not (contains!5388 l!3230 lt!912338)))))

(declare-fun getWitness!537 (List!29938 Int) B!2075)

(assert (=> b!2592748 (= lt!912338 (getWitness!537 l!3230 lambda!96219))))

(declare-fun b!2592749 () Bool)

(declare-fun res!1090532 () Bool)

(declare-fun e!1635727 () Bool)

(assert (=> b!2592749 (=> res!1090532 e!1635727)))

(assert (=> b!2592749 (= res!1090532 (contains!5388 (t!212951 l!3230) (h!35258 l!3230)))))

(declare-fun b!2592750 () Bool)

(declare-fun res!1090526 () Bool)

(assert (=> b!2592750 (=> res!1090526 e!1635727)))

(declare-fun lt!912336 () (Set B!2075))

(assert (=> b!2592750 (= res!1090526 (set.member (h!35258 l!3230) lt!912336))))

(declare-fun b!2592751 () Bool)

(declare-fun res!1090531 () Bool)

(declare-fun e!1635724 () Bool)

(assert (=> b!2592751 (=> (not res!1090531) (not e!1635724))))

(assert (=> b!2592751 (= res!1090531 (is-Cons!29838 l!3230))))

(declare-fun b!2592752 () Bool)

(declare-fun res!1090535 () Bool)

(assert (=> b!2592752 (=> res!1090535 e!1635729)))

(declare-fun content!4173 (List!29938) (Set B!2075))

(assert (=> b!2592752 (= res!1090535 (not (= lt!912335 (content!4173 l!3230))))))

(declare-fun b!2592753 () Bool)

(declare-fun e!1635728 () Bool)

(assert (=> b!2592753 (= e!1635728 e!1635722)))

(declare-fun res!1090533 () Bool)

(assert (=> b!2592753 (=> res!1090533 e!1635722)))

(assert (=> b!2592753 (= res!1090533 (not (= (content!4173 l!3230) lt!912335)))))

(assert (=> b!2592753 (= lt!912335 (set.union lt!912336 (set.insert (h!35258 l!3230) (as set.empty (Set B!2075)))))))

(declare-fun b!2592754 () Bool)

(assert (=> b!2592754 (= e!1635724 (not e!1635727))))

(declare-fun res!1090536 () Bool)

(assert (=> b!2592754 (=> res!1090536 e!1635727)))

(declare-fun lt!912343 () Int)

(assert (=> b!2592754 (= res!1090536 (>= lt!912343 (size!23145 l!3230)))))

(declare-fun lt!912339 () Int)

(assert (=> b!2592754 (= lt!912343 lt!912339)))

(assert (=> b!2592754 (= lt!912339 (size!23145 (t!212951 l!3230)))))

(assert (=> b!2592754 (= lt!912343 (size!23145 (toList!1783 lt!912336)))))

(assert (=> b!2592754 (= lt!912336 (content!4173 (t!212951 l!3230)))))

(declare-fun lt!912334 () Unit!43805)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!73 (List!29938) Unit!43805)

(assert (=> b!2592754 (= lt!912334 (lemmaNoDuplicateThenContentToListSameSize!73 (t!212951 l!3230)))))

(declare-fun res!1090529 () Bool)

(assert (=> start!251310 (=> (not res!1090529) (not e!1635724))))

(declare-fun noDuplicate!386 (List!29938) Bool)

(assert (=> start!251310 (= res!1090529 (noDuplicate!386 l!3230))))

(assert (=> start!251310 e!1635724))

(assert (=> start!251310 e!1635723))

(declare-fun b!2592755 () Bool)

(assert (=> b!2592755 (= e!1635727 e!1635728)))

(declare-fun res!1090530 () Bool)

(assert (=> b!2592755 (=> res!1090530 e!1635728)))

(assert (=> b!2592755 (= res!1090530 (not (= (size!23145 l!3230) lt!912340)))))

(assert (=> b!2592755 (= lt!912340 (+ 1 lt!912339))))

(assert (= (and start!251310 res!1090529) b!2592751))

(assert (= (and b!2592751 res!1090531) b!2592754))

(assert (= (and b!2592754 (not res!1090536)) b!2592750))

(assert (= (and b!2592750 (not res!1090526)) b!2592749))

(assert (= (and b!2592749 (not res!1090532)) b!2592755))

(assert (= (and b!2592755 (not res!1090530)) b!2592753))

(assert (= (and b!2592753 (not res!1090533)) b!2592747))

(assert (= (and b!2592747 (not res!1090527)) b!2592752))

(assert (= (and b!2592752 (not res!1090535)) b!2592745))

(assert (= (and b!2592745 (not res!1090534)) b!2592748))

(assert (= (and b!2592748 (not res!1090528)) b!2592746))

(assert (= (and start!251310 (is-Cons!29838 l!3230)) b!2592744))

(declare-fun m!2928785 () Bool)

(assert (=> b!2592745 m!2928785))

(assert (=> b!2592745 m!2928785))

(declare-fun m!2928787 () Bool)

(assert (=> b!2592745 m!2928787))

(declare-fun m!2928789 () Bool)

(assert (=> b!2592745 m!2928789))

(declare-fun m!2928791 () Bool)

(assert (=> b!2592749 m!2928791))

(declare-fun m!2928793 () Bool)

(assert (=> b!2592753 m!2928793))

(declare-fun m!2928795 () Bool)

(assert (=> b!2592753 m!2928795))

(declare-fun m!2928797 () Bool)

(assert (=> b!2592755 m!2928797))

(assert (=> b!2592752 m!2928793))

(declare-fun m!2928799 () Bool)

(assert (=> b!2592748 m!2928799))

(declare-fun m!2928801 () Bool)

(assert (=> b!2592748 m!2928801))

(declare-fun m!2928803 () Bool)

(assert (=> b!2592746 m!2928803))

(declare-fun m!2928805 () Bool)

(assert (=> start!251310 m!2928805))

(declare-fun m!2928807 () Bool)

(assert (=> b!2592750 m!2928807))

(declare-fun m!2928809 () Bool)

(assert (=> b!2592747 m!2928809))

(declare-fun m!2928811 () Bool)

(assert (=> b!2592747 m!2928811))

(assert (=> b!2592754 m!2928797))

(declare-fun m!2928813 () Bool)

(assert (=> b!2592754 m!2928813))

(declare-fun m!2928815 () Bool)

(assert (=> b!2592754 m!2928815))

(declare-fun m!2928817 () Bool)

(assert (=> b!2592754 m!2928817))

(assert (=> b!2592754 m!2928817))

(declare-fun m!2928819 () Bool)

(assert (=> b!2592754 m!2928819))

(declare-fun m!2928821 () Bool)

(assert (=> b!2592754 m!2928821))

(push 1)

(assert (not b!2592747))

(assert (not b!2592749))

(assert tp_is_empty!13355)

(assert (not b!2592752))

(assert (not b!2592746))

(assert (not b!2592748))

(assert (not b!2592745))

(assert (not b!2592744))

(assert (not b!2592753))

(assert (not start!251310))

(assert (not b!2592754))

(assert (not b!2592755))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!734495 () Bool)

(declare-fun lt!912376 () Bool)

(assert (=> d!734495 (= lt!912376 (set.member (h!35258 l!3230) (content!4173 (t!212951 l!3230))))))

(declare-fun e!1635764 () Bool)

(assert (=> d!734495 (= lt!912376 e!1635764)))

(declare-fun res!1090575 () Bool)

(assert (=> d!734495 (=> (not res!1090575) (not e!1635764))))

(assert (=> d!734495 (= res!1090575 (is-Cons!29838 (t!212951 l!3230)))))

(assert (=> d!734495 (= (contains!5388 (t!212951 l!3230) (h!35258 l!3230)) lt!912376)))

(declare-fun b!2592800 () Bool)

(declare-fun e!1635765 () Bool)

(assert (=> b!2592800 (= e!1635764 e!1635765)))

(declare-fun res!1090574 () Bool)

(assert (=> b!2592800 (=> res!1090574 e!1635765)))

(assert (=> b!2592800 (= res!1090574 (= (h!35258 (t!212951 l!3230)) (h!35258 l!3230)))))

(declare-fun b!2592801 () Bool)

(assert (=> b!2592801 (= e!1635765 (contains!5388 (t!212951 (t!212951 l!3230)) (h!35258 l!3230)))))

(assert (= (and d!734495 res!1090575) b!2592800))

(assert (= (and b!2592800 (not res!1090574)) b!2592801))

(assert (=> d!734495 m!2928821))

(declare-fun m!2928861 () Bool)

(assert (=> d!734495 m!2928861))

(declare-fun m!2928863 () Bool)

(assert (=> b!2592801 m!2928863))

(assert (=> b!2592749 d!734495))

(declare-fun d!734497 () Bool)

(declare-fun lt!912379 () Int)

(assert (=> d!734497 (>= lt!912379 0)))

(declare-fun e!1635768 () Int)

(assert (=> d!734497 (= lt!912379 e!1635768)))

(declare-fun c!417931 () Bool)

(assert (=> d!734497 (= c!417931 (is-Nil!29838 (t!212951 l!3230)))))

(assert (=> d!734497 (= (size!23145 (t!212951 l!3230)) lt!912379)))

(declare-fun b!2592806 () Bool)

(assert (=> b!2592806 (= e!1635768 0)))

(declare-fun b!2592807 () Bool)

(assert (=> b!2592807 (= e!1635768 (+ 1 (size!23145 (t!212951 (t!212951 l!3230)))))))

(assert (= (and d!734497 c!417931) b!2592806))

(assert (= (and d!734497 (not c!417931)) b!2592807))

(declare-fun m!2928865 () Bool)

(assert (=> b!2592807 m!2928865))

(assert (=> b!2592754 d!734497))

(declare-fun d!734499 () Bool)

(declare-fun c!417934 () Bool)

(assert (=> d!734499 (= c!417934 (is-Nil!29838 (t!212951 l!3230)))))

(declare-fun e!1635771 () (Set B!2075))

(assert (=> d!734499 (= (content!4173 (t!212951 l!3230)) e!1635771)))

(declare-fun b!2592812 () Bool)

(assert (=> b!2592812 (= e!1635771 (as set.empty (Set B!2075)))))

(declare-fun b!2592813 () Bool)

(assert (=> b!2592813 (= e!1635771 (set.union (set.insert (h!35258 (t!212951 l!3230)) (as set.empty (Set B!2075))) (content!4173 (t!212951 (t!212951 l!3230)))))))

(assert (= (and d!734499 c!417934) b!2592812))

(assert (= (and d!734499 (not c!417934)) b!2592813))

(declare-fun m!2928867 () Bool)

(assert (=> b!2592813 m!2928867))

(declare-fun m!2928869 () Bool)

(assert (=> b!2592813 m!2928869))

(assert (=> b!2592754 d!734499))

(declare-fun d!734501 () Bool)

(assert (=> d!734501 (= (size!23145 (toList!1783 (content!4173 (t!212951 l!3230)))) (size!23145 (t!212951 l!3230)))))

(declare-fun lt!912382 () Unit!43805)

(declare-fun choose!15339 (List!29938) Unit!43805)

(assert (=> d!734501 (= lt!912382 (choose!15339 (t!212951 l!3230)))))

(assert (=> d!734501 (noDuplicate!386 (t!212951 l!3230))))

(assert (=> d!734501 (= (lemmaNoDuplicateThenContentToListSameSize!73 (t!212951 l!3230)) lt!912382)))

(declare-fun bs!472391 () Bool)

(assert (= bs!472391 d!734501))

(declare-fun m!2928871 () Bool)

(assert (=> bs!472391 m!2928871))

(declare-fun m!2928873 () Bool)

(assert (=> bs!472391 m!2928873))

(declare-fun m!2928875 () Bool)

(assert (=> bs!472391 m!2928875))

(assert (=> bs!472391 m!2928821))

(assert (=> bs!472391 m!2928873))

(declare-fun m!2928877 () Bool)

(assert (=> bs!472391 m!2928877))

(assert (=> bs!472391 m!2928821))

(assert (=> bs!472391 m!2928813))

(assert (=> b!2592754 d!734501))

(declare-fun d!734503 () Bool)

(declare-fun lt!912383 () Int)

(assert (=> d!734503 (>= lt!912383 0)))

(declare-fun e!1635772 () Int)

(assert (=> d!734503 (= lt!912383 e!1635772)))

(declare-fun c!417935 () Bool)

(assert (=> d!734503 (= c!417935 (is-Nil!29838 (toList!1783 lt!912336)))))

(assert (=> d!734503 (= (size!23145 (toList!1783 lt!912336)) lt!912383)))

(declare-fun b!2592814 () Bool)

(assert (=> b!2592814 (= e!1635772 0)))

(declare-fun b!2592815 () Bool)

(assert (=> b!2592815 (= e!1635772 (+ 1 (size!23145 (t!212951 (toList!1783 lt!912336)))))))

(assert (= (and d!734503 c!417935) b!2592814))

(assert (= (and d!734503 (not c!417935)) b!2592815))

(declare-fun m!2928879 () Bool)

(assert (=> b!2592815 m!2928879))

(assert (=> b!2592754 d!734503))

(declare-fun d!734505 () Bool)

(declare-fun e!1635775 () Bool)

(assert (=> d!734505 e!1635775))

(declare-fun res!1090578 () Bool)

(assert (=> d!734505 (=> (not res!1090578) (not e!1635775))))

(declare-fun lt!912386 () List!29938)

(assert (=> d!734505 (= res!1090578 (noDuplicate!386 lt!912386))))

(declare-fun choose!15340 ((Set B!2075)) List!29938)

(assert (=> d!734505 (= lt!912386 (choose!15340 lt!912336))))

(assert (=> d!734505 (= (toList!1783 lt!912336) lt!912386)))

(declare-fun b!2592818 () Bool)

(assert (=> b!2592818 (= e!1635775 (= (content!4173 lt!912386) lt!912336))))

(assert (= (and d!734505 res!1090578) b!2592818))

(declare-fun m!2928881 () Bool)

(assert (=> d!734505 m!2928881))

(declare-fun m!2928883 () Bool)

(assert (=> d!734505 m!2928883))

(declare-fun m!2928885 () Bool)

(assert (=> b!2592818 m!2928885))

(assert (=> b!2592754 d!734505))

(declare-fun d!734507 () Bool)

(declare-fun lt!912387 () Int)

(assert (=> d!734507 (>= lt!912387 0)))

(declare-fun e!1635776 () Int)

(assert (=> d!734507 (= lt!912387 e!1635776)))

(declare-fun c!417936 () Bool)

(assert (=> d!734507 (= c!417936 (is-Nil!29838 l!3230))))

(assert (=> d!734507 (= (size!23145 l!3230) lt!912387)))

(declare-fun b!2592819 () Bool)

(assert (=> b!2592819 (= e!1635776 0)))

(declare-fun b!2592820 () Bool)

(assert (=> b!2592820 (= e!1635776 (+ 1 (size!23145 (t!212951 l!3230))))))

(assert (= (and d!734507 c!417936) b!2592819))

(assert (= (and d!734507 (not c!417936)) b!2592820))

(assert (=> b!2592820 m!2928813))

(assert (=> b!2592754 d!734507))

(declare-fun bs!472392 () Bool)

(declare-fun d!734509 () Bool)

(assert (= bs!472392 (and d!734509 b!2592745)))

(declare-fun lambda!96229 () Int)

(assert (=> bs!472392 (not (= lambda!96229 lambda!96219))))

(assert (=> d!734509 true))

(declare-fun order!15877 () Int)

(declare-fun dynLambda!12619 (Int Int) Int)

(assert (=> d!734509 (< (dynLambda!12619 order!15877 lambda!96219) (dynLambda!12619 order!15877 lambda!96229))))

(declare-fun forall!6085 (List!29938 Int) Bool)

(assert (=> d!734509 (= (exists!911 l!3230 lambda!96219) (not (forall!6085 l!3230 lambda!96229)))))

(declare-fun bs!472393 () Bool)

(assert (= bs!472393 d!734509))

(declare-fun m!2928887 () Bool)

(assert (=> bs!472393 m!2928887))

(assert (=> b!2592745 d!734509))

(declare-fun bs!472394 () Bool)

(declare-fun d!734513 () Bool)

(assert (= bs!472394 (and d!734513 b!2592745)))

(declare-fun lambda!96232 () Int)

(assert (=> bs!472394 (= lambda!96232 lambda!96219)))

(declare-fun bs!472395 () Bool)

(assert (= bs!472395 (and d!734513 d!734509)))

(assert (=> bs!472395 (not (= lambda!96232 lambda!96229))))

(assert (=> d!734513 true))

(assert (=> d!734513 (exists!911 l!3230 lambda!96232)))

(declare-fun lt!912390 () Unit!43805)

(declare-fun choose!15341 (List!29938 List!29938) Unit!43805)

(assert (=> d!734513 (= lt!912390 (choose!15341 l!3230 lt!912342))))

(assert (=> d!734513 (noDuplicate!386 l!3230)))

(assert (=> d!734513 (= (lemmaNoDuplicateSmallerListExistsElmtNotInOther!27 l!3230 lt!912342) lt!912390)))

(declare-fun bs!472396 () Bool)

(assert (= bs!472396 d!734513))

(declare-fun m!2928889 () Bool)

(assert (=> bs!472396 m!2928889))

(declare-fun m!2928891 () Bool)

(assert (=> bs!472396 m!2928891))

(assert (=> bs!472396 m!2928805))

(assert (=> b!2592745 d!734513))

(declare-fun bs!472397 () Bool)

(declare-fun d!734515 () Bool)

(assert (= bs!472397 (and d!734515 b!2592745)))

(declare-fun lambda!96235 () Int)

(assert (=> bs!472397 (not (= lambda!96235 lambda!96219))))

(declare-fun bs!472398 () Bool)

(assert (= bs!472398 (and d!734515 d!734509)))

(assert (=> bs!472398 (not (= lambda!96235 lambda!96229))))

(declare-fun bs!472399 () Bool)

(assert (= bs!472399 (and d!734515 d!734513)))

(assert (=> bs!472399 (not (= lambda!96235 lambda!96232))))

(assert (=> d!734515 true))

(assert (=> d!734515 (forall!6085 lt!912342 lambda!96235)))

(declare-fun lt!912393 () Unit!43805)

(declare-fun choose!15342 (List!29938 List!29938) Unit!43805)

(assert (=> d!734515 (= lt!912393 (choose!15342 lt!912342 l!3230))))

(assert (=> d!734515 (set.subset (content!4173 lt!912342) (content!4173 l!3230))))

(assert (=> d!734515 (= (subsetContains!61 lt!912342 l!3230) lt!912393)))

(declare-fun bs!472400 () Bool)

(assert (= bs!472400 d!734515))

(declare-fun m!2928893 () Bool)

(assert (=> bs!472400 m!2928893))

(declare-fun m!2928895 () Bool)

(assert (=> bs!472400 m!2928895))

(declare-fun m!2928897 () Bool)

(assert (=> bs!472400 m!2928897))

(assert (=> bs!472400 m!2928793))

(assert (=> b!2592745 d!734515))

(assert (=> b!2592755 d!734507))

(declare-fun d!734519 () Bool)

(declare-fun res!1090587 () Bool)

(declare-fun e!1635790 () Bool)

(assert (=> d!734519 (=> res!1090587 e!1635790)))

(assert (=> d!734519 (= res!1090587 (is-Nil!29838 l!3230))))

(assert (=> d!734519 (= (noDuplicate!386 l!3230) e!1635790)))

(declare-fun b!2592837 () Bool)

(declare-fun e!1635791 () Bool)

(assert (=> b!2592837 (= e!1635790 e!1635791)))

(declare-fun res!1090588 () Bool)

(assert (=> b!2592837 (=> (not res!1090588) (not e!1635791))))

(assert (=> b!2592837 (= res!1090588 (not (contains!5388 (t!212951 l!3230) (h!35258 l!3230))))))

(declare-fun b!2592838 () Bool)

(assert (=> b!2592838 (= e!1635791 (noDuplicate!386 (t!212951 l!3230)))))

(assert (= (and d!734519 (not res!1090587)) b!2592837))

(assert (= (and b!2592837 res!1090588) b!2592838))

(assert (=> b!2592837 m!2928791))

(assert (=> b!2592838 m!2928877))

(assert (=> start!251310 d!734519))

(declare-fun d!734521 () Bool)

(declare-fun c!417940 () Bool)

(assert (=> d!734521 (= c!417940 (is-Nil!29838 l!3230))))

(declare-fun e!1635792 () (Set B!2075))

(assert (=> d!734521 (= (content!4173 l!3230) e!1635792)))

(declare-fun b!2592839 () Bool)

(assert (=> b!2592839 (= e!1635792 (as set.empty (Set B!2075)))))

(declare-fun b!2592840 () Bool)

(assert (=> b!2592840 (= e!1635792 (set.union (set.insert (h!35258 l!3230) (as set.empty (Set B!2075))) (content!4173 (t!212951 l!3230))))))

(assert (= (and d!734521 c!417940) b!2592839))

(assert (= (and d!734521 (not c!417940)) b!2592840))

(assert (=> b!2592840 m!2928795))

(assert (=> b!2592840 m!2928821))

(assert (=> b!2592752 d!734521))

(declare-fun d!734523 () Bool)

(declare-fun lt!912396 () Bool)

(assert (=> d!734523 (= lt!912396 (set.member lt!912338 (content!4173 lt!912342)))))

(declare-fun e!1635793 () Bool)

(assert (=> d!734523 (= lt!912396 e!1635793)))

(declare-fun res!1090590 () Bool)

(assert (=> d!734523 (=> (not res!1090590) (not e!1635793))))

(assert (=> d!734523 (= res!1090590 (is-Cons!29838 lt!912342))))

(assert (=> d!734523 (= (contains!5388 lt!912342 lt!912338) lt!912396)))

(declare-fun b!2592841 () Bool)

(declare-fun e!1635794 () Bool)

(assert (=> b!2592841 (= e!1635793 e!1635794)))

(declare-fun res!1090589 () Bool)

(assert (=> b!2592841 (=> res!1090589 e!1635794)))

(assert (=> b!2592841 (= res!1090589 (= (h!35258 lt!912342) lt!912338))))

(declare-fun b!2592842 () Bool)

(assert (=> b!2592842 (= e!1635794 (contains!5388 (t!212951 lt!912342) lt!912338))))

(assert (= (and d!734523 res!1090590) b!2592841))

(assert (= (and b!2592841 (not res!1090589)) b!2592842))

(assert (=> d!734523 m!2928897))

(declare-fun m!2928899 () Bool)

(assert (=> d!734523 m!2928899))

(declare-fun m!2928901 () Bool)

(assert (=> b!2592842 m!2928901))

(assert (=> b!2592746 d!734523))

(assert (=> b!2592753 d!734521))

(declare-fun d!734525 () Bool)

(declare-fun lt!912397 () Bool)

(assert (=> d!734525 (= lt!912397 (set.member lt!912338 (content!4173 l!3230)))))

(declare-fun e!1635795 () Bool)

(assert (=> d!734525 (= lt!912397 e!1635795)))

(declare-fun res!1090592 () Bool)

(assert (=> d!734525 (=> (not res!1090592) (not e!1635795))))

(assert (=> d!734525 (= res!1090592 (is-Cons!29838 l!3230))))

(assert (=> d!734525 (= (contains!5388 l!3230 lt!912338) lt!912397)))

(declare-fun b!2592843 () Bool)

(declare-fun e!1635796 () Bool)

(assert (=> b!2592843 (= e!1635795 e!1635796)))

(declare-fun res!1090591 () Bool)

(assert (=> b!2592843 (=> res!1090591 e!1635796)))

(assert (=> b!2592843 (= res!1090591 (= (h!35258 l!3230) lt!912338))))

(declare-fun b!2592844 () Bool)

(assert (=> b!2592844 (= e!1635796 (contains!5388 (t!212951 l!3230) lt!912338))))

(assert (= (and d!734525 res!1090592) b!2592843))

(assert (= (and b!2592843 (not res!1090591)) b!2592844))

(assert (=> d!734525 m!2928793))

(declare-fun m!2928903 () Bool)

(assert (=> d!734525 m!2928903))

(declare-fun m!2928905 () Bool)

(assert (=> b!2592844 m!2928905))

(assert (=> b!2592748 d!734525))

(declare-fun b!2592859 () Bool)

(declare-fun e!1635807 () B!2075)

(assert (=> b!2592859 (= e!1635807 (h!35258 l!3230))))

(declare-fun d!734527 () Bool)

(declare-fun e!1635808 () Bool)

(assert (=> d!734527 e!1635808))

(declare-fun res!1090599 () Bool)

(assert (=> d!734527 (=> (not res!1090599) (not e!1635808))))

(declare-fun lt!912404 () B!2075)

(declare-fun dynLambda!12620 (Int B!2075) Bool)

(assert (=> d!734527 (= res!1090599 (dynLambda!12620 lambda!96219 lt!912404))))

(assert (=> d!734527 (= lt!912404 e!1635807)))

(declare-fun c!417946 () Bool)

(declare-fun e!1635810 () Bool)

(assert (=> d!734527 (= c!417946 e!1635810)))

(declare-fun res!1090600 () Bool)

(assert (=> d!734527 (=> (not res!1090600) (not e!1635810))))

(assert (=> d!734527 (= res!1090600 (is-Cons!29838 l!3230))))

(assert (=> d!734527 (exists!911 l!3230 lambda!96219)))

(assert (=> d!734527 (= (getWitness!537 l!3230 lambda!96219) lt!912404)))

(declare-fun b!2592860 () Bool)

(declare-fun e!1635809 () B!2075)

(assert (=> b!2592860 (= e!1635807 e!1635809)))

(declare-fun c!417945 () Bool)

(assert (=> b!2592860 (= c!417945 (is-Cons!29838 l!3230))))

(declare-fun b!2592861 () Bool)

(assert (=> b!2592861 (= e!1635810 (dynLambda!12620 lambda!96219 (h!35258 l!3230)))))

(declare-fun b!2592862 () Bool)

(assert (=> b!2592862 (= e!1635808 (contains!5388 l!3230 lt!912404))))

(declare-fun b!2592863 () Bool)

(declare-fun lt!912403 () Unit!43805)

(declare-fun Unit!43809 () Unit!43805)

(assert (=> b!2592863 (= lt!912403 Unit!43809)))

(assert (=> b!2592863 false))

(declare-fun head!5872 (List!29938) B!2075)

(assert (=> b!2592863 (= e!1635809 (head!5872 l!3230))))

(declare-fun b!2592864 () Bool)

(assert (=> b!2592864 (= e!1635809 (getWitness!537 (t!212951 l!3230) lambda!96219))))

(assert (= (and d!734527 res!1090600) b!2592861))

(assert (= (and d!734527 c!417946) b!2592859))

(assert (= (and d!734527 (not c!417946)) b!2592860))

(assert (= (and b!2592860 c!417945) b!2592864))

(assert (= (and b!2592860 (not c!417945)) b!2592863))

(assert (= (and d!734527 res!1090599) b!2592862))

(declare-fun b_lambda!77203 () Bool)

(assert (=> (not b_lambda!77203) (not d!734527)))

(declare-fun b_lambda!77205 () Bool)

(assert (=> (not b_lambda!77205) (not b!2592861)))

(declare-fun m!2928911 () Bool)

(assert (=> b!2592861 m!2928911))

(declare-fun m!2928913 () Bool)

(assert (=> b!2592863 m!2928913))

(declare-fun m!2928915 () Bool)

(assert (=> b!2592864 m!2928915))

(declare-fun m!2928917 () Bool)

(assert (=> d!734527 m!2928917))

(assert (=> d!734527 m!2928785))

(declare-fun m!2928919 () Bool)

(assert (=> b!2592862 m!2928919))

(assert (=> b!2592748 d!734527))

(declare-fun d!734531 () Bool)

(declare-fun lt!912405 () Int)

(assert (=> d!734531 (>= lt!912405 0)))

(declare-fun e!1635811 () Int)

(assert (=> d!734531 (= lt!912405 e!1635811)))

(declare-fun c!417947 () Bool)

(assert (=> d!734531 (= c!417947 (is-Nil!29838 lt!912342))))

(assert (=> d!734531 (= (size!23145 lt!912342) lt!912405)))

(declare-fun b!2592865 () Bool)

(assert (=> b!2592865 (= e!1635811 0)))

(declare-fun b!2592866 () Bool)

(assert (=> b!2592866 (= e!1635811 (+ 1 (size!23145 (t!212951 lt!912342))))))

(assert (= (and d!734531 c!417947) b!2592865))

(assert (= (and d!734531 (not c!417947)) b!2592866))

(declare-fun m!2928921 () Bool)

(assert (=> b!2592866 m!2928921))

(assert (=> b!2592747 d!734531))

(declare-fun d!734533 () Bool)

(declare-fun e!1635812 () Bool)

(assert (=> d!734533 e!1635812))

(declare-fun res!1090601 () Bool)

(assert (=> d!734533 (=> (not res!1090601) (not e!1635812))))

(declare-fun lt!912406 () List!29938)

(assert (=> d!734533 (= res!1090601 (noDuplicate!386 lt!912406))))

(assert (=> d!734533 (= lt!912406 (choose!15340 lt!912335))))

(assert (=> d!734533 (= (toList!1783 lt!912335) lt!912406)))

(declare-fun b!2592867 () Bool)

(assert (=> b!2592867 (= e!1635812 (= (content!4173 lt!912406) lt!912335))))

(assert (= (and d!734533 res!1090601) b!2592867))

(declare-fun m!2928923 () Bool)

(assert (=> d!734533 m!2928923))

(declare-fun m!2928925 () Bool)

(assert (=> d!734533 m!2928925))

(declare-fun m!2928927 () Bool)

(assert (=> b!2592867 m!2928927))

(assert (=> b!2592747 d!734533))

(declare-fun b!2592872 () Bool)

(declare-fun e!1635815 () Bool)

(declare-fun tp!822821 () Bool)

(assert (=> b!2592872 (= e!1635815 (and tp_is_empty!13355 tp!822821))))

(assert (=> b!2592744 (= tp!822815 e!1635815)))

(assert (= (and b!2592744 (is-Cons!29838 (t!212951 l!3230))) b!2592872))

(declare-fun b_lambda!77207 () Bool)

(assert (= b_lambda!77203 (or b!2592745 b_lambda!77207)))

(declare-fun bs!472401 () Bool)

(declare-fun d!734535 () Bool)

(assert (= bs!472401 (and d!734535 b!2592745)))

(assert (=> bs!472401 (= (dynLambda!12620 lambda!96219 lt!912404) (not (contains!5388 lt!912342 lt!912404)))))

(declare-fun m!2928929 () Bool)

(assert (=> bs!472401 m!2928929))

(assert (=> d!734527 d!734535))

(declare-fun b_lambda!77209 () Bool)

(assert (= b_lambda!77205 (or b!2592745 b_lambda!77209)))

(declare-fun bs!472402 () Bool)

(declare-fun d!734537 () Bool)

(assert (= bs!472402 (and d!734537 b!2592745)))

(assert (=> bs!472402 (= (dynLambda!12620 lambda!96219 (h!35258 l!3230)) (not (contains!5388 lt!912342 (h!35258 l!3230))))))

(declare-fun m!2928931 () Bool)

(assert (=> bs!472402 m!2928931))

(assert (=> b!2592861 d!734537))

(push 1)

(assert (not d!734523))

(assert (not d!734515))

(assert (not d!734495))

(assert (not d!734533))

(assert tp_is_empty!13355)

(assert (not bs!472401))

(assert (not b!2592818))

(assert (not b!2592867))

(assert (not b!2592864))

(assert (not d!734525))

(assert (not b!2592807))

(assert (not d!734509))

(assert (not b!2592862))

(assert (not b!2592872))

(assert (not d!734501))

(assert (not b!2592838))

(assert (not d!734527))

(assert (not b!2592837))

(assert (not b!2592820))

(assert (not b_lambda!77209))

(assert (not b!2592844))

(assert (not b!2592813))

(assert (not b!2592866))

(assert (not b!2592842))

(assert (not b!2592801))

(assert (not b!2592815))

(assert (not bs!472402))

(assert (not b!2592840))

(assert (not d!734513))

(assert (not d!734505))

(assert (not b!2592863))

(assert (not b_lambda!77207))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


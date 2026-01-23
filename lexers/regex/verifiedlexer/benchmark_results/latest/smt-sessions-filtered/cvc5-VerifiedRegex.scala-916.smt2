; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!47290 () Bool)

(assert start!47290)

(assert (=> start!47290 true))

(declare-fun b!518904 () Bool)

(declare-fun e!310767 () Bool)

(declare-fun e!310763 () Bool)

(assert (=> b!518904 (= e!310767 e!310763)))

(declare-fun res!220173 () Bool)

(assert (=> b!518904 (=> (not res!220173) (not e!310763))))

(declare-datatypes ((B!1107 0))(
  ( (B!1108 (val!1841 Int)) )
))
(declare-datatypes ((List!4781 0))(
  ( (Nil!4771) (Cons!4771 (h!10172 B!1107) (t!73371 List!4781)) )
))
(declare-fun lIn!3 () List!4781)

(declare-fun lt!216313 () (Set B!1107))

(declare-fun content!856 (List!4781) (Set B!1107))

(assert (=> b!518904 (= res!220173 (set.subset (content!856 lIn!3) lt!216313))))

(declare-fun l!3695 () List!4781)

(assert (=> b!518904 (= lt!216313 (content!856 l!3695))))

(declare-datatypes ((Unit!8746 0))(
  ( (Unit!8747) )
))
(declare-fun lt!216314 () Unit!8746)

(declare-fun forallContainsSubset!17 (List!4781 List!4781) Unit!8746)

(assert (=> b!518904 (= lt!216314 (forallContainsSubset!17 lIn!3 l!3695))))

(declare-fun b!518905 () Bool)

(declare-fun res!220175 () Bool)

(assert (=> b!518905 (=> (not res!220175) (not e!310767))))

(assert (=> b!518905 (= res!220175 (is-Cons!4771 lIn!3))))

(declare-fun b!518906 () Bool)

(declare-fun e!310764 () Bool)

(declare-fun tp_is_empty!2703 () Bool)

(declare-fun tp!161715 () Bool)

(assert (=> b!518906 (= e!310764 (and tp_is_empty!2703 tp!161715))))

(declare-fun b!518907 () Bool)

(declare-fun e!310765 () Bool)

(declare-fun tp!161714 () Bool)

(assert (=> b!518907 (= e!310765 (and tp_is_empty!2703 tp!161714))))

(declare-fun b!518908 () Bool)

(declare-fun res!220174 () Bool)

(assert (=> b!518908 (=> (not res!220174) (not e!310767))))

(declare-fun noDuplicate!132 (List!4781) Bool)

(assert (=> b!518908 (= res!220174 (noDuplicate!132 lIn!3))))

(declare-fun res!220171 () Bool)

(assert (=> start!47290 (=> (not res!220171) (not e!310767))))

(declare-fun lambda!14766 () Int)

(declare-fun forall!1440 (List!4781 Int) Bool)

(assert (=> start!47290 (= res!220171 (forall!1440 lIn!3 lambda!14766))))

(assert (=> start!47290 e!310767))

(assert (=> start!47290 e!310765))

(assert (=> start!47290 e!310764))

(declare-fun b!518909 () Bool)

(declare-fun e!310766 () Bool)

(declare-fun lt!216311 () Int)

(declare-fun size!3894 (List!4781) Int)

(assert (=> b!518909 (= e!310766 (not (= (+ 1 lt!216311) (size!3894 lIn!3))))))

(declare-fun lt!216315 () List!4781)

(assert (=> b!518909 (<= lt!216311 (size!3894 lt!216315))))

(assert (=> b!518909 (= lt!216311 (size!3894 (t!73371 lIn!3)))))

(declare-fun lt!216310 () Unit!8746)

(declare-fun lemmaForallContainsAndNoDuplicateThenSmallerList!5 (List!4781 List!4781) Unit!8746)

(assert (=> b!518909 (= lt!216310 (lemmaForallContainsAndNoDuplicateThenSmallerList!5 lt!216315 (t!73371 lIn!3)))))

(declare-fun lt!216312 () Unit!8746)

(declare-fun subsetContains!9 (List!4781 List!4781) Unit!8746)

(assert (=> b!518909 (= lt!216312 (subsetContains!9 (t!73371 lIn!3) lt!216315))))

(declare-fun b!518910 () Bool)

(declare-fun res!220172 () Bool)

(assert (=> b!518910 (=> (not res!220172) (not e!310763))))

(declare-fun contains!1131 (List!4781 B!1107) Bool)

(assert (=> b!518910 (= res!220172 (not (contains!1131 (t!73371 lIn!3) (h!10172 lIn!3))))))

(declare-fun b!518911 () Bool)

(assert (=> b!518911 (= e!310763 e!310766)))

(declare-fun res!220176 () Bool)

(assert (=> b!518911 (=> (not res!220176) (not e!310766))))

(assert (=> b!518911 (= res!220176 (= (content!856 lt!216315) (set.minus lt!216313 (set.insert (h!10172 lIn!3) (as set.empty (Set B!1107))))))))

(declare-fun -!59 (List!4781 B!1107) List!4781)

(assert (=> b!518911 (= lt!216315 (-!59 l!3695 (h!10172 lIn!3)))))

(assert (= (and start!47290 res!220171) b!518908))

(assert (= (and b!518908 res!220174) b!518905))

(assert (= (and b!518905 res!220175) b!518904))

(assert (= (and b!518904 res!220173) b!518910))

(assert (= (and b!518910 res!220172) b!518911))

(assert (= (and b!518911 res!220176) b!518909))

(assert (= (and start!47290 (is-Cons!4771 lIn!3)) b!518907))

(assert (= (and start!47290 (is-Cons!4771 l!3695)) b!518906))

(declare-fun m!765783 () Bool)

(assert (=> b!518909 m!765783))

(declare-fun m!765785 () Bool)

(assert (=> b!518909 m!765785))

(declare-fun m!765787 () Bool)

(assert (=> b!518909 m!765787))

(declare-fun m!765789 () Bool)

(assert (=> b!518909 m!765789))

(declare-fun m!765791 () Bool)

(assert (=> b!518909 m!765791))

(declare-fun m!765793 () Bool)

(assert (=> b!518911 m!765793))

(declare-fun m!765795 () Bool)

(assert (=> b!518911 m!765795))

(declare-fun m!765797 () Bool)

(assert (=> b!518911 m!765797))

(declare-fun m!765799 () Bool)

(assert (=> b!518910 m!765799))

(declare-fun m!765801 () Bool)

(assert (=> start!47290 m!765801))

(declare-fun m!765803 () Bool)

(assert (=> b!518908 m!765803))

(declare-fun m!765805 () Bool)

(assert (=> b!518904 m!765805))

(declare-fun m!765807 () Bool)

(assert (=> b!518904 m!765807))

(declare-fun m!765809 () Bool)

(assert (=> b!518904 m!765809))

(push 1)

(assert (not b!518908))

(assert tp_is_empty!2703)

(assert (not b!518907))

(assert (not start!47290))

(assert (not b!518911))

(assert (not b!518906))

(assert (not b!518910))

(assert (not b!518909))

(assert (not b!518904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!185381 () Bool)

(declare-fun res!220199 () Bool)

(declare-fun e!310789 () Bool)

(assert (=> d!185381 (=> res!220199 e!310789)))

(assert (=> d!185381 (= res!220199 (is-Nil!4771 lIn!3))))

(assert (=> d!185381 (= (forall!1440 lIn!3 lambda!14766) e!310789)))

(declare-fun b!518944 () Bool)

(declare-fun e!310790 () Bool)

(assert (=> b!518944 (= e!310789 e!310790)))

(declare-fun res!220200 () Bool)

(assert (=> b!518944 (=> (not res!220200) (not e!310790))))

(declare-fun dynLambda!2996 (Int B!1107) Bool)

(assert (=> b!518944 (= res!220200 (dynLambda!2996 lambda!14766 (h!10172 lIn!3)))))

(declare-fun b!518945 () Bool)

(assert (=> b!518945 (= e!310790 (forall!1440 (t!73371 lIn!3) lambda!14766))))

(assert (= (and d!185381 (not res!220199)) b!518944))

(assert (= (and b!518944 res!220200) b!518945))

(declare-fun b_lambda!20213 () Bool)

(assert (=> (not b_lambda!20213) (not b!518944)))

(declare-fun m!765839 () Bool)

(assert (=> b!518944 m!765839))

(declare-fun m!765841 () Bool)

(assert (=> b!518945 m!765841))

(assert (=> start!47290 d!185381))

(declare-fun d!185383 () Bool)

(declare-fun lt!216336 () Bool)

(assert (=> d!185383 (= lt!216336 (set.member (h!10172 lIn!3) (content!856 (t!73371 lIn!3))))))

(declare-fun e!310796 () Bool)

(assert (=> d!185383 (= lt!216336 e!310796)))

(declare-fun res!220205 () Bool)

(assert (=> d!185383 (=> (not res!220205) (not e!310796))))

(assert (=> d!185383 (= res!220205 (is-Cons!4771 (t!73371 lIn!3)))))

(assert (=> d!185383 (= (contains!1131 (t!73371 lIn!3) (h!10172 lIn!3)) lt!216336)))

(declare-fun b!518950 () Bool)

(declare-fun e!310795 () Bool)

(assert (=> b!518950 (= e!310796 e!310795)))

(declare-fun res!220206 () Bool)

(assert (=> b!518950 (=> res!220206 e!310795)))

(assert (=> b!518950 (= res!220206 (= (h!10172 (t!73371 lIn!3)) (h!10172 lIn!3)))))

(declare-fun b!518951 () Bool)

(assert (=> b!518951 (= e!310795 (contains!1131 (t!73371 (t!73371 lIn!3)) (h!10172 lIn!3)))))

(assert (= (and d!185383 res!220205) b!518950))

(assert (= (and b!518950 (not res!220206)) b!518951))

(declare-fun m!765843 () Bool)

(assert (=> d!185383 m!765843))

(declare-fun m!765845 () Bool)

(assert (=> d!185383 m!765845))

(declare-fun m!765847 () Bool)

(assert (=> b!518951 m!765847))

(assert (=> b!518910 d!185383))

(declare-fun d!185385 () Bool)

(declare-fun lt!216339 () Int)

(assert (=> d!185385 (>= lt!216339 0)))

(declare-fun e!310799 () Int)

(assert (=> d!185385 (= lt!216339 e!310799)))

(declare-fun c!100394 () Bool)

(assert (=> d!185385 (= c!100394 (is-Nil!4771 lt!216315))))

(assert (=> d!185385 (= (size!3894 lt!216315) lt!216339)))

(declare-fun b!518956 () Bool)

(assert (=> b!518956 (= e!310799 0)))

(declare-fun b!518957 () Bool)

(assert (=> b!518957 (= e!310799 (+ 1 (size!3894 (t!73371 lt!216315))))))

(assert (= (and d!185385 c!100394) b!518956))

(assert (= (and d!185385 (not c!100394)) b!518957))

(declare-fun m!765849 () Bool)

(assert (=> b!518957 m!765849))

(assert (=> b!518909 d!185385))

(declare-fun bs!60370 () Bool)

(declare-fun d!185387 () Bool)

(assert (= bs!60370 (and d!185387 start!47290)))

(declare-fun lambda!14772 () Int)

(assert (=> bs!60370 (= (= lt!216315 l!3695) (= lambda!14772 lambda!14766))))

(assert (=> d!185387 true))

(assert (=> d!185387 (<= (size!3894 (t!73371 lIn!3)) (size!3894 lt!216315))))

(declare-fun lt!216342 () Unit!8746)

(declare-fun choose!3706 (List!4781 List!4781) Unit!8746)

(assert (=> d!185387 (= lt!216342 (choose!3706 lt!216315 (t!73371 lIn!3)))))

(assert (=> d!185387 (forall!1440 (t!73371 lIn!3) lambda!14772)))

(assert (=> d!185387 (= (lemmaForallContainsAndNoDuplicateThenSmallerList!5 lt!216315 (t!73371 lIn!3)) lt!216342)))

(declare-fun bs!60371 () Bool)

(assert (= bs!60371 d!185387))

(assert (=> bs!60371 m!765783))

(assert (=> bs!60371 m!765787))

(declare-fun m!765851 () Bool)

(assert (=> bs!60371 m!765851))

(declare-fun m!765853 () Bool)

(assert (=> bs!60371 m!765853))

(assert (=> b!518909 d!185387))

(declare-fun bs!60372 () Bool)

(declare-fun d!185389 () Bool)

(assert (= bs!60372 (and d!185389 start!47290)))

(declare-fun lambda!14775 () Int)

(assert (=> bs!60372 (= (= lt!216315 l!3695) (= lambda!14775 lambda!14766))))

(declare-fun bs!60373 () Bool)

(assert (= bs!60373 (and d!185389 d!185387)))

(assert (=> bs!60373 (= lambda!14775 lambda!14772)))

(assert (=> d!185389 true))

(assert (=> d!185389 (forall!1440 (t!73371 lIn!3) lambda!14775)))

(declare-fun lt!216345 () Unit!8746)

(declare-fun choose!3707 (List!4781 List!4781) Unit!8746)

(assert (=> d!185389 (= lt!216345 (choose!3707 (t!73371 lIn!3) lt!216315))))

(assert (=> d!185389 (set.subset (content!856 (t!73371 lIn!3)) (content!856 lt!216315))))

(assert (=> d!185389 (= (subsetContains!9 (t!73371 lIn!3) lt!216315) lt!216345)))

(declare-fun bs!60374 () Bool)

(assert (= bs!60374 d!185389))

(declare-fun m!765855 () Bool)

(assert (=> bs!60374 m!765855))

(declare-fun m!765857 () Bool)

(assert (=> bs!60374 m!765857))

(assert (=> bs!60374 m!765843))

(assert (=> bs!60374 m!765793))

(assert (=> b!518909 d!185389))

(declare-fun d!185393 () Bool)

(declare-fun lt!216346 () Int)

(assert (=> d!185393 (>= lt!216346 0)))

(declare-fun e!310804 () Int)

(assert (=> d!185393 (= lt!216346 e!310804)))

(declare-fun c!100397 () Bool)

(assert (=> d!185393 (= c!100397 (is-Nil!4771 (t!73371 lIn!3)))))

(assert (=> d!185393 (= (size!3894 (t!73371 lIn!3)) lt!216346)))

(declare-fun b!518962 () Bool)

(assert (=> b!518962 (= e!310804 0)))

(declare-fun b!518963 () Bool)

(assert (=> b!518963 (= e!310804 (+ 1 (size!3894 (t!73371 (t!73371 lIn!3)))))))

(assert (= (and d!185393 c!100397) b!518962))

(assert (= (and d!185393 (not c!100397)) b!518963))

(declare-fun m!765859 () Bool)

(assert (=> b!518963 m!765859))

(assert (=> b!518909 d!185393))

(declare-fun d!185395 () Bool)

(declare-fun lt!216347 () Int)

(assert (=> d!185395 (>= lt!216347 0)))

(declare-fun e!310805 () Int)

(assert (=> d!185395 (= lt!216347 e!310805)))

(declare-fun c!100398 () Bool)

(assert (=> d!185395 (= c!100398 (is-Nil!4771 lIn!3))))

(assert (=> d!185395 (= (size!3894 lIn!3) lt!216347)))

(declare-fun b!518964 () Bool)

(assert (=> b!518964 (= e!310805 0)))

(declare-fun b!518965 () Bool)

(assert (=> b!518965 (= e!310805 (+ 1 (size!3894 (t!73371 lIn!3))))))

(assert (= (and d!185395 c!100398) b!518964))

(assert (= (and d!185395 (not c!100398)) b!518965))

(assert (=> b!518965 m!765783))

(assert (=> b!518909 d!185395))

(declare-fun d!185397 () Bool)

(declare-fun c!100401 () Bool)

(assert (=> d!185397 (= c!100401 (is-Nil!4771 lIn!3))))

(declare-fun e!310808 () (Set B!1107))

(assert (=> d!185397 (= (content!856 lIn!3) e!310808)))

(declare-fun b!518970 () Bool)

(assert (=> b!518970 (= e!310808 (as set.empty (Set B!1107)))))

(declare-fun b!518971 () Bool)

(assert (=> b!518971 (= e!310808 (set.union (set.insert (h!10172 lIn!3) (as set.empty (Set B!1107))) (content!856 (t!73371 lIn!3))))))

(assert (= (and d!185397 c!100401) b!518970))

(assert (= (and d!185397 (not c!100401)) b!518971))

(assert (=> b!518971 m!765795))

(assert (=> b!518971 m!765843))

(assert (=> b!518904 d!185397))

(declare-fun d!185399 () Bool)

(declare-fun c!100402 () Bool)

(assert (=> d!185399 (= c!100402 (is-Nil!4771 l!3695))))

(declare-fun e!310809 () (Set B!1107))

(assert (=> d!185399 (= (content!856 l!3695) e!310809)))

(declare-fun b!518972 () Bool)

(assert (=> b!518972 (= e!310809 (as set.empty (Set B!1107)))))

(declare-fun b!518973 () Bool)

(assert (=> b!518973 (= e!310809 (set.union (set.insert (h!10172 l!3695) (as set.empty (Set B!1107))) (content!856 (t!73371 l!3695))))))

(assert (= (and d!185399 c!100402) b!518972))

(assert (= (and d!185399 (not c!100402)) b!518973))

(declare-fun m!765861 () Bool)

(assert (=> b!518973 m!765861))

(declare-fun m!765863 () Bool)

(assert (=> b!518973 m!765863))

(assert (=> b!518904 d!185399))

(declare-fun bs!60375 () Bool)

(declare-fun d!185401 () Bool)

(assert (= bs!60375 (and d!185401 start!47290)))

(declare-fun lambda!14778 () Int)

(assert (=> bs!60375 (= lambda!14778 lambda!14766)))

(declare-fun bs!60376 () Bool)

(assert (= bs!60376 (and d!185401 d!185387)))

(assert (=> bs!60376 (= (= l!3695 lt!216315) (= lambda!14778 lambda!14772))))

(declare-fun bs!60377 () Bool)

(assert (= bs!60377 (and d!185401 d!185389)))

(assert (=> bs!60377 (= (= l!3695 lt!216315) (= lambda!14778 lambda!14775))))

(assert (=> d!185401 true))

(assert (=> d!185401 (set.subset (content!856 lIn!3) (content!856 l!3695))))

(declare-fun lt!216350 () Unit!8746)

(declare-fun choose!3708 (List!4781 List!4781) Unit!8746)

(assert (=> d!185401 (= lt!216350 (choose!3708 lIn!3 l!3695))))

(assert (=> d!185401 (forall!1440 lIn!3 lambda!14778)))

(assert (=> d!185401 (= (forallContainsSubset!17 lIn!3 l!3695) lt!216350)))

(declare-fun bs!60378 () Bool)

(assert (= bs!60378 d!185401))

(assert (=> bs!60378 m!765805))

(assert (=> bs!60378 m!765807))

(declare-fun m!765869 () Bool)

(assert (=> bs!60378 m!765869))

(declare-fun m!765871 () Bool)

(assert (=> bs!60378 m!765871))

(assert (=> b!518904 d!185401))

(declare-fun d!185405 () Bool)

(declare-fun res!220211 () Bool)

(declare-fun e!310815 () Bool)

(assert (=> d!185405 (=> res!220211 e!310815)))

(assert (=> d!185405 (= res!220211 (is-Nil!4771 lIn!3))))

(assert (=> d!185405 (= (noDuplicate!132 lIn!3) e!310815)))

(declare-fun b!518980 () Bool)

(declare-fun e!310816 () Bool)

(assert (=> b!518980 (= e!310815 e!310816)))

(declare-fun res!220212 () Bool)

(assert (=> b!518980 (=> (not res!220212) (not e!310816))))

(assert (=> b!518980 (= res!220212 (not (contains!1131 (t!73371 lIn!3) (h!10172 lIn!3))))))

(declare-fun b!518981 () Bool)

(assert (=> b!518981 (= e!310816 (noDuplicate!132 (t!73371 lIn!3)))))

(assert (= (and d!185405 (not res!220211)) b!518980))

(assert (= (and b!518980 res!220212) b!518981))

(assert (=> b!518980 m!765799))

(declare-fun m!765873 () Bool)

(assert (=> b!518981 m!765873))

(assert (=> b!518908 d!185405))

(declare-fun d!185407 () Bool)

(declare-fun c!100404 () Bool)

(assert (=> d!185407 (= c!100404 (is-Nil!4771 lt!216315))))

(declare-fun e!310817 () (Set B!1107))

(assert (=> d!185407 (= (content!856 lt!216315) e!310817)))

(declare-fun b!518982 () Bool)

(assert (=> b!518982 (= e!310817 (as set.empty (Set B!1107)))))

(declare-fun b!518983 () Bool)

(assert (=> b!518983 (= e!310817 (set.union (set.insert (h!10172 lt!216315) (as set.empty (Set B!1107))) (content!856 (t!73371 lt!216315))))))

(assert (= (and d!185407 c!100404) b!518982))

(assert (= (and d!185407 (not c!100404)) b!518983))

(declare-fun m!765875 () Bool)

(assert (=> b!518983 m!765875))

(declare-fun m!765877 () Bool)

(assert (=> b!518983 m!765877))

(assert (=> b!518911 d!185407))

(declare-fun b!519004 () Bool)

(declare-fun e!310832 () List!4781)

(assert (=> b!519004 (= e!310832 Nil!4771)))

(declare-fun b!519005 () Bool)

(declare-fun e!310834 () List!4781)

(declare-fun call!38005 () List!4781)

(assert (=> b!519005 (= e!310834 (Cons!4771 (h!10172 l!3695) call!38005))))

(declare-fun lt!216355 () List!4781)

(declare-fun e!310833 () Bool)

(declare-fun b!519006 () Bool)

(assert (=> b!519006 (= e!310833 (= (content!856 lt!216355) (set.minus (content!856 l!3695) (set.insert (h!10172 lIn!3) (as set.empty (Set B!1107))))))))

(declare-fun d!185409 () Bool)

(assert (=> d!185409 e!310833))

(declare-fun res!220217 () Bool)

(assert (=> d!185409 (=> (not res!220217) (not e!310833))))

(assert (=> d!185409 (= res!220217 (<= (size!3894 lt!216355) (size!3894 l!3695)))))

(assert (=> d!185409 (= lt!216355 e!310832)))

(declare-fun c!100413 () Bool)

(assert (=> d!185409 (= c!100413 (is-Cons!4771 l!3695))))

(assert (=> d!185409 (= (-!59 l!3695 (h!10172 lIn!3)) lt!216355)))

(declare-fun b!519007 () Bool)

(assert (=> b!519007 (= e!310832 e!310834)))

(declare-fun c!100414 () Bool)

(assert (=> b!519007 (= c!100414 (= (h!10172 lIn!3) (h!10172 l!3695)))))

(declare-fun b!519008 () Bool)

(assert (=> b!519008 (= e!310834 call!38005)))

(declare-fun bm!38000 () Bool)

(assert (=> bm!38000 (= call!38005 (-!59 (t!73371 l!3695) (h!10172 lIn!3)))))

(assert (= (and d!185409 c!100413) b!519007))

(assert (= (and d!185409 (not c!100413)) b!519004))

(assert (= (and b!519007 c!100414) b!519008))

(assert (= (and b!519007 (not c!100414)) b!519005))

(assert (= (or b!519008 b!519005) bm!38000))

(assert (= (and d!185409 res!220217) b!519006))

(declare-fun m!765879 () Bool)

(assert (=> b!519006 m!765879))

(assert (=> b!519006 m!765807))

(assert (=> b!519006 m!765795))

(declare-fun m!765881 () Bool)

(assert (=> d!185409 m!765881))

(declare-fun m!765883 () Bool)

(assert (=> d!185409 m!765883))

(declare-fun m!765885 () Bool)

(assert (=> bm!38000 m!765885))

(assert (=> b!518911 d!185409))

(declare-fun b!519013 () Bool)

(declare-fun e!310837 () Bool)

(declare-fun tp!161724 () Bool)

(assert (=> b!519013 (= e!310837 (and tp_is_empty!2703 tp!161724))))

(assert (=> b!518907 (= tp!161714 e!310837)))

(assert (= (and b!518907 (is-Cons!4771 (t!73371 lIn!3))) b!519013))

(declare-fun b!519014 () Bool)

(declare-fun e!310838 () Bool)

(declare-fun tp!161725 () Bool)

(assert (=> b!519014 (= e!310838 (and tp_is_empty!2703 tp!161725))))

(assert (=> b!518906 (= tp!161715 e!310838)))

(assert (= (and b!518906 (is-Cons!4771 (t!73371 l!3695))) b!519014))

(declare-fun b_lambda!20215 () Bool)

(assert (= b_lambda!20213 (or start!47290 b_lambda!20215)))

(declare-fun bs!60379 () Bool)

(declare-fun d!185411 () Bool)

(assert (= bs!60379 (and d!185411 start!47290)))

(assert (=> bs!60379 (= (dynLambda!2996 lambda!14766 (h!10172 lIn!3)) (contains!1131 l!3695 (h!10172 lIn!3)))))

(declare-fun m!765887 () Bool)

(assert (=> bs!60379 m!765887))

(assert (=> b!518944 d!185411))

(push 1)

(assert (not d!185409))

(assert (not b!518983))

(assert (not b!518951))

(assert (not b!519013))

(assert (not bs!60379))

(assert (not d!185389))

(assert (not b!518980))

(assert (not b!518971))

(assert (not d!185383))

(assert (not b_lambda!20215))

(assert (not b!518957))

(assert (not bm!38000))

(assert (not b!518981))

(assert tp_is_empty!2703)

(assert (not b!519014))

(assert (not d!185387))

(assert (not b!518965))

(assert (not d!185401))

(assert (not b!518973))

(assert (not b!518945))

(assert (not b!519006))

(assert (not b!518963))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


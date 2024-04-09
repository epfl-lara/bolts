; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7660 () Bool)

(assert start!7660)

(declare-fun res!28303 () Bool)

(declare-fun e!31324 () Bool)

(assert (=> start!7660 (=> (not res!28303) (not e!31324))))

(declare-datatypes ((B!974 0))(
  ( (B!975 (val!1107 Int)) )
))
(declare-datatypes ((tuple2!1800 0))(
  ( (tuple2!1801 (_1!910 (_ BitVec 64)) (_2!910 B!974)) )
))
(declare-datatypes ((List!1323 0))(
  ( (Nil!1320) (Cons!1319 (h!1899 tuple2!1800) (t!4359 List!1323)) )
))
(declare-fun l!1333 () List!1323)

(declare-fun isStrictlySorted!264 (List!1323) Bool)

(assert (=> start!7660 (= res!28303 (isStrictlySorted!264 l!1333))))

(assert (=> start!7660 e!31324))

(declare-fun e!31323 () Bool)

(assert (=> start!7660 e!31323))

(assert (=> start!7660 true))

(declare-fun tp_is_empty!2125 () Bool)

(assert (=> start!7660 tp_is_empty!2125))

(declare-fun b!48769 () Bool)

(declare-fun res!28305 () Bool)

(assert (=> b!48769 (=> (not res!28305) (not e!31324))))

(assert (=> b!48769 (= res!28305 (is-Nil!1320 l!1333))))

(declare-fun b!48770 () Bool)

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun newValue!147 () B!974)

(declare-fun content!48 (List!1323) (Set tuple2!1800))

(declare-fun insertStrictlySorted!35 (List!1323 (_ BitVec 64) B!974) List!1323)

(assert (=> b!48770 (= e!31324 (not (= (set.union (content!48 l!1333) (set.insert (tuple2!1801 newKey!147 newValue!147) (as set.empty (Set tuple2!1800)))) (content!48 (insertStrictlySorted!35 l!1333 newKey!147 newValue!147)))))))

(declare-fun b!48768 () Bool)

(declare-fun res!28304 () Bool)

(assert (=> b!48768 (=> (not res!28304) (not e!31324))))

(declare-fun containsKey!116 (List!1323 (_ BitVec 64)) Bool)

(assert (=> b!48768 (= res!28304 (not (containsKey!116 l!1333 newKey!147)))))

(declare-fun b!48771 () Bool)

(declare-fun tp!6455 () Bool)

(assert (=> b!48771 (= e!31323 (and tp_is_empty!2125 tp!6455))))

(assert (= (and start!7660 res!28303) b!48768))

(assert (= (and b!48768 res!28304) b!48769))

(assert (= (and b!48769 res!28305) b!48770))

(assert (= (and start!7660 (is-Cons!1319 l!1333)) b!48771))

(declare-fun m!42435 () Bool)

(assert (=> start!7660 m!42435))

(declare-fun m!42437 () Bool)

(assert (=> b!48770 m!42437))

(declare-fun m!42439 () Bool)

(assert (=> b!48770 m!42439))

(declare-fun m!42441 () Bool)

(assert (=> b!48770 m!42441))

(assert (=> b!48770 m!42441))

(declare-fun m!42443 () Bool)

(assert (=> b!48770 m!42443))

(declare-fun m!42445 () Bool)

(assert (=> b!48768 m!42445))

(push 1)

(assert tp_is_empty!2125)

(assert (not b!48770))

(assert (not b!48771))

(assert (not b!48768))

(assert (not start!7660))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9715 () Bool)

(declare-fun res!28334 () Bool)

(declare-fun e!31350 () Bool)

(assert (=> d!9715 (=> res!28334 e!31350)))

(assert (=> d!9715 (= res!28334 (or (is-Nil!1320 l!1333) (is-Nil!1320 (t!4359 l!1333))))))

(assert (=> d!9715 (= (isStrictlySorted!264 l!1333) e!31350)))

(declare-fun b!48812 () Bool)

(declare-fun e!31351 () Bool)

(assert (=> b!48812 (= e!31350 e!31351)))

(declare-fun res!28335 () Bool)

(assert (=> b!48812 (=> (not res!28335) (not e!31351))))

(assert (=> b!48812 (= res!28335 (bvslt (_1!910 (h!1899 l!1333)) (_1!910 (h!1899 (t!4359 l!1333)))))))

(declare-fun b!48813 () Bool)

(assert (=> b!48813 (= e!31351 (isStrictlySorted!264 (t!4359 l!1333)))))

(assert (= (and d!9715 (not res!28334)) b!48812))

(assert (= (and b!48812 res!28335) b!48813))

(declare-fun m!42471 () Bool)

(assert (=> b!48813 m!42471))

(assert (=> start!7660 d!9715))

(declare-fun d!9719 () Bool)

(declare-fun res!28346 () Bool)

(declare-fun e!31363 () Bool)

(assert (=> d!9719 (=> res!28346 e!31363)))

(assert (=> d!9719 (= res!28346 (and (is-Cons!1319 l!1333) (= (_1!910 (h!1899 l!1333)) newKey!147)))))

(assert (=> d!9719 (= (containsKey!116 l!1333 newKey!147) e!31363)))

(declare-fun b!48826 () Bool)

(declare-fun e!31364 () Bool)

(assert (=> b!48826 (= e!31363 e!31364)))

(declare-fun res!28347 () Bool)

(assert (=> b!48826 (=> (not res!28347) (not e!31364))))

(assert (=> b!48826 (= res!28347 (and (or (not (is-Cons!1319 l!1333)) (bvsle (_1!910 (h!1899 l!1333)) newKey!147)) (is-Cons!1319 l!1333) (bvslt (_1!910 (h!1899 l!1333)) newKey!147)))))

(declare-fun b!48827 () Bool)

(assert (=> b!48827 (= e!31364 (containsKey!116 (t!4359 l!1333) newKey!147))))

(assert (= (and d!9719 (not res!28346)) b!48826))

(assert (= (and b!48826 res!28347) b!48827))

(declare-fun m!42485 () Bool)

(assert (=> b!48827 m!42485))

(assert (=> b!48768 d!9719))

(declare-fun d!9729 () Bool)

(declare-fun c!6556 () Bool)

(assert (=> d!9729 (= c!6556 (is-Nil!1320 l!1333))))

(declare-fun e!31370 () (Set tuple2!1800))

(assert (=> d!9729 (= (content!48 l!1333) e!31370)))

(declare-fun b!48838 () Bool)

(assert (=> b!48838 (= e!31370 (as set.empty (Set tuple2!1800)))))

(declare-fun b!48839 () Bool)

(assert (=> b!48839 (= e!31370 (set.union (set.insert (h!1899 l!1333) (as set.empty (Set tuple2!1800))) (content!48 (t!4359 l!1333))))))

(assert (= (and d!9729 c!6556) b!48838))

(assert (= (and d!9729 (not c!6556)) b!48839))

(declare-fun m!42491 () Bool)

(assert (=> b!48839 m!42491))

(declare-fun m!42495 () Bool)

(assert (=> b!48839 m!42495))

(assert (=> b!48770 d!9729))

(declare-fun c!6558 () Bool)

(declare-fun d!9733 () Bool)

(assert (=> d!9733 (= c!6558 (is-Nil!1320 (insertStrictlySorted!35 l!1333 newKey!147 newValue!147)))))

(declare-fun e!31372 () (Set tuple2!1800))

(assert (=> d!9733 (= (content!48 (insertStrictlySorted!35 l!1333 newKey!147 newValue!147)) e!31372)))

(declare-fun b!48842 () Bool)

(assert (=> b!48842 (= e!31372 (as set.empty (Set tuple2!1800)))))

(declare-fun b!48843 () Bool)

(assert (=> b!48843 (= e!31372 (set.union (set.insert (h!1899 (insertStrictlySorted!35 l!1333 newKey!147 newValue!147)) (as set.empty (Set tuple2!1800))) (content!48 (t!4359 (insertStrictlySorted!35 l!1333 newKey!147 newValue!147)))))))

(assert (= (and d!9733 c!6558) b!48842))

(assert (= (and d!9733 (not c!6558)) b!48843))

(declare-fun m!42499 () Bool)

(assert (=> b!48843 m!42499))

(declare-fun m!42501 () Bool)

(assert (=> b!48843 m!42501))

(assert (=> b!48770 d!9733))

(declare-fun d!9737 () Bool)

(declare-fun e!31419 () Bool)

(assert (=> d!9737 e!31419))

(declare-fun res!28370 () Bool)

(assert (=> d!9737 (=> (not res!28370) (not e!31419))))

(declare-fun lt!20703 () List!1323)

(assert (=> d!9737 (= res!28370 (isStrictlySorted!264 lt!20703))))

(declare-fun e!31423 () List!1323)

(assert (=> d!9737 (= lt!20703 e!31423)))

(declare-fun c!6592 () Bool)

(assert (=> d!9737 (= c!6592 (and (is-Cons!1319 l!1333) (bvslt (_1!910 (h!1899 l!1333)) newKey!147)))))

(assert (=> d!9737 (isStrictlySorted!264 l!1333)))

(assert (=> d!9737 (= (insertStrictlySorted!35 l!1333 newKey!147 newValue!147) lt!20703)))

(declare-fun b!48930 () Bool)

(declare-fun contains!610 (List!1323 tuple2!1800) Bool)

(assert (=> b!48930 (= e!31419 (contains!610 lt!20703 (tuple2!1801 newKey!147 newValue!147)))))

(declare-fun b!48931 () Bool)

(declare-fun res!28371 () Bool)

(assert (=> b!48931 (=> (not res!28371) (not e!31419))))

(assert (=> b!48931 (= res!28371 (containsKey!116 lt!20703 newKey!147))))

(declare-fun bm!3796 () Bool)

(declare-fun call!3799 () List!1323)

(declare-fun call!3801 () List!1323)

(assert (=> bm!3796 (= call!3799 call!3801)))

(declare-fun b!48932 () Bool)

(declare-fun e!31420 () List!1323)

(assert (=> b!48932 (= e!31423 e!31420)))

(declare-fun c!6591 () Bool)

(assert (=> b!48932 (= c!6591 (and (is-Cons!1319 l!1333) (= (_1!910 (h!1899 l!1333)) newKey!147)))))

(declare-fun bm!3797 () Bool)

(declare-fun call!3800 () List!1323)

(assert (=> bm!3797 (= call!3800 call!3799)))

(declare-fun bm!3798 () Bool)

(declare-fun e!31422 () List!1323)

(declare-fun $colon$colon!53 (List!1323 tuple2!1800) List!1323)

(assert (=> bm!3798 (= call!3801 ($colon$colon!53 e!31422 (ite c!6592 (h!1899 l!1333) (tuple2!1801 newKey!147 newValue!147))))))

(declare-fun c!6593 () Bool)

(assert (=> bm!3798 (= c!6593 c!6592)))

(declare-fun b!48933 () Bool)

(assert (=> b!48933 (= e!31422 (insertStrictlySorted!35 (t!4359 l!1333) newKey!147 newValue!147))))

(declare-fun b!48934 () Bool)

(declare-fun e!31421 () List!1323)

(assert (=> b!48934 (= e!31421 call!3800)))

(declare-fun b!48935 () Bool)

(assert (=> b!48935 (= e!31423 call!3801)))

(declare-fun b!48936 () Bool)

(declare-fun c!6594 () Bool)

(assert (=> b!48936 (= c!6594 (and (is-Cons!1319 l!1333) (bvsgt (_1!910 (h!1899 l!1333)) newKey!147)))))

(assert (=> b!48936 (= e!31420 e!31421)))

(declare-fun b!48937 () Bool)

(assert (=> b!48937 (= e!31421 call!3800)))

(declare-fun b!48938 () Bool)

(assert (=> b!48938 (= e!31420 call!3799)))

(declare-fun b!48939 () Bool)

(assert (=> b!48939 (= e!31422 (ite c!6591 (t!4359 l!1333) (ite c!6594 (Cons!1319 (h!1899 l!1333) (t!4359 l!1333)) Nil!1320)))))

(assert (= (and d!9737 c!6592) b!48935))

(assert (= (and d!9737 (not c!6592)) b!48932))

(assert (= (and b!48932 c!6591) b!48938))

(assert (= (and b!48932 (not c!6591)) b!48936))

(assert (= (and b!48936 c!6594) b!48937))

(assert (= (and b!48936 (not c!6594)) b!48934))

(assert (= (or b!48937 b!48934) bm!3797))

(assert (= (or b!48938 bm!3797) bm!3796))

(assert (= (or b!48935 bm!3796) bm!3798))

(assert (= (and bm!3798 c!6593) b!48933))

(assert (= (and bm!3798 (not c!6593)) b!48939))

(assert (= (and d!9737 res!28370) b!48931))

(assert (= (and b!48931 res!28371) b!48930))

(declare-fun m!42525 () Bool)

(assert (=> bm!3798 m!42525))

(declare-fun m!42527 () Bool)

(assert (=> d!9737 m!42527))

(assert (=> d!9737 m!42435))

(declare-fun m!42529 () Bool)

(assert (=> b!48930 m!42529))

(declare-fun m!42531 () Bool)

(assert (=> b!48933 m!42531))

(declare-fun m!42533 () Bool)

(assert (=> b!48931 m!42533))

(assert (=> b!48770 d!9737))

(declare-fun b!48956 () Bool)

(declare-fun e!31435 () Bool)

(declare-fun tp!6467 () Bool)

(assert (=> b!48956 (= e!31435 (and tp_is_empty!2125 tp!6467))))

(assert (=> b!48771 (= tp!6455 e!31435)))

(assert (= (and b!48771 (is-Cons!1319 (t!4359 l!1333))) b!48956))

(push 1)

(assert tp_is_empty!2125)

(assert (not bm!3798))

(assert (not b!48956))

(assert (not b!48827))

(assert (not b!48843))

(assert (not b!48931))

(assert (not b!48930))

(assert (not d!9737))

(assert (not b!48933))

(assert (not b!48839))

(assert (not b!48813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9749 () Bool)

(declare-fun c!6600 () Bool)

(assert (=> d!9749 (= c!6600 (is-Nil!1320 (t!4359 (insertStrictlySorted!35 l!1333 newKey!147 newValue!147))))))

(declare-fun e!31447 () (Set tuple2!1800))

(assert (=> d!9749 (= (content!48 (t!4359 (insertStrictlySorted!35 l!1333 newKey!147 newValue!147))) e!31447)))

(declare-fun b!48975 () Bool)

(assert (=> b!48975 (= e!31447 (as set.empty (Set tuple2!1800)))))

(declare-fun b!48976 () Bool)

(assert (=> b!48976 (= e!31447 (set.union (set.insert (h!1899 (t!4359 (insertStrictlySorted!35 l!1333 newKey!147 newValue!147))) (as set.empty (Set tuple2!1800))) (content!48 (t!4359 (t!4359 (insertStrictlySorted!35 l!1333 newKey!147 newValue!147))))))))

(assert (= (and d!9749 c!6600) b!48975))

(assert (= (and d!9749 (not c!6600)) b!48976))

(declare-fun m!42543 () Bool)

(assert (=> b!48976 m!42543))

(declare-fun m!42545 () Bool)

(assert (=> b!48976 m!42545))

(assert (=> b!48843 d!9749))

(declare-fun d!9751 () Bool)

(declare-fun c!6601 () Bool)

(assert (=> d!9751 (= c!6601 (is-Nil!1320 (t!4359 l!1333)))))

(declare-fun e!31448 () (Set tuple2!1800))

(assert (=> d!9751 (= (content!48 (t!4359 l!1333)) e!31448)))

(declare-fun b!48977 () Bool)

(assert (=> b!48977 (= e!31448 (as set.empty (Set tuple2!1800)))))

(declare-fun b!48978 () Bool)

(assert (=> b!48978 (= e!31448 (set.union (set.insert (h!1899 (t!4359 l!1333)) (as set.empty (Set tuple2!1800))) (content!48 (t!4359 (t!4359 l!1333)))))))

(assert (= (and d!9751 c!6601) b!48977))

(assert (= (and d!9751 (not c!6601)) b!48978))

(declare-fun m!42555 () Bool)

(assert (=> b!48978 m!42555))

(declare-fun m!42559 () Bool)

(assert (=> b!48978 m!42559))

(assert (=> b!48839 d!9751))

(declare-fun d!9755 () Bool)

(declare-fun res!28382 () Bool)

(declare-fun e!31449 () Bool)

(assert (=> d!9755 (=> res!28382 e!31449)))

(assert (=> d!9755 (= res!28382 (or (is-Nil!1320 lt!20703) (is-Nil!1320 (t!4359 lt!20703))))))

(assert (=> d!9755 (= (isStrictlySorted!264 lt!20703) e!31449)))

(declare-fun b!48979 () Bool)

(declare-fun e!31450 () Bool)

(assert (=> b!48979 (= e!31449 e!31450)))

(declare-fun res!28383 () Bool)

(assert (=> b!48979 (=> (not res!28383) (not e!31450))))

(assert (=> b!48979 (= res!28383 (bvslt (_1!910 (h!1899 lt!20703)) (_1!910 (h!1899 (t!4359 lt!20703)))))))

(declare-fun b!48980 () Bool)

(assert (=> b!48980 (= e!31450 (isStrictlySorted!264 (t!4359 lt!20703)))))

(assert (= (and d!9755 (not res!28382)) b!48979))

(assert (= (and b!48979 res!28383) b!48980))

(declare-fun m!42561 () Bool)

(assert (=> b!48980 m!42561))

(assert (=> d!9737 d!9755))

(assert (=> d!9737 d!9715))

(declare-fun d!9757 () Bool)

(assert (=> d!9757 (= ($colon$colon!53 e!31422 (ite c!6592 (h!1899 l!1333) (tuple2!1801 newKey!147 newValue!147))) (Cons!1319 (ite c!6592 (h!1899 l!1333) (tuple2!1801 newKey!147 newValue!147)) e!31422))))

(assert (=> bm!3798 d!9757))

(declare-fun d!9761 () Bool)

(declare-fun res!28386 () Bool)

(declare-fun e!31453 () Bool)

(assert (=> d!9761 (=> res!28386 e!31453)))

(assert (=> d!9761 (= res!28386 (or (is-Nil!1320 (t!4359 l!1333)) (is-Nil!1320 (t!4359 (t!4359 l!1333)))))))

(assert (=> d!9761 (= (isStrictlySorted!264 (t!4359 l!1333)) e!31453)))

(declare-fun b!48983 () Bool)

(declare-fun e!31454 () Bool)

(assert (=> b!48983 (= e!31453 e!31454)))

(declare-fun res!28387 () Bool)

(assert (=> b!48983 (=> (not res!28387) (not e!31454))))

(assert (=> b!48983 (= res!28387 (bvslt (_1!910 (h!1899 (t!4359 l!1333))) (_1!910 (h!1899 (t!4359 (t!4359 l!1333))))))))

(declare-fun b!48984 () Bool)

(assert (=> b!48984 (= e!31454 (isStrictlySorted!264 (t!4359 (t!4359 l!1333))))))

(assert (= (and d!9761 (not res!28386)) b!48983))

(assert (= (and b!48983 res!28387) b!48984))

(declare-fun m!42565 () Bool)

(assert (=> b!48984 m!42565))

(assert (=> b!48813 d!9761))

(declare-fun d!9765 () Bool)

(declare-fun res!28390 () Bool)

(declare-fun e!31457 () Bool)

(assert (=> d!9765 (=> res!28390 e!31457)))

(assert (=> d!9765 (= res!28390 (and (is-Cons!1319 lt!20703) (= (_1!910 (h!1899 lt!20703)) newKey!147)))))

(assert (=> d!9765 (= (containsKey!116 lt!20703 newKey!147) e!31457)))

(declare-fun b!48987 () Bool)

(declare-fun e!31458 () Bool)

(assert (=> b!48987 (= e!31457 e!31458)))

(declare-fun res!28391 () Bool)

(assert (=> b!48987 (=> (not res!28391) (not e!31458))))

(assert (=> b!48987 (= res!28391 (and (or (not (is-Cons!1319 lt!20703)) (bvsle (_1!910 (h!1899 lt!20703)) newKey!147)) (is-Cons!1319 lt!20703) (bvslt (_1!910 (h!1899 lt!20703)) newKey!147)))))

(declare-fun b!48988 () Bool)

(assert (=> b!48988 (= e!31458 (containsKey!116 (t!4359 lt!20703) newKey!147))))

(assert (= (and d!9765 (not res!28390)) b!48987))

(assert (= (and b!48987 res!28391) b!48988))

(declare-fun m!42569 () Bool)

(assert (=> b!48988 m!42569))

(assert (=> b!48931 d!9765))

(declare-fun d!9769 () Bool)

(declare-fun e!31459 () Bool)

(assert (=> d!9769 e!31459))

(declare-fun res!28392 () Bool)

(assert (=> d!9769 (=> (not res!28392) (not e!31459))))

(declare-fun lt!20705 () List!1323)

(assert (=> d!9769 (= res!28392 (isStrictlySorted!264 lt!20705))))

(declare-fun e!31463 () List!1323)

(assert (=> d!9769 (= lt!20705 e!31463)))

(declare-fun c!6603 () Bool)

(assert (=> d!9769 (= c!6603 (and (is-Cons!1319 (t!4359 l!1333)) (bvslt (_1!910 (h!1899 (t!4359 l!1333))) newKey!147)))))

(assert (=> d!9769 (isStrictlySorted!264 (t!4359 l!1333))))

(assert (=> d!9769 (= (insertStrictlySorted!35 (t!4359 l!1333) newKey!147 newValue!147) lt!20705)))

(declare-fun b!48989 () Bool)

(assert (=> b!48989 (= e!31459 (contains!610 lt!20705 (tuple2!1801 newKey!147 newValue!147)))))

(declare-fun b!48990 () Bool)

(declare-fun res!28393 () Bool)

(assert (=> b!48990 (=> (not res!28393) (not e!31459))))

(assert (=> b!48990 (= res!28393 (containsKey!116 lt!20705 newKey!147))))

(declare-fun bm!3802 () Bool)

(declare-fun call!3805 () List!1323)

(declare-fun call!3807 () List!1323)

(assert (=> bm!3802 (= call!3805 call!3807)))

(declare-fun b!48991 () Bool)

(declare-fun e!31460 () List!1323)

(assert (=> b!48991 (= e!31463 e!31460)))

(declare-fun c!6602 () Bool)

(assert (=> b!48991 (= c!6602 (and (is-Cons!1319 (t!4359 l!1333)) (= (_1!910 (h!1899 (t!4359 l!1333))) newKey!147)))))

(declare-fun bm!3803 () Bool)

(declare-fun call!3806 () List!1323)

(assert (=> bm!3803 (= call!3806 call!3805)))

(declare-fun e!31462 () List!1323)

(declare-fun bm!3804 () Bool)

(assert (=> bm!3804 (= call!3807 ($colon$colon!53 e!31462 (ite c!6603 (h!1899 (t!4359 l!1333)) (tuple2!1801 newKey!147 newValue!147))))))

(declare-fun c!6604 () Bool)

(assert (=> bm!3804 (= c!6604 c!6603)))

(declare-fun b!48992 () Bool)

(assert (=> b!48992 (= e!31462 (insertStrictlySorted!35 (t!4359 (t!4359 l!1333)) newKey!147 newValue!147))))

(declare-fun b!48993 () Bool)

(declare-fun e!31461 () List!1323)

(assert (=> b!48993 (= e!31461 call!3806)))

(declare-fun b!48994 () Bool)

(assert (=> b!48994 (= e!31463 call!3807)))

(declare-fun b!48995 () Bool)

(declare-fun c!6605 () Bool)

(assert (=> b!48995 (= c!6605 (and (is-Cons!1319 (t!4359 l!1333)) (bvsgt (_1!910 (h!1899 (t!4359 l!1333))) newKey!147)))))

(assert (=> b!48995 (= e!31460 e!31461)))

(declare-fun b!48996 () Bool)

(assert (=> b!48996 (= e!31461 call!3806)))

(declare-fun b!48997 () Bool)

(assert (=> b!48997 (= e!31460 call!3805)))

(declare-fun b!48998 () Bool)

(assert (=> b!48998 (= e!31462 (ite c!6602 (t!4359 (t!4359 l!1333)) (ite c!6605 (Cons!1319 (h!1899 (t!4359 l!1333)) (t!4359 (t!4359 l!1333))) Nil!1320)))))

(assert (= (and d!9769 c!6603) b!48994))

(assert (= (and d!9769 (not c!6603)) b!48991))

(assert (= (and b!48991 c!6602) b!48997))

(assert (= (and b!48991 (not c!6602)) b!48995))

(assert (= (and b!48995 c!6605) b!48996))

(assert (= (and b!48995 (not c!6605)) b!48993))

(assert (= (or b!48996 b!48993) bm!3803))

(assert (= (or b!48997 bm!3803) bm!3802))

(assert (= (or b!48994 bm!3802) bm!3804))

(assert (= (and bm!3804 c!6604) b!48992))

(assert (= (and bm!3804 (not c!6604)) b!48998))

(assert (= (and d!9769 res!28392) b!48990))

(assert (= (and b!48990 res!28393) b!48989))

(declare-fun m!42571 () Bool)

(assert (=> bm!3804 m!42571))

(declare-fun m!42573 () Bool)

(assert (=> d!9769 m!42573))

(assert (=> d!9769 m!42471))

(declare-fun m!42575 () Bool)

(assert (=> b!48989 m!42575))

(declare-fun m!42577 () Bool)

(assert (=> b!48992 m!42577))

(declare-fun m!42579 () Bool)

(assert (=> b!48990 m!42579))

(assert (=> b!48933 d!9769))

(declare-fun d!9771 () Bool)

(declare-fun res!28394 () Bool)

(declare-fun e!31464 () Bool)

(assert (=> d!9771 (=> res!28394 e!31464)))

(assert (=> d!9771 (= res!28394 (and (is-Cons!1319 (t!4359 l!1333)) (= (_1!910 (h!1899 (t!4359 l!1333))) newKey!147)))))

(assert (=> d!9771 (= (containsKey!116 (t!4359 l!1333) newKey!147) e!31464)))

(declare-fun b!48999 () Bool)

(declare-fun e!31465 () Bool)

(assert (=> b!48999 (= e!31464 e!31465)))

(declare-fun res!28395 () Bool)

(assert (=> b!48999 (=> (not res!28395) (not e!31465))))

(assert (=> b!48999 (= res!28395 (and (or (not (is-Cons!1319 (t!4359 l!1333))) (bvsle (_1!910 (h!1899 (t!4359 l!1333))) newKey!147)) (is-Cons!1319 (t!4359 l!1333)) (bvslt (_1!910 (h!1899 (t!4359 l!1333))) newKey!147)))))

(declare-fun b!49000 () Bool)

(assert (=> b!49000 (= e!31465 (containsKey!116 (t!4359 (t!4359 l!1333)) newKey!147))))

(assert (= (and d!9771 (not res!28394)) b!48999))

(assert (= (and b!48999 res!28395) b!49000))

(declare-fun m!42581 () Bool)

(assert (=> b!49000 m!42581))

(assert (=> b!48827 d!9771))

(declare-fun d!9773 () Bool)

(declare-fun lt!20712 () Bool)

(assert (=> d!9773 (= lt!20712 (set.member (tuple2!1801 newKey!147 newValue!147) (content!48 lt!20703)))))

(declare-fun e!31484 () Bool)

(assert (=> d!9773 (= lt!20712 e!31484)))

(declare-fun res!28410 () Bool)

(assert (=> d!9773 (=> (not res!28410) (not e!31484))))

(assert (=> d!9773 (= res!28410 (is-Cons!1319 lt!20703))))

(assert (=> d!9773 (= (contains!610 lt!20703 (tuple2!1801 newKey!147 newValue!147)) lt!20712)))

(declare-fun b!49025 () Bool)

(declare-fun e!31485 () Bool)

(assert (=> b!49025 (= e!31484 e!31485)))

(declare-fun res!28411 () Bool)

(assert (=> b!49025 (=> res!28411 e!31485)))

(assert (=> b!49025 (= res!28411 (= (h!1899 lt!20703) (tuple2!1801 newKey!147 newValue!147)))))

(declare-fun b!49026 () Bool)

(assert (=> b!49026 (= e!31485 (contains!610 (t!4359 lt!20703) (tuple2!1801 newKey!147 newValue!147)))))

(assert (= (and d!9773 res!28410) b!49025))

(assert (= (and b!49025 (not res!28411)) b!49026))

(declare-fun m!42595 () Bool)

(assert (=> d!9773 m!42595))

(declare-fun m!42597 () Bool)

(assert (=> d!9773 m!42597))

(declare-fun m!42599 () Bool)

(assert (=> b!49026 m!42599))

(assert (=> b!48930 d!9773))

(declare-fun b!49028 () Bool)

(declare-fun e!31487 () Bool)

(declare-fun tp!6472 () Bool)

(assert (=> b!49028 (= e!31487 (and tp_is_empty!2125 tp!6472))))

(assert (=> b!48956 (= tp!6467 e!31487)))

(assert (= (and b!48956 (is-Cons!1319 (t!4359 (t!4359 l!1333)))) b!49028))

(push 1)


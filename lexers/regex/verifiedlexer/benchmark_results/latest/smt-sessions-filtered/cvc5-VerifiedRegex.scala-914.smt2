; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!47258 () Bool)

(assert start!47258)

(assert (=> start!47258 true))

(declare-fun b!518706 () Bool)

(declare-fun e!310628 () Bool)

(declare-fun tp_is_empty!2695 () Bool)

(declare-fun tp!161682 () Bool)

(assert (=> b!518706 (= e!310628 (and tp_is_empty!2695 tp!161682))))

(declare-fun b!518707 () Bool)

(declare-fun e!310625 () Bool)

(declare-fun tp!161683 () Bool)

(assert (=> b!518707 (= e!310625 (and tp_is_empty!2695 tp!161683))))

(declare-fun b!518708 () Bool)

(declare-fun res!220065 () Bool)

(declare-fun e!310627 () Bool)

(assert (=> b!518708 (=> (not res!220065) (not e!310627))))

(declare-datatypes ((B!1099 0))(
  ( (B!1100 (val!1837 Int)) )
))
(declare-datatypes ((List!4777 0))(
  ( (Nil!4767) (Cons!4767 (h!10168 B!1099) (t!73367 List!4777)) )
))
(declare-fun lIn!3 () List!4777)

(declare-fun contains!1127 (List!4777 B!1099) Bool)

(assert (=> b!518708 (= res!220065 (not (contains!1127 (t!73367 lIn!3) (h!10168 lIn!3))))))

(declare-fun b!518709 () Bool)

(declare-fun res!220063 () Bool)

(declare-fun e!310626 () Bool)

(assert (=> b!518709 (=> (not res!220063) (not e!310626))))

(assert (=> b!518709 (= res!220063 (is-Cons!4767 lIn!3))))

(declare-fun b!518710 () Bool)

(declare-fun res!220062 () Bool)

(assert (=> b!518710 (=> (not res!220062) (not e!310626))))

(declare-fun noDuplicate!128 (List!4777) Bool)

(assert (=> b!518710 (= res!220062 (noDuplicate!128 lIn!3))))

(declare-fun lt!216242 () (Set B!1099))

(declare-fun b!518711 () Bool)

(declare-fun l!3695 () List!4777)

(declare-fun content!852 (List!4777) (Set B!1099))

(declare-fun -!55 (List!4777 B!1099) List!4777)

(assert (=> b!518711 (= e!310627 (not (= (content!852 (-!55 l!3695 (h!10168 lIn!3))) (set.minus lt!216242 (set.insert (h!10168 lIn!3) (as set.empty (Set B!1099)))))))))

(declare-fun b!518712 () Bool)

(assert (=> b!518712 (= e!310626 e!310627)))

(declare-fun res!220061 () Bool)

(assert (=> b!518712 (=> (not res!220061) (not e!310627))))

(assert (=> b!518712 (= res!220061 (set.subset (content!852 lIn!3) lt!216242))))

(assert (=> b!518712 (= lt!216242 (content!852 l!3695))))

(declare-datatypes ((Unit!8738 0))(
  ( (Unit!8739) )
))
(declare-fun lt!216243 () Unit!8738)

(declare-fun forallContainsSubset!13 (List!4777 List!4777) Unit!8738)

(assert (=> b!518712 (= lt!216243 (forallContainsSubset!13 lIn!3 l!3695))))

(declare-fun res!220064 () Bool)

(assert (=> start!47258 (=> (not res!220064) (not e!310626))))

(declare-fun lambda!14748 () Int)

(declare-fun forall!1436 (List!4777 Int) Bool)

(assert (=> start!47258 (= res!220064 (forall!1436 lIn!3 lambda!14748))))

(assert (=> start!47258 e!310626))

(assert (=> start!47258 e!310625))

(assert (=> start!47258 e!310628))

(assert (= (and start!47258 res!220064) b!518710))

(assert (= (and b!518710 res!220062) b!518709))

(assert (= (and b!518709 res!220063) b!518712))

(assert (= (and b!518712 res!220061) b!518708))

(assert (= (and b!518708 res!220065) b!518711))

(assert (= (and start!47258 (is-Cons!4767 lIn!3)) b!518707))

(assert (= (and start!47258 (is-Cons!4767 l!3695)) b!518706))

(declare-fun m!765627 () Bool)

(assert (=> b!518708 m!765627))

(declare-fun m!765629 () Bool)

(assert (=> b!518711 m!765629))

(assert (=> b!518711 m!765629))

(declare-fun m!765631 () Bool)

(assert (=> b!518711 m!765631))

(declare-fun m!765633 () Bool)

(assert (=> b!518711 m!765633))

(declare-fun m!765635 () Bool)

(assert (=> b!518710 m!765635))

(declare-fun m!765637 () Bool)

(assert (=> b!518712 m!765637))

(declare-fun m!765639 () Bool)

(assert (=> b!518712 m!765639))

(declare-fun m!765641 () Bool)

(assert (=> b!518712 m!765641))

(declare-fun m!765643 () Bool)

(assert (=> start!47258 m!765643))

(push 1)

(assert (not b!518708))

(assert (not b!518712))

(assert (not b!518711))

(assert (not b!518706))

(assert (not b!518710))

(assert tp_is_empty!2695)

(assert (not start!47258))

(assert (not b!518707))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!185343 () Bool)

(declare-fun c!100372 () Bool)

(assert (=> d!185343 (= c!100372 (is-Nil!4767 lIn!3))))

(declare-fun e!310645 () (Set B!1099))

(assert (=> d!185343 (= (content!852 lIn!3) e!310645)))

(declare-fun b!518742 () Bool)

(assert (=> b!518742 (= e!310645 (as set.empty (Set B!1099)))))

(declare-fun b!518743 () Bool)

(assert (=> b!518743 (= e!310645 (set.union (set.insert (h!10168 lIn!3) (as set.empty (Set B!1099))) (content!852 (t!73367 lIn!3))))))

(assert (= (and d!185343 c!100372) b!518742))

(assert (= (and d!185343 (not c!100372)) b!518743))

(assert (=> b!518743 m!765633))

(declare-fun m!765663 () Bool)

(assert (=> b!518743 m!765663))

(assert (=> b!518712 d!185343))

(declare-fun d!185347 () Bool)

(declare-fun c!100373 () Bool)

(assert (=> d!185347 (= c!100373 (is-Nil!4767 l!3695))))

(declare-fun e!310646 () (Set B!1099))

(assert (=> d!185347 (= (content!852 l!3695) e!310646)))

(declare-fun b!518744 () Bool)

(assert (=> b!518744 (= e!310646 (as set.empty (Set B!1099)))))

(declare-fun b!518745 () Bool)

(assert (=> b!518745 (= e!310646 (set.union (set.insert (h!10168 l!3695) (as set.empty (Set B!1099))) (content!852 (t!73367 l!3695))))))

(assert (= (and d!185347 c!100373) b!518744))

(assert (= (and d!185347 (not c!100373)) b!518745))

(declare-fun m!765665 () Bool)

(assert (=> b!518745 m!765665))

(declare-fun m!765667 () Bool)

(assert (=> b!518745 m!765667))

(assert (=> b!518712 d!185347))

(declare-fun bs!60360 () Bool)

(declare-fun d!185349 () Bool)

(assert (= bs!60360 (and d!185349 start!47258)))

(declare-fun lambda!14754 () Int)

(assert (=> bs!60360 (= lambda!14754 lambda!14748)))

(assert (=> d!185349 true))

(assert (=> d!185349 (set.subset (content!852 lIn!3) (content!852 l!3695))))

(declare-fun lt!216252 () Unit!8738)

(declare-fun choose!3705 (List!4777 List!4777) Unit!8738)

(assert (=> d!185349 (= lt!216252 (choose!3705 lIn!3 l!3695))))

(assert (=> d!185349 (forall!1436 lIn!3 lambda!14754)))

(assert (=> d!185349 (= (forallContainsSubset!13 lIn!3 l!3695) lt!216252)))

(declare-fun bs!60361 () Bool)

(assert (= bs!60361 d!185349))

(assert (=> bs!60361 m!765637))

(assert (=> bs!60361 m!765639))

(declare-fun m!765669 () Bool)

(assert (=> bs!60361 m!765669))

(declare-fun m!765671 () Bool)

(assert (=> bs!60361 m!765671))

(assert (=> b!518712 d!185349))

(declare-fun d!185351 () Bool)

(declare-fun lt!216255 () Bool)

(assert (=> d!185351 (= lt!216255 (set.member (h!10168 lIn!3) (content!852 (t!73367 lIn!3))))))

(declare-fun e!310655 () Bool)

(assert (=> d!185351 (= lt!216255 e!310655)))

(declare-fun res!220085 () Bool)

(assert (=> d!185351 (=> (not res!220085) (not e!310655))))

(assert (=> d!185351 (= res!220085 (is-Cons!4767 (t!73367 lIn!3)))))

(assert (=> d!185351 (= (contains!1127 (t!73367 lIn!3) (h!10168 lIn!3)) lt!216255)))

(declare-fun b!518756 () Bool)

(declare-fun e!310654 () Bool)

(assert (=> b!518756 (= e!310655 e!310654)))

(declare-fun res!220086 () Bool)

(assert (=> b!518756 (=> res!220086 e!310654)))

(assert (=> b!518756 (= res!220086 (= (h!10168 (t!73367 lIn!3)) (h!10168 lIn!3)))))

(declare-fun b!518757 () Bool)

(assert (=> b!518757 (= e!310654 (contains!1127 (t!73367 (t!73367 lIn!3)) (h!10168 lIn!3)))))

(assert (= (and d!185351 res!220085) b!518756))

(assert (= (and b!518756 (not res!220086)) b!518757))

(assert (=> d!185351 m!765663))

(declare-fun m!765677 () Bool)

(assert (=> d!185351 m!765677))

(declare-fun m!765679 () Bool)

(assert (=> b!518757 m!765679))

(assert (=> b!518708 d!185351))

(declare-fun d!185355 () Bool)

(declare-fun res!220091 () Bool)

(declare-fun e!310660 () Bool)

(assert (=> d!185355 (=> res!220091 e!310660)))

(assert (=> d!185355 (= res!220091 (is-Nil!4767 lIn!3))))

(assert (=> d!185355 (= (noDuplicate!128 lIn!3) e!310660)))

(declare-fun b!518762 () Bool)

(declare-fun e!310661 () Bool)

(assert (=> b!518762 (= e!310660 e!310661)))

(declare-fun res!220092 () Bool)

(assert (=> b!518762 (=> (not res!220092) (not e!310661))))

(assert (=> b!518762 (= res!220092 (not (contains!1127 (t!73367 lIn!3) (h!10168 lIn!3))))))

(declare-fun b!518763 () Bool)

(assert (=> b!518763 (= e!310661 (noDuplicate!128 (t!73367 lIn!3)))))

(assert (= (and d!185355 (not res!220091)) b!518762))

(assert (= (and b!518762 res!220092) b!518763))

(assert (=> b!518762 m!765627))

(declare-fun m!765681 () Bool)

(assert (=> b!518763 m!765681))

(assert (=> b!518710 d!185355))

(declare-fun d!185357 () Bool)

(declare-fun res!220097 () Bool)

(declare-fun e!310671 () Bool)

(assert (=> d!185357 (=> res!220097 e!310671)))

(assert (=> d!185357 (= res!220097 (is-Nil!4767 lIn!3))))

(assert (=> d!185357 (= (forall!1436 lIn!3 lambda!14748) e!310671)))

(declare-fun b!518776 () Bool)

(declare-fun e!310672 () Bool)

(assert (=> b!518776 (= e!310671 e!310672)))

(declare-fun res!220098 () Bool)

(assert (=> b!518776 (=> (not res!220098) (not e!310672))))

(declare-fun dynLambda!2995 (Int B!1099) Bool)

(assert (=> b!518776 (= res!220098 (dynLambda!2995 lambda!14748 (h!10168 lIn!3)))))

(declare-fun b!518777 () Bool)

(assert (=> b!518777 (= e!310672 (forall!1436 (t!73367 lIn!3) lambda!14748))))

(assert (= (and d!185357 (not res!220097)) b!518776))

(assert (= (and b!518776 res!220098) b!518777))

(declare-fun b_lambda!20205 () Bool)

(assert (=> (not b_lambda!20205) (not b!518776)))

(declare-fun m!765683 () Bool)

(assert (=> b!518776 m!765683))

(declare-fun m!765685 () Bool)

(assert (=> b!518777 m!765685))

(assert (=> start!47258 d!185357))

(declare-fun d!185359 () Bool)

(declare-fun c!100381 () Bool)

(assert (=> d!185359 (= c!100381 (is-Nil!4767 (-!55 l!3695 (h!10168 lIn!3))))))

(declare-fun e!310673 () (Set B!1099))

(assert (=> d!185359 (= (content!852 (-!55 l!3695 (h!10168 lIn!3))) e!310673)))

(declare-fun b!518778 () Bool)

(assert (=> b!518778 (= e!310673 (as set.empty (Set B!1099)))))

(declare-fun b!518779 () Bool)

(assert (=> b!518779 (= e!310673 (set.union (set.insert (h!10168 (-!55 l!3695 (h!10168 lIn!3))) (as set.empty (Set B!1099))) (content!852 (t!73367 (-!55 l!3695 (h!10168 lIn!3))))))))

(assert (= (and d!185359 c!100381) b!518778))

(assert (= (and d!185359 (not c!100381)) b!518779))

(declare-fun m!765687 () Bool)

(assert (=> b!518779 m!765687))

(declare-fun m!765689 () Bool)

(assert (=> b!518779 m!765689))

(assert (=> b!518711 d!185359))

(declare-fun b!518797 () Bool)

(declare-fun e!310687 () List!4777)

(declare-fun call!38000 () List!4777)

(assert (=> b!518797 (= e!310687 call!38000)))

(declare-fun e!310688 () Bool)

(declare-fun b!518798 () Bool)

(declare-fun lt!216261 () List!4777)

(assert (=> b!518798 (= e!310688 (= (content!852 lt!216261) (set.minus (content!852 l!3695) (set.insert (h!10168 lIn!3) (as set.empty (Set B!1099))))))))

(declare-fun b!518799 () Bool)

(declare-fun e!310686 () List!4777)

(assert (=> b!518799 (= e!310686 Nil!4767)))

(declare-fun b!518800 () Bool)

(assert (=> b!518800 (= e!310687 (Cons!4767 (h!10168 l!3695) call!38000))))

(declare-fun bm!37995 () Bool)

(assert (=> bm!37995 (= call!38000 (-!55 (t!73367 l!3695) (h!10168 lIn!3)))))

(declare-fun b!518801 () Bool)

(assert (=> b!518801 (= e!310686 e!310687)))

(declare-fun c!100388 () Bool)

(assert (=> b!518801 (= c!100388 (= (h!10168 lIn!3) (h!10168 l!3695)))))

(declare-fun d!185361 () Bool)

(assert (=> d!185361 e!310688))

(declare-fun res!220104 () Bool)

(assert (=> d!185361 (=> (not res!220104) (not e!310688))))

(declare-fun size!3890 (List!4777) Int)

(assert (=> d!185361 (= res!220104 (<= (size!3890 lt!216261) (size!3890 l!3695)))))

(assert (=> d!185361 (= lt!216261 e!310686)))

(declare-fun c!100389 () Bool)

(assert (=> d!185361 (= c!100389 (is-Cons!4767 l!3695))))

(assert (=> d!185361 (= (-!55 l!3695 (h!10168 lIn!3)) lt!216261)))

(assert (= (and d!185361 c!100389) b!518801))

(assert (= (and d!185361 (not c!100389)) b!518799))

(assert (= (and b!518801 c!100388) b!518797))

(assert (= (and b!518801 (not c!100388)) b!518800))

(assert (= (or b!518797 b!518800) bm!37995))

(assert (= (and d!185361 res!220104) b!518798))

(declare-fun m!765691 () Bool)

(assert (=> b!518798 m!765691))

(assert (=> b!518798 m!765639))

(assert (=> b!518798 m!765633))

(declare-fun m!765693 () Bool)

(assert (=> bm!37995 m!765693))

(declare-fun m!765695 () Bool)

(assert (=> d!185361 m!765695))

(declare-fun m!765697 () Bool)

(assert (=> d!185361 m!765697))

(assert (=> b!518711 d!185361))

(declare-fun b!518806 () Bool)

(declare-fun e!310691 () Bool)

(declare-fun tp!161692 () Bool)

(assert (=> b!518806 (= e!310691 (and tp_is_empty!2695 tp!161692))))

(assert (=> b!518706 (= tp!161682 e!310691)))

(assert (= (and b!518706 (is-Cons!4767 (t!73367 l!3695))) b!518806))

(declare-fun b!518807 () Bool)

(declare-fun e!310692 () Bool)

(declare-fun tp!161693 () Bool)

(assert (=> b!518807 (= e!310692 (and tp_is_empty!2695 tp!161693))))

(assert (=> b!518707 (= tp!161683 e!310692)))

(assert (= (and b!518707 (is-Cons!4767 (t!73367 lIn!3))) b!518807))

(declare-fun b_lambda!20207 () Bool)

(assert (= b_lambda!20205 (or start!47258 b_lambda!20207)))

(declare-fun bs!60362 () Bool)

(declare-fun d!185365 () Bool)

(assert (= bs!60362 (and d!185365 start!47258)))

(assert (=> bs!60362 (= (dynLambda!2995 lambda!14748 (h!10168 lIn!3)) (contains!1127 l!3695 (h!10168 lIn!3)))))

(declare-fun m!765707 () Bool)

(assert (=> bs!60362 m!765707))

(assert (=> b!518776 d!185365))

(push 1)

(assert (not b!518757))

(assert (not d!185351))

(assert (not b!518779))

(assert (not b_lambda!20207))

(assert (not b!518763))

(assert (not b!518806))

(assert (not b!518745))

(assert (not bm!37995))

(assert (not d!185349))

(assert tp_is_empty!2695)

(assert (not b!518807))

(assert (not d!185361))

(assert (not bs!60362))

(assert (not b!518777))

(assert (not b!518762))

(assert (not b!518798))

(assert (not b!518743))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


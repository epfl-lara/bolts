; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713494 () Bool)

(assert start!713494)

(declare-fun b_free!134063 () Bool)

(declare-fun b_next!134853 () Bool)

(assert (=> start!713494 (= b_free!134063 (not b_next!134853))))

(declare-fun tp!2078047 () Bool)

(declare-fun b_and!351471 () Bool)

(assert (=> start!713494 (= tp!2078047 b_and!351471)))

(declare-fun b!7317891 () Bool)

(assert (=> b!7317891 true))

(declare-fun setNonEmpty!54914 () Bool)

(declare-fun setRes!54914 () Bool)

(declare-fun tp!2078050 () Bool)

(declare-fun tp_is_empty!47711 () Bool)

(assert (=> setNonEmpty!54914 (= setRes!54914 (and tp!2078050 tp_is_empty!47711))))

(declare-datatypes ((A!909 0))(
  ( (A!910 (val!29229 Int)) )
))
(declare-fun s2!427 () (Set A!909))

(declare-fun setElem!54914 () A!909)

(declare-fun setRest!54914 () (Set A!909))

(assert (=> setNonEmpty!54914 (= s2!427 (set.union (set.insert setElem!54914 (as set.empty (Set A!909))) setRest!54914))))

(declare-fun b!7317887 () Bool)

(declare-fun e!4381041 () Bool)

(declare-fun tp_is_empty!47709 () Bool)

(declare-fun tp!2078048 () Bool)

(assert (=> b!7317887 (= e!4381041 (and tp_is_empty!47709 tp!2078048))))

(declare-fun b!7317888 () Bool)

(declare-fun res!2957063 () Bool)

(declare-fun e!4381042 () Bool)

(assert (=> b!7317888 (=> (not res!2957063) (not e!4381042))))

(declare-datatypes ((B!3611 0))(
  ( (B!3612 (val!29230 Int)) )
))
(declare-datatypes ((List!71369 0))(
  ( (Nil!71245) (Cons!71245 (h!77693 B!3611) (t!385601 List!71369)) )
))
(declare-fun l2!808 () List!71369)

(assert (=> b!7317888 (= res!2957063 (is-Cons!71245 l2!808))))

(declare-fun b!7317889 () Bool)

(declare-fun e!4381043 () Bool)

(declare-fun tp!2078046 () Bool)

(assert (=> b!7317889 (= e!4381043 (and tp_is_empty!47709 tp!2078046))))

(declare-fun setIsEmpty!54914 () Bool)

(declare-fun setRes!54915 () Bool)

(assert (=> setIsEmpty!54914 setRes!54915))

(declare-fun res!2957065 () Bool)

(declare-fun e!4381040 () Bool)

(assert (=> start!713494 (=> (not res!2957065) (not e!4381040))))

(declare-fun l1!819 () List!71369)

(declare-fun lt!2602986 () (Set B!3611))

(declare-fun toList!11656 ((Set B!3611)) List!71369)

(assert (=> start!713494 (= res!2957065 (= l1!819 (toList!11656 lt!2602986)))))

(declare-fun s1!456 () (Set A!909))

(declare-fun f!803 () Int)

(declare-fun flatMap!3074 ((Set A!909) Int) (Set B!3611))

(assert (=> start!713494 (= lt!2602986 (set.union (flatMap!3074 s1!456 f!803) (flatMap!3074 s2!427 f!803)))))

(assert (=> start!713494 e!4381040))

(assert (=> start!713494 e!4381043))

(declare-fun condSetEmpty!54915 () Bool)

(assert (=> start!713494 (= condSetEmpty!54915 (= s1!456 (as set.empty (Set A!909))))))

(assert (=> start!713494 setRes!54915))

(assert (=> start!713494 tp!2078047))

(assert (=> start!713494 e!4381041))

(declare-fun condSetEmpty!54914 () Bool)

(assert (=> start!713494 (= condSetEmpty!54914 (= s2!427 (as set.empty (Set A!909))))))

(assert (=> start!713494 setRes!54914))

(declare-fun b!7317890 () Bool)

(assert (=> b!7317890 (= e!4381040 e!4381042)))

(declare-fun res!2957064 () Bool)

(assert (=> b!7317890 (=> (not res!2957064) (not e!4381042))))

(declare-fun lt!2602989 () List!71369)

(declare-fun subseq!866 (List!71369 List!71369) Bool)

(assert (=> b!7317890 (= res!2957064 (subseq!866 l2!808 lt!2602989))))

(declare-fun lt!2602991 () (Set B!3611))

(assert (=> b!7317890 (= lt!2602989 (toList!11656 lt!2602991))))

(assert (=> b!7317890 (= lt!2602991 (flatMap!3074 (set.union s1!456 s2!427) f!803))))

(declare-fun contains!20801 (List!71369 B!3611) Bool)

(assert (=> b!7317891 (= e!4381042 (not (contains!20801 l2!808 (h!77693 l2!808))))))

(declare-fun lambda!452878 () Int)

(declare-fun forall!17801 (List!71369 Int) Bool)

(assert (=> b!7317891 (forall!17801 (t!385601 l2!808) lambda!452878)))

(declare-datatypes ((Unit!164729 0))(
  ( (Unit!164730) )
))
(declare-fun lt!2602987 () Unit!164729)

(declare-fun lemmaFlatMapAssociativeToList2!13 ((Set A!909) (Set A!909) Int List!71369 List!71369) Unit!164729)

(assert (=> b!7317891 (= lt!2602987 (lemmaFlatMapAssociativeToList2!13 s1!456 s2!427 f!803 l1!819 (t!385601 l2!808)))))

(declare-fun lt!2602988 () Unit!164729)

(declare-fun subseqTail!89 (List!71369 List!71369) Unit!164729)

(assert (=> b!7317891 (= lt!2602988 (subseqTail!89 l2!808 lt!2602989))))

(assert (=> b!7317891 (= (set.member (h!77693 l2!808) lt!2602986) (set.member (h!77693 l2!808) lt!2602991))))

(declare-fun lt!2602990 () Unit!164729)

(declare-fun lemmaFlatMapAssociativeElem!5 ((Set A!909) (Set A!909) Int B!3611) Unit!164729)

(assert (=> b!7317891 (= lt!2602990 (lemmaFlatMapAssociativeElem!5 s1!456 s2!427 f!803 (h!77693 l2!808)))))

(declare-fun setNonEmpty!54915 () Bool)

(declare-fun tp!2078049 () Bool)

(assert (=> setNonEmpty!54915 (= setRes!54915 (and tp!2078049 tp_is_empty!47711))))

(declare-fun setElem!54915 () A!909)

(declare-fun setRest!54915 () (Set A!909))

(assert (=> setNonEmpty!54915 (= s1!456 (set.union (set.insert setElem!54915 (as set.empty (Set A!909))) setRest!54915))))

(declare-fun setIsEmpty!54915 () Bool)

(assert (=> setIsEmpty!54915 setRes!54914))

(assert (= (and start!713494 res!2957065) b!7317890))

(assert (= (and b!7317890 res!2957064) b!7317888))

(assert (= (and b!7317888 res!2957063) b!7317891))

(assert (= (and start!713494 (is-Cons!71245 l2!808)) b!7317889))

(assert (= (and start!713494 condSetEmpty!54915) setIsEmpty!54914))

(assert (= (and start!713494 (not condSetEmpty!54915)) setNonEmpty!54915))

(assert (= (and start!713494 (is-Cons!71245 l1!819)) b!7317887))

(assert (= (and start!713494 condSetEmpty!54914) setIsEmpty!54915))

(assert (= (and start!713494 (not condSetEmpty!54914)) setNonEmpty!54914))

(declare-fun m!7982642 () Bool)

(assert (=> start!713494 m!7982642))

(declare-fun m!7982644 () Bool)

(assert (=> start!713494 m!7982644))

(declare-fun m!7982646 () Bool)

(assert (=> start!713494 m!7982646))

(declare-fun m!7982648 () Bool)

(assert (=> b!7317890 m!7982648))

(declare-fun m!7982650 () Bool)

(assert (=> b!7317890 m!7982650))

(declare-fun m!7982652 () Bool)

(assert (=> b!7317890 m!7982652))

(declare-fun m!7982654 () Bool)

(assert (=> b!7317891 m!7982654))

(declare-fun m!7982656 () Bool)

(assert (=> b!7317891 m!7982656))

(declare-fun m!7982658 () Bool)

(assert (=> b!7317891 m!7982658))

(declare-fun m!7982660 () Bool)

(assert (=> b!7317891 m!7982660))

(declare-fun m!7982662 () Bool)

(assert (=> b!7317891 m!7982662))

(declare-fun m!7982664 () Bool)

(assert (=> b!7317891 m!7982664))

(declare-fun m!7982666 () Bool)

(assert (=> b!7317891 m!7982666))

(push 1)

(assert b_and!351471)

(assert (not b!7317889))

(assert (not b!7317887))

(assert (not b_next!134853))

(assert tp_is_empty!47709)

(assert (not b!7317891))

(assert (not setNonEmpty!54914))

(assert (not b!7317890))

(assert tp_is_empty!47711)

(assert (not start!713494))

(assert (not setNonEmpty!54915))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351471)

(assert (not b_next!134853))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7317922 () Bool)

(declare-fun e!4381066 () Bool)

(assert (=> b!7317922 (= e!4381066 (subseq!866 l2!808 (t!385601 lt!2602989)))))

(declare-fun d!2272361 () Bool)

(declare-fun res!2957083 () Bool)

(declare-fun e!4381064 () Bool)

(assert (=> d!2272361 (=> res!2957083 e!4381064)))

(assert (=> d!2272361 (= res!2957083 (is-Nil!71245 l2!808))))

(assert (=> d!2272361 (= (subseq!866 l2!808 lt!2602989) e!4381064)))

(declare-fun b!7317921 () Bool)

(declare-fun e!4381067 () Bool)

(assert (=> b!7317921 (= e!4381067 (subseq!866 (t!385601 l2!808) (t!385601 lt!2602989)))))

(declare-fun b!7317920 () Bool)

(declare-fun e!4381065 () Bool)

(assert (=> b!7317920 (= e!4381065 e!4381066)))

(declare-fun res!2957084 () Bool)

(assert (=> b!7317920 (=> res!2957084 e!4381066)))

(assert (=> b!7317920 (= res!2957084 e!4381067)))

(declare-fun res!2957085 () Bool)

(assert (=> b!7317920 (=> (not res!2957085) (not e!4381067))))

(assert (=> b!7317920 (= res!2957085 (= (h!77693 l2!808) (h!77693 lt!2602989)))))

(declare-fun b!7317919 () Bool)

(assert (=> b!7317919 (= e!4381064 e!4381065)))

(declare-fun res!2957086 () Bool)

(assert (=> b!7317919 (=> (not res!2957086) (not e!4381065))))

(assert (=> b!7317919 (= res!2957086 (is-Cons!71245 lt!2602989))))

(assert (= (and d!2272361 (not res!2957083)) b!7317919))

(assert (= (and b!7317919 res!2957086) b!7317920))

(assert (= (and b!7317920 res!2957085) b!7317921))

(assert (= (and b!7317920 (not res!2957084)) b!7317922))

(declare-fun m!7982694 () Bool)

(assert (=> b!7317922 m!7982694))

(declare-fun m!7982696 () Bool)

(assert (=> b!7317921 m!7982696))

(assert (=> b!7317890 d!2272361))

(declare-fun d!2272363 () Bool)

(declare-fun e!4381070 () Bool)

(assert (=> d!2272363 e!4381070))

(declare-fun res!2957089 () Bool)

(assert (=> d!2272363 (=> (not res!2957089) (not e!4381070))))

(declare-fun lt!2603012 () List!71369)

(declare-fun noDuplicate!3065 (List!71369) Bool)

(assert (=> d!2272363 (= res!2957089 (noDuplicate!3065 lt!2603012))))

(declare-fun choose!56786 ((Set B!3611)) List!71369)

(assert (=> d!2272363 (= lt!2603012 (choose!56786 lt!2602991))))

(assert (=> d!2272363 (= (toList!11656 lt!2602991) lt!2603012)))

(declare-fun b!7317925 () Bool)

(declare-fun content!14884 (List!71369) (Set B!3611))

(assert (=> b!7317925 (= e!4381070 (= (content!14884 lt!2603012) lt!2602991))))

(assert (= (and d!2272363 res!2957089) b!7317925))

(declare-fun m!7982698 () Bool)

(assert (=> d!2272363 m!7982698))

(declare-fun m!7982700 () Bool)

(assert (=> d!2272363 m!7982700))

(declare-fun m!7982702 () Bool)

(assert (=> b!7317925 m!7982702))

(assert (=> b!7317890 d!2272363))

(declare-fun d!2272365 () Bool)

(declare-fun choose!56787 ((Set A!909) Int) (Set B!3611))

(assert (=> d!2272365 (= (flatMap!3074 (set.union s1!456 s2!427) f!803) (choose!56787 (set.union s1!456 s2!427) f!803))))

(declare-fun bs!1915584 () Bool)

(assert (= bs!1915584 d!2272365))

(declare-fun m!7982704 () Bool)

(assert (=> bs!1915584 m!7982704))

(assert (=> b!7317890 d!2272365))

(declare-fun d!2272367 () Bool)

(declare-fun lt!2603015 () Bool)

(assert (=> d!2272367 (= lt!2603015 (set.member (h!77693 l2!808) (content!14884 l2!808)))))

(declare-fun e!4381075 () Bool)

(assert (=> d!2272367 (= lt!2603015 e!4381075)))

(declare-fun res!2957094 () Bool)

(assert (=> d!2272367 (=> (not res!2957094) (not e!4381075))))

(assert (=> d!2272367 (= res!2957094 (is-Cons!71245 l2!808))))

(assert (=> d!2272367 (= (contains!20801 l2!808 (h!77693 l2!808)) lt!2603015)))

(declare-fun b!7317930 () Bool)

(declare-fun e!4381076 () Bool)

(assert (=> b!7317930 (= e!4381075 e!4381076)))

(declare-fun res!2957095 () Bool)

(assert (=> b!7317930 (=> res!2957095 e!4381076)))

(assert (=> b!7317930 (= res!2957095 (= (h!77693 l2!808) (h!77693 l2!808)))))

(declare-fun b!7317931 () Bool)

(assert (=> b!7317931 (= e!4381076 (contains!20801 (t!385601 l2!808) (h!77693 l2!808)))))

(assert (= (and d!2272367 res!2957094) b!7317930))

(assert (= (and b!7317930 (not res!2957095)) b!7317931))

(declare-fun m!7982706 () Bool)

(assert (=> d!2272367 m!7982706))

(declare-fun m!7982708 () Bool)

(assert (=> d!2272367 m!7982708))

(declare-fun m!7982710 () Bool)

(assert (=> b!7317931 m!7982710))

(assert (=> b!7317891 d!2272367))

(declare-fun d!2272369 () Bool)

(declare-fun res!2957100 () Bool)

(declare-fun e!4381081 () Bool)

(assert (=> d!2272369 (=> res!2957100 e!4381081)))

(assert (=> d!2272369 (= res!2957100 (is-Nil!71245 (t!385601 l2!808)))))

(assert (=> d!2272369 (= (forall!17801 (t!385601 l2!808) lambda!452878) e!4381081)))

(declare-fun b!7317936 () Bool)

(declare-fun e!4381082 () Bool)

(assert (=> b!7317936 (= e!4381081 e!4381082)))

(declare-fun res!2957101 () Bool)

(assert (=> b!7317936 (=> (not res!2957101) (not e!4381082))))

(declare-fun dynLambda!29177 (Int B!3611) Bool)

(assert (=> b!7317936 (= res!2957101 (dynLambda!29177 lambda!452878 (h!77693 (t!385601 l2!808))))))

(declare-fun b!7317937 () Bool)

(assert (=> b!7317937 (= e!4381082 (forall!17801 (t!385601 (t!385601 l2!808)) lambda!452878))))

(assert (= (and d!2272369 (not res!2957100)) b!7317936))

(assert (= (and b!7317936 res!2957101) b!7317937))

(declare-fun b_lambda!282727 () Bool)

(assert (=> (not b_lambda!282727) (not b!7317936)))

(declare-fun m!7982712 () Bool)

(assert (=> b!7317936 m!7982712))

(declare-fun m!7982714 () Bool)

(assert (=> b!7317937 m!7982714))

(assert (=> b!7317891 d!2272369))

(declare-fun b!7317952 () Bool)

(declare-fun e!4381094 () Unit!164729)

(declare-fun call!665815 () Unit!164729)

(assert (=> b!7317952 (= e!4381094 call!665815)))

(declare-fun b!7317953 () Bool)

(declare-fun e!4381091 () Bool)

(assert (=> b!7317953 (= e!4381091 (subseq!866 l2!808 lt!2602989))))

(declare-fun b!7317954 () Bool)

(declare-fun e!4381093 () Unit!164729)

(declare-fun Unit!164733 () Unit!164729)

(assert (=> b!7317954 (= e!4381093 Unit!164733)))

(declare-fun b!7317955 () Bool)

(declare-fun Unit!164734 () Unit!164729)

(assert (=> b!7317955 (= e!4381094 Unit!164734)))

(declare-fun d!2272371 () Bool)

(declare-fun tail!14644 (List!71369) List!71369)

(assert (=> d!2272371 (subseq!866 (tail!14644 l2!808) lt!2602989)))

(declare-fun lt!2603018 () Unit!164729)

(assert (=> d!2272371 (= lt!2603018 e!4381093)))

(declare-fun c!1358526 () Bool)

(assert (=> d!2272371 (= c!1358526 (and (is-Cons!71245 l2!808) (is-Cons!71245 lt!2602989)))))

(assert (=> d!2272371 e!4381091))

(declare-fun res!2957104 () Bool)

(assert (=> d!2272371 (=> (not res!2957104) (not e!4381091))))

(declare-fun isEmpty!40867 (List!71369) Bool)

(assert (=> d!2272371 (= res!2957104 (not (isEmpty!40867 l2!808)))))

(assert (=> d!2272371 (= (subseqTail!89 l2!808 lt!2602989) lt!2603018)))

(declare-fun b!7317956 () Bool)

(declare-fun e!4381092 () Unit!164729)

(assert (=> b!7317956 (= e!4381093 e!4381092)))

(declare-fun c!1358527 () Bool)

(assert (=> b!7317956 (= c!1358527 (subseq!866 l2!808 (t!385601 lt!2602989)))))

(declare-fun b!7317957 () Bool)

(declare-fun c!1358528 () Bool)

(assert (=> b!7317957 (= c!1358528 (not (isEmpty!40867 (t!385601 l2!808))))))

(assert (=> b!7317957 (= e!4381092 e!4381094)))

(declare-fun b!7317958 () Bool)

(assert (=> b!7317958 (= e!4381092 call!665815)))

(declare-fun bm!665810 () Bool)

(assert (=> bm!665810 (= call!665815 (subseqTail!89 (ite c!1358527 l2!808 (t!385601 l2!808)) (t!385601 lt!2602989)))))

(assert (= (and d!2272371 res!2957104) b!7317953))

(assert (= (and d!2272371 c!1358526) b!7317956))

(assert (= (and d!2272371 (not c!1358526)) b!7317954))

(assert (= (and b!7317956 c!1358527) b!7317958))

(assert (= (and b!7317956 (not c!1358527)) b!7317957))

(assert (= (and b!7317957 c!1358528) b!7317952))

(assert (= (and b!7317957 (not c!1358528)) b!7317955))

(assert (= (or b!7317958 b!7317952) bm!665810))

(assert (=> b!7317953 m!7982648))

(declare-fun m!7982716 () Bool)

(assert (=> b!7317957 m!7982716))

(declare-fun m!7982718 () Bool)

(assert (=> d!2272371 m!7982718))

(assert (=> d!2272371 m!7982718))

(declare-fun m!7982720 () Bool)

(assert (=> d!2272371 m!7982720))

(declare-fun m!7982722 () Bool)

(assert (=> d!2272371 m!7982722))

(declare-fun m!7982724 () Bool)

(assert (=> bm!665810 m!7982724))

(assert (=> b!7317956 m!7982694))

(assert (=> b!7317891 d!2272371))

(declare-fun d!2272373 () Bool)

(assert (=> d!2272373 (= (set.member (h!77693 l2!808) (set.union (flatMap!3074 s1!456 f!803) (flatMap!3074 s2!427 f!803))) (set.member (h!77693 l2!808) (flatMap!3074 (set.union s1!456 s2!427) f!803)))))

(declare-fun lt!2603021 () Unit!164729)

(declare-fun choose!56788 ((Set A!909) (Set A!909) Int B!3611) Unit!164729)

(assert (=> d!2272373 (= lt!2603021 (choose!56788 s1!456 s2!427 f!803 (h!77693 l2!808)))))

(assert (=> d!2272373 (= (lemmaFlatMapAssociativeElem!5 s1!456 s2!427 f!803 (h!77693 l2!808)) lt!2603021)))

(declare-fun bs!1915585 () Bool)

(assert (= bs!1915585 d!2272373))

(assert (=> bs!1915585 m!7982652))

(assert (=> bs!1915585 m!7982646))

(declare-fun m!7982726 () Bool)

(assert (=> bs!1915585 m!7982726))

(declare-fun m!7982728 () Bool)

(assert (=> bs!1915585 m!7982728))

(assert (=> bs!1915585 m!7982644))

(declare-fun m!7982730 () Bool)

(assert (=> bs!1915585 m!7982730))

(assert (=> b!7317891 d!2272373))

(declare-fun bs!1915586 () Bool)

(declare-fun d!2272377 () Bool)

(assert (= bs!1915586 (and d!2272377 b!7317891)))

(declare-fun lambda!452884 () Int)

(assert (=> bs!1915586 (= lambda!452884 lambda!452878)))

(assert (=> d!2272377 true))

(assert (=> d!2272377 (forall!17801 (t!385601 l2!808) lambda!452884)))

(declare-fun lt!2603027 () Unit!164729)

(declare-fun choose!56789 ((Set A!909) (Set A!909) Int List!71369 List!71369) Unit!164729)

(assert (=> d!2272377 (= lt!2603027 (choose!56789 s1!456 s2!427 f!803 l1!819 (t!385601 l2!808)))))

(assert (=> d!2272377 (= l1!819 (toList!11656 (set.union (flatMap!3074 s1!456 f!803) (flatMap!3074 s2!427 f!803))))))

(assert (=> d!2272377 (= (lemmaFlatMapAssociativeToList2!13 s1!456 s2!427 f!803 l1!819 (t!385601 l2!808)) lt!2603027)))

(declare-fun bs!1915587 () Bool)

(assert (= bs!1915587 d!2272377))

(declare-fun m!7982738 () Bool)

(assert (=> bs!1915587 m!7982738))

(assert (=> bs!1915587 m!7982644))

(declare-fun m!7982740 () Bool)

(assert (=> bs!1915587 m!7982740))

(declare-fun m!7982742 () Bool)

(assert (=> bs!1915587 m!7982742))

(assert (=> bs!1915587 m!7982646))

(assert (=> b!7317891 d!2272377))

(declare-fun d!2272381 () Bool)

(declare-fun e!4381098 () Bool)

(assert (=> d!2272381 e!4381098))

(declare-fun res!2957108 () Bool)

(assert (=> d!2272381 (=> (not res!2957108) (not e!4381098))))

(declare-fun lt!2603028 () List!71369)

(assert (=> d!2272381 (= res!2957108 (noDuplicate!3065 lt!2603028))))

(assert (=> d!2272381 (= lt!2603028 (choose!56786 lt!2602986))))

(assert (=> d!2272381 (= (toList!11656 lt!2602986) lt!2603028)))

(declare-fun b!7317963 () Bool)

(assert (=> b!7317963 (= e!4381098 (= (content!14884 lt!2603028) lt!2602986))))

(assert (= (and d!2272381 res!2957108) b!7317963))

(declare-fun m!7982744 () Bool)

(assert (=> d!2272381 m!7982744))

(declare-fun m!7982746 () Bool)

(assert (=> d!2272381 m!7982746))

(declare-fun m!7982748 () Bool)

(assert (=> b!7317963 m!7982748))

(assert (=> start!713494 d!2272381))

(declare-fun d!2272383 () Bool)

(assert (=> d!2272383 (= (flatMap!3074 s1!456 f!803) (choose!56787 s1!456 f!803))))

(declare-fun bs!1915588 () Bool)

(assert (= bs!1915588 d!2272383))

(declare-fun m!7982750 () Bool)

(assert (=> bs!1915588 m!7982750))

(assert (=> start!713494 d!2272383))

(declare-fun d!2272385 () Bool)

(assert (=> d!2272385 (= (flatMap!3074 s2!427 f!803) (choose!56787 s2!427 f!803))))

(declare-fun bs!1915589 () Bool)

(assert (= bs!1915589 d!2272385))

(declare-fun m!7982752 () Bool)

(assert (=> bs!1915589 m!7982752))

(assert (=> start!713494 d!2272385))

(declare-fun condSetEmpty!54924 () Bool)

(assert (=> setNonEmpty!54914 (= condSetEmpty!54924 (= setRest!54914 (as set.empty (Set A!909))))))

(declare-fun setRes!54924 () Bool)

(assert (=> setNonEmpty!54914 (= tp!2078050 setRes!54924)))

(declare-fun setIsEmpty!54924 () Bool)

(assert (=> setIsEmpty!54924 setRes!54924))

(declare-fun setNonEmpty!54924 () Bool)

(declare-fun tp!2078068 () Bool)

(assert (=> setNonEmpty!54924 (= setRes!54924 (and tp!2078068 tp_is_empty!47711))))

(declare-fun setElem!54924 () A!909)

(declare-fun setRest!54924 () (Set A!909))

(assert (=> setNonEmpty!54924 (= setRest!54914 (set.union (set.insert setElem!54924 (as set.empty (Set A!909))) setRest!54924))))

(assert (= (and setNonEmpty!54914 condSetEmpty!54924) setIsEmpty!54924))

(assert (= (and setNonEmpty!54914 (not condSetEmpty!54924)) setNonEmpty!54924))

(declare-fun b!7317970 () Bool)

(declare-fun e!4381101 () Bool)

(declare-fun tp!2078071 () Bool)

(assert (=> b!7317970 (= e!4381101 (and tp_is_empty!47709 tp!2078071))))

(assert (=> b!7317887 (= tp!2078048 e!4381101)))

(assert (= (and b!7317887 (is-Cons!71245 (t!385601 l1!819))) b!7317970))

(declare-fun condSetEmpty!54925 () Bool)

(assert (=> setNonEmpty!54915 (= condSetEmpty!54925 (= setRest!54915 (as set.empty (Set A!909))))))

(declare-fun setRes!54925 () Bool)

(assert (=> setNonEmpty!54915 (= tp!2078049 setRes!54925)))

(declare-fun setIsEmpty!54925 () Bool)

(assert (=> setIsEmpty!54925 setRes!54925))

(declare-fun setNonEmpty!54925 () Bool)

(declare-fun tp!2078072 () Bool)

(assert (=> setNonEmpty!54925 (= setRes!54925 (and tp!2078072 tp_is_empty!47711))))

(declare-fun setElem!54925 () A!909)

(declare-fun setRest!54925 () (Set A!909))

(assert (=> setNonEmpty!54925 (= setRest!54915 (set.union (set.insert setElem!54925 (as set.empty (Set A!909))) setRest!54925))))

(assert (= (and setNonEmpty!54915 condSetEmpty!54925) setIsEmpty!54925))

(assert (= (and setNonEmpty!54915 (not condSetEmpty!54925)) setNonEmpty!54925))

(declare-fun b!7317971 () Bool)

(declare-fun e!4381102 () Bool)

(declare-fun tp!2078073 () Bool)

(assert (=> b!7317971 (= e!4381102 (and tp_is_empty!47709 tp!2078073))))

(assert (=> b!7317889 (= tp!2078046 e!4381102)))

(assert (= (and b!7317889 (is-Cons!71245 (t!385601 l2!808))) b!7317971))

(declare-fun b_lambda!282729 () Bool)

(assert (= b_lambda!282727 (or b!7317891 b_lambda!282729)))

(declare-fun bs!1915592 () Bool)

(declare-fun d!2272391 () Bool)

(assert (= bs!1915592 (and d!2272391 b!7317891)))

(assert (=> bs!1915592 (= (dynLambda!29177 lambda!452878 (h!77693 (t!385601 l2!808))) (contains!20801 l1!819 (h!77693 (t!385601 l2!808))))))

(declare-fun m!7982758 () Bool)

(assert (=> bs!1915592 m!7982758))

(assert (=> b!7317936 d!2272391))

(push 1)

(assert (not bm!665810))

(assert (not d!2272365))

(assert (not b!7317957))

(assert b_and!351471)

(assert (not b!7317922))

(assert (not d!2272373))

(assert (not b!7317956))

(assert (not b!7317970))

(assert (not b!7317921))

(assert (not d!2272381))

(assert (not setNonEmpty!54924))

(assert (not b!7317963))

(assert (not d!2272385))

(assert (not d!2272383))

(assert tp_is_empty!47711)

(assert (not bs!1915592))

(assert (not setNonEmpty!54925))

(assert (not b!7317925))

(assert (not b_lambda!282729))

(assert (not d!2272377))

(assert (not d!2272367))

(assert (not b!7317937))

(assert (not b_next!134853))

(assert (not d!2272363))

(assert (not b!7317931))

(assert (not b!7317953))

(assert (not d!2272371))

(assert tp_is_empty!47709)

(assert (not b!7317971))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351471)

(assert (not b_next!134853))

(check-sat)

(pop 1)


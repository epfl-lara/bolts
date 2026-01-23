; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713740 () Bool)

(assert start!713740)

(declare-fun b_free!134103 () Bool)

(declare-fun b_next!134893 () Bool)

(assert (=> start!713740 (= b_free!134103 (not b_next!134893))))

(declare-fun tp!2078499 () Bool)

(declare-fun b_and!351511 () Bool)

(assert (=> start!713740 (= tp!2078499 b_and!351511)))

(declare-fun b!7318957 () Bool)

(assert (=> b!7318957 true))

(declare-fun b!7318953 () Bool)

(declare-fun res!2957669 () Bool)

(declare-fun e!4381861 () Bool)

(assert (=> b!7318953 (=> (not res!2957669) (not e!4381861))))

(declare-datatypes ((B!3651 0))(
  ( (B!3652 (val!29269 Int)) )
))
(declare-datatypes ((List!71389 0))(
  ( (Nil!71265) (Cons!71265 (h!77713 B!3651) (t!385624 List!71389)) )
))
(declare-fun l1!805 () List!71389)

(assert (=> b!7318953 (= res!2957669 (is-Cons!71265 l1!805))))

(declare-fun b!7318954 () Bool)

(declare-fun e!4381858 () Bool)

(declare-fun tp_is_empty!47791 () Bool)

(declare-fun tp!2078500 () Bool)

(assert (=> b!7318954 (= e!4381858 (and tp_is_empty!47791 tp!2078500))))

(declare-fun setIsEmpty!55111 () Bool)

(declare-fun setRes!55112 () Bool)

(assert (=> setIsEmpty!55111 setRes!55112))

(declare-fun b!7318955 () Bool)

(declare-fun e!4381859 () Bool)

(assert (=> b!7318955 (= e!4381859 e!4381861)))

(declare-fun res!2957668 () Bool)

(assert (=> b!7318955 (=> (not res!2957668) (not e!4381861))))

(declare-fun l2!794 () List!71389)

(declare-fun lt!2603370 () (Set B!3651))

(declare-fun toList!11676 ((Set B!3651)) List!71389)

(assert (=> b!7318955 (= res!2957668 (= l2!794 (toList!11676 lt!2603370)))))

(declare-datatypes ((A!949 0))(
  ( (A!950 (val!29270 Int)) )
))
(declare-fun s2!417 () (Set A!949))

(declare-fun s1!446 () (Set A!949))

(declare-fun f!760 () Int)

(declare-fun flatMap!3094 ((Set A!949) Int) (Set B!3651))

(assert (=> b!7318955 (= lt!2603370 (flatMap!3094 (set.union s1!446 s2!417) f!760))))

(declare-fun res!2957667 () Bool)

(assert (=> start!713740 (=> (not res!2957667) (not e!4381859))))

(declare-fun lt!2603368 () List!71389)

(declare-fun subseq!886 (List!71389 List!71389) Bool)

(assert (=> start!713740 (= res!2957667 (subseq!886 l1!805 lt!2603368))))

(declare-fun lt!2603366 () (Set B!3651))

(assert (=> start!713740 (= lt!2603368 (toList!11676 lt!2603366))))

(assert (=> start!713740 (= lt!2603366 (set.union (flatMap!3094 s1!446 f!760) (flatMap!3094 s2!417 f!760)))))

(assert (=> start!713740 e!4381859))

(declare-fun condSetEmpty!55112 () Bool)

(assert (=> start!713740 (= condSetEmpty!55112 (= s2!417 (as set.empty (Set A!949))))))

(assert (=> start!713740 setRes!55112))

(declare-fun condSetEmpty!55111 () Bool)

(assert (=> start!713740 (= condSetEmpty!55111 (= s1!446 (as set.empty (Set A!949))))))

(declare-fun setRes!55111 () Bool)

(assert (=> start!713740 setRes!55111))

(assert (=> start!713740 tp!2078499))

(assert (=> start!713740 e!4381858))

(declare-fun e!4381860 () Bool)

(assert (=> start!713740 e!4381860))

(declare-fun setNonEmpty!55111 () Bool)

(declare-fun tp!2078498 () Bool)

(declare-fun tp_is_empty!47789 () Bool)

(assert (=> setNonEmpty!55111 (= setRes!55112 (and tp!2078498 tp_is_empty!47789))))

(declare-fun setElem!55112 () A!949)

(declare-fun setRest!55112 () (Set A!949))

(assert (=> setNonEmpty!55111 (= s2!417 (set.union (set.insert setElem!55112 (as set.empty (Set A!949))) setRest!55112))))

(declare-fun setIsEmpty!55112 () Bool)

(assert (=> setIsEmpty!55112 setRes!55111))

(declare-fun b!7318956 () Bool)

(declare-fun tp!2078497 () Bool)

(assert (=> b!7318956 (= e!4381860 (and tp_is_empty!47791 tp!2078497))))

(declare-fun contains!20807 (List!71389 B!3651) Bool)

(assert (=> b!7318957 (= e!4381861 (not (contains!20807 l1!805 (h!77713 l1!805))))))

(declare-fun lambda!452915 () Int)

(declare-fun forall!17807 (List!71389 Int) Bool)

(assert (=> b!7318957 (forall!17807 (t!385624 l1!805) lambda!452915)))

(declare-datatypes ((Unit!164775 0))(
  ( (Unit!164776) )
))
(declare-fun lt!2603369 () Unit!164775)

(declare-fun lemmaFlatMapAssociativeToList1!11 ((Set A!949) (Set A!949) Int List!71389 List!71389) Unit!164775)

(assert (=> b!7318957 (= lt!2603369 (lemmaFlatMapAssociativeToList1!11 s1!446 s2!417 f!760 (t!385624 l1!805) l2!794))))

(declare-fun lt!2603365 () Unit!164775)

(declare-fun subseqTail!101 (List!71389 List!71389) Unit!164775)

(assert (=> b!7318957 (= lt!2603365 (subseqTail!101 l1!805 lt!2603368))))

(assert (=> b!7318957 (= (set.member (h!77713 l1!805) lt!2603366) (set.member (h!77713 l1!805) lt!2603370))))

(declare-fun lt!2603367 () Unit!164775)

(declare-fun lemmaFlatMapAssociativeElem!19 ((Set A!949) (Set A!949) Int B!3651) Unit!164775)

(assert (=> b!7318957 (= lt!2603367 (lemmaFlatMapAssociativeElem!19 s1!446 s2!417 f!760 (h!77713 l1!805)))))

(declare-fun setNonEmpty!55112 () Bool)

(declare-fun tp!2078501 () Bool)

(assert (=> setNonEmpty!55112 (= setRes!55111 (and tp!2078501 tp_is_empty!47789))))

(declare-fun setElem!55111 () A!949)

(declare-fun setRest!55111 () (Set A!949))

(assert (=> setNonEmpty!55112 (= s1!446 (set.union (set.insert setElem!55111 (as set.empty (Set A!949))) setRest!55111))))

(assert (= (and start!713740 res!2957667) b!7318955))

(assert (= (and b!7318955 res!2957668) b!7318953))

(assert (= (and b!7318953 res!2957669) b!7318957))

(assert (= (and start!713740 condSetEmpty!55112) setIsEmpty!55111))

(assert (= (and start!713740 (not condSetEmpty!55112)) setNonEmpty!55111))

(assert (= (and start!713740 condSetEmpty!55111) setIsEmpty!55112))

(assert (= (and start!713740 (not condSetEmpty!55111)) setNonEmpty!55112))

(assert (= (and start!713740 (is-Cons!71265 l2!794)) b!7318954))

(assert (= (and start!713740 (is-Cons!71265 l1!805)) b!7318956))

(declare-fun m!7983776 () Bool)

(assert (=> b!7318955 m!7983776))

(declare-fun m!7983778 () Bool)

(assert (=> b!7318955 m!7983778))

(declare-fun m!7983780 () Bool)

(assert (=> start!713740 m!7983780))

(declare-fun m!7983782 () Bool)

(assert (=> start!713740 m!7983782))

(declare-fun m!7983784 () Bool)

(assert (=> start!713740 m!7983784))

(declare-fun m!7983786 () Bool)

(assert (=> start!713740 m!7983786))

(declare-fun m!7983788 () Bool)

(assert (=> b!7318957 m!7983788))

(declare-fun m!7983790 () Bool)

(assert (=> b!7318957 m!7983790))

(declare-fun m!7983792 () Bool)

(assert (=> b!7318957 m!7983792))

(declare-fun m!7983794 () Bool)

(assert (=> b!7318957 m!7983794))

(declare-fun m!7983796 () Bool)

(assert (=> b!7318957 m!7983796))

(declare-fun m!7983798 () Bool)

(assert (=> b!7318957 m!7983798))

(declare-fun m!7983800 () Bool)

(assert (=> b!7318957 m!7983800))

(push 1)

(assert (not start!713740))

(assert (not setNonEmpty!55112))

(assert (not setNonEmpty!55111))

(assert (not b!7318955))

(assert (not b!7318957))

(assert tp_is_empty!47789)

(assert tp_is_empty!47791)

(assert b_and!351511)

(assert (not b!7318956))

(assert (not b!7318954))

(assert (not b_next!134893))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351511)

(assert (not b_next!134893))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7318991 () Bool)

(declare-fun e!4381884 () Unit!164775)

(declare-fun Unit!164779 () Unit!164775)

(assert (=> b!7318991 (= e!4381884 Unit!164779)))

(declare-fun b!7318992 () Bool)

(declare-fun c!1358633 () Bool)

(declare-fun isEmpty!40876 (List!71389) Bool)

(assert (=> b!7318992 (= c!1358633 (not (isEmpty!40876 (t!385624 l1!805))))))

(declare-fun e!4381883 () Unit!164775)

(assert (=> b!7318992 (= e!4381883 e!4381884)))

(declare-fun b!7318993 () Bool)

(declare-fun call!665842 () Unit!164775)

(assert (=> b!7318993 (= e!4381884 call!665842)))

(declare-fun b!7318994 () Bool)

(assert (=> b!7318994 (= e!4381883 call!665842)))

(declare-fun b!7318995 () Bool)

(declare-fun e!4381882 () Unit!164775)

(assert (=> b!7318995 (= e!4381882 e!4381883)))

(declare-fun c!1358635 () Bool)

(assert (=> b!7318995 (= c!1358635 (subseq!886 l1!805 (t!385624 lt!2603368)))))

(declare-fun b!7318996 () Bool)

(declare-fun e!4381885 () Bool)

(assert (=> b!7318996 (= e!4381885 (subseq!886 l1!805 lt!2603368))))

(declare-fun b!7318997 () Bool)

(declare-fun Unit!164780 () Unit!164775)

(assert (=> b!7318997 (= e!4381882 Unit!164780)))

(declare-fun d!2272767 () Bool)

(declare-fun tail!14651 (List!71389) List!71389)

(assert (=> d!2272767 (subseq!886 (tail!14651 l1!805) lt!2603368)))

(declare-fun lt!2603391 () Unit!164775)

(assert (=> d!2272767 (= lt!2603391 e!4381882)))

(declare-fun c!1358634 () Bool)

(assert (=> d!2272767 (= c!1358634 (and (is-Cons!71265 l1!805) (is-Cons!71265 lt!2603368)))))

(assert (=> d!2272767 e!4381885))

(declare-fun res!2957681 () Bool)

(assert (=> d!2272767 (=> (not res!2957681) (not e!4381885))))

(assert (=> d!2272767 (= res!2957681 (not (isEmpty!40876 l1!805)))))

(assert (=> d!2272767 (= (subseqTail!101 l1!805 lt!2603368) lt!2603391)))

(declare-fun bm!665837 () Bool)

(assert (=> bm!665837 (= call!665842 (subseqTail!101 (ite c!1358635 l1!805 (t!385624 l1!805)) (t!385624 lt!2603368)))))

(assert (= (and d!2272767 res!2957681) b!7318996))

(assert (= (and d!2272767 c!1358634) b!7318995))

(assert (= (and d!2272767 (not c!1358634)) b!7318997))

(assert (= (and b!7318995 c!1358635) b!7318994))

(assert (= (and b!7318995 (not c!1358635)) b!7318992))

(assert (= (and b!7318992 c!1358633) b!7318993))

(assert (= (and b!7318992 (not c!1358633)) b!7318991))

(assert (= (or b!7318994 b!7318993) bm!665837))

(declare-fun m!7983828 () Bool)

(assert (=> b!7318992 m!7983828))

(declare-fun m!7983830 () Bool)

(assert (=> b!7318995 m!7983830))

(declare-fun m!7983832 () Bool)

(assert (=> bm!665837 m!7983832))

(declare-fun m!7983834 () Bool)

(assert (=> d!2272767 m!7983834))

(assert (=> d!2272767 m!7983834))

(declare-fun m!7983836 () Bool)

(assert (=> d!2272767 m!7983836))

(declare-fun m!7983838 () Bool)

(assert (=> d!2272767 m!7983838))

(assert (=> b!7318996 m!7983780))

(assert (=> b!7318957 d!2272767))

(declare-fun bs!1915679 () Bool)

(declare-fun d!2272769 () Bool)

(assert (= bs!1915679 (and d!2272769 b!7318957)))

(declare-fun lambda!452921 () Int)

(assert (=> bs!1915679 (= lambda!452921 lambda!452915)))

(assert (=> d!2272769 true))

(assert (=> d!2272769 (forall!17807 (t!385624 l1!805) lambda!452921)))

(declare-fun lt!2603394 () Unit!164775)

(declare-fun choose!56821 ((Set A!949) (Set A!949) Int List!71389 List!71389) Unit!164775)

(assert (=> d!2272769 (= lt!2603394 (choose!56821 s1!446 s2!417 f!760 (t!385624 l1!805) l2!794))))

(assert (=> d!2272769 (subseq!886 (t!385624 l1!805) (toList!11676 (set.union (flatMap!3094 s1!446 f!760) (flatMap!3094 s2!417 f!760))))))

(assert (=> d!2272769 (= (lemmaFlatMapAssociativeToList1!11 s1!446 s2!417 f!760 (t!385624 l1!805) l2!794) lt!2603394)))

(declare-fun bs!1915680 () Bool)

(assert (= bs!1915680 d!2272769))

(assert (=> bs!1915680 m!7983786))

(declare-fun m!7983840 () Bool)

(assert (=> bs!1915680 m!7983840))

(assert (=> bs!1915680 m!7983784))

(declare-fun m!7983842 () Bool)

(assert (=> bs!1915680 m!7983842))

(assert (=> bs!1915680 m!7983842))

(declare-fun m!7983844 () Bool)

(assert (=> bs!1915680 m!7983844))

(declare-fun m!7983846 () Bool)

(assert (=> bs!1915680 m!7983846))

(assert (=> b!7318957 d!2272769))

(declare-fun d!2272771 () Bool)

(declare-fun res!2957686 () Bool)

(declare-fun e!4381890 () Bool)

(assert (=> d!2272771 (=> res!2957686 e!4381890)))

(assert (=> d!2272771 (= res!2957686 (is-Nil!71265 (t!385624 l1!805)))))

(assert (=> d!2272771 (= (forall!17807 (t!385624 l1!805) lambda!452915) e!4381890)))

(declare-fun b!7319002 () Bool)

(declare-fun e!4381891 () Bool)

(assert (=> b!7319002 (= e!4381890 e!4381891)))

(declare-fun res!2957687 () Bool)

(assert (=> b!7319002 (=> (not res!2957687) (not e!4381891))))

(declare-fun dynLambda!29181 (Int B!3651) Bool)

(assert (=> b!7319002 (= res!2957687 (dynLambda!29181 lambda!452915 (h!77713 (t!385624 l1!805))))))

(declare-fun b!7319003 () Bool)

(assert (=> b!7319003 (= e!4381891 (forall!17807 (t!385624 (t!385624 l1!805)) lambda!452915))))

(assert (= (and d!2272771 (not res!2957686)) b!7319002))

(assert (= (and b!7319002 res!2957687) b!7319003))

(declare-fun b_lambda!282767 () Bool)

(assert (=> (not b_lambda!282767) (not b!7319002)))

(declare-fun m!7983848 () Bool)

(assert (=> b!7319002 m!7983848))

(declare-fun m!7983850 () Bool)

(assert (=> b!7319003 m!7983850))

(assert (=> b!7318957 d!2272771))

(declare-fun d!2272773 () Bool)

(assert (=> d!2272773 (= (set.member (h!77713 l1!805) (set.union (flatMap!3094 s1!446 f!760) (flatMap!3094 s2!417 f!760))) (set.member (h!77713 l1!805) (flatMap!3094 (set.union s1!446 s2!417) f!760)))))

(declare-fun lt!2603397 () Unit!164775)

(declare-fun choose!56822 ((Set A!949) (Set A!949) Int B!3651) Unit!164775)

(assert (=> d!2272773 (= lt!2603397 (choose!56822 s1!446 s2!417 f!760 (h!77713 l1!805)))))

(assert (=> d!2272773 (= (lemmaFlatMapAssociativeElem!19 s1!446 s2!417 f!760 (h!77713 l1!805)) lt!2603397)))

(declare-fun bs!1915681 () Bool)

(assert (= bs!1915681 d!2272773))

(declare-fun m!7983852 () Bool)

(assert (=> bs!1915681 m!7983852))

(assert (=> bs!1915681 m!7983778))

(assert (=> bs!1915681 m!7983786))

(declare-fun m!7983854 () Bool)

(assert (=> bs!1915681 m!7983854))

(assert (=> bs!1915681 m!7983784))

(declare-fun m!7983856 () Bool)

(assert (=> bs!1915681 m!7983856))

(assert (=> b!7318957 d!2272773))

(declare-fun d!2272777 () Bool)

(declare-fun lt!2603402 () Bool)

(declare-fun content!14895 (List!71389) (Set B!3651))

(assert (=> d!2272777 (= lt!2603402 (set.member (h!77713 l1!805) (content!14895 l1!805)))))

(declare-fun e!4381898 () Bool)

(assert (=> d!2272777 (= lt!2603402 e!4381898)))

(declare-fun res!2957694 () Bool)

(assert (=> d!2272777 (=> (not res!2957694) (not e!4381898))))

(assert (=> d!2272777 (= res!2957694 (is-Cons!71265 l1!805))))

(assert (=> d!2272777 (= (contains!20807 l1!805 (h!77713 l1!805)) lt!2603402)))

(declare-fun b!7319011 () Bool)

(declare-fun e!4381899 () Bool)

(assert (=> b!7319011 (= e!4381898 e!4381899)))

(declare-fun res!2957695 () Bool)

(assert (=> b!7319011 (=> res!2957695 e!4381899)))

(assert (=> b!7319011 (= res!2957695 (= (h!77713 l1!805) (h!77713 l1!805)))))

(declare-fun b!7319012 () Bool)

(assert (=> b!7319012 (= e!4381899 (contains!20807 (t!385624 l1!805) (h!77713 l1!805)))))

(assert (= (and d!2272777 res!2957694) b!7319011))

(assert (= (and b!7319011 (not res!2957695)) b!7319012))

(declare-fun m!7983858 () Bool)

(assert (=> d!2272777 m!7983858))

(declare-fun m!7983860 () Bool)

(assert (=> d!2272777 m!7983860))

(declare-fun m!7983862 () Bool)

(assert (=> b!7319012 m!7983862))

(assert (=> b!7318957 d!2272777))

(declare-fun b!7319023 () Bool)

(declare-fun e!4381910 () Bool)

(declare-fun e!4381911 () Bool)

(assert (=> b!7319023 (= e!4381910 e!4381911)))

(declare-fun res!2957705 () Bool)

(assert (=> b!7319023 (=> res!2957705 e!4381911)))

(declare-fun e!4381912 () Bool)

(assert (=> b!7319023 (= res!2957705 e!4381912)))

(declare-fun res!2957708 () Bool)

(assert (=> b!7319023 (=> (not res!2957708) (not e!4381912))))

(assert (=> b!7319023 (= res!2957708 (= (h!77713 l1!805) (h!77713 lt!2603368)))))

(declare-fun b!7319024 () Bool)

(assert (=> b!7319024 (= e!4381912 (subseq!886 (t!385624 l1!805) (t!385624 lt!2603368)))))

(declare-fun b!7319025 () Bool)

(assert (=> b!7319025 (= e!4381911 (subseq!886 l1!805 (t!385624 lt!2603368)))))

(declare-fun b!7319022 () Bool)

(declare-fun e!4381909 () Bool)

(assert (=> b!7319022 (= e!4381909 e!4381910)))

(declare-fun res!2957707 () Bool)

(assert (=> b!7319022 (=> (not res!2957707) (not e!4381910))))

(assert (=> b!7319022 (= res!2957707 (is-Cons!71265 lt!2603368))))

(declare-fun d!2272779 () Bool)

(declare-fun res!2957706 () Bool)

(assert (=> d!2272779 (=> res!2957706 e!4381909)))

(assert (=> d!2272779 (= res!2957706 (is-Nil!71265 l1!805))))

(assert (=> d!2272779 (= (subseq!886 l1!805 lt!2603368) e!4381909)))

(assert (= (and d!2272779 (not res!2957706)) b!7319022))

(assert (= (and b!7319022 res!2957707) b!7319023))

(assert (= (and b!7319023 res!2957708) b!7319024))

(assert (= (and b!7319023 (not res!2957705)) b!7319025))

(declare-fun m!7983872 () Bool)

(assert (=> b!7319024 m!7983872))

(assert (=> b!7319025 m!7983830))

(assert (=> start!713740 d!2272779))

(declare-fun d!2272785 () Bool)

(declare-fun e!4381915 () Bool)

(assert (=> d!2272785 e!4381915))

(declare-fun res!2957711 () Bool)

(assert (=> d!2272785 (=> (not res!2957711) (not e!4381915))))

(declare-fun lt!2603406 () List!71389)

(declare-fun noDuplicate!3076 (List!71389) Bool)

(assert (=> d!2272785 (= res!2957711 (noDuplicate!3076 lt!2603406))))

(declare-fun choose!56823 ((Set B!3651)) List!71389)

(assert (=> d!2272785 (= lt!2603406 (choose!56823 lt!2603366))))

(assert (=> d!2272785 (= (toList!11676 lt!2603366) lt!2603406)))

(declare-fun b!7319028 () Bool)

(assert (=> b!7319028 (= e!4381915 (= (content!14895 lt!2603406) lt!2603366))))

(assert (= (and d!2272785 res!2957711) b!7319028))

(declare-fun m!7983874 () Bool)

(assert (=> d!2272785 m!7983874))

(declare-fun m!7983876 () Bool)

(assert (=> d!2272785 m!7983876))

(declare-fun m!7983878 () Bool)

(assert (=> b!7319028 m!7983878))

(assert (=> start!713740 d!2272785))

(declare-fun d!2272787 () Bool)

(declare-fun choose!56824 ((Set A!949) Int) (Set B!3651))

(assert (=> d!2272787 (= (flatMap!3094 s1!446 f!760) (choose!56824 s1!446 f!760))))

(declare-fun bs!1915683 () Bool)

(assert (= bs!1915683 d!2272787))

(declare-fun m!7983880 () Bool)

(assert (=> bs!1915683 m!7983880))

(assert (=> start!713740 d!2272787))

(declare-fun d!2272789 () Bool)

(assert (=> d!2272789 (= (flatMap!3094 s2!417 f!760) (choose!56824 s2!417 f!760))))

(declare-fun bs!1915684 () Bool)

(assert (= bs!1915684 d!2272789))

(declare-fun m!7983882 () Bool)

(assert (=> bs!1915684 m!7983882))

(assert (=> start!713740 d!2272789))

(declare-fun d!2272791 () Bool)

(declare-fun e!4381916 () Bool)

(assert (=> d!2272791 e!4381916))

(declare-fun res!2957712 () Bool)

(assert (=> d!2272791 (=> (not res!2957712) (not e!4381916))))

(declare-fun lt!2603407 () List!71389)

(assert (=> d!2272791 (= res!2957712 (noDuplicate!3076 lt!2603407))))

(assert (=> d!2272791 (= lt!2603407 (choose!56823 lt!2603370))))

(assert (=> d!2272791 (= (toList!11676 lt!2603370) lt!2603407)))

(declare-fun b!7319029 () Bool)

(assert (=> b!7319029 (= e!4381916 (= (content!14895 lt!2603407) lt!2603370))))

(assert (= (and d!2272791 res!2957712) b!7319029))

(declare-fun m!7983884 () Bool)

(assert (=> d!2272791 m!7983884))

(declare-fun m!7983886 () Bool)

(assert (=> d!2272791 m!7983886))

(declare-fun m!7983888 () Bool)

(assert (=> b!7319029 m!7983888))

(assert (=> b!7318955 d!2272791))

(declare-fun d!2272793 () Bool)

(assert (=> d!2272793 (= (flatMap!3094 (set.union s1!446 s2!417) f!760) (choose!56824 (set.union s1!446 s2!417) f!760))))

(declare-fun bs!1915685 () Bool)

(assert (= bs!1915685 d!2272793))

(declare-fun m!7983890 () Bool)

(assert (=> bs!1915685 m!7983890))

(assert (=> b!7318955 d!2272793))

(declare-fun b!7319034 () Bool)

(declare-fun e!4381921 () Bool)

(declare-fun tp!2078519 () Bool)

(assert (=> b!7319034 (= e!4381921 (and tp_is_empty!47791 tp!2078519))))

(assert (=> b!7318954 (= tp!2078500 e!4381921)))

(assert (= (and b!7318954 (is-Cons!71265 (t!385624 l2!794))) b!7319034))

(declare-fun condSetEmpty!55121 () Bool)

(assert (=> setNonEmpty!55112 (= condSetEmpty!55121 (= setRest!55111 (as set.empty (Set A!949))))))

(declare-fun setRes!55121 () Bool)

(assert (=> setNonEmpty!55112 (= tp!2078501 setRes!55121)))

(declare-fun setIsEmpty!55121 () Bool)

(assert (=> setIsEmpty!55121 setRes!55121))

(declare-fun setNonEmpty!55121 () Bool)

(declare-fun tp!2078522 () Bool)

(assert (=> setNonEmpty!55121 (= setRes!55121 (and tp!2078522 tp_is_empty!47789))))

(declare-fun setElem!55121 () A!949)

(declare-fun setRest!55121 () (Set A!949))

(assert (=> setNonEmpty!55121 (= setRest!55111 (set.union (set.insert setElem!55121 (as set.empty (Set A!949))) setRest!55121))))

(assert (= (and setNonEmpty!55112 condSetEmpty!55121) setIsEmpty!55121))

(assert (= (and setNonEmpty!55112 (not condSetEmpty!55121)) setNonEmpty!55121))

(declare-fun condSetEmpty!55122 () Bool)

(assert (=> setNonEmpty!55111 (= condSetEmpty!55122 (= setRest!55112 (as set.empty (Set A!949))))))

(declare-fun setRes!55122 () Bool)

(assert (=> setNonEmpty!55111 (= tp!2078498 setRes!55122)))

(declare-fun setIsEmpty!55122 () Bool)

(assert (=> setIsEmpty!55122 setRes!55122))

(declare-fun setNonEmpty!55122 () Bool)

(declare-fun tp!2078523 () Bool)

(assert (=> setNonEmpty!55122 (= setRes!55122 (and tp!2078523 tp_is_empty!47789))))

(declare-fun setElem!55122 () A!949)

(declare-fun setRest!55122 () (Set A!949))

(assert (=> setNonEmpty!55122 (= setRest!55112 (set.union (set.insert setElem!55122 (as set.empty (Set A!949))) setRest!55122))))

(assert (= (and setNonEmpty!55111 condSetEmpty!55122) setIsEmpty!55122))

(assert (= (and setNonEmpty!55111 (not condSetEmpty!55122)) setNonEmpty!55122))

(declare-fun b!7319045 () Bool)

(declare-fun e!4381928 () Bool)

(declare-fun tp!2078524 () Bool)

(assert (=> b!7319045 (= e!4381928 (and tp_is_empty!47791 tp!2078524))))

(assert (=> b!7318956 (= tp!2078497 e!4381928)))

(assert (= (and b!7318956 (is-Cons!71265 (t!385624 l1!805))) b!7319045))

(declare-fun b_lambda!282769 () Bool)

(assert (= b_lambda!282767 (or b!7318957 b_lambda!282769)))

(declare-fun bs!1915686 () Bool)

(declare-fun d!2272795 () Bool)

(assert (= bs!1915686 (and d!2272795 b!7318957)))

(assert (=> bs!1915686 (= (dynLambda!29181 lambda!452915 (h!77713 (t!385624 l1!805))) (contains!20807 l2!794 (h!77713 (t!385624 l1!805))))))

(declare-fun m!7983892 () Bool)

(assert (=> bs!1915686 m!7983892))

(assert (=> b!7319002 d!2272795))

(push 1)

(assert (not b!7319024))

(assert (not d!2272769))

(assert (not b!7318992))

(assert (not setNonEmpty!55122))

(assert (not setNonEmpty!55121))

(assert (not b_next!134893))

(assert (not d!2272791))

(assert (not b_lambda!282769))

(assert (not d!2272777))

(assert (not b!7318995))

(assert (not d!2272773))

(assert (not b!7319034))

(assert (not b!7319003))

(assert b_and!351511)

(assert (not d!2272793))

(assert (not b!7319028))

(assert (not d!2272787))

(assert (not b!7318996))

(assert (not d!2272789))

(assert (not b!7319012))

(assert (not d!2272785))

(assert (not b!7319029))

(assert (not b!7319025))

(assert (not b!7319045))

(assert (not bs!1915686))

(assert (not bm!665837))

(assert tp_is_empty!47789)

(assert (not d!2272767))

(assert tp_is_empty!47791)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351511)

(assert (not b_next!134893))

(check-sat)

(pop 1)


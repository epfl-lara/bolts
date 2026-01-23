; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693438 () Bool)

(assert start!693438)

(declare-fun b_free!133691 () Bool)

(declare-fun b_next!134481 () Bool)

(assert (=> start!693438 (= b_free!133691 (not b_next!134481))))

(declare-fun tp!1961004 () Bool)

(declare-fun b_and!350787 () Bool)

(assert (=> start!693438 (= tp!1961004 b_and!350787)))

(declare-fun b!7121755 () Bool)

(assert (=> b!7121755 true))

(declare-fun e!4279294 () Bool)

(declare-datatypes ((B!3255 0))(
  ( (B!3256 (val!27923 Int)) )
))
(declare-datatypes ((List!68997 0))(
  ( (Nil!68873) (Cons!68873 (h!75321 B!3255) (t!382904 List!68997)) )
))
(declare-fun l1!756 () List!68997)

(declare-fun contains!20519 (List!68997 B!3255) Bool)

(assert (=> b!7121755 (= e!4279294 (not (contains!20519 l1!756 (h!75321 l1!756))))))

(declare-fun lambda!432880 () Int)

(declare-fun forall!16890 (List!68997 Int) Bool)

(assert (=> b!7121755 (forall!16890 (t!382904 l1!756) lambda!432880)))

(declare-datatypes ((A!597 0))(
  ( (A!598 (val!27924 Int)) )
))
(declare-fun s1!414 () (Set A!597))

(declare-datatypes ((Unit!162695 0))(
  ( (Unit!162696) )
))
(declare-fun lt!2561923 () Unit!162695)

(declare-fun s2!385 () (Set A!597))

(declare-fun l2!745 () List!68997)

(declare-fun f!567 () Int)

(declare-fun lemmaMapAssociativeToList1!11 ((Set A!597) (Set A!597) Int List!68997 List!68997) Unit!162695)

(assert (=> b!7121755 (= lt!2561923 (lemmaMapAssociativeToList1!11 s1!414 s2!385 f!567 (t!382904 l1!756) l2!745))))

(declare-fun lt!2561922 () Unit!162695)

(declare-fun lt!2561921 () List!68997)

(declare-fun subseqTail!19 (List!68997 List!68997) Unit!162695)

(assert (=> b!7121755 (= lt!2561922 (subseqTail!19 l1!756 lt!2561921))))

(declare-fun lt!2561920 () (Set B!3255))

(declare-fun lt!2561919 () (Set B!3255))

(assert (=> b!7121755 (= (set.member (h!75321 l1!756) lt!2561920) (set.member (h!75321 l1!756) lt!2561919))))

(declare-fun lt!2561924 () Unit!162695)

(declare-fun lemmaMapAssociativeElem!5 ((Set A!597) (Set A!597) Int B!3255) Unit!162695)

(assert (=> b!7121755 (= lt!2561924 (lemmaMapAssociativeElem!5 s1!414 s2!385 f!567 (h!75321 l1!756)))))

(declare-fun b!7121756 () Bool)

(declare-fun e!4279291 () Bool)

(declare-fun tp_is_empty!45345 () Bool)

(declare-fun tp!1961001 () Bool)

(assert (=> b!7121756 (= e!4279291 (and tp_is_empty!45345 tp!1961001))))

(declare-fun res!2905471 () Bool)

(declare-fun e!4279293 () Bool)

(assert (=> start!693438 (=> (not res!2905471) (not e!4279293))))

(declare-fun subseq!736 (List!68997 List!68997) Bool)

(assert (=> start!693438 (= res!2905471 (subseq!736 l1!756 lt!2561921))))

(declare-fun toList!11100 ((Set B!3255)) List!68997)

(assert (=> start!693438 (= lt!2561921 (toList!11100 lt!2561920))))

(declare-fun map!16394 ((Set A!597) Int) (Set B!3255))

(assert (=> start!693438 (= lt!2561920 (set.union (map!16394 s1!414 f!567) (map!16394 s2!385 f!567)))))

(assert (=> start!693438 e!4279293))

(assert (=> start!693438 e!4279291))

(declare-fun condSetEmpty!50982 () Bool)

(assert (=> start!693438 (= condSetEmpty!50982 (= s1!414 (as set.empty (Set A!597))))))

(declare-fun setRes!50982 () Bool)

(assert (=> start!693438 setRes!50982))

(declare-fun condSetEmpty!50983 () Bool)

(assert (=> start!693438 (= condSetEmpty!50983 (= s2!385 (as set.empty (Set A!597))))))

(declare-fun setRes!50983 () Bool)

(assert (=> start!693438 setRes!50983))

(declare-fun e!4279292 () Bool)

(assert (=> start!693438 e!4279292))

(assert (=> start!693438 tp!1961004))

(declare-fun setNonEmpty!50982 () Bool)

(declare-fun tp!1961005 () Bool)

(declare-fun tp_is_empty!45347 () Bool)

(assert (=> setNonEmpty!50982 (= setRes!50982 (and tp!1961005 tp_is_empty!45347))))

(declare-fun setElem!50982 () A!597)

(declare-fun setRest!50982 () (Set A!597))

(assert (=> setNonEmpty!50982 (= s1!414 (set.union (set.insert setElem!50982 (as set.empty (Set A!597))) setRest!50982))))

(declare-fun setNonEmpty!50983 () Bool)

(declare-fun tp!1961002 () Bool)

(assert (=> setNonEmpty!50983 (= setRes!50983 (and tp!1961002 tp_is_empty!45347))))

(declare-fun setElem!50983 () A!597)

(declare-fun setRest!50983 () (Set A!597))

(assert (=> setNonEmpty!50983 (= s2!385 (set.union (set.insert setElem!50983 (as set.empty (Set A!597))) setRest!50983))))

(declare-fun b!7121757 () Bool)

(declare-fun res!2905470 () Bool)

(assert (=> b!7121757 (=> (not res!2905470) (not e!4279294))))

(assert (=> b!7121757 (= res!2905470 (is-Cons!68873 l1!756))))

(declare-fun setIsEmpty!50982 () Bool)

(assert (=> setIsEmpty!50982 setRes!50983))

(declare-fun setIsEmpty!50983 () Bool)

(assert (=> setIsEmpty!50983 setRes!50982))

(declare-fun b!7121758 () Bool)

(declare-fun tp!1961003 () Bool)

(assert (=> b!7121758 (= e!4279292 (and tp_is_empty!45345 tp!1961003))))

(declare-fun b!7121759 () Bool)

(assert (=> b!7121759 (= e!4279293 e!4279294)))

(declare-fun res!2905469 () Bool)

(assert (=> b!7121759 (=> (not res!2905469) (not e!4279294))))

(assert (=> b!7121759 (= res!2905469 (= l2!745 (toList!11100 lt!2561919)))))

(assert (=> b!7121759 (= lt!2561919 (map!16394 (set.union s1!414 s2!385) f!567))))

(assert (= (and start!693438 res!2905471) b!7121759))

(assert (= (and b!7121759 res!2905469) b!7121757))

(assert (= (and b!7121757 res!2905470) b!7121755))

(assert (= (and start!693438 (is-Cons!68873 l1!756)) b!7121756))

(assert (= (and start!693438 condSetEmpty!50982) setIsEmpty!50983))

(assert (= (and start!693438 (not condSetEmpty!50982)) setNonEmpty!50982))

(assert (= (and start!693438 condSetEmpty!50983) setIsEmpty!50982))

(assert (= (and start!693438 (not condSetEmpty!50983)) setNonEmpty!50983))

(assert (= (and start!693438 (is-Cons!68873 l2!745)) b!7121758))

(declare-fun m!7838988 () Bool)

(assert (=> b!7121755 m!7838988))

(declare-fun m!7838990 () Bool)

(assert (=> b!7121755 m!7838990))

(declare-fun m!7838992 () Bool)

(assert (=> b!7121755 m!7838992))

(declare-fun m!7838994 () Bool)

(assert (=> b!7121755 m!7838994))

(declare-fun m!7838996 () Bool)

(assert (=> b!7121755 m!7838996))

(declare-fun m!7838998 () Bool)

(assert (=> b!7121755 m!7838998))

(declare-fun m!7839000 () Bool)

(assert (=> b!7121755 m!7839000))

(declare-fun m!7839002 () Bool)

(assert (=> start!693438 m!7839002))

(declare-fun m!7839004 () Bool)

(assert (=> start!693438 m!7839004))

(declare-fun m!7839006 () Bool)

(assert (=> start!693438 m!7839006))

(declare-fun m!7839008 () Bool)

(assert (=> start!693438 m!7839008))

(declare-fun m!7839010 () Bool)

(assert (=> b!7121759 m!7839010))

(declare-fun m!7839012 () Bool)

(assert (=> b!7121759 m!7839012))

(push 1)

(assert (not setNonEmpty!50983))

(assert (not b_next!134481))

(assert (not b!7121759))

(assert (not start!693438))

(assert tp_is_empty!45345)

(assert (not b!7121758))

(assert (not setNonEmpty!50982))

(assert b_and!350787)

(assert (not b!7121756))

(assert tp_is_empty!45347)

(assert (not b!7121755))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350787)

(assert (not b_next!134481))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2222328 () Bool)

(declare-fun e!4279309 () Bool)

(assert (=> d!2222328 e!4279309))

(declare-fun res!2905483 () Bool)

(assert (=> d!2222328 (=> (not res!2905483) (not e!4279309))))

(declare-fun lt!2561945 () List!68997)

(declare-fun noDuplicate!2782 (List!68997) Bool)

(assert (=> d!2222328 (= res!2905483 (noDuplicate!2782 lt!2561945))))

(declare-fun choose!54983 ((Set B!3255)) List!68997)

(assert (=> d!2222328 (= lt!2561945 (choose!54983 lt!2561919))))

(assert (=> d!2222328 (= (toList!11100 lt!2561919) lt!2561945)))

(declare-fun b!7121781 () Bool)

(declare-fun content!14080 (List!68997) (Set B!3255))

(assert (=> b!7121781 (= e!4279309 (= (content!14080 lt!2561945) lt!2561919))))

(assert (= (and d!2222328 res!2905483) b!7121781))

(declare-fun m!7839040 () Bool)

(assert (=> d!2222328 m!7839040))

(declare-fun m!7839042 () Bool)

(assert (=> d!2222328 m!7839042))

(declare-fun m!7839044 () Bool)

(assert (=> b!7121781 m!7839044))

(assert (=> b!7121759 d!2222328))

(declare-fun d!2222330 () Bool)

(declare-fun choose!54984 ((Set A!597) Int) (Set B!3255))

(assert (=> d!2222330 (= (map!16394 (set.union s1!414 s2!385) f!567) (choose!54984 (set.union s1!414 s2!385) f!567))))

(declare-fun bs!1886007 () Bool)

(assert (= bs!1886007 d!2222330))

(declare-fun m!7839046 () Bool)

(assert (=> bs!1886007 m!7839046))

(assert (=> b!7121759 d!2222330))

(declare-fun d!2222332 () Bool)

(declare-fun lt!2561948 () Bool)

(assert (=> d!2222332 (= lt!2561948 (set.member (h!75321 l1!756) (content!14080 l1!756)))))

(declare-fun e!4279315 () Bool)

(assert (=> d!2222332 (= lt!2561948 e!4279315)))

(declare-fun res!2905488 () Bool)

(assert (=> d!2222332 (=> (not res!2905488) (not e!4279315))))

(assert (=> d!2222332 (= res!2905488 (is-Cons!68873 l1!756))))

(assert (=> d!2222332 (= (contains!20519 l1!756 (h!75321 l1!756)) lt!2561948)))

(declare-fun b!7121786 () Bool)

(declare-fun e!4279314 () Bool)

(assert (=> b!7121786 (= e!4279315 e!4279314)))

(declare-fun res!2905489 () Bool)

(assert (=> b!7121786 (=> res!2905489 e!4279314)))

(assert (=> b!7121786 (= res!2905489 (= (h!75321 l1!756) (h!75321 l1!756)))))

(declare-fun b!7121787 () Bool)

(assert (=> b!7121787 (= e!4279314 (contains!20519 (t!382904 l1!756) (h!75321 l1!756)))))

(assert (= (and d!2222332 res!2905488) b!7121786))

(assert (= (and b!7121786 (not res!2905489)) b!7121787))

(declare-fun m!7839048 () Bool)

(assert (=> d!2222332 m!7839048))

(declare-fun m!7839050 () Bool)

(assert (=> d!2222332 m!7839050))

(declare-fun m!7839052 () Bool)

(assert (=> b!7121787 m!7839052))

(assert (=> b!7121755 d!2222332))

(declare-fun d!2222334 () Bool)

(declare-fun res!2905494 () Bool)

(declare-fun e!4279320 () Bool)

(assert (=> d!2222334 (=> res!2905494 e!4279320)))

(assert (=> d!2222334 (= res!2905494 (is-Nil!68873 (t!382904 l1!756)))))

(assert (=> d!2222334 (= (forall!16890 (t!382904 l1!756) lambda!432880) e!4279320)))

(declare-fun b!7121792 () Bool)

(declare-fun e!4279321 () Bool)

(assert (=> b!7121792 (= e!4279320 e!4279321)))

(declare-fun res!2905495 () Bool)

(assert (=> b!7121792 (=> (not res!2905495) (not e!4279321))))

(declare-fun dynLambda!28076 (Int B!3255) Bool)

(assert (=> b!7121792 (= res!2905495 (dynLambda!28076 lambda!432880 (h!75321 (t!382904 l1!756))))))

(declare-fun b!7121793 () Bool)

(assert (=> b!7121793 (= e!4279321 (forall!16890 (t!382904 (t!382904 l1!756)) lambda!432880))))

(assert (= (and d!2222334 (not res!2905494)) b!7121792))

(assert (= (and b!7121792 res!2905495) b!7121793))

(declare-fun b_lambda!271689 () Bool)

(assert (=> (not b_lambda!271689) (not b!7121792)))

(declare-fun m!7839054 () Bool)

(assert (=> b!7121792 m!7839054))

(declare-fun m!7839056 () Bool)

(assert (=> b!7121793 m!7839056))

(assert (=> b!7121755 d!2222334))

(declare-fun b!7121814 () Bool)

(declare-fun e!4279336 () Unit!162695)

(declare-fun e!4279337 () Unit!162695)

(assert (=> b!7121814 (= e!4279336 e!4279337)))

(declare-fun c!1328964 () Bool)

(assert (=> b!7121814 (= c!1328964 (subseq!736 l1!756 (t!382904 lt!2561921)))))

(declare-fun d!2222338 () Bool)

(declare-fun tail!13916 (List!68997) List!68997)

(assert (=> d!2222338 (subseq!736 (tail!13916 l1!756) lt!2561921)))

(declare-fun lt!2561951 () Unit!162695)

(assert (=> d!2222338 (= lt!2561951 e!4279336)))

(declare-fun c!1328965 () Bool)

(assert (=> d!2222338 (= c!1328965 (and (is-Cons!68873 l1!756) (is-Cons!68873 lt!2561921)))))

(declare-fun e!4279339 () Bool)

(assert (=> d!2222338 e!4279339))

(declare-fun res!2905504 () Bool)

(assert (=> d!2222338 (=> (not res!2905504) (not e!4279339))))

(declare-fun isEmpty!39998 (List!68997) Bool)

(assert (=> d!2222338 (= res!2905504 (not (isEmpty!39998 l1!756)))))

(assert (=> d!2222338 (= (subseqTail!19 l1!756 lt!2561921) lt!2561951)))

(declare-fun b!7121815 () Bool)

(declare-fun e!4279338 () Unit!162695)

(declare-fun call!650732 () Unit!162695)

(assert (=> b!7121815 (= e!4279338 call!650732)))

(declare-fun b!7121816 () Bool)

(declare-fun Unit!162699 () Unit!162695)

(assert (=> b!7121816 (= e!4279336 Unit!162699)))

(declare-fun bm!650727 () Bool)

(assert (=> bm!650727 (= call!650732 (subseqTail!19 (ite c!1328964 l1!756 (t!382904 l1!756)) (t!382904 lt!2561921)))))

(declare-fun b!7121817 () Bool)

(declare-fun Unit!162700 () Unit!162695)

(assert (=> b!7121817 (= e!4279338 Unit!162700)))

(declare-fun b!7121818 () Bool)

(assert (=> b!7121818 (= e!4279337 call!650732)))

(declare-fun b!7121819 () Bool)

(assert (=> b!7121819 (= e!4279339 (subseq!736 l1!756 lt!2561921))))

(declare-fun b!7121820 () Bool)

(declare-fun c!1328963 () Bool)

(assert (=> b!7121820 (= c!1328963 (not (isEmpty!39998 (t!382904 l1!756))))))

(assert (=> b!7121820 (= e!4279337 e!4279338)))

(assert (= (and d!2222338 res!2905504) b!7121819))

(assert (= (and d!2222338 c!1328965) b!7121814))

(assert (= (and d!2222338 (not c!1328965)) b!7121816))

(assert (= (and b!7121814 c!1328964) b!7121818))

(assert (= (and b!7121814 (not c!1328964)) b!7121820))

(assert (= (and b!7121820 c!1328963) b!7121815))

(assert (= (and b!7121820 (not c!1328963)) b!7121817))

(assert (= (or b!7121818 b!7121815) bm!650727))

(assert (=> b!7121819 m!7839002))

(declare-fun m!7839062 () Bool)

(assert (=> b!7121814 m!7839062))

(declare-fun m!7839064 () Bool)

(assert (=> bm!650727 m!7839064))

(declare-fun m!7839066 () Bool)

(assert (=> d!2222338 m!7839066))

(assert (=> d!2222338 m!7839066))

(declare-fun m!7839068 () Bool)

(assert (=> d!2222338 m!7839068))

(declare-fun m!7839070 () Bool)

(assert (=> d!2222338 m!7839070))

(declare-fun m!7839072 () Bool)

(assert (=> b!7121820 m!7839072))

(assert (=> b!7121755 d!2222338))

(declare-fun bs!1886008 () Bool)

(declare-fun d!2222342 () Bool)

(assert (= bs!1886008 (and d!2222342 b!7121755)))

(declare-fun lambda!432886 () Int)

(assert (=> bs!1886008 (= lambda!432886 lambda!432880)))

(assert (=> d!2222342 true))

(assert (=> d!2222342 (forall!16890 (t!382904 l1!756) lambda!432886)))

(declare-fun lt!2561957 () Unit!162695)

(declare-fun choose!54985 ((Set A!597) (Set A!597) Int List!68997 List!68997) Unit!162695)

(assert (=> d!2222342 (= lt!2561957 (choose!54985 s1!414 s2!385 f!567 (t!382904 l1!756) l2!745))))

(assert (=> d!2222342 (subseq!736 (t!382904 l1!756) (toList!11100 (set.union (map!16394 s1!414 f!567) (map!16394 s2!385 f!567))))))

(assert (=> d!2222342 (= (lemmaMapAssociativeToList1!11 s1!414 s2!385 f!567 (t!382904 l1!756) l2!745) lt!2561957)))

(declare-fun bs!1886009 () Bool)

(assert (= bs!1886009 d!2222342))

(declare-fun m!7839080 () Bool)

(assert (=> bs!1886009 m!7839080))

(assert (=> bs!1886009 m!7839008))

(declare-fun m!7839082 () Bool)

(assert (=> bs!1886009 m!7839082))

(assert (=> bs!1886009 m!7839006))

(declare-fun m!7839084 () Bool)

(assert (=> bs!1886009 m!7839084))

(declare-fun m!7839086 () Bool)

(assert (=> bs!1886009 m!7839086))

(assert (=> bs!1886009 m!7839084))

(assert (=> b!7121755 d!2222342))

(declare-fun d!2222346 () Bool)

(assert (=> d!2222346 (= (set.member (h!75321 l1!756) (set.union (map!16394 s1!414 f!567) (map!16394 s2!385 f!567))) (set.member (h!75321 l1!756) (map!16394 (set.union s1!414 s2!385) f!567)))))

(declare-fun lt!2561960 () Unit!162695)

(declare-fun choose!54986 ((Set A!597) (Set A!597) Int B!3255) Unit!162695)

(assert (=> d!2222346 (= lt!2561960 (choose!54986 s1!414 s2!385 f!567 (h!75321 l1!756)))))

(assert (=> d!2222346 (= (lemmaMapAssociativeElem!5 s1!414 s2!385 f!567 (h!75321 l1!756)) lt!2561960)))

(declare-fun bs!1886010 () Bool)

(assert (= bs!1886010 d!2222346))

(assert (=> bs!1886010 m!7839006))

(declare-fun m!7839088 () Bool)

(assert (=> bs!1886010 m!7839088))

(assert (=> bs!1886010 m!7839012))

(declare-fun m!7839090 () Bool)

(assert (=> bs!1886010 m!7839090))

(declare-fun m!7839092 () Bool)

(assert (=> bs!1886010 m!7839092))

(assert (=> bs!1886010 m!7839008))

(assert (=> b!7121755 d!2222346))

(declare-fun b!7121837 () Bool)

(declare-fun e!4279354 () Bool)

(declare-fun e!4279357 () Bool)

(assert (=> b!7121837 (= e!4279354 e!4279357)))

(declare-fun res!2905521 () Bool)

(assert (=> b!7121837 (=> res!2905521 e!4279357)))

(declare-fun e!4279356 () Bool)

(assert (=> b!7121837 (= res!2905521 e!4279356)))

(declare-fun res!2905519 () Bool)

(assert (=> b!7121837 (=> (not res!2905519) (not e!4279356))))

(assert (=> b!7121837 (= res!2905519 (= (h!75321 l1!756) (h!75321 lt!2561921)))))

(declare-fun b!7121838 () Bool)

(assert (=> b!7121838 (= e!4279356 (subseq!736 (t!382904 l1!756) (t!382904 lt!2561921)))))

(declare-fun b!7121839 () Bool)

(assert (=> b!7121839 (= e!4279357 (subseq!736 l1!756 (t!382904 lt!2561921)))))

(declare-fun d!2222348 () Bool)

(declare-fun res!2905520 () Bool)

(declare-fun e!4279355 () Bool)

(assert (=> d!2222348 (=> res!2905520 e!4279355)))

(assert (=> d!2222348 (= res!2905520 (is-Nil!68873 l1!756))))

(assert (=> d!2222348 (= (subseq!736 l1!756 lt!2561921) e!4279355)))

(declare-fun b!7121836 () Bool)

(assert (=> b!7121836 (= e!4279355 e!4279354)))

(declare-fun res!2905522 () Bool)

(assert (=> b!7121836 (=> (not res!2905522) (not e!4279354))))

(assert (=> b!7121836 (= res!2905522 (is-Cons!68873 lt!2561921))))

(assert (= (and d!2222348 (not res!2905520)) b!7121836))

(assert (= (and b!7121836 res!2905522) b!7121837))

(assert (= (and b!7121837 res!2905519) b!7121838))

(assert (= (and b!7121837 (not res!2905521)) b!7121839))

(declare-fun m!7839094 () Bool)

(assert (=> b!7121838 m!7839094))

(assert (=> b!7121839 m!7839062))

(assert (=> start!693438 d!2222348))

(declare-fun d!2222350 () Bool)

(declare-fun e!4279358 () Bool)

(assert (=> d!2222350 e!4279358))

(declare-fun res!2905523 () Bool)

(assert (=> d!2222350 (=> (not res!2905523) (not e!4279358))))

(declare-fun lt!2561961 () List!68997)

(assert (=> d!2222350 (= res!2905523 (noDuplicate!2782 lt!2561961))))

(assert (=> d!2222350 (= lt!2561961 (choose!54983 lt!2561920))))

(assert (=> d!2222350 (= (toList!11100 lt!2561920) lt!2561961)))

(declare-fun b!7121840 () Bool)

(assert (=> b!7121840 (= e!4279358 (= (content!14080 lt!2561961) lt!2561920))))

(assert (= (and d!2222350 res!2905523) b!7121840))

(declare-fun m!7839096 () Bool)

(assert (=> d!2222350 m!7839096))

(declare-fun m!7839098 () Bool)

(assert (=> d!2222350 m!7839098))

(declare-fun m!7839100 () Bool)

(assert (=> b!7121840 m!7839100))

(assert (=> start!693438 d!2222350))

(declare-fun d!2222352 () Bool)

(assert (=> d!2222352 (= (map!16394 s1!414 f!567) (choose!54984 s1!414 f!567))))

(declare-fun bs!1886011 () Bool)

(assert (= bs!1886011 d!2222352))

(declare-fun m!7839102 () Bool)

(assert (=> bs!1886011 m!7839102))

(assert (=> start!693438 d!2222352))

(declare-fun d!2222354 () Bool)

(assert (=> d!2222354 (= (map!16394 s2!385 f!567) (choose!54984 s2!385 f!567))))

(declare-fun bs!1886012 () Bool)

(assert (= bs!1886012 d!2222354))

(declare-fun m!7839104 () Bool)

(assert (=> bs!1886012 m!7839104))

(assert (=> start!693438 d!2222354))

(declare-fun condSetEmpty!50992 () Bool)

(assert (=> setNonEmpty!50983 (= condSetEmpty!50992 (= setRest!50983 (as set.empty (Set A!597))))))

(declare-fun setRes!50992 () Bool)

(assert (=> setNonEmpty!50983 (= tp!1961002 setRes!50992)))

(declare-fun setIsEmpty!50992 () Bool)

(assert (=> setIsEmpty!50992 setRes!50992))

(declare-fun setNonEmpty!50992 () Bool)

(declare-fun tp!1961023 () Bool)

(assert (=> setNonEmpty!50992 (= setRes!50992 (and tp!1961023 tp_is_empty!45347))))

(declare-fun setElem!50992 () A!597)

(declare-fun setRest!50992 () (Set A!597))

(assert (=> setNonEmpty!50992 (= setRest!50983 (set.union (set.insert setElem!50992 (as set.empty (Set A!597))) setRest!50992))))

(assert (= (and setNonEmpty!50983 condSetEmpty!50992) setIsEmpty!50992))

(assert (= (and setNonEmpty!50983 (not condSetEmpty!50992)) setNonEmpty!50992))

(declare-fun b!7121861 () Bool)

(declare-fun e!4279369 () Bool)

(declare-fun tp!1961026 () Bool)

(assert (=> b!7121861 (= e!4279369 (and tp_is_empty!45345 tp!1961026))))

(assert (=> b!7121756 (= tp!1961001 e!4279369)))

(assert (= (and b!7121756 (is-Cons!68873 (t!382904 l1!756))) b!7121861))

(declare-fun condSetEmpty!50993 () Bool)

(assert (=> setNonEmpty!50982 (= condSetEmpty!50993 (= setRest!50982 (as set.empty (Set A!597))))))

(declare-fun setRes!50993 () Bool)

(assert (=> setNonEmpty!50982 (= tp!1961005 setRes!50993)))

(declare-fun setIsEmpty!50993 () Bool)

(assert (=> setIsEmpty!50993 setRes!50993))

(declare-fun setNonEmpty!50993 () Bool)

(declare-fun tp!1961027 () Bool)

(assert (=> setNonEmpty!50993 (= setRes!50993 (and tp!1961027 tp_is_empty!45347))))

(declare-fun setElem!50993 () A!597)

(declare-fun setRest!50993 () (Set A!597))

(assert (=> setNonEmpty!50993 (= setRest!50982 (set.union (set.insert setElem!50993 (as set.empty (Set A!597))) setRest!50993))))

(assert (= (and setNonEmpty!50982 condSetEmpty!50993) setIsEmpty!50993))

(assert (= (and setNonEmpty!50982 (not condSetEmpty!50993)) setNonEmpty!50993))

(declare-fun b!7121862 () Bool)

(declare-fun e!4279370 () Bool)

(declare-fun tp!1961028 () Bool)

(assert (=> b!7121862 (= e!4279370 (and tp_is_empty!45345 tp!1961028))))

(assert (=> b!7121758 (= tp!1961003 e!4279370)))

(assert (= (and b!7121758 (is-Cons!68873 (t!382904 l2!745))) b!7121862))

(declare-fun b_lambda!271693 () Bool)

(assert (= b_lambda!271689 (or b!7121755 b_lambda!271693)))

(declare-fun bs!1886013 () Bool)

(declare-fun d!2222356 () Bool)

(assert (= bs!1886013 (and d!2222356 b!7121755)))

(assert (=> bs!1886013 (= (dynLambda!28076 lambda!432880 (h!75321 (t!382904 l1!756))) (contains!20519 l2!745 (h!75321 (t!382904 l1!756))))))

(declare-fun m!7839106 () Bool)

(assert (=> bs!1886013 m!7839106))

(assert (=> b!7121792 d!2222356))

(push 1)

(assert (not d!2222328))

(assert (not d!2222332))

(assert (not d!2222350))

(assert (not b!7121781))

(assert tp_is_empty!45347)

(assert (not d!2222330))

(assert (not b!7121840))

(assert (not b!7121820))

(assert (not b!7121862))

(assert (not setNonEmpty!50993))

(assert (not b!7121787))

(assert (not b_lambda!271693))

(assert (not b!7121819))

(assert (not setNonEmpty!50992))

(assert (not d!2222354))

(assert (not b!7121838))

(assert (not b_next!134481))

(assert (not d!2222346))

(assert (not b!7121814))

(assert (not d!2222342))

(assert (not b!7121793))

(assert tp_is_empty!45345)

(assert (not d!2222352))

(assert b_and!350787)

(assert (not b!7121839))

(assert (not bm!650727))

(assert (not b!7121861))

(assert (not d!2222338))

(assert (not bs!1886013))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350787)

(assert (not b_next!134481))

(check-sat)

(pop 1)


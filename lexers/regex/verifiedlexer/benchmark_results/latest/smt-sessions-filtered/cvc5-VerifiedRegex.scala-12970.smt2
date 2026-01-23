; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713466 () Bool)

(assert start!713466)

(declare-fun b_free!134055 () Bool)

(declare-fun b_next!134845 () Bool)

(assert (=> start!713466 (= b_free!134055 (not b_next!134845))))

(declare-fun tp!2077970 () Bool)

(declare-fun b_and!351463 () Bool)

(assert (=> start!713466 (= tp!2077970 b_and!351463)))

(declare-fun setIsEmpty!54882 () Bool)

(declare-fun setRes!54883 () Bool)

(assert (=> setIsEmpty!54882 setRes!54883))

(declare-fun b!7317777 () Bool)

(declare-fun e!4380955 () Bool)

(declare-fun tp_is_empty!47693 () Bool)

(declare-fun tp!2077971 () Bool)

(assert (=> b!7317777 (= e!4380955 (and tp_is_empty!47693 tp!2077971))))

(declare-fun setIsEmpty!54883 () Bool)

(declare-fun setRes!54882 () Bool)

(assert (=> setIsEmpty!54883 setRes!54882))

(declare-fun b!7317778 () Bool)

(declare-fun e!4380954 () Bool)

(declare-fun tp!2077973 () Bool)

(assert (=> b!7317778 (= e!4380954 (and tp_is_empty!47693 tp!2077973))))

(declare-fun setNonEmpty!54882 () Bool)

(declare-fun tp!2077972 () Bool)

(declare-fun tp_is_empty!47695 () Bool)

(assert (=> setNonEmpty!54882 (= setRes!54882 (and tp!2077972 tp_is_empty!47695))))

(declare-datatypes ((A!901 0))(
  ( (A!902 (val!29221 Int)) )
))
(declare-fun s2!427 () (Set A!901))

(declare-fun setElem!54882 () A!901)

(declare-fun setRest!54883 () (Set A!901))

(assert (=> setNonEmpty!54882 (= s2!427 (set.union (set.insert setElem!54882 (as set.empty (Set A!901))) setRest!54883))))

(declare-fun b!7317779 () Bool)

(declare-fun e!4380953 () Bool)

(declare-datatypes ((B!3603 0))(
  ( (B!3604 (val!29222 Int)) )
))
(declare-datatypes ((List!71365 0))(
  ( (Nil!71241) (Cons!71241 (h!77689 B!3603) (t!385597 List!71365)) )
))
(declare-fun l2!808 () List!71365)

(declare-fun isEmpty!40865 (List!71365) Bool)

(assert (=> b!7317779 (= e!4380953 (not (not (isEmpty!40865 l2!808))))))

(declare-fun lt!2602919 () (Set B!3603))

(declare-fun lt!2602918 () (Set B!3603))

(assert (=> b!7317779 (= (set.member (h!77689 l2!808) lt!2602919) (set.member (h!77689 l2!808) lt!2602918))))

(declare-fun s1!456 () (Set A!901))

(declare-fun f!803 () Int)

(declare-datatypes ((Unit!164721 0))(
  ( (Unit!164722) )
))
(declare-fun lt!2602920 () Unit!164721)

(declare-fun lemmaFlatMapAssociativeElem!1 ((Set A!901) (Set A!901) Int B!3603) Unit!164721)

(assert (=> b!7317779 (= lt!2602920 (lemmaFlatMapAssociativeElem!1 s1!456 s2!427 f!803 (h!77689 l2!808)))))

(declare-fun res!2956997 () Bool)

(declare-fun e!4380952 () Bool)

(assert (=> start!713466 (=> (not res!2956997) (not e!4380952))))

(declare-fun l1!819 () List!71365)

(declare-fun toList!11652 ((Set B!3603)) List!71365)

(assert (=> start!713466 (= res!2956997 (= l1!819 (toList!11652 lt!2602919)))))

(declare-fun flatMap!3070 ((Set A!901) Int) (Set B!3603))

(assert (=> start!713466 (= lt!2602919 (set.union (flatMap!3070 s1!456 f!803) (flatMap!3070 s2!427 f!803)))))

(assert (=> start!713466 e!4380952))

(assert (=> start!713466 e!4380955))

(declare-fun condSetEmpty!54882 () Bool)

(assert (=> start!713466 (= condSetEmpty!54882 (= s1!456 (as set.empty (Set A!901))))))

(assert (=> start!713466 setRes!54883))

(assert (=> start!713466 tp!2077970))

(assert (=> start!713466 e!4380954))

(declare-fun condSetEmpty!54883 () Bool)

(assert (=> start!713466 (= condSetEmpty!54883 (= s2!427 (as set.empty (Set A!901))))))

(assert (=> start!713466 setRes!54882))

(declare-fun setNonEmpty!54883 () Bool)

(declare-fun tp!2077974 () Bool)

(assert (=> setNonEmpty!54883 (= setRes!54883 (and tp!2077974 tp_is_empty!47695))))

(declare-fun setElem!54883 () A!901)

(declare-fun setRest!54882 () (Set A!901))

(assert (=> setNonEmpty!54883 (= s1!456 (set.union (set.insert setElem!54883 (as set.empty (Set A!901))) setRest!54882))))

(declare-fun b!7317780 () Bool)

(declare-fun res!2956996 () Bool)

(assert (=> b!7317780 (=> (not res!2956996) (not e!4380953))))

(assert (=> b!7317780 (= res!2956996 (is-Cons!71241 l2!808))))

(declare-fun b!7317781 () Bool)

(assert (=> b!7317781 (= e!4380952 e!4380953)))

(declare-fun res!2956995 () Bool)

(assert (=> b!7317781 (=> (not res!2956995) (not e!4380953))))

(declare-fun subseq!862 (List!71365 List!71365) Bool)

(assert (=> b!7317781 (= res!2956995 (subseq!862 l2!808 (toList!11652 lt!2602918)))))

(assert (=> b!7317781 (= lt!2602918 (flatMap!3070 (set.union s1!456 s2!427) f!803))))

(assert (= (and start!713466 res!2956997) b!7317781))

(assert (= (and b!7317781 res!2956995) b!7317780))

(assert (= (and b!7317780 res!2956996) b!7317779))

(assert (= (and start!713466 (is-Cons!71241 l2!808)) b!7317777))

(assert (= (and start!713466 condSetEmpty!54882) setIsEmpty!54882))

(assert (= (and start!713466 (not condSetEmpty!54882)) setNonEmpty!54883))

(assert (= (and start!713466 (is-Cons!71241 l1!819)) b!7317778))

(assert (= (and start!713466 condSetEmpty!54883) setIsEmpty!54883))

(assert (= (and start!713466 (not condSetEmpty!54883)) setNonEmpty!54882))

(declare-fun m!7982506 () Bool)

(assert (=> b!7317779 m!7982506))

(declare-fun m!7982508 () Bool)

(assert (=> b!7317779 m!7982508))

(declare-fun m!7982510 () Bool)

(assert (=> b!7317779 m!7982510))

(declare-fun m!7982512 () Bool)

(assert (=> b!7317779 m!7982512))

(declare-fun m!7982514 () Bool)

(assert (=> start!713466 m!7982514))

(declare-fun m!7982516 () Bool)

(assert (=> start!713466 m!7982516))

(declare-fun m!7982518 () Bool)

(assert (=> start!713466 m!7982518))

(declare-fun m!7982520 () Bool)

(assert (=> b!7317781 m!7982520))

(assert (=> b!7317781 m!7982520))

(declare-fun m!7982522 () Bool)

(assert (=> b!7317781 m!7982522))

(declare-fun m!7982524 () Bool)

(assert (=> b!7317781 m!7982524))

(push 1)

(assert (not b!7317777))

(assert (not start!713466))

(assert b_and!351463)

(assert (not setNonEmpty!54882))

(assert tp_is_empty!47693)

(assert (not b!7317779))

(assert (not b!7317781))

(assert (not setNonEmpty!54883))

(assert tp_is_empty!47695)

(assert (not b_next!134845))

(assert (not b!7317778))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351463)

(assert (not b_next!134845))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7317808 () Bool)

(declare-fun e!4380976 () Bool)

(assert (=> b!7317808 (= e!4380976 (subseq!862 l2!808 (t!385597 (toList!11652 lt!2602918))))))

(declare-fun d!2272327 () Bool)

(declare-fun res!2957017 () Bool)

(declare-fun e!4380978 () Bool)

(assert (=> d!2272327 (=> res!2957017 e!4380978)))

(assert (=> d!2272327 (= res!2957017 (is-Nil!71241 l2!808))))

(assert (=> d!2272327 (= (subseq!862 l2!808 (toList!11652 lt!2602918)) e!4380978)))

(declare-fun b!7317806 () Bool)

(declare-fun e!4380979 () Bool)

(assert (=> b!7317806 (= e!4380979 e!4380976)))

(declare-fun res!2957018 () Bool)

(assert (=> b!7317806 (=> res!2957018 e!4380976)))

(declare-fun e!4380977 () Bool)

(assert (=> b!7317806 (= res!2957018 e!4380977)))

(declare-fun res!2957015 () Bool)

(assert (=> b!7317806 (=> (not res!2957015) (not e!4380977))))

(assert (=> b!7317806 (= res!2957015 (= (h!77689 l2!808) (h!77689 (toList!11652 lt!2602918))))))

(declare-fun b!7317805 () Bool)

(assert (=> b!7317805 (= e!4380978 e!4380979)))

(declare-fun res!2957016 () Bool)

(assert (=> b!7317805 (=> (not res!2957016) (not e!4380979))))

(assert (=> b!7317805 (= res!2957016 (is-Cons!71241 (toList!11652 lt!2602918)))))

(declare-fun b!7317807 () Bool)

(assert (=> b!7317807 (= e!4380977 (subseq!862 (t!385597 l2!808) (t!385597 (toList!11652 lt!2602918))))))

(assert (= (and d!2272327 (not res!2957017)) b!7317805))

(assert (= (and b!7317805 res!2957016) b!7317806))

(assert (= (and b!7317806 res!2957015) b!7317807))

(assert (= (and b!7317806 (not res!2957018)) b!7317808))

(declare-fun m!7982546 () Bool)

(assert (=> b!7317808 m!7982546))

(declare-fun m!7982548 () Bool)

(assert (=> b!7317807 m!7982548))

(assert (=> b!7317781 d!2272327))

(declare-fun d!2272331 () Bool)

(declare-fun e!4380982 () Bool)

(assert (=> d!2272331 e!4380982))

(declare-fun res!2957021 () Bool)

(assert (=> d!2272331 (=> (not res!2957021) (not e!4380982))))

(declare-fun lt!2602932 () List!71365)

(declare-fun noDuplicate!3063 (List!71365) Bool)

(assert (=> d!2272331 (= res!2957021 (noDuplicate!3063 lt!2602932))))

(declare-fun choose!56780 ((Set B!3603)) List!71365)

(assert (=> d!2272331 (= lt!2602932 (choose!56780 lt!2602918))))

(assert (=> d!2272331 (= (toList!11652 lt!2602918) lt!2602932)))

(declare-fun b!7317811 () Bool)

(declare-fun content!14882 (List!71365) (Set B!3603))

(assert (=> b!7317811 (= e!4380982 (= (content!14882 lt!2602932) lt!2602918))))

(assert (= (and d!2272331 res!2957021) b!7317811))

(declare-fun m!7982550 () Bool)

(assert (=> d!2272331 m!7982550))

(declare-fun m!7982552 () Bool)

(assert (=> d!2272331 m!7982552))

(declare-fun m!7982554 () Bool)

(assert (=> b!7317811 m!7982554))

(assert (=> b!7317781 d!2272331))

(declare-fun d!2272335 () Bool)

(declare-fun choose!56781 ((Set A!901) Int) (Set B!3603))

(assert (=> d!2272335 (= (flatMap!3070 (set.union s1!456 s2!427) f!803) (choose!56781 (set.union s1!456 s2!427) f!803))))

(declare-fun bs!1915572 () Bool)

(assert (= bs!1915572 d!2272335))

(declare-fun m!7982556 () Bool)

(assert (=> bs!1915572 m!7982556))

(assert (=> b!7317781 d!2272335))

(declare-fun d!2272337 () Bool)

(declare-fun e!4380983 () Bool)

(assert (=> d!2272337 e!4380983))

(declare-fun res!2957022 () Bool)

(assert (=> d!2272337 (=> (not res!2957022) (not e!4380983))))

(declare-fun lt!2602933 () List!71365)

(assert (=> d!2272337 (= res!2957022 (noDuplicate!3063 lt!2602933))))

(assert (=> d!2272337 (= lt!2602933 (choose!56780 lt!2602919))))

(assert (=> d!2272337 (= (toList!11652 lt!2602919) lt!2602933)))

(declare-fun b!7317812 () Bool)

(assert (=> b!7317812 (= e!4380983 (= (content!14882 lt!2602933) lt!2602919))))

(assert (= (and d!2272337 res!2957022) b!7317812))

(declare-fun m!7982558 () Bool)

(assert (=> d!2272337 m!7982558))

(declare-fun m!7982560 () Bool)

(assert (=> d!2272337 m!7982560))

(declare-fun m!7982562 () Bool)

(assert (=> b!7317812 m!7982562))

(assert (=> start!713466 d!2272337))

(declare-fun d!2272339 () Bool)

(assert (=> d!2272339 (= (flatMap!3070 s1!456 f!803) (choose!56781 s1!456 f!803))))

(declare-fun bs!1915573 () Bool)

(assert (= bs!1915573 d!2272339))

(declare-fun m!7982564 () Bool)

(assert (=> bs!1915573 m!7982564))

(assert (=> start!713466 d!2272339))

(declare-fun d!2272341 () Bool)

(assert (=> d!2272341 (= (flatMap!3070 s2!427 f!803) (choose!56781 s2!427 f!803))))

(declare-fun bs!1915574 () Bool)

(assert (= bs!1915574 d!2272341))

(declare-fun m!7982566 () Bool)

(assert (=> bs!1915574 m!7982566))

(assert (=> start!713466 d!2272341))

(declare-fun d!2272343 () Bool)

(assert (=> d!2272343 (= (isEmpty!40865 l2!808) (is-Nil!71241 l2!808))))

(assert (=> b!7317779 d!2272343))

(declare-fun d!2272345 () Bool)

(assert (=> d!2272345 (= (set.member (h!77689 l2!808) (set.union (flatMap!3070 s1!456 f!803) (flatMap!3070 s2!427 f!803))) (set.member (h!77689 l2!808) (flatMap!3070 (set.union s1!456 s2!427) f!803)))))

(declare-fun lt!2602938 () Unit!164721)

(declare-fun choose!56782 ((Set A!901) (Set A!901) Int B!3603) Unit!164721)

(assert (=> d!2272345 (= lt!2602938 (choose!56782 s1!456 s2!427 f!803 (h!77689 l2!808)))))

(assert (=> d!2272345 (= (lemmaFlatMapAssociativeElem!1 s1!456 s2!427 f!803 (h!77689 l2!808)) lt!2602938)))

(declare-fun bs!1915575 () Bool)

(assert (= bs!1915575 d!2272345))

(declare-fun m!7982568 () Bool)

(assert (=> bs!1915575 m!7982568))

(assert (=> bs!1915575 m!7982516))

(assert (=> bs!1915575 m!7982524))

(assert (=> bs!1915575 m!7982518))

(declare-fun m!7982570 () Bool)

(assert (=> bs!1915575 m!7982570))

(declare-fun m!7982572 () Bool)

(assert (=> bs!1915575 m!7982572))

(assert (=> b!7317779 d!2272345))

(declare-fun b!7317819 () Bool)

(declare-fun e!4380986 () Bool)

(declare-fun tp!2077992 () Bool)

(assert (=> b!7317819 (= e!4380986 (and tp_is_empty!47693 tp!2077992))))

(assert (=> b!7317777 (= tp!2077971 e!4380986)))

(assert (= (and b!7317777 (is-Cons!71241 (t!385597 l2!808))) b!7317819))

(declare-fun b!7317820 () Bool)

(declare-fun e!4380987 () Bool)

(declare-fun tp!2077993 () Bool)

(assert (=> b!7317820 (= e!4380987 (and tp_is_empty!47693 tp!2077993))))

(assert (=> b!7317778 (= tp!2077973 e!4380987)))

(assert (= (and b!7317778 (is-Cons!71241 (t!385597 l1!819))) b!7317820))

(declare-fun condSetEmpty!54892 () Bool)

(assert (=> setNonEmpty!54882 (= condSetEmpty!54892 (= setRest!54883 (as set.empty (Set A!901))))))

(declare-fun setRes!54892 () Bool)

(assert (=> setNonEmpty!54882 (= tp!2077972 setRes!54892)))

(declare-fun setIsEmpty!54892 () Bool)

(assert (=> setIsEmpty!54892 setRes!54892))

(declare-fun setNonEmpty!54892 () Bool)

(declare-fun tp!2077996 () Bool)

(assert (=> setNonEmpty!54892 (= setRes!54892 (and tp!2077996 tp_is_empty!47695))))

(declare-fun setElem!54892 () A!901)

(declare-fun setRest!54892 () (Set A!901))

(assert (=> setNonEmpty!54892 (= setRest!54883 (set.union (set.insert setElem!54892 (as set.empty (Set A!901))) setRest!54892))))

(assert (= (and setNonEmpty!54882 condSetEmpty!54892) setIsEmpty!54892))

(assert (= (and setNonEmpty!54882 (not condSetEmpty!54892)) setNonEmpty!54892))

(declare-fun condSetEmpty!54893 () Bool)

(assert (=> setNonEmpty!54883 (= condSetEmpty!54893 (= setRest!54882 (as set.empty (Set A!901))))))

(declare-fun setRes!54893 () Bool)

(assert (=> setNonEmpty!54883 (= tp!2077974 setRes!54893)))

(declare-fun setIsEmpty!54893 () Bool)

(assert (=> setIsEmpty!54893 setRes!54893))

(declare-fun setNonEmpty!54893 () Bool)

(declare-fun tp!2077997 () Bool)

(assert (=> setNonEmpty!54893 (= setRes!54893 (and tp!2077997 tp_is_empty!47695))))

(declare-fun setElem!54893 () A!901)

(declare-fun setRest!54893 () (Set A!901))

(assert (=> setNonEmpty!54893 (= setRest!54882 (set.union (set.insert setElem!54893 (as set.empty (Set A!901))) setRest!54893))))

(assert (= (and setNonEmpty!54883 condSetEmpty!54893) setIsEmpty!54893))

(assert (= (and setNonEmpty!54883 (not condSetEmpty!54893)) setNonEmpty!54893))

(push 1)

(assert (not d!2272335))

(assert (not b!7317819))

(assert (not b!7317812))

(assert (not b!7317811))

(assert (not setNonEmpty!54892))

(assert tp_is_empty!47695)

(assert (not b_next!134845))

(assert (not d!2272341))

(assert tp_is_empty!47693)

(assert (not b!7317820))

(assert (not b!7317807))

(assert (not d!2272345))

(assert (not d!2272331))

(assert (not d!2272339))

(assert (not setNonEmpty!54893))

(assert b_and!351463)

(assert (not d!2272337))

(assert (not b!7317808))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351463)

(assert (not b_next!134845))

(check-sat)

(pop 1)


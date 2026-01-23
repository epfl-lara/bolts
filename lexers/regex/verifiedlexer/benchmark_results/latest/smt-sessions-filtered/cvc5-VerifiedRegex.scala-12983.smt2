; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713776 () Bool)

(assert start!713776)

(declare-fun b_free!134107 () Bool)

(declare-fun b_next!134897 () Bool)

(assert (=> start!713776 (= b_free!134107 (not b_next!134897))))

(declare-fun tp!2078543 () Bool)

(declare-fun b_and!351515 () Bool)

(assert (=> start!713776 (= tp!2078543 b_and!351515)))

(declare-fun b!7319101 () Bool)

(declare-fun e!4381968 () Bool)

(declare-datatypes ((B!3655 0))(
  ( (B!3656 (val!29273 Int)) )
))
(declare-datatypes ((List!71391 0))(
  ( (Nil!71267) (Cons!71267 (h!77715 B!3655) (t!385626 List!71391)) )
))
(declare-fun l1!805 () List!71391)

(declare-fun size!41889 (List!71391) Int)

(assert (=> b!7319101 (= e!4381968 (< (size!41889 l1!805) 0))))

(declare-fun setIsEmpty!55131 () Bool)

(declare-fun setRes!55132 () Bool)

(assert (=> setIsEmpty!55131 setRes!55132))

(declare-fun b!7319102 () Bool)

(declare-fun res!2957745 () Bool)

(assert (=> b!7319102 (=> (not res!2957745) (not e!4381968))))

(declare-datatypes ((A!953 0))(
  ( (A!954 (val!29274 Int)) )
))
(declare-fun s2!417 () (Set A!953))

(declare-fun s1!446 () (Set A!953))

(declare-fun l2!794 () List!71391)

(declare-fun f!760 () Int)

(declare-fun toList!11678 ((Set B!3655)) List!71391)

(declare-fun flatMap!3096 ((Set A!953) Int) (Set B!3655))

(assert (=> b!7319102 (= res!2957745 (= l2!794 (toList!11678 (flatMap!3096 (set.union s1!446 s2!417) f!760))))))

(declare-fun setNonEmpty!55132 () Bool)

(declare-fun setRes!55131 () Bool)

(declare-fun tp!2078544 () Bool)

(declare-fun tp_is_empty!47797 () Bool)

(assert (=> setNonEmpty!55132 (= setRes!55131 (and tp!2078544 tp_is_empty!47797))))

(declare-fun setElem!55132 () A!953)

(declare-fun setRest!55132 () (Set A!953))

(assert (=> setNonEmpty!55132 (= s2!417 (set.union (set.insert setElem!55132 (as set.empty (Set A!953))) setRest!55132))))

(declare-fun b!7319103 () Bool)

(declare-fun e!4381970 () Bool)

(declare-fun tp_is_empty!47799 () Bool)

(declare-fun tp!2078546 () Bool)

(assert (=> b!7319103 (= e!4381970 (and tp_is_empty!47799 tp!2078546))))

(declare-fun setIsEmpty!55132 () Bool)

(assert (=> setIsEmpty!55132 setRes!55131))

(declare-fun b!7319104 () Bool)

(declare-fun e!4381969 () Bool)

(declare-fun tp!2078547 () Bool)

(assert (=> b!7319104 (= e!4381969 (and tp_is_empty!47799 tp!2078547))))

(declare-fun res!2957746 () Bool)

(assert (=> start!713776 (=> (not res!2957746) (not e!4381968))))

(declare-fun subseq!888 (List!71391 List!71391) Bool)

(assert (=> start!713776 (= res!2957746 (subseq!888 l1!805 (toList!11678 (set.union (flatMap!3096 s1!446 f!760) (flatMap!3096 s2!417 f!760)))))))

(assert (=> start!713776 e!4381968))

(declare-fun condSetEmpty!55131 () Bool)

(assert (=> start!713776 (= condSetEmpty!55131 (= s2!417 (as set.empty (Set A!953))))))

(assert (=> start!713776 setRes!55131))

(declare-fun condSetEmpty!55132 () Bool)

(assert (=> start!713776 (= condSetEmpty!55132 (= s1!446 (as set.empty (Set A!953))))))

(assert (=> start!713776 setRes!55132))

(assert (=> start!713776 tp!2078543))

(assert (=> start!713776 e!4381970))

(assert (=> start!713776 e!4381969))

(declare-fun setNonEmpty!55131 () Bool)

(declare-fun tp!2078545 () Bool)

(assert (=> setNonEmpty!55131 (= setRes!55132 (and tp!2078545 tp_is_empty!47797))))

(declare-fun setElem!55131 () A!953)

(declare-fun setRest!55131 () (Set A!953))

(assert (=> setNonEmpty!55131 (= s1!446 (set.union (set.insert setElem!55131 (as set.empty (Set A!953))) setRest!55131))))

(assert (= (and start!713776 res!2957746) b!7319102))

(assert (= (and b!7319102 res!2957745) b!7319101))

(assert (= (and start!713776 condSetEmpty!55131) setIsEmpty!55132))

(assert (= (and start!713776 (not condSetEmpty!55131)) setNonEmpty!55132))

(assert (= (and start!713776 condSetEmpty!55132) setIsEmpty!55131))

(assert (= (and start!713776 (not condSetEmpty!55132)) setNonEmpty!55131))

(assert (= (and start!713776 (is-Cons!71267 l2!794)) b!7319103))

(assert (= (and start!713776 (is-Cons!71267 l1!805)) b!7319104))

(declare-fun m!7983936 () Bool)

(assert (=> b!7319101 m!7983936))

(declare-fun m!7983938 () Bool)

(assert (=> b!7319102 m!7983938))

(assert (=> b!7319102 m!7983938))

(declare-fun m!7983940 () Bool)

(assert (=> b!7319102 m!7983940))

(declare-fun m!7983942 () Bool)

(assert (=> start!713776 m!7983942))

(declare-fun m!7983944 () Bool)

(assert (=> start!713776 m!7983944))

(declare-fun m!7983946 () Bool)

(assert (=> start!713776 m!7983946))

(assert (=> start!713776 m!7983946))

(declare-fun m!7983948 () Bool)

(assert (=> start!713776 m!7983948))

(push 1)

(assert (not b!7319104))

(assert (not setNonEmpty!55131))

(assert tp_is_empty!47799)

(assert tp_is_empty!47797)

(assert (not b_next!134897))

(assert (not b!7319103))

(assert (not start!713776))

(assert b_and!351515)

(assert (not b!7319101))

(assert (not b!7319102))

(assert (not setNonEmpty!55132))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351515)

(assert (not b_next!134897))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7319127 () Bool)

(declare-fun e!4381991 () Bool)

(assert (=> b!7319127 (= e!4381991 (subseq!888 (t!385626 l1!805) (t!385626 (toList!11678 (set.union (flatMap!3096 s1!446 f!760) (flatMap!3096 s2!417 f!760))))))))

(declare-fun b!7319126 () Bool)

(declare-fun e!4381989 () Bool)

(declare-fun e!4381988 () Bool)

(assert (=> b!7319126 (= e!4381989 e!4381988)))

(declare-fun res!2957762 () Bool)

(assert (=> b!7319126 (=> res!2957762 e!4381988)))

(assert (=> b!7319126 (= res!2957762 e!4381991)))

(declare-fun res!2957761 () Bool)

(assert (=> b!7319126 (=> (not res!2957761) (not e!4381991))))

(assert (=> b!7319126 (= res!2957761 (= (h!77715 l1!805) (h!77715 (toList!11678 (set.union (flatMap!3096 s1!446 f!760) (flatMap!3096 s2!417 f!760))))))))

(declare-fun b!7319125 () Bool)

(declare-fun e!4381990 () Bool)

(assert (=> b!7319125 (= e!4381990 e!4381989)))

(declare-fun res!2957763 () Bool)

(assert (=> b!7319125 (=> (not res!2957763) (not e!4381989))))

(assert (=> b!7319125 (= res!2957763 (is-Cons!71267 (toList!11678 (set.union (flatMap!3096 s1!446 f!760) (flatMap!3096 s2!417 f!760)))))))

(declare-fun b!7319128 () Bool)

(assert (=> b!7319128 (= e!4381988 (subseq!888 l1!805 (t!385626 (toList!11678 (set.union (flatMap!3096 s1!446 f!760) (flatMap!3096 s2!417 f!760))))))))

(declare-fun d!2272814 () Bool)

(declare-fun res!2957764 () Bool)

(assert (=> d!2272814 (=> res!2957764 e!4381990)))

(assert (=> d!2272814 (= res!2957764 (is-Nil!71267 l1!805))))

(assert (=> d!2272814 (= (subseq!888 l1!805 (toList!11678 (set.union (flatMap!3096 s1!446 f!760) (flatMap!3096 s2!417 f!760)))) e!4381990)))

(assert (= (and d!2272814 (not res!2957764)) b!7319125))

(assert (= (and b!7319125 res!2957763) b!7319126))

(assert (= (and b!7319126 res!2957761) b!7319127))

(assert (= (and b!7319126 (not res!2957762)) b!7319128))

(declare-fun m!7983964 () Bool)

(assert (=> b!7319127 m!7983964))

(declare-fun m!7983966 () Bool)

(assert (=> b!7319128 m!7983966))

(assert (=> start!713776 d!2272814))

(declare-fun d!2272816 () Bool)

(declare-fun e!4381994 () Bool)

(assert (=> d!2272816 e!4381994))

(declare-fun res!2957767 () Bool)

(assert (=> d!2272816 (=> (not res!2957767) (not e!4381994))))

(declare-fun lt!2603423 () List!71391)

(declare-fun noDuplicate!3077 (List!71391) Bool)

(assert (=> d!2272816 (= res!2957767 (noDuplicate!3077 lt!2603423))))

(declare-fun choose!56825 ((Set B!3655)) List!71391)

(assert (=> d!2272816 (= lt!2603423 (choose!56825 (set.union (flatMap!3096 s1!446 f!760) (flatMap!3096 s2!417 f!760))))))

(assert (=> d!2272816 (= (toList!11678 (set.union (flatMap!3096 s1!446 f!760) (flatMap!3096 s2!417 f!760))) lt!2603423)))

(declare-fun b!7319131 () Bool)

(declare-fun content!14896 (List!71391) (Set B!3655))

(assert (=> b!7319131 (= e!4381994 (= (content!14896 lt!2603423) (set.union (flatMap!3096 s1!446 f!760) (flatMap!3096 s2!417 f!760))))))

(assert (= (and d!2272816 res!2957767) b!7319131))

(declare-fun m!7983968 () Bool)

(assert (=> d!2272816 m!7983968))

(declare-fun m!7983970 () Bool)

(assert (=> d!2272816 m!7983970))

(declare-fun m!7983972 () Bool)

(assert (=> b!7319131 m!7983972))

(assert (=> start!713776 d!2272816))

(declare-fun d!2272818 () Bool)

(declare-fun choose!56826 ((Set A!953) Int) (Set B!3655))

(assert (=> d!2272818 (= (flatMap!3096 s1!446 f!760) (choose!56826 s1!446 f!760))))

(declare-fun bs!1915693 () Bool)

(assert (= bs!1915693 d!2272818))

(declare-fun m!7983974 () Bool)

(assert (=> bs!1915693 m!7983974))

(assert (=> start!713776 d!2272818))

(declare-fun d!2272820 () Bool)

(assert (=> d!2272820 (= (flatMap!3096 s2!417 f!760) (choose!56826 s2!417 f!760))))

(declare-fun bs!1915694 () Bool)

(assert (= bs!1915694 d!2272820))

(declare-fun m!7983976 () Bool)

(assert (=> bs!1915694 m!7983976))

(assert (=> start!713776 d!2272820))

(declare-fun d!2272822 () Bool)

(declare-fun e!4381995 () Bool)

(assert (=> d!2272822 e!4381995))

(declare-fun res!2957768 () Bool)

(assert (=> d!2272822 (=> (not res!2957768) (not e!4381995))))

(declare-fun lt!2603424 () List!71391)

(assert (=> d!2272822 (= res!2957768 (noDuplicate!3077 lt!2603424))))

(assert (=> d!2272822 (= lt!2603424 (choose!56825 (flatMap!3096 (set.union s1!446 s2!417) f!760)))))

(assert (=> d!2272822 (= (toList!11678 (flatMap!3096 (set.union s1!446 s2!417) f!760)) lt!2603424)))

(declare-fun b!7319132 () Bool)

(assert (=> b!7319132 (= e!4381995 (= (content!14896 lt!2603424) (flatMap!3096 (set.union s1!446 s2!417) f!760)))))

(assert (= (and d!2272822 res!2957768) b!7319132))

(declare-fun m!7983978 () Bool)

(assert (=> d!2272822 m!7983978))

(assert (=> d!2272822 m!7983938))

(declare-fun m!7983980 () Bool)

(assert (=> d!2272822 m!7983980))

(declare-fun m!7983982 () Bool)

(assert (=> b!7319132 m!7983982))

(assert (=> b!7319102 d!2272822))

(declare-fun d!2272824 () Bool)

(assert (=> d!2272824 (= (flatMap!3096 (set.union s1!446 s2!417) f!760) (choose!56826 (set.union s1!446 s2!417) f!760))))

(declare-fun bs!1915695 () Bool)

(assert (= bs!1915695 d!2272824))

(declare-fun m!7983984 () Bool)

(assert (=> bs!1915695 m!7983984))

(assert (=> b!7319102 d!2272824))

(declare-fun d!2272826 () Bool)

(declare-fun lt!2603427 () Int)

(assert (=> d!2272826 (>= lt!2603427 0)))

(declare-fun e!4381998 () Int)

(assert (=> d!2272826 (= lt!2603427 e!4381998)))

(declare-fun c!1358647 () Bool)

(assert (=> d!2272826 (= c!1358647 (is-Nil!71267 l1!805))))

(assert (=> d!2272826 (= (size!41889 l1!805) lt!2603427)))

(declare-fun b!7319137 () Bool)

(assert (=> b!7319137 (= e!4381998 0)))

(declare-fun b!7319138 () Bool)

(assert (=> b!7319138 (= e!4381998 (+ 1 (size!41889 (t!385626 l1!805))))))

(assert (= (and d!2272826 c!1358647) b!7319137))

(assert (= (and d!2272826 (not c!1358647)) b!7319138))

(declare-fun m!7983986 () Bool)

(assert (=> b!7319138 m!7983986))

(assert (=> b!7319101 d!2272826))

(declare-fun b!7319143 () Bool)

(declare-fun e!4382001 () Bool)

(declare-fun tp!2078565 () Bool)

(assert (=> b!7319143 (= e!4382001 (and tp_is_empty!47799 tp!2078565))))

(assert (=> b!7319103 (= tp!2078546 e!4382001)))

(assert (= (and b!7319103 (is-Cons!71267 (t!385626 l2!794))) b!7319143))

(declare-fun condSetEmpty!55141 () Bool)

(assert (=> setNonEmpty!55131 (= condSetEmpty!55141 (= setRest!55131 (as set.empty (Set A!953))))))

(declare-fun setRes!55141 () Bool)

(assert (=> setNonEmpty!55131 (= tp!2078545 setRes!55141)))

(declare-fun setIsEmpty!55141 () Bool)

(assert (=> setIsEmpty!55141 setRes!55141))

(declare-fun setNonEmpty!55141 () Bool)

(declare-fun tp!2078568 () Bool)

(assert (=> setNonEmpty!55141 (= setRes!55141 (and tp!2078568 tp_is_empty!47797))))

(declare-fun setElem!55141 () A!953)

(declare-fun setRest!55141 () (Set A!953))

(assert (=> setNonEmpty!55141 (= setRest!55131 (set.union (set.insert setElem!55141 (as set.empty (Set A!953))) setRest!55141))))

(assert (= (and setNonEmpty!55131 condSetEmpty!55141) setIsEmpty!55141))

(assert (= (and setNonEmpty!55131 (not condSetEmpty!55141)) setNonEmpty!55141))

(declare-fun condSetEmpty!55142 () Bool)

(assert (=> setNonEmpty!55132 (= condSetEmpty!55142 (= setRest!55132 (as set.empty (Set A!953))))))

(declare-fun setRes!55142 () Bool)

(assert (=> setNonEmpty!55132 (= tp!2078544 setRes!55142)))

(declare-fun setIsEmpty!55142 () Bool)

(assert (=> setIsEmpty!55142 setRes!55142))

(declare-fun setNonEmpty!55142 () Bool)

(declare-fun tp!2078569 () Bool)

(assert (=> setNonEmpty!55142 (= setRes!55142 (and tp!2078569 tp_is_empty!47797))))

(declare-fun setElem!55142 () A!953)

(declare-fun setRest!55142 () (Set A!953))

(assert (=> setNonEmpty!55142 (= setRest!55132 (set.union (set.insert setElem!55142 (as set.empty (Set A!953))) setRest!55142))))

(assert (= (and setNonEmpty!55132 condSetEmpty!55142) setIsEmpty!55142))

(assert (= (and setNonEmpty!55132 (not condSetEmpty!55142)) setNonEmpty!55142))

(declare-fun b!7319146 () Bool)

(declare-fun e!4382002 () Bool)

(declare-fun tp!2078570 () Bool)

(assert (=> b!7319146 (= e!4382002 (and tp_is_empty!47799 tp!2078570))))

(assert (=> b!7319104 (= tp!2078547 e!4382002)))

(assert (= (and b!7319104 (is-Cons!71267 (t!385626 l1!805))) b!7319146))

(push 1)

(assert (not b!7319128))

(assert (not d!2272820))

(assert (not d!2272824))

(assert (not b!7319138))

(assert b_and!351515)

(assert (not d!2272818))

(assert (not setNonEmpty!55142))

(assert (not d!2272816))

(assert tp_is_empty!47799)

(assert (not b!7319131))

(assert (not b!7319127))

(assert (not d!2272822))

(assert (not setNonEmpty!55141))

(assert (not b!7319143))

(assert tp_is_empty!47797)

(assert (not b_next!134897))

(assert (not b!7319132))

(assert (not b!7319146))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351515)

(assert (not b_next!134897))

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713528 () Bool)

(assert start!713528)

(declare-fun b_free!134067 () Bool)

(declare-fun b_next!134857 () Bool)

(assert (=> start!713528 (= b_free!134067 (not b_next!134857))))

(declare-fun tp!2078096 () Bool)

(declare-fun b_and!351475 () Bool)

(assert (=> start!713528 (= tp!2078096 b_and!351475)))

(declare-fun setIsEmpty!54934 () Bool)

(declare-fun setRes!54935 () Bool)

(assert (=> setIsEmpty!54934 setRes!54935))

(declare-fun res!2957128 () Bool)

(declare-fun e!4381137 () Bool)

(assert (=> start!713528 (=> (not res!2957128) (not e!4381137))))

(declare-fun f!803 () Int)

(declare-datatypes ((B!3615 0))(
  ( (B!3616 (val!29233 Int)) )
))
(declare-datatypes ((List!71371 0))(
  ( (Nil!71247) (Cons!71247 (h!77695 B!3615) (t!385603 List!71371)) )
))
(declare-fun l1!819 () List!71371)

(declare-datatypes ((A!913 0))(
  ( (A!914 (val!29234 Int)) )
))
(declare-fun s2!427 () (Set A!913))

(declare-fun s1!456 () (Set A!913))

(declare-fun toList!11658 ((Set B!3615)) List!71371)

(declare-fun flatMap!3076 ((Set A!913) Int) (Set B!3615))

(assert (=> start!713528 (= res!2957128 (= l1!819 (toList!11658 (set.union (flatMap!3076 s1!456 f!803) (flatMap!3076 s2!427 f!803)))))))

(assert (=> start!713528 e!4381137))

(declare-fun e!4381138 () Bool)

(assert (=> start!713528 e!4381138))

(declare-fun condSetEmpty!54935 () Bool)

(assert (=> start!713528 (= condSetEmpty!54935 (= s1!456 (as set.empty (Set A!913))))))

(declare-fun setRes!54934 () Bool)

(assert (=> start!713528 setRes!54934))

(assert (=> start!713528 tp!2078096))

(declare-fun e!4381139 () Bool)

(assert (=> start!713528 e!4381139))

(declare-fun condSetEmpty!54934 () Bool)

(assert (=> start!713528 (= condSetEmpty!54934 (= s2!427 (as set.empty (Set A!913))))))

(assert (=> start!713528 setRes!54935))

(declare-fun setNonEmpty!54934 () Bool)

(declare-fun tp!2078093 () Bool)

(declare-fun tp_is_empty!47719 () Bool)

(assert (=> setNonEmpty!54934 (= setRes!54934 (and tp!2078093 tp_is_empty!47719))))

(declare-fun setElem!54934 () A!913)

(declare-fun setRest!54935 () (Set A!913))

(assert (=> setNonEmpty!54934 (= s1!456 (set.union (set.insert setElem!54934 (as set.empty (Set A!913))) setRest!54935))))

(declare-fun b!7318022 () Bool)

(declare-fun tp_is_empty!47717 () Bool)

(declare-fun tp!2078092 () Bool)

(assert (=> b!7318022 (= e!4381139 (and tp_is_empty!47717 tp!2078092))))

(declare-fun b!7318023 () Bool)

(declare-fun tp!2078094 () Bool)

(assert (=> b!7318023 (= e!4381138 (and tp_is_empty!47717 tp!2078094))))

(declare-fun b!7318024 () Bool)

(declare-fun res!2957129 () Bool)

(assert (=> b!7318024 (=> (not res!2957129) (not e!4381137))))

(declare-fun l2!808 () List!71371)

(declare-fun subseq!868 (List!71371 List!71371) Bool)

(assert (=> b!7318024 (= res!2957129 (subseq!868 l2!808 (toList!11658 (flatMap!3076 (set.union s1!456 s2!427) f!803))))))

(declare-fun b!7318025 () Bool)

(declare-fun size!41885 (List!71371) Int)

(assert (=> b!7318025 (= e!4381137 (< (size!41885 l2!808) 0))))

(declare-fun setNonEmpty!54935 () Bool)

(declare-fun tp!2078095 () Bool)

(assert (=> setNonEmpty!54935 (= setRes!54935 (and tp!2078095 tp_is_empty!47719))))

(declare-fun setElem!54935 () A!913)

(declare-fun setRest!54934 () (Set A!913))

(assert (=> setNonEmpty!54935 (= s2!427 (set.union (set.insert setElem!54935 (as set.empty (Set A!913))) setRest!54934))))

(declare-fun setIsEmpty!54935 () Bool)

(assert (=> setIsEmpty!54935 setRes!54934))

(assert (= (and start!713528 res!2957128) b!7318024))

(assert (= (and b!7318024 res!2957129) b!7318025))

(assert (= (and start!713528 (is-Cons!71247 l2!808)) b!7318023))

(assert (= (and start!713528 condSetEmpty!54935) setIsEmpty!54935))

(assert (= (and start!713528 (not condSetEmpty!54935)) setNonEmpty!54934))

(assert (= (and start!713528 (is-Cons!71247 l1!819)) b!7318022))

(assert (= (and start!713528 condSetEmpty!54934) setIsEmpty!54934))

(assert (= (and start!713528 (not condSetEmpty!54934)) setNonEmpty!54935))

(declare-fun m!7982792 () Bool)

(assert (=> start!713528 m!7982792))

(declare-fun m!7982794 () Bool)

(assert (=> start!713528 m!7982794))

(declare-fun m!7982796 () Bool)

(assert (=> start!713528 m!7982796))

(declare-fun m!7982798 () Bool)

(assert (=> b!7318024 m!7982798))

(assert (=> b!7318024 m!7982798))

(declare-fun m!7982800 () Bool)

(assert (=> b!7318024 m!7982800))

(assert (=> b!7318024 m!7982800))

(declare-fun m!7982802 () Bool)

(assert (=> b!7318024 m!7982802))

(declare-fun m!7982804 () Bool)

(assert (=> b!7318025 m!7982804))

(push 1)

(assert tp_is_empty!47719)

(assert (not b_next!134857))

(assert (not b!7318023))

(assert (not b!7318025))

(assert (not b!7318022))

(assert (not start!713528))

(assert b_and!351475)

(assert (not b!7318024))

(assert tp_is_empty!47717)

(assert (not setNonEmpty!54935))

(assert (not setNonEmpty!54934))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351475)

(assert (not b_next!134857))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2272402 () Bool)

(declare-fun e!4381151 () Bool)

(assert (=> d!2272402 e!4381151))

(declare-fun res!2957138 () Bool)

(assert (=> d!2272402 (=> (not res!2957138) (not e!4381151))))

(declare-fun lt!2603043 () List!71371)

(declare-fun noDuplicate!3066 (List!71371) Bool)

(assert (=> d!2272402 (= res!2957138 (noDuplicate!3066 lt!2603043))))

(declare-fun choose!56790 ((Set B!3615)) List!71371)

(assert (=> d!2272402 (= lt!2603043 (choose!56790 (set.union (flatMap!3076 s1!456 f!803) (flatMap!3076 s2!427 f!803))))))

(assert (=> d!2272402 (= (toList!11658 (set.union (flatMap!3076 s1!456 f!803) (flatMap!3076 s2!427 f!803))) lt!2603043)))

(declare-fun b!7318040 () Bool)

(declare-fun content!14885 (List!71371) (Set B!3615))

(assert (=> b!7318040 (= e!4381151 (= (content!14885 lt!2603043) (set.union (flatMap!3076 s1!456 f!803) (flatMap!3076 s2!427 f!803))))))

(assert (= (and d!2272402 res!2957138) b!7318040))

(declare-fun m!7982820 () Bool)

(assert (=> d!2272402 m!7982820))

(declare-fun m!7982822 () Bool)

(assert (=> d!2272402 m!7982822))

(declare-fun m!7982824 () Bool)

(assert (=> b!7318040 m!7982824))

(assert (=> start!713528 d!2272402))

(declare-fun d!2272404 () Bool)

(declare-fun choose!56791 ((Set A!913) Int) (Set B!3615))

(assert (=> d!2272404 (= (flatMap!3076 s1!456 f!803) (choose!56791 s1!456 f!803))))

(declare-fun bs!1915598 () Bool)

(assert (= bs!1915598 d!2272404))

(declare-fun m!7982826 () Bool)

(assert (=> bs!1915598 m!7982826))

(assert (=> start!713528 d!2272404))

(declare-fun d!2272406 () Bool)

(assert (=> d!2272406 (= (flatMap!3076 s2!427 f!803) (choose!56791 s2!427 f!803))))

(declare-fun bs!1915599 () Bool)

(assert (= bs!1915599 d!2272406))

(declare-fun m!7982828 () Bool)

(assert (=> bs!1915599 m!7982828))

(assert (=> start!713528 d!2272406))

(declare-fun d!2272408 () Bool)

(declare-fun lt!2603046 () Int)

(assert (=> d!2272408 (>= lt!2603046 0)))

(declare-fun e!4381154 () Int)

(assert (=> d!2272408 (= lt!2603046 e!4381154)))

(declare-fun c!1358540 () Bool)

(assert (=> d!2272408 (= c!1358540 (is-Nil!71247 l2!808))))

(assert (=> d!2272408 (= (size!41885 l2!808) lt!2603046)))

(declare-fun b!7318045 () Bool)

(assert (=> b!7318045 (= e!4381154 0)))

(declare-fun b!7318046 () Bool)

(assert (=> b!7318046 (= e!4381154 (+ 1 (size!41885 (t!385603 l2!808))))))

(assert (= (and d!2272408 c!1358540) b!7318045))

(assert (= (and d!2272408 (not c!1358540)) b!7318046))

(declare-fun m!7982830 () Bool)

(assert (=> b!7318046 m!7982830))

(assert (=> b!7318025 d!2272408))

(declare-fun b!7318056 () Bool)

(declare-fun e!4381164 () Bool)

(declare-fun e!4381166 () Bool)

(assert (=> b!7318056 (= e!4381164 e!4381166)))

(declare-fun res!2957148 () Bool)

(assert (=> b!7318056 (=> res!2957148 e!4381166)))

(declare-fun e!4381165 () Bool)

(assert (=> b!7318056 (= res!2957148 e!4381165)))

(declare-fun res!2957150 () Bool)

(assert (=> b!7318056 (=> (not res!2957150) (not e!4381165))))

(assert (=> b!7318056 (= res!2957150 (= (h!77695 l2!808) (h!77695 (toList!11658 (flatMap!3076 (set.union s1!456 s2!427) f!803)))))))

(declare-fun d!2272410 () Bool)

(declare-fun res!2957147 () Bool)

(declare-fun e!4381163 () Bool)

(assert (=> d!2272410 (=> res!2957147 e!4381163)))

(assert (=> d!2272410 (= res!2957147 (is-Nil!71247 l2!808))))

(assert (=> d!2272410 (= (subseq!868 l2!808 (toList!11658 (flatMap!3076 (set.union s1!456 s2!427) f!803))) e!4381163)))

(declare-fun b!7318057 () Bool)

(assert (=> b!7318057 (= e!4381165 (subseq!868 (t!385603 l2!808) (t!385603 (toList!11658 (flatMap!3076 (set.union s1!456 s2!427) f!803)))))))

(declare-fun b!7318055 () Bool)

(assert (=> b!7318055 (= e!4381163 e!4381164)))

(declare-fun res!2957149 () Bool)

(assert (=> b!7318055 (=> (not res!2957149) (not e!4381164))))

(assert (=> b!7318055 (= res!2957149 (is-Cons!71247 (toList!11658 (flatMap!3076 (set.union s1!456 s2!427) f!803))))))

(declare-fun b!7318058 () Bool)

(assert (=> b!7318058 (= e!4381166 (subseq!868 l2!808 (t!385603 (toList!11658 (flatMap!3076 (set.union s1!456 s2!427) f!803)))))))

(assert (= (and d!2272410 (not res!2957147)) b!7318055))

(assert (= (and b!7318055 res!2957149) b!7318056))

(assert (= (and b!7318056 res!2957150) b!7318057))

(assert (= (and b!7318056 (not res!2957148)) b!7318058))

(declare-fun m!7982832 () Bool)

(assert (=> b!7318057 m!7982832))

(declare-fun m!7982834 () Bool)

(assert (=> b!7318058 m!7982834))

(assert (=> b!7318024 d!2272410))

(declare-fun d!2272414 () Bool)

(declare-fun e!4381167 () Bool)

(assert (=> d!2272414 e!4381167))

(declare-fun res!2957151 () Bool)

(assert (=> d!2272414 (=> (not res!2957151) (not e!4381167))))

(declare-fun lt!2603047 () List!71371)

(assert (=> d!2272414 (= res!2957151 (noDuplicate!3066 lt!2603047))))

(assert (=> d!2272414 (= lt!2603047 (choose!56790 (flatMap!3076 (set.union s1!456 s2!427) f!803)))))

(assert (=> d!2272414 (= (toList!11658 (flatMap!3076 (set.union s1!456 s2!427) f!803)) lt!2603047)))

(declare-fun b!7318059 () Bool)

(assert (=> b!7318059 (= e!4381167 (= (content!14885 lt!2603047) (flatMap!3076 (set.union s1!456 s2!427) f!803)))))

(assert (= (and d!2272414 res!2957151) b!7318059))

(declare-fun m!7982836 () Bool)

(assert (=> d!2272414 m!7982836))

(assert (=> d!2272414 m!7982798))

(declare-fun m!7982838 () Bool)

(assert (=> d!2272414 m!7982838))

(declare-fun m!7982840 () Bool)

(assert (=> b!7318059 m!7982840))

(assert (=> b!7318024 d!2272414))

(declare-fun d!2272416 () Bool)

(assert (=> d!2272416 (= (flatMap!3076 (set.union s1!456 s2!427) f!803) (choose!56791 (set.union s1!456 s2!427) f!803))))

(declare-fun bs!1915600 () Bool)

(assert (= bs!1915600 d!2272416))

(declare-fun m!7982842 () Bool)

(assert (=> bs!1915600 m!7982842))

(assert (=> b!7318024 d!2272416))

(declare-fun condSetEmpty!54944 () Bool)

(assert (=> setNonEmpty!54935 (= condSetEmpty!54944 (= setRest!54934 (as set.empty (Set A!913))))))

(declare-fun setRes!54944 () Bool)

(assert (=> setNonEmpty!54935 (= tp!2078095 setRes!54944)))

(declare-fun setIsEmpty!54944 () Bool)

(assert (=> setIsEmpty!54944 setRes!54944))

(declare-fun setNonEmpty!54944 () Bool)

(declare-fun tp!2078114 () Bool)

(assert (=> setNonEmpty!54944 (= setRes!54944 (and tp!2078114 tp_is_empty!47719))))

(declare-fun setElem!54944 () A!913)

(declare-fun setRest!54944 () (Set A!913))

(assert (=> setNonEmpty!54944 (= setRest!54934 (set.union (set.insert setElem!54944 (as set.empty (Set A!913))) setRest!54944))))

(assert (= (and setNonEmpty!54935 condSetEmpty!54944) setIsEmpty!54944))

(assert (= (and setNonEmpty!54935 (not condSetEmpty!54944)) setNonEmpty!54944))

(declare-fun b!7318066 () Bool)

(declare-fun e!4381170 () Bool)

(declare-fun tp!2078117 () Bool)

(assert (=> b!7318066 (= e!4381170 (and tp_is_empty!47717 tp!2078117))))

(assert (=> b!7318023 (= tp!2078094 e!4381170)))

(assert (= (and b!7318023 (is-Cons!71247 (t!385603 l2!808))) b!7318066))

(declare-fun b!7318067 () Bool)

(declare-fun e!4381171 () Bool)

(declare-fun tp!2078118 () Bool)

(assert (=> b!7318067 (= e!4381171 (and tp_is_empty!47717 tp!2078118))))

(assert (=> b!7318022 (= tp!2078092 e!4381171)))

(assert (= (and b!7318022 (is-Cons!71247 (t!385603 l1!819))) b!7318067))

(declare-fun condSetEmpty!54945 () Bool)

(assert (=> setNonEmpty!54934 (= condSetEmpty!54945 (= setRest!54935 (as set.empty (Set A!913))))))

(declare-fun setRes!54945 () Bool)

(assert (=> setNonEmpty!54934 (= tp!2078093 setRes!54945)))

(declare-fun setIsEmpty!54945 () Bool)

(assert (=> setIsEmpty!54945 setRes!54945))

(declare-fun setNonEmpty!54945 () Bool)

(declare-fun tp!2078119 () Bool)

(assert (=> setNonEmpty!54945 (= setRes!54945 (and tp!2078119 tp_is_empty!47719))))

(declare-fun setElem!54945 () A!913)

(declare-fun setRest!54945 () (Set A!913))

(assert (=> setNonEmpty!54945 (= setRest!54935 (set.union (set.insert setElem!54945 (as set.empty (Set A!913))) setRest!54945))))

(assert (= (and setNonEmpty!54934 condSetEmpty!54945) setIsEmpty!54945))

(assert (= (and setNonEmpty!54934 (not condSetEmpty!54945)) setNonEmpty!54945))

(push 1)

(assert (not d!2272414))

(assert (not d!2272404))

(assert b_and!351475)

(assert tp_is_empty!47717)

(assert (not b!7318067))

(assert (not setNonEmpty!54944))

(assert tp_is_empty!47719)

(assert (not b!7318059))

(assert (not b_next!134857))

(assert (not b!7318040))

(assert (not b!7318058))

(assert (not d!2272416))

(assert (not setNonEmpty!54945))

(assert (not d!2272402))

(assert (not b!7318066))

(assert (not b!7318046))

(assert (not b!7318057))

(assert (not d!2272406))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351475)

(assert (not b_next!134857))

(check-sat)

(pop 1)


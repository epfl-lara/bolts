; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693150 () Bool)

(assert start!693150)

(declare-fun b_free!133619 () Bool)

(declare-fun b_next!134409 () Bool)

(assert (=> start!693150 (= b_free!133619 (not b_next!134409))))

(declare-fun tp!1960536 () Bool)

(declare-fun b_and!350671 () Bool)

(assert (=> start!693150 (= tp!1960536 b_and!350671)))

(declare-fun res!2904881 () Bool)

(declare-fun e!4278681 () Bool)

(assert (=> start!693150 (=> (not res!2904881) (not e!4278681))))

(declare-datatypes ((A!525 0))(
  ( (A!526 (val!27851 Int)) )
))
(declare-fun s!1427 () (Set A!525))

(declare-fun elmt!108 () A!525)

(assert (=> start!693150 (= res!2904881 (= s!1427 (set.insert elmt!108 (as set.empty (Set A!525)))))))

(assert (=> start!693150 e!4278681))

(declare-fun condSetEmpty!50708 () Bool)

(assert (=> start!693150 (= condSetEmpty!50708 (= s!1427 (as set.empty (Set A!525))))))

(declare-fun setRes!50708 () Bool)

(assert (=> start!693150 setRes!50708))

(declare-fun tp_is_empty!45245 () Bool)

(assert (=> start!693150 tp_is_empty!45245))

(assert (=> start!693150 tp!1960536))

(declare-fun b!7120949 () Bool)

(declare-datatypes ((B!3183 0))(
  ( (B!3184 (val!27852 Int)) )
))
(declare-datatypes ((List!68961 0))(
  ( (Nil!68837) (Cons!68837 (h!75285 B!3183) (t!382828 List!68961)) )
))
(declare-fun lt!2561403 () List!68961)

(declare-fun lt!2561404 () (Set B!3183))

(assert (=> b!7120949 (= e!4278681 (and (is-Cons!68837 lt!2561403) (not (set.member (h!75285 lt!2561403) lt!2561404))))))

(declare-fun toList!11064 ((Set B!3183)) List!68961)

(assert (=> b!7120949 (= lt!2561403 (toList!11064 lt!2561404))))

(declare-fun f!842 () Int)

(declare-fun map!16340 ((Set A!525) Int) (Set B!3183))

(assert (=> b!7120949 (= lt!2561404 (map!16340 s!1427 f!842))))

(declare-fun setIsEmpty!50708 () Bool)

(assert (=> setIsEmpty!50708 setRes!50708))

(declare-fun setNonEmpty!50708 () Bool)

(declare-fun tp!1960535 () Bool)

(assert (=> setNonEmpty!50708 (= setRes!50708 (and tp!1960535 tp_is_empty!45245))))

(declare-fun setElem!50708 () A!525)

(declare-fun setRest!50708 () (Set A!525))

(assert (=> setNonEmpty!50708 (= s!1427 (set.union (set.insert setElem!50708 (as set.empty (Set A!525))) setRest!50708))))

(assert (= (and start!693150 res!2904881) b!7120949))

(assert (= (and start!693150 condSetEmpty!50708) setIsEmpty!50708))

(assert (= (and start!693150 (not condSetEmpty!50708)) setNonEmpty!50708))

(declare-fun m!7837776 () Bool)

(assert (=> start!693150 m!7837776))

(declare-fun m!7837778 () Bool)

(assert (=> b!7120949 m!7837778))

(declare-fun m!7837780 () Bool)

(assert (=> b!7120949 m!7837780))

(declare-fun m!7837782 () Bool)

(assert (=> b!7120949 m!7837782))

(push 1)

(assert tp_is_empty!45245)

(assert b_and!350671)

(assert (not b!7120949))

(assert (not b_next!134409))

(assert (not setNonEmpty!50708))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350671)

(assert (not b_next!134409))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2221990 () Bool)

(declare-fun e!4278687 () Bool)

(assert (=> d!2221990 e!4278687))

(declare-fun res!2904887 () Bool)

(assert (=> d!2221990 (=> (not res!2904887) (not e!4278687))))

(declare-fun lt!2561413 () List!68961)

(declare-fun noDuplicate!2768 (List!68961) Bool)

(assert (=> d!2221990 (= res!2904887 (noDuplicate!2768 lt!2561413))))

(declare-fun choose!54938 ((Set B!3183)) List!68961)

(assert (=> d!2221990 (= lt!2561413 (choose!54938 lt!2561404))))

(assert (=> d!2221990 (= (toList!11064 lt!2561404) lt!2561413)))

(declare-fun b!7120955 () Bool)

(declare-fun content!14066 (List!68961) (Set B!3183))

(assert (=> b!7120955 (= e!4278687 (= (content!14066 lt!2561413) lt!2561404))))

(assert (= (and d!2221990 res!2904887) b!7120955))

(declare-fun m!7837792 () Bool)

(assert (=> d!2221990 m!7837792))

(declare-fun m!7837794 () Bool)

(assert (=> d!2221990 m!7837794))

(declare-fun m!7837796 () Bool)

(assert (=> b!7120955 m!7837796))

(assert (=> b!7120949 d!2221990))

(declare-fun d!2221994 () Bool)

(declare-fun choose!54939 ((Set A!525) Int) (Set B!3183))

(assert (=> d!2221994 (= (map!16340 s!1427 f!842) (choose!54939 s!1427 f!842))))

(declare-fun bs!1885911 () Bool)

(assert (= bs!1885911 d!2221994))

(declare-fun m!7837798 () Bool)

(assert (=> bs!1885911 m!7837798))

(assert (=> b!7120949 d!2221994))

(declare-fun condSetEmpty!50714 () Bool)

(assert (=> setNonEmpty!50708 (= condSetEmpty!50714 (= setRest!50708 (as set.empty (Set A!525))))))

(declare-fun setRes!50714 () Bool)

(assert (=> setNonEmpty!50708 (= tp!1960535 setRes!50714)))

(declare-fun setIsEmpty!50714 () Bool)

(assert (=> setIsEmpty!50714 setRes!50714))

(declare-fun setNonEmpty!50714 () Bool)

(declare-fun tp!1960545 () Bool)

(assert (=> setNonEmpty!50714 (= setRes!50714 (and tp!1960545 tp_is_empty!45245))))

(declare-fun setElem!50714 () A!525)

(declare-fun setRest!50714 () (Set A!525))

(assert (=> setNonEmpty!50714 (= setRest!50708 (set.union (set.insert setElem!50714 (as set.empty (Set A!525))) setRest!50714))))

(assert (= (and setNonEmpty!50708 condSetEmpty!50714) setIsEmpty!50714))

(assert (= (and setNonEmpty!50708 (not condSetEmpty!50714)) setNonEmpty!50714))

(push 1)

(assert tp_is_empty!45245)

(assert b_and!350671)

(assert (not setNonEmpty!50714))

(assert (not b_next!134409))

(assert (not d!2221994))

(assert (not d!2221990))

(assert (not b!7120955))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350671)

(assert (not b_next!134409))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2221998 () Bool)

(declare-fun res!2904895 () Bool)

(declare-fun e!4278695 () Bool)

(assert (=> d!2221998 (=> res!2904895 e!4278695)))

(assert (=> d!2221998 (= res!2904895 (is-Nil!68837 lt!2561413))))

(assert (=> d!2221998 (= (noDuplicate!2768 lt!2561413) e!4278695)))

(declare-fun b!7120967 () Bool)

(declare-fun e!4278696 () Bool)

(assert (=> b!7120967 (= e!4278695 e!4278696)))

(declare-fun res!2904896 () Bool)

(assert (=> b!7120967 (=> (not res!2904896) (not e!4278696))))

(declare-fun contains!20508 (List!68961 B!3183) Bool)

(assert (=> b!7120967 (= res!2904896 (not (contains!20508 (t!382828 lt!2561413) (h!75285 lt!2561413))))))

(declare-fun b!7120968 () Bool)

(assert (=> b!7120968 (= e!4278696 (noDuplicate!2768 (t!382828 lt!2561413)))))

(assert (= (and d!2221998 (not res!2904895)) b!7120967))

(assert (= (and b!7120967 res!2904896) b!7120968))

(declare-fun m!7837808 () Bool)

(assert (=> b!7120967 m!7837808))

(declare-fun m!7837810 () Bool)

(assert (=> b!7120968 m!7837810))

(assert (=> d!2221990 d!2221998))

(declare-fun d!2222000 () Bool)

(declare-fun e!4278701 () Bool)

(assert (=> d!2222000 e!4278701))

(declare-fun res!2904902 () Bool)

(assert (=> d!2222000 (=> (not res!2904902) (not e!4278701))))

(declare-fun res!2904901 () List!68961)

(assert (=> d!2222000 (= res!2904902 (noDuplicate!2768 res!2904901))))

(declare-fun e!4278702 () Bool)

(assert (=> d!2222000 e!4278702))

(assert (=> d!2222000 (= (choose!54938 lt!2561404) res!2904901)))

(declare-fun b!7120973 () Bool)

(declare-fun tp_is_empty!45249 () Bool)

(declare-fun tp!1960551 () Bool)

(assert (=> b!7120973 (= e!4278702 (and tp_is_empty!45249 tp!1960551))))

(declare-fun b!7120974 () Bool)

(assert (=> b!7120974 (= e!4278701 (= (content!14066 res!2904901) lt!2561404))))

(assert (= (and d!2222000 (is-Cons!68837 res!2904901)) b!7120973))

(assert (= (and d!2222000 res!2904902) b!7120974))

(declare-fun m!7837812 () Bool)

(assert (=> d!2222000 m!7837812))

(declare-fun m!7837814 () Bool)

(assert (=> b!7120974 m!7837814))

(assert (=> d!2221990 d!2222000))

(declare-fun d!2222004 () Bool)

(declare-fun c!1328920 () Bool)

(assert (=> d!2222004 (= c!1328920 (is-Nil!68837 lt!2561413))))

(declare-fun e!4278708 () (Set B!3183))

(assert (=> d!2222004 (= (content!14066 lt!2561413) e!4278708)))

(declare-fun b!7120985 () Bool)

(assert (=> b!7120985 (= e!4278708 (as set.empty (Set B!3183)))))

(declare-fun b!7120986 () Bool)

(assert (=> b!7120986 (= e!4278708 (set.union (set.insert (h!75285 lt!2561413) (as set.empty (Set B!3183))) (content!14066 (t!382828 lt!2561413))))))

(assert (= (and d!2222004 c!1328920) b!7120985))

(assert (= (and d!2222004 (not c!1328920)) b!7120986))

(declare-fun m!7837820 () Bool)

(assert (=> b!7120986 m!7837820))

(declare-fun m!7837822 () Bool)

(assert (=> b!7120986 m!7837822))

(assert (=> b!7120955 d!2222004))

(declare-fun d!2222008 () Bool)

(assert (=> d!2222008 true))

(declare-fun setRes!50720 () Bool)

(assert (=> d!2222008 setRes!50720))

(declare-fun condSetEmpty!50720 () Bool)

(declare-fun res!2904909 () (Set B!3183))

(assert (=> d!2222008 (= condSetEmpty!50720 (= res!2904909 (as set.empty (Set B!3183))))))

(assert (=> d!2222008 (= (choose!54939 s!1427 f!842) res!2904909)))

(declare-fun setIsEmpty!50720 () Bool)

(assert (=> setIsEmpty!50720 setRes!50720))

(declare-fun setNonEmpty!50720 () Bool)

(declare-fun tp!1960554 () Bool)

(assert (=> setNonEmpty!50720 (= setRes!50720 (and tp!1960554 tp_is_empty!45249))))

(declare-fun setElem!50720 () B!3183)

(declare-fun setRest!50720 () (Set B!3183))

(assert (=> setNonEmpty!50720 (= res!2904909 (set.union (set.insert setElem!50720 (as set.empty (Set B!3183))) setRest!50720))))

(assert (= (and d!2222008 condSetEmpty!50720) setIsEmpty!50720))

(assert (= (and d!2222008 (not condSetEmpty!50720)) setNonEmpty!50720))

(assert (=> d!2221994 d!2222008))

(declare-fun condSetEmpty!50721 () Bool)

(assert (=> setNonEmpty!50714 (= condSetEmpty!50721 (= setRest!50714 (as set.empty (Set A!525))))))

(declare-fun setRes!50721 () Bool)

(assert (=> setNonEmpty!50714 (= tp!1960545 setRes!50721)))

(declare-fun setIsEmpty!50721 () Bool)

(assert (=> setIsEmpty!50721 setRes!50721))

(declare-fun setNonEmpty!50721 () Bool)

(declare-fun tp!1960555 () Bool)

(assert (=> setNonEmpty!50721 (= setRes!50721 (and tp!1960555 tp_is_empty!45245))))

(declare-fun setElem!50721 () A!525)

(declare-fun setRest!50721 () (Set A!525))

(assert (=> setNonEmpty!50721 (= setRest!50714 (set.union (set.insert setElem!50721 (as set.empty (Set A!525))) setRest!50721))))

(assert (= (and setNonEmpty!50714 condSetEmpty!50721) setIsEmpty!50721))

(assert (= (and setNonEmpty!50714 (not condSetEmpty!50721)) setNonEmpty!50721))

(push 1)

(assert tp_is_empty!45245)

(assert (not b!7120967))

(assert b_and!350671)

(assert (not d!2222000))

(assert (not b!7120968))

(assert (not setNonEmpty!50720))

(assert (not b_next!134409))

(assert (not b!7120973))

(assert tp_is_empty!45249)

(assert (not setNonEmpty!50721))

(assert (not b!7120986))

(assert (not b!7120974))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350671)

(assert (not b_next!134409))

(check-sat)

(pop 1)


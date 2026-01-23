; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693062 () Bool)

(assert start!693062)

(declare-fun b_free!133599 () Bool)

(declare-fun b_next!134389 () Bool)

(assert (=> start!693062 (= b_free!133599 (not b_next!134389))))

(declare-fun tp!1960429 () Bool)

(declare-fun b_and!350647 () Bool)

(assert (=> start!693062 (= tp!1960429 b_and!350647)))

(declare-fun b!7120766 () Bool)

(declare-fun e!4278528 () Bool)

(declare-datatypes ((B!3163 0))(
  ( (B!3164 (val!27831 Int)) )
))
(declare-fun lt!2561329 () (Set B!3163))

(declare-datatypes ((List!68951 0))(
  ( (Nil!68827) (Cons!68827 (h!75275 B!3163) (t!382814 List!68951)) )
))
(declare-fun toList!11054 ((Set B!3163)) List!68951)

(assert (=> b!7120766 (= e!4278528 (= (toList!11054 lt!2561329) Nil!68827))))

(declare-fun b!7120765 () Bool)

(declare-fun e!4278527 () Bool)

(assert (=> b!7120765 (= e!4278527 e!4278528)))

(declare-fun res!2904728 () Bool)

(assert (=> b!7120765 (=> (not res!2904728) (not e!4278528))))

(assert (=> b!7120765 (= res!2904728 (not (= lt!2561329 (as set.empty (Set B!3163)))))))

(declare-datatypes ((A!505 0))(
  ( (A!506 (val!27832 Int)) )
))
(declare-fun s!1400 () (Set A!505))

(declare-fun f!473 () Int)

(declare-fun map!16325 ((Set A!505) Int) (Set B!3163))

(assert (=> b!7120765 (= lt!2561329 (map!16325 s!1400 f!473))))

(declare-fun setNonEmpty!50644 () Bool)

(declare-fun setRes!50644 () Bool)

(declare-fun tp!1960430 () Bool)

(declare-fun tp_is_empty!45213 () Bool)

(assert (=> setNonEmpty!50644 (= setRes!50644 (and tp!1960430 tp_is_empty!45213))))

(declare-fun setElem!50644 () A!505)

(declare-fun setRest!50644 () (Set A!505))

(assert (=> setNonEmpty!50644 (= s!1400 (set.union (set.insert setElem!50644 (as set.empty (Set A!505))) setRest!50644))))

(declare-fun res!2904727 () Bool)

(assert (=> start!693062 (=> (not res!2904727) (not e!4278527))))

(assert (=> start!693062 (= res!2904727 (= s!1400 (as set.empty (Set A!505))))))

(assert (=> start!693062 e!4278527))

(declare-fun condSetEmpty!50644 () Bool)

(assert (=> start!693062 (= condSetEmpty!50644 (= s!1400 (as set.empty (Set A!505))))))

(assert (=> start!693062 setRes!50644))

(assert (=> start!693062 tp!1960429))

(declare-fun setIsEmpty!50644 () Bool)

(assert (=> setIsEmpty!50644 setRes!50644))

(assert (= (and start!693062 res!2904727) b!7120765))

(assert (= (and b!7120765 res!2904728) b!7120766))

(assert (= (and start!693062 condSetEmpty!50644) setIsEmpty!50644))

(assert (= (and start!693062 (not condSetEmpty!50644)) setNonEmpty!50644))

(declare-fun m!7837592 () Bool)

(assert (=> b!7120766 m!7837592))

(declare-fun m!7837594 () Bool)

(assert (=> b!7120765 m!7837594))

(push 1)

(assert (not setNonEmpty!50644))

(assert (not b!7120765))

(assert (not b_next!134389))

(assert tp_is_empty!45213)

(assert (not b!7120766))

(assert b_and!350647)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350647)

(assert (not b_next!134389))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2221917 () Bool)

(declare-fun e!4278537 () Bool)

(assert (=> d!2221917 e!4278537))

(declare-fun res!2904737 () Bool)

(assert (=> d!2221917 (=> (not res!2904737) (not e!4278537))))

(declare-fun lt!2561335 () List!68951)

(declare-fun noDuplicate!2762 (List!68951) Bool)

(assert (=> d!2221917 (= res!2904737 (noDuplicate!2762 lt!2561335))))

(declare-fun choose!54924 ((Set B!3163)) List!68951)

(assert (=> d!2221917 (= lt!2561335 (choose!54924 lt!2561329))))

(assert (=> d!2221917 (= (toList!11054 lt!2561329) lt!2561335)))

(declare-fun b!7120775 () Bool)

(declare-fun content!14060 (List!68951) (Set B!3163))

(assert (=> b!7120775 (= e!4278537 (= (content!14060 lt!2561335) lt!2561329))))

(assert (= (and d!2221917 res!2904737) b!7120775))

(declare-fun m!7837600 () Bool)

(assert (=> d!2221917 m!7837600))

(declare-fun m!7837602 () Bool)

(assert (=> d!2221917 m!7837602))

(declare-fun m!7837604 () Bool)

(assert (=> b!7120775 m!7837604))

(assert (=> b!7120766 d!2221917))

(declare-fun d!2221919 () Bool)

(declare-fun choose!54925 ((Set A!505) Int) (Set B!3163))

(assert (=> d!2221919 (= (map!16325 s!1400 f!473) (choose!54925 s!1400 f!473))))

(declare-fun bs!1885895 () Bool)

(assert (= bs!1885895 d!2221919))

(declare-fun m!7837606 () Bool)

(assert (=> bs!1885895 m!7837606))

(assert (=> b!7120765 d!2221919))

(declare-fun condSetEmpty!50650 () Bool)

(assert (=> setNonEmpty!50644 (= condSetEmpty!50650 (= setRest!50644 (as set.empty (Set A!505))))))

(declare-fun setRes!50650 () Bool)

(assert (=> setNonEmpty!50644 (= tp!1960430 setRes!50650)))

(declare-fun setIsEmpty!50650 () Bool)

(assert (=> setIsEmpty!50650 setRes!50650))

(declare-fun setNonEmpty!50650 () Bool)

(declare-fun tp!1960439 () Bool)

(assert (=> setNonEmpty!50650 (= setRes!50650 (and tp!1960439 tp_is_empty!45213))))

(declare-fun setElem!50650 () A!505)

(declare-fun setRest!50650 () (Set A!505))

(assert (=> setNonEmpty!50650 (= setRest!50644 (set.union (set.insert setElem!50650 (as set.empty (Set A!505))) setRest!50650))))

(assert (= (and setNonEmpty!50644 condSetEmpty!50650) setIsEmpty!50650))

(assert (= (and setNonEmpty!50644 (not condSetEmpty!50650)) setNonEmpty!50650))

(push 1)

(assert (not b!7120775))

(assert (not b_next!134389))

(assert tp_is_empty!45213)

(assert (not d!2221917))

(assert (not d!2221919))

(assert (not setNonEmpty!50650))

(assert b_and!350647)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350647)

(assert (not b_next!134389))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2221925 () Bool)

(declare-fun c!1328905 () Bool)

(assert (=> d!2221925 (= c!1328905 (is-Nil!68827 lt!2561335))))

(declare-fun e!4278543 () (Set B!3163))

(assert (=> d!2221925 (= (content!14060 lt!2561335) e!4278543)))

(declare-fun b!7120787 () Bool)

(assert (=> b!7120787 (= e!4278543 (as set.empty (Set B!3163)))))

(declare-fun b!7120788 () Bool)

(assert (=> b!7120788 (= e!4278543 (set.union (set.insert (h!75275 lt!2561335) (as set.empty (Set B!3163))) (content!14060 (t!382814 lt!2561335))))))

(assert (= (and d!2221925 c!1328905) b!7120787))

(assert (= (and d!2221925 (not c!1328905)) b!7120788))

(declare-fun m!7837616 () Bool)

(assert (=> b!7120788 m!7837616))

(declare-fun m!7837618 () Bool)

(assert (=> b!7120788 m!7837618))

(assert (=> b!7120775 d!2221925))

(declare-fun d!2221927 () Bool)

(declare-fun res!2904745 () Bool)

(declare-fun e!4278548 () Bool)

(assert (=> d!2221927 (=> res!2904745 e!4278548)))

(assert (=> d!2221927 (= res!2904745 (is-Nil!68827 lt!2561335))))

(assert (=> d!2221927 (= (noDuplicate!2762 lt!2561335) e!4278548)))

(declare-fun b!7120793 () Bool)

(declare-fun e!4278549 () Bool)

(assert (=> b!7120793 (= e!4278548 e!4278549)))

(declare-fun res!2904746 () Bool)

(assert (=> b!7120793 (=> (not res!2904746) (not e!4278549))))

(declare-fun contains!20504 (List!68951 B!3163) Bool)

(assert (=> b!7120793 (= res!2904746 (not (contains!20504 (t!382814 lt!2561335) (h!75275 lt!2561335))))))

(declare-fun b!7120794 () Bool)

(assert (=> b!7120794 (= e!4278549 (noDuplicate!2762 (t!382814 lt!2561335)))))

(assert (= (and d!2221927 (not res!2904745)) b!7120793))

(assert (= (and b!7120793 res!2904746) b!7120794))

(declare-fun m!7837620 () Bool)

(assert (=> b!7120793 m!7837620))

(declare-fun m!7837622 () Bool)

(assert (=> b!7120794 m!7837622))

(assert (=> d!2221917 d!2221927))

(declare-fun d!2221929 () Bool)

(declare-fun e!4278555 () Bool)

(assert (=> d!2221929 e!4278555))

(declare-fun res!2904752 () Bool)

(assert (=> d!2221929 (=> (not res!2904752) (not e!4278555))))

(declare-fun res!2904751 () List!68951)

(assert (=> d!2221929 (= res!2904752 (noDuplicate!2762 res!2904751))))

(declare-fun e!4278554 () Bool)

(assert (=> d!2221929 e!4278554))

(assert (=> d!2221929 (= (choose!54924 lt!2561329) res!2904751)))

(declare-fun b!7120799 () Bool)

(declare-fun tp_is_empty!45217 () Bool)

(declare-fun tp!1960445 () Bool)

(assert (=> b!7120799 (= e!4278554 (and tp_is_empty!45217 tp!1960445))))

(declare-fun b!7120800 () Bool)

(assert (=> b!7120800 (= e!4278555 (= (content!14060 res!2904751) lt!2561329))))

(assert (= (and d!2221929 (is-Cons!68827 res!2904751)) b!7120799))

(assert (= (and d!2221929 res!2904752) b!7120800))

(declare-fun m!7837624 () Bool)

(assert (=> d!2221929 m!7837624))

(declare-fun m!7837626 () Bool)

(assert (=> b!7120800 m!7837626))

(assert (=> d!2221917 d!2221929))

(declare-fun d!2221931 () Bool)

(assert (=> d!2221931 true))

(declare-fun setRes!50656 () Bool)

(assert (=> d!2221931 setRes!50656))

(declare-fun condSetEmpty!50656 () Bool)

(declare-fun res!2904755 () (Set B!3163))

(assert (=> d!2221931 (= condSetEmpty!50656 (= res!2904755 (as set.empty (Set B!3163))))))

(assert (=> d!2221931 (= (choose!54925 s!1400 f!473) res!2904755)))

(declare-fun setIsEmpty!50656 () Bool)

(assert (=> setIsEmpty!50656 setRes!50656))

(declare-fun setNonEmpty!50656 () Bool)

(declare-fun tp!1960448 () Bool)

(assert (=> setNonEmpty!50656 (= setRes!50656 (and tp!1960448 tp_is_empty!45217))))

(declare-fun setElem!50656 () B!3163)

(declare-fun setRest!50656 () (Set B!3163))

(assert (=> setNonEmpty!50656 (= res!2904755 (set.union (set.insert setElem!50656 (as set.empty (Set B!3163))) setRest!50656))))

(assert (= (and d!2221931 condSetEmpty!50656) setIsEmpty!50656))

(assert (= (and d!2221931 (not condSetEmpty!50656)) setNonEmpty!50656))

(assert (=> d!2221919 d!2221931))

(declare-fun condSetEmpty!50657 () Bool)

(assert (=> setNonEmpty!50650 (= condSetEmpty!50657 (= setRest!50650 (as set.empty (Set A!505))))))

(declare-fun setRes!50657 () Bool)

(assert (=> setNonEmpty!50650 (= tp!1960439 setRes!50657)))

(declare-fun setIsEmpty!50657 () Bool)

(assert (=> setIsEmpty!50657 setRes!50657))

(declare-fun setNonEmpty!50657 () Bool)

(declare-fun tp!1960449 () Bool)

(assert (=> setNonEmpty!50657 (= setRes!50657 (and tp!1960449 tp_is_empty!45213))))

(declare-fun setElem!50657 () A!505)

(declare-fun setRest!50657 () (Set A!505))

(assert (=> setNonEmpty!50657 (= setRest!50650 (set.union (set.insert setElem!50657 (as set.empty (Set A!505))) setRest!50657))))

(assert (= (and setNonEmpty!50650 condSetEmpty!50657) setIsEmpty!50657))

(assert (= (and setNonEmpty!50650 (not condSetEmpty!50657)) setNonEmpty!50657))

(push 1)

(assert (not setNonEmpty!50656))

(assert (not b!7120788))

(assert (not b!7120800))

(assert tp_is_empty!45213)

(assert (not b!7120794))

(assert (not b!7120799))

(assert (not b!7120793))

(assert tp_is_empty!45217)

(assert b_and!350647)

(assert (not d!2221929))

(assert (not setNonEmpty!50657))

(assert (not b_next!134389))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350647)

(assert (not b_next!134389))

(check-sat)

(pop 1)


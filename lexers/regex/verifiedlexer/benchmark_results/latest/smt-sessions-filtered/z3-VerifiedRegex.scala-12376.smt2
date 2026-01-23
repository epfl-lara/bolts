; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693096 () Bool)

(assert start!693096)

(declare-fun b_free!133609 () Bool)

(declare-fun b_next!134399 () Bool)

(assert (=> start!693096 (= b_free!133609 (not b_next!134399))))

(declare-fun tp!1960479 () Bool)

(declare-fun b_and!350657 () Bool)

(assert (=> start!693096 (= tp!1960479 b_and!350657)))

(declare-fun b!7120841 () Bool)

(declare-fun e!4278593 () Bool)

(declare-fun e!4278594 () Bool)

(assert (=> b!7120841 (= e!4278593 e!4278594)))

(declare-fun res!2904793 () Bool)

(assert (=> b!7120841 (=> (not res!2904793) (not e!4278594))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((B!3173 0))(
  ( (B!3174 (val!27841 Int)) )
))
(declare-fun lt!2561356 () (InoxSet B!3173))

(assert (=> b!7120841 (= res!2904793 (not (= lt!2561356 ((as const (Array B!3173 Bool)) false))))))

(declare-datatypes ((A!515 0))(
  ( (A!516 (val!27842 Int)) )
))
(declare-fun s!1400 () (InoxSet A!515))

(declare-fun f!473 () Int)

(declare-fun map!16332 ((InoxSet A!515) Int) (InoxSet B!3173))

(assert (=> b!7120841 (= lt!2561356 (map!16332 s!1400 f!473))))

(declare-fun res!2904794 () Bool)

(assert (=> start!693096 (=> (not res!2904794) (not e!4278593))))

(assert (=> start!693096 (= res!2904794 (= s!1400 ((as const (Array A!515 Bool)) false)))))

(assert (=> start!693096 e!4278593))

(declare-fun condSetEmpty!50673 () Bool)

(assert (=> start!693096 (= condSetEmpty!50673 (= s!1400 ((as const (Array A!515 Bool)) false)))))

(declare-fun setRes!50673 () Bool)

(assert (=> start!693096 setRes!50673))

(assert (=> start!693096 tp!1960479))

(declare-fun b!7120842 () Bool)

(declare-datatypes ((List!68956 0))(
  ( (Nil!68832) (Cons!68832 (h!75280 B!3173) (t!382819 List!68956)) )
))
(declare-fun head!14454 (List!68956) B!3173)

(declare-fun toList!11059 ((InoxSet B!3173)) List!68956)

(assert (=> b!7120842 (= e!4278594 (not (select lt!2561356 (head!14454 (toList!11059 lt!2561356)))))))

(declare-fun setIsEmpty!50673 () Bool)

(assert (=> setIsEmpty!50673 setRes!50673))

(declare-fun setNonEmpty!50673 () Bool)

(declare-fun tp!1960480 () Bool)

(declare-fun tp_is_empty!45227 () Bool)

(assert (=> setNonEmpty!50673 (= setRes!50673 (and tp!1960480 tp_is_empty!45227))))

(declare-fun setElem!50673 () A!515)

(declare-fun setRest!50673 () (InoxSet A!515))

(assert (=> setNonEmpty!50673 (= s!1400 ((_ map or) (store ((as const (Array A!515 Bool)) false) setElem!50673 true) setRest!50673))))

(assert (= (and start!693096 res!2904794) b!7120841))

(assert (= (and b!7120841 res!2904793) b!7120842))

(assert (= (and start!693096 condSetEmpty!50673) setIsEmpty!50673))

(assert (= (and start!693096 (not condSetEmpty!50673)) setNonEmpty!50673))

(declare-fun m!7837656 () Bool)

(assert (=> b!7120841 m!7837656))

(declare-fun m!7837658 () Bool)

(assert (=> b!7120842 m!7837658))

(assert (=> b!7120842 m!7837658))

(declare-fun m!7837660 () Bool)

(assert (=> b!7120842 m!7837660))

(assert (=> b!7120842 m!7837660))

(declare-fun m!7837662 () Bool)

(assert (=> b!7120842 m!7837662))

(check-sat (not setNonEmpty!50673) (not b_next!134399) (not b!7120841) b_and!350657 (not b!7120842) tp_is_empty!45227)
(check-sat b_and!350657 (not b_next!134399))
(get-model)

(declare-fun d!2221949 () Bool)

(assert (=> d!2221949 (= (head!14454 (toList!11059 lt!2561356)) (h!75280 (toList!11059 lt!2561356)))))

(assert (=> b!7120842 d!2221949))

(declare-fun d!2221951 () Bool)

(declare-fun e!4278600 () Bool)

(assert (=> d!2221951 e!4278600))

(declare-fun res!2904800 () Bool)

(assert (=> d!2221951 (=> (not res!2904800) (not e!4278600))))

(declare-fun lt!2561362 () List!68956)

(declare-fun noDuplicate!2765 (List!68956) Bool)

(assert (=> d!2221951 (= res!2904800 (noDuplicate!2765 lt!2561362))))

(declare-fun choose!54930 ((InoxSet B!3173)) List!68956)

(assert (=> d!2221951 (= lt!2561362 (choose!54930 lt!2561356))))

(assert (=> d!2221951 (= (toList!11059 lt!2561356) lt!2561362)))

(declare-fun b!7120850 () Bool)

(declare-fun content!14063 (List!68956) (InoxSet B!3173))

(assert (=> b!7120850 (= e!4278600 (= (content!14063 lt!2561362) lt!2561356))))

(assert (= (and d!2221951 res!2904800) b!7120850))

(declare-fun m!7837672 () Bool)

(assert (=> d!2221951 m!7837672))

(declare-fun m!7837674 () Bool)

(assert (=> d!2221951 m!7837674))

(declare-fun m!7837676 () Bool)

(assert (=> b!7120850 m!7837676))

(assert (=> b!7120842 d!2221951))

(declare-fun d!2221953 () Bool)

(declare-fun choose!54931 ((InoxSet A!515) Int) (InoxSet B!3173))

(assert (=> d!2221953 (= (map!16332 s!1400 f!473) (choose!54931 s!1400 f!473))))

(declare-fun bs!1885902 () Bool)

(assert (= bs!1885902 d!2221953))

(declare-fun m!7837678 () Bool)

(assert (=> bs!1885902 m!7837678))

(assert (=> b!7120841 d!2221953))

(declare-fun condSetEmpty!50679 () Bool)

(assert (=> setNonEmpty!50673 (= condSetEmpty!50679 (= setRest!50673 ((as const (Array A!515 Bool)) false)))))

(declare-fun setRes!50679 () Bool)

(assert (=> setNonEmpty!50673 (= tp!1960480 setRes!50679)))

(declare-fun setIsEmpty!50679 () Bool)

(assert (=> setIsEmpty!50679 setRes!50679))

(declare-fun setNonEmpty!50679 () Bool)

(declare-fun tp!1960486 () Bool)

(assert (=> setNonEmpty!50679 (= setRes!50679 (and tp!1960486 tp_is_empty!45227))))

(declare-fun setElem!50679 () A!515)

(declare-fun setRest!50679 () (InoxSet A!515))

(assert (=> setNonEmpty!50679 (= setRest!50673 ((_ map or) (store ((as const (Array A!515 Bool)) false) setElem!50679 true) setRest!50679))))

(assert (= (and setNonEmpty!50673 condSetEmpty!50679) setIsEmpty!50679))

(assert (= (and setNonEmpty!50673 (not condSetEmpty!50679)) setNonEmpty!50679))

(check-sat (not b_next!134399) (not d!2221951) (not d!2221953) tp_is_empty!45227 (not b!7120850) (not setNonEmpty!50679) b_and!350657)
(check-sat b_and!350657 (not b_next!134399))
(get-model)

(declare-fun d!2221957 () Bool)

(assert (=> d!2221957 true))

(declare-fun setRes!50682 () Bool)

(assert (=> d!2221957 setRes!50682))

(declare-fun condSetEmpty!50682 () Bool)

(declare-fun res!2904809 () (InoxSet B!3173))

(assert (=> d!2221957 (= condSetEmpty!50682 (= res!2904809 ((as const (Array B!3173 Bool)) false)))))

(assert (=> d!2221957 (= (choose!54931 s!1400 f!473) res!2904809)))

(declare-fun setIsEmpty!50682 () Bool)

(assert (=> setIsEmpty!50682 setRes!50682))

(declare-fun setNonEmpty!50682 () Bool)

(declare-fun tp!1960489 () Bool)

(declare-fun tp_is_empty!45229 () Bool)

(assert (=> setNonEmpty!50682 (= setRes!50682 (and tp!1960489 tp_is_empty!45229))))

(declare-fun setElem!50682 () B!3173)

(declare-fun setRest!50682 () (InoxSet B!3173))

(assert (=> setNonEmpty!50682 (= res!2904809 ((_ map or) (store ((as const (Array B!3173 Bool)) false) setElem!50682 true) setRest!50682))))

(assert (= (and d!2221957 condSetEmpty!50682) setIsEmpty!50682))

(assert (= (and d!2221957 (not condSetEmpty!50682)) setNonEmpty!50682))

(assert (=> d!2221953 d!2221957))

(declare-fun d!2221961 () Bool)

(declare-fun res!2904822 () Bool)

(declare-fun e!4278617 () Bool)

(assert (=> d!2221961 (=> res!2904822 e!4278617)))

(get-info :version)

(assert (=> d!2221961 (= res!2904822 ((_ is Nil!68832) lt!2561362))))

(assert (=> d!2221961 (= (noDuplicate!2765 lt!2561362) e!4278617)))

(declare-fun b!7120869 () Bool)

(declare-fun e!4278618 () Bool)

(assert (=> b!7120869 (= e!4278617 e!4278618)))

(declare-fun res!2904823 () Bool)

(assert (=> b!7120869 (=> (not res!2904823) (not e!4278618))))

(declare-fun contains!20507 (List!68956 B!3173) Bool)

(assert (=> b!7120869 (= res!2904823 (not (contains!20507 (t!382819 lt!2561362) (h!75280 lt!2561362))))))

(declare-fun b!7120870 () Bool)

(assert (=> b!7120870 (= e!4278618 (noDuplicate!2765 (t!382819 lt!2561362)))))

(assert (= (and d!2221961 (not res!2904822)) b!7120869))

(assert (= (and b!7120869 res!2904823) b!7120870))

(declare-fun m!7837688 () Bool)

(assert (=> b!7120869 m!7837688))

(declare-fun m!7837690 () Bool)

(assert (=> b!7120870 m!7837690))

(assert (=> d!2221951 d!2221961))

(declare-fun d!2221965 () Bool)

(declare-fun e!4278625 () Bool)

(assert (=> d!2221965 e!4278625))

(declare-fun res!2904830 () Bool)

(assert (=> d!2221965 (=> (not res!2904830) (not e!4278625))))

(declare-fun res!2904829 () List!68956)

(assert (=> d!2221965 (= res!2904830 (noDuplicate!2765 res!2904829))))

(declare-fun e!4278626 () Bool)

(assert (=> d!2221965 e!4278626))

(assert (=> d!2221965 (= (choose!54930 lt!2561356) res!2904829)))

(declare-fun b!7120879 () Bool)

(declare-fun tp!1960498 () Bool)

(assert (=> b!7120879 (= e!4278626 (and tp_is_empty!45229 tp!1960498))))

(declare-fun b!7120880 () Bool)

(assert (=> b!7120880 (= e!4278625 (= (content!14063 res!2904829) lt!2561356))))

(assert (= (and d!2221965 ((_ is Cons!68832) res!2904829)) b!7120879))

(assert (= (and d!2221965 res!2904830) b!7120880))

(declare-fun m!7837692 () Bool)

(assert (=> d!2221965 m!7837692))

(declare-fun m!7837694 () Bool)

(assert (=> b!7120880 m!7837694))

(assert (=> d!2221951 d!2221965))

(declare-fun d!2221969 () Bool)

(declare-fun c!1328914 () Bool)

(assert (=> d!2221969 (= c!1328914 ((_ is Nil!68832) lt!2561362))))

(declare-fun e!4278630 () (InoxSet B!3173))

(assert (=> d!2221969 (= (content!14063 lt!2561362) e!4278630)))

(declare-fun b!7120887 () Bool)

(assert (=> b!7120887 (= e!4278630 ((as const (Array B!3173 Bool)) false))))

(declare-fun b!7120888 () Bool)

(assert (=> b!7120888 (= e!4278630 ((_ map or) (store ((as const (Array B!3173 Bool)) false) (h!75280 lt!2561362) true) (content!14063 (t!382819 lt!2561362))))))

(assert (= (and d!2221969 c!1328914) b!7120887))

(assert (= (and d!2221969 (not c!1328914)) b!7120888))

(declare-fun m!7837700 () Bool)

(assert (=> b!7120888 m!7837700))

(declare-fun m!7837702 () Bool)

(assert (=> b!7120888 m!7837702))

(assert (=> b!7120850 d!2221969))

(declare-fun condSetEmpty!50687 () Bool)

(assert (=> setNonEmpty!50679 (= condSetEmpty!50687 (= setRest!50679 ((as const (Array A!515 Bool)) false)))))

(declare-fun setRes!50687 () Bool)

(assert (=> setNonEmpty!50679 (= tp!1960486 setRes!50687)))

(declare-fun setIsEmpty!50687 () Bool)

(assert (=> setIsEmpty!50687 setRes!50687))

(declare-fun setNonEmpty!50687 () Bool)

(declare-fun tp!1960500 () Bool)

(assert (=> setNonEmpty!50687 (= setRes!50687 (and tp!1960500 tp_is_empty!45227))))

(declare-fun setElem!50687 () A!515)

(declare-fun setRest!50687 () (InoxSet A!515))

(assert (=> setNonEmpty!50687 (= setRest!50679 ((_ map or) (store ((as const (Array A!515 Bool)) false) setElem!50687 true) setRest!50687))))

(assert (= (and setNonEmpty!50679 condSetEmpty!50687) setIsEmpty!50687))

(assert (= (and setNonEmpty!50679 (not condSetEmpty!50687)) setNonEmpty!50687))

(check-sat (not b_next!134399) (not setNonEmpty!50687) (not b!7120879) tp_is_empty!45229 (not b!7120880) tp_is_empty!45227 (not b!7120888) b_and!350657 (not b!7120869) (not setNonEmpty!50682) (not d!2221965) (not b!7120870))
(check-sat b_and!350657 (not b_next!134399))

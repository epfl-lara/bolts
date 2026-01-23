; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713708 () Bool)

(assert start!713708)

(declare-fun b_free!134091 () Bool)

(declare-fun b_next!134881 () Bool)

(assert (=> start!713708 (= b_free!134091 (not b_next!134881))))

(declare-fun tp!2078395 () Bool)

(declare-fun b_and!351499 () Bool)

(assert (=> start!713708 (= tp!2078395 b_and!351499)))

(declare-fun setNonEmpty!55067 () Bool)

(declare-fun setRes!55068 () Bool)

(declare-fun tp!2078391 () Bool)

(declare-fun tp_is_empty!47767 () Bool)

(assert (=> setNonEmpty!55067 (= setRes!55068 (and tp!2078391 tp_is_empty!47767))))

(declare-datatypes ((A!937 0))(
  ( (A!938 (val!29257 Int)) )
))
(declare-fun s1!456 () (Set A!937))

(declare-fun setElem!55067 () A!937)

(declare-fun setRest!55068 () (Set A!937))

(assert (=> setNonEmpty!55067 (= s1!456 (set.union (set.insert setElem!55067 (as set.empty (Set A!937))) setRest!55068))))

(declare-fun setIsEmpty!55067 () Bool)

(declare-fun setRes!55067 () Bool)

(assert (=> setIsEmpty!55067 setRes!55067))

(declare-fun setNonEmpty!55068 () Bool)

(declare-fun tp!2078394 () Bool)

(assert (=> setNonEmpty!55068 (= setRes!55067 (and tp!2078394 tp_is_empty!47767))))

(declare-fun s2!427 () (Set A!937))

(declare-fun setElem!55068 () A!937)

(declare-fun setRest!55067 () (Set A!937))

(assert (=> setNonEmpty!55068 (= s2!427 (set.union (set.insert setElem!55068 (as set.empty (Set A!937))) setRest!55067))))

(declare-fun b!7318821 () Bool)

(declare-fun e!4381751 () Bool)

(declare-fun tp_is_empty!47765 () Bool)

(declare-fun tp!2078392 () Bool)

(assert (=> b!7318821 (= e!4381751 (and tp_is_empty!47765 tp!2078392))))

(declare-fun b!7318822 () Bool)

(declare-fun e!4381750 () Bool)

(declare-fun tp!2078393 () Bool)

(assert (=> b!7318822 (= e!4381750 (and tp_is_empty!47765 tp!2078393))))

(declare-fun setIsEmpty!55068 () Bool)

(assert (=> setIsEmpty!55068 setRes!55068))

(declare-fun b!7318823 () Bool)

(declare-fun e!4381752 () Bool)

(assert (=> b!7318823 (= e!4381752 false)))

(declare-datatypes ((B!3639 0))(
  ( (B!3640 (val!29258 Int)) )
))
(declare-datatypes ((List!71383 0))(
  ( (Nil!71259) (Cons!71259 (h!77707 B!3639) (t!385618 List!71383)) )
))
(declare-fun l2!808 () List!71383)

(declare-fun lt!2603287 () Bool)

(declare-fun f!803 () Int)

(declare-fun subseq!880 (List!71383 List!71383) Bool)

(declare-fun toList!11670 ((Set B!3639)) List!71383)

(declare-fun flatMap!3088 ((Set A!937) Int) (Set B!3639))

(assert (=> b!7318823 (= lt!2603287 (subseq!880 l2!808 (toList!11670 (flatMap!3088 (set.union s1!456 s2!427) f!803))))))

(declare-fun res!2957589 () Bool)

(assert (=> start!713708 (=> (not res!2957589) (not e!4381752))))

(declare-fun l1!819 () List!71383)

(assert (=> start!713708 (= res!2957589 (= l1!819 (toList!11670 (set.union (flatMap!3088 s1!456 f!803) (flatMap!3088 s2!427 f!803)))))))

(assert (=> start!713708 e!4381752))

(assert (=> start!713708 e!4381751))

(declare-fun condSetEmpty!55067 () Bool)

(assert (=> start!713708 (= condSetEmpty!55067 (= s1!456 (as set.empty (Set A!937))))))

(assert (=> start!713708 setRes!55068))

(assert (=> start!713708 tp!2078395))

(assert (=> start!713708 e!4381750))

(declare-fun condSetEmpty!55068 () Bool)

(assert (=> start!713708 (= condSetEmpty!55068 (= s2!427 (as set.empty (Set A!937))))))

(assert (=> start!713708 setRes!55067))

(assert (= (and start!713708 res!2957589) b!7318823))

(assert (= (and start!713708 (is-Cons!71259 l2!808)) b!7318821))

(assert (= (and start!713708 condSetEmpty!55067) setIsEmpty!55068))

(assert (= (and start!713708 (not condSetEmpty!55067)) setNonEmpty!55067))

(assert (= (and start!713708 (is-Cons!71259 l1!819)) b!7318822))

(assert (= (and start!713708 condSetEmpty!55068) setIsEmpty!55067))

(assert (= (and start!713708 (not condSetEmpty!55068)) setNonEmpty!55068))

(declare-fun m!7983616 () Bool)

(assert (=> b!7318823 m!7983616))

(assert (=> b!7318823 m!7983616))

(declare-fun m!7983618 () Bool)

(assert (=> b!7318823 m!7983618))

(assert (=> b!7318823 m!7983618))

(declare-fun m!7983620 () Bool)

(assert (=> b!7318823 m!7983620))

(declare-fun m!7983622 () Bool)

(assert (=> start!713708 m!7983622))

(declare-fun m!7983624 () Bool)

(assert (=> start!713708 m!7983624))

(declare-fun m!7983626 () Bool)

(assert (=> start!713708 m!7983626))

(push 1)

(assert (not b!7318821))

(assert tp_is_empty!47765)

(assert tp_is_empty!47767)

(assert (not setNonEmpty!55068))

(assert (not b!7318823))

(assert (not b!7318822))

(assert (not start!713708))

(assert b_and!351499)

(assert (not b_next!134881))

(assert (not setNonEmpty!55067))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351499)

(assert (not b_next!134881))

(check-sat)

(pop 1)


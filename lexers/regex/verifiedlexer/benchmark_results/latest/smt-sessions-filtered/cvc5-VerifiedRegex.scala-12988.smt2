; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713972 () Bool)

(assert start!713972)

(declare-fun b_free!134127 () Bool)

(declare-fun b_next!134917 () Bool)

(assert (=> start!713972 (= b_free!134127 (not b_next!134917))))

(declare-fun tp!2078825 () Bool)

(declare-fun b_and!351535 () Bool)

(assert (=> start!713972 (= tp!2078825 b_and!351535)))

(declare-fun res!2958246 () Bool)

(declare-fun e!4382617 () Bool)

(assert (=> start!713972 (=> (not res!2958246) (not e!4382617))))

(declare-datatypes ((A!973 0))(
  ( (A!974 (val!29293 Int)) )
))
(declare-fun s2!417 () (Set A!973))

(declare-fun s1!446 () (Set A!973))

(declare-datatypes ((B!3675 0))(
  ( (B!3676 (val!29294 Int)) )
))
(declare-datatypes ((List!71401 0))(
  ( (Nil!71277) (Cons!71277 (h!77725 B!3675) (t!385640 List!71401)) )
))
(declare-fun l1!805 () List!71401)

(declare-fun f!760 () Int)

(declare-fun subseq!898 (List!71401 List!71401) Bool)

(declare-fun toList!11688 ((Set B!3675)) List!71401)

(declare-fun flatMap!3106 ((Set A!973) Int) (Set B!3675))

(assert (=> start!713972 (= res!2958246 (subseq!898 l1!805 (toList!11688 (set.union (flatMap!3106 s1!446 f!760) (flatMap!3106 s2!417 f!760)))))))

(assert (=> start!713972 e!4382617))

(declare-fun e!4382618 () Bool)

(assert (=> start!713972 e!4382618))

(declare-fun condSetEmpty!55260 () Bool)

(assert (=> start!713972 (= condSetEmpty!55260 (= s1!446 (as set.empty (Set A!973))))))

(declare-fun setRes!55260 () Bool)

(assert (=> start!713972 setRes!55260))

(assert (=> start!713972 tp!2078825))

(declare-fun condSetEmpty!55259 () Bool)

(assert (=> start!713972 (= condSetEmpty!55259 (= s2!417 (as set.empty (Set A!973))))))

(declare-fun setRes!55259 () Bool)

(assert (=> start!713972 setRes!55259))

(declare-fun b!7319938 () Bool)

(declare-fun tp_is_empty!47837 () Bool)

(declare-fun tp!2078823 () Bool)

(assert (=> b!7319938 (= e!4382618 (and tp_is_empty!47837 tp!2078823))))

(declare-fun setNonEmpty!55259 () Bool)

(declare-fun tp!2078826 () Bool)

(declare-fun tp_is_empty!47839 () Bool)

(assert (=> setNonEmpty!55259 (= setRes!55259 (and tp!2078826 tp_is_empty!47839))))

(declare-fun setElem!55260 () A!973)

(declare-fun setRest!55259 () (Set A!973))

(assert (=> setNonEmpty!55259 (= s2!417 (set.union (set.insert setElem!55260 (as set.empty (Set A!973))) setRest!55259))))

(declare-fun b!7319939 () Bool)

(assert (=> b!7319939 (= e!4382617 false)))

(declare-fun lt!2603644 () List!71401)

(assert (=> b!7319939 (= lt!2603644 (toList!11688 (flatMap!3106 (set.union s1!446 s2!417) f!760)))))

(declare-fun setIsEmpty!55259 () Bool)

(assert (=> setIsEmpty!55259 setRes!55259))

(declare-fun setIsEmpty!55260 () Bool)

(assert (=> setIsEmpty!55260 setRes!55260))

(declare-fun setNonEmpty!55260 () Bool)

(declare-fun tp!2078824 () Bool)

(assert (=> setNonEmpty!55260 (= setRes!55260 (and tp!2078824 tp_is_empty!47839))))

(declare-fun setElem!55259 () A!973)

(declare-fun setRest!55260 () (Set A!973))

(assert (=> setNonEmpty!55260 (= s1!446 (set.union (set.insert setElem!55259 (as set.empty (Set A!973))) setRest!55260))))

(assert (= (and start!713972 res!2958246) b!7319939))

(assert (= (and start!713972 (is-Cons!71277 l1!805)) b!7319938))

(assert (= (and start!713972 condSetEmpty!55260) setIsEmpty!55260))

(assert (= (and start!713972 (not condSetEmpty!55260)) setNonEmpty!55260))

(assert (= (and start!713972 condSetEmpty!55259) setIsEmpty!55259))

(assert (= (and start!713972 (not condSetEmpty!55259)) setNonEmpty!55259))

(declare-fun m!7984810 () Bool)

(assert (=> start!713972 m!7984810))

(declare-fun m!7984812 () Bool)

(assert (=> start!713972 m!7984812))

(declare-fun m!7984814 () Bool)

(assert (=> start!713972 m!7984814))

(assert (=> start!713972 m!7984814))

(declare-fun m!7984816 () Bool)

(assert (=> start!713972 m!7984816))

(declare-fun m!7984818 () Bool)

(assert (=> b!7319939 m!7984818))

(assert (=> b!7319939 m!7984818))

(declare-fun m!7984820 () Bool)

(assert (=> b!7319939 m!7984820))

(push 1)

(assert b_and!351535)

(assert tp_is_empty!47837)

(assert (not b_next!134917))

(assert (not setNonEmpty!55259))

(assert tp_is_empty!47839)

(assert (not setNonEmpty!55260))

(assert (not b!7319939))

(assert (not start!713972))

(assert (not b!7319938))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351535)

(assert (not b_next!134917))

(check-sat)

(pop 1)


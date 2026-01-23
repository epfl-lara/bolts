; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693366 () Bool)

(assert start!693366)

(declare-fun b_free!133671 () Bool)

(declare-fun b_next!134461 () Bool)

(assert (=> start!693366 (= b_free!133671 (not b_next!134461))))

(declare-fun tp!1960861 () Bool)

(declare-fun b_and!350767 () Bool)

(assert (=> start!693366 (= tp!1960861 b_and!350767)))

(assert (=> start!693366 true))

(declare-datatypes ((B!3235 0))(
  ( (B!3236 (val!27903 Int)) )
))
(declare-datatypes ((List!68987 0))(
  ( (Nil!68863) (Cons!68863 (h!75311 B!3235) (t!382894 List!68987)) )
))
(declare-fun lt!2561690 () List!68987)

(declare-fun lambda!432809 () Int)

(declare-fun lambda!432808 () Int)

(declare-fun lt!2561691 () List!68987)

(assert (=> start!693366 (= (= lt!2561690 lt!2561691) (= lambda!432809 lambda!432808))))

(assert (=> start!693366 true))

(declare-fun forall!16884 (List!68987 Int) Bool)

(assert (=> start!693366 (forall!16884 lt!2561691 lambda!432809)))

(declare-datatypes ((A!577 0))(
  ( (A!578 (val!27904 Int)) )
))
(declare-fun s2!373 () (Set A!577))

(declare-fun f!483 () Int)

(declare-fun s1!402 () (Set A!577))

(declare-datatypes ((Unit!162675 0))(
  ( (Unit!162676) )
))
(declare-fun lt!2561694 () Unit!162675)

(declare-fun lemmaMapAssociativeToList1!5 ((Set A!577) (Set A!577) Int List!68987 List!68987) Unit!162675)

(assert (=> start!693366 (= lt!2561694 (lemmaMapAssociativeToList1!5 s1!402 s2!373 f!483 lt!2561691 lt!2561690))))

(assert (=> start!693366 (forall!16884 lt!2561690 lambda!432808)))

(declare-fun lt!2561693 () Unit!162675)

(declare-fun lemmaMapAssociativeToList2!7 ((Set A!577) (Set A!577) Int List!68987 List!68987) Unit!162675)

(assert (=> start!693366 (= lt!2561693 (lemmaMapAssociativeToList2!7 s1!402 s2!373 f!483 lt!2561691 lt!2561690))))

(declare-fun subseq!726 (List!68987 List!68987) Bool)

(assert (=> start!693366 (subseq!726 lt!2561690 lt!2561690)))

(declare-fun lt!2561692 () Unit!162675)

(declare-fun lemmaSubseqRefl!172 (List!68987) Unit!162675)

(assert (=> start!693366 (= lt!2561692 (lemmaSubseqRefl!172 lt!2561690))))

(assert (=> start!693366 (subseq!726 lt!2561691 lt!2561691)))

(declare-fun lt!2561689 () Unit!162675)

(assert (=> start!693366 (= lt!2561689 (lemmaSubseqRefl!172 lt!2561691))))

(declare-fun toList!11090 ((Set B!3235)) List!68987)

(declare-fun map!16379 ((Set A!577) Int) (Set B!3235))

(assert (=> start!693366 (= lt!2561690 (toList!11090 (map!16379 (set.union s1!402 s2!373) f!483)))))

(assert (=> start!693366 (= lt!2561691 (toList!11090 (set.union (map!16379 s1!402 f!483) (map!16379 s2!373 f!483))))))

(assert (=> start!693366 (not (forall!16884 lt!2561691 lambda!432809))))

(declare-fun condSetEmpty!50906 () Bool)

(assert (=> start!693366 (= condSetEmpty!50906 (= s1!402 (as set.empty (Set A!577))))))

(declare-fun setRes!50906 () Bool)

(assert (=> start!693366 setRes!50906))

(assert (=> start!693366 tp!1960861))

(declare-fun condSetEmpty!50907 () Bool)

(assert (=> start!693366 (= condSetEmpty!50907 (= s2!373 (as set.empty (Set A!577))))))

(declare-fun setRes!50907 () Bool)

(assert (=> start!693366 setRes!50907))

(declare-fun setIsEmpty!50907 () Bool)

(assert (=> setIsEmpty!50907 setRes!50907))

(declare-fun setNonEmpty!50906 () Bool)

(declare-fun tp!1960859 () Bool)

(declare-fun tp_is_empty!45317 () Bool)

(assert (=> setNonEmpty!50906 (= setRes!50906 (and tp!1960859 tp_is_empty!45317))))

(declare-fun setElem!50907 () A!577)

(declare-fun setRest!50906 () (Set A!577))

(assert (=> setNonEmpty!50906 (= s1!402 (set.union (set.insert setElem!50907 (as set.empty (Set A!577))) setRest!50906))))

(declare-fun setNonEmpty!50907 () Bool)

(declare-fun tp!1960860 () Bool)

(assert (=> setNonEmpty!50907 (= setRes!50907 (and tp!1960860 tp_is_empty!45317))))

(declare-fun setElem!50906 () A!577)

(declare-fun setRest!50907 () (Set A!577))

(assert (=> setNonEmpty!50907 (= s2!373 (set.union (set.insert setElem!50906 (as set.empty (Set A!577))) setRest!50907))))

(declare-fun setIsEmpty!50906 () Bool)

(assert (=> setIsEmpty!50906 setRes!50906))

(assert (= (and start!693366 condSetEmpty!50906) setIsEmpty!50906))

(assert (= (and start!693366 (not condSetEmpty!50906)) setNonEmpty!50906))

(assert (= (and start!693366 condSetEmpty!50907) setIsEmpty!50907))

(assert (= (and start!693366 (not condSetEmpty!50907)) setNonEmpty!50907))

(declare-fun m!7838556 () Bool)

(assert (=> start!693366 m!7838556))

(declare-fun m!7838558 () Bool)

(assert (=> start!693366 m!7838558))

(assert (=> start!693366 m!7838556))

(declare-fun m!7838560 () Bool)

(assert (=> start!693366 m!7838560))

(declare-fun m!7838562 () Bool)

(assert (=> start!693366 m!7838562))

(declare-fun m!7838564 () Bool)

(assert (=> start!693366 m!7838564))

(declare-fun m!7838566 () Bool)

(assert (=> start!693366 m!7838566))

(declare-fun m!7838568 () Bool)

(assert (=> start!693366 m!7838568))

(declare-fun m!7838570 () Bool)

(assert (=> start!693366 m!7838570))

(declare-fun m!7838572 () Bool)

(assert (=> start!693366 m!7838572))

(assert (=> start!693366 m!7838560))

(declare-fun m!7838574 () Bool)

(assert (=> start!693366 m!7838574))

(declare-fun m!7838576 () Bool)

(assert (=> start!693366 m!7838576))

(declare-fun m!7838578 () Bool)

(assert (=> start!693366 m!7838578))

(declare-fun m!7838580 () Bool)

(assert (=> start!693366 m!7838580))

(push 1)

(assert (not setNonEmpty!50906))

(assert (not b_next!134461))

(assert (not setNonEmpty!50907))

(assert b_and!350767)

(assert tp_is_empty!45317)

(assert (not start!693366))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350767)

(assert (not b_next!134461))

(check-sat)

(pop 1)


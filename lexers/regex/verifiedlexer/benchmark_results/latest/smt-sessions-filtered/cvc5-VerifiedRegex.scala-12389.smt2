; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693354 () Bool)

(assert start!693354)

(declare-fun b_free!133659 () Bool)

(declare-fun b_next!134449 () Bool)

(assert (=> start!693354 (= b_free!133659 (not b_next!134449))))

(declare-fun tp!1960807 () Bool)

(declare-fun b_and!350755 () Bool)

(assert (=> start!693354 (= tp!1960807 b_and!350755)))

(assert (=> start!693354 true))

(declare-fun setIsEmpty!50870 () Bool)

(declare-fun setRes!50870 () Bool)

(assert (=> setIsEmpty!50870 setRes!50870))

(declare-fun setIsEmpty!50871 () Bool)

(declare-fun setRes!50871 () Bool)

(assert (=> setIsEmpty!50871 setRes!50871))

(declare-fun setNonEmpty!50871 () Bool)

(declare-fun tp!1960805 () Bool)

(declare-fun tp_is_empty!45305 () Bool)

(assert (=> setNonEmpty!50871 (= setRes!50871 (and tp!1960805 tp_is_empty!45305))))

(declare-datatypes ((A!565 0))(
  ( (A!566 (val!27891 Int)) )
))
(declare-fun s2!373 () (Set A!565))

(declare-fun setElem!50871 () A!565)

(declare-fun setRest!50871 () (Set A!565))

(assert (=> setNonEmpty!50871 (= s2!373 (set.union (set.insert setElem!50871 (as set.empty (Set A!565))) setRest!50871))))

(declare-datatypes ((B!3223 0))(
  ( (B!3224 (val!27892 Int)) )
))
(declare-datatypes ((List!68981 0))(
  ( (Nil!68857) (Cons!68857 (h!75305 B!3223) (t!382888 List!68981)) )
))
(declare-fun lt!2561581 () List!68981)

(declare-fun lambda!432750 () Int)

(declare-fun forall!16878 (List!68981 Int) Bool)

(assert (=> start!693354 (forall!16878 lt!2561581 lambda!432750)))

(declare-fun f!483 () Int)

(declare-datatypes ((Unit!162663 0))(
  ( (Unit!162664) )
))
(declare-fun lt!2561580 () Unit!162663)

(declare-fun s1!402 () (Set A!565))

(declare-fun lt!2561579 () List!68981)

(declare-fun lemmaMapAssociativeToList2!1 ((Set A!565) (Set A!565) Int List!68981 List!68981) Unit!162663)

(assert (=> start!693354 (= lt!2561580 (lemmaMapAssociativeToList2!1 s1!402 s2!373 f!483 lt!2561579 lt!2561581))))

(declare-fun subseq!720 (List!68981 List!68981) Bool)

(assert (=> start!693354 (subseq!720 lt!2561581 lt!2561581)))

(declare-fun lt!2561582 () Unit!162663)

(declare-fun lemmaSubseqRefl!166 (List!68981) Unit!162663)

(assert (=> start!693354 (= lt!2561582 (lemmaSubseqRefl!166 lt!2561581))))

(assert (=> start!693354 (subseq!720 lt!2561579 lt!2561579)))

(declare-fun lt!2561583 () Unit!162663)

(assert (=> start!693354 (= lt!2561583 (lemmaSubseqRefl!166 lt!2561579))))

(declare-fun toList!11084 ((Set B!3223)) List!68981)

(declare-fun map!16370 ((Set A!565) Int) (Set B!3223))

(assert (=> start!693354 (= lt!2561581 (toList!11084 (map!16370 (set.union s1!402 s2!373) f!483)))))

(assert (=> start!693354 (= lt!2561579 (toList!11084 (set.union (map!16370 s1!402 f!483) (map!16370 s2!373 f!483))))))

(assert (=> start!693354 (not true)))

(declare-fun condSetEmpty!50871 () Bool)

(assert (=> start!693354 (= condSetEmpty!50871 (= s1!402 (as set.empty (Set A!565))))))

(assert (=> start!693354 setRes!50870))

(assert (=> start!693354 tp!1960807))

(declare-fun condSetEmpty!50870 () Bool)

(assert (=> start!693354 (= condSetEmpty!50870 (= s2!373 (as set.empty (Set A!565))))))

(assert (=> start!693354 setRes!50871))

(declare-fun setNonEmpty!50870 () Bool)

(declare-fun tp!1960806 () Bool)

(assert (=> setNonEmpty!50870 (= setRes!50870 (and tp!1960806 tp_is_empty!45305))))

(declare-fun setElem!50870 () A!565)

(declare-fun setRest!50870 () (Set A!565))

(assert (=> setNonEmpty!50870 (= s1!402 (set.union (set.insert setElem!50870 (as set.empty (Set A!565))) setRest!50870))))

(assert (= (and start!693354 condSetEmpty!50871) setIsEmpty!50870))

(assert (= (and start!693354 (not condSetEmpty!50871)) setNonEmpty!50870))

(assert (= (and start!693354 condSetEmpty!50870) setIsEmpty!50871))

(assert (= (and start!693354 (not condSetEmpty!50870)) setNonEmpty!50871))

(declare-fun m!7838404 () Bool)

(assert (=> start!693354 m!7838404))

(declare-fun m!7838406 () Bool)

(assert (=> start!693354 m!7838406))

(declare-fun m!7838408 () Bool)

(assert (=> start!693354 m!7838408))

(declare-fun m!7838410 () Bool)

(assert (=> start!693354 m!7838410))

(declare-fun m!7838412 () Bool)

(assert (=> start!693354 m!7838412))

(declare-fun m!7838414 () Bool)

(assert (=> start!693354 m!7838414))

(declare-fun m!7838416 () Bool)

(assert (=> start!693354 m!7838416))

(declare-fun m!7838418 () Bool)

(assert (=> start!693354 m!7838418))

(declare-fun m!7838420 () Bool)

(assert (=> start!693354 m!7838420))

(declare-fun m!7838422 () Bool)

(assert (=> start!693354 m!7838422))

(assert (=> start!693354 m!7838408))

(declare-fun m!7838424 () Bool)

(assert (=> start!693354 m!7838424))

(push 1)

(assert (not b_next!134449))

(assert (not setNonEmpty!50871))

(assert (not setNonEmpty!50870))

(assert (not start!693354))

(assert tp_is_empty!45305)

(assert b_and!350755)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350755)

(assert (not b_next!134449))

(check-sat)

(pop 1)


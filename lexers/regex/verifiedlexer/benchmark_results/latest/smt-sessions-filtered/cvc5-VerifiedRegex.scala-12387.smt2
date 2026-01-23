; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693346 () Bool)

(assert start!693346)

(declare-fun b_free!133651 () Bool)

(declare-fun b_next!134441 () Bool)

(assert (=> start!693346 (= b_free!133651 (not b_next!134441))))

(declare-fun tp!1960774 () Bool)

(declare-fun b_and!350747 () Bool)

(assert (=> start!693346 (= tp!1960774 b_and!350747)))

(declare-fun res!2905293 () Bool)

(declare-fun e!4279111 () Bool)

(assert (=> start!693346 (=> (not res!2905293) (not e!4279111))))

(declare-datatypes ((A!557 0))(
  ( (A!558 (val!27883 Int)) )
))
(declare-fun s!1427 () (Set A!557))

(declare-fun elmt!108 () A!557)

(assert (=> start!693346 (= res!2905293 (= s!1427 (set.insert elmt!108 (as set.empty (Set A!557)))))))

(assert (=> start!693346 e!4279111))

(declare-fun condSetEmpty!50850 () Bool)

(assert (=> start!693346 (= condSetEmpty!50850 (= s!1427 (as set.empty (Set A!557))))))

(declare-fun setRes!50850 () Bool)

(assert (=> start!693346 setRes!50850))

(declare-fun tp_is_empty!45297 () Bool)

(assert (=> start!693346 tp_is_empty!45297))

(assert (=> start!693346 tp!1960774))

(declare-fun b!7121505 () Bool)

(assert (=> b!7121505 (= e!4279111 false)))

(declare-datatypes ((B!3215 0))(
  ( (B!3216 (val!27884 Int)) )
))
(declare-datatypes ((List!68977 0))(
  ( (Nil!68853) (Cons!68853 (h!75301 B!3215) (t!382884 List!68977)) )
))
(declare-fun lt!2561541 () List!68977)

(declare-fun f!842 () Int)

(declare-fun toList!11080 ((Set B!3215)) List!68977)

(declare-fun map!16364 ((Set A!557) Int) (Set B!3215))

(assert (=> b!7121505 (= lt!2561541 (toList!11080 (map!16364 s!1427 f!842)))))

(declare-fun setIsEmpty!50850 () Bool)

(assert (=> setIsEmpty!50850 setRes!50850))

(declare-fun setNonEmpty!50850 () Bool)

(declare-fun tp!1960773 () Bool)

(assert (=> setNonEmpty!50850 (= setRes!50850 (and tp!1960773 tp_is_empty!45297))))

(declare-fun setElem!50850 () A!557)

(declare-fun setRest!50850 () (Set A!557))

(assert (=> setNonEmpty!50850 (= s!1427 (set.union (set.insert setElem!50850 (as set.empty (Set A!557))) setRest!50850))))

(assert (= (and start!693346 res!2905293) b!7121505))

(assert (= (and start!693346 condSetEmpty!50850) setIsEmpty!50850))

(assert (= (and start!693346 (not condSetEmpty!50850)) setNonEmpty!50850))

(declare-fun m!7838356 () Bool)

(assert (=> start!693346 m!7838356))

(declare-fun m!7838358 () Bool)

(assert (=> b!7121505 m!7838358))

(assert (=> b!7121505 m!7838358))

(declare-fun m!7838360 () Bool)

(assert (=> b!7121505 m!7838360))

(push 1)

(assert (not b_next!134441))

(assert b_and!350747)

(assert (not setNonEmpty!50850))

(assert tp_is_empty!45297)

(assert (not b!7121505))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350747)

(assert (not b_next!134441))

(check-sat)

(pop 1)


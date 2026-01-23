; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693342 () Bool)

(assert start!693342)

(declare-fun b_free!133647 () Bool)

(declare-fun b_next!134437 () Bool)

(assert (=> start!693342 (= b_free!133647 (not b_next!134437))))

(declare-fun tp!1960762 () Bool)

(declare-fun b_and!350743 () Bool)

(assert (=> start!693342 (= tp!1960762 b_and!350743)))

(declare-fun b!7121496 () Bool)

(declare-fun e!4279105 () Bool)

(assert (=> b!7121496 (= e!4279105 (not true))))

(declare-datatypes ((A!553 0))(
  ( (A!554 (val!27879 Int)) )
))
(declare-fun elmt!108 () A!553)

(declare-datatypes ((Unit!162655 0))(
  ( (Unit!162656) )
))
(declare-fun empty!2779 () Unit!162655)

(declare-fun f!842 () Int)

(declare-fun s!1427 () (Set A!553))

(declare-fun mapPost1!3 ((Set A!553) Int A!553) Unit!162655)

(assert (=> b!7121496 (= (mapPost1!3 s!1427 f!842 elmt!108) empty!2779)))

(assert (=> b!7121496 true))

(declare-fun res!2905284 () Bool)

(assert (=> start!693342 (=> (not res!2905284) (not e!4279105))))

(assert (=> start!693342 (= res!2905284 (= s!1427 (set.insert elmt!108 (as set.empty (Set A!553)))))))

(assert (=> start!693342 e!4279105))

(declare-fun condSetEmpty!50844 () Bool)

(assert (=> start!693342 (= condSetEmpty!50844 (= s!1427 (as set.empty (Set A!553))))))

(declare-fun setRes!50844 () Bool)

(assert (=> start!693342 setRes!50844))

(declare-fun tp_is_empty!45293 () Bool)

(assert (=> start!693342 tp_is_empty!45293))

(assert (=> start!693342 tp!1960762))

(declare-fun b!7121495 () Bool)

(declare-fun res!2905283 () Bool)

(assert (=> b!7121495 (=> (not res!2905283) (not e!4279105))))

(declare-datatypes ((B!3211 0))(
  ( (B!3212 (val!27880 Int)) )
))
(declare-datatypes ((List!68975 0))(
  ( (Nil!68851) (Cons!68851 (h!75299 B!3211) (t!382882 List!68975)) )
))
(declare-fun toList!11078 ((Set B!3211)) List!68975)

(declare-fun map!16361 ((Set A!553) Int) (Set B!3211))

(assert (=> b!7121495 (= res!2905283 (not (is-Cons!68851 (toList!11078 (map!16361 s!1427 f!842)))))))

(declare-fun setNonEmpty!50844 () Bool)

(declare-fun tp!1960761 () Bool)

(assert (=> setNonEmpty!50844 (= setRes!50844 (and tp!1960761 tp_is_empty!45293))))

(declare-fun setElem!50844 () A!553)

(declare-fun setRest!50844 () (Set A!553))

(assert (=> setNonEmpty!50844 (= s!1427 (set.union (set.insert setElem!50844 (as set.empty (Set A!553))) setRest!50844))))

(declare-fun setIsEmpty!50844 () Bool)

(assert (=> setIsEmpty!50844 setRes!50844))

(assert (= (and start!693342 res!2905284) b!7121495))

(assert (= (and b!7121495 res!2905283) b!7121496))

(assert (= (and start!693342 condSetEmpty!50844) setIsEmpty!50844))

(assert (= (and start!693342 (not condSetEmpty!50844)) setNonEmpty!50844))

(declare-fun m!7838340 () Bool)

(assert (=> b!7121496 m!7838340))

(declare-fun m!7838342 () Bool)

(assert (=> start!693342 m!7838342))

(declare-fun m!7838344 () Bool)

(assert (=> b!7121495 m!7838344))

(assert (=> b!7121495 m!7838344))

(declare-fun m!7838346 () Bool)

(assert (=> b!7121495 m!7838346))

(push 1)

(assert tp_is_empty!45293)

(assert (not b!7121496))

(assert (not setNonEmpty!50844))

(assert (not b_next!134437))

(assert (not b!7121495))

(assert b_and!350743)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350743)

(assert (not b_next!134437))

(check-sat)

(pop 1)


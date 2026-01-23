; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693258 () Bool)

(assert start!693258)

(declare-fun b_free!133631 () Bool)

(declare-fun b_next!134421 () Bool)

(assert (=> start!693258 (= b_free!133631 (not b_next!134421))))

(declare-fun tp!1960659 () Bool)

(declare-fun b_and!350707 () Bool)

(assert (=> start!693258 (= tp!1960659 b_and!350707)))

(declare-fun setIsEmpty!50784 () Bool)

(declare-fun setRes!50784 () Bool)

(assert (=> setIsEmpty!50784 setRes!50784))

(declare-fun b!7121263 () Bool)

(declare-fun e!4278928 () Bool)

(assert (=> b!7121263 (= e!4278928 (not true))))

(declare-fun e!4278926 () Bool)

(assert (=> b!7121263 e!4278926))

(declare-fun res!2905107 () Bool)

(assert (=> b!7121263 (=> (not res!2905107) (not e!4278926))))

(declare-datatypes ((B!3195 0))(
  ( (B!3196 (val!27863 Int)) )
))
(declare-datatypes ((List!68967 0))(
  ( (Nil!68843) (Cons!68843 (h!75291 B!3195) (t!382858 List!68967)) )
))
(declare-fun lt!2561483 () List!68967)

(declare-datatypes ((A!537 0))(
  ( (A!538 (val!27864 Int)) )
))
(declare-fun lt!2561484 () A!537)

(declare-fun f!842 () Int)

(declare-fun s!1427 () (Set A!537))

(declare-fun mapPost2!555 ((Set A!537) Int B!3195) A!537)

(assert (=> b!7121263 (= res!2905107 (= (mapPost2!555 s!1427 f!842 (h!75291 lt!2561483)) lt!2561484))))

(declare-fun empty!2747 () A!537)

(assert (=> b!7121263 (= lt!2561484 empty!2747)))

(assert (=> b!7121263 true))

(declare-fun tp_is_empty!45269 () Bool)

(assert (=> b!7121263 tp_is_empty!45269))

(declare-fun res!2905105 () Bool)

(declare-fun e!4278925 () Bool)

(assert (=> start!693258 (=> (not res!2905105) (not e!4278925))))

(declare-fun elmt!108 () A!537)

(assert (=> start!693258 (= res!2905105 (= s!1427 (set.insert elmt!108 (as set.empty (Set A!537)))))))

(assert (=> start!693258 e!4278925))

(declare-fun condSetEmpty!50784 () Bool)

(assert (=> start!693258 (= condSetEmpty!50784 (= s!1427 (as set.empty (Set A!537))))))

(assert (=> start!693258 setRes!50784))

(assert (=> start!693258 tp_is_empty!45269))

(assert (=> start!693258 tp!1960659))

(declare-fun setNonEmpty!50784 () Bool)

(declare-fun tp!1960660 () Bool)

(assert (=> setNonEmpty!50784 (= setRes!50784 (and tp!1960660 tp_is_empty!45269))))

(declare-fun setElem!50784 () A!537)

(declare-fun setRest!50784 () (Set A!537))

(assert (=> setNonEmpty!50784 (= s!1427 (set.union (set.insert setElem!50784 (as set.empty (Set A!537))) setRest!50784))))

(declare-fun e!4278927 () Bool)

(declare-fun b!7121264 () Bool)

(assert (=> b!7121264 (= e!4278927 (= (mapPost2!555 s!1427 f!842 (h!75291 (t!382858 lt!2561483))) lt!2561484))))

(declare-fun b!7121265 () Bool)

(assert (=> b!7121265 (= e!4278925 e!4278928)))

(declare-fun res!2905108 () Bool)

(assert (=> b!7121265 (=> (not res!2905108) (not e!4278928))))

(assert (=> b!7121265 (= res!2905108 (is-Cons!68843 lt!2561483))))

(declare-fun toList!11070 ((Set B!3195)) List!68967)

(declare-fun map!16349 ((Set A!537) Int) (Set B!3195))

(assert (=> b!7121265 (= lt!2561483 (toList!11070 (map!16349 s!1427 f!842)))))

(declare-fun b!7121266 () Bool)

(assert (=> b!7121266 (= e!4278926 e!4278927)))

(declare-fun res!2905106 () Bool)

(assert (=> b!7121266 (=> res!2905106 e!4278927)))

(assert (=> b!7121266 (= res!2905106 (not (is-Cons!68843 (t!382858 lt!2561483))))))

(assert (= (and start!693258 res!2905105) b!7121265))

(assert (= (and b!7121265 res!2905108) b!7121263))

(assert (= (and b!7121263 res!2905107) b!7121266))

(assert (= (and b!7121266 (not res!2905106)) b!7121264))

(assert (= (and start!693258 condSetEmpty!50784) setIsEmpty!50784))

(assert (= (and start!693258 (not condSetEmpty!50784)) setNonEmpty!50784))

(declare-fun m!7838104 () Bool)

(assert (=> b!7121263 m!7838104))

(declare-fun m!7838106 () Bool)

(assert (=> start!693258 m!7838106))

(declare-fun m!7838108 () Bool)

(assert (=> b!7121264 m!7838108))

(declare-fun m!7838110 () Bool)

(assert (=> b!7121265 m!7838110))

(assert (=> b!7121265 m!7838110))

(declare-fun m!7838112 () Bool)

(assert (=> b!7121265 m!7838112))

(push 1)

(assert (not b!7121265))

(assert (not b_next!134421))

(assert b_and!350707)

(assert (not b!7121263))

(assert (not setNonEmpty!50784))

(assert tp_is_empty!45269)

(assert (not b!7121264))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350707)

(assert (not b_next!134421))

(check-sat)

(pop 1)


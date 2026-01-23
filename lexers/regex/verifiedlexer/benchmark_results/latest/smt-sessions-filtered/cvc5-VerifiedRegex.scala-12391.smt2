; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693362 () Bool)

(assert start!693362)

(declare-fun b_free!133667 () Bool)

(declare-fun b_next!134457 () Bool)

(assert (=> start!693362 (= b_free!133667 (not b_next!134457))))

(declare-fun tp!1960842 () Bool)

(declare-fun b_and!350763 () Bool)

(assert (=> start!693362 (= tp!1960842 b_and!350763)))

(assert (=> start!693362 true))

(declare-datatypes ((B!3231 0))(
  ( (B!3232 (val!27899 Int)) )
))
(declare-datatypes ((List!68985 0))(
  ( (Nil!68861) (Cons!68861 (h!75309 B!3231) (t!382892 List!68985)) )
))
(declare-fun lt!2561649 () List!68985)

(declare-fun lt!2561650 () List!68985)

(declare-fun lambda!432789 () Int)

(declare-fun lambda!432788 () Int)

(assert (=> start!693362 (= (= lt!2561650 lt!2561649) (= lambda!432789 lambda!432788))))

(assert (=> start!693362 true))

(declare-fun setNonEmpty!50894 () Bool)

(declare-fun setRes!50894 () Bool)

(declare-fun tp!1960841 () Bool)

(declare-fun tp_is_empty!45313 () Bool)

(assert (=> setNonEmpty!50894 (= setRes!50894 (and tp!1960841 tp_is_empty!45313))))

(declare-datatypes ((A!573 0))(
  ( (A!574 (val!27900 Int)) )
))
(declare-fun s2!373 () (Set A!573))

(declare-fun setElem!50894 () A!573)

(declare-fun setRest!50895 () (Set A!573))

(assert (=> setNonEmpty!50894 (= s2!373 (set.union (set.insert setElem!50894 (as set.empty (Set A!573))) setRest!50895))))

(declare-datatypes ((Unit!162671 0))(
  ( (Unit!162672) )
))
(declare-fun lt!2561654 () Unit!162671)

(declare-fun forallContainsSubset!31 (List!68985 List!68985) Unit!162671)

(assert (=> start!693362 (= lt!2561654 (forallContainsSubset!31 lt!2561649 lt!2561650))))

(declare-fun e!4279123 () Bool)

(assert (=> start!693362 e!4279123))

(declare-fun res!2905313 () Bool)

(assert (=> start!693362 (=> (not res!2905313) (not e!4279123))))

(declare-fun forall!16882 (List!68985 Int) Bool)

(assert (=> start!693362 (= res!2905313 (forall!16882 lt!2561649 lambda!432789))))

(declare-fun f!483 () Int)

(declare-fun s1!402 () (Set A!573))

(declare-fun lt!2561651 () Unit!162671)

(declare-fun lemmaMapAssociativeToList1!3 ((Set A!573) (Set A!573) Int List!68985 List!68985) Unit!162671)

(assert (=> start!693362 (= lt!2561651 (lemmaMapAssociativeToList1!3 s1!402 s2!373 f!483 lt!2561649 lt!2561650))))

(assert (=> start!693362 (forall!16882 lt!2561650 lambda!432788)))

(declare-fun lt!2561652 () Unit!162671)

(declare-fun lemmaMapAssociativeToList2!5 ((Set A!573) (Set A!573) Int List!68985 List!68985) Unit!162671)

(assert (=> start!693362 (= lt!2561652 (lemmaMapAssociativeToList2!5 s1!402 s2!373 f!483 lt!2561649 lt!2561650))))

(declare-fun subseq!724 (List!68985 List!68985) Bool)

(assert (=> start!693362 (subseq!724 lt!2561650 lt!2561650)))

(declare-fun lt!2561653 () Unit!162671)

(declare-fun lemmaSubseqRefl!170 (List!68985) Unit!162671)

(assert (=> start!693362 (= lt!2561653 (lemmaSubseqRefl!170 lt!2561650))))

(assert (=> start!693362 (subseq!724 lt!2561649 lt!2561649)))

(declare-fun lt!2561655 () Unit!162671)

(assert (=> start!693362 (= lt!2561655 (lemmaSubseqRefl!170 lt!2561649))))

(declare-fun toList!11088 ((Set B!3231)) List!68985)

(declare-fun map!16376 ((Set A!573) Int) (Set B!3231))

(assert (=> start!693362 (= lt!2561650 (toList!11088 (map!16376 (set.union s1!402 s2!373) f!483)))))

(assert (=> start!693362 (= lt!2561649 (toList!11088 (set.union (map!16376 s1!402 f!483) (map!16376 s2!373 f!483))))))

(assert (=> start!693362 (not (forall!16882 lt!2561650 lambda!432788))))

(declare-fun condSetEmpty!50894 () Bool)

(assert (=> start!693362 (= condSetEmpty!50894 (= s1!402 (as set.empty (Set A!573))))))

(declare-fun setRes!50895 () Bool)

(assert (=> start!693362 setRes!50895))

(assert (=> start!693362 tp!1960842))

(declare-fun condSetEmpty!50895 () Bool)

(assert (=> start!693362 (= condSetEmpty!50895 (= s2!373 (as set.empty (Set A!573))))))

(assert (=> start!693362 setRes!50894))

(declare-fun setNonEmpty!50895 () Bool)

(declare-fun tp!1960843 () Bool)

(assert (=> setNonEmpty!50895 (= setRes!50895 (and tp!1960843 tp_is_empty!45313))))

(declare-fun setElem!50895 () A!573)

(declare-fun setRest!50894 () (Set A!573))

(assert (=> setNonEmpty!50895 (= s1!402 (set.union (set.insert setElem!50895 (as set.empty (Set A!573))) setRest!50894))))

(declare-fun b!7121533 () Bool)

(declare-fun res!2905314 () Bool)

(assert (=> b!7121533 (=> (not res!2905314) (not e!4279123))))

(assert (=> b!7121533 (= res!2905314 (forall!16882 lt!2561649 lambda!432789))))

(declare-fun setIsEmpty!50894 () Bool)

(assert (=> setIsEmpty!50894 setRes!50894))

(declare-fun setIsEmpty!50895 () Bool)

(assert (=> setIsEmpty!50895 setRes!50895))

(declare-fun b!7121534 () Bool)

(assert (=> b!7121534 (= e!4279123 (forall!16882 lt!2561650 lambda!432788))))

(assert (= (and start!693362 res!2905313) b!7121533))

(assert (= (and b!7121533 res!2905314) b!7121534))

(assert (= (and start!693362 condSetEmpty!50894) setIsEmpty!50895))

(assert (= (and start!693362 (not condSetEmpty!50894)) setNonEmpty!50895))

(assert (= (and start!693362 condSetEmpty!50895) setIsEmpty!50894))

(assert (= (and start!693362 (not condSetEmpty!50895)) setNonEmpty!50894))

(declare-fun m!7838500 () Bool)

(assert (=> start!693362 m!7838500))

(declare-fun m!7838502 () Bool)

(assert (=> start!693362 m!7838502))

(declare-fun m!7838504 () Bool)

(assert (=> start!693362 m!7838504))

(declare-fun m!7838506 () Bool)

(assert (=> start!693362 m!7838506))

(declare-fun m!7838508 () Bool)

(assert (=> start!693362 m!7838508))

(declare-fun m!7838510 () Bool)

(assert (=> start!693362 m!7838510))

(declare-fun m!7838512 () Bool)

(assert (=> start!693362 m!7838512))

(declare-fun m!7838514 () Bool)

(assert (=> start!693362 m!7838514))

(declare-fun m!7838516 () Bool)

(assert (=> start!693362 m!7838516))

(declare-fun m!7838518 () Bool)

(assert (=> start!693362 m!7838518))

(declare-fun m!7838520 () Bool)

(assert (=> start!693362 m!7838520))

(declare-fun m!7838522 () Bool)

(assert (=> start!693362 m!7838522))

(declare-fun m!7838524 () Bool)

(assert (=> start!693362 m!7838524))

(assert (=> start!693362 m!7838512))

(assert (=> start!693362 m!7838518))

(declare-fun m!7838526 () Bool)

(assert (=> start!693362 m!7838526))

(assert (=> b!7121533 m!7838502))

(assert (=> b!7121534 m!7838512))

(push 1)

(assert (not setNonEmpty!50894))

(assert (not b_next!134457))

(assert (not b!7121533))

(assert b_and!350763)

(assert (not start!693362))

(assert (not setNonEmpty!50895))

(assert tp_is_empty!45313)

(assert (not b!7121534))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350763)

(assert (not b_next!134457))

(check-sat)

(pop 1)


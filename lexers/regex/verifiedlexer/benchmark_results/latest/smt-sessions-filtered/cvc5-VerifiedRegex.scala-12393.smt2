; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693370 () Bool)

(assert start!693370)

(declare-fun b_free!133675 () Bool)

(declare-fun b_next!134465 () Bool)

(assert (=> start!693370 (= b_free!133675 (not b_next!134465))))

(declare-fun tp!1960877 () Bool)

(declare-fun b_and!350771 () Bool)

(assert (=> start!693370 (= tp!1960877 b_and!350771)))

(assert (=> start!693370 true))

(declare-fun lambda!432826 () Int)

(declare-datatypes ((B!3239 0))(
  ( (B!3240 (val!27907 Int)) )
))
(declare-datatypes ((List!68989 0))(
  ( (Nil!68865) (Cons!68865 (h!75313 B!3239) (t!382896 List!68989)) )
))
(declare-fun lt!2561730 () List!68989)

(declare-fun lambda!432827 () Int)

(declare-fun lt!2561726 () List!68989)

(assert (=> start!693370 (= (= lt!2561730 lt!2561726) (= lambda!432827 lambda!432826))))

(assert (=> start!693370 true))

(declare-fun setNonEmpty!50918 () Bool)

(declare-fun setRes!50919 () Bool)

(declare-fun tp!1960879 () Bool)

(declare-fun tp_is_empty!45321 () Bool)

(assert (=> setNonEmpty!50918 (= setRes!50919 (and tp!1960879 tp_is_empty!45321))))

(declare-datatypes ((A!581 0))(
  ( (A!582 (val!27908 Int)) )
))
(declare-fun s1!402 () (Set A!581))

(declare-fun setElem!50918 () A!581)

(declare-fun setRest!50918 () (Set A!581))

(assert (=> setNonEmpty!50918 (= s1!402 (set.union (set.insert setElem!50918 (as set.empty (Set A!581))) setRest!50918))))

(declare-fun e!4279129 () Bool)

(assert (=> start!693370 e!4279129))

(declare-fun res!2905323 () Bool)

(assert (=> start!693370 (=> (not res!2905323) (not e!4279129))))

(declare-fun forall!16886 (List!68989 Int) Bool)

(assert (=> start!693370 (= res!2905323 (forall!16886 lt!2561726 lambda!432827))))

(declare-fun s2!373 () (Set A!581))

(declare-fun f!483 () Int)

(declare-datatypes ((Unit!162679 0))(
  ( (Unit!162680) )
))
(declare-fun lt!2561728 () Unit!162679)

(declare-fun lemmaMapAssociativeToList1!7 ((Set A!581) (Set A!581) Int List!68989 List!68989) Unit!162679)

(assert (=> start!693370 (= lt!2561728 (lemmaMapAssociativeToList1!7 s1!402 s2!373 f!483 lt!2561726 lt!2561730))))

(assert (=> start!693370 (forall!16886 lt!2561730 lambda!432826)))

(declare-fun lt!2561729 () Unit!162679)

(declare-fun lemmaMapAssociativeToList2!9 ((Set A!581) (Set A!581) Int List!68989 List!68989) Unit!162679)

(assert (=> start!693370 (= lt!2561729 (lemmaMapAssociativeToList2!9 s1!402 s2!373 f!483 lt!2561726 lt!2561730))))

(declare-fun subseq!728 (List!68989 List!68989) Bool)

(assert (=> start!693370 (subseq!728 lt!2561730 lt!2561730)))

(declare-fun lt!2561727 () Unit!162679)

(declare-fun lemmaSubseqRefl!174 (List!68989) Unit!162679)

(assert (=> start!693370 (= lt!2561727 (lemmaSubseqRefl!174 lt!2561730))))

(assert (=> start!693370 (subseq!728 lt!2561726 lt!2561726)))

(declare-fun lt!2561725 () Unit!162679)

(assert (=> start!693370 (= lt!2561725 (lemmaSubseqRefl!174 lt!2561726))))

(declare-fun toList!11092 ((Set B!3239)) List!68989)

(declare-fun map!16382 ((Set A!581) Int) (Set B!3239))

(assert (=> start!693370 (= lt!2561730 (toList!11092 (map!16382 (set.union s1!402 s2!373) f!483)))))

(assert (=> start!693370 (= lt!2561726 (toList!11092 (set.union (map!16382 s1!402 f!483) (map!16382 s2!373 f!483))))))

(assert (=> start!693370 (not (forall!16886 lt!2561730 lambda!432826))))

(declare-fun condSetEmpty!50918 () Bool)

(assert (=> start!693370 (= condSetEmpty!50918 (= s1!402 (as set.empty (Set A!581))))))

(assert (=> start!693370 setRes!50919))

(assert (=> start!693370 tp!1960877))

(declare-fun condSetEmpty!50919 () Bool)

(assert (=> start!693370 (= condSetEmpty!50919 (= s2!373 (as set.empty (Set A!581))))))

(declare-fun setRes!50918 () Bool)

(assert (=> start!693370 setRes!50918))

(declare-fun setNonEmpty!50919 () Bool)

(declare-fun tp!1960878 () Bool)

(assert (=> setNonEmpty!50919 (= setRes!50918 (and tp!1960878 tp_is_empty!45321))))

(declare-fun setElem!50919 () A!581)

(declare-fun setRest!50919 () (Set A!581))

(assert (=> setNonEmpty!50919 (= s2!373 (set.union (set.insert setElem!50919 (as set.empty (Set A!581))) setRest!50919))))

(declare-fun setIsEmpty!50918 () Bool)

(assert (=> setIsEmpty!50918 setRes!50918))

(declare-fun b!7121551 () Bool)

(assert (=> b!7121551 (= e!4279129 (forall!16886 lt!2561726 lambda!432827))))

(declare-fun setIsEmpty!50919 () Bool)

(assert (=> setIsEmpty!50919 setRes!50919))

(assert (= (and start!693370 res!2905323) b!7121551))

(assert (= (and start!693370 condSetEmpty!50918) setIsEmpty!50919))

(assert (= (and start!693370 (not condSetEmpty!50918)) setNonEmpty!50918))

(assert (= (and start!693370 condSetEmpty!50919) setIsEmpty!50918))

(assert (= (and start!693370 (not condSetEmpty!50919)) setNonEmpty!50919))

(declare-fun m!7838608 () Bool)

(assert (=> start!693370 m!7838608))

(declare-fun m!7838610 () Bool)

(assert (=> start!693370 m!7838610))

(assert (=> start!693370 m!7838608))

(declare-fun m!7838612 () Bool)

(assert (=> start!693370 m!7838612))

(declare-fun m!7838614 () Bool)

(assert (=> start!693370 m!7838614))

(declare-fun m!7838616 () Bool)

(assert (=> start!693370 m!7838616))

(declare-fun m!7838618 () Bool)

(assert (=> start!693370 m!7838618))

(declare-fun m!7838620 () Bool)

(assert (=> start!693370 m!7838620))

(declare-fun m!7838622 () Bool)

(assert (=> start!693370 m!7838622))

(declare-fun m!7838624 () Bool)

(assert (=> start!693370 m!7838624))

(declare-fun m!7838626 () Bool)

(assert (=> start!693370 m!7838626))

(assert (=> start!693370 m!7838612))

(declare-fun m!7838628 () Bool)

(assert (=> start!693370 m!7838628))

(declare-fun m!7838630 () Bool)

(assert (=> start!693370 m!7838630))

(declare-fun m!7838632 () Bool)

(assert (=> start!693370 m!7838632))

(assert (=> b!7121551 m!7838624))

(push 1)

(assert tp_is_empty!45321)

(assert b_and!350771)

(assert (not b_next!134465))

(assert (not setNonEmpty!50919))

(assert (not b!7121551))

(assert (not setNonEmpty!50918))

(assert (not start!693370))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350771)

(assert (not b_next!134465))

(check-sat)

(pop 1)


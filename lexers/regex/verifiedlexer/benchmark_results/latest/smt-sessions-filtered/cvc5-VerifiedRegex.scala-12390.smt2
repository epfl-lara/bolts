; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693358 () Bool)

(assert start!693358)

(declare-fun b_free!133663 () Bool)

(declare-fun b_next!134453 () Bool)

(assert (=> start!693358 (= b_free!133663 (not b_next!134453))))

(declare-fun tp!1960823 () Bool)

(declare-fun b_and!350759 () Bool)

(assert (=> start!693358 (= tp!1960823 b_and!350759)))

(assert (=> start!693358 true))

(declare-datatypes ((B!3227 0))(
  ( (B!3228 (val!27895 Int)) )
))
(declare-datatypes ((List!68983 0))(
  ( (Nil!68859) (Cons!68859 (h!75307 B!3227) (t!382890 List!68983)) )
))
(declare-fun lt!2561613 () List!68983)

(declare-fun lambda!432764 () Int)

(declare-fun lambda!432765 () Int)

(declare-fun lt!2561616 () List!68983)

(assert (=> start!693358 (= (= lt!2561616 lt!2561613) (= lambda!432765 lambda!432764))))

(assert (=> start!693358 true))

(declare-fun setIsEmpty!50882 () Bool)

(declare-fun setRes!50882 () Bool)

(assert (=> setIsEmpty!50882 setRes!50882))

(declare-fun b!7121517 () Bool)

(declare-fun res!2905302 () Bool)

(declare-fun e!4279117 () Bool)

(assert (=> b!7121517 (=> (not res!2905302) (not e!4279117))))

(declare-fun forall!16880 (List!68983 Int) Bool)

(assert (=> b!7121517 (= res!2905302 (forall!16880 lt!2561613 lambda!432765))))

(declare-fun setNonEmpty!50882 () Bool)

(declare-fun tp!1960825 () Bool)

(declare-fun tp_is_empty!45309 () Bool)

(assert (=> setNonEmpty!50882 (= setRes!50882 (and tp!1960825 tp_is_empty!45309))))

(declare-datatypes ((A!569 0))(
  ( (A!570 (val!27896 Int)) )
))
(declare-fun s1!402 () (Set A!569))

(declare-fun setElem!50882 () A!569)

(declare-fun setRest!50882 () (Set A!569))

(assert (=> setNonEmpty!50882 (= s1!402 (set.union (set.insert setElem!50882 (as set.empty (Set A!569))) setRest!50882))))

(assert (=> start!693358 e!4279117))

(declare-fun res!2905301 () Bool)

(assert (=> start!693358 (=> (not res!2905301) (not e!4279117))))

(assert (=> start!693358 (= res!2905301 (forall!16880 lt!2561613 lambda!432765))))

(declare-fun s2!373 () (Set A!569))

(declare-fun f!483 () Int)

(declare-datatypes ((Unit!162667 0))(
  ( (Unit!162668) )
))
(declare-fun lt!2561614 () Unit!162667)

(declare-fun lemmaMapAssociativeToList1!1 ((Set A!569) (Set A!569) Int List!68983 List!68983) Unit!162667)

(assert (=> start!693358 (= lt!2561614 (lemmaMapAssociativeToList1!1 s1!402 s2!373 f!483 lt!2561613 lt!2561616))))

(assert (=> start!693358 (forall!16880 lt!2561616 lambda!432764)))

(declare-fun lt!2561611 () Unit!162667)

(declare-fun lemmaMapAssociativeToList2!3 ((Set A!569) (Set A!569) Int List!68983 List!68983) Unit!162667)

(assert (=> start!693358 (= lt!2561611 (lemmaMapAssociativeToList2!3 s1!402 s2!373 f!483 lt!2561613 lt!2561616))))

(declare-fun subseq!722 (List!68983 List!68983) Bool)

(assert (=> start!693358 (subseq!722 lt!2561616 lt!2561616)))

(declare-fun lt!2561612 () Unit!162667)

(declare-fun lemmaSubseqRefl!168 (List!68983) Unit!162667)

(assert (=> start!693358 (= lt!2561612 (lemmaSubseqRefl!168 lt!2561616))))

(assert (=> start!693358 (subseq!722 lt!2561613 lt!2561613)))

(declare-fun lt!2561615 () Unit!162667)

(assert (=> start!693358 (= lt!2561615 (lemmaSubseqRefl!168 lt!2561613))))

(declare-fun toList!11086 ((Set B!3227)) List!68983)

(declare-fun map!16373 ((Set A!569) Int) (Set B!3227))

(assert (=> start!693358 (= lt!2561616 (toList!11086 (map!16373 (set.union s1!402 s2!373) f!483)))))

(assert (=> start!693358 (= lt!2561613 (toList!11086 (set.union (map!16373 s1!402 f!483) (map!16373 s2!373 f!483))))))

(assert (=> start!693358 (not (forall!16880 lt!2561613 lambda!432765))))

(declare-fun condSetEmpty!50882 () Bool)

(assert (=> start!693358 (= condSetEmpty!50882 (= s1!402 (as set.empty (Set A!569))))))

(assert (=> start!693358 setRes!50882))

(assert (=> start!693358 tp!1960823))

(declare-fun condSetEmpty!50883 () Bool)

(assert (=> start!693358 (= condSetEmpty!50883 (= s2!373 (as set.empty (Set A!569))))))

(declare-fun setRes!50883 () Bool)

(assert (=> start!693358 setRes!50883))

(declare-fun setIsEmpty!50883 () Bool)

(assert (=> setIsEmpty!50883 setRes!50883))

(declare-fun setNonEmpty!50883 () Bool)

(declare-fun tp!1960824 () Bool)

(assert (=> setNonEmpty!50883 (= setRes!50883 (and tp!1960824 tp_is_empty!45309))))

(declare-fun setElem!50883 () A!569)

(declare-fun setRest!50883 () (Set A!569))

(assert (=> setNonEmpty!50883 (= s2!373 (set.union (set.insert setElem!50883 (as set.empty (Set A!569))) setRest!50883))))

(declare-fun b!7121518 () Bool)

(assert (=> b!7121518 (= e!4279117 (forall!16880 lt!2561616 lambda!432764))))

(assert (= (and start!693358 res!2905301) b!7121517))

(assert (= (and b!7121517 res!2905302) b!7121518))

(assert (= (and start!693358 condSetEmpty!50882) setIsEmpty!50882))

(assert (= (and start!693358 (not condSetEmpty!50882)) setNonEmpty!50882))

(assert (= (and start!693358 condSetEmpty!50883) setIsEmpty!50883))

(assert (= (and start!693358 (not condSetEmpty!50883)) setNonEmpty!50883))

(declare-fun m!7838448 () Bool)

(assert (=> b!7121517 m!7838448))

(declare-fun m!7838450 () Bool)

(assert (=> start!693358 m!7838450))

(declare-fun m!7838452 () Bool)

(assert (=> start!693358 m!7838452))

(declare-fun m!7838454 () Bool)

(assert (=> start!693358 m!7838454))

(declare-fun m!7838456 () Bool)

(assert (=> start!693358 m!7838456))

(declare-fun m!7838458 () Bool)

(assert (=> start!693358 m!7838458))

(assert (=> start!693358 m!7838448))

(assert (=> start!693358 m!7838452))

(declare-fun m!7838460 () Bool)

(assert (=> start!693358 m!7838460))

(assert (=> start!693358 m!7838448))

(declare-fun m!7838462 () Bool)

(assert (=> start!693358 m!7838462))

(declare-fun m!7838464 () Bool)

(assert (=> start!693358 m!7838464))

(declare-fun m!7838466 () Bool)

(assert (=> start!693358 m!7838466))

(declare-fun m!7838468 () Bool)

(assert (=> start!693358 m!7838468))

(declare-fun m!7838470 () Bool)

(assert (=> start!693358 m!7838470))

(declare-fun m!7838472 () Bool)

(assert (=> start!693358 m!7838472))

(assert (=> b!7121518 m!7838458))

(push 1)

(assert (not setNonEmpty!50883))

(assert (not start!693358))

(assert tp_is_empty!45309)

(assert (not b!7121518))

(assert (not setNonEmpty!50882))

(assert (not b_next!134453))

(assert (not b!7121517))

(assert b_and!350759)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350759)

(assert (not b_next!134453))

(check-sat)

(pop 1)


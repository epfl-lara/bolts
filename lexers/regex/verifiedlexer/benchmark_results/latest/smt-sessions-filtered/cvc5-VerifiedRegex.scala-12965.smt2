; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713414 () Bool)

(assert start!713414)

(declare-fun b_free!134035 () Bool)

(declare-fun b_next!134825 () Bool)

(assert (=> start!713414 (= b_free!134035 (not b_next!134825))))

(declare-fun tp!2077868 () Bool)

(declare-fun b_and!351443 () Bool)

(assert (=> start!713414 (= tp!2077868 b_and!351443)))

(assert (=> start!713414 true))

(declare-datatypes ((B!3583 0))(
  ( (B!3584 (val!29201 Int)) )
))
(declare-datatypes ((List!71355 0))(
  ( (Nil!71231) (Cons!71231 (h!77679 B!3583) (t!385587 List!71355)) )
))
(declare-fun lt!2602683 () List!71355)

(declare-fun lt!2602678 () List!71355)

(declare-fun lambda!452762 () Int)

(declare-fun lambda!452763 () Int)

(assert (=> start!713414 (= (= lt!2602678 lt!2602683) (= lambda!452763 lambda!452762))))

(assert (=> start!713414 true))

(declare-fun setIsEmpty!54814 () Bool)

(declare-fun setRes!54814 () Bool)

(assert (=> setIsEmpty!54814 setRes!54814))

(declare-fun b!7317649 () Bool)

(declare-fun e!4380866 () Bool)

(declare-fun forall!17791 (List!71355 Int) Bool)

(assert (=> b!7317649 (= e!4380866 (forall!17791 lt!2602678 lambda!452762))))

(declare-fun setIsEmpty!54815 () Bool)

(declare-fun setRes!54815 () Bool)

(assert (=> setIsEmpty!54815 setRes!54815))

(declare-fun b!7317650 () Bool)

(declare-fun res!2956895 () Bool)

(assert (=> b!7317650 (=> (not res!2956895) (not e!4380866))))

(assert (=> b!7317650 (= res!2956895 (forall!17791 lt!2602683 lambda!452763))))

(assert (=> start!713414 e!4380866))

(declare-fun res!2956896 () Bool)

(assert (=> start!713414 (=> (not res!2956896) (not e!4380866))))

(assert (=> start!713414 (= res!2956896 (forall!17791 lt!2602683 lambda!452763))))

(declare-fun f!725 () Int)

(declare-datatypes ((Unit!164701 0))(
  ( (Unit!164702) )
))
(declare-fun lt!2602679 () Unit!164701)

(declare-datatypes ((A!881 0))(
  ( (A!882 (val!29202 Int)) )
))
(declare-fun s1!435 () (Set A!881))

(declare-fun s2!406 () (Set A!881))

(declare-fun lemmaFlatMapAssociativeToList1!1 ((Set A!881) (Set A!881) Int List!71355 List!71355) Unit!164701)

(assert (=> start!713414 (= lt!2602679 (lemmaFlatMapAssociativeToList1!1 s1!435 s2!406 f!725 lt!2602683 lt!2602678))))

(assert (=> start!713414 (forall!17791 lt!2602678 lambda!452762)))

(declare-fun lt!2602680 () Unit!164701)

(declare-fun lemmaFlatMapAssociativeToList2!3 ((Set A!881) (Set A!881) Int List!71355 List!71355) Unit!164701)

(assert (=> start!713414 (= lt!2602680 (lemmaFlatMapAssociativeToList2!3 s1!435 s2!406 f!725 lt!2602683 lt!2602678))))

(declare-fun subseq!852 (List!71355 List!71355) Bool)

(assert (=> start!713414 (subseq!852 lt!2602678 lt!2602678)))

(declare-fun lt!2602681 () Unit!164701)

(declare-fun lemmaSubseqRefl!194 (List!71355) Unit!164701)

(assert (=> start!713414 (= lt!2602681 (lemmaSubseqRefl!194 lt!2602678))))

(assert (=> start!713414 (subseq!852 lt!2602683 lt!2602683)))

(declare-fun lt!2602682 () Unit!164701)

(assert (=> start!713414 (= lt!2602682 (lemmaSubseqRefl!194 lt!2602683))))

(declare-fun toList!11642 ((Set B!3583)) List!71355)

(declare-fun flatMap!3060 ((Set A!881) Int) (Set B!3583))

(assert (=> start!713414 (= lt!2602678 (toList!11642 (flatMap!3060 (set.union s1!435 s2!406) f!725)))))

(assert (=> start!713414 (= lt!2602683 (toList!11642 (set.union (flatMap!3060 s1!435 f!725) (flatMap!3060 s2!406 f!725))))))

(assert (=> start!713414 (not (forall!17791 lt!2602683 lambda!452763))))

(declare-fun condSetEmpty!54814 () Bool)

(assert (=> start!713414 (= condSetEmpty!54814 (= s1!435 (as set.empty (Set A!881))))))

(assert (=> start!713414 setRes!54814))

(assert (=> start!713414 tp!2077868))

(declare-fun condSetEmpty!54815 () Bool)

(assert (=> start!713414 (= condSetEmpty!54815 (= s2!406 (as set.empty (Set A!881))))))

(assert (=> start!713414 setRes!54815))

(declare-fun setNonEmpty!54814 () Bool)

(declare-fun tp!2077869 () Bool)

(declare-fun tp_is_empty!47673 () Bool)

(assert (=> setNonEmpty!54814 (= setRes!54815 (and tp!2077869 tp_is_empty!47673))))

(declare-fun setElem!54815 () A!881)

(declare-fun setRest!54814 () (Set A!881))

(assert (=> setNonEmpty!54814 (= s2!406 (set.union (set.insert setElem!54815 (as set.empty (Set A!881))) setRest!54814))))

(declare-fun setNonEmpty!54815 () Bool)

(declare-fun tp!2077870 () Bool)

(assert (=> setNonEmpty!54815 (= setRes!54814 (and tp!2077870 tp_is_empty!47673))))

(declare-fun setElem!54814 () A!881)

(declare-fun setRest!54815 () (Set A!881))

(assert (=> setNonEmpty!54815 (= s1!435 (set.union (set.insert setElem!54814 (as set.empty (Set A!881))) setRest!54815))))

(assert (= (and start!713414 res!2956896) b!7317650))

(assert (= (and b!7317650 res!2956895) b!7317649))

(assert (= (and start!713414 condSetEmpty!54814) setIsEmpty!54814))

(assert (= (and start!713414 (not condSetEmpty!54814)) setNonEmpty!54815))

(assert (= (and start!713414 condSetEmpty!54815) setIsEmpty!54815))

(assert (= (and start!713414 (not condSetEmpty!54815)) setNonEmpty!54814))

(declare-fun m!7982102 () Bool)

(assert (=> b!7317649 m!7982102))

(declare-fun m!7982104 () Bool)

(assert (=> b!7317650 m!7982104))

(declare-fun m!7982106 () Bool)

(assert (=> start!713414 m!7982106))

(declare-fun m!7982108 () Bool)

(assert (=> start!713414 m!7982108))

(declare-fun m!7982110 () Bool)

(assert (=> start!713414 m!7982110))

(declare-fun m!7982112 () Bool)

(assert (=> start!713414 m!7982112))

(declare-fun m!7982114 () Bool)

(assert (=> start!713414 m!7982114))

(declare-fun m!7982116 () Bool)

(assert (=> start!713414 m!7982116))

(assert (=> start!713414 m!7982104))

(declare-fun m!7982118 () Bool)

(assert (=> start!713414 m!7982118))

(assert (=> start!713414 m!7982102))

(declare-fun m!7982120 () Bool)

(assert (=> start!713414 m!7982120))

(declare-fun m!7982122 () Bool)

(assert (=> start!713414 m!7982122))

(assert (=> start!713414 m!7982112))

(assert (=> start!713414 m!7982104))

(declare-fun m!7982124 () Bool)

(assert (=> start!713414 m!7982124))

(declare-fun m!7982126 () Bool)

(assert (=> start!713414 m!7982126))

(push 1)

(assert (not setNonEmpty!54814))

(assert (not start!713414))

(assert b_and!351443)

(assert (not b_next!134825))

(assert (not setNonEmpty!54815))

(assert tp_is_empty!47673)

(assert (not b!7317650))

(assert (not b!7317649))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351443)

(assert (not b_next!134825))

(check-sat)

(pop 1)


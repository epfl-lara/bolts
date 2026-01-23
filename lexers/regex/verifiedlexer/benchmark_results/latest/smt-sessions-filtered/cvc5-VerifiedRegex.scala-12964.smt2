; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713410 () Bool)

(assert start!713410)

(declare-fun b_free!134031 () Bool)

(declare-fun b_next!134821 () Bool)

(assert (=> start!713410 (= b_free!134031 (not b_next!134821))))

(declare-fun tp!2077850 () Bool)

(declare-fun b_and!351439 () Bool)

(assert (=> start!713410 (= tp!2077850 b_and!351439)))

(assert (=> start!713410 true))

(declare-fun setNonEmpty!54802 () Bool)

(declare-fun setRes!54802 () Bool)

(declare-fun tp!2077851 () Bool)

(declare-fun tp_is_empty!47669 () Bool)

(assert (=> setNonEmpty!54802 (= setRes!54802 (and tp!2077851 tp_is_empty!47669))))

(declare-datatypes ((A!877 0))(
  ( (A!878 (val!29197 Int)) )
))
(declare-fun s1!435 () (Set A!877))

(declare-fun setElem!54803 () A!877)

(declare-fun setRest!54802 () (Set A!877))

(assert (=> setNonEmpty!54802 (= s1!435 (set.union (set.insert setElem!54803 (as set.empty (Set A!877))) setRest!54802))))

(declare-fun setIsEmpty!54803 () Bool)

(declare-fun setRes!54803 () Bool)

(assert (=> setIsEmpty!54803 setRes!54803))

(declare-datatypes ((B!3579 0))(
  ( (B!3580 (val!29198 Int)) )
))
(declare-datatypes ((List!71353 0))(
  ( (Nil!71229) (Cons!71229 (h!77677 B!3579) (t!385585 List!71353)) )
))
(declare-fun lt!2602646 () List!71353)

(declare-fun lambda!452748 () Int)

(declare-fun forall!17789 (List!71353 Int) Bool)

(assert (=> start!713410 (forall!17789 lt!2602646 lambda!452748)))

(declare-fun f!725 () Int)

(declare-fun lt!2602648 () List!71353)

(declare-datatypes ((Unit!164697 0))(
  ( (Unit!164698) )
))
(declare-fun lt!2602647 () Unit!164697)

(declare-fun s2!406 () (Set A!877))

(declare-fun lemmaFlatMapAssociativeToList2!1 ((Set A!877) (Set A!877) Int List!71353 List!71353) Unit!164697)

(assert (=> start!713410 (= lt!2602647 (lemmaFlatMapAssociativeToList2!1 s1!435 s2!406 f!725 lt!2602648 lt!2602646))))

(declare-fun subseq!850 (List!71353 List!71353) Bool)

(assert (=> start!713410 (subseq!850 lt!2602646 lt!2602646)))

(declare-fun lt!2602649 () Unit!164697)

(declare-fun lemmaSubseqRefl!192 (List!71353) Unit!164697)

(assert (=> start!713410 (= lt!2602649 (lemmaSubseqRefl!192 lt!2602646))))

(assert (=> start!713410 (subseq!850 lt!2602648 lt!2602648)))

(declare-fun lt!2602650 () Unit!164697)

(assert (=> start!713410 (= lt!2602650 (lemmaSubseqRefl!192 lt!2602648))))

(declare-fun toList!11640 ((Set B!3579)) List!71353)

(declare-fun flatMap!3058 ((Set A!877) Int) (Set B!3579))

(assert (=> start!713410 (= lt!2602646 (toList!11640 (flatMap!3058 (set.union s1!435 s2!406) f!725)))))

(assert (=> start!713410 (= lt!2602648 (toList!11640 (set.union (flatMap!3058 s1!435 f!725) (flatMap!3058 s2!406 f!725))))))

(assert (=> start!713410 (not true)))

(declare-fun condSetEmpty!54802 () Bool)

(assert (=> start!713410 (= condSetEmpty!54802 (= s1!435 (as set.empty (Set A!877))))))

(assert (=> start!713410 setRes!54802))

(assert (=> start!713410 tp!2077850))

(declare-fun condSetEmpty!54803 () Bool)

(assert (=> start!713410 (= condSetEmpty!54803 (= s2!406 (as set.empty (Set A!877))))))

(assert (=> start!713410 setRes!54803))

(declare-fun setIsEmpty!54802 () Bool)

(assert (=> setIsEmpty!54802 setRes!54802))

(declare-fun setNonEmpty!54803 () Bool)

(declare-fun tp!2077852 () Bool)

(assert (=> setNonEmpty!54803 (= setRes!54803 (and tp!2077852 tp_is_empty!47669))))

(declare-fun setElem!54802 () A!877)

(declare-fun setRest!54803 () (Set A!877))

(assert (=> setNonEmpty!54803 (= s2!406 (set.union (set.insert setElem!54802 (as set.empty (Set A!877))) setRest!54803))))

(assert (= (and start!713410 condSetEmpty!54802) setIsEmpty!54802))

(assert (= (and start!713410 (not condSetEmpty!54802)) setNonEmpty!54802))

(assert (= (and start!713410 condSetEmpty!54803) setIsEmpty!54803))

(assert (= (and start!713410 (not condSetEmpty!54803)) setNonEmpty!54803))

(declare-fun m!7982058 () Bool)

(assert (=> start!713410 m!7982058))

(declare-fun m!7982060 () Bool)

(assert (=> start!713410 m!7982060))

(declare-fun m!7982062 () Bool)

(assert (=> start!713410 m!7982062))

(declare-fun m!7982064 () Bool)

(assert (=> start!713410 m!7982064))

(assert (=> start!713410 m!7982064))

(declare-fun m!7982066 () Bool)

(assert (=> start!713410 m!7982066))

(declare-fun m!7982068 () Bool)

(assert (=> start!713410 m!7982068))

(declare-fun m!7982070 () Bool)

(assert (=> start!713410 m!7982070))

(declare-fun m!7982072 () Bool)

(assert (=> start!713410 m!7982072))

(declare-fun m!7982074 () Bool)

(assert (=> start!713410 m!7982074))

(declare-fun m!7982076 () Bool)

(assert (=> start!713410 m!7982076))

(declare-fun m!7982078 () Bool)

(assert (=> start!713410 m!7982078))

(push 1)

(assert (not setNonEmpty!54802))

(assert (not b_next!134821))

(assert b_and!351439)

(assert (not setNonEmpty!54803))

(assert tp_is_empty!47669)

(assert (not start!713410))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351439)

(assert (not b_next!134821))

(check-sat)

(pop 1)


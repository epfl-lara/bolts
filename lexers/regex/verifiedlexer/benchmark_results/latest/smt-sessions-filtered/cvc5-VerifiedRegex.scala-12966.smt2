; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713418 () Bool)

(assert start!713418)

(declare-fun b_free!134039 () Bool)

(declare-fun b_next!134829 () Bool)

(assert (=> start!713418 (= b_free!134039 (not b_next!134829))))

(declare-fun tp!2077888 () Bool)

(declare-fun b_and!351447 () Bool)

(assert (=> start!713418 (= tp!2077888 b_and!351447)))

(assert (=> start!713418 true))

(declare-fun lambda!452787 () Int)

(declare-datatypes ((B!3587 0))(
  ( (B!3588 (val!29205 Int)) )
))
(declare-datatypes ((List!71357 0))(
  ( (Nil!71233) (Cons!71233 (h!77681 B!3587) (t!385589 List!71357)) )
))
(declare-fun lt!2602716 () List!71357)

(declare-fun lt!2602721 () List!71357)

(declare-fun lambda!452786 () Int)

(assert (=> start!713418 (= (= lt!2602716 lt!2602721) (= lambda!452787 lambda!452786))))

(assert (=> start!713418 true))

(declare-datatypes ((Unit!164705 0))(
  ( (Unit!164706) )
))
(declare-fun lt!2602718 () Unit!164705)

(declare-fun forallContainsSubset!39 (List!71357 List!71357) Unit!164705)

(assert (=> start!713418 (= lt!2602718 (forallContainsSubset!39 lt!2602721 lt!2602716))))

(declare-fun e!4380872 () Bool)

(assert (=> start!713418 e!4380872))

(declare-fun res!2956907 () Bool)

(assert (=> start!713418 (=> (not res!2956907) (not e!4380872))))

(declare-fun forall!17793 (List!71357 Int) Bool)

(assert (=> start!713418 (= res!2956907 (forall!17793 lt!2602721 lambda!452787))))

(declare-fun f!725 () Int)

(declare-fun lt!2602717 () Unit!164705)

(declare-datatypes ((A!885 0))(
  ( (A!886 (val!29206 Int)) )
))
(declare-fun s2!406 () (Set A!885))

(declare-fun s1!435 () (Set A!885))

(declare-fun lemmaFlatMapAssociativeToList1!3 ((Set A!885) (Set A!885) Int List!71357 List!71357) Unit!164705)

(assert (=> start!713418 (= lt!2602717 (lemmaFlatMapAssociativeToList1!3 s1!435 s2!406 f!725 lt!2602721 lt!2602716))))

(assert (=> start!713418 (forall!17793 lt!2602716 lambda!452786)))

(declare-fun lt!2602720 () Unit!164705)

(declare-fun lemmaFlatMapAssociativeToList2!5 ((Set A!885) (Set A!885) Int List!71357 List!71357) Unit!164705)

(assert (=> start!713418 (= lt!2602720 (lemmaFlatMapAssociativeToList2!5 s1!435 s2!406 f!725 lt!2602721 lt!2602716))))

(declare-fun subseq!854 (List!71357 List!71357) Bool)

(assert (=> start!713418 (subseq!854 lt!2602716 lt!2602716)))

(declare-fun lt!2602722 () Unit!164705)

(declare-fun lemmaSubseqRefl!196 (List!71357) Unit!164705)

(assert (=> start!713418 (= lt!2602722 (lemmaSubseqRefl!196 lt!2602716))))

(assert (=> start!713418 (subseq!854 lt!2602721 lt!2602721)))

(declare-fun lt!2602719 () Unit!164705)

(assert (=> start!713418 (= lt!2602719 (lemmaSubseqRefl!196 lt!2602721))))

(declare-fun toList!11644 ((Set B!3587)) List!71357)

(declare-fun flatMap!3062 ((Set A!885) Int) (Set B!3587))

(assert (=> start!713418 (= lt!2602716 (toList!11644 (flatMap!3062 (set.union s1!435 s2!406) f!725)))))

(assert (=> start!713418 (= lt!2602721 (toList!11644 (set.union (flatMap!3062 s1!435 f!725) (flatMap!3062 s2!406 f!725))))))

(assert (=> start!713418 (not (forall!17793 lt!2602716 lambda!452786))))

(declare-fun condSetEmpty!54827 () Bool)

(assert (=> start!713418 (= condSetEmpty!54827 (= s1!435 (as set.empty (Set A!885))))))

(declare-fun setRes!54826 () Bool)

(assert (=> start!713418 setRes!54826))

(assert (=> start!713418 tp!2077888))

(declare-fun condSetEmpty!54826 () Bool)

(assert (=> start!713418 (= condSetEmpty!54826 (= s2!406 (as set.empty (Set A!885))))))

(declare-fun setRes!54827 () Bool)

(assert (=> start!713418 setRes!54827))

(declare-fun setNonEmpty!54826 () Bool)

(declare-fun tp!2077887 () Bool)

(declare-fun tp_is_empty!47677 () Bool)

(assert (=> setNonEmpty!54826 (= setRes!54827 (and tp!2077887 tp_is_empty!47677))))

(declare-fun setElem!54827 () A!885)

(declare-fun setRest!54826 () (Set A!885))

(assert (=> setNonEmpty!54826 (= s2!406 (set.union (set.insert setElem!54827 (as set.empty (Set A!885))) setRest!54826))))

(declare-fun setNonEmpty!54827 () Bool)

(declare-fun tp!2077886 () Bool)

(assert (=> setNonEmpty!54827 (= setRes!54826 (and tp!2077886 tp_is_empty!47677))))

(declare-fun setElem!54826 () A!885)

(declare-fun setRest!54827 () (Set A!885))

(assert (=> setNonEmpty!54827 (= s1!435 (set.union (set.insert setElem!54826 (as set.empty (Set A!885))) setRest!54827))))

(declare-fun setIsEmpty!54826 () Bool)

(assert (=> setIsEmpty!54826 setRes!54827))

(declare-fun b!7317665 () Bool)

(declare-fun res!2956908 () Bool)

(assert (=> b!7317665 (=> (not res!2956908) (not e!4380872))))

(assert (=> b!7317665 (= res!2956908 (forall!17793 lt!2602721 lambda!452787))))

(declare-fun setIsEmpty!54827 () Bool)

(assert (=> setIsEmpty!54827 setRes!54826))

(declare-fun b!7317666 () Bool)

(assert (=> b!7317666 (= e!4380872 (forall!17793 lt!2602716 lambda!452786))))

(assert (= (and start!713418 res!2956907) b!7317665))

(assert (= (and b!7317665 res!2956908) b!7317666))

(assert (= (and start!713418 condSetEmpty!54827) setIsEmpty!54827))

(assert (= (and start!713418 (not condSetEmpty!54827)) setNonEmpty!54827))

(assert (= (and start!713418 condSetEmpty!54826) setIsEmpty!54826))

(assert (= (and start!713418 (not condSetEmpty!54826)) setNonEmpty!54826))

(declare-fun m!7982154 () Bool)

(assert (=> start!713418 m!7982154))

(declare-fun m!7982156 () Bool)

(assert (=> start!713418 m!7982156))

(declare-fun m!7982158 () Bool)

(assert (=> start!713418 m!7982158))

(declare-fun m!7982160 () Bool)

(assert (=> start!713418 m!7982160))

(declare-fun m!7982162 () Bool)

(assert (=> start!713418 m!7982162))

(declare-fun m!7982164 () Bool)

(assert (=> start!713418 m!7982164))

(declare-fun m!7982166 () Bool)

(assert (=> start!713418 m!7982166))

(declare-fun m!7982168 () Bool)

(assert (=> start!713418 m!7982168))

(assert (=> start!713418 m!7982166))

(declare-fun m!7982170 () Bool)

(assert (=> start!713418 m!7982170))

(declare-fun m!7982172 () Bool)

(assert (=> start!713418 m!7982172))

(assert (=> start!713418 m!7982160))

(declare-fun m!7982174 () Bool)

(assert (=> start!713418 m!7982174))

(declare-fun m!7982176 () Bool)

(assert (=> start!713418 m!7982176))

(declare-fun m!7982178 () Bool)

(assert (=> start!713418 m!7982178))

(declare-fun m!7982180 () Bool)

(assert (=> start!713418 m!7982180))

(assert (=> b!7317665 m!7982168))

(assert (=> b!7317666 m!7982160))

(push 1)

(assert (not start!713418))

(assert (not b_next!134829))

(assert b_and!351447)

(assert tp_is_empty!47677)

(assert (not b!7317666))

(assert (not setNonEmpty!54826))

(assert (not setNonEmpty!54827))

(assert (not b!7317665))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351447)

(assert (not b_next!134829))

(check-sat)

(pop 1)


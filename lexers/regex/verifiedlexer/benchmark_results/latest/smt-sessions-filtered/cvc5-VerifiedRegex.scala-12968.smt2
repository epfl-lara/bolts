; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713426 () Bool)

(assert start!713426)

(declare-fun b_free!134047 () Bool)

(declare-fun b_next!134837 () Bool)

(assert (=> start!713426 (= b_free!134047 (not b_next!134837))))

(declare-fun tp!2077922 () Bool)

(declare-fun b_and!351455 () Bool)

(assert (=> start!713426 (= tp!2077922 b_and!351455)))

(assert (=> start!713426 true))

(declare-fun lambda!452824 () Int)

(declare-datatypes ((B!3595 0))(
  ( (B!3596 (val!29213 Int)) )
))
(declare-datatypes ((List!71361 0))(
  ( (Nil!71237) (Cons!71237 (h!77685 B!3595) (t!385593 List!71361)) )
))
(declare-fun lt!2602793 () List!71361)

(declare-fun lambda!452825 () Int)

(declare-fun lt!2602795 () List!71361)

(assert (=> start!713426 (= (= lt!2602793 lt!2602795) (= lambda!452825 lambda!452824))))

(assert (=> start!713426 true))

(declare-fun setIsEmpty!54850 () Bool)

(declare-fun setRes!54851 () Bool)

(assert (=> setIsEmpty!54850 setRes!54851))

(declare-fun setNonEmpty!54850 () Bool)

(declare-fun setRes!54850 () Bool)

(declare-fun tp!2077924 () Bool)

(declare-fun tp_is_empty!47685 () Bool)

(assert (=> setNonEmpty!54850 (= setRes!54850 (and tp!2077924 tp_is_empty!47685))))

(declare-datatypes ((A!893 0))(
  ( (A!894 (val!29214 Int)) )
))
(declare-fun s1!435 () (Set A!893))

(declare-fun setElem!54851 () A!893)

(declare-fun setRest!54851 () (Set A!893))

(assert (=> setNonEmpty!54850 (= s1!435 (set.union (set.insert setElem!54851 (as set.empty (Set A!893))) setRest!54851))))

(declare-fun setNonEmpty!54851 () Bool)

(declare-fun tp!2077923 () Bool)

(assert (=> setNonEmpty!54851 (= setRes!54851 (and tp!2077923 tp_is_empty!47685))))

(declare-fun s2!406 () (Set A!893))

(declare-fun setElem!54850 () A!893)

(declare-fun setRest!54850 () (Set A!893))

(assert (=> setNonEmpty!54851 (= s2!406 (set.union (set.insert setElem!54850 (as set.empty (Set A!893))) setRest!54850))))

(declare-fun setIsEmpty!54851 () Bool)

(assert (=> setIsEmpty!54851 setRes!54850))

(declare-fun b!7317683 () Bool)

(declare-fun e!4380878 () Bool)

(declare-fun forall!17797 (List!71361 Int) Bool)

(assert (=> b!7317683 (= e!4380878 (forall!17797 lt!2602795 lambda!452825))))

(assert (=> start!713426 e!4380878))

(declare-fun res!2956917 () Bool)

(assert (=> start!713426 (=> (not res!2956917) (not e!4380878))))

(assert (=> start!713426 (= res!2956917 (forall!17797 lt!2602795 lambda!452825))))

(declare-fun f!725 () Int)

(declare-datatypes ((Unit!164713 0))(
  ( (Unit!164714) )
))
(declare-fun lt!2602797 () Unit!164713)

(declare-fun lemmaFlatMapAssociativeToList1!7 ((Set A!893) (Set A!893) Int List!71361 List!71361) Unit!164713)

(assert (=> start!713426 (= lt!2602797 (lemmaFlatMapAssociativeToList1!7 s1!435 s2!406 f!725 lt!2602795 lt!2602793))))

(assert (=> start!713426 (forall!17797 lt!2602793 lambda!452824)))

(declare-fun lt!2602796 () Unit!164713)

(declare-fun lemmaFlatMapAssociativeToList2!9 ((Set A!893) (Set A!893) Int List!71361 List!71361) Unit!164713)

(assert (=> start!713426 (= lt!2602796 (lemmaFlatMapAssociativeToList2!9 s1!435 s2!406 f!725 lt!2602795 lt!2602793))))

(declare-fun subseq!858 (List!71361 List!71361) Bool)

(assert (=> start!713426 (subseq!858 lt!2602793 lt!2602793)))

(declare-fun lt!2602792 () Unit!164713)

(declare-fun lemmaSubseqRefl!200 (List!71361) Unit!164713)

(assert (=> start!713426 (= lt!2602792 (lemmaSubseqRefl!200 lt!2602793))))

(assert (=> start!713426 (subseq!858 lt!2602795 lt!2602795)))

(declare-fun lt!2602794 () Unit!164713)

(assert (=> start!713426 (= lt!2602794 (lemmaSubseqRefl!200 lt!2602795))))

(declare-fun toList!11648 ((Set B!3595)) List!71361)

(declare-fun flatMap!3066 ((Set A!893) Int) (Set B!3595))

(assert (=> start!713426 (= lt!2602793 (toList!11648 (flatMap!3066 (set.union s1!435 s2!406) f!725)))))

(assert (=> start!713426 (= lt!2602795 (toList!11648 (set.union (flatMap!3066 s1!435 f!725) (flatMap!3066 s2!406 f!725))))))

(assert (=> start!713426 (not (forall!17797 lt!2602793 lambda!452824))))

(declare-fun condSetEmpty!54850 () Bool)

(assert (=> start!713426 (= condSetEmpty!54850 (= s1!435 (as set.empty (Set A!893))))))

(assert (=> start!713426 setRes!54850))

(assert (=> start!713426 tp!2077922))

(declare-fun condSetEmpty!54851 () Bool)

(assert (=> start!713426 (= condSetEmpty!54851 (= s2!406 (as set.empty (Set A!893))))))

(assert (=> start!713426 setRes!54851))

(assert (= (and start!713426 res!2956917) b!7317683))

(assert (= (and start!713426 condSetEmpty!54850) setIsEmpty!54851))

(assert (= (and start!713426 (not condSetEmpty!54850)) setNonEmpty!54850))

(assert (= (and start!713426 condSetEmpty!54851) setIsEmpty!54850))

(assert (= (and start!713426 (not condSetEmpty!54851)) setNonEmpty!54851))

(declare-fun m!7982262 () Bool)

(assert (=> b!7317683 m!7982262))

(declare-fun m!7982264 () Bool)

(assert (=> start!713426 m!7982264))

(declare-fun m!7982266 () Bool)

(assert (=> start!713426 m!7982266))

(declare-fun m!7982268 () Bool)

(assert (=> start!713426 m!7982268))

(declare-fun m!7982270 () Bool)

(assert (=> start!713426 m!7982270))

(declare-fun m!7982272 () Bool)

(assert (=> start!713426 m!7982272))

(declare-fun m!7982274 () Bool)

(assert (=> start!713426 m!7982274))

(declare-fun m!7982276 () Bool)

(assert (=> start!713426 m!7982276))

(declare-fun m!7982278 () Bool)

(assert (=> start!713426 m!7982278))

(assert (=> start!713426 m!7982276))

(declare-fun m!7982280 () Bool)

(assert (=> start!713426 m!7982280))

(declare-fun m!7982282 () Bool)

(assert (=> start!713426 m!7982282))

(declare-fun m!7982284 () Bool)

(assert (=> start!713426 m!7982284))

(declare-fun m!7982286 () Bool)

(assert (=> start!713426 m!7982286))

(assert (=> start!713426 m!7982262))

(assert (=> start!713426 m!7982270))

(push 1)

(assert (not setNonEmpty!54850))

(assert b_and!351455)

(assert (not start!713426))

(assert (not b!7317683))

(assert (not setNonEmpty!54851))

(assert tp_is_empty!47685)

(assert (not b_next!134837))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351455)

(assert (not b_next!134837))

(check-sat)

(pop 1)


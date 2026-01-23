; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713422 () Bool)

(assert start!713422)

(declare-fun b_free!134043 () Bool)

(declare-fun b_next!134833 () Bool)

(assert (=> start!713422 (= b_free!134043 (not b_next!134833))))

(declare-fun tp!2077904 () Bool)

(declare-fun b_and!351451 () Bool)

(assert (=> start!713422 (= tp!2077904 b_and!351451)))

(assert (=> start!713422 true))

(declare-datatypes ((B!3591 0))(
  ( (B!3592 (val!29209 Int)) )
))
(declare-datatypes ((List!71359 0))(
  ( (Nil!71235) (Cons!71235 (h!77683 B!3591) (t!385591 List!71359)) )
))
(declare-fun lt!2602759 () List!71359)

(declare-fun lambda!452806 () Int)

(declare-fun lt!2602760 () List!71359)

(declare-fun lambda!452807 () Int)

(assert (=> start!713422 (= (= lt!2602759 lt!2602760) (= lambda!452807 lambda!452806))))

(assert (=> start!713422 true))

(declare-fun setIsEmpty!54839 () Bool)

(declare-fun setRes!54839 () Bool)

(assert (=> setIsEmpty!54839 setRes!54839))

(declare-fun setNonEmpty!54838 () Bool)

(declare-fun setRes!54838 () Bool)

(declare-fun tp!2077906 () Bool)

(declare-fun tp_is_empty!47681 () Bool)

(assert (=> setNonEmpty!54838 (= setRes!54838 (and tp!2077906 tp_is_empty!47681))))

(declare-datatypes ((A!889 0))(
  ( (A!890 (val!29210 Int)) )
))
(declare-fun s1!435 () (Set A!889))

(declare-fun setElem!54839 () A!889)

(declare-fun setRest!54838 () (Set A!889))

(assert (=> setNonEmpty!54838 (= s1!435 (set.union (set.insert setElem!54839 (as set.empty (Set A!889))) setRest!54838))))

(declare-fun setNonEmpty!54839 () Bool)

(declare-fun tp!2077905 () Bool)

(assert (=> setNonEmpty!54839 (= setRes!54839 (and tp!2077905 tp_is_empty!47681))))

(declare-fun s2!406 () (Set A!889))

(declare-fun setElem!54838 () A!889)

(declare-fun setRest!54839 () (Set A!889))

(assert (=> setNonEmpty!54839 (= s2!406 (set.union (set.insert setElem!54838 (as set.empty (Set A!889))) setRest!54839))))

(declare-fun setIsEmpty!54838 () Bool)

(assert (=> setIsEmpty!54838 setRes!54838))

(declare-fun forall!17795 (List!71359 Int) Bool)

(assert (=> start!713422 (forall!17795 lt!2602760 lambda!452807)))

(declare-fun f!725 () Int)

(declare-datatypes ((Unit!164709 0))(
  ( (Unit!164710) )
))
(declare-fun lt!2602758 () Unit!164709)

(declare-fun lemmaFlatMapAssociativeToList1!5 ((Set A!889) (Set A!889) Int List!71359 List!71359) Unit!164709)

(assert (=> start!713422 (= lt!2602758 (lemmaFlatMapAssociativeToList1!5 s1!435 s2!406 f!725 lt!2602760 lt!2602759))))

(assert (=> start!713422 (forall!17795 lt!2602759 lambda!452806)))

(declare-fun lt!2602756 () Unit!164709)

(declare-fun lemmaFlatMapAssociativeToList2!7 ((Set A!889) (Set A!889) Int List!71359 List!71359) Unit!164709)

(assert (=> start!713422 (= lt!2602756 (lemmaFlatMapAssociativeToList2!7 s1!435 s2!406 f!725 lt!2602760 lt!2602759))))

(declare-fun subseq!856 (List!71359 List!71359) Bool)

(assert (=> start!713422 (subseq!856 lt!2602759 lt!2602759)))

(declare-fun lt!2602761 () Unit!164709)

(declare-fun lemmaSubseqRefl!198 (List!71359) Unit!164709)

(assert (=> start!713422 (= lt!2602761 (lemmaSubseqRefl!198 lt!2602759))))

(assert (=> start!713422 (subseq!856 lt!2602760 lt!2602760)))

(declare-fun lt!2602757 () Unit!164709)

(assert (=> start!713422 (= lt!2602757 (lemmaSubseqRefl!198 lt!2602760))))

(declare-fun toList!11646 ((Set B!3591)) List!71359)

(declare-fun flatMap!3064 ((Set A!889) Int) (Set B!3591))

(assert (=> start!713422 (= lt!2602759 (toList!11646 (flatMap!3064 (set.union s1!435 s2!406) f!725)))))

(assert (=> start!713422 (= lt!2602760 (toList!11646 (set.union (flatMap!3064 s1!435 f!725) (flatMap!3064 s2!406 f!725))))))

(assert (=> start!713422 (not (forall!17795 lt!2602760 lambda!452807))))

(declare-fun condSetEmpty!54838 () Bool)

(assert (=> start!713422 (= condSetEmpty!54838 (= s1!435 (as set.empty (Set A!889))))))

(assert (=> start!713422 setRes!54838))

(assert (=> start!713422 tp!2077904))

(declare-fun condSetEmpty!54839 () Bool)

(assert (=> start!713422 (= condSetEmpty!54839 (= s2!406 (as set.empty (Set A!889))))))

(assert (=> start!713422 setRes!54839))

(assert (= (and start!713422 condSetEmpty!54838) setIsEmpty!54838))

(assert (= (and start!713422 (not condSetEmpty!54838)) setNonEmpty!54838))

(assert (= (and start!713422 condSetEmpty!54839) setIsEmpty!54839))

(assert (= (and start!713422 (not condSetEmpty!54839)) setNonEmpty!54839))

(declare-fun m!7982210 () Bool)

(assert (=> start!713422 m!7982210))

(declare-fun m!7982212 () Bool)

(assert (=> start!713422 m!7982212))

(declare-fun m!7982214 () Bool)

(assert (=> start!713422 m!7982214))

(declare-fun m!7982216 () Bool)

(assert (=> start!713422 m!7982216))

(declare-fun m!7982218 () Bool)

(assert (=> start!713422 m!7982218))

(declare-fun m!7982220 () Bool)

(assert (=> start!713422 m!7982220))

(declare-fun m!7982222 () Bool)

(assert (=> start!713422 m!7982222))

(declare-fun m!7982224 () Bool)

(assert (=> start!713422 m!7982224))

(declare-fun m!7982226 () Bool)

(assert (=> start!713422 m!7982226))

(declare-fun m!7982228 () Bool)

(assert (=> start!713422 m!7982228))

(assert (=> start!713422 m!7982226))

(declare-fun m!7982230 () Bool)

(assert (=> start!713422 m!7982230))

(declare-fun m!7982232 () Bool)

(assert (=> start!713422 m!7982232))

(assert (=> start!713422 m!7982224))

(declare-fun m!7982234 () Bool)

(assert (=> start!713422 m!7982234))

(push 1)

(assert (not setNonEmpty!54838))

(assert (not setNonEmpty!54839))

(assert b_and!351451)

(assert tp_is_empty!47681)

(assert (not b_next!134833))

(assert (not start!713422))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351451)

(assert (not b_next!134833))

(check-sat)

(pop 1)


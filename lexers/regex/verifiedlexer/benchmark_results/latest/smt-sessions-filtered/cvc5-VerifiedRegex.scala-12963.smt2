; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713406 () Bool)

(assert start!713406)

(declare-fun b_free!134027 () Bool)

(declare-fun b_next!134817 () Bool)

(assert (=> start!713406 (= b_free!134027 (not b_next!134817))))

(declare-fun tp!2077834 () Bool)

(declare-fun b_and!351435 () Bool)

(assert (=> start!713406 (= tp!2077834 b_and!351435)))

(declare-fun setNonEmpty!54790 () Bool)

(declare-fun setRes!54790 () Bool)

(declare-fun tp!2077833 () Bool)

(declare-fun tp_is_empty!47665 () Bool)

(assert (=> setNonEmpty!54790 (= setRes!54790 (and tp!2077833 tp_is_empty!47665))))

(declare-datatypes ((A!873 0))(
  ( (A!874 (val!29193 Int)) )
))
(declare-fun s1!435 () (Set A!873))

(declare-fun setElem!54791 () A!873)

(declare-fun setRest!54791 () (Set A!873))

(assert (=> setNonEmpty!54790 (= s1!435 (set.union (set.insert setElem!54791 (as set.empty (Set A!873))) setRest!54791))))

(declare-fun setNonEmpty!54791 () Bool)

(declare-fun setRes!54791 () Bool)

(declare-fun tp!2077832 () Bool)

(assert (=> setNonEmpty!54791 (= setRes!54791 (and tp!2077832 tp_is_empty!47665))))

(declare-fun s2!406 () (Set A!873))

(declare-fun setElem!54790 () A!873)

(declare-fun setRest!54790 () (Set A!873))

(assert (=> setNonEmpty!54791 (= s2!406 (set.union (set.insert setElem!54790 (as set.empty (Set A!873))) setRest!54790))))

(declare-fun setIsEmpty!54790 () Bool)

(assert (=> setIsEmpty!54790 setRes!54790))

(declare-datatypes ((B!3575 0))(
  ( (B!3576 (val!29194 Int)) )
))
(declare-datatypes ((List!71351 0))(
  ( (Nil!71227) (Cons!71227 (h!77675 B!3575) (t!385583 List!71351)) )
))
(declare-fun lt!2602623 () List!71351)

(declare-fun subseq!848 (List!71351 List!71351) Bool)

(assert (=> start!713406 (subseq!848 lt!2602623 lt!2602623)))

(declare-datatypes ((Unit!164693 0))(
  ( (Unit!164694) )
))
(declare-fun lt!2602620 () Unit!164693)

(declare-fun lemmaSubseqRefl!190 (List!71351) Unit!164693)

(assert (=> start!713406 (= lt!2602620 (lemmaSubseqRefl!190 lt!2602623))))

(declare-fun lt!2602621 () List!71351)

(assert (=> start!713406 (subseq!848 lt!2602621 lt!2602621)))

(declare-fun lt!2602622 () Unit!164693)

(assert (=> start!713406 (= lt!2602622 (lemmaSubseqRefl!190 lt!2602621))))

(declare-fun f!725 () Int)

(declare-fun toList!11638 ((Set B!3575)) List!71351)

(declare-fun flatMap!3056 ((Set A!873) Int) (Set B!3575))

(assert (=> start!713406 (= lt!2602623 (toList!11638 (flatMap!3056 (set.union s1!435 s2!406) f!725)))))

(assert (=> start!713406 (= lt!2602621 (toList!11638 (set.union (flatMap!3056 s1!435 f!725) (flatMap!3056 s2!406 f!725))))))

(assert (=> start!713406 (not true)))

(declare-fun condSetEmpty!54791 () Bool)

(assert (=> start!713406 (= condSetEmpty!54791 (= s1!435 (as set.empty (Set A!873))))))

(assert (=> start!713406 setRes!54790))

(assert (=> start!713406 tp!2077834))

(declare-fun condSetEmpty!54790 () Bool)

(assert (=> start!713406 (= condSetEmpty!54790 (= s2!406 (as set.empty (Set A!873))))))

(assert (=> start!713406 setRes!54791))

(declare-fun setIsEmpty!54791 () Bool)

(assert (=> setIsEmpty!54791 setRes!54791))

(assert (= (and start!713406 condSetEmpty!54791) setIsEmpty!54790))

(assert (= (and start!713406 (not condSetEmpty!54791)) setNonEmpty!54790))

(assert (= (and start!713406 condSetEmpty!54790) setIsEmpty!54791))

(assert (= (and start!713406 (not condSetEmpty!54790)) setNonEmpty!54791))

(declare-fun m!7982022 () Bool)

(assert (=> start!713406 m!7982022))

(declare-fun m!7982024 () Bool)

(assert (=> start!713406 m!7982024))

(declare-fun m!7982026 () Bool)

(assert (=> start!713406 m!7982026))

(declare-fun m!7982028 () Bool)

(assert (=> start!713406 m!7982028))

(declare-fun m!7982030 () Bool)

(assert (=> start!713406 m!7982030))

(declare-fun m!7982032 () Bool)

(assert (=> start!713406 m!7982032))

(declare-fun m!7982034 () Bool)

(assert (=> start!713406 m!7982034))

(assert (=> start!713406 m!7982028))

(declare-fun m!7982036 () Bool)

(assert (=> start!713406 m!7982036))

(declare-fun m!7982038 () Bool)

(assert (=> start!713406 m!7982038))

(push 1)

(assert tp_is_empty!47665)

(assert b_and!351435)

(assert (not setNonEmpty!54790))

(assert (not start!713406))

(assert (not setNonEmpty!54791))

(assert (not b_next!134817))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351435)

(assert (not b_next!134817))

(check-sat)

(pop 1)


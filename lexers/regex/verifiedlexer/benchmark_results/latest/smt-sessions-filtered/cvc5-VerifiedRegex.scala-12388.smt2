; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693350 () Bool)

(assert start!693350)

(declare-fun b_free!133655 () Bool)

(declare-fun b_next!134445 () Bool)

(assert (=> start!693350 (= b_free!133655 (not b_next!134445))))

(declare-fun tp!1960788 () Bool)

(declare-fun b_and!350751 () Bool)

(assert (=> start!693350 (= tp!1960788 b_and!350751)))

(declare-fun setNonEmpty!50858 () Bool)

(declare-fun setRes!50858 () Bool)

(declare-fun tp!1960787 () Bool)

(declare-fun tp_is_empty!45301 () Bool)

(assert (=> setNonEmpty!50858 (= setRes!50858 (and tp!1960787 tp_is_empty!45301))))

(declare-datatypes ((A!561 0))(
  ( (A!562 (val!27887 Int)) )
))
(declare-fun s1!402 () (Set A!561))

(declare-fun setElem!50858 () A!561)

(declare-fun setRest!50858 () (Set A!561))

(assert (=> setNonEmpty!50858 (= s1!402 (set.union (set.insert setElem!50858 (as set.empty (Set A!561))) setRest!50858))))

(declare-fun setIsEmpty!50858 () Bool)

(assert (=> setIsEmpty!50858 setRes!50858))

(declare-fun setNonEmpty!50859 () Bool)

(declare-fun setRes!50859 () Bool)

(declare-fun tp!1960789 () Bool)

(assert (=> setNonEmpty!50859 (= setRes!50859 (and tp!1960789 tp_is_empty!45301))))

(declare-fun s2!373 () (Set A!561))

(declare-fun setElem!50859 () A!561)

(declare-fun setRest!50859 () (Set A!561))

(assert (=> setNonEmpty!50859 (= s2!373 (set.union (set.insert setElem!50859 (as set.empty (Set A!561))) setRest!50859))))

(declare-fun setIsEmpty!50859 () Bool)

(assert (=> setIsEmpty!50859 setRes!50859))

(declare-datatypes ((B!3219 0))(
  ( (B!3220 (val!27888 Int)) )
))
(declare-datatypes ((List!68979 0))(
  ( (Nil!68855) (Cons!68855 (h!75303 B!3219) (t!382886 List!68979)) )
))
(declare-fun lt!2561553 () List!68979)

(declare-fun subseq!718 (List!68979 List!68979) Bool)

(assert (=> start!693350 (subseq!718 lt!2561553 lt!2561553)))

(declare-datatypes ((Unit!162659 0))(
  ( (Unit!162660) )
))
(declare-fun lt!2561556 () Unit!162659)

(declare-fun lemmaSubseqRefl!164 (List!68979) Unit!162659)

(assert (=> start!693350 (= lt!2561556 (lemmaSubseqRefl!164 lt!2561553))))

(declare-fun lt!2561555 () List!68979)

(assert (=> start!693350 (subseq!718 lt!2561555 lt!2561555)))

(declare-fun lt!2561554 () Unit!162659)

(assert (=> start!693350 (= lt!2561554 (lemmaSubseqRefl!164 lt!2561555))))

(declare-fun f!483 () Int)

(declare-fun toList!11082 ((Set B!3219)) List!68979)

(declare-fun map!16367 ((Set A!561) Int) (Set B!3219))

(assert (=> start!693350 (= lt!2561553 (toList!11082 (map!16367 (set.union s1!402 s2!373) f!483)))))

(assert (=> start!693350 (= lt!2561555 (toList!11082 (set.union (map!16367 s1!402 f!483) (map!16367 s2!373 f!483))))))

(assert (=> start!693350 (not true)))

(declare-fun condSetEmpty!50858 () Bool)

(assert (=> start!693350 (= condSetEmpty!50858 (= s1!402 (as set.empty (Set A!561))))))

(assert (=> start!693350 setRes!50858))

(assert (=> start!693350 tp!1960788))

(declare-fun condSetEmpty!50859 () Bool)

(assert (=> start!693350 (= condSetEmpty!50859 (= s2!373 (as set.empty (Set A!561))))))

(assert (=> start!693350 setRes!50859))

(assert (= (and start!693350 condSetEmpty!50858) setIsEmpty!50858))

(assert (= (and start!693350 (not condSetEmpty!50858)) setNonEmpty!50858))

(assert (= (and start!693350 condSetEmpty!50859) setIsEmpty!50859))

(assert (= (and start!693350 (not condSetEmpty!50859)) setNonEmpty!50859))

(declare-fun m!7838368 () Bool)

(assert (=> start!693350 m!7838368))

(declare-fun m!7838370 () Bool)

(assert (=> start!693350 m!7838370))

(declare-fun m!7838372 () Bool)

(assert (=> start!693350 m!7838372))

(declare-fun m!7838374 () Bool)

(assert (=> start!693350 m!7838374))

(declare-fun m!7838376 () Bool)

(assert (=> start!693350 m!7838376))

(declare-fun m!7838378 () Bool)

(assert (=> start!693350 m!7838378))

(declare-fun m!7838380 () Bool)

(assert (=> start!693350 m!7838380))

(declare-fun m!7838382 () Bool)

(assert (=> start!693350 m!7838382))

(assert (=> start!693350 m!7838368))

(declare-fun m!7838384 () Bool)

(assert (=> start!693350 m!7838384))

(push 1)

(assert (not start!693350))

(assert (not setNonEmpty!50859))

(assert b_and!350751)

(assert tp_is_empty!45301)

(assert (not b_next!134445))

(assert (not setNonEmpty!50858))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350751)

(assert (not b_next!134445))

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!521866 () Bool)

(assert start!521866)

(declare-fun b!4952280 () Bool)

(declare-fun e!3094127 () Bool)

(declare-fun e!3094130 () Bool)

(assert (=> b!4952280 (= e!3094127 (not e!3094130))))

(declare-fun res!2112766 () Bool)

(assert (=> b!4952280 (=> res!2112766 e!3094130)))

(declare-datatypes ((B!2999 0))(
  ( (B!3000 (val!22969 Int)) )
))
(declare-datatypes ((List!57157 0))(
  ( (Nil!57033) (Cons!57033 (h!63481 B!2999) (t!367723 List!57157)) )
))
(declare-fun l21!19 () List!57157)

(declare-fun lt!2044059 () List!57157)

(declare-fun isPrefix!5114 (List!57157 List!57157) Bool)

(assert (=> b!4952280 (= res!2112766 (not (isPrefix!5114 l21!19 lt!2044059)))))

(declare-fun l11!19 () List!57157)

(assert (=> b!4952280 (= l11!19 l21!19)))

(declare-datatypes ((Unit!147929 0))(
  ( (Unit!147930) )
))
(declare-fun lt!2044061 () Unit!147929)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1200 (List!57157 List!57157 List!57157) Unit!147929)

(assert (=> b!4952280 (= lt!2044061 (lemmaIsPrefixSameLengthThenSameList!1200 l11!19 l21!19 lt!2044059))))

(declare-fun lt!2044060 () List!57157)

(assert (=> b!4952280 (isPrefix!5114 l21!19 lt!2044060)))

(declare-fun lt!2044058 () Unit!147929)

(declare-fun l22!19 () List!57157)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3338 (List!57157 List!57157) Unit!147929)

(assert (=> b!4952280 (= lt!2044058 (lemmaConcatTwoListThenFirstIsPrefix!3338 l21!19 l22!19))))

(assert (=> b!4952280 (isPrefix!5114 l11!19 lt!2044059)))

(declare-fun lt!2044062 () Unit!147929)

(declare-fun l12!19 () List!57157)

(assert (=> b!4952280 (= lt!2044062 (lemmaConcatTwoListThenFirstIsPrefix!3338 l11!19 l12!19))))

(declare-fun res!2112767 () Bool)

(assert (=> start!521866 (=> (not res!2112767) (not e!3094127))))

(assert (=> start!521866 (= res!2112767 (= lt!2044059 lt!2044060))))

(declare-fun ++!12501 (List!57157 List!57157) List!57157)

(assert (=> start!521866 (= lt!2044060 (++!12501 l21!19 l22!19))))

(assert (=> start!521866 (= lt!2044059 (++!12501 l11!19 l12!19))))

(assert (=> start!521866 e!3094127))

(declare-fun e!3094129 () Bool)

(assert (=> start!521866 e!3094129))

(declare-fun e!3094131 () Bool)

(assert (=> start!521866 e!3094131))

(declare-fun e!3094132 () Bool)

(assert (=> start!521866 e!3094132))

(declare-fun e!3094128 () Bool)

(assert (=> start!521866 e!3094128))

(declare-fun b!4952281 () Bool)

(declare-fun tp_is_empty!36217 () Bool)

(declare-fun tp!1388367 () Bool)

(assert (=> b!4952281 (= e!3094131 (and tp_is_empty!36217 tp!1388367))))

(declare-fun b!4952282 () Bool)

(declare-fun tp!1388365 () Bool)

(assert (=> b!4952282 (= e!3094128 (and tp_is_empty!36217 tp!1388365))))

(declare-fun b!4952283 () Bool)

(declare-fun tp!1388366 () Bool)

(assert (=> b!4952283 (= e!3094129 (and tp_is_empty!36217 tp!1388366))))

(declare-fun b!4952284 () Bool)

(assert (=> b!4952284 (= e!3094130 (= lt!2044060 lt!2044059))))

(declare-fun b!4952285 () Bool)

(declare-fun res!2112765 () Bool)

(assert (=> b!4952285 (=> (not res!2112765) (not e!3094127))))

(declare-fun size!37861 (List!57157) Int)

(assert (=> b!4952285 (= res!2112765 (= (size!37861 l11!19) (size!37861 l21!19)))))

(declare-fun b!4952286 () Bool)

(declare-fun tp!1388364 () Bool)

(assert (=> b!4952286 (= e!3094132 (and tp_is_empty!36217 tp!1388364))))

(assert (= (and start!521866 res!2112767) b!4952285))

(assert (= (and b!4952285 res!2112765) b!4952280))

(assert (= (and b!4952280 (not res!2112766)) b!4952284))

(assert (= (and start!521866 (is-Cons!57033 l12!19)) b!4952283))

(assert (= (and start!521866 (is-Cons!57033 l21!19)) b!4952281))

(assert (= (and start!521866 (is-Cons!57033 l11!19)) b!4952286))

(assert (= (and start!521866 (is-Cons!57033 l22!19)) b!4952282))

(declare-fun m!5977324 () Bool)

(assert (=> b!4952280 m!5977324))

(declare-fun m!5977326 () Bool)

(assert (=> b!4952280 m!5977326))

(declare-fun m!5977328 () Bool)

(assert (=> b!4952280 m!5977328))

(declare-fun m!5977330 () Bool)

(assert (=> b!4952280 m!5977330))

(declare-fun m!5977332 () Bool)

(assert (=> b!4952280 m!5977332))

(declare-fun m!5977334 () Bool)

(assert (=> b!4952280 m!5977334))

(declare-fun m!5977336 () Bool)

(assert (=> start!521866 m!5977336))

(declare-fun m!5977338 () Bool)

(assert (=> start!521866 m!5977338))

(declare-fun m!5977340 () Bool)

(assert (=> b!4952285 m!5977340))

(declare-fun m!5977342 () Bool)

(assert (=> b!4952285 m!5977342))

(push 1)

(assert (not b!4952286))

(assert (not b!4952285))

(assert tp_is_empty!36217)

(assert (not b!4952283))

(assert (not b!4952282))

(assert (not b!4952281))

(assert (not start!521866))

(assert (not b!4952280))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


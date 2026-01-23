; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!521850 () Bool)

(assert start!521850)

(declare-fun b!4952134 () Bool)

(declare-fun res!2112716 () Bool)

(declare-fun e!3094005 () Bool)

(assert (=> b!4952134 (=> (not res!2112716) (not e!3094005))))

(declare-datatypes ((B!2983 0))(
  ( (B!2984 (val!22961 Int)) )
))
(declare-datatypes ((List!57149 0))(
  ( (Nil!57025) (Cons!57025 (h!63473 B!2983) (t!367715 List!57149)) )
))
(declare-fun l11!19 () List!57149)

(declare-fun l21!19 () List!57149)

(declare-fun size!37853 (List!57149) Int)

(assert (=> b!4952134 (= res!2112716 (= (size!37853 l11!19) (size!37853 l21!19)))))

(declare-fun b!4952135 () Bool)

(declare-fun e!3094009 () Bool)

(declare-fun tp_is_empty!36201 () Bool)

(declare-fun tp!1388268 () Bool)

(assert (=> b!4952135 (= e!3094009 (and tp_is_empty!36201 tp!1388268))))

(declare-fun b!4952136 () Bool)

(declare-fun e!3094007 () Bool)

(declare-fun tp!1388271 () Bool)

(assert (=> b!4952136 (= e!3094007 (and tp_is_empty!36201 tp!1388271))))

(declare-fun b!4952137 () Bool)

(assert (=> b!4952137 (= e!3094005 (not true))))

(declare-fun lt!2043950 () List!57149)

(declare-fun isPrefix!5106 (List!57149 List!57149) Bool)

(assert (=> b!4952137 (isPrefix!5106 l21!19 lt!2043950)))

(declare-datatypes ((Unit!147913 0))(
  ( (Unit!147914) )
))
(declare-fun lt!2043948 () Unit!147913)

(declare-fun l22!19 () List!57149)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3330 (List!57149 List!57149) Unit!147913)

(assert (=> b!4952137 (= lt!2043948 (lemmaConcatTwoListThenFirstIsPrefix!3330 l21!19 l22!19))))

(declare-fun lt!2043951 () List!57149)

(assert (=> b!4952137 (isPrefix!5106 l11!19 lt!2043951)))

(declare-fun lt!2043949 () Unit!147913)

(declare-fun l12!19 () List!57149)

(assert (=> b!4952137 (= lt!2043949 (lemmaConcatTwoListThenFirstIsPrefix!3330 l11!19 l12!19))))

(declare-fun b!4952138 () Bool)

(declare-fun e!3094008 () Bool)

(declare-fun tp!1388269 () Bool)

(assert (=> b!4952138 (= e!3094008 (and tp_is_empty!36201 tp!1388269))))

(declare-fun res!2112715 () Bool)

(assert (=> start!521850 (=> (not res!2112715) (not e!3094005))))

(assert (=> start!521850 (= res!2112715 (= lt!2043951 lt!2043950))))

(declare-fun ++!12493 (List!57149 List!57149) List!57149)

(assert (=> start!521850 (= lt!2043950 (++!12493 l21!19 l22!19))))

(assert (=> start!521850 (= lt!2043951 (++!12493 l11!19 l12!19))))

(assert (=> start!521850 e!3094005))

(assert (=> start!521850 e!3094007))

(declare-fun e!3094006 () Bool)

(assert (=> start!521850 e!3094006))

(assert (=> start!521850 e!3094009))

(assert (=> start!521850 e!3094008))

(declare-fun b!4952139 () Bool)

(declare-fun tp!1388270 () Bool)

(assert (=> b!4952139 (= e!3094006 (and tp_is_empty!36201 tp!1388270))))

(assert (= (and start!521850 res!2112715) b!4952134))

(assert (= (and b!4952134 res!2112716) b!4952137))

(assert (= (and start!521850 (is-Cons!57025 l12!19)) b!4952136))

(assert (= (and start!521850 (is-Cons!57025 l21!19)) b!4952139))

(assert (= (and start!521850 (is-Cons!57025 l11!19)) b!4952135))

(assert (= (and start!521850 (is-Cons!57025 l22!19)) b!4952138))

(declare-fun m!5977180 () Bool)

(assert (=> b!4952134 m!5977180))

(declare-fun m!5977182 () Bool)

(assert (=> b!4952134 m!5977182))

(declare-fun m!5977184 () Bool)

(assert (=> b!4952137 m!5977184))

(declare-fun m!5977186 () Bool)

(assert (=> b!4952137 m!5977186))

(declare-fun m!5977188 () Bool)

(assert (=> b!4952137 m!5977188))

(declare-fun m!5977190 () Bool)

(assert (=> b!4952137 m!5977190))

(declare-fun m!5977192 () Bool)

(assert (=> start!521850 m!5977192))

(declare-fun m!5977194 () Bool)

(assert (=> start!521850 m!5977194))

(push 1)

(assert (not b!4952134))

(assert (not start!521850))

(assert (not b!4952137))

(assert (not b!4952135))

(assert (not b!4952138))

(assert (not b!4952139))

(assert tp_is_empty!36201)

(assert (not b!4952136))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


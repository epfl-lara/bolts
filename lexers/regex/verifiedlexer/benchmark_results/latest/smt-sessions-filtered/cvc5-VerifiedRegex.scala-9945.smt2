; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!521858 () Bool)

(assert start!521858)

(declare-fun res!2112740 () Bool)

(declare-fun e!3094065 () Bool)

(assert (=> start!521858 (=> (not res!2112740) (not e!3094065))))

(declare-datatypes ((B!2991 0))(
  ( (B!2992 (val!22965 Int)) )
))
(declare-datatypes ((List!57153 0))(
  ( (Nil!57029) (Cons!57029 (h!63477 B!2991) (t!367719 List!57153)) )
))
(declare-fun lt!2043998 () List!57153)

(declare-fun lt!2043999 () List!57153)

(assert (=> start!521858 (= res!2112740 (= lt!2043998 lt!2043999))))

(declare-fun l21!19 () List!57153)

(declare-fun l22!19 () List!57153)

(declare-fun ++!12497 (List!57153 List!57153) List!57153)

(assert (=> start!521858 (= lt!2043999 (++!12497 l21!19 l22!19))))

(declare-fun l11!19 () List!57153)

(declare-fun l12!19 () List!57153)

(assert (=> start!521858 (= lt!2043998 (++!12497 l11!19 l12!19))))

(assert (=> start!521858 e!3094065))

(declare-fun e!3094066 () Bool)

(assert (=> start!521858 e!3094066))

(declare-fun e!3094068 () Bool)

(assert (=> start!521858 e!3094068))

(declare-fun e!3094067 () Bool)

(assert (=> start!521858 e!3094067))

(declare-fun e!3094069 () Bool)

(assert (=> start!521858 e!3094069))

(declare-fun b!4952206 () Bool)

(declare-fun tp_is_empty!36209 () Bool)

(declare-fun tp!1388319 () Bool)

(assert (=> b!4952206 (= e!3094068 (and tp_is_empty!36209 tp!1388319))))

(declare-fun b!4952207 () Bool)

(declare-fun tp!1388318 () Bool)

(assert (=> b!4952207 (= e!3094067 (and tp_is_empty!36209 tp!1388318))))

(declare-fun b!4952208 () Bool)

(declare-fun tp!1388316 () Bool)

(assert (=> b!4952208 (= e!3094069 (and tp_is_empty!36209 tp!1388316))))

(declare-fun b!4952209 () Bool)

(assert (=> b!4952209 (= e!3094065 (not true))))

(assert (=> b!4952209 (= l11!19 l21!19)))

(declare-datatypes ((Unit!147921 0))(
  ( (Unit!147922) )
))
(declare-fun lt!2044000 () Unit!147921)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1196 (List!57153 List!57153 List!57153) Unit!147921)

(assert (=> b!4952209 (= lt!2044000 (lemmaIsPrefixSameLengthThenSameList!1196 l11!19 l21!19 lt!2043998))))

(declare-fun isPrefix!5110 (List!57153 List!57153) Bool)

(assert (=> b!4952209 (isPrefix!5110 l21!19 lt!2043999)))

(declare-fun lt!2044002 () Unit!147921)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3334 (List!57153 List!57153) Unit!147921)

(assert (=> b!4952209 (= lt!2044002 (lemmaConcatTwoListThenFirstIsPrefix!3334 l21!19 l22!19))))

(assert (=> b!4952209 (isPrefix!5110 l11!19 lt!2043998)))

(declare-fun lt!2044001 () Unit!147921)

(assert (=> b!4952209 (= lt!2044001 (lemmaConcatTwoListThenFirstIsPrefix!3334 l11!19 l12!19))))

(declare-fun b!4952210 () Bool)

(declare-fun res!2112739 () Bool)

(assert (=> b!4952210 (=> (not res!2112739) (not e!3094065))))

(declare-fun size!37857 (List!57153) Int)

(assert (=> b!4952210 (= res!2112739 (= (size!37857 l11!19) (size!37857 l21!19)))))

(declare-fun b!4952211 () Bool)

(declare-fun tp!1388317 () Bool)

(assert (=> b!4952211 (= e!3094066 (and tp_is_empty!36209 tp!1388317))))

(assert (= (and start!521858 res!2112740) b!4952210))

(assert (= (and b!4952210 res!2112739) b!4952209))

(assert (= (and start!521858 (is-Cons!57029 l12!19)) b!4952211))

(assert (= (and start!521858 (is-Cons!57029 l21!19)) b!4952206))

(assert (= (and start!521858 (is-Cons!57029 l11!19)) b!4952207))

(assert (= (and start!521858 (is-Cons!57029 l22!19)) b!4952208))

(declare-fun m!5977248 () Bool)

(assert (=> start!521858 m!5977248))

(declare-fun m!5977250 () Bool)

(assert (=> start!521858 m!5977250))

(declare-fun m!5977252 () Bool)

(assert (=> b!4952209 m!5977252))

(declare-fun m!5977254 () Bool)

(assert (=> b!4952209 m!5977254))

(declare-fun m!5977256 () Bool)

(assert (=> b!4952209 m!5977256))

(declare-fun m!5977258 () Bool)

(assert (=> b!4952209 m!5977258))

(declare-fun m!5977260 () Bool)

(assert (=> b!4952209 m!5977260))

(declare-fun m!5977262 () Bool)

(assert (=> b!4952210 m!5977262))

(declare-fun m!5977264 () Bool)

(assert (=> b!4952210 m!5977264))

(push 1)

(assert (not b!4952211))

(assert (not b!4952209))

(assert (not b!4952208))

(assert (not b!4952206))

(assert (not start!521858))

(assert tp_is_empty!36209)

(assert (not b!4952210))

(assert (not b!4952207))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


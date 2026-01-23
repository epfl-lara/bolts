; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!521864 () Bool)

(assert start!521864)

(declare-fun b!4952260 () Bool)

(declare-fun e!3094112 () Bool)

(declare-fun tp_is_empty!36215 () Bool)

(declare-fun tp!1388352 () Bool)

(assert (=> b!4952260 (= e!3094112 (and tp_is_empty!36215 tp!1388352))))

(declare-fun b!4952261 () Bool)

(declare-fun res!2112758 () Bool)

(declare-fun e!3094111 () Bool)

(assert (=> b!4952261 (=> (not res!2112758) (not e!3094111))))

(declare-datatypes ((B!2997 0))(
  ( (B!2998 (val!22968 Int)) )
))
(declare-datatypes ((List!57156 0))(
  ( (Nil!57032) (Cons!57032 (h!63480 B!2997) (t!367722 List!57156)) )
))
(declare-fun l11!19 () List!57156)

(declare-fun l21!19 () List!57156)

(declare-fun size!37860 (List!57156) Int)

(assert (=> b!4952261 (= res!2112758 (= (size!37860 l11!19) (size!37860 l21!19)))))

(declare-fun b!4952262 () Bool)

(declare-fun e!3094110 () Bool)

(declare-fun tp!1388353 () Bool)

(assert (=> b!4952262 (= e!3094110 (and tp_is_empty!36215 tp!1388353))))

(declare-fun b!4952264 () Bool)

(declare-fun lt!2044046 () List!57156)

(declare-fun isPrefix!5113 (List!57156 List!57156) Bool)

(assert (=> b!4952264 (= e!3094111 (not (isPrefix!5113 l21!19 lt!2044046)))))

(assert (=> b!4952264 (= l11!19 l21!19)))

(declare-datatypes ((Unit!147927 0))(
  ( (Unit!147928) )
))
(declare-fun lt!2044047 () Unit!147927)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1199 (List!57156 List!57156 List!57156) Unit!147927)

(assert (=> b!4952264 (= lt!2044047 (lemmaIsPrefixSameLengthThenSameList!1199 l11!19 l21!19 lt!2044046))))

(declare-fun lt!2044044 () List!57156)

(assert (=> b!4952264 (isPrefix!5113 l21!19 lt!2044044)))

(declare-fun lt!2044043 () Unit!147927)

(declare-fun l22!19 () List!57156)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3337 (List!57156 List!57156) Unit!147927)

(assert (=> b!4952264 (= lt!2044043 (lemmaConcatTwoListThenFirstIsPrefix!3337 l21!19 l22!19))))

(assert (=> b!4952264 (isPrefix!5113 l11!19 lt!2044046)))

(declare-fun lt!2044045 () Unit!147927)

(declare-fun l12!19 () List!57156)

(assert (=> b!4952264 (= lt!2044045 (lemmaConcatTwoListThenFirstIsPrefix!3337 l11!19 l12!19))))

(declare-fun b!4952265 () Bool)

(declare-fun e!3094113 () Bool)

(declare-fun tp!1388355 () Bool)

(assert (=> b!4952265 (= e!3094113 (and tp_is_empty!36215 tp!1388355))))

(declare-fun res!2112757 () Bool)

(assert (=> start!521864 (=> (not res!2112757) (not e!3094111))))

(assert (=> start!521864 (= res!2112757 (= lt!2044046 lt!2044044))))

(declare-fun ++!12500 (List!57156 List!57156) List!57156)

(assert (=> start!521864 (= lt!2044044 (++!12500 l21!19 l22!19))))

(assert (=> start!521864 (= lt!2044046 (++!12500 l11!19 l12!19))))

(assert (=> start!521864 e!3094111))

(assert (=> start!521864 e!3094113))

(declare-fun e!3094114 () Bool)

(assert (=> start!521864 e!3094114))

(assert (=> start!521864 e!3094112))

(assert (=> start!521864 e!3094110))

(declare-fun b!4952263 () Bool)

(declare-fun tp!1388354 () Bool)

(assert (=> b!4952263 (= e!3094114 (and tp_is_empty!36215 tp!1388354))))

(assert (= (and start!521864 res!2112757) b!4952261))

(assert (= (and b!4952261 res!2112758) b!4952264))

(get-info :version)

(assert (= (and start!521864 ((_ is Cons!57032) l12!19)) b!4952265))

(assert (= (and start!521864 ((_ is Cons!57032) l21!19)) b!4952263))

(assert (= (and start!521864 ((_ is Cons!57032) l11!19)) b!4952260))

(assert (= (and start!521864 ((_ is Cons!57032) l22!19)) b!4952262))

(declare-fun m!5977304 () Bool)

(assert (=> b!4952261 m!5977304))

(declare-fun m!5977306 () Bool)

(assert (=> b!4952261 m!5977306))

(declare-fun m!5977308 () Bool)

(assert (=> b!4952264 m!5977308))

(declare-fun m!5977310 () Bool)

(assert (=> b!4952264 m!5977310))

(declare-fun m!5977312 () Bool)

(assert (=> b!4952264 m!5977312))

(declare-fun m!5977314 () Bool)

(assert (=> b!4952264 m!5977314))

(declare-fun m!5977316 () Bool)

(assert (=> b!4952264 m!5977316))

(declare-fun m!5977318 () Bool)

(assert (=> b!4952264 m!5977318))

(declare-fun m!5977320 () Bool)

(assert (=> start!521864 m!5977320))

(declare-fun m!5977322 () Bool)

(assert (=> start!521864 m!5977322))

(check-sat tp_is_empty!36215 (not start!521864) (not b!4952261) (not b!4952264) (not b!4952265) (not b!4952260) (not b!4952262) (not b!4952263))
(check-sat)

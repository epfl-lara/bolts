; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!521872 () Bool)

(assert start!521872)

(declare-fun b!4952348 () Bool)

(declare-fun e!3094182 () Bool)

(declare-fun e!3094185 () Bool)

(assert (=> b!4952348 (= e!3094182 (not e!3094185))))

(declare-fun res!2112799 () Bool)

(assert (=> b!4952348 (=> res!2112799 e!3094185)))

(declare-datatypes ((B!3005 0))(
  ( (B!3006 (val!22972 Int)) )
))
(declare-datatypes ((List!57160 0))(
  ( (Nil!57036) (Cons!57036 (h!63484 B!3005) (t!367726 List!57160)) )
))
(declare-fun l21!19 () List!57160)

(declare-fun lt!2044108 () List!57160)

(declare-fun isPrefix!5117 (List!57160 List!57160) Bool)

(assert (=> b!4952348 (= res!2112799 (not (isPrefix!5117 l21!19 lt!2044108)))))

(declare-fun l11!19 () List!57160)

(assert (=> b!4952348 (= l11!19 l21!19)))

(declare-datatypes ((Unit!147935 0))(
  ( (Unit!147936) )
))
(declare-fun lt!2044112 () Unit!147935)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1203 (List!57160 List!57160 List!57160) Unit!147935)

(assert (=> b!4952348 (= lt!2044112 (lemmaIsPrefixSameLengthThenSameList!1203 l11!19 l21!19 lt!2044108))))

(declare-fun lt!2044113 () List!57160)

(assert (=> b!4952348 (isPrefix!5117 l21!19 lt!2044113)))

(declare-fun lt!2044110 () Unit!147935)

(declare-fun l22!19 () List!57160)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3341 (List!57160 List!57160) Unit!147935)

(assert (=> b!4952348 (= lt!2044110 (lemmaConcatTwoListThenFirstIsPrefix!3341 l21!19 l22!19))))

(assert (=> b!4952348 (isPrefix!5117 l11!19 lt!2044108)))

(declare-fun lt!2044111 () Unit!147935)

(declare-fun l12!19 () List!57160)

(assert (=> b!4952348 (= lt!2044111 (lemmaConcatTwoListThenFirstIsPrefix!3341 l11!19 l12!19))))

(declare-fun res!2112800 () Bool)

(assert (=> start!521872 (=> (not res!2112800) (not e!3094182))))

(assert (=> start!521872 (= res!2112800 (= lt!2044108 lt!2044113))))

(declare-fun ++!12504 (List!57160 List!57160) List!57160)

(assert (=> start!521872 (= lt!2044113 (++!12504 l21!19 l22!19))))

(assert (=> start!521872 (= lt!2044108 (++!12504 l11!19 l12!19))))

(assert (=> start!521872 e!3094182))

(declare-fun e!3094183 () Bool)

(assert (=> start!521872 e!3094183))

(declare-fun e!3094181 () Bool)

(assert (=> start!521872 e!3094181))

(declare-fun e!3094184 () Bool)

(assert (=> start!521872 e!3094184))

(declare-fun e!3094186 () Bool)

(assert (=> start!521872 e!3094186))

(declare-fun b!4952349 () Bool)

(declare-fun tp_is_empty!36223 () Bool)

(declare-fun tp!1388400 () Bool)

(assert (=> b!4952349 (= e!3094181 (and tp_is_empty!36223 tp!1388400))))

(declare-fun b!4952350 () Bool)

(declare-fun tp!1388402 () Bool)

(assert (=> b!4952350 (= e!3094184 (and tp_is_empty!36223 tp!1388402))))

(declare-fun b!4952351 () Bool)

(declare-fun res!2112798 () Bool)

(assert (=> b!4952351 (=> res!2112798 e!3094185)))

(assert (=> b!4952351 (= res!2112798 (not (= lt!2044113 lt!2044108)))))

(declare-fun b!4952352 () Bool)

(assert (=> b!4952352 (= e!3094185 true)))

(assert (=> b!4952352 (= l12!19 l22!19)))

(declare-fun lt!2044109 () Unit!147935)

(declare-fun lemmaSamePrefixThenSameSuffix!2495 (List!57160 List!57160 List!57160 List!57160 List!57160) Unit!147935)

(assert (=> b!4952352 (= lt!2044109 (lemmaSamePrefixThenSameSuffix!2495 l11!19 l12!19 l21!19 l22!19 lt!2044108))))

(declare-fun b!4952353 () Bool)

(declare-fun tp!1388403 () Bool)

(assert (=> b!4952353 (= e!3094183 (and tp_is_empty!36223 tp!1388403))))

(declare-fun b!4952354 () Bool)

(declare-fun res!2112797 () Bool)

(assert (=> b!4952354 (=> (not res!2112797) (not e!3094182))))

(declare-fun size!37864 (List!57160) Int)

(assert (=> b!4952354 (= res!2112797 (= (size!37864 l11!19) (size!37864 l21!19)))))

(declare-fun b!4952355 () Bool)

(declare-fun tp!1388401 () Bool)

(assert (=> b!4952355 (= e!3094186 (and tp_is_empty!36223 tp!1388401))))

(assert (= (and start!521872 res!2112800) b!4952354))

(assert (= (and b!4952354 res!2112797) b!4952348))

(assert (= (and b!4952348 (not res!2112799)) b!4952351))

(assert (= (and b!4952351 (not res!2112798)) b!4952352))

(get-info :version)

(assert (= (and start!521872 ((_ is Cons!57036) l12!19)) b!4952353))

(assert (= (and start!521872 ((_ is Cons!57036) l21!19)) b!4952349))

(assert (= (and start!521872 ((_ is Cons!57036) l11!19)) b!4952350))

(assert (= (and start!521872 ((_ is Cons!57036) l22!19)) b!4952355))

(declare-fun m!5977386 () Bool)

(assert (=> b!4952348 m!5977386))

(declare-fun m!5977388 () Bool)

(assert (=> b!4952348 m!5977388))

(declare-fun m!5977390 () Bool)

(assert (=> b!4952348 m!5977390))

(declare-fun m!5977392 () Bool)

(assert (=> b!4952348 m!5977392))

(declare-fun m!5977394 () Bool)

(assert (=> b!4952348 m!5977394))

(declare-fun m!5977396 () Bool)

(assert (=> b!4952348 m!5977396))

(declare-fun m!5977398 () Bool)

(assert (=> start!521872 m!5977398))

(declare-fun m!5977400 () Bool)

(assert (=> start!521872 m!5977400))

(declare-fun m!5977402 () Bool)

(assert (=> b!4952352 m!5977402))

(declare-fun m!5977404 () Bool)

(assert (=> b!4952354 m!5977404))

(declare-fun m!5977406 () Bool)

(assert (=> b!4952354 m!5977406))

(check-sat (not b!4952348) (not b!4952354) (not b!4952352) (not b!4952350) tp_is_empty!36223 (not b!4952355) (not b!4952353) (not b!4952349) (not start!521872))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!521828 () Bool)

(assert start!521828)

(declare-fun b!4951968 () Bool)

(declare-fun e!3093889 () Bool)

(declare-fun tp_is_empty!36191 () Bool)

(declare-fun tp!1388197 () Bool)

(assert (=> b!4951968 (= e!3093889 (and tp_is_empty!36191 tp!1388197))))

(declare-fun b!4951969 () Bool)

(declare-fun e!3093891 () Bool)

(declare-fun tp!1388196 () Bool)

(assert (=> b!4951969 (= e!3093891 (and tp_is_empty!36191 tp!1388196))))

(declare-fun b!4951970 () Bool)

(declare-fun res!2112669 () Bool)

(declare-fun e!3093892 () Bool)

(assert (=> b!4951970 (=> (not res!2112669) (not e!3093892))))

(declare-datatypes ((B!2973 0))(
  ( (B!2974 (val!22956 Int)) )
))
(declare-datatypes ((List!57144 0))(
  ( (Nil!57020) (Cons!57020 (h!63468 B!2973) (t!367710 List!57144)) )
))
(declare-fun l11!19 () List!57144)

(declare-fun l21!19 () List!57144)

(declare-fun size!37848 (List!57144) Int)

(assert (=> b!4951970 (= res!2112669 (= (size!37848 l11!19) (size!37848 l21!19)))))

(declare-fun b!4951971 () Bool)

(declare-fun e!3093890 () Bool)

(declare-fun tp!1388198 () Bool)

(assert (=> b!4951971 (= e!3093890 (and tp_is_empty!36191 tp!1388198))))

(declare-fun b!4951972 () Bool)

(assert (=> b!4951972 (= e!3093892 (not true))))

(declare-fun lt!2043880 () Bool)

(declare-fun lt!2043879 () List!57144)

(declare-fun isPrefix!5103 (List!57144 List!57144) Bool)

(assert (=> b!4951972 (= lt!2043880 (isPrefix!5103 l21!19 lt!2043879))))

(declare-fun lt!2043877 () List!57144)

(assert (=> b!4951972 (isPrefix!5103 l21!19 lt!2043877)))

(declare-datatypes ((Unit!147907 0))(
  ( (Unit!147908) )
))
(declare-fun lt!2043881 () Unit!147907)

(declare-fun l22!19 () List!57144)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3327 (List!57144 List!57144) Unit!147907)

(assert (=> b!4951972 (= lt!2043881 (lemmaConcatTwoListThenFirstIsPrefix!3327 l21!19 l22!19))))

(assert (=> b!4951972 (isPrefix!5103 l11!19 lt!2043879)))

(declare-fun lt!2043878 () Unit!147907)

(declare-fun l12!19 () List!57144)

(assert (=> b!4951972 (= lt!2043878 (lemmaConcatTwoListThenFirstIsPrefix!3327 l11!19 l12!19))))

(declare-fun b!4951973 () Bool)

(declare-fun e!3093888 () Bool)

(declare-fun tp!1388199 () Bool)

(assert (=> b!4951973 (= e!3093888 (and tp_is_empty!36191 tp!1388199))))

(declare-fun res!2112670 () Bool)

(assert (=> start!521828 (=> (not res!2112670) (not e!3093892))))

(assert (=> start!521828 (= res!2112670 (= lt!2043879 lt!2043877))))

(declare-fun ++!12488 (List!57144 List!57144) List!57144)

(assert (=> start!521828 (= lt!2043877 (++!12488 l21!19 l22!19))))

(assert (=> start!521828 (= lt!2043879 (++!12488 l11!19 l12!19))))

(assert (=> start!521828 e!3093892))

(assert (=> start!521828 e!3093890))

(assert (=> start!521828 e!3093888))

(assert (=> start!521828 e!3093891))

(assert (=> start!521828 e!3093889))

(assert (= (and start!521828 res!2112670) b!4951970))

(assert (= (and b!4951970 res!2112669) b!4951972))

(get-info :version)

(assert (= (and start!521828 ((_ is Cons!57020) l12!19)) b!4951971))

(assert (= (and start!521828 ((_ is Cons!57020) l21!19)) b!4951973))

(assert (= (and start!521828 ((_ is Cons!57020) l11!19)) b!4951969))

(assert (= (and start!521828 ((_ is Cons!57020) l22!19)) b!4951968))

(declare-fun m!5977042 () Bool)

(assert (=> b!4951970 m!5977042))

(declare-fun m!5977044 () Bool)

(assert (=> b!4951970 m!5977044))

(declare-fun m!5977046 () Bool)

(assert (=> b!4951972 m!5977046))

(declare-fun m!5977048 () Bool)

(assert (=> b!4951972 m!5977048))

(declare-fun m!5977050 () Bool)

(assert (=> b!4951972 m!5977050))

(declare-fun m!5977052 () Bool)

(assert (=> b!4951972 m!5977052))

(declare-fun m!5977054 () Bool)

(assert (=> b!4951972 m!5977054))

(declare-fun m!5977056 () Bool)

(assert (=> start!521828 m!5977056))

(declare-fun m!5977058 () Bool)

(assert (=> start!521828 m!5977058))

(check-sat (not b!4951968) tp_is_empty!36191 (not b!4951971) (not b!4951969) (not b!4951972) (not start!521828) (not b!4951973) (not b!4951970))
(check-sat)

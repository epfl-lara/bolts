; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!521830 () Bool)

(assert start!521830)

(declare-fun res!2112675 () Bool)

(declare-fun e!3093904 () Bool)

(assert (=> start!521830 (=> (not res!2112675) (not e!3093904))))

(declare-datatypes ((B!2975 0))(
  ( (B!2976 (val!22957 Int)) )
))
(declare-datatypes ((List!57145 0))(
  ( (Nil!57021) (Cons!57021 (h!63469 B!2975) (t!367711 List!57145)) )
))
(declare-fun lt!2043895 () List!57145)

(declare-fun lt!2043894 () List!57145)

(assert (=> start!521830 (= res!2112675 (= lt!2043895 lt!2043894))))

(declare-fun l21!19 () List!57145)

(declare-fun l22!19 () List!57145)

(declare-fun ++!12489 (List!57145 List!57145) List!57145)

(assert (=> start!521830 (= lt!2043894 (++!12489 l21!19 l22!19))))

(declare-fun l11!19 () List!57145)

(declare-fun l12!19 () List!57145)

(assert (=> start!521830 (= lt!2043895 (++!12489 l11!19 l12!19))))

(assert (=> start!521830 e!3093904))

(declare-fun e!3093903 () Bool)

(assert (=> start!521830 e!3093903))

(declare-fun e!3093907 () Bool)

(assert (=> start!521830 e!3093907))

(declare-fun e!3093905 () Bool)

(assert (=> start!521830 e!3093905))

(declare-fun e!3093906 () Bool)

(assert (=> start!521830 e!3093906))

(declare-fun b!4951986 () Bool)

(declare-fun res!2112676 () Bool)

(assert (=> b!4951986 (=> (not res!2112676) (not e!3093904))))

(declare-fun size!37849 (List!57145) Int)

(assert (=> b!4951986 (= res!2112676 (= (size!37849 l11!19) (size!37849 l21!19)))))

(declare-fun b!4951987 () Bool)

(declare-fun tp_is_empty!36193 () Bool)

(declare-fun tp!1388209 () Bool)

(assert (=> b!4951987 (= e!3093903 (and tp_is_empty!36193 tp!1388209))))

(declare-fun b!4951988 () Bool)

(declare-fun tp!1388210 () Bool)

(assert (=> b!4951988 (= e!3093907 (and tp_is_empty!36193 tp!1388210))))

(declare-fun b!4951989 () Bool)

(declare-fun tp!1388208 () Bool)

(assert (=> b!4951989 (= e!3093905 (and tp_is_empty!36193 tp!1388208))))

(declare-fun b!4951990 () Bool)

(declare-fun tp!1388211 () Bool)

(assert (=> b!4951990 (= e!3093906 (and tp_is_empty!36193 tp!1388211))))

(declare-fun b!4951991 () Bool)

(assert (=> b!4951991 (= e!3093904 (not true))))

(declare-fun lt!2043897 () Bool)

(declare-fun isPrefix!5104 (List!57145 List!57145) Bool)

(assert (=> b!4951991 (= lt!2043897 (isPrefix!5104 l21!19 lt!2043895))))

(assert (=> b!4951991 (= l11!19 l21!19)))

(declare-datatypes ((Unit!147909 0))(
  ( (Unit!147910) )
))
(declare-fun lt!2043896 () Unit!147909)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1194 (List!57145 List!57145 List!57145) Unit!147909)

(assert (=> b!4951991 (= lt!2043896 (lemmaIsPrefixSameLengthThenSameList!1194 l11!19 l21!19 lt!2043895))))

(assert (=> b!4951991 (isPrefix!5104 l21!19 lt!2043894)))

(declare-fun lt!2043899 () Unit!147909)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3328 (List!57145 List!57145) Unit!147909)

(assert (=> b!4951991 (= lt!2043899 (lemmaConcatTwoListThenFirstIsPrefix!3328 l21!19 l22!19))))

(assert (=> b!4951991 (isPrefix!5104 l11!19 lt!2043895)))

(declare-fun lt!2043898 () Unit!147909)

(assert (=> b!4951991 (= lt!2043898 (lemmaConcatTwoListThenFirstIsPrefix!3328 l11!19 l12!19))))

(assert (= (and start!521830 res!2112675) b!4951986))

(assert (= (and b!4951986 res!2112676) b!4951991))

(assert (= (and start!521830 (is-Cons!57021 l12!19)) b!4951987))

(assert (= (and start!521830 (is-Cons!57021 l21!19)) b!4951988))

(assert (= (and start!521830 (is-Cons!57021 l11!19)) b!4951989))

(assert (= (and start!521830 (is-Cons!57021 l22!19)) b!4951990))

(declare-fun m!5977060 () Bool)

(assert (=> start!521830 m!5977060))

(declare-fun m!5977062 () Bool)

(assert (=> start!521830 m!5977062))

(declare-fun m!5977064 () Bool)

(assert (=> b!4951986 m!5977064))

(declare-fun m!5977066 () Bool)

(assert (=> b!4951986 m!5977066))

(declare-fun m!5977068 () Bool)

(assert (=> b!4951991 m!5977068))

(declare-fun m!5977070 () Bool)

(assert (=> b!4951991 m!5977070))

(declare-fun m!5977072 () Bool)

(assert (=> b!4951991 m!5977072))

(declare-fun m!5977074 () Bool)

(assert (=> b!4951991 m!5977074))

(declare-fun m!5977076 () Bool)

(assert (=> b!4951991 m!5977076))

(declare-fun m!5977078 () Bool)

(assert (=> b!4951991 m!5977078))

(push 1)

(assert (not b!4951987))

(assert (not b!4951991))

(assert (not b!4951988))

(assert (not b!4951989))

(assert (not start!521830))

(assert (not b!4951990))

(assert (not b!4951986))

(assert tp_is_empty!36193)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


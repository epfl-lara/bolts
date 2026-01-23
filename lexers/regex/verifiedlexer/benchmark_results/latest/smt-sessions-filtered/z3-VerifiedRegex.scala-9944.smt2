; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!521856 () Bool)

(assert start!521856)

(declare-fun b!4952188 () Bool)

(declare-fun e!3094052 () Bool)

(declare-fun tp_is_empty!36207 () Bool)

(declare-fun tp!1388305 () Bool)

(assert (=> b!4952188 (= e!3094052 (and tp_is_empty!36207 tp!1388305))))

(declare-fun b!4952189 () Bool)

(declare-fun res!2112734 () Bool)

(declare-fun e!3094051 () Bool)

(assert (=> b!4952189 (=> (not res!2112734) (not e!3094051))))

(declare-datatypes ((B!2989 0))(
  ( (B!2990 (val!22964 Int)) )
))
(declare-datatypes ((List!57152 0))(
  ( (Nil!57028) (Cons!57028 (h!63476 B!2989) (t!367718 List!57152)) )
))
(declare-fun l11!19 () List!57152)

(declare-fun l21!19 () List!57152)

(declare-fun size!37856 (List!57152) Int)

(assert (=> b!4952189 (= res!2112734 (= (size!37856 l11!19) (size!37856 l21!19)))))

(declare-fun b!4952190 () Bool)

(declare-fun e!3094054 () Bool)

(declare-fun tp!1388306 () Bool)

(assert (=> b!4952190 (= e!3094054 (and tp_is_empty!36207 tp!1388306))))

(declare-fun res!2112733 () Bool)

(assert (=> start!521856 (=> (not res!2112733) (not e!3094051))))

(declare-fun lt!2043987 () List!57152)

(declare-fun lt!2043984 () List!57152)

(assert (=> start!521856 (= res!2112733 (= lt!2043987 lt!2043984))))

(declare-fun l22!19 () List!57152)

(declare-fun ++!12496 (List!57152 List!57152) List!57152)

(assert (=> start!521856 (= lt!2043984 (++!12496 l21!19 l22!19))))

(declare-fun l12!19 () List!57152)

(assert (=> start!521856 (= lt!2043987 (++!12496 l11!19 l12!19))))

(assert (=> start!521856 e!3094051))

(declare-fun e!3094053 () Bool)

(assert (=> start!521856 e!3094053))

(assert (=> start!521856 e!3094054))

(declare-fun e!3094050 () Bool)

(assert (=> start!521856 e!3094050))

(assert (=> start!521856 e!3094052))

(declare-fun b!4952191 () Bool)

(declare-fun isPrefix!5109 (List!57152 List!57152) Bool)

(assert (=> b!4952191 (= e!3094051 (not (isPrefix!5109 l21!19 lt!2043987)))))

(assert (=> b!4952191 (isPrefix!5109 l21!19 lt!2043984)))

(declare-datatypes ((Unit!147919 0))(
  ( (Unit!147920) )
))
(declare-fun lt!2043985 () Unit!147919)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3333 (List!57152 List!57152) Unit!147919)

(assert (=> b!4952191 (= lt!2043985 (lemmaConcatTwoListThenFirstIsPrefix!3333 l21!19 l22!19))))

(assert (=> b!4952191 (isPrefix!5109 l11!19 lt!2043987)))

(declare-fun lt!2043986 () Unit!147919)

(assert (=> b!4952191 (= lt!2043986 (lemmaConcatTwoListThenFirstIsPrefix!3333 l11!19 l12!19))))

(declare-fun b!4952192 () Bool)

(declare-fun tp!1388307 () Bool)

(assert (=> b!4952192 (= e!3094053 (and tp_is_empty!36207 tp!1388307))))

(declare-fun b!4952193 () Bool)

(declare-fun tp!1388304 () Bool)

(assert (=> b!4952193 (= e!3094050 (and tp_is_empty!36207 tp!1388304))))

(assert (= (and start!521856 res!2112733) b!4952189))

(assert (= (and b!4952189 res!2112734) b!4952191))

(get-info :version)

(assert (= (and start!521856 ((_ is Cons!57028) l12!19)) b!4952192))

(assert (= (and start!521856 ((_ is Cons!57028) l21!19)) b!4952190))

(assert (= (and start!521856 ((_ is Cons!57028) l11!19)) b!4952193))

(assert (= (and start!521856 ((_ is Cons!57028) l22!19)) b!4952188))

(declare-fun m!5977230 () Bool)

(assert (=> b!4952189 m!5977230))

(declare-fun m!5977232 () Bool)

(assert (=> b!4952189 m!5977232))

(declare-fun m!5977234 () Bool)

(assert (=> start!521856 m!5977234))

(declare-fun m!5977236 () Bool)

(assert (=> start!521856 m!5977236))

(declare-fun m!5977238 () Bool)

(assert (=> b!4952191 m!5977238))

(declare-fun m!5977240 () Bool)

(assert (=> b!4952191 m!5977240))

(declare-fun m!5977242 () Bool)

(assert (=> b!4952191 m!5977242))

(declare-fun m!5977244 () Bool)

(assert (=> b!4952191 m!5977244))

(declare-fun m!5977246 () Bool)

(assert (=> b!4952191 m!5977246))

(check-sat tp_is_empty!36207 (not b!4952189) (not b!4952190) (not b!4952188) (not b!4952191) (not b!4952193) (not b!4952192) (not start!521856))
(check-sat)

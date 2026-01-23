; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694804 () Bool)

(assert start!694804)

(declare-fun b!7132141 () Bool)

(declare-fun res!2910114 () Bool)

(declare-fun e!4286187 () Bool)

(assert (=> b!7132141 (=> (not res!2910114) (not e!4286187))))

(declare-fun e!4286191 () Bool)

(assert (=> b!7132141 (= res!2910114 e!4286191)))

(declare-fun res!2910112 () Bool)

(assert (=> b!7132141 (=> res!2910112 e!4286191)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36428 0))(
  ( (C!36429 (val!28140 Int)) )
))
(declare-datatypes ((Regex!18079 0))(
  ( (ElementMatch!18079 (c!1330281 C!36428)) (Concat!26924 (regOne!36670 Regex!18079) (regTwo!36670 Regex!18079)) (EmptyExpr!18079) (Star!18079 (reg!18408 Regex!18079)) (EmptyLang!18079) (Union!18079 (regOne!36671 Regex!18079) (regTwo!36671 Regex!18079)) )
))
(declare-datatypes ((List!69212 0))(
  ( (Nil!69088) (Cons!69088 (h!75536 Regex!18079) (t!383189 List!69212)) )
))
(declare-datatypes ((Context!14146 0))(
  ( (Context!14147 (exprs!7573 List!69212)) )
))
(declare-fun z1!538 () (InoxSet Context!14146))

(declare-datatypes ((List!69213 0))(
  ( (Nil!69089) (Cons!69089 (h!75537 C!36428) (t!383190 List!69213)) )
))
(declare-fun s1!1678 () List!69213)

(declare-fun matchZipper!3335 ((InoxSet Context!14146) List!69213) Bool)

(assert (=> b!7132141 (= res!2910112 (not (matchZipper!3335 z1!538 s1!1678)))))

(declare-fun b!7132142 () Bool)

(declare-fun e!4286188 () Bool)

(declare-fun tp!1965637 () Bool)

(assert (=> b!7132142 (= e!4286188 tp!1965637)))

(declare-fun b!7132143 () Bool)

(declare-fun e!4286184 () Bool)

(declare-fun tp!1965640 () Bool)

(assert (=> b!7132143 (= e!4286184 tp!1965640)))

(declare-fun setIsEmpty!52138 () Bool)

(declare-fun setRes!52139 () Bool)

(assert (=> setIsEmpty!52138 setRes!52139))

(declare-fun b!7132144 () Bool)

(declare-fun e!4286190 () Bool)

(assert (=> b!7132144 (= e!4286190 false)))

(declare-fun b!7132145 () Bool)

(declare-fun res!2910116 () Bool)

(assert (=> b!7132145 (=> (not res!2910116) (not e!4286190))))

(declare-fun z2!457 () (InoxSet Context!14146))

(declare-datatypes ((tuple2!68388 0))(
  ( (tuple2!68389 (_1!37497 List!69213) (_2!37497 List!69213)) )
))
(declare-fun lt!2564948 () tuple2!68388)

(assert (=> b!7132145 (= res!2910116 (matchZipper!3335 z2!457 (_2!37497 lt!2564948)))))

(declare-fun b!7132146 () Bool)

(assert (=> b!7132146 (= e!4286187 e!4286190)))

(declare-fun res!2910113 () Bool)

(assert (=> b!7132146 (=> (not res!2910113) (not e!4286190))))

(assert (=> b!7132146 (= res!2910113 (matchZipper!3335 z1!538 (_1!37497 lt!2564948)))))

(declare-datatypes ((Option!17026 0))(
  ( (None!17025) (Some!17025 (v!53519 tuple2!68388)) )
))
(declare-fun get!24261 (Option!17026) tuple2!68388)

(assert (=> b!7132146 (= lt!2564948 (get!24261 None!17025))))

(declare-fun setNonEmpty!52138 () Bool)

(declare-fun tp!1965642 () Bool)

(declare-fun setElem!52138 () Context!14146)

(declare-fun inv!88225 (Context!14146) Bool)

(assert (=> setNonEmpty!52138 (= setRes!52139 (and tp!1965642 (inv!88225 setElem!52138) e!4286188))))

(declare-fun setRest!52138 () (InoxSet Context!14146))

(assert (=> setNonEmpty!52138 (= z1!538 ((_ map or) (store ((as const (Array Context!14146 Bool)) false) setElem!52138 true) setRest!52138))))

(declare-fun b!7132147 () Bool)

(declare-fun e!4286185 () Bool)

(declare-fun tp_is_empty!45759 () Bool)

(declare-fun tp!1965639 () Bool)

(assert (=> b!7132147 (= e!4286185 (and tp_is_empty!45759 tp!1965639))))

(declare-fun res!2910117 () Bool)

(assert (=> start!694804 (=> (not res!2910117) (not e!4286187))))

(declare-fun s2!1615 () List!69213)

(declare-fun s!7358 () List!69213)

(declare-fun ++!16217 (List!69213 List!69213) List!69213)

(assert (=> start!694804 (= res!2910117 (= (++!16217 s1!1678 s2!1615) s!7358))))

(assert (=> start!694804 e!4286187))

(declare-fun condSetEmpty!52139 () Bool)

(assert (=> start!694804 (= condSetEmpty!52139 (= z2!457 ((as const (Array Context!14146 Bool)) false)))))

(declare-fun setRes!52138 () Bool)

(assert (=> start!694804 setRes!52138))

(declare-fun e!4286189 () Bool)

(assert (=> start!694804 e!4286189))

(declare-fun condSetEmpty!52138 () Bool)

(assert (=> start!694804 (= condSetEmpty!52138 (= z1!538 ((as const (Array Context!14146 Bool)) false)))))

(assert (=> start!694804 setRes!52139))

(assert (=> start!694804 e!4286185))

(declare-fun e!4286186 () Bool)

(assert (=> start!694804 e!4286186))

(declare-fun b!7132148 () Bool)

(declare-fun tp!1965641 () Bool)

(assert (=> b!7132148 (= e!4286189 (and tp_is_empty!45759 tp!1965641))))

(declare-fun b!7132149 () Bool)

(assert (=> b!7132149 (= e!4286191 (not (matchZipper!3335 z2!457 s2!1615)))))

(declare-fun setIsEmpty!52139 () Bool)

(assert (=> setIsEmpty!52139 setRes!52138))

(declare-fun b!7132150 () Bool)

(declare-fun res!2910115 () Bool)

(assert (=> b!7132150 (=> (not res!2910115) (not e!4286187))))

(get-info :version)

(assert (=> b!7132150 (= res!2910115 false)))

(declare-fun b!7132151 () Bool)

(declare-fun tp!1965643 () Bool)

(assert (=> b!7132151 (= e!4286186 (and tp_is_empty!45759 tp!1965643))))

(declare-fun tp!1965638 () Bool)

(declare-fun setNonEmpty!52139 () Bool)

(declare-fun setElem!52139 () Context!14146)

(assert (=> setNonEmpty!52139 (= setRes!52138 (and tp!1965638 (inv!88225 setElem!52139) e!4286184))))

(declare-fun setRest!52139 () (InoxSet Context!14146))

(assert (=> setNonEmpty!52139 (= z2!457 ((_ map or) (store ((as const (Array Context!14146 Bool)) false) setElem!52139 true) setRest!52139))))

(assert (= (and start!694804 res!2910117) b!7132141))

(assert (= (and b!7132141 (not res!2910112)) b!7132149))

(assert (= (and b!7132141 res!2910114) b!7132150))

(assert (= (and b!7132150 res!2910115) b!7132146))

(assert (= (and b!7132146 res!2910113) b!7132145))

(assert (= (and b!7132145 res!2910116) b!7132144))

(assert (= (and start!694804 condSetEmpty!52139) setIsEmpty!52139))

(assert (= (and start!694804 (not condSetEmpty!52139)) setNonEmpty!52139))

(assert (= setNonEmpty!52139 b!7132143))

(assert (= (and start!694804 ((_ is Cons!69089) s2!1615)) b!7132148))

(assert (= (and start!694804 condSetEmpty!52138) setIsEmpty!52138))

(assert (= (and start!694804 (not condSetEmpty!52138)) setNonEmpty!52138))

(assert (= setNonEmpty!52138 b!7132142))

(assert (= (and start!694804 ((_ is Cons!69089) s1!1678)) b!7132147))

(assert (= (and start!694804 ((_ is Cons!69089) s!7358)) b!7132151))

(declare-fun m!7849448 () Bool)

(assert (=> setNonEmpty!52139 m!7849448))

(declare-fun m!7849450 () Bool)

(assert (=> b!7132145 m!7849450))

(declare-fun m!7849452 () Bool)

(assert (=> b!7132141 m!7849452))

(declare-fun m!7849454 () Bool)

(assert (=> setNonEmpty!52138 m!7849454))

(declare-fun m!7849456 () Bool)

(assert (=> b!7132149 m!7849456))

(declare-fun m!7849458 () Bool)

(assert (=> start!694804 m!7849458))

(declare-fun m!7849460 () Bool)

(assert (=> b!7132146 m!7849460))

(declare-fun m!7849462 () Bool)

(assert (=> b!7132146 m!7849462))

(check-sat (not b!7132143) (not setNonEmpty!52138) (not b!7132145) (not setNonEmpty!52139) (not b!7132146) (not b!7132148) (not b!7132151) (not b!7132142) (not b!7132147) (not b!7132141) tp_is_empty!45759 (not b!7132149) (not start!694804))
(check-sat)

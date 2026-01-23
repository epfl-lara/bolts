; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694818 () Bool)

(assert start!694818)

(declare-fun setIsEmpty!52180 () Bool)

(declare-fun setRes!52181 () Bool)

(assert (=> setIsEmpty!52180 setRes!52181))

(declare-fun b!7132334 () Bool)

(declare-fun res!2910203 () Bool)

(declare-fun e!4286336 () Bool)

(assert (=> b!7132334 (=> (not res!2910203) (not e!4286336))))

(declare-datatypes ((C!36442 0))(
  ( (C!36443 (val!28147 Int)) )
))
(declare-datatypes ((List!69226 0))(
  ( (Nil!69102) (Cons!69102 (h!75550 C!36442) (t!383203 List!69226)) )
))
(declare-fun s2!1615 () List!69226)

(assert (=> b!7132334 (= res!2910203 (not (is-Nil!69102 s2!1615)))))

(declare-fun b!7132335 () Bool)

(declare-fun e!4286340 () Bool)

(assert (=> b!7132335 (= e!4286336 (not e!4286340))))

(declare-fun res!2910200 () Bool)

(assert (=> b!7132335 (=> res!2910200 e!4286340)))

(declare-datatypes ((tuple2!68394 0))(
  ( (tuple2!68395 (_1!37500 List!69226) (_2!37500 List!69226)) )
))
(declare-datatypes ((Option!17029 0))(
  ( (None!17028) (Some!17028 (v!53522 tuple2!68394)) )
))
(declare-fun lt!2564990 () Option!17029)

(declare-fun isDefined!13720 (Option!17029) Bool)

(assert (=> b!7132335 (= res!2910200 (not (isDefined!13720 lt!2564990)))))

(declare-datatypes ((Regex!18086 0))(
  ( (ElementMatch!18086 (c!1330288 C!36442)) (Concat!26931 (regOne!36684 Regex!18086) (regTwo!36684 Regex!18086)) (EmptyExpr!18086) (Star!18086 (reg!18415 Regex!18086)) (EmptyLang!18086) (Union!18086 (regOne!36685 Regex!18086) (regTwo!36685 Regex!18086)) )
))
(declare-datatypes ((List!69227 0))(
  ( (Nil!69103) (Cons!69103 (h!75551 Regex!18086) (t!383204 List!69227)) )
))
(declare-datatypes ((Context!14160 0))(
  ( (Context!14161 (exprs!7580 List!69227)) )
))
(declare-fun z2!457 () (Set Context!14160))

(declare-fun lt!2564987 () List!69226)

(declare-fun z1!538 () (Set Context!14160))

(declare-fun s!7358 () List!69226)

(declare-fun findConcatSeparationZippers!537 ((Set Context!14160) (Set Context!14160) List!69226 List!69226 List!69226) Option!17029)

(assert (=> b!7132335 (= lt!2564990 (findConcatSeparationZippers!537 z1!538 z2!457 lt!2564987 (t!383203 s2!1615) s!7358))))

(declare-fun ++!16224 (List!69226 List!69226) List!69226)

(assert (=> b!7132335 (= (++!16224 lt!2564987 (t!383203 s2!1615)) s!7358)))

(declare-fun s1!1678 () List!69226)

(assert (=> b!7132335 (= lt!2564987 (++!16224 s1!1678 (Cons!69102 (h!75550 s2!1615) Nil!69102)))))

(declare-datatypes ((Unit!163033 0))(
  ( (Unit!163034) )
))
(declare-fun lt!2564988 () Unit!163033)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3032 (List!69226 C!36442 List!69226 List!69226) Unit!163033)

(assert (=> b!7132335 (= lt!2564988 (lemmaMoveElementToOtherListKeepsConcatEq!3032 s1!1678 (h!75550 s2!1615) (t!383203 s2!1615) s!7358))))

(declare-fun setIsEmpty!52181 () Bool)

(declare-fun setRes!52180 () Bool)

(assert (=> setIsEmpty!52181 setRes!52180))

(declare-fun res!2910202 () Bool)

(assert (=> start!694818 (=> (not res!2910202) (not e!4286336))))

(assert (=> start!694818 (= res!2910202 (= (++!16224 s1!1678 s2!1615) s!7358))))

(assert (=> start!694818 e!4286336))

(declare-fun condSetEmpty!52180 () Bool)

(assert (=> start!694818 (= condSetEmpty!52180 (= z2!457 (as set.empty (Set Context!14160))))))

(assert (=> start!694818 setRes!52180))

(declare-fun e!4286338 () Bool)

(assert (=> start!694818 e!4286338))

(declare-fun condSetEmpty!52181 () Bool)

(assert (=> start!694818 (= condSetEmpty!52181 (= z1!538 (as set.empty (Set Context!14160))))))

(assert (=> start!694818 setRes!52181))

(declare-fun e!4286335 () Bool)

(assert (=> start!694818 e!4286335))

(declare-fun e!4286337 () Bool)

(assert (=> start!694818 e!4286337))

(declare-fun b!7132336 () Bool)

(declare-fun res!2910204 () Bool)

(assert (=> b!7132336 (=> (not res!2910204) (not e!4286336))))

(declare-fun e!4286334 () Bool)

(assert (=> b!7132336 (= res!2910204 e!4286334)))

(declare-fun res!2910201 () Bool)

(assert (=> b!7132336 (=> res!2910201 e!4286334)))

(declare-fun matchZipper!3342 ((Set Context!14160) List!69226) Bool)

(assert (=> b!7132336 (= res!2910201 (not (matchZipper!3342 z1!538 s1!1678)))))

(declare-fun b!7132337 () Bool)

(declare-fun tp_is_empty!45773 () Bool)

(declare-fun tp!1965786 () Bool)

(assert (=> b!7132337 (= e!4286338 (and tp_is_empty!45773 tp!1965786))))

(declare-fun b!7132338 () Bool)

(declare-fun tp!1965785 () Bool)

(assert (=> b!7132338 (= e!4286337 (and tp_is_empty!45773 tp!1965785))))

(declare-fun b!7132339 () Bool)

(assert (=> b!7132339 (= e!4286340 true)))

(declare-fun lt!2564989 () Bool)

(declare-fun get!24266 (Option!17029) tuple2!68394)

(assert (=> b!7132339 (= lt!2564989 (matchZipper!3342 z1!538 (_1!37500 (get!24266 lt!2564990))))))

(declare-fun setNonEmpty!52180 () Bool)

(declare-fun setElem!52180 () Context!14160)

(declare-fun tp!1965787 () Bool)

(declare-fun e!4286339 () Bool)

(declare-fun inv!88244 (Context!14160) Bool)

(assert (=> setNonEmpty!52180 (= setRes!52180 (and tp!1965787 (inv!88244 setElem!52180) e!4286339))))

(declare-fun setRest!52180 () (Set Context!14160))

(assert (=> setNonEmpty!52180 (= z2!457 (set.union (set.insert setElem!52180 (as set.empty (Set Context!14160))) setRest!52180))))

(declare-fun e!4286341 () Bool)

(declare-fun setNonEmpty!52181 () Bool)

(declare-fun tp!1965788 () Bool)

(declare-fun setElem!52181 () Context!14160)

(assert (=> setNonEmpty!52181 (= setRes!52181 (and tp!1965788 (inv!88244 setElem!52181) e!4286341))))

(declare-fun setRest!52181 () (Set Context!14160))

(assert (=> setNonEmpty!52181 (= z1!538 (set.union (set.insert setElem!52181 (as set.empty (Set Context!14160))) setRest!52181))))

(declare-fun b!7132340 () Bool)

(declare-fun tp!1965790 () Bool)

(assert (=> b!7132340 (= e!4286341 tp!1965790)))

(declare-fun b!7132341 () Bool)

(assert (=> b!7132341 (= e!4286334 (not (matchZipper!3342 z2!457 s2!1615)))))

(declare-fun b!7132342 () Bool)

(declare-fun tp!1965789 () Bool)

(assert (=> b!7132342 (= e!4286339 tp!1965789)))

(declare-fun b!7132343 () Bool)

(declare-fun tp!1965784 () Bool)

(assert (=> b!7132343 (= e!4286335 (and tp_is_empty!45773 tp!1965784))))

(assert (= (and start!694818 res!2910202) b!7132336))

(assert (= (and b!7132336 (not res!2910201)) b!7132341))

(assert (= (and b!7132336 res!2910204) b!7132334))

(assert (= (and b!7132334 res!2910203) b!7132335))

(assert (= (and b!7132335 (not res!2910200)) b!7132339))

(assert (= (and start!694818 condSetEmpty!52180) setIsEmpty!52181))

(assert (= (and start!694818 (not condSetEmpty!52180)) setNonEmpty!52180))

(assert (= setNonEmpty!52180 b!7132342))

(assert (= (and start!694818 (is-Cons!69102 s2!1615)) b!7132337))

(assert (= (and start!694818 condSetEmpty!52181) setIsEmpty!52180))

(assert (= (and start!694818 (not condSetEmpty!52181)) setNonEmpty!52181))

(assert (= setNonEmpty!52181 b!7132340))

(assert (= (and start!694818 (is-Cons!69102 s1!1678)) b!7132343))

(assert (= (and start!694818 (is-Cons!69102 s!7358)) b!7132338))

(declare-fun m!7849552 () Bool)

(assert (=> b!7132341 m!7849552))

(declare-fun m!7849554 () Bool)

(assert (=> b!7132336 m!7849554))

(declare-fun m!7849556 () Bool)

(assert (=> start!694818 m!7849556))

(declare-fun m!7849558 () Bool)

(assert (=> setNonEmpty!52181 m!7849558))

(declare-fun m!7849560 () Bool)

(assert (=> b!7132339 m!7849560))

(declare-fun m!7849562 () Bool)

(assert (=> b!7132339 m!7849562))

(declare-fun m!7849564 () Bool)

(assert (=> b!7132335 m!7849564))

(declare-fun m!7849566 () Bool)

(assert (=> b!7132335 m!7849566))

(declare-fun m!7849568 () Bool)

(assert (=> b!7132335 m!7849568))

(declare-fun m!7849570 () Bool)

(assert (=> b!7132335 m!7849570))

(declare-fun m!7849572 () Bool)

(assert (=> b!7132335 m!7849572))

(declare-fun m!7849574 () Bool)

(assert (=> setNonEmpty!52180 m!7849574))

(push 1)

(assert (not b!7132339))

(assert (not b!7132343))

(assert (not b!7132335))

(assert (not setNonEmpty!52181))

(assert (not b!7132336))

(assert (not setNonEmpty!52180))

(assert (not b!7132338))

(assert tp_is_empty!45773)

(assert (not b!7132340))

(assert (not b!7132337))

(assert (not start!694818))

(assert (not b!7132341))

(assert (not b!7132342))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


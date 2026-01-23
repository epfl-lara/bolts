; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694810 () Bool)

(assert start!694810)

(declare-fun e!4286248 () Bool)

(declare-fun setRes!52156 () Bool)

(declare-fun tp!1965701 () Bool)

(declare-datatypes ((C!36434 0))(
  ( (C!36435 (val!28143 Int)) )
))
(declare-datatypes ((Regex!18082 0))(
  ( (ElementMatch!18082 (c!1330284 C!36434)) (Concat!26927 (regOne!36676 Regex!18082) (regTwo!36676 Regex!18082)) (EmptyExpr!18082) (Star!18082 (reg!18411 Regex!18082)) (EmptyLang!18082) (Union!18082 (regOne!36677 Regex!18082) (regTwo!36677 Regex!18082)) )
))
(declare-datatypes ((List!69218 0))(
  ( (Nil!69094) (Cons!69094 (h!75542 Regex!18082) (t!383195 List!69218)) )
))
(declare-datatypes ((Context!14152 0))(
  ( (Context!14153 (exprs!7576 List!69218)) )
))
(declare-fun setElem!52156 () Context!14152)

(declare-fun setNonEmpty!52156 () Bool)

(declare-fun inv!88234 (Context!14152) Bool)

(assert (=> setNonEmpty!52156 (= setRes!52156 (and tp!1965701 (inv!88234 setElem!52156) e!4286248))))

(declare-fun z1!538 () (Set Context!14152))

(declare-fun setRest!52156 () (Set Context!14152))

(assert (=> setNonEmpty!52156 (= z1!538 (set.union (set.insert setElem!52156 (as set.empty (Set Context!14152))) setRest!52156))))

(declare-fun b!7132224 () Bool)

(declare-fun res!2910153 () Bool)

(declare-fun e!4286254 () Bool)

(assert (=> b!7132224 (=> (not res!2910153) (not e!4286254))))

(declare-fun e!4286253 () Bool)

(assert (=> b!7132224 (= res!2910153 e!4286253)))

(declare-fun res!2910151 () Bool)

(assert (=> b!7132224 (=> res!2910151 e!4286253)))

(declare-datatypes ((List!69219 0))(
  ( (Nil!69095) (Cons!69095 (h!75543 C!36434) (t!383196 List!69219)) )
))
(declare-fun s1!1678 () List!69219)

(declare-fun matchZipper!3338 ((Set Context!14152) List!69219) Bool)

(assert (=> b!7132224 (= res!2910151 (not (matchZipper!3338 z1!538 s1!1678)))))

(declare-fun b!7132226 () Bool)

(declare-fun z2!457 () (Set Context!14152))

(declare-fun s2!1615 () List!69219)

(assert (=> b!7132226 (= e!4286253 (not (matchZipper!3338 z2!457 s2!1615)))))

(declare-fun b!7132227 () Bool)

(declare-fun tp!1965703 () Bool)

(assert (=> b!7132227 (= e!4286248 tp!1965703)))

(declare-fun b!7132228 () Bool)

(declare-fun e!4286250 () Bool)

(declare-fun tp!1965704 () Bool)

(assert (=> b!7132228 (= e!4286250 tp!1965704)))

(declare-fun b!7132229 () Bool)

(assert (=> b!7132229 (= e!4286254 (not true))))

(declare-fun s!7358 () List!69219)

(declare-fun ++!16220 (List!69219 List!69219) List!69219)

(assert (=> b!7132229 (= (++!16220 (++!16220 s1!1678 (Cons!69095 (h!75543 s2!1615) Nil!69095)) (t!383196 s2!1615)) s!7358)))

(declare-datatypes ((Unit!163025 0))(
  ( (Unit!163026) )
))
(declare-fun lt!2564957 () Unit!163025)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3028 (List!69219 C!36434 List!69219 List!69219) Unit!163025)

(assert (=> b!7132229 (= lt!2564957 (lemmaMoveElementToOtherListKeepsConcatEq!3028 s1!1678 (h!75543 s2!1615) (t!383196 s2!1615) s!7358))))

(declare-fun b!7132230 () Bool)

(declare-fun res!2910150 () Bool)

(assert (=> b!7132230 (=> (not res!2910150) (not e!4286254))))

(assert (=> b!7132230 (= res!2910150 (not (is-Nil!69095 s2!1615)))))

(declare-fun b!7132231 () Bool)

(declare-fun e!4286252 () Bool)

(declare-fun tp_is_empty!45765 () Bool)

(declare-fun tp!1965700 () Bool)

(assert (=> b!7132231 (= e!4286252 (and tp_is_empty!45765 tp!1965700))))

(declare-fun b!7132225 () Bool)

(declare-fun e!4286249 () Bool)

(declare-fun tp!1965702 () Bool)

(assert (=> b!7132225 (= e!4286249 (and tp_is_empty!45765 tp!1965702))))

(declare-fun res!2910152 () Bool)

(assert (=> start!694810 (=> (not res!2910152) (not e!4286254))))

(assert (=> start!694810 (= res!2910152 (= (++!16220 s1!1678 s2!1615) s!7358))))

(assert (=> start!694810 e!4286254))

(declare-fun condSetEmpty!52156 () Bool)

(assert (=> start!694810 (= condSetEmpty!52156 (= z2!457 (as set.empty (Set Context!14152))))))

(declare-fun setRes!52157 () Bool)

(assert (=> start!694810 setRes!52157))

(assert (=> start!694810 e!4286249))

(declare-fun condSetEmpty!52157 () Bool)

(assert (=> start!694810 (= condSetEmpty!52157 (= z1!538 (as set.empty (Set Context!14152))))))

(assert (=> start!694810 setRes!52156))

(assert (=> start!694810 e!4286252))

(declare-fun e!4286251 () Bool)

(assert (=> start!694810 e!4286251))

(declare-fun setIsEmpty!52156 () Bool)

(assert (=> setIsEmpty!52156 setRes!52156))

(declare-fun setIsEmpty!52157 () Bool)

(assert (=> setIsEmpty!52157 setRes!52157))

(declare-fun setNonEmpty!52157 () Bool)

(declare-fun tp!1965705 () Bool)

(declare-fun setElem!52157 () Context!14152)

(assert (=> setNonEmpty!52157 (= setRes!52157 (and tp!1965705 (inv!88234 setElem!52157) e!4286250))))

(declare-fun setRest!52157 () (Set Context!14152))

(assert (=> setNonEmpty!52157 (= z2!457 (set.union (set.insert setElem!52157 (as set.empty (Set Context!14152))) setRest!52157))))

(declare-fun b!7132232 () Bool)

(declare-fun tp!1965706 () Bool)

(assert (=> b!7132232 (= e!4286251 (and tp_is_empty!45765 tp!1965706))))

(assert (= (and start!694810 res!2910152) b!7132224))

(assert (= (and b!7132224 (not res!2910151)) b!7132226))

(assert (= (and b!7132224 res!2910153) b!7132230))

(assert (= (and b!7132230 res!2910150) b!7132229))

(assert (= (and start!694810 condSetEmpty!52156) setIsEmpty!52157))

(assert (= (and start!694810 (not condSetEmpty!52156)) setNonEmpty!52157))

(assert (= setNonEmpty!52157 b!7132228))

(assert (= (and start!694810 (is-Cons!69095 s2!1615)) b!7132225))

(assert (= (and start!694810 condSetEmpty!52157) setIsEmpty!52156))

(assert (= (and start!694810 (not condSetEmpty!52157)) setNonEmpty!52156))

(assert (= setNonEmpty!52156 b!7132227))

(assert (= (and start!694810 (is-Cons!69095 s1!1678)) b!7132231))

(assert (= (and start!694810 (is-Cons!69095 s!7358)) b!7132232))

(declare-fun m!7849484 () Bool)

(assert (=> start!694810 m!7849484))

(declare-fun m!7849486 () Bool)

(assert (=> setNonEmpty!52156 m!7849486))

(declare-fun m!7849488 () Bool)

(assert (=> b!7132224 m!7849488))

(declare-fun m!7849490 () Bool)

(assert (=> b!7132229 m!7849490))

(assert (=> b!7132229 m!7849490))

(declare-fun m!7849492 () Bool)

(assert (=> b!7132229 m!7849492))

(declare-fun m!7849494 () Bool)

(assert (=> b!7132229 m!7849494))

(declare-fun m!7849496 () Bool)

(assert (=> b!7132226 m!7849496))

(declare-fun m!7849498 () Bool)

(assert (=> setNonEmpty!52157 m!7849498))

(push 1)

(assert (not start!694810))

(assert (not b!7132225))

(assert (not b!7132226))

(assert (not b!7132231))

(assert (not b!7132228))

(assert (not b!7132224))

(assert (not setNonEmpty!52156))

(assert (not b!7132227))

(assert (not b!7132229))

(assert tp_is_empty!45765)

(assert (not setNonEmpty!52157))

(assert (not b!7132232))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


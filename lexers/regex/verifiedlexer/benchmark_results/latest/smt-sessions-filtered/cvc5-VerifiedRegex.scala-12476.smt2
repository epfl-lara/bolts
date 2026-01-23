; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694814 () Bool)

(assert start!694814)

(declare-fun b!7132278 () Bool)

(declare-fun res!2910177 () Bool)

(declare-fun e!4286290 () Bool)

(assert (=> b!7132278 (=> (not res!2910177) (not e!4286290))))

(declare-datatypes ((C!36438 0))(
  ( (C!36439 (val!28145 Int)) )
))
(declare-datatypes ((List!69222 0))(
  ( (Nil!69098) (Cons!69098 (h!75546 C!36438) (t!383199 List!69222)) )
))
(declare-fun s2!1615 () List!69222)

(assert (=> b!7132278 (= res!2910177 (not (is-Nil!69098 s2!1615)))))

(declare-fun b!7132279 () Bool)

(declare-fun e!4286294 () Bool)

(declare-fun tp!1965744 () Bool)

(assert (=> b!7132279 (= e!4286294 tp!1965744)))

(declare-fun res!2910175 () Bool)

(assert (=> start!694814 (=> (not res!2910175) (not e!4286290))))

(declare-fun s1!1678 () List!69222)

(declare-fun s!7358 () List!69222)

(declare-fun ++!16222 (List!69222 List!69222) List!69222)

(assert (=> start!694814 (= res!2910175 (= (++!16222 s1!1678 s2!1615) s!7358))))

(assert (=> start!694814 e!4286290))

(declare-fun condSetEmpty!52168 () Bool)

(declare-datatypes ((Regex!18084 0))(
  ( (ElementMatch!18084 (c!1330286 C!36438)) (Concat!26929 (regOne!36680 Regex!18084) (regTwo!36680 Regex!18084)) (EmptyExpr!18084) (Star!18084 (reg!18413 Regex!18084)) (EmptyLang!18084) (Union!18084 (regOne!36681 Regex!18084) (regTwo!36681 Regex!18084)) )
))
(declare-datatypes ((List!69223 0))(
  ( (Nil!69099) (Cons!69099 (h!75547 Regex!18084) (t!383200 List!69223)) )
))
(declare-datatypes ((Context!14156 0))(
  ( (Context!14157 (exprs!7578 List!69223)) )
))
(declare-fun z2!457 () (Set Context!14156))

(assert (=> start!694814 (= condSetEmpty!52168 (= z2!457 (as set.empty (Set Context!14156))))))

(declare-fun setRes!52169 () Bool)

(assert (=> start!694814 setRes!52169))

(declare-fun e!4286291 () Bool)

(assert (=> start!694814 e!4286291))

(declare-fun condSetEmpty!52169 () Bool)

(declare-fun z1!538 () (Set Context!14156))

(assert (=> start!694814 (= condSetEmpty!52169 (= z1!538 (as set.empty (Set Context!14156))))))

(declare-fun setRes!52168 () Bool)

(assert (=> start!694814 setRes!52168))

(declare-fun e!4286293 () Bool)

(assert (=> start!694814 e!4286293))

(declare-fun e!4286292 () Bool)

(assert (=> start!694814 e!4286292))

(declare-fun e!4286296 () Bool)

(declare-fun tp!1965747 () Bool)

(declare-fun setElem!52168 () Context!14156)

(declare-fun setNonEmpty!52168 () Bool)

(declare-fun inv!88239 (Context!14156) Bool)

(assert (=> setNonEmpty!52168 (= setRes!52169 (and tp!1965747 (inv!88239 setElem!52168) e!4286296))))

(declare-fun setRest!52169 () (Set Context!14156))

(assert (=> setNonEmpty!52168 (= z2!457 (set.union (set.insert setElem!52168 (as set.empty (Set Context!14156))) setRest!52169))))

(declare-fun setIsEmpty!52168 () Bool)

(assert (=> setIsEmpty!52168 setRes!52168))

(declare-fun b!7132280 () Bool)

(declare-fun tp_is_empty!45769 () Bool)

(declare-fun tp!1965748 () Bool)

(assert (=> b!7132280 (= e!4286293 (and tp_is_empty!45769 tp!1965748))))

(declare-fun b!7132281 () Bool)

(declare-fun tp!1965746 () Bool)

(assert (=> b!7132281 (= e!4286296 tp!1965746)))

(declare-fun b!7132282 () Bool)

(declare-fun tp!1965745 () Bool)

(assert (=> b!7132282 (= e!4286291 (and tp_is_empty!45769 tp!1965745))))

(declare-fun setIsEmpty!52169 () Bool)

(assert (=> setIsEmpty!52169 setRes!52169))

(declare-fun b!7132283 () Bool)

(declare-fun tp!1965743 () Bool)

(assert (=> b!7132283 (= e!4286292 (and tp_is_empty!45769 tp!1965743))))

(declare-fun b!7132284 () Bool)

(assert (=> b!7132284 (= e!4286290 (not true))))

(declare-fun lt!2564967 () List!69222)

(declare-datatypes ((tuple2!68390 0))(
  ( (tuple2!68391 (_1!37498 List!69222) (_2!37498 List!69222)) )
))
(declare-datatypes ((Option!17027 0))(
  ( (None!17026) (Some!17026 (v!53520 tuple2!68390)) )
))
(declare-fun lt!2564969 () Option!17027)

(declare-fun findConcatSeparationZippers!535 ((Set Context!14156) (Set Context!14156) List!69222 List!69222 List!69222) Option!17027)

(assert (=> b!7132284 (= lt!2564969 (findConcatSeparationZippers!535 z1!538 z2!457 lt!2564967 (t!383199 s2!1615) s!7358))))

(assert (=> b!7132284 (= (++!16222 lt!2564967 (t!383199 s2!1615)) s!7358)))

(assert (=> b!7132284 (= lt!2564967 (++!16222 s1!1678 (Cons!69098 (h!75546 s2!1615) Nil!69098)))))

(declare-datatypes ((Unit!163029 0))(
  ( (Unit!163030) )
))
(declare-fun lt!2564968 () Unit!163029)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3030 (List!69222 C!36438 List!69222 List!69222) Unit!163029)

(assert (=> b!7132284 (= lt!2564968 (lemmaMoveElementToOtherListKeepsConcatEq!3030 s1!1678 (h!75546 s2!1615) (t!383199 s2!1615) s!7358))))

(declare-fun b!7132285 () Bool)

(declare-fun res!2910174 () Bool)

(assert (=> b!7132285 (=> (not res!2910174) (not e!4286290))))

(declare-fun e!4286295 () Bool)

(assert (=> b!7132285 (= res!2910174 e!4286295)))

(declare-fun res!2910176 () Bool)

(assert (=> b!7132285 (=> res!2910176 e!4286295)))

(declare-fun matchZipper!3340 ((Set Context!14156) List!69222) Bool)

(assert (=> b!7132285 (= res!2910176 (not (matchZipper!3340 z1!538 s1!1678)))))

(declare-fun b!7132286 () Bool)

(assert (=> b!7132286 (= e!4286295 (not (matchZipper!3340 z2!457 s2!1615)))))

(declare-fun setNonEmpty!52169 () Bool)

(declare-fun tp!1965742 () Bool)

(declare-fun setElem!52169 () Context!14156)

(assert (=> setNonEmpty!52169 (= setRes!52168 (and tp!1965742 (inv!88239 setElem!52169) e!4286294))))

(declare-fun setRest!52168 () (Set Context!14156))

(assert (=> setNonEmpty!52169 (= z1!538 (set.union (set.insert setElem!52169 (as set.empty (Set Context!14156))) setRest!52168))))

(assert (= (and start!694814 res!2910175) b!7132285))

(assert (= (and b!7132285 (not res!2910176)) b!7132286))

(assert (= (and b!7132285 res!2910174) b!7132278))

(assert (= (and b!7132278 res!2910177) b!7132284))

(assert (= (and start!694814 condSetEmpty!52168) setIsEmpty!52169))

(assert (= (and start!694814 (not condSetEmpty!52168)) setNonEmpty!52168))

(assert (= setNonEmpty!52168 b!7132281))

(assert (= (and start!694814 (is-Cons!69098 s2!1615)) b!7132282))

(assert (= (and start!694814 condSetEmpty!52169) setIsEmpty!52168))

(assert (= (and start!694814 (not condSetEmpty!52169)) setNonEmpty!52169))

(assert (= setNonEmpty!52169 b!7132279))

(assert (= (and start!694814 (is-Cons!69098 s1!1678)) b!7132280))

(assert (= (and start!694814 (is-Cons!69098 s!7358)) b!7132283))

(declare-fun m!7849516 () Bool)

(assert (=> start!694814 m!7849516))

(declare-fun m!7849518 () Bool)

(assert (=> setNonEmpty!52169 m!7849518))

(declare-fun m!7849520 () Bool)

(assert (=> b!7132284 m!7849520))

(declare-fun m!7849522 () Bool)

(assert (=> b!7132284 m!7849522))

(declare-fun m!7849524 () Bool)

(assert (=> b!7132284 m!7849524))

(declare-fun m!7849526 () Bool)

(assert (=> b!7132284 m!7849526))

(declare-fun m!7849528 () Bool)

(assert (=> setNonEmpty!52168 m!7849528))

(declare-fun m!7849530 () Bool)

(assert (=> b!7132286 m!7849530))

(declare-fun m!7849532 () Bool)

(assert (=> b!7132285 m!7849532))

(push 1)

(assert (not setNonEmpty!52169))

(assert (not b!7132281))

(assert (not b!7132283))

(assert (not b!7132286))

(assert (not b!7132280))

(assert (not b!7132284))

(assert (not setNonEmpty!52168))

(assert tp_is_empty!45769)

(assert (not b!7132282))

(assert (not b!7132285))

(assert (not start!694814))

(assert (not b!7132279))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


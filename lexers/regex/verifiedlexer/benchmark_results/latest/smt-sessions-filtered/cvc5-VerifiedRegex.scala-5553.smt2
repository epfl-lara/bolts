; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279094 () Bool)

(assert start!279094)

(declare-fun bs!520813 () Bool)

(declare-fun b!2864383 () Bool)

(declare-fun b!2864382 () Bool)

(assert (= bs!520813 (and b!2864383 b!2864382)))

(declare-fun lambda!105791 () Int)

(declare-fun lambda!105790 () Int)

(assert (=> bs!520813 (not (= lambda!105791 lambda!105790))))

(declare-fun b!2864381 () Bool)

(declare-fun e!1813288 () Bool)

(declare-fun tp!922464 () Bool)

(assert (=> b!2864381 (= e!1813288 tp!922464)))

(declare-fun res!1189203 () Bool)

(declare-fun e!1813286 () Bool)

(assert (=> b!2864382 (=> (not res!1189203) (not e!1813286))))

(declare-datatypes ((C!17502 0))(
  ( (C!17503 (val!10785 Int)) )
))
(declare-datatypes ((Regex!8660 0))(
  ( (ElementMatch!8660 (c!461847 C!17502)) (Concat!13981 (regOne!17832 Regex!8660) (regTwo!17832 Regex!8660)) (EmptyExpr!8660) (Star!8660 (reg!8989 Regex!8660)) (EmptyLang!8660) (Union!8660 (regOne!17833 Regex!8660) (regTwo!17833 Regex!8660)) )
))
(declare-datatypes ((List!34313 0))(
  ( (Nil!34189) (Cons!34189 (h!39609 Regex!8660) (t!233356 List!34313)) )
))
(declare-datatypes ((Context!5240 0))(
  ( (Context!5241 (exprs!3120 List!34313)) )
))
(declare-fun z!691 () (Set Context!5240))

(declare-fun forall!6997 ((Set Context!5240) Int) Bool)

(assert (=> b!2864382 (= res!1189203 (not (forall!6997 z!691 lambda!105790)))))

(declare-fun e!1813287 () Bool)

(assert (=> b!2864383 (= e!1813286 (not e!1813287))))

(declare-fun res!1189205 () Bool)

(assert (=> b!2864383 (=> res!1189205 e!1813287)))

(declare-fun exists!1063 ((Set Context!5240) Int) Bool)

(assert (=> b!2864383 (= res!1189205 (not (exists!1063 z!691 lambda!105791)))))

(declare-datatypes ((List!34314 0))(
  ( (Nil!34190) (Cons!34190 (h!39610 Context!5240) (t!233357 List!34314)) )
))
(declare-fun lt!1015383 () List!34314)

(declare-fun exists!1064 (List!34314 Int) Bool)

(assert (=> b!2864383 (exists!1064 lt!1015383 lambda!105791)))

(declare-datatypes ((Unit!47839 0))(
  ( (Unit!47840) )
))
(declare-fun lt!1015382 () Unit!47839)

(declare-fun lemmaNotForallThenExists!130 (List!34314 Int) Unit!47839)

(assert (=> b!2864383 (= lt!1015382 (lemmaNotForallThenExists!130 lt!1015383 lambda!105790))))

(declare-fun toList!1991 ((Set Context!5240)) List!34314)

(assert (=> b!2864383 (= lt!1015383 (toList!1991 z!691))))

(declare-fun setIsEmpty!25562 () Bool)

(declare-fun setRes!25562 () Bool)

(assert (=> setIsEmpty!25562 setRes!25562))

(declare-fun res!1189204 () Bool)

(assert (=> start!279094 (=> (not res!1189204) (not e!1813286))))

(declare-fun lostCauseZipper!564 ((Set Context!5240)) Bool)

(assert (=> start!279094 (= res!1189204 (not (lostCauseZipper!564 z!691)))))

(assert (=> start!279094 e!1813286))

(declare-fun condSetEmpty!25562 () Bool)

(assert (=> start!279094 (= condSetEmpty!25562 (= z!691 (as set.empty (Set Context!5240))))))

(assert (=> start!279094 setRes!25562))

(declare-fun setNonEmpty!25562 () Bool)

(declare-fun tp!922463 () Bool)

(declare-fun setElem!25562 () Context!5240)

(declare-fun inv!46238 (Context!5240) Bool)

(assert (=> setNonEmpty!25562 (= setRes!25562 (and tp!922463 (inv!46238 setElem!25562) e!1813288))))

(declare-fun setRest!25562 () (Set Context!5240))

(assert (=> setNonEmpty!25562 (= z!691 (set.union (set.insert setElem!25562 (as set.empty (Set Context!5240))) setRest!25562))))

(declare-fun b!2864384 () Bool)

(assert (=> b!2864384 (= e!1813287 true)))

(declare-fun lt!1015384 () Bool)

(declare-fun lostCause!769 (Context!5240) Bool)

(declare-fun getWitness!587 ((Set Context!5240) Int) Context!5240)

(assert (=> b!2864384 (= lt!1015384 (lostCause!769 (getWitness!587 z!691 lambda!105791)))))

(declare-fun b!2864385 () Bool)

(declare-fun res!1189206 () Bool)

(assert (=> b!2864385 (=> (not res!1189206) (not e!1813286))))

(declare-datatypes ((List!34315 0))(
  ( (Nil!34191) (Cons!34191 (h!39611 C!17502) (t!233358 List!34315)) )
))
(declare-datatypes ((Option!6339 0))(
  ( (None!6338) (Some!6338 (v!34460 List!34315)) )
))
(declare-fun isDefined!4959 (Option!6339) Bool)

(declare-fun getLanguageWitness!281 ((Set Context!5240)) Option!6339)

(assert (=> b!2864385 (= res!1189206 (isDefined!4959 (getLanguageWitness!281 z!691)))))

(assert (= (and start!279094 res!1189204) b!2864385))

(assert (= (and b!2864385 res!1189206) b!2864382))

(assert (= (and b!2864382 res!1189203) b!2864383))

(assert (= (and b!2864383 (not res!1189205)) b!2864384))

(assert (= (and start!279094 condSetEmpty!25562) setIsEmpty!25562))

(assert (= (and start!279094 (not condSetEmpty!25562)) setNonEmpty!25562))

(assert (= setNonEmpty!25562 b!2864381))

(declare-fun m!3284033 () Bool)

(assert (=> b!2864384 m!3284033))

(assert (=> b!2864384 m!3284033))

(declare-fun m!3284035 () Bool)

(assert (=> b!2864384 m!3284035))

(declare-fun m!3284037 () Bool)

(assert (=> b!2864382 m!3284037))

(declare-fun m!3284039 () Bool)

(assert (=> setNonEmpty!25562 m!3284039))

(declare-fun m!3284041 () Bool)

(assert (=> b!2864383 m!3284041))

(declare-fun m!3284043 () Bool)

(assert (=> b!2864383 m!3284043))

(declare-fun m!3284045 () Bool)

(assert (=> b!2864383 m!3284045))

(declare-fun m!3284047 () Bool)

(assert (=> b!2864383 m!3284047))

(declare-fun m!3284049 () Bool)

(assert (=> b!2864385 m!3284049))

(assert (=> b!2864385 m!3284049))

(declare-fun m!3284051 () Bool)

(assert (=> b!2864385 m!3284051))

(declare-fun m!3284053 () Bool)

(assert (=> start!279094 m!3284053))

(push 1)

(assert (not b!2864381))

(assert (not b!2864384))

(assert (not b!2864383))

(assert (not b!2864385))

(assert (not start!279094))

(assert (not b!2864382))

(assert (not setNonEmpty!25562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


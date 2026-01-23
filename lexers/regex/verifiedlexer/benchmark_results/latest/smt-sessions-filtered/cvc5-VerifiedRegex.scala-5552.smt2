; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279090 () Bool)

(assert start!279090)

(declare-fun bs!520809 () Bool)

(declare-fun b!2864354 () Bool)

(declare-fun b!2864355 () Bool)

(assert (= bs!520809 (and b!2864354 b!2864355)))

(declare-fun lambda!105767 () Int)

(declare-fun lambda!105766 () Int)

(assert (=> bs!520809 (not (= lambda!105767 lambda!105766))))

(declare-fun b!2864351 () Bool)

(declare-fun e!1813265 () Bool)

(declare-datatypes ((C!17498 0))(
  ( (C!17499 (val!10783 Int)) )
))
(declare-datatypes ((Regex!8658 0))(
  ( (ElementMatch!8658 (c!461829 C!17498)) (Concat!13979 (regOne!17828 Regex!8658) (regTwo!17828 Regex!8658)) (EmptyExpr!8658) (Star!8658 (reg!8987 Regex!8658)) (EmptyLang!8658) (Union!8658 (regOne!17829 Regex!8658) (regTwo!17829 Regex!8658)) )
))
(declare-datatypes ((List!34307 0))(
  ( (Nil!34183) (Cons!34183 (h!39603 Regex!8658) (t!233350 List!34307)) )
))
(declare-datatypes ((Context!5236 0))(
  ( (Context!5237 (exprs!3118 List!34307)) )
))
(declare-fun z!691 () (Set Context!5236))

(declare-fun exists!1059 ((Set Context!5236) Int) Bool)

(assert (=> b!2864351 (= e!1813265 (exists!1059 z!691 lambda!105767))))

(declare-fun res!1189179 () Bool)

(declare-fun e!1813264 () Bool)

(assert (=> start!279090 (=> (not res!1189179) (not e!1813264))))

(declare-fun lostCauseZipper!562 ((Set Context!5236)) Bool)

(assert (=> start!279090 (= res!1189179 (not (lostCauseZipper!562 z!691)))))

(assert (=> start!279090 e!1813264))

(declare-fun condSetEmpty!25556 () Bool)

(assert (=> start!279090 (= condSetEmpty!25556 (= z!691 (as set.empty (Set Context!5236))))))

(declare-fun setRes!25556 () Bool)

(assert (=> start!279090 setRes!25556))

(declare-fun e!1813266 () Bool)

(declare-fun setNonEmpty!25556 () Bool)

(declare-fun tp!922451 () Bool)

(declare-fun setElem!25556 () Context!5236)

(declare-fun inv!46233 (Context!5236) Bool)

(assert (=> setNonEmpty!25556 (= setRes!25556 (and tp!922451 (inv!46233 setElem!25556) e!1813266))))

(declare-fun setRest!25556 () (Set Context!5236))

(assert (=> setNonEmpty!25556 (= z!691 (set.union (set.insert setElem!25556 (as set.empty (Set Context!5236))) setRest!25556))))

(declare-fun b!2864352 () Bool)

(declare-fun tp!922452 () Bool)

(assert (=> b!2864352 (= e!1813266 tp!922452)))

(declare-fun setIsEmpty!25556 () Bool)

(assert (=> setIsEmpty!25556 setRes!25556))

(declare-fun b!2864353 () Bool)

(declare-fun res!1189181 () Bool)

(assert (=> b!2864353 (=> (not res!1189181) (not e!1813264))))

(declare-datatypes ((List!34308 0))(
  ( (Nil!34184) (Cons!34184 (h!39604 C!17498) (t!233351 List!34308)) )
))
(declare-datatypes ((Option!6337 0))(
  ( (None!6336) (Some!6336 (v!34458 List!34308)) )
))
(declare-fun isDefined!4957 (Option!6337) Bool)

(declare-fun getLanguageWitness!279 ((Set Context!5236)) Option!6337)

(assert (=> b!2864353 (= res!1189181 (isDefined!4957 (getLanguageWitness!279 z!691)))))

(assert (=> b!2864354 (= e!1813264 (not e!1813265))))

(declare-fun res!1189182 () Bool)

(assert (=> b!2864354 (=> res!1189182 e!1813265)))

(assert (=> b!2864354 (= res!1189182 (not (exists!1059 z!691 lambda!105767)))))

(declare-datatypes ((List!34309 0))(
  ( (Nil!34185) (Cons!34185 (h!39605 Context!5236) (t!233352 List!34309)) )
))
(declare-fun lt!1015368 () List!34309)

(declare-fun exists!1060 (List!34309 Int) Bool)

(assert (=> b!2864354 (exists!1060 lt!1015368 lambda!105767)))

(declare-datatypes ((Unit!47835 0))(
  ( (Unit!47836) )
))
(declare-fun lt!1015369 () Unit!47835)

(declare-fun lemmaNotForallThenExists!128 (List!34309 Int) Unit!47835)

(assert (=> b!2864354 (= lt!1015369 (lemmaNotForallThenExists!128 lt!1015368 lambda!105766))))

(declare-fun toList!1989 ((Set Context!5236)) List!34309)

(assert (=> b!2864354 (= lt!1015368 (toList!1989 z!691))))

(declare-fun res!1189180 () Bool)

(assert (=> b!2864355 (=> (not res!1189180) (not e!1813264))))

(declare-fun forall!6995 ((Set Context!5236) Int) Bool)

(assert (=> b!2864355 (= res!1189180 (not (forall!6995 z!691 lambda!105766)))))

(assert (= (and start!279090 res!1189179) b!2864353))

(assert (= (and b!2864353 res!1189181) b!2864355))

(assert (= (and b!2864355 res!1189180) b!2864354))

(assert (= (and b!2864354 (not res!1189182)) b!2864351))

(assert (= (and start!279090 condSetEmpty!25556) setIsEmpty!25556))

(assert (= (and start!279090 (not condSetEmpty!25556)) setNonEmpty!25556))

(assert (= setNonEmpty!25556 b!2864352))

(declare-fun m!3283997 () Bool)

(assert (=> start!279090 m!3283997))

(declare-fun m!3283999 () Bool)

(assert (=> b!2864354 m!3283999))

(declare-fun m!3284001 () Bool)

(assert (=> b!2864354 m!3284001))

(declare-fun m!3284003 () Bool)

(assert (=> b!2864354 m!3284003))

(declare-fun m!3284005 () Bool)

(assert (=> b!2864354 m!3284005))

(declare-fun m!3284007 () Bool)

(assert (=> b!2864353 m!3284007))

(assert (=> b!2864353 m!3284007))

(declare-fun m!3284009 () Bool)

(assert (=> b!2864353 m!3284009))

(declare-fun m!3284011 () Bool)

(assert (=> setNonEmpty!25556 m!3284011))

(declare-fun m!3284013 () Bool)

(assert (=> b!2864355 m!3284013))

(assert (=> b!2864351 m!3283999))

(push 1)

(assert (not b!2864353))

(assert (not b!2864352))

(assert (not b!2864355))

(assert (not start!279090))

(assert (not b!2864354))

(assert (not setNonEmpty!25556))

(assert (not b!2864351))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


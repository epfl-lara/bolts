; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279086 () Bool)

(assert start!279086)

(declare-fun b!2864325 () Bool)

(declare-fun e!1813248 () Bool)

(declare-fun tp!922440 () Bool)

(assert (=> b!2864325 (= e!1813248 tp!922440)))

(declare-fun tp!922439 () Bool)

(declare-fun setNonEmpty!25550 () Bool)

(declare-datatypes ((C!17494 0))(
  ( (C!17495 (val!10781 Int)) )
))
(declare-datatypes ((Regex!8656 0))(
  ( (ElementMatch!8656 (c!461815 C!17494)) (Concat!13977 (regOne!17824 Regex!8656) (regTwo!17824 Regex!8656)) (EmptyExpr!8656) (Star!8656 (reg!8985 Regex!8656)) (EmptyLang!8656) (Union!8656 (regOne!17825 Regex!8656) (regTwo!17825 Regex!8656)) )
))
(declare-datatypes ((List!34301 0))(
  ( (Nil!34177) (Cons!34177 (h!39597 Regex!8656) (t!233344 List!34301)) )
))
(declare-datatypes ((Context!5232 0))(
  ( (Context!5233 (exprs!3116 List!34301)) )
))
(declare-fun setElem!25550 () Context!5232)

(declare-fun setRes!25550 () Bool)

(declare-fun inv!46228 (Context!5232) Bool)

(assert (=> setNonEmpty!25550 (= setRes!25550 (and tp!922439 (inv!46228 setElem!25550) e!1813248))))

(declare-fun z!691 () (Set Context!5232))

(declare-fun setRest!25550 () (Set Context!5232))

(assert (=> setNonEmpty!25550 (= z!691 (set.union (set.insert setElem!25550 (as set.empty (Set Context!5232))) setRest!25550))))

(declare-fun b!2864326 () Bool)

(declare-fun res!1189159 () Bool)

(declare-fun e!1813249 () Bool)

(assert (=> b!2864326 (=> (not res!1189159) (not e!1813249))))

(declare-datatypes ((List!34302 0))(
  ( (Nil!34178) (Cons!34178 (h!39598 C!17494) (t!233345 List!34302)) )
))
(declare-datatypes ((Option!6335 0))(
  ( (None!6334) (Some!6334 (v!34456 List!34302)) )
))
(declare-fun isDefined!4955 (Option!6335) Bool)

(declare-fun getLanguageWitness!277 ((Set Context!5232)) Option!6335)

(assert (=> b!2864326 (= res!1189159 (isDefined!4955 (getLanguageWitness!277 z!691)))))

(declare-fun b!2864327 () Bool)

(declare-fun res!1189160 () Bool)

(assert (=> b!2864327 (=> (not res!1189160) (not e!1813249))))

(declare-fun lambda!105750 () Int)

(declare-fun forall!6991 ((Set Context!5232) Int) Bool)

(assert (=> b!2864327 (= res!1189160 (not (forall!6991 z!691 lambda!105750)))))

(declare-fun setIsEmpty!25550 () Bool)

(assert (=> setIsEmpty!25550 setRes!25550))

(declare-fun res!1189161 () Bool)

(assert (=> start!279086 (=> (not res!1189161) (not e!1813249))))

(declare-fun lostCauseZipper!560 ((Set Context!5232)) Bool)

(assert (=> start!279086 (= res!1189161 (not (lostCauseZipper!560 z!691)))))

(assert (=> start!279086 e!1813249))

(declare-fun condSetEmpty!25550 () Bool)

(assert (=> start!279086 (= condSetEmpty!25550 (= z!691 (as set.empty (Set Context!5232))))))

(assert (=> start!279086 setRes!25550))

(declare-fun b!2864328 () Bool)

(assert (=> b!2864328 (= e!1813249 false)))

(declare-fun lt!1015360 () Bool)

(declare-datatypes ((List!34303 0))(
  ( (Nil!34179) (Cons!34179 (h!39599 Context!5232) (t!233346 List!34303)) )
))
(declare-fun forall!6992 (List!34303 Int) Bool)

(declare-fun toList!1987 ((Set Context!5232)) List!34303)

(assert (=> b!2864328 (= lt!1015360 (forall!6992 (toList!1987 z!691) lambda!105750))))

(assert (= (and start!279086 res!1189161) b!2864326))

(assert (= (and b!2864326 res!1189159) b!2864327))

(assert (= (and b!2864327 res!1189160) b!2864328))

(assert (= (and start!279086 condSetEmpty!25550) setIsEmpty!25550))

(assert (= (and start!279086 (not condSetEmpty!25550)) setNonEmpty!25550))

(assert (= setNonEmpty!25550 b!2864325))

(declare-fun m!3283969 () Bool)

(assert (=> start!279086 m!3283969))

(declare-fun m!3283971 () Bool)

(assert (=> b!2864326 m!3283971))

(assert (=> b!2864326 m!3283971))

(declare-fun m!3283973 () Bool)

(assert (=> b!2864326 m!3283973))

(declare-fun m!3283975 () Bool)

(assert (=> b!2864327 m!3283975))

(declare-fun m!3283977 () Bool)

(assert (=> setNonEmpty!25550 m!3283977))

(declare-fun m!3283979 () Bool)

(assert (=> b!2864328 m!3283979))

(assert (=> b!2864328 m!3283979))

(declare-fun m!3283981 () Bool)

(assert (=> b!2864328 m!3283981))

(push 1)

(assert (not start!279086))

(assert (not b!2864327))

(assert (not b!2864325))

(assert (not b!2864328))

(assert (not setNonEmpty!25550))

(assert (not b!2864326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


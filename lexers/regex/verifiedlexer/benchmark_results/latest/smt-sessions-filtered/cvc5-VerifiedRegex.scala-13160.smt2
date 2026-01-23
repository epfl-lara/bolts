; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718514 () Bool)

(assert start!718514)

(declare-fun b!7358256 () Bool)

(declare-fun e!4405647 () Bool)

(declare-fun tp!2090485 () Bool)

(assert (=> b!7358256 (= e!4405647 tp!2090485)))

(declare-fun b!7358258 () Bool)

(declare-fun e!4405646 () Bool)

(declare-fun tp!2090489 () Bool)

(assert (=> b!7358258 (= e!4405646 tp!2090489)))

(declare-fun b!7358259 () Bool)

(declare-fun e!4405645 () Bool)

(declare-fun tp!2090488 () Bool)

(assert (=> b!7358259 (= e!4405645 tp!2090488)))

(declare-fun b!7358260 () Bool)

(declare-fun e!4405643 () Bool)

(declare-fun tp!2090483 () Bool)

(declare-fun tp!2090484 () Bool)

(assert (=> b!7358260 (= e!4405643 (and tp!2090483 tp!2090484))))

(declare-fun e!4405648 () Bool)

(declare-datatypes ((C!38690 0))(
  ( (C!38691 (val!29705 Int)) )
))
(declare-datatypes ((Regex!19208 0))(
  ( (ElementMatch!19208 (c!1367140 C!38690)) (Concat!28053 (regOne!38928 Regex!19208) (regTwo!38928 Regex!19208)) (EmptyExpr!19208) (Star!19208 (reg!19537 Regex!19208)) (EmptyLang!19208) (Union!19208 (regOne!38929 Regex!19208) (regTwo!38929 Regex!19208)) )
))
(declare-fun r1!2370 () Regex!19208)

(declare-fun c!10362 () C!38690)

(declare-datatypes ((List!71704 0))(
  ( (Nil!71580) (Cons!71580 (h!78028 Regex!19208) (t!386147 List!71704)) )
))
(declare-datatypes ((Context!16296 0))(
  ( (Context!16297 (exprs!8648 List!71704)) )
))
(declare-fun cWitness!61 () Context!16296)

(declare-fun b!7358261 () Bool)

(declare-fun ct1!282 () Context!16296)

(declare-fun lt!2613562 () (Set Context!16296))

(assert (=> b!7358261 (= e!4405648 (and (is-ElementMatch!19208 r1!2370) (= c!10362 (c!1367140 r1!2370)) (let ((bdg!289696 (set.insert ct1!282 (as set.empty (Set Context!16296))))) (and (= lt!2613562 bdg!289696) (set.member cWitness!61 bdg!289696) (not (= cWitness!61 ct1!282))))))))

(declare-fun lt!2613560 () (Set Context!16296))

(declare-fun ct2!378 () Context!16296)

(declare-fun derivationStepZipperDown!3034 (Regex!19208 Context!16296 C!38690) (Set Context!16296))

(declare-fun ++!17026 (List!71704 List!71704) List!71704)

(assert (=> b!7358261 (= lt!2613560 (derivationStepZipperDown!3034 r1!2370 (Context!16297 (++!17026 (exprs!8648 ct1!282) (exprs!8648 ct2!378))) c!10362))))

(declare-fun lambda!457182 () Int)

(declare-datatypes ((Unit!165369 0))(
  ( (Unit!165370) )
))
(declare-fun lt!2613561 () Unit!165369)

(declare-fun lemmaConcatPreservesForall!1883 (List!71704 List!71704 Int) Unit!165369)

(assert (=> b!7358261 (= lt!2613561 (lemmaConcatPreservesForall!1883 (exprs!8648 ct1!282) (exprs!8648 ct2!378) lambda!457182))))

(declare-fun b!7358262 () Bool)

(declare-fun tp!2090487 () Bool)

(assert (=> b!7358262 (= e!4405643 tp!2090487)))

(declare-fun b!7358263 () Bool)

(declare-fun tp_is_empty!48661 () Bool)

(assert (=> b!7358263 (= e!4405643 tp_is_empty!48661)))

(declare-fun b!7358264 () Bool)

(declare-fun e!4405644 () Bool)

(assert (=> b!7358264 (= e!4405644 e!4405648)))

(declare-fun res!2970957 () Bool)

(assert (=> b!7358264 (=> (not res!2970957) (not e!4405648))))

(assert (=> b!7358264 (= res!2970957 (set.member cWitness!61 lt!2613562))))

(assert (=> b!7358264 (= lt!2613562 (derivationStepZipperDown!3034 r1!2370 ct1!282 c!10362))))

(declare-fun res!2970958 () Bool)

(assert (=> start!718514 (=> (not res!2970958) (not e!4405644))))

(declare-fun validRegex!9804 (Regex!19208) Bool)

(assert (=> start!718514 (= res!2970958 (validRegex!9804 r1!2370))))

(assert (=> start!718514 e!4405644))

(assert (=> start!718514 tp_is_empty!48661))

(declare-fun inv!91361 (Context!16296) Bool)

(assert (=> start!718514 (and (inv!91361 cWitness!61) e!4405647)))

(assert (=> start!718514 (and (inv!91361 ct1!282) e!4405646)))

(assert (=> start!718514 e!4405643))

(assert (=> start!718514 (and (inv!91361 ct2!378) e!4405645)))

(declare-fun b!7358257 () Bool)

(declare-fun tp!2090486 () Bool)

(declare-fun tp!2090482 () Bool)

(assert (=> b!7358257 (= e!4405643 (and tp!2090486 tp!2090482))))

(assert (= (and start!718514 res!2970958) b!7358264))

(assert (= (and b!7358264 res!2970957) b!7358261))

(assert (= start!718514 b!7358256))

(assert (= start!718514 b!7358258))

(assert (= (and start!718514 (is-ElementMatch!19208 r1!2370)) b!7358263))

(assert (= (and start!718514 (is-Concat!28053 r1!2370)) b!7358257))

(assert (= (and start!718514 (is-Star!19208 r1!2370)) b!7358262))

(assert (= (and start!718514 (is-Union!19208 r1!2370)) b!7358260))

(assert (= start!718514 b!7358259))

(declare-fun m!8017214 () Bool)

(assert (=> b!7358261 m!8017214))

(declare-fun m!8017216 () Bool)

(assert (=> b!7358261 m!8017216))

(declare-fun m!8017218 () Bool)

(assert (=> b!7358261 m!8017218))

(declare-fun m!8017220 () Bool)

(assert (=> b!7358261 m!8017220))

(declare-fun m!8017222 () Bool)

(assert (=> b!7358261 m!8017222))

(declare-fun m!8017224 () Bool)

(assert (=> b!7358264 m!8017224))

(declare-fun m!8017226 () Bool)

(assert (=> b!7358264 m!8017226))

(declare-fun m!8017228 () Bool)

(assert (=> start!718514 m!8017228))

(declare-fun m!8017230 () Bool)

(assert (=> start!718514 m!8017230))

(declare-fun m!8017232 () Bool)

(assert (=> start!718514 m!8017232))

(declare-fun m!8017234 () Bool)

(assert (=> start!718514 m!8017234))

(push 1)

(assert tp_is_empty!48661)

(assert (not b!7358261))

(assert (not b!7358257))

(assert (not b!7358260))

(assert (not start!718514))

(assert (not b!7358264))

(assert (not b!7358259))

(assert (not b!7358256))

(assert (not b!7358262))

(assert (not b!7358258))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!231864 () Bool)

(assert start!231864)

(declare-fun b!2362192 () Bool)

(assert (=> b!2362192 true))

(assert (=> b!2362192 true))

(declare-fun b!2362191 () Bool)

(declare-fun e!1508679 () Bool)

(declare-fun tp!755481 () Bool)

(declare-fun tp!755476 () Bool)

(assert (=> b!2362191 (= e!1508679 (and tp!755481 tp!755476))))

(declare-fun e!1508681 () Bool)

(assert (=> b!2362192 (= e!1508681 true)))

(declare-datatypes ((C!13986 0))(
  ( (C!13987 (val!8235 Int)) )
))
(declare-datatypes ((Regex!6914 0))(
  ( (ElementMatch!6914 (c!375436 C!13986)) (Concat!11550 (regOne!14340 Regex!6914) (regTwo!14340 Regex!6914)) (EmptyExpr!6914) (Star!6914 (reg!7243 Regex!6914)) (EmptyLang!6914) (Union!6914 (regOne!14341 Regex!6914) (regTwo!14341 Regex!6914)) )
))
(declare-fun r!13927 () Regex!6914)

(declare-datatypes ((List!28066 0))(
  ( (Nil!27968) (Cons!27968 (h!33369 C!13986) (t!208043 List!28066)) )
))
(declare-fun s!9460 () List!28066)

(declare-fun lambda!86903 () Int)

(declare-datatypes ((tuple2!27692 0))(
  ( (tuple2!27693 (_1!16387 List!28066) (_2!16387 List!28066)) )
))
(declare-datatypes ((Option!5457 0))(
  ( (None!5456) (Some!5456 (v!30864 tuple2!27692)) )
))
(declare-fun isDefined!4285 (Option!5457) Bool)

(declare-fun findConcatSeparation!565 (Regex!6914 Regex!6914 List!28066 List!28066 List!28066) Option!5457)

(declare-fun Exists!976 (Int) Bool)

(assert (=> b!2362192 (= (isDefined!4285 (findConcatSeparation!565 (regOne!14340 r!13927) (regTwo!14340 r!13927) Nil!27968 s!9460 s!9460)) (Exists!976 lambda!86903))))

(declare-datatypes ((Unit!40863 0))(
  ( (Unit!40864) )
))
(declare-fun lt!864680 () Unit!40863)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!565 (Regex!6914 Regex!6914 List!28066) Unit!40863)

(assert (=> b!2362192 (= lt!864680 (lemmaFindConcatSeparationEquivalentToExists!565 (regOne!14340 r!13927) (regTwo!14340 r!13927) s!9460))))

(declare-fun b!2362193 () Bool)

(declare-fun res!1002515 () Bool)

(declare-fun e!1508680 () Bool)

(assert (=> b!2362193 (=> (not res!1002515) (not e!1508680))))

(declare-datatypes ((List!28067 0))(
  ( (Nil!27969) (Cons!27969 (h!33370 Regex!6914) (t!208044 List!28067)) )
))
(declare-fun l!9164 () List!28067)

(declare-fun generalisedConcat!15 (List!28067) Regex!6914)

(assert (=> b!2362193 (= res!1002515 (= r!13927 (generalisedConcat!15 l!9164)))))

(declare-fun b!2362194 () Bool)

(declare-fun e!1508682 () Bool)

(declare-fun tp!755474 () Bool)

(declare-fun tp!755480 () Bool)

(assert (=> b!2362194 (= e!1508682 (and tp!755474 tp!755480))))

(declare-fun res!1002514 () Bool)

(assert (=> start!231864 (=> (not res!1002514) (not e!1508680))))

(declare-fun lambda!86902 () Int)

(declare-fun forall!5548 (List!28067 Int) Bool)

(assert (=> start!231864 (= res!1002514 (forall!5548 l!9164 lambda!86902))))

(assert (=> start!231864 e!1508680))

(assert (=> start!231864 e!1508682))

(assert (=> start!231864 e!1508679))

(declare-fun e!1508683 () Bool)

(assert (=> start!231864 e!1508683))

(declare-fun b!2362195 () Bool)

(assert (=> b!2362195 (= e!1508680 (not e!1508681))))

(declare-fun res!1002513 () Bool)

(assert (=> b!2362195 (=> res!1002513 e!1508681)))

(assert (=> b!2362195 (= res!1002513 (not (is-Concat!11550 r!13927)))))

(declare-fun matchR!3031 (Regex!6914 List!28066) Bool)

(declare-fun matchRSpec!763 (Regex!6914 List!28066) Bool)

(assert (=> b!2362195 (= (matchR!3031 r!13927 s!9460) (matchRSpec!763 r!13927 s!9460))))

(declare-fun lt!864679 () Unit!40863)

(declare-fun mainMatchTheorem!763 (Regex!6914 List!28066) Unit!40863)

(assert (=> b!2362195 (= lt!864679 (mainMatchTheorem!763 r!13927 s!9460))))

(declare-fun b!2362196 () Bool)

(declare-fun tp!755475 () Bool)

(assert (=> b!2362196 (= e!1508679 tp!755475)))

(declare-fun b!2362197 () Bool)

(declare-fun tp_is_empty!11241 () Bool)

(declare-fun tp!755478 () Bool)

(assert (=> b!2362197 (= e!1508683 (and tp_is_empty!11241 tp!755478))))

(declare-fun b!2362198 () Bool)

(assert (=> b!2362198 (= e!1508679 tp_is_empty!11241)))

(declare-fun b!2362199 () Bool)

(declare-fun tp!755477 () Bool)

(declare-fun tp!755479 () Bool)

(assert (=> b!2362199 (= e!1508679 (and tp!755477 tp!755479))))

(assert (= (and start!231864 res!1002514) b!2362193))

(assert (= (and b!2362193 res!1002515) b!2362195))

(assert (= (and b!2362195 (not res!1002513)) b!2362192))

(assert (= (and start!231864 (is-Cons!27969 l!9164)) b!2362194))

(assert (= (and start!231864 (is-ElementMatch!6914 r!13927)) b!2362198))

(assert (= (and start!231864 (is-Concat!11550 r!13927)) b!2362199))

(assert (= (and start!231864 (is-Star!6914 r!13927)) b!2362196))

(assert (= (and start!231864 (is-Union!6914 r!13927)) b!2362191))

(assert (= (and start!231864 (is-Cons!27968 s!9460)) b!2362197))

(declare-fun m!2774275 () Bool)

(assert (=> b!2362192 m!2774275))

(assert (=> b!2362192 m!2774275))

(declare-fun m!2774277 () Bool)

(assert (=> b!2362192 m!2774277))

(declare-fun m!2774279 () Bool)

(assert (=> b!2362192 m!2774279))

(declare-fun m!2774281 () Bool)

(assert (=> b!2362192 m!2774281))

(declare-fun m!2774283 () Bool)

(assert (=> b!2362193 m!2774283))

(declare-fun m!2774285 () Bool)

(assert (=> start!231864 m!2774285))

(declare-fun m!2774287 () Bool)

(assert (=> b!2362195 m!2774287))

(declare-fun m!2774289 () Bool)

(assert (=> b!2362195 m!2774289))

(declare-fun m!2774291 () Bool)

(assert (=> b!2362195 m!2774291))

(push 1)

(assert (not b!2362192))

(assert (not b!2362195))

(assert (not b!2362196))

(assert (not b!2362191))

(assert (not b!2362197))

(assert (not b!2362194))

(assert (not b!2362199))

(assert (not b!2362193))

(assert tp_is_empty!11241)

(assert (not start!231864))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


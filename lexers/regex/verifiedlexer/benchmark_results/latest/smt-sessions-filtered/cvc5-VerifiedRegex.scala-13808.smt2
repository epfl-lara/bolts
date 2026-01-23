; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735138 () Bool)

(assert start!735138)

(declare-fun b!7635317 () Bool)

(assert (=> b!7635317 true))

(assert (=> b!7635317 true))

(declare-fun b!7635308 () Bool)

(declare-fun e!4538961 () Bool)

(declare-fun tp!2229019 () Bool)

(declare-fun tp!2229021 () Bool)

(assert (=> b!7635308 (= e!4538961 (and tp!2229019 tp!2229021))))

(declare-fun b!7635309 () Bool)

(declare-fun tp!2229018 () Bool)

(assert (=> b!7635309 (= e!4538961 tp!2229018)))

(declare-fun b!7635310 () Bool)

(declare-fun res!3058059 () Bool)

(declare-fun e!4538957 () Bool)

(assert (=> b!7635310 (=> (not res!3058059) (not e!4538957))))

(declare-datatypes ((C!41146 0))(
  ( (C!41147 (val!31013 Int)) )
))
(declare-datatypes ((Regex!20410 0))(
  ( (ElementMatch!20410 (c!1406478 C!41146)) (Concat!29255 (regOne!41332 Regex!20410) (regTwo!41332 Regex!20410)) (EmptyExpr!20410) (Star!20410 (reg!20739 Regex!20410)) (EmptyLang!20410) (Union!20410 (regOne!41333 Regex!20410) (regTwo!41333 Regex!20410)) )
))
(declare-fun r!14126 () Regex!20410)

(assert (=> b!7635310 (= res!3058059 (and (not (is-EmptyExpr!20410 r!14126)) (not (is-EmptyLang!20410 r!14126)) (not (is-ElementMatch!20410 r!14126)) (not (is-Union!20410 r!14126)) (not (is-Star!20410 r!14126))))))

(declare-fun res!3058058 () Bool)

(assert (=> start!735138 (=> (not res!3058058) (not e!4538957))))

(declare-fun validRegex!10828 (Regex!20410) Bool)

(assert (=> start!735138 (= res!3058058 (validRegex!10828 r!14126))))

(assert (=> start!735138 e!4538957))

(assert (=> start!735138 e!4538961))

(declare-fun e!4538959 () Bool)

(assert (=> start!735138 e!4538959))

(declare-fun b!7635311 () Bool)

(declare-fun e!4538958 () Bool)

(assert (=> b!7635311 (= e!4538958 false)))

(declare-fun b!7635312 () Bool)

(declare-datatypes ((Unit!167792 0))(
  ( (Unit!167793) )
))
(declare-fun e!4538960 () Unit!167792)

(declare-fun Unit!167794 () Unit!167792)

(assert (=> b!7635312 (= e!4538960 Unit!167794)))

(declare-fun b!7635313 () Bool)

(declare-fun e!4538956 () Bool)

(assert (=> b!7635313 (= e!4538956 true)))

(declare-fun lt!2659602 () Unit!167792)

(assert (=> b!7635313 (= lt!2659602 e!4538960)))

(declare-fun c!1406477 () Bool)

(declare-fun lt!2659604 () Bool)

(assert (=> b!7635313 (= c!1406477 lt!2659604)))

(declare-fun b!7635314 () Bool)

(declare-fun Unit!167795 () Unit!167792)

(assert (=> b!7635314 (= e!4538960 Unit!167795)))

(declare-datatypes ((List!73261 0))(
  ( (Nil!73137) (Cons!73137 (h!79585 C!41146) (t!387996 List!73261)) )
))
(declare-datatypes ((tuple2!69378 0))(
  ( (tuple2!69379 (_1!37992 List!73261) (_2!37992 List!73261)) )
))
(declare-fun lt!2659606 () tuple2!69378)

(declare-datatypes ((Option!17483 0))(
  ( (None!17482) (Some!17482 (v!54617 tuple2!69378)) )
))
(declare-fun lt!2659601 () Option!17483)

(declare-fun get!25880 (Option!17483) tuple2!69378)

(assert (=> b!7635314 (= lt!2659606 (get!25880 lt!2659601))))

(declare-fun s!9605 () List!73261)

(declare-fun lt!2659605 () Unit!167792)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!167 (Regex!20410 Regex!20410 List!73261 List!73261 List!73261) Unit!167792)

(assert (=> b!7635314 (= lt!2659605 (lemmaFindSeparationIsDefinedThenConcatMatches!167 (regOne!41332 r!14126) (regTwo!41332 r!14126) (_1!37992 lt!2659606) (_2!37992 lt!2659606) s!9605))))

(declare-fun res!3058060 () Bool)

(declare-fun matchR!9913 (Regex!20410 List!73261) Bool)

(declare-fun ++!17690 (List!73261 List!73261) List!73261)

(assert (=> b!7635314 (= res!3058060 (matchR!9913 r!14126 (++!17690 (_1!37992 lt!2659606) (_2!37992 lt!2659606))))))

(assert (=> b!7635314 (=> (not res!3058060) (not e!4538958))))

(assert (=> b!7635314 e!4538958))

(declare-fun b!7635315 () Bool)

(declare-fun tp!2229023 () Bool)

(declare-fun tp!2229022 () Bool)

(assert (=> b!7635315 (= e!4538961 (and tp!2229023 tp!2229022))))

(declare-fun b!7635316 () Bool)

(declare-fun tp_is_empty!51175 () Bool)

(declare-fun tp!2229020 () Bool)

(assert (=> b!7635316 (= e!4538959 (and tp_is_empty!51175 tp!2229020))))

(assert (=> b!7635317 (= e!4538957 (not e!4538956))))

(declare-fun res!3058057 () Bool)

(assert (=> b!7635317 (=> res!3058057 e!4538956)))

(assert (=> b!7635317 (= res!3058057 (matchR!9913 r!14126 s!9605))))

(declare-fun lambda!469344 () Int)

(declare-fun Exists!4564 (Int) Bool)

(assert (=> b!7635317 (= lt!2659604 (Exists!4564 lambda!469344))))

(declare-fun isDefined!14099 (Option!17483) Bool)

(assert (=> b!7635317 (= lt!2659604 (isDefined!14099 lt!2659601))))

(declare-fun findConcatSeparation!3513 (Regex!20410 Regex!20410 List!73261 List!73261 List!73261) Option!17483)

(assert (=> b!7635317 (= lt!2659601 (findConcatSeparation!3513 (regOne!41332 r!14126) (regTwo!41332 r!14126) Nil!73137 s!9605 s!9605))))

(declare-fun lt!2659603 () Unit!167792)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3271 (Regex!20410 Regex!20410 List!73261) Unit!167792)

(assert (=> b!7635317 (= lt!2659603 (lemmaFindConcatSeparationEquivalentToExists!3271 (regOne!41332 r!14126) (regTwo!41332 r!14126) s!9605))))

(declare-fun b!7635318 () Bool)

(assert (=> b!7635318 (= e!4538961 tp_is_empty!51175)))

(assert (= (and start!735138 res!3058058) b!7635310))

(assert (= (and b!7635310 res!3058059) b!7635317))

(assert (= (and b!7635317 (not res!3058057)) b!7635313))

(assert (= (and b!7635313 c!1406477) b!7635314))

(assert (= (and b!7635313 (not c!1406477)) b!7635312))

(assert (= (and b!7635314 res!3058060) b!7635311))

(assert (= (and start!735138 (is-ElementMatch!20410 r!14126)) b!7635318))

(assert (= (and start!735138 (is-Concat!29255 r!14126)) b!7635308))

(assert (= (and start!735138 (is-Star!20410 r!14126)) b!7635309))

(assert (= (and start!735138 (is-Union!20410 r!14126)) b!7635315))

(assert (= (and start!735138 (is-Cons!73137 s!9605)) b!7635316))

(declare-fun m!8160226 () Bool)

(assert (=> start!735138 m!8160226))

(declare-fun m!8160228 () Bool)

(assert (=> b!7635314 m!8160228))

(declare-fun m!8160230 () Bool)

(assert (=> b!7635314 m!8160230))

(declare-fun m!8160232 () Bool)

(assert (=> b!7635314 m!8160232))

(assert (=> b!7635314 m!8160232))

(declare-fun m!8160234 () Bool)

(assert (=> b!7635314 m!8160234))

(declare-fun m!8160236 () Bool)

(assert (=> b!7635317 m!8160236))

(declare-fun m!8160238 () Bool)

(assert (=> b!7635317 m!8160238))

(declare-fun m!8160240 () Bool)

(assert (=> b!7635317 m!8160240))

(declare-fun m!8160242 () Bool)

(assert (=> b!7635317 m!8160242))

(declare-fun m!8160244 () Bool)

(assert (=> b!7635317 m!8160244))

(push 1)

(assert (not b!7635314))

(assert tp_is_empty!51175)

(assert (not b!7635316))

(assert (not start!735138))

(assert (not b!7635308))

(assert (not b!7635309))

(assert (not b!7635317))

(assert (not b!7635315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


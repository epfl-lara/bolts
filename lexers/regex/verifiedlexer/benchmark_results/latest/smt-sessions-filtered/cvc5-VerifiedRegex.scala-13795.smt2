; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734862 () Bool)

(assert start!734862)

(declare-fun b!7631534 () Bool)

(assert (=> b!7631534 true))

(assert (=> b!7631534 true))

(declare-fun b!7631532 () Bool)

(declare-fun e!4536996 () Bool)

(declare-fun tp!2228002 () Bool)

(assert (=> b!7631532 (= e!4536996 tp!2228002)))

(declare-fun b!7631533 () Bool)

(declare-fun tp!2228000 () Bool)

(declare-fun tp!2228001 () Bool)

(assert (=> b!7631533 (= e!4536996 (and tp!2228000 tp!2228001))))

(declare-fun res!3056256 () Bool)

(declare-fun e!4536997 () Bool)

(assert (=> start!734862 (=> (not res!3056256) (not e!4536997))))

(declare-datatypes ((C!41094 0))(
  ( (C!41095 (val!30987 Int)) )
))
(declare-datatypes ((Regex!20384 0))(
  ( (ElementMatch!20384 (c!1405969 C!41094)) (Concat!29229 (regOne!41280 Regex!20384) (regTwo!41280 Regex!20384)) (EmptyExpr!20384) (Star!20384 (reg!20713 Regex!20384)) (EmptyLang!20384) (Union!20384 (regOne!41281 Regex!20384) (regTwo!41281 Regex!20384)) )
))
(declare-fun r!14126 () Regex!20384)

(declare-fun validRegex!10802 (Regex!20384) Bool)

(assert (=> start!734862 (= res!3056256 (validRegex!10802 r!14126))))

(assert (=> start!734862 e!4536997))

(assert (=> start!734862 e!4536996))

(declare-fun e!4536998 () Bool)

(assert (=> start!734862 e!4536998))

(assert (=> b!7631534 (= e!4536997 (not true))))

(declare-fun lt!2658812 () Bool)

(declare-datatypes ((List!73235 0))(
  ( (Nil!73111) (Cons!73111 (h!79559 C!41094) (t!387970 List!73235)) )
))
(declare-fun s!9605 () List!73235)

(declare-fun matchR!9887 (Regex!20384 List!73235) Bool)

(assert (=> b!7631534 (= lt!2658812 (matchR!9887 r!14126 s!9605))))

(declare-fun lambda!469108 () Int)

(declare-datatypes ((tuple2!69326 0))(
  ( (tuple2!69327 (_1!37966 List!73235) (_2!37966 List!73235)) )
))
(declare-datatypes ((Option!17457 0))(
  ( (None!17456) (Some!17456 (v!54591 tuple2!69326)) )
))
(declare-fun isDefined!14073 (Option!17457) Bool)

(declare-fun findConcatSeparation!3487 (Regex!20384 Regex!20384 List!73235 List!73235 List!73235) Option!17457)

(declare-fun Exists!4538 (Int) Bool)

(assert (=> b!7631534 (= (isDefined!14073 (findConcatSeparation!3487 (regOne!41280 r!14126) (regTwo!41280 r!14126) Nil!73111 s!9605 s!9605)) (Exists!4538 lambda!469108))))

(declare-datatypes ((Unit!167696 0))(
  ( (Unit!167697) )
))
(declare-fun lt!2658811 () Unit!167696)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3245 (Regex!20384 Regex!20384 List!73235) Unit!167696)

(assert (=> b!7631534 (= lt!2658811 (lemmaFindConcatSeparationEquivalentToExists!3245 (regOne!41280 r!14126) (regTwo!41280 r!14126) s!9605))))

(declare-fun b!7631535 () Bool)

(declare-fun tp_is_empty!51123 () Bool)

(declare-fun tp!2227998 () Bool)

(assert (=> b!7631535 (= e!4536998 (and tp_is_empty!51123 tp!2227998))))

(declare-fun b!7631536 () Bool)

(declare-fun tp!2228003 () Bool)

(declare-fun tp!2227999 () Bool)

(assert (=> b!7631536 (= e!4536996 (and tp!2228003 tp!2227999))))

(declare-fun b!7631537 () Bool)

(declare-fun res!3056255 () Bool)

(assert (=> b!7631537 (=> (not res!3056255) (not e!4536997))))

(assert (=> b!7631537 (= res!3056255 (and (not (is-EmptyExpr!20384 r!14126)) (not (is-EmptyLang!20384 r!14126)) (not (is-ElementMatch!20384 r!14126)) (not (is-Union!20384 r!14126)) (not (is-Star!20384 r!14126))))))

(declare-fun b!7631538 () Bool)

(assert (=> b!7631538 (= e!4536996 tp_is_empty!51123)))

(assert (= (and start!734862 res!3056256) b!7631537))

(assert (= (and b!7631537 res!3056255) b!7631534))

(assert (= (and start!734862 (is-ElementMatch!20384 r!14126)) b!7631538))

(assert (= (and start!734862 (is-Concat!29229 r!14126)) b!7631536))

(assert (= (and start!734862 (is-Star!20384 r!14126)) b!7631532))

(assert (= (and start!734862 (is-Union!20384 r!14126)) b!7631533))

(assert (= (and start!734862 (is-Cons!73111 s!9605)) b!7631535))

(declare-fun m!8158230 () Bool)

(assert (=> start!734862 m!8158230))

(declare-fun m!8158232 () Bool)

(assert (=> b!7631534 m!8158232))

(declare-fun m!8158234 () Bool)

(assert (=> b!7631534 m!8158234))

(declare-fun m!8158236 () Bool)

(assert (=> b!7631534 m!8158236))

(declare-fun m!8158238 () Bool)

(assert (=> b!7631534 m!8158238))

(assert (=> b!7631534 m!8158236))

(declare-fun m!8158240 () Bool)

(assert (=> b!7631534 m!8158240))

(push 1)

(assert (not b!7631532))

(assert (not b!7631533))

(assert (not b!7631534))

(assert (not start!734862))

(assert (not b!7631535))

(assert (not b!7631536))

(assert tp_is_empty!51123)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


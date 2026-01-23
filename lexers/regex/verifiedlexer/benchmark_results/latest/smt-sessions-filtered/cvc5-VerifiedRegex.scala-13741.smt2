; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733758 () Bool)

(assert start!733758)

(declare-fun b!7616750 () Bool)

(assert (=> b!7616750 true))

(assert (=> b!7616750 true))

(declare-fun b!7616742 () Bool)

(declare-fun e!4529443 () Bool)

(declare-fun tp_is_empty!50907 () Bool)

(assert (=> b!7616742 (= e!4529443 tp_is_empty!50907)))

(declare-fun b!7616743 () Bool)

(declare-fun res!3049138 () Bool)

(declare-fun e!4529442 () Bool)

(assert (=> b!7616743 (=> (not res!3049138) (not e!4529442))))

(declare-datatypes ((C!40878 0))(
  ( (C!40879 (val!30879 Int)) )
))
(declare-datatypes ((List!73129 0))(
  ( (Nil!73005) (Cons!73005 (h!79453 C!40878) (t!387864 List!73129)) )
))
(declare-fun s!9605 () List!73129)

(declare-fun isEmpty!41616 (List!73129) Bool)

(assert (=> b!7616743 (= res!3049138 (not (isEmpty!41616 s!9605)))))

(declare-fun b!7616744 () Bool)

(declare-fun e!4529440 () Bool)

(assert (=> b!7616744 (= e!4529440 true)))

(declare-datatypes ((Regex!20276 0))(
  ( (ElementMatch!20276 (c!1403941 C!40878)) (Concat!29121 (regOne!41064 Regex!20276) (regTwo!41064 Regex!20276)) (EmptyExpr!20276) (Star!20276 (reg!20605 Regex!20276)) (EmptyLang!20276) (Union!20276 (regOne!41065 Regex!20276) (regTwo!41065 Regex!20276)) )
))
(declare-fun r!14126 () Regex!20276)

(declare-datatypes ((tuple2!69114 0))(
  ( (tuple2!69115 (_1!37860 List!73129) (_2!37860 List!73129)) )
))
(declare-fun lt!2655471 () tuple2!69114)

(declare-fun matchR!9783 (Regex!20276 List!73129) Bool)

(declare-fun matchRSpec!4475 (Regex!20276 List!73129) Bool)

(assert (=> b!7616744 (= (matchR!9783 (reg!20605 r!14126) (_1!37860 lt!2655471)) (matchRSpec!4475 (reg!20605 r!14126) (_1!37860 lt!2655471)))))

(declare-datatypes ((Unit!167384 0))(
  ( (Unit!167385) )
))
(declare-fun lt!2655472 () Unit!167384)

(declare-fun mainMatchTheorem!4469 (Regex!20276 List!73129) Unit!167384)

(assert (=> b!7616744 (= lt!2655472 (mainMatchTheorem!4469 (reg!20605 r!14126) (_1!37860 lt!2655471)))))

(declare-datatypes ((Option!17351 0))(
  ( (None!17350) (Some!17350 (v!54485 tuple2!69114)) )
))
(declare-fun lt!2655473 () Option!17351)

(declare-fun get!25726 (Option!17351) tuple2!69114)

(assert (=> b!7616744 (= lt!2655471 (get!25726 lt!2655473))))

(declare-fun b!7616745 () Bool)

(declare-fun e!4529441 () Bool)

(declare-fun tp!2224141 () Bool)

(assert (=> b!7616745 (= e!4529441 (and tp_is_empty!50907 tp!2224141))))

(declare-fun b!7616746 () Bool)

(declare-fun tp!2224144 () Bool)

(assert (=> b!7616746 (= e!4529443 tp!2224144)))

(declare-fun res!3049140 () Bool)

(assert (=> start!733758 (=> (not res!3049140) (not e!4529442))))

(declare-fun validRegex!10696 (Regex!20276) Bool)

(assert (=> start!733758 (= res!3049140 (validRegex!10696 r!14126))))

(assert (=> start!733758 e!4529442))

(assert (=> start!733758 e!4529443))

(assert (=> start!733758 e!4529441))

(declare-fun b!7616747 () Bool)

(declare-fun res!3049139 () Bool)

(assert (=> b!7616747 (=> (not res!3049139) (not e!4529442))))

(assert (=> b!7616747 (= res!3049139 (and (not (is-EmptyExpr!20276 r!14126)) (not (is-EmptyLang!20276 r!14126)) (not (is-ElementMatch!20276 r!14126)) (not (is-Union!20276 r!14126)) (is-Star!20276 r!14126)))))

(declare-fun b!7616748 () Bool)

(declare-fun tp!2224143 () Bool)

(declare-fun tp!2224145 () Bool)

(assert (=> b!7616748 (= e!4529443 (and tp!2224143 tp!2224145))))

(declare-fun b!7616749 () Bool)

(declare-fun tp!2224142 () Bool)

(declare-fun tp!2224140 () Bool)

(assert (=> b!7616749 (= e!4529443 (and tp!2224142 tp!2224140))))

(assert (=> b!7616750 (= e!4529442 (not e!4529440))))

(declare-fun res!3049137 () Bool)

(assert (=> b!7616750 (=> res!3049137 e!4529440)))

(declare-fun lt!2655470 () Bool)

(assert (=> b!7616750 (= res!3049137 (not lt!2655470))))

(declare-fun lambda!468162 () Int)

(declare-fun Exists!4432 (Int) Bool)

(assert (=> b!7616750 (= lt!2655470 (Exists!4432 lambda!468162))))

(declare-fun isDefined!13967 (Option!17351) Bool)

(assert (=> b!7616750 (= lt!2655470 (isDefined!13967 lt!2655473))))

(declare-fun findConcatSeparation!3381 (Regex!20276 Regex!20276 List!73129 List!73129 List!73129) Option!17351)

(assert (=> b!7616750 (= lt!2655473 (findConcatSeparation!3381 (reg!20605 r!14126) r!14126 Nil!73005 s!9605 s!9605))))

(declare-fun lt!2655469 () Unit!167384)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3139 (Regex!20276 Regex!20276 List!73129) Unit!167384)

(assert (=> b!7616750 (= lt!2655469 (lemmaFindConcatSeparationEquivalentToExists!3139 (reg!20605 r!14126) r!14126 s!9605))))

(assert (= (and start!733758 res!3049140) b!7616747))

(assert (= (and b!7616747 res!3049139) b!7616743))

(assert (= (and b!7616743 res!3049138) b!7616750))

(assert (= (and b!7616750 (not res!3049137)) b!7616744))

(assert (= (and start!733758 (is-ElementMatch!20276 r!14126)) b!7616742))

(assert (= (and start!733758 (is-Concat!29121 r!14126)) b!7616749))

(assert (= (and start!733758 (is-Star!20276 r!14126)) b!7616746))

(assert (= (and start!733758 (is-Union!20276 r!14126)) b!7616748))

(assert (= (and start!733758 (is-Cons!73005 s!9605)) b!7616745))

(declare-fun m!8149954 () Bool)

(assert (=> b!7616743 m!8149954))

(declare-fun m!8149956 () Bool)

(assert (=> b!7616744 m!8149956))

(declare-fun m!8149958 () Bool)

(assert (=> b!7616744 m!8149958))

(declare-fun m!8149960 () Bool)

(assert (=> b!7616744 m!8149960))

(declare-fun m!8149962 () Bool)

(assert (=> b!7616744 m!8149962))

(declare-fun m!8149964 () Bool)

(assert (=> start!733758 m!8149964))

(declare-fun m!8149966 () Bool)

(assert (=> b!7616750 m!8149966))

(declare-fun m!8149968 () Bool)

(assert (=> b!7616750 m!8149968))

(declare-fun m!8149970 () Bool)

(assert (=> b!7616750 m!8149970))

(declare-fun m!8149972 () Bool)

(assert (=> b!7616750 m!8149972))

(push 1)

(assert (not b!7616749))

(assert (not start!733758))

(assert (not b!7616748))

(assert tp_is_empty!50907)

(assert (not b!7616745))

(assert (not b!7616744))

(assert (not b!7616746))

(assert (not b!7616750))

(assert (not b!7616743))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


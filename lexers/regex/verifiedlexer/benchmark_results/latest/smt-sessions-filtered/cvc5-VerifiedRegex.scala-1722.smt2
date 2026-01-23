; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!86228 () Bool)

(assert start!86228)

(declare-fun b!970056 () Bool)

(assert (=> b!970056 true))

(assert (=> b!970056 true))

(declare-fun e!625429 () Bool)

(assert (=> b!970056 (= e!625429 true)))

(declare-datatypes ((C!5974 0))(
  ( (C!5975 (val!3235 Int)) )
))
(declare-datatypes ((Regex!2702 0))(
  ( (ElementMatch!2702 (c!158181 C!5974)) (Concat!4535 (regOne!5916 Regex!2702) (regTwo!5916 Regex!2702)) (EmptyExpr!2702) (Star!2702 (reg!3031 Regex!2702)) (EmptyLang!2702) (Union!2702 (regOne!5917 Regex!2702) (regTwo!5917 Regex!2702)) )
))
(declare-fun r!15766 () Regex!2702)

(declare-datatypes ((List!9932 0))(
  ( (Nil!9916) (Cons!9916 (h!15317 C!5974) (t!100978 List!9932)) )
))
(declare-fun s!10566 () List!9932)

(declare-fun lambda!34297 () Int)

(declare-datatypes ((tuple2!11270 0))(
  ( (tuple2!11271 (_1!6461 List!9932) (_2!6461 List!9932)) )
))
(declare-datatypes ((Option!2277 0))(
  ( (None!2276) (Some!2276 (v!19693 tuple2!11270)) )
))
(declare-fun isDefined!1919 (Option!2277) Bool)

(declare-fun findConcatSeparation!383 (Regex!2702 Regex!2702 List!9932 List!9932 List!9932) Option!2277)

(declare-fun Exists!441 (Int) Bool)

(assert (=> b!970056 (= (isDefined!1919 (findConcatSeparation!383 EmptyExpr!2702 (regTwo!5916 r!15766) Nil!9916 s!10566 s!10566)) (Exists!441 lambda!34297))))

(declare-datatypes ((Unit!15063 0))(
  ( (Unit!15064) )
))
(declare-fun lt!348764 () Unit!15063)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!383 (Regex!2702 Regex!2702 List!9932) Unit!15063)

(assert (=> b!970056 (= lt!348764 (lemmaFindConcatSeparationEquivalentToExists!383 EmptyExpr!2702 (regTwo!5916 r!15766) s!10566))))

(declare-fun b!970057 () Bool)

(declare-fun e!625426 () Bool)

(declare-fun tp_is_empty!5047 () Bool)

(declare-fun tp!297201 () Bool)

(assert (=> b!970057 (= e!625426 (and tp_is_empty!5047 tp!297201))))

(declare-fun b!970058 () Bool)

(declare-fun e!625427 () Bool)

(declare-fun tp!297200 () Bool)

(assert (=> b!970058 (= e!625427 tp!297200)))

(declare-fun res!440945 () Bool)

(declare-fun e!625428 () Bool)

(assert (=> start!86228 (=> (not res!440945) (not e!625428))))

(declare-fun validRegex!1171 (Regex!2702) Bool)

(assert (=> start!86228 (= res!440945 (validRegex!1171 r!15766))))

(assert (=> start!86228 e!625428))

(assert (=> start!86228 e!625427))

(assert (=> start!86228 e!625426))

(declare-fun b!970059 () Bool)

(declare-fun tp!297199 () Bool)

(declare-fun tp!297202 () Bool)

(assert (=> b!970059 (= e!625427 (and tp!297199 tp!297202))))

(declare-fun b!970060 () Bool)

(assert (=> b!970060 (= e!625428 (not e!625429))))

(declare-fun res!440946 () Bool)

(assert (=> b!970060 (=> res!440946 e!625429)))

(declare-fun lt!348763 () Bool)

(assert (=> b!970060 (= res!440946 (or (not lt!348763) (not (is-Concat!4535 r!15766)) (not (is-EmptyExpr!2702 (regOne!5916 r!15766)))))))

(declare-fun matchRSpec!501 (Regex!2702 List!9932) Bool)

(assert (=> b!970060 (= lt!348763 (matchRSpec!501 r!15766 s!10566))))

(declare-fun matchR!1238 (Regex!2702 List!9932) Bool)

(assert (=> b!970060 (= lt!348763 (matchR!1238 r!15766 s!10566))))

(declare-fun lt!348762 () Unit!15063)

(declare-fun mainMatchTheorem!501 (Regex!2702 List!9932) Unit!15063)

(assert (=> b!970060 (= lt!348762 (mainMatchTheorem!501 r!15766 s!10566))))

(declare-fun b!970061 () Bool)

(assert (=> b!970061 (= e!625427 tp_is_empty!5047)))

(declare-fun b!970062 () Bool)

(declare-fun tp!297197 () Bool)

(declare-fun tp!297198 () Bool)

(assert (=> b!970062 (= e!625427 (and tp!297197 tp!297198))))

(assert (= (and start!86228 res!440945) b!970060))

(assert (= (and b!970060 (not res!440946)) b!970056))

(assert (= (and start!86228 (is-ElementMatch!2702 r!15766)) b!970061))

(assert (= (and start!86228 (is-Concat!4535 r!15766)) b!970062))

(assert (= (and start!86228 (is-Star!2702 r!15766)) b!970058))

(assert (= (and start!86228 (is-Union!2702 r!15766)) b!970059))

(assert (= (and start!86228 (is-Cons!9916 s!10566)) b!970057))

(declare-fun m!1174569 () Bool)

(assert (=> b!970056 m!1174569))

(assert (=> b!970056 m!1174569))

(declare-fun m!1174571 () Bool)

(assert (=> b!970056 m!1174571))

(declare-fun m!1174573 () Bool)

(assert (=> b!970056 m!1174573))

(declare-fun m!1174575 () Bool)

(assert (=> b!970056 m!1174575))

(declare-fun m!1174577 () Bool)

(assert (=> start!86228 m!1174577))

(declare-fun m!1174579 () Bool)

(assert (=> b!970060 m!1174579))

(declare-fun m!1174581 () Bool)

(assert (=> b!970060 m!1174581))

(declare-fun m!1174583 () Bool)

(assert (=> b!970060 m!1174583))

(push 1)

(assert (not b!970057))

(assert (not b!970062))

(assert (not b!970060))

(assert (not b!970059))

(assert (not b!970056))

(assert (not b!970058))

(assert (not start!86228))

(assert tp_is_empty!5047)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!83224 () Bool)

(assert start!83224)

(declare-fun b!928980 () Bool)

(declare-fun e!603975 () Bool)

(declare-fun tp_is_empty!4671 () Bool)

(assert (=> b!928980 (= e!603975 tp_is_empty!4671)))

(declare-fun b!928981 () Bool)

(declare-fun res!422171 () Bool)

(declare-fun e!603976 () Bool)

(assert (=> b!928981 (=> res!422171 e!603976)))

(declare-datatypes ((C!5598 0))(
  ( (C!5599 (val!3047 Int)) )
))
(declare-datatypes ((Regex!2514 0))(
  ( (ElementMatch!2514 (c!150911 C!5598)) (Concat!4347 (regOne!5540 Regex!2514) (regTwo!5540 Regex!2514)) (EmptyExpr!2514) (Star!2514 (reg!2843 Regex!2514)) (EmptyLang!2514) (Union!2514 (regOne!5541 Regex!2514) (regTwo!5541 Regex!2514)) )
))
(declare-fun r!15766 () Regex!2514)

(declare-datatypes ((List!9744 0))(
  ( (Nil!9728) (Cons!9728 (h!15129 C!5598) (t!100790 List!9744)) )
))
(declare-fun s!10566 () List!9744)

(declare-fun matchR!1052 (Regex!2514 List!9744) Bool)

(declare-fun removeUselessConcat!189 (Regex!2514) Regex!2514)

(assert (=> b!928981 (= res!422171 (not (matchR!1052 (Union!2514 (removeUselessConcat!189 (regOne!5541 r!15766)) (removeUselessConcat!189 (regTwo!5541 r!15766))) s!10566)))))

(declare-fun b!928983 () Bool)

(declare-fun e!603977 () Bool)

(assert (=> b!928983 (= e!603977 (not e!603976))))

(declare-fun res!422170 () Bool)

(assert (=> b!928983 (=> res!422170 e!603976)))

(declare-fun lt!339945 () Bool)

(assert (=> b!928983 (= res!422170 (or lt!339945 (and (is-Concat!4347 r!15766) (is-EmptyExpr!2514 (regOne!5540 r!15766))) (and (is-Concat!4347 r!15766) (is-EmptyExpr!2514 (regTwo!5540 r!15766))) (is-Concat!4347 r!15766) (not (is-Union!2514 r!15766))))))

(declare-fun matchRSpec!315 (Regex!2514 List!9744) Bool)

(assert (=> b!928983 (= lt!339945 (matchRSpec!315 r!15766 s!10566))))

(assert (=> b!928983 (= lt!339945 (matchR!1052 r!15766 s!10566))))

(declare-datatypes ((Unit!14647 0))(
  ( (Unit!14648) )
))
(declare-fun lt!339944 () Unit!14647)

(declare-fun mainMatchTheorem!315 (Regex!2514 List!9744) Unit!14647)

(assert (=> b!928983 (= lt!339944 (mainMatchTheorem!315 r!15766 s!10566))))

(declare-fun b!928984 () Bool)

(declare-fun tp!288551 () Bool)

(assert (=> b!928984 (= e!603975 tp!288551)))

(declare-fun b!928985 () Bool)

(declare-fun tp!288554 () Bool)

(declare-fun tp!288553 () Bool)

(assert (=> b!928985 (= e!603975 (and tp!288554 tp!288553))))

(declare-fun b!928986 () Bool)

(declare-fun tp!288552 () Bool)

(declare-fun tp!288549 () Bool)

(assert (=> b!928986 (= e!603975 (and tp!288552 tp!288549))))

(declare-fun b!928987 () Bool)

(assert (=> b!928987 (= e!603976 true)))

(declare-fun b!928982 () Bool)

(declare-fun e!603974 () Bool)

(declare-fun tp!288550 () Bool)

(assert (=> b!928982 (= e!603974 (and tp_is_empty!4671 tp!288550))))

(declare-fun res!422169 () Bool)

(assert (=> start!83224 (=> (not res!422169) (not e!603977))))

(declare-fun validRegex!983 (Regex!2514) Bool)

(assert (=> start!83224 (= res!422169 (validRegex!983 r!15766))))

(assert (=> start!83224 e!603977))

(assert (=> start!83224 e!603975))

(assert (=> start!83224 e!603974))

(assert (= (and start!83224 res!422169) b!928983))

(assert (= (and b!928983 (not res!422170)) b!928981))

(assert (= (and b!928981 (not res!422171)) b!928987))

(assert (= (and start!83224 (is-ElementMatch!2514 r!15766)) b!928980))

(assert (= (and start!83224 (is-Concat!4347 r!15766)) b!928985))

(assert (= (and start!83224 (is-Star!2514 r!15766)) b!928984))

(assert (= (and start!83224 (is-Union!2514 r!15766)) b!928986))

(assert (= (and start!83224 (is-Cons!9728 s!10566)) b!928982))

(declare-fun m!1152373 () Bool)

(assert (=> b!928981 m!1152373))

(declare-fun m!1152375 () Bool)

(assert (=> b!928981 m!1152375))

(declare-fun m!1152377 () Bool)

(assert (=> b!928981 m!1152377))

(declare-fun m!1152379 () Bool)

(assert (=> b!928983 m!1152379))

(declare-fun m!1152381 () Bool)

(assert (=> b!928983 m!1152381))

(declare-fun m!1152383 () Bool)

(assert (=> b!928983 m!1152383))

(declare-fun m!1152385 () Bool)

(assert (=> start!83224 m!1152385))

(push 1)

(assert (not start!83224))

(assert (not b!928983))

(assert (not b!928981))

(assert tp_is_empty!4671)

(assert (not b!928986))

(assert (not b!928985))

(assert (not b!928982))

(assert (not b!928984))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


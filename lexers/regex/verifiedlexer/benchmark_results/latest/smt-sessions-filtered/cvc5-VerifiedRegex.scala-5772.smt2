; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!285594 () Bool)

(assert start!285594)

(declare-fun b!2940612 () Bool)

(declare-fun e!1853262 () Bool)

(declare-fun tp!941140 () Bool)

(declare-fun tp!941139 () Bool)

(assert (=> b!2940612 (= e!1853262 (and tp!941140 tp!941139))))

(declare-fun b!2940613 () Bool)

(declare-fun res!1213654 () Bool)

(declare-fun e!1853264 () Bool)

(assert (=> b!2940613 (=> res!1213654 e!1853264)))

(declare-datatypes ((C!18374 0))(
  ( (C!18375 (val!11223 Int)) )
))
(declare-datatypes ((List!34959 0))(
  ( (Nil!34835) (Cons!34835 (h!40255 C!18374) (t!234024 List!34959)) )
))
(declare-fun s!11993 () List!34959)

(declare-fun isEmpty!19096 (List!34959) Bool)

(assert (=> b!2940613 (= res!1213654 (isEmpty!19096 s!11993))))

(declare-fun b!2940614 () Bool)

(declare-fun tp_is_empty!15751 () Bool)

(assert (=> b!2940614 (= e!1853262 tp_is_empty!15751)))

(declare-fun b!2940615 () Bool)

(declare-fun e!1853263 () Bool)

(assert (=> b!2940615 (= e!1853263 (not e!1853264))))

(declare-fun res!1213653 () Bool)

(assert (=> b!2940615 (=> res!1213653 e!1853264)))

(declare-fun lt!1029991 () Bool)

(declare-datatypes ((Regex!9094 0))(
  ( (ElementMatch!9094 (c!480806 C!18374)) (Concat!14415 (regOne!18700 Regex!9094) (regTwo!18700 Regex!9094)) (EmptyExpr!9094) (Star!9094 (reg!9423 Regex!9094)) (EmptyLang!9094) (Union!9094 (regOne!18701 Regex!9094) (regTwo!18701 Regex!9094)) )
))
(declare-fun r!17423 () Regex!9094)

(assert (=> b!2940615 (= res!1213653 (or lt!1029991 (not (is-Concat!14415 r!17423))))))

(declare-fun matchRSpec!1231 (Regex!9094 List!34959) Bool)

(assert (=> b!2940615 (= lt!1029991 (matchRSpec!1231 r!17423 s!11993))))

(declare-fun matchR!3976 (Regex!9094 List!34959) Bool)

(assert (=> b!2940615 (= lt!1029991 (matchR!3976 r!17423 s!11993))))

(declare-datatypes ((Unit!48567 0))(
  ( (Unit!48568) )
))
(declare-fun lt!1029990 () Unit!48567)

(declare-fun mainMatchTheorem!1231 (Regex!9094 List!34959) Unit!48567)

(assert (=> b!2940615 (= lt!1029990 (mainMatchTheorem!1231 r!17423 s!11993))))

(declare-fun b!2940616 () Bool)

(assert (=> b!2940616 (= e!1853264 true)))

(declare-fun lt!1029993 () Regex!9094)

(declare-fun simplify!99 (Regex!9094) Regex!9094)

(assert (=> b!2940616 (= lt!1029993 (simplify!99 (regTwo!18700 r!17423)))))

(declare-fun lt!1029992 () Regex!9094)

(assert (=> b!2940616 (= lt!1029992 (simplify!99 (regOne!18700 r!17423)))))

(declare-fun b!2940617 () Bool)

(declare-fun tp!941138 () Bool)

(assert (=> b!2940617 (= e!1853262 tp!941138)))

(declare-fun res!1213655 () Bool)

(assert (=> start!285594 (=> (not res!1213655) (not e!1853263))))

(declare-fun validRegex!3827 (Regex!9094) Bool)

(assert (=> start!285594 (= res!1213655 (validRegex!3827 r!17423))))

(assert (=> start!285594 e!1853263))

(assert (=> start!285594 e!1853262))

(declare-fun e!1853265 () Bool)

(assert (=> start!285594 e!1853265))

(declare-fun b!2940618 () Bool)

(declare-fun tp!941141 () Bool)

(assert (=> b!2940618 (= e!1853265 (and tp_is_empty!15751 tp!941141))))

(declare-fun b!2940619 () Bool)

(declare-fun tp!941143 () Bool)

(declare-fun tp!941142 () Bool)

(assert (=> b!2940619 (= e!1853262 (and tp!941143 tp!941142))))

(assert (= (and start!285594 res!1213655) b!2940615))

(assert (= (and b!2940615 (not res!1213653)) b!2940613))

(assert (= (and b!2940613 (not res!1213654)) b!2940616))

(assert (= (and start!285594 (is-ElementMatch!9094 r!17423)) b!2940614))

(assert (= (and start!285594 (is-Concat!14415 r!17423)) b!2940612))

(assert (= (and start!285594 (is-Star!9094 r!17423)) b!2940617))

(assert (= (and start!285594 (is-Union!9094 r!17423)) b!2940619))

(assert (= (and start!285594 (is-Cons!34835 s!11993)) b!2940618))

(declare-fun m!3325285 () Bool)

(assert (=> b!2940613 m!3325285))

(declare-fun m!3325287 () Bool)

(assert (=> b!2940615 m!3325287))

(declare-fun m!3325289 () Bool)

(assert (=> b!2940615 m!3325289))

(declare-fun m!3325291 () Bool)

(assert (=> b!2940615 m!3325291))

(declare-fun m!3325293 () Bool)

(assert (=> b!2940616 m!3325293))

(declare-fun m!3325295 () Bool)

(assert (=> b!2940616 m!3325295))

(declare-fun m!3325297 () Bool)

(assert (=> start!285594 m!3325297))

(push 1)

(assert tp_is_empty!15751)

(assert (not b!2940613))

(assert (not b!2940616))

(assert (not b!2940618))

(assert (not b!2940617))

(assert (not b!2940619))

(assert (not b!2940615))

(assert (not start!285594))

(assert (not b!2940612))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


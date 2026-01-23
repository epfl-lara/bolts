; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733622 () Bool)

(assert start!733622)

(declare-fun res!3048338 () Bool)

(declare-fun e!4528490 () Bool)

(assert (=> start!733622 (=> (not res!3048338) (not e!4528490))))

(declare-datatypes ((C!40814 0))(
  ( (C!40815 (val!30847 Int)) )
))
(declare-datatypes ((Regex!20244 0))(
  ( (ElementMatch!20244 (c!1403719 C!40814)) (Concat!29089 (regOne!41000 Regex!20244) (regTwo!41000 Regex!20244)) (EmptyExpr!20244) (Star!20244 (reg!20573 Regex!20244)) (EmptyLang!20244) (Union!20244 (regOne!41001 Regex!20244) (regTwo!41001 Regex!20244)) )
))
(declare-fun r!14126 () Regex!20244)

(declare-fun validRegex!10666 (Regex!20244) Bool)

(assert (=> start!733622 (= res!3048338 (validRegex!10666 r!14126))))

(assert (=> start!733622 e!4528490))

(declare-fun e!4528491 () Bool)

(assert (=> start!733622 e!4528491))

(declare-fun e!4528492 () Bool)

(assert (=> start!733622 e!4528492))

(declare-fun b!7614754 () Bool)

(declare-fun e!4528494 () Bool)

(assert (=> b!7614754 (= e!4528490 (not e!4528494))))

(declare-fun res!3048340 () Bool)

(assert (=> b!7614754 (=> res!3048340 e!4528494)))

(assert (=> b!7614754 (= res!3048340 (not (validRegex!10666 (regTwo!41001 r!14126))))))

(declare-fun lt!2655144 () Bool)

(declare-datatypes ((List!73097 0))(
  ( (Nil!72973) (Cons!72973 (h!79421 C!40814) (t!387832 List!73097)) )
))
(declare-fun s!9605 () List!73097)

(declare-fun matchRSpec!4467 (Regex!20244 List!73097) Bool)

(assert (=> b!7614754 (= lt!2655144 (matchRSpec!4467 (regOne!41001 r!14126) s!9605))))

(declare-datatypes ((Unit!167296 0))(
  ( (Unit!167297) )
))
(declare-fun lt!2655143 () Unit!167296)

(declare-fun mainMatchTheorem!4461 (Regex!20244 List!73097) Unit!167296)

(assert (=> b!7614754 (= lt!2655143 (mainMatchTheorem!4461 (regOne!41001 r!14126) s!9605))))

(declare-fun e!4528493 () Bool)

(assert (=> b!7614754 e!4528493))

(declare-fun res!3048337 () Bool)

(assert (=> b!7614754 (=> res!3048337 e!4528493)))

(assert (=> b!7614754 (= res!3048337 lt!2655144)))

(declare-fun matchR!9759 (Regex!20244 List!73097) Bool)

(assert (=> b!7614754 (= lt!2655144 (matchR!9759 (regOne!41001 r!14126) s!9605))))

(declare-fun lt!2655142 () Unit!167296)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!343 (Regex!20244 Regex!20244 List!73097) Unit!167296)

(assert (=> b!7614754 (= lt!2655142 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!343 (regOne!41001 r!14126) (regTwo!41001 r!14126) s!9605))))

(declare-fun b!7614755 () Bool)

(declare-fun tp!2223264 () Bool)

(declare-fun tp!2223263 () Bool)

(assert (=> b!7614755 (= e!4528491 (and tp!2223264 tp!2223263))))

(declare-fun b!7614756 () Bool)

(declare-fun tp_is_empty!50843 () Bool)

(assert (=> b!7614756 (= e!4528491 tp_is_empty!50843)))

(declare-fun b!7614757 () Bool)

(assert (=> b!7614757 (= e!4528493 (matchR!9759 (regTwo!41001 r!14126) s!9605))))

(declare-fun b!7614758 () Bool)

(declare-fun tp!2223261 () Bool)

(declare-fun tp!2223265 () Bool)

(assert (=> b!7614758 (= e!4528491 (and tp!2223261 tp!2223265))))

(declare-fun b!7614759 () Bool)

(declare-fun tp!2223260 () Bool)

(assert (=> b!7614759 (= e!4528492 (and tp_is_empty!50843 tp!2223260))))

(declare-fun b!7614760 () Bool)

(declare-fun res!3048339 () Bool)

(assert (=> b!7614760 (=> (not res!3048339) (not e!4528490))))

(assert (=> b!7614760 (= res!3048339 (matchR!9759 r!14126 s!9605))))

(declare-fun b!7614761 () Bool)

(declare-fun tp!2223262 () Bool)

(assert (=> b!7614761 (= e!4528491 tp!2223262)))

(declare-fun b!7614762 () Bool)

(assert (=> b!7614762 (= e!4528494 true)))

(assert (=> b!7614762 (= (matchR!9759 (regTwo!41001 r!14126) s!9605) (matchRSpec!4467 (regTwo!41001 r!14126) s!9605))))

(declare-fun lt!2655141 () Unit!167296)

(assert (=> b!7614762 (= lt!2655141 (mainMatchTheorem!4461 (regTwo!41001 r!14126) s!9605))))

(declare-fun b!7614763 () Bool)

(declare-fun res!3048341 () Bool)

(assert (=> b!7614763 (=> (not res!3048341) (not e!4528490))))

(assert (=> b!7614763 (= res!3048341 (and (not (is-EmptyExpr!20244 r!14126)) (not (is-EmptyLang!20244 r!14126)) (not (is-ElementMatch!20244 r!14126)) (is-Union!20244 r!14126)))))

(assert (= (and start!733622 res!3048338) b!7614763))

(assert (= (and b!7614763 res!3048341) b!7614760))

(assert (= (and b!7614760 res!3048339) b!7614754))

(assert (= (and b!7614754 (not res!3048337)) b!7614757))

(assert (= (and b!7614754 (not res!3048340)) b!7614762))

(assert (= (and start!733622 (is-ElementMatch!20244 r!14126)) b!7614756))

(assert (= (and start!733622 (is-Concat!29089 r!14126)) b!7614758))

(assert (= (and start!733622 (is-Star!20244 r!14126)) b!7614761))

(assert (= (and start!733622 (is-Union!20244 r!14126)) b!7614755))

(assert (= (and start!733622 (is-Cons!72973 s!9605)) b!7614759))

(declare-fun m!8149198 () Bool)

(assert (=> b!7614760 m!8149198))

(declare-fun m!8149200 () Bool)

(assert (=> b!7614762 m!8149200))

(declare-fun m!8149202 () Bool)

(assert (=> b!7614762 m!8149202))

(declare-fun m!8149204 () Bool)

(assert (=> b!7614762 m!8149204))

(assert (=> b!7614757 m!8149200))

(declare-fun m!8149206 () Bool)

(assert (=> b!7614754 m!8149206))

(declare-fun m!8149208 () Bool)

(assert (=> b!7614754 m!8149208))

(declare-fun m!8149210 () Bool)

(assert (=> b!7614754 m!8149210))

(declare-fun m!8149212 () Bool)

(assert (=> b!7614754 m!8149212))

(declare-fun m!8149214 () Bool)

(assert (=> b!7614754 m!8149214))

(declare-fun m!8149216 () Bool)

(assert (=> start!733622 m!8149216))

(push 1)

(assert (not b!7614757))

(assert (not b!7614760))

(assert tp_is_empty!50843)

(assert (not b!7614759))

(assert (not b!7614754))

(assert (not start!733622))

(assert (not b!7614761))

(assert (not b!7614762))

(assert (not b!7614755))

(assert (not b!7614758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


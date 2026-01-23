; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733614 () Bool)

(assert start!733614)

(declare-fun b!7614644 () Bool)

(declare-fun e!4528441 () Bool)

(declare-fun tp!2223193 () Bool)

(assert (=> b!7614644 (= e!4528441 tp!2223193)))

(declare-fun b!7614645 () Bool)

(declare-fun e!4528443 () Bool)

(declare-datatypes ((C!40806 0))(
  ( (C!40807 (val!30843 Int)) )
))
(declare-datatypes ((Regex!20240 0))(
  ( (ElementMatch!20240 (c!1403715 C!40806)) (Concat!29085 (regOne!40992 Regex!20240) (regTwo!40992 Regex!20240)) (EmptyExpr!20240) (Star!20240 (reg!20569 Regex!20240)) (EmptyLang!20240) (Union!20240 (regOne!40993 Regex!20240) (regTwo!40993 Regex!20240)) )
))
(declare-fun r!14126 () Regex!20240)

(declare-datatypes ((List!73093 0))(
  ( (Nil!72969) (Cons!72969 (h!79417 C!40806) (t!387828 List!73093)) )
))
(declare-fun s!9605 () List!73093)

(declare-fun matchR!9755 (Regex!20240 List!73093) Bool)

(assert (=> b!7614645 (= e!4528443 (matchR!9755 (regTwo!40993 r!14126) s!9605))))

(declare-fun res!3048287 () Bool)

(declare-fun e!4528440 () Bool)

(assert (=> start!733614 (=> (not res!3048287) (not e!4528440))))

(declare-fun validRegex!10662 (Regex!20240) Bool)

(assert (=> start!733614 (= res!3048287 (validRegex!10662 r!14126))))

(assert (=> start!733614 e!4528440))

(assert (=> start!733614 e!4528441))

(declare-fun e!4528442 () Bool)

(assert (=> start!733614 e!4528442))

(declare-fun b!7614646 () Bool)

(declare-fun tp_is_empty!50835 () Bool)

(declare-fun tp!2223189 () Bool)

(assert (=> b!7614646 (= e!4528442 (and tp_is_empty!50835 tp!2223189))))

(declare-fun b!7614647 () Bool)

(assert (=> b!7614647 (= e!4528440 (not true))))

(assert (=> b!7614647 e!4528443))

(declare-fun res!3048288 () Bool)

(assert (=> b!7614647 (=> res!3048288 e!4528443)))

(assert (=> b!7614647 (= res!3048288 (matchR!9755 (regOne!40993 r!14126) s!9605))))

(declare-datatypes ((Unit!167288 0))(
  ( (Unit!167289) )
))
(declare-fun lt!2655111 () Unit!167288)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!339 (Regex!20240 Regex!20240 List!73093) Unit!167288)

(assert (=> b!7614647 (= lt!2655111 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!339 (regOne!40993 r!14126) (regTwo!40993 r!14126) s!9605))))

(declare-fun b!7614648 () Bool)

(assert (=> b!7614648 (= e!4528441 tp_is_empty!50835)))

(declare-fun b!7614649 () Bool)

(declare-fun tp!2223190 () Bool)

(declare-fun tp!2223191 () Bool)

(assert (=> b!7614649 (= e!4528441 (and tp!2223190 tp!2223191))))

(declare-fun b!7614650 () Bool)

(declare-fun tp!2223192 () Bool)

(declare-fun tp!2223188 () Bool)

(assert (=> b!7614650 (= e!4528441 (and tp!2223192 tp!2223188))))

(declare-fun b!7614651 () Bool)

(declare-fun res!3048289 () Bool)

(assert (=> b!7614651 (=> (not res!3048289) (not e!4528440))))

(assert (=> b!7614651 (= res!3048289 (and (not (is-EmptyExpr!20240 r!14126)) (not (is-EmptyLang!20240 r!14126)) (not (is-ElementMatch!20240 r!14126)) (is-Union!20240 r!14126)))))

(declare-fun b!7614652 () Bool)

(declare-fun res!3048290 () Bool)

(assert (=> b!7614652 (=> (not res!3048290) (not e!4528440))))

(assert (=> b!7614652 (= res!3048290 (matchR!9755 r!14126 s!9605))))

(assert (= (and start!733614 res!3048287) b!7614651))

(assert (= (and b!7614651 res!3048289) b!7614652))

(assert (= (and b!7614652 res!3048290) b!7614647))

(assert (= (and b!7614647 (not res!3048288)) b!7614645))

(assert (= (and start!733614 (is-ElementMatch!20240 r!14126)) b!7614648))

(assert (= (and start!733614 (is-Concat!29085 r!14126)) b!7614650))

(assert (= (and start!733614 (is-Star!20240 r!14126)) b!7614644))

(assert (= (and start!733614 (is-Union!20240 r!14126)) b!7614649))

(assert (= (and start!733614 (is-Cons!72969 s!9605)) b!7614646))

(declare-fun m!8149150 () Bool)

(assert (=> b!7614645 m!8149150))

(declare-fun m!8149152 () Bool)

(assert (=> start!733614 m!8149152))

(declare-fun m!8149154 () Bool)

(assert (=> b!7614647 m!8149154))

(declare-fun m!8149156 () Bool)

(assert (=> b!7614647 m!8149156))

(declare-fun m!8149158 () Bool)

(assert (=> b!7614652 m!8149158))

(push 1)

(assert (not b!7614645))

(assert (not b!7614644))

(assert (not b!7614649))

(assert (not b!7614646))

(assert (not b!7614650))

(assert (not b!7614647))

(assert tp_is_empty!50835)

(assert (not b!7614652))

(assert (not start!733614))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


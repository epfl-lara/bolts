; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733610 () Bool)

(assert start!733610)

(declare-fun b!7614586 () Bool)

(declare-fun e!4528420 () Bool)

(declare-fun tp_is_empty!50831 () Bool)

(declare-fun tp!2223153 () Bool)

(assert (=> b!7614586 (= e!4528420 (and tp_is_empty!50831 tp!2223153))))

(declare-fun b!7614587 () Bool)

(declare-fun res!3048262 () Bool)

(declare-fun e!4528422 () Bool)

(assert (=> b!7614587 (=> (not res!3048262) (not e!4528422))))

(declare-datatypes ((C!40802 0))(
  ( (C!40803 (val!30841 Int)) )
))
(declare-datatypes ((Regex!20238 0))(
  ( (ElementMatch!20238 (c!1403713 C!40802)) (Concat!29083 (regOne!40988 Regex!20238) (regTwo!40988 Regex!20238)) (EmptyExpr!20238) (Star!20238 (reg!20567 Regex!20238)) (EmptyLang!20238) (Union!20238 (regOne!40989 Regex!20238) (regTwo!40989 Regex!20238)) )
))
(declare-fun r!14126 () Regex!20238)

(declare-fun validRegex!10660 (Regex!20238) Bool)

(assert (=> b!7614587 (= res!3048262 (validRegex!10660 (regOne!40989 r!14126)))))

(declare-fun b!7614588 () Bool)

(declare-fun res!3048263 () Bool)

(assert (=> b!7614588 (=> (not res!3048263) (not e!4528422))))

(assert (=> b!7614588 (= res!3048263 (validRegex!10660 (regTwo!40989 r!14126)))))

(declare-fun b!7614589 () Bool)

(assert (=> b!7614589 (= e!4528422 false)))

(declare-fun lt!2655105 () Bool)

(declare-datatypes ((List!73091 0))(
  ( (Nil!72967) (Cons!72967 (h!79415 C!40802) (t!387826 List!73091)) )
))
(declare-fun s!9605 () List!73091)

(declare-fun matchR!9753 (Regex!20238 List!73091) Bool)

(assert (=> b!7614589 (= lt!2655105 (matchR!9753 r!14126 s!9605))))

(declare-fun b!7614590 () Bool)

(declare-fun e!4528421 () Bool)

(declare-fun tp!2223152 () Bool)

(declare-fun tp!2223155 () Bool)

(assert (=> b!7614590 (= e!4528421 (and tp!2223152 tp!2223155))))

(declare-fun res!3048259 () Bool)

(assert (=> start!733610 (=> (not res!3048259) (not e!4528422))))

(assert (=> start!733610 (= res!3048259 (validRegex!10660 r!14126))))

(assert (=> start!733610 e!4528422))

(assert (=> start!733610 e!4528421))

(assert (=> start!733610 e!4528420))

(declare-fun b!7614591 () Bool)

(declare-fun tp!2223156 () Bool)

(assert (=> b!7614591 (= e!4528421 tp!2223156)))

(declare-fun b!7614592 () Bool)

(declare-fun tp!2223157 () Bool)

(declare-fun tp!2223154 () Bool)

(assert (=> b!7614592 (= e!4528421 (and tp!2223157 tp!2223154))))

(declare-fun b!7614593 () Bool)

(declare-fun res!3048260 () Bool)

(assert (=> b!7614593 (=> (not res!3048260) (not e!4528422))))

(assert (=> b!7614593 (= res!3048260 (matchR!9753 r!14126 s!9605))))

(declare-fun b!7614594 () Bool)

(declare-fun res!3048261 () Bool)

(assert (=> b!7614594 (=> (not res!3048261) (not e!4528422))))

(assert (=> b!7614594 (= res!3048261 (and (not (is-EmptyExpr!20238 r!14126)) (not (is-EmptyLang!20238 r!14126)) (not (is-ElementMatch!20238 r!14126)) (is-Union!20238 r!14126)))))

(declare-fun b!7614595 () Bool)

(assert (=> b!7614595 (= e!4528421 tp_is_empty!50831)))

(assert (= (and start!733610 res!3048259) b!7614594))

(assert (= (and b!7614594 res!3048261) b!7614593))

(assert (= (and b!7614593 res!3048260) b!7614587))

(assert (= (and b!7614587 res!3048262) b!7614588))

(assert (= (and b!7614588 res!3048263) b!7614589))

(assert (= (and start!733610 (is-ElementMatch!20238 r!14126)) b!7614595))

(assert (= (and start!733610 (is-Concat!29083 r!14126)) b!7614590))

(assert (= (and start!733610 (is-Star!20238 r!14126)) b!7614591))

(assert (= (and start!733610 (is-Union!20238 r!14126)) b!7614592))

(assert (= (and start!733610 (is-Cons!72967 s!9605)) b!7614586))

(declare-fun m!8149134 () Bool)

(assert (=> start!733610 m!8149134))

(declare-fun m!8149136 () Bool)

(assert (=> b!7614587 m!8149136))

(declare-fun m!8149138 () Bool)

(assert (=> b!7614588 m!8149138))

(declare-fun m!8149140 () Bool)

(assert (=> b!7614593 m!8149140))

(assert (=> b!7614589 m!8149140))

(push 1)

(assert (not b!7614588))

(assert (not b!7614586))

(assert (not b!7614592))

(assert (not b!7614593))

(assert tp_is_empty!50831)

(assert (not b!7614589))

(assert (not b!7614591))

(assert (not b!7614590))

(assert (not b!7614587))

(assert (not start!733610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


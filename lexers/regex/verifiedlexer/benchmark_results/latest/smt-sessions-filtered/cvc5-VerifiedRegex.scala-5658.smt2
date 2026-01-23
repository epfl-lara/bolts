; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!282516 () Bool)

(assert start!282516)

(declare-fun b!2902251 () Bool)

(declare-fun e!1832644 () Bool)

(declare-fun tp_is_empty!15327 () Bool)

(assert (=> b!2902251 (= e!1832644 tp_is_empty!15327)))

(declare-fun b!2902253 () Bool)

(declare-fun e!1832642 () Bool)

(declare-fun tp!931450 () Bool)

(assert (=> b!2902253 (= e!1832642 (and tp_is_empty!15327 tp!931450))))

(declare-fun b!2902254 () Bool)

(declare-fun tp!931451 () Bool)

(declare-fun tp!931452 () Bool)

(assert (=> b!2902254 (= e!1832644 (and tp!931451 tp!931452))))

(declare-fun b!2902255 () Bool)

(declare-fun res!1199141 () Bool)

(declare-fun e!1832643 () Bool)

(assert (=> b!2902255 (=> (not res!1199141) (not e!1832643))))

(declare-datatypes ((C!17922 0))(
  ( (C!17923 (val!10995 Int)) )
))
(declare-datatypes ((List!34671 0))(
  ( (Nil!34547) (Cons!34547 (h!39967 C!17922) (t!233714 List!34671)) )
))
(declare-fun prefix!1456 () List!34671)

(declare-fun s!13418 () List!34671)

(declare-fun isPrefix!2707 (List!34671 List!34671) Bool)

(assert (=> b!2902255 (= res!1199141 (isPrefix!2707 prefix!1456 s!13418))))

(declare-fun b!2902256 () Bool)

(assert (=> b!2902256 (= e!1832643 false)))

(declare-fun lt!1022293 () Bool)

(declare-datatypes ((Regex!8870 0))(
  ( (ElementMatch!8870 (c!472975 C!17922)) (Concat!14191 (regOne!18252 Regex!8870) (regTwo!18252 Regex!8870)) (EmptyExpr!8870) (Star!8870 (reg!9199 Regex!8870)) (EmptyLang!8870) (Union!8870 (regOne!18253 Regex!8870) (regTwo!18253 Regex!8870)) )
))
(declare-fun r!19097 () Regex!8870)

(declare-fun prefixMatch!928 (Regex!8870 List!34671) Bool)

(assert (=> b!2902256 (= lt!1022293 (prefixMatch!928 r!19097 prefix!1456))))

(declare-fun res!1199140 () Bool)

(assert (=> start!282516 (=> (not res!1199140) (not e!1832643))))

(declare-fun validRegex!3643 (Regex!8870) Bool)

(assert (=> start!282516 (= res!1199140 (validRegex!3643 r!19097))))

(assert (=> start!282516 e!1832643))

(assert (=> start!282516 e!1832644))

(assert (=> start!282516 e!1832642))

(declare-fun e!1832645 () Bool)

(assert (=> start!282516 e!1832645))

(declare-fun b!2902252 () Bool)

(declare-fun tp!931454 () Bool)

(declare-fun tp!931448 () Bool)

(assert (=> b!2902252 (= e!1832644 (and tp!931454 tp!931448))))

(declare-fun b!2902257 () Bool)

(declare-fun tp!931449 () Bool)

(assert (=> b!2902257 (= e!1832645 (and tp_is_empty!15327 tp!931449))))

(declare-fun b!2902258 () Bool)

(declare-fun tp!931453 () Bool)

(assert (=> b!2902258 (= e!1832644 tp!931453)))

(assert (= (and start!282516 res!1199140) b!2902255))

(assert (= (and b!2902255 res!1199141) b!2902256))

(assert (= (and start!282516 (is-ElementMatch!8870 r!19097)) b!2902251))

(assert (= (and start!282516 (is-Concat!14191 r!19097)) b!2902254))

(assert (= (and start!282516 (is-Star!8870 r!19097)) b!2902258))

(assert (= (and start!282516 (is-Union!8870 r!19097)) b!2902252))

(assert (= (and start!282516 (is-Cons!34547 prefix!1456)) b!2902253))

(assert (= (and start!282516 (is-Cons!34547 s!13418)) b!2902257))

(declare-fun m!3306579 () Bool)

(assert (=> b!2902255 m!3306579))

(declare-fun m!3306581 () Bool)

(assert (=> b!2902256 m!3306581))

(declare-fun m!3306583 () Bool)

(assert (=> start!282516 m!3306583))

(push 1)

(assert (not b!2902257))

(assert (not b!2902258))

(assert (not b!2902255))

(assert (not b!2902252))

(assert (not b!2902256))

(assert tp_is_empty!15327)

(assert (not b!2902253))

(assert (not b!2902254))

(assert (not start!282516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


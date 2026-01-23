; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278000 () Bool)

(assert start!278000)

(declare-fun b!2855929 () Bool)

(declare-fun e!1808811 () Bool)

(assert (=> b!2855929 (= e!1808811 false)))

(declare-fun lt!1013948 () Bool)

(declare-datatypes ((C!17334 0))(
  ( (C!17335 (val!10701 Int)) )
))
(declare-datatypes ((Regex!8576 0))(
  ( (ElementMatch!8576 (c!460233 C!17334)) (Concat!13897 (regOne!17664 Regex!8576) (regTwo!17664 Regex!8576)) (EmptyExpr!8576) (Star!8576 (reg!8905 Regex!8576)) (EmptyLang!8576) (Union!8576 (regOne!17665 Regex!8576) (regTwo!17665 Regex!8576)) )
))
(declare-fun r!23423 () Regex!8576)

(declare-datatypes ((List!34173 0))(
  ( (Nil!34049) (Cons!34049 (h!39469 C!17334) (t!233204 List!34173)) )
))
(declare-fun prefix!1470 () List!34173)

(declare-fun prefixMatch!884 (Regex!8576 List!34173) Bool)

(assert (=> b!2855929 (= lt!1013948 (prefixMatch!884 r!23423 prefix!1470))))

(declare-fun b!2855930 () Bool)

(declare-fun e!1808809 () Bool)

(declare-fun tp!919044 () Bool)

(declare-fun tp!919046 () Bool)

(assert (=> b!2855930 (= e!1808809 (and tp!919044 tp!919046))))

(declare-fun res!1186487 () Bool)

(assert (=> start!278000 (=> (not res!1186487) (not e!1808811))))

(declare-fun validRegex!3446 (Regex!8576) Bool)

(assert (=> start!278000 (= res!1186487 (validRegex!3446 r!23423))))

(assert (=> start!278000 e!1808811))

(assert (=> start!278000 e!1808809))

(declare-fun e!1808810 () Bool)

(assert (=> start!278000 e!1808810))

(declare-fun b!2855931 () Bool)

(declare-fun tp_is_empty!14889 () Bool)

(declare-fun tp!919045 () Bool)

(assert (=> b!2855931 (= e!1808810 (and tp_is_empty!14889 tp!919045))))

(declare-fun b!2855932 () Bool)

(assert (=> b!2855932 (= e!1808809 tp_is_empty!14889)))

(declare-fun b!2855933 () Bool)

(declare-fun tp!919042 () Bool)

(assert (=> b!2855933 (= e!1808809 tp!919042)))

(declare-fun b!2855934 () Bool)

(declare-fun tp!919041 () Bool)

(declare-fun tp!919043 () Bool)

(assert (=> b!2855934 (= e!1808809 (and tp!919041 tp!919043))))

(assert (= (and start!278000 res!1186487) b!2855929))

(assert (= (and start!278000 (is-ElementMatch!8576 r!23423)) b!2855932))

(assert (= (and start!278000 (is-Concat!13897 r!23423)) b!2855934))

(assert (= (and start!278000 (is-Star!8576 r!23423)) b!2855933))

(assert (= (and start!278000 (is-Union!8576 r!23423)) b!2855930))

(assert (= (and start!278000 (is-Cons!34049 prefix!1470)) b!2855931))

(declare-fun m!3278725 () Bool)

(assert (=> b!2855929 m!3278725))

(declare-fun m!3278727 () Bool)

(assert (=> start!278000 m!3278727))

(push 1)

(assert (not b!2855933))

(assert (not start!278000))

(assert (not b!2855934))

(assert (not b!2855931))

(assert tp_is_empty!14889)

(assert (not b!2855929))

(assert (not b!2855930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


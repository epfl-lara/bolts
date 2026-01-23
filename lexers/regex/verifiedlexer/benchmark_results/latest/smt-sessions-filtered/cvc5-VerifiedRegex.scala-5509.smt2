; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277992 () Bool)

(assert start!277992)

(declare-fun res!1186445 () Bool)

(declare-fun e!1808765 () Bool)

(assert (=> start!277992 (=> (not res!1186445) (not e!1808765))))

(declare-datatypes ((C!17326 0))(
  ( (C!17327 (val!10697 Int)) )
))
(declare-datatypes ((Regex!8572 0))(
  ( (ElementMatch!8572 (c!460229 C!17326)) (Concat!13893 (regOne!17656 Regex!8572) (regTwo!17656 Regex!8572)) (EmptyExpr!8572) (Star!8572 (reg!8901 Regex!8572)) (EmptyLang!8572) (Union!8572 (regOne!17657 Regex!8572) (regTwo!17657 Regex!8572)) )
))
(declare-fun r!23423 () Regex!8572)

(declare-fun validRegex!3442 (Regex!8572) Bool)

(assert (=> start!277992 (= res!1186445 (validRegex!3442 r!23423))))

(assert (=> start!277992 e!1808765))

(declare-fun e!1808764 () Bool)

(assert (=> start!277992 e!1808764))

(declare-fun e!1808763 () Bool)

(assert (=> start!277992 e!1808763))

(declare-fun b!2855819 () Bool)

(declare-fun tp!918973 () Bool)

(assert (=> b!2855819 (= e!1808764 tp!918973)))

(declare-fun b!2855820 () Bool)

(declare-fun tp_is_empty!14881 () Bool)

(assert (=> b!2855820 (= e!1808764 tp_is_empty!14881)))

(declare-fun b!2855821 () Bool)

(declare-fun tp!918970 () Bool)

(assert (=> b!2855821 (= e!1808763 (and tp_is_empty!14881 tp!918970))))

(declare-fun b!2855822 () Bool)

(declare-fun res!1186447 () Bool)

(assert (=> b!2855822 (=> (not res!1186447) (not e!1808765))))

(declare-datatypes ((List!34169 0))(
  ( (Nil!34045) (Cons!34045 (h!39465 C!17326) (t!233200 List!34169)) )
))
(declare-fun prefix!1470 () List!34169)

(declare-fun prefixMatch!880 (Regex!8572 List!34169) Bool)

(assert (=> b!2855822 (= res!1186447 (prefixMatch!880 r!23423 prefix!1470))))

(declare-fun b!2855823 () Bool)

(assert (=> b!2855823 (= e!1808765 (not true))))

(declare-fun lt!1013916 () Bool)

(declare-fun lt!1013918 () List!34169)

(declare-fun isPrefix!2662 (List!34169 List!34169) Bool)

(assert (=> b!2855823 (= lt!1013916 (isPrefix!2662 prefix!1470 lt!1013918))))

(declare-fun matchR!3687 (Regex!8572 List!34169) Bool)

(assert (=> b!2855823 (matchR!3687 r!23423 lt!1013918)))

(declare-datatypes ((Unit!47695 0))(
  ( (Unit!47696) )
))
(declare-fun lt!1013917 () Unit!47695)

(declare-fun lemmaGetWitnessMatches!11 (Regex!8572) Unit!47695)

(assert (=> b!2855823 (= lt!1013917 (lemmaGetWitnessMatches!11 r!23423))))

(declare-datatypes ((Option!6309 0))(
  ( (None!6308) (Some!6308 (v!34430 List!34169)) )
))
(declare-fun get!10191 (Option!6309) List!34169)

(declare-fun getLanguageWitness!240 (Regex!8572) Option!6309)

(assert (=> b!2855823 (= lt!1013918 (get!10191 (getLanguageWitness!240 r!23423)))))

(declare-fun b!2855824 () Bool)

(declare-fun res!1186446 () Bool)

(assert (=> b!2855824 (=> (not res!1186446) (not e!1808765))))

(assert (=> b!2855824 (= res!1186446 (is-Nil!34045 prefix!1470))))

(declare-fun b!2855825 () Bool)

(declare-fun tp!918969 () Bool)

(declare-fun tp!918974 () Bool)

(assert (=> b!2855825 (= e!1808764 (and tp!918969 tp!918974))))

(declare-fun b!2855826 () Bool)

(declare-fun tp!918971 () Bool)

(declare-fun tp!918972 () Bool)

(assert (=> b!2855826 (= e!1808764 (and tp!918971 tp!918972))))

(assert (= (and start!277992 res!1186445) b!2855822))

(assert (= (and b!2855822 res!1186447) b!2855824))

(assert (= (and b!2855824 res!1186446) b!2855823))

(assert (= (and start!277992 (is-ElementMatch!8572 r!23423)) b!2855820))

(assert (= (and start!277992 (is-Concat!13893 r!23423)) b!2855826))

(assert (= (and start!277992 (is-Star!8572 r!23423)) b!2855819))

(assert (= (and start!277992 (is-Union!8572 r!23423)) b!2855825))

(assert (= (and start!277992 (is-Cons!34045 prefix!1470)) b!2855821))

(declare-fun m!3278665 () Bool)

(assert (=> start!277992 m!3278665))

(declare-fun m!3278667 () Bool)

(assert (=> b!2855822 m!3278667))

(declare-fun m!3278669 () Bool)

(assert (=> b!2855823 m!3278669))

(declare-fun m!3278671 () Bool)

(assert (=> b!2855823 m!3278671))

(declare-fun m!3278673 () Bool)

(assert (=> b!2855823 m!3278673))

(declare-fun m!3278675 () Bool)

(assert (=> b!2855823 m!3278675))

(assert (=> b!2855823 m!3278673))

(declare-fun m!3278677 () Bool)

(assert (=> b!2855823 m!3278677))

(push 1)

(assert (not b!2855823))

(assert (not start!277992))

(assert (not b!2855826))

(assert (not b!2855821))

(assert (not b!2855819))

(assert (not b!2855825))

(assert tp_is_empty!14881)

(assert (not b!2855822))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


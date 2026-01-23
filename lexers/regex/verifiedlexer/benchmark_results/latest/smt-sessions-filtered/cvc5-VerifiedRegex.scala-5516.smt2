; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278064 () Bool)

(assert start!278064)

(declare-fun b!2856667 () Bool)

(assert (=> b!2856667 true))

(assert (=> b!2856667 true))

(declare-fun b!2856662 () Bool)

(declare-fun e!1809172 () Bool)

(declare-fun tp_is_empty!14909 () Bool)

(assert (=> b!2856662 (= e!1809172 tp_is_empty!14909)))

(declare-fun b!2856663 () Bool)

(declare-fun e!1809173 () Bool)

(assert (=> b!2856663 (= e!1809173 true)))

(declare-fun lt!1014044 () Bool)

(declare-datatypes ((C!17354 0))(
  ( (C!17355 (val!10711 Int)) )
))
(declare-datatypes ((List!34183 0))(
  ( (Nil!34059) (Cons!34059 (h!39479 C!17354) (t!233214 List!34183)) )
))
(declare-fun prefix!1470 () List!34183)

(declare-fun lt!1014046 () List!34183)

(declare-fun isPrefix!2667 (List!34183 List!34183) Bool)

(assert (=> b!2856663 (= lt!1014044 (isPrefix!2667 (t!233214 prefix!1470) lt!1014046))))

(declare-fun b!2856664 () Bool)

(declare-fun res!1186697 () Bool)

(declare-fun e!1809171 () Bool)

(assert (=> b!2856664 (=> (not res!1186697) (not e!1809171))))

(assert (=> b!2856664 (= res!1186697 (not (is-Nil!34059 prefix!1470)))))

(declare-fun b!2856665 () Bool)

(declare-fun res!1186699 () Bool)

(assert (=> b!2856665 (=> (not res!1186699) (not e!1809171))))

(declare-datatypes ((Regex!8586 0))(
  ( (ElementMatch!8586 (c!460347 C!17354)) (Concat!13907 (regOne!17684 Regex!8586) (regTwo!17684 Regex!8586)) (EmptyExpr!8586) (Star!8586 (reg!8915 Regex!8586)) (EmptyLang!8586) (Union!8586 (regOne!17685 Regex!8586) (regTwo!17685 Regex!8586)) )
))
(declare-fun r!23423 () Regex!8586)

(declare-fun prefixMatch!894 (Regex!8586 List!34183) Bool)

(assert (=> b!2856665 (= res!1186699 (prefixMatch!894 r!23423 prefix!1470))))

(declare-fun res!1186700 () Bool)

(assert (=> start!278064 (=> (not res!1186700) (not e!1809171))))

(declare-fun validRegex!3456 (Regex!8586) Bool)

(assert (=> start!278064 (= res!1186700 (validRegex!3456 r!23423))))

(assert (=> start!278064 e!1809171))

(assert (=> start!278064 e!1809172))

(declare-fun e!1809174 () Bool)

(assert (=> start!278064 e!1809174))

(declare-fun b!2856661 () Bool)

(declare-fun tp!919377 () Bool)

(assert (=> b!2856661 (= e!1809172 tp!919377)))

(declare-fun b!2856666 () Bool)

(declare-fun tp!919374 () Bool)

(declare-fun tp!919378 () Bool)

(assert (=> b!2856666 (= e!1809172 (and tp!919374 tp!919378))))

(assert (=> b!2856667 (= e!1809171 (not e!1809173))))

(declare-fun res!1186698 () Bool)

(assert (=> b!2856667 (=> res!1186698 e!1809173)))

(declare-fun lt!1014047 () Regex!8586)

(declare-fun matchR!3692 (Regex!8586 List!34183) Bool)

(assert (=> b!2856667 (= res!1186698 (not (matchR!3692 lt!1014047 lt!1014046)))))

(declare-fun lambda!105064 () Int)

(declare-fun pickWitness!305 (Int) List!34183)

(assert (=> b!2856667 (= lt!1014046 (pickWitness!305 lambda!105064))))

(declare-fun Exists!1292 (Int) Bool)

(assert (=> b!2856667 (Exists!1292 lambda!105064)))

(assert (=> b!2856667 (Exists!1292 lambda!105064)))

(declare-datatypes ((Unit!47715 0))(
  ( (Unit!47716) )
))
(declare-fun lt!1014045 () Unit!47715)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!340 (Regex!8586 List!34183) Unit!47715)

(assert (=> b!2856667 (= lt!1014045 (lemmaPrefixMatchThenExistsStringThatMatches!340 lt!1014047 (t!233214 prefix!1470)))))

(declare-fun derivativeStep!2275 (Regex!8586 C!17354) Regex!8586)

(assert (=> b!2856667 (= lt!1014047 (derivativeStep!2275 r!23423 (h!39479 prefix!1470)))))

(declare-fun b!2856668 () Bool)

(declare-fun tp!919375 () Bool)

(assert (=> b!2856668 (= e!1809174 (and tp_is_empty!14909 tp!919375))))

(declare-fun b!2856669 () Bool)

(declare-fun tp!919376 () Bool)

(declare-fun tp!919373 () Bool)

(assert (=> b!2856669 (= e!1809172 (and tp!919376 tp!919373))))

(assert (= (and start!278064 res!1186700) b!2856665))

(assert (= (and b!2856665 res!1186699) b!2856664))

(assert (= (and b!2856664 res!1186697) b!2856667))

(assert (= (and b!2856667 (not res!1186698)) b!2856663))

(assert (= (and start!278064 (is-ElementMatch!8586 r!23423)) b!2856662))

(assert (= (and start!278064 (is-Concat!13907 r!23423)) b!2856666))

(assert (= (and start!278064 (is-Star!8586 r!23423)) b!2856661))

(assert (= (and start!278064 (is-Union!8586 r!23423)) b!2856669))

(assert (= (and start!278064 (is-Cons!34059 prefix!1470)) b!2856668))

(declare-fun m!3278993 () Bool)

(assert (=> b!2856663 m!3278993))

(declare-fun m!3278995 () Bool)

(assert (=> b!2856665 m!3278995))

(declare-fun m!3278997 () Bool)

(assert (=> start!278064 m!3278997))

(declare-fun m!3278999 () Bool)

(assert (=> b!2856667 m!3278999))

(declare-fun m!3279001 () Bool)

(assert (=> b!2856667 m!3279001))

(declare-fun m!3279003 () Bool)

(assert (=> b!2856667 m!3279003))

(declare-fun m!3279005 () Bool)

(assert (=> b!2856667 m!3279005))

(assert (=> b!2856667 m!3279005))

(declare-fun m!3279007 () Bool)

(assert (=> b!2856667 m!3279007))

(push 1)

(assert (not b!2856661))

(assert (not b!2856663))

(assert (not b!2856669))

(assert (not b!2856667))

(assert (not b!2856666))

(assert (not b!2856665))

(assert (not start!278064))

(assert tp_is_empty!14909)

(assert (not b!2856668))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


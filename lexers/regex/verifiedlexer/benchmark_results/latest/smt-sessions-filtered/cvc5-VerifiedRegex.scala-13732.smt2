; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733670 () Bool)

(assert start!733670)

(declare-fun b!7615704 () Bool)

(declare-fun res!3048721 () Bool)

(declare-fun e!4528962 () Bool)

(assert (=> b!7615704 (=> (not res!3048721) (not e!4528962))))

(declare-datatypes ((C!40842 0))(
  ( (C!40843 (val!30861 Int)) )
))
(declare-datatypes ((Regex!20258 0))(
  ( (ElementMatch!20258 (c!1403843 C!40842)) (Concat!29103 (regOne!41028 Regex!20258) (regTwo!41028 Regex!20258)) (EmptyExpr!20258) (Star!20258 (reg!20587 Regex!20258)) (EmptyLang!20258) (Union!20258 (regOne!41029 Regex!20258) (regTwo!41029 Regex!20258)) )
))
(declare-fun r!14126 () Regex!20258)

(assert (=> b!7615704 (= res!3048721 (and (not (is-EmptyExpr!20258 r!14126)) (not (is-EmptyLang!20258 r!14126)) (not (is-ElementMatch!20258 r!14126)) (is-Union!20258 r!14126)))))

(declare-fun b!7615705 () Bool)

(declare-fun e!4528960 () Bool)

(declare-fun tp_is_empty!50871 () Bool)

(declare-fun tp!2223664 () Bool)

(assert (=> b!7615705 (= e!4528960 (and tp_is_empty!50871 tp!2223664))))

(declare-fun b!7615707 () Bool)

(declare-datatypes ((Unit!167336 0))(
  ( (Unit!167337) )
))
(declare-fun e!4528965 () Unit!167336)

(declare-fun Unit!167338 () Unit!167336)

(assert (=> b!7615707 (= e!4528965 Unit!167338)))

(declare-fun lt!2655264 () Unit!167336)

(declare-datatypes ((List!73111 0))(
  ( (Nil!72987) (Cons!72987 (h!79435 C!40842) (t!387846 List!73111)) )
))
(declare-fun s!9605 () List!73111)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!97 (Regex!20258 Regex!20258 List!73111) Unit!167336)

(assert (=> b!7615707 (= lt!2655264 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!97 (regOne!41029 r!14126) (regTwo!41029 r!14126) s!9605))))

(declare-fun res!3048723 () Bool)

(declare-fun matchR!9773 (Regex!20258 List!73111) Bool)

(assert (=> b!7615707 (= res!3048723 (matchR!9773 r!14126 s!9605))))

(declare-fun e!4528966 () Bool)

(assert (=> b!7615707 (=> (not res!3048723) (not e!4528966))))

(assert (=> b!7615707 e!4528966))

(declare-fun b!7615708 () Bool)

(declare-fun e!4528963 () Unit!167336)

(declare-fun Unit!167339 () Unit!167336)

(assert (=> b!7615708 (= e!4528963 Unit!167339)))

(declare-fun b!7615709 () Bool)

(declare-fun e!4528961 () Bool)

(assert (=> b!7615709 (= e!4528961 tp_is_empty!50871)))

(declare-fun b!7615710 () Bool)

(declare-fun Unit!167340 () Unit!167336)

(assert (=> b!7615710 (= e!4528965 Unit!167340)))

(declare-fun b!7615711 () Bool)

(declare-fun e!4528964 () Bool)

(assert (=> b!7615711 (= e!4528964 false)))

(declare-fun b!7615712 () Bool)

(declare-fun res!3048724 () Bool)

(assert (=> b!7615712 (=> (not res!3048724) (not e!4528962))))

(assert (=> b!7615712 (= res!3048724 (not (matchR!9773 r!14126 s!9605)))))

(declare-fun b!7615713 () Bool)

(declare-fun Unit!167341 () Unit!167336)

(assert (=> b!7615713 (= e!4528963 Unit!167341)))

(declare-fun lt!2655263 () Unit!167336)

(assert (=> b!7615713 (= lt!2655263 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!97 (regTwo!41029 r!14126) (regOne!41029 r!14126) s!9605))))

(assert (=> b!7615713 (matchR!9773 (Union!20258 (regTwo!41029 r!14126) (regOne!41029 r!14126)) s!9605)))

(declare-fun lt!2655267 () Unit!167336)

(declare-fun lemmaReversedUnionAcceptsSameString!31 (Regex!20258 Regex!20258 List!73111) Unit!167336)

(assert (=> b!7615713 (= lt!2655267 (lemmaReversedUnionAcceptsSameString!31 (regTwo!41029 r!14126) (regOne!41029 r!14126) s!9605))))

(declare-fun res!3048725 () Bool)

(assert (=> b!7615713 (= res!3048725 (matchR!9773 r!14126 s!9605))))

(assert (=> b!7615713 (=> (not res!3048725) (not e!4528964))))

(assert (=> b!7615713 e!4528964))

(declare-fun b!7615714 () Bool)

(declare-fun tp!2223665 () Bool)

(declare-fun tp!2223669 () Bool)

(assert (=> b!7615714 (= e!4528961 (and tp!2223665 tp!2223669))))

(declare-fun b!7615715 () Bool)

(assert (=> b!7615715 (= e!4528966 false)))

(declare-fun b!7615706 () Bool)

(declare-fun tp!2223666 () Bool)

(declare-fun tp!2223667 () Bool)

(assert (=> b!7615706 (= e!4528961 (and tp!2223666 tp!2223667))))

(declare-fun res!3048722 () Bool)

(assert (=> start!733670 (=> (not res!3048722) (not e!4528962))))

(declare-fun validRegex!10680 (Regex!20258) Bool)

(assert (=> start!733670 (= res!3048722 (validRegex!10680 r!14126))))

(assert (=> start!733670 e!4528962))

(assert (=> start!733670 e!4528961))

(assert (=> start!733670 e!4528960))

(declare-fun b!7615716 () Bool)

(declare-fun tp!2223668 () Bool)

(assert (=> b!7615716 (= e!4528961 tp!2223668)))

(declare-fun b!7615717 () Bool)

(assert (=> b!7615717 (= e!4528962 (not true))))

(declare-fun lt!2655269 () Bool)

(declare-fun matchRSpec!4469 (Regex!20258 List!73111) Bool)

(assert (=> b!7615717 (= lt!2655269 (matchRSpec!4469 (regOne!41029 r!14126) s!9605))))

(declare-fun lt!2655266 () Unit!167336)

(declare-fun mainMatchTheorem!4463 (Regex!20258 List!73111) Unit!167336)

(assert (=> b!7615717 (= lt!2655266 (mainMatchTheorem!4463 (regOne!41029 r!14126) s!9605))))

(declare-fun lt!2655268 () Unit!167336)

(assert (=> b!7615717 (= lt!2655268 e!4528963)))

(declare-fun c!1403841 () Bool)

(assert (=> b!7615717 (= c!1403841 (matchR!9773 (regTwo!41029 r!14126) s!9605))))

(declare-fun lt!2655265 () Unit!167336)

(assert (=> b!7615717 (= lt!2655265 e!4528965)))

(declare-fun c!1403842 () Bool)

(assert (=> b!7615717 (= c!1403842 lt!2655269)))

(assert (=> b!7615717 (= lt!2655269 (matchR!9773 (regOne!41029 r!14126) s!9605))))

(assert (= (and start!733670 res!3048722) b!7615704))

(assert (= (and b!7615704 res!3048721) b!7615712))

(assert (= (and b!7615712 res!3048724) b!7615717))

(assert (= (and b!7615717 c!1403842) b!7615707))

(assert (= (and b!7615717 (not c!1403842)) b!7615710))

(assert (= (and b!7615707 res!3048723) b!7615715))

(assert (= (and b!7615717 c!1403841) b!7615713))

(assert (= (and b!7615717 (not c!1403841)) b!7615708))

(assert (= (and b!7615713 res!3048725) b!7615711))

(assert (= (and start!733670 (is-ElementMatch!20258 r!14126)) b!7615709))

(assert (= (and start!733670 (is-Concat!29103 r!14126)) b!7615714))

(assert (= (and start!733670 (is-Star!20258 r!14126)) b!7615716))

(assert (= (and start!733670 (is-Union!20258 r!14126)) b!7615706))

(assert (= (and start!733670 (is-Cons!72987 s!9605)) b!7615705))

(declare-fun m!8149490 () Bool)

(assert (=> b!7615717 m!8149490))

(declare-fun m!8149492 () Bool)

(assert (=> b!7615717 m!8149492))

(declare-fun m!8149494 () Bool)

(assert (=> b!7615717 m!8149494))

(declare-fun m!8149496 () Bool)

(assert (=> b!7615717 m!8149496))

(declare-fun m!8149498 () Bool)

(assert (=> b!7615713 m!8149498))

(declare-fun m!8149500 () Bool)

(assert (=> b!7615713 m!8149500))

(declare-fun m!8149502 () Bool)

(assert (=> b!7615713 m!8149502))

(declare-fun m!8149504 () Bool)

(assert (=> b!7615713 m!8149504))

(declare-fun m!8149506 () Bool)

(assert (=> start!733670 m!8149506))

(declare-fun m!8149508 () Bool)

(assert (=> b!7615707 m!8149508))

(assert (=> b!7615707 m!8149504))

(assert (=> b!7615712 m!8149504))

(push 1)

(assert (not b!7615712))

(assert (not b!7615714))

(assert (not b!7615705))

(assert (not b!7615713))

(assert (not start!733670))

(assert (not b!7615716))

(assert (not b!7615707))

(assert (not b!7615717))

(assert tp_is_empty!50871)

(assert (not b!7615706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


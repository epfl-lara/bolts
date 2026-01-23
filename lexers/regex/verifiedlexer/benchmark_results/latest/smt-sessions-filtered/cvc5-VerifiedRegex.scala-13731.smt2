; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733666 () Bool)

(assert start!733666)

(declare-fun b!7615620 () Bool)

(declare-datatypes ((Unit!167324 0))(
  ( (Unit!167325) )
))
(declare-fun e!4528921 () Unit!167324)

(declare-fun Unit!167326 () Unit!167324)

(assert (=> b!7615620 (= e!4528921 Unit!167326)))

(declare-fun lt!2655231 () Unit!167324)

(declare-datatypes ((C!40838 0))(
  ( (C!40839 (val!30859 Int)) )
))
(declare-datatypes ((Regex!20256 0))(
  ( (ElementMatch!20256 (c!1403829 C!40838)) (Concat!29101 (regOne!41024 Regex!20256) (regTwo!41024 Regex!20256)) (EmptyExpr!20256) (Star!20256 (reg!20585 Regex!20256)) (EmptyLang!20256) (Union!20256 (regOne!41025 Regex!20256) (regTwo!41025 Regex!20256)) )
))
(declare-fun r!14126 () Regex!20256)

(declare-datatypes ((List!73109 0))(
  ( (Nil!72985) (Cons!72985 (h!79433 C!40838) (t!387844 List!73109)) )
))
(declare-fun s!9605 () List!73109)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!95 (Regex!20256 Regex!20256 List!73109) Unit!167324)

(assert (=> b!7615620 (= lt!2655231 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!95 (regTwo!41025 r!14126) (regOne!41025 r!14126) s!9605))))

(declare-fun matchR!9771 (Regex!20256 List!73109) Bool)

(assert (=> b!7615620 (matchR!9771 (Union!20256 (regTwo!41025 r!14126) (regOne!41025 r!14126)) s!9605)))

(declare-fun lt!2655230 () Unit!167324)

(declare-fun lemmaReversedUnionAcceptsSameString!29 (Regex!20256 Regex!20256 List!73109) Unit!167324)

(assert (=> b!7615620 (= lt!2655230 (lemmaReversedUnionAcceptsSameString!29 (regTwo!41025 r!14126) (regOne!41025 r!14126) s!9605))))

(declare-fun res!3048694 () Bool)

(assert (=> b!7615620 (= res!3048694 (matchR!9771 r!14126 s!9605))))

(declare-fun e!4528924 () Bool)

(assert (=> b!7615620 (=> (not res!3048694) (not e!4528924))))

(assert (=> b!7615620 e!4528924))

(declare-fun b!7615621 () Bool)

(declare-fun e!4528923 () Bool)

(assert (=> b!7615621 (= e!4528923 false)))

(declare-fun b!7615622 () Bool)

(declare-fun e!4528920 () Bool)

(declare-fun tp_is_empty!50867 () Bool)

(assert (=> b!7615622 (= e!4528920 tp_is_empty!50867)))

(declare-fun b!7615623 () Bool)

(declare-fun res!3048692 () Bool)

(declare-fun e!4528918 () Bool)

(assert (=> b!7615623 (=> (not res!3048692) (not e!4528918))))

(assert (=> b!7615623 (= res!3048692 (not (matchR!9771 r!14126 s!9605)))))

(declare-fun b!7615624 () Bool)

(declare-fun res!3048691 () Bool)

(assert (=> b!7615624 (=> (not res!3048691) (not e!4528918))))

(assert (=> b!7615624 (= res!3048691 (and (not (is-EmptyExpr!20256 r!14126)) (not (is-EmptyLang!20256 r!14126)) (not (is-ElementMatch!20256 r!14126)) (is-Union!20256 r!14126)))))

(declare-fun b!7615625 () Bool)

(declare-fun e!4528919 () Bool)

(declare-fun tp!2223631 () Bool)

(assert (=> b!7615625 (= e!4528919 (and tp_is_empty!50867 tp!2223631))))

(declare-fun b!7615626 () Bool)

(declare-fun tp!2223628 () Bool)

(declare-fun tp!2223633 () Bool)

(assert (=> b!7615626 (= e!4528920 (and tp!2223628 tp!2223633))))

(declare-fun b!7615627 () Bool)

(assert (=> b!7615627 (= e!4528918 false)))

(declare-fun lt!2655229 () Unit!167324)

(assert (=> b!7615627 (= lt!2655229 e!4528921)))

(declare-fun c!1403827 () Bool)

(assert (=> b!7615627 (= c!1403827 (matchR!9771 (regTwo!41025 r!14126) s!9605))))

(declare-fun lt!2655232 () Unit!167324)

(declare-fun e!4528922 () Unit!167324)

(assert (=> b!7615627 (= lt!2655232 e!4528922)))

(declare-fun c!1403828 () Bool)

(assert (=> b!7615627 (= c!1403828 (matchR!9771 (regOne!41025 r!14126) s!9605))))

(declare-fun b!7615628 () Bool)

(declare-fun Unit!167327 () Unit!167324)

(assert (=> b!7615628 (= e!4528921 Unit!167327)))

(declare-fun res!3048695 () Bool)

(assert (=> start!733666 (=> (not res!3048695) (not e!4528918))))

(declare-fun validRegex!10678 (Regex!20256) Bool)

(assert (=> start!733666 (= res!3048695 (validRegex!10678 r!14126))))

(assert (=> start!733666 e!4528918))

(assert (=> start!733666 e!4528920))

(assert (=> start!733666 e!4528919))

(declare-fun b!7615629 () Bool)

(declare-fun Unit!167328 () Unit!167324)

(assert (=> b!7615629 (= e!4528922 Unit!167328)))

(declare-fun lt!2655233 () Unit!167324)

(assert (=> b!7615629 (= lt!2655233 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!95 (regOne!41025 r!14126) (regTwo!41025 r!14126) s!9605))))

(declare-fun res!3048693 () Bool)

(assert (=> b!7615629 (= res!3048693 (matchR!9771 r!14126 s!9605))))

(assert (=> b!7615629 (=> (not res!3048693) (not e!4528923))))

(assert (=> b!7615629 e!4528923))

(declare-fun b!7615630 () Bool)

(assert (=> b!7615630 (= e!4528924 false)))

(declare-fun b!7615631 () Bool)

(declare-fun tp!2223632 () Bool)

(assert (=> b!7615631 (= e!4528920 tp!2223632)))

(declare-fun b!7615632 () Bool)

(declare-fun Unit!167329 () Unit!167324)

(assert (=> b!7615632 (= e!4528922 Unit!167329)))

(declare-fun b!7615633 () Bool)

(declare-fun tp!2223630 () Bool)

(declare-fun tp!2223629 () Bool)

(assert (=> b!7615633 (= e!4528920 (and tp!2223630 tp!2223629))))

(assert (= (and start!733666 res!3048695) b!7615624))

(assert (= (and b!7615624 res!3048691) b!7615623))

(assert (= (and b!7615623 res!3048692) b!7615627))

(assert (= (and b!7615627 c!1403828) b!7615629))

(assert (= (and b!7615627 (not c!1403828)) b!7615632))

(assert (= (and b!7615629 res!3048693) b!7615621))

(assert (= (and b!7615627 c!1403827) b!7615620))

(assert (= (and b!7615627 (not c!1403827)) b!7615628))

(assert (= (and b!7615620 res!3048694) b!7615630))

(assert (= (and start!733666 (is-ElementMatch!20256 r!14126)) b!7615622))

(assert (= (and start!733666 (is-Concat!29101 r!14126)) b!7615626))

(assert (= (and start!733666 (is-Star!20256 r!14126)) b!7615631))

(assert (= (and start!733666 (is-Union!20256 r!14126)) b!7615633))

(assert (= (and start!733666 (is-Cons!72985 s!9605)) b!7615625))

(declare-fun m!8149458 () Bool)

(assert (=> b!7615627 m!8149458))

(declare-fun m!8149460 () Bool)

(assert (=> b!7615627 m!8149460))

(declare-fun m!8149462 () Bool)

(assert (=> b!7615620 m!8149462))

(declare-fun m!8149464 () Bool)

(assert (=> b!7615620 m!8149464))

(declare-fun m!8149466 () Bool)

(assert (=> b!7615620 m!8149466))

(declare-fun m!8149468 () Bool)

(assert (=> b!7615620 m!8149468))

(declare-fun m!8149470 () Bool)

(assert (=> start!733666 m!8149470))

(assert (=> b!7615623 m!8149468))

(declare-fun m!8149472 () Bool)

(assert (=> b!7615629 m!8149472))

(assert (=> b!7615629 m!8149468))

(push 1)

(assert tp_is_empty!50867)

(assert (not b!7615627))

(assert (not b!7615625))

(assert (not b!7615623))

(assert (not b!7615629))

(assert (not b!7615620))

(assert (not start!733666))

(assert (not b!7615626))

(assert (not b!7615633))

(assert (not b!7615631))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


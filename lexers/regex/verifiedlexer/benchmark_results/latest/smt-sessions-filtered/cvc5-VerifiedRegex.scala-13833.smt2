; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735730 () Bool)

(assert start!735730)

(declare-fun b!7644700 () Bool)

(declare-fun e!4543794 () Bool)

(declare-fun tp!2231538 () Bool)

(declare-fun tp!2231541 () Bool)

(assert (=> b!7644700 (= e!4543794 (and tp!2231538 tp!2231541))))

(declare-fun b!7644701 () Bool)

(declare-fun e!4543799 () Bool)

(assert (=> b!7644701 (= e!4543799 (not false))))

(declare-datatypes ((C!41246 0))(
  ( (C!41247 (val!31063 Int)) )
))
(declare-datatypes ((Regex!20460 0))(
  ( (ElementMatch!20460 (c!1408080 C!41246)) (Concat!29305 (regOne!41432 Regex!20460) (regTwo!41432 Regex!20460)) (EmptyExpr!20460) (Star!20460 (reg!20789 Regex!20460)) (EmptyLang!20460) (Union!20460 (regOne!41433 Regex!20460) (regTwo!41433 Regex!20460)) )
))
(declare-fun r!14126 () Regex!20460)

(declare-datatypes ((List!73311 0))(
  ( (Nil!73187) (Cons!73187 (h!79635 C!41246) (t!388046 List!73311)) )
))
(declare-fun s!9605 () List!73311)

(declare-fun matchR!9961 (Regex!20460 List!73311) Bool)

(assert (=> b!7644701 (matchR!9961 r!14126 s!9605)))

(declare-datatypes ((Unit!167900 0))(
  ( (Unit!167901) )
))
(declare-fun lt!2660813 () Unit!167900)

(declare-fun lemmaReversedUnionAcceptsSameString!35 (Regex!20460 Regex!20460 List!73311) Unit!167900)

(assert (=> b!7644701 (= lt!2660813 (lemmaReversedUnionAcceptsSameString!35 (regTwo!41433 r!14126) (regOne!41433 r!14126) s!9605))))

(assert (=> b!7644701 (matchR!9961 (Union!20460 (regTwo!41433 r!14126) (regOne!41433 r!14126)) s!9605)))

(declare-fun lt!2660815 () Unit!167900)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!107 (Regex!20460 Regex!20460 List!73311) Unit!167900)

(assert (=> b!7644701 (= lt!2660815 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!107 (regTwo!41433 r!14126) (regOne!41433 r!14126) s!9605))))

(declare-fun b!7644702 () Bool)

(declare-fun res!3062009 () Bool)

(declare-fun e!4543797 () Bool)

(assert (=> b!7644702 (=> (not res!3062009) (not e!4543797))))

(assert (=> b!7644702 (= res!3062009 (not (matchR!9961 r!14126 s!9605)))))

(declare-fun b!7644703 () Bool)

(assert (=> b!7644703 (= e!4543797 e!4543799)))

(declare-fun res!3062006 () Bool)

(assert (=> b!7644703 (=> (not res!3062006) (not e!4543799))))

(assert (=> b!7644703 (= res!3062006 (matchR!9961 (regTwo!41433 r!14126) s!9605))))

(declare-fun lt!2660814 () Unit!167900)

(declare-fun e!4543796 () Unit!167900)

(assert (=> b!7644703 (= lt!2660814 e!4543796)))

(declare-fun c!1408079 () Bool)

(assert (=> b!7644703 (= c!1408079 (matchR!9961 (regOne!41433 r!14126) s!9605))))

(declare-fun b!7644704 () Bool)

(declare-fun e!4543798 () Bool)

(assert (=> b!7644704 (= e!4543798 false)))

(declare-fun b!7644705 () Bool)

(declare-fun tp_is_empty!51275 () Bool)

(assert (=> b!7644705 (= e!4543794 tp_is_empty!51275)))

(declare-fun b!7644706 () Bool)

(declare-fun Unit!167902 () Unit!167900)

(assert (=> b!7644706 (= e!4543796 Unit!167902)))

(declare-fun b!7644707 () Bool)

(declare-fun tp!2231543 () Bool)

(declare-fun tp!2231539 () Bool)

(assert (=> b!7644707 (= e!4543794 (and tp!2231543 tp!2231539))))

(declare-fun res!3062005 () Bool)

(assert (=> start!735730 (=> (not res!3062005) (not e!4543797))))

(declare-fun validRegex!10878 (Regex!20460) Bool)

(assert (=> start!735730 (= res!3062005 (validRegex!10878 r!14126))))

(assert (=> start!735730 e!4543797))

(assert (=> start!735730 e!4543794))

(declare-fun e!4543795 () Bool)

(assert (=> start!735730 e!4543795))

(declare-fun b!7644708 () Bool)

(declare-fun tp!2231542 () Bool)

(assert (=> b!7644708 (= e!4543794 tp!2231542)))

(declare-fun b!7644709 () Bool)

(declare-fun tp!2231540 () Bool)

(assert (=> b!7644709 (= e!4543795 (and tp_is_empty!51275 tp!2231540))))

(declare-fun b!7644710 () Bool)

(declare-fun res!3062007 () Bool)

(assert (=> b!7644710 (=> (not res!3062007) (not e!4543797))))

(assert (=> b!7644710 (= res!3062007 (and (not (is-EmptyExpr!20460 r!14126)) (not (is-EmptyLang!20460 r!14126)) (not (is-ElementMatch!20460 r!14126)) (is-Union!20460 r!14126)))))

(declare-fun b!7644711 () Bool)

(declare-fun Unit!167903 () Unit!167900)

(assert (=> b!7644711 (= e!4543796 Unit!167903)))

(declare-fun lt!2660816 () Unit!167900)

(assert (=> b!7644711 (= lt!2660816 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!107 (regOne!41433 r!14126) (regTwo!41433 r!14126) s!9605))))

(declare-fun res!3062008 () Bool)

(assert (=> b!7644711 (= res!3062008 (matchR!9961 r!14126 s!9605))))

(assert (=> b!7644711 (=> (not res!3062008) (not e!4543798))))

(assert (=> b!7644711 e!4543798))

(assert (= (and start!735730 res!3062005) b!7644710))

(assert (= (and b!7644710 res!3062007) b!7644702))

(assert (= (and b!7644702 res!3062009) b!7644703))

(assert (= (and b!7644703 c!1408079) b!7644711))

(assert (= (and b!7644703 (not c!1408079)) b!7644706))

(assert (= (and b!7644711 res!3062008) b!7644704))

(assert (= (and b!7644703 res!3062006) b!7644701))

(assert (= (and start!735730 (is-ElementMatch!20460 r!14126)) b!7644705))

(assert (= (and start!735730 (is-Concat!29305 r!14126)) b!7644700))

(assert (= (and start!735730 (is-Star!20460 r!14126)) b!7644708))

(assert (= (and start!735730 (is-Union!20460 r!14126)) b!7644707))

(assert (= (and start!735730 (is-Cons!73187 s!9605)) b!7644709))

(declare-fun m!8164130 () Bool)

(assert (=> b!7644711 m!8164130))

(declare-fun m!8164132 () Bool)

(assert (=> b!7644711 m!8164132))

(assert (=> b!7644702 m!8164132))

(declare-fun m!8164134 () Bool)

(assert (=> start!735730 m!8164134))

(assert (=> b!7644701 m!8164132))

(declare-fun m!8164136 () Bool)

(assert (=> b!7644701 m!8164136))

(declare-fun m!8164138 () Bool)

(assert (=> b!7644701 m!8164138))

(declare-fun m!8164140 () Bool)

(assert (=> b!7644701 m!8164140))

(declare-fun m!8164142 () Bool)

(assert (=> b!7644703 m!8164142))

(declare-fun m!8164144 () Bool)

(assert (=> b!7644703 m!8164144))

(push 1)

(assert (not b!7644701))

(assert (not b!7644702))

(assert (not b!7644709))

(assert tp_is_empty!51275)

(assert (not b!7644700))

(assert (not b!7644707))

(assert (not b!7644711))

(assert (not start!735730))

(assert (not b!7644703))

(assert (not b!7644708))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


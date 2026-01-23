; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284656 () Bool)

(assert start!284656)

(declare-fun b!2926022 () Bool)

(declare-fun e!1845599 () Bool)

(declare-fun e!1845598 () Bool)

(assert (=> b!2926022 (= e!1845599 (not e!1845598))))

(declare-fun res!1207722 () Bool)

(assert (=> b!2926022 (=> res!1207722 e!1845598)))

(declare-fun lt!1026739 () Bool)

(declare-datatypes ((C!18220 0))(
  ( (C!18221 (val!11146 Int)) )
))
(declare-datatypes ((Regex!9017 0))(
  ( (ElementMatch!9017 (c!477807 C!18220)) (Concat!14338 (regOne!18546 Regex!9017) (regTwo!18546 Regex!9017)) (EmptyExpr!9017) (Star!9017 (reg!9346 Regex!9017)) (EmptyLang!9017) (Union!9017 (regOne!18547 Regex!9017) (regTwo!18547 Regex!9017)) )
))
(declare-fun r!17423 () Regex!9017)

(get-info :version)

(assert (=> b!2926022 (= res!1207722 (or (not lt!1026739) ((_ is Concat!14338) r!17423) (not ((_ is Union!9017) r!17423))))))

(declare-datatypes ((List!34882 0))(
  ( (Nil!34758) (Cons!34758 (h!40178 C!18220) (t!233947 List!34882)) )
))
(declare-fun s!11993 () List!34882)

(declare-fun matchRSpec!1154 (Regex!9017 List!34882) Bool)

(assert (=> b!2926022 (= lt!1026739 (matchRSpec!1154 r!17423 s!11993))))

(declare-fun matchR!3899 (Regex!9017 List!34882) Bool)

(assert (=> b!2926022 (= lt!1026739 (matchR!3899 r!17423 s!11993))))

(declare-datatypes ((Unit!48373 0))(
  ( (Unit!48374) )
))
(declare-fun lt!1026742 () Unit!48373)

(declare-fun mainMatchTheorem!1154 (Regex!9017 List!34882) Unit!48373)

(assert (=> b!2926022 (= lt!1026742 (mainMatchTheorem!1154 r!17423 s!11993))))

(declare-fun b!2926023 () Bool)

(declare-fun e!1845601 () Bool)

(declare-fun tp_is_empty!15597 () Bool)

(declare-fun tp!938233 () Bool)

(assert (=> b!2926023 (= e!1845601 (and tp_is_empty!15597 tp!938233))))

(declare-fun b!2926024 () Bool)

(declare-fun e!1845596 () Bool)

(declare-fun tp!938237 () Bool)

(assert (=> b!2926024 (= e!1845596 tp!938237)))

(declare-fun b!2926025 () Bool)

(declare-fun e!1845595 () Bool)

(assert (=> b!2926025 (= e!1845595 (matchR!3899 (regTwo!18547 r!17423) s!11993))))

(declare-fun b!2926026 () Bool)

(declare-fun e!1845600 () Bool)

(assert (=> b!2926026 (= e!1845600 true)))

(declare-fun lt!1026741 () Regex!9017)

(declare-fun lt!1026745 () Regex!9017)

(assert (=> b!2926026 (matchR!3899 (Union!9017 lt!1026741 lt!1026745) s!11993)))

(declare-fun lt!1026740 () Unit!48373)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!58 (Regex!9017 Regex!9017 List!34882) Unit!48373)

(assert (=> b!2926026 (= lt!1026740 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!58 lt!1026741 lt!1026745 s!11993))))

(declare-fun simplify!46 (Regex!9017) Regex!9017)

(assert (=> b!2926026 (= lt!1026745 (simplify!46 (regOne!18547 r!17423)))))

(declare-fun b!2926027 () Bool)

(assert (=> b!2926027 (= e!1845596 tp_is_empty!15597)))

(declare-fun b!2926028 () Bool)

(declare-fun tp!938235 () Bool)

(declare-fun tp!938236 () Bool)

(assert (=> b!2926028 (= e!1845596 (and tp!938235 tp!938236))))

(declare-fun b!2926029 () Bool)

(declare-fun e!1845597 () Bool)

(assert (=> b!2926029 (= e!1845598 e!1845597)))

(declare-fun res!1207719 () Bool)

(assert (=> b!2926029 (=> res!1207719 e!1845597)))

(declare-fun lt!1026743 () Bool)

(assert (=> b!2926029 (= res!1207719 lt!1026743)))

(assert (=> b!2926029 e!1845595))

(declare-fun res!1207718 () Bool)

(assert (=> b!2926029 (=> res!1207718 e!1845595)))

(assert (=> b!2926029 (= res!1207718 lt!1026743)))

(assert (=> b!2926029 (= lt!1026743 (matchR!3899 (regOne!18547 r!17423) s!11993))))

(declare-fun lt!1026744 () Unit!48373)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!266 (Regex!9017 Regex!9017 List!34882) Unit!48373)

(assert (=> b!2926029 (= lt!1026744 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!266 (regOne!18547 r!17423) (regTwo!18547 r!17423) s!11993))))

(declare-fun res!1207720 () Bool)

(assert (=> start!284656 (=> (not res!1207720) (not e!1845599))))

(declare-fun validRegex!3750 (Regex!9017) Bool)

(assert (=> start!284656 (= res!1207720 (validRegex!3750 r!17423))))

(assert (=> start!284656 e!1845599))

(assert (=> start!284656 e!1845596))

(assert (=> start!284656 e!1845601))

(declare-fun b!2926030 () Bool)

(assert (=> b!2926030 (= e!1845597 e!1845600)))

(declare-fun res!1207721 () Bool)

(assert (=> b!2926030 (=> res!1207721 e!1845600)))

(declare-fun lt!1026747 () Bool)

(assert (=> b!2926030 (= res!1207721 (not lt!1026747))))

(declare-fun lt!1026738 () Bool)

(assert (=> b!2926030 (= lt!1026738 lt!1026747)))

(assert (=> b!2926030 (= lt!1026747 (matchR!3899 lt!1026741 s!11993))))

(assert (=> b!2926030 (= lt!1026738 (matchR!3899 (regTwo!18547 r!17423) s!11993))))

(assert (=> b!2926030 (= lt!1026741 (simplify!46 (regTwo!18547 r!17423)))))

(declare-fun lt!1026746 () Unit!48373)

(declare-fun lemmaSimplifySound!44 (Regex!9017 List!34882) Unit!48373)

(assert (=> b!2926030 (= lt!1026746 (lemmaSimplifySound!44 (regTwo!18547 r!17423) s!11993))))

(declare-fun b!2926031 () Bool)

(declare-fun tp!938232 () Bool)

(declare-fun tp!938234 () Bool)

(assert (=> b!2926031 (= e!1845596 (and tp!938232 tp!938234))))

(assert (= (and start!284656 res!1207720) b!2926022))

(assert (= (and b!2926022 (not res!1207722)) b!2926029))

(assert (= (and b!2926029 (not res!1207718)) b!2926025))

(assert (= (and b!2926029 (not res!1207719)) b!2926030))

(assert (= (and b!2926030 (not res!1207721)) b!2926026))

(assert (= (and start!284656 ((_ is ElementMatch!9017) r!17423)) b!2926027))

(assert (= (and start!284656 ((_ is Concat!14338) r!17423)) b!2926031))

(assert (= (and start!284656 ((_ is Star!9017) r!17423)) b!2926024))

(assert (= (and start!284656 ((_ is Union!9017) r!17423)) b!2926028))

(assert (= (and start!284656 ((_ is Cons!34758) s!11993)) b!2926023))

(declare-fun m!3318871 () Bool)

(assert (=> start!284656 m!3318871))

(declare-fun m!3318873 () Bool)

(assert (=> b!2926029 m!3318873))

(declare-fun m!3318875 () Bool)

(assert (=> b!2926029 m!3318875))

(declare-fun m!3318877 () Bool)

(assert (=> b!2926022 m!3318877))

(declare-fun m!3318879 () Bool)

(assert (=> b!2926022 m!3318879))

(declare-fun m!3318881 () Bool)

(assert (=> b!2926022 m!3318881))

(declare-fun m!3318883 () Bool)

(assert (=> b!2926025 m!3318883))

(declare-fun m!3318885 () Bool)

(assert (=> b!2926030 m!3318885))

(assert (=> b!2926030 m!3318883))

(declare-fun m!3318887 () Bool)

(assert (=> b!2926030 m!3318887))

(declare-fun m!3318889 () Bool)

(assert (=> b!2926030 m!3318889))

(declare-fun m!3318891 () Bool)

(assert (=> b!2926026 m!3318891))

(declare-fun m!3318893 () Bool)

(assert (=> b!2926026 m!3318893))

(declare-fun m!3318895 () Bool)

(assert (=> b!2926026 m!3318895))

(check-sat (not b!2926023) (not b!2926026) (not b!2926030) (not b!2926029) (not b!2926028) (not b!2926024) (not start!284656) (not b!2926025) tp_is_empty!15597 (not b!2926022) (not b!2926031))
(check-sat)

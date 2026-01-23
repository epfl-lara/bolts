; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284660 () Bool)

(assert start!284660)

(declare-fun b!2926092 () Bool)

(declare-fun res!1207760 () Bool)

(declare-fun e!1845643 () Bool)

(assert (=> b!2926092 (=> res!1207760 e!1845643)))

(declare-datatypes ((C!18224 0))(
  ( (C!18225 (val!11148 Int)) )
))
(declare-datatypes ((Regex!9019 0))(
  ( (ElementMatch!9019 (c!477809 C!18224)) (Concat!14340 (regOne!18550 Regex!9019) (regTwo!18550 Regex!9019)) (EmptyExpr!9019) (Star!9019 (reg!9348 Regex!9019)) (EmptyLang!9019) (Union!9019 (regOne!18551 Regex!9019) (regTwo!18551 Regex!9019)) )
))
(declare-fun lt!1026806 () Regex!9019)

(declare-fun validRegex!3752 (Regex!9019) Bool)

(assert (=> b!2926092 (= res!1207760 (not (validRegex!3752 lt!1026806)))))

(declare-fun b!2926093 () Bool)

(assert (=> b!2926093 (= e!1845643 true)))

(declare-fun lt!1026813 () Regex!9019)

(declare-datatypes ((List!34884 0))(
  ( (Nil!34760) (Cons!34760 (h!40180 C!18224) (t!233949 List!34884)) )
))
(declare-fun s!11993 () List!34884)

(declare-fun matchR!3901 (Regex!9019 List!34884) Bool)

(assert (=> b!2926093 (matchR!3901 (Union!9019 lt!1026806 lt!1026813) s!11993)))

(declare-datatypes ((Unit!48377 0))(
  ( (Unit!48378) )
))
(declare-fun lt!1026812 () Unit!48377)

(declare-fun lemmaReversedUnionAcceptsSameString!16 (Regex!9019 Regex!9019 List!34884) Unit!48377)

(assert (=> b!2926093 (= lt!1026812 (lemmaReversedUnionAcceptsSameString!16 lt!1026813 lt!1026806 s!11993))))

(declare-fun res!1207759 () Bool)

(declare-fun e!1845648 () Bool)

(assert (=> start!284660 (=> (not res!1207759) (not e!1845648))))

(declare-fun r!17423 () Regex!9019)

(assert (=> start!284660 (= res!1207759 (validRegex!3752 r!17423))))

(assert (=> start!284660 e!1845648))

(declare-fun e!1845646 () Bool)

(assert (=> start!284660 e!1845646))

(declare-fun e!1845647 () Bool)

(assert (=> start!284660 e!1845647))

(declare-fun b!2926094 () Bool)

(declare-fun tp_is_empty!15601 () Bool)

(assert (=> b!2926094 (= e!1845646 tp_is_empty!15601)))

(declare-fun b!2926095 () Bool)

(declare-fun tp!938268 () Bool)

(declare-fun tp!938271 () Bool)

(assert (=> b!2926095 (= e!1845646 (and tp!938268 tp!938271))))

(declare-fun b!2926096 () Bool)

(declare-fun tp!938272 () Bool)

(assert (=> b!2926096 (= e!1845646 tp!938272)))

(declare-fun b!2926097 () Bool)

(declare-fun tp!938269 () Bool)

(declare-fun tp!938270 () Bool)

(assert (=> b!2926097 (= e!1845646 (and tp!938269 tp!938270))))

(declare-fun b!2926098 () Bool)

(declare-fun e!1845649 () Bool)

(assert (=> b!2926098 (= e!1845649 (matchR!3901 (regTwo!18551 r!17423) s!11993))))

(declare-fun b!2926099 () Bool)

(declare-fun e!1845645 () Bool)

(assert (=> b!2926099 (= e!1845645 e!1845643)))

(declare-fun res!1207762 () Bool)

(assert (=> b!2926099 (=> res!1207762 e!1845643)))

(assert (=> b!2926099 (= res!1207762 (not (validRegex!3752 lt!1026813)))))

(assert (=> b!2926099 (matchR!3901 (Union!9019 lt!1026813 lt!1026806) s!11993)))

(declare-fun lt!1026810 () Unit!48377)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!60 (Regex!9019 Regex!9019 List!34884) Unit!48377)

(assert (=> b!2926099 (= lt!1026810 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!60 lt!1026813 lt!1026806 s!11993))))

(declare-fun simplify!48 (Regex!9019) Regex!9019)

(assert (=> b!2926099 (= lt!1026806 (simplify!48 (regOne!18551 r!17423)))))

(declare-fun b!2926100 () Bool)

(declare-fun e!1845642 () Bool)

(assert (=> b!2926100 (= e!1845642 e!1845645)))

(declare-fun res!1207761 () Bool)

(assert (=> b!2926100 (=> res!1207761 e!1845645)))

(declare-fun lt!1026805 () Bool)

(assert (=> b!2926100 (= res!1207761 (not lt!1026805))))

(declare-fun lt!1026811 () Bool)

(assert (=> b!2926100 (= lt!1026811 lt!1026805)))

(assert (=> b!2926100 (= lt!1026805 (matchR!3901 lt!1026813 s!11993))))

(assert (=> b!2926100 (= lt!1026811 (matchR!3901 (regTwo!18551 r!17423) s!11993))))

(assert (=> b!2926100 (= lt!1026813 (simplify!48 (regTwo!18551 r!17423)))))

(declare-fun lt!1026803 () Unit!48377)

(declare-fun lemmaSimplifySound!46 (Regex!9019 List!34884) Unit!48377)

(assert (=> b!2926100 (= lt!1026803 (lemmaSimplifySound!46 (regTwo!18551 r!17423) s!11993))))

(declare-fun b!2926101 () Bool)

(declare-fun tp!938273 () Bool)

(assert (=> b!2926101 (= e!1845647 (and tp_is_empty!15601 tp!938273))))

(declare-fun b!2926102 () Bool)

(declare-fun e!1845644 () Bool)

(assert (=> b!2926102 (= e!1845644 e!1845642)))

(declare-fun res!1207763 () Bool)

(assert (=> b!2926102 (=> res!1207763 e!1845642)))

(declare-fun lt!1026808 () Bool)

(assert (=> b!2926102 (= res!1207763 lt!1026808)))

(assert (=> b!2926102 e!1845649))

(declare-fun res!1207764 () Bool)

(assert (=> b!2926102 (=> res!1207764 e!1845649)))

(assert (=> b!2926102 (= res!1207764 lt!1026808)))

(assert (=> b!2926102 (= lt!1026808 (matchR!3901 (regOne!18551 r!17423) s!11993))))

(declare-fun lt!1026807 () Unit!48377)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!268 (Regex!9019 Regex!9019 List!34884) Unit!48377)

(assert (=> b!2926102 (= lt!1026807 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!268 (regOne!18551 r!17423) (regTwo!18551 r!17423) s!11993))))

(declare-fun b!2926103 () Bool)

(assert (=> b!2926103 (= e!1845648 (not e!1845644))))

(declare-fun res!1207758 () Bool)

(assert (=> b!2926103 (=> res!1207758 e!1845644)))

(declare-fun lt!1026809 () Bool)

(get-info :version)

(assert (=> b!2926103 (= res!1207758 (or (not lt!1026809) ((_ is Concat!14340) r!17423) (not ((_ is Union!9019) r!17423))))))

(declare-fun matchRSpec!1156 (Regex!9019 List!34884) Bool)

(assert (=> b!2926103 (= lt!1026809 (matchRSpec!1156 r!17423 s!11993))))

(assert (=> b!2926103 (= lt!1026809 (matchR!3901 r!17423 s!11993))))

(declare-fun lt!1026804 () Unit!48377)

(declare-fun mainMatchTheorem!1156 (Regex!9019 List!34884) Unit!48377)

(assert (=> b!2926103 (= lt!1026804 (mainMatchTheorem!1156 r!17423 s!11993))))

(assert (= (and start!284660 res!1207759) b!2926103))

(assert (= (and b!2926103 (not res!1207758)) b!2926102))

(assert (= (and b!2926102 (not res!1207764)) b!2926098))

(assert (= (and b!2926102 (not res!1207763)) b!2926100))

(assert (= (and b!2926100 (not res!1207761)) b!2926099))

(assert (= (and b!2926099 (not res!1207762)) b!2926092))

(assert (= (and b!2926092 (not res!1207760)) b!2926093))

(assert (= (and start!284660 ((_ is ElementMatch!9019) r!17423)) b!2926094))

(assert (= (and start!284660 ((_ is Concat!14340) r!17423)) b!2926095))

(assert (= (and start!284660 ((_ is Star!9019) r!17423)) b!2926096))

(assert (= (and start!284660 ((_ is Union!9019) r!17423)) b!2926097))

(assert (= (and start!284660 ((_ is Cons!34760) s!11993)) b!2926101))

(declare-fun m!3318931 () Bool)

(assert (=> b!2926103 m!3318931))

(declare-fun m!3318933 () Bool)

(assert (=> b!2926103 m!3318933))

(declare-fun m!3318935 () Bool)

(assert (=> b!2926103 m!3318935))

(declare-fun m!3318937 () Bool)

(assert (=> b!2926098 m!3318937))

(declare-fun m!3318939 () Bool)

(assert (=> b!2926093 m!3318939))

(declare-fun m!3318941 () Bool)

(assert (=> b!2926093 m!3318941))

(declare-fun m!3318943 () Bool)

(assert (=> b!2926099 m!3318943))

(declare-fun m!3318945 () Bool)

(assert (=> b!2926099 m!3318945))

(declare-fun m!3318947 () Bool)

(assert (=> b!2926099 m!3318947))

(declare-fun m!3318949 () Bool)

(assert (=> b!2926099 m!3318949))

(declare-fun m!3318951 () Bool)

(assert (=> b!2926092 m!3318951))

(declare-fun m!3318953 () Bool)

(assert (=> b!2926102 m!3318953))

(declare-fun m!3318955 () Bool)

(assert (=> b!2926102 m!3318955))

(declare-fun m!3318957 () Bool)

(assert (=> start!284660 m!3318957))

(declare-fun m!3318959 () Bool)

(assert (=> b!2926100 m!3318959))

(assert (=> b!2926100 m!3318937))

(declare-fun m!3318961 () Bool)

(assert (=> b!2926100 m!3318961))

(declare-fun m!3318963 () Bool)

(assert (=> b!2926100 m!3318963))

(check-sat (not b!2926099) (not b!2926097) (not b!2926095) (not b!2926102) (not b!2926096) (not b!2926092) (not b!2926103) (not start!284660) tp_is_empty!15601 (not b!2926093) (not b!2926101) (not b!2926100) (not b!2926098))
(check-sat)

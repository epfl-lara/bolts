; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286928 () Bool)

(assert start!286928)

(declare-fun b!2961755 () Bool)

(declare-fun e!1864275 () Bool)

(declare-fun tp!945161 () Bool)

(declare-fun tp!945159 () Bool)

(assert (=> b!2961755 (= e!1864275 (and tp!945161 tp!945159))))

(declare-fun res!1221922 () Bool)

(declare-fun e!1864277 () Bool)

(assert (=> start!286928 (=> (not res!1221922) (not e!1864277))))

(declare-datatypes ((C!18584 0))(
  ( (C!18585 (val!11328 Int)) )
))
(declare-datatypes ((Regex!9199 0))(
  ( (ElementMatch!9199 (c!485429 C!18584)) (Concat!14520 (regOne!18910 Regex!9199) (regTwo!18910 Regex!9199)) (EmptyExpr!9199) (Star!9199 (reg!9528 Regex!9199)) (EmptyLang!9199) (Union!9199 (regOne!18911 Regex!9199) (regTwo!18911 Regex!9199)) )
))
(declare-fun r!17423 () Regex!9199)

(declare-fun validRegex!3932 (Regex!9199) Bool)

(assert (=> start!286928 (= res!1221922 (validRegex!3932 r!17423))))

(assert (=> start!286928 e!1864277))

(assert (=> start!286928 e!1864275))

(declare-fun e!1864276 () Bool)

(assert (=> start!286928 e!1864276))

(declare-fun b!2961756 () Bool)

(declare-fun e!1864272 () Bool)

(declare-fun e!1864274 () Bool)

(assert (=> b!2961756 (= e!1864272 e!1864274)))

(declare-fun res!1221924 () Bool)

(assert (=> b!2961756 (=> res!1221924 e!1864274)))

(declare-fun lt!1034271 () Bool)

(assert (=> b!2961756 (= res!1221924 (not lt!1034271))))

(declare-fun lt!1034275 () Regex!9199)

(declare-datatypes ((List!35064 0))(
  ( (Nil!34940) (Cons!34940 (h!40360 C!18584) (t!234129 List!35064)) )
))
(declare-fun s!11993 () List!35064)

(declare-fun matchR!4081 (Regex!9199 List!35064) Bool)

(assert (=> b!2961756 (= lt!1034271 (matchR!4081 lt!1034275 s!11993))))

(assert (=> b!2961756 (= lt!1034271 (matchR!4081 (regTwo!18911 r!17423) s!11993))))

(declare-datatypes ((Unit!48777 0))(
  ( (Unit!48778) )
))
(declare-fun lt!1034274 () Unit!48777)

(declare-fun lemmaSimplifySound!128 (Regex!9199 List!35064) Unit!48777)

(assert (=> b!2961756 (= lt!1034274 (lemmaSimplifySound!128 (regTwo!18911 r!17423) s!11993))))

(declare-fun b!2961757 () Bool)

(declare-fun tp!945156 () Bool)

(declare-fun tp!945160 () Bool)

(assert (=> b!2961757 (= e!1864275 (and tp!945156 tp!945160))))

(declare-fun b!2961758 () Bool)

(assert (=> b!2961758 (= e!1864274 true)))

(assert (=> b!2961758 (matchR!4081 (Union!9199 (regTwo!18911 r!17423) (regOne!18911 r!17423)) s!11993)))

(declare-fun lt!1034276 () Unit!48777)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!64 (Regex!9199 Regex!9199 List!35064) Unit!48777)

(assert (=> b!2961758 (= lt!1034276 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!64 (regTwo!18911 r!17423) (regOne!18911 r!17423) s!11993))))

(declare-fun b!2961759 () Bool)

(declare-fun e!1864273 () Bool)

(assert (=> b!2961759 (= e!1864277 (not e!1864273))))

(declare-fun res!1221923 () Bool)

(assert (=> b!2961759 (=> res!1221923 e!1864273)))

(declare-fun lt!1034273 () Bool)

(get-info :version)

(assert (=> b!2961759 (= res!1221923 (or lt!1034273 ((_ is Concat!14520) r!17423) (not ((_ is Union!9199) r!17423))))))

(declare-fun matchRSpec!1336 (Regex!9199 List!35064) Bool)

(assert (=> b!2961759 (= lt!1034273 (matchRSpec!1336 r!17423 s!11993))))

(assert (=> b!2961759 (= lt!1034273 (matchR!4081 r!17423 s!11993))))

(declare-fun lt!1034272 () Unit!48777)

(declare-fun mainMatchTheorem!1336 (Regex!9199 List!35064) Unit!48777)

(assert (=> b!2961759 (= lt!1034272 (mainMatchTheorem!1336 r!17423 s!11993))))

(declare-fun b!2961760 () Bool)

(declare-fun tp_is_empty!15961 () Bool)

(assert (=> b!2961760 (= e!1864275 tp_is_empty!15961)))

(declare-fun b!2961761 () Bool)

(assert (=> b!2961761 (= e!1864273 e!1864272)))

(declare-fun res!1221921 () Bool)

(assert (=> b!2961761 (=> res!1221921 e!1864272)))

(declare-fun lt!1034270 () Regex!9199)

(declare-fun isEmptyLang!317 (Regex!9199) Bool)

(assert (=> b!2961761 (= res!1221921 (not (isEmptyLang!317 lt!1034270)))))

(declare-fun simplify!202 (Regex!9199) Regex!9199)

(assert (=> b!2961761 (= lt!1034275 (simplify!202 (regTwo!18911 r!17423)))))

(assert (=> b!2961761 (= lt!1034270 (simplify!202 (regOne!18911 r!17423)))))

(declare-fun b!2961762 () Bool)

(declare-fun tp!945157 () Bool)

(assert (=> b!2961762 (= e!1864275 tp!945157)))

(declare-fun b!2961763 () Bool)

(declare-fun tp!945158 () Bool)

(assert (=> b!2961763 (= e!1864276 (and tp_is_empty!15961 tp!945158))))

(assert (= (and start!286928 res!1221922) b!2961759))

(assert (= (and b!2961759 (not res!1221923)) b!2961761))

(assert (= (and b!2961761 (not res!1221921)) b!2961756))

(assert (= (and b!2961756 (not res!1221924)) b!2961758))

(assert (= (and start!286928 ((_ is ElementMatch!9199) r!17423)) b!2961760))

(assert (= (and start!286928 ((_ is Concat!14520) r!17423)) b!2961757))

(assert (= (and start!286928 ((_ is Star!9199) r!17423)) b!2961762))

(assert (= (and start!286928 ((_ is Union!9199) r!17423)) b!2961755))

(assert (= (and start!286928 ((_ is Cons!34940) s!11993)) b!2961763))

(declare-fun m!3334567 () Bool)

(assert (=> start!286928 m!3334567))

(declare-fun m!3334569 () Bool)

(assert (=> b!2961756 m!3334569))

(declare-fun m!3334571 () Bool)

(assert (=> b!2961756 m!3334571))

(declare-fun m!3334573 () Bool)

(assert (=> b!2961756 m!3334573))

(declare-fun m!3334575 () Bool)

(assert (=> b!2961758 m!3334575))

(declare-fun m!3334577 () Bool)

(assert (=> b!2961758 m!3334577))

(declare-fun m!3334579 () Bool)

(assert (=> b!2961759 m!3334579))

(declare-fun m!3334581 () Bool)

(assert (=> b!2961759 m!3334581))

(declare-fun m!3334583 () Bool)

(assert (=> b!2961759 m!3334583))

(declare-fun m!3334585 () Bool)

(assert (=> b!2961761 m!3334585))

(declare-fun m!3334587 () Bool)

(assert (=> b!2961761 m!3334587))

(declare-fun m!3334589 () Bool)

(assert (=> b!2961761 m!3334589))

(check-sat (not b!2961755) (not b!2961756) (not b!2961762) (not start!286928) (not b!2961759) (not b!2961761) tp_is_empty!15961 (not b!2961758) (not b!2961763) (not b!2961757))
(check-sat)

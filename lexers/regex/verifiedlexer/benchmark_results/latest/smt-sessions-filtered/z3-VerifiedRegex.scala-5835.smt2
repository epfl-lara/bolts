; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287080 () Bool)

(assert start!287080)

(declare-fun b!2964696 () Bool)

(declare-fun res!1222892 () Bool)

(declare-fun e!1865882 () Bool)

(assert (=> b!2964696 (=> res!1222892 e!1865882)))

(declare-datatypes ((C!18628 0))(
  ( (C!18629 (val!11350 Int)) )
))
(declare-datatypes ((Regex!9221 0))(
  ( (ElementMatch!9221 (c!486115 C!18628)) (Concat!14542 (regOne!18954 Regex!9221) (regTwo!18954 Regex!9221)) (EmptyExpr!9221) (Star!9221 (reg!9550 Regex!9221)) (EmptyLang!9221) (Union!9221 (regOne!18955 Regex!9221) (regTwo!18955 Regex!9221)) )
))
(declare-fun lt!1034923 () Regex!9221)

(declare-fun isEmptyLang!337 (Regex!9221) Bool)

(assert (=> b!2964696 (= res!1222892 (isEmptyLang!337 lt!1034923))))

(declare-fun b!2964697 () Bool)

(declare-fun e!1865883 () Bool)

(declare-fun tp_is_empty!16005 () Bool)

(declare-fun tp!945861 () Bool)

(assert (=> b!2964697 (= e!1865883 (and tp_is_empty!16005 tp!945861))))

(declare-fun b!2964698 () Bool)

(declare-fun e!1865881 () Bool)

(declare-fun tp!945859 () Bool)

(declare-fun tp!945858 () Bool)

(assert (=> b!2964698 (= e!1865881 (and tp!945859 tp!945858))))

(declare-fun b!2964699 () Bool)

(declare-fun e!1865885 () Bool)

(declare-fun e!1865884 () Bool)

(assert (=> b!2964699 (= e!1865885 (not e!1865884))))

(declare-fun res!1222895 () Bool)

(assert (=> b!2964699 (=> res!1222895 e!1865884)))

(declare-fun lt!1034921 () Bool)

(declare-fun r!17423 () Regex!9221)

(get-info :version)

(assert (=> b!2964699 (= res!1222895 (or lt!1034921 ((_ is Concat!14542) r!17423) (not ((_ is Union!9221) r!17423))))))

(declare-datatypes ((List!35086 0))(
  ( (Nil!34962) (Cons!34962 (h!40382 C!18628) (t!234151 List!35086)) )
))
(declare-fun s!11993 () List!35086)

(declare-fun matchRSpec!1358 (Regex!9221 List!35086) Bool)

(assert (=> b!2964699 (= lt!1034921 (matchRSpec!1358 r!17423 s!11993))))

(declare-fun matchR!4103 (Regex!9221 List!35086) Bool)

(assert (=> b!2964699 (= lt!1034921 (matchR!4103 r!17423 s!11993))))

(declare-datatypes ((Unit!48821 0))(
  ( (Unit!48822) )
))
(declare-fun lt!1034922 () Unit!48821)

(declare-fun mainMatchTheorem!1358 (Regex!9221 List!35086) Unit!48821)

(assert (=> b!2964699 (= lt!1034922 (mainMatchTheorem!1358 r!17423 s!11993))))

(declare-fun res!1222894 () Bool)

(assert (=> start!287080 (=> (not res!1222894) (not e!1865885))))

(declare-fun validRegex!3954 (Regex!9221) Bool)

(assert (=> start!287080 (= res!1222894 (validRegex!3954 r!17423))))

(assert (=> start!287080 e!1865885))

(assert (=> start!287080 e!1865881))

(assert (=> start!287080 e!1865883))

(declare-fun b!2964700 () Bool)

(assert (=> b!2964700 (= e!1865881 tp_is_empty!16005)))

(declare-fun b!2964701 () Bool)

(assert (=> b!2964701 (= e!1865882 true)))

(declare-fun b!2964702 () Bool)

(declare-fun res!1222893 () Bool)

(assert (=> b!2964702 (=> res!1222893 e!1865882)))

(declare-fun lt!1034924 () Regex!9221)

(assert (=> b!2964702 (= res!1222893 (not (matchR!4103 (Union!9221 lt!1034924 lt!1034923) s!11993)))))

(declare-fun b!2964703 () Bool)

(declare-fun tp!945856 () Bool)

(declare-fun tp!945860 () Bool)

(assert (=> b!2964703 (= e!1865881 (and tp!945856 tp!945860))))

(declare-fun b!2964704 () Bool)

(declare-fun tp!945857 () Bool)

(assert (=> b!2964704 (= e!1865881 tp!945857)))

(declare-fun b!2964705 () Bool)

(assert (=> b!2964705 (= e!1865884 e!1865882)))

(declare-fun res!1222896 () Bool)

(assert (=> b!2964705 (=> res!1222896 e!1865882)))

(assert (=> b!2964705 (= res!1222896 (isEmptyLang!337 lt!1034924))))

(declare-fun simplify!224 (Regex!9221) Regex!9221)

(assert (=> b!2964705 (= lt!1034923 (simplify!224 (regTwo!18955 r!17423)))))

(assert (=> b!2964705 (= lt!1034924 (simplify!224 (regOne!18955 r!17423)))))

(assert (= (and start!287080 res!1222894) b!2964699))

(assert (= (and b!2964699 (not res!1222895)) b!2964705))

(assert (= (and b!2964705 (not res!1222896)) b!2964696))

(assert (= (and b!2964696 (not res!1222892)) b!2964702))

(assert (= (and b!2964702 (not res!1222893)) b!2964701))

(assert (= (and start!287080 ((_ is ElementMatch!9221) r!17423)) b!2964700))

(assert (= (and start!287080 ((_ is Concat!14542) r!17423)) b!2964698))

(assert (= (and start!287080 ((_ is Star!9221) r!17423)) b!2964704))

(assert (= (and start!287080 ((_ is Union!9221) r!17423)) b!2964703))

(assert (= (and start!287080 ((_ is Cons!34962) s!11993)) b!2964697))

(declare-fun m!3335801 () Bool)

(assert (=> b!2964705 m!3335801))

(declare-fun m!3335803 () Bool)

(assert (=> b!2964705 m!3335803))

(declare-fun m!3335805 () Bool)

(assert (=> b!2964705 m!3335805))

(declare-fun m!3335807 () Bool)

(assert (=> start!287080 m!3335807))

(declare-fun m!3335809 () Bool)

(assert (=> b!2964699 m!3335809))

(declare-fun m!3335811 () Bool)

(assert (=> b!2964699 m!3335811))

(declare-fun m!3335813 () Bool)

(assert (=> b!2964699 m!3335813))

(declare-fun m!3335815 () Bool)

(assert (=> b!2964702 m!3335815))

(declare-fun m!3335817 () Bool)

(assert (=> b!2964696 m!3335817))

(check-sat (not b!2964703) (not b!2964705) (not b!2964704) (not b!2964698) (not b!2964699) tp_is_empty!16005 (not b!2964697) (not b!2964702) (not b!2964696) (not start!287080))
(check-sat)

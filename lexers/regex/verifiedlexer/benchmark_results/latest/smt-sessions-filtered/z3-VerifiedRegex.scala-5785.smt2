; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285796 () Bool)

(assert start!285796)

(declare-fun b!2944097 () Bool)

(declare-fun e!1855013 () Bool)

(declare-fun e!1855009 () Bool)

(assert (=> b!2944097 (= e!1855013 e!1855009)))

(declare-fun res!1215074 () Bool)

(assert (=> b!2944097 (=> res!1215074 e!1855009)))

(declare-fun lt!1030800 () Bool)

(assert (=> b!2944097 (= res!1215074 (not lt!1030800))))

(declare-datatypes ((C!18428 0))(
  ( (C!18429 (val!11250 Int)) )
))
(declare-datatypes ((Regex!9121 0))(
  ( (ElementMatch!9121 (c!481499 C!18428)) (Concat!14442 (regOne!18754 Regex!9121) (regTwo!18754 Regex!9121)) (EmptyExpr!9121) (Star!9121 (reg!9450 Regex!9121)) (EmptyLang!9121) (Union!9121 (regOne!18755 Regex!9121) (regTwo!18755 Regex!9121)) )
))
(declare-fun r!17423 () Regex!9121)

(declare-fun lt!1030802 () Regex!9121)

(declare-datatypes ((List!34986 0))(
  ( (Nil!34862) (Cons!34862 (h!40282 C!18428) (t!234051 List!34986)) )
))
(declare-fun matchR!4003 (Regex!9121 List!34986) Bool)

(assert (=> b!2944097 (= (matchR!4003 (regTwo!18754 r!17423) Nil!34862) (matchR!4003 lt!1030802 Nil!34862))))

(declare-datatypes ((Unit!48621 0))(
  ( (Unit!48622) )
))
(declare-fun lt!1030801 () Unit!48621)

(declare-fun lemmaSimplifySound!108 (Regex!9121 List!34986) Unit!48621)

(assert (=> b!2944097 (= lt!1030801 (lemmaSimplifySound!108 (regTwo!18754 r!17423) Nil!34862))))

(declare-fun lt!1030804 () Regex!9121)

(declare-fun s!11993 () List!34986)

(assert (=> b!2944097 (= lt!1030800 (matchR!4003 lt!1030804 s!11993))))

(assert (=> b!2944097 (= lt!1030800 (matchR!4003 (regOne!18754 r!17423) s!11993))))

(declare-fun lt!1030807 () Unit!48621)

(assert (=> b!2944097 (= lt!1030807 (lemmaSimplifySound!108 (regOne!18754 r!17423) s!11993))))

(declare-fun b!2944098 () Bool)

(declare-fun e!1855012 () Bool)

(assert (=> b!2944098 (= e!1855012 e!1855013)))

(declare-fun res!1215075 () Bool)

(assert (=> b!2944098 (=> res!1215075 e!1855013)))

(declare-fun isEmptyLang!243 (Regex!9121) Bool)

(assert (=> b!2944098 (= res!1215075 (isEmptyLang!243 lt!1030804))))

(declare-fun simplify!126 (Regex!9121) Regex!9121)

(assert (=> b!2944098 (= lt!1030802 (simplify!126 (regTwo!18754 r!17423)))))

(assert (=> b!2944098 (= lt!1030804 (simplify!126 (regOne!18754 r!17423)))))

(declare-fun b!2944099 () Bool)

(declare-fun res!1215079 () Bool)

(assert (=> b!2944099 (=> res!1215079 e!1855013)))

(declare-fun isEmptyExpr!324 (Regex!9121) Bool)

(assert (=> b!2944099 (= res!1215079 (not (isEmptyExpr!324 lt!1030802)))))

(declare-fun b!2944100 () Bool)

(declare-fun e!1855008 () Bool)

(declare-fun tp!941932 () Bool)

(declare-fun tp!941928 () Bool)

(assert (=> b!2944100 (= e!1855008 (and tp!941932 tp!941928))))

(declare-fun b!2944101 () Bool)

(declare-fun res!1215073 () Bool)

(assert (=> b!2944101 (=> res!1215073 e!1855013)))

(assert (=> b!2944101 (= res!1215073 (isEmptyLang!243 lt!1030802))))

(declare-fun b!2944102 () Bool)

(declare-fun e!1855011 () Bool)

(assert (=> b!2944102 (= e!1855011 (not e!1855012))))

(declare-fun res!1215076 () Bool)

(assert (=> b!2944102 (=> res!1215076 e!1855012)))

(declare-fun lt!1030803 () Bool)

(get-info :version)

(assert (=> b!2944102 (= res!1215076 (or lt!1030803 (not ((_ is Concat!14442) r!17423))))))

(declare-fun matchRSpec!1258 (Regex!9121 List!34986) Bool)

(assert (=> b!2944102 (= lt!1030803 (matchRSpec!1258 r!17423 s!11993))))

(assert (=> b!2944102 (= lt!1030803 (matchR!4003 r!17423 s!11993))))

(declare-fun lt!1030805 () Unit!48621)

(declare-fun mainMatchTheorem!1258 (Regex!9121 List!34986) Unit!48621)

(assert (=> b!2944102 (= lt!1030805 (mainMatchTheorem!1258 r!17423 s!11993))))

(declare-fun b!2944103 () Bool)

(assert (=> b!2944103 (= e!1855009 true)))

(declare-datatypes ((tuple2!33804 0))(
  ( (tuple2!33805 (_1!20034 List!34986) (_2!20034 List!34986)) )
))
(declare-datatypes ((Option!6634 0))(
  ( (None!6633) (Some!6633 (v!34767 tuple2!33804)) )
))
(declare-fun isDefined!5185 (Option!6634) Bool)

(declare-fun findConcatSeparation!1028 (Regex!9121 Regex!9121 List!34986 List!34986 List!34986) Option!6634)

(assert (=> b!2944103 (isDefined!5185 (findConcatSeparation!1028 (regOne!18754 r!17423) (regTwo!18754 r!17423) Nil!34862 s!11993 s!11993))))

(declare-fun lt!1030806 () Unit!48621)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!16 (Regex!9121 Regex!9121 List!34986 List!34986 List!34986 List!34986 List!34986) Unit!48621)

(assert (=> b!2944103 (= lt!1030806 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!16 (regOne!18754 r!17423) (regTwo!18754 r!17423) s!11993 Nil!34862 s!11993 Nil!34862 s!11993))))

(declare-fun b!2944105 () Bool)

(declare-fun e!1855010 () Bool)

(declare-fun tp_is_empty!15805 () Bool)

(declare-fun tp!941933 () Bool)

(assert (=> b!2944105 (= e!1855010 (and tp_is_empty!15805 tp!941933))))

(declare-fun b!2944106 () Bool)

(declare-fun tp!941931 () Bool)

(declare-fun tp!941929 () Bool)

(assert (=> b!2944106 (= e!1855008 (and tp!941931 tp!941929))))

(declare-fun b!2944107 () Bool)

(assert (=> b!2944107 (= e!1855008 tp_is_empty!15805)))

(declare-fun b!2944104 () Bool)

(declare-fun tp!941930 () Bool)

(assert (=> b!2944104 (= e!1855008 tp!941930)))

(declare-fun res!1215080 () Bool)

(assert (=> start!285796 (=> (not res!1215080) (not e!1855011))))

(declare-fun validRegex!3854 (Regex!9121) Bool)

(assert (=> start!285796 (= res!1215080 (validRegex!3854 r!17423))))

(assert (=> start!285796 e!1855011))

(assert (=> start!285796 e!1855008))

(assert (=> start!285796 e!1855010))

(declare-fun b!2944108 () Bool)

(declare-fun res!1215078 () Bool)

(assert (=> b!2944108 (=> res!1215078 e!1855012)))

(declare-fun isEmpty!19123 (List!34986) Bool)

(assert (=> b!2944108 (= res!1215078 (isEmpty!19123 s!11993))))

(declare-fun b!2944109 () Bool)

(declare-fun res!1215077 () Bool)

(assert (=> b!2944109 (=> res!1215077 e!1855013)))

(assert (=> b!2944109 (= res!1215077 (isEmptyExpr!324 lt!1030804))))

(assert (= (and start!285796 res!1215080) b!2944102))

(assert (= (and b!2944102 (not res!1215076)) b!2944108))

(assert (= (and b!2944108 (not res!1215078)) b!2944098))

(assert (= (and b!2944098 (not res!1215075)) b!2944101))

(assert (= (and b!2944101 (not res!1215073)) b!2944109))

(assert (= (and b!2944109 (not res!1215077)) b!2944099))

(assert (= (and b!2944099 (not res!1215079)) b!2944097))

(assert (= (and b!2944097 (not res!1215074)) b!2944103))

(assert (= (and start!285796 ((_ is ElementMatch!9121) r!17423)) b!2944107))

(assert (= (and start!285796 ((_ is Concat!14442) r!17423)) b!2944100))

(assert (= (and start!285796 ((_ is Star!9121) r!17423)) b!2944104))

(assert (= (and start!285796 ((_ is Union!9121) r!17423)) b!2944106))

(assert (= (and start!285796 ((_ is Cons!34862) s!11993)) b!2944105))

(declare-fun m!3326913 () Bool)

(assert (=> b!2944102 m!3326913))

(declare-fun m!3326915 () Bool)

(assert (=> b!2944102 m!3326915))

(declare-fun m!3326917 () Bool)

(assert (=> b!2944102 m!3326917))

(declare-fun m!3326919 () Bool)

(assert (=> b!2944108 m!3326919))

(declare-fun m!3326921 () Bool)

(assert (=> b!2944097 m!3326921))

(declare-fun m!3326923 () Bool)

(assert (=> b!2944097 m!3326923))

(declare-fun m!3326925 () Bool)

(assert (=> b!2944097 m!3326925))

(declare-fun m!3326927 () Bool)

(assert (=> b!2944097 m!3326927))

(declare-fun m!3326929 () Bool)

(assert (=> b!2944097 m!3326929))

(declare-fun m!3326931 () Bool)

(assert (=> b!2944097 m!3326931))

(declare-fun m!3326933 () Bool)

(assert (=> b!2944099 m!3326933))

(declare-fun m!3326935 () Bool)

(assert (=> start!285796 m!3326935))

(declare-fun m!3326937 () Bool)

(assert (=> b!2944101 m!3326937))

(declare-fun m!3326939 () Bool)

(assert (=> b!2944109 m!3326939))

(declare-fun m!3326941 () Bool)

(assert (=> b!2944098 m!3326941))

(declare-fun m!3326943 () Bool)

(assert (=> b!2944098 m!3326943))

(declare-fun m!3326945 () Bool)

(assert (=> b!2944098 m!3326945))

(declare-fun m!3326947 () Bool)

(assert (=> b!2944103 m!3326947))

(assert (=> b!2944103 m!3326947))

(declare-fun m!3326949 () Bool)

(assert (=> b!2944103 m!3326949))

(declare-fun m!3326951 () Bool)

(assert (=> b!2944103 m!3326951))

(check-sat (not b!2944102) tp_is_empty!15805 (not b!2944104) (not b!2944101) (not b!2944097) (not b!2944105) (not b!2944108) (not b!2944103) (not b!2944100) (not b!2944106) (not start!285796) (not b!2944098) (not b!2944099) (not b!2944109))
(check-sat)

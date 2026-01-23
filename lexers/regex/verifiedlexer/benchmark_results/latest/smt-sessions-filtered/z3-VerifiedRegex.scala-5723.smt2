; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284408 () Bool)

(assert start!284408)

(declare-fun b!2921139 () Bool)

(declare-fun e!1842858 () Bool)

(assert (=> b!2921139 (= e!1842858 true)))

(declare-datatypes ((C!18180 0))(
  ( (C!18181 (val!11126 Int)) )
))
(declare-datatypes ((Regex!8997 0))(
  ( (ElementMatch!8997 (c!476679 C!18180)) (Concat!14318 (regOne!18506 Regex!8997) (regTwo!18506 Regex!8997)) (EmptyExpr!8997) (Star!8997 (reg!9326 Regex!8997)) (EmptyLang!8997) (Union!8997 (regOne!18507 Regex!8997) (regTwo!18507 Regex!8997)) )
))
(declare-fun lt!1025746 () Regex!8997)

(declare-fun lt!1025750 () Regex!8997)

(declare-datatypes ((List!34862 0))(
  ( (Nil!34738) (Cons!34738 (h!40158 C!18180) (t!233927 List!34862)) )
))
(declare-fun s!11993 () List!34862)

(declare-fun matchR!3879 (Regex!8997 List!34862) Bool)

(assert (=> b!2921139 (matchR!3879 (Union!8997 lt!1025746 lt!1025750) s!11993)))

(declare-datatypes ((Unit!48333 0))(
  ( (Unit!48334) )
))
(declare-fun lt!1025751 () Unit!48333)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!50 (Regex!8997 Regex!8997 List!34862) Unit!48333)

(assert (=> b!2921139 (= lt!1025751 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!50 lt!1025746 lt!1025750 s!11993))))

(declare-fun b!2921140 () Bool)

(declare-fun e!1842859 () Bool)

(assert (=> b!2921140 (= e!1842859 e!1842858)))

(declare-fun res!1205902 () Bool)

(assert (=> b!2921140 (=> res!1205902 e!1842858)))

(declare-fun validRegex!3730 (Regex!8997) Bool)

(assert (=> b!2921140 (= res!1205902 (not (validRegex!3730 lt!1025746)))))

(declare-fun r!17423 () Regex!8997)

(declare-fun simplify!28 (Regex!8997) Regex!8997)

(assert (=> b!2921140 (= lt!1025750 (simplify!28 (regTwo!18507 r!17423)))))

(assert (=> b!2921140 (matchR!3879 lt!1025746 s!11993)))

(assert (=> b!2921140 (= lt!1025746 (simplify!28 (regOne!18507 r!17423)))))

(declare-fun lt!1025749 () Unit!48333)

(declare-fun lemmaSimplifySound!26 (Regex!8997 List!34862) Unit!48333)

(assert (=> b!2921140 (= lt!1025749 (lemmaSimplifySound!26 (regOne!18507 r!17423) s!11993))))

(declare-fun b!2921141 () Bool)

(declare-fun e!1842863 () Bool)

(declare-fun tp_is_empty!15557 () Bool)

(declare-fun tp!937340 () Bool)

(assert (=> b!2921141 (= e!1842863 (and tp_is_empty!15557 tp!937340))))

(declare-fun b!2921142 () Bool)

(declare-fun res!1205897 () Bool)

(assert (=> b!2921142 (=> res!1205897 e!1842858)))

(assert (=> b!2921142 (= res!1205897 (not (validRegex!3730 lt!1025750)))))

(declare-fun res!1205900 () Bool)

(declare-fun e!1842857 () Bool)

(assert (=> start!284408 (=> (not res!1205900) (not e!1842857))))

(assert (=> start!284408 (= res!1205900 (validRegex!3730 r!17423))))

(assert (=> start!284408 e!1842857))

(declare-fun e!1842862 () Bool)

(assert (=> start!284408 e!1842862))

(assert (=> start!284408 e!1842863))

(declare-fun b!2921143 () Bool)

(assert (=> b!2921143 (= e!1842862 tp_is_empty!15557)))

(declare-fun b!2921144 () Bool)

(declare-fun e!1842861 () Bool)

(assert (=> b!2921144 (= e!1842857 (not e!1842861))))

(declare-fun res!1205899 () Bool)

(assert (=> b!2921144 (=> res!1205899 e!1842861)))

(declare-fun lt!1025745 () Bool)

(get-info :version)

(assert (=> b!2921144 (= res!1205899 (or (not lt!1025745) ((_ is Concat!14318) r!17423) (not ((_ is Union!8997) r!17423))))))

(declare-fun matchRSpec!1134 (Regex!8997 List!34862) Bool)

(assert (=> b!2921144 (= lt!1025745 (matchRSpec!1134 r!17423 s!11993))))

(assert (=> b!2921144 (= lt!1025745 (matchR!3879 r!17423 s!11993))))

(declare-fun lt!1025744 () Unit!48333)

(declare-fun mainMatchTheorem!1134 (Regex!8997 List!34862) Unit!48333)

(assert (=> b!2921144 (= lt!1025744 (mainMatchTheorem!1134 r!17423 s!11993))))

(declare-fun b!2921145 () Bool)

(assert (=> b!2921145 (= e!1842861 e!1842859)))

(declare-fun res!1205901 () Bool)

(assert (=> b!2921145 (=> res!1205901 e!1842859)))

(declare-fun lt!1025748 () Bool)

(assert (=> b!2921145 (= res!1205901 (not lt!1025748))))

(declare-fun e!1842860 () Bool)

(assert (=> b!2921145 e!1842860))

(declare-fun res!1205898 () Bool)

(assert (=> b!2921145 (=> res!1205898 e!1842860)))

(assert (=> b!2921145 (= res!1205898 lt!1025748)))

(assert (=> b!2921145 (= lt!1025748 (matchR!3879 (regOne!18507 r!17423) s!11993))))

(declare-fun lt!1025747 () Unit!48333)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!246 (Regex!8997 Regex!8997 List!34862) Unit!48333)

(assert (=> b!2921145 (= lt!1025747 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!246 (regOne!18507 r!17423) (regTwo!18507 r!17423) s!11993))))

(declare-fun b!2921146 () Bool)

(declare-fun tp!937345 () Bool)

(assert (=> b!2921146 (= e!1842862 tp!937345)))

(declare-fun b!2921147 () Bool)

(assert (=> b!2921147 (= e!1842860 (matchR!3879 (regTwo!18507 r!17423) s!11993))))

(declare-fun b!2921148 () Bool)

(declare-fun tp!937343 () Bool)

(declare-fun tp!937341 () Bool)

(assert (=> b!2921148 (= e!1842862 (and tp!937343 tp!937341))))

(declare-fun b!2921149 () Bool)

(declare-fun tp!937344 () Bool)

(declare-fun tp!937342 () Bool)

(assert (=> b!2921149 (= e!1842862 (and tp!937344 tp!937342))))

(assert (= (and start!284408 res!1205900) b!2921144))

(assert (= (and b!2921144 (not res!1205899)) b!2921145))

(assert (= (and b!2921145 (not res!1205898)) b!2921147))

(assert (= (and b!2921145 (not res!1205901)) b!2921140))

(assert (= (and b!2921140 (not res!1205902)) b!2921142))

(assert (= (and b!2921142 (not res!1205897)) b!2921139))

(assert (= (and start!284408 ((_ is ElementMatch!8997) r!17423)) b!2921143))

(assert (= (and start!284408 ((_ is Concat!14318) r!17423)) b!2921148))

(assert (= (and start!284408 ((_ is Star!8997) r!17423)) b!2921146))

(assert (= (and start!284408 ((_ is Union!8997) r!17423)) b!2921149))

(assert (= (and start!284408 ((_ is Cons!34738) s!11993)) b!2921141))

(declare-fun m!3317079 () Bool)

(assert (=> b!2921142 m!3317079))

(declare-fun m!3317081 () Bool)

(assert (=> b!2921140 m!3317081))

(declare-fun m!3317083 () Bool)

(assert (=> b!2921140 m!3317083))

(declare-fun m!3317085 () Bool)

(assert (=> b!2921140 m!3317085))

(declare-fun m!3317087 () Bool)

(assert (=> b!2921140 m!3317087))

(declare-fun m!3317089 () Bool)

(assert (=> b!2921140 m!3317089))

(declare-fun m!3317091 () Bool)

(assert (=> b!2921147 m!3317091))

(declare-fun m!3317093 () Bool)

(assert (=> b!2921145 m!3317093))

(declare-fun m!3317095 () Bool)

(assert (=> b!2921145 m!3317095))

(declare-fun m!3317097 () Bool)

(assert (=> b!2921139 m!3317097))

(declare-fun m!3317099 () Bool)

(assert (=> b!2921139 m!3317099))

(declare-fun m!3317101 () Bool)

(assert (=> start!284408 m!3317101))

(declare-fun m!3317103 () Bool)

(assert (=> b!2921144 m!3317103))

(declare-fun m!3317105 () Bool)

(assert (=> b!2921144 m!3317105))

(declare-fun m!3317107 () Bool)

(assert (=> b!2921144 m!3317107))

(check-sat (not b!2921145) (not b!2921142) (not b!2921146) (not b!2921139) (not b!2921149) (not start!284408) (not b!2921140) (not b!2921147) (not b!2921144) (not b!2921141) (not b!2921148) tp_is_empty!15557)
(check-sat)

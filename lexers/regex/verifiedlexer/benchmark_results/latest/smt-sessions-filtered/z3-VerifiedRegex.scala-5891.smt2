; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288484 () Bool)

(assert start!288484)

(declare-fun b!2986635 () Bool)

(declare-fun e!1877868 () Bool)

(declare-fun tp_is_empty!16229 () Bool)

(assert (=> b!2986635 (= e!1877868 tp_is_empty!16229)))

(declare-fun res!1231727 () Bool)

(declare-fun e!1877866 () Bool)

(assert (=> start!288484 (=> (not res!1231727) (not e!1877866))))

(declare-datatypes ((C!18852 0))(
  ( (C!18853 (val!11462 Int)) )
))
(declare-datatypes ((Regex!9333 0))(
  ( (ElementMatch!9333 (c!490733 C!18852)) (Concat!14654 (regOne!19178 Regex!9333) (regTwo!19178 Regex!9333)) (EmptyExpr!9333) (Star!9333 (reg!9662 Regex!9333)) (EmptyLang!9333) (Union!9333 (regOne!19179 Regex!9333) (regTwo!19179 Regex!9333)) )
))
(declare-fun r!17423 () Regex!9333)

(declare-fun validRegex!4066 (Regex!9333) Bool)

(assert (=> start!288484 (= res!1231727 (validRegex!4066 r!17423))))

(assert (=> start!288484 e!1877866))

(assert (=> start!288484 e!1877868))

(declare-fun e!1877870 () Bool)

(assert (=> start!288484 e!1877870))

(declare-fun b!2986636 () Bool)

(declare-fun e!1877871 () Bool)

(declare-fun lt!1039532 () Bool)

(assert (=> b!2986636 (= e!1877871 lt!1039532)))

(declare-fun lt!1039529 () Bool)

(assert (=> b!2986636 (= lt!1039529 lt!1039532)))

(declare-fun lt!1039535 () Regex!9333)

(declare-datatypes ((List!35198 0))(
  ( (Nil!35074) (Cons!35074 (h!40494 C!18852) (t!234263 List!35198)) )
))
(declare-fun s!11993 () List!35198)

(declare-fun matchR!4215 (Regex!9333 List!35198) Bool)

(assert (=> b!2986636 (= lt!1039532 (matchR!4215 lt!1039535 s!11993))))

(assert (=> b!2986636 (= lt!1039529 (matchR!4215 (regTwo!19179 r!17423) s!11993))))

(declare-fun simplify!330 (Regex!9333) Regex!9333)

(assert (=> b!2986636 (= lt!1039535 (simplify!330 (regTwo!19179 r!17423)))))

(declare-datatypes ((Unit!49069 0))(
  ( (Unit!49070) )
))
(declare-fun lt!1039531 () Unit!49069)

(declare-fun lemmaSimplifySound!188 (Regex!9333 List!35198) Unit!49069)

(assert (=> b!2986636 (= lt!1039531 (lemmaSimplifySound!188 (regTwo!19179 r!17423) s!11993))))

(declare-fun b!2986637 () Bool)

(declare-fun tp!950154 () Bool)

(assert (=> b!2986637 (= e!1877868 tp!950154)))

(declare-fun b!2986638 () Bool)

(declare-fun tp!950155 () Bool)

(assert (=> b!2986638 (= e!1877870 (and tp_is_empty!16229 tp!950155))))

(declare-fun b!2986639 () Bool)

(declare-fun tp!950153 () Bool)

(declare-fun tp!950156 () Bool)

(assert (=> b!2986639 (= e!1877868 (and tp!950153 tp!950156))))

(declare-fun b!2986640 () Bool)

(declare-fun e!1877867 () Bool)

(assert (=> b!2986640 (= e!1877867 e!1877871)))

(declare-fun res!1231730 () Bool)

(assert (=> b!2986640 (=> res!1231730 e!1877871)))

(declare-fun lt!1039536 () Bool)

(assert (=> b!2986640 (= res!1231730 lt!1039536)))

(declare-fun e!1877869 () Bool)

(assert (=> b!2986640 e!1877869))

(declare-fun res!1231729 () Bool)

(assert (=> b!2986640 (=> res!1231729 e!1877869)))

(assert (=> b!2986640 (= res!1231729 lt!1039536)))

(assert (=> b!2986640 (= lt!1039536 (matchR!4215 (regOne!19179 r!17423) s!11993))))

(declare-fun lt!1039530 () Unit!49069)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!292 (Regex!9333 Regex!9333 List!35198) Unit!49069)

(assert (=> b!2986640 (= lt!1039530 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!292 (regOne!19179 r!17423) (regTwo!19179 r!17423) s!11993))))

(declare-fun b!2986641 () Bool)

(assert (=> b!2986641 (= e!1877866 (not e!1877867))))

(declare-fun res!1231728 () Bool)

(assert (=> b!2986641 (=> res!1231728 e!1877867)))

(declare-fun lt!1039534 () Bool)

(get-info :version)

(assert (=> b!2986641 (= res!1231728 (or (not lt!1039534) ((_ is Concat!14654) r!17423) (not ((_ is Union!9333) r!17423))))))

(declare-fun matchRSpec!1470 (Regex!9333 List!35198) Bool)

(assert (=> b!2986641 (= lt!1039534 (matchRSpec!1470 r!17423 s!11993))))

(assert (=> b!2986641 (= lt!1039534 (matchR!4215 r!17423 s!11993))))

(declare-fun lt!1039533 () Unit!49069)

(declare-fun mainMatchTheorem!1470 (Regex!9333 List!35198) Unit!49069)

(assert (=> b!2986641 (= lt!1039533 (mainMatchTheorem!1470 r!17423 s!11993))))

(declare-fun b!2986642 () Bool)

(assert (=> b!2986642 (= e!1877869 (matchR!4215 (regTwo!19179 r!17423) s!11993))))

(declare-fun b!2986643 () Bool)

(declare-fun tp!950152 () Bool)

(declare-fun tp!950157 () Bool)

(assert (=> b!2986643 (= e!1877868 (and tp!950152 tp!950157))))

(assert (= (and start!288484 res!1231727) b!2986641))

(assert (= (and b!2986641 (not res!1231728)) b!2986640))

(assert (= (and b!2986640 (not res!1231729)) b!2986642))

(assert (= (and b!2986640 (not res!1231730)) b!2986636))

(assert (= (and start!288484 ((_ is ElementMatch!9333) r!17423)) b!2986635))

(assert (= (and start!288484 ((_ is Concat!14654) r!17423)) b!2986643))

(assert (= (and start!288484 ((_ is Star!9333) r!17423)) b!2986637))

(assert (= (and start!288484 ((_ is Union!9333) r!17423)) b!2986639))

(assert (= (and start!288484 ((_ is Cons!35074) s!11993)) b!2986638))

(declare-fun m!3345101 () Bool)

(assert (=> b!2986636 m!3345101))

(declare-fun m!3345103 () Bool)

(assert (=> b!2986636 m!3345103))

(declare-fun m!3345105 () Bool)

(assert (=> b!2986636 m!3345105))

(declare-fun m!3345107 () Bool)

(assert (=> b!2986636 m!3345107))

(declare-fun m!3345109 () Bool)

(assert (=> b!2986640 m!3345109))

(declare-fun m!3345111 () Bool)

(assert (=> b!2986640 m!3345111))

(declare-fun m!3345113 () Bool)

(assert (=> start!288484 m!3345113))

(assert (=> b!2986642 m!3345103))

(declare-fun m!3345115 () Bool)

(assert (=> b!2986641 m!3345115))

(declare-fun m!3345117 () Bool)

(assert (=> b!2986641 m!3345117))

(declare-fun m!3345119 () Bool)

(assert (=> b!2986641 m!3345119))

(check-sat (not start!288484) tp_is_empty!16229 (not b!2986643) (not b!2986637) (not b!2986638) (not b!2986639) (not b!2986641) (not b!2986642) (not b!2986640) (not b!2986636))
(check-sat)

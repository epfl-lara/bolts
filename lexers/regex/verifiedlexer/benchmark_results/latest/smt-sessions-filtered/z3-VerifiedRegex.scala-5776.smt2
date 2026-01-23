; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285688 () Bool)

(assert start!285688)

(declare-fun b!2942112 () Bool)

(declare-fun res!1214236 () Bool)

(declare-fun e!1854028 () Bool)

(assert (=> b!2942112 (=> res!1214236 e!1854028)))

(declare-datatypes ((C!18392 0))(
  ( (C!18393 (val!11232 Int)) )
))
(declare-datatypes ((Regex!9103 0))(
  ( (ElementMatch!9103 (c!481131 C!18392)) (Concat!14424 (regOne!18718 Regex!9103) (regTwo!18718 Regex!9103)) (EmptyExpr!9103) (Star!9103 (reg!9432 Regex!9103)) (EmptyLang!9103) (Union!9103 (regOne!18719 Regex!9103) (regTwo!18719 Regex!9103)) )
))
(declare-fun lt!1030293 () Regex!9103)

(declare-fun isEmptyExpr!308 (Regex!9103) Bool)

(assert (=> b!2942112 (= res!1214236 (not (isEmptyExpr!308 lt!1030293)))))

(declare-fun b!2942113 () Bool)

(declare-fun res!1214238 () Bool)

(assert (=> b!2942113 (=> res!1214238 e!1854028)))

(declare-fun lt!1030289 () Regex!9103)

(declare-fun isEmptyLang!227 (Regex!9103) Bool)

(assert (=> b!2942113 (= res!1214238 (isEmptyLang!227 lt!1030289))))

(declare-fun b!2942114 () Bool)

(declare-fun e!1854027 () Bool)

(declare-fun tp_is_empty!15769 () Bool)

(assert (=> b!2942114 (= e!1854027 tp_is_empty!15769)))

(declare-fun b!2942116 () Bool)

(declare-fun e!1854029 () Bool)

(assert (=> b!2942116 (= e!1854029 true)))

(declare-fun r!17423 () Regex!9103)

(declare-datatypes ((List!34968 0))(
  ( (Nil!34844) (Cons!34844 (h!40264 C!18392) (t!234033 List!34968)) )
))
(declare-fun s!11993 () List!34968)

(declare-datatypes ((tuple2!33792 0))(
  ( (tuple2!33793 (_1!20028 List!34968) (_2!20028 List!34968)) )
))
(declare-datatypes ((Option!6628 0))(
  ( (None!6627) (Some!6627 (v!34761 tuple2!33792)) )
))
(declare-fun isDefined!5179 (Option!6628) Bool)

(declare-fun findConcatSeparation!1022 (Regex!9103 Regex!9103 List!34968 List!34968 List!34968) Option!6628)

(assert (=> b!2942116 (isDefined!5179 (findConcatSeparation!1022 (regOne!18718 r!17423) (regTwo!18718 r!17423) Nil!34844 s!11993 s!11993))))

(declare-datatypes ((Unit!48585 0))(
  ( (Unit!48586) )
))
(declare-fun lt!1030291 () Unit!48585)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!10 (Regex!9103 Regex!9103 List!34968 List!34968 List!34968 List!34968 List!34968) Unit!48585)

(assert (=> b!2942116 (= lt!1030291 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!10 (regOne!18718 r!17423) (regTwo!18718 r!17423) Nil!34844 s!11993 s!11993 Nil!34844 s!11993))))

(declare-fun b!2942117 () Bool)

(declare-fun res!1214232 () Bool)

(assert (=> b!2942117 (=> res!1214232 e!1854029)))

(declare-fun matchR!3985 (Regex!9103 List!34968) Bool)

(assert (=> b!2942117 (= res!1214232 (not (matchR!3985 (regOne!18718 r!17423) Nil!34844)))))

(declare-fun b!2942118 () Bool)

(declare-fun tp!941457 () Bool)

(assert (=> b!2942118 (= e!1854027 tp!941457)))

(declare-fun b!2942119 () Bool)

(declare-fun e!1854030 () Bool)

(declare-fun tp!941452 () Bool)

(assert (=> b!2942119 (= e!1854030 (and tp_is_empty!15769 tp!941452))))

(declare-fun b!2942120 () Bool)

(declare-fun tp!941454 () Bool)

(declare-fun tp!941453 () Bool)

(assert (=> b!2942120 (= e!1854027 (and tp!941454 tp!941453))))

(declare-fun res!1214233 () Bool)

(declare-fun e!1854031 () Bool)

(assert (=> start!285688 (=> (not res!1214233) (not e!1854031))))

(declare-fun validRegex!3836 (Regex!9103) Bool)

(assert (=> start!285688 (= res!1214233 (validRegex!3836 r!17423))))

(assert (=> start!285688 e!1854031))

(assert (=> start!285688 e!1854027))

(assert (=> start!285688 e!1854030))

(declare-fun b!2942115 () Bool)

(declare-fun e!1854026 () Bool)

(assert (=> b!2942115 (= e!1854031 (not e!1854026))))

(declare-fun res!1214235 () Bool)

(assert (=> b!2942115 (=> res!1214235 e!1854026)))

(declare-fun lt!1030292 () Bool)

(get-info :version)

(assert (=> b!2942115 (= res!1214235 (or lt!1030292 (not ((_ is Concat!14424) r!17423))))))

(declare-fun matchRSpec!1240 (Regex!9103 List!34968) Bool)

(assert (=> b!2942115 (= lt!1030292 (matchRSpec!1240 r!17423 s!11993))))

(assert (=> b!2942115 (= lt!1030292 (matchR!3985 r!17423 s!11993))))

(declare-fun lt!1030294 () Unit!48585)

(declare-fun mainMatchTheorem!1240 (Regex!9103 List!34968) Unit!48585)

(assert (=> b!2942115 (= lt!1030294 (mainMatchTheorem!1240 r!17423 s!11993))))

(declare-fun b!2942121 () Bool)

(declare-fun res!1214234 () Bool)

(assert (=> b!2942121 (=> res!1214234 e!1854026)))

(declare-fun isEmpty!19105 (List!34968) Bool)

(assert (=> b!2942121 (= res!1214234 (isEmpty!19105 s!11993))))

(declare-fun b!2942122 () Bool)

(declare-fun res!1214231 () Bool)

(assert (=> b!2942122 (=> res!1214231 e!1854029)))

(declare-fun nullable!2881 (Regex!9103) Bool)

(assert (=> b!2942122 (= res!1214231 (not (nullable!2881 (regOne!18718 r!17423))))))

(declare-fun b!2942123 () Bool)

(assert (=> b!2942123 (= e!1854028 e!1854029)))

(declare-fun res!1214237 () Bool)

(assert (=> b!2942123 (=> res!1214237 e!1854029)))

(declare-fun lt!1030295 () Bool)

(assert (=> b!2942123 (= res!1214237 (not lt!1030295))))

(assert (=> b!2942123 (= lt!1030295 (matchR!3985 lt!1030289 s!11993))))

(assert (=> b!2942123 (= lt!1030295 (matchR!3985 (regTwo!18718 r!17423) s!11993))))

(declare-fun lt!1030290 () Unit!48585)

(declare-fun lemmaSimplifySound!92 (Regex!9103 List!34968) Unit!48585)

(assert (=> b!2942123 (= lt!1030290 (lemmaSimplifySound!92 (regTwo!18718 r!17423) s!11993))))

(declare-fun b!2942124 () Bool)

(declare-fun tp!941456 () Bool)

(declare-fun tp!941455 () Bool)

(assert (=> b!2942124 (= e!1854027 (and tp!941456 tp!941455))))

(declare-fun b!2942125 () Bool)

(assert (=> b!2942125 (= e!1854026 e!1854028)))

(declare-fun res!1214230 () Bool)

(assert (=> b!2942125 (=> res!1214230 e!1854028)))

(assert (=> b!2942125 (= res!1214230 (isEmptyLang!227 lt!1030293))))

(declare-fun simplify!108 (Regex!9103) Regex!9103)

(assert (=> b!2942125 (= lt!1030289 (simplify!108 (regTwo!18718 r!17423)))))

(assert (=> b!2942125 (= lt!1030293 (simplify!108 (regOne!18718 r!17423)))))

(assert (= (and start!285688 res!1214233) b!2942115))

(assert (= (and b!2942115 (not res!1214235)) b!2942121))

(assert (= (and b!2942121 (not res!1214234)) b!2942125))

(assert (= (and b!2942125 (not res!1214230)) b!2942113))

(assert (= (and b!2942113 (not res!1214238)) b!2942112))

(assert (= (and b!2942112 (not res!1214236)) b!2942123))

(assert (= (and b!2942123 (not res!1214237)) b!2942122))

(assert (= (and b!2942122 (not res!1214231)) b!2942117))

(assert (= (and b!2942117 (not res!1214232)) b!2942116))

(assert (= (and start!285688 ((_ is ElementMatch!9103) r!17423)) b!2942114))

(assert (= (and start!285688 ((_ is Concat!14424) r!17423)) b!2942120))

(assert (= (and start!285688 ((_ is Star!9103) r!17423)) b!2942118))

(assert (= (and start!285688 ((_ is Union!9103) r!17423)) b!2942124))

(assert (= (and start!285688 ((_ is Cons!34844) s!11993)) b!2942119))

(declare-fun m!3325885 () Bool)

(assert (=> b!2942121 m!3325885))

(declare-fun m!3325887 () Bool)

(assert (=> b!2942112 m!3325887))

(declare-fun m!3325889 () Bool)

(assert (=> b!2942117 m!3325889))

(declare-fun m!3325891 () Bool)

(assert (=> b!2942115 m!3325891))

(declare-fun m!3325893 () Bool)

(assert (=> b!2942115 m!3325893))

(declare-fun m!3325895 () Bool)

(assert (=> b!2942115 m!3325895))

(declare-fun m!3325897 () Bool)

(assert (=> b!2942122 m!3325897))

(declare-fun m!3325899 () Bool)

(assert (=> b!2942113 m!3325899))

(declare-fun m!3325901 () Bool)

(assert (=> b!2942125 m!3325901))

(declare-fun m!3325903 () Bool)

(assert (=> b!2942125 m!3325903))

(declare-fun m!3325905 () Bool)

(assert (=> b!2942125 m!3325905))

(declare-fun m!3325907 () Bool)

(assert (=> start!285688 m!3325907))

(declare-fun m!3325909 () Bool)

(assert (=> b!2942116 m!3325909))

(assert (=> b!2942116 m!3325909))

(declare-fun m!3325911 () Bool)

(assert (=> b!2942116 m!3325911))

(declare-fun m!3325913 () Bool)

(assert (=> b!2942116 m!3325913))

(declare-fun m!3325915 () Bool)

(assert (=> b!2942123 m!3325915))

(declare-fun m!3325917 () Bool)

(assert (=> b!2942123 m!3325917))

(declare-fun m!3325919 () Bool)

(assert (=> b!2942123 m!3325919))

(check-sat (not b!2942115) (not b!2942123) (not start!285688) (not b!2942113) (not b!2942118) (not b!2942119) (not b!2942125) (not b!2942116) tp_is_empty!15769 (not b!2942124) (not b!2942122) (not b!2942117) (not b!2942112) (not b!2942120) (not b!2942121))
(check-sat)

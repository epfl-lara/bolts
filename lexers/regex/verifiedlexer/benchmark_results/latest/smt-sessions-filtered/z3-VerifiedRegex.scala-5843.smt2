; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287204 () Bool)

(assert start!287204)

(declare-fun b!2967161 () Bool)

(declare-fun res!1223878 () Bool)

(declare-fun e!1867238 () Bool)

(assert (=> b!2967161 (=> res!1223878 e!1867238)))

(declare-datatypes ((C!18660 0))(
  ( (C!18661 (val!11366 Int)) )
))
(declare-datatypes ((Regex!9237 0))(
  ( (ElementMatch!9237 (c!486635 C!18660)) (Concat!14558 (regOne!18986 Regex!9237) (regTwo!18986 Regex!9237)) (EmptyExpr!9237) (Star!9237 (reg!9566 Regex!9237)) (EmptyLang!9237) (Union!9237 (regOne!18987 Regex!9237) (regTwo!18987 Regex!9237)) )
))
(declare-fun lt!1035463 () Regex!9237)

(declare-fun isEmptyLang!353 (Regex!9237) Bool)

(assert (=> b!2967161 (= res!1223878 (isEmptyLang!353 lt!1035463))))

(declare-fun b!2967162 () Bool)

(declare-fun res!1223877 () Bool)

(assert (=> b!2967162 (=> res!1223877 e!1867238)))

(declare-fun lt!1035468 () Regex!9237)

(declare-datatypes ((List!35102 0))(
  ( (Nil!34978) (Cons!34978 (h!40398 C!18660) (t!234167 List!35102)) )
))
(declare-fun s!11993 () List!35102)

(declare-fun matchR!4119 (Regex!9237 List!35102) Bool)

(assert (=> b!2967162 (= res!1223877 (not (matchR!4119 (Union!9237 lt!1035468 lt!1035463) s!11993)))))

(declare-fun res!1223876 () Bool)

(declare-fun e!1867232 () Bool)

(assert (=> start!287204 (=> (not res!1223876) (not e!1867232))))

(declare-fun r!17423 () Regex!9237)

(declare-fun validRegex!3970 (Regex!9237) Bool)

(assert (=> start!287204 (= res!1223876 (validRegex!3970 r!17423))))

(assert (=> start!287204 e!1867232))

(declare-fun e!1867235 () Bool)

(assert (=> start!287204 e!1867235))

(declare-fun e!1867234 () Bool)

(assert (=> start!287204 e!1867234))

(declare-fun b!2967163 () Bool)

(declare-fun e!1867237 () Bool)

(assert (=> b!2967163 (= e!1867237 true)))

(assert (=> b!2967163 (matchR!4119 (Union!9237 (regTwo!18987 r!17423) (regOne!18987 r!17423)) s!11993)))

(declare-datatypes ((Unit!48853 0))(
  ( (Unit!48854) )
))
(declare-fun lt!1035464 () Unit!48853)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!70 (Regex!9237 Regex!9237 List!35102) Unit!48853)

(assert (=> b!2967163 (= lt!1035464 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!70 (regTwo!18987 r!17423) (regOne!18987 r!17423) s!11993))))

(declare-fun b!2967164 () Bool)

(declare-fun tp!946377 () Bool)

(assert (=> b!2967164 (= e!1867235 tp!946377)))

(declare-fun b!2967165 () Bool)

(declare-fun tp_is_empty!16037 () Bool)

(declare-fun tp!946372 () Bool)

(assert (=> b!2967165 (= e!1867234 (and tp_is_empty!16037 tp!946372))))

(declare-fun b!2967166 () Bool)

(declare-fun e!1867233 () Bool)

(assert (=> b!2967166 (= e!1867233 e!1867237)))

(declare-fun res!1223879 () Bool)

(assert (=> b!2967166 (=> res!1223879 e!1867237)))

(declare-fun lt!1035462 () Bool)

(assert (=> b!2967166 (= res!1223879 (not lt!1035462))))

(assert (=> b!2967166 (= lt!1035462 (matchR!4119 lt!1035463 s!11993))))

(assert (=> b!2967166 (= lt!1035462 (matchR!4119 (regTwo!18987 r!17423) s!11993))))

(declare-fun lt!1035461 () Unit!48853)

(declare-fun lemmaSimplifySound!154 (Regex!9237 List!35102) Unit!48853)

(assert (=> b!2967166 (= lt!1035461 (lemmaSimplifySound!154 (regTwo!18987 r!17423) s!11993))))

(declare-fun b!2967167 () Bool)

(declare-fun e!1867236 () Bool)

(assert (=> b!2967167 (= e!1867236 e!1867238)))

(declare-fun res!1223875 () Bool)

(assert (=> b!2967167 (=> res!1223875 e!1867238)))

(assert (=> b!2967167 (= res!1223875 (isEmptyLang!353 lt!1035468))))

(declare-fun simplify!240 (Regex!9237) Regex!9237)

(assert (=> b!2967167 (= lt!1035463 (simplify!240 (regTwo!18987 r!17423)))))

(assert (=> b!2967167 (= lt!1035468 (simplify!240 (regOne!18987 r!17423)))))

(declare-fun b!2967168 () Bool)

(declare-fun tp!946374 () Bool)

(declare-fun tp!946375 () Bool)

(assert (=> b!2967168 (= e!1867235 (and tp!946374 tp!946375))))

(declare-fun b!2967169 () Bool)

(declare-fun e!1867239 () Bool)

(assert (=> b!2967169 (= e!1867239 (matchR!4119 lt!1035463 s!11993))))

(declare-fun b!2967170 () Bool)

(assert (=> b!2967170 (= e!1867232 (not e!1867236))))

(declare-fun res!1223880 () Bool)

(assert (=> b!2967170 (=> res!1223880 e!1867236)))

(declare-fun lt!1035465 () Bool)

(get-info :version)

(assert (=> b!2967170 (= res!1223880 (or lt!1035465 ((_ is Concat!14558) r!17423) (not ((_ is Union!9237) r!17423))))))

(declare-fun matchRSpec!1374 (Regex!9237 List!35102) Bool)

(assert (=> b!2967170 (= lt!1035465 (matchRSpec!1374 r!17423 s!11993))))

(assert (=> b!2967170 (= lt!1035465 (matchR!4119 r!17423 s!11993))))

(declare-fun lt!1035466 () Unit!48853)

(declare-fun mainMatchTheorem!1374 (Regex!9237 List!35102) Unit!48853)

(assert (=> b!2967170 (= lt!1035466 (mainMatchTheorem!1374 r!17423 s!11993))))

(declare-fun b!2967171 () Bool)

(assert (=> b!2967171 (= e!1867238 e!1867233)))

(declare-fun res!1223881 () Bool)

(assert (=> b!2967171 (=> res!1223881 e!1867233)))

(declare-fun lt!1035467 () Bool)

(assert (=> b!2967171 (= res!1223881 lt!1035467)))

(assert (=> b!2967171 e!1867239))

(declare-fun res!1223882 () Bool)

(assert (=> b!2967171 (=> res!1223882 e!1867239)))

(assert (=> b!2967171 (= res!1223882 lt!1035467)))

(assert (=> b!2967171 (= lt!1035467 (matchR!4119 lt!1035468 s!11993))))

(declare-fun lt!1035460 () Unit!48853)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!286 (Regex!9237 Regex!9237 List!35102) Unit!48853)

(assert (=> b!2967171 (= lt!1035460 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!286 lt!1035468 lt!1035463 s!11993))))

(declare-fun b!2967172 () Bool)

(assert (=> b!2967172 (= e!1867235 tp_is_empty!16037)))

(declare-fun b!2967173 () Bool)

(declare-fun tp!946373 () Bool)

(declare-fun tp!946376 () Bool)

(assert (=> b!2967173 (= e!1867235 (and tp!946373 tp!946376))))

(assert (= (and start!287204 res!1223876) b!2967170))

(assert (= (and b!2967170 (not res!1223880)) b!2967167))

(assert (= (and b!2967167 (not res!1223875)) b!2967161))

(assert (= (and b!2967161 (not res!1223878)) b!2967162))

(assert (= (and b!2967162 (not res!1223877)) b!2967171))

(assert (= (and b!2967171 (not res!1223882)) b!2967169))

(assert (= (and b!2967171 (not res!1223881)) b!2967166))

(assert (= (and b!2967166 (not res!1223879)) b!2967163))

(assert (= (and start!287204 ((_ is ElementMatch!9237) r!17423)) b!2967172))

(assert (= (and start!287204 ((_ is Concat!14558) r!17423)) b!2967173))

(assert (= (and start!287204 ((_ is Star!9237) r!17423)) b!2967164))

(assert (= (and start!287204 ((_ is Union!9237) r!17423)) b!2967168))

(assert (= (and start!287204 ((_ is Cons!34978) s!11993)) b!2967165))

(declare-fun m!3336851 () Bool)

(assert (=> b!2967167 m!3336851))

(declare-fun m!3336853 () Bool)

(assert (=> b!2967167 m!3336853))

(declare-fun m!3336855 () Bool)

(assert (=> b!2967167 m!3336855))

(declare-fun m!3336857 () Bool)

(assert (=> b!2967170 m!3336857))

(declare-fun m!3336859 () Bool)

(assert (=> b!2967170 m!3336859))

(declare-fun m!3336861 () Bool)

(assert (=> b!2967170 m!3336861))

(declare-fun m!3336863 () Bool)

(assert (=> b!2967171 m!3336863))

(declare-fun m!3336865 () Bool)

(assert (=> b!2967171 m!3336865))

(declare-fun m!3336867 () Bool)

(assert (=> b!2967163 m!3336867))

(declare-fun m!3336869 () Bool)

(assert (=> b!2967163 m!3336869))

(declare-fun m!3336871 () Bool)

(assert (=> b!2967162 m!3336871))

(declare-fun m!3336873 () Bool)

(assert (=> b!2967161 m!3336873))

(declare-fun m!3336875 () Bool)

(assert (=> b!2967166 m!3336875))

(declare-fun m!3336877 () Bool)

(assert (=> b!2967166 m!3336877))

(declare-fun m!3336879 () Bool)

(assert (=> b!2967166 m!3336879))

(declare-fun m!3336881 () Bool)

(assert (=> start!287204 m!3336881))

(assert (=> b!2967169 m!3336875))

(check-sat (not b!2967168) (not b!2967163) (not b!2967173) tp_is_empty!16037 (not b!2967167) (not b!2967164) (not b!2967161) (not b!2967165) (not b!2967170) (not b!2967169) (not b!2967162) (not b!2967166) (not start!287204) (not b!2967171))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288248 () Bool)

(assert start!288248)

(declare-fun b!2983225 () Bool)

(assert (=> b!2983225 true))

(assert (=> b!2983225 true))

(assert (=> b!2983225 true))

(declare-fun lambda!111332 () Int)

(declare-fun lambda!111331 () Int)

(assert (=> b!2983225 (not (= lambda!111332 lambda!111331))))

(assert (=> b!2983225 true))

(assert (=> b!2983225 true))

(assert (=> b!2983225 true))

(declare-fun b!2983210 () Bool)

(declare-fun e!1876032 () Bool)

(declare-fun tp!949451 () Bool)

(declare-fun tp!949449 () Bool)

(assert (=> b!2983210 (= e!1876032 (and tp!949451 tp!949449))))

(declare-fun b!2983211 () Bool)

(declare-datatypes ((Unit!49027 0))(
  ( (Unit!49028) )
))
(declare-fun e!1876033 () Unit!49027)

(declare-fun Unit!49029 () Unit!49027)

(assert (=> b!2983211 (= e!1876033 Unit!49029)))

(declare-fun lt!1038834 () Unit!49027)

(declare-datatypes ((C!18816 0))(
  ( (C!18817 (val!11444 Int)) )
))
(declare-datatypes ((Regex!9315 0))(
  ( (ElementMatch!9315 (c!490035 C!18816)) (Concat!14636 (regOne!19142 Regex!9315) (regTwo!19142 Regex!9315)) (EmptyExpr!9315) (Star!9315 (reg!9644 Regex!9315)) (EmptyLang!9315) (Union!9315 (regOne!19143 Regex!9315) (regTwo!19143 Regex!9315)) )
))
(declare-fun r!17423 () Regex!9315)

(declare-datatypes ((List!35180 0))(
  ( (Nil!35056) (Cons!35056 (h!40476 C!18816) (t!234245 List!35180)) )
))
(declare-datatypes ((tuple2!33968 0))(
  ( (tuple2!33969 (_1!20116 List!35180) (_2!20116 List!35180)) )
))
(declare-fun lt!1038822 () tuple2!33968)

(declare-fun mainMatchTheorem!1452 (Regex!9315 List!35180) Unit!49027)

(assert (=> b!2983211 (= lt!1038834 (mainMatchTheorem!1452 (reg!9644 r!17423) (_1!20116 lt!1038822)))))

(assert (=> b!2983211 false))

(declare-fun b!2983212 () Bool)

(declare-fun e!1876036 () Bool)

(declare-fun e!1876034 () Bool)

(assert (=> b!2983212 (= e!1876036 e!1876034)))

(declare-fun res!1230341 () Bool)

(assert (=> b!2983212 (=> res!1230341 e!1876034)))

(declare-fun lt!1038833 () Regex!9315)

(declare-fun isEmptyLang!429 (Regex!9315) Bool)

(assert (=> b!2983212 (= res!1230341 (isEmptyLang!429 lt!1038833))))

(declare-fun simplify!316 (Regex!9315) Regex!9315)

(assert (=> b!2983212 (= lt!1038833 (simplify!316 (reg!9644 r!17423)))))

(declare-fun b!2983213 () Bool)

(declare-fun e!1876041 () Bool)

(assert (=> b!2983213 (= e!1876041 (not e!1876036))))

(declare-fun res!1230339 () Bool)

(assert (=> b!2983213 (=> res!1230339 e!1876036)))

(declare-fun lt!1038832 () Bool)

(get-info :version)

(assert (=> b!2983213 (= res!1230339 (or lt!1038832 ((_ is Concat!14636) r!17423) ((_ is Union!9315) r!17423) (not ((_ is Star!9315) r!17423))))))

(declare-fun s!11993 () List!35180)

(declare-fun matchRSpec!1452 (Regex!9315 List!35180) Bool)

(assert (=> b!2983213 (= lt!1038832 (matchRSpec!1452 r!17423 s!11993))))

(declare-fun matchR!4197 (Regex!9315 List!35180) Bool)

(assert (=> b!2983213 (= lt!1038832 (matchR!4197 r!17423 s!11993))))

(declare-fun lt!1038819 () Unit!49027)

(assert (=> b!2983213 (= lt!1038819 (mainMatchTheorem!1452 r!17423 s!11993))))

(declare-fun b!2983214 () Bool)

(declare-fun tp_is_empty!16193 () Bool)

(assert (=> b!2983214 (= e!1876032 tp_is_empty!16193)))

(declare-fun b!2983215 () Bool)

(declare-fun e!1876038 () Bool)

(declare-fun e!1876037 () Bool)

(assert (=> b!2983215 (= e!1876038 e!1876037)))

(declare-fun res!1230340 () Bool)

(assert (=> b!2983215 (=> res!1230340 e!1876037)))

(declare-fun isEmpty!19317 (List!35180) Bool)

(assert (=> b!2983215 (= res!1230340 (isEmpty!19317 s!11993))))

(declare-fun lt!1038829 () Regex!9315)

(assert (=> b!2983215 (matchRSpec!1452 lt!1038829 s!11993)))

(declare-fun lt!1038828 () Unit!49027)

(assert (=> b!2983215 (= lt!1038828 (mainMatchTheorem!1452 lt!1038829 s!11993))))

(declare-fun b!2983216 () Bool)

(declare-fun res!1230344 () Bool)

(declare-fun e!1876031 () Bool)

(assert (=> b!2983216 (=> res!1230344 e!1876031)))

(declare-fun lt!1038823 () Regex!9315)

(declare-fun validRegex!4048 (Regex!9315) Bool)

(assert (=> b!2983216 (= res!1230344 (not (validRegex!4048 lt!1038823)))))

(declare-fun b!2983217 () Bool)

(declare-fun Unit!49030 () Unit!49027)

(assert (=> b!2983217 (= e!1876033 Unit!49030)))

(declare-fun b!2983218 () Bool)

(declare-fun e!1876035 () Bool)

(assert (=> b!2983218 (= e!1876035 e!1876031)))

(declare-fun res!1230338 () Bool)

(assert (=> b!2983218 (=> res!1230338 e!1876031)))

(declare-fun lt!1038820 () Bool)

(assert (=> b!2983218 (= res!1230338 (not lt!1038820))))

(declare-fun lt!1038818 () Regex!9315)

(assert (=> b!2983218 (= lt!1038820 (matchR!4197 lt!1038818 (_2!20116 lt!1038822)))))

(assert (=> b!2983218 (= lt!1038820 (matchR!4197 lt!1038823 (_2!20116 lt!1038822)))))

(assert (=> b!2983218 (= lt!1038818 (simplify!316 lt!1038823))))

(declare-fun lt!1038827 () Unit!49027)

(declare-fun lemmaSimplifySound!180 (Regex!9315 List!35180) Unit!49027)

(assert (=> b!2983218 (= lt!1038827 (lemmaSimplifySound!180 lt!1038823 (_2!20116 lt!1038822)))))

(assert (=> b!2983218 (= lt!1038823 (Star!9315 (reg!9644 r!17423)))))

(declare-fun lt!1038826 () Unit!49027)

(assert (=> b!2983218 (= lt!1038826 e!1876033)))

(declare-fun c!490034 () Bool)

(declare-fun size!26487 (List!35180) Int)

(assert (=> b!2983218 (= c!490034 (= (size!26487 (_2!20116 lt!1038822)) (size!26487 s!11993)))))

(assert (=> b!2983218 (matchR!4197 (reg!9644 r!17423) (_1!20116 lt!1038822))))

(declare-fun lt!1038817 () Unit!49027)

(assert (=> b!2983218 (= lt!1038817 (lemmaSimplifySound!180 (reg!9644 r!17423) (_1!20116 lt!1038822)))))

(declare-fun b!2983219 () Bool)

(declare-fun e!1876039 () Bool)

(declare-fun tp!949452 () Bool)

(assert (=> b!2983219 (= e!1876039 (and tp_is_empty!16193 tp!949452))))

(declare-fun b!2983209 () Bool)

(declare-fun tp!949450 () Bool)

(assert (=> b!2983209 (= e!1876032 tp!949450)))

(declare-fun res!1230335 () Bool)

(assert (=> start!288248 (=> (not res!1230335) (not e!1876041))))

(assert (=> start!288248 (= res!1230335 (validRegex!4048 r!17423))))

(assert (=> start!288248 e!1876041))

(assert (=> start!288248 e!1876032))

(assert (=> start!288248 e!1876039))

(declare-fun b!2983220 () Bool)

(declare-fun res!1230342 () Bool)

(assert (=> b!2983220 (=> res!1230342 e!1876035)))

(assert (=> b!2983220 (= res!1230342 (not (matchR!4197 lt!1038829 (_2!20116 lt!1038822))))))

(declare-fun b!2983221 () Bool)

(declare-fun e!1876040 () Bool)

(assert (=> b!2983221 (= e!1876040 e!1876035)))

(declare-fun res!1230337 () Bool)

(assert (=> b!2983221 (=> res!1230337 e!1876035)))

(assert (=> b!2983221 (= res!1230337 (not (matchR!4197 lt!1038833 (_1!20116 lt!1038822))))))

(declare-datatypes ((Option!6716 0))(
  ( (None!6715) (Some!6715 (v!34849 tuple2!33968)) )
))
(declare-fun lt!1038821 () Option!6716)

(declare-fun get!10841 (Option!6716) tuple2!33968)

(assert (=> b!2983221 (= lt!1038822 (get!10841 lt!1038821))))

(declare-fun b!2983222 () Bool)

(assert (=> b!2983222 (= e!1876034 e!1876038)))

(declare-fun res!1230336 () Bool)

(assert (=> b!2983222 (=> res!1230336 e!1876038)))

(assert (=> b!2983222 (= res!1230336 (not (matchR!4197 lt!1038829 s!11993)))))

(assert (=> b!2983222 (= lt!1038829 (Star!9315 lt!1038833))))

(declare-fun b!2983223 () Bool)

(declare-fun tp!949453 () Bool)

(declare-fun tp!949448 () Bool)

(assert (=> b!2983223 (= e!1876032 (and tp!949453 tp!949448))))

(declare-fun b!2983224 () Bool)

(assert (=> b!2983224 (= e!1876031 true)))

(declare-fun ++!8373 (List!35180 List!35180) List!35180)

(assert (=> b!2983224 (matchR!4197 lt!1038823 (++!8373 (_1!20116 lt!1038822) (_2!20116 lt!1038822)))))

(declare-fun lt!1038830 () Unit!49027)

(declare-fun lemmaStarApp!20 (Regex!9315 List!35180 List!35180) Unit!49027)

(assert (=> b!2983224 (= lt!1038830 (lemmaStarApp!20 (reg!9644 r!17423) (_1!20116 lt!1038822) (_2!20116 lt!1038822)))))

(assert (=> b!2983225 (= e!1876037 e!1876040)))

(declare-fun res!1230343 () Bool)

(assert (=> b!2983225 (=> res!1230343 e!1876040)))

(declare-fun lt!1038824 () Bool)

(assert (=> b!2983225 (= res!1230343 (not lt!1038824))))

(declare-fun Exists!1595 (Int) Bool)

(assert (=> b!2983225 (= (Exists!1595 lambda!111331) (Exists!1595 lambda!111332))))

(declare-fun lt!1038825 () Unit!49027)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!280 (Regex!9315 List!35180) Unit!49027)

(assert (=> b!2983225 (= lt!1038825 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!280 lt!1038833 s!11993))))

(assert (=> b!2983225 (= lt!1038824 (Exists!1595 lambda!111331))))

(declare-fun isDefined!5267 (Option!6716) Bool)

(assert (=> b!2983225 (= lt!1038824 (isDefined!5267 lt!1038821))))

(declare-fun findConcatSeparation!1110 (Regex!9315 Regex!9315 List!35180 List!35180 List!35180) Option!6716)

(assert (=> b!2983225 (= lt!1038821 (findConcatSeparation!1110 lt!1038833 lt!1038829 Nil!35056 s!11993 s!11993))))

(declare-fun lt!1038831 () Unit!49027)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!888 (Regex!9315 Regex!9315 List!35180) Unit!49027)

(assert (=> b!2983225 (= lt!1038831 (lemmaFindConcatSeparationEquivalentToExists!888 lt!1038833 lt!1038829 s!11993))))

(assert (= (and start!288248 res!1230335) b!2983213))

(assert (= (and b!2983213 (not res!1230339)) b!2983212))

(assert (= (and b!2983212 (not res!1230341)) b!2983222))

(assert (= (and b!2983222 (not res!1230336)) b!2983215))

(assert (= (and b!2983215 (not res!1230340)) b!2983225))

(assert (= (and b!2983225 (not res!1230343)) b!2983221))

(assert (= (and b!2983221 (not res!1230337)) b!2983220))

(assert (= (and b!2983220 (not res!1230342)) b!2983218))

(assert (= (and b!2983218 c!490034) b!2983211))

(assert (= (and b!2983218 (not c!490034)) b!2983217))

(assert (= (and b!2983218 (not res!1230338)) b!2983216))

(assert (= (and b!2983216 (not res!1230344)) b!2983224))

(assert (= (and start!288248 ((_ is ElementMatch!9315) r!17423)) b!2983214))

(assert (= (and start!288248 ((_ is Concat!14636) r!17423)) b!2983210))

(assert (= (and start!288248 ((_ is Star!9315) r!17423)) b!2983209))

(assert (= (and start!288248 ((_ is Union!9315) r!17423)) b!2983223))

(assert (= (and start!288248 ((_ is Cons!35056) s!11993)) b!2983219))

(declare-fun m!3343485 () Bool)

(assert (=> b!2983222 m!3343485))

(declare-fun m!3343487 () Bool)

(assert (=> b!2983216 m!3343487))

(declare-fun m!3343489 () Bool)

(assert (=> b!2983215 m!3343489))

(declare-fun m!3343491 () Bool)

(assert (=> b!2983215 m!3343491))

(declare-fun m!3343493 () Bool)

(assert (=> b!2983215 m!3343493))

(declare-fun m!3343495 () Bool)

(assert (=> b!2983220 m!3343495))

(declare-fun m!3343497 () Bool)

(assert (=> start!288248 m!3343497))

(declare-fun m!3343499 () Bool)

(assert (=> b!2983218 m!3343499))

(declare-fun m!3343501 () Bool)

(assert (=> b!2983218 m!3343501))

(declare-fun m!3343503 () Bool)

(assert (=> b!2983218 m!3343503))

(declare-fun m!3343505 () Bool)

(assert (=> b!2983218 m!3343505))

(declare-fun m!3343507 () Bool)

(assert (=> b!2983218 m!3343507))

(declare-fun m!3343509 () Bool)

(assert (=> b!2983218 m!3343509))

(declare-fun m!3343511 () Bool)

(assert (=> b!2983218 m!3343511))

(declare-fun m!3343513 () Bool)

(assert (=> b!2983218 m!3343513))

(declare-fun m!3343515 () Bool)

(assert (=> b!2983224 m!3343515))

(assert (=> b!2983224 m!3343515))

(declare-fun m!3343517 () Bool)

(assert (=> b!2983224 m!3343517))

(declare-fun m!3343519 () Bool)

(assert (=> b!2983224 m!3343519))

(declare-fun m!3343521 () Bool)

(assert (=> b!2983213 m!3343521))

(declare-fun m!3343523 () Bool)

(assert (=> b!2983213 m!3343523))

(declare-fun m!3343525 () Bool)

(assert (=> b!2983213 m!3343525))

(declare-fun m!3343527 () Bool)

(assert (=> b!2983211 m!3343527))

(declare-fun m!3343529 () Bool)

(assert (=> b!2983225 m!3343529))

(declare-fun m!3343531 () Bool)

(assert (=> b!2983225 m!3343531))

(declare-fun m!3343533 () Bool)

(assert (=> b!2983225 m!3343533))

(declare-fun m!3343535 () Bool)

(assert (=> b!2983225 m!3343535))

(assert (=> b!2983225 m!3343529))

(declare-fun m!3343537 () Bool)

(assert (=> b!2983225 m!3343537))

(declare-fun m!3343539 () Bool)

(assert (=> b!2983225 m!3343539))

(declare-fun m!3343541 () Bool)

(assert (=> b!2983212 m!3343541))

(declare-fun m!3343543 () Bool)

(assert (=> b!2983212 m!3343543))

(declare-fun m!3343545 () Bool)

(assert (=> b!2983221 m!3343545))

(declare-fun m!3343547 () Bool)

(assert (=> b!2983221 m!3343547))

(check-sat (not b!2983210) (not b!2983220) (not b!2983221) (not b!2983213) (not b!2983215) (not b!2983225) (not b!2983223) (not b!2983211) (not start!288248) (not b!2983224) (not b!2983209) (not b!2983219) tp_is_empty!16193 (not b!2983212) (not b!2983216) (not b!2983222) (not b!2983218))
(check-sat)

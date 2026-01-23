; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288760 () Bool)

(assert start!288760)

(declare-fun b!2989869 () Bool)

(assert (=> b!2989869 true))

(assert (=> b!2989869 true))

(assert (=> b!2989869 true))

(declare-fun lambda!111776 () Int)

(declare-fun lambda!111775 () Int)

(assert (=> b!2989869 (not (= lambda!111776 lambda!111775))))

(assert (=> b!2989869 true))

(assert (=> b!2989869 true))

(assert (=> b!2989869 true))

(declare-fun b!2989868 () Bool)

(declare-fun res!1233260 () Bool)

(declare-fun e!1879534 () Bool)

(assert (=> b!2989868 (=> res!1233260 e!1879534)))

(declare-datatypes ((C!18880 0))(
  ( (C!18881 (val!11476 Int)) )
))
(declare-datatypes ((List!35212 0))(
  ( (Nil!35088) (Cons!35088 (h!40508 C!18880) (t!234277 List!35212)) )
))
(declare-datatypes ((tuple2!34012 0))(
  ( (tuple2!34013 (_1!20138 List!35212) (_2!20138 List!35212)) )
))
(declare-fun lt!1040257 () tuple2!34012)

(declare-fun s!11993 () List!35212)

(declare-fun ++!8391 (List!35212 List!35212) List!35212)

(assert (=> b!2989868 (= res!1233260 (not (= (++!8391 (_1!20138 lt!1040257) (_2!20138 lt!1040257)) s!11993)))))

(declare-fun e!1879532 () Bool)

(declare-fun e!1879530 () Bool)

(assert (=> b!2989869 (= e!1879532 e!1879530)))

(declare-fun res!1233259 () Bool)

(assert (=> b!2989869 (=> res!1233259 e!1879530)))

(declare-fun lt!1040264 () Bool)

(assert (=> b!2989869 (= res!1233259 (not lt!1040264))))

(declare-fun Exists!1620 (Int) Bool)

(assert (=> b!2989869 (= (Exists!1620 lambda!111775) (Exists!1620 lambda!111776))))

(declare-datatypes ((Unit!49097 0))(
  ( (Unit!49098) )
))
(declare-fun lt!1040258 () Unit!49097)

(declare-datatypes ((Regex!9347 0))(
  ( (ElementMatch!9347 (c!491293 C!18880)) (Concat!14668 (regOne!19206 Regex!9347) (regTwo!19206 Regex!9347)) (EmptyExpr!9347) (Star!9347 (reg!9676 Regex!9347)) (EmptyLang!9347) (Union!9347 (regOne!19207 Regex!9347) (regTwo!19207 Regex!9347)) )
))
(declare-fun r!17423 () Regex!9347)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!296 (Regex!9347 List!35212) Unit!49097)

(assert (=> b!2989869 (= lt!1040258 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!296 (reg!9676 r!17423) s!11993))))

(assert (=> b!2989869 (= lt!1040264 (Exists!1620 lambda!111775))))

(declare-datatypes ((Option!6738 0))(
  ( (None!6737) (Some!6737 (v!34871 tuple2!34012)) )
))
(declare-fun lt!1040262 () Option!6738)

(declare-fun isDefined!5289 (Option!6738) Bool)

(assert (=> b!2989869 (= lt!1040264 (isDefined!5289 lt!1040262))))

(declare-fun lt!1040260 () Regex!9347)

(declare-fun findConcatSeparation!1132 (Regex!9347 Regex!9347 List!35212 List!35212 List!35212) Option!6738)

(assert (=> b!2989869 (= lt!1040262 (findConcatSeparation!1132 (reg!9676 r!17423) lt!1040260 Nil!35088 s!11993 s!11993))))

(declare-fun lt!1040266 () Unit!49097)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!910 (Regex!9347 Regex!9347 List!35212) Unit!49097)

(assert (=> b!2989869 (= lt!1040266 (lemmaFindConcatSeparationEquivalentToExists!910 (reg!9676 r!17423) lt!1040260 s!11993))))

(assert (=> b!2989869 (= lt!1040260 (Star!9347 (reg!9676 r!17423)))))

(declare-fun b!2989870 () Bool)

(declare-fun res!1233256 () Bool)

(assert (=> b!2989870 (=> res!1233256 e!1879532)))

(declare-fun isEmpty!19356 (List!35212) Bool)

(assert (=> b!2989870 (= res!1233256 (isEmpty!19356 s!11993))))

(declare-fun b!2989871 () Bool)

(declare-fun e!1879533 () Bool)

(assert (=> b!2989871 (= e!1879533 (not e!1879532))))

(declare-fun res!1233258 () Bool)

(assert (=> b!2989871 (=> res!1233258 e!1879532)))

(declare-fun lt!1040268 () Bool)

(get-info :version)

(assert (=> b!2989871 (= res!1233258 (or (not lt!1040268) ((_ is Concat!14668) r!17423) ((_ is Union!9347) r!17423) (not ((_ is Star!9347) r!17423))))))

(declare-fun matchRSpec!1484 (Regex!9347 List!35212) Bool)

(assert (=> b!2989871 (= lt!1040268 (matchRSpec!1484 r!17423 s!11993))))

(declare-fun matchR!4229 (Regex!9347 List!35212) Bool)

(assert (=> b!2989871 (= lt!1040268 (matchR!4229 r!17423 s!11993))))

(declare-fun lt!1040267 () Unit!49097)

(declare-fun mainMatchTheorem!1484 (Regex!9347 List!35212) Unit!49097)

(assert (=> b!2989871 (= lt!1040267 (mainMatchTheorem!1484 r!17423 s!11993))))

(declare-fun b!2989872 () Bool)

(declare-fun e!1879535 () Bool)

(declare-fun tp_is_empty!16257 () Bool)

(assert (=> b!2989872 (= e!1879535 tp_is_empty!16257)))

(declare-fun b!2989873 () Bool)

(declare-fun tp!950784 () Bool)

(assert (=> b!2989873 (= e!1879535 tp!950784)))

(declare-fun b!2989874 () Bool)

(declare-fun e!1879528 () Bool)

(assert (=> b!2989874 (= e!1879530 e!1879528)))

(declare-fun res!1233262 () Bool)

(assert (=> b!2989874 (=> res!1233262 e!1879528)))

(assert (=> b!2989874 (= res!1233262 (not (matchR!4229 (reg!9676 r!17423) (_1!20138 lt!1040257))))))

(declare-fun get!10879 (Option!6738) tuple2!34012)

(assert (=> b!2989874 (= lt!1040257 (get!10879 lt!1040262))))

(declare-fun b!2989875 () Bool)

(declare-fun e!1879531 () Bool)

(assert (=> b!2989875 (= e!1879531 (isEmpty!19356 (_1!20138 lt!1040257)))))

(declare-fun b!2989876 () Bool)

(assert (=> b!2989876 (= e!1879528 e!1879534)))

(declare-fun res!1233261 () Bool)

(assert (=> b!2989876 (=> res!1233261 e!1879534)))

(declare-fun lt!1040263 () Int)

(declare-fun lt!1040259 () Int)

(assert (=> b!2989876 (= res!1233261 (not (= lt!1040263 lt!1040259)))))

(declare-fun size!26497 (List!35212) Int)

(assert (=> b!2989876 (= lt!1040259 (size!26497 s!11993))))

(assert (=> b!2989876 (= lt!1040263 (size!26497 (_2!20138 lt!1040257)))))

(declare-fun simplify!338 (Regex!9347) Regex!9347)

(assert (=> b!2989876 (matchR!4229 (simplify!338 (reg!9676 r!17423)) (_1!20138 lt!1040257))))

(declare-fun lt!1040261 () Unit!49097)

(declare-fun lemmaSimplifySound!196 (Regex!9347 List!35212) Unit!49097)

(assert (=> b!2989876 (= lt!1040261 (lemmaSimplifySound!196 (reg!9676 r!17423) (_1!20138 lt!1040257)))))

(declare-fun b!2989877 () Bool)

(declare-fun tp!950787 () Bool)

(declare-fun tp!950789 () Bool)

(assert (=> b!2989877 (= e!1879535 (and tp!950787 tp!950789))))

(declare-fun res!1233264 () Bool)

(assert (=> start!288760 (=> (not res!1233264) (not e!1879533))))

(declare-fun validRegex!4080 (Regex!9347) Bool)

(assert (=> start!288760 (= res!1233264 (validRegex!4080 r!17423))))

(assert (=> start!288760 e!1879533))

(assert (=> start!288760 e!1879535))

(declare-fun e!1879529 () Bool)

(assert (=> start!288760 e!1879529))

(declare-fun b!2989878 () Bool)

(assert (=> b!2989878 (= e!1879534 e!1879531)))

(declare-fun res!1233257 () Bool)

(assert (=> b!2989878 (=> res!1233257 e!1879531)))

(declare-fun lt!1040265 () Int)

(assert (=> b!2989878 (= res!1233257 (or (not (= (+ lt!1040265 lt!1040263) lt!1040259)) (not (= lt!1040265 0))))))

(assert (=> b!2989878 (= lt!1040265 (size!26497 (_1!20138 lt!1040257)))))

(declare-fun b!2989879 () Bool)

(declare-fun tp!950788 () Bool)

(assert (=> b!2989879 (= e!1879529 (and tp_is_empty!16257 tp!950788))))

(declare-fun b!2989880 () Bool)

(declare-fun tp!950785 () Bool)

(declare-fun tp!950786 () Bool)

(assert (=> b!2989880 (= e!1879535 (and tp!950785 tp!950786))))

(declare-fun b!2989881 () Bool)

(declare-fun res!1233263 () Bool)

(assert (=> b!2989881 (=> res!1233263 e!1879528)))

(assert (=> b!2989881 (= res!1233263 (not (matchR!4229 lt!1040260 (_2!20138 lt!1040257))))))

(assert (= (and start!288760 res!1233264) b!2989871))

(assert (= (and b!2989871 (not res!1233258)) b!2989870))

(assert (= (and b!2989870 (not res!1233256)) b!2989869))

(assert (= (and b!2989869 (not res!1233259)) b!2989874))

(assert (= (and b!2989874 (not res!1233262)) b!2989881))

(assert (= (and b!2989881 (not res!1233263)) b!2989876))

(assert (= (and b!2989876 (not res!1233261)) b!2989868))

(assert (= (and b!2989868 (not res!1233260)) b!2989878))

(assert (= (and b!2989878 (not res!1233257)) b!2989875))

(assert (= (and start!288760 ((_ is ElementMatch!9347) r!17423)) b!2989872))

(assert (= (and start!288760 ((_ is Concat!14668) r!17423)) b!2989877))

(assert (= (and start!288760 ((_ is Star!9347) r!17423)) b!2989873))

(assert (= (and start!288760 ((_ is Union!9347) r!17423)) b!2989880))

(assert (= (and start!288760 ((_ is Cons!35088) s!11993)) b!2989879))

(declare-fun m!3346601 () Bool)

(assert (=> b!2989878 m!3346601))

(declare-fun m!3346603 () Bool)

(assert (=> b!2989868 m!3346603))

(declare-fun m!3346605 () Bool)

(assert (=> b!2989869 m!3346605))

(declare-fun m!3346607 () Bool)

(assert (=> b!2989869 m!3346607))

(declare-fun m!3346609 () Bool)

(assert (=> b!2989869 m!3346609))

(declare-fun m!3346611 () Bool)

(assert (=> b!2989869 m!3346611))

(declare-fun m!3346613 () Bool)

(assert (=> b!2989869 m!3346613))

(assert (=> b!2989869 m!3346605))

(declare-fun m!3346615 () Bool)

(assert (=> b!2989869 m!3346615))

(declare-fun m!3346617 () Bool)

(assert (=> b!2989871 m!3346617))

(declare-fun m!3346619 () Bool)

(assert (=> b!2989871 m!3346619))

(declare-fun m!3346621 () Bool)

(assert (=> b!2989871 m!3346621))

(declare-fun m!3346623 () Bool)

(assert (=> start!288760 m!3346623))

(declare-fun m!3346625 () Bool)

(assert (=> b!2989875 m!3346625))

(declare-fun m!3346627 () Bool)

(assert (=> b!2989881 m!3346627))

(declare-fun m!3346629 () Bool)

(assert (=> b!2989874 m!3346629))

(declare-fun m!3346631 () Bool)

(assert (=> b!2989874 m!3346631))

(declare-fun m!3346633 () Bool)

(assert (=> b!2989870 m!3346633))

(declare-fun m!3346635 () Bool)

(assert (=> b!2989876 m!3346635))

(declare-fun m!3346637 () Bool)

(assert (=> b!2989876 m!3346637))

(declare-fun m!3346639 () Bool)

(assert (=> b!2989876 m!3346639))

(declare-fun m!3346641 () Bool)

(assert (=> b!2989876 m!3346641))

(declare-fun m!3346643 () Bool)

(assert (=> b!2989876 m!3346643))

(assert (=> b!2989876 m!3346635))

(check-sat (not b!2989877) (not b!2989870) (not b!2989874) (not b!2989876) (not b!2989880) (not start!288760) tp_is_empty!16257 (not b!2989881) (not b!2989873) (not b!2989879) (not b!2989871) (not b!2989875) (not b!2989869) (not b!2989878) (not b!2989868))
(check-sat)
(get-model)

(declare-fun d!844451 () Bool)

(assert (=> d!844451 (= (isEmpty!19356 (_1!20138 lt!1040257)) ((_ is Nil!35088) (_1!20138 lt!1040257)))))

(assert (=> b!2989875 d!844451))

(declare-fun b!2990003 () Bool)

(declare-fun e!1879606 () Bool)

(declare-fun e!1879605 () Bool)

(assert (=> b!2990003 (= e!1879606 e!1879605)))

(declare-fun c!491322 () Bool)

(assert (=> b!2990003 (= c!491322 ((_ is Union!9347) r!17423))))

(declare-fun c!491323 () Bool)

(declare-fun call!199970 () Bool)

(declare-fun bm!199964 () Bool)

(assert (=> bm!199964 (= call!199970 (validRegex!4080 (ite c!491323 (reg!9676 r!17423) (ite c!491322 (regTwo!19207 r!17423) (regOne!19206 r!17423)))))))

(declare-fun bm!199965 () Bool)

(declare-fun call!199971 () Bool)

(assert (=> bm!199965 (= call!199971 (validRegex!4080 (ite c!491322 (regOne!19207 r!17423) (regTwo!19206 r!17423))))))

(declare-fun bm!199966 () Bool)

(declare-fun call!199969 () Bool)

(assert (=> bm!199966 (= call!199969 call!199970)))

(declare-fun b!2990004 () Bool)

(declare-fun e!1879607 () Bool)

(assert (=> b!2990004 (= e!1879606 e!1879607)))

(declare-fun res!1233329 () Bool)

(declare-fun nullable!3016 (Regex!9347) Bool)

(assert (=> b!2990004 (= res!1233329 (not (nullable!3016 (reg!9676 r!17423))))))

(assert (=> b!2990004 (=> (not res!1233329) (not e!1879607))))

(declare-fun b!2990005 () Bool)

(declare-fun e!1879608 () Bool)

(assert (=> b!2990005 (= e!1879608 call!199971)))

(declare-fun d!844453 () Bool)

(declare-fun res!1233326 () Bool)

(declare-fun e!1879609 () Bool)

(assert (=> d!844453 (=> res!1233326 e!1879609)))

(assert (=> d!844453 (= res!1233326 ((_ is ElementMatch!9347) r!17423))))

(assert (=> d!844453 (= (validRegex!4080 r!17423) e!1879609)))

(declare-fun b!2990006 () Bool)

(declare-fun e!1879603 () Bool)

(assert (=> b!2990006 (= e!1879603 call!199969)))

(declare-fun b!2990007 () Bool)

(declare-fun e!1879604 () Bool)

(assert (=> b!2990007 (= e!1879604 e!1879608)))

(declare-fun res!1233330 () Bool)

(assert (=> b!2990007 (=> (not res!1233330) (not e!1879608))))

(assert (=> b!2990007 (= res!1233330 call!199969)))

(declare-fun b!2990008 () Bool)

(declare-fun res!1233327 () Bool)

(assert (=> b!2990008 (=> (not res!1233327) (not e!1879603))))

(assert (=> b!2990008 (= res!1233327 call!199971)))

(assert (=> b!2990008 (= e!1879605 e!1879603)))

(declare-fun b!2990009 () Bool)

(assert (=> b!2990009 (= e!1879607 call!199970)))

(declare-fun b!2990010 () Bool)

(assert (=> b!2990010 (= e!1879609 e!1879606)))

(assert (=> b!2990010 (= c!491323 ((_ is Star!9347) r!17423))))

(declare-fun b!2990011 () Bool)

(declare-fun res!1233328 () Bool)

(assert (=> b!2990011 (=> res!1233328 e!1879604)))

(assert (=> b!2990011 (= res!1233328 (not ((_ is Concat!14668) r!17423)))))

(assert (=> b!2990011 (= e!1879605 e!1879604)))

(assert (= (and d!844453 (not res!1233326)) b!2990010))

(assert (= (and b!2990010 c!491323) b!2990004))

(assert (= (and b!2990010 (not c!491323)) b!2990003))

(assert (= (and b!2990004 res!1233329) b!2990009))

(assert (= (and b!2990003 c!491322) b!2990008))

(assert (= (and b!2990003 (not c!491322)) b!2990011))

(assert (= (and b!2990008 res!1233327) b!2990006))

(assert (= (and b!2990011 (not res!1233328)) b!2990007))

(assert (= (and b!2990007 res!1233330) b!2990005))

(assert (= (or b!2990008 b!2990005) bm!199965))

(assert (= (or b!2990006 b!2990007) bm!199966))

(assert (= (or b!2990009 bm!199966) bm!199964))

(declare-fun m!3346677 () Bool)

(assert (=> bm!199964 m!3346677))

(declare-fun m!3346679 () Bool)

(assert (=> bm!199965 m!3346679))

(declare-fun m!3346681 () Bool)

(assert (=> b!2990004 m!3346681))

(assert (=> start!288760 d!844453))

(declare-fun b!2990153 () Bool)

(declare-fun e!1879692 () Bool)

(declare-fun lt!1040307 () Option!6738)

(assert (=> b!2990153 (= e!1879692 (not (isDefined!5289 lt!1040307)))))

(declare-fun b!2990154 () Bool)

(declare-fun e!1879693 () Option!6738)

(declare-fun e!1879695 () Option!6738)

(assert (=> b!2990154 (= e!1879693 e!1879695)))

(declare-fun c!491370 () Bool)

(assert (=> b!2990154 (= c!491370 ((_ is Nil!35088) s!11993))))

(declare-fun b!2990155 () Bool)

(assert (=> b!2990155 (= e!1879695 None!6737)))

(declare-fun b!2990156 () Bool)

(declare-fun res!1233382 () Bool)

(declare-fun e!1879691 () Bool)

(assert (=> b!2990156 (=> (not res!1233382) (not e!1879691))))

(assert (=> b!2990156 (= res!1233382 (matchR!4229 lt!1040260 (_2!20138 (get!10879 lt!1040307))))))

(declare-fun b!2990157 () Bool)

(assert (=> b!2990157 (= e!1879691 (= (++!8391 (_1!20138 (get!10879 lt!1040307)) (_2!20138 (get!10879 lt!1040307))) s!11993))))

(declare-fun b!2990158 () Bool)

(declare-fun res!1233385 () Bool)

(assert (=> b!2990158 (=> (not res!1233385) (not e!1879691))))

(assert (=> b!2990158 (= res!1233385 (matchR!4229 (reg!9676 r!17423) (_1!20138 (get!10879 lt!1040307))))))

(declare-fun b!2990159 () Bool)

(assert (=> b!2990159 (= e!1879693 (Some!6737 (tuple2!34013 Nil!35088 s!11993)))))

(declare-fun d!844459 () Bool)

(assert (=> d!844459 e!1879692))

(declare-fun res!1233383 () Bool)

(assert (=> d!844459 (=> res!1233383 e!1879692)))

(assert (=> d!844459 (= res!1233383 e!1879691)))

(declare-fun res!1233386 () Bool)

(assert (=> d!844459 (=> (not res!1233386) (not e!1879691))))

(assert (=> d!844459 (= res!1233386 (isDefined!5289 lt!1040307))))

(assert (=> d!844459 (= lt!1040307 e!1879693)))

(declare-fun c!491369 () Bool)

(declare-fun e!1879694 () Bool)

(assert (=> d!844459 (= c!491369 e!1879694)))

(declare-fun res!1233384 () Bool)

(assert (=> d!844459 (=> (not res!1233384) (not e!1879694))))

(assert (=> d!844459 (= res!1233384 (matchR!4229 (reg!9676 r!17423) Nil!35088))))

(assert (=> d!844459 (validRegex!4080 (reg!9676 r!17423))))

(assert (=> d!844459 (= (findConcatSeparation!1132 (reg!9676 r!17423) lt!1040260 Nil!35088 s!11993 s!11993) lt!1040307)))

(declare-fun b!2990160 () Bool)

(declare-fun lt!1040306 () Unit!49097)

(declare-fun lt!1040308 () Unit!49097)

(assert (=> b!2990160 (= lt!1040306 lt!1040308)))

(assert (=> b!2990160 (= (++!8391 (++!8391 Nil!35088 (Cons!35088 (h!40508 s!11993) Nil!35088)) (t!234277 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1003 (List!35212 C!18880 List!35212 List!35212) Unit!49097)

(assert (=> b!2990160 (= lt!1040308 (lemmaMoveElementToOtherListKeepsConcatEq!1003 Nil!35088 (h!40508 s!11993) (t!234277 s!11993) s!11993))))

(assert (=> b!2990160 (= e!1879695 (findConcatSeparation!1132 (reg!9676 r!17423) lt!1040260 (++!8391 Nil!35088 (Cons!35088 (h!40508 s!11993) Nil!35088)) (t!234277 s!11993) s!11993))))

(declare-fun b!2990161 () Bool)

(assert (=> b!2990161 (= e!1879694 (matchR!4229 lt!1040260 s!11993))))

(assert (= (and d!844459 res!1233384) b!2990161))

(assert (= (and d!844459 c!491369) b!2990159))

(assert (= (and d!844459 (not c!491369)) b!2990154))

(assert (= (and b!2990154 c!491370) b!2990155))

(assert (= (and b!2990154 (not c!491370)) b!2990160))

(assert (= (and d!844459 res!1233386) b!2990158))

(assert (= (and b!2990158 res!1233385) b!2990156))

(assert (= (and b!2990156 res!1233382) b!2990157))

(assert (= (and d!844459 (not res!1233383)) b!2990153))

(declare-fun m!3346729 () Bool)

(assert (=> b!2990158 m!3346729))

(declare-fun m!3346731 () Bool)

(assert (=> b!2990158 m!3346731))

(declare-fun m!3346733 () Bool)

(assert (=> d!844459 m!3346733))

(declare-fun m!3346735 () Bool)

(assert (=> d!844459 m!3346735))

(declare-fun m!3346737 () Bool)

(assert (=> d!844459 m!3346737))

(declare-fun m!3346739 () Bool)

(assert (=> b!2990160 m!3346739))

(assert (=> b!2990160 m!3346739))

(declare-fun m!3346741 () Bool)

(assert (=> b!2990160 m!3346741))

(declare-fun m!3346743 () Bool)

(assert (=> b!2990160 m!3346743))

(assert (=> b!2990160 m!3346739))

(declare-fun m!3346745 () Bool)

(assert (=> b!2990160 m!3346745))

(assert (=> b!2990157 m!3346729))

(declare-fun m!3346747 () Bool)

(assert (=> b!2990157 m!3346747))

(declare-fun m!3346749 () Bool)

(assert (=> b!2990161 m!3346749))

(assert (=> b!2990156 m!3346729))

(declare-fun m!3346751 () Bool)

(assert (=> b!2990156 m!3346751))

(assert (=> b!2990153 m!3346733))

(assert (=> b!2989869 d!844459))

(declare-fun d!844481 () Bool)

(declare-fun isEmpty!19357 (Option!6738) Bool)

(assert (=> d!844481 (= (isDefined!5289 lt!1040262) (not (isEmpty!19357 lt!1040262)))))

(declare-fun bs!527625 () Bool)

(assert (= bs!527625 d!844481))

(declare-fun m!3346753 () Bool)

(assert (=> bs!527625 m!3346753))

(assert (=> b!2989869 d!844481))

(declare-fun bs!527630 () Bool)

(declare-fun d!844483 () Bool)

(assert (= bs!527630 (and d!844483 b!2989869)))

(declare-fun lambda!111788 () Int)

(assert (=> bs!527630 (= lambda!111788 lambda!111775)))

(assert (=> bs!527630 (not (= lambda!111788 lambda!111776))))

(assert (=> d!844483 true))

(assert (=> d!844483 true))

(assert (=> d!844483 true))

(assert (=> d!844483 (= (isDefined!5289 (findConcatSeparation!1132 (reg!9676 r!17423) lt!1040260 Nil!35088 s!11993 s!11993)) (Exists!1620 lambda!111788))))

(declare-fun lt!1040321 () Unit!49097)

(declare-fun choose!17745 (Regex!9347 Regex!9347 List!35212) Unit!49097)

(assert (=> d!844483 (= lt!1040321 (choose!17745 (reg!9676 r!17423) lt!1040260 s!11993))))

(assert (=> d!844483 (validRegex!4080 (reg!9676 r!17423))))

(assert (=> d!844483 (= (lemmaFindConcatSeparationEquivalentToExists!910 (reg!9676 r!17423) lt!1040260 s!11993) lt!1040321)))

(declare-fun bs!527631 () Bool)

(assert (= bs!527631 d!844483))

(assert (=> bs!527631 m!3346609))

(declare-fun m!3346779 () Bool)

(assert (=> bs!527631 m!3346779))

(assert (=> bs!527631 m!3346737))

(declare-fun m!3346781 () Bool)

(assert (=> bs!527631 m!3346781))

(assert (=> bs!527631 m!3346609))

(declare-fun m!3346783 () Bool)

(assert (=> bs!527631 m!3346783))

(assert (=> b!2989869 d!844483))

(declare-fun d!844491 () Bool)

(declare-fun choose!17746 (Int) Bool)

(assert (=> d!844491 (= (Exists!1620 lambda!111775) (choose!17746 lambda!111775))))

(declare-fun bs!527632 () Bool)

(assert (= bs!527632 d!844491))

(declare-fun m!3346785 () Bool)

(assert (=> bs!527632 m!3346785))

(assert (=> b!2989869 d!844491))

(declare-fun bs!527641 () Bool)

(declare-fun d!844493 () Bool)

(assert (= bs!527641 (and d!844493 b!2989869)))

(declare-fun lambda!111799 () Int)

(assert (=> bs!527641 (= (= (Star!9347 (reg!9676 r!17423)) lt!1040260) (= lambda!111799 lambda!111775))))

(assert (=> bs!527641 (not (= lambda!111799 lambda!111776))))

(declare-fun bs!527642 () Bool)

(assert (= bs!527642 (and d!844493 d!844483)))

(assert (=> bs!527642 (= (= (Star!9347 (reg!9676 r!17423)) lt!1040260) (= lambda!111799 lambda!111788))))

(assert (=> d!844493 true))

(assert (=> d!844493 true))

(declare-fun lambda!111800 () Int)

(assert (=> bs!527641 (not (= lambda!111800 lambda!111775))))

(assert (=> bs!527641 (= (= (Star!9347 (reg!9676 r!17423)) lt!1040260) (= lambda!111800 lambda!111776))))

(assert (=> bs!527642 (not (= lambda!111800 lambda!111788))))

(declare-fun bs!527643 () Bool)

(assert (= bs!527643 d!844493))

(assert (=> bs!527643 (not (= lambda!111800 lambda!111799))))

(assert (=> d!844493 true))

(assert (=> d!844493 true))

(assert (=> d!844493 (= (Exists!1620 lambda!111799) (Exists!1620 lambda!111800))))

(declare-fun lt!1040336 () Unit!49097)

(declare-fun choose!17747 (Regex!9347 List!35212) Unit!49097)

(assert (=> d!844493 (= lt!1040336 (choose!17747 (reg!9676 r!17423) s!11993))))

(assert (=> d!844493 (validRegex!4080 (reg!9676 r!17423))))

(assert (=> d!844493 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!296 (reg!9676 r!17423) s!11993) lt!1040336)))

(declare-fun m!3346821 () Bool)

(assert (=> bs!527643 m!3346821))

(declare-fun m!3346823 () Bool)

(assert (=> bs!527643 m!3346823))

(declare-fun m!3346825 () Bool)

(assert (=> bs!527643 m!3346825))

(assert (=> bs!527643 m!3346737))

(assert (=> b!2989869 d!844493))

(declare-fun d!844503 () Bool)

(assert (=> d!844503 (= (Exists!1620 lambda!111776) (choose!17746 lambda!111776))))

(declare-fun bs!527644 () Bool)

(assert (= bs!527644 d!844503))

(declare-fun m!3346827 () Bool)

(assert (=> bs!527644 m!3346827))

(assert (=> b!2989869 d!844503))

(declare-fun b!2990309 () Bool)

(declare-fun e!1879767 () Bool)

(declare-fun derivativeStep!2614 (Regex!9347 C!18880) Regex!9347)

(declare-fun head!6673 (List!35212) C!18880)

(declare-fun tail!4899 (List!35212) List!35212)

(assert (=> b!2990309 (= e!1879767 (matchR!4229 (derivativeStep!2614 (reg!9676 r!17423) (head!6673 (_1!20138 lt!1040257))) (tail!4899 (_1!20138 lt!1040257))))))

(declare-fun b!2990310 () Bool)

(declare-fun e!1879769 () Bool)

(assert (=> b!2990310 (= e!1879769 (not (= (head!6673 (_1!20138 lt!1040257)) (c!491293 (reg!9676 r!17423)))))))

(declare-fun b!2990311 () Bool)

(declare-fun res!1233454 () Bool)

(assert (=> b!2990311 (=> res!1233454 e!1879769)))

(assert (=> b!2990311 (= res!1233454 (not (isEmpty!19356 (tail!4899 (_1!20138 lt!1040257)))))))

(declare-fun b!2990312 () Bool)

(declare-fun res!1233453 () Bool)

(declare-fun e!1879764 () Bool)

(assert (=> b!2990312 (=> (not res!1233453) (not e!1879764))))

(assert (=> b!2990312 (= res!1233453 (isEmpty!19356 (tail!4899 (_1!20138 lt!1040257))))))

(declare-fun bm!200001 () Bool)

(declare-fun call!200006 () Bool)

(assert (=> bm!200001 (= call!200006 (isEmpty!19356 (_1!20138 lt!1040257)))))

(declare-fun b!2990313 () Bool)

(declare-fun e!1879768 () Bool)

(declare-fun lt!1040339 () Bool)

(assert (=> b!2990313 (= e!1879768 (= lt!1040339 call!200006))))

(declare-fun b!2990315 () Bool)

(declare-fun e!1879765 () Bool)

(assert (=> b!2990315 (= e!1879768 e!1879765)))

(declare-fun c!491395 () Bool)

(assert (=> b!2990315 (= c!491395 ((_ is EmptyLang!9347) (reg!9676 r!17423)))))

(declare-fun b!2990316 () Bool)

(declare-fun res!1233452 () Bool)

(assert (=> b!2990316 (=> (not res!1233452) (not e!1879764))))

(assert (=> b!2990316 (= res!1233452 (not call!200006))))

(declare-fun d!844505 () Bool)

(assert (=> d!844505 e!1879768))

(declare-fun c!491396 () Bool)

(assert (=> d!844505 (= c!491396 ((_ is EmptyExpr!9347) (reg!9676 r!17423)))))

(assert (=> d!844505 (= lt!1040339 e!1879767)))

(declare-fun c!491397 () Bool)

(assert (=> d!844505 (= c!491397 (isEmpty!19356 (_1!20138 lt!1040257)))))

(assert (=> d!844505 (validRegex!4080 (reg!9676 r!17423))))

(assert (=> d!844505 (= (matchR!4229 (reg!9676 r!17423) (_1!20138 lt!1040257)) lt!1040339)))

(declare-fun b!2990314 () Bool)

(declare-fun e!1879770 () Bool)

(assert (=> b!2990314 (= e!1879770 e!1879769)))

(declare-fun res!1233451 () Bool)

(assert (=> b!2990314 (=> res!1233451 e!1879769)))

(assert (=> b!2990314 (= res!1233451 call!200006)))

(declare-fun b!2990317 () Bool)

(declare-fun res!1233457 () Bool)

(declare-fun e!1879766 () Bool)

(assert (=> b!2990317 (=> res!1233457 e!1879766)))

(assert (=> b!2990317 (= res!1233457 e!1879764)))

(declare-fun res!1233455 () Bool)

(assert (=> b!2990317 (=> (not res!1233455) (not e!1879764))))

(assert (=> b!2990317 (= res!1233455 lt!1040339)))

(declare-fun b!2990318 () Bool)

(assert (=> b!2990318 (= e!1879767 (nullable!3016 (reg!9676 r!17423)))))

(declare-fun b!2990319 () Bool)

(assert (=> b!2990319 (= e!1879766 e!1879770)))

(declare-fun res!1233456 () Bool)

(assert (=> b!2990319 (=> (not res!1233456) (not e!1879770))))

(assert (=> b!2990319 (= res!1233456 (not lt!1040339))))

(declare-fun b!2990320 () Bool)

(assert (=> b!2990320 (= e!1879764 (= (head!6673 (_1!20138 lt!1040257)) (c!491293 (reg!9676 r!17423))))))

(declare-fun b!2990321 () Bool)

(assert (=> b!2990321 (= e!1879765 (not lt!1040339))))

(declare-fun b!2990322 () Bool)

(declare-fun res!1233458 () Bool)

(assert (=> b!2990322 (=> res!1233458 e!1879766)))

(assert (=> b!2990322 (= res!1233458 (not ((_ is ElementMatch!9347) (reg!9676 r!17423))))))

(assert (=> b!2990322 (= e!1879765 e!1879766)))

(assert (= (and d!844505 c!491397) b!2990318))

(assert (= (and d!844505 (not c!491397)) b!2990309))

(assert (= (and d!844505 c!491396) b!2990313))

(assert (= (and d!844505 (not c!491396)) b!2990315))

(assert (= (and b!2990315 c!491395) b!2990321))

(assert (= (and b!2990315 (not c!491395)) b!2990322))

(assert (= (and b!2990322 (not res!1233458)) b!2990317))

(assert (= (and b!2990317 res!1233455) b!2990316))

(assert (= (and b!2990316 res!1233452) b!2990312))

(assert (= (and b!2990312 res!1233453) b!2990320))

(assert (= (and b!2990317 (not res!1233457)) b!2990319))

(assert (= (and b!2990319 res!1233456) b!2990314))

(assert (= (and b!2990314 (not res!1233451)) b!2990311))

(assert (= (and b!2990311 (not res!1233454)) b!2990310))

(assert (= (or b!2990313 b!2990314 b!2990316) bm!200001))

(assert (=> d!844505 m!3346625))

(assert (=> d!844505 m!3346737))

(declare-fun m!3346829 () Bool)

(assert (=> b!2990311 m!3346829))

(assert (=> b!2990311 m!3346829))

(declare-fun m!3346831 () Bool)

(assert (=> b!2990311 m!3346831))

(declare-fun m!3346833 () Bool)

(assert (=> b!2990320 m!3346833))

(assert (=> b!2990312 m!3346829))

(assert (=> b!2990312 m!3346829))

(assert (=> b!2990312 m!3346831))

(assert (=> bm!200001 m!3346625))

(assert (=> b!2990310 m!3346833))

(assert (=> b!2990309 m!3346833))

(assert (=> b!2990309 m!3346833))

(declare-fun m!3346835 () Bool)

(assert (=> b!2990309 m!3346835))

(assert (=> b!2990309 m!3346829))

(assert (=> b!2990309 m!3346835))

(assert (=> b!2990309 m!3346829))

(declare-fun m!3346837 () Bool)

(assert (=> b!2990309 m!3346837))

(assert (=> b!2990318 m!3346681))

(assert (=> b!2989874 d!844505))

(declare-fun d!844507 () Bool)

(assert (=> d!844507 (= (get!10879 lt!1040262) (v!34871 lt!1040262))))

(assert (=> b!2989874 d!844507))

(declare-fun b!2990333 () Bool)

(declare-fun res!1233463 () Bool)

(declare-fun e!1879775 () Bool)

(assert (=> b!2990333 (=> (not res!1233463) (not e!1879775))))

(declare-fun lt!1040342 () List!35212)

(assert (=> b!2990333 (= res!1233463 (= (size!26497 lt!1040342) (+ (size!26497 (_1!20138 lt!1040257)) (size!26497 (_2!20138 lt!1040257)))))))

(declare-fun b!2990332 () Bool)

(declare-fun e!1879776 () List!35212)

(assert (=> b!2990332 (= e!1879776 (Cons!35088 (h!40508 (_1!20138 lt!1040257)) (++!8391 (t!234277 (_1!20138 lt!1040257)) (_2!20138 lt!1040257))))))

(declare-fun b!2990334 () Bool)

(assert (=> b!2990334 (= e!1879775 (or (not (= (_2!20138 lt!1040257) Nil!35088)) (= lt!1040342 (_1!20138 lt!1040257))))))

(declare-fun d!844509 () Bool)

(assert (=> d!844509 e!1879775))

(declare-fun res!1233464 () Bool)

(assert (=> d!844509 (=> (not res!1233464) (not e!1879775))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4772 (List!35212) (InoxSet C!18880))

(assert (=> d!844509 (= res!1233464 (= (content!4772 lt!1040342) ((_ map or) (content!4772 (_1!20138 lt!1040257)) (content!4772 (_2!20138 lt!1040257)))))))

(assert (=> d!844509 (= lt!1040342 e!1879776)))

(declare-fun c!491400 () Bool)

(assert (=> d!844509 (= c!491400 ((_ is Nil!35088) (_1!20138 lt!1040257)))))

(assert (=> d!844509 (= (++!8391 (_1!20138 lt!1040257) (_2!20138 lt!1040257)) lt!1040342)))

(declare-fun b!2990331 () Bool)

(assert (=> b!2990331 (= e!1879776 (_2!20138 lt!1040257))))

(assert (= (and d!844509 c!491400) b!2990331))

(assert (= (and d!844509 (not c!491400)) b!2990332))

(assert (= (and d!844509 res!1233464) b!2990333))

(assert (= (and b!2990333 res!1233463) b!2990334))

(declare-fun m!3346839 () Bool)

(assert (=> b!2990333 m!3346839))

(assert (=> b!2990333 m!3346601))

(assert (=> b!2990333 m!3346641))

(declare-fun m!3346841 () Bool)

(assert (=> b!2990332 m!3346841))

(declare-fun m!3346843 () Bool)

(assert (=> d!844509 m!3346843))

(declare-fun m!3346845 () Bool)

(assert (=> d!844509 m!3346845))

(declare-fun m!3346847 () Bool)

(assert (=> d!844509 m!3346847))

(assert (=> b!2989868 d!844509))

(declare-fun d!844511 () Bool)

(declare-fun lt!1040345 () Int)

(assert (=> d!844511 (>= lt!1040345 0)))

(declare-fun e!1879779 () Int)

(assert (=> d!844511 (= lt!1040345 e!1879779)))

(declare-fun c!491403 () Bool)

(assert (=> d!844511 (= c!491403 ((_ is Nil!35088) (_1!20138 lt!1040257)))))

(assert (=> d!844511 (= (size!26497 (_1!20138 lt!1040257)) lt!1040345)))

(declare-fun b!2990339 () Bool)

(assert (=> b!2990339 (= e!1879779 0)))

(declare-fun b!2990340 () Bool)

(assert (=> b!2990340 (= e!1879779 (+ 1 (size!26497 (t!234277 (_1!20138 lt!1040257)))))))

(assert (= (and d!844511 c!491403) b!2990339))

(assert (= (and d!844511 (not c!491403)) b!2990340))

(declare-fun m!3346849 () Bool)

(assert (=> b!2990340 m!3346849))

(assert (=> b!2989878 d!844511))

(declare-fun bs!527645 () Bool)

(declare-fun b!2990383 () Bool)

(assert (= bs!527645 (and b!2990383 d!844493)))

(declare-fun lambda!111805 () Int)

(assert (=> bs!527645 (= (= r!17423 (Star!9347 (reg!9676 r!17423))) (= lambda!111805 lambda!111800))))

(declare-fun bs!527646 () Bool)

(assert (= bs!527646 (and b!2990383 b!2989869)))

(assert (=> bs!527646 (not (= lambda!111805 lambda!111775))))

(assert (=> bs!527645 (not (= lambda!111805 lambda!111799))))

(declare-fun bs!527647 () Bool)

(assert (= bs!527647 (and b!2990383 d!844483)))

(assert (=> bs!527647 (not (= lambda!111805 lambda!111788))))

(assert (=> bs!527646 (= (= r!17423 lt!1040260) (= lambda!111805 lambda!111776))))

(assert (=> b!2990383 true))

(assert (=> b!2990383 true))

(declare-fun bs!527648 () Bool)

(declare-fun b!2990380 () Bool)

(assert (= bs!527648 (and b!2990380 d!844493)))

(declare-fun lambda!111806 () Int)

(assert (=> bs!527648 (not (= lambda!111806 lambda!111800))))

(declare-fun bs!527649 () Bool)

(assert (= bs!527649 (and b!2990380 b!2989869)))

(assert (=> bs!527649 (not (= lambda!111806 lambda!111775))))

(assert (=> bs!527648 (not (= lambda!111806 lambda!111799))))

(declare-fun bs!527650 () Bool)

(assert (= bs!527650 (and b!2990380 d!844483)))

(assert (=> bs!527650 (not (= lambda!111806 lambda!111788))))

(declare-fun bs!527651 () Bool)

(assert (= bs!527651 (and b!2990380 b!2990383)))

(assert (=> bs!527651 (not (= lambda!111806 lambda!111805))))

(assert (=> bs!527649 (not (= lambda!111806 lambda!111776))))

(assert (=> b!2990380 true))

(assert (=> b!2990380 true))

(declare-fun b!2990373 () Bool)

(declare-fun e!1879800 () Bool)

(declare-fun e!1879804 () Bool)

(assert (=> b!2990373 (= e!1879800 e!1879804)))

(declare-fun res!1233481 () Bool)

(assert (=> b!2990373 (= res!1233481 (not ((_ is EmptyLang!9347) r!17423)))))

(assert (=> b!2990373 (=> (not res!1233481) (not e!1879804))))

(declare-fun bm!200006 () Bool)

(declare-fun call!200012 () Bool)

(assert (=> bm!200006 (= call!200012 (isEmpty!19356 s!11993))))

(declare-fun b!2990374 () Bool)

(declare-fun res!1233483 () Bool)

(declare-fun e!1879802 () Bool)

(assert (=> b!2990374 (=> res!1233483 e!1879802)))

(assert (=> b!2990374 (= res!1233483 call!200012)))

(declare-fun e!1879798 () Bool)

(assert (=> b!2990374 (= e!1879798 e!1879802)))

(declare-fun b!2990375 () Bool)

(declare-fun e!1879801 () Bool)

(assert (=> b!2990375 (= e!1879801 (matchRSpec!1484 (regTwo!19207 r!17423) s!11993))))

(declare-fun b!2990376 () Bool)

(declare-fun c!491412 () Bool)

(assert (=> b!2990376 (= c!491412 ((_ is Union!9347) r!17423))))

(declare-fun e!1879803 () Bool)

(declare-fun e!1879799 () Bool)

(assert (=> b!2990376 (= e!1879803 e!1879799)))

(declare-fun d!844513 () Bool)

(declare-fun c!491413 () Bool)

(assert (=> d!844513 (= c!491413 ((_ is EmptyExpr!9347) r!17423))))

(assert (=> d!844513 (= (matchRSpec!1484 r!17423 s!11993) e!1879800)))

(declare-fun b!2990377 () Bool)

(assert (=> b!2990377 (= e!1879799 e!1879798)))

(declare-fun c!491414 () Bool)

(assert (=> b!2990377 (= c!491414 ((_ is Star!9347) r!17423))))

(declare-fun b!2990378 () Bool)

(assert (=> b!2990378 (= e!1879803 (= s!11993 (Cons!35088 (c!491293 r!17423) Nil!35088)))))

(declare-fun b!2990379 () Bool)

(assert (=> b!2990379 (= e!1879800 call!200012)))

(declare-fun call!200011 () Bool)

(assert (=> b!2990380 (= e!1879798 call!200011)))

(declare-fun bm!200007 () Bool)

(assert (=> bm!200007 (= call!200011 (Exists!1620 (ite c!491414 lambda!111805 lambda!111806)))))

(declare-fun b!2990381 () Bool)

(assert (=> b!2990381 (= e!1879799 e!1879801)))

(declare-fun res!1233482 () Bool)

(assert (=> b!2990381 (= res!1233482 (matchRSpec!1484 (regOne!19207 r!17423) s!11993))))

(assert (=> b!2990381 (=> res!1233482 e!1879801)))

(declare-fun b!2990382 () Bool)

(declare-fun c!491415 () Bool)

(assert (=> b!2990382 (= c!491415 ((_ is ElementMatch!9347) r!17423))))

(assert (=> b!2990382 (= e!1879804 e!1879803)))

(assert (=> b!2990383 (= e!1879802 call!200011)))

(assert (= (and d!844513 c!491413) b!2990379))

(assert (= (and d!844513 (not c!491413)) b!2990373))

(assert (= (and b!2990373 res!1233481) b!2990382))

(assert (= (and b!2990382 c!491415) b!2990378))

(assert (= (and b!2990382 (not c!491415)) b!2990376))

(assert (= (and b!2990376 c!491412) b!2990381))

(assert (= (and b!2990376 (not c!491412)) b!2990377))

(assert (= (and b!2990381 (not res!1233482)) b!2990375))

(assert (= (and b!2990377 c!491414) b!2990374))

(assert (= (and b!2990377 (not c!491414)) b!2990380))

(assert (= (and b!2990374 (not res!1233483)) b!2990383))

(assert (= (or b!2990383 b!2990380) bm!200007))

(assert (= (or b!2990379 b!2990374) bm!200006))

(assert (=> bm!200006 m!3346633))

(declare-fun m!3346851 () Bool)

(assert (=> b!2990375 m!3346851))

(declare-fun m!3346853 () Bool)

(assert (=> bm!200007 m!3346853))

(declare-fun m!3346855 () Bool)

(assert (=> b!2990381 m!3346855))

(assert (=> b!2989871 d!844513))

(declare-fun b!2990384 () Bool)

(declare-fun e!1879808 () Bool)

(assert (=> b!2990384 (= e!1879808 (matchR!4229 (derivativeStep!2614 r!17423 (head!6673 s!11993)) (tail!4899 s!11993)))))

(declare-fun b!2990385 () Bool)

(declare-fun e!1879810 () Bool)

(assert (=> b!2990385 (= e!1879810 (not (= (head!6673 s!11993) (c!491293 r!17423))))))

(declare-fun b!2990386 () Bool)

(declare-fun res!1233487 () Bool)

(assert (=> b!2990386 (=> res!1233487 e!1879810)))

(assert (=> b!2990386 (= res!1233487 (not (isEmpty!19356 (tail!4899 s!11993))))))

(declare-fun b!2990387 () Bool)

(declare-fun res!1233486 () Bool)

(declare-fun e!1879805 () Bool)

(assert (=> b!2990387 (=> (not res!1233486) (not e!1879805))))

(assert (=> b!2990387 (= res!1233486 (isEmpty!19356 (tail!4899 s!11993)))))

(declare-fun bm!200008 () Bool)

(declare-fun call!200013 () Bool)

(assert (=> bm!200008 (= call!200013 (isEmpty!19356 s!11993))))

(declare-fun b!2990388 () Bool)

(declare-fun e!1879809 () Bool)

(declare-fun lt!1040346 () Bool)

(assert (=> b!2990388 (= e!1879809 (= lt!1040346 call!200013))))

(declare-fun b!2990390 () Bool)

(declare-fun e!1879806 () Bool)

(assert (=> b!2990390 (= e!1879809 e!1879806)))

(declare-fun c!491416 () Bool)

(assert (=> b!2990390 (= c!491416 ((_ is EmptyLang!9347) r!17423))))

(declare-fun b!2990391 () Bool)

(declare-fun res!1233485 () Bool)

(assert (=> b!2990391 (=> (not res!1233485) (not e!1879805))))

(assert (=> b!2990391 (= res!1233485 (not call!200013))))

(declare-fun d!844515 () Bool)

(assert (=> d!844515 e!1879809))

(declare-fun c!491417 () Bool)

(assert (=> d!844515 (= c!491417 ((_ is EmptyExpr!9347) r!17423))))

(assert (=> d!844515 (= lt!1040346 e!1879808)))

(declare-fun c!491418 () Bool)

(assert (=> d!844515 (= c!491418 (isEmpty!19356 s!11993))))

(assert (=> d!844515 (validRegex!4080 r!17423)))

(assert (=> d!844515 (= (matchR!4229 r!17423 s!11993) lt!1040346)))

(declare-fun b!2990389 () Bool)

(declare-fun e!1879811 () Bool)

(assert (=> b!2990389 (= e!1879811 e!1879810)))

(declare-fun res!1233484 () Bool)

(assert (=> b!2990389 (=> res!1233484 e!1879810)))

(assert (=> b!2990389 (= res!1233484 call!200013)))

(declare-fun b!2990392 () Bool)

(declare-fun res!1233490 () Bool)

(declare-fun e!1879807 () Bool)

(assert (=> b!2990392 (=> res!1233490 e!1879807)))

(assert (=> b!2990392 (= res!1233490 e!1879805)))

(declare-fun res!1233488 () Bool)

(assert (=> b!2990392 (=> (not res!1233488) (not e!1879805))))

(assert (=> b!2990392 (= res!1233488 lt!1040346)))

(declare-fun b!2990393 () Bool)

(assert (=> b!2990393 (= e!1879808 (nullable!3016 r!17423))))

(declare-fun b!2990394 () Bool)

(assert (=> b!2990394 (= e!1879807 e!1879811)))

(declare-fun res!1233489 () Bool)

(assert (=> b!2990394 (=> (not res!1233489) (not e!1879811))))

(assert (=> b!2990394 (= res!1233489 (not lt!1040346))))

(declare-fun b!2990395 () Bool)

(assert (=> b!2990395 (= e!1879805 (= (head!6673 s!11993) (c!491293 r!17423)))))

(declare-fun b!2990396 () Bool)

(assert (=> b!2990396 (= e!1879806 (not lt!1040346))))

(declare-fun b!2990397 () Bool)

(declare-fun res!1233491 () Bool)

(assert (=> b!2990397 (=> res!1233491 e!1879807)))

(assert (=> b!2990397 (= res!1233491 (not ((_ is ElementMatch!9347) r!17423)))))

(assert (=> b!2990397 (= e!1879806 e!1879807)))

(assert (= (and d!844515 c!491418) b!2990393))

(assert (= (and d!844515 (not c!491418)) b!2990384))

(assert (= (and d!844515 c!491417) b!2990388))

(assert (= (and d!844515 (not c!491417)) b!2990390))

(assert (= (and b!2990390 c!491416) b!2990396))

(assert (= (and b!2990390 (not c!491416)) b!2990397))

(assert (= (and b!2990397 (not res!1233491)) b!2990392))

(assert (= (and b!2990392 res!1233488) b!2990391))

(assert (= (and b!2990391 res!1233485) b!2990387))

(assert (= (and b!2990387 res!1233486) b!2990395))

(assert (= (and b!2990392 (not res!1233490)) b!2990394))

(assert (= (and b!2990394 res!1233489) b!2990389))

(assert (= (and b!2990389 (not res!1233484)) b!2990386))

(assert (= (and b!2990386 (not res!1233487)) b!2990385))

(assert (= (or b!2990388 b!2990389 b!2990391) bm!200008))

(assert (=> d!844515 m!3346633))

(assert (=> d!844515 m!3346623))

(declare-fun m!3346857 () Bool)

(assert (=> b!2990386 m!3346857))

(assert (=> b!2990386 m!3346857))

(declare-fun m!3346859 () Bool)

(assert (=> b!2990386 m!3346859))

(declare-fun m!3346861 () Bool)

(assert (=> b!2990395 m!3346861))

(assert (=> b!2990387 m!3346857))

(assert (=> b!2990387 m!3346857))

(assert (=> b!2990387 m!3346859))

(assert (=> bm!200008 m!3346633))

(assert (=> b!2990385 m!3346861))

(assert (=> b!2990384 m!3346861))

(assert (=> b!2990384 m!3346861))

(declare-fun m!3346863 () Bool)

(assert (=> b!2990384 m!3346863))

(assert (=> b!2990384 m!3346857))

(assert (=> b!2990384 m!3346863))

(assert (=> b!2990384 m!3346857))

(declare-fun m!3346865 () Bool)

(assert (=> b!2990384 m!3346865))

(declare-fun m!3346867 () Bool)

(assert (=> b!2990393 m!3346867))

(assert (=> b!2989871 d!844515))

(declare-fun d!844517 () Bool)

(assert (=> d!844517 (= (matchR!4229 r!17423 s!11993) (matchRSpec!1484 r!17423 s!11993))))

(declare-fun lt!1040349 () Unit!49097)

(declare-fun choose!17749 (Regex!9347 List!35212) Unit!49097)

(assert (=> d!844517 (= lt!1040349 (choose!17749 r!17423 s!11993))))

(assert (=> d!844517 (validRegex!4080 r!17423)))

(assert (=> d!844517 (= (mainMatchTheorem!1484 r!17423 s!11993) lt!1040349)))

(declare-fun bs!527652 () Bool)

(assert (= bs!527652 d!844517))

(assert (=> bs!527652 m!3346619))

(assert (=> bs!527652 m!3346617))

(declare-fun m!3346869 () Bool)

(assert (=> bs!527652 m!3346869))

(assert (=> bs!527652 m!3346623))

(assert (=> b!2989871 d!844517))

(declare-fun b!2990448 () Bool)

(declare-fun e!1879853 () Bool)

(declare-fun call!200033 () Bool)

(assert (=> b!2990448 (= e!1879853 call!200033)))

(declare-fun b!2990449 () Bool)

(declare-fun c!491443 () Bool)

(declare-fun call!200028 () Bool)

(assert (=> b!2990449 (= c!491443 call!200028)))

(declare-fun e!1879843 () Regex!9347)

(declare-fun e!1879847 () Regex!9347)

(assert (=> b!2990449 (= e!1879843 e!1879847)))

(declare-fun b!2990450 () Bool)

(declare-fun e!1879848 () Regex!9347)

(assert (=> b!2990450 (= e!1879848 EmptyExpr!9347)))

(declare-fun b!2990451 () Bool)

(declare-fun e!1879845 () Regex!9347)

(declare-fun lt!1040365 () Regex!9347)

(assert (=> b!2990451 (= e!1879845 lt!1040365)))

(declare-fun b!2990452 () Bool)

(declare-fun e!1879844 () Regex!9347)

(declare-fun e!1879842 () Regex!9347)

(assert (=> b!2990452 (= e!1879844 e!1879842)))

(declare-fun c!491447 () Bool)

(assert (=> b!2990452 (= c!491447 ((_ is ElementMatch!9347) (reg!9676 r!17423)))))

(declare-fun b!2990454 () Bool)

(declare-fun e!1879849 () Regex!9347)

(assert (=> b!2990454 (= e!1879849 EmptyLang!9347)))

(declare-fun b!2990455 () Bool)

(declare-fun e!1879841 () Regex!9347)

(assert (=> b!2990455 (= e!1879845 e!1879841)))

(declare-fun c!491442 () Bool)

(declare-fun isEmptyExpr!460 (Regex!9347) Bool)

(assert (=> b!2990455 (= c!491442 (isEmptyExpr!460 lt!1040365))))

(declare-fun c!491446 () Bool)

(declare-fun call!200029 () Regex!9347)

(declare-fun c!491441 () Bool)

(declare-fun bm!200023 () Bool)

(assert (=> bm!200023 (= call!200029 (simplify!338 (ite c!491446 (reg!9676 (reg!9676 r!17423)) (ite c!491441 (regOne!19207 (reg!9676 r!17423)) (regTwo!19206 (reg!9676 r!17423))))))))

(declare-fun bm!200024 () Bool)

(declare-fun call!200032 () Bool)

(declare-fun lt!1040362 () Regex!9347)

(declare-fun lt!1040363 () Regex!9347)

(declare-fun isEmptyLang!443 (Regex!9347) Bool)

(assert (=> bm!200024 (= call!200032 (isEmptyLang!443 (ite c!491446 lt!1040363 (ite c!491441 lt!1040362 lt!1040365))))))

(declare-fun b!2990456 () Bool)

(declare-fun e!1879846 () Regex!9347)

(assert (=> b!2990456 (= e!1879846 e!1879843)))

(declare-fun call!200031 () Regex!9347)

(assert (=> b!2990456 (= lt!1040362 call!200031)))

(declare-fun lt!1040364 () Regex!9347)

(declare-fun call!200030 () Regex!9347)

(assert (=> b!2990456 (= lt!1040364 call!200030)))

(declare-fun c!491451 () Bool)

(declare-fun call!200034 () Bool)

(assert (=> b!2990456 (= c!491451 call!200034)))

(declare-fun b!2990457 () Bool)

(assert (=> b!2990457 (= e!1879842 (reg!9676 r!17423))))

(declare-fun b!2990458 () Bool)

(assert (=> b!2990458 (= c!491441 ((_ is Union!9347) (reg!9676 r!17423)))))

(declare-fun e!1879852 () Regex!9347)

(assert (=> b!2990458 (= e!1879852 e!1879846)))

(declare-fun b!2990459 () Bool)

(assert (=> b!2990459 (= e!1879847 lt!1040362)))

(declare-fun bm!200025 () Bool)

(assert (=> bm!200025 (= call!200034 call!200032)))

(declare-fun b!2990460 () Bool)

(assert (=> b!2990460 (= e!1879846 e!1879849)))

(declare-fun lt!1040367 () Regex!9347)

(assert (=> b!2990460 (= lt!1040367 call!200030)))

(assert (=> b!2990460 (= lt!1040365 call!200031)))

(declare-fun res!1233500 () Bool)

(assert (=> b!2990460 (= res!1233500 call!200028)))

(declare-fun e!1879851 () Bool)

(assert (=> b!2990460 (=> res!1233500 e!1879851)))

(declare-fun c!491449 () Bool)

(assert (=> b!2990460 (= c!491449 e!1879851)))

(declare-fun b!2990461 () Bool)

(assert (=> b!2990461 (= e!1879847 (Union!9347 lt!1040362 lt!1040364))))

(declare-fun b!2990462 () Bool)

(assert (=> b!2990462 (= e!1879848 e!1879852)))

(assert (=> b!2990462 (= c!491446 ((_ is Star!9347) (reg!9676 r!17423)))))

(declare-fun b!2990463 () Bool)

(assert (=> b!2990463 (= e!1879844 EmptyLang!9347)))

(declare-fun bm!200026 () Bool)

(assert (=> bm!200026 (= call!200031 call!200029)))

(declare-fun b!2990464 () Bool)

(assert (=> b!2990464 (= e!1879841 (Concat!14668 lt!1040367 lt!1040365))))

(declare-fun b!2990465 () Bool)

(declare-fun c!491448 () Bool)

(assert (=> b!2990465 (= c!491448 call!200033)))

(assert (=> b!2990465 (= e!1879849 e!1879845)))

(declare-fun b!2990466 () Bool)

(assert (=> b!2990466 (= e!1879843 lt!1040364)))

(declare-fun b!2990467 () Bool)

(assert (=> b!2990467 (= e!1879851 call!200034)))

(declare-fun b!2990468 () Bool)

(declare-fun c!491445 () Bool)

(assert (=> b!2990468 (= c!491445 e!1879853)))

(declare-fun res!1233499 () Bool)

(assert (=> b!2990468 (=> res!1233499 e!1879853)))

(assert (=> b!2990468 (= res!1233499 call!200032)))

(assert (=> b!2990468 (= lt!1040363 call!200029)))

(declare-fun e!1879850 () Regex!9347)

(assert (=> b!2990468 (= e!1879852 e!1879850)))

(declare-fun b!2990469 () Bool)

(assert (=> b!2990469 (= e!1879850 EmptyExpr!9347)))

(declare-fun b!2990470 () Bool)

(declare-fun e!1879840 () Bool)

(declare-fun lt!1040366 () Regex!9347)

(assert (=> b!2990470 (= e!1879840 (= (nullable!3016 lt!1040366) (nullable!3016 (reg!9676 r!17423))))))

(declare-fun b!2990471 () Bool)

(assert (=> b!2990471 (= e!1879841 lt!1040367)))

(declare-fun bm!200027 () Bool)

(assert (=> bm!200027 (= call!200030 (simplify!338 (ite c!491441 (regTwo!19207 (reg!9676 r!17423)) (regOne!19206 (reg!9676 r!17423)))))))

(declare-fun b!2990472 () Bool)

(assert (=> b!2990472 (= e!1879850 (Star!9347 lt!1040363))))

(declare-fun d!844519 () Bool)

(assert (=> d!844519 e!1879840))

(declare-fun res!1233498 () Bool)

(assert (=> d!844519 (=> (not res!1233498) (not e!1879840))))

(assert (=> d!844519 (= res!1233498 (validRegex!4080 lt!1040366))))

(assert (=> d!844519 (= lt!1040366 e!1879844)))

(declare-fun c!491450 () Bool)

(assert (=> d!844519 (= c!491450 ((_ is EmptyLang!9347) (reg!9676 r!17423)))))

(assert (=> d!844519 (validRegex!4080 (reg!9676 r!17423))))

(assert (=> d!844519 (= (simplify!338 (reg!9676 r!17423)) lt!1040366)))

(declare-fun b!2990453 () Bool)

(declare-fun c!491444 () Bool)

(assert (=> b!2990453 (= c!491444 ((_ is EmptyExpr!9347) (reg!9676 r!17423)))))

(assert (=> b!2990453 (= e!1879842 e!1879848)))

(declare-fun bm!200028 () Bool)

(assert (=> bm!200028 (= call!200033 (isEmptyExpr!460 (ite c!491446 lt!1040363 lt!1040367)))))

(declare-fun bm!200029 () Bool)

(assert (=> bm!200029 (= call!200028 (isEmptyLang!443 (ite c!491441 lt!1040364 lt!1040367)))))

(assert (= (and d!844519 c!491450) b!2990463))

(assert (= (and d!844519 (not c!491450)) b!2990452))

(assert (= (and b!2990452 c!491447) b!2990457))

(assert (= (and b!2990452 (not c!491447)) b!2990453))

(assert (= (and b!2990453 c!491444) b!2990450))

(assert (= (and b!2990453 (not c!491444)) b!2990462))

(assert (= (and b!2990462 c!491446) b!2990468))

(assert (= (and b!2990462 (not c!491446)) b!2990458))

(assert (= (and b!2990468 (not res!1233499)) b!2990448))

(assert (= (and b!2990468 c!491445) b!2990469))

(assert (= (and b!2990468 (not c!491445)) b!2990472))

(assert (= (and b!2990458 c!491441) b!2990456))

(assert (= (and b!2990458 (not c!491441)) b!2990460))

(assert (= (and b!2990456 c!491451) b!2990466))

(assert (= (and b!2990456 (not c!491451)) b!2990449))

(assert (= (and b!2990449 c!491443) b!2990459))

(assert (= (and b!2990449 (not c!491443)) b!2990461))

(assert (= (and b!2990460 (not res!1233500)) b!2990467))

(assert (= (and b!2990460 c!491449) b!2990454))

(assert (= (and b!2990460 (not c!491449)) b!2990465))

(assert (= (and b!2990465 c!491448) b!2990451))

(assert (= (and b!2990465 (not c!491448)) b!2990455))

(assert (= (and b!2990455 c!491442) b!2990471))

(assert (= (and b!2990455 (not c!491442)) b!2990464))

(assert (= (or b!2990456 b!2990460) bm!200026))

(assert (= (or b!2990456 b!2990460) bm!200027))

(assert (= (or b!2990449 b!2990460) bm!200029))

(assert (= (or b!2990456 b!2990467) bm!200025))

(assert (= (or b!2990448 b!2990465) bm!200028))

(assert (= (or b!2990468 bm!200026) bm!200023))

(assert (= (or b!2990468 bm!200025) bm!200024))

(assert (= (and d!844519 res!1233498) b!2990470))

(declare-fun m!3346871 () Bool)

(assert (=> d!844519 m!3346871))

(assert (=> d!844519 m!3346737))

(declare-fun m!3346873 () Bool)

(assert (=> bm!200024 m!3346873))

(declare-fun m!3346875 () Bool)

(assert (=> b!2990470 m!3346875))

(assert (=> b!2990470 m!3346681))

(declare-fun m!3346877 () Bool)

(assert (=> b!2990455 m!3346877))

(declare-fun m!3346879 () Bool)

(assert (=> bm!200029 m!3346879))

(declare-fun m!3346881 () Bool)

(assert (=> bm!200028 m!3346881))

(declare-fun m!3346883 () Bool)

(assert (=> bm!200027 m!3346883))

(declare-fun m!3346885 () Bool)

(assert (=> bm!200023 m!3346885))

(assert (=> b!2989876 d!844519))

(declare-fun d!844521 () Bool)

(assert (=> d!844521 (= (matchR!4229 (reg!9676 r!17423) (_1!20138 lt!1040257)) (matchR!4229 (simplify!338 (reg!9676 r!17423)) (_1!20138 lt!1040257)))))

(declare-fun lt!1040370 () Unit!49097)

(declare-fun choose!17750 (Regex!9347 List!35212) Unit!49097)

(assert (=> d!844521 (= lt!1040370 (choose!17750 (reg!9676 r!17423) (_1!20138 lt!1040257)))))

(assert (=> d!844521 (validRegex!4080 (reg!9676 r!17423))))

(assert (=> d!844521 (= (lemmaSimplifySound!196 (reg!9676 r!17423) (_1!20138 lt!1040257)) lt!1040370)))

(declare-fun bs!527653 () Bool)

(assert (= bs!527653 d!844521))

(assert (=> bs!527653 m!3346635))

(assert (=> bs!527653 m!3346629))

(assert (=> bs!527653 m!3346635))

(assert (=> bs!527653 m!3346637))

(assert (=> bs!527653 m!3346737))

(declare-fun m!3346887 () Bool)

(assert (=> bs!527653 m!3346887))

(assert (=> b!2989876 d!844521))

(declare-fun d!844523 () Bool)

(declare-fun lt!1040371 () Int)

(assert (=> d!844523 (>= lt!1040371 0)))

(declare-fun e!1879854 () Int)

(assert (=> d!844523 (= lt!1040371 e!1879854)))

(declare-fun c!491452 () Bool)

(assert (=> d!844523 (= c!491452 ((_ is Nil!35088) s!11993))))

(assert (=> d!844523 (= (size!26497 s!11993) lt!1040371)))

(declare-fun b!2990473 () Bool)

(assert (=> b!2990473 (= e!1879854 0)))

(declare-fun b!2990474 () Bool)

(assert (=> b!2990474 (= e!1879854 (+ 1 (size!26497 (t!234277 s!11993))))))

(assert (= (and d!844523 c!491452) b!2990473))

(assert (= (and d!844523 (not c!491452)) b!2990474))

(declare-fun m!3346889 () Bool)

(assert (=> b!2990474 m!3346889))

(assert (=> b!2989876 d!844523))

(declare-fun b!2990475 () Bool)

(declare-fun e!1879858 () Bool)

(assert (=> b!2990475 (= e!1879858 (matchR!4229 (derivativeStep!2614 (simplify!338 (reg!9676 r!17423)) (head!6673 (_1!20138 lt!1040257))) (tail!4899 (_1!20138 lt!1040257))))))

(declare-fun b!2990476 () Bool)

(declare-fun e!1879860 () Bool)

(assert (=> b!2990476 (= e!1879860 (not (= (head!6673 (_1!20138 lt!1040257)) (c!491293 (simplify!338 (reg!9676 r!17423))))))))

(declare-fun b!2990477 () Bool)

(declare-fun res!1233504 () Bool)

(assert (=> b!2990477 (=> res!1233504 e!1879860)))

(assert (=> b!2990477 (= res!1233504 (not (isEmpty!19356 (tail!4899 (_1!20138 lt!1040257)))))))

(declare-fun b!2990478 () Bool)

(declare-fun res!1233503 () Bool)

(declare-fun e!1879855 () Bool)

(assert (=> b!2990478 (=> (not res!1233503) (not e!1879855))))

(assert (=> b!2990478 (= res!1233503 (isEmpty!19356 (tail!4899 (_1!20138 lt!1040257))))))

(declare-fun bm!200030 () Bool)

(declare-fun call!200035 () Bool)

(assert (=> bm!200030 (= call!200035 (isEmpty!19356 (_1!20138 lt!1040257)))))

(declare-fun b!2990479 () Bool)

(declare-fun e!1879859 () Bool)

(declare-fun lt!1040372 () Bool)

(assert (=> b!2990479 (= e!1879859 (= lt!1040372 call!200035))))

(declare-fun b!2990481 () Bool)

(declare-fun e!1879856 () Bool)

(assert (=> b!2990481 (= e!1879859 e!1879856)))

(declare-fun c!491453 () Bool)

(assert (=> b!2990481 (= c!491453 ((_ is EmptyLang!9347) (simplify!338 (reg!9676 r!17423))))))

(declare-fun b!2990482 () Bool)

(declare-fun res!1233502 () Bool)

(assert (=> b!2990482 (=> (not res!1233502) (not e!1879855))))

(assert (=> b!2990482 (= res!1233502 (not call!200035))))

(declare-fun d!844525 () Bool)

(assert (=> d!844525 e!1879859))

(declare-fun c!491454 () Bool)

(assert (=> d!844525 (= c!491454 ((_ is EmptyExpr!9347) (simplify!338 (reg!9676 r!17423))))))

(assert (=> d!844525 (= lt!1040372 e!1879858)))

(declare-fun c!491455 () Bool)

(assert (=> d!844525 (= c!491455 (isEmpty!19356 (_1!20138 lt!1040257)))))

(assert (=> d!844525 (validRegex!4080 (simplify!338 (reg!9676 r!17423)))))

(assert (=> d!844525 (= (matchR!4229 (simplify!338 (reg!9676 r!17423)) (_1!20138 lt!1040257)) lt!1040372)))

(declare-fun b!2990480 () Bool)

(declare-fun e!1879861 () Bool)

(assert (=> b!2990480 (= e!1879861 e!1879860)))

(declare-fun res!1233501 () Bool)

(assert (=> b!2990480 (=> res!1233501 e!1879860)))

(assert (=> b!2990480 (= res!1233501 call!200035)))

(declare-fun b!2990483 () Bool)

(declare-fun res!1233507 () Bool)

(declare-fun e!1879857 () Bool)

(assert (=> b!2990483 (=> res!1233507 e!1879857)))

(assert (=> b!2990483 (= res!1233507 e!1879855)))

(declare-fun res!1233505 () Bool)

(assert (=> b!2990483 (=> (not res!1233505) (not e!1879855))))

(assert (=> b!2990483 (= res!1233505 lt!1040372)))

(declare-fun b!2990484 () Bool)

(assert (=> b!2990484 (= e!1879858 (nullable!3016 (simplify!338 (reg!9676 r!17423))))))

(declare-fun b!2990485 () Bool)

(assert (=> b!2990485 (= e!1879857 e!1879861)))

(declare-fun res!1233506 () Bool)

(assert (=> b!2990485 (=> (not res!1233506) (not e!1879861))))

(assert (=> b!2990485 (= res!1233506 (not lt!1040372))))

(declare-fun b!2990486 () Bool)

(assert (=> b!2990486 (= e!1879855 (= (head!6673 (_1!20138 lt!1040257)) (c!491293 (simplify!338 (reg!9676 r!17423)))))))

(declare-fun b!2990487 () Bool)

(assert (=> b!2990487 (= e!1879856 (not lt!1040372))))

(declare-fun b!2990488 () Bool)

(declare-fun res!1233508 () Bool)

(assert (=> b!2990488 (=> res!1233508 e!1879857)))

(assert (=> b!2990488 (= res!1233508 (not ((_ is ElementMatch!9347) (simplify!338 (reg!9676 r!17423)))))))

(assert (=> b!2990488 (= e!1879856 e!1879857)))

(assert (= (and d!844525 c!491455) b!2990484))

(assert (= (and d!844525 (not c!491455)) b!2990475))

(assert (= (and d!844525 c!491454) b!2990479))

(assert (= (and d!844525 (not c!491454)) b!2990481))

(assert (= (and b!2990481 c!491453) b!2990487))

(assert (= (and b!2990481 (not c!491453)) b!2990488))

(assert (= (and b!2990488 (not res!1233508)) b!2990483))

(assert (= (and b!2990483 res!1233505) b!2990482))

(assert (= (and b!2990482 res!1233502) b!2990478))

(assert (= (and b!2990478 res!1233503) b!2990486))

(assert (= (and b!2990483 (not res!1233507)) b!2990485))

(assert (= (and b!2990485 res!1233506) b!2990480))

(assert (= (and b!2990480 (not res!1233501)) b!2990477))

(assert (= (and b!2990477 (not res!1233504)) b!2990476))

(assert (= (or b!2990479 b!2990480 b!2990482) bm!200030))

(assert (=> d!844525 m!3346625))

(assert (=> d!844525 m!3346635))

(declare-fun m!3346891 () Bool)

(assert (=> d!844525 m!3346891))

(assert (=> b!2990477 m!3346829))

(assert (=> b!2990477 m!3346829))

(assert (=> b!2990477 m!3346831))

(assert (=> b!2990486 m!3346833))

(assert (=> b!2990478 m!3346829))

(assert (=> b!2990478 m!3346829))

(assert (=> b!2990478 m!3346831))

(assert (=> bm!200030 m!3346625))

(assert (=> b!2990476 m!3346833))

(assert (=> b!2990475 m!3346833))

(assert (=> b!2990475 m!3346635))

(assert (=> b!2990475 m!3346833))

(declare-fun m!3346893 () Bool)

(assert (=> b!2990475 m!3346893))

(assert (=> b!2990475 m!3346829))

(assert (=> b!2990475 m!3346893))

(assert (=> b!2990475 m!3346829))

(declare-fun m!3346895 () Bool)

(assert (=> b!2990475 m!3346895))

(assert (=> b!2990484 m!3346635))

(declare-fun m!3346897 () Bool)

(assert (=> b!2990484 m!3346897))

(assert (=> b!2989876 d!844525))

(declare-fun d!844527 () Bool)

(declare-fun lt!1040373 () Int)

(assert (=> d!844527 (>= lt!1040373 0)))

(declare-fun e!1879862 () Int)

(assert (=> d!844527 (= lt!1040373 e!1879862)))

(declare-fun c!491456 () Bool)

(assert (=> d!844527 (= c!491456 ((_ is Nil!35088) (_2!20138 lt!1040257)))))

(assert (=> d!844527 (= (size!26497 (_2!20138 lt!1040257)) lt!1040373)))

(declare-fun b!2990489 () Bool)

(assert (=> b!2990489 (= e!1879862 0)))

(declare-fun b!2990490 () Bool)

(assert (=> b!2990490 (= e!1879862 (+ 1 (size!26497 (t!234277 (_2!20138 lt!1040257)))))))

(assert (= (and d!844527 c!491456) b!2990489))

(assert (= (and d!844527 (not c!491456)) b!2990490))

(declare-fun m!3346899 () Bool)

(assert (=> b!2990490 m!3346899))

(assert (=> b!2989876 d!844527))

(declare-fun b!2990491 () Bool)

(declare-fun e!1879866 () Bool)

(assert (=> b!2990491 (= e!1879866 (matchR!4229 (derivativeStep!2614 lt!1040260 (head!6673 (_2!20138 lt!1040257))) (tail!4899 (_2!20138 lt!1040257))))))

(declare-fun b!2990492 () Bool)

(declare-fun e!1879868 () Bool)

(assert (=> b!2990492 (= e!1879868 (not (= (head!6673 (_2!20138 lt!1040257)) (c!491293 lt!1040260))))))

(declare-fun b!2990493 () Bool)

(declare-fun res!1233512 () Bool)

(assert (=> b!2990493 (=> res!1233512 e!1879868)))

(assert (=> b!2990493 (= res!1233512 (not (isEmpty!19356 (tail!4899 (_2!20138 lt!1040257)))))))

(declare-fun b!2990494 () Bool)

(declare-fun res!1233511 () Bool)

(declare-fun e!1879863 () Bool)

(assert (=> b!2990494 (=> (not res!1233511) (not e!1879863))))

(assert (=> b!2990494 (= res!1233511 (isEmpty!19356 (tail!4899 (_2!20138 lt!1040257))))))

(declare-fun bm!200031 () Bool)

(declare-fun call!200036 () Bool)

(assert (=> bm!200031 (= call!200036 (isEmpty!19356 (_2!20138 lt!1040257)))))

(declare-fun b!2990495 () Bool)

(declare-fun e!1879867 () Bool)

(declare-fun lt!1040374 () Bool)

(assert (=> b!2990495 (= e!1879867 (= lt!1040374 call!200036))))

(declare-fun b!2990497 () Bool)

(declare-fun e!1879864 () Bool)

(assert (=> b!2990497 (= e!1879867 e!1879864)))

(declare-fun c!491457 () Bool)

(assert (=> b!2990497 (= c!491457 ((_ is EmptyLang!9347) lt!1040260))))

(declare-fun b!2990498 () Bool)

(declare-fun res!1233510 () Bool)

(assert (=> b!2990498 (=> (not res!1233510) (not e!1879863))))

(assert (=> b!2990498 (= res!1233510 (not call!200036))))

(declare-fun d!844529 () Bool)

(assert (=> d!844529 e!1879867))

(declare-fun c!491458 () Bool)

(assert (=> d!844529 (= c!491458 ((_ is EmptyExpr!9347) lt!1040260))))

(assert (=> d!844529 (= lt!1040374 e!1879866)))

(declare-fun c!491459 () Bool)

(assert (=> d!844529 (= c!491459 (isEmpty!19356 (_2!20138 lt!1040257)))))

(assert (=> d!844529 (validRegex!4080 lt!1040260)))

(assert (=> d!844529 (= (matchR!4229 lt!1040260 (_2!20138 lt!1040257)) lt!1040374)))

(declare-fun b!2990496 () Bool)

(declare-fun e!1879869 () Bool)

(assert (=> b!2990496 (= e!1879869 e!1879868)))

(declare-fun res!1233509 () Bool)

(assert (=> b!2990496 (=> res!1233509 e!1879868)))

(assert (=> b!2990496 (= res!1233509 call!200036)))

(declare-fun b!2990499 () Bool)

(declare-fun res!1233515 () Bool)

(declare-fun e!1879865 () Bool)

(assert (=> b!2990499 (=> res!1233515 e!1879865)))

(assert (=> b!2990499 (= res!1233515 e!1879863)))

(declare-fun res!1233513 () Bool)

(assert (=> b!2990499 (=> (not res!1233513) (not e!1879863))))

(assert (=> b!2990499 (= res!1233513 lt!1040374)))

(declare-fun b!2990500 () Bool)

(assert (=> b!2990500 (= e!1879866 (nullable!3016 lt!1040260))))

(declare-fun b!2990501 () Bool)

(assert (=> b!2990501 (= e!1879865 e!1879869)))

(declare-fun res!1233514 () Bool)

(assert (=> b!2990501 (=> (not res!1233514) (not e!1879869))))

(assert (=> b!2990501 (= res!1233514 (not lt!1040374))))

(declare-fun b!2990502 () Bool)

(assert (=> b!2990502 (= e!1879863 (= (head!6673 (_2!20138 lt!1040257)) (c!491293 lt!1040260)))))

(declare-fun b!2990503 () Bool)

(assert (=> b!2990503 (= e!1879864 (not lt!1040374))))

(declare-fun b!2990504 () Bool)

(declare-fun res!1233516 () Bool)

(assert (=> b!2990504 (=> res!1233516 e!1879865)))

(assert (=> b!2990504 (= res!1233516 (not ((_ is ElementMatch!9347) lt!1040260)))))

(assert (=> b!2990504 (= e!1879864 e!1879865)))

(assert (= (and d!844529 c!491459) b!2990500))

(assert (= (and d!844529 (not c!491459)) b!2990491))

(assert (= (and d!844529 c!491458) b!2990495))

(assert (= (and d!844529 (not c!491458)) b!2990497))

(assert (= (and b!2990497 c!491457) b!2990503))

(assert (= (and b!2990497 (not c!491457)) b!2990504))

(assert (= (and b!2990504 (not res!1233516)) b!2990499))

(assert (= (and b!2990499 res!1233513) b!2990498))

(assert (= (and b!2990498 res!1233510) b!2990494))

(assert (= (and b!2990494 res!1233511) b!2990502))

(assert (= (and b!2990499 (not res!1233515)) b!2990501))

(assert (= (and b!2990501 res!1233514) b!2990496))

(assert (= (and b!2990496 (not res!1233509)) b!2990493))

(assert (= (and b!2990493 (not res!1233512)) b!2990492))

(assert (= (or b!2990495 b!2990496 b!2990498) bm!200031))

(declare-fun m!3346901 () Bool)

(assert (=> d!844529 m!3346901))

(declare-fun m!3346903 () Bool)

(assert (=> d!844529 m!3346903))

(declare-fun m!3346905 () Bool)

(assert (=> b!2990493 m!3346905))

(assert (=> b!2990493 m!3346905))

(declare-fun m!3346907 () Bool)

(assert (=> b!2990493 m!3346907))

(declare-fun m!3346909 () Bool)

(assert (=> b!2990502 m!3346909))

(assert (=> b!2990494 m!3346905))

(assert (=> b!2990494 m!3346905))

(assert (=> b!2990494 m!3346907))

(assert (=> bm!200031 m!3346901))

(assert (=> b!2990492 m!3346909))

(assert (=> b!2990491 m!3346909))

(assert (=> b!2990491 m!3346909))

(declare-fun m!3346911 () Bool)

(assert (=> b!2990491 m!3346911))

(assert (=> b!2990491 m!3346905))

(assert (=> b!2990491 m!3346911))

(assert (=> b!2990491 m!3346905))

(declare-fun m!3346913 () Bool)

(assert (=> b!2990491 m!3346913))

(declare-fun m!3346915 () Bool)

(assert (=> b!2990500 m!3346915))

(assert (=> b!2989881 d!844529))

(declare-fun d!844531 () Bool)

(assert (=> d!844531 (= (isEmpty!19356 s!11993) ((_ is Nil!35088) s!11993))))

(assert (=> b!2989870 d!844531))

(declare-fun b!2990516 () Bool)

(declare-fun e!1879872 () Bool)

(declare-fun tp!950841 () Bool)

(declare-fun tp!950839 () Bool)

(assert (=> b!2990516 (= e!1879872 (and tp!950841 tp!950839))))

(declare-fun b!2990518 () Bool)

(declare-fun tp!950842 () Bool)

(declare-fun tp!950838 () Bool)

(assert (=> b!2990518 (= e!1879872 (and tp!950842 tp!950838))))

(assert (=> b!2989880 (= tp!950785 e!1879872)))

(declare-fun b!2990515 () Bool)

(assert (=> b!2990515 (= e!1879872 tp_is_empty!16257)))

(declare-fun b!2990517 () Bool)

(declare-fun tp!950840 () Bool)

(assert (=> b!2990517 (= e!1879872 tp!950840)))

(assert (= (and b!2989880 ((_ is ElementMatch!9347) (regOne!19207 r!17423))) b!2990515))

(assert (= (and b!2989880 ((_ is Concat!14668) (regOne!19207 r!17423))) b!2990516))

(assert (= (and b!2989880 ((_ is Star!9347) (regOne!19207 r!17423))) b!2990517))

(assert (= (and b!2989880 ((_ is Union!9347) (regOne!19207 r!17423))) b!2990518))

(declare-fun b!2990520 () Bool)

(declare-fun e!1879873 () Bool)

(declare-fun tp!950846 () Bool)

(declare-fun tp!950844 () Bool)

(assert (=> b!2990520 (= e!1879873 (and tp!950846 tp!950844))))

(declare-fun b!2990522 () Bool)

(declare-fun tp!950847 () Bool)

(declare-fun tp!950843 () Bool)

(assert (=> b!2990522 (= e!1879873 (and tp!950847 tp!950843))))

(assert (=> b!2989880 (= tp!950786 e!1879873)))

(declare-fun b!2990519 () Bool)

(assert (=> b!2990519 (= e!1879873 tp_is_empty!16257)))

(declare-fun b!2990521 () Bool)

(declare-fun tp!950845 () Bool)

(assert (=> b!2990521 (= e!1879873 tp!950845)))

(assert (= (and b!2989880 ((_ is ElementMatch!9347) (regTwo!19207 r!17423))) b!2990519))

(assert (= (and b!2989880 ((_ is Concat!14668) (regTwo!19207 r!17423))) b!2990520))

(assert (= (and b!2989880 ((_ is Star!9347) (regTwo!19207 r!17423))) b!2990521))

(assert (= (and b!2989880 ((_ is Union!9347) (regTwo!19207 r!17423))) b!2990522))

(declare-fun b!2990527 () Bool)

(declare-fun e!1879876 () Bool)

(declare-fun tp!950850 () Bool)

(assert (=> b!2990527 (= e!1879876 (and tp_is_empty!16257 tp!950850))))

(assert (=> b!2989879 (= tp!950788 e!1879876)))

(assert (= (and b!2989879 ((_ is Cons!35088) (t!234277 s!11993))) b!2990527))

(declare-fun b!2990529 () Bool)

(declare-fun e!1879877 () Bool)

(declare-fun tp!950854 () Bool)

(declare-fun tp!950852 () Bool)

(assert (=> b!2990529 (= e!1879877 (and tp!950854 tp!950852))))

(declare-fun b!2990531 () Bool)

(declare-fun tp!950855 () Bool)

(declare-fun tp!950851 () Bool)

(assert (=> b!2990531 (= e!1879877 (and tp!950855 tp!950851))))

(assert (=> b!2989873 (= tp!950784 e!1879877)))

(declare-fun b!2990528 () Bool)

(assert (=> b!2990528 (= e!1879877 tp_is_empty!16257)))

(declare-fun b!2990530 () Bool)

(declare-fun tp!950853 () Bool)

(assert (=> b!2990530 (= e!1879877 tp!950853)))

(assert (= (and b!2989873 ((_ is ElementMatch!9347) (reg!9676 r!17423))) b!2990528))

(assert (= (and b!2989873 ((_ is Concat!14668) (reg!9676 r!17423))) b!2990529))

(assert (= (and b!2989873 ((_ is Star!9347) (reg!9676 r!17423))) b!2990530))

(assert (= (and b!2989873 ((_ is Union!9347) (reg!9676 r!17423))) b!2990531))

(declare-fun b!2990533 () Bool)

(declare-fun e!1879878 () Bool)

(declare-fun tp!950859 () Bool)

(declare-fun tp!950857 () Bool)

(assert (=> b!2990533 (= e!1879878 (and tp!950859 tp!950857))))

(declare-fun b!2990535 () Bool)

(declare-fun tp!950860 () Bool)

(declare-fun tp!950856 () Bool)

(assert (=> b!2990535 (= e!1879878 (and tp!950860 tp!950856))))

(assert (=> b!2989877 (= tp!950787 e!1879878)))

(declare-fun b!2990532 () Bool)

(assert (=> b!2990532 (= e!1879878 tp_is_empty!16257)))

(declare-fun b!2990534 () Bool)

(declare-fun tp!950858 () Bool)

(assert (=> b!2990534 (= e!1879878 tp!950858)))

(assert (= (and b!2989877 ((_ is ElementMatch!9347) (regOne!19206 r!17423))) b!2990532))

(assert (= (and b!2989877 ((_ is Concat!14668) (regOne!19206 r!17423))) b!2990533))

(assert (= (and b!2989877 ((_ is Star!9347) (regOne!19206 r!17423))) b!2990534))

(assert (= (and b!2989877 ((_ is Union!9347) (regOne!19206 r!17423))) b!2990535))

(declare-fun b!2990537 () Bool)

(declare-fun e!1879879 () Bool)

(declare-fun tp!950864 () Bool)

(declare-fun tp!950862 () Bool)

(assert (=> b!2990537 (= e!1879879 (and tp!950864 tp!950862))))

(declare-fun b!2990539 () Bool)

(declare-fun tp!950865 () Bool)

(declare-fun tp!950861 () Bool)

(assert (=> b!2990539 (= e!1879879 (and tp!950865 tp!950861))))

(assert (=> b!2989877 (= tp!950789 e!1879879)))

(declare-fun b!2990536 () Bool)

(assert (=> b!2990536 (= e!1879879 tp_is_empty!16257)))

(declare-fun b!2990538 () Bool)

(declare-fun tp!950863 () Bool)

(assert (=> b!2990538 (= e!1879879 tp!950863)))

(assert (= (and b!2989877 ((_ is ElementMatch!9347) (regTwo!19206 r!17423))) b!2990536))

(assert (= (and b!2989877 ((_ is Concat!14668) (regTwo!19206 r!17423))) b!2990537))

(assert (= (and b!2989877 ((_ is Star!9347) (regTwo!19206 r!17423))) b!2990538))

(assert (= (and b!2989877 ((_ is Union!9347) (regTwo!19206 r!17423))) b!2990539))

(check-sat (not b!2990486) (not d!844515) (not b!2990530) (not d!844529) (not b!2990455) (not b!2990538) (not b!2990160) (not b!2990529) tp_is_empty!16257 (not b!2990310) (not b!2990158) (not b!2990004) (not b!2990156) (not b!2990470) (not b!2990386) (not b!2990521) (not b!2990474) (not b!2990490) (not bm!200024) (not b!2990533) (not d!844521) (not bm!200029) (not bm!200001) (not b!2990539) (not b!2990478) (not b!2990493) (not b!2990393) (not b!2990527) (not b!2990340) (not b!2990522) (not b!2990537) (not b!2990312) (not bm!200030) (not bm!200007) (not bm!199964) (not b!2990535) (not b!2990476) (not d!844493) (not b!2990475) (not b!2990161) (not bm!200006) (not d!844505) (not b!2990311) (not d!844459) (not b!2990534) (not b!2990492) (not bm!200031) (not b!2990500) (not d!844491) (not b!2990384) (not d!844503) (not d!844483) (not b!2990502) (not b!2990320) (not b!2990153) (not b!2990381) (not b!2990516) (not b!2990494) (not b!2990387) (not b!2990477) (not b!2990491) (not bm!200023) (not bm!200027) (not b!2990531) (not b!2990333) (not bm!199965) (not b!2990520) (not bm!200028) (not bm!200008) (not d!844509) (not b!2990385) (not b!2990517) (not b!2990318) (not b!2990395) (not b!2990484) (not d!844525) (not b!2990375) (not b!2990157) (not d!844481) (not b!2990332) (not b!2990309) (not d!844519) (not b!2990518) (not d!844517))
(check-sat)
(get-model)

(declare-fun d!844607 () Bool)

(assert (=> d!844607 (= (isEmpty!19356 (tail!4899 s!11993)) ((_ is Nil!35088) (tail!4899 s!11993)))))

(assert (=> b!2990386 d!844607))

(declare-fun d!844611 () Bool)

(assert (=> d!844611 (= (tail!4899 s!11993) (t!234277 s!11993))))

(assert (=> b!2990386 d!844611))

(declare-fun b!2990744 () Bool)

(declare-fun e!1880000 () Bool)

(assert (=> b!2990744 (= e!1880000 (matchR!4229 (derivativeStep!2614 (derivativeStep!2614 r!17423 (head!6673 s!11993)) (head!6673 (tail!4899 s!11993))) (tail!4899 (tail!4899 s!11993))))))

(declare-fun b!2990745 () Bool)

(declare-fun e!1880002 () Bool)

(assert (=> b!2990745 (= e!1880002 (not (= (head!6673 (tail!4899 s!11993)) (c!491293 (derivativeStep!2614 r!17423 (head!6673 s!11993))))))))

(declare-fun b!2990746 () Bool)

(declare-fun res!1233590 () Bool)

(assert (=> b!2990746 (=> res!1233590 e!1880002)))

(assert (=> b!2990746 (= res!1233590 (not (isEmpty!19356 (tail!4899 (tail!4899 s!11993)))))))

(declare-fun b!2990747 () Bool)

(declare-fun res!1233589 () Bool)

(declare-fun e!1879997 () Bool)

(assert (=> b!2990747 (=> (not res!1233589) (not e!1879997))))

(assert (=> b!2990747 (= res!1233589 (isEmpty!19356 (tail!4899 (tail!4899 s!11993))))))

(declare-fun bm!200074 () Bool)

(declare-fun call!200079 () Bool)

(assert (=> bm!200074 (= call!200079 (isEmpty!19356 (tail!4899 s!11993)))))

(declare-fun b!2990748 () Bool)

(declare-fun e!1880001 () Bool)

(declare-fun lt!1040398 () Bool)

(assert (=> b!2990748 (= e!1880001 (= lt!1040398 call!200079))))

(declare-fun b!2990750 () Bool)

(declare-fun e!1879998 () Bool)

(assert (=> b!2990750 (= e!1880001 e!1879998)))

(declare-fun c!491527 () Bool)

(assert (=> b!2990750 (= c!491527 ((_ is EmptyLang!9347) (derivativeStep!2614 r!17423 (head!6673 s!11993))))))

(declare-fun b!2990751 () Bool)

(declare-fun res!1233588 () Bool)

(assert (=> b!2990751 (=> (not res!1233588) (not e!1879997))))

(assert (=> b!2990751 (= res!1233588 (not call!200079))))

(declare-fun d!844617 () Bool)

(assert (=> d!844617 e!1880001))

(declare-fun c!491528 () Bool)

(assert (=> d!844617 (= c!491528 ((_ is EmptyExpr!9347) (derivativeStep!2614 r!17423 (head!6673 s!11993))))))

(assert (=> d!844617 (= lt!1040398 e!1880000)))

(declare-fun c!491529 () Bool)

(assert (=> d!844617 (= c!491529 (isEmpty!19356 (tail!4899 s!11993)))))

(assert (=> d!844617 (validRegex!4080 (derivativeStep!2614 r!17423 (head!6673 s!11993)))))

(assert (=> d!844617 (= (matchR!4229 (derivativeStep!2614 r!17423 (head!6673 s!11993)) (tail!4899 s!11993)) lt!1040398)))

(declare-fun b!2990749 () Bool)

(declare-fun e!1880003 () Bool)

(assert (=> b!2990749 (= e!1880003 e!1880002)))

(declare-fun res!1233587 () Bool)

(assert (=> b!2990749 (=> res!1233587 e!1880002)))

(assert (=> b!2990749 (= res!1233587 call!200079)))

(declare-fun b!2990752 () Bool)

(declare-fun res!1233593 () Bool)

(declare-fun e!1879999 () Bool)

(assert (=> b!2990752 (=> res!1233593 e!1879999)))

(assert (=> b!2990752 (= res!1233593 e!1879997)))

(declare-fun res!1233591 () Bool)

(assert (=> b!2990752 (=> (not res!1233591) (not e!1879997))))

(assert (=> b!2990752 (= res!1233591 lt!1040398)))

(declare-fun b!2990753 () Bool)

(assert (=> b!2990753 (= e!1880000 (nullable!3016 (derivativeStep!2614 r!17423 (head!6673 s!11993))))))

(declare-fun b!2990754 () Bool)

(assert (=> b!2990754 (= e!1879999 e!1880003)))

(declare-fun res!1233592 () Bool)

(assert (=> b!2990754 (=> (not res!1233592) (not e!1880003))))

(assert (=> b!2990754 (= res!1233592 (not lt!1040398))))

(declare-fun b!2990755 () Bool)

(assert (=> b!2990755 (= e!1879997 (= (head!6673 (tail!4899 s!11993)) (c!491293 (derivativeStep!2614 r!17423 (head!6673 s!11993)))))))

(declare-fun b!2990756 () Bool)

(assert (=> b!2990756 (= e!1879998 (not lt!1040398))))

(declare-fun b!2990757 () Bool)

(declare-fun res!1233594 () Bool)

(assert (=> b!2990757 (=> res!1233594 e!1879999)))

(assert (=> b!2990757 (= res!1233594 (not ((_ is ElementMatch!9347) (derivativeStep!2614 r!17423 (head!6673 s!11993)))))))

(assert (=> b!2990757 (= e!1879998 e!1879999)))

(assert (= (and d!844617 c!491529) b!2990753))

(assert (= (and d!844617 (not c!491529)) b!2990744))

(assert (= (and d!844617 c!491528) b!2990748))

(assert (= (and d!844617 (not c!491528)) b!2990750))

(assert (= (and b!2990750 c!491527) b!2990756))

(assert (= (and b!2990750 (not c!491527)) b!2990757))

(assert (= (and b!2990757 (not res!1233594)) b!2990752))

(assert (= (and b!2990752 res!1233591) b!2990751))

(assert (= (and b!2990751 res!1233588) b!2990747))

(assert (= (and b!2990747 res!1233589) b!2990755))

(assert (= (and b!2990752 (not res!1233593)) b!2990754))

(assert (= (and b!2990754 res!1233592) b!2990749))

(assert (= (and b!2990749 (not res!1233587)) b!2990746))

(assert (= (and b!2990746 (not res!1233590)) b!2990745))

(assert (= (or b!2990748 b!2990749 b!2990751) bm!200074))

(assert (=> d!844617 m!3346857))

(assert (=> d!844617 m!3346859))

(assert (=> d!844617 m!3346863))

(declare-fun m!3347119 () Bool)

(assert (=> d!844617 m!3347119))

(assert (=> b!2990746 m!3346857))

(declare-fun m!3347121 () Bool)

(assert (=> b!2990746 m!3347121))

(assert (=> b!2990746 m!3347121))

(declare-fun m!3347123 () Bool)

(assert (=> b!2990746 m!3347123))

(assert (=> b!2990755 m!3346857))

(declare-fun m!3347125 () Bool)

(assert (=> b!2990755 m!3347125))

(assert (=> b!2990747 m!3346857))

(assert (=> b!2990747 m!3347121))

(assert (=> b!2990747 m!3347121))

(assert (=> b!2990747 m!3347123))

(assert (=> bm!200074 m!3346857))

(assert (=> bm!200074 m!3346859))

(assert (=> b!2990745 m!3346857))

(assert (=> b!2990745 m!3347125))

(assert (=> b!2990744 m!3346857))

(assert (=> b!2990744 m!3347125))

(assert (=> b!2990744 m!3346863))

(assert (=> b!2990744 m!3347125))

(declare-fun m!3347127 () Bool)

(assert (=> b!2990744 m!3347127))

(assert (=> b!2990744 m!3346857))

(assert (=> b!2990744 m!3347121))

(assert (=> b!2990744 m!3347127))

(assert (=> b!2990744 m!3347121))

(declare-fun m!3347129 () Bool)

(assert (=> b!2990744 m!3347129))

(assert (=> b!2990753 m!3346863))

(declare-fun m!3347131 () Bool)

(assert (=> b!2990753 m!3347131))

(assert (=> b!2990384 d!844617))

(declare-fun b!2990855 () Bool)

(declare-fun c!491566 () Bool)

(assert (=> b!2990855 (= c!491566 (nullable!3016 (regOne!19206 r!17423)))))

(declare-fun e!1880053 () Regex!9347)

(declare-fun e!1880054 () Regex!9347)

(assert (=> b!2990855 (= e!1880053 e!1880054)))

(declare-fun b!2990856 () Bool)

(declare-fun e!1880056 () Regex!9347)

(assert (=> b!2990856 (= e!1880056 e!1880053)))

(declare-fun c!491567 () Bool)

(assert (=> b!2990856 (= c!491567 ((_ is Star!9347) r!17423))))

(declare-fun b!2990857 () Bool)

(declare-fun e!1880057 () Regex!9347)

(declare-fun e!1880055 () Regex!9347)

(assert (=> b!2990857 (= e!1880057 e!1880055)))

(declare-fun c!491568 () Bool)

(assert (=> b!2990857 (= c!491568 ((_ is ElementMatch!9347) r!17423))))

(declare-fun c!491564 () Bool)

(declare-fun call!200102 () Regex!9347)

(declare-fun bm!200096 () Bool)

(assert (=> bm!200096 (= call!200102 (derivativeStep!2614 (ite c!491564 (regOne!19207 r!17423) (regTwo!19206 r!17423)) (head!6673 s!11993)))))

(declare-fun b!2990858 () Bool)

(declare-fun call!200103 () Regex!9347)

(assert (=> b!2990858 (= e!1880054 (Union!9347 (Concat!14668 call!200103 (regTwo!19206 r!17423)) EmptyLang!9347))))

(declare-fun bm!200097 () Bool)

(declare-fun call!200104 () Regex!9347)

(assert (=> bm!200097 (= call!200104 (derivativeStep!2614 (ite c!491564 (regTwo!19207 r!17423) (ite c!491567 (reg!9676 r!17423) (regOne!19206 r!17423))) (head!6673 s!11993)))))

(declare-fun b!2990859 () Bool)

(assert (=> b!2990859 (= e!1880057 EmptyLang!9347)))

(declare-fun d!844619 () Bool)

(declare-fun lt!1040412 () Regex!9347)

(assert (=> d!844619 (validRegex!4080 lt!1040412)))

(assert (=> d!844619 (= lt!1040412 e!1880057)))

(declare-fun c!491565 () Bool)

(assert (=> d!844619 (= c!491565 (or ((_ is EmptyExpr!9347) r!17423) ((_ is EmptyLang!9347) r!17423)))))

(assert (=> d!844619 (validRegex!4080 r!17423)))

(assert (=> d!844619 (= (derivativeStep!2614 r!17423 (head!6673 s!11993)) lt!1040412)))

(declare-fun b!2990860 () Bool)

(assert (=> b!2990860 (= c!491564 ((_ is Union!9347) r!17423))))

(assert (=> b!2990860 (= e!1880055 e!1880056)))

(declare-fun bm!200098 () Bool)

(declare-fun call!200101 () Regex!9347)

(assert (=> bm!200098 (= call!200101 call!200104)))

(declare-fun b!2990861 () Bool)

(assert (=> b!2990861 (= e!1880056 (Union!9347 call!200102 call!200104))))

(declare-fun b!2990862 () Bool)

(assert (=> b!2990862 (= e!1880054 (Union!9347 (Concat!14668 call!200103 (regTwo!19206 r!17423)) call!200102))))

(declare-fun b!2990863 () Bool)

(assert (=> b!2990863 (= e!1880053 (Concat!14668 call!200101 r!17423))))

(declare-fun b!2990864 () Bool)

(assert (=> b!2990864 (= e!1880055 (ite (= (head!6673 s!11993) (c!491293 r!17423)) EmptyExpr!9347 EmptyLang!9347))))

(declare-fun bm!200099 () Bool)

(assert (=> bm!200099 (= call!200103 call!200101)))

(assert (= (and d!844619 c!491565) b!2990859))

(assert (= (and d!844619 (not c!491565)) b!2990857))

(assert (= (and b!2990857 c!491568) b!2990864))

(assert (= (and b!2990857 (not c!491568)) b!2990860))

(assert (= (and b!2990860 c!491564) b!2990861))

(assert (= (and b!2990860 (not c!491564)) b!2990856))

(assert (= (and b!2990856 c!491567) b!2990863))

(assert (= (and b!2990856 (not c!491567)) b!2990855))

(assert (= (and b!2990855 c!491566) b!2990862))

(assert (= (and b!2990855 (not c!491566)) b!2990858))

(assert (= (or b!2990862 b!2990858) bm!200099))

(assert (= (or b!2990863 bm!200099) bm!200098))

(assert (= (or b!2990861 bm!200098) bm!200097))

(assert (= (or b!2990861 b!2990862) bm!200096))

(declare-fun m!3347209 () Bool)

(assert (=> b!2990855 m!3347209))

(assert (=> bm!200096 m!3346861))

(declare-fun m!3347215 () Bool)

(assert (=> bm!200096 m!3347215))

(assert (=> bm!200097 m!3346861))

(declare-fun m!3347219 () Bool)

(assert (=> bm!200097 m!3347219))

(declare-fun m!3347221 () Bool)

(assert (=> d!844619 m!3347221))

(assert (=> d!844619 m!3346623))

(assert (=> b!2990384 d!844619))

(declare-fun d!844651 () Bool)

(assert (=> d!844651 (= (head!6673 s!11993) (h!40508 s!11993))))

(assert (=> b!2990384 d!844651))

(assert (=> b!2990384 d!844611))

(assert (=> d!844515 d!844531))

(assert (=> d!844515 d!844453))

(declare-fun d!844653 () Bool)

(declare-fun lt!1040414 () Int)

(assert (=> d!844653 (>= lt!1040414 0)))

(declare-fun e!1880072 () Int)

(assert (=> d!844653 (= lt!1040414 e!1880072)))

(declare-fun c!491574 () Bool)

(assert (=> d!844653 (= c!491574 ((_ is Nil!35088) (t!234277 (_1!20138 lt!1040257))))))

(assert (=> d!844653 (= (size!26497 (t!234277 (_1!20138 lt!1040257))) lt!1040414)))

(declare-fun b!2990888 () Bool)

(assert (=> b!2990888 (= e!1880072 0)))

(declare-fun b!2990889 () Bool)

(assert (=> b!2990889 (= e!1880072 (+ 1 (size!26497 (t!234277 (t!234277 (_1!20138 lt!1040257))))))))

(assert (= (and d!844653 c!491574) b!2990888))

(assert (= (and d!844653 (not c!491574)) b!2990889))

(declare-fun m!3347235 () Bool)

(assert (=> b!2990889 m!3347235))

(assert (=> b!2990340 d!844653))

(assert (=> d!844505 d!844451))

(declare-fun b!2990890 () Bool)

(declare-fun e!1880076 () Bool)

(declare-fun e!1880075 () Bool)

(assert (=> b!2990890 (= e!1880076 e!1880075)))

(declare-fun c!491575 () Bool)

(assert (=> b!2990890 (= c!491575 ((_ is Union!9347) (reg!9676 r!17423)))))

(declare-fun c!491576 () Bool)

(declare-fun bm!200104 () Bool)

(declare-fun call!200110 () Bool)

(assert (=> bm!200104 (= call!200110 (validRegex!4080 (ite c!491576 (reg!9676 (reg!9676 r!17423)) (ite c!491575 (regTwo!19207 (reg!9676 r!17423)) (regOne!19206 (reg!9676 r!17423))))))))

(declare-fun bm!200105 () Bool)

(declare-fun call!200111 () Bool)

(assert (=> bm!200105 (= call!200111 (validRegex!4080 (ite c!491575 (regOne!19207 (reg!9676 r!17423)) (regTwo!19206 (reg!9676 r!17423)))))))

(declare-fun bm!200106 () Bool)

(declare-fun call!200109 () Bool)

(assert (=> bm!200106 (= call!200109 call!200110)))

(declare-fun b!2990891 () Bool)

(declare-fun e!1880077 () Bool)

(assert (=> b!2990891 (= e!1880076 e!1880077)))

(declare-fun res!1233640 () Bool)

(assert (=> b!2990891 (= res!1233640 (not (nullable!3016 (reg!9676 (reg!9676 r!17423)))))))

(assert (=> b!2990891 (=> (not res!1233640) (not e!1880077))))

(declare-fun b!2990892 () Bool)

(declare-fun e!1880078 () Bool)

(assert (=> b!2990892 (= e!1880078 call!200111)))

(declare-fun d!844659 () Bool)

(declare-fun res!1233637 () Bool)

(declare-fun e!1880079 () Bool)

(assert (=> d!844659 (=> res!1233637 e!1880079)))

(assert (=> d!844659 (= res!1233637 ((_ is ElementMatch!9347) (reg!9676 r!17423)))))

(assert (=> d!844659 (= (validRegex!4080 (reg!9676 r!17423)) e!1880079)))

(declare-fun b!2990893 () Bool)

(declare-fun e!1880073 () Bool)

(assert (=> b!2990893 (= e!1880073 call!200109)))

(declare-fun b!2990894 () Bool)

(declare-fun e!1880074 () Bool)

(assert (=> b!2990894 (= e!1880074 e!1880078)))

(declare-fun res!1233641 () Bool)

(assert (=> b!2990894 (=> (not res!1233641) (not e!1880078))))

(assert (=> b!2990894 (= res!1233641 call!200109)))

(declare-fun b!2990895 () Bool)

(declare-fun res!1233638 () Bool)

(assert (=> b!2990895 (=> (not res!1233638) (not e!1880073))))

(assert (=> b!2990895 (= res!1233638 call!200111)))

(assert (=> b!2990895 (= e!1880075 e!1880073)))

(declare-fun b!2990896 () Bool)

(assert (=> b!2990896 (= e!1880077 call!200110)))

(declare-fun b!2990897 () Bool)

(assert (=> b!2990897 (= e!1880079 e!1880076)))

(assert (=> b!2990897 (= c!491576 ((_ is Star!9347) (reg!9676 r!17423)))))

(declare-fun b!2990898 () Bool)

(declare-fun res!1233639 () Bool)

(assert (=> b!2990898 (=> res!1233639 e!1880074)))

(assert (=> b!2990898 (= res!1233639 (not ((_ is Concat!14668) (reg!9676 r!17423))))))

(assert (=> b!2990898 (= e!1880075 e!1880074)))

(assert (= (and d!844659 (not res!1233637)) b!2990897))

(assert (= (and b!2990897 c!491576) b!2990891))

(assert (= (and b!2990897 (not c!491576)) b!2990890))

(assert (= (and b!2990891 res!1233640) b!2990896))

(assert (= (and b!2990890 c!491575) b!2990895))

(assert (= (and b!2990890 (not c!491575)) b!2990898))

(assert (= (and b!2990895 res!1233638) b!2990893))

(assert (= (and b!2990898 (not res!1233639)) b!2990894))

(assert (= (and b!2990894 res!1233641) b!2990892))

(assert (= (or b!2990895 b!2990892) bm!200105))

(assert (= (or b!2990893 b!2990894) bm!200106))

(assert (= (or b!2990896 bm!200106) bm!200104))

(declare-fun m!3347237 () Bool)

(assert (=> bm!200104 m!3347237))

(declare-fun m!3347239 () Bool)

(assert (=> bm!200105 m!3347239))

(declare-fun m!3347241 () Bool)

(assert (=> b!2990891 m!3347241))

(assert (=> d!844505 d!844659))

(declare-fun d!844661 () Bool)

(assert (=> d!844661 (= (isEmpty!19356 (_2!20138 lt!1040257)) ((_ is Nil!35088) (_2!20138 lt!1040257)))))

(assert (=> bm!200031 d!844661))

(declare-fun d!844663 () Bool)

(assert (=> d!844663 (= (isEmpty!19356 (tail!4899 (_2!20138 lt!1040257))) ((_ is Nil!35088) (tail!4899 (_2!20138 lt!1040257))))))

(assert (=> b!2990493 d!844663))

(declare-fun d!844665 () Bool)

(assert (=> d!844665 (= (tail!4899 (_2!20138 lt!1040257)) (t!234277 (_2!20138 lt!1040257)))))

(assert (=> b!2990493 d!844665))

(declare-fun d!844667 () Bool)

(assert (=> d!844667 (= (head!6673 (_1!20138 lt!1040257)) (h!40508 (_1!20138 lt!1040257)))))

(assert (=> b!2990486 d!844667))

(assert (=> d!844529 d!844661))

(declare-fun b!2990899 () Bool)

(declare-fun e!1880083 () Bool)

(declare-fun e!1880082 () Bool)

(assert (=> b!2990899 (= e!1880083 e!1880082)))

(declare-fun c!491577 () Bool)

(assert (=> b!2990899 (= c!491577 ((_ is Union!9347) lt!1040260))))

(declare-fun c!491578 () Bool)

(declare-fun call!200113 () Bool)

(declare-fun bm!200107 () Bool)

(assert (=> bm!200107 (= call!200113 (validRegex!4080 (ite c!491578 (reg!9676 lt!1040260) (ite c!491577 (regTwo!19207 lt!1040260) (regOne!19206 lt!1040260)))))))

(declare-fun bm!200108 () Bool)

(declare-fun call!200114 () Bool)

(assert (=> bm!200108 (= call!200114 (validRegex!4080 (ite c!491577 (regOne!19207 lt!1040260) (regTwo!19206 lt!1040260))))))

(declare-fun bm!200109 () Bool)

(declare-fun call!200112 () Bool)

(assert (=> bm!200109 (= call!200112 call!200113)))

(declare-fun b!2990900 () Bool)

(declare-fun e!1880084 () Bool)

(assert (=> b!2990900 (= e!1880083 e!1880084)))

(declare-fun res!1233645 () Bool)

(assert (=> b!2990900 (= res!1233645 (not (nullable!3016 (reg!9676 lt!1040260))))))

(assert (=> b!2990900 (=> (not res!1233645) (not e!1880084))))

(declare-fun b!2990901 () Bool)

(declare-fun e!1880085 () Bool)

(assert (=> b!2990901 (= e!1880085 call!200114)))

(declare-fun d!844669 () Bool)

(declare-fun res!1233642 () Bool)

(declare-fun e!1880086 () Bool)

(assert (=> d!844669 (=> res!1233642 e!1880086)))

(assert (=> d!844669 (= res!1233642 ((_ is ElementMatch!9347) lt!1040260))))

(assert (=> d!844669 (= (validRegex!4080 lt!1040260) e!1880086)))

(declare-fun b!2990902 () Bool)

(declare-fun e!1880080 () Bool)

(assert (=> b!2990902 (= e!1880080 call!200112)))

(declare-fun b!2990903 () Bool)

(declare-fun e!1880081 () Bool)

(assert (=> b!2990903 (= e!1880081 e!1880085)))

(declare-fun res!1233646 () Bool)

(assert (=> b!2990903 (=> (not res!1233646) (not e!1880085))))

(assert (=> b!2990903 (= res!1233646 call!200112)))

(declare-fun b!2990904 () Bool)

(declare-fun res!1233643 () Bool)

(assert (=> b!2990904 (=> (not res!1233643) (not e!1880080))))

(assert (=> b!2990904 (= res!1233643 call!200114)))

(assert (=> b!2990904 (= e!1880082 e!1880080)))

(declare-fun b!2990905 () Bool)

(assert (=> b!2990905 (= e!1880084 call!200113)))

(declare-fun b!2990906 () Bool)

(assert (=> b!2990906 (= e!1880086 e!1880083)))

(assert (=> b!2990906 (= c!491578 ((_ is Star!9347) lt!1040260))))

(declare-fun b!2990907 () Bool)

(declare-fun res!1233644 () Bool)

(assert (=> b!2990907 (=> res!1233644 e!1880081)))

(assert (=> b!2990907 (= res!1233644 (not ((_ is Concat!14668) lt!1040260)))))

(assert (=> b!2990907 (= e!1880082 e!1880081)))

(assert (= (and d!844669 (not res!1233642)) b!2990906))

(assert (= (and b!2990906 c!491578) b!2990900))

(assert (= (and b!2990906 (not c!491578)) b!2990899))

(assert (= (and b!2990900 res!1233645) b!2990905))

(assert (= (and b!2990899 c!491577) b!2990904))

(assert (= (and b!2990899 (not c!491577)) b!2990907))

(assert (= (and b!2990904 res!1233643) b!2990902))

(assert (= (and b!2990907 (not res!1233644)) b!2990903))

(assert (= (and b!2990903 res!1233646) b!2990901))

(assert (= (or b!2990904 b!2990901) bm!200108))

(assert (= (or b!2990902 b!2990903) bm!200109))

(assert (= (or b!2990905 bm!200109) bm!200107))

(declare-fun m!3347243 () Bool)

(assert (=> bm!200107 m!3347243))

(declare-fun m!3347245 () Bool)

(assert (=> bm!200108 m!3347245))

(declare-fun m!3347247 () Bool)

(assert (=> b!2990900 m!3347247))

(assert (=> d!844529 d!844669))

(declare-fun b!2990922 () Bool)

(declare-fun e!1880097 () Bool)

(assert (=> b!2990922 (= e!1880097 (matchR!4229 (derivativeStep!2614 (derivativeStep!2614 lt!1040260 (head!6673 (_2!20138 lt!1040257))) (head!6673 (tail!4899 (_2!20138 lt!1040257)))) (tail!4899 (tail!4899 (_2!20138 lt!1040257)))))))

(declare-fun b!2990923 () Bool)

(declare-fun e!1880099 () Bool)

(assert (=> b!2990923 (= e!1880099 (not (= (head!6673 (tail!4899 (_2!20138 lt!1040257))) (c!491293 (derivativeStep!2614 lt!1040260 (head!6673 (_2!20138 lt!1040257)))))))))

(declare-fun b!2990924 () Bool)

(declare-fun res!1233658 () Bool)

(assert (=> b!2990924 (=> res!1233658 e!1880099)))

(assert (=> b!2990924 (= res!1233658 (not (isEmpty!19356 (tail!4899 (tail!4899 (_2!20138 lt!1040257))))))))

(declare-fun b!2990925 () Bool)

(declare-fun res!1233657 () Bool)

(declare-fun e!1880094 () Bool)

(assert (=> b!2990925 (=> (not res!1233657) (not e!1880094))))

(assert (=> b!2990925 (= res!1233657 (isEmpty!19356 (tail!4899 (tail!4899 (_2!20138 lt!1040257)))))))

(declare-fun bm!200111 () Bool)

(declare-fun call!200116 () Bool)

(assert (=> bm!200111 (= call!200116 (isEmpty!19356 (tail!4899 (_2!20138 lt!1040257))))))

(declare-fun b!2990926 () Bool)

(declare-fun e!1880098 () Bool)

(declare-fun lt!1040416 () Bool)

(assert (=> b!2990926 (= e!1880098 (= lt!1040416 call!200116))))

(declare-fun b!2990928 () Bool)

(declare-fun e!1880095 () Bool)

(assert (=> b!2990928 (= e!1880098 e!1880095)))

(declare-fun c!491582 () Bool)

(assert (=> b!2990928 (= c!491582 ((_ is EmptyLang!9347) (derivativeStep!2614 lt!1040260 (head!6673 (_2!20138 lt!1040257)))))))

(declare-fun b!2990929 () Bool)

(declare-fun res!1233656 () Bool)

(assert (=> b!2990929 (=> (not res!1233656) (not e!1880094))))

(assert (=> b!2990929 (= res!1233656 (not call!200116))))

(declare-fun d!844675 () Bool)

(assert (=> d!844675 e!1880098))

(declare-fun c!491583 () Bool)

(assert (=> d!844675 (= c!491583 ((_ is EmptyExpr!9347) (derivativeStep!2614 lt!1040260 (head!6673 (_2!20138 lt!1040257)))))))

(assert (=> d!844675 (= lt!1040416 e!1880097)))

(declare-fun c!491584 () Bool)

(assert (=> d!844675 (= c!491584 (isEmpty!19356 (tail!4899 (_2!20138 lt!1040257))))))

(assert (=> d!844675 (validRegex!4080 (derivativeStep!2614 lt!1040260 (head!6673 (_2!20138 lt!1040257))))))

(assert (=> d!844675 (= (matchR!4229 (derivativeStep!2614 lt!1040260 (head!6673 (_2!20138 lt!1040257))) (tail!4899 (_2!20138 lt!1040257))) lt!1040416)))

(declare-fun b!2990927 () Bool)

(declare-fun e!1880100 () Bool)

(assert (=> b!2990927 (= e!1880100 e!1880099)))

(declare-fun res!1233655 () Bool)

(assert (=> b!2990927 (=> res!1233655 e!1880099)))

(assert (=> b!2990927 (= res!1233655 call!200116)))

(declare-fun b!2990930 () Bool)

(declare-fun res!1233661 () Bool)

(declare-fun e!1880096 () Bool)

(assert (=> b!2990930 (=> res!1233661 e!1880096)))

(assert (=> b!2990930 (= res!1233661 e!1880094)))

(declare-fun res!1233659 () Bool)

(assert (=> b!2990930 (=> (not res!1233659) (not e!1880094))))

(assert (=> b!2990930 (= res!1233659 lt!1040416)))

(declare-fun b!2990931 () Bool)

(assert (=> b!2990931 (= e!1880097 (nullable!3016 (derivativeStep!2614 lt!1040260 (head!6673 (_2!20138 lt!1040257)))))))

(declare-fun b!2990932 () Bool)

(assert (=> b!2990932 (= e!1880096 e!1880100)))

(declare-fun res!1233660 () Bool)

(assert (=> b!2990932 (=> (not res!1233660) (not e!1880100))))

(assert (=> b!2990932 (= res!1233660 (not lt!1040416))))

(declare-fun b!2990933 () Bool)

(assert (=> b!2990933 (= e!1880094 (= (head!6673 (tail!4899 (_2!20138 lt!1040257))) (c!491293 (derivativeStep!2614 lt!1040260 (head!6673 (_2!20138 lt!1040257))))))))

(declare-fun b!2990934 () Bool)

(assert (=> b!2990934 (= e!1880095 (not lt!1040416))))

(declare-fun b!2990935 () Bool)

(declare-fun res!1233662 () Bool)

(assert (=> b!2990935 (=> res!1233662 e!1880096)))

(assert (=> b!2990935 (= res!1233662 (not ((_ is ElementMatch!9347) (derivativeStep!2614 lt!1040260 (head!6673 (_2!20138 lt!1040257))))))))

(assert (=> b!2990935 (= e!1880095 e!1880096)))

(assert (= (and d!844675 c!491584) b!2990931))

(assert (= (and d!844675 (not c!491584)) b!2990922))

(assert (= (and d!844675 c!491583) b!2990926))

(assert (= (and d!844675 (not c!491583)) b!2990928))

(assert (= (and b!2990928 c!491582) b!2990934))

(assert (= (and b!2990928 (not c!491582)) b!2990935))

(assert (= (and b!2990935 (not res!1233662)) b!2990930))

(assert (= (and b!2990930 res!1233659) b!2990929))

(assert (= (and b!2990929 res!1233656) b!2990925))

(assert (= (and b!2990925 res!1233657) b!2990933))

(assert (= (and b!2990930 (not res!1233661)) b!2990932))

(assert (= (and b!2990932 res!1233660) b!2990927))

(assert (= (and b!2990927 (not res!1233655)) b!2990924))

(assert (= (and b!2990924 (not res!1233658)) b!2990923))

(assert (= (or b!2990926 b!2990927 b!2990929) bm!200111))

(assert (=> d!844675 m!3346905))

(assert (=> d!844675 m!3346907))

(assert (=> d!844675 m!3346911))

(declare-fun m!3347263 () Bool)

(assert (=> d!844675 m!3347263))

(assert (=> b!2990924 m!3346905))

(declare-fun m!3347267 () Bool)

(assert (=> b!2990924 m!3347267))

(assert (=> b!2990924 m!3347267))

(declare-fun m!3347269 () Bool)

(assert (=> b!2990924 m!3347269))

(assert (=> b!2990933 m!3346905))

(declare-fun m!3347271 () Bool)

(assert (=> b!2990933 m!3347271))

(assert (=> b!2990925 m!3346905))

(assert (=> b!2990925 m!3347267))

(assert (=> b!2990925 m!3347267))

(assert (=> b!2990925 m!3347269))

(assert (=> bm!200111 m!3346905))

(assert (=> bm!200111 m!3346907))

(assert (=> b!2990923 m!3346905))

(assert (=> b!2990923 m!3347271))

(assert (=> b!2990922 m!3346905))

(assert (=> b!2990922 m!3347271))

(assert (=> b!2990922 m!3346911))

(assert (=> b!2990922 m!3347271))

(declare-fun m!3347273 () Bool)

(assert (=> b!2990922 m!3347273))

(assert (=> b!2990922 m!3346905))

(assert (=> b!2990922 m!3347267))

(assert (=> b!2990922 m!3347273))

(assert (=> b!2990922 m!3347267))

(declare-fun m!3347275 () Bool)

(assert (=> b!2990922 m!3347275))

(assert (=> b!2990931 m!3346911))

(declare-fun m!3347277 () Bool)

(assert (=> b!2990931 m!3347277))

(assert (=> b!2990491 d!844675))

(declare-fun b!2990960 () Bool)

(declare-fun c!491595 () Bool)

(assert (=> b!2990960 (= c!491595 (nullable!3016 (regOne!19206 lt!1040260)))))

(declare-fun e!1880113 () Regex!9347)

(declare-fun e!1880114 () Regex!9347)

(assert (=> b!2990960 (= e!1880113 e!1880114)))

(declare-fun b!2990961 () Bool)

(declare-fun e!1880116 () Regex!9347)

(assert (=> b!2990961 (= e!1880116 e!1880113)))

(declare-fun c!491596 () Bool)

(assert (=> b!2990961 (= c!491596 ((_ is Star!9347) lt!1040260))))

(declare-fun b!2990962 () Bool)

(declare-fun e!1880117 () Regex!9347)

(declare-fun e!1880115 () Regex!9347)

(assert (=> b!2990962 (= e!1880117 e!1880115)))

(declare-fun c!491597 () Bool)

(assert (=> b!2990962 (= c!491597 ((_ is ElementMatch!9347) lt!1040260))))

(declare-fun call!200123 () Regex!9347)

(declare-fun c!491593 () Bool)

(declare-fun bm!200117 () Bool)

(assert (=> bm!200117 (= call!200123 (derivativeStep!2614 (ite c!491593 (regOne!19207 lt!1040260) (regTwo!19206 lt!1040260)) (head!6673 (_2!20138 lt!1040257))))))

(declare-fun b!2990963 () Bool)

(declare-fun call!200124 () Regex!9347)

(assert (=> b!2990963 (= e!1880114 (Union!9347 (Concat!14668 call!200124 (regTwo!19206 lt!1040260)) EmptyLang!9347))))

(declare-fun bm!200118 () Bool)

(declare-fun call!200125 () Regex!9347)

(assert (=> bm!200118 (= call!200125 (derivativeStep!2614 (ite c!491593 (regTwo!19207 lt!1040260) (ite c!491596 (reg!9676 lt!1040260) (regOne!19206 lt!1040260))) (head!6673 (_2!20138 lt!1040257))))))

(declare-fun b!2990964 () Bool)

(assert (=> b!2990964 (= e!1880117 EmptyLang!9347)))

(declare-fun d!844681 () Bool)

(declare-fun lt!1040419 () Regex!9347)

(assert (=> d!844681 (validRegex!4080 lt!1040419)))

(assert (=> d!844681 (= lt!1040419 e!1880117)))

(declare-fun c!491594 () Bool)

(assert (=> d!844681 (= c!491594 (or ((_ is EmptyExpr!9347) lt!1040260) ((_ is EmptyLang!9347) lt!1040260)))))

(assert (=> d!844681 (validRegex!4080 lt!1040260)))

(assert (=> d!844681 (= (derivativeStep!2614 lt!1040260 (head!6673 (_2!20138 lt!1040257))) lt!1040419)))

(declare-fun b!2990965 () Bool)

(assert (=> b!2990965 (= c!491593 ((_ is Union!9347) lt!1040260))))

(assert (=> b!2990965 (= e!1880115 e!1880116)))

(declare-fun bm!200119 () Bool)

(declare-fun call!200122 () Regex!9347)

(assert (=> bm!200119 (= call!200122 call!200125)))

(declare-fun b!2990966 () Bool)

(assert (=> b!2990966 (= e!1880116 (Union!9347 call!200123 call!200125))))

(declare-fun b!2990967 () Bool)

(assert (=> b!2990967 (= e!1880114 (Union!9347 (Concat!14668 call!200124 (regTwo!19206 lt!1040260)) call!200123))))

(declare-fun b!2990968 () Bool)

(assert (=> b!2990968 (= e!1880113 (Concat!14668 call!200122 lt!1040260))))

(declare-fun b!2990969 () Bool)

(assert (=> b!2990969 (= e!1880115 (ite (= (head!6673 (_2!20138 lt!1040257)) (c!491293 lt!1040260)) EmptyExpr!9347 EmptyLang!9347))))

(declare-fun bm!200120 () Bool)

(assert (=> bm!200120 (= call!200124 call!200122)))

(assert (= (and d!844681 c!491594) b!2990964))

(assert (= (and d!844681 (not c!491594)) b!2990962))

(assert (= (and b!2990962 c!491597) b!2990969))

(assert (= (and b!2990962 (not c!491597)) b!2990965))

(assert (= (and b!2990965 c!491593) b!2990966))

(assert (= (and b!2990965 (not c!491593)) b!2990961))

(assert (= (and b!2990961 c!491596) b!2990968))

(assert (= (and b!2990961 (not c!491596)) b!2990960))

(assert (= (and b!2990960 c!491595) b!2990967))

(assert (= (and b!2990960 (not c!491595)) b!2990963))

(assert (= (or b!2990967 b!2990963) bm!200120))

(assert (= (or b!2990968 bm!200120) bm!200119))

(assert (= (or b!2990966 bm!200119) bm!200118))

(assert (= (or b!2990966 b!2990967) bm!200117))

(declare-fun m!3347283 () Bool)

(assert (=> b!2990960 m!3347283))

(assert (=> bm!200117 m!3346909))

(declare-fun m!3347285 () Bool)

(assert (=> bm!200117 m!3347285))

(assert (=> bm!200118 m!3346909))

(declare-fun m!3347287 () Bool)

(assert (=> bm!200118 m!3347287))

(declare-fun m!3347289 () Bool)

(assert (=> d!844681 m!3347289))

(assert (=> d!844681 m!3346903))

(assert (=> b!2990491 d!844681))

(declare-fun d!844685 () Bool)

(assert (=> d!844685 (= (head!6673 (_2!20138 lt!1040257)) (h!40508 (_2!20138 lt!1040257)))))

(assert (=> b!2990491 d!844685))

(assert (=> b!2990491 d!844665))

(declare-fun b!2990972 () Bool)

(declare-fun res!1233673 () Bool)

(declare-fun e!1880118 () Bool)

(assert (=> b!2990972 (=> (not res!1233673) (not e!1880118))))

(declare-fun lt!1040420 () List!35212)

(assert (=> b!2990972 (= res!1233673 (= (size!26497 lt!1040420) (+ (size!26497 (++!8391 Nil!35088 (Cons!35088 (h!40508 s!11993) Nil!35088))) (size!26497 (t!234277 s!11993)))))))

(declare-fun b!2990971 () Bool)

(declare-fun e!1880119 () List!35212)

(assert (=> b!2990971 (= e!1880119 (Cons!35088 (h!40508 (++!8391 Nil!35088 (Cons!35088 (h!40508 s!11993) Nil!35088))) (++!8391 (t!234277 (++!8391 Nil!35088 (Cons!35088 (h!40508 s!11993) Nil!35088))) (t!234277 s!11993))))))

(declare-fun b!2990973 () Bool)

(assert (=> b!2990973 (= e!1880118 (or (not (= (t!234277 s!11993) Nil!35088)) (= lt!1040420 (++!8391 Nil!35088 (Cons!35088 (h!40508 s!11993) Nil!35088)))))))

(declare-fun d!844687 () Bool)

(assert (=> d!844687 e!1880118))

(declare-fun res!1233674 () Bool)

(assert (=> d!844687 (=> (not res!1233674) (not e!1880118))))

(assert (=> d!844687 (= res!1233674 (= (content!4772 lt!1040420) ((_ map or) (content!4772 (++!8391 Nil!35088 (Cons!35088 (h!40508 s!11993) Nil!35088))) (content!4772 (t!234277 s!11993)))))))

(assert (=> d!844687 (= lt!1040420 e!1880119)))

(declare-fun c!491598 () Bool)

(assert (=> d!844687 (= c!491598 ((_ is Nil!35088) (++!8391 Nil!35088 (Cons!35088 (h!40508 s!11993) Nil!35088))))))

(assert (=> d!844687 (= (++!8391 (++!8391 Nil!35088 (Cons!35088 (h!40508 s!11993) Nil!35088)) (t!234277 s!11993)) lt!1040420)))

(declare-fun b!2990970 () Bool)

(assert (=> b!2990970 (= e!1880119 (t!234277 s!11993))))

(assert (= (and d!844687 c!491598) b!2990970))

(assert (= (and d!844687 (not c!491598)) b!2990971))

(assert (= (and d!844687 res!1233674) b!2990972))

(assert (= (and b!2990972 res!1233673) b!2990973))

(declare-fun m!3347293 () Bool)

(assert (=> b!2990972 m!3347293))

(assert (=> b!2990972 m!3346739))

(declare-fun m!3347295 () Bool)

(assert (=> b!2990972 m!3347295))

(assert (=> b!2990972 m!3346889))

(declare-fun m!3347297 () Bool)

(assert (=> b!2990971 m!3347297))

(declare-fun m!3347299 () Bool)

(assert (=> d!844687 m!3347299))

(assert (=> d!844687 m!3346739))

(declare-fun m!3347301 () Bool)

(assert (=> d!844687 m!3347301))

(declare-fun m!3347303 () Bool)

(assert (=> d!844687 m!3347303))

(assert (=> b!2990160 d!844687))

(declare-fun b!2990980 () Bool)

(declare-fun res!1233676 () Bool)

(declare-fun e!1880122 () Bool)

(assert (=> b!2990980 (=> (not res!1233676) (not e!1880122))))

(declare-fun lt!1040423 () List!35212)

(assert (=> b!2990980 (= res!1233676 (= (size!26497 lt!1040423) (+ (size!26497 Nil!35088) (size!26497 (Cons!35088 (h!40508 s!11993) Nil!35088)))))))

(declare-fun b!2990979 () Bool)

(declare-fun e!1880123 () List!35212)

(assert (=> b!2990979 (= e!1880123 (Cons!35088 (h!40508 Nil!35088) (++!8391 (t!234277 Nil!35088) (Cons!35088 (h!40508 s!11993) Nil!35088))))))

(declare-fun b!2990981 () Bool)

(assert (=> b!2990981 (= e!1880122 (or (not (= (Cons!35088 (h!40508 s!11993) Nil!35088) Nil!35088)) (= lt!1040423 Nil!35088)))))

(declare-fun d!844693 () Bool)

(assert (=> d!844693 e!1880122))

(declare-fun res!1233677 () Bool)

(assert (=> d!844693 (=> (not res!1233677) (not e!1880122))))

(assert (=> d!844693 (= res!1233677 (= (content!4772 lt!1040423) ((_ map or) (content!4772 Nil!35088) (content!4772 (Cons!35088 (h!40508 s!11993) Nil!35088)))))))

(assert (=> d!844693 (= lt!1040423 e!1880123)))

(declare-fun c!491601 () Bool)

(assert (=> d!844693 (= c!491601 ((_ is Nil!35088) Nil!35088))))

(assert (=> d!844693 (= (++!8391 Nil!35088 (Cons!35088 (h!40508 s!11993) Nil!35088)) lt!1040423)))

(declare-fun b!2990978 () Bool)

(assert (=> b!2990978 (= e!1880123 (Cons!35088 (h!40508 s!11993) Nil!35088))))

(assert (= (and d!844693 c!491601) b!2990978))

(assert (= (and d!844693 (not c!491601)) b!2990979))

(assert (= (and d!844693 res!1233677) b!2990980))

(assert (= (and b!2990980 res!1233676) b!2990981))

(declare-fun m!3347309 () Bool)

(assert (=> b!2990980 m!3347309))

(declare-fun m!3347311 () Bool)

(assert (=> b!2990980 m!3347311))

(declare-fun m!3347313 () Bool)

(assert (=> b!2990980 m!3347313))

(declare-fun m!3347315 () Bool)

(assert (=> b!2990979 m!3347315))

(declare-fun m!3347317 () Bool)

(assert (=> d!844693 m!3347317))

(declare-fun m!3347319 () Bool)

(assert (=> d!844693 m!3347319))

(declare-fun m!3347321 () Bool)

(assert (=> d!844693 m!3347321))

(assert (=> b!2990160 d!844693))

(declare-fun d!844699 () Bool)

(assert (=> d!844699 (= (++!8391 (++!8391 Nil!35088 (Cons!35088 (h!40508 s!11993) Nil!35088)) (t!234277 s!11993)) s!11993)))

(declare-fun lt!1040426 () Unit!49097)

(declare-fun choose!17752 (List!35212 C!18880 List!35212 List!35212) Unit!49097)

(assert (=> d!844699 (= lt!1040426 (choose!17752 Nil!35088 (h!40508 s!11993) (t!234277 s!11993) s!11993))))

(assert (=> d!844699 (= (++!8391 Nil!35088 (Cons!35088 (h!40508 s!11993) (t!234277 s!11993))) s!11993)))

(assert (=> d!844699 (= (lemmaMoveElementToOtherListKeepsConcatEq!1003 Nil!35088 (h!40508 s!11993) (t!234277 s!11993) s!11993) lt!1040426)))

(declare-fun bs!527715 () Bool)

(assert (= bs!527715 d!844699))

(assert (=> bs!527715 m!3346739))

(assert (=> bs!527715 m!3346739))

(assert (=> bs!527715 m!3346741))

(declare-fun m!3347331 () Bool)

(assert (=> bs!527715 m!3347331))

(declare-fun m!3347333 () Bool)

(assert (=> bs!527715 m!3347333))

(assert (=> b!2990160 d!844699))

(declare-fun b!2991056 () Bool)

(declare-fun e!1880149 () Bool)

(declare-fun lt!1040428 () Option!6738)

(assert (=> b!2991056 (= e!1880149 (not (isDefined!5289 lt!1040428)))))

(declare-fun b!2991057 () Bool)

(declare-fun e!1880150 () Option!6738)

(declare-fun e!1880152 () Option!6738)

(assert (=> b!2991057 (= e!1880150 e!1880152)))

(declare-fun c!491605 () Bool)

(assert (=> b!2991057 (= c!491605 ((_ is Nil!35088) (t!234277 s!11993)))))

(declare-fun b!2991058 () Bool)

(assert (=> b!2991058 (= e!1880152 None!6737)))

(declare-fun b!2991059 () Bool)

(declare-fun res!1233684 () Bool)

(declare-fun e!1880148 () Bool)

(assert (=> b!2991059 (=> (not res!1233684) (not e!1880148))))

(assert (=> b!2991059 (= res!1233684 (matchR!4229 lt!1040260 (_2!20138 (get!10879 lt!1040428))))))

(declare-fun b!2991060 () Bool)

(assert (=> b!2991060 (= e!1880148 (= (++!8391 (_1!20138 (get!10879 lt!1040428)) (_2!20138 (get!10879 lt!1040428))) s!11993))))

(declare-fun b!2991061 () Bool)

(declare-fun res!1233687 () Bool)

(assert (=> b!2991061 (=> (not res!1233687) (not e!1880148))))

(assert (=> b!2991061 (= res!1233687 (matchR!4229 (reg!9676 r!17423) (_1!20138 (get!10879 lt!1040428))))))

(declare-fun b!2991062 () Bool)

(assert (=> b!2991062 (= e!1880150 (Some!6737 (tuple2!34013 (++!8391 Nil!35088 (Cons!35088 (h!40508 s!11993) Nil!35088)) (t!234277 s!11993))))))

(declare-fun d!844705 () Bool)

(assert (=> d!844705 e!1880149))

(declare-fun res!1233685 () Bool)

(assert (=> d!844705 (=> res!1233685 e!1880149)))

(assert (=> d!844705 (= res!1233685 e!1880148)))

(declare-fun res!1233688 () Bool)

(assert (=> d!844705 (=> (not res!1233688) (not e!1880148))))

(assert (=> d!844705 (= res!1233688 (isDefined!5289 lt!1040428))))

(assert (=> d!844705 (= lt!1040428 e!1880150)))

(declare-fun c!491604 () Bool)

(declare-fun e!1880151 () Bool)

(assert (=> d!844705 (= c!491604 e!1880151)))

(declare-fun res!1233686 () Bool)

(assert (=> d!844705 (=> (not res!1233686) (not e!1880151))))

(assert (=> d!844705 (= res!1233686 (matchR!4229 (reg!9676 r!17423) (++!8391 Nil!35088 (Cons!35088 (h!40508 s!11993) Nil!35088))))))

(assert (=> d!844705 (validRegex!4080 (reg!9676 r!17423))))

(assert (=> d!844705 (= (findConcatSeparation!1132 (reg!9676 r!17423) lt!1040260 (++!8391 Nil!35088 (Cons!35088 (h!40508 s!11993) Nil!35088)) (t!234277 s!11993) s!11993) lt!1040428)))

(declare-fun b!2991063 () Bool)

(declare-fun lt!1040427 () Unit!49097)

(declare-fun lt!1040429 () Unit!49097)

(assert (=> b!2991063 (= lt!1040427 lt!1040429)))

(assert (=> b!2991063 (= (++!8391 (++!8391 (++!8391 Nil!35088 (Cons!35088 (h!40508 s!11993) Nil!35088)) (Cons!35088 (h!40508 (t!234277 s!11993)) Nil!35088)) (t!234277 (t!234277 s!11993))) s!11993)))

(assert (=> b!2991063 (= lt!1040429 (lemmaMoveElementToOtherListKeepsConcatEq!1003 (++!8391 Nil!35088 (Cons!35088 (h!40508 s!11993) Nil!35088)) (h!40508 (t!234277 s!11993)) (t!234277 (t!234277 s!11993)) s!11993))))

(assert (=> b!2991063 (= e!1880152 (findConcatSeparation!1132 (reg!9676 r!17423) lt!1040260 (++!8391 (++!8391 Nil!35088 (Cons!35088 (h!40508 s!11993) Nil!35088)) (Cons!35088 (h!40508 (t!234277 s!11993)) Nil!35088)) (t!234277 (t!234277 s!11993)) s!11993))))

(declare-fun b!2991064 () Bool)

(assert (=> b!2991064 (= e!1880151 (matchR!4229 lt!1040260 (t!234277 s!11993)))))

(assert (= (and d!844705 res!1233686) b!2991064))

(assert (= (and d!844705 c!491604) b!2991062))

(assert (= (and d!844705 (not c!491604)) b!2991057))

(assert (= (and b!2991057 c!491605) b!2991058))

(assert (= (and b!2991057 (not c!491605)) b!2991063))

(assert (= (and d!844705 res!1233688) b!2991061))

(assert (= (and b!2991061 res!1233687) b!2991059))

(assert (= (and b!2991059 res!1233684) b!2991060))

(assert (= (and d!844705 (not res!1233685)) b!2991056))

(declare-fun m!3347335 () Bool)

(assert (=> b!2991061 m!3347335))

(declare-fun m!3347337 () Bool)

(assert (=> b!2991061 m!3347337))

(declare-fun m!3347339 () Bool)

(assert (=> d!844705 m!3347339))

(assert (=> d!844705 m!3346739))

(declare-fun m!3347341 () Bool)

(assert (=> d!844705 m!3347341))

(assert (=> d!844705 m!3346737))

(assert (=> b!2991063 m!3346739))

(declare-fun m!3347343 () Bool)

(assert (=> b!2991063 m!3347343))

(assert (=> b!2991063 m!3347343))

(declare-fun m!3347345 () Bool)

(assert (=> b!2991063 m!3347345))

(assert (=> b!2991063 m!3346739))

(declare-fun m!3347347 () Bool)

(assert (=> b!2991063 m!3347347))

(assert (=> b!2991063 m!3347343))

(declare-fun m!3347349 () Bool)

(assert (=> b!2991063 m!3347349))

(assert (=> b!2991060 m!3347335))

(declare-fun m!3347351 () Bool)

(assert (=> b!2991060 m!3347351))

(declare-fun m!3347353 () Bool)

(assert (=> b!2991064 m!3347353))

(assert (=> b!2991059 m!3347335))

(declare-fun m!3347355 () Bool)

(assert (=> b!2991059 m!3347355))

(assert (=> b!2991056 m!3347339))

(assert (=> b!2990160 d!844705))

(declare-fun d!844707 () Bool)

(declare-fun nullableFct!855 (Regex!9347) Bool)

(assert (=> d!844707 (= (nullable!3016 (simplify!338 (reg!9676 r!17423))) (nullableFct!855 (simplify!338 (reg!9676 r!17423))))))

(declare-fun bs!527716 () Bool)

(assert (= bs!527716 d!844707))

(assert (=> bs!527716 m!3346635))

(declare-fun m!3347357 () Bool)

(assert (=> bs!527716 m!3347357))

(assert (=> b!2990484 d!844707))

(declare-fun d!844709 () Bool)

(assert (=> d!844709 (= (isEmpty!19356 (tail!4899 (_1!20138 lt!1040257))) ((_ is Nil!35088) (tail!4899 (_1!20138 lt!1040257))))))

(assert (=> b!2990312 d!844709))

(declare-fun d!844711 () Bool)

(assert (=> d!844711 (= (tail!4899 (_1!20138 lt!1040257)) (t!234277 (_1!20138 lt!1040257)))))

(assert (=> b!2990312 d!844711))

(declare-fun d!844713 () Bool)

(declare-fun lt!1040430 () Int)

(assert (=> d!844713 (>= lt!1040430 0)))

(declare-fun e!1880162 () Int)

(assert (=> d!844713 (= lt!1040430 e!1880162)))

(declare-fun c!491606 () Bool)

(assert (=> d!844713 (= c!491606 ((_ is Nil!35088) (t!234277 (_2!20138 lt!1040257))))))

(assert (=> d!844713 (= (size!26497 (t!234277 (_2!20138 lt!1040257))) lt!1040430)))

(declare-fun b!2991101 () Bool)

(assert (=> b!2991101 (= e!1880162 0)))

(declare-fun b!2991102 () Bool)

(assert (=> b!2991102 (= e!1880162 (+ 1 (size!26497 (t!234277 (t!234277 (_2!20138 lt!1040257))))))))

(assert (= (and d!844713 c!491606) b!2991101))

(assert (= (and d!844713 (not c!491606)) b!2991102))

(declare-fun m!3347359 () Bool)

(assert (=> b!2991102 m!3347359))

(assert (=> b!2990490 d!844713))

(declare-fun b!2991103 () Bool)

(declare-fun e!1880166 () Bool)

(assert (=> b!2991103 (= e!1880166 (matchR!4229 (derivativeStep!2614 (reg!9676 r!17423) (head!6673 (_1!20138 (get!10879 lt!1040307)))) (tail!4899 (_1!20138 (get!10879 lt!1040307)))))))

(declare-fun b!2991104 () Bool)

(declare-fun e!1880168 () Bool)

(assert (=> b!2991104 (= e!1880168 (not (= (head!6673 (_1!20138 (get!10879 lt!1040307))) (c!491293 (reg!9676 r!17423)))))))

(declare-fun b!2991105 () Bool)

(declare-fun res!1233692 () Bool)

(assert (=> b!2991105 (=> res!1233692 e!1880168)))

(assert (=> b!2991105 (= res!1233692 (not (isEmpty!19356 (tail!4899 (_1!20138 (get!10879 lt!1040307))))))))

(declare-fun b!2991106 () Bool)

(declare-fun res!1233691 () Bool)

(declare-fun e!1880163 () Bool)

(assert (=> b!2991106 (=> (not res!1233691) (not e!1880163))))

(assert (=> b!2991106 (= res!1233691 (isEmpty!19356 (tail!4899 (_1!20138 (get!10879 lt!1040307)))))))

(declare-fun bm!200124 () Bool)

(declare-fun call!200129 () Bool)

(assert (=> bm!200124 (= call!200129 (isEmpty!19356 (_1!20138 (get!10879 lt!1040307))))))

(declare-fun b!2991107 () Bool)

(declare-fun e!1880167 () Bool)

(declare-fun lt!1040431 () Bool)

(assert (=> b!2991107 (= e!1880167 (= lt!1040431 call!200129))))

(declare-fun b!2991109 () Bool)

(declare-fun e!1880164 () Bool)

(assert (=> b!2991109 (= e!1880167 e!1880164)))

(declare-fun c!491607 () Bool)

(assert (=> b!2991109 (= c!491607 ((_ is EmptyLang!9347) (reg!9676 r!17423)))))

(declare-fun b!2991110 () Bool)

(declare-fun res!1233690 () Bool)

(assert (=> b!2991110 (=> (not res!1233690) (not e!1880163))))

(assert (=> b!2991110 (= res!1233690 (not call!200129))))

(declare-fun d!844715 () Bool)

(assert (=> d!844715 e!1880167))

(declare-fun c!491608 () Bool)

(assert (=> d!844715 (= c!491608 ((_ is EmptyExpr!9347) (reg!9676 r!17423)))))

(assert (=> d!844715 (= lt!1040431 e!1880166)))

(declare-fun c!491609 () Bool)

(assert (=> d!844715 (= c!491609 (isEmpty!19356 (_1!20138 (get!10879 lt!1040307))))))

(assert (=> d!844715 (validRegex!4080 (reg!9676 r!17423))))

(assert (=> d!844715 (= (matchR!4229 (reg!9676 r!17423) (_1!20138 (get!10879 lt!1040307))) lt!1040431)))

(declare-fun b!2991108 () Bool)

(declare-fun e!1880169 () Bool)

(assert (=> b!2991108 (= e!1880169 e!1880168)))

(declare-fun res!1233689 () Bool)

(assert (=> b!2991108 (=> res!1233689 e!1880168)))

(assert (=> b!2991108 (= res!1233689 call!200129)))

(declare-fun b!2991111 () Bool)

(declare-fun res!1233695 () Bool)

(declare-fun e!1880165 () Bool)

(assert (=> b!2991111 (=> res!1233695 e!1880165)))

(assert (=> b!2991111 (= res!1233695 e!1880163)))

(declare-fun res!1233693 () Bool)

(assert (=> b!2991111 (=> (not res!1233693) (not e!1880163))))

(assert (=> b!2991111 (= res!1233693 lt!1040431)))

(declare-fun b!2991112 () Bool)

(assert (=> b!2991112 (= e!1880166 (nullable!3016 (reg!9676 r!17423)))))

(declare-fun b!2991113 () Bool)

(assert (=> b!2991113 (= e!1880165 e!1880169)))

(declare-fun res!1233694 () Bool)

(assert (=> b!2991113 (=> (not res!1233694) (not e!1880169))))

(assert (=> b!2991113 (= res!1233694 (not lt!1040431))))

(declare-fun b!2991114 () Bool)

(assert (=> b!2991114 (= e!1880163 (= (head!6673 (_1!20138 (get!10879 lt!1040307))) (c!491293 (reg!9676 r!17423))))))

(declare-fun b!2991115 () Bool)

(assert (=> b!2991115 (= e!1880164 (not lt!1040431))))

(declare-fun b!2991116 () Bool)

(declare-fun res!1233696 () Bool)

(assert (=> b!2991116 (=> res!1233696 e!1880165)))

(assert (=> b!2991116 (= res!1233696 (not ((_ is ElementMatch!9347) (reg!9676 r!17423))))))

(assert (=> b!2991116 (= e!1880164 e!1880165)))

(assert (= (and d!844715 c!491609) b!2991112))

(assert (= (and d!844715 (not c!491609)) b!2991103))

(assert (= (and d!844715 c!491608) b!2991107))

(assert (= (and d!844715 (not c!491608)) b!2991109))

(assert (= (and b!2991109 c!491607) b!2991115))

(assert (= (and b!2991109 (not c!491607)) b!2991116))

(assert (= (and b!2991116 (not res!1233696)) b!2991111))

(assert (= (and b!2991111 res!1233693) b!2991110))

(assert (= (and b!2991110 res!1233690) b!2991106))

(assert (= (and b!2991106 res!1233691) b!2991114))

(assert (= (and b!2991111 (not res!1233695)) b!2991113))

(assert (= (and b!2991113 res!1233694) b!2991108))

(assert (= (and b!2991108 (not res!1233689)) b!2991105))

(assert (= (and b!2991105 (not res!1233692)) b!2991104))

(assert (= (or b!2991107 b!2991108 b!2991110) bm!200124))

(declare-fun m!3347361 () Bool)

(assert (=> d!844715 m!3347361))

(assert (=> d!844715 m!3346737))

(declare-fun m!3347363 () Bool)

(assert (=> b!2991105 m!3347363))

(assert (=> b!2991105 m!3347363))

(declare-fun m!3347365 () Bool)

(assert (=> b!2991105 m!3347365))

(declare-fun m!3347367 () Bool)

(assert (=> b!2991114 m!3347367))

(assert (=> b!2991106 m!3347363))

(assert (=> b!2991106 m!3347363))

(assert (=> b!2991106 m!3347365))

(assert (=> bm!200124 m!3347361))

(assert (=> b!2991104 m!3347367))

(assert (=> b!2991103 m!3347367))

(assert (=> b!2991103 m!3347367))

(declare-fun m!3347369 () Bool)

(assert (=> b!2991103 m!3347369))

(assert (=> b!2991103 m!3347363))

(assert (=> b!2991103 m!3347369))

(assert (=> b!2991103 m!3347363))

(declare-fun m!3347371 () Bool)

(assert (=> b!2991103 m!3347371))

(assert (=> b!2991112 m!3346681))

(assert (=> b!2990158 d!844715))

(declare-fun d!844717 () Bool)

(assert (=> d!844717 (= (get!10879 lt!1040307) (v!34871 lt!1040307))))

(assert (=> b!2990158 d!844717))

(assert (=> b!2990310 d!844667))

(declare-fun d!844719 () Bool)

(declare-fun lt!1040432 () Int)

(assert (=> d!844719 (>= lt!1040432 0)))

(declare-fun e!1880170 () Int)

(assert (=> d!844719 (= lt!1040432 e!1880170)))

(declare-fun c!491610 () Bool)

(assert (=> d!844719 (= c!491610 ((_ is Nil!35088) lt!1040342))))

(assert (=> d!844719 (= (size!26497 lt!1040342) lt!1040432)))

(declare-fun b!2991117 () Bool)

(assert (=> b!2991117 (= e!1880170 0)))

(declare-fun b!2991118 () Bool)

(assert (=> b!2991118 (= e!1880170 (+ 1 (size!26497 (t!234277 lt!1040342))))))

(assert (= (and d!844719 c!491610) b!2991117))

(assert (= (and d!844719 (not c!491610)) b!2991118))

(declare-fun m!3347373 () Bool)

(assert (=> b!2991118 m!3347373))

(assert (=> b!2990333 d!844719))

(assert (=> b!2990333 d!844511))

(assert (=> b!2990333 d!844527))

(declare-fun b!2991119 () Bool)

(declare-fun e!1880174 () Bool)

(assert (=> b!2991119 (= e!1880174 (matchR!4229 (derivativeStep!2614 lt!1040260 (head!6673 (_2!20138 (get!10879 lt!1040307)))) (tail!4899 (_2!20138 (get!10879 lt!1040307)))))))

(declare-fun b!2991120 () Bool)

(declare-fun e!1880176 () Bool)

(assert (=> b!2991120 (= e!1880176 (not (= (head!6673 (_2!20138 (get!10879 lt!1040307))) (c!491293 lt!1040260))))))

(declare-fun b!2991121 () Bool)

(declare-fun res!1233700 () Bool)

(assert (=> b!2991121 (=> res!1233700 e!1880176)))

(assert (=> b!2991121 (= res!1233700 (not (isEmpty!19356 (tail!4899 (_2!20138 (get!10879 lt!1040307))))))))

(declare-fun b!2991122 () Bool)

(declare-fun res!1233699 () Bool)

(declare-fun e!1880171 () Bool)

(assert (=> b!2991122 (=> (not res!1233699) (not e!1880171))))

(assert (=> b!2991122 (= res!1233699 (isEmpty!19356 (tail!4899 (_2!20138 (get!10879 lt!1040307)))))))

(declare-fun bm!200125 () Bool)

(declare-fun call!200130 () Bool)

(assert (=> bm!200125 (= call!200130 (isEmpty!19356 (_2!20138 (get!10879 lt!1040307))))))

(declare-fun b!2991123 () Bool)

(declare-fun e!1880175 () Bool)

(declare-fun lt!1040433 () Bool)

(assert (=> b!2991123 (= e!1880175 (= lt!1040433 call!200130))))

(declare-fun b!2991125 () Bool)

(declare-fun e!1880172 () Bool)

(assert (=> b!2991125 (= e!1880175 e!1880172)))

(declare-fun c!491611 () Bool)

(assert (=> b!2991125 (= c!491611 ((_ is EmptyLang!9347) lt!1040260))))

(declare-fun b!2991126 () Bool)

(declare-fun res!1233698 () Bool)

(assert (=> b!2991126 (=> (not res!1233698) (not e!1880171))))

(assert (=> b!2991126 (= res!1233698 (not call!200130))))

(declare-fun d!844721 () Bool)

(assert (=> d!844721 e!1880175))

(declare-fun c!491612 () Bool)

(assert (=> d!844721 (= c!491612 ((_ is EmptyExpr!9347) lt!1040260))))

(assert (=> d!844721 (= lt!1040433 e!1880174)))

(declare-fun c!491613 () Bool)

(assert (=> d!844721 (= c!491613 (isEmpty!19356 (_2!20138 (get!10879 lt!1040307))))))

(assert (=> d!844721 (validRegex!4080 lt!1040260)))

(assert (=> d!844721 (= (matchR!4229 lt!1040260 (_2!20138 (get!10879 lt!1040307))) lt!1040433)))

(declare-fun b!2991124 () Bool)

(declare-fun e!1880177 () Bool)

(assert (=> b!2991124 (= e!1880177 e!1880176)))

(declare-fun res!1233697 () Bool)

(assert (=> b!2991124 (=> res!1233697 e!1880176)))

(assert (=> b!2991124 (= res!1233697 call!200130)))

(declare-fun b!2991127 () Bool)

(declare-fun res!1233703 () Bool)

(declare-fun e!1880173 () Bool)

(assert (=> b!2991127 (=> res!1233703 e!1880173)))

(assert (=> b!2991127 (= res!1233703 e!1880171)))

(declare-fun res!1233701 () Bool)

(assert (=> b!2991127 (=> (not res!1233701) (not e!1880171))))

(assert (=> b!2991127 (= res!1233701 lt!1040433)))

(declare-fun b!2991128 () Bool)

(assert (=> b!2991128 (= e!1880174 (nullable!3016 lt!1040260))))

(declare-fun b!2991129 () Bool)

(assert (=> b!2991129 (= e!1880173 e!1880177)))

(declare-fun res!1233702 () Bool)

(assert (=> b!2991129 (=> (not res!1233702) (not e!1880177))))

(assert (=> b!2991129 (= res!1233702 (not lt!1040433))))

(declare-fun b!2991130 () Bool)

(assert (=> b!2991130 (= e!1880171 (= (head!6673 (_2!20138 (get!10879 lt!1040307))) (c!491293 lt!1040260)))))

(declare-fun b!2991131 () Bool)

(assert (=> b!2991131 (= e!1880172 (not lt!1040433))))

(declare-fun b!2991132 () Bool)

(declare-fun res!1233704 () Bool)

(assert (=> b!2991132 (=> res!1233704 e!1880173)))

(assert (=> b!2991132 (= res!1233704 (not ((_ is ElementMatch!9347) lt!1040260)))))

(assert (=> b!2991132 (= e!1880172 e!1880173)))

(assert (= (and d!844721 c!491613) b!2991128))

(assert (= (and d!844721 (not c!491613)) b!2991119))

(assert (= (and d!844721 c!491612) b!2991123))

(assert (= (and d!844721 (not c!491612)) b!2991125))

(assert (= (and b!2991125 c!491611) b!2991131))

(assert (= (and b!2991125 (not c!491611)) b!2991132))

(assert (= (and b!2991132 (not res!1233704)) b!2991127))

(assert (= (and b!2991127 res!1233701) b!2991126))

(assert (= (and b!2991126 res!1233698) b!2991122))

(assert (= (and b!2991122 res!1233699) b!2991130))

(assert (= (and b!2991127 (not res!1233703)) b!2991129))

(assert (= (and b!2991129 res!1233702) b!2991124))

(assert (= (and b!2991124 (not res!1233697)) b!2991121))

(assert (= (and b!2991121 (not res!1233700)) b!2991120))

(assert (= (or b!2991123 b!2991124 b!2991126) bm!200125))

(declare-fun m!3347375 () Bool)

(assert (=> d!844721 m!3347375))

(assert (=> d!844721 m!3346903))

(declare-fun m!3347377 () Bool)

(assert (=> b!2991121 m!3347377))

(assert (=> b!2991121 m!3347377))

(declare-fun m!3347379 () Bool)

(assert (=> b!2991121 m!3347379))

(declare-fun m!3347381 () Bool)

(assert (=> b!2991130 m!3347381))

(assert (=> b!2991122 m!3347377))

(assert (=> b!2991122 m!3347377))

(assert (=> b!2991122 m!3347379))

(assert (=> bm!200125 m!3347375))

(assert (=> b!2991120 m!3347381))

(assert (=> b!2991119 m!3347381))

(assert (=> b!2991119 m!3347381))

(declare-fun m!3347383 () Bool)

(assert (=> b!2991119 m!3347383))

(assert (=> b!2991119 m!3347377))

(assert (=> b!2991119 m!3347383))

(assert (=> b!2991119 m!3347377))

(declare-fun m!3347385 () Bool)

(assert (=> b!2991119 m!3347385))

(assert (=> b!2991128 m!3346915))

(assert (=> b!2990156 d!844721))

(assert (=> b!2990156 d!844717))

(assert (=> bm!200030 d!844451))

(assert (=> d!844517 d!844515))

(assert (=> d!844517 d!844513))

(declare-fun d!844723 () Bool)

(assert (=> d!844723 (= (matchR!4229 r!17423 s!11993) (matchRSpec!1484 r!17423 s!11993))))

(assert (=> d!844723 true))

(declare-fun _$88!3310 () Unit!49097)

(assert (=> d!844723 (= (choose!17749 r!17423 s!11993) _$88!3310)))

(declare-fun bs!527717 () Bool)

(assert (= bs!527717 d!844723))

(assert (=> bs!527717 m!3346619))

(assert (=> bs!527717 m!3346617))

(assert (=> d!844517 d!844723))

(assert (=> d!844517 d!844453))

(declare-fun d!844725 () Bool)

(assert (=> d!844725 (= (isEmptyLang!443 (ite c!491446 lt!1040363 (ite c!491441 lt!1040362 lt!1040365))) ((_ is EmptyLang!9347) (ite c!491446 lt!1040363 (ite c!491441 lt!1040362 lt!1040365))))))

(assert (=> bm!200024 d!844725))

(declare-fun d!844727 () Bool)

(assert (=> d!844727 (= (isEmptyExpr!460 (ite c!491446 lt!1040363 lt!1040367)) ((_ is EmptyExpr!9347) (ite c!491446 lt!1040363 lt!1040367)))))

(assert (=> bm!200028 d!844727))

(declare-fun d!844729 () Bool)

(assert (=> d!844729 (= (Exists!1620 lambda!111799) (choose!17746 lambda!111799))))

(declare-fun bs!527718 () Bool)

(assert (= bs!527718 d!844729))

(declare-fun m!3347387 () Bool)

(assert (=> bs!527718 m!3347387))

(assert (=> d!844493 d!844729))

(declare-fun d!844731 () Bool)

(assert (=> d!844731 (= (Exists!1620 lambda!111800) (choose!17746 lambda!111800))))

(declare-fun bs!527719 () Bool)

(assert (= bs!527719 d!844731))

(declare-fun m!3347389 () Bool)

(assert (=> bs!527719 m!3347389))

(assert (=> d!844493 d!844731))

(declare-fun bs!527720 () Bool)

(declare-fun d!844733 () Bool)

(assert (= bs!527720 (and d!844733 d!844493)))

(declare-fun lambda!111824 () Int)

(assert (=> bs!527720 (not (= lambda!111824 lambda!111800))))

(declare-fun bs!527721 () Bool)

(assert (= bs!527721 (and d!844733 b!2989869)))

(assert (=> bs!527721 (= (= (Star!9347 (reg!9676 r!17423)) lt!1040260) (= lambda!111824 lambda!111775))))

(assert (=> bs!527720 (= lambda!111824 lambda!111799)))

(declare-fun bs!527722 () Bool)

(assert (= bs!527722 (and d!844733 d!844483)))

(assert (=> bs!527722 (= (= (Star!9347 (reg!9676 r!17423)) lt!1040260) (= lambda!111824 lambda!111788))))

(declare-fun bs!527723 () Bool)

(assert (= bs!527723 (and d!844733 b!2990380)))

(assert (=> bs!527723 (not (= lambda!111824 lambda!111806))))

(declare-fun bs!527724 () Bool)

(assert (= bs!527724 (and d!844733 b!2990383)))

(assert (=> bs!527724 (not (= lambda!111824 lambda!111805))))

(assert (=> bs!527721 (not (= lambda!111824 lambda!111776))))

(assert (=> d!844733 true))

(assert (=> d!844733 true))

(declare-fun lambda!111825 () Int)

(assert (=> bs!527720 (= lambda!111825 lambda!111800)))

(declare-fun bs!527725 () Bool)

(assert (= bs!527725 d!844733))

(assert (=> bs!527725 (not (= lambda!111825 lambda!111824))))

(assert (=> bs!527721 (not (= lambda!111825 lambda!111775))))

(assert (=> bs!527720 (not (= lambda!111825 lambda!111799))))

(assert (=> bs!527722 (not (= lambda!111825 lambda!111788))))

(assert (=> bs!527723 (not (= lambda!111825 lambda!111806))))

(assert (=> bs!527724 (= (= (Star!9347 (reg!9676 r!17423)) r!17423) (= lambda!111825 lambda!111805))))

(assert (=> bs!527721 (= (= (Star!9347 (reg!9676 r!17423)) lt!1040260) (= lambda!111825 lambda!111776))))

(assert (=> d!844733 true))

(assert (=> d!844733 true))

(assert (=> d!844733 (= (Exists!1620 lambda!111824) (Exists!1620 lambda!111825))))

(assert (=> d!844733 true))

(declare-fun _$91!458 () Unit!49097)

(assert (=> d!844733 (= (choose!17747 (reg!9676 r!17423) s!11993) _$91!458)))

(declare-fun m!3347391 () Bool)

(assert (=> bs!527725 m!3347391))

(declare-fun m!3347393 () Bool)

(assert (=> bs!527725 m!3347393))

(assert (=> d!844493 d!844733))

(assert (=> d!844493 d!844659))

(declare-fun d!844735 () Bool)

(assert (=> d!844735 (= (isEmptyExpr!460 lt!1040365) ((_ is EmptyExpr!9347) lt!1040365))))

(assert (=> b!2990455 d!844735))

(declare-fun b!2991143 () Bool)

(declare-fun e!1880195 () Bool)

(declare-fun call!200136 () Bool)

(assert (=> b!2991143 (= e!1880195 call!200136)))

(declare-fun b!2991144 () Bool)

(declare-fun c!491616 () Bool)

(declare-fun call!200131 () Bool)

(assert (=> b!2991144 (= c!491616 call!200131)))

(declare-fun e!1880185 () Regex!9347)

(declare-fun e!1880189 () Regex!9347)

(assert (=> b!2991144 (= e!1880185 e!1880189)))

(declare-fun b!2991145 () Bool)

(declare-fun e!1880190 () Regex!9347)

(assert (=> b!2991145 (= e!1880190 EmptyExpr!9347)))

(declare-fun b!2991146 () Bool)

(declare-fun e!1880187 () Regex!9347)

(declare-fun lt!1040437 () Regex!9347)

(assert (=> b!2991146 (= e!1880187 lt!1040437)))

(declare-fun b!2991147 () Bool)

(declare-fun e!1880186 () Regex!9347)

(declare-fun e!1880184 () Regex!9347)

(assert (=> b!2991147 (= e!1880186 e!1880184)))

(declare-fun c!491620 () Bool)

(assert (=> b!2991147 (= c!491620 ((_ is ElementMatch!9347) (ite c!491441 (regTwo!19207 (reg!9676 r!17423)) (regOne!19206 (reg!9676 r!17423)))))))

(declare-fun b!2991149 () Bool)

(declare-fun e!1880191 () Regex!9347)

(assert (=> b!2991149 (= e!1880191 EmptyLang!9347)))

(declare-fun b!2991150 () Bool)

(declare-fun e!1880183 () Regex!9347)

(assert (=> b!2991150 (= e!1880187 e!1880183)))

(declare-fun c!491615 () Bool)

(assert (=> b!2991150 (= c!491615 (isEmptyExpr!460 lt!1040437))))

(declare-fun call!200132 () Regex!9347)

(declare-fun c!491614 () Bool)

(declare-fun c!491619 () Bool)

(declare-fun bm!200126 () Bool)

(assert (=> bm!200126 (= call!200132 (simplify!338 (ite c!491619 (reg!9676 (ite c!491441 (regTwo!19207 (reg!9676 r!17423)) (regOne!19206 (reg!9676 r!17423)))) (ite c!491614 (regOne!19207 (ite c!491441 (regTwo!19207 (reg!9676 r!17423)) (regOne!19206 (reg!9676 r!17423)))) (regTwo!19206 (ite c!491441 (regTwo!19207 (reg!9676 r!17423)) (regOne!19206 (reg!9676 r!17423))))))))))

(declare-fun lt!1040434 () Regex!9347)

(declare-fun call!200135 () Bool)

(declare-fun lt!1040435 () Regex!9347)

(declare-fun bm!200127 () Bool)

(assert (=> bm!200127 (= call!200135 (isEmptyLang!443 (ite c!491619 lt!1040435 (ite c!491614 lt!1040434 lt!1040437))))))

(declare-fun b!2991151 () Bool)

(declare-fun e!1880188 () Regex!9347)

(assert (=> b!2991151 (= e!1880188 e!1880185)))

(declare-fun call!200134 () Regex!9347)

(assert (=> b!2991151 (= lt!1040434 call!200134)))

(declare-fun lt!1040436 () Regex!9347)

(declare-fun call!200133 () Regex!9347)

(assert (=> b!2991151 (= lt!1040436 call!200133)))

(declare-fun c!491624 () Bool)

(declare-fun call!200137 () Bool)

(assert (=> b!2991151 (= c!491624 call!200137)))

(declare-fun b!2991152 () Bool)

(assert (=> b!2991152 (= e!1880184 (ite c!491441 (regTwo!19207 (reg!9676 r!17423)) (regOne!19206 (reg!9676 r!17423))))))

(declare-fun b!2991153 () Bool)

(assert (=> b!2991153 (= c!491614 ((_ is Union!9347) (ite c!491441 (regTwo!19207 (reg!9676 r!17423)) (regOne!19206 (reg!9676 r!17423)))))))

(declare-fun e!1880194 () Regex!9347)

(assert (=> b!2991153 (= e!1880194 e!1880188)))

(declare-fun b!2991154 () Bool)

(assert (=> b!2991154 (= e!1880189 lt!1040434)))

(declare-fun bm!200128 () Bool)

(assert (=> bm!200128 (= call!200137 call!200135)))

(declare-fun b!2991155 () Bool)

(assert (=> b!2991155 (= e!1880188 e!1880191)))

(declare-fun lt!1040439 () Regex!9347)

(assert (=> b!2991155 (= lt!1040439 call!200133)))

(assert (=> b!2991155 (= lt!1040437 call!200134)))

(declare-fun res!1233717 () Bool)

(assert (=> b!2991155 (= res!1233717 call!200131)))

(declare-fun e!1880193 () Bool)

(assert (=> b!2991155 (=> res!1233717 e!1880193)))

(declare-fun c!491622 () Bool)

(assert (=> b!2991155 (= c!491622 e!1880193)))

(declare-fun b!2991156 () Bool)

(assert (=> b!2991156 (= e!1880189 (Union!9347 lt!1040434 lt!1040436))))

(declare-fun b!2991157 () Bool)

(assert (=> b!2991157 (= e!1880190 e!1880194)))

(assert (=> b!2991157 (= c!491619 ((_ is Star!9347) (ite c!491441 (regTwo!19207 (reg!9676 r!17423)) (regOne!19206 (reg!9676 r!17423)))))))

(declare-fun b!2991158 () Bool)

(assert (=> b!2991158 (= e!1880186 EmptyLang!9347)))

(declare-fun bm!200129 () Bool)

(assert (=> bm!200129 (= call!200134 call!200132)))

(declare-fun b!2991159 () Bool)

(assert (=> b!2991159 (= e!1880183 (Concat!14668 lt!1040439 lt!1040437))))

(declare-fun b!2991160 () Bool)

(declare-fun c!491621 () Bool)

(assert (=> b!2991160 (= c!491621 call!200136)))

(assert (=> b!2991160 (= e!1880191 e!1880187)))

(declare-fun b!2991161 () Bool)

(assert (=> b!2991161 (= e!1880185 lt!1040436)))

(declare-fun b!2991162 () Bool)

(assert (=> b!2991162 (= e!1880193 call!200137)))

(declare-fun b!2991163 () Bool)

(declare-fun c!491618 () Bool)

(assert (=> b!2991163 (= c!491618 e!1880195)))

(declare-fun res!1233716 () Bool)

(assert (=> b!2991163 (=> res!1233716 e!1880195)))

(assert (=> b!2991163 (= res!1233716 call!200135)))

(assert (=> b!2991163 (= lt!1040435 call!200132)))

(declare-fun e!1880192 () Regex!9347)

(assert (=> b!2991163 (= e!1880194 e!1880192)))

(declare-fun b!2991164 () Bool)

(assert (=> b!2991164 (= e!1880192 EmptyExpr!9347)))

(declare-fun e!1880182 () Bool)

(declare-fun b!2991165 () Bool)

(declare-fun lt!1040438 () Regex!9347)

(assert (=> b!2991165 (= e!1880182 (= (nullable!3016 lt!1040438) (nullable!3016 (ite c!491441 (regTwo!19207 (reg!9676 r!17423)) (regOne!19206 (reg!9676 r!17423))))))))

(declare-fun b!2991166 () Bool)

(assert (=> b!2991166 (= e!1880183 lt!1040439)))

(declare-fun bm!200130 () Bool)

(assert (=> bm!200130 (= call!200133 (simplify!338 (ite c!491614 (regTwo!19207 (ite c!491441 (regTwo!19207 (reg!9676 r!17423)) (regOne!19206 (reg!9676 r!17423)))) (regOne!19206 (ite c!491441 (regTwo!19207 (reg!9676 r!17423)) (regOne!19206 (reg!9676 r!17423)))))))))

(declare-fun b!2991167 () Bool)

(assert (=> b!2991167 (= e!1880192 (Star!9347 lt!1040435))))

(declare-fun d!844737 () Bool)

(assert (=> d!844737 e!1880182))

(declare-fun res!1233715 () Bool)

(assert (=> d!844737 (=> (not res!1233715) (not e!1880182))))

(assert (=> d!844737 (= res!1233715 (validRegex!4080 lt!1040438))))

(assert (=> d!844737 (= lt!1040438 e!1880186)))

(declare-fun c!491623 () Bool)

(assert (=> d!844737 (= c!491623 ((_ is EmptyLang!9347) (ite c!491441 (regTwo!19207 (reg!9676 r!17423)) (regOne!19206 (reg!9676 r!17423)))))))

(assert (=> d!844737 (validRegex!4080 (ite c!491441 (regTwo!19207 (reg!9676 r!17423)) (regOne!19206 (reg!9676 r!17423))))))

(assert (=> d!844737 (= (simplify!338 (ite c!491441 (regTwo!19207 (reg!9676 r!17423)) (regOne!19206 (reg!9676 r!17423)))) lt!1040438)))

(declare-fun b!2991148 () Bool)

(declare-fun c!491617 () Bool)

(assert (=> b!2991148 (= c!491617 ((_ is EmptyExpr!9347) (ite c!491441 (regTwo!19207 (reg!9676 r!17423)) (regOne!19206 (reg!9676 r!17423)))))))

(assert (=> b!2991148 (= e!1880184 e!1880190)))

(declare-fun bm!200131 () Bool)

(assert (=> bm!200131 (= call!200136 (isEmptyExpr!460 (ite c!491619 lt!1040435 lt!1040439)))))

(declare-fun bm!200132 () Bool)

(assert (=> bm!200132 (= call!200131 (isEmptyLang!443 (ite c!491614 lt!1040436 lt!1040439)))))

(assert (= (and d!844737 c!491623) b!2991158))

(assert (= (and d!844737 (not c!491623)) b!2991147))

(assert (= (and b!2991147 c!491620) b!2991152))

(assert (= (and b!2991147 (not c!491620)) b!2991148))

(assert (= (and b!2991148 c!491617) b!2991145))

(assert (= (and b!2991148 (not c!491617)) b!2991157))

(assert (= (and b!2991157 c!491619) b!2991163))

(assert (= (and b!2991157 (not c!491619)) b!2991153))

(assert (= (and b!2991163 (not res!1233716)) b!2991143))

(assert (= (and b!2991163 c!491618) b!2991164))

(assert (= (and b!2991163 (not c!491618)) b!2991167))

(assert (= (and b!2991153 c!491614) b!2991151))

(assert (= (and b!2991153 (not c!491614)) b!2991155))

(assert (= (and b!2991151 c!491624) b!2991161))

(assert (= (and b!2991151 (not c!491624)) b!2991144))

(assert (= (and b!2991144 c!491616) b!2991154))

(assert (= (and b!2991144 (not c!491616)) b!2991156))

(assert (= (and b!2991155 (not res!1233717)) b!2991162))

(assert (= (and b!2991155 c!491622) b!2991149))

(assert (= (and b!2991155 (not c!491622)) b!2991160))

(assert (= (and b!2991160 c!491621) b!2991146))

(assert (= (and b!2991160 (not c!491621)) b!2991150))

(assert (= (and b!2991150 c!491615) b!2991166))

(assert (= (and b!2991150 (not c!491615)) b!2991159))

(assert (= (or b!2991151 b!2991155) bm!200129))

(assert (= (or b!2991151 b!2991155) bm!200130))

(assert (= (or b!2991144 b!2991155) bm!200132))

(assert (= (or b!2991151 b!2991162) bm!200128))

(assert (= (or b!2991143 b!2991160) bm!200131))

(assert (= (or b!2991163 bm!200129) bm!200126))

(assert (= (or b!2991163 bm!200128) bm!200127))

(assert (= (and d!844737 res!1233715) b!2991165))

(declare-fun m!3347395 () Bool)

(assert (=> d!844737 m!3347395))

(declare-fun m!3347397 () Bool)

(assert (=> d!844737 m!3347397))

(declare-fun m!3347399 () Bool)

(assert (=> bm!200127 m!3347399))

(declare-fun m!3347401 () Bool)

(assert (=> b!2991165 m!3347401))

(declare-fun m!3347403 () Bool)

(assert (=> b!2991165 m!3347403))

(declare-fun m!3347405 () Bool)

(assert (=> b!2991150 m!3347405))

(declare-fun m!3347407 () Bool)

(assert (=> bm!200132 m!3347407))

(declare-fun m!3347409 () Bool)

(assert (=> bm!200131 m!3347409))

(declare-fun m!3347411 () Bool)

(assert (=> bm!200130 m!3347411))

(declare-fun m!3347413 () Bool)

(assert (=> bm!200126 m!3347413))

(assert (=> bm!200027 d!844737))

(assert (=> b!2990477 d!844709))

(assert (=> b!2990477 d!844711))

(declare-fun b!2991168 () Bool)

(declare-fun e!1880199 () Bool)

(assert (=> b!2991168 (= e!1880199 (matchR!4229 (derivativeStep!2614 (derivativeStep!2614 (simplify!338 (reg!9676 r!17423)) (head!6673 (_1!20138 lt!1040257))) (head!6673 (tail!4899 (_1!20138 lt!1040257)))) (tail!4899 (tail!4899 (_1!20138 lt!1040257)))))))

(declare-fun b!2991169 () Bool)

(declare-fun e!1880201 () Bool)

(assert (=> b!2991169 (= e!1880201 (not (= (head!6673 (tail!4899 (_1!20138 lt!1040257))) (c!491293 (derivativeStep!2614 (simplify!338 (reg!9676 r!17423)) (head!6673 (_1!20138 lt!1040257)))))))))

(declare-fun b!2991170 () Bool)

(declare-fun res!1233721 () Bool)

(assert (=> b!2991170 (=> res!1233721 e!1880201)))

(assert (=> b!2991170 (= res!1233721 (not (isEmpty!19356 (tail!4899 (tail!4899 (_1!20138 lt!1040257))))))))

(declare-fun b!2991171 () Bool)

(declare-fun res!1233720 () Bool)

(declare-fun e!1880196 () Bool)

(assert (=> b!2991171 (=> (not res!1233720) (not e!1880196))))

(assert (=> b!2991171 (= res!1233720 (isEmpty!19356 (tail!4899 (tail!4899 (_1!20138 lt!1040257)))))))

(declare-fun bm!200133 () Bool)

(declare-fun call!200138 () Bool)

(assert (=> bm!200133 (= call!200138 (isEmpty!19356 (tail!4899 (_1!20138 lt!1040257))))))

(declare-fun b!2991172 () Bool)

(declare-fun e!1880200 () Bool)

(declare-fun lt!1040440 () Bool)

(assert (=> b!2991172 (= e!1880200 (= lt!1040440 call!200138))))

(declare-fun b!2991174 () Bool)

(declare-fun e!1880197 () Bool)

(assert (=> b!2991174 (= e!1880200 e!1880197)))

(declare-fun c!491625 () Bool)

(assert (=> b!2991174 (= c!491625 ((_ is EmptyLang!9347) (derivativeStep!2614 (simplify!338 (reg!9676 r!17423)) (head!6673 (_1!20138 lt!1040257)))))))

(declare-fun b!2991175 () Bool)

(declare-fun res!1233719 () Bool)

(assert (=> b!2991175 (=> (not res!1233719) (not e!1880196))))

(assert (=> b!2991175 (= res!1233719 (not call!200138))))

(declare-fun d!844739 () Bool)

(assert (=> d!844739 e!1880200))

(declare-fun c!491626 () Bool)

(assert (=> d!844739 (= c!491626 ((_ is EmptyExpr!9347) (derivativeStep!2614 (simplify!338 (reg!9676 r!17423)) (head!6673 (_1!20138 lt!1040257)))))))

(assert (=> d!844739 (= lt!1040440 e!1880199)))

(declare-fun c!491627 () Bool)

(assert (=> d!844739 (= c!491627 (isEmpty!19356 (tail!4899 (_1!20138 lt!1040257))))))

(assert (=> d!844739 (validRegex!4080 (derivativeStep!2614 (simplify!338 (reg!9676 r!17423)) (head!6673 (_1!20138 lt!1040257))))))

(assert (=> d!844739 (= (matchR!4229 (derivativeStep!2614 (simplify!338 (reg!9676 r!17423)) (head!6673 (_1!20138 lt!1040257))) (tail!4899 (_1!20138 lt!1040257))) lt!1040440)))

(declare-fun b!2991173 () Bool)

(declare-fun e!1880202 () Bool)

(assert (=> b!2991173 (= e!1880202 e!1880201)))

(declare-fun res!1233718 () Bool)

(assert (=> b!2991173 (=> res!1233718 e!1880201)))

(assert (=> b!2991173 (= res!1233718 call!200138)))

(declare-fun b!2991176 () Bool)

(declare-fun res!1233724 () Bool)

(declare-fun e!1880198 () Bool)

(assert (=> b!2991176 (=> res!1233724 e!1880198)))

(assert (=> b!2991176 (= res!1233724 e!1880196)))

(declare-fun res!1233722 () Bool)

(assert (=> b!2991176 (=> (not res!1233722) (not e!1880196))))

(assert (=> b!2991176 (= res!1233722 lt!1040440)))

(declare-fun b!2991177 () Bool)

(assert (=> b!2991177 (= e!1880199 (nullable!3016 (derivativeStep!2614 (simplify!338 (reg!9676 r!17423)) (head!6673 (_1!20138 lt!1040257)))))))

(declare-fun b!2991178 () Bool)

(assert (=> b!2991178 (= e!1880198 e!1880202)))

(declare-fun res!1233723 () Bool)

(assert (=> b!2991178 (=> (not res!1233723) (not e!1880202))))

(assert (=> b!2991178 (= res!1233723 (not lt!1040440))))

(declare-fun b!2991179 () Bool)

(assert (=> b!2991179 (= e!1880196 (= (head!6673 (tail!4899 (_1!20138 lt!1040257))) (c!491293 (derivativeStep!2614 (simplify!338 (reg!9676 r!17423)) (head!6673 (_1!20138 lt!1040257))))))))

(declare-fun b!2991180 () Bool)

(assert (=> b!2991180 (= e!1880197 (not lt!1040440))))

(declare-fun b!2991181 () Bool)

(declare-fun res!1233725 () Bool)

(assert (=> b!2991181 (=> res!1233725 e!1880198)))

(assert (=> b!2991181 (= res!1233725 (not ((_ is ElementMatch!9347) (derivativeStep!2614 (simplify!338 (reg!9676 r!17423)) (head!6673 (_1!20138 lt!1040257))))))))

(assert (=> b!2991181 (= e!1880197 e!1880198)))

(assert (= (and d!844739 c!491627) b!2991177))

(assert (= (and d!844739 (not c!491627)) b!2991168))

(assert (= (and d!844739 c!491626) b!2991172))

(assert (= (and d!844739 (not c!491626)) b!2991174))

(assert (= (and b!2991174 c!491625) b!2991180))

(assert (= (and b!2991174 (not c!491625)) b!2991181))

(assert (= (and b!2991181 (not res!1233725)) b!2991176))

(assert (= (and b!2991176 res!1233722) b!2991175))

(assert (= (and b!2991175 res!1233719) b!2991171))

(assert (= (and b!2991171 res!1233720) b!2991179))

(assert (= (and b!2991176 (not res!1233724)) b!2991178))

(assert (= (and b!2991178 res!1233723) b!2991173))

(assert (= (and b!2991173 (not res!1233718)) b!2991170))

(assert (= (and b!2991170 (not res!1233721)) b!2991169))

(assert (= (or b!2991172 b!2991173 b!2991175) bm!200133))

(assert (=> d!844739 m!3346829))

(assert (=> d!844739 m!3346831))

(assert (=> d!844739 m!3346893))

(declare-fun m!3347415 () Bool)

(assert (=> d!844739 m!3347415))

(assert (=> b!2991170 m!3346829))

(declare-fun m!3347417 () Bool)

(assert (=> b!2991170 m!3347417))

(assert (=> b!2991170 m!3347417))

(declare-fun m!3347419 () Bool)

(assert (=> b!2991170 m!3347419))

(assert (=> b!2991179 m!3346829))

(declare-fun m!3347421 () Bool)

(assert (=> b!2991179 m!3347421))

(assert (=> b!2991171 m!3346829))

(assert (=> b!2991171 m!3347417))

(assert (=> b!2991171 m!3347417))

(assert (=> b!2991171 m!3347419))

(assert (=> bm!200133 m!3346829))

(assert (=> bm!200133 m!3346831))

(assert (=> b!2991169 m!3346829))

(assert (=> b!2991169 m!3347421))

(assert (=> b!2991168 m!3346829))

(assert (=> b!2991168 m!3347421))

(assert (=> b!2991168 m!3346893))

(assert (=> b!2991168 m!3347421))

(declare-fun m!3347423 () Bool)

(assert (=> b!2991168 m!3347423))

(assert (=> b!2991168 m!3346829))

(assert (=> b!2991168 m!3347417))

(assert (=> b!2991168 m!3347423))

(assert (=> b!2991168 m!3347417))

(declare-fun m!3347425 () Bool)

(assert (=> b!2991168 m!3347425))

(assert (=> b!2991177 m!3346893))

(declare-fun m!3347427 () Bool)

(assert (=> b!2991177 m!3347427))

(assert (=> b!2990475 d!844739))

(declare-fun b!2991182 () Bool)

(declare-fun c!491630 () Bool)

(assert (=> b!2991182 (= c!491630 (nullable!3016 (regOne!19206 (simplify!338 (reg!9676 r!17423)))))))

(declare-fun e!1880203 () Regex!9347)

(declare-fun e!1880204 () Regex!9347)

(assert (=> b!2991182 (= e!1880203 e!1880204)))

(declare-fun b!2991183 () Bool)

(declare-fun e!1880206 () Regex!9347)

(assert (=> b!2991183 (= e!1880206 e!1880203)))

(declare-fun c!491631 () Bool)

(assert (=> b!2991183 (= c!491631 ((_ is Star!9347) (simplify!338 (reg!9676 r!17423))))))

(declare-fun b!2991184 () Bool)

(declare-fun e!1880207 () Regex!9347)

(declare-fun e!1880205 () Regex!9347)

(assert (=> b!2991184 (= e!1880207 e!1880205)))

(declare-fun c!491632 () Bool)

(assert (=> b!2991184 (= c!491632 ((_ is ElementMatch!9347) (simplify!338 (reg!9676 r!17423))))))

(declare-fun bm!200134 () Bool)

(declare-fun c!491628 () Bool)

(declare-fun call!200140 () Regex!9347)

(assert (=> bm!200134 (= call!200140 (derivativeStep!2614 (ite c!491628 (regOne!19207 (simplify!338 (reg!9676 r!17423))) (regTwo!19206 (simplify!338 (reg!9676 r!17423)))) (head!6673 (_1!20138 lt!1040257))))))

(declare-fun b!2991185 () Bool)

(declare-fun call!200141 () Regex!9347)

(assert (=> b!2991185 (= e!1880204 (Union!9347 (Concat!14668 call!200141 (regTwo!19206 (simplify!338 (reg!9676 r!17423)))) EmptyLang!9347))))

(declare-fun call!200142 () Regex!9347)

(declare-fun bm!200135 () Bool)

(assert (=> bm!200135 (= call!200142 (derivativeStep!2614 (ite c!491628 (regTwo!19207 (simplify!338 (reg!9676 r!17423))) (ite c!491631 (reg!9676 (simplify!338 (reg!9676 r!17423))) (regOne!19206 (simplify!338 (reg!9676 r!17423))))) (head!6673 (_1!20138 lt!1040257))))))

(declare-fun b!2991186 () Bool)

(assert (=> b!2991186 (= e!1880207 EmptyLang!9347)))

(declare-fun d!844741 () Bool)

(declare-fun lt!1040441 () Regex!9347)

(assert (=> d!844741 (validRegex!4080 lt!1040441)))

(assert (=> d!844741 (= lt!1040441 e!1880207)))

(declare-fun c!491629 () Bool)

(assert (=> d!844741 (= c!491629 (or ((_ is EmptyExpr!9347) (simplify!338 (reg!9676 r!17423))) ((_ is EmptyLang!9347) (simplify!338 (reg!9676 r!17423)))))))

(assert (=> d!844741 (validRegex!4080 (simplify!338 (reg!9676 r!17423)))))

(assert (=> d!844741 (= (derivativeStep!2614 (simplify!338 (reg!9676 r!17423)) (head!6673 (_1!20138 lt!1040257))) lt!1040441)))

(declare-fun b!2991187 () Bool)

(assert (=> b!2991187 (= c!491628 ((_ is Union!9347) (simplify!338 (reg!9676 r!17423))))))

(assert (=> b!2991187 (= e!1880205 e!1880206)))

(declare-fun bm!200136 () Bool)

(declare-fun call!200139 () Regex!9347)

(assert (=> bm!200136 (= call!200139 call!200142)))

(declare-fun b!2991188 () Bool)

(assert (=> b!2991188 (= e!1880206 (Union!9347 call!200140 call!200142))))

(declare-fun b!2991189 () Bool)

(assert (=> b!2991189 (= e!1880204 (Union!9347 (Concat!14668 call!200141 (regTwo!19206 (simplify!338 (reg!9676 r!17423)))) call!200140))))

(declare-fun b!2991190 () Bool)

(assert (=> b!2991190 (= e!1880203 (Concat!14668 call!200139 (simplify!338 (reg!9676 r!17423))))))

(declare-fun b!2991191 () Bool)

(assert (=> b!2991191 (= e!1880205 (ite (= (head!6673 (_1!20138 lt!1040257)) (c!491293 (simplify!338 (reg!9676 r!17423)))) EmptyExpr!9347 EmptyLang!9347))))

(declare-fun bm!200137 () Bool)

(assert (=> bm!200137 (= call!200141 call!200139)))

(assert (= (and d!844741 c!491629) b!2991186))

(assert (= (and d!844741 (not c!491629)) b!2991184))

(assert (= (and b!2991184 c!491632) b!2991191))

(assert (= (and b!2991184 (not c!491632)) b!2991187))

(assert (= (and b!2991187 c!491628) b!2991188))

(assert (= (and b!2991187 (not c!491628)) b!2991183))

(assert (= (and b!2991183 c!491631) b!2991190))

(assert (= (and b!2991183 (not c!491631)) b!2991182))

(assert (= (and b!2991182 c!491630) b!2991189))

(assert (= (and b!2991182 (not c!491630)) b!2991185))

(assert (= (or b!2991189 b!2991185) bm!200137))

(assert (= (or b!2991190 bm!200137) bm!200136))

(assert (= (or b!2991188 bm!200136) bm!200135))

(assert (= (or b!2991188 b!2991189) bm!200134))

(declare-fun m!3347429 () Bool)

(assert (=> b!2991182 m!3347429))

(assert (=> bm!200134 m!3346833))

(declare-fun m!3347431 () Bool)

(assert (=> bm!200134 m!3347431))

(assert (=> bm!200135 m!3346833))

(declare-fun m!3347433 () Bool)

(assert (=> bm!200135 m!3347433))

(declare-fun m!3347435 () Bool)

(assert (=> d!844741 m!3347435))

(assert (=> d!844741 m!3346635))

(assert (=> d!844741 m!3346891))

(assert (=> b!2990475 d!844741))

(assert (=> b!2990475 d!844667))

(assert (=> b!2990475 d!844711))

(declare-fun b!2991192 () Bool)

(declare-fun e!1880211 () Bool)

(declare-fun e!1880210 () Bool)

(assert (=> b!2991192 (= e!1880211 e!1880210)))

(declare-fun c!491633 () Bool)

(assert (=> b!2991192 (= c!491633 ((_ is Union!9347) (ite c!491323 (reg!9676 r!17423) (ite c!491322 (regTwo!19207 r!17423) (regOne!19206 r!17423)))))))

(declare-fun call!200144 () Bool)

(declare-fun bm!200138 () Bool)

(declare-fun c!491634 () Bool)

(assert (=> bm!200138 (= call!200144 (validRegex!4080 (ite c!491634 (reg!9676 (ite c!491323 (reg!9676 r!17423) (ite c!491322 (regTwo!19207 r!17423) (regOne!19206 r!17423)))) (ite c!491633 (regTwo!19207 (ite c!491323 (reg!9676 r!17423) (ite c!491322 (regTwo!19207 r!17423) (regOne!19206 r!17423)))) (regOne!19206 (ite c!491323 (reg!9676 r!17423) (ite c!491322 (regTwo!19207 r!17423) (regOne!19206 r!17423))))))))))

(declare-fun bm!200139 () Bool)

(declare-fun call!200145 () Bool)

(assert (=> bm!200139 (= call!200145 (validRegex!4080 (ite c!491633 (regOne!19207 (ite c!491323 (reg!9676 r!17423) (ite c!491322 (regTwo!19207 r!17423) (regOne!19206 r!17423)))) (regTwo!19206 (ite c!491323 (reg!9676 r!17423) (ite c!491322 (regTwo!19207 r!17423) (regOne!19206 r!17423)))))))))

(declare-fun bm!200140 () Bool)

(declare-fun call!200143 () Bool)

(assert (=> bm!200140 (= call!200143 call!200144)))

(declare-fun b!2991193 () Bool)

(declare-fun e!1880212 () Bool)

(assert (=> b!2991193 (= e!1880211 e!1880212)))

(declare-fun res!1233729 () Bool)

(assert (=> b!2991193 (= res!1233729 (not (nullable!3016 (reg!9676 (ite c!491323 (reg!9676 r!17423) (ite c!491322 (regTwo!19207 r!17423) (regOne!19206 r!17423)))))))))

(assert (=> b!2991193 (=> (not res!1233729) (not e!1880212))))

(declare-fun b!2991194 () Bool)

(declare-fun e!1880213 () Bool)

(assert (=> b!2991194 (= e!1880213 call!200145)))

(declare-fun d!844743 () Bool)

(declare-fun res!1233726 () Bool)

(declare-fun e!1880214 () Bool)

(assert (=> d!844743 (=> res!1233726 e!1880214)))

(assert (=> d!844743 (= res!1233726 ((_ is ElementMatch!9347) (ite c!491323 (reg!9676 r!17423) (ite c!491322 (regTwo!19207 r!17423) (regOne!19206 r!17423)))))))

(assert (=> d!844743 (= (validRegex!4080 (ite c!491323 (reg!9676 r!17423) (ite c!491322 (regTwo!19207 r!17423) (regOne!19206 r!17423)))) e!1880214)))

(declare-fun b!2991195 () Bool)

(declare-fun e!1880208 () Bool)

(assert (=> b!2991195 (= e!1880208 call!200143)))

(declare-fun b!2991196 () Bool)

(declare-fun e!1880209 () Bool)

(assert (=> b!2991196 (= e!1880209 e!1880213)))

(declare-fun res!1233730 () Bool)

(assert (=> b!2991196 (=> (not res!1233730) (not e!1880213))))

(assert (=> b!2991196 (= res!1233730 call!200143)))

(declare-fun b!2991197 () Bool)

(declare-fun res!1233727 () Bool)

(assert (=> b!2991197 (=> (not res!1233727) (not e!1880208))))

(assert (=> b!2991197 (= res!1233727 call!200145)))

(assert (=> b!2991197 (= e!1880210 e!1880208)))

(declare-fun b!2991198 () Bool)

(assert (=> b!2991198 (= e!1880212 call!200144)))

(declare-fun b!2991199 () Bool)

(assert (=> b!2991199 (= e!1880214 e!1880211)))

(assert (=> b!2991199 (= c!491634 ((_ is Star!9347) (ite c!491323 (reg!9676 r!17423) (ite c!491322 (regTwo!19207 r!17423) (regOne!19206 r!17423)))))))

(declare-fun b!2991200 () Bool)

(declare-fun res!1233728 () Bool)

(assert (=> b!2991200 (=> res!1233728 e!1880209)))

(assert (=> b!2991200 (= res!1233728 (not ((_ is Concat!14668) (ite c!491323 (reg!9676 r!17423) (ite c!491322 (regTwo!19207 r!17423) (regOne!19206 r!17423))))))))

(assert (=> b!2991200 (= e!1880210 e!1880209)))

(assert (= (and d!844743 (not res!1233726)) b!2991199))

(assert (= (and b!2991199 c!491634) b!2991193))

(assert (= (and b!2991199 (not c!491634)) b!2991192))

(assert (= (and b!2991193 res!1233729) b!2991198))

(assert (= (and b!2991192 c!491633) b!2991197))

(assert (= (and b!2991192 (not c!491633)) b!2991200))

(assert (= (and b!2991197 res!1233727) b!2991195))

(assert (= (and b!2991200 (not res!1233728)) b!2991196))

(assert (= (and b!2991196 res!1233730) b!2991194))

(assert (= (or b!2991197 b!2991194) bm!200139))

(assert (= (or b!2991195 b!2991196) bm!200140))

(assert (= (or b!2991198 bm!200140) bm!200138))

(declare-fun m!3347437 () Bool)

(assert (=> bm!200138 m!3347437))

(declare-fun m!3347439 () Bool)

(assert (=> bm!200139 m!3347439))

(declare-fun m!3347441 () Bool)

(assert (=> b!2991193 m!3347441))

(assert (=> bm!199964 d!844743))

(assert (=> d!844521 d!844519))

(assert (=> d!844521 d!844659))

(declare-fun d!844745 () Bool)

(assert (=> d!844745 (= (matchR!4229 (reg!9676 r!17423) (_1!20138 lt!1040257)) (matchR!4229 (simplify!338 (reg!9676 r!17423)) (_1!20138 lt!1040257)))))

(assert (=> d!844745 true))

(declare-fun _$95!522 () Unit!49097)

(assert (=> d!844745 (= (choose!17750 (reg!9676 r!17423) (_1!20138 lt!1040257)) _$95!522)))

(declare-fun bs!527726 () Bool)

(assert (= bs!527726 d!844745))

(assert (=> bs!527726 m!3346629))

(assert (=> bs!527726 m!3346635))

(assert (=> bs!527726 m!3346635))

(assert (=> bs!527726 m!3346637))

(assert (=> d!844521 d!844745))

(assert (=> d!844521 d!844505))

(assert (=> d!844521 d!844525))

(assert (=> d!844525 d!844451))

(declare-fun b!2991201 () Bool)

(declare-fun e!1880218 () Bool)

(declare-fun e!1880217 () Bool)

(assert (=> b!2991201 (= e!1880218 e!1880217)))

(declare-fun c!491635 () Bool)

(assert (=> b!2991201 (= c!491635 ((_ is Union!9347) (simplify!338 (reg!9676 r!17423))))))

(declare-fun bm!200141 () Bool)

(declare-fun call!200147 () Bool)

(declare-fun c!491636 () Bool)

(assert (=> bm!200141 (= call!200147 (validRegex!4080 (ite c!491636 (reg!9676 (simplify!338 (reg!9676 r!17423))) (ite c!491635 (regTwo!19207 (simplify!338 (reg!9676 r!17423))) (regOne!19206 (simplify!338 (reg!9676 r!17423)))))))))

(declare-fun bm!200142 () Bool)

(declare-fun call!200148 () Bool)

(assert (=> bm!200142 (= call!200148 (validRegex!4080 (ite c!491635 (regOne!19207 (simplify!338 (reg!9676 r!17423))) (regTwo!19206 (simplify!338 (reg!9676 r!17423))))))))

(declare-fun bm!200143 () Bool)

(declare-fun call!200146 () Bool)

(assert (=> bm!200143 (= call!200146 call!200147)))

(declare-fun b!2991202 () Bool)

(declare-fun e!1880219 () Bool)

(assert (=> b!2991202 (= e!1880218 e!1880219)))

(declare-fun res!1233734 () Bool)

(assert (=> b!2991202 (= res!1233734 (not (nullable!3016 (reg!9676 (simplify!338 (reg!9676 r!17423))))))))

(assert (=> b!2991202 (=> (not res!1233734) (not e!1880219))))

(declare-fun b!2991203 () Bool)

(declare-fun e!1880220 () Bool)

(assert (=> b!2991203 (= e!1880220 call!200148)))

(declare-fun d!844747 () Bool)

(declare-fun res!1233731 () Bool)

(declare-fun e!1880221 () Bool)

(assert (=> d!844747 (=> res!1233731 e!1880221)))

(assert (=> d!844747 (= res!1233731 ((_ is ElementMatch!9347) (simplify!338 (reg!9676 r!17423))))))

(assert (=> d!844747 (= (validRegex!4080 (simplify!338 (reg!9676 r!17423))) e!1880221)))

(declare-fun b!2991204 () Bool)

(declare-fun e!1880215 () Bool)

(assert (=> b!2991204 (= e!1880215 call!200146)))

(declare-fun b!2991205 () Bool)

(declare-fun e!1880216 () Bool)

(assert (=> b!2991205 (= e!1880216 e!1880220)))

(declare-fun res!1233735 () Bool)

(assert (=> b!2991205 (=> (not res!1233735) (not e!1880220))))

(assert (=> b!2991205 (= res!1233735 call!200146)))

(declare-fun b!2991206 () Bool)

(declare-fun res!1233732 () Bool)

(assert (=> b!2991206 (=> (not res!1233732) (not e!1880215))))

(assert (=> b!2991206 (= res!1233732 call!200148)))

(assert (=> b!2991206 (= e!1880217 e!1880215)))

(declare-fun b!2991207 () Bool)

(assert (=> b!2991207 (= e!1880219 call!200147)))

(declare-fun b!2991208 () Bool)

(assert (=> b!2991208 (= e!1880221 e!1880218)))

(assert (=> b!2991208 (= c!491636 ((_ is Star!9347) (simplify!338 (reg!9676 r!17423))))))

(declare-fun b!2991209 () Bool)

(declare-fun res!1233733 () Bool)

(assert (=> b!2991209 (=> res!1233733 e!1880216)))

(assert (=> b!2991209 (= res!1233733 (not ((_ is Concat!14668) (simplify!338 (reg!9676 r!17423)))))))

(assert (=> b!2991209 (= e!1880217 e!1880216)))

(assert (= (and d!844747 (not res!1233731)) b!2991208))

(assert (= (and b!2991208 c!491636) b!2991202))

(assert (= (and b!2991208 (not c!491636)) b!2991201))

(assert (= (and b!2991202 res!1233734) b!2991207))

(assert (= (and b!2991201 c!491635) b!2991206))

(assert (= (and b!2991201 (not c!491635)) b!2991209))

(assert (= (and b!2991206 res!1233732) b!2991204))

(assert (= (and b!2991209 (not res!1233733)) b!2991205))

(assert (= (and b!2991205 res!1233735) b!2991203))

(assert (= (or b!2991206 b!2991203) bm!200142))

(assert (= (or b!2991204 b!2991205) bm!200143))

(assert (= (or b!2991207 bm!200143) bm!200141))

(declare-fun m!3347443 () Bool)

(assert (=> bm!200141 m!3347443))

(declare-fun m!3347445 () Bool)

(assert (=> bm!200142 m!3347445))

(declare-fun m!3347447 () Bool)

(assert (=> b!2991202 m!3347447))

(assert (=> d!844525 d!844747))

(assert (=> b!2990387 d!844607))

(assert (=> b!2990387 d!844611))

(declare-fun d!844749 () Bool)

(assert (=> d!844749 (= (nullable!3016 lt!1040366) (nullableFct!855 lt!1040366))))

(declare-fun bs!527727 () Bool)

(assert (= bs!527727 d!844749))

(declare-fun m!3347449 () Bool)

(assert (=> bs!527727 m!3347449))

(assert (=> b!2990470 d!844749))

(declare-fun d!844751 () Bool)

(assert (=> d!844751 (= (nullable!3016 (reg!9676 r!17423)) (nullableFct!855 (reg!9676 r!17423)))))

(declare-fun bs!527728 () Bool)

(assert (= bs!527728 d!844751))

(declare-fun m!3347451 () Bool)

(assert (=> bs!527728 m!3347451))

(assert (=> b!2990470 d!844751))

(declare-fun d!844753 () Bool)

(assert (=> d!844753 (= (Exists!1620 (ite c!491414 lambda!111805 lambda!111806)) (choose!17746 (ite c!491414 lambda!111805 lambda!111806)))))

(declare-fun bs!527729 () Bool)

(assert (= bs!527729 d!844753))

(declare-fun m!3347453 () Bool)

(assert (=> bs!527729 m!3347453))

(assert (=> bm!200007 d!844753))

(assert (=> b!2990385 d!844651))

(assert (=> b!2990320 d!844667))

(declare-fun d!844755 () Bool)

(declare-fun lt!1040442 () Int)

(assert (=> d!844755 (>= lt!1040442 0)))

(declare-fun e!1880222 () Int)

(assert (=> d!844755 (= lt!1040442 e!1880222)))

(declare-fun c!491637 () Bool)

(assert (=> d!844755 (= c!491637 ((_ is Nil!35088) (t!234277 s!11993)))))

(assert (=> d!844755 (= (size!26497 (t!234277 s!11993)) lt!1040442)))

(declare-fun b!2991210 () Bool)

(assert (=> b!2991210 (= e!1880222 0)))

(declare-fun b!2991211 () Bool)

(assert (=> b!2991211 (= e!1880222 (+ 1 (size!26497 (t!234277 (t!234277 s!11993)))))))

(assert (= (and d!844755 c!491637) b!2991210))

(assert (= (and d!844755 (not c!491637)) b!2991211))

(declare-fun m!3347455 () Bool)

(assert (=> b!2991211 m!3347455))

(assert (=> b!2990474 d!844755))

(assert (=> b!2990318 d!844751))

(declare-fun b!2991212 () Bool)

(declare-fun e!1880226 () Bool)

(declare-fun e!1880225 () Bool)

(assert (=> b!2991212 (= e!1880226 e!1880225)))

(declare-fun c!491638 () Bool)

(assert (=> b!2991212 (= c!491638 ((_ is Union!9347) lt!1040366))))

(declare-fun call!200150 () Bool)

(declare-fun c!491639 () Bool)

(declare-fun bm!200144 () Bool)

(assert (=> bm!200144 (= call!200150 (validRegex!4080 (ite c!491639 (reg!9676 lt!1040366) (ite c!491638 (regTwo!19207 lt!1040366) (regOne!19206 lt!1040366)))))))

(declare-fun bm!200145 () Bool)

(declare-fun call!200151 () Bool)

(assert (=> bm!200145 (= call!200151 (validRegex!4080 (ite c!491638 (regOne!19207 lt!1040366) (regTwo!19206 lt!1040366))))))

(declare-fun bm!200146 () Bool)

(declare-fun call!200149 () Bool)

(assert (=> bm!200146 (= call!200149 call!200150)))

(declare-fun b!2991213 () Bool)

(declare-fun e!1880227 () Bool)

(assert (=> b!2991213 (= e!1880226 e!1880227)))

(declare-fun res!1233739 () Bool)

(assert (=> b!2991213 (= res!1233739 (not (nullable!3016 (reg!9676 lt!1040366))))))

(assert (=> b!2991213 (=> (not res!1233739) (not e!1880227))))

(declare-fun b!2991214 () Bool)

(declare-fun e!1880228 () Bool)

(assert (=> b!2991214 (= e!1880228 call!200151)))

(declare-fun d!844757 () Bool)

(declare-fun res!1233736 () Bool)

(declare-fun e!1880229 () Bool)

(assert (=> d!844757 (=> res!1233736 e!1880229)))

(assert (=> d!844757 (= res!1233736 ((_ is ElementMatch!9347) lt!1040366))))

(assert (=> d!844757 (= (validRegex!4080 lt!1040366) e!1880229)))

(declare-fun b!2991215 () Bool)

(declare-fun e!1880223 () Bool)

(assert (=> b!2991215 (= e!1880223 call!200149)))

(declare-fun b!2991216 () Bool)

(declare-fun e!1880224 () Bool)

(assert (=> b!2991216 (= e!1880224 e!1880228)))

(declare-fun res!1233740 () Bool)

(assert (=> b!2991216 (=> (not res!1233740) (not e!1880228))))

(assert (=> b!2991216 (= res!1233740 call!200149)))

(declare-fun b!2991217 () Bool)

(declare-fun res!1233737 () Bool)

(assert (=> b!2991217 (=> (not res!1233737) (not e!1880223))))

(assert (=> b!2991217 (= res!1233737 call!200151)))

(assert (=> b!2991217 (= e!1880225 e!1880223)))

(declare-fun b!2991218 () Bool)

(assert (=> b!2991218 (= e!1880227 call!200150)))

(declare-fun b!2991219 () Bool)

(assert (=> b!2991219 (= e!1880229 e!1880226)))

(assert (=> b!2991219 (= c!491639 ((_ is Star!9347) lt!1040366))))

(declare-fun b!2991220 () Bool)

(declare-fun res!1233738 () Bool)

(assert (=> b!2991220 (=> res!1233738 e!1880224)))

(assert (=> b!2991220 (= res!1233738 (not ((_ is Concat!14668) lt!1040366)))))

(assert (=> b!2991220 (= e!1880225 e!1880224)))

(assert (= (and d!844757 (not res!1233736)) b!2991219))

(assert (= (and b!2991219 c!491639) b!2991213))

(assert (= (and b!2991219 (not c!491639)) b!2991212))

(assert (= (and b!2991213 res!1233739) b!2991218))

(assert (= (and b!2991212 c!491638) b!2991217))

(assert (= (and b!2991212 (not c!491638)) b!2991220))

(assert (= (and b!2991217 res!1233737) b!2991215))

(assert (= (and b!2991220 (not res!1233738)) b!2991216))

(assert (= (and b!2991216 res!1233740) b!2991214))

(assert (= (or b!2991217 b!2991214) bm!200145))

(assert (= (or b!2991215 b!2991216) bm!200146))

(assert (= (or b!2991218 bm!200146) bm!200144))

(declare-fun m!3347457 () Bool)

(assert (=> bm!200144 m!3347457))

(declare-fun m!3347459 () Bool)

(assert (=> bm!200145 m!3347459))

(declare-fun m!3347461 () Bool)

(assert (=> b!2991213 m!3347461))

(assert (=> d!844519 d!844757))

(assert (=> d!844519 d!844659))

(declare-fun d!844759 () Bool)

(declare-fun c!491642 () Bool)

(assert (=> d!844759 (= c!491642 ((_ is Nil!35088) lt!1040342))))

(declare-fun e!1880232 () (InoxSet C!18880))

(assert (=> d!844759 (= (content!4772 lt!1040342) e!1880232)))

(declare-fun b!2991225 () Bool)

(assert (=> b!2991225 (= e!1880232 ((as const (Array C!18880 Bool)) false))))

(declare-fun b!2991226 () Bool)

(assert (=> b!2991226 (= e!1880232 ((_ map or) (store ((as const (Array C!18880 Bool)) false) (h!40508 lt!1040342) true) (content!4772 (t!234277 lt!1040342))))))

(assert (= (and d!844759 c!491642) b!2991225))

(assert (= (and d!844759 (not c!491642)) b!2991226))

(declare-fun m!3347463 () Bool)

(assert (=> b!2991226 m!3347463))

(declare-fun m!3347465 () Bool)

(assert (=> b!2991226 m!3347465))

(assert (=> d!844509 d!844759))

(declare-fun d!844761 () Bool)

(declare-fun c!491643 () Bool)

(assert (=> d!844761 (= c!491643 ((_ is Nil!35088) (_1!20138 lt!1040257)))))

(declare-fun e!1880233 () (InoxSet C!18880))

(assert (=> d!844761 (= (content!4772 (_1!20138 lt!1040257)) e!1880233)))

(declare-fun b!2991227 () Bool)

(assert (=> b!2991227 (= e!1880233 ((as const (Array C!18880 Bool)) false))))

(declare-fun b!2991228 () Bool)

(assert (=> b!2991228 (= e!1880233 ((_ map or) (store ((as const (Array C!18880 Bool)) false) (h!40508 (_1!20138 lt!1040257)) true) (content!4772 (t!234277 (_1!20138 lt!1040257)))))))

(assert (= (and d!844761 c!491643) b!2991227))

(assert (= (and d!844761 (not c!491643)) b!2991228))

(declare-fun m!3347467 () Bool)

(assert (=> b!2991228 m!3347467))

(declare-fun m!3347469 () Bool)

(assert (=> b!2991228 m!3347469))

(assert (=> d!844509 d!844761))

(declare-fun d!844763 () Bool)

(declare-fun c!491644 () Bool)

(assert (=> d!844763 (= c!491644 ((_ is Nil!35088) (_2!20138 lt!1040257)))))

(declare-fun e!1880234 () (InoxSet C!18880))

(assert (=> d!844763 (= (content!4772 (_2!20138 lt!1040257)) e!1880234)))

(declare-fun b!2991229 () Bool)

(assert (=> b!2991229 (= e!1880234 ((as const (Array C!18880 Bool)) false))))

(declare-fun b!2991230 () Bool)

(assert (=> b!2991230 (= e!1880234 ((_ map or) (store ((as const (Array C!18880 Bool)) false) (h!40508 (_2!20138 lt!1040257)) true) (content!4772 (t!234277 (_2!20138 lt!1040257)))))))

(assert (= (and d!844763 c!491644) b!2991229))

(assert (= (and d!844763 (not c!491644)) b!2991230))

(declare-fun m!3347471 () Bool)

(assert (=> b!2991230 m!3347471))

(declare-fun m!3347473 () Bool)

(assert (=> b!2991230 m!3347473))

(assert (=> d!844509 d!844763))

(assert (=> b!2990494 d!844663))

(assert (=> b!2990494 d!844665))

(declare-fun d!844765 () Bool)

(assert (=> d!844765 true))

(assert (=> d!844765 true))

(declare-fun res!1233743 () Bool)

(assert (=> d!844765 (= (choose!17746 lambda!111775) res!1233743)))

(assert (=> d!844491 d!844765))

(declare-fun bs!527730 () Bool)

(declare-fun b!2991241 () Bool)

(assert (= bs!527730 (and b!2991241 d!844493)))

(declare-fun lambda!111826 () Int)

(assert (=> bs!527730 (= (and (= (reg!9676 (regTwo!19207 r!17423)) (reg!9676 r!17423)) (= (regTwo!19207 r!17423) (Star!9347 (reg!9676 r!17423)))) (= lambda!111826 lambda!111800))))

(declare-fun bs!527731 () Bool)

(assert (= bs!527731 (and b!2991241 d!844733)))

(assert (=> bs!527731 (not (= lambda!111826 lambda!111824))))

(declare-fun bs!527732 () Bool)

(assert (= bs!527732 (and b!2991241 b!2989869)))

(assert (=> bs!527732 (not (= lambda!111826 lambda!111775))))

(assert (=> bs!527730 (not (= lambda!111826 lambda!111799))))

(declare-fun bs!527733 () Bool)

(assert (= bs!527733 (and b!2991241 d!844483)))

(assert (=> bs!527733 (not (= lambda!111826 lambda!111788))))

(assert (=> bs!527731 (= (and (= (reg!9676 (regTwo!19207 r!17423)) (reg!9676 r!17423)) (= (regTwo!19207 r!17423) (Star!9347 (reg!9676 r!17423)))) (= lambda!111826 lambda!111825))))

(declare-fun bs!527734 () Bool)

(assert (= bs!527734 (and b!2991241 b!2990380)))

(assert (=> bs!527734 (not (= lambda!111826 lambda!111806))))

(declare-fun bs!527735 () Bool)

(assert (= bs!527735 (and b!2991241 b!2990383)))

(assert (=> bs!527735 (= (and (= (reg!9676 (regTwo!19207 r!17423)) (reg!9676 r!17423)) (= (regTwo!19207 r!17423) r!17423)) (= lambda!111826 lambda!111805))))

(assert (=> bs!527732 (= (and (= (reg!9676 (regTwo!19207 r!17423)) (reg!9676 r!17423)) (= (regTwo!19207 r!17423) lt!1040260)) (= lambda!111826 lambda!111776))))

(assert (=> b!2991241 true))

(assert (=> b!2991241 true))

(declare-fun bs!527736 () Bool)

(declare-fun b!2991238 () Bool)

(assert (= bs!527736 (and b!2991238 d!844493)))

(declare-fun lambda!111827 () Int)

(assert (=> bs!527736 (not (= lambda!111827 lambda!111800))))

(declare-fun bs!527737 () Bool)

(assert (= bs!527737 (and b!2991238 d!844733)))

(assert (=> bs!527737 (not (= lambda!111827 lambda!111824))))

(declare-fun bs!527738 () Bool)

(assert (= bs!527738 (and b!2991238 b!2989869)))

(assert (=> bs!527738 (not (= lambda!111827 lambda!111775))))

(assert (=> bs!527736 (not (= lambda!111827 lambda!111799))))

(declare-fun bs!527739 () Bool)

(assert (= bs!527739 (and b!2991238 d!844483)))

(assert (=> bs!527739 (not (= lambda!111827 lambda!111788))))

(assert (=> bs!527737 (not (= lambda!111827 lambda!111825))))

(declare-fun bs!527740 () Bool)

(assert (= bs!527740 (and b!2991238 b!2991241)))

(assert (=> bs!527740 (not (= lambda!111827 lambda!111826))))

(declare-fun bs!527741 () Bool)

(assert (= bs!527741 (and b!2991238 b!2990380)))

(assert (=> bs!527741 (= (and (= (regOne!19206 (regTwo!19207 r!17423)) (regOne!19206 r!17423)) (= (regTwo!19206 (regTwo!19207 r!17423)) (regTwo!19206 r!17423))) (= lambda!111827 lambda!111806))))

(declare-fun bs!527742 () Bool)

(assert (= bs!527742 (and b!2991238 b!2990383)))

(assert (=> bs!527742 (not (= lambda!111827 lambda!111805))))

(assert (=> bs!527738 (not (= lambda!111827 lambda!111776))))

(assert (=> b!2991238 true))

(assert (=> b!2991238 true))

(declare-fun b!2991231 () Bool)

(declare-fun e!1880237 () Bool)

(declare-fun e!1880241 () Bool)

(assert (=> b!2991231 (= e!1880237 e!1880241)))

(declare-fun res!1233744 () Bool)

(assert (=> b!2991231 (= res!1233744 (not ((_ is EmptyLang!9347) (regTwo!19207 r!17423))))))

(assert (=> b!2991231 (=> (not res!1233744) (not e!1880241))))

(declare-fun bm!200147 () Bool)

(declare-fun call!200153 () Bool)

(assert (=> bm!200147 (= call!200153 (isEmpty!19356 s!11993))))

(declare-fun b!2991232 () Bool)

(declare-fun res!1233746 () Bool)

(declare-fun e!1880239 () Bool)

(assert (=> b!2991232 (=> res!1233746 e!1880239)))

(assert (=> b!2991232 (= res!1233746 call!200153)))

(declare-fun e!1880235 () Bool)

(assert (=> b!2991232 (= e!1880235 e!1880239)))

(declare-fun b!2991233 () Bool)

(declare-fun e!1880238 () Bool)

(assert (=> b!2991233 (= e!1880238 (matchRSpec!1484 (regTwo!19207 (regTwo!19207 r!17423)) s!11993))))

(declare-fun b!2991234 () Bool)

(declare-fun c!491645 () Bool)

(assert (=> b!2991234 (= c!491645 ((_ is Union!9347) (regTwo!19207 r!17423)))))

(declare-fun e!1880240 () Bool)

(declare-fun e!1880236 () Bool)

(assert (=> b!2991234 (= e!1880240 e!1880236)))

(declare-fun d!844767 () Bool)

(declare-fun c!491646 () Bool)

(assert (=> d!844767 (= c!491646 ((_ is EmptyExpr!9347) (regTwo!19207 r!17423)))))

(assert (=> d!844767 (= (matchRSpec!1484 (regTwo!19207 r!17423) s!11993) e!1880237)))

(declare-fun b!2991235 () Bool)

(assert (=> b!2991235 (= e!1880236 e!1880235)))

(declare-fun c!491647 () Bool)

(assert (=> b!2991235 (= c!491647 ((_ is Star!9347) (regTwo!19207 r!17423)))))

(declare-fun b!2991236 () Bool)

(assert (=> b!2991236 (= e!1880240 (= s!11993 (Cons!35088 (c!491293 (regTwo!19207 r!17423)) Nil!35088)))))

(declare-fun b!2991237 () Bool)

(assert (=> b!2991237 (= e!1880237 call!200153)))

(declare-fun call!200152 () Bool)

(assert (=> b!2991238 (= e!1880235 call!200152)))

(declare-fun bm!200148 () Bool)

(assert (=> bm!200148 (= call!200152 (Exists!1620 (ite c!491647 lambda!111826 lambda!111827)))))

(declare-fun b!2991239 () Bool)

(assert (=> b!2991239 (= e!1880236 e!1880238)))

(declare-fun res!1233745 () Bool)

(assert (=> b!2991239 (= res!1233745 (matchRSpec!1484 (regOne!19207 (regTwo!19207 r!17423)) s!11993))))

(assert (=> b!2991239 (=> res!1233745 e!1880238)))

(declare-fun b!2991240 () Bool)

(declare-fun c!491648 () Bool)

(assert (=> b!2991240 (= c!491648 ((_ is ElementMatch!9347) (regTwo!19207 r!17423)))))

(assert (=> b!2991240 (= e!1880241 e!1880240)))

(assert (=> b!2991241 (= e!1880239 call!200152)))

(assert (= (and d!844767 c!491646) b!2991237))

(assert (= (and d!844767 (not c!491646)) b!2991231))

(assert (= (and b!2991231 res!1233744) b!2991240))

(assert (= (and b!2991240 c!491648) b!2991236))

(assert (= (and b!2991240 (not c!491648)) b!2991234))

(assert (= (and b!2991234 c!491645) b!2991239))

(assert (= (and b!2991234 (not c!491645)) b!2991235))

(assert (= (and b!2991239 (not res!1233745)) b!2991233))

(assert (= (and b!2991235 c!491647) b!2991232))

(assert (= (and b!2991235 (not c!491647)) b!2991238))

(assert (= (and b!2991232 (not res!1233746)) b!2991241))

(assert (= (or b!2991241 b!2991238) bm!200148))

(assert (= (or b!2991237 b!2991232) bm!200147))

(assert (=> bm!200147 m!3346633))

(declare-fun m!3347475 () Bool)

(assert (=> b!2991233 m!3347475))

(declare-fun m!3347477 () Bool)

(assert (=> bm!200148 m!3347477))

(declare-fun m!3347479 () Bool)

(assert (=> b!2991239 m!3347479))

(assert (=> b!2990375 d!844767))

(assert (=> b!2990492 d!844685))

(assert (=> bm!200006 d!844531))

(assert (=> bm!200001 d!844451))

(declare-fun b!2991242 () Bool)

(declare-fun e!1880245 () Bool)

(assert (=> b!2991242 (= e!1880245 (matchR!4229 (derivativeStep!2614 lt!1040260 (head!6673 s!11993)) (tail!4899 s!11993)))))

(declare-fun b!2991243 () Bool)

(declare-fun e!1880247 () Bool)

(assert (=> b!2991243 (= e!1880247 (not (= (head!6673 s!11993) (c!491293 lt!1040260))))))

(declare-fun b!2991244 () Bool)

(declare-fun res!1233750 () Bool)

(assert (=> b!2991244 (=> res!1233750 e!1880247)))

(assert (=> b!2991244 (= res!1233750 (not (isEmpty!19356 (tail!4899 s!11993))))))

(declare-fun b!2991245 () Bool)

(declare-fun res!1233749 () Bool)

(declare-fun e!1880242 () Bool)

(assert (=> b!2991245 (=> (not res!1233749) (not e!1880242))))

(assert (=> b!2991245 (= res!1233749 (isEmpty!19356 (tail!4899 s!11993)))))

(declare-fun bm!200149 () Bool)

(declare-fun call!200154 () Bool)

(assert (=> bm!200149 (= call!200154 (isEmpty!19356 s!11993))))

(declare-fun b!2991246 () Bool)

(declare-fun e!1880246 () Bool)

(declare-fun lt!1040443 () Bool)

(assert (=> b!2991246 (= e!1880246 (= lt!1040443 call!200154))))

(declare-fun b!2991248 () Bool)

(declare-fun e!1880243 () Bool)

(assert (=> b!2991248 (= e!1880246 e!1880243)))

(declare-fun c!491649 () Bool)

(assert (=> b!2991248 (= c!491649 ((_ is EmptyLang!9347) lt!1040260))))

(declare-fun b!2991249 () Bool)

(declare-fun res!1233748 () Bool)

(assert (=> b!2991249 (=> (not res!1233748) (not e!1880242))))

(assert (=> b!2991249 (= res!1233748 (not call!200154))))

(declare-fun d!844769 () Bool)

(assert (=> d!844769 e!1880246))

(declare-fun c!491650 () Bool)

(assert (=> d!844769 (= c!491650 ((_ is EmptyExpr!9347) lt!1040260))))

(assert (=> d!844769 (= lt!1040443 e!1880245)))

(declare-fun c!491651 () Bool)

(assert (=> d!844769 (= c!491651 (isEmpty!19356 s!11993))))

(assert (=> d!844769 (validRegex!4080 lt!1040260)))

(assert (=> d!844769 (= (matchR!4229 lt!1040260 s!11993) lt!1040443)))

(declare-fun b!2991247 () Bool)

(declare-fun e!1880248 () Bool)

(assert (=> b!2991247 (= e!1880248 e!1880247)))

(declare-fun res!1233747 () Bool)

(assert (=> b!2991247 (=> res!1233747 e!1880247)))

(assert (=> b!2991247 (= res!1233747 call!200154)))

(declare-fun b!2991250 () Bool)

(declare-fun res!1233753 () Bool)

(declare-fun e!1880244 () Bool)

(assert (=> b!2991250 (=> res!1233753 e!1880244)))

(assert (=> b!2991250 (= res!1233753 e!1880242)))

(declare-fun res!1233751 () Bool)

(assert (=> b!2991250 (=> (not res!1233751) (not e!1880242))))

(assert (=> b!2991250 (= res!1233751 lt!1040443)))

(declare-fun b!2991251 () Bool)

(assert (=> b!2991251 (= e!1880245 (nullable!3016 lt!1040260))))

(declare-fun b!2991252 () Bool)

(assert (=> b!2991252 (= e!1880244 e!1880248)))

(declare-fun res!1233752 () Bool)

(assert (=> b!2991252 (=> (not res!1233752) (not e!1880248))))

(assert (=> b!2991252 (= res!1233752 (not lt!1040443))))

(declare-fun b!2991253 () Bool)

(assert (=> b!2991253 (= e!1880242 (= (head!6673 s!11993) (c!491293 lt!1040260)))))

(declare-fun b!2991254 () Bool)

(assert (=> b!2991254 (= e!1880243 (not lt!1040443))))

(declare-fun b!2991255 () Bool)

(declare-fun res!1233754 () Bool)

(assert (=> b!2991255 (=> res!1233754 e!1880244)))

(assert (=> b!2991255 (= res!1233754 (not ((_ is ElementMatch!9347) lt!1040260)))))

(assert (=> b!2991255 (= e!1880243 e!1880244)))

(assert (= (and d!844769 c!491651) b!2991251))

(assert (= (and d!844769 (not c!491651)) b!2991242))

(assert (= (and d!844769 c!491650) b!2991246))

(assert (= (and d!844769 (not c!491650)) b!2991248))

(assert (= (and b!2991248 c!491649) b!2991254))

(assert (= (and b!2991248 (not c!491649)) b!2991255))

(assert (= (and b!2991255 (not res!1233754)) b!2991250))

(assert (= (and b!2991250 res!1233751) b!2991249))

(assert (= (and b!2991249 res!1233748) b!2991245))

(assert (= (and b!2991245 res!1233749) b!2991253))

(assert (= (and b!2991250 (not res!1233753)) b!2991252))

(assert (= (and b!2991252 res!1233752) b!2991247))

(assert (= (and b!2991247 (not res!1233747)) b!2991244))

(assert (= (and b!2991244 (not res!1233750)) b!2991243))

(assert (= (or b!2991246 b!2991247 b!2991249) bm!200149))

(assert (=> d!844769 m!3346633))

(assert (=> d!844769 m!3346903))

(assert (=> b!2991244 m!3346857))

(assert (=> b!2991244 m!3346857))

(assert (=> b!2991244 m!3346859))

(assert (=> b!2991253 m!3346861))

(assert (=> b!2991245 m!3346857))

(assert (=> b!2991245 m!3346857))

(assert (=> b!2991245 m!3346859))

(assert (=> bm!200149 m!3346633))

(assert (=> b!2991243 m!3346861))

(assert (=> b!2991242 m!3346861))

(assert (=> b!2991242 m!3346861))

(declare-fun m!3347481 () Bool)

(assert (=> b!2991242 m!3347481))

(assert (=> b!2991242 m!3346857))

(assert (=> b!2991242 m!3347481))

(assert (=> b!2991242 m!3346857))

(declare-fun m!3347483 () Bool)

(assert (=> b!2991242 m!3347483))

(assert (=> b!2991251 m!3346915))

(assert (=> b!2990161 d!844769))

(declare-fun d!844771 () Bool)

(assert (=> d!844771 true))

(assert (=> d!844771 true))

(declare-fun res!1233755 () Bool)

(assert (=> d!844771 (= (choose!17746 lambda!111776) res!1233755)))

(assert (=> d!844503 d!844771))

(assert (=> b!2990311 d!844709))

(assert (=> b!2990311 d!844711))

(assert (=> b!2990395 d!844651))

(declare-fun bs!527743 () Bool)

(declare-fun d!844773 () Bool)

(assert (= bs!527743 (and d!844773 d!844493)))

(declare-fun lambda!111830 () Int)

(assert (=> bs!527743 (not (= lambda!111830 lambda!111800))))

(declare-fun bs!527744 () Bool)

(assert (= bs!527744 (and d!844773 d!844733)))

(assert (=> bs!527744 (= (= lt!1040260 (Star!9347 (reg!9676 r!17423))) (= lambda!111830 lambda!111824))))

(declare-fun bs!527745 () Bool)

(assert (= bs!527745 (and d!844773 b!2989869)))

(assert (=> bs!527745 (= lambda!111830 lambda!111775)))

(assert (=> bs!527743 (= (= lt!1040260 (Star!9347 (reg!9676 r!17423))) (= lambda!111830 lambda!111799))))

(declare-fun bs!527746 () Bool)

(assert (= bs!527746 (and d!844773 d!844483)))

(assert (=> bs!527746 (= lambda!111830 lambda!111788)))

(assert (=> bs!527744 (not (= lambda!111830 lambda!111825))))

(declare-fun bs!527747 () Bool)

(assert (= bs!527747 (and d!844773 b!2991241)))

(assert (=> bs!527747 (not (= lambda!111830 lambda!111826))))

(declare-fun bs!527748 () Bool)

(assert (= bs!527748 (and d!844773 b!2990380)))

(assert (=> bs!527748 (not (= lambda!111830 lambda!111806))))

(declare-fun bs!527749 () Bool)

(assert (= bs!527749 (and d!844773 b!2991238)))

(assert (=> bs!527749 (not (= lambda!111830 lambda!111827))))

(declare-fun bs!527750 () Bool)

(assert (= bs!527750 (and d!844773 b!2990383)))

(assert (=> bs!527750 (not (= lambda!111830 lambda!111805))))

(assert (=> bs!527745 (not (= lambda!111830 lambda!111776))))

(assert (=> d!844773 true))

(assert (=> d!844773 true))

(assert (=> d!844773 true))

(assert (=> d!844773 (= (isDefined!5289 (findConcatSeparation!1132 (reg!9676 r!17423) lt!1040260 Nil!35088 s!11993 s!11993)) (Exists!1620 lambda!111830))))

(assert (=> d!844773 true))

(declare-fun _$89!1268 () Unit!49097)

(assert (=> d!844773 (= (choose!17745 (reg!9676 r!17423) lt!1040260 s!11993) _$89!1268)))

(declare-fun bs!527751 () Bool)

(assert (= bs!527751 d!844773))

(assert (=> bs!527751 m!3346609))

(assert (=> bs!527751 m!3346609))

(assert (=> bs!527751 m!3346779))

(declare-fun m!3347485 () Bool)

(assert (=> bs!527751 m!3347485))

(assert (=> d!844483 d!844773))

(assert (=> d!844483 d!844659))

(declare-fun d!844775 () Bool)

(assert (=> d!844775 (= (isDefined!5289 (findConcatSeparation!1132 (reg!9676 r!17423) lt!1040260 Nil!35088 s!11993 s!11993)) (not (isEmpty!19357 (findConcatSeparation!1132 (reg!9676 r!17423) lt!1040260 Nil!35088 s!11993 s!11993))))))

(declare-fun bs!527752 () Bool)

(assert (= bs!527752 d!844775))

(assert (=> bs!527752 m!3346609))

(declare-fun m!3347487 () Bool)

(assert (=> bs!527752 m!3347487))

(assert (=> d!844483 d!844775))

(assert (=> d!844483 d!844459))

(declare-fun d!844777 () Bool)

(assert (=> d!844777 (= (Exists!1620 lambda!111788) (choose!17746 lambda!111788))))

(declare-fun bs!527753 () Bool)

(assert (= bs!527753 d!844777))

(declare-fun m!3347489 () Bool)

(assert (=> bs!527753 m!3347489))

(assert (=> d!844483 d!844777))

(declare-fun b!2991260 () Bool)

(declare-fun e!1880254 () Bool)

(assert (=> b!2991260 (= e!1880254 (matchR!4229 (derivativeStep!2614 (derivativeStep!2614 (reg!9676 r!17423) (head!6673 (_1!20138 lt!1040257))) (head!6673 (tail!4899 (_1!20138 lt!1040257)))) (tail!4899 (tail!4899 (_1!20138 lt!1040257)))))))

(declare-fun b!2991261 () Bool)

(declare-fun e!1880256 () Bool)

(assert (=> b!2991261 (= e!1880256 (not (= (head!6673 (tail!4899 (_1!20138 lt!1040257))) (c!491293 (derivativeStep!2614 (reg!9676 r!17423) (head!6673 (_1!20138 lt!1040257)))))))))

(declare-fun b!2991262 () Bool)

(declare-fun res!1233763 () Bool)

(assert (=> b!2991262 (=> res!1233763 e!1880256)))

(assert (=> b!2991262 (= res!1233763 (not (isEmpty!19356 (tail!4899 (tail!4899 (_1!20138 lt!1040257))))))))

(declare-fun b!2991263 () Bool)

(declare-fun res!1233762 () Bool)

(declare-fun e!1880251 () Bool)

(assert (=> b!2991263 (=> (not res!1233762) (not e!1880251))))

(assert (=> b!2991263 (= res!1233762 (isEmpty!19356 (tail!4899 (tail!4899 (_1!20138 lt!1040257)))))))

(declare-fun bm!200150 () Bool)

(declare-fun call!200155 () Bool)

(assert (=> bm!200150 (= call!200155 (isEmpty!19356 (tail!4899 (_1!20138 lt!1040257))))))

(declare-fun b!2991264 () Bool)

(declare-fun e!1880255 () Bool)

(declare-fun lt!1040444 () Bool)

(assert (=> b!2991264 (= e!1880255 (= lt!1040444 call!200155))))

(declare-fun b!2991266 () Bool)

(declare-fun e!1880252 () Bool)

(assert (=> b!2991266 (= e!1880255 e!1880252)))

(declare-fun c!491652 () Bool)

(assert (=> b!2991266 (= c!491652 ((_ is EmptyLang!9347) (derivativeStep!2614 (reg!9676 r!17423) (head!6673 (_1!20138 lt!1040257)))))))

(declare-fun b!2991267 () Bool)

(declare-fun res!1233761 () Bool)

(assert (=> b!2991267 (=> (not res!1233761) (not e!1880251))))

(assert (=> b!2991267 (= res!1233761 (not call!200155))))

(declare-fun d!844779 () Bool)

(assert (=> d!844779 e!1880255))

(declare-fun c!491653 () Bool)

(assert (=> d!844779 (= c!491653 ((_ is EmptyExpr!9347) (derivativeStep!2614 (reg!9676 r!17423) (head!6673 (_1!20138 lt!1040257)))))))

(assert (=> d!844779 (= lt!1040444 e!1880254)))

(declare-fun c!491654 () Bool)

(assert (=> d!844779 (= c!491654 (isEmpty!19356 (tail!4899 (_1!20138 lt!1040257))))))

(assert (=> d!844779 (validRegex!4080 (derivativeStep!2614 (reg!9676 r!17423) (head!6673 (_1!20138 lt!1040257))))))

(assert (=> d!844779 (= (matchR!4229 (derivativeStep!2614 (reg!9676 r!17423) (head!6673 (_1!20138 lt!1040257))) (tail!4899 (_1!20138 lt!1040257))) lt!1040444)))

(declare-fun b!2991265 () Bool)

(declare-fun e!1880257 () Bool)

(assert (=> b!2991265 (= e!1880257 e!1880256)))

(declare-fun res!1233760 () Bool)

(assert (=> b!2991265 (=> res!1233760 e!1880256)))

(assert (=> b!2991265 (= res!1233760 call!200155)))

(declare-fun b!2991268 () Bool)

(declare-fun res!1233766 () Bool)

(declare-fun e!1880253 () Bool)

(assert (=> b!2991268 (=> res!1233766 e!1880253)))

(assert (=> b!2991268 (= res!1233766 e!1880251)))

(declare-fun res!1233764 () Bool)

(assert (=> b!2991268 (=> (not res!1233764) (not e!1880251))))

(assert (=> b!2991268 (= res!1233764 lt!1040444)))

(declare-fun b!2991269 () Bool)

(assert (=> b!2991269 (= e!1880254 (nullable!3016 (derivativeStep!2614 (reg!9676 r!17423) (head!6673 (_1!20138 lt!1040257)))))))

(declare-fun b!2991270 () Bool)

(assert (=> b!2991270 (= e!1880253 e!1880257)))

(declare-fun res!1233765 () Bool)

(assert (=> b!2991270 (=> (not res!1233765) (not e!1880257))))

(assert (=> b!2991270 (= res!1233765 (not lt!1040444))))

(declare-fun b!2991271 () Bool)

(assert (=> b!2991271 (= e!1880251 (= (head!6673 (tail!4899 (_1!20138 lt!1040257))) (c!491293 (derivativeStep!2614 (reg!9676 r!17423) (head!6673 (_1!20138 lt!1040257))))))))

(declare-fun b!2991272 () Bool)

(assert (=> b!2991272 (= e!1880252 (not lt!1040444))))

(declare-fun b!2991273 () Bool)

(declare-fun res!1233767 () Bool)

(assert (=> b!2991273 (=> res!1233767 e!1880253)))

(assert (=> b!2991273 (= res!1233767 (not ((_ is ElementMatch!9347) (derivativeStep!2614 (reg!9676 r!17423) (head!6673 (_1!20138 lt!1040257))))))))

(assert (=> b!2991273 (= e!1880252 e!1880253)))

(assert (= (and d!844779 c!491654) b!2991269))

(assert (= (and d!844779 (not c!491654)) b!2991260))

(assert (= (and d!844779 c!491653) b!2991264))

(assert (= (and d!844779 (not c!491653)) b!2991266))

(assert (= (and b!2991266 c!491652) b!2991272))

(assert (= (and b!2991266 (not c!491652)) b!2991273))

(assert (= (and b!2991273 (not res!1233767)) b!2991268))

(assert (= (and b!2991268 res!1233764) b!2991267))

(assert (= (and b!2991267 res!1233761) b!2991263))

(assert (= (and b!2991263 res!1233762) b!2991271))

(assert (= (and b!2991268 (not res!1233766)) b!2991270))

(assert (= (and b!2991270 res!1233765) b!2991265))

(assert (= (and b!2991265 (not res!1233760)) b!2991262))

(assert (= (and b!2991262 (not res!1233763)) b!2991261))

(assert (= (or b!2991264 b!2991265 b!2991267) bm!200150))

(assert (=> d!844779 m!3346829))

(assert (=> d!844779 m!3346831))

(assert (=> d!844779 m!3346835))

(declare-fun m!3347491 () Bool)

(assert (=> d!844779 m!3347491))

(assert (=> b!2991262 m!3346829))

(assert (=> b!2991262 m!3347417))

(assert (=> b!2991262 m!3347417))

(assert (=> b!2991262 m!3347419))

(assert (=> b!2991271 m!3346829))

(assert (=> b!2991271 m!3347421))

(assert (=> b!2991263 m!3346829))

(assert (=> b!2991263 m!3347417))

(assert (=> b!2991263 m!3347417))

(assert (=> b!2991263 m!3347419))

(assert (=> bm!200150 m!3346829))

(assert (=> bm!200150 m!3346831))

(assert (=> b!2991261 m!3346829))

(assert (=> b!2991261 m!3347421))

(assert (=> b!2991260 m!3346829))

(assert (=> b!2991260 m!3347421))

(assert (=> b!2991260 m!3346835))

(assert (=> b!2991260 m!3347421))

(declare-fun m!3347493 () Bool)

(assert (=> b!2991260 m!3347493))

(assert (=> b!2991260 m!3346829))

(assert (=> b!2991260 m!3347417))

(assert (=> b!2991260 m!3347493))

(assert (=> b!2991260 m!3347417))

(declare-fun m!3347495 () Bool)

(assert (=> b!2991260 m!3347495))

(assert (=> b!2991269 m!3346835))

(declare-fun m!3347497 () Bool)

(assert (=> b!2991269 m!3347497))

(assert (=> b!2990309 d!844779))

(declare-fun b!2991274 () Bool)

(declare-fun c!491657 () Bool)

(assert (=> b!2991274 (= c!491657 (nullable!3016 (regOne!19206 (reg!9676 r!17423))))))

(declare-fun e!1880258 () Regex!9347)

(declare-fun e!1880259 () Regex!9347)

(assert (=> b!2991274 (= e!1880258 e!1880259)))

(declare-fun b!2991275 () Bool)

(declare-fun e!1880261 () Regex!9347)

(assert (=> b!2991275 (= e!1880261 e!1880258)))

(declare-fun c!491658 () Bool)

(assert (=> b!2991275 (= c!491658 ((_ is Star!9347) (reg!9676 r!17423)))))

(declare-fun b!2991276 () Bool)

(declare-fun e!1880262 () Regex!9347)

(declare-fun e!1880260 () Regex!9347)

(assert (=> b!2991276 (= e!1880262 e!1880260)))

(declare-fun c!491659 () Bool)

(assert (=> b!2991276 (= c!491659 ((_ is ElementMatch!9347) (reg!9676 r!17423)))))

(declare-fun bm!200151 () Bool)

(declare-fun c!491655 () Bool)

(declare-fun call!200157 () Regex!9347)

(assert (=> bm!200151 (= call!200157 (derivativeStep!2614 (ite c!491655 (regOne!19207 (reg!9676 r!17423)) (regTwo!19206 (reg!9676 r!17423))) (head!6673 (_1!20138 lt!1040257))))))

(declare-fun b!2991277 () Bool)

(declare-fun call!200158 () Regex!9347)

(assert (=> b!2991277 (= e!1880259 (Union!9347 (Concat!14668 call!200158 (regTwo!19206 (reg!9676 r!17423))) EmptyLang!9347))))

(declare-fun bm!200152 () Bool)

(declare-fun call!200159 () Regex!9347)

(assert (=> bm!200152 (= call!200159 (derivativeStep!2614 (ite c!491655 (regTwo!19207 (reg!9676 r!17423)) (ite c!491658 (reg!9676 (reg!9676 r!17423)) (regOne!19206 (reg!9676 r!17423)))) (head!6673 (_1!20138 lt!1040257))))))

(declare-fun b!2991278 () Bool)

(assert (=> b!2991278 (= e!1880262 EmptyLang!9347)))

(declare-fun d!844781 () Bool)

(declare-fun lt!1040445 () Regex!9347)

(assert (=> d!844781 (validRegex!4080 lt!1040445)))

(assert (=> d!844781 (= lt!1040445 e!1880262)))

(declare-fun c!491656 () Bool)

(assert (=> d!844781 (= c!491656 (or ((_ is EmptyExpr!9347) (reg!9676 r!17423)) ((_ is EmptyLang!9347) (reg!9676 r!17423))))))

(assert (=> d!844781 (validRegex!4080 (reg!9676 r!17423))))

(assert (=> d!844781 (= (derivativeStep!2614 (reg!9676 r!17423) (head!6673 (_1!20138 lt!1040257))) lt!1040445)))

(declare-fun b!2991279 () Bool)

(assert (=> b!2991279 (= c!491655 ((_ is Union!9347) (reg!9676 r!17423)))))

(assert (=> b!2991279 (= e!1880260 e!1880261)))

(declare-fun bm!200153 () Bool)

(declare-fun call!200156 () Regex!9347)

(assert (=> bm!200153 (= call!200156 call!200159)))

(declare-fun b!2991280 () Bool)

(assert (=> b!2991280 (= e!1880261 (Union!9347 call!200157 call!200159))))

(declare-fun b!2991281 () Bool)

(assert (=> b!2991281 (= e!1880259 (Union!9347 (Concat!14668 call!200158 (regTwo!19206 (reg!9676 r!17423))) call!200157))))

(declare-fun b!2991282 () Bool)

(assert (=> b!2991282 (= e!1880258 (Concat!14668 call!200156 (reg!9676 r!17423)))))

(declare-fun b!2991283 () Bool)

(assert (=> b!2991283 (= e!1880260 (ite (= (head!6673 (_1!20138 lt!1040257)) (c!491293 (reg!9676 r!17423))) EmptyExpr!9347 EmptyLang!9347))))

(declare-fun bm!200154 () Bool)

(assert (=> bm!200154 (= call!200158 call!200156)))

(assert (= (and d!844781 c!491656) b!2991278))

(assert (= (and d!844781 (not c!491656)) b!2991276))

(assert (= (and b!2991276 c!491659) b!2991283))

(assert (= (and b!2991276 (not c!491659)) b!2991279))

(assert (= (and b!2991279 c!491655) b!2991280))

(assert (= (and b!2991279 (not c!491655)) b!2991275))

(assert (= (and b!2991275 c!491658) b!2991282))

(assert (= (and b!2991275 (not c!491658)) b!2991274))

(assert (= (and b!2991274 c!491657) b!2991281))

(assert (= (and b!2991274 (not c!491657)) b!2991277))

(assert (= (or b!2991281 b!2991277) bm!200154))

(assert (= (or b!2991282 bm!200154) bm!200153))

(assert (= (or b!2991280 bm!200153) bm!200152))

(assert (= (or b!2991280 b!2991281) bm!200151))

(declare-fun m!3347499 () Bool)

(assert (=> b!2991274 m!3347499))

(assert (=> bm!200151 m!3346833))

(declare-fun m!3347501 () Bool)

(assert (=> bm!200151 m!3347501))

(assert (=> bm!200152 m!3346833))

(declare-fun m!3347503 () Bool)

(assert (=> bm!200152 m!3347503))

(declare-fun m!3347505 () Bool)

(assert (=> d!844781 m!3347505))

(assert (=> d!844781 m!3346737))

(assert (=> b!2990309 d!844781))

(assert (=> b!2990309 d!844667))

(assert (=> b!2990309 d!844711))

(declare-fun b!2991286 () Bool)

(declare-fun res!1233768 () Bool)

(declare-fun e!1880263 () Bool)

(assert (=> b!2991286 (=> (not res!1233768) (not e!1880263))))

(declare-fun lt!1040446 () List!35212)

(assert (=> b!2991286 (= res!1233768 (= (size!26497 lt!1040446) (+ (size!26497 (_1!20138 (get!10879 lt!1040307))) (size!26497 (_2!20138 (get!10879 lt!1040307))))))))

(declare-fun b!2991285 () Bool)

(declare-fun e!1880264 () List!35212)

(assert (=> b!2991285 (= e!1880264 (Cons!35088 (h!40508 (_1!20138 (get!10879 lt!1040307))) (++!8391 (t!234277 (_1!20138 (get!10879 lt!1040307))) (_2!20138 (get!10879 lt!1040307)))))))

(declare-fun b!2991287 () Bool)

(assert (=> b!2991287 (= e!1880263 (or (not (= (_2!20138 (get!10879 lt!1040307)) Nil!35088)) (= lt!1040446 (_1!20138 (get!10879 lt!1040307)))))))

(declare-fun d!844783 () Bool)

(assert (=> d!844783 e!1880263))

(declare-fun res!1233769 () Bool)

(assert (=> d!844783 (=> (not res!1233769) (not e!1880263))))

(assert (=> d!844783 (= res!1233769 (= (content!4772 lt!1040446) ((_ map or) (content!4772 (_1!20138 (get!10879 lt!1040307))) (content!4772 (_2!20138 (get!10879 lt!1040307))))))))

(assert (=> d!844783 (= lt!1040446 e!1880264)))

(declare-fun c!491660 () Bool)

(assert (=> d!844783 (= c!491660 ((_ is Nil!35088) (_1!20138 (get!10879 lt!1040307))))))

(assert (=> d!844783 (= (++!8391 (_1!20138 (get!10879 lt!1040307)) (_2!20138 (get!10879 lt!1040307))) lt!1040446)))

(declare-fun b!2991284 () Bool)

(assert (=> b!2991284 (= e!1880264 (_2!20138 (get!10879 lt!1040307)))))

(assert (= (and d!844783 c!491660) b!2991284))

(assert (= (and d!844783 (not c!491660)) b!2991285))

(assert (= (and d!844783 res!1233769) b!2991286))

(assert (= (and b!2991286 res!1233768) b!2991287))

(declare-fun m!3347507 () Bool)

(assert (=> b!2991286 m!3347507))

(declare-fun m!3347509 () Bool)

(assert (=> b!2991286 m!3347509))

(declare-fun m!3347511 () Bool)

(assert (=> b!2991286 m!3347511))

(declare-fun m!3347513 () Bool)

(assert (=> b!2991285 m!3347513))

(declare-fun m!3347515 () Bool)

(assert (=> d!844783 m!3347515))

(declare-fun m!3347517 () Bool)

(assert (=> d!844783 m!3347517))

(declare-fun m!3347519 () Bool)

(assert (=> d!844783 m!3347519))

(assert (=> b!2990157 d!844783))

(assert (=> b!2990157 d!844717))

(declare-fun d!844785 () Bool)

(assert (=> d!844785 (= (nullable!3016 r!17423) (nullableFct!855 r!17423))))

(declare-fun bs!527754 () Bool)

(assert (= bs!527754 d!844785))

(declare-fun m!3347521 () Bool)

(assert (=> bs!527754 m!3347521))

(assert (=> b!2990393 d!844785))

(declare-fun b!2991290 () Bool)

(declare-fun res!1233770 () Bool)

(declare-fun e!1880265 () Bool)

(assert (=> b!2991290 (=> (not res!1233770) (not e!1880265))))

(declare-fun lt!1040447 () List!35212)

(assert (=> b!2991290 (= res!1233770 (= (size!26497 lt!1040447) (+ (size!26497 (t!234277 (_1!20138 lt!1040257))) (size!26497 (_2!20138 lt!1040257)))))))

(declare-fun b!2991289 () Bool)

(declare-fun e!1880266 () List!35212)

(assert (=> b!2991289 (= e!1880266 (Cons!35088 (h!40508 (t!234277 (_1!20138 lt!1040257))) (++!8391 (t!234277 (t!234277 (_1!20138 lt!1040257))) (_2!20138 lt!1040257))))))

(declare-fun b!2991291 () Bool)

(assert (=> b!2991291 (= e!1880265 (or (not (= (_2!20138 lt!1040257) Nil!35088)) (= lt!1040447 (t!234277 (_1!20138 lt!1040257)))))))

(declare-fun d!844787 () Bool)

(assert (=> d!844787 e!1880265))

(declare-fun res!1233771 () Bool)

(assert (=> d!844787 (=> (not res!1233771) (not e!1880265))))

(assert (=> d!844787 (= res!1233771 (= (content!4772 lt!1040447) ((_ map or) (content!4772 (t!234277 (_1!20138 lt!1040257))) (content!4772 (_2!20138 lt!1040257)))))))

(assert (=> d!844787 (= lt!1040447 e!1880266)))

(declare-fun c!491661 () Bool)

(assert (=> d!844787 (= c!491661 ((_ is Nil!35088) (t!234277 (_1!20138 lt!1040257))))))

(assert (=> d!844787 (= (++!8391 (t!234277 (_1!20138 lt!1040257)) (_2!20138 lt!1040257)) lt!1040447)))

(declare-fun b!2991288 () Bool)

(assert (=> b!2991288 (= e!1880266 (_2!20138 lt!1040257))))

(assert (= (and d!844787 c!491661) b!2991288))

(assert (= (and d!844787 (not c!491661)) b!2991289))

(assert (= (and d!844787 res!1233771) b!2991290))

(assert (= (and b!2991290 res!1233770) b!2991291))

(declare-fun m!3347523 () Bool)

(assert (=> b!2991290 m!3347523))

(assert (=> b!2991290 m!3346849))

(assert (=> b!2991290 m!3346641))

(declare-fun m!3347525 () Bool)

(assert (=> b!2991289 m!3347525))

(declare-fun m!3347527 () Bool)

(assert (=> d!844787 m!3347527))

(assert (=> d!844787 m!3347469))

(assert (=> d!844787 m!3346847))

(assert (=> b!2990332 d!844787))

(declare-fun d!844789 () Bool)

(assert (=> d!844789 (= (isEmptyLang!443 (ite c!491441 lt!1040364 lt!1040367)) ((_ is EmptyLang!9347) (ite c!491441 lt!1040364 lt!1040367)))))

(assert (=> bm!200029 d!844789))

(assert (=> b!2990004 d!844751))

(declare-fun b!2991292 () Bool)

(declare-fun e!1880280 () Bool)

(declare-fun call!200165 () Bool)

(assert (=> b!2991292 (= e!1880280 call!200165)))

(declare-fun b!2991293 () Bool)

(declare-fun c!491664 () Bool)

(declare-fun call!200160 () Bool)

(assert (=> b!2991293 (= c!491664 call!200160)))

(declare-fun e!1880270 () Regex!9347)

(declare-fun e!1880274 () Regex!9347)

(assert (=> b!2991293 (= e!1880270 e!1880274)))

(declare-fun b!2991294 () Bool)

(declare-fun e!1880275 () Regex!9347)

(assert (=> b!2991294 (= e!1880275 EmptyExpr!9347)))

(declare-fun b!2991295 () Bool)

(declare-fun e!1880272 () Regex!9347)

(declare-fun lt!1040451 () Regex!9347)

(assert (=> b!2991295 (= e!1880272 lt!1040451)))

(declare-fun b!2991296 () Bool)

(declare-fun e!1880271 () Regex!9347)

(declare-fun e!1880269 () Regex!9347)

(assert (=> b!2991296 (= e!1880271 e!1880269)))

(declare-fun c!491668 () Bool)

(assert (=> b!2991296 (= c!491668 ((_ is ElementMatch!9347) (ite c!491446 (reg!9676 (reg!9676 r!17423)) (ite c!491441 (regOne!19207 (reg!9676 r!17423)) (regTwo!19206 (reg!9676 r!17423))))))))

(declare-fun b!2991298 () Bool)

(declare-fun e!1880276 () Regex!9347)

(assert (=> b!2991298 (= e!1880276 EmptyLang!9347)))

(declare-fun b!2991299 () Bool)

(declare-fun e!1880268 () Regex!9347)

(assert (=> b!2991299 (= e!1880272 e!1880268)))

(declare-fun c!491663 () Bool)

(assert (=> b!2991299 (= c!491663 (isEmptyExpr!460 lt!1040451))))

(declare-fun c!491667 () Bool)

(declare-fun bm!200155 () Bool)

(declare-fun c!491662 () Bool)

(declare-fun call!200161 () Regex!9347)

(assert (=> bm!200155 (= call!200161 (simplify!338 (ite c!491667 (reg!9676 (ite c!491446 (reg!9676 (reg!9676 r!17423)) (ite c!491441 (regOne!19207 (reg!9676 r!17423)) (regTwo!19206 (reg!9676 r!17423))))) (ite c!491662 (regOne!19207 (ite c!491446 (reg!9676 (reg!9676 r!17423)) (ite c!491441 (regOne!19207 (reg!9676 r!17423)) (regTwo!19206 (reg!9676 r!17423))))) (regTwo!19206 (ite c!491446 (reg!9676 (reg!9676 r!17423)) (ite c!491441 (regOne!19207 (reg!9676 r!17423)) (regTwo!19206 (reg!9676 r!17423)))))))))))

(declare-fun lt!1040449 () Regex!9347)

(declare-fun bm!200156 () Bool)

(declare-fun call!200164 () Bool)

(declare-fun lt!1040448 () Regex!9347)

(assert (=> bm!200156 (= call!200164 (isEmptyLang!443 (ite c!491667 lt!1040449 (ite c!491662 lt!1040448 lt!1040451))))))

(declare-fun b!2991300 () Bool)

(declare-fun e!1880273 () Regex!9347)

(assert (=> b!2991300 (= e!1880273 e!1880270)))

(declare-fun call!200163 () Regex!9347)

(assert (=> b!2991300 (= lt!1040448 call!200163)))

(declare-fun lt!1040450 () Regex!9347)

(declare-fun call!200162 () Regex!9347)

(assert (=> b!2991300 (= lt!1040450 call!200162)))

(declare-fun c!491672 () Bool)

(declare-fun call!200166 () Bool)

(assert (=> b!2991300 (= c!491672 call!200166)))

(declare-fun b!2991301 () Bool)

(assert (=> b!2991301 (= e!1880269 (ite c!491446 (reg!9676 (reg!9676 r!17423)) (ite c!491441 (regOne!19207 (reg!9676 r!17423)) (regTwo!19206 (reg!9676 r!17423)))))))

(declare-fun b!2991302 () Bool)

(assert (=> b!2991302 (= c!491662 ((_ is Union!9347) (ite c!491446 (reg!9676 (reg!9676 r!17423)) (ite c!491441 (regOne!19207 (reg!9676 r!17423)) (regTwo!19206 (reg!9676 r!17423))))))))

(declare-fun e!1880279 () Regex!9347)

(assert (=> b!2991302 (= e!1880279 e!1880273)))

(declare-fun b!2991303 () Bool)

(assert (=> b!2991303 (= e!1880274 lt!1040448)))

(declare-fun bm!200157 () Bool)

(assert (=> bm!200157 (= call!200166 call!200164)))

(declare-fun b!2991304 () Bool)

(assert (=> b!2991304 (= e!1880273 e!1880276)))

(declare-fun lt!1040453 () Regex!9347)

(assert (=> b!2991304 (= lt!1040453 call!200162)))

(assert (=> b!2991304 (= lt!1040451 call!200163)))

(declare-fun res!1233774 () Bool)

(assert (=> b!2991304 (= res!1233774 call!200160)))

(declare-fun e!1880278 () Bool)

(assert (=> b!2991304 (=> res!1233774 e!1880278)))

(declare-fun c!491670 () Bool)

(assert (=> b!2991304 (= c!491670 e!1880278)))

(declare-fun b!2991305 () Bool)

(assert (=> b!2991305 (= e!1880274 (Union!9347 lt!1040448 lt!1040450))))

(declare-fun b!2991306 () Bool)

(assert (=> b!2991306 (= e!1880275 e!1880279)))

(assert (=> b!2991306 (= c!491667 ((_ is Star!9347) (ite c!491446 (reg!9676 (reg!9676 r!17423)) (ite c!491441 (regOne!19207 (reg!9676 r!17423)) (regTwo!19206 (reg!9676 r!17423))))))))

(declare-fun b!2991307 () Bool)

(assert (=> b!2991307 (= e!1880271 EmptyLang!9347)))

(declare-fun bm!200158 () Bool)

(assert (=> bm!200158 (= call!200163 call!200161)))

(declare-fun b!2991308 () Bool)

(assert (=> b!2991308 (= e!1880268 (Concat!14668 lt!1040453 lt!1040451))))

(declare-fun b!2991309 () Bool)

(declare-fun c!491669 () Bool)

(assert (=> b!2991309 (= c!491669 call!200165)))

(assert (=> b!2991309 (= e!1880276 e!1880272)))

(declare-fun b!2991310 () Bool)

(assert (=> b!2991310 (= e!1880270 lt!1040450)))

(declare-fun b!2991311 () Bool)

(assert (=> b!2991311 (= e!1880278 call!200166)))

(declare-fun b!2991312 () Bool)

(declare-fun c!491666 () Bool)

(assert (=> b!2991312 (= c!491666 e!1880280)))

(declare-fun res!1233773 () Bool)

(assert (=> b!2991312 (=> res!1233773 e!1880280)))

(assert (=> b!2991312 (= res!1233773 call!200164)))

(assert (=> b!2991312 (= lt!1040449 call!200161)))

(declare-fun e!1880277 () Regex!9347)

(assert (=> b!2991312 (= e!1880279 e!1880277)))

(declare-fun b!2991313 () Bool)

(assert (=> b!2991313 (= e!1880277 EmptyExpr!9347)))

(declare-fun e!1880267 () Bool)

(declare-fun b!2991314 () Bool)

(declare-fun lt!1040452 () Regex!9347)

(assert (=> b!2991314 (= e!1880267 (= (nullable!3016 lt!1040452) (nullable!3016 (ite c!491446 (reg!9676 (reg!9676 r!17423)) (ite c!491441 (regOne!19207 (reg!9676 r!17423)) (regTwo!19206 (reg!9676 r!17423)))))))))

(declare-fun b!2991315 () Bool)

(assert (=> b!2991315 (= e!1880268 lt!1040453)))

(declare-fun bm!200159 () Bool)

(assert (=> bm!200159 (= call!200162 (simplify!338 (ite c!491662 (regTwo!19207 (ite c!491446 (reg!9676 (reg!9676 r!17423)) (ite c!491441 (regOne!19207 (reg!9676 r!17423)) (regTwo!19206 (reg!9676 r!17423))))) (regOne!19206 (ite c!491446 (reg!9676 (reg!9676 r!17423)) (ite c!491441 (regOne!19207 (reg!9676 r!17423)) (regTwo!19206 (reg!9676 r!17423))))))))))

(declare-fun b!2991316 () Bool)

(assert (=> b!2991316 (= e!1880277 (Star!9347 lt!1040449))))

(declare-fun d!844791 () Bool)

(assert (=> d!844791 e!1880267))

(declare-fun res!1233772 () Bool)

(assert (=> d!844791 (=> (not res!1233772) (not e!1880267))))

(assert (=> d!844791 (= res!1233772 (validRegex!4080 lt!1040452))))

(assert (=> d!844791 (= lt!1040452 e!1880271)))

(declare-fun c!491671 () Bool)

(assert (=> d!844791 (= c!491671 ((_ is EmptyLang!9347) (ite c!491446 (reg!9676 (reg!9676 r!17423)) (ite c!491441 (regOne!19207 (reg!9676 r!17423)) (regTwo!19206 (reg!9676 r!17423))))))))

(assert (=> d!844791 (validRegex!4080 (ite c!491446 (reg!9676 (reg!9676 r!17423)) (ite c!491441 (regOne!19207 (reg!9676 r!17423)) (regTwo!19206 (reg!9676 r!17423)))))))

(assert (=> d!844791 (= (simplify!338 (ite c!491446 (reg!9676 (reg!9676 r!17423)) (ite c!491441 (regOne!19207 (reg!9676 r!17423)) (regTwo!19206 (reg!9676 r!17423))))) lt!1040452)))

(declare-fun b!2991297 () Bool)

(declare-fun c!491665 () Bool)

(assert (=> b!2991297 (= c!491665 ((_ is EmptyExpr!9347) (ite c!491446 (reg!9676 (reg!9676 r!17423)) (ite c!491441 (regOne!19207 (reg!9676 r!17423)) (regTwo!19206 (reg!9676 r!17423))))))))

(assert (=> b!2991297 (= e!1880269 e!1880275)))

(declare-fun bm!200160 () Bool)

(assert (=> bm!200160 (= call!200165 (isEmptyExpr!460 (ite c!491667 lt!1040449 lt!1040453)))))

(declare-fun bm!200161 () Bool)

(assert (=> bm!200161 (= call!200160 (isEmptyLang!443 (ite c!491662 lt!1040450 lt!1040453)))))

(assert (= (and d!844791 c!491671) b!2991307))

(assert (= (and d!844791 (not c!491671)) b!2991296))

(assert (= (and b!2991296 c!491668) b!2991301))

(assert (= (and b!2991296 (not c!491668)) b!2991297))

(assert (= (and b!2991297 c!491665) b!2991294))

(assert (= (and b!2991297 (not c!491665)) b!2991306))

(assert (= (and b!2991306 c!491667) b!2991312))

(assert (= (and b!2991306 (not c!491667)) b!2991302))

(assert (= (and b!2991312 (not res!1233773)) b!2991292))

(assert (= (and b!2991312 c!491666) b!2991313))

(assert (= (and b!2991312 (not c!491666)) b!2991316))

(assert (= (and b!2991302 c!491662) b!2991300))

(assert (= (and b!2991302 (not c!491662)) b!2991304))

(assert (= (and b!2991300 c!491672) b!2991310))

(assert (= (and b!2991300 (not c!491672)) b!2991293))

(assert (= (and b!2991293 c!491664) b!2991303))

(assert (= (and b!2991293 (not c!491664)) b!2991305))

(assert (= (and b!2991304 (not res!1233774)) b!2991311))

(assert (= (and b!2991304 c!491670) b!2991298))

(assert (= (and b!2991304 (not c!491670)) b!2991309))

(assert (= (and b!2991309 c!491669) b!2991295))

(assert (= (and b!2991309 (not c!491669)) b!2991299))

(assert (= (and b!2991299 c!491663) b!2991315))

(assert (= (and b!2991299 (not c!491663)) b!2991308))

(assert (= (or b!2991300 b!2991304) bm!200158))

(assert (= (or b!2991300 b!2991304) bm!200159))

(assert (= (or b!2991293 b!2991304) bm!200161))

(assert (= (or b!2991300 b!2991311) bm!200157))

(assert (= (or b!2991292 b!2991309) bm!200160))

(assert (= (or b!2991312 bm!200158) bm!200155))

(assert (= (or b!2991312 bm!200157) bm!200156))

(assert (= (and d!844791 res!1233772) b!2991314))

(declare-fun m!3347529 () Bool)

(assert (=> d!844791 m!3347529))

(declare-fun m!3347531 () Bool)

(assert (=> d!844791 m!3347531))

(declare-fun m!3347533 () Bool)

(assert (=> bm!200156 m!3347533))

(declare-fun m!3347535 () Bool)

(assert (=> b!2991314 m!3347535))

(declare-fun m!3347537 () Bool)

(assert (=> b!2991314 m!3347537))

(declare-fun m!3347539 () Bool)

(assert (=> b!2991299 m!3347539))

(declare-fun m!3347541 () Bool)

(assert (=> bm!200161 m!3347541))

(declare-fun m!3347543 () Bool)

(assert (=> bm!200160 m!3347543))

(declare-fun m!3347545 () Bool)

(assert (=> bm!200159 m!3347545))

(declare-fun m!3347547 () Bool)

(assert (=> bm!200155 m!3347547))

(assert (=> bm!200023 d!844791))

(declare-fun d!844793 () Bool)

(assert (=> d!844793 (= (isDefined!5289 lt!1040307) (not (isEmpty!19357 lt!1040307)))))

(declare-fun bs!527755 () Bool)

(assert (= bs!527755 d!844793))

(declare-fun m!3347549 () Bool)

(assert (=> bs!527755 m!3347549))

(assert (=> b!2990153 d!844793))

(assert (=> b!2990478 d!844709))

(assert (=> b!2990478 d!844711))

(assert (=> b!2990476 d!844667))

(assert (=> b!2990502 d!844685))

(declare-fun b!2991317 () Bool)

(declare-fun e!1880284 () Bool)

(declare-fun e!1880283 () Bool)

(assert (=> b!2991317 (= e!1880284 e!1880283)))

(declare-fun c!491673 () Bool)

(assert (=> b!2991317 (= c!491673 ((_ is Union!9347) (ite c!491322 (regOne!19207 r!17423) (regTwo!19206 r!17423))))))

(declare-fun c!491674 () Bool)

(declare-fun call!200168 () Bool)

(declare-fun bm!200162 () Bool)

(assert (=> bm!200162 (= call!200168 (validRegex!4080 (ite c!491674 (reg!9676 (ite c!491322 (regOne!19207 r!17423) (regTwo!19206 r!17423))) (ite c!491673 (regTwo!19207 (ite c!491322 (regOne!19207 r!17423) (regTwo!19206 r!17423))) (regOne!19206 (ite c!491322 (regOne!19207 r!17423) (regTwo!19206 r!17423)))))))))

(declare-fun bm!200163 () Bool)

(declare-fun call!200169 () Bool)

(assert (=> bm!200163 (= call!200169 (validRegex!4080 (ite c!491673 (regOne!19207 (ite c!491322 (regOne!19207 r!17423) (regTwo!19206 r!17423))) (regTwo!19206 (ite c!491322 (regOne!19207 r!17423) (regTwo!19206 r!17423))))))))

(declare-fun bm!200164 () Bool)

(declare-fun call!200167 () Bool)

(assert (=> bm!200164 (= call!200167 call!200168)))

(declare-fun b!2991318 () Bool)

(declare-fun e!1880285 () Bool)

(assert (=> b!2991318 (= e!1880284 e!1880285)))

(declare-fun res!1233778 () Bool)

(assert (=> b!2991318 (= res!1233778 (not (nullable!3016 (reg!9676 (ite c!491322 (regOne!19207 r!17423) (regTwo!19206 r!17423))))))))

(assert (=> b!2991318 (=> (not res!1233778) (not e!1880285))))

(declare-fun b!2991319 () Bool)

(declare-fun e!1880286 () Bool)

(assert (=> b!2991319 (= e!1880286 call!200169)))

(declare-fun d!844795 () Bool)

(declare-fun res!1233775 () Bool)

(declare-fun e!1880287 () Bool)

(assert (=> d!844795 (=> res!1233775 e!1880287)))

(assert (=> d!844795 (= res!1233775 ((_ is ElementMatch!9347) (ite c!491322 (regOne!19207 r!17423) (regTwo!19206 r!17423))))))

(assert (=> d!844795 (= (validRegex!4080 (ite c!491322 (regOne!19207 r!17423) (regTwo!19206 r!17423))) e!1880287)))

(declare-fun b!2991320 () Bool)

(declare-fun e!1880281 () Bool)

(assert (=> b!2991320 (= e!1880281 call!200167)))

(declare-fun b!2991321 () Bool)

(declare-fun e!1880282 () Bool)

(assert (=> b!2991321 (= e!1880282 e!1880286)))

(declare-fun res!1233779 () Bool)

(assert (=> b!2991321 (=> (not res!1233779) (not e!1880286))))

(assert (=> b!2991321 (= res!1233779 call!200167)))

(declare-fun b!2991322 () Bool)

(declare-fun res!1233776 () Bool)

(assert (=> b!2991322 (=> (not res!1233776) (not e!1880281))))

(assert (=> b!2991322 (= res!1233776 call!200169)))

(assert (=> b!2991322 (= e!1880283 e!1880281)))

(declare-fun b!2991323 () Bool)

(assert (=> b!2991323 (= e!1880285 call!200168)))

(declare-fun b!2991324 () Bool)

(assert (=> b!2991324 (= e!1880287 e!1880284)))

(assert (=> b!2991324 (= c!491674 ((_ is Star!9347) (ite c!491322 (regOne!19207 r!17423) (regTwo!19206 r!17423))))))

(declare-fun b!2991325 () Bool)

(declare-fun res!1233777 () Bool)

(assert (=> b!2991325 (=> res!1233777 e!1880282)))

(assert (=> b!2991325 (= res!1233777 (not ((_ is Concat!14668) (ite c!491322 (regOne!19207 r!17423) (regTwo!19206 r!17423)))))))

(assert (=> b!2991325 (= e!1880283 e!1880282)))

(assert (= (and d!844795 (not res!1233775)) b!2991324))

(assert (= (and b!2991324 c!491674) b!2991318))

(assert (= (and b!2991324 (not c!491674)) b!2991317))

(assert (= (and b!2991318 res!1233778) b!2991323))

(assert (= (and b!2991317 c!491673) b!2991322))

(assert (= (and b!2991317 (not c!491673)) b!2991325))

(assert (= (and b!2991322 res!1233776) b!2991320))

(assert (= (and b!2991325 (not res!1233777)) b!2991321))

(assert (= (and b!2991321 res!1233779) b!2991319))

(assert (= (or b!2991322 b!2991319) bm!200163))

(assert (= (or b!2991320 b!2991321) bm!200164))

(assert (= (or b!2991323 bm!200164) bm!200162))

(declare-fun m!3347551 () Bool)

(assert (=> bm!200162 m!3347551))

(declare-fun m!3347553 () Bool)

(assert (=> bm!200163 m!3347553))

(declare-fun m!3347555 () Bool)

(assert (=> b!2991318 m!3347555))

(assert (=> bm!199965 d!844795))

(assert (=> bm!200008 d!844531))

(declare-fun d!844797 () Bool)

(assert (=> d!844797 (= (nullable!3016 lt!1040260) (nullableFct!855 lt!1040260))))

(declare-fun bs!527756 () Bool)

(assert (= bs!527756 d!844797))

(declare-fun m!3347557 () Bool)

(assert (=> bs!527756 m!3347557))

(assert (=> b!2990500 d!844797))

(declare-fun d!844799 () Bool)

(assert (=> d!844799 (= (isEmpty!19357 lt!1040262) (not ((_ is Some!6737) lt!1040262)))))

(assert (=> d!844481 d!844799))

(assert (=> d!844459 d!844793))

(declare-fun b!2991326 () Bool)

(declare-fun e!1880291 () Bool)

(assert (=> b!2991326 (= e!1880291 (matchR!4229 (derivativeStep!2614 (reg!9676 r!17423) (head!6673 Nil!35088)) (tail!4899 Nil!35088)))))

(declare-fun b!2991327 () Bool)

(declare-fun e!1880293 () Bool)

(assert (=> b!2991327 (= e!1880293 (not (= (head!6673 Nil!35088) (c!491293 (reg!9676 r!17423)))))))

(declare-fun b!2991328 () Bool)

(declare-fun res!1233783 () Bool)

(assert (=> b!2991328 (=> res!1233783 e!1880293)))

(assert (=> b!2991328 (= res!1233783 (not (isEmpty!19356 (tail!4899 Nil!35088))))))

(declare-fun b!2991329 () Bool)

(declare-fun res!1233782 () Bool)

(declare-fun e!1880288 () Bool)

(assert (=> b!2991329 (=> (not res!1233782) (not e!1880288))))

(assert (=> b!2991329 (= res!1233782 (isEmpty!19356 (tail!4899 Nil!35088)))))

(declare-fun bm!200165 () Bool)

(declare-fun call!200170 () Bool)

(assert (=> bm!200165 (= call!200170 (isEmpty!19356 Nil!35088))))

(declare-fun b!2991330 () Bool)

(declare-fun e!1880292 () Bool)

(declare-fun lt!1040454 () Bool)

(assert (=> b!2991330 (= e!1880292 (= lt!1040454 call!200170))))

(declare-fun b!2991332 () Bool)

(declare-fun e!1880289 () Bool)

(assert (=> b!2991332 (= e!1880292 e!1880289)))

(declare-fun c!491675 () Bool)

(assert (=> b!2991332 (= c!491675 ((_ is EmptyLang!9347) (reg!9676 r!17423)))))

(declare-fun b!2991333 () Bool)

(declare-fun res!1233781 () Bool)

(assert (=> b!2991333 (=> (not res!1233781) (not e!1880288))))

(assert (=> b!2991333 (= res!1233781 (not call!200170))))

(declare-fun d!844801 () Bool)

(assert (=> d!844801 e!1880292))

(declare-fun c!491676 () Bool)

(assert (=> d!844801 (= c!491676 ((_ is EmptyExpr!9347) (reg!9676 r!17423)))))

(assert (=> d!844801 (= lt!1040454 e!1880291)))

(declare-fun c!491677 () Bool)

(assert (=> d!844801 (= c!491677 (isEmpty!19356 Nil!35088))))

(assert (=> d!844801 (validRegex!4080 (reg!9676 r!17423))))

(assert (=> d!844801 (= (matchR!4229 (reg!9676 r!17423) Nil!35088) lt!1040454)))

(declare-fun b!2991331 () Bool)

(declare-fun e!1880294 () Bool)

(assert (=> b!2991331 (= e!1880294 e!1880293)))

(declare-fun res!1233780 () Bool)

(assert (=> b!2991331 (=> res!1233780 e!1880293)))

(assert (=> b!2991331 (= res!1233780 call!200170)))

(declare-fun b!2991334 () Bool)

(declare-fun res!1233786 () Bool)

(declare-fun e!1880290 () Bool)

(assert (=> b!2991334 (=> res!1233786 e!1880290)))

(assert (=> b!2991334 (= res!1233786 e!1880288)))

(declare-fun res!1233784 () Bool)

(assert (=> b!2991334 (=> (not res!1233784) (not e!1880288))))

(assert (=> b!2991334 (= res!1233784 lt!1040454)))

(declare-fun b!2991335 () Bool)

(assert (=> b!2991335 (= e!1880291 (nullable!3016 (reg!9676 r!17423)))))

(declare-fun b!2991336 () Bool)

(assert (=> b!2991336 (= e!1880290 e!1880294)))

(declare-fun res!1233785 () Bool)

(assert (=> b!2991336 (=> (not res!1233785) (not e!1880294))))

(assert (=> b!2991336 (= res!1233785 (not lt!1040454))))

(declare-fun b!2991337 () Bool)

(assert (=> b!2991337 (= e!1880288 (= (head!6673 Nil!35088) (c!491293 (reg!9676 r!17423))))))

(declare-fun b!2991338 () Bool)

(assert (=> b!2991338 (= e!1880289 (not lt!1040454))))

(declare-fun b!2991339 () Bool)

(declare-fun res!1233787 () Bool)

(assert (=> b!2991339 (=> res!1233787 e!1880290)))

(assert (=> b!2991339 (= res!1233787 (not ((_ is ElementMatch!9347) (reg!9676 r!17423))))))

(assert (=> b!2991339 (= e!1880289 e!1880290)))

(assert (= (and d!844801 c!491677) b!2991335))

(assert (= (and d!844801 (not c!491677)) b!2991326))

(assert (= (and d!844801 c!491676) b!2991330))

(assert (= (and d!844801 (not c!491676)) b!2991332))

(assert (= (and b!2991332 c!491675) b!2991338))

(assert (= (and b!2991332 (not c!491675)) b!2991339))

(assert (= (and b!2991339 (not res!1233787)) b!2991334))

(assert (= (and b!2991334 res!1233784) b!2991333))

(assert (= (and b!2991333 res!1233781) b!2991329))

(assert (= (and b!2991329 res!1233782) b!2991337))

(assert (= (and b!2991334 (not res!1233786)) b!2991336))

(assert (= (and b!2991336 res!1233785) b!2991331))

(assert (= (and b!2991331 (not res!1233780)) b!2991328))

(assert (= (and b!2991328 (not res!1233783)) b!2991327))

(assert (= (or b!2991330 b!2991331 b!2991333) bm!200165))

(declare-fun m!3347559 () Bool)

(assert (=> d!844801 m!3347559))

(assert (=> d!844801 m!3346737))

(declare-fun m!3347561 () Bool)

(assert (=> b!2991328 m!3347561))

(assert (=> b!2991328 m!3347561))

(declare-fun m!3347563 () Bool)

(assert (=> b!2991328 m!3347563))

(declare-fun m!3347565 () Bool)

(assert (=> b!2991337 m!3347565))

(assert (=> b!2991329 m!3347561))

(assert (=> b!2991329 m!3347561))

(assert (=> b!2991329 m!3347563))

(assert (=> bm!200165 m!3347559))

(assert (=> b!2991327 m!3347565))

(assert (=> b!2991326 m!3347565))

(assert (=> b!2991326 m!3347565))

(declare-fun m!3347567 () Bool)

(assert (=> b!2991326 m!3347567))

(assert (=> b!2991326 m!3347561))

(assert (=> b!2991326 m!3347567))

(assert (=> b!2991326 m!3347561))

(declare-fun m!3347569 () Bool)

(assert (=> b!2991326 m!3347569))

(assert (=> b!2991335 m!3346681))

(assert (=> d!844459 d!844801))

(assert (=> d!844459 d!844659))

(declare-fun bs!527757 () Bool)

(declare-fun b!2991350 () Bool)

(assert (= bs!527757 (and b!2991350 d!844493)))

(declare-fun lambda!111831 () Int)

(assert (=> bs!527757 (= (and (= (reg!9676 (regOne!19207 r!17423)) (reg!9676 r!17423)) (= (regOne!19207 r!17423) (Star!9347 (reg!9676 r!17423)))) (= lambda!111831 lambda!111800))))

(declare-fun bs!527758 () Bool)

(assert (= bs!527758 (and b!2991350 d!844733)))

(assert (=> bs!527758 (not (= lambda!111831 lambda!111824))))

(declare-fun bs!527759 () Bool)

(assert (= bs!527759 (and b!2991350 b!2989869)))

(assert (=> bs!527759 (not (= lambda!111831 lambda!111775))))

(assert (=> bs!527757 (not (= lambda!111831 lambda!111799))))

(declare-fun bs!527760 () Bool)

(assert (= bs!527760 (and b!2991350 d!844483)))

(assert (=> bs!527760 (not (= lambda!111831 lambda!111788))))

(assert (=> bs!527758 (= (and (= (reg!9676 (regOne!19207 r!17423)) (reg!9676 r!17423)) (= (regOne!19207 r!17423) (Star!9347 (reg!9676 r!17423)))) (= lambda!111831 lambda!111825))))

(declare-fun bs!527761 () Bool)

(assert (= bs!527761 (and b!2991350 b!2991241)))

(assert (=> bs!527761 (= (and (= (reg!9676 (regOne!19207 r!17423)) (reg!9676 (regTwo!19207 r!17423))) (= (regOne!19207 r!17423) (regTwo!19207 r!17423))) (= lambda!111831 lambda!111826))))

(declare-fun bs!527762 () Bool)

(assert (= bs!527762 (and b!2991350 b!2991238)))

(assert (=> bs!527762 (not (= lambda!111831 lambda!111827))))

(declare-fun bs!527763 () Bool)

(assert (= bs!527763 (and b!2991350 b!2990383)))

(assert (=> bs!527763 (= (and (= (reg!9676 (regOne!19207 r!17423)) (reg!9676 r!17423)) (= (regOne!19207 r!17423) r!17423)) (= lambda!111831 lambda!111805))))

(assert (=> bs!527759 (= (and (= (reg!9676 (regOne!19207 r!17423)) (reg!9676 r!17423)) (= (regOne!19207 r!17423) lt!1040260)) (= lambda!111831 lambda!111776))))

(declare-fun bs!527764 () Bool)

(assert (= bs!527764 (and b!2991350 d!844773)))

(assert (=> bs!527764 (not (= lambda!111831 lambda!111830))))

(declare-fun bs!527765 () Bool)

(assert (= bs!527765 (and b!2991350 b!2990380)))

(assert (=> bs!527765 (not (= lambda!111831 lambda!111806))))

(assert (=> b!2991350 true))

(assert (=> b!2991350 true))

(declare-fun bs!527766 () Bool)

(declare-fun b!2991347 () Bool)

(assert (= bs!527766 (and b!2991347 d!844493)))

(declare-fun lambda!111832 () Int)

(assert (=> bs!527766 (not (= lambda!111832 lambda!111800))))

(declare-fun bs!527767 () Bool)

(assert (= bs!527767 (and b!2991347 d!844733)))

(assert (=> bs!527767 (not (= lambda!111832 lambda!111824))))

(declare-fun bs!527768 () Bool)

(assert (= bs!527768 (and b!2991347 b!2989869)))

(assert (=> bs!527768 (not (= lambda!111832 lambda!111775))))

(declare-fun bs!527769 () Bool)

(assert (= bs!527769 (and b!2991347 b!2991350)))

(assert (=> bs!527769 (not (= lambda!111832 lambda!111831))))

(assert (=> bs!527766 (not (= lambda!111832 lambda!111799))))

(declare-fun bs!527770 () Bool)

(assert (= bs!527770 (and b!2991347 d!844483)))

(assert (=> bs!527770 (not (= lambda!111832 lambda!111788))))

(assert (=> bs!527767 (not (= lambda!111832 lambda!111825))))

(declare-fun bs!527771 () Bool)

(assert (= bs!527771 (and b!2991347 b!2991241)))

(assert (=> bs!527771 (not (= lambda!111832 lambda!111826))))

(declare-fun bs!527772 () Bool)

(assert (= bs!527772 (and b!2991347 b!2991238)))

(assert (=> bs!527772 (= (and (= (regOne!19206 (regOne!19207 r!17423)) (regOne!19206 (regTwo!19207 r!17423))) (= (regTwo!19206 (regOne!19207 r!17423)) (regTwo!19206 (regTwo!19207 r!17423)))) (= lambda!111832 lambda!111827))))

(declare-fun bs!527773 () Bool)

(assert (= bs!527773 (and b!2991347 b!2990383)))

(assert (=> bs!527773 (not (= lambda!111832 lambda!111805))))

(assert (=> bs!527768 (not (= lambda!111832 lambda!111776))))

(declare-fun bs!527774 () Bool)

(assert (= bs!527774 (and b!2991347 d!844773)))

(assert (=> bs!527774 (not (= lambda!111832 lambda!111830))))

(declare-fun bs!527775 () Bool)

(assert (= bs!527775 (and b!2991347 b!2990380)))

(assert (=> bs!527775 (= (and (= (regOne!19206 (regOne!19207 r!17423)) (regOne!19206 r!17423)) (= (regTwo!19206 (regOne!19207 r!17423)) (regTwo!19206 r!17423))) (= lambda!111832 lambda!111806))))

(assert (=> b!2991347 true))

(assert (=> b!2991347 true))

(declare-fun b!2991340 () Bool)

(declare-fun e!1880297 () Bool)

(declare-fun e!1880301 () Bool)

(assert (=> b!2991340 (= e!1880297 e!1880301)))

(declare-fun res!1233788 () Bool)

(assert (=> b!2991340 (= res!1233788 (not ((_ is EmptyLang!9347) (regOne!19207 r!17423))))))

(assert (=> b!2991340 (=> (not res!1233788) (not e!1880301))))

(declare-fun bm!200166 () Bool)

(declare-fun call!200172 () Bool)

(assert (=> bm!200166 (= call!200172 (isEmpty!19356 s!11993))))

(declare-fun b!2991341 () Bool)

(declare-fun res!1233790 () Bool)

(declare-fun e!1880299 () Bool)

(assert (=> b!2991341 (=> res!1233790 e!1880299)))

(assert (=> b!2991341 (= res!1233790 call!200172)))

(declare-fun e!1880295 () Bool)

(assert (=> b!2991341 (= e!1880295 e!1880299)))

(declare-fun b!2991342 () Bool)

(declare-fun e!1880298 () Bool)

(assert (=> b!2991342 (= e!1880298 (matchRSpec!1484 (regTwo!19207 (regOne!19207 r!17423)) s!11993))))

(declare-fun b!2991343 () Bool)

(declare-fun c!491678 () Bool)

(assert (=> b!2991343 (= c!491678 ((_ is Union!9347) (regOne!19207 r!17423)))))

(declare-fun e!1880300 () Bool)

(declare-fun e!1880296 () Bool)

(assert (=> b!2991343 (= e!1880300 e!1880296)))

(declare-fun d!844803 () Bool)

(declare-fun c!491679 () Bool)

(assert (=> d!844803 (= c!491679 ((_ is EmptyExpr!9347) (regOne!19207 r!17423)))))

(assert (=> d!844803 (= (matchRSpec!1484 (regOne!19207 r!17423) s!11993) e!1880297)))

(declare-fun b!2991344 () Bool)

(assert (=> b!2991344 (= e!1880296 e!1880295)))

(declare-fun c!491680 () Bool)

(assert (=> b!2991344 (= c!491680 ((_ is Star!9347) (regOne!19207 r!17423)))))

(declare-fun b!2991345 () Bool)

(assert (=> b!2991345 (= e!1880300 (= s!11993 (Cons!35088 (c!491293 (regOne!19207 r!17423)) Nil!35088)))))

(declare-fun b!2991346 () Bool)

(assert (=> b!2991346 (= e!1880297 call!200172)))

(declare-fun call!200171 () Bool)

(assert (=> b!2991347 (= e!1880295 call!200171)))

(declare-fun bm!200167 () Bool)

(assert (=> bm!200167 (= call!200171 (Exists!1620 (ite c!491680 lambda!111831 lambda!111832)))))

(declare-fun b!2991348 () Bool)

(assert (=> b!2991348 (= e!1880296 e!1880298)))

(declare-fun res!1233789 () Bool)

(assert (=> b!2991348 (= res!1233789 (matchRSpec!1484 (regOne!19207 (regOne!19207 r!17423)) s!11993))))

(assert (=> b!2991348 (=> res!1233789 e!1880298)))

(declare-fun b!2991349 () Bool)

(declare-fun c!491681 () Bool)

(assert (=> b!2991349 (= c!491681 ((_ is ElementMatch!9347) (regOne!19207 r!17423)))))

(assert (=> b!2991349 (= e!1880301 e!1880300)))

(assert (=> b!2991350 (= e!1880299 call!200171)))

(assert (= (and d!844803 c!491679) b!2991346))

(assert (= (and d!844803 (not c!491679)) b!2991340))

(assert (= (and b!2991340 res!1233788) b!2991349))

(assert (= (and b!2991349 c!491681) b!2991345))

(assert (= (and b!2991349 (not c!491681)) b!2991343))

(assert (= (and b!2991343 c!491678) b!2991348))

(assert (= (and b!2991343 (not c!491678)) b!2991344))

(assert (= (and b!2991348 (not res!1233789)) b!2991342))

(assert (= (and b!2991344 c!491680) b!2991341))

(assert (= (and b!2991344 (not c!491680)) b!2991347))

(assert (= (and b!2991341 (not res!1233790)) b!2991350))

(assert (= (or b!2991350 b!2991347) bm!200167))

(assert (= (or b!2991346 b!2991341) bm!200166))

(assert (=> bm!200166 m!3346633))

(declare-fun m!3347571 () Bool)

(assert (=> b!2991342 m!3347571))

(declare-fun m!3347573 () Bool)

(assert (=> bm!200167 m!3347573))

(declare-fun m!3347575 () Bool)

(assert (=> b!2991348 m!3347575))

(assert (=> b!2990381 d!844803))

(declare-fun b!2991352 () Bool)

(declare-fun e!1880302 () Bool)

(declare-fun tp!950995 () Bool)

(declare-fun tp!950993 () Bool)

(assert (=> b!2991352 (= e!1880302 (and tp!950995 tp!950993))))

(declare-fun b!2991354 () Bool)

(declare-fun tp!950996 () Bool)

(declare-fun tp!950992 () Bool)

(assert (=> b!2991354 (= e!1880302 (and tp!950996 tp!950992))))

(assert (=> b!2990531 (= tp!950855 e!1880302)))

(declare-fun b!2991351 () Bool)

(assert (=> b!2991351 (= e!1880302 tp_is_empty!16257)))

(declare-fun b!2991353 () Bool)

(declare-fun tp!950994 () Bool)

(assert (=> b!2991353 (= e!1880302 tp!950994)))

(assert (= (and b!2990531 ((_ is ElementMatch!9347) (regOne!19207 (reg!9676 r!17423)))) b!2991351))

(assert (= (and b!2990531 ((_ is Concat!14668) (regOne!19207 (reg!9676 r!17423)))) b!2991352))

(assert (= (and b!2990531 ((_ is Star!9347) (regOne!19207 (reg!9676 r!17423)))) b!2991353))

(assert (= (and b!2990531 ((_ is Union!9347) (regOne!19207 (reg!9676 r!17423)))) b!2991354))

(declare-fun b!2991356 () Bool)

(declare-fun e!1880303 () Bool)

(declare-fun tp!951000 () Bool)

(declare-fun tp!950998 () Bool)

(assert (=> b!2991356 (= e!1880303 (and tp!951000 tp!950998))))

(declare-fun b!2991358 () Bool)

(declare-fun tp!951001 () Bool)

(declare-fun tp!950997 () Bool)

(assert (=> b!2991358 (= e!1880303 (and tp!951001 tp!950997))))

(assert (=> b!2990531 (= tp!950851 e!1880303)))

(declare-fun b!2991355 () Bool)

(assert (=> b!2991355 (= e!1880303 tp_is_empty!16257)))

(declare-fun b!2991357 () Bool)

(declare-fun tp!950999 () Bool)

(assert (=> b!2991357 (= e!1880303 tp!950999)))

(assert (= (and b!2990531 ((_ is ElementMatch!9347) (regTwo!19207 (reg!9676 r!17423)))) b!2991355))

(assert (= (and b!2990531 ((_ is Concat!14668) (regTwo!19207 (reg!9676 r!17423)))) b!2991356))

(assert (= (and b!2990531 ((_ is Star!9347) (regTwo!19207 (reg!9676 r!17423)))) b!2991357))

(assert (= (and b!2990531 ((_ is Union!9347) (regTwo!19207 (reg!9676 r!17423)))) b!2991358))

(declare-fun b!2991359 () Bool)

(declare-fun e!1880304 () Bool)

(declare-fun tp!951002 () Bool)

(assert (=> b!2991359 (= e!1880304 (and tp_is_empty!16257 tp!951002))))

(assert (=> b!2990527 (= tp!950850 e!1880304)))

(assert (= (and b!2990527 ((_ is Cons!35088) (t!234277 (t!234277 s!11993)))) b!2991359))

(declare-fun b!2991361 () Bool)

(declare-fun e!1880305 () Bool)

(declare-fun tp!951006 () Bool)

(declare-fun tp!951004 () Bool)

(assert (=> b!2991361 (= e!1880305 (and tp!951006 tp!951004))))

(declare-fun b!2991363 () Bool)

(declare-fun tp!951007 () Bool)

(declare-fun tp!951003 () Bool)

(assert (=> b!2991363 (= e!1880305 (and tp!951007 tp!951003))))

(assert (=> b!2990530 (= tp!950853 e!1880305)))

(declare-fun b!2991360 () Bool)

(assert (=> b!2991360 (= e!1880305 tp_is_empty!16257)))

(declare-fun b!2991362 () Bool)

(declare-fun tp!951005 () Bool)

(assert (=> b!2991362 (= e!1880305 tp!951005)))

(assert (= (and b!2990530 ((_ is ElementMatch!9347) (reg!9676 (reg!9676 r!17423)))) b!2991360))

(assert (= (and b!2990530 ((_ is Concat!14668) (reg!9676 (reg!9676 r!17423)))) b!2991361))

(assert (= (and b!2990530 ((_ is Star!9347) (reg!9676 (reg!9676 r!17423)))) b!2991362))

(assert (= (and b!2990530 ((_ is Union!9347) (reg!9676 (reg!9676 r!17423)))) b!2991363))

(declare-fun b!2991365 () Bool)

(declare-fun e!1880306 () Bool)

(declare-fun tp!951011 () Bool)

(declare-fun tp!951009 () Bool)

(assert (=> b!2991365 (= e!1880306 (and tp!951011 tp!951009))))

(declare-fun b!2991367 () Bool)

(declare-fun tp!951012 () Bool)

(declare-fun tp!951008 () Bool)

(assert (=> b!2991367 (= e!1880306 (and tp!951012 tp!951008))))

(assert (=> b!2990539 (= tp!950865 e!1880306)))

(declare-fun b!2991364 () Bool)

(assert (=> b!2991364 (= e!1880306 tp_is_empty!16257)))

(declare-fun b!2991366 () Bool)

(declare-fun tp!951010 () Bool)

(assert (=> b!2991366 (= e!1880306 tp!951010)))

(assert (= (and b!2990539 ((_ is ElementMatch!9347) (regOne!19207 (regTwo!19206 r!17423)))) b!2991364))

(assert (= (and b!2990539 ((_ is Concat!14668) (regOne!19207 (regTwo!19206 r!17423)))) b!2991365))

(assert (= (and b!2990539 ((_ is Star!9347) (regOne!19207 (regTwo!19206 r!17423)))) b!2991366))

(assert (= (and b!2990539 ((_ is Union!9347) (regOne!19207 (regTwo!19206 r!17423)))) b!2991367))

(declare-fun b!2991369 () Bool)

(declare-fun e!1880307 () Bool)

(declare-fun tp!951016 () Bool)

(declare-fun tp!951014 () Bool)

(assert (=> b!2991369 (= e!1880307 (and tp!951016 tp!951014))))

(declare-fun b!2991371 () Bool)

(declare-fun tp!951017 () Bool)

(declare-fun tp!951013 () Bool)

(assert (=> b!2991371 (= e!1880307 (and tp!951017 tp!951013))))

(assert (=> b!2990539 (= tp!950861 e!1880307)))

(declare-fun b!2991368 () Bool)

(assert (=> b!2991368 (= e!1880307 tp_is_empty!16257)))

(declare-fun b!2991370 () Bool)

(declare-fun tp!951015 () Bool)

(assert (=> b!2991370 (= e!1880307 tp!951015)))

(assert (= (and b!2990539 ((_ is ElementMatch!9347) (regTwo!19207 (regTwo!19206 r!17423)))) b!2991368))

(assert (= (and b!2990539 ((_ is Concat!14668) (regTwo!19207 (regTwo!19206 r!17423)))) b!2991369))

(assert (= (and b!2990539 ((_ is Star!9347) (regTwo!19207 (regTwo!19206 r!17423)))) b!2991370))

(assert (= (and b!2990539 ((_ is Union!9347) (regTwo!19207 (regTwo!19206 r!17423)))) b!2991371))

(declare-fun b!2991373 () Bool)

(declare-fun e!1880308 () Bool)

(declare-fun tp!951021 () Bool)

(declare-fun tp!951019 () Bool)

(assert (=> b!2991373 (= e!1880308 (and tp!951021 tp!951019))))

(declare-fun b!2991375 () Bool)

(declare-fun tp!951022 () Bool)

(declare-fun tp!951018 () Bool)

(assert (=> b!2991375 (= e!1880308 (and tp!951022 tp!951018))))

(assert (=> b!2990535 (= tp!950860 e!1880308)))

(declare-fun b!2991372 () Bool)

(assert (=> b!2991372 (= e!1880308 tp_is_empty!16257)))

(declare-fun b!2991374 () Bool)

(declare-fun tp!951020 () Bool)

(assert (=> b!2991374 (= e!1880308 tp!951020)))

(assert (= (and b!2990535 ((_ is ElementMatch!9347) (regOne!19207 (regOne!19206 r!17423)))) b!2991372))

(assert (= (and b!2990535 ((_ is Concat!14668) (regOne!19207 (regOne!19206 r!17423)))) b!2991373))

(assert (= (and b!2990535 ((_ is Star!9347) (regOne!19207 (regOne!19206 r!17423)))) b!2991374))

(assert (= (and b!2990535 ((_ is Union!9347) (regOne!19207 (regOne!19206 r!17423)))) b!2991375))

(declare-fun b!2991377 () Bool)

(declare-fun e!1880309 () Bool)

(declare-fun tp!951026 () Bool)

(declare-fun tp!951024 () Bool)

(assert (=> b!2991377 (= e!1880309 (and tp!951026 tp!951024))))

(declare-fun b!2991379 () Bool)

(declare-fun tp!951027 () Bool)

(declare-fun tp!951023 () Bool)

(assert (=> b!2991379 (= e!1880309 (and tp!951027 tp!951023))))

(assert (=> b!2990535 (= tp!950856 e!1880309)))

(declare-fun b!2991376 () Bool)

(assert (=> b!2991376 (= e!1880309 tp_is_empty!16257)))

(declare-fun b!2991378 () Bool)

(declare-fun tp!951025 () Bool)

(assert (=> b!2991378 (= e!1880309 tp!951025)))

(assert (= (and b!2990535 ((_ is ElementMatch!9347) (regTwo!19207 (regOne!19206 r!17423)))) b!2991376))

(assert (= (and b!2990535 ((_ is Concat!14668) (regTwo!19207 (regOne!19206 r!17423)))) b!2991377))

(assert (= (and b!2990535 ((_ is Star!9347) (regTwo!19207 (regOne!19206 r!17423)))) b!2991378))

(assert (= (and b!2990535 ((_ is Union!9347) (regTwo!19207 (regOne!19206 r!17423)))) b!2991379))

(declare-fun b!2991381 () Bool)

(declare-fun e!1880310 () Bool)

(declare-fun tp!951031 () Bool)

(declare-fun tp!951029 () Bool)

(assert (=> b!2991381 (= e!1880310 (and tp!951031 tp!951029))))

(declare-fun b!2991383 () Bool)

(declare-fun tp!951032 () Bool)

(declare-fun tp!951028 () Bool)

(assert (=> b!2991383 (= e!1880310 (and tp!951032 tp!951028))))

(assert (=> b!2990538 (= tp!950863 e!1880310)))

(declare-fun b!2991380 () Bool)

(assert (=> b!2991380 (= e!1880310 tp_is_empty!16257)))

(declare-fun b!2991382 () Bool)

(declare-fun tp!951030 () Bool)

(assert (=> b!2991382 (= e!1880310 tp!951030)))

(assert (= (and b!2990538 ((_ is ElementMatch!9347) (reg!9676 (regTwo!19206 r!17423)))) b!2991380))

(assert (= (and b!2990538 ((_ is Concat!14668) (reg!9676 (regTwo!19206 r!17423)))) b!2991381))

(assert (= (and b!2990538 ((_ is Star!9347) (reg!9676 (regTwo!19206 r!17423)))) b!2991382))

(assert (= (and b!2990538 ((_ is Union!9347) (reg!9676 (regTwo!19206 r!17423)))) b!2991383))

(declare-fun b!2991385 () Bool)

(declare-fun e!1880311 () Bool)

(declare-fun tp!951036 () Bool)

(declare-fun tp!951034 () Bool)

(assert (=> b!2991385 (= e!1880311 (and tp!951036 tp!951034))))

(declare-fun b!2991387 () Bool)

(declare-fun tp!951037 () Bool)

(declare-fun tp!951033 () Bool)

(assert (=> b!2991387 (= e!1880311 (and tp!951037 tp!951033))))

(assert (=> b!2990533 (= tp!950859 e!1880311)))

(declare-fun b!2991384 () Bool)

(assert (=> b!2991384 (= e!1880311 tp_is_empty!16257)))

(declare-fun b!2991386 () Bool)

(declare-fun tp!951035 () Bool)

(assert (=> b!2991386 (= e!1880311 tp!951035)))

(assert (= (and b!2990533 ((_ is ElementMatch!9347) (regOne!19206 (regOne!19206 r!17423)))) b!2991384))

(assert (= (and b!2990533 ((_ is Concat!14668) (regOne!19206 (regOne!19206 r!17423)))) b!2991385))

(assert (= (and b!2990533 ((_ is Star!9347) (regOne!19206 (regOne!19206 r!17423)))) b!2991386))

(assert (= (and b!2990533 ((_ is Union!9347) (regOne!19206 (regOne!19206 r!17423)))) b!2991387))

(declare-fun b!2991389 () Bool)

(declare-fun e!1880312 () Bool)

(declare-fun tp!951041 () Bool)

(declare-fun tp!951039 () Bool)

(assert (=> b!2991389 (= e!1880312 (and tp!951041 tp!951039))))

(declare-fun b!2991391 () Bool)

(declare-fun tp!951042 () Bool)

(declare-fun tp!951038 () Bool)

(assert (=> b!2991391 (= e!1880312 (and tp!951042 tp!951038))))

(assert (=> b!2990533 (= tp!950857 e!1880312)))

(declare-fun b!2991388 () Bool)

(assert (=> b!2991388 (= e!1880312 tp_is_empty!16257)))

(declare-fun b!2991390 () Bool)

(declare-fun tp!951040 () Bool)

(assert (=> b!2991390 (= e!1880312 tp!951040)))

(assert (= (and b!2990533 ((_ is ElementMatch!9347) (regTwo!19206 (regOne!19206 r!17423)))) b!2991388))

(assert (= (and b!2990533 ((_ is Concat!14668) (regTwo!19206 (regOne!19206 r!17423)))) b!2991389))

(assert (= (and b!2990533 ((_ is Star!9347) (regTwo!19206 (regOne!19206 r!17423)))) b!2991390))

(assert (= (and b!2990533 ((_ is Union!9347) (regTwo!19206 (regOne!19206 r!17423)))) b!2991391))

(declare-fun b!2991393 () Bool)

(declare-fun e!1880313 () Bool)

(declare-fun tp!951046 () Bool)

(declare-fun tp!951044 () Bool)

(assert (=> b!2991393 (= e!1880313 (and tp!951046 tp!951044))))

(declare-fun b!2991395 () Bool)

(declare-fun tp!951047 () Bool)

(declare-fun tp!951043 () Bool)

(assert (=> b!2991395 (= e!1880313 (and tp!951047 tp!951043))))

(assert (=> b!2990534 (= tp!950858 e!1880313)))

(declare-fun b!2991392 () Bool)

(assert (=> b!2991392 (= e!1880313 tp_is_empty!16257)))

(declare-fun b!2991394 () Bool)

(declare-fun tp!951045 () Bool)

(assert (=> b!2991394 (= e!1880313 tp!951045)))

(assert (= (and b!2990534 ((_ is ElementMatch!9347) (reg!9676 (regOne!19206 r!17423)))) b!2991392))

(assert (= (and b!2990534 ((_ is Concat!14668) (reg!9676 (regOne!19206 r!17423)))) b!2991393))

(assert (= (and b!2990534 ((_ is Star!9347) (reg!9676 (regOne!19206 r!17423)))) b!2991394))

(assert (= (and b!2990534 ((_ is Union!9347) (reg!9676 (regOne!19206 r!17423)))) b!2991395))

(declare-fun b!2991397 () Bool)

(declare-fun e!1880314 () Bool)

(declare-fun tp!951051 () Bool)

(declare-fun tp!951049 () Bool)

(assert (=> b!2991397 (= e!1880314 (and tp!951051 tp!951049))))

(declare-fun b!2991399 () Bool)

(declare-fun tp!951052 () Bool)

(declare-fun tp!951048 () Bool)

(assert (=> b!2991399 (= e!1880314 (and tp!951052 tp!951048))))

(assert (=> b!2990529 (= tp!950854 e!1880314)))

(declare-fun b!2991396 () Bool)

(assert (=> b!2991396 (= e!1880314 tp_is_empty!16257)))

(declare-fun b!2991398 () Bool)

(declare-fun tp!951050 () Bool)

(assert (=> b!2991398 (= e!1880314 tp!951050)))

(assert (= (and b!2990529 ((_ is ElementMatch!9347) (regOne!19206 (reg!9676 r!17423)))) b!2991396))

(assert (= (and b!2990529 ((_ is Concat!14668) (regOne!19206 (reg!9676 r!17423)))) b!2991397))

(assert (= (and b!2990529 ((_ is Star!9347) (regOne!19206 (reg!9676 r!17423)))) b!2991398))

(assert (= (and b!2990529 ((_ is Union!9347) (regOne!19206 (reg!9676 r!17423)))) b!2991399))

(declare-fun b!2991401 () Bool)

(declare-fun e!1880315 () Bool)

(declare-fun tp!951056 () Bool)

(declare-fun tp!951054 () Bool)

(assert (=> b!2991401 (= e!1880315 (and tp!951056 tp!951054))))

(declare-fun b!2991403 () Bool)

(declare-fun tp!951057 () Bool)

(declare-fun tp!951053 () Bool)

(assert (=> b!2991403 (= e!1880315 (and tp!951057 tp!951053))))

(assert (=> b!2990529 (= tp!950852 e!1880315)))

(declare-fun b!2991400 () Bool)

(assert (=> b!2991400 (= e!1880315 tp_is_empty!16257)))

(declare-fun b!2991402 () Bool)

(declare-fun tp!951055 () Bool)

(assert (=> b!2991402 (= e!1880315 tp!951055)))

(assert (= (and b!2990529 ((_ is ElementMatch!9347) (regTwo!19206 (reg!9676 r!17423)))) b!2991400))

(assert (= (and b!2990529 ((_ is Concat!14668) (regTwo!19206 (reg!9676 r!17423)))) b!2991401))

(assert (= (and b!2990529 ((_ is Star!9347) (regTwo!19206 (reg!9676 r!17423)))) b!2991402))

(assert (= (and b!2990529 ((_ is Union!9347) (regTwo!19206 (reg!9676 r!17423)))) b!2991403))

(declare-fun b!2991405 () Bool)

(declare-fun e!1880316 () Bool)

(declare-fun tp!951061 () Bool)

(declare-fun tp!951059 () Bool)

(assert (=> b!2991405 (= e!1880316 (and tp!951061 tp!951059))))

(declare-fun b!2991407 () Bool)

(declare-fun tp!951062 () Bool)

(declare-fun tp!951058 () Bool)

(assert (=> b!2991407 (= e!1880316 (and tp!951062 tp!951058))))

(assert (=> b!2990522 (= tp!950847 e!1880316)))

(declare-fun b!2991404 () Bool)

(assert (=> b!2991404 (= e!1880316 tp_is_empty!16257)))

(declare-fun b!2991406 () Bool)

(declare-fun tp!951060 () Bool)

(assert (=> b!2991406 (= e!1880316 tp!951060)))

(assert (= (and b!2990522 ((_ is ElementMatch!9347) (regOne!19207 (regTwo!19207 r!17423)))) b!2991404))

(assert (= (and b!2990522 ((_ is Concat!14668) (regOne!19207 (regTwo!19207 r!17423)))) b!2991405))

(assert (= (and b!2990522 ((_ is Star!9347) (regOne!19207 (regTwo!19207 r!17423)))) b!2991406))

(assert (= (and b!2990522 ((_ is Union!9347) (regOne!19207 (regTwo!19207 r!17423)))) b!2991407))

(declare-fun b!2991409 () Bool)

(declare-fun e!1880317 () Bool)

(declare-fun tp!951066 () Bool)

(declare-fun tp!951064 () Bool)

(assert (=> b!2991409 (= e!1880317 (and tp!951066 tp!951064))))

(declare-fun b!2991411 () Bool)

(declare-fun tp!951067 () Bool)

(declare-fun tp!951063 () Bool)

(assert (=> b!2991411 (= e!1880317 (and tp!951067 tp!951063))))

(assert (=> b!2990522 (= tp!950843 e!1880317)))

(declare-fun b!2991408 () Bool)

(assert (=> b!2991408 (= e!1880317 tp_is_empty!16257)))

(declare-fun b!2991410 () Bool)

(declare-fun tp!951065 () Bool)

(assert (=> b!2991410 (= e!1880317 tp!951065)))

(assert (= (and b!2990522 ((_ is ElementMatch!9347) (regTwo!19207 (regTwo!19207 r!17423)))) b!2991408))

(assert (= (and b!2990522 ((_ is Concat!14668) (regTwo!19207 (regTwo!19207 r!17423)))) b!2991409))

(assert (= (and b!2990522 ((_ is Star!9347) (regTwo!19207 (regTwo!19207 r!17423)))) b!2991410))

(assert (= (and b!2990522 ((_ is Union!9347) (regTwo!19207 (regTwo!19207 r!17423)))) b!2991411))

(declare-fun b!2991413 () Bool)

(declare-fun e!1880318 () Bool)

(declare-fun tp!951071 () Bool)

(declare-fun tp!951069 () Bool)

(assert (=> b!2991413 (= e!1880318 (and tp!951071 tp!951069))))

(declare-fun b!2991415 () Bool)

(declare-fun tp!951072 () Bool)

(declare-fun tp!951068 () Bool)

(assert (=> b!2991415 (= e!1880318 (and tp!951072 tp!951068))))

(assert (=> b!2990517 (= tp!950840 e!1880318)))

(declare-fun b!2991412 () Bool)

(assert (=> b!2991412 (= e!1880318 tp_is_empty!16257)))

(declare-fun b!2991414 () Bool)

(declare-fun tp!951070 () Bool)

(assert (=> b!2991414 (= e!1880318 tp!951070)))

(assert (= (and b!2990517 ((_ is ElementMatch!9347) (reg!9676 (regOne!19207 r!17423)))) b!2991412))

(assert (= (and b!2990517 ((_ is Concat!14668) (reg!9676 (regOne!19207 r!17423)))) b!2991413))

(assert (= (and b!2990517 ((_ is Star!9347) (reg!9676 (regOne!19207 r!17423)))) b!2991414))

(assert (= (and b!2990517 ((_ is Union!9347) (reg!9676 (regOne!19207 r!17423)))) b!2991415))

(declare-fun b!2991417 () Bool)

(declare-fun e!1880319 () Bool)

(declare-fun tp!951076 () Bool)

(declare-fun tp!951074 () Bool)

(assert (=> b!2991417 (= e!1880319 (and tp!951076 tp!951074))))

(declare-fun b!2991419 () Bool)

(declare-fun tp!951077 () Bool)

(declare-fun tp!951073 () Bool)

(assert (=> b!2991419 (= e!1880319 (and tp!951077 tp!951073))))

(assert (=> b!2990518 (= tp!950842 e!1880319)))

(declare-fun b!2991416 () Bool)

(assert (=> b!2991416 (= e!1880319 tp_is_empty!16257)))

(declare-fun b!2991418 () Bool)

(declare-fun tp!951075 () Bool)

(assert (=> b!2991418 (= e!1880319 tp!951075)))

(assert (= (and b!2990518 ((_ is ElementMatch!9347) (regOne!19207 (regOne!19207 r!17423)))) b!2991416))

(assert (= (and b!2990518 ((_ is Concat!14668) (regOne!19207 (regOne!19207 r!17423)))) b!2991417))

(assert (= (and b!2990518 ((_ is Star!9347) (regOne!19207 (regOne!19207 r!17423)))) b!2991418))

(assert (= (and b!2990518 ((_ is Union!9347) (regOne!19207 (regOne!19207 r!17423)))) b!2991419))

(declare-fun b!2991421 () Bool)

(declare-fun e!1880320 () Bool)

(declare-fun tp!951081 () Bool)

(declare-fun tp!951079 () Bool)

(assert (=> b!2991421 (= e!1880320 (and tp!951081 tp!951079))))

(declare-fun b!2991423 () Bool)

(declare-fun tp!951082 () Bool)

(declare-fun tp!951078 () Bool)

(assert (=> b!2991423 (= e!1880320 (and tp!951082 tp!951078))))

(assert (=> b!2990518 (= tp!950838 e!1880320)))

(declare-fun b!2991420 () Bool)

(assert (=> b!2991420 (= e!1880320 tp_is_empty!16257)))

(declare-fun b!2991422 () Bool)

(declare-fun tp!951080 () Bool)

(assert (=> b!2991422 (= e!1880320 tp!951080)))

(assert (= (and b!2990518 ((_ is ElementMatch!9347) (regTwo!19207 (regOne!19207 r!17423)))) b!2991420))

(assert (= (and b!2990518 ((_ is Concat!14668) (regTwo!19207 (regOne!19207 r!17423)))) b!2991421))

(assert (= (and b!2990518 ((_ is Star!9347) (regTwo!19207 (regOne!19207 r!17423)))) b!2991422))

(assert (= (and b!2990518 ((_ is Union!9347) (regTwo!19207 (regOne!19207 r!17423)))) b!2991423))

(declare-fun b!2991425 () Bool)

(declare-fun e!1880321 () Bool)

(declare-fun tp!951086 () Bool)

(declare-fun tp!951084 () Bool)

(assert (=> b!2991425 (= e!1880321 (and tp!951086 tp!951084))))

(declare-fun b!2991427 () Bool)

(declare-fun tp!951087 () Bool)

(declare-fun tp!951083 () Bool)

(assert (=> b!2991427 (= e!1880321 (and tp!951087 tp!951083))))

(assert (=> b!2990537 (= tp!950864 e!1880321)))

(declare-fun b!2991424 () Bool)

(assert (=> b!2991424 (= e!1880321 tp_is_empty!16257)))

(declare-fun b!2991426 () Bool)

(declare-fun tp!951085 () Bool)

(assert (=> b!2991426 (= e!1880321 tp!951085)))

(assert (= (and b!2990537 ((_ is ElementMatch!9347) (regOne!19206 (regTwo!19206 r!17423)))) b!2991424))

(assert (= (and b!2990537 ((_ is Concat!14668) (regOne!19206 (regTwo!19206 r!17423)))) b!2991425))

(assert (= (and b!2990537 ((_ is Star!9347) (regOne!19206 (regTwo!19206 r!17423)))) b!2991426))

(assert (= (and b!2990537 ((_ is Union!9347) (regOne!19206 (regTwo!19206 r!17423)))) b!2991427))

(declare-fun b!2991429 () Bool)

(declare-fun e!1880322 () Bool)

(declare-fun tp!951091 () Bool)

(declare-fun tp!951089 () Bool)

(assert (=> b!2991429 (= e!1880322 (and tp!951091 tp!951089))))

(declare-fun b!2991431 () Bool)

(declare-fun tp!951092 () Bool)

(declare-fun tp!951088 () Bool)

(assert (=> b!2991431 (= e!1880322 (and tp!951092 tp!951088))))

(assert (=> b!2990537 (= tp!950862 e!1880322)))

(declare-fun b!2991428 () Bool)

(assert (=> b!2991428 (= e!1880322 tp_is_empty!16257)))

(declare-fun b!2991430 () Bool)

(declare-fun tp!951090 () Bool)

(assert (=> b!2991430 (= e!1880322 tp!951090)))

(assert (= (and b!2990537 ((_ is ElementMatch!9347) (regTwo!19206 (regTwo!19206 r!17423)))) b!2991428))

(assert (= (and b!2990537 ((_ is Concat!14668) (regTwo!19206 (regTwo!19206 r!17423)))) b!2991429))

(assert (= (and b!2990537 ((_ is Star!9347) (regTwo!19206 (regTwo!19206 r!17423)))) b!2991430))

(assert (= (and b!2990537 ((_ is Union!9347) (regTwo!19206 (regTwo!19206 r!17423)))) b!2991431))

(declare-fun b!2991433 () Bool)

(declare-fun e!1880323 () Bool)

(declare-fun tp!951096 () Bool)

(declare-fun tp!951094 () Bool)

(assert (=> b!2991433 (= e!1880323 (and tp!951096 tp!951094))))

(declare-fun b!2991435 () Bool)

(declare-fun tp!951097 () Bool)

(declare-fun tp!951093 () Bool)

(assert (=> b!2991435 (= e!1880323 (and tp!951097 tp!951093))))

(assert (=> b!2990516 (= tp!950841 e!1880323)))

(declare-fun b!2991432 () Bool)

(assert (=> b!2991432 (= e!1880323 tp_is_empty!16257)))

(declare-fun b!2991434 () Bool)

(declare-fun tp!951095 () Bool)

(assert (=> b!2991434 (= e!1880323 tp!951095)))

(assert (= (and b!2990516 ((_ is ElementMatch!9347) (regOne!19206 (regOne!19207 r!17423)))) b!2991432))

(assert (= (and b!2990516 ((_ is Concat!14668) (regOne!19206 (regOne!19207 r!17423)))) b!2991433))

(assert (= (and b!2990516 ((_ is Star!9347) (regOne!19206 (regOne!19207 r!17423)))) b!2991434))

(assert (= (and b!2990516 ((_ is Union!9347) (regOne!19206 (regOne!19207 r!17423)))) b!2991435))

(declare-fun b!2991437 () Bool)

(declare-fun e!1880324 () Bool)

(declare-fun tp!951101 () Bool)

(declare-fun tp!951099 () Bool)

(assert (=> b!2991437 (= e!1880324 (and tp!951101 tp!951099))))

(declare-fun b!2991439 () Bool)

(declare-fun tp!951102 () Bool)

(declare-fun tp!951098 () Bool)

(assert (=> b!2991439 (= e!1880324 (and tp!951102 tp!951098))))

(assert (=> b!2990516 (= tp!950839 e!1880324)))

(declare-fun b!2991436 () Bool)

(assert (=> b!2991436 (= e!1880324 tp_is_empty!16257)))

(declare-fun b!2991438 () Bool)

(declare-fun tp!951100 () Bool)

(assert (=> b!2991438 (= e!1880324 tp!951100)))

(assert (= (and b!2990516 ((_ is ElementMatch!9347) (regTwo!19206 (regOne!19207 r!17423)))) b!2991436))

(assert (= (and b!2990516 ((_ is Concat!14668) (regTwo!19206 (regOne!19207 r!17423)))) b!2991437))

(assert (= (and b!2990516 ((_ is Star!9347) (regTwo!19206 (regOne!19207 r!17423)))) b!2991438))

(assert (= (and b!2990516 ((_ is Union!9347) (regTwo!19206 (regOne!19207 r!17423)))) b!2991439))

(declare-fun b!2991441 () Bool)

(declare-fun e!1880325 () Bool)

(declare-fun tp!951106 () Bool)

(declare-fun tp!951104 () Bool)

(assert (=> b!2991441 (= e!1880325 (and tp!951106 tp!951104))))

(declare-fun b!2991443 () Bool)

(declare-fun tp!951107 () Bool)

(declare-fun tp!951103 () Bool)

(assert (=> b!2991443 (= e!1880325 (and tp!951107 tp!951103))))

(assert (=> b!2990521 (= tp!950845 e!1880325)))

(declare-fun b!2991440 () Bool)

(assert (=> b!2991440 (= e!1880325 tp_is_empty!16257)))

(declare-fun b!2991442 () Bool)

(declare-fun tp!951105 () Bool)

(assert (=> b!2991442 (= e!1880325 tp!951105)))

(assert (= (and b!2990521 ((_ is ElementMatch!9347) (reg!9676 (regTwo!19207 r!17423)))) b!2991440))

(assert (= (and b!2990521 ((_ is Concat!14668) (reg!9676 (regTwo!19207 r!17423)))) b!2991441))

(assert (= (and b!2990521 ((_ is Star!9347) (reg!9676 (regTwo!19207 r!17423)))) b!2991442))

(assert (= (and b!2990521 ((_ is Union!9347) (reg!9676 (regTwo!19207 r!17423)))) b!2991443))

(declare-fun b!2991445 () Bool)

(declare-fun e!1880326 () Bool)

(declare-fun tp!951111 () Bool)

(declare-fun tp!951109 () Bool)

(assert (=> b!2991445 (= e!1880326 (and tp!951111 tp!951109))))

(declare-fun b!2991447 () Bool)

(declare-fun tp!951112 () Bool)

(declare-fun tp!951108 () Bool)

(assert (=> b!2991447 (= e!1880326 (and tp!951112 tp!951108))))

(assert (=> b!2990520 (= tp!950846 e!1880326)))

(declare-fun b!2991444 () Bool)

(assert (=> b!2991444 (= e!1880326 tp_is_empty!16257)))

(declare-fun b!2991446 () Bool)

(declare-fun tp!951110 () Bool)

(assert (=> b!2991446 (= e!1880326 tp!951110)))

(assert (= (and b!2990520 ((_ is ElementMatch!9347) (regOne!19206 (regTwo!19207 r!17423)))) b!2991444))

(assert (= (and b!2990520 ((_ is Concat!14668) (regOne!19206 (regTwo!19207 r!17423)))) b!2991445))

(assert (= (and b!2990520 ((_ is Star!9347) (regOne!19206 (regTwo!19207 r!17423)))) b!2991446))

(assert (= (and b!2990520 ((_ is Union!9347) (regOne!19206 (regTwo!19207 r!17423)))) b!2991447))

(declare-fun b!2991449 () Bool)

(declare-fun e!1880327 () Bool)

(declare-fun tp!951116 () Bool)

(declare-fun tp!951114 () Bool)

(assert (=> b!2991449 (= e!1880327 (and tp!951116 tp!951114))))

(declare-fun b!2991451 () Bool)

(declare-fun tp!951117 () Bool)

(declare-fun tp!951113 () Bool)

(assert (=> b!2991451 (= e!1880327 (and tp!951117 tp!951113))))

(assert (=> b!2990520 (= tp!950844 e!1880327)))

(declare-fun b!2991448 () Bool)

(assert (=> b!2991448 (= e!1880327 tp_is_empty!16257)))

(declare-fun b!2991450 () Bool)

(declare-fun tp!951115 () Bool)

(assert (=> b!2991450 (= e!1880327 tp!951115)))

(assert (= (and b!2990520 ((_ is ElementMatch!9347) (regTwo!19206 (regTwo!19207 r!17423)))) b!2991448))

(assert (= (and b!2990520 ((_ is Concat!14668) (regTwo!19206 (regTwo!19207 r!17423)))) b!2991449))

(assert (= (and b!2990520 ((_ is Star!9347) (regTwo!19206 (regTwo!19207 r!17423)))) b!2991450))

(assert (= (and b!2990520 ((_ is Union!9347) (regTwo!19206 (regTwo!19207 r!17423)))) b!2991451))

(check-sat (not bm!200117) (not b!2991423) (not b!2991171) (not b!2991421) (not b!2991103) tp_is_empty!16257 (not bm!200138) (not b!2991269) (not b!2991449) (not b!2991409) (not bm!200108) (not d!844721) (not b!2991422) (not d!844749) (not b!2991327) (not d!844729) (not b!2991119) (not d!844775) (not b!2991128) (not bm!200147) (not b!2991431) (not b!2991118) (not bm!200144) (not bm!200159) (not b!2991274) (not b!2991393) (not b!2991182) (not bm!200160) (not b!2991251) (not b!2991427) (not b!2991450) (not d!844731) (not bm!200130) (not bm!200142) (not b!2991417) (not b!2990960) (not bm!200148) (not b!2990747) (not b!2991193) (not b!2990745) (not b!2990972) (not bm!200162) (not d!844781) (not bm!200132) (not b!2991395) (not b!2991314) (not b!2991451) (not b!2991228) (not b!2991387) (not b!2991359) (not b!2991382) (not bm!200152) (not b!2991289) (not d!844797) (not b!2991357) (not b!2991391) (not b!2991445) (not b!2991443) (not b!2991177) (not b!2991446) (not b!2991425) (not b!2991379) (not d!844753) (not b!2991242) (not b!2991369) (not b!2991262) (not b!2991060) (not bm!200105) (not b!2991402) (not b!2990925) (not b!2991398) (not b!2991122) (not b!2990979) (not b!2991430) (not bm!200165) (not d!844751) (not b!2991352) (not b!2991169) (not b!2991120) (not b!2991381) (not d!844793) (not b!2991366) (not d!844787) (not b!2991335) (not bm!200131) (not d!844617) (not b!2990900) (not b!2991106) (not bm!200167) (not bm!200163) (not b!2991397) (not d!844681) (not b!2991226) (not d!844791) (not b!2991399) (not b!2991373) (not b!2990889) (not b!2991104) (not b!2991245) (not b!2991168) (not d!844739) (not b!2991233) (not b!2991261) (not b!2991337) (not b!2991414) (not b!2991378) (not b!2991061) (not b!2990746) (not b!2990931) (not d!844745) (not b!2990980) (not b!2991401) (not b!2990891) (not b!2991211) (not b!2991285) (not d!844619) (not d!844733) (not b!2991170) (not bm!200133) (not b!2991328) (not d!844779) (not b!2991179) (not d!844675) (not d!844699) (not b!2991410) (not b!2991059) (not d!844707) (not b!2991435) (not bm!200124) (not b!2991413) (not b!2991361) (not b!2990744) (not b!2991056) (not b!2991415) (not b!2991271) (not b!2991105) (not b!2991390) (not b!2991362) (not d!844769) (not b!2991439) (not b!2991348) (not b!2991441) (not b!2991394) (not bm!200104) (not bm!200118) (not b!2991326) (not bm!200155) (not d!844741) (not bm!200097) (not bm!200149) (not bm!200166) (not bm!200096) (not b!2991112) (not b!2991329) (not b!2991353) (not d!844687) (not b!2991299) (not d!844737) (not b!2991434) (not b!2991342) (not b!2991442) (not b!2991121) (not b!2991429) (not bm!200145) (not bm!200156) (not b!2991437) (not b!2991367) (not b!2991389) (not b!2991383) (not b!2991165) (not b!2991150) (not bm!200107) (not b!2991286) (not b!2991419) (not d!844723) (not b!2991102) (not b!2990923) (not b!2991263) (not d!844801) (not b!2991290) (not b!2991365) (not bm!200134) (not b!2991426) (not b!2991377) (not b!2991411) (not b!2991244) (not b!2990922) (not b!2991354) (not b!2991356) (not bm!200126) (not b!2991385) (not bm!200074) (not b!2991213) (not b!2990753) (not b!2991433) (not bm!200141) (not b!2991114) (not d!844783) (not b!2991063) (not b!2991447) (not b!2991243) (not b!2991318) (not b!2991363) (not b!2991064) (not b!2991403) (not d!844693) (not bm!200135) (not b!2991406) (not b!2991386) (not bm!200150) (not b!2990855) (not b!2990971) (not b!2991253) (not bm!200125) (not d!844705) (not b!2991260) (not b!2991405) (not bm!200111) (not d!844715) (not b!2991202) (not b!2991230) (not b!2990933) (not d!844773) (not b!2990755) (not bm!200151) (not b!2990924) (not b!2991239) (not bm!200127) (not bm!200161) (not b!2991374) (not b!2991358) (not d!844785) (not b!2991438) (not b!2991371) (not b!2991375) (not b!2991370) (not bm!200139) (not b!2991418) (not d!844777) (not b!2991130) (not b!2991407))
(check-sat)

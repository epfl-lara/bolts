; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288952 () Bool)

(assert start!288952)

(declare-fun b!2992467 () Bool)

(assert (=> b!2992467 true))

(assert (=> b!2992467 true))

(assert (=> b!2992467 true))

(declare-fun lambda!111914 () Int)

(declare-fun lambda!111913 () Int)

(assert (=> b!2992467 (not (= lambda!111914 lambda!111913))))

(assert (=> b!2992467 true))

(assert (=> b!2992467 true))

(assert (=> b!2992467 true))

(declare-fun b!2992465 () Bool)

(declare-fun e!1880851 () Bool)

(declare-fun tp_is_empty!16269 () Bool)

(assert (=> b!2992465 (= e!1880851 tp_is_empty!16269)))

(declare-fun b!2992466 () Bool)

(declare-datatypes ((Unit!49111 0))(
  ( (Unit!49112) )
))
(declare-fun e!1880853 () Unit!49111)

(declare-fun Unit!49113 () Unit!49111)

(assert (=> b!2992466 (= e!1880853 Unit!49113)))

(declare-fun lt!1040762 () Unit!49111)

(declare-datatypes ((C!18892 0))(
  ( (C!18893 (val!11482 Int)) )
))
(declare-datatypes ((Regex!9353 0))(
  ( (ElementMatch!9353 (c!491867 C!18892)) (Concat!14674 (regOne!19218 Regex!9353) (regTwo!19218 Regex!9353)) (EmptyExpr!9353) (Star!9353 (reg!9682 Regex!9353)) (EmptyLang!9353) (Union!9353 (regOne!19219 Regex!9353) (regTwo!19219 Regex!9353)) )
))
(declare-fun r!17423 () Regex!9353)

(declare-datatypes ((List!35218 0))(
  ( (Nil!35094) (Cons!35094 (h!40514 C!18892) (t!234283 List!35218)) )
))
(declare-datatypes ((tuple2!34024 0))(
  ( (tuple2!34025 (_1!20144 List!35218) (_2!20144 List!35218)) )
))
(declare-fun lt!1040769 () tuple2!34024)

(declare-fun mainMatchTheorem!1490 (Regex!9353 List!35218) Unit!49111)

(assert (=> b!2992466 (= lt!1040762 (mainMatchTheorem!1490 (reg!9682 r!17423) (_1!20144 lt!1040769)))))

(assert (=> b!2992466 false))

(declare-fun e!1880847 () Bool)

(declare-fun e!1880849 () Bool)

(assert (=> b!2992467 (= e!1880847 e!1880849)))

(declare-fun res!1234272 () Bool)

(assert (=> b!2992467 (=> res!1234272 e!1880849)))

(declare-fun lt!1040767 () Bool)

(assert (=> b!2992467 (= res!1234272 (not lt!1040767))))

(declare-fun Exists!1626 (Int) Bool)

(assert (=> b!2992467 (= (Exists!1626 lambda!111913) (Exists!1626 lambda!111914))))

(declare-fun lt!1040768 () Unit!49111)

(declare-fun s!11993 () List!35218)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!302 (Regex!9353 List!35218) Unit!49111)

(assert (=> b!2992467 (= lt!1040768 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!302 (reg!9682 r!17423) s!11993))))

(assert (=> b!2992467 (= lt!1040767 (Exists!1626 lambda!111913))))

(declare-datatypes ((Option!6744 0))(
  ( (None!6743) (Some!6743 (v!34877 tuple2!34024)) )
))
(declare-fun lt!1040771 () Option!6744)

(declare-fun isDefined!5295 (Option!6744) Bool)

(assert (=> b!2992467 (= lt!1040767 (isDefined!5295 lt!1040771))))

(declare-fun lt!1040765 () Regex!9353)

(declare-fun findConcatSeparation!1138 (Regex!9353 Regex!9353 List!35218 List!35218 List!35218) Option!6744)

(assert (=> b!2992467 (= lt!1040771 (findConcatSeparation!1138 (reg!9682 r!17423) lt!1040765 Nil!35094 s!11993 s!11993))))

(declare-fun lt!1040766 () Unit!49111)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!916 (Regex!9353 Regex!9353 List!35218) Unit!49111)

(assert (=> b!2992467 (= lt!1040766 (lemmaFindConcatSeparationEquivalentToExists!916 (reg!9682 r!17423) lt!1040765 s!11993))))

(assert (=> b!2992467 (= lt!1040765 (Star!9353 (reg!9682 r!17423)))))

(declare-fun b!2992468 () Bool)

(declare-fun res!1234273 () Bool)

(declare-fun e!1880852 () Bool)

(assert (=> b!2992468 (=> res!1234273 e!1880852)))

(declare-fun matchR!4235 (Regex!9353 List!35218) Bool)

(assert (=> b!2992468 (= res!1234273 (not (matchR!4235 lt!1040765 (_2!20144 lt!1040769))))))

(declare-fun b!2992469 () Bool)

(declare-fun tp!951299 () Bool)

(declare-fun tp!951300 () Bool)

(assert (=> b!2992469 (= e!1880851 (and tp!951299 tp!951300))))

(declare-fun b!2992470 () Bool)

(declare-fun e!1880848 () Bool)

(assert (=> b!2992470 (= e!1880848 (not e!1880847))))

(declare-fun res!1234271 () Bool)

(assert (=> b!2992470 (=> res!1234271 e!1880847)))

(declare-fun lt!1040770 () Bool)

(get-info :version)

(assert (=> b!2992470 (= res!1234271 (or (not lt!1040770) ((_ is Concat!14674) r!17423) ((_ is Union!9353) r!17423) (not ((_ is Star!9353) r!17423))))))

(declare-fun matchRSpec!1490 (Regex!9353 List!35218) Bool)

(assert (=> b!2992470 (= lt!1040770 (matchRSpec!1490 r!17423 s!11993))))

(assert (=> b!2992470 (= lt!1040770 (matchR!4235 r!17423 s!11993))))

(declare-fun lt!1040764 () Unit!49111)

(assert (=> b!2992470 (= lt!1040764 (mainMatchTheorem!1490 r!17423 s!11993))))

(declare-fun b!2992471 () Bool)

(declare-fun tp!951298 () Bool)

(declare-fun tp!951296 () Bool)

(assert (=> b!2992471 (= e!1880851 (and tp!951298 tp!951296))))

(declare-fun b!2992472 () Bool)

(assert (=> b!2992472 (= e!1880849 e!1880852)))

(declare-fun res!1234276 () Bool)

(assert (=> b!2992472 (=> res!1234276 e!1880852)))

(assert (=> b!2992472 (= res!1234276 (not (matchR!4235 (reg!9682 r!17423) (_1!20144 lt!1040769))))))

(declare-fun get!10888 (Option!6744) tuple2!34024)

(assert (=> b!2992472 (= lt!1040769 (get!10888 lt!1040771))))

(declare-fun res!1234275 () Bool)

(assert (=> start!288952 (=> (not res!1234275) (not e!1880848))))

(declare-fun validRegex!4086 (Regex!9353) Bool)

(assert (=> start!288952 (= res!1234275 (validRegex!4086 r!17423))))

(assert (=> start!288952 e!1880848))

(assert (=> start!288952 e!1880851))

(declare-fun e!1880850 () Bool)

(assert (=> start!288952 e!1880850))

(declare-fun b!2992473 () Bool)

(declare-fun tp!951301 () Bool)

(assert (=> b!2992473 (= e!1880850 (and tp_is_empty!16269 tp!951301))))

(declare-fun b!2992474 () Bool)

(declare-fun tp!951297 () Bool)

(assert (=> b!2992474 (= e!1880851 tp!951297)))

(declare-fun b!2992475 () Bool)

(assert (=> b!2992475 (= e!1880852 true)))

(declare-fun simplify!344 (Regex!9353) Regex!9353)

(assert (=> b!2992475 (matchR!4235 (simplify!344 lt!1040765) (_2!20144 lt!1040769))))

(declare-fun lt!1040772 () Unit!49111)

(declare-fun lemmaSimplifySound!202 (Regex!9353 List!35218) Unit!49111)

(assert (=> b!2992475 (= lt!1040772 (lemmaSimplifySound!202 lt!1040765 (_2!20144 lt!1040769)))))

(declare-fun lt!1040763 () Unit!49111)

(assert (=> b!2992475 (= lt!1040763 e!1880853)))

(declare-fun c!491866 () Bool)

(declare-fun size!26503 (List!35218) Int)

(assert (=> b!2992475 (= c!491866 (= (size!26503 (_2!20144 lt!1040769)) (size!26503 s!11993)))))

(assert (=> b!2992475 (matchR!4235 (simplify!344 (reg!9682 r!17423)) (_1!20144 lt!1040769))))

(declare-fun lt!1040761 () Unit!49111)

(assert (=> b!2992475 (= lt!1040761 (lemmaSimplifySound!202 (reg!9682 r!17423) (_1!20144 lt!1040769)))))

(declare-fun b!2992476 () Bool)

(declare-fun Unit!49114 () Unit!49111)

(assert (=> b!2992476 (= e!1880853 Unit!49114)))

(declare-fun b!2992477 () Bool)

(declare-fun res!1234274 () Bool)

(assert (=> b!2992477 (=> res!1234274 e!1880847)))

(declare-fun isEmpty!19366 (List!35218) Bool)

(assert (=> b!2992477 (= res!1234274 (isEmpty!19366 s!11993))))

(assert (= (and start!288952 res!1234275) b!2992470))

(assert (= (and b!2992470 (not res!1234271)) b!2992477))

(assert (= (and b!2992477 (not res!1234274)) b!2992467))

(assert (= (and b!2992467 (not res!1234272)) b!2992472))

(assert (= (and b!2992472 (not res!1234276)) b!2992468))

(assert (= (and b!2992468 (not res!1234273)) b!2992475))

(assert (= (and b!2992475 c!491866) b!2992466))

(assert (= (and b!2992475 (not c!491866)) b!2992476))

(assert (= (and start!288952 ((_ is ElementMatch!9353) r!17423)) b!2992465))

(assert (= (and start!288952 ((_ is Concat!14674) r!17423)) b!2992469))

(assert (= (and start!288952 ((_ is Star!9353) r!17423)) b!2992474))

(assert (= (and start!288952 ((_ is Union!9353) r!17423)) b!2992471))

(assert (= (and start!288952 ((_ is Cons!35094) s!11993)) b!2992473))

(declare-fun m!3348095 () Bool)

(assert (=> b!2992467 m!3348095))

(declare-fun m!3348097 () Bool)

(assert (=> b!2992467 m!3348097))

(declare-fun m!3348099 () Bool)

(assert (=> b!2992467 m!3348099))

(declare-fun m!3348101 () Bool)

(assert (=> b!2992467 m!3348101))

(declare-fun m!3348103 () Bool)

(assert (=> b!2992467 m!3348103))

(declare-fun m!3348105 () Bool)

(assert (=> b!2992467 m!3348105))

(assert (=> b!2992467 m!3348097))

(declare-fun m!3348107 () Bool)

(assert (=> b!2992472 m!3348107))

(declare-fun m!3348109 () Bool)

(assert (=> b!2992472 m!3348109))

(declare-fun m!3348111 () Bool)

(assert (=> b!2992470 m!3348111))

(declare-fun m!3348113 () Bool)

(assert (=> b!2992470 m!3348113))

(declare-fun m!3348115 () Bool)

(assert (=> b!2992470 m!3348115))

(declare-fun m!3348117 () Bool)

(assert (=> b!2992475 m!3348117))

(declare-fun m!3348119 () Bool)

(assert (=> b!2992475 m!3348119))

(declare-fun m!3348121 () Bool)

(assert (=> b!2992475 m!3348121))

(declare-fun m!3348123 () Bool)

(assert (=> b!2992475 m!3348123))

(declare-fun m!3348125 () Bool)

(assert (=> b!2992475 m!3348125))

(declare-fun m!3348127 () Bool)

(assert (=> b!2992475 m!3348127))

(assert (=> b!2992475 m!3348119))

(declare-fun m!3348129 () Bool)

(assert (=> b!2992475 m!3348129))

(assert (=> b!2992475 m!3348123))

(declare-fun m!3348131 () Bool)

(assert (=> b!2992475 m!3348131))

(declare-fun m!3348133 () Bool)

(assert (=> b!2992477 m!3348133))

(declare-fun m!3348135 () Bool)

(assert (=> start!288952 m!3348135))

(declare-fun m!3348137 () Bool)

(assert (=> b!2992466 m!3348137))

(declare-fun m!3348139 () Bool)

(assert (=> b!2992468 m!3348139))

(check-sat (not b!2992466) (not b!2992468) (not b!2992473) (not b!2992470) (not b!2992469) tp_is_empty!16269 (not b!2992467) (not b!2992474) (not b!2992475) (not start!288952) (not b!2992471) (not b!2992472) (not b!2992477))
(check-sat)

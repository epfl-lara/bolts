; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288476 () Bool)

(assert start!288476)

(declare-fun b!2986527 () Bool)

(assert (=> b!2986527 true))

(assert (=> b!2986527 true))

(declare-fun lambda!111514 () Int)

(declare-fun lambda!111513 () Int)

(assert (=> b!2986527 (not (= lambda!111514 lambda!111513))))

(assert (=> b!2986527 true))

(assert (=> b!2986527 true))

(declare-fun b!2986522 () Bool)

(declare-fun e!1877796 () Bool)

(declare-fun tp_is_empty!16221 () Bool)

(assert (=> b!2986522 (= e!1877796 tp_is_empty!16221)))

(declare-fun b!2986523 () Bool)

(declare-fun e!1877797 () Bool)

(assert (=> b!2986523 (= e!1877797 true)))

(declare-datatypes ((C!18844 0))(
  ( (C!18845 (val!11458 Int)) )
))
(declare-datatypes ((Regex!9329 0))(
  ( (ElementMatch!9329 (c!490729 C!18844)) (Concat!14650 (regOne!19170 Regex!9329) (regTwo!19170 Regex!9329)) (EmptyExpr!9329) (Star!9329 (reg!9658 Regex!9329)) (EmptyLang!9329) (Union!9329 (regOne!19171 Regex!9329) (regTwo!19171 Regex!9329)) )
))
(declare-fun r!17423 () Regex!9329)

(declare-datatypes ((List!35194 0))(
  ( (Nil!35070) (Cons!35070 (h!40490 C!18844) (t!234259 List!35194)) )
))
(declare-datatypes ((tuple2!33984 0))(
  ( (tuple2!33985 (_1!20124 List!35194) (_2!20124 List!35194)) )
))
(declare-fun lt!1039455 () tuple2!33984)

(declare-fun matchR!4211 (Regex!9329 List!35194) Bool)

(declare-fun simplify!326 (Regex!9329) Regex!9329)

(assert (=> b!2986523 (matchR!4211 (simplify!326 (regTwo!19170 r!17423)) (_2!20124 lt!1039455))))

(declare-datatypes ((Unit!49061 0))(
  ( (Unit!49062) )
))
(declare-fun lt!1039458 () Unit!49061)

(declare-fun lemmaSimplifySound!184 (Regex!9329 List!35194) Unit!49061)

(assert (=> b!2986523 (= lt!1039458 (lemmaSimplifySound!184 (regTwo!19170 r!17423) (_2!20124 lt!1039455)))))

(assert (=> b!2986523 (matchR!4211 (simplify!326 (regOne!19170 r!17423)) (_1!20124 lt!1039455))))

(declare-fun lt!1039457 () Unit!49061)

(assert (=> b!2986523 (= lt!1039457 (lemmaSimplifySound!184 (regOne!19170 r!17423) (_1!20124 lt!1039455)))))

(declare-fun b!2986524 () Bool)

(declare-fun res!1231679 () Bool)

(declare-fun e!1877795 () Bool)

(assert (=> b!2986524 (=> res!1231679 e!1877795)))

(declare-fun s!11993 () List!35194)

(declare-fun isEmpty!19333 (List!35194) Bool)

(assert (=> b!2986524 (= res!1231679 (isEmpty!19333 s!11993))))

(declare-fun b!2986525 () Bool)

(declare-fun tp!950083 () Bool)

(declare-fun tp!950082 () Bool)

(assert (=> b!2986525 (= e!1877796 (and tp!950083 tp!950082))))

(declare-fun b!2986526 () Bool)

(declare-fun e!1877798 () Bool)

(assert (=> b!2986526 (= e!1877798 (not e!1877795))))

(declare-fun res!1231678 () Bool)

(assert (=> b!2986526 (=> res!1231678 e!1877795)))

(declare-fun lt!1039451 () Bool)

(get-info :version)

(assert (=> b!2986526 (= res!1231678 (or (not lt!1039451) (not ((_ is Concat!14650) r!17423))))))

(declare-fun matchRSpec!1466 (Regex!9329 List!35194) Bool)

(assert (=> b!2986526 (= lt!1039451 (matchRSpec!1466 r!17423 s!11993))))

(assert (=> b!2986526 (= lt!1039451 (matchR!4211 r!17423 s!11993))))

(declare-fun lt!1039456 () Unit!49061)

(declare-fun mainMatchTheorem!1466 (Regex!9329 List!35194) Unit!49061)

(assert (=> b!2986526 (= lt!1039456 (mainMatchTheorem!1466 r!17423 s!11993))))

(assert (=> b!2986527 (= e!1877795 e!1877797)))

(declare-fun res!1231682 () Bool)

(assert (=> b!2986527 (=> res!1231682 e!1877797)))

(assert (=> b!2986527 (= res!1231682 (not (matchR!4211 (regOne!19170 r!17423) (_1!20124 lt!1039455))))))

(declare-datatypes ((Option!6724 0))(
  ( (None!6723) (Some!6723 (v!34857 tuple2!33984)) )
))
(declare-fun lt!1039453 () Option!6724)

(declare-fun get!10856 (Option!6724) tuple2!33984)

(assert (=> b!2986527 (= lt!1039455 (get!10856 lt!1039453))))

(declare-fun Exists!1606 (Int) Bool)

(assert (=> b!2986527 (= (Exists!1606 lambda!111513) (Exists!1606 lambda!111514))))

(declare-fun lt!1039452 () Unit!49061)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!542 (Regex!9329 Regex!9329 List!35194) Unit!49061)

(assert (=> b!2986527 (= lt!1039452 (lemmaExistCutMatchRandMatchRSpecEquivalent!542 (regOne!19170 r!17423) (regTwo!19170 r!17423) s!11993))))

(declare-fun isDefined!5275 (Option!6724) Bool)

(assert (=> b!2986527 (= (isDefined!5275 lt!1039453) (Exists!1606 lambda!111513))))

(declare-fun findConcatSeparation!1118 (Regex!9329 Regex!9329 List!35194 List!35194 List!35194) Option!6724)

(assert (=> b!2986527 (= lt!1039453 (findConcatSeparation!1118 (regOne!19170 r!17423) (regTwo!19170 r!17423) Nil!35070 s!11993 s!11993))))

(declare-fun lt!1039454 () Unit!49061)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!896 (Regex!9329 Regex!9329 List!35194) Unit!49061)

(assert (=> b!2986527 (= lt!1039454 (lemmaFindConcatSeparationEquivalentToExists!896 (regOne!19170 r!17423) (regTwo!19170 r!17423) s!11993))))

(declare-fun b!2986528 () Bool)

(declare-fun tp!950084 () Bool)

(declare-fun tp!950080 () Bool)

(assert (=> b!2986528 (= e!1877796 (and tp!950084 tp!950080))))

(declare-fun b!2986529 () Bool)

(declare-fun res!1231680 () Bool)

(assert (=> b!2986529 (=> res!1231680 e!1877797)))

(assert (=> b!2986529 (= res!1231680 (not (matchR!4211 (regTwo!19170 r!17423) (_2!20124 lt!1039455))))))

(declare-fun b!2986530 () Bool)

(declare-fun tp!950085 () Bool)

(assert (=> b!2986530 (= e!1877796 tp!950085)))

(declare-fun res!1231681 () Bool)

(assert (=> start!288476 (=> (not res!1231681) (not e!1877798))))

(declare-fun validRegex!4062 (Regex!9329) Bool)

(assert (=> start!288476 (= res!1231681 (validRegex!4062 r!17423))))

(assert (=> start!288476 e!1877798))

(assert (=> start!288476 e!1877796))

(declare-fun e!1877799 () Bool)

(assert (=> start!288476 e!1877799))

(declare-fun b!2986531 () Bool)

(declare-fun tp!950081 () Bool)

(assert (=> b!2986531 (= e!1877799 (and tp_is_empty!16221 tp!950081))))

(assert (= (and start!288476 res!1231681) b!2986526))

(assert (= (and b!2986526 (not res!1231678)) b!2986524))

(assert (= (and b!2986524 (not res!1231679)) b!2986527))

(assert (= (and b!2986527 (not res!1231682)) b!2986529))

(assert (= (and b!2986529 (not res!1231680)) b!2986523))

(assert (= (and start!288476 ((_ is ElementMatch!9329) r!17423)) b!2986522))

(assert (= (and start!288476 ((_ is Concat!14650) r!17423)) b!2986528))

(assert (= (and start!288476 ((_ is Star!9329) r!17423)) b!2986530))

(assert (= (and start!288476 ((_ is Union!9329) r!17423)) b!2986525))

(assert (= (and start!288476 ((_ is Cons!35070) s!11993)) b!2986531))

(declare-fun m!3345001 () Bool)

(assert (=> start!288476 m!3345001))

(declare-fun m!3345003 () Bool)

(assert (=> b!2986527 m!3345003))

(declare-fun m!3345005 () Bool)

(assert (=> b!2986527 m!3345005))

(declare-fun m!3345007 () Bool)

(assert (=> b!2986527 m!3345007))

(declare-fun m!3345009 () Bool)

(assert (=> b!2986527 m!3345009))

(declare-fun m!3345011 () Bool)

(assert (=> b!2986527 m!3345011))

(declare-fun m!3345013 () Bool)

(assert (=> b!2986527 m!3345013))

(declare-fun m!3345015 () Bool)

(assert (=> b!2986527 m!3345015))

(declare-fun m!3345017 () Bool)

(assert (=> b!2986527 m!3345017))

(assert (=> b!2986527 m!3345011))

(declare-fun m!3345019 () Bool)

(assert (=> b!2986523 m!3345019))

(declare-fun m!3345021 () Bool)

(assert (=> b!2986523 m!3345021))

(declare-fun m!3345023 () Bool)

(assert (=> b!2986523 m!3345023))

(assert (=> b!2986523 m!3345021))

(declare-fun m!3345025 () Bool)

(assert (=> b!2986523 m!3345025))

(declare-fun m!3345027 () Bool)

(assert (=> b!2986523 m!3345027))

(assert (=> b!2986523 m!3345027))

(declare-fun m!3345029 () Bool)

(assert (=> b!2986523 m!3345029))

(declare-fun m!3345031 () Bool)

(assert (=> b!2986526 m!3345031))

(declare-fun m!3345033 () Bool)

(assert (=> b!2986526 m!3345033))

(declare-fun m!3345035 () Bool)

(assert (=> b!2986526 m!3345035))

(declare-fun m!3345037 () Bool)

(assert (=> b!2986529 m!3345037))

(declare-fun m!3345039 () Bool)

(assert (=> b!2986524 m!3345039))

(check-sat (not start!288476) (not b!2986526) (not b!2986524) (not b!2986527) (not b!2986525) (not b!2986531) (not b!2986528) tp_is_empty!16221 (not b!2986530) (not b!2986523) (not b!2986529))
(check-sat)

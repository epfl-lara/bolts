; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284932 () Bool)

(assert start!284932)

(declare-fun b!2929857 () Bool)

(assert (=> b!2929857 true))

(assert (=> b!2929857 true))

(assert (=> b!2929857 true))

(declare-fun lambda!109000 () Int)

(declare-fun lambda!108999 () Int)

(assert (=> b!2929857 (not (= lambda!109000 lambda!108999))))

(assert (=> b!2929857 true))

(assert (=> b!2929857 true))

(assert (=> b!2929857 true))

(declare-fun b!2929854 () Bool)

(declare-fun res!1209434 () Bool)

(declare-fun e!1847622 () Bool)

(assert (=> b!2929854 (=> res!1209434 e!1847622)))

(declare-datatypes ((C!18268 0))(
  ( (C!18269 (val!11170 Int)) )
))
(declare-datatypes ((List!34906 0))(
  ( (Nil!34782) (Cons!34782 (h!40202 C!18268) (t!233971 List!34906)) )
))
(declare-fun s!11993 () List!34906)

(declare-fun isEmpty!19031 (List!34906) Bool)

(assert (=> b!2929854 (= res!1209434 (isEmpty!19031 s!11993))))

(declare-fun b!2929855 () Bool)

(declare-fun e!1847621 () Bool)

(declare-fun tp!939121 () Bool)

(declare-fun tp!939120 () Bool)

(assert (=> b!2929855 (= e!1847621 (and tp!939121 tp!939120))))

(declare-fun b!2929856 () Bool)

(declare-fun tp!939125 () Bool)

(declare-fun tp!939123 () Bool)

(assert (=> b!2929856 (= e!1847621 (and tp!939125 tp!939123))))

(assert (=> b!2929857 (= e!1847622 true)))

(declare-fun Exists!1403 (Int) Bool)

(assert (=> b!2929857 (= (Exists!1403 lambda!108999) (Exists!1403 lambda!109000))))

(declare-datatypes ((Unit!48421 0))(
  ( (Unit!48422) )
))
(declare-fun lt!1027482 () Unit!48421)

(declare-datatypes ((Regex!9041 0))(
  ( (ElementMatch!9041 (c!478461 C!18268)) (Concat!14362 (regOne!18594 Regex!9041) (regTwo!18594 Regex!9041)) (EmptyExpr!9041) (Star!9041 (reg!9370 Regex!9041)) (EmptyLang!9041) (Union!9041 (regOne!18595 Regex!9041) (regTwo!18595 Regex!9041)) )
))
(declare-fun r!17423 () Regex!9041)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!214 (Regex!9041 List!34906) Unit!48421)

(assert (=> b!2929857 (= lt!1027482 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!214 (reg!9370 r!17423) s!11993))))

(declare-fun lt!1027479 () Regex!9041)

(declare-datatypes ((tuple2!33732 0))(
  ( (tuple2!33733 (_1!19998 List!34906) (_2!19998 List!34906)) )
))
(declare-datatypes ((Option!6598 0))(
  ( (None!6597) (Some!6597 (v!34731 tuple2!33732)) )
))
(declare-fun isDefined!5149 (Option!6598) Bool)

(declare-fun findConcatSeparation!992 (Regex!9041 Regex!9041 List!34906 List!34906 List!34906) Option!6598)

(assert (=> b!2929857 (= (isDefined!5149 (findConcatSeparation!992 (reg!9370 r!17423) lt!1027479 Nil!34782 s!11993 s!11993)) (Exists!1403 lambda!108999))))

(declare-fun lt!1027481 () Unit!48421)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!774 (Regex!9041 Regex!9041 List!34906) Unit!48421)

(assert (=> b!2929857 (= lt!1027481 (lemmaFindConcatSeparationEquivalentToExists!774 (reg!9370 r!17423) lt!1027479 s!11993))))

(assert (=> b!2929857 (= lt!1027479 (Star!9041 (reg!9370 r!17423)))))

(declare-fun b!2929858 () Bool)

(declare-fun tp_is_empty!15645 () Bool)

(assert (=> b!2929858 (= e!1847621 tp_is_empty!15645)))

(declare-fun b!2929859 () Bool)

(declare-fun e!1847620 () Bool)

(assert (=> b!2929859 (= e!1847620 (not e!1847622))))

(declare-fun res!1209435 () Bool)

(assert (=> b!2929859 (=> res!1209435 e!1847622)))

(declare-fun lt!1027483 () Bool)

(get-info :version)

(assert (=> b!2929859 (= res!1209435 (or (not lt!1027483) ((_ is Concat!14362) r!17423) ((_ is Union!9041) r!17423) (not ((_ is Star!9041) r!17423))))))

(declare-fun matchRSpec!1178 (Regex!9041 List!34906) Bool)

(assert (=> b!2929859 (= lt!1027483 (matchRSpec!1178 r!17423 s!11993))))

(declare-fun matchR!3923 (Regex!9041 List!34906) Bool)

(assert (=> b!2929859 (= lt!1027483 (matchR!3923 r!17423 s!11993))))

(declare-fun lt!1027480 () Unit!48421)

(declare-fun mainMatchTheorem!1178 (Regex!9041 List!34906) Unit!48421)

(assert (=> b!2929859 (= lt!1027480 (mainMatchTheorem!1178 r!17423 s!11993))))

(declare-fun b!2929860 () Bool)

(declare-fun e!1847623 () Bool)

(declare-fun tp!939122 () Bool)

(assert (=> b!2929860 (= e!1847623 (and tp_is_empty!15645 tp!939122))))

(declare-fun b!2929861 () Bool)

(declare-fun tp!939124 () Bool)

(assert (=> b!2929861 (= e!1847621 tp!939124)))

(declare-fun res!1209436 () Bool)

(assert (=> start!284932 (=> (not res!1209436) (not e!1847620))))

(declare-fun validRegex!3774 (Regex!9041) Bool)

(assert (=> start!284932 (= res!1209436 (validRegex!3774 r!17423))))

(assert (=> start!284932 e!1847620))

(assert (=> start!284932 e!1847621))

(assert (=> start!284932 e!1847623))

(assert (= (and start!284932 res!1209436) b!2929859))

(assert (= (and b!2929859 (not res!1209435)) b!2929854))

(assert (= (and b!2929854 (not res!1209434)) b!2929857))

(assert (= (and start!284932 ((_ is ElementMatch!9041) r!17423)) b!2929858))

(assert (= (and start!284932 ((_ is Concat!14362) r!17423)) b!2929856))

(assert (= (and start!284932 ((_ is Star!9041) r!17423)) b!2929861))

(assert (= (and start!284932 ((_ is Union!9041) r!17423)) b!2929855))

(assert (= (and start!284932 ((_ is Cons!34782) s!11993)) b!2929860))

(declare-fun m!3320475 () Bool)

(assert (=> b!2929854 m!3320475))

(declare-fun m!3320477 () Bool)

(assert (=> b!2929857 m!3320477))

(declare-fun m!3320479 () Bool)

(assert (=> b!2929857 m!3320479))

(declare-fun m!3320481 () Bool)

(assert (=> b!2929857 m!3320481))

(declare-fun m!3320483 () Bool)

(assert (=> b!2929857 m!3320483))

(declare-fun m!3320485 () Bool)

(assert (=> b!2929857 m!3320485))

(assert (=> b!2929857 m!3320479))

(assert (=> b!2929857 m!3320485))

(declare-fun m!3320487 () Bool)

(assert (=> b!2929857 m!3320487))

(declare-fun m!3320489 () Bool)

(assert (=> b!2929859 m!3320489))

(declare-fun m!3320491 () Bool)

(assert (=> b!2929859 m!3320491))

(declare-fun m!3320493 () Bool)

(assert (=> b!2929859 m!3320493))

(declare-fun m!3320495 () Bool)

(assert (=> start!284932 m!3320495))

(check-sat (not b!2929854) (not b!2929857) (not b!2929861) (not b!2929856) (not start!284932) (not b!2929860) (not b!2929855) tp_is_empty!15645 (not b!2929859))
(check-sat)

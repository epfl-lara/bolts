; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89730 () Bool)

(assert start!89730)

(declare-fun b!1030653 () Bool)

(assert (=> b!1030653 true))

(assert (=> b!1030653 true))

(declare-fun lambda!36970 () Int)

(declare-fun lambda!36969 () Int)

(assert (=> b!1030653 (not (= lambda!36970 lambda!36969))))

(assert (=> b!1030653 true))

(assert (=> b!1030653 true))

(declare-fun res!463096 () Bool)

(declare-fun e!657062 () Bool)

(assert (=> start!89730 (=> (not res!463096) (not e!657062))))

(declare-datatypes ((C!6288 0))(
  ( (C!6289 (val!3392 Int)) )
))
(declare-datatypes ((Regex!2859 0))(
  ( (ElementMatch!2859 (c!170948 C!6288)) (Concat!4692 (regOne!6230 Regex!2859) (regTwo!6230 Regex!2859)) (EmptyExpr!2859) (Star!2859 (reg!3188 Regex!2859)) (EmptyLang!2859) (Union!2859 (regOne!6231 Regex!2859) (regTwo!6231 Regex!2859)) )
))
(declare-fun r!15766 () Regex!2859)

(declare-fun validRegex!1328 (Regex!2859) Bool)

(assert (=> start!89730 (= res!463096 (validRegex!1328 r!15766))))

(assert (=> start!89730 e!657062))

(declare-fun e!657063 () Bool)

(assert (=> start!89730 e!657063))

(declare-fun e!657059 () Bool)

(assert (=> start!89730 e!657059))

(declare-fun b!1030652 () Bool)

(declare-fun e!657061 () Bool)

(assert (=> b!1030652 (= e!657062 (not e!657061))))

(declare-fun res!463102 () Bool)

(assert (=> b!1030652 (=> res!463102 e!657061)))

(declare-fun lt!356028 () Bool)

(get-info :version)

(assert (=> b!1030652 (= res!463102 (or lt!356028 (and ((_ is Concat!4692) r!15766) ((_ is EmptyExpr!2859) (regOne!6230 r!15766))) (not ((_ is Concat!4692) r!15766)) (not ((_ is EmptyExpr!2859) (regTwo!6230 r!15766)))))))

(declare-datatypes ((List!10089 0))(
  ( (Nil!10073) (Cons!10073 (h!15474 C!6288) (t!101135 List!10089)) )
))
(declare-fun s!10566 () List!10089)

(declare-fun matchRSpec!658 (Regex!2859 List!10089) Bool)

(assert (=> b!1030652 (= lt!356028 (matchRSpec!658 r!15766 s!10566))))

(declare-fun matchR!1395 (Regex!2859 List!10089) Bool)

(assert (=> b!1030652 (= lt!356028 (matchR!1395 r!15766 s!10566))))

(declare-datatypes ((Unit!15393 0))(
  ( (Unit!15394) )
))
(declare-fun lt!356026 () Unit!15393)

(declare-fun mainMatchTheorem!658 (Regex!2859 List!10089) Unit!15393)

(assert (=> b!1030652 (= lt!356026 (mainMatchTheorem!658 r!15766 s!10566))))

(declare-fun e!657058 () Bool)

(assert (=> b!1030653 (= e!657061 e!657058)))

(declare-fun res!463101 () Bool)

(assert (=> b!1030653 (=> res!463101 e!657058)))

(declare-fun isEmpty!6455 (List!10089) Bool)

(assert (=> b!1030653 (= res!463101 (isEmpty!6455 s!10566))))

(declare-fun Exists!586 (Int) Bool)

(assert (=> b!1030653 (= (Exists!586 lambda!36969) (Exists!586 lambda!36970))))

(declare-fun lt!356030 () Unit!15393)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!282 (Regex!2859 Regex!2859 List!10089) Unit!15393)

(assert (=> b!1030653 (= lt!356030 (lemmaExistCutMatchRandMatchRSpecEquivalent!282 (regOne!6230 r!15766) EmptyExpr!2859 s!10566))))

(declare-datatypes ((tuple2!11492 0))(
  ( (tuple2!11493 (_1!6572 List!10089) (_2!6572 List!10089)) )
))
(declare-datatypes ((Option!2388 0))(
  ( (None!2387) (Some!2387 (v!19804 tuple2!11492)) )
))
(declare-fun lt!356024 () Option!2388)

(declare-fun isDefined!2030 (Option!2388) Bool)

(assert (=> b!1030653 (= (isDefined!2030 lt!356024) (Exists!586 lambda!36969))))

(declare-fun findConcatSeparation!494 (Regex!2859 Regex!2859 List!10089 List!10089 List!10089) Option!2388)

(assert (=> b!1030653 (= lt!356024 (findConcatSeparation!494 (regOne!6230 r!15766) EmptyExpr!2859 Nil!10073 s!10566 s!10566))))

(declare-fun lt!356032 () Unit!15393)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!494 (Regex!2859 Regex!2859 List!10089) Unit!15393)

(assert (=> b!1030653 (= lt!356032 (lemmaFindConcatSeparationEquivalentToExists!494 (regOne!6230 r!15766) EmptyExpr!2859 s!10566))))

(declare-fun b!1030654 () Bool)

(declare-fun e!657060 () Bool)

(assert (=> b!1030654 (= e!657060 true)))

(declare-fun lt!356031 () List!10089)

(declare-fun ++!2767 (List!10089 List!10089) List!10089)

(assert (=> b!1030654 (= lt!356031 (++!2767 Nil!10073 s!10566))))

(declare-fun b!1030655 () Bool)

(declare-fun res!463099 () Bool)

(assert (=> b!1030655 (=> res!463099 e!657060)))

(assert (=> b!1030655 (= res!463099 (not (validRegex!1328 (regOne!6230 r!15766))))))

(declare-fun b!1030656 () Bool)

(declare-fun tp!312241 () Bool)

(declare-fun tp!312239 () Bool)

(assert (=> b!1030656 (= e!657063 (and tp!312241 tp!312239))))

(declare-fun b!1030657 () Bool)

(declare-fun tp!312243 () Bool)

(assert (=> b!1030657 (= e!657063 tp!312243)))

(declare-fun b!1030658 () Bool)

(declare-fun res!463098 () Bool)

(assert (=> b!1030658 (=> res!463098 e!657058)))

(declare-fun isEmpty!6456 (Option!2388) Bool)

(assert (=> b!1030658 (= res!463098 (not (isEmpty!6456 lt!356024)))))

(declare-fun b!1030659 () Bool)

(declare-fun tp!312240 () Bool)

(declare-fun tp!312244 () Bool)

(assert (=> b!1030659 (= e!657063 (and tp!312240 tp!312244))))

(declare-fun b!1030660 () Bool)

(declare-fun res!463097 () Bool)

(assert (=> b!1030660 (=> res!463097 e!657060)))

(assert (=> b!1030660 (= res!463097 false)))

(declare-fun b!1030661 () Bool)

(declare-fun tp_is_empty!5361 () Bool)

(assert (=> b!1030661 (= e!657063 tp_is_empty!5361)))

(declare-fun b!1030662 () Bool)

(assert (=> b!1030662 (= e!657058 e!657060)))

(declare-fun res!463094 () Bool)

(assert (=> b!1030662 (=> res!463094 e!657060)))

(declare-fun lt!356027 () Bool)

(declare-fun lt!356029 () Bool)

(assert (=> b!1030662 (= res!463094 (or (not lt!356027) (not lt!356029)))))

(assert (=> b!1030662 (= lt!356029 lt!356027)))

(declare-fun lt!356025 () Regex!2859)

(assert (=> b!1030662 (= lt!356027 (matchR!1395 lt!356025 s!10566))))

(assert (=> b!1030662 (= lt!356029 (matchR!1395 (regOne!6230 r!15766) s!10566))))

(declare-fun removeUselessConcat!416 (Regex!2859) Regex!2859)

(assert (=> b!1030662 (= lt!356025 (removeUselessConcat!416 (regOne!6230 r!15766)))))

(declare-fun lt!356033 () Unit!15393)

(declare-fun lemmaRemoveUselessConcatSound!254 (Regex!2859 List!10089) Unit!15393)

(assert (=> b!1030662 (= lt!356033 (lemmaRemoveUselessConcatSound!254 (regOne!6230 r!15766) s!10566))))

(declare-fun b!1030663 () Bool)

(declare-fun tp!312242 () Bool)

(assert (=> b!1030663 (= e!657059 (and tp_is_empty!5361 tp!312242))))

(declare-fun b!1030664 () Bool)

(declare-fun res!463095 () Bool)

(assert (=> b!1030664 (=> res!463095 e!657060)))

(declare-fun isPrefix!1017 (List!10089 List!10089) Bool)

(assert (=> b!1030664 (= res!463095 (not (isPrefix!1017 Nil!10073 s!10566)))))

(declare-fun b!1030665 () Bool)

(declare-fun res!463100 () Bool)

(assert (=> b!1030665 (=> res!463100 e!657060)))

(assert (=> b!1030665 (= res!463100 (not (= (++!2767 s!10566 Nil!10073) s!10566)))))

(assert (= (and start!89730 res!463096) b!1030652))

(assert (= (and b!1030652 (not res!463102)) b!1030653))

(assert (= (and b!1030653 (not res!463101)) b!1030658))

(assert (= (and b!1030658 (not res!463098)) b!1030662))

(assert (= (and b!1030662 (not res!463094)) b!1030655))

(assert (= (and b!1030655 (not res!463099)) b!1030660))

(assert (= (and b!1030660 (not res!463097)) b!1030665))

(assert (= (and b!1030665 (not res!463100)) b!1030664))

(assert (= (and b!1030664 (not res!463095)) b!1030654))

(assert (= (and start!89730 ((_ is ElementMatch!2859) r!15766)) b!1030661))

(assert (= (and start!89730 ((_ is Concat!4692) r!15766)) b!1030656))

(assert (= (and start!89730 ((_ is Star!2859) r!15766)) b!1030657))

(assert (= (and start!89730 ((_ is Union!2859) r!15766)) b!1030659))

(assert (= (and start!89730 ((_ is Cons!10073) s!10566)) b!1030663))

(declare-fun m!1204425 () Bool)

(assert (=> b!1030652 m!1204425))

(declare-fun m!1204427 () Bool)

(assert (=> b!1030652 m!1204427))

(declare-fun m!1204429 () Bool)

(assert (=> b!1030652 m!1204429))

(declare-fun m!1204431 () Bool)

(assert (=> b!1030654 m!1204431))

(declare-fun m!1204433 () Bool)

(assert (=> b!1030655 m!1204433))

(declare-fun m!1204435 () Bool)

(assert (=> b!1030665 m!1204435))

(declare-fun m!1204437 () Bool)

(assert (=> b!1030658 m!1204437))

(declare-fun m!1204439 () Bool)

(assert (=> b!1030653 m!1204439))

(declare-fun m!1204441 () Bool)

(assert (=> b!1030653 m!1204441))

(declare-fun m!1204443 () Bool)

(assert (=> b!1030653 m!1204443))

(declare-fun m!1204445 () Bool)

(assert (=> b!1030653 m!1204445))

(assert (=> b!1030653 m!1204443))

(declare-fun m!1204447 () Bool)

(assert (=> b!1030653 m!1204447))

(declare-fun m!1204449 () Bool)

(assert (=> b!1030653 m!1204449))

(declare-fun m!1204451 () Bool)

(assert (=> b!1030653 m!1204451))

(declare-fun m!1204453 () Bool)

(assert (=> b!1030662 m!1204453))

(declare-fun m!1204455 () Bool)

(assert (=> b!1030662 m!1204455))

(declare-fun m!1204457 () Bool)

(assert (=> b!1030662 m!1204457))

(declare-fun m!1204459 () Bool)

(assert (=> b!1030662 m!1204459))

(declare-fun m!1204461 () Bool)

(assert (=> b!1030664 m!1204461))

(declare-fun m!1204463 () Bool)

(assert (=> start!89730 m!1204463))

(check-sat (not b!1030656) (not b!1030663) (not b!1030658) (not b!1030662) (not b!1030653) (not b!1030654) (not b!1030665) (not b!1030655) (not b!1030664) (not b!1030652) (not start!89730) (not b!1030657) (not b!1030659) tp_is_empty!5361)
(check-sat)

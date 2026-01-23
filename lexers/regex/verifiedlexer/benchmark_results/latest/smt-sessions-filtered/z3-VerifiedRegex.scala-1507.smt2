; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79858 () Bool)

(assert start!79858)

(declare-fun b!883760 () Bool)

(assert (=> b!883760 true))

(assert (=> b!883760 true))

(declare-fun lambda!27216 () Int)

(declare-fun lambda!27215 () Int)

(assert (=> b!883760 (not (= lambda!27216 lambda!27215))))

(assert (=> b!883760 true))

(assert (=> b!883760 true))

(declare-fun b!883754 () Bool)

(declare-fun e!579821 () Bool)

(declare-fun tp_is_empty!4189 () Bool)

(assert (=> b!883754 (= e!579821 tp_is_empty!4189)))

(declare-fun b!883755 () Bool)

(declare-fun e!579818 () Bool)

(declare-fun tp!278971 () Bool)

(assert (=> b!883755 (= e!579818 (and tp_is_empty!4189 tp!278971))))

(declare-fun b!883756 () Bool)

(declare-fun tp!278967 () Bool)

(assert (=> b!883756 (= e!579821 tp!278967)))

(declare-fun b!883757 () Bool)

(declare-fun e!579822 () Bool)

(declare-fun e!579823 () Bool)

(assert (=> b!883757 (= e!579822 e!579823)))

(declare-fun res!401959 () Bool)

(assert (=> b!883757 (=> res!401959 e!579823)))

(declare-datatypes ((C!5116 0))(
  ( (C!5117 (val!2806 Int)) )
))
(declare-datatypes ((Regex!2273 0))(
  ( (ElementMatch!2273 (c!142820 C!5116)) (Concat!4106 (regOne!5058 Regex!2273) (regTwo!5058 Regex!2273)) (EmptyExpr!2273) (Star!2273 (reg!2602 Regex!2273)) (EmptyLang!2273) (Union!2273 (regOne!5059 Regex!2273) (regTwo!5059 Regex!2273)) )
))
(declare-fun r!15766 () Regex!2273)

(declare-datatypes ((List!9503 0))(
  ( (Nil!9487) (Cons!9487 (h!14888 C!5116) (t!100549 List!9503)) )
))
(declare-datatypes ((tuple2!10632 0))(
  ( (tuple2!10633 (_1!6142 List!9503) (_2!6142 List!9503)) )
))
(declare-fun lt!331114 () tuple2!10632)

(declare-fun matchR!811 (Regex!2273 List!9503) Bool)

(assert (=> b!883757 (= res!401959 (not (matchR!811 (regOne!5058 r!15766) (_1!6142 lt!331114))))))

(declare-datatypes ((Option!1958 0))(
  ( (None!1957) (Some!1957 (v!19374 tuple2!10632)) )
))
(declare-fun lt!331118 () Option!1958)

(declare-fun get!2959 (Option!1958) tuple2!10632)

(assert (=> b!883757 (= lt!331114 (get!2959 lt!331118))))

(declare-fun res!401960 () Bool)

(declare-fun e!579820 () Bool)

(assert (=> start!79858 (=> (not res!401960) (not e!579820))))

(declare-fun validRegex!742 (Regex!2273) Bool)

(assert (=> start!79858 (= res!401960 (validRegex!742 r!15766))))

(assert (=> start!79858 e!579820))

(assert (=> start!79858 e!579821))

(assert (=> start!79858 e!579818))

(declare-fun b!883758 () Bool)

(assert (=> b!883758 (= e!579823 true)))

(declare-fun removeUselessConcat!16 (Regex!2273) Regex!2273)

(assert (=> b!883758 (matchR!811 (removeUselessConcat!16 (regOne!5058 r!15766)) (_1!6142 lt!331114))))

(declare-datatypes ((Unit!14125 0))(
  ( (Unit!14126) )
))
(declare-fun lt!331116 () Unit!14125)

(declare-fun lemmaRemoveUselessConcatSound!10 (Regex!2273 List!9503) Unit!14125)

(assert (=> b!883758 (= lt!331116 (lemmaRemoveUselessConcatSound!10 (regOne!5058 r!15766) (_1!6142 lt!331114)))))

(declare-fun b!883759 () Bool)

(declare-fun tp!278969 () Bool)

(declare-fun tp!278970 () Bool)

(assert (=> b!883759 (= e!579821 (and tp!278969 tp!278970))))

(declare-fun e!579819 () Bool)

(assert (=> b!883760 (= e!579819 e!579822)))

(declare-fun res!401956 () Bool)

(assert (=> b!883760 (=> res!401956 e!579822)))

(declare-fun s!10566 () List!9503)

(declare-fun isEmpty!5688 (List!9503) Bool)

(assert (=> b!883760 (= res!401956 (isEmpty!5688 s!10566))))

(declare-fun Exists!68 (Int) Bool)

(assert (=> b!883760 (= (Exists!68 lambda!27215) (Exists!68 lambda!27216))))

(declare-fun lt!331119 () Unit!14125)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!58 (Regex!2273 Regex!2273 List!9503) Unit!14125)

(assert (=> b!883760 (= lt!331119 (lemmaExistCutMatchRandMatchRSpecEquivalent!58 (regOne!5058 r!15766) (regTwo!5058 r!15766) s!10566))))

(declare-fun isDefined!1600 (Option!1958) Bool)

(assert (=> b!883760 (= (isDefined!1600 lt!331118) (Exists!68 lambda!27215))))

(declare-fun findConcatSeparation!64 (Regex!2273 Regex!2273 List!9503 List!9503 List!9503) Option!1958)

(assert (=> b!883760 (= lt!331118 (findConcatSeparation!64 (regOne!5058 r!15766) (regTwo!5058 r!15766) Nil!9487 s!10566 s!10566))))

(declare-fun lt!331117 () Unit!14125)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!64 (Regex!2273 Regex!2273 List!9503) Unit!14125)

(assert (=> b!883760 (= lt!331117 (lemmaFindConcatSeparationEquivalentToExists!64 (regOne!5058 r!15766) (regTwo!5058 r!15766) s!10566))))

(declare-fun b!883761 () Bool)

(declare-fun res!401957 () Bool)

(assert (=> b!883761 (=> res!401957 e!579823)))

(assert (=> b!883761 (= res!401957 (not (matchR!811 (regTwo!5058 r!15766) (_2!6142 lt!331114))))))

(declare-fun b!883762 () Bool)

(declare-fun tp!278972 () Bool)

(declare-fun tp!278968 () Bool)

(assert (=> b!883762 (= e!579821 (and tp!278972 tp!278968))))

(declare-fun b!883763 () Bool)

(assert (=> b!883763 (= e!579820 (not e!579819))))

(declare-fun res!401958 () Bool)

(assert (=> b!883763 (=> res!401958 e!579819)))

(declare-fun lt!331113 () Bool)

(get-info :version)

(assert (=> b!883763 (= res!401958 (or (not lt!331113) (and ((_ is Concat!4106) r!15766) ((_ is EmptyExpr!2273) (regOne!5058 r!15766))) (and ((_ is Concat!4106) r!15766) ((_ is EmptyExpr!2273) (regTwo!5058 r!15766))) (not ((_ is Concat!4106) r!15766))))))

(declare-fun matchRSpec!74 (Regex!2273 List!9503) Bool)

(assert (=> b!883763 (= lt!331113 (matchRSpec!74 r!15766 s!10566))))

(assert (=> b!883763 (= lt!331113 (matchR!811 r!15766 s!10566))))

(declare-fun lt!331115 () Unit!14125)

(declare-fun mainMatchTheorem!74 (Regex!2273 List!9503) Unit!14125)

(assert (=> b!883763 (= lt!331115 (mainMatchTheorem!74 r!15766 s!10566))))

(assert (= (and start!79858 res!401960) b!883763))

(assert (= (and b!883763 (not res!401958)) b!883760))

(assert (= (and b!883760 (not res!401956)) b!883757))

(assert (= (and b!883757 (not res!401959)) b!883761))

(assert (= (and b!883761 (not res!401957)) b!883758))

(assert (= (and start!79858 ((_ is ElementMatch!2273) r!15766)) b!883754))

(assert (= (and start!79858 ((_ is Concat!4106) r!15766)) b!883762))

(assert (= (and start!79858 ((_ is Star!2273) r!15766)) b!883756))

(assert (= (and start!79858 ((_ is Union!2273) r!15766)) b!883759))

(assert (= (and start!79858 ((_ is Cons!9487) s!10566)) b!883755))

(declare-fun m!1130511 () Bool)

(assert (=> b!883757 m!1130511))

(declare-fun m!1130513 () Bool)

(assert (=> b!883757 m!1130513))

(declare-fun m!1130515 () Bool)

(assert (=> b!883758 m!1130515))

(assert (=> b!883758 m!1130515))

(declare-fun m!1130517 () Bool)

(assert (=> b!883758 m!1130517))

(declare-fun m!1130519 () Bool)

(assert (=> b!883758 m!1130519))

(declare-fun m!1130521 () Bool)

(assert (=> b!883761 m!1130521))

(declare-fun m!1130523 () Bool)

(assert (=> b!883760 m!1130523))

(declare-fun m!1130525 () Bool)

(assert (=> b!883760 m!1130525))

(declare-fun m!1130527 () Bool)

(assert (=> b!883760 m!1130527))

(declare-fun m!1130529 () Bool)

(assert (=> b!883760 m!1130529))

(declare-fun m!1130531 () Bool)

(assert (=> b!883760 m!1130531))

(declare-fun m!1130533 () Bool)

(assert (=> b!883760 m!1130533))

(assert (=> b!883760 m!1130525))

(declare-fun m!1130535 () Bool)

(assert (=> b!883760 m!1130535))

(declare-fun m!1130537 () Bool)

(assert (=> b!883763 m!1130537))

(declare-fun m!1130539 () Bool)

(assert (=> b!883763 m!1130539))

(declare-fun m!1130541 () Bool)

(assert (=> b!883763 m!1130541))

(declare-fun m!1130543 () Bool)

(assert (=> start!79858 m!1130543))

(check-sat (not b!883762) (not b!883760) (not b!883763) (not b!883761) (not b!883758) (not start!79858) (not b!883756) (not b!883757) tp_is_empty!4189 (not b!883755) (not b!883759))
(check-sat)

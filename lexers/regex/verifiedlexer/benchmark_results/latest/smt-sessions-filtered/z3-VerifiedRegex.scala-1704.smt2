; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85598 () Bool)

(assert start!85598)

(declare-fun b!961044 () Bool)

(assert (=> b!961044 true))

(assert (=> b!961044 true))

(declare-fun lambda!33492 () Int)

(declare-fun lambda!33491 () Int)

(assert (=> b!961044 (not (= lambda!33492 lambda!33491))))

(assert (=> b!961044 true))

(assert (=> b!961044 true))

(declare-fun bs!240801 () Bool)

(declare-fun b!961051 () Bool)

(assert (= bs!240801 (and b!961051 b!961044)))

(declare-datatypes ((C!5904 0))(
  ( (C!5905 (val!3200 Int)) )
))
(declare-datatypes ((Regex!2667 0))(
  ( (ElementMatch!2667 (c!156512 C!5904)) (Concat!4500 (regOne!5846 Regex!2667) (regTwo!5846 Regex!2667)) (EmptyExpr!2667) (Star!2667 (reg!2996 Regex!2667)) (EmptyLang!2667) (Union!2667 (regOne!5847 Regex!2667) (regTwo!5847 Regex!2667)) )
))
(declare-fun lt!346701 () Regex!2667)

(declare-fun lambda!33493 () Int)

(declare-fun r!15766 () Regex!2667)

(declare-fun lt!346704 () Regex!2667)

(assert (=> bs!240801 (= (and (= lt!346701 (regOne!5846 r!15766)) (= lt!346704 (regTwo!5846 r!15766))) (= lambda!33493 lambda!33491))))

(assert (=> bs!240801 (not (= lambda!33493 lambda!33492))))

(assert (=> b!961051 true))

(assert (=> b!961051 true))

(assert (=> b!961051 true))

(declare-fun lambda!33494 () Int)

(assert (=> bs!240801 (not (= lambda!33494 lambda!33491))))

(assert (=> bs!240801 (= (and (= lt!346701 (regOne!5846 r!15766)) (= lt!346704 (regTwo!5846 r!15766))) (= lambda!33494 lambda!33492))))

(assert (=> b!961051 (not (= lambda!33494 lambda!33493))))

(assert (=> b!961051 true))

(assert (=> b!961051 true))

(assert (=> b!961051 true))

(declare-fun b!961043 () Bool)

(declare-fun e!620754 () Bool)

(declare-fun tp!295479 () Bool)

(declare-fun tp!295480 () Bool)

(assert (=> b!961043 (= e!620754 (and tp!295479 tp!295480))))

(declare-fun e!620751 () Bool)

(declare-fun e!620753 () Bool)

(assert (=> b!961044 (= e!620751 e!620753)))

(declare-fun res!436796 () Bool)

(assert (=> b!961044 (=> res!436796 e!620753)))

(declare-datatypes ((List!9897 0))(
  ( (Nil!9881) (Cons!9881 (h!15282 C!5904) (t!100943 List!9897)) )
))
(declare-fun s!10566 () List!9897)

(declare-fun isEmpty!6177 (List!9897) Bool)

(assert (=> b!961044 (= res!436796 (isEmpty!6177 s!10566))))

(declare-fun Exists!414 (Int) Bool)

(assert (=> b!961044 (= (Exists!414 lambda!33491) (Exists!414 lambda!33492))))

(declare-datatypes ((Unit!14989 0))(
  ( (Unit!14990) )
))
(declare-fun lt!346705 () Unit!14989)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!210 (Regex!2667 Regex!2667 List!9897) Unit!14989)

(assert (=> b!961044 (= lt!346705 (lemmaExistCutMatchRandMatchRSpecEquivalent!210 (regOne!5846 r!15766) (regTwo!5846 r!15766) s!10566))))

(declare-datatypes ((tuple2!11220 0))(
  ( (tuple2!11221 (_1!6436 List!9897) (_2!6436 List!9897)) )
))
(declare-datatypes ((Option!2252 0))(
  ( (None!2251) (Some!2251 (v!19668 tuple2!11220)) )
))
(declare-fun isDefined!1894 (Option!2252) Bool)

(declare-fun findConcatSeparation!358 (Regex!2667 Regex!2667 List!9897 List!9897 List!9897) Option!2252)

(assert (=> b!961044 (= (isDefined!1894 (findConcatSeparation!358 (regOne!5846 r!15766) (regTwo!5846 r!15766) Nil!9881 s!10566 s!10566)) (Exists!414 lambda!33491))))

(declare-fun lt!346700 () Unit!14989)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!358 (Regex!2667 Regex!2667 List!9897) Unit!14989)

(assert (=> b!961044 (= lt!346700 (lemmaFindConcatSeparationEquivalentToExists!358 (regOne!5846 r!15766) (regTwo!5846 r!15766) s!10566))))

(declare-fun b!961045 () Bool)

(declare-fun tp_is_empty!4977 () Bool)

(assert (=> b!961045 (= e!620754 tp_is_empty!4977)))

(declare-fun b!961046 () Bool)

(declare-fun e!620750 () Bool)

(assert (=> b!961046 (= e!620750 (not e!620751))))

(declare-fun res!436794 () Bool)

(assert (=> b!961046 (=> res!436794 e!620751)))

(declare-fun lt!346698 () Bool)

(get-info :version)

(assert (=> b!961046 (= res!436794 (or lt!346698 (and ((_ is Concat!4500) r!15766) ((_ is EmptyExpr!2667) (regOne!5846 r!15766))) (and ((_ is Concat!4500) r!15766) ((_ is EmptyExpr!2667) (regTwo!5846 r!15766))) (not ((_ is Concat!4500) r!15766))))))

(declare-fun matchRSpec!468 (Regex!2667 List!9897) Bool)

(assert (=> b!961046 (= lt!346698 (matchRSpec!468 r!15766 s!10566))))

(declare-fun matchR!1205 (Regex!2667 List!9897) Bool)

(assert (=> b!961046 (= lt!346698 (matchR!1205 r!15766 s!10566))))

(declare-fun lt!346702 () Unit!14989)

(declare-fun mainMatchTheorem!468 (Regex!2667 List!9897) Unit!14989)

(assert (=> b!961046 (= lt!346702 (mainMatchTheorem!468 r!15766 s!10566))))

(declare-fun b!961047 () Bool)

(declare-fun tp!295484 () Bool)

(assert (=> b!961047 (= e!620754 tp!295484)))

(declare-fun b!961048 () Bool)

(declare-fun tp!295481 () Bool)

(declare-fun tp!295483 () Bool)

(assert (=> b!961048 (= e!620754 (and tp!295481 tp!295483))))

(declare-fun b!961049 () Bool)

(declare-fun e!620752 () Bool)

(assert (=> b!961049 (= e!620753 e!620752)))

(declare-fun res!436795 () Bool)

(assert (=> b!961049 (=> res!436795 e!620752)))

(declare-fun lt!346703 () Regex!2667)

(assert (=> b!961049 (= res!436795 (not (matchR!1205 lt!346703 s!10566)))))

(assert (=> b!961049 (= lt!346703 (Concat!4500 lt!346701 lt!346704))))

(declare-fun removeUselessConcat!314 (Regex!2667) Regex!2667)

(assert (=> b!961049 (= lt!346704 (removeUselessConcat!314 (regTwo!5846 r!15766)))))

(assert (=> b!961049 (= lt!346701 (removeUselessConcat!314 (regOne!5846 r!15766)))))

(declare-fun res!436793 () Bool)

(assert (=> start!85598 (=> (not res!436793) (not e!620750))))

(declare-fun validRegex!1136 (Regex!2667) Bool)

(assert (=> start!85598 (= res!436793 (validRegex!1136 r!15766))))

(assert (=> start!85598 e!620750))

(assert (=> start!85598 e!620754))

(declare-fun e!620755 () Bool)

(assert (=> start!85598 e!620755))

(declare-fun b!961050 () Bool)

(declare-fun tp!295482 () Bool)

(assert (=> b!961050 (= e!620755 (and tp_is_empty!4977 tp!295482))))

(declare-fun lt!346699 () Bool)

(assert (=> b!961051 (= e!620752 lt!346699)))

(assert (=> b!961051 (= (Exists!414 lambda!33493) (Exists!414 lambda!33494))))

(declare-fun lt!346697 () Unit!14989)

(assert (=> b!961051 (= lt!346697 (lemmaExistCutMatchRandMatchRSpecEquivalent!210 lt!346701 lt!346704 s!10566))))

(assert (=> b!961051 (= lt!346699 (Exists!414 lambda!33493))))

(assert (=> b!961051 (= lt!346699 (isDefined!1894 (findConcatSeparation!358 lt!346701 lt!346704 Nil!9881 s!10566 s!10566)))))

(declare-fun lt!346707 () Unit!14989)

(assert (=> b!961051 (= lt!346707 (lemmaFindConcatSeparationEquivalentToExists!358 lt!346701 lt!346704 s!10566))))

(assert (=> b!961051 (matchRSpec!468 lt!346703 s!10566)))

(declare-fun lt!346706 () Unit!14989)

(assert (=> b!961051 (= lt!346706 (mainMatchTheorem!468 lt!346703 s!10566))))

(assert (= (and start!85598 res!436793) b!961046))

(assert (= (and b!961046 (not res!436794)) b!961044))

(assert (= (and b!961044 (not res!436796)) b!961049))

(assert (= (and b!961049 (not res!436795)) b!961051))

(assert (= (and start!85598 ((_ is ElementMatch!2667) r!15766)) b!961045))

(assert (= (and start!85598 ((_ is Concat!4500) r!15766)) b!961048))

(assert (= (and start!85598 ((_ is Star!2667) r!15766)) b!961047))

(assert (= (and start!85598 ((_ is Union!2667) r!15766)) b!961043))

(assert (= (and start!85598 ((_ is Cons!9881) s!10566)) b!961050))

(declare-fun m!1169149 () Bool)

(assert (=> b!961046 m!1169149))

(declare-fun m!1169151 () Bool)

(assert (=> b!961046 m!1169151))

(declare-fun m!1169153 () Bool)

(assert (=> b!961046 m!1169153))

(declare-fun m!1169155 () Bool)

(assert (=> b!961044 m!1169155))

(declare-fun m!1169157 () Bool)

(assert (=> b!961044 m!1169157))

(declare-fun m!1169159 () Bool)

(assert (=> b!961044 m!1169159))

(declare-fun m!1169161 () Bool)

(assert (=> b!961044 m!1169161))

(declare-fun m!1169163 () Bool)

(assert (=> b!961044 m!1169163))

(assert (=> b!961044 m!1169157))

(declare-fun m!1169165 () Bool)

(assert (=> b!961044 m!1169165))

(assert (=> b!961044 m!1169155))

(declare-fun m!1169167 () Bool)

(assert (=> b!961044 m!1169167))

(declare-fun m!1169169 () Bool)

(assert (=> b!961051 m!1169169))

(assert (=> b!961051 m!1169169))

(declare-fun m!1169171 () Bool)

(assert (=> b!961051 m!1169171))

(assert (=> b!961051 m!1169171))

(declare-fun m!1169173 () Bool)

(assert (=> b!961051 m!1169173))

(declare-fun m!1169175 () Bool)

(assert (=> b!961051 m!1169175))

(declare-fun m!1169177 () Bool)

(assert (=> b!961051 m!1169177))

(declare-fun m!1169179 () Bool)

(assert (=> b!961051 m!1169179))

(declare-fun m!1169181 () Bool)

(assert (=> b!961051 m!1169181))

(declare-fun m!1169183 () Bool)

(assert (=> b!961051 m!1169183))

(declare-fun m!1169185 () Bool)

(assert (=> start!85598 m!1169185))

(declare-fun m!1169187 () Bool)

(assert (=> b!961049 m!1169187))

(declare-fun m!1169189 () Bool)

(assert (=> b!961049 m!1169189))

(declare-fun m!1169191 () Bool)

(assert (=> b!961049 m!1169191))

(check-sat tp_is_empty!4977 (not b!961049) (not b!961048) (not b!961051) (not b!961046) (not b!961044) (not b!961043) (not b!961047) (not b!961050) (not start!85598))
(check-sat)
(get-model)

(declare-fun bs!240835 () Bool)

(declare-fun b!961185 () Bool)

(assert (= bs!240835 (and b!961185 b!961044)))

(declare-fun lambda!33516 () Int)

(assert (=> bs!240835 (not (= lambda!33516 lambda!33491))))

(assert (=> bs!240835 (not (= lambda!33516 lambda!33492))))

(declare-fun bs!240836 () Bool)

(assert (= bs!240836 (and b!961185 b!961051)))

(assert (=> bs!240836 (not (= lambda!33516 lambda!33493))))

(assert (=> bs!240836 (not (= lambda!33516 lambda!33494))))

(assert (=> b!961185 true))

(assert (=> b!961185 true))

(declare-fun bs!240837 () Bool)

(declare-fun b!961183 () Bool)

(assert (= bs!240837 (and b!961183 b!961051)))

(declare-fun lambda!33517 () Int)

(assert (=> bs!240837 (not (= lambda!33517 lambda!33493))))

(assert (=> bs!240837 (= (and (= (regOne!5846 r!15766) lt!346701) (= (regTwo!5846 r!15766) lt!346704)) (= lambda!33517 lambda!33494))))

(declare-fun bs!240838 () Bool)

(assert (= bs!240838 (and b!961183 b!961185)))

(assert (=> bs!240838 (not (= lambda!33517 lambda!33516))))

(declare-fun bs!240839 () Bool)

(assert (= bs!240839 (and b!961183 b!961044)))

(assert (=> bs!240839 (not (= lambda!33517 lambda!33491))))

(assert (=> bs!240839 (= lambda!33517 lambda!33492)))

(assert (=> b!961183 true))

(assert (=> b!961183 true))

(declare-fun call!60562 () Bool)

(declare-fun c!156544 () Bool)

(declare-fun bm!60557 () Bool)

(assert (=> bm!60557 (= call!60562 (Exists!414 (ite c!156544 lambda!33516 lambda!33517)))))

(declare-fun b!961181 () Bool)

(declare-fun e!620833 () Bool)

(assert (=> b!961181 (= e!620833 (= s!10566 (Cons!9881 (c!156512 r!15766) Nil!9881)))))

(declare-fun b!961182 () Bool)

(declare-fun e!620829 () Bool)

(declare-fun call!60563 () Bool)

(assert (=> b!961182 (= e!620829 call!60563)))

(declare-fun e!620830 () Bool)

(assert (=> b!961183 (= e!620830 call!60562)))

(declare-fun b!961184 () Bool)

(declare-fun c!156543 () Bool)

(assert (=> b!961184 (= c!156543 ((_ is ElementMatch!2667) r!15766))))

(declare-fun e!620832 () Bool)

(assert (=> b!961184 (= e!620832 e!620833)))

(declare-fun e!620828 () Bool)

(assert (=> b!961185 (= e!620828 call!60562)))

(declare-fun b!961186 () Bool)

(declare-fun c!156545 () Bool)

(assert (=> b!961186 (= c!156545 ((_ is Union!2667) r!15766))))

(declare-fun e!620831 () Bool)

(assert (=> b!961186 (= e!620833 e!620831)))

(declare-fun b!961187 () Bool)

(assert (=> b!961187 (= e!620831 e!620830)))

(assert (=> b!961187 (= c!156544 ((_ is Star!2667) r!15766))))

(declare-fun b!961188 () Bool)

(assert (=> b!961188 (= e!620829 e!620832)))

(declare-fun res!436863 () Bool)

(assert (=> b!961188 (= res!436863 (not ((_ is EmptyLang!2667) r!15766)))))

(assert (=> b!961188 (=> (not res!436863) (not e!620832))))

(declare-fun b!961189 () Bool)

(declare-fun res!436862 () Bool)

(assert (=> b!961189 (=> res!436862 e!620828)))

(assert (=> b!961189 (= res!436862 call!60563)))

(assert (=> b!961189 (= e!620830 e!620828)))

(declare-fun d!285147 () Bool)

(declare-fun c!156546 () Bool)

(assert (=> d!285147 (= c!156546 ((_ is EmptyExpr!2667) r!15766))))

(assert (=> d!285147 (= (matchRSpec!468 r!15766 s!10566) e!620829)))

(declare-fun bm!60558 () Bool)

(assert (=> bm!60558 (= call!60563 (isEmpty!6177 s!10566))))

(declare-fun b!961190 () Bool)

(declare-fun e!620827 () Bool)

(assert (=> b!961190 (= e!620831 e!620827)))

(declare-fun res!436864 () Bool)

(assert (=> b!961190 (= res!436864 (matchRSpec!468 (regOne!5847 r!15766) s!10566))))

(assert (=> b!961190 (=> res!436864 e!620827)))

(declare-fun b!961191 () Bool)

(assert (=> b!961191 (= e!620827 (matchRSpec!468 (regTwo!5847 r!15766) s!10566))))

(assert (= (and d!285147 c!156546) b!961182))

(assert (= (and d!285147 (not c!156546)) b!961188))

(assert (= (and b!961188 res!436863) b!961184))

(assert (= (and b!961184 c!156543) b!961181))

(assert (= (and b!961184 (not c!156543)) b!961186))

(assert (= (and b!961186 c!156545) b!961190))

(assert (= (and b!961186 (not c!156545)) b!961187))

(assert (= (and b!961190 (not res!436864)) b!961191))

(assert (= (and b!961187 c!156544) b!961189))

(assert (= (and b!961187 (not c!156544)) b!961183))

(assert (= (and b!961189 (not res!436862)) b!961185))

(assert (= (or b!961185 b!961183) bm!60557))

(assert (= (or b!961182 b!961189) bm!60558))

(declare-fun m!1169249 () Bool)

(assert (=> bm!60557 m!1169249))

(assert (=> bm!60558 m!1169161))

(declare-fun m!1169251 () Bool)

(assert (=> b!961190 m!1169251))

(declare-fun m!1169253 () Bool)

(assert (=> b!961191 m!1169253))

(assert (=> b!961046 d!285147))

(declare-fun d!285159 () Bool)

(declare-fun e!620918 () Bool)

(assert (=> d!285159 e!620918))

(declare-fun c!156585 () Bool)

(assert (=> d!285159 (= c!156585 ((_ is EmptyExpr!2667) r!15766))))

(declare-fun lt!346740 () Bool)

(declare-fun e!620920 () Bool)

(assert (=> d!285159 (= lt!346740 e!620920)))

(declare-fun c!156583 () Bool)

(assert (=> d!285159 (= c!156583 (isEmpty!6177 s!10566))))

(assert (=> d!285159 (validRegex!1136 r!15766)))

(assert (=> d!285159 (= (matchR!1205 r!15766 s!10566) lt!346740)))

(declare-fun b!961334 () Bool)

(declare-fun res!436941 () Bool)

(declare-fun e!620915 () Bool)

(assert (=> b!961334 (=> (not res!436941) (not e!620915))))

(declare-fun call!60589 () Bool)

(assert (=> b!961334 (= res!436941 (not call!60589))))

(declare-fun b!961335 () Bool)

(declare-fun e!620914 () Bool)

(declare-fun e!620919 () Bool)

(assert (=> b!961335 (= e!620914 e!620919)))

(declare-fun res!436940 () Bool)

(assert (=> b!961335 (=> res!436940 e!620919)))

(assert (=> b!961335 (= res!436940 call!60589)))

(declare-fun b!961336 () Bool)

(declare-fun res!436942 () Bool)

(declare-fun e!620917 () Bool)

(assert (=> b!961336 (=> res!436942 e!620917)))

(assert (=> b!961336 (= res!436942 e!620915)))

(declare-fun res!436937 () Bool)

(assert (=> b!961336 (=> (not res!436937) (not e!620915))))

(assert (=> b!961336 (= res!436937 lt!346740)))

(declare-fun b!961337 () Bool)

(declare-fun derivativeStep!611 (Regex!2667 C!5904) Regex!2667)

(declare-fun head!1764 (List!9897) C!5904)

(declare-fun tail!1326 (List!9897) List!9897)

(assert (=> b!961337 (= e!620920 (matchR!1205 (derivativeStep!611 r!15766 (head!1764 s!10566)) (tail!1326 s!10566)))))

(declare-fun b!961338 () Bool)

(assert (=> b!961338 (= e!620919 (not (= (head!1764 s!10566) (c!156512 r!15766))))))

(declare-fun b!961339 () Bool)

(assert (=> b!961339 (= e!620918 (= lt!346740 call!60589))))

(declare-fun b!961340 () Bool)

(declare-fun e!620916 () Bool)

(assert (=> b!961340 (= e!620918 e!620916)))

(declare-fun c!156584 () Bool)

(assert (=> b!961340 (= c!156584 ((_ is EmptyLang!2667) r!15766))))

(declare-fun b!961341 () Bool)

(declare-fun res!436935 () Bool)

(assert (=> b!961341 (=> res!436935 e!620919)))

(assert (=> b!961341 (= res!436935 (not (isEmpty!6177 (tail!1326 s!10566))))))

(declare-fun b!961342 () Bool)

(assert (=> b!961342 (= e!620917 e!620914)))

(declare-fun res!436939 () Bool)

(assert (=> b!961342 (=> (not res!436939) (not e!620914))))

(assert (=> b!961342 (= res!436939 (not lt!346740))))

(declare-fun b!961343 () Bool)

(declare-fun nullable!803 (Regex!2667) Bool)

(assert (=> b!961343 (= e!620920 (nullable!803 r!15766))))

(declare-fun b!961344 () Bool)

(assert (=> b!961344 (= e!620916 (not lt!346740))))

(declare-fun b!961345 () Bool)

(assert (=> b!961345 (= e!620915 (= (head!1764 s!10566) (c!156512 r!15766)))))

(declare-fun b!961346 () Bool)

(declare-fun res!436938 () Bool)

(assert (=> b!961346 (=> (not res!436938) (not e!620915))))

(assert (=> b!961346 (= res!436938 (isEmpty!6177 (tail!1326 s!10566)))))

(declare-fun bm!60584 () Bool)

(assert (=> bm!60584 (= call!60589 (isEmpty!6177 s!10566))))

(declare-fun b!961347 () Bool)

(declare-fun res!436936 () Bool)

(assert (=> b!961347 (=> res!436936 e!620917)))

(assert (=> b!961347 (= res!436936 (not ((_ is ElementMatch!2667) r!15766)))))

(assert (=> b!961347 (= e!620916 e!620917)))

(assert (= (and d!285159 c!156583) b!961343))

(assert (= (and d!285159 (not c!156583)) b!961337))

(assert (= (and d!285159 c!156585) b!961339))

(assert (= (and d!285159 (not c!156585)) b!961340))

(assert (= (and b!961340 c!156584) b!961344))

(assert (= (and b!961340 (not c!156584)) b!961347))

(assert (= (and b!961347 (not res!436936)) b!961336))

(assert (= (and b!961336 res!436937) b!961334))

(assert (= (and b!961334 res!436941) b!961346))

(assert (= (and b!961346 res!436938) b!961345))

(assert (= (and b!961336 (not res!436942)) b!961342))

(assert (= (and b!961342 res!436939) b!961335))

(assert (= (and b!961335 (not res!436940)) b!961341))

(assert (= (and b!961341 (not res!436935)) b!961338))

(assert (= (or b!961339 b!961334 b!961335) bm!60584))

(declare-fun m!1169327 () Bool)

(assert (=> b!961346 m!1169327))

(assert (=> b!961346 m!1169327))

(declare-fun m!1169331 () Bool)

(assert (=> b!961346 m!1169331))

(declare-fun m!1169337 () Bool)

(assert (=> b!961345 m!1169337))

(assert (=> d!285159 m!1169161))

(assert (=> d!285159 m!1169185))

(assert (=> b!961341 m!1169327))

(assert (=> b!961341 m!1169327))

(assert (=> b!961341 m!1169331))

(assert (=> b!961337 m!1169337))

(assert (=> b!961337 m!1169337))

(declare-fun m!1169343 () Bool)

(assert (=> b!961337 m!1169343))

(assert (=> b!961337 m!1169327))

(assert (=> b!961337 m!1169343))

(assert (=> b!961337 m!1169327))

(declare-fun m!1169345 () Bool)

(assert (=> b!961337 m!1169345))

(assert (=> bm!60584 m!1169161))

(assert (=> b!961338 m!1169337))

(declare-fun m!1169347 () Bool)

(assert (=> b!961343 m!1169347))

(assert (=> b!961046 d!285159))

(declare-fun d!285185 () Bool)

(assert (=> d!285185 (= (matchR!1205 r!15766 s!10566) (matchRSpec!468 r!15766 s!10566))))

(declare-fun lt!346745 () Unit!14989)

(declare-fun choose!6051 (Regex!2667 List!9897) Unit!14989)

(assert (=> d!285185 (= lt!346745 (choose!6051 r!15766 s!10566))))

(assert (=> d!285185 (validRegex!1136 r!15766)))

(assert (=> d!285185 (= (mainMatchTheorem!468 r!15766 s!10566) lt!346745)))

(declare-fun bs!240863 () Bool)

(assert (= bs!240863 d!285185))

(assert (=> bs!240863 m!1169151))

(assert (=> bs!240863 m!1169149))

(declare-fun m!1169349 () Bool)

(assert (=> bs!240863 m!1169349))

(assert (=> bs!240863 m!1169185))

(assert (=> b!961046 d!285185))

(declare-fun bm!60601 () Bool)

(declare-fun call!60607 () Bool)

(declare-fun c!156601 () Bool)

(declare-fun c!156600 () Bool)

(assert (=> bm!60601 (= call!60607 (validRegex!1136 (ite c!156600 (reg!2996 r!15766) (ite c!156601 (regOne!5847 r!15766) (regOne!5846 r!15766)))))))

(declare-fun b!961423 () Bool)

(declare-fun e!620962 () Bool)

(declare-fun e!620963 () Bool)

(assert (=> b!961423 (= e!620962 e!620963)))

(assert (=> b!961423 (= c!156601 ((_ is Union!2667) r!15766))))

(declare-fun b!961424 () Bool)

(declare-fun e!620961 () Bool)

(declare-fun e!620958 () Bool)

(assert (=> b!961424 (= e!620961 e!620958)))

(declare-fun res!436955 () Bool)

(assert (=> b!961424 (=> (not res!436955) (not e!620958))))

(declare-fun call!60606 () Bool)

(assert (=> b!961424 (= res!436955 call!60606)))

(declare-fun b!961425 () Bool)

(declare-fun call!60608 () Bool)

(assert (=> b!961425 (= e!620958 call!60608)))

(declare-fun b!961426 () Bool)

(declare-fun e!620957 () Bool)

(assert (=> b!961426 (= e!620962 e!620957)))

(declare-fun res!436957 () Bool)

(assert (=> b!961426 (= res!436957 (not (nullable!803 (reg!2996 r!15766))))))

(assert (=> b!961426 (=> (not res!436957) (not e!620957))))

(declare-fun b!961427 () Bool)

(declare-fun res!436956 () Bool)

(declare-fun e!620959 () Bool)

(assert (=> b!961427 (=> (not res!436956) (not e!620959))))

(assert (=> b!961427 (= res!436956 call!60606)))

(assert (=> b!961427 (= e!620963 e!620959)))

(declare-fun bm!60602 () Bool)

(assert (=> bm!60602 (= call!60606 call!60607)))

(declare-fun b!961428 () Bool)

(declare-fun res!436958 () Bool)

(assert (=> b!961428 (=> res!436958 e!620961)))

(assert (=> b!961428 (= res!436958 (not ((_ is Concat!4500) r!15766)))))

(assert (=> b!961428 (= e!620963 e!620961)))

(declare-fun bm!60603 () Bool)

(assert (=> bm!60603 (= call!60608 (validRegex!1136 (ite c!156601 (regTwo!5847 r!15766) (regTwo!5846 r!15766))))))

(declare-fun b!961429 () Bool)

(assert (=> b!961429 (= e!620959 call!60608)))

(declare-fun b!961430 () Bool)

(declare-fun e!620960 () Bool)

(assert (=> b!961430 (= e!620960 e!620962)))

(assert (=> b!961430 (= c!156600 ((_ is Star!2667) r!15766))))

(declare-fun b!961431 () Bool)

(assert (=> b!961431 (= e!620957 call!60607)))

(declare-fun d!285187 () Bool)

(declare-fun res!436959 () Bool)

(assert (=> d!285187 (=> res!436959 e!620960)))

(assert (=> d!285187 (= res!436959 ((_ is ElementMatch!2667) r!15766))))

(assert (=> d!285187 (= (validRegex!1136 r!15766) e!620960)))

(assert (= (and d!285187 (not res!436959)) b!961430))

(assert (= (and b!961430 c!156600) b!961426))

(assert (= (and b!961430 (not c!156600)) b!961423))

(assert (= (and b!961426 res!436957) b!961431))

(assert (= (and b!961423 c!156601) b!961427))

(assert (= (and b!961423 (not c!156601)) b!961428))

(assert (= (and b!961427 res!436956) b!961429))

(assert (= (and b!961428 (not res!436958)) b!961424))

(assert (= (and b!961424 res!436955) b!961425))

(assert (= (or b!961429 b!961425) bm!60603))

(assert (= (or b!961427 b!961424) bm!60602))

(assert (= (or b!961431 bm!60602) bm!60601))

(declare-fun m!1169351 () Bool)

(assert (=> bm!60601 m!1169351))

(declare-fun m!1169353 () Bool)

(assert (=> b!961426 m!1169353))

(declare-fun m!1169355 () Bool)

(assert (=> bm!60603 m!1169355))

(assert (=> start!85598 d!285187))

(declare-fun d!285189 () Bool)

(declare-fun e!620968 () Bool)

(assert (=> d!285189 e!620968))

(declare-fun c!156604 () Bool)

(assert (=> d!285189 (= c!156604 ((_ is EmptyExpr!2667) lt!346703))))

(declare-fun lt!346746 () Bool)

(declare-fun e!620970 () Bool)

(assert (=> d!285189 (= lt!346746 e!620970)))

(declare-fun c!156602 () Bool)

(assert (=> d!285189 (= c!156602 (isEmpty!6177 s!10566))))

(assert (=> d!285189 (validRegex!1136 lt!346703)))

(assert (=> d!285189 (= (matchR!1205 lt!346703 s!10566) lt!346746)))

(declare-fun b!961432 () Bool)

(declare-fun res!436966 () Bool)

(declare-fun e!620965 () Bool)

(assert (=> b!961432 (=> (not res!436966) (not e!620965))))

(declare-fun call!60609 () Bool)

(assert (=> b!961432 (= res!436966 (not call!60609))))

(declare-fun b!961433 () Bool)

(declare-fun e!620964 () Bool)

(declare-fun e!620969 () Bool)

(assert (=> b!961433 (= e!620964 e!620969)))

(declare-fun res!436965 () Bool)

(assert (=> b!961433 (=> res!436965 e!620969)))

(assert (=> b!961433 (= res!436965 call!60609)))

(declare-fun b!961434 () Bool)

(declare-fun res!436967 () Bool)

(declare-fun e!620967 () Bool)

(assert (=> b!961434 (=> res!436967 e!620967)))

(assert (=> b!961434 (= res!436967 e!620965)))

(declare-fun res!436962 () Bool)

(assert (=> b!961434 (=> (not res!436962) (not e!620965))))

(assert (=> b!961434 (= res!436962 lt!346746)))

(declare-fun b!961435 () Bool)

(assert (=> b!961435 (= e!620970 (matchR!1205 (derivativeStep!611 lt!346703 (head!1764 s!10566)) (tail!1326 s!10566)))))

(declare-fun b!961436 () Bool)

(assert (=> b!961436 (= e!620969 (not (= (head!1764 s!10566) (c!156512 lt!346703))))))

(declare-fun b!961437 () Bool)

(assert (=> b!961437 (= e!620968 (= lt!346746 call!60609))))

(declare-fun b!961438 () Bool)

(declare-fun e!620966 () Bool)

(assert (=> b!961438 (= e!620968 e!620966)))

(declare-fun c!156603 () Bool)

(assert (=> b!961438 (= c!156603 ((_ is EmptyLang!2667) lt!346703))))

(declare-fun b!961439 () Bool)

(declare-fun res!436960 () Bool)

(assert (=> b!961439 (=> res!436960 e!620969)))

(assert (=> b!961439 (= res!436960 (not (isEmpty!6177 (tail!1326 s!10566))))))

(declare-fun b!961440 () Bool)

(assert (=> b!961440 (= e!620967 e!620964)))

(declare-fun res!436964 () Bool)

(assert (=> b!961440 (=> (not res!436964) (not e!620964))))

(assert (=> b!961440 (= res!436964 (not lt!346746))))

(declare-fun b!961441 () Bool)

(assert (=> b!961441 (= e!620970 (nullable!803 lt!346703))))

(declare-fun b!961442 () Bool)

(assert (=> b!961442 (= e!620966 (not lt!346746))))

(declare-fun b!961443 () Bool)

(assert (=> b!961443 (= e!620965 (= (head!1764 s!10566) (c!156512 lt!346703)))))

(declare-fun b!961444 () Bool)

(declare-fun res!436963 () Bool)

(assert (=> b!961444 (=> (not res!436963) (not e!620965))))

(assert (=> b!961444 (= res!436963 (isEmpty!6177 (tail!1326 s!10566)))))

(declare-fun bm!60604 () Bool)

(assert (=> bm!60604 (= call!60609 (isEmpty!6177 s!10566))))

(declare-fun b!961445 () Bool)

(declare-fun res!436961 () Bool)

(assert (=> b!961445 (=> res!436961 e!620967)))

(assert (=> b!961445 (= res!436961 (not ((_ is ElementMatch!2667) lt!346703)))))

(assert (=> b!961445 (= e!620966 e!620967)))

(assert (= (and d!285189 c!156602) b!961441))

(assert (= (and d!285189 (not c!156602)) b!961435))

(assert (= (and d!285189 c!156604) b!961437))

(assert (= (and d!285189 (not c!156604)) b!961438))

(assert (= (and b!961438 c!156603) b!961442))

(assert (= (and b!961438 (not c!156603)) b!961445))

(assert (= (and b!961445 (not res!436961)) b!961434))

(assert (= (and b!961434 res!436962) b!961432))

(assert (= (and b!961432 res!436966) b!961444))

(assert (= (and b!961444 res!436963) b!961443))

(assert (= (and b!961434 (not res!436967)) b!961440))

(assert (= (and b!961440 res!436964) b!961433))

(assert (= (and b!961433 (not res!436965)) b!961439))

(assert (= (and b!961439 (not res!436960)) b!961436))

(assert (= (or b!961437 b!961432 b!961433) bm!60604))

(assert (=> b!961444 m!1169327))

(assert (=> b!961444 m!1169327))

(assert (=> b!961444 m!1169331))

(assert (=> b!961443 m!1169337))

(assert (=> d!285189 m!1169161))

(declare-fun m!1169357 () Bool)

(assert (=> d!285189 m!1169357))

(assert (=> b!961439 m!1169327))

(assert (=> b!961439 m!1169327))

(assert (=> b!961439 m!1169331))

(assert (=> b!961435 m!1169337))

(assert (=> b!961435 m!1169337))

(declare-fun m!1169359 () Bool)

(assert (=> b!961435 m!1169359))

(assert (=> b!961435 m!1169327))

(assert (=> b!961435 m!1169359))

(assert (=> b!961435 m!1169327))

(declare-fun m!1169361 () Bool)

(assert (=> b!961435 m!1169361))

(assert (=> bm!60604 m!1169161))

(assert (=> b!961436 m!1169337))

(declare-fun m!1169363 () Bool)

(assert (=> b!961441 m!1169363))

(assert (=> b!961049 d!285189))

(declare-fun b!961468 () Bool)

(declare-fun c!156615 () Bool)

(assert (=> b!961468 (= c!156615 ((_ is Concat!4500) (regTwo!5846 r!15766)))))

(declare-fun e!620988 () Regex!2667)

(declare-fun e!620987 () Regex!2667)

(assert (=> b!961468 (= e!620988 e!620987)))

(declare-fun b!961469 () Bool)

(declare-fun e!620985 () Regex!2667)

(assert (=> b!961469 (= e!620985 e!620988)))

(declare-fun c!156616 () Bool)

(assert (=> b!961469 (= c!156616 (and ((_ is Concat!4500) (regTwo!5846 r!15766)) ((_ is EmptyExpr!2667) (regTwo!5846 (regTwo!5846 r!15766)))))))

(declare-fun b!961470 () Bool)

(declare-fun e!620983 () Regex!2667)

(declare-fun call!60623 () Regex!2667)

(declare-fun call!60621 () Regex!2667)

(assert (=> b!961470 (= e!620983 (Union!2667 call!60623 call!60621))))

(declare-fun b!961471 () Bool)

(declare-fun c!156618 () Bool)

(assert (=> b!961471 (= c!156618 ((_ is Star!2667) (regTwo!5846 r!15766)))))

(declare-fun e!620986 () Regex!2667)

(assert (=> b!961471 (= e!620983 e!620986)))

(declare-fun b!961472 () Bool)

(declare-fun call!60622 () Regex!2667)

(assert (=> b!961472 (= e!620985 call!60622)))

(declare-fun b!961473 () Bool)

(assert (=> b!961473 (= e!620986 (regTwo!5846 r!15766))))

(declare-fun bm!60615 () Bool)

(declare-fun c!156619 () Bool)

(declare-fun c!156617 () Bool)

(assert (=> bm!60615 (= call!60622 (removeUselessConcat!314 (ite c!156619 (regTwo!5846 (regTwo!5846 r!15766)) (ite c!156616 (regOne!5846 (regTwo!5846 r!15766)) (ite c!156615 (regTwo!5846 (regTwo!5846 r!15766)) (ite c!156617 (regTwo!5847 (regTwo!5846 r!15766)) (reg!2996 (regTwo!5846 r!15766))))))))))

(declare-fun b!961474 () Bool)

(assert (=> b!961474 (= e!620987 e!620983)))

(assert (=> b!961474 (= c!156617 ((_ is Union!2667) (regTwo!5846 r!15766)))))

(declare-fun bm!60616 () Bool)

(assert (=> bm!60616 (= call!60623 (removeUselessConcat!314 (ite c!156615 (regOne!5846 (regTwo!5846 r!15766)) (regOne!5847 (regTwo!5846 r!15766)))))))

(declare-fun b!961475 () Bool)

(declare-fun e!620984 () Bool)

(declare-fun lt!346749 () Regex!2667)

(assert (=> b!961475 (= e!620984 (= (nullable!803 lt!346749) (nullable!803 (regTwo!5846 r!15766))))))

(declare-fun bm!60618 () Bool)

(declare-fun call!60624 () Regex!2667)

(assert (=> bm!60618 (= call!60624 call!60622)))

(declare-fun b!961476 () Bool)

(assert (=> b!961476 (= e!620986 (Star!2667 call!60621))))

(declare-fun b!961477 () Bool)

(assert (=> b!961477 (= e!620988 call!60624)))

(declare-fun b!961478 () Bool)

(declare-fun call!60620 () Regex!2667)

(assert (=> b!961478 (= e!620987 (Concat!4500 call!60623 call!60620))))

(declare-fun bm!60619 () Bool)

(assert (=> bm!60619 (= call!60621 call!60620)))

(declare-fun d!285191 () Bool)

(assert (=> d!285191 e!620984))

(declare-fun res!436970 () Bool)

(assert (=> d!285191 (=> (not res!436970) (not e!620984))))

(assert (=> d!285191 (= res!436970 (validRegex!1136 lt!346749))))

(assert (=> d!285191 (= lt!346749 e!620985)))

(assert (=> d!285191 (= c!156619 (and ((_ is Concat!4500) (regTwo!5846 r!15766)) ((_ is EmptyExpr!2667) (regOne!5846 (regTwo!5846 r!15766)))))))

(assert (=> d!285191 (validRegex!1136 (regTwo!5846 r!15766))))

(assert (=> d!285191 (= (removeUselessConcat!314 (regTwo!5846 r!15766)) lt!346749)))

(declare-fun bm!60617 () Bool)

(assert (=> bm!60617 (= call!60620 call!60624)))

(assert (= (and d!285191 c!156619) b!961472))

(assert (= (and d!285191 (not c!156619)) b!961469))

(assert (= (and b!961469 c!156616) b!961477))

(assert (= (and b!961469 (not c!156616)) b!961468))

(assert (= (and b!961468 c!156615) b!961478))

(assert (= (and b!961468 (not c!156615)) b!961474))

(assert (= (and b!961474 c!156617) b!961470))

(assert (= (and b!961474 (not c!156617)) b!961471))

(assert (= (and b!961471 c!156618) b!961476))

(assert (= (and b!961471 (not c!156618)) b!961473))

(assert (= (or b!961470 b!961476) bm!60619))

(assert (= (or b!961478 bm!60619) bm!60617))

(assert (= (or b!961478 b!961470) bm!60616))

(assert (= (or b!961477 bm!60617) bm!60618))

(assert (= (or b!961472 bm!60618) bm!60615))

(assert (= (and d!285191 res!436970) b!961475))

(declare-fun m!1169365 () Bool)

(assert (=> bm!60615 m!1169365))

(declare-fun m!1169367 () Bool)

(assert (=> bm!60616 m!1169367))

(declare-fun m!1169369 () Bool)

(assert (=> b!961475 m!1169369))

(declare-fun m!1169371 () Bool)

(assert (=> b!961475 m!1169371))

(declare-fun m!1169373 () Bool)

(assert (=> d!285191 m!1169373))

(declare-fun m!1169375 () Bool)

(assert (=> d!285191 m!1169375))

(assert (=> b!961049 d!285191))

(declare-fun b!961479 () Bool)

(declare-fun c!156620 () Bool)

(assert (=> b!961479 (= c!156620 ((_ is Concat!4500) (regOne!5846 r!15766)))))

(declare-fun e!620994 () Regex!2667)

(declare-fun e!620993 () Regex!2667)

(assert (=> b!961479 (= e!620994 e!620993)))

(declare-fun b!961480 () Bool)

(declare-fun e!620991 () Regex!2667)

(assert (=> b!961480 (= e!620991 e!620994)))

(declare-fun c!156621 () Bool)

(assert (=> b!961480 (= c!156621 (and ((_ is Concat!4500) (regOne!5846 r!15766)) ((_ is EmptyExpr!2667) (regTwo!5846 (regOne!5846 r!15766)))))))

(declare-fun b!961481 () Bool)

(declare-fun e!620989 () Regex!2667)

(declare-fun call!60628 () Regex!2667)

(declare-fun call!60626 () Regex!2667)

(assert (=> b!961481 (= e!620989 (Union!2667 call!60628 call!60626))))

(declare-fun b!961482 () Bool)

(declare-fun c!156623 () Bool)

(assert (=> b!961482 (= c!156623 ((_ is Star!2667) (regOne!5846 r!15766)))))

(declare-fun e!620992 () Regex!2667)

(assert (=> b!961482 (= e!620989 e!620992)))

(declare-fun b!961483 () Bool)

(declare-fun call!60627 () Regex!2667)

(assert (=> b!961483 (= e!620991 call!60627)))

(declare-fun b!961484 () Bool)

(assert (=> b!961484 (= e!620992 (regOne!5846 r!15766))))

(declare-fun c!156624 () Bool)

(declare-fun c!156622 () Bool)

(declare-fun bm!60620 () Bool)

(assert (=> bm!60620 (= call!60627 (removeUselessConcat!314 (ite c!156624 (regTwo!5846 (regOne!5846 r!15766)) (ite c!156621 (regOne!5846 (regOne!5846 r!15766)) (ite c!156620 (regTwo!5846 (regOne!5846 r!15766)) (ite c!156622 (regTwo!5847 (regOne!5846 r!15766)) (reg!2996 (regOne!5846 r!15766))))))))))

(declare-fun b!961485 () Bool)

(assert (=> b!961485 (= e!620993 e!620989)))

(assert (=> b!961485 (= c!156622 ((_ is Union!2667) (regOne!5846 r!15766)))))

(declare-fun bm!60621 () Bool)

(assert (=> bm!60621 (= call!60628 (removeUselessConcat!314 (ite c!156620 (regOne!5846 (regOne!5846 r!15766)) (regOne!5847 (regOne!5846 r!15766)))))))

(declare-fun b!961486 () Bool)

(declare-fun e!620990 () Bool)

(declare-fun lt!346750 () Regex!2667)

(assert (=> b!961486 (= e!620990 (= (nullable!803 lt!346750) (nullable!803 (regOne!5846 r!15766))))))

(declare-fun bm!60623 () Bool)

(declare-fun call!60629 () Regex!2667)

(assert (=> bm!60623 (= call!60629 call!60627)))

(declare-fun b!961487 () Bool)

(assert (=> b!961487 (= e!620992 (Star!2667 call!60626))))

(declare-fun b!961488 () Bool)

(assert (=> b!961488 (= e!620994 call!60629)))

(declare-fun b!961489 () Bool)

(declare-fun call!60625 () Regex!2667)

(assert (=> b!961489 (= e!620993 (Concat!4500 call!60628 call!60625))))

(declare-fun bm!60624 () Bool)

(assert (=> bm!60624 (= call!60626 call!60625)))

(declare-fun d!285193 () Bool)

(assert (=> d!285193 e!620990))

(declare-fun res!436971 () Bool)

(assert (=> d!285193 (=> (not res!436971) (not e!620990))))

(assert (=> d!285193 (= res!436971 (validRegex!1136 lt!346750))))

(assert (=> d!285193 (= lt!346750 e!620991)))

(assert (=> d!285193 (= c!156624 (and ((_ is Concat!4500) (regOne!5846 r!15766)) ((_ is EmptyExpr!2667) (regOne!5846 (regOne!5846 r!15766)))))))

(assert (=> d!285193 (validRegex!1136 (regOne!5846 r!15766))))

(assert (=> d!285193 (= (removeUselessConcat!314 (regOne!5846 r!15766)) lt!346750)))

(declare-fun bm!60622 () Bool)

(assert (=> bm!60622 (= call!60625 call!60629)))

(assert (= (and d!285193 c!156624) b!961483))

(assert (= (and d!285193 (not c!156624)) b!961480))

(assert (= (and b!961480 c!156621) b!961488))

(assert (= (and b!961480 (not c!156621)) b!961479))

(assert (= (and b!961479 c!156620) b!961489))

(assert (= (and b!961479 (not c!156620)) b!961485))

(assert (= (and b!961485 c!156622) b!961481))

(assert (= (and b!961485 (not c!156622)) b!961482))

(assert (= (and b!961482 c!156623) b!961487))

(assert (= (and b!961482 (not c!156623)) b!961484))

(assert (= (or b!961481 b!961487) bm!60624))

(assert (= (or b!961489 bm!60624) bm!60622))

(assert (= (or b!961489 b!961481) bm!60621))

(assert (= (or b!961488 bm!60622) bm!60623))

(assert (= (or b!961483 bm!60623) bm!60620))

(assert (= (and d!285193 res!436971) b!961486))

(declare-fun m!1169377 () Bool)

(assert (=> bm!60620 m!1169377))

(declare-fun m!1169379 () Bool)

(assert (=> bm!60621 m!1169379))

(declare-fun m!1169381 () Bool)

(assert (=> b!961486 m!1169381))

(declare-fun m!1169383 () Bool)

(assert (=> b!961486 m!1169383))

(declare-fun m!1169385 () Bool)

(assert (=> d!285193 m!1169385))

(declare-fun m!1169387 () Bool)

(assert (=> d!285193 m!1169387))

(assert (=> b!961049 d!285193))

(declare-fun d!285195 () Bool)

(declare-fun choose!6052 (Int) Bool)

(assert (=> d!285195 (= (Exists!414 lambda!33491) (choose!6052 lambda!33491))))

(declare-fun bs!240864 () Bool)

(assert (= bs!240864 d!285195))

(declare-fun m!1169389 () Bool)

(assert (=> bs!240864 m!1169389))

(assert (=> b!961044 d!285195))

(declare-fun d!285197 () Bool)

(assert (=> d!285197 (= (isEmpty!6177 s!10566) ((_ is Nil!9881) s!10566))))

(assert (=> b!961044 d!285197))

(declare-fun d!285199 () Bool)

(declare-fun isEmpty!6179 (Option!2252) Bool)

(assert (=> d!285199 (= (isDefined!1894 (findConcatSeparation!358 (regOne!5846 r!15766) (regTwo!5846 r!15766) Nil!9881 s!10566 s!10566)) (not (isEmpty!6179 (findConcatSeparation!358 (regOne!5846 r!15766) (regTwo!5846 r!15766) Nil!9881 s!10566 s!10566))))))

(declare-fun bs!240865 () Bool)

(assert (= bs!240865 d!285199))

(assert (=> bs!240865 m!1169157))

(declare-fun m!1169391 () Bool)

(assert (=> bs!240865 m!1169391))

(assert (=> b!961044 d!285199))

(declare-fun bs!240866 () Bool)

(declare-fun d!285201 () Bool)

(assert (= bs!240866 (and d!285201 b!961051)))

(declare-fun lambda!33523 () Int)

(assert (=> bs!240866 (= (and (= (regOne!5846 r!15766) lt!346701) (= (regTwo!5846 r!15766) lt!346704)) (= lambda!33523 lambda!33493))))

(declare-fun bs!240867 () Bool)

(assert (= bs!240867 (and d!285201 b!961183)))

(assert (=> bs!240867 (not (= lambda!33523 lambda!33517))))

(assert (=> bs!240866 (not (= lambda!33523 lambda!33494))))

(declare-fun bs!240868 () Bool)

(assert (= bs!240868 (and d!285201 b!961185)))

(assert (=> bs!240868 (not (= lambda!33523 lambda!33516))))

(declare-fun bs!240869 () Bool)

(assert (= bs!240869 (and d!285201 b!961044)))

(assert (=> bs!240869 (= lambda!33523 lambda!33491)))

(assert (=> bs!240869 (not (= lambda!33523 lambda!33492))))

(assert (=> d!285201 true))

(assert (=> d!285201 true))

(assert (=> d!285201 true))

(assert (=> d!285201 (= (isDefined!1894 (findConcatSeparation!358 (regOne!5846 r!15766) (regTwo!5846 r!15766) Nil!9881 s!10566 s!10566)) (Exists!414 lambda!33523))))

(declare-fun lt!346753 () Unit!14989)

(declare-fun choose!6053 (Regex!2667 Regex!2667 List!9897) Unit!14989)

(assert (=> d!285201 (= lt!346753 (choose!6053 (regOne!5846 r!15766) (regTwo!5846 r!15766) s!10566))))

(assert (=> d!285201 (validRegex!1136 (regOne!5846 r!15766))))

(assert (=> d!285201 (= (lemmaFindConcatSeparationEquivalentToExists!358 (regOne!5846 r!15766) (regTwo!5846 r!15766) s!10566) lt!346753)))

(declare-fun bs!240870 () Bool)

(assert (= bs!240870 d!285201))

(declare-fun m!1169393 () Bool)

(assert (=> bs!240870 m!1169393))

(assert (=> bs!240870 m!1169157))

(assert (=> bs!240870 m!1169157))

(assert (=> bs!240870 m!1169159))

(declare-fun m!1169395 () Bool)

(assert (=> bs!240870 m!1169395))

(assert (=> bs!240870 m!1169387))

(assert (=> b!961044 d!285201))

(declare-fun d!285203 () Bool)

(assert (=> d!285203 (= (Exists!414 lambda!33492) (choose!6052 lambda!33492))))

(declare-fun bs!240871 () Bool)

(assert (= bs!240871 d!285203))

(declare-fun m!1169397 () Bool)

(assert (=> bs!240871 m!1169397))

(assert (=> b!961044 d!285203))

(declare-fun b!961512 () Bool)

(declare-fun e!621009 () Bool)

(declare-fun lt!346762 () Option!2252)

(declare-fun ++!2661 (List!9897 List!9897) List!9897)

(declare-fun get!3369 (Option!2252) tuple2!11220)

(assert (=> b!961512 (= e!621009 (= (++!2661 (_1!6436 (get!3369 lt!346762)) (_2!6436 (get!3369 lt!346762))) s!10566))))

(declare-fun b!961513 () Bool)

(declare-fun e!621008 () Option!2252)

(assert (=> b!961513 (= e!621008 (Some!2251 (tuple2!11221 Nil!9881 s!10566)))))

(declare-fun b!961514 () Bool)

(declare-fun e!621011 () Bool)

(assert (=> b!961514 (= e!621011 (matchR!1205 (regTwo!5846 r!15766) s!10566))))

(declare-fun b!961515 () Bool)

(declare-fun res!436986 () Bool)

(assert (=> b!961515 (=> (not res!436986) (not e!621009))))

(assert (=> b!961515 (= res!436986 (matchR!1205 (regTwo!5846 r!15766) (_2!6436 (get!3369 lt!346762))))))

(declare-fun b!961516 () Bool)

(declare-fun e!621010 () Bool)

(assert (=> b!961516 (= e!621010 (not (isDefined!1894 lt!346762)))))

(declare-fun d!285205 () Bool)

(assert (=> d!285205 e!621010))

(declare-fun res!436989 () Bool)

(assert (=> d!285205 (=> res!436989 e!621010)))

(assert (=> d!285205 (= res!436989 e!621009)))

(declare-fun res!436990 () Bool)

(assert (=> d!285205 (=> (not res!436990) (not e!621009))))

(assert (=> d!285205 (= res!436990 (isDefined!1894 lt!346762))))

(assert (=> d!285205 (= lt!346762 e!621008)))

(declare-fun c!156629 () Bool)

(assert (=> d!285205 (= c!156629 e!621011)))

(declare-fun res!436988 () Bool)

(assert (=> d!285205 (=> (not res!436988) (not e!621011))))

(assert (=> d!285205 (= res!436988 (matchR!1205 (regOne!5846 r!15766) Nil!9881))))

(assert (=> d!285205 (validRegex!1136 (regOne!5846 r!15766))))

(assert (=> d!285205 (= (findConcatSeparation!358 (regOne!5846 r!15766) (regTwo!5846 r!15766) Nil!9881 s!10566 s!10566) lt!346762)))

(declare-fun b!961517 () Bool)

(declare-fun e!621007 () Option!2252)

(assert (=> b!961517 (= e!621007 None!2251)))

(declare-fun b!961518 () Bool)

(assert (=> b!961518 (= e!621008 e!621007)))

(declare-fun c!156630 () Bool)

(assert (=> b!961518 (= c!156630 ((_ is Nil!9881) s!10566))))

(declare-fun b!961519 () Bool)

(declare-fun res!436987 () Bool)

(assert (=> b!961519 (=> (not res!436987) (not e!621009))))

(assert (=> b!961519 (= res!436987 (matchR!1205 (regOne!5846 r!15766) (_1!6436 (get!3369 lt!346762))))))

(declare-fun b!961520 () Bool)

(declare-fun lt!346761 () Unit!14989)

(declare-fun lt!346760 () Unit!14989)

(assert (=> b!961520 (= lt!346761 lt!346760)))

(assert (=> b!961520 (= (++!2661 (++!2661 Nil!9881 (Cons!9881 (h!15282 s!10566) Nil!9881)) (t!100943 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!266 (List!9897 C!5904 List!9897 List!9897) Unit!14989)

(assert (=> b!961520 (= lt!346760 (lemmaMoveElementToOtherListKeepsConcatEq!266 Nil!9881 (h!15282 s!10566) (t!100943 s!10566) s!10566))))

(assert (=> b!961520 (= e!621007 (findConcatSeparation!358 (regOne!5846 r!15766) (regTwo!5846 r!15766) (++!2661 Nil!9881 (Cons!9881 (h!15282 s!10566) Nil!9881)) (t!100943 s!10566) s!10566))))

(assert (= (and d!285205 res!436988) b!961514))

(assert (= (and d!285205 c!156629) b!961513))

(assert (= (and d!285205 (not c!156629)) b!961518))

(assert (= (and b!961518 c!156630) b!961517))

(assert (= (and b!961518 (not c!156630)) b!961520))

(assert (= (and d!285205 res!436990) b!961519))

(assert (= (and b!961519 res!436987) b!961515))

(assert (= (and b!961515 res!436986) b!961512))

(assert (= (and d!285205 (not res!436989)) b!961516))

(declare-fun m!1169399 () Bool)

(assert (=> b!961516 m!1169399))

(declare-fun m!1169401 () Bool)

(assert (=> b!961515 m!1169401))

(declare-fun m!1169403 () Bool)

(assert (=> b!961515 m!1169403))

(declare-fun m!1169405 () Bool)

(assert (=> b!961514 m!1169405))

(assert (=> d!285205 m!1169399))

(declare-fun m!1169407 () Bool)

(assert (=> d!285205 m!1169407))

(assert (=> d!285205 m!1169387))

(assert (=> b!961512 m!1169401))

(declare-fun m!1169409 () Bool)

(assert (=> b!961512 m!1169409))

(assert (=> b!961519 m!1169401))

(declare-fun m!1169411 () Bool)

(assert (=> b!961519 m!1169411))

(declare-fun m!1169413 () Bool)

(assert (=> b!961520 m!1169413))

(assert (=> b!961520 m!1169413))

(declare-fun m!1169415 () Bool)

(assert (=> b!961520 m!1169415))

(declare-fun m!1169417 () Bool)

(assert (=> b!961520 m!1169417))

(assert (=> b!961520 m!1169413))

(declare-fun m!1169419 () Bool)

(assert (=> b!961520 m!1169419))

(assert (=> b!961044 d!285205))

(declare-fun bs!240872 () Bool)

(declare-fun d!285207 () Bool)

(assert (= bs!240872 (and d!285207 b!961051)))

(declare-fun lambda!33528 () Int)

(assert (=> bs!240872 (= (and (= (regOne!5846 r!15766) lt!346701) (= (regTwo!5846 r!15766) lt!346704)) (= lambda!33528 lambda!33493))))

(declare-fun bs!240873 () Bool)

(assert (= bs!240873 (and d!285207 d!285201)))

(assert (=> bs!240873 (= lambda!33528 lambda!33523)))

(declare-fun bs!240874 () Bool)

(assert (= bs!240874 (and d!285207 b!961183)))

(assert (=> bs!240874 (not (= lambda!33528 lambda!33517))))

(assert (=> bs!240872 (not (= lambda!33528 lambda!33494))))

(declare-fun bs!240875 () Bool)

(assert (= bs!240875 (and d!285207 b!961185)))

(assert (=> bs!240875 (not (= lambda!33528 lambda!33516))))

(declare-fun bs!240876 () Bool)

(assert (= bs!240876 (and d!285207 b!961044)))

(assert (=> bs!240876 (= lambda!33528 lambda!33491)))

(assert (=> bs!240876 (not (= lambda!33528 lambda!33492))))

(assert (=> d!285207 true))

(assert (=> d!285207 true))

(assert (=> d!285207 true))

(declare-fun lambda!33529 () Int)

(assert (=> bs!240872 (not (= lambda!33529 lambda!33493))))

(assert (=> bs!240873 (not (= lambda!33529 lambda!33523))))

(assert (=> bs!240874 (= lambda!33529 lambda!33517)))

(assert (=> bs!240872 (= (and (= (regOne!5846 r!15766) lt!346701) (= (regTwo!5846 r!15766) lt!346704)) (= lambda!33529 lambda!33494))))

(assert (=> bs!240875 (not (= lambda!33529 lambda!33516))))

(declare-fun bs!240877 () Bool)

(assert (= bs!240877 d!285207))

(assert (=> bs!240877 (not (= lambda!33529 lambda!33528))))

(assert (=> bs!240876 (not (= lambda!33529 lambda!33491))))

(assert (=> bs!240876 (= lambda!33529 lambda!33492)))

(assert (=> d!285207 true))

(assert (=> d!285207 true))

(assert (=> d!285207 true))

(assert (=> d!285207 (= (Exists!414 lambda!33528) (Exists!414 lambda!33529))))

(declare-fun lt!346765 () Unit!14989)

(declare-fun choose!6054 (Regex!2667 Regex!2667 List!9897) Unit!14989)

(assert (=> d!285207 (= lt!346765 (choose!6054 (regOne!5846 r!15766) (regTwo!5846 r!15766) s!10566))))

(assert (=> d!285207 (validRegex!1136 (regOne!5846 r!15766))))

(assert (=> d!285207 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!210 (regOne!5846 r!15766) (regTwo!5846 r!15766) s!10566) lt!346765)))

(declare-fun m!1169421 () Bool)

(assert (=> bs!240877 m!1169421))

(declare-fun m!1169423 () Bool)

(assert (=> bs!240877 m!1169423))

(declare-fun m!1169425 () Bool)

(assert (=> bs!240877 m!1169425))

(assert (=> bs!240877 m!1169387))

(assert (=> b!961044 d!285207))

(declare-fun d!285209 () Bool)

(assert (=> d!285209 (= (isDefined!1894 (findConcatSeparation!358 lt!346701 lt!346704 Nil!9881 s!10566 s!10566)) (not (isEmpty!6179 (findConcatSeparation!358 lt!346701 lt!346704 Nil!9881 s!10566 s!10566))))))

(declare-fun bs!240878 () Bool)

(assert (= bs!240878 d!285209))

(assert (=> bs!240878 m!1169171))

(declare-fun m!1169427 () Bool)

(assert (=> bs!240878 m!1169427))

(assert (=> b!961051 d!285209))

(declare-fun d!285211 () Bool)

(assert (=> d!285211 (= (matchR!1205 lt!346703 s!10566) (matchRSpec!468 lt!346703 s!10566))))

(declare-fun lt!346766 () Unit!14989)

(assert (=> d!285211 (= lt!346766 (choose!6051 lt!346703 s!10566))))

(assert (=> d!285211 (validRegex!1136 lt!346703)))

(assert (=> d!285211 (= (mainMatchTheorem!468 lt!346703 s!10566) lt!346766)))

(declare-fun bs!240879 () Bool)

(assert (= bs!240879 d!285211))

(assert (=> bs!240879 m!1169187))

(assert (=> bs!240879 m!1169179))

(declare-fun m!1169429 () Bool)

(assert (=> bs!240879 m!1169429))

(assert (=> bs!240879 m!1169357))

(assert (=> b!961051 d!285211))

(declare-fun b!961529 () Bool)

(declare-fun e!621018 () Bool)

(declare-fun lt!346769 () Option!2252)

(assert (=> b!961529 (= e!621018 (= (++!2661 (_1!6436 (get!3369 lt!346769)) (_2!6436 (get!3369 lt!346769))) s!10566))))

(declare-fun b!961530 () Bool)

(declare-fun e!621017 () Option!2252)

(assert (=> b!961530 (= e!621017 (Some!2251 (tuple2!11221 Nil!9881 s!10566)))))

(declare-fun b!961531 () Bool)

(declare-fun e!621020 () Bool)

(assert (=> b!961531 (= e!621020 (matchR!1205 lt!346704 s!10566))))

(declare-fun b!961532 () Bool)

(declare-fun res!436999 () Bool)

(assert (=> b!961532 (=> (not res!436999) (not e!621018))))

(assert (=> b!961532 (= res!436999 (matchR!1205 lt!346704 (_2!6436 (get!3369 lt!346769))))))

(declare-fun b!961533 () Bool)

(declare-fun e!621019 () Bool)

(assert (=> b!961533 (= e!621019 (not (isDefined!1894 lt!346769)))))

(declare-fun d!285213 () Bool)

(assert (=> d!285213 e!621019))

(declare-fun res!437002 () Bool)

(assert (=> d!285213 (=> res!437002 e!621019)))

(assert (=> d!285213 (= res!437002 e!621018)))

(declare-fun res!437003 () Bool)

(assert (=> d!285213 (=> (not res!437003) (not e!621018))))

(assert (=> d!285213 (= res!437003 (isDefined!1894 lt!346769))))

(assert (=> d!285213 (= lt!346769 e!621017)))

(declare-fun c!156631 () Bool)

(assert (=> d!285213 (= c!156631 e!621020)))

(declare-fun res!437001 () Bool)

(assert (=> d!285213 (=> (not res!437001) (not e!621020))))

(assert (=> d!285213 (= res!437001 (matchR!1205 lt!346701 Nil!9881))))

(assert (=> d!285213 (validRegex!1136 lt!346701)))

(assert (=> d!285213 (= (findConcatSeparation!358 lt!346701 lt!346704 Nil!9881 s!10566 s!10566) lt!346769)))

(declare-fun b!961534 () Bool)

(declare-fun e!621016 () Option!2252)

(assert (=> b!961534 (= e!621016 None!2251)))

(declare-fun b!961535 () Bool)

(assert (=> b!961535 (= e!621017 e!621016)))

(declare-fun c!156632 () Bool)

(assert (=> b!961535 (= c!156632 ((_ is Nil!9881) s!10566))))

(declare-fun b!961536 () Bool)

(declare-fun res!437000 () Bool)

(assert (=> b!961536 (=> (not res!437000) (not e!621018))))

(assert (=> b!961536 (= res!437000 (matchR!1205 lt!346701 (_1!6436 (get!3369 lt!346769))))))

(declare-fun b!961537 () Bool)

(declare-fun lt!346768 () Unit!14989)

(declare-fun lt!346767 () Unit!14989)

(assert (=> b!961537 (= lt!346768 lt!346767)))

(assert (=> b!961537 (= (++!2661 (++!2661 Nil!9881 (Cons!9881 (h!15282 s!10566) Nil!9881)) (t!100943 s!10566)) s!10566)))

(assert (=> b!961537 (= lt!346767 (lemmaMoveElementToOtherListKeepsConcatEq!266 Nil!9881 (h!15282 s!10566) (t!100943 s!10566) s!10566))))

(assert (=> b!961537 (= e!621016 (findConcatSeparation!358 lt!346701 lt!346704 (++!2661 Nil!9881 (Cons!9881 (h!15282 s!10566) Nil!9881)) (t!100943 s!10566) s!10566))))

(assert (= (and d!285213 res!437001) b!961531))

(assert (= (and d!285213 c!156631) b!961530))

(assert (= (and d!285213 (not c!156631)) b!961535))

(assert (= (and b!961535 c!156632) b!961534))

(assert (= (and b!961535 (not c!156632)) b!961537))

(assert (= (and d!285213 res!437003) b!961536))

(assert (= (and b!961536 res!437000) b!961532))

(assert (= (and b!961532 res!436999) b!961529))

(assert (= (and d!285213 (not res!437002)) b!961533))

(declare-fun m!1169431 () Bool)

(assert (=> b!961533 m!1169431))

(declare-fun m!1169433 () Bool)

(assert (=> b!961532 m!1169433))

(declare-fun m!1169435 () Bool)

(assert (=> b!961532 m!1169435))

(declare-fun m!1169437 () Bool)

(assert (=> b!961531 m!1169437))

(assert (=> d!285213 m!1169431))

(declare-fun m!1169439 () Bool)

(assert (=> d!285213 m!1169439))

(declare-fun m!1169441 () Bool)

(assert (=> d!285213 m!1169441))

(assert (=> b!961529 m!1169433))

(declare-fun m!1169443 () Bool)

(assert (=> b!961529 m!1169443))

(assert (=> b!961536 m!1169433))

(declare-fun m!1169445 () Bool)

(assert (=> b!961536 m!1169445))

(assert (=> b!961537 m!1169413))

(assert (=> b!961537 m!1169413))

(assert (=> b!961537 m!1169415))

(assert (=> b!961537 m!1169417))

(assert (=> b!961537 m!1169413))

(declare-fun m!1169447 () Bool)

(assert (=> b!961537 m!1169447))

(assert (=> b!961051 d!285213))

(declare-fun bs!240880 () Bool)

(declare-fun d!285215 () Bool)

(assert (= bs!240880 (and d!285215 b!961051)))

(declare-fun lambda!33530 () Int)

(assert (=> bs!240880 (= lambda!33530 lambda!33493)))

(declare-fun bs!240881 () Bool)

(assert (= bs!240881 (and d!285215 d!285201)))

(assert (=> bs!240881 (= (and (= lt!346701 (regOne!5846 r!15766)) (= lt!346704 (regTwo!5846 r!15766))) (= lambda!33530 lambda!33523))))

(declare-fun bs!240882 () Bool)

(assert (= bs!240882 (and d!285215 d!285207)))

(assert (=> bs!240882 (not (= lambda!33530 lambda!33529))))

(declare-fun bs!240883 () Bool)

(assert (= bs!240883 (and d!285215 b!961183)))

(assert (=> bs!240883 (not (= lambda!33530 lambda!33517))))

(assert (=> bs!240880 (not (= lambda!33530 lambda!33494))))

(declare-fun bs!240884 () Bool)

(assert (= bs!240884 (and d!285215 b!961185)))

(assert (=> bs!240884 (not (= lambda!33530 lambda!33516))))

(assert (=> bs!240882 (= (and (= lt!346701 (regOne!5846 r!15766)) (= lt!346704 (regTwo!5846 r!15766))) (= lambda!33530 lambda!33528))))

(declare-fun bs!240885 () Bool)

(assert (= bs!240885 (and d!285215 b!961044)))

(assert (=> bs!240885 (= (and (= lt!346701 (regOne!5846 r!15766)) (= lt!346704 (regTwo!5846 r!15766))) (= lambda!33530 lambda!33491))))

(assert (=> bs!240885 (not (= lambda!33530 lambda!33492))))

(assert (=> d!285215 true))

(assert (=> d!285215 true))

(assert (=> d!285215 true))

(assert (=> d!285215 (= (isDefined!1894 (findConcatSeparation!358 lt!346701 lt!346704 Nil!9881 s!10566 s!10566)) (Exists!414 lambda!33530))))

(declare-fun lt!346770 () Unit!14989)

(assert (=> d!285215 (= lt!346770 (choose!6053 lt!346701 lt!346704 s!10566))))

(assert (=> d!285215 (validRegex!1136 lt!346701)))

(assert (=> d!285215 (= (lemmaFindConcatSeparationEquivalentToExists!358 lt!346701 lt!346704 s!10566) lt!346770)))

(declare-fun bs!240886 () Bool)

(assert (= bs!240886 d!285215))

(declare-fun m!1169449 () Bool)

(assert (=> bs!240886 m!1169449))

(assert (=> bs!240886 m!1169171))

(assert (=> bs!240886 m!1169171))

(assert (=> bs!240886 m!1169173))

(declare-fun m!1169451 () Bool)

(assert (=> bs!240886 m!1169451))

(assert (=> bs!240886 m!1169441))

(assert (=> b!961051 d!285215))

(declare-fun d!285217 () Bool)

(assert (=> d!285217 (= (Exists!414 lambda!33493) (choose!6052 lambda!33493))))

(declare-fun bs!240887 () Bool)

(assert (= bs!240887 d!285217))

(declare-fun m!1169453 () Bool)

(assert (=> bs!240887 m!1169453))

(assert (=> b!961051 d!285217))

(declare-fun d!285219 () Bool)

(assert (=> d!285219 (= (Exists!414 lambda!33494) (choose!6052 lambda!33494))))

(declare-fun bs!240888 () Bool)

(assert (= bs!240888 d!285219))

(declare-fun m!1169455 () Bool)

(assert (=> bs!240888 m!1169455))

(assert (=> b!961051 d!285219))

(declare-fun bs!240889 () Bool)

(declare-fun d!285221 () Bool)

(assert (= bs!240889 (and d!285221 b!961051)))

(declare-fun lambda!33531 () Int)

(assert (=> bs!240889 (= lambda!33531 lambda!33493)))

(declare-fun bs!240890 () Bool)

(assert (= bs!240890 (and d!285221 d!285201)))

(assert (=> bs!240890 (= (and (= lt!346701 (regOne!5846 r!15766)) (= lt!346704 (regTwo!5846 r!15766))) (= lambda!33531 lambda!33523))))

(declare-fun bs!240891 () Bool)

(assert (= bs!240891 (and d!285221 d!285207)))

(assert (=> bs!240891 (not (= lambda!33531 lambda!33529))))

(declare-fun bs!240892 () Bool)

(assert (= bs!240892 (and d!285221 b!961183)))

(assert (=> bs!240892 (not (= lambda!33531 lambda!33517))))

(assert (=> bs!240889 (not (= lambda!33531 lambda!33494))))

(declare-fun bs!240893 () Bool)

(assert (= bs!240893 (and d!285221 b!961185)))

(assert (=> bs!240893 (not (= lambda!33531 lambda!33516))))

(declare-fun bs!240894 () Bool)

(assert (= bs!240894 (and d!285221 d!285215)))

(assert (=> bs!240894 (= lambda!33531 lambda!33530)))

(assert (=> bs!240891 (= (and (= lt!346701 (regOne!5846 r!15766)) (= lt!346704 (regTwo!5846 r!15766))) (= lambda!33531 lambda!33528))))

(declare-fun bs!240895 () Bool)

(assert (= bs!240895 (and d!285221 b!961044)))

(assert (=> bs!240895 (= (and (= lt!346701 (regOne!5846 r!15766)) (= lt!346704 (regTwo!5846 r!15766))) (= lambda!33531 lambda!33491))))

(assert (=> bs!240895 (not (= lambda!33531 lambda!33492))))

(assert (=> d!285221 true))

(assert (=> d!285221 true))

(assert (=> d!285221 true))

(declare-fun lambda!33532 () Int)

(assert (=> bs!240889 (not (= lambda!33532 lambda!33493))))

(declare-fun bs!240896 () Bool)

(assert (= bs!240896 d!285221))

(assert (=> bs!240896 (not (= lambda!33532 lambda!33531))))

(assert (=> bs!240890 (not (= lambda!33532 lambda!33523))))

(assert (=> bs!240891 (= (and (= lt!346701 (regOne!5846 r!15766)) (= lt!346704 (regTwo!5846 r!15766))) (= lambda!33532 lambda!33529))))

(assert (=> bs!240892 (= (and (= lt!346701 (regOne!5846 r!15766)) (= lt!346704 (regTwo!5846 r!15766))) (= lambda!33532 lambda!33517))))

(assert (=> bs!240889 (= lambda!33532 lambda!33494)))

(assert (=> bs!240893 (not (= lambda!33532 lambda!33516))))

(assert (=> bs!240894 (not (= lambda!33532 lambda!33530))))

(assert (=> bs!240891 (not (= lambda!33532 lambda!33528))))

(assert (=> bs!240895 (not (= lambda!33532 lambda!33491))))

(assert (=> bs!240895 (= (and (= lt!346701 (regOne!5846 r!15766)) (= lt!346704 (regTwo!5846 r!15766))) (= lambda!33532 lambda!33492))))

(assert (=> d!285221 true))

(assert (=> d!285221 true))

(assert (=> d!285221 true))

(assert (=> d!285221 (= (Exists!414 lambda!33531) (Exists!414 lambda!33532))))

(declare-fun lt!346771 () Unit!14989)

(assert (=> d!285221 (= lt!346771 (choose!6054 lt!346701 lt!346704 s!10566))))

(assert (=> d!285221 (validRegex!1136 lt!346701)))

(assert (=> d!285221 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!210 lt!346701 lt!346704 s!10566) lt!346771)))

(declare-fun m!1169457 () Bool)

(assert (=> bs!240896 m!1169457))

(declare-fun m!1169459 () Bool)

(assert (=> bs!240896 m!1169459))

(declare-fun m!1169461 () Bool)

(assert (=> bs!240896 m!1169461))

(assert (=> bs!240896 m!1169441))

(assert (=> b!961051 d!285221))

(declare-fun bs!240897 () Bool)

(declare-fun b!961542 () Bool)

(assert (= bs!240897 (and b!961542 b!961051)))

(declare-fun lambda!33533 () Int)

(assert (=> bs!240897 (not (= lambda!33533 lambda!33493))))

(declare-fun bs!240898 () Bool)

(assert (= bs!240898 (and b!961542 d!285221)))

(assert (=> bs!240898 (not (= lambda!33533 lambda!33531))))

(declare-fun bs!240899 () Bool)

(assert (= bs!240899 (and b!961542 d!285201)))

(assert (=> bs!240899 (not (= lambda!33533 lambda!33523))))

(assert (=> bs!240898 (not (= lambda!33533 lambda!33532))))

(declare-fun bs!240900 () Bool)

(assert (= bs!240900 (and b!961542 d!285207)))

(assert (=> bs!240900 (not (= lambda!33533 lambda!33529))))

(declare-fun bs!240901 () Bool)

(assert (= bs!240901 (and b!961542 b!961183)))

(assert (=> bs!240901 (not (= lambda!33533 lambda!33517))))

(assert (=> bs!240897 (not (= lambda!33533 lambda!33494))))

(declare-fun bs!240902 () Bool)

(assert (= bs!240902 (and b!961542 b!961185)))

(assert (=> bs!240902 (= (and (= (reg!2996 lt!346703) (reg!2996 r!15766)) (= lt!346703 r!15766)) (= lambda!33533 lambda!33516))))

(declare-fun bs!240903 () Bool)

(assert (= bs!240903 (and b!961542 d!285215)))

(assert (=> bs!240903 (not (= lambda!33533 lambda!33530))))

(assert (=> bs!240900 (not (= lambda!33533 lambda!33528))))

(declare-fun bs!240904 () Bool)

(assert (= bs!240904 (and b!961542 b!961044)))

(assert (=> bs!240904 (not (= lambda!33533 lambda!33491))))

(assert (=> bs!240904 (not (= lambda!33533 lambda!33492))))

(assert (=> b!961542 true))

(assert (=> b!961542 true))

(declare-fun bs!240905 () Bool)

(declare-fun b!961540 () Bool)

(assert (= bs!240905 (and b!961540 b!961051)))

(declare-fun lambda!33534 () Int)

(assert (=> bs!240905 (not (= lambda!33534 lambda!33493))))

(declare-fun bs!240906 () Bool)

(assert (= bs!240906 (and b!961540 d!285221)))

(assert (=> bs!240906 (not (= lambda!33534 lambda!33531))))

(assert (=> bs!240906 (= (and (= (regOne!5846 lt!346703) lt!346701) (= (regTwo!5846 lt!346703) lt!346704)) (= lambda!33534 lambda!33532))))

(declare-fun bs!240907 () Bool)

(assert (= bs!240907 (and b!961540 d!285207)))

(assert (=> bs!240907 (= (and (= (regOne!5846 lt!346703) (regOne!5846 r!15766)) (= (regTwo!5846 lt!346703) (regTwo!5846 r!15766))) (= lambda!33534 lambda!33529))))

(declare-fun bs!240908 () Bool)

(assert (= bs!240908 (and b!961540 b!961183)))

(assert (=> bs!240908 (= (and (= (regOne!5846 lt!346703) (regOne!5846 r!15766)) (= (regTwo!5846 lt!346703) (regTwo!5846 r!15766))) (= lambda!33534 lambda!33517))))

(assert (=> bs!240905 (= (and (= (regOne!5846 lt!346703) lt!346701) (= (regTwo!5846 lt!346703) lt!346704)) (= lambda!33534 lambda!33494))))

(declare-fun bs!240909 () Bool)

(assert (= bs!240909 (and b!961540 b!961185)))

(assert (=> bs!240909 (not (= lambda!33534 lambda!33516))))

(declare-fun bs!240910 () Bool)

(assert (= bs!240910 (and b!961540 d!285215)))

(assert (=> bs!240910 (not (= lambda!33534 lambda!33530))))

(assert (=> bs!240907 (not (= lambda!33534 lambda!33528))))

(declare-fun bs!240911 () Bool)

(assert (= bs!240911 (and b!961540 b!961542)))

(assert (=> bs!240911 (not (= lambda!33534 lambda!33533))))

(declare-fun bs!240912 () Bool)

(assert (= bs!240912 (and b!961540 d!285201)))

(assert (=> bs!240912 (not (= lambda!33534 lambda!33523))))

(declare-fun bs!240913 () Bool)

(assert (= bs!240913 (and b!961540 b!961044)))

(assert (=> bs!240913 (not (= lambda!33534 lambda!33491))))

(assert (=> bs!240913 (= (and (= (regOne!5846 lt!346703) (regOne!5846 r!15766)) (= (regTwo!5846 lt!346703) (regTwo!5846 r!15766))) (= lambda!33534 lambda!33492))))

(assert (=> b!961540 true))

(assert (=> b!961540 true))

(declare-fun call!60630 () Bool)

(declare-fun bm!60625 () Bool)

(declare-fun c!156634 () Bool)

(assert (=> bm!60625 (= call!60630 (Exists!414 (ite c!156634 lambda!33533 lambda!33534)))))

(declare-fun b!961538 () Bool)

(declare-fun e!621027 () Bool)

(assert (=> b!961538 (= e!621027 (= s!10566 (Cons!9881 (c!156512 lt!346703) Nil!9881)))))

(declare-fun b!961539 () Bool)

(declare-fun e!621023 () Bool)

(declare-fun call!60631 () Bool)

(assert (=> b!961539 (= e!621023 call!60631)))

(declare-fun e!621024 () Bool)

(assert (=> b!961540 (= e!621024 call!60630)))

(declare-fun b!961541 () Bool)

(declare-fun c!156633 () Bool)

(assert (=> b!961541 (= c!156633 ((_ is ElementMatch!2667) lt!346703))))

(declare-fun e!621026 () Bool)

(assert (=> b!961541 (= e!621026 e!621027)))

(declare-fun e!621022 () Bool)

(assert (=> b!961542 (= e!621022 call!60630)))

(declare-fun b!961543 () Bool)

(declare-fun c!156635 () Bool)

(assert (=> b!961543 (= c!156635 ((_ is Union!2667) lt!346703))))

(declare-fun e!621025 () Bool)

(assert (=> b!961543 (= e!621027 e!621025)))

(declare-fun b!961544 () Bool)

(assert (=> b!961544 (= e!621025 e!621024)))

(assert (=> b!961544 (= c!156634 ((_ is Star!2667) lt!346703))))

(declare-fun b!961545 () Bool)

(assert (=> b!961545 (= e!621023 e!621026)))

(declare-fun res!437005 () Bool)

(assert (=> b!961545 (= res!437005 (not ((_ is EmptyLang!2667) lt!346703)))))

(assert (=> b!961545 (=> (not res!437005) (not e!621026))))

(declare-fun b!961546 () Bool)

(declare-fun res!437004 () Bool)

(assert (=> b!961546 (=> res!437004 e!621022)))

(assert (=> b!961546 (= res!437004 call!60631)))

(assert (=> b!961546 (= e!621024 e!621022)))

(declare-fun d!285223 () Bool)

(declare-fun c!156636 () Bool)

(assert (=> d!285223 (= c!156636 ((_ is EmptyExpr!2667) lt!346703))))

(assert (=> d!285223 (= (matchRSpec!468 lt!346703 s!10566) e!621023)))

(declare-fun bm!60626 () Bool)

(assert (=> bm!60626 (= call!60631 (isEmpty!6177 s!10566))))

(declare-fun b!961547 () Bool)

(declare-fun e!621021 () Bool)

(assert (=> b!961547 (= e!621025 e!621021)))

(declare-fun res!437006 () Bool)

(assert (=> b!961547 (= res!437006 (matchRSpec!468 (regOne!5847 lt!346703) s!10566))))

(assert (=> b!961547 (=> res!437006 e!621021)))

(declare-fun b!961548 () Bool)

(assert (=> b!961548 (= e!621021 (matchRSpec!468 (regTwo!5847 lt!346703) s!10566))))

(assert (= (and d!285223 c!156636) b!961539))

(assert (= (and d!285223 (not c!156636)) b!961545))

(assert (= (and b!961545 res!437005) b!961541))

(assert (= (and b!961541 c!156633) b!961538))

(assert (= (and b!961541 (not c!156633)) b!961543))

(assert (= (and b!961543 c!156635) b!961547))

(assert (= (and b!961543 (not c!156635)) b!961544))

(assert (= (and b!961547 (not res!437006)) b!961548))

(assert (= (and b!961544 c!156634) b!961546))

(assert (= (and b!961544 (not c!156634)) b!961540))

(assert (= (and b!961546 (not res!437004)) b!961542))

(assert (= (or b!961542 b!961540) bm!60625))

(assert (= (or b!961539 b!961546) bm!60626))

(declare-fun m!1169463 () Bool)

(assert (=> bm!60625 m!1169463))

(assert (=> bm!60626 m!1169161))

(declare-fun m!1169465 () Bool)

(assert (=> b!961547 m!1169465))

(declare-fun m!1169467 () Bool)

(assert (=> b!961548 m!1169467))

(assert (=> b!961051 d!285223))

(declare-fun b!961561 () Bool)

(declare-fun e!621030 () Bool)

(declare-fun tp!295536 () Bool)

(assert (=> b!961561 (= e!621030 tp!295536)))

(declare-fun b!961562 () Bool)

(declare-fun tp!295537 () Bool)

(declare-fun tp!295534 () Bool)

(assert (=> b!961562 (= e!621030 (and tp!295537 tp!295534))))

(assert (=> b!961047 (= tp!295484 e!621030)))

(declare-fun b!961560 () Bool)

(declare-fun tp!295533 () Bool)

(declare-fun tp!295535 () Bool)

(assert (=> b!961560 (= e!621030 (and tp!295533 tp!295535))))

(declare-fun b!961559 () Bool)

(assert (=> b!961559 (= e!621030 tp_is_empty!4977)))

(assert (= (and b!961047 ((_ is ElementMatch!2667) (reg!2996 r!15766))) b!961559))

(assert (= (and b!961047 ((_ is Concat!4500) (reg!2996 r!15766))) b!961560))

(assert (= (and b!961047 ((_ is Star!2667) (reg!2996 r!15766))) b!961561))

(assert (= (and b!961047 ((_ is Union!2667) (reg!2996 r!15766))) b!961562))

(declare-fun b!961565 () Bool)

(declare-fun e!621031 () Bool)

(declare-fun tp!295541 () Bool)

(assert (=> b!961565 (= e!621031 tp!295541)))

(declare-fun b!961566 () Bool)

(declare-fun tp!295542 () Bool)

(declare-fun tp!295539 () Bool)

(assert (=> b!961566 (= e!621031 (and tp!295542 tp!295539))))

(assert (=> b!961043 (= tp!295479 e!621031)))

(declare-fun b!961564 () Bool)

(declare-fun tp!295538 () Bool)

(declare-fun tp!295540 () Bool)

(assert (=> b!961564 (= e!621031 (and tp!295538 tp!295540))))

(declare-fun b!961563 () Bool)

(assert (=> b!961563 (= e!621031 tp_is_empty!4977)))

(assert (= (and b!961043 ((_ is ElementMatch!2667) (regOne!5847 r!15766))) b!961563))

(assert (= (and b!961043 ((_ is Concat!4500) (regOne!5847 r!15766))) b!961564))

(assert (= (and b!961043 ((_ is Star!2667) (regOne!5847 r!15766))) b!961565))

(assert (= (and b!961043 ((_ is Union!2667) (regOne!5847 r!15766))) b!961566))

(declare-fun b!961569 () Bool)

(declare-fun e!621032 () Bool)

(declare-fun tp!295546 () Bool)

(assert (=> b!961569 (= e!621032 tp!295546)))

(declare-fun b!961570 () Bool)

(declare-fun tp!295547 () Bool)

(declare-fun tp!295544 () Bool)

(assert (=> b!961570 (= e!621032 (and tp!295547 tp!295544))))

(assert (=> b!961043 (= tp!295480 e!621032)))

(declare-fun b!961568 () Bool)

(declare-fun tp!295543 () Bool)

(declare-fun tp!295545 () Bool)

(assert (=> b!961568 (= e!621032 (and tp!295543 tp!295545))))

(declare-fun b!961567 () Bool)

(assert (=> b!961567 (= e!621032 tp_is_empty!4977)))

(assert (= (and b!961043 ((_ is ElementMatch!2667) (regTwo!5847 r!15766))) b!961567))

(assert (= (and b!961043 ((_ is Concat!4500) (regTwo!5847 r!15766))) b!961568))

(assert (= (and b!961043 ((_ is Star!2667) (regTwo!5847 r!15766))) b!961569))

(assert (= (and b!961043 ((_ is Union!2667) (regTwo!5847 r!15766))) b!961570))

(declare-fun b!961573 () Bool)

(declare-fun e!621033 () Bool)

(declare-fun tp!295551 () Bool)

(assert (=> b!961573 (= e!621033 tp!295551)))

(declare-fun b!961574 () Bool)

(declare-fun tp!295552 () Bool)

(declare-fun tp!295549 () Bool)

(assert (=> b!961574 (= e!621033 (and tp!295552 tp!295549))))

(assert (=> b!961048 (= tp!295481 e!621033)))

(declare-fun b!961572 () Bool)

(declare-fun tp!295548 () Bool)

(declare-fun tp!295550 () Bool)

(assert (=> b!961572 (= e!621033 (and tp!295548 tp!295550))))

(declare-fun b!961571 () Bool)

(assert (=> b!961571 (= e!621033 tp_is_empty!4977)))

(assert (= (and b!961048 ((_ is ElementMatch!2667) (regOne!5846 r!15766))) b!961571))

(assert (= (and b!961048 ((_ is Concat!4500) (regOne!5846 r!15766))) b!961572))

(assert (= (and b!961048 ((_ is Star!2667) (regOne!5846 r!15766))) b!961573))

(assert (= (and b!961048 ((_ is Union!2667) (regOne!5846 r!15766))) b!961574))

(declare-fun b!961577 () Bool)

(declare-fun e!621034 () Bool)

(declare-fun tp!295556 () Bool)

(assert (=> b!961577 (= e!621034 tp!295556)))

(declare-fun b!961578 () Bool)

(declare-fun tp!295557 () Bool)

(declare-fun tp!295554 () Bool)

(assert (=> b!961578 (= e!621034 (and tp!295557 tp!295554))))

(assert (=> b!961048 (= tp!295483 e!621034)))

(declare-fun b!961576 () Bool)

(declare-fun tp!295553 () Bool)

(declare-fun tp!295555 () Bool)

(assert (=> b!961576 (= e!621034 (and tp!295553 tp!295555))))

(declare-fun b!961575 () Bool)

(assert (=> b!961575 (= e!621034 tp_is_empty!4977)))

(assert (= (and b!961048 ((_ is ElementMatch!2667) (regTwo!5846 r!15766))) b!961575))

(assert (= (and b!961048 ((_ is Concat!4500) (regTwo!5846 r!15766))) b!961576))

(assert (= (and b!961048 ((_ is Star!2667) (regTwo!5846 r!15766))) b!961577))

(assert (= (and b!961048 ((_ is Union!2667) (regTwo!5846 r!15766))) b!961578))

(declare-fun b!961583 () Bool)

(declare-fun e!621037 () Bool)

(declare-fun tp!295560 () Bool)

(assert (=> b!961583 (= e!621037 (and tp_is_empty!4977 tp!295560))))

(assert (=> b!961050 (= tp!295482 e!621037)))

(assert (= (and b!961050 ((_ is Cons!9881) (t!100943 s!10566))) b!961583))

(check-sat (not b!961341) (not b!961561) (not b!961533) (not b!961520) (not b!961516) (not b!961512) (not d!285215) (not b!961515) (not bm!60604) (not b!961578) (not b!961426) (not bm!60603) (not b!961190) (not bm!60626) (not b!961560) (not b!961532) (not b!961566) (not b!961435) tp_is_empty!4977 (not d!285189) (not bm!60558) (not d!285195) (not b!961570) (not b!961519) (not bm!60625) (not bm!60616) (not bm!60620) (not b!961574) (not b!961441) (not b!961583) (not b!961191) (not b!961565) (not b!961568) (not d!285199) (not bm!60557) (not b!961443) (not b!961536) (not b!961444) (not b!961346) (not bm!60601) (not b!961577) (not d!285207) (not b!961475) (not bm!60584) (not d!285159) (not b!961486) (not d!285191) (not b!961514) (not b!961573) (not b!961562) (not d!285211) (not d!285209) (not b!961569) (not b!961439) (not b!961564) (not d!285213) (not b!961572) (not b!961537) (not d!285219) (not b!961576) (not b!961548) (not b!961531) (not b!961547) (not d!285193) (not d!285185) (not bm!60621) (not b!961345) (not b!961436) (not d!285217) (not b!961343) (not d!285203) (not d!285205) (not d!285221) (not bm!60615) (not b!961337) (not b!961338) (not d!285201) (not b!961529))
(check-sat)

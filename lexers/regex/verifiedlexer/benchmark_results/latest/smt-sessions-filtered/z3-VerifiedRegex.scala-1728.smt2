; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86518 () Bool)

(assert start!86518)

(declare-fun b!973876 () Bool)

(assert (=> b!973876 true))

(assert (=> b!973876 true))

(declare-fun lambda!34566 () Int)

(declare-fun lambda!34565 () Int)

(assert (=> b!973876 (not (= lambda!34566 lambda!34565))))

(assert (=> b!973876 true))

(assert (=> b!973876 true))

(declare-fun b!973869 () Bool)

(declare-fun e!627453 () Bool)

(declare-fun tp!298066 () Bool)

(declare-fun tp!298067 () Bool)

(assert (=> b!973869 (= e!627453 (and tp!298066 tp!298067))))

(declare-fun res!442497 () Bool)

(declare-fun e!627452 () Bool)

(assert (=> start!86518 (=> (not res!442497) (not e!627452))))

(declare-datatypes ((C!6000 0))(
  ( (C!6001 (val!3248 Int)) )
))
(declare-datatypes ((Regex!2715 0))(
  ( (ElementMatch!2715 (c!158928 C!6000)) (Concat!4548 (regOne!5942 Regex!2715) (regTwo!5942 Regex!2715)) (EmptyExpr!2715) (Star!2715 (reg!3044 Regex!2715)) (EmptyLang!2715) (Union!2715 (regOne!5943 Regex!2715) (regTwo!5943 Regex!2715)) )
))
(declare-fun r!15766 () Regex!2715)

(declare-fun validRegex!1184 (Regex!2715) Bool)

(assert (=> start!86518 (= res!442497 (validRegex!1184 r!15766))))

(assert (=> start!86518 e!627452))

(assert (=> start!86518 e!627453))

(declare-fun e!627448 () Bool)

(assert (=> start!86518 e!627448))

(declare-fun b!973870 () Bool)

(declare-fun tp!298064 () Bool)

(assert (=> b!973870 (= e!627453 tp!298064)))

(declare-fun b!973871 () Bool)

(declare-fun e!627450 () Bool)

(declare-fun e!627451 () Bool)

(assert (=> b!973871 (= e!627450 e!627451)))

(declare-fun res!442498 () Bool)

(assert (=> b!973871 (=> res!442498 e!627451)))

(declare-datatypes ((List!9945 0))(
  ( (Nil!9929) (Cons!9929 (h!15330 C!6000) (t!100991 List!9945)) )
))
(declare-datatypes ((tuple2!11296 0))(
  ( (tuple2!11297 (_1!6474 List!9945) (_2!6474 List!9945)) )
))
(declare-fun lt!349278 () tuple2!11296)

(declare-fun isEmpty!6242 (List!9945) Bool)

(assert (=> b!973871 (= res!442498 (not (isEmpty!6242 (_1!6474 lt!349278))))))

(declare-datatypes ((Option!2290 0))(
  ( (None!2289) (Some!2289 (v!19706 tuple2!11296)) )
))
(declare-fun lt!349280 () Option!2290)

(declare-fun get!3428 (Option!2290) tuple2!11296)

(assert (=> b!973871 (= lt!349278 (get!3428 lt!349280))))

(declare-fun b!973872 () Bool)

(declare-fun tp!298063 () Bool)

(declare-fun tp!298065 () Bool)

(assert (=> b!973872 (= e!627453 (and tp!298063 tp!298065))))

(declare-fun b!973873 () Bool)

(declare-fun e!627449 () Bool)

(assert (=> b!973873 (= e!627451 e!627449)))

(declare-fun res!442500 () Bool)

(assert (=> b!973873 (=> res!442500 e!627449)))

(assert (=> b!973873 (= res!442500 (not (validRegex!1184 (regTwo!5942 r!15766))))))

(declare-fun matchRSpec!514 (Regex!2715 List!9945) Bool)

(assert (=> b!973873 (matchRSpec!514 (regTwo!5942 r!15766) (_2!6474 lt!349278))))

(declare-datatypes ((Unit!15089 0))(
  ( (Unit!15090) )
))
(declare-fun lt!349277 () Unit!15089)

(declare-fun mainMatchTheorem!514 (Regex!2715 List!9945) Unit!15089)

(assert (=> b!973873 (= lt!349277 (mainMatchTheorem!514 (regTwo!5942 r!15766) (_2!6474 lt!349278)))))

(declare-fun b!973874 () Bool)

(declare-fun res!442502 () Bool)

(assert (=> b!973874 (=> res!442502 e!627451)))

(declare-fun matchR!1251 (Regex!2715 List!9945) Bool)

(assert (=> b!973874 (= res!442502 (not (matchR!1251 (regTwo!5942 r!15766) (_2!6474 lt!349278))))))

(declare-fun b!973875 () Bool)

(declare-fun tp_is_empty!5073 () Bool)

(assert (=> b!973875 (= e!627453 tp_is_empty!5073)))

(declare-fun e!627447 () Bool)

(assert (=> b!973876 (= e!627447 e!627450)))

(declare-fun res!442501 () Bool)

(assert (=> b!973876 (=> res!442501 e!627450)))

(declare-fun s!10566 () List!9945)

(assert (=> b!973876 (= res!442501 (isEmpty!6242 s!10566))))

(declare-fun Exists!454 (Int) Bool)

(assert (=> b!973876 (= (Exists!454 lambda!34565) (Exists!454 lambda!34566))))

(declare-fun lt!349282 () Unit!15089)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!220 (Regex!2715 Regex!2715 List!9945) Unit!15089)

(assert (=> b!973876 (= lt!349282 (lemmaExistCutMatchRandMatchRSpecEquivalent!220 EmptyExpr!2715 (regTwo!5942 r!15766) s!10566))))

(declare-fun isDefined!1932 (Option!2290) Bool)

(assert (=> b!973876 (= (isDefined!1932 lt!349280) (Exists!454 lambda!34565))))

(declare-fun findConcatSeparation!396 (Regex!2715 Regex!2715 List!9945 List!9945 List!9945) Option!2290)

(assert (=> b!973876 (= lt!349280 (findConcatSeparation!396 EmptyExpr!2715 (regTwo!5942 r!15766) Nil!9929 s!10566 s!10566))))

(declare-fun lt!349283 () Unit!15089)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!396 (Regex!2715 Regex!2715 List!9945) Unit!15089)

(assert (=> b!973876 (= lt!349283 (lemmaFindConcatSeparationEquivalentToExists!396 EmptyExpr!2715 (regTwo!5942 r!15766) s!10566))))

(declare-fun b!973877 () Bool)

(declare-fun tp!298068 () Bool)

(assert (=> b!973877 (= e!627448 (and tp_is_empty!5073 tp!298068))))

(declare-fun b!973878 () Bool)

(assert (=> b!973878 (= e!627452 (not e!627447))))

(declare-fun res!442499 () Bool)

(assert (=> b!973878 (=> res!442499 e!627447)))

(declare-fun lt!349276 () Bool)

(get-info :version)

(assert (=> b!973878 (= res!442499 (or (not lt!349276) (not ((_ is Concat!4548) r!15766)) (not ((_ is EmptyExpr!2715) (regOne!5942 r!15766)))))))

(assert (=> b!973878 (= lt!349276 (matchRSpec!514 r!15766 s!10566))))

(assert (=> b!973878 (= lt!349276 (matchR!1251 r!15766 s!10566))))

(declare-fun lt!349279 () Unit!15089)

(assert (=> b!973878 (= lt!349279 (mainMatchTheorem!514 r!15766 s!10566))))

(declare-fun b!973879 () Bool)

(declare-fun removeUselessConcat!346 (Regex!2715) Regex!2715)

(assert (=> b!973879 (= e!627449 (matchR!1251 (removeUselessConcat!346 r!15766) s!10566))))

(assert (=> b!973879 (matchR!1251 (removeUselessConcat!346 (regTwo!5942 r!15766)) (_2!6474 lt!349278))))

(declare-fun lt!349281 () Unit!15089)

(declare-fun lemmaRemoveUselessConcatSound!196 (Regex!2715 List!9945) Unit!15089)

(assert (=> b!973879 (= lt!349281 (lemmaRemoveUselessConcatSound!196 (regTwo!5942 r!15766) (_2!6474 lt!349278)))))

(assert (= (and start!86518 res!442497) b!973878))

(assert (= (and b!973878 (not res!442499)) b!973876))

(assert (= (and b!973876 (not res!442501)) b!973871))

(assert (= (and b!973871 (not res!442498)) b!973874))

(assert (= (and b!973874 (not res!442502)) b!973873))

(assert (= (and b!973873 (not res!442500)) b!973879))

(assert (= (and start!86518 ((_ is ElementMatch!2715) r!15766)) b!973875))

(assert (= (and start!86518 ((_ is Concat!4548) r!15766)) b!973869))

(assert (= (and start!86518 ((_ is Star!2715) r!15766)) b!973870))

(assert (= (and start!86518 ((_ is Union!2715) r!15766)) b!973872))

(assert (= (and start!86518 ((_ is Cons!9929) s!10566)) b!973877))

(declare-fun m!1176473 () Bool)

(assert (=> start!86518 m!1176473))

(declare-fun m!1176475 () Bool)

(assert (=> b!973871 m!1176475))

(declare-fun m!1176477 () Bool)

(assert (=> b!973871 m!1176477))

(declare-fun m!1176479 () Bool)

(assert (=> b!973876 m!1176479))

(declare-fun m!1176481 () Bool)

(assert (=> b!973876 m!1176481))

(assert (=> b!973876 m!1176481))

(declare-fun m!1176483 () Bool)

(assert (=> b!973876 m!1176483))

(declare-fun m!1176485 () Bool)

(assert (=> b!973876 m!1176485))

(declare-fun m!1176487 () Bool)

(assert (=> b!973876 m!1176487))

(declare-fun m!1176489 () Bool)

(assert (=> b!973876 m!1176489))

(declare-fun m!1176491 () Bool)

(assert (=> b!973876 m!1176491))

(declare-fun m!1176493 () Bool)

(assert (=> b!973879 m!1176493))

(declare-fun m!1176495 () Bool)

(assert (=> b!973879 m!1176495))

(assert (=> b!973879 m!1176493))

(declare-fun m!1176497 () Bool)

(assert (=> b!973879 m!1176497))

(declare-fun m!1176499 () Bool)

(assert (=> b!973879 m!1176499))

(assert (=> b!973879 m!1176495))

(declare-fun m!1176501 () Bool)

(assert (=> b!973879 m!1176501))

(declare-fun m!1176503 () Bool)

(assert (=> b!973873 m!1176503))

(declare-fun m!1176505 () Bool)

(assert (=> b!973873 m!1176505))

(declare-fun m!1176507 () Bool)

(assert (=> b!973873 m!1176507))

(declare-fun m!1176509 () Bool)

(assert (=> b!973878 m!1176509))

(declare-fun m!1176511 () Bool)

(assert (=> b!973878 m!1176511))

(declare-fun m!1176513 () Bool)

(assert (=> b!973878 m!1176513))

(declare-fun m!1176515 () Bool)

(assert (=> b!973874 m!1176515))

(check-sat (not b!973871) (not b!973876) (not b!973877) (not b!973874) (not b!973869) (not b!973879) (not b!973873) tp_is_empty!5073 (not b!973872) (not b!973878) (not start!86518) (not b!973870))
(check-sat)
(get-model)

(declare-fun b!973944 () Bool)

(declare-fun e!627489 () Bool)

(declare-fun e!627490 () Bool)

(assert (=> b!973944 (= e!627489 e!627490)))

(declare-fun c!158943 () Bool)

(assert (=> b!973944 (= c!158943 ((_ is Star!2715) r!15766))))

(declare-fun b!973945 () Bool)

(declare-fun e!627492 () Bool)

(declare-fun call!62031 () Bool)

(assert (=> b!973945 (= e!627492 call!62031)))

(declare-fun b!973947 () Bool)

(declare-fun res!442538 () Bool)

(declare-fun e!627494 () Bool)

(assert (=> b!973947 (=> (not res!442538) (not e!627494))))

(declare-fun call!62030 () Bool)

(assert (=> b!973947 (= res!442538 call!62030)))

(declare-fun e!627493 () Bool)

(assert (=> b!973947 (= e!627493 e!627494)))

(declare-fun b!973948 () Bool)

(declare-fun e!627491 () Bool)

(declare-fun call!62029 () Bool)

(assert (=> b!973948 (= e!627491 call!62029)))

(declare-fun bm!62024 () Bool)

(assert (=> bm!62024 (= call!62030 call!62029)))

(declare-fun b!973949 () Bool)

(assert (=> b!973949 (= e!627494 call!62031)))

(declare-fun b!973950 () Bool)

(declare-fun res!442540 () Bool)

(declare-fun e!627495 () Bool)

(assert (=> b!973950 (=> res!442540 e!627495)))

(assert (=> b!973950 (= res!442540 (not ((_ is Concat!4548) r!15766)))))

(assert (=> b!973950 (= e!627493 e!627495)))

(declare-fun b!973951 () Bool)

(assert (=> b!973951 (= e!627490 e!627493)))

(declare-fun c!158942 () Bool)

(assert (=> b!973951 (= c!158942 ((_ is Union!2715) r!15766))))

(declare-fun bm!62025 () Bool)

(assert (=> bm!62025 (= call!62031 (validRegex!1184 (ite c!158942 (regTwo!5943 r!15766) (regTwo!5942 r!15766))))))

(declare-fun bm!62026 () Bool)

(assert (=> bm!62026 (= call!62029 (validRegex!1184 (ite c!158943 (reg!3044 r!15766) (ite c!158942 (regOne!5943 r!15766) (regOne!5942 r!15766)))))))

(declare-fun b!973952 () Bool)

(assert (=> b!973952 (= e!627495 e!627492)))

(declare-fun res!442537 () Bool)

(assert (=> b!973952 (=> (not res!442537) (not e!627492))))

(assert (=> b!973952 (= res!442537 call!62030)))

(declare-fun d!287067 () Bool)

(declare-fun res!442541 () Bool)

(assert (=> d!287067 (=> res!442541 e!627489)))

(assert (=> d!287067 (= res!442541 ((_ is ElementMatch!2715) r!15766))))

(assert (=> d!287067 (= (validRegex!1184 r!15766) e!627489)))

(declare-fun b!973946 () Bool)

(assert (=> b!973946 (= e!627490 e!627491)))

(declare-fun res!442539 () Bool)

(declare-fun nullable!835 (Regex!2715) Bool)

(assert (=> b!973946 (= res!442539 (not (nullable!835 (reg!3044 r!15766))))))

(assert (=> b!973946 (=> (not res!442539) (not e!627491))))

(assert (= (and d!287067 (not res!442541)) b!973944))

(assert (= (and b!973944 c!158943) b!973946))

(assert (= (and b!973944 (not c!158943)) b!973951))

(assert (= (and b!973946 res!442539) b!973948))

(assert (= (and b!973951 c!158942) b!973947))

(assert (= (and b!973951 (not c!158942)) b!973950))

(assert (= (and b!973947 res!442538) b!973949))

(assert (= (and b!973950 (not res!442540)) b!973952))

(assert (= (and b!973952 res!442537) b!973945))

(assert (= (or b!973949 b!973945) bm!62025))

(assert (= (or b!973947 b!973952) bm!62024))

(assert (= (or b!973948 bm!62024) bm!62026))

(declare-fun m!1176531 () Bool)

(assert (=> bm!62025 m!1176531))

(declare-fun m!1176533 () Bool)

(assert (=> bm!62026 m!1176533))

(declare-fun m!1176535 () Bool)

(assert (=> b!973946 m!1176535))

(assert (=> start!86518 d!287067))

(declare-fun b!974059 () Bool)

(declare-fun e!627564 () Regex!2715)

(declare-fun e!627561 () Regex!2715)

(assert (=> b!974059 (= e!627564 e!627561)))

(declare-fun c!158976 () Bool)

(assert (=> b!974059 (= c!158976 ((_ is Union!2715) r!15766))))

(declare-fun b!974060 () Bool)

(declare-fun e!627566 () Regex!2715)

(declare-fun call!62058 () Regex!2715)

(assert (=> b!974060 (= e!627566 call!62058)))

(declare-fun b!974061 () Bool)

(declare-fun e!627565 () Regex!2715)

(assert (=> b!974061 (= e!627566 e!627565)))

(declare-fun c!158977 () Bool)

(assert (=> b!974061 (= c!158977 (and ((_ is Concat!4548) r!15766) ((_ is EmptyExpr!2715) (regTwo!5942 r!15766))))))

(declare-fun b!974062 () Bool)

(declare-fun c!158975 () Bool)

(assert (=> b!974062 (= c!158975 ((_ is Concat!4548) r!15766))))

(assert (=> b!974062 (= e!627565 e!627564)))

(declare-fun b!974063 () Bool)

(declare-fun call!62059 () Regex!2715)

(declare-fun call!62061 () Regex!2715)

(assert (=> b!974063 (= e!627564 (Concat!4548 call!62059 call!62061))))

(declare-fun b!974064 () Bool)

(declare-fun call!62062 () Regex!2715)

(assert (=> b!974064 (= e!627561 (Union!2715 call!62059 call!62062))))

(declare-fun b!974065 () Bool)

(declare-fun c!158979 () Bool)

(assert (=> b!974065 (= c!158979 ((_ is Star!2715) r!15766))))

(declare-fun e!627563 () Regex!2715)

(assert (=> b!974065 (= e!627561 e!627563)))

(declare-fun bm!62053 () Bool)

(assert (=> bm!62053 (= call!62062 call!62061)))

(declare-fun bm!62054 () Bool)

(declare-fun call!62060 () Regex!2715)

(assert (=> bm!62054 (= call!62060 call!62058)))

(declare-fun d!287071 () Bool)

(declare-fun e!627562 () Bool)

(assert (=> d!287071 e!627562))

(declare-fun res!442586 () Bool)

(assert (=> d!287071 (=> (not res!442586) (not e!627562))))

(declare-fun lt!349293 () Regex!2715)

(assert (=> d!287071 (= res!442586 (validRegex!1184 lt!349293))))

(assert (=> d!287071 (= lt!349293 e!627566)))

(declare-fun c!158978 () Bool)

(assert (=> d!287071 (= c!158978 (and ((_ is Concat!4548) r!15766) ((_ is EmptyExpr!2715) (regOne!5942 r!15766))))))

(assert (=> d!287071 (validRegex!1184 r!15766)))

(assert (=> d!287071 (= (removeUselessConcat!346 r!15766) lt!349293)))

(declare-fun b!974066 () Bool)

(assert (=> b!974066 (= e!627562 (= (nullable!835 lt!349293) (nullable!835 r!15766)))))

(declare-fun b!974067 () Bool)

(assert (=> b!974067 (= e!627563 (Star!2715 call!62062))))

(declare-fun bm!62055 () Bool)

(assert (=> bm!62055 (= call!62058 (removeUselessConcat!346 (ite c!158978 (regTwo!5942 r!15766) (ite (or c!158977 c!158975) (regOne!5942 r!15766) (regOne!5943 r!15766)))))))

(declare-fun b!974068 () Bool)

(assert (=> b!974068 (= e!627563 r!15766)))

(declare-fun bm!62056 () Bool)

(assert (=> bm!62056 (= call!62061 (removeUselessConcat!346 (ite c!158975 (regTwo!5942 r!15766) (ite c!158976 (regTwo!5943 r!15766) (reg!3044 r!15766)))))))

(declare-fun bm!62057 () Bool)

(assert (=> bm!62057 (= call!62059 call!62060)))

(declare-fun b!974069 () Bool)

(assert (=> b!974069 (= e!627565 call!62060)))

(assert (= (and d!287071 c!158978) b!974060))

(assert (= (and d!287071 (not c!158978)) b!974061))

(assert (= (and b!974061 c!158977) b!974069))

(assert (= (and b!974061 (not c!158977)) b!974062))

(assert (= (and b!974062 c!158975) b!974063))

(assert (= (and b!974062 (not c!158975)) b!974059))

(assert (= (and b!974059 c!158976) b!974064))

(assert (= (and b!974059 (not c!158976)) b!974065))

(assert (= (and b!974065 c!158979) b!974067))

(assert (= (and b!974065 (not c!158979)) b!974068))

(assert (= (or b!974064 b!974067) bm!62053))

(assert (= (or b!974063 bm!62053) bm!62056))

(assert (= (or b!974063 b!974064) bm!62057))

(assert (= (or b!974069 bm!62057) bm!62054))

(assert (= (or b!974060 bm!62054) bm!62055))

(assert (= (and d!287071 res!442586) b!974066))

(declare-fun m!1176569 () Bool)

(assert (=> d!287071 m!1176569))

(assert (=> d!287071 m!1176473))

(declare-fun m!1176571 () Bool)

(assert (=> b!974066 m!1176571))

(declare-fun m!1176573 () Bool)

(assert (=> b!974066 m!1176573))

(declare-fun m!1176575 () Bool)

(assert (=> bm!62055 m!1176575))

(declare-fun m!1176577 () Bool)

(assert (=> bm!62056 m!1176577))

(assert (=> b!973879 d!287071))

(declare-fun b!974149 () Bool)

(declare-fun e!627617 () Bool)

(declare-fun e!627615 () Bool)

(assert (=> b!974149 (= e!627617 e!627615)))

(declare-fun res!442637 () Bool)

(assert (=> b!974149 (=> (not res!442637) (not e!627615))))

(declare-fun lt!349308 () Bool)

(assert (=> b!974149 (= res!442637 (not lt!349308))))

(declare-fun d!287087 () Bool)

(declare-fun e!627612 () Bool)

(assert (=> d!287087 e!627612))

(declare-fun c!158998 () Bool)

(assert (=> d!287087 (= c!158998 ((_ is EmptyExpr!2715) (removeUselessConcat!346 (regTwo!5942 r!15766))))))

(declare-fun e!627613 () Bool)

(assert (=> d!287087 (= lt!349308 e!627613)))

(declare-fun c!159000 () Bool)

(assert (=> d!287087 (= c!159000 (isEmpty!6242 (_2!6474 lt!349278)))))

(assert (=> d!287087 (validRegex!1184 (removeUselessConcat!346 (regTwo!5942 r!15766)))))

(assert (=> d!287087 (= (matchR!1251 (removeUselessConcat!346 (regTwo!5942 r!15766)) (_2!6474 lt!349278)) lt!349308)))

(declare-fun b!974150 () Bool)

(declare-fun e!627614 () Bool)

(declare-fun head!1794 (List!9945) C!6000)

(assert (=> b!974150 (= e!627614 (not (= (head!1794 (_2!6474 lt!349278)) (c!158928 (removeUselessConcat!346 (regTwo!5942 r!15766))))))))

(declare-fun b!974151 () Bool)

(declare-fun derivativeStep!641 (Regex!2715 C!6000) Regex!2715)

(declare-fun tail!1356 (List!9945) List!9945)

(assert (=> b!974151 (= e!627613 (matchR!1251 (derivativeStep!641 (removeUselessConcat!346 (regTwo!5942 r!15766)) (head!1794 (_2!6474 lt!349278))) (tail!1356 (_2!6474 lt!349278))))))

(declare-fun b!974152 () Bool)

(assert (=> b!974152 (= e!627613 (nullable!835 (removeUselessConcat!346 (regTwo!5942 r!15766))))))

(declare-fun b!974153 () Bool)

(declare-fun res!442634 () Bool)

(assert (=> b!974153 (=> res!442634 e!627617)))

(assert (=> b!974153 (= res!442634 (not ((_ is ElementMatch!2715) (removeUselessConcat!346 (regTwo!5942 r!15766)))))))

(declare-fun e!627618 () Bool)

(assert (=> b!974153 (= e!627618 e!627617)))

(declare-fun b!974154 () Bool)

(assert (=> b!974154 (= e!627618 (not lt!349308))))

(declare-fun b!974155 () Bool)

(declare-fun res!442633 () Bool)

(declare-fun e!627616 () Bool)

(assert (=> b!974155 (=> (not res!442633) (not e!627616))))

(assert (=> b!974155 (= res!442633 (isEmpty!6242 (tail!1356 (_2!6474 lt!349278))))))

(declare-fun b!974156 () Bool)

(declare-fun res!442635 () Bool)

(assert (=> b!974156 (=> res!442635 e!627617)))

(assert (=> b!974156 (= res!442635 e!627616)))

(declare-fun res!442632 () Bool)

(assert (=> b!974156 (=> (not res!442632) (not e!627616))))

(assert (=> b!974156 (= res!442632 lt!349308)))

(declare-fun b!974157 () Bool)

(assert (=> b!974157 (= e!627615 e!627614)))

(declare-fun res!442631 () Bool)

(assert (=> b!974157 (=> res!442631 e!627614)))

(declare-fun call!62070 () Bool)

(assert (=> b!974157 (= res!442631 call!62070)))

(declare-fun b!974158 () Bool)

(assert (=> b!974158 (= e!627612 e!627618)))

(declare-fun c!158999 () Bool)

(assert (=> b!974158 (= c!158999 ((_ is EmptyLang!2715) (removeUselessConcat!346 (regTwo!5942 r!15766))))))

(declare-fun b!974159 () Bool)

(declare-fun res!442636 () Bool)

(assert (=> b!974159 (=> res!442636 e!627614)))

(assert (=> b!974159 (= res!442636 (not (isEmpty!6242 (tail!1356 (_2!6474 lt!349278)))))))

(declare-fun b!974160 () Bool)

(assert (=> b!974160 (= e!627612 (= lt!349308 call!62070))))

(declare-fun bm!62065 () Bool)

(assert (=> bm!62065 (= call!62070 (isEmpty!6242 (_2!6474 lt!349278)))))

(declare-fun b!974161 () Bool)

(assert (=> b!974161 (= e!627616 (= (head!1794 (_2!6474 lt!349278)) (c!158928 (removeUselessConcat!346 (regTwo!5942 r!15766)))))))

(declare-fun b!974162 () Bool)

(declare-fun res!442630 () Bool)

(assert (=> b!974162 (=> (not res!442630) (not e!627616))))

(assert (=> b!974162 (= res!442630 (not call!62070))))

(assert (= (and d!287087 c!159000) b!974152))

(assert (= (and d!287087 (not c!159000)) b!974151))

(assert (= (and d!287087 c!158998) b!974160))

(assert (= (and d!287087 (not c!158998)) b!974158))

(assert (= (and b!974158 c!158999) b!974154))

(assert (= (and b!974158 (not c!158999)) b!974153))

(assert (= (and b!974153 (not res!442634)) b!974156))

(assert (= (and b!974156 res!442632) b!974162))

(assert (= (and b!974162 res!442630) b!974155))

(assert (= (and b!974155 res!442633) b!974161))

(assert (= (and b!974156 (not res!442635)) b!974149))

(assert (= (and b!974149 res!442637) b!974157))

(assert (= (and b!974157 (not res!442631)) b!974159))

(assert (= (and b!974159 (not res!442636)) b!974150))

(assert (= (or b!974160 b!974157 b!974162) bm!62065))

(assert (=> b!974152 m!1176495))

(declare-fun m!1176611 () Bool)

(assert (=> b!974152 m!1176611))

(declare-fun m!1176613 () Bool)

(assert (=> b!974150 m!1176613))

(declare-fun m!1176615 () Bool)

(assert (=> b!974159 m!1176615))

(assert (=> b!974159 m!1176615))

(declare-fun m!1176617 () Bool)

(assert (=> b!974159 m!1176617))

(declare-fun m!1176619 () Bool)

(assert (=> bm!62065 m!1176619))

(assert (=> b!974161 m!1176613))

(assert (=> d!287087 m!1176619))

(assert (=> d!287087 m!1176495))

(declare-fun m!1176621 () Bool)

(assert (=> d!287087 m!1176621))

(assert (=> b!974155 m!1176615))

(assert (=> b!974155 m!1176615))

(assert (=> b!974155 m!1176617))

(assert (=> b!974151 m!1176613))

(assert (=> b!974151 m!1176495))

(assert (=> b!974151 m!1176613))

(declare-fun m!1176623 () Bool)

(assert (=> b!974151 m!1176623))

(assert (=> b!974151 m!1176615))

(assert (=> b!974151 m!1176623))

(assert (=> b!974151 m!1176615))

(declare-fun m!1176625 () Bool)

(assert (=> b!974151 m!1176625))

(assert (=> b!973879 d!287087))

(declare-fun b!974163 () Bool)

(declare-fun e!627624 () Bool)

(declare-fun e!627622 () Bool)

(assert (=> b!974163 (= e!627624 e!627622)))

(declare-fun res!442645 () Bool)

(assert (=> b!974163 (=> (not res!442645) (not e!627622))))

(declare-fun lt!349310 () Bool)

(assert (=> b!974163 (= res!442645 (not lt!349310))))

(declare-fun d!287097 () Bool)

(declare-fun e!627619 () Bool)

(assert (=> d!287097 e!627619))

(declare-fun c!159001 () Bool)

(assert (=> d!287097 (= c!159001 ((_ is EmptyExpr!2715) (removeUselessConcat!346 r!15766)))))

(declare-fun e!627620 () Bool)

(assert (=> d!287097 (= lt!349310 e!627620)))

(declare-fun c!159003 () Bool)

(assert (=> d!287097 (= c!159003 (isEmpty!6242 s!10566))))

(assert (=> d!287097 (validRegex!1184 (removeUselessConcat!346 r!15766))))

(assert (=> d!287097 (= (matchR!1251 (removeUselessConcat!346 r!15766) s!10566) lt!349310)))

(declare-fun b!974164 () Bool)

(declare-fun e!627621 () Bool)

(assert (=> b!974164 (= e!627621 (not (= (head!1794 s!10566) (c!158928 (removeUselessConcat!346 r!15766)))))))

(declare-fun b!974165 () Bool)

(assert (=> b!974165 (= e!627620 (matchR!1251 (derivativeStep!641 (removeUselessConcat!346 r!15766) (head!1794 s!10566)) (tail!1356 s!10566)))))

(declare-fun b!974166 () Bool)

(assert (=> b!974166 (= e!627620 (nullable!835 (removeUselessConcat!346 r!15766)))))

(declare-fun b!974167 () Bool)

(declare-fun res!442642 () Bool)

(assert (=> b!974167 (=> res!442642 e!627624)))

(assert (=> b!974167 (= res!442642 (not ((_ is ElementMatch!2715) (removeUselessConcat!346 r!15766))))))

(declare-fun e!627625 () Bool)

(assert (=> b!974167 (= e!627625 e!627624)))

(declare-fun b!974168 () Bool)

(assert (=> b!974168 (= e!627625 (not lt!349310))))

(declare-fun b!974169 () Bool)

(declare-fun res!442641 () Bool)

(declare-fun e!627623 () Bool)

(assert (=> b!974169 (=> (not res!442641) (not e!627623))))

(assert (=> b!974169 (= res!442641 (isEmpty!6242 (tail!1356 s!10566)))))

(declare-fun b!974170 () Bool)

(declare-fun res!442643 () Bool)

(assert (=> b!974170 (=> res!442643 e!627624)))

(assert (=> b!974170 (= res!442643 e!627623)))

(declare-fun res!442640 () Bool)

(assert (=> b!974170 (=> (not res!442640) (not e!627623))))

(assert (=> b!974170 (= res!442640 lt!349310)))

(declare-fun b!974171 () Bool)

(assert (=> b!974171 (= e!627622 e!627621)))

(declare-fun res!442639 () Bool)

(assert (=> b!974171 (=> res!442639 e!627621)))

(declare-fun call!62071 () Bool)

(assert (=> b!974171 (= res!442639 call!62071)))

(declare-fun b!974172 () Bool)

(assert (=> b!974172 (= e!627619 e!627625)))

(declare-fun c!159002 () Bool)

(assert (=> b!974172 (= c!159002 ((_ is EmptyLang!2715) (removeUselessConcat!346 r!15766)))))

(declare-fun b!974173 () Bool)

(declare-fun res!442644 () Bool)

(assert (=> b!974173 (=> res!442644 e!627621)))

(assert (=> b!974173 (= res!442644 (not (isEmpty!6242 (tail!1356 s!10566))))))

(declare-fun b!974174 () Bool)

(assert (=> b!974174 (= e!627619 (= lt!349310 call!62071))))

(declare-fun bm!62066 () Bool)

(assert (=> bm!62066 (= call!62071 (isEmpty!6242 s!10566))))

(declare-fun b!974175 () Bool)

(assert (=> b!974175 (= e!627623 (= (head!1794 s!10566) (c!158928 (removeUselessConcat!346 r!15766))))))

(declare-fun b!974176 () Bool)

(declare-fun res!442638 () Bool)

(assert (=> b!974176 (=> (not res!442638) (not e!627623))))

(assert (=> b!974176 (= res!442638 (not call!62071))))

(assert (= (and d!287097 c!159003) b!974166))

(assert (= (and d!287097 (not c!159003)) b!974165))

(assert (= (and d!287097 c!159001) b!974174))

(assert (= (and d!287097 (not c!159001)) b!974172))

(assert (= (and b!974172 c!159002) b!974168))

(assert (= (and b!974172 (not c!159002)) b!974167))

(assert (= (and b!974167 (not res!442642)) b!974170))

(assert (= (and b!974170 res!442640) b!974176))

(assert (= (and b!974176 res!442638) b!974169))

(assert (= (and b!974169 res!442641) b!974175))

(assert (= (and b!974170 (not res!442643)) b!974163))

(assert (= (and b!974163 res!442645) b!974171))

(assert (= (and b!974171 (not res!442639)) b!974173))

(assert (= (and b!974173 (not res!442644)) b!974164))

(assert (= (or b!974174 b!974171 b!974176) bm!62066))

(assert (=> b!974166 m!1176493))

(declare-fun m!1176633 () Bool)

(assert (=> b!974166 m!1176633))

(declare-fun m!1176635 () Bool)

(assert (=> b!974164 m!1176635))

(declare-fun m!1176637 () Bool)

(assert (=> b!974173 m!1176637))

(assert (=> b!974173 m!1176637))

(declare-fun m!1176639 () Bool)

(assert (=> b!974173 m!1176639))

(assert (=> bm!62066 m!1176487))

(assert (=> b!974175 m!1176635))

(assert (=> d!287097 m!1176487))

(assert (=> d!287097 m!1176493))

(declare-fun m!1176641 () Bool)

(assert (=> d!287097 m!1176641))

(assert (=> b!974169 m!1176637))

(assert (=> b!974169 m!1176637))

(assert (=> b!974169 m!1176639))

(assert (=> b!974165 m!1176635))

(assert (=> b!974165 m!1176493))

(assert (=> b!974165 m!1176635))

(declare-fun m!1176643 () Bool)

(assert (=> b!974165 m!1176643))

(assert (=> b!974165 m!1176637))

(assert (=> b!974165 m!1176643))

(assert (=> b!974165 m!1176637))

(declare-fun m!1176645 () Bool)

(assert (=> b!974165 m!1176645))

(assert (=> b!973879 d!287097))

(declare-fun b!974177 () Bool)

(declare-fun e!627629 () Regex!2715)

(declare-fun e!627626 () Regex!2715)

(assert (=> b!974177 (= e!627629 e!627626)))

(declare-fun c!159005 () Bool)

(assert (=> b!974177 (= c!159005 ((_ is Union!2715) (regTwo!5942 r!15766)))))

(declare-fun b!974178 () Bool)

(declare-fun e!627631 () Regex!2715)

(declare-fun call!62072 () Regex!2715)

(assert (=> b!974178 (= e!627631 call!62072)))

(declare-fun b!974179 () Bool)

(declare-fun e!627630 () Regex!2715)

(assert (=> b!974179 (= e!627631 e!627630)))

(declare-fun c!159006 () Bool)

(assert (=> b!974179 (= c!159006 (and ((_ is Concat!4548) (regTwo!5942 r!15766)) ((_ is EmptyExpr!2715) (regTwo!5942 (regTwo!5942 r!15766)))))))

(declare-fun b!974180 () Bool)

(declare-fun c!159004 () Bool)

(assert (=> b!974180 (= c!159004 ((_ is Concat!4548) (regTwo!5942 r!15766)))))

(assert (=> b!974180 (= e!627630 e!627629)))

(declare-fun b!974181 () Bool)

(declare-fun call!62073 () Regex!2715)

(declare-fun call!62075 () Regex!2715)

(assert (=> b!974181 (= e!627629 (Concat!4548 call!62073 call!62075))))

(declare-fun b!974182 () Bool)

(declare-fun call!62076 () Regex!2715)

(assert (=> b!974182 (= e!627626 (Union!2715 call!62073 call!62076))))

(declare-fun b!974183 () Bool)

(declare-fun c!159008 () Bool)

(assert (=> b!974183 (= c!159008 ((_ is Star!2715) (regTwo!5942 r!15766)))))

(declare-fun e!627628 () Regex!2715)

(assert (=> b!974183 (= e!627626 e!627628)))

(declare-fun bm!62067 () Bool)

(assert (=> bm!62067 (= call!62076 call!62075)))

(declare-fun bm!62068 () Bool)

(declare-fun call!62074 () Regex!2715)

(assert (=> bm!62068 (= call!62074 call!62072)))

(declare-fun d!287101 () Bool)

(declare-fun e!627627 () Bool)

(assert (=> d!287101 e!627627))

(declare-fun res!442646 () Bool)

(assert (=> d!287101 (=> (not res!442646) (not e!627627))))

(declare-fun lt!349311 () Regex!2715)

(assert (=> d!287101 (= res!442646 (validRegex!1184 lt!349311))))

(assert (=> d!287101 (= lt!349311 e!627631)))

(declare-fun c!159007 () Bool)

(assert (=> d!287101 (= c!159007 (and ((_ is Concat!4548) (regTwo!5942 r!15766)) ((_ is EmptyExpr!2715) (regOne!5942 (regTwo!5942 r!15766)))))))

(assert (=> d!287101 (validRegex!1184 (regTwo!5942 r!15766))))

(assert (=> d!287101 (= (removeUselessConcat!346 (regTwo!5942 r!15766)) lt!349311)))

(declare-fun b!974184 () Bool)

(assert (=> b!974184 (= e!627627 (= (nullable!835 lt!349311) (nullable!835 (regTwo!5942 r!15766))))))

(declare-fun b!974185 () Bool)

(assert (=> b!974185 (= e!627628 (Star!2715 call!62076))))

(declare-fun bm!62069 () Bool)

(assert (=> bm!62069 (= call!62072 (removeUselessConcat!346 (ite c!159007 (regTwo!5942 (regTwo!5942 r!15766)) (ite (or c!159006 c!159004) (regOne!5942 (regTwo!5942 r!15766)) (regOne!5943 (regTwo!5942 r!15766))))))))

(declare-fun b!974186 () Bool)

(assert (=> b!974186 (= e!627628 (regTwo!5942 r!15766))))

(declare-fun bm!62070 () Bool)

(assert (=> bm!62070 (= call!62075 (removeUselessConcat!346 (ite c!159004 (regTwo!5942 (regTwo!5942 r!15766)) (ite c!159005 (regTwo!5943 (regTwo!5942 r!15766)) (reg!3044 (regTwo!5942 r!15766))))))))

(declare-fun bm!62071 () Bool)

(assert (=> bm!62071 (= call!62073 call!62074)))

(declare-fun b!974187 () Bool)

(assert (=> b!974187 (= e!627630 call!62074)))

(assert (= (and d!287101 c!159007) b!974178))

(assert (= (and d!287101 (not c!159007)) b!974179))

(assert (= (and b!974179 c!159006) b!974187))

(assert (= (and b!974179 (not c!159006)) b!974180))

(assert (= (and b!974180 c!159004) b!974181))

(assert (= (and b!974180 (not c!159004)) b!974177))

(assert (= (and b!974177 c!159005) b!974182))

(assert (= (and b!974177 (not c!159005)) b!974183))

(assert (= (and b!974183 c!159008) b!974185))

(assert (= (and b!974183 (not c!159008)) b!974186))

(assert (= (or b!974182 b!974185) bm!62067))

(assert (= (or b!974181 bm!62067) bm!62070))

(assert (= (or b!974181 b!974182) bm!62071))

(assert (= (or b!974187 bm!62071) bm!62068))

(assert (= (or b!974178 bm!62068) bm!62069))

(assert (= (and d!287101 res!442646) b!974184))

(declare-fun m!1176647 () Bool)

(assert (=> d!287101 m!1176647))

(assert (=> d!287101 m!1176503))

(declare-fun m!1176649 () Bool)

(assert (=> b!974184 m!1176649))

(declare-fun m!1176651 () Bool)

(assert (=> b!974184 m!1176651))

(declare-fun m!1176653 () Bool)

(assert (=> bm!62069 m!1176653))

(declare-fun m!1176655 () Bool)

(assert (=> bm!62070 m!1176655))

(assert (=> b!973879 d!287101))

(declare-fun d!287103 () Bool)

(assert (=> d!287103 (= (matchR!1251 (regTwo!5942 r!15766) (_2!6474 lt!349278)) (matchR!1251 (removeUselessConcat!346 (regTwo!5942 r!15766)) (_2!6474 lt!349278)))))

(declare-fun lt!349317 () Unit!15089)

(declare-fun choose!6170 (Regex!2715 List!9945) Unit!15089)

(assert (=> d!287103 (= lt!349317 (choose!6170 (regTwo!5942 r!15766) (_2!6474 lt!349278)))))

(assert (=> d!287103 (validRegex!1184 (regTwo!5942 r!15766))))

(assert (=> d!287103 (= (lemmaRemoveUselessConcatSound!196 (regTwo!5942 r!15766) (_2!6474 lt!349278)) lt!349317)))

(declare-fun bs!242849 () Bool)

(assert (= bs!242849 d!287103))

(assert (=> bs!242849 m!1176495))

(assert (=> bs!242849 m!1176515))

(assert (=> bs!242849 m!1176503))

(assert (=> bs!242849 m!1176495))

(assert (=> bs!242849 m!1176501))

(declare-fun m!1176657 () Bool)

(assert (=> bs!242849 m!1176657))

(assert (=> b!973879 d!287103))

(declare-fun b!974196 () Bool)

(declare-fun e!627636 () Bool)

(declare-fun e!627637 () Bool)

(assert (=> b!974196 (= e!627636 e!627637)))

(declare-fun c!159010 () Bool)

(assert (=> b!974196 (= c!159010 ((_ is Star!2715) (regTwo!5942 r!15766)))))

(declare-fun b!974197 () Bool)

(declare-fun e!627639 () Bool)

(declare-fun call!62079 () Bool)

(assert (=> b!974197 (= e!627639 call!62079)))

(declare-fun b!974199 () Bool)

(declare-fun res!442656 () Bool)

(declare-fun e!627641 () Bool)

(assert (=> b!974199 (=> (not res!442656) (not e!627641))))

(declare-fun call!62078 () Bool)

(assert (=> b!974199 (= res!442656 call!62078)))

(declare-fun e!627640 () Bool)

(assert (=> b!974199 (= e!627640 e!627641)))

(declare-fun b!974200 () Bool)

(declare-fun e!627638 () Bool)

(declare-fun call!62077 () Bool)

(assert (=> b!974200 (= e!627638 call!62077)))

(declare-fun bm!62072 () Bool)

(assert (=> bm!62072 (= call!62078 call!62077)))

(declare-fun b!974201 () Bool)

(assert (=> b!974201 (= e!627641 call!62079)))

(declare-fun b!974202 () Bool)

(declare-fun res!442658 () Bool)

(declare-fun e!627642 () Bool)

(assert (=> b!974202 (=> res!442658 e!627642)))

(assert (=> b!974202 (= res!442658 (not ((_ is Concat!4548) (regTwo!5942 r!15766))))))

(assert (=> b!974202 (= e!627640 e!627642)))

(declare-fun b!974203 () Bool)

(assert (=> b!974203 (= e!627637 e!627640)))

(declare-fun c!159009 () Bool)

(assert (=> b!974203 (= c!159009 ((_ is Union!2715) (regTwo!5942 r!15766)))))

(declare-fun bm!62073 () Bool)

(assert (=> bm!62073 (= call!62079 (validRegex!1184 (ite c!159009 (regTwo!5943 (regTwo!5942 r!15766)) (regTwo!5942 (regTwo!5942 r!15766)))))))

(declare-fun bm!62074 () Bool)

(assert (=> bm!62074 (= call!62077 (validRegex!1184 (ite c!159010 (reg!3044 (regTwo!5942 r!15766)) (ite c!159009 (regOne!5943 (regTwo!5942 r!15766)) (regOne!5942 (regTwo!5942 r!15766))))))))

(declare-fun b!974204 () Bool)

(assert (=> b!974204 (= e!627642 e!627639)))

(declare-fun res!442655 () Bool)

(assert (=> b!974204 (=> (not res!442655) (not e!627639))))

(assert (=> b!974204 (= res!442655 call!62078)))

(declare-fun d!287105 () Bool)

(declare-fun res!442659 () Bool)

(assert (=> d!287105 (=> res!442659 e!627636)))

(assert (=> d!287105 (= res!442659 ((_ is ElementMatch!2715) (regTwo!5942 r!15766)))))

(assert (=> d!287105 (= (validRegex!1184 (regTwo!5942 r!15766)) e!627636)))

(declare-fun b!974198 () Bool)

(assert (=> b!974198 (= e!627637 e!627638)))

(declare-fun res!442657 () Bool)

(assert (=> b!974198 (= res!442657 (not (nullable!835 (reg!3044 (regTwo!5942 r!15766)))))))

(assert (=> b!974198 (=> (not res!442657) (not e!627638))))

(assert (= (and d!287105 (not res!442659)) b!974196))

(assert (= (and b!974196 c!159010) b!974198))

(assert (= (and b!974196 (not c!159010)) b!974203))

(assert (= (and b!974198 res!442657) b!974200))

(assert (= (and b!974203 c!159009) b!974199))

(assert (= (and b!974203 (not c!159009)) b!974202))

(assert (= (and b!974199 res!442656) b!974201))

(assert (= (and b!974202 (not res!442658)) b!974204))

(assert (= (and b!974204 res!442655) b!974197))

(assert (= (or b!974201 b!974197) bm!62073))

(assert (= (or b!974199 b!974204) bm!62072))

(assert (= (or b!974200 bm!62072) bm!62074))

(declare-fun m!1176671 () Bool)

(assert (=> bm!62073 m!1176671))

(declare-fun m!1176673 () Bool)

(assert (=> bm!62074 m!1176673))

(declare-fun m!1176675 () Bool)

(assert (=> b!974198 m!1176675))

(assert (=> b!973873 d!287105))

(declare-fun bs!242854 () Bool)

(declare-fun b!974346 () Bool)

(assert (= bs!242854 (and b!974346 b!973876)))

(declare-fun lambda!34588 () Int)

(assert (=> bs!242854 (not (= lambda!34588 lambda!34565))))

(assert (=> bs!242854 (not (= lambda!34588 lambda!34566))))

(assert (=> b!974346 true))

(assert (=> b!974346 true))

(declare-fun bs!242855 () Bool)

(declare-fun b!974349 () Bool)

(assert (= bs!242855 (and b!974349 b!973876)))

(declare-fun lambda!34589 () Int)

(assert (=> bs!242855 (not (= lambda!34589 lambda!34565))))

(assert (=> bs!242855 (= (and (= (_2!6474 lt!349278) s!10566) (= (regOne!5942 (regTwo!5942 r!15766)) EmptyExpr!2715) (= (regTwo!5942 (regTwo!5942 r!15766)) (regTwo!5942 r!15766))) (= lambda!34589 lambda!34566))))

(declare-fun bs!242856 () Bool)

(assert (= bs!242856 (and b!974349 b!974346)))

(assert (=> bs!242856 (not (= lambda!34589 lambda!34588))))

(assert (=> b!974349 true))

(assert (=> b!974349 true))

(declare-fun b!974344 () Bool)

(declare-fun res!442696 () Bool)

(declare-fun e!627715 () Bool)

(assert (=> b!974344 (=> res!442696 e!627715)))

(declare-fun call!62106 () Bool)

(assert (=> b!974344 (= res!442696 call!62106)))

(declare-fun e!627713 () Bool)

(assert (=> b!974344 (= e!627713 e!627715)))

(declare-fun b!974345 () Bool)

(declare-fun e!627714 () Bool)

(declare-fun e!627712 () Bool)

(assert (=> b!974345 (= e!627714 e!627712)))

(declare-fun res!442697 () Bool)

(assert (=> b!974345 (= res!442697 (not ((_ is EmptyLang!2715) (regTwo!5942 r!15766))))))

(assert (=> b!974345 (=> (not res!442697) (not e!627712))))

(declare-fun call!62107 () Bool)

(assert (=> b!974346 (= e!627715 call!62107)))

(declare-fun b!974347 () Bool)

(declare-fun c!159048 () Bool)

(assert (=> b!974347 (= c!159048 ((_ is ElementMatch!2715) (regTwo!5942 r!15766)))))

(declare-fun e!627710 () Bool)

(assert (=> b!974347 (= e!627712 e!627710)))

(declare-fun b!974348 () Bool)

(declare-fun e!627709 () Bool)

(assert (=> b!974348 (= e!627709 (matchRSpec!514 (regTwo!5943 (regTwo!5942 r!15766)) (_2!6474 lt!349278)))))

(assert (=> b!974349 (= e!627713 call!62107)))

(declare-fun b!974350 () Bool)

(declare-fun c!159047 () Bool)

(assert (=> b!974350 (= c!159047 ((_ is Union!2715) (regTwo!5942 r!15766)))))

(declare-fun e!627711 () Bool)

(assert (=> b!974350 (= e!627710 e!627711)))

(declare-fun b!974351 () Bool)

(assert (=> b!974351 (= e!627711 e!627709)))

(declare-fun res!442698 () Bool)

(assert (=> b!974351 (= res!442698 (matchRSpec!514 (regOne!5943 (regTwo!5942 r!15766)) (_2!6474 lt!349278)))))

(assert (=> b!974351 (=> res!442698 e!627709)))

(declare-fun bm!62101 () Bool)

(assert (=> bm!62101 (= call!62106 (isEmpty!6242 (_2!6474 lt!349278)))))

(declare-fun bm!62102 () Bool)

(declare-fun c!159045 () Bool)

(assert (=> bm!62102 (= call!62107 (Exists!454 (ite c!159045 lambda!34588 lambda!34589)))))

(declare-fun d!287115 () Bool)

(declare-fun c!159046 () Bool)

(assert (=> d!287115 (= c!159046 ((_ is EmptyExpr!2715) (regTwo!5942 r!15766)))))

(assert (=> d!287115 (= (matchRSpec!514 (regTwo!5942 r!15766) (_2!6474 lt!349278)) e!627714)))

(declare-fun b!974352 () Bool)

(assert (=> b!974352 (= e!627710 (= (_2!6474 lt!349278) (Cons!9929 (c!158928 (regTwo!5942 r!15766)) Nil!9929)))))

(declare-fun b!974353 () Bool)

(assert (=> b!974353 (= e!627711 e!627713)))

(assert (=> b!974353 (= c!159045 ((_ is Star!2715) (regTwo!5942 r!15766)))))

(declare-fun b!974354 () Bool)

(assert (=> b!974354 (= e!627714 call!62106)))

(assert (= (and d!287115 c!159046) b!974354))

(assert (= (and d!287115 (not c!159046)) b!974345))

(assert (= (and b!974345 res!442697) b!974347))

(assert (= (and b!974347 c!159048) b!974352))

(assert (= (and b!974347 (not c!159048)) b!974350))

(assert (= (and b!974350 c!159047) b!974351))

(assert (= (and b!974350 (not c!159047)) b!974353))

(assert (= (and b!974351 (not res!442698)) b!974348))

(assert (= (and b!974353 c!159045) b!974344))

(assert (= (and b!974353 (not c!159045)) b!974349))

(assert (= (and b!974344 (not res!442696)) b!974346))

(assert (= (or b!974346 b!974349) bm!62102))

(assert (= (or b!974354 b!974344) bm!62101))

(declare-fun m!1176711 () Bool)

(assert (=> b!974348 m!1176711))

(declare-fun m!1176713 () Bool)

(assert (=> b!974351 m!1176713))

(assert (=> bm!62101 m!1176619))

(declare-fun m!1176715 () Bool)

(assert (=> bm!62102 m!1176715))

(assert (=> b!973873 d!287115))

(declare-fun d!287125 () Bool)

(assert (=> d!287125 (= (matchR!1251 (regTwo!5942 r!15766) (_2!6474 lt!349278)) (matchRSpec!514 (regTwo!5942 r!15766) (_2!6474 lt!349278)))))

(declare-fun lt!349329 () Unit!15089)

(declare-fun choose!6171 (Regex!2715 List!9945) Unit!15089)

(assert (=> d!287125 (= lt!349329 (choose!6171 (regTwo!5942 r!15766) (_2!6474 lt!349278)))))

(assert (=> d!287125 (validRegex!1184 (regTwo!5942 r!15766))))

(assert (=> d!287125 (= (mainMatchTheorem!514 (regTwo!5942 r!15766) (_2!6474 lt!349278)) lt!349329)))

(declare-fun bs!242857 () Bool)

(assert (= bs!242857 d!287125))

(assert (=> bs!242857 m!1176515))

(assert (=> bs!242857 m!1176505))

(declare-fun m!1176717 () Bool)

(assert (=> bs!242857 m!1176717))

(assert (=> bs!242857 m!1176503))

(assert (=> b!973873 d!287125))

(declare-fun bs!242858 () Bool)

(declare-fun b!974357 () Bool)

(assert (= bs!242858 (and b!974357 b!973876)))

(declare-fun lambda!34590 () Int)

(assert (=> bs!242858 (not (= lambda!34590 lambda!34565))))

(assert (=> bs!242858 (not (= lambda!34590 lambda!34566))))

(declare-fun bs!242859 () Bool)

(assert (= bs!242859 (and b!974357 b!974346)))

(assert (=> bs!242859 (= (and (= s!10566 (_2!6474 lt!349278)) (= (reg!3044 r!15766) (reg!3044 (regTwo!5942 r!15766))) (= r!15766 (regTwo!5942 r!15766))) (= lambda!34590 lambda!34588))))

(declare-fun bs!242860 () Bool)

(assert (= bs!242860 (and b!974357 b!974349)))

(assert (=> bs!242860 (not (= lambda!34590 lambda!34589))))

(assert (=> b!974357 true))

(assert (=> b!974357 true))

(declare-fun bs!242861 () Bool)

(declare-fun b!974360 () Bool)

(assert (= bs!242861 (and b!974360 b!974346)))

(declare-fun lambda!34591 () Int)

(assert (=> bs!242861 (not (= lambda!34591 lambda!34588))))

(declare-fun bs!242862 () Bool)

(assert (= bs!242862 (and b!974360 b!974349)))

(assert (=> bs!242862 (= (and (= s!10566 (_2!6474 lt!349278)) (= (regOne!5942 r!15766) (regOne!5942 (regTwo!5942 r!15766))) (= (regTwo!5942 r!15766) (regTwo!5942 (regTwo!5942 r!15766)))) (= lambda!34591 lambda!34589))))

(declare-fun bs!242863 () Bool)

(assert (= bs!242863 (and b!974360 b!973876)))

(assert (=> bs!242863 (not (= lambda!34591 lambda!34565))))

(assert (=> bs!242863 (= (= (regOne!5942 r!15766) EmptyExpr!2715) (= lambda!34591 lambda!34566))))

(declare-fun bs!242864 () Bool)

(assert (= bs!242864 (and b!974360 b!974357)))

(assert (=> bs!242864 (not (= lambda!34591 lambda!34590))))

(assert (=> b!974360 true))

(assert (=> b!974360 true))

(declare-fun b!974355 () Bool)

(declare-fun res!442699 () Bool)

(declare-fun e!627722 () Bool)

(assert (=> b!974355 (=> res!442699 e!627722)))

(declare-fun call!62108 () Bool)

(assert (=> b!974355 (= res!442699 call!62108)))

(declare-fun e!627720 () Bool)

(assert (=> b!974355 (= e!627720 e!627722)))

(declare-fun b!974356 () Bool)

(declare-fun e!627721 () Bool)

(declare-fun e!627719 () Bool)

(assert (=> b!974356 (= e!627721 e!627719)))

(declare-fun res!442700 () Bool)

(assert (=> b!974356 (= res!442700 (not ((_ is EmptyLang!2715) r!15766)))))

(assert (=> b!974356 (=> (not res!442700) (not e!627719))))

(declare-fun call!62109 () Bool)

(assert (=> b!974357 (= e!627722 call!62109)))

(declare-fun b!974358 () Bool)

(declare-fun c!159052 () Bool)

(assert (=> b!974358 (= c!159052 ((_ is ElementMatch!2715) r!15766))))

(declare-fun e!627717 () Bool)

(assert (=> b!974358 (= e!627719 e!627717)))

(declare-fun b!974359 () Bool)

(declare-fun e!627716 () Bool)

(assert (=> b!974359 (= e!627716 (matchRSpec!514 (regTwo!5943 r!15766) s!10566))))

(assert (=> b!974360 (= e!627720 call!62109)))

(declare-fun b!974361 () Bool)

(declare-fun c!159051 () Bool)

(assert (=> b!974361 (= c!159051 ((_ is Union!2715) r!15766))))

(declare-fun e!627718 () Bool)

(assert (=> b!974361 (= e!627717 e!627718)))

(declare-fun b!974362 () Bool)

(assert (=> b!974362 (= e!627718 e!627716)))

(declare-fun res!442701 () Bool)

(assert (=> b!974362 (= res!442701 (matchRSpec!514 (regOne!5943 r!15766) s!10566))))

(assert (=> b!974362 (=> res!442701 e!627716)))

(declare-fun bm!62103 () Bool)

(assert (=> bm!62103 (= call!62108 (isEmpty!6242 s!10566))))

(declare-fun bm!62104 () Bool)

(declare-fun c!159049 () Bool)

(assert (=> bm!62104 (= call!62109 (Exists!454 (ite c!159049 lambda!34590 lambda!34591)))))

(declare-fun d!287127 () Bool)

(declare-fun c!159050 () Bool)

(assert (=> d!287127 (= c!159050 ((_ is EmptyExpr!2715) r!15766))))

(assert (=> d!287127 (= (matchRSpec!514 r!15766 s!10566) e!627721)))

(declare-fun b!974363 () Bool)

(assert (=> b!974363 (= e!627717 (= s!10566 (Cons!9929 (c!158928 r!15766) Nil!9929)))))

(declare-fun b!974364 () Bool)

(assert (=> b!974364 (= e!627718 e!627720)))

(assert (=> b!974364 (= c!159049 ((_ is Star!2715) r!15766))))

(declare-fun b!974365 () Bool)

(assert (=> b!974365 (= e!627721 call!62108)))

(assert (= (and d!287127 c!159050) b!974365))

(assert (= (and d!287127 (not c!159050)) b!974356))

(assert (= (and b!974356 res!442700) b!974358))

(assert (= (and b!974358 c!159052) b!974363))

(assert (= (and b!974358 (not c!159052)) b!974361))

(assert (= (and b!974361 c!159051) b!974362))

(assert (= (and b!974361 (not c!159051)) b!974364))

(assert (= (and b!974362 (not res!442701)) b!974359))

(assert (= (and b!974364 c!159049) b!974355))

(assert (= (and b!974364 (not c!159049)) b!974360))

(assert (= (and b!974355 (not res!442699)) b!974357))

(assert (= (or b!974357 b!974360) bm!62104))

(assert (= (or b!974365 b!974355) bm!62103))

(declare-fun m!1176719 () Bool)

(assert (=> b!974359 m!1176719))

(declare-fun m!1176721 () Bool)

(assert (=> b!974362 m!1176721))

(assert (=> bm!62103 m!1176487))

(declare-fun m!1176723 () Bool)

(assert (=> bm!62104 m!1176723))

(assert (=> b!973878 d!287127))

(declare-fun b!974366 () Bool)

(declare-fun e!627728 () Bool)

(declare-fun e!627726 () Bool)

(assert (=> b!974366 (= e!627728 e!627726)))

(declare-fun res!442709 () Bool)

(assert (=> b!974366 (=> (not res!442709) (not e!627726))))

(declare-fun lt!349330 () Bool)

(assert (=> b!974366 (= res!442709 (not lt!349330))))

(declare-fun d!287129 () Bool)

(declare-fun e!627723 () Bool)

(assert (=> d!287129 e!627723))

(declare-fun c!159053 () Bool)

(assert (=> d!287129 (= c!159053 ((_ is EmptyExpr!2715) r!15766))))

(declare-fun e!627724 () Bool)

(assert (=> d!287129 (= lt!349330 e!627724)))

(declare-fun c!159055 () Bool)

(assert (=> d!287129 (= c!159055 (isEmpty!6242 s!10566))))

(assert (=> d!287129 (validRegex!1184 r!15766)))

(assert (=> d!287129 (= (matchR!1251 r!15766 s!10566) lt!349330)))

(declare-fun b!974367 () Bool)

(declare-fun e!627725 () Bool)

(assert (=> b!974367 (= e!627725 (not (= (head!1794 s!10566) (c!158928 r!15766))))))

(declare-fun b!974368 () Bool)

(assert (=> b!974368 (= e!627724 (matchR!1251 (derivativeStep!641 r!15766 (head!1794 s!10566)) (tail!1356 s!10566)))))

(declare-fun b!974369 () Bool)

(assert (=> b!974369 (= e!627724 (nullable!835 r!15766))))

(declare-fun b!974370 () Bool)

(declare-fun res!442706 () Bool)

(assert (=> b!974370 (=> res!442706 e!627728)))

(assert (=> b!974370 (= res!442706 (not ((_ is ElementMatch!2715) r!15766)))))

(declare-fun e!627729 () Bool)

(assert (=> b!974370 (= e!627729 e!627728)))

(declare-fun b!974371 () Bool)

(assert (=> b!974371 (= e!627729 (not lt!349330))))

(declare-fun b!974372 () Bool)

(declare-fun res!442705 () Bool)

(declare-fun e!627727 () Bool)

(assert (=> b!974372 (=> (not res!442705) (not e!627727))))

(assert (=> b!974372 (= res!442705 (isEmpty!6242 (tail!1356 s!10566)))))

(declare-fun b!974373 () Bool)

(declare-fun res!442707 () Bool)

(assert (=> b!974373 (=> res!442707 e!627728)))

(assert (=> b!974373 (= res!442707 e!627727)))

(declare-fun res!442704 () Bool)

(assert (=> b!974373 (=> (not res!442704) (not e!627727))))

(assert (=> b!974373 (= res!442704 lt!349330)))

(declare-fun b!974374 () Bool)

(assert (=> b!974374 (= e!627726 e!627725)))

(declare-fun res!442703 () Bool)

(assert (=> b!974374 (=> res!442703 e!627725)))

(declare-fun call!62110 () Bool)

(assert (=> b!974374 (= res!442703 call!62110)))

(declare-fun b!974375 () Bool)

(assert (=> b!974375 (= e!627723 e!627729)))

(declare-fun c!159054 () Bool)

(assert (=> b!974375 (= c!159054 ((_ is EmptyLang!2715) r!15766))))

(declare-fun b!974376 () Bool)

(declare-fun res!442708 () Bool)

(assert (=> b!974376 (=> res!442708 e!627725)))

(assert (=> b!974376 (= res!442708 (not (isEmpty!6242 (tail!1356 s!10566))))))

(declare-fun b!974377 () Bool)

(assert (=> b!974377 (= e!627723 (= lt!349330 call!62110))))

(declare-fun bm!62105 () Bool)

(assert (=> bm!62105 (= call!62110 (isEmpty!6242 s!10566))))

(declare-fun b!974378 () Bool)

(assert (=> b!974378 (= e!627727 (= (head!1794 s!10566) (c!158928 r!15766)))))

(declare-fun b!974379 () Bool)

(declare-fun res!442702 () Bool)

(assert (=> b!974379 (=> (not res!442702) (not e!627727))))

(assert (=> b!974379 (= res!442702 (not call!62110))))

(assert (= (and d!287129 c!159055) b!974369))

(assert (= (and d!287129 (not c!159055)) b!974368))

(assert (= (and d!287129 c!159053) b!974377))

(assert (= (and d!287129 (not c!159053)) b!974375))

(assert (= (and b!974375 c!159054) b!974371))

(assert (= (and b!974375 (not c!159054)) b!974370))

(assert (= (and b!974370 (not res!442706)) b!974373))

(assert (= (and b!974373 res!442704) b!974379))

(assert (= (and b!974379 res!442702) b!974372))

(assert (= (and b!974372 res!442705) b!974378))

(assert (= (and b!974373 (not res!442707)) b!974366))

(assert (= (and b!974366 res!442709) b!974374))

(assert (= (and b!974374 (not res!442703)) b!974376))

(assert (= (and b!974376 (not res!442708)) b!974367))

(assert (= (or b!974377 b!974374 b!974379) bm!62105))

(assert (=> b!974369 m!1176573))

(assert (=> b!974367 m!1176635))

(assert (=> b!974376 m!1176637))

(assert (=> b!974376 m!1176637))

(assert (=> b!974376 m!1176639))

(assert (=> bm!62105 m!1176487))

(assert (=> b!974378 m!1176635))

(assert (=> d!287129 m!1176487))

(assert (=> d!287129 m!1176473))

(assert (=> b!974372 m!1176637))

(assert (=> b!974372 m!1176637))

(assert (=> b!974372 m!1176639))

(assert (=> b!974368 m!1176635))

(assert (=> b!974368 m!1176635))

(declare-fun m!1176725 () Bool)

(assert (=> b!974368 m!1176725))

(assert (=> b!974368 m!1176637))

(assert (=> b!974368 m!1176725))

(assert (=> b!974368 m!1176637))

(declare-fun m!1176727 () Bool)

(assert (=> b!974368 m!1176727))

(assert (=> b!973878 d!287129))

(declare-fun d!287131 () Bool)

(assert (=> d!287131 (= (matchR!1251 r!15766 s!10566) (matchRSpec!514 r!15766 s!10566))))

(declare-fun lt!349331 () Unit!15089)

(assert (=> d!287131 (= lt!349331 (choose!6171 r!15766 s!10566))))

(assert (=> d!287131 (validRegex!1184 r!15766)))

(assert (=> d!287131 (= (mainMatchTheorem!514 r!15766 s!10566) lt!349331)))

(declare-fun bs!242865 () Bool)

(assert (= bs!242865 d!287131))

(assert (=> bs!242865 m!1176511))

(assert (=> bs!242865 m!1176509))

(declare-fun m!1176729 () Bool)

(assert (=> bs!242865 m!1176729))

(assert (=> bs!242865 m!1176473))

(assert (=> b!973878 d!287131))

(declare-fun b!974380 () Bool)

(declare-fun e!627735 () Bool)

(declare-fun e!627733 () Bool)

(assert (=> b!974380 (= e!627735 e!627733)))

(declare-fun res!442717 () Bool)

(assert (=> b!974380 (=> (not res!442717) (not e!627733))))

(declare-fun lt!349332 () Bool)

(assert (=> b!974380 (= res!442717 (not lt!349332))))

(declare-fun d!287133 () Bool)

(declare-fun e!627730 () Bool)

(assert (=> d!287133 e!627730))

(declare-fun c!159056 () Bool)

(assert (=> d!287133 (= c!159056 ((_ is EmptyExpr!2715) (regTwo!5942 r!15766)))))

(declare-fun e!627731 () Bool)

(assert (=> d!287133 (= lt!349332 e!627731)))

(declare-fun c!159058 () Bool)

(assert (=> d!287133 (= c!159058 (isEmpty!6242 (_2!6474 lt!349278)))))

(assert (=> d!287133 (validRegex!1184 (regTwo!5942 r!15766))))

(assert (=> d!287133 (= (matchR!1251 (regTwo!5942 r!15766) (_2!6474 lt!349278)) lt!349332)))

(declare-fun b!974381 () Bool)

(declare-fun e!627732 () Bool)

(assert (=> b!974381 (= e!627732 (not (= (head!1794 (_2!6474 lt!349278)) (c!158928 (regTwo!5942 r!15766)))))))

(declare-fun b!974382 () Bool)

(assert (=> b!974382 (= e!627731 (matchR!1251 (derivativeStep!641 (regTwo!5942 r!15766) (head!1794 (_2!6474 lt!349278))) (tail!1356 (_2!6474 lt!349278))))))

(declare-fun b!974383 () Bool)

(assert (=> b!974383 (= e!627731 (nullable!835 (regTwo!5942 r!15766)))))

(declare-fun b!974384 () Bool)

(declare-fun res!442714 () Bool)

(assert (=> b!974384 (=> res!442714 e!627735)))

(assert (=> b!974384 (= res!442714 (not ((_ is ElementMatch!2715) (regTwo!5942 r!15766))))))

(declare-fun e!627736 () Bool)

(assert (=> b!974384 (= e!627736 e!627735)))

(declare-fun b!974385 () Bool)

(assert (=> b!974385 (= e!627736 (not lt!349332))))

(declare-fun b!974386 () Bool)

(declare-fun res!442713 () Bool)

(declare-fun e!627734 () Bool)

(assert (=> b!974386 (=> (not res!442713) (not e!627734))))

(assert (=> b!974386 (= res!442713 (isEmpty!6242 (tail!1356 (_2!6474 lt!349278))))))

(declare-fun b!974387 () Bool)

(declare-fun res!442715 () Bool)

(assert (=> b!974387 (=> res!442715 e!627735)))

(assert (=> b!974387 (= res!442715 e!627734)))

(declare-fun res!442712 () Bool)

(assert (=> b!974387 (=> (not res!442712) (not e!627734))))

(assert (=> b!974387 (= res!442712 lt!349332)))

(declare-fun b!974388 () Bool)

(assert (=> b!974388 (= e!627733 e!627732)))

(declare-fun res!442711 () Bool)

(assert (=> b!974388 (=> res!442711 e!627732)))

(declare-fun call!62111 () Bool)

(assert (=> b!974388 (= res!442711 call!62111)))

(declare-fun b!974389 () Bool)

(assert (=> b!974389 (= e!627730 e!627736)))

(declare-fun c!159057 () Bool)

(assert (=> b!974389 (= c!159057 ((_ is EmptyLang!2715) (regTwo!5942 r!15766)))))

(declare-fun b!974390 () Bool)

(declare-fun res!442716 () Bool)

(assert (=> b!974390 (=> res!442716 e!627732)))

(assert (=> b!974390 (= res!442716 (not (isEmpty!6242 (tail!1356 (_2!6474 lt!349278)))))))

(declare-fun b!974391 () Bool)

(assert (=> b!974391 (= e!627730 (= lt!349332 call!62111))))

(declare-fun bm!62106 () Bool)

(assert (=> bm!62106 (= call!62111 (isEmpty!6242 (_2!6474 lt!349278)))))

(declare-fun b!974392 () Bool)

(assert (=> b!974392 (= e!627734 (= (head!1794 (_2!6474 lt!349278)) (c!158928 (regTwo!5942 r!15766))))))

(declare-fun b!974393 () Bool)

(declare-fun res!442710 () Bool)

(assert (=> b!974393 (=> (not res!442710) (not e!627734))))

(assert (=> b!974393 (= res!442710 (not call!62111))))

(assert (= (and d!287133 c!159058) b!974383))

(assert (= (and d!287133 (not c!159058)) b!974382))

(assert (= (and d!287133 c!159056) b!974391))

(assert (= (and d!287133 (not c!159056)) b!974389))

(assert (= (and b!974389 c!159057) b!974385))

(assert (= (and b!974389 (not c!159057)) b!974384))

(assert (= (and b!974384 (not res!442714)) b!974387))

(assert (= (and b!974387 res!442712) b!974393))

(assert (= (and b!974393 res!442710) b!974386))

(assert (= (and b!974386 res!442713) b!974392))

(assert (= (and b!974387 (not res!442715)) b!974380))

(assert (= (and b!974380 res!442717) b!974388))

(assert (= (and b!974388 (not res!442711)) b!974390))

(assert (= (and b!974390 (not res!442716)) b!974381))

(assert (= (or b!974391 b!974388 b!974393) bm!62106))

(assert (=> b!974383 m!1176651))

(assert (=> b!974381 m!1176613))

(assert (=> b!974390 m!1176615))

(assert (=> b!974390 m!1176615))

(assert (=> b!974390 m!1176617))

(assert (=> bm!62106 m!1176619))

(assert (=> b!974392 m!1176613))

(assert (=> d!287133 m!1176619))

(assert (=> d!287133 m!1176503))

(assert (=> b!974386 m!1176615))

(assert (=> b!974386 m!1176615))

(assert (=> b!974386 m!1176617))

(assert (=> b!974382 m!1176613))

(assert (=> b!974382 m!1176613))

(declare-fun m!1176731 () Bool)

(assert (=> b!974382 m!1176731))

(assert (=> b!974382 m!1176615))

(assert (=> b!974382 m!1176731))

(assert (=> b!974382 m!1176615))

(declare-fun m!1176733 () Bool)

(assert (=> b!974382 m!1176733))

(assert (=> b!973874 d!287133))

(declare-fun d!287135 () Bool)

(assert (=> d!287135 (= (isEmpty!6242 (_1!6474 lt!349278)) ((_ is Nil!9929) (_1!6474 lt!349278)))))

(assert (=> b!973871 d!287135))

(declare-fun d!287137 () Bool)

(assert (=> d!287137 (= (get!3428 lt!349280) (v!19706 lt!349280))))

(assert (=> b!973871 d!287137))

(declare-fun d!287139 () Bool)

(declare-fun isEmpty!6244 (Option!2290) Bool)

(assert (=> d!287139 (= (isDefined!1932 lt!349280) (not (isEmpty!6244 lt!349280)))))

(declare-fun bs!242866 () Bool)

(assert (= bs!242866 d!287139))

(declare-fun m!1176735 () Bool)

(assert (=> bs!242866 m!1176735))

(assert (=> b!973876 d!287139))

(declare-fun d!287141 () Bool)

(declare-fun choose!6172 (Int) Bool)

(assert (=> d!287141 (= (Exists!454 lambda!34566) (choose!6172 lambda!34566))))

(declare-fun bs!242867 () Bool)

(assert (= bs!242867 d!287141))

(declare-fun m!1176737 () Bool)

(assert (=> bs!242867 m!1176737))

(assert (=> b!973876 d!287141))

(declare-fun d!287143 () Bool)

(assert (=> d!287143 (= (isEmpty!6242 s!10566) ((_ is Nil!9929) s!10566))))

(assert (=> b!973876 d!287143))

(declare-fun b!974412 () Bool)

(declare-fun e!627750 () Bool)

(declare-fun lt!349340 () Option!2290)

(declare-fun ++!2691 (List!9945 List!9945) List!9945)

(assert (=> b!974412 (= e!627750 (= (++!2691 (_1!6474 (get!3428 lt!349340)) (_2!6474 (get!3428 lt!349340))) s!10566))))

(declare-fun b!974413 () Bool)

(declare-fun e!627749 () Bool)

(assert (=> b!974413 (= e!627749 (matchR!1251 (regTwo!5942 r!15766) s!10566))))

(declare-fun d!287145 () Bool)

(declare-fun e!627748 () Bool)

(assert (=> d!287145 e!627748))

(declare-fun res!442729 () Bool)

(assert (=> d!287145 (=> res!442729 e!627748)))

(assert (=> d!287145 (= res!442729 e!627750)))

(declare-fun res!442732 () Bool)

(assert (=> d!287145 (=> (not res!442732) (not e!627750))))

(assert (=> d!287145 (= res!442732 (isDefined!1932 lt!349340))))

(declare-fun e!627751 () Option!2290)

(assert (=> d!287145 (= lt!349340 e!627751)))

(declare-fun c!159063 () Bool)

(assert (=> d!287145 (= c!159063 e!627749)))

(declare-fun res!442730 () Bool)

(assert (=> d!287145 (=> (not res!442730) (not e!627749))))

(assert (=> d!287145 (= res!442730 (matchR!1251 EmptyExpr!2715 Nil!9929))))

(assert (=> d!287145 (validRegex!1184 EmptyExpr!2715)))

(assert (=> d!287145 (= (findConcatSeparation!396 EmptyExpr!2715 (regTwo!5942 r!15766) Nil!9929 s!10566 s!10566) lt!349340)))

(declare-fun b!974414 () Bool)

(declare-fun lt!349339 () Unit!15089)

(declare-fun lt!349341 () Unit!15089)

(assert (=> b!974414 (= lt!349339 lt!349341)))

(assert (=> b!974414 (= (++!2691 (++!2691 Nil!9929 (Cons!9929 (h!15330 s!10566) Nil!9929)) (t!100991 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!292 (List!9945 C!6000 List!9945 List!9945) Unit!15089)

(assert (=> b!974414 (= lt!349341 (lemmaMoveElementToOtherListKeepsConcatEq!292 Nil!9929 (h!15330 s!10566) (t!100991 s!10566) s!10566))))

(declare-fun e!627747 () Option!2290)

(assert (=> b!974414 (= e!627747 (findConcatSeparation!396 EmptyExpr!2715 (regTwo!5942 r!15766) (++!2691 Nil!9929 (Cons!9929 (h!15330 s!10566) Nil!9929)) (t!100991 s!10566) s!10566))))

(declare-fun b!974415 () Bool)

(assert (=> b!974415 (= e!627747 None!2289)))

(declare-fun b!974416 () Bool)

(declare-fun res!442728 () Bool)

(assert (=> b!974416 (=> (not res!442728) (not e!627750))))

(assert (=> b!974416 (= res!442728 (matchR!1251 EmptyExpr!2715 (_1!6474 (get!3428 lt!349340))))))

(declare-fun b!974417 () Bool)

(assert (=> b!974417 (= e!627751 (Some!2289 (tuple2!11297 Nil!9929 s!10566)))))

(declare-fun b!974418 () Bool)

(assert (=> b!974418 (= e!627751 e!627747)))

(declare-fun c!159064 () Bool)

(assert (=> b!974418 (= c!159064 ((_ is Nil!9929) s!10566))))

(declare-fun b!974419 () Bool)

(assert (=> b!974419 (= e!627748 (not (isDefined!1932 lt!349340)))))

(declare-fun b!974420 () Bool)

(declare-fun res!442731 () Bool)

(assert (=> b!974420 (=> (not res!442731) (not e!627750))))

(assert (=> b!974420 (= res!442731 (matchR!1251 (regTwo!5942 r!15766) (_2!6474 (get!3428 lt!349340))))))

(assert (= (and d!287145 res!442730) b!974413))

(assert (= (and d!287145 c!159063) b!974417))

(assert (= (and d!287145 (not c!159063)) b!974418))

(assert (= (and b!974418 c!159064) b!974415))

(assert (= (and b!974418 (not c!159064)) b!974414))

(assert (= (and d!287145 res!442732) b!974416))

(assert (= (and b!974416 res!442728) b!974420))

(assert (= (and b!974420 res!442731) b!974412))

(assert (= (and d!287145 (not res!442729)) b!974419))

(declare-fun m!1176739 () Bool)

(assert (=> d!287145 m!1176739))

(declare-fun m!1176741 () Bool)

(assert (=> d!287145 m!1176741))

(declare-fun m!1176743 () Bool)

(assert (=> d!287145 m!1176743))

(declare-fun m!1176745 () Bool)

(assert (=> b!974413 m!1176745))

(declare-fun m!1176747 () Bool)

(assert (=> b!974420 m!1176747))

(declare-fun m!1176749 () Bool)

(assert (=> b!974420 m!1176749))

(assert (=> b!974419 m!1176739))

(assert (=> b!974416 m!1176747))

(declare-fun m!1176751 () Bool)

(assert (=> b!974416 m!1176751))

(assert (=> b!974412 m!1176747))

(declare-fun m!1176753 () Bool)

(assert (=> b!974412 m!1176753))

(declare-fun m!1176755 () Bool)

(assert (=> b!974414 m!1176755))

(assert (=> b!974414 m!1176755))

(declare-fun m!1176757 () Bool)

(assert (=> b!974414 m!1176757))

(declare-fun m!1176759 () Bool)

(assert (=> b!974414 m!1176759))

(assert (=> b!974414 m!1176755))

(declare-fun m!1176761 () Bool)

(assert (=> b!974414 m!1176761))

(assert (=> b!973876 d!287145))

(declare-fun d!287147 () Bool)

(assert (=> d!287147 (= (Exists!454 lambda!34565) (choose!6172 lambda!34565))))

(declare-fun bs!242868 () Bool)

(assert (= bs!242868 d!287147))

(declare-fun m!1176763 () Bool)

(assert (=> bs!242868 m!1176763))

(assert (=> b!973876 d!287147))

(declare-fun bs!242869 () Bool)

(declare-fun d!287149 () Bool)

(assert (= bs!242869 (and d!287149 b!974346)))

(declare-fun lambda!34594 () Int)

(assert (=> bs!242869 (not (= lambda!34594 lambda!34588))))

(declare-fun bs!242870 () Bool)

(assert (= bs!242870 (and d!287149 b!974360)))

(assert (=> bs!242870 (not (= lambda!34594 lambda!34591))))

(declare-fun bs!242871 () Bool)

(assert (= bs!242871 (and d!287149 b!974349)))

(assert (=> bs!242871 (not (= lambda!34594 lambda!34589))))

(declare-fun bs!242872 () Bool)

(assert (= bs!242872 (and d!287149 b!973876)))

(assert (=> bs!242872 (= lambda!34594 lambda!34565)))

(assert (=> bs!242872 (not (= lambda!34594 lambda!34566))))

(declare-fun bs!242873 () Bool)

(assert (= bs!242873 (and d!287149 b!974357)))

(assert (=> bs!242873 (not (= lambda!34594 lambda!34590))))

(assert (=> d!287149 true))

(assert (=> d!287149 true))

(assert (=> d!287149 true))

(assert (=> d!287149 (= (isDefined!1932 (findConcatSeparation!396 EmptyExpr!2715 (regTwo!5942 r!15766) Nil!9929 s!10566 s!10566)) (Exists!454 lambda!34594))))

(declare-fun lt!349344 () Unit!15089)

(declare-fun choose!6173 (Regex!2715 Regex!2715 List!9945) Unit!15089)

(assert (=> d!287149 (= lt!349344 (choose!6173 EmptyExpr!2715 (regTwo!5942 r!15766) s!10566))))

(assert (=> d!287149 (validRegex!1184 EmptyExpr!2715)))

(assert (=> d!287149 (= (lemmaFindConcatSeparationEquivalentToExists!396 EmptyExpr!2715 (regTwo!5942 r!15766) s!10566) lt!349344)))

(declare-fun bs!242874 () Bool)

(assert (= bs!242874 d!287149))

(assert (=> bs!242874 m!1176743))

(declare-fun m!1176765 () Bool)

(assert (=> bs!242874 m!1176765))

(assert (=> bs!242874 m!1176491))

(declare-fun m!1176767 () Bool)

(assert (=> bs!242874 m!1176767))

(assert (=> bs!242874 m!1176491))

(declare-fun m!1176769 () Bool)

(assert (=> bs!242874 m!1176769))

(assert (=> b!973876 d!287149))

(declare-fun bs!242875 () Bool)

(declare-fun d!287151 () Bool)

(assert (= bs!242875 (and d!287151 b!974346)))

(declare-fun lambda!34599 () Int)

(assert (=> bs!242875 (not (= lambda!34599 lambda!34588))))

(declare-fun bs!242876 () Bool)

(assert (= bs!242876 (and d!287151 d!287149)))

(assert (=> bs!242876 (= lambda!34599 lambda!34594)))

(declare-fun bs!242877 () Bool)

(assert (= bs!242877 (and d!287151 b!974360)))

(assert (=> bs!242877 (not (= lambda!34599 lambda!34591))))

(declare-fun bs!242878 () Bool)

(assert (= bs!242878 (and d!287151 b!974349)))

(assert (=> bs!242878 (not (= lambda!34599 lambda!34589))))

(declare-fun bs!242879 () Bool)

(assert (= bs!242879 (and d!287151 b!973876)))

(assert (=> bs!242879 (= lambda!34599 lambda!34565)))

(assert (=> bs!242879 (not (= lambda!34599 lambda!34566))))

(declare-fun bs!242880 () Bool)

(assert (= bs!242880 (and d!287151 b!974357)))

(assert (=> bs!242880 (not (= lambda!34599 lambda!34590))))

(assert (=> d!287151 true))

(assert (=> d!287151 true))

(assert (=> d!287151 true))

(declare-fun lambda!34600 () Int)

(assert (=> bs!242875 (not (= lambda!34600 lambda!34588))))

(assert (=> bs!242876 (not (= lambda!34600 lambda!34594))))

(assert (=> bs!242877 (= (= EmptyExpr!2715 (regOne!5942 r!15766)) (= lambda!34600 lambda!34591))))

(declare-fun bs!242881 () Bool)

(assert (= bs!242881 d!287151))

(assert (=> bs!242881 (not (= lambda!34600 lambda!34599))))

(assert (=> bs!242878 (= (and (= s!10566 (_2!6474 lt!349278)) (= EmptyExpr!2715 (regOne!5942 (regTwo!5942 r!15766))) (= (regTwo!5942 r!15766) (regTwo!5942 (regTwo!5942 r!15766)))) (= lambda!34600 lambda!34589))))

(assert (=> bs!242879 (not (= lambda!34600 lambda!34565))))

(assert (=> bs!242879 (= lambda!34600 lambda!34566)))

(assert (=> bs!242880 (not (= lambda!34600 lambda!34590))))

(assert (=> d!287151 true))

(assert (=> d!287151 true))

(assert (=> d!287151 true))

(assert (=> d!287151 (= (Exists!454 lambda!34599) (Exists!454 lambda!34600))))

(declare-fun lt!349347 () Unit!15089)

(declare-fun choose!6174 (Regex!2715 Regex!2715 List!9945) Unit!15089)

(assert (=> d!287151 (= lt!349347 (choose!6174 EmptyExpr!2715 (regTwo!5942 r!15766) s!10566))))

(assert (=> d!287151 (validRegex!1184 EmptyExpr!2715)))

(assert (=> d!287151 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!220 EmptyExpr!2715 (regTwo!5942 r!15766) s!10566) lt!349347)))

(declare-fun m!1176771 () Bool)

(assert (=> bs!242881 m!1176771))

(declare-fun m!1176773 () Bool)

(assert (=> bs!242881 m!1176773))

(declare-fun m!1176775 () Bool)

(assert (=> bs!242881 m!1176775))

(assert (=> bs!242881 m!1176743))

(assert (=> b!973876 d!287151))

(declare-fun b!974444 () Bool)

(declare-fun e!627760 () Bool)

(declare-fun tp!298117 () Bool)

(declare-fun tp!298118 () Bool)

(assert (=> b!974444 (= e!627760 (and tp!298117 tp!298118))))

(assert (=> b!973872 (= tp!298063 e!627760)))

(declare-fun b!974446 () Bool)

(declare-fun tp!298120 () Bool)

(declare-fun tp!298119 () Bool)

(assert (=> b!974446 (= e!627760 (and tp!298120 tp!298119))))

(declare-fun b!974443 () Bool)

(assert (=> b!974443 (= e!627760 tp_is_empty!5073)))

(declare-fun b!974445 () Bool)

(declare-fun tp!298121 () Bool)

(assert (=> b!974445 (= e!627760 tp!298121)))

(assert (= (and b!973872 ((_ is ElementMatch!2715) (regOne!5943 r!15766))) b!974443))

(assert (= (and b!973872 ((_ is Concat!4548) (regOne!5943 r!15766))) b!974444))

(assert (= (and b!973872 ((_ is Star!2715) (regOne!5943 r!15766))) b!974445))

(assert (= (and b!973872 ((_ is Union!2715) (regOne!5943 r!15766))) b!974446))

(declare-fun b!974448 () Bool)

(declare-fun e!627761 () Bool)

(declare-fun tp!298122 () Bool)

(declare-fun tp!298123 () Bool)

(assert (=> b!974448 (= e!627761 (and tp!298122 tp!298123))))

(assert (=> b!973872 (= tp!298065 e!627761)))

(declare-fun b!974450 () Bool)

(declare-fun tp!298125 () Bool)

(declare-fun tp!298124 () Bool)

(assert (=> b!974450 (= e!627761 (and tp!298125 tp!298124))))

(declare-fun b!974447 () Bool)

(assert (=> b!974447 (= e!627761 tp_is_empty!5073)))

(declare-fun b!974449 () Bool)

(declare-fun tp!298126 () Bool)

(assert (=> b!974449 (= e!627761 tp!298126)))

(assert (= (and b!973872 ((_ is ElementMatch!2715) (regTwo!5943 r!15766))) b!974447))

(assert (= (and b!973872 ((_ is Concat!4548) (regTwo!5943 r!15766))) b!974448))

(assert (= (and b!973872 ((_ is Star!2715) (regTwo!5943 r!15766))) b!974449))

(assert (= (and b!973872 ((_ is Union!2715) (regTwo!5943 r!15766))) b!974450))

(declare-fun b!974455 () Bool)

(declare-fun e!627764 () Bool)

(declare-fun tp!298129 () Bool)

(assert (=> b!974455 (= e!627764 (and tp_is_empty!5073 tp!298129))))

(assert (=> b!973877 (= tp!298068 e!627764)))

(assert (= (and b!973877 ((_ is Cons!9929) (t!100991 s!10566))) b!974455))

(declare-fun b!974457 () Bool)

(declare-fun e!627765 () Bool)

(declare-fun tp!298130 () Bool)

(declare-fun tp!298131 () Bool)

(assert (=> b!974457 (= e!627765 (and tp!298130 tp!298131))))

(assert (=> b!973869 (= tp!298066 e!627765)))

(declare-fun b!974459 () Bool)

(declare-fun tp!298133 () Bool)

(declare-fun tp!298132 () Bool)

(assert (=> b!974459 (= e!627765 (and tp!298133 tp!298132))))

(declare-fun b!974456 () Bool)

(assert (=> b!974456 (= e!627765 tp_is_empty!5073)))

(declare-fun b!974458 () Bool)

(declare-fun tp!298134 () Bool)

(assert (=> b!974458 (= e!627765 tp!298134)))

(assert (= (and b!973869 ((_ is ElementMatch!2715) (regOne!5942 r!15766))) b!974456))

(assert (= (and b!973869 ((_ is Concat!4548) (regOne!5942 r!15766))) b!974457))

(assert (= (and b!973869 ((_ is Star!2715) (regOne!5942 r!15766))) b!974458))

(assert (= (and b!973869 ((_ is Union!2715) (regOne!5942 r!15766))) b!974459))

(declare-fun b!974461 () Bool)

(declare-fun e!627766 () Bool)

(declare-fun tp!298135 () Bool)

(declare-fun tp!298136 () Bool)

(assert (=> b!974461 (= e!627766 (and tp!298135 tp!298136))))

(assert (=> b!973869 (= tp!298067 e!627766)))

(declare-fun b!974463 () Bool)

(declare-fun tp!298138 () Bool)

(declare-fun tp!298137 () Bool)

(assert (=> b!974463 (= e!627766 (and tp!298138 tp!298137))))

(declare-fun b!974460 () Bool)

(assert (=> b!974460 (= e!627766 tp_is_empty!5073)))

(declare-fun b!974462 () Bool)

(declare-fun tp!298139 () Bool)

(assert (=> b!974462 (= e!627766 tp!298139)))

(assert (= (and b!973869 ((_ is ElementMatch!2715) (regTwo!5942 r!15766))) b!974460))

(assert (= (and b!973869 ((_ is Concat!4548) (regTwo!5942 r!15766))) b!974461))

(assert (= (and b!973869 ((_ is Star!2715) (regTwo!5942 r!15766))) b!974462))

(assert (= (and b!973869 ((_ is Union!2715) (regTwo!5942 r!15766))) b!974463))

(declare-fun b!974465 () Bool)

(declare-fun e!627767 () Bool)

(declare-fun tp!298140 () Bool)

(declare-fun tp!298141 () Bool)

(assert (=> b!974465 (= e!627767 (and tp!298140 tp!298141))))

(assert (=> b!973870 (= tp!298064 e!627767)))

(declare-fun b!974467 () Bool)

(declare-fun tp!298143 () Bool)

(declare-fun tp!298142 () Bool)

(assert (=> b!974467 (= e!627767 (and tp!298143 tp!298142))))

(declare-fun b!974464 () Bool)

(assert (=> b!974464 (= e!627767 tp_is_empty!5073)))

(declare-fun b!974466 () Bool)

(declare-fun tp!298144 () Bool)

(assert (=> b!974466 (= e!627767 tp!298144)))

(assert (= (and b!973870 ((_ is ElementMatch!2715) (reg!3044 r!15766))) b!974464))

(assert (= (and b!973870 ((_ is Concat!4548) (reg!3044 r!15766))) b!974465))

(assert (= (and b!973870 ((_ is Star!2715) (reg!3044 r!15766))) b!974466))

(assert (= (and b!973870 ((_ is Union!2715) (reg!3044 r!15766))) b!974467))

(check-sat (not b!974150) (not d!287151) (not bm!62069) (not b!974367) (not b!974173) (not b!974466) (not d!287097) (not d!287139) (not b!974166) (not b!974155) (not bm!62056) (not bm!62055) (not d!287101) (not b!974159) (not b!974383) (not bm!62103) (not b!974066) (not d!287149) (not b!974457) (not b!974386) (not b!974369) (not b!974169) (not b!974351) (not b!974381) (not b!974413) (not bm!62074) (not b!974151) (not b!974382) (not b!974165) (not b!974455) (not bm!62101) (not d!287147) (not d!287129) (not b!974448) (not b!974419) (not b!974450) (not d!287131) (not b!974459) (not b!974446) (not b!974348) (not b!974416) (not b!974420) (not b!974184) (not b!974175) (not b!974392) (not b!974444) (not bm!62066) (not b!974368) (not d!287103) (not bm!62102) (not b!974198) (not b!974449) (not d!287087) (not b!974362) (not b!974359) (not b!974378) (not d!287133) (not bm!62105) (not bm!62106) (not b!974461) (not bm!62104) (not b!974465) (not d!287141) (not b!974445) (not b!973946) (not b!974372) (not d!287071) (not b!974161) (not b!974467) (not bm!62073) (not b!974390) (not bm!62026) (not b!974414) (not bm!62070) (not b!974412) (not bm!62025) (not bm!62065) (not b!974463) (not d!287125) (not d!287145) tp_is_empty!5073 (not b!974164) (not b!974376) (not b!974152) (not b!974458) (not b!974462))
(check-sat)
(get-model)

(declare-fun bs!242946 () Bool)

(declare-fun b!974614 () Bool)

(assert (= bs!242946 (and b!974614 b!974346)))

(declare-fun lambda!34607 () Int)

(assert (=> bs!242946 (= (and (= (reg!3044 (regTwo!5943 (regTwo!5942 r!15766))) (reg!3044 (regTwo!5942 r!15766))) (= (regTwo!5943 (regTwo!5942 r!15766)) (regTwo!5942 r!15766))) (= lambda!34607 lambda!34588))))

(declare-fun bs!242947 () Bool)

(assert (= bs!242947 (and b!974614 d!287151)))

(assert (=> bs!242947 (not (= lambda!34607 lambda!34600))))

(declare-fun bs!242948 () Bool)

(assert (= bs!242948 (and b!974614 d!287149)))

(assert (=> bs!242948 (not (= lambda!34607 lambda!34594))))

(declare-fun bs!242949 () Bool)

(assert (= bs!242949 (and b!974614 b!974360)))

(assert (=> bs!242949 (not (= lambda!34607 lambda!34591))))

(assert (=> bs!242947 (not (= lambda!34607 lambda!34599))))

(declare-fun bs!242950 () Bool)

(assert (= bs!242950 (and b!974614 b!974349)))

(assert (=> bs!242950 (not (= lambda!34607 lambda!34589))))

(declare-fun bs!242951 () Bool)

(assert (= bs!242951 (and b!974614 b!973876)))

(assert (=> bs!242951 (not (= lambda!34607 lambda!34565))))

(assert (=> bs!242951 (not (= lambda!34607 lambda!34566))))

(declare-fun bs!242954 () Bool)

(assert (= bs!242954 (and b!974614 b!974357)))

(assert (=> bs!242954 (= (and (= (_2!6474 lt!349278) s!10566) (= (reg!3044 (regTwo!5943 (regTwo!5942 r!15766))) (reg!3044 r!15766)) (= (regTwo!5943 (regTwo!5942 r!15766)) r!15766)) (= lambda!34607 lambda!34590))))

(assert (=> b!974614 true))

(assert (=> b!974614 true))

(declare-fun bs!242955 () Bool)

(declare-fun b!974617 () Bool)

(assert (= bs!242955 (and b!974617 b!974346)))

(declare-fun lambda!34608 () Int)

(assert (=> bs!242955 (not (= lambda!34608 lambda!34588))))

(declare-fun bs!242956 () Bool)

(assert (= bs!242956 (and b!974617 d!287151)))

(assert (=> bs!242956 (= (and (= (_2!6474 lt!349278) s!10566) (= (regOne!5942 (regTwo!5943 (regTwo!5942 r!15766))) EmptyExpr!2715) (= (regTwo!5942 (regTwo!5943 (regTwo!5942 r!15766))) (regTwo!5942 r!15766))) (= lambda!34608 lambda!34600))))

(declare-fun bs!242957 () Bool)

(assert (= bs!242957 (and b!974617 d!287149)))

(assert (=> bs!242957 (not (= lambda!34608 lambda!34594))))

(declare-fun bs!242958 () Bool)

(assert (= bs!242958 (and b!974617 b!974360)))

(assert (=> bs!242958 (= (and (= (_2!6474 lt!349278) s!10566) (= (regOne!5942 (regTwo!5943 (regTwo!5942 r!15766))) (regOne!5942 r!15766)) (= (regTwo!5942 (regTwo!5943 (regTwo!5942 r!15766))) (regTwo!5942 r!15766))) (= lambda!34608 lambda!34591))))

(assert (=> bs!242956 (not (= lambda!34608 lambda!34599))))

(declare-fun bs!242959 () Bool)

(assert (= bs!242959 (and b!974617 b!974349)))

(assert (=> bs!242959 (= (and (= (regOne!5942 (regTwo!5943 (regTwo!5942 r!15766))) (regOne!5942 (regTwo!5942 r!15766))) (= (regTwo!5942 (regTwo!5943 (regTwo!5942 r!15766))) (regTwo!5942 (regTwo!5942 r!15766)))) (= lambda!34608 lambda!34589))))

(declare-fun bs!242960 () Bool)

(assert (= bs!242960 (and b!974617 b!973876)))

(assert (=> bs!242960 (not (= lambda!34608 lambda!34565))))

(assert (=> bs!242960 (= (and (= (_2!6474 lt!349278) s!10566) (= (regOne!5942 (regTwo!5943 (regTwo!5942 r!15766))) EmptyExpr!2715) (= (regTwo!5942 (regTwo!5943 (regTwo!5942 r!15766))) (regTwo!5942 r!15766))) (= lambda!34608 lambda!34566))))

(declare-fun bs!242961 () Bool)

(assert (= bs!242961 (and b!974617 b!974614)))

(assert (=> bs!242961 (not (= lambda!34608 lambda!34607))))

(declare-fun bs!242962 () Bool)

(assert (= bs!242962 (and b!974617 b!974357)))

(assert (=> bs!242962 (not (= lambda!34608 lambda!34590))))

(assert (=> b!974617 true))

(assert (=> b!974617 true))

(declare-fun b!974612 () Bool)

(declare-fun res!442793 () Bool)

(declare-fun e!627858 () Bool)

(assert (=> b!974612 (=> res!442793 e!627858)))

(declare-fun call!62145 () Bool)

(assert (=> b!974612 (= res!442793 call!62145)))

(declare-fun e!627856 () Bool)

(assert (=> b!974612 (= e!627856 e!627858)))

(declare-fun b!974613 () Bool)

(declare-fun e!627857 () Bool)

(declare-fun e!627855 () Bool)

(assert (=> b!974613 (= e!627857 e!627855)))

(declare-fun res!442794 () Bool)

(assert (=> b!974613 (= res!442794 (not ((_ is EmptyLang!2715) (regTwo!5943 (regTwo!5942 r!15766)))))))

(assert (=> b!974613 (=> (not res!442794) (not e!627855))))

(declare-fun call!62146 () Bool)

(assert (=> b!974614 (= e!627858 call!62146)))

(declare-fun b!974615 () Bool)

(declare-fun c!159116 () Bool)

(assert (=> b!974615 (= c!159116 ((_ is ElementMatch!2715) (regTwo!5943 (regTwo!5942 r!15766))))))

(declare-fun e!627853 () Bool)

(assert (=> b!974615 (= e!627855 e!627853)))

(declare-fun b!974616 () Bool)

(declare-fun e!627852 () Bool)

(assert (=> b!974616 (= e!627852 (matchRSpec!514 (regTwo!5943 (regTwo!5943 (regTwo!5942 r!15766))) (_2!6474 lt!349278)))))

(assert (=> b!974617 (= e!627856 call!62146)))

(declare-fun b!974618 () Bool)

(declare-fun c!159115 () Bool)

(assert (=> b!974618 (= c!159115 ((_ is Union!2715) (regTwo!5943 (regTwo!5942 r!15766))))))

(declare-fun e!627854 () Bool)

(assert (=> b!974618 (= e!627853 e!627854)))

(declare-fun b!974619 () Bool)

(assert (=> b!974619 (= e!627854 e!627852)))

(declare-fun res!442795 () Bool)

(assert (=> b!974619 (= res!442795 (matchRSpec!514 (regOne!5943 (regTwo!5943 (regTwo!5942 r!15766))) (_2!6474 lt!349278)))))

(assert (=> b!974619 (=> res!442795 e!627852)))

(declare-fun bm!62140 () Bool)

(assert (=> bm!62140 (= call!62145 (isEmpty!6242 (_2!6474 lt!349278)))))

(declare-fun bm!62141 () Bool)

(declare-fun c!159113 () Bool)

(assert (=> bm!62141 (= call!62146 (Exists!454 (ite c!159113 lambda!34607 lambda!34608)))))

(declare-fun d!287205 () Bool)

(declare-fun c!159114 () Bool)

(assert (=> d!287205 (= c!159114 ((_ is EmptyExpr!2715) (regTwo!5943 (regTwo!5942 r!15766))))))

(assert (=> d!287205 (= (matchRSpec!514 (regTwo!5943 (regTwo!5942 r!15766)) (_2!6474 lt!349278)) e!627857)))

(declare-fun b!974620 () Bool)

(assert (=> b!974620 (= e!627853 (= (_2!6474 lt!349278) (Cons!9929 (c!158928 (regTwo!5943 (regTwo!5942 r!15766))) Nil!9929)))))

(declare-fun b!974621 () Bool)

(assert (=> b!974621 (= e!627854 e!627856)))

(assert (=> b!974621 (= c!159113 ((_ is Star!2715) (regTwo!5943 (regTwo!5942 r!15766))))))

(declare-fun b!974622 () Bool)

(assert (=> b!974622 (= e!627857 call!62145)))

(assert (= (and d!287205 c!159114) b!974622))

(assert (= (and d!287205 (not c!159114)) b!974613))

(assert (= (and b!974613 res!442794) b!974615))

(assert (= (and b!974615 c!159116) b!974620))

(assert (= (and b!974615 (not c!159116)) b!974618))

(assert (= (and b!974618 c!159115) b!974619))

(assert (= (and b!974618 (not c!159115)) b!974621))

(assert (= (and b!974619 (not res!442795)) b!974616))

(assert (= (and b!974621 c!159113) b!974612))

(assert (= (and b!974621 (not c!159113)) b!974617))

(assert (= (and b!974612 (not res!442793)) b!974614))

(assert (= (or b!974614 b!974617) bm!62141))

(assert (= (or b!974622 b!974612) bm!62140))

(declare-fun m!1176973 () Bool)

(assert (=> b!974616 m!1176973))

(declare-fun m!1176975 () Bool)

(assert (=> b!974619 m!1176975))

(assert (=> bm!62140 m!1176619))

(declare-fun m!1176977 () Bool)

(assert (=> bm!62141 m!1176977))

(assert (=> b!974348 d!287205))

(declare-fun b!974688 () Bool)

(declare-fun e!627897 () Bool)

(declare-fun e!627895 () Bool)

(assert (=> b!974688 (= e!627897 e!627895)))

(declare-fun res!442834 () Bool)

(assert (=> b!974688 (=> (not res!442834) (not e!627895))))

(declare-fun lt!349369 () Bool)

(assert (=> b!974688 (= res!442834 (not lt!349369))))

(declare-fun d!287229 () Bool)

(declare-fun e!627892 () Bool)

(assert (=> d!287229 e!627892))

(declare-fun c!159134 () Bool)

(assert (=> d!287229 (= c!159134 ((_ is EmptyExpr!2715) (derivativeStep!641 (removeUselessConcat!346 (regTwo!5942 r!15766)) (head!1794 (_2!6474 lt!349278)))))))

(declare-fun e!627893 () Bool)

(assert (=> d!287229 (= lt!349369 e!627893)))

(declare-fun c!159136 () Bool)

(assert (=> d!287229 (= c!159136 (isEmpty!6242 (tail!1356 (_2!6474 lt!349278))))))

(assert (=> d!287229 (validRegex!1184 (derivativeStep!641 (removeUselessConcat!346 (regTwo!5942 r!15766)) (head!1794 (_2!6474 lt!349278))))))

(assert (=> d!287229 (= (matchR!1251 (derivativeStep!641 (removeUselessConcat!346 (regTwo!5942 r!15766)) (head!1794 (_2!6474 lt!349278))) (tail!1356 (_2!6474 lt!349278))) lt!349369)))

(declare-fun b!974689 () Bool)

(declare-fun e!627894 () Bool)

(assert (=> b!974689 (= e!627894 (not (= (head!1794 (tail!1356 (_2!6474 lt!349278))) (c!158928 (derivativeStep!641 (removeUselessConcat!346 (regTwo!5942 r!15766)) (head!1794 (_2!6474 lt!349278)))))))))

(declare-fun b!974690 () Bool)

(assert (=> b!974690 (= e!627893 (matchR!1251 (derivativeStep!641 (derivativeStep!641 (removeUselessConcat!346 (regTwo!5942 r!15766)) (head!1794 (_2!6474 lt!349278))) (head!1794 (tail!1356 (_2!6474 lt!349278)))) (tail!1356 (tail!1356 (_2!6474 lt!349278)))))))

(declare-fun b!974691 () Bool)

(assert (=> b!974691 (= e!627893 (nullable!835 (derivativeStep!641 (removeUselessConcat!346 (regTwo!5942 r!15766)) (head!1794 (_2!6474 lt!349278)))))))

(declare-fun b!974692 () Bool)

(declare-fun res!442831 () Bool)

(assert (=> b!974692 (=> res!442831 e!627897)))

(assert (=> b!974692 (= res!442831 (not ((_ is ElementMatch!2715) (derivativeStep!641 (removeUselessConcat!346 (regTwo!5942 r!15766)) (head!1794 (_2!6474 lt!349278))))))))

(declare-fun e!627898 () Bool)

(assert (=> b!974692 (= e!627898 e!627897)))

(declare-fun b!974693 () Bool)

(assert (=> b!974693 (= e!627898 (not lt!349369))))

(declare-fun b!974694 () Bool)

(declare-fun res!442830 () Bool)

(declare-fun e!627896 () Bool)

(assert (=> b!974694 (=> (not res!442830) (not e!627896))))

(assert (=> b!974694 (= res!442830 (isEmpty!6242 (tail!1356 (tail!1356 (_2!6474 lt!349278)))))))

(declare-fun b!974695 () Bool)

(declare-fun res!442832 () Bool)

(assert (=> b!974695 (=> res!442832 e!627897)))

(assert (=> b!974695 (= res!442832 e!627896)))

(declare-fun res!442829 () Bool)

(assert (=> b!974695 (=> (not res!442829) (not e!627896))))

(assert (=> b!974695 (= res!442829 lt!349369)))

(declare-fun b!974696 () Bool)

(assert (=> b!974696 (= e!627895 e!627894)))

(declare-fun res!442828 () Bool)

(assert (=> b!974696 (=> res!442828 e!627894)))

(declare-fun call!62154 () Bool)

(assert (=> b!974696 (= res!442828 call!62154)))

(declare-fun b!974697 () Bool)

(assert (=> b!974697 (= e!627892 e!627898)))

(declare-fun c!159135 () Bool)

(assert (=> b!974697 (= c!159135 ((_ is EmptyLang!2715) (derivativeStep!641 (removeUselessConcat!346 (regTwo!5942 r!15766)) (head!1794 (_2!6474 lt!349278)))))))

(declare-fun b!974698 () Bool)

(declare-fun res!442833 () Bool)

(assert (=> b!974698 (=> res!442833 e!627894)))

(assert (=> b!974698 (= res!442833 (not (isEmpty!6242 (tail!1356 (tail!1356 (_2!6474 lt!349278))))))))

(declare-fun b!974699 () Bool)

(assert (=> b!974699 (= e!627892 (= lt!349369 call!62154))))

(declare-fun bm!62149 () Bool)

(assert (=> bm!62149 (= call!62154 (isEmpty!6242 (tail!1356 (_2!6474 lt!349278))))))

(declare-fun b!974700 () Bool)

(assert (=> b!974700 (= e!627896 (= (head!1794 (tail!1356 (_2!6474 lt!349278))) (c!158928 (derivativeStep!641 (removeUselessConcat!346 (regTwo!5942 r!15766)) (head!1794 (_2!6474 lt!349278))))))))

(declare-fun b!974701 () Bool)

(declare-fun res!442827 () Bool)

(assert (=> b!974701 (=> (not res!442827) (not e!627896))))

(assert (=> b!974701 (= res!442827 (not call!62154))))

(assert (= (and d!287229 c!159136) b!974691))

(assert (= (and d!287229 (not c!159136)) b!974690))

(assert (= (and d!287229 c!159134) b!974699))

(assert (= (and d!287229 (not c!159134)) b!974697))

(assert (= (and b!974697 c!159135) b!974693))

(assert (= (and b!974697 (not c!159135)) b!974692))

(assert (= (and b!974692 (not res!442831)) b!974695))

(assert (= (and b!974695 res!442829) b!974701))

(assert (= (and b!974701 res!442827) b!974694))

(assert (= (and b!974694 res!442830) b!974700))

(assert (= (and b!974695 (not res!442832)) b!974688))

(assert (= (and b!974688 res!442834) b!974696))

(assert (= (and b!974696 (not res!442828)) b!974698))

(assert (= (and b!974698 (not res!442833)) b!974689))

(assert (= (or b!974699 b!974696 b!974701) bm!62149))

(assert (=> b!974691 m!1176623))

(declare-fun m!1176993 () Bool)

(assert (=> b!974691 m!1176993))

(assert (=> b!974689 m!1176615))

(declare-fun m!1176995 () Bool)

(assert (=> b!974689 m!1176995))

(assert (=> b!974698 m!1176615))

(declare-fun m!1176997 () Bool)

(assert (=> b!974698 m!1176997))

(assert (=> b!974698 m!1176997))

(declare-fun m!1176999 () Bool)

(assert (=> b!974698 m!1176999))

(assert (=> bm!62149 m!1176615))

(assert (=> bm!62149 m!1176617))

(assert (=> b!974700 m!1176615))

(assert (=> b!974700 m!1176995))

(assert (=> d!287229 m!1176615))

(assert (=> d!287229 m!1176617))

(assert (=> d!287229 m!1176623))

(declare-fun m!1177001 () Bool)

(assert (=> d!287229 m!1177001))

(assert (=> b!974694 m!1176615))

(assert (=> b!974694 m!1176997))

(assert (=> b!974694 m!1176997))

(assert (=> b!974694 m!1176999))

(assert (=> b!974690 m!1176615))

(assert (=> b!974690 m!1176995))

(assert (=> b!974690 m!1176623))

(assert (=> b!974690 m!1176995))

(declare-fun m!1177003 () Bool)

(assert (=> b!974690 m!1177003))

(assert (=> b!974690 m!1176615))

(assert (=> b!974690 m!1176997))

(assert (=> b!974690 m!1177003))

(assert (=> b!974690 m!1176997))

(declare-fun m!1177005 () Bool)

(assert (=> b!974690 m!1177005))

(assert (=> b!974151 d!287229))

(declare-fun call!62177 () Regex!2715)

(declare-fun c!159159 () Bool)

(declare-fun bm!62169 () Bool)

(declare-fun c!159158 () Bool)

(assert (=> bm!62169 (= call!62177 (derivativeStep!641 (ite c!159159 (regTwo!5943 (removeUselessConcat!346 (regTwo!5942 r!15766))) (ite c!159158 (regTwo!5942 (removeUselessConcat!346 (regTwo!5942 r!15766))) (regOne!5942 (removeUselessConcat!346 (regTwo!5942 r!15766))))) (head!1794 (_2!6474 lt!349278))))))

(declare-fun bm!62170 () Bool)

(declare-fun call!62174 () Regex!2715)

(assert (=> bm!62170 (= call!62174 call!62177)))

(declare-fun d!287235 () Bool)

(declare-fun lt!349372 () Regex!2715)

(assert (=> d!287235 (validRegex!1184 lt!349372)))

(declare-fun e!627942 () Regex!2715)

(assert (=> d!287235 (= lt!349372 e!627942)))

(declare-fun c!159160 () Bool)

(assert (=> d!287235 (= c!159160 (or ((_ is EmptyExpr!2715) (removeUselessConcat!346 (regTwo!5942 r!15766))) ((_ is EmptyLang!2715) (removeUselessConcat!346 (regTwo!5942 r!15766)))))))

(assert (=> d!287235 (validRegex!1184 (removeUselessConcat!346 (regTwo!5942 r!15766)))))

(assert (=> d!287235 (= (derivativeStep!641 (removeUselessConcat!346 (regTwo!5942 r!15766)) (head!1794 (_2!6474 lt!349278))) lt!349372)))

(declare-fun b!974768 () Bool)

(declare-fun e!627943 () Regex!2715)

(declare-fun e!627945 () Regex!2715)

(assert (=> b!974768 (= e!627943 e!627945)))

(declare-fun c!159161 () Bool)

(assert (=> b!974768 (= c!159161 ((_ is Star!2715) (removeUselessConcat!346 (regTwo!5942 r!15766))))))

(declare-fun b!974769 () Bool)

(assert (=> b!974769 (= c!159158 (nullable!835 (regOne!5942 (removeUselessConcat!346 (regTwo!5942 r!15766)))))))

(declare-fun e!627944 () Regex!2715)

(assert (=> b!974769 (= e!627945 e!627944)))

(declare-fun b!974770 () Bool)

(assert (=> b!974770 (= e!627942 EmptyLang!2715)))

(declare-fun b!974771 () Bool)

(declare-fun e!627941 () Regex!2715)

(assert (=> b!974771 (= e!627941 (ite (= (head!1794 (_2!6474 lt!349278)) (c!158928 (removeUselessConcat!346 (regTwo!5942 r!15766)))) EmptyExpr!2715 EmptyLang!2715))))

(declare-fun bm!62171 () Bool)

(declare-fun call!62175 () Regex!2715)

(declare-fun call!62176 () Regex!2715)

(assert (=> bm!62171 (= call!62175 call!62176)))

(declare-fun b!974772 () Bool)

(assert (=> b!974772 (= c!159159 ((_ is Union!2715) (removeUselessConcat!346 (regTwo!5942 r!15766))))))

(assert (=> b!974772 (= e!627941 e!627943)))

(declare-fun b!974773 () Bool)

(assert (=> b!974773 (= e!627944 (Union!2715 (Concat!4548 call!62175 (regTwo!5942 (removeUselessConcat!346 (regTwo!5942 r!15766)))) call!62174))))

(declare-fun b!974774 () Bool)

(assert (=> b!974774 (= e!627942 e!627941)))

(declare-fun c!159157 () Bool)

(assert (=> b!974774 (= c!159157 ((_ is ElementMatch!2715) (removeUselessConcat!346 (regTwo!5942 r!15766))))))

(declare-fun b!974775 () Bool)

(assert (=> b!974775 (= e!627945 (Concat!4548 call!62175 (removeUselessConcat!346 (regTwo!5942 r!15766))))))

(declare-fun b!974776 () Bool)

(assert (=> b!974776 (= e!627943 (Union!2715 call!62176 call!62177))))

(declare-fun bm!62172 () Bool)

(assert (=> bm!62172 (= call!62176 (derivativeStep!641 (ite c!159159 (regOne!5943 (removeUselessConcat!346 (regTwo!5942 r!15766))) (ite c!159161 (reg!3044 (removeUselessConcat!346 (regTwo!5942 r!15766))) (regOne!5942 (removeUselessConcat!346 (regTwo!5942 r!15766))))) (head!1794 (_2!6474 lt!349278))))))

(declare-fun b!974777 () Bool)

(assert (=> b!974777 (= e!627944 (Union!2715 (Concat!4548 call!62174 (regTwo!5942 (removeUselessConcat!346 (regTwo!5942 r!15766)))) EmptyLang!2715))))

(assert (= (and d!287235 c!159160) b!974770))

(assert (= (and d!287235 (not c!159160)) b!974774))

(assert (= (and b!974774 c!159157) b!974771))

(assert (= (and b!974774 (not c!159157)) b!974772))

(assert (= (and b!974772 c!159159) b!974776))

(assert (= (and b!974772 (not c!159159)) b!974768))

(assert (= (and b!974768 c!159161) b!974775))

(assert (= (and b!974768 (not c!159161)) b!974769))

(assert (= (and b!974769 c!159158) b!974773))

(assert (= (and b!974769 (not c!159158)) b!974777))

(assert (= (or b!974773 b!974777) bm!62170))

(assert (= (or b!974775 b!974773) bm!62171))

(assert (= (or b!974776 bm!62171) bm!62172))

(assert (= (or b!974776 bm!62170) bm!62169))

(assert (=> bm!62169 m!1176613))

(declare-fun m!1177045 () Bool)

(assert (=> bm!62169 m!1177045))

(declare-fun m!1177047 () Bool)

(assert (=> d!287235 m!1177047))

(assert (=> d!287235 m!1176495))

(assert (=> d!287235 m!1176621))

(declare-fun m!1177049 () Bool)

(assert (=> b!974769 m!1177049))

(assert (=> bm!62172 m!1176613))

(declare-fun m!1177051 () Bool)

(assert (=> bm!62172 m!1177051))

(assert (=> b!974151 d!287235))

(declare-fun d!287255 () Bool)

(assert (=> d!287255 (= (head!1794 (_2!6474 lt!349278)) (h!15330 (_2!6474 lt!349278)))))

(assert (=> b!974151 d!287255))

(declare-fun d!287257 () Bool)

(assert (=> d!287257 (= (tail!1356 (_2!6474 lt!349278)) (t!100991 (_2!6474 lt!349278)))))

(assert (=> b!974151 d!287257))

(assert (=> d!287125 d!287133))

(assert (=> d!287125 d!287115))

(declare-fun d!287259 () Bool)

(assert (=> d!287259 (= (matchR!1251 (regTwo!5942 r!15766) (_2!6474 lt!349278)) (matchRSpec!514 (regTwo!5942 r!15766) (_2!6474 lt!349278)))))

(assert (=> d!287259 true))

(declare-fun _$88!3033 () Unit!15089)

(assert (=> d!287259 (= (choose!6171 (regTwo!5942 r!15766) (_2!6474 lt!349278)) _$88!3033)))

(declare-fun bs!243009 () Bool)

(assert (= bs!243009 d!287259))

(assert (=> bs!243009 m!1176515))

(assert (=> bs!243009 m!1176505))

(assert (=> d!287125 d!287259))

(assert (=> d!287125 d!287105))

(declare-fun b!974793 () Bool)

(declare-fun e!627959 () Bool)

(declare-fun e!627957 () Bool)

(assert (=> b!974793 (= e!627959 e!627957)))

(declare-fun res!442876 () Bool)

(assert (=> b!974793 (=> (not res!442876) (not e!627957))))

(declare-fun lt!349374 () Bool)

(assert (=> b!974793 (= res!442876 (not lt!349374))))

(declare-fun d!287261 () Bool)

(declare-fun e!627954 () Bool)

(assert (=> d!287261 e!627954))

(declare-fun c!159167 () Bool)

(assert (=> d!287261 (= c!159167 ((_ is EmptyExpr!2715) (derivativeStep!641 (regTwo!5942 r!15766) (head!1794 (_2!6474 lt!349278)))))))

(declare-fun e!627955 () Bool)

(assert (=> d!287261 (= lt!349374 e!627955)))

(declare-fun c!159169 () Bool)

(assert (=> d!287261 (= c!159169 (isEmpty!6242 (tail!1356 (_2!6474 lt!349278))))))

(assert (=> d!287261 (validRegex!1184 (derivativeStep!641 (regTwo!5942 r!15766) (head!1794 (_2!6474 lt!349278))))))

(assert (=> d!287261 (= (matchR!1251 (derivativeStep!641 (regTwo!5942 r!15766) (head!1794 (_2!6474 lt!349278))) (tail!1356 (_2!6474 lt!349278))) lt!349374)))

(declare-fun b!974794 () Bool)

(declare-fun e!627956 () Bool)

(assert (=> b!974794 (= e!627956 (not (= (head!1794 (tail!1356 (_2!6474 lt!349278))) (c!158928 (derivativeStep!641 (regTwo!5942 r!15766) (head!1794 (_2!6474 lt!349278)))))))))

(declare-fun b!974795 () Bool)

(assert (=> b!974795 (= e!627955 (matchR!1251 (derivativeStep!641 (derivativeStep!641 (regTwo!5942 r!15766) (head!1794 (_2!6474 lt!349278))) (head!1794 (tail!1356 (_2!6474 lt!349278)))) (tail!1356 (tail!1356 (_2!6474 lt!349278)))))))

(declare-fun b!974796 () Bool)

(assert (=> b!974796 (= e!627955 (nullable!835 (derivativeStep!641 (regTwo!5942 r!15766) (head!1794 (_2!6474 lt!349278)))))))

(declare-fun b!974797 () Bool)

(declare-fun res!442873 () Bool)

(assert (=> b!974797 (=> res!442873 e!627959)))

(assert (=> b!974797 (= res!442873 (not ((_ is ElementMatch!2715) (derivativeStep!641 (regTwo!5942 r!15766) (head!1794 (_2!6474 lt!349278))))))))

(declare-fun e!627960 () Bool)

(assert (=> b!974797 (= e!627960 e!627959)))

(declare-fun b!974798 () Bool)

(assert (=> b!974798 (= e!627960 (not lt!349374))))

(declare-fun b!974799 () Bool)

(declare-fun res!442872 () Bool)

(declare-fun e!627958 () Bool)

(assert (=> b!974799 (=> (not res!442872) (not e!627958))))

(assert (=> b!974799 (= res!442872 (isEmpty!6242 (tail!1356 (tail!1356 (_2!6474 lt!349278)))))))

(declare-fun b!974800 () Bool)

(declare-fun res!442874 () Bool)

(assert (=> b!974800 (=> res!442874 e!627959)))

(assert (=> b!974800 (= res!442874 e!627958)))

(declare-fun res!442871 () Bool)

(assert (=> b!974800 (=> (not res!442871) (not e!627958))))

(assert (=> b!974800 (= res!442871 lt!349374)))

(declare-fun b!974801 () Bool)

(assert (=> b!974801 (= e!627957 e!627956)))

(declare-fun res!442870 () Bool)

(assert (=> b!974801 (=> res!442870 e!627956)))

(declare-fun call!62183 () Bool)

(assert (=> b!974801 (= res!442870 call!62183)))

(declare-fun b!974802 () Bool)

(assert (=> b!974802 (= e!627954 e!627960)))

(declare-fun c!159168 () Bool)

(assert (=> b!974802 (= c!159168 ((_ is EmptyLang!2715) (derivativeStep!641 (regTwo!5942 r!15766) (head!1794 (_2!6474 lt!349278)))))))

(declare-fun b!974803 () Bool)

(declare-fun res!442875 () Bool)

(assert (=> b!974803 (=> res!442875 e!627956)))

(assert (=> b!974803 (= res!442875 (not (isEmpty!6242 (tail!1356 (tail!1356 (_2!6474 lt!349278))))))))

(declare-fun b!974804 () Bool)

(assert (=> b!974804 (= e!627954 (= lt!349374 call!62183))))

(declare-fun bm!62178 () Bool)

(assert (=> bm!62178 (= call!62183 (isEmpty!6242 (tail!1356 (_2!6474 lt!349278))))))

(declare-fun b!974805 () Bool)

(assert (=> b!974805 (= e!627958 (= (head!1794 (tail!1356 (_2!6474 lt!349278))) (c!158928 (derivativeStep!641 (regTwo!5942 r!15766) (head!1794 (_2!6474 lt!349278))))))))

(declare-fun b!974806 () Bool)

(declare-fun res!442869 () Bool)

(assert (=> b!974806 (=> (not res!442869) (not e!627958))))

(assert (=> b!974806 (= res!442869 (not call!62183))))

(assert (= (and d!287261 c!159169) b!974796))

(assert (= (and d!287261 (not c!159169)) b!974795))

(assert (= (and d!287261 c!159167) b!974804))

(assert (= (and d!287261 (not c!159167)) b!974802))

(assert (= (and b!974802 c!159168) b!974798))

(assert (= (and b!974802 (not c!159168)) b!974797))

(assert (= (and b!974797 (not res!442873)) b!974800))

(assert (= (and b!974800 res!442871) b!974806))

(assert (= (and b!974806 res!442869) b!974799))

(assert (= (and b!974799 res!442872) b!974805))

(assert (= (and b!974800 (not res!442874)) b!974793))

(assert (= (and b!974793 res!442876) b!974801))

(assert (= (and b!974801 (not res!442870)) b!974803))

(assert (= (and b!974803 (not res!442875)) b!974794))

(assert (= (or b!974804 b!974801 b!974806) bm!62178))

(assert (=> b!974796 m!1176731))

(declare-fun m!1177053 () Bool)

(assert (=> b!974796 m!1177053))

(assert (=> b!974794 m!1176615))

(assert (=> b!974794 m!1176995))

(assert (=> b!974803 m!1176615))

(assert (=> b!974803 m!1176997))

(assert (=> b!974803 m!1176997))

(assert (=> b!974803 m!1176999))

(assert (=> bm!62178 m!1176615))

(assert (=> bm!62178 m!1176617))

(assert (=> b!974805 m!1176615))

(assert (=> b!974805 m!1176995))

(assert (=> d!287261 m!1176615))

(assert (=> d!287261 m!1176617))

(assert (=> d!287261 m!1176731))

(declare-fun m!1177055 () Bool)

(assert (=> d!287261 m!1177055))

(assert (=> b!974799 m!1176615))

(assert (=> b!974799 m!1176997))

(assert (=> b!974799 m!1176997))

(assert (=> b!974799 m!1176999))

(assert (=> b!974795 m!1176615))

(assert (=> b!974795 m!1176995))

(assert (=> b!974795 m!1176731))

(assert (=> b!974795 m!1176995))

(declare-fun m!1177057 () Bool)

(assert (=> b!974795 m!1177057))

(assert (=> b!974795 m!1176615))

(assert (=> b!974795 m!1176997))

(assert (=> b!974795 m!1177057))

(assert (=> b!974795 m!1176997))

(declare-fun m!1177059 () Bool)

(assert (=> b!974795 m!1177059))

(assert (=> b!974382 d!287261))

(declare-fun bm!62179 () Bool)

(declare-fun call!62187 () Regex!2715)

(declare-fun c!159172 () Bool)

(declare-fun c!159171 () Bool)

(assert (=> bm!62179 (= call!62187 (derivativeStep!641 (ite c!159172 (regTwo!5943 (regTwo!5942 r!15766)) (ite c!159171 (regTwo!5942 (regTwo!5942 r!15766)) (regOne!5942 (regTwo!5942 r!15766)))) (head!1794 (_2!6474 lt!349278))))))

(declare-fun bm!62180 () Bool)

(declare-fun call!62184 () Regex!2715)

(assert (=> bm!62180 (= call!62184 call!62187)))

(declare-fun d!287263 () Bool)

(declare-fun lt!349375 () Regex!2715)

(assert (=> d!287263 (validRegex!1184 lt!349375)))

(declare-fun e!627962 () Regex!2715)

(assert (=> d!287263 (= lt!349375 e!627962)))

(declare-fun c!159173 () Bool)

(assert (=> d!287263 (= c!159173 (or ((_ is EmptyExpr!2715) (regTwo!5942 r!15766)) ((_ is EmptyLang!2715) (regTwo!5942 r!15766))))))

(assert (=> d!287263 (validRegex!1184 (regTwo!5942 r!15766))))

(assert (=> d!287263 (= (derivativeStep!641 (regTwo!5942 r!15766) (head!1794 (_2!6474 lt!349278))) lt!349375)))

(declare-fun b!974807 () Bool)

(declare-fun e!627963 () Regex!2715)

(declare-fun e!627965 () Regex!2715)

(assert (=> b!974807 (= e!627963 e!627965)))

(declare-fun c!159174 () Bool)

(assert (=> b!974807 (= c!159174 ((_ is Star!2715) (regTwo!5942 r!15766)))))

(declare-fun b!974808 () Bool)

(assert (=> b!974808 (= c!159171 (nullable!835 (regOne!5942 (regTwo!5942 r!15766))))))

(declare-fun e!627964 () Regex!2715)

(assert (=> b!974808 (= e!627965 e!627964)))

(declare-fun b!974809 () Bool)

(assert (=> b!974809 (= e!627962 EmptyLang!2715)))

(declare-fun b!974810 () Bool)

(declare-fun e!627961 () Regex!2715)

(assert (=> b!974810 (= e!627961 (ite (= (head!1794 (_2!6474 lt!349278)) (c!158928 (regTwo!5942 r!15766))) EmptyExpr!2715 EmptyLang!2715))))

(declare-fun bm!62181 () Bool)

(declare-fun call!62185 () Regex!2715)

(declare-fun call!62186 () Regex!2715)

(assert (=> bm!62181 (= call!62185 call!62186)))

(declare-fun b!974811 () Bool)

(assert (=> b!974811 (= c!159172 ((_ is Union!2715) (regTwo!5942 r!15766)))))

(assert (=> b!974811 (= e!627961 e!627963)))

(declare-fun b!974812 () Bool)

(assert (=> b!974812 (= e!627964 (Union!2715 (Concat!4548 call!62185 (regTwo!5942 (regTwo!5942 r!15766))) call!62184))))

(declare-fun b!974813 () Bool)

(assert (=> b!974813 (= e!627962 e!627961)))

(declare-fun c!159170 () Bool)

(assert (=> b!974813 (= c!159170 ((_ is ElementMatch!2715) (regTwo!5942 r!15766)))))

(declare-fun b!974814 () Bool)

(assert (=> b!974814 (= e!627965 (Concat!4548 call!62185 (regTwo!5942 r!15766)))))

(declare-fun b!974815 () Bool)

(assert (=> b!974815 (= e!627963 (Union!2715 call!62186 call!62187))))

(declare-fun bm!62182 () Bool)

(assert (=> bm!62182 (= call!62186 (derivativeStep!641 (ite c!159172 (regOne!5943 (regTwo!5942 r!15766)) (ite c!159174 (reg!3044 (regTwo!5942 r!15766)) (regOne!5942 (regTwo!5942 r!15766)))) (head!1794 (_2!6474 lt!349278))))))

(declare-fun b!974816 () Bool)

(assert (=> b!974816 (= e!627964 (Union!2715 (Concat!4548 call!62184 (regTwo!5942 (regTwo!5942 r!15766))) EmptyLang!2715))))

(assert (= (and d!287263 c!159173) b!974809))

(assert (= (and d!287263 (not c!159173)) b!974813))

(assert (= (and b!974813 c!159170) b!974810))

(assert (= (and b!974813 (not c!159170)) b!974811))

(assert (= (and b!974811 c!159172) b!974815))

(assert (= (and b!974811 (not c!159172)) b!974807))

(assert (= (and b!974807 c!159174) b!974814))

(assert (= (and b!974807 (not c!159174)) b!974808))

(assert (= (and b!974808 c!159171) b!974812))

(assert (= (and b!974808 (not c!159171)) b!974816))

(assert (= (or b!974812 b!974816) bm!62180))

(assert (= (or b!974814 b!974812) bm!62181))

(assert (= (or b!974815 bm!62181) bm!62182))

(assert (= (or b!974815 bm!62180) bm!62179))

(assert (=> bm!62179 m!1176613))

(declare-fun m!1177061 () Bool)

(assert (=> bm!62179 m!1177061))

(declare-fun m!1177063 () Bool)

(assert (=> d!287263 m!1177063))

(assert (=> d!287263 m!1176503))

(declare-fun m!1177065 () Bool)

(assert (=> b!974808 m!1177065))

(assert (=> bm!62182 m!1176613))

(declare-fun m!1177067 () Bool)

(assert (=> bm!62182 m!1177067))

(assert (=> b!974382 d!287263))

(assert (=> b!974382 d!287255))

(assert (=> b!974382 d!287257))

(declare-fun d!287265 () Bool)

(declare-fun nullableFct!200 (Regex!2715) Bool)

(assert (=> d!287265 (= (nullable!835 lt!349293) (nullableFct!200 lt!349293))))

(declare-fun bs!243020 () Bool)

(assert (= bs!243020 d!287265))

(declare-fun m!1177069 () Bool)

(assert (=> bs!243020 m!1177069))

(assert (=> b!974066 d!287265))

(declare-fun d!287267 () Bool)

(assert (=> d!287267 (= (nullable!835 r!15766) (nullableFct!200 r!15766))))

(declare-fun bs!243021 () Bool)

(assert (= bs!243021 d!287267))

(declare-fun m!1177071 () Bool)

(assert (=> bs!243021 m!1177071))

(assert (=> b!974066 d!287267))

(declare-fun b!974817 () Bool)

(declare-fun e!627971 () Bool)

(declare-fun e!627969 () Bool)

(assert (=> b!974817 (= e!627971 e!627969)))

(declare-fun res!442884 () Bool)

(assert (=> b!974817 (=> (not res!442884) (not e!627969))))

(declare-fun lt!349376 () Bool)

(assert (=> b!974817 (= res!442884 (not lt!349376))))

(declare-fun d!287269 () Bool)

(declare-fun e!627966 () Bool)

(assert (=> d!287269 e!627966))

(declare-fun c!159175 () Bool)

(assert (=> d!287269 (= c!159175 ((_ is EmptyExpr!2715) (regTwo!5942 r!15766)))))

(declare-fun e!627967 () Bool)

(assert (=> d!287269 (= lt!349376 e!627967)))

(declare-fun c!159177 () Bool)

(assert (=> d!287269 (= c!159177 (isEmpty!6242 (_2!6474 (get!3428 lt!349340))))))

(assert (=> d!287269 (validRegex!1184 (regTwo!5942 r!15766))))

(assert (=> d!287269 (= (matchR!1251 (regTwo!5942 r!15766) (_2!6474 (get!3428 lt!349340))) lt!349376)))

(declare-fun b!974818 () Bool)

(declare-fun e!627968 () Bool)

(assert (=> b!974818 (= e!627968 (not (= (head!1794 (_2!6474 (get!3428 lt!349340))) (c!158928 (regTwo!5942 r!15766)))))))

(declare-fun b!974819 () Bool)

(assert (=> b!974819 (= e!627967 (matchR!1251 (derivativeStep!641 (regTwo!5942 r!15766) (head!1794 (_2!6474 (get!3428 lt!349340)))) (tail!1356 (_2!6474 (get!3428 lt!349340)))))))

(declare-fun b!974820 () Bool)

(assert (=> b!974820 (= e!627967 (nullable!835 (regTwo!5942 r!15766)))))

(declare-fun b!974821 () Bool)

(declare-fun res!442881 () Bool)

(assert (=> b!974821 (=> res!442881 e!627971)))

(assert (=> b!974821 (= res!442881 (not ((_ is ElementMatch!2715) (regTwo!5942 r!15766))))))

(declare-fun e!627972 () Bool)

(assert (=> b!974821 (= e!627972 e!627971)))

(declare-fun b!974822 () Bool)

(assert (=> b!974822 (= e!627972 (not lt!349376))))

(declare-fun b!974823 () Bool)

(declare-fun res!442880 () Bool)

(declare-fun e!627970 () Bool)

(assert (=> b!974823 (=> (not res!442880) (not e!627970))))

(assert (=> b!974823 (= res!442880 (isEmpty!6242 (tail!1356 (_2!6474 (get!3428 lt!349340)))))))

(declare-fun b!974824 () Bool)

(declare-fun res!442882 () Bool)

(assert (=> b!974824 (=> res!442882 e!627971)))

(assert (=> b!974824 (= res!442882 e!627970)))

(declare-fun res!442879 () Bool)

(assert (=> b!974824 (=> (not res!442879) (not e!627970))))

(assert (=> b!974824 (= res!442879 lt!349376)))

(declare-fun b!974825 () Bool)

(assert (=> b!974825 (= e!627969 e!627968)))

(declare-fun res!442878 () Bool)

(assert (=> b!974825 (=> res!442878 e!627968)))

(declare-fun call!62188 () Bool)

(assert (=> b!974825 (= res!442878 call!62188)))

(declare-fun b!974826 () Bool)

(assert (=> b!974826 (= e!627966 e!627972)))

(declare-fun c!159176 () Bool)

(assert (=> b!974826 (= c!159176 ((_ is EmptyLang!2715) (regTwo!5942 r!15766)))))

(declare-fun b!974827 () Bool)

(declare-fun res!442883 () Bool)

(assert (=> b!974827 (=> res!442883 e!627968)))

(assert (=> b!974827 (= res!442883 (not (isEmpty!6242 (tail!1356 (_2!6474 (get!3428 lt!349340))))))))

(declare-fun b!974828 () Bool)

(assert (=> b!974828 (= e!627966 (= lt!349376 call!62188))))

(declare-fun bm!62183 () Bool)

(assert (=> bm!62183 (= call!62188 (isEmpty!6242 (_2!6474 (get!3428 lt!349340))))))

(declare-fun b!974829 () Bool)

(assert (=> b!974829 (= e!627970 (= (head!1794 (_2!6474 (get!3428 lt!349340))) (c!158928 (regTwo!5942 r!15766))))))

(declare-fun b!974830 () Bool)

(declare-fun res!442877 () Bool)

(assert (=> b!974830 (=> (not res!442877) (not e!627970))))

(assert (=> b!974830 (= res!442877 (not call!62188))))

(assert (= (and d!287269 c!159177) b!974820))

(assert (= (and d!287269 (not c!159177)) b!974819))

(assert (= (and d!287269 c!159175) b!974828))

(assert (= (and d!287269 (not c!159175)) b!974826))

(assert (= (and b!974826 c!159176) b!974822))

(assert (= (and b!974826 (not c!159176)) b!974821))

(assert (= (and b!974821 (not res!442881)) b!974824))

(assert (= (and b!974824 res!442879) b!974830))

(assert (= (and b!974830 res!442877) b!974823))

(assert (= (and b!974823 res!442880) b!974829))

(assert (= (and b!974824 (not res!442882)) b!974817))

(assert (= (and b!974817 res!442884) b!974825))

(assert (= (and b!974825 (not res!442878)) b!974827))

(assert (= (and b!974827 (not res!442883)) b!974818))

(assert (= (or b!974828 b!974825 b!974830) bm!62183))

(assert (=> b!974820 m!1176651))

(declare-fun m!1177073 () Bool)

(assert (=> b!974818 m!1177073))

(declare-fun m!1177075 () Bool)

(assert (=> b!974827 m!1177075))

(assert (=> b!974827 m!1177075))

(declare-fun m!1177077 () Bool)

(assert (=> b!974827 m!1177077))

(declare-fun m!1177079 () Bool)

(assert (=> bm!62183 m!1177079))

(assert (=> b!974829 m!1177073))

(assert (=> d!287269 m!1177079))

(assert (=> d!287269 m!1176503))

(assert (=> b!974823 m!1177075))

(assert (=> b!974823 m!1177075))

(assert (=> b!974823 m!1177077))

(assert (=> b!974819 m!1177073))

(assert (=> b!974819 m!1177073))

(declare-fun m!1177081 () Bool)

(assert (=> b!974819 m!1177081))

(assert (=> b!974819 m!1177075))

(assert (=> b!974819 m!1177081))

(assert (=> b!974819 m!1177075))

(declare-fun m!1177085 () Bool)

(assert (=> b!974819 m!1177085))

(assert (=> b!974420 d!287269))

(declare-fun d!287273 () Bool)

(assert (=> d!287273 (= (get!3428 lt!349340) (v!19706 lt!349340))))

(assert (=> b!974420 d!287273))

(assert (=> d!287097 d!287143))

(declare-fun b!974831 () Bool)

(declare-fun e!627973 () Bool)

(declare-fun e!627974 () Bool)

(assert (=> b!974831 (= e!627973 e!627974)))

(declare-fun c!159179 () Bool)

(assert (=> b!974831 (= c!159179 ((_ is Star!2715) (removeUselessConcat!346 r!15766)))))

(declare-fun b!974832 () Bool)

(declare-fun e!627976 () Bool)

(declare-fun call!62191 () Bool)

(assert (=> b!974832 (= e!627976 call!62191)))

(declare-fun b!974834 () Bool)

(declare-fun res!442886 () Bool)

(declare-fun e!627978 () Bool)

(assert (=> b!974834 (=> (not res!442886) (not e!627978))))

(declare-fun call!62190 () Bool)

(assert (=> b!974834 (= res!442886 call!62190)))

(declare-fun e!627977 () Bool)

(assert (=> b!974834 (= e!627977 e!627978)))

(declare-fun b!974835 () Bool)

(declare-fun e!627975 () Bool)

(declare-fun call!62189 () Bool)

(assert (=> b!974835 (= e!627975 call!62189)))

(declare-fun bm!62184 () Bool)

(assert (=> bm!62184 (= call!62190 call!62189)))

(declare-fun b!974836 () Bool)

(assert (=> b!974836 (= e!627978 call!62191)))

(declare-fun b!974837 () Bool)

(declare-fun res!442888 () Bool)

(declare-fun e!627979 () Bool)

(assert (=> b!974837 (=> res!442888 e!627979)))

(assert (=> b!974837 (= res!442888 (not ((_ is Concat!4548) (removeUselessConcat!346 r!15766))))))

(assert (=> b!974837 (= e!627977 e!627979)))

(declare-fun b!974838 () Bool)

(assert (=> b!974838 (= e!627974 e!627977)))

(declare-fun c!159178 () Bool)

(assert (=> b!974838 (= c!159178 ((_ is Union!2715) (removeUselessConcat!346 r!15766)))))

(declare-fun bm!62185 () Bool)

(assert (=> bm!62185 (= call!62191 (validRegex!1184 (ite c!159178 (regTwo!5943 (removeUselessConcat!346 r!15766)) (regTwo!5942 (removeUselessConcat!346 r!15766)))))))

(declare-fun bm!62186 () Bool)

(assert (=> bm!62186 (= call!62189 (validRegex!1184 (ite c!159179 (reg!3044 (removeUselessConcat!346 r!15766)) (ite c!159178 (regOne!5943 (removeUselessConcat!346 r!15766)) (regOne!5942 (removeUselessConcat!346 r!15766))))))))

(declare-fun b!974839 () Bool)

(assert (=> b!974839 (= e!627979 e!627976)))

(declare-fun res!442885 () Bool)

(assert (=> b!974839 (=> (not res!442885) (not e!627976))))

(assert (=> b!974839 (= res!442885 call!62190)))

(declare-fun d!287275 () Bool)

(declare-fun res!442889 () Bool)

(assert (=> d!287275 (=> res!442889 e!627973)))

(assert (=> d!287275 (= res!442889 ((_ is ElementMatch!2715) (removeUselessConcat!346 r!15766)))))

(assert (=> d!287275 (= (validRegex!1184 (removeUselessConcat!346 r!15766)) e!627973)))

(declare-fun b!974833 () Bool)

(assert (=> b!974833 (= e!627974 e!627975)))

(declare-fun res!442887 () Bool)

(assert (=> b!974833 (= res!442887 (not (nullable!835 (reg!3044 (removeUselessConcat!346 r!15766)))))))

(assert (=> b!974833 (=> (not res!442887) (not e!627975))))

(assert (= (and d!287275 (not res!442889)) b!974831))

(assert (= (and b!974831 c!159179) b!974833))

(assert (= (and b!974831 (not c!159179)) b!974838))

(assert (= (and b!974833 res!442887) b!974835))

(assert (= (and b!974838 c!159178) b!974834))

(assert (= (and b!974838 (not c!159178)) b!974837))

(assert (= (and b!974834 res!442886) b!974836))

(assert (= (and b!974837 (not res!442888)) b!974839))

(assert (= (and b!974839 res!442885) b!974832))

(assert (= (or b!974836 b!974832) bm!62185))

(assert (= (or b!974834 b!974839) bm!62184))

(assert (= (or b!974835 bm!62184) bm!62186))

(declare-fun m!1177091 () Bool)

(assert (=> bm!62185 m!1177091))

(declare-fun m!1177093 () Bool)

(assert (=> bm!62186 m!1177093))

(declare-fun m!1177095 () Bool)

(assert (=> b!974833 m!1177095))

(assert (=> d!287097 d!287275))

(declare-fun d!287281 () Bool)

(assert (=> d!287281 (= (isEmpty!6242 (_2!6474 lt!349278)) ((_ is Nil!9929) (_2!6474 lt!349278)))))

(assert (=> d!287133 d!287281))

(assert (=> d!287133 d!287105))

(declare-fun d!287283 () Bool)

(assert (=> d!287283 (= (Exists!454 (ite c!159049 lambda!34590 lambda!34591)) (choose!6172 (ite c!159049 lambda!34590 lambda!34591)))))

(declare-fun bs!243031 () Bool)

(assert (= bs!243031 d!287283))

(declare-fun m!1177101 () Bool)

(assert (=> bs!243031 m!1177101))

(assert (=> bm!62104 d!287283))

(declare-fun d!287285 () Bool)

(assert (=> d!287285 (= (head!1794 s!10566) (h!15330 s!10566))))

(assert (=> b!974175 d!287285))

(assert (=> b!974367 d!287285))

(assert (=> b!974369 d!287267))

(assert (=> d!287131 d!287129))

(assert (=> d!287131 d!287127))

(declare-fun d!287289 () Bool)

(assert (=> d!287289 (= (matchR!1251 r!15766 s!10566) (matchRSpec!514 r!15766 s!10566))))

(assert (=> d!287289 true))

(declare-fun _$88!3034 () Unit!15089)

(assert (=> d!287289 (= (choose!6171 r!15766 s!10566) _$88!3034)))

(declare-fun bs!243032 () Bool)

(assert (= bs!243032 d!287289))

(assert (=> bs!243032 m!1176511))

(assert (=> bs!243032 m!1176509))

(assert (=> d!287131 d!287289))

(assert (=> d!287131 d!287067))

(declare-fun b!974884 () Bool)

(declare-fun e!628005 () Bool)

(declare-fun lt!349381 () List!9945)

(assert (=> b!974884 (= e!628005 (or (not (= (t!100991 s!10566) Nil!9929)) (= lt!349381 (++!2691 Nil!9929 (Cons!9929 (h!15330 s!10566) Nil!9929)))))))

(declare-fun b!974881 () Bool)

(declare-fun e!628007 () List!9945)

(assert (=> b!974881 (= e!628007 (t!100991 s!10566))))

(declare-fun d!287291 () Bool)

(assert (=> d!287291 e!628005))

(declare-fun res!442908 () Bool)

(assert (=> d!287291 (=> (not res!442908) (not e!628005))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1417 (List!9945) (InoxSet C!6000))

(assert (=> d!287291 (= res!442908 (= (content!1417 lt!349381) ((_ map or) (content!1417 (++!2691 Nil!9929 (Cons!9929 (h!15330 s!10566) Nil!9929))) (content!1417 (t!100991 s!10566)))))))

(assert (=> d!287291 (= lt!349381 e!628007)))

(declare-fun c!159194 () Bool)

(assert (=> d!287291 (= c!159194 ((_ is Nil!9929) (++!2691 Nil!9929 (Cons!9929 (h!15330 s!10566) Nil!9929))))))

(assert (=> d!287291 (= (++!2691 (++!2691 Nil!9929 (Cons!9929 (h!15330 s!10566) Nil!9929)) (t!100991 s!10566)) lt!349381)))

(declare-fun b!974882 () Bool)

(assert (=> b!974882 (= e!628007 (Cons!9929 (h!15330 (++!2691 Nil!9929 (Cons!9929 (h!15330 s!10566) Nil!9929))) (++!2691 (t!100991 (++!2691 Nil!9929 (Cons!9929 (h!15330 s!10566) Nil!9929))) (t!100991 s!10566))))))

(declare-fun b!974883 () Bool)

(declare-fun res!442907 () Bool)

(assert (=> b!974883 (=> (not res!442907) (not e!628005))))

(declare-fun size!7951 (List!9945) Int)

(assert (=> b!974883 (= res!442907 (= (size!7951 lt!349381) (+ (size!7951 (++!2691 Nil!9929 (Cons!9929 (h!15330 s!10566) Nil!9929))) (size!7951 (t!100991 s!10566)))))))

(assert (= (and d!287291 c!159194) b!974881))

(assert (= (and d!287291 (not c!159194)) b!974882))

(assert (= (and d!287291 res!442908) b!974883))

(assert (= (and b!974883 res!442907) b!974884))

(declare-fun m!1177123 () Bool)

(assert (=> d!287291 m!1177123))

(assert (=> d!287291 m!1176755))

(declare-fun m!1177125 () Bool)

(assert (=> d!287291 m!1177125))

(declare-fun m!1177127 () Bool)

(assert (=> d!287291 m!1177127))

(declare-fun m!1177129 () Bool)

(assert (=> b!974882 m!1177129))

(declare-fun m!1177131 () Bool)

(assert (=> b!974883 m!1177131))

(assert (=> b!974883 m!1176755))

(declare-fun m!1177133 () Bool)

(assert (=> b!974883 m!1177133))

(declare-fun m!1177135 () Bool)

(assert (=> b!974883 m!1177135))

(assert (=> b!974414 d!287291))

(declare-fun b!974899 () Bool)

(declare-fun e!628011 () Bool)

(declare-fun lt!349383 () List!9945)

(assert (=> b!974899 (= e!628011 (or (not (= (Cons!9929 (h!15330 s!10566) Nil!9929) Nil!9929)) (= lt!349383 Nil!9929)))))

(declare-fun b!974896 () Bool)

(declare-fun e!628012 () List!9945)

(assert (=> b!974896 (= e!628012 (Cons!9929 (h!15330 s!10566) Nil!9929))))

(declare-fun d!287301 () Bool)

(assert (=> d!287301 e!628011))

(declare-fun res!442911 () Bool)

(assert (=> d!287301 (=> (not res!442911) (not e!628011))))

(assert (=> d!287301 (= res!442911 (= (content!1417 lt!349383) ((_ map or) (content!1417 Nil!9929) (content!1417 (Cons!9929 (h!15330 s!10566) Nil!9929)))))))

(assert (=> d!287301 (= lt!349383 e!628012)))

(declare-fun c!159198 () Bool)

(assert (=> d!287301 (= c!159198 ((_ is Nil!9929) Nil!9929))))

(assert (=> d!287301 (= (++!2691 Nil!9929 (Cons!9929 (h!15330 s!10566) Nil!9929)) lt!349383)))

(declare-fun b!974897 () Bool)

(assert (=> b!974897 (= e!628012 (Cons!9929 (h!15330 Nil!9929) (++!2691 (t!100991 Nil!9929) (Cons!9929 (h!15330 s!10566) Nil!9929))))))

(declare-fun b!974898 () Bool)

(declare-fun res!442910 () Bool)

(assert (=> b!974898 (=> (not res!442910) (not e!628011))))

(assert (=> b!974898 (= res!442910 (= (size!7951 lt!349383) (+ (size!7951 Nil!9929) (size!7951 (Cons!9929 (h!15330 s!10566) Nil!9929)))))))

(assert (= (and d!287301 c!159198) b!974896))

(assert (= (and d!287301 (not c!159198)) b!974897))

(assert (= (and d!287301 res!442911) b!974898))

(assert (= (and b!974898 res!442910) b!974899))

(declare-fun m!1177149 () Bool)

(assert (=> d!287301 m!1177149))

(declare-fun m!1177151 () Bool)

(assert (=> d!287301 m!1177151))

(declare-fun m!1177153 () Bool)

(assert (=> d!287301 m!1177153))

(declare-fun m!1177155 () Bool)

(assert (=> b!974897 m!1177155))

(declare-fun m!1177157 () Bool)

(assert (=> b!974898 m!1177157))

(declare-fun m!1177159 () Bool)

(assert (=> b!974898 m!1177159))

(declare-fun m!1177161 () Bool)

(assert (=> b!974898 m!1177161))

(assert (=> b!974414 d!287301))

(declare-fun d!287305 () Bool)

(assert (=> d!287305 (= (++!2691 (++!2691 Nil!9929 (Cons!9929 (h!15330 s!10566) Nil!9929)) (t!100991 s!10566)) s!10566)))

(declare-fun lt!349388 () Unit!15089)

(declare-fun choose!6175 (List!9945 C!6000 List!9945 List!9945) Unit!15089)

(assert (=> d!287305 (= lt!349388 (choose!6175 Nil!9929 (h!15330 s!10566) (t!100991 s!10566) s!10566))))

(assert (=> d!287305 (= (++!2691 Nil!9929 (Cons!9929 (h!15330 s!10566) (t!100991 s!10566))) s!10566)))

(assert (=> d!287305 (= (lemmaMoveElementToOtherListKeepsConcatEq!292 Nil!9929 (h!15330 s!10566) (t!100991 s!10566) s!10566) lt!349388)))

(declare-fun bs!243037 () Bool)

(assert (= bs!243037 d!287305))

(assert (=> bs!243037 m!1176755))

(assert (=> bs!243037 m!1176755))

(assert (=> bs!243037 m!1176757))

(declare-fun m!1177189 () Bool)

(assert (=> bs!243037 m!1177189))

(declare-fun m!1177191 () Bool)

(assert (=> bs!243037 m!1177191))

(assert (=> b!974414 d!287305))

(declare-fun b!974948 () Bool)

(declare-fun e!628043 () Bool)

(declare-fun lt!349391 () Option!2290)

(assert (=> b!974948 (= e!628043 (= (++!2691 (_1!6474 (get!3428 lt!349391)) (_2!6474 (get!3428 lt!349391))) s!10566))))

(declare-fun b!974949 () Bool)

(declare-fun e!628042 () Bool)

(assert (=> b!974949 (= e!628042 (matchR!1251 (regTwo!5942 r!15766) (t!100991 s!10566)))))

(declare-fun d!287319 () Bool)

(declare-fun e!628041 () Bool)

(assert (=> d!287319 e!628041))

(declare-fun res!442936 () Bool)

(assert (=> d!287319 (=> res!442936 e!628041)))

(assert (=> d!287319 (= res!442936 e!628043)))

(declare-fun res!442939 () Bool)

(assert (=> d!287319 (=> (not res!442939) (not e!628043))))

(assert (=> d!287319 (= res!442939 (isDefined!1932 lt!349391))))

(declare-fun e!628044 () Option!2290)

(assert (=> d!287319 (= lt!349391 e!628044)))

(declare-fun c!159212 () Bool)

(assert (=> d!287319 (= c!159212 e!628042)))

(declare-fun res!442937 () Bool)

(assert (=> d!287319 (=> (not res!442937) (not e!628042))))

(assert (=> d!287319 (= res!442937 (matchR!1251 EmptyExpr!2715 (++!2691 Nil!9929 (Cons!9929 (h!15330 s!10566) Nil!9929))))))

(assert (=> d!287319 (validRegex!1184 EmptyExpr!2715)))

(assert (=> d!287319 (= (findConcatSeparation!396 EmptyExpr!2715 (regTwo!5942 r!15766) (++!2691 Nil!9929 (Cons!9929 (h!15330 s!10566) Nil!9929)) (t!100991 s!10566) s!10566) lt!349391)))

(declare-fun b!974950 () Bool)

(declare-fun lt!349390 () Unit!15089)

(declare-fun lt!349392 () Unit!15089)

(assert (=> b!974950 (= lt!349390 lt!349392)))

(assert (=> b!974950 (= (++!2691 (++!2691 (++!2691 Nil!9929 (Cons!9929 (h!15330 s!10566) Nil!9929)) (Cons!9929 (h!15330 (t!100991 s!10566)) Nil!9929)) (t!100991 (t!100991 s!10566))) s!10566)))

(assert (=> b!974950 (= lt!349392 (lemmaMoveElementToOtherListKeepsConcatEq!292 (++!2691 Nil!9929 (Cons!9929 (h!15330 s!10566) Nil!9929)) (h!15330 (t!100991 s!10566)) (t!100991 (t!100991 s!10566)) s!10566))))

(declare-fun e!628040 () Option!2290)

(assert (=> b!974950 (= e!628040 (findConcatSeparation!396 EmptyExpr!2715 (regTwo!5942 r!15766) (++!2691 (++!2691 Nil!9929 (Cons!9929 (h!15330 s!10566) Nil!9929)) (Cons!9929 (h!15330 (t!100991 s!10566)) Nil!9929)) (t!100991 (t!100991 s!10566)) s!10566))))

(declare-fun b!974951 () Bool)

(assert (=> b!974951 (= e!628040 None!2289)))

(declare-fun b!974952 () Bool)

(declare-fun res!442935 () Bool)

(assert (=> b!974952 (=> (not res!442935) (not e!628043))))

(assert (=> b!974952 (= res!442935 (matchR!1251 EmptyExpr!2715 (_1!6474 (get!3428 lt!349391))))))

(declare-fun b!974953 () Bool)

(assert (=> b!974953 (= e!628044 (Some!2289 (tuple2!11297 (++!2691 Nil!9929 (Cons!9929 (h!15330 s!10566) Nil!9929)) (t!100991 s!10566))))))

(declare-fun b!974954 () Bool)

(assert (=> b!974954 (= e!628044 e!628040)))

(declare-fun c!159213 () Bool)

(assert (=> b!974954 (= c!159213 ((_ is Nil!9929) (t!100991 s!10566)))))

(declare-fun b!974955 () Bool)

(assert (=> b!974955 (= e!628041 (not (isDefined!1932 lt!349391)))))

(declare-fun b!974956 () Bool)

(declare-fun res!442938 () Bool)

(assert (=> b!974956 (=> (not res!442938) (not e!628043))))

(assert (=> b!974956 (= res!442938 (matchR!1251 (regTwo!5942 r!15766) (_2!6474 (get!3428 lt!349391))))))

(assert (= (and d!287319 res!442937) b!974949))

(assert (= (and d!287319 c!159212) b!974953))

(assert (= (and d!287319 (not c!159212)) b!974954))

(assert (= (and b!974954 c!159213) b!974951))

(assert (= (and b!974954 (not c!159213)) b!974950))

(assert (= (and d!287319 res!442939) b!974952))

(assert (= (and b!974952 res!442935) b!974956))

(assert (= (and b!974956 res!442938) b!974948))

(assert (= (and d!287319 (not res!442936)) b!974955))

(declare-fun m!1177205 () Bool)

(assert (=> d!287319 m!1177205))

(assert (=> d!287319 m!1176755))

(declare-fun m!1177207 () Bool)

(assert (=> d!287319 m!1177207))

(assert (=> d!287319 m!1176743))

(declare-fun m!1177209 () Bool)

(assert (=> b!974949 m!1177209))

(declare-fun m!1177211 () Bool)

(assert (=> b!974956 m!1177211))

(declare-fun m!1177213 () Bool)

(assert (=> b!974956 m!1177213))

(assert (=> b!974955 m!1177205))

(assert (=> b!974952 m!1177211))

(declare-fun m!1177215 () Bool)

(assert (=> b!974952 m!1177215))

(assert (=> b!974948 m!1177211))

(declare-fun m!1177217 () Bool)

(assert (=> b!974948 m!1177217))

(assert (=> b!974950 m!1176755))

(declare-fun m!1177219 () Bool)

(assert (=> b!974950 m!1177219))

(assert (=> b!974950 m!1177219))

(declare-fun m!1177221 () Bool)

(assert (=> b!974950 m!1177221))

(assert (=> b!974950 m!1176755))

(declare-fun m!1177223 () Bool)

(assert (=> b!974950 m!1177223))

(assert (=> b!974950 m!1177219))

(declare-fun m!1177231 () Bool)

(assert (=> b!974950 m!1177231))

(assert (=> b!974414 d!287319))

(declare-fun b!974968 () Bool)

(declare-fun e!628051 () Bool)

(declare-fun e!628052 () Bool)

(assert (=> b!974968 (= e!628051 e!628052)))

(declare-fun c!159220 () Bool)

(assert (=> b!974968 (= c!159220 ((_ is Star!2715) (ite c!158942 (regTwo!5943 r!15766) (regTwo!5942 r!15766))))))

(declare-fun b!974969 () Bool)

(declare-fun e!628054 () Bool)

(declare-fun call!62222 () Bool)

(assert (=> b!974969 (= e!628054 call!62222)))

(declare-fun b!974971 () Bool)

(declare-fun res!442942 () Bool)

(declare-fun e!628056 () Bool)

(assert (=> b!974971 (=> (not res!442942) (not e!628056))))

(declare-fun call!62221 () Bool)

(assert (=> b!974971 (= res!442942 call!62221)))

(declare-fun e!628055 () Bool)

(assert (=> b!974971 (= e!628055 e!628056)))

(declare-fun b!974972 () Bool)

(declare-fun e!628053 () Bool)

(declare-fun call!62220 () Bool)

(assert (=> b!974972 (= e!628053 call!62220)))

(declare-fun bm!62215 () Bool)

(assert (=> bm!62215 (= call!62221 call!62220)))

(declare-fun b!974973 () Bool)

(assert (=> b!974973 (= e!628056 call!62222)))

(declare-fun b!974974 () Bool)

(declare-fun res!442944 () Bool)

(declare-fun e!628057 () Bool)

(assert (=> b!974974 (=> res!442944 e!628057)))

(assert (=> b!974974 (= res!442944 (not ((_ is Concat!4548) (ite c!158942 (regTwo!5943 r!15766) (regTwo!5942 r!15766)))))))

(assert (=> b!974974 (= e!628055 e!628057)))

(declare-fun b!974975 () Bool)

(assert (=> b!974975 (= e!628052 e!628055)))

(declare-fun c!159219 () Bool)

(assert (=> b!974975 (= c!159219 ((_ is Union!2715) (ite c!158942 (regTwo!5943 r!15766) (regTwo!5942 r!15766))))))

(declare-fun bm!62216 () Bool)

(assert (=> bm!62216 (= call!62222 (validRegex!1184 (ite c!159219 (regTwo!5943 (ite c!158942 (regTwo!5943 r!15766) (regTwo!5942 r!15766))) (regTwo!5942 (ite c!158942 (regTwo!5943 r!15766) (regTwo!5942 r!15766))))))))

(declare-fun bm!62217 () Bool)

(assert (=> bm!62217 (= call!62220 (validRegex!1184 (ite c!159220 (reg!3044 (ite c!158942 (regTwo!5943 r!15766) (regTwo!5942 r!15766))) (ite c!159219 (regOne!5943 (ite c!158942 (regTwo!5943 r!15766) (regTwo!5942 r!15766))) (regOne!5942 (ite c!158942 (regTwo!5943 r!15766) (regTwo!5942 r!15766)))))))))

(declare-fun b!974976 () Bool)

(assert (=> b!974976 (= e!628057 e!628054)))

(declare-fun res!442941 () Bool)

(assert (=> b!974976 (=> (not res!442941) (not e!628054))))

(assert (=> b!974976 (= res!442941 call!62221)))

(declare-fun d!287323 () Bool)

(declare-fun res!442945 () Bool)

(assert (=> d!287323 (=> res!442945 e!628051)))

(assert (=> d!287323 (= res!442945 ((_ is ElementMatch!2715) (ite c!158942 (regTwo!5943 r!15766) (regTwo!5942 r!15766))))))

(assert (=> d!287323 (= (validRegex!1184 (ite c!158942 (regTwo!5943 r!15766) (regTwo!5942 r!15766))) e!628051)))

(declare-fun b!974970 () Bool)

(assert (=> b!974970 (= e!628052 e!628053)))

(declare-fun res!442943 () Bool)

(assert (=> b!974970 (= res!442943 (not (nullable!835 (reg!3044 (ite c!158942 (regTwo!5943 r!15766) (regTwo!5942 r!15766))))))))

(assert (=> b!974970 (=> (not res!442943) (not e!628053))))

(assert (= (and d!287323 (not res!442945)) b!974968))

(assert (= (and b!974968 c!159220) b!974970))

(assert (= (and b!974968 (not c!159220)) b!974975))

(assert (= (and b!974970 res!442943) b!974972))

(assert (= (and b!974975 c!159219) b!974971))

(assert (= (and b!974975 (not c!159219)) b!974974))

(assert (= (and b!974971 res!442942) b!974973))

(assert (= (and b!974974 (not res!442944)) b!974976))

(assert (= (and b!974976 res!442941) b!974969))

(assert (= (or b!974973 b!974969) bm!62216))

(assert (= (or b!974971 b!974976) bm!62215))

(assert (= (or b!974972 bm!62215) bm!62217))

(declare-fun m!1177241 () Bool)

(assert (=> bm!62216 m!1177241))

(declare-fun m!1177243 () Bool)

(assert (=> bm!62217 m!1177243))

(declare-fun m!1177245 () Bool)

(assert (=> b!974970 m!1177245))

(assert (=> bm!62025 d!287323))

(assert (=> d!287103 d!287105))

(assert (=> d!287103 d!287087))

(assert (=> d!287103 d!287101))

(assert (=> d!287103 d!287133))

(declare-fun d!287327 () Bool)

(assert (=> d!287327 (= (matchR!1251 (regTwo!5942 r!15766) (_2!6474 lt!349278)) (matchR!1251 (removeUselessConcat!346 (regTwo!5942 r!15766)) (_2!6474 lt!349278)))))

(assert (=> d!287327 true))

(declare-fun _$94!364 () Unit!15089)

(assert (=> d!287327 (= (choose!6170 (regTwo!5942 r!15766) (_2!6474 lt!349278)) _$94!364)))

(declare-fun bs!243039 () Bool)

(assert (= bs!243039 d!287327))

(assert (=> bs!243039 m!1176515))

(assert (=> bs!243039 m!1176495))

(assert (=> bs!243039 m!1176495))

(assert (=> bs!243039 m!1176501))

(assert (=> d!287103 d!287327))

(declare-fun b!975033 () Bool)

(declare-fun e!628077 () Bool)

(declare-fun e!628075 () Bool)

(assert (=> b!975033 (= e!628077 e!628075)))

(declare-fun res!442953 () Bool)

(assert (=> b!975033 (=> (not res!442953) (not e!628075))))

(declare-fun lt!349394 () Bool)

(assert (=> b!975033 (= res!442953 (not lt!349394))))

(declare-fun d!287329 () Bool)

(declare-fun e!628072 () Bool)

(assert (=> d!287329 e!628072))

(declare-fun c!159221 () Bool)

(assert (=> d!287329 (= c!159221 ((_ is EmptyExpr!2715) EmptyExpr!2715))))

(declare-fun e!628073 () Bool)

(assert (=> d!287329 (= lt!349394 e!628073)))

(declare-fun c!159223 () Bool)

(assert (=> d!287329 (= c!159223 (isEmpty!6242 (_1!6474 (get!3428 lt!349340))))))

(assert (=> d!287329 (validRegex!1184 EmptyExpr!2715)))

(assert (=> d!287329 (= (matchR!1251 EmptyExpr!2715 (_1!6474 (get!3428 lt!349340))) lt!349394)))

(declare-fun b!975034 () Bool)

(declare-fun e!628074 () Bool)

(assert (=> b!975034 (= e!628074 (not (= (head!1794 (_1!6474 (get!3428 lt!349340))) (c!158928 EmptyExpr!2715))))))

(declare-fun b!975035 () Bool)

(assert (=> b!975035 (= e!628073 (matchR!1251 (derivativeStep!641 EmptyExpr!2715 (head!1794 (_1!6474 (get!3428 lt!349340)))) (tail!1356 (_1!6474 (get!3428 lt!349340)))))))

(declare-fun b!975036 () Bool)

(assert (=> b!975036 (= e!628073 (nullable!835 EmptyExpr!2715))))

(declare-fun b!975037 () Bool)

(declare-fun res!442950 () Bool)

(assert (=> b!975037 (=> res!442950 e!628077)))

(assert (=> b!975037 (= res!442950 (not ((_ is ElementMatch!2715) EmptyExpr!2715)))))

(declare-fun e!628078 () Bool)

(assert (=> b!975037 (= e!628078 e!628077)))

(declare-fun b!975038 () Bool)

(assert (=> b!975038 (= e!628078 (not lt!349394))))

(declare-fun b!975039 () Bool)

(declare-fun res!442949 () Bool)

(declare-fun e!628076 () Bool)

(assert (=> b!975039 (=> (not res!442949) (not e!628076))))

(assert (=> b!975039 (= res!442949 (isEmpty!6242 (tail!1356 (_1!6474 (get!3428 lt!349340)))))))

(declare-fun b!975040 () Bool)

(declare-fun res!442951 () Bool)

(assert (=> b!975040 (=> res!442951 e!628077)))

(assert (=> b!975040 (= res!442951 e!628076)))

(declare-fun res!442948 () Bool)

(assert (=> b!975040 (=> (not res!442948) (not e!628076))))

(assert (=> b!975040 (= res!442948 lt!349394)))

(declare-fun b!975041 () Bool)

(assert (=> b!975041 (= e!628075 e!628074)))

(declare-fun res!442947 () Bool)

(assert (=> b!975041 (=> res!442947 e!628074)))

(declare-fun call!62223 () Bool)

(assert (=> b!975041 (= res!442947 call!62223)))

(declare-fun b!975042 () Bool)

(assert (=> b!975042 (= e!628072 e!628078)))

(declare-fun c!159222 () Bool)

(assert (=> b!975042 (= c!159222 ((_ is EmptyLang!2715) EmptyExpr!2715))))

(declare-fun b!975043 () Bool)

(declare-fun res!442952 () Bool)

(assert (=> b!975043 (=> res!442952 e!628074)))

(assert (=> b!975043 (= res!442952 (not (isEmpty!6242 (tail!1356 (_1!6474 (get!3428 lt!349340))))))))

(declare-fun b!975044 () Bool)

(assert (=> b!975044 (= e!628072 (= lt!349394 call!62223))))

(declare-fun bm!62218 () Bool)

(assert (=> bm!62218 (= call!62223 (isEmpty!6242 (_1!6474 (get!3428 lt!349340))))))

(declare-fun b!975045 () Bool)

(assert (=> b!975045 (= e!628076 (= (head!1794 (_1!6474 (get!3428 lt!349340))) (c!158928 EmptyExpr!2715)))))

(declare-fun b!975046 () Bool)

(declare-fun res!442946 () Bool)

(assert (=> b!975046 (=> (not res!442946) (not e!628076))))

(assert (=> b!975046 (= res!442946 (not call!62223))))

(assert (= (and d!287329 c!159223) b!975036))

(assert (= (and d!287329 (not c!159223)) b!975035))

(assert (= (and d!287329 c!159221) b!975044))

(assert (= (and d!287329 (not c!159221)) b!975042))

(assert (= (and b!975042 c!159222) b!975038))

(assert (= (and b!975042 (not c!159222)) b!975037))

(assert (= (and b!975037 (not res!442950)) b!975040))

(assert (= (and b!975040 res!442948) b!975046))

(assert (= (and b!975046 res!442946) b!975039))

(assert (= (and b!975039 res!442949) b!975045))

(assert (= (and b!975040 (not res!442951)) b!975033))

(assert (= (and b!975033 res!442953) b!975041))

(assert (= (and b!975041 (not res!442947)) b!975043))

(assert (= (and b!975043 (not res!442952)) b!975034))

(assert (= (or b!975044 b!975041 b!975046) bm!62218))

(declare-fun m!1177247 () Bool)

(assert (=> b!975036 m!1177247))

(declare-fun m!1177249 () Bool)

(assert (=> b!975034 m!1177249))

(declare-fun m!1177251 () Bool)

(assert (=> b!975043 m!1177251))

(assert (=> b!975043 m!1177251))

(declare-fun m!1177253 () Bool)

(assert (=> b!975043 m!1177253))

(declare-fun m!1177255 () Bool)

(assert (=> bm!62218 m!1177255))

(assert (=> b!975045 m!1177249))

(assert (=> d!287329 m!1177255))

(assert (=> d!287329 m!1176743))

(assert (=> b!975039 m!1177251))

(assert (=> b!975039 m!1177251))

(assert (=> b!975039 m!1177253))

(assert (=> b!975035 m!1177249))

(assert (=> b!975035 m!1177249))

(declare-fun m!1177257 () Bool)

(assert (=> b!975035 m!1177257))

(assert (=> b!975035 m!1177251))

(assert (=> b!975035 m!1177257))

(assert (=> b!975035 m!1177251))

(declare-fun m!1177259 () Bool)

(assert (=> b!975035 m!1177259))

(assert (=> b!974416 d!287329))

(assert (=> b!974416 d!287273))

(declare-fun bs!243040 () Bool)

(declare-fun b!975078 () Bool)

(assert (= bs!243040 (and b!975078 b!974346)))

(declare-fun lambda!34620 () Int)

(assert (=> bs!243040 (= (and (= s!10566 (_2!6474 lt!349278)) (= (reg!3044 (regOne!5943 r!15766)) (reg!3044 (regTwo!5942 r!15766))) (= (regOne!5943 r!15766) (regTwo!5942 r!15766))) (= lambda!34620 lambda!34588))))

(declare-fun bs!243041 () Bool)

(assert (= bs!243041 (and b!975078 d!287151)))

(assert (=> bs!243041 (not (= lambda!34620 lambda!34600))))

(declare-fun bs!243042 () Bool)

(assert (= bs!243042 (and b!975078 d!287149)))

(assert (=> bs!243042 (not (= lambda!34620 lambda!34594))))

(assert (=> bs!243041 (not (= lambda!34620 lambda!34599))))

(declare-fun bs!243043 () Bool)

(assert (= bs!243043 (and b!975078 b!974349)))

(assert (=> bs!243043 (not (= lambda!34620 lambda!34589))))

(declare-fun bs!243044 () Bool)

(assert (= bs!243044 (and b!975078 b!973876)))

(assert (=> bs!243044 (not (= lambda!34620 lambda!34565))))

(declare-fun bs!243045 () Bool)

(assert (= bs!243045 (and b!975078 b!974360)))

(assert (=> bs!243045 (not (= lambda!34620 lambda!34591))))

(declare-fun bs!243046 () Bool)

(assert (= bs!243046 (and b!975078 b!974617)))

(assert (=> bs!243046 (not (= lambda!34620 lambda!34608))))

(assert (=> bs!243044 (not (= lambda!34620 lambda!34566))))

(declare-fun bs!243047 () Bool)

(assert (= bs!243047 (and b!975078 b!974614)))

(assert (=> bs!243047 (= (and (= s!10566 (_2!6474 lt!349278)) (= (reg!3044 (regOne!5943 r!15766)) (reg!3044 (regTwo!5943 (regTwo!5942 r!15766)))) (= (regOne!5943 r!15766) (regTwo!5943 (regTwo!5942 r!15766)))) (= lambda!34620 lambda!34607))))

(declare-fun bs!243048 () Bool)

(assert (= bs!243048 (and b!975078 b!974357)))

(assert (=> bs!243048 (= (and (= (reg!3044 (regOne!5943 r!15766)) (reg!3044 r!15766)) (= (regOne!5943 r!15766) r!15766)) (= lambda!34620 lambda!34590))))

(assert (=> b!975078 true))

(assert (=> b!975078 true))

(declare-fun bs!243049 () Bool)

(declare-fun b!975081 () Bool)

(assert (= bs!243049 (and b!975081 b!974346)))

(declare-fun lambda!34621 () Int)

(assert (=> bs!243049 (not (= lambda!34621 lambda!34588))))

(declare-fun bs!243050 () Bool)

(assert (= bs!243050 (and b!975081 d!287151)))

(assert (=> bs!243050 (= (and (= (regOne!5942 (regOne!5943 r!15766)) EmptyExpr!2715) (= (regTwo!5942 (regOne!5943 r!15766)) (regTwo!5942 r!15766))) (= lambda!34621 lambda!34600))))

(declare-fun bs!243051 () Bool)

(assert (= bs!243051 (and b!975081 d!287149)))

(assert (=> bs!243051 (not (= lambda!34621 lambda!34594))))

(assert (=> bs!243050 (not (= lambda!34621 lambda!34599))))

(declare-fun bs!243052 () Bool)

(assert (= bs!243052 (and b!975081 b!974349)))

(assert (=> bs!243052 (= (and (= s!10566 (_2!6474 lt!349278)) (= (regOne!5942 (regOne!5943 r!15766)) (regOne!5942 (regTwo!5942 r!15766))) (= (regTwo!5942 (regOne!5943 r!15766)) (regTwo!5942 (regTwo!5942 r!15766)))) (= lambda!34621 lambda!34589))))

(declare-fun bs!243053 () Bool)

(assert (= bs!243053 (and b!975081 b!975078)))

(assert (=> bs!243053 (not (= lambda!34621 lambda!34620))))

(declare-fun bs!243054 () Bool)

(assert (= bs!243054 (and b!975081 b!973876)))

(assert (=> bs!243054 (not (= lambda!34621 lambda!34565))))

(declare-fun bs!243055 () Bool)

(assert (= bs!243055 (and b!975081 b!974360)))

(assert (=> bs!243055 (= (and (= (regOne!5942 (regOne!5943 r!15766)) (regOne!5942 r!15766)) (= (regTwo!5942 (regOne!5943 r!15766)) (regTwo!5942 r!15766))) (= lambda!34621 lambda!34591))))

(declare-fun bs!243056 () Bool)

(assert (= bs!243056 (and b!975081 b!974617)))

(assert (=> bs!243056 (= (and (= s!10566 (_2!6474 lt!349278)) (= (regOne!5942 (regOne!5943 r!15766)) (regOne!5942 (regTwo!5943 (regTwo!5942 r!15766)))) (= (regTwo!5942 (regOne!5943 r!15766)) (regTwo!5942 (regTwo!5943 (regTwo!5942 r!15766))))) (= lambda!34621 lambda!34608))))

(assert (=> bs!243054 (= (and (= (regOne!5942 (regOne!5943 r!15766)) EmptyExpr!2715) (= (regTwo!5942 (regOne!5943 r!15766)) (regTwo!5942 r!15766))) (= lambda!34621 lambda!34566))))

(declare-fun bs!243057 () Bool)

(assert (= bs!243057 (and b!975081 b!974614)))

(assert (=> bs!243057 (not (= lambda!34621 lambda!34607))))

(declare-fun bs!243058 () Bool)

(assert (= bs!243058 (and b!975081 b!974357)))

(assert (=> bs!243058 (not (= lambda!34621 lambda!34590))))

(assert (=> b!975081 true))

(assert (=> b!975081 true))

(declare-fun b!975076 () Bool)

(declare-fun res!442954 () Bool)

(declare-fun e!628093 () Bool)

(assert (=> b!975076 (=> res!442954 e!628093)))

(declare-fun call!62224 () Bool)

(assert (=> b!975076 (= res!442954 call!62224)))

(declare-fun e!628091 () Bool)

(assert (=> b!975076 (= e!628091 e!628093)))

(declare-fun b!975077 () Bool)

(declare-fun e!628092 () Bool)

(declare-fun e!628090 () Bool)

(assert (=> b!975077 (= e!628092 e!628090)))

(declare-fun res!442955 () Bool)

(assert (=> b!975077 (= res!442955 (not ((_ is EmptyLang!2715) (regOne!5943 r!15766))))))

(assert (=> b!975077 (=> (not res!442955) (not e!628090))))

(declare-fun call!62225 () Bool)

(assert (=> b!975078 (= e!628093 call!62225)))

(declare-fun b!975079 () Bool)

(declare-fun c!159227 () Bool)

(assert (=> b!975079 (= c!159227 ((_ is ElementMatch!2715) (regOne!5943 r!15766)))))

(declare-fun e!628088 () Bool)

(assert (=> b!975079 (= e!628090 e!628088)))

(declare-fun b!975080 () Bool)

(declare-fun e!628087 () Bool)

(assert (=> b!975080 (= e!628087 (matchRSpec!514 (regTwo!5943 (regOne!5943 r!15766)) s!10566))))

(assert (=> b!975081 (= e!628091 call!62225)))

(declare-fun b!975082 () Bool)

(declare-fun c!159226 () Bool)

(assert (=> b!975082 (= c!159226 ((_ is Union!2715) (regOne!5943 r!15766)))))

(declare-fun e!628089 () Bool)

(assert (=> b!975082 (= e!628088 e!628089)))

(declare-fun b!975083 () Bool)

(assert (=> b!975083 (= e!628089 e!628087)))

(declare-fun res!442956 () Bool)

(assert (=> b!975083 (= res!442956 (matchRSpec!514 (regOne!5943 (regOne!5943 r!15766)) s!10566))))

(assert (=> b!975083 (=> res!442956 e!628087)))

(declare-fun bm!62219 () Bool)

(assert (=> bm!62219 (= call!62224 (isEmpty!6242 s!10566))))

(declare-fun bm!62220 () Bool)

(declare-fun c!159224 () Bool)

(assert (=> bm!62220 (= call!62225 (Exists!454 (ite c!159224 lambda!34620 lambda!34621)))))

(declare-fun d!287331 () Bool)

(declare-fun c!159225 () Bool)

(assert (=> d!287331 (= c!159225 ((_ is EmptyExpr!2715) (regOne!5943 r!15766)))))

(assert (=> d!287331 (= (matchRSpec!514 (regOne!5943 r!15766) s!10566) e!628092)))

(declare-fun b!975084 () Bool)

(assert (=> b!975084 (= e!628088 (= s!10566 (Cons!9929 (c!158928 (regOne!5943 r!15766)) Nil!9929)))))

(declare-fun b!975085 () Bool)

(assert (=> b!975085 (= e!628089 e!628091)))

(assert (=> b!975085 (= c!159224 ((_ is Star!2715) (regOne!5943 r!15766)))))

(declare-fun b!975086 () Bool)

(assert (=> b!975086 (= e!628092 call!62224)))

(assert (= (and d!287331 c!159225) b!975086))

(assert (= (and d!287331 (not c!159225)) b!975077))

(assert (= (and b!975077 res!442955) b!975079))

(assert (= (and b!975079 c!159227) b!975084))

(assert (= (and b!975079 (not c!159227)) b!975082))

(assert (= (and b!975082 c!159226) b!975083))

(assert (= (and b!975082 (not c!159226)) b!975085))

(assert (= (and b!975083 (not res!442956)) b!975080))

(assert (= (and b!975085 c!159224) b!975076))

(assert (= (and b!975085 (not c!159224)) b!975081))

(assert (= (and b!975076 (not res!442954)) b!975078))

(assert (= (or b!975078 b!975081) bm!62220))

(assert (= (or b!975086 b!975076) bm!62219))

(declare-fun m!1177261 () Bool)

(assert (=> b!975080 m!1177261))

(declare-fun m!1177263 () Bool)

(assert (=> b!975083 m!1177263))

(assert (=> bm!62219 m!1176487))

(declare-fun m!1177265 () Bool)

(assert (=> bm!62220 m!1177265))

(assert (=> b!974362 d!287331))

(declare-fun d!287333 () Bool)

(assert (=> d!287333 true))

(assert (=> d!287333 true))

(declare-fun res!442959 () Bool)

(assert (=> d!287333 (= (choose!6172 lambda!34566) res!442959)))

(assert (=> d!287141 d!287333))

(assert (=> b!974161 d!287255))

(assert (=> b!974392 d!287255))

(declare-fun b!975106 () Bool)

(declare-fun e!628098 () Bool)

(declare-fun lt!349395 () List!9945)

(assert (=> b!975106 (= e!628098 (or (not (= (_2!6474 (get!3428 lt!349340)) Nil!9929)) (= lt!349395 (_1!6474 (get!3428 lt!349340)))))))

(declare-fun b!975103 () Bool)

(declare-fun e!628099 () List!9945)

(assert (=> b!975103 (= e!628099 (_2!6474 (get!3428 lt!349340)))))

(declare-fun d!287335 () Bool)

(assert (=> d!287335 e!628098))

(declare-fun res!442961 () Bool)

(assert (=> d!287335 (=> (not res!442961) (not e!628098))))

(assert (=> d!287335 (= res!442961 (= (content!1417 lt!349395) ((_ map or) (content!1417 (_1!6474 (get!3428 lt!349340))) (content!1417 (_2!6474 (get!3428 lt!349340))))))))

(assert (=> d!287335 (= lt!349395 e!628099)))

(declare-fun c!159228 () Bool)

(assert (=> d!287335 (= c!159228 ((_ is Nil!9929) (_1!6474 (get!3428 lt!349340))))))

(assert (=> d!287335 (= (++!2691 (_1!6474 (get!3428 lt!349340)) (_2!6474 (get!3428 lt!349340))) lt!349395)))

(declare-fun b!975104 () Bool)

(assert (=> b!975104 (= e!628099 (Cons!9929 (h!15330 (_1!6474 (get!3428 lt!349340))) (++!2691 (t!100991 (_1!6474 (get!3428 lt!349340))) (_2!6474 (get!3428 lt!349340)))))))

(declare-fun b!975105 () Bool)

(declare-fun res!442960 () Bool)

(assert (=> b!975105 (=> (not res!442960) (not e!628098))))

(assert (=> b!975105 (= res!442960 (= (size!7951 lt!349395) (+ (size!7951 (_1!6474 (get!3428 lt!349340))) (size!7951 (_2!6474 (get!3428 lt!349340))))))))

(assert (= (and d!287335 c!159228) b!975103))

(assert (= (and d!287335 (not c!159228)) b!975104))

(assert (= (and d!287335 res!442961) b!975105))

(assert (= (and b!975105 res!442960) b!975106))

(declare-fun m!1177267 () Bool)

(assert (=> d!287335 m!1177267))

(declare-fun m!1177269 () Bool)

(assert (=> d!287335 m!1177269))

(declare-fun m!1177271 () Bool)

(assert (=> d!287335 m!1177271))

(declare-fun m!1177273 () Bool)

(assert (=> b!975104 m!1177273))

(declare-fun m!1177275 () Bool)

(assert (=> b!975105 m!1177275))

(declare-fun m!1177277 () Bool)

(assert (=> b!975105 m!1177277))

(declare-fun m!1177279 () Bool)

(assert (=> b!975105 m!1177279))

(assert (=> b!974412 d!287335))

(assert (=> b!974412 d!287273))

(declare-fun b!975107 () Bool)

(declare-fun e!628100 () Bool)

(declare-fun e!628101 () Bool)

(assert (=> b!975107 (= e!628100 e!628101)))

(declare-fun c!159230 () Bool)

(assert (=> b!975107 (= c!159230 ((_ is Star!2715) lt!349311))))

(declare-fun b!975108 () Bool)

(declare-fun e!628103 () Bool)

(declare-fun call!62228 () Bool)

(assert (=> b!975108 (= e!628103 call!62228)))

(declare-fun b!975110 () Bool)

(declare-fun res!442963 () Bool)

(declare-fun e!628105 () Bool)

(assert (=> b!975110 (=> (not res!442963) (not e!628105))))

(declare-fun call!62227 () Bool)

(assert (=> b!975110 (= res!442963 call!62227)))

(declare-fun e!628104 () Bool)

(assert (=> b!975110 (= e!628104 e!628105)))

(declare-fun b!975111 () Bool)

(declare-fun e!628102 () Bool)

(declare-fun call!62226 () Bool)

(assert (=> b!975111 (= e!628102 call!62226)))

(declare-fun bm!62221 () Bool)

(assert (=> bm!62221 (= call!62227 call!62226)))

(declare-fun b!975112 () Bool)

(assert (=> b!975112 (= e!628105 call!62228)))

(declare-fun b!975113 () Bool)

(declare-fun res!442965 () Bool)

(declare-fun e!628106 () Bool)

(assert (=> b!975113 (=> res!442965 e!628106)))

(assert (=> b!975113 (= res!442965 (not ((_ is Concat!4548) lt!349311)))))

(assert (=> b!975113 (= e!628104 e!628106)))

(declare-fun b!975114 () Bool)

(assert (=> b!975114 (= e!628101 e!628104)))

(declare-fun c!159229 () Bool)

(assert (=> b!975114 (= c!159229 ((_ is Union!2715) lt!349311))))

(declare-fun bm!62222 () Bool)

(assert (=> bm!62222 (= call!62228 (validRegex!1184 (ite c!159229 (regTwo!5943 lt!349311) (regTwo!5942 lt!349311))))))

(declare-fun bm!62223 () Bool)

(assert (=> bm!62223 (= call!62226 (validRegex!1184 (ite c!159230 (reg!3044 lt!349311) (ite c!159229 (regOne!5943 lt!349311) (regOne!5942 lt!349311)))))))

(declare-fun b!975115 () Bool)

(assert (=> b!975115 (= e!628106 e!628103)))

(declare-fun res!442962 () Bool)

(assert (=> b!975115 (=> (not res!442962) (not e!628103))))

(assert (=> b!975115 (= res!442962 call!62227)))

(declare-fun d!287337 () Bool)

(declare-fun res!442966 () Bool)

(assert (=> d!287337 (=> res!442966 e!628100)))

(assert (=> d!287337 (= res!442966 ((_ is ElementMatch!2715) lt!349311))))

(assert (=> d!287337 (= (validRegex!1184 lt!349311) e!628100)))

(declare-fun b!975109 () Bool)

(assert (=> b!975109 (= e!628101 e!628102)))

(declare-fun res!442964 () Bool)

(assert (=> b!975109 (= res!442964 (not (nullable!835 (reg!3044 lt!349311))))))

(assert (=> b!975109 (=> (not res!442964) (not e!628102))))

(assert (= (and d!287337 (not res!442966)) b!975107))

(assert (= (and b!975107 c!159230) b!975109))

(assert (= (and b!975107 (not c!159230)) b!975114))

(assert (= (and b!975109 res!442964) b!975111))

(assert (= (and b!975114 c!159229) b!975110))

(assert (= (and b!975114 (not c!159229)) b!975113))

(assert (= (and b!975110 res!442963) b!975112))

(assert (= (and b!975113 (not res!442965)) b!975115))

(assert (= (and b!975115 res!442962) b!975108))

(assert (= (or b!975112 b!975108) bm!62222))

(assert (= (or b!975110 b!975115) bm!62221))

(assert (= (or b!975111 bm!62221) bm!62223))

(declare-fun m!1177281 () Bool)

(assert (=> bm!62222 m!1177281))

(declare-fun m!1177283 () Bool)

(assert (=> bm!62223 m!1177283))

(declare-fun m!1177285 () Bool)

(assert (=> b!975109 m!1177285))

(assert (=> d!287101 d!287337))

(assert (=> d!287101 d!287105))

(assert (=> bm!62105 d!287143))

(declare-fun d!287339 () Bool)

(assert (=> d!287339 (= (nullable!835 (removeUselessConcat!346 r!15766)) (nullableFct!200 (removeUselessConcat!346 r!15766)))))

(declare-fun bs!243059 () Bool)

(assert (= bs!243059 d!287339))

(assert (=> bs!243059 m!1176493))

(declare-fun m!1177287 () Bool)

(assert (=> bs!243059 m!1177287))

(assert (=> b!974166 d!287339))

(declare-fun b!975116 () Bool)

(declare-fun e!628107 () Bool)

(declare-fun e!628108 () Bool)

(assert (=> b!975116 (= e!628107 e!628108)))

(declare-fun c!159232 () Bool)

(assert (=> b!975116 (= c!159232 ((_ is Star!2715) (ite c!159010 (reg!3044 (regTwo!5942 r!15766)) (ite c!159009 (regOne!5943 (regTwo!5942 r!15766)) (regOne!5942 (regTwo!5942 r!15766))))))))

(declare-fun b!975117 () Bool)

(declare-fun e!628110 () Bool)

(declare-fun call!62231 () Bool)

(assert (=> b!975117 (= e!628110 call!62231)))

(declare-fun b!975119 () Bool)

(declare-fun res!442968 () Bool)

(declare-fun e!628112 () Bool)

(assert (=> b!975119 (=> (not res!442968) (not e!628112))))

(declare-fun call!62230 () Bool)

(assert (=> b!975119 (= res!442968 call!62230)))

(declare-fun e!628111 () Bool)

(assert (=> b!975119 (= e!628111 e!628112)))

(declare-fun b!975120 () Bool)

(declare-fun e!628109 () Bool)

(declare-fun call!62229 () Bool)

(assert (=> b!975120 (= e!628109 call!62229)))

(declare-fun bm!62224 () Bool)

(assert (=> bm!62224 (= call!62230 call!62229)))

(declare-fun b!975121 () Bool)

(assert (=> b!975121 (= e!628112 call!62231)))

(declare-fun b!975122 () Bool)

(declare-fun res!442970 () Bool)

(declare-fun e!628113 () Bool)

(assert (=> b!975122 (=> res!442970 e!628113)))

(assert (=> b!975122 (= res!442970 (not ((_ is Concat!4548) (ite c!159010 (reg!3044 (regTwo!5942 r!15766)) (ite c!159009 (regOne!5943 (regTwo!5942 r!15766)) (regOne!5942 (regTwo!5942 r!15766)))))))))

(assert (=> b!975122 (= e!628111 e!628113)))

(declare-fun b!975123 () Bool)

(assert (=> b!975123 (= e!628108 e!628111)))

(declare-fun c!159231 () Bool)

(assert (=> b!975123 (= c!159231 ((_ is Union!2715) (ite c!159010 (reg!3044 (regTwo!5942 r!15766)) (ite c!159009 (regOne!5943 (regTwo!5942 r!15766)) (regOne!5942 (regTwo!5942 r!15766))))))))

(declare-fun bm!62225 () Bool)

(assert (=> bm!62225 (= call!62231 (validRegex!1184 (ite c!159231 (regTwo!5943 (ite c!159010 (reg!3044 (regTwo!5942 r!15766)) (ite c!159009 (regOne!5943 (regTwo!5942 r!15766)) (regOne!5942 (regTwo!5942 r!15766))))) (regTwo!5942 (ite c!159010 (reg!3044 (regTwo!5942 r!15766)) (ite c!159009 (regOne!5943 (regTwo!5942 r!15766)) (regOne!5942 (regTwo!5942 r!15766))))))))))

(declare-fun bm!62226 () Bool)

(assert (=> bm!62226 (= call!62229 (validRegex!1184 (ite c!159232 (reg!3044 (ite c!159010 (reg!3044 (regTwo!5942 r!15766)) (ite c!159009 (regOne!5943 (regTwo!5942 r!15766)) (regOne!5942 (regTwo!5942 r!15766))))) (ite c!159231 (regOne!5943 (ite c!159010 (reg!3044 (regTwo!5942 r!15766)) (ite c!159009 (regOne!5943 (regTwo!5942 r!15766)) (regOne!5942 (regTwo!5942 r!15766))))) (regOne!5942 (ite c!159010 (reg!3044 (regTwo!5942 r!15766)) (ite c!159009 (regOne!5943 (regTwo!5942 r!15766)) (regOne!5942 (regTwo!5942 r!15766)))))))))))

(declare-fun b!975124 () Bool)

(assert (=> b!975124 (= e!628113 e!628110)))

(declare-fun res!442967 () Bool)

(assert (=> b!975124 (=> (not res!442967) (not e!628110))))

(assert (=> b!975124 (= res!442967 call!62230)))

(declare-fun d!287341 () Bool)

(declare-fun res!442971 () Bool)

(assert (=> d!287341 (=> res!442971 e!628107)))

(assert (=> d!287341 (= res!442971 ((_ is ElementMatch!2715) (ite c!159010 (reg!3044 (regTwo!5942 r!15766)) (ite c!159009 (regOne!5943 (regTwo!5942 r!15766)) (regOne!5942 (regTwo!5942 r!15766))))))))

(assert (=> d!287341 (= (validRegex!1184 (ite c!159010 (reg!3044 (regTwo!5942 r!15766)) (ite c!159009 (regOne!5943 (regTwo!5942 r!15766)) (regOne!5942 (regTwo!5942 r!15766))))) e!628107)))

(declare-fun b!975118 () Bool)

(assert (=> b!975118 (= e!628108 e!628109)))

(declare-fun res!442969 () Bool)

(assert (=> b!975118 (= res!442969 (not (nullable!835 (reg!3044 (ite c!159010 (reg!3044 (regTwo!5942 r!15766)) (ite c!159009 (regOne!5943 (regTwo!5942 r!15766)) (regOne!5942 (regTwo!5942 r!15766))))))))))

(assert (=> b!975118 (=> (not res!442969) (not e!628109))))

(assert (= (and d!287341 (not res!442971)) b!975116))

(assert (= (and b!975116 c!159232) b!975118))

(assert (= (and b!975116 (not c!159232)) b!975123))

(assert (= (and b!975118 res!442969) b!975120))

(assert (= (and b!975123 c!159231) b!975119))

(assert (= (and b!975123 (not c!159231)) b!975122))

(assert (= (and b!975119 res!442968) b!975121))

(assert (= (and b!975122 (not res!442970)) b!975124))

(assert (= (and b!975124 res!442967) b!975117))

(assert (= (or b!975121 b!975117) bm!62225))

(assert (= (or b!975119 b!975124) bm!62224))

(assert (= (or b!975120 bm!62224) bm!62226))

(declare-fun m!1177289 () Bool)

(assert (=> bm!62225 m!1177289))

(declare-fun m!1177291 () Bool)

(assert (=> bm!62226 m!1177291))

(declare-fun m!1177293 () Bool)

(assert (=> b!975118 m!1177293))

(assert (=> bm!62074 d!287341))

(declare-fun d!287343 () Bool)

(assert (=> d!287343 (= (Exists!454 (ite c!159045 lambda!34588 lambda!34589)) (choose!6172 (ite c!159045 lambda!34588 lambda!34589)))))

(declare-fun bs!243060 () Bool)

(assert (= bs!243060 d!287343))

(declare-fun m!1177295 () Bool)

(assert (=> bs!243060 m!1177295))

(assert (=> bm!62102 d!287343))

(assert (=> d!287087 d!287281))

(declare-fun b!975125 () Bool)

(declare-fun e!628114 () Bool)

(declare-fun e!628115 () Bool)

(assert (=> b!975125 (= e!628114 e!628115)))

(declare-fun c!159234 () Bool)

(assert (=> b!975125 (= c!159234 ((_ is Star!2715) (removeUselessConcat!346 (regTwo!5942 r!15766))))))

(declare-fun b!975126 () Bool)

(declare-fun e!628117 () Bool)

(declare-fun call!62234 () Bool)

(assert (=> b!975126 (= e!628117 call!62234)))

(declare-fun b!975128 () Bool)

(declare-fun res!442973 () Bool)

(declare-fun e!628119 () Bool)

(assert (=> b!975128 (=> (not res!442973) (not e!628119))))

(declare-fun call!62233 () Bool)

(assert (=> b!975128 (= res!442973 call!62233)))

(declare-fun e!628118 () Bool)

(assert (=> b!975128 (= e!628118 e!628119)))

(declare-fun b!975129 () Bool)

(declare-fun e!628116 () Bool)

(declare-fun call!62232 () Bool)

(assert (=> b!975129 (= e!628116 call!62232)))

(declare-fun bm!62227 () Bool)

(assert (=> bm!62227 (= call!62233 call!62232)))

(declare-fun b!975130 () Bool)

(assert (=> b!975130 (= e!628119 call!62234)))

(declare-fun b!975131 () Bool)

(declare-fun res!442975 () Bool)

(declare-fun e!628120 () Bool)

(assert (=> b!975131 (=> res!442975 e!628120)))

(assert (=> b!975131 (= res!442975 (not ((_ is Concat!4548) (removeUselessConcat!346 (regTwo!5942 r!15766)))))))

(assert (=> b!975131 (= e!628118 e!628120)))

(declare-fun b!975132 () Bool)

(assert (=> b!975132 (= e!628115 e!628118)))

(declare-fun c!159233 () Bool)

(assert (=> b!975132 (= c!159233 ((_ is Union!2715) (removeUselessConcat!346 (regTwo!5942 r!15766))))))

(declare-fun bm!62228 () Bool)

(assert (=> bm!62228 (= call!62234 (validRegex!1184 (ite c!159233 (regTwo!5943 (removeUselessConcat!346 (regTwo!5942 r!15766))) (regTwo!5942 (removeUselessConcat!346 (regTwo!5942 r!15766))))))))

(declare-fun bm!62229 () Bool)

(assert (=> bm!62229 (= call!62232 (validRegex!1184 (ite c!159234 (reg!3044 (removeUselessConcat!346 (regTwo!5942 r!15766))) (ite c!159233 (regOne!5943 (removeUselessConcat!346 (regTwo!5942 r!15766))) (regOne!5942 (removeUselessConcat!346 (regTwo!5942 r!15766)))))))))

(declare-fun b!975133 () Bool)

(assert (=> b!975133 (= e!628120 e!628117)))

(declare-fun res!442972 () Bool)

(assert (=> b!975133 (=> (not res!442972) (not e!628117))))

(assert (=> b!975133 (= res!442972 call!62233)))

(declare-fun d!287345 () Bool)

(declare-fun res!442976 () Bool)

(assert (=> d!287345 (=> res!442976 e!628114)))

(assert (=> d!287345 (= res!442976 ((_ is ElementMatch!2715) (removeUselessConcat!346 (regTwo!5942 r!15766))))))

(assert (=> d!287345 (= (validRegex!1184 (removeUselessConcat!346 (regTwo!5942 r!15766))) e!628114)))

(declare-fun b!975127 () Bool)

(assert (=> b!975127 (= e!628115 e!628116)))

(declare-fun res!442974 () Bool)

(assert (=> b!975127 (= res!442974 (not (nullable!835 (reg!3044 (removeUselessConcat!346 (regTwo!5942 r!15766))))))))

(assert (=> b!975127 (=> (not res!442974) (not e!628116))))

(assert (= (and d!287345 (not res!442976)) b!975125))

(assert (= (and b!975125 c!159234) b!975127))

(assert (= (and b!975125 (not c!159234)) b!975132))

(assert (= (and b!975127 res!442974) b!975129))

(assert (= (and b!975132 c!159233) b!975128))

(assert (= (and b!975132 (not c!159233)) b!975131))

(assert (= (and b!975128 res!442973) b!975130))

(assert (= (and b!975131 (not res!442975)) b!975133))

(assert (= (and b!975133 res!442972) b!975126))

(assert (= (or b!975130 b!975126) bm!62228))

(assert (= (or b!975128 b!975133) bm!62227))

(assert (= (or b!975129 bm!62227) bm!62229))

(declare-fun m!1177297 () Bool)

(assert (=> bm!62228 m!1177297))

(declare-fun m!1177299 () Bool)

(assert (=> bm!62229 m!1177299))

(declare-fun m!1177301 () Bool)

(assert (=> b!975127 m!1177301))

(assert (=> d!287087 d!287345))

(declare-fun d!287347 () Bool)

(assert (=> d!287347 (= (isEmpty!6244 lt!349280) (not ((_ is Some!2289) lt!349280)))))

(assert (=> d!287139 d!287347))

(declare-fun d!287349 () Bool)

(assert (=> d!287349 true))

(assert (=> d!287349 true))

(declare-fun res!442977 () Bool)

(assert (=> d!287349 (= (choose!6172 lambda!34565) res!442977)))

(assert (=> d!287147 d!287349))

(declare-fun bs!243061 () Bool)

(declare-fun b!975136 () Bool)

(assert (= bs!243061 (and b!975136 b!974346)))

(declare-fun lambda!34622 () Int)

(assert (=> bs!243061 (= (and (= (reg!3044 (regOne!5943 (regTwo!5942 r!15766))) (reg!3044 (regTwo!5942 r!15766))) (= (regOne!5943 (regTwo!5942 r!15766)) (regTwo!5942 r!15766))) (= lambda!34622 lambda!34588))))

(declare-fun bs!243062 () Bool)

(assert (= bs!243062 (and b!975136 d!287151)))

(assert (=> bs!243062 (not (= lambda!34622 lambda!34600))))

(declare-fun bs!243063 () Bool)

(assert (= bs!243063 (and b!975136 d!287149)))

(assert (=> bs!243063 (not (= lambda!34622 lambda!34594))))

(declare-fun bs!243064 () Bool)

(assert (= bs!243064 (and b!975136 b!975081)))

(assert (=> bs!243064 (not (= lambda!34622 lambda!34621))))

(assert (=> bs!243062 (not (= lambda!34622 lambda!34599))))

(declare-fun bs!243065 () Bool)

(assert (= bs!243065 (and b!975136 b!974349)))

(assert (=> bs!243065 (not (= lambda!34622 lambda!34589))))

(declare-fun bs!243066 () Bool)

(assert (= bs!243066 (and b!975136 b!975078)))

(assert (=> bs!243066 (= (and (= (_2!6474 lt!349278) s!10566) (= (reg!3044 (regOne!5943 (regTwo!5942 r!15766))) (reg!3044 (regOne!5943 r!15766))) (= (regOne!5943 (regTwo!5942 r!15766)) (regOne!5943 r!15766))) (= lambda!34622 lambda!34620))))

(declare-fun bs!243067 () Bool)

(assert (= bs!243067 (and b!975136 b!973876)))

(assert (=> bs!243067 (not (= lambda!34622 lambda!34565))))

(declare-fun bs!243068 () Bool)

(assert (= bs!243068 (and b!975136 b!974360)))

(assert (=> bs!243068 (not (= lambda!34622 lambda!34591))))

(declare-fun bs!243069 () Bool)

(assert (= bs!243069 (and b!975136 b!974617)))

(assert (=> bs!243069 (not (= lambda!34622 lambda!34608))))

(assert (=> bs!243067 (not (= lambda!34622 lambda!34566))))

(declare-fun bs!243070 () Bool)

(assert (= bs!243070 (and b!975136 b!974614)))

(assert (=> bs!243070 (= (and (= (reg!3044 (regOne!5943 (regTwo!5942 r!15766))) (reg!3044 (regTwo!5943 (regTwo!5942 r!15766)))) (= (regOne!5943 (regTwo!5942 r!15766)) (regTwo!5943 (regTwo!5942 r!15766)))) (= lambda!34622 lambda!34607))))

(declare-fun bs!243071 () Bool)

(assert (= bs!243071 (and b!975136 b!974357)))

(assert (=> bs!243071 (= (and (= (_2!6474 lt!349278) s!10566) (= (reg!3044 (regOne!5943 (regTwo!5942 r!15766))) (reg!3044 r!15766)) (= (regOne!5943 (regTwo!5942 r!15766)) r!15766)) (= lambda!34622 lambda!34590))))

(assert (=> b!975136 true))

(assert (=> b!975136 true))

(declare-fun bs!243072 () Bool)

(declare-fun b!975139 () Bool)

(assert (= bs!243072 (and b!975139 b!974346)))

(declare-fun lambda!34623 () Int)

(assert (=> bs!243072 (not (= lambda!34623 lambda!34588))))

(declare-fun bs!243073 () Bool)

(assert (= bs!243073 (and b!975139 d!287151)))

(assert (=> bs!243073 (= (and (= (_2!6474 lt!349278) s!10566) (= (regOne!5942 (regOne!5943 (regTwo!5942 r!15766))) EmptyExpr!2715) (= (regTwo!5942 (regOne!5943 (regTwo!5942 r!15766))) (regTwo!5942 r!15766))) (= lambda!34623 lambda!34600))))

(declare-fun bs!243074 () Bool)

(assert (= bs!243074 (and b!975139 d!287149)))

(assert (=> bs!243074 (not (= lambda!34623 lambda!34594))))

(declare-fun bs!243075 () Bool)

(assert (= bs!243075 (and b!975139 b!975081)))

(assert (=> bs!243075 (= (and (= (_2!6474 lt!349278) s!10566) (= (regOne!5942 (regOne!5943 (regTwo!5942 r!15766))) (regOne!5942 (regOne!5943 r!15766))) (= (regTwo!5942 (regOne!5943 (regTwo!5942 r!15766))) (regTwo!5942 (regOne!5943 r!15766)))) (= lambda!34623 lambda!34621))))

(assert (=> bs!243073 (not (= lambda!34623 lambda!34599))))

(declare-fun bs!243076 () Bool)

(assert (= bs!243076 (and b!975139 b!974349)))

(assert (=> bs!243076 (= (and (= (regOne!5942 (regOne!5943 (regTwo!5942 r!15766))) (regOne!5942 (regTwo!5942 r!15766))) (= (regTwo!5942 (regOne!5943 (regTwo!5942 r!15766))) (regTwo!5942 (regTwo!5942 r!15766)))) (= lambda!34623 lambda!34589))))

(declare-fun bs!243077 () Bool)

(assert (= bs!243077 (and b!975139 b!975078)))

(assert (=> bs!243077 (not (= lambda!34623 lambda!34620))))

(declare-fun bs!243078 () Bool)

(assert (= bs!243078 (and b!975139 b!973876)))

(assert (=> bs!243078 (not (= lambda!34623 lambda!34565))))

(declare-fun bs!243079 () Bool)

(assert (= bs!243079 (and b!975139 b!974360)))

(assert (=> bs!243079 (= (and (= (_2!6474 lt!349278) s!10566) (= (regOne!5942 (regOne!5943 (regTwo!5942 r!15766))) (regOne!5942 r!15766)) (= (regTwo!5942 (regOne!5943 (regTwo!5942 r!15766))) (regTwo!5942 r!15766))) (= lambda!34623 lambda!34591))))

(declare-fun bs!243080 () Bool)

(assert (= bs!243080 (and b!975139 b!974617)))

(assert (=> bs!243080 (= (and (= (regOne!5942 (regOne!5943 (regTwo!5942 r!15766))) (regOne!5942 (regTwo!5943 (regTwo!5942 r!15766)))) (= (regTwo!5942 (regOne!5943 (regTwo!5942 r!15766))) (regTwo!5942 (regTwo!5943 (regTwo!5942 r!15766))))) (= lambda!34623 lambda!34608))))

(assert (=> bs!243078 (= (and (= (_2!6474 lt!349278) s!10566) (= (regOne!5942 (regOne!5943 (regTwo!5942 r!15766))) EmptyExpr!2715) (= (regTwo!5942 (regOne!5943 (regTwo!5942 r!15766))) (regTwo!5942 r!15766))) (= lambda!34623 lambda!34566))))

(declare-fun bs!243081 () Bool)

(assert (= bs!243081 (and b!975139 b!974614)))

(assert (=> bs!243081 (not (= lambda!34623 lambda!34607))))

(declare-fun bs!243082 () Bool)

(assert (= bs!243082 (and b!975139 b!975136)))

(assert (=> bs!243082 (not (= lambda!34623 lambda!34622))))

(declare-fun bs!243083 () Bool)

(assert (= bs!243083 (and b!975139 b!974357)))

(assert (=> bs!243083 (not (= lambda!34623 lambda!34590))))

(assert (=> b!975139 true))

(assert (=> b!975139 true))

(declare-fun b!975134 () Bool)

(declare-fun res!442978 () Bool)

(declare-fun e!628127 () Bool)

(assert (=> b!975134 (=> res!442978 e!628127)))

(declare-fun call!62235 () Bool)

(assert (=> b!975134 (= res!442978 call!62235)))

(declare-fun e!628125 () Bool)

(assert (=> b!975134 (= e!628125 e!628127)))

(declare-fun b!975135 () Bool)

(declare-fun e!628126 () Bool)

(declare-fun e!628124 () Bool)

(assert (=> b!975135 (= e!628126 e!628124)))

(declare-fun res!442979 () Bool)

(assert (=> b!975135 (= res!442979 (not ((_ is EmptyLang!2715) (regOne!5943 (regTwo!5942 r!15766)))))))

(assert (=> b!975135 (=> (not res!442979) (not e!628124))))

(declare-fun call!62236 () Bool)

(assert (=> b!975136 (= e!628127 call!62236)))

(declare-fun b!975137 () Bool)

(declare-fun c!159238 () Bool)

(assert (=> b!975137 (= c!159238 ((_ is ElementMatch!2715) (regOne!5943 (regTwo!5942 r!15766))))))

(declare-fun e!628122 () Bool)

(assert (=> b!975137 (= e!628124 e!628122)))

(declare-fun b!975138 () Bool)

(declare-fun e!628121 () Bool)

(assert (=> b!975138 (= e!628121 (matchRSpec!514 (regTwo!5943 (regOne!5943 (regTwo!5942 r!15766))) (_2!6474 lt!349278)))))

(assert (=> b!975139 (= e!628125 call!62236)))

(declare-fun b!975140 () Bool)

(declare-fun c!159237 () Bool)

(assert (=> b!975140 (= c!159237 ((_ is Union!2715) (regOne!5943 (regTwo!5942 r!15766))))))

(declare-fun e!628123 () Bool)

(assert (=> b!975140 (= e!628122 e!628123)))

(declare-fun b!975141 () Bool)

(assert (=> b!975141 (= e!628123 e!628121)))

(declare-fun res!442980 () Bool)

(assert (=> b!975141 (= res!442980 (matchRSpec!514 (regOne!5943 (regOne!5943 (regTwo!5942 r!15766))) (_2!6474 lt!349278)))))

(assert (=> b!975141 (=> res!442980 e!628121)))

(declare-fun bm!62230 () Bool)

(assert (=> bm!62230 (= call!62235 (isEmpty!6242 (_2!6474 lt!349278)))))

(declare-fun c!159235 () Bool)

(declare-fun bm!62231 () Bool)

(assert (=> bm!62231 (= call!62236 (Exists!454 (ite c!159235 lambda!34622 lambda!34623)))))

(declare-fun d!287351 () Bool)

(declare-fun c!159236 () Bool)

(assert (=> d!287351 (= c!159236 ((_ is EmptyExpr!2715) (regOne!5943 (regTwo!5942 r!15766))))))

(assert (=> d!287351 (= (matchRSpec!514 (regOne!5943 (regTwo!5942 r!15766)) (_2!6474 lt!349278)) e!628126)))

(declare-fun b!975142 () Bool)

(assert (=> b!975142 (= e!628122 (= (_2!6474 lt!349278) (Cons!9929 (c!158928 (regOne!5943 (regTwo!5942 r!15766))) Nil!9929)))))

(declare-fun b!975143 () Bool)

(assert (=> b!975143 (= e!628123 e!628125)))

(assert (=> b!975143 (= c!159235 ((_ is Star!2715) (regOne!5943 (regTwo!5942 r!15766))))))

(declare-fun b!975144 () Bool)

(assert (=> b!975144 (= e!628126 call!62235)))

(assert (= (and d!287351 c!159236) b!975144))

(assert (= (and d!287351 (not c!159236)) b!975135))

(assert (= (and b!975135 res!442979) b!975137))

(assert (= (and b!975137 c!159238) b!975142))

(assert (= (and b!975137 (not c!159238)) b!975140))

(assert (= (and b!975140 c!159237) b!975141))

(assert (= (and b!975140 (not c!159237)) b!975143))

(assert (= (and b!975141 (not res!442980)) b!975138))

(assert (= (and b!975143 c!159235) b!975134))

(assert (= (and b!975143 (not c!159235)) b!975139))

(assert (= (and b!975134 (not res!442978)) b!975136))

(assert (= (or b!975136 b!975139) bm!62231))

(assert (= (or b!975144 b!975134) bm!62230))

(declare-fun m!1177303 () Bool)

(assert (=> b!975138 m!1177303))

(declare-fun m!1177305 () Bool)

(assert (=> b!975141 m!1177305))

(assert (=> bm!62230 m!1176619))

(declare-fun m!1177307 () Bool)

(assert (=> bm!62231 m!1177307))

(assert (=> b!974351 d!287351))

(declare-fun d!287353 () Bool)

(assert (=> d!287353 (= (isEmpty!6242 (tail!1356 s!10566)) ((_ is Nil!9929) (tail!1356 s!10566)))))

(assert (=> b!974376 d!287353))

(declare-fun d!287355 () Bool)

(assert (=> d!287355 (= (tail!1356 s!10566) (t!100991 s!10566))))

(assert (=> b!974376 d!287355))

(assert (=> b!974164 d!287285))

(assert (=> b!974372 d!287353))

(assert (=> b!974372 d!287355))

(declare-fun d!287357 () Bool)

(assert (=> d!287357 (= (nullable!835 (removeUselessConcat!346 (regTwo!5942 r!15766))) (nullableFct!200 (removeUselessConcat!346 (regTwo!5942 r!15766))))))

(declare-fun bs!243084 () Bool)

(assert (= bs!243084 d!287357))

(assert (=> bs!243084 m!1176495))

(declare-fun m!1177309 () Bool)

(assert (=> bs!243084 m!1177309))

(assert (=> b!974152 d!287357))

(declare-fun b!975145 () Bool)

(declare-fun e!628131 () Regex!2715)

(declare-fun e!628128 () Regex!2715)

(assert (=> b!975145 (= e!628131 e!628128)))

(declare-fun c!159240 () Bool)

(assert (=> b!975145 (= c!159240 ((_ is Union!2715) (ite c!159004 (regTwo!5942 (regTwo!5942 r!15766)) (ite c!159005 (regTwo!5943 (regTwo!5942 r!15766)) (reg!3044 (regTwo!5942 r!15766))))))))

(declare-fun b!975146 () Bool)

(declare-fun e!628133 () Regex!2715)

(declare-fun call!62237 () Regex!2715)

(assert (=> b!975146 (= e!628133 call!62237)))

(declare-fun b!975147 () Bool)

(declare-fun e!628132 () Regex!2715)

(assert (=> b!975147 (= e!628133 e!628132)))

(declare-fun c!159241 () Bool)

(assert (=> b!975147 (= c!159241 (and ((_ is Concat!4548) (ite c!159004 (regTwo!5942 (regTwo!5942 r!15766)) (ite c!159005 (regTwo!5943 (regTwo!5942 r!15766)) (reg!3044 (regTwo!5942 r!15766))))) ((_ is EmptyExpr!2715) (regTwo!5942 (ite c!159004 (regTwo!5942 (regTwo!5942 r!15766)) (ite c!159005 (regTwo!5943 (regTwo!5942 r!15766)) (reg!3044 (regTwo!5942 r!15766))))))))))

(declare-fun b!975148 () Bool)

(declare-fun c!159239 () Bool)

(assert (=> b!975148 (= c!159239 ((_ is Concat!4548) (ite c!159004 (regTwo!5942 (regTwo!5942 r!15766)) (ite c!159005 (regTwo!5943 (regTwo!5942 r!15766)) (reg!3044 (regTwo!5942 r!15766))))))))

(assert (=> b!975148 (= e!628132 e!628131)))

(declare-fun b!975149 () Bool)

(declare-fun call!62238 () Regex!2715)

(declare-fun call!62240 () Regex!2715)

(assert (=> b!975149 (= e!628131 (Concat!4548 call!62238 call!62240))))

(declare-fun b!975150 () Bool)

(declare-fun call!62241 () Regex!2715)

(assert (=> b!975150 (= e!628128 (Union!2715 call!62238 call!62241))))

(declare-fun c!159243 () Bool)

(declare-fun b!975151 () Bool)

(assert (=> b!975151 (= c!159243 ((_ is Star!2715) (ite c!159004 (regTwo!5942 (regTwo!5942 r!15766)) (ite c!159005 (regTwo!5943 (regTwo!5942 r!15766)) (reg!3044 (regTwo!5942 r!15766))))))))

(declare-fun e!628130 () Regex!2715)

(assert (=> b!975151 (= e!628128 e!628130)))

(declare-fun bm!62232 () Bool)

(assert (=> bm!62232 (= call!62241 call!62240)))

(declare-fun bm!62233 () Bool)

(declare-fun call!62239 () Regex!2715)

(assert (=> bm!62233 (= call!62239 call!62237)))

(declare-fun d!287359 () Bool)

(declare-fun e!628129 () Bool)

(assert (=> d!287359 e!628129))

(declare-fun res!442981 () Bool)

(assert (=> d!287359 (=> (not res!442981) (not e!628129))))

(declare-fun lt!349396 () Regex!2715)

(assert (=> d!287359 (= res!442981 (validRegex!1184 lt!349396))))

(assert (=> d!287359 (= lt!349396 e!628133)))

(declare-fun c!159242 () Bool)

(assert (=> d!287359 (= c!159242 (and ((_ is Concat!4548) (ite c!159004 (regTwo!5942 (regTwo!5942 r!15766)) (ite c!159005 (regTwo!5943 (regTwo!5942 r!15766)) (reg!3044 (regTwo!5942 r!15766))))) ((_ is EmptyExpr!2715) (regOne!5942 (ite c!159004 (regTwo!5942 (regTwo!5942 r!15766)) (ite c!159005 (regTwo!5943 (regTwo!5942 r!15766)) (reg!3044 (regTwo!5942 r!15766))))))))))

(assert (=> d!287359 (validRegex!1184 (ite c!159004 (regTwo!5942 (regTwo!5942 r!15766)) (ite c!159005 (regTwo!5943 (regTwo!5942 r!15766)) (reg!3044 (regTwo!5942 r!15766)))))))

(assert (=> d!287359 (= (removeUselessConcat!346 (ite c!159004 (regTwo!5942 (regTwo!5942 r!15766)) (ite c!159005 (regTwo!5943 (regTwo!5942 r!15766)) (reg!3044 (regTwo!5942 r!15766))))) lt!349396)))

(declare-fun b!975152 () Bool)

(assert (=> b!975152 (= e!628129 (= (nullable!835 lt!349396) (nullable!835 (ite c!159004 (regTwo!5942 (regTwo!5942 r!15766)) (ite c!159005 (regTwo!5943 (regTwo!5942 r!15766)) (reg!3044 (regTwo!5942 r!15766)))))))))

(declare-fun b!975153 () Bool)

(assert (=> b!975153 (= e!628130 (Star!2715 call!62241))))

(declare-fun bm!62234 () Bool)

(assert (=> bm!62234 (= call!62237 (removeUselessConcat!346 (ite c!159242 (regTwo!5942 (ite c!159004 (regTwo!5942 (regTwo!5942 r!15766)) (ite c!159005 (regTwo!5943 (regTwo!5942 r!15766)) (reg!3044 (regTwo!5942 r!15766))))) (ite (or c!159241 c!159239) (regOne!5942 (ite c!159004 (regTwo!5942 (regTwo!5942 r!15766)) (ite c!159005 (regTwo!5943 (regTwo!5942 r!15766)) (reg!3044 (regTwo!5942 r!15766))))) (regOne!5943 (ite c!159004 (regTwo!5942 (regTwo!5942 r!15766)) (ite c!159005 (regTwo!5943 (regTwo!5942 r!15766)) (reg!3044 (regTwo!5942 r!15766)))))))))))

(declare-fun b!975154 () Bool)

(assert (=> b!975154 (= e!628130 (ite c!159004 (regTwo!5942 (regTwo!5942 r!15766)) (ite c!159005 (regTwo!5943 (regTwo!5942 r!15766)) (reg!3044 (regTwo!5942 r!15766)))))))

(declare-fun bm!62235 () Bool)

(assert (=> bm!62235 (= call!62240 (removeUselessConcat!346 (ite c!159239 (regTwo!5942 (ite c!159004 (regTwo!5942 (regTwo!5942 r!15766)) (ite c!159005 (regTwo!5943 (regTwo!5942 r!15766)) (reg!3044 (regTwo!5942 r!15766))))) (ite c!159240 (regTwo!5943 (ite c!159004 (regTwo!5942 (regTwo!5942 r!15766)) (ite c!159005 (regTwo!5943 (regTwo!5942 r!15766)) (reg!3044 (regTwo!5942 r!15766))))) (reg!3044 (ite c!159004 (regTwo!5942 (regTwo!5942 r!15766)) (ite c!159005 (regTwo!5943 (regTwo!5942 r!15766)) (reg!3044 (regTwo!5942 r!15766)))))))))))

(declare-fun bm!62236 () Bool)

(assert (=> bm!62236 (= call!62238 call!62239)))

(declare-fun b!975155 () Bool)

(assert (=> b!975155 (= e!628132 call!62239)))

(assert (= (and d!287359 c!159242) b!975146))

(assert (= (and d!287359 (not c!159242)) b!975147))

(assert (= (and b!975147 c!159241) b!975155))

(assert (= (and b!975147 (not c!159241)) b!975148))

(assert (= (and b!975148 c!159239) b!975149))

(assert (= (and b!975148 (not c!159239)) b!975145))

(assert (= (and b!975145 c!159240) b!975150))

(assert (= (and b!975145 (not c!159240)) b!975151))

(assert (= (and b!975151 c!159243) b!975153))

(assert (= (and b!975151 (not c!159243)) b!975154))

(assert (= (or b!975150 b!975153) bm!62232))

(assert (= (or b!975149 bm!62232) bm!62235))

(assert (= (or b!975149 b!975150) bm!62236))

(assert (= (or b!975155 bm!62236) bm!62233))

(assert (= (or b!975146 bm!62233) bm!62234))

(assert (= (and d!287359 res!442981) b!975152))

(declare-fun m!1177311 () Bool)

(assert (=> d!287359 m!1177311))

(declare-fun m!1177313 () Bool)

(assert (=> d!287359 m!1177313))

(declare-fun m!1177315 () Bool)

(assert (=> b!975152 m!1177315))

(declare-fun m!1177317 () Bool)

(assert (=> b!975152 m!1177317))

(declare-fun m!1177319 () Bool)

(assert (=> bm!62234 m!1177319))

(declare-fun m!1177321 () Bool)

(assert (=> bm!62235 m!1177321))

(assert (=> bm!62070 d!287359))

(declare-fun d!287361 () Bool)

(assert (=> d!287361 (= (nullable!835 (regTwo!5942 r!15766)) (nullableFct!200 (regTwo!5942 r!15766)))))

(declare-fun bs!243085 () Bool)

(assert (= bs!243085 d!287361))

(declare-fun m!1177323 () Bool)

(assert (=> bs!243085 m!1177323))

(assert (=> b!974383 d!287361))

(declare-fun d!287363 () Bool)

(assert (=> d!287363 (= (isDefined!1932 lt!349340) (not (isEmpty!6244 lt!349340)))))

(declare-fun bs!243086 () Bool)

(assert (= bs!243086 d!287363))

(declare-fun m!1177325 () Bool)

(assert (=> bs!243086 m!1177325))

(assert (=> b!974419 d!287363))

(declare-fun d!287365 () Bool)

(assert (=> d!287365 (= (nullable!835 lt!349311) (nullableFct!200 lt!349311))))

(declare-fun bs!243087 () Bool)

(assert (= bs!243087 d!287365))

(declare-fun m!1177327 () Bool)

(assert (=> bs!243087 m!1177327))

(assert (=> b!974184 d!287365))

(assert (=> b!974184 d!287361))

(assert (=> b!974150 d!287255))

(declare-fun b!975156 () Bool)

(declare-fun e!628137 () Regex!2715)

(declare-fun e!628134 () Regex!2715)

(assert (=> b!975156 (= e!628137 e!628134)))

(declare-fun c!159245 () Bool)

(assert (=> b!975156 (= c!159245 ((_ is Union!2715) (ite c!159007 (regTwo!5942 (regTwo!5942 r!15766)) (ite (or c!159006 c!159004) (regOne!5942 (regTwo!5942 r!15766)) (regOne!5943 (regTwo!5942 r!15766))))))))

(declare-fun b!975157 () Bool)

(declare-fun e!628139 () Regex!2715)

(declare-fun call!62242 () Regex!2715)

(assert (=> b!975157 (= e!628139 call!62242)))

(declare-fun b!975158 () Bool)

(declare-fun e!628138 () Regex!2715)

(assert (=> b!975158 (= e!628139 e!628138)))

(declare-fun c!159246 () Bool)

(assert (=> b!975158 (= c!159246 (and ((_ is Concat!4548) (ite c!159007 (regTwo!5942 (regTwo!5942 r!15766)) (ite (or c!159006 c!159004) (regOne!5942 (regTwo!5942 r!15766)) (regOne!5943 (regTwo!5942 r!15766))))) ((_ is EmptyExpr!2715) (regTwo!5942 (ite c!159007 (regTwo!5942 (regTwo!5942 r!15766)) (ite (or c!159006 c!159004) (regOne!5942 (regTwo!5942 r!15766)) (regOne!5943 (regTwo!5942 r!15766))))))))))

(declare-fun c!159244 () Bool)

(declare-fun b!975159 () Bool)

(assert (=> b!975159 (= c!159244 ((_ is Concat!4548) (ite c!159007 (regTwo!5942 (regTwo!5942 r!15766)) (ite (or c!159006 c!159004) (regOne!5942 (regTwo!5942 r!15766)) (regOne!5943 (regTwo!5942 r!15766))))))))

(assert (=> b!975159 (= e!628138 e!628137)))

(declare-fun b!975160 () Bool)

(declare-fun call!62243 () Regex!2715)

(declare-fun call!62245 () Regex!2715)

(assert (=> b!975160 (= e!628137 (Concat!4548 call!62243 call!62245))))

(declare-fun b!975161 () Bool)

(declare-fun call!62246 () Regex!2715)

(assert (=> b!975161 (= e!628134 (Union!2715 call!62243 call!62246))))

(declare-fun b!975162 () Bool)

(declare-fun c!159248 () Bool)

(assert (=> b!975162 (= c!159248 ((_ is Star!2715) (ite c!159007 (regTwo!5942 (regTwo!5942 r!15766)) (ite (or c!159006 c!159004) (regOne!5942 (regTwo!5942 r!15766)) (regOne!5943 (regTwo!5942 r!15766))))))))

(declare-fun e!628136 () Regex!2715)

(assert (=> b!975162 (= e!628134 e!628136)))

(declare-fun bm!62237 () Bool)

(assert (=> bm!62237 (= call!62246 call!62245)))

(declare-fun bm!62238 () Bool)

(declare-fun call!62244 () Regex!2715)

(assert (=> bm!62238 (= call!62244 call!62242)))

(declare-fun d!287367 () Bool)

(declare-fun e!628135 () Bool)

(assert (=> d!287367 e!628135))

(declare-fun res!442982 () Bool)

(assert (=> d!287367 (=> (not res!442982) (not e!628135))))

(declare-fun lt!349397 () Regex!2715)

(assert (=> d!287367 (= res!442982 (validRegex!1184 lt!349397))))

(assert (=> d!287367 (= lt!349397 e!628139)))

(declare-fun c!159247 () Bool)

(assert (=> d!287367 (= c!159247 (and ((_ is Concat!4548) (ite c!159007 (regTwo!5942 (regTwo!5942 r!15766)) (ite (or c!159006 c!159004) (regOne!5942 (regTwo!5942 r!15766)) (regOne!5943 (regTwo!5942 r!15766))))) ((_ is EmptyExpr!2715) (regOne!5942 (ite c!159007 (regTwo!5942 (regTwo!5942 r!15766)) (ite (or c!159006 c!159004) (regOne!5942 (regTwo!5942 r!15766)) (regOne!5943 (regTwo!5942 r!15766))))))))))

(assert (=> d!287367 (validRegex!1184 (ite c!159007 (regTwo!5942 (regTwo!5942 r!15766)) (ite (or c!159006 c!159004) (regOne!5942 (regTwo!5942 r!15766)) (regOne!5943 (regTwo!5942 r!15766)))))))

(assert (=> d!287367 (= (removeUselessConcat!346 (ite c!159007 (regTwo!5942 (regTwo!5942 r!15766)) (ite (or c!159006 c!159004) (regOne!5942 (regTwo!5942 r!15766)) (regOne!5943 (regTwo!5942 r!15766))))) lt!349397)))

(declare-fun b!975163 () Bool)

(assert (=> b!975163 (= e!628135 (= (nullable!835 lt!349397) (nullable!835 (ite c!159007 (regTwo!5942 (regTwo!5942 r!15766)) (ite (or c!159006 c!159004) (regOne!5942 (regTwo!5942 r!15766)) (regOne!5943 (regTwo!5942 r!15766)))))))))

(declare-fun b!975164 () Bool)

(assert (=> b!975164 (= e!628136 (Star!2715 call!62246))))

(declare-fun bm!62239 () Bool)

(assert (=> bm!62239 (= call!62242 (removeUselessConcat!346 (ite c!159247 (regTwo!5942 (ite c!159007 (regTwo!5942 (regTwo!5942 r!15766)) (ite (or c!159006 c!159004) (regOne!5942 (regTwo!5942 r!15766)) (regOne!5943 (regTwo!5942 r!15766))))) (ite (or c!159246 c!159244) (regOne!5942 (ite c!159007 (regTwo!5942 (regTwo!5942 r!15766)) (ite (or c!159006 c!159004) (regOne!5942 (regTwo!5942 r!15766)) (regOne!5943 (regTwo!5942 r!15766))))) (regOne!5943 (ite c!159007 (regTwo!5942 (regTwo!5942 r!15766)) (ite (or c!159006 c!159004) (regOne!5942 (regTwo!5942 r!15766)) (regOne!5943 (regTwo!5942 r!15766)))))))))))

(declare-fun b!975165 () Bool)

(assert (=> b!975165 (= e!628136 (ite c!159007 (regTwo!5942 (regTwo!5942 r!15766)) (ite (or c!159006 c!159004) (regOne!5942 (regTwo!5942 r!15766)) (regOne!5943 (regTwo!5942 r!15766)))))))

(declare-fun bm!62240 () Bool)

(assert (=> bm!62240 (= call!62245 (removeUselessConcat!346 (ite c!159244 (regTwo!5942 (ite c!159007 (regTwo!5942 (regTwo!5942 r!15766)) (ite (or c!159006 c!159004) (regOne!5942 (regTwo!5942 r!15766)) (regOne!5943 (regTwo!5942 r!15766))))) (ite c!159245 (regTwo!5943 (ite c!159007 (regTwo!5942 (regTwo!5942 r!15766)) (ite (or c!159006 c!159004) (regOne!5942 (regTwo!5942 r!15766)) (regOne!5943 (regTwo!5942 r!15766))))) (reg!3044 (ite c!159007 (regTwo!5942 (regTwo!5942 r!15766)) (ite (or c!159006 c!159004) (regOne!5942 (regTwo!5942 r!15766)) (regOne!5943 (regTwo!5942 r!15766)))))))))))

(declare-fun bm!62241 () Bool)

(assert (=> bm!62241 (= call!62243 call!62244)))

(declare-fun b!975166 () Bool)

(assert (=> b!975166 (= e!628138 call!62244)))

(assert (= (and d!287367 c!159247) b!975157))

(assert (= (and d!287367 (not c!159247)) b!975158))

(assert (= (and b!975158 c!159246) b!975166))

(assert (= (and b!975158 (not c!159246)) b!975159))

(assert (= (and b!975159 c!159244) b!975160))

(assert (= (and b!975159 (not c!159244)) b!975156))

(assert (= (and b!975156 c!159245) b!975161))

(assert (= (and b!975156 (not c!159245)) b!975162))

(assert (= (and b!975162 c!159248) b!975164))

(assert (= (and b!975162 (not c!159248)) b!975165))

(assert (= (or b!975161 b!975164) bm!62237))

(assert (= (or b!975160 bm!62237) bm!62240))

(assert (= (or b!975160 b!975161) bm!62241))

(assert (= (or b!975166 bm!62241) bm!62238))

(assert (= (or b!975157 bm!62238) bm!62239))

(assert (= (and d!287367 res!442982) b!975163))

(declare-fun m!1177329 () Bool)

(assert (=> d!287367 m!1177329))

(declare-fun m!1177331 () Bool)

(assert (=> d!287367 m!1177331))

(declare-fun m!1177333 () Bool)

(assert (=> b!975163 m!1177333))

(declare-fun m!1177335 () Bool)

(assert (=> b!975163 m!1177335))

(declare-fun m!1177337 () Bool)

(assert (=> bm!62239 m!1177337))

(declare-fun m!1177339 () Bool)

(assert (=> bm!62240 m!1177339))

(assert (=> bm!62069 d!287367))

(assert (=> b!974381 d!287255))

(declare-fun d!287369 () Bool)

(assert (=> d!287369 (= (nullable!835 (reg!3044 (regTwo!5942 r!15766))) (nullableFct!200 (reg!3044 (regTwo!5942 r!15766))))))

(declare-fun bs!243088 () Bool)

(assert (= bs!243088 d!287369))

(declare-fun m!1177341 () Bool)

(assert (=> bs!243088 m!1177341))

(assert (=> b!974198 d!287369))

(assert (=> bm!62103 d!287143))

(declare-fun b!975167 () Bool)

(declare-fun e!628145 () Bool)

(declare-fun e!628143 () Bool)

(assert (=> b!975167 (= e!628145 e!628143)))

(declare-fun res!442990 () Bool)

(assert (=> b!975167 (=> (not res!442990) (not e!628143))))

(declare-fun lt!349398 () Bool)

(assert (=> b!975167 (= res!442990 (not lt!349398))))

(declare-fun d!287371 () Bool)

(declare-fun e!628140 () Bool)

(assert (=> d!287371 e!628140))

(declare-fun c!159249 () Bool)

(assert (=> d!287371 (= c!159249 ((_ is EmptyExpr!2715) (derivativeStep!641 r!15766 (head!1794 s!10566))))))

(declare-fun e!628141 () Bool)

(assert (=> d!287371 (= lt!349398 e!628141)))

(declare-fun c!159251 () Bool)

(assert (=> d!287371 (= c!159251 (isEmpty!6242 (tail!1356 s!10566)))))

(assert (=> d!287371 (validRegex!1184 (derivativeStep!641 r!15766 (head!1794 s!10566)))))

(assert (=> d!287371 (= (matchR!1251 (derivativeStep!641 r!15766 (head!1794 s!10566)) (tail!1356 s!10566)) lt!349398)))

(declare-fun b!975168 () Bool)

(declare-fun e!628142 () Bool)

(assert (=> b!975168 (= e!628142 (not (= (head!1794 (tail!1356 s!10566)) (c!158928 (derivativeStep!641 r!15766 (head!1794 s!10566))))))))

(declare-fun b!975169 () Bool)

(assert (=> b!975169 (= e!628141 (matchR!1251 (derivativeStep!641 (derivativeStep!641 r!15766 (head!1794 s!10566)) (head!1794 (tail!1356 s!10566))) (tail!1356 (tail!1356 s!10566))))))

(declare-fun b!975170 () Bool)

(assert (=> b!975170 (= e!628141 (nullable!835 (derivativeStep!641 r!15766 (head!1794 s!10566))))))

(declare-fun b!975171 () Bool)

(declare-fun res!442987 () Bool)

(assert (=> b!975171 (=> res!442987 e!628145)))

(assert (=> b!975171 (= res!442987 (not ((_ is ElementMatch!2715) (derivativeStep!641 r!15766 (head!1794 s!10566)))))))

(declare-fun e!628146 () Bool)

(assert (=> b!975171 (= e!628146 e!628145)))

(declare-fun b!975172 () Bool)

(assert (=> b!975172 (= e!628146 (not lt!349398))))

(declare-fun b!975173 () Bool)

(declare-fun res!442986 () Bool)

(declare-fun e!628144 () Bool)

(assert (=> b!975173 (=> (not res!442986) (not e!628144))))

(assert (=> b!975173 (= res!442986 (isEmpty!6242 (tail!1356 (tail!1356 s!10566))))))

(declare-fun b!975174 () Bool)

(declare-fun res!442988 () Bool)

(assert (=> b!975174 (=> res!442988 e!628145)))

(assert (=> b!975174 (= res!442988 e!628144)))

(declare-fun res!442985 () Bool)

(assert (=> b!975174 (=> (not res!442985) (not e!628144))))

(assert (=> b!975174 (= res!442985 lt!349398)))

(declare-fun b!975175 () Bool)

(assert (=> b!975175 (= e!628143 e!628142)))

(declare-fun res!442984 () Bool)

(assert (=> b!975175 (=> res!442984 e!628142)))

(declare-fun call!62247 () Bool)

(assert (=> b!975175 (= res!442984 call!62247)))

(declare-fun b!975176 () Bool)

(assert (=> b!975176 (= e!628140 e!628146)))

(declare-fun c!159250 () Bool)

(assert (=> b!975176 (= c!159250 ((_ is EmptyLang!2715) (derivativeStep!641 r!15766 (head!1794 s!10566))))))

(declare-fun b!975177 () Bool)

(declare-fun res!442989 () Bool)

(assert (=> b!975177 (=> res!442989 e!628142)))

(assert (=> b!975177 (= res!442989 (not (isEmpty!6242 (tail!1356 (tail!1356 s!10566)))))))

(declare-fun b!975178 () Bool)

(assert (=> b!975178 (= e!628140 (= lt!349398 call!62247))))

(declare-fun bm!62242 () Bool)

(assert (=> bm!62242 (= call!62247 (isEmpty!6242 (tail!1356 s!10566)))))

(declare-fun b!975179 () Bool)

(assert (=> b!975179 (= e!628144 (= (head!1794 (tail!1356 s!10566)) (c!158928 (derivativeStep!641 r!15766 (head!1794 s!10566)))))))

(declare-fun b!975180 () Bool)

(declare-fun res!442983 () Bool)

(assert (=> b!975180 (=> (not res!442983) (not e!628144))))

(assert (=> b!975180 (= res!442983 (not call!62247))))

(assert (= (and d!287371 c!159251) b!975170))

(assert (= (and d!287371 (not c!159251)) b!975169))

(assert (= (and d!287371 c!159249) b!975178))

(assert (= (and d!287371 (not c!159249)) b!975176))

(assert (= (and b!975176 c!159250) b!975172))

(assert (= (and b!975176 (not c!159250)) b!975171))

(assert (= (and b!975171 (not res!442987)) b!975174))

(assert (= (and b!975174 res!442985) b!975180))

(assert (= (and b!975180 res!442983) b!975173))

(assert (= (and b!975173 res!442986) b!975179))

(assert (= (and b!975174 (not res!442988)) b!975167))

(assert (= (and b!975167 res!442990) b!975175))

(assert (= (and b!975175 (not res!442984)) b!975177))

(assert (= (and b!975177 (not res!442989)) b!975168))

(assert (= (or b!975178 b!975175 b!975180) bm!62242))

(assert (=> b!975170 m!1176725))

(declare-fun m!1177343 () Bool)

(assert (=> b!975170 m!1177343))

(assert (=> b!975168 m!1176637))

(declare-fun m!1177345 () Bool)

(assert (=> b!975168 m!1177345))

(assert (=> b!975177 m!1176637))

(declare-fun m!1177347 () Bool)

(assert (=> b!975177 m!1177347))

(assert (=> b!975177 m!1177347))

(declare-fun m!1177349 () Bool)

(assert (=> b!975177 m!1177349))

(assert (=> bm!62242 m!1176637))

(assert (=> bm!62242 m!1176639))

(assert (=> b!975179 m!1176637))

(assert (=> b!975179 m!1177345))

(assert (=> d!287371 m!1176637))

(assert (=> d!287371 m!1176639))

(assert (=> d!287371 m!1176725))

(declare-fun m!1177351 () Bool)

(assert (=> d!287371 m!1177351))

(assert (=> b!975173 m!1176637))

(assert (=> b!975173 m!1177347))

(assert (=> b!975173 m!1177347))

(assert (=> b!975173 m!1177349))

(assert (=> b!975169 m!1176637))

(assert (=> b!975169 m!1177345))

(assert (=> b!975169 m!1176725))

(assert (=> b!975169 m!1177345))

(declare-fun m!1177353 () Bool)

(assert (=> b!975169 m!1177353))

(assert (=> b!975169 m!1176637))

(assert (=> b!975169 m!1177347))

(assert (=> b!975169 m!1177353))

(assert (=> b!975169 m!1177347))

(declare-fun m!1177355 () Bool)

(assert (=> b!975169 m!1177355))

(assert (=> b!974368 d!287371))

(declare-fun c!159253 () Bool)

(declare-fun bm!62243 () Bool)

(declare-fun call!62251 () Regex!2715)

(declare-fun c!159254 () Bool)

(assert (=> bm!62243 (= call!62251 (derivativeStep!641 (ite c!159254 (regTwo!5943 r!15766) (ite c!159253 (regTwo!5942 r!15766) (regOne!5942 r!15766))) (head!1794 s!10566)))))

(declare-fun bm!62244 () Bool)

(declare-fun call!62248 () Regex!2715)

(assert (=> bm!62244 (= call!62248 call!62251)))

(declare-fun d!287373 () Bool)

(declare-fun lt!349399 () Regex!2715)

(assert (=> d!287373 (validRegex!1184 lt!349399)))

(declare-fun e!628148 () Regex!2715)

(assert (=> d!287373 (= lt!349399 e!628148)))

(declare-fun c!159255 () Bool)

(assert (=> d!287373 (= c!159255 (or ((_ is EmptyExpr!2715) r!15766) ((_ is EmptyLang!2715) r!15766)))))

(assert (=> d!287373 (validRegex!1184 r!15766)))

(assert (=> d!287373 (= (derivativeStep!641 r!15766 (head!1794 s!10566)) lt!349399)))

(declare-fun b!975181 () Bool)

(declare-fun e!628149 () Regex!2715)

(declare-fun e!628151 () Regex!2715)

(assert (=> b!975181 (= e!628149 e!628151)))

(declare-fun c!159256 () Bool)

(assert (=> b!975181 (= c!159256 ((_ is Star!2715) r!15766))))

(declare-fun b!975182 () Bool)

(assert (=> b!975182 (= c!159253 (nullable!835 (regOne!5942 r!15766)))))

(declare-fun e!628150 () Regex!2715)

(assert (=> b!975182 (= e!628151 e!628150)))

(declare-fun b!975183 () Bool)

(assert (=> b!975183 (= e!628148 EmptyLang!2715)))

(declare-fun b!975184 () Bool)

(declare-fun e!628147 () Regex!2715)

(assert (=> b!975184 (= e!628147 (ite (= (head!1794 s!10566) (c!158928 r!15766)) EmptyExpr!2715 EmptyLang!2715))))

(declare-fun bm!62245 () Bool)

(declare-fun call!62249 () Regex!2715)

(declare-fun call!62250 () Regex!2715)

(assert (=> bm!62245 (= call!62249 call!62250)))

(declare-fun b!975185 () Bool)

(assert (=> b!975185 (= c!159254 ((_ is Union!2715) r!15766))))

(assert (=> b!975185 (= e!628147 e!628149)))

(declare-fun b!975186 () Bool)

(assert (=> b!975186 (= e!628150 (Union!2715 (Concat!4548 call!62249 (regTwo!5942 r!15766)) call!62248))))

(declare-fun b!975187 () Bool)

(assert (=> b!975187 (= e!628148 e!628147)))

(declare-fun c!159252 () Bool)

(assert (=> b!975187 (= c!159252 ((_ is ElementMatch!2715) r!15766))))

(declare-fun b!975188 () Bool)

(assert (=> b!975188 (= e!628151 (Concat!4548 call!62249 r!15766))))

(declare-fun b!975189 () Bool)

(assert (=> b!975189 (= e!628149 (Union!2715 call!62250 call!62251))))

(declare-fun bm!62246 () Bool)

(assert (=> bm!62246 (= call!62250 (derivativeStep!641 (ite c!159254 (regOne!5943 r!15766) (ite c!159256 (reg!3044 r!15766) (regOne!5942 r!15766))) (head!1794 s!10566)))))

(declare-fun b!975190 () Bool)

(assert (=> b!975190 (= e!628150 (Union!2715 (Concat!4548 call!62248 (regTwo!5942 r!15766)) EmptyLang!2715))))

(assert (= (and d!287373 c!159255) b!975183))

(assert (= (and d!287373 (not c!159255)) b!975187))

(assert (= (and b!975187 c!159252) b!975184))

(assert (= (and b!975187 (not c!159252)) b!975185))

(assert (= (and b!975185 c!159254) b!975189))

(assert (= (and b!975185 (not c!159254)) b!975181))

(assert (= (and b!975181 c!159256) b!975188))

(assert (= (and b!975181 (not c!159256)) b!975182))

(assert (= (and b!975182 c!159253) b!975186))

(assert (= (and b!975182 (not c!159253)) b!975190))

(assert (= (or b!975186 b!975190) bm!62244))

(assert (= (or b!975188 b!975186) bm!62245))

(assert (= (or b!975189 bm!62245) bm!62246))

(assert (= (or b!975189 bm!62244) bm!62243))

(assert (=> bm!62243 m!1176635))

(declare-fun m!1177357 () Bool)

(assert (=> bm!62243 m!1177357))

(declare-fun m!1177359 () Bool)

(assert (=> d!287373 m!1177359))

(assert (=> d!287373 m!1176473))

(declare-fun m!1177361 () Bool)

(assert (=> b!975182 m!1177361))

(assert (=> bm!62246 m!1176635))

(declare-fun m!1177363 () Bool)

(assert (=> bm!62246 m!1177363))

(assert (=> b!974368 d!287373))

(assert (=> b!974368 d!287285))

(assert (=> b!974368 d!287355))

(declare-fun b!975191 () Bool)

(declare-fun e!628152 () Bool)

(declare-fun e!628153 () Bool)

(assert (=> b!975191 (= e!628152 e!628153)))

(declare-fun c!159258 () Bool)

(assert (=> b!975191 (= c!159258 ((_ is Star!2715) (ite c!158943 (reg!3044 r!15766) (ite c!158942 (regOne!5943 r!15766) (regOne!5942 r!15766)))))))

(declare-fun b!975192 () Bool)

(declare-fun e!628155 () Bool)

(declare-fun call!62254 () Bool)

(assert (=> b!975192 (= e!628155 call!62254)))

(declare-fun b!975194 () Bool)

(declare-fun res!442992 () Bool)

(declare-fun e!628157 () Bool)

(assert (=> b!975194 (=> (not res!442992) (not e!628157))))

(declare-fun call!62253 () Bool)

(assert (=> b!975194 (= res!442992 call!62253)))

(declare-fun e!628156 () Bool)

(assert (=> b!975194 (= e!628156 e!628157)))

(declare-fun b!975195 () Bool)

(declare-fun e!628154 () Bool)

(declare-fun call!62252 () Bool)

(assert (=> b!975195 (= e!628154 call!62252)))

(declare-fun bm!62247 () Bool)

(assert (=> bm!62247 (= call!62253 call!62252)))

(declare-fun b!975196 () Bool)

(assert (=> b!975196 (= e!628157 call!62254)))

(declare-fun b!975197 () Bool)

(declare-fun res!442994 () Bool)

(declare-fun e!628158 () Bool)

(assert (=> b!975197 (=> res!442994 e!628158)))

(assert (=> b!975197 (= res!442994 (not ((_ is Concat!4548) (ite c!158943 (reg!3044 r!15766) (ite c!158942 (regOne!5943 r!15766) (regOne!5942 r!15766))))))))

(assert (=> b!975197 (= e!628156 e!628158)))

(declare-fun b!975198 () Bool)

(assert (=> b!975198 (= e!628153 e!628156)))

(declare-fun c!159257 () Bool)

(assert (=> b!975198 (= c!159257 ((_ is Union!2715) (ite c!158943 (reg!3044 r!15766) (ite c!158942 (regOne!5943 r!15766) (regOne!5942 r!15766)))))))

(declare-fun bm!62248 () Bool)

(assert (=> bm!62248 (= call!62254 (validRegex!1184 (ite c!159257 (regTwo!5943 (ite c!158943 (reg!3044 r!15766) (ite c!158942 (regOne!5943 r!15766) (regOne!5942 r!15766)))) (regTwo!5942 (ite c!158943 (reg!3044 r!15766) (ite c!158942 (regOne!5943 r!15766) (regOne!5942 r!15766)))))))))

(declare-fun bm!62249 () Bool)

(assert (=> bm!62249 (= call!62252 (validRegex!1184 (ite c!159258 (reg!3044 (ite c!158943 (reg!3044 r!15766) (ite c!158942 (regOne!5943 r!15766) (regOne!5942 r!15766)))) (ite c!159257 (regOne!5943 (ite c!158943 (reg!3044 r!15766) (ite c!158942 (regOne!5943 r!15766) (regOne!5942 r!15766)))) (regOne!5942 (ite c!158943 (reg!3044 r!15766) (ite c!158942 (regOne!5943 r!15766) (regOne!5942 r!15766))))))))))

(declare-fun b!975199 () Bool)

(assert (=> b!975199 (= e!628158 e!628155)))

(declare-fun res!442991 () Bool)

(assert (=> b!975199 (=> (not res!442991) (not e!628155))))

(assert (=> b!975199 (= res!442991 call!62253)))

(declare-fun d!287375 () Bool)

(declare-fun res!442995 () Bool)

(assert (=> d!287375 (=> res!442995 e!628152)))

(assert (=> d!287375 (= res!442995 ((_ is ElementMatch!2715) (ite c!158943 (reg!3044 r!15766) (ite c!158942 (regOne!5943 r!15766) (regOne!5942 r!15766)))))))

(assert (=> d!287375 (= (validRegex!1184 (ite c!158943 (reg!3044 r!15766) (ite c!158942 (regOne!5943 r!15766) (regOne!5942 r!15766)))) e!628152)))

(declare-fun b!975193 () Bool)

(assert (=> b!975193 (= e!628153 e!628154)))

(declare-fun res!442993 () Bool)

(assert (=> b!975193 (= res!442993 (not (nullable!835 (reg!3044 (ite c!158943 (reg!3044 r!15766) (ite c!158942 (regOne!5943 r!15766) (regOne!5942 r!15766)))))))))

(assert (=> b!975193 (=> (not res!442993) (not e!628154))))

(assert (= (and d!287375 (not res!442995)) b!975191))

(assert (= (and b!975191 c!159258) b!975193))

(assert (= (and b!975191 (not c!159258)) b!975198))

(assert (= (and b!975193 res!442993) b!975195))

(assert (= (and b!975198 c!159257) b!975194))

(assert (= (and b!975198 (not c!159257)) b!975197))

(assert (= (and b!975194 res!442992) b!975196))

(assert (= (and b!975197 (not res!442994)) b!975199))

(assert (= (and b!975199 res!442991) b!975192))

(assert (= (or b!975196 b!975192) bm!62248))

(assert (= (or b!975194 b!975199) bm!62247))

(assert (= (or b!975195 bm!62247) bm!62249))

(declare-fun m!1177365 () Bool)

(assert (=> bm!62248 m!1177365))

(declare-fun m!1177367 () Bool)

(assert (=> bm!62249 m!1177367))

(declare-fun m!1177369 () Bool)

(assert (=> b!975193 m!1177369))

(assert (=> bm!62026 d!287375))

(assert (=> b!974173 d!287353))

(assert (=> b!974173 d!287355))

(assert (=> bm!62066 d!287143))

(declare-fun b!975200 () Bool)

(declare-fun e!628159 () Bool)

(declare-fun e!628160 () Bool)

(assert (=> b!975200 (= e!628159 e!628160)))

(declare-fun c!159260 () Bool)

(assert (=> b!975200 (= c!159260 ((_ is Star!2715) lt!349293))))

(declare-fun b!975201 () Bool)

(declare-fun e!628162 () Bool)

(declare-fun call!62257 () Bool)

(assert (=> b!975201 (= e!628162 call!62257)))

(declare-fun b!975203 () Bool)

(declare-fun res!442997 () Bool)

(declare-fun e!628164 () Bool)

(assert (=> b!975203 (=> (not res!442997) (not e!628164))))

(declare-fun call!62256 () Bool)

(assert (=> b!975203 (= res!442997 call!62256)))

(declare-fun e!628163 () Bool)

(assert (=> b!975203 (= e!628163 e!628164)))

(declare-fun b!975204 () Bool)

(declare-fun e!628161 () Bool)

(declare-fun call!62255 () Bool)

(assert (=> b!975204 (= e!628161 call!62255)))

(declare-fun bm!62250 () Bool)

(assert (=> bm!62250 (= call!62256 call!62255)))

(declare-fun b!975205 () Bool)

(assert (=> b!975205 (= e!628164 call!62257)))

(declare-fun b!975206 () Bool)

(declare-fun res!442999 () Bool)

(declare-fun e!628165 () Bool)

(assert (=> b!975206 (=> res!442999 e!628165)))

(assert (=> b!975206 (= res!442999 (not ((_ is Concat!4548) lt!349293)))))

(assert (=> b!975206 (= e!628163 e!628165)))

(declare-fun b!975207 () Bool)

(assert (=> b!975207 (= e!628160 e!628163)))

(declare-fun c!159259 () Bool)

(assert (=> b!975207 (= c!159259 ((_ is Union!2715) lt!349293))))

(declare-fun bm!62251 () Bool)

(assert (=> bm!62251 (= call!62257 (validRegex!1184 (ite c!159259 (regTwo!5943 lt!349293) (regTwo!5942 lt!349293))))))

(declare-fun bm!62252 () Bool)

(assert (=> bm!62252 (= call!62255 (validRegex!1184 (ite c!159260 (reg!3044 lt!349293) (ite c!159259 (regOne!5943 lt!349293) (regOne!5942 lt!349293)))))))

(declare-fun b!975208 () Bool)

(assert (=> b!975208 (= e!628165 e!628162)))

(declare-fun res!442996 () Bool)

(assert (=> b!975208 (=> (not res!442996) (not e!628162))))

(assert (=> b!975208 (= res!442996 call!62256)))

(declare-fun d!287377 () Bool)

(declare-fun res!443000 () Bool)

(assert (=> d!287377 (=> res!443000 e!628159)))

(assert (=> d!287377 (= res!443000 ((_ is ElementMatch!2715) lt!349293))))

(assert (=> d!287377 (= (validRegex!1184 lt!349293) e!628159)))

(declare-fun b!975202 () Bool)

(assert (=> b!975202 (= e!628160 e!628161)))

(declare-fun res!442998 () Bool)

(assert (=> b!975202 (= res!442998 (not (nullable!835 (reg!3044 lt!349293))))))

(assert (=> b!975202 (=> (not res!442998) (not e!628161))))

(assert (= (and d!287377 (not res!443000)) b!975200))

(assert (= (and b!975200 c!159260) b!975202))

(assert (= (and b!975200 (not c!159260)) b!975207))

(assert (= (and b!975202 res!442998) b!975204))

(assert (= (and b!975207 c!159259) b!975203))

(assert (= (and b!975207 (not c!159259)) b!975206))

(assert (= (and b!975203 res!442997) b!975205))

(assert (= (and b!975206 (not res!442999)) b!975208))

(assert (= (and b!975208 res!442996) b!975201))

(assert (= (or b!975205 b!975201) bm!62251))

(assert (= (or b!975203 b!975208) bm!62250))

(assert (= (or b!975204 bm!62250) bm!62252))

(declare-fun m!1177371 () Bool)

(assert (=> bm!62251 m!1177371))

(declare-fun m!1177373 () Bool)

(assert (=> bm!62252 m!1177373))

(declare-fun m!1177375 () Bool)

(assert (=> b!975202 m!1177375))

(assert (=> d!287071 d!287377))

(assert (=> d!287071 d!287067))

(assert (=> d!287129 d!287143))

(assert (=> d!287129 d!287067))

(declare-fun bs!243089 () Bool)

(declare-fun b!975211 () Bool)

(assert (= bs!243089 (and b!975211 b!974346)))

(declare-fun lambda!34624 () Int)

(assert (=> bs!243089 (= (and (= s!10566 (_2!6474 lt!349278)) (= (reg!3044 (regTwo!5943 r!15766)) (reg!3044 (regTwo!5942 r!15766))) (= (regTwo!5943 r!15766) (regTwo!5942 r!15766))) (= lambda!34624 lambda!34588))))

(declare-fun bs!243090 () Bool)

(assert (= bs!243090 (and b!975211 d!287151)))

(assert (=> bs!243090 (not (= lambda!34624 lambda!34600))))

(declare-fun bs!243091 () Bool)

(assert (= bs!243091 (and b!975211 d!287149)))

(assert (=> bs!243091 (not (= lambda!34624 lambda!34594))))

(assert (=> bs!243090 (not (= lambda!34624 lambda!34599))))

(declare-fun bs!243092 () Bool)

(assert (= bs!243092 (and b!975211 b!974349)))

(assert (=> bs!243092 (not (= lambda!34624 lambda!34589))))

(declare-fun bs!243093 () Bool)

(assert (= bs!243093 (and b!975211 b!975078)))

(assert (=> bs!243093 (= (and (= (reg!3044 (regTwo!5943 r!15766)) (reg!3044 (regOne!5943 r!15766))) (= (regTwo!5943 r!15766) (regOne!5943 r!15766))) (= lambda!34624 lambda!34620))))

(declare-fun bs!243094 () Bool)

(assert (= bs!243094 (and b!975211 b!973876)))

(assert (=> bs!243094 (not (= lambda!34624 lambda!34565))))

(declare-fun bs!243095 () Bool)

(assert (= bs!243095 (and b!975211 b!975081)))

(assert (=> bs!243095 (not (= lambda!34624 lambda!34621))))

(declare-fun bs!243096 () Bool)

(assert (= bs!243096 (and b!975211 b!975139)))

(assert (=> bs!243096 (not (= lambda!34624 lambda!34623))))

(declare-fun bs!243097 () Bool)

(assert (= bs!243097 (and b!975211 b!974360)))

(assert (=> bs!243097 (not (= lambda!34624 lambda!34591))))

(declare-fun bs!243098 () Bool)

(assert (= bs!243098 (and b!975211 b!974617)))

(assert (=> bs!243098 (not (= lambda!34624 lambda!34608))))

(assert (=> bs!243094 (not (= lambda!34624 lambda!34566))))

(declare-fun bs!243099 () Bool)

(assert (= bs!243099 (and b!975211 b!974614)))

(assert (=> bs!243099 (= (and (= s!10566 (_2!6474 lt!349278)) (= (reg!3044 (regTwo!5943 r!15766)) (reg!3044 (regTwo!5943 (regTwo!5942 r!15766)))) (= (regTwo!5943 r!15766) (regTwo!5943 (regTwo!5942 r!15766)))) (= lambda!34624 lambda!34607))))

(declare-fun bs!243100 () Bool)

(assert (= bs!243100 (and b!975211 b!975136)))

(assert (=> bs!243100 (= (and (= s!10566 (_2!6474 lt!349278)) (= (reg!3044 (regTwo!5943 r!15766)) (reg!3044 (regOne!5943 (regTwo!5942 r!15766)))) (= (regTwo!5943 r!15766) (regOne!5943 (regTwo!5942 r!15766)))) (= lambda!34624 lambda!34622))))

(declare-fun bs!243101 () Bool)

(assert (= bs!243101 (and b!975211 b!974357)))

(assert (=> bs!243101 (= (and (= (reg!3044 (regTwo!5943 r!15766)) (reg!3044 r!15766)) (= (regTwo!5943 r!15766) r!15766)) (= lambda!34624 lambda!34590))))

(assert (=> b!975211 true))

(assert (=> b!975211 true))

(declare-fun bs!243102 () Bool)

(declare-fun b!975214 () Bool)

(assert (= bs!243102 (and b!975214 b!974346)))

(declare-fun lambda!34625 () Int)

(assert (=> bs!243102 (not (= lambda!34625 lambda!34588))))

(declare-fun bs!243103 () Bool)

(assert (= bs!243103 (and b!975214 d!287151)))

(assert (=> bs!243103 (= (and (= (regOne!5942 (regTwo!5943 r!15766)) EmptyExpr!2715) (= (regTwo!5942 (regTwo!5943 r!15766)) (regTwo!5942 r!15766))) (= lambda!34625 lambda!34600))))

(declare-fun bs!243104 () Bool)

(assert (= bs!243104 (and b!975214 d!287149)))

(assert (=> bs!243104 (not (= lambda!34625 lambda!34594))))

(assert (=> bs!243103 (not (= lambda!34625 lambda!34599))))

(declare-fun bs!243105 () Bool)

(assert (= bs!243105 (and b!975214 b!974349)))

(assert (=> bs!243105 (= (and (= s!10566 (_2!6474 lt!349278)) (= (regOne!5942 (regTwo!5943 r!15766)) (regOne!5942 (regTwo!5942 r!15766))) (= (regTwo!5942 (regTwo!5943 r!15766)) (regTwo!5942 (regTwo!5942 r!15766)))) (= lambda!34625 lambda!34589))))

(declare-fun bs!243106 () Bool)

(assert (= bs!243106 (and b!975214 b!975211)))

(assert (=> bs!243106 (not (= lambda!34625 lambda!34624))))

(declare-fun bs!243107 () Bool)

(assert (= bs!243107 (and b!975214 b!975078)))

(assert (=> bs!243107 (not (= lambda!34625 lambda!34620))))

(declare-fun bs!243108 () Bool)

(assert (= bs!243108 (and b!975214 b!973876)))

(assert (=> bs!243108 (not (= lambda!34625 lambda!34565))))

(declare-fun bs!243109 () Bool)

(assert (= bs!243109 (and b!975214 b!975081)))

(assert (=> bs!243109 (= (and (= (regOne!5942 (regTwo!5943 r!15766)) (regOne!5942 (regOne!5943 r!15766))) (= (regTwo!5942 (regTwo!5943 r!15766)) (regTwo!5942 (regOne!5943 r!15766)))) (= lambda!34625 lambda!34621))))

(declare-fun bs!243110 () Bool)

(assert (= bs!243110 (and b!975214 b!975139)))

(assert (=> bs!243110 (= (and (= s!10566 (_2!6474 lt!349278)) (= (regOne!5942 (regTwo!5943 r!15766)) (regOne!5942 (regOne!5943 (regTwo!5942 r!15766)))) (= (regTwo!5942 (regTwo!5943 r!15766)) (regTwo!5942 (regOne!5943 (regTwo!5942 r!15766))))) (= lambda!34625 lambda!34623))))

(declare-fun bs!243111 () Bool)

(assert (= bs!243111 (and b!975214 b!974360)))

(assert (=> bs!243111 (= (and (= (regOne!5942 (regTwo!5943 r!15766)) (regOne!5942 r!15766)) (= (regTwo!5942 (regTwo!5943 r!15766)) (regTwo!5942 r!15766))) (= lambda!34625 lambda!34591))))

(declare-fun bs!243112 () Bool)

(assert (= bs!243112 (and b!975214 b!974617)))

(assert (=> bs!243112 (= (and (= s!10566 (_2!6474 lt!349278)) (= (regOne!5942 (regTwo!5943 r!15766)) (regOne!5942 (regTwo!5943 (regTwo!5942 r!15766)))) (= (regTwo!5942 (regTwo!5943 r!15766)) (regTwo!5942 (regTwo!5943 (regTwo!5942 r!15766))))) (= lambda!34625 lambda!34608))))

(assert (=> bs!243108 (= (and (= (regOne!5942 (regTwo!5943 r!15766)) EmptyExpr!2715) (= (regTwo!5942 (regTwo!5943 r!15766)) (regTwo!5942 r!15766))) (= lambda!34625 lambda!34566))))

(declare-fun bs!243113 () Bool)

(assert (= bs!243113 (and b!975214 b!974614)))

(assert (=> bs!243113 (not (= lambda!34625 lambda!34607))))

(declare-fun bs!243114 () Bool)

(assert (= bs!243114 (and b!975214 b!975136)))

(assert (=> bs!243114 (not (= lambda!34625 lambda!34622))))

(declare-fun bs!243115 () Bool)

(assert (= bs!243115 (and b!975214 b!974357)))

(assert (=> bs!243115 (not (= lambda!34625 lambda!34590))))

(assert (=> b!975214 true))

(assert (=> b!975214 true))

(declare-fun b!975209 () Bool)

(declare-fun res!443001 () Bool)

(declare-fun e!628172 () Bool)

(assert (=> b!975209 (=> res!443001 e!628172)))

(declare-fun call!62258 () Bool)

(assert (=> b!975209 (= res!443001 call!62258)))

(declare-fun e!628170 () Bool)

(assert (=> b!975209 (= e!628170 e!628172)))

(declare-fun b!975210 () Bool)

(declare-fun e!628171 () Bool)

(declare-fun e!628169 () Bool)

(assert (=> b!975210 (= e!628171 e!628169)))

(declare-fun res!443002 () Bool)

(assert (=> b!975210 (= res!443002 (not ((_ is EmptyLang!2715) (regTwo!5943 r!15766))))))

(assert (=> b!975210 (=> (not res!443002) (not e!628169))))

(declare-fun call!62259 () Bool)

(assert (=> b!975211 (= e!628172 call!62259)))

(declare-fun b!975212 () Bool)

(declare-fun c!159264 () Bool)

(assert (=> b!975212 (= c!159264 ((_ is ElementMatch!2715) (regTwo!5943 r!15766)))))

(declare-fun e!628167 () Bool)

(assert (=> b!975212 (= e!628169 e!628167)))

(declare-fun b!975213 () Bool)

(declare-fun e!628166 () Bool)

(assert (=> b!975213 (= e!628166 (matchRSpec!514 (regTwo!5943 (regTwo!5943 r!15766)) s!10566))))

(assert (=> b!975214 (= e!628170 call!62259)))

(declare-fun b!975215 () Bool)

(declare-fun c!159263 () Bool)

(assert (=> b!975215 (= c!159263 ((_ is Union!2715) (regTwo!5943 r!15766)))))

(declare-fun e!628168 () Bool)

(assert (=> b!975215 (= e!628167 e!628168)))

(declare-fun b!975216 () Bool)

(assert (=> b!975216 (= e!628168 e!628166)))

(declare-fun res!443003 () Bool)

(assert (=> b!975216 (= res!443003 (matchRSpec!514 (regOne!5943 (regTwo!5943 r!15766)) s!10566))))

(assert (=> b!975216 (=> res!443003 e!628166)))

(declare-fun bm!62253 () Bool)

(assert (=> bm!62253 (= call!62258 (isEmpty!6242 s!10566))))

(declare-fun bm!62254 () Bool)

(declare-fun c!159261 () Bool)

(assert (=> bm!62254 (= call!62259 (Exists!454 (ite c!159261 lambda!34624 lambda!34625)))))

(declare-fun d!287379 () Bool)

(declare-fun c!159262 () Bool)

(assert (=> d!287379 (= c!159262 ((_ is EmptyExpr!2715) (regTwo!5943 r!15766)))))

(assert (=> d!287379 (= (matchRSpec!514 (regTwo!5943 r!15766) s!10566) e!628171)))

(declare-fun b!975217 () Bool)

(assert (=> b!975217 (= e!628167 (= s!10566 (Cons!9929 (c!158928 (regTwo!5943 r!15766)) Nil!9929)))))

(declare-fun b!975218 () Bool)

(assert (=> b!975218 (= e!628168 e!628170)))

(assert (=> b!975218 (= c!159261 ((_ is Star!2715) (regTwo!5943 r!15766)))))

(declare-fun b!975219 () Bool)

(assert (=> b!975219 (= e!628171 call!62258)))

(assert (= (and d!287379 c!159262) b!975219))

(assert (= (and d!287379 (not c!159262)) b!975210))

(assert (= (and b!975210 res!443002) b!975212))

(assert (= (and b!975212 c!159264) b!975217))

(assert (= (and b!975212 (not c!159264)) b!975215))

(assert (= (and b!975215 c!159263) b!975216))

(assert (= (and b!975215 (not c!159263)) b!975218))

(assert (= (and b!975216 (not res!443003)) b!975213))

(assert (= (and b!975218 c!159261) b!975209))

(assert (= (and b!975218 (not c!159261)) b!975214))

(assert (= (and b!975209 (not res!443001)) b!975211))

(assert (= (or b!975211 b!975214) bm!62254))

(assert (= (or b!975219 b!975209) bm!62253))

(declare-fun m!1177377 () Bool)

(assert (=> b!975213 m!1177377))

(declare-fun m!1177379 () Bool)

(assert (=> b!975216 m!1177379))

(assert (=> bm!62253 m!1176487))

(declare-fun m!1177381 () Bool)

(assert (=> bm!62254 m!1177381))

(assert (=> b!974359 d!287379))

(declare-fun b!975220 () Bool)

(declare-fun e!628178 () Bool)

(declare-fun e!628176 () Bool)

(assert (=> b!975220 (= e!628178 e!628176)))

(declare-fun res!443011 () Bool)

(assert (=> b!975220 (=> (not res!443011) (not e!628176))))

(declare-fun lt!349400 () Bool)

(assert (=> b!975220 (= res!443011 (not lt!349400))))

(declare-fun d!287381 () Bool)

(declare-fun e!628173 () Bool)

(assert (=> d!287381 e!628173))

(declare-fun c!159265 () Bool)

(assert (=> d!287381 (= c!159265 ((_ is EmptyExpr!2715) (regTwo!5942 r!15766)))))

(declare-fun e!628174 () Bool)

(assert (=> d!287381 (= lt!349400 e!628174)))

(declare-fun c!159267 () Bool)

(assert (=> d!287381 (= c!159267 (isEmpty!6242 s!10566))))

(assert (=> d!287381 (validRegex!1184 (regTwo!5942 r!15766))))

(assert (=> d!287381 (= (matchR!1251 (regTwo!5942 r!15766) s!10566) lt!349400)))

(declare-fun b!975221 () Bool)

(declare-fun e!628175 () Bool)

(assert (=> b!975221 (= e!628175 (not (= (head!1794 s!10566) (c!158928 (regTwo!5942 r!15766)))))))

(declare-fun b!975222 () Bool)

(assert (=> b!975222 (= e!628174 (matchR!1251 (derivativeStep!641 (regTwo!5942 r!15766) (head!1794 s!10566)) (tail!1356 s!10566)))))

(declare-fun b!975223 () Bool)

(assert (=> b!975223 (= e!628174 (nullable!835 (regTwo!5942 r!15766)))))

(declare-fun b!975224 () Bool)

(declare-fun res!443008 () Bool)

(assert (=> b!975224 (=> res!443008 e!628178)))

(assert (=> b!975224 (= res!443008 (not ((_ is ElementMatch!2715) (regTwo!5942 r!15766))))))

(declare-fun e!628179 () Bool)

(assert (=> b!975224 (= e!628179 e!628178)))

(declare-fun b!975225 () Bool)

(assert (=> b!975225 (= e!628179 (not lt!349400))))

(declare-fun b!975226 () Bool)

(declare-fun res!443007 () Bool)

(declare-fun e!628177 () Bool)

(assert (=> b!975226 (=> (not res!443007) (not e!628177))))

(assert (=> b!975226 (= res!443007 (isEmpty!6242 (tail!1356 s!10566)))))

(declare-fun b!975227 () Bool)

(declare-fun res!443009 () Bool)

(assert (=> b!975227 (=> res!443009 e!628178)))

(assert (=> b!975227 (= res!443009 e!628177)))

(declare-fun res!443006 () Bool)

(assert (=> b!975227 (=> (not res!443006) (not e!628177))))

(assert (=> b!975227 (= res!443006 lt!349400)))

(declare-fun b!975228 () Bool)

(assert (=> b!975228 (= e!628176 e!628175)))

(declare-fun res!443005 () Bool)

(assert (=> b!975228 (=> res!443005 e!628175)))

(declare-fun call!62260 () Bool)

(assert (=> b!975228 (= res!443005 call!62260)))

(declare-fun b!975229 () Bool)

(assert (=> b!975229 (= e!628173 e!628179)))

(declare-fun c!159266 () Bool)

(assert (=> b!975229 (= c!159266 ((_ is EmptyLang!2715) (regTwo!5942 r!15766)))))

(declare-fun b!975230 () Bool)

(declare-fun res!443010 () Bool)

(assert (=> b!975230 (=> res!443010 e!628175)))

(assert (=> b!975230 (= res!443010 (not (isEmpty!6242 (tail!1356 s!10566))))))

(declare-fun b!975231 () Bool)

(assert (=> b!975231 (= e!628173 (= lt!349400 call!62260))))

(declare-fun bm!62255 () Bool)

(assert (=> bm!62255 (= call!62260 (isEmpty!6242 s!10566))))

(declare-fun b!975232 () Bool)

(assert (=> b!975232 (= e!628177 (= (head!1794 s!10566) (c!158928 (regTwo!5942 r!15766))))))

(declare-fun b!975233 () Bool)

(declare-fun res!443004 () Bool)

(assert (=> b!975233 (=> (not res!443004) (not e!628177))))

(assert (=> b!975233 (= res!443004 (not call!62260))))

(assert (= (and d!287381 c!159267) b!975223))

(assert (= (and d!287381 (not c!159267)) b!975222))

(assert (= (and d!287381 c!159265) b!975231))

(assert (= (and d!287381 (not c!159265)) b!975229))

(assert (= (and b!975229 c!159266) b!975225))

(assert (= (and b!975229 (not c!159266)) b!975224))

(assert (= (and b!975224 (not res!443008)) b!975227))

(assert (= (and b!975227 res!443006) b!975233))

(assert (= (and b!975233 res!443004) b!975226))

(assert (= (and b!975226 res!443007) b!975232))

(assert (= (and b!975227 (not res!443009)) b!975220))

(assert (= (and b!975220 res!443011) b!975228))

(assert (= (and b!975228 (not res!443005)) b!975230))

(assert (= (and b!975230 (not res!443010)) b!975221))

(assert (= (or b!975231 b!975228 b!975233) bm!62255))

(assert (=> b!975223 m!1176651))

(assert (=> b!975221 m!1176635))

(assert (=> b!975230 m!1176637))

(assert (=> b!975230 m!1176637))

(assert (=> b!975230 m!1176639))

(assert (=> bm!62255 m!1176487))

(assert (=> b!975232 m!1176635))

(assert (=> d!287381 m!1176487))

(assert (=> d!287381 m!1176503))

(assert (=> b!975226 m!1176637))

(assert (=> b!975226 m!1176637))

(assert (=> b!975226 m!1176639))

(assert (=> b!975222 m!1176635))

(assert (=> b!975222 m!1176635))

(declare-fun m!1177383 () Bool)

(assert (=> b!975222 m!1177383))

(assert (=> b!975222 m!1176637))

(assert (=> b!975222 m!1177383))

(assert (=> b!975222 m!1176637))

(declare-fun m!1177385 () Bool)

(assert (=> b!975222 m!1177385))

(assert (=> b!974413 d!287381))

(assert (=> d!287149 d!287145))

(declare-fun bs!243116 () Bool)

(declare-fun d!287383 () Bool)

(assert (= bs!243116 (and d!287383 b!974346)))

(declare-fun lambda!34628 () Int)

(assert (=> bs!243116 (not (= lambda!34628 lambda!34588))))

(declare-fun bs!243117 () Bool)

(assert (= bs!243117 (and d!287383 d!287151)))

(assert (=> bs!243117 (not (= lambda!34628 lambda!34600))))

(declare-fun bs!243118 () Bool)

(assert (= bs!243118 (and d!287383 d!287149)))

(assert (=> bs!243118 (= lambda!34628 lambda!34594)))

(assert (=> bs!243117 (= lambda!34628 lambda!34599)))

(declare-fun bs!243119 () Bool)

(assert (= bs!243119 (and d!287383 b!974349)))

(assert (=> bs!243119 (not (= lambda!34628 lambda!34589))))

(declare-fun bs!243120 () Bool)

(assert (= bs!243120 (and d!287383 b!975078)))

(assert (=> bs!243120 (not (= lambda!34628 lambda!34620))))

(declare-fun bs!243121 () Bool)

(assert (= bs!243121 (and d!287383 b!973876)))

(assert (=> bs!243121 (= lambda!34628 lambda!34565)))

(declare-fun bs!243122 () Bool)

(assert (= bs!243122 (and d!287383 b!975081)))

(assert (=> bs!243122 (not (= lambda!34628 lambda!34621))))

(declare-fun bs!243123 () Bool)

(assert (= bs!243123 (and d!287383 b!975139)))

(assert (=> bs!243123 (not (= lambda!34628 lambda!34623))))

(declare-fun bs!243124 () Bool)

(assert (= bs!243124 (and d!287383 b!974360)))

(assert (=> bs!243124 (not (= lambda!34628 lambda!34591))))

(declare-fun bs!243125 () Bool)

(assert (= bs!243125 (and d!287383 b!974617)))

(assert (=> bs!243125 (not (= lambda!34628 lambda!34608))))

(declare-fun bs!243126 () Bool)

(assert (= bs!243126 (and d!287383 b!975214)))

(assert (=> bs!243126 (not (= lambda!34628 lambda!34625))))

(declare-fun bs!243127 () Bool)

(assert (= bs!243127 (and d!287383 b!975211)))

(assert (=> bs!243127 (not (= lambda!34628 lambda!34624))))

(assert (=> bs!243121 (not (= lambda!34628 lambda!34566))))

(declare-fun bs!243128 () Bool)

(assert (= bs!243128 (and d!287383 b!974614)))

(assert (=> bs!243128 (not (= lambda!34628 lambda!34607))))

(declare-fun bs!243129 () Bool)

(assert (= bs!243129 (and d!287383 b!975136)))

(assert (=> bs!243129 (not (= lambda!34628 lambda!34622))))

(declare-fun bs!243130 () Bool)

(assert (= bs!243130 (and d!287383 b!974357)))

(assert (=> bs!243130 (not (= lambda!34628 lambda!34590))))

(assert (=> d!287383 true))

(assert (=> d!287383 true))

(assert (=> d!287383 true))

(assert (=> d!287383 (= (isDefined!1932 (findConcatSeparation!396 EmptyExpr!2715 (regTwo!5942 r!15766) Nil!9929 s!10566 s!10566)) (Exists!454 lambda!34628))))

(assert (=> d!287383 true))

(declare-fun _$89!1158 () Unit!15089)

(assert (=> d!287383 (= (choose!6173 EmptyExpr!2715 (regTwo!5942 r!15766) s!10566) _$89!1158)))

(declare-fun bs!243131 () Bool)

(assert (= bs!243131 d!287383))

(assert (=> bs!243131 m!1176491))

(assert (=> bs!243131 m!1176491))

(assert (=> bs!243131 m!1176769))

(declare-fun m!1177387 () Bool)

(assert (=> bs!243131 m!1177387))

(assert (=> d!287149 d!287383))

(declare-fun d!287385 () Bool)

(assert (=> d!287385 (= (Exists!454 lambda!34594) (choose!6172 lambda!34594))))

(declare-fun bs!243132 () Bool)

(assert (= bs!243132 d!287385))

(declare-fun m!1177389 () Bool)

(assert (=> bs!243132 m!1177389))

(assert (=> d!287149 d!287385))

(declare-fun d!287387 () Bool)

(assert (=> d!287387 (= (isDefined!1932 (findConcatSeparation!396 EmptyExpr!2715 (regTwo!5942 r!15766) Nil!9929 s!10566 s!10566)) (not (isEmpty!6244 (findConcatSeparation!396 EmptyExpr!2715 (regTwo!5942 r!15766) Nil!9929 s!10566 s!10566))))))

(declare-fun bs!243133 () Bool)

(assert (= bs!243133 d!287387))

(assert (=> bs!243133 m!1176491))

(declare-fun m!1177391 () Bool)

(assert (=> bs!243133 m!1177391))

(assert (=> d!287149 d!287387))

(declare-fun d!287389 () Bool)

(assert (=> d!287389 (= (validRegex!1184 EmptyExpr!2715) true)))

(assert (=> d!287149 d!287389))

(declare-fun d!287391 () Bool)

(assert (=> d!287391 (= (isEmpty!6242 (tail!1356 (_2!6474 lt!349278))) ((_ is Nil!9929) (tail!1356 (_2!6474 lt!349278))))))

(assert (=> b!974159 d!287391))

(assert (=> b!974159 d!287257))

(assert (=> b!974390 d!287391))

(assert (=> b!974390 d!287257))

(assert (=> bm!62065 d!287281))

(assert (=> bm!62106 d!287281))

(assert (=> b!974169 d!287353))

(assert (=> b!974169 d!287355))

(declare-fun d!287393 () Bool)

(assert (=> d!287393 (= (nullable!835 (reg!3044 r!15766)) (nullableFct!200 (reg!3044 r!15766)))))

(declare-fun bs!243134 () Bool)

(assert (= bs!243134 d!287393))

(declare-fun m!1177393 () Bool)

(assert (=> bs!243134 m!1177393))

(assert (=> b!973946 d!287393))

(declare-fun d!287395 () Bool)

(assert (=> d!287395 (= (Exists!454 lambda!34599) (choose!6172 lambda!34599))))

(declare-fun bs!243135 () Bool)

(assert (= bs!243135 d!287395))

(declare-fun m!1177395 () Bool)

(assert (=> bs!243135 m!1177395))

(assert (=> d!287151 d!287395))

(declare-fun d!287397 () Bool)

(assert (=> d!287397 (= (Exists!454 lambda!34600) (choose!6172 lambda!34600))))

(declare-fun bs!243136 () Bool)

(assert (= bs!243136 d!287397))

(declare-fun m!1177397 () Bool)

(assert (=> bs!243136 m!1177397))

(assert (=> d!287151 d!287397))

(declare-fun bs!243137 () Bool)

(declare-fun d!287399 () Bool)

(assert (= bs!243137 (and d!287399 b!974346)))

(declare-fun lambda!34633 () Int)

(assert (=> bs!243137 (not (= lambda!34633 lambda!34588))))

(declare-fun bs!243138 () Bool)

(assert (= bs!243138 (and d!287399 d!287151)))

(assert (=> bs!243138 (not (= lambda!34633 lambda!34600))))

(declare-fun bs!243139 () Bool)

(assert (= bs!243139 (and d!287399 d!287149)))

(assert (=> bs!243139 (= lambda!34633 lambda!34594)))

(assert (=> bs!243138 (= lambda!34633 lambda!34599)))

(declare-fun bs!243140 () Bool)

(assert (= bs!243140 (and d!287399 b!974349)))

(assert (=> bs!243140 (not (= lambda!34633 lambda!34589))))

(declare-fun bs!243141 () Bool)

(assert (= bs!243141 (and d!287399 b!973876)))

(assert (=> bs!243141 (= lambda!34633 lambda!34565)))

(declare-fun bs!243142 () Bool)

(assert (= bs!243142 (and d!287399 b!975081)))

(assert (=> bs!243142 (not (= lambda!34633 lambda!34621))))

(declare-fun bs!243143 () Bool)

(assert (= bs!243143 (and d!287399 b!975139)))

(assert (=> bs!243143 (not (= lambda!34633 lambda!34623))))

(declare-fun bs!243144 () Bool)

(assert (= bs!243144 (and d!287399 b!974360)))

(assert (=> bs!243144 (not (= lambda!34633 lambda!34591))))

(declare-fun bs!243145 () Bool)

(assert (= bs!243145 (and d!287399 b!974617)))

(assert (=> bs!243145 (not (= lambda!34633 lambda!34608))))

(declare-fun bs!243146 () Bool)

(assert (= bs!243146 (and d!287399 b!975214)))

(assert (=> bs!243146 (not (= lambda!34633 lambda!34625))))

(declare-fun bs!243147 () Bool)

(assert (= bs!243147 (and d!287399 b!975211)))

(assert (=> bs!243147 (not (= lambda!34633 lambda!34624))))

(declare-fun bs!243148 () Bool)

(assert (= bs!243148 (and d!287399 d!287383)))

(assert (=> bs!243148 (= lambda!34633 lambda!34628)))

(declare-fun bs!243149 () Bool)

(assert (= bs!243149 (and d!287399 b!975078)))

(assert (=> bs!243149 (not (= lambda!34633 lambda!34620))))

(assert (=> bs!243141 (not (= lambda!34633 lambda!34566))))

(declare-fun bs!243150 () Bool)

(assert (= bs!243150 (and d!287399 b!974614)))

(assert (=> bs!243150 (not (= lambda!34633 lambda!34607))))

(declare-fun bs!243151 () Bool)

(assert (= bs!243151 (and d!287399 b!975136)))

(assert (=> bs!243151 (not (= lambda!34633 lambda!34622))))

(declare-fun bs!243152 () Bool)

(assert (= bs!243152 (and d!287399 b!974357)))

(assert (=> bs!243152 (not (= lambda!34633 lambda!34590))))

(assert (=> d!287399 true))

(assert (=> d!287399 true))

(assert (=> d!287399 true))

(declare-fun lambda!34634 () Int)

(assert (=> bs!243137 (not (= lambda!34634 lambda!34588))))

(assert (=> bs!243139 (not (= lambda!34634 lambda!34594))))

(assert (=> bs!243138 (not (= lambda!34634 lambda!34599))))

(assert (=> bs!243140 (= (and (= s!10566 (_2!6474 lt!349278)) (= EmptyExpr!2715 (regOne!5942 (regTwo!5942 r!15766))) (= (regTwo!5942 r!15766) (regTwo!5942 (regTwo!5942 r!15766)))) (= lambda!34634 lambda!34589))))

(assert (=> bs!243141 (not (= lambda!34634 lambda!34565))))

(assert (=> bs!243138 (= lambda!34634 lambda!34600)))

(declare-fun bs!243153 () Bool)

(assert (= bs!243153 d!287399))

(assert (=> bs!243153 (not (= lambda!34634 lambda!34633))))

(assert (=> bs!243142 (= (and (= EmptyExpr!2715 (regOne!5942 (regOne!5943 r!15766))) (= (regTwo!5942 r!15766) (regTwo!5942 (regOne!5943 r!15766)))) (= lambda!34634 lambda!34621))))

(assert (=> bs!243143 (= (and (= s!10566 (_2!6474 lt!349278)) (= EmptyExpr!2715 (regOne!5942 (regOne!5943 (regTwo!5942 r!15766)))) (= (regTwo!5942 r!15766) (regTwo!5942 (regOne!5943 (regTwo!5942 r!15766))))) (= lambda!34634 lambda!34623))))

(assert (=> bs!243144 (= (= EmptyExpr!2715 (regOne!5942 r!15766)) (= lambda!34634 lambda!34591))))

(assert (=> bs!243145 (= (and (= s!10566 (_2!6474 lt!349278)) (= EmptyExpr!2715 (regOne!5942 (regTwo!5943 (regTwo!5942 r!15766)))) (= (regTwo!5942 r!15766) (regTwo!5942 (regTwo!5943 (regTwo!5942 r!15766))))) (= lambda!34634 lambda!34608))))

(assert (=> bs!243146 (= (and (= EmptyExpr!2715 (regOne!5942 (regTwo!5943 r!15766))) (= (regTwo!5942 r!15766) (regTwo!5942 (regTwo!5943 r!15766)))) (= lambda!34634 lambda!34625))))

(assert (=> bs!243147 (not (= lambda!34634 lambda!34624))))

(assert (=> bs!243148 (not (= lambda!34634 lambda!34628))))

(assert (=> bs!243149 (not (= lambda!34634 lambda!34620))))

(assert (=> bs!243141 (= lambda!34634 lambda!34566)))

(assert (=> bs!243150 (not (= lambda!34634 lambda!34607))))

(assert (=> bs!243151 (not (= lambda!34634 lambda!34622))))

(assert (=> bs!243152 (not (= lambda!34634 lambda!34590))))

(assert (=> d!287399 true))

(assert (=> d!287399 true))

(assert (=> d!287399 true))

(assert (=> d!287399 (= (Exists!454 lambda!34633) (Exists!454 lambda!34634))))

(assert (=> d!287399 true))

(declare-fun _$90!822 () Unit!15089)

(assert (=> d!287399 (= (choose!6174 EmptyExpr!2715 (regTwo!5942 r!15766) s!10566) _$90!822)))

(declare-fun m!1177399 () Bool)

(assert (=> bs!243153 m!1177399))

(declare-fun m!1177401 () Bool)

(assert (=> bs!243153 m!1177401))

(assert (=> d!287151 d!287399))

(assert (=> d!287151 d!287389))

(declare-fun b!975246 () Bool)

(declare-fun e!628189 () Regex!2715)

(declare-fun e!628186 () Regex!2715)

(assert (=> b!975246 (= e!628189 e!628186)))

(declare-fun c!159269 () Bool)

(assert (=> b!975246 (= c!159269 ((_ is Union!2715) (ite c!158975 (regTwo!5942 r!15766) (ite c!158976 (regTwo!5943 r!15766) (reg!3044 r!15766)))))))

(declare-fun b!975247 () Bool)

(declare-fun e!628191 () Regex!2715)

(declare-fun call!62261 () Regex!2715)

(assert (=> b!975247 (= e!628191 call!62261)))

(declare-fun b!975248 () Bool)

(declare-fun e!628190 () Regex!2715)

(assert (=> b!975248 (= e!628191 e!628190)))

(declare-fun c!159270 () Bool)

(assert (=> b!975248 (= c!159270 (and ((_ is Concat!4548) (ite c!158975 (regTwo!5942 r!15766) (ite c!158976 (regTwo!5943 r!15766) (reg!3044 r!15766)))) ((_ is EmptyExpr!2715) (regTwo!5942 (ite c!158975 (regTwo!5942 r!15766) (ite c!158976 (regTwo!5943 r!15766) (reg!3044 r!15766)))))))))

(declare-fun b!975249 () Bool)

(declare-fun c!159268 () Bool)

(assert (=> b!975249 (= c!159268 ((_ is Concat!4548) (ite c!158975 (regTwo!5942 r!15766) (ite c!158976 (regTwo!5943 r!15766) (reg!3044 r!15766)))))))

(assert (=> b!975249 (= e!628190 e!628189)))

(declare-fun b!975250 () Bool)

(declare-fun call!62262 () Regex!2715)

(declare-fun call!62264 () Regex!2715)

(assert (=> b!975250 (= e!628189 (Concat!4548 call!62262 call!62264))))

(declare-fun b!975251 () Bool)

(declare-fun call!62265 () Regex!2715)

(assert (=> b!975251 (= e!628186 (Union!2715 call!62262 call!62265))))

(declare-fun c!159272 () Bool)

(declare-fun b!975252 () Bool)

(assert (=> b!975252 (= c!159272 ((_ is Star!2715) (ite c!158975 (regTwo!5942 r!15766) (ite c!158976 (regTwo!5943 r!15766) (reg!3044 r!15766)))))))

(declare-fun e!628188 () Regex!2715)

(assert (=> b!975252 (= e!628186 e!628188)))

(declare-fun bm!62256 () Bool)

(assert (=> bm!62256 (= call!62265 call!62264)))

(declare-fun bm!62257 () Bool)

(declare-fun call!62263 () Regex!2715)

(assert (=> bm!62257 (= call!62263 call!62261)))

(declare-fun d!287401 () Bool)

(declare-fun e!628187 () Bool)

(assert (=> d!287401 e!628187))

(declare-fun res!443024 () Bool)

(assert (=> d!287401 (=> (not res!443024) (not e!628187))))

(declare-fun lt!349401 () Regex!2715)

(assert (=> d!287401 (= res!443024 (validRegex!1184 lt!349401))))

(assert (=> d!287401 (= lt!349401 e!628191)))

(declare-fun c!159271 () Bool)

(assert (=> d!287401 (= c!159271 (and ((_ is Concat!4548) (ite c!158975 (regTwo!5942 r!15766) (ite c!158976 (regTwo!5943 r!15766) (reg!3044 r!15766)))) ((_ is EmptyExpr!2715) (regOne!5942 (ite c!158975 (regTwo!5942 r!15766) (ite c!158976 (regTwo!5943 r!15766) (reg!3044 r!15766)))))))))

(assert (=> d!287401 (validRegex!1184 (ite c!158975 (regTwo!5942 r!15766) (ite c!158976 (regTwo!5943 r!15766) (reg!3044 r!15766))))))

(assert (=> d!287401 (= (removeUselessConcat!346 (ite c!158975 (regTwo!5942 r!15766) (ite c!158976 (regTwo!5943 r!15766) (reg!3044 r!15766)))) lt!349401)))

(declare-fun b!975253 () Bool)

(assert (=> b!975253 (= e!628187 (= (nullable!835 lt!349401) (nullable!835 (ite c!158975 (regTwo!5942 r!15766) (ite c!158976 (regTwo!5943 r!15766) (reg!3044 r!15766))))))))

(declare-fun b!975254 () Bool)

(assert (=> b!975254 (= e!628188 (Star!2715 call!62265))))

(declare-fun bm!62258 () Bool)

(assert (=> bm!62258 (= call!62261 (removeUselessConcat!346 (ite c!159271 (regTwo!5942 (ite c!158975 (regTwo!5942 r!15766) (ite c!158976 (regTwo!5943 r!15766) (reg!3044 r!15766)))) (ite (or c!159270 c!159268) (regOne!5942 (ite c!158975 (regTwo!5942 r!15766) (ite c!158976 (regTwo!5943 r!15766) (reg!3044 r!15766)))) (regOne!5943 (ite c!158975 (regTwo!5942 r!15766) (ite c!158976 (regTwo!5943 r!15766) (reg!3044 r!15766))))))))))

(declare-fun b!975255 () Bool)

(assert (=> b!975255 (= e!628188 (ite c!158975 (regTwo!5942 r!15766) (ite c!158976 (regTwo!5943 r!15766) (reg!3044 r!15766))))))

(declare-fun bm!62259 () Bool)

(assert (=> bm!62259 (= call!62264 (removeUselessConcat!346 (ite c!159268 (regTwo!5942 (ite c!158975 (regTwo!5942 r!15766) (ite c!158976 (regTwo!5943 r!15766) (reg!3044 r!15766)))) (ite c!159269 (regTwo!5943 (ite c!158975 (regTwo!5942 r!15766) (ite c!158976 (regTwo!5943 r!15766) (reg!3044 r!15766)))) (reg!3044 (ite c!158975 (regTwo!5942 r!15766) (ite c!158976 (regTwo!5943 r!15766) (reg!3044 r!15766))))))))))

(declare-fun bm!62260 () Bool)

(assert (=> bm!62260 (= call!62262 call!62263)))

(declare-fun b!975256 () Bool)

(assert (=> b!975256 (= e!628190 call!62263)))

(assert (= (and d!287401 c!159271) b!975247))

(assert (= (and d!287401 (not c!159271)) b!975248))

(assert (= (and b!975248 c!159270) b!975256))

(assert (= (and b!975248 (not c!159270)) b!975249))

(assert (= (and b!975249 c!159268) b!975250))

(assert (= (and b!975249 (not c!159268)) b!975246))

(assert (= (and b!975246 c!159269) b!975251))

(assert (= (and b!975246 (not c!159269)) b!975252))

(assert (= (and b!975252 c!159272) b!975254))

(assert (= (and b!975252 (not c!159272)) b!975255))

(assert (= (or b!975251 b!975254) bm!62256))

(assert (= (or b!975250 bm!62256) bm!62259))

(assert (= (or b!975250 b!975251) bm!62260))

(assert (= (or b!975256 bm!62260) bm!62257))

(assert (= (or b!975247 bm!62257) bm!62258))

(assert (= (and d!287401 res!443024) b!975253))

(declare-fun m!1177403 () Bool)

(assert (=> d!287401 m!1177403))

(declare-fun m!1177405 () Bool)

(assert (=> d!287401 m!1177405))

(declare-fun m!1177407 () Bool)

(assert (=> b!975253 m!1177407))

(declare-fun m!1177409 () Bool)

(assert (=> b!975253 m!1177409))

(declare-fun m!1177411 () Bool)

(assert (=> bm!62258 m!1177411))

(declare-fun m!1177413 () Bool)

(assert (=> bm!62259 m!1177413))

(assert (=> bm!62056 d!287401))

(declare-fun b!975257 () Bool)

(declare-fun e!628197 () Bool)

(declare-fun e!628195 () Bool)

(assert (=> b!975257 (= e!628197 e!628195)))

(declare-fun res!443032 () Bool)

(assert (=> b!975257 (=> (not res!443032) (not e!628195))))

(declare-fun lt!349402 () Bool)

(assert (=> b!975257 (= res!443032 (not lt!349402))))

(declare-fun d!287403 () Bool)

(declare-fun e!628192 () Bool)

(assert (=> d!287403 e!628192))

(declare-fun c!159273 () Bool)

(assert (=> d!287403 (= c!159273 ((_ is EmptyExpr!2715) (derivativeStep!641 (removeUselessConcat!346 r!15766) (head!1794 s!10566))))))

(declare-fun e!628193 () Bool)

(assert (=> d!287403 (= lt!349402 e!628193)))

(declare-fun c!159275 () Bool)

(assert (=> d!287403 (= c!159275 (isEmpty!6242 (tail!1356 s!10566)))))

(assert (=> d!287403 (validRegex!1184 (derivativeStep!641 (removeUselessConcat!346 r!15766) (head!1794 s!10566)))))

(assert (=> d!287403 (= (matchR!1251 (derivativeStep!641 (removeUselessConcat!346 r!15766) (head!1794 s!10566)) (tail!1356 s!10566)) lt!349402)))

(declare-fun b!975258 () Bool)

(declare-fun e!628194 () Bool)

(assert (=> b!975258 (= e!628194 (not (= (head!1794 (tail!1356 s!10566)) (c!158928 (derivativeStep!641 (removeUselessConcat!346 r!15766) (head!1794 s!10566))))))))

(declare-fun b!975259 () Bool)

(assert (=> b!975259 (= e!628193 (matchR!1251 (derivativeStep!641 (derivativeStep!641 (removeUselessConcat!346 r!15766) (head!1794 s!10566)) (head!1794 (tail!1356 s!10566))) (tail!1356 (tail!1356 s!10566))))))

(declare-fun b!975260 () Bool)

(assert (=> b!975260 (= e!628193 (nullable!835 (derivativeStep!641 (removeUselessConcat!346 r!15766) (head!1794 s!10566))))))

(declare-fun b!975261 () Bool)

(declare-fun res!443029 () Bool)

(assert (=> b!975261 (=> res!443029 e!628197)))

(assert (=> b!975261 (= res!443029 (not ((_ is ElementMatch!2715) (derivativeStep!641 (removeUselessConcat!346 r!15766) (head!1794 s!10566)))))))

(declare-fun e!628198 () Bool)

(assert (=> b!975261 (= e!628198 e!628197)))

(declare-fun b!975262 () Bool)

(assert (=> b!975262 (= e!628198 (not lt!349402))))

(declare-fun b!975263 () Bool)

(declare-fun res!443028 () Bool)

(declare-fun e!628196 () Bool)

(assert (=> b!975263 (=> (not res!443028) (not e!628196))))

(assert (=> b!975263 (= res!443028 (isEmpty!6242 (tail!1356 (tail!1356 s!10566))))))

(declare-fun b!975264 () Bool)

(declare-fun res!443030 () Bool)

(assert (=> b!975264 (=> res!443030 e!628197)))

(assert (=> b!975264 (= res!443030 e!628196)))

(declare-fun res!443027 () Bool)

(assert (=> b!975264 (=> (not res!443027) (not e!628196))))

(assert (=> b!975264 (= res!443027 lt!349402)))

(declare-fun b!975265 () Bool)

(assert (=> b!975265 (= e!628195 e!628194)))

(declare-fun res!443026 () Bool)

(assert (=> b!975265 (=> res!443026 e!628194)))

(declare-fun call!62266 () Bool)

(assert (=> b!975265 (= res!443026 call!62266)))

(declare-fun b!975266 () Bool)

(assert (=> b!975266 (= e!628192 e!628198)))

(declare-fun c!159274 () Bool)

(assert (=> b!975266 (= c!159274 ((_ is EmptyLang!2715) (derivativeStep!641 (removeUselessConcat!346 r!15766) (head!1794 s!10566))))))

(declare-fun b!975267 () Bool)

(declare-fun res!443031 () Bool)

(assert (=> b!975267 (=> res!443031 e!628194)))

(assert (=> b!975267 (= res!443031 (not (isEmpty!6242 (tail!1356 (tail!1356 s!10566)))))))

(declare-fun b!975268 () Bool)

(assert (=> b!975268 (= e!628192 (= lt!349402 call!62266))))

(declare-fun bm!62261 () Bool)

(assert (=> bm!62261 (= call!62266 (isEmpty!6242 (tail!1356 s!10566)))))

(declare-fun b!975269 () Bool)

(assert (=> b!975269 (= e!628196 (= (head!1794 (tail!1356 s!10566)) (c!158928 (derivativeStep!641 (removeUselessConcat!346 r!15766) (head!1794 s!10566)))))))

(declare-fun b!975270 () Bool)

(declare-fun res!443025 () Bool)

(assert (=> b!975270 (=> (not res!443025) (not e!628196))))

(assert (=> b!975270 (= res!443025 (not call!62266))))

(assert (= (and d!287403 c!159275) b!975260))

(assert (= (and d!287403 (not c!159275)) b!975259))

(assert (= (and d!287403 c!159273) b!975268))

(assert (= (and d!287403 (not c!159273)) b!975266))

(assert (= (and b!975266 c!159274) b!975262))

(assert (= (and b!975266 (not c!159274)) b!975261))

(assert (= (and b!975261 (not res!443029)) b!975264))

(assert (= (and b!975264 res!443027) b!975270))

(assert (= (and b!975270 res!443025) b!975263))

(assert (= (and b!975263 res!443028) b!975269))

(assert (= (and b!975264 (not res!443030)) b!975257))

(assert (= (and b!975257 res!443032) b!975265))

(assert (= (and b!975265 (not res!443026)) b!975267))

(assert (= (and b!975267 (not res!443031)) b!975258))

(assert (= (or b!975268 b!975265 b!975270) bm!62261))

(assert (=> b!975260 m!1176643))

(declare-fun m!1177415 () Bool)

(assert (=> b!975260 m!1177415))

(assert (=> b!975258 m!1176637))

(assert (=> b!975258 m!1177345))

(assert (=> b!975267 m!1176637))

(assert (=> b!975267 m!1177347))

(assert (=> b!975267 m!1177347))

(assert (=> b!975267 m!1177349))

(assert (=> bm!62261 m!1176637))

(assert (=> bm!62261 m!1176639))

(assert (=> b!975269 m!1176637))

(assert (=> b!975269 m!1177345))

(assert (=> d!287403 m!1176637))

(assert (=> d!287403 m!1176639))

(assert (=> d!287403 m!1176643))

(declare-fun m!1177417 () Bool)

(assert (=> d!287403 m!1177417))

(assert (=> b!975263 m!1176637))

(assert (=> b!975263 m!1177347))

(assert (=> b!975263 m!1177347))

(assert (=> b!975263 m!1177349))

(assert (=> b!975259 m!1176637))

(assert (=> b!975259 m!1177345))

(assert (=> b!975259 m!1176643))

(assert (=> b!975259 m!1177345))

(declare-fun m!1177419 () Bool)

(assert (=> b!975259 m!1177419))

(assert (=> b!975259 m!1176637))

(assert (=> b!975259 m!1177347))

(assert (=> b!975259 m!1177419))

(assert (=> b!975259 m!1177347))

(declare-fun m!1177421 () Bool)

(assert (=> b!975259 m!1177421))

(assert (=> b!974165 d!287403))

(declare-fun call!62270 () Regex!2715)

(declare-fun c!159278 () Bool)

(declare-fun bm!62262 () Bool)

(declare-fun c!159277 () Bool)

(assert (=> bm!62262 (= call!62270 (derivativeStep!641 (ite c!159278 (regTwo!5943 (removeUselessConcat!346 r!15766)) (ite c!159277 (regTwo!5942 (removeUselessConcat!346 r!15766)) (regOne!5942 (removeUselessConcat!346 r!15766)))) (head!1794 s!10566)))))

(declare-fun bm!62263 () Bool)

(declare-fun call!62267 () Regex!2715)

(assert (=> bm!62263 (= call!62267 call!62270)))

(declare-fun d!287405 () Bool)

(declare-fun lt!349403 () Regex!2715)

(assert (=> d!287405 (validRegex!1184 lt!349403)))

(declare-fun e!628200 () Regex!2715)

(assert (=> d!287405 (= lt!349403 e!628200)))

(declare-fun c!159279 () Bool)

(assert (=> d!287405 (= c!159279 (or ((_ is EmptyExpr!2715) (removeUselessConcat!346 r!15766)) ((_ is EmptyLang!2715) (removeUselessConcat!346 r!15766))))))

(assert (=> d!287405 (validRegex!1184 (removeUselessConcat!346 r!15766))))

(assert (=> d!287405 (= (derivativeStep!641 (removeUselessConcat!346 r!15766) (head!1794 s!10566)) lt!349403)))

(declare-fun b!975271 () Bool)

(declare-fun e!628201 () Regex!2715)

(declare-fun e!628203 () Regex!2715)

(assert (=> b!975271 (= e!628201 e!628203)))

(declare-fun c!159280 () Bool)

(assert (=> b!975271 (= c!159280 ((_ is Star!2715) (removeUselessConcat!346 r!15766)))))

(declare-fun b!975272 () Bool)

(assert (=> b!975272 (= c!159277 (nullable!835 (regOne!5942 (removeUselessConcat!346 r!15766))))))

(declare-fun e!628202 () Regex!2715)

(assert (=> b!975272 (= e!628203 e!628202)))

(declare-fun b!975273 () Bool)

(assert (=> b!975273 (= e!628200 EmptyLang!2715)))

(declare-fun b!975274 () Bool)

(declare-fun e!628199 () Regex!2715)

(assert (=> b!975274 (= e!628199 (ite (= (head!1794 s!10566) (c!158928 (removeUselessConcat!346 r!15766))) EmptyExpr!2715 EmptyLang!2715))))

(declare-fun bm!62264 () Bool)

(declare-fun call!62268 () Regex!2715)

(declare-fun call!62269 () Regex!2715)

(assert (=> bm!62264 (= call!62268 call!62269)))

(declare-fun b!975275 () Bool)

(assert (=> b!975275 (= c!159278 ((_ is Union!2715) (removeUselessConcat!346 r!15766)))))

(assert (=> b!975275 (= e!628199 e!628201)))

(declare-fun b!975276 () Bool)

(assert (=> b!975276 (= e!628202 (Union!2715 (Concat!4548 call!62268 (regTwo!5942 (removeUselessConcat!346 r!15766))) call!62267))))

(declare-fun b!975277 () Bool)

(assert (=> b!975277 (= e!628200 e!628199)))

(declare-fun c!159276 () Bool)

(assert (=> b!975277 (= c!159276 ((_ is ElementMatch!2715) (removeUselessConcat!346 r!15766)))))

(declare-fun b!975278 () Bool)

(assert (=> b!975278 (= e!628203 (Concat!4548 call!62268 (removeUselessConcat!346 r!15766)))))

(declare-fun b!975279 () Bool)

(assert (=> b!975279 (= e!628201 (Union!2715 call!62269 call!62270))))

(declare-fun bm!62265 () Bool)

(assert (=> bm!62265 (= call!62269 (derivativeStep!641 (ite c!159278 (regOne!5943 (removeUselessConcat!346 r!15766)) (ite c!159280 (reg!3044 (removeUselessConcat!346 r!15766)) (regOne!5942 (removeUselessConcat!346 r!15766)))) (head!1794 s!10566)))))

(declare-fun b!975280 () Bool)

(assert (=> b!975280 (= e!628202 (Union!2715 (Concat!4548 call!62267 (regTwo!5942 (removeUselessConcat!346 r!15766))) EmptyLang!2715))))

(assert (= (and d!287405 c!159279) b!975273))

(assert (= (and d!287405 (not c!159279)) b!975277))

(assert (= (and b!975277 c!159276) b!975274))

(assert (= (and b!975277 (not c!159276)) b!975275))

(assert (= (and b!975275 c!159278) b!975279))

(assert (= (and b!975275 (not c!159278)) b!975271))

(assert (= (and b!975271 c!159280) b!975278))

(assert (= (and b!975271 (not c!159280)) b!975272))

(assert (= (and b!975272 c!159277) b!975276))

(assert (= (and b!975272 (not c!159277)) b!975280))

(assert (= (or b!975276 b!975280) bm!62263))

(assert (= (or b!975278 b!975276) bm!62264))

(assert (= (or b!975279 bm!62264) bm!62265))

(assert (= (or b!975279 bm!62263) bm!62262))

(assert (=> bm!62262 m!1176635))

(declare-fun m!1177423 () Bool)

(assert (=> bm!62262 m!1177423))

(declare-fun m!1177425 () Bool)

(assert (=> d!287405 m!1177425))

(assert (=> d!287405 m!1176493))

(assert (=> d!287405 m!1176641))

(declare-fun m!1177427 () Bool)

(assert (=> b!975272 m!1177427))

(assert (=> bm!62265 m!1176635))

(declare-fun m!1177429 () Bool)

(assert (=> bm!62265 m!1177429))

(assert (=> b!974165 d!287405))

(assert (=> b!974165 d!287285))

(assert (=> b!974165 d!287355))

(assert (=> b!974378 d!287285))

(declare-fun b!975281 () Bool)

(declare-fun e!628207 () Regex!2715)

(declare-fun e!628204 () Regex!2715)

(assert (=> b!975281 (= e!628207 e!628204)))

(declare-fun c!159282 () Bool)

(assert (=> b!975281 (= c!159282 ((_ is Union!2715) (ite c!158978 (regTwo!5942 r!15766) (ite (or c!158977 c!158975) (regOne!5942 r!15766) (regOne!5943 r!15766)))))))

(declare-fun b!975282 () Bool)

(declare-fun e!628209 () Regex!2715)

(declare-fun call!62271 () Regex!2715)

(assert (=> b!975282 (= e!628209 call!62271)))

(declare-fun b!975283 () Bool)

(declare-fun e!628208 () Regex!2715)

(assert (=> b!975283 (= e!628209 e!628208)))

(declare-fun c!159283 () Bool)

(assert (=> b!975283 (= c!159283 (and ((_ is Concat!4548) (ite c!158978 (regTwo!5942 r!15766) (ite (or c!158977 c!158975) (regOne!5942 r!15766) (regOne!5943 r!15766)))) ((_ is EmptyExpr!2715) (regTwo!5942 (ite c!158978 (regTwo!5942 r!15766) (ite (or c!158977 c!158975) (regOne!5942 r!15766) (regOne!5943 r!15766)))))))))

(declare-fun c!159281 () Bool)

(declare-fun b!975284 () Bool)

(assert (=> b!975284 (= c!159281 ((_ is Concat!4548) (ite c!158978 (regTwo!5942 r!15766) (ite (or c!158977 c!158975) (regOne!5942 r!15766) (regOne!5943 r!15766)))))))

(assert (=> b!975284 (= e!628208 e!628207)))

(declare-fun b!975285 () Bool)

(declare-fun call!62272 () Regex!2715)

(declare-fun call!62274 () Regex!2715)

(assert (=> b!975285 (= e!628207 (Concat!4548 call!62272 call!62274))))

(declare-fun b!975286 () Bool)

(declare-fun call!62275 () Regex!2715)

(assert (=> b!975286 (= e!628204 (Union!2715 call!62272 call!62275))))

(declare-fun c!159285 () Bool)

(declare-fun b!975287 () Bool)

(assert (=> b!975287 (= c!159285 ((_ is Star!2715) (ite c!158978 (regTwo!5942 r!15766) (ite (or c!158977 c!158975) (regOne!5942 r!15766) (regOne!5943 r!15766)))))))

(declare-fun e!628206 () Regex!2715)

(assert (=> b!975287 (= e!628204 e!628206)))

(declare-fun bm!62266 () Bool)

(assert (=> bm!62266 (= call!62275 call!62274)))

(declare-fun bm!62267 () Bool)

(declare-fun call!62273 () Regex!2715)

(assert (=> bm!62267 (= call!62273 call!62271)))

(declare-fun d!287407 () Bool)

(declare-fun e!628205 () Bool)

(assert (=> d!287407 e!628205))

(declare-fun res!443033 () Bool)

(assert (=> d!287407 (=> (not res!443033) (not e!628205))))

(declare-fun lt!349404 () Regex!2715)

(assert (=> d!287407 (= res!443033 (validRegex!1184 lt!349404))))

(assert (=> d!287407 (= lt!349404 e!628209)))

(declare-fun c!159284 () Bool)

(assert (=> d!287407 (= c!159284 (and ((_ is Concat!4548) (ite c!158978 (regTwo!5942 r!15766) (ite (or c!158977 c!158975) (regOne!5942 r!15766) (regOne!5943 r!15766)))) ((_ is EmptyExpr!2715) (regOne!5942 (ite c!158978 (regTwo!5942 r!15766) (ite (or c!158977 c!158975) (regOne!5942 r!15766) (regOne!5943 r!15766)))))))))

(assert (=> d!287407 (validRegex!1184 (ite c!158978 (regTwo!5942 r!15766) (ite (or c!158977 c!158975) (regOne!5942 r!15766) (regOne!5943 r!15766))))))

(assert (=> d!287407 (= (removeUselessConcat!346 (ite c!158978 (regTwo!5942 r!15766) (ite (or c!158977 c!158975) (regOne!5942 r!15766) (regOne!5943 r!15766)))) lt!349404)))

(declare-fun b!975288 () Bool)

(assert (=> b!975288 (= e!628205 (= (nullable!835 lt!349404) (nullable!835 (ite c!158978 (regTwo!5942 r!15766) (ite (or c!158977 c!158975) (regOne!5942 r!15766) (regOne!5943 r!15766))))))))

(declare-fun b!975289 () Bool)

(assert (=> b!975289 (= e!628206 (Star!2715 call!62275))))

(declare-fun bm!62268 () Bool)

(assert (=> bm!62268 (= call!62271 (removeUselessConcat!346 (ite c!159284 (regTwo!5942 (ite c!158978 (regTwo!5942 r!15766) (ite (or c!158977 c!158975) (regOne!5942 r!15766) (regOne!5943 r!15766)))) (ite (or c!159283 c!159281) (regOne!5942 (ite c!158978 (regTwo!5942 r!15766) (ite (or c!158977 c!158975) (regOne!5942 r!15766) (regOne!5943 r!15766)))) (regOne!5943 (ite c!158978 (regTwo!5942 r!15766) (ite (or c!158977 c!158975) (regOne!5942 r!15766) (regOne!5943 r!15766))))))))))

(declare-fun b!975290 () Bool)

(assert (=> b!975290 (= e!628206 (ite c!158978 (regTwo!5942 r!15766) (ite (or c!158977 c!158975) (regOne!5942 r!15766) (regOne!5943 r!15766))))))

(declare-fun bm!62269 () Bool)

(assert (=> bm!62269 (= call!62274 (removeUselessConcat!346 (ite c!159281 (regTwo!5942 (ite c!158978 (regTwo!5942 r!15766) (ite (or c!158977 c!158975) (regOne!5942 r!15766) (regOne!5943 r!15766)))) (ite c!159282 (regTwo!5943 (ite c!158978 (regTwo!5942 r!15766) (ite (or c!158977 c!158975) (regOne!5942 r!15766) (regOne!5943 r!15766)))) (reg!3044 (ite c!158978 (regTwo!5942 r!15766) (ite (or c!158977 c!158975) (regOne!5942 r!15766) (regOne!5943 r!15766))))))))))

(declare-fun bm!62270 () Bool)

(assert (=> bm!62270 (= call!62272 call!62273)))

(declare-fun b!975291 () Bool)

(assert (=> b!975291 (= e!628208 call!62273)))

(assert (= (and d!287407 c!159284) b!975282))

(assert (= (and d!287407 (not c!159284)) b!975283))

(assert (= (and b!975283 c!159283) b!975291))

(assert (= (and b!975283 (not c!159283)) b!975284))

(assert (= (and b!975284 c!159281) b!975285))

(assert (= (and b!975284 (not c!159281)) b!975281))

(assert (= (and b!975281 c!159282) b!975286))

(assert (= (and b!975281 (not c!159282)) b!975287))

(assert (= (and b!975287 c!159285) b!975289))

(assert (= (and b!975287 (not c!159285)) b!975290))

(assert (= (or b!975286 b!975289) bm!62266))

(assert (= (or b!975285 bm!62266) bm!62269))

(assert (= (or b!975285 b!975286) bm!62270))

(assert (= (or b!975291 bm!62270) bm!62267))

(assert (= (or b!975282 bm!62267) bm!62268))

(assert (= (and d!287407 res!443033) b!975288))

(declare-fun m!1177431 () Bool)

(assert (=> d!287407 m!1177431))

(declare-fun m!1177433 () Bool)

(assert (=> d!287407 m!1177433))

(declare-fun m!1177435 () Bool)

(assert (=> b!975288 m!1177435))

(declare-fun m!1177437 () Bool)

(assert (=> b!975288 m!1177437))

(declare-fun m!1177439 () Bool)

(assert (=> bm!62268 m!1177439))

(declare-fun m!1177441 () Bool)

(assert (=> bm!62269 m!1177441))

(assert (=> bm!62055 d!287407))

(assert (=> d!287145 d!287363))

(declare-fun b!975292 () Bool)

(declare-fun e!628215 () Bool)

(declare-fun e!628213 () Bool)

(assert (=> b!975292 (= e!628215 e!628213)))

(declare-fun res!443041 () Bool)

(assert (=> b!975292 (=> (not res!443041) (not e!628213))))

(declare-fun lt!349405 () Bool)

(assert (=> b!975292 (= res!443041 (not lt!349405))))

(declare-fun d!287409 () Bool)

(declare-fun e!628210 () Bool)

(assert (=> d!287409 e!628210))

(declare-fun c!159286 () Bool)

(assert (=> d!287409 (= c!159286 ((_ is EmptyExpr!2715) EmptyExpr!2715))))

(declare-fun e!628211 () Bool)

(assert (=> d!287409 (= lt!349405 e!628211)))

(declare-fun c!159288 () Bool)

(assert (=> d!287409 (= c!159288 (isEmpty!6242 Nil!9929))))

(assert (=> d!287409 (validRegex!1184 EmptyExpr!2715)))

(assert (=> d!287409 (= (matchR!1251 EmptyExpr!2715 Nil!9929) lt!349405)))

(declare-fun b!975293 () Bool)

(declare-fun e!628212 () Bool)

(assert (=> b!975293 (= e!628212 (not (= (head!1794 Nil!9929) (c!158928 EmptyExpr!2715))))))

(declare-fun b!975294 () Bool)

(assert (=> b!975294 (= e!628211 (matchR!1251 (derivativeStep!641 EmptyExpr!2715 (head!1794 Nil!9929)) (tail!1356 Nil!9929)))))

(declare-fun b!975295 () Bool)

(assert (=> b!975295 (= e!628211 (nullable!835 EmptyExpr!2715))))

(declare-fun b!975296 () Bool)

(declare-fun res!443038 () Bool)

(assert (=> b!975296 (=> res!443038 e!628215)))

(assert (=> b!975296 (= res!443038 (not ((_ is ElementMatch!2715) EmptyExpr!2715)))))

(declare-fun e!628216 () Bool)

(assert (=> b!975296 (= e!628216 e!628215)))

(declare-fun b!975297 () Bool)

(assert (=> b!975297 (= e!628216 (not lt!349405))))

(declare-fun b!975298 () Bool)

(declare-fun res!443037 () Bool)

(declare-fun e!628214 () Bool)

(assert (=> b!975298 (=> (not res!443037) (not e!628214))))

(assert (=> b!975298 (= res!443037 (isEmpty!6242 (tail!1356 Nil!9929)))))

(declare-fun b!975299 () Bool)

(declare-fun res!443039 () Bool)

(assert (=> b!975299 (=> res!443039 e!628215)))

(assert (=> b!975299 (= res!443039 e!628214)))

(declare-fun res!443036 () Bool)

(assert (=> b!975299 (=> (not res!443036) (not e!628214))))

(assert (=> b!975299 (= res!443036 lt!349405)))

(declare-fun b!975300 () Bool)

(assert (=> b!975300 (= e!628213 e!628212)))

(declare-fun res!443035 () Bool)

(assert (=> b!975300 (=> res!443035 e!628212)))

(declare-fun call!62276 () Bool)

(assert (=> b!975300 (= res!443035 call!62276)))

(declare-fun b!975301 () Bool)

(assert (=> b!975301 (= e!628210 e!628216)))

(declare-fun c!159287 () Bool)

(assert (=> b!975301 (= c!159287 ((_ is EmptyLang!2715) EmptyExpr!2715))))

(declare-fun b!975302 () Bool)

(declare-fun res!443040 () Bool)

(assert (=> b!975302 (=> res!443040 e!628212)))

(assert (=> b!975302 (= res!443040 (not (isEmpty!6242 (tail!1356 Nil!9929))))))

(declare-fun b!975303 () Bool)

(assert (=> b!975303 (= e!628210 (= lt!349405 call!62276))))

(declare-fun bm!62271 () Bool)

(assert (=> bm!62271 (= call!62276 (isEmpty!6242 Nil!9929))))

(declare-fun b!975304 () Bool)

(assert (=> b!975304 (= e!628214 (= (head!1794 Nil!9929) (c!158928 EmptyExpr!2715)))))

(declare-fun b!975305 () Bool)

(declare-fun res!443034 () Bool)

(assert (=> b!975305 (=> (not res!443034) (not e!628214))))

(assert (=> b!975305 (= res!443034 (not call!62276))))

(assert (= (and d!287409 c!159288) b!975295))

(assert (= (and d!287409 (not c!159288)) b!975294))

(assert (= (and d!287409 c!159286) b!975303))

(assert (= (and d!287409 (not c!159286)) b!975301))

(assert (= (and b!975301 c!159287) b!975297))

(assert (= (and b!975301 (not c!159287)) b!975296))

(assert (= (and b!975296 (not res!443038)) b!975299))

(assert (= (and b!975299 res!443036) b!975305))

(assert (= (and b!975305 res!443034) b!975298))

(assert (= (and b!975298 res!443037) b!975304))

(assert (= (and b!975299 (not res!443039)) b!975292))

(assert (= (and b!975292 res!443041) b!975300))

(assert (= (and b!975300 (not res!443035)) b!975302))

(assert (= (and b!975302 (not res!443040)) b!975293))

(assert (= (or b!975303 b!975300 b!975305) bm!62271))

(assert (=> b!975295 m!1177247))

(declare-fun m!1177443 () Bool)

(assert (=> b!975293 m!1177443))

(declare-fun m!1177445 () Bool)

(assert (=> b!975302 m!1177445))

(assert (=> b!975302 m!1177445))

(declare-fun m!1177447 () Bool)

(assert (=> b!975302 m!1177447))

(declare-fun m!1177449 () Bool)

(assert (=> bm!62271 m!1177449))

(assert (=> b!975304 m!1177443))

(assert (=> d!287409 m!1177449))

(assert (=> d!287409 m!1176743))

(assert (=> b!975298 m!1177445))

(assert (=> b!975298 m!1177445))

(assert (=> b!975298 m!1177447))

(assert (=> b!975294 m!1177443))

(assert (=> b!975294 m!1177443))

(declare-fun m!1177451 () Bool)

(assert (=> b!975294 m!1177451))

(assert (=> b!975294 m!1177445))

(assert (=> b!975294 m!1177451))

(assert (=> b!975294 m!1177445))

(declare-fun m!1177453 () Bool)

(assert (=> b!975294 m!1177453))

(assert (=> d!287145 d!287409))

(assert (=> d!287145 d!287389))

(declare-fun b!975306 () Bool)

(declare-fun e!628217 () Bool)

(declare-fun e!628218 () Bool)

(assert (=> b!975306 (= e!628217 e!628218)))

(declare-fun c!159290 () Bool)

(assert (=> b!975306 (= c!159290 ((_ is Star!2715) (ite c!159009 (regTwo!5943 (regTwo!5942 r!15766)) (regTwo!5942 (regTwo!5942 r!15766)))))))

(declare-fun b!975307 () Bool)

(declare-fun e!628220 () Bool)

(declare-fun call!62279 () Bool)

(assert (=> b!975307 (= e!628220 call!62279)))

(declare-fun b!975309 () Bool)

(declare-fun res!443043 () Bool)

(declare-fun e!628222 () Bool)

(assert (=> b!975309 (=> (not res!443043) (not e!628222))))

(declare-fun call!62278 () Bool)

(assert (=> b!975309 (= res!443043 call!62278)))

(declare-fun e!628221 () Bool)

(assert (=> b!975309 (= e!628221 e!628222)))

(declare-fun b!975310 () Bool)

(declare-fun e!628219 () Bool)

(declare-fun call!62277 () Bool)

(assert (=> b!975310 (= e!628219 call!62277)))

(declare-fun bm!62272 () Bool)

(assert (=> bm!62272 (= call!62278 call!62277)))

(declare-fun b!975311 () Bool)

(assert (=> b!975311 (= e!628222 call!62279)))

(declare-fun b!975312 () Bool)

(declare-fun res!443045 () Bool)

(declare-fun e!628223 () Bool)

(assert (=> b!975312 (=> res!443045 e!628223)))

(assert (=> b!975312 (= res!443045 (not ((_ is Concat!4548) (ite c!159009 (regTwo!5943 (regTwo!5942 r!15766)) (regTwo!5942 (regTwo!5942 r!15766))))))))

(assert (=> b!975312 (= e!628221 e!628223)))

(declare-fun b!975313 () Bool)

(assert (=> b!975313 (= e!628218 e!628221)))

(declare-fun c!159289 () Bool)

(assert (=> b!975313 (= c!159289 ((_ is Union!2715) (ite c!159009 (regTwo!5943 (regTwo!5942 r!15766)) (regTwo!5942 (regTwo!5942 r!15766)))))))

(declare-fun bm!62273 () Bool)

(assert (=> bm!62273 (= call!62279 (validRegex!1184 (ite c!159289 (regTwo!5943 (ite c!159009 (regTwo!5943 (regTwo!5942 r!15766)) (regTwo!5942 (regTwo!5942 r!15766)))) (regTwo!5942 (ite c!159009 (regTwo!5943 (regTwo!5942 r!15766)) (regTwo!5942 (regTwo!5942 r!15766)))))))))

(declare-fun bm!62274 () Bool)

(assert (=> bm!62274 (= call!62277 (validRegex!1184 (ite c!159290 (reg!3044 (ite c!159009 (regTwo!5943 (regTwo!5942 r!15766)) (regTwo!5942 (regTwo!5942 r!15766)))) (ite c!159289 (regOne!5943 (ite c!159009 (regTwo!5943 (regTwo!5942 r!15766)) (regTwo!5942 (regTwo!5942 r!15766)))) (regOne!5942 (ite c!159009 (regTwo!5943 (regTwo!5942 r!15766)) (regTwo!5942 (regTwo!5942 r!15766))))))))))

(declare-fun b!975314 () Bool)

(assert (=> b!975314 (= e!628223 e!628220)))

(declare-fun res!443042 () Bool)

(assert (=> b!975314 (=> (not res!443042) (not e!628220))))

(assert (=> b!975314 (= res!443042 call!62278)))

(declare-fun d!287411 () Bool)

(declare-fun res!443046 () Bool)

(assert (=> d!287411 (=> res!443046 e!628217)))

(assert (=> d!287411 (= res!443046 ((_ is ElementMatch!2715) (ite c!159009 (regTwo!5943 (regTwo!5942 r!15766)) (regTwo!5942 (regTwo!5942 r!15766)))))))

(assert (=> d!287411 (= (validRegex!1184 (ite c!159009 (regTwo!5943 (regTwo!5942 r!15766)) (regTwo!5942 (regTwo!5942 r!15766)))) e!628217)))

(declare-fun b!975308 () Bool)

(assert (=> b!975308 (= e!628218 e!628219)))

(declare-fun res!443044 () Bool)

(assert (=> b!975308 (= res!443044 (not (nullable!835 (reg!3044 (ite c!159009 (regTwo!5943 (regTwo!5942 r!15766)) (regTwo!5942 (regTwo!5942 r!15766)))))))))

(assert (=> b!975308 (=> (not res!443044) (not e!628219))))

(assert (= (and d!287411 (not res!443046)) b!975306))

(assert (= (and b!975306 c!159290) b!975308))

(assert (= (and b!975306 (not c!159290)) b!975313))

(assert (= (and b!975308 res!443044) b!975310))

(assert (= (and b!975313 c!159289) b!975309))

(assert (= (and b!975313 (not c!159289)) b!975312))

(assert (= (and b!975309 res!443043) b!975311))

(assert (= (and b!975312 (not res!443045)) b!975314))

(assert (= (and b!975314 res!443042) b!975307))

(assert (= (or b!975311 b!975307) bm!62273))

(assert (= (or b!975309 b!975314) bm!62272))

(assert (= (or b!975310 bm!62272) bm!62274))

(declare-fun m!1177455 () Bool)

(assert (=> bm!62273 m!1177455))

(declare-fun m!1177457 () Bool)

(assert (=> bm!62274 m!1177457))

(declare-fun m!1177459 () Bool)

(assert (=> b!975308 m!1177459))

(assert (=> bm!62073 d!287411))

(assert (=> bm!62101 d!287281))

(assert (=> b!974155 d!287391))

(assert (=> b!974155 d!287257))

(assert (=> b!974386 d!287391))

(assert (=> b!974386 d!287257))

(declare-fun b!975316 () Bool)

(declare-fun e!628224 () Bool)

(declare-fun tp!298271 () Bool)

(declare-fun tp!298272 () Bool)

(assert (=> b!975316 (= e!628224 (and tp!298271 tp!298272))))

(assert (=> b!974459 (= tp!298133 e!628224)))

(declare-fun b!975318 () Bool)

(declare-fun tp!298274 () Bool)

(declare-fun tp!298273 () Bool)

(assert (=> b!975318 (= e!628224 (and tp!298274 tp!298273))))

(declare-fun b!975315 () Bool)

(assert (=> b!975315 (= e!628224 tp_is_empty!5073)))

(declare-fun b!975317 () Bool)

(declare-fun tp!298275 () Bool)

(assert (=> b!975317 (= e!628224 tp!298275)))

(assert (= (and b!974459 ((_ is ElementMatch!2715) (regOne!5943 (regOne!5942 r!15766)))) b!975315))

(assert (= (and b!974459 ((_ is Concat!4548) (regOne!5943 (regOne!5942 r!15766)))) b!975316))

(assert (= (and b!974459 ((_ is Star!2715) (regOne!5943 (regOne!5942 r!15766)))) b!975317))

(assert (= (and b!974459 ((_ is Union!2715) (regOne!5943 (regOne!5942 r!15766)))) b!975318))

(declare-fun b!975320 () Bool)

(declare-fun e!628225 () Bool)

(declare-fun tp!298276 () Bool)

(declare-fun tp!298277 () Bool)

(assert (=> b!975320 (= e!628225 (and tp!298276 tp!298277))))

(assert (=> b!974459 (= tp!298132 e!628225)))

(declare-fun b!975322 () Bool)

(declare-fun tp!298279 () Bool)

(declare-fun tp!298278 () Bool)

(assert (=> b!975322 (= e!628225 (and tp!298279 tp!298278))))

(declare-fun b!975319 () Bool)

(assert (=> b!975319 (= e!628225 tp_is_empty!5073)))

(declare-fun b!975321 () Bool)

(declare-fun tp!298280 () Bool)

(assert (=> b!975321 (= e!628225 tp!298280)))

(assert (= (and b!974459 ((_ is ElementMatch!2715) (regTwo!5943 (regOne!5942 r!15766)))) b!975319))

(assert (= (and b!974459 ((_ is Concat!4548) (regTwo!5943 (regOne!5942 r!15766)))) b!975320))

(assert (= (and b!974459 ((_ is Star!2715) (regTwo!5943 (regOne!5942 r!15766)))) b!975321))

(assert (= (and b!974459 ((_ is Union!2715) (regTwo!5943 (regOne!5942 r!15766)))) b!975322))

(declare-fun b!975323 () Bool)

(declare-fun e!628226 () Bool)

(declare-fun tp!298281 () Bool)

(assert (=> b!975323 (= e!628226 (and tp_is_empty!5073 tp!298281))))

(assert (=> b!974455 (= tp!298129 e!628226)))

(assert (= (and b!974455 ((_ is Cons!9929) (t!100991 (t!100991 s!10566)))) b!975323))

(declare-fun b!975325 () Bool)

(declare-fun e!628227 () Bool)

(declare-fun tp!298282 () Bool)

(declare-fun tp!298283 () Bool)

(assert (=> b!975325 (= e!628227 (and tp!298282 tp!298283))))

(assert (=> b!974461 (= tp!298135 e!628227)))

(declare-fun b!975327 () Bool)

(declare-fun tp!298285 () Bool)

(declare-fun tp!298284 () Bool)

(assert (=> b!975327 (= e!628227 (and tp!298285 tp!298284))))

(declare-fun b!975324 () Bool)

(assert (=> b!975324 (= e!628227 tp_is_empty!5073)))

(declare-fun b!975326 () Bool)

(declare-fun tp!298286 () Bool)

(assert (=> b!975326 (= e!628227 tp!298286)))

(assert (= (and b!974461 ((_ is ElementMatch!2715) (regOne!5942 (regTwo!5942 r!15766)))) b!975324))

(assert (= (and b!974461 ((_ is Concat!4548) (regOne!5942 (regTwo!5942 r!15766)))) b!975325))

(assert (= (and b!974461 ((_ is Star!2715) (regOne!5942 (regTwo!5942 r!15766)))) b!975326))

(assert (= (and b!974461 ((_ is Union!2715) (regOne!5942 (regTwo!5942 r!15766)))) b!975327))

(declare-fun b!975329 () Bool)

(declare-fun e!628228 () Bool)

(declare-fun tp!298287 () Bool)

(declare-fun tp!298288 () Bool)

(assert (=> b!975329 (= e!628228 (and tp!298287 tp!298288))))

(assert (=> b!974461 (= tp!298136 e!628228)))

(declare-fun b!975331 () Bool)

(declare-fun tp!298290 () Bool)

(declare-fun tp!298289 () Bool)

(assert (=> b!975331 (= e!628228 (and tp!298290 tp!298289))))

(declare-fun b!975328 () Bool)

(assert (=> b!975328 (= e!628228 tp_is_empty!5073)))

(declare-fun b!975330 () Bool)

(declare-fun tp!298291 () Bool)

(assert (=> b!975330 (= e!628228 tp!298291)))

(assert (= (and b!974461 ((_ is ElementMatch!2715) (regTwo!5942 (regTwo!5942 r!15766)))) b!975328))

(assert (= (and b!974461 ((_ is Concat!4548) (regTwo!5942 (regTwo!5942 r!15766)))) b!975329))

(assert (= (and b!974461 ((_ is Star!2715) (regTwo!5942 (regTwo!5942 r!15766)))) b!975330))

(assert (= (and b!974461 ((_ is Union!2715) (regTwo!5942 (regTwo!5942 r!15766)))) b!975331))

(declare-fun b!975333 () Bool)

(declare-fun e!628229 () Bool)

(declare-fun tp!298292 () Bool)

(declare-fun tp!298293 () Bool)

(assert (=> b!975333 (= e!628229 (and tp!298292 tp!298293))))

(assert (=> b!974446 (= tp!298120 e!628229)))

(declare-fun b!975335 () Bool)

(declare-fun tp!298295 () Bool)

(declare-fun tp!298294 () Bool)

(assert (=> b!975335 (= e!628229 (and tp!298295 tp!298294))))

(declare-fun b!975332 () Bool)

(assert (=> b!975332 (= e!628229 tp_is_empty!5073)))

(declare-fun b!975334 () Bool)

(declare-fun tp!298296 () Bool)

(assert (=> b!975334 (= e!628229 tp!298296)))

(assert (= (and b!974446 ((_ is ElementMatch!2715) (regOne!5943 (regOne!5943 r!15766)))) b!975332))

(assert (= (and b!974446 ((_ is Concat!4548) (regOne!5943 (regOne!5943 r!15766)))) b!975333))

(assert (= (and b!974446 ((_ is Star!2715) (regOne!5943 (regOne!5943 r!15766)))) b!975334))

(assert (= (and b!974446 ((_ is Union!2715) (regOne!5943 (regOne!5943 r!15766)))) b!975335))

(declare-fun b!975337 () Bool)

(declare-fun e!628230 () Bool)

(declare-fun tp!298297 () Bool)

(declare-fun tp!298298 () Bool)

(assert (=> b!975337 (= e!628230 (and tp!298297 tp!298298))))

(assert (=> b!974446 (= tp!298119 e!628230)))

(declare-fun b!975339 () Bool)

(declare-fun tp!298300 () Bool)

(declare-fun tp!298299 () Bool)

(assert (=> b!975339 (= e!628230 (and tp!298300 tp!298299))))

(declare-fun b!975336 () Bool)

(assert (=> b!975336 (= e!628230 tp_is_empty!5073)))

(declare-fun b!975338 () Bool)

(declare-fun tp!298301 () Bool)

(assert (=> b!975338 (= e!628230 tp!298301)))

(assert (= (and b!974446 ((_ is ElementMatch!2715) (regTwo!5943 (regOne!5943 r!15766)))) b!975336))

(assert (= (and b!974446 ((_ is Concat!4548) (regTwo!5943 (regOne!5943 r!15766)))) b!975337))

(assert (= (and b!974446 ((_ is Star!2715) (regTwo!5943 (regOne!5943 r!15766)))) b!975338))

(assert (= (and b!974446 ((_ is Union!2715) (regTwo!5943 (regOne!5943 r!15766)))) b!975339))

(declare-fun b!975341 () Bool)

(declare-fun e!628231 () Bool)

(declare-fun tp!298302 () Bool)

(declare-fun tp!298303 () Bool)

(assert (=> b!975341 (= e!628231 (and tp!298302 tp!298303))))

(assert (=> b!974457 (= tp!298130 e!628231)))

(declare-fun b!975343 () Bool)

(declare-fun tp!298305 () Bool)

(declare-fun tp!298304 () Bool)

(assert (=> b!975343 (= e!628231 (and tp!298305 tp!298304))))

(declare-fun b!975340 () Bool)

(assert (=> b!975340 (= e!628231 tp_is_empty!5073)))

(declare-fun b!975342 () Bool)

(declare-fun tp!298306 () Bool)

(assert (=> b!975342 (= e!628231 tp!298306)))

(assert (= (and b!974457 ((_ is ElementMatch!2715) (regOne!5942 (regOne!5942 r!15766)))) b!975340))

(assert (= (and b!974457 ((_ is Concat!4548) (regOne!5942 (regOne!5942 r!15766)))) b!975341))

(assert (= (and b!974457 ((_ is Star!2715) (regOne!5942 (regOne!5942 r!15766)))) b!975342))

(assert (= (and b!974457 ((_ is Union!2715) (regOne!5942 (regOne!5942 r!15766)))) b!975343))

(declare-fun b!975345 () Bool)

(declare-fun e!628232 () Bool)

(declare-fun tp!298307 () Bool)

(declare-fun tp!298308 () Bool)

(assert (=> b!975345 (= e!628232 (and tp!298307 tp!298308))))

(assert (=> b!974457 (= tp!298131 e!628232)))

(declare-fun b!975347 () Bool)

(declare-fun tp!298310 () Bool)

(declare-fun tp!298309 () Bool)

(assert (=> b!975347 (= e!628232 (and tp!298310 tp!298309))))

(declare-fun b!975344 () Bool)

(assert (=> b!975344 (= e!628232 tp_is_empty!5073)))

(declare-fun b!975346 () Bool)

(declare-fun tp!298311 () Bool)

(assert (=> b!975346 (= e!628232 tp!298311)))

(assert (= (and b!974457 ((_ is ElementMatch!2715) (regTwo!5942 (regOne!5942 r!15766)))) b!975344))

(assert (= (and b!974457 ((_ is Concat!4548) (regTwo!5942 (regOne!5942 r!15766)))) b!975345))

(assert (= (and b!974457 ((_ is Star!2715) (regTwo!5942 (regOne!5942 r!15766)))) b!975346))

(assert (= (and b!974457 ((_ is Union!2715) (regTwo!5942 (regOne!5942 r!15766)))) b!975347))

(declare-fun b!975349 () Bool)

(declare-fun e!628233 () Bool)

(declare-fun tp!298312 () Bool)

(declare-fun tp!298313 () Bool)

(assert (=> b!975349 (= e!628233 (and tp!298312 tp!298313))))

(assert (=> b!974466 (= tp!298144 e!628233)))

(declare-fun b!975351 () Bool)

(declare-fun tp!298315 () Bool)

(declare-fun tp!298314 () Bool)

(assert (=> b!975351 (= e!628233 (and tp!298315 tp!298314))))

(declare-fun b!975348 () Bool)

(assert (=> b!975348 (= e!628233 tp_is_empty!5073)))

(declare-fun b!975350 () Bool)

(declare-fun tp!298316 () Bool)

(assert (=> b!975350 (= e!628233 tp!298316)))

(assert (= (and b!974466 ((_ is ElementMatch!2715) (reg!3044 (reg!3044 r!15766)))) b!975348))

(assert (= (and b!974466 ((_ is Concat!4548) (reg!3044 (reg!3044 r!15766)))) b!975349))

(assert (= (and b!974466 ((_ is Star!2715) (reg!3044 (reg!3044 r!15766)))) b!975350))

(assert (= (and b!974466 ((_ is Union!2715) (reg!3044 (reg!3044 r!15766)))) b!975351))

(declare-fun b!975353 () Bool)

(declare-fun e!628234 () Bool)

(declare-fun tp!298317 () Bool)

(declare-fun tp!298318 () Bool)

(assert (=> b!975353 (= e!628234 (and tp!298317 tp!298318))))

(assert (=> b!974467 (= tp!298143 e!628234)))

(declare-fun b!975355 () Bool)

(declare-fun tp!298320 () Bool)

(declare-fun tp!298319 () Bool)

(assert (=> b!975355 (= e!628234 (and tp!298320 tp!298319))))

(declare-fun b!975352 () Bool)

(assert (=> b!975352 (= e!628234 tp_is_empty!5073)))

(declare-fun b!975354 () Bool)

(declare-fun tp!298321 () Bool)

(assert (=> b!975354 (= e!628234 tp!298321)))

(assert (= (and b!974467 ((_ is ElementMatch!2715) (regOne!5943 (reg!3044 r!15766)))) b!975352))

(assert (= (and b!974467 ((_ is Concat!4548) (regOne!5943 (reg!3044 r!15766)))) b!975353))

(assert (= (and b!974467 ((_ is Star!2715) (regOne!5943 (reg!3044 r!15766)))) b!975354))

(assert (= (and b!974467 ((_ is Union!2715) (regOne!5943 (reg!3044 r!15766)))) b!975355))

(declare-fun b!975357 () Bool)

(declare-fun e!628235 () Bool)

(declare-fun tp!298322 () Bool)

(declare-fun tp!298323 () Bool)

(assert (=> b!975357 (= e!628235 (and tp!298322 tp!298323))))

(assert (=> b!974467 (= tp!298142 e!628235)))

(declare-fun b!975359 () Bool)

(declare-fun tp!298325 () Bool)

(declare-fun tp!298324 () Bool)

(assert (=> b!975359 (= e!628235 (and tp!298325 tp!298324))))

(declare-fun b!975356 () Bool)

(assert (=> b!975356 (= e!628235 tp_is_empty!5073)))

(declare-fun b!975358 () Bool)

(declare-fun tp!298326 () Bool)

(assert (=> b!975358 (= e!628235 tp!298326)))

(assert (= (and b!974467 ((_ is ElementMatch!2715) (regTwo!5943 (reg!3044 r!15766)))) b!975356))

(assert (= (and b!974467 ((_ is Concat!4548) (regTwo!5943 (reg!3044 r!15766)))) b!975357))

(assert (= (and b!974467 ((_ is Star!2715) (regTwo!5943 (reg!3044 r!15766)))) b!975358))

(assert (= (and b!974467 ((_ is Union!2715) (regTwo!5943 (reg!3044 r!15766)))) b!975359))

(declare-fun b!975361 () Bool)

(declare-fun e!628236 () Bool)

(declare-fun tp!298327 () Bool)

(declare-fun tp!298328 () Bool)

(assert (=> b!975361 (= e!628236 (and tp!298327 tp!298328))))

(assert (=> b!974462 (= tp!298139 e!628236)))

(declare-fun b!975363 () Bool)

(declare-fun tp!298330 () Bool)

(declare-fun tp!298329 () Bool)

(assert (=> b!975363 (= e!628236 (and tp!298330 tp!298329))))

(declare-fun b!975360 () Bool)

(assert (=> b!975360 (= e!628236 tp_is_empty!5073)))

(declare-fun b!975362 () Bool)

(declare-fun tp!298331 () Bool)

(assert (=> b!975362 (= e!628236 tp!298331)))

(assert (= (and b!974462 ((_ is ElementMatch!2715) (reg!3044 (regTwo!5942 r!15766)))) b!975360))

(assert (= (and b!974462 ((_ is Concat!4548) (reg!3044 (regTwo!5942 r!15766)))) b!975361))

(assert (= (and b!974462 ((_ is Star!2715) (reg!3044 (regTwo!5942 r!15766)))) b!975362))

(assert (= (and b!974462 ((_ is Union!2715) (reg!3044 (regTwo!5942 r!15766)))) b!975363))

(declare-fun b!975365 () Bool)

(declare-fun e!628237 () Bool)

(declare-fun tp!298332 () Bool)

(declare-fun tp!298333 () Bool)

(assert (=> b!975365 (= e!628237 (and tp!298332 tp!298333))))

(assert (=> b!974463 (= tp!298138 e!628237)))

(declare-fun b!975367 () Bool)

(declare-fun tp!298335 () Bool)

(declare-fun tp!298334 () Bool)

(assert (=> b!975367 (= e!628237 (and tp!298335 tp!298334))))

(declare-fun b!975364 () Bool)

(assert (=> b!975364 (= e!628237 tp_is_empty!5073)))

(declare-fun b!975366 () Bool)

(declare-fun tp!298336 () Bool)

(assert (=> b!975366 (= e!628237 tp!298336)))

(assert (= (and b!974463 ((_ is ElementMatch!2715) (regOne!5943 (regTwo!5942 r!15766)))) b!975364))

(assert (= (and b!974463 ((_ is Concat!4548) (regOne!5943 (regTwo!5942 r!15766)))) b!975365))

(assert (= (and b!974463 ((_ is Star!2715) (regOne!5943 (regTwo!5942 r!15766)))) b!975366))

(assert (= (and b!974463 ((_ is Union!2715) (regOne!5943 (regTwo!5942 r!15766)))) b!975367))

(declare-fun b!975369 () Bool)

(declare-fun e!628238 () Bool)

(declare-fun tp!298337 () Bool)

(declare-fun tp!298338 () Bool)

(assert (=> b!975369 (= e!628238 (and tp!298337 tp!298338))))

(assert (=> b!974463 (= tp!298137 e!628238)))

(declare-fun b!975371 () Bool)

(declare-fun tp!298340 () Bool)

(declare-fun tp!298339 () Bool)

(assert (=> b!975371 (= e!628238 (and tp!298340 tp!298339))))

(declare-fun b!975368 () Bool)

(assert (=> b!975368 (= e!628238 tp_is_empty!5073)))

(declare-fun b!975370 () Bool)

(declare-fun tp!298341 () Bool)

(assert (=> b!975370 (= e!628238 tp!298341)))

(assert (= (and b!974463 ((_ is ElementMatch!2715) (regTwo!5943 (regTwo!5942 r!15766)))) b!975368))

(assert (= (and b!974463 ((_ is Concat!4548) (regTwo!5943 (regTwo!5942 r!15766)))) b!975369))

(assert (= (and b!974463 ((_ is Star!2715) (regTwo!5943 (regTwo!5942 r!15766)))) b!975370))

(assert (= (and b!974463 ((_ is Union!2715) (regTwo!5943 (regTwo!5942 r!15766)))) b!975371))

(declare-fun b!975373 () Bool)

(declare-fun e!628239 () Bool)

(declare-fun tp!298342 () Bool)

(declare-fun tp!298343 () Bool)

(assert (=> b!975373 (= e!628239 (and tp!298342 tp!298343))))

(assert (=> b!974458 (= tp!298134 e!628239)))

(declare-fun b!975375 () Bool)

(declare-fun tp!298345 () Bool)

(declare-fun tp!298344 () Bool)

(assert (=> b!975375 (= e!628239 (and tp!298345 tp!298344))))

(declare-fun b!975372 () Bool)

(assert (=> b!975372 (= e!628239 tp_is_empty!5073)))

(declare-fun b!975374 () Bool)

(declare-fun tp!298346 () Bool)

(assert (=> b!975374 (= e!628239 tp!298346)))

(assert (= (and b!974458 ((_ is ElementMatch!2715) (reg!3044 (regOne!5942 r!15766)))) b!975372))

(assert (= (and b!974458 ((_ is Concat!4548) (reg!3044 (regOne!5942 r!15766)))) b!975373))

(assert (= (and b!974458 ((_ is Star!2715) (reg!3044 (regOne!5942 r!15766)))) b!975374))

(assert (= (and b!974458 ((_ is Union!2715) (reg!3044 (regOne!5942 r!15766)))) b!975375))

(declare-fun b!975377 () Bool)

(declare-fun e!628240 () Bool)

(declare-fun tp!298347 () Bool)

(declare-fun tp!298348 () Bool)

(assert (=> b!975377 (= e!628240 (and tp!298347 tp!298348))))

(assert (=> b!974448 (= tp!298122 e!628240)))

(declare-fun b!975379 () Bool)

(declare-fun tp!298350 () Bool)

(declare-fun tp!298349 () Bool)

(assert (=> b!975379 (= e!628240 (and tp!298350 tp!298349))))

(declare-fun b!975376 () Bool)

(assert (=> b!975376 (= e!628240 tp_is_empty!5073)))

(declare-fun b!975378 () Bool)

(declare-fun tp!298351 () Bool)

(assert (=> b!975378 (= e!628240 tp!298351)))

(assert (= (and b!974448 ((_ is ElementMatch!2715) (regOne!5942 (regTwo!5943 r!15766)))) b!975376))

(assert (= (and b!974448 ((_ is Concat!4548) (regOne!5942 (regTwo!5943 r!15766)))) b!975377))

(assert (= (and b!974448 ((_ is Star!2715) (regOne!5942 (regTwo!5943 r!15766)))) b!975378))

(assert (= (and b!974448 ((_ is Union!2715) (regOne!5942 (regTwo!5943 r!15766)))) b!975379))

(declare-fun b!975381 () Bool)

(declare-fun e!628241 () Bool)

(declare-fun tp!298352 () Bool)

(declare-fun tp!298353 () Bool)

(assert (=> b!975381 (= e!628241 (and tp!298352 tp!298353))))

(assert (=> b!974448 (= tp!298123 e!628241)))

(declare-fun b!975383 () Bool)

(declare-fun tp!298355 () Bool)

(declare-fun tp!298354 () Bool)

(assert (=> b!975383 (= e!628241 (and tp!298355 tp!298354))))

(declare-fun b!975380 () Bool)

(assert (=> b!975380 (= e!628241 tp_is_empty!5073)))

(declare-fun b!975382 () Bool)

(declare-fun tp!298356 () Bool)

(assert (=> b!975382 (= e!628241 tp!298356)))

(assert (= (and b!974448 ((_ is ElementMatch!2715) (regTwo!5942 (regTwo!5943 r!15766)))) b!975380))

(assert (= (and b!974448 ((_ is Concat!4548) (regTwo!5942 (regTwo!5943 r!15766)))) b!975381))

(assert (= (and b!974448 ((_ is Star!2715) (regTwo!5942 (regTwo!5943 r!15766)))) b!975382))

(assert (= (and b!974448 ((_ is Union!2715) (regTwo!5942 (regTwo!5943 r!15766)))) b!975383))

(declare-fun b!975385 () Bool)

(declare-fun e!628242 () Bool)

(declare-fun tp!298357 () Bool)

(declare-fun tp!298358 () Bool)

(assert (=> b!975385 (= e!628242 (and tp!298357 tp!298358))))

(assert (=> b!974449 (= tp!298126 e!628242)))

(declare-fun b!975387 () Bool)

(declare-fun tp!298360 () Bool)

(declare-fun tp!298359 () Bool)

(assert (=> b!975387 (= e!628242 (and tp!298360 tp!298359))))

(declare-fun b!975384 () Bool)

(assert (=> b!975384 (= e!628242 tp_is_empty!5073)))

(declare-fun b!975386 () Bool)

(declare-fun tp!298361 () Bool)

(assert (=> b!975386 (= e!628242 tp!298361)))

(assert (= (and b!974449 ((_ is ElementMatch!2715) (reg!3044 (regTwo!5943 r!15766)))) b!975384))

(assert (= (and b!974449 ((_ is Concat!4548) (reg!3044 (regTwo!5943 r!15766)))) b!975385))

(assert (= (and b!974449 ((_ is Star!2715) (reg!3044 (regTwo!5943 r!15766)))) b!975386))

(assert (= (and b!974449 ((_ is Union!2715) (reg!3044 (regTwo!5943 r!15766)))) b!975387))

(declare-fun b!975389 () Bool)

(declare-fun e!628243 () Bool)

(declare-fun tp!298362 () Bool)

(declare-fun tp!298363 () Bool)

(assert (=> b!975389 (= e!628243 (and tp!298362 tp!298363))))

(assert (=> b!974444 (= tp!298117 e!628243)))

(declare-fun b!975391 () Bool)

(declare-fun tp!298365 () Bool)

(declare-fun tp!298364 () Bool)

(assert (=> b!975391 (= e!628243 (and tp!298365 tp!298364))))

(declare-fun b!975388 () Bool)

(assert (=> b!975388 (= e!628243 tp_is_empty!5073)))

(declare-fun b!975390 () Bool)

(declare-fun tp!298366 () Bool)

(assert (=> b!975390 (= e!628243 tp!298366)))

(assert (= (and b!974444 ((_ is ElementMatch!2715) (regOne!5942 (regOne!5943 r!15766)))) b!975388))

(assert (= (and b!974444 ((_ is Concat!4548) (regOne!5942 (regOne!5943 r!15766)))) b!975389))

(assert (= (and b!974444 ((_ is Star!2715) (regOne!5942 (regOne!5943 r!15766)))) b!975390))

(assert (= (and b!974444 ((_ is Union!2715) (regOne!5942 (regOne!5943 r!15766)))) b!975391))

(declare-fun b!975393 () Bool)

(declare-fun e!628244 () Bool)

(declare-fun tp!298367 () Bool)

(declare-fun tp!298368 () Bool)

(assert (=> b!975393 (= e!628244 (and tp!298367 tp!298368))))

(assert (=> b!974444 (= tp!298118 e!628244)))

(declare-fun b!975395 () Bool)

(declare-fun tp!298370 () Bool)

(declare-fun tp!298369 () Bool)

(assert (=> b!975395 (= e!628244 (and tp!298370 tp!298369))))

(declare-fun b!975392 () Bool)

(assert (=> b!975392 (= e!628244 tp_is_empty!5073)))

(declare-fun b!975394 () Bool)

(declare-fun tp!298371 () Bool)

(assert (=> b!975394 (= e!628244 tp!298371)))

(assert (= (and b!974444 ((_ is ElementMatch!2715) (regTwo!5942 (regOne!5943 r!15766)))) b!975392))

(assert (= (and b!974444 ((_ is Concat!4548) (regTwo!5942 (regOne!5943 r!15766)))) b!975393))

(assert (= (and b!974444 ((_ is Star!2715) (regTwo!5942 (regOne!5943 r!15766)))) b!975394))

(assert (= (and b!974444 ((_ is Union!2715) (regTwo!5942 (regOne!5943 r!15766)))) b!975395))

(declare-fun b!975397 () Bool)

(declare-fun e!628245 () Bool)

(declare-fun tp!298372 () Bool)

(declare-fun tp!298373 () Bool)

(assert (=> b!975397 (= e!628245 (and tp!298372 tp!298373))))

(assert (=> b!974445 (= tp!298121 e!628245)))

(declare-fun b!975399 () Bool)

(declare-fun tp!298375 () Bool)

(declare-fun tp!298374 () Bool)

(assert (=> b!975399 (= e!628245 (and tp!298375 tp!298374))))

(declare-fun b!975396 () Bool)

(assert (=> b!975396 (= e!628245 tp_is_empty!5073)))

(declare-fun b!975398 () Bool)

(declare-fun tp!298376 () Bool)

(assert (=> b!975398 (= e!628245 tp!298376)))

(assert (= (and b!974445 ((_ is ElementMatch!2715) (reg!3044 (regOne!5943 r!15766)))) b!975396))

(assert (= (and b!974445 ((_ is Concat!4548) (reg!3044 (regOne!5943 r!15766)))) b!975397))

(assert (= (and b!974445 ((_ is Star!2715) (reg!3044 (regOne!5943 r!15766)))) b!975398))

(assert (= (and b!974445 ((_ is Union!2715) (reg!3044 (regOne!5943 r!15766)))) b!975399))

(declare-fun b!975401 () Bool)

(declare-fun e!628246 () Bool)

(declare-fun tp!298377 () Bool)

(declare-fun tp!298378 () Bool)

(assert (=> b!975401 (= e!628246 (and tp!298377 tp!298378))))

(assert (=> b!974465 (= tp!298140 e!628246)))

(declare-fun b!975403 () Bool)

(declare-fun tp!298380 () Bool)

(declare-fun tp!298379 () Bool)

(assert (=> b!975403 (= e!628246 (and tp!298380 tp!298379))))

(declare-fun b!975400 () Bool)

(assert (=> b!975400 (= e!628246 tp_is_empty!5073)))

(declare-fun b!975402 () Bool)

(declare-fun tp!298381 () Bool)

(assert (=> b!975402 (= e!628246 tp!298381)))

(assert (= (and b!974465 ((_ is ElementMatch!2715) (regOne!5942 (reg!3044 r!15766)))) b!975400))

(assert (= (and b!974465 ((_ is Concat!4548) (regOne!5942 (reg!3044 r!15766)))) b!975401))

(assert (= (and b!974465 ((_ is Star!2715) (regOne!5942 (reg!3044 r!15766)))) b!975402))

(assert (= (and b!974465 ((_ is Union!2715) (regOne!5942 (reg!3044 r!15766)))) b!975403))

(declare-fun b!975405 () Bool)

(declare-fun e!628247 () Bool)

(declare-fun tp!298382 () Bool)

(declare-fun tp!298383 () Bool)

(assert (=> b!975405 (= e!628247 (and tp!298382 tp!298383))))

(assert (=> b!974465 (= tp!298141 e!628247)))

(declare-fun b!975407 () Bool)

(declare-fun tp!298385 () Bool)

(declare-fun tp!298384 () Bool)

(assert (=> b!975407 (= e!628247 (and tp!298385 tp!298384))))

(declare-fun b!975404 () Bool)

(assert (=> b!975404 (= e!628247 tp_is_empty!5073)))

(declare-fun b!975406 () Bool)

(declare-fun tp!298386 () Bool)

(assert (=> b!975406 (= e!628247 tp!298386)))

(assert (= (and b!974465 ((_ is ElementMatch!2715) (regTwo!5942 (reg!3044 r!15766)))) b!975404))

(assert (= (and b!974465 ((_ is Concat!4548) (regTwo!5942 (reg!3044 r!15766)))) b!975405))

(assert (= (and b!974465 ((_ is Star!2715) (regTwo!5942 (reg!3044 r!15766)))) b!975406))

(assert (= (and b!974465 ((_ is Union!2715) (regTwo!5942 (reg!3044 r!15766)))) b!975407))

(declare-fun b!975409 () Bool)

(declare-fun e!628248 () Bool)

(declare-fun tp!298387 () Bool)

(declare-fun tp!298388 () Bool)

(assert (=> b!975409 (= e!628248 (and tp!298387 tp!298388))))

(assert (=> b!974450 (= tp!298125 e!628248)))

(declare-fun b!975411 () Bool)

(declare-fun tp!298390 () Bool)

(declare-fun tp!298389 () Bool)

(assert (=> b!975411 (= e!628248 (and tp!298390 tp!298389))))

(declare-fun b!975408 () Bool)

(assert (=> b!975408 (= e!628248 tp_is_empty!5073)))

(declare-fun b!975410 () Bool)

(declare-fun tp!298391 () Bool)

(assert (=> b!975410 (= e!628248 tp!298391)))

(assert (= (and b!974450 ((_ is ElementMatch!2715) (regOne!5943 (regTwo!5943 r!15766)))) b!975408))

(assert (= (and b!974450 ((_ is Concat!4548) (regOne!5943 (regTwo!5943 r!15766)))) b!975409))

(assert (= (and b!974450 ((_ is Star!2715) (regOne!5943 (regTwo!5943 r!15766)))) b!975410))

(assert (= (and b!974450 ((_ is Union!2715) (regOne!5943 (regTwo!5943 r!15766)))) b!975411))

(declare-fun b!975413 () Bool)

(declare-fun e!628249 () Bool)

(declare-fun tp!298392 () Bool)

(declare-fun tp!298393 () Bool)

(assert (=> b!975413 (= e!628249 (and tp!298392 tp!298393))))

(assert (=> b!974450 (= tp!298124 e!628249)))

(declare-fun b!975415 () Bool)

(declare-fun tp!298395 () Bool)

(declare-fun tp!298394 () Bool)

(assert (=> b!975415 (= e!628249 (and tp!298395 tp!298394))))

(declare-fun b!975412 () Bool)

(assert (=> b!975412 (= e!628249 tp_is_empty!5073)))

(declare-fun b!975414 () Bool)

(declare-fun tp!298396 () Bool)

(assert (=> b!975414 (= e!628249 tp!298396)))

(assert (= (and b!974450 ((_ is ElementMatch!2715) (regTwo!5943 (regTwo!5943 r!15766)))) b!975412))

(assert (= (and b!974450 ((_ is Concat!4548) (regTwo!5943 (regTwo!5943 r!15766)))) b!975413))

(assert (= (and b!974450 ((_ is Star!2715) (regTwo!5943 (regTwo!5943 r!15766)))) b!975414))

(assert (= (and b!974450 ((_ is Union!2715) (regTwo!5943 (regTwo!5943 r!15766)))) b!975415))

(check-sat (not b!975325) (not b!975398) (not b!975394) (not b!975357) (not b!974956) (not b!975177) (not b!974948) (not d!287361) (not b!974796) (not bm!62217) (not bm!62240) (not d!287393) (not b!974690) (not b!975039) (not bm!62269) (not bm!62226) (not bm!62273) (not bm!62252) (not bm!62249) (not b!975370) (not bm!62219) (not b!975381) (not b!974833) (not b!975350) (not b!975415) (not bm!62235) (not bm!62140) (not d!287403) (not b!975371) (not d!287357) (not b!974700) (not b!974803) (not b!974819) (not b!974769) (not b!975363) (not d!287369) (not b!975366) (not b!975109) (not b!975269) (not d!287381) (not b!975035) (not b!975321) (not bm!62183) (not b!975226) (not bm!62185) (not b!974691) (not b!974952) (not b!975104) (not d!287319) (not b!975323) (not b!975213) (not bm!62234) (not bm!62182) (not b!975402) (not b!974794) (not b!975298) (not b!975409) (not d!287291) (not d!287235) (not b!975359) (not d!287339) (not b!975329) (not b!975230) (not b!975383) (not bm!62259) (not bm!62274) (not b!975169) (not b!975397) (not b!974820) (not bm!62248) (not b!975232) (not d!287343) (not bm!62230) (not bm!62239) (not b!975202) (not bm!62149) (not b!975377) (not bm!62223) (not b!975387) (not bm!62169) (not b!975395) (not b!975347) (not b!975260) (not bm!62228) (not bm!62251) (not b!975259) (not b!975413) (not b!974823) (not d!287261) (not b!975034) (not d!287265) (not d!287371) (not b!975036) (not b!975253) (not d!287329) (not b!975267) (not b!974883) (not d!287405) (not b!975331) (not b!975216) (not bm!62253) (not b!975407) (not b!975362) (not b!975345) (not d!287283) (not b!975379) (not b!975302) (not bm!62254) (not b!975318) (not b!975353) (not b!975330) (not b!975342) (not b!975374) (not b!975401) (not b!975343) (not b!975410) (not b!975334) (not d!287401) (not bm!62231) (not b!974949) (not b!975168) (not b!975346) (not b!975152) (not d!287335) (not bm!62216) (not bm!62262) (not b!974689) (not bm!62218) (not b!975375) (not bm!62225) (not b!975080) (not bm!62255) (not bm!62261) (not b!975385) (not b!974897) (not d!287397) (not d!287363) (not b!975351) (not b!975045) (not bm!62229) (not b!975320) (not d!287327) (not d!287365) (not d!287263) (not d!287399) (not d!287269) (not d!287385) (not b!975141) (not d!287367) (not b!975382) (not bm!62222) (not b!974616) (not bm!62265) (not bm!62242) (not bm!62246) (not bm!62172) (not b!975354) (not b!974808) (not b!974827) (not b!975390) (not d!287305) (not b!975326) (not bm!62268) (not b!974818) (not b!975179) (not b!974970) (not d!287267) (not b!975399) (not b!975043) (not b!975127) (not b!975182) (not b!975389) (not b!975333) (not b!975272) (not b!975118) (not d!287407) (not bm!62220) (not b!974955) (not b!975358) (not b!975304) (not bm!62271) (not b!975173) (not d!287301) (not bm!62186) (not b!975163) (not b!974799) (not b!975316) (not b!975373) (not b!975105) (not bm!62258) (not b!974882) (not b!975223) (not b!975365) (not b!975386) (not b!974829) (not b!975339) (not b!975295) (not b!975411) (not b!974619) (not b!975349) (not b!975263) (not bm!62179) (not b!974698) (not b!975341) (not b!975138) (not bm!62141) (not b!975288) (not b!975294) (not b!975361) (not b!975367) (not b!975369) (not d!287373) (not b!975222) (not b!975317) (not b!975308) (not d!287395) (not b!975391) (not d!287259) (not b!975221) (not d!287359) (not b!975322) (not b!975170) (not bm!62178) (not b!975414) (not b!975327) (not d!287409) (not b!975378) (not b!975293) (not b!975338) tp_is_empty!5073 (not b!975405) (not b!974805) (not b!975355) (not bm!62243) (not d!287387) (not b!974898) (not d!287229) (not b!975406) (not b!975193) (not d!287383) (not b!975083) (not b!975393) (not b!975335) (not d!287289) (not b!975337) (not b!975403) (not b!974795) (not b!974950) (not b!974694) (not b!975258))
(check-sat)

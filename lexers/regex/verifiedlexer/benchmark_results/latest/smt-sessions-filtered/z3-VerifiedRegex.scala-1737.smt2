; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86922 () Bool)

(assert start!86922)

(declare-fun b!979587 () Bool)

(assert (=> b!979587 true))

(assert (=> b!979587 true))

(declare-fun lambda!34884 () Int)

(declare-fun lambda!34883 () Int)

(assert (=> b!979587 (not (= lambda!34884 lambda!34883))))

(assert (=> b!979587 true))

(assert (=> b!979587 true))

(declare-fun b!979579 () Bool)

(declare-fun e!630414 () Bool)

(declare-fun e!630415 () Bool)

(assert (=> b!979579 (= e!630414 (not e!630415))))

(declare-fun res!444709 () Bool)

(assert (=> b!979579 (=> res!444709 e!630415)))

(declare-fun lt!349925 () Bool)

(declare-datatypes ((C!6036 0))(
  ( (C!6037 (val!3266 Int)) )
))
(declare-datatypes ((Regex!2733 0))(
  ( (ElementMatch!2733 (c!160088 C!6036)) (Concat!4566 (regOne!5978 Regex!2733) (regTwo!5978 Regex!2733)) (EmptyExpr!2733) (Star!2733 (reg!3062 Regex!2733)) (EmptyLang!2733) (Union!2733 (regOne!5979 Regex!2733) (regTwo!5979 Regex!2733)) )
))
(declare-fun r!15766 () Regex!2733)

(get-info :version)

(assert (=> b!979579 (= res!444709 (or (not lt!349925) (and ((_ is Concat!4566) r!15766) ((_ is EmptyExpr!2733) (regOne!5978 r!15766))) (not ((_ is Concat!4566) r!15766)) (not ((_ is EmptyExpr!2733) (regTwo!5978 r!15766)))))))

(declare-datatypes ((List!9963 0))(
  ( (Nil!9947) (Cons!9947 (h!15348 C!6036) (t!101009 List!9963)) )
))
(declare-fun s!10566 () List!9963)

(declare-fun matchRSpec!532 (Regex!2733 List!9963) Bool)

(assert (=> b!979579 (= lt!349925 (matchRSpec!532 r!15766 s!10566))))

(declare-fun matchR!1269 (Regex!2733 List!9963) Bool)

(assert (=> b!979579 (= lt!349925 (matchR!1269 r!15766 s!10566))))

(declare-datatypes ((Unit!15125 0))(
  ( (Unit!15126) )
))
(declare-fun lt!349922 () Unit!15125)

(declare-fun mainMatchTheorem!532 (Regex!2733 List!9963) Unit!15125)

(assert (=> b!979579 (= lt!349922 (mainMatchTheorem!532 r!15766 s!10566))))

(declare-fun b!979580 () Bool)

(declare-fun e!630416 () Bool)

(declare-fun tp_is_empty!5109 () Bool)

(assert (=> b!979580 (= e!630416 tp_is_empty!5109)))

(declare-fun b!979581 () Bool)

(declare-fun e!630419 () Bool)

(declare-fun e!630417 () Bool)

(assert (=> b!979581 (= e!630419 e!630417)))

(declare-fun res!444714 () Bool)

(assert (=> b!979581 (=> res!444714 e!630417)))

(declare-fun validRegex!1202 (Regex!2733) Bool)

(assert (=> b!979581 (= res!444714 (not (validRegex!1202 (regOne!5978 r!15766))))))

(declare-datatypes ((tuple2!11320 0))(
  ( (tuple2!11321 (_1!6486 List!9963) (_2!6486 List!9963)) )
))
(declare-fun lt!349924 () tuple2!11320)

(assert (=> b!979581 (matchRSpec!532 (regOne!5978 r!15766) (_1!6486 lt!349924))))

(declare-fun lt!349921 () Unit!15125)

(assert (=> b!979581 (= lt!349921 (mainMatchTheorem!532 (regOne!5978 r!15766) (_1!6486 lt!349924)))))

(declare-fun b!979582 () Bool)

(declare-fun removeUselessConcat!350 (Regex!2733) Regex!2733)

(assert (=> b!979582 (= e!630417 (matchR!1269 (removeUselessConcat!350 r!15766) s!10566))))

(assert (=> b!979582 (matchR!1269 (removeUselessConcat!350 (regOne!5978 r!15766)) (_1!6486 lt!349924))))

(declare-fun lt!349927 () Unit!15125)

(declare-fun lemmaRemoveUselessConcatSound!198 (Regex!2733 List!9963) Unit!15125)

(assert (=> b!979582 (= lt!349927 (lemmaRemoveUselessConcatSound!198 (regOne!5978 r!15766) (_1!6486 lt!349924)))))

(declare-fun b!979583 () Bool)

(declare-fun res!444710 () Bool)

(assert (=> b!979583 (=> res!444710 e!630419)))

(assert (=> b!979583 (= res!444710 (not (matchR!1269 (regOne!5978 r!15766) (_1!6486 lt!349924))))))

(declare-fun res!444712 () Bool)

(assert (=> start!86922 (=> (not res!444712) (not e!630414))))

(assert (=> start!86922 (= res!444712 (validRegex!1202 r!15766))))

(assert (=> start!86922 e!630414))

(assert (=> start!86922 e!630416))

(declare-fun e!630418 () Bool)

(assert (=> start!86922 e!630418))

(declare-fun b!979584 () Bool)

(declare-fun tp!299423 () Bool)

(declare-fun tp!299426 () Bool)

(assert (=> b!979584 (= e!630416 (and tp!299423 tp!299426))))

(declare-fun b!979585 () Bool)

(declare-fun res!444713 () Bool)

(assert (=> b!979585 (=> res!444713 e!630415)))

(declare-fun isEmpty!6269 (List!9963) Bool)

(assert (=> b!979585 (= res!444713 (isEmpty!6269 s!10566))))

(declare-fun b!979586 () Bool)

(declare-fun tp!299425 () Bool)

(assert (=> b!979586 (= e!630416 tp!299425)))

(assert (=> b!979587 (= e!630415 e!630419)))

(declare-fun res!444711 () Bool)

(assert (=> b!979587 (=> res!444711 e!630419)))

(assert (=> b!979587 (= res!444711 (not (isEmpty!6269 (_2!6486 lt!349924))))))

(declare-datatypes ((Option!2302 0))(
  ( (None!2301) (Some!2301 (v!19718 tuple2!11320)) )
))
(declare-fun lt!349926 () Option!2302)

(declare-fun get!3447 (Option!2302) tuple2!11320)

(assert (=> b!979587 (= lt!349924 (get!3447 lt!349926))))

(declare-fun Exists!470 (Int) Bool)

(assert (=> b!979587 (= (Exists!470 lambda!34883) (Exists!470 lambda!34884))))

(declare-fun lt!349920 () Unit!15125)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!228 (Regex!2733 Regex!2733 List!9963) Unit!15125)

(assert (=> b!979587 (= lt!349920 (lemmaExistCutMatchRandMatchRSpecEquivalent!228 (regOne!5978 r!15766) EmptyExpr!2733 s!10566))))

(declare-fun isDefined!1944 (Option!2302) Bool)

(assert (=> b!979587 (= (isDefined!1944 lt!349926) (Exists!470 lambda!34883))))

(declare-fun findConcatSeparation!408 (Regex!2733 Regex!2733 List!9963 List!9963 List!9963) Option!2302)

(assert (=> b!979587 (= lt!349926 (findConcatSeparation!408 (regOne!5978 r!15766) EmptyExpr!2733 Nil!9947 s!10566 s!10566))))

(declare-fun lt!349923 () Unit!15125)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!408 (Regex!2733 Regex!2733 List!9963) Unit!15125)

(assert (=> b!979587 (= lt!349923 (lemmaFindConcatSeparationEquivalentToExists!408 (regOne!5978 r!15766) EmptyExpr!2733 s!10566))))

(declare-fun b!979588 () Bool)

(declare-fun tp!299424 () Bool)

(declare-fun tp!299427 () Bool)

(assert (=> b!979588 (= e!630416 (and tp!299424 tp!299427))))

(declare-fun b!979589 () Bool)

(declare-fun tp!299428 () Bool)

(assert (=> b!979589 (= e!630418 (and tp_is_empty!5109 tp!299428))))

(assert (= (and start!86922 res!444712) b!979579))

(assert (= (and b!979579 (not res!444709)) b!979585))

(assert (= (and b!979585 (not res!444713)) b!979587))

(assert (= (and b!979587 (not res!444711)) b!979583))

(assert (= (and b!979583 (not res!444710)) b!979581))

(assert (= (and b!979581 (not res!444714)) b!979582))

(assert (= (and start!86922 ((_ is ElementMatch!2733) r!15766)) b!979580))

(assert (= (and start!86922 ((_ is Concat!4566) r!15766)) b!979584))

(assert (= (and start!86922 ((_ is Star!2733) r!15766)) b!979586))

(assert (= (and start!86922 ((_ is Union!2733) r!15766)) b!979588))

(assert (= (and start!86922 ((_ is Cons!9947) s!10566)) b!979589))

(declare-fun m!1179365 () Bool)

(assert (=> b!979581 m!1179365))

(declare-fun m!1179367 () Bool)

(assert (=> b!979581 m!1179367))

(declare-fun m!1179369 () Bool)

(assert (=> b!979581 m!1179369))

(declare-fun m!1179371 () Bool)

(assert (=> b!979587 m!1179371))

(declare-fun m!1179373 () Bool)

(assert (=> b!979587 m!1179373))

(declare-fun m!1179375 () Bool)

(assert (=> b!979587 m!1179375))

(assert (=> b!979587 m!1179373))

(declare-fun m!1179377 () Bool)

(assert (=> b!979587 m!1179377))

(declare-fun m!1179379 () Bool)

(assert (=> b!979587 m!1179379))

(declare-fun m!1179381 () Bool)

(assert (=> b!979587 m!1179381))

(declare-fun m!1179383 () Bool)

(assert (=> b!979587 m!1179383))

(declare-fun m!1179385 () Bool)

(assert (=> b!979587 m!1179385))

(declare-fun m!1179387 () Bool)

(assert (=> b!979585 m!1179387))

(declare-fun m!1179389 () Bool)

(assert (=> b!979582 m!1179389))

(declare-fun m!1179391 () Bool)

(assert (=> b!979582 m!1179391))

(assert (=> b!979582 m!1179391))

(declare-fun m!1179393 () Bool)

(assert (=> b!979582 m!1179393))

(declare-fun m!1179395 () Bool)

(assert (=> b!979582 m!1179395))

(assert (=> b!979582 m!1179389))

(declare-fun m!1179397 () Bool)

(assert (=> b!979582 m!1179397))

(declare-fun m!1179399 () Bool)

(assert (=> b!979583 m!1179399))

(declare-fun m!1179401 () Bool)

(assert (=> start!86922 m!1179401))

(declare-fun m!1179403 () Bool)

(assert (=> b!979579 m!1179403))

(declare-fun m!1179405 () Bool)

(assert (=> b!979579 m!1179405))

(declare-fun m!1179407 () Bool)

(assert (=> b!979579 m!1179407))

(check-sat (not b!979588) (not start!86922) tp_is_empty!5109 (not b!979585) (not b!979584) (not b!979581) (not b!979582) (not b!979579) (not b!979587) (not b!979586) (not b!979583) (not b!979589))
(check-sat)
(get-model)

(declare-fun bs!243611 () Bool)

(declare-fun b!979815 () Bool)

(assert (= bs!243611 (and b!979815 b!979587)))

(declare-fun lambda!34895 () Int)

(assert (=> bs!243611 (not (= lambda!34895 lambda!34883))))

(assert (=> bs!243611 (not (= lambda!34895 lambda!34884))))

(assert (=> b!979815 true))

(assert (=> b!979815 true))

(declare-fun bs!243612 () Bool)

(declare-fun b!979820 () Bool)

(assert (= bs!243612 (and b!979820 b!979587)))

(declare-fun lambda!34896 () Int)

(assert (=> bs!243612 (not (= lambda!34896 lambda!34883))))

(assert (=> bs!243612 (= (= (regTwo!5978 r!15766) EmptyExpr!2733) (= lambda!34896 lambda!34884))))

(declare-fun bs!243613 () Bool)

(assert (= bs!243613 (and b!979820 b!979815)))

(assert (=> bs!243613 (not (= lambda!34896 lambda!34895))))

(assert (=> b!979820 true))

(assert (=> b!979820 true))

(declare-fun b!979810 () Bool)

(declare-fun e!630548 () Bool)

(declare-fun e!630544 () Bool)

(assert (=> b!979810 (= e!630548 e!630544)))

(declare-fun c!160152 () Bool)

(assert (=> b!979810 (= c!160152 ((_ is Star!2733) r!15766))))

(declare-fun b!979811 () Bool)

(declare-fun e!630545 () Bool)

(assert (=> b!979811 (= e!630548 e!630545)))

(declare-fun res!444811 () Bool)

(assert (=> b!979811 (= res!444811 (matchRSpec!532 (regOne!5979 r!15766) s!10566))))

(assert (=> b!979811 (=> res!444811 e!630545)))

(declare-fun b!979812 () Bool)

(declare-fun e!630546 () Bool)

(declare-fun call!62868 () Bool)

(assert (=> b!979812 (= e!630546 call!62868)))

(declare-fun b!979813 () Bool)

(declare-fun c!160153 () Bool)

(assert (=> b!979813 (= c!160153 ((_ is ElementMatch!2733) r!15766))))

(declare-fun e!630549 () Bool)

(declare-fun e!630547 () Bool)

(assert (=> b!979813 (= e!630549 e!630547)))

(declare-fun d!287970 () Bool)

(declare-fun c!160151 () Bool)

(assert (=> d!287970 (= c!160151 ((_ is EmptyExpr!2733) r!15766))))

(assert (=> d!287970 (= (matchRSpec!532 r!15766 s!10566) e!630546)))

(declare-fun b!979814 () Bool)

(assert (=> b!979814 (= e!630545 (matchRSpec!532 (regTwo!5979 r!15766) s!10566))))

(declare-fun bm!62863 () Bool)

(assert (=> bm!62863 (= call!62868 (isEmpty!6269 s!10566))))

(declare-fun e!630543 () Bool)

(declare-fun call!62869 () Bool)

(assert (=> b!979815 (= e!630543 call!62869)))

(declare-fun b!979816 () Bool)

(assert (=> b!979816 (= e!630546 e!630549)))

(declare-fun res!444810 () Bool)

(assert (=> b!979816 (= res!444810 (not ((_ is EmptyLang!2733) r!15766)))))

(assert (=> b!979816 (=> (not res!444810) (not e!630549))))

(declare-fun b!979817 () Bool)

(declare-fun c!160150 () Bool)

(assert (=> b!979817 (= c!160150 ((_ is Union!2733) r!15766))))

(assert (=> b!979817 (= e!630547 e!630548)))

(declare-fun b!979818 () Bool)

(assert (=> b!979818 (= e!630547 (= s!10566 (Cons!9947 (c!160088 r!15766) Nil!9947)))))

(declare-fun b!979819 () Bool)

(declare-fun res!444809 () Bool)

(assert (=> b!979819 (=> res!444809 e!630543)))

(assert (=> b!979819 (= res!444809 call!62868)))

(assert (=> b!979819 (= e!630544 e!630543)))

(assert (=> b!979820 (= e!630544 call!62869)))

(declare-fun bm!62864 () Bool)

(assert (=> bm!62864 (= call!62869 (Exists!470 (ite c!160152 lambda!34895 lambda!34896)))))

(assert (= (and d!287970 c!160151) b!979812))

(assert (= (and d!287970 (not c!160151)) b!979816))

(assert (= (and b!979816 res!444810) b!979813))

(assert (= (and b!979813 c!160153) b!979818))

(assert (= (and b!979813 (not c!160153)) b!979817))

(assert (= (and b!979817 c!160150) b!979811))

(assert (= (and b!979817 (not c!160150)) b!979810))

(assert (= (and b!979811 (not res!444811)) b!979814))

(assert (= (and b!979810 c!160152) b!979819))

(assert (= (and b!979810 (not c!160152)) b!979820))

(assert (= (and b!979819 (not res!444809)) b!979815))

(assert (= (or b!979815 b!979820) bm!62864))

(assert (= (or b!979812 b!979819) bm!62863))

(declare-fun m!1179479 () Bool)

(assert (=> b!979811 m!1179479))

(declare-fun m!1179481 () Bool)

(assert (=> b!979814 m!1179481))

(assert (=> bm!62863 m!1179387))

(declare-fun m!1179483 () Bool)

(assert (=> bm!62864 m!1179483))

(assert (=> b!979579 d!287970))

(declare-fun b!979888 () Bool)

(declare-fun e!630586 () Bool)

(declare-fun lt!349960 () Bool)

(assert (=> b!979888 (= e!630586 (not lt!349960))))

(declare-fun b!979889 () Bool)

(declare-fun e!630590 () Bool)

(declare-fun e!630587 () Bool)

(assert (=> b!979889 (= e!630590 e!630587)))

(declare-fun res!444859 () Bool)

(assert (=> b!979889 (=> (not res!444859) (not e!630587))))

(assert (=> b!979889 (= res!444859 (not lt!349960))))

(declare-fun b!979890 () Bool)

(declare-fun res!444860 () Bool)

(declare-fun e!630589 () Bool)

(assert (=> b!979890 (=> (not res!444860) (not e!630589))))

(declare-fun tail!1370 (List!9963) List!9963)

(assert (=> b!979890 (= res!444860 (isEmpty!6269 (tail!1370 s!10566)))))

(declare-fun b!979891 () Bool)

(declare-fun head!1808 (List!9963) C!6036)

(assert (=> b!979891 (= e!630589 (= (head!1808 s!10566) (c!160088 r!15766)))))

(declare-fun b!979892 () Bool)

(declare-fun e!630585 () Bool)

(declare-fun derivativeStep!655 (Regex!2733 C!6036) Regex!2733)

(assert (=> b!979892 (= e!630585 (matchR!1269 (derivativeStep!655 r!15766 (head!1808 s!10566)) (tail!1370 s!10566)))))

(declare-fun b!979893 () Bool)

(declare-fun e!630588 () Bool)

(assert (=> b!979893 (= e!630588 (not (= (head!1808 s!10566) (c!160088 r!15766))))))

(declare-fun b!979894 () Bool)

(declare-fun e!630591 () Bool)

(assert (=> b!979894 (= e!630591 e!630586)))

(declare-fun c!160167 () Bool)

(assert (=> b!979894 (= c!160167 ((_ is EmptyLang!2733) r!15766))))

(declare-fun b!979895 () Bool)

(declare-fun res!444861 () Bool)

(assert (=> b!979895 (=> res!444861 e!630590)))

(assert (=> b!979895 (= res!444861 (not ((_ is ElementMatch!2733) r!15766)))))

(assert (=> b!979895 (= e!630586 e!630590)))

(declare-fun b!979896 () Bool)

(declare-fun res!444856 () Bool)

(assert (=> b!979896 (=> res!444856 e!630590)))

(assert (=> b!979896 (= res!444856 e!630589)))

(declare-fun res!444858 () Bool)

(assert (=> b!979896 (=> (not res!444858) (not e!630589))))

(assert (=> b!979896 (= res!444858 lt!349960)))

(declare-fun b!979898 () Bool)

(declare-fun res!444855 () Bool)

(assert (=> b!979898 (=> res!444855 e!630588)))

(assert (=> b!979898 (= res!444855 (not (isEmpty!6269 (tail!1370 s!10566))))))

(declare-fun b!979899 () Bool)

(declare-fun res!444862 () Bool)

(assert (=> b!979899 (=> (not res!444862) (not e!630589))))

(declare-fun call!62872 () Bool)

(assert (=> b!979899 (= res!444862 (not call!62872))))

(declare-fun bm!62867 () Bool)

(assert (=> bm!62867 (= call!62872 (isEmpty!6269 s!10566))))

(declare-fun b!979900 () Bool)

(assert (=> b!979900 (= e!630591 (= lt!349960 call!62872))))

(declare-fun b!979901 () Bool)

(assert (=> b!979901 (= e!630587 e!630588)))

(declare-fun res!444857 () Bool)

(assert (=> b!979901 (=> res!444857 e!630588)))

(assert (=> b!979901 (= res!444857 call!62872)))

(declare-fun b!979897 () Bool)

(declare-fun nullable!849 (Regex!2733) Bool)

(assert (=> b!979897 (= e!630585 (nullable!849 r!15766))))

(declare-fun d!287986 () Bool)

(assert (=> d!287986 e!630591))

(declare-fun c!160168 () Bool)

(assert (=> d!287986 (= c!160168 ((_ is EmptyExpr!2733) r!15766))))

(assert (=> d!287986 (= lt!349960 e!630585)))

(declare-fun c!160166 () Bool)

(assert (=> d!287986 (= c!160166 (isEmpty!6269 s!10566))))

(assert (=> d!287986 (validRegex!1202 r!15766)))

(assert (=> d!287986 (= (matchR!1269 r!15766 s!10566) lt!349960)))

(assert (= (and d!287986 c!160166) b!979897))

(assert (= (and d!287986 (not c!160166)) b!979892))

(assert (= (and d!287986 c!160168) b!979900))

(assert (= (and d!287986 (not c!160168)) b!979894))

(assert (= (and b!979894 c!160167) b!979888))

(assert (= (and b!979894 (not c!160167)) b!979895))

(assert (= (and b!979895 (not res!444861)) b!979896))

(assert (= (and b!979896 res!444858) b!979899))

(assert (= (and b!979899 res!444862) b!979890))

(assert (= (and b!979890 res!444860) b!979891))

(assert (= (and b!979896 (not res!444856)) b!979889))

(assert (= (and b!979889 res!444859) b!979901))

(assert (= (and b!979901 (not res!444857)) b!979898))

(assert (= (and b!979898 (not res!444855)) b!979893))

(assert (= (or b!979900 b!979899 b!979901) bm!62867))

(assert (=> bm!62867 m!1179387))

(declare-fun m!1179531 () Bool)

(assert (=> b!979897 m!1179531))

(declare-fun m!1179533 () Bool)

(assert (=> b!979892 m!1179533))

(assert (=> b!979892 m!1179533))

(declare-fun m!1179535 () Bool)

(assert (=> b!979892 m!1179535))

(declare-fun m!1179537 () Bool)

(assert (=> b!979892 m!1179537))

(assert (=> b!979892 m!1179535))

(assert (=> b!979892 m!1179537))

(declare-fun m!1179539 () Bool)

(assert (=> b!979892 m!1179539))

(assert (=> d!287986 m!1179387))

(assert (=> d!287986 m!1179401))

(assert (=> b!979893 m!1179533))

(assert (=> b!979891 m!1179533))

(assert (=> b!979890 m!1179537))

(assert (=> b!979890 m!1179537))

(declare-fun m!1179541 () Bool)

(assert (=> b!979890 m!1179541))

(assert (=> b!979898 m!1179537))

(assert (=> b!979898 m!1179537))

(assert (=> b!979898 m!1179541))

(assert (=> b!979579 d!287986))

(declare-fun d!288006 () Bool)

(assert (=> d!288006 (= (matchR!1269 r!15766 s!10566) (matchRSpec!532 r!15766 s!10566))))

(declare-fun lt!349965 () Unit!15125)

(declare-fun choose!6213 (Regex!2733 List!9963) Unit!15125)

(assert (=> d!288006 (= lt!349965 (choose!6213 r!15766 s!10566))))

(assert (=> d!288006 (validRegex!1202 r!15766)))

(assert (=> d!288006 (= (mainMatchTheorem!532 r!15766 s!10566) lt!349965)))

(declare-fun bs!243638 () Bool)

(assert (= bs!243638 d!288006))

(assert (=> bs!243638 m!1179405))

(assert (=> bs!243638 m!1179403))

(declare-fun m!1179555 () Bool)

(assert (=> bs!243638 m!1179555))

(assert (=> bs!243638 m!1179401))

(assert (=> b!979579 d!288006))

(declare-fun d!288012 () Bool)

(assert (=> d!288012 (= (isEmpty!6269 s!10566) ((_ is Nil!9947) s!10566))))

(assert (=> b!979585 d!288012))

(declare-fun b!979971 () Bool)

(declare-fun e!630624 () Bool)

(declare-fun lt!349966 () Bool)

(assert (=> b!979971 (= e!630624 (not lt!349966))))

(declare-fun b!979972 () Bool)

(declare-fun e!630628 () Bool)

(declare-fun e!630625 () Bool)

(assert (=> b!979972 (= e!630628 e!630625)))

(declare-fun res!444883 () Bool)

(assert (=> b!979972 (=> (not res!444883) (not e!630625))))

(assert (=> b!979972 (= res!444883 (not lt!349966))))

(declare-fun b!979973 () Bool)

(declare-fun res!444884 () Bool)

(declare-fun e!630627 () Bool)

(assert (=> b!979973 (=> (not res!444884) (not e!630627))))

(assert (=> b!979973 (= res!444884 (isEmpty!6269 (tail!1370 (_1!6486 lt!349924))))))

(declare-fun b!979974 () Bool)

(assert (=> b!979974 (= e!630627 (= (head!1808 (_1!6486 lt!349924)) (c!160088 (regOne!5978 r!15766))))))

(declare-fun b!979975 () Bool)

(declare-fun e!630623 () Bool)

(assert (=> b!979975 (= e!630623 (matchR!1269 (derivativeStep!655 (regOne!5978 r!15766) (head!1808 (_1!6486 lt!349924))) (tail!1370 (_1!6486 lt!349924))))))

(declare-fun b!979976 () Bool)

(declare-fun e!630626 () Bool)

(assert (=> b!979976 (= e!630626 (not (= (head!1808 (_1!6486 lt!349924)) (c!160088 (regOne!5978 r!15766)))))))

(declare-fun b!979977 () Bool)

(declare-fun e!630629 () Bool)

(assert (=> b!979977 (= e!630629 e!630624)))

(declare-fun c!160179 () Bool)

(assert (=> b!979977 (= c!160179 ((_ is EmptyLang!2733) (regOne!5978 r!15766)))))

(declare-fun b!979978 () Bool)

(declare-fun res!444885 () Bool)

(assert (=> b!979978 (=> res!444885 e!630628)))

(assert (=> b!979978 (= res!444885 (not ((_ is ElementMatch!2733) (regOne!5978 r!15766))))))

(assert (=> b!979978 (= e!630624 e!630628)))

(declare-fun b!979979 () Bool)

(declare-fun res!444880 () Bool)

(assert (=> b!979979 (=> res!444880 e!630628)))

(assert (=> b!979979 (= res!444880 e!630627)))

(declare-fun res!444882 () Bool)

(assert (=> b!979979 (=> (not res!444882) (not e!630627))))

(assert (=> b!979979 (= res!444882 lt!349966)))

(declare-fun b!979981 () Bool)

(declare-fun res!444879 () Bool)

(assert (=> b!979981 (=> res!444879 e!630626)))

(assert (=> b!979981 (= res!444879 (not (isEmpty!6269 (tail!1370 (_1!6486 lt!349924)))))))

(declare-fun b!979982 () Bool)

(declare-fun res!444886 () Bool)

(assert (=> b!979982 (=> (not res!444886) (not e!630627))))

(declare-fun call!62879 () Bool)

(assert (=> b!979982 (= res!444886 (not call!62879))))

(declare-fun bm!62874 () Bool)

(assert (=> bm!62874 (= call!62879 (isEmpty!6269 (_1!6486 lt!349924)))))

(declare-fun b!979983 () Bool)

(assert (=> b!979983 (= e!630629 (= lt!349966 call!62879))))

(declare-fun b!979984 () Bool)

(assert (=> b!979984 (= e!630625 e!630626)))

(declare-fun res!444881 () Bool)

(assert (=> b!979984 (=> res!444881 e!630626)))

(assert (=> b!979984 (= res!444881 call!62879)))

(declare-fun b!979980 () Bool)

(assert (=> b!979980 (= e!630623 (nullable!849 (regOne!5978 r!15766)))))

(declare-fun d!288014 () Bool)

(assert (=> d!288014 e!630629))

(declare-fun c!160180 () Bool)

(assert (=> d!288014 (= c!160180 ((_ is EmptyExpr!2733) (regOne!5978 r!15766)))))

(assert (=> d!288014 (= lt!349966 e!630623)))

(declare-fun c!160178 () Bool)

(assert (=> d!288014 (= c!160178 (isEmpty!6269 (_1!6486 lt!349924)))))

(assert (=> d!288014 (validRegex!1202 (regOne!5978 r!15766))))

(assert (=> d!288014 (= (matchR!1269 (regOne!5978 r!15766) (_1!6486 lt!349924)) lt!349966)))

(assert (= (and d!288014 c!160178) b!979980))

(assert (= (and d!288014 (not c!160178)) b!979975))

(assert (= (and d!288014 c!160180) b!979983))

(assert (= (and d!288014 (not c!160180)) b!979977))

(assert (= (and b!979977 c!160179) b!979971))

(assert (= (and b!979977 (not c!160179)) b!979978))

(assert (= (and b!979978 (not res!444885)) b!979979))

(assert (= (and b!979979 res!444882) b!979982))

(assert (= (and b!979982 res!444886) b!979973))

(assert (= (and b!979973 res!444884) b!979974))

(assert (= (and b!979979 (not res!444880)) b!979972))

(assert (= (and b!979972 res!444883) b!979984))

(assert (= (and b!979984 (not res!444881)) b!979981))

(assert (= (and b!979981 (not res!444879)) b!979976))

(assert (= (or b!979983 b!979982 b!979984) bm!62874))

(declare-fun m!1179557 () Bool)

(assert (=> bm!62874 m!1179557))

(declare-fun m!1179559 () Bool)

(assert (=> b!979980 m!1179559))

(declare-fun m!1179561 () Bool)

(assert (=> b!979975 m!1179561))

(assert (=> b!979975 m!1179561))

(declare-fun m!1179563 () Bool)

(assert (=> b!979975 m!1179563))

(declare-fun m!1179565 () Bool)

(assert (=> b!979975 m!1179565))

(assert (=> b!979975 m!1179563))

(assert (=> b!979975 m!1179565))

(declare-fun m!1179567 () Bool)

(assert (=> b!979975 m!1179567))

(assert (=> d!288014 m!1179557))

(assert (=> d!288014 m!1179365))

(assert (=> b!979976 m!1179561))

(assert (=> b!979974 m!1179561))

(assert (=> b!979973 m!1179565))

(assert (=> b!979973 m!1179565))

(declare-fun m!1179569 () Bool)

(assert (=> b!979973 m!1179569))

(assert (=> b!979981 m!1179565))

(assert (=> b!979981 m!1179565))

(assert (=> b!979981 m!1179569))

(assert (=> b!979583 d!288014))

(declare-fun d!288016 () Bool)

(declare-fun e!630640 () Bool)

(assert (=> d!288016 e!630640))

(declare-fun res!444899 () Bool)

(assert (=> d!288016 (=> res!444899 e!630640)))

(declare-fun e!630644 () Bool)

(assert (=> d!288016 (= res!444899 e!630644)))

(declare-fun res!444897 () Bool)

(assert (=> d!288016 (=> (not res!444897) (not e!630644))))

(declare-fun lt!349974 () Option!2302)

(assert (=> d!288016 (= res!444897 (isDefined!1944 lt!349974))))

(declare-fun e!630641 () Option!2302)

(assert (=> d!288016 (= lt!349974 e!630641)))

(declare-fun c!160186 () Bool)

(declare-fun e!630643 () Bool)

(assert (=> d!288016 (= c!160186 e!630643)))

(declare-fun res!444898 () Bool)

(assert (=> d!288016 (=> (not res!444898) (not e!630643))))

(assert (=> d!288016 (= res!444898 (matchR!1269 (regOne!5978 r!15766) Nil!9947))))

(assert (=> d!288016 (validRegex!1202 (regOne!5978 r!15766))))

(assert (=> d!288016 (= (findConcatSeparation!408 (regOne!5978 r!15766) EmptyExpr!2733 Nil!9947 s!10566 s!10566) lt!349974)))

(declare-fun b!980003 () Bool)

(declare-fun res!444900 () Bool)

(assert (=> b!980003 (=> (not res!444900) (not e!630644))))

(assert (=> b!980003 (= res!444900 (matchR!1269 (regOne!5978 r!15766) (_1!6486 (get!3447 lt!349974))))))

(declare-fun b!980004 () Bool)

(assert (=> b!980004 (= e!630640 (not (isDefined!1944 lt!349974)))))

(declare-fun b!980005 () Bool)

(declare-fun ++!2700 (List!9963 List!9963) List!9963)

(assert (=> b!980005 (= e!630644 (= (++!2700 (_1!6486 (get!3447 lt!349974)) (_2!6486 (get!3447 lt!349974))) s!10566))))

(declare-fun b!980006 () Bool)

(declare-fun res!444901 () Bool)

(assert (=> b!980006 (=> (not res!444901) (not e!630644))))

(assert (=> b!980006 (= res!444901 (matchR!1269 EmptyExpr!2733 (_2!6486 (get!3447 lt!349974))))))

(declare-fun b!980007 () Bool)

(assert (=> b!980007 (= e!630643 (matchR!1269 EmptyExpr!2733 s!10566))))

(declare-fun b!980008 () Bool)

(declare-fun lt!349973 () Unit!15125)

(declare-fun lt!349975 () Unit!15125)

(assert (=> b!980008 (= lt!349973 lt!349975)))

(assert (=> b!980008 (= (++!2700 (++!2700 Nil!9947 (Cons!9947 (h!15348 s!10566) Nil!9947)) (t!101009 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!301 (List!9963 C!6036 List!9963 List!9963) Unit!15125)

(assert (=> b!980008 (= lt!349975 (lemmaMoveElementToOtherListKeepsConcatEq!301 Nil!9947 (h!15348 s!10566) (t!101009 s!10566) s!10566))))

(declare-fun e!630642 () Option!2302)

(assert (=> b!980008 (= e!630642 (findConcatSeparation!408 (regOne!5978 r!15766) EmptyExpr!2733 (++!2700 Nil!9947 (Cons!9947 (h!15348 s!10566) Nil!9947)) (t!101009 s!10566) s!10566))))

(declare-fun b!980009 () Bool)

(assert (=> b!980009 (= e!630642 None!2301)))

(declare-fun b!980010 () Bool)

(assert (=> b!980010 (= e!630641 e!630642)))

(declare-fun c!160185 () Bool)

(assert (=> b!980010 (= c!160185 ((_ is Nil!9947) s!10566))))

(declare-fun b!980011 () Bool)

(assert (=> b!980011 (= e!630641 (Some!2301 (tuple2!11321 Nil!9947 s!10566)))))

(assert (= (and d!288016 res!444898) b!980007))

(assert (= (and d!288016 c!160186) b!980011))

(assert (= (and d!288016 (not c!160186)) b!980010))

(assert (= (and b!980010 c!160185) b!980009))

(assert (= (and b!980010 (not c!160185)) b!980008))

(assert (= (and d!288016 res!444897) b!980003))

(assert (= (and b!980003 res!444900) b!980006))

(assert (= (and b!980006 res!444901) b!980005))

(assert (= (and d!288016 (not res!444899)) b!980004))

(declare-fun m!1179571 () Bool)

(assert (=> b!980004 m!1179571))

(declare-fun m!1179573 () Bool)

(assert (=> b!980008 m!1179573))

(assert (=> b!980008 m!1179573))

(declare-fun m!1179575 () Bool)

(assert (=> b!980008 m!1179575))

(declare-fun m!1179577 () Bool)

(assert (=> b!980008 m!1179577))

(assert (=> b!980008 m!1179573))

(declare-fun m!1179579 () Bool)

(assert (=> b!980008 m!1179579))

(declare-fun m!1179581 () Bool)

(assert (=> b!980003 m!1179581))

(declare-fun m!1179583 () Bool)

(assert (=> b!980003 m!1179583))

(assert (=> d!288016 m!1179571))

(declare-fun m!1179585 () Bool)

(assert (=> d!288016 m!1179585))

(assert (=> d!288016 m!1179365))

(declare-fun m!1179587 () Bool)

(assert (=> b!980007 m!1179587))

(assert (=> b!980006 m!1179581))

(declare-fun m!1179589 () Bool)

(assert (=> b!980006 m!1179589))

(assert (=> b!980005 m!1179581))

(declare-fun m!1179591 () Bool)

(assert (=> b!980005 m!1179591))

(assert (=> b!979587 d!288016))

(declare-fun d!288018 () Bool)

(assert (=> d!288018 (= (get!3447 lt!349926) (v!19718 lt!349926))))

(assert (=> b!979587 d!288018))

(declare-fun bs!243639 () Bool)

(declare-fun d!288020 () Bool)

(assert (= bs!243639 (and d!288020 b!979587)))

(declare-fun lambda!34910 () Int)

(assert (=> bs!243639 (= lambda!34910 lambda!34883)))

(assert (=> bs!243639 (not (= lambda!34910 lambda!34884))))

(declare-fun bs!243640 () Bool)

(assert (= bs!243640 (and d!288020 b!979815)))

(assert (=> bs!243640 (not (= lambda!34910 lambda!34895))))

(declare-fun bs!243641 () Bool)

(assert (= bs!243641 (and d!288020 b!979820)))

(assert (=> bs!243641 (not (= lambda!34910 lambda!34896))))

(assert (=> d!288020 true))

(assert (=> d!288020 true))

(assert (=> d!288020 true))

(assert (=> d!288020 (= (isDefined!1944 (findConcatSeparation!408 (regOne!5978 r!15766) EmptyExpr!2733 Nil!9947 s!10566 s!10566)) (Exists!470 lambda!34910))))

(declare-fun lt!349978 () Unit!15125)

(declare-fun choose!6214 (Regex!2733 Regex!2733 List!9963) Unit!15125)

(assert (=> d!288020 (= lt!349978 (choose!6214 (regOne!5978 r!15766) EmptyExpr!2733 s!10566))))

(assert (=> d!288020 (validRegex!1202 (regOne!5978 r!15766))))

(assert (=> d!288020 (= (lemmaFindConcatSeparationEquivalentToExists!408 (regOne!5978 r!15766) EmptyExpr!2733 s!10566) lt!349978)))

(declare-fun bs!243642 () Bool)

(assert (= bs!243642 d!288020))

(assert (=> bs!243642 m!1179365))

(assert (=> bs!243642 m!1179375))

(assert (=> bs!243642 m!1179375))

(declare-fun m!1179593 () Bool)

(assert (=> bs!243642 m!1179593))

(declare-fun m!1179595 () Bool)

(assert (=> bs!243642 m!1179595))

(declare-fun m!1179597 () Bool)

(assert (=> bs!243642 m!1179597))

(assert (=> b!979587 d!288020))

(declare-fun d!288022 () Bool)

(declare-fun choose!6215 (Int) Bool)

(assert (=> d!288022 (= (Exists!470 lambda!34883) (choose!6215 lambda!34883))))

(declare-fun bs!243643 () Bool)

(assert (= bs!243643 d!288022))

(declare-fun m!1179599 () Bool)

(assert (=> bs!243643 m!1179599))

(assert (=> b!979587 d!288022))

(declare-fun d!288024 () Bool)

(assert (=> d!288024 (= (isEmpty!6269 (_2!6486 lt!349924)) ((_ is Nil!9947) (_2!6486 lt!349924)))))

(assert (=> b!979587 d!288024))

(declare-fun bs!243644 () Bool)

(declare-fun d!288026 () Bool)

(assert (= bs!243644 (and d!288026 b!979587)))

(declare-fun lambda!34915 () Int)

(assert (=> bs!243644 (not (= lambda!34915 lambda!34884))))

(declare-fun bs!243645 () Bool)

(assert (= bs!243645 (and d!288026 d!288020)))

(assert (=> bs!243645 (= lambda!34915 lambda!34910)))

(declare-fun bs!243646 () Bool)

(assert (= bs!243646 (and d!288026 b!979815)))

(assert (=> bs!243646 (not (= lambda!34915 lambda!34895))))

(declare-fun bs!243647 () Bool)

(assert (= bs!243647 (and d!288026 b!979820)))

(assert (=> bs!243647 (not (= lambda!34915 lambda!34896))))

(assert (=> bs!243644 (= lambda!34915 lambda!34883)))

(assert (=> d!288026 true))

(assert (=> d!288026 true))

(assert (=> d!288026 true))

(declare-fun lambda!34916 () Int)

(assert (=> bs!243644 (= lambda!34916 lambda!34884)))

(assert (=> bs!243645 (not (= lambda!34916 lambda!34910))))

(assert (=> bs!243646 (not (= lambda!34916 lambda!34895))))

(declare-fun bs!243648 () Bool)

(assert (= bs!243648 d!288026))

(assert (=> bs!243648 (not (= lambda!34916 lambda!34915))))

(assert (=> bs!243647 (= (= EmptyExpr!2733 (regTwo!5978 r!15766)) (= lambda!34916 lambda!34896))))

(assert (=> bs!243644 (not (= lambda!34916 lambda!34883))))

(assert (=> d!288026 true))

(assert (=> d!288026 true))

(assert (=> d!288026 true))

(assert (=> d!288026 (= (Exists!470 lambda!34915) (Exists!470 lambda!34916))))

(declare-fun lt!349981 () Unit!15125)

(declare-fun choose!6216 (Regex!2733 Regex!2733 List!9963) Unit!15125)

(assert (=> d!288026 (= lt!349981 (choose!6216 (regOne!5978 r!15766) EmptyExpr!2733 s!10566))))

(assert (=> d!288026 (validRegex!1202 (regOne!5978 r!15766))))

(assert (=> d!288026 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!228 (regOne!5978 r!15766) EmptyExpr!2733 s!10566) lt!349981)))

(declare-fun m!1179601 () Bool)

(assert (=> bs!243648 m!1179601))

(declare-fun m!1179603 () Bool)

(assert (=> bs!243648 m!1179603))

(declare-fun m!1179605 () Bool)

(assert (=> bs!243648 m!1179605))

(assert (=> bs!243648 m!1179365))

(assert (=> b!979587 d!288026))

(declare-fun d!288028 () Bool)

(assert (=> d!288028 (= (Exists!470 lambda!34884) (choose!6215 lambda!34884))))

(declare-fun bs!243649 () Bool)

(assert (= bs!243649 d!288028))

(declare-fun m!1179607 () Bool)

(assert (=> bs!243649 m!1179607))

(assert (=> b!979587 d!288028))

(declare-fun d!288030 () Bool)

(declare-fun isEmpty!6271 (Option!2302) Bool)

(assert (=> d!288030 (= (isDefined!1944 lt!349926) (not (isEmpty!6271 lt!349926)))))

(declare-fun bs!243650 () Bool)

(assert (= bs!243650 d!288030))

(declare-fun m!1179609 () Bool)

(assert (=> bs!243650 m!1179609))

(assert (=> b!979587 d!288030))

(declare-fun d!288032 () Bool)

(declare-fun e!630663 () Bool)

(assert (=> d!288032 e!630663))

(declare-fun res!444916 () Bool)

(assert (=> d!288032 (=> (not res!444916) (not e!630663))))

(declare-fun lt!349984 () Regex!2733)

(assert (=> d!288032 (= res!444916 (validRegex!1202 lt!349984))))

(declare-fun e!630666 () Regex!2733)

(assert (=> d!288032 (= lt!349984 e!630666)))

(declare-fun c!160197 () Bool)

(assert (=> d!288032 (= c!160197 (and ((_ is Concat!4566) r!15766) ((_ is EmptyExpr!2733) (regOne!5978 r!15766))))))

(assert (=> d!288032 (validRegex!1202 r!15766)))

(assert (=> d!288032 (= (removeUselessConcat!350 r!15766) lt!349984)))

(declare-fun b!980046 () Bool)

(declare-fun e!630667 () Regex!2733)

(assert (=> b!980046 (= e!630667 r!15766)))

(declare-fun b!980047 () Bool)

(declare-fun e!630664 () Regex!2733)

(assert (=> b!980047 (= e!630666 e!630664)))

(declare-fun c!160198 () Bool)

(assert (=> b!980047 (= c!160198 (and ((_ is Concat!4566) r!15766) ((_ is EmptyExpr!2733) (regTwo!5978 r!15766))))))

(declare-fun bm!62885 () Bool)

(declare-fun call!62892 () Regex!2733)

(declare-fun call!62891 () Regex!2733)

(assert (=> bm!62885 (= call!62892 call!62891)))

(declare-fun bm!62886 () Bool)

(declare-fun c!160199 () Bool)

(declare-fun call!62890 () Regex!2733)

(assert (=> bm!62886 (= call!62890 (removeUselessConcat!350 (ite c!160197 (regTwo!5978 r!15766) (ite (or c!160198 c!160199) (regOne!5978 r!15766) (regOne!5979 r!15766)))))))

(declare-fun b!980048 () Bool)

(declare-fun c!160201 () Bool)

(assert (=> b!980048 (= c!160201 ((_ is Star!2733) r!15766))))

(declare-fun e!630668 () Regex!2733)

(assert (=> b!980048 (= e!630668 e!630667)))

(declare-fun bm!62887 () Bool)

(declare-fun call!62894 () Regex!2733)

(declare-fun call!62893 () Regex!2733)

(assert (=> bm!62887 (= call!62894 call!62893)))

(declare-fun b!980049 () Bool)

(assert (=> b!980049 (= e!630663 (= (nullable!849 lt!349984) (nullable!849 r!15766)))))

(declare-fun b!980050 () Bool)

(declare-fun e!630665 () Regex!2733)

(assert (=> b!980050 (= e!630665 (Concat!4566 call!62894 call!62891))))

(declare-fun b!980051 () Bool)

(assert (=> b!980051 (= e!630664 call!62893)))

(declare-fun b!980052 () Bool)

(assert (=> b!980052 (= e!630666 call!62890)))

(declare-fun b!980053 () Bool)

(assert (=> b!980053 (= e!630665 e!630668)))

(declare-fun c!160200 () Bool)

(assert (=> b!980053 (= c!160200 ((_ is Union!2733) r!15766))))

(declare-fun bm!62888 () Bool)

(assert (=> bm!62888 (= call!62893 call!62890)))

(declare-fun b!980054 () Bool)

(assert (=> b!980054 (= c!160199 ((_ is Concat!4566) r!15766))))

(assert (=> b!980054 (= e!630664 e!630665)))

(declare-fun b!980055 () Bool)

(assert (=> b!980055 (= e!630667 (Star!2733 call!62892))))

(declare-fun bm!62889 () Bool)

(assert (=> bm!62889 (= call!62891 (removeUselessConcat!350 (ite c!160199 (regTwo!5978 r!15766) (ite c!160200 (regTwo!5979 r!15766) (reg!3062 r!15766)))))))

(declare-fun b!980056 () Bool)

(assert (=> b!980056 (= e!630668 (Union!2733 call!62894 call!62892))))

(assert (= (and d!288032 c!160197) b!980052))

(assert (= (and d!288032 (not c!160197)) b!980047))

(assert (= (and b!980047 c!160198) b!980051))

(assert (= (and b!980047 (not c!160198)) b!980054))

(assert (= (and b!980054 c!160199) b!980050))

(assert (= (and b!980054 (not c!160199)) b!980053))

(assert (= (and b!980053 c!160200) b!980056))

(assert (= (and b!980053 (not c!160200)) b!980048))

(assert (= (and b!980048 c!160201) b!980055))

(assert (= (and b!980048 (not c!160201)) b!980046))

(assert (= (or b!980056 b!980055) bm!62885))

(assert (= (or b!980050 bm!62885) bm!62889))

(assert (= (or b!980050 b!980056) bm!62887))

(assert (= (or b!980051 bm!62887) bm!62888))

(assert (= (or b!980052 bm!62888) bm!62886))

(assert (= (and d!288032 res!444916) b!980049))

(declare-fun m!1179611 () Bool)

(assert (=> d!288032 m!1179611))

(assert (=> d!288032 m!1179401))

(declare-fun m!1179613 () Bool)

(assert (=> bm!62886 m!1179613))

(declare-fun m!1179615 () Bool)

(assert (=> b!980049 m!1179615))

(assert (=> b!980049 m!1179531))

(declare-fun m!1179617 () Bool)

(assert (=> bm!62889 m!1179617))

(assert (=> b!979582 d!288032))

(declare-fun b!980057 () Bool)

(declare-fun e!630670 () Bool)

(declare-fun lt!349985 () Bool)

(assert (=> b!980057 (= e!630670 (not lt!349985))))

(declare-fun b!980058 () Bool)

(declare-fun e!630674 () Bool)

(declare-fun e!630671 () Bool)

(assert (=> b!980058 (= e!630674 e!630671)))

(declare-fun res!444921 () Bool)

(assert (=> b!980058 (=> (not res!444921) (not e!630671))))

(assert (=> b!980058 (= res!444921 (not lt!349985))))

(declare-fun b!980059 () Bool)

(declare-fun res!444922 () Bool)

(declare-fun e!630673 () Bool)

(assert (=> b!980059 (=> (not res!444922) (not e!630673))))

(assert (=> b!980059 (= res!444922 (isEmpty!6269 (tail!1370 s!10566)))))

(declare-fun b!980060 () Bool)

(assert (=> b!980060 (= e!630673 (= (head!1808 s!10566) (c!160088 (removeUselessConcat!350 r!15766))))))

(declare-fun b!980061 () Bool)

(declare-fun e!630669 () Bool)

(assert (=> b!980061 (= e!630669 (matchR!1269 (derivativeStep!655 (removeUselessConcat!350 r!15766) (head!1808 s!10566)) (tail!1370 s!10566)))))

(declare-fun b!980062 () Bool)

(declare-fun e!630672 () Bool)

(assert (=> b!980062 (= e!630672 (not (= (head!1808 s!10566) (c!160088 (removeUselessConcat!350 r!15766)))))))

(declare-fun b!980063 () Bool)

(declare-fun e!630675 () Bool)

(assert (=> b!980063 (= e!630675 e!630670)))

(declare-fun c!160203 () Bool)

(assert (=> b!980063 (= c!160203 ((_ is EmptyLang!2733) (removeUselessConcat!350 r!15766)))))

(declare-fun b!980064 () Bool)

(declare-fun res!444923 () Bool)

(assert (=> b!980064 (=> res!444923 e!630674)))

(assert (=> b!980064 (= res!444923 (not ((_ is ElementMatch!2733) (removeUselessConcat!350 r!15766))))))

(assert (=> b!980064 (= e!630670 e!630674)))

(declare-fun b!980065 () Bool)

(declare-fun res!444918 () Bool)

(assert (=> b!980065 (=> res!444918 e!630674)))

(assert (=> b!980065 (= res!444918 e!630673)))

(declare-fun res!444920 () Bool)

(assert (=> b!980065 (=> (not res!444920) (not e!630673))))

(assert (=> b!980065 (= res!444920 lt!349985)))

(declare-fun b!980067 () Bool)

(declare-fun res!444917 () Bool)

(assert (=> b!980067 (=> res!444917 e!630672)))

(assert (=> b!980067 (= res!444917 (not (isEmpty!6269 (tail!1370 s!10566))))))

(declare-fun b!980068 () Bool)

(declare-fun res!444924 () Bool)

(assert (=> b!980068 (=> (not res!444924) (not e!630673))))

(declare-fun call!62895 () Bool)

(assert (=> b!980068 (= res!444924 (not call!62895))))

(declare-fun bm!62890 () Bool)

(assert (=> bm!62890 (= call!62895 (isEmpty!6269 s!10566))))

(declare-fun b!980069 () Bool)

(assert (=> b!980069 (= e!630675 (= lt!349985 call!62895))))

(declare-fun b!980070 () Bool)

(assert (=> b!980070 (= e!630671 e!630672)))

(declare-fun res!444919 () Bool)

(assert (=> b!980070 (=> res!444919 e!630672)))

(assert (=> b!980070 (= res!444919 call!62895)))

(declare-fun b!980066 () Bool)

(assert (=> b!980066 (= e!630669 (nullable!849 (removeUselessConcat!350 r!15766)))))

(declare-fun d!288034 () Bool)

(assert (=> d!288034 e!630675))

(declare-fun c!160204 () Bool)

(assert (=> d!288034 (= c!160204 ((_ is EmptyExpr!2733) (removeUselessConcat!350 r!15766)))))

(assert (=> d!288034 (= lt!349985 e!630669)))

(declare-fun c!160202 () Bool)

(assert (=> d!288034 (= c!160202 (isEmpty!6269 s!10566))))

(assert (=> d!288034 (validRegex!1202 (removeUselessConcat!350 r!15766))))

(assert (=> d!288034 (= (matchR!1269 (removeUselessConcat!350 r!15766) s!10566) lt!349985)))

(assert (= (and d!288034 c!160202) b!980066))

(assert (= (and d!288034 (not c!160202)) b!980061))

(assert (= (and d!288034 c!160204) b!980069))

(assert (= (and d!288034 (not c!160204)) b!980063))

(assert (= (and b!980063 c!160203) b!980057))

(assert (= (and b!980063 (not c!160203)) b!980064))

(assert (= (and b!980064 (not res!444923)) b!980065))

(assert (= (and b!980065 res!444920) b!980068))

(assert (= (and b!980068 res!444924) b!980059))

(assert (= (and b!980059 res!444922) b!980060))

(assert (= (and b!980065 (not res!444918)) b!980058))

(assert (= (and b!980058 res!444921) b!980070))

(assert (= (and b!980070 (not res!444919)) b!980067))

(assert (= (and b!980067 (not res!444917)) b!980062))

(assert (= (or b!980069 b!980068 b!980070) bm!62890))

(assert (=> bm!62890 m!1179387))

(assert (=> b!980066 m!1179389))

(declare-fun m!1179619 () Bool)

(assert (=> b!980066 m!1179619))

(assert (=> b!980061 m!1179533))

(assert (=> b!980061 m!1179389))

(assert (=> b!980061 m!1179533))

(declare-fun m!1179621 () Bool)

(assert (=> b!980061 m!1179621))

(assert (=> b!980061 m!1179537))

(assert (=> b!980061 m!1179621))

(assert (=> b!980061 m!1179537))

(declare-fun m!1179623 () Bool)

(assert (=> b!980061 m!1179623))

(assert (=> d!288034 m!1179387))

(assert (=> d!288034 m!1179389))

(declare-fun m!1179625 () Bool)

(assert (=> d!288034 m!1179625))

(assert (=> b!980062 m!1179533))

(assert (=> b!980060 m!1179533))

(assert (=> b!980059 m!1179537))

(assert (=> b!980059 m!1179537))

(assert (=> b!980059 m!1179541))

(assert (=> b!980067 m!1179537))

(assert (=> b!980067 m!1179537))

(assert (=> b!980067 m!1179541))

(assert (=> b!979582 d!288034))

(declare-fun d!288036 () Bool)

(declare-fun e!630676 () Bool)

(assert (=> d!288036 e!630676))

(declare-fun res!444925 () Bool)

(assert (=> d!288036 (=> (not res!444925) (not e!630676))))

(declare-fun lt!349986 () Regex!2733)

(assert (=> d!288036 (= res!444925 (validRegex!1202 lt!349986))))

(declare-fun e!630679 () Regex!2733)

(assert (=> d!288036 (= lt!349986 e!630679)))

(declare-fun c!160205 () Bool)

(assert (=> d!288036 (= c!160205 (and ((_ is Concat!4566) (regOne!5978 r!15766)) ((_ is EmptyExpr!2733) (regOne!5978 (regOne!5978 r!15766)))))))

(assert (=> d!288036 (validRegex!1202 (regOne!5978 r!15766))))

(assert (=> d!288036 (= (removeUselessConcat!350 (regOne!5978 r!15766)) lt!349986)))

(declare-fun b!980071 () Bool)

(declare-fun e!630680 () Regex!2733)

(assert (=> b!980071 (= e!630680 (regOne!5978 r!15766))))

(declare-fun b!980072 () Bool)

(declare-fun e!630677 () Regex!2733)

(assert (=> b!980072 (= e!630679 e!630677)))

(declare-fun c!160206 () Bool)

(assert (=> b!980072 (= c!160206 (and ((_ is Concat!4566) (regOne!5978 r!15766)) ((_ is EmptyExpr!2733) (regTwo!5978 (regOne!5978 r!15766)))))))

(declare-fun bm!62891 () Bool)

(declare-fun call!62898 () Regex!2733)

(declare-fun call!62897 () Regex!2733)

(assert (=> bm!62891 (= call!62898 call!62897)))

(declare-fun call!62896 () Regex!2733)

(declare-fun c!160207 () Bool)

(declare-fun bm!62892 () Bool)

(assert (=> bm!62892 (= call!62896 (removeUselessConcat!350 (ite c!160205 (regTwo!5978 (regOne!5978 r!15766)) (ite (or c!160206 c!160207) (regOne!5978 (regOne!5978 r!15766)) (regOne!5979 (regOne!5978 r!15766))))))))

(declare-fun b!980073 () Bool)

(declare-fun c!160209 () Bool)

(assert (=> b!980073 (= c!160209 ((_ is Star!2733) (regOne!5978 r!15766)))))

(declare-fun e!630681 () Regex!2733)

(assert (=> b!980073 (= e!630681 e!630680)))

(declare-fun bm!62893 () Bool)

(declare-fun call!62900 () Regex!2733)

(declare-fun call!62899 () Regex!2733)

(assert (=> bm!62893 (= call!62900 call!62899)))

(declare-fun b!980074 () Bool)

(assert (=> b!980074 (= e!630676 (= (nullable!849 lt!349986) (nullable!849 (regOne!5978 r!15766))))))

(declare-fun b!980075 () Bool)

(declare-fun e!630678 () Regex!2733)

(assert (=> b!980075 (= e!630678 (Concat!4566 call!62900 call!62897))))

(declare-fun b!980076 () Bool)

(assert (=> b!980076 (= e!630677 call!62899)))

(declare-fun b!980077 () Bool)

(assert (=> b!980077 (= e!630679 call!62896)))

(declare-fun b!980078 () Bool)

(assert (=> b!980078 (= e!630678 e!630681)))

(declare-fun c!160208 () Bool)

(assert (=> b!980078 (= c!160208 ((_ is Union!2733) (regOne!5978 r!15766)))))

(declare-fun bm!62894 () Bool)

(assert (=> bm!62894 (= call!62899 call!62896)))

(declare-fun b!980079 () Bool)

(assert (=> b!980079 (= c!160207 ((_ is Concat!4566) (regOne!5978 r!15766)))))

(assert (=> b!980079 (= e!630677 e!630678)))

(declare-fun b!980080 () Bool)

(assert (=> b!980080 (= e!630680 (Star!2733 call!62898))))

(declare-fun bm!62895 () Bool)

(assert (=> bm!62895 (= call!62897 (removeUselessConcat!350 (ite c!160207 (regTwo!5978 (regOne!5978 r!15766)) (ite c!160208 (regTwo!5979 (regOne!5978 r!15766)) (reg!3062 (regOne!5978 r!15766))))))))

(declare-fun b!980081 () Bool)

(assert (=> b!980081 (= e!630681 (Union!2733 call!62900 call!62898))))

(assert (= (and d!288036 c!160205) b!980077))

(assert (= (and d!288036 (not c!160205)) b!980072))

(assert (= (and b!980072 c!160206) b!980076))

(assert (= (and b!980072 (not c!160206)) b!980079))

(assert (= (and b!980079 c!160207) b!980075))

(assert (= (and b!980079 (not c!160207)) b!980078))

(assert (= (and b!980078 c!160208) b!980081))

(assert (= (and b!980078 (not c!160208)) b!980073))

(assert (= (and b!980073 c!160209) b!980080))

(assert (= (and b!980073 (not c!160209)) b!980071))

(assert (= (or b!980081 b!980080) bm!62891))

(assert (= (or b!980075 bm!62891) bm!62895))

(assert (= (or b!980075 b!980081) bm!62893))

(assert (= (or b!980076 bm!62893) bm!62894))

(assert (= (or b!980077 bm!62894) bm!62892))

(assert (= (and d!288036 res!444925) b!980074))

(declare-fun m!1179627 () Bool)

(assert (=> d!288036 m!1179627))

(assert (=> d!288036 m!1179365))

(declare-fun m!1179629 () Bool)

(assert (=> bm!62892 m!1179629))

(declare-fun m!1179631 () Bool)

(assert (=> b!980074 m!1179631))

(assert (=> b!980074 m!1179559))

(declare-fun m!1179633 () Bool)

(assert (=> bm!62895 m!1179633))

(assert (=> b!979582 d!288036))

(declare-fun d!288038 () Bool)

(assert (=> d!288038 (= (matchR!1269 (regOne!5978 r!15766) (_1!6486 lt!349924)) (matchR!1269 (removeUselessConcat!350 (regOne!5978 r!15766)) (_1!6486 lt!349924)))))

(declare-fun lt!349989 () Unit!15125)

(declare-fun choose!6217 (Regex!2733 List!9963) Unit!15125)

(assert (=> d!288038 (= lt!349989 (choose!6217 (regOne!5978 r!15766) (_1!6486 lt!349924)))))

(assert (=> d!288038 (validRegex!1202 (regOne!5978 r!15766))))

(assert (=> d!288038 (= (lemmaRemoveUselessConcatSound!198 (regOne!5978 r!15766) (_1!6486 lt!349924)) lt!349989)))

(declare-fun bs!243651 () Bool)

(assert (= bs!243651 d!288038))

(assert (=> bs!243651 m!1179391))

(assert (=> bs!243651 m!1179393))

(declare-fun m!1179635 () Bool)

(assert (=> bs!243651 m!1179635))

(assert (=> bs!243651 m!1179365))

(assert (=> bs!243651 m!1179391))

(assert (=> bs!243651 m!1179399))

(assert (=> b!979582 d!288038))

(declare-fun b!980082 () Bool)

(declare-fun e!630683 () Bool)

(declare-fun lt!349990 () Bool)

(assert (=> b!980082 (= e!630683 (not lt!349990))))

(declare-fun b!980083 () Bool)

(declare-fun e!630687 () Bool)

(declare-fun e!630684 () Bool)

(assert (=> b!980083 (= e!630687 e!630684)))

(declare-fun res!444930 () Bool)

(assert (=> b!980083 (=> (not res!444930) (not e!630684))))

(assert (=> b!980083 (= res!444930 (not lt!349990))))

(declare-fun b!980084 () Bool)

(declare-fun res!444931 () Bool)

(declare-fun e!630686 () Bool)

(assert (=> b!980084 (=> (not res!444931) (not e!630686))))

(assert (=> b!980084 (= res!444931 (isEmpty!6269 (tail!1370 (_1!6486 lt!349924))))))

(declare-fun b!980085 () Bool)

(assert (=> b!980085 (= e!630686 (= (head!1808 (_1!6486 lt!349924)) (c!160088 (removeUselessConcat!350 (regOne!5978 r!15766)))))))

(declare-fun b!980086 () Bool)

(declare-fun e!630682 () Bool)

(assert (=> b!980086 (= e!630682 (matchR!1269 (derivativeStep!655 (removeUselessConcat!350 (regOne!5978 r!15766)) (head!1808 (_1!6486 lt!349924))) (tail!1370 (_1!6486 lt!349924))))))

(declare-fun b!980087 () Bool)

(declare-fun e!630685 () Bool)

(assert (=> b!980087 (= e!630685 (not (= (head!1808 (_1!6486 lt!349924)) (c!160088 (removeUselessConcat!350 (regOne!5978 r!15766))))))))

(declare-fun b!980088 () Bool)

(declare-fun e!630688 () Bool)

(assert (=> b!980088 (= e!630688 e!630683)))

(declare-fun c!160211 () Bool)

(assert (=> b!980088 (= c!160211 ((_ is EmptyLang!2733) (removeUselessConcat!350 (regOne!5978 r!15766))))))

(declare-fun b!980089 () Bool)

(declare-fun res!444932 () Bool)

(assert (=> b!980089 (=> res!444932 e!630687)))

(assert (=> b!980089 (= res!444932 (not ((_ is ElementMatch!2733) (removeUselessConcat!350 (regOne!5978 r!15766)))))))

(assert (=> b!980089 (= e!630683 e!630687)))

(declare-fun b!980090 () Bool)

(declare-fun res!444927 () Bool)

(assert (=> b!980090 (=> res!444927 e!630687)))

(assert (=> b!980090 (= res!444927 e!630686)))

(declare-fun res!444929 () Bool)

(assert (=> b!980090 (=> (not res!444929) (not e!630686))))

(assert (=> b!980090 (= res!444929 lt!349990)))

(declare-fun b!980092 () Bool)

(declare-fun res!444926 () Bool)

(assert (=> b!980092 (=> res!444926 e!630685)))

(assert (=> b!980092 (= res!444926 (not (isEmpty!6269 (tail!1370 (_1!6486 lt!349924)))))))

(declare-fun b!980093 () Bool)

(declare-fun res!444933 () Bool)

(assert (=> b!980093 (=> (not res!444933) (not e!630686))))

(declare-fun call!62901 () Bool)

(assert (=> b!980093 (= res!444933 (not call!62901))))

(declare-fun bm!62896 () Bool)

(assert (=> bm!62896 (= call!62901 (isEmpty!6269 (_1!6486 lt!349924)))))

(declare-fun b!980094 () Bool)

(assert (=> b!980094 (= e!630688 (= lt!349990 call!62901))))

(declare-fun b!980095 () Bool)

(assert (=> b!980095 (= e!630684 e!630685)))

(declare-fun res!444928 () Bool)

(assert (=> b!980095 (=> res!444928 e!630685)))

(assert (=> b!980095 (= res!444928 call!62901)))

(declare-fun b!980091 () Bool)

(assert (=> b!980091 (= e!630682 (nullable!849 (removeUselessConcat!350 (regOne!5978 r!15766))))))

(declare-fun d!288040 () Bool)

(assert (=> d!288040 e!630688))

(declare-fun c!160212 () Bool)

(assert (=> d!288040 (= c!160212 ((_ is EmptyExpr!2733) (removeUselessConcat!350 (regOne!5978 r!15766))))))

(assert (=> d!288040 (= lt!349990 e!630682)))

(declare-fun c!160210 () Bool)

(assert (=> d!288040 (= c!160210 (isEmpty!6269 (_1!6486 lt!349924)))))

(assert (=> d!288040 (validRegex!1202 (removeUselessConcat!350 (regOne!5978 r!15766)))))

(assert (=> d!288040 (= (matchR!1269 (removeUselessConcat!350 (regOne!5978 r!15766)) (_1!6486 lt!349924)) lt!349990)))

(assert (= (and d!288040 c!160210) b!980091))

(assert (= (and d!288040 (not c!160210)) b!980086))

(assert (= (and d!288040 c!160212) b!980094))

(assert (= (and d!288040 (not c!160212)) b!980088))

(assert (= (and b!980088 c!160211) b!980082))

(assert (= (and b!980088 (not c!160211)) b!980089))

(assert (= (and b!980089 (not res!444932)) b!980090))

(assert (= (and b!980090 res!444929) b!980093))

(assert (= (and b!980093 res!444933) b!980084))

(assert (= (and b!980084 res!444931) b!980085))

(assert (= (and b!980090 (not res!444927)) b!980083))

(assert (= (and b!980083 res!444930) b!980095))

(assert (= (and b!980095 (not res!444928)) b!980092))

(assert (= (and b!980092 (not res!444926)) b!980087))

(assert (= (or b!980094 b!980093 b!980095) bm!62896))

(assert (=> bm!62896 m!1179557))

(assert (=> b!980091 m!1179391))

(declare-fun m!1179637 () Bool)

(assert (=> b!980091 m!1179637))

(assert (=> b!980086 m!1179561))

(assert (=> b!980086 m!1179391))

(assert (=> b!980086 m!1179561))

(declare-fun m!1179639 () Bool)

(assert (=> b!980086 m!1179639))

(assert (=> b!980086 m!1179565))

(assert (=> b!980086 m!1179639))

(assert (=> b!980086 m!1179565))

(declare-fun m!1179641 () Bool)

(assert (=> b!980086 m!1179641))

(assert (=> d!288040 m!1179557))

(assert (=> d!288040 m!1179391))

(declare-fun m!1179643 () Bool)

(assert (=> d!288040 m!1179643))

(assert (=> b!980087 m!1179561))

(assert (=> b!980085 m!1179561))

(assert (=> b!980084 m!1179565))

(assert (=> b!980084 m!1179565))

(assert (=> b!980084 m!1179569))

(assert (=> b!980092 m!1179565))

(assert (=> b!980092 m!1179565))

(assert (=> b!980092 m!1179569))

(assert (=> b!979582 d!288040))

(declare-fun b!980114 () Bool)

(declare-fun e!630709 () Bool)

(declare-fun e!630703 () Bool)

(assert (=> b!980114 (= e!630709 e!630703)))

(declare-fun c!160218 () Bool)

(assert (=> b!980114 (= c!160218 ((_ is Union!2733) r!15766))))

(declare-fun bm!62903 () Bool)

(declare-fun call!62908 () Bool)

(assert (=> bm!62903 (= call!62908 (validRegex!1202 (ite c!160218 (regTwo!5979 r!15766) (regTwo!5978 r!15766))))))

(declare-fun b!980115 () Bool)

(declare-fun res!444945 () Bool)

(declare-fun e!630708 () Bool)

(assert (=> b!980115 (=> (not res!444945) (not e!630708))))

(declare-fun call!62909 () Bool)

(assert (=> b!980115 (= res!444945 call!62909)))

(assert (=> b!980115 (= e!630703 e!630708)))

(declare-fun b!980116 () Bool)

(declare-fun e!630706 () Bool)

(assert (=> b!980116 (= e!630706 call!62908)))

(declare-fun b!980117 () Bool)

(declare-fun e!630705 () Bool)

(assert (=> b!980117 (= e!630705 e!630709)))

(declare-fun c!160217 () Bool)

(assert (=> b!980117 (= c!160217 ((_ is Star!2733) r!15766))))

(declare-fun b!980118 () Bool)

(declare-fun res!444946 () Bool)

(declare-fun e!630704 () Bool)

(assert (=> b!980118 (=> res!444946 e!630704)))

(assert (=> b!980118 (= res!444946 (not ((_ is Concat!4566) r!15766)))))

(assert (=> b!980118 (= e!630703 e!630704)))

(declare-fun b!980119 () Bool)

(assert (=> b!980119 (= e!630708 call!62908)))

(declare-fun bm!62904 () Bool)

(declare-fun call!62910 () Bool)

(assert (=> bm!62904 (= call!62910 (validRegex!1202 (ite c!160217 (reg!3062 r!15766) (ite c!160218 (regOne!5979 r!15766) (regOne!5978 r!15766)))))))

(declare-fun b!980121 () Bool)

(assert (=> b!980121 (= e!630704 e!630706)))

(declare-fun res!444944 () Bool)

(assert (=> b!980121 (=> (not res!444944) (not e!630706))))

(assert (=> b!980121 (= res!444944 call!62909)))

(declare-fun b!980122 () Bool)

(declare-fun e!630707 () Bool)

(assert (=> b!980122 (= e!630707 call!62910)))

(declare-fun bm!62905 () Bool)

(assert (=> bm!62905 (= call!62909 call!62910)))

(declare-fun d!288042 () Bool)

(declare-fun res!444948 () Bool)

(assert (=> d!288042 (=> res!444948 e!630705)))

(assert (=> d!288042 (= res!444948 ((_ is ElementMatch!2733) r!15766))))

(assert (=> d!288042 (= (validRegex!1202 r!15766) e!630705)))

(declare-fun b!980120 () Bool)

(assert (=> b!980120 (= e!630709 e!630707)))

(declare-fun res!444947 () Bool)

(assert (=> b!980120 (= res!444947 (not (nullable!849 (reg!3062 r!15766))))))

(assert (=> b!980120 (=> (not res!444947) (not e!630707))))

(assert (= (and d!288042 (not res!444948)) b!980117))

(assert (= (and b!980117 c!160217) b!980120))

(assert (= (and b!980117 (not c!160217)) b!980114))

(assert (= (and b!980120 res!444947) b!980122))

(assert (= (and b!980114 c!160218) b!980115))

(assert (= (and b!980114 (not c!160218)) b!980118))

(assert (= (and b!980115 res!444945) b!980119))

(assert (= (and b!980118 (not res!444946)) b!980121))

(assert (= (and b!980121 res!444944) b!980116))

(assert (= (or b!980119 b!980116) bm!62903))

(assert (= (or b!980115 b!980121) bm!62905))

(assert (= (or b!980122 bm!62905) bm!62904))

(declare-fun m!1179645 () Bool)

(assert (=> bm!62903 m!1179645))

(declare-fun m!1179647 () Bool)

(assert (=> bm!62904 m!1179647))

(declare-fun m!1179649 () Bool)

(assert (=> b!980120 m!1179649))

(assert (=> start!86922 d!288042))

(declare-fun b!980123 () Bool)

(declare-fun e!630716 () Bool)

(declare-fun e!630710 () Bool)

(assert (=> b!980123 (= e!630716 e!630710)))

(declare-fun c!160220 () Bool)

(assert (=> b!980123 (= c!160220 ((_ is Union!2733) (regOne!5978 r!15766)))))

(declare-fun bm!62906 () Bool)

(declare-fun call!62911 () Bool)

(assert (=> bm!62906 (= call!62911 (validRegex!1202 (ite c!160220 (regTwo!5979 (regOne!5978 r!15766)) (regTwo!5978 (regOne!5978 r!15766)))))))

(declare-fun b!980124 () Bool)

(declare-fun res!444950 () Bool)

(declare-fun e!630715 () Bool)

(assert (=> b!980124 (=> (not res!444950) (not e!630715))))

(declare-fun call!62912 () Bool)

(assert (=> b!980124 (= res!444950 call!62912)))

(assert (=> b!980124 (= e!630710 e!630715)))

(declare-fun b!980125 () Bool)

(declare-fun e!630713 () Bool)

(assert (=> b!980125 (= e!630713 call!62911)))

(declare-fun b!980126 () Bool)

(declare-fun e!630712 () Bool)

(assert (=> b!980126 (= e!630712 e!630716)))

(declare-fun c!160219 () Bool)

(assert (=> b!980126 (= c!160219 ((_ is Star!2733) (regOne!5978 r!15766)))))

(declare-fun b!980127 () Bool)

(declare-fun res!444951 () Bool)

(declare-fun e!630711 () Bool)

(assert (=> b!980127 (=> res!444951 e!630711)))

(assert (=> b!980127 (= res!444951 (not ((_ is Concat!4566) (regOne!5978 r!15766))))))

(assert (=> b!980127 (= e!630710 e!630711)))

(declare-fun b!980128 () Bool)

(assert (=> b!980128 (= e!630715 call!62911)))

(declare-fun bm!62907 () Bool)

(declare-fun call!62913 () Bool)

(assert (=> bm!62907 (= call!62913 (validRegex!1202 (ite c!160219 (reg!3062 (regOne!5978 r!15766)) (ite c!160220 (regOne!5979 (regOne!5978 r!15766)) (regOne!5978 (regOne!5978 r!15766))))))))

(declare-fun b!980130 () Bool)

(assert (=> b!980130 (= e!630711 e!630713)))

(declare-fun res!444949 () Bool)

(assert (=> b!980130 (=> (not res!444949) (not e!630713))))

(assert (=> b!980130 (= res!444949 call!62912)))

(declare-fun b!980131 () Bool)

(declare-fun e!630714 () Bool)

(assert (=> b!980131 (= e!630714 call!62913)))

(declare-fun bm!62908 () Bool)

(assert (=> bm!62908 (= call!62912 call!62913)))

(declare-fun d!288044 () Bool)

(declare-fun res!444953 () Bool)

(assert (=> d!288044 (=> res!444953 e!630712)))

(assert (=> d!288044 (= res!444953 ((_ is ElementMatch!2733) (regOne!5978 r!15766)))))

(assert (=> d!288044 (= (validRegex!1202 (regOne!5978 r!15766)) e!630712)))

(declare-fun b!980129 () Bool)

(assert (=> b!980129 (= e!630716 e!630714)))

(declare-fun res!444952 () Bool)

(assert (=> b!980129 (= res!444952 (not (nullable!849 (reg!3062 (regOne!5978 r!15766)))))))

(assert (=> b!980129 (=> (not res!444952) (not e!630714))))

(assert (= (and d!288044 (not res!444953)) b!980126))

(assert (= (and b!980126 c!160219) b!980129))

(assert (= (and b!980126 (not c!160219)) b!980123))

(assert (= (and b!980129 res!444952) b!980131))

(assert (= (and b!980123 c!160220) b!980124))

(assert (= (and b!980123 (not c!160220)) b!980127))

(assert (= (and b!980124 res!444950) b!980128))

(assert (= (and b!980127 (not res!444951)) b!980130))

(assert (= (and b!980130 res!444949) b!980125))

(assert (= (or b!980128 b!980125) bm!62906))

(assert (= (or b!980124 b!980130) bm!62908))

(assert (= (or b!980131 bm!62908) bm!62907))

(declare-fun m!1179651 () Bool)

(assert (=> bm!62906 m!1179651))

(declare-fun m!1179653 () Bool)

(assert (=> bm!62907 m!1179653))

(declare-fun m!1179655 () Bool)

(assert (=> b!980129 m!1179655))

(assert (=> b!979581 d!288044))

(declare-fun bs!243652 () Bool)

(declare-fun b!980137 () Bool)

(assert (= bs!243652 (and b!980137 b!979587)))

(declare-fun lambda!34917 () Int)

(assert (=> bs!243652 (not (= lambda!34917 lambda!34884))))

(declare-fun bs!243653 () Bool)

(assert (= bs!243653 (and b!980137 d!288020)))

(assert (=> bs!243653 (not (= lambda!34917 lambda!34910))))

(declare-fun bs!243654 () Bool)

(assert (= bs!243654 (and b!980137 d!288026)))

(assert (=> bs!243654 (not (= lambda!34917 lambda!34916))))

(declare-fun bs!243655 () Bool)

(assert (= bs!243655 (and b!980137 b!979815)))

(assert (=> bs!243655 (= (and (= (_1!6486 lt!349924) s!10566) (= (reg!3062 (regOne!5978 r!15766)) (reg!3062 r!15766)) (= (regOne!5978 r!15766) r!15766)) (= lambda!34917 lambda!34895))))

(assert (=> bs!243654 (not (= lambda!34917 lambda!34915))))

(declare-fun bs!243656 () Bool)

(assert (= bs!243656 (and b!980137 b!979820)))

(assert (=> bs!243656 (not (= lambda!34917 lambda!34896))))

(assert (=> bs!243652 (not (= lambda!34917 lambda!34883))))

(assert (=> b!980137 true))

(assert (=> b!980137 true))

(declare-fun bs!243657 () Bool)

(declare-fun b!980142 () Bool)

(assert (= bs!243657 (and b!980142 b!979587)))

(declare-fun lambda!34918 () Int)

(assert (=> bs!243657 (= (and (= (_1!6486 lt!349924) s!10566) (= (regOne!5978 (regOne!5978 r!15766)) (regOne!5978 r!15766)) (= (regTwo!5978 (regOne!5978 r!15766)) EmptyExpr!2733)) (= lambda!34918 lambda!34884))))

(declare-fun bs!243658 () Bool)

(assert (= bs!243658 (and b!980142 d!288020)))

(assert (=> bs!243658 (not (= lambda!34918 lambda!34910))))

(declare-fun bs!243659 () Bool)

(assert (= bs!243659 (and b!980142 d!288026)))

(assert (=> bs!243659 (= (and (= (_1!6486 lt!349924) s!10566) (= (regOne!5978 (regOne!5978 r!15766)) (regOne!5978 r!15766)) (= (regTwo!5978 (regOne!5978 r!15766)) EmptyExpr!2733)) (= lambda!34918 lambda!34916))))

(declare-fun bs!243660 () Bool)

(assert (= bs!243660 (and b!980142 b!979815)))

(assert (=> bs!243660 (not (= lambda!34918 lambda!34895))))

(declare-fun bs!243661 () Bool)

(assert (= bs!243661 (and b!980142 b!979820)))

(assert (=> bs!243661 (= (and (= (_1!6486 lt!349924) s!10566) (= (regOne!5978 (regOne!5978 r!15766)) (regOne!5978 r!15766)) (= (regTwo!5978 (regOne!5978 r!15766)) (regTwo!5978 r!15766))) (= lambda!34918 lambda!34896))))

(assert (=> bs!243657 (not (= lambda!34918 lambda!34883))))

(assert (=> bs!243659 (not (= lambda!34918 lambda!34915))))

(declare-fun bs!243662 () Bool)

(assert (= bs!243662 (and b!980142 b!980137)))

(assert (=> bs!243662 (not (= lambda!34918 lambda!34917))))

(assert (=> b!980142 true))

(assert (=> b!980142 true))

(declare-fun b!980132 () Bool)

(declare-fun e!630722 () Bool)

(declare-fun e!630718 () Bool)

(assert (=> b!980132 (= e!630722 e!630718)))

(declare-fun c!160223 () Bool)

(assert (=> b!980132 (= c!160223 ((_ is Star!2733) (regOne!5978 r!15766)))))

(declare-fun b!980133 () Bool)

(declare-fun e!630719 () Bool)

(assert (=> b!980133 (= e!630722 e!630719)))

(declare-fun res!444956 () Bool)

(assert (=> b!980133 (= res!444956 (matchRSpec!532 (regOne!5979 (regOne!5978 r!15766)) (_1!6486 lt!349924)))))

(assert (=> b!980133 (=> res!444956 e!630719)))

(declare-fun b!980134 () Bool)

(declare-fun e!630720 () Bool)

(declare-fun call!62914 () Bool)

(assert (=> b!980134 (= e!630720 call!62914)))

(declare-fun b!980135 () Bool)

(declare-fun c!160224 () Bool)

(assert (=> b!980135 (= c!160224 ((_ is ElementMatch!2733) (regOne!5978 r!15766)))))

(declare-fun e!630723 () Bool)

(declare-fun e!630721 () Bool)

(assert (=> b!980135 (= e!630723 e!630721)))

(declare-fun d!288046 () Bool)

(declare-fun c!160222 () Bool)

(assert (=> d!288046 (= c!160222 ((_ is EmptyExpr!2733) (regOne!5978 r!15766)))))

(assert (=> d!288046 (= (matchRSpec!532 (regOne!5978 r!15766) (_1!6486 lt!349924)) e!630720)))

(declare-fun b!980136 () Bool)

(assert (=> b!980136 (= e!630719 (matchRSpec!532 (regTwo!5979 (regOne!5978 r!15766)) (_1!6486 lt!349924)))))

(declare-fun bm!62909 () Bool)

(assert (=> bm!62909 (= call!62914 (isEmpty!6269 (_1!6486 lt!349924)))))

(declare-fun e!630717 () Bool)

(declare-fun call!62915 () Bool)

(assert (=> b!980137 (= e!630717 call!62915)))

(declare-fun b!980138 () Bool)

(assert (=> b!980138 (= e!630720 e!630723)))

(declare-fun res!444955 () Bool)

(assert (=> b!980138 (= res!444955 (not ((_ is EmptyLang!2733) (regOne!5978 r!15766))))))

(assert (=> b!980138 (=> (not res!444955) (not e!630723))))

(declare-fun b!980139 () Bool)

(declare-fun c!160221 () Bool)

(assert (=> b!980139 (= c!160221 ((_ is Union!2733) (regOne!5978 r!15766)))))

(assert (=> b!980139 (= e!630721 e!630722)))

(declare-fun b!980140 () Bool)

(assert (=> b!980140 (= e!630721 (= (_1!6486 lt!349924) (Cons!9947 (c!160088 (regOne!5978 r!15766)) Nil!9947)))))

(declare-fun b!980141 () Bool)

(declare-fun res!444954 () Bool)

(assert (=> b!980141 (=> res!444954 e!630717)))

(assert (=> b!980141 (= res!444954 call!62914)))

(assert (=> b!980141 (= e!630718 e!630717)))

(assert (=> b!980142 (= e!630718 call!62915)))

(declare-fun bm!62910 () Bool)

(assert (=> bm!62910 (= call!62915 (Exists!470 (ite c!160223 lambda!34917 lambda!34918)))))

(assert (= (and d!288046 c!160222) b!980134))

(assert (= (and d!288046 (not c!160222)) b!980138))

(assert (= (and b!980138 res!444955) b!980135))

(assert (= (and b!980135 c!160224) b!980140))

(assert (= (and b!980135 (not c!160224)) b!980139))

(assert (= (and b!980139 c!160221) b!980133))

(assert (= (and b!980139 (not c!160221)) b!980132))

(assert (= (and b!980133 (not res!444956)) b!980136))

(assert (= (and b!980132 c!160223) b!980141))

(assert (= (and b!980132 (not c!160223)) b!980142))

(assert (= (and b!980141 (not res!444954)) b!980137))

(assert (= (or b!980137 b!980142) bm!62910))

(assert (= (or b!980134 b!980141) bm!62909))

(declare-fun m!1179657 () Bool)

(assert (=> b!980133 m!1179657))

(declare-fun m!1179659 () Bool)

(assert (=> b!980136 m!1179659))

(assert (=> bm!62909 m!1179557))

(declare-fun m!1179661 () Bool)

(assert (=> bm!62910 m!1179661))

(assert (=> b!979581 d!288046))

(declare-fun d!288048 () Bool)

(assert (=> d!288048 (= (matchR!1269 (regOne!5978 r!15766) (_1!6486 lt!349924)) (matchRSpec!532 (regOne!5978 r!15766) (_1!6486 lt!349924)))))

(declare-fun lt!349991 () Unit!15125)

(assert (=> d!288048 (= lt!349991 (choose!6213 (regOne!5978 r!15766) (_1!6486 lt!349924)))))

(assert (=> d!288048 (validRegex!1202 (regOne!5978 r!15766))))

(assert (=> d!288048 (= (mainMatchTheorem!532 (regOne!5978 r!15766) (_1!6486 lt!349924)) lt!349991)))

(declare-fun bs!243663 () Bool)

(assert (= bs!243663 d!288048))

(assert (=> bs!243663 m!1179399))

(assert (=> bs!243663 m!1179367))

(declare-fun m!1179663 () Bool)

(assert (=> bs!243663 m!1179663))

(assert (=> bs!243663 m!1179365))

(assert (=> b!979581 d!288048))

(declare-fun b!980155 () Bool)

(declare-fun e!630726 () Bool)

(declare-fun tp!299478 () Bool)

(assert (=> b!980155 (= e!630726 tp!299478)))

(declare-fun b!980153 () Bool)

(assert (=> b!980153 (= e!630726 tp_is_empty!5109)))

(declare-fun b!980156 () Bool)

(declare-fun tp!299479 () Bool)

(declare-fun tp!299480 () Bool)

(assert (=> b!980156 (= e!630726 (and tp!299479 tp!299480))))

(assert (=> b!979584 (= tp!299423 e!630726)))

(declare-fun b!980154 () Bool)

(declare-fun tp!299477 () Bool)

(declare-fun tp!299481 () Bool)

(assert (=> b!980154 (= e!630726 (and tp!299477 tp!299481))))

(assert (= (and b!979584 ((_ is ElementMatch!2733) (regOne!5978 r!15766))) b!980153))

(assert (= (and b!979584 ((_ is Concat!4566) (regOne!5978 r!15766))) b!980154))

(assert (= (and b!979584 ((_ is Star!2733) (regOne!5978 r!15766))) b!980155))

(assert (= (and b!979584 ((_ is Union!2733) (regOne!5978 r!15766))) b!980156))

(declare-fun b!980159 () Bool)

(declare-fun e!630727 () Bool)

(declare-fun tp!299483 () Bool)

(assert (=> b!980159 (= e!630727 tp!299483)))

(declare-fun b!980157 () Bool)

(assert (=> b!980157 (= e!630727 tp_is_empty!5109)))

(declare-fun b!980160 () Bool)

(declare-fun tp!299484 () Bool)

(declare-fun tp!299485 () Bool)

(assert (=> b!980160 (= e!630727 (and tp!299484 tp!299485))))

(assert (=> b!979584 (= tp!299426 e!630727)))

(declare-fun b!980158 () Bool)

(declare-fun tp!299482 () Bool)

(declare-fun tp!299486 () Bool)

(assert (=> b!980158 (= e!630727 (and tp!299482 tp!299486))))

(assert (= (and b!979584 ((_ is ElementMatch!2733) (regTwo!5978 r!15766))) b!980157))

(assert (= (and b!979584 ((_ is Concat!4566) (regTwo!5978 r!15766))) b!980158))

(assert (= (and b!979584 ((_ is Star!2733) (regTwo!5978 r!15766))) b!980159))

(assert (= (and b!979584 ((_ is Union!2733) (regTwo!5978 r!15766))) b!980160))

(declare-fun b!980163 () Bool)

(declare-fun e!630728 () Bool)

(declare-fun tp!299488 () Bool)

(assert (=> b!980163 (= e!630728 tp!299488)))

(declare-fun b!980161 () Bool)

(assert (=> b!980161 (= e!630728 tp_is_empty!5109)))

(declare-fun b!980164 () Bool)

(declare-fun tp!299489 () Bool)

(declare-fun tp!299490 () Bool)

(assert (=> b!980164 (= e!630728 (and tp!299489 tp!299490))))

(assert (=> b!979588 (= tp!299424 e!630728)))

(declare-fun b!980162 () Bool)

(declare-fun tp!299487 () Bool)

(declare-fun tp!299491 () Bool)

(assert (=> b!980162 (= e!630728 (and tp!299487 tp!299491))))

(assert (= (and b!979588 ((_ is ElementMatch!2733) (regOne!5979 r!15766))) b!980161))

(assert (= (and b!979588 ((_ is Concat!4566) (regOne!5979 r!15766))) b!980162))

(assert (= (and b!979588 ((_ is Star!2733) (regOne!5979 r!15766))) b!980163))

(assert (= (and b!979588 ((_ is Union!2733) (regOne!5979 r!15766))) b!980164))

(declare-fun b!980167 () Bool)

(declare-fun e!630729 () Bool)

(declare-fun tp!299493 () Bool)

(assert (=> b!980167 (= e!630729 tp!299493)))

(declare-fun b!980165 () Bool)

(assert (=> b!980165 (= e!630729 tp_is_empty!5109)))

(declare-fun b!980168 () Bool)

(declare-fun tp!299494 () Bool)

(declare-fun tp!299495 () Bool)

(assert (=> b!980168 (= e!630729 (and tp!299494 tp!299495))))

(assert (=> b!979588 (= tp!299427 e!630729)))

(declare-fun b!980166 () Bool)

(declare-fun tp!299492 () Bool)

(declare-fun tp!299496 () Bool)

(assert (=> b!980166 (= e!630729 (and tp!299492 tp!299496))))

(assert (= (and b!979588 ((_ is ElementMatch!2733) (regTwo!5979 r!15766))) b!980165))

(assert (= (and b!979588 ((_ is Concat!4566) (regTwo!5979 r!15766))) b!980166))

(assert (= (and b!979588 ((_ is Star!2733) (regTwo!5979 r!15766))) b!980167))

(assert (= (and b!979588 ((_ is Union!2733) (regTwo!5979 r!15766))) b!980168))

(declare-fun b!980173 () Bool)

(declare-fun e!630732 () Bool)

(declare-fun tp!299499 () Bool)

(assert (=> b!980173 (= e!630732 (and tp_is_empty!5109 tp!299499))))

(assert (=> b!979589 (= tp!299428 e!630732)))

(assert (= (and b!979589 ((_ is Cons!9947) (t!101009 s!10566))) b!980173))

(declare-fun b!980176 () Bool)

(declare-fun e!630733 () Bool)

(declare-fun tp!299501 () Bool)

(assert (=> b!980176 (= e!630733 tp!299501)))

(declare-fun b!980174 () Bool)

(assert (=> b!980174 (= e!630733 tp_is_empty!5109)))

(declare-fun b!980177 () Bool)

(declare-fun tp!299502 () Bool)

(declare-fun tp!299503 () Bool)

(assert (=> b!980177 (= e!630733 (and tp!299502 tp!299503))))

(assert (=> b!979586 (= tp!299425 e!630733)))

(declare-fun b!980175 () Bool)

(declare-fun tp!299500 () Bool)

(declare-fun tp!299504 () Bool)

(assert (=> b!980175 (= e!630733 (and tp!299500 tp!299504))))

(assert (= (and b!979586 ((_ is ElementMatch!2733) (reg!3062 r!15766))) b!980174))

(assert (= (and b!979586 ((_ is Concat!4566) (reg!3062 r!15766))) b!980175))

(assert (= (and b!979586 ((_ is Star!2733) (reg!3062 r!15766))) b!980176))

(assert (= (and b!979586 ((_ is Union!2733) (reg!3062 r!15766))) b!980177))

(check-sat (not b!979976) (not b!979811) (not b!979891) (not b!979890) (not b!980164) (not b!980062) (not b!980163) (not b!980061) (not bm!62896) (not d!288026) (not b!980154) (not b!980087) (not b!980167) (not b!980175) (not b!980005) (not b!979893) (not b!979814) tp_is_empty!5109 (not b!980067) (not b!980084) (not d!288006) (not b!979892) (not bm!62904) (not bm!62895) (not b!980176) (not d!288048) (not b!980177) (not b!979974) (not b!980162) (not b!980008) (not d!288014) (not d!288036) (not bm!62864) (not bm!62867) (not bm!62874) (not b!980074) (not b!980155) (not b!980158) (not b!980060) (not d!288034) (not bm!62863) (not b!980066) (not b!980133) (not d!287986) (not d!288020) (not bm!62903) (not d!288028) (not b!980085) (not d!288030) (not b!980120) (not d!288038) (not b!980156) (not b!979975) (not d!288040) (not b!980004) (not bm!62906) (not b!979973) (not bm!62892) (not b!979981) (not b!980049) (not b!980160) (not b!980091) (not b!980007) (not b!980092) (not b!980166) (not b!979980) (not bm!62910) (not bm!62889) (not b!980129) (not d!288032) (not b!980003) (not b!980159) (not bm!62890) (not bm!62907) (not b!980173) (not bm!62886) (not d!288022) (not b!979897) (not b!980136) (not b!979898) (not b!980006) (not b!980059) (not bm!62909) (not b!980168) (not d!288016) (not b!980086))
(check-sat)
(get-model)

(assert (=> d!288038 d!288044))

(assert (=> d!288038 d!288014))

(assert (=> d!288038 d!288036))

(assert (=> d!288038 d!288040))

(declare-fun d!288134 () Bool)

(assert (=> d!288134 (= (matchR!1269 (regOne!5978 r!15766) (_1!6486 lt!349924)) (matchR!1269 (removeUselessConcat!350 (regOne!5978 r!15766)) (_1!6486 lt!349924)))))

(assert (=> d!288134 true))

(declare-fun _$94!370 () Unit!15125)

(assert (=> d!288134 (= (choose!6217 (regOne!5978 r!15766) (_1!6486 lt!349924)) _$94!370)))

(declare-fun bs!243724 () Bool)

(assert (= bs!243724 d!288134))

(assert (=> bs!243724 m!1179399))

(assert (=> bs!243724 m!1179391))

(assert (=> bs!243724 m!1179391))

(assert (=> bs!243724 m!1179393))

(assert (=> d!288038 d!288134))

(declare-fun d!288148 () Bool)

(assert (=> d!288148 (= (isEmpty!6269 (_1!6486 lt!349924)) ((_ is Nil!9947) (_1!6486 lt!349924)))))

(assert (=> d!288014 d!288148))

(assert (=> d!288014 d!288044))

(declare-fun d!288152 () Bool)

(assert (=> d!288152 (= (isDefined!1944 lt!349974) (not (isEmpty!6271 lt!349974)))))

(declare-fun bs!243725 () Bool)

(assert (= bs!243725 d!288152))

(declare-fun m!1179929 () Bool)

(assert (=> bs!243725 m!1179929))

(assert (=> b!980004 d!288152))

(declare-fun d!288154 () Bool)

(assert (=> d!288154 (= (isEmpty!6269 (tail!1370 (_1!6486 lt!349924))) ((_ is Nil!9947) (tail!1370 (_1!6486 lt!349924))))))

(assert (=> b!980092 d!288154))

(declare-fun d!288156 () Bool)

(assert (=> d!288156 (= (tail!1370 (_1!6486 lt!349924)) (t!101009 (_1!6486 lt!349924)))))

(assert (=> b!980092 d!288156))

(declare-fun d!288158 () Bool)

(assert (=> d!288158 (= (head!1808 s!10566) (h!15348 s!10566))))

(assert (=> b!980062 d!288158))

(declare-fun d!288164 () Bool)

(assert (=> d!288164 (= (Exists!470 lambda!34915) (choose!6215 lambda!34915))))

(declare-fun bs!243727 () Bool)

(assert (= bs!243727 d!288164))

(declare-fun m!1179945 () Bool)

(assert (=> bs!243727 m!1179945))

(assert (=> d!288026 d!288164))

(declare-fun d!288166 () Bool)

(assert (=> d!288166 (= (Exists!470 lambda!34916) (choose!6215 lambda!34916))))

(declare-fun bs!243728 () Bool)

(assert (= bs!243728 d!288166))

(declare-fun m!1179947 () Bool)

(assert (=> bs!243728 m!1179947))

(assert (=> d!288026 d!288166))

(declare-fun bs!243770 () Bool)

(declare-fun d!288168 () Bool)

(assert (= bs!243770 (and d!288168 b!980142)))

(declare-fun lambda!34938 () Int)

(assert (=> bs!243770 (not (= lambda!34938 lambda!34918))))

(declare-fun bs!243771 () Bool)

(assert (= bs!243771 (and d!288168 b!979587)))

(assert (=> bs!243771 (not (= lambda!34938 lambda!34884))))

(declare-fun bs!243772 () Bool)

(assert (= bs!243772 (and d!288168 d!288020)))

(assert (=> bs!243772 (= lambda!34938 lambda!34910)))

(declare-fun bs!243773 () Bool)

(assert (= bs!243773 (and d!288168 d!288026)))

(assert (=> bs!243773 (not (= lambda!34938 lambda!34916))))

(declare-fun bs!243774 () Bool)

(assert (= bs!243774 (and d!288168 b!979815)))

(assert (=> bs!243774 (not (= lambda!34938 lambda!34895))))

(declare-fun bs!243775 () Bool)

(assert (= bs!243775 (and d!288168 b!979820)))

(assert (=> bs!243775 (not (= lambda!34938 lambda!34896))))

(assert (=> bs!243771 (= lambda!34938 lambda!34883)))

(assert (=> bs!243773 (= lambda!34938 lambda!34915)))

(declare-fun bs!243776 () Bool)

(assert (= bs!243776 (and d!288168 b!980137)))

(assert (=> bs!243776 (not (= lambda!34938 lambda!34917))))

(assert (=> d!288168 true))

(assert (=> d!288168 true))

(assert (=> d!288168 true))

(declare-fun lambda!34939 () Int)

(assert (=> bs!243770 (= (and (= s!10566 (_1!6486 lt!349924)) (= (regOne!5978 r!15766) (regOne!5978 (regOne!5978 r!15766))) (= EmptyExpr!2733 (regTwo!5978 (regOne!5978 r!15766)))) (= lambda!34939 lambda!34918))))

(assert (=> bs!243771 (= lambda!34939 lambda!34884)))

(declare-fun bs!243777 () Bool)

(assert (= bs!243777 d!288168))

(assert (=> bs!243777 (not (= lambda!34939 lambda!34938))))

(assert (=> bs!243772 (not (= lambda!34939 lambda!34910))))

(assert (=> bs!243773 (= lambda!34939 lambda!34916)))

(assert (=> bs!243774 (not (= lambda!34939 lambda!34895))))

(assert (=> bs!243775 (= (= EmptyExpr!2733 (regTwo!5978 r!15766)) (= lambda!34939 lambda!34896))))

(assert (=> bs!243771 (not (= lambda!34939 lambda!34883))))

(assert (=> bs!243773 (not (= lambda!34939 lambda!34915))))

(assert (=> bs!243776 (not (= lambda!34939 lambda!34917))))

(assert (=> d!288168 true))

(assert (=> d!288168 true))

(assert (=> d!288168 true))

(assert (=> d!288168 (= (Exists!470 lambda!34938) (Exists!470 lambda!34939))))

(assert (=> d!288168 true))

(declare-fun _$90!834 () Unit!15125)

(assert (=> d!288168 (= (choose!6216 (regOne!5978 r!15766) EmptyExpr!2733 s!10566) _$90!834)))

(declare-fun m!1179981 () Bool)

(assert (=> bs!243777 m!1179981))

(declare-fun m!1179983 () Bool)

(assert (=> bs!243777 m!1179983))

(assert (=> d!288026 d!288168))

(assert (=> d!288026 d!288044))

(assert (=> b!979973 d!288154))

(assert (=> b!979973 d!288156))

(declare-fun b!980522 () Bool)

(declare-fun e!630933 () Bool)

(declare-fun lt!350019 () Bool)

(assert (=> b!980522 (= e!630933 (not lt!350019))))

(declare-fun b!980523 () Bool)

(declare-fun e!630937 () Bool)

(declare-fun e!630934 () Bool)

(assert (=> b!980523 (= e!630937 e!630934)))

(declare-fun res!445099 () Bool)

(assert (=> b!980523 (=> (not res!445099) (not e!630934))))

(assert (=> b!980523 (= res!445099 (not lt!350019))))

(declare-fun b!980524 () Bool)

(declare-fun res!445100 () Bool)

(declare-fun e!630936 () Bool)

(assert (=> b!980524 (=> (not res!445100) (not e!630936))))

(assert (=> b!980524 (= res!445100 (isEmpty!6269 (tail!1370 (_2!6486 (get!3447 lt!349974)))))))

(declare-fun b!980525 () Bool)

(assert (=> b!980525 (= e!630936 (= (head!1808 (_2!6486 (get!3447 lt!349974))) (c!160088 EmptyExpr!2733)))))

(declare-fun b!980526 () Bool)

(declare-fun e!630932 () Bool)

(assert (=> b!980526 (= e!630932 (matchR!1269 (derivativeStep!655 EmptyExpr!2733 (head!1808 (_2!6486 (get!3447 lt!349974)))) (tail!1370 (_2!6486 (get!3447 lt!349974)))))))

(declare-fun b!980527 () Bool)

(declare-fun e!630935 () Bool)

(assert (=> b!980527 (= e!630935 (not (= (head!1808 (_2!6486 (get!3447 lt!349974))) (c!160088 EmptyExpr!2733))))))

(declare-fun b!980528 () Bool)

(declare-fun e!630938 () Bool)

(assert (=> b!980528 (= e!630938 e!630933)))

(declare-fun c!160331 () Bool)

(assert (=> b!980528 (= c!160331 ((_ is EmptyLang!2733) EmptyExpr!2733))))

(declare-fun b!980529 () Bool)

(declare-fun res!445101 () Bool)

(assert (=> b!980529 (=> res!445101 e!630937)))

(assert (=> b!980529 (= res!445101 (not ((_ is ElementMatch!2733) EmptyExpr!2733)))))

(assert (=> b!980529 (= e!630933 e!630937)))

(declare-fun b!980530 () Bool)

(declare-fun res!445096 () Bool)

(assert (=> b!980530 (=> res!445096 e!630937)))

(assert (=> b!980530 (= res!445096 e!630936)))

(declare-fun res!445098 () Bool)

(assert (=> b!980530 (=> (not res!445098) (not e!630936))))

(assert (=> b!980530 (= res!445098 lt!350019)))

(declare-fun b!980532 () Bool)

(declare-fun res!445095 () Bool)

(assert (=> b!980532 (=> res!445095 e!630935)))

(assert (=> b!980532 (= res!445095 (not (isEmpty!6269 (tail!1370 (_2!6486 (get!3447 lt!349974))))))))

(declare-fun b!980533 () Bool)

(declare-fun res!445102 () Bool)

(assert (=> b!980533 (=> (not res!445102) (not e!630936))))

(declare-fun call!62995 () Bool)

(assert (=> b!980533 (= res!445102 (not call!62995))))

(declare-fun bm!62990 () Bool)

(assert (=> bm!62990 (= call!62995 (isEmpty!6269 (_2!6486 (get!3447 lt!349974))))))

(declare-fun b!980534 () Bool)

(assert (=> b!980534 (= e!630938 (= lt!350019 call!62995))))

(declare-fun b!980535 () Bool)

(assert (=> b!980535 (= e!630934 e!630935)))

(declare-fun res!445097 () Bool)

(assert (=> b!980535 (=> res!445097 e!630935)))

(assert (=> b!980535 (= res!445097 call!62995)))

(declare-fun b!980531 () Bool)

(assert (=> b!980531 (= e!630932 (nullable!849 EmptyExpr!2733))))

(declare-fun d!288182 () Bool)

(assert (=> d!288182 e!630938))

(declare-fun c!160332 () Bool)

(assert (=> d!288182 (= c!160332 ((_ is EmptyExpr!2733) EmptyExpr!2733))))

(assert (=> d!288182 (= lt!350019 e!630932)))

(declare-fun c!160330 () Bool)

(assert (=> d!288182 (= c!160330 (isEmpty!6269 (_2!6486 (get!3447 lt!349974))))))

(assert (=> d!288182 (validRegex!1202 EmptyExpr!2733)))

(assert (=> d!288182 (= (matchR!1269 EmptyExpr!2733 (_2!6486 (get!3447 lt!349974))) lt!350019)))

(assert (= (and d!288182 c!160330) b!980531))

(assert (= (and d!288182 (not c!160330)) b!980526))

(assert (= (and d!288182 c!160332) b!980534))

(assert (= (and d!288182 (not c!160332)) b!980528))

(assert (= (and b!980528 c!160331) b!980522))

(assert (= (and b!980528 (not c!160331)) b!980529))

(assert (= (and b!980529 (not res!445101)) b!980530))

(assert (= (and b!980530 res!445098) b!980533))

(assert (= (and b!980533 res!445102) b!980524))

(assert (= (and b!980524 res!445100) b!980525))

(assert (= (and b!980530 (not res!445096)) b!980523))

(assert (= (and b!980523 res!445099) b!980535))

(assert (= (and b!980535 (not res!445097)) b!980532))

(assert (= (and b!980532 (not res!445095)) b!980527))

(assert (= (or b!980534 b!980533 b!980535) bm!62990))

(declare-fun m!1179985 () Bool)

(assert (=> bm!62990 m!1179985))

(declare-fun m!1179987 () Bool)

(assert (=> b!980531 m!1179987))

(declare-fun m!1179989 () Bool)

(assert (=> b!980526 m!1179989))

(assert (=> b!980526 m!1179989))

(declare-fun m!1179991 () Bool)

(assert (=> b!980526 m!1179991))

(declare-fun m!1179993 () Bool)

(assert (=> b!980526 m!1179993))

(assert (=> b!980526 m!1179991))

(assert (=> b!980526 m!1179993))

(declare-fun m!1179995 () Bool)

(assert (=> b!980526 m!1179995))

(assert (=> d!288182 m!1179985))

(declare-fun m!1179997 () Bool)

(assert (=> d!288182 m!1179997))

(assert (=> b!980527 m!1179989))

(assert (=> b!980525 m!1179989))

(assert (=> b!980524 m!1179993))

(assert (=> b!980524 m!1179993))

(declare-fun m!1179999 () Bool)

(assert (=> b!980524 m!1179999))

(assert (=> b!980532 m!1179993))

(assert (=> b!980532 m!1179993))

(assert (=> b!980532 m!1179999))

(assert (=> b!980006 d!288182))

(declare-fun d!288184 () Bool)

(assert (=> d!288184 (= (get!3447 lt!349974) (v!19718 lt!349974))))

(assert (=> b!980006 d!288184))

(declare-fun bs!243810 () Bool)

(declare-fun b!980541 () Bool)

(assert (= bs!243810 (and b!980541 b!980142)))

(declare-fun lambda!34942 () Int)

(assert (=> bs!243810 (not (= lambda!34942 lambda!34918))))

(declare-fun bs!243811 () Bool)

(assert (= bs!243811 (and b!980541 b!979587)))

(assert (=> bs!243811 (not (= lambda!34942 lambda!34884))))

(declare-fun bs!243812 () Bool)

(assert (= bs!243812 (and b!980541 d!288168)))

(assert (=> bs!243812 (not (= lambda!34942 lambda!34938))))

(declare-fun bs!243813 () Bool)

(assert (= bs!243813 (and b!980541 d!288020)))

(assert (=> bs!243813 (not (= lambda!34942 lambda!34910))))

(declare-fun bs!243814 () Bool)

(assert (= bs!243814 (and b!980541 d!288026)))

(assert (=> bs!243814 (not (= lambda!34942 lambda!34916))))

(declare-fun bs!243815 () Bool)

(assert (= bs!243815 (and b!980541 b!979820)))

(assert (=> bs!243815 (not (= lambda!34942 lambda!34896))))

(assert (=> bs!243811 (not (= lambda!34942 lambda!34883))))

(assert (=> bs!243812 (not (= lambda!34942 lambda!34939))))

(declare-fun bs!243816 () Bool)

(assert (= bs!243816 (and b!980541 b!979815)))

(assert (=> bs!243816 (= (and (= (_1!6486 lt!349924) s!10566) (= (reg!3062 (regTwo!5979 (regOne!5978 r!15766))) (reg!3062 r!15766)) (= (regTwo!5979 (regOne!5978 r!15766)) r!15766)) (= lambda!34942 lambda!34895))))

(assert (=> bs!243814 (not (= lambda!34942 lambda!34915))))

(declare-fun bs!243817 () Bool)

(assert (= bs!243817 (and b!980541 b!980137)))

(assert (=> bs!243817 (= (and (= (reg!3062 (regTwo!5979 (regOne!5978 r!15766))) (reg!3062 (regOne!5978 r!15766))) (= (regTwo!5979 (regOne!5978 r!15766)) (regOne!5978 r!15766))) (= lambda!34942 lambda!34917))))

(assert (=> b!980541 true))

(assert (=> b!980541 true))

(declare-fun bs!243820 () Bool)

(declare-fun b!980546 () Bool)

(assert (= bs!243820 (and b!980546 b!980142)))

(declare-fun lambda!34943 () Int)

(assert (=> bs!243820 (= (and (= (regOne!5978 (regTwo!5979 (regOne!5978 r!15766))) (regOne!5978 (regOne!5978 r!15766))) (= (regTwo!5978 (regTwo!5979 (regOne!5978 r!15766))) (regTwo!5978 (regOne!5978 r!15766)))) (= lambda!34943 lambda!34918))))

(declare-fun bs!243821 () Bool)

(assert (= bs!243821 (and b!980546 b!979587)))

(assert (=> bs!243821 (= (and (= (_1!6486 lt!349924) s!10566) (= (regOne!5978 (regTwo!5979 (regOne!5978 r!15766))) (regOne!5978 r!15766)) (= (regTwo!5978 (regTwo!5979 (regOne!5978 r!15766))) EmptyExpr!2733)) (= lambda!34943 lambda!34884))))

(declare-fun bs!243822 () Bool)

(assert (= bs!243822 (and b!980546 d!288168)))

(assert (=> bs!243822 (not (= lambda!34943 lambda!34938))))

(declare-fun bs!243823 () Bool)

(assert (= bs!243823 (and b!980546 d!288020)))

(assert (=> bs!243823 (not (= lambda!34943 lambda!34910))))

(declare-fun bs!243824 () Bool)

(assert (= bs!243824 (and b!980546 d!288026)))

(assert (=> bs!243824 (= (and (= (_1!6486 lt!349924) s!10566) (= (regOne!5978 (regTwo!5979 (regOne!5978 r!15766))) (regOne!5978 r!15766)) (= (regTwo!5978 (regTwo!5979 (regOne!5978 r!15766))) EmptyExpr!2733)) (= lambda!34943 lambda!34916))))

(declare-fun bs!243825 () Bool)

(assert (= bs!243825 (and b!980546 b!980541)))

(assert (=> bs!243825 (not (= lambda!34943 lambda!34942))))

(declare-fun bs!243826 () Bool)

(assert (= bs!243826 (and b!980546 b!979820)))

(assert (=> bs!243826 (= (and (= (_1!6486 lt!349924) s!10566) (= (regOne!5978 (regTwo!5979 (regOne!5978 r!15766))) (regOne!5978 r!15766)) (= (regTwo!5978 (regTwo!5979 (regOne!5978 r!15766))) (regTwo!5978 r!15766))) (= lambda!34943 lambda!34896))))

(assert (=> bs!243821 (not (= lambda!34943 lambda!34883))))

(assert (=> bs!243822 (= (and (= (_1!6486 lt!349924) s!10566) (= (regOne!5978 (regTwo!5979 (regOne!5978 r!15766))) (regOne!5978 r!15766)) (= (regTwo!5978 (regTwo!5979 (regOne!5978 r!15766))) EmptyExpr!2733)) (= lambda!34943 lambda!34939))))

(declare-fun bs!243827 () Bool)

(assert (= bs!243827 (and b!980546 b!979815)))

(assert (=> bs!243827 (not (= lambda!34943 lambda!34895))))

(assert (=> bs!243824 (not (= lambda!34943 lambda!34915))))

(declare-fun bs!243828 () Bool)

(assert (= bs!243828 (and b!980546 b!980137)))

(assert (=> bs!243828 (not (= lambda!34943 lambda!34917))))

(assert (=> b!980546 true))

(assert (=> b!980546 true))

(declare-fun b!980536 () Bool)

(declare-fun e!630944 () Bool)

(declare-fun e!630940 () Bool)

(assert (=> b!980536 (= e!630944 e!630940)))

(declare-fun c!160335 () Bool)

(assert (=> b!980536 (= c!160335 ((_ is Star!2733) (regTwo!5979 (regOne!5978 r!15766))))))

(declare-fun b!980537 () Bool)

(declare-fun e!630941 () Bool)

(assert (=> b!980537 (= e!630944 e!630941)))

(declare-fun res!445105 () Bool)

(assert (=> b!980537 (= res!445105 (matchRSpec!532 (regOne!5979 (regTwo!5979 (regOne!5978 r!15766))) (_1!6486 lt!349924)))))

(assert (=> b!980537 (=> res!445105 e!630941)))

(declare-fun b!980538 () Bool)

(declare-fun e!630942 () Bool)

(declare-fun call!62996 () Bool)

(assert (=> b!980538 (= e!630942 call!62996)))

(declare-fun b!980539 () Bool)

(declare-fun c!160336 () Bool)

(assert (=> b!980539 (= c!160336 ((_ is ElementMatch!2733) (regTwo!5979 (regOne!5978 r!15766))))))

(declare-fun e!630945 () Bool)

(declare-fun e!630943 () Bool)

(assert (=> b!980539 (= e!630945 e!630943)))

(declare-fun d!288186 () Bool)

(declare-fun c!160334 () Bool)

(assert (=> d!288186 (= c!160334 ((_ is EmptyExpr!2733) (regTwo!5979 (regOne!5978 r!15766))))))

(assert (=> d!288186 (= (matchRSpec!532 (regTwo!5979 (regOne!5978 r!15766)) (_1!6486 lt!349924)) e!630942)))

(declare-fun b!980540 () Bool)

(assert (=> b!980540 (= e!630941 (matchRSpec!532 (regTwo!5979 (regTwo!5979 (regOne!5978 r!15766))) (_1!6486 lt!349924)))))

(declare-fun bm!62991 () Bool)

(assert (=> bm!62991 (= call!62996 (isEmpty!6269 (_1!6486 lt!349924)))))

(declare-fun e!630939 () Bool)

(declare-fun call!62997 () Bool)

(assert (=> b!980541 (= e!630939 call!62997)))

(declare-fun b!980542 () Bool)

(assert (=> b!980542 (= e!630942 e!630945)))

(declare-fun res!445104 () Bool)

(assert (=> b!980542 (= res!445104 (not ((_ is EmptyLang!2733) (regTwo!5979 (regOne!5978 r!15766)))))))

(assert (=> b!980542 (=> (not res!445104) (not e!630945))))

(declare-fun b!980543 () Bool)

(declare-fun c!160333 () Bool)

(assert (=> b!980543 (= c!160333 ((_ is Union!2733) (regTwo!5979 (regOne!5978 r!15766))))))

(assert (=> b!980543 (= e!630943 e!630944)))

(declare-fun b!980544 () Bool)

(assert (=> b!980544 (= e!630943 (= (_1!6486 lt!349924) (Cons!9947 (c!160088 (regTwo!5979 (regOne!5978 r!15766))) Nil!9947)))))

(declare-fun b!980545 () Bool)

(declare-fun res!445103 () Bool)

(assert (=> b!980545 (=> res!445103 e!630939)))

(assert (=> b!980545 (= res!445103 call!62996)))

(assert (=> b!980545 (= e!630940 e!630939)))

(assert (=> b!980546 (= e!630940 call!62997)))

(declare-fun bm!62992 () Bool)

(assert (=> bm!62992 (= call!62997 (Exists!470 (ite c!160335 lambda!34942 lambda!34943)))))

(assert (= (and d!288186 c!160334) b!980538))

(assert (= (and d!288186 (not c!160334)) b!980542))

(assert (= (and b!980542 res!445104) b!980539))

(assert (= (and b!980539 c!160336) b!980544))

(assert (= (and b!980539 (not c!160336)) b!980543))

(assert (= (and b!980543 c!160333) b!980537))

(assert (= (and b!980543 (not c!160333)) b!980536))

(assert (= (and b!980537 (not res!445105)) b!980540))

(assert (= (and b!980536 c!160335) b!980545))

(assert (= (and b!980536 (not c!160335)) b!980546))

(assert (= (and b!980545 (not res!445103)) b!980541))

(assert (= (or b!980541 b!980546) bm!62992))

(assert (= (or b!980538 b!980545) bm!62991))

(declare-fun m!1180033 () Bool)

(assert (=> b!980537 m!1180033))

(declare-fun m!1180035 () Bool)

(assert (=> b!980540 m!1180035))

(assert (=> bm!62991 m!1179557))

(declare-fun m!1180037 () Bool)

(assert (=> bm!62992 m!1180037))

(assert (=> b!980136 d!288186))

(declare-fun d!288202 () Bool)

(assert (=> d!288202 (= (isEmpty!6269 (tail!1370 s!10566)) ((_ is Nil!9947) (tail!1370 s!10566)))))

(assert (=> b!979890 d!288202))

(declare-fun d!288204 () Bool)

(assert (=> d!288204 (= (tail!1370 s!10566) (t!101009 s!10566))))

(assert (=> b!979890 d!288204))

(declare-fun d!288206 () Bool)

(declare-fun nullableFct!204 (Regex!2733) Bool)

(assert (=> d!288206 (= (nullable!849 lt!349986) (nullableFct!204 lt!349986))))

(declare-fun bs!243829 () Bool)

(assert (= bs!243829 d!288206))

(declare-fun m!1180039 () Bool)

(assert (=> bs!243829 m!1180039))

(assert (=> b!980074 d!288206))

(declare-fun d!288208 () Bool)

(assert (=> d!288208 (= (nullable!849 (regOne!5978 r!15766)) (nullableFct!204 (regOne!5978 r!15766)))))

(declare-fun bs!243830 () Bool)

(assert (= bs!243830 d!288208))

(declare-fun m!1180041 () Bool)

(assert (=> bs!243830 m!1180041))

(assert (=> b!980074 d!288208))

(assert (=> d!288006 d!287986))

(assert (=> d!288006 d!287970))

(declare-fun d!288210 () Bool)

(assert (=> d!288210 (= (matchR!1269 r!15766 s!10566) (matchRSpec!532 r!15766 s!10566))))

(assert (=> d!288210 true))

(declare-fun _$88!3049 () Unit!15125)

(assert (=> d!288210 (= (choose!6213 r!15766 s!10566) _$88!3049)))

(declare-fun bs!243831 () Bool)

(assert (= bs!243831 d!288210))

(assert (=> bs!243831 m!1179405))

(assert (=> bs!243831 m!1179403))

(assert (=> d!288006 d!288210))

(assert (=> d!288006 d!288042))

(assert (=> bm!62896 d!288148))

(declare-fun b!980685 () Bool)

(declare-fun e!630994 () Bool)

(declare-fun lt!350022 () Bool)

(assert (=> b!980685 (= e!630994 (not lt!350022))))

(declare-fun b!980686 () Bool)

(declare-fun e!630998 () Bool)

(declare-fun e!630995 () Bool)

(assert (=> b!980686 (= e!630998 e!630995)))

(declare-fun res!445131 () Bool)

(assert (=> b!980686 (=> (not res!445131) (not e!630995))))

(assert (=> b!980686 (= res!445131 (not lt!350022))))

(declare-fun b!980687 () Bool)

(declare-fun res!445132 () Bool)

(declare-fun e!630997 () Bool)

(assert (=> b!980687 (=> (not res!445132) (not e!630997))))

(assert (=> b!980687 (= res!445132 (isEmpty!6269 (tail!1370 (tail!1370 s!10566))))))

(declare-fun b!980688 () Bool)

(assert (=> b!980688 (= e!630997 (= (head!1808 (tail!1370 s!10566)) (c!160088 (derivativeStep!655 r!15766 (head!1808 s!10566)))))))

(declare-fun b!980689 () Bool)

(declare-fun e!630993 () Bool)

(assert (=> b!980689 (= e!630993 (matchR!1269 (derivativeStep!655 (derivativeStep!655 r!15766 (head!1808 s!10566)) (head!1808 (tail!1370 s!10566))) (tail!1370 (tail!1370 s!10566))))))

(declare-fun b!980690 () Bool)

(declare-fun e!630996 () Bool)

(assert (=> b!980690 (= e!630996 (not (= (head!1808 (tail!1370 s!10566)) (c!160088 (derivativeStep!655 r!15766 (head!1808 s!10566))))))))

(declare-fun b!980691 () Bool)

(declare-fun e!630999 () Bool)

(assert (=> b!980691 (= e!630999 e!630994)))

(declare-fun c!160346 () Bool)

(assert (=> b!980691 (= c!160346 ((_ is EmptyLang!2733) (derivativeStep!655 r!15766 (head!1808 s!10566))))))

(declare-fun b!980692 () Bool)

(declare-fun res!445133 () Bool)

(assert (=> b!980692 (=> res!445133 e!630998)))

(assert (=> b!980692 (= res!445133 (not ((_ is ElementMatch!2733) (derivativeStep!655 r!15766 (head!1808 s!10566)))))))

(assert (=> b!980692 (= e!630994 e!630998)))

(declare-fun b!980693 () Bool)

(declare-fun res!445128 () Bool)

(assert (=> b!980693 (=> res!445128 e!630998)))

(assert (=> b!980693 (= res!445128 e!630997)))

(declare-fun res!445130 () Bool)

(assert (=> b!980693 (=> (not res!445130) (not e!630997))))

(assert (=> b!980693 (= res!445130 lt!350022)))

(declare-fun b!980695 () Bool)

(declare-fun res!445127 () Bool)

(assert (=> b!980695 (=> res!445127 e!630996)))

(assert (=> b!980695 (= res!445127 (not (isEmpty!6269 (tail!1370 (tail!1370 s!10566)))))))

(declare-fun b!980696 () Bool)

(declare-fun res!445134 () Bool)

(assert (=> b!980696 (=> (not res!445134) (not e!630997))))

(declare-fun call!63003 () Bool)

(assert (=> b!980696 (= res!445134 (not call!63003))))

(declare-fun bm!62998 () Bool)

(assert (=> bm!62998 (= call!63003 (isEmpty!6269 (tail!1370 s!10566)))))

(declare-fun b!980697 () Bool)

(assert (=> b!980697 (= e!630999 (= lt!350022 call!63003))))

(declare-fun b!980698 () Bool)

(assert (=> b!980698 (= e!630995 e!630996)))

(declare-fun res!445129 () Bool)

(assert (=> b!980698 (=> res!445129 e!630996)))

(assert (=> b!980698 (= res!445129 call!63003)))

(declare-fun b!980694 () Bool)

(assert (=> b!980694 (= e!630993 (nullable!849 (derivativeStep!655 r!15766 (head!1808 s!10566))))))

(declare-fun d!288212 () Bool)

(assert (=> d!288212 e!630999))

(declare-fun c!160347 () Bool)

(assert (=> d!288212 (= c!160347 ((_ is EmptyExpr!2733) (derivativeStep!655 r!15766 (head!1808 s!10566))))))

(assert (=> d!288212 (= lt!350022 e!630993)))

(declare-fun c!160345 () Bool)

(assert (=> d!288212 (= c!160345 (isEmpty!6269 (tail!1370 s!10566)))))

(assert (=> d!288212 (validRegex!1202 (derivativeStep!655 r!15766 (head!1808 s!10566)))))

(assert (=> d!288212 (= (matchR!1269 (derivativeStep!655 r!15766 (head!1808 s!10566)) (tail!1370 s!10566)) lt!350022)))

(assert (= (and d!288212 c!160345) b!980694))

(assert (= (and d!288212 (not c!160345)) b!980689))

(assert (= (and d!288212 c!160347) b!980697))

(assert (= (and d!288212 (not c!160347)) b!980691))

(assert (= (and b!980691 c!160346) b!980685))

(assert (= (and b!980691 (not c!160346)) b!980692))

(assert (= (and b!980692 (not res!445133)) b!980693))

(assert (= (and b!980693 res!445130) b!980696))

(assert (= (and b!980696 res!445134) b!980687))

(assert (= (and b!980687 res!445132) b!980688))

(assert (= (and b!980693 (not res!445128)) b!980686))

(assert (= (and b!980686 res!445131) b!980698))

(assert (= (and b!980698 (not res!445129)) b!980695))

(assert (= (and b!980695 (not res!445127)) b!980690))

(assert (= (or b!980697 b!980696 b!980698) bm!62998))

(assert (=> bm!62998 m!1179537))

(assert (=> bm!62998 m!1179541))

(assert (=> b!980694 m!1179535))

(declare-fun m!1180043 () Bool)

(assert (=> b!980694 m!1180043))

(assert (=> b!980689 m!1179537))

(declare-fun m!1180045 () Bool)

(assert (=> b!980689 m!1180045))

(assert (=> b!980689 m!1179535))

(assert (=> b!980689 m!1180045))

(declare-fun m!1180047 () Bool)

(assert (=> b!980689 m!1180047))

(assert (=> b!980689 m!1179537))

(declare-fun m!1180049 () Bool)

(assert (=> b!980689 m!1180049))

(assert (=> b!980689 m!1180047))

(assert (=> b!980689 m!1180049))

(declare-fun m!1180051 () Bool)

(assert (=> b!980689 m!1180051))

(assert (=> d!288212 m!1179537))

(assert (=> d!288212 m!1179541))

(assert (=> d!288212 m!1179535))

(declare-fun m!1180053 () Bool)

(assert (=> d!288212 m!1180053))

(assert (=> b!980690 m!1179537))

(assert (=> b!980690 m!1180045))

(assert (=> b!980688 m!1179537))

(assert (=> b!980688 m!1180045))

(assert (=> b!980687 m!1179537))

(assert (=> b!980687 m!1180049))

(assert (=> b!980687 m!1180049))

(declare-fun m!1180055 () Bool)

(assert (=> b!980687 m!1180055))

(assert (=> b!980695 m!1179537))

(assert (=> b!980695 m!1180049))

(assert (=> b!980695 m!1180049))

(assert (=> b!980695 m!1180055))

(assert (=> b!979892 d!288212))

(declare-fun bm!63007 () Bool)

(declare-fun call!63012 () Regex!2733)

(declare-fun call!63013 () Regex!2733)

(assert (=> bm!63007 (= call!63012 call!63013)))

(declare-fun d!288214 () Bool)

(declare-fun lt!350025 () Regex!2733)

(assert (=> d!288214 (validRegex!1202 lt!350025)))

(declare-fun e!631012 () Regex!2733)

(assert (=> d!288214 (= lt!350025 e!631012)))

(declare-fun c!160361 () Bool)

(assert (=> d!288214 (= c!160361 (or ((_ is EmptyExpr!2733) r!15766) ((_ is EmptyLang!2733) r!15766)))))

(assert (=> d!288214 (validRegex!1202 r!15766)))

(assert (=> d!288214 (= (derivativeStep!655 r!15766 (head!1808 s!10566)) lt!350025)))

(declare-fun b!980719 () Bool)

(declare-fun e!631014 () Regex!2733)

(assert (=> b!980719 (= e!631014 (Concat!4566 call!63013 r!15766))))

(declare-fun b!980720 () Bool)

(declare-fun e!631013 () Regex!2733)

(declare-fun call!63014 () Regex!2733)

(declare-fun call!63015 () Regex!2733)

(assert (=> b!980720 (= e!631013 (Union!2733 call!63014 call!63015))))

(declare-fun c!160360 () Bool)

(declare-fun bm!63008 () Bool)

(assert (=> bm!63008 (= call!63015 (derivativeStep!655 (ite c!160360 (regTwo!5979 r!15766) (regOne!5978 r!15766)) (head!1808 s!10566)))))

(declare-fun b!980721 () Bool)

(declare-fun c!160362 () Bool)

(assert (=> b!980721 (= c!160362 (nullable!849 (regOne!5978 r!15766)))))

(declare-fun e!631011 () Regex!2733)

(assert (=> b!980721 (= e!631014 e!631011)))

(declare-fun bm!63009 () Bool)

(assert (=> bm!63009 (= call!63013 call!63014)))

(declare-fun bm!63010 () Bool)

(declare-fun c!160359 () Bool)

(assert (=> bm!63010 (= call!63014 (derivativeStep!655 (ite c!160360 (regOne!5979 r!15766) (ite c!160359 (reg!3062 r!15766) (ite c!160362 (regTwo!5978 r!15766) (regOne!5978 r!15766)))) (head!1808 s!10566)))))

(declare-fun b!980722 () Bool)

(assert (=> b!980722 (= e!631011 (Union!2733 (Concat!4566 call!63015 (regTwo!5978 r!15766)) call!63012))))

(declare-fun b!980723 () Bool)

(declare-fun e!631010 () Regex!2733)

(assert (=> b!980723 (= e!631010 (ite (= (head!1808 s!10566) (c!160088 r!15766)) EmptyExpr!2733 EmptyLang!2733))))

(declare-fun b!980724 () Bool)

(assert (=> b!980724 (= e!631013 e!631014)))

(assert (=> b!980724 (= c!160359 ((_ is Star!2733) r!15766))))

(declare-fun b!980725 () Bool)

(assert (=> b!980725 (= e!631011 (Union!2733 (Concat!4566 call!63012 (regTwo!5978 r!15766)) EmptyLang!2733))))

(declare-fun b!980726 () Bool)

(assert (=> b!980726 (= e!631012 e!631010)))

(declare-fun c!160358 () Bool)

(assert (=> b!980726 (= c!160358 ((_ is ElementMatch!2733) r!15766))))

(declare-fun b!980727 () Bool)

(assert (=> b!980727 (= c!160360 ((_ is Union!2733) r!15766))))

(assert (=> b!980727 (= e!631010 e!631013)))

(declare-fun b!980728 () Bool)

(assert (=> b!980728 (= e!631012 EmptyLang!2733)))

(assert (= (and d!288214 c!160361) b!980728))

(assert (= (and d!288214 (not c!160361)) b!980726))

(assert (= (and b!980726 c!160358) b!980723))

(assert (= (and b!980726 (not c!160358)) b!980727))

(assert (= (and b!980727 c!160360) b!980720))

(assert (= (and b!980727 (not c!160360)) b!980724))

(assert (= (and b!980724 c!160359) b!980719))

(assert (= (and b!980724 (not c!160359)) b!980721))

(assert (= (and b!980721 c!160362) b!980722))

(assert (= (and b!980721 (not c!160362)) b!980725))

(assert (= (or b!980722 b!980725) bm!63007))

(assert (= (or b!980719 bm!63007) bm!63009))

(assert (= (or b!980720 bm!63009) bm!63010))

(assert (= (or b!980720 b!980722) bm!63008))

(declare-fun m!1180057 () Bool)

(assert (=> d!288214 m!1180057))

(assert (=> d!288214 m!1179401))

(assert (=> bm!63008 m!1179533))

(declare-fun m!1180059 () Bool)

(assert (=> bm!63008 m!1180059))

(assert (=> b!980721 m!1179559))

(assert (=> bm!63010 m!1179533))

(declare-fun m!1180061 () Bool)

(assert (=> bm!63010 m!1180061))

(assert (=> b!979892 d!288214))

(assert (=> b!979892 d!288158))

(assert (=> b!979892 d!288204))

(declare-fun d!288216 () Bool)

(assert (=> d!288216 (= (nullable!849 (removeUselessConcat!350 r!15766)) (nullableFct!204 (removeUselessConcat!350 r!15766)))))

(declare-fun bs!243832 () Bool)

(assert (= bs!243832 d!288216))

(assert (=> bs!243832 m!1179389))

(declare-fun m!1180063 () Bool)

(assert (=> bs!243832 m!1180063))

(assert (=> b!980066 d!288216))

(declare-fun b!980729 () Bool)

(declare-fun e!631016 () Bool)

(declare-fun lt!350026 () Bool)

(assert (=> b!980729 (= e!631016 (not lt!350026))))

(declare-fun b!980730 () Bool)

(declare-fun e!631020 () Bool)

(declare-fun e!631017 () Bool)

(assert (=> b!980730 (= e!631020 e!631017)))

(declare-fun res!445139 () Bool)

(assert (=> b!980730 (=> (not res!445139) (not e!631017))))

(assert (=> b!980730 (= res!445139 (not lt!350026))))

(declare-fun b!980731 () Bool)

(declare-fun res!445140 () Bool)

(declare-fun e!631019 () Bool)

(assert (=> b!980731 (=> (not res!445140) (not e!631019))))

(assert (=> b!980731 (= res!445140 (isEmpty!6269 (tail!1370 (tail!1370 (_1!6486 lt!349924)))))))

(declare-fun b!980732 () Bool)

(assert (=> b!980732 (= e!631019 (= (head!1808 (tail!1370 (_1!6486 lt!349924))) (c!160088 (derivativeStep!655 (regOne!5978 r!15766) (head!1808 (_1!6486 lt!349924))))))))

(declare-fun b!980733 () Bool)

(declare-fun e!631015 () Bool)

(assert (=> b!980733 (= e!631015 (matchR!1269 (derivativeStep!655 (derivativeStep!655 (regOne!5978 r!15766) (head!1808 (_1!6486 lt!349924))) (head!1808 (tail!1370 (_1!6486 lt!349924)))) (tail!1370 (tail!1370 (_1!6486 lt!349924)))))))

(declare-fun b!980734 () Bool)

(declare-fun e!631018 () Bool)

(assert (=> b!980734 (= e!631018 (not (= (head!1808 (tail!1370 (_1!6486 lt!349924))) (c!160088 (derivativeStep!655 (regOne!5978 r!15766) (head!1808 (_1!6486 lt!349924)))))))))

(declare-fun b!980735 () Bool)

(declare-fun e!631021 () Bool)

(assert (=> b!980735 (= e!631021 e!631016)))

(declare-fun c!160364 () Bool)

(assert (=> b!980735 (= c!160364 ((_ is EmptyLang!2733) (derivativeStep!655 (regOne!5978 r!15766) (head!1808 (_1!6486 lt!349924)))))))

(declare-fun b!980736 () Bool)

(declare-fun res!445141 () Bool)

(assert (=> b!980736 (=> res!445141 e!631020)))

(assert (=> b!980736 (= res!445141 (not ((_ is ElementMatch!2733) (derivativeStep!655 (regOne!5978 r!15766) (head!1808 (_1!6486 lt!349924))))))))

(assert (=> b!980736 (= e!631016 e!631020)))

(declare-fun b!980737 () Bool)

(declare-fun res!445136 () Bool)

(assert (=> b!980737 (=> res!445136 e!631020)))

(assert (=> b!980737 (= res!445136 e!631019)))

(declare-fun res!445138 () Bool)

(assert (=> b!980737 (=> (not res!445138) (not e!631019))))

(assert (=> b!980737 (= res!445138 lt!350026)))

(declare-fun b!980739 () Bool)

(declare-fun res!445135 () Bool)

(assert (=> b!980739 (=> res!445135 e!631018)))

(assert (=> b!980739 (= res!445135 (not (isEmpty!6269 (tail!1370 (tail!1370 (_1!6486 lt!349924))))))))

(declare-fun b!980740 () Bool)

(declare-fun res!445142 () Bool)

(assert (=> b!980740 (=> (not res!445142) (not e!631019))))

(declare-fun call!63016 () Bool)

(assert (=> b!980740 (= res!445142 (not call!63016))))

(declare-fun bm!63011 () Bool)

(assert (=> bm!63011 (= call!63016 (isEmpty!6269 (tail!1370 (_1!6486 lt!349924))))))

(declare-fun b!980741 () Bool)

(assert (=> b!980741 (= e!631021 (= lt!350026 call!63016))))

(declare-fun b!980742 () Bool)

(assert (=> b!980742 (= e!631017 e!631018)))

(declare-fun res!445137 () Bool)

(assert (=> b!980742 (=> res!445137 e!631018)))

(assert (=> b!980742 (= res!445137 call!63016)))

(declare-fun b!980738 () Bool)

(assert (=> b!980738 (= e!631015 (nullable!849 (derivativeStep!655 (regOne!5978 r!15766) (head!1808 (_1!6486 lt!349924)))))))

(declare-fun d!288218 () Bool)

(assert (=> d!288218 e!631021))

(declare-fun c!160365 () Bool)

(assert (=> d!288218 (= c!160365 ((_ is EmptyExpr!2733) (derivativeStep!655 (regOne!5978 r!15766) (head!1808 (_1!6486 lt!349924)))))))

(assert (=> d!288218 (= lt!350026 e!631015)))

(declare-fun c!160363 () Bool)

(assert (=> d!288218 (= c!160363 (isEmpty!6269 (tail!1370 (_1!6486 lt!349924))))))

(assert (=> d!288218 (validRegex!1202 (derivativeStep!655 (regOne!5978 r!15766) (head!1808 (_1!6486 lt!349924))))))

(assert (=> d!288218 (= (matchR!1269 (derivativeStep!655 (regOne!5978 r!15766) (head!1808 (_1!6486 lt!349924))) (tail!1370 (_1!6486 lt!349924))) lt!350026)))

(assert (= (and d!288218 c!160363) b!980738))

(assert (= (and d!288218 (not c!160363)) b!980733))

(assert (= (and d!288218 c!160365) b!980741))

(assert (= (and d!288218 (not c!160365)) b!980735))

(assert (= (and b!980735 c!160364) b!980729))

(assert (= (and b!980735 (not c!160364)) b!980736))

(assert (= (and b!980736 (not res!445141)) b!980737))

(assert (= (and b!980737 res!445138) b!980740))

(assert (= (and b!980740 res!445142) b!980731))

(assert (= (and b!980731 res!445140) b!980732))

(assert (= (and b!980737 (not res!445136)) b!980730))

(assert (= (and b!980730 res!445139) b!980742))

(assert (= (and b!980742 (not res!445137)) b!980739))

(assert (= (and b!980739 (not res!445135)) b!980734))

(assert (= (or b!980741 b!980740 b!980742) bm!63011))

(assert (=> bm!63011 m!1179565))

(assert (=> bm!63011 m!1179569))

(assert (=> b!980738 m!1179563))

(declare-fun m!1180065 () Bool)

(assert (=> b!980738 m!1180065))

(assert (=> b!980733 m!1179565))

(declare-fun m!1180067 () Bool)

(assert (=> b!980733 m!1180067))

(assert (=> b!980733 m!1179563))

(assert (=> b!980733 m!1180067))

(declare-fun m!1180069 () Bool)

(assert (=> b!980733 m!1180069))

(assert (=> b!980733 m!1179565))

(declare-fun m!1180071 () Bool)

(assert (=> b!980733 m!1180071))

(assert (=> b!980733 m!1180069))

(assert (=> b!980733 m!1180071))

(declare-fun m!1180073 () Bool)

(assert (=> b!980733 m!1180073))

(assert (=> d!288218 m!1179565))

(assert (=> d!288218 m!1179569))

(assert (=> d!288218 m!1179563))

(declare-fun m!1180075 () Bool)

(assert (=> d!288218 m!1180075))

(assert (=> b!980734 m!1179565))

(assert (=> b!980734 m!1180067))

(assert (=> b!980732 m!1179565))

(assert (=> b!980732 m!1180067))

(assert (=> b!980731 m!1179565))

(assert (=> b!980731 m!1180071))

(assert (=> b!980731 m!1180071))

(declare-fun m!1180077 () Bool)

(assert (=> b!980731 m!1180077))

(assert (=> b!980739 m!1179565))

(assert (=> b!980739 m!1180071))

(assert (=> b!980739 m!1180071))

(assert (=> b!980739 m!1180077))

(assert (=> b!979975 d!288218))

(declare-fun bm!63012 () Bool)

(declare-fun call!63017 () Regex!2733)

(declare-fun call!63018 () Regex!2733)

(assert (=> bm!63012 (= call!63017 call!63018)))

(declare-fun d!288220 () Bool)

(declare-fun lt!350027 () Regex!2733)

(assert (=> d!288220 (validRegex!1202 lt!350027)))

(declare-fun e!631024 () Regex!2733)

(assert (=> d!288220 (= lt!350027 e!631024)))

(declare-fun c!160369 () Bool)

(assert (=> d!288220 (= c!160369 (or ((_ is EmptyExpr!2733) (regOne!5978 r!15766)) ((_ is EmptyLang!2733) (regOne!5978 r!15766))))))

(assert (=> d!288220 (validRegex!1202 (regOne!5978 r!15766))))

(assert (=> d!288220 (= (derivativeStep!655 (regOne!5978 r!15766) (head!1808 (_1!6486 lt!349924))) lt!350027)))

(declare-fun b!980743 () Bool)

(declare-fun e!631026 () Regex!2733)

(assert (=> b!980743 (= e!631026 (Concat!4566 call!63018 (regOne!5978 r!15766)))))

(declare-fun b!980744 () Bool)

(declare-fun e!631025 () Regex!2733)

(declare-fun call!63019 () Regex!2733)

(declare-fun call!63020 () Regex!2733)

(assert (=> b!980744 (= e!631025 (Union!2733 call!63019 call!63020))))

(declare-fun c!160368 () Bool)

(declare-fun bm!63013 () Bool)

(assert (=> bm!63013 (= call!63020 (derivativeStep!655 (ite c!160368 (regTwo!5979 (regOne!5978 r!15766)) (regOne!5978 (regOne!5978 r!15766))) (head!1808 (_1!6486 lt!349924))))))

(declare-fun b!980745 () Bool)

(declare-fun c!160370 () Bool)

(assert (=> b!980745 (= c!160370 (nullable!849 (regOne!5978 (regOne!5978 r!15766))))))

(declare-fun e!631023 () Regex!2733)

(assert (=> b!980745 (= e!631026 e!631023)))

(declare-fun bm!63014 () Bool)

(assert (=> bm!63014 (= call!63018 call!63019)))

(declare-fun c!160367 () Bool)

(declare-fun bm!63015 () Bool)

(assert (=> bm!63015 (= call!63019 (derivativeStep!655 (ite c!160368 (regOne!5979 (regOne!5978 r!15766)) (ite c!160367 (reg!3062 (regOne!5978 r!15766)) (ite c!160370 (regTwo!5978 (regOne!5978 r!15766)) (regOne!5978 (regOne!5978 r!15766))))) (head!1808 (_1!6486 lt!349924))))))

(declare-fun b!980746 () Bool)

(assert (=> b!980746 (= e!631023 (Union!2733 (Concat!4566 call!63020 (regTwo!5978 (regOne!5978 r!15766))) call!63017))))

(declare-fun b!980747 () Bool)

(declare-fun e!631022 () Regex!2733)

(assert (=> b!980747 (= e!631022 (ite (= (head!1808 (_1!6486 lt!349924)) (c!160088 (regOne!5978 r!15766))) EmptyExpr!2733 EmptyLang!2733))))

(declare-fun b!980748 () Bool)

(assert (=> b!980748 (= e!631025 e!631026)))

(assert (=> b!980748 (= c!160367 ((_ is Star!2733) (regOne!5978 r!15766)))))

(declare-fun b!980749 () Bool)

(assert (=> b!980749 (= e!631023 (Union!2733 (Concat!4566 call!63017 (regTwo!5978 (regOne!5978 r!15766))) EmptyLang!2733))))

(declare-fun b!980750 () Bool)

(assert (=> b!980750 (= e!631024 e!631022)))

(declare-fun c!160366 () Bool)

(assert (=> b!980750 (= c!160366 ((_ is ElementMatch!2733) (regOne!5978 r!15766)))))

(declare-fun b!980751 () Bool)

(assert (=> b!980751 (= c!160368 ((_ is Union!2733) (regOne!5978 r!15766)))))

(assert (=> b!980751 (= e!631022 e!631025)))

(declare-fun b!980752 () Bool)

(assert (=> b!980752 (= e!631024 EmptyLang!2733)))

(assert (= (and d!288220 c!160369) b!980752))

(assert (= (and d!288220 (not c!160369)) b!980750))

(assert (= (and b!980750 c!160366) b!980747))

(assert (= (and b!980750 (not c!160366)) b!980751))

(assert (= (and b!980751 c!160368) b!980744))

(assert (= (and b!980751 (not c!160368)) b!980748))

(assert (= (and b!980748 c!160367) b!980743))

(assert (= (and b!980748 (not c!160367)) b!980745))

(assert (= (and b!980745 c!160370) b!980746))

(assert (= (and b!980745 (not c!160370)) b!980749))

(assert (= (or b!980746 b!980749) bm!63012))

(assert (= (or b!980743 bm!63012) bm!63014))

(assert (= (or b!980744 bm!63014) bm!63015))

(assert (= (or b!980744 b!980746) bm!63013))

(declare-fun m!1180079 () Bool)

(assert (=> d!288220 m!1180079))

(assert (=> d!288220 m!1179365))

(assert (=> bm!63013 m!1179561))

(declare-fun m!1180081 () Bool)

(assert (=> bm!63013 m!1180081))

(declare-fun m!1180083 () Bool)

(assert (=> b!980745 m!1180083))

(assert (=> bm!63015 m!1179561))

(declare-fun m!1180085 () Bool)

(assert (=> bm!63015 m!1180085))

(assert (=> b!979975 d!288220))

(declare-fun d!288222 () Bool)

(assert (=> d!288222 (= (head!1808 (_1!6486 lt!349924)) (h!15348 (_1!6486 lt!349924)))))

(assert (=> b!979975 d!288222))

(assert (=> b!979975 d!288156))

(declare-fun d!288224 () Bool)

(declare-fun e!631032 () Bool)

(assert (=> d!288224 e!631032))

(declare-fun res!445148 () Bool)

(assert (=> d!288224 (=> (not res!445148) (not e!631032))))

(declare-fun lt!350030 () List!9963)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1422 (List!9963) (InoxSet C!6036))

(assert (=> d!288224 (= res!445148 (= (content!1422 lt!350030) ((_ map or) (content!1422 (++!2700 Nil!9947 (Cons!9947 (h!15348 s!10566) Nil!9947))) (content!1422 (t!101009 s!10566)))))))

(declare-fun e!631031 () List!9963)

(assert (=> d!288224 (= lt!350030 e!631031)))

(declare-fun c!160373 () Bool)

(assert (=> d!288224 (= c!160373 ((_ is Nil!9947) (++!2700 Nil!9947 (Cons!9947 (h!15348 s!10566) Nil!9947))))))

(assert (=> d!288224 (= (++!2700 (++!2700 Nil!9947 (Cons!9947 (h!15348 s!10566) Nil!9947)) (t!101009 s!10566)) lt!350030)))

(declare-fun b!980761 () Bool)

(assert (=> b!980761 (= e!631031 (t!101009 s!10566))))

(declare-fun b!980764 () Bool)

(assert (=> b!980764 (= e!631032 (or (not (= (t!101009 s!10566) Nil!9947)) (= lt!350030 (++!2700 Nil!9947 (Cons!9947 (h!15348 s!10566) Nil!9947)))))))

(declare-fun b!980762 () Bool)

(assert (=> b!980762 (= e!631031 (Cons!9947 (h!15348 (++!2700 Nil!9947 (Cons!9947 (h!15348 s!10566) Nil!9947))) (++!2700 (t!101009 (++!2700 Nil!9947 (Cons!9947 (h!15348 s!10566) Nil!9947))) (t!101009 s!10566))))))

(declare-fun b!980763 () Bool)

(declare-fun res!445147 () Bool)

(assert (=> b!980763 (=> (not res!445147) (not e!631032))))

(declare-fun size!7955 (List!9963) Int)

(assert (=> b!980763 (= res!445147 (= (size!7955 lt!350030) (+ (size!7955 (++!2700 Nil!9947 (Cons!9947 (h!15348 s!10566) Nil!9947))) (size!7955 (t!101009 s!10566)))))))

(assert (= (and d!288224 c!160373) b!980761))

(assert (= (and d!288224 (not c!160373)) b!980762))

(assert (= (and d!288224 res!445148) b!980763))

(assert (= (and b!980763 res!445147) b!980764))

(declare-fun m!1180087 () Bool)

(assert (=> d!288224 m!1180087))

(assert (=> d!288224 m!1179573))

(declare-fun m!1180089 () Bool)

(assert (=> d!288224 m!1180089))

(declare-fun m!1180091 () Bool)

(assert (=> d!288224 m!1180091))

(declare-fun m!1180093 () Bool)

(assert (=> b!980762 m!1180093))

(declare-fun m!1180095 () Bool)

(assert (=> b!980763 m!1180095))

(assert (=> b!980763 m!1179573))

(declare-fun m!1180097 () Bool)

(assert (=> b!980763 m!1180097))

(declare-fun m!1180099 () Bool)

(assert (=> b!980763 m!1180099))

(assert (=> b!980008 d!288224))

(declare-fun d!288226 () Bool)

(declare-fun e!631034 () Bool)

(assert (=> d!288226 e!631034))

(declare-fun res!445150 () Bool)

(assert (=> d!288226 (=> (not res!445150) (not e!631034))))

(declare-fun lt!350031 () List!9963)

(assert (=> d!288226 (= res!445150 (= (content!1422 lt!350031) ((_ map or) (content!1422 Nil!9947) (content!1422 (Cons!9947 (h!15348 s!10566) Nil!9947)))))))

(declare-fun e!631033 () List!9963)

(assert (=> d!288226 (= lt!350031 e!631033)))

(declare-fun c!160374 () Bool)

(assert (=> d!288226 (= c!160374 ((_ is Nil!9947) Nil!9947))))

(assert (=> d!288226 (= (++!2700 Nil!9947 (Cons!9947 (h!15348 s!10566) Nil!9947)) lt!350031)))

(declare-fun b!980765 () Bool)

(assert (=> b!980765 (= e!631033 (Cons!9947 (h!15348 s!10566) Nil!9947))))

(declare-fun b!980768 () Bool)

(assert (=> b!980768 (= e!631034 (or (not (= (Cons!9947 (h!15348 s!10566) Nil!9947) Nil!9947)) (= lt!350031 Nil!9947)))))

(declare-fun b!980766 () Bool)

(assert (=> b!980766 (= e!631033 (Cons!9947 (h!15348 Nil!9947) (++!2700 (t!101009 Nil!9947) (Cons!9947 (h!15348 s!10566) Nil!9947))))))

(declare-fun b!980767 () Bool)

(declare-fun res!445149 () Bool)

(assert (=> b!980767 (=> (not res!445149) (not e!631034))))

(assert (=> b!980767 (= res!445149 (= (size!7955 lt!350031) (+ (size!7955 Nil!9947) (size!7955 (Cons!9947 (h!15348 s!10566) Nil!9947)))))))

(assert (= (and d!288226 c!160374) b!980765))

(assert (= (and d!288226 (not c!160374)) b!980766))

(assert (= (and d!288226 res!445150) b!980767))

(assert (= (and b!980767 res!445149) b!980768))

(declare-fun m!1180101 () Bool)

(assert (=> d!288226 m!1180101))

(declare-fun m!1180103 () Bool)

(assert (=> d!288226 m!1180103))

(declare-fun m!1180105 () Bool)

(assert (=> d!288226 m!1180105))

(declare-fun m!1180107 () Bool)

(assert (=> b!980766 m!1180107))

(declare-fun m!1180109 () Bool)

(assert (=> b!980767 m!1180109))

(declare-fun m!1180111 () Bool)

(assert (=> b!980767 m!1180111))

(declare-fun m!1180113 () Bool)

(assert (=> b!980767 m!1180113))

(assert (=> b!980008 d!288226))

(declare-fun d!288228 () Bool)

(assert (=> d!288228 (= (++!2700 (++!2700 Nil!9947 (Cons!9947 (h!15348 s!10566) Nil!9947)) (t!101009 s!10566)) s!10566)))

(declare-fun lt!350034 () Unit!15125)

(declare-fun choose!6219 (List!9963 C!6036 List!9963 List!9963) Unit!15125)

(assert (=> d!288228 (= lt!350034 (choose!6219 Nil!9947 (h!15348 s!10566) (t!101009 s!10566) s!10566))))

(assert (=> d!288228 (= (++!2700 Nil!9947 (Cons!9947 (h!15348 s!10566) (t!101009 s!10566))) s!10566)))

(assert (=> d!288228 (= (lemmaMoveElementToOtherListKeepsConcatEq!301 Nil!9947 (h!15348 s!10566) (t!101009 s!10566) s!10566) lt!350034)))

(declare-fun bs!243833 () Bool)

(assert (= bs!243833 d!288228))

(assert (=> bs!243833 m!1179573))

(assert (=> bs!243833 m!1179573))

(assert (=> bs!243833 m!1179575))

(declare-fun m!1180115 () Bool)

(assert (=> bs!243833 m!1180115))

(declare-fun m!1180117 () Bool)

(assert (=> bs!243833 m!1180117))

(assert (=> b!980008 d!288228))

(declare-fun d!288230 () Bool)

(declare-fun e!631035 () Bool)

(assert (=> d!288230 e!631035))

(declare-fun res!445153 () Bool)

(assert (=> d!288230 (=> res!445153 e!631035)))

(declare-fun e!631039 () Bool)

(assert (=> d!288230 (= res!445153 e!631039)))

(declare-fun res!445151 () Bool)

(assert (=> d!288230 (=> (not res!445151) (not e!631039))))

(declare-fun lt!350036 () Option!2302)

(assert (=> d!288230 (= res!445151 (isDefined!1944 lt!350036))))

(declare-fun e!631036 () Option!2302)

(assert (=> d!288230 (= lt!350036 e!631036)))

(declare-fun c!160376 () Bool)

(declare-fun e!631038 () Bool)

(assert (=> d!288230 (= c!160376 e!631038)))

(declare-fun res!445152 () Bool)

(assert (=> d!288230 (=> (not res!445152) (not e!631038))))

(assert (=> d!288230 (= res!445152 (matchR!1269 (regOne!5978 r!15766) (++!2700 Nil!9947 (Cons!9947 (h!15348 s!10566) Nil!9947))))))

(assert (=> d!288230 (validRegex!1202 (regOne!5978 r!15766))))

(assert (=> d!288230 (= (findConcatSeparation!408 (regOne!5978 r!15766) EmptyExpr!2733 (++!2700 Nil!9947 (Cons!9947 (h!15348 s!10566) Nil!9947)) (t!101009 s!10566) s!10566) lt!350036)))

(declare-fun b!980769 () Bool)

(declare-fun res!445154 () Bool)

(assert (=> b!980769 (=> (not res!445154) (not e!631039))))

(assert (=> b!980769 (= res!445154 (matchR!1269 (regOne!5978 r!15766) (_1!6486 (get!3447 lt!350036))))))

(declare-fun b!980770 () Bool)

(assert (=> b!980770 (= e!631035 (not (isDefined!1944 lt!350036)))))

(declare-fun b!980771 () Bool)

(assert (=> b!980771 (= e!631039 (= (++!2700 (_1!6486 (get!3447 lt!350036)) (_2!6486 (get!3447 lt!350036))) s!10566))))

(declare-fun b!980772 () Bool)

(declare-fun res!445155 () Bool)

(assert (=> b!980772 (=> (not res!445155) (not e!631039))))

(assert (=> b!980772 (= res!445155 (matchR!1269 EmptyExpr!2733 (_2!6486 (get!3447 lt!350036))))))

(declare-fun b!980773 () Bool)

(assert (=> b!980773 (= e!631038 (matchR!1269 EmptyExpr!2733 (t!101009 s!10566)))))

(declare-fun b!980774 () Bool)

(declare-fun lt!350035 () Unit!15125)

(declare-fun lt!350037 () Unit!15125)

(assert (=> b!980774 (= lt!350035 lt!350037)))

(assert (=> b!980774 (= (++!2700 (++!2700 (++!2700 Nil!9947 (Cons!9947 (h!15348 s!10566) Nil!9947)) (Cons!9947 (h!15348 (t!101009 s!10566)) Nil!9947)) (t!101009 (t!101009 s!10566))) s!10566)))

(assert (=> b!980774 (= lt!350037 (lemmaMoveElementToOtherListKeepsConcatEq!301 (++!2700 Nil!9947 (Cons!9947 (h!15348 s!10566) Nil!9947)) (h!15348 (t!101009 s!10566)) (t!101009 (t!101009 s!10566)) s!10566))))

(declare-fun e!631037 () Option!2302)

(assert (=> b!980774 (= e!631037 (findConcatSeparation!408 (regOne!5978 r!15766) EmptyExpr!2733 (++!2700 (++!2700 Nil!9947 (Cons!9947 (h!15348 s!10566) Nil!9947)) (Cons!9947 (h!15348 (t!101009 s!10566)) Nil!9947)) (t!101009 (t!101009 s!10566)) s!10566))))

(declare-fun b!980775 () Bool)

(assert (=> b!980775 (= e!631037 None!2301)))

(declare-fun b!980776 () Bool)

(assert (=> b!980776 (= e!631036 e!631037)))

(declare-fun c!160375 () Bool)

(assert (=> b!980776 (= c!160375 ((_ is Nil!9947) (t!101009 s!10566)))))

(declare-fun b!980777 () Bool)

(assert (=> b!980777 (= e!631036 (Some!2301 (tuple2!11321 (++!2700 Nil!9947 (Cons!9947 (h!15348 s!10566) Nil!9947)) (t!101009 s!10566))))))

(assert (= (and d!288230 res!445152) b!980773))

(assert (= (and d!288230 c!160376) b!980777))

(assert (= (and d!288230 (not c!160376)) b!980776))

(assert (= (and b!980776 c!160375) b!980775))

(assert (= (and b!980776 (not c!160375)) b!980774))

(assert (= (and d!288230 res!445151) b!980769))

(assert (= (and b!980769 res!445154) b!980772))

(assert (= (and b!980772 res!445155) b!980771))

(assert (= (and d!288230 (not res!445153)) b!980770))

(declare-fun m!1180119 () Bool)

(assert (=> b!980770 m!1180119))

(assert (=> b!980774 m!1179573))

(declare-fun m!1180121 () Bool)

(assert (=> b!980774 m!1180121))

(assert (=> b!980774 m!1180121))

(declare-fun m!1180123 () Bool)

(assert (=> b!980774 m!1180123))

(assert (=> b!980774 m!1179573))

(declare-fun m!1180125 () Bool)

(assert (=> b!980774 m!1180125))

(assert (=> b!980774 m!1180121))

(declare-fun m!1180127 () Bool)

(assert (=> b!980774 m!1180127))

(declare-fun m!1180129 () Bool)

(assert (=> b!980769 m!1180129))

(declare-fun m!1180131 () Bool)

(assert (=> b!980769 m!1180131))

(assert (=> d!288230 m!1180119))

(assert (=> d!288230 m!1179573))

(declare-fun m!1180133 () Bool)

(assert (=> d!288230 m!1180133))

(assert (=> d!288230 m!1179365))

(declare-fun m!1180135 () Bool)

(assert (=> b!980773 m!1180135))

(assert (=> b!980772 m!1180129))

(declare-fun m!1180137 () Bool)

(assert (=> b!980772 m!1180137))

(assert (=> b!980771 m!1180129))

(declare-fun m!1180139 () Bool)

(assert (=> b!980771 m!1180139))

(assert (=> b!980008 d!288230))

(declare-fun bs!243834 () Bool)

(declare-fun b!980783 () Bool)

(assert (= bs!243834 (and b!980783 b!979587)))

(declare-fun lambda!34944 () Int)

(assert (=> bs!243834 (not (= lambda!34944 lambda!34884))))

(declare-fun bs!243835 () Bool)

(assert (= bs!243835 (and b!980783 d!288168)))

(assert (=> bs!243835 (not (= lambda!34944 lambda!34938))))

(declare-fun bs!243836 () Bool)

(assert (= bs!243836 (and b!980783 d!288020)))

(assert (=> bs!243836 (not (= lambda!34944 lambda!34910))))

(declare-fun bs!243837 () Bool)

(assert (= bs!243837 (and b!980783 d!288026)))

(assert (=> bs!243837 (not (= lambda!34944 lambda!34916))))

(declare-fun bs!243838 () Bool)

(assert (= bs!243838 (and b!980783 b!980541)))

(assert (=> bs!243838 (= (and (= s!10566 (_1!6486 lt!349924)) (= (reg!3062 (regOne!5979 r!15766)) (reg!3062 (regTwo!5979 (regOne!5978 r!15766)))) (= (regOne!5979 r!15766) (regTwo!5979 (regOne!5978 r!15766)))) (= lambda!34944 lambda!34942))))

(declare-fun bs!243839 () Bool)

(assert (= bs!243839 (and b!980783 b!980142)))

(assert (=> bs!243839 (not (= lambda!34944 lambda!34918))))

(declare-fun bs!243840 () Bool)

(assert (= bs!243840 (and b!980783 b!980546)))

(assert (=> bs!243840 (not (= lambda!34944 lambda!34943))))

(declare-fun bs!243841 () Bool)

(assert (= bs!243841 (and b!980783 b!979820)))

(assert (=> bs!243841 (not (= lambda!34944 lambda!34896))))

(assert (=> bs!243834 (not (= lambda!34944 lambda!34883))))

(assert (=> bs!243835 (not (= lambda!34944 lambda!34939))))

(declare-fun bs!243842 () Bool)

(assert (= bs!243842 (and b!980783 b!979815)))

(assert (=> bs!243842 (= (and (= (reg!3062 (regOne!5979 r!15766)) (reg!3062 r!15766)) (= (regOne!5979 r!15766) r!15766)) (= lambda!34944 lambda!34895))))

(assert (=> bs!243837 (not (= lambda!34944 lambda!34915))))

(declare-fun bs!243843 () Bool)

(assert (= bs!243843 (and b!980783 b!980137)))

(assert (=> bs!243843 (= (and (= s!10566 (_1!6486 lt!349924)) (= (reg!3062 (regOne!5979 r!15766)) (reg!3062 (regOne!5978 r!15766))) (= (regOne!5979 r!15766) (regOne!5978 r!15766))) (= lambda!34944 lambda!34917))))

(assert (=> b!980783 true))

(assert (=> b!980783 true))

(declare-fun bs!243844 () Bool)

(declare-fun b!980788 () Bool)

(assert (= bs!243844 (and b!980788 b!979587)))

(declare-fun lambda!34945 () Int)

(assert (=> bs!243844 (= (and (= (regOne!5978 (regOne!5979 r!15766)) (regOne!5978 r!15766)) (= (regTwo!5978 (regOne!5979 r!15766)) EmptyExpr!2733)) (= lambda!34945 lambda!34884))))

(declare-fun bs!243845 () Bool)

(assert (= bs!243845 (and b!980788 d!288168)))

(assert (=> bs!243845 (not (= lambda!34945 lambda!34938))))

(declare-fun bs!243846 () Bool)

(assert (= bs!243846 (and b!980788 d!288020)))

(assert (=> bs!243846 (not (= lambda!34945 lambda!34910))))

(declare-fun bs!243847 () Bool)

(assert (= bs!243847 (and b!980788 d!288026)))

(assert (=> bs!243847 (= (and (= (regOne!5978 (regOne!5979 r!15766)) (regOne!5978 r!15766)) (= (regTwo!5978 (regOne!5979 r!15766)) EmptyExpr!2733)) (= lambda!34945 lambda!34916))))

(declare-fun bs!243848 () Bool)

(assert (= bs!243848 (and b!980788 b!980541)))

(assert (=> bs!243848 (not (= lambda!34945 lambda!34942))))

(declare-fun bs!243849 () Bool)

(assert (= bs!243849 (and b!980788 b!980142)))

(assert (=> bs!243849 (= (and (= s!10566 (_1!6486 lt!349924)) (= (regOne!5978 (regOne!5979 r!15766)) (regOne!5978 (regOne!5978 r!15766))) (= (regTwo!5978 (regOne!5979 r!15766)) (regTwo!5978 (regOne!5978 r!15766)))) (= lambda!34945 lambda!34918))))

(declare-fun bs!243850 () Bool)

(assert (= bs!243850 (and b!980788 b!980546)))

(assert (=> bs!243850 (= (and (= s!10566 (_1!6486 lt!349924)) (= (regOne!5978 (regOne!5979 r!15766)) (regOne!5978 (regTwo!5979 (regOne!5978 r!15766)))) (= (regTwo!5978 (regOne!5979 r!15766)) (regTwo!5978 (regTwo!5979 (regOne!5978 r!15766))))) (= lambda!34945 lambda!34943))))

(declare-fun bs!243851 () Bool)

(assert (= bs!243851 (and b!980788 b!979820)))

(assert (=> bs!243851 (= (and (= (regOne!5978 (regOne!5979 r!15766)) (regOne!5978 r!15766)) (= (regTwo!5978 (regOne!5979 r!15766)) (regTwo!5978 r!15766))) (= lambda!34945 lambda!34896))))

(assert (=> bs!243844 (not (= lambda!34945 lambda!34883))))

(declare-fun bs!243852 () Bool)

(assert (= bs!243852 (and b!980788 b!980783)))

(assert (=> bs!243852 (not (= lambda!34945 lambda!34944))))

(assert (=> bs!243845 (= (and (= (regOne!5978 (regOne!5979 r!15766)) (regOne!5978 r!15766)) (= (regTwo!5978 (regOne!5979 r!15766)) EmptyExpr!2733)) (= lambda!34945 lambda!34939))))

(declare-fun bs!243853 () Bool)

(assert (= bs!243853 (and b!980788 b!979815)))

(assert (=> bs!243853 (not (= lambda!34945 lambda!34895))))

(assert (=> bs!243847 (not (= lambda!34945 lambda!34915))))

(declare-fun bs!243854 () Bool)

(assert (= bs!243854 (and b!980788 b!980137)))

(assert (=> bs!243854 (not (= lambda!34945 lambda!34917))))

(assert (=> b!980788 true))

(assert (=> b!980788 true))

(declare-fun b!980778 () Bool)

(declare-fun e!631045 () Bool)

(declare-fun e!631041 () Bool)

(assert (=> b!980778 (= e!631045 e!631041)))

(declare-fun c!160379 () Bool)

(assert (=> b!980778 (= c!160379 ((_ is Star!2733) (regOne!5979 r!15766)))))

(declare-fun b!980779 () Bool)

(declare-fun e!631042 () Bool)

(assert (=> b!980779 (= e!631045 e!631042)))

(declare-fun res!445158 () Bool)

(assert (=> b!980779 (= res!445158 (matchRSpec!532 (regOne!5979 (regOne!5979 r!15766)) s!10566))))

(assert (=> b!980779 (=> res!445158 e!631042)))

(declare-fun b!980780 () Bool)

(declare-fun e!631043 () Bool)

(declare-fun call!63021 () Bool)

(assert (=> b!980780 (= e!631043 call!63021)))

(declare-fun b!980781 () Bool)

(declare-fun c!160380 () Bool)

(assert (=> b!980781 (= c!160380 ((_ is ElementMatch!2733) (regOne!5979 r!15766)))))

(declare-fun e!631046 () Bool)

(declare-fun e!631044 () Bool)

(assert (=> b!980781 (= e!631046 e!631044)))

(declare-fun d!288232 () Bool)

(declare-fun c!160378 () Bool)

(assert (=> d!288232 (= c!160378 ((_ is EmptyExpr!2733) (regOne!5979 r!15766)))))

(assert (=> d!288232 (= (matchRSpec!532 (regOne!5979 r!15766) s!10566) e!631043)))

(declare-fun b!980782 () Bool)

(assert (=> b!980782 (= e!631042 (matchRSpec!532 (regTwo!5979 (regOne!5979 r!15766)) s!10566))))

(declare-fun bm!63016 () Bool)

(assert (=> bm!63016 (= call!63021 (isEmpty!6269 s!10566))))

(declare-fun e!631040 () Bool)

(declare-fun call!63022 () Bool)

(assert (=> b!980783 (= e!631040 call!63022)))

(declare-fun b!980784 () Bool)

(assert (=> b!980784 (= e!631043 e!631046)))

(declare-fun res!445157 () Bool)

(assert (=> b!980784 (= res!445157 (not ((_ is EmptyLang!2733) (regOne!5979 r!15766))))))

(assert (=> b!980784 (=> (not res!445157) (not e!631046))))

(declare-fun b!980785 () Bool)

(declare-fun c!160377 () Bool)

(assert (=> b!980785 (= c!160377 ((_ is Union!2733) (regOne!5979 r!15766)))))

(assert (=> b!980785 (= e!631044 e!631045)))

(declare-fun b!980786 () Bool)

(assert (=> b!980786 (= e!631044 (= s!10566 (Cons!9947 (c!160088 (regOne!5979 r!15766)) Nil!9947)))))

(declare-fun b!980787 () Bool)

(declare-fun res!445156 () Bool)

(assert (=> b!980787 (=> res!445156 e!631040)))

(assert (=> b!980787 (= res!445156 call!63021)))

(assert (=> b!980787 (= e!631041 e!631040)))

(assert (=> b!980788 (= e!631041 call!63022)))

(declare-fun bm!63017 () Bool)

(assert (=> bm!63017 (= call!63022 (Exists!470 (ite c!160379 lambda!34944 lambda!34945)))))

(assert (= (and d!288232 c!160378) b!980780))

(assert (= (and d!288232 (not c!160378)) b!980784))

(assert (= (and b!980784 res!445157) b!980781))

(assert (= (and b!980781 c!160380) b!980786))

(assert (= (and b!980781 (not c!160380)) b!980785))

(assert (= (and b!980785 c!160377) b!980779))

(assert (= (and b!980785 (not c!160377)) b!980778))

(assert (= (and b!980779 (not res!445158)) b!980782))

(assert (= (and b!980778 c!160379) b!980787))

(assert (= (and b!980778 (not c!160379)) b!980788))

(assert (= (and b!980787 (not res!445156)) b!980783))

(assert (= (or b!980783 b!980788) bm!63017))

(assert (= (or b!980780 b!980787) bm!63016))

(declare-fun m!1180141 () Bool)

(assert (=> b!980779 m!1180141))

(declare-fun m!1180143 () Bool)

(assert (=> b!980782 m!1180143))

(assert (=> bm!63016 m!1179387))

(declare-fun m!1180145 () Bool)

(assert (=> bm!63017 m!1180145))

(assert (=> b!979811 d!288232))

(declare-fun d!288234 () Bool)

(assert (=> d!288234 true))

(assert (=> d!288234 true))

(declare-fun res!445161 () Bool)

(assert (=> d!288234 (= (choose!6215 lambda!34883) res!445161)))

(assert (=> d!288022 d!288234))

(assert (=> d!288016 d!288152))

(declare-fun b!980789 () Bool)

(declare-fun e!631048 () Bool)

(declare-fun lt!350038 () Bool)

(assert (=> b!980789 (= e!631048 (not lt!350038))))

(declare-fun b!980790 () Bool)

(declare-fun e!631052 () Bool)

(declare-fun e!631049 () Bool)

(assert (=> b!980790 (= e!631052 e!631049)))

(declare-fun res!445166 () Bool)

(assert (=> b!980790 (=> (not res!445166) (not e!631049))))

(assert (=> b!980790 (= res!445166 (not lt!350038))))

(declare-fun b!980791 () Bool)

(declare-fun res!445167 () Bool)

(declare-fun e!631051 () Bool)

(assert (=> b!980791 (=> (not res!445167) (not e!631051))))

(assert (=> b!980791 (= res!445167 (isEmpty!6269 (tail!1370 Nil!9947)))))

(declare-fun b!980792 () Bool)

(assert (=> b!980792 (= e!631051 (= (head!1808 Nil!9947) (c!160088 (regOne!5978 r!15766))))))

(declare-fun b!980793 () Bool)

(declare-fun e!631047 () Bool)

(assert (=> b!980793 (= e!631047 (matchR!1269 (derivativeStep!655 (regOne!5978 r!15766) (head!1808 Nil!9947)) (tail!1370 Nil!9947)))))

(declare-fun b!980794 () Bool)

(declare-fun e!631050 () Bool)

(assert (=> b!980794 (= e!631050 (not (= (head!1808 Nil!9947) (c!160088 (regOne!5978 r!15766)))))))

(declare-fun b!980795 () Bool)

(declare-fun e!631053 () Bool)

(assert (=> b!980795 (= e!631053 e!631048)))

(declare-fun c!160382 () Bool)

(assert (=> b!980795 (= c!160382 ((_ is EmptyLang!2733) (regOne!5978 r!15766)))))

(declare-fun b!980796 () Bool)

(declare-fun res!445168 () Bool)

(assert (=> b!980796 (=> res!445168 e!631052)))

(assert (=> b!980796 (= res!445168 (not ((_ is ElementMatch!2733) (regOne!5978 r!15766))))))

(assert (=> b!980796 (= e!631048 e!631052)))

(declare-fun b!980797 () Bool)

(declare-fun res!445163 () Bool)

(assert (=> b!980797 (=> res!445163 e!631052)))

(assert (=> b!980797 (= res!445163 e!631051)))

(declare-fun res!445165 () Bool)

(assert (=> b!980797 (=> (not res!445165) (not e!631051))))

(assert (=> b!980797 (= res!445165 lt!350038)))

(declare-fun b!980799 () Bool)

(declare-fun res!445162 () Bool)

(assert (=> b!980799 (=> res!445162 e!631050)))

(assert (=> b!980799 (= res!445162 (not (isEmpty!6269 (tail!1370 Nil!9947))))))

(declare-fun b!980800 () Bool)

(declare-fun res!445169 () Bool)

(assert (=> b!980800 (=> (not res!445169) (not e!631051))))

(declare-fun call!63023 () Bool)

(assert (=> b!980800 (= res!445169 (not call!63023))))

(declare-fun bm!63018 () Bool)

(assert (=> bm!63018 (= call!63023 (isEmpty!6269 Nil!9947))))

(declare-fun b!980801 () Bool)

(assert (=> b!980801 (= e!631053 (= lt!350038 call!63023))))

(declare-fun b!980802 () Bool)

(assert (=> b!980802 (= e!631049 e!631050)))

(declare-fun res!445164 () Bool)

(assert (=> b!980802 (=> res!445164 e!631050)))

(assert (=> b!980802 (= res!445164 call!63023)))

(declare-fun b!980798 () Bool)

(assert (=> b!980798 (= e!631047 (nullable!849 (regOne!5978 r!15766)))))

(declare-fun d!288236 () Bool)

(assert (=> d!288236 e!631053))

(declare-fun c!160383 () Bool)

(assert (=> d!288236 (= c!160383 ((_ is EmptyExpr!2733) (regOne!5978 r!15766)))))

(assert (=> d!288236 (= lt!350038 e!631047)))

(declare-fun c!160381 () Bool)

(assert (=> d!288236 (= c!160381 (isEmpty!6269 Nil!9947))))

(assert (=> d!288236 (validRegex!1202 (regOne!5978 r!15766))))

(assert (=> d!288236 (= (matchR!1269 (regOne!5978 r!15766) Nil!9947) lt!350038)))

(assert (= (and d!288236 c!160381) b!980798))

(assert (= (and d!288236 (not c!160381)) b!980793))

(assert (= (and d!288236 c!160383) b!980801))

(assert (= (and d!288236 (not c!160383)) b!980795))

(assert (= (and b!980795 c!160382) b!980789))

(assert (= (and b!980795 (not c!160382)) b!980796))

(assert (= (and b!980796 (not res!445168)) b!980797))

(assert (= (and b!980797 res!445165) b!980800))

(assert (= (and b!980800 res!445169) b!980791))

(assert (= (and b!980791 res!445167) b!980792))

(assert (= (and b!980797 (not res!445163)) b!980790))

(assert (= (and b!980790 res!445166) b!980802))

(assert (= (and b!980802 (not res!445164)) b!980799))

(assert (= (and b!980799 (not res!445162)) b!980794))

(assert (= (or b!980801 b!980800 b!980802) bm!63018))

(declare-fun m!1180147 () Bool)

(assert (=> bm!63018 m!1180147))

(assert (=> b!980798 m!1179559))

(declare-fun m!1180149 () Bool)

(assert (=> b!980793 m!1180149))

(assert (=> b!980793 m!1180149))

(declare-fun m!1180151 () Bool)

(assert (=> b!980793 m!1180151))

(declare-fun m!1180153 () Bool)

(assert (=> b!980793 m!1180153))

(assert (=> b!980793 m!1180151))

(assert (=> b!980793 m!1180153))

(declare-fun m!1180155 () Bool)

(assert (=> b!980793 m!1180155))

(assert (=> d!288236 m!1180147))

(assert (=> d!288236 m!1179365))

(assert (=> b!980794 m!1180149))

(assert (=> b!980792 m!1180149))

(assert (=> b!980791 m!1180153))

(assert (=> b!980791 m!1180153))

(declare-fun m!1180157 () Bool)

(assert (=> b!980791 m!1180157))

(assert (=> b!980799 m!1180153))

(assert (=> b!980799 m!1180153))

(assert (=> b!980799 m!1180157))

(assert (=> d!288016 d!288236))

(assert (=> d!288016 d!288044))

(declare-fun b!980803 () Bool)

(declare-fun e!631060 () Bool)

(declare-fun e!631054 () Bool)

(assert (=> b!980803 (= e!631060 e!631054)))

(declare-fun c!160385 () Bool)

(assert (=> b!980803 (= c!160385 ((_ is Union!2733) (ite c!160219 (reg!3062 (regOne!5978 r!15766)) (ite c!160220 (regOne!5979 (regOne!5978 r!15766)) (regOne!5978 (regOne!5978 r!15766))))))))

(declare-fun call!63024 () Bool)

(declare-fun bm!63019 () Bool)

(assert (=> bm!63019 (= call!63024 (validRegex!1202 (ite c!160385 (regTwo!5979 (ite c!160219 (reg!3062 (regOne!5978 r!15766)) (ite c!160220 (regOne!5979 (regOne!5978 r!15766)) (regOne!5978 (regOne!5978 r!15766))))) (regTwo!5978 (ite c!160219 (reg!3062 (regOne!5978 r!15766)) (ite c!160220 (regOne!5979 (regOne!5978 r!15766)) (regOne!5978 (regOne!5978 r!15766))))))))))

(declare-fun b!980804 () Bool)

(declare-fun res!445171 () Bool)

(declare-fun e!631059 () Bool)

(assert (=> b!980804 (=> (not res!445171) (not e!631059))))

(declare-fun call!63025 () Bool)

(assert (=> b!980804 (= res!445171 call!63025)))

(assert (=> b!980804 (= e!631054 e!631059)))

(declare-fun b!980805 () Bool)

(declare-fun e!631057 () Bool)

(assert (=> b!980805 (= e!631057 call!63024)))

(declare-fun b!980806 () Bool)

(declare-fun e!631056 () Bool)

(assert (=> b!980806 (= e!631056 e!631060)))

(declare-fun c!160384 () Bool)

(assert (=> b!980806 (= c!160384 ((_ is Star!2733) (ite c!160219 (reg!3062 (regOne!5978 r!15766)) (ite c!160220 (regOne!5979 (regOne!5978 r!15766)) (regOne!5978 (regOne!5978 r!15766))))))))

(declare-fun b!980807 () Bool)

(declare-fun res!445172 () Bool)

(declare-fun e!631055 () Bool)

(assert (=> b!980807 (=> res!445172 e!631055)))

(assert (=> b!980807 (= res!445172 (not ((_ is Concat!4566) (ite c!160219 (reg!3062 (regOne!5978 r!15766)) (ite c!160220 (regOne!5979 (regOne!5978 r!15766)) (regOne!5978 (regOne!5978 r!15766)))))))))

(assert (=> b!980807 (= e!631054 e!631055)))

(declare-fun b!980808 () Bool)

(assert (=> b!980808 (= e!631059 call!63024)))

(declare-fun call!63026 () Bool)

(declare-fun bm!63020 () Bool)

(assert (=> bm!63020 (= call!63026 (validRegex!1202 (ite c!160384 (reg!3062 (ite c!160219 (reg!3062 (regOne!5978 r!15766)) (ite c!160220 (regOne!5979 (regOne!5978 r!15766)) (regOne!5978 (regOne!5978 r!15766))))) (ite c!160385 (regOne!5979 (ite c!160219 (reg!3062 (regOne!5978 r!15766)) (ite c!160220 (regOne!5979 (regOne!5978 r!15766)) (regOne!5978 (regOne!5978 r!15766))))) (regOne!5978 (ite c!160219 (reg!3062 (regOne!5978 r!15766)) (ite c!160220 (regOne!5979 (regOne!5978 r!15766)) (regOne!5978 (regOne!5978 r!15766)))))))))))

(declare-fun b!980810 () Bool)

(assert (=> b!980810 (= e!631055 e!631057)))

(declare-fun res!445170 () Bool)

(assert (=> b!980810 (=> (not res!445170) (not e!631057))))

(assert (=> b!980810 (= res!445170 call!63025)))

(declare-fun b!980811 () Bool)

(declare-fun e!631058 () Bool)

(assert (=> b!980811 (= e!631058 call!63026)))

(declare-fun bm!63021 () Bool)

(assert (=> bm!63021 (= call!63025 call!63026)))

(declare-fun d!288238 () Bool)

(declare-fun res!445174 () Bool)

(assert (=> d!288238 (=> res!445174 e!631056)))

(assert (=> d!288238 (= res!445174 ((_ is ElementMatch!2733) (ite c!160219 (reg!3062 (regOne!5978 r!15766)) (ite c!160220 (regOne!5979 (regOne!5978 r!15766)) (regOne!5978 (regOne!5978 r!15766))))))))

(assert (=> d!288238 (= (validRegex!1202 (ite c!160219 (reg!3062 (regOne!5978 r!15766)) (ite c!160220 (regOne!5979 (regOne!5978 r!15766)) (regOne!5978 (regOne!5978 r!15766))))) e!631056)))

(declare-fun b!980809 () Bool)

(assert (=> b!980809 (= e!631060 e!631058)))

(declare-fun res!445173 () Bool)

(assert (=> b!980809 (= res!445173 (not (nullable!849 (reg!3062 (ite c!160219 (reg!3062 (regOne!5978 r!15766)) (ite c!160220 (regOne!5979 (regOne!5978 r!15766)) (regOne!5978 (regOne!5978 r!15766))))))))))

(assert (=> b!980809 (=> (not res!445173) (not e!631058))))

(assert (= (and d!288238 (not res!445174)) b!980806))

(assert (= (and b!980806 c!160384) b!980809))

(assert (= (and b!980806 (not c!160384)) b!980803))

(assert (= (and b!980809 res!445173) b!980811))

(assert (= (and b!980803 c!160385) b!980804))

(assert (= (and b!980803 (not c!160385)) b!980807))

(assert (= (and b!980804 res!445171) b!980808))

(assert (= (and b!980807 (not res!445172)) b!980810))

(assert (= (and b!980810 res!445170) b!980805))

(assert (= (or b!980808 b!980805) bm!63019))

(assert (= (or b!980804 b!980810) bm!63021))

(assert (= (or b!980811 bm!63021) bm!63020))

(declare-fun m!1180159 () Bool)

(assert (=> bm!63019 m!1180159))

(declare-fun m!1180161 () Bool)

(assert (=> bm!63020 m!1180161))

(declare-fun m!1180163 () Bool)

(assert (=> b!980809 m!1180163))

(assert (=> bm!62907 d!288238))

(declare-fun bs!243855 () Bool)

(declare-fun b!980817 () Bool)

(assert (= bs!243855 (and b!980817 b!979587)))

(declare-fun lambda!34946 () Int)

(assert (=> bs!243855 (not (= lambda!34946 lambda!34884))))

(declare-fun bs!243856 () Bool)

(assert (= bs!243856 (and b!980817 d!288168)))

(assert (=> bs!243856 (not (= lambda!34946 lambda!34938))))

(declare-fun bs!243857 () Bool)

(assert (= bs!243857 (and b!980817 d!288026)))

(assert (=> bs!243857 (not (= lambda!34946 lambda!34916))))

(declare-fun bs!243858 () Bool)

(assert (= bs!243858 (and b!980817 b!980541)))

(assert (=> bs!243858 (= (and (= s!10566 (_1!6486 lt!349924)) (= (reg!3062 (regTwo!5979 r!15766)) (reg!3062 (regTwo!5979 (regOne!5978 r!15766)))) (= (regTwo!5979 r!15766) (regTwo!5979 (regOne!5978 r!15766)))) (= lambda!34946 lambda!34942))))

(declare-fun bs!243859 () Bool)

(assert (= bs!243859 (and b!980817 b!980142)))

(assert (=> bs!243859 (not (= lambda!34946 lambda!34918))))

(declare-fun bs!243860 () Bool)

(assert (= bs!243860 (and b!980817 b!980546)))

(assert (=> bs!243860 (not (= lambda!34946 lambda!34943))))

(declare-fun bs!243861 () Bool)

(assert (= bs!243861 (and b!980817 b!979820)))

(assert (=> bs!243861 (not (= lambda!34946 lambda!34896))))

(assert (=> bs!243855 (not (= lambda!34946 lambda!34883))))

(declare-fun bs!243862 () Bool)

(assert (= bs!243862 (and b!980817 b!980783)))

(assert (=> bs!243862 (= (and (= (reg!3062 (regTwo!5979 r!15766)) (reg!3062 (regOne!5979 r!15766))) (= (regTwo!5979 r!15766) (regOne!5979 r!15766))) (= lambda!34946 lambda!34944))))

(declare-fun bs!243863 () Bool)

(assert (= bs!243863 (and b!980817 d!288020)))

(assert (=> bs!243863 (not (= lambda!34946 lambda!34910))))

(declare-fun bs!243864 () Bool)

(assert (= bs!243864 (and b!980817 b!980788)))

(assert (=> bs!243864 (not (= lambda!34946 lambda!34945))))

(assert (=> bs!243856 (not (= lambda!34946 lambda!34939))))

(declare-fun bs!243865 () Bool)

(assert (= bs!243865 (and b!980817 b!979815)))

(assert (=> bs!243865 (= (and (= (reg!3062 (regTwo!5979 r!15766)) (reg!3062 r!15766)) (= (regTwo!5979 r!15766) r!15766)) (= lambda!34946 lambda!34895))))

(assert (=> bs!243857 (not (= lambda!34946 lambda!34915))))

(declare-fun bs!243866 () Bool)

(assert (= bs!243866 (and b!980817 b!980137)))

(assert (=> bs!243866 (= (and (= s!10566 (_1!6486 lt!349924)) (= (reg!3062 (regTwo!5979 r!15766)) (reg!3062 (regOne!5978 r!15766))) (= (regTwo!5979 r!15766) (regOne!5978 r!15766))) (= lambda!34946 lambda!34917))))

(assert (=> b!980817 true))

(assert (=> b!980817 true))

(declare-fun bs!243867 () Bool)

(declare-fun b!980822 () Bool)

(assert (= bs!243867 (and b!980822 b!979587)))

(declare-fun lambda!34947 () Int)

(assert (=> bs!243867 (= (and (= (regOne!5978 (regTwo!5979 r!15766)) (regOne!5978 r!15766)) (= (regTwo!5978 (regTwo!5979 r!15766)) EmptyExpr!2733)) (= lambda!34947 lambda!34884))))

(declare-fun bs!243868 () Bool)

(assert (= bs!243868 (and b!980822 d!288168)))

(assert (=> bs!243868 (not (= lambda!34947 lambda!34938))))

(declare-fun bs!243869 () Bool)

(assert (= bs!243869 (and b!980822 b!980817)))

(assert (=> bs!243869 (not (= lambda!34947 lambda!34946))))

(declare-fun bs!243870 () Bool)

(assert (= bs!243870 (and b!980822 d!288026)))

(assert (=> bs!243870 (= (and (= (regOne!5978 (regTwo!5979 r!15766)) (regOne!5978 r!15766)) (= (regTwo!5978 (regTwo!5979 r!15766)) EmptyExpr!2733)) (= lambda!34947 lambda!34916))))

(declare-fun bs!243871 () Bool)

(assert (= bs!243871 (and b!980822 b!980541)))

(assert (=> bs!243871 (not (= lambda!34947 lambda!34942))))

(declare-fun bs!243872 () Bool)

(assert (= bs!243872 (and b!980822 b!980142)))

(assert (=> bs!243872 (= (and (= s!10566 (_1!6486 lt!349924)) (= (regOne!5978 (regTwo!5979 r!15766)) (regOne!5978 (regOne!5978 r!15766))) (= (regTwo!5978 (regTwo!5979 r!15766)) (regTwo!5978 (regOne!5978 r!15766)))) (= lambda!34947 lambda!34918))))

(declare-fun bs!243873 () Bool)

(assert (= bs!243873 (and b!980822 b!980546)))

(assert (=> bs!243873 (= (and (= s!10566 (_1!6486 lt!349924)) (= (regOne!5978 (regTwo!5979 r!15766)) (regOne!5978 (regTwo!5979 (regOne!5978 r!15766)))) (= (regTwo!5978 (regTwo!5979 r!15766)) (regTwo!5978 (regTwo!5979 (regOne!5978 r!15766))))) (= lambda!34947 lambda!34943))))

(declare-fun bs!243874 () Bool)

(assert (= bs!243874 (and b!980822 b!979820)))

(assert (=> bs!243874 (= (and (= (regOne!5978 (regTwo!5979 r!15766)) (regOne!5978 r!15766)) (= (regTwo!5978 (regTwo!5979 r!15766)) (regTwo!5978 r!15766))) (= lambda!34947 lambda!34896))))

(assert (=> bs!243867 (not (= lambda!34947 lambda!34883))))

(declare-fun bs!243875 () Bool)

(assert (= bs!243875 (and b!980822 b!980783)))

(assert (=> bs!243875 (not (= lambda!34947 lambda!34944))))

(declare-fun bs!243876 () Bool)

(assert (= bs!243876 (and b!980822 d!288020)))

(assert (=> bs!243876 (not (= lambda!34947 lambda!34910))))

(declare-fun bs!243877 () Bool)

(assert (= bs!243877 (and b!980822 b!980788)))

(assert (=> bs!243877 (= (and (= (regOne!5978 (regTwo!5979 r!15766)) (regOne!5978 (regOne!5979 r!15766))) (= (regTwo!5978 (regTwo!5979 r!15766)) (regTwo!5978 (regOne!5979 r!15766)))) (= lambda!34947 lambda!34945))))

(assert (=> bs!243868 (= (and (= (regOne!5978 (regTwo!5979 r!15766)) (regOne!5978 r!15766)) (= (regTwo!5978 (regTwo!5979 r!15766)) EmptyExpr!2733)) (= lambda!34947 lambda!34939))))

(declare-fun bs!243878 () Bool)

(assert (= bs!243878 (and b!980822 b!979815)))

(assert (=> bs!243878 (not (= lambda!34947 lambda!34895))))

(assert (=> bs!243870 (not (= lambda!34947 lambda!34915))))

(declare-fun bs!243879 () Bool)

(assert (= bs!243879 (and b!980822 b!980137)))

(assert (=> bs!243879 (not (= lambda!34947 lambda!34917))))

(assert (=> b!980822 true))

(assert (=> b!980822 true))

(declare-fun b!980812 () Bool)

(declare-fun e!631066 () Bool)

(declare-fun e!631062 () Bool)

(assert (=> b!980812 (= e!631066 e!631062)))

(declare-fun c!160388 () Bool)

(assert (=> b!980812 (= c!160388 ((_ is Star!2733) (regTwo!5979 r!15766)))))

(declare-fun b!980813 () Bool)

(declare-fun e!631063 () Bool)

(assert (=> b!980813 (= e!631066 e!631063)))

(declare-fun res!445177 () Bool)

(assert (=> b!980813 (= res!445177 (matchRSpec!532 (regOne!5979 (regTwo!5979 r!15766)) s!10566))))

(assert (=> b!980813 (=> res!445177 e!631063)))

(declare-fun b!980814 () Bool)

(declare-fun e!631064 () Bool)

(declare-fun call!63027 () Bool)

(assert (=> b!980814 (= e!631064 call!63027)))

(declare-fun b!980815 () Bool)

(declare-fun c!160389 () Bool)

(assert (=> b!980815 (= c!160389 ((_ is ElementMatch!2733) (regTwo!5979 r!15766)))))

(declare-fun e!631067 () Bool)

(declare-fun e!631065 () Bool)

(assert (=> b!980815 (= e!631067 e!631065)))

(declare-fun d!288240 () Bool)

(declare-fun c!160387 () Bool)

(assert (=> d!288240 (= c!160387 ((_ is EmptyExpr!2733) (regTwo!5979 r!15766)))))

(assert (=> d!288240 (= (matchRSpec!532 (regTwo!5979 r!15766) s!10566) e!631064)))

(declare-fun b!980816 () Bool)

(assert (=> b!980816 (= e!631063 (matchRSpec!532 (regTwo!5979 (regTwo!5979 r!15766)) s!10566))))

(declare-fun bm!63022 () Bool)

(assert (=> bm!63022 (= call!63027 (isEmpty!6269 s!10566))))

(declare-fun e!631061 () Bool)

(declare-fun call!63028 () Bool)

(assert (=> b!980817 (= e!631061 call!63028)))

(declare-fun b!980818 () Bool)

(assert (=> b!980818 (= e!631064 e!631067)))

(declare-fun res!445176 () Bool)

(assert (=> b!980818 (= res!445176 (not ((_ is EmptyLang!2733) (regTwo!5979 r!15766))))))

(assert (=> b!980818 (=> (not res!445176) (not e!631067))))

(declare-fun b!980819 () Bool)

(declare-fun c!160386 () Bool)

(assert (=> b!980819 (= c!160386 ((_ is Union!2733) (regTwo!5979 r!15766)))))

(assert (=> b!980819 (= e!631065 e!631066)))

(declare-fun b!980820 () Bool)

(assert (=> b!980820 (= e!631065 (= s!10566 (Cons!9947 (c!160088 (regTwo!5979 r!15766)) Nil!9947)))))

(declare-fun b!980821 () Bool)

(declare-fun res!445175 () Bool)

(assert (=> b!980821 (=> res!445175 e!631061)))

(assert (=> b!980821 (= res!445175 call!63027)))

(assert (=> b!980821 (= e!631062 e!631061)))

(assert (=> b!980822 (= e!631062 call!63028)))

(declare-fun bm!63023 () Bool)

(assert (=> bm!63023 (= call!63028 (Exists!470 (ite c!160388 lambda!34946 lambda!34947)))))

(assert (= (and d!288240 c!160387) b!980814))

(assert (= (and d!288240 (not c!160387)) b!980818))

(assert (= (and b!980818 res!445176) b!980815))

(assert (= (and b!980815 c!160389) b!980820))

(assert (= (and b!980815 (not c!160389)) b!980819))

(assert (= (and b!980819 c!160386) b!980813))

(assert (= (and b!980819 (not c!160386)) b!980812))

(assert (= (and b!980813 (not res!445177)) b!980816))

(assert (= (and b!980812 c!160388) b!980821))

(assert (= (and b!980812 (not c!160388)) b!980822))

(assert (= (and b!980821 (not res!445175)) b!980817))

(assert (= (or b!980817 b!980822) bm!63023))

(assert (= (or b!980814 b!980821) bm!63022))

(declare-fun m!1180165 () Bool)

(assert (=> b!980813 m!1180165))

(declare-fun m!1180167 () Bool)

(assert (=> b!980816 m!1180167))

(assert (=> bm!63022 m!1179387))

(declare-fun m!1180169 () Bool)

(assert (=> bm!63023 m!1180169))

(assert (=> b!979814 d!288240))

(assert (=> b!979980 d!288208))

(declare-fun d!288242 () Bool)

(assert (=> d!288242 (= (nullable!849 r!15766) (nullableFct!204 r!15766))))

(declare-fun bs!243880 () Bool)

(assert (= bs!243880 d!288242))

(declare-fun m!1180171 () Bool)

(assert (=> bs!243880 m!1180171))

(assert (=> b!979897 d!288242))

(assert (=> d!288048 d!288014))

(assert (=> d!288048 d!288046))

(declare-fun d!288244 () Bool)

(assert (=> d!288244 (= (matchR!1269 (regOne!5978 r!15766) (_1!6486 lt!349924)) (matchRSpec!532 (regOne!5978 r!15766) (_1!6486 lt!349924)))))

(assert (=> d!288244 true))

(declare-fun _$88!3050 () Unit!15125)

(assert (=> d!288244 (= (choose!6213 (regOne!5978 r!15766) (_1!6486 lt!349924)) _$88!3050)))

(declare-fun bs!243881 () Bool)

(assert (= bs!243881 d!288244))

(assert (=> bs!243881 m!1179399))

(assert (=> bs!243881 m!1179367))

(assert (=> d!288048 d!288244))

(assert (=> d!288048 d!288044))

(declare-fun d!288246 () Bool)

(assert (=> d!288246 true))

(assert (=> d!288246 true))

(declare-fun res!445178 () Bool)

(assert (=> d!288246 (= (choose!6215 lambda!34884) res!445178)))

(assert (=> d!288028 d!288246))

(assert (=> d!288040 d!288148))

(declare-fun b!980823 () Bool)

(declare-fun e!631074 () Bool)

(declare-fun e!631068 () Bool)

(assert (=> b!980823 (= e!631074 e!631068)))

(declare-fun c!160391 () Bool)

(assert (=> b!980823 (= c!160391 ((_ is Union!2733) (removeUselessConcat!350 (regOne!5978 r!15766))))))

(declare-fun bm!63024 () Bool)

(declare-fun call!63029 () Bool)

(assert (=> bm!63024 (= call!63029 (validRegex!1202 (ite c!160391 (regTwo!5979 (removeUselessConcat!350 (regOne!5978 r!15766))) (regTwo!5978 (removeUselessConcat!350 (regOne!5978 r!15766))))))))

(declare-fun b!980824 () Bool)

(declare-fun res!445180 () Bool)

(declare-fun e!631073 () Bool)

(assert (=> b!980824 (=> (not res!445180) (not e!631073))))

(declare-fun call!63030 () Bool)

(assert (=> b!980824 (= res!445180 call!63030)))

(assert (=> b!980824 (= e!631068 e!631073)))

(declare-fun b!980825 () Bool)

(declare-fun e!631071 () Bool)

(assert (=> b!980825 (= e!631071 call!63029)))

(declare-fun b!980826 () Bool)

(declare-fun e!631070 () Bool)

(assert (=> b!980826 (= e!631070 e!631074)))

(declare-fun c!160390 () Bool)

(assert (=> b!980826 (= c!160390 ((_ is Star!2733) (removeUselessConcat!350 (regOne!5978 r!15766))))))

(declare-fun b!980827 () Bool)

(declare-fun res!445181 () Bool)

(declare-fun e!631069 () Bool)

(assert (=> b!980827 (=> res!445181 e!631069)))

(assert (=> b!980827 (= res!445181 (not ((_ is Concat!4566) (removeUselessConcat!350 (regOne!5978 r!15766)))))))

(assert (=> b!980827 (= e!631068 e!631069)))

(declare-fun b!980828 () Bool)

(assert (=> b!980828 (= e!631073 call!63029)))

(declare-fun call!63031 () Bool)

(declare-fun bm!63025 () Bool)

(assert (=> bm!63025 (= call!63031 (validRegex!1202 (ite c!160390 (reg!3062 (removeUselessConcat!350 (regOne!5978 r!15766))) (ite c!160391 (regOne!5979 (removeUselessConcat!350 (regOne!5978 r!15766))) (regOne!5978 (removeUselessConcat!350 (regOne!5978 r!15766)))))))))

(declare-fun b!980830 () Bool)

(assert (=> b!980830 (= e!631069 e!631071)))

(declare-fun res!445179 () Bool)

(assert (=> b!980830 (=> (not res!445179) (not e!631071))))

(assert (=> b!980830 (= res!445179 call!63030)))

(declare-fun b!980831 () Bool)

(declare-fun e!631072 () Bool)

(assert (=> b!980831 (= e!631072 call!63031)))

(declare-fun bm!63026 () Bool)

(assert (=> bm!63026 (= call!63030 call!63031)))

(declare-fun d!288248 () Bool)

(declare-fun res!445183 () Bool)

(assert (=> d!288248 (=> res!445183 e!631070)))

(assert (=> d!288248 (= res!445183 ((_ is ElementMatch!2733) (removeUselessConcat!350 (regOne!5978 r!15766))))))

(assert (=> d!288248 (= (validRegex!1202 (removeUselessConcat!350 (regOne!5978 r!15766))) e!631070)))

(declare-fun b!980829 () Bool)

(assert (=> b!980829 (= e!631074 e!631072)))

(declare-fun res!445182 () Bool)

(assert (=> b!980829 (= res!445182 (not (nullable!849 (reg!3062 (removeUselessConcat!350 (regOne!5978 r!15766))))))))

(assert (=> b!980829 (=> (not res!445182) (not e!631072))))

(assert (= (and d!288248 (not res!445183)) b!980826))

(assert (= (and b!980826 c!160390) b!980829))

(assert (= (and b!980826 (not c!160390)) b!980823))

(assert (= (and b!980829 res!445182) b!980831))

(assert (= (and b!980823 c!160391) b!980824))

(assert (= (and b!980823 (not c!160391)) b!980827))

(assert (= (and b!980824 res!445180) b!980828))

(assert (= (and b!980827 (not res!445181)) b!980830))

(assert (= (and b!980830 res!445179) b!980825))

(assert (= (or b!980828 b!980825) bm!63024))

(assert (= (or b!980824 b!980830) bm!63026))

(assert (= (or b!980831 bm!63026) bm!63025))

(declare-fun m!1180173 () Bool)

(assert (=> bm!63024 m!1180173))

(declare-fun m!1180175 () Bool)

(assert (=> bm!63025 m!1180175))

(declare-fun m!1180177 () Bool)

(assert (=> b!980829 m!1180177))

(assert (=> d!288040 d!288248))

(assert (=> b!980084 d!288154))

(assert (=> b!980084 d!288156))

(declare-fun d!288250 () Bool)

(declare-fun e!631075 () Bool)

(assert (=> d!288250 e!631075))

(declare-fun res!445184 () Bool)

(assert (=> d!288250 (=> (not res!445184) (not e!631075))))

(declare-fun lt!350039 () Regex!2733)

(assert (=> d!288250 (= res!445184 (validRegex!1202 lt!350039))))

(declare-fun e!631078 () Regex!2733)

(assert (=> d!288250 (= lt!350039 e!631078)))

(declare-fun c!160392 () Bool)

(assert (=> d!288250 (= c!160392 (and ((_ is Concat!4566) (ite c!160197 (regTwo!5978 r!15766) (ite (or c!160198 c!160199) (regOne!5978 r!15766) (regOne!5979 r!15766)))) ((_ is EmptyExpr!2733) (regOne!5978 (ite c!160197 (regTwo!5978 r!15766) (ite (or c!160198 c!160199) (regOne!5978 r!15766) (regOne!5979 r!15766)))))))))

(assert (=> d!288250 (validRegex!1202 (ite c!160197 (regTwo!5978 r!15766) (ite (or c!160198 c!160199) (regOne!5978 r!15766) (regOne!5979 r!15766))))))

(assert (=> d!288250 (= (removeUselessConcat!350 (ite c!160197 (regTwo!5978 r!15766) (ite (or c!160198 c!160199) (regOne!5978 r!15766) (regOne!5979 r!15766)))) lt!350039)))

(declare-fun b!980832 () Bool)

(declare-fun e!631079 () Regex!2733)

(assert (=> b!980832 (= e!631079 (ite c!160197 (regTwo!5978 r!15766) (ite (or c!160198 c!160199) (regOne!5978 r!15766) (regOne!5979 r!15766))))))

(declare-fun b!980833 () Bool)

(declare-fun e!631076 () Regex!2733)

(assert (=> b!980833 (= e!631078 e!631076)))

(declare-fun c!160393 () Bool)

(assert (=> b!980833 (= c!160393 (and ((_ is Concat!4566) (ite c!160197 (regTwo!5978 r!15766) (ite (or c!160198 c!160199) (regOne!5978 r!15766) (regOne!5979 r!15766)))) ((_ is EmptyExpr!2733) (regTwo!5978 (ite c!160197 (regTwo!5978 r!15766) (ite (or c!160198 c!160199) (regOne!5978 r!15766) (regOne!5979 r!15766)))))))))

(declare-fun bm!63027 () Bool)

(declare-fun call!63034 () Regex!2733)

(declare-fun call!63033 () Regex!2733)

(assert (=> bm!63027 (= call!63034 call!63033)))

(declare-fun c!160394 () Bool)

(declare-fun call!63032 () Regex!2733)

(declare-fun bm!63028 () Bool)

(assert (=> bm!63028 (= call!63032 (removeUselessConcat!350 (ite c!160392 (regTwo!5978 (ite c!160197 (regTwo!5978 r!15766) (ite (or c!160198 c!160199) (regOne!5978 r!15766) (regOne!5979 r!15766)))) (ite (or c!160393 c!160394) (regOne!5978 (ite c!160197 (regTwo!5978 r!15766) (ite (or c!160198 c!160199) (regOne!5978 r!15766) (regOne!5979 r!15766)))) (regOne!5979 (ite c!160197 (regTwo!5978 r!15766) (ite (or c!160198 c!160199) (regOne!5978 r!15766) (regOne!5979 r!15766))))))))))

(declare-fun c!160396 () Bool)

(declare-fun b!980834 () Bool)

(assert (=> b!980834 (= c!160396 ((_ is Star!2733) (ite c!160197 (regTwo!5978 r!15766) (ite (or c!160198 c!160199) (regOne!5978 r!15766) (regOne!5979 r!15766)))))))

(declare-fun e!631080 () Regex!2733)

(assert (=> b!980834 (= e!631080 e!631079)))

(declare-fun bm!63029 () Bool)

(declare-fun call!63036 () Regex!2733)

(declare-fun call!63035 () Regex!2733)

(assert (=> bm!63029 (= call!63036 call!63035)))

(declare-fun b!980835 () Bool)

(assert (=> b!980835 (= e!631075 (= (nullable!849 lt!350039) (nullable!849 (ite c!160197 (regTwo!5978 r!15766) (ite (or c!160198 c!160199) (regOne!5978 r!15766) (regOne!5979 r!15766))))))))

(declare-fun b!980836 () Bool)

(declare-fun e!631077 () Regex!2733)

(assert (=> b!980836 (= e!631077 (Concat!4566 call!63036 call!63033))))

(declare-fun b!980837 () Bool)

(assert (=> b!980837 (= e!631076 call!63035)))

(declare-fun b!980838 () Bool)

(assert (=> b!980838 (= e!631078 call!63032)))

(declare-fun b!980839 () Bool)

(assert (=> b!980839 (= e!631077 e!631080)))

(declare-fun c!160395 () Bool)

(assert (=> b!980839 (= c!160395 ((_ is Union!2733) (ite c!160197 (regTwo!5978 r!15766) (ite (or c!160198 c!160199) (regOne!5978 r!15766) (regOne!5979 r!15766)))))))

(declare-fun bm!63030 () Bool)

(assert (=> bm!63030 (= call!63035 call!63032)))

(declare-fun b!980840 () Bool)

(assert (=> b!980840 (= c!160394 ((_ is Concat!4566) (ite c!160197 (regTwo!5978 r!15766) (ite (or c!160198 c!160199) (regOne!5978 r!15766) (regOne!5979 r!15766)))))))

(assert (=> b!980840 (= e!631076 e!631077)))

(declare-fun b!980841 () Bool)

(assert (=> b!980841 (= e!631079 (Star!2733 call!63034))))

(declare-fun bm!63031 () Bool)

(assert (=> bm!63031 (= call!63033 (removeUselessConcat!350 (ite c!160394 (regTwo!5978 (ite c!160197 (regTwo!5978 r!15766) (ite (or c!160198 c!160199) (regOne!5978 r!15766) (regOne!5979 r!15766)))) (ite c!160395 (regTwo!5979 (ite c!160197 (regTwo!5978 r!15766) (ite (or c!160198 c!160199) (regOne!5978 r!15766) (regOne!5979 r!15766)))) (reg!3062 (ite c!160197 (regTwo!5978 r!15766) (ite (or c!160198 c!160199) (regOne!5978 r!15766) (regOne!5979 r!15766))))))))))

(declare-fun b!980842 () Bool)

(assert (=> b!980842 (= e!631080 (Union!2733 call!63036 call!63034))))

(assert (= (and d!288250 c!160392) b!980838))

(assert (= (and d!288250 (not c!160392)) b!980833))

(assert (= (and b!980833 c!160393) b!980837))

(assert (= (and b!980833 (not c!160393)) b!980840))

(assert (= (and b!980840 c!160394) b!980836))

(assert (= (and b!980840 (not c!160394)) b!980839))

(assert (= (and b!980839 c!160395) b!980842))

(assert (= (and b!980839 (not c!160395)) b!980834))

(assert (= (and b!980834 c!160396) b!980841))

(assert (= (and b!980834 (not c!160396)) b!980832))

(assert (= (or b!980842 b!980841) bm!63027))

(assert (= (or b!980836 bm!63027) bm!63031))

(assert (= (or b!980836 b!980842) bm!63029))

(assert (= (or b!980837 bm!63029) bm!63030))

(assert (= (or b!980838 bm!63030) bm!63028))

(assert (= (and d!288250 res!445184) b!980835))

(declare-fun m!1180179 () Bool)

(assert (=> d!288250 m!1180179))

(declare-fun m!1180181 () Bool)

(assert (=> d!288250 m!1180181))

(declare-fun m!1180183 () Bool)

(assert (=> bm!63028 m!1180183))

(declare-fun m!1180185 () Bool)

(assert (=> b!980835 m!1180185))

(declare-fun m!1180187 () Bool)

(assert (=> b!980835 m!1180187))

(declare-fun m!1180189 () Bool)

(assert (=> bm!63031 m!1180189))

(assert (=> bm!62886 d!288250))

(declare-fun d!288252 () Bool)

(assert (=> d!288252 (= (isDefined!1944 (findConcatSeparation!408 (regOne!5978 r!15766) EmptyExpr!2733 Nil!9947 s!10566 s!10566)) (not (isEmpty!6271 (findConcatSeparation!408 (regOne!5978 r!15766) EmptyExpr!2733 Nil!9947 s!10566 s!10566))))))

(declare-fun bs!243882 () Bool)

(assert (= bs!243882 d!288252))

(assert (=> bs!243882 m!1179375))

(declare-fun m!1180191 () Bool)

(assert (=> bs!243882 m!1180191))

(assert (=> d!288020 d!288252))

(assert (=> d!288020 d!288044))

(assert (=> d!288020 d!288016))

(declare-fun bs!243883 () Bool)

(declare-fun d!288254 () Bool)

(assert (= bs!243883 (and d!288254 b!979587)))

(declare-fun lambda!34950 () Int)

(assert (=> bs!243883 (not (= lambda!34950 lambda!34884))))

(declare-fun bs!243884 () Bool)

(assert (= bs!243884 (and d!288254 d!288168)))

(assert (=> bs!243884 (= lambda!34950 lambda!34938)))

(declare-fun bs!243885 () Bool)

(assert (= bs!243885 (and d!288254 b!980817)))

(assert (=> bs!243885 (not (= lambda!34950 lambda!34946))))

(declare-fun bs!243886 () Bool)

(assert (= bs!243886 (and d!288254 d!288026)))

(assert (=> bs!243886 (not (= lambda!34950 lambda!34916))))

(declare-fun bs!243887 () Bool)

(assert (= bs!243887 (and d!288254 b!980822)))

(assert (=> bs!243887 (not (= lambda!34950 lambda!34947))))

(declare-fun bs!243888 () Bool)

(assert (= bs!243888 (and d!288254 b!980541)))

(assert (=> bs!243888 (not (= lambda!34950 lambda!34942))))

(declare-fun bs!243889 () Bool)

(assert (= bs!243889 (and d!288254 b!980142)))

(assert (=> bs!243889 (not (= lambda!34950 lambda!34918))))

(declare-fun bs!243890 () Bool)

(assert (= bs!243890 (and d!288254 b!980546)))

(assert (=> bs!243890 (not (= lambda!34950 lambda!34943))))

(declare-fun bs!243891 () Bool)

(assert (= bs!243891 (and d!288254 b!979820)))

(assert (=> bs!243891 (not (= lambda!34950 lambda!34896))))

(assert (=> bs!243883 (= lambda!34950 lambda!34883)))

(declare-fun bs!243892 () Bool)

(assert (= bs!243892 (and d!288254 b!980783)))

(assert (=> bs!243892 (not (= lambda!34950 lambda!34944))))

(declare-fun bs!243893 () Bool)

(assert (= bs!243893 (and d!288254 d!288020)))

(assert (=> bs!243893 (= lambda!34950 lambda!34910)))

(declare-fun bs!243894 () Bool)

(assert (= bs!243894 (and d!288254 b!980788)))

(assert (=> bs!243894 (not (= lambda!34950 lambda!34945))))

(assert (=> bs!243884 (not (= lambda!34950 lambda!34939))))

(declare-fun bs!243895 () Bool)

(assert (= bs!243895 (and d!288254 b!979815)))

(assert (=> bs!243895 (not (= lambda!34950 lambda!34895))))

(assert (=> bs!243886 (= lambda!34950 lambda!34915)))

(declare-fun bs!243896 () Bool)

(assert (= bs!243896 (and d!288254 b!980137)))

(assert (=> bs!243896 (not (= lambda!34950 lambda!34917))))

(assert (=> d!288254 true))

(assert (=> d!288254 true))

(assert (=> d!288254 true))

(assert (=> d!288254 (= (isDefined!1944 (findConcatSeparation!408 (regOne!5978 r!15766) EmptyExpr!2733 Nil!9947 s!10566 s!10566)) (Exists!470 lambda!34950))))

(assert (=> d!288254 true))

(declare-fun _$89!1170 () Unit!15125)

(assert (=> d!288254 (= (choose!6214 (regOne!5978 r!15766) EmptyExpr!2733 s!10566) _$89!1170)))

(declare-fun bs!243897 () Bool)

(assert (= bs!243897 d!288254))

(assert (=> bs!243897 m!1179375))

(assert (=> bs!243897 m!1179375))

(assert (=> bs!243897 m!1179593))

(declare-fun m!1180193 () Bool)

(assert (=> bs!243897 m!1180193))

(assert (=> d!288020 d!288254))

(declare-fun d!288256 () Bool)

(assert (=> d!288256 (= (Exists!470 lambda!34910) (choose!6215 lambda!34910))))

(declare-fun bs!243898 () Bool)

(assert (= bs!243898 d!288256))

(declare-fun m!1180195 () Bool)

(assert (=> bs!243898 m!1180195))

(assert (=> d!288020 d!288256))

(declare-fun b!980847 () Bool)

(declare-fun e!631084 () Bool)

(declare-fun lt!350040 () Bool)

(assert (=> b!980847 (= e!631084 (not lt!350040))))

(declare-fun b!980848 () Bool)

(declare-fun e!631088 () Bool)

(declare-fun e!631085 () Bool)

(assert (=> b!980848 (= e!631088 e!631085)))

(declare-fun res!445193 () Bool)

(assert (=> b!980848 (=> (not res!445193) (not e!631085))))

(assert (=> b!980848 (= res!445193 (not lt!350040))))

(declare-fun b!980849 () Bool)

(declare-fun res!445194 () Bool)

(declare-fun e!631087 () Bool)

(assert (=> b!980849 (=> (not res!445194) (not e!631087))))

(assert (=> b!980849 (= res!445194 (isEmpty!6269 (tail!1370 (tail!1370 (_1!6486 lt!349924)))))))

(declare-fun b!980850 () Bool)

(assert (=> b!980850 (= e!631087 (= (head!1808 (tail!1370 (_1!6486 lt!349924))) (c!160088 (derivativeStep!655 (removeUselessConcat!350 (regOne!5978 r!15766)) (head!1808 (_1!6486 lt!349924))))))))

(declare-fun b!980851 () Bool)

(declare-fun e!631083 () Bool)

(assert (=> b!980851 (= e!631083 (matchR!1269 (derivativeStep!655 (derivativeStep!655 (removeUselessConcat!350 (regOne!5978 r!15766)) (head!1808 (_1!6486 lt!349924))) (head!1808 (tail!1370 (_1!6486 lt!349924)))) (tail!1370 (tail!1370 (_1!6486 lt!349924)))))))

(declare-fun b!980852 () Bool)

(declare-fun e!631086 () Bool)

(assert (=> b!980852 (= e!631086 (not (= (head!1808 (tail!1370 (_1!6486 lt!349924))) (c!160088 (derivativeStep!655 (removeUselessConcat!350 (regOne!5978 r!15766)) (head!1808 (_1!6486 lt!349924)))))))))

(declare-fun b!980853 () Bool)

(declare-fun e!631089 () Bool)

(assert (=> b!980853 (= e!631089 e!631084)))

(declare-fun c!160398 () Bool)

(assert (=> b!980853 (= c!160398 ((_ is EmptyLang!2733) (derivativeStep!655 (removeUselessConcat!350 (regOne!5978 r!15766)) (head!1808 (_1!6486 lt!349924)))))))

(declare-fun b!980854 () Bool)

(declare-fun res!445195 () Bool)

(assert (=> b!980854 (=> res!445195 e!631088)))

(assert (=> b!980854 (= res!445195 (not ((_ is ElementMatch!2733) (derivativeStep!655 (removeUselessConcat!350 (regOne!5978 r!15766)) (head!1808 (_1!6486 lt!349924))))))))

(assert (=> b!980854 (= e!631084 e!631088)))

(declare-fun b!980855 () Bool)

(declare-fun res!445190 () Bool)

(assert (=> b!980855 (=> res!445190 e!631088)))

(assert (=> b!980855 (= res!445190 e!631087)))

(declare-fun res!445192 () Bool)

(assert (=> b!980855 (=> (not res!445192) (not e!631087))))

(assert (=> b!980855 (= res!445192 lt!350040)))

(declare-fun b!980857 () Bool)

(declare-fun res!445189 () Bool)

(assert (=> b!980857 (=> res!445189 e!631086)))

(assert (=> b!980857 (= res!445189 (not (isEmpty!6269 (tail!1370 (tail!1370 (_1!6486 lt!349924))))))))

(declare-fun b!980858 () Bool)

(declare-fun res!445196 () Bool)

(assert (=> b!980858 (=> (not res!445196) (not e!631087))))

(declare-fun call!63037 () Bool)

(assert (=> b!980858 (= res!445196 (not call!63037))))

(declare-fun bm!63032 () Bool)

(assert (=> bm!63032 (= call!63037 (isEmpty!6269 (tail!1370 (_1!6486 lt!349924))))))

(declare-fun b!980859 () Bool)

(assert (=> b!980859 (= e!631089 (= lt!350040 call!63037))))

(declare-fun b!980860 () Bool)

(assert (=> b!980860 (= e!631085 e!631086)))

(declare-fun res!445191 () Bool)

(assert (=> b!980860 (=> res!445191 e!631086)))

(assert (=> b!980860 (= res!445191 call!63037)))

(declare-fun b!980856 () Bool)

(assert (=> b!980856 (= e!631083 (nullable!849 (derivativeStep!655 (removeUselessConcat!350 (regOne!5978 r!15766)) (head!1808 (_1!6486 lt!349924)))))))

(declare-fun d!288258 () Bool)

(assert (=> d!288258 e!631089))

(declare-fun c!160399 () Bool)

(assert (=> d!288258 (= c!160399 ((_ is EmptyExpr!2733) (derivativeStep!655 (removeUselessConcat!350 (regOne!5978 r!15766)) (head!1808 (_1!6486 lt!349924)))))))

(assert (=> d!288258 (= lt!350040 e!631083)))

(declare-fun c!160397 () Bool)

(assert (=> d!288258 (= c!160397 (isEmpty!6269 (tail!1370 (_1!6486 lt!349924))))))

(assert (=> d!288258 (validRegex!1202 (derivativeStep!655 (removeUselessConcat!350 (regOne!5978 r!15766)) (head!1808 (_1!6486 lt!349924))))))

(assert (=> d!288258 (= (matchR!1269 (derivativeStep!655 (removeUselessConcat!350 (regOne!5978 r!15766)) (head!1808 (_1!6486 lt!349924))) (tail!1370 (_1!6486 lt!349924))) lt!350040)))

(assert (= (and d!288258 c!160397) b!980856))

(assert (= (and d!288258 (not c!160397)) b!980851))

(assert (= (and d!288258 c!160399) b!980859))

(assert (= (and d!288258 (not c!160399)) b!980853))

(assert (= (and b!980853 c!160398) b!980847))

(assert (= (and b!980853 (not c!160398)) b!980854))

(assert (= (and b!980854 (not res!445195)) b!980855))

(assert (= (and b!980855 res!445192) b!980858))

(assert (= (and b!980858 res!445196) b!980849))

(assert (= (and b!980849 res!445194) b!980850))

(assert (= (and b!980855 (not res!445190)) b!980848))

(assert (= (and b!980848 res!445193) b!980860))

(assert (= (and b!980860 (not res!445191)) b!980857))

(assert (= (and b!980857 (not res!445189)) b!980852))

(assert (= (or b!980859 b!980858 b!980860) bm!63032))

(assert (=> bm!63032 m!1179565))

(assert (=> bm!63032 m!1179569))

(assert (=> b!980856 m!1179639))

(declare-fun m!1180197 () Bool)

(assert (=> b!980856 m!1180197))

(assert (=> b!980851 m!1179565))

(assert (=> b!980851 m!1180067))

(assert (=> b!980851 m!1179639))

(assert (=> b!980851 m!1180067))

(declare-fun m!1180199 () Bool)

(assert (=> b!980851 m!1180199))

(assert (=> b!980851 m!1179565))

(assert (=> b!980851 m!1180071))

(assert (=> b!980851 m!1180199))

(assert (=> b!980851 m!1180071))

(declare-fun m!1180201 () Bool)

(assert (=> b!980851 m!1180201))

(assert (=> d!288258 m!1179565))

(assert (=> d!288258 m!1179569))

(assert (=> d!288258 m!1179639))

(declare-fun m!1180203 () Bool)

(assert (=> d!288258 m!1180203))

(assert (=> b!980852 m!1179565))

(assert (=> b!980852 m!1180067))

(assert (=> b!980850 m!1179565))

(assert (=> b!980850 m!1180067))

(assert (=> b!980849 m!1179565))

(assert (=> b!980849 m!1180071))

(assert (=> b!980849 m!1180071))

(assert (=> b!980849 m!1180077))

(assert (=> b!980857 m!1179565))

(assert (=> b!980857 m!1180071))

(assert (=> b!980857 m!1180071))

(assert (=> b!980857 m!1180077))

(assert (=> b!980086 d!288258))

(declare-fun bm!63033 () Bool)

(declare-fun call!63038 () Regex!2733)

(declare-fun call!63039 () Regex!2733)

(assert (=> bm!63033 (= call!63038 call!63039)))

(declare-fun d!288260 () Bool)

(declare-fun lt!350041 () Regex!2733)

(assert (=> d!288260 (validRegex!1202 lt!350041)))

(declare-fun e!631092 () Regex!2733)

(assert (=> d!288260 (= lt!350041 e!631092)))

(declare-fun c!160403 () Bool)

(assert (=> d!288260 (= c!160403 (or ((_ is EmptyExpr!2733) (removeUselessConcat!350 (regOne!5978 r!15766))) ((_ is EmptyLang!2733) (removeUselessConcat!350 (regOne!5978 r!15766)))))))

(assert (=> d!288260 (validRegex!1202 (removeUselessConcat!350 (regOne!5978 r!15766)))))

(assert (=> d!288260 (= (derivativeStep!655 (removeUselessConcat!350 (regOne!5978 r!15766)) (head!1808 (_1!6486 lt!349924))) lt!350041)))

(declare-fun b!980861 () Bool)

(declare-fun e!631094 () Regex!2733)

(assert (=> b!980861 (= e!631094 (Concat!4566 call!63039 (removeUselessConcat!350 (regOne!5978 r!15766))))))

(declare-fun b!980862 () Bool)

(declare-fun e!631093 () Regex!2733)

(declare-fun call!63040 () Regex!2733)

(declare-fun call!63041 () Regex!2733)

(assert (=> b!980862 (= e!631093 (Union!2733 call!63040 call!63041))))

(declare-fun bm!63034 () Bool)

(declare-fun c!160402 () Bool)

(assert (=> bm!63034 (= call!63041 (derivativeStep!655 (ite c!160402 (regTwo!5979 (removeUselessConcat!350 (regOne!5978 r!15766))) (regOne!5978 (removeUselessConcat!350 (regOne!5978 r!15766)))) (head!1808 (_1!6486 lt!349924))))))

(declare-fun b!980863 () Bool)

(declare-fun c!160404 () Bool)

(assert (=> b!980863 (= c!160404 (nullable!849 (regOne!5978 (removeUselessConcat!350 (regOne!5978 r!15766)))))))

(declare-fun e!631091 () Regex!2733)

(assert (=> b!980863 (= e!631094 e!631091)))

(declare-fun bm!63035 () Bool)

(assert (=> bm!63035 (= call!63039 call!63040)))

(declare-fun c!160401 () Bool)

(declare-fun bm!63036 () Bool)

(assert (=> bm!63036 (= call!63040 (derivativeStep!655 (ite c!160402 (regOne!5979 (removeUselessConcat!350 (regOne!5978 r!15766))) (ite c!160401 (reg!3062 (removeUselessConcat!350 (regOne!5978 r!15766))) (ite c!160404 (regTwo!5978 (removeUselessConcat!350 (regOne!5978 r!15766))) (regOne!5978 (removeUselessConcat!350 (regOne!5978 r!15766)))))) (head!1808 (_1!6486 lt!349924))))))

(declare-fun b!980864 () Bool)

(assert (=> b!980864 (= e!631091 (Union!2733 (Concat!4566 call!63041 (regTwo!5978 (removeUselessConcat!350 (regOne!5978 r!15766)))) call!63038))))

(declare-fun b!980865 () Bool)

(declare-fun e!631090 () Regex!2733)

(assert (=> b!980865 (= e!631090 (ite (= (head!1808 (_1!6486 lt!349924)) (c!160088 (removeUselessConcat!350 (regOne!5978 r!15766)))) EmptyExpr!2733 EmptyLang!2733))))

(declare-fun b!980866 () Bool)

(assert (=> b!980866 (= e!631093 e!631094)))

(assert (=> b!980866 (= c!160401 ((_ is Star!2733) (removeUselessConcat!350 (regOne!5978 r!15766))))))

(declare-fun b!980867 () Bool)

(assert (=> b!980867 (= e!631091 (Union!2733 (Concat!4566 call!63038 (regTwo!5978 (removeUselessConcat!350 (regOne!5978 r!15766)))) EmptyLang!2733))))

(declare-fun b!980868 () Bool)

(assert (=> b!980868 (= e!631092 e!631090)))

(declare-fun c!160400 () Bool)

(assert (=> b!980868 (= c!160400 ((_ is ElementMatch!2733) (removeUselessConcat!350 (regOne!5978 r!15766))))))

(declare-fun b!980869 () Bool)

(assert (=> b!980869 (= c!160402 ((_ is Union!2733) (removeUselessConcat!350 (regOne!5978 r!15766))))))

(assert (=> b!980869 (= e!631090 e!631093)))

(declare-fun b!980870 () Bool)

(assert (=> b!980870 (= e!631092 EmptyLang!2733)))

(assert (= (and d!288260 c!160403) b!980870))

(assert (= (and d!288260 (not c!160403)) b!980868))

(assert (= (and b!980868 c!160400) b!980865))

(assert (= (and b!980868 (not c!160400)) b!980869))

(assert (= (and b!980869 c!160402) b!980862))

(assert (= (and b!980869 (not c!160402)) b!980866))

(assert (= (and b!980866 c!160401) b!980861))

(assert (= (and b!980866 (not c!160401)) b!980863))

(assert (= (and b!980863 c!160404) b!980864))

(assert (= (and b!980863 (not c!160404)) b!980867))

(assert (= (or b!980864 b!980867) bm!63033))

(assert (= (or b!980861 bm!63033) bm!63035))

(assert (= (or b!980862 bm!63035) bm!63036))

(assert (= (or b!980862 b!980864) bm!63034))

(declare-fun m!1180205 () Bool)

(assert (=> d!288260 m!1180205))

(assert (=> d!288260 m!1179391))

(assert (=> d!288260 m!1179643))

(assert (=> bm!63034 m!1179561))

(declare-fun m!1180207 () Bool)

(assert (=> bm!63034 m!1180207))

(declare-fun m!1180209 () Bool)

(assert (=> b!980863 m!1180209))

(assert (=> bm!63036 m!1179561))

(declare-fun m!1180211 () Bool)

(assert (=> bm!63036 m!1180211))

(assert (=> b!980086 d!288260))

(assert (=> b!980086 d!288222))

(assert (=> b!980086 d!288156))

(declare-fun d!288262 () Bool)

(assert (=> d!288262 (= (nullable!849 (reg!3062 r!15766)) (nullableFct!204 (reg!3062 r!15766)))))

(declare-fun bs!243899 () Bool)

(assert (= bs!243899 d!288262))

(declare-fun m!1180213 () Bool)

(assert (=> bs!243899 m!1180213))

(assert (=> b!980120 d!288262))

(assert (=> b!980060 d!288158))

(declare-fun d!288264 () Bool)

(assert (=> d!288264 (= (Exists!470 (ite c!160152 lambda!34895 lambda!34896)) (choose!6215 (ite c!160152 lambda!34895 lambda!34896)))))

(declare-fun bs!243900 () Bool)

(assert (= bs!243900 d!288264))

(declare-fun m!1180215 () Bool)

(assert (=> bs!243900 m!1180215))

(assert (=> bm!62864 d!288264))

(declare-fun b!980871 () Bool)

(declare-fun e!631101 () Bool)

(declare-fun e!631095 () Bool)

(assert (=> b!980871 (= e!631101 e!631095)))

(declare-fun c!160406 () Bool)

(assert (=> b!980871 (= c!160406 ((_ is Union!2733) lt!349986))))

(declare-fun bm!63037 () Bool)

(declare-fun call!63042 () Bool)

(assert (=> bm!63037 (= call!63042 (validRegex!1202 (ite c!160406 (regTwo!5979 lt!349986) (regTwo!5978 lt!349986))))))

(declare-fun b!980872 () Bool)

(declare-fun res!445198 () Bool)

(declare-fun e!631100 () Bool)

(assert (=> b!980872 (=> (not res!445198) (not e!631100))))

(declare-fun call!63043 () Bool)

(assert (=> b!980872 (= res!445198 call!63043)))

(assert (=> b!980872 (= e!631095 e!631100)))

(declare-fun b!980873 () Bool)

(declare-fun e!631098 () Bool)

(assert (=> b!980873 (= e!631098 call!63042)))

(declare-fun b!980874 () Bool)

(declare-fun e!631097 () Bool)

(assert (=> b!980874 (= e!631097 e!631101)))

(declare-fun c!160405 () Bool)

(assert (=> b!980874 (= c!160405 ((_ is Star!2733) lt!349986))))

(declare-fun b!980875 () Bool)

(declare-fun res!445199 () Bool)

(declare-fun e!631096 () Bool)

(assert (=> b!980875 (=> res!445199 e!631096)))

(assert (=> b!980875 (= res!445199 (not ((_ is Concat!4566) lt!349986)))))

(assert (=> b!980875 (= e!631095 e!631096)))

(declare-fun b!980876 () Bool)

(assert (=> b!980876 (= e!631100 call!63042)))

(declare-fun call!63044 () Bool)

(declare-fun bm!63038 () Bool)

(assert (=> bm!63038 (= call!63044 (validRegex!1202 (ite c!160405 (reg!3062 lt!349986) (ite c!160406 (regOne!5979 lt!349986) (regOne!5978 lt!349986)))))))

(declare-fun b!980878 () Bool)

(assert (=> b!980878 (= e!631096 e!631098)))

(declare-fun res!445197 () Bool)

(assert (=> b!980878 (=> (not res!445197) (not e!631098))))

(assert (=> b!980878 (= res!445197 call!63043)))

(declare-fun b!980879 () Bool)

(declare-fun e!631099 () Bool)

(assert (=> b!980879 (= e!631099 call!63044)))

(declare-fun bm!63039 () Bool)

(assert (=> bm!63039 (= call!63043 call!63044)))

(declare-fun d!288266 () Bool)

(declare-fun res!445201 () Bool)

(assert (=> d!288266 (=> res!445201 e!631097)))

(assert (=> d!288266 (= res!445201 ((_ is ElementMatch!2733) lt!349986))))

(assert (=> d!288266 (= (validRegex!1202 lt!349986) e!631097)))

(declare-fun b!980877 () Bool)

(assert (=> b!980877 (= e!631101 e!631099)))

(declare-fun res!445200 () Bool)

(assert (=> b!980877 (= res!445200 (not (nullable!849 (reg!3062 lt!349986))))))

(assert (=> b!980877 (=> (not res!445200) (not e!631099))))

(assert (= (and d!288266 (not res!445201)) b!980874))

(assert (= (and b!980874 c!160405) b!980877))

(assert (= (and b!980874 (not c!160405)) b!980871))

(assert (= (and b!980877 res!445200) b!980879))

(assert (= (and b!980871 c!160406) b!980872))

(assert (= (and b!980871 (not c!160406)) b!980875))

(assert (= (and b!980872 res!445198) b!980876))

(assert (= (and b!980875 (not res!445199)) b!980878))

(assert (= (and b!980878 res!445197) b!980873))

(assert (= (or b!980876 b!980873) bm!63037))

(assert (= (or b!980872 b!980878) bm!63039))

(assert (= (or b!980879 bm!63039) bm!63038))

(declare-fun m!1180217 () Bool)

(assert (=> bm!63037 m!1180217))

(declare-fun m!1180219 () Bool)

(assert (=> bm!63038 m!1180219))

(declare-fun m!1180221 () Bool)

(assert (=> b!980877 m!1180221))

(assert (=> d!288036 d!288266))

(assert (=> d!288036 d!288044))

(declare-fun b!980880 () Bool)

(declare-fun e!631103 () Bool)

(declare-fun lt!350042 () Bool)

(assert (=> b!980880 (= e!631103 (not lt!350042))))

(declare-fun b!980881 () Bool)

(declare-fun e!631107 () Bool)

(declare-fun e!631104 () Bool)

(assert (=> b!980881 (= e!631107 e!631104)))

(declare-fun res!445206 () Bool)

(assert (=> b!980881 (=> (not res!445206) (not e!631104))))

(assert (=> b!980881 (= res!445206 (not lt!350042))))

(declare-fun b!980882 () Bool)

(declare-fun res!445207 () Bool)

(declare-fun e!631106 () Bool)

(assert (=> b!980882 (=> (not res!445207) (not e!631106))))

(assert (=> b!980882 (= res!445207 (isEmpty!6269 (tail!1370 (_1!6486 (get!3447 lt!349974)))))))

(declare-fun b!980883 () Bool)

(assert (=> b!980883 (= e!631106 (= (head!1808 (_1!6486 (get!3447 lt!349974))) (c!160088 (regOne!5978 r!15766))))))

(declare-fun b!980884 () Bool)

(declare-fun e!631102 () Bool)

(assert (=> b!980884 (= e!631102 (matchR!1269 (derivativeStep!655 (regOne!5978 r!15766) (head!1808 (_1!6486 (get!3447 lt!349974)))) (tail!1370 (_1!6486 (get!3447 lt!349974)))))))

(declare-fun b!980885 () Bool)

(declare-fun e!631105 () Bool)

(assert (=> b!980885 (= e!631105 (not (= (head!1808 (_1!6486 (get!3447 lt!349974))) (c!160088 (regOne!5978 r!15766)))))))

(declare-fun b!980886 () Bool)

(declare-fun e!631108 () Bool)

(assert (=> b!980886 (= e!631108 e!631103)))

(declare-fun c!160408 () Bool)

(assert (=> b!980886 (= c!160408 ((_ is EmptyLang!2733) (regOne!5978 r!15766)))))

(declare-fun b!980887 () Bool)

(declare-fun res!445208 () Bool)

(assert (=> b!980887 (=> res!445208 e!631107)))

(assert (=> b!980887 (= res!445208 (not ((_ is ElementMatch!2733) (regOne!5978 r!15766))))))

(assert (=> b!980887 (= e!631103 e!631107)))

(declare-fun b!980888 () Bool)

(declare-fun res!445203 () Bool)

(assert (=> b!980888 (=> res!445203 e!631107)))

(assert (=> b!980888 (= res!445203 e!631106)))

(declare-fun res!445205 () Bool)

(assert (=> b!980888 (=> (not res!445205) (not e!631106))))

(assert (=> b!980888 (= res!445205 lt!350042)))

(declare-fun b!980890 () Bool)

(declare-fun res!445202 () Bool)

(assert (=> b!980890 (=> res!445202 e!631105)))

(assert (=> b!980890 (= res!445202 (not (isEmpty!6269 (tail!1370 (_1!6486 (get!3447 lt!349974))))))))

(declare-fun b!980891 () Bool)

(declare-fun res!445209 () Bool)

(assert (=> b!980891 (=> (not res!445209) (not e!631106))))

(declare-fun call!63045 () Bool)

(assert (=> b!980891 (= res!445209 (not call!63045))))

(declare-fun bm!63040 () Bool)

(assert (=> bm!63040 (= call!63045 (isEmpty!6269 (_1!6486 (get!3447 lt!349974))))))

(declare-fun b!980892 () Bool)

(assert (=> b!980892 (= e!631108 (= lt!350042 call!63045))))

(declare-fun b!980893 () Bool)

(assert (=> b!980893 (= e!631104 e!631105)))

(declare-fun res!445204 () Bool)

(assert (=> b!980893 (=> res!445204 e!631105)))

(assert (=> b!980893 (= res!445204 call!63045)))

(declare-fun b!980889 () Bool)

(assert (=> b!980889 (= e!631102 (nullable!849 (regOne!5978 r!15766)))))

(declare-fun d!288268 () Bool)

(assert (=> d!288268 e!631108))

(declare-fun c!160409 () Bool)

(assert (=> d!288268 (= c!160409 ((_ is EmptyExpr!2733) (regOne!5978 r!15766)))))

(assert (=> d!288268 (= lt!350042 e!631102)))

(declare-fun c!160407 () Bool)

(assert (=> d!288268 (= c!160407 (isEmpty!6269 (_1!6486 (get!3447 lt!349974))))))

(assert (=> d!288268 (validRegex!1202 (regOne!5978 r!15766))))

(assert (=> d!288268 (= (matchR!1269 (regOne!5978 r!15766) (_1!6486 (get!3447 lt!349974))) lt!350042)))

(assert (= (and d!288268 c!160407) b!980889))

(assert (= (and d!288268 (not c!160407)) b!980884))

(assert (= (and d!288268 c!160409) b!980892))

(assert (= (and d!288268 (not c!160409)) b!980886))

(assert (= (and b!980886 c!160408) b!980880))

(assert (= (and b!980886 (not c!160408)) b!980887))

(assert (= (and b!980887 (not res!445208)) b!980888))

(assert (= (and b!980888 res!445205) b!980891))

(assert (= (and b!980891 res!445209) b!980882))

(assert (= (and b!980882 res!445207) b!980883))

(assert (= (and b!980888 (not res!445203)) b!980881))

(assert (= (and b!980881 res!445206) b!980893))

(assert (= (and b!980893 (not res!445204)) b!980890))

(assert (= (and b!980890 (not res!445202)) b!980885))

(assert (= (or b!980892 b!980891 b!980893) bm!63040))

(declare-fun m!1180223 () Bool)

(assert (=> bm!63040 m!1180223))

(assert (=> b!980889 m!1179559))

(declare-fun m!1180225 () Bool)

(assert (=> b!980884 m!1180225))

(assert (=> b!980884 m!1180225))

(declare-fun m!1180227 () Bool)

(assert (=> b!980884 m!1180227))

(declare-fun m!1180229 () Bool)

(assert (=> b!980884 m!1180229))

(assert (=> b!980884 m!1180227))

(assert (=> b!980884 m!1180229))

(declare-fun m!1180231 () Bool)

(assert (=> b!980884 m!1180231))

(assert (=> d!288268 m!1180223))

(assert (=> d!288268 m!1179365))

(assert (=> b!980885 m!1180225))

(assert (=> b!980883 m!1180225))

(assert (=> b!980882 m!1180229))

(assert (=> b!980882 m!1180229))

(declare-fun m!1180233 () Bool)

(assert (=> b!980882 m!1180233))

(assert (=> b!980890 m!1180229))

(assert (=> b!980890 m!1180229))

(assert (=> b!980890 m!1180233))

(assert (=> b!980003 d!288268))

(assert (=> b!980003 d!288184))

(declare-fun d!288270 () Bool)

(assert (=> d!288270 (= (nullable!849 (removeUselessConcat!350 (regOne!5978 r!15766))) (nullableFct!204 (removeUselessConcat!350 (regOne!5978 r!15766))))))

(declare-fun bs!243901 () Bool)

(assert (= bs!243901 d!288270))

(assert (=> bs!243901 m!1179391))

(declare-fun m!1180235 () Bool)

(assert (=> bs!243901 m!1180235))

(assert (=> b!980091 d!288270))

(assert (=> d!287986 d!288012))

(assert (=> d!287986 d!288042))

(declare-fun b!980894 () Bool)

(declare-fun e!631110 () Bool)

(declare-fun lt!350043 () Bool)

(assert (=> b!980894 (= e!631110 (not lt!350043))))

(declare-fun b!980895 () Bool)

(declare-fun e!631114 () Bool)

(declare-fun e!631111 () Bool)

(assert (=> b!980895 (= e!631114 e!631111)))

(declare-fun res!445214 () Bool)

(assert (=> b!980895 (=> (not res!445214) (not e!631111))))

(assert (=> b!980895 (= res!445214 (not lt!350043))))

(declare-fun b!980896 () Bool)

(declare-fun res!445215 () Bool)

(declare-fun e!631113 () Bool)

(assert (=> b!980896 (=> (not res!445215) (not e!631113))))

(assert (=> b!980896 (= res!445215 (isEmpty!6269 (tail!1370 (tail!1370 s!10566))))))

(declare-fun b!980897 () Bool)

(assert (=> b!980897 (= e!631113 (= (head!1808 (tail!1370 s!10566)) (c!160088 (derivativeStep!655 (removeUselessConcat!350 r!15766) (head!1808 s!10566)))))))

(declare-fun b!980898 () Bool)

(declare-fun e!631109 () Bool)

(assert (=> b!980898 (= e!631109 (matchR!1269 (derivativeStep!655 (derivativeStep!655 (removeUselessConcat!350 r!15766) (head!1808 s!10566)) (head!1808 (tail!1370 s!10566))) (tail!1370 (tail!1370 s!10566))))))

(declare-fun b!980899 () Bool)

(declare-fun e!631112 () Bool)

(assert (=> b!980899 (= e!631112 (not (= (head!1808 (tail!1370 s!10566)) (c!160088 (derivativeStep!655 (removeUselessConcat!350 r!15766) (head!1808 s!10566))))))))

(declare-fun b!980900 () Bool)

(declare-fun e!631115 () Bool)

(assert (=> b!980900 (= e!631115 e!631110)))

(declare-fun c!160411 () Bool)

(assert (=> b!980900 (= c!160411 ((_ is EmptyLang!2733) (derivativeStep!655 (removeUselessConcat!350 r!15766) (head!1808 s!10566))))))

(declare-fun b!980901 () Bool)

(declare-fun res!445216 () Bool)

(assert (=> b!980901 (=> res!445216 e!631114)))

(assert (=> b!980901 (= res!445216 (not ((_ is ElementMatch!2733) (derivativeStep!655 (removeUselessConcat!350 r!15766) (head!1808 s!10566)))))))

(assert (=> b!980901 (= e!631110 e!631114)))

(declare-fun b!980902 () Bool)

(declare-fun res!445211 () Bool)

(assert (=> b!980902 (=> res!445211 e!631114)))

(assert (=> b!980902 (= res!445211 e!631113)))

(declare-fun res!445213 () Bool)

(assert (=> b!980902 (=> (not res!445213) (not e!631113))))

(assert (=> b!980902 (= res!445213 lt!350043)))

(declare-fun b!980904 () Bool)

(declare-fun res!445210 () Bool)

(assert (=> b!980904 (=> res!445210 e!631112)))

(assert (=> b!980904 (= res!445210 (not (isEmpty!6269 (tail!1370 (tail!1370 s!10566)))))))

(declare-fun b!980905 () Bool)

(declare-fun res!445217 () Bool)

(assert (=> b!980905 (=> (not res!445217) (not e!631113))))

(declare-fun call!63046 () Bool)

(assert (=> b!980905 (= res!445217 (not call!63046))))

(declare-fun bm!63041 () Bool)

(assert (=> bm!63041 (= call!63046 (isEmpty!6269 (tail!1370 s!10566)))))

(declare-fun b!980906 () Bool)

(assert (=> b!980906 (= e!631115 (= lt!350043 call!63046))))

(declare-fun b!980907 () Bool)

(assert (=> b!980907 (= e!631111 e!631112)))

(declare-fun res!445212 () Bool)

(assert (=> b!980907 (=> res!445212 e!631112)))

(assert (=> b!980907 (= res!445212 call!63046)))

(declare-fun b!980903 () Bool)

(assert (=> b!980903 (= e!631109 (nullable!849 (derivativeStep!655 (removeUselessConcat!350 r!15766) (head!1808 s!10566))))))

(declare-fun d!288272 () Bool)

(assert (=> d!288272 e!631115))

(declare-fun c!160412 () Bool)

(assert (=> d!288272 (= c!160412 ((_ is EmptyExpr!2733) (derivativeStep!655 (removeUselessConcat!350 r!15766) (head!1808 s!10566))))))

(assert (=> d!288272 (= lt!350043 e!631109)))

(declare-fun c!160410 () Bool)

(assert (=> d!288272 (= c!160410 (isEmpty!6269 (tail!1370 s!10566)))))

(assert (=> d!288272 (validRegex!1202 (derivativeStep!655 (removeUselessConcat!350 r!15766) (head!1808 s!10566)))))

(assert (=> d!288272 (= (matchR!1269 (derivativeStep!655 (removeUselessConcat!350 r!15766) (head!1808 s!10566)) (tail!1370 s!10566)) lt!350043)))

(assert (= (and d!288272 c!160410) b!980903))

(assert (= (and d!288272 (not c!160410)) b!980898))

(assert (= (and d!288272 c!160412) b!980906))

(assert (= (and d!288272 (not c!160412)) b!980900))

(assert (= (and b!980900 c!160411) b!980894))

(assert (= (and b!980900 (not c!160411)) b!980901))

(assert (= (and b!980901 (not res!445216)) b!980902))

(assert (= (and b!980902 res!445213) b!980905))

(assert (= (and b!980905 res!445217) b!980896))

(assert (= (and b!980896 res!445215) b!980897))

(assert (= (and b!980902 (not res!445211)) b!980895))

(assert (= (and b!980895 res!445214) b!980907))

(assert (= (and b!980907 (not res!445212)) b!980904))

(assert (= (and b!980904 (not res!445210)) b!980899))

(assert (= (or b!980906 b!980905 b!980907) bm!63041))

(assert (=> bm!63041 m!1179537))

(assert (=> bm!63041 m!1179541))

(assert (=> b!980903 m!1179621))

(declare-fun m!1180237 () Bool)

(assert (=> b!980903 m!1180237))

(assert (=> b!980898 m!1179537))

(assert (=> b!980898 m!1180045))

(assert (=> b!980898 m!1179621))

(assert (=> b!980898 m!1180045))

(declare-fun m!1180239 () Bool)

(assert (=> b!980898 m!1180239))

(assert (=> b!980898 m!1179537))

(assert (=> b!980898 m!1180049))

(assert (=> b!980898 m!1180239))

(assert (=> b!980898 m!1180049))

(declare-fun m!1180241 () Bool)

(assert (=> b!980898 m!1180241))

(assert (=> d!288272 m!1179537))

(assert (=> d!288272 m!1179541))

(assert (=> d!288272 m!1179621))

(declare-fun m!1180243 () Bool)

(assert (=> d!288272 m!1180243))

(assert (=> b!980899 m!1179537))

(assert (=> b!980899 m!1180045))

(assert (=> b!980897 m!1179537))

(assert (=> b!980897 m!1180045))

(assert (=> b!980896 m!1179537))

(assert (=> b!980896 m!1180049))

(assert (=> b!980896 m!1180049))

(assert (=> b!980896 m!1180055))

(assert (=> b!980904 m!1179537))

(assert (=> b!980904 m!1180049))

(assert (=> b!980904 m!1180049))

(assert (=> b!980904 m!1180055))

(assert (=> b!980061 d!288272))

(declare-fun bm!63042 () Bool)

(declare-fun call!63047 () Regex!2733)

(declare-fun call!63048 () Regex!2733)

(assert (=> bm!63042 (= call!63047 call!63048)))

(declare-fun d!288274 () Bool)

(declare-fun lt!350044 () Regex!2733)

(assert (=> d!288274 (validRegex!1202 lt!350044)))

(declare-fun e!631118 () Regex!2733)

(assert (=> d!288274 (= lt!350044 e!631118)))

(declare-fun c!160416 () Bool)

(assert (=> d!288274 (= c!160416 (or ((_ is EmptyExpr!2733) (removeUselessConcat!350 r!15766)) ((_ is EmptyLang!2733) (removeUselessConcat!350 r!15766))))))

(assert (=> d!288274 (validRegex!1202 (removeUselessConcat!350 r!15766))))

(assert (=> d!288274 (= (derivativeStep!655 (removeUselessConcat!350 r!15766) (head!1808 s!10566)) lt!350044)))

(declare-fun b!980908 () Bool)

(declare-fun e!631120 () Regex!2733)

(assert (=> b!980908 (= e!631120 (Concat!4566 call!63048 (removeUselessConcat!350 r!15766)))))

(declare-fun b!980909 () Bool)

(declare-fun e!631119 () Regex!2733)

(declare-fun call!63049 () Regex!2733)

(declare-fun call!63050 () Regex!2733)

(assert (=> b!980909 (= e!631119 (Union!2733 call!63049 call!63050))))

(declare-fun c!160415 () Bool)

(declare-fun bm!63043 () Bool)

(assert (=> bm!63043 (= call!63050 (derivativeStep!655 (ite c!160415 (regTwo!5979 (removeUselessConcat!350 r!15766)) (regOne!5978 (removeUselessConcat!350 r!15766))) (head!1808 s!10566)))))

(declare-fun b!980910 () Bool)

(declare-fun c!160417 () Bool)

(assert (=> b!980910 (= c!160417 (nullable!849 (regOne!5978 (removeUselessConcat!350 r!15766))))))

(declare-fun e!631117 () Regex!2733)

(assert (=> b!980910 (= e!631120 e!631117)))

(declare-fun bm!63044 () Bool)

(assert (=> bm!63044 (= call!63048 call!63049)))

(declare-fun bm!63045 () Bool)

(declare-fun c!160414 () Bool)

(assert (=> bm!63045 (= call!63049 (derivativeStep!655 (ite c!160415 (regOne!5979 (removeUselessConcat!350 r!15766)) (ite c!160414 (reg!3062 (removeUselessConcat!350 r!15766)) (ite c!160417 (regTwo!5978 (removeUselessConcat!350 r!15766)) (regOne!5978 (removeUselessConcat!350 r!15766))))) (head!1808 s!10566)))))

(declare-fun b!980911 () Bool)

(assert (=> b!980911 (= e!631117 (Union!2733 (Concat!4566 call!63050 (regTwo!5978 (removeUselessConcat!350 r!15766))) call!63047))))

(declare-fun b!980912 () Bool)

(declare-fun e!631116 () Regex!2733)

(assert (=> b!980912 (= e!631116 (ite (= (head!1808 s!10566) (c!160088 (removeUselessConcat!350 r!15766))) EmptyExpr!2733 EmptyLang!2733))))

(declare-fun b!980913 () Bool)

(assert (=> b!980913 (= e!631119 e!631120)))

(assert (=> b!980913 (= c!160414 ((_ is Star!2733) (removeUselessConcat!350 r!15766)))))

(declare-fun b!980914 () Bool)

(assert (=> b!980914 (= e!631117 (Union!2733 (Concat!4566 call!63047 (regTwo!5978 (removeUselessConcat!350 r!15766))) EmptyLang!2733))))

(declare-fun b!980915 () Bool)

(assert (=> b!980915 (= e!631118 e!631116)))

(declare-fun c!160413 () Bool)

(assert (=> b!980915 (= c!160413 ((_ is ElementMatch!2733) (removeUselessConcat!350 r!15766)))))

(declare-fun b!980916 () Bool)

(assert (=> b!980916 (= c!160415 ((_ is Union!2733) (removeUselessConcat!350 r!15766)))))

(assert (=> b!980916 (= e!631116 e!631119)))

(declare-fun b!980917 () Bool)

(assert (=> b!980917 (= e!631118 EmptyLang!2733)))

(assert (= (and d!288274 c!160416) b!980917))

(assert (= (and d!288274 (not c!160416)) b!980915))

(assert (= (and b!980915 c!160413) b!980912))

(assert (= (and b!980915 (not c!160413)) b!980916))

(assert (= (and b!980916 c!160415) b!980909))

(assert (= (and b!980916 (not c!160415)) b!980913))

(assert (= (and b!980913 c!160414) b!980908))

(assert (= (and b!980913 (not c!160414)) b!980910))

(assert (= (and b!980910 c!160417) b!980911))

(assert (= (and b!980910 (not c!160417)) b!980914))

(assert (= (or b!980911 b!980914) bm!63042))

(assert (= (or b!980908 bm!63042) bm!63044))

(assert (= (or b!980909 bm!63044) bm!63045))

(assert (= (or b!980909 b!980911) bm!63043))

(declare-fun m!1180245 () Bool)

(assert (=> d!288274 m!1180245))

(assert (=> d!288274 m!1179389))

(assert (=> d!288274 m!1179625))

(assert (=> bm!63043 m!1179533))

(declare-fun m!1180247 () Bool)

(assert (=> bm!63043 m!1180247))

(declare-fun m!1180249 () Bool)

(assert (=> b!980910 m!1180249))

(assert (=> bm!63045 m!1179533))

(declare-fun m!1180251 () Bool)

(assert (=> bm!63045 m!1180251))

(assert (=> b!980061 d!288274))

(assert (=> b!980061 d!288158))

(assert (=> b!980061 d!288204))

(declare-fun bs!243902 () Bool)

(declare-fun b!980923 () Bool)

(assert (= bs!243902 (and b!980923 b!979587)))

(declare-fun lambda!34951 () Int)

(assert (=> bs!243902 (not (= lambda!34951 lambda!34884))))

(declare-fun bs!243903 () Bool)

(assert (= bs!243903 (and b!980923 d!288168)))

(assert (=> bs!243903 (not (= lambda!34951 lambda!34938))))

(declare-fun bs!243904 () Bool)

(assert (= bs!243904 (and b!980923 b!980817)))

(assert (=> bs!243904 (= (and (= (_1!6486 lt!349924) s!10566) (= (reg!3062 (regOne!5979 (regOne!5978 r!15766))) (reg!3062 (regTwo!5979 r!15766))) (= (regOne!5979 (regOne!5978 r!15766)) (regTwo!5979 r!15766))) (= lambda!34951 lambda!34946))))

(declare-fun bs!243905 () Bool)

(assert (= bs!243905 (and b!980923 d!288026)))

(assert (=> bs!243905 (not (= lambda!34951 lambda!34916))))

(declare-fun bs!243906 () Bool)

(assert (= bs!243906 (and b!980923 d!288254)))

(assert (=> bs!243906 (not (= lambda!34951 lambda!34950))))

(declare-fun bs!243907 () Bool)

(assert (= bs!243907 (and b!980923 b!980822)))

(assert (=> bs!243907 (not (= lambda!34951 lambda!34947))))

(declare-fun bs!243908 () Bool)

(assert (= bs!243908 (and b!980923 b!980541)))

(assert (=> bs!243908 (= (and (= (reg!3062 (regOne!5979 (regOne!5978 r!15766))) (reg!3062 (regTwo!5979 (regOne!5978 r!15766)))) (= (regOne!5979 (regOne!5978 r!15766)) (regTwo!5979 (regOne!5978 r!15766)))) (= lambda!34951 lambda!34942))))

(declare-fun bs!243909 () Bool)

(assert (= bs!243909 (and b!980923 b!980142)))

(assert (=> bs!243909 (not (= lambda!34951 lambda!34918))))

(declare-fun bs!243910 () Bool)

(assert (= bs!243910 (and b!980923 b!980546)))

(assert (=> bs!243910 (not (= lambda!34951 lambda!34943))))

(declare-fun bs!243911 () Bool)

(assert (= bs!243911 (and b!980923 b!979820)))

(assert (=> bs!243911 (not (= lambda!34951 lambda!34896))))

(assert (=> bs!243902 (not (= lambda!34951 lambda!34883))))

(declare-fun bs!243912 () Bool)

(assert (= bs!243912 (and b!980923 b!980783)))

(assert (=> bs!243912 (= (and (= (_1!6486 lt!349924) s!10566) (= (reg!3062 (regOne!5979 (regOne!5978 r!15766))) (reg!3062 (regOne!5979 r!15766))) (= (regOne!5979 (regOne!5978 r!15766)) (regOne!5979 r!15766))) (= lambda!34951 lambda!34944))))

(declare-fun bs!243913 () Bool)

(assert (= bs!243913 (and b!980923 d!288020)))

(assert (=> bs!243913 (not (= lambda!34951 lambda!34910))))

(declare-fun bs!243914 () Bool)

(assert (= bs!243914 (and b!980923 b!980788)))

(assert (=> bs!243914 (not (= lambda!34951 lambda!34945))))

(assert (=> bs!243903 (not (= lambda!34951 lambda!34939))))

(declare-fun bs!243915 () Bool)

(assert (= bs!243915 (and b!980923 b!979815)))

(assert (=> bs!243915 (= (and (= (_1!6486 lt!349924) s!10566) (= (reg!3062 (regOne!5979 (regOne!5978 r!15766))) (reg!3062 r!15766)) (= (regOne!5979 (regOne!5978 r!15766)) r!15766)) (= lambda!34951 lambda!34895))))

(assert (=> bs!243905 (not (= lambda!34951 lambda!34915))))

(declare-fun bs!243916 () Bool)

(assert (= bs!243916 (and b!980923 b!980137)))

(assert (=> bs!243916 (= (and (= (reg!3062 (regOne!5979 (regOne!5978 r!15766))) (reg!3062 (regOne!5978 r!15766))) (= (regOne!5979 (regOne!5978 r!15766)) (regOne!5978 r!15766))) (= lambda!34951 lambda!34917))))

(assert (=> b!980923 true))

(assert (=> b!980923 true))

(declare-fun bs!243917 () Bool)

(declare-fun b!980928 () Bool)

(assert (= bs!243917 (and b!980928 b!979587)))

(declare-fun lambda!34952 () Int)

(assert (=> bs!243917 (= (and (= (_1!6486 lt!349924) s!10566) (= (regOne!5978 (regOne!5979 (regOne!5978 r!15766))) (regOne!5978 r!15766)) (= (regTwo!5978 (regOne!5979 (regOne!5978 r!15766))) EmptyExpr!2733)) (= lambda!34952 lambda!34884))))

(declare-fun bs!243918 () Bool)

(assert (= bs!243918 (and b!980928 b!980817)))

(assert (=> bs!243918 (not (= lambda!34952 lambda!34946))))

(declare-fun bs!243919 () Bool)

(assert (= bs!243919 (and b!980928 d!288026)))

(assert (=> bs!243919 (= (and (= (_1!6486 lt!349924) s!10566) (= (regOne!5978 (regOne!5979 (regOne!5978 r!15766))) (regOne!5978 r!15766)) (= (regTwo!5978 (regOne!5979 (regOne!5978 r!15766))) EmptyExpr!2733)) (= lambda!34952 lambda!34916))))

(declare-fun bs!243920 () Bool)

(assert (= bs!243920 (and b!980928 d!288254)))

(assert (=> bs!243920 (not (= lambda!34952 lambda!34950))))

(declare-fun bs!243921 () Bool)

(assert (= bs!243921 (and b!980928 b!980822)))

(assert (=> bs!243921 (= (and (= (_1!6486 lt!349924) s!10566) (= (regOne!5978 (regOne!5979 (regOne!5978 r!15766))) (regOne!5978 (regTwo!5979 r!15766))) (= (regTwo!5978 (regOne!5979 (regOne!5978 r!15766))) (regTwo!5978 (regTwo!5979 r!15766)))) (= lambda!34952 lambda!34947))))

(declare-fun bs!243922 () Bool)

(assert (= bs!243922 (and b!980928 b!980541)))

(assert (=> bs!243922 (not (= lambda!34952 lambda!34942))))

(declare-fun bs!243923 () Bool)

(assert (= bs!243923 (and b!980928 b!980142)))

(assert (=> bs!243923 (= (and (= (regOne!5978 (regOne!5979 (regOne!5978 r!15766))) (regOne!5978 (regOne!5978 r!15766))) (= (regTwo!5978 (regOne!5979 (regOne!5978 r!15766))) (regTwo!5978 (regOne!5978 r!15766)))) (= lambda!34952 lambda!34918))))

(declare-fun bs!243924 () Bool)

(assert (= bs!243924 (and b!980928 b!980546)))

(assert (=> bs!243924 (= (and (= (regOne!5978 (regOne!5979 (regOne!5978 r!15766))) (regOne!5978 (regTwo!5979 (regOne!5978 r!15766)))) (= (regTwo!5978 (regOne!5979 (regOne!5978 r!15766))) (regTwo!5978 (regTwo!5979 (regOne!5978 r!15766))))) (= lambda!34952 lambda!34943))))

(declare-fun bs!243925 () Bool)

(assert (= bs!243925 (and b!980928 b!980923)))

(assert (=> bs!243925 (not (= lambda!34952 lambda!34951))))

(declare-fun bs!243926 () Bool)

(assert (= bs!243926 (and b!980928 d!288168)))

(assert (=> bs!243926 (not (= lambda!34952 lambda!34938))))

(declare-fun bs!243927 () Bool)

(assert (= bs!243927 (and b!980928 b!979820)))

(assert (=> bs!243927 (= (and (= (_1!6486 lt!349924) s!10566) (= (regOne!5978 (regOne!5979 (regOne!5978 r!15766))) (regOne!5978 r!15766)) (= (regTwo!5978 (regOne!5979 (regOne!5978 r!15766))) (regTwo!5978 r!15766))) (= lambda!34952 lambda!34896))))

(assert (=> bs!243917 (not (= lambda!34952 lambda!34883))))

(declare-fun bs!243928 () Bool)

(assert (= bs!243928 (and b!980928 b!980783)))

(assert (=> bs!243928 (not (= lambda!34952 lambda!34944))))

(declare-fun bs!243929 () Bool)

(assert (= bs!243929 (and b!980928 d!288020)))

(assert (=> bs!243929 (not (= lambda!34952 lambda!34910))))

(declare-fun bs!243930 () Bool)

(assert (= bs!243930 (and b!980928 b!980788)))

(assert (=> bs!243930 (= (and (= (_1!6486 lt!349924) s!10566) (= (regOne!5978 (regOne!5979 (regOne!5978 r!15766))) (regOne!5978 (regOne!5979 r!15766))) (= (regTwo!5978 (regOne!5979 (regOne!5978 r!15766))) (regTwo!5978 (regOne!5979 r!15766)))) (= lambda!34952 lambda!34945))))

(assert (=> bs!243926 (= (and (= (_1!6486 lt!349924) s!10566) (= (regOne!5978 (regOne!5979 (regOne!5978 r!15766))) (regOne!5978 r!15766)) (= (regTwo!5978 (regOne!5979 (regOne!5978 r!15766))) EmptyExpr!2733)) (= lambda!34952 lambda!34939))))

(declare-fun bs!243931 () Bool)

(assert (= bs!243931 (and b!980928 b!979815)))

(assert (=> bs!243931 (not (= lambda!34952 lambda!34895))))

(assert (=> bs!243919 (not (= lambda!34952 lambda!34915))))

(declare-fun bs!243932 () Bool)

(assert (= bs!243932 (and b!980928 b!980137)))

(assert (=> bs!243932 (not (= lambda!34952 lambda!34917))))

(assert (=> b!980928 true))

(assert (=> b!980928 true))

(declare-fun b!980918 () Bool)

(declare-fun e!631126 () Bool)

(declare-fun e!631122 () Bool)

(assert (=> b!980918 (= e!631126 e!631122)))

(declare-fun c!160420 () Bool)

(assert (=> b!980918 (= c!160420 ((_ is Star!2733) (regOne!5979 (regOne!5978 r!15766))))))

(declare-fun b!980919 () Bool)

(declare-fun e!631123 () Bool)

(assert (=> b!980919 (= e!631126 e!631123)))

(declare-fun res!445220 () Bool)

(assert (=> b!980919 (= res!445220 (matchRSpec!532 (regOne!5979 (regOne!5979 (regOne!5978 r!15766))) (_1!6486 lt!349924)))))

(assert (=> b!980919 (=> res!445220 e!631123)))

(declare-fun b!980920 () Bool)

(declare-fun e!631124 () Bool)

(declare-fun call!63051 () Bool)

(assert (=> b!980920 (= e!631124 call!63051)))

(declare-fun b!980921 () Bool)

(declare-fun c!160421 () Bool)

(assert (=> b!980921 (= c!160421 ((_ is ElementMatch!2733) (regOne!5979 (regOne!5978 r!15766))))))

(declare-fun e!631127 () Bool)

(declare-fun e!631125 () Bool)

(assert (=> b!980921 (= e!631127 e!631125)))

(declare-fun d!288276 () Bool)

(declare-fun c!160419 () Bool)

(assert (=> d!288276 (= c!160419 ((_ is EmptyExpr!2733) (regOne!5979 (regOne!5978 r!15766))))))

(assert (=> d!288276 (= (matchRSpec!532 (regOne!5979 (regOne!5978 r!15766)) (_1!6486 lt!349924)) e!631124)))

(declare-fun b!980922 () Bool)

(assert (=> b!980922 (= e!631123 (matchRSpec!532 (regTwo!5979 (regOne!5979 (regOne!5978 r!15766))) (_1!6486 lt!349924)))))

(declare-fun bm!63046 () Bool)

(assert (=> bm!63046 (= call!63051 (isEmpty!6269 (_1!6486 lt!349924)))))

(declare-fun e!631121 () Bool)

(declare-fun call!63052 () Bool)

(assert (=> b!980923 (= e!631121 call!63052)))

(declare-fun b!980924 () Bool)

(assert (=> b!980924 (= e!631124 e!631127)))

(declare-fun res!445219 () Bool)

(assert (=> b!980924 (= res!445219 (not ((_ is EmptyLang!2733) (regOne!5979 (regOne!5978 r!15766)))))))

(assert (=> b!980924 (=> (not res!445219) (not e!631127))))

(declare-fun b!980925 () Bool)

(declare-fun c!160418 () Bool)

(assert (=> b!980925 (= c!160418 ((_ is Union!2733) (regOne!5979 (regOne!5978 r!15766))))))

(assert (=> b!980925 (= e!631125 e!631126)))

(declare-fun b!980926 () Bool)

(assert (=> b!980926 (= e!631125 (= (_1!6486 lt!349924) (Cons!9947 (c!160088 (regOne!5979 (regOne!5978 r!15766))) Nil!9947)))))

(declare-fun b!980927 () Bool)

(declare-fun res!445218 () Bool)

(assert (=> b!980927 (=> res!445218 e!631121)))

(assert (=> b!980927 (= res!445218 call!63051)))

(assert (=> b!980927 (= e!631122 e!631121)))

(assert (=> b!980928 (= e!631122 call!63052)))

(declare-fun bm!63047 () Bool)

(assert (=> bm!63047 (= call!63052 (Exists!470 (ite c!160420 lambda!34951 lambda!34952)))))

(assert (= (and d!288276 c!160419) b!980920))

(assert (= (and d!288276 (not c!160419)) b!980924))

(assert (= (and b!980924 res!445219) b!980921))

(assert (= (and b!980921 c!160421) b!980926))

(assert (= (and b!980921 (not c!160421)) b!980925))

(assert (= (and b!980925 c!160418) b!980919))

(assert (= (and b!980925 (not c!160418)) b!980918))

(assert (= (and b!980919 (not res!445220)) b!980922))

(assert (= (and b!980918 c!160420) b!980927))

(assert (= (and b!980918 (not c!160420)) b!980928))

(assert (= (and b!980927 (not res!445218)) b!980923))

(assert (= (or b!980923 b!980928) bm!63047))

(assert (= (or b!980920 b!980927) bm!63046))

(declare-fun m!1180253 () Bool)

(assert (=> b!980919 m!1180253))

(declare-fun m!1180255 () Bool)

(assert (=> b!980922 m!1180255))

(assert (=> bm!63046 m!1179557))

(declare-fun m!1180257 () Bool)

(assert (=> bm!63047 m!1180257))

(assert (=> b!980133 d!288276))

(declare-fun d!288278 () Bool)

(declare-fun e!631128 () Bool)

(assert (=> d!288278 e!631128))

(declare-fun res!445221 () Bool)

(assert (=> d!288278 (=> (not res!445221) (not e!631128))))

(declare-fun lt!350045 () Regex!2733)

(assert (=> d!288278 (= res!445221 (validRegex!1202 lt!350045))))

(declare-fun e!631131 () Regex!2733)

(assert (=> d!288278 (= lt!350045 e!631131)))

(declare-fun c!160422 () Bool)

(assert (=> d!288278 (= c!160422 (and ((_ is Concat!4566) (ite c!160205 (regTwo!5978 (regOne!5978 r!15766)) (ite (or c!160206 c!160207) (regOne!5978 (regOne!5978 r!15766)) (regOne!5979 (regOne!5978 r!15766))))) ((_ is EmptyExpr!2733) (regOne!5978 (ite c!160205 (regTwo!5978 (regOne!5978 r!15766)) (ite (or c!160206 c!160207) (regOne!5978 (regOne!5978 r!15766)) (regOne!5979 (regOne!5978 r!15766))))))))))

(assert (=> d!288278 (validRegex!1202 (ite c!160205 (regTwo!5978 (regOne!5978 r!15766)) (ite (or c!160206 c!160207) (regOne!5978 (regOne!5978 r!15766)) (regOne!5979 (regOne!5978 r!15766)))))))

(assert (=> d!288278 (= (removeUselessConcat!350 (ite c!160205 (regTwo!5978 (regOne!5978 r!15766)) (ite (or c!160206 c!160207) (regOne!5978 (regOne!5978 r!15766)) (regOne!5979 (regOne!5978 r!15766))))) lt!350045)))

(declare-fun b!980929 () Bool)

(declare-fun e!631132 () Regex!2733)

(assert (=> b!980929 (= e!631132 (ite c!160205 (regTwo!5978 (regOne!5978 r!15766)) (ite (or c!160206 c!160207) (regOne!5978 (regOne!5978 r!15766)) (regOne!5979 (regOne!5978 r!15766)))))))

(declare-fun b!980930 () Bool)

(declare-fun e!631129 () Regex!2733)

(assert (=> b!980930 (= e!631131 e!631129)))

(declare-fun c!160423 () Bool)

(assert (=> b!980930 (= c!160423 (and ((_ is Concat!4566) (ite c!160205 (regTwo!5978 (regOne!5978 r!15766)) (ite (or c!160206 c!160207) (regOne!5978 (regOne!5978 r!15766)) (regOne!5979 (regOne!5978 r!15766))))) ((_ is EmptyExpr!2733) (regTwo!5978 (ite c!160205 (regTwo!5978 (regOne!5978 r!15766)) (ite (or c!160206 c!160207) (regOne!5978 (regOne!5978 r!15766)) (regOne!5979 (regOne!5978 r!15766))))))))))

(declare-fun bm!63048 () Bool)

(declare-fun call!63055 () Regex!2733)

(declare-fun call!63054 () Regex!2733)

(assert (=> bm!63048 (= call!63055 call!63054)))

(declare-fun c!160424 () Bool)

(declare-fun bm!63049 () Bool)

(declare-fun call!63053 () Regex!2733)

(assert (=> bm!63049 (= call!63053 (removeUselessConcat!350 (ite c!160422 (regTwo!5978 (ite c!160205 (regTwo!5978 (regOne!5978 r!15766)) (ite (or c!160206 c!160207) (regOne!5978 (regOne!5978 r!15766)) (regOne!5979 (regOne!5978 r!15766))))) (ite (or c!160423 c!160424) (regOne!5978 (ite c!160205 (regTwo!5978 (regOne!5978 r!15766)) (ite (or c!160206 c!160207) (regOne!5978 (regOne!5978 r!15766)) (regOne!5979 (regOne!5978 r!15766))))) (regOne!5979 (ite c!160205 (regTwo!5978 (regOne!5978 r!15766)) (ite (or c!160206 c!160207) (regOne!5978 (regOne!5978 r!15766)) (regOne!5979 (regOne!5978 r!15766)))))))))))

(declare-fun c!160426 () Bool)

(declare-fun b!980931 () Bool)

(assert (=> b!980931 (= c!160426 ((_ is Star!2733) (ite c!160205 (regTwo!5978 (regOne!5978 r!15766)) (ite (or c!160206 c!160207) (regOne!5978 (regOne!5978 r!15766)) (regOne!5979 (regOne!5978 r!15766))))))))

(declare-fun e!631133 () Regex!2733)

(assert (=> b!980931 (= e!631133 e!631132)))

(declare-fun bm!63050 () Bool)

(declare-fun call!63057 () Regex!2733)

(declare-fun call!63056 () Regex!2733)

(assert (=> bm!63050 (= call!63057 call!63056)))

(declare-fun b!980932 () Bool)

(assert (=> b!980932 (= e!631128 (= (nullable!849 lt!350045) (nullable!849 (ite c!160205 (regTwo!5978 (regOne!5978 r!15766)) (ite (or c!160206 c!160207) (regOne!5978 (regOne!5978 r!15766)) (regOne!5979 (regOne!5978 r!15766)))))))))

(declare-fun b!980933 () Bool)

(declare-fun e!631130 () Regex!2733)

(assert (=> b!980933 (= e!631130 (Concat!4566 call!63057 call!63054))))

(declare-fun b!980934 () Bool)

(assert (=> b!980934 (= e!631129 call!63056)))

(declare-fun b!980935 () Bool)

(assert (=> b!980935 (= e!631131 call!63053)))

(declare-fun b!980936 () Bool)

(assert (=> b!980936 (= e!631130 e!631133)))

(declare-fun c!160425 () Bool)

(assert (=> b!980936 (= c!160425 ((_ is Union!2733) (ite c!160205 (regTwo!5978 (regOne!5978 r!15766)) (ite (or c!160206 c!160207) (regOne!5978 (regOne!5978 r!15766)) (regOne!5979 (regOne!5978 r!15766))))))))

(declare-fun bm!63051 () Bool)

(assert (=> bm!63051 (= call!63056 call!63053)))

(declare-fun b!980937 () Bool)

(assert (=> b!980937 (= c!160424 ((_ is Concat!4566) (ite c!160205 (regTwo!5978 (regOne!5978 r!15766)) (ite (or c!160206 c!160207) (regOne!5978 (regOne!5978 r!15766)) (regOne!5979 (regOne!5978 r!15766))))))))

(assert (=> b!980937 (= e!631129 e!631130)))

(declare-fun b!980938 () Bool)

(assert (=> b!980938 (= e!631132 (Star!2733 call!63055))))

(declare-fun bm!63052 () Bool)

(assert (=> bm!63052 (= call!63054 (removeUselessConcat!350 (ite c!160424 (regTwo!5978 (ite c!160205 (regTwo!5978 (regOne!5978 r!15766)) (ite (or c!160206 c!160207) (regOne!5978 (regOne!5978 r!15766)) (regOne!5979 (regOne!5978 r!15766))))) (ite c!160425 (regTwo!5979 (ite c!160205 (regTwo!5978 (regOne!5978 r!15766)) (ite (or c!160206 c!160207) (regOne!5978 (regOne!5978 r!15766)) (regOne!5979 (regOne!5978 r!15766))))) (reg!3062 (ite c!160205 (regTwo!5978 (regOne!5978 r!15766)) (ite (or c!160206 c!160207) (regOne!5978 (regOne!5978 r!15766)) (regOne!5979 (regOne!5978 r!15766)))))))))))

(declare-fun b!980939 () Bool)

(assert (=> b!980939 (= e!631133 (Union!2733 call!63057 call!63055))))

(assert (= (and d!288278 c!160422) b!980935))

(assert (= (and d!288278 (not c!160422)) b!980930))

(assert (= (and b!980930 c!160423) b!980934))

(assert (= (and b!980930 (not c!160423)) b!980937))

(assert (= (and b!980937 c!160424) b!980933))

(assert (= (and b!980937 (not c!160424)) b!980936))

(assert (= (and b!980936 c!160425) b!980939))

(assert (= (and b!980936 (not c!160425)) b!980931))

(assert (= (and b!980931 c!160426) b!980938))

(assert (= (and b!980931 (not c!160426)) b!980929))

(assert (= (or b!980939 b!980938) bm!63048))

(assert (= (or b!980933 bm!63048) bm!63052))

(assert (= (or b!980933 b!980939) bm!63050))

(assert (= (or b!980934 bm!63050) bm!63051))

(assert (= (or b!980935 bm!63051) bm!63049))

(assert (= (and d!288278 res!445221) b!980932))

(declare-fun m!1180259 () Bool)

(assert (=> d!288278 m!1180259))

(declare-fun m!1180261 () Bool)

(assert (=> d!288278 m!1180261))

(declare-fun m!1180263 () Bool)

(assert (=> bm!63049 m!1180263))

(declare-fun m!1180265 () Bool)

(assert (=> b!980932 m!1180265))

(declare-fun m!1180267 () Bool)

(assert (=> b!980932 m!1180267))

(declare-fun m!1180269 () Bool)

(assert (=> bm!63052 m!1180269))

(assert (=> bm!62892 d!288278))

(assert (=> b!979974 d!288222))

(declare-fun d!288280 () Bool)

(declare-fun e!631135 () Bool)

(assert (=> d!288280 e!631135))

(declare-fun res!445223 () Bool)

(assert (=> d!288280 (=> (not res!445223) (not e!631135))))

(declare-fun lt!350046 () List!9963)

(assert (=> d!288280 (= res!445223 (= (content!1422 lt!350046) ((_ map or) (content!1422 (_1!6486 (get!3447 lt!349974))) (content!1422 (_2!6486 (get!3447 lt!349974))))))))

(declare-fun e!631134 () List!9963)

(assert (=> d!288280 (= lt!350046 e!631134)))

(declare-fun c!160427 () Bool)

(assert (=> d!288280 (= c!160427 ((_ is Nil!9947) (_1!6486 (get!3447 lt!349974))))))

(assert (=> d!288280 (= (++!2700 (_1!6486 (get!3447 lt!349974)) (_2!6486 (get!3447 lt!349974))) lt!350046)))

(declare-fun b!980940 () Bool)

(assert (=> b!980940 (= e!631134 (_2!6486 (get!3447 lt!349974)))))

(declare-fun b!980943 () Bool)

(assert (=> b!980943 (= e!631135 (or (not (= (_2!6486 (get!3447 lt!349974)) Nil!9947)) (= lt!350046 (_1!6486 (get!3447 lt!349974)))))))

(declare-fun b!980941 () Bool)

(assert (=> b!980941 (= e!631134 (Cons!9947 (h!15348 (_1!6486 (get!3447 lt!349974))) (++!2700 (t!101009 (_1!6486 (get!3447 lt!349974))) (_2!6486 (get!3447 lt!349974)))))))

(declare-fun b!980942 () Bool)

(declare-fun res!445222 () Bool)

(assert (=> b!980942 (=> (not res!445222) (not e!631135))))

(assert (=> b!980942 (= res!445222 (= (size!7955 lt!350046) (+ (size!7955 (_1!6486 (get!3447 lt!349974))) (size!7955 (_2!6486 (get!3447 lt!349974))))))))

(assert (= (and d!288280 c!160427) b!980940))

(assert (= (and d!288280 (not c!160427)) b!980941))

(assert (= (and d!288280 res!445223) b!980942))

(assert (= (and b!980942 res!445222) b!980943))

(declare-fun m!1180271 () Bool)

(assert (=> d!288280 m!1180271))

(declare-fun m!1180273 () Bool)

(assert (=> d!288280 m!1180273))

(declare-fun m!1180275 () Bool)

(assert (=> d!288280 m!1180275))

(declare-fun m!1180277 () Bool)

(assert (=> b!980941 m!1180277))

(declare-fun m!1180279 () Bool)

(assert (=> b!980942 m!1180279))

(declare-fun m!1180281 () Bool)

(assert (=> b!980942 m!1180281))

(declare-fun m!1180283 () Bool)

(assert (=> b!980942 m!1180283))

(assert (=> b!980005 d!288280))

(assert (=> b!980005 d!288184))

(assert (=> bm!62909 d!288148))

(assert (=> b!979976 d!288222))

(declare-fun b!980944 () Bool)

(declare-fun e!631142 () Bool)

(declare-fun e!631136 () Bool)

(assert (=> b!980944 (= e!631142 e!631136)))

(declare-fun c!160429 () Bool)

(assert (=> b!980944 (= c!160429 ((_ is Union!2733) lt!349984))))

(declare-fun bm!63053 () Bool)

(declare-fun call!63058 () Bool)

(assert (=> bm!63053 (= call!63058 (validRegex!1202 (ite c!160429 (regTwo!5979 lt!349984) (regTwo!5978 lt!349984))))))

(declare-fun b!980945 () Bool)

(declare-fun res!445225 () Bool)

(declare-fun e!631141 () Bool)

(assert (=> b!980945 (=> (not res!445225) (not e!631141))))

(declare-fun call!63059 () Bool)

(assert (=> b!980945 (= res!445225 call!63059)))

(assert (=> b!980945 (= e!631136 e!631141)))

(declare-fun b!980946 () Bool)

(declare-fun e!631139 () Bool)

(assert (=> b!980946 (= e!631139 call!63058)))

(declare-fun b!980947 () Bool)

(declare-fun e!631138 () Bool)

(assert (=> b!980947 (= e!631138 e!631142)))

(declare-fun c!160428 () Bool)

(assert (=> b!980947 (= c!160428 ((_ is Star!2733) lt!349984))))

(declare-fun b!980948 () Bool)

(declare-fun res!445226 () Bool)

(declare-fun e!631137 () Bool)

(assert (=> b!980948 (=> res!445226 e!631137)))

(assert (=> b!980948 (= res!445226 (not ((_ is Concat!4566) lt!349984)))))

(assert (=> b!980948 (= e!631136 e!631137)))

(declare-fun b!980949 () Bool)

(assert (=> b!980949 (= e!631141 call!63058)))

(declare-fun call!63060 () Bool)

(declare-fun bm!63054 () Bool)

(assert (=> bm!63054 (= call!63060 (validRegex!1202 (ite c!160428 (reg!3062 lt!349984) (ite c!160429 (regOne!5979 lt!349984) (regOne!5978 lt!349984)))))))

(declare-fun b!980951 () Bool)

(assert (=> b!980951 (= e!631137 e!631139)))

(declare-fun res!445224 () Bool)

(assert (=> b!980951 (=> (not res!445224) (not e!631139))))

(assert (=> b!980951 (= res!445224 call!63059)))

(declare-fun b!980952 () Bool)

(declare-fun e!631140 () Bool)

(assert (=> b!980952 (= e!631140 call!63060)))

(declare-fun bm!63055 () Bool)

(assert (=> bm!63055 (= call!63059 call!63060)))

(declare-fun d!288282 () Bool)

(declare-fun res!445228 () Bool)

(assert (=> d!288282 (=> res!445228 e!631138)))

(assert (=> d!288282 (= res!445228 ((_ is ElementMatch!2733) lt!349984))))

(assert (=> d!288282 (= (validRegex!1202 lt!349984) e!631138)))

(declare-fun b!980950 () Bool)

(assert (=> b!980950 (= e!631142 e!631140)))

(declare-fun res!445227 () Bool)

(assert (=> b!980950 (= res!445227 (not (nullable!849 (reg!3062 lt!349984))))))

(assert (=> b!980950 (=> (not res!445227) (not e!631140))))

(assert (= (and d!288282 (not res!445228)) b!980947))

(assert (= (and b!980947 c!160428) b!980950))

(assert (= (and b!980947 (not c!160428)) b!980944))

(assert (= (and b!980950 res!445227) b!980952))

(assert (= (and b!980944 c!160429) b!980945))

(assert (= (and b!980944 (not c!160429)) b!980948))

(assert (= (and b!980945 res!445225) b!980949))

(assert (= (and b!980948 (not res!445226)) b!980951))

(assert (= (and b!980951 res!445224) b!980946))

(assert (= (or b!980949 b!980946) bm!63053))

(assert (= (or b!980945 b!980951) bm!63055))

(assert (= (or b!980952 bm!63055) bm!63054))

(declare-fun m!1180285 () Bool)

(assert (=> bm!63053 m!1180285))

(declare-fun m!1180287 () Bool)

(assert (=> bm!63054 m!1180287))

(declare-fun m!1180289 () Bool)

(assert (=> b!980950 m!1180289))

(assert (=> d!288032 d!288282))

(assert (=> d!288032 d!288042))

(assert (=> b!979893 d!288158))

(declare-fun b!980953 () Bool)

(declare-fun e!631144 () Bool)

(declare-fun lt!350047 () Bool)

(assert (=> b!980953 (= e!631144 (not lt!350047))))

(declare-fun b!980954 () Bool)

(declare-fun e!631148 () Bool)

(declare-fun e!631145 () Bool)

(assert (=> b!980954 (= e!631148 e!631145)))

(declare-fun res!445233 () Bool)

(assert (=> b!980954 (=> (not res!445233) (not e!631145))))

(assert (=> b!980954 (= res!445233 (not lt!350047))))

(declare-fun b!980955 () Bool)

(declare-fun res!445234 () Bool)

(declare-fun e!631147 () Bool)

(assert (=> b!980955 (=> (not res!445234) (not e!631147))))

(assert (=> b!980955 (= res!445234 (isEmpty!6269 (tail!1370 s!10566)))))

(declare-fun b!980956 () Bool)

(assert (=> b!980956 (= e!631147 (= (head!1808 s!10566) (c!160088 EmptyExpr!2733)))))

(declare-fun b!980957 () Bool)

(declare-fun e!631143 () Bool)

(assert (=> b!980957 (= e!631143 (matchR!1269 (derivativeStep!655 EmptyExpr!2733 (head!1808 s!10566)) (tail!1370 s!10566)))))

(declare-fun b!980958 () Bool)

(declare-fun e!631146 () Bool)

(assert (=> b!980958 (= e!631146 (not (= (head!1808 s!10566) (c!160088 EmptyExpr!2733))))))

(declare-fun b!980959 () Bool)

(declare-fun e!631149 () Bool)

(assert (=> b!980959 (= e!631149 e!631144)))

(declare-fun c!160431 () Bool)

(assert (=> b!980959 (= c!160431 ((_ is EmptyLang!2733) EmptyExpr!2733))))

(declare-fun b!980960 () Bool)

(declare-fun res!445235 () Bool)

(assert (=> b!980960 (=> res!445235 e!631148)))

(assert (=> b!980960 (= res!445235 (not ((_ is ElementMatch!2733) EmptyExpr!2733)))))

(assert (=> b!980960 (= e!631144 e!631148)))

(declare-fun b!980961 () Bool)

(declare-fun res!445230 () Bool)

(assert (=> b!980961 (=> res!445230 e!631148)))

(assert (=> b!980961 (= res!445230 e!631147)))

(declare-fun res!445232 () Bool)

(assert (=> b!980961 (=> (not res!445232) (not e!631147))))

(assert (=> b!980961 (= res!445232 lt!350047)))

(declare-fun b!980963 () Bool)

(declare-fun res!445229 () Bool)

(assert (=> b!980963 (=> res!445229 e!631146)))

(assert (=> b!980963 (= res!445229 (not (isEmpty!6269 (tail!1370 s!10566))))))

(declare-fun b!980964 () Bool)

(declare-fun res!445236 () Bool)

(assert (=> b!980964 (=> (not res!445236) (not e!631147))))

(declare-fun call!63061 () Bool)

(assert (=> b!980964 (= res!445236 (not call!63061))))

(declare-fun bm!63056 () Bool)

(assert (=> bm!63056 (= call!63061 (isEmpty!6269 s!10566))))

(declare-fun b!980965 () Bool)

(assert (=> b!980965 (= e!631149 (= lt!350047 call!63061))))

(declare-fun b!980966 () Bool)

(assert (=> b!980966 (= e!631145 e!631146)))

(declare-fun res!445231 () Bool)

(assert (=> b!980966 (=> res!445231 e!631146)))

(assert (=> b!980966 (= res!445231 call!63061)))

(declare-fun b!980962 () Bool)

(assert (=> b!980962 (= e!631143 (nullable!849 EmptyExpr!2733))))

(declare-fun d!288284 () Bool)

(assert (=> d!288284 e!631149))

(declare-fun c!160432 () Bool)

(assert (=> d!288284 (= c!160432 ((_ is EmptyExpr!2733) EmptyExpr!2733))))

(assert (=> d!288284 (= lt!350047 e!631143)))

(declare-fun c!160430 () Bool)

(assert (=> d!288284 (= c!160430 (isEmpty!6269 s!10566))))

(assert (=> d!288284 (validRegex!1202 EmptyExpr!2733)))

(assert (=> d!288284 (= (matchR!1269 EmptyExpr!2733 s!10566) lt!350047)))

(assert (= (and d!288284 c!160430) b!980962))

(assert (= (and d!288284 (not c!160430)) b!980957))

(assert (= (and d!288284 c!160432) b!980965))

(assert (= (and d!288284 (not c!160432)) b!980959))

(assert (= (and b!980959 c!160431) b!980953))

(assert (= (and b!980959 (not c!160431)) b!980960))

(assert (= (and b!980960 (not res!445235)) b!980961))

(assert (= (and b!980961 res!445232) b!980964))

(assert (= (and b!980964 res!445236) b!980955))

(assert (= (and b!980955 res!445234) b!980956))

(assert (= (and b!980961 (not res!445230)) b!980954))

(assert (= (and b!980954 res!445233) b!980966))

(assert (= (and b!980966 (not res!445231)) b!980963))

(assert (= (and b!980963 (not res!445229)) b!980958))

(assert (= (or b!980965 b!980964 b!980966) bm!63056))

(assert (=> bm!63056 m!1179387))

(assert (=> b!980962 m!1179987))

(assert (=> b!980957 m!1179533))

(assert (=> b!980957 m!1179533))

(declare-fun m!1180291 () Bool)

(assert (=> b!980957 m!1180291))

(assert (=> b!980957 m!1179537))

(assert (=> b!980957 m!1180291))

(assert (=> b!980957 m!1179537))

(declare-fun m!1180293 () Bool)

(assert (=> b!980957 m!1180293))

(assert (=> d!288284 m!1179387))

(assert (=> d!288284 m!1179997))

(assert (=> b!980958 m!1179533))

(assert (=> b!980956 m!1179533))

(assert (=> b!980955 m!1179537))

(assert (=> b!980955 m!1179537))

(assert (=> b!980955 m!1179541))

(assert (=> b!980963 m!1179537))

(assert (=> b!980963 m!1179537))

(assert (=> b!980963 m!1179541))

(assert (=> b!980007 d!288284))

(assert (=> b!979891 d!288158))

(declare-fun d!288286 () Bool)

(declare-fun e!631150 () Bool)

(assert (=> d!288286 e!631150))

(declare-fun res!445237 () Bool)

(assert (=> d!288286 (=> (not res!445237) (not e!631150))))

(declare-fun lt!350048 () Regex!2733)

(assert (=> d!288286 (= res!445237 (validRegex!1202 lt!350048))))

(declare-fun e!631153 () Regex!2733)

(assert (=> d!288286 (= lt!350048 e!631153)))

(declare-fun c!160433 () Bool)

(assert (=> d!288286 (= c!160433 (and ((_ is Concat!4566) (ite c!160199 (regTwo!5978 r!15766) (ite c!160200 (regTwo!5979 r!15766) (reg!3062 r!15766)))) ((_ is EmptyExpr!2733) (regOne!5978 (ite c!160199 (regTwo!5978 r!15766) (ite c!160200 (regTwo!5979 r!15766) (reg!3062 r!15766)))))))))

(assert (=> d!288286 (validRegex!1202 (ite c!160199 (regTwo!5978 r!15766) (ite c!160200 (regTwo!5979 r!15766) (reg!3062 r!15766))))))

(assert (=> d!288286 (= (removeUselessConcat!350 (ite c!160199 (regTwo!5978 r!15766) (ite c!160200 (regTwo!5979 r!15766) (reg!3062 r!15766)))) lt!350048)))

(declare-fun e!631154 () Regex!2733)

(declare-fun b!980967 () Bool)

(assert (=> b!980967 (= e!631154 (ite c!160199 (regTwo!5978 r!15766) (ite c!160200 (regTwo!5979 r!15766) (reg!3062 r!15766))))))

(declare-fun b!980968 () Bool)

(declare-fun e!631151 () Regex!2733)

(assert (=> b!980968 (= e!631153 e!631151)))

(declare-fun c!160434 () Bool)

(assert (=> b!980968 (= c!160434 (and ((_ is Concat!4566) (ite c!160199 (regTwo!5978 r!15766) (ite c!160200 (regTwo!5979 r!15766) (reg!3062 r!15766)))) ((_ is EmptyExpr!2733) (regTwo!5978 (ite c!160199 (regTwo!5978 r!15766) (ite c!160200 (regTwo!5979 r!15766) (reg!3062 r!15766)))))))))

(declare-fun bm!63057 () Bool)

(declare-fun call!63064 () Regex!2733)

(declare-fun call!63063 () Regex!2733)

(assert (=> bm!63057 (= call!63064 call!63063)))

(declare-fun bm!63058 () Bool)

(declare-fun c!160435 () Bool)

(declare-fun call!63062 () Regex!2733)

(assert (=> bm!63058 (= call!63062 (removeUselessConcat!350 (ite c!160433 (regTwo!5978 (ite c!160199 (regTwo!5978 r!15766) (ite c!160200 (regTwo!5979 r!15766) (reg!3062 r!15766)))) (ite (or c!160434 c!160435) (regOne!5978 (ite c!160199 (regTwo!5978 r!15766) (ite c!160200 (regTwo!5979 r!15766) (reg!3062 r!15766)))) (regOne!5979 (ite c!160199 (regTwo!5978 r!15766) (ite c!160200 (regTwo!5979 r!15766) (reg!3062 r!15766))))))))))

(declare-fun b!980969 () Bool)

(declare-fun c!160437 () Bool)

(assert (=> b!980969 (= c!160437 ((_ is Star!2733) (ite c!160199 (regTwo!5978 r!15766) (ite c!160200 (regTwo!5979 r!15766) (reg!3062 r!15766)))))))

(declare-fun e!631155 () Regex!2733)

(assert (=> b!980969 (= e!631155 e!631154)))

(declare-fun bm!63059 () Bool)

(declare-fun call!63066 () Regex!2733)

(declare-fun call!63065 () Regex!2733)

(assert (=> bm!63059 (= call!63066 call!63065)))

(declare-fun b!980970 () Bool)

(assert (=> b!980970 (= e!631150 (= (nullable!849 lt!350048) (nullable!849 (ite c!160199 (regTwo!5978 r!15766) (ite c!160200 (regTwo!5979 r!15766) (reg!3062 r!15766))))))))

(declare-fun b!980971 () Bool)

(declare-fun e!631152 () Regex!2733)

(assert (=> b!980971 (= e!631152 (Concat!4566 call!63066 call!63063))))

(declare-fun b!980972 () Bool)

(assert (=> b!980972 (= e!631151 call!63065)))

(declare-fun b!980973 () Bool)

(assert (=> b!980973 (= e!631153 call!63062)))

(declare-fun b!980974 () Bool)

(assert (=> b!980974 (= e!631152 e!631155)))

(declare-fun c!160436 () Bool)

(assert (=> b!980974 (= c!160436 ((_ is Union!2733) (ite c!160199 (regTwo!5978 r!15766) (ite c!160200 (regTwo!5979 r!15766) (reg!3062 r!15766)))))))

(declare-fun bm!63060 () Bool)

(assert (=> bm!63060 (= call!63065 call!63062)))

(declare-fun b!980975 () Bool)

(assert (=> b!980975 (= c!160435 ((_ is Concat!4566) (ite c!160199 (regTwo!5978 r!15766) (ite c!160200 (regTwo!5979 r!15766) (reg!3062 r!15766)))))))

(assert (=> b!980975 (= e!631151 e!631152)))

(declare-fun b!980976 () Bool)

(assert (=> b!980976 (= e!631154 (Star!2733 call!63064))))

(declare-fun bm!63061 () Bool)

(assert (=> bm!63061 (= call!63063 (removeUselessConcat!350 (ite c!160435 (regTwo!5978 (ite c!160199 (regTwo!5978 r!15766) (ite c!160200 (regTwo!5979 r!15766) (reg!3062 r!15766)))) (ite c!160436 (regTwo!5979 (ite c!160199 (regTwo!5978 r!15766) (ite c!160200 (regTwo!5979 r!15766) (reg!3062 r!15766)))) (reg!3062 (ite c!160199 (regTwo!5978 r!15766) (ite c!160200 (regTwo!5979 r!15766) (reg!3062 r!15766))))))))))

(declare-fun b!980977 () Bool)

(assert (=> b!980977 (= e!631155 (Union!2733 call!63066 call!63064))))

(assert (= (and d!288286 c!160433) b!980973))

(assert (= (and d!288286 (not c!160433)) b!980968))

(assert (= (and b!980968 c!160434) b!980972))

(assert (= (and b!980968 (not c!160434)) b!980975))

(assert (= (and b!980975 c!160435) b!980971))

(assert (= (and b!980975 (not c!160435)) b!980974))

(assert (= (and b!980974 c!160436) b!980977))

(assert (= (and b!980974 (not c!160436)) b!980969))

(assert (= (and b!980969 c!160437) b!980976))

(assert (= (and b!980969 (not c!160437)) b!980967))

(assert (= (or b!980977 b!980976) bm!63057))

(assert (= (or b!980971 bm!63057) bm!63061))

(assert (= (or b!980971 b!980977) bm!63059))

(assert (= (or b!980972 bm!63059) bm!63060))

(assert (= (or b!980973 bm!63060) bm!63058))

(assert (= (and d!288286 res!445237) b!980970))

(declare-fun m!1180295 () Bool)

(assert (=> d!288286 m!1180295))

(declare-fun m!1180297 () Bool)

(assert (=> d!288286 m!1180297))

(declare-fun m!1180299 () Bool)

(assert (=> bm!63058 m!1180299))

(declare-fun m!1180301 () Bool)

(assert (=> b!980970 m!1180301))

(declare-fun m!1180303 () Bool)

(assert (=> b!980970 m!1180303))

(declare-fun m!1180305 () Bool)

(assert (=> bm!63061 m!1180305))

(assert (=> bm!62889 d!288286))

(declare-fun b!980978 () Bool)

(declare-fun e!631162 () Bool)

(declare-fun e!631156 () Bool)

(assert (=> b!980978 (= e!631162 e!631156)))

(declare-fun c!160439 () Bool)

(assert (=> b!980978 (= c!160439 ((_ is Union!2733) (ite c!160220 (regTwo!5979 (regOne!5978 r!15766)) (regTwo!5978 (regOne!5978 r!15766)))))))

(declare-fun call!63067 () Bool)

(declare-fun bm!63062 () Bool)

(assert (=> bm!63062 (= call!63067 (validRegex!1202 (ite c!160439 (regTwo!5979 (ite c!160220 (regTwo!5979 (regOne!5978 r!15766)) (regTwo!5978 (regOne!5978 r!15766)))) (regTwo!5978 (ite c!160220 (regTwo!5979 (regOne!5978 r!15766)) (regTwo!5978 (regOne!5978 r!15766)))))))))

(declare-fun b!980979 () Bool)

(declare-fun res!445239 () Bool)

(declare-fun e!631161 () Bool)

(assert (=> b!980979 (=> (not res!445239) (not e!631161))))

(declare-fun call!63068 () Bool)

(assert (=> b!980979 (= res!445239 call!63068)))

(assert (=> b!980979 (= e!631156 e!631161)))

(declare-fun b!980980 () Bool)

(declare-fun e!631159 () Bool)

(assert (=> b!980980 (= e!631159 call!63067)))

(declare-fun b!980981 () Bool)

(declare-fun e!631158 () Bool)

(assert (=> b!980981 (= e!631158 e!631162)))

(declare-fun c!160438 () Bool)

(assert (=> b!980981 (= c!160438 ((_ is Star!2733) (ite c!160220 (regTwo!5979 (regOne!5978 r!15766)) (regTwo!5978 (regOne!5978 r!15766)))))))

(declare-fun b!980982 () Bool)

(declare-fun res!445240 () Bool)

(declare-fun e!631157 () Bool)

(assert (=> b!980982 (=> res!445240 e!631157)))

(assert (=> b!980982 (= res!445240 (not ((_ is Concat!4566) (ite c!160220 (regTwo!5979 (regOne!5978 r!15766)) (regTwo!5978 (regOne!5978 r!15766))))))))

(assert (=> b!980982 (= e!631156 e!631157)))

(declare-fun b!980983 () Bool)

(assert (=> b!980983 (= e!631161 call!63067)))

(declare-fun call!63069 () Bool)

(declare-fun bm!63063 () Bool)

(assert (=> bm!63063 (= call!63069 (validRegex!1202 (ite c!160438 (reg!3062 (ite c!160220 (regTwo!5979 (regOne!5978 r!15766)) (regTwo!5978 (regOne!5978 r!15766)))) (ite c!160439 (regOne!5979 (ite c!160220 (regTwo!5979 (regOne!5978 r!15766)) (regTwo!5978 (regOne!5978 r!15766)))) (regOne!5978 (ite c!160220 (regTwo!5979 (regOne!5978 r!15766)) (regTwo!5978 (regOne!5978 r!15766))))))))))

(declare-fun b!980985 () Bool)

(assert (=> b!980985 (= e!631157 e!631159)))

(declare-fun res!445238 () Bool)

(assert (=> b!980985 (=> (not res!445238) (not e!631159))))

(assert (=> b!980985 (= res!445238 call!63068)))

(declare-fun b!980986 () Bool)

(declare-fun e!631160 () Bool)

(assert (=> b!980986 (= e!631160 call!63069)))

(declare-fun bm!63064 () Bool)

(assert (=> bm!63064 (= call!63068 call!63069)))

(declare-fun d!288288 () Bool)

(declare-fun res!445242 () Bool)

(assert (=> d!288288 (=> res!445242 e!631158)))

(assert (=> d!288288 (= res!445242 ((_ is ElementMatch!2733) (ite c!160220 (regTwo!5979 (regOne!5978 r!15766)) (regTwo!5978 (regOne!5978 r!15766)))))))

(assert (=> d!288288 (= (validRegex!1202 (ite c!160220 (regTwo!5979 (regOne!5978 r!15766)) (regTwo!5978 (regOne!5978 r!15766)))) e!631158)))

(declare-fun b!980984 () Bool)

(assert (=> b!980984 (= e!631162 e!631160)))

(declare-fun res!445241 () Bool)

(assert (=> b!980984 (= res!445241 (not (nullable!849 (reg!3062 (ite c!160220 (regTwo!5979 (regOne!5978 r!15766)) (regTwo!5978 (regOne!5978 r!15766)))))))))

(assert (=> b!980984 (=> (not res!445241) (not e!631160))))

(assert (= (and d!288288 (not res!445242)) b!980981))

(assert (= (and b!980981 c!160438) b!980984))

(assert (= (and b!980981 (not c!160438)) b!980978))

(assert (= (and b!980984 res!445241) b!980986))

(assert (= (and b!980978 c!160439) b!980979))

(assert (= (and b!980978 (not c!160439)) b!980982))

(assert (= (and b!980979 res!445239) b!980983))

(assert (= (and b!980982 (not res!445240)) b!980985))

(assert (= (and b!980985 res!445238) b!980980))

(assert (= (or b!980983 b!980980) bm!63062))

(assert (= (or b!980979 b!980985) bm!63064))

(assert (= (or b!980986 bm!63064) bm!63063))

(declare-fun m!1180307 () Bool)

(assert (=> bm!63062 m!1180307))

(declare-fun m!1180309 () Bool)

(assert (=> bm!63063 m!1180309))

(declare-fun m!1180311 () Bool)

(assert (=> b!980984 m!1180311))

(assert (=> bm!62906 d!288288))

(assert (=> b!980067 d!288202))

(assert (=> b!980067 d!288204))

(assert (=> bm!62890 d!288012))

(assert (=> bm!62863 d!288012))

(assert (=> b!979981 d!288154))

(assert (=> b!979981 d!288156))

(declare-fun d!288290 () Bool)

(assert (=> d!288290 (= (Exists!470 (ite c!160223 lambda!34917 lambda!34918)) (choose!6215 (ite c!160223 lambda!34917 lambda!34918)))))

(declare-fun bs!243933 () Bool)

(assert (= bs!243933 d!288290))

(declare-fun m!1180313 () Bool)

(assert (=> bs!243933 m!1180313))

(assert (=> bm!62910 d!288290))

(assert (=> b!979898 d!288202))

(assert (=> b!979898 d!288204))

(declare-fun d!288292 () Bool)

(declare-fun e!631163 () Bool)

(assert (=> d!288292 e!631163))

(declare-fun res!445243 () Bool)

(assert (=> d!288292 (=> (not res!445243) (not e!631163))))

(declare-fun lt!350049 () Regex!2733)

(assert (=> d!288292 (= res!445243 (validRegex!1202 lt!350049))))

(declare-fun e!631166 () Regex!2733)

(assert (=> d!288292 (= lt!350049 e!631166)))

(declare-fun c!160440 () Bool)

(assert (=> d!288292 (= c!160440 (and ((_ is Concat!4566) (ite c!160207 (regTwo!5978 (regOne!5978 r!15766)) (ite c!160208 (regTwo!5979 (regOne!5978 r!15766)) (reg!3062 (regOne!5978 r!15766))))) ((_ is EmptyExpr!2733) (regOne!5978 (ite c!160207 (regTwo!5978 (regOne!5978 r!15766)) (ite c!160208 (regTwo!5979 (regOne!5978 r!15766)) (reg!3062 (regOne!5978 r!15766))))))))))

(assert (=> d!288292 (validRegex!1202 (ite c!160207 (regTwo!5978 (regOne!5978 r!15766)) (ite c!160208 (regTwo!5979 (regOne!5978 r!15766)) (reg!3062 (regOne!5978 r!15766)))))))

(assert (=> d!288292 (= (removeUselessConcat!350 (ite c!160207 (regTwo!5978 (regOne!5978 r!15766)) (ite c!160208 (regTwo!5979 (regOne!5978 r!15766)) (reg!3062 (regOne!5978 r!15766))))) lt!350049)))

(declare-fun e!631167 () Regex!2733)

(declare-fun b!980987 () Bool)

(assert (=> b!980987 (= e!631167 (ite c!160207 (regTwo!5978 (regOne!5978 r!15766)) (ite c!160208 (regTwo!5979 (regOne!5978 r!15766)) (reg!3062 (regOne!5978 r!15766)))))))

(declare-fun b!980988 () Bool)

(declare-fun e!631164 () Regex!2733)

(assert (=> b!980988 (= e!631166 e!631164)))

(declare-fun c!160441 () Bool)

(assert (=> b!980988 (= c!160441 (and ((_ is Concat!4566) (ite c!160207 (regTwo!5978 (regOne!5978 r!15766)) (ite c!160208 (regTwo!5979 (regOne!5978 r!15766)) (reg!3062 (regOne!5978 r!15766))))) ((_ is EmptyExpr!2733) (regTwo!5978 (ite c!160207 (regTwo!5978 (regOne!5978 r!15766)) (ite c!160208 (regTwo!5979 (regOne!5978 r!15766)) (reg!3062 (regOne!5978 r!15766))))))))))

(declare-fun bm!63065 () Bool)

(declare-fun call!63072 () Regex!2733)

(declare-fun call!63071 () Regex!2733)

(assert (=> bm!63065 (= call!63072 call!63071)))

(declare-fun call!63070 () Regex!2733)

(declare-fun c!160442 () Bool)

(declare-fun bm!63066 () Bool)

(assert (=> bm!63066 (= call!63070 (removeUselessConcat!350 (ite c!160440 (regTwo!5978 (ite c!160207 (regTwo!5978 (regOne!5978 r!15766)) (ite c!160208 (regTwo!5979 (regOne!5978 r!15766)) (reg!3062 (regOne!5978 r!15766))))) (ite (or c!160441 c!160442) (regOne!5978 (ite c!160207 (regTwo!5978 (regOne!5978 r!15766)) (ite c!160208 (regTwo!5979 (regOne!5978 r!15766)) (reg!3062 (regOne!5978 r!15766))))) (regOne!5979 (ite c!160207 (regTwo!5978 (regOne!5978 r!15766)) (ite c!160208 (regTwo!5979 (regOne!5978 r!15766)) (reg!3062 (regOne!5978 r!15766)))))))))))

(declare-fun b!980989 () Bool)

(declare-fun c!160444 () Bool)

(assert (=> b!980989 (= c!160444 ((_ is Star!2733) (ite c!160207 (regTwo!5978 (regOne!5978 r!15766)) (ite c!160208 (regTwo!5979 (regOne!5978 r!15766)) (reg!3062 (regOne!5978 r!15766))))))))

(declare-fun e!631168 () Regex!2733)

(assert (=> b!980989 (= e!631168 e!631167)))

(declare-fun bm!63067 () Bool)

(declare-fun call!63074 () Regex!2733)

(declare-fun call!63073 () Regex!2733)

(assert (=> bm!63067 (= call!63074 call!63073)))

(declare-fun b!980990 () Bool)

(assert (=> b!980990 (= e!631163 (= (nullable!849 lt!350049) (nullable!849 (ite c!160207 (regTwo!5978 (regOne!5978 r!15766)) (ite c!160208 (regTwo!5979 (regOne!5978 r!15766)) (reg!3062 (regOne!5978 r!15766)))))))))

(declare-fun b!980991 () Bool)

(declare-fun e!631165 () Regex!2733)

(assert (=> b!980991 (= e!631165 (Concat!4566 call!63074 call!63071))))

(declare-fun b!980992 () Bool)

(assert (=> b!980992 (= e!631164 call!63073)))

(declare-fun b!980993 () Bool)

(assert (=> b!980993 (= e!631166 call!63070)))

(declare-fun b!980994 () Bool)

(assert (=> b!980994 (= e!631165 e!631168)))

(declare-fun c!160443 () Bool)

(assert (=> b!980994 (= c!160443 ((_ is Union!2733) (ite c!160207 (regTwo!5978 (regOne!5978 r!15766)) (ite c!160208 (regTwo!5979 (regOne!5978 r!15766)) (reg!3062 (regOne!5978 r!15766))))))))

(declare-fun bm!63068 () Bool)

(assert (=> bm!63068 (= call!63073 call!63070)))

(declare-fun b!980995 () Bool)

(assert (=> b!980995 (= c!160442 ((_ is Concat!4566) (ite c!160207 (regTwo!5978 (regOne!5978 r!15766)) (ite c!160208 (regTwo!5979 (regOne!5978 r!15766)) (reg!3062 (regOne!5978 r!15766))))))))

(assert (=> b!980995 (= e!631164 e!631165)))

(declare-fun b!980996 () Bool)

(assert (=> b!980996 (= e!631167 (Star!2733 call!63072))))

(declare-fun bm!63069 () Bool)

(assert (=> bm!63069 (= call!63071 (removeUselessConcat!350 (ite c!160442 (regTwo!5978 (ite c!160207 (regTwo!5978 (regOne!5978 r!15766)) (ite c!160208 (regTwo!5979 (regOne!5978 r!15766)) (reg!3062 (regOne!5978 r!15766))))) (ite c!160443 (regTwo!5979 (ite c!160207 (regTwo!5978 (regOne!5978 r!15766)) (ite c!160208 (regTwo!5979 (regOne!5978 r!15766)) (reg!3062 (regOne!5978 r!15766))))) (reg!3062 (ite c!160207 (regTwo!5978 (regOne!5978 r!15766)) (ite c!160208 (regTwo!5979 (regOne!5978 r!15766)) (reg!3062 (regOne!5978 r!15766)))))))))))

(declare-fun b!980997 () Bool)

(assert (=> b!980997 (= e!631168 (Union!2733 call!63074 call!63072))))

(assert (= (and d!288292 c!160440) b!980993))

(assert (= (and d!288292 (not c!160440)) b!980988))

(assert (= (and b!980988 c!160441) b!980992))

(assert (= (and b!980988 (not c!160441)) b!980995))

(assert (= (and b!980995 c!160442) b!980991))

(assert (= (and b!980995 (not c!160442)) b!980994))

(assert (= (and b!980994 c!160443) b!980997))

(assert (= (and b!980994 (not c!160443)) b!980989))

(assert (= (and b!980989 c!160444) b!980996))

(assert (= (and b!980989 (not c!160444)) b!980987))

(assert (= (or b!980997 b!980996) bm!63065))

(assert (= (or b!980991 bm!63065) bm!63069))

(assert (= (or b!980991 b!980997) bm!63067))

(assert (= (or b!980992 bm!63067) bm!63068))

(assert (= (or b!980993 bm!63068) bm!63066))

(assert (= (and d!288292 res!445243) b!980990))

(declare-fun m!1180315 () Bool)

(assert (=> d!288292 m!1180315))

(declare-fun m!1180317 () Bool)

(assert (=> d!288292 m!1180317))

(declare-fun m!1180319 () Bool)

(assert (=> bm!63066 m!1180319))

(declare-fun m!1180321 () Bool)

(assert (=> b!980990 m!1180321))

(declare-fun m!1180323 () Bool)

(assert (=> b!980990 m!1180323))

(declare-fun m!1180325 () Bool)

(assert (=> bm!63069 m!1180325))

(assert (=> bm!62895 d!288292))

(declare-fun b!980998 () Bool)

(declare-fun e!631175 () Bool)

(declare-fun e!631169 () Bool)

(assert (=> b!980998 (= e!631175 e!631169)))

(declare-fun c!160446 () Bool)

(assert (=> b!980998 (= c!160446 ((_ is Union!2733) (ite c!160218 (regTwo!5979 r!15766) (regTwo!5978 r!15766))))))

(declare-fun bm!63070 () Bool)

(declare-fun call!63075 () Bool)

(assert (=> bm!63070 (= call!63075 (validRegex!1202 (ite c!160446 (regTwo!5979 (ite c!160218 (regTwo!5979 r!15766) (regTwo!5978 r!15766))) (regTwo!5978 (ite c!160218 (regTwo!5979 r!15766) (regTwo!5978 r!15766))))))))

(declare-fun b!980999 () Bool)

(declare-fun res!445245 () Bool)

(declare-fun e!631174 () Bool)

(assert (=> b!980999 (=> (not res!445245) (not e!631174))))

(declare-fun call!63076 () Bool)

(assert (=> b!980999 (= res!445245 call!63076)))

(assert (=> b!980999 (= e!631169 e!631174)))

(declare-fun b!981000 () Bool)

(declare-fun e!631172 () Bool)

(assert (=> b!981000 (= e!631172 call!63075)))

(declare-fun b!981001 () Bool)

(declare-fun e!631171 () Bool)

(assert (=> b!981001 (= e!631171 e!631175)))

(declare-fun c!160445 () Bool)

(assert (=> b!981001 (= c!160445 ((_ is Star!2733) (ite c!160218 (regTwo!5979 r!15766) (regTwo!5978 r!15766))))))

(declare-fun b!981002 () Bool)

(declare-fun res!445246 () Bool)

(declare-fun e!631170 () Bool)

(assert (=> b!981002 (=> res!445246 e!631170)))

(assert (=> b!981002 (= res!445246 (not ((_ is Concat!4566) (ite c!160218 (regTwo!5979 r!15766) (regTwo!5978 r!15766)))))))

(assert (=> b!981002 (= e!631169 e!631170)))

(declare-fun b!981003 () Bool)

(assert (=> b!981003 (= e!631174 call!63075)))

(declare-fun bm!63071 () Bool)

(declare-fun call!63077 () Bool)

(assert (=> bm!63071 (= call!63077 (validRegex!1202 (ite c!160445 (reg!3062 (ite c!160218 (regTwo!5979 r!15766) (regTwo!5978 r!15766))) (ite c!160446 (regOne!5979 (ite c!160218 (regTwo!5979 r!15766) (regTwo!5978 r!15766))) (regOne!5978 (ite c!160218 (regTwo!5979 r!15766) (regTwo!5978 r!15766)))))))))

(declare-fun b!981005 () Bool)

(assert (=> b!981005 (= e!631170 e!631172)))

(declare-fun res!445244 () Bool)

(assert (=> b!981005 (=> (not res!445244) (not e!631172))))

(assert (=> b!981005 (= res!445244 call!63076)))

(declare-fun b!981006 () Bool)

(declare-fun e!631173 () Bool)

(assert (=> b!981006 (= e!631173 call!63077)))

(declare-fun bm!63072 () Bool)

(assert (=> bm!63072 (= call!63076 call!63077)))

(declare-fun d!288294 () Bool)

(declare-fun res!445248 () Bool)

(assert (=> d!288294 (=> res!445248 e!631171)))

(assert (=> d!288294 (= res!445248 ((_ is ElementMatch!2733) (ite c!160218 (regTwo!5979 r!15766) (regTwo!5978 r!15766))))))

(assert (=> d!288294 (= (validRegex!1202 (ite c!160218 (regTwo!5979 r!15766) (regTwo!5978 r!15766))) e!631171)))

(declare-fun b!981004 () Bool)

(assert (=> b!981004 (= e!631175 e!631173)))

(declare-fun res!445247 () Bool)

(assert (=> b!981004 (= res!445247 (not (nullable!849 (reg!3062 (ite c!160218 (regTwo!5979 r!15766) (regTwo!5978 r!15766))))))))

(assert (=> b!981004 (=> (not res!445247) (not e!631173))))

(assert (= (and d!288294 (not res!445248)) b!981001))

(assert (= (and b!981001 c!160445) b!981004))

(assert (= (and b!981001 (not c!160445)) b!980998))

(assert (= (and b!981004 res!445247) b!981006))

(assert (= (and b!980998 c!160446) b!980999))

(assert (= (and b!980998 (not c!160446)) b!981002))

(assert (= (and b!980999 res!445245) b!981003))

(assert (= (and b!981002 (not res!445246)) b!981005))

(assert (= (and b!981005 res!445244) b!981000))

(assert (= (or b!981003 b!981000) bm!63070))

(assert (= (or b!980999 b!981005) bm!63072))

(assert (= (or b!981006 bm!63072) bm!63071))

(declare-fun m!1180327 () Bool)

(assert (=> bm!63070 m!1180327))

(declare-fun m!1180329 () Bool)

(assert (=> bm!63071 m!1180329))

(declare-fun m!1180331 () Bool)

(assert (=> b!981004 m!1180331))

(assert (=> bm!62903 d!288294))

(assert (=> bm!62867 d!288012))

(declare-fun d!288296 () Bool)

(assert (=> d!288296 (= (nullable!849 (reg!3062 (regOne!5978 r!15766))) (nullableFct!204 (reg!3062 (regOne!5978 r!15766))))))

(declare-fun bs!243934 () Bool)

(assert (= bs!243934 d!288296))

(declare-fun m!1180333 () Bool)

(assert (=> bs!243934 m!1180333))

(assert (=> b!980129 d!288296))

(assert (=> bm!62874 d!288148))

(assert (=> b!980085 d!288222))

(assert (=> d!288034 d!288012))

(declare-fun b!981007 () Bool)

(declare-fun e!631182 () Bool)

(declare-fun e!631176 () Bool)

(assert (=> b!981007 (= e!631182 e!631176)))

(declare-fun c!160448 () Bool)

(assert (=> b!981007 (= c!160448 ((_ is Union!2733) (removeUselessConcat!350 r!15766)))))

(declare-fun bm!63073 () Bool)

(declare-fun call!63078 () Bool)

(assert (=> bm!63073 (= call!63078 (validRegex!1202 (ite c!160448 (regTwo!5979 (removeUselessConcat!350 r!15766)) (regTwo!5978 (removeUselessConcat!350 r!15766)))))))

(declare-fun b!981008 () Bool)

(declare-fun res!445250 () Bool)

(declare-fun e!631181 () Bool)

(assert (=> b!981008 (=> (not res!445250) (not e!631181))))

(declare-fun call!63079 () Bool)

(assert (=> b!981008 (= res!445250 call!63079)))

(assert (=> b!981008 (= e!631176 e!631181)))

(declare-fun b!981009 () Bool)

(declare-fun e!631179 () Bool)

(assert (=> b!981009 (= e!631179 call!63078)))

(declare-fun b!981010 () Bool)

(declare-fun e!631178 () Bool)

(assert (=> b!981010 (= e!631178 e!631182)))

(declare-fun c!160447 () Bool)

(assert (=> b!981010 (= c!160447 ((_ is Star!2733) (removeUselessConcat!350 r!15766)))))

(declare-fun b!981011 () Bool)

(declare-fun res!445251 () Bool)

(declare-fun e!631177 () Bool)

(assert (=> b!981011 (=> res!445251 e!631177)))

(assert (=> b!981011 (= res!445251 (not ((_ is Concat!4566) (removeUselessConcat!350 r!15766))))))

(assert (=> b!981011 (= e!631176 e!631177)))

(declare-fun b!981012 () Bool)

(assert (=> b!981012 (= e!631181 call!63078)))

(declare-fun bm!63074 () Bool)

(declare-fun call!63080 () Bool)

(assert (=> bm!63074 (= call!63080 (validRegex!1202 (ite c!160447 (reg!3062 (removeUselessConcat!350 r!15766)) (ite c!160448 (regOne!5979 (removeUselessConcat!350 r!15766)) (regOne!5978 (removeUselessConcat!350 r!15766))))))))

(declare-fun b!981014 () Bool)

(assert (=> b!981014 (= e!631177 e!631179)))

(declare-fun res!445249 () Bool)

(assert (=> b!981014 (=> (not res!445249) (not e!631179))))

(assert (=> b!981014 (= res!445249 call!63079)))

(declare-fun b!981015 () Bool)

(declare-fun e!631180 () Bool)

(assert (=> b!981015 (= e!631180 call!63080)))

(declare-fun bm!63075 () Bool)

(assert (=> bm!63075 (= call!63079 call!63080)))

(declare-fun d!288298 () Bool)

(declare-fun res!445253 () Bool)

(assert (=> d!288298 (=> res!445253 e!631178)))

(assert (=> d!288298 (= res!445253 ((_ is ElementMatch!2733) (removeUselessConcat!350 r!15766)))))

(assert (=> d!288298 (= (validRegex!1202 (removeUselessConcat!350 r!15766)) e!631178)))

(declare-fun b!981013 () Bool)

(assert (=> b!981013 (= e!631182 e!631180)))

(declare-fun res!445252 () Bool)

(assert (=> b!981013 (= res!445252 (not (nullable!849 (reg!3062 (removeUselessConcat!350 r!15766)))))))

(assert (=> b!981013 (=> (not res!445252) (not e!631180))))

(assert (= (and d!288298 (not res!445253)) b!981010))

(assert (= (and b!981010 c!160447) b!981013))

(assert (= (and b!981010 (not c!160447)) b!981007))

(assert (= (and b!981013 res!445252) b!981015))

(assert (= (and b!981007 c!160448) b!981008))

(assert (= (and b!981007 (not c!160448)) b!981011))

(assert (= (and b!981008 res!445250) b!981012))

(assert (= (and b!981011 (not res!445251)) b!981014))

(assert (= (and b!981014 res!445249) b!981009))

(assert (= (or b!981012 b!981009) bm!63073))

(assert (= (or b!981008 b!981014) bm!63075))

(assert (= (or b!981015 bm!63075) bm!63074))

(declare-fun m!1180335 () Bool)

(assert (=> bm!63073 m!1180335))

(declare-fun m!1180337 () Bool)

(assert (=> bm!63074 m!1180337))

(declare-fun m!1180339 () Bool)

(assert (=> b!981013 m!1180339))

(assert (=> d!288034 d!288298))

(assert (=> b!980087 d!288222))

(declare-fun d!288300 () Bool)

(assert (=> d!288300 (= (isEmpty!6271 lt!349926) (not ((_ is Some!2301) lt!349926)))))

(assert (=> d!288030 d!288300))

(declare-fun b!981016 () Bool)

(declare-fun e!631189 () Bool)

(declare-fun e!631183 () Bool)

(assert (=> b!981016 (= e!631189 e!631183)))

(declare-fun c!160450 () Bool)

(assert (=> b!981016 (= c!160450 ((_ is Union!2733) (ite c!160217 (reg!3062 r!15766) (ite c!160218 (regOne!5979 r!15766) (regOne!5978 r!15766)))))))

(declare-fun call!63081 () Bool)

(declare-fun bm!63076 () Bool)

(assert (=> bm!63076 (= call!63081 (validRegex!1202 (ite c!160450 (regTwo!5979 (ite c!160217 (reg!3062 r!15766) (ite c!160218 (regOne!5979 r!15766) (regOne!5978 r!15766)))) (regTwo!5978 (ite c!160217 (reg!3062 r!15766) (ite c!160218 (regOne!5979 r!15766) (regOne!5978 r!15766)))))))))

(declare-fun b!981017 () Bool)

(declare-fun res!445255 () Bool)

(declare-fun e!631188 () Bool)

(assert (=> b!981017 (=> (not res!445255) (not e!631188))))

(declare-fun call!63082 () Bool)

(assert (=> b!981017 (= res!445255 call!63082)))

(assert (=> b!981017 (= e!631183 e!631188)))

(declare-fun b!981018 () Bool)

(declare-fun e!631186 () Bool)

(assert (=> b!981018 (= e!631186 call!63081)))

(declare-fun b!981019 () Bool)

(declare-fun e!631185 () Bool)

(assert (=> b!981019 (= e!631185 e!631189)))

(declare-fun c!160449 () Bool)

(assert (=> b!981019 (= c!160449 ((_ is Star!2733) (ite c!160217 (reg!3062 r!15766) (ite c!160218 (regOne!5979 r!15766) (regOne!5978 r!15766)))))))

(declare-fun b!981020 () Bool)

(declare-fun res!445256 () Bool)

(declare-fun e!631184 () Bool)

(assert (=> b!981020 (=> res!445256 e!631184)))

(assert (=> b!981020 (= res!445256 (not ((_ is Concat!4566) (ite c!160217 (reg!3062 r!15766) (ite c!160218 (regOne!5979 r!15766) (regOne!5978 r!15766))))))))

(assert (=> b!981020 (= e!631183 e!631184)))

(declare-fun b!981021 () Bool)

(assert (=> b!981021 (= e!631188 call!63081)))

(declare-fun bm!63077 () Bool)

(declare-fun call!63083 () Bool)

(assert (=> bm!63077 (= call!63083 (validRegex!1202 (ite c!160449 (reg!3062 (ite c!160217 (reg!3062 r!15766) (ite c!160218 (regOne!5979 r!15766) (regOne!5978 r!15766)))) (ite c!160450 (regOne!5979 (ite c!160217 (reg!3062 r!15766) (ite c!160218 (regOne!5979 r!15766) (regOne!5978 r!15766)))) (regOne!5978 (ite c!160217 (reg!3062 r!15766) (ite c!160218 (regOne!5979 r!15766) (regOne!5978 r!15766))))))))))

(declare-fun b!981023 () Bool)

(assert (=> b!981023 (= e!631184 e!631186)))

(declare-fun res!445254 () Bool)

(assert (=> b!981023 (=> (not res!445254) (not e!631186))))

(assert (=> b!981023 (= res!445254 call!63082)))

(declare-fun b!981024 () Bool)

(declare-fun e!631187 () Bool)

(assert (=> b!981024 (= e!631187 call!63083)))

(declare-fun bm!63078 () Bool)

(assert (=> bm!63078 (= call!63082 call!63083)))

(declare-fun d!288302 () Bool)

(declare-fun res!445258 () Bool)

(assert (=> d!288302 (=> res!445258 e!631185)))

(assert (=> d!288302 (= res!445258 ((_ is ElementMatch!2733) (ite c!160217 (reg!3062 r!15766) (ite c!160218 (regOne!5979 r!15766) (regOne!5978 r!15766)))))))

(assert (=> d!288302 (= (validRegex!1202 (ite c!160217 (reg!3062 r!15766) (ite c!160218 (regOne!5979 r!15766) (regOne!5978 r!15766)))) e!631185)))

(declare-fun b!981022 () Bool)

(assert (=> b!981022 (= e!631189 e!631187)))

(declare-fun res!445257 () Bool)

(assert (=> b!981022 (= res!445257 (not (nullable!849 (reg!3062 (ite c!160217 (reg!3062 r!15766) (ite c!160218 (regOne!5979 r!15766) (regOne!5978 r!15766)))))))))

(assert (=> b!981022 (=> (not res!445257) (not e!631187))))

(assert (= (and d!288302 (not res!445258)) b!981019))

(assert (= (and b!981019 c!160449) b!981022))

(assert (= (and b!981019 (not c!160449)) b!981016))

(assert (= (and b!981022 res!445257) b!981024))

(assert (= (and b!981016 c!160450) b!981017))

(assert (= (and b!981016 (not c!160450)) b!981020))

(assert (= (and b!981017 res!445255) b!981021))

(assert (= (and b!981020 (not res!445256)) b!981023))

(assert (= (and b!981023 res!445254) b!981018))

(assert (= (or b!981021 b!981018) bm!63076))

(assert (= (or b!981017 b!981023) bm!63078))

(assert (= (or b!981024 bm!63078) bm!63077))

(declare-fun m!1180341 () Bool)

(assert (=> bm!63076 m!1180341))

(declare-fun m!1180343 () Bool)

(assert (=> bm!63077 m!1180343))

(declare-fun m!1180345 () Bool)

(assert (=> b!981022 m!1180345))

(assert (=> bm!62904 d!288302))

(declare-fun d!288304 () Bool)

(assert (=> d!288304 (= (nullable!849 lt!349984) (nullableFct!204 lt!349984))))

(declare-fun bs!243935 () Bool)

(assert (= bs!243935 d!288304))

(declare-fun m!1180347 () Bool)

(assert (=> bs!243935 m!1180347))

(assert (=> b!980049 d!288304))

(assert (=> b!980049 d!288242))

(assert (=> b!980059 d!288202))

(assert (=> b!980059 d!288204))

(declare-fun b!981025 () Bool)

(declare-fun e!631190 () Bool)

(declare-fun tp!299631 () Bool)

(assert (=> b!981025 (= e!631190 (and tp_is_empty!5109 tp!299631))))

(assert (=> b!980173 (= tp!299499 e!631190)))

(assert (= (and b!980173 ((_ is Cons!9947) (t!101009 (t!101009 s!10566)))) b!981025))

(declare-fun b!981028 () Bool)

(declare-fun e!631191 () Bool)

(declare-fun tp!299633 () Bool)

(assert (=> b!981028 (= e!631191 tp!299633)))

(declare-fun b!981026 () Bool)

(assert (=> b!981026 (= e!631191 tp_is_empty!5109)))

(declare-fun b!981029 () Bool)

(declare-fun tp!299634 () Bool)

(declare-fun tp!299635 () Bool)

(assert (=> b!981029 (= e!631191 (and tp!299634 tp!299635))))

(assert (=> b!980177 (= tp!299502 e!631191)))

(declare-fun b!981027 () Bool)

(declare-fun tp!299632 () Bool)

(declare-fun tp!299636 () Bool)

(assert (=> b!981027 (= e!631191 (and tp!299632 tp!299636))))

(assert (= (and b!980177 ((_ is ElementMatch!2733) (regOne!5979 (reg!3062 r!15766)))) b!981026))

(assert (= (and b!980177 ((_ is Concat!4566) (regOne!5979 (reg!3062 r!15766)))) b!981027))

(assert (= (and b!980177 ((_ is Star!2733) (regOne!5979 (reg!3062 r!15766)))) b!981028))

(assert (= (and b!980177 ((_ is Union!2733) (regOne!5979 (reg!3062 r!15766)))) b!981029))

(declare-fun b!981032 () Bool)

(declare-fun e!631192 () Bool)

(declare-fun tp!299638 () Bool)

(assert (=> b!981032 (= e!631192 tp!299638)))

(declare-fun b!981030 () Bool)

(assert (=> b!981030 (= e!631192 tp_is_empty!5109)))

(declare-fun b!981033 () Bool)

(declare-fun tp!299639 () Bool)

(declare-fun tp!299640 () Bool)

(assert (=> b!981033 (= e!631192 (and tp!299639 tp!299640))))

(assert (=> b!980177 (= tp!299503 e!631192)))

(declare-fun b!981031 () Bool)

(declare-fun tp!299637 () Bool)

(declare-fun tp!299641 () Bool)

(assert (=> b!981031 (= e!631192 (and tp!299637 tp!299641))))

(assert (= (and b!980177 ((_ is ElementMatch!2733) (regTwo!5979 (reg!3062 r!15766)))) b!981030))

(assert (= (and b!980177 ((_ is Concat!4566) (regTwo!5979 (reg!3062 r!15766)))) b!981031))

(assert (= (and b!980177 ((_ is Star!2733) (regTwo!5979 (reg!3062 r!15766)))) b!981032))

(assert (= (and b!980177 ((_ is Union!2733) (regTwo!5979 (reg!3062 r!15766)))) b!981033))

(declare-fun b!981036 () Bool)

(declare-fun e!631193 () Bool)

(declare-fun tp!299643 () Bool)

(assert (=> b!981036 (= e!631193 tp!299643)))

(declare-fun b!981034 () Bool)

(assert (=> b!981034 (= e!631193 tp_is_empty!5109)))

(declare-fun b!981037 () Bool)

(declare-fun tp!299644 () Bool)

(declare-fun tp!299645 () Bool)

(assert (=> b!981037 (= e!631193 (and tp!299644 tp!299645))))

(assert (=> b!980167 (= tp!299493 e!631193)))

(declare-fun b!981035 () Bool)

(declare-fun tp!299642 () Bool)

(declare-fun tp!299646 () Bool)

(assert (=> b!981035 (= e!631193 (and tp!299642 tp!299646))))

(assert (= (and b!980167 ((_ is ElementMatch!2733) (reg!3062 (regTwo!5979 r!15766)))) b!981034))

(assert (= (and b!980167 ((_ is Concat!4566) (reg!3062 (regTwo!5979 r!15766)))) b!981035))

(assert (= (and b!980167 ((_ is Star!2733) (reg!3062 (regTwo!5979 r!15766)))) b!981036))

(assert (= (and b!980167 ((_ is Union!2733) (reg!3062 (regTwo!5979 r!15766)))) b!981037))

(declare-fun b!981040 () Bool)

(declare-fun e!631194 () Bool)

(declare-fun tp!299648 () Bool)

(assert (=> b!981040 (= e!631194 tp!299648)))

(declare-fun b!981038 () Bool)

(assert (=> b!981038 (= e!631194 tp_is_empty!5109)))

(declare-fun b!981041 () Bool)

(declare-fun tp!299649 () Bool)

(declare-fun tp!299650 () Bool)

(assert (=> b!981041 (= e!631194 (and tp!299649 tp!299650))))

(assert (=> b!980162 (= tp!299487 e!631194)))

(declare-fun b!981039 () Bool)

(declare-fun tp!299647 () Bool)

(declare-fun tp!299651 () Bool)

(assert (=> b!981039 (= e!631194 (and tp!299647 tp!299651))))

(assert (= (and b!980162 ((_ is ElementMatch!2733) (regOne!5978 (regOne!5979 r!15766)))) b!981038))

(assert (= (and b!980162 ((_ is Concat!4566) (regOne!5978 (regOne!5979 r!15766)))) b!981039))

(assert (= (and b!980162 ((_ is Star!2733) (regOne!5978 (regOne!5979 r!15766)))) b!981040))

(assert (= (and b!980162 ((_ is Union!2733) (regOne!5978 (regOne!5979 r!15766)))) b!981041))

(declare-fun b!981044 () Bool)

(declare-fun e!631195 () Bool)

(declare-fun tp!299653 () Bool)

(assert (=> b!981044 (= e!631195 tp!299653)))

(declare-fun b!981042 () Bool)

(assert (=> b!981042 (= e!631195 tp_is_empty!5109)))

(declare-fun b!981045 () Bool)

(declare-fun tp!299654 () Bool)

(declare-fun tp!299655 () Bool)

(assert (=> b!981045 (= e!631195 (and tp!299654 tp!299655))))

(assert (=> b!980162 (= tp!299491 e!631195)))

(declare-fun b!981043 () Bool)

(declare-fun tp!299652 () Bool)

(declare-fun tp!299656 () Bool)

(assert (=> b!981043 (= e!631195 (and tp!299652 tp!299656))))

(assert (= (and b!980162 ((_ is ElementMatch!2733) (regTwo!5978 (regOne!5979 r!15766)))) b!981042))

(assert (= (and b!980162 ((_ is Concat!4566) (regTwo!5978 (regOne!5979 r!15766)))) b!981043))

(assert (= (and b!980162 ((_ is Star!2733) (regTwo!5978 (regOne!5979 r!15766)))) b!981044))

(assert (= (and b!980162 ((_ is Union!2733) (regTwo!5978 (regOne!5979 r!15766)))) b!981045))

(declare-fun b!981048 () Bool)

(declare-fun e!631196 () Bool)

(declare-fun tp!299658 () Bool)

(assert (=> b!981048 (= e!631196 tp!299658)))

(declare-fun b!981046 () Bool)

(assert (=> b!981046 (= e!631196 tp_is_empty!5109)))

(declare-fun b!981049 () Bool)

(declare-fun tp!299659 () Bool)

(declare-fun tp!299660 () Bool)

(assert (=> b!981049 (= e!631196 (and tp!299659 tp!299660))))

(assert (=> b!980166 (= tp!299492 e!631196)))

(declare-fun b!981047 () Bool)

(declare-fun tp!299657 () Bool)

(declare-fun tp!299661 () Bool)

(assert (=> b!981047 (= e!631196 (and tp!299657 tp!299661))))

(assert (= (and b!980166 ((_ is ElementMatch!2733) (regOne!5978 (regTwo!5979 r!15766)))) b!981046))

(assert (= (and b!980166 ((_ is Concat!4566) (regOne!5978 (regTwo!5979 r!15766)))) b!981047))

(assert (= (and b!980166 ((_ is Star!2733) (regOne!5978 (regTwo!5979 r!15766)))) b!981048))

(assert (= (and b!980166 ((_ is Union!2733) (regOne!5978 (regTwo!5979 r!15766)))) b!981049))

(declare-fun b!981052 () Bool)

(declare-fun e!631197 () Bool)

(declare-fun tp!299663 () Bool)

(assert (=> b!981052 (= e!631197 tp!299663)))

(declare-fun b!981050 () Bool)

(assert (=> b!981050 (= e!631197 tp_is_empty!5109)))

(declare-fun b!981053 () Bool)

(declare-fun tp!299664 () Bool)

(declare-fun tp!299665 () Bool)

(assert (=> b!981053 (= e!631197 (and tp!299664 tp!299665))))

(assert (=> b!980166 (= tp!299496 e!631197)))

(declare-fun b!981051 () Bool)

(declare-fun tp!299662 () Bool)

(declare-fun tp!299666 () Bool)

(assert (=> b!981051 (= e!631197 (and tp!299662 tp!299666))))

(assert (= (and b!980166 ((_ is ElementMatch!2733) (regTwo!5978 (regTwo!5979 r!15766)))) b!981050))

(assert (= (and b!980166 ((_ is Concat!4566) (regTwo!5978 (regTwo!5979 r!15766)))) b!981051))

(assert (= (and b!980166 ((_ is Star!2733) (regTwo!5978 (regTwo!5979 r!15766)))) b!981052))

(assert (= (and b!980166 ((_ is Union!2733) (regTwo!5978 (regTwo!5979 r!15766)))) b!981053))

(declare-fun b!981056 () Bool)

(declare-fun e!631198 () Bool)

(declare-fun tp!299668 () Bool)

(assert (=> b!981056 (= e!631198 tp!299668)))

(declare-fun b!981054 () Bool)

(assert (=> b!981054 (= e!631198 tp_is_empty!5109)))

(declare-fun b!981057 () Bool)

(declare-fun tp!299669 () Bool)

(declare-fun tp!299670 () Bool)

(assert (=> b!981057 (= e!631198 (and tp!299669 tp!299670))))

(assert (=> b!980159 (= tp!299483 e!631198)))

(declare-fun b!981055 () Bool)

(declare-fun tp!299667 () Bool)

(declare-fun tp!299671 () Bool)

(assert (=> b!981055 (= e!631198 (and tp!299667 tp!299671))))

(assert (= (and b!980159 ((_ is ElementMatch!2733) (reg!3062 (regTwo!5978 r!15766)))) b!981054))

(assert (= (and b!980159 ((_ is Concat!4566) (reg!3062 (regTwo!5978 r!15766)))) b!981055))

(assert (= (and b!980159 ((_ is Star!2733) (reg!3062 (regTwo!5978 r!15766)))) b!981056))

(assert (= (and b!980159 ((_ is Union!2733) (reg!3062 (regTwo!5978 r!15766)))) b!981057))

(declare-fun b!981060 () Bool)

(declare-fun e!631199 () Bool)

(declare-fun tp!299673 () Bool)

(assert (=> b!981060 (= e!631199 tp!299673)))

(declare-fun b!981058 () Bool)

(assert (=> b!981058 (= e!631199 tp_is_empty!5109)))

(declare-fun b!981061 () Bool)

(declare-fun tp!299674 () Bool)

(declare-fun tp!299675 () Bool)

(assert (=> b!981061 (= e!631199 (and tp!299674 tp!299675))))

(assert (=> b!980154 (= tp!299477 e!631199)))

(declare-fun b!981059 () Bool)

(declare-fun tp!299672 () Bool)

(declare-fun tp!299676 () Bool)

(assert (=> b!981059 (= e!631199 (and tp!299672 tp!299676))))

(assert (= (and b!980154 ((_ is ElementMatch!2733) (regOne!5978 (regOne!5978 r!15766)))) b!981058))

(assert (= (and b!980154 ((_ is Concat!4566) (regOne!5978 (regOne!5978 r!15766)))) b!981059))

(assert (= (and b!980154 ((_ is Star!2733) (regOne!5978 (regOne!5978 r!15766)))) b!981060))

(assert (= (and b!980154 ((_ is Union!2733) (regOne!5978 (regOne!5978 r!15766)))) b!981061))

(declare-fun b!981064 () Bool)

(declare-fun e!631200 () Bool)

(declare-fun tp!299678 () Bool)

(assert (=> b!981064 (= e!631200 tp!299678)))

(declare-fun b!981062 () Bool)

(assert (=> b!981062 (= e!631200 tp_is_empty!5109)))

(declare-fun b!981065 () Bool)

(declare-fun tp!299679 () Bool)

(declare-fun tp!299680 () Bool)

(assert (=> b!981065 (= e!631200 (and tp!299679 tp!299680))))

(assert (=> b!980154 (= tp!299481 e!631200)))

(declare-fun b!981063 () Bool)

(declare-fun tp!299677 () Bool)

(declare-fun tp!299681 () Bool)

(assert (=> b!981063 (= e!631200 (and tp!299677 tp!299681))))

(assert (= (and b!980154 ((_ is ElementMatch!2733) (regTwo!5978 (regOne!5978 r!15766)))) b!981062))

(assert (= (and b!980154 ((_ is Concat!4566) (regTwo!5978 (regOne!5978 r!15766)))) b!981063))

(assert (= (and b!980154 ((_ is Star!2733) (regTwo!5978 (regOne!5978 r!15766)))) b!981064))

(assert (= (and b!980154 ((_ is Union!2733) (regTwo!5978 (regOne!5978 r!15766)))) b!981065))

(declare-fun b!981068 () Bool)

(declare-fun e!631201 () Bool)

(declare-fun tp!299683 () Bool)

(assert (=> b!981068 (= e!631201 tp!299683)))

(declare-fun b!981066 () Bool)

(assert (=> b!981066 (= e!631201 tp_is_empty!5109)))

(declare-fun b!981069 () Bool)

(declare-fun tp!299684 () Bool)

(declare-fun tp!299685 () Bool)

(assert (=> b!981069 (= e!631201 (and tp!299684 tp!299685))))

(assert (=> b!980168 (= tp!299494 e!631201)))

(declare-fun b!981067 () Bool)

(declare-fun tp!299682 () Bool)

(declare-fun tp!299686 () Bool)

(assert (=> b!981067 (= e!631201 (and tp!299682 tp!299686))))

(assert (= (and b!980168 ((_ is ElementMatch!2733) (regOne!5979 (regTwo!5979 r!15766)))) b!981066))

(assert (= (and b!980168 ((_ is Concat!4566) (regOne!5979 (regTwo!5979 r!15766)))) b!981067))

(assert (= (and b!980168 ((_ is Star!2733) (regOne!5979 (regTwo!5979 r!15766)))) b!981068))

(assert (= (and b!980168 ((_ is Union!2733) (regOne!5979 (regTwo!5979 r!15766)))) b!981069))

(declare-fun b!981072 () Bool)

(declare-fun e!631202 () Bool)

(declare-fun tp!299688 () Bool)

(assert (=> b!981072 (= e!631202 tp!299688)))

(declare-fun b!981070 () Bool)

(assert (=> b!981070 (= e!631202 tp_is_empty!5109)))

(declare-fun b!981073 () Bool)

(declare-fun tp!299689 () Bool)

(declare-fun tp!299690 () Bool)

(assert (=> b!981073 (= e!631202 (and tp!299689 tp!299690))))

(assert (=> b!980168 (= tp!299495 e!631202)))

(declare-fun b!981071 () Bool)

(declare-fun tp!299687 () Bool)

(declare-fun tp!299691 () Bool)

(assert (=> b!981071 (= e!631202 (and tp!299687 tp!299691))))

(assert (= (and b!980168 ((_ is ElementMatch!2733) (regTwo!5979 (regTwo!5979 r!15766)))) b!981070))

(assert (= (and b!980168 ((_ is Concat!4566) (regTwo!5979 (regTwo!5979 r!15766)))) b!981071))

(assert (= (and b!980168 ((_ is Star!2733) (regTwo!5979 (regTwo!5979 r!15766)))) b!981072))

(assert (= (and b!980168 ((_ is Union!2733) (regTwo!5979 (regTwo!5979 r!15766)))) b!981073))

(declare-fun b!981076 () Bool)

(declare-fun e!631203 () Bool)

(declare-fun tp!299693 () Bool)

(assert (=> b!981076 (= e!631203 tp!299693)))

(declare-fun b!981074 () Bool)

(assert (=> b!981074 (= e!631203 tp_is_empty!5109)))

(declare-fun b!981077 () Bool)

(declare-fun tp!299694 () Bool)

(declare-fun tp!299695 () Bool)

(assert (=> b!981077 (= e!631203 (and tp!299694 tp!299695))))

(assert (=> b!980163 (= tp!299488 e!631203)))

(declare-fun b!981075 () Bool)

(declare-fun tp!299692 () Bool)

(declare-fun tp!299696 () Bool)

(assert (=> b!981075 (= e!631203 (and tp!299692 tp!299696))))

(assert (= (and b!980163 ((_ is ElementMatch!2733) (reg!3062 (regOne!5979 r!15766)))) b!981074))

(assert (= (and b!980163 ((_ is Concat!4566) (reg!3062 (regOne!5979 r!15766)))) b!981075))

(assert (= (and b!980163 ((_ is Star!2733) (reg!3062 (regOne!5979 r!15766)))) b!981076))

(assert (= (and b!980163 ((_ is Union!2733) (reg!3062 (regOne!5979 r!15766)))) b!981077))

(declare-fun b!981080 () Bool)

(declare-fun e!631204 () Bool)

(declare-fun tp!299698 () Bool)

(assert (=> b!981080 (= e!631204 tp!299698)))

(declare-fun b!981078 () Bool)

(assert (=> b!981078 (= e!631204 tp_is_empty!5109)))

(declare-fun b!981081 () Bool)

(declare-fun tp!299699 () Bool)

(declare-fun tp!299700 () Bool)

(assert (=> b!981081 (= e!631204 (and tp!299699 tp!299700))))

(assert (=> b!980158 (= tp!299482 e!631204)))

(declare-fun b!981079 () Bool)

(declare-fun tp!299697 () Bool)

(declare-fun tp!299701 () Bool)

(assert (=> b!981079 (= e!631204 (and tp!299697 tp!299701))))

(assert (= (and b!980158 ((_ is ElementMatch!2733) (regOne!5978 (regTwo!5978 r!15766)))) b!981078))

(assert (= (and b!980158 ((_ is Concat!4566) (regOne!5978 (regTwo!5978 r!15766)))) b!981079))

(assert (= (and b!980158 ((_ is Star!2733) (regOne!5978 (regTwo!5978 r!15766)))) b!981080))

(assert (= (and b!980158 ((_ is Union!2733) (regOne!5978 (regTwo!5978 r!15766)))) b!981081))

(declare-fun b!981084 () Bool)

(declare-fun e!631205 () Bool)

(declare-fun tp!299703 () Bool)

(assert (=> b!981084 (= e!631205 tp!299703)))

(declare-fun b!981082 () Bool)

(assert (=> b!981082 (= e!631205 tp_is_empty!5109)))

(declare-fun b!981085 () Bool)

(declare-fun tp!299704 () Bool)

(declare-fun tp!299705 () Bool)

(assert (=> b!981085 (= e!631205 (and tp!299704 tp!299705))))

(assert (=> b!980158 (= tp!299486 e!631205)))

(declare-fun b!981083 () Bool)

(declare-fun tp!299702 () Bool)

(declare-fun tp!299706 () Bool)

(assert (=> b!981083 (= e!631205 (and tp!299702 tp!299706))))

(assert (= (and b!980158 ((_ is ElementMatch!2733) (regTwo!5978 (regTwo!5978 r!15766)))) b!981082))

(assert (= (and b!980158 ((_ is Concat!4566) (regTwo!5978 (regTwo!5978 r!15766)))) b!981083))

(assert (= (and b!980158 ((_ is Star!2733) (regTwo!5978 (regTwo!5978 r!15766)))) b!981084))

(assert (= (and b!980158 ((_ is Union!2733) (regTwo!5978 (regTwo!5978 r!15766)))) b!981085))

(declare-fun b!981088 () Bool)

(declare-fun e!631206 () Bool)

(declare-fun tp!299708 () Bool)

(assert (=> b!981088 (= e!631206 tp!299708)))

(declare-fun b!981086 () Bool)

(assert (=> b!981086 (= e!631206 tp_is_empty!5109)))

(declare-fun b!981089 () Bool)

(declare-fun tp!299709 () Bool)

(declare-fun tp!299710 () Bool)

(assert (=> b!981089 (= e!631206 (and tp!299709 tp!299710))))

(assert (=> b!980175 (= tp!299500 e!631206)))

(declare-fun b!981087 () Bool)

(declare-fun tp!299707 () Bool)

(declare-fun tp!299711 () Bool)

(assert (=> b!981087 (= e!631206 (and tp!299707 tp!299711))))

(assert (= (and b!980175 ((_ is ElementMatch!2733) (regOne!5978 (reg!3062 r!15766)))) b!981086))

(assert (= (and b!980175 ((_ is Concat!4566) (regOne!5978 (reg!3062 r!15766)))) b!981087))

(assert (= (and b!980175 ((_ is Star!2733) (regOne!5978 (reg!3062 r!15766)))) b!981088))

(assert (= (and b!980175 ((_ is Union!2733) (regOne!5978 (reg!3062 r!15766)))) b!981089))

(declare-fun b!981092 () Bool)

(declare-fun e!631207 () Bool)

(declare-fun tp!299713 () Bool)

(assert (=> b!981092 (= e!631207 tp!299713)))

(declare-fun b!981090 () Bool)

(assert (=> b!981090 (= e!631207 tp_is_empty!5109)))

(declare-fun b!981093 () Bool)

(declare-fun tp!299714 () Bool)

(declare-fun tp!299715 () Bool)

(assert (=> b!981093 (= e!631207 (and tp!299714 tp!299715))))

(assert (=> b!980175 (= tp!299504 e!631207)))

(declare-fun b!981091 () Bool)

(declare-fun tp!299712 () Bool)

(declare-fun tp!299716 () Bool)

(assert (=> b!981091 (= e!631207 (and tp!299712 tp!299716))))

(assert (= (and b!980175 ((_ is ElementMatch!2733) (regTwo!5978 (reg!3062 r!15766)))) b!981090))

(assert (= (and b!980175 ((_ is Concat!4566) (regTwo!5978 (reg!3062 r!15766)))) b!981091))

(assert (= (and b!980175 ((_ is Star!2733) (regTwo!5978 (reg!3062 r!15766)))) b!981092))

(assert (= (and b!980175 ((_ is Union!2733) (regTwo!5978 (reg!3062 r!15766)))) b!981093))

(declare-fun b!981096 () Bool)

(declare-fun e!631208 () Bool)

(declare-fun tp!299718 () Bool)

(assert (=> b!981096 (= e!631208 tp!299718)))

(declare-fun b!981094 () Bool)

(assert (=> b!981094 (= e!631208 tp_is_empty!5109)))

(declare-fun b!981097 () Bool)

(declare-fun tp!299719 () Bool)

(declare-fun tp!299720 () Bool)

(assert (=> b!981097 (= e!631208 (and tp!299719 tp!299720))))

(assert (=> b!980160 (= tp!299484 e!631208)))

(declare-fun b!981095 () Bool)

(declare-fun tp!299717 () Bool)

(declare-fun tp!299721 () Bool)

(assert (=> b!981095 (= e!631208 (and tp!299717 tp!299721))))

(assert (= (and b!980160 ((_ is ElementMatch!2733) (regOne!5979 (regTwo!5978 r!15766)))) b!981094))

(assert (= (and b!980160 ((_ is Concat!4566) (regOne!5979 (regTwo!5978 r!15766)))) b!981095))

(assert (= (and b!980160 ((_ is Star!2733) (regOne!5979 (regTwo!5978 r!15766)))) b!981096))

(assert (= (and b!980160 ((_ is Union!2733) (regOne!5979 (regTwo!5978 r!15766)))) b!981097))

(declare-fun b!981100 () Bool)

(declare-fun e!631209 () Bool)

(declare-fun tp!299723 () Bool)

(assert (=> b!981100 (= e!631209 tp!299723)))

(declare-fun b!981098 () Bool)

(assert (=> b!981098 (= e!631209 tp_is_empty!5109)))

(declare-fun b!981101 () Bool)

(declare-fun tp!299724 () Bool)

(declare-fun tp!299725 () Bool)

(assert (=> b!981101 (= e!631209 (and tp!299724 tp!299725))))

(assert (=> b!980160 (= tp!299485 e!631209)))

(declare-fun b!981099 () Bool)

(declare-fun tp!299722 () Bool)

(declare-fun tp!299726 () Bool)

(assert (=> b!981099 (= e!631209 (and tp!299722 tp!299726))))

(assert (= (and b!980160 ((_ is ElementMatch!2733) (regTwo!5979 (regTwo!5978 r!15766)))) b!981098))

(assert (= (and b!980160 ((_ is Concat!4566) (regTwo!5979 (regTwo!5978 r!15766)))) b!981099))

(assert (= (and b!980160 ((_ is Star!2733) (regTwo!5979 (regTwo!5978 r!15766)))) b!981100))

(assert (= (and b!980160 ((_ is Union!2733) (regTwo!5979 (regTwo!5978 r!15766)))) b!981101))

(declare-fun b!981104 () Bool)

(declare-fun e!631210 () Bool)

(declare-fun tp!299728 () Bool)

(assert (=> b!981104 (= e!631210 tp!299728)))

(declare-fun b!981102 () Bool)

(assert (=> b!981102 (= e!631210 tp_is_empty!5109)))

(declare-fun b!981105 () Bool)

(declare-fun tp!299729 () Bool)

(declare-fun tp!299730 () Bool)

(assert (=> b!981105 (= e!631210 (and tp!299729 tp!299730))))

(assert (=> b!980155 (= tp!299478 e!631210)))

(declare-fun b!981103 () Bool)

(declare-fun tp!299727 () Bool)

(declare-fun tp!299731 () Bool)

(assert (=> b!981103 (= e!631210 (and tp!299727 tp!299731))))

(assert (= (and b!980155 ((_ is ElementMatch!2733) (reg!3062 (regOne!5978 r!15766)))) b!981102))

(assert (= (and b!980155 ((_ is Concat!4566) (reg!3062 (regOne!5978 r!15766)))) b!981103))

(assert (= (and b!980155 ((_ is Star!2733) (reg!3062 (regOne!5978 r!15766)))) b!981104))

(assert (= (and b!980155 ((_ is Union!2733) (reg!3062 (regOne!5978 r!15766)))) b!981105))

(declare-fun b!981108 () Bool)

(declare-fun e!631211 () Bool)

(declare-fun tp!299733 () Bool)

(assert (=> b!981108 (= e!631211 tp!299733)))

(declare-fun b!981106 () Bool)

(assert (=> b!981106 (= e!631211 tp_is_empty!5109)))

(declare-fun b!981109 () Bool)

(declare-fun tp!299734 () Bool)

(declare-fun tp!299735 () Bool)

(assert (=> b!981109 (= e!631211 (and tp!299734 tp!299735))))

(assert (=> b!980164 (= tp!299489 e!631211)))

(declare-fun b!981107 () Bool)

(declare-fun tp!299732 () Bool)

(declare-fun tp!299736 () Bool)

(assert (=> b!981107 (= e!631211 (and tp!299732 tp!299736))))

(assert (= (and b!980164 ((_ is ElementMatch!2733) (regOne!5979 (regOne!5979 r!15766)))) b!981106))

(assert (= (and b!980164 ((_ is Concat!4566) (regOne!5979 (regOne!5979 r!15766)))) b!981107))

(assert (= (and b!980164 ((_ is Star!2733) (regOne!5979 (regOne!5979 r!15766)))) b!981108))

(assert (= (and b!980164 ((_ is Union!2733) (regOne!5979 (regOne!5979 r!15766)))) b!981109))

(declare-fun b!981112 () Bool)

(declare-fun e!631212 () Bool)

(declare-fun tp!299738 () Bool)

(assert (=> b!981112 (= e!631212 tp!299738)))

(declare-fun b!981110 () Bool)

(assert (=> b!981110 (= e!631212 tp_is_empty!5109)))

(declare-fun b!981113 () Bool)

(declare-fun tp!299739 () Bool)

(declare-fun tp!299740 () Bool)

(assert (=> b!981113 (= e!631212 (and tp!299739 tp!299740))))

(assert (=> b!980164 (= tp!299490 e!631212)))

(declare-fun b!981111 () Bool)

(declare-fun tp!299737 () Bool)

(declare-fun tp!299741 () Bool)

(assert (=> b!981111 (= e!631212 (and tp!299737 tp!299741))))

(assert (= (and b!980164 ((_ is ElementMatch!2733) (regTwo!5979 (regOne!5979 r!15766)))) b!981110))

(assert (= (and b!980164 ((_ is Concat!4566) (regTwo!5979 (regOne!5979 r!15766)))) b!981111))

(assert (= (and b!980164 ((_ is Star!2733) (regTwo!5979 (regOne!5979 r!15766)))) b!981112))

(assert (= (and b!980164 ((_ is Union!2733) (regTwo!5979 (regOne!5979 r!15766)))) b!981113))

(declare-fun b!981116 () Bool)

(declare-fun e!631213 () Bool)

(declare-fun tp!299743 () Bool)

(assert (=> b!981116 (= e!631213 tp!299743)))

(declare-fun b!981114 () Bool)

(assert (=> b!981114 (= e!631213 tp_is_empty!5109)))

(declare-fun b!981117 () Bool)

(declare-fun tp!299744 () Bool)

(declare-fun tp!299745 () Bool)

(assert (=> b!981117 (= e!631213 (and tp!299744 tp!299745))))

(assert (=> b!980176 (= tp!299501 e!631213)))

(declare-fun b!981115 () Bool)

(declare-fun tp!299742 () Bool)

(declare-fun tp!299746 () Bool)

(assert (=> b!981115 (= e!631213 (and tp!299742 tp!299746))))

(assert (= (and b!980176 ((_ is ElementMatch!2733) (reg!3062 (reg!3062 r!15766)))) b!981114))

(assert (= (and b!980176 ((_ is Concat!4566) (reg!3062 (reg!3062 r!15766)))) b!981115))

(assert (= (and b!980176 ((_ is Star!2733) (reg!3062 (reg!3062 r!15766)))) b!981116))

(assert (= (and b!980176 ((_ is Union!2733) (reg!3062 (reg!3062 r!15766)))) b!981117))

(declare-fun b!981120 () Bool)

(declare-fun e!631214 () Bool)

(declare-fun tp!299748 () Bool)

(assert (=> b!981120 (= e!631214 tp!299748)))

(declare-fun b!981118 () Bool)

(assert (=> b!981118 (= e!631214 tp_is_empty!5109)))

(declare-fun b!981121 () Bool)

(declare-fun tp!299749 () Bool)

(declare-fun tp!299750 () Bool)

(assert (=> b!981121 (= e!631214 (and tp!299749 tp!299750))))

(assert (=> b!980156 (= tp!299479 e!631214)))

(declare-fun b!981119 () Bool)

(declare-fun tp!299747 () Bool)

(declare-fun tp!299751 () Bool)

(assert (=> b!981119 (= e!631214 (and tp!299747 tp!299751))))

(assert (= (and b!980156 ((_ is ElementMatch!2733) (regOne!5979 (regOne!5978 r!15766)))) b!981118))

(assert (= (and b!980156 ((_ is Concat!4566) (regOne!5979 (regOne!5978 r!15766)))) b!981119))

(assert (= (and b!980156 ((_ is Star!2733) (regOne!5979 (regOne!5978 r!15766)))) b!981120))

(assert (= (and b!980156 ((_ is Union!2733) (regOne!5979 (regOne!5978 r!15766)))) b!981121))

(declare-fun b!981124 () Bool)

(declare-fun e!631215 () Bool)

(declare-fun tp!299753 () Bool)

(assert (=> b!981124 (= e!631215 tp!299753)))

(declare-fun b!981122 () Bool)

(assert (=> b!981122 (= e!631215 tp_is_empty!5109)))

(declare-fun b!981125 () Bool)

(declare-fun tp!299754 () Bool)

(declare-fun tp!299755 () Bool)

(assert (=> b!981125 (= e!631215 (and tp!299754 tp!299755))))

(assert (=> b!980156 (= tp!299480 e!631215)))

(declare-fun b!981123 () Bool)

(declare-fun tp!299752 () Bool)

(declare-fun tp!299756 () Bool)

(assert (=> b!981123 (= e!631215 (and tp!299752 tp!299756))))

(assert (= (and b!980156 ((_ is ElementMatch!2733) (regTwo!5979 (regOne!5978 r!15766)))) b!981122))

(assert (= (and b!980156 ((_ is Concat!4566) (regTwo!5979 (regOne!5978 r!15766)))) b!981123))

(assert (= (and b!980156 ((_ is Star!2733) (regTwo!5979 (regOne!5978 r!15766)))) b!981124))

(assert (= (and b!980156 ((_ is Union!2733) (regTwo!5979 (regOne!5978 r!15766)))) b!981125))

(check-sat (not b!981089) (not b!980721) (not b!980852) (not bm!63040) (not b!980919) (not b!980863) (not d!288292) (not b!980957) (not b!980890) (not b!980766) (not b!981116) (not b!981125) (not bm!63034) (not b!981047) (not b!980984) (not b!981076) (not d!288268) (not b!981065) (not b!981096) (not b!981028) (not b!981079) (not b!980690) (not b!981113) (not b!980941) (not d!288272) (not bm!63071) (not d!288216) (not d!288242) (not bm!63015) (not bm!63013) (not b!980898) (not b!981072) (not b!981004) (not b!980816) (not bm!63024) (not b!981032) (not b!981051) (not b!981077) (not b!981087) (not b!981049) (not b!981101) (not b!980990) (not b!980687) tp_is_empty!5109 (not b!981035) (not d!288236) (not b!980963) (not bm!63028) (not b!980524) (not b!980540) (not b!980769) (not b!981063) (not b!980527) (not b!981100) (not b!981085) (not b!980903) (not d!288274) (not b!980851) (not d!288152) (not d!288168) (not b!980955) (not b!981095) (not bm!63037) (not b!981037) (not b!981027) (not b!980856) (not b!981112) (not b!981071) (not bm!63061) (not b!980772) (not b!980782) (not b!980882) (not b!981053) (not d!288166) (not b!981036) (not d!288252) (not b!980835) (not bm!63063) (not bm!63038) (not bm!63017) (not b!980770) (not d!288254) (not b!980829) (not bm!63062) (not bm!62992) (not b!981031) (not b!980962) (not b!980531) (not b!980733) (not bm!63066) (not b!981103) (not b!981081) (not d!288206) (not bm!63054) (not d!288210) (not b!981088) (not b!980883) (not b!981033) (not b!981111) (not b!980889) (not d!288256) (not b!980526) (not bm!63045) (not b!980793) (not d!288250) (not d!288212) (not b!981067) (not b!980689) (not bm!63047) (not b!980791) (not b!981097) (not b!980794) (not d!288226) (not b!980763) (not d!288214) (not bm!63008) (not b!980525) (not d!288220) (not bm!62990) (not b!980732) (not b!981124) (not bm!63069) (not b!981108) (not b!980849) (not b!981120) (not b!980885) (not d!288290) (not b!981013) (not b!980694) (not b!981068) (not b!980745) (not b!981040) (not b!980932) (not b!981080) (not b!981105) (not b!981109) (not d!288296) (not bm!63023) (not b!980773) (not b!981083) (not b!980809) (not b!980731) (not bm!63052) (not bm!63070) (not b!980767) (not b!981059) (not b!981060) (not b!980762) (not d!288134) (not b!980798) (not d!288230) (not d!288284) (not bm!63073) (not b!980897) (not d!288270) (not b!981075) (not b!981123) (not b!981107) (not b!981064) (not bm!63077) (not bm!63046) (not b!980970) (not b!980910) (not bm!63022) (not b!981045) (not b!981022) (not b!981073) (not b!980813) (not bm!62998) (not bm!63020) (not b!980771) (not bm!63016) (not b!981055) (not bm!63076) (not b!980899) (not b!981048) (not b!980774) (not b!980734) (not bm!63049) (not bm!63043) (not bm!63011) (not b!981069) (not d!288228) (not b!981052) (not b!980799) (not b!981117) (not d!288224) (not d!288280) (not d!288262) (not d!288304) (not d!288218) (not d!288182) (not bm!63056) (not b!980904) (not b!981044) (not bm!63019) (not b!980738) (not b!981119) (not b!980956) (not b!981121) (not b!981091) (not b!981056) (not b!980779) (not b!981084) (not d!288208) (not b!980922) (not b!981043) (not d!288244) (not b!980950) (not b!981039) (not b!981104) (not bm!63032) (not b!980532) (not b!980884) (not b!980877) (not bm!63025) (not bm!63041) (not b!980537) (not b!980695) (not b!981093) (not bm!63031) (not bm!63010) (not b!981057) (not bm!63074) (not d!288258) (not d!288286) (not b!981099) (not b!980850) (not b!980958) (not b!980688) (not b!980792) (not d!288278) (not bm!63058) (not b!980896) (not b!981041) (not b!980857) (not bm!63053) (not d!288260) (not bm!63036) (not d!288264) (not bm!62991) (not b!981061) (not b!980739) (not d!288164) (not bm!63018) (not b!981029) (not b!981115) (not b!981025) (not b!980942) (not b!981092))
(check-sat)

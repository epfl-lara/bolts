; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!89908 () Bool)

(assert start!89908)

(declare-fun b!1032848 () Bool)

(assert (=> b!1032848 true))

(assert (=> b!1032848 true))

(declare-fun lambda!37096 () Int)

(declare-fun lambda!37095 () Int)

(assert (=> b!1032848 (not (= lambda!37096 lambda!37095))))

(assert (=> b!1032848 true))

(assert (=> b!1032848 true))

(declare-fun b!1032846 () Bool)

(declare-fun e!658171 () Bool)

(declare-datatypes ((C!6298 0))(
  ( (C!6299 (val!3397 Int)) )
))
(declare-datatypes ((Regex!2864 0))(
  ( (ElementMatch!2864 (c!171379 C!6298)) (Concat!4697 (regOne!6240 Regex!2864) (regTwo!6240 Regex!2864)) (EmptyExpr!2864) (Star!2864 (reg!3193 Regex!2864)) (EmptyLang!2864) (Union!2864 (regOne!6241 Regex!2864) (regTwo!6241 Regex!2864)) )
))
(declare-fun r!15766 () Regex!2864)

(declare-datatypes ((List!10094 0))(
  ( (Nil!10078) (Cons!10078 (h!15479 C!6298) (t!101140 List!10094)) )
))
(declare-fun s!10566 () List!10094)

(declare-fun matchR!1400 (Regex!2864 List!10094) Bool)

(declare-fun removeUselessConcat!421 (Regex!2864) Regex!2864)

(assert (=> b!1032846 (= e!658171 (not (matchR!1400 (removeUselessConcat!421 r!15766) s!10566)))))

(declare-fun b!1032847 () Bool)

(declare-fun e!658173 () Bool)

(declare-fun tp!312736 () Bool)

(assert (=> b!1032847 (= e!658173 tp!312736)))

(declare-fun e!658170 () Bool)

(declare-fun e!658174 () Bool)

(assert (=> b!1032848 (= e!658170 e!658174)))

(declare-fun res!464010 () Bool)

(assert (=> b!1032848 (=> res!464010 e!658174)))

(declare-fun isEmpty!6465 (List!10094) Bool)

(assert (=> b!1032848 (= res!464010 (isEmpty!6465 s!10566))))

(declare-fun Exists!591 (Int) Bool)

(assert (=> b!1032848 (= (Exists!591 lambda!37095) (Exists!591 lambda!37096))))

(declare-datatypes ((Unit!15403 0))(
  ( (Unit!15404) )
))
(declare-fun lt!356374 () Unit!15403)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!287 (Regex!2864 Regex!2864 List!10094) Unit!15403)

(assert (=> b!1032848 (= lt!356374 (lemmaExistCutMatchRandMatchRSpecEquivalent!287 (regOne!6240 r!15766) EmptyExpr!2864 s!10566))))

(declare-datatypes ((tuple2!11502 0))(
  ( (tuple2!11503 (_1!6577 List!10094) (_2!6577 List!10094)) )
))
(declare-datatypes ((Option!2393 0))(
  ( (None!2392) (Some!2392 (v!19809 tuple2!11502)) )
))
(declare-fun lt!356376 () Option!2393)

(declare-fun isDefined!2035 (Option!2393) Bool)

(assert (=> b!1032848 (= (isDefined!2035 lt!356376) (Exists!591 lambda!37095))))

(declare-fun findConcatSeparation!499 (Regex!2864 Regex!2864 List!10094 List!10094 List!10094) Option!2393)

(assert (=> b!1032848 (= lt!356376 (findConcatSeparation!499 (regOne!6240 r!15766) EmptyExpr!2864 Nil!10078 s!10566 s!10566))))

(declare-fun lt!356373 () Unit!15403)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!499 (Regex!2864 Regex!2864 List!10094) Unit!15403)

(assert (=> b!1032848 (= lt!356373 (lemmaFindConcatSeparationEquivalentToExists!499 (regOne!6240 r!15766) EmptyExpr!2864 s!10566))))

(declare-fun b!1032849 () Bool)

(declare-fun e!658175 () Bool)

(declare-fun tp_is_empty!5371 () Bool)

(declare-fun tp!312733 () Bool)

(assert (=> b!1032849 (= e!658175 (and tp_is_empty!5371 tp!312733))))

(declare-fun b!1032850 () Bool)

(declare-fun e!658172 () Bool)

(assert (=> b!1032850 (= e!658172 (not e!658170))))

(declare-fun res!464007 () Bool)

(assert (=> b!1032850 (=> res!464007 e!658170)))

(declare-fun lt!356380 () Bool)

(assert (=> b!1032850 (= res!464007 (or lt!356380 (and (is-Concat!4697 r!15766) (is-EmptyExpr!2864 (regOne!6240 r!15766))) (not (is-Concat!4697 r!15766)) (not (is-EmptyExpr!2864 (regTwo!6240 r!15766)))))))

(declare-fun matchRSpec!663 (Regex!2864 List!10094) Bool)

(assert (=> b!1032850 (= lt!356380 (matchRSpec!663 r!15766 s!10566))))

(assert (=> b!1032850 (= lt!356380 (matchR!1400 r!15766 s!10566))))

(declare-fun lt!356372 () Unit!15403)

(declare-fun mainMatchTheorem!663 (Regex!2864 List!10094) Unit!15403)

(assert (=> b!1032850 (= lt!356372 (mainMatchTheorem!663 r!15766 s!10566))))

(declare-fun b!1032851 () Bool)

(assert (=> b!1032851 (= e!658174 e!658171)))

(declare-fun res!464011 () Bool)

(assert (=> b!1032851 (=> res!464011 e!658171)))

(declare-fun lt!356379 () Bool)

(assert (=> b!1032851 (= res!464011 lt!356379)))

(declare-fun lt!356377 () Bool)

(assert (=> b!1032851 (= lt!356377 lt!356379)))

(declare-fun lt!356378 () Regex!2864)

(assert (=> b!1032851 (= lt!356379 (matchR!1400 lt!356378 s!10566))))

(assert (=> b!1032851 (= lt!356377 (matchR!1400 (regOne!6240 r!15766) s!10566))))

(assert (=> b!1032851 (= lt!356378 (removeUselessConcat!421 (regOne!6240 r!15766)))))

(declare-fun lt!356375 () Unit!15403)

(declare-fun lemmaRemoveUselessConcatSound!259 (Regex!2864 List!10094) Unit!15403)

(assert (=> b!1032851 (= lt!356375 (lemmaRemoveUselessConcatSound!259 (regOne!6240 r!15766) s!10566))))

(declare-fun res!464008 () Bool)

(assert (=> start!89908 (=> (not res!464008) (not e!658172))))

(declare-fun validRegex!1333 (Regex!2864) Bool)

(assert (=> start!89908 (= res!464008 (validRegex!1333 r!15766))))

(assert (=> start!89908 e!658172))

(assert (=> start!89908 e!658173))

(assert (=> start!89908 e!658175))

(declare-fun b!1032852 () Bool)

(declare-fun res!464009 () Bool)

(assert (=> b!1032852 (=> res!464009 e!658174)))

(declare-fun isEmpty!6466 (Option!2393) Bool)

(assert (=> b!1032852 (= res!464009 (not (isEmpty!6466 lt!356376)))))

(declare-fun b!1032853 () Bool)

(assert (=> b!1032853 (= e!658173 tp_is_empty!5371)))

(declare-fun b!1032854 () Bool)

(declare-fun tp!312734 () Bool)

(declare-fun tp!312735 () Bool)

(assert (=> b!1032854 (= e!658173 (and tp!312734 tp!312735))))

(declare-fun b!1032855 () Bool)

(declare-fun tp!312738 () Bool)

(declare-fun tp!312737 () Bool)

(assert (=> b!1032855 (= e!658173 (and tp!312738 tp!312737))))

(assert (= (and start!89908 res!464008) b!1032850))

(assert (= (and b!1032850 (not res!464007)) b!1032848))

(assert (= (and b!1032848 (not res!464010)) b!1032852))

(assert (= (and b!1032852 (not res!464009)) b!1032851))

(assert (= (and b!1032851 (not res!464011)) b!1032846))

(assert (= (and start!89908 (is-ElementMatch!2864 r!15766)) b!1032853))

(assert (= (and start!89908 (is-Concat!4697 r!15766)) b!1032854))

(assert (= (and start!89908 (is-Star!2864 r!15766)) b!1032847))

(assert (= (and start!89908 (is-Union!2864 r!15766)) b!1032855))

(assert (= (and start!89908 (is-Cons!10078 s!10566)) b!1032849))

(declare-fun m!1205633 () Bool)

(assert (=> b!1032846 m!1205633))

(assert (=> b!1032846 m!1205633))

(declare-fun m!1205635 () Bool)

(assert (=> b!1032846 m!1205635))

(declare-fun m!1205637 () Bool)

(assert (=> b!1032848 m!1205637))

(declare-fun m!1205639 () Bool)

(assert (=> b!1032848 m!1205639))

(declare-fun m!1205641 () Bool)

(assert (=> b!1032848 m!1205641))

(declare-fun m!1205643 () Bool)

(assert (=> b!1032848 m!1205643))

(assert (=> b!1032848 m!1205643))

(declare-fun m!1205645 () Bool)

(assert (=> b!1032848 m!1205645))

(declare-fun m!1205647 () Bool)

(assert (=> b!1032848 m!1205647))

(declare-fun m!1205649 () Bool)

(assert (=> b!1032848 m!1205649))

(declare-fun m!1205651 () Bool)

(assert (=> start!89908 m!1205651))

(declare-fun m!1205653 () Bool)

(assert (=> b!1032850 m!1205653))

(declare-fun m!1205655 () Bool)

(assert (=> b!1032850 m!1205655))

(declare-fun m!1205657 () Bool)

(assert (=> b!1032850 m!1205657))

(declare-fun m!1205659 () Bool)

(assert (=> b!1032851 m!1205659))

(declare-fun m!1205661 () Bool)

(assert (=> b!1032851 m!1205661))

(declare-fun m!1205663 () Bool)

(assert (=> b!1032851 m!1205663))

(declare-fun m!1205665 () Bool)

(assert (=> b!1032851 m!1205665))

(declare-fun m!1205667 () Bool)

(assert (=> b!1032852 m!1205667))

(push 1)

(assert (not b!1032852))

(assert (not b!1032848))

(assert (not b!1032850))

(assert (not b!1032855))

(assert (not b!1032847))

(assert (not b!1032851))

(assert (not b!1032854))

(assert tp_is_empty!5371)

(assert (not start!89908))

(assert (not b!1032849))

(assert (not b!1032846))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!295996 () Bool)

(assert (=> d!295996 (= (isEmpty!6466 lt!356376) (not (is-Some!2392 lt!356376)))))

(assert (=> b!1032852 d!295996))

(declare-fun b!1032934 () Bool)

(declare-fun res!464058 () Bool)

(declare-fun e!658215 () Bool)

(assert (=> b!1032934 (=> res!464058 e!658215)))

(assert (=> b!1032934 (= res!464058 (not (is-ElementMatch!2864 (removeUselessConcat!421 r!15766))))))

(declare-fun e!658219 () Bool)

(assert (=> b!1032934 (= e!658219 e!658215)))

(declare-fun b!1032935 () Bool)

(declare-fun res!464056 () Bool)

(declare-fun e!658218 () Bool)

(assert (=> b!1032935 (=> res!464056 e!658218)))

(declare-fun tail!1474 (List!10094) List!10094)

(assert (=> b!1032935 (= res!464056 (not (isEmpty!6465 (tail!1474 s!10566))))))

(declare-fun b!1032936 () Bool)

(declare-fun e!658214 () Bool)

(assert (=> b!1032936 (= e!658215 e!658214)))

(declare-fun res!464055 () Bool)

(assert (=> b!1032936 (=> (not res!464055) (not e!658214))))

(declare-fun lt!356410 () Bool)

(assert (=> b!1032936 (= res!464055 (not lt!356410))))

(declare-fun bm!71277 () Bool)

(declare-fun call!71282 () Bool)

(assert (=> bm!71277 (= call!71282 (isEmpty!6465 s!10566))))

(declare-fun b!1032937 () Bool)

(assert (=> b!1032937 (= e!658219 (not lt!356410))))

(declare-fun b!1032938 () Bool)

(declare-fun head!1912 (List!10094) C!6298)

(assert (=> b!1032938 (= e!658218 (not (= (head!1912 s!10566) (c!171379 (removeUselessConcat!421 r!15766)))))))

(declare-fun b!1032939 () Bool)

(declare-fun res!464062 () Bool)

(assert (=> b!1032939 (=> res!464062 e!658215)))

(declare-fun e!658217 () Bool)

(assert (=> b!1032939 (= res!464062 e!658217)))

(declare-fun res!464060 () Bool)

(assert (=> b!1032939 (=> (not res!464060) (not e!658217))))

(assert (=> b!1032939 (= res!464060 lt!356410)))

(declare-fun b!1032940 () Bool)

(declare-fun e!658220 () Bool)

(assert (=> b!1032940 (= e!658220 e!658219)))

(declare-fun c!171388 () Bool)

(assert (=> b!1032940 (= c!171388 (is-EmptyLang!2864 (removeUselessConcat!421 r!15766)))))

(declare-fun b!1032941 () Bool)

(assert (=> b!1032941 (= e!658220 (= lt!356410 call!71282))))

(declare-fun b!1032942 () Bool)

(declare-fun e!658216 () Bool)

(declare-fun derivativeStep!757 (Regex!2864 C!6298) Regex!2864)

(assert (=> b!1032942 (= e!658216 (matchR!1400 (derivativeStep!757 (removeUselessConcat!421 r!15766) (head!1912 s!10566)) (tail!1474 s!10566)))))

(declare-fun b!1032943 () Bool)

(assert (=> b!1032943 (= e!658214 e!658218)))

(declare-fun res!464057 () Bool)

(assert (=> b!1032943 (=> res!464057 e!658218)))

(assert (=> b!1032943 (= res!464057 call!71282)))

(declare-fun b!1032944 () Bool)

(declare-fun res!464059 () Bool)

(assert (=> b!1032944 (=> (not res!464059) (not e!658217))))

(assert (=> b!1032944 (= res!464059 (isEmpty!6465 (tail!1474 s!10566)))))

(declare-fun b!1032945 () Bool)

(declare-fun nullable!957 (Regex!2864) Bool)

(assert (=> b!1032945 (= e!658216 (nullable!957 (removeUselessConcat!421 r!15766)))))

(declare-fun b!1032946 () Bool)

(assert (=> b!1032946 (= e!658217 (= (head!1912 s!10566) (c!171379 (removeUselessConcat!421 r!15766))))))

(declare-fun b!1032947 () Bool)

(declare-fun res!464061 () Bool)

(assert (=> b!1032947 (=> (not res!464061) (not e!658217))))

(assert (=> b!1032947 (= res!464061 (not call!71282))))

(declare-fun d!295998 () Bool)

(assert (=> d!295998 e!658220))

(declare-fun c!171389 () Bool)

(assert (=> d!295998 (= c!171389 (is-EmptyExpr!2864 (removeUselessConcat!421 r!15766)))))

(assert (=> d!295998 (= lt!356410 e!658216)))

(declare-fun c!171387 () Bool)

(assert (=> d!295998 (= c!171387 (isEmpty!6465 s!10566))))

(assert (=> d!295998 (validRegex!1333 (removeUselessConcat!421 r!15766))))

(assert (=> d!295998 (= (matchR!1400 (removeUselessConcat!421 r!15766) s!10566) lt!356410)))

(assert (= (and d!295998 c!171387) b!1032945))

(assert (= (and d!295998 (not c!171387)) b!1032942))

(assert (= (and d!295998 c!171389) b!1032941))

(assert (= (and d!295998 (not c!171389)) b!1032940))

(assert (= (and b!1032940 c!171388) b!1032937))

(assert (= (and b!1032940 (not c!171388)) b!1032934))

(assert (= (and b!1032934 (not res!464058)) b!1032939))

(assert (= (and b!1032939 res!464060) b!1032947))

(assert (= (and b!1032947 res!464061) b!1032944))

(assert (= (and b!1032944 res!464059) b!1032946))

(assert (= (and b!1032939 (not res!464062)) b!1032936))

(assert (= (and b!1032936 res!464055) b!1032943))

(assert (= (and b!1032943 (not res!464057)) b!1032935))

(assert (= (and b!1032935 (not res!464056)) b!1032938))

(assert (= (or b!1032941 b!1032943 b!1032947) bm!71277))

(assert (=> d!295998 m!1205647))

(assert (=> d!295998 m!1205633))

(declare-fun m!1205705 () Bool)

(assert (=> d!295998 m!1205705))

(declare-fun m!1205707 () Bool)

(assert (=> b!1032942 m!1205707))

(assert (=> b!1032942 m!1205633))

(assert (=> b!1032942 m!1205707))

(declare-fun m!1205709 () Bool)

(assert (=> b!1032942 m!1205709))

(declare-fun m!1205711 () Bool)

(assert (=> b!1032942 m!1205711))

(assert (=> b!1032942 m!1205709))

(assert (=> b!1032942 m!1205711))

(declare-fun m!1205713 () Bool)

(assert (=> b!1032942 m!1205713))

(assert (=> b!1032944 m!1205711))

(assert (=> b!1032944 m!1205711))

(declare-fun m!1205715 () Bool)

(assert (=> b!1032944 m!1205715))

(assert (=> b!1032938 m!1205707))

(assert (=> bm!71277 m!1205647))

(assert (=> b!1032945 m!1205633))

(declare-fun m!1205717 () Bool)

(assert (=> b!1032945 m!1205717))

(assert (=> b!1032935 m!1205711))

(assert (=> b!1032935 m!1205711))

(assert (=> b!1032935 m!1205715))

(assert (=> b!1032946 m!1205707))

(assert (=> b!1032846 d!295998))

(declare-fun b!1032992 () Bool)

(declare-fun e!658247 () Regex!2864)

(assert (=> b!1032992 (= e!658247 r!15766)))

(declare-fun bm!71288 () Bool)

(declare-fun call!71294 () Regex!2864)

(declare-fun call!71295 () Regex!2864)

(assert (=> bm!71288 (= call!71294 call!71295)))

(declare-fun d!296002 () Bool)

(declare-fun e!658252 () Bool)

(assert (=> d!296002 e!658252))

(declare-fun res!464071 () Bool)

(assert (=> d!296002 (=> (not res!464071) (not e!658252))))

(declare-fun lt!356413 () Regex!2864)

(assert (=> d!296002 (= res!464071 (validRegex!1333 lt!356413))))

(declare-fun e!658248 () Regex!2864)

(assert (=> d!296002 (= lt!356413 e!658248)))

(declare-fun c!171411 () Bool)

(assert (=> d!296002 (= c!171411 (and (is-Concat!4697 r!15766) (is-EmptyExpr!2864 (regOne!6240 r!15766))))))

(assert (=> d!296002 (validRegex!1333 r!15766)))

(assert (=> d!296002 (= (removeUselessConcat!421 r!15766) lt!356413)))

(declare-fun b!1032993 () Bool)

(declare-fun e!658250 () Regex!2864)

(declare-fun call!71293 () Regex!2864)

(assert (=> b!1032993 (= e!658250 (Union!2864 call!71293 call!71294))))

(declare-fun b!1032994 () Bool)

(assert (=> b!1032994 (= e!658252 (= (nullable!957 lt!356413) (nullable!957 r!15766)))))

(declare-fun b!1032995 () Bool)

(declare-fun call!71296 () Regex!2864)

(assert (=> b!1032995 (= e!658248 call!71296)))

(declare-fun b!1032996 () Bool)

(declare-fun c!171412 () Bool)

(assert (=> b!1032996 (= c!171412 (is-Star!2864 r!15766))))

(assert (=> b!1032996 (= e!658250 e!658247)))

(declare-fun c!171409 () Bool)

(declare-fun bm!71289 () Bool)

(declare-fun call!71297 () Regex!2864)

(declare-fun c!171408 () Bool)

(assert (=> bm!71289 (= call!71297 (removeUselessConcat!421 (ite (or c!171409 c!171408) (regOne!6240 r!15766) (regOne!6241 r!15766))))))

(declare-fun b!1032997 () Bool)

(declare-fun e!658251 () Regex!2864)

(assert (=> b!1032997 (= e!658251 call!71297)))

(declare-fun bm!71290 () Bool)

(assert (=> bm!71290 (= call!71295 call!71296)))

(declare-fun b!1032998 () Bool)

(assert (=> b!1032998 (= e!658248 e!658251)))

(assert (=> b!1032998 (= c!171409 (and (is-Concat!4697 r!15766) (is-EmptyExpr!2864 (regTwo!6240 r!15766))))))

(declare-fun b!1032999 () Bool)

(assert (=> b!1032999 (= e!658247 (Star!2864 call!71294))))

(declare-fun bm!71291 () Bool)

(declare-fun c!171410 () Bool)

(assert (=> bm!71291 (= call!71296 (removeUselessConcat!421 (ite (or c!171411 c!171408) (regTwo!6240 r!15766) (ite c!171410 (regTwo!6241 r!15766) (reg!3193 r!15766)))))))

(declare-fun bm!71292 () Bool)

(assert (=> bm!71292 (= call!71293 call!71297)))

(declare-fun b!1033000 () Bool)

(declare-fun e!658249 () Regex!2864)

(assert (=> b!1033000 (= e!658249 (Concat!4697 call!71293 call!71295))))

(declare-fun b!1033001 () Bool)

(assert (=> b!1033001 (= e!658249 e!658250)))

(assert (=> b!1033001 (= c!171410 (is-Union!2864 r!15766))))

(declare-fun b!1033002 () Bool)

(assert (=> b!1033002 (= c!171408 (is-Concat!4697 r!15766))))

(assert (=> b!1033002 (= e!658251 e!658249)))

(assert (= (and d!296002 c!171411) b!1032995))

(assert (= (and d!296002 (not c!171411)) b!1032998))

(assert (= (and b!1032998 c!171409) b!1032997))

(assert (= (and b!1032998 (not c!171409)) b!1033002))

(assert (= (and b!1033002 c!171408) b!1033000))

(assert (= (and b!1033002 (not c!171408)) b!1033001))

(assert (= (and b!1033001 c!171410) b!1032993))

(assert (= (and b!1033001 (not c!171410)) b!1032996))

(assert (= (and b!1032996 c!171412) b!1032999))

(assert (= (and b!1032996 (not c!171412)) b!1032992))

(assert (= (or b!1032993 b!1032999) bm!71288))

(assert (= (or b!1033000 bm!71288) bm!71290))

(assert (= (or b!1033000 b!1032993) bm!71292))

(assert (= (or b!1032997 bm!71292) bm!71289))

(assert (= (or b!1032995 bm!71290) bm!71291))

(assert (= (and d!296002 res!464071) b!1032994))

(declare-fun m!1205719 () Bool)

(assert (=> d!296002 m!1205719))

(assert (=> d!296002 m!1205651))

(declare-fun m!1205721 () Bool)

(assert (=> b!1032994 m!1205721))

(declare-fun m!1205723 () Bool)

(assert (=> b!1032994 m!1205723))

(declare-fun m!1205725 () Bool)

(assert (=> bm!71289 m!1205725))

(declare-fun m!1205727 () Bool)

(assert (=> bm!71291 m!1205727))

(assert (=> b!1032846 d!296002))

(declare-fun b!1033003 () Bool)

(declare-fun res!464075 () Bool)

(declare-fun e!658254 () Bool)

(assert (=> b!1033003 (=> res!464075 e!658254)))

(assert (=> b!1033003 (= res!464075 (not (is-ElementMatch!2864 lt!356378)))))

(declare-fun e!658258 () Bool)

(assert (=> b!1033003 (= e!658258 e!658254)))

(declare-fun b!1033004 () Bool)

(declare-fun res!464073 () Bool)

(declare-fun e!658257 () Bool)

(assert (=> b!1033004 (=> res!464073 e!658257)))

(assert (=> b!1033004 (= res!464073 (not (isEmpty!6465 (tail!1474 s!10566))))))

(declare-fun b!1033005 () Bool)

(declare-fun e!658253 () Bool)

(assert (=> b!1033005 (= e!658254 e!658253)))

(declare-fun res!464072 () Bool)

(assert (=> b!1033005 (=> (not res!464072) (not e!658253))))

(declare-fun lt!356414 () Bool)

(assert (=> b!1033005 (= res!464072 (not lt!356414))))

(declare-fun bm!71293 () Bool)

(declare-fun call!71298 () Bool)

(assert (=> bm!71293 (= call!71298 (isEmpty!6465 s!10566))))

(declare-fun b!1033006 () Bool)

(assert (=> b!1033006 (= e!658258 (not lt!356414))))

(declare-fun b!1033007 () Bool)

(assert (=> b!1033007 (= e!658257 (not (= (head!1912 s!10566) (c!171379 lt!356378))))))

(declare-fun b!1033008 () Bool)

(declare-fun res!464079 () Bool)

(assert (=> b!1033008 (=> res!464079 e!658254)))

(declare-fun e!658256 () Bool)

(assert (=> b!1033008 (= res!464079 e!658256)))

(declare-fun res!464077 () Bool)

(assert (=> b!1033008 (=> (not res!464077) (not e!658256))))

(assert (=> b!1033008 (= res!464077 lt!356414)))

(declare-fun b!1033009 () Bool)

(declare-fun e!658259 () Bool)

(assert (=> b!1033009 (= e!658259 e!658258)))

(declare-fun c!171414 () Bool)

(assert (=> b!1033009 (= c!171414 (is-EmptyLang!2864 lt!356378))))

(declare-fun b!1033010 () Bool)

(assert (=> b!1033010 (= e!658259 (= lt!356414 call!71298))))

(declare-fun b!1033011 () Bool)

(declare-fun e!658255 () Bool)

(assert (=> b!1033011 (= e!658255 (matchR!1400 (derivativeStep!757 lt!356378 (head!1912 s!10566)) (tail!1474 s!10566)))))

(declare-fun b!1033012 () Bool)

(assert (=> b!1033012 (= e!658253 e!658257)))

(declare-fun res!464074 () Bool)

(assert (=> b!1033012 (=> res!464074 e!658257)))

(assert (=> b!1033012 (= res!464074 call!71298)))

(declare-fun b!1033013 () Bool)

(declare-fun res!464076 () Bool)

(assert (=> b!1033013 (=> (not res!464076) (not e!658256))))

(assert (=> b!1033013 (= res!464076 (isEmpty!6465 (tail!1474 s!10566)))))

(declare-fun b!1033014 () Bool)

(assert (=> b!1033014 (= e!658255 (nullable!957 lt!356378))))

(declare-fun b!1033015 () Bool)

(assert (=> b!1033015 (= e!658256 (= (head!1912 s!10566) (c!171379 lt!356378)))))

(declare-fun b!1033016 () Bool)

(declare-fun res!464078 () Bool)

(assert (=> b!1033016 (=> (not res!464078) (not e!658256))))

(assert (=> b!1033016 (= res!464078 (not call!71298))))

(declare-fun d!296004 () Bool)

(assert (=> d!296004 e!658259))

(declare-fun c!171415 () Bool)

(assert (=> d!296004 (= c!171415 (is-EmptyExpr!2864 lt!356378))))

(assert (=> d!296004 (= lt!356414 e!658255)))

(declare-fun c!171413 () Bool)

(assert (=> d!296004 (= c!171413 (isEmpty!6465 s!10566))))

(assert (=> d!296004 (validRegex!1333 lt!356378)))

(assert (=> d!296004 (= (matchR!1400 lt!356378 s!10566) lt!356414)))

(assert (= (and d!296004 c!171413) b!1033014))

(assert (= (and d!296004 (not c!171413)) b!1033011))

(assert (= (and d!296004 c!171415) b!1033010))

(assert (= (and d!296004 (not c!171415)) b!1033009))

(assert (= (and b!1033009 c!171414) b!1033006))

(assert (= (and b!1033009 (not c!171414)) b!1033003))

(assert (= (and b!1033003 (not res!464075)) b!1033008))

(assert (= (and b!1033008 res!464077) b!1033016))

(assert (= (and b!1033016 res!464078) b!1033013))

(assert (= (and b!1033013 res!464076) b!1033015))

(assert (= (and b!1033008 (not res!464079)) b!1033005))

(assert (= (and b!1033005 res!464072) b!1033012))

(assert (= (and b!1033012 (not res!464074)) b!1033004))

(assert (= (and b!1033004 (not res!464073)) b!1033007))

(assert (= (or b!1033010 b!1033012 b!1033016) bm!71293))

(assert (=> d!296004 m!1205647))

(declare-fun m!1205729 () Bool)

(assert (=> d!296004 m!1205729))

(assert (=> b!1033011 m!1205707))

(assert (=> b!1033011 m!1205707))

(declare-fun m!1205731 () Bool)

(assert (=> b!1033011 m!1205731))

(assert (=> b!1033011 m!1205711))

(assert (=> b!1033011 m!1205731))

(assert (=> b!1033011 m!1205711))

(declare-fun m!1205733 () Bool)

(assert (=> b!1033011 m!1205733))

(assert (=> b!1033013 m!1205711))

(assert (=> b!1033013 m!1205711))

(assert (=> b!1033013 m!1205715))

(assert (=> b!1033007 m!1205707))

(assert (=> bm!71293 m!1205647))

(declare-fun m!1205735 () Bool)

(assert (=> b!1033014 m!1205735))

(assert (=> b!1033004 m!1205711))

(assert (=> b!1033004 m!1205711))

(assert (=> b!1033004 m!1205715))

(assert (=> b!1033015 m!1205707))

(assert (=> b!1032851 d!296004))

(declare-fun b!1033019 () Bool)

(declare-fun res!464085 () Bool)

(declare-fun e!658263 () Bool)

(assert (=> b!1033019 (=> res!464085 e!658263)))

(assert (=> b!1033019 (= res!464085 (not (is-ElementMatch!2864 (regOne!6240 r!15766))))))

(declare-fun e!658267 () Bool)

(assert (=> b!1033019 (= e!658267 e!658263)))

(declare-fun b!1033020 () Bool)

(declare-fun res!464083 () Bool)

(declare-fun e!658266 () Bool)

(assert (=> b!1033020 (=> res!464083 e!658266)))

(assert (=> b!1033020 (= res!464083 (not (isEmpty!6465 (tail!1474 s!10566))))))

(declare-fun b!1033021 () Bool)

(declare-fun e!658262 () Bool)

(assert (=> b!1033021 (= e!658263 e!658262)))

(declare-fun res!464082 () Bool)

(assert (=> b!1033021 (=> (not res!464082) (not e!658262))))

(declare-fun lt!356415 () Bool)

(assert (=> b!1033021 (= res!464082 (not lt!356415))))

(declare-fun bm!71294 () Bool)

(declare-fun call!71299 () Bool)

(assert (=> bm!71294 (= call!71299 (isEmpty!6465 s!10566))))

(declare-fun b!1033022 () Bool)

(assert (=> b!1033022 (= e!658267 (not lt!356415))))

(declare-fun b!1033023 () Bool)

(assert (=> b!1033023 (= e!658266 (not (= (head!1912 s!10566) (c!171379 (regOne!6240 r!15766)))))))

(declare-fun b!1033024 () Bool)

(declare-fun res!464089 () Bool)

(assert (=> b!1033024 (=> res!464089 e!658263)))

(declare-fun e!658265 () Bool)

(assert (=> b!1033024 (= res!464089 e!658265)))

(declare-fun res!464087 () Bool)

(assert (=> b!1033024 (=> (not res!464087) (not e!658265))))

(assert (=> b!1033024 (= res!464087 lt!356415)))

(declare-fun b!1033025 () Bool)

(declare-fun e!658268 () Bool)

(assert (=> b!1033025 (= e!658268 e!658267)))

(declare-fun c!171417 () Bool)

(assert (=> b!1033025 (= c!171417 (is-EmptyLang!2864 (regOne!6240 r!15766)))))

(declare-fun b!1033026 () Bool)

(assert (=> b!1033026 (= e!658268 (= lt!356415 call!71299))))

(declare-fun b!1033027 () Bool)

(declare-fun e!658264 () Bool)

(assert (=> b!1033027 (= e!658264 (matchR!1400 (derivativeStep!757 (regOne!6240 r!15766) (head!1912 s!10566)) (tail!1474 s!10566)))))

(declare-fun b!1033028 () Bool)

(assert (=> b!1033028 (= e!658262 e!658266)))

(declare-fun res!464084 () Bool)

(assert (=> b!1033028 (=> res!464084 e!658266)))

(assert (=> b!1033028 (= res!464084 call!71299)))

(declare-fun b!1033029 () Bool)

(declare-fun res!464086 () Bool)

(assert (=> b!1033029 (=> (not res!464086) (not e!658265))))

(assert (=> b!1033029 (= res!464086 (isEmpty!6465 (tail!1474 s!10566)))))

(declare-fun b!1033030 () Bool)

(assert (=> b!1033030 (= e!658264 (nullable!957 (regOne!6240 r!15766)))))

(declare-fun b!1033031 () Bool)

(assert (=> b!1033031 (= e!658265 (= (head!1912 s!10566) (c!171379 (regOne!6240 r!15766))))))

(declare-fun b!1033032 () Bool)

(declare-fun res!464088 () Bool)

(assert (=> b!1033032 (=> (not res!464088) (not e!658265))))

(assert (=> b!1033032 (= res!464088 (not call!71299))))

(declare-fun d!296006 () Bool)

(assert (=> d!296006 e!658268))

(declare-fun c!171418 () Bool)

(assert (=> d!296006 (= c!171418 (is-EmptyExpr!2864 (regOne!6240 r!15766)))))

(assert (=> d!296006 (= lt!356415 e!658264)))

(declare-fun c!171416 () Bool)

(assert (=> d!296006 (= c!171416 (isEmpty!6465 s!10566))))

(assert (=> d!296006 (validRegex!1333 (regOne!6240 r!15766))))

(assert (=> d!296006 (= (matchR!1400 (regOne!6240 r!15766) s!10566) lt!356415)))

(assert (= (and d!296006 c!171416) b!1033030))

(assert (= (and d!296006 (not c!171416)) b!1033027))

(assert (= (and d!296006 c!171418) b!1033026))

(assert (= (and d!296006 (not c!171418)) b!1033025))

(assert (= (and b!1033025 c!171417) b!1033022))

(assert (= (and b!1033025 (not c!171417)) b!1033019))

(assert (= (and b!1033019 (not res!464085)) b!1033024))

(assert (= (and b!1033024 res!464087) b!1033032))

(assert (= (and b!1033032 res!464088) b!1033029))

(assert (= (and b!1033029 res!464086) b!1033031))

(assert (= (and b!1033024 (not res!464089)) b!1033021))

(assert (= (and b!1033021 res!464082) b!1033028))

(assert (= (and b!1033028 (not res!464084)) b!1033020))

(assert (= (and b!1033020 (not res!464083)) b!1033023))

(assert (= (or b!1033026 b!1033028 b!1033032) bm!71294))

(assert (=> d!296006 m!1205647))

(declare-fun m!1205737 () Bool)

(assert (=> d!296006 m!1205737))

(assert (=> b!1033027 m!1205707))

(assert (=> b!1033027 m!1205707))

(declare-fun m!1205739 () Bool)

(assert (=> b!1033027 m!1205739))

(assert (=> b!1033027 m!1205711))

(assert (=> b!1033027 m!1205739))

(assert (=> b!1033027 m!1205711))

(declare-fun m!1205741 () Bool)

(assert (=> b!1033027 m!1205741))

(assert (=> b!1033029 m!1205711))

(assert (=> b!1033029 m!1205711))

(assert (=> b!1033029 m!1205715))

(assert (=> b!1033023 m!1205707))

(assert (=> bm!71294 m!1205647))

(declare-fun m!1205743 () Bool)

(assert (=> b!1033030 m!1205743))

(assert (=> b!1033020 m!1205711))

(assert (=> b!1033020 m!1205711))

(assert (=> b!1033020 m!1205715))

(assert (=> b!1033031 m!1205707))

(assert (=> b!1032851 d!296006))

(declare-fun b!1033037 () Bool)

(declare-fun e!658269 () Regex!2864)

(assert (=> b!1033037 (= e!658269 (regOne!6240 r!15766))))

(declare-fun bm!71295 () Bool)

(declare-fun call!71301 () Regex!2864)

(declare-fun call!71302 () Regex!2864)

(assert (=> bm!71295 (= call!71301 call!71302)))

(declare-fun d!296008 () Bool)

(declare-fun e!658274 () Bool)

(assert (=> d!296008 e!658274))

(declare-fun res!464094 () Bool)

(assert (=> d!296008 (=> (not res!464094) (not e!658274))))

(declare-fun lt!356416 () Regex!2864)

(assert (=> d!296008 (= res!464094 (validRegex!1333 lt!356416))))

(declare-fun e!658270 () Regex!2864)

(assert (=> d!296008 (= lt!356416 e!658270)))

(declare-fun c!171422 () Bool)

(assert (=> d!296008 (= c!171422 (and (is-Concat!4697 (regOne!6240 r!15766)) (is-EmptyExpr!2864 (regOne!6240 (regOne!6240 r!15766)))))))

(assert (=> d!296008 (validRegex!1333 (regOne!6240 r!15766))))

(assert (=> d!296008 (= (removeUselessConcat!421 (regOne!6240 r!15766)) lt!356416)))

(declare-fun b!1033038 () Bool)

(declare-fun e!658272 () Regex!2864)

(declare-fun call!71300 () Regex!2864)

(assert (=> b!1033038 (= e!658272 (Union!2864 call!71300 call!71301))))

(declare-fun b!1033039 () Bool)

(assert (=> b!1033039 (= e!658274 (= (nullable!957 lt!356416) (nullable!957 (regOne!6240 r!15766))))))

(declare-fun b!1033040 () Bool)

(declare-fun call!71303 () Regex!2864)

(assert (=> b!1033040 (= e!658270 call!71303)))

(declare-fun b!1033041 () Bool)

(declare-fun c!171423 () Bool)

(assert (=> b!1033041 (= c!171423 (is-Star!2864 (regOne!6240 r!15766)))))

(assert (=> b!1033041 (= e!658272 e!658269)))

(declare-fun c!171419 () Bool)

(declare-fun c!171420 () Bool)

(declare-fun bm!71296 () Bool)

(declare-fun call!71304 () Regex!2864)

(assert (=> bm!71296 (= call!71304 (removeUselessConcat!421 (ite (or c!171420 c!171419) (regOne!6240 (regOne!6240 r!15766)) (regOne!6241 (regOne!6240 r!15766)))))))

(declare-fun b!1033042 () Bool)

(declare-fun e!658273 () Regex!2864)

(assert (=> b!1033042 (= e!658273 call!71304)))

(declare-fun bm!71297 () Bool)

(assert (=> bm!71297 (= call!71302 call!71303)))

(declare-fun b!1033043 () Bool)

(assert (=> b!1033043 (= e!658270 e!658273)))

(assert (=> b!1033043 (= c!171420 (and (is-Concat!4697 (regOne!6240 r!15766)) (is-EmptyExpr!2864 (regTwo!6240 (regOne!6240 r!15766)))))))

(declare-fun b!1033044 () Bool)

(assert (=> b!1033044 (= e!658269 (Star!2864 call!71301))))

(declare-fun c!171421 () Bool)

(declare-fun bm!71298 () Bool)

(assert (=> bm!71298 (= call!71303 (removeUselessConcat!421 (ite (or c!171422 c!171419) (regTwo!6240 (regOne!6240 r!15766)) (ite c!171421 (regTwo!6241 (regOne!6240 r!15766)) (reg!3193 (regOne!6240 r!15766))))))))

(declare-fun bm!71299 () Bool)

(assert (=> bm!71299 (= call!71300 call!71304)))

(declare-fun b!1033045 () Bool)

(declare-fun e!658271 () Regex!2864)

(assert (=> b!1033045 (= e!658271 (Concat!4697 call!71300 call!71302))))

(declare-fun b!1033046 () Bool)

(assert (=> b!1033046 (= e!658271 e!658272)))

(assert (=> b!1033046 (= c!171421 (is-Union!2864 (regOne!6240 r!15766)))))

(declare-fun b!1033047 () Bool)

(assert (=> b!1033047 (= c!171419 (is-Concat!4697 (regOne!6240 r!15766)))))

(assert (=> b!1033047 (= e!658273 e!658271)))

(assert (= (and d!296008 c!171422) b!1033040))

(assert (= (and d!296008 (not c!171422)) b!1033043))

(assert (= (and b!1033043 c!171420) b!1033042))

(assert (= (and b!1033043 (not c!171420)) b!1033047))

(assert (= (and b!1033047 c!171419) b!1033045))

(assert (= (and b!1033047 (not c!171419)) b!1033046))

(assert (= (and b!1033046 c!171421) b!1033038))

(assert (= (and b!1033046 (not c!171421)) b!1033041))

(assert (= (and b!1033041 c!171423) b!1033044))

(assert (= (and b!1033041 (not c!171423)) b!1033037))

(assert (= (or b!1033038 b!1033044) bm!71295))

(assert (= (or b!1033045 bm!71295) bm!71297))

(assert (= (or b!1033045 b!1033038) bm!71299))

(assert (= (or b!1033042 bm!71299) bm!71296))

(assert (= (or b!1033040 bm!71297) bm!71298))

(assert (= (and d!296008 res!464094) b!1033039))

(declare-fun m!1205745 () Bool)

(assert (=> d!296008 m!1205745))

(assert (=> d!296008 m!1205737))

(declare-fun m!1205747 () Bool)

(assert (=> b!1033039 m!1205747))

(assert (=> b!1033039 m!1205743))

(declare-fun m!1205749 () Bool)

(assert (=> bm!71296 m!1205749))

(declare-fun m!1205751 () Bool)

(assert (=> bm!71298 m!1205751))

(assert (=> b!1032851 d!296008))

(declare-fun d!296010 () Bool)

(assert (=> d!296010 (= (matchR!1400 (regOne!6240 r!15766) s!10566) (matchR!1400 (removeUselessConcat!421 (regOne!6240 r!15766)) s!10566))))

(declare-fun lt!356419 () Unit!15403)

(declare-fun choose!6582 (Regex!2864 List!10094) Unit!15403)

(assert (=> d!296010 (= lt!356419 (choose!6582 (regOne!6240 r!15766) s!10566))))

(assert (=> d!296010 (validRegex!1333 (regOne!6240 r!15766))))

(assert (=> d!296010 (= (lemmaRemoveUselessConcatSound!259 (regOne!6240 r!15766) s!10566) lt!356419)))

(declare-fun bs!247480 () Bool)

(assert (= bs!247480 d!296010))

(declare-fun m!1205753 () Bool)

(assert (=> bs!247480 m!1205753))

(assert (=> bs!247480 m!1205663))

(declare-fun m!1205755 () Bool)

(assert (=> bs!247480 m!1205755))

(assert (=> bs!247480 m!1205737))

(assert (=> bs!247480 m!1205661))

(assert (=> bs!247480 m!1205663))

(assert (=> b!1032851 d!296010))

(declare-fun bm!71308 () Bool)

(declare-fun call!71313 () Bool)

(declare-fun call!71314 () Bool)

(assert (=> bm!71308 (= call!71313 call!71314)))

(declare-fun b!1033070 () Bool)

(declare-fun e!658291 () Bool)

(declare-fun e!658296 () Bool)

(assert (=> b!1033070 (= e!658291 e!658296)))

(declare-fun c!171428 () Bool)

(assert (=> b!1033070 (= c!171428 (is-Star!2864 r!15766))))

(declare-fun b!1033071 () Bool)

(declare-fun e!658292 () Bool)

(assert (=> b!1033071 (= e!658292 call!71314)))

(declare-fun b!1033072 () Bool)

(declare-fun e!658294 () Bool)

(assert (=> b!1033072 (= e!658296 e!658294)))

(declare-fun c!171429 () Bool)

(assert (=> b!1033072 (= c!171429 (is-Union!2864 r!15766))))

(declare-fun b!1033073 () Bool)

(declare-fun e!658295 () Bool)

(declare-fun e!658297 () Bool)

(assert (=> b!1033073 (= e!658295 e!658297)))

(declare-fun res!464110 () Bool)

(assert (=> b!1033073 (=> (not res!464110) (not e!658297))))

(assert (=> b!1033073 (= res!464110 call!71313)))

(declare-fun b!1033074 () Bool)

(declare-fun res!464111 () Bool)

(assert (=> b!1033074 (=> res!464111 e!658295)))

(assert (=> b!1033074 (= res!464111 (not (is-Concat!4697 r!15766)))))

(assert (=> b!1033074 (= e!658294 e!658295)))

(declare-fun bm!71309 () Bool)

(declare-fun call!71315 () Bool)

(assert (=> bm!71309 (= call!71315 (validRegex!1333 (ite c!171429 (regTwo!6241 r!15766) (regTwo!6240 r!15766))))))

(declare-fun d!296012 () Bool)

(declare-fun res!464109 () Bool)

(assert (=> d!296012 (=> res!464109 e!658291)))

(assert (=> d!296012 (= res!464109 (is-ElementMatch!2864 r!15766))))

(assert (=> d!296012 (= (validRegex!1333 r!15766) e!658291)))

(declare-fun b!1033075 () Bool)

(assert (=> b!1033075 (= e!658296 e!658292)))

(declare-fun res!464113 () Bool)

(assert (=> b!1033075 (= res!464113 (not (nullable!957 (reg!3193 r!15766))))))

(assert (=> b!1033075 (=> (not res!464113) (not e!658292))))

(declare-fun bm!71310 () Bool)

(assert (=> bm!71310 (= call!71314 (validRegex!1333 (ite c!171428 (reg!3193 r!15766) (ite c!171429 (regOne!6241 r!15766) (regOne!6240 r!15766)))))))

(declare-fun b!1033076 () Bool)

(declare-fun res!464112 () Bool)

(declare-fun e!658293 () Bool)

(assert (=> b!1033076 (=> (not res!464112) (not e!658293))))

(assert (=> b!1033076 (= res!464112 call!71313)))

(assert (=> b!1033076 (= e!658294 e!658293)))

(declare-fun b!1033077 () Bool)

(assert (=> b!1033077 (= e!658297 call!71315)))

(declare-fun b!1033078 () Bool)

(assert (=> b!1033078 (= e!658293 call!71315)))

(assert (= (and d!296012 (not res!464109)) b!1033070))

(assert (= (and b!1033070 c!171428) b!1033075))

(assert (= (and b!1033070 (not c!171428)) b!1033072))

(assert (= (and b!1033075 res!464113) b!1033071))

(assert (= (and b!1033072 c!171429) b!1033076))

(assert (= (and b!1033072 (not c!171429)) b!1033074))

(assert (= (and b!1033076 res!464112) b!1033078))

(assert (= (and b!1033074 (not res!464111)) b!1033073))

(assert (= (and b!1033073 res!464110) b!1033077))

(assert (= (or b!1033078 b!1033077) bm!71309))

(assert (= (or b!1033076 b!1033073) bm!71308))

(assert (= (or b!1033071 bm!71308) bm!71310))

(declare-fun m!1205757 () Bool)

(assert (=> bm!71309 m!1205757))

(declare-fun m!1205759 () Bool)

(assert (=> b!1033075 m!1205759))

(declare-fun m!1205761 () Bool)

(assert (=> bm!71310 m!1205761))

(assert (=> start!89908 d!296012))

(declare-fun bs!247484 () Bool)

(declare-fun b!1033130 () Bool)

(assert (= bs!247484 (and b!1033130 b!1032848)))

(declare-fun lambda!37115 () Int)

(assert (=> bs!247484 (not (= lambda!37115 lambda!37095))))

(assert (=> bs!247484 (not (= lambda!37115 lambda!37096))))

(assert (=> b!1033130 true))

(assert (=> b!1033130 true))

(declare-fun bs!247485 () Bool)

(declare-fun b!1033129 () Bool)

(assert (= bs!247485 (and b!1033129 b!1032848)))

(declare-fun lambda!37116 () Int)

(assert (=> bs!247485 (not (= lambda!37116 lambda!37095))))

(assert (=> bs!247485 (= (= (regTwo!6240 r!15766) EmptyExpr!2864) (= lambda!37116 lambda!37096))))

(declare-fun bs!247486 () Bool)

(assert (= bs!247486 (and b!1033129 b!1033130)))

(assert (=> bs!247486 (not (= lambda!37116 lambda!37115))))

(assert (=> b!1033129 true))

(assert (=> b!1033129 true))

(declare-fun b!1033122 () Bool)

(declare-fun e!658324 () Bool)

(declare-fun e!658325 () Bool)

(assert (=> b!1033122 (= e!658324 e!658325)))

(declare-fun res!464133 () Bool)

(assert (=> b!1033122 (= res!464133 (matchRSpec!663 (regOne!6241 r!15766) s!10566))))

(assert (=> b!1033122 (=> res!464133 e!658325)))

(declare-fun d!296014 () Bool)

(declare-fun c!171442 () Bool)

(assert (=> d!296014 (= c!171442 (is-EmptyExpr!2864 r!15766))))

(declare-fun e!658327 () Bool)

(assert (=> d!296014 (= (matchRSpec!663 r!15766 s!10566) e!658327)))

(declare-fun b!1033123 () Bool)

(declare-fun c!171443 () Bool)

(assert (=> b!1033123 (= c!171443 (is-Union!2864 r!15766))))

(declare-fun e!658326 () Bool)

(assert (=> b!1033123 (= e!658326 e!658324)))

(declare-fun b!1033124 () Bool)

(declare-fun c!171444 () Bool)

(assert (=> b!1033124 (= c!171444 (is-ElementMatch!2864 r!15766))))

(declare-fun e!658328 () Bool)

(assert (=> b!1033124 (= e!658328 e!658326)))

(declare-fun call!71324 () Bool)

(declare-fun c!171445 () Bool)

(declare-fun bm!71319 () Bool)

(assert (=> bm!71319 (= call!71324 (Exists!591 (ite c!171445 lambda!37115 lambda!37116)))))

(declare-fun bm!71320 () Bool)

(declare-fun call!71325 () Bool)

(assert (=> bm!71320 (= call!71325 (isEmpty!6465 s!10566))))

(declare-fun b!1033125 () Bool)

(declare-fun e!658323 () Bool)

(assert (=> b!1033125 (= e!658324 e!658323)))

(assert (=> b!1033125 (= c!171445 (is-Star!2864 r!15766))))

(declare-fun b!1033126 () Bool)

(assert (=> b!1033126 (= e!658327 call!71325)))

(declare-fun b!1033127 () Bool)

(assert (=> b!1033127 (= e!658325 (matchRSpec!663 (regTwo!6241 r!15766) s!10566))))

(declare-fun b!1033128 () Bool)

(assert (=> b!1033128 (= e!658326 (= s!10566 (Cons!10078 (c!171379 r!15766) Nil!10078)))))

(assert (=> b!1033129 (= e!658323 call!71324)))

(declare-fun e!658329 () Bool)

(assert (=> b!1033130 (= e!658329 call!71324)))

(declare-fun b!1033131 () Bool)

(declare-fun res!464134 () Bool)

(assert (=> b!1033131 (=> res!464134 e!658329)))

(assert (=> b!1033131 (= res!464134 call!71325)))

(assert (=> b!1033131 (= e!658323 e!658329)))

(declare-fun b!1033132 () Bool)

(assert (=> b!1033132 (= e!658327 e!658328)))

(declare-fun res!464135 () Bool)

(assert (=> b!1033132 (= res!464135 (not (is-EmptyLang!2864 r!15766)))))

(assert (=> b!1033132 (=> (not res!464135) (not e!658328))))

(assert (= (and d!296014 c!171442) b!1033126))

(assert (= (and d!296014 (not c!171442)) b!1033132))

(assert (= (and b!1033132 res!464135) b!1033124))

(assert (= (and b!1033124 c!171444) b!1033128))

(assert (= (and b!1033124 (not c!171444)) b!1033123))

(assert (= (and b!1033123 c!171443) b!1033122))

(assert (= (and b!1033123 (not c!171443)) b!1033125))

(assert (= (and b!1033122 (not res!464133)) b!1033127))

(assert (= (and b!1033125 c!171445) b!1033131))

(assert (= (and b!1033125 (not c!171445)) b!1033129))

(assert (= (and b!1033131 (not res!464134)) b!1033130))

(assert (= (or b!1033130 b!1033129) bm!71319))

(assert (= (or b!1033126 b!1033131) bm!71320))

(declare-fun m!1205769 () Bool)

(assert (=> b!1033122 m!1205769))

(declare-fun m!1205771 () Bool)

(assert (=> bm!71319 m!1205771))

(assert (=> bm!71320 m!1205647))

(declare-fun m!1205773 () Bool)

(assert (=> b!1033127 m!1205773))

(assert (=> b!1032850 d!296014))

(declare-fun b!1033133 () Bool)

(declare-fun res!464139 () Bool)

(declare-fun e!658331 () Bool)

(assert (=> b!1033133 (=> res!464139 e!658331)))

(assert (=> b!1033133 (= res!464139 (not (is-ElementMatch!2864 r!15766)))))

(declare-fun e!658335 () Bool)

(assert (=> b!1033133 (= e!658335 e!658331)))

(declare-fun b!1033134 () Bool)

(declare-fun res!464137 () Bool)

(declare-fun e!658334 () Bool)

(assert (=> b!1033134 (=> res!464137 e!658334)))

(assert (=> b!1033134 (= res!464137 (not (isEmpty!6465 (tail!1474 s!10566))))))

(declare-fun b!1033135 () Bool)

(declare-fun e!658330 () Bool)

(assert (=> b!1033135 (= e!658331 e!658330)))

(declare-fun res!464136 () Bool)

(assert (=> b!1033135 (=> (not res!464136) (not e!658330))))

(declare-fun lt!356420 () Bool)

(assert (=> b!1033135 (= res!464136 (not lt!356420))))

(declare-fun bm!71321 () Bool)

(declare-fun call!71326 () Bool)

(assert (=> bm!71321 (= call!71326 (isEmpty!6465 s!10566))))

(declare-fun b!1033136 () Bool)

(assert (=> b!1033136 (= e!658335 (not lt!356420))))

(declare-fun b!1033137 () Bool)

(assert (=> b!1033137 (= e!658334 (not (= (head!1912 s!10566) (c!171379 r!15766))))))

(declare-fun b!1033138 () Bool)

(declare-fun res!464143 () Bool)

(assert (=> b!1033138 (=> res!464143 e!658331)))

(declare-fun e!658333 () Bool)

(assert (=> b!1033138 (= res!464143 e!658333)))

(declare-fun res!464141 () Bool)

(assert (=> b!1033138 (=> (not res!464141) (not e!658333))))

(assert (=> b!1033138 (= res!464141 lt!356420)))

(declare-fun b!1033139 () Bool)

(declare-fun e!658336 () Bool)

(assert (=> b!1033139 (= e!658336 e!658335)))

(declare-fun c!171447 () Bool)

(assert (=> b!1033139 (= c!171447 (is-EmptyLang!2864 r!15766))))

(declare-fun b!1033140 () Bool)

(assert (=> b!1033140 (= e!658336 (= lt!356420 call!71326))))

(declare-fun b!1033141 () Bool)

(declare-fun e!658332 () Bool)

(assert (=> b!1033141 (= e!658332 (matchR!1400 (derivativeStep!757 r!15766 (head!1912 s!10566)) (tail!1474 s!10566)))))

(declare-fun b!1033142 () Bool)

(assert (=> b!1033142 (= e!658330 e!658334)))

(declare-fun res!464138 () Bool)

(assert (=> b!1033142 (=> res!464138 e!658334)))

(assert (=> b!1033142 (= res!464138 call!71326)))

(declare-fun b!1033143 () Bool)

(declare-fun res!464140 () Bool)

(assert (=> b!1033143 (=> (not res!464140) (not e!658333))))

(assert (=> b!1033143 (= res!464140 (isEmpty!6465 (tail!1474 s!10566)))))

(declare-fun b!1033144 () Bool)

(assert (=> b!1033144 (= e!658332 (nullable!957 r!15766))))

(declare-fun b!1033145 () Bool)

(assert (=> b!1033145 (= e!658333 (= (head!1912 s!10566) (c!171379 r!15766)))))

(declare-fun b!1033146 () Bool)

(declare-fun res!464142 () Bool)

(assert (=> b!1033146 (=> (not res!464142) (not e!658333))))

(assert (=> b!1033146 (= res!464142 (not call!71326))))

(declare-fun d!296018 () Bool)

(assert (=> d!296018 e!658336))

(declare-fun c!171448 () Bool)

(assert (=> d!296018 (= c!171448 (is-EmptyExpr!2864 r!15766))))

(assert (=> d!296018 (= lt!356420 e!658332)))

(declare-fun c!171446 () Bool)

(assert (=> d!296018 (= c!171446 (isEmpty!6465 s!10566))))

(assert (=> d!296018 (validRegex!1333 r!15766)))

(assert (=> d!296018 (= (matchR!1400 r!15766 s!10566) lt!356420)))

(assert (= (and d!296018 c!171446) b!1033144))

(assert (= (and d!296018 (not c!171446)) b!1033141))

(assert (= (and d!296018 c!171448) b!1033140))

(assert (= (and d!296018 (not c!171448)) b!1033139))

(assert (= (and b!1033139 c!171447) b!1033136))

(assert (= (and b!1033139 (not c!171447)) b!1033133))

(assert (= (and b!1033133 (not res!464139)) b!1033138))

(assert (= (and b!1033138 res!464141) b!1033146))

(assert (= (and b!1033146 res!464142) b!1033143))

(assert (= (and b!1033143 res!464140) b!1033145))

(assert (= (and b!1033138 (not res!464143)) b!1033135))

(assert (= (and b!1033135 res!464136) b!1033142))

(assert (= (and b!1033142 (not res!464138)) b!1033134))

(assert (= (and b!1033134 (not res!464137)) b!1033137))

(assert (= (or b!1033140 b!1033142 b!1033146) bm!71321))

(assert (=> d!296018 m!1205647))

(assert (=> d!296018 m!1205651))

(assert (=> b!1033141 m!1205707))

(assert (=> b!1033141 m!1205707))

(declare-fun m!1205775 () Bool)

(assert (=> b!1033141 m!1205775))

(assert (=> b!1033141 m!1205711))

(assert (=> b!1033141 m!1205775))

(assert (=> b!1033141 m!1205711))

(declare-fun m!1205777 () Bool)

(assert (=> b!1033141 m!1205777))

(assert (=> b!1033143 m!1205711))

(assert (=> b!1033143 m!1205711))

(assert (=> b!1033143 m!1205715))

(assert (=> b!1033137 m!1205707))

(assert (=> bm!71321 m!1205647))

(assert (=> b!1033144 m!1205723))

(assert (=> b!1033134 m!1205711))

(assert (=> b!1033134 m!1205711))

(assert (=> b!1033134 m!1205715))

(assert (=> b!1033145 m!1205707))

(assert (=> b!1032850 d!296018))

(declare-fun d!296020 () Bool)

(assert (=> d!296020 (= (matchR!1400 r!15766 s!10566) (matchRSpec!663 r!15766 s!10566))))

(declare-fun lt!356423 () Unit!15403)

(declare-fun choose!6583 (Regex!2864 List!10094) Unit!15403)

(assert (=> d!296020 (= lt!356423 (choose!6583 r!15766 s!10566))))

(assert (=> d!296020 (validRegex!1333 r!15766)))

(assert (=> d!296020 (= (mainMatchTheorem!663 r!15766 s!10566) lt!356423)))

(declare-fun bs!247487 () Bool)

(assert (= bs!247487 d!296020))

(assert (=> bs!247487 m!1205655))

(assert (=> bs!247487 m!1205653))

(declare-fun m!1205779 () Bool)

(assert (=> bs!247487 m!1205779))

(assert (=> bs!247487 m!1205651))

(assert (=> b!1032850 d!296020))

(declare-fun d!296022 () Bool)

(assert (=> d!296022 (= (isDefined!2035 lt!356376) (not (isEmpty!6466 lt!356376)))))

(declare-fun bs!247488 () Bool)

(assert (= bs!247488 d!296022))

(assert (=> bs!247488 m!1205667))

(assert (=> b!1032848 d!296022))

(declare-fun b!1033193 () Bool)

(declare-fun lt!356432 () Unit!15403)

(declare-fun lt!356433 () Unit!15403)

(assert (=> b!1033193 (= lt!356432 lt!356433)))

(declare-fun ++!2771 (List!10094 List!10094) List!10094)

(assert (=> b!1033193 (= (++!2771 (++!2771 Nil!10078 (Cons!10078 (h!15479 s!10566) Nil!10078)) (t!101140 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!364 (List!10094 C!6298 List!10094 List!10094) Unit!15403)

(assert (=> b!1033193 (= lt!356433 (lemmaMoveElementToOtherListKeepsConcatEq!364 Nil!10078 (h!15479 s!10566) (t!101140 s!10566) s!10566))))

(declare-fun e!658364 () Option!2393)

(assert (=> b!1033193 (= e!658364 (findConcatSeparation!499 (regOne!6240 r!15766) EmptyExpr!2864 (++!2771 Nil!10078 (Cons!10078 (h!15479 s!10566) Nil!10078)) (t!101140 s!10566) s!10566))))

(declare-fun b!1033194 () Bool)

(declare-fun e!658363 () Bool)

(declare-fun lt!356434 () Option!2393)

(declare-fun get!3581 (Option!2393) tuple2!11502)

(assert (=> b!1033194 (= e!658363 (= (++!2771 (_1!6577 (get!3581 lt!356434)) (_2!6577 (get!3581 lt!356434))) s!10566))))

(declare-fun b!1033195 () Bool)

(declare-fun e!658365 () Option!2393)

(assert (=> b!1033195 (= e!658365 e!658364)))

(declare-fun c!171460 () Bool)

(assert (=> b!1033195 (= c!171460 (is-Nil!10078 s!10566))))

(declare-fun d!296024 () Bool)

(declare-fun e!658362 () Bool)

(assert (=> d!296024 e!658362))

(declare-fun res!464174 () Bool)

(assert (=> d!296024 (=> res!464174 e!658362)))

(assert (=> d!296024 (= res!464174 e!658363)))

(declare-fun res!464173 () Bool)

(assert (=> d!296024 (=> (not res!464173) (not e!658363))))

(assert (=> d!296024 (= res!464173 (isDefined!2035 lt!356434))))

(assert (=> d!296024 (= lt!356434 e!658365)))

(declare-fun c!171459 () Bool)

(declare-fun e!658361 () Bool)

(assert (=> d!296024 (= c!171459 e!658361)))

(declare-fun res!464172 () Bool)

(assert (=> d!296024 (=> (not res!464172) (not e!658361))))

(assert (=> d!296024 (= res!464172 (matchR!1400 (regOne!6240 r!15766) Nil!10078))))

(assert (=> d!296024 (validRegex!1333 (regOne!6240 r!15766))))

(assert (=> d!296024 (= (findConcatSeparation!499 (regOne!6240 r!15766) EmptyExpr!2864 Nil!10078 s!10566 s!10566) lt!356434)))

(declare-fun b!1033196 () Bool)

(declare-fun res!464171 () Bool)

(assert (=> b!1033196 (=> (not res!464171) (not e!658363))))

(assert (=> b!1033196 (= res!464171 (matchR!1400 (regOne!6240 r!15766) (_1!6577 (get!3581 lt!356434))))))

(declare-fun b!1033197 () Bool)

(assert (=> b!1033197 (= e!658365 (Some!2392 (tuple2!11503 Nil!10078 s!10566)))))

(declare-fun b!1033198 () Bool)

(assert (=> b!1033198 (= e!658362 (not (isDefined!2035 lt!356434)))))

(declare-fun b!1033199 () Bool)

(declare-fun res!464170 () Bool)

(assert (=> b!1033199 (=> (not res!464170) (not e!658363))))

(assert (=> b!1033199 (= res!464170 (matchR!1400 EmptyExpr!2864 (_2!6577 (get!3581 lt!356434))))))

(declare-fun b!1033200 () Bool)

(assert (=> b!1033200 (= e!658364 None!2392)))

(declare-fun b!1033201 () Bool)

(assert (=> b!1033201 (= e!658361 (matchR!1400 EmptyExpr!2864 s!10566))))

(assert (= (and d!296024 res!464172) b!1033201))

(assert (= (and d!296024 c!171459) b!1033197))

(assert (= (and d!296024 (not c!171459)) b!1033195))

(assert (= (and b!1033195 c!171460) b!1033200))

(assert (= (and b!1033195 (not c!171460)) b!1033193))

(assert (= (and d!296024 res!464173) b!1033196))

(assert (= (and b!1033196 res!464171) b!1033199))

(assert (= (and b!1033199 res!464170) b!1033194))

(assert (= (and d!296024 (not res!464174)) b!1033198))

(declare-fun m!1205781 () Bool)

(assert (=> d!296024 m!1205781))

(declare-fun m!1205783 () Bool)

(assert (=> d!296024 m!1205783))

(assert (=> d!296024 m!1205737))

(declare-fun m!1205785 () Bool)

(assert (=> b!1033201 m!1205785))

(assert (=> b!1033198 m!1205781))

(declare-fun m!1205787 () Bool)

(assert (=> b!1033196 m!1205787))

(declare-fun m!1205789 () Bool)

(assert (=> b!1033196 m!1205789))

(declare-fun m!1205791 () Bool)

(assert (=> b!1033193 m!1205791))

(assert (=> b!1033193 m!1205791))

(declare-fun m!1205793 () Bool)

(assert (=> b!1033193 m!1205793))

(declare-fun m!1205795 () Bool)

(assert (=> b!1033193 m!1205795))

(assert (=> b!1033193 m!1205791))

(declare-fun m!1205797 () Bool)

(assert (=> b!1033193 m!1205797))

(assert (=> b!1033199 m!1205787))

(declare-fun m!1205799 () Bool)

(assert (=> b!1033199 m!1205799))

(assert (=> b!1033194 m!1205787))

(declare-fun m!1205801 () Bool)

(assert (=> b!1033194 m!1205801))

(assert (=> b!1032848 d!296024))

(declare-fun d!296026 () Bool)

(assert (=> d!296026 (= (isEmpty!6465 s!10566) (is-Nil!10078 s!10566))))

(assert (=> b!1032848 d!296026))

(declare-fun d!296028 () Bool)

(declare-fun choose!6584 (Int) Bool)

(assert (=> d!296028 (= (Exists!591 lambda!37095) (choose!6584 lambda!37095))))

(declare-fun bs!247489 () Bool)

(assert (= bs!247489 d!296028))

(declare-fun m!1205803 () Bool)

(assert (=> bs!247489 m!1205803))

(assert (=> b!1032848 d!296028))

(declare-fun bs!247490 () Bool)

(declare-fun d!296030 () Bool)

(assert (= bs!247490 (and d!296030 b!1032848)))

(declare-fun lambda!37119 () Int)

(assert (=> bs!247490 (= lambda!37119 lambda!37095)))

(assert (=> bs!247490 (not (= lambda!37119 lambda!37096))))

(declare-fun bs!247491 () Bool)

(assert (= bs!247491 (and d!296030 b!1033130)))

(assert (=> bs!247491 (not (= lambda!37119 lambda!37115))))

(declare-fun bs!247492 () Bool)

(assert (= bs!247492 (and d!296030 b!1033129)))

(assert (=> bs!247492 (not (= lambda!37119 lambda!37116))))

(assert (=> d!296030 true))

(assert (=> d!296030 true))

(assert (=> d!296030 true))

(assert (=> d!296030 (= (isDefined!2035 (findConcatSeparation!499 (regOne!6240 r!15766) EmptyExpr!2864 Nil!10078 s!10566 s!10566)) (Exists!591 lambda!37119))))

(declare-fun lt!356438 () Unit!15403)

(declare-fun choose!6585 (Regex!2864 Regex!2864 List!10094) Unit!15403)

(assert (=> d!296030 (= lt!356438 (choose!6585 (regOne!6240 r!15766) EmptyExpr!2864 s!10566))))

(assert (=> d!296030 (validRegex!1333 (regOne!6240 r!15766))))

(assert (=> d!296030 (= (lemmaFindConcatSeparationEquivalentToExists!499 (regOne!6240 r!15766) EmptyExpr!2864 s!10566) lt!356438)))

(declare-fun bs!247493 () Bool)

(assert (= bs!247493 d!296030))

(assert (=> bs!247493 m!1205639))

(declare-fun m!1205817 () Bool)

(assert (=> bs!247493 m!1205817))

(assert (=> bs!247493 m!1205639))

(declare-fun m!1205819 () Bool)

(assert (=> bs!247493 m!1205819))

(assert (=> bs!247493 m!1205737))

(declare-fun m!1205821 () Bool)

(assert (=> bs!247493 m!1205821))

(assert (=> b!1032848 d!296030))

(declare-fun d!296034 () Bool)

(assert (=> d!296034 (= (Exists!591 lambda!37096) (choose!6584 lambda!37096))))

(declare-fun bs!247494 () Bool)

(assert (= bs!247494 d!296034))

(declare-fun m!1205823 () Bool)

(assert (=> bs!247494 m!1205823))

(assert (=> b!1032848 d!296034))

(declare-fun bs!247496 () Bool)

(declare-fun d!296036 () Bool)

(assert (= bs!247496 (and d!296036 b!1032848)))

(declare-fun lambda!37124 () Int)

(assert (=> bs!247496 (not (= lambda!37124 lambda!37096))))

(declare-fun bs!247497 () Bool)

(assert (= bs!247497 (and d!296036 b!1033130)))

(assert (=> bs!247497 (not (= lambda!37124 lambda!37115))))

(declare-fun bs!247498 () Bool)

(assert (= bs!247498 (and d!296036 d!296030)))

(assert (=> bs!247498 (= lambda!37124 lambda!37119)))

(declare-fun bs!247499 () Bool)

(assert (= bs!247499 (and d!296036 b!1033129)))

(assert (=> bs!247499 (not (= lambda!37124 lambda!37116))))

(assert (=> bs!247496 (= lambda!37124 lambda!37095)))

(assert (=> d!296036 true))

(assert (=> d!296036 true))

(assert (=> d!296036 true))

(declare-fun bs!247500 () Bool)

(assert (= bs!247500 d!296036))

(declare-fun lambda!37125 () Int)

(assert (=> bs!247500 (not (= lambda!37125 lambda!37124))))

(assert (=> bs!247496 (= lambda!37125 lambda!37096)))

(assert (=> bs!247497 (not (= lambda!37125 lambda!37115))))

(assert (=> bs!247498 (not (= lambda!37125 lambda!37119))))

(assert (=> bs!247499 (= (= EmptyExpr!2864 (regTwo!6240 r!15766)) (= lambda!37125 lambda!37116))))

(assert (=> bs!247496 (not (= lambda!37125 lambda!37095))))

(assert (=> d!296036 true))

(assert (=> d!296036 true))

(assert (=> d!296036 true))

(assert (=> d!296036 (= (Exists!591 lambda!37124) (Exists!591 lambda!37125))))

(declare-fun lt!356445 () Unit!15403)

(declare-fun choose!6586 (Regex!2864 Regex!2864 List!10094) Unit!15403)

(assert (=> d!296036 (= lt!356445 (choose!6586 (regOne!6240 r!15766) EmptyExpr!2864 s!10566))))

(assert (=> d!296036 (validRegex!1333 (regOne!6240 r!15766))))

(assert (=> d!296036 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!287 (regOne!6240 r!15766) EmptyExpr!2864 s!10566) lt!356445)))

(declare-fun m!1205835 () Bool)

(assert (=> bs!247500 m!1205835))

(declare-fun m!1205837 () Bool)

(assert (=> bs!247500 m!1205837))

(declare-fun m!1205839 () Bool)

(assert (=> bs!247500 m!1205839))

(assert (=> bs!247500 m!1205737))

(assert (=> b!1032848 d!296036))

(declare-fun b!1033253 () Bool)

(declare-fun e!658388 () Bool)

(declare-fun tp!312770 () Bool)

(declare-fun tp!312768 () Bool)

(assert (=> b!1033253 (= e!658388 (and tp!312770 tp!312768))))

(assert (=> b!1032847 (= tp!312736 e!658388)))

(declare-fun b!1033252 () Bool)

(assert (=> b!1033252 (= e!658388 tp_is_empty!5371)))

(declare-fun b!1033255 () Bool)

(declare-fun tp!312767 () Bool)

(declare-fun tp!312769 () Bool)

(assert (=> b!1033255 (= e!658388 (and tp!312767 tp!312769))))

(declare-fun b!1033254 () Bool)

(declare-fun tp!312771 () Bool)

(assert (=> b!1033254 (= e!658388 tp!312771)))

(assert (= (and b!1032847 (is-ElementMatch!2864 (reg!3193 r!15766))) b!1033252))

(assert (= (and b!1032847 (is-Concat!4697 (reg!3193 r!15766))) b!1033253))

(assert (= (and b!1032847 (is-Star!2864 (reg!3193 r!15766))) b!1033254))

(assert (= (and b!1032847 (is-Union!2864 (reg!3193 r!15766))) b!1033255))

(declare-fun b!1033257 () Bool)

(declare-fun e!658389 () Bool)

(declare-fun tp!312775 () Bool)

(declare-fun tp!312773 () Bool)

(assert (=> b!1033257 (= e!658389 (and tp!312775 tp!312773))))

(assert (=> b!1032855 (= tp!312738 e!658389)))

(declare-fun b!1033256 () Bool)

(assert (=> b!1033256 (= e!658389 tp_is_empty!5371)))

(declare-fun b!1033259 () Bool)

(declare-fun tp!312772 () Bool)

(declare-fun tp!312774 () Bool)

(assert (=> b!1033259 (= e!658389 (and tp!312772 tp!312774))))

(declare-fun b!1033258 () Bool)

(declare-fun tp!312776 () Bool)

(assert (=> b!1033258 (= e!658389 tp!312776)))

(assert (= (and b!1032855 (is-ElementMatch!2864 (regOne!6241 r!15766))) b!1033256))

(assert (= (and b!1032855 (is-Concat!4697 (regOne!6241 r!15766))) b!1033257))

(assert (= (and b!1032855 (is-Star!2864 (regOne!6241 r!15766))) b!1033258))

(assert (= (and b!1032855 (is-Union!2864 (regOne!6241 r!15766))) b!1033259))

(declare-fun b!1033261 () Bool)

(declare-fun e!658390 () Bool)

(declare-fun tp!312780 () Bool)

(declare-fun tp!312778 () Bool)

(assert (=> b!1033261 (= e!658390 (and tp!312780 tp!312778))))

(assert (=> b!1032855 (= tp!312737 e!658390)))

(declare-fun b!1033260 () Bool)

(assert (=> b!1033260 (= e!658390 tp_is_empty!5371)))

(declare-fun b!1033263 () Bool)

(declare-fun tp!312777 () Bool)

(declare-fun tp!312779 () Bool)

(assert (=> b!1033263 (= e!658390 (and tp!312777 tp!312779))))

(declare-fun b!1033262 () Bool)

(declare-fun tp!312781 () Bool)

(assert (=> b!1033262 (= e!658390 tp!312781)))

(assert (= (and b!1032855 (is-ElementMatch!2864 (regTwo!6241 r!15766))) b!1033260))

(assert (= (and b!1032855 (is-Concat!4697 (regTwo!6241 r!15766))) b!1033261))

(assert (= (and b!1032855 (is-Star!2864 (regTwo!6241 r!15766))) b!1033262))

(assert (= (and b!1032855 (is-Union!2864 (regTwo!6241 r!15766))) b!1033263))

(declare-fun b!1033265 () Bool)

(declare-fun e!658391 () Bool)

(declare-fun tp!312785 () Bool)

(declare-fun tp!312783 () Bool)

(assert (=> b!1033265 (= e!658391 (and tp!312785 tp!312783))))

(assert (=> b!1032854 (= tp!312734 e!658391)))

(declare-fun b!1033264 () Bool)

(assert (=> b!1033264 (= e!658391 tp_is_empty!5371)))

(declare-fun b!1033267 () Bool)

(declare-fun tp!312782 () Bool)

(declare-fun tp!312784 () Bool)

(assert (=> b!1033267 (= e!658391 (and tp!312782 tp!312784))))

(declare-fun b!1033266 () Bool)

(declare-fun tp!312786 () Bool)

(assert (=> b!1033266 (= e!658391 tp!312786)))

(assert (= (and b!1032854 (is-ElementMatch!2864 (regOne!6240 r!15766))) b!1033264))

(assert (= (and b!1032854 (is-Concat!4697 (regOne!6240 r!15766))) b!1033265))

(assert (= (and b!1032854 (is-Star!2864 (regOne!6240 r!15766))) b!1033266))

(assert (= (and b!1032854 (is-Union!2864 (regOne!6240 r!15766))) b!1033267))

(declare-fun b!1033269 () Bool)

(declare-fun e!658392 () Bool)

(declare-fun tp!312790 () Bool)

(declare-fun tp!312788 () Bool)

(assert (=> b!1033269 (= e!658392 (and tp!312790 tp!312788))))

(assert (=> b!1032854 (= tp!312735 e!658392)))

(declare-fun b!1033268 () Bool)

(assert (=> b!1033268 (= e!658392 tp_is_empty!5371)))

(declare-fun b!1033271 () Bool)

(declare-fun tp!312787 () Bool)

(declare-fun tp!312789 () Bool)

(assert (=> b!1033271 (= e!658392 (and tp!312787 tp!312789))))

(declare-fun b!1033270 () Bool)

(declare-fun tp!312791 () Bool)

(assert (=> b!1033270 (= e!658392 tp!312791)))

(assert (= (and b!1032854 (is-ElementMatch!2864 (regTwo!6240 r!15766))) b!1033268))

(assert (= (and b!1032854 (is-Concat!4697 (regTwo!6240 r!15766))) b!1033269))

(assert (= (and b!1032854 (is-Star!2864 (regTwo!6240 r!15766))) b!1033270))

(assert (= (and b!1032854 (is-Union!2864 (regTwo!6240 r!15766))) b!1033271))

(declare-fun b!1033276 () Bool)

(declare-fun e!658395 () Bool)

(declare-fun tp!312794 () Bool)

(assert (=> b!1033276 (= e!658395 (and tp_is_empty!5371 tp!312794))))

(assert (=> b!1032849 (= tp!312733 e!658395)))

(assert (= (and b!1032849 (is-Cons!10078 (t!101140 s!10566))) b!1033276))

(push 1)

(assert (not b!1033199))

(assert (not b!1033254))

(assert (not bm!71277))

(assert tp_is_empty!5371)

(assert (not b!1033193))

(assert (not b!1033266))

(assert (not b!1033257))

(assert (not b!1033031))

(assert (not b!1033122))

(assert (not b!1033023))

(assert (not b!1033030))

(assert (not b!1033259))

(assert (not b!1033011))

(assert (not bm!71296))

(assert (not b!1033145))

(assert (not bm!71293))

(assert (not b!1033027))

(assert (not b!1033004))

(assert (not bm!71298))

(assert (not bm!71321))

(assert (not b!1032945))

(assert (not b!1033039))

(assert (not b!1033261))

(assert (not bm!71319))

(assert (not b!1033014))

(assert (not d!296010))

(assert (not b!1033269))

(assert (not d!296008))

(assert (not b!1033015))

(assert (not d!296002))

(assert (not b!1032994))

(assert (not b!1033143))

(assert (not b!1032935))

(assert (not b!1033265))

(assert (not bm!71294))

(assert (not b!1033262))

(assert (not b!1033013))

(assert (not d!296006))

(assert (not b!1033144))

(assert (not b!1033270))

(assert (not d!296034))

(assert (not bm!71289))

(assert (not b!1033134))

(assert (not b!1032942))

(assert (not b!1033276))

(assert (not b!1033127))

(assert (not d!296024))

(assert (not bm!71309))

(assert (not bm!71320))

(assert (not b!1033137))

(assert (not b!1033141))

(assert (not b!1033253))

(assert (not d!296004))

(assert (not b!1033258))

(assert (not b!1033267))

(assert (not b!1033271))

(assert (not b!1033263))

(assert (not b!1033007))

(assert (not bm!71291))

(assert (not d!296018))

(assert (not b!1033198))

(assert (not b!1033255))

(assert (not b!1033075))

(assert (not d!296036))

(assert (not d!296020))

(assert (not b!1032944))

(assert (not b!1033020))

(assert (not b!1032938))

(assert (not b!1033194))

(assert (not b!1033029))

(assert (not d!296030))

(assert (not bm!71310))

(assert (not d!296028))

(assert (not b!1033201))

(assert (not b!1032946))

(assert (not b!1033196))

(assert (not d!296022))

(assert (not d!295998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


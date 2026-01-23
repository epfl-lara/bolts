; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86818 () Bool)

(assert start!86818)

(declare-fun b!977918 () Bool)

(assert (=> b!977918 true))

(assert (=> b!977918 true))

(declare-fun lambda!34800 () Int)

(declare-fun lambda!34799 () Int)

(assert (=> b!977918 (not (= lambda!34800 lambda!34799))))

(assert (=> b!977918 true))

(assert (=> b!977918 true))

(declare-fun b!977915 () Bool)

(declare-fun e!629549 () Bool)

(declare-fun tp_is_empty!5105 () Bool)

(assert (=> b!977915 (= e!629549 tp_is_empty!5105)))

(declare-fun b!977916 () Bool)

(declare-fun tp!299064 () Bool)

(declare-fun tp!299061 () Bool)

(assert (=> b!977916 (= e!629549 (and tp!299064 tp!299061))))

(declare-fun b!977917 () Bool)

(declare-fun res!444154 () Bool)

(declare-fun e!629551 () Bool)

(assert (=> b!977917 (=> res!444154 e!629551)))

(declare-datatypes ((C!6032 0))(
  ( (C!6033 (val!3264 Int)) )
))
(declare-datatypes ((Regex!2731 0))(
  ( (ElementMatch!2731 (c!159684 C!6032)) (Concat!4564 (regOne!5974 Regex!2731) (regTwo!5974 Regex!2731)) (EmptyExpr!2731) (Star!2731 (reg!3060 Regex!2731)) (EmptyLang!2731) (Union!2731 (regOne!5975 Regex!2731) (regTwo!5975 Regex!2731)) )
))
(declare-fun r!15766 () Regex!2731)

(declare-datatypes ((List!9961 0))(
  ( (Nil!9945) (Cons!9945 (h!15346 C!6032) (t!101007 List!9961)) )
))
(declare-datatypes ((tuple2!11316 0))(
  ( (tuple2!11317 (_1!6484 List!9961) (_2!6484 List!9961)) )
))
(declare-fun lt!349754 () tuple2!11316)

(declare-fun matchR!1267 (Regex!2731 List!9961) Bool)

(assert (=> b!977917 (= res!444154 (not (matchR!1267 (regOne!5974 r!15766) (_1!6484 lt!349754))))))

(declare-fun e!629548 () Bool)

(assert (=> b!977918 (= e!629548 e!629551)))

(declare-fun res!444158 () Bool)

(assert (=> b!977918 (=> res!444158 e!629551)))

(declare-fun isEmpty!6265 (List!9961) Bool)

(assert (=> b!977918 (= res!444158 (not (isEmpty!6265 (_2!6484 lt!349754))))))

(declare-datatypes ((Option!2300 0))(
  ( (None!2299) (Some!2299 (v!19716 tuple2!11316)) )
))
(declare-fun lt!349753 () Option!2300)

(declare-fun get!3444 (Option!2300) tuple2!11316)

(assert (=> b!977918 (= lt!349754 (get!3444 lt!349753))))

(declare-fun Exists!468 (Int) Bool)

(assert (=> b!977918 (= (Exists!468 lambda!34799) (Exists!468 lambda!34800))))

(declare-datatypes ((Unit!15121 0))(
  ( (Unit!15122) )
))
(declare-fun lt!349749 () Unit!15121)

(declare-fun s!10566 () List!9961)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!226 (Regex!2731 Regex!2731 List!9961) Unit!15121)

(assert (=> b!977918 (= lt!349749 (lemmaExistCutMatchRandMatchRSpecEquivalent!226 (regOne!5974 r!15766) EmptyExpr!2731 s!10566))))

(declare-fun isDefined!1942 (Option!2300) Bool)

(assert (=> b!977918 (= (isDefined!1942 lt!349753) (Exists!468 lambda!34799))))

(declare-fun findConcatSeparation!406 (Regex!2731 Regex!2731 List!9961 List!9961 List!9961) Option!2300)

(assert (=> b!977918 (= lt!349753 (findConcatSeparation!406 (regOne!5974 r!15766) EmptyExpr!2731 Nil!9945 s!10566 s!10566))))

(declare-fun lt!349755 () Unit!15121)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!406 (Regex!2731 Regex!2731 List!9961) Unit!15121)

(assert (=> b!977918 (= lt!349755 (lemmaFindConcatSeparationEquivalentToExists!406 (regOne!5974 r!15766) EmptyExpr!2731 s!10566))))

(declare-fun b!977919 () Bool)

(declare-fun tp!299063 () Bool)

(declare-fun tp!299060 () Bool)

(assert (=> b!977919 (= e!629549 (and tp!299063 tp!299060))))

(declare-fun b!977920 () Bool)

(declare-fun res!444156 () Bool)

(assert (=> b!977920 (=> res!444156 e!629548)))

(assert (=> b!977920 (= res!444156 (isEmpty!6265 s!10566))))

(declare-fun res!444157 () Bool)

(declare-fun e!629546 () Bool)

(assert (=> start!86818 (=> (not res!444157) (not e!629546))))

(declare-fun validRegex!1200 (Regex!2731) Bool)

(assert (=> start!86818 (= res!444157 (validRegex!1200 r!15766))))

(assert (=> start!86818 e!629546))

(assert (=> start!86818 e!629549))

(declare-fun e!629547 () Bool)

(assert (=> start!86818 e!629547))

(declare-fun b!977921 () Bool)

(declare-fun e!629550 () Bool)

(assert (=> b!977921 (= e!629551 e!629550)))

(declare-fun res!444155 () Bool)

(assert (=> b!977921 (=> res!444155 e!629550)))

(assert (=> b!977921 (= res!444155 (not (validRegex!1200 (regOne!5974 r!15766))))))

(declare-fun matchRSpec!530 (Regex!2731 List!9961) Bool)

(assert (=> b!977921 (matchRSpec!530 (regOne!5974 r!15766) (_1!6484 lt!349754))))

(declare-fun lt!349750 () Unit!15121)

(declare-fun mainMatchTheorem!530 (Regex!2731 List!9961) Unit!15121)

(assert (=> b!977921 (= lt!349750 (mainMatchTheorem!530 (regOne!5974 r!15766) (_1!6484 lt!349754)))))

(declare-fun b!977922 () Bool)

(assert (=> b!977922 (= e!629546 (not e!629548))))

(declare-fun res!444153 () Bool)

(assert (=> b!977922 (=> res!444153 e!629548)))

(declare-fun lt!349752 () Bool)

(get-info :version)

(assert (=> b!977922 (= res!444153 (or (not lt!349752) (and ((_ is Concat!4564) r!15766) ((_ is EmptyExpr!2731) (regOne!5974 r!15766))) (not ((_ is Concat!4564) r!15766)) (not ((_ is EmptyExpr!2731) (regTwo!5974 r!15766)))))))

(assert (=> b!977922 (= lt!349752 (matchRSpec!530 r!15766 s!10566))))

(assert (=> b!977922 (= lt!349752 (matchR!1267 r!15766 s!10566))))

(declare-fun lt!349751 () Unit!15121)

(assert (=> b!977922 (= lt!349751 (mainMatchTheorem!530 r!15766 s!10566))))

(declare-fun b!977923 () Bool)

(declare-fun regexDepth!18 (Regex!2731) Int)

(declare-fun size!7953 (List!9961) Int)

(assert (=> b!977923 (= e!629550 (< (+ (regexDepth!18 (regOne!5974 r!15766)) (size!7953 (_1!6484 lt!349754))) (+ (regexDepth!18 r!15766) (size!7953 s!10566))))))

(declare-fun b!977924 () Bool)

(declare-fun tp!299059 () Bool)

(assert (=> b!977924 (= e!629549 tp!299059)))

(declare-fun b!977925 () Bool)

(declare-fun tp!299062 () Bool)

(assert (=> b!977925 (= e!629547 (and tp_is_empty!5105 tp!299062))))

(assert (= (and start!86818 res!444157) b!977922))

(assert (= (and b!977922 (not res!444153)) b!977920))

(assert (= (and b!977920 (not res!444156)) b!977918))

(assert (= (and b!977918 (not res!444158)) b!977917))

(assert (= (and b!977917 (not res!444154)) b!977921))

(assert (= (and b!977921 (not res!444155)) b!977923))

(assert (= (and start!86818 ((_ is ElementMatch!2731) r!15766)) b!977915))

(assert (= (and start!86818 ((_ is Concat!4564) r!15766)) b!977919))

(assert (= (and start!86818 ((_ is Star!2731) r!15766)) b!977924))

(assert (= (and start!86818 ((_ is Union!2731) r!15766)) b!977916))

(assert (= (and start!86818 ((_ is Cons!9945) s!10566)) b!977925))

(declare-fun m!1178419 () Bool)

(assert (=> b!977920 m!1178419))

(declare-fun m!1178421 () Bool)

(assert (=> start!86818 m!1178421))

(declare-fun m!1178423 () Bool)

(assert (=> b!977923 m!1178423))

(declare-fun m!1178425 () Bool)

(assert (=> b!977923 m!1178425))

(declare-fun m!1178427 () Bool)

(assert (=> b!977923 m!1178427))

(declare-fun m!1178429 () Bool)

(assert (=> b!977923 m!1178429))

(declare-fun m!1178431 () Bool)

(assert (=> b!977918 m!1178431))

(declare-fun m!1178433 () Bool)

(assert (=> b!977918 m!1178433))

(declare-fun m!1178435 () Bool)

(assert (=> b!977918 m!1178435))

(declare-fun m!1178437 () Bool)

(assert (=> b!977918 m!1178437))

(assert (=> b!977918 m!1178435))

(declare-fun m!1178439 () Bool)

(assert (=> b!977918 m!1178439))

(declare-fun m!1178441 () Bool)

(assert (=> b!977918 m!1178441))

(declare-fun m!1178443 () Bool)

(assert (=> b!977918 m!1178443))

(declare-fun m!1178445 () Bool)

(assert (=> b!977918 m!1178445))

(declare-fun m!1178447 () Bool)

(assert (=> b!977917 m!1178447))

(declare-fun m!1178449 () Bool)

(assert (=> b!977921 m!1178449))

(declare-fun m!1178451 () Bool)

(assert (=> b!977921 m!1178451))

(declare-fun m!1178453 () Bool)

(assert (=> b!977921 m!1178453))

(declare-fun m!1178455 () Bool)

(assert (=> b!977922 m!1178455))

(declare-fun m!1178457 () Bool)

(assert (=> b!977922 m!1178457))

(declare-fun m!1178459 () Bool)

(assert (=> b!977922 m!1178459))

(check-sat (not b!977924) (not b!977919) (not start!86818) (not b!977916) (not b!977920) (not b!977921) (not b!977918) (not b!977925) (not b!977917) (not b!977922) tp_is_empty!5105 (not b!977923))
(check-sat)
(get-model)

(declare-fun bs!243286 () Bool)

(declare-fun b!978098 () Bool)

(assert (= bs!243286 (and b!978098 b!977918)))

(declare-fun lambda!34809 () Int)

(assert (=> bs!243286 (not (= lambda!34809 lambda!34799))))

(assert (=> bs!243286 (not (= lambda!34809 lambda!34800))))

(assert (=> b!978098 true))

(assert (=> b!978098 true))

(declare-fun bs!243287 () Bool)

(declare-fun b!978099 () Bool)

(assert (= bs!243287 (and b!978099 b!977918)))

(declare-fun lambda!34810 () Int)

(assert (=> bs!243287 (not (= lambda!34810 lambda!34799))))

(assert (=> bs!243287 (= (= (regTwo!5974 r!15766) EmptyExpr!2731) (= lambda!34810 lambda!34800))))

(declare-fun bs!243289 () Bool)

(assert (= bs!243289 (and b!978099 b!978098)))

(assert (=> bs!243289 (not (= lambda!34810 lambda!34809))))

(assert (=> b!978099 true))

(assert (=> b!978099 true))

(declare-fun c!159739 () Bool)

(declare-fun bm!62562 () Bool)

(declare-fun call!62567 () Bool)

(assert (=> bm!62562 (= call!62567 (Exists!468 (ite c!159739 lambda!34809 lambda!34810)))))

(declare-fun b!978097 () Bool)

(declare-fun e!629656 () Bool)

(declare-fun e!629653 () Bool)

(assert (=> b!978097 (= e!629656 e!629653)))

(declare-fun res!444218 () Bool)

(assert (=> b!978097 (= res!444218 (matchRSpec!530 (regOne!5975 r!15766) s!10566))))

(assert (=> b!978097 (=> res!444218 e!629653)))

(declare-fun e!629655 () Bool)

(assert (=> b!978098 (= e!629655 call!62567)))

(declare-fun e!629657 () Bool)

(assert (=> b!978099 (= e!629657 call!62567)))

(declare-fun b!978100 () Bool)

(declare-fun e!629659 () Bool)

(declare-fun e!629654 () Bool)

(assert (=> b!978100 (= e!629659 e!629654)))

(declare-fun res!444220 () Bool)

(assert (=> b!978100 (= res!444220 (not ((_ is EmptyLang!2731) r!15766)))))

(assert (=> b!978100 (=> (not res!444220) (not e!629654))))

(declare-fun bm!62563 () Bool)

(declare-fun call!62568 () Bool)

(assert (=> bm!62563 (= call!62568 (isEmpty!6265 s!10566))))

(declare-fun b!978102 () Bool)

(assert (=> b!978102 (= e!629656 e!629657)))

(assert (=> b!978102 (= c!159739 ((_ is Star!2731) r!15766))))

(declare-fun b!978103 () Bool)

(declare-fun c!159742 () Bool)

(assert (=> b!978103 (= c!159742 ((_ is Union!2731) r!15766))))

(declare-fun e!629658 () Bool)

(assert (=> b!978103 (= e!629658 e!629656)))

(declare-fun d!287643 () Bool)

(declare-fun c!159741 () Bool)

(assert (=> d!287643 (= c!159741 ((_ is EmptyExpr!2731) r!15766))))

(assert (=> d!287643 (= (matchRSpec!530 r!15766 s!10566) e!629659)))

(declare-fun b!978101 () Bool)

(assert (=> b!978101 (= e!629653 (matchRSpec!530 (regTwo!5975 r!15766) s!10566))))

(declare-fun b!978104 () Bool)

(declare-fun c!159740 () Bool)

(assert (=> b!978104 (= c!159740 ((_ is ElementMatch!2731) r!15766))))

(assert (=> b!978104 (= e!629654 e!629658)))

(declare-fun b!978105 () Bool)

(assert (=> b!978105 (= e!629659 call!62568)))

(declare-fun b!978106 () Bool)

(assert (=> b!978106 (= e!629658 (= s!10566 (Cons!9945 (c!159684 r!15766) Nil!9945)))))

(declare-fun b!978107 () Bool)

(declare-fun res!444219 () Bool)

(assert (=> b!978107 (=> res!444219 e!629655)))

(assert (=> b!978107 (= res!444219 call!62568)))

(assert (=> b!978107 (= e!629657 e!629655)))

(assert (= (and d!287643 c!159741) b!978105))

(assert (= (and d!287643 (not c!159741)) b!978100))

(assert (= (and b!978100 res!444220) b!978104))

(assert (= (and b!978104 c!159740) b!978106))

(assert (= (and b!978104 (not c!159740)) b!978103))

(assert (= (and b!978103 c!159742) b!978097))

(assert (= (and b!978103 (not c!159742)) b!978102))

(assert (= (and b!978097 (not res!444218)) b!978101))

(assert (= (and b!978102 c!159739) b!978107))

(assert (= (and b!978102 (not c!159739)) b!978099))

(assert (= (and b!978107 (not res!444219)) b!978098))

(assert (= (or b!978098 b!978099) bm!62562))

(assert (= (or b!978105 b!978107) bm!62563))

(declare-fun m!1178499 () Bool)

(assert (=> bm!62562 m!1178499))

(declare-fun m!1178501 () Bool)

(assert (=> b!978097 m!1178501))

(assert (=> bm!62563 m!1178419))

(declare-fun m!1178503 () Bool)

(assert (=> b!978101 m!1178503))

(assert (=> b!977922 d!287643))

(declare-fun b!978223 () Bool)

(declare-fun res!444280 () Bool)

(declare-fun e!629725 () Bool)

(assert (=> b!978223 (=> (not res!444280) (not e!629725))))

(declare-fun call!62584 () Bool)

(assert (=> b!978223 (= res!444280 (not call!62584))))

(declare-fun b!978224 () Bool)

(declare-fun res!444283 () Bool)

(declare-fun e!629723 () Bool)

(assert (=> b!978224 (=> res!444283 e!629723)))

(assert (=> b!978224 (= res!444283 e!629725)))

(declare-fun res!444286 () Bool)

(assert (=> b!978224 (=> (not res!444286) (not e!629725))))

(declare-fun lt!349774 () Bool)

(assert (=> b!978224 (= res!444286 lt!349774)))

(declare-fun b!978225 () Bool)

(declare-fun e!629727 () Bool)

(declare-fun derivativeStep!653 (Regex!2731 C!6032) Regex!2731)

(declare-fun head!1806 (List!9961) C!6032)

(declare-fun tail!1368 (List!9961) List!9961)

(assert (=> b!978225 (= e!629727 (matchR!1267 (derivativeStep!653 r!15766 (head!1806 s!10566)) (tail!1368 s!10566)))))

(declare-fun b!978226 () Bool)

(declare-fun e!629724 () Bool)

(assert (=> b!978226 (= e!629724 (= lt!349774 call!62584))))

(declare-fun bm!62579 () Bool)

(assert (=> bm!62579 (= call!62584 (isEmpty!6265 s!10566))))

(declare-fun b!978227 () Bool)

(declare-fun e!629728 () Bool)

(declare-fun e!629729 () Bool)

(assert (=> b!978227 (= e!629728 e!629729)))

(declare-fun res!444281 () Bool)

(assert (=> b!978227 (=> res!444281 e!629729)))

(assert (=> b!978227 (= res!444281 call!62584)))

(declare-fun b!978228 () Bool)

(declare-fun res!444282 () Bool)

(assert (=> b!978228 (=> (not res!444282) (not e!629725))))

(assert (=> b!978228 (= res!444282 (isEmpty!6265 (tail!1368 s!10566)))))

(declare-fun b!978229 () Bool)

(assert (=> b!978229 (= e!629723 e!629728)))

(declare-fun res!444284 () Bool)

(assert (=> b!978229 (=> (not res!444284) (not e!629728))))

(assert (=> b!978229 (= res!444284 (not lt!349774))))

(declare-fun b!978230 () Bool)

(declare-fun nullable!847 (Regex!2731) Bool)

(assert (=> b!978230 (= e!629727 (nullable!847 r!15766))))

(declare-fun d!287657 () Bool)

(assert (=> d!287657 e!629724))

(declare-fun c!159772 () Bool)

(assert (=> d!287657 (= c!159772 ((_ is EmptyExpr!2731) r!15766))))

(assert (=> d!287657 (= lt!349774 e!629727)))

(declare-fun c!159771 () Bool)

(assert (=> d!287657 (= c!159771 (isEmpty!6265 s!10566))))

(assert (=> d!287657 (validRegex!1200 r!15766)))

(assert (=> d!287657 (= (matchR!1267 r!15766 s!10566) lt!349774)))

(declare-fun b!978231 () Bool)

(declare-fun res!444287 () Bool)

(assert (=> b!978231 (=> res!444287 e!629723)))

(assert (=> b!978231 (= res!444287 (not ((_ is ElementMatch!2731) r!15766)))))

(declare-fun e!629726 () Bool)

(assert (=> b!978231 (= e!629726 e!629723)))

(declare-fun b!978232 () Bool)

(assert (=> b!978232 (= e!629726 (not lt!349774))))

(declare-fun b!978233 () Bool)

(declare-fun res!444285 () Bool)

(assert (=> b!978233 (=> res!444285 e!629729)))

(assert (=> b!978233 (= res!444285 (not (isEmpty!6265 (tail!1368 s!10566))))))

(declare-fun b!978234 () Bool)

(assert (=> b!978234 (= e!629729 (not (= (head!1806 s!10566) (c!159684 r!15766))))))

(declare-fun b!978235 () Bool)

(assert (=> b!978235 (= e!629725 (= (head!1806 s!10566) (c!159684 r!15766)))))

(declare-fun b!978236 () Bool)

(assert (=> b!978236 (= e!629724 e!629726)))

(declare-fun c!159773 () Bool)

(assert (=> b!978236 (= c!159773 ((_ is EmptyLang!2731) r!15766))))

(assert (= (and d!287657 c!159771) b!978230))

(assert (= (and d!287657 (not c!159771)) b!978225))

(assert (= (and d!287657 c!159772) b!978226))

(assert (= (and d!287657 (not c!159772)) b!978236))

(assert (= (and b!978236 c!159773) b!978232))

(assert (= (and b!978236 (not c!159773)) b!978231))

(assert (= (and b!978231 (not res!444287)) b!978224))

(assert (= (and b!978224 res!444286) b!978223))

(assert (= (and b!978223 res!444280) b!978228))

(assert (= (and b!978228 res!444282) b!978235))

(assert (= (and b!978224 (not res!444283)) b!978229))

(assert (= (and b!978229 res!444284) b!978227))

(assert (= (and b!978227 (not res!444281)) b!978233))

(assert (= (and b!978233 (not res!444285)) b!978234))

(assert (= (or b!978226 b!978223 b!978227) bm!62579))

(declare-fun m!1178547 () Bool)

(assert (=> b!978234 m!1178547))

(declare-fun m!1178549 () Bool)

(assert (=> b!978230 m!1178549))

(declare-fun m!1178551 () Bool)

(assert (=> b!978233 m!1178551))

(assert (=> b!978233 m!1178551))

(declare-fun m!1178553 () Bool)

(assert (=> b!978233 m!1178553))

(assert (=> b!978228 m!1178551))

(assert (=> b!978228 m!1178551))

(assert (=> b!978228 m!1178553))

(assert (=> d!287657 m!1178419))

(assert (=> d!287657 m!1178421))

(assert (=> bm!62579 m!1178419))

(assert (=> b!978225 m!1178547))

(assert (=> b!978225 m!1178547))

(declare-fun m!1178555 () Bool)

(assert (=> b!978225 m!1178555))

(assert (=> b!978225 m!1178551))

(assert (=> b!978225 m!1178555))

(assert (=> b!978225 m!1178551))

(declare-fun m!1178557 () Bool)

(assert (=> b!978225 m!1178557))

(assert (=> b!978235 m!1178547))

(assert (=> b!977922 d!287657))

(declare-fun d!287677 () Bool)

(assert (=> d!287677 (= (matchR!1267 r!15766 s!10566) (matchRSpec!530 r!15766 s!10566))))

(declare-fun lt!349783 () Unit!15121)

(declare-fun choose!6200 (Regex!2731 List!9961) Unit!15121)

(assert (=> d!287677 (= lt!349783 (choose!6200 r!15766 s!10566))))

(assert (=> d!287677 (validRegex!1200 r!15766)))

(assert (=> d!287677 (= (mainMatchTheorem!530 r!15766 s!10566) lt!349783)))

(declare-fun bs!243302 () Bool)

(assert (= bs!243302 d!287677))

(assert (=> bs!243302 m!1178457))

(assert (=> bs!243302 m!1178455))

(declare-fun m!1178559 () Bool)

(assert (=> bs!243302 m!1178559))

(assert (=> bs!243302 m!1178421))

(assert (=> b!977922 d!287677))

(declare-fun b!978264 () Bool)

(declare-fun res!444303 () Bool)

(declare-fun e!629747 () Bool)

(assert (=> b!978264 (=> (not res!444303) (not e!629747))))

(declare-fun call!62585 () Bool)

(assert (=> b!978264 (= res!444303 (not call!62585))))

(declare-fun b!978265 () Bool)

(declare-fun res!444306 () Bool)

(declare-fun e!629745 () Bool)

(assert (=> b!978265 (=> res!444306 e!629745)))

(assert (=> b!978265 (= res!444306 e!629747)))

(declare-fun res!444309 () Bool)

(assert (=> b!978265 (=> (not res!444309) (not e!629747))))

(declare-fun lt!349787 () Bool)

(assert (=> b!978265 (= res!444309 lt!349787)))

(declare-fun b!978266 () Bool)

(declare-fun e!629749 () Bool)

(assert (=> b!978266 (= e!629749 (matchR!1267 (derivativeStep!653 (regOne!5974 r!15766) (head!1806 (_1!6484 lt!349754))) (tail!1368 (_1!6484 lt!349754))))))

(declare-fun b!978267 () Bool)

(declare-fun e!629746 () Bool)

(assert (=> b!978267 (= e!629746 (= lt!349787 call!62585))))

(declare-fun bm!62580 () Bool)

(assert (=> bm!62580 (= call!62585 (isEmpty!6265 (_1!6484 lt!349754)))))

(declare-fun b!978268 () Bool)

(declare-fun e!629750 () Bool)

(declare-fun e!629751 () Bool)

(assert (=> b!978268 (= e!629750 e!629751)))

(declare-fun res!444304 () Bool)

(assert (=> b!978268 (=> res!444304 e!629751)))

(assert (=> b!978268 (= res!444304 call!62585)))

(declare-fun b!978269 () Bool)

(declare-fun res!444305 () Bool)

(assert (=> b!978269 (=> (not res!444305) (not e!629747))))

(assert (=> b!978269 (= res!444305 (isEmpty!6265 (tail!1368 (_1!6484 lt!349754))))))

(declare-fun b!978270 () Bool)

(assert (=> b!978270 (= e!629745 e!629750)))

(declare-fun res!444307 () Bool)

(assert (=> b!978270 (=> (not res!444307) (not e!629750))))

(assert (=> b!978270 (= res!444307 (not lt!349787))))

(declare-fun b!978271 () Bool)

(assert (=> b!978271 (= e!629749 (nullable!847 (regOne!5974 r!15766)))))

(declare-fun d!287679 () Bool)

(assert (=> d!287679 e!629746))

(declare-fun c!159781 () Bool)

(assert (=> d!287679 (= c!159781 ((_ is EmptyExpr!2731) (regOne!5974 r!15766)))))

(assert (=> d!287679 (= lt!349787 e!629749)))

(declare-fun c!159780 () Bool)

(assert (=> d!287679 (= c!159780 (isEmpty!6265 (_1!6484 lt!349754)))))

(assert (=> d!287679 (validRegex!1200 (regOne!5974 r!15766))))

(assert (=> d!287679 (= (matchR!1267 (regOne!5974 r!15766) (_1!6484 lt!349754)) lt!349787)))

(declare-fun b!978272 () Bool)

(declare-fun res!444310 () Bool)

(assert (=> b!978272 (=> res!444310 e!629745)))

(assert (=> b!978272 (= res!444310 (not ((_ is ElementMatch!2731) (regOne!5974 r!15766))))))

(declare-fun e!629748 () Bool)

(assert (=> b!978272 (= e!629748 e!629745)))

(declare-fun b!978273 () Bool)

(assert (=> b!978273 (= e!629748 (not lt!349787))))

(declare-fun b!978274 () Bool)

(declare-fun res!444308 () Bool)

(assert (=> b!978274 (=> res!444308 e!629751)))

(assert (=> b!978274 (= res!444308 (not (isEmpty!6265 (tail!1368 (_1!6484 lt!349754)))))))

(declare-fun b!978275 () Bool)

(assert (=> b!978275 (= e!629751 (not (= (head!1806 (_1!6484 lt!349754)) (c!159684 (regOne!5974 r!15766)))))))

(declare-fun b!978276 () Bool)

(assert (=> b!978276 (= e!629747 (= (head!1806 (_1!6484 lt!349754)) (c!159684 (regOne!5974 r!15766))))))

(declare-fun b!978277 () Bool)

(assert (=> b!978277 (= e!629746 e!629748)))

(declare-fun c!159782 () Bool)

(assert (=> b!978277 (= c!159782 ((_ is EmptyLang!2731) (regOne!5974 r!15766)))))

(assert (= (and d!287679 c!159780) b!978271))

(assert (= (and d!287679 (not c!159780)) b!978266))

(assert (= (and d!287679 c!159781) b!978267))

(assert (= (and d!287679 (not c!159781)) b!978277))

(assert (= (and b!978277 c!159782) b!978273))

(assert (= (and b!978277 (not c!159782)) b!978272))

(assert (= (and b!978272 (not res!444310)) b!978265))

(assert (= (and b!978265 res!444309) b!978264))

(assert (= (and b!978264 res!444303) b!978269))

(assert (= (and b!978269 res!444305) b!978276))

(assert (= (and b!978265 (not res!444306)) b!978270))

(assert (= (and b!978270 res!444307) b!978268))

(assert (= (and b!978268 (not res!444304)) b!978274))

(assert (= (and b!978274 (not res!444308)) b!978275))

(assert (= (or b!978267 b!978264 b!978268) bm!62580))

(declare-fun m!1178585 () Bool)

(assert (=> b!978275 m!1178585))

(declare-fun m!1178587 () Bool)

(assert (=> b!978271 m!1178587))

(declare-fun m!1178589 () Bool)

(assert (=> b!978274 m!1178589))

(assert (=> b!978274 m!1178589))

(declare-fun m!1178591 () Bool)

(assert (=> b!978274 m!1178591))

(assert (=> b!978269 m!1178589))

(assert (=> b!978269 m!1178589))

(assert (=> b!978269 m!1178591))

(declare-fun m!1178593 () Bool)

(assert (=> d!287679 m!1178593))

(assert (=> d!287679 m!1178449))

(assert (=> bm!62580 m!1178593))

(assert (=> b!978266 m!1178585))

(assert (=> b!978266 m!1178585))

(declare-fun m!1178595 () Bool)

(assert (=> b!978266 m!1178595))

(assert (=> b!978266 m!1178589))

(assert (=> b!978266 m!1178595))

(assert (=> b!978266 m!1178589))

(declare-fun m!1178597 () Bool)

(assert (=> b!978266 m!1178597))

(assert (=> b!978276 m!1178585))

(assert (=> b!977917 d!287679))

(declare-fun b!978300 () Bool)

(declare-fun res!444329 () Bool)

(declare-fun e!629772 () Bool)

(assert (=> b!978300 (=> res!444329 e!629772)))

(assert (=> b!978300 (= res!444329 (not ((_ is Concat!4564) r!15766)))))

(declare-fun e!629771 () Bool)

(assert (=> b!978300 (= e!629771 e!629772)))

(declare-fun b!978301 () Bool)

(declare-fun e!629768 () Bool)

(assert (=> b!978301 (= e!629772 e!629768)))

(declare-fun res!444325 () Bool)

(assert (=> b!978301 (=> (not res!444325) (not e!629768))))

(declare-fun call!62593 () Bool)

(assert (=> b!978301 (= res!444325 call!62593)))

(declare-fun b!978302 () Bool)

(declare-fun call!62592 () Bool)

(assert (=> b!978302 (= e!629768 call!62592)))

(declare-fun d!287687 () Bool)

(declare-fun res!444326 () Bool)

(declare-fun e!629770 () Bool)

(assert (=> d!287687 (=> res!444326 e!629770)))

(assert (=> d!287687 (= res!444326 ((_ is ElementMatch!2731) r!15766))))

(assert (=> d!287687 (= (validRegex!1200 r!15766) e!629770)))

(declare-fun b!978303 () Bool)

(declare-fun res!444327 () Bool)

(declare-fun e!629773 () Bool)

(assert (=> b!978303 (=> (not res!444327) (not e!629773))))

(assert (=> b!978303 (= res!444327 call!62593)))

(assert (=> b!978303 (= e!629771 e!629773)))

(declare-fun b!978304 () Bool)

(declare-fun e!629774 () Bool)

(declare-fun e!629769 () Bool)

(assert (=> b!978304 (= e!629774 e!629769)))

(declare-fun res!444328 () Bool)

(assert (=> b!978304 (= res!444328 (not (nullable!847 (reg!3060 r!15766))))))

(assert (=> b!978304 (=> (not res!444328) (not e!629769))))

(declare-fun call!62594 () Bool)

(declare-fun c!159787 () Bool)

(declare-fun bm!62587 () Bool)

(declare-fun c!159788 () Bool)

(assert (=> bm!62587 (= call!62594 (validRegex!1200 (ite c!159787 (reg!3060 r!15766) (ite c!159788 (regTwo!5975 r!15766) (regTwo!5974 r!15766)))))))

(declare-fun bm!62588 () Bool)

(assert (=> bm!62588 (= call!62593 (validRegex!1200 (ite c!159788 (regOne!5975 r!15766) (regOne!5974 r!15766))))))

(declare-fun b!978305 () Bool)

(assert (=> b!978305 (= e!629770 e!629774)))

(assert (=> b!978305 (= c!159787 ((_ is Star!2731) r!15766))))

(declare-fun b!978306 () Bool)

(assert (=> b!978306 (= e!629769 call!62594)))

(declare-fun bm!62589 () Bool)

(assert (=> bm!62589 (= call!62592 call!62594)))

(declare-fun b!978307 () Bool)

(assert (=> b!978307 (= e!629774 e!629771)))

(assert (=> b!978307 (= c!159788 ((_ is Union!2731) r!15766))))

(declare-fun b!978308 () Bool)

(assert (=> b!978308 (= e!629773 call!62592)))

(assert (= (and d!287687 (not res!444326)) b!978305))

(assert (= (and b!978305 c!159787) b!978304))

(assert (= (and b!978305 (not c!159787)) b!978307))

(assert (= (and b!978304 res!444328) b!978306))

(assert (= (and b!978307 c!159788) b!978303))

(assert (= (and b!978307 (not c!159788)) b!978300))

(assert (= (and b!978303 res!444327) b!978308))

(assert (= (and b!978300 (not res!444329)) b!978301))

(assert (= (and b!978301 res!444325) b!978302))

(assert (= (or b!978308 b!978302) bm!62589))

(assert (= (or b!978303 b!978301) bm!62588))

(assert (= (or b!978306 bm!62589) bm!62587))

(declare-fun m!1178605 () Bool)

(assert (=> b!978304 m!1178605))

(declare-fun m!1178607 () Bool)

(assert (=> bm!62587 m!1178607))

(declare-fun m!1178609 () Bool)

(assert (=> bm!62588 m!1178609))

(assert (=> start!86818 d!287687))

(declare-fun d!287691 () Bool)

(assert (=> d!287691 (= (isEmpty!6265 s!10566) ((_ is Nil!9945) s!10566))))

(assert (=> b!977920 d!287691))

(declare-fun b!978317 () Bool)

(declare-fun res!444342 () Bool)

(declare-fun e!629783 () Bool)

(assert (=> b!978317 (=> res!444342 e!629783)))

(assert (=> b!978317 (= res!444342 (not ((_ is Concat!4564) (regOne!5974 r!15766))))))

(declare-fun e!629782 () Bool)

(assert (=> b!978317 (= e!629782 e!629783)))

(declare-fun b!978318 () Bool)

(declare-fun e!629779 () Bool)

(assert (=> b!978318 (= e!629783 e!629779)))

(declare-fun res!444338 () Bool)

(assert (=> b!978318 (=> (not res!444338) (not e!629779))))

(declare-fun call!62596 () Bool)

(assert (=> b!978318 (= res!444338 call!62596)))

(declare-fun b!978319 () Bool)

(declare-fun call!62595 () Bool)

(assert (=> b!978319 (= e!629779 call!62595)))

(declare-fun d!287693 () Bool)

(declare-fun res!444339 () Bool)

(declare-fun e!629781 () Bool)

(assert (=> d!287693 (=> res!444339 e!629781)))

(assert (=> d!287693 (= res!444339 ((_ is ElementMatch!2731) (regOne!5974 r!15766)))))

(assert (=> d!287693 (= (validRegex!1200 (regOne!5974 r!15766)) e!629781)))

(declare-fun b!978320 () Bool)

(declare-fun res!444340 () Bool)

(declare-fun e!629784 () Bool)

(assert (=> b!978320 (=> (not res!444340) (not e!629784))))

(assert (=> b!978320 (= res!444340 call!62596)))

(assert (=> b!978320 (= e!629782 e!629784)))

(declare-fun b!978321 () Bool)

(declare-fun e!629785 () Bool)

(declare-fun e!629780 () Bool)

(assert (=> b!978321 (= e!629785 e!629780)))

(declare-fun res!444341 () Bool)

(assert (=> b!978321 (= res!444341 (not (nullable!847 (reg!3060 (regOne!5974 r!15766)))))))

(assert (=> b!978321 (=> (not res!444341) (not e!629780))))

(declare-fun c!159790 () Bool)

(declare-fun bm!62590 () Bool)

(declare-fun c!159789 () Bool)

(declare-fun call!62597 () Bool)

(assert (=> bm!62590 (= call!62597 (validRegex!1200 (ite c!159789 (reg!3060 (regOne!5974 r!15766)) (ite c!159790 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766))))))))

(declare-fun bm!62591 () Bool)

(assert (=> bm!62591 (= call!62596 (validRegex!1200 (ite c!159790 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))))))

(declare-fun b!978322 () Bool)

(assert (=> b!978322 (= e!629781 e!629785)))

(assert (=> b!978322 (= c!159789 ((_ is Star!2731) (regOne!5974 r!15766)))))

(declare-fun b!978323 () Bool)

(assert (=> b!978323 (= e!629780 call!62597)))

(declare-fun bm!62592 () Bool)

(assert (=> bm!62592 (= call!62595 call!62597)))

(declare-fun b!978324 () Bool)

(assert (=> b!978324 (= e!629785 e!629782)))

(assert (=> b!978324 (= c!159790 ((_ is Union!2731) (regOne!5974 r!15766)))))

(declare-fun b!978325 () Bool)

(assert (=> b!978325 (= e!629784 call!62595)))

(assert (= (and d!287693 (not res!444339)) b!978322))

(assert (= (and b!978322 c!159789) b!978321))

(assert (= (and b!978322 (not c!159789)) b!978324))

(assert (= (and b!978321 res!444341) b!978323))

(assert (= (and b!978324 c!159790) b!978320))

(assert (= (and b!978324 (not c!159790)) b!978317))

(assert (= (and b!978320 res!444340) b!978325))

(assert (= (and b!978317 (not res!444342)) b!978318))

(assert (= (and b!978318 res!444338) b!978319))

(assert (= (or b!978325 b!978319) bm!62592))

(assert (= (or b!978320 b!978318) bm!62591))

(assert (= (or b!978323 bm!62592) bm!62590))

(declare-fun m!1178611 () Bool)

(assert (=> b!978321 m!1178611))

(declare-fun m!1178613 () Bool)

(assert (=> bm!62590 m!1178613))

(declare-fun m!1178615 () Bool)

(assert (=> bm!62591 m!1178615))

(assert (=> b!977921 d!287693))

(declare-fun bs!243316 () Bool)

(declare-fun b!978327 () Bool)

(assert (= bs!243316 (and b!978327 b!977918)))

(declare-fun lambda!34823 () Int)

(assert (=> bs!243316 (not (= lambda!34823 lambda!34799))))

(assert (=> bs!243316 (not (= lambda!34823 lambda!34800))))

(declare-fun bs!243318 () Bool)

(assert (= bs!243318 (and b!978327 b!978098)))

(assert (=> bs!243318 (= (and (= (_1!6484 lt!349754) s!10566) (= (reg!3060 (regOne!5974 r!15766)) (reg!3060 r!15766)) (= (regOne!5974 r!15766) r!15766)) (= lambda!34823 lambda!34809))))

(declare-fun bs!243319 () Bool)

(assert (= bs!243319 (and b!978327 b!978099)))

(assert (=> bs!243319 (not (= lambda!34823 lambda!34810))))

(assert (=> b!978327 true))

(assert (=> b!978327 true))

(declare-fun bs!243321 () Bool)

(declare-fun b!978328 () Bool)

(assert (= bs!243321 (and b!978328 b!977918)))

(declare-fun lambda!34825 () Int)

(assert (=> bs!243321 (not (= lambda!34825 lambda!34799))))

(assert (=> bs!243321 (= (and (= (_1!6484 lt!349754) s!10566) (= (regOne!5974 (regOne!5974 r!15766)) (regOne!5974 r!15766)) (= (regTwo!5974 (regOne!5974 r!15766)) EmptyExpr!2731)) (= lambda!34825 lambda!34800))))

(declare-fun bs!243322 () Bool)

(assert (= bs!243322 (and b!978328 b!978327)))

(assert (=> bs!243322 (not (= lambda!34825 lambda!34823))))

(declare-fun bs!243323 () Bool)

(assert (= bs!243323 (and b!978328 b!978098)))

(assert (=> bs!243323 (not (= lambda!34825 lambda!34809))))

(declare-fun bs!243324 () Bool)

(assert (= bs!243324 (and b!978328 b!978099)))

(assert (=> bs!243324 (= (and (= (_1!6484 lt!349754) s!10566) (= (regOne!5974 (regOne!5974 r!15766)) (regOne!5974 r!15766)) (= (regTwo!5974 (regOne!5974 r!15766)) (regTwo!5974 r!15766))) (= lambda!34825 lambda!34810))))

(assert (=> b!978328 true))

(assert (=> b!978328 true))

(declare-fun bm!62593 () Bool)

(declare-fun call!62598 () Bool)

(declare-fun c!159791 () Bool)

(assert (=> bm!62593 (= call!62598 (Exists!468 (ite c!159791 lambda!34823 lambda!34825)))))

(declare-fun b!978326 () Bool)

(declare-fun e!629789 () Bool)

(declare-fun e!629786 () Bool)

(assert (=> b!978326 (= e!629789 e!629786)))

(declare-fun res!444343 () Bool)

(assert (=> b!978326 (= res!444343 (matchRSpec!530 (regOne!5975 (regOne!5974 r!15766)) (_1!6484 lt!349754)))))

(assert (=> b!978326 (=> res!444343 e!629786)))

(declare-fun e!629788 () Bool)

(assert (=> b!978327 (= e!629788 call!62598)))

(declare-fun e!629790 () Bool)

(assert (=> b!978328 (= e!629790 call!62598)))

(declare-fun b!978329 () Bool)

(declare-fun e!629792 () Bool)

(declare-fun e!629787 () Bool)

(assert (=> b!978329 (= e!629792 e!629787)))

(declare-fun res!444345 () Bool)

(assert (=> b!978329 (= res!444345 (not ((_ is EmptyLang!2731) (regOne!5974 r!15766))))))

(assert (=> b!978329 (=> (not res!444345) (not e!629787))))

(declare-fun bm!62594 () Bool)

(declare-fun call!62599 () Bool)

(assert (=> bm!62594 (= call!62599 (isEmpty!6265 (_1!6484 lt!349754)))))

(declare-fun b!978331 () Bool)

(assert (=> b!978331 (= e!629789 e!629790)))

(assert (=> b!978331 (= c!159791 ((_ is Star!2731) (regOne!5974 r!15766)))))

(declare-fun b!978332 () Bool)

(declare-fun c!159794 () Bool)

(assert (=> b!978332 (= c!159794 ((_ is Union!2731) (regOne!5974 r!15766)))))

(declare-fun e!629791 () Bool)

(assert (=> b!978332 (= e!629791 e!629789)))

(declare-fun d!287695 () Bool)

(declare-fun c!159793 () Bool)

(assert (=> d!287695 (= c!159793 ((_ is EmptyExpr!2731) (regOne!5974 r!15766)))))

(assert (=> d!287695 (= (matchRSpec!530 (regOne!5974 r!15766) (_1!6484 lt!349754)) e!629792)))

(declare-fun b!978330 () Bool)

(assert (=> b!978330 (= e!629786 (matchRSpec!530 (regTwo!5975 (regOne!5974 r!15766)) (_1!6484 lt!349754)))))

(declare-fun b!978333 () Bool)

(declare-fun c!159792 () Bool)

(assert (=> b!978333 (= c!159792 ((_ is ElementMatch!2731) (regOne!5974 r!15766)))))

(assert (=> b!978333 (= e!629787 e!629791)))

(declare-fun b!978334 () Bool)

(assert (=> b!978334 (= e!629792 call!62599)))

(declare-fun b!978335 () Bool)

(assert (=> b!978335 (= e!629791 (= (_1!6484 lt!349754) (Cons!9945 (c!159684 (regOne!5974 r!15766)) Nil!9945)))))

(declare-fun b!978336 () Bool)

(declare-fun res!444344 () Bool)

(assert (=> b!978336 (=> res!444344 e!629788)))

(assert (=> b!978336 (= res!444344 call!62599)))

(assert (=> b!978336 (= e!629790 e!629788)))

(assert (= (and d!287695 c!159793) b!978334))

(assert (= (and d!287695 (not c!159793)) b!978329))

(assert (= (and b!978329 res!444345) b!978333))

(assert (= (and b!978333 c!159792) b!978335))

(assert (= (and b!978333 (not c!159792)) b!978332))

(assert (= (and b!978332 c!159794) b!978326))

(assert (= (and b!978332 (not c!159794)) b!978331))

(assert (= (and b!978326 (not res!444343)) b!978330))

(assert (= (and b!978331 c!159791) b!978336))

(assert (= (and b!978331 (not c!159791)) b!978328))

(assert (= (and b!978336 (not res!444344)) b!978327))

(assert (= (or b!978327 b!978328) bm!62593))

(assert (= (or b!978334 b!978336) bm!62594))

(declare-fun m!1178625 () Bool)

(assert (=> bm!62593 m!1178625))

(declare-fun m!1178627 () Bool)

(assert (=> b!978326 m!1178627))

(assert (=> bm!62594 m!1178593))

(declare-fun m!1178629 () Bool)

(assert (=> b!978330 m!1178629))

(assert (=> b!977921 d!287695))

(declare-fun d!287699 () Bool)

(assert (=> d!287699 (= (matchR!1267 (regOne!5974 r!15766) (_1!6484 lt!349754)) (matchRSpec!530 (regOne!5974 r!15766) (_1!6484 lt!349754)))))

(declare-fun lt!349794 () Unit!15121)

(assert (=> d!287699 (= lt!349794 (choose!6200 (regOne!5974 r!15766) (_1!6484 lt!349754)))))

(assert (=> d!287699 (validRegex!1200 (regOne!5974 r!15766))))

(assert (=> d!287699 (= (mainMatchTheorem!530 (regOne!5974 r!15766) (_1!6484 lt!349754)) lt!349794)))

(declare-fun bs!243325 () Bool)

(assert (= bs!243325 d!287699))

(assert (=> bs!243325 m!1178447))

(assert (=> bs!243325 m!1178451))

(declare-fun m!1178631 () Bool)

(assert (=> bs!243325 m!1178631))

(assert (=> bs!243325 m!1178449))

(assert (=> b!977921 d!287699))

(declare-fun b!978406 () Bool)

(declare-fun e!629832 () Bool)

(declare-fun e!629830 () Bool)

(assert (=> b!978406 (= e!629832 e!629830)))

(declare-fun res!444352 () Bool)

(declare-fun lt!349797 () Int)

(declare-fun call!62614 () Int)

(assert (=> b!978406 (= res!444352 (> lt!349797 call!62614))))

(assert (=> b!978406 (=> (not res!444352) (not e!629830))))

(declare-fun b!978407 () Bool)

(declare-fun c!159811 () Bool)

(assert (=> b!978407 (= c!159811 ((_ is Star!2731) (regOne!5974 r!15766)))))

(declare-fun e!629825 () Bool)

(declare-fun e!629828 () Bool)

(assert (=> b!978407 (= e!629825 e!629828)))

(declare-fun bm!62609 () Bool)

(declare-fun call!62619 () Int)

(assert (=> bm!62609 (= call!62619 call!62614)))

(declare-fun b!978408 () Bool)

(declare-fun e!629824 () Bool)

(assert (=> b!978408 (= e!629824 e!629832)))

(declare-fun c!159809 () Bool)

(assert (=> b!978408 (= c!159809 ((_ is Union!2731) (regOne!5974 r!15766)))))

(declare-fun b!978409 () Bool)

(declare-fun c!159814 () Bool)

(assert (=> b!978409 (= c!159814 ((_ is Union!2731) (regOne!5974 r!15766)))))

(declare-fun e!629831 () Int)

(declare-fun e!629827 () Int)

(assert (=> b!978409 (= e!629831 e!629827)))

(declare-fun d!287701 () Bool)

(assert (=> d!287701 e!629824))

(declare-fun res!444354 () Bool)

(assert (=> d!287701 (=> (not res!444354) (not e!629824))))

(assert (=> d!287701 (= res!444354 (> lt!349797 0))))

(declare-fun e!629823 () Int)

(assert (=> d!287701 (= lt!349797 e!629823)))

(declare-fun c!159810 () Bool)

(assert (=> d!287701 (= c!159810 ((_ is ElementMatch!2731) (regOne!5974 r!15766)))))

(assert (=> d!287701 (= (regexDepth!18 (regOne!5974 r!15766)) lt!349797)))

(declare-fun bm!62610 () Bool)

(declare-fun call!62615 () Int)

(assert (=> bm!62610 (= call!62615 (regexDepth!18 (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))))))

(declare-fun b!978410 () Bool)

(assert (=> b!978410 (= e!629823 e!629831)))

(declare-fun c!159812 () Bool)

(assert (=> b!978410 (= c!159812 ((_ is Star!2731) (regOne!5974 r!15766)))))

(declare-fun b!978411 () Bool)

(assert (=> b!978411 (= e!629830 (> lt!349797 call!62615))))

(declare-fun b!978412 () Bool)

(declare-fun e!629829 () Int)

(declare-fun call!62617 () Int)

(assert (=> b!978412 (= e!629829 (+ 1 call!62617))))

(declare-fun b!978413 () Bool)

(assert (=> b!978413 (= e!629827 e!629829)))

(declare-fun c!159813 () Bool)

(assert (=> b!978413 (= c!159813 ((_ is Concat!4564) (regOne!5974 r!15766)))))

(declare-fun bm!62611 () Bool)

(declare-fun call!62620 () Int)

(assert (=> bm!62611 (= call!62620 (regexDepth!18 (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))))))

(declare-fun b!978414 () Bool)

(declare-fun e!629826 () Bool)

(assert (=> b!978414 (= e!629826 (> lt!349797 call!62619))))

(declare-fun c!159815 () Bool)

(declare-fun bm!62612 () Bool)

(assert (=> bm!62612 (= call!62614 (regexDepth!18 (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766))))))))

(declare-fun b!978415 () Bool)

(declare-fun res!444353 () Bool)

(assert (=> b!978415 (=> (not res!444353) (not e!629826))))

(assert (=> b!978415 (= res!444353 (> lt!349797 call!62615))))

(assert (=> b!978415 (= e!629825 e!629826)))

(declare-fun call!62616 () Int)

(declare-fun bm!62613 () Bool)

(assert (=> bm!62613 (= call!62616 (regexDepth!18 (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))))))

(declare-fun b!978416 () Bool)

(assert (=> b!978416 (= e!629827 (+ 1 call!62617))))

(declare-fun b!978417 () Bool)

(assert (=> b!978417 (= e!629831 (+ 1 call!62616))))

(declare-fun b!978418 () Bool)

(assert (=> b!978418 (= e!629832 e!629825)))

(assert (=> b!978418 (= c!159815 ((_ is Concat!4564) (regOne!5974 r!15766)))))

(declare-fun b!978419 () Bool)

(assert (=> b!978419 (= e!629828 (> lt!349797 call!62619))))

(declare-fun b!978420 () Bool)

(assert (=> b!978420 (= e!629828 (= lt!349797 1))))

(declare-fun b!978421 () Bool)

(assert (=> b!978421 (= e!629823 1)))

(declare-fun b!978422 () Bool)

(assert (=> b!978422 (= e!629829 1)))

(declare-fun bm!62614 () Bool)

(declare-fun call!62618 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!62614 (= call!62617 (maxBigInt!0 call!62618 call!62620))))

(declare-fun bm!62615 () Bool)

(assert (=> bm!62615 (= call!62618 call!62616)))

(assert (= (and d!287701 c!159810) b!978421))

(assert (= (and d!287701 (not c!159810)) b!978410))

(assert (= (and b!978410 c!159812) b!978417))

(assert (= (and b!978410 (not c!159812)) b!978409))

(assert (= (and b!978409 c!159814) b!978416))

(assert (= (and b!978409 (not c!159814)) b!978413))

(assert (= (and b!978413 c!159813) b!978412))

(assert (= (and b!978413 (not c!159813)) b!978422))

(assert (= (or b!978416 b!978412) bm!62611))

(assert (= (or b!978416 b!978412) bm!62615))

(assert (= (or b!978416 b!978412) bm!62614))

(assert (= (or b!978417 bm!62615) bm!62613))

(assert (= (and d!287701 res!444354) b!978408))

(assert (= (and b!978408 c!159809) b!978406))

(assert (= (and b!978408 (not c!159809)) b!978418))

(assert (= (and b!978406 res!444352) b!978411))

(assert (= (and b!978418 c!159815) b!978415))

(assert (= (and b!978418 (not c!159815)) b!978407))

(assert (= (and b!978415 res!444353) b!978414))

(assert (= (and b!978407 c!159811) b!978419))

(assert (= (and b!978407 (not c!159811)) b!978420))

(assert (= (or b!978414 b!978419) bm!62609))

(assert (= (or b!978411 b!978415) bm!62610))

(assert (= (or b!978406 bm!62609) bm!62612))

(declare-fun m!1178633 () Bool)

(assert (=> bm!62611 m!1178633))

(declare-fun m!1178635 () Bool)

(assert (=> bm!62612 m!1178635))

(declare-fun m!1178637 () Bool)

(assert (=> bm!62613 m!1178637))

(declare-fun m!1178639 () Bool)

(assert (=> bm!62614 m!1178639))

(declare-fun m!1178641 () Bool)

(assert (=> bm!62610 m!1178641))

(assert (=> b!977923 d!287701))

(declare-fun d!287703 () Bool)

(declare-fun lt!349800 () Int)

(assert (=> d!287703 (>= lt!349800 0)))

(declare-fun e!629835 () Int)

(assert (=> d!287703 (= lt!349800 e!629835)))

(declare-fun c!159818 () Bool)

(assert (=> d!287703 (= c!159818 ((_ is Nil!9945) (_1!6484 lt!349754)))))

(assert (=> d!287703 (= (size!7953 (_1!6484 lt!349754)) lt!349800)))

(declare-fun b!978427 () Bool)

(assert (=> b!978427 (= e!629835 0)))

(declare-fun b!978428 () Bool)

(assert (=> b!978428 (= e!629835 (+ 1 (size!7953 (t!101007 (_1!6484 lt!349754)))))))

(assert (= (and d!287703 c!159818) b!978427))

(assert (= (and d!287703 (not c!159818)) b!978428))

(declare-fun m!1178643 () Bool)

(assert (=> b!978428 m!1178643))

(assert (=> b!977923 d!287703))

(declare-fun b!978429 () Bool)

(declare-fun e!629845 () Bool)

(declare-fun e!629843 () Bool)

(assert (=> b!978429 (= e!629845 e!629843)))

(declare-fun res!444355 () Bool)

(declare-fun lt!349801 () Int)

(declare-fun call!62621 () Int)

(assert (=> b!978429 (= res!444355 (> lt!349801 call!62621))))

(assert (=> b!978429 (=> (not res!444355) (not e!629843))))

(declare-fun b!978430 () Bool)

(declare-fun c!159821 () Bool)

(assert (=> b!978430 (= c!159821 ((_ is Star!2731) r!15766))))

(declare-fun e!629838 () Bool)

(declare-fun e!629841 () Bool)

(assert (=> b!978430 (= e!629838 e!629841)))

(declare-fun bm!62616 () Bool)

(declare-fun call!62626 () Int)

(assert (=> bm!62616 (= call!62626 call!62621)))

(declare-fun b!978431 () Bool)

(declare-fun e!629837 () Bool)

(assert (=> b!978431 (= e!629837 e!629845)))

(declare-fun c!159819 () Bool)

(assert (=> b!978431 (= c!159819 ((_ is Union!2731) r!15766))))

(declare-fun b!978432 () Bool)

(declare-fun c!159824 () Bool)

(assert (=> b!978432 (= c!159824 ((_ is Union!2731) r!15766))))

(declare-fun e!629844 () Int)

(declare-fun e!629840 () Int)

(assert (=> b!978432 (= e!629844 e!629840)))

(declare-fun d!287705 () Bool)

(assert (=> d!287705 e!629837))

(declare-fun res!444357 () Bool)

(assert (=> d!287705 (=> (not res!444357) (not e!629837))))

(assert (=> d!287705 (= res!444357 (> lt!349801 0))))

(declare-fun e!629836 () Int)

(assert (=> d!287705 (= lt!349801 e!629836)))

(declare-fun c!159820 () Bool)

(assert (=> d!287705 (= c!159820 ((_ is ElementMatch!2731) r!15766))))

(assert (=> d!287705 (= (regexDepth!18 r!15766) lt!349801)))

(declare-fun bm!62617 () Bool)

(declare-fun call!62622 () Int)

(assert (=> bm!62617 (= call!62622 (regexDepth!18 (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766))))))

(declare-fun b!978433 () Bool)

(assert (=> b!978433 (= e!629836 e!629844)))

(declare-fun c!159822 () Bool)

(assert (=> b!978433 (= c!159822 ((_ is Star!2731) r!15766))))

(declare-fun b!978434 () Bool)

(assert (=> b!978434 (= e!629843 (> lt!349801 call!62622))))

(declare-fun b!978435 () Bool)

(declare-fun e!629842 () Int)

(declare-fun call!62624 () Int)

(assert (=> b!978435 (= e!629842 (+ 1 call!62624))))

(declare-fun b!978436 () Bool)

(assert (=> b!978436 (= e!629840 e!629842)))

(declare-fun c!159823 () Bool)

(assert (=> b!978436 (= c!159823 ((_ is Concat!4564) r!15766))))

(declare-fun bm!62618 () Bool)

(declare-fun call!62627 () Int)

(assert (=> bm!62618 (= call!62627 (regexDepth!18 (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766))))))

(declare-fun b!978437 () Bool)

(declare-fun e!629839 () Bool)

(assert (=> b!978437 (= e!629839 (> lt!349801 call!62626))))

(declare-fun c!159825 () Bool)

(declare-fun bm!62619 () Bool)

(assert (=> bm!62619 (= call!62621 (regexDepth!18 (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766)))))))

(declare-fun b!978438 () Bool)

(declare-fun res!444356 () Bool)

(assert (=> b!978438 (=> (not res!444356) (not e!629839))))

(assert (=> b!978438 (= res!444356 (> lt!349801 call!62622))))

(assert (=> b!978438 (= e!629838 e!629839)))

(declare-fun call!62623 () Int)

(declare-fun bm!62620 () Bool)

(assert (=> bm!62620 (= call!62623 (regexDepth!18 (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766)))))))

(declare-fun b!978439 () Bool)

(assert (=> b!978439 (= e!629840 (+ 1 call!62624))))

(declare-fun b!978440 () Bool)

(assert (=> b!978440 (= e!629844 (+ 1 call!62623))))

(declare-fun b!978441 () Bool)

(assert (=> b!978441 (= e!629845 e!629838)))

(assert (=> b!978441 (= c!159825 ((_ is Concat!4564) r!15766))))

(declare-fun b!978442 () Bool)

(assert (=> b!978442 (= e!629841 (> lt!349801 call!62626))))

(declare-fun b!978443 () Bool)

(assert (=> b!978443 (= e!629841 (= lt!349801 1))))

(declare-fun b!978444 () Bool)

(assert (=> b!978444 (= e!629836 1)))

(declare-fun b!978445 () Bool)

(assert (=> b!978445 (= e!629842 1)))

(declare-fun bm!62621 () Bool)

(declare-fun call!62625 () Int)

(assert (=> bm!62621 (= call!62624 (maxBigInt!0 call!62625 call!62627))))

(declare-fun bm!62622 () Bool)

(assert (=> bm!62622 (= call!62625 call!62623)))

(assert (= (and d!287705 c!159820) b!978444))

(assert (= (and d!287705 (not c!159820)) b!978433))

(assert (= (and b!978433 c!159822) b!978440))

(assert (= (and b!978433 (not c!159822)) b!978432))

(assert (= (and b!978432 c!159824) b!978439))

(assert (= (and b!978432 (not c!159824)) b!978436))

(assert (= (and b!978436 c!159823) b!978435))

(assert (= (and b!978436 (not c!159823)) b!978445))

(assert (= (or b!978439 b!978435) bm!62618))

(assert (= (or b!978439 b!978435) bm!62622))

(assert (= (or b!978439 b!978435) bm!62621))

(assert (= (or b!978440 bm!62622) bm!62620))

(assert (= (and d!287705 res!444357) b!978431))

(assert (= (and b!978431 c!159819) b!978429))

(assert (= (and b!978431 (not c!159819)) b!978441))

(assert (= (and b!978429 res!444355) b!978434))

(assert (= (and b!978441 c!159825) b!978438))

(assert (= (and b!978441 (not c!159825)) b!978430))

(assert (= (and b!978438 res!444356) b!978437))

(assert (= (and b!978430 c!159821) b!978442))

(assert (= (and b!978430 (not c!159821)) b!978443))

(assert (= (or b!978437 b!978442) bm!62616))

(assert (= (or b!978434 b!978438) bm!62617))

(assert (= (or b!978429 bm!62616) bm!62619))

(declare-fun m!1178645 () Bool)

(assert (=> bm!62618 m!1178645))

(declare-fun m!1178647 () Bool)

(assert (=> bm!62619 m!1178647))

(declare-fun m!1178649 () Bool)

(assert (=> bm!62620 m!1178649))

(declare-fun m!1178651 () Bool)

(assert (=> bm!62621 m!1178651))

(declare-fun m!1178653 () Bool)

(assert (=> bm!62617 m!1178653))

(assert (=> b!977923 d!287705))

(declare-fun d!287707 () Bool)

(declare-fun lt!349802 () Int)

(assert (=> d!287707 (>= lt!349802 0)))

(declare-fun e!629846 () Int)

(assert (=> d!287707 (= lt!349802 e!629846)))

(declare-fun c!159826 () Bool)

(assert (=> d!287707 (= c!159826 ((_ is Nil!9945) s!10566))))

(assert (=> d!287707 (= (size!7953 s!10566) lt!349802)))

(declare-fun b!978446 () Bool)

(assert (=> b!978446 (= e!629846 0)))

(declare-fun b!978447 () Bool)

(assert (=> b!978447 (= e!629846 (+ 1 (size!7953 (t!101007 s!10566))))))

(assert (= (and d!287707 c!159826) b!978446))

(assert (= (and d!287707 (not c!159826)) b!978447))

(declare-fun m!1178655 () Bool)

(assert (=> b!978447 m!1178655))

(assert (=> b!977923 d!287707))

(declare-fun b!978466 () Bool)

(declare-fun e!629859 () Option!2300)

(declare-fun e!629857 () Option!2300)

(assert (=> b!978466 (= e!629859 e!629857)))

(declare-fun c!159831 () Bool)

(assert (=> b!978466 (= c!159831 ((_ is Nil!9945) s!10566))))

(declare-fun b!978467 () Bool)

(assert (=> b!978467 (= e!629857 None!2299)))

(declare-fun b!978468 () Bool)

(declare-fun res!444372 () Bool)

(declare-fun e!629858 () Bool)

(assert (=> b!978468 (=> (not res!444372) (not e!629858))))

(declare-fun lt!349811 () Option!2300)

(assert (=> b!978468 (= res!444372 (matchR!1267 (regOne!5974 r!15766) (_1!6484 (get!3444 lt!349811))))))

(declare-fun b!978469 () Bool)

(declare-fun res!444370 () Bool)

(assert (=> b!978469 (=> (not res!444370) (not e!629858))))

(assert (=> b!978469 (= res!444370 (matchR!1267 EmptyExpr!2731 (_2!6484 (get!3444 lt!349811))))))

(declare-fun d!287709 () Bool)

(declare-fun e!629861 () Bool)

(assert (=> d!287709 e!629861))

(declare-fun res!444368 () Bool)

(assert (=> d!287709 (=> res!444368 e!629861)))

(assert (=> d!287709 (= res!444368 e!629858)))

(declare-fun res!444371 () Bool)

(assert (=> d!287709 (=> (not res!444371) (not e!629858))))

(assert (=> d!287709 (= res!444371 (isDefined!1942 lt!349811))))

(assert (=> d!287709 (= lt!349811 e!629859)))

(declare-fun c!159832 () Bool)

(declare-fun e!629860 () Bool)

(assert (=> d!287709 (= c!159832 e!629860)))

(declare-fun res!444369 () Bool)

(assert (=> d!287709 (=> (not res!444369) (not e!629860))))

(assert (=> d!287709 (= res!444369 (matchR!1267 (regOne!5974 r!15766) Nil!9945))))

(assert (=> d!287709 (validRegex!1200 (regOne!5974 r!15766))))

(assert (=> d!287709 (= (findConcatSeparation!406 (regOne!5974 r!15766) EmptyExpr!2731 Nil!9945 s!10566 s!10566) lt!349811)))

(declare-fun b!978470 () Bool)

(declare-fun ++!2698 (List!9961 List!9961) List!9961)

(assert (=> b!978470 (= e!629858 (= (++!2698 (_1!6484 (get!3444 lt!349811)) (_2!6484 (get!3444 lt!349811))) s!10566))))

(declare-fun b!978471 () Bool)

(assert (=> b!978471 (= e!629861 (not (isDefined!1942 lt!349811)))))

(declare-fun b!978472 () Bool)

(assert (=> b!978472 (= e!629860 (matchR!1267 EmptyExpr!2731 s!10566))))

(declare-fun b!978473 () Bool)

(declare-fun lt!349809 () Unit!15121)

(declare-fun lt!349810 () Unit!15121)

(assert (=> b!978473 (= lt!349809 lt!349810)))

(assert (=> b!978473 (= (++!2698 (++!2698 Nil!9945 (Cons!9945 (h!15346 s!10566) Nil!9945)) (t!101007 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!299 (List!9961 C!6032 List!9961 List!9961) Unit!15121)

(assert (=> b!978473 (= lt!349810 (lemmaMoveElementToOtherListKeepsConcatEq!299 Nil!9945 (h!15346 s!10566) (t!101007 s!10566) s!10566))))

(assert (=> b!978473 (= e!629857 (findConcatSeparation!406 (regOne!5974 r!15766) EmptyExpr!2731 (++!2698 Nil!9945 (Cons!9945 (h!15346 s!10566) Nil!9945)) (t!101007 s!10566) s!10566))))

(declare-fun b!978474 () Bool)

(assert (=> b!978474 (= e!629859 (Some!2299 (tuple2!11317 Nil!9945 s!10566)))))

(assert (= (and d!287709 res!444369) b!978472))

(assert (= (and d!287709 c!159832) b!978474))

(assert (= (and d!287709 (not c!159832)) b!978466))

(assert (= (and b!978466 c!159831) b!978467))

(assert (= (and b!978466 (not c!159831)) b!978473))

(assert (= (and d!287709 res!444371) b!978468))

(assert (= (and b!978468 res!444372) b!978469))

(assert (= (and b!978469 res!444370) b!978470))

(assert (= (and d!287709 (not res!444368)) b!978471))

(declare-fun m!1178657 () Bool)

(assert (=> b!978469 m!1178657))

(declare-fun m!1178659 () Bool)

(assert (=> b!978469 m!1178659))

(declare-fun m!1178661 () Bool)

(assert (=> b!978471 m!1178661))

(assert (=> b!978468 m!1178657))

(declare-fun m!1178663 () Bool)

(assert (=> b!978468 m!1178663))

(assert (=> d!287709 m!1178661))

(declare-fun m!1178665 () Bool)

(assert (=> d!287709 m!1178665))

(assert (=> d!287709 m!1178449))

(assert (=> b!978470 m!1178657))

(declare-fun m!1178667 () Bool)

(assert (=> b!978470 m!1178667))

(declare-fun m!1178669 () Bool)

(assert (=> b!978472 m!1178669))

(declare-fun m!1178671 () Bool)

(assert (=> b!978473 m!1178671))

(assert (=> b!978473 m!1178671))

(declare-fun m!1178673 () Bool)

(assert (=> b!978473 m!1178673))

(declare-fun m!1178675 () Bool)

(assert (=> b!978473 m!1178675))

(assert (=> b!978473 m!1178671))

(declare-fun m!1178677 () Bool)

(assert (=> b!978473 m!1178677))

(assert (=> b!977918 d!287709))

(declare-fun d!287711 () Bool)

(declare-fun choose!6203 (Int) Bool)

(assert (=> d!287711 (= (Exists!468 lambda!34799) (choose!6203 lambda!34799))))

(declare-fun bs!243326 () Bool)

(assert (= bs!243326 d!287711))

(declare-fun m!1178679 () Bool)

(assert (=> bs!243326 m!1178679))

(assert (=> b!977918 d!287711))

(declare-fun d!287713 () Bool)

(assert (=> d!287713 (= (get!3444 lt!349753) (v!19716 lt!349753))))

(assert (=> b!977918 d!287713))

(declare-fun d!287715 () Bool)

(assert (=> d!287715 (= (isEmpty!6265 (_2!6484 lt!349754)) ((_ is Nil!9945) (_2!6484 lt!349754)))))

(assert (=> b!977918 d!287715))

(declare-fun bs!243327 () Bool)

(declare-fun d!287717 () Bool)

(assert (= bs!243327 (and d!287717 b!977918)))

(declare-fun lambda!34828 () Int)

(assert (=> bs!243327 (= lambda!34828 lambda!34799)))

(assert (=> bs!243327 (not (= lambda!34828 lambda!34800))))

(declare-fun bs!243328 () Bool)

(assert (= bs!243328 (and d!287717 b!978327)))

(assert (=> bs!243328 (not (= lambda!34828 lambda!34823))))

(declare-fun bs!243329 () Bool)

(assert (= bs!243329 (and d!287717 b!978098)))

(assert (=> bs!243329 (not (= lambda!34828 lambda!34809))))

(declare-fun bs!243330 () Bool)

(assert (= bs!243330 (and d!287717 b!978099)))

(assert (=> bs!243330 (not (= lambda!34828 lambda!34810))))

(declare-fun bs!243331 () Bool)

(assert (= bs!243331 (and d!287717 b!978328)))

(assert (=> bs!243331 (not (= lambda!34828 lambda!34825))))

(assert (=> d!287717 true))

(assert (=> d!287717 true))

(assert (=> d!287717 true))

(assert (=> d!287717 (= (isDefined!1942 (findConcatSeparation!406 (regOne!5974 r!15766) EmptyExpr!2731 Nil!9945 s!10566 s!10566)) (Exists!468 lambda!34828))))

(declare-fun lt!349814 () Unit!15121)

(declare-fun choose!6204 (Regex!2731 Regex!2731 List!9961) Unit!15121)

(assert (=> d!287717 (= lt!349814 (choose!6204 (regOne!5974 r!15766) EmptyExpr!2731 s!10566))))

(assert (=> d!287717 (validRegex!1200 (regOne!5974 r!15766))))

(assert (=> d!287717 (= (lemmaFindConcatSeparationEquivalentToExists!406 (regOne!5974 r!15766) EmptyExpr!2731 s!10566) lt!349814)))

(declare-fun bs!243332 () Bool)

(assert (= bs!243332 d!287717))

(assert (=> bs!243332 m!1178433))

(declare-fun m!1178681 () Bool)

(assert (=> bs!243332 m!1178681))

(declare-fun m!1178683 () Bool)

(assert (=> bs!243332 m!1178683))

(assert (=> bs!243332 m!1178449))

(assert (=> bs!243332 m!1178433))

(declare-fun m!1178685 () Bool)

(assert (=> bs!243332 m!1178685))

(assert (=> b!977918 d!287717))

(declare-fun bs!243333 () Bool)

(declare-fun d!287719 () Bool)

(assert (= bs!243333 (and d!287719 b!977918)))

(declare-fun lambda!34833 () Int)

(assert (=> bs!243333 (= lambda!34833 lambda!34799)))

(assert (=> bs!243333 (not (= lambda!34833 lambda!34800))))

(declare-fun bs!243334 () Bool)

(assert (= bs!243334 (and d!287719 b!978327)))

(assert (=> bs!243334 (not (= lambda!34833 lambda!34823))))

(declare-fun bs!243335 () Bool)

(assert (= bs!243335 (and d!287719 b!978098)))

(assert (=> bs!243335 (not (= lambda!34833 lambda!34809))))

(declare-fun bs!243336 () Bool)

(assert (= bs!243336 (and d!287719 b!978099)))

(assert (=> bs!243336 (not (= lambda!34833 lambda!34810))))

(declare-fun bs!243337 () Bool)

(assert (= bs!243337 (and d!287719 b!978328)))

(assert (=> bs!243337 (not (= lambda!34833 lambda!34825))))

(declare-fun bs!243338 () Bool)

(assert (= bs!243338 (and d!287719 d!287717)))

(assert (=> bs!243338 (= lambda!34833 lambda!34828)))

(assert (=> d!287719 true))

(assert (=> d!287719 true))

(assert (=> d!287719 true))

(declare-fun lambda!34834 () Int)

(assert (=> bs!243333 (not (= lambda!34834 lambda!34799))))

(assert (=> bs!243333 (= lambda!34834 lambda!34800)))

(assert (=> bs!243334 (not (= lambda!34834 lambda!34823))))

(assert (=> bs!243335 (not (= lambda!34834 lambda!34809))))

(assert (=> bs!243336 (= (= EmptyExpr!2731 (regTwo!5974 r!15766)) (= lambda!34834 lambda!34810))))

(declare-fun bs!243339 () Bool)

(assert (= bs!243339 d!287719))

(assert (=> bs!243339 (not (= lambda!34834 lambda!34833))))

(assert (=> bs!243337 (= (and (= s!10566 (_1!6484 lt!349754)) (= (regOne!5974 r!15766) (regOne!5974 (regOne!5974 r!15766))) (= EmptyExpr!2731 (regTwo!5974 (regOne!5974 r!15766)))) (= lambda!34834 lambda!34825))))

(assert (=> bs!243338 (not (= lambda!34834 lambda!34828))))

(assert (=> d!287719 true))

(assert (=> d!287719 true))

(assert (=> d!287719 true))

(assert (=> d!287719 (= (Exists!468 lambda!34833) (Exists!468 lambda!34834))))

(declare-fun lt!349817 () Unit!15121)

(declare-fun choose!6205 (Regex!2731 Regex!2731 List!9961) Unit!15121)

(assert (=> d!287719 (= lt!349817 (choose!6205 (regOne!5974 r!15766) EmptyExpr!2731 s!10566))))

(assert (=> d!287719 (validRegex!1200 (regOne!5974 r!15766))))

(assert (=> d!287719 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!226 (regOne!5974 r!15766) EmptyExpr!2731 s!10566) lt!349817)))

(declare-fun m!1178687 () Bool)

(assert (=> bs!243339 m!1178687))

(declare-fun m!1178689 () Bool)

(assert (=> bs!243339 m!1178689))

(declare-fun m!1178691 () Bool)

(assert (=> bs!243339 m!1178691))

(assert (=> bs!243339 m!1178449))

(assert (=> b!977918 d!287719))

(declare-fun d!287721 () Bool)

(assert (=> d!287721 (= (Exists!468 lambda!34800) (choose!6203 lambda!34800))))

(declare-fun bs!243340 () Bool)

(assert (= bs!243340 d!287721))

(declare-fun m!1178693 () Bool)

(assert (=> bs!243340 m!1178693))

(assert (=> b!977918 d!287721))

(declare-fun d!287723 () Bool)

(declare-fun isEmpty!6267 (Option!2300) Bool)

(assert (=> d!287723 (= (isDefined!1942 lt!349753) (not (isEmpty!6267 lt!349753)))))

(declare-fun bs!243341 () Bool)

(assert (= bs!243341 d!287723))

(declare-fun m!1178695 () Bool)

(assert (=> bs!243341 m!1178695))

(assert (=> b!977918 d!287723))

(declare-fun b!978499 () Bool)

(declare-fun e!629870 () Bool)

(declare-fun tp!299114 () Bool)

(assert (=> b!978499 (= e!629870 tp!299114)))

(declare-fun b!978497 () Bool)

(assert (=> b!978497 (= e!629870 tp_is_empty!5105)))

(declare-fun b!978498 () Bool)

(declare-fun tp!299116 () Bool)

(declare-fun tp!299115 () Bool)

(assert (=> b!978498 (= e!629870 (and tp!299116 tp!299115))))

(assert (=> b!977916 (= tp!299064 e!629870)))

(declare-fun b!978500 () Bool)

(declare-fun tp!299113 () Bool)

(declare-fun tp!299117 () Bool)

(assert (=> b!978500 (= e!629870 (and tp!299113 tp!299117))))

(assert (= (and b!977916 ((_ is ElementMatch!2731) (regOne!5975 r!15766))) b!978497))

(assert (= (and b!977916 ((_ is Concat!4564) (regOne!5975 r!15766))) b!978498))

(assert (= (and b!977916 ((_ is Star!2731) (regOne!5975 r!15766))) b!978499))

(assert (= (and b!977916 ((_ is Union!2731) (regOne!5975 r!15766))) b!978500))

(declare-fun b!978503 () Bool)

(declare-fun e!629871 () Bool)

(declare-fun tp!299119 () Bool)

(assert (=> b!978503 (= e!629871 tp!299119)))

(declare-fun b!978501 () Bool)

(assert (=> b!978501 (= e!629871 tp_is_empty!5105)))

(declare-fun b!978502 () Bool)

(declare-fun tp!299121 () Bool)

(declare-fun tp!299120 () Bool)

(assert (=> b!978502 (= e!629871 (and tp!299121 tp!299120))))

(assert (=> b!977916 (= tp!299061 e!629871)))

(declare-fun b!978504 () Bool)

(declare-fun tp!299118 () Bool)

(declare-fun tp!299122 () Bool)

(assert (=> b!978504 (= e!629871 (and tp!299118 tp!299122))))

(assert (= (and b!977916 ((_ is ElementMatch!2731) (regTwo!5975 r!15766))) b!978501))

(assert (= (and b!977916 ((_ is Concat!4564) (regTwo!5975 r!15766))) b!978502))

(assert (= (and b!977916 ((_ is Star!2731) (regTwo!5975 r!15766))) b!978503))

(assert (= (and b!977916 ((_ is Union!2731) (regTwo!5975 r!15766))) b!978504))

(declare-fun b!978507 () Bool)

(declare-fun e!629872 () Bool)

(declare-fun tp!299124 () Bool)

(assert (=> b!978507 (= e!629872 tp!299124)))

(declare-fun b!978505 () Bool)

(assert (=> b!978505 (= e!629872 tp_is_empty!5105)))

(declare-fun b!978506 () Bool)

(declare-fun tp!299126 () Bool)

(declare-fun tp!299125 () Bool)

(assert (=> b!978506 (= e!629872 (and tp!299126 tp!299125))))

(assert (=> b!977924 (= tp!299059 e!629872)))

(declare-fun b!978508 () Bool)

(declare-fun tp!299123 () Bool)

(declare-fun tp!299127 () Bool)

(assert (=> b!978508 (= e!629872 (and tp!299123 tp!299127))))

(assert (= (and b!977924 ((_ is ElementMatch!2731) (reg!3060 r!15766))) b!978505))

(assert (= (and b!977924 ((_ is Concat!4564) (reg!3060 r!15766))) b!978506))

(assert (= (and b!977924 ((_ is Star!2731) (reg!3060 r!15766))) b!978507))

(assert (= (and b!977924 ((_ is Union!2731) (reg!3060 r!15766))) b!978508))

(declare-fun b!978511 () Bool)

(declare-fun e!629873 () Bool)

(declare-fun tp!299129 () Bool)

(assert (=> b!978511 (= e!629873 tp!299129)))

(declare-fun b!978509 () Bool)

(assert (=> b!978509 (= e!629873 tp_is_empty!5105)))

(declare-fun b!978510 () Bool)

(declare-fun tp!299131 () Bool)

(declare-fun tp!299130 () Bool)

(assert (=> b!978510 (= e!629873 (and tp!299131 tp!299130))))

(assert (=> b!977919 (= tp!299063 e!629873)))

(declare-fun b!978512 () Bool)

(declare-fun tp!299128 () Bool)

(declare-fun tp!299132 () Bool)

(assert (=> b!978512 (= e!629873 (and tp!299128 tp!299132))))

(assert (= (and b!977919 ((_ is ElementMatch!2731) (regOne!5974 r!15766))) b!978509))

(assert (= (and b!977919 ((_ is Concat!4564) (regOne!5974 r!15766))) b!978510))

(assert (= (and b!977919 ((_ is Star!2731) (regOne!5974 r!15766))) b!978511))

(assert (= (and b!977919 ((_ is Union!2731) (regOne!5974 r!15766))) b!978512))

(declare-fun b!978515 () Bool)

(declare-fun e!629874 () Bool)

(declare-fun tp!299134 () Bool)

(assert (=> b!978515 (= e!629874 tp!299134)))

(declare-fun b!978513 () Bool)

(assert (=> b!978513 (= e!629874 tp_is_empty!5105)))

(declare-fun b!978514 () Bool)

(declare-fun tp!299136 () Bool)

(declare-fun tp!299135 () Bool)

(assert (=> b!978514 (= e!629874 (and tp!299136 tp!299135))))

(assert (=> b!977919 (= tp!299060 e!629874)))

(declare-fun b!978516 () Bool)

(declare-fun tp!299133 () Bool)

(declare-fun tp!299137 () Bool)

(assert (=> b!978516 (= e!629874 (and tp!299133 tp!299137))))

(assert (= (and b!977919 ((_ is ElementMatch!2731) (regTwo!5974 r!15766))) b!978513))

(assert (= (and b!977919 ((_ is Concat!4564) (regTwo!5974 r!15766))) b!978514))

(assert (= (and b!977919 ((_ is Star!2731) (regTwo!5974 r!15766))) b!978515))

(assert (= (and b!977919 ((_ is Union!2731) (regTwo!5974 r!15766))) b!978516))

(declare-fun b!978521 () Bool)

(declare-fun e!629877 () Bool)

(declare-fun tp!299140 () Bool)

(assert (=> b!978521 (= e!629877 (and tp_is_empty!5105 tp!299140))))

(assert (=> b!977925 (= tp!299062 e!629877)))

(assert (= (and b!977925 ((_ is Cons!9945) (t!101007 s!10566))) b!978521))

(check-sat (not b!978471) (not b!978321) (not b!978502) (not b!978304) (not b!978330) (not b!978511) (not b!978230) (not b!978470) (not bm!62594) (not bm!62614) (not b!978516) (not bm!62610) (not d!287679) (not b!978472) (not bm!62620) (not bm!62588) (not b!978512) (not d!287709) (not bm!62591) (not b!978506) (not b!978508) (not b!978515) (not b!978269) (not d!287723) (not b!978271) (not bm!62587) (not bm!62579) (not b!978510) (not d!287711) (not b!978504) (not b!978225) (not b!978275) (not b!978500) (not b!978503) (not b!978499) (not bm!62563) (not b!978468) (not bm!62617) (not b!978447) (not b!978469) (not b!978326) (not bm!62612) (not d!287657) (not d!287717) (not d!287699) (not b!978521) (not bm!62590) (not b!978228) (not b!978101) (not bm!62611) (not b!978507) (not bm!62618) (not b!978266) (not d!287677) (not b!978235) (not b!978473) (not bm!62562) (not bm!62613) (not b!978097) (not b!978233) (not b!978276) (not bm!62580) (not bm!62619) (not bm!62621) (not b!978498) (not d!287719) tp_is_empty!5105 (not b!978514) (not bm!62593) (not d!287721) (not b!978428) (not b!978234) (not b!978274))
(check-sat)
(get-model)

(declare-fun d!287725 () Bool)

(assert (=> d!287725 (= (maxBigInt!0 call!62625 call!62627) (ite (>= call!62625 call!62627) call!62625 call!62627))))

(assert (=> bm!62621 d!287725))

(declare-fun d!287727 () Bool)

(assert (=> d!287727 (= (maxBigInt!0 call!62618 call!62620) (ite (>= call!62618 call!62620) call!62618 call!62620))))

(assert (=> bm!62614 d!287727))

(declare-fun d!287729 () Bool)

(declare-fun nullableFct!201 (Regex!2731) Bool)

(assert (=> d!287729 (= (nullable!847 (reg!3060 (regOne!5974 r!15766))) (nullableFct!201 (reg!3060 (regOne!5974 r!15766))))))

(declare-fun bs!243342 () Bool)

(assert (= bs!243342 d!287729))

(declare-fun m!1178697 () Bool)

(assert (=> bs!243342 m!1178697))

(assert (=> b!978321 d!287729))

(assert (=> d!287657 d!287691))

(assert (=> d!287657 d!287687))

(declare-fun d!287731 () Bool)

(assert (=> d!287731 (= (head!1806 (_1!6484 lt!349754)) (h!15346 (_1!6484 lt!349754)))))

(assert (=> b!978275 d!287731))

(declare-fun d!287733 () Bool)

(assert (=> d!287733 true))

(assert (=> d!287733 true))

(declare-fun res!444387 () Bool)

(assert (=> d!287733 (= (choose!6203 lambda!34799) res!444387)))

(assert (=> d!287711 d!287733))

(declare-fun d!287735 () Bool)

(assert (=> d!287735 (= (isEmpty!6265 (tail!1368 s!10566)) ((_ is Nil!9945) (tail!1368 s!10566)))))

(assert (=> b!978233 d!287735))

(declare-fun d!287737 () Bool)

(assert (=> d!287737 (= (tail!1368 s!10566) (t!101007 s!10566))))

(assert (=> b!978233 d!287737))

(assert (=> d!287699 d!287679))

(assert (=> d!287699 d!287695))

(declare-fun d!287739 () Bool)

(assert (=> d!287739 (= (matchR!1267 (regOne!5974 r!15766) (_1!6484 lt!349754)) (matchRSpec!530 (regOne!5974 r!15766) (_1!6484 lt!349754)))))

(assert (=> d!287739 true))

(declare-fun _$88!3037 () Unit!15121)

(assert (=> d!287739 (= (choose!6200 (regOne!5974 r!15766) (_1!6484 lt!349754)) _$88!3037)))

(declare-fun bs!243343 () Bool)

(assert (= bs!243343 d!287739))

(assert (=> bs!243343 m!1178447))

(assert (=> bs!243343 m!1178451))

(assert (=> d!287699 d!287739))

(assert (=> d!287699 d!287693))

(declare-fun b!978523 () Bool)

(declare-fun res!444392 () Bool)

(declare-fun e!629882 () Bool)

(assert (=> b!978523 (=> res!444392 e!629882)))

(assert (=> b!978523 (= res!444392 (not ((_ is Concat!4564) (ite c!159790 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))))))

(declare-fun e!629881 () Bool)

(assert (=> b!978523 (= e!629881 e!629882)))

(declare-fun b!978524 () Bool)

(declare-fun e!629878 () Bool)

(assert (=> b!978524 (= e!629882 e!629878)))

(declare-fun res!444388 () Bool)

(assert (=> b!978524 (=> (not res!444388) (not e!629878))))

(declare-fun call!62629 () Bool)

(assert (=> b!978524 (= res!444388 call!62629)))

(declare-fun b!978525 () Bool)

(declare-fun call!62628 () Bool)

(assert (=> b!978525 (= e!629878 call!62628)))

(declare-fun d!287741 () Bool)

(declare-fun res!444389 () Bool)

(declare-fun e!629880 () Bool)

(assert (=> d!287741 (=> res!444389 e!629880)))

(assert (=> d!287741 (= res!444389 ((_ is ElementMatch!2731) (ite c!159790 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))))))

(assert (=> d!287741 (= (validRegex!1200 (ite c!159790 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))) e!629880)))

(declare-fun b!978526 () Bool)

(declare-fun res!444390 () Bool)

(declare-fun e!629883 () Bool)

(assert (=> b!978526 (=> (not res!444390) (not e!629883))))

(assert (=> b!978526 (= res!444390 call!62629)))

(assert (=> b!978526 (= e!629881 e!629883)))

(declare-fun b!978527 () Bool)

(declare-fun e!629884 () Bool)

(declare-fun e!629879 () Bool)

(assert (=> b!978527 (= e!629884 e!629879)))

(declare-fun res!444391 () Bool)

(assert (=> b!978527 (= res!444391 (not (nullable!847 (reg!3060 (ite c!159790 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))))))))

(assert (=> b!978527 (=> (not res!444391) (not e!629879))))

(declare-fun call!62630 () Bool)

(declare-fun c!159834 () Bool)

(declare-fun c!159833 () Bool)

(declare-fun bm!62623 () Bool)

(assert (=> bm!62623 (= call!62630 (validRegex!1200 (ite c!159833 (reg!3060 (ite c!159790 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))) (ite c!159834 (regTwo!5975 (ite c!159790 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))) (regTwo!5974 (ite c!159790 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))))))))

(declare-fun bm!62624 () Bool)

(assert (=> bm!62624 (= call!62629 (validRegex!1200 (ite c!159834 (regOne!5975 (ite c!159790 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))) (regOne!5974 (ite c!159790 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))))))))

(declare-fun b!978528 () Bool)

(assert (=> b!978528 (= e!629880 e!629884)))

(assert (=> b!978528 (= c!159833 ((_ is Star!2731) (ite c!159790 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))))))

(declare-fun b!978529 () Bool)

(assert (=> b!978529 (= e!629879 call!62630)))

(declare-fun bm!62625 () Bool)

(assert (=> bm!62625 (= call!62628 call!62630)))

(declare-fun b!978530 () Bool)

(assert (=> b!978530 (= e!629884 e!629881)))

(assert (=> b!978530 (= c!159834 ((_ is Union!2731) (ite c!159790 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))))))

(declare-fun b!978531 () Bool)

(assert (=> b!978531 (= e!629883 call!62628)))

(assert (= (and d!287741 (not res!444389)) b!978528))

(assert (= (and b!978528 c!159833) b!978527))

(assert (= (and b!978528 (not c!159833)) b!978530))

(assert (= (and b!978527 res!444391) b!978529))

(assert (= (and b!978530 c!159834) b!978526))

(assert (= (and b!978530 (not c!159834)) b!978523))

(assert (= (and b!978526 res!444390) b!978531))

(assert (= (and b!978523 (not res!444392)) b!978524))

(assert (= (and b!978524 res!444388) b!978525))

(assert (= (or b!978531 b!978525) bm!62625))

(assert (= (or b!978526 b!978524) bm!62624))

(assert (= (or b!978529 bm!62625) bm!62623))

(declare-fun m!1178699 () Bool)

(assert (=> b!978527 m!1178699))

(declare-fun m!1178701 () Bool)

(assert (=> bm!62623 m!1178701))

(declare-fun m!1178703 () Bool)

(assert (=> bm!62624 m!1178703))

(assert (=> bm!62591 d!287741))

(assert (=> d!287677 d!287657))

(assert (=> d!287677 d!287643))

(declare-fun d!287743 () Bool)

(assert (=> d!287743 (= (matchR!1267 r!15766 s!10566) (matchRSpec!530 r!15766 s!10566))))

(assert (=> d!287743 true))

(declare-fun _$88!3038 () Unit!15121)

(assert (=> d!287743 (= (choose!6200 r!15766 s!10566) _$88!3038)))

(declare-fun bs!243344 () Bool)

(assert (= bs!243344 d!287743))

(assert (=> bs!243344 m!1178457))

(assert (=> bs!243344 m!1178455))

(assert (=> d!287677 d!287743))

(assert (=> d!287677 d!287687))

(declare-fun b!978532 () Bool)

(declare-fun e!629894 () Bool)

(declare-fun e!629892 () Bool)

(assert (=> b!978532 (= e!629894 e!629892)))

(declare-fun res!444393 () Bool)

(declare-fun lt!349818 () Int)

(declare-fun call!62631 () Int)

(assert (=> b!978532 (= res!444393 (> lt!349818 call!62631))))

(assert (=> b!978532 (=> (not res!444393) (not e!629892))))

(declare-fun b!978533 () Bool)

(declare-fun c!159837 () Bool)

(assert (=> b!978533 (= c!159837 ((_ is Star!2731) (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766))))))

(declare-fun e!629887 () Bool)

(declare-fun e!629890 () Bool)

(assert (=> b!978533 (= e!629887 e!629890)))

(declare-fun bm!62626 () Bool)

(declare-fun call!62636 () Int)

(assert (=> bm!62626 (= call!62636 call!62631)))

(declare-fun b!978534 () Bool)

(declare-fun e!629886 () Bool)

(assert (=> b!978534 (= e!629886 e!629894)))

(declare-fun c!159835 () Bool)

(assert (=> b!978534 (= c!159835 ((_ is Union!2731) (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766))))))

(declare-fun b!978535 () Bool)

(declare-fun c!159840 () Bool)

(assert (=> b!978535 (= c!159840 ((_ is Union!2731) (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766))))))

(declare-fun e!629893 () Int)

(declare-fun e!629889 () Int)

(assert (=> b!978535 (= e!629893 e!629889)))

(declare-fun d!287745 () Bool)

(assert (=> d!287745 e!629886))

(declare-fun res!444395 () Bool)

(assert (=> d!287745 (=> (not res!444395) (not e!629886))))

(assert (=> d!287745 (= res!444395 (> lt!349818 0))))

(declare-fun e!629885 () Int)

(assert (=> d!287745 (= lt!349818 e!629885)))

(declare-fun c!159836 () Bool)

(assert (=> d!287745 (= c!159836 ((_ is ElementMatch!2731) (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766))))))

(assert (=> d!287745 (= (regexDepth!18 (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766))) lt!349818)))

(declare-fun bm!62627 () Bool)

(declare-fun call!62632 () Int)

(assert (=> bm!62627 (= call!62632 (regexDepth!18 (ite c!159835 (regTwo!5975 (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766))) (regOne!5974 (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766))))))))

(declare-fun b!978536 () Bool)

(assert (=> b!978536 (= e!629885 e!629893)))

(declare-fun c!159838 () Bool)

(assert (=> b!978536 (= c!159838 ((_ is Star!2731) (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766))))))

(declare-fun b!978537 () Bool)

(assert (=> b!978537 (= e!629892 (> lt!349818 call!62632))))

(declare-fun b!978538 () Bool)

(declare-fun e!629891 () Int)

(declare-fun call!62634 () Int)

(assert (=> b!978538 (= e!629891 (+ 1 call!62634))))

(declare-fun b!978539 () Bool)

(assert (=> b!978539 (= e!629889 e!629891)))

(declare-fun c!159839 () Bool)

(assert (=> b!978539 (= c!159839 ((_ is Concat!4564) (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766))))))

(declare-fun call!62637 () Int)

(declare-fun bm!62628 () Bool)

(assert (=> bm!62628 (= call!62637 (regexDepth!18 (ite c!159840 (regTwo!5975 (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766))) (regTwo!5974 (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766))))))))

(declare-fun b!978540 () Bool)

(declare-fun e!629888 () Bool)

(assert (=> b!978540 (= e!629888 (> lt!349818 call!62636))))

(declare-fun c!159841 () Bool)

(declare-fun bm!62629 () Bool)

(assert (=> bm!62629 (= call!62631 (regexDepth!18 (ite c!159835 (regOne!5975 (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766))) (ite c!159841 (regTwo!5974 (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766))) (reg!3060 (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766)))))))))

(declare-fun b!978541 () Bool)

(declare-fun res!444394 () Bool)

(assert (=> b!978541 (=> (not res!444394) (not e!629888))))

(assert (=> b!978541 (= res!444394 (> lt!349818 call!62632))))

(assert (=> b!978541 (= e!629887 e!629888)))

(declare-fun call!62633 () Int)

(declare-fun bm!62630 () Bool)

(assert (=> bm!62630 (= call!62633 (regexDepth!18 (ite c!159838 (reg!3060 (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766))) (ite c!159840 (regOne!5975 (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766))) (regOne!5974 (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766)))))))))

(declare-fun b!978542 () Bool)

(assert (=> b!978542 (= e!629889 (+ 1 call!62634))))

(declare-fun b!978543 () Bool)

(assert (=> b!978543 (= e!629893 (+ 1 call!62633))))

(declare-fun b!978544 () Bool)

(assert (=> b!978544 (= e!629894 e!629887)))

(assert (=> b!978544 (= c!159841 ((_ is Concat!4564) (ite c!159819 (regTwo!5975 r!15766) (regOne!5974 r!15766))))))

(declare-fun b!978545 () Bool)

(assert (=> b!978545 (= e!629890 (> lt!349818 call!62636))))

(declare-fun b!978546 () Bool)

(assert (=> b!978546 (= e!629890 (= lt!349818 1))))

(declare-fun b!978547 () Bool)

(assert (=> b!978547 (= e!629885 1)))

(declare-fun b!978548 () Bool)

(assert (=> b!978548 (= e!629891 1)))

(declare-fun bm!62631 () Bool)

(declare-fun call!62635 () Int)

(assert (=> bm!62631 (= call!62634 (maxBigInt!0 call!62635 call!62637))))

(declare-fun bm!62632 () Bool)

(assert (=> bm!62632 (= call!62635 call!62633)))

(assert (= (and d!287745 c!159836) b!978547))

(assert (= (and d!287745 (not c!159836)) b!978536))

(assert (= (and b!978536 c!159838) b!978543))

(assert (= (and b!978536 (not c!159838)) b!978535))

(assert (= (and b!978535 c!159840) b!978542))

(assert (= (and b!978535 (not c!159840)) b!978539))

(assert (= (and b!978539 c!159839) b!978538))

(assert (= (and b!978539 (not c!159839)) b!978548))

(assert (= (or b!978542 b!978538) bm!62628))

(assert (= (or b!978542 b!978538) bm!62632))

(assert (= (or b!978542 b!978538) bm!62631))

(assert (= (or b!978543 bm!62632) bm!62630))

(assert (= (and d!287745 res!444395) b!978534))

(assert (= (and b!978534 c!159835) b!978532))

(assert (= (and b!978534 (not c!159835)) b!978544))

(assert (= (and b!978532 res!444393) b!978537))

(assert (= (and b!978544 c!159841) b!978541))

(assert (= (and b!978544 (not c!159841)) b!978533))

(assert (= (and b!978541 res!444394) b!978540))

(assert (= (and b!978533 c!159837) b!978545))

(assert (= (and b!978533 (not c!159837)) b!978546))

(assert (= (or b!978540 b!978545) bm!62626))

(assert (= (or b!978537 b!978541) bm!62627))

(assert (= (or b!978532 bm!62626) bm!62629))

(declare-fun m!1178705 () Bool)

(assert (=> bm!62628 m!1178705))

(declare-fun m!1178707 () Bool)

(assert (=> bm!62629 m!1178707))

(declare-fun m!1178709 () Bool)

(assert (=> bm!62630 m!1178709))

(declare-fun m!1178711 () Bool)

(assert (=> bm!62631 m!1178711))

(declare-fun m!1178713 () Bool)

(assert (=> bm!62627 m!1178713))

(assert (=> bm!62617 d!287745))

(declare-fun b!978549 () Bool)

(declare-fun e!629904 () Bool)

(declare-fun e!629902 () Bool)

(assert (=> b!978549 (= e!629904 e!629902)))

(declare-fun res!444396 () Bool)

(declare-fun lt!349819 () Int)

(declare-fun call!62638 () Int)

(assert (=> b!978549 (= res!444396 (> lt!349819 call!62638))))

(assert (=> b!978549 (=> (not res!444396) (not e!629902))))

(declare-fun b!978550 () Bool)

(declare-fun c!159844 () Bool)

(assert (=> b!978550 (= c!159844 ((_ is Star!2731) (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))))))

(declare-fun e!629897 () Bool)

(declare-fun e!629900 () Bool)

(assert (=> b!978550 (= e!629897 e!629900)))

(declare-fun bm!62633 () Bool)

(declare-fun call!62643 () Int)

(assert (=> bm!62633 (= call!62643 call!62638)))

(declare-fun b!978551 () Bool)

(declare-fun e!629896 () Bool)

(assert (=> b!978551 (= e!629896 e!629904)))

(declare-fun c!159842 () Bool)

(assert (=> b!978551 (= c!159842 ((_ is Union!2731) (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))))))

(declare-fun b!978552 () Bool)

(declare-fun c!159847 () Bool)

(assert (=> b!978552 (= c!159847 ((_ is Union!2731) (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))))))

(declare-fun e!629903 () Int)

(declare-fun e!629899 () Int)

(assert (=> b!978552 (= e!629903 e!629899)))

(declare-fun d!287747 () Bool)

(assert (=> d!287747 e!629896))

(declare-fun res!444398 () Bool)

(assert (=> d!287747 (=> (not res!444398) (not e!629896))))

(assert (=> d!287747 (= res!444398 (> lt!349819 0))))

(declare-fun e!629895 () Int)

(assert (=> d!287747 (= lt!349819 e!629895)))

(declare-fun c!159843 () Bool)

(assert (=> d!287747 (= c!159843 ((_ is ElementMatch!2731) (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))))))

(assert (=> d!287747 (= (regexDepth!18 (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))) lt!349819)))

(declare-fun call!62639 () Int)

(declare-fun bm!62634 () Bool)

(assert (=> bm!62634 (= call!62639 (regexDepth!18 (ite c!159842 (regTwo!5975 (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))) (regOne!5974 (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))))))))

(declare-fun b!978553 () Bool)

(assert (=> b!978553 (= e!629895 e!629903)))

(declare-fun c!159845 () Bool)

(assert (=> b!978553 (= c!159845 ((_ is Star!2731) (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))))))

(declare-fun b!978554 () Bool)

(assert (=> b!978554 (= e!629902 (> lt!349819 call!62639))))

(declare-fun b!978555 () Bool)

(declare-fun e!629901 () Int)

(declare-fun call!62641 () Int)

(assert (=> b!978555 (= e!629901 (+ 1 call!62641))))

(declare-fun b!978556 () Bool)

(assert (=> b!978556 (= e!629899 e!629901)))

(declare-fun c!159846 () Bool)

(assert (=> b!978556 (= c!159846 ((_ is Concat!4564) (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))))))

(declare-fun call!62644 () Int)

(declare-fun bm!62635 () Bool)

(assert (=> bm!62635 (= call!62644 (regexDepth!18 (ite c!159847 (regTwo!5975 (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))) (regTwo!5974 (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))))))))

(declare-fun b!978557 () Bool)

(declare-fun e!629898 () Bool)

(assert (=> b!978557 (= e!629898 (> lt!349819 call!62643))))

(declare-fun c!159848 () Bool)

(declare-fun bm!62636 () Bool)

(assert (=> bm!62636 (= call!62638 (regexDepth!18 (ite c!159842 (regOne!5975 (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))) (ite c!159848 (regTwo!5974 (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))) (reg!3060 (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))))))))

(declare-fun b!978558 () Bool)

(declare-fun res!444397 () Bool)

(assert (=> b!978558 (=> (not res!444397) (not e!629898))))

(assert (=> b!978558 (= res!444397 (> lt!349819 call!62639))))

(assert (=> b!978558 (= e!629897 e!629898)))

(declare-fun bm!62637 () Bool)

(declare-fun call!62640 () Int)

(assert (=> bm!62637 (= call!62640 (regexDepth!18 (ite c!159845 (reg!3060 (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))) (ite c!159847 (regOne!5975 (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))) (regOne!5974 (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))))))))

(declare-fun b!978559 () Bool)

(assert (=> b!978559 (= e!629899 (+ 1 call!62641))))

(declare-fun b!978560 () Bool)

(assert (=> b!978560 (= e!629903 (+ 1 call!62640))))

(declare-fun b!978561 () Bool)

(assert (=> b!978561 (= e!629904 e!629897)))

(assert (=> b!978561 (= c!159848 ((_ is Concat!4564) (ite c!159809 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))))))

(declare-fun b!978562 () Bool)

(assert (=> b!978562 (= e!629900 (> lt!349819 call!62643))))

(declare-fun b!978563 () Bool)

(assert (=> b!978563 (= e!629900 (= lt!349819 1))))

(declare-fun b!978564 () Bool)

(assert (=> b!978564 (= e!629895 1)))

(declare-fun b!978565 () Bool)

(assert (=> b!978565 (= e!629901 1)))

(declare-fun bm!62638 () Bool)

(declare-fun call!62642 () Int)

(assert (=> bm!62638 (= call!62641 (maxBigInt!0 call!62642 call!62644))))

(declare-fun bm!62639 () Bool)

(assert (=> bm!62639 (= call!62642 call!62640)))

(assert (= (and d!287747 c!159843) b!978564))

(assert (= (and d!287747 (not c!159843)) b!978553))

(assert (= (and b!978553 c!159845) b!978560))

(assert (= (and b!978553 (not c!159845)) b!978552))

(assert (= (and b!978552 c!159847) b!978559))

(assert (= (and b!978552 (not c!159847)) b!978556))

(assert (= (and b!978556 c!159846) b!978555))

(assert (= (and b!978556 (not c!159846)) b!978565))

(assert (= (or b!978559 b!978555) bm!62635))

(assert (= (or b!978559 b!978555) bm!62639))

(assert (= (or b!978559 b!978555) bm!62638))

(assert (= (or b!978560 bm!62639) bm!62637))

(assert (= (and d!287747 res!444398) b!978551))

(assert (= (and b!978551 c!159842) b!978549))

(assert (= (and b!978551 (not c!159842)) b!978561))

(assert (= (and b!978549 res!444396) b!978554))

(assert (= (and b!978561 c!159848) b!978558))

(assert (= (and b!978561 (not c!159848)) b!978550))

(assert (= (and b!978558 res!444397) b!978557))

(assert (= (and b!978550 c!159844) b!978562))

(assert (= (and b!978550 (not c!159844)) b!978563))

(assert (= (or b!978557 b!978562) bm!62633))

(assert (= (or b!978554 b!978558) bm!62634))

(assert (= (or b!978549 bm!62633) bm!62636))

(declare-fun m!1178715 () Bool)

(assert (=> bm!62635 m!1178715))

(declare-fun m!1178717 () Bool)

(assert (=> bm!62636 m!1178717))

(declare-fun m!1178719 () Bool)

(assert (=> bm!62637 m!1178719))

(declare-fun m!1178721 () Bool)

(assert (=> bm!62638 m!1178721))

(declare-fun m!1178723 () Bool)

(assert (=> bm!62634 m!1178723))

(assert (=> bm!62610 d!287747))

(declare-fun b!978566 () Bool)

(declare-fun e!629914 () Bool)

(declare-fun e!629912 () Bool)

(assert (=> b!978566 (= e!629914 e!629912)))

(declare-fun res!444399 () Bool)

(declare-fun lt!349820 () Int)

(declare-fun call!62645 () Int)

(assert (=> b!978566 (= res!444399 (> lt!349820 call!62645))))

(assert (=> b!978566 (=> (not res!444399) (not e!629912))))

(declare-fun c!159851 () Bool)

(declare-fun b!978567 () Bool)

(assert (=> b!978567 (= c!159851 ((_ is Star!2731) (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766))))))))

(declare-fun e!629907 () Bool)

(declare-fun e!629910 () Bool)

(assert (=> b!978567 (= e!629907 e!629910)))

(declare-fun bm!62640 () Bool)

(declare-fun call!62650 () Int)

(assert (=> bm!62640 (= call!62650 call!62645)))

(declare-fun b!978568 () Bool)

(declare-fun e!629906 () Bool)

(assert (=> b!978568 (= e!629906 e!629914)))

(declare-fun c!159849 () Bool)

(assert (=> b!978568 (= c!159849 ((_ is Union!2731) (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766))))))))

(declare-fun c!159854 () Bool)

(declare-fun b!978569 () Bool)

(assert (=> b!978569 (= c!159854 ((_ is Union!2731) (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766))))))))

(declare-fun e!629913 () Int)

(declare-fun e!629909 () Int)

(assert (=> b!978569 (= e!629913 e!629909)))

(declare-fun d!287749 () Bool)

(assert (=> d!287749 e!629906))

(declare-fun res!444401 () Bool)

(assert (=> d!287749 (=> (not res!444401) (not e!629906))))

(assert (=> d!287749 (= res!444401 (> lt!349820 0))))

(declare-fun e!629905 () Int)

(assert (=> d!287749 (= lt!349820 e!629905)))

(declare-fun c!159850 () Bool)

(assert (=> d!287749 (= c!159850 ((_ is ElementMatch!2731) (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766))))))))

(assert (=> d!287749 (= (regexDepth!18 (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766))))) lt!349820)))

(declare-fun call!62646 () Int)

(declare-fun bm!62641 () Bool)

(assert (=> bm!62641 (= call!62646 (regexDepth!18 (ite c!159849 (regTwo!5975 (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766))))) (regOne!5974 (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766))))))))))

(declare-fun b!978570 () Bool)

(assert (=> b!978570 (= e!629905 e!629913)))

(declare-fun c!159852 () Bool)

(assert (=> b!978570 (= c!159852 ((_ is Star!2731) (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766))))))))

(declare-fun b!978571 () Bool)

(assert (=> b!978571 (= e!629912 (> lt!349820 call!62646))))

(declare-fun b!978572 () Bool)

(declare-fun e!629911 () Int)

(declare-fun call!62648 () Int)

(assert (=> b!978572 (= e!629911 (+ 1 call!62648))))

(declare-fun b!978573 () Bool)

(assert (=> b!978573 (= e!629909 e!629911)))

(declare-fun c!159853 () Bool)

(assert (=> b!978573 (= c!159853 ((_ is Concat!4564) (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766))))))))

(declare-fun bm!62642 () Bool)

(declare-fun call!62651 () Int)

(assert (=> bm!62642 (= call!62651 (regexDepth!18 (ite c!159854 (regTwo!5975 (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766))))) (regTwo!5974 (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766))))))))))

(declare-fun b!978574 () Bool)

(declare-fun e!629908 () Bool)

(assert (=> b!978574 (= e!629908 (> lt!349820 call!62650))))

(declare-fun bm!62643 () Bool)

(declare-fun c!159855 () Bool)

(assert (=> bm!62643 (= call!62645 (regexDepth!18 (ite c!159849 (regOne!5975 (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766))))) (ite c!159855 (regTwo!5974 (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766))))) (reg!3060 (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766)))))))))))

(declare-fun b!978575 () Bool)

(declare-fun res!444400 () Bool)

(assert (=> b!978575 (=> (not res!444400) (not e!629908))))

(assert (=> b!978575 (= res!444400 (> lt!349820 call!62646))))

(assert (=> b!978575 (= e!629907 e!629908)))

(declare-fun bm!62644 () Bool)

(declare-fun call!62647 () Int)

(assert (=> bm!62644 (= call!62647 (regexDepth!18 (ite c!159852 (reg!3060 (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766))))) (ite c!159854 (regOne!5975 (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766))))) (regOne!5974 (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766)))))))))))

(declare-fun b!978576 () Bool)

(assert (=> b!978576 (= e!629909 (+ 1 call!62648))))

(declare-fun b!978577 () Bool)

(assert (=> b!978577 (= e!629913 (+ 1 call!62647))))

(declare-fun b!978578 () Bool)

(assert (=> b!978578 (= e!629914 e!629907)))

(assert (=> b!978578 (= c!159855 ((_ is Concat!4564) (ite c!159809 (regOne!5975 (regOne!5974 r!15766)) (ite c!159815 (regTwo!5974 (regOne!5974 r!15766)) (reg!3060 (regOne!5974 r!15766))))))))

(declare-fun b!978579 () Bool)

(assert (=> b!978579 (= e!629910 (> lt!349820 call!62650))))

(declare-fun b!978580 () Bool)

(assert (=> b!978580 (= e!629910 (= lt!349820 1))))

(declare-fun b!978581 () Bool)

(assert (=> b!978581 (= e!629905 1)))

(declare-fun b!978582 () Bool)

(assert (=> b!978582 (= e!629911 1)))

(declare-fun bm!62645 () Bool)

(declare-fun call!62649 () Int)

(assert (=> bm!62645 (= call!62648 (maxBigInt!0 call!62649 call!62651))))

(declare-fun bm!62646 () Bool)

(assert (=> bm!62646 (= call!62649 call!62647)))

(assert (= (and d!287749 c!159850) b!978581))

(assert (= (and d!287749 (not c!159850)) b!978570))

(assert (= (and b!978570 c!159852) b!978577))

(assert (= (and b!978570 (not c!159852)) b!978569))

(assert (= (and b!978569 c!159854) b!978576))

(assert (= (and b!978569 (not c!159854)) b!978573))

(assert (= (and b!978573 c!159853) b!978572))

(assert (= (and b!978573 (not c!159853)) b!978582))

(assert (= (or b!978576 b!978572) bm!62642))

(assert (= (or b!978576 b!978572) bm!62646))

(assert (= (or b!978576 b!978572) bm!62645))

(assert (= (or b!978577 bm!62646) bm!62644))

(assert (= (and d!287749 res!444401) b!978568))

(assert (= (and b!978568 c!159849) b!978566))

(assert (= (and b!978568 (not c!159849)) b!978578))

(assert (= (and b!978566 res!444399) b!978571))

(assert (= (and b!978578 c!159855) b!978575))

(assert (= (and b!978578 (not c!159855)) b!978567))

(assert (= (and b!978575 res!444400) b!978574))

(assert (= (and b!978567 c!159851) b!978579))

(assert (= (and b!978567 (not c!159851)) b!978580))

(assert (= (or b!978574 b!978579) bm!62640))

(assert (= (or b!978571 b!978575) bm!62641))

(assert (= (or b!978566 bm!62640) bm!62643))

(declare-fun m!1178725 () Bool)

(assert (=> bm!62642 m!1178725))

(declare-fun m!1178727 () Bool)

(assert (=> bm!62643 m!1178727))

(declare-fun m!1178729 () Bool)

(assert (=> bm!62644 m!1178729))

(declare-fun m!1178731 () Bool)

(assert (=> bm!62645 m!1178731))

(declare-fun m!1178733 () Bool)

(assert (=> bm!62641 m!1178733))

(assert (=> bm!62612 d!287749))

(declare-fun b!978583 () Bool)

(declare-fun res!444402 () Bool)

(declare-fun e!629917 () Bool)

(assert (=> b!978583 (=> (not res!444402) (not e!629917))))

(declare-fun call!62652 () Bool)

(assert (=> b!978583 (= res!444402 (not call!62652))))

(declare-fun b!978584 () Bool)

(declare-fun res!444405 () Bool)

(declare-fun e!629915 () Bool)

(assert (=> b!978584 (=> res!444405 e!629915)))

(assert (=> b!978584 (= res!444405 e!629917)))

(declare-fun res!444408 () Bool)

(assert (=> b!978584 (=> (not res!444408) (not e!629917))))

(declare-fun lt!349821 () Bool)

(assert (=> b!978584 (= res!444408 lt!349821)))

(declare-fun b!978585 () Bool)

(declare-fun e!629919 () Bool)

(assert (=> b!978585 (= e!629919 (matchR!1267 (derivativeStep!653 (derivativeStep!653 (regOne!5974 r!15766) (head!1806 (_1!6484 lt!349754))) (head!1806 (tail!1368 (_1!6484 lt!349754)))) (tail!1368 (tail!1368 (_1!6484 lt!349754)))))))

(declare-fun b!978586 () Bool)

(declare-fun e!629916 () Bool)

(assert (=> b!978586 (= e!629916 (= lt!349821 call!62652))))

(declare-fun bm!62647 () Bool)

(assert (=> bm!62647 (= call!62652 (isEmpty!6265 (tail!1368 (_1!6484 lt!349754))))))

(declare-fun b!978587 () Bool)

(declare-fun e!629920 () Bool)

(declare-fun e!629921 () Bool)

(assert (=> b!978587 (= e!629920 e!629921)))

(declare-fun res!444403 () Bool)

(assert (=> b!978587 (=> res!444403 e!629921)))

(assert (=> b!978587 (= res!444403 call!62652)))

(declare-fun b!978588 () Bool)

(declare-fun res!444404 () Bool)

(assert (=> b!978588 (=> (not res!444404) (not e!629917))))

(assert (=> b!978588 (= res!444404 (isEmpty!6265 (tail!1368 (tail!1368 (_1!6484 lt!349754)))))))

(declare-fun b!978589 () Bool)

(assert (=> b!978589 (= e!629915 e!629920)))

(declare-fun res!444406 () Bool)

(assert (=> b!978589 (=> (not res!444406) (not e!629920))))

(assert (=> b!978589 (= res!444406 (not lt!349821))))

(declare-fun b!978590 () Bool)

(assert (=> b!978590 (= e!629919 (nullable!847 (derivativeStep!653 (regOne!5974 r!15766) (head!1806 (_1!6484 lt!349754)))))))

(declare-fun d!287751 () Bool)

(assert (=> d!287751 e!629916))

(declare-fun c!159857 () Bool)

(assert (=> d!287751 (= c!159857 ((_ is EmptyExpr!2731) (derivativeStep!653 (regOne!5974 r!15766) (head!1806 (_1!6484 lt!349754)))))))

(assert (=> d!287751 (= lt!349821 e!629919)))

(declare-fun c!159856 () Bool)

(assert (=> d!287751 (= c!159856 (isEmpty!6265 (tail!1368 (_1!6484 lt!349754))))))

(assert (=> d!287751 (validRegex!1200 (derivativeStep!653 (regOne!5974 r!15766) (head!1806 (_1!6484 lt!349754))))))

(assert (=> d!287751 (= (matchR!1267 (derivativeStep!653 (regOne!5974 r!15766) (head!1806 (_1!6484 lt!349754))) (tail!1368 (_1!6484 lt!349754))) lt!349821)))

(declare-fun b!978591 () Bool)

(declare-fun res!444409 () Bool)

(assert (=> b!978591 (=> res!444409 e!629915)))

(assert (=> b!978591 (= res!444409 (not ((_ is ElementMatch!2731) (derivativeStep!653 (regOne!5974 r!15766) (head!1806 (_1!6484 lt!349754))))))))

(declare-fun e!629918 () Bool)

(assert (=> b!978591 (= e!629918 e!629915)))

(declare-fun b!978592 () Bool)

(assert (=> b!978592 (= e!629918 (not lt!349821))))

(declare-fun b!978593 () Bool)

(declare-fun res!444407 () Bool)

(assert (=> b!978593 (=> res!444407 e!629921)))

(assert (=> b!978593 (= res!444407 (not (isEmpty!6265 (tail!1368 (tail!1368 (_1!6484 lt!349754))))))))

(declare-fun b!978594 () Bool)

(assert (=> b!978594 (= e!629921 (not (= (head!1806 (tail!1368 (_1!6484 lt!349754))) (c!159684 (derivativeStep!653 (regOne!5974 r!15766) (head!1806 (_1!6484 lt!349754)))))))))

(declare-fun b!978595 () Bool)

(assert (=> b!978595 (= e!629917 (= (head!1806 (tail!1368 (_1!6484 lt!349754))) (c!159684 (derivativeStep!653 (regOne!5974 r!15766) (head!1806 (_1!6484 lt!349754))))))))

(declare-fun b!978596 () Bool)

(assert (=> b!978596 (= e!629916 e!629918)))

(declare-fun c!159858 () Bool)

(assert (=> b!978596 (= c!159858 ((_ is EmptyLang!2731) (derivativeStep!653 (regOne!5974 r!15766) (head!1806 (_1!6484 lt!349754)))))))

(assert (= (and d!287751 c!159856) b!978590))

(assert (= (and d!287751 (not c!159856)) b!978585))

(assert (= (and d!287751 c!159857) b!978586))

(assert (= (and d!287751 (not c!159857)) b!978596))

(assert (= (and b!978596 c!159858) b!978592))

(assert (= (and b!978596 (not c!159858)) b!978591))

(assert (= (and b!978591 (not res!444409)) b!978584))

(assert (= (and b!978584 res!444408) b!978583))

(assert (= (and b!978583 res!444402) b!978588))

(assert (= (and b!978588 res!444404) b!978595))

(assert (= (and b!978584 (not res!444405)) b!978589))

(assert (= (and b!978589 res!444406) b!978587))

(assert (= (and b!978587 (not res!444403)) b!978593))

(assert (= (and b!978593 (not res!444407)) b!978594))

(assert (= (or b!978586 b!978583 b!978587) bm!62647))

(assert (=> b!978594 m!1178589))

(declare-fun m!1178735 () Bool)

(assert (=> b!978594 m!1178735))

(assert (=> b!978590 m!1178595))

(declare-fun m!1178737 () Bool)

(assert (=> b!978590 m!1178737))

(assert (=> b!978593 m!1178589))

(declare-fun m!1178739 () Bool)

(assert (=> b!978593 m!1178739))

(assert (=> b!978593 m!1178739))

(declare-fun m!1178741 () Bool)

(assert (=> b!978593 m!1178741))

(assert (=> b!978588 m!1178589))

(assert (=> b!978588 m!1178739))

(assert (=> b!978588 m!1178739))

(assert (=> b!978588 m!1178741))

(assert (=> d!287751 m!1178589))

(assert (=> d!287751 m!1178591))

(assert (=> d!287751 m!1178595))

(declare-fun m!1178743 () Bool)

(assert (=> d!287751 m!1178743))

(assert (=> bm!62647 m!1178589))

(assert (=> bm!62647 m!1178591))

(assert (=> b!978585 m!1178589))

(assert (=> b!978585 m!1178735))

(assert (=> b!978585 m!1178595))

(assert (=> b!978585 m!1178735))

(declare-fun m!1178745 () Bool)

(assert (=> b!978585 m!1178745))

(assert (=> b!978585 m!1178589))

(assert (=> b!978585 m!1178739))

(assert (=> b!978585 m!1178745))

(assert (=> b!978585 m!1178739))

(declare-fun m!1178747 () Bool)

(assert (=> b!978585 m!1178747))

(assert (=> b!978595 m!1178589))

(assert (=> b!978595 m!1178735))

(assert (=> b!978266 d!287751))

(declare-fun c!159873 () Bool)

(declare-fun c!159871 () Bool)

(declare-fun bm!62656 () Bool)

(declare-fun call!62663 () Regex!2731)

(declare-fun c!159869 () Bool)

(assert (=> bm!62656 (= call!62663 (derivativeStep!653 (ite c!159873 (regOne!5975 (regOne!5974 r!15766)) (ite c!159871 (reg!3060 (regOne!5974 r!15766)) (ite c!159869 (regTwo!5974 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))) (head!1806 (_1!6484 lt!349754))))))

(declare-fun b!978617 () Bool)

(declare-fun e!629933 () Regex!2731)

(declare-fun call!62664 () Regex!2731)

(assert (=> b!978617 (= e!629933 (Union!2731 call!62663 call!62664))))

(declare-fun call!62661 () Regex!2731)

(declare-fun b!978618 () Bool)

(declare-fun e!629932 () Regex!2731)

(assert (=> b!978618 (= e!629932 (Union!2731 (Concat!4564 call!62664 (regTwo!5974 (regOne!5974 r!15766))) call!62661))))

(declare-fun b!978619 () Bool)

(assert (=> b!978619 (= c!159873 ((_ is Union!2731) (regOne!5974 r!15766)))))

(declare-fun e!629934 () Regex!2731)

(assert (=> b!978619 (= e!629934 e!629933)))

(declare-fun b!978620 () Bool)

(declare-fun e!629936 () Regex!2731)

(declare-fun call!62662 () Regex!2731)

(assert (=> b!978620 (= e!629936 (Concat!4564 call!62662 (regOne!5974 r!15766)))))

(declare-fun d!287753 () Bool)

(declare-fun lt!349824 () Regex!2731)

(assert (=> d!287753 (validRegex!1200 lt!349824)))

(declare-fun e!629935 () Regex!2731)

(assert (=> d!287753 (= lt!349824 e!629935)))

(declare-fun c!159870 () Bool)

(assert (=> d!287753 (= c!159870 (or ((_ is EmptyExpr!2731) (regOne!5974 r!15766)) ((_ is EmptyLang!2731) (regOne!5974 r!15766))))))

(assert (=> d!287753 (validRegex!1200 (regOne!5974 r!15766))))

(assert (=> d!287753 (= (derivativeStep!653 (regOne!5974 r!15766) (head!1806 (_1!6484 lt!349754))) lt!349824)))

(declare-fun b!978621 () Bool)

(assert (=> b!978621 (= c!159869 (nullable!847 (regOne!5974 (regOne!5974 r!15766))))))

(assert (=> b!978621 (= e!629936 e!629932)))

(declare-fun b!978622 () Bool)

(assert (=> b!978622 (= e!629935 EmptyLang!2731)))

(declare-fun bm!62657 () Bool)

(assert (=> bm!62657 (= call!62664 (derivativeStep!653 (ite c!159873 (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))) (head!1806 (_1!6484 lt!349754))))))

(declare-fun b!978623 () Bool)

(assert (=> b!978623 (= e!629935 e!629934)))

(declare-fun c!159872 () Bool)

(assert (=> b!978623 (= c!159872 ((_ is ElementMatch!2731) (regOne!5974 r!15766)))))

(declare-fun bm!62658 () Bool)

(assert (=> bm!62658 (= call!62661 call!62662)))

(declare-fun bm!62659 () Bool)

(assert (=> bm!62659 (= call!62662 call!62663)))

(declare-fun b!978624 () Bool)

(assert (=> b!978624 (= e!629932 (Union!2731 (Concat!4564 call!62661 (regTwo!5974 (regOne!5974 r!15766))) EmptyLang!2731))))

(declare-fun b!978625 () Bool)

(assert (=> b!978625 (= e!629933 e!629936)))

(assert (=> b!978625 (= c!159871 ((_ is Star!2731) (regOne!5974 r!15766)))))

(declare-fun b!978626 () Bool)

(assert (=> b!978626 (= e!629934 (ite (= (head!1806 (_1!6484 lt!349754)) (c!159684 (regOne!5974 r!15766))) EmptyExpr!2731 EmptyLang!2731))))

(assert (= (and d!287753 c!159870) b!978622))

(assert (= (and d!287753 (not c!159870)) b!978623))

(assert (= (and b!978623 c!159872) b!978626))

(assert (= (and b!978623 (not c!159872)) b!978619))

(assert (= (and b!978619 c!159873) b!978617))

(assert (= (and b!978619 (not c!159873)) b!978625))

(assert (= (and b!978625 c!159871) b!978620))

(assert (= (and b!978625 (not c!159871)) b!978621))

(assert (= (and b!978621 c!159869) b!978618))

(assert (= (and b!978621 (not c!159869)) b!978624))

(assert (= (or b!978618 b!978624) bm!62658))

(assert (= (or b!978620 bm!62658) bm!62659))

(assert (= (or b!978617 bm!62659) bm!62656))

(assert (= (or b!978617 b!978618) bm!62657))

(assert (=> bm!62656 m!1178585))

(declare-fun m!1178749 () Bool)

(assert (=> bm!62656 m!1178749))

(declare-fun m!1178751 () Bool)

(assert (=> d!287753 m!1178751))

(assert (=> d!287753 m!1178449))

(declare-fun m!1178753 () Bool)

(assert (=> b!978621 m!1178753))

(assert (=> bm!62657 m!1178585))

(declare-fun m!1178755 () Bool)

(assert (=> bm!62657 m!1178755))

(assert (=> b!978266 d!287753))

(assert (=> b!978266 d!287731))

(declare-fun d!287755 () Bool)

(assert (=> d!287755 (= (tail!1368 (_1!6484 lt!349754)) (t!101007 (_1!6484 lt!349754)))))

(assert (=> b!978266 d!287755))

(declare-fun d!287757 () Bool)

(assert (=> d!287757 (= (isEmpty!6265 (_1!6484 lt!349754)) ((_ is Nil!9945) (_1!6484 lt!349754)))))

(assert (=> bm!62580 d!287757))

(declare-fun b!978627 () Bool)

(declare-fun e!629946 () Bool)

(declare-fun e!629944 () Bool)

(assert (=> b!978627 (= e!629946 e!629944)))

(declare-fun res!444410 () Bool)

(declare-fun lt!349825 () Int)

(declare-fun call!62665 () Int)

(assert (=> b!978627 (= res!444410 (> lt!349825 call!62665))))

(assert (=> b!978627 (=> (not res!444410) (not e!629944))))

(declare-fun c!159876 () Bool)

(declare-fun b!978628 () Bool)

(assert (=> b!978628 (= c!159876 ((_ is Star!2731) (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766)))))))

(declare-fun e!629939 () Bool)

(declare-fun e!629942 () Bool)

(assert (=> b!978628 (= e!629939 e!629942)))

(declare-fun bm!62660 () Bool)

(declare-fun call!62670 () Int)

(assert (=> bm!62660 (= call!62670 call!62665)))

(declare-fun b!978629 () Bool)

(declare-fun e!629938 () Bool)

(assert (=> b!978629 (= e!629938 e!629946)))

(declare-fun c!159874 () Bool)

(assert (=> b!978629 (= c!159874 ((_ is Union!2731) (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766)))))))

(declare-fun b!978630 () Bool)

(declare-fun c!159879 () Bool)

(assert (=> b!978630 (= c!159879 ((_ is Union!2731) (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766)))))))

(declare-fun e!629945 () Int)

(declare-fun e!629941 () Int)

(assert (=> b!978630 (= e!629945 e!629941)))

(declare-fun d!287759 () Bool)

(assert (=> d!287759 e!629938))

(declare-fun res!444412 () Bool)

(assert (=> d!287759 (=> (not res!444412) (not e!629938))))

(assert (=> d!287759 (= res!444412 (> lt!349825 0))))

(declare-fun e!629937 () Int)

(assert (=> d!287759 (= lt!349825 e!629937)))

(declare-fun c!159875 () Bool)

(assert (=> d!287759 (= c!159875 ((_ is ElementMatch!2731) (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766)))))))

(assert (=> d!287759 (= (regexDepth!18 (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766)))) lt!349825)))

(declare-fun bm!62661 () Bool)

(declare-fun call!62666 () Int)

(assert (=> bm!62661 (= call!62666 (regexDepth!18 (ite c!159874 (regTwo!5975 (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766)))) (regOne!5974 (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766)))))))))

(declare-fun b!978631 () Bool)

(assert (=> b!978631 (= e!629937 e!629945)))

(declare-fun c!159877 () Bool)

(assert (=> b!978631 (= c!159877 ((_ is Star!2731) (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766)))))))

(declare-fun b!978632 () Bool)

(assert (=> b!978632 (= e!629944 (> lt!349825 call!62666))))

(declare-fun b!978633 () Bool)

(declare-fun e!629943 () Int)

(declare-fun call!62668 () Int)

(assert (=> b!978633 (= e!629943 (+ 1 call!62668))))

(declare-fun b!978634 () Bool)

(assert (=> b!978634 (= e!629941 e!629943)))

(declare-fun c!159878 () Bool)

(assert (=> b!978634 (= c!159878 ((_ is Concat!4564) (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766)))))))

(declare-fun bm!62662 () Bool)

(declare-fun call!62671 () Int)

(assert (=> bm!62662 (= call!62671 (regexDepth!18 (ite c!159879 (regTwo!5975 (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766)))) (regTwo!5974 (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766)))))))))

(declare-fun b!978635 () Bool)

(declare-fun e!629940 () Bool)

(assert (=> b!978635 (= e!629940 (> lt!349825 call!62670))))

(declare-fun c!159880 () Bool)

(declare-fun bm!62663 () Bool)

(assert (=> bm!62663 (= call!62665 (regexDepth!18 (ite c!159874 (regOne!5975 (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766)))) (ite c!159880 (regTwo!5974 (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766)))) (reg!3060 (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766))))))))))

(declare-fun b!978636 () Bool)

(declare-fun res!444411 () Bool)

(assert (=> b!978636 (=> (not res!444411) (not e!629940))))

(assert (=> b!978636 (= res!444411 (> lt!349825 call!62666))))

(assert (=> b!978636 (= e!629939 e!629940)))

(declare-fun call!62667 () Int)

(declare-fun bm!62664 () Bool)

(assert (=> bm!62664 (= call!62667 (regexDepth!18 (ite c!159877 (reg!3060 (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766)))) (ite c!159879 (regOne!5975 (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766)))) (regOne!5974 (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766))))))))))

(declare-fun b!978637 () Bool)

(assert (=> b!978637 (= e!629941 (+ 1 call!62668))))

(declare-fun b!978638 () Bool)

(assert (=> b!978638 (= e!629945 (+ 1 call!62667))))

(declare-fun b!978639 () Bool)

(assert (=> b!978639 (= e!629946 e!629939)))

(assert (=> b!978639 (= c!159880 ((_ is Concat!4564) (ite c!159819 (regOne!5975 r!15766) (ite c!159825 (regTwo!5974 r!15766) (reg!3060 r!15766)))))))

(declare-fun b!978640 () Bool)

(assert (=> b!978640 (= e!629942 (> lt!349825 call!62670))))

(declare-fun b!978641 () Bool)

(assert (=> b!978641 (= e!629942 (= lt!349825 1))))

(declare-fun b!978642 () Bool)

(assert (=> b!978642 (= e!629937 1)))

(declare-fun b!978643 () Bool)

(assert (=> b!978643 (= e!629943 1)))

(declare-fun bm!62665 () Bool)

(declare-fun call!62669 () Int)

(assert (=> bm!62665 (= call!62668 (maxBigInt!0 call!62669 call!62671))))

(declare-fun bm!62666 () Bool)

(assert (=> bm!62666 (= call!62669 call!62667)))

(assert (= (and d!287759 c!159875) b!978642))

(assert (= (and d!287759 (not c!159875)) b!978631))

(assert (= (and b!978631 c!159877) b!978638))

(assert (= (and b!978631 (not c!159877)) b!978630))

(assert (= (and b!978630 c!159879) b!978637))

(assert (= (and b!978630 (not c!159879)) b!978634))

(assert (= (and b!978634 c!159878) b!978633))

(assert (= (and b!978634 (not c!159878)) b!978643))

(assert (= (or b!978637 b!978633) bm!62662))

(assert (= (or b!978637 b!978633) bm!62666))

(assert (= (or b!978637 b!978633) bm!62665))

(assert (= (or b!978638 bm!62666) bm!62664))

(assert (= (and d!287759 res!444412) b!978629))

(assert (= (and b!978629 c!159874) b!978627))

(assert (= (and b!978629 (not c!159874)) b!978639))

(assert (= (and b!978627 res!444410) b!978632))

(assert (= (and b!978639 c!159880) b!978636))

(assert (= (and b!978639 (not c!159880)) b!978628))

(assert (= (and b!978636 res!444411) b!978635))

(assert (= (and b!978628 c!159876) b!978640))

(assert (= (and b!978628 (not c!159876)) b!978641))

(assert (= (or b!978635 b!978640) bm!62660))

(assert (= (or b!978632 b!978636) bm!62661))

(assert (= (or b!978627 bm!62660) bm!62663))

(declare-fun m!1178757 () Bool)

(assert (=> bm!62662 m!1178757))

(declare-fun m!1178759 () Bool)

(assert (=> bm!62663 m!1178759))

(declare-fun m!1178761 () Bool)

(assert (=> bm!62664 m!1178761))

(declare-fun m!1178763 () Bool)

(assert (=> bm!62665 m!1178763))

(declare-fun m!1178765 () Bool)

(assert (=> bm!62661 m!1178765))

(assert (=> bm!62619 d!287759))

(declare-fun b!978644 () Bool)

(declare-fun res!444413 () Bool)

(declare-fun e!629949 () Bool)

(assert (=> b!978644 (=> (not res!444413) (not e!629949))))

(declare-fun call!62672 () Bool)

(assert (=> b!978644 (= res!444413 (not call!62672))))

(declare-fun b!978645 () Bool)

(declare-fun res!444416 () Bool)

(declare-fun e!629947 () Bool)

(assert (=> b!978645 (=> res!444416 e!629947)))

(assert (=> b!978645 (= res!444416 e!629949)))

(declare-fun res!444419 () Bool)

(assert (=> b!978645 (=> (not res!444419) (not e!629949))))

(declare-fun lt!349826 () Bool)

(assert (=> b!978645 (= res!444419 lt!349826)))

(declare-fun b!978646 () Bool)

(declare-fun e!629951 () Bool)

(assert (=> b!978646 (= e!629951 (matchR!1267 (derivativeStep!653 EmptyExpr!2731 (head!1806 (_2!6484 (get!3444 lt!349811)))) (tail!1368 (_2!6484 (get!3444 lt!349811)))))))

(declare-fun b!978647 () Bool)

(declare-fun e!629948 () Bool)

(assert (=> b!978647 (= e!629948 (= lt!349826 call!62672))))

(declare-fun bm!62667 () Bool)

(assert (=> bm!62667 (= call!62672 (isEmpty!6265 (_2!6484 (get!3444 lt!349811))))))

(declare-fun b!978648 () Bool)

(declare-fun e!629952 () Bool)

(declare-fun e!629953 () Bool)

(assert (=> b!978648 (= e!629952 e!629953)))

(declare-fun res!444414 () Bool)

(assert (=> b!978648 (=> res!444414 e!629953)))

(assert (=> b!978648 (= res!444414 call!62672)))

(declare-fun b!978649 () Bool)

(declare-fun res!444415 () Bool)

(assert (=> b!978649 (=> (not res!444415) (not e!629949))))

(assert (=> b!978649 (= res!444415 (isEmpty!6265 (tail!1368 (_2!6484 (get!3444 lt!349811)))))))

(declare-fun b!978650 () Bool)

(assert (=> b!978650 (= e!629947 e!629952)))

(declare-fun res!444417 () Bool)

(assert (=> b!978650 (=> (not res!444417) (not e!629952))))

(assert (=> b!978650 (= res!444417 (not lt!349826))))

(declare-fun b!978651 () Bool)

(assert (=> b!978651 (= e!629951 (nullable!847 EmptyExpr!2731))))

(declare-fun d!287761 () Bool)

(assert (=> d!287761 e!629948))

(declare-fun c!159882 () Bool)

(assert (=> d!287761 (= c!159882 ((_ is EmptyExpr!2731) EmptyExpr!2731))))

(assert (=> d!287761 (= lt!349826 e!629951)))

(declare-fun c!159881 () Bool)

(assert (=> d!287761 (= c!159881 (isEmpty!6265 (_2!6484 (get!3444 lt!349811))))))

(assert (=> d!287761 (validRegex!1200 EmptyExpr!2731)))

(assert (=> d!287761 (= (matchR!1267 EmptyExpr!2731 (_2!6484 (get!3444 lt!349811))) lt!349826)))

(declare-fun b!978652 () Bool)

(declare-fun res!444420 () Bool)

(assert (=> b!978652 (=> res!444420 e!629947)))

(assert (=> b!978652 (= res!444420 (not ((_ is ElementMatch!2731) EmptyExpr!2731)))))

(declare-fun e!629950 () Bool)

(assert (=> b!978652 (= e!629950 e!629947)))

(declare-fun b!978653 () Bool)

(assert (=> b!978653 (= e!629950 (not lt!349826))))

(declare-fun b!978654 () Bool)

(declare-fun res!444418 () Bool)

(assert (=> b!978654 (=> res!444418 e!629953)))

(assert (=> b!978654 (= res!444418 (not (isEmpty!6265 (tail!1368 (_2!6484 (get!3444 lt!349811))))))))

(declare-fun b!978655 () Bool)

(assert (=> b!978655 (= e!629953 (not (= (head!1806 (_2!6484 (get!3444 lt!349811))) (c!159684 EmptyExpr!2731))))))

(declare-fun b!978656 () Bool)

(assert (=> b!978656 (= e!629949 (= (head!1806 (_2!6484 (get!3444 lt!349811))) (c!159684 EmptyExpr!2731)))))

(declare-fun b!978657 () Bool)

(assert (=> b!978657 (= e!629948 e!629950)))

(declare-fun c!159883 () Bool)

(assert (=> b!978657 (= c!159883 ((_ is EmptyLang!2731) EmptyExpr!2731))))

(assert (= (and d!287761 c!159881) b!978651))

(assert (= (and d!287761 (not c!159881)) b!978646))

(assert (= (and d!287761 c!159882) b!978647))

(assert (= (and d!287761 (not c!159882)) b!978657))

(assert (= (and b!978657 c!159883) b!978653))

(assert (= (and b!978657 (not c!159883)) b!978652))

(assert (= (and b!978652 (not res!444420)) b!978645))

(assert (= (and b!978645 res!444419) b!978644))

(assert (= (and b!978644 res!444413) b!978649))

(assert (= (and b!978649 res!444415) b!978656))

(assert (= (and b!978645 (not res!444416)) b!978650))

(assert (= (and b!978650 res!444417) b!978648))

(assert (= (and b!978648 (not res!444414)) b!978654))

(assert (= (and b!978654 (not res!444418)) b!978655))

(assert (= (or b!978647 b!978644 b!978648) bm!62667))

(declare-fun m!1178767 () Bool)

(assert (=> b!978655 m!1178767))

(declare-fun m!1178769 () Bool)

(assert (=> b!978651 m!1178769))

(declare-fun m!1178771 () Bool)

(assert (=> b!978654 m!1178771))

(assert (=> b!978654 m!1178771))

(declare-fun m!1178773 () Bool)

(assert (=> b!978654 m!1178773))

(assert (=> b!978649 m!1178771))

(assert (=> b!978649 m!1178771))

(assert (=> b!978649 m!1178773))

(declare-fun m!1178775 () Bool)

(assert (=> d!287761 m!1178775))

(declare-fun m!1178777 () Bool)

(assert (=> d!287761 m!1178777))

(assert (=> bm!62667 m!1178775))

(assert (=> b!978646 m!1178767))

(assert (=> b!978646 m!1178767))

(declare-fun m!1178779 () Bool)

(assert (=> b!978646 m!1178779))

(assert (=> b!978646 m!1178771))

(assert (=> b!978646 m!1178779))

(assert (=> b!978646 m!1178771))

(declare-fun m!1178781 () Bool)

(assert (=> b!978646 m!1178781))

(assert (=> b!978656 m!1178767))

(assert (=> b!978469 d!287761))

(declare-fun d!287763 () Bool)

(assert (=> d!287763 (= (get!3444 lt!349811) (v!19716 lt!349811))))

(assert (=> b!978469 d!287763))

(declare-fun d!287765 () Bool)

(assert (=> d!287765 (= (head!1806 s!10566) (h!15346 s!10566))))

(assert (=> b!978234 d!287765))

(assert (=> d!287679 d!287757))

(assert (=> d!287679 d!287693))

(declare-fun b!978658 () Bool)

(declare-fun e!629963 () Bool)

(declare-fun e!629961 () Bool)

(assert (=> b!978658 (= e!629963 e!629961)))

(declare-fun res!444421 () Bool)

(declare-fun lt!349827 () Int)

(declare-fun call!62673 () Int)

(assert (=> b!978658 (= res!444421 (> lt!349827 call!62673))))

(assert (=> b!978658 (=> (not res!444421) (not e!629961))))

(declare-fun b!978659 () Bool)

(declare-fun c!159886 () Bool)

(assert (=> b!978659 (= c!159886 ((_ is Star!2731) (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766))))))

(declare-fun e!629956 () Bool)

(declare-fun e!629959 () Bool)

(assert (=> b!978659 (= e!629956 e!629959)))

(declare-fun bm!62668 () Bool)

(declare-fun call!62678 () Int)

(assert (=> bm!62668 (= call!62678 call!62673)))

(declare-fun b!978660 () Bool)

(declare-fun e!629955 () Bool)

(assert (=> b!978660 (= e!629955 e!629963)))

(declare-fun c!159884 () Bool)

(assert (=> b!978660 (= c!159884 ((_ is Union!2731) (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766))))))

(declare-fun b!978661 () Bool)

(declare-fun c!159889 () Bool)

(assert (=> b!978661 (= c!159889 ((_ is Union!2731) (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766))))))

(declare-fun e!629962 () Int)

(declare-fun e!629958 () Int)

(assert (=> b!978661 (= e!629962 e!629958)))

(declare-fun d!287767 () Bool)

(assert (=> d!287767 e!629955))

(declare-fun res!444423 () Bool)

(assert (=> d!287767 (=> (not res!444423) (not e!629955))))

(assert (=> d!287767 (= res!444423 (> lt!349827 0))))

(declare-fun e!629954 () Int)

(assert (=> d!287767 (= lt!349827 e!629954)))

(declare-fun c!159885 () Bool)

(assert (=> d!287767 (= c!159885 ((_ is ElementMatch!2731) (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766))))))

(assert (=> d!287767 (= (regexDepth!18 (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766))) lt!349827)))

(declare-fun call!62674 () Int)

(declare-fun bm!62669 () Bool)

(assert (=> bm!62669 (= call!62674 (regexDepth!18 (ite c!159884 (regTwo!5975 (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766))) (regOne!5974 (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766))))))))

(declare-fun b!978662 () Bool)

(assert (=> b!978662 (= e!629954 e!629962)))

(declare-fun c!159887 () Bool)

(assert (=> b!978662 (= c!159887 ((_ is Star!2731) (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766))))))

(declare-fun b!978663 () Bool)

(assert (=> b!978663 (= e!629961 (> lt!349827 call!62674))))

(declare-fun b!978664 () Bool)

(declare-fun e!629960 () Int)

(declare-fun call!62676 () Int)

(assert (=> b!978664 (= e!629960 (+ 1 call!62676))))

(declare-fun b!978665 () Bool)

(assert (=> b!978665 (= e!629958 e!629960)))

(declare-fun c!159888 () Bool)

(assert (=> b!978665 (= c!159888 ((_ is Concat!4564) (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766))))))

(declare-fun bm!62670 () Bool)

(declare-fun call!62679 () Int)

(assert (=> bm!62670 (= call!62679 (regexDepth!18 (ite c!159889 (regTwo!5975 (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766))) (regTwo!5974 (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766))))))))

(declare-fun b!978666 () Bool)

(declare-fun e!629957 () Bool)

(assert (=> b!978666 (= e!629957 (> lt!349827 call!62678))))

(declare-fun c!159890 () Bool)

(declare-fun bm!62671 () Bool)

(assert (=> bm!62671 (= call!62673 (regexDepth!18 (ite c!159884 (regOne!5975 (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766))) (ite c!159890 (regTwo!5974 (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766))) (reg!3060 (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766)))))))))

(declare-fun b!978667 () Bool)

(declare-fun res!444422 () Bool)

(assert (=> b!978667 (=> (not res!444422) (not e!629957))))

(assert (=> b!978667 (= res!444422 (> lt!349827 call!62674))))

(assert (=> b!978667 (= e!629956 e!629957)))

(declare-fun call!62675 () Int)

(declare-fun bm!62672 () Bool)

(assert (=> bm!62672 (= call!62675 (regexDepth!18 (ite c!159887 (reg!3060 (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766))) (ite c!159889 (regOne!5975 (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766))) (regOne!5974 (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766)))))))))

(declare-fun b!978668 () Bool)

(assert (=> b!978668 (= e!629958 (+ 1 call!62676))))

(declare-fun b!978669 () Bool)

(assert (=> b!978669 (= e!629962 (+ 1 call!62675))))

(declare-fun b!978670 () Bool)

(assert (=> b!978670 (= e!629963 e!629956)))

(assert (=> b!978670 (= c!159890 ((_ is Concat!4564) (ite c!159824 (regTwo!5975 r!15766) (regTwo!5974 r!15766))))))

(declare-fun b!978671 () Bool)

(assert (=> b!978671 (= e!629959 (> lt!349827 call!62678))))

(declare-fun b!978672 () Bool)

(assert (=> b!978672 (= e!629959 (= lt!349827 1))))

(declare-fun b!978673 () Bool)

(assert (=> b!978673 (= e!629954 1)))

(declare-fun b!978674 () Bool)

(assert (=> b!978674 (= e!629960 1)))

(declare-fun bm!62673 () Bool)

(declare-fun call!62677 () Int)

(assert (=> bm!62673 (= call!62676 (maxBigInt!0 call!62677 call!62679))))

(declare-fun bm!62674 () Bool)

(assert (=> bm!62674 (= call!62677 call!62675)))

(assert (= (and d!287767 c!159885) b!978673))

(assert (= (and d!287767 (not c!159885)) b!978662))

(assert (= (and b!978662 c!159887) b!978669))

(assert (= (and b!978662 (not c!159887)) b!978661))

(assert (= (and b!978661 c!159889) b!978668))

(assert (= (and b!978661 (not c!159889)) b!978665))

(assert (= (and b!978665 c!159888) b!978664))

(assert (= (and b!978665 (not c!159888)) b!978674))

(assert (= (or b!978668 b!978664) bm!62670))

(assert (= (or b!978668 b!978664) bm!62674))

(assert (= (or b!978668 b!978664) bm!62673))

(assert (= (or b!978669 bm!62674) bm!62672))

(assert (= (and d!287767 res!444423) b!978660))

(assert (= (and b!978660 c!159884) b!978658))

(assert (= (and b!978660 (not c!159884)) b!978670))

(assert (= (and b!978658 res!444421) b!978663))

(assert (= (and b!978670 c!159890) b!978667))

(assert (= (and b!978670 (not c!159890)) b!978659))

(assert (= (and b!978667 res!444422) b!978666))

(assert (= (and b!978659 c!159886) b!978671))

(assert (= (and b!978659 (not c!159886)) b!978672))

(assert (= (or b!978666 b!978671) bm!62668))

(assert (= (or b!978663 b!978667) bm!62669))

(assert (= (or b!978658 bm!62668) bm!62671))

(declare-fun m!1178783 () Bool)

(assert (=> bm!62670 m!1178783))

(declare-fun m!1178785 () Bool)

(assert (=> bm!62671 m!1178785))

(declare-fun m!1178787 () Bool)

(assert (=> bm!62672 m!1178787))

(declare-fun m!1178789 () Bool)

(assert (=> bm!62673 m!1178789))

(declare-fun m!1178791 () Bool)

(assert (=> bm!62669 m!1178791))

(assert (=> bm!62618 d!287767))

(declare-fun d!287769 () Bool)

(assert (=> d!287769 true))

(assert (=> d!287769 true))

(declare-fun res!444424 () Bool)

(assert (=> d!287769 (= (choose!6203 lambda!34800) res!444424)))

(assert (=> d!287721 d!287769))

(declare-fun d!287771 () Bool)

(assert (=> d!287771 (= (Exists!468 (ite c!159739 lambda!34809 lambda!34810)) (choose!6203 (ite c!159739 lambda!34809 lambda!34810)))))

(declare-fun bs!243345 () Bool)

(assert (= bs!243345 d!287771))

(declare-fun m!1178793 () Bool)

(assert (=> bs!243345 m!1178793))

(assert (=> bm!62562 d!287771))

(declare-fun b!978675 () Bool)

(declare-fun e!629973 () Bool)

(declare-fun e!629971 () Bool)

(assert (=> b!978675 (= e!629973 e!629971)))

(declare-fun res!444425 () Bool)

(declare-fun lt!349828 () Int)

(declare-fun call!62680 () Int)

(assert (=> b!978675 (= res!444425 (> lt!349828 call!62680))))

(assert (=> b!978675 (=> (not res!444425) (not e!629971))))

(declare-fun b!978676 () Bool)

(declare-fun c!159893 () Bool)

(assert (=> b!978676 (= c!159893 ((_ is Star!2731) (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))))))

(declare-fun e!629966 () Bool)

(declare-fun e!629969 () Bool)

(assert (=> b!978676 (= e!629966 e!629969)))

(declare-fun bm!62675 () Bool)

(declare-fun call!62685 () Int)

(assert (=> bm!62675 (= call!62685 call!62680)))

(declare-fun b!978677 () Bool)

(declare-fun e!629965 () Bool)

(assert (=> b!978677 (= e!629965 e!629973)))

(declare-fun c!159891 () Bool)

(assert (=> b!978677 (= c!159891 ((_ is Union!2731) (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))))))

(declare-fun b!978678 () Bool)

(declare-fun c!159896 () Bool)

(assert (=> b!978678 (= c!159896 ((_ is Union!2731) (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))))))

(declare-fun e!629972 () Int)

(declare-fun e!629968 () Int)

(assert (=> b!978678 (= e!629972 e!629968)))

(declare-fun d!287773 () Bool)

(assert (=> d!287773 e!629965))

(declare-fun res!444427 () Bool)

(assert (=> d!287773 (=> (not res!444427) (not e!629965))))

(assert (=> d!287773 (= res!444427 (> lt!349828 0))))

(declare-fun e!629964 () Int)

(assert (=> d!287773 (= lt!349828 e!629964)))

(declare-fun c!159892 () Bool)

(assert (=> d!287773 (= c!159892 ((_ is ElementMatch!2731) (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))))))

(assert (=> d!287773 (= (regexDepth!18 (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))) lt!349828)))

(declare-fun call!62681 () Int)

(declare-fun bm!62676 () Bool)

(assert (=> bm!62676 (= call!62681 (regexDepth!18 (ite c!159891 (regTwo!5975 (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))) (regOne!5974 (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))))))))

(declare-fun b!978679 () Bool)

(assert (=> b!978679 (= e!629964 e!629972)))

(declare-fun c!159894 () Bool)

(assert (=> b!978679 (= c!159894 ((_ is Star!2731) (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))))))

(declare-fun b!978680 () Bool)

(assert (=> b!978680 (= e!629971 (> lt!349828 call!62681))))

(declare-fun b!978681 () Bool)

(declare-fun e!629970 () Int)

(declare-fun call!62683 () Int)

(assert (=> b!978681 (= e!629970 (+ 1 call!62683))))

(declare-fun b!978682 () Bool)

(assert (=> b!978682 (= e!629968 e!629970)))

(declare-fun c!159895 () Bool)

(assert (=> b!978682 (= c!159895 ((_ is Concat!4564) (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))))))

(declare-fun call!62686 () Int)

(declare-fun bm!62677 () Bool)

(assert (=> bm!62677 (= call!62686 (regexDepth!18 (ite c!159896 (regTwo!5975 (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))) (regTwo!5974 (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))))))))

(declare-fun b!978683 () Bool)

(declare-fun e!629967 () Bool)

(assert (=> b!978683 (= e!629967 (> lt!349828 call!62685))))

(declare-fun c!159897 () Bool)

(declare-fun bm!62678 () Bool)

(assert (=> bm!62678 (= call!62680 (regexDepth!18 (ite c!159891 (regOne!5975 (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))) (ite c!159897 (regTwo!5974 (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))) (reg!3060 (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766))))))))))

(declare-fun b!978684 () Bool)

(declare-fun res!444426 () Bool)

(assert (=> b!978684 (=> (not res!444426) (not e!629967))))

(assert (=> b!978684 (= res!444426 (> lt!349828 call!62681))))

(assert (=> b!978684 (= e!629966 e!629967)))

(declare-fun call!62682 () Int)

(declare-fun bm!62679 () Bool)

(assert (=> bm!62679 (= call!62682 (regexDepth!18 (ite c!159894 (reg!3060 (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))) (ite c!159896 (regOne!5975 (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))) (regOne!5974 (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766))))))))))

(declare-fun b!978685 () Bool)

(assert (=> b!978685 (= e!629968 (+ 1 call!62683))))

(declare-fun b!978686 () Bool)

(assert (=> b!978686 (= e!629972 (+ 1 call!62682))))

(declare-fun b!978687 () Bool)

(assert (=> b!978687 (= e!629973 e!629966)))

(assert (=> b!978687 (= c!159897 ((_ is Concat!4564) (ite c!159814 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))))))

(declare-fun b!978688 () Bool)

(assert (=> b!978688 (= e!629969 (> lt!349828 call!62685))))

(declare-fun b!978689 () Bool)

(assert (=> b!978689 (= e!629969 (= lt!349828 1))))

(declare-fun b!978690 () Bool)

(assert (=> b!978690 (= e!629964 1)))

(declare-fun b!978691 () Bool)

(assert (=> b!978691 (= e!629970 1)))

(declare-fun bm!62680 () Bool)

(declare-fun call!62684 () Int)

(assert (=> bm!62680 (= call!62683 (maxBigInt!0 call!62684 call!62686))))

(declare-fun bm!62681 () Bool)

(assert (=> bm!62681 (= call!62684 call!62682)))

(assert (= (and d!287773 c!159892) b!978690))

(assert (= (and d!287773 (not c!159892)) b!978679))

(assert (= (and b!978679 c!159894) b!978686))

(assert (= (and b!978679 (not c!159894)) b!978678))

(assert (= (and b!978678 c!159896) b!978685))

(assert (= (and b!978678 (not c!159896)) b!978682))

(assert (= (and b!978682 c!159895) b!978681))

(assert (= (and b!978682 (not c!159895)) b!978691))

(assert (= (or b!978685 b!978681) bm!62677))

(assert (= (or b!978685 b!978681) bm!62681))

(assert (= (or b!978685 b!978681) bm!62680))

(assert (= (or b!978686 bm!62681) bm!62679))

(assert (= (and d!287773 res!444427) b!978677))

(assert (= (and b!978677 c!159891) b!978675))

(assert (= (and b!978677 (not c!159891)) b!978687))

(assert (= (and b!978675 res!444425) b!978680))

(assert (= (and b!978687 c!159897) b!978684))

(assert (= (and b!978687 (not c!159897)) b!978676))

(assert (= (and b!978684 res!444426) b!978683))

(assert (= (and b!978676 c!159893) b!978688))

(assert (= (and b!978676 (not c!159893)) b!978689))

(assert (= (or b!978683 b!978688) bm!62675))

(assert (= (or b!978680 b!978684) bm!62676))

(assert (= (or b!978675 bm!62675) bm!62678))

(declare-fun m!1178795 () Bool)

(assert (=> bm!62677 m!1178795))

(declare-fun m!1178797 () Bool)

(assert (=> bm!62678 m!1178797))

(declare-fun m!1178799 () Bool)

(assert (=> bm!62679 m!1178799))

(declare-fun m!1178801 () Bool)

(assert (=> bm!62680 m!1178801))

(declare-fun m!1178803 () Bool)

(assert (=> bm!62676 m!1178803))

(assert (=> bm!62611 d!287773))

(declare-fun d!287775 () Bool)

(assert (=> d!287775 (= (nullable!847 (regOne!5974 r!15766)) (nullableFct!201 (regOne!5974 r!15766)))))

(declare-fun bs!243346 () Bool)

(assert (= bs!243346 d!287775))

(declare-fun m!1178805 () Bool)

(assert (=> bs!243346 m!1178805))

(assert (=> b!978271 d!287775))

(assert (=> bm!62563 d!287691))

(declare-fun d!287777 () Bool)

(declare-fun e!629978 () Bool)

(assert (=> d!287777 e!629978))

(declare-fun res!444433 () Bool)

(assert (=> d!287777 (=> (not res!444433) (not e!629978))))

(declare-fun lt!349831 () List!9961)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1419 (List!9961) (InoxSet C!6032))

(assert (=> d!287777 (= res!444433 (= (content!1419 lt!349831) ((_ map or) (content!1419 (++!2698 Nil!9945 (Cons!9945 (h!15346 s!10566) Nil!9945))) (content!1419 (t!101007 s!10566)))))))

(declare-fun e!629979 () List!9961)

(assert (=> d!287777 (= lt!349831 e!629979)))

(declare-fun c!159900 () Bool)

(assert (=> d!287777 (= c!159900 ((_ is Nil!9945) (++!2698 Nil!9945 (Cons!9945 (h!15346 s!10566) Nil!9945))))))

(assert (=> d!287777 (= (++!2698 (++!2698 Nil!9945 (Cons!9945 (h!15346 s!10566) Nil!9945)) (t!101007 s!10566)) lt!349831)))

(declare-fun b!978702 () Bool)

(declare-fun res!444432 () Bool)

(assert (=> b!978702 (=> (not res!444432) (not e!629978))))

(assert (=> b!978702 (= res!444432 (= (size!7953 lt!349831) (+ (size!7953 (++!2698 Nil!9945 (Cons!9945 (h!15346 s!10566) Nil!9945))) (size!7953 (t!101007 s!10566)))))))

(declare-fun b!978703 () Bool)

(assert (=> b!978703 (= e!629978 (or (not (= (t!101007 s!10566) Nil!9945)) (= lt!349831 (++!2698 Nil!9945 (Cons!9945 (h!15346 s!10566) Nil!9945)))))))

(declare-fun b!978700 () Bool)

(assert (=> b!978700 (= e!629979 (t!101007 s!10566))))

(declare-fun b!978701 () Bool)

(assert (=> b!978701 (= e!629979 (Cons!9945 (h!15346 (++!2698 Nil!9945 (Cons!9945 (h!15346 s!10566) Nil!9945))) (++!2698 (t!101007 (++!2698 Nil!9945 (Cons!9945 (h!15346 s!10566) Nil!9945))) (t!101007 s!10566))))))

(assert (= (and d!287777 c!159900) b!978700))

(assert (= (and d!287777 (not c!159900)) b!978701))

(assert (= (and d!287777 res!444433) b!978702))

(assert (= (and b!978702 res!444432) b!978703))

(declare-fun m!1178807 () Bool)

(assert (=> d!287777 m!1178807))

(assert (=> d!287777 m!1178671))

(declare-fun m!1178809 () Bool)

(assert (=> d!287777 m!1178809))

(declare-fun m!1178811 () Bool)

(assert (=> d!287777 m!1178811))

(declare-fun m!1178813 () Bool)

(assert (=> b!978702 m!1178813))

(assert (=> b!978702 m!1178671))

(declare-fun m!1178815 () Bool)

(assert (=> b!978702 m!1178815))

(assert (=> b!978702 m!1178655))

(declare-fun m!1178817 () Bool)

(assert (=> b!978701 m!1178817))

(assert (=> b!978473 d!287777))

(declare-fun d!287779 () Bool)

(declare-fun e!629980 () Bool)

(assert (=> d!287779 e!629980))

(declare-fun res!444435 () Bool)

(assert (=> d!287779 (=> (not res!444435) (not e!629980))))

(declare-fun lt!349832 () List!9961)

(assert (=> d!287779 (= res!444435 (= (content!1419 lt!349832) ((_ map or) (content!1419 Nil!9945) (content!1419 (Cons!9945 (h!15346 s!10566) Nil!9945)))))))

(declare-fun e!629981 () List!9961)

(assert (=> d!287779 (= lt!349832 e!629981)))

(declare-fun c!159901 () Bool)

(assert (=> d!287779 (= c!159901 ((_ is Nil!9945) Nil!9945))))

(assert (=> d!287779 (= (++!2698 Nil!9945 (Cons!9945 (h!15346 s!10566) Nil!9945)) lt!349832)))

(declare-fun b!978706 () Bool)

(declare-fun res!444434 () Bool)

(assert (=> b!978706 (=> (not res!444434) (not e!629980))))

(assert (=> b!978706 (= res!444434 (= (size!7953 lt!349832) (+ (size!7953 Nil!9945) (size!7953 (Cons!9945 (h!15346 s!10566) Nil!9945)))))))

(declare-fun b!978707 () Bool)

(assert (=> b!978707 (= e!629980 (or (not (= (Cons!9945 (h!15346 s!10566) Nil!9945) Nil!9945)) (= lt!349832 Nil!9945)))))

(declare-fun b!978704 () Bool)

(assert (=> b!978704 (= e!629981 (Cons!9945 (h!15346 s!10566) Nil!9945))))

(declare-fun b!978705 () Bool)

(assert (=> b!978705 (= e!629981 (Cons!9945 (h!15346 Nil!9945) (++!2698 (t!101007 Nil!9945) (Cons!9945 (h!15346 s!10566) Nil!9945))))))

(assert (= (and d!287779 c!159901) b!978704))

(assert (= (and d!287779 (not c!159901)) b!978705))

(assert (= (and d!287779 res!444435) b!978706))

(assert (= (and b!978706 res!444434) b!978707))

(declare-fun m!1178819 () Bool)

(assert (=> d!287779 m!1178819))

(declare-fun m!1178821 () Bool)

(assert (=> d!287779 m!1178821))

(declare-fun m!1178823 () Bool)

(assert (=> d!287779 m!1178823))

(declare-fun m!1178825 () Bool)

(assert (=> b!978706 m!1178825))

(declare-fun m!1178827 () Bool)

(assert (=> b!978706 m!1178827))

(declare-fun m!1178829 () Bool)

(assert (=> b!978706 m!1178829))

(declare-fun m!1178831 () Bool)

(assert (=> b!978705 m!1178831))

(assert (=> b!978473 d!287779))

(declare-fun d!287783 () Bool)

(assert (=> d!287783 (= (++!2698 (++!2698 Nil!9945 (Cons!9945 (h!15346 s!10566) Nil!9945)) (t!101007 s!10566)) s!10566)))

(declare-fun lt!349836 () Unit!15121)

(declare-fun choose!6206 (List!9961 C!6032 List!9961 List!9961) Unit!15121)

(assert (=> d!287783 (= lt!349836 (choose!6206 Nil!9945 (h!15346 s!10566) (t!101007 s!10566) s!10566))))

(assert (=> d!287783 (= (++!2698 Nil!9945 (Cons!9945 (h!15346 s!10566) (t!101007 s!10566))) s!10566)))

(assert (=> d!287783 (= (lemmaMoveElementToOtherListKeepsConcatEq!299 Nil!9945 (h!15346 s!10566) (t!101007 s!10566) s!10566) lt!349836)))

(declare-fun bs!243348 () Bool)

(assert (= bs!243348 d!287783))

(assert (=> bs!243348 m!1178671))

(assert (=> bs!243348 m!1178671))

(assert (=> bs!243348 m!1178673))

(declare-fun m!1178843 () Bool)

(assert (=> bs!243348 m!1178843))

(declare-fun m!1178845 () Bool)

(assert (=> bs!243348 m!1178845))

(assert (=> b!978473 d!287783))

(declare-fun b!978724 () Bool)

(declare-fun e!629992 () Option!2300)

(declare-fun e!629990 () Option!2300)

(assert (=> b!978724 (= e!629992 e!629990)))

(declare-fun c!159906 () Bool)

(assert (=> b!978724 (= c!159906 ((_ is Nil!9945) (t!101007 s!10566)))))

(declare-fun b!978725 () Bool)

(assert (=> b!978725 (= e!629990 None!2299)))

(declare-fun b!978726 () Bool)

(declare-fun res!444448 () Bool)

(declare-fun e!629991 () Bool)

(assert (=> b!978726 (=> (not res!444448) (not e!629991))))

(declare-fun lt!349840 () Option!2300)

(assert (=> b!978726 (= res!444448 (matchR!1267 (regOne!5974 r!15766) (_1!6484 (get!3444 lt!349840))))))

(declare-fun b!978727 () Bool)

(declare-fun res!444446 () Bool)

(assert (=> b!978727 (=> (not res!444446) (not e!629991))))

(assert (=> b!978727 (= res!444446 (matchR!1267 EmptyExpr!2731 (_2!6484 (get!3444 lt!349840))))))

(declare-fun d!287789 () Bool)

(declare-fun e!629994 () Bool)

(assert (=> d!287789 e!629994))

(declare-fun res!444444 () Bool)

(assert (=> d!287789 (=> res!444444 e!629994)))

(assert (=> d!287789 (= res!444444 e!629991)))

(declare-fun res!444447 () Bool)

(assert (=> d!287789 (=> (not res!444447) (not e!629991))))

(assert (=> d!287789 (= res!444447 (isDefined!1942 lt!349840))))

(assert (=> d!287789 (= lt!349840 e!629992)))

(declare-fun c!159907 () Bool)

(declare-fun e!629993 () Bool)

(assert (=> d!287789 (= c!159907 e!629993)))

(declare-fun res!444445 () Bool)

(assert (=> d!287789 (=> (not res!444445) (not e!629993))))

(assert (=> d!287789 (= res!444445 (matchR!1267 (regOne!5974 r!15766) (++!2698 Nil!9945 (Cons!9945 (h!15346 s!10566) Nil!9945))))))

(assert (=> d!287789 (validRegex!1200 (regOne!5974 r!15766))))

(assert (=> d!287789 (= (findConcatSeparation!406 (regOne!5974 r!15766) EmptyExpr!2731 (++!2698 Nil!9945 (Cons!9945 (h!15346 s!10566) Nil!9945)) (t!101007 s!10566) s!10566) lt!349840)))

(declare-fun b!978728 () Bool)

(assert (=> b!978728 (= e!629991 (= (++!2698 (_1!6484 (get!3444 lt!349840)) (_2!6484 (get!3444 lt!349840))) s!10566))))

(declare-fun b!978729 () Bool)

(assert (=> b!978729 (= e!629994 (not (isDefined!1942 lt!349840)))))

(declare-fun b!978730 () Bool)

(assert (=> b!978730 (= e!629993 (matchR!1267 EmptyExpr!2731 (t!101007 s!10566)))))

(declare-fun b!978731 () Bool)

(declare-fun lt!349838 () Unit!15121)

(declare-fun lt!349839 () Unit!15121)

(assert (=> b!978731 (= lt!349838 lt!349839)))

(assert (=> b!978731 (= (++!2698 (++!2698 (++!2698 Nil!9945 (Cons!9945 (h!15346 s!10566) Nil!9945)) (Cons!9945 (h!15346 (t!101007 s!10566)) Nil!9945)) (t!101007 (t!101007 s!10566))) s!10566)))

(assert (=> b!978731 (= lt!349839 (lemmaMoveElementToOtherListKeepsConcatEq!299 (++!2698 Nil!9945 (Cons!9945 (h!15346 s!10566) Nil!9945)) (h!15346 (t!101007 s!10566)) (t!101007 (t!101007 s!10566)) s!10566))))

(assert (=> b!978731 (= e!629990 (findConcatSeparation!406 (regOne!5974 r!15766) EmptyExpr!2731 (++!2698 (++!2698 Nil!9945 (Cons!9945 (h!15346 s!10566) Nil!9945)) (Cons!9945 (h!15346 (t!101007 s!10566)) Nil!9945)) (t!101007 (t!101007 s!10566)) s!10566))))

(declare-fun b!978732 () Bool)

(assert (=> b!978732 (= e!629992 (Some!2299 (tuple2!11317 (++!2698 Nil!9945 (Cons!9945 (h!15346 s!10566) Nil!9945)) (t!101007 s!10566))))))

(assert (= (and d!287789 res!444445) b!978730))

(assert (= (and d!287789 c!159907) b!978732))

(assert (= (and d!287789 (not c!159907)) b!978724))

(assert (= (and b!978724 c!159906) b!978725))

(assert (= (and b!978724 (not c!159906)) b!978731))

(assert (= (and d!287789 res!444447) b!978726))

(assert (= (and b!978726 res!444448) b!978727))

(assert (= (and b!978727 res!444446) b!978728))

(assert (= (and d!287789 (not res!444444)) b!978729))

(declare-fun m!1178849 () Bool)

(assert (=> b!978727 m!1178849))

(declare-fun m!1178851 () Bool)

(assert (=> b!978727 m!1178851))

(declare-fun m!1178853 () Bool)

(assert (=> b!978729 m!1178853))

(assert (=> b!978726 m!1178849))

(declare-fun m!1178855 () Bool)

(assert (=> b!978726 m!1178855))

(assert (=> d!287789 m!1178853))

(assert (=> d!287789 m!1178671))

(declare-fun m!1178857 () Bool)

(assert (=> d!287789 m!1178857))

(assert (=> d!287789 m!1178449))

(assert (=> b!978728 m!1178849))

(declare-fun m!1178859 () Bool)

(assert (=> b!978728 m!1178859))

(declare-fun m!1178861 () Bool)

(assert (=> b!978730 m!1178861))

(assert (=> b!978731 m!1178671))

(declare-fun m!1178863 () Bool)

(assert (=> b!978731 m!1178863))

(assert (=> b!978731 m!1178863))

(declare-fun m!1178865 () Bool)

(assert (=> b!978731 m!1178865))

(assert (=> b!978731 m!1178671))

(declare-fun m!1178867 () Bool)

(assert (=> b!978731 m!1178867))

(assert (=> b!978731 m!1178863))

(declare-fun m!1178869 () Bool)

(assert (=> b!978731 m!1178869))

(assert (=> b!978473 d!287789))

(declare-fun bs!243350 () Bool)

(declare-fun b!978745 () Bool)

(assert (= bs!243350 (and b!978745 b!977918)))

(declare-fun lambda!34836 () Int)

(assert (=> bs!243350 (not (= lambda!34836 lambda!34799))))

(assert (=> bs!243350 (not (= lambda!34836 lambda!34800))))

(declare-fun bs!243352 () Bool)

(assert (= bs!243352 (and b!978745 b!978327)))

(assert (=> bs!243352 (= (and (= (reg!3060 (regTwo!5975 (regOne!5974 r!15766))) (reg!3060 (regOne!5974 r!15766))) (= (regTwo!5975 (regOne!5974 r!15766)) (regOne!5974 r!15766))) (= lambda!34836 lambda!34823))))

(declare-fun bs!243353 () Bool)

(assert (= bs!243353 (and b!978745 b!978098)))

(assert (=> bs!243353 (= (and (= (_1!6484 lt!349754) s!10566) (= (reg!3060 (regTwo!5975 (regOne!5974 r!15766))) (reg!3060 r!15766)) (= (regTwo!5975 (regOne!5974 r!15766)) r!15766)) (= lambda!34836 lambda!34809))))

(declare-fun bs!243355 () Bool)

(assert (= bs!243355 (and b!978745 b!978099)))

(assert (=> bs!243355 (not (= lambda!34836 lambda!34810))))

(declare-fun bs!243356 () Bool)

(assert (= bs!243356 (and b!978745 d!287719)))

(assert (=> bs!243356 (not (= lambda!34836 lambda!34833))))

(declare-fun bs!243358 () Bool)

(assert (= bs!243358 (and b!978745 b!978328)))

(assert (=> bs!243358 (not (= lambda!34836 lambda!34825))))

(assert (=> bs!243356 (not (= lambda!34836 lambda!34834))))

(declare-fun bs!243360 () Bool)

(assert (= bs!243360 (and b!978745 d!287717)))

(assert (=> bs!243360 (not (= lambda!34836 lambda!34828))))

(assert (=> b!978745 true))

(assert (=> b!978745 true))

(declare-fun bs!243362 () Bool)

(declare-fun b!978746 () Bool)

(assert (= bs!243362 (and b!978746 b!977918)))

(declare-fun lambda!34837 () Int)

(assert (=> bs!243362 (not (= lambda!34837 lambda!34799))))

(assert (=> bs!243362 (= (and (= (_1!6484 lt!349754) s!10566) (= (regOne!5974 (regTwo!5975 (regOne!5974 r!15766))) (regOne!5974 r!15766)) (= (regTwo!5974 (regTwo!5975 (regOne!5974 r!15766))) EmptyExpr!2731)) (= lambda!34837 lambda!34800))))

(declare-fun bs!243364 () Bool)

(assert (= bs!243364 (and b!978746 b!978745)))

(assert (=> bs!243364 (not (= lambda!34837 lambda!34836))))

(declare-fun bs!243365 () Bool)

(assert (= bs!243365 (and b!978746 b!978327)))

(assert (=> bs!243365 (not (= lambda!34837 lambda!34823))))

(declare-fun bs!243366 () Bool)

(assert (= bs!243366 (and b!978746 b!978098)))

(assert (=> bs!243366 (not (= lambda!34837 lambda!34809))))

(declare-fun bs!243367 () Bool)

(assert (= bs!243367 (and b!978746 b!978099)))

(assert (=> bs!243367 (= (and (= (_1!6484 lt!349754) s!10566) (= (regOne!5974 (regTwo!5975 (regOne!5974 r!15766))) (regOne!5974 r!15766)) (= (regTwo!5974 (regTwo!5975 (regOne!5974 r!15766))) (regTwo!5974 r!15766))) (= lambda!34837 lambda!34810))))

(declare-fun bs!243368 () Bool)

(assert (= bs!243368 (and b!978746 d!287719)))

(assert (=> bs!243368 (not (= lambda!34837 lambda!34833))))

(declare-fun bs!243369 () Bool)

(assert (= bs!243369 (and b!978746 b!978328)))

(assert (=> bs!243369 (= (and (= (regOne!5974 (regTwo!5975 (regOne!5974 r!15766))) (regOne!5974 (regOne!5974 r!15766))) (= (regTwo!5974 (regTwo!5975 (regOne!5974 r!15766))) (regTwo!5974 (regOne!5974 r!15766)))) (= lambda!34837 lambda!34825))))

(assert (=> bs!243368 (= (and (= (_1!6484 lt!349754) s!10566) (= (regOne!5974 (regTwo!5975 (regOne!5974 r!15766))) (regOne!5974 r!15766)) (= (regTwo!5974 (regTwo!5975 (regOne!5974 r!15766))) EmptyExpr!2731)) (= lambda!34837 lambda!34834))))

(declare-fun bs!243370 () Bool)

(assert (= bs!243370 (and b!978746 d!287717)))

(assert (=> bs!243370 (not (= lambda!34837 lambda!34828))))

(assert (=> b!978746 true))

(assert (=> b!978746 true))

(declare-fun call!62690 () Bool)

(declare-fun bm!62685 () Bool)

(declare-fun c!159912 () Bool)

(assert (=> bm!62685 (= call!62690 (Exists!468 (ite c!159912 lambda!34836 lambda!34837)))))

(declare-fun b!978744 () Bool)

(declare-fun e!630005 () Bool)

(declare-fun e!630002 () Bool)

(assert (=> b!978744 (= e!630005 e!630002)))

(declare-fun res!444452 () Bool)

(assert (=> b!978744 (= res!444452 (matchRSpec!530 (regOne!5975 (regTwo!5975 (regOne!5974 r!15766))) (_1!6484 lt!349754)))))

(assert (=> b!978744 (=> res!444452 e!630002)))

(declare-fun e!630004 () Bool)

(assert (=> b!978745 (= e!630004 call!62690)))

(declare-fun e!630006 () Bool)

(assert (=> b!978746 (= e!630006 call!62690)))

(declare-fun b!978747 () Bool)

(declare-fun e!630008 () Bool)

(declare-fun e!630003 () Bool)

(assert (=> b!978747 (= e!630008 e!630003)))

(declare-fun res!444454 () Bool)

(assert (=> b!978747 (= res!444454 (not ((_ is EmptyLang!2731) (regTwo!5975 (regOne!5974 r!15766)))))))

(assert (=> b!978747 (=> (not res!444454) (not e!630003))))

(declare-fun bm!62686 () Bool)

(declare-fun call!62691 () Bool)

(assert (=> bm!62686 (= call!62691 (isEmpty!6265 (_1!6484 lt!349754)))))

(declare-fun b!978749 () Bool)

(assert (=> b!978749 (= e!630005 e!630006)))

(assert (=> b!978749 (= c!159912 ((_ is Star!2731) (regTwo!5975 (regOne!5974 r!15766))))))

(declare-fun b!978750 () Bool)

(declare-fun c!159915 () Bool)

(assert (=> b!978750 (= c!159915 ((_ is Union!2731) (regTwo!5975 (regOne!5974 r!15766))))))

(declare-fun e!630007 () Bool)

(assert (=> b!978750 (= e!630007 e!630005)))

(declare-fun d!287795 () Bool)

(declare-fun c!159914 () Bool)

(assert (=> d!287795 (= c!159914 ((_ is EmptyExpr!2731) (regTwo!5975 (regOne!5974 r!15766))))))

(assert (=> d!287795 (= (matchRSpec!530 (regTwo!5975 (regOne!5974 r!15766)) (_1!6484 lt!349754)) e!630008)))

(declare-fun b!978748 () Bool)

(assert (=> b!978748 (= e!630002 (matchRSpec!530 (regTwo!5975 (regTwo!5975 (regOne!5974 r!15766))) (_1!6484 lt!349754)))))

(declare-fun b!978751 () Bool)

(declare-fun c!159913 () Bool)

(assert (=> b!978751 (= c!159913 ((_ is ElementMatch!2731) (regTwo!5975 (regOne!5974 r!15766))))))

(assert (=> b!978751 (= e!630003 e!630007)))

(declare-fun b!978752 () Bool)

(assert (=> b!978752 (= e!630008 call!62691)))

(declare-fun b!978753 () Bool)

(assert (=> b!978753 (= e!630007 (= (_1!6484 lt!349754) (Cons!9945 (c!159684 (regTwo!5975 (regOne!5974 r!15766))) Nil!9945)))))

(declare-fun b!978754 () Bool)

(declare-fun res!444453 () Bool)

(assert (=> b!978754 (=> res!444453 e!630004)))

(assert (=> b!978754 (= res!444453 call!62691)))

(assert (=> b!978754 (= e!630006 e!630004)))

(assert (= (and d!287795 c!159914) b!978752))

(assert (= (and d!287795 (not c!159914)) b!978747))

(assert (= (and b!978747 res!444454) b!978751))

(assert (= (and b!978751 c!159913) b!978753))

(assert (= (and b!978751 (not c!159913)) b!978750))

(assert (= (and b!978750 c!159915) b!978744))

(assert (= (and b!978750 (not c!159915)) b!978749))

(assert (= (and b!978744 (not res!444452)) b!978748))

(assert (= (and b!978749 c!159912) b!978754))

(assert (= (and b!978749 (not c!159912)) b!978746))

(assert (= (and b!978754 (not res!444453)) b!978745))

(assert (= (or b!978745 b!978746) bm!62685))

(assert (= (or b!978752 b!978754) bm!62686))

(declare-fun m!1178871 () Bool)

(assert (=> bm!62685 m!1178871))

(declare-fun m!1178873 () Bool)

(assert (=> b!978744 m!1178873))

(assert (=> bm!62686 m!1178593))

(declare-fun m!1178875 () Bool)

(assert (=> b!978748 m!1178875))

(assert (=> b!978330 d!287795))

(declare-fun bs!243378 () Bool)

(declare-fun b!978756 () Bool)

(assert (= bs!243378 (and b!978756 b!977918)))

(declare-fun lambda!34839 () Int)

(assert (=> bs!243378 (not (= lambda!34839 lambda!34799))))

(assert (=> bs!243378 (not (= lambda!34839 lambda!34800))))

(declare-fun bs!243379 () Bool)

(assert (= bs!243379 (and b!978756 b!978746)))

(assert (=> bs!243379 (not (= lambda!34839 lambda!34837))))

(declare-fun bs!243380 () Bool)

(assert (= bs!243380 (and b!978756 b!978745)))

(assert (=> bs!243380 (= (and (= (reg!3060 (regOne!5975 (regOne!5974 r!15766))) (reg!3060 (regTwo!5975 (regOne!5974 r!15766)))) (= (regOne!5975 (regOne!5974 r!15766)) (regTwo!5975 (regOne!5974 r!15766)))) (= lambda!34839 lambda!34836))))

(declare-fun bs!243381 () Bool)

(assert (= bs!243381 (and b!978756 b!978327)))

(assert (=> bs!243381 (= (and (= (reg!3060 (regOne!5975 (regOne!5974 r!15766))) (reg!3060 (regOne!5974 r!15766))) (= (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 r!15766))) (= lambda!34839 lambda!34823))))

(declare-fun bs!243383 () Bool)

(assert (= bs!243383 (and b!978756 b!978098)))

(assert (=> bs!243383 (= (and (= (_1!6484 lt!349754) s!10566) (= (reg!3060 (regOne!5975 (regOne!5974 r!15766))) (reg!3060 r!15766)) (= (regOne!5975 (regOne!5974 r!15766)) r!15766)) (= lambda!34839 lambda!34809))))

(declare-fun bs!243384 () Bool)

(assert (= bs!243384 (and b!978756 b!978099)))

(assert (=> bs!243384 (not (= lambda!34839 lambda!34810))))

(declare-fun bs!243385 () Bool)

(assert (= bs!243385 (and b!978756 d!287719)))

(assert (=> bs!243385 (not (= lambda!34839 lambda!34833))))

(declare-fun bs!243386 () Bool)

(assert (= bs!243386 (and b!978756 b!978328)))

(assert (=> bs!243386 (not (= lambda!34839 lambda!34825))))

(assert (=> bs!243385 (not (= lambda!34839 lambda!34834))))

(declare-fun bs!243387 () Bool)

(assert (= bs!243387 (and b!978756 d!287717)))

(assert (=> bs!243387 (not (= lambda!34839 lambda!34828))))

(assert (=> b!978756 true))

(assert (=> b!978756 true))

(declare-fun bs!243388 () Bool)

(declare-fun b!978757 () Bool)

(assert (= bs!243388 (and b!978757 b!977918)))

(declare-fun lambda!34840 () Int)

(assert (=> bs!243388 (not (= lambda!34840 lambda!34799))))

(assert (=> bs!243388 (= (and (= (_1!6484 lt!349754) s!10566) (= (regOne!5974 (regOne!5975 (regOne!5974 r!15766))) (regOne!5974 r!15766)) (= (regTwo!5974 (regOne!5975 (regOne!5974 r!15766))) EmptyExpr!2731)) (= lambda!34840 lambda!34800))))

(declare-fun bs!243389 () Bool)

(assert (= bs!243389 (and b!978757 b!978746)))

(assert (=> bs!243389 (= (and (= (regOne!5974 (regOne!5975 (regOne!5974 r!15766))) (regOne!5974 (regTwo!5975 (regOne!5974 r!15766)))) (= (regTwo!5974 (regOne!5975 (regOne!5974 r!15766))) (regTwo!5974 (regTwo!5975 (regOne!5974 r!15766))))) (= lambda!34840 lambda!34837))))

(declare-fun bs!243390 () Bool)

(assert (= bs!243390 (and b!978757 b!978745)))

(assert (=> bs!243390 (not (= lambda!34840 lambda!34836))))

(declare-fun bs!243391 () Bool)

(assert (= bs!243391 (and b!978757 b!978756)))

(assert (=> bs!243391 (not (= lambda!34840 lambda!34839))))

(declare-fun bs!243392 () Bool)

(assert (= bs!243392 (and b!978757 b!978327)))

(assert (=> bs!243392 (not (= lambda!34840 lambda!34823))))

(declare-fun bs!243393 () Bool)

(assert (= bs!243393 (and b!978757 b!978098)))

(assert (=> bs!243393 (not (= lambda!34840 lambda!34809))))

(declare-fun bs!243394 () Bool)

(assert (= bs!243394 (and b!978757 b!978099)))

(assert (=> bs!243394 (= (and (= (_1!6484 lt!349754) s!10566) (= (regOne!5974 (regOne!5975 (regOne!5974 r!15766))) (regOne!5974 r!15766)) (= (regTwo!5974 (regOne!5975 (regOne!5974 r!15766))) (regTwo!5974 r!15766))) (= lambda!34840 lambda!34810))))

(declare-fun bs!243395 () Bool)

(assert (= bs!243395 (and b!978757 d!287719)))

(assert (=> bs!243395 (not (= lambda!34840 lambda!34833))))

(declare-fun bs!243396 () Bool)

(assert (= bs!243396 (and b!978757 b!978328)))

(assert (=> bs!243396 (= (and (= (regOne!5974 (regOne!5975 (regOne!5974 r!15766))) (regOne!5974 (regOne!5974 r!15766))) (= (regTwo!5974 (regOne!5975 (regOne!5974 r!15766))) (regTwo!5974 (regOne!5974 r!15766)))) (= lambda!34840 lambda!34825))))

(assert (=> bs!243395 (= (and (= (_1!6484 lt!349754) s!10566) (= (regOne!5974 (regOne!5975 (regOne!5974 r!15766))) (regOne!5974 r!15766)) (= (regTwo!5974 (regOne!5975 (regOne!5974 r!15766))) EmptyExpr!2731)) (= lambda!34840 lambda!34834))))

(declare-fun bs!243397 () Bool)

(assert (= bs!243397 (and b!978757 d!287717)))

(assert (=> bs!243397 (not (= lambda!34840 lambda!34828))))

(assert (=> b!978757 true))

(assert (=> b!978757 true))

(declare-fun bm!62687 () Bool)

(declare-fun c!159916 () Bool)

(declare-fun call!62692 () Bool)

(assert (=> bm!62687 (= call!62692 (Exists!468 (ite c!159916 lambda!34839 lambda!34840)))))

(declare-fun b!978755 () Bool)

(declare-fun e!630012 () Bool)

(declare-fun e!630009 () Bool)

(assert (=> b!978755 (= e!630012 e!630009)))

(declare-fun res!444455 () Bool)

(assert (=> b!978755 (= res!444455 (matchRSpec!530 (regOne!5975 (regOne!5975 (regOne!5974 r!15766))) (_1!6484 lt!349754)))))

(assert (=> b!978755 (=> res!444455 e!630009)))

(declare-fun e!630011 () Bool)

(assert (=> b!978756 (= e!630011 call!62692)))

(declare-fun e!630013 () Bool)

(assert (=> b!978757 (= e!630013 call!62692)))

(declare-fun b!978758 () Bool)

(declare-fun e!630015 () Bool)

(declare-fun e!630010 () Bool)

(assert (=> b!978758 (= e!630015 e!630010)))

(declare-fun res!444457 () Bool)

(assert (=> b!978758 (= res!444457 (not ((_ is EmptyLang!2731) (regOne!5975 (regOne!5974 r!15766)))))))

(assert (=> b!978758 (=> (not res!444457) (not e!630010))))

(declare-fun bm!62688 () Bool)

(declare-fun call!62693 () Bool)

(assert (=> bm!62688 (= call!62693 (isEmpty!6265 (_1!6484 lt!349754)))))

(declare-fun b!978760 () Bool)

(assert (=> b!978760 (= e!630012 e!630013)))

(assert (=> b!978760 (= c!159916 ((_ is Star!2731) (regOne!5975 (regOne!5974 r!15766))))))

(declare-fun b!978761 () Bool)

(declare-fun c!159919 () Bool)

(assert (=> b!978761 (= c!159919 ((_ is Union!2731) (regOne!5975 (regOne!5974 r!15766))))))

(declare-fun e!630014 () Bool)

(assert (=> b!978761 (= e!630014 e!630012)))

(declare-fun d!287797 () Bool)

(declare-fun c!159918 () Bool)

(assert (=> d!287797 (= c!159918 ((_ is EmptyExpr!2731) (regOne!5975 (regOne!5974 r!15766))))))

(assert (=> d!287797 (= (matchRSpec!530 (regOne!5975 (regOne!5974 r!15766)) (_1!6484 lt!349754)) e!630015)))

(declare-fun b!978759 () Bool)

(assert (=> b!978759 (= e!630009 (matchRSpec!530 (regTwo!5975 (regOne!5975 (regOne!5974 r!15766))) (_1!6484 lt!349754)))))

(declare-fun b!978762 () Bool)

(declare-fun c!159917 () Bool)

(assert (=> b!978762 (= c!159917 ((_ is ElementMatch!2731) (regOne!5975 (regOne!5974 r!15766))))))

(assert (=> b!978762 (= e!630010 e!630014)))

(declare-fun b!978763 () Bool)

(assert (=> b!978763 (= e!630015 call!62693)))

(declare-fun b!978764 () Bool)

(assert (=> b!978764 (= e!630014 (= (_1!6484 lt!349754) (Cons!9945 (c!159684 (regOne!5975 (regOne!5974 r!15766))) Nil!9945)))))

(declare-fun b!978765 () Bool)

(declare-fun res!444456 () Bool)

(assert (=> b!978765 (=> res!444456 e!630011)))

(assert (=> b!978765 (= res!444456 call!62693)))

(assert (=> b!978765 (= e!630013 e!630011)))

(assert (= (and d!287797 c!159918) b!978763))

(assert (= (and d!287797 (not c!159918)) b!978758))

(assert (= (and b!978758 res!444457) b!978762))

(assert (= (and b!978762 c!159917) b!978764))

(assert (= (and b!978762 (not c!159917)) b!978761))

(assert (= (and b!978761 c!159919) b!978755))

(assert (= (and b!978761 (not c!159919)) b!978760))

(assert (= (and b!978755 (not res!444455)) b!978759))

(assert (= (and b!978760 c!159916) b!978765))

(assert (= (and b!978760 (not c!159916)) b!978757))

(assert (= (and b!978765 (not res!444456)) b!978756))

(assert (= (or b!978756 b!978757) bm!62687))

(assert (= (or b!978763 b!978765) bm!62688))

(declare-fun m!1178883 () Bool)

(assert (=> bm!62687 m!1178883))

(declare-fun m!1178885 () Bool)

(assert (=> b!978755 m!1178885))

(assert (=> bm!62688 m!1178593))

(declare-fun m!1178887 () Bool)

(assert (=> b!978759 m!1178887))

(assert (=> b!978326 d!287797))

(declare-fun b!978783 () Bool)

(declare-fun e!630035 () Bool)

(declare-fun e!630033 () Bool)

(assert (=> b!978783 (= e!630035 e!630033)))

(declare-fun res!444461 () Bool)

(declare-fun lt!349842 () Int)

(declare-fun call!62701 () Int)

(assert (=> b!978783 (= res!444461 (> lt!349842 call!62701))))

(assert (=> b!978783 (=> (not res!444461) (not e!630033))))

(declare-fun b!978784 () Bool)

(declare-fun c!159929 () Bool)

(assert (=> b!978784 (= c!159929 ((_ is Star!2731) (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766)))))))

(declare-fun e!630028 () Bool)

(declare-fun e!630031 () Bool)

(assert (=> b!978784 (= e!630028 e!630031)))

(declare-fun bm!62696 () Bool)

(declare-fun call!62706 () Int)

(assert (=> bm!62696 (= call!62706 call!62701)))

(declare-fun b!978785 () Bool)

(declare-fun e!630027 () Bool)

(assert (=> b!978785 (= e!630027 e!630035)))

(declare-fun c!159927 () Bool)

(assert (=> b!978785 (= c!159927 ((_ is Union!2731) (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766)))))))

(declare-fun c!159932 () Bool)

(declare-fun b!978786 () Bool)

(assert (=> b!978786 (= c!159932 ((_ is Union!2731) (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766)))))))

(declare-fun e!630034 () Int)

(declare-fun e!630030 () Int)

(assert (=> b!978786 (= e!630034 e!630030)))

(declare-fun d!287801 () Bool)

(assert (=> d!287801 e!630027))

(declare-fun res!444463 () Bool)

(assert (=> d!287801 (=> (not res!444463) (not e!630027))))

(assert (=> d!287801 (= res!444463 (> lt!349842 0))))

(declare-fun e!630026 () Int)

(assert (=> d!287801 (= lt!349842 e!630026)))

(declare-fun c!159928 () Bool)

(assert (=> d!287801 (= c!159928 ((_ is ElementMatch!2731) (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766)))))))

(assert (=> d!287801 (= (regexDepth!18 (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766)))) lt!349842)))

(declare-fun call!62702 () Int)

(declare-fun bm!62697 () Bool)

(assert (=> bm!62697 (= call!62702 (regexDepth!18 (ite c!159927 (regTwo!5975 (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766)))) (regOne!5974 (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766)))))))))

(declare-fun b!978787 () Bool)

(assert (=> b!978787 (= e!630026 e!630034)))

(declare-fun c!159930 () Bool)

(assert (=> b!978787 (= c!159930 ((_ is Star!2731) (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766)))))))

(declare-fun b!978788 () Bool)

(assert (=> b!978788 (= e!630033 (> lt!349842 call!62702))))

(declare-fun b!978789 () Bool)

(declare-fun e!630032 () Int)

(declare-fun call!62704 () Int)

(assert (=> b!978789 (= e!630032 (+ 1 call!62704))))

(declare-fun b!978790 () Bool)

(assert (=> b!978790 (= e!630030 e!630032)))

(declare-fun c!159931 () Bool)

(assert (=> b!978790 (= c!159931 ((_ is Concat!4564) (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766)))))))

(declare-fun bm!62698 () Bool)

(declare-fun call!62707 () Int)

(assert (=> bm!62698 (= call!62707 (regexDepth!18 (ite c!159932 (regTwo!5975 (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766)))) (regTwo!5974 (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766)))))))))

(declare-fun b!978791 () Bool)

(declare-fun e!630029 () Bool)

(assert (=> b!978791 (= e!630029 (> lt!349842 call!62706))))

(declare-fun c!159933 () Bool)

(declare-fun bm!62699 () Bool)

(assert (=> bm!62699 (= call!62701 (regexDepth!18 (ite c!159927 (regOne!5975 (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766)))) (ite c!159933 (regTwo!5974 (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766)))) (reg!3060 (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766))))))))))

(declare-fun b!978792 () Bool)

(declare-fun res!444462 () Bool)

(assert (=> b!978792 (=> (not res!444462) (not e!630029))))

(assert (=> b!978792 (= res!444462 (> lt!349842 call!62702))))

(assert (=> b!978792 (= e!630028 e!630029)))

(declare-fun call!62703 () Int)

(declare-fun bm!62700 () Bool)

(assert (=> bm!62700 (= call!62703 (regexDepth!18 (ite c!159930 (reg!3060 (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766)))) (ite c!159932 (regOne!5975 (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766)))) (regOne!5974 (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766))))))))))

(declare-fun b!978793 () Bool)

(assert (=> b!978793 (= e!630030 (+ 1 call!62704))))

(declare-fun b!978794 () Bool)

(assert (=> b!978794 (= e!630034 (+ 1 call!62703))))

(declare-fun b!978795 () Bool)

(assert (=> b!978795 (= e!630035 e!630028)))

(assert (=> b!978795 (= c!159933 ((_ is Concat!4564) (ite c!159822 (reg!3060 r!15766) (ite c!159824 (regOne!5975 r!15766) (regOne!5974 r!15766)))))))

(declare-fun b!978796 () Bool)

(assert (=> b!978796 (= e!630031 (> lt!349842 call!62706))))

(declare-fun b!978797 () Bool)

(assert (=> b!978797 (= e!630031 (= lt!349842 1))))

(declare-fun b!978798 () Bool)

(assert (=> b!978798 (= e!630026 1)))

(declare-fun b!978799 () Bool)

(assert (=> b!978799 (= e!630032 1)))

(declare-fun bm!62701 () Bool)

(declare-fun call!62705 () Int)

(assert (=> bm!62701 (= call!62704 (maxBigInt!0 call!62705 call!62707))))

(declare-fun bm!62702 () Bool)

(assert (=> bm!62702 (= call!62705 call!62703)))

(assert (= (and d!287801 c!159928) b!978798))

(assert (= (and d!287801 (not c!159928)) b!978787))

(assert (= (and b!978787 c!159930) b!978794))

(assert (= (and b!978787 (not c!159930)) b!978786))

(assert (= (and b!978786 c!159932) b!978793))

(assert (= (and b!978786 (not c!159932)) b!978790))

(assert (= (and b!978790 c!159931) b!978789))

(assert (= (and b!978790 (not c!159931)) b!978799))

(assert (= (or b!978793 b!978789) bm!62698))

(assert (= (or b!978793 b!978789) bm!62702))

(assert (= (or b!978793 b!978789) bm!62701))

(assert (= (or b!978794 bm!62702) bm!62700))

(assert (= (and d!287801 res!444463) b!978785))

(assert (= (and b!978785 c!159927) b!978783))

(assert (= (and b!978785 (not c!159927)) b!978795))

(assert (= (and b!978783 res!444461) b!978788))

(assert (= (and b!978795 c!159933) b!978792))

(assert (= (and b!978795 (not c!159933)) b!978784))

(assert (= (and b!978792 res!444462) b!978791))

(assert (= (and b!978784 c!159929) b!978796))

(assert (= (and b!978784 (not c!159929)) b!978797))

(assert (= (or b!978791 b!978796) bm!62696))

(assert (= (or b!978788 b!978792) bm!62697))

(assert (= (or b!978783 bm!62696) bm!62699))

(declare-fun m!1178899 () Bool)

(assert (=> bm!62698 m!1178899))

(declare-fun m!1178901 () Bool)

(assert (=> bm!62699 m!1178901))

(declare-fun m!1178903 () Bool)

(assert (=> bm!62700 m!1178903))

(declare-fun m!1178905 () Bool)

(assert (=> bm!62701 m!1178905))

(declare-fun m!1178907 () Bool)

(assert (=> bm!62697 m!1178907))

(assert (=> bm!62620 d!287801))

(declare-fun d!287807 () Bool)

(assert (=> d!287807 (= (isDefined!1942 lt!349811) (not (isEmpty!6267 lt!349811)))))

(declare-fun bs!243398 () Bool)

(assert (= bs!243398 d!287807))

(declare-fun m!1178909 () Bool)

(assert (=> bs!243398 m!1178909))

(assert (=> b!978471 d!287807))

(declare-fun b!978800 () Bool)

(declare-fun e!630045 () Bool)

(declare-fun e!630043 () Bool)

(assert (=> b!978800 (= e!630045 e!630043)))

(declare-fun res!444464 () Bool)

(declare-fun lt!349843 () Int)

(declare-fun call!62708 () Int)

(assert (=> b!978800 (= res!444464 (> lt!349843 call!62708))))

(assert (=> b!978800 (=> (not res!444464) (not e!630043))))

(declare-fun c!159936 () Bool)

(declare-fun b!978801 () Bool)

(assert (=> b!978801 (= c!159936 ((_ is Star!2731) (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))))))

(declare-fun e!630038 () Bool)

(declare-fun e!630041 () Bool)

(assert (=> b!978801 (= e!630038 e!630041)))

(declare-fun bm!62703 () Bool)

(declare-fun call!62713 () Int)

(assert (=> bm!62703 (= call!62713 call!62708)))

(declare-fun b!978802 () Bool)

(declare-fun e!630037 () Bool)

(assert (=> b!978802 (= e!630037 e!630045)))

(declare-fun c!159934 () Bool)

(assert (=> b!978802 (= c!159934 ((_ is Union!2731) (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))))))

(declare-fun b!978803 () Bool)

(declare-fun c!159939 () Bool)

(assert (=> b!978803 (= c!159939 ((_ is Union!2731) (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))))))

(declare-fun e!630044 () Int)

(declare-fun e!630040 () Int)

(assert (=> b!978803 (= e!630044 e!630040)))

(declare-fun d!287809 () Bool)

(assert (=> d!287809 e!630037))

(declare-fun res!444466 () Bool)

(assert (=> d!287809 (=> (not res!444466) (not e!630037))))

(assert (=> d!287809 (= res!444466 (> lt!349843 0))))

(declare-fun e!630036 () Int)

(assert (=> d!287809 (= lt!349843 e!630036)))

(declare-fun c!159935 () Bool)

(assert (=> d!287809 (= c!159935 ((_ is ElementMatch!2731) (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))))))

(assert (=> d!287809 (= (regexDepth!18 (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))) lt!349843)))

(declare-fun bm!62704 () Bool)

(declare-fun call!62709 () Int)

(assert (=> bm!62704 (= call!62709 (regexDepth!18 (ite c!159934 (regTwo!5975 (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))) (regOne!5974 (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))))))))

(declare-fun b!978804 () Bool)

(assert (=> b!978804 (= e!630036 e!630044)))

(declare-fun c!159937 () Bool)

(assert (=> b!978804 (= c!159937 ((_ is Star!2731) (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))))))

(declare-fun b!978805 () Bool)

(assert (=> b!978805 (= e!630043 (> lt!349843 call!62709))))

(declare-fun b!978806 () Bool)

(declare-fun e!630042 () Int)

(declare-fun call!62711 () Int)

(assert (=> b!978806 (= e!630042 (+ 1 call!62711))))

(declare-fun b!978807 () Bool)

(assert (=> b!978807 (= e!630040 e!630042)))

(declare-fun c!159938 () Bool)

(assert (=> b!978807 (= c!159938 ((_ is Concat!4564) (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))))))

(declare-fun bm!62705 () Bool)

(declare-fun call!62714 () Int)

(assert (=> bm!62705 (= call!62714 (regexDepth!18 (ite c!159939 (regTwo!5975 (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))) (regTwo!5974 (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))))))))

(declare-fun b!978808 () Bool)

(declare-fun e!630039 () Bool)

(assert (=> b!978808 (= e!630039 (> lt!349843 call!62713))))

(declare-fun bm!62706 () Bool)

(declare-fun c!159940 () Bool)

(assert (=> bm!62706 (= call!62708 (regexDepth!18 (ite c!159934 (regOne!5975 (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))) (ite c!159940 (regTwo!5974 (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))) (reg!3060 (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))))))))))

(declare-fun b!978809 () Bool)

(declare-fun res!444465 () Bool)

(assert (=> b!978809 (=> (not res!444465) (not e!630039))))

(assert (=> b!978809 (= res!444465 (> lt!349843 call!62709))))

(assert (=> b!978809 (= e!630038 e!630039)))

(declare-fun bm!62707 () Bool)

(declare-fun call!62710 () Int)

(assert (=> bm!62707 (= call!62710 (regexDepth!18 (ite c!159937 (reg!3060 (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))) (ite c!159939 (regOne!5975 (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))) (regOne!5974 (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766)))))))))))

(declare-fun b!978810 () Bool)

(assert (=> b!978810 (= e!630040 (+ 1 call!62711))))

(declare-fun b!978811 () Bool)

(assert (=> b!978811 (= e!630044 (+ 1 call!62710))))

(declare-fun b!978812 () Bool)

(assert (=> b!978812 (= e!630045 e!630038)))

(assert (=> b!978812 (= c!159940 ((_ is Concat!4564) (ite c!159812 (reg!3060 (regOne!5974 r!15766)) (ite c!159814 (regOne!5975 (regOne!5974 r!15766)) (regOne!5974 (regOne!5974 r!15766))))))))

(declare-fun b!978813 () Bool)

(assert (=> b!978813 (= e!630041 (> lt!349843 call!62713))))

(declare-fun b!978814 () Bool)

(assert (=> b!978814 (= e!630041 (= lt!349843 1))))

(declare-fun b!978815 () Bool)

(assert (=> b!978815 (= e!630036 1)))

(declare-fun b!978816 () Bool)

(assert (=> b!978816 (= e!630042 1)))

(declare-fun bm!62708 () Bool)

(declare-fun call!62712 () Int)

(assert (=> bm!62708 (= call!62711 (maxBigInt!0 call!62712 call!62714))))

(declare-fun bm!62709 () Bool)

(assert (=> bm!62709 (= call!62712 call!62710)))

(assert (= (and d!287809 c!159935) b!978815))

(assert (= (and d!287809 (not c!159935)) b!978804))

(assert (= (and b!978804 c!159937) b!978811))

(assert (= (and b!978804 (not c!159937)) b!978803))

(assert (= (and b!978803 c!159939) b!978810))

(assert (= (and b!978803 (not c!159939)) b!978807))

(assert (= (and b!978807 c!159938) b!978806))

(assert (= (and b!978807 (not c!159938)) b!978816))

(assert (= (or b!978810 b!978806) bm!62705))

(assert (= (or b!978810 b!978806) bm!62709))

(assert (= (or b!978810 b!978806) bm!62708))

(assert (= (or b!978811 bm!62709) bm!62707))

(assert (= (and d!287809 res!444466) b!978802))

(assert (= (and b!978802 c!159934) b!978800))

(assert (= (and b!978802 (not c!159934)) b!978812))

(assert (= (and b!978800 res!444464) b!978805))

(assert (= (and b!978812 c!159940) b!978809))

(assert (= (and b!978812 (not c!159940)) b!978801))

(assert (= (and b!978809 res!444465) b!978808))

(assert (= (and b!978801 c!159936) b!978813))

(assert (= (and b!978801 (not c!159936)) b!978814))

(assert (= (or b!978808 b!978813) bm!62703))

(assert (= (or b!978805 b!978809) bm!62704))

(assert (= (or b!978800 bm!62703) bm!62706))

(declare-fun m!1178917 () Bool)

(assert (=> bm!62705 m!1178917))

(declare-fun m!1178919 () Bool)

(assert (=> bm!62706 m!1178919))

(declare-fun m!1178921 () Bool)

(assert (=> bm!62707 m!1178921))

(declare-fun m!1178923 () Bool)

(assert (=> bm!62708 m!1178923))

(declare-fun m!1178925 () Bool)

(assert (=> bm!62704 m!1178925))

(assert (=> bm!62613 d!287809))

(declare-fun b!978817 () Bool)

(declare-fun res!444471 () Bool)

(declare-fun e!630050 () Bool)

(assert (=> b!978817 (=> res!444471 e!630050)))

(assert (=> b!978817 (= res!444471 (not ((_ is Concat!4564) (ite c!159787 (reg!3060 r!15766) (ite c!159788 (regTwo!5975 r!15766) (regTwo!5974 r!15766))))))))

(declare-fun e!630049 () Bool)

(assert (=> b!978817 (= e!630049 e!630050)))

(declare-fun b!978818 () Bool)

(declare-fun e!630046 () Bool)

(assert (=> b!978818 (= e!630050 e!630046)))

(declare-fun res!444467 () Bool)

(assert (=> b!978818 (=> (not res!444467) (not e!630046))))

(declare-fun call!62716 () Bool)

(assert (=> b!978818 (= res!444467 call!62716)))

(declare-fun b!978819 () Bool)

(declare-fun call!62715 () Bool)

(assert (=> b!978819 (= e!630046 call!62715)))

(declare-fun d!287821 () Bool)

(declare-fun res!444468 () Bool)

(declare-fun e!630048 () Bool)

(assert (=> d!287821 (=> res!444468 e!630048)))

(assert (=> d!287821 (= res!444468 ((_ is ElementMatch!2731) (ite c!159787 (reg!3060 r!15766) (ite c!159788 (regTwo!5975 r!15766) (regTwo!5974 r!15766)))))))

(assert (=> d!287821 (= (validRegex!1200 (ite c!159787 (reg!3060 r!15766) (ite c!159788 (regTwo!5975 r!15766) (regTwo!5974 r!15766)))) e!630048)))

(declare-fun b!978820 () Bool)

(declare-fun res!444469 () Bool)

(declare-fun e!630051 () Bool)

(assert (=> b!978820 (=> (not res!444469) (not e!630051))))

(assert (=> b!978820 (= res!444469 call!62716)))

(assert (=> b!978820 (= e!630049 e!630051)))

(declare-fun b!978821 () Bool)

(declare-fun e!630052 () Bool)

(declare-fun e!630047 () Bool)

(assert (=> b!978821 (= e!630052 e!630047)))

(declare-fun res!444470 () Bool)

(assert (=> b!978821 (= res!444470 (not (nullable!847 (reg!3060 (ite c!159787 (reg!3060 r!15766) (ite c!159788 (regTwo!5975 r!15766) (regTwo!5974 r!15766)))))))))

(assert (=> b!978821 (=> (not res!444470) (not e!630047))))

(declare-fun c!159942 () Bool)

(declare-fun call!62717 () Bool)

(declare-fun c!159941 () Bool)

(declare-fun bm!62710 () Bool)

(assert (=> bm!62710 (= call!62717 (validRegex!1200 (ite c!159941 (reg!3060 (ite c!159787 (reg!3060 r!15766) (ite c!159788 (regTwo!5975 r!15766) (regTwo!5974 r!15766)))) (ite c!159942 (regTwo!5975 (ite c!159787 (reg!3060 r!15766) (ite c!159788 (regTwo!5975 r!15766) (regTwo!5974 r!15766)))) (regTwo!5974 (ite c!159787 (reg!3060 r!15766) (ite c!159788 (regTwo!5975 r!15766) (regTwo!5974 r!15766))))))))))

(declare-fun bm!62711 () Bool)

(assert (=> bm!62711 (= call!62716 (validRegex!1200 (ite c!159942 (regOne!5975 (ite c!159787 (reg!3060 r!15766) (ite c!159788 (regTwo!5975 r!15766) (regTwo!5974 r!15766)))) (regOne!5974 (ite c!159787 (reg!3060 r!15766) (ite c!159788 (regTwo!5975 r!15766) (regTwo!5974 r!15766)))))))))

(declare-fun b!978822 () Bool)

(assert (=> b!978822 (= e!630048 e!630052)))

(assert (=> b!978822 (= c!159941 ((_ is Star!2731) (ite c!159787 (reg!3060 r!15766) (ite c!159788 (regTwo!5975 r!15766) (regTwo!5974 r!15766)))))))

(declare-fun b!978823 () Bool)

(assert (=> b!978823 (= e!630047 call!62717)))

(declare-fun bm!62712 () Bool)

(assert (=> bm!62712 (= call!62715 call!62717)))

(declare-fun b!978824 () Bool)

(assert (=> b!978824 (= e!630052 e!630049)))

(assert (=> b!978824 (= c!159942 ((_ is Union!2731) (ite c!159787 (reg!3060 r!15766) (ite c!159788 (regTwo!5975 r!15766) (regTwo!5974 r!15766)))))))

(declare-fun b!978825 () Bool)

(assert (=> b!978825 (= e!630051 call!62715)))

(assert (= (and d!287821 (not res!444468)) b!978822))

(assert (= (and b!978822 c!159941) b!978821))

(assert (= (and b!978822 (not c!159941)) b!978824))

(assert (= (and b!978821 res!444470) b!978823))

(assert (= (and b!978824 c!159942) b!978820))

(assert (= (and b!978824 (not c!159942)) b!978817))

(assert (= (and b!978820 res!444469) b!978825))

(assert (= (and b!978817 (not res!444471)) b!978818))

(assert (= (and b!978818 res!444467) b!978819))

(assert (= (or b!978825 b!978819) bm!62712))

(assert (= (or b!978820 b!978818) bm!62711))

(assert (= (or b!978823 bm!62712) bm!62710))

(declare-fun m!1178927 () Bool)

(assert (=> b!978821 m!1178927))

(declare-fun m!1178929 () Bool)

(assert (=> bm!62710 m!1178929))

(declare-fun m!1178931 () Bool)

(assert (=> bm!62711 m!1178931))

(assert (=> bm!62587 d!287821))

(declare-fun d!287823 () Bool)

(assert (=> d!287823 (= (isEmpty!6265 (tail!1368 (_1!6484 lt!349754))) ((_ is Nil!9945) (tail!1368 (_1!6484 lt!349754))))))

(assert (=> b!978269 d!287823))

(assert (=> b!978269 d!287755))

(declare-fun d!287825 () Bool)

(assert (=> d!287825 (= (Exists!468 lambda!34833) (choose!6203 lambda!34833))))

(declare-fun bs!243402 () Bool)

(assert (= bs!243402 d!287825))

(declare-fun m!1178933 () Bool)

(assert (=> bs!243402 m!1178933))

(assert (=> d!287719 d!287825))

(declare-fun d!287827 () Bool)

(assert (=> d!287827 (= (Exists!468 lambda!34834) (choose!6203 lambda!34834))))

(declare-fun bs!243403 () Bool)

(assert (= bs!243403 d!287827))

(declare-fun m!1178935 () Bool)

(assert (=> bs!243403 m!1178935))

(assert (=> d!287719 d!287827))

(declare-fun bs!243404 () Bool)

(declare-fun d!287829 () Bool)

(assert (= bs!243404 (and d!287829 b!977918)))

(declare-fun lambda!34847 () Int)

(assert (=> bs!243404 (= lambda!34847 lambda!34799)))

(assert (=> bs!243404 (not (= lambda!34847 lambda!34800))))

(declare-fun bs!243405 () Bool)

(assert (= bs!243405 (and d!287829 b!978746)))

(assert (=> bs!243405 (not (= lambda!34847 lambda!34837))))

(declare-fun bs!243406 () Bool)

(assert (= bs!243406 (and d!287829 b!978745)))

(assert (=> bs!243406 (not (= lambda!34847 lambda!34836))))

(declare-fun bs!243407 () Bool)

(assert (= bs!243407 (and d!287829 b!978756)))

(assert (=> bs!243407 (not (= lambda!34847 lambda!34839))))

(declare-fun bs!243408 () Bool)

(assert (= bs!243408 (and d!287829 b!978327)))

(assert (=> bs!243408 (not (= lambda!34847 lambda!34823))))

(declare-fun bs!243409 () Bool)

(assert (= bs!243409 (and d!287829 b!978098)))

(assert (=> bs!243409 (not (= lambda!34847 lambda!34809))))

(declare-fun bs!243410 () Bool)

(assert (= bs!243410 (and d!287829 b!978099)))

(assert (=> bs!243410 (not (= lambda!34847 lambda!34810))))

(declare-fun bs!243411 () Bool)

(assert (= bs!243411 (and d!287829 b!978328)))

(assert (=> bs!243411 (not (= lambda!34847 lambda!34825))))

(declare-fun bs!243412 () Bool)

(assert (= bs!243412 (and d!287829 d!287719)))

(assert (=> bs!243412 (not (= lambda!34847 lambda!34834))))

(declare-fun bs!243413 () Bool)

(assert (= bs!243413 (and d!287829 d!287717)))

(assert (=> bs!243413 (= lambda!34847 lambda!34828)))

(assert (=> bs!243412 (= lambda!34847 lambda!34833)))

(declare-fun bs!243414 () Bool)

(assert (= bs!243414 (and d!287829 b!978757)))

(assert (=> bs!243414 (not (= lambda!34847 lambda!34840))))

(assert (=> d!287829 true))

(assert (=> d!287829 true))

(assert (=> d!287829 true))

(declare-fun lambda!34850 () Int)

(assert (=> bs!243404 (not (= lambda!34850 lambda!34799))))

(assert (=> bs!243404 (= lambda!34850 lambda!34800)))

(assert (=> bs!243405 (= (and (= s!10566 (_1!6484 lt!349754)) (= (regOne!5974 r!15766) (regOne!5974 (regTwo!5975 (regOne!5974 r!15766)))) (= EmptyExpr!2731 (regTwo!5974 (regTwo!5975 (regOne!5974 r!15766))))) (= lambda!34850 lambda!34837))))

(assert (=> bs!243406 (not (= lambda!34850 lambda!34836))))

(assert (=> bs!243407 (not (= lambda!34850 lambda!34839))))

(assert (=> bs!243408 (not (= lambda!34850 lambda!34823))))

(declare-fun bs!243415 () Bool)

(assert (= bs!243415 d!287829))

(assert (=> bs!243415 (not (= lambda!34850 lambda!34847))))

(assert (=> bs!243409 (not (= lambda!34850 lambda!34809))))

(assert (=> bs!243410 (= (= EmptyExpr!2731 (regTwo!5974 r!15766)) (= lambda!34850 lambda!34810))))

(assert (=> bs!243411 (= (and (= s!10566 (_1!6484 lt!349754)) (= (regOne!5974 r!15766) (regOne!5974 (regOne!5974 r!15766))) (= EmptyExpr!2731 (regTwo!5974 (regOne!5974 r!15766)))) (= lambda!34850 lambda!34825))))

(assert (=> bs!243412 (= lambda!34850 lambda!34834)))

(assert (=> bs!243413 (not (= lambda!34850 lambda!34828))))

(assert (=> bs!243412 (not (= lambda!34850 lambda!34833))))

(assert (=> bs!243414 (= (and (= s!10566 (_1!6484 lt!349754)) (= (regOne!5974 r!15766) (regOne!5974 (regOne!5975 (regOne!5974 r!15766)))) (= EmptyExpr!2731 (regTwo!5974 (regOne!5975 (regOne!5974 r!15766))))) (= lambda!34850 lambda!34840))))

(assert (=> d!287829 true))

(assert (=> d!287829 true))

(assert (=> d!287829 true))

(assert (=> d!287829 (= (Exists!468 lambda!34847) (Exists!468 lambda!34850))))

(assert (=> d!287829 true))

(declare-fun _$90!827 () Unit!15121)

(assert (=> d!287829 (= (choose!6205 (regOne!5974 r!15766) EmptyExpr!2731 s!10566) _$90!827)))

(declare-fun m!1178937 () Bool)

(assert (=> bs!243415 m!1178937))

(declare-fun m!1178939 () Bool)

(assert (=> bs!243415 m!1178939))

(assert (=> d!287719 d!287829))

(assert (=> d!287719 d!287693))

(assert (=> bm!62579 d!287691))

(assert (=> b!978276 d!287731))

(declare-fun b!978842 () Bool)

(declare-fun res!444492 () Bool)

(declare-fun e!630065 () Bool)

(assert (=> b!978842 (=> res!444492 e!630065)))

(assert (=> b!978842 (= res!444492 (not ((_ is Concat!4564) (ite c!159789 (reg!3060 (regOne!5974 r!15766)) (ite c!159790 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))))))))

(declare-fun e!630064 () Bool)

(assert (=> b!978842 (= e!630064 e!630065)))

(declare-fun b!978843 () Bool)

(declare-fun e!630061 () Bool)

(assert (=> b!978843 (= e!630065 e!630061)))

(declare-fun res!444488 () Bool)

(assert (=> b!978843 (=> (not res!444488) (not e!630061))))

(declare-fun call!62719 () Bool)

(assert (=> b!978843 (= res!444488 call!62719)))

(declare-fun b!978844 () Bool)

(declare-fun call!62718 () Bool)

(assert (=> b!978844 (= e!630061 call!62718)))

(declare-fun d!287831 () Bool)

(declare-fun res!444489 () Bool)

(declare-fun e!630063 () Bool)

(assert (=> d!287831 (=> res!444489 e!630063)))

(assert (=> d!287831 (= res!444489 ((_ is ElementMatch!2731) (ite c!159789 (reg!3060 (regOne!5974 r!15766)) (ite c!159790 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766))))))))

(assert (=> d!287831 (= (validRegex!1200 (ite c!159789 (reg!3060 (regOne!5974 r!15766)) (ite c!159790 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766))))) e!630063)))

(declare-fun b!978845 () Bool)

(declare-fun res!444490 () Bool)

(declare-fun e!630066 () Bool)

(assert (=> b!978845 (=> (not res!444490) (not e!630066))))

(assert (=> b!978845 (= res!444490 call!62719)))

(assert (=> b!978845 (= e!630064 e!630066)))

(declare-fun b!978846 () Bool)

(declare-fun e!630067 () Bool)

(declare-fun e!630062 () Bool)

(assert (=> b!978846 (= e!630067 e!630062)))

(declare-fun res!444491 () Bool)

(assert (=> b!978846 (= res!444491 (not (nullable!847 (reg!3060 (ite c!159789 (reg!3060 (regOne!5974 r!15766)) (ite c!159790 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766))))))))))

(assert (=> b!978846 (=> (not res!444491) (not e!630062))))

(declare-fun call!62720 () Bool)

(declare-fun c!159944 () Bool)

(declare-fun c!159943 () Bool)

(declare-fun bm!62713 () Bool)

(assert (=> bm!62713 (= call!62720 (validRegex!1200 (ite c!159943 (reg!3060 (ite c!159789 (reg!3060 (regOne!5974 r!15766)) (ite c!159790 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766))))) (ite c!159944 (regTwo!5975 (ite c!159789 (reg!3060 (regOne!5974 r!15766)) (ite c!159790 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766))))) (regTwo!5974 (ite c!159789 (reg!3060 (regOne!5974 r!15766)) (ite c!159790 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))))))))))

(declare-fun bm!62714 () Bool)

(assert (=> bm!62714 (= call!62719 (validRegex!1200 (ite c!159944 (regOne!5975 (ite c!159789 (reg!3060 (regOne!5974 r!15766)) (ite c!159790 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766))))) (regOne!5974 (ite c!159789 (reg!3060 (regOne!5974 r!15766)) (ite c!159790 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766))))))))))

(declare-fun b!978847 () Bool)

(assert (=> b!978847 (= e!630063 e!630067)))

(assert (=> b!978847 (= c!159943 ((_ is Star!2731) (ite c!159789 (reg!3060 (regOne!5974 r!15766)) (ite c!159790 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766))))))))

(declare-fun b!978848 () Bool)

(assert (=> b!978848 (= e!630062 call!62720)))

(declare-fun bm!62715 () Bool)

(assert (=> bm!62715 (= call!62718 call!62720)))

(declare-fun b!978849 () Bool)

(assert (=> b!978849 (= e!630067 e!630064)))

(assert (=> b!978849 (= c!159944 ((_ is Union!2731) (ite c!159789 (reg!3060 (regOne!5974 r!15766)) (ite c!159790 (regTwo!5975 (regOne!5974 r!15766)) (regTwo!5974 (regOne!5974 r!15766))))))))

(declare-fun b!978850 () Bool)

(assert (=> b!978850 (= e!630066 call!62718)))

(assert (= (and d!287831 (not res!444489)) b!978847))

(assert (= (and b!978847 c!159943) b!978846))

(assert (= (and b!978847 (not c!159943)) b!978849))

(assert (= (and b!978846 res!444491) b!978848))

(assert (= (and b!978849 c!159944) b!978845))

(assert (= (and b!978849 (not c!159944)) b!978842))

(assert (= (and b!978845 res!444490) b!978850))

(assert (= (and b!978842 (not res!444492)) b!978843))

(assert (= (and b!978843 res!444488) b!978844))

(assert (= (or b!978850 b!978844) bm!62715))

(assert (= (or b!978845 b!978843) bm!62714))

(assert (= (or b!978848 bm!62715) bm!62713))

(declare-fun m!1178941 () Bool)

(assert (=> b!978846 m!1178941))

(declare-fun m!1178943 () Bool)

(assert (=> bm!62713 m!1178943))

(declare-fun m!1178945 () Bool)

(assert (=> bm!62714 m!1178945))

(assert (=> bm!62590 d!287831))

(assert (=> d!287709 d!287807))

(declare-fun b!978851 () Bool)

(declare-fun res!444493 () Bool)

(declare-fun e!630070 () Bool)

(assert (=> b!978851 (=> (not res!444493) (not e!630070))))

(declare-fun call!62721 () Bool)

(assert (=> b!978851 (= res!444493 (not call!62721))))

(declare-fun b!978852 () Bool)

(declare-fun res!444496 () Bool)

(declare-fun e!630068 () Bool)

(assert (=> b!978852 (=> res!444496 e!630068)))

(assert (=> b!978852 (= res!444496 e!630070)))

(declare-fun res!444499 () Bool)

(assert (=> b!978852 (=> (not res!444499) (not e!630070))))

(declare-fun lt!349844 () Bool)

(assert (=> b!978852 (= res!444499 lt!349844)))

(declare-fun b!978853 () Bool)

(declare-fun e!630072 () Bool)

(assert (=> b!978853 (= e!630072 (matchR!1267 (derivativeStep!653 (regOne!5974 r!15766) (head!1806 Nil!9945)) (tail!1368 Nil!9945)))))

(declare-fun b!978854 () Bool)

(declare-fun e!630069 () Bool)

(assert (=> b!978854 (= e!630069 (= lt!349844 call!62721))))

(declare-fun bm!62716 () Bool)

(assert (=> bm!62716 (= call!62721 (isEmpty!6265 Nil!9945))))

(declare-fun b!978855 () Bool)

(declare-fun e!630073 () Bool)

(declare-fun e!630074 () Bool)

(assert (=> b!978855 (= e!630073 e!630074)))

(declare-fun res!444494 () Bool)

(assert (=> b!978855 (=> res!444494 e!630074)))

(assert (=> b!978855 (= res!444494 call!62721)))

(declare-fun b!978856 () Bool)

(declare-fun res!444495 () Bool)

(assert (=> b!978856 (=> (not res!444495) (not e!630070))))

(assert (=> b!978856 (= res!444495 (isEmpty!6265 (tail!1368 Nil!9945)))))

(declare-fun b!978857 () Bool)

(assert (=> b!978857 (= e!630068 e!630073)))

(declare-fun res!444497 () Bool)

(assert (=> b!978857 (=> (not res!444497) (not e!630073))))

(assert (=> b!978857 (= res!444497 (not lt!349844))))

(declare-fun b!978858 () Bool)

(assert (=> b!978858 (= e!630072 (nullable!847 (regOne!5974 r!15766)))))

(declare-fun d!287833 () Bool)

(assert (=> d!287833 e!630069))

(declare-fun c!159946 () Bool)

(assert (=> d!287833 (= c!159946 ((_ is EmptyExpr!2731) (regOne!5974 r!15766)))))

(assert (=> d!287833 (= lt!349844 e!630072)))

(declare-fun c!159945 () Bool)

(assert (=> d!287833 (= c!159945 (isEmpty!6265 Nil!9945))))

(assert (=> d!287833 (validRegex!1200 (regOne!5974 r!15766))))

(assert (=> d!287833 (= (matchR!1267 (regOne!5974 r!15766) Nil!9945) lt!349844)))

(declare-fun b!978859 () Bool)

(declare-fun res!444500 () Bool)

(assert (=> b!978859 (=> res!444500 e!630068)))

(assert (=> b!978859 (= res!444500 (not ((_ is ElementMatch!2731) (regOne!5974 r!15766))))))

(declare-fun e!630071 () Bool)

(assert (=> b!978859 (= e!630071 e!630068)))

(declare-fun b!978860 () Bool)

(assert (=> b!978860 (= e!630071 (not lt!349844))))

(declare-fun b!978861 () Bool)

(declare-fun res!444498 () Bool)

(assert (=> b!978861 (=> res!444498 e!630074)))

(assert (=> b!978861 (= res!444498 (not (isEmpty!6265 (tail!1368 Nil!9945))))))

(declare-fun b!978862 () Bool)

(assert (=> b!978862 (= e!630074 (not (= (head!1806 Nil!9945) (c!159684 (regOne!5974 r!15766)))))))

(declare-fun b!978863 () Bool)

(assert (=> b!978863 (= e!630070 (= (head!1806 Nil!9945) (c!159684 (regOne!5974 r!15766))))))

(declare-fun b!978864 () Bool)

(assert (=> b!978864 (= e!630069 e!630071)))

(declare-fun c!159947 () Bool)

(assert (=> b!978864 (= c!159947 ((_ is EmptyLang!2731) (regOne!5974 r!15766)))))

(assert (= (and d!287833 c!159945) b!978858))

(assert (= (and d!287833 (not c!159945)) b!978853))

(assert (= (and d!287833 c!159946) b!978854))

(assert (= (and d!287833 (not c!159946)) b!978864))

(assert (= (and b!978864 c!159947) b!978860))

(assert (= (and b!978864 (not c!159947)) b!978859))

(assert (= (and b!978859 (not res!444500)) b!978852))

(assert (= (and b!978852 res!444499) b!978851))

(assert (= (and b!978851 res!444493) b!978856))

(assert (= (and b!978856 res!444495) b!978863))

(assert (= (and b!978852 (not res!444496)) b!978857))

(assert (= (and b!978857 res!444497) b!978855))

(assert (= (and b!978855 (not res!444494)) b!978861))

(assert (= (and b!978861 (not res!444498)) b!978862))

(assert (= (or b!978854 b!978851 b!978855) bm!62716))

(declare-fun m!1178947 () Bool)

(assert (=> b!978862 m!1178947))

(assert (=> b!978858 m!1178587))

(declare-fun m!1178949 () Bool)

(assert (=> b!978861 m!1178949))

(assert (=> b!978861 m!1178949))

(declare-fun m!1178951 () Bool)

(assert (=> b!978861 m!1178951))

(assert (=> b!978856 m!1178949))

(assert (=> b!978856 m!1178949))

(assert (=> b!978856 m!1178951))

(declare-fun m!1178953 () Bool)

(assert (=> d!287833 m!1178953))

(assert (=> d!287833 m!1178449))

(assert (=> bm!62716 m!1178953))

(assert (=> b!978853 m!1178947))

(assert (=> b!978853 m!1178947))

(declare-fun m!1178955 () Bool)

(assert (=> b!978853 m!1178955))

(assert (=> b!978853 m!1178949))

(assert (=> b!978853 m!1178955))

(assert (=> b!978853 m!1178949))

(declare-fun m!1178957 () Bool)

(assert (=> b!978853 m!1178957))

(assert (=> b!978863 m!1178947))

(assert (=> d!287709 d!287833))

(assert (=> d!287709 d!287693))

(assert (=> b!978274 d!287823))

(assert (=> b!978274 d!287755))

(declare-fun d!287835 () Bool)

(declare-fun lt!349845 () Int)

(assert (=> d!287835 (>= lt!349845 0)))

(declare-fun e!630075 () Int)

(assert (=> d!287835 (= lt!349845 e!630075)))

(declare-fun c!159948 () Bool)

(assert (=> d!287835 (= c!159948 ((_ is Nil!9945) (t!101007 s!10566)))))

(assert (=> d!287835 (= (size!7953 (t!101007 s!10566)) lt!349845)))

(declare-fun b!978865 () Bool)

(assert (=> b!978865 (= e!630075 0)))

(declare-fun b!978866 () Bool)

(assert (=> b!978866 (= e!630075 (+ 1 (size!7953 (t!101007 (t!101007 s!10566)))))))

(assert (= (and d!287835 c!159948) b!978865))

(assert (= (and d!287835 (not c!159948)) b!978866))

(declare-fun m!1178959 () Bool)

(assert (=> b!978866 m!1178959))

(assert (=> b!978447 d!287835))

(assert (=> bm!62594 d!287757))

(declare-fun b!978867 () Bool)

(declare-fun res!444501 () Bool)

(declare-fun e!630078 () Bool)

(assert (=> b!978867 (=> (not res!444501) (not e!630078))))

(declare-fun call!62722 () Bool)

(assert (=> b!978867 (= res!444501 (not call!62722))))

(declare-fun b!978868 () Bool)

(declare-fun res!444504 () Bool)

(declare-fun e!630076 () Bool)

(assert (=> b!978868 (=> res!444504 e!630076)))

(assert (=> b!978868 (= res!444504 e!630078)))

(declare-fun res!444507 () Bool)

(assert (=> b!978868 (=> (not res!444507) (not e!630078))))

(declare-fun lt!349846 () Bool)

(assert (=> b!978868 (= res!444507 lt!349846)))

(declare-fun b!978869 () Bool)

(declare-fun e!630080 () Bool)

(assert (=> b!978869 (= e!630080 (matchR!1267 (derivativeStep!653 (derivativeStep!653 r!15766 (head!1806 s!10566)) (head!1806 (tail!1368 s!10566))) (tail!1368 (tail!1368 s!10566))))))

(declare-fun b!978870 () Bool)

(declare-fun e!630077 () Bool)

(assert (=> b!978870 (= e!630077 (= lt!349846 call!62722))))

(declare-fun bm!62717 () Bool)

(assert (=> bm!62717 (= call!62722 (isEmpty!6265 (tail!1368 s!10566)))))

(declare-fun b!978871 () Bool)

(declare-fun e!630081 () Bool)

(declare-fun e!630082 () Bool)

(assert (=> b!978871 (= e!630081 e!630082)))

(declare-fun res!444502 () Bool)

(assert (=> b!978871 (=> res!444502 e!630082)))

(assert (=> b!978871 (= res!444502 call!62722)))

(declare-fun b!978872 () Bool)

(declare-fun res!444503 () Bool)

(assert (=> b!978872 (=> (not res!444503) (not e!630078))))

(assert (=> b!978872 (= res!444503 (isEmpty!6265 (tail!1368 (tail!1368 s!10566))))))

(declare-fun b!978873 () Bool)

(assert (=> b!978873 (= e!630076 e!630081)))

(declare-fun res!444505 () Bool)

(assert (=> b!978873 (=> (not res!444505) (not e!630081))))

(assert (=> b!978873 (= res!444505 (not lt!349846))))

(declare-fun b!978874 () Bool)

(assert (=> b!978874 (= e!630080 (nullable!847 (derivativeStep!653 r!15766 (head!1806 s!10566))))))

(declare-fun d!287837 () Bool)

(assert (=> d!287837 e!630077))

(declare-fun c!159950 () Bool)

(assert (=> d!287837 (= c!159950 ((_ is EmptyExpr!2731) (derivativeStep!653 r!15766 (head!1806 s!10566))))))

(assert (=> d!287837 (= lt!349846 e!630080)))

(declare-fun c!159949 () Bool)

(assert (=> d!287837 (= c!159949 (isEmpty!6265 (tail!1368 s!10566)))))

(assert (=> d!287837 (validRegex!1200 (derivativeStep!653 r!15766 (head!1806 s!10566)))))

(assert (=> d!287837 (= (matchR!1267 (derivativeStep!653 r!15766 (head!1806 s!10566)) (tail!1368 s!10566)) lt!349846)))

(declare-fun b!978875 () Bool)

(declare-fun res!444508 () Bool)

(assert (=> b!978875 (=> res!444508 e!630076)))

(assert (=> b!978875 (= res!444508 (not ((_ is ElementMatch!2731) (derivativeStep!653 r!15766 (head!1806 s!10566)))))))

(declare-fun e!630079 () Bool)

(assert (=> b!978875 (= e!630079 e!630076)))

(declare-fun b!978876 () Bool)

(assert (=> b!978876 (= e!630079 (not lt!349846))))

(declare-fun b!978877 () Bool)

(declare-fun res!444506 () Bool)

(assert (=> b!978877 (=> res!444506 e!630082)))

(assert (=> b!978877 (= res!444506 (not (isEmpty!6265 (tail!1368 (tail!1368 s!10566)))))))

(declare-fun b!978878 () Bool)

(assert (=> b!978878 (= e!630082 (not (= (head!1806 (tail!1368 s!10566)) (c!159684 (derivativeStep!653 r!15766 (head!1806 s!10566))))))))

(declare-fun b!978879 () Bool)

(assert (=> b!978879 (= e!630078 (= (head!1806 (tail!1368 s!10566)) (c!159684 (derivativeStep!653 r!15766 (head!1806 s!10566)))))))

(declare-fun b!978880 () Bool)

(assert (=> b!978880 (= e!630077 e!630079)))

(declare-fun c!159951 () Bool)

(assert (=> b!978880 (= c!159951 ((_ is EmptyLang!2731) (derivativeStep!653 r!15766 (head!1806 s!10566))))))

(assert (= (and d!287837 c!159949) b!978874))

(assert (= (and d!287837 (not c!159949)) b!978869))

(assert (= (and d!287837 c!159950) b!978870))

(assert (= (and d!287837 (not c!159950)) b!978880))

(assert (= (and b!978880 c!159951) b!978876))

(assert (= (and b!978880 (not c!159951)) b!978875))

(assert (= (and b!978875 (not res!444508)) b!978868))

(assert (= (and b!978868 res!444507) b!978867))

(assert (= (and b!978867 res!444501) b!978872))

(assert (= (and b!978872 res!444503) b!978879))

(assert (= (and b!978868 (not res!444504)) b!978873))

(assert (= (and b!978873 res!444505) b!978871))

(assert (= (and b!978871 (not res!444502)) b!978877))

(assert (= (and b!978877 (not res!444506)) b!978878))

(assert (= (or b!978870 b!978867 b!978871) bm!62717))

(assert (=> b!978878 m!1178551))

(declare-fun m!1178961 () Bool)

(assert (=> b!978878 m!1178961))

(assert (=> b!978874 m!1178555))

(declare-fun m!1178963 () Bool)

(assert (=> b!978874 m!1178963))

(assert (=> b!978877 m!1178551))

(declare-fun m!1178965 () Bool)

(assert (=> b!978877 m!1178965))

(assert (=> b!978877 m!1178965))

(declare-fun m!1178967 () Bool)

(assert (=> b!978877 m!1178967))

(assert (=> b!978872 m!1178551))

(assert (=> b!978872 m!1178965))

(assert (=> b!978872 m!1178965))

(assert (=> b!978872 m!1178967))

(assert (=> d!287837 m!1178551))

(assert (=> d!287837 m!1178553))

(assert (=> d!287837 m!1178555))

(declare-fun m!1178969 () Bool)

(assert (=> d!287837 m!1178969))

(assert (=> bm!62717 m!1178551))

(assert (=> bm!62717 m!1178553))

(assert (=> b!978869 m!1178551))

(assert (=> b!978869 m!1178961))

(assert (=> b!978869 m!1178555))

(assert (=> b!978869 m!1178961))

(declare-fun m!1178971 () Bool)

(assert (=> b!978869 m!1178971))

(assert (=> b!978869 m!1178551))

(assert (=> b!978869 m!1178965))

(assert (=> b!978869 m!1178971))

(assert (=> b!978869 m!1178965))

(declare-fun m!1178973 () Bool)

(assert (=> b!978869 m!1178973))

(assert (=> b!978879 m!1178551))

(assert (=> b!978879 m!1178961))

(assert (=> b!978225 d!287837))

(declare-fun bm!62718 () Bool)

(declare-fun c!159956 () Bool)

(declare-fun c!159952 () Bool)

(declare-fun call!62725 () Regex!2731)

(declare-fun c!159954 () Bool)

(assert (=> bm!62718 (= call!62725 (derivativeStep!653 (ite c!159956 (regOne!5975 r!15766) (ite c!159954 (reg!3060 r!15766) (ite c!159952 (regTwo!5974 r!15766) (regOne!5974 r!15766)))) (head!1806 s!10566)))))

(declare-fun b!978881 () Bool)

(declare-fun e!630084 () Regex!2731)

(declare-fun call!62726 () Regex!2731)

(assert (=> b!978881 (= e!630084 (Union!2731 call!62725 call!62726))))

(declare-fun e!630083 () Regex!2731)

(declare-fun b!978882 () Bool)

(declare-fun call!62723 () Regex!2731)

(assert (=> b!978882 (= e!630083 (Union!2731 (Concat!4564 call!62726 (regTwo!5974 r!15766)) call!62723))))

(declare-fun b!978883 () Bool)

(assert (=> b!978883 (= c!159956 ((_ is Union!2731) r!15766))))

(declare-fun e!630085 () Regex!2731)

(assert (=> b!978883 (= e!630085 e!630084)))

(declare-fun b!978884 () Bool)

(declare-fun e!630087 () Regex!2731)

(declare-fun call!62724 () Regex!2731)

(assert (=> b!978884 (= e!630087 (Concat!4564 call!62724 r!15766))))

(declare-fun d!287839 () Bool)

(declare-fun lt!349847 () Regex!2731)

(assert (=> d!287839 (validRegex!1200 lt!349847)))

(declare-fun e!630086 () Regex!2731)

(assert (=> d!287839 (= lt!349847 e!630086)))

(declare-fun c!159953 () Bool)

(assert (=> d!287839 (= c!159953 (or ((_ is EmptyExpr!2731) r!15766) ((_ is EmptyLang!2731) r!15766)))))

(assert (=> d!287839 (validRegex!1200 r!15766)))

(assert (=> d!287839 (= (derivativeStep!653 r!15766 (head!1806 s!10566)) lt!349847)))

(declare-fun b!978885 () Bool)

(assert (=> b!978885 (= c!159952 (nullable!847 (regOne!5974 r!15766)))))

(assert (=> b!978885 (= e!630087 e!630083)))

(declare-fun b!978886 () Bool)

(assert (=> b!978886 (= e!630086 EmptyLang!2731)))

(declare-fun bm!62719 () Bool)

(assert (=> bm!62719 (= call!62726 (derivativeStep!653 (ite c!159956 (regTwo!5975 r!15766) (regOne!5974 r!15766)) (head!1806 s!10566)))))

(declare-fun b!978887 () Bool)

(assert (=> b!978887 (= e!630086 e!630085)))

(declare-fun c!159955 () Bool)

(assert (=> b!978887 (= c!159955 ((_ is ElementMatch!2731) r!15766))))

(declare-fun bm!62720 () Bool)

(assert (=> bm!62720 (= call!62723 call!62724)))

(declare-fun bm!62721 () Bool)

(assert (=> bm!62721 (= call!62724 call!62725)))

(declare-fun b!978888 () Bool)

(assert (=> b!978888 (= e!630083 (Union!2731 (Concat!4564 call!62723 (regTwo!5974 r!15766)) EmptyLang!2731))))

(declare-fun b!978889 () Bool)

(assert (=> b!978889 (= e!630084 e!630087)))

(assert (=> b!978889 (= c!159954 ((_ is Star!2731) r!15766))))

(declare-fun b!978890 () Bool)

(assert (=> b!978890 (= e!630085 (ite (= (head!1806 s!10566) (c!159684 r!15766)) EmptyExpr!2731 EmptyLang!2731))))

(assert (= (and d!287839 c!159953) b!978886))

(assert (= (and d!287839 (not c!159953)) b!978887))

(assert (= (and b!978887 c!159955) b!978890))

(assert (= (and b!978887 (not c!159955)) b!978883))

(assert (= (and b!978883 c!159956) b!978881))

(assert (= (and b!978883 (not c!159956)) b!978889))

(assert (= (and b!978889 c!159954) b!978884))

(assert (= (and b!978889 (not c!159954)) b!978885))

(assert (= (and b!978885 c!159952) b!978882))

(assert (= (and b!978885 (not c!159952)) b!978888))

(assert (= (or b!978882 b!978888) bm!62720))

(assert (= (or b!978884 bm!62720) bm!62721))

(assert (= (or b!978881 bm!62721) bm!62718))

(assert (= (or b!978881 b!978882) bm!62719))

(assert (=> bm!62718 m!1178547))

(declare-fun m!1178975 () Bool)

(assert (=> bm!62718 m!1178975))

(declare-fun m!1178977 () Bool)

(assert (=> d!287839 m!1178977))

(assert (=> d!287839 m!1178421))

(assert (=> b!978885 m!1178587))

(assert (=> bm!62719 m!1178547))

(declare-fun m!1178979 () Bool)

(assert (=> bm!62719 m!1178979))

(assert (=> b!978225 d!287839))

(assert (=> b!978225 d!287765))

(assert (=> b!978225 d!287737))

(assert (=> b!978228 d!287735))

(assert (=> b!978228 d!287737))

(declare-fun d!287841 () Bool)

(assert (=> d!287841 (= (nullable!847 r!15766) (nullableFct!201 r!15766))))

(declare-fun bs!243425 () Bool)

(assert (= bs!243425 d!287841))

(declare-fun m!1178981 () Bool)

(assert (=> bs!243425 m!1178981))

(assert (=> b!978230 d!287841))

(declare-fun b!978891 () Bool)

(declare-fun res!444509 () Bool)

(declare-fun e!630090 () Bool)

(assert (=> b!978891 (=> (not res!444509) (not e!630090))))

(declare-fun call!62727 () Bool)

(assert (=> b!978891 (= res!444509 (not call!62727))))

(declare-fun b!978892 () Bool)

(declare-fun res!444512 () Bool)

(declare-fun e!630088 () Bool)

(assert (=> b!978892 (=> res!444512 e!630088)))

(assert (=> b!978892 (= res!444512 e!630090)))

(declare-fun res!444515 () Bool)

(assert (=> b!978892 (=> (not res!444515) (not e!630090))))

(declare-fun lt!349848 () Bool)

(assert (=> b!978892 (= res!444515 lt!349848)))

(declare-fun b!978893 () Bool)

(declare-fun e!630092 () Bool)

(assert (=> b!978893 (= e!630092 (matchR!1267 (derivativeStep!653 (regOne!5974 r!15766) (head!1806 (_1!6484 (get!3444 lt!349811)))) (tail!1368 (_1!6484 (get!3444 lt!349811)))))))

(declare-fun b!978894 () Bool)

(declare-fun e!630089 () Bool)

(assert (=> b!978894 (= e!630089 (= lt!349848 call!62727))))

(declare-fun bm!62722 () Bool)

(assert (=> bm!62722 (= call!62727 (isEmpty!6265 (_1!6484 (get!3444 lt!349811))))))

(declare-fun b!978895 () Bool)

(declare-fun e!630093 () Bool)

(declare-fun e!630094 () Bool)

(assert (=> b!978895 (= e!630093 e!630094)))

(declare-fun res!444510 () Bool)

(assert (=> b!978895 (=> res!444510 e!630094)))

(assert (=> b!978895 (= res!444510 call!62727)))

(declare-fun b!978896 () Bool)

(declare-fun res!444511 () Bool)

(assert (=> b!978896 (=> (not res!444511) (not e!630090))))

(assert (=> b!978896 (= res!444511 (isEmpty!6265 (tail!1368 (_1!6484 (get!3444 lt!349811)))))))

(declare-fun b!978897 () Bool)

(assert (=> b!978897 (= e!630088 e!630093)))

(declare-fun res!444513 () Bool)

(assert (=> b!978897 (=> (not res!444513) (not e!630093))))

(assert (=> b!978897 (= res!444513 (not lt!349848))))

(declare-fun b!978898 () Bool)

(assert (=> b!978898 (= e!630092 (nullable!847 (regOne!5974 r!15766)))))

(declare-fun d!287843 () Bool)

(assert (=> d!287843 e!630089))

(declare-fun c!159958 () Bool)

(assert (=> d!287843 (= c!159958 ((_ is EmptyExpr!2731) (regOne!5974 r!15766)))))

(assert (=> d!287843 (= lt!349848 e!630092)))

(declare-fun c!159957 () Bool)

(assert (=> d!287843 (= c!159957 (isEmpty!6265 (_1!6484 (get!3444 lt!349811))))))

(assert (=> d!287843 (validRegex!1200 (regOne!5974 r!15766))))

(assert (=> d!287843 (= (matchR!1267 (regOne!5974 r!15766) (_1!6484 (get!3444 lt!349811))) lt!349848)))

(declare-fun b!978899 () Bool)

(declare-fun res!444516 () Bool)

(assert (=> b!978899 (=> res!444516 e!630088)))

(assert (=> b!978899 (= res!444516 (not ((_ is ElementMatch!2731) (regOne!5974 r!15766))))))

(declare-fun e!630091 () Bool)

(assert (=> b!978899 (= e!630091 e!630088)))

(declare-fun b!978900 () Bool)

(assert (=> b!978900 (= e!630091 (not lt!349848))))

(declare-fun b!978901 () Bool)

(declare-fun res!444514 () Bool)

(assert (=> b!978901 (=> res!444514 e!630094)))

(assert (=> b!978901 (= res!444514 (not (isEmpty!6265 (tail!1368 (_1!6484 (get!3444 lt!349811))))))))

(declare-fun b!978902 () Bool)

(assert (=> b!978902 (= e!630094 (not (= (head!1806 (_1!6484 (get!3444 lt!349811))) (c!159684 (regOne!5974 r!15766)))))))

(declare-fun b!978903 () Bool)

(assert (=> b!978903 (= e!630090 (= (head!1806 (_1!6484 (get!3444 lt!349811))) (c!159684 (regOne!5974 r!15766))))))

(declare-fun b!978904 () Bool)

(assert (=> b!978904 (= e!630089 e!630091)))

(declare-fun c!159959 () Bool)

(assert (=> b!978904 (= c!159959 ((_ is EmptyLang!2731) (regOne!5974 r!15766)))))

(assert (= (and d!287843 c!159957) b!978898))

(assert (= (and d!287843 (not c!159957)) b!978893))

(assert (= (and d!287843 c!159958) b!978894))

(assert (= (and d!287843 (not c!159958)) b!978904))

(assert (= (and b!978904 c!159959) b!978900))

(assert (= (and b!978904 (not c!159959)) b!978899))

(assert (= (and b!978899 (not res!444516)) b!978892))

(assert (= (and b!978892 res!444515) b!978891))

(assert (= (and b!978891 res!444509) b!978896))

(assert (= (and b!978896 res!444511) b!978903))

(assert (= (and b!978892 (not res!444512)) b!978897))

(assert (= (and b!978897 res!444513) b!978895))

(assert (= (and b!978895 (not res!444510)) b!978901))

(assert (= (and b!978901 (not res!444514)) b!978902))

(assert (= (or b!978894 b!978891 b!978895) bm!62722))

(declare-fun m!1178983 () Bool)

(assert (=> b!978902 m!1178983))

(assert (=> b!978898 m!1178587))

(declare-fun m!1178985 () Bool)

(assert (=> b!978901 m!1178985))

(assert (=> b!978901 m!1178985))

(declare-fun m!1178987 () Bool)

(assert (=> b!978901 m!1178987))

(assert (=> b!978896 m!1178985))

(assert (=> b!978896 m!1178985))

(assert (=> b!978896 m!1178987))

(declare-fun m!1178989 () Bool)

(assert (=> d!287843 m!1178989))

(assert (=> d!287843 m!1178449))

(assert (=> bm!62722 m!1178989))

(assert (=> b!978893 m!1178983))

(assert (=> b!978893 m!1178983))

(declare-fun m!1178991 () Bool)

(assert (=> b!978893 m!1178991))

(assert (=> b!978893 m!1178985))

(assert (=> b!978893 m!1178991))

(assert (=> b!978893 m!1178985))

(declare-fun m!1178993 () Bool)

(assert (=> b!978893 m!1178993))

(assert (=> b!978903 m!1178983))

(assert (=> b!978468 d!287843))

(assert (=> b!978468 d!287763))

(declare-fun bs!243427 () Bool)

(declare-fun b!978906 () Bool)

(assert (= bs!243427 (and b!978906 b!977918)))

(declare-fun lambda!34853 () Int)

(assert (=> bs!243427 (not (= lambda!34853 lambda!34799))))

(assert (=> bs!243427 (not (= lambda!34853 lambda!34800))))

(declare-fun bs!243428 () Bool)

(assert (= bs!243428 (and b!978906 b!978746)))

(assert (=> bs!243428 (not (= lambda!34853 lambda!34837))))

(declare-fun bs!243429 () Bool)

(assert (= bs!243429 (and b!978906 b!978745)))

(assert (=> bs!243429 (= (and (= s!10566 (_1!6484 lt!349754)) (= (reg!3060 (regOne!5975 r!15766)) (reg!3060 (regTwo!5975 (regOne!5974 r!15766)))) (= (regOne!5975 r!15766) (regTwo!5975 (regOne!5974 r!15766)))) (= lambda!34853 lambda!34836))))

(declare-fun bs!243430 () Bool)

(assert (= bs!243430 (and b!978906 b!978756)))

(assert (=> bs!243430 (= (and (= s!10566 (_1!6484 lt!349754)) (= (reg!3060 (regOne!5975 r!15766)) (reg!3060 (regOne!5975 (regOne!5974 r!15766)))) (= (regOne!5975 r!15766) (regOne!5975 (regOne!5974 r!15766)))) (= lambda!34853 lambda!34839))))

(declare-fun bs!243431 () Bool)

(assert (= bs!243431 (and b!978906 b!978327)))

(assert (=> bs!243431 (= (and (= s!10566 (_1!6484 lt!349754)) (= (reg!3060 (regOne!5975 r!15766)) (reg!3060 (regOne!5974 r!15766))) (= (regOne!5975 r!15766) (regOne!5974 r!15766))) (= lambda!34853 lambda!34823))))

(declare-fun bs!243432 () Bool)

(assert (= bs!243432 (and b!978906 d!287829)))

(assert (=> bs!243432 (not (= lambda!34853 lambda!34847))))

(declare-fun bs!243433 () Bool)

(assert (= bs!243433 (and b!978906 b!978098)))

(assert (=> bs!243433 (= (and (= (reg!3060 (regOne!5975 r!15766)) (reg!3060 r!15766)) (= (regOne!5975 r!15766) r!15766)) (= lambda!34853 lambda!34809))))

(declare-fun bs!243434 () Bool)

(assert (= bs!243434 (and b!978906 b!978099)))

(assert (=> bs!243434 (not (= lambda!34853 lambda!34810))))

(assert (=> bs!243432 (not (= lambda!34853 lambda!34850))))

(declare-fun bs!243435 () Bool)

(assert (= bs!243435 (and b!978906 b!978328)))

(assert (=> bs!243435 (not (= lambda!34853 lambda!34825))))

(declare-fun bs!243436 () Bool)

(assert (= bs!243436 (and b!978906 d!287719)))

(assert (=> bs!243436 (not (= lambda!34853 lambda!34834))))

(declare-fun bs!243437 () Bool)

(assert (= bs!243437 (and b!978906 d!287717)))

(assert (=> bs!243437 (not (= lambda!34853 lambda!34828))))

(assert (=> bs!243436 (not (= lambda!34853 lambda!34833))))

(declare-fun bs!243438 () Bool)

(assert (= bs!243438 (and b!978906 b!978757)))

(assert (=> bs!243438 (not (= lambda!34853 lambda!34840))))

(assert (=> b!978906 true))

(assert (=> b!978906 true))

(declare-fun bs!243439 () Bool)

(declare-fun b!978907 () Bool)

(assert (= bs!243439 (and b!978907 b!977918)))

(declare-fun lambda!34854 () Int)

(assert (=> bs!243439 (not (= lambda!34854 lambda!34799))))

(assert (=> bs!243439 (= (and (= (regOne!5974 (regOne!5975 r!15766)) (regOne!5974 r!15766)) (= (regTwo!5974 (regOne!5975 r!15766)) EmptyExpr!2731)) (= lambda!34854 lambda!34800))))

(declare-fun bs!243440 () Bool)

(assert (= bs!243440 (and b!978907 b!978746)))

(assert (=> bs!243440 (= (and (= s!10566 (_1!6484 lt!349754)) (= (regOne!5974 (regOne!5975 r!15766)) (regOne!5974 (regTwo!5975 (regOne!5974 r!15766)))) (= (regTwo!5974 (regOne!5975 r!15766)) (regTwo!5974 (regTwo!5975 (regOne!5974 r!15766))))) (= lambda!34854 lambda!34837))))

(declare-fun bs!243441 () Bool)

(assert (= bs!243441 (and b!978907 b!978745)))

(assert (=> bs!243441 (not (= lambda!34854 lambda!34836))))

(declare-fun bs!243442 () Bool)

(assert (= bs!243442 (and b!978907 b!978756)))

(assert (=> bs!243442 (not (= lambda!34854 lambda!34839))))

(declare-fun bs!243443 () Bool)

(assert (= bs!243443 (and b!978907 b!978327)))

(assert (=> bs!243443 (not (= lambda!34854 lambda!34823))))

(declare-fun bs!243444 () Bool)

(assert (= bs!243444 (and b!978907 d!287829)))

(assert (=> bs!243444 (not (= lambda!34854 lambda!34847))))

(declare-fun bs!243445 () Bool)

(assert (= bs!243445 (and b!978907 b!978098)))

(assert (=> bs!243445 (not (= lambda!34854 lambda!34809))))

(declare-fun bs!243446 () Bool)

(assert (= bs!243446 (and b!978907 b!978099)))

(assert (=> bs!243446 (= (and (= (regOne!5974 (regOne!5975 r!15766)) (regOne!5974 r!15766)) (= (regTwo!5974 (regOne!5975 r!15766)) (regTwo!5974 r!15766))) (= lambda!34854 lambda!34810))))

(declare-fun bs!243447 () Bool)

(assert (= bs!243447 (and b!978907 b!978906)))

(assert (=> bs!243447 (not (= lambda!34854 lambda!34853))))

(assert (=> bs!243444 (= (and (= (regOne!5974 (regOne!5975 r!15766)) (regOne!5974 r!15766)) (= (regTwo!5974 (regOne!5975 r!15766)) EmptyExpr!2731)) (= lambda!34854 lambda!34850))))

(declare-fun bs!243448 () Bool)

(assert (= bs!243448 (and b!978907 b!978328)))

(assert (=> bs!243448 (= (and (= s!10566 (_1!6484 lt!349754)) (= (regOne!5974 (regOne!5975 r!15766)) (regOne!5974 (regOne!5974 r!15766))) (= (regTwo!5974 (regOne!5975 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))) (= lambda!34854 lambda!34825))))

(declare-fun bs!243449 () Bool)

(assert (= bs!243449 (and b!978907 d!287719)))

(assert (=> bs!243449 (= (and (= (regOne!5974 (regOne!5975 r!15766)) (regOne!5974 r!15766)) (= (regTwo!5974 (regOne!5975 r!15766)) EmptyExpr!2731)) (= lambda!34854 lambda!34834))))

(declare-fun bs!243450 () Bool)

(assert (= bs!243450 (and b!978907 d!287717)))

(assert (=> bs!243450 (not (= lambda!34854 lambda!34828))))

(assert (=> bs!243449 (not (= lambda!34854 lambda!34833))))

(declare-fun bs!243451 () Bool)

(assert (= bs!243451 (and b!978907 b!978757)))

(assert (=> bs!243451 (= (and (= s!10566 (_1!6484 lt!349754)) (= (regOne!5974 (regOne!5975 r!15766)) (regOne!5974 (regOne!5975 (regOne!5974 r!15766)))) (= (regTwo!5974 (regOne!5975 r!15766)) (regTwo!5974 (regOne!5975 (regOne!5974 r!15766))))) (= lambda!34854 lambda!34840))))

(assert (=> b!978907 true))

(assert (=> b!978907 true))

(declare-fun c!159960 () Bool)

(declare-fun bm!62723 () Bool)

(declare-fun call!62728 () Bool)

(assert (=> bm!62723 (= call!62728 (Exists!468 (ite c!159960 lambda!34853 lambda!34854)))))

(declare-fun b!978905 () Bool)

(declare-fun e!630098 () Bool)

(declare-fun e!630095 () Bool)

(assert (=> b!978905 (= e!630098 e!630095)))

(declare-fun res!444517 () Bool)

(assert (=> b!978905 (= res!444517 (matchRSpec!530 (regOne!5975 (regOne!5975 r!15766)) s!10566))))

(assert (=> b!978905 (=> res!444517 e!630095)))

(declare-fun e!630097 () Bool)

(assert (=> b!978906 (= e!630097 call!62728)))

(declare-fun e!630099 () Bool)

(assert (=> b!978907 (= e!630099 call!62728)))

(declare-fun b!978908 () Bool)

(declare-fun e!630101 () Bool)

(declare-fun e!630096 () Bool)

(assert (=> b!978908 (= e!630101 e!630096)))

(declare-fun res!444519 () Bool)

(assert (=> b!978908 (= res!444519 (not ((_ is EmptyLang!2731) (regOne!5975 r!15766))))))

(assert (=> b!978908 (=> (not res!444519) (not e!630096))))

(declare-fun bm!62724 () Bool)

(declare-fun call!62729 () Bool)

(assert (=> bm!62724 (= call!62729 (isEmpty!6265 s!10566))))

(declare-fun b!978910 () Bool)

(assert (=> b!978910 (= e!630098 e!630099)))

(assert (=> b!978910 (= c!159960 ((_ is Star!2731) (regOne!5975 r!15766)))))

(declare-fun b!978911 () Bool)

(declare-fun c!159963 () Bool)

(assert (=> b!978911 (= c!159963 ((_ is Union!2731) (regOne!5975 r!15766)))))

(declare-fun e!630100 () Bool)

(assert (=> b!978911 (= e!630100 e!630098)))

(declare-fun d!287845 () Bool)

(declare-fun c!159962 () Bool)

(assert (=> d!287845 (= c!159962 ((_ is EmptyExpr!2731) (regOne!5975 r!15766)))))

(assert (=> d!287845 (= (matchRSpec!530 (regOne!5975 r!15766) s!10566) e!630101)))

(declare-fun b!978909 () Bool)

(assert (=> b!978909 (= e!630095 (matchRSpec!530 (regTwo!5975 (regOne!5975 r!15766)) s!10566))))

(declare-fun b!978912 () Bool)

(declare-fun c!159961 () Bool)

(assert (=> b!978912 (= c!159961 ((_ is ElementMatch!2731) (regOne!5975 r!15766)))))

(assert (=> b!978912 (= e!630096 e!630100)))

(declare-fun b!978913 () Bool)

(assert (=> b!978913 (= e!630101 call!62729)))

(declare-fun b!978914 () Bool)

(assert (=> b!978914 (= e!630100 (= s!10566 (Cons!9945 (c!159684 (regOne!5975 r!15766)) Nil!9945)))))

(declare-fun b!978915 () Bool)

(declare-fun res!444518 () Bool)

(assert (=> b!978915 (=> res!444518 e!630097)))

(assert (=> b!978915 (= res!444518 call!62729)))

(assert (=> b!978915 (= e!630099 e!630097)))

(assert (= (and d!287845 c!159962) b!978913))

(assert (= (and d!287845 (not c!159962)) b!978908))

(assert (= (and b!978908 res!444519) b!978912))

(assert (= (and b!978912 c!159961) b!978914))

(assert (= (and b!978912 (not c!159961)) b!978911))

(assert (= (and b!978911 c!159963) b!978905))

(assert (= (and b!978911 (not c!159963)) b!978910))

(assert (= (and b!978905 (not res!444517)) b!978909))

(assert (= (and b!978910 c!159960) b!978915))

(assert (= (and b!978910 (not c!159960)) b!978907))

(assert (= (and b!978915 (not res!444518)) b!978906))

(assert (= (or b!978906 b!978907) bm!62723))

(assert (= (or b!978913 b!978915) bm!62724))

(declare-fun m!1179001 () Bool)

(assert (=> bm!62723 m!1179001))

(declare-fun m!1179003 () Bool)

(assert (=> b!978905 m!1179003))

(assert (=> bm!62724 m!1178419))

(declare-fun m!1179005 () Bool)

(assert (=> b!978909 m!1179005))

(assert (=> b!978097 d!287845))

(declare-fun d!287853 () Bool)

(assert (=> d!287853 (= (nullable!847 (reg!3060 r!15766)) (nullableFct!201 (reg!3060 r!15766)))))

(declare-fun bs!243453 () Bool)

(assert (= bs!243453 d!287853))

(declare-fun m!1179007 () Bool)

(assert (=> bs!243453 m!1179007))

(assert (=> b!978304 d!287853))

(declare-fun d!287855 () Bool)

(assert (=> d!287855 (= (Exists!468 (ite c!159791 lambda!34823 lambda!34825)) (choose!6203 (ite c!159791 lambda!34823 lambda!34825)))))

(declare-fun bs!243454 () Bool)

(assert (= bs!243454 d!287855))

(declare-fun m!1179009 () Bool)

(assert (=> bs!243454 m!1179009))

(assert (=> bm!62593 d!287855))

(assert (=> b!978235 d!287765))

(declare-fun d!287857 () Bool)

(declare-fun lt!349850 () Int)

(assert (=> d!287857 (>= lt!349850 0)))

(declare-fun e!630103 () Int)

(assert (=> d!287857 (= lt!349850 e!630103)))

(declare-fun c!159965 () Bool)

(assert (=> d!287857 (= c!159965 ((_ is Nil!9945) (t!101007 (_1!6484 lt!349754))))))

(assert (=> d!287857 (= (size!7953 (t!101007 (_1!6484 lt!349754))) lt!349850)))

(declare-fun b!978918 () Bool)

(assert (=> b!978918 (= e!630103 0)))

(declare-fun b!978919 () Bool)

(assert (=> b!978919 (= e!630103 (+ 1 (size!7953 (t!101007 (t!101007 (_1!6484 lt!349754))))))))

(assert (= (and d!287857 c!159965) b!978918))

(assert (= (and d!287857 (not c!159965)) b!978919))

(declare-fun m!1179011 () Bool)

(assert (=> b!978919 m!1179011))

(assert (=> b!978428 d!287857))

(declare-fun d!287859 () Bool)

(declare-fun e!630104 () Bool)

(assert (=> d!287859 e!630104))

(declare-fun res!444521 () Bool)

(assert (=> d!287859 (=> (not res!444521) (not e!630104))))

(declare-fun lt!349851 () List!9961)

(assert (=> d!287859 (= res!444521 (= (content!1419 lt!349851) ((_ map or) (content!1419 (_1!6484 (get!3444 lt!349811))) (content!1419 (_2!6484 (get!3444 lt!349811))))))))

(declare-fun e!630105 () List!9961)

(assert (=> d!287859 (= lt!349851 e!630105)))

(declare-fun c!159966 () Bool)

(assert (=> d!287859 (= c!159966 ((_ is Nil!9945) (_1!6484 (get!3444 lt!349811))))))

(assert (=> d!287859 (= (++!2698 (_1!6484 (get!3444 lt!349811)) (_2!6484 (get!3444 lt!349811))) lt!349851)))

(declare-fun b!978923 () Bool)

(declare-fun res!444520 () Bool)

(assert (=> b!978923 (=> (not res!444520) (not e!630104))))

(assert (=> b!978923 (= res!444520 (= (size!7953 lt!349851) (+ (size!7953 (_1!6484 (get!3444 lt!349811))) (size!7953 (_2!6484 (get!3444 lt!349811))))))))

(declare-fun b!978924 () Bool)

(assert (=> b!978924 (= e!630104 (or (not (= (_2!6484 (get!3444 lt!349811)) Nil!9945)) (= lt!349851 (_1!6484 (get!3444 lt!349811)))))))

(declare-fun b!978921 () Bool)

(assert (=> b!978921 (= e!630105 (_2!6484 (get!3444 lt!349811)))))

(declare-fun b!978922 () Bool)

(assert (=> b!978922 (= e!630105 (Cons!9945 (h!15346 (_1!6484 (get!3444 lt!349811))) (++!2698 (t!101007 (_1!6484 (get!3444 lt!349811))) (_2!6484 (get!3444 lt!349811)))))))

(assert (= (and d!287859 c!159966) b!978921))

(assert (= (and d!287859 (not c!159966)) b!978922))

(assert (= (and d!287859 res!444521) b!978923))

(assert (= (and b!978923 res!444520) b!978924))

(declare-fun m!1179013 () Bool)

(assert (=> d!287859 m!1179013))

(declare-fun m!1179015 () Bool)

(assert (=> d!287859 m!1179015))

(declare-fun m!1179017 () Bool)

(assert (=> d!287859 m!1179017))

(declare-fun m!1179019 () Bool)

(assert (=> b!978923 m!1179019))

(declare-fun m!1179021 () Bool)

(assert (=> b!978923 m!1179021))

(declare-fun m!1179023 () Bool)

(assert (=> b!978923 m!1179023))

(declare-fun m!1179025 () Bool)

(assert (=> b!978922 m!1179025))

(assert (=> b!978470 d!287859))

(assert (=> b!978470 d!287763))

(declare-fun b!978925 () Bool)

(declare-fun res!444522 () Bool)

(declare-fun e!630108 () Bool)

(assert (=> b!978925 (=> (not res!444522) (not e!630108))))

(declare-fun call!62730 () Bool)

(assert (=> b!978925 (= res!444522 (not call!62730))))

(declare-fun b!978926 () Bool)

(declare-fun res!444525 () Bool)

(declare-fun e!630106 () Bool)

(assert (=> b!978926 (=> res!444525 e!630106)))

(assert (=> b!978926 (= res!444525 e!630108)))

(declare-fun res!444528 () Bool)

(assert (=> b!978926 (=> (not res!444528) (not e!630108))))

(declare-fun lt!349852 () Bool)

(assert (=> b!978926 (= res!444528 lt!349852)))

(declare-fun b!978927 () Bool)

(declare-fun e!630110 () Bool)

(assert (=> b!978927 (= e!630110 (matchR!1267 (derivativeStep!653 EmptyExpr!2731 (head!1806 s!10566)) (tail!1368 s!10566)))))

(declare-fun b!978928 () Bool)

(declare-fun e!630107 () Bool)

(assert (=> b!978928 (= e!630107 (= lt!349852 call!62730))))

(declare-fun bm!62725 () Bool)

(assert (=> bm!62725 (= call!62730 (isEmpty!6265 s!10566))))

(declare-fun b!978929 () Bool)

(declare-fun e!630111 () Bool)

(declare-fun e!630112 () Bool)

(assert (=> b!978929 (= e!630111 e!630112)))

(declare-fun res!444523 () Bool)

(assert (=> b!978929 (=> res!444523 e!630112)))

(assert (=> b!978929 (= res!444523 call!62730)))

(declare-fun b!978930 () Bool)

(declare-fun res!444524 () Bool)

(assert (=> b!978930 (=> (not res!444524) (not e!630108))))

(assert (=> b!978930 (= res!444524 (isEmpty!6265 (tail!1368 s!10566)))))

(declare-fun b!978931 () Bool)

(assert (=> b!978931 (= e!630106 e!630111)))

(declare-fun res!444526 () Bool)

(assert (=> b!978931 (=> (not res!444526) (not e!630111))))

(assert (=> b!978931 (= res!444526 (not lt!349852))))

(declare-fun b!978932 () Bool)

(assert (=> b!978932 (= e!630110 (nullable!847 EmptyExpr!2731))))

(declare-fun d!287865 () Bool)

(assert (=> d!287865 e!630107))

(declare-fun c!159968 () Bool)

(assert (=> d!287865 (= c!159968 ((_ is EmptyExpr!2731) EmptyExpr!2731))))

(assert (=> d!287865 (= lt!349852 e!630110)))

(declare-fun c!159967 () Bool)

(assert (=> d!287865 (= c!159967 (isEmpty!6265 s!10566))))

(assert (=> d!287865 (validRegex!1200 EmptyExpr!2731)))

(assert (=> d!287865 (= (matchR!1267 EmptyExpr!2731 s!10566) lt!349852)))

(declare-fun b!978933 () Bool)

(declare-fun res!444529 () Bool)

(assert (=> b!978933 (=> res!444529 e!630106)))

(assert (=> b!978933 (= res!444529 (not ((_ is ElementMatch!2731) EmptyExpr!2731)))))

(declare-fun e!630109 () Bool)

(assert (=> b!978933 (= e!630109 e!630106)))

(declare-fun b!978934 () Bool)

(assert (=> b!978934 (= e!630109 (not lt!349852))))

(declare-fun b!978935 () Bool)

(declare-fun res!444527 () Bool)

(assert (=> b!978935 (=> res!444527 e!630112)))

(assert (=> b!978935 (= res!444527 (not (isEmpty!6265 (tail!1368 s!10566))))))

(declare-fun b!978936 () Bool)

(assert (=> b!978936 (= e!630112 (not (= (head!1806 s!10566) (c!159684 EmptyExpr!2731))))))

(declare-fun b!978937 () Bool)

(assert (=> b!978937 (= e!630108 (= (head!1806 s!10566) (c!159684 EmptyExpr!2731)))))

(declare-fun b!978938 () Bool)

(assert (=> b!978938 (= e!630107 e!630109)))

(declare-fun c!159969 () Bool)

(assert (=> b!978938 (= c!159969 ((_ is EmptyLang!2731) EmptyExpr!2731))))

(assert (= (and d!287865 c!159967) b!978932))

(assert (= (and d!287865 (not c!159967)) b!978927))

(assert (= (and d!287865 c!159968) b!978928))

(assert (= (and d!287865 (not c!159968)) b!978938))

(assert (= (and b!978938 c!159969) b!978934))

(assert (= (and b!978938 (not c!159969)) b!978933))

(assert (= (and b!978933 (not res!444529)) b!978926))

(assert (= (and b!978926 res!444528) b!978925))

(assert (= (and b!978925 res!444522) b!978930))

(assert (= (and b!978930 res!444524) b!978937))

(assert (= (and b!978926 (not res!444525)) b!978931))

(assert (= (and b!978931 res!444526) b!978929))

(assert (= (and b!978929 (not res!444523)) b!978935))

(assert (= (and b!978935 (not res!444527)) b!978936))

(assert (= (or b!978928 b!978925 b!978929) bm!62725))

(assert (=> b!978936 m!1178547))

(assert (=> b!978932 m!1178769))

(assert (=> b!978935 m!1178551))

(assert (=> b!978935 m!1178551))

(assert (=> b!978935 m!1178553))

(assert (=> b!978930 m!1178551))

(assert (=> b!978930 m!1178551))

(assert (=> b!978930 m!1178553))

(assert (=> d!287865 m!1178419))

(assert (=> d!287865 m!1178777))

(assert (=> bm!62725 m!1178419))

(assert (=> b!978927 m!1178547))

(assert (=> b!978927 m!1178547))

(declare-fun m!1179029 () Bool)

(assert (=> b!978927 m!1179029))

(assert (=> b!978927 m!1178551))

(assert (=> b!978927 m!1179029))

(assert (=> b!978927 m!1178551))

(declare-fun m!1179031 () Bool)

(assert (=> b!978927 m!1179031))

(assert (=> b!978937 m!1178547))

(assert (=> b!978472 d!287865))

(declare-fun bs!243456 () Bool)

(declare-fun b!978951 () Bool)

(assert (= bs!243456 (and b!978951 b!977918)))

(declare-fun lambda!34855 () Int)

(assert (=> bs!243456 (not (= lambda!34855 lambda!34799))))

(assert (=> bs!243456 (not (= lambda!34855 lambda!34800))))

(declare-fun bs!243457 () Bool)

(assert (= bs!243457 (and b!978951 b!978746)))

(assert (=> bs!243457 (not (= lambda!34855 lambda!34837))))

(declare-fun bs!243459 () Bool)

(assert (= bs!243459 (and b!978951 b!978745)))

(assert (=> bs!243459 (= (and (= s!10566 (_1!6484 lt!349754)) (= (reg!3060 (regTwo!5975 r!15766)) (reg!3060 (regTwo!5975 (regOne!5974 r!15766)))) (= (regTwo!5975 r!15766) (regTwo!5975 (regOne!5974 r!15766)))) (= lambda!34855 lambda!34836))))

(declare-fun bs!243460 () Bool)

(assert (= bs!243460 (and b!978951 b!978756)))

(assert (=> bs!243460 (= (and (= s!10566 (_1!6484 lt!349754)) (= (reg!3060 (regTwo!5975 r!15766)) (reg!3060 (regOne!5975 (regOne!5974 r!15766)))) (= (regTwo!5975 r!15766) (regOne!5975 (regOne!5974 r!15766)))) (= lambda!34855 lambda!34839))))

(declare-fun bs!243462 () Bool)

(assert (= bs!243462 (and b!978951 b!978907)))

(assert (=> bs!243462 (not (= lambda!34855 lambda!34854))))

(declare-fun bs!243463 () Bool)

(assert (= bs!243463 (and b!978951 b!978327)))

(assert (=> bs!243463 (= (and (= s!10566 (_1!6484 lt!349754)) (= (reg!3060 (regTwo!5975 r!15766)) (reg!3060 (regOne!5974 r!15766))) (= (regTwo!5975 r!15766) (regOne!5974 r!15766))) (= lambda!34855 lambda!34823))))

(declare-fun bs!243465 () Bool)

(assert (= bs!243465 (and b!978951 d!287829)))

(assert (=> bs!243465 (not (= lambda!34855 lambda!34847))))

(declare-fun bs!243466 () Bool)

(assert (= bs!243466 (and b!978951 b!978098)))

(assert (=> bs!243466 (= (and (= (reg!3060 (regTwo!5975 r!15766)) (reg!3060 r!15766)) (= (regTwo!5975 r!15766) r!15766)) (= lambda!34855 lambda!34809))))

(declare-fun bs!243468 () Bool)

(assert (= bs!243468 (and b!978951 b!978099)))

(assert (=> bs!243468 (not (= lambda!34855 lambda!34810))))

(declare-fun bs!243469 () Bool)

(assert (= bs!243469 (and b!978951 b!978906)))

(assert (=> bs!243469 (= (and (= (reg!3060 (regTwo!5975 r!15766)) (reg!3060 (regOne!5975 r!15766))) (= (regTwo!5975 r!15766) (regOne!5975 r!15766))) (= lambda!34855 lambda!34853))))

(assert (=> bs!243465 (not (= lambda!34855 lambda!34850))))

(declare-fun bs!243471 () Bool)

(assert (= bs!243471 (and b!978951 b!978328)))

(assert (=> bs!243471 (not (= lambda!34855 lambda!34825))))

(declare-fun bs!243473 () Bool)

(assert (= bs!243473 (and b!978951 d!287719)))

(assert (=> bs!243473 (not (= lambda!34855 lambda!34834))))

(declare-fun bs!243474 () Bool)

(assert (= bs!243474 (and b!978951 d!287717)))

(assert (=> bs!243474 (not (= lambda!34855 lambda!34828))))

(assert (=> bs!243473 (not (= lambda!34855 lambda!34833))))

(declare-fun bs!243476 () Bool)

(assert (= bs!243476 (and b!978951 b!978757)))

(assert (=> bs!243476 (not (= lambda!34855 lambda!34840))))

(assert (=> b!978951 true))

(assert (=> b!978951 true))

(declare-fun bs!243479 () Bool)

(declare-fun b!978952 () Bool)

(assert (= bs!243479 (and b!978952 b!977918)))

(declare-fun lambda!34857 () Int)

(assert (=> bs!243479 (not (= lambda!34857 lambda!34799))))

(assert (=> bs!243479 (= (and (= (regOne!5974 (regTwo!5975 r!15766)) (regOne!5974 r!15766)) (= (regTwo!5974 (regTwo!5975 r!15766)) EmptyExpr!2731)) (= lambda!34857 lambda!34800))))

(declare-fun bs!243481 () Bool)

(assert (= bs!243481 (and b!978952 b!978746)))

(assert (=> bs!243481 (= (and (= s!10566 (_1!6484 lt!349754)) (= (regOne!5974 (regTwo!5975 r!15766)) (regOne!5974 (regTwo!5975 (regOne!5974 r!15766)))) (= (regTwo!5974 (regTwo!5975 r!15766)) (regTwo!5974 (regTwo!5975 (regOne!5974 r!15766))))) (= lambda!34857 lambda!34837))))

(declare-fun bs!243482 () Bool)

(assert (= bs!243482 (and b!978952 b!978745)))

(assert (=> bs!243482 (not (= lambda!34857 lambda!34836))))

(declare-fun bs!243483 () Bool)

(assert (= bs!243483 (and b!978952 b!978756)))

(assert (=> bs!243483 (not (= lambda!34857 lambda!34839))))

(declare-fun bs!243484 () Bool)

(assert (= bs!243484 (and b!978952 b!978907)))

(assert (=> bs!243484 (= (and (= (regOne!5974 (regTwo!5975 r!15766)) (regOne!5974 (regOne!5975 r!15766))) (= (regTwo!5974 (regTwo!5975 r!15766)) (regTwo!5974 (regOne!5975 r!15766)))) (= lambda!34857 lambda!34854))))

(declare-fun bs!243485 () Bool)

(assert (= bs!243485 (and b!978952 b!978327)))

(assert (=> bs!243485 (not (= lambda!34857 lambda!34823))))

(declare-fun bs!243486 () Bool)

(assert (= bs!243486 (and b!978952 d!287829)))

(assert (=> bs!243486 (not (= lambda!34857 lambda!34847))))

(declare-fun bs!243487 () Bool)

(assert (= bs!243487 (and b!978952 b!978098)))

(assert (=> bs!243487 (not (= lambda!34857 lambda!34809))))

(declare-fun bs!243488 () Bool)

(assert (= bs!243488 (and b!978952 b!978099)))

(assert (=> bs!243488 (= (and (= (regOne!5974 (regTwo!5975 r!15766)) (regOne!5974 r!15766)) (= (regTwo!5974 (regTwo!5975 r!15766)) (regTwo!5974 r!15766))) (= lambda!34857 lambda!34810))))

(declare-fun bs!243489 () Bool)

(assert (= bs!243489 (and b!978952 b!978906)))

(assert (=> bs!243489 (not (= lambda!34857 lambda!34853))))

(assert (=> bs!243486 (= (and (= (regOne!5974 (regTwo!5975 r!15766)) (regOne!5974 r!15766)) (= (regTwo!5974 (regTwo!5975 r!15766)) EmptyExpr!2731)) (= lambda!34857 lambda!34850))))

(declare-fun bs!243490 () Bool)

(assert (= bs!243490 (and b!978952 b!978328)))

(assert (=> bs!243490 (= (and (= s!10566 (_1!6484 lt!349754)) (= (regOne!5974 (regTwo!5975 r!15766)) (regOne!5974 (regOne!5974 r!15766))) (= (regTwo!5974 (regTwo!5975 r!15766)) (regTwo!5974 (regOne!5974 r!15766)))) (= lambda!34857 lambda!34825))))

(declare-fun bs!243491 () Bool)

(assert (= bs!243491 (and b!978952 d!287717)))

(assert (=> bs!243491 (not (= lambda!34857 lambda!34828))))

(declare-fun bs!243493 () Bool)

(assert (= bs!243493 (and b!978952 d!287719)))

(assert (=> bs!243493 (not (= lambda!34857 lambda!34833))))

(declare-fun bs!243494 () Bool)

(assert (= bs!243494 (and b!978952 b!978757)))

(assert (=> bs!243494 (= (and (= s!10566 (_1!6484 lt!349754)) (= (regOne!5974 (regTwo!5975 r!15766)) (regOne!5974 (regOne!5975 (regOne!5974 r!15766)))) (= (regTwo!5974 (regTwo!5975 r!15766)) (regTwo!5974 (regOne!5975 (regOne!5974 r!15766))))) (= lambda!34857 lambda!34840))))

(assert (=> bs!243493 (= (and (= (regOne!5974 (regTwo!5975 r!15766)) (regOne!5974 r!15766)) (= (regTwo!5974 (regTwo!5975 r!15766)) EmptyExpr!2731)) (= lambda!34857 lambda!34834))))

(declare-fun bs!243496 () Bool)

(assert (= bs!243496 (and b!978952 b!978951)))

(assert (=> bs!243496 (not (= lambda!34857 lambda!34855))))

(assert (=> b!978952 true))

(assert (=> b!978952 true))

(declare-fun call!62733 () Bool)

(declare-fun c!159974 () Bool)

(declare-fun bm!62728 () Bool)

(assert (=> bm!62728 (= call!62733 (Exists!468 (ite c!159974 lambda!34855 lambda!34857)))))

(declare-fun b!978950 () Bool)

(declare-fun e!630123 () Bool)

(declare-fun e!630120 () Bool)

(assert (=> b!978950 (= e!630123 e!630120)))

(declare-fun res!444533 () Bool)

(assert (=> b!978950 (= res!444533 (matchRSpec!530 (regOne!5975 (regTwo!5975 r!15766)) s!10566))))

(assert (=> b!978950 (=> res!444533 e!630120)))

(declare-fun e!630122 () Bool)

(assert (=> b!978951 (= e!630122 call!62733)))

(declare-fun e!630124 () Bool)

(assert (=> b!978952 (= e!630124 call!62733)))

(declare-fun b!978953 () Bool)

(declare-fun e!630126 () Bool)

(declare-fun e!630121 () Bool)

(assert (=> b!978953 (= e!630126 e!630121)))

(declare-fun res!444535 () Bool)

(assert (=> b!978953 (= res!444535 (not ((_ is EmptyLang!2731) (regTwo!5975 r!15766))))))

(assert (=> b!978953 (=> (not res!444535) (not e!630121))))

(declare-fun bm!62729 () Bool)

(declare-fun call!62734 () Bool)

(assert (=> bm!62729 (= call!62734 (isEmpty!6265 s!10566))))

(declare-fun b!978955 () Bool)

(assert (=> b!978955 (= e!630123 e!630124)))

(assert (=> b!978955 (= c!159974 ((_ is Star!2731) (regTwo!5975 r!15766)))))

(declare-fun b!978956 () Bool)

(declare-fun c!159977 () Bool)

(assert (=> b!978956 (= c!159977 ((_ is Union!2731) (regTwo!5975 r!15766)))))

(declare-fun e!630125 () Bool)

(assert (=> b!978956 (= e!630125 e!630123)))

(declare-fun d!287869 () Bool)

(declare-fun c!159976 () Bool)

(assert (=> d!287869 (= c!159976 ((_ is EmptyExpr!2731) (regTwo!5975 r!15766)))))

(assert (=> d!287869 (= (matchRSpec!530 (regTwo!5975 r!15766) s!10566) e!630126)))

(declare-fun b!978954 () Bool)

(assert (=> b!978954 (= e!630120 (matchRSpec!530 (regTwo!5975 (regTwo!5975 r!15766)) s!10566))))

(declare-fun b!978957 () Bool)

(declare-fun c!159975 () Bool)

(assert (=> b!978957 (= c!159975 ((_ is ElementMatch!2731) (regTwo!5975 r!15766)))))

(assert (=> b!978957 (= e!630121 e!630125)))

(declare-fun b!978958 () Bool)

(assert (=> b!978958 (= e!630126 call!62734)))

(declare-fun b!978959 () Bool)

(assert (=> b!978959 (= e!630125 (= s!10566 (Cons!9945 (c!159684 (regTwo!5975 r!15766)) Nil!9945)))))

(declare-fun b!978960 () Bool)

(declare-fun res!444534 () Bool)

(assert (=> b!978960 (=> res!444534 e!630122)))

(assert (=> b!978960 (= res!444534 call!62734)))

(assert (=> b!978960 (= e!630124 e!630122)))

(assert (= (and d!287869 c!159976) b!978958))

(assert (= (and d!287869 (not c!159976)) b!978953))

(assert (= (and b!978953 res!444535) b!978957))

(assert (= (and b!978957 c!159975) b!978959))

(assert (= (and b!978957 (not c!159975)) b!978956))

(assert (= (and b!978956 c!159977) b!978950))

(assert (= (and b!978956 (not c!159977)) b!978955))

(assert (= (and b!978950 (not res!444533)) b!978954))

(assert (= (and b!978955 c!159974) b!978960))

(assert (= (and b!978955 (not c!159974)) b!978952))

(assert (= (and b!978960 (not res!444534)) b!978951))

(assert (= (or b!978951 b!978952) bm!62728))

(assert (= (or b!978958 b!978960) bm!62729))

(declare-fun m!1179033 () Bool)

(assert (=> bm!62728 m!1179033))

(declare-fun m!1179035 () Bool)

(assert (=> b!978950 m!1179035))

(assert (=> bm!62729 m!1178419))

(declare-fun m!1179037 () Bool)

(assert (=> b!978954 m!1179037))

(assert (=> b!978101 d!287869))

(declare-fun b!978961 () Bool)

(declare-fun res!444540 () Bool)

(declare-fun e!630131 () Bool)

(assert (=> b!978961 (=> res!444540 e!630131)))

(assert (=> b!978961 (= res!444540 (not ((_ is Concat!4564) (ite c!159788 (regOne!5975 r!15766) (regOne!5974 r!15766)))))))

(declare-fun e!630130 () Bool)

(assert (=> b!978961 (= e!630130 e!630131)))

(declare-fun b!978962 () Bool)

(declare-fun e!630127 () Bool)

(assert (=> b!978962 (= e!630131 e!630127)))

(declare-fun res!444536 () Bool)

(assert (=> b!978962 (=> (not res!444536) (not e!630127))))

(declare-fun call!62736 () Bool)

(assert (=> b!978962 (= res!444536 call!62736)))

(declare-fun b!978963 () Bool)

(declare-fun call!62735 () Bool)

(assert (=> b!978963 (= e!630127 call!62735)))

(declare-fun d!287871 () Bool)

(declare-fun res!444537 () Bool)

(declare-fun e!630129 () Bool)

(assert (=> d!287871 (=> res!444537 e!630129)))

(assert (=> d!287871 (= res!444537 ((_ is ElementMatch!2731) (ite c!159788 (regOne!5975 r!15766) (regOne!5974 r!15766))))))

(assert (=> d!287871 (= (validRegex!1200 (ite c!159788 (regOne!5975 r!15766) (regOne!5974 r!15766))) e!630129)))

(declare-fun b!978964 () Bool)

(declare-fun res!444538 () Bool)

(declare-fun e!630132 () Bool)

(assert (=> b!978964 (=> (not res!444538) (not e!630132))))

(assert (=> b!978964 (= res!444538 call!62736)))

(assert (=> b!978964 (= e!630130 e!630132)))

(declare-fun b!978965 () Bool)

(declare-fun e!630133 () Bool)

(declare-fun e!630128 () Bool)

(assert (=> b!978965 (= e!630133 e!630128)))

(declare-fun res!444539 () Bool)

(assert (=> b!978965 (= res!444539 (not (nullable!847 (reg!3060 (ite c!159788 (regOne!5975 r!15766) (regOne!5974 r!15766))))))))

(assert (=> b!978965 (=> (not res!444539) (not e!630128))))

(declare-fun bm!62730 () Bool)

(declare-fun c!159978 () Bool)

(declare-fun c!159979 () Bool)

(declare-fun call!62737 () Bool)

(assert (=> bm!62730 (= call!62737 (validRegex!1200 (ite c!159978 (reg!3060 (ite c!159788 (regOne!5975 r!15766) (regOne!5974 r!15766))) (ite c!159979 (regTwo!5975 (ite c!159788 (regOne!5975 r!15766) (regOne!5974 r!15766))) (regTwo!5974 (ite c!159788 (regOne!5975 r!15766) (regOne!5974 r!15766)))))))))

(declare-fun bm!62731 () Bool)

(assert (=> bm!62731 (= call!62736 (validRegex!1200 (ite c!159979 (regOne!5975 (ite c!159788 (regOne!5975 r!15766) (regOne!5974 r!15766))) (regOne!5974 (ite c!159788 (regOne!5975 r!15766) (regOne!5974 r!15766))))))))

(declare-fun b!978966 () Bool)

(assert (=> b!978966 (= e!630129 e!630133)))

(assert (=> b!978966 (= c!159978 ((_ is Star!2731) (ite c!159788 (regOne!5975 r!15766) (regOne!5974 r!15766))))))

(declare-fun b!978967 () Bool)

(assert (=> b!978967 (= e!630128 call!62737)))

(declare-fun bm!62732 () Bool)

(assert (=> bm!62732 (= call!62735 call!62737)))

(declare-fun b!978968 () Bool)

(assert (=> b!978968 (= e!630133 e!630130)))

(assert (=> b!978968 (= c!159979 ((_ is Union!2731) (ite c!159788 (regOne!5975 r!15766) (regOne!5974 r!15766))))))

(declare-fun b!978969 () Bool)

(assert (=> b!978969 (= e!630132 call!62735)))

(assert (= (and d!287871 (not res!444537)) b!978966))

(assert (= (and b!978966 c!159978) b!978965))

(assert (= (and b!978966 (not c!159978)) b!978968))

(assert (= (and b!978965 res!444539) b!978967))

(assert (= (and b!978968 c!159979) b!978964))

(assert (= (and b!978968 (not c!159979)) b!978961))

(assert (= (and b!978964 res!444538) b!978969))

(assert (= (and b!978961 (not res!444540)) b!978962))

(assert (= (and b!978962 res!444536) b!978963))

(assert (= (or b!978969 b!978963) bm!62732))

(assert (= (or b!978964 b!978962) bm!62731))

(assert (= (or b!978967 bm!62732) bm!62730))

(declare-fun m!1179039 () Bool)

(assert (=> b!978965 m!1179039))

(declare-fun m!1179041 () Bool)

(assert (=> bm!62730 m!1179041))

(declare-fun m!1179043 () Bool)

(assert (=> bm!62731 m!1179043))

(assert (=> bm!62588 d!287871))

(declare-fun d!287873 () Bool)

(assert (=> d!287873 (= (isDefined!1942 (findConcatSeparation!406 (regOne!5974 r!15766) EmptyExpr!2731 Nil!9945 s!10566 s!10566)) (not (isEmpty!6267 (findConcatSeparation!406 (regOne!5974 r!15766) EmptyExpr!2731 Nil!9945 s!10566 s!10566))))))

(declare-fun bs!243504 () Bool)

(assert (= bs!243504 d!287873))

(assert (=> bs!243504 m!1178433))

(declare-fun m!1179045 () Bool)

(assert (=> bs!243504 m!1179045))

(assert (=> d!287717 d!287873))

(assert (=> d!287717 d!287693))

(assert (=> d!287717 d!287709))

(declare-fun d!287875 () Bool)

(assert (=> d!287875 (= (Exists!468 lambda!34828) (choose!6203 lambda!34828))))

(declare-fun bs!243506 () Bool)

(assert (= bs!243506 d!287875))

(declare-fun m!1179047 () Bool)

(assert (=> bs!243506 m!1179047))

(assert (=> d!287717 d!287875))

(declare-fun bs!243509 () Bool)

(declare-fun d!287877 () Bool)

(assert (= bs!243509 (and d!287877 b!977918)))

(declare-fun lambda!34861 () Int)

(assert (=> bs!243509 (= lambda!34861 lambda!34799)))

(assert (=> bs!243509 (not (= lambda!34861 lambda!34800))))

(declare-fun bs!243510 () Bool)

(assert (= bs!243510 (and d!287877 b!978746)))

(assert (=> bs!243510 (not (= lambda!34861 lambda!34837))))

(declare-fun bs!243511 () Bool)

(assert (= bs!243511 (and d!287877 b!978745)))

(assert (=> bs!243511 (not (= lambda!34861 lambda!34836))))

(declare-fun bs!243512 () Bool)

(assert (= bs!243512 (and d!287877 b!978756)))

(assert (=> bs!243512 (not (= lambda!34861 lambda!34839))))

(declare-fun bs!243513 () Bool)

(assert (= bs!243513 (and d!287877 b!978907)))

(assert (=> bs!243513 (not (= lambda!34861 lambda!34854))))

(declare-fun bs!243514 () Bool)

(assert (= bs!243514 (and d!287877 b!978327)))

(assert (=> bs!243514 (not (= lambda!34861 lambda!34823))))

(declare-fun bs!243515 () Bool)

(assert (= bs!243515 (and d!287877 d!287829)))

(assert (=> bs!243515 (= lambda!34861 lambda!34847)))

(declare-fun bs!243516 () Bool)

(assert (= bs!243516 (and d!287877 b!978098)))

(assert (=> bs!243516 (not (= lambda!34861 lambda!34809))))

(declare-fun bs!243517 () Bool)

(assert (= bs!243517 (and d!287877 b!978099)))

(assert (=> bs!243517 (not (= lambda!34861 lambda!34810))))

(declare-fun bs!243518 () Bool)

(assert (= bs!243518 (and d!287877 b!978906)))

(assert (=> bs!243518 (not (= lambda!34861 lambda!34853))))

(declare-fun bs!243519 () Bool)

(assert (= bs!243519 (and d!287877 b!978952)))

(assert (=> bs!243519 (not (= lambda!34861 lambda!34857))))

(assert (=> bs!243515 (not (= lambda!34861 lambda!34850))))

(declare-fun bs!243520 () Bool)

(assert (= bs!243520 (and d!287877 b!978328)))

(assert (=> bs!243520 (not (= lambda!34861 lambda!34825))))

(declare-fun bs!243521 () Bool)

(assert (= bs!243521 (and d!287877 d!287717)))

(assert (=> bs!243521 (= lambda!34861 lambda!34828)))

(declare-fun bs!243522 () Bool)

(assert (= bs!243522 (and d!287877 d!287719)))

(assert (=> bs!243522 (= lambda!34861 lambda!34833)))

(declare-fun bs!243523 () Bool)

(assert (= bs!243523 (and d!287877 b!978757)))

(assert (=> bs!243523 (not (= lambda!34861 lambda!34840))))

(assert (=> bs!243522 (not (= lambda!34861 lambda!34834))))

(declare-fun bs!243524 () Bool)

(assert (= bs!243524 (and d!287877 b!978951)))

(assert (=> bs!243524 (not (= lambda!34861 lambda!34855))))

(assert (=> d!287877 true))

(assert (=> d!287877 true))

(assert (=> d!287877 true))

(assert (=> d!287877 (= (isDefined!1942 (findConcatSeparation!406 (regOne!5974 r!15766) EmptyExpr!2731 Nil!9945 s!10566 s!10566)) (Exists!468 lambda!34861))))

(assert (=> d!287877 true))

(declare-fun _$89!1161 () Unit!15121)

(assert (=> d!287877 (= (choose!6204 (regOne!5974 r!15766) EmptyExpr!2731 s!10566) _$89!1161)))

(declare-fun bs!243525 () Bool)

(assert (= bs!243525 d!287877))

(assert (=> bs!243525 m!1178433))

(assert (=> bs!243525 m!1178433))

(assert (=> bs!243525 m!1178681))

(declare-fun m!1179079 () Bool)

(assert (=> bs!243525 m!1179079))

(assert (=> d!287717 d!287877))

(declare-fun d!287889 () Bool)

(assert (=> d!287889 (= (isEmpty!6267 lt!349753) (not ((_ is Some!2299) lt!349753)))))

(assert (=> d!287723 d!287889))

(declare-fun b!979019 () Bool)

(declare-fun e!630164 () Bool)

(declare-fun tp!299142 () Bool)

(assert (=> b!979019 (= e!630164 tp!299142)))

(declare-fun b!979017 () Bool)

(assert (=> b!979017 (= e!630164 tp_is_empty!5105)))

(declare-fun b!979018 () Bool)

(declare-fun tp!299144 () Bool)

(declare-fun tp!299143 () Bool)

(assert (=> b!979018 (= e!630164 (and tp!299144 tp!299143))))

(assert (=> b!978506 (= tp!299126 e!630164)))

(declare-fun b!979020 () Bool)

(declare-fun tp!299141 () Bool)

(declare-fun tp!299145 () Bool)

(assert (=> b!979020 (= e!630164 (and tp!299141 tp!299145))))

(assert (= (and b!978506 ((_ is ElementMatch!2731) (regOne!5974 (reg!3060 r!15766)))) b!979017))

(assert (= (and b!978506 ((_ is Concat!4564) (regOne!5974 (reg!3060 r!15766)))) b!979018))

(assert (= (and b!978506 ((_ is Star!2731) (regOne!5974 (reg!3060 r!15766)))) b!979019))

(assert (= (and b!978506 ((_ is Union!2731) (regOne!5974 (reg!3060 r!15766)))) b!979020))

(declare-fun b!979023 () Bool)

(declare-fun e!630165 () Bool)

(declare-fun tp!299147 () Bool)

(assert (=> b!979023 (= e!630165 tp!299147)))

(declare-fun b!979021 () Bool)

(assert (=> b!979021 (= e!630165 tp_is_empty!5105)))

(declare-fun b!979022 () Bool)

(declare-fun tp!299149 () Bool)

(declare-fun tp!299148 () Bool)

(assert (=> b!979022 (= e!630165 (and tp!299149 tp!299148))))

(assert (=> b!978506 (= tp!299125 e!630165)))

(declare-fun b!979024 () Bool)

(declare-fun tp!299146 () Bool)

(declare-fun tp!299150 () Bool)

(assert (=> b!979024 (= e!630165 (and tp!299146 tp!299150))))

(assert (= (and b!978506 ((_ is ElementMatch!2731) (regTwo!5974 (reg!3060 r!15766)))) b!979021))

(assert (= (and b!978506 ((_ is Concat!4564) (regTwo!5974 (reg!3060 r!15766)))) b!979022))

(assert (= (and b!978506 ((_ is Star!2731) (regTwo!5974 (reg!3060 r!15766)))) b!979023))

(assert (= (and b!978506 ((_ is Union!2731) (regTwo!5974 (reg!3060 r!15766)))) b!979024))

(declare-fun b!979027 () Bool)

(declare-fun e!630166 () Bool)

(declare-fun tp!299152 () Bool)

(assert (=> b!979027 (= e!630166 tp!299152)))

(declare-fun b!979025 () Bool)

(assert (=> b!979025 (= e!630166 tp_is_empty!5105)))

(declare-fun b!979026 () Bool)

(declare-fun tp!299154 () Bool)

(declare-fun tp!299153 () Bool)

(assert (=> b!979026 (= e!630166 (and tp!299154 tp!299153))))

(assert (=> b!978502 (= tp!299121 e!630166)))

(declare-fun b!979028 () Bool)

(declare-fun tp!299151 () Bool)

(declare-fun tp!299155 () Bool)

(assert (=> b!979028 (= e!630166 (and tp!299151 tp!299155))))

(assert (= (and b!978502 ((_ is ElementMatch!2731) (regOne!5974 (regTwo!5975 r!15766)))) b!979025))

(assert (= (and b!978502 ((_ is Concat!4564) (regOne!5974 (regTwo!5975 r!15766)))) b!979026))

(assert (= (and b!978502 ((_ is Star!2731) (regOne!5974 (regTwo!5975 r!15766)))) b!979027))

(assert (= (and b!978502 ((_ is Union!2731) (regOne!5974 (regTwo!5975 r!15766)))) b!979028))

(declare-fun b!979031 () Bool)

(declare-fun e!630167 () Bool)

(declare-fun tp!299157 () Bool)

(assert (=> b!979031 (= e!630167 tp!299157)))

(declare-fun b!979029 () Bool)

(assert (=> b!979029 (= e!630167 tp_is_empty!5105)))

(declare-fun b!979030 () Bool)

(declare-fun tp!299159 () Bool)

(declare-fun tp!299158 () Bool)

(assert (=> b!979030 (= e!630167 (and tp!299159 tp!299158))))

(assert (=> b!978502 (= tp!299120 e!630167)))

(declare-fun b!979032 () Bool)

(declare-fun tp!299156 () Bool)

(declare-fun tp!299160 () Bool)

(assert (=> b!979032 (= e!630167 (and tp!299156 tp!299160))))

(assert (= (and b!978502 ((_ is ElementMatch!2731) (regTwo!5974 (regTwo!5975 r!15766)))) b!979029))

(assert (= (and b!978502 ((_ is Concat!4564) (regTwo!5974 (regTwo!5975 r!15766)))) b!979030))

(assert (= (and b!978502 ((_ is Star!2731) (regTwo!5974 (regTwo!5975 r!15766)))) b!979031))

(assert (= (and b!978502 ((_ is Union!2731) (regTwo!5974 (regTwo!5975 r!15766)))) b!979032))

(declare-fun b!979035 () Bool)

(declare-fun e!630168 () Bool)

(declare-fun tp!299162 () Bool)

(assert (=> b!979035 (= e!630168 tp!299162)))

(declare-fun b!979033 () Bool)

(assert (=> b!979033 (= e!630168 tp_is_empty!5105)))

(declare-fun b!979034 () Bool)

(declare-fun tp!299164 () Bool)

(declare-fun tp!299163 () Bool)

(assert (=> b!979034 (= e!630168 (and tp!299164 tp!299163))))

(assert (=> b!978515 (= tp!299134 e!630168)))

(declare-fun b!979036 () Bool)

(declare-fun tp!299161 () Bool)

(declare-fun tp!299165 () Bool)

(assert (=> b!979036 (= e!630168 (and tp!299161 tp!299165))))

(assert (= (and b!978515 ((_ is ElementMatch!2731) (reg!3060 (regTwo!5974 r!15766)))) b!979033))

(assert (= (and b!978515 ((_ is Concat!4564) (reg!3060 (regTwo!5974 r!15766)))) b!979034))

(assert (= (and b!978515 ((_ is Star!2731) (reg!3060 (regTwo!5974 r!15766)))) b!979035))

(assert (= (and b!978515 ((_ is Union!2731) (reg!3060 (regTwo!5974 r!15766)))) b!979036))

(declare-fun b!979039 () Bool)

(declare-fun e!630169 () Bool)

(declare-fun tp!299167 () Bool)

(assert (=> b!979039 (= e!630169 tp!299167)))

(declare-fun b!979037 () Bool)

(assert (=> b!979037 (= e!630169 tp_is_empty!5105)))

(declare-fun b!979038 () Bool)

(declare-fun tp!299169 () Bool)

(declare-fun tp!299168 () Bool)

(assert (=> b!979038 (= e!630169 (and tp!299169 tp!299168))))

(assert (=> b!978516 (= tp!299133 e!630169)))

(declare-fun b!979040 () Bool)

(declare-fun tp!299166 () Bool)

(declare-fun tp!299170 () Bool)

(assert (=> b!979040 (= e!630169 (and tp!299166 tp!299170))))

(assert (= (and b!978516 ((_ is ElementMatch!2731) (regOne!5975 (regTwo!5974 r!15766)))) b!979037))

(assert (= (and b!978516 ((_ is Concat!4564) (regOne!5975 (regTwo!5974 r!15766)))) b!979038))

(assert (= (and b!978516 ((_ is Star!2731) (regOne!5975 (regTwo!5974 r!15766)))) b!979039))

(assert (= (and b!978516 ((_ is Union!2731) (regOne!5975 (regTwo!5974 r!15766)))) b!979040))

(declare-fun b!979043 () Bool)

(declare-fun e!630170 () Bool)

(declare-fun tp!299172 () Bool)

(assert (=> b!979043 (= e!630170 tp!299172)))

(declare-fun b!979041 () Bool)

(assert (=> b!979041 (= e!630170 tp_is_empty!5105)))

(declare-fun b!979042 () Bool)

(declare-fun tp!299174 () Bool)

(declare-fun tp!299173 () Bool)

(assert (=> b!979042 (= e!630170 (and tp!299174 tp!299173))))

(assert (=> b!978516 (= tp!299137 e!630170)))

(declare-fun b!979044 () Bool)

(declare-fun tp!299171 () Bool)

(declare-fun tp!299175 () Bool)

(assert (=> b!979044 (= e!630170 (and tp!299171 tp!299175))))

(assert (= (and b!978516 ((_ is ElementMatch!2731) (regTwo!5975 (regTwo!5974 r!15766)))) b!979041))

(assert (= (and b!978516 ((_ is Concat!4564) (regTwo!5975 (regTwo!5974 r!15766)))) b!979042))

(assert (= (and b!978516 ((_ is Star!2731) (regTwo!5975 (regTwo!5974 r!15766)))) b!979043))

(assert (= (and b!978516 ((_ is Union!2731) (regTwo!5975 (regTwo!5974 r!15766)))) b!979044))

(declare-fun b!979047 () Bool)

(declare-fun e!630171 () Bool)

(declare-fun tp!299177 () Bool)

(assert (=> b!979047 (= e!630171 tp!299177)))

(declare-fun b!979045 () Bool)

(assert (=> b!979045 (= e!630171 tp_is_empty!5105)))

(declare-fun b!979046 () Bool)

(declare-fun tp!299179 () Bool)

(declare-fun tp!299178 () Bool)

(assert (=> b!979046 (= e!630171 (and tp!299179 tp!299178))))

(assert (=> b!978511 (= tp!299129 e!630171)))

(declare-fun b!979048 () Bool)

(declare-fun tp!299176 () Bool)

(declare-fun tp!299180 () Bool)

(assert (=> b!979048 (= e!630171 (and tp!299176 tp!299180))))

(assert (= (and b!978511 ((_ is ElementMatch!2731) (reg!3060 (regOne!5974 r!15766)))) b!979045))

(assert (= (and b!978511 ((_ is Concat!4564) (reg!3060 (regOne!5974 r!15766)))) b!979046))

(assert (= (and b!978511 ((_ is Star!2731) (reg!3060 (regOne!5974 r!15766)))) b!979047))

(assert (= (and b!978511 ((_ is Union!2731) (reg!3060 (regOne!5974 r!15766)))) b!979048))

(declare-fun b!979055 () Bool)

(declare-fun e!630174 () Bool)

(declare-fun tp!299182 () Bool)

(assert (=> b!979055 (= e!630174 tp!299182)))

(declare-fun b!979053 () Bool)

(assert (=> b!979053 (= e!630174 tp_is_empty!5105)))

(declare-fun b!979054 () Bool)

(declare-fun tp!299184 () Bool)

(declare-fun tp!299183 () Bool)

(assert (=> b!979054 (= e!630174 (and tp!299184 tp!299183))))

(assert (=> b!978503 (= tp!299119 e!630174)))

(declare-fun b!979056 () Bool)

(declare-fun tp!299181 () Bool)

(declare-fun tp!299185 () Bool)

(assert (=> b!979056 (= e!630174 (and tp!299181 tp!299185))))

(assert (= (and b!978503 ((_ is ElementMatch!2731) (reg!3060 (regTwo!5975 r!15766)))) b!979053))

(assert (= (and b!978503 ((_ is Concat!4564) (reg!3060 (regTwo!5975 r!15766)))) b!979054))

(assert (= (and b!978503 ((_ is Star!2731) (reg!3060 (regTwo!5975 r!15766)))) b!979055))

(assert (= (and b!978503 ((_ is Union!2731) (reg!3060 (regTwo!5975 r!15766)))) b!979056))

(declare-fun b!979059 () Bool)

(declare-fun e!630175 () Bool)

(declare-fun tp!299187 () Bool)

(assert (=> b!979059 (= e!630175 tp!299187)))

(declare-fun b!979057 () Bool)

(assert (=> b!979057 (= e!630175 tp_is_empty!5105)))

(declare-fun b!979058 () Bool)

(declare-fun tp!299189 () Bool)

(declare-fun tp!299188 () Bool)

(assert (=> b!979058 (= e!630175 (and tp!299189 tp!299188))))

(assert (=> b!978512 (= tp!299128 e!630175)))

(declare-fun b!979060 () Bool)

(declare-fun tp!299186 () Bool)

(declare-fun tp!299190 () Bool)

(assert (=> b!979060 (= e!630175 (and tp!299186 tp!299190))))

(assert (= (and b!978512 ((_ is ElementMatch!2731) (regOne!5975 (regOne!5974 r!15766)))) b!979057))

(assert (= (and b!978512 ((_ is Concat!4564) (regOne!5975 (regOne!5974 r!15766)))) b!979058))

(assert (= (and b!978512 ((_ is Star!2731) (regOne!5975 (regOne!5974 r!15766)))) b!979059))

(assert (= (and b!978512 ((_ is Union!2731) (regOne!5975 (regOne!5974 r!15766)))) b!979060))

(declare-fun b!979063 () Bool)

(declare-fun e!630176 () Bool)

(declare-fun tp!299192 () Bool)

(assert (=> b!979063 (= e!630176 tp!299192)))

(declare-fun b!979061 () Bool)

(assert (=> b!979061 (= e!630176 tp_is_empty!5105)))

(declare-fun b!979062 () Bool)

(declare-fun tp!299194 () Bool)

(declare-fun tp!299193 () Bool)

(assert (=> b!979062 (= e!630176 (and tp!299194 tp!299193))))

(assert (=> b!978512 (= tp!299132 e!630176)))

(declare-fun b!979064 () Bool)

(declare-fun tp!299191 () Bool)

(declare-fun tp!299195 () Bool)

(assert (=> b!979064 (= e!630176 (and tp!299191 tp!299195))))

(assert (= (and b!978512 ((_ is ElementMatch!2731) (regTwo!5975 (regOne!5974 r!15766)))) b!979061))

(assert (= (and b!978512 ((_ is Concat!4564) (regTwo!5975 (regOne!5974 r!15766)))) b!979062))

(assert (= (and b!978512 ((_ is Star!2731) (regTwo!5975 (regOne!5974 r!15766)))) b!979063))

(assert (= (and b!978512 ((_ is Union!2731) (regTwo!5975 (regOne!5974 r!15766)))) b!979064))

(declare-fun b!979067 () Bool)

(declare-fun e!630177 () Bool)

(declare-fun tp!299197 () Bool)

(assert (=> b!979067 (= e!630177 tp!299197)))

(declare-fun b!979065 () Bool)

(assert (=> b!979065 (= e!630177 tp_is_empty!5105)))

(declare-fun b!979066 () Bool)

(declare-fun tp!299199 () Bool)

(declare-fun tp!299198 () Bool)

(assert (=> b!979066 (= e!630177 (and tp!299199 tp!299198))))

(assert (=> b!978507 (= tp!299124 e!630177)))

(declare-fun b!979068 () Bool)

(declare-fun tp!299196 () Bool)

(declare-fun tp!299200 () Bool)

(assert (=> b!979068 (= e!630177 (and tp!299196 tp!299200))))

(assert (= (and b!978507 ((_ is ElementMatch!2731) (reg!3060 (reg!3060 r!15766)))) b!979065))

(assert (= (and b!978507 ((_ is Concat!4564) (reg!3060 (reg!3060 r!15766)))) b!979066))

(assert (= (and b!978507 ((_ is Star!2731) (reg!3060 (reg!3060 r!15766)))) b!979067))

(assert (= (and b!978507 ((_ is Union!2731) (reg!3060 (reg!3060 r!15766)))) b!979068))

(declare-fun b!979071 () Bool)

(declare-fun e!630178 () Bool)

(declare-fun tp!299202 () Bool)

(assert (=> b!979071 (= e!630178 tp!299202)))

(declare-fun b!979069 () Bool)

(assert (=> b!979069 (= e!630178 tp_is_empty!5105)))

(declare-fun b!979070 () Bool)

(declare-fun tp!299204 () Bool)

(declare-fun tp!299203 () Bool)

(assert (=> b!979070 (= e!630178 (and tp!299204 tp!299203))))

(assert (=> b!978508 (= tp!299123 e!630178)))

(declare-fun b!979072 () Bool)

(declare-fun tp!299201 () Bool)

(declare-fun tp!299205 () Bool)

(assert (=> b!979072 (= e!630178 (and tp!299201 tp!299205))))

(assert (= (and b!978508 ((_ is ElementMatch!2731) (regOne!5975 (reg!3060 r!15766)))) b!979069))

(assert (= (and b!978508 ((_ is Concat!4564) (regOne!5975 (reg!3060 r!15766)))) b!979070))

(assert (= (and b!978508 ((_ is Star!2731) (regOne!5975 (reg!3060 r!15766)))) b!979071))

(assert (= (and b!978508 ((_ is Union!2731) (regOne!5975 (reg!3060 r!15766)))) b!979072))

(declare-fun b!979075 () Bool)

(declare-fun e!630179 () Bool)

(declare-fun tp!299207 () Bool)

(assert (=> b!979075 (= e!630179 tp!299207)))

(declare-fun b!979073 () Bool)

(assert (=> b!979073 (= e!630179 tp_is_empty!5105)))

(declare-fun b!979074 () Bool)

(declare-fun tp!299209 () Bool)

(declare-fun tp!299208 () Bool)

(assert (=> b!979074 (= e!630179 (and tp!299209 tp!299208))))

(assert (=> b!978508 (= tp!299127 e!630179)))

(declare-fun b!979076 () Bool)

(declare-fun tp!299206 () Bool)

(declare-fun tp!299210 () Bool)

(assert (=> b!979076 (= e!630179 (and tp!299206 tp!299210))))

(assert (= (and b!978508 ((_ is ElementMatch!2731) (regTwo!5975 (reg!3060 r!15766)))) b!979073))

(assert (= (and b!978508 ((_ is Concat!4564) (regTwo!5975 (reg!3060 r!15766)))) b!979074))

(assert (= (and b!978508 ((_ is Star!2731) (regTwo!5975 (reg!3060 r!15766)))) b!979075))

(assert (= (and b!978508 ((_ is Union!2731) (regTwo!5975 (reg!3060 r!15766)))) b!979076))

(declare-fun b!979082 () Bool)

(declare-fun e!630187 () Bool)

(declare-fun tp!299212 () Bool)

(assert (=> b!979082 (= e!630187 tp!299212)))

(declare-fun b!979079 () Bool)

(assert (=> b!979079 (= e!630187 tp_is_empty!5105)))

(declare-fun b!979080 () Bool)

(declare-fun tp!299214 () Bool)

(declare-fun tp!299213 () Bool)

(assert (=> b!979080 (= e!630187 (and tp!299214 tp!299213))))

(assert (=> b!978498 (= tp!299116 e!630187)))

(declare-fun b!979084 () Bool)

(declare-fun tp!299211 () Bool)

(declare-fun tp!299215 () Bool)

(assert (=> b!979084 (= e!630187 (and tp!299211 tp!299215))))

(assert (= (and b!978498 ((_ is ElementMatch!2731) (regOne!5974 (regOne!5975 r!15766)))) b!979079))

(assert (= (and b!978498 ((_ is Concat!4564) (regOne!5974 (regOne!5975 r!15766)))) b!979080))

(assert (= (and b!978498 ((_ is Star!2731) (regOne!5974 (regOne!5975 r!15766)))) b!979082))

(assert (= (and b!978498 ((_ is Union!2731) (regOne!5974 (regOne!5975 r!15766)))) b!979084))

(declare-fun b!979097 () Bool)

(declare-fun e!630188 () Bool)

(declare-fun tp!299217 () Bool)

(assert (=> b!979097 (= e!630188 tp!299217)))

(declare-fun b!979095 () Bool)

(assert (=> b!979095 (= e!630188 tp_is_empty!5105)))

(declare-fun b!979096 () Bool)

(declare-fun tp!299219 () Bool)

(declare-fun tp!299218 () Bool)

(assert (=> b!979096 (= e!630188 (and tp!299219 tp!299218))))

(assert (=> b!978498 (= tp!299115 e!630188)))

(declare-fun b!979098 () Bool)

(declare-fun tp!299216 () Bool)

(declare-fun tp!299220 () Bool)

(assert (=> b!979098 (= e!630188 (and tp!299216 tp!299220))))

(assert (= (and b!978498 ((_ is ElementMatch!2731) (regTwo!5974 (regOne!5975 r!15766)))) b!979095))

(assert (= (and b!978498 ((_ is Concat!4564) (regTwo!5974 (regOne!5975 r!15766)))) b!979096))

(assert (= (and b!978498 ((_ is Star!2731) (regTwo!5974 (regOne!5975 r!15766)))) b!979097))

(assert (= (and b!978498 ((_ is Union!2731) (regTwo!5974 (regOne!5975 r!15766)))) b!979098))

(declare-fun b!979101 () Bool)

(declare-fun e!630189 () Bool)

(declare-fun tp!299222 () Bool)

(assert (=> b!979101 (= e!630189 tp!299222)))

(declare-fun b!979099 () Bool)

(assert (=> b!979099 (= e!630189 tp_is_empty!5105)))

(declare-fun b!979100 () Bool)

(declare-fun tp!299224 () Bool)

(declare-fun tp!299223 () Bool)

(assert (=> b!979100 (= e!630189 (and tp!299224 tp!299223))))

(assert (=> b!978514 (= tp!299136 e!630189)))

(declare-fun b!979102 () Bool)

(declare-fun tp!299221 () Bool)

(declare-fun tp!299225 () Bool)

(assert (=> b!979102 (= e!630189 (and tp!299221 tp!299225))))

(assert (= (and b!978514 ((_ is ElementMatch!2731) (regOne!5974 (regTwo!5974 r!15766)))) b!979099))

(assert (= (and b!978514 ((_ is Concat!4564) (regOne!5974 (regTwo!5974 r!15766)))) b!979100))

(assert (= (and b!978514 ((_ is Star!2731) (regOne!5974 (regTwo!5974 r!15766)))) b!979101))

(assert (= (and b!978514 ((_ is Union!2731) (regOne!5974 (regTwo!5974 r!15766)))) b!979102))

(declare-fun b!979105 () Bool)

(declare-fun e!630190 () Bool)

(declare-fun tp!299227 () Bool)

(assert (=> b!979105 (= e!630190 tp!299227)))

(declare-fun b!979103 () Bool)

(assert (=> b!979103 (= e!630190 tp_is_empty!5105)))

(declare-fun b!979104 () Bool)

(declare-fun tp!299229 () Bool)

(declare-fun tp!299228 () Bool)

(assert (=> b!979104 (= e!630190 (and tp!299229 tp!299228))))

(assert (=> b!978514 (= tp!299135 e!630190)))

(declare-fun b!979106 () Bool)

(declare-fun tp!299226 () Bool)

(declare-fun tp!299230 () Bool)

(assert (=> b!979106 (= e!630190 (and tp!299226 tp!299230))))

(assert (= (and b!978514 ((_ is ElementMatch!2731) (regTwo!5974 (regTwo!5974 r!15766)))) b!979103))

(assert (= (and b!978514 ((_ is Concat!4564) (regTwo!5974 (regTwo!5974 r!15766)))) b!979104))

(assert (= (and b!978514 ((_ is Star!2731) (regTwo!5974 (regTwo!5974 r!15766)))) b!979105))

(assert (= (and b!978514 ((_ is Union!2731) (regTwo!5974 (regTwo!5974 r!15766)))) b!979106))

(declare-fun b!979109 () Bool)

(declare-fun e!630191 () Bool)

(declare-fun tp!299232 () Bool)

(assert (=> b!979109 (= e!630191 tp!299232)))

(declare-fun b!979107 () Bool)

(assert (=> b!979107 (= e!630191 tp_is_empty!5105)))

(declare-fun b!979108 () Bool)

(declare-fun tp!299234 () Bool)

(declare-fun tp!299233 () Bool)

(assert (=> b!979108 (= e!630191 (and tp!299234 tp!299233))))

(assert (=> b!978510 (= tp!299131 e!630191)))

(declare-fun b!979110 () Bool)

(declare-fun tp!299231 () Bool)

(declare-fun tp!299235 () Bool)

(assert (=> b!979110 (= e!630191 (and tp!299231 tp!299235))))

(assert (= (and b!978510 ((_ is ElementMatch!2731) (regOne!5974 (regOne!5974 r!15766)))) b!979107))

(assert (= (and b!978510 ((_ is Concat!4564) (regOne!5974 (regOne!5974 r!15766)))) b!979108))

(assert (= (and b!978510 ((_ is Star!2731) (regOne!5974 (regOne!5974 r!15766)))) b!979109))

(assert (= (and b!978510 ((_ is Union!2731) (regOne!5974 (regOne!5974 r!15766)))) b!979110))

(declare-fun b!979113 () Bool)

(declare-fun e!630192 () Bool)

(declare-fun tp!299237 () Bool)

(assert (=> b!979113 (= e!630192 tp!299237)))

(declare-fun b!979111 () Bool)

(assert (=> b!979111 (= e!630192 tp_is_empty!5105)))

(declare-fun b!979112 () Bool)

(declare-fun tp!299239 () Bool)

(declare-fun tp!299238 () Bool)

(assert (=> b!979112 (= e!630192 (and tp!299239 tp!299238))))

(assert (=> b!978510 (= tp!299130 e!630192)))

(declare-fun b!979114 () Bool)

(declare-fun tp!299236 () Bool)

(declare-fun tp!299240 () Bool)

(assert (=> b!979114 (= e!630192 (and tp!299236 tp!299240))))

(assert (= (and b!978510 ((_ is ElementMatch!2731) (regTwo!5974 (regOne!5974 r!15766)))) b!979111))

(assert (= (and b!978510 ((_ is Concat!4564) (regTwo!5974 (regOne!5974 r!15766)))) b!979112))

(assert (= (and b!978510 ((_ is Star!2731) (regTwo!5974 (regOne!5974 r!15766)))) b!979113))

(assert (= (and b!978510 ((_ is Union!2731) (regTwo!5974 (regOne!5974 r!15766)))) b!979114))

(declare-fun b!979115 () Bool)

(declare-fun e!630193 () Bool)

(declare-fun tp!299241 () Bool)

(assert (=> b!979115 (= e!630193 (and tp_is_empty!5105 tp!299241))))

(assert (=> b!978521 (= tp!299140 e!630193)))

(assert (= (and b!978521 ((_ is Cons!9945) (t!101007 (t!101007 s!10566)))) b!979115))

(declare-fun b!979118 () Bool)

(declare-fun e!630194 () Bool)

(declare-fun tp!299243 () Bool)

(assert (=> b!979118 (= e!630194 tp!299243)))

(declare-fun b!979116 () Bool)

(assert (=> b!979116 (= e!630194 tp_is_empty!5105)))

(declare-fun b!979117 () Bool)

(declare-fun tp!299245 () Bool)

(declare-fun tp!299244 () Bool)

(assert (=> b!979117 (= e!630194 (and tp!299245 tp!299244))))

(assert (=> b!978500 (= tp!299113 e!630194)))

(declare-fun b!979119 () Bool)

(declare-fun tp!299242 () Bool)

(declare-fun tp!299246 () Bool)

(assert (=> b!979119 (= e!630194 (and tp!299242 tp!299246))))

(assert (= (and b!978500 ((_ is ElementMatch!2731) (regOne!5975 (regOne!5975 r!15766)))) b!979116))

(assert (= (and b!978500 ((_ is Concat!4564) (regOne!5975 (regOne!5975 r!15766)))) b!979117))

(assert (= (and b!978500 ((_ is Star!2731) (regOne!5975 (regOne!5975 r!15766)))) b!979118))

(assert (= (and b!978500 ((_ is Union!2731) (regOne!5975 (regOne!5975 r!15766)))) b!979119))

(declare-fun b!979122 () Bool)

(declare-fun e!630195 () Bool)

(declare-fun tp!299248 () Bool)

(assert (=> b!979122 (= e!630195 tp!299248)))

(declare-fun b!979120 () Bool)

(assert (=> b!979120 (= e!630195 tp_is_empty!5105)))

(declare-fun b!979121 () Bool)

(declare-fun tp!299250 () Bool)

(declare-fun tp!299249 () Bool)

(assert (=> b!979121 (= e!630195 (and tp!299250 tp!299249))))

(assert (=> b!978500 (= tp!299117 e!630195)))

(declare-fun b!979123 () Bool)

(declare-fun tp!299247 () Bool)

(declare-fun tp!299251 () Bool)

(assert (=> b!979123 (= e!630195 (and tp!299247 tp!299251))))

(assert (= (and b!978500 ((_ is ElementMatch!2731) (regTwo!5975 (regOne!5975 r!15766)))) b!979120))

(assert (= (and b!978500 ((_ is Concat!4564) (regTwo!5975 (regOne!5975 r!15766)))) b!979121))

(assert (= (and b!978500 ((_ is Star!2731) (regTwo!5975 (regOne!5975 r!15766)))) b!979122))

(assert (= (and b!978500 ((_ is Union!2731) (regTwo!5975 (regOne!5975 r!15766)))) b!979123))

(declare-fun b!979126 () Bool)

(declare-fun e!630196 () Bool)

(declare-fun tp!299253 () Bool)

(assert (=> b!979126 (= e!630196 tp!299253)))

(declare-fun b!979124 () Bool)

(assert (=> b!979124 (= e!630196 tp_is_empty!5105)))

(declare-fun b!979125 () Bool)

(declare-fun tp!299255 () Bool)

(declare-fun tp!299254 () Bool)

(assert (=> b!979125 (= e!630196 (and tp!299255 tp!299254))))

(assert (=> b!978499 (= tp!299114 e!630196)))

(declare-fun b!979127 () Bool)

(declare-fun tp!299252 () Bool)

(declare-fun tp!299256 () Bool)

(assert (=> b!979127 (= e!630196 (and tp!299252 tp!299256))))

(assert (= (and b!978499 ((_ is ElementMatch!2731) (reg!3060 (regOne!5975 r!15766)))) b!979124))

(assert (= (and b!978499 ((_ is Concat!4564) (reg!3060 (regOne!5975 r!15766)))) b!979125))

(assert (= (and b!978499 ((_ is Star!2731) (reg!3060 (regOne!5975 r!15766)))) b!979126))

(assert (= (and b!978499 ((_ is Union!2731) (reg!3060 (regOne!5975 r!15766)))) b!979127))

(declare-fun b!979130 () Bool)

(declare-fun e!630197 () Bool)

(declare-fun tp!299258 () Bool)

(assert (=> b!979130 (= e!630197 tp!299258)))

(declare-fun b!979128 () Bool)

(assert (=> b!979128 (= e!630197 tp_is_empty!5105)))

(declare-fun b!979129 () Bool)

(declare-fun tp!299260 () Bool)

(declare-fun tp!299259 () Bool)

(assert (=> b!979129 (= e!630197 (and tp!299260 tp!299259))))

(assert (=> b!978504 (= tp!299118 e!630197)))

(declare-fun b!979131 () Bool)

(declare-fun tp!299257 () Bool)

(declare-fun tp!299261 () Bool)

(assert (=> b!979131 (= e!630197 (and tp!299257 tp!299261))))

(assert (= (and b!978504 ((_ is ElementMatch!2731) (regOne!5975 (regTwo!5975 r!15766)))) b!979128))

(assert (= (and b!978504 ((_ is Concat!4564) (regOne!5975 (regTwo!5975 r!15766)))) b!979129))

(assert (= (and b!978504 ((_ is Star!2731) (regOne!5975 (regTwo!5975 r!15766)))) b!979130))

(assert (= (and b!978504 ((_ is Union!2731) (regOne!5975 (regTwo!5975 r!15766)))) b!979131))

(declare-fun b!979134 () Bool)

(declare-fun e!630198 () Bool)

(declare-fun tp!299263 () Bool)

(assert (=> b!979134 (= e!630198 tp!299263)))

(declare-fun b!979132 () Bool)

(assert (=> b!979132 (= e!630198 tp_is_empty!5105)))

(declare-fun b!979133 () Bool)

(declare-fun tp!299265 () Bool)

(declare-fun tp!299264 () Bool)

(assert (=> b!979133 (= e!630198 (and tp!299265 tp!299264))))

(assert (=> b!978504 (= tp!299122 e!630198)))

(declare-fun b!979135 () Bool)

(declare-fun tp!299262 () Bool)

(declare-fun tp!299266 () Bool)

(assert (=> b!979135 (= e!630198 (and tp!299262 tp!299266))))

(assert (= (and b!978504 ((_ is ElementMatch!2731) (regTwo!5975 (regTwo!5975 r!15766)))) b!979132))

(assert (= (and b!978504 ((_ is Concat!4564) (regTwo!5975 (regTwo!5975 r!15766)))) b!979133))

(assert (= (and b!978504 ((_ is Star!2731) (regTwo!5975 (regTwo!5975 r!15766)))) b!979134))

(assert (= (and b!978504 ((_ is Union!2731) (regTwo!5975 (regTwo!5975 r!15766)))) b!979135))

(check-sat (not b!978862) (not bm!62628) (not b!978593) (not d!287789) (not d!287753) (not b!978937) (not bm!62710) (not bm!62698) (not bm!62637) (not b!979101) (not bm!62638) (not b!978649) (not b!979074) (not d!287779) (not b!979043) (not b!978856) (not bm!62664) (not b!978527) (not bm!62718) (not b!978930) (not b!978936) (not b!978590) (not b!978651) (not bm!62711) (not b!978893) (not b!978729) (not b!979042) (not b!978706) (not b!978905) (not bm!62685) (not bm!62647) (not b!979134) (not bm!62729) (not b!979112) (not bm!62631) (not b!978853) (not d!287777) (not bm!62708) (not b!978858) (not bm!62627) (not bm!62705) (not bm!62730) (not b!979114) (not b!979032) (not b!979062) (not bm!62725) (not bm!62686) (not b!979020) (not b!978902) (not d!287751) (not b!979028) (not b!979130) (not b!979129) (not b!979127) (not b!979084) (not b!978872) (not b!979063) (not d!287837) (not b!979076) (not bm!62670) (not b!979066) (not b!979096) (not b!978919) (not b!979067) (not b!979026) (not b!978869) (not b!978863) (not b!978730) (not b!978744) (not b!978950) (not b!978748) (not b!979068) (not bm!62704) (not b!979046) (not b!978923) (not b!979102) (not b!979121) (not b!979110) (not bm!62701) (not b!978755) (not bm!62635) (not b!979054) (not b!979059) (not b!979055) (not d!287807) (not bm!62641) (not b!978927) (not d!287827) (not b!978885) (not b!978727) (not d!287859) (not b!979119) (not bm!62624) (not b!978879) (not bm!62629) (not b!978866) (not b!978759) (not b!978909) (not d!287875) (not b!979018) (not b!979036) (not bm!62636) (not b!978935) (not bm!62678) (not bm!62722) (not b!978656) (not b!979100) (not b!978874) (not b!978728) (not b!978701) (not b!978922) (not b!979097) (not bm!62667) (not bm!62657) (not b!979135) (not bm!62677) (not b!978903) (not bm!62676) (not bm!62723) (not bm!62623) (not b!978896) (not b!978646) (not b!978595) (not b!978898) (not bm!62679) (not b!978861) (not bm!62630) (not b!979113) (not b!978932) (not d!287873) (not b!978846) (not b!979058) (not b!979060) (not b!979024) (not bm!62687) (not d!287839) (not d!287775) (not b!978877) (not d!287833) (not d!287865) (not bm!62706) (not bm!62731) (not b!979056) (not b!979106) (not bm!62634) (not b!979098) (not bm!62713) (not bm!62656) (not b!978821) (not b!979022) (not bm!62669) (not bm!62673) (not b!979126) (not b!979064) (not d!287783) (not b!978702) (not b!978654) (not bm!62643) (not bm!62714) (not b!978588) (not b!979027) (not bm!62645) (not b!979133) (not bm!62719) (not b!978585) (not bm!62644) (not b!979117) (not bm!62716) (not d!287739) (not b!979080) (not b!978965) (not bm!62697) (not b!978621) (not b!979071) (not bm!62699) (not bm!62680) (not bm!62700) (not b!979115) (not b!979019) (not b!979047) (not bm!62663) (not b!978878) (not b!979108) (not b!979072) (not b!979023) (not bm!62707) (not b!979122) (not b!978655) (not bm!62724) (not b!979109) (not bm!62661) (not b!979048) (not d!287853) (not b!979030) (not b!979131) (not b!979035) (not d!287843) (not d!287841) (not b!978705) (not bm!62672) (not b!978594) (not b!979082) (not bm!62671) (not b!979118) (not b!979039) (not bm!62665) (not b!978901) (not d!287771) (not bm!62728) (not b!979104) (not d!287729) (not d!287877) (not d!287743) (not b!978726) (not b!979070) (not d!287761) tp_is_empty!5105 (not b!979123) (not b!978731) (not d!287855) (not b!979034) (not d!287825) (not b!979044) (not bm!62688) (not bm!62642) (not b!978954) (not b!979038) (not b!979075) (not bm!62717) (not b!979040) (not bm!62662) (not d!287829) (not b!979125) (not b!979031) (not b!979105))
(check-sat)

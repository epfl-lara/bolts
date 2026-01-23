; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285640 () Bool)

(assert start!285640)

(declare-fun b!2941351 () Bool)

(declare-fun res!1213924 () Bool)

(declare-fun e!1853646 () Bool)

(assert (=> b!2941351 (=> res!1213924 e!1853646)))

(declare-datatypes ((C!18384 0))(
  ( (C!18385 (val!11228 Int)) )
))
(declare-datatypes ((List!34964 0))(
  ( (Nil!34840) (Cons!34840 (h!40260 C!18384) (t!234029 List!34964)) )
))
(declare-fun s!11993 () List!34964)

(declare-fun isEmpty!19101 (List!34964) Bool)

(assert (=> b!2941351 (= res!1213924 (isEmpty!19101 s!11993))))

(declare-fun b!2941353 () Bool)

(declare-fun e!1853650 () Bool)

(declare-datatypes ((Regex!9099 0))(
  ( (ElementMatch!9099 (c!480969 C!18384)) (Concat!14420 (regOne!18710 Regex!9099) (regTwo!18710 Regex!9099)) (EmptyExpr!9099) (Star!9099 (reg!9428 Regex!9099)) (EmptyLang!9099) (Union!9099 (regOne!18711 Regex!9099) (regTwo!18711 Regex!9099)) )
))
(declare-fun r!17423 () Regex!9099)

(declare-fun validRegex!3832 (Regex!9099) Bool)

(assert (=> b!2941353 (= e!1853650 (validRegex!3832 (regOne!18710 r!17423)))))

(declare-fun b!2941354 () Bool)

(declare-fun e!1853649 () Bool)

(declare-fun tp_is_empty!15761 () Bool)

(assert (=> b!2941354 (= e!1853649 tp_is_empty!15761)))

(declare-fun b!2941355 () Bool)

(declare-fun e!1853647 () Bool)

(declare-fun tp!941304 () Bool)

(assert (=> b!2941355 (= e!1853647 (and tp_is_empty!15761 tp!941304))))

(declare-fun b!2941356 () Bool)

(declare-fun e!1853651 () Bool)

(assert (=> b!2941356 (= e!1853651 (not e!1853646))))

(declare-fun res!1213929 () Bool)

(assert (=> b!2941356 (=> res!1213929 e!1853646)))

(declare-fun lt!1030137 () Bool)

(get-info :version)

(assert (=> b!2941356 (= res!1213929 (or lt!1030137 (not ((_ is Concat!14420) r!17423))))))

(declare-fun matchRSpec!1236 (Regex!9099 List!34964) Bool)

(assert (=> b!2941356 (= lt!1030137 (matchRSpec!1236 r!17423 s!11993))))

(declare-fun matchR!3981 (Regex!9099 List!34964) Bool)

(assert (=> b!2941356 (= lt!1030137 (matchR!3981 r!17423 s!11993))))

(declare-datatypes ((Unit!48577 0))(
  ( (Unit!48578) )
))
(declare-fun lt!1030139 () Unit!48577)

(declare-fun mainMatchTheorem!1236 (Regex!9099 List!34964) Unit!48577)

(assert (=> b!2941356 (= lt!1030139 (mainMatchTheorem!1236 r!17423 s!11993))))

(declare-fun b!2941357 () Bool)

(declare-fun res!1213930 () Bool)

(declare-fun e!1853648 () Bool)

(assert (=> b!2941357 (=> res!1213930 e!1853648)))

(declare-fun lt!1030136 () Regex!9099)

(declare-fun isEmptyExpr!304 (Regex!9099) Bool)

(assert (=> b!2941357 (= res!1213930 (not (isEmptyExpr!304 lt!1030136)))))

(declare-fun b!2941358 () Bool)

(declare-fun tp!941305 () Bool)

(assert (=> b!2941358 (= e!1853649 tp!941305)))

(declare-fun b!2941359 () Bool)

(declare-fun tp!941308 () Bool)

(declare-fun tp!941307 () Bool)

(assert (=> b!2941359 (= e!1853649 (and tp!941308 tp!941307))))

(declare-fun b!2941360 () Bool)

(assert (=> b!2941360 (= e!1853648 e!1853650)))

(declare-fun res!1213927 () Bool)

(assert (=> b!2941360 (=> res!1213927 e!1853650)))

(declare-fun lt!1030138 () Bool)

(assert (=> b!2941360 (= res!1213927 (not lt!1030138))))

(declare-fun lt!1030141 () Regex!9099)

(assert (=> b!2941360 (= lt!1030138 (matchR!3981 lt!1030141 s!11993))))

(assert (=> b!2941360 (= lt!1030138 (matchR!3981 (regTwo!18710 r!17423) s!11993))))

(declare-fun lt!1030140 () Unit!48577)

(declare-fun lemmaSimplifySound!88 (Regex!9099 List!34964) Unit!48577)

(assert (=> b!2941360 (= lt!1030140 (lemmaSimplifySound!88 (regTwo!18710 r!17423) s!11993))))

(declare-fun b!2941361 () Bool)

(declare-fun res!1213926 () Bool)

(assert (=> b!2941361 (=> res!1213926 e!1853650)))

(declare-fun nullable!2877 (Regex!9099) Bool)

(assert (=> b!2941361 (= res!1213926 (not (nullable!2877 (regOne!18710 r!17423))))))

(declare-fun res!1213923 () Bool)

(assert (=> start!285640 (=> (not res!1213923) (not e!1853651))))

(assert (=> start!285640 (= res!1213923 (validRegex!3832 r!17423))))

(assert (=> start!285640 e!1853651))

(assert (=> start!285640 e!1853649))

(assert (=> start!285640 e!1853647))

(declare-fun b!2941352 () Bool)

(declare-fun tp!941306 () Bool)

(declare-fun tp!941309 () Bool)

(assert (=> b!2941352 (= e!1853649 (and tp!941306 tp!941309))))

(declare-fun b!2941362 () Bool)

(declare-fun res!1213925 () Bool)

(assert (=> b!2941362 (=> res!1213925 e!1853648)))

(declare-fun isEmptyLang!223 (Regex!9099) Bool)

(assert (=> b!2941362 (= res!1213925 (isEmptyLang!223 lt!1030141))))

(declare-fun b!2941363 () Bool)

(assert (=> b!2941363 (= e!1853646 e!1853648)))

(declare-fun res!1213928 () Bool)

(assert (=> b!2941363 (=> res!1213928 e!1853648)))

(assert (=> b!2941363 (= res!1213928 (isEmptyLang!223 lt!1030136))))

(declare-fun simplify!104 (Regex!9099) Regex!9099)

(assert (=> b!2941363 (= lt!1030141 (simplify!104 (regTwo!18710 r!17423)))))

(assert (=> b!2941363 (= lt!1030136 (simplify!104 (regOne!18710 r!17423)))))

(assert (= (and start!285640 res!1213923) b!2941356))

(assert (= (and b!2941356 (not res!1213929)) b!2941351))

(assert (= (and b!2941351 (not res!1213924)) b!2941363))

(assert (= (and b!2941363 (not res!1213928)) b!2941362))

(assert (= (and b!2941362 (not res!1213925)) b!2941357))

(assert (= (and b!2941357 (not res!1213930)) b!2941360))

(assert (= (and b!2941360 (not res!1213927)) b!2941361))

(assert (= (and b!2941361 (not res!1213926)) b!2941353))

(assert (= (and start!285640 ((_ is ElementMatch!9099) r!17423)) b!2941354))

(assert (= (and start!285640 ((_ is Concat!14420) r!17423)) b!2941359))

(assert (= (and start!285640 ((_ is Star!9099) r!17423)) b!2941358))

(assert (= (and start!285640 ((_ is Union!9099) r!17423)) b!2941352))

(assert (= (and start!285640 ((_ is Cons!34840) s!11993)) b!2941355))

(declare-fun m!3325571 () Bool)

(assert (=> b!2941351 m!3325571))

(declare-fun m!3325573 () Bool)

(assert (=> b!2941357 m!3325573))

(declare-fun m!3325575 () Bool)

(assert (=> b!2941361 m!3325575))

(declare-fun m!3325577 () Bool)

(assert (=> b!2941362 m!3325577))

(declare-fun m!3325579 () Bool)

(assert (=> b!2941363 m!3325579))

(declare-fun m!3325581 () Bool)

(assert (=> b!2941363 m!3325581))

(declare-fun m!3325583 () Bool)

(assert (=> b!2941363 m!3325583))

(declare-fun m!3325585 () Bool)

(assert (=> b!2941360 m!3325585))

(declare-fun m!3325587 () Bool)

(assert (=> b!2941360 m!3325587))

(declare-fun m!3325589 () Bool)

(assert (=> b!2941360 m!3325589))

(declare-fun m!3325591 () Bool)

(assert (=> start!285640 m!3325591))

(declare-fun m!3325593 () Bool)

(assert (=> b!2941356 m!3325593))

(declare-fun m!3325595 () Bool)

(assert (=> b!2941356 m!3325595))

(declare-fun m!3325597 () Bool)

(assert (=> b!2941356 m!3325597))

(declare-fun m!3325599 () Bool)

(assert (=> b!2941353 m!3325599))

(check-sat (not b!2941362) (not b!2941358) (not b!2941357) (not b!2941355) (not b!2941352) (not b!2941363) (not b!2941353) (not start!285640) tp_is_empty!15761 (not b!2941361) (not b!2941351) (not b!2941359) (not b!2941360) (not b!2941356))
(check-sat)
(get-model)

(declare-fun bm!193728 () Bool)

(declare-fun call!193733 () Bool)

(assert (=> bm!193728 (= call!193733 (isEmpty!19101 s!11993))))

(declare-fun b!2941392 () Bool)

(declare-fun res!1213953 () Bool)

(declare-fun e!1853672 () Bool)

(assert (=> b!2941392 (=> res!1213953 e!1853672)))

(assert (=> b!2941392 (= res!1213953 (not ((_ is ElementMatch!9099) lt!1030141)))))

(declare-fun e!1853670 () Bool)

(assert (=> b!2941392 (= e!1853670 e!1853672)))

(declare-fun b!2941393 () Bool)

(declare-fun e!1853667 () Bool)

(assert (=> b!2941393 (= e!1853667 e!1853670)))

(declare-fun c!480976 () Bool)

(assert (=> b!2941393 (= c!480976 ((_ is EmptyLang!9099) lt!1030141))))

(declare-fun b!2941394 () Bool)

(declare-fun res!1213952 () Bool)

(declare-fun e!1853671 () Bool)

(assert (=> b!2941394 (=> res!1213952 e!1853671)))

(declare-fun tail!4772 (List!34964) List!34964)

(assert (=> b!2941394 (= res!1213952 (not (isEmpty!19101 (tail!4772 s!11993))))))

(declare-fun b!2941395 () Bool)

(declare-fun e!1853668 () Bool)

(declare-fun derivativeStep!2487 (Regex!9099 C!18384) Regex!9099)

(declare-fun head!6546 (List!34964) C!18384)

(assert (=> b!2941395 (= e!1853668 (matchR!3981 (derivativeStep!2487 lt!1030141 (head!6546 s!11993)) (tail!4772 s!11993)))))

(declare-fun b!2941396 () Bool)

(declare-fun lt!1030144 () Bool)

(assert (=> b!2941396 (= e!1853667 (= lt!1030144 call!193733))))

(declare-fun b!2941397 () Bool)

(declare-fun res!1213947 () Bool)

(declare-fun e!1853669 () Bool)

(assert (=> b!2941397 (=> (not res!1213947) (not e!1853669))))

(assert (=> b!2941397 (= res!1213947 (isEmpty!19101 (tail!4772 s!11993)))))

(declare-fun d!840223 () Bool)

(assert (=> d!840223 e!1853667))

(declare-fun c!480977 () Bool)

(assert (=> d!840223 (= c!480977 ((_ is EmptyExpr!9099) lt!1030141))))

(assert (=> d!840223 (= lt!1030144 e!1853668)))

(declare-fun c!480978 () Bool)

(assert (=> d!840223 (= c!480978 (isEmpty!19101 s!11993))))

(assert (=> d!840223 (validRegex!3832 lt!1030141)))

(assert (=> d!840223 (= (matchR!3981 lt!1030141 s!11993) lt!1030144)))

(declare-fun b!2941398 () Bool)

(assert (=> b!2941398 (= e!1853668 (nullable!2877 lt!1030141))))

(declare-fun b!2941399 () Bool)

(declare-fun e!1853666 () Bool)

(assert (=> b!2941399 (= e!1853672 e!1853666)))

(declare-fun res!1213950 () Bool)

(assert (=> b!2941399 (=> (not res!1213950) (not e!1853666))))

(assert (=> b!2941399 (= res!1213950 (not lt!1030144))))

(declare-fun b!2941400 () Bool)

(declare-fun res!1213951 () Bool)

(assert (=> b!2941400 (=> res!1213951 e!1853672)))

(assert (=> b!2941400 (= res!1213951 e!1853669)))

(declare-fun res!1213948 () Bool)

(assert (=> b!2941400 (=> (not res!1213948) (not e!1853669))))

(assert (=> b!2941400 (= res!1213948 lt!1030144)))

(declare-fun b!2941401 () Bool)

(assert (=> b!2941401 (= e!1853669 (= (head!6546 s!11993) (c!480969 lt!1030141)))))

(declare-fun b!2941402 () Bool)

(assert (=> b!2941402 (= e!1853666 e!1853671)))

(declare-fun res!1213949 () Bool)

(assert (=> b!2941402 (=> res!1213949 e!1853671)))

(assert (=> b!2941402 (= res!1213949 call!193733)))

(declare-fun b!2941403 () Bool)

(assert (=> b!2941403 (= e!1853670 (not lt!1030144))))

(declare-fun b!2941404 () Bool)

(declare-fun res!1213954 () Bool)

(assert (=> b!2941404 (=> (not res!1213954) (not e!1853669))))

(assert (=> b!2941404 (= res!1213954 (not call!193733))))

(declare-fun b!2941405 () Bool)

(assert (=> b!2941405 (= e!1853671 (not (= (head!6546 s!11993) (c!480969 lt!1030141))))))

(assert (= (and d!840223 c!480978) b!2941398))

(assert (= (and d!840223 (not c!480978)) b!2941395))

(assert (= (and d!840223 c!480977) b!2941396))

(assert (= (and d!840223 (not c!480977)) b!2941393))

(assert (= (and b!2941393 c!480976) b!2941403))

(assert (= (and b!2941393 (not c!480976)) b!2941392))

(assert (= (and b!2941392 (not res!1213953)) b!2941400))

(assert (= (and b!2941400 res!1213948) b!2941404))

(assert (= (and b!2941404 res!1213954) b!2941397))

(assert (= (and b!2941397 res!1213947) b!2941401))

(assert (= (and b!2941400 (not res!1213951)) b!2941399))

(assert (= (and b!2941399 res!1213950) b!2941402))

(assert (= (and b!2941402 (not res!1213949)) b!2941394))

(assert (= (and b!2941394 (not res!1213952)) b!2941405))

(assert (= (or b!2941396 b!2941402 b!2941404) bm!193728))

(assert (=> d!840223 m!3325571))

(declare-fun m!3325601 () Bool)

(assert (=> d!840223 m!3325601))

(assert (=> bm!193728 m!3325571))

(declare-fun m!3325603 () Bool)

(assert (=> b!2941395 m!3325603))

(assert (=> b!2941395 m!3325603))

(declare-fun m!3325605 () Bool)

(assert (=> b!2941395 m!3325605))

(declare-fun m!3325607 () Bool)

(assert (=> b!2941395 m!3325607))

(assert (=> b!2941395 m!3325605))

(assert (=> b!2941395 m!3325607))

(declare-fun m!3325609 () Bool)

(assert (=> b!2941395 m!3325609))

(assert (=> b!2941394 m!3325607))

(assert (=> b!2941394 m!3325607))

(declare-fun m!3325611 () Bool)

(assert (=> b!2941394 m!3325611))

(assert (=> b!2941405 m!3325603))

(assert (=> b!2941397 m!3325607))

(assert (=> b!2941397 m!3325607))

(assert (=> b!2941397 m!3325611))

(assert (=> b!2941401 m!3325603))

(declare-fun m!3325613 () Bool)

(assert (=> b!2941398 m!3325613))

(assert (=> b!2941360 d!840223))

(declare-fun bm!193729 () Bool)

(declare-fun call!193734 () Bool)

(assert (=> bm!193729 (= call!193734 (isEmpty!19101 s!11993))))

(declare-fun b!2941406 () Bool)

(declare-fun res!1213961 () Bool)

(declare-fun e!1853679 () Bool)

(assert (=> b!2941406 (=> res!1213961 e!1853679)))

(assert (=> b!2941406 (= res!1213961 (not ((_ is ElementMatch!9099) (regTwo!18710 r!17423))))))

(declare-fun e!1853677 () Bool)

(assert (=> b!2941406 (= e!1853677 e!1853679)))

(declare-fun b!2941407 () Bool)

(declare-fun e!1853674 () Bool)

(assert (=> b!2941407 (= e!1853674 e!1853677)))

(declare-fun c!480979 () Bool)

(assert (=> b!2941407 (= c!480979 ((_ is EmptyLang!9099) (regTwo!18710 r!17423)))))

(declare-fun b!2941408 () Bool)

(declare-fun res!1213960 () Bool)

(declare-fun e!1853678 () Bool)

(assert (=> b!2941408 (=> res!1213960 e!1853678)))

(assert (=> b!2941408 (= res!1213960 (not (isEmpty!19101 (tail!4772 s!11993))))))

(declare-fun b!2941409 () Bool)

(declare-fun e!1853675 () Bool)

(assert (=> b!2941409 (= e!1853675 (matchR!3981 (derivativeStep!2487 (regTwo!18710 r!17423) (head!6546 s!11993)) (tail!4772 s!11993)))))

(declare-fun b!2941410 () Bool)

(declare-fun lt!1030145 () Bool)

(assert (=> b!2941410 (= e!1853674 (= lt!1030145 call!193734))))

(declare-fun b!2941411 () Bool)

(declare-fun res!1213955 () Bool)

(declare-fun e!1853676 () Bool)

(assert (=> b!2941411 (=> (not res!1213955) (not e!1853676))))

(assert (=> b!2941411 (= res!1213955 (isEmpty!19101 (tail!4772 s!11993)))))

(declare-fun d!840229 () Bool)

(assert (=> d!840229 e!1853674))

(declare-fun c!480980 () Bool)

(assert (=> d!840229 (= c!480980 ((_ is EmptyExpr!9099) (regTwo!18710 r!17423)))))

(assert (=> d!840229 (= lt!1030145 e!1853675)))

(declare-fun c!480981 () Bool)

(assert (=> d!840229 (= c!480981 (isEmpty!19101 s!11993))))

(assert (=> d!840229 (validRegex!3832 (regTwo!18710 r!17423))))

(assert (=> d!840229 (= (matchR!3981 (regTwo!18710 r!17423) s!11993) lt!1030145)))

(declare-fun b!2941412 () Bool)

(assert (=> b!2941412 (= e!1853675 (nullable!2877 (regTwo!18710 r!17423)))))

(declare-fun b!2941413 () Bool)

(declare-fun e!1853673 () Bool)

(assert (=> b!2941413 (= e!1853679 e!1853673)))

(declare-fun res!1213958 () Bool)

(assert (=> b!2941413 (=> (not res!1213958) (not e!1853673))))

(assert (=> b!2941413 (= res!1213958 (not lt!1030145))))

(declare-fun b!2941414 () Bool)

(declare-fun res!1213959 () Bool)

(assert (=> b!2941414 (=> res!1213959 e!1853679)))

(assert (=> b!2941414 (= res!1213959 e!1853676)))

(declare-fun res!1213956 () Bool)

(assert (=> b!2941414 (=> (not res!1213956) (not e!1853676))))

(assert (=> b!2941414 (= res!1213956 lt!1030145)))

(declare-fun b!2941415 () Bool)

(assert (=> b!2941415 (= e!1853676 (= (head!6546 s!11993) (c!480969 (regTwo!18710 r!17423))))))

(declare-fun b!2941416 () Bool)

(assert (=> b!2941416 (= e!1853673 e!1853678)))

(declare-fun res!1213957 () Bool)

(assert (=> b!2941416 (=> res!1213957 e!1853678)))

(assert (=> b!2941416 (= res!1213957 call!193734)))

(declare-fun b!2941417 () Bool)

(assert (=> b!2941417 (= e!1853677 (not lt!1030145))))

(declare-fun b!2941418 () Bool)

(declare-fun res!1213962 () Bool)

(assert (=> b!2941418 (=> (not res!1213962) (not e!1853676))))

(assert (=> b!2941418 (= res!1213962 (not call!193734))))

(declare-fun b!2941419 () Bool)

(assert (=> b!2941419 (= e!1853678 (not (= (head!6546 s!11993) (c!480969 (regTwo!18710 r!17423)))))))

(assert (= (and d!840229 c!480981) b!2941412))

(assert (= (and d!840229 (not c!480981)) b!2941409))

(assert (= (and d!840229 c!480980) b!2941410))

(assert (= (and d!840229 (not c!480980)) b!2941407))

(assert (= (and b!2941407 c!480979) b!2941417))

(assert (= (and b!2941407 (not c!480979)) b!2941406))

(assert (= (and b!2941406 (not res!1213961)) b!2941414))

(assert (= (and b!2941414 res!1213956) b!2941418))

(assert (= (and b!2941418 res!1213962) b!2941411))

(assert (= (and b!2941411 res!1213955) b!2941415))

(assert (= (and b!2941414 (not res!1213959)) b!2941413))

(assert (= (and b!2941413 res!1213958) b!2941416))

(assert (= (and b!2941416 (not res!1213957)) b!2941408))

(assert (= (and b!2941408 (not res!1213960)) b!2941419))

(assert (= (or b!2941410 b!2941416 b!2941418) bm!193729))

(assert (=> d!840229 m!3325571))

(declare-fun m!3325615 () Bool)

(assert (=> d!840229 m!3325615))

(assert (=> bm!193729 m!3325571))

(assert (=> b!2941409 m!3325603))

(assert (=> b!2941409 m!3325603))

(declare-fun m!3325617 () Bool)

(assert (=> b!2941409 m!3325617))

(assert (=> b!2941409 m!3325607))

(assert (=> b!2941409 m!3325617))

(assert (=> b!2941409 m!3325607))

(declare-fun m!3325619 () Bool)

(assert (=> b!2941409 m!3325619))

(assert (=> b!2941408 m!3325607))

(assert (=> b!2941408 m!3325607))

(assert (=> b!2941408 m!3325611))

(assert (=> b!2941419 m!3325603))

(assert (=> b!2941411 m!3325607))

(assert (=> b!2941411 m!3325607))

(assert (=> b!2941411 m!3325611))

(assert (=> b!2941415 m!3325603))

(declare-fun m!3325621 () Bool)

(assert (=> b!2941412 m!3325621))

(assert (=> b!2941360 d!840229))

(declare-fun d!840231 () Bool)

(assert (=> d!840231 (= (matchR!3981 (regTwo!18710 r!17423) s!11993) (matchR!3981 (simplify!104 (regTwo!18710 r!17423)) s!11993))))

(declare-fun lt!1030148 () Unit!48577)

(declare-fun choose!17395 (Regex!9099 List!34964) Unit!48577)

(assert (=> d!840231 (= lt!1030148 (choose!17395 (regTwo!18710 r!17423) s!11993))))

(assert (=> d!840231 (validRegex!3832 (regTwo!18710 r!17423))))

(assert (=> d!840231 (= (lemmaSimplifySound!88 (regTwo!18710 r!17423) s!11993) lt!1030148)))

(declare-fun bs!525511 () Bool)

(assert (= bs!525511 d!840231))

(assert (=> bs!525511 m!3325581))

(assert (=> bs!525511 m!3325587))

(assert (=> bs!525511 m!3325615))

(assert (=> bs!525511 m!3325581))

(declare-fun m!3325623 () Bool)

(assert (=> bs!525511 m!3325623))

(declare-fun m!3325625 () Bool)

(assert (=> bs!525511 m!3325625))

(assert (=> b!2941360 d!840231))

(declare-fun d!840233 () Bool)

(assert (=> d!840233 (= (isEmpty!19101 s!11993) ((_ is Nil!34840) s!11993))))

(assert (=> b!2941351 d!840233))

(declare-fun d!840235 () Bool)

(assert (=> d!840235 (= (isEmptyLang!223 lt!1030141) ((_ is EmptyLang!9099) lt!1030141))))

(assert (=> b!2941362 d!840235))

(declare-fun d!840237 () Bool)

(declare-fun nullableFct!853 (Regex!9099) Bool)

(assert (=> d!840237 (= (nullable!2877 (regOne!18710 r!17423)) (nullableFct!853 (regOne!18710 r!17423)))))

(declare-fun bs!525512 () Bool)

(assert (= bs!525512 d!840237))

(declare-fun m!3325627 () Bool)

(assert (=> bs!525512 m!3325627))

(assert (=> b!2941361 d!840237))

(declare-fun b!2941476 () Bool)

(assert (=> b!2941476 true))

(assert (=> b!2941476 true))

(declare-fun bs!525513 () Bool)

(declare-fun b!2941480 () Bool)

(assert (= bs!525513 (and b!2941480 b!2941476)))

(declare-fun lambda!109518 () Int)

(declare-fun lambda!109517 () Int)

(assert (=> bs!525513 (not (= lambda!109518 lambda!109517))))

(assert (=> b!2941480 true))

(assert (=> b!2941480 true))

(declare-fun b!2941474 () Bool)

(declare-fun c!481000 () Bool)

(assert (=> b!2941474 (= c!481000 ((_ is Union!9099) r!17423))))

(declare-fun e!1853713 () Bool)

(declare-fun e!1853715 () Bool)

(assert (=> b!2941474 (= e!1853713 e!1853715)))

(declare-fun b!2941475 () Bool)

(declare-fun e!1853712 () Bool)

(declare-fun call!193740 () Bool)

(assert (=> b!2941475 (= e!1853712 call!193740)))

(declare-fun e!1853717 () Bool)

(declare-fun call!193739 () Bool)

(assert (=> b!2941476 (= e!1853717 call!193739)))

(declare-fun b!2941477 () Bool)

(declare-fun e!1853718 () Bool)

(assert (=> b!2941477 (= e!1853712 e!1853718)))

(declare-fun res!1213986 () Bool)

(assert (=> b!2941477 (= res!1213986 (not ((_ is EmptyLang!9099) r!17423)))))

(assert (=> b!2941477 (=> (not res!1213986) (not e!1853718))))

(declare-fun b!2941478 () Bool)

(declare-fun res!1213987 () Bool)

(assert (=> b!2941478 (=> res!1213987 e!1853717)))

(assert (=> b!2941478 (= res!1213987 call!193740)))

(declare-fun e!1853716 () Bool)

(assert (=> b!2941478 (= e!1853716 e!1853717)))

(declare-fun bm!193734 () Bool)

(assert (=> bm!193734 (= call!193740 (isEmpty!19101 s!11993))))

(declare-fun b!2941479 () Bool)

(declare-fun e!1853714 () Bool)

(assert (=> b!2941479 (= e!1853714 (matchRSpec!1236 (regTwo!18711 r!17423) s!11993))))

(assert (=> b!2941480 (= e!1853716 call!193739)))

(declare-fun b!2941482 () Bool)

(assert (=> b!2941482 (= e!1853713 (= s!11993 (Cons!34840 (c!480969 r!17423) Nil!34840)))))

(declare-fun bm!193735 () Bool)

(declare-fun c!481001 () Bool)

(declare-fun Exists!1450 (Int) Bool)

(assert (=> bm!193735 (= call!193739 (Exists!1450 (ite c!481001 lambda!109517 lambda!109518)))))

(declare-fun b!2941483 () Bool)

(assert (=> b!2941483 (= e!1853715 e!1853716)))

(assert (=> b!2941483 (= c!481001 ((_ is Star!9099) r!17423))))

(declare-fun b!2941484 () Bool)

(assert (=> b!2941484 (= e!1853715 e!1853714)))

(declare-fun res!1213985 () Bool)

(assert (=> b!2941484 (= res!1213985 (matchRSpec!1236 (regOne!18711 r!17423) s!11993))))

(assert (=> b!2941484 (=> res!1213985 e!1853714)))

(declare-fun b!2941481 () Bool)

(declare-fun c!480998 () Bool)

(assert (=> b!2941481 (= c!480998 ((_ is ElementMatch!9099) r!17423))))

(assert (=> b!2941481 (= e!1853718 e!1853713)))

(declare-fun d!840239 () Bool)

(declare-fun c!480999 () Bool)

(assert (=> d!840239 (= c!480999 ((_ is EmptyExpr!9099) r!17423))))

(assert (=> d!840239 (= (matchRSpec!1236 r!17423 s!11993) e!1853712)))

(assert (= (and d!840239 c!480999) b!2941475))

(assert (= (and d!840239 (not c!480999)) b!2941477))

(assert (= (and b!2941477 res!1213986) b!2941481))

(assert (= (and b!2941481 c!480998) b!2941482))

(assert (= (and b!2941481 (not c!480998)) b!2941474))

(assert (= (and b!2941474 c!481000) b!2941484))

(assert (= (and b!2941474 (not c!481000)) b!2941483))

(assert (= (and b!2941484 (not res!1213985)) b!2941479))

(assert (= (and b!2941483 c!481001) b!2941478))

(assert (= (and b!2941483 (not c!481001)) b!2941480))

(assert (= (and b!2941478 (not res!1213987)) b!2941476))

(assert (= (or b!2941476 b!2941480) bm!193735))

(assert (= (or b!2941475 b!2941478) bm!193734))

(assert (=> bm!193734 m!3325571))

(declare-fun m!3325629 () Bool)

(assert (=> b!2941479 m!3325629))

(declare-fun m!3325631 () Bool)

(assert (=> bm!193735 m!3325631))

(declare-fun m!3325633 () Bool)

(assert (=> b!2941484 m!3325633))

(assert (=> b!2941356 d!840239))

(declare-fun bm!193736 () Bool)

(declare-fun call!193741 () Bool)

(assert (=> bm!193736 (= call!193741 (isEmpty!19101 s!11993))))

(declare-fun b!2941489 () Bool)

(declare-fun res!1213994 () Bool)

(declare-fun e!1853725 () Bool)

(assert (=> b!2941489 (=> res!1213994 e!1853725)))

(assert (=> b!2941489 (= res!1213994 (not ((_ is ElementMatch!9099) r!17423)))))

(declare-fun e!1853723 () Bool)

(assert (=> b!2941489 (= e!1853723 e!1853725)))

(declare-fun b!2941490 () Bool)

(declare-fun e!1853720 () Bool)

(assert (=> b!2941490 (= e!1853720 e!1853723)))

(declare-fun c!481002 () Bool)

(assert (=> b!2941490 (= c!481002 ((_ is EmptyLang!9099) r!17423))))

(declare-fun b!2941491 () Bool)

(declare-fun res!1213993 () Bool)

(declare-fun e!1853724 () Bool)

(assert (=> b!2941491 (=> res!1213993 e!1853724)))

(assert (=> b!2941491 (= res!1213993 (not (isEmpty!19101 (tail!4772 s!11993))))))

(declare-fun b!2941492 () Bool)

(declare-fun e!1853721 () Bool)

(assert (=> b!2941492 (= e!1853721 (matchR!3981 (derivativeStep!2487 r!17423 (head!6546 s!11993)) (tail!4772 s!11993)))))

(declare-fun b!2941493 () Bool)

(declare-fun lt!1030149 () Bool)

(assert (=> b!2941493 (= e!1853720 (= lt!1030149 call!193741))))

(declare-fun b!2941494 () Bool)

(declare-fun res!1213988 () Bool)

(declare-fun e!1853722 () Bool)

(assert (=> b!2941494 (=> (not res!1213988) (not e!1853722))))

(assert (=> b!2941494 (= res!1213988 (isEmpty!19101 (tail!4772 s!11993)))))

(declare-fun d!840241 () Bool)

(assert (=> d!840241 e!1853720))

(declare-fun c!481003 () Bool)

(assert (=> d!840241 (= c!481003 ((_ is EmptyExpr!9099) r!17423))))

(assert (=> d!840241 (= lt!1030149 e!1853721)))

(declare-fun c!481004 () Bool)

(assert (=> d!840241 (= c!481004 (isEmpty!19101 s!11993))))

(assert (=> d!840241 (validRegex!3832 r!17423)))

(assert (=> d!840241 (= (matchR!3981 r!17423 s!11993) lt!1030149)))

(declare-fun b!2941495 () Bool)

(assert (=> b!2941495 (= e!1853721 (nullable!2877 r!17423))))

(declare-fun b!2941496 () Bool)

(declare-fun e!1853719 () Bool)

(assert (=> b!2941496 (= e!1853725 e!1853719)))

(declare-fun res!1213991 () Bool)

(assert (=> b!2941496 (=> (not res!1213991) (not e!1853719))))

(assert (=> b!2941496 (= res!1213991 (not lt!1030149))))

(declare-fun b!2941497 () Bool)

(declare-fun res!1213992 () Bool)

(assert (=> b!2941497 (=> res!1213992 e!1853725)))

(assert (=> b!2941497 (= res!1213992 e!1853722)))

(declare-fun res!1213989 () Bool)

(assert (=> b!2941497 (=> (not res!1213989) (not e!1853722))))

(assert (=> b!2941497 (= res!1213989 lt!1030149)))

(declare-fun b!2941498 () Bool)

(assert (=> b!2941498 (= e!1853722 (= (head!6546 s!11993) (c!480969 r!17423)))))

(declare-fun b!2941499 () Bool)

(assert (=> b!2941499 (= e!1853719 e!1853724)))

(declare-fun res!1213990 () Bool)

(assert (=> b!2941499 (=> res!1213990 e!1853724)))

(assert (=> b!2941499 (= res!1213990 call!193741)))

(declare-fun b!2941500 () Bool)

(assert (=> b!2941500 (= e!1853723 (not lt!1030149))))

(declare-fun b!2941501 () Bool)

(declare-fun res!1213995 () Bool)

(assert (=> b!2941501 (=> (not res!1213995) (not e!1853722))))

(assert (=> b!2941501 (= res!1213995 (not call!193741))))

(declare-fun b!2941502 () Bool)

(assert (=> b!2941502 (= e!1853724 (not (= (head!6546 s!11993) (c!480969 r!17423))))))

(assert (= (and d!840241 c!481004) b!2941495))

(assert (= (and d!840241 (not c!481004)) b!2941492))

(assert (= (and d!840241 c!481003) b!2941493))

(assert (= (and d!840241 (not c!481003)) b!2941490))

(assert (= (and b!2941490 c!481002) b!2941500))

(assert (= (and b!2941490 (not c!481002)) b!2941489))

(assert (= (and b!2941489 (not res!1213994)) b!2941497))

(assert (= (and b!2941497 res!1213989) b!2941501))

(assert (= (and b!2941501 res!1213995) b!2941494))

(assert (= (and b!2941494 res!1213988) b!2941498))

(assert (= (and b!2941497 (not res!1213992)) b!2941496))

(assert (= (and b!2941496 res!1213991) b!2941499))

(assert (= (and b!2941499 (not res!1213990)) b!2941491))

(assert (= (and b!2941491 (not res!1213993)) b!2941502))

(assert (= (or b!2941493 b!2941499 b!2941501) bm!193736))

(assert (=> d!840241 m!3325571))

(assert (=> d!840241 m!3325591))

(assert (=> bm!193736 m!3325571))

(assert (=> b!2941492 m!3325603))

(assert (=> b!2941492 m!3325603))

(declare-fun m!3325635 () Bool)

(assert (=> b!2941492 m!3325635))

(assert (=> b!2941492 m!3325607))

(assert (=> b!2941492 m!3325635))

(assert (=> b!2941492 m!3325607))

(declare-fun m!3325637 () Bool)

(assert (=> b!2941492 m!3325637))

(assert (=> b!2941491 m!3325607))

(assert (=> b!2941491 m!3325607))

(assert (=> b!2941491 m!3325611))

(assert (=> b!2941502 m!3325603))

(assert (=> b!2941494 m!3325607))

(assert (=> b!2941494 m!3325607))

(assert (=> b!2941494 m!3325611))

(assert (=> b!2941498 m!3325603))

(declare-fun m!3325639 () Bool)

(assert (=> b!2941495 m!3325639))

(assert (=> b!2941356 d!840241))

(declare-fun d!840243 () Bool)

(assert (=> d!840243 (= (matchR!3981 r!17423 s!11993) (matchRSpec!1236 r!17423 s!11993))))

(declare-fun lt!1030152 () Unit!48577)

(declare-fun choose!17396 (Regex!9099 List!34964) Unit!48577)

(assert (=> d!840243 (= lt!1030152 (choose!17396 r!17423 s!11993))))

(assert (=> d!840243 (validRegex!3832 r!17423)))

(assert (=> d!840243 (= (mainMatchTheorem!1236 r!17423 s!11993) lt!1030152)))

(declare-fun bs!525514 () Bool)

(assert (= bs!525514 d!840243))

(assert (=> bs!525514 m!3325595))

(assert (=> bs!525514 m!3325593))

(declare-fun m!3325641 () Bool)

(assert (=> bs!525514 m!3325641))

(assert (=> bs!525514 m!3325591))

(assert (=> b!2941356 d!840243))

(declare-fun b!2941521 () Bool)

(declare-fun e!1853742 () Bool)

(declare-fun call!193750 () Bool)

(assert (=> b!2941521 (= e!1853742 call!193750)))

(declare-fun b!2941522 () Bool)

(declare-fun e!1853746 () Bool)

(declare-fun e!1853743 () Bool)

(assert (=> b!2941522 (= e!1853746 e!1853743)))

(declare-fun c!481010 () Bool)

(assert (=> b!2941522 (= c!481010 ((_ is Union!9099) r!17423))))

(declare-fun d!840245 () Bool)

(declare-fun res!1214009 () Bool)

(declare-fun e!1853744 () Bool)

(assert (=> d!840245 (=> res!1214009 e!1853744)))

(assert (=> d!840245 (= res!1214009 ((_ is ElementMatch!9099) r!17423))))

(assert (=> d!840245 (= (validRegex!3832 r!17423) e!1853744)))

(declare-fun bm!193743 () Bool)

(assert (=> bm!193743 (= call!193750 (validRegex!3832 (ite c!481010 (regOne!18711 r!17423) (regTwo!18710 r!17423))))))

(declare-fun b!2941523 () Bool)

(assert (=> b!2941523 (= e!1853744 e!1853746)))

(declare-fun c!481009 () Bool)

(assert (=> b!2941523 (= c!481009 ((_ is Star!9099) r!17423))))

(declare-fun b!2941524 () Bool)

(declare-fun e!1853741 () Bool)

(assert (=> b!2941524 (= e!1853741 e!1853742)))

(declare-fun res!1214007 () Bool)

(assert (=> b!2941524 (=> (not res!1214007) (not e!1853742))))

(declare-fun call!193748 () Bool)

(assert (=> b!2941524 (= res!1214007 call!193748)))

(declare-fun b!2941525 () Bool)

(declare-fun res!1214010 () Bool)

(declare-fun e!1853740 () Bool)

(assert (=> b!2941525 (=> (not res!1214010) (not e!1853740))))

(assert (=> b!2941525 (= res!1214010 call!193750)))

(assert (=> b!2941525 (= e!1853743 e!1853740)))

(declare-fun b!2941526 () Bool)

(declare-fun e!1853745 () Bool)

(declare-fun call!193749 () Bool)

(assert (=> b!2941526 (= e!1853745 call!193749)))

(declare-fun b!2941527 () Bool)

(assert (=> b!2941527 (= e!1853740 call!193748)))

(declare-fun b!2941528 () Bool)

(assert (=> b!2941528 (= e!1853746 e!1853745)))

(declare-fun res!1214008 () Bool)

(assert (=> b!2941528 (= res!1214008 (not (nullable!2877 (reg!9428 r!17423))))))

(assert (=> b!2941528 (=> (not res!1214008) (not e!1853745))))

(declare-fun b!2941529 () Bool)

(declare-fun res!1214006 () Bool)

(assert (=> b!2941529 (=> res!1214006 e!1853741)))

(assert (=> b!2941529 (= res!1214006 (not ((_ is Concat!14420) r!17423)))))

(assert (=> b!2941529 (= e!1853743 e!1853741)))

(declare-fun bm!193744 () Bool)

(assert (=> bm!193744 (= call!193748 call!193749)))

(declare-fun bm!193745 () Bool)

(assert (=> bm!193745 (= call!193749 (validRegex!3832 (ite c!481009 (reg!9428 r!17423) (ite c!481010 (regTwo!18711 r!17423) (regOne!18710 r!17423)))))))

(assert (= (and d!840245 (not res!1214009)) b!2941523))

(assert (= (and b!2941523 c!481009) b!2941528))

(assert (= (and b!2941523 (not c!481009)) b!2941522))

(assert (= (and b!2941528 res!1214008) b!2941526))

(assert (= (and b!2941522 c!481010) b!2941525))

(assert (= (and b!2941522 (not c!481010)) b!2941529))

(assert (= (and b!2941525 res!1214010) b!2941527))

(assert (= (and b!2941529 (not res!1214006)) b!2941524))

(assert (= (and b!2941524 res!1214007) b!2941521))

(assert (= (or b!2941525 b!2941521) bm!193743))

(assert (= (or b!2941527 b!2941524) bm!193744))

(assert (= (or b!2941526 bm!193744) bm!193745))

(declare-fun m!3325643 () Bool)

(assert (=> bm!193743 m!3325643))

(declare-fun m!3325645 () Bool)

(assert (=> b!2941528 m!3325645))

(declare-fun m!3325647 () Bool)

(assert (=> bm!193745 m!3325647))

(assert (=> start!285640 d!840245))

(declare-fun d!840247 () Bool)

(assert (=> d!840247 (= (isEmptyLang!223 lt!1030136) ((_ is EmptyLang!9099) lt!1030136))))

(assert (=> b!2941363 d!840247))

(declare-fun lt!1030168 () Regex!9099)

(declare-fun c!481041 () Bool)

(declare-fun c!481039 () Bool)

(declare-fun lt!1030165 () Regex!9099)

(declare-fun lt!1030166 () Regex!9099)

(declare-fun bm!193762 () Bool)

(declare-fun call!193771 () Bool)

(assert (=> bm!193762 (= call!193771 (isEmptyLang!223 (ite c!481041 lt!1030166 (ite c!481039 lt!1030168 lt!1030165))))))

(declare-fun b!2941590 () Bool)

(declare-fun e!1853792 () Regex!9099)

(declare-fun lt!1030167 () Regex!9099)

(assert (=> b!2941590 (= e!1853792 (Union!9099 lt!1030167 lt!1030168))))

(declare-fun bm!193763 () Bool)

(declare-fun call!193767 () Regex!9099)

(assert (=> bm!193763 (= call!193767 (simplify!104 (ite c!481039 (regTwo!18711 (regTwo!18710 r!17423)) (regOne!18710 (regTwo!18710 r!17423)))))))

(declare-fun b!2941591 () Bool)

(declare-fun e!1853788 () Regex!9099)

(declare-fun lt!1030170 () Regex!9099)

(assert (=> b!2941591 (= e!1853788 lt!1030170)))

(declare-fun b!2941592 () Bool)

(declare-fun e!1853780 () Regex!9099)

(assert (=> b!2941592 (= e!1853780 EmptyExpr!9099)))

(declare-fun b!2941593 () Bool)

(declare-fun e!1853782 () Regex!9099)

(assert (=> b!2941593 (= e!1853782 (Star!9099 lt!1030166))))

(declare-fun b!2941594 () Bool)

(declare-fun e!1853783 () Regex!9099)

(assert (=> b!2941594 (= e!1853783 lt!1030165)))

(declare-fun b!2941595 () Bool)

(declare-fun e!1853781 () Regex!9099)

(declare-fun e!1853784 () Regex!9099)

(assert (=> b!2941595 (= e!1853781 e!1853784)))

(declare-fun c!481042 () Bool)

(assert (=> b!2941595 (= c!481042 ((_ is ElementMatch!9099) (regTwo!18710 r!17423)))))

(declare-fun b!2941596 () Bool)

(declare-fun e!1853779 () Regex!9099)

(assert (=> b!2941596 (= e!1853780 e!1853779)))

(assert (=> b!2941596 (= c!481041 ((_ is Star!9099) (regTwo!18710 r!17423)))))

(declare-fun bm!193765 () Bool)

(declare-fun call!193773 () Regex!9099)

(declare-fun call!193772 () Regex!9099)

(assert (=> bm!193765 (= call!193773 call!193772)))

(declare-fun b!2941597 () Bool)

(declare-fun e!1853789 () Regex!9099)

(declare-fun e!1853786 () Regex!9099)

(assert (=> b!2941597 (= e!1853789 e!1853786)))

(assert (=> b!2941597 (= lt!1030167 call!193773)))

(assert (=> b!2941597 (= lt!1030168 call!193767)))

(declare-fun c!481038 () Bool)

(declare-fun call!193770 () Bool)

(assert (=> b!2941597 (= c!481038 call!193770)))

(declare-fun bm!193766 () Bool)

(assert (=> bm!193766 (= call!193770 (isEmptyLang!223 (ite c!481039 lt!1030167 lt!1030170)))))

(declare-fun b!2941598 () Bool)

(declare-fun e!1853785 () Bool)

(assert (=> b!2941598 (= e!1853785 call!193770)))

(declare-fun b!2941599 () Bool)

(declare-fun c!481040 () Bool)

(assert (=> b!2941599 (= c!481040 ((_ is EmptyExpr!9099) (regTwo!18710 r!17423)))))

(assert (=> b!2941599 (= e!1853784 e!1853780)))

(declare-fun b!2941600 () Bool)

(assert (=> b!2941600 (= e!1853786 lt!1030168)))

(declare-fun b!2941601 () Bool)

(declare-fun e!1853791 () Regex!9099)

(assert (=> b!2941601 (= e!1853791 EmptyLang!9099)))

(declare-fun bm!193764 () Bool)

(declare-fun call!193768 () Bool)

(assert (=> bm!193764 (= call!193768 call!193771)))

(declare-fun d!840249 () Bool)

(declare-fun e!1853787 () Bool)

(assert (=> d!840249 e!1853787))

(declare-fun res!1214029 () Bool)

(assert (=> d!840249 (=> (not res!1214029) (not e!1853787))))

(declare-fun lt!1030169 () Regex!9099)

(assert (=> d!840249 (= res!1214029 (validRegex!3832 lt!1030169))))

(assert (=> d!840249 (= lt!1030169 e!1853781)))

(declare-fun c!481035 () Bool)

(assert (=> d!840249 (= c!481035 ((_ is EmptyLang!9099) (regTwo!18710 r!17423)))))

(assert (=> d!840249 (validRegex!3832 (regTwo!18710 r!17423))))

(assert (=> d!840249 (= (simplify!104 (regTwo!18710 r!17423)) lt!1030169)))

(declare-fun b!2941602 () Bool)

(assert (=> b!2941602 (= e!1853784 (regTwo!18710 r!17423))))

(declare-fun bm!193767 () Bool)

(assert (=> bm!193767 (= call!193772 (simplify!104 (ite c!481041 (reg!9428 (regTwo!18710 r!17423)) (ite c!481039 (regOne!18711 (regTwo!18710 r!17423)) (regTwo!18710 (regTwo!18710 r!17423))))))))

(declare-fun b!2941603 () Bool)

(assert (=> b!2941603 (= c!481039 ((_ is Union!9099) (regTwo!18710 r!17423)))))

(assert (=> b!2941603 (= e!1853779 e!1853789)))

(declare-fun b!2941604 () Bool)

(assert (=> b!2941604 (= e!1853792 lt!1030167)))

(declare-fun b!2941605 () Bool)

(assert (=> b!2941605 (= e!1853781 EmptyLang!9099)))

(declare-fun b!2941606 () Bool)

(assert (=> b!2941606 (= e!1853789 e!1853791)))

(assert (=> b!2941606 (= lt!1030165 call!193767)))

(assert (=> b!2941606 (= lt!1030170 call!193773)))

(declare-fun res!1214027 () Bool)

(assert (=> b!2941606 (= res!1214027 call!193768)))

(assert (=> b!2941606 (=> res!1214027 e!1853785)))

(declare-fun c!481036 () Bool)

(assert (=> b!2941606 (= c!481036 e!1853785)))

(declare-fun b!2941607 () Bool)

(assert (=> b!2941607 (= e!1853787 (= (nullable!2877 lt!1030169) (nullable!2877 (regTwo!18710 r!17423))))))

(declare-fun b!2941608 () Bool)

(assert (=> b!2941608 (= e!1853783 (Concat!14420 lt!1030165 lt!1030170))))

(declare-fun b!2941609 () Bool)

(assert (=> b!2941609 (= e!1853788 e!1853783)))

(declare-fun c!481043 () Bool)

(declare-fun call!193769 () Bool)

(assert (=> b!2941609 (= c!481043 call!193769)))

(declare-fun b!2941610 () Bool)

(assert (=> b!2941610 (= e!1853782 EmptyExpr!9099)))

(declare-fun b!2941611 () Bool)

(declare-fun e!1853790 () Bool)

(assert (=> b!2941611 (= e!1853790 call!193769)))

(declare-fun b!2941612 () Bool)

(declare-fun c!481037 () Bool)

(assert (=> b!2941612 (= c!481037 e!1853790)))

(declare-fun res!1214028 () Bool)

(assert (=> b!2941612 (=> res!1214028 e!1853790)))

(assert (=> b!2941612 (= res!1214028 call!193771)))

(assert (=> b!2941612 (= lt!1030166 call!193772)))

(assert (=> b!2941612 (= e!1853779 e!1853782)))

(declare-fun b!2941613 () Bool)

(declare-fun c!481034 () Bool)

(assert (=> b!2941613 (= c!481034 call!193768)))

(assert (=> b!2941613 (= e!1853786 e!1853792)))

(declare-fun b!2941614 () Bool)

(declare-fun c!481033 () Bool)

(assert (=> b!2941614 (= c!481033 (isEmptyExpr!304 lt!1030165))))

(assert (=> b!2941614 (= e!1853791 e!1853788)))

(declare-fun bm!193768 () Bool)

(assert (=> bm!193768 (= call!193769 (isEmptyExpr!304 (ite c!481041 lt!1030166 lt!1030170)))))

(assert (= (and d!840249 c!481035) b!2941605))

(assert (= (and d!840249 (not c!481035)) b!2941595))

(assert (= (and b!2941595 c!481042) b!2941602))

(assert (= (and b!2941595 (not c!481042)) b!2941599))

(assert (= (and b!2941599 c!481040) b!2941592))

(assert (= (and b!2941599 (not c!481040)) b!2941596))

(assert (= (and b!2941596 c!481041) b!2941612))

(assert (= (and b!2941596 (not c!481041)) b!2941603))

(assert (= (and b!2941612 (not res!1214028)) b!2941611))

(assert (= (and b!2941612 c!481037) b!2941610))

(assert (= (and b!2941612 (not c!481037)) b!2941593))

(assert (= (and b!2941603 c!481039) b!2941597))

(assert (= (and b!2941603 (not c!481039)) b!2941606))

(assert (= (and b!2941597 c!481038) b!2941600))

(assert (= (and b!2941597 (not c!481038)) b!2941613))

(assert (= (and b!2941613 c!481034) b!2941604))

(assert (= (and b!2941613 (not c!481034)) b!2941590))

(assert (= (and b!2941606 (not res!1214027)) b!2941598))

(assert (= (and b!2941606 c!481036) b!2941601))

(assert (= (and b!2941606 (not c!481036)) b!2941614))

(assert (= (and b!2941614 c!481033) b!2941591))

(assert (= (and b!2941614 (not c!481033)) b!2941609))

(assert (= (and b!2941609 c!481043) b!2941594))

(assert (= (and b!2941609 (not c!481043)) b!2941608))

(assert (= (or b!2941597 b!2941606) bm!193765))

(assert (= (or b!2941597 b!2941606) bm!193763))

(assert (= (or b!2941613 b!2941606) bm!193764))

(assert (= (or b!2941597 b!2941598) bm!193766))

(assert (= (or b!2941611 b!2941609) bm!193768))

(assert (= (or b!2941612 bm!193765) bm!193767))

(assert (= (or b!2941612 bm!193764) bm!193762))

(assert (= (and d!840249 res!1214029) b!2941607))

(declare-fun m!3325649 () Bool)

(assert (=> bm!193762 m!3325649))

(declare-fun m!3325651 () Bool)

(assert (=> bm!193763 m!3325651))

(declare-fun m!3325653 () Bool)

(assert (=> b!2941614 m!3325653))

(declare-fun m!3325655 () Bool)

(assert (=> bm!193766 m!3325655))

(declare-fun m!3325657 () Bool)

(assert (=> bm!193768 m!3325657))

(declare-fun m!3325659 () Bool)

(assert (=> b!2941607 m!3325659))

(assert (=> b!2941607 m!3325621))

(declare-fun m!3325661 () Bool)

(assert (=> d!840249 m!3325661))

(assert (=> d!840249 m!3325615))

(declare-fun m!3325663 () Bool)

(assert (=> bm!193767 m!3325663))

(assert (=> b!2941363 d!840249))

(declare-fun lt!1030171 () Regex!9099)

(declare-fun c!481050 () Bool)

(declare-fun c!481052 () Bool)

(declare-fun bm!193771 () Bool)

(declare-fun call!193780 () Bool)

(declare-fun lt!1030172 () Regex!9099)

(declare-fun lt!1030174 () Regex!9099)

(assert (=> bm!193771 (= call!193780 (isEmptyLang!223 (ite c!481052 lt!1030172 (ite c!481050 lt!1030174 lt!1030171))))))

(declare-fun b!2941615 () Bool)

(declare-fun e!1853806 () Regex!9099)

(declare-fun lt!1030173 () Regex!9099)

(assert (=> b!2941615 (= e!1853806 (Union!9099 lt!1030173 lt!1030174))))

(declare-fun bm!193772 () Bool)

(declare-fun call!193776 () Regex!9099)

(assert (=> bm!193772 (= call!193776 (simplify!104 (ite c!481050 (regTwo!18711 (regOne!18710 r!17423)) (regOne!18710 (regOne!18710 r!17423)))))))

(declare-fun b!2941616 () Bool)

(declare-fun e!1853802 () Regex!9099)

(declare-fun lt!1030176 () Regex!9099)

(assert (=> b!2941616 (= e!1853802 lt!1030176)))

(declare-fun b!2941617 () Bool)

(declare-fun e!1853794 () Regex!9099)

(assert (=> b!2941617 (= e!1853794 EmptyExpr!9099)))

(declare-fun b!2941618 () Bool)

(declare-fun e!1853796 () Regex!9099)

(assert (=> b!2941618 (= e!1853796 (Star!9099 lt!1030172))))

(declare-fun b!2941619 () Bool)

(declare-fun e!1853797 () Regex!9099)

(assert (=> b!2941619 (= e!1853797 lt!1030171)))

(declare-fun b!2941620 () Bool)

(declare-fun e!1853795 () Regex!9099)

(declare-fun e!1853798 () Regex!9099)

(assert (=> b!2941620 (= e!1853795 e!1853798)))

(declare-fun c!481053 () Bool)

(assert (=> b!2941620 (= c!481053 ((_ is ElementMatch!9099) (regOne!18710 r!17423)))))

(declare-fun b!2941621 () Bool)

(declare-fun e!1853793 () Regex!9099)

(assert (=> b!2941621 (= e!1853794 e!1853793)))

(assert (=> b!2941621 (= c!481052 ((_ is Star!9099) (regOne!18710 r!17423)))))

(declare-fun bm!193774 () Bool)

(declare-fun call!193782 () Regex!9099)

(declare-fun call!193781 () Regex!9099)

(assert (=> bm!193774 (= call!193782 call!193781)))

(declare-fun b!2941622 () Bool)

(declare-fun e!1853803 () Regex!9099)

(declare-fun e!1853800 () Regex!9099)

(assert (=> b!2941622 (= e!1853803 e!1853800)))

(assert (=> b!2941622 (= lt!1030173 call!193782)))

(assert (=> b!2941622 (= lt!1030174 call!193776)))

(declare-fun c!481049 () Bool)

(declare-fun call!193779 () Bool)

(assert (=> b!2941622 (= c!481049 call!193779)))

(declare-fun bm!193775 () Bool)

(assert (=> bm!193775 (= call!193779 (isEmptyLang!223 (ite c!481050 lt!1030173 lt!1030176)))))

(declare-fun b!2941623 () Bool)

(declare-fun e!1853799 () Bool)

(assert (=> b!2941623 (= e!1853799 call!193779)))

(declare-fun b!2941624 () Bool)

(declare-fun c!481051 () Bool)

(assert (=> b!2941624 (= c!481051 ((_ is EmptyExpr!9099) (regOne!18710 r!17423)))))

(assert (=> b!2941624 (= e!1853798 e!1853794)))

(declare-fun b!2941625 () Bool)

(assert (=> b!2941625 (= e!1853800 lt!1030174)))

(declare-fun b!2941626 () Bool)

(declare-fun e!1853805 () Regex!9099)

(assert (=> b!2941626 (= e!1853805 EmptyLang!9099)))

(declare-fun bm!193773 () Bool)

(declare-fun call!193777 () Bool)

(assert (=> bm!193773 (= call!193777 call!193780)))

(declare-fun d!840251 () Bool)

(declare-fun e!1853801 () Bool)

(assert (=> d!840251 e!1853801))

(declare-fun res!1214032 () Bool)

(assert (=> d!840251 (=> (not res!1214032) (not e!1853801))))

(declare-fun lt!1030175 () Regex!9099)

(assert (=> d!840251 (= res!1214032 (validRegex!3832 lt!1030175))))

(assert (=> d!840251 (= lt!1030175 e!1853795)))

(declare-fun c!481046 () Bool)

(assert (=> d!840251 (= c!481046 ((_ is EmptyLang!9099) (regOne!18710 r!17423)))))

(assert (=> d!840251 (validRegex!3832 (regOne!18710 r!17423))))

(assert (=> d!840251 (= (simplify!104 (regOne!18710 r!17423)) lt!1030175)))

(declare-fun b!2941627 () Bool)

(assert (=> b!2941627 (= e!1853798 (regOne!18710 r!17423))))

(declare-fun bm!193776 () Bool)

(assert (=> bm!193776 (= call!193781 (simplify!104 (ite c!481052 (reg!9428 (regOne!18710 r!17423)) (ite c!481050 (regOne!18711 (regOne!18710 r!17423)) (regTwo!18710 (regOne!18710 r!17423))))))))

(declare-fun b!2941628 () Bool)

(assert (=> b!2941628 (= c!481050 ((_ is Union!9099) (regOne!18710 r!17423)))))

(assert (=> b!2941628 (= e!1853793 e!1853803)))

(declare-fun b!2941629 () Bool)

(assert (=> b!2941629 (= e!1853806 lt!1030173)))

(declare-fun b!2941630 () Bool)

(assert (=> b!2941630 (= e!1853795 EmptyLang!9099)))

(declare-fun b!2941631 () Bool)

(assert (=> b!2941631 (= e!1853803 e!1853805)))

(assert (=> b!2941631 (= lt!1030171 call!193776)))

(assert (=> b!2941631 (= lt!1030176 call!193782)))

(declare-fun res!1214030 () Bool)

(assert (=> b!2941631 (= res!1214030 call!193777)))

(assert (=> b!2941631 (=> res!1214030 e!1853799)))

(declare-fun c!481047 () Bool)

(assert (=> b!2941631 (= c!481047 e!1853799)))

(declare-fun b!2941632 () Bool)

(assert (=> b!2941632 (= e!1853801 (= (nullable!2877 lt!1030175) (nullable!2877 (regOne!18710 r!17423))))))

(declare-fun b!2941633 () Bool)

(assert (=> b!2941633 (= e!1853797 (Concat!14420 lt!1030171 lt!1030176))))

(declare-fun b!2941634 () Bool)

(assert (=> b!2941634 (= e!1853802 e!1853797)))

(declare-fun c!481054 () Bool)

(declare-fun call!193778 () Bool)

(assert (=> b!2941634 (= c!481054 call!193778)))

(declare-fun b!2941635 () Bool)

(assert (=> b!2941635 (= e!1853796 EmptyExpr!9099)))

(declare-fun b!2941636 () Bool)

(declare-fun e!1853804 () Bool)

(assert (=> b!2941636 (= e!1853804 call!193778)))

(declare-fun b!2941637 () Bool)

(declare-fun c!481048 () Bool)

(assert (=> b!2941637 (= c!481048 e!1853804)))

(declare-fun res!1214031 () Bool)

(assert (=> b!2941637 (=> res!1214031 e!1853804)))

(assert (=> b!2941637 (= res!1214031 call!193780)))

(assert (=> b!2941637 (= lt!1030172 call!193781)))

(assert (=> b!2941637 (= e!1853793 e!1853796)))

(declare-fun b!2941638 () Bool)

(declare-fun c!481045 () Bool)

(assert (=> b!2941638 (= c!481045 call!193777)))

(assert (=> b!2941638 (= e!1853800 e!1853806)))

(declare-fun b!2941639 () Bool)

(declare-fun c!481044 () Bool)

(assert (=> b!2941639 (= c!481044 (isEmptyExpr!304 lt!1030171))))

(assert (=> b!2941639 (= e!1853805 e!1853802)))

(declare-fun bm!193777 () Bool)

(assert (=> bm!193777 (= call!193778 (isEmptyExpr!304 (ite c!481052 lt!1030172 lt!1030176)))))

(assert (= (and d!840251 c!481046) b!2941630))

(assert (= (and d!840251 (not c!481046)) b!2941620))

(assert (= (and b!2941620 c!481053) b!2941627))

(assert (= (and b!2941620 (not c!481053)) b!2941624))

(assert (= (and b!2941624 c!481051) b!2941617))

(assert (= (and b!2941624 (not c!481051)) b!2941621))

(assert (= (and b!2941621 c!481052) b!2941637))

(assert (= (and b!2941621 (not c!481052)) b!2941628))

(assert (= (and b!2941637 (not res!1214031)) b!2941636))

(assert (= (and b!2941637 c!481048) b!2941635))

(assert (= (and b!2941637 (not c!481048)) b!2941618))

(assert (= (and b!2941628 c!481050) b!2941622))

(assert (= (and b!2941628 (not c!481050)) b!2941631))

(assert (= (and b!2941622 c!481049) b!2941625))

(assert (= (and b!2941622 (not c!481049)) b!2941638))

(assert (= (and b!2941638 c!481045) b!2941629))

(assert (= (and b!2941638 (not c!481045)) b!2941615))

(assert (= (and b!2941631 (not res!1214030)) b!2941623))

(assert (= (and b!2941631 c!481047) b!2941626))

(assert (= (and b!2941631 (not c!481047)) b!2941639))

(assert (= (and b!2941639 c!481044) b!2941616))

(assert (= (and b!2941639 (not c!481044)) b!2941634))

(assert (= (and b!2941634 c!481054) b!2941619))

(assert (= (and b!2941634 (not c!481054)) b!2941633))

(assert (= (or b!2941622 b!2941631) bm!193774))

(assert (= (or b!2941622 b!2941631) bm!193772))

(assert (= (or b!2941638 b!2941631) bm!193773))

(assert (= (or b!2941622 b!2941623) bm!193775))

(assert (= (or b!2941636 b!2941634) bm!193777))

(assert (= (or b!2941637 bm!193774) bm!193776))

(assert (= (or b!2941637 bm!193773) bm!193771))

(assert (= (and d!840251 res!1214032) b!2941632))

(declare-fun m!3325665 () Bool)

(assert (=> bm!193771 m!3325665))

(declare-fun m!3325667 () Bool)

(assert (=> bm!193772 m!3325667))

(declare-fun m!3325669 () Bool)

(assert (=> b!2941639 m!3325669))

(declare-fun m!3325671 () Bool)

(assert (=> bm!193775 m!3325671))

(declare-fun m!3325673 () Bool)

(assert (=> bm!193777 m!3325673))

(declare-fun m!3325675 () Bool)

(assert (=> b!2941632 m!3325675))

(assert (=> b!2941632 m!3325575))

(declare-fun m!3325677 () Bool)

(assert (=> d!840251 m!3325677))

(assert (=> d!840251 m!3325599))

(declare-fun m!3325679 () Bool)

(assert (=> bm!193776 m!3325679))

(assert (=> b!2941363 d!840251))

(declare-fun d!840253 () Bool)

(assert (=> d!840253 (= (isEmptyExpr!304 lt!1030136) ((_ is EmptyExpr!9099) lt!1030136))))

(assert (=> b!2941357 d!840253))

(declare-fun b!2941651 () Bool)

(declare-fun e!1853816 () Bool)

(declare-fun call!193787 () Bool)

(assert (=> b!2941651 (= e!1853816 call!193787)))

(declare-fun b!2941652 () Bool)

(declare-fun e!1853820 () Bool)

(declare-fun e!1853817 () Bool)

(assert (=> b!2941652 (= e!1853820 e!1853817)))

(declare-fun c!481060 () Bool)

(assert (=> b!2941652 (= c!481060 ((_ is Union!9099) (regOne!18710 r!17423)))))

(declare-fun d!840255 () Bool)

(declare-fun res!1214039 () Bool)

(declare-fun e!1853818 () Bool)

(assert (=> d!840255 (=> res!1214039 e!1853818)))

(assert (=> d!840255 (= res!1214039 ((_ is ElementMatch!9099) (regOne!18710 r!17423)))))

(assert (=> d!840255 (= (validRegex!3832 (regOne!18710 r!17423)) e!1853818)))

(declare-fun bm!193780 () Bool)

(assert (=> bm!193780 (= call!193787 (validRegex!3832 (ite c!481060 (regOne!18711 (regOne!18710 r!17423)) (regTwo!18710 (regOne!18710 r!17423)))))))

(declare-fun b!2941653 () Bool)

(assert (=> b!2941653 (= e!1853818 e!1853820)))

(declare-fun c!481059 () Bool)

(assert (=> b!2941653 (= c!481059 ((_ is Star!9099) (regOne!18710 r!17423)))))

(declare-fun b!2941654 () Bool)

(declare-fun e!1853815 () Bool)

(assert (=> b!2941654 (= e!1853815 e!1853816)))

(declare-fun res!1214037 () Bool)

(assert (=> b!2941654 (=> (not res!1214037) (not e!1853816))))

(declare-fun call!193785 () Bool)

(assert (=> b!2941654 (= res!1214037 call!193785)))

(declare-fun b!2941655 () Bool)

(declare-fun res!1214040 () Bool)

(declare-fun e!1853814 () Bool)

(assert (=> b!2941655 (=> (not res!1214040) (not e!1853814))))

(assert (=> b!2941655 (= res!1214040 call!193787)))

(assert (=> b!2941655 (= e!1853817 e!1853814)))

(declare-fun b!2941656 () Bool)

(declare-fun e!1853819 () Bool)

(declare-fun call!193786 () Bool)

(assert (=> b!2941656 (= e!1853819 call!193786)))

(declare-fun b!2941657 () Bool)

(assert (=> b!2941657 (= e!1853814 call!193785)))

(declare-fun b!2941658 () Bool)

(assert (=> b!2941658 (= e!1853820 e!1853819)))

(declare-fun res!1214038 () Bool)

(assert (=> b!2941658 (= res!1214038 (not (nullable!2877 (reg!9428 (regOne!18710 r!17423)))))))

(assert (=> b!2941658 (=> (not res!1214038) (not e!1853819))))

(declare-fun b!2941659 () Bool)

(declare-fun res!1214036 () Bool)

(assert (=> b!2941659 (=> res!1214036 e!1853815)))

(assert (=> b!2941659 (= res!1214036 (not ((_ is Concat!14420) (regOne!18710 r!17423))))))

(assert (=> b!2941659 (= e!1853817 e!1853815)))

(declare-fun bm!193781 () Bool)

(assert (=> bm!193781 (= call!193785 call!193786)))

(declare-fun bm!193782 () Bool)

(assert (=> bm!193782 (= call!193786 (validRegex!3832 (ite c!481059 (reg!9428 (regOne!18710 r!17423)) (ite c!481060 (regTwo!18711 (regOne!18710 r!17423)) (regOne!18710 (regOne!18710 r!17423))))))))

(assert (= (and d!840255 (not res!1214039)) b!2941653))

(assert (= (and b!2941653 c!481059) b!2941658))

(assert (= (and b!2941653 (not c!481059)) b!2941652))

(assert (= (and b!2941658 res!1214038) b!2941656))

(assert (= (and b!2941652 c!481060) b!2941655))

(assert (= (and b!2941652 (not c!481060)) b!2941659))

(assert (= (and b!2941655 res!1214040) b!2941657))

(assert (= (and b!2941659 (not res!1214036)) b!2941654))

(assert (= (and b!2941654 res!1214037) b!2941651))

(assert (= (or b!2941655 b!2941651) bm!193780))

(assert (= (or b!2941657 b!2941654) bm!193781))

(assert (= (or b!2941656 bm!193781) bm!193782))

(declare-fun m!3325681 () Bool)

(assert (=> bm!193780 m!3325681))

(declare-fun m!3325683 () Bool)

(assert (=> b!2941658 m!3325683))

(declare-fun m!3325685 () Bool)

(assert (=> bm!193782 m!3325685))

(assert (=> b!2941353 d!840255))

(declare-fun b!2941668 () Bool)

(declare-fun e!1853823 () Bool)

(declare-fun tp!941312 () Bool)

(assert (=> b!2941668 (= e!1853823 (and tp_is_empty!15761 tp!941312))))

(assert (=> b!2941355 (= tp!941304 e!1853823)))

(assert (= (and b!2941355 ((_ is Cons!34840) (t!234029 s!11993))) b!2941668))

(declare-fun b!2941682 () Bool)

(declare-fun e!1853826 () Bool)

(declare-fun tp!941326 () Bool)

(declare-fun tp!941324 () Bool)

(assert (=> b!2941682 (= e!1853826 (and tp!941326 tp!941324))))

(assert (=> b!2941358 (= tp!941305 e!1853826)))

(declare-fun b!2941680 () Bool)

(declare-fun tp!941327 () Bool)

(declare-fun tp!941323 () Bool)

(assert (=> b!2941680 (= e!1853826 (and tp!941327 tp!941323))))

(declare-fun b!2941679 () Bool)

(assert (=> b!2941679 (= e!1853826 tp_is_empty!15761)))

(declare-fun b!2941681 () Bool)

(declare-fun tp!941325 () Bool)

(assert (=> b!2941681 (= e!1853826 tp!941325)))

(assert (= (and b!2941358 ((_ is ElementMatch!9099) (reg!9428 r!17423))) b!2941679))

(assert (= (and b!2941358 ((_ is Concat!14420) (reg!9428 r!17423))) b!2941680))

(assert (= (and b!2941358 ((_ is Star!9099) (reg!9428 r!17423))) b!2941681))

(assert (= (and b!2941358 ((_ is Union!9099) (reg!9428 r!17423))) b!2941682))

(declare-fun b!2941686 () Bool)

(declare-fun e!1853827 () Bool)

(declare-fun tp!941331 () Bool)

(declare-fun tp!941329 () Bool)

(assert (=> b!2941686 (= e!1853827 (and tp!941331 tp!941329))))

(assert (=> b!2941352 (= tp!941306 e!1853827)))

(declare-fun b!2941684 () Bool)

(declare-fun tp!941332 () Bool)

(declare-fun tp!941328 () Bool)

(assert (=> b!2941684 (= e!1853827 (and tp!941332 tp!941328))))

(declare-fun b!2941683 () Bool)

(assert (=> b!2941683 (= e!1853827 tp_is_empty!15761)))

(declare-fun b!2941685 () Bool)

(declare-fun tp!941330 () Bool)

(assert (=> b!2941685 (= e!1853827 tp!941330)))

(assert (= (and b!2941352 ((_ is ElementMatch!9099) (regOne!18711 r!17423))) b!2941683))

(assert (= (and b!2941352 ((_ is Concat!14420) (regOne!18711 r!17423))) b!2941684))

(assert (= (and b!2941352 ((_ is Star!9099) (regOne!18711 r!17423))) b!2941685))

(assert (= (and b!2941352 ((_ is Union!9099) (regOne!18711 r!17423))) b!2941686))

(declare-fun b!2941690 () Bool)

(declare-fun e!1853828 () Bool)

(declare-fun tp!941336 () Bool)

(declare-fun tp!941334 () Bool)

(assert (=> b!2941690 (= e!1853828 (and tp!941336 tp!941334))))

(assert (=> b!2941352 (= tp!941309 e!1853828)))

(declare-fun b!2941688 () Bool)

(declare-fun tp!941337 () Bool)

(declare-fun tp!941333 () Bool)

(assert (=> b!2941688 (= e!1853828 (and tp!941337 tp!941333))))

(declare-fun b!2941687 () Bool)

(assert (=> b!2941687 (= e!1853828 tp_is_empty!15761)))

(declare-fun b!2941689 () Bool)

(declare-fun tp!941335 () Bool)

(assert (=> b!2941689 (= e!1853828 tp!941335)))

(assert (= (and b!2941352 ((_ is ElementMatch!9099) (regTwo!18711 r!17423))) b!2941687))

(assert (= (and b!2941352 ((_ is Concat!14420) (regTwo!18711 r!17423))) b!2941688))

(assert (= (and b!2941352 ((_ is Star!9099) (regTwo!18711 r!17423))) b!2941689))

(assert (= (and b!2941352 ((_ is Union!9099) (regTwo!18711 r!17423))) b!2941690))

(declare-fun b!2941694 () Bool)

(declare-fun e!1853829 () Bool)

(declare-fun tp!941341 () Bool)

(declare-fun tp!941339 () Bool)

(assert (=> b!2941694 (= e!1853829 (and tp!941341 tp!941339))))

(assert (=> b!2941359 (= tp!941308 e!1853829)))

(declare-fun b!2941692 () Bool)

(declare-fun tp!941342 () Bool)

(declare-fun tp!941338 () Bool)

(assert (=> b!2941692 (= e!1853829 (and tp!941342 tp!941338))))

(declare-fun b!2941691 () Bool)

(assert (=> b!2941691 (= e!1853829 tp_is_empty!15761)))

(declare-fun b!2941693 () Bool)

(declare-fun tp!941340 () Bool)

(assert (=> b!2941693 (= e!1853829 tp!941340)))

(assert (= (and b!2941359 ((_ is ElementMatch!9099) (regOne!18710 r!17423))) b!2941691))

(assert (= (and b!2941359 ((_ is Concat!14420) (regOne!18710 r!17423))) b!2941692))

(assert (= (and b!2941359 ((_ is Star!9099) (regOne!18710 r!17423))) b!2941693))

(assert (= (and b!2941359 ((_ is Union!9099) (regOne!18710 r!17423))) b!2941694))

(declare-fun b!2941698 () Bool)

(declare-fun e!1853830 () Bool)

(declare-fun tp!941346 () Bool)

(declare-fun tp!941344 () Bool)

(assert (=> b!2941698 (= e!1853830 (and tp!941346 tp!941344))))

(assert (=> b!2941359 (= tp!941307 e!1853830)))

(declare-fun b!2941696 () Bool)

(declare-fun tp!941347 () Bool)

(declare-fun tp!941343 () Bool)

(assert (=> b!2941696 (= e!1853830 (and tp!941347 tp!941343))))

(declare-fun b!2941695 () Bool)

(assert (=> b!2941695 (= e!1853830 tp_is_empty!15761)))

(declare-fun b!2941697 () Bool)

(declare-fun tp!941345 () Bool)

(assert (=> b!2941697 (= e!1853830 tp!941345)))

(assert (= (and b!2941359 ((_ is ElementMatch!9099) (regTwo!18710 r!17423))) b!2941695))

(assert (= (and b!2941359 ((_ is Concat!14420) (regTwo!18710 r!17423))) b!2941696))

(assert (= (and b!2941359 ((_ is Star!9099) (regTwo!18710 r!17423))) b!2941697))

(assert (= (and b!2941359 ((_ is Union!9099) (regTwo!18710 r!17423))) b!2941698))

(check-sat (not bm!193771) (not d!840229) (not bm!193728) (not b!2941394) (not bm!193735) (not b!2941395) (not b!2941697) (not b!2941692) (not b!2941693) (not bm!193734) (not bm!193768) (not b!2941494) (not b!2941502) (not bm!193766) (not b!2941484) (not b!2941668) (not d!840249) (not b!2941398) (not b!2941689) (not b!2941492) (not b!2941614) tp_is_empty!15761 (not b!2941684) (not bm!193775) (not d!840223) (not bm!193782) (not bm!193777) (not bm!193743) (not b!2941681) (not b!2941411) (not b!2941694) (not b!2941408) (not b!2941409) (not bm!193776) (not b!2941397) (not b!2941658) (not b!2941682) (not bm!193762) (not b!2941415) (not bm!193780) (not bm!193763) (not b!2941632) (not b!2941401) (not d!840243) (not b!2941491) (not bm!193772) (not d!840241) (not b!2941419) (not b!2941639) (not b!2941479) (not d!840231) (not bm!193745) (not b!2941685) (not bm!193767) (not b!2941690) (not b!2941696) (not b!2941412) (not d!840251) (not d!840237) (not b!2941495) (not b!2941680) (not b!2941607) (not b!2941405) (not b!2941698) (not b!2941498) (not b!2941686) (not b!2941688) (not bm!193729) (not b!2941528) (not bm!193736))
(check-sat)

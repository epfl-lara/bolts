; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740398 () Bool)

(assert start!740398)

(declare-fun b!7778377 () Bool)

(declare-fun res!3100514 () Bool)

(declare-fun e!4607952 () Bool)

(assert (=> b!7778377 (=> (not res!3100514) (not e!4607952))))

(declare-datatypes ((C!41936 0))(
  ( (C!41937 (val!31408 Int)) )
))
(declare-datatypes ((Regex!20805 0))(
  ( (ElementMatch!20805 (c!1433376 C!41936)) (Concat!29650 (regOne!42122 Regex!20805) (regTwo!42122 Regex!20805)) (EmptyExpr!20805) (Star!20805 (reg!21134 Regex!20805)) (EmptyLang!20805) (Union!20805 (regOne!42123 Regex!20805) (regTwo!42123 Regex!20805)) )
))
(declare-fun lt!2672516 () Regex!20805)

(declare-datatypes ((List!73644 0))(
  ( (Nil!73520) (Cons!73520 (h!79968 C!41936) (t!388379 List!73644)) )
))
(declare-fun s!14292 () List!73644)

(declare-fun matchR!10265 (Regex!20805 List!73644) Bool)

(declare-fun derivativeStep!6148 (Regex!20805 C!41936) Regex!20805)

(assert (=> b!7778377 (= res!3100514 (matchR!10265 (derivativeStep!6148 lt!2672516 (h!79968 s!14292)) (t!388379 s!14292)))))

(declare-fun b!7778378 () Bool)

(declare-fun e!4607953 () Bool)

(declare-fun tp!2285926 () Bool)

(declare-fun tp!2285927 () Bool)

(assert (=> b!7778378 (= e!4607953 (and tp!2285926 tp!2285927))))

(declare-fun b!7778379 () Bool)

(declare-fun tp!2285932 () Bool)

(assert (=> b!7778379 (= e!4607953 tp!2285932)))

(declare-fun b!7778380 () Bool)

(declare-fun e!4607954 () Bool)

(declare-fun tp!2285925 () Bool)

(declare-fun tp!2285928 () Bool)

(assert (=> b!7778380 (= e!4607954 (and tp!2285925 tp!2285928))))

(declare-fun b!7778381 () Bool)

(declare-fun res!3100515 () Bool)

(assert (=> b!7778381 (=> (not res!3100515) (not e!4607952))))

(declare-fun r1!6279 () Regex!20805)

(declare-fun nullable!9193 (Regex!20805) Bool)

(assert (=> b!7778381 (= res!3100515 (not (nullable!9193 r1!6279)))))

(declare-fun b!7778383 () Bool)

(declare-fun validRegex!11219 (Regex!20805) Bool)

(assert (=> b!7778383 (= e!4607952 (not (validRegex!11219 lt!2672516)))))

(declare-fun b!7778384 () Bool)

(declare-fun tp!2285930 () Bool)

(assert (=> b!7778384 (= e!4607954 tp!2285930)))

(declare-fun b!7778385 () Bool)

(declare-fun res!3100516 () Bool)

(assert (=> b!7778385 (=> (not res!3100516) (not e!4607952))))

(get-info :version)

(assert (=> b!7778385 (= res!3100516 ((_ is Cons!73520) s!14292))))

(declare-fun b!7778386 () Bool)

(declare-fun e!4607955 () Bool)

(declare-fun tp_is_empty!51965 () Bool)

(declare-fun tp!2285931 () Bool)

(assert (=> b!7778386 (= e!4607955 (and tp_is_empty!51965 tp!2285931))))

(declare-fun b!7778387 () Bool)

(assert (=> b!7778387 (= e!4607954 tp_is_empty!51965)))

(declare-fun b!7778388 () Bool)

(declare-fun res!3100511 () Bool)

(declare-fun e!4607951 () Bool)

(assert (=> b!7778388 (=> (not res!3100511) (not e!4607951))))

(declare-fun r2!6217 () Regex!20805)

(assert (=> b!7778388 (= res!3100511 (validRegex!11219 r2!6217))))

(declare-fun b!7778389 () Bool)

(declare-fun tp!2285924 () Bool)

(declare-fun tp!2285929 () Bool)

(assert (=> b!7778389 (= e!4607953 (and tp!2285924 tp!2285929))))

(declare-fun b!7778390 () Bool)

(assert (=> b!7778390 (= e!4607951 e!4607952)))

(declare-fun res!3100513 () Bool)

(assert (=> b!7778390 (=> (not res!3100513) (not e!4607952))))

(assert (=> b!7778390 (= res!3100513 (matchR!10265 lt!2672516 s!14292))))

(assert (=> b!7778390 (= lt!2672516 (Concat!29650 r1!6279 r2!6217))))

(declare-fun b!7778391 () Bool)

(declare-fun tp!2285923 () Bool)

(declare-fun tp!2285933 () Bool)

(assert (=> b!7778391 (= e!4607954 (and tp!2285923 tp!2285933))))

(declare-fun b!7778382 () Bool)

(assert (=> b!7778382 (= e!4607953 tp_is_empty!51965)))

(declare-fun res!3100512 () Bool)

(assert (=> start!740398 (=> (not res!3100512) (not e!4607951))))

(assert (=> start!740398 (= res!3100512 (validRegex!11219 r1!6279))))

(assert (=> start!740398 e!4607951))

(assert (=> start!740398 e!4607954))

(assert (=> start!740398 e!4607953))

(assert (=> start!740398 e!4607955))

(assert (= (and start!740398 res!3100512) b!7778388))

(assert (= (and b!7778388 res!3100511) b!7778390))

(assert (= (and b!7778390 res!3100513) b!7778385))

(assert (= (and b!7778385 res!3100516) b!7778377))

(assert (= (and b!7778377 res!3100514) b!7778381))

(assert (= (and b!7778381 res!3100515) b!7778383))

(assert (= (and start!740398 ((_ is ElementMatch!20805) r1!6279)) b!7778387))

(assert (= (and start!740398 ((_ is Concat!29650) r1!6279)) b!7778391))

(assert (= (and start!740398 ((_ is Star!20805) r1!6279)) b!7778384))

(assert (= (and start!740398 ((_ is Union!20805) r1!6279)) b!7778380))

(assert (= (and start!740398 ((_ is ElementMatch!20805) r2!6217)) b!7778382))

(assert (= (and start!740398 ((_ is Concat!29650) r2!6217)) b!7778378))

(assert (= (and start!740398 ((_ is Star!20805) r2!6217)) b!7778379))

(assert (= (and start!740398 ((_ is Union!20805) r2!6217)) b!7778389))

(assert (= (and start!740398 ((_ is Cons!73520) s!14292)) b!7778386))

(declare-fun m!8227964 () Bool)

(assert (=> start!740398 m!8227964))

(declare-fun m!8227966 () Bool)

(assert (=> b!7778381 m!8227966))

(declare-fun m!8227968 () Bool)

(assert (=> b!7778383 m!8227968))

(declare-fun m!8227970 () Bool)

(assert (=> b!7778390 m!8227970))

(declare-fun m!8227972 () Bool)

(assert (=> b!7778388 m!8227972))

(declare-fun m!8227974 () Bool)

(assert (=> b!7778377 m!8227974))

(assert (=> b!7778377 m!8227974))

(declare-fun m!8227976 () Bool)

(assert (=> b!7778377 m!8227976))

(check-sat (not b!7778381) (not b!7778386) (not b!7778384) (not b!7778380) tp_is_empty!51965 (not b!7778391) (not b!7778379) (not start!740398) (not b!7778390) (not b!7778378) (not b!7778388) (not b!7778377) (not b!7778383) (not b!7778389))
(check-sat)
(get-model)

(declare-fun bm!720980 () Bool)

(declare-fun call!720985 () Bool)

(declare-fun call!720987 () Bool)

(assert (=> bm!720980 (= call!720985 call!720987)))

(declare-fun b!7778428 () Bool)

(declare-fun e!4607988 () Bool)

(declare-fun e!4607989 () Bool)

(assert (=> b!7778428 (= e!4607988 e!4607989)))

(declare-fun res!3100540 () Bool)

(assert (=> b!7778428 (= res!3100540 (not (nullable!9193 (reg!21134 r1!6279))))))

(assert (=> b!7778428 (=> (not res!3100540) (not e!4607989))))

(declare-fun b!7778429 () Bool)

(declare-fun e!4607985 () Bool)

(assert (=> b!7778429 (= e!4607988 e!4607985)))

(declare-fun c!1433385 () Bool)

(assert (=> b!7778429 (= c!1433385 ((_ is Union!20805) r1!6279))))

(declare-fun b!7778430 () Bool)

(declare-fun e!4607984 () Bool)

(assert (=> b!7778430 (= e!4607984 e!4607988)))

(declare-fun c!1433386 () Bool)

(assert (=> b!7778430 (= c!1433386 ((_ is Star!20805) r1!6279))))

(declare-fun d!2344994 () Bool)

(declare-fun res!3100539 () Bool)

(assert (=> d!2344994 (=> res!3100539 e!4607984)))

(assert (=> d!2344994 (= res!3100539 ((_ is ElementMatch!20805) r1!6279))))

(assert (=> d!2344994 (= (validRegex!11219 r1!6279) e!4607984)))

(declare-fun b!7778431 () Bool)

(declare-fun res!3100538 () Bool)

(declare-fun e!4607987 () Bool)

(assert (=> b!7778431 (=> res!3100538 e!4607987)))

(assert (=> b!7778431 (= res!3100538 (not ((_ is Concat!29650) r1!6279)))))

(assert (=> b!7778431 (= e!4607985 e!4607987)))

(declare-fun bm!720981 () Bool)

(assert (=> bm!720981 (= call!720987 (validRegex!11219 (ite c!1433386 (reg!21134 r1!6279) (ite c!1433385 (regTwo!42123 r1!6279) (regTwo!42122 r1!6279)))))))

(declare-fun b!7778432 () Bool)

(assert (=> b!7778432 (= e!4607989 call!720987)))

(declare-fun b!7778433 () Bool)

(declare-fun e!4607986 () Bool)

(assert (=> b!7778433 (= e!4607986 call!720985)))

(declare-fun b!7778434 () Bool)

(declare-fun e!4607990 () Bool)

(assert (=> b!7778434 (= e!4607990 call!720985)))

(declare-fun b!7778435 () Bool)

(assert (=> b!7778435 (= e!4607987 e!4607986)))

(declare-fun res!3100537 () Bool)

(assert (=> b!7778435 (=> (not res!3100537) (not e!4607986))))

(declare-fun call!720986 () Bool)

(assert (=> b!7778435 (= res!3100537 call!720986)))

(declare-fun bm!720982 () Bool)

(assert (=> bm!720982 (= call!720986 (validRegex!11219 (ite c!1433385 (regOne!42123 r1!6279) (regOne!42122 r1!6279))))))

(declare-fun b!7778436 () Bool)

(declare-fun res!3100541 () Bool)

(assert (=> b!7778436 (=> (not res!3100541) (not e!4607990))))

(assert (=> b!7778436 (= res!3100541 call!720986)))

(assert (=> b!7778436 (= e!4607985 e!4607990)))

(assert (= (and d!2344994 (not res!3100539)) b!7778430))

(assert (= (and b!7778430 c!1433386) b!7778428))

(assert (= (and b!7778430 (not c!1433386)) b!7778429))

(assert (= (and b!7778428 res!3100540) b!7778432))

(assert (= (and b!7778429 c!1433385) b!7778436))

(assert (= (and b!7778429 (not c!1433385)) b!7778431))

(assert (= (and b!7778436 res!3100541) b!7778434))

(assert (= (and b!7778431 (not res!3100538)) b!7778435))

(assert (= (and b!7778435 res!3100537) b!7778433))

(assert (= (or b!7778436 b!7778435) bm!720982))

(assert (= (or b!7778434 b!7778433) bm!720980))

(assert (= (or b!7778432 bm!720980) bm!720981))

(declare-fun m!8227980 () Bool)

(assert (=> b!7778428 m!8227980))

(declare-fun m!8227982 () Bool)

(assert (=> bm!720981 m!8227982))

(declare-fun m!8227984 () Bool)

(assert (=> bm!720982 m!8227984))

(assert (=> start!740398 d!2344994))

(declare-fun d!2345000 () Bool)

(declare-fun nullableFct!3598 (Regex!20805) Bool)

(assert (=> d!2345000 (= (nullable!9193 r1!6279) (nullableFct!3598 r1!6279))))

(declare-fun bs!1966193 () Bool)

(assert (= bs!1966193 d!2345000))

(declare-fun m!8227986 () Bool)

(assert (=> bs!1966193 m!8227986))

(assert (=> b!7778381 d!2345000))

(declare-fun bm!720985 () Bool)

(declare-fun call!720990 () Bool)

(declare-fun call!720992 () Bool)

(assert (=> bm!720985 (= call!720990 call!720992)))

(declare-fun b!7778437 () Bool)

(declare-fun e!4607995 () Bool)

(declare-fun e!4607996 () Bool)

(assert (=> b!7778437 (= e!4607995 e!4607996)))

(declare-fun res!3100545 () Bool)

(assert (=> b!7778437 (= res!3100545 (not (nullable!9193 (reg!21134 lt!2672516))))))

(assert (=> b!7778437 (=> (not res!3100545) (not e!4607996))))

(declare-fun b!7778438 () Bool)

(declare-fun e!4607992 () Bool)

(assert (=> b!7778438 (= e!4607995 e!4607992)))

(declare-fun c!1433387 () Bool)

(assert (=> b!7778438 (= c!1433387 ((_ is Union!20805) lt!2672516))))

(declare-fun b!7778439 () Bool)

(declare-fun e!4607991 () Bool)

(assert (=> b!7778439 (= e!4607991 e!4607995)))

(declare-fun c!1433388 () Bool)

(assert (=> b!7778439 (= c!1433388 ((_ is Star!20805) lt!2672516))))

(declare-fun d!2345002 () Bool)

(declare-fun res!3100544 () Bool)

(assert (=> d!2345002 (=> res!3100544 e!4607991)))

(assert (=> d!2345002 (= res!3100544 ((_ is ElementMatch!20805) lt!2672516))))

(assert (=> d!2345002 (= (validRegex!11219 lt!2672516) e!4607991)))

(declare-fun b!7778440 () Bool)

(declare-fun res!3100543 () Bool)

(declare-fun e!4607994 () Bool)

(assert (=> b!7778440 (=> res!3100543 e!4607994)))

(assert (=> b!7778440 (= res!3100543 (not ((_ is Concat!29650) lt!2672516)))))

(assert (=> b!7778440 (= e!4607992 e!4607994)))

(declare-fun bm!720986 () Bool)

(assert (=> bm!720986 (= call!720992 (validRegex!11219 (ite c!1433388 (reg!21134 lt!2672516) (ite c!1433387 (regTwo!42123 lt!2672516) (regTwo!42122 lt!2672516)))))))

(declare-fun b!7778441 () Bool)

(assert (=> b!7778441 (= e!4607996 call!720992)))

(declare-fun b!7778442 () Bool)

(declare-fun e!4607993 () Bool)

(assert (=> b!7778442 (= e!4607993 call!720990)))

(declare-fun b!7778443 () Bool)

(declare-fun e!4607997 () Bool)

(assert (=> b!7778443 (= e!4607997 call!720990)))

(declare-fun b!7778444 () Bool)

(assert (=> b!7778444 (= e!4607994 e!4607993)))

(declare-fun res!3100542 () Bool)

(assert (=> b!7778444 (=> (not res!3100542) (not e!4607993))))

(declare-fun call!720991 () Bool)

(assert (=> b!7778444 (= res!3100542 call!720991)))

(declare-fun bm!720987 () Bool)

(assert (=> bm!720987 (= call!720991 (validRegex!11219 (ite c!1433387 (regOne!42123 lt!2672516) (regOne!42122 lt!2672516))))))

(declare-fun b!7778445 () Bool)

(declare-fun res!3100546 () Bool)

(assert (=> b!7778445 (=> (not res!3100546) (not e!4607997))))

(assert (=> b!7778445 (= res!3100546 call!720991)))

(assert (=> b!7778445 (= e!4607992 e!4607997)))

(assert (= (and d!2345002 (not res!3100544)) b!7778439))

(assert (= (and b!7778439 c!1433388) b!7778437))

(assert (= (and b!7778439 (not c!1433388)) b!7778438))

(assert (= (and b!7778437 res!3100545) b!7778441))

(assert (= (and b!7778438 c!1433387) b!7778445))

(assert (= (and b!7778438 (not c!1433387)) b!7778440))

(assert (= (and b!7778445 res!3100546) b!7778443))

(assert (= (and b!7778440 (not res!3100543)) b!7778444))

(assert (= (and b!7778444 res!3100542) b!7778442))

(assert (= (or b!7778445 b!7778444) bm!720987))

(assert (= (or b!7778443 b!7778442) bm!720985))

(assert (= (or b!7778441 bm!720985) bm!720986))

(declare-fun m!8227988 () Bool)

(assert (=> b!7778437 m!8227988))

(declare-fun m!8227990 () Bool)

(assert (=> bm!720986 m!8227990))

(declare-fun m!8227992 () Bool)

(assert (=> bm!720987 m!8227992))

(assert (=> b!7778383 d!2345002))

(declare-fun bm!720988 () Bool)

(declare-fun call!720993 () Bool)

(declare-fun call!720995 () Bool)

(assert (=> bm!720988 (= call!720993 call!720995)))

(declare-fun b!7778446 () Bool)

(declare-fun e!4608002 () Bool)

(declare-fun e!4608003 () Bool)

(assert (=> b!7778446 (= e!4608002 e!4608003)))

(declare-fun res!3100550 () Bool)

(assert (=> b!7778446 (= res!3100550 (not (nullable!9193 (reg!21134 r2!6217))))))

(assert (=> b!7778446 (=> (not res!3100550) (not e!4608003))))

(declare-fun b!7778447 () Bool)

(declare-fun e!4607999 () Bool)

(assert (=> b!7778447 (= e!4608002 e!4607999)))

(declare-fun c!1433389 () Bool)

(assert (=> b!7778447 (= c!1433389 ((_ is Union!20805) r2!6217))))

(declare-fun b!7778448 () Bool)

(declare-fun e!4607998 () Bool)

(assert (=> b!7778448 (= e!4607998 e!4608002)))

(declare-fun c!1433390 () Bool)

(assert (=> b!7778448 (= c!1433390 ((_ is Star!20805) r2!6217))))

(declare-fun d!2345004 () Bool)

(declare-fun res!3100549 () Bool)

(assert (=> d!2345004 (=> res!3100549 e!4607998)))

(assert (=> d!2345004 (= res!3100549 ((_ is ElementMatch!20805) r2!6217))))

(assert (=> d!2345004 (= (validRegex!11219 r2!6217) e!4607998)))

(declare-fun b!7778449 () Bool)

(declare-fun res!3100548 () Bool)

(declare-fun e!4608001 () Bool)

(assert (=> b!7778449 (=> res!3100548 e!4608001)))

(assert (=> b!7778449 (= res!3100548 (not ((_ is Concat!29650) r2!6217)))))

(assert (=> b!7778449 (= e!4607999 e!4608001)))

(declare-fun bm!720989 () Bool)

(assert (=> bm!720989 (= call!720995 (validRegex!11219 (ite c!1433390 (reg!21134 r2!6217) (ite c!1433389 (regTwo!42123 r2!6217) (regTwo!42122 r2!6217)))))))

(declare-fun b!7778450 () Bool)

(assert (=> b!7778450 (= e!4608003 call!720995)))

(declare-fun b!7778451 () Bool)

(declare-fun e!4608000 () Bool)

(assert (=> b!7778451 (= e!4608000 call!720993)))

(declare-fun b!7778452 () Bool)

(declare-fun e!4608004 () Bool)

(assert (=> b!7778452 (= e!4608004 call!720993)))

(declare-fun b!7778453 () Bool)

(assert (=> b!7778453 (= e!4608001 e!4608000)))

(declare-fun res!3100547 () Bool)

(assert (=> b!7778453 (=> (not res!3100547) (not e!4608000))))

(declare-fun call!720994 () Bool)

(assert (=> b!7778453 (= res!3100547 call!720994)))

(declare-fun bm!720990 () Bool)

(assert (=> bm!720990 (= call!720994 (validRegex!11219 (ite c!1433389 (regOne!42123 r2!6217) (regOne!42122 r2!6217))))))

(declare-fun b!7778454 () Bool)

(declare-fun res!3100551 () Bool)

(assert (=> b!7778454 (=> (not res!3100551) (not e!4608004))))

(assert (=> b!7778454 (= res!3100551 call!720994)))

(assert (=> b!7778454 (= e!4607999 e!4608004)))

(assert (= (and d!2345004 (not res!3100549)) b!7778448))

(assert (= (and b!7778448 c!1433390) b!7778446))

(assert (= (and b!7778448 (not c!1433390)) b!7778447))

(assert (= (and b!7778446 res!3100550) b!7778450))

(assert (= (and b!7778447 c!1433389) b!7778454))

(assert (= (and b!7778447 (not c!1433389)) b!7778449))

(assert (= (and b!7778454 res!3100551) b!7778452))

(assert (= (and b!7778449 (not res!3100548)) b!7778453))

(assert (= (and b!7778453 res!3100547) b!7778451))

(assert (= (or b!7778454 b!7778453) bm!720990))

(assert (= (or b!7778452 b!7778451) bm!720988))

(assert (= (or b!7778450 bm!720988) bm!720989))

(declare-fun m!8227994 () Bool)

(assert (=> b!7778446 m!8227994))

(declare-fun m!8227996 () Bool)

(assert (=> bm!720989 m!8227996))

(declare-fun m!8227998 () Bool)

(assert (=> bm!720990 m!8227998))

(assert (=> b!7778388 d!2345004))

(declare-fun b!7778529 () Bool)

(declare-fun res!3100599 () Bool)

(declare-fun e!4608048 () Bool)

(assert (=> b!7778529 (=> res!3100599 e!4608048)))

(declare-fun e!4608053 () Bool)

(assert (=> b!7778529 (= res!3100599 e!4608053)))

(declare-fun res!3100600 () Bool)

(assert (=> b!7778529 (=> (not res!3100600) (not e!4608053))))

(declare-fun lt!2672521 () Bool)

(assert (=> b!7778529 (= res!3100600 lt!2672521)))

(declare-fun b!7778530 () Bool)

(declare-fun head!15908 (List!73644) C!41936)

(assert (=> b!7778530 (= e!4608053 (= (head!15908 (t!388379 s!14292)) (c!1433376 (derivativeStep!6148 lt!2672516 (h!79968 s!14292)))))))

(declare-fun b!7778531 () Bool)

(declare-fun res!3100597 () Bool)

(assert (=> b!7778531 (=> (not res!3100597) (not e!4608053))))

(declare-fun call!721006 () Bool)

(assert (=> b!7778531 (= res!3100597 (not call!721006))))

(declare-fun b!7778532 () Bool)

(declare-fun e!4608052 () Bool)

(declare-fun tail!15449 (List!73644) List!73644)

(assert (=> b!7778532 (= e!4608052 (matchR!10265 (derivativeStep!6148 (derivativeStep!6148 lt!2672516 (h!79968 s!14292)) (head!15908 (t!388379 s!14292))) (tail!15449 (t!388379 s!14292))))))

(declare-fun b!7778533 () Bool)

(declare-fun res!3100598 () Bool)

(assert (=> b!7778533 (=> (not res!3100598) (not e!4608053))))

(declare-fun isEmpty!42177 (List!73644) Bool)

(assert (=> b!7778533 (= res!3100598 (isEmpty!42177 (tail!15449 (t!388379 s!14292))))))

(declare-fun b!7778534 () Bool)

(declare-fun e!4608051 () Bool)

(assert (=> b!7778534 (= e!4608051 (= lt!2672521 call!721006))))

(declare-fun b!7778535 () Bool)

(declare-fun e!4608050 () Bool)

(assert (=> b!7778535 (= e!4608050 (not (= (head!15908 (t!388379 s!14292)) (c!1433376 (derivativeStep!6148 lt!2672516 (h!79968 s!14292))))))))

(declare-fun d!2345006 () Bool)

(assert (=> d!2345006 e!4608051))

(declare-fun c!1433409 () Bool)

(assert (=> d!2345006 (= c!1433409 ((_ is EmptyExpr!20805) (derivativeStep!6148 lt!2672516 (h!79968 s!14292))))))

(assert (=> d!2345006 (= lt!2672521 e!4608052)))

(declare-fun c!1433407 () Bool)

(assert (=> d!2345006 (= c!1433407 (isEmpty!42177 (t!388379 s!14292)))))

(assert (=> d!2345006 (validRegex!11219 (derivativeStep!6148 lt!2672516 (h!79968 s!14292)))))

(assert (=> d!2345006 (= (matchR!10265 (derivativeStep!6148 lt!2672516 (h!79968 s!14292)) (t!388379 s!14292)) lt!2672521)))

(declare-fun b!7778536 () Bool)

(declare-fun res!3100601 () Bool)

(assert (=> b!7778536 (=> res!3100601 e!4608048)))

(assert (=> b!7778536 (= res!3100601 (not ((_ is ElementMatch!20805) (derivativeStep!6148 lt!2672516 (h!79968 s!14292)))))))

(declare-fun e!4608047 () Bool)

(assert (=> b!7778536 (= e!4608047 e!4608048)))

(declare-fun b!7778537 () Bool)

(declare-fun res!3100594 () Bool)

(assert (=> b!7778537 (=> res!3100594 e!4608050)))

(assert (=> b!7778537 (= res!3100594 (not (isEmpty!42177 (tail!15449 (t!388379 s!14292)))))))

(declare-fun b!7778538 () Bool)

(declare-fun e!4608049 () Bool)

(assert (=> b!7778538 (= e!4608048 e!4608049)))

(declare-fun res!3100596 () Bool)

(assert (=> b!7778538 (=> (not res!3100596) (not e!4608049))))

(assert (=> b!7778538 (= res!3100596 (not lt!2672521))))

(declare-fun b!7778539 () Bool)

(assert (=> b!7778539 (= e!4608049 e!4608050)))

(declare-fun res!3100595 () Bool)

(assert (=> b!7778539 (=> res!3100595 e!4608050)))

(assert (=> b!7778539 (= res!3100595 call!721006)))

(declare-fun b!7778540 () Bool)

(assert (=> b!7778540 (= e!4608047 (not lt!2672521))))

(declare-fun b!7778541 () Bool)

(assert (=> b!7778541 (= e!4608051 e!4608047)))

(declare-fun c!1433408 () Bool)

(assert (=> b!7778541 (= c!1433408 ((_ is EmptyLang!20805) (derivativeStep!6148 lt!2672516 (h!79968 s!14292))))))

(declare-fun b!7778542 () Bool)

(assert (=> b!7778542 (= e!4608052 (nullable!9193 (derivativeStep!6148 lt!2672516 (h!79968 s!14292))))))

(declare-fun bm!721001 () Bool)

(assert (=> bm!721001 (= call!721006 (isEmpty!42177 (t!388379 s!14292)))))

(assert (= (and d!2345006 c!1433407) b!7778542))

(assert (= (and d!2345006 (not c!1433407)) b!7778532))

(assert (= (and d!2345006 c!1433409) b!7778534))

(assert (= (and d!2345006 (not c!1433409)) b!7778541))

(assert (= (and b!7778541 c!1433408) b!7778540))

(assert (= (and b!7778541 (not c!1433408)) b!7778536))

(assert (= (and b!7778536 (not res!3100601)) b!7778529))

(assert (= (and b!7778529 res!3100600) b!7778531))

(assert (= (and b!7778531 res!3100597) b!7778533))

(assert (= (and b!7778533 res!3100598) b!7778530))

(assert (= (and b!7778529 (not res!3100599)) b!7778538))

(assert (= (and b!7778538 res!3100596) b!7778539))

(assert (= (and b!7778539 (not res!3100595)) b!7778537))

(assert (= (and b!7778537 (not res!3100594)) b!7778535))

(assert (= (or b!7778534 b!7778531 b!7778539) bm!721001))

(declare-fun m!8228012 () Bool)

(assert (=> b!7778533 m!8228012))

(assert (=> b!7778533 m!8228012))

(declare-fun m!8228014 () Bool)

(assert (=> b!7778533 m!8228014))

(declare-fun m!8228016 () Bool)

(assert (=> d!2345006 m!8228016))

(assert (=> d!2345006 m!8227974))

(declare-fun m!8228018 () Bool)

(assert (=> d!2345006 m!8228018))

(declare-fun m!8228020 () Bool)

(assert (=> b!7778532 m!8228020))

(assert (=> b!7778532 m!8227974))

(assert (=> b!7778532 m!8228020))

(declare-fun m!8228022 () Bool)

(assert (=> b!7778532 m!8228022))

(assert (=> b!7778532 m!8228012))

(assert (=> b!7778532 m!8228022))

(assert (=> b!7778532 m!8228012))

(declare-fun m!8228024 () Bool)

(assert (=> b!7778532 m!8228024))

(assert (=> b!7778537 m!8228012))

(assert (=> b!7778537 m!8228012))

(assert (=> b!7778537 m!8228014))

(assert (=> bm!721001 m!8228016))

(assert (=> b!7778542 m!8227974))

(declare-fun m!8228026 () Bool)

(assert (=> b!7778542 m!8228026))

(assert (=> b!7778535 m!8228020))

(assert (=> b!7778530 m!8228020))

(assert (=> b!7778377 d!2345006))

(declare-fun b!7778597 () Bool)

(declare-fun e!4608084 () Regex!20805)

(declare-fun call!721026 () Regex!20805)

(declare-fun call!721025 () Regex!20805)

(assert (=> b!7778597 (= e!4608084 (Union!20805 call!721026 call!721025))))

(declare-fun b!7778598 () Bool)

(declare-fun c!1433437 () Bool)

(assert (=> b!7778598 (= c!1433437 ((_ is Union!20805) lt!2672516))))

(declare-fun e!4608083 () Regex!20805)

(assert (=> b!7778598 (= e!4608083 e!4608084)))

(declare-fun bm!721019 () Bool)

(declare-fun call!721024 () Regex!20805)

(declare-fun call!721027 () Regex!20805)

(assert (=> bm!721019 (= call!721024 call!721027)))

(declare-fun b!7778599 () Bool)

(declare-fun e!4608085 () Regex!20805)

(assert (=> b!7778599 (= e!4608084 e!4608085)))

(declare-fun c!1433434 () Bool)

(assert (=> b!7778599 (= c!1433434 ((_ is Star!20805) lt!2672516))))

(declare-fun c!1433433 () Bool)

(declare-fun bm!721020 () Bool)

(assert (=> bm!721020 (= call!721025 (derivativeStep!6148 (ite c!1433437 (regTwo!42123 lt!2672516) (ite c!1433434 (reg!21134 lt!2672516) (ite c!1433433 (regTwo!42122 lt!2672516) (regOne!42122 lt!2672516)))) (h!79968 s!14292)))))

(declare-fun bm!721021 () Bool)

(assert (=> bm!721021 (= call!721027 call!721025)))

(declare-fun b!7778600 () Bool)

(declare-fun e!4608081 () Regex!20805)

(assert (=> b!7778600 (= e!4608081 (Union!20805 (Concat!29650 call!721024 (regTwo!42122 lt!2672516)) EmptyLang!20805))))

(declare-fun b!7778601 () Bool)

(assert (=> b!7778601 (= c!1433433 (nullable!9193 (regOne!42122 lt!2672516)))))

(assert (=> b!7778601 (= e!4608085 e!4608081)))

(declare-fun bm!721022 () Bool)

(assert (=> bm!721022 (= call!721026 (derivativeStep!6148 (ite c!1433437 (regOne!42123 lt!2672516) (regOne!42122 lt!2672516)) (h!79968 s!14292)))))

(declare-fun b!7778602 () Bool)

(assert (=> b!7778602 (= e!4608081 (Union!20805 (Concat!29650 call!721026 (regTwo!42122 lt!2672516)) call!721024))))

(declare-fun b!7778603 () Bool)

(assert (=> b!7778603 (= e!4608085 (Concat!29650 call!721027 lt!2672516))))

(declare-fun b!7778604 () Bool)

(declare-fun e!4608082 () Regex!20805)

(assert (=> b!7778604 (= e!4608082 EmptyLang!20805)))

(declare-fun b!7778605 () Bool)

(assert (=> b!7778605 (= e!4608082 e!4608083)))

(declare-fun c!1433436 () Bool)

(assert (=> b!7778605 (= c!1433436 ((_ is ElementMatch!20805) lt!2672516))))

(declare-fun d!2345012 () Bool)

(declare-fun lt!2672527 () Regex!20805)

(assert (=> d!2345012 (validRegex!11219 lt!2672527)))

(assert (=> d!2345012 (= lt!2672527 e!4608082)))

(declare-fun c!1433435 () Bool)

(assert (=> d!2345012 (= c!1433435 (or ((_ is EmptyExpr!20805) lt!2672516) ((_ is EmptyLang!20805) lt!2672516)))))

(assert (=> d!2345012 (validRegex!11219 lt!2672516)))

(assert (=> d!2345012 (= (derivativeStep!6148 lt!2672516 (h!79968 s!14292)) lt!2672527)))

(declare-fun b!7778606 () Bool)

(assert (=> b!7778606 (= e!4608083 (ite (= (h!79968 s!14292) (c!1433376 lt!2672516)) EmptyExpr!20805 EmptyLang!20805))))

(assert (= (and d!2345012 c!1433435) b!7778604))

(assert (= (and d!2345012 (not c!1433435)) b!7778605))

(assert (= (and b!7778605 c!1433436) b!7778606))

(assert (= (and b!7778605 (not c!1433436)) b!7778598))

(assert (= (and b!7778598 c!1433437) b!7778597))

(assert (= (and b!7778598 (not c!1433437)) b!7778599))

(assert (= (and b!7778599 c!1433434) b!7778603))

(assert (= (and b!7778599 (not c!1433434)) b!7778601))

(assert (= (and b!7778601 c!1433433) b!7778602))

(assert (= (and b!7778601 (not c!1433433)) b!7778600))

(assert (= (or b!7778602 b!7778600) bm!721019))

(assert (= (or b!7778603 bm!721019) bm!721021))

(assert (= (or b!7778597 bm!721021) bm!721020))

(assert (= (or b!7778597 b!7778602) bm!721022))

(declare-fun m!8228044 () Bool)

(assert (=> bm!721020 m!8228044))

(declare-fun m!8228046 () Bool)

(assert (=> b!7778601 m!8228046))

(declare-fun m!8228048 () Bool)

(assert (=> bm!721022 m!8228048))

(declare-fun m!8228050 () Bool)

(assert (=> d!2345012 m!8228050))

(assert (=> d!2345012 m!8227968))

(assert (=> b!7778377 d!2345012))

(declare-fun b!7778607 () Bool)

(declare-fun res!3100615 () Bool)

(declare-fun e!4608087 () Bool)

(assert (=> b!7778607 (=> res!3100615 e!4608087)))

(declare-fun e!4608092 () Bool)

(assert (=> b!7778607 (= res!3100615 e!4608092)))

(declare-fun res!3100616 () Bool)

(assert (=> b!7778607 (=> (not res!3100616) (not e!4608092))))

(declare-fun lt!2672528 () Bool)

(assert (=> b!7778607 (= res!3100616 lt!2672528)))

(declare-fun b!7778608 () Bool)

(assert (=> b!7778608 (= e!4608092 (= (head!15908 s!14292) (c!1433376 lt!2672516)))))

(declare-fun b!7778609 () Bool)

(declare-fun res!3100613 () Bool)

(assert (=> b!7778609 (=> (not res!3100613) (not e!4608092))))

(declare-fun call!721028 () Bool)

(assert (=> b!7778609 (= res!3100613 (not call!721028))))

(declare-fun b!7778610 () Bool)

(declare-fun e!4608091 () Bool)

(assert (=> b!7778610 (= e!4608091 (matchR!10265 (derivativeStep!6148 lt!2672516 (head!15908 s!14292)) (tail!15449 s!14292)))))

(declare-fun b!7778611 () Bool)

(declare-fun res!3100614 () Bool)

(assert (=> b!7778611 (=> (not res!3100614) (not e!4608092))))

(assert (=> b!7778611 (= res!3100614 (isEmpty!42177 (tail!15449 s!14292)))))

(declare-fun b!7778612 () Bool)

(declare-fun e!4608090 () Bool)

(assert (=> b!7778612 (= e!4608090 (= lt!2672528 call!721028))))

(declare-fun b!7778613 () Bool)

(declare-fun e!4608089 () Bool)

(assert (=> b!7778613 (= e!4608089 (not (= (head!15908 s!14292) (c!1433376 lt!2672516))))))

(declare-fun d!2345016 () Bool)

(assert (=> d!2345016 e!4608090))

(declare-fun c!1433440 () Bool)

(assert (=> d!2345016 (= c!1433440 ((_ is EmptyExpr!20805) lt!2672516))))

(assert (=> d!2345016 (= lt!2672528 e!4608091)))

(declare-fun c!1433438 () Bool)

(assert (=> d!2345016 (= c!1433438 (isEmpty!42177 s!14292))))

(assert (=> d!2345016 (validRegex!11219 lt!2672516)))

(assert (=> d!2345016 (= (matchR!10265 lt!2672516 s!14292) lt!2672528)))

(declare-fun b!7778614 () Bool)

(declare-fun res!3100617 () Bool)

(assert (=> b!7778614 (=> res!3100617 e!4608087)))

(assert (=> b!7778614 (= res!3100617 (not ((_ is ElementMatch!20805) lt!2672516)))))

(declare-fun e!4608086 () Bool)

(assert (=> b!7778614 (= e!4608086 e!4608087)))

(declare-fun b!7778615 () Bool)

(declare-fun res!3100610 () Bool)

(assert (=> b!7778615 (=> res!3100610 e!4608089)))

(assert (=> b!7778615 (= res!3100610 (not (isEmpty!42177 (tail!15449 s!14292))))))

(declare-fun b!7778616 () Bool)

(declare-fun e!4608088 () Bool)

(assert (=> b!7778616 (= e!4608087 e!4608088)))

(declare-fun res!3100612 () Bool)

(assert (=> b!7778616 (=> (not res!3100612) (not e!4608088))))

(assert (=> b!7778616 (= res!3100612 (not lt!2672528))))

(declare-fun b!7778617 () Bool)

(assert (=> b!7778617 (= e!4608088 e!4608089)))

(declare-fun res!3100611 () Bool)

(assert (=> b!7778617 (=> res!3100611 e!4608089)))

(assert (=> b!7778617 (= res!3100611 call!721028)))

(declare-fun b!7778618 () Bool)

(assert (=> b!7778618 (= e!4608086 (not lt!2672528))))

(declare-fun b!7778619 () Bool)

(assert (=> b!7778619 (= e!4608090 e!4608086)))

(declare-fun c!1433439 () Bool)

(assert (=> b!7778619 (= c!1433439 ((_ is EmptyLang!20805) lt!2672516))))

(declare-fun b!7778620 () Bool)

(assert (=> b!7778620 (= e!4608091 (nullable!9193 lt!2672516))))

(declare-fun bm!721023 () Bool)

(assert (=> bm!721023 (= call!721028 (isEmpty!42177 s!14292))))

(assert (= (and d!2345016 c!1433438) b!7778620))

(assert (= (and d!2345016 (not c!1433438)) b!7778610))

(assert (= (and d!2345016 c!1433440) b!7778612))

(assert (= (and d!2345016 (not c!1433440)) b!7778619))

(assert (= (and b!7778619 c!1433439) b!7778618))

(assert (= (and b!7778619 (not c!1433439)) b!7778614))

(assert (= (and b!7778614 (not res!3100617)) b!7778607))

(assert (= (and b!7778607 res!3100616) b!7778609))

(assert (= (and b!7778609 res!3100613) b!7778611))

(assert (= (and b!7778611 res!3100614) b!7778608))

(assert (= (and b!7778607 (not res!3100615)) b!7778616))

(assert (= (and b!7778616 res!3100612) b!7778617))

(assert (= (and b!7778617 (not res!3100611)) b!7778615))

(assert (= (and b!7778615 (not res!3100610)) b!7778613))

(assert (= (or b!7778612 b!7778609 b!7778617) bm!721023))

(declare-fun m!8228052 () Bool)

(assert (=> b!7778611 m!8228052))

(assert (=> b!7778611 m!8228052))

(declare-fun m!8228054 () Bool)

(assert (=> b!7778611 m!8228054))

(declare-fun m!8228056 () Bool)

(assert (=> d!2345016 m!8228056))

(assert (=> d!2345016 m!8227968))

(declare-fun m!8228058 () Bool)

(assert (=> b!7778610 m!8228058))

(assert (=> b!7778610 m!8228058))

(declare-fun m!8228062 () Bool)

(assert (=> b!7778610 m!8228062))

(assert (=> b!7778610 m!8228052))

(assert (=> b!7778610 m!8228062))

(assert (=> b!7778610 m!8228052))

(declare-fun m!8228068 () Bool)

(assert (=> b!7778610 m!8228068))

(assert (=> b!7778615 m!8228052))

(assert (=> b!7778615 m!8228052))

(assert (=> b!7778615 m!8228054))

(assert (=> bm!721023 m!8228056))

(declare-fun m!8228072 () Bool)

(assert (=> b!7778620 m!8228072))

(assert (=> b!7778613 m!8228058))

(assert (=> b!7778608 m!8228058))

(assert (=> b!7778390 d!2345016))

(declare-fun b!7778644 () Bool)

(declare-fun e!4608107 () Bool)

(declare-fun tp!2285936 () Bool)

(assert (=> b!7778644 (= e!4608107 (and tp_is_empty!51965 tp!2285936))))

(assert (=> b!7778386 (= tp!2285931 e!4608107)))

(assert (= (and b!7778386 ((_ is Cons!73520) (t!388379 s!14292))) b!7778644))

(declare-fun b!7778676 () Bool)

(declare-fun e!4608119 () Bool)

(declare-fun tp!2285951 () Bool)

(declare-fun tp!2285949 () Bool)

(assert (=> b!7778676 (= e!4608119 (and tp!2285951 tp!2285949))))

(declare-fun b!7778678 () Bool)

(declare-fun tp!2285950 () Bool)

(declare-fun tp!2285952 () Bool)

(assert (=> b!7778678 (= e!4608119 (and tp!2285950 tp!2285952))))

(declare-fun b!7778677 () Bool)

(declare-fun tp!2285953 () Bool)

(assert (=> b!7778677 (= e!4608119 tp!2285953)))

(assert (=> b!7778379 (= tp!2285932 e!4608119)))

(declare-fun b!7778675 () Bool)

(assert (=> b!7778675 (= e!4608119 tp_is_empty!51965)))

(assert (= (and b!7778379 ((_ is ElementMatch!20805) (reg!21134 r2!6217))) b!7778675))

(assert (= (and b!7778379 ((_ is Concat!29650) (reg!21134 r2!6217))) b!7778676))

(assert (= (and b!7778379 ((_ is Star!20805) (reg!21134 r2!6217))) b!7778677))

(assert (= (and b!7778379 ((_ is Union!20805) (reg!21134 r2!6217))) b!7778678))

(declare-fun b!7778684 () Bool)

(declare-fun e!4608120 () Bool)

(declare-fun tp!2285964 () Bool)

(declare-fun tp!2285962 () Bool)

(assert (=> b!7778684 (= e!4608120 (and tp!2285964 tp!2285962))))

(declare-fun b!7778686 () Bool)

(declare-fun tp!2285963 () Bool)

(declare-fun tp!2285965 () Bool)

(assert (=> b!7778686 (= e!4608120 (and tp!2285963 tp!2285965))))

(declare-fun b!7778685 () Bool)

(declare-fun tp!2285966 () Bool)

(assert (=> b!7778685 (= e!4608120 tp!2285966)))

(assert (=> b!7778384 (= tp!2285930 e!4608120)))

(declare-fun b!7778683 () Bool)

(assert (=> b!7778683 (= e!4608120 tp_is_empty!51965)))

(assert (= (and b!7778384 ((_ is ElementMatch!20805) (reg!21134 r1!6279))) b!7778683))

(assert (= (and b!7778384 ((_ is Concat!29650) (reg!21134 r1!6279))) b!7778684))

(assert (= (and b!7778384 ((_ is Star!20805) (reg!21134 r1!6279))) b!7778685))

(assert (= (and b!7778384 ((_ is Union!20805) (reg!21134 r1!6279))) b!7778686))

(declare-fun b!7778688 () Bool)

(declare-fun e!4608121 () Bool)

(declare-fun tp!2285969 () Bool)

(declare-fun tp!2285967 () Bool)

(assert (=> b!7778688 (= e!4608121 (and tp!2285969 tp!2285967))))

(declare-fun b!7778690 () Bool)

(declare-fun tp!2285968 () Bool)

(declare-fun tp!2285970 () Bool)

(assert (=> b!7778690 (= e!4608121 (and tp!2285968 tp!2285970))))

(declare-fun b!7778689 () Bool)

(declare-fun tp!2285971 () Bool)

(assert (=> b!7778689 (= e!4608121 tp!2285971)))

(assert (=> b!7778389 (= tp!2285924 e!4608121)))

(declare-fun b!7778687 () Bool)

(assert (=> b!7778687 (= e!4608121 tp_is_empty!51965)))

(assert (= (and b!7778389 ((_ is ElementMatch!20805) (regOne!42123 r2!6217))) b!7778687))

(assert (= (and b!7778389 ((_ is Concat!29650) (regOne!42123 r2!6217))) b!7778688))

(assert (= (and b!7778389 ((_ is Star!20805) (regOne!42123 r2!6217))) b!7778689))

(assert (= (and b!7778389 ((_ is Union!20805) (regOne!42123 r2!6217))) b!7778690))

(declare-fun b!7778692 () Bool)

(declare-fun e!4608122 () Bool)

(declare-fun tp!2285974 () Bool)

(declare-fun tp!2285972 () Bool)

(assert (=> b!7778692 (= e!4608122 (and tp!2285974 tp!2285972))))

(declare-fun b!7778694 () Bool)

(declare-fun tp!2285973 () Bool)

(declare-fun tp!2285975 () Bool)

(assert (=> b!7778694 (= e!4608122 (and tp!2285973 tp!2285975))))

(declare-fun b!7778693 () Bool)

(declare-fun tp!2285976 () Bool)

(assert (=> b!7778693 (= e!4608122 tp!2285976)))

(assert (=> b!7778389 (= tp!2285929 e!4608122)))

(declare-fun b!7778691 () Bool)

(assert (=> b!7778691 (= e!4608122 tp_is_empty!51965)))

(assert (= (and b!7778389 ((_ is ElementMatch!20805) (regTwo!42123 r2!6217))) b!7778691))

(assert (= (and b!7778389 ((_ is Concat!29650) (regTwo!42123 r2!6217))) b!7778692))

(assert (= (and b!7778389 ((_ is Star!20805) (regTwo!42123 r2!6217))) b!7778693))

(assert (= (and b!7778389 ((_ is Union!20805) (regTwo!42123 r2!6217))) b!7778694))

(declare-fun b!7778700 () Bool)

(declare-fun e!4608124 () Bool)

(declare-fun tp!2285984 () Bool)

(declare-fun tp!2285982 () Bool)

(assert (=> b!7778700 (= e!4608124 (and tp!2285984 tp!2285982))))

(declare-fun b!7778702 () Bool)

(declare-fun tp!2285983 () Bool)

(declare-fun tp!2285985 () Bool)

(assert (=> b!7778702 (= e!4608124 (and tp!2285983 tp!2285985))))

(declare-fun b!7778701 () Bool)

(declare-fun tp!2285986 () Bool)

(assert (=> b!7778701 (= e!4608124 tp!2285986)))

(assert (=> b!7778378 (= tp!2285926 e!4608124)))

(declare-fun b!7778699 () Bool)

(assert (=> b!7778699 (= e!4608124 tp_is_empty!51965)))

(assert (= (and b!7778378 ((_ is ElementMatch!20805) (regOne!42122 r2!6217))) b!7778699))

(assert (= (and b!7778378 ((_ is Concat!29650) (regOne!42122 r2!6217))) b!7778700))

(assert (= (and b!7778378 ((_ is Star!20805) (regOne!42122 r2!6217))) b!7778701))

(assert (= (and b!7778378 ((_ is Union!20805) (regOne!42122 r2!6217))) b!7778702))

(declare-fun b!7778708 () Bool)

(declare-fun e!4608127 () Bool)

(declare-fun tp!2285991 () Bool)

(declare-fun tp!2285989 () Bool)

(assert (=> b!7778708 (= e!4608127 (and tp!2285991 tp!2285989))))

(declare-fun b!7778710 () Bool)

(declare-fun tp!2285990 () Bool)

(declare-fun tp!2285992 () Bool)

(assert (=> b!7778710 (= e!4608127 (and tp!2285990 tp!2285992))))

(declare-fun b!7778709 () Bool)

(declare-fun tp!2285993 () Bool)

(assert (=> b!7778709 (= e!4608127 tp!2285993)))

(assert (=> b!7778378 (= tp!2285927 e!4608127)))

(declare-fun b!7778707 () Bool)

(assert (=> b!7778707 (= e!4608127 tp_is_empty!51965)))

(assert (= (and b!7778378 ((_ is ElementMatch!20805) (regTwo!42122 r2!6217))) b!7778707))

(assert (= (and b!7778378 ((_ is Concat!29650) (regTwo!42122 r2!6217))) b!7778708))

(assert (= (and b!7778378 ((_ is Star!20805) (regTwo!42122 r2!6217))) b!7778709))

(assert (= (and b!7778378 ((_ is Union!20805) (regTwo!42122 r2!6217))) b!7778710))

(declare-fun b!7778713 () Bool)

(declare-fun e!4608129 () Bool)

(declare-fun tp!2285997 () Bool)

(declare-fun tp!2285995 () Bool)

(assert (=> b!7778713 (= e!4608129 (and tp!2285997 tp!2285995))))

(declare-fun b!7778715 () Bool)

(declare-fun tp!2285996 () Bool)

(declare-fun tp!2285998 () Bool)

(assert (=> b!7778715 (= e!4608129 (and tp!2285996 tp!2285998))))

(declare-fun b!7778714 () Bool)

(declare-fun tp!2285999 () Bool)

(assert (=> b!7778714 (= e!4608129 tp!2285999)))

(assert (=> b!7778391 (= tp!2285923 e!4608129)))

(declare-fun b!7778712 () Bool)

(assert (=> b!7778712 (= e!4608129 tp_is_empty!51965)))

(assert (= (and b!7778391 ((_ is ElementMatch!20805) (regOne!42122 r1!6279))) b!7778712))

(assert (= (and b!7778391 ((_ is Concat!29650) (regOne!42122 r1!6279))) b!7778713))

(assert (= (and b!7778391 ((_ is Star!20805) (regOne!42122 r1!6279))) b!7778714))

(assert (= (and b!7778391 ((_ is Union!20805) (regOne!42122 r1!6279))) b!7778715))

(declare-fun b!7778721 () Bool)

(declare-fun e!4608131 () Bool)

(declare-fun tp!2286007 () Bool)

(declare-fun tp!2286005 () Bool)

(assert (=> b!7778721 (= e!4608131 (and tp!2286007 tp!2286005))))

(declare-fun b!7778723 () Bool)

(declare-fun tp!2286006 () Bool)

(declare-fun tp!2286008 () Bool)

(assert (=> b!7778723 (= e!4608131 (and tp!2286006 tp!2286008))))

(declare-fun b!7778722 () Bool)

(declare-fun tp!2286009 () Bool)

(assert (=> b!7778722 (= e!4608131 tp!2286009)))

(assert (=> b!7778391 (= tp!2285933 e!4608131)))

(declare-fun b!7778720 () Bool)

(assert (=> b!7778720 (= e!4608131 tp_is_empty!51965)))

(assert (= (and b!7778391 ((_ is ElementMatch!20805) (regTwo!42122 r1!6279))) b!7778720))

(assert (= (and b!7778391 ((_ is Concat!29650) (regTwo!42122 r1!6279))) b!7778721))

(assert (= (and b!7778391 ((_ is Star!20805) (regTwo!42122 r1!6279))) b!7778722))

(assert (= (and b!7778391 ((_ is Union!20805) (regTwo!42122 r1!6279))) b!7778723))

(declare-fun b!7778733 () Bool)

(declare-fun e!4608134 () Bool)

(declare-fun tp!2286022 () Bool)

(declare-fun tp!2286018 () Bool)

(assert (=> b!7778733 (= e!4608134 (and tp!2286022 tp!2286018))))

(declare-fun b!7778735 () Bool)

(declare-fun tp!2286021 () Bool)

(declare-fun tp!2286023 () Bool)

(assert (=> b!7778735 (= e!4608134 (and tp!2286021 tp!2286023))))

(declare-fun b!7778734 () Bool)

(declare-fun tp!2286024 () Bool)

(assert (=> b!7778734 (= e!4608134 tp!2286024)))

(assert (=> b!7778380 (= tp!2285925 e!4608134)))

(declare-fun b!7778732 () Bool)

(assert (=> b!7778732 (= e!4608134 tp_is_empty!51965)))

(assert (= (and b!7778380 ((_ is ElementMatch!20805) (regOne!42123 r1!6279))) b!7778732))

(assert (= (and b!7778380 ((_ is Concat!29650) (regOne!42123 r1!6279))) b!7778733))

(assert (= (and b!7778380 ((_ is Star!20805) (regOne!42123 r1!6279))) b!7778734))

(assert (= (and b!7778380 ((_ is Union!20805) (regOne!42123 r1!6279))) b!7778735))

(declare-fun b!7778741 () Bool)

(declare-fun e!4608136 () Bool)

(declare-fun tp!2286032 () Bool)

(declare-fun tp!2286030 () Bool)

(assert (=> b!7778741 (= e!4608136 (and tp!2286032 tp!2286030))))

(declare-fun b!7778743 () Bool)

(declare-fun tp!2286031 () Bool)

(declare-fun tp!2286033 () Bool)

(assert (=> b!7778743 (= e!4608136 (and tp!2286031 tp!2286033))))

(declare-fun b!7778742 () Bool)

(declare-fun tp!2286034 () Bool)

(assert (=> b!7778742 (= e!4608136 tp!2286034)))

(assert (=> b!7778380 (= tp!2285928 e!4608136)))

(declare-fun b!7778740 () Bool)

(assert (=> b!7778740 (= e!4608136 tp_is_empty!51965)))

(assert (= (and b!7778380 ((_ is ElementMatch!20805) (regTwo!42123 r1!6279))) b!7778740))

(assert (= (and b!7778380 ((_ is Concat!29650) (regTwo!42123 r1!6279))) b!7778741))

(assert (= (and b!7778380 ((_ is Star!20805) (regTwo!42123 r1!6279))) b!7778742))

(assert (= (and b!7778380 ((_ is Union!20805) (regTwo!42123 r1!6279))) b!7778743))

(check-sat (not b!7778743) (not b!7778620) (not b!7778700) (not b!7778677) (not b!7778733) (not bm!720989) (not b!7778613) (not b!7778678) (not b!7778708) (not bm!720986) (not b!7778689) (not b!7778532) (not b!7778722) (not bm!720987) (not b!7778715) (not b!7778644) (not b!7778714) (not b!7778535) (not b!7778723) (not b!7778686) (not b!7778735) (not b!7778693) (not b!7778530) (not bm!721023) (not b!7778713) (not b!7778537) (not b!7778542) (not b!7778684) (not b!7778428) (not bm!720982) (not b!7778701) (not b!7778692) (not b!7778601) (not b!7778710) (not d!2345016) (not b!7778685) (not b!7778690) (not b!7778734) (not b!7778611) (not b!7778615) (not b!7778702) tp_is_empty!51965 (not b!7778608) (not bm!721020) (not b!7778676) (not bm!720990) (not b!7778610) (not b!7778446) (not b!7778694) (not b!7778688) (not d!2345012) (not d!2345000) (not b!7778741) (not d!2345006) (not b!7778721) (not bm!721001) (not bm!721022) (not b!7778742) (not b!7778437) (not b!7778709) (not b!7778533) (not bm!720981))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90974 () Bool)

(assert start!90974)

(declare-fun b!1056663 () Bool)

(declare-fun e!670895 () Bool)

(declare-fun tp_is_empty!5453 () Bool)

(declare-fun tp!318002 () Bool)

(assert (=> b!1056663 (= e!670895 (and tp_is_empty!5453 tp!318002))))

(declare-fun b!1056664 () Bool)

(declare-fun e!670890 () Bool)

(declare-fun e!670893 () Bool)

(assert (=> b!1056664 (= e!670890 e!670893)))

(declare-fun res!472484 () Bool)

(assert (=> b!1056664 (=> res!472484 e!670893)))

(declare-datatypes ((C!6380 0))(
  ( (C!6381 (val!3438 Int)) )
))
(declare-datatypes ((Regex!2905 0))(
  ( (ElementMatch!2905 (c!176826 C!6380)) (Concat!4738 (regOne!6322 Regex!2905) (regTwo!6322 Regex!2905)) (EmptyExpr!2905) (Star!2905 (reg!3234 Regex!2905)) (EmptyLang!2905) (Union!2905 (regOne!6323 Regex!2905) (regTwo!6323 Regex!2905)) )
))
(declare-fun lt!359151 () Regex!2905)

(declare-datatypes ((List!10135 0))(
  ( (Nil!10119) (Cons!10119 (h!15520 C!6380) (t!101181 List!10135)) )
))
(declare-fun s!10566 () List!10135)

(declare-fun matchR!1441 (Regex!2905 List!10135) Bool)

(assert (=> b!1056664 (= res!472484 (not (matchR!1441 lt!359151 s!10566)))))

(declare-fun lt!359152 () Regex!2905)

(declare-fun lt!359155 () Regex!2905)

(assert (=> b!1056664 (= lt!359151 (Union!2905 lt!359152 lt!359155))))

(declare-fun r!15766 () Regex!2905)

(declare-fun removeUselessConcat!454 (Regex!2905) Regex!2905)

(assert (=> b!1056664 (= lt!359155 (removeUselessConcat!454 (regTwo!6323 r!15766)))))

(assert (=> b!1056664 (= lt!359152 (removeUselessConcat!454 (regOne!6323 r!15766)))))

(declare-fun b!1056665 () Bool)

(declare-fun e!670891 () Bool)

(assert (=> b!1056665 (= e!670893 e!670891)))

(declare-fun res!472481 () Bool)

(assert (=> b!1056665 (=> (not res!472481) (not e!670891))))

(declare-fun validRegex!1374 (Regex!2905) Bool)

(assert (=> b!1056665 (= res!472481 (validRegex!1374 lt!359152))))

(declare-fun matchRSpec!704 (Regex!2905 List!10135) Bool)

(assert (=> b!1056665 (matchRSpec!704 lt!359151 s!10566)))

(declare-datatypes ((Unit!15485 0))(
  ( (Unit!15486) )
))
(declare-fun lt!359154 () Unit!15485)

(declare-fun mainMatchTheorem!704 (Regex!2905 List!10135) Unit!15485)

(assert (=> b!1056665 (= lt!359154 (mainMatchTheorem!704 lt!359151 s!10566))))

(declare-fun b!1056666 () Bool)

(declare-fun e!670894 () Bool)

(declare-fun tp!317999 () Bool)

(declare-fun tp!318000 () Bool)

(assert (=> b!1056666 (= e!670894 (and tp!317999 tp!318000))))

(declare-fun b!1056667 () Bool)

(declare-fun tp!318004 () Bool)

(declare-fun tp!318001 () Bool)

(assert (=> b!1056667 (= e!670894 (and tp!318004 tp!318001))))

(declare-fun b!1056668 () Bool)

(assert (=> b!1056668 (= e!670894 tp_is_empty!5453)))

(declare-fun b!1056669 () Bool)

(assert (=> b!1056669 (= e!670891 (validRegex!1374 lt!359155))))

(declare-fun res!472483 () Bool)

(declare-fun e!670892 () Bool)

(assert (=> start!90974 (=> (not res!472483) (not e!670892))))

(assert (=> start!90974 (= res!472483 (validRegex!1374 r!15766))))

(assert (=> start!90974 e!670892))

(assert (=> start!90974 e!670894))

(assert (=> start!90974 e!670895))

(declare-fun b!1056670 () Bool)

(assert (=> b!1056670 (= e!670892 (not e!670890))))

(declare-fun res!472482 () Bool)

(assert (=> b!1056670 (=> res!472482 e!670890)))

(declare-fun lt!359150 () Bool)

(get-info :version)

(assert (=> b!1056670 (= res!472482 (or lt!359150 (and ((_ is Concat!4738) r!15766) ((_ is EmptyExpr!2905) (regOne!6322 r!15766))) (and ((_ is Concat!4738) r!15766) ((_ is EmptyExpr!2905) (regTwo!6322 r!15766))) ((_ is Concat!4738) r!15766) (not ((_ is Union!2905) r!15766))))))

(assert (=> b!1056670 (= lt!359150 (matchRSpec!704 r!15766 s!10566))))

(assert (=> b!1056670 (= lt!359150 (matchR!1441 r!15766 s!10566))))

(declare-fun lt!359153 () Unit!15485)

(assert (=> b!1056670 (= lt!359153 (mainMatchTheorem!704 r!15766 s!10566))))

(declare-fun b!1056671 () Bool)

(declare-fun tp!318003 () Bool)

(assert (=> b!1056671 (= e!670894 tp!318003)))

(assert (= (and start!90974 res!472483) b!1056670))

(assert (= (and b!1056670 (not res!472482)) b!1056664))

(assert (= (and b!1056664 (not res!472484)) b!1056665))

(assert (= (and b!1056665 res!472481) b!1056669))

(assert (= (and start!90974 ((_ is ElementMatch!2905) r!15766)) b!1056668))

(assert (= (and start!90974 ((_ is Concat!4738) r!15766)) b!1056667))

(assert (= (and start!90974 ((_ is Star!2905) r!15766)) b!1056671))

(assert (= (and start!90974 ((_ is Union!2905) r!15766)) b!1056666))

(assert (= (and start!90974 ((_ is Cons!10119) s!10566)) b!1056663))

(declare-fun m!1219291 () Bool)

(assert (=> b!1056669 m!1219291))

(declare-fun m!1219293 () Bool)

(assert (=> b!1056665 m!1219293))

(declare-fun m!1219295 () Bool)

(assert (=> b!1056665 m!1219295))

(declare-fun m!1219297 () Bool)

(assert (=> b!1056665 m!1219297))

(declare-fun m!1219299 () Bool)

(assert (=> start!90974 m!1219299))

(declare-fun m!1219301 () Bool)

(assert (=> b!1056664 m!1219301))

(declare-fun m!1219303 () Bool)

(assert (=> b!1056664 m!1219303))

(declare-fun m!1219305 () Bool)

(assert (=> b!1056664 m!1219305))

(declare-fun m!1219307 () Bool)

(assert (=> b!1056670 m!1219307))

(declare-fun m!1219309 () Bool)

(assert (=> b!1056670 m!1219309))

(declare-fun m!1219311 () Bool)

(assert (=> b!1056670 m!1219311))

(check-sat (not b!1056671) (not b!1056667) (not b!1056669) tp_is_empty!5453 (not b!1056665) (not b!1056666) (not b!1056670) (not start!90974) (not b!1056664) (not b!1056663))
(check-sat)
(get-model)

(declare-fun b!1056709 () Bool)

(declare-fun e!670927 () Bool)

(declare-fun e!670925 () Bool)

(assert (=> b!1056709 (= e!670927 e!670925)))

(declare-fun res!472505 () Bool)

(assert (=> b!1056709 (=> (not res!472505) (not e!670925))))

(declare-fun call!75521 () Bool)

(assert (=> b!1056709 (= res!472505 call!75521)))

(declare-fun c!176836 () Bool)

(declare-fun bm!75515 () Bool)

(declare-fun c!176835 () Bool)

(declare-fun call!75520 () Bool)

(assert (=> bm!75515 (= call!75520 (validRegex!1374 (ite c!176835 (reg!3234 lt!359155) (ite c!176836 (regTwo!6323 lt!359155) (regTwo!6322 lt!359155)))))))

(declare-fun bm!75516 () Bool)

(assert (=> bm!75516 (= call!75521 (validRegex!1374 (ite c!176836 (regOne!6323 lt!359155) (regOne!6322 lt!359155))))))

(declare-fun bm!75517 () Bool)

(declare-fun call!75522 () Bool)

(assert (=> bm!75517 (= call!75522 call!75520)))

(declare-fun b!1056710 () Bool)

(declare-fun e!670928 () Bool)

(assert (=> b!1056710 (= e!670928 call!75522)))

(declare-fun b!1056711 () Bool)

(declare-fun e!670930 () Bool)

(declare-fun e!670924 () Bool)

(assert (=> b!1056711 (= e!670930 e!670924)))

(assert (=> b!1056711 (= c!176836 ((_ is Union!2905) lt!359155))))

(declare-fun b!1056712 () Bool)

(declare-fun e!670926 () Bool)

(assert (=> b!1056712 (= e!670930 e!670926)))

(declare-fun res!472507 () Bool)

(declare-fun nullable!997 (Regex!2905) Bool)

(assert (=> b!1056712 (= res!472507 (not (nullable!997 (reg!3234 lt!359155))))))

(assert (=> b!1056712 (=> (not res!472507) (not e!670926))))

(declare-fun b!1056713 () Bool)

(declare-fun res!472506 () Bool)

(assert (=> b!1056713 (=> (not res!472506) (not e!670928))))

(assert (=> b!1056713 (= res!472506 call!75521)))

(assert (=> b!1056713 (= e!670924 e!670928)))

(declare-fun b!1056714 () Bool)

(declare-fun res!472509 () Bool)

(assert (=> b!1056714 (=> res!472509 e!670927)))

(assert (=> b!1056714 (= res!472509 (not ((_ is Concat!4738) lt!359155)))))

(assert (=> b!1056714 (= e!670924 e!670927)))

(declare-fun b!1056715 () Bool)

(assert (=> b!1056715 (= e!670926 call!75520)))

(declare-fun b!1056716 () Bool)

(assert (=> b!1056716 (= e!670925 call!75522)))

(declare-fun d!300260 () Bool)

(declare-fun res!472508 () Bool)

(declare-fun e!670929 () Bool)

(assert (=> d!300260 (=> res!472508 e!670929)))

(assert (=> d!300260 (= res!472508 ((_ is ElementMatch!2905) lt!359155))))

(assert (=> d!300260 (= (validRegex!1374 lt!359155) e!670929)))

(declare-fun b!1056708 () Bool)

(assert (=> b!1056708 (= e!670929 e!670930)))

(assert (=> b!1056708 (= c!176835 ((_ is Star!2905) lt!359155))))

(assert (= (and d!300260 (not res!472508)) b!1056708))

(assert (= (and b!1056708 c!176835) b!1056712))

(assert (= (and b!1056708 (not c!176835)) b!1056711))

(assert (= (and b!1056712 res!472507) b!1056715))

(assert (= (and b!1056711 c!176836) b!1056713))

(assert (= (and b!1056711 (not c!176836)) b!1056714))

(assert (= (and b!1056713 res!472506) b!1056710))

(assert (= (and b!1056714 (not res!472509)) b!1056709))

(assert (= (and b!1056709 res!472505) b!1056716))

(assert (= (or b!1056710 b!1056716) bm!75517))

(assert (= (or b!1056713 b!1056709) bm!75516))

(assert (= (or b!1056715 bm!75517) bm!75515))

(declare-fun m!1219313 () Bool)

(assert (=> bm!75515 m!1219313))

(declare-fun m!1219315 () Bool)

(assert (=> bm!75516 m!1219315))

(declare-fun m!1219317 () Bool)

(assert (=> b!1056712 m!1219317))

(assert (=> b!1056669 d!300260))

(declare-fun b!1056776 () Bool)

(declare-fun e!670969 () Bool)

(declare-fun e!670971 () Bool)

(assert (=> b!1056776 (= e!670969 e!670971)))

(declare-fun res!472538 () Bool)

(assert (=> b!1056776 (=> res!472538 e!670971)))

(declare-fun call!75528 () Bool)

(assert (=> b!1056776 (= res!472538 call!75528)))

(declare-fun b!1056777 () Bool)

(declare-fun res!472540 () Bool)

(declare-fun e!670968 () Bool)

(assert (=> b!1056777 (=> res!472540 e!670968)))

(declare-fun e!670970 () Bool)

(assert (=> b!1056777 (= res!472540 e!670970)))

(declare-fun res!472542 () Bool)

(assert (=> b!1056777 (=> (not res!472542) (not e!670970))))

(declare-fun lt!359158 () Bool)

(assert (=> b!1056777 (= res!472542 lt!359158)))

(declare-fun b!1056778 () Bool)

(declare-fun res!472539 () Bool)

(assert (=> b!1056778 (=> (not res!472539) (not e!670970))))

(assert (=> b!1056778 (= res!472539 (not call!75528))))

(declare-fun b!1056779 () Bool)

(declare-fun res!472537 () Bool)

(assert (=> b!1056779 (=> res!472537 e!670971)))

(declare-fun isEmpty!6537 (List!10135) Bool)

(declare-fun tail!1514 (List!10135) List!10135)

(assert (=> b!1056779 (= res!472537 (not (isEmpty!6537 (tail!1514 s!10566))))))

(declare-fun d!300264 () Bool)

(declare-fun e!670966 () Bool)

(assert (=> d!300264 e!670966))

(declare-fun c!176854 () Bool)

(assert (=> d!300264 (= c!176854 ((_ is EmptyExpr!2905) lt!359151))))

(declare-fun e!670967 () Bool)

(assert (=> d!300264 (= lt!359158 e!670967)))

(declare-fun c!176853 () Bool)

(assert (=> d!300264 (= c!176853 (isEmpty!6537 s!10566))))

(assert (=> d!300264 (validRegex!1374 lt!359151)))

(assert (=> d!300264 (= (matchR!1441 lt!359151 s!10566) lt!359158)))

(declare-fun b!1056780 () Bool)

(declare-fun head!1952 (List!10135) C!6380)

(assert (=> b!1056780 (= e!670970 (= (head!1952 s!10566) (c!176826 lt!359151)))))

(declare-fun b!1056781 () Bool)

(declare-fun res!472543 () Bool)

(assert (=> b!1056781 (=> res!472543 e!670968)))

(assert (=> b!1056781 (= res!472543 (not ((_ is ElementMatch!2905) lt!359151)))))

(declare-fun e!670972 () Bool)

(assert (=> b!1056781 (= e!670972 e!670968)))

(declare-fun bm!75523 () Bool)

(assert (=> bm!75523 (= call!75528 (isEmpty!6537 s!10566))))

(declare-fun b!1056782 () Bool)

(assert (=> b!1056782 (= e!670971 (not (= (head!1952 s!10566) (c!176826 lt!359151))))))

(declare-fun b!1056783 () Bool)

(assert (=> b!1056783 (= e!670966 e!670972)))

(declare-fun c!176855 () Bool)

(assert (=> b!1056783 (= c!176855 ((_ is EmptyLang!2905) lt!359151))))

(declare-fun b!1056784 () Bool)

(assert (=> b!1056784 (= e!670972 (not lt!359158))))

(declare-fun b!1056785 () Bool)

(declare-fun derivativeStep!797 (Regex!2905 C!6380) Regex!2905)

(assert (=> b!1056785 (= e!670967 (matchR!1441 (derivativeStep!797 lt!359151 (head!1952 s!10566)) (tail!1514 s!10566)))))

(declare-fun b!1056786 () Bool)

(assert (=> b!1056786 (= e!670966 (= lt!359158 call!75528))))

(declare-fun b!1056787 () Bool)

(assert (=> b!1056787 (= e!670968 e!670969)))

(declare-fun res!472544 () Bool)

(assert (=> b!1056787 (=> (not res!472544) (not e!670969))))

(assert (=> b!1056787 (= res!472544 (not lt!359158))))

(declare-fun b!1056788 () Bool)

(assert (=> b!1056788 (= e!670967 (nullable!997 lt!359151))))

(declare-fun b!1056789 () Bool)

(declare-fun res!472541 () Bool)

(assert (=> b!1056789 (=> (not res!472541) (not e!670970))))

(assert (=> b!1056789 (= res!472541 (isEmpty!6537 (tail!1514 s!10566)))))

(assert (= (and d!300264 c!176853) b!1056788))

(assert (= (and d!300264 (not c!176853)) b!1056785))

(assert (= (and d!300264 c!176854) b!1056786))

(assert (= (and d!300264 (not c!176854)) b!1056783))

(assert (= (and b!1056783 c!176855) b!1056784))

(assert (= (and b!1056783 (not c!176855)) b!1056781))

(assert (= (and b!1056781 (not res!472543)) b!1056777))

(assert (= (and b!1056777 res!472542) b!1056778))

(assert (= (and b!1056778 res!472539) b!1056789))

(assert (= (and b!1056789 res!472541) b!1056780))

(assert (= (and b!1056777 (not res!472540)) b!1056787))

(assert (= (and b!1056787 res!472544) b!1056776))

(assert (= (and b!1056776 (not res!472538)) b!1056779))

(assert (= (and b!1056779 (not res!472537)) b!1056782))

(assert (= (or b!1056786 b!1056776 b!1056778) bm!75523))

(declare-fun m!1219325 () Bool)

(assert (=> b!1056780 m!1219325))

(declare-fun m!1219327 () Bool)

(assert (=> b!1056779 m!1219327))

(assert (=> b!1056779 m!1219327))

(declare-fun m!1219329 () Bool)

(assert (=> b!1056779 m!1219329))

(declare-fun m!1219331 () Bool)

(assert (=> bm!75523 m!1219331))

(assert (=> b!1056789 m!1219327))

(assert (=> b!1056789 m!1219327))

(assert (=> b!1056789 m!1219329))

(assert (=> b!1056785 m!1219325))

(assert (=> b!1056785 m!1219325))

(declare-fun m!1219333 () Bool)

(assert (=> b!1056785 m!1219333))

(assert (=> b!1056785 m!1219327))

(assert (=> b!1056785 m!1219333))

(assert (=> b!1056785 m!1219327))

(declare-fun m!1219335 () Bool)

(assert (=> b!1056785 m!1219335))

(assert (=> d!300264 m!1219331))

(declare-fun m!1219337 () Bool)

(assert (=> d!300264 m!1219337))

(declare-fun m!1219339 () Bool)

(assert (=> b!1056788 m!1219339))

(assert (=> b!1056782 m!1219325))

(assert (=> b!1056664 d!300264))

(declare-fun d!300268 () Bool)

(declare-fun e!670989 () Bool)

(assert (=> d!300268 e!670989))

(declare-fun res!472547 () Bool)

(assert (=> d!300268 (=> (not res!472547) (not e!670989))))

(declare-fun lt!359161 () Regex!2905)

(assert (=> d!300268 (= res!472547 (validRegex!1374 lt!359161))))

(declare-fun e!670986 () Regex!2905)

(assert (=> d!300268 (= lt!359161 e!670986)))

(declare-fun c!176867 () Bool)

(assert (=> d!300268 (= c!176867 (and ((_ is Concat!4738) (regTwo!6323 r!15766)) ((_ is EmptyExpr!2905) (regOne!6322 (regTwo!6323 r!15766)))))))

(assert (=> d!300268 (validRegex!1374 (regTwo!6323 r!15766))))

(assert (=> d!300268 (= (removeUselessConcat!454 (regTwo!6323 r!15766)) lt!359161)))

(declare-fun bm!75534 () Bool)

(declare-fun c!176866 () Bool)

(declare-fun call!75540 () Regex!2905)

(declare-fun c!176870 () Bool)

(declare-fun c!176868 () Bool)

(assert (=> bm!75534 (= call!75540 (removeUselessConcat!454 (ite c!176867 (regTwo!6322 (regTwo!6323 r!15766)) (ite (or c!176868 c!176870) (regOne!6322 (regTwo!6323 r!15766)) (ite c!176866 (regTwo!6323 (regTwo!6323 r!15766)) (reg!3234 (regTwo!6323 r!15766)))))))))

(declare-fun b!1056812 () Bool)

(declare-fun c!176869 () Bool)

(assert (=> b!1056812 (= c!176869 ((_ is Star!2905) (regTwo!6323 r!15766)))))

(declare-fun e!670988 () Regex!2905)

(declare-fun e!670987 () Regex!2905)

(assert (=> b!1056812 (= e!670988 e!670987)))

(declare-fun b!1056813 () Bool)

(assert (=> b!1056813 (= c!176870 ((_ is Concat!4738) (regTwo!6323 r!15766)))))

(declare-fun e!670990 () Regex!2905)

(declare-fun e!670985 () Regex!2905)

(assert (=> b!1056813 (= e!670990 e!670985)))

(declare-fun b!1056814 () Bool)

(assert (=> b!1056814 (= e!670987 (regTwo!6323 r!15766))))

(declare-fun b!1056815 () Bool)

(assert (=> b!1056815 (= e!670986 call!75540)))

(declare-fun b!1056816 () Bool)

(declare-fun call!75541 () Regex!2905)

(declare-fun call!75543 () Regex!2905)

(assert (=> b!1056816 (= e!670988 (Union!2905 call!75541 call!75543))))

(declare-fun b!1056817 () Bool)

(declare-fun call!75542 () Regex!2905)

(assert (=> b!1056817 (= e!670990 call!75542)))

(declare-fun b!1056818 () Bool)

(assert (=> b!1056818 (= e!670986 e!670990)))

(assert (=> b!1056818 (= c!176868 (and ((_ is Concat!4738) (regTwo!6323 r!15766)) ((_ is EmptyExpr!2905) (regTwo!6322 (regTwo!6323 r!15766)))))))

(declare-fun bm!75535 () Bool)

(declare-fun call!75539 () Regex!2905)

(assert (=> bm!75535 (= call!75539 call!75542)))

(declare-fun bm!75536 () Bool)

(assert (=> bm!75536 (= call!75542 call!75540)))

(declare-fun bm!75537 () Bool)

(assert (=> bm!75537 (= call!75543 call!75539)))

(declare-fun b!1056819 () Bool)

(assert (=> b!1056819 (= e!670989 (= (nullable!997 lt!359161) (nullable!997 (regTwo!6323 r!15766))))))

(declare-fun bm!75538 () Bool)

(assert (=> bm!75538 (= call!75541 (removeUselessConcat!454 (ite c!176870 (regTwo!6322 (regTwo!6323 r!15766)) (regOne!6323 (regTwo!6323 r!15766)))))))

(declare-fun b!1056820 () Bool)

(assert (=> b!1056820 (= e!670985 e!670988)))

(assert (=> b!1056820 (= c!176866 ((_ is Union!2905) (regTwo!6323 r!15766)))))

(declare-fun b!1056821 () Bool)

(assert (=> b!1056821 (= e!670985 (Concat!4738 call!75539 call!75541))))

(declare-fun b!1056822 () Bool)

(assert (=> b!1056822 (= e!670987 (Star!2905 call!75543))))

(assert (= (and d!300268 c!176867) b!1056815))

(assert (= (and d!300268 (not c!176867)) b!1056818))

(assert (= (and b!1056818 c!176868) b!1056817))

(assert (= (and b!1056818 (not c!176868)) b!1056813))

(assert (= (and b!1056813 c!176870) b!1056821))

(assert (= (and b!1056813 (not c!176870)) b!1056820))

(assert (= (and b!1056820 c!176866) b!1056816))

(assert (= (and b!1056820 (not c!176866)) b!1056812))

(assert (= (and b!1056812 c!176869) b!1056822))

(assert (= (and b!1056812 (not c!176869)) b!1056814))

(assert (= (or b!1056816 b!1056822) bm!75537))

(assert (= (or b!1056821 b!1056816) bm!75538))

(assert (= (or b!1056821 bm!75537) bm!75535))

(assert (= (or b!1056817 bm!75535) bm!75536))

(assert (= (or b!1056815 bm!75536) bm!75534))

(assert (= (and d!300268 res!472547) b!1056819))

(declare-fun m!1219341 () Bool)

(assert (=> d!300268 m!1219341))

(declare-fun m!1219343 () Bool)

(assert (=> d!300268 m!1219343))

(declare-fun m!1219345 () Bool)

(assert (=> bm!75534 m!1219345))

(declare-fun m!1219347 () Bool)

(assert (=> b!1056819 m!1219347))

(declare-fun m!1219349 () Bool)

(assert (=> b!1056819 m!1219349))

(declare-fun m!1219351 () Bool)

(assert (=> bm!75538 m!1219351))

(assert (=> b!1056664 d!300268))

(declare-fun d!300270 () Bool)

(declare-fun e!670995 () Bool)

(assert (=> d!300270 e!670995))

(declare-fun res!472548 () Bool)

(assert (=> d!300270 (=> (not res!472548) (not e!670995))))

(declare-fun lt!359162 () Regex!2905)

(assert (=> d!300270 (= res!472548 (validRegex!1374 lt!359162))))

(declare-fun e!670992 () Regex!2905)

(assert (=> d!300270 (= lt!359162 e!670992)))

(declare-fun c!176872 () Bool)

(assert (=> d!300270 (= c!176872 (and ((_ is Concat!4738) (regOne!6323 r!15766)) ((_ is EmptyExpr!2905) (regOne!6322 (regOne!6323 r!15766)))))))

(assert (=> d!300270 (validRegex!1374 (regOne!6323 r!15766))))

(assert (=> d!300270 (= (removeUselessConcat!454 (regOne!6323 r!15766)) lt!359162)))

(declare-fun bm!75539 () Bool)

(declare-fun c!176871 () Bool)

(declare-fun c!176873 () Bool)

(declare-fun call!75545 () Regex!2905)

(declare-fun c!176875 () Bool)

(assert (=> bm!75539 (= call!75545 (removeUselessConcat!454 (ite c!176872 (regTwo!6322 (regOne!6323 r!15766)) (ite (or c!176873 c!176875) (regOne!6322 (regOne!6323 r!15766)) (ite c!176871 (regTwo!6323 (regOne!6323 r!15766)) (reg!3234 (regOne!6323 r!15766)))))))))

(declare-fun b!1056823 () Bool)

(declare-fun c!176874 () Bool)

(assert (=> b!1056823 (= c!176874 ((_ is Star!2905) (regOne!6323 r!15766)))))

(declare-fun e!670994 () Regex!2905)

(declare-fun e!670993 () Regex!2905)

(assert (=> b!1056823 (= e!670994 e!670993)))

(declare-fun b!1056824 () Bool)

(assert (=> b!1056824 (= c!176875 ((_ is Concat!4738) (regOne!6323 r!15766)))))

(declare-fun e!670996 () Regex!2905)

(declare-fun e!670991 () Regex!2905)

(assert (=> b!1056824 (= e!670996 e!670991)))

(declare-fun b!1056825 () Bool)

(assert (=> b!1056825 (= e!670993 (regOne!6323 r!15766))))

(declare-fun b!1056826 () Bool)

(assert (=> b!1056826 (= e!670992 call!75545)))

(declare-fun b!1056827 () Bool)

(declare-fun call!75546 () Regex!2905)

(declare-fun call!75548 () Regex!2905)

(assert (=> b!1056827 (= e!670994 (Union!2905 call!75546 call!75548))))

(declare-fun b!1056828 () Bool)

(declare-fun call!75547 () Regex!2905)

(assert (=> b!1056828 (= e!670996 call!75547)))

(declare-fun b!1056829 () Bool)

(assert (=> b!1056829 (= e!670992 e!670996)))

(assert (=> b!1056829 (= c!176873 (and ((_ is Concat!4738) (regOne!6323 r!15766)) ((_ is EmptyExpr!2905) (regTwo!6322 (regOne!6323 r!15766)))))))

(declare-fun bm!75540 () Bool)

(declare-fun call!75544 () Regex!2905)

(assert (=> bm!75540 (= call!75544 call!75547)))

(declare-fun bm!75541 () Bool)

(assert (=> bm!75541 (= call!75547 call!75545)))

(declare-fun bm!75542 () Bool)

(assert (=> bm!75542 (= call!75548 call!75544)))

(declare-fun b!1056830 () Bool)

(assert (=> b!1056830 (= e!670995 (= (nullable!997 lt!359162) (nullable!997 (regOne!6323 r!15766))))))

(declare-fun bm!75543 () Bool)

(assert (=> bm!75543 (= call!75546 (removeUselessConcat!454 (ite c!176875 (regTwo!6322 (regOne!6323 r!15766)) (regOne!6323 (regOne!6323 r!15766)))))))

(declare-fun b!1056831 () Bool)

(assert (=> b!1056831 (= e!670991 e!670994)))

(assert (=> b!1056831 (= c!176871 ((_ is Union!2905) (regOne!6323 r!15766)))))

(declare-fun b!1056832 () Bool)

(assert (=> b!1056832 (= e!670991 (Concat!4738 call!75544 call!75546))))

(declare-fun b!1056833 () Bool)

(assert (=> b!1056833 (= e!670993 (Star!2905 call!75548))))

(assert (= (and d!300270 c!176872) b!1056826))

(assert (= (and d!300270 (not c!176872)) b!1056829))

(assert (= (and b!1056829 c!176873) b!1056828))

(assert (= (and b!1056829 (not c!176873)) b!1056824))

(assert (= (and b!1056824 c!176875) b!1056832))

(assert (= (and b!1056824 (not c!176875)) b!1056831))

(assert (= (and b!1056831 c!176871) b!1056827))

(assert (= (and b!1056831 (not c!176871)) b!1056823))

(assert (= (and b!1056823 c!176874) b!1056833))

(assert (= (and b!1056823 (not c!176874)) b!1056825))

(assert (= (or b!1056827 b!1056833) bm!75542))

(assert (= (or b!1056832 b!1056827) bm!75543))

(assert (= (or b!1056832 bm!75542) bm!75540))

(assert (= (or b!1056828 bm!75540) bm!75541))

(assert (= (or b!1056826 bm!75541) bm!75539))

(assert (= (and d!300270 res!472548) b!1056830))

(declare-fun m!1219353 () Bool)

(assert (=> d!300270 m!1219353))

(declare-fun m!1219355 () Bool)

(assert (=> d!300270 m!1219355))

(declare-fun m!1219357 () Bool)

(assert (=> bm!75539 m!1219357))

(declare-fun m!1219359 () Bool)

(assert (=> b!1056830 m!1219359))

(declare-fun m!1219361 () Bool)

(assert (=> b!1056830 m!1219361))

(declare-fun m!1219363 () Bool)

(assert (=> bm!75543 m!1219363))

(assert (=> b!1056664 d!300270))

(declare-fun b!1056835 () Bool)

(declare-fun e!671000 () Bool)

(declare-fun e!670998 () Bool)

(assert (=> b!1056835 (= e!671000 e!670998)))

(declare-fun res!472549 () Bool)

(assert (=> b!1056835 (=> (not res!472549) (not e!670998))))

(declare-fun call!75550 () Bool)

(assert (=> b!1056835 (= res!472549 call!75550)))

(declare-fun c!176876 () Bool)

(declare-fun bm!75544 () Bool)

(declare-fun c!176877 () Bool)

(declare-fun call!75549 () Bool)

(assert (=> bm!75544 (= call!75549 (validRegex!1374 (ite c!176876 (reg!3234 lt!359152) (ite c!176877 (regTwo!6323 lt!359152) (regTwo!6322 lt!359152)))))))

(declare-fun bm!75545 () Bool)

(assert (=> bm!75545 (= call!75550 (validRegex!1374 (ite c!176877 (regOne!6323 lt!359152) (regOne!6322 lt!359152))))))

(declare-fun bm!75546 () Bool)

(declare-fun call!75551 () Bool)

(assert (=> bm!75546 (= call!75551 call!75549)))

(declare-fun b!1056836 () Bool)

(declare-fun e!671001 () Bool)

(assert (=> b!1056836 (= e!671001 call!75551)))

(declare-fun b!1056837 () Bool)

(declare-fun e!671003 () Bool)

(declare-fun e!670997 () Bool)

(assert (=> b!1056837 (= e!671003 e!670997)))

(assert (=> b!1056837 (= c!176877 ((_ is Union!2905) lt!359152))))

(declare-fun b!1056838 () Bool)

(declare-fun e!670999 () Bool)

(assert (=> b!1056838 (= e!671003 e!670999)))

(declare-fun res!472551 () Bool)

(assert (=> b!1056838 (= res!472551 (not (nullable!997 (reg!3234 lt!359152))))))

(assert (=> b!1056838 (=> (not res!472551) (not e!670999))))

(declare-fun b!1056839 () Bool)

(declare-fun res!472550 () Bool)

(assert (=> b!1056839 (=> (not res!472550) (not e!671001))))

(assert (=> b!1056839 (= res!472550 call!75550)))

(assert (=> b!1056839 (= e!670997 e!671001)))

(declare-fun b!1056840 () Bool)

(declare-fun res!472553 () Bool)

(assert (=> b!1056840 (=> res!472553 e!671000)))

(assert (=> b!1056840 (= res!472553 (not ((_ is Concat!4738) lt!359152)))))

(assert (=> b!1056840 (= e!670997 e!671000)))

(declare-fun b!1056841 () Bool)

(assert (=> b!1056841 (= e!670999 call!75549)))

(declare-fun b!1056842 () Bool)

(assert (=> b!1056842 (= e!670998 call!75551)))

(declare-fun d!300272 () Bool)

(declare-fun res!472552 () Bool)

(declare-fun e!671002 () Bool)

(assert (=> d!300272 (=> res!472552 e!671002)))

(assert (=> d!300272 (= res!472552 ((_ is ElementMatch!2905) lt!359152))))

(assert (=> d!300272 (= (validRegex!1374 lt!359152) e!671002)))

(declare-fun b!1056834 () Bool)

(assert (=> b!1056834 (= e!671002 e!671003)))

(assert (=> b!1056834 (= c!176876 ((_ is Star!2905) lt!359152))))

(assert (= (and d!300272 (not res!472552)) b!1056834))

(assert (= (and b!1056834 c!176876) b!1056838))

(assert (= (and b!1056834 (not c!176876)) b!1056837))

(assert (= (and b!1056838 res!472551) b!1056841))

(assert (= (and b!1056837 c!176877) b!1056839))

(assert (= (and b!1056837 (not c!176877)) b!1056840))

(assert (= (and b!1056839 res!472550) b!1056836))

(assert (= (and b!1056840 (not res!472553)) b!1056835))

(assert (= (and b!1056835 res!472549) b!1056842))

(assert (= (or b!1056836 b!1056842) bm!75546))

(assert (= (or b!1056839 b!1056835) bm!75545))

(assert (= (or b!1056841 bm!75546) bm!75544))

(declare-fun m!1219365 () Bool)

(assert (=> bm!75544 m!1219365))

(declare-fun m!1219367 () Bool)

(assert (=> bm!75545 m!1219367))

(declare-fun m!1219369 () Bool)

(assert (=> b!1056838 m!1219369))

(assert (=> b!1056665 d!300272))

(declare-fun b!1057072 () Bool)

(assert (=> b!1057072 true))

(assert (=> b!1057072 true))

(declare-fun bs!251716 () Bool)

(declare-fun b!1057066 () Bool)

(assert (= bs!251716 (and b!1057066 b!1057072)))

(declare-fun lambda!38234 () Int)

(declare-fun lambda!38233 () Int)

(assert (=> bs!251716 (not (= lambda!38234 lambda!38233))))

(assert (=> b!1057066 true))

(assert (=> b!1057066 true))

(declare-fun b!1057064 () Bool)

(declare-fun c!176932 () Bool)

(assert (=> b!1057064 (= c!176932 ((_ is Union!2905) lt!359151))))

(declare-fun e!671118 () Bool)

(declare-fun e!671116 () Bool)

(assert (=> b!1057064 (= e!671118 e!671116)))

(declare-fun d!300274 () Bool)

(declare-fun c!176930 () Bool)

(assert (=> d!300274 (= c!176930 ((_ is EmptyExpr!2905) lt!359151))))

(declare-fun e!671122 () Bool)

(assert (=> d!300274 (= (matchRSpec!704 lt!359151 s!10566) e!671122)))

(declare-fun bm!75589 () Bool)

(declare-fun call!75594 () Bool)

(assert (=> bm!75589 (= call!75594 (isEmpty!6537 s!10566))))

(declare-fun b!1057065 () Bool)

(assert (=> b!1057065 (= e!671118 (= s!10566 (Cons!10119 (c!176826 lt!359151) Nil!10119)))))

(declare-fun e!671119 () Bool)

(declare-fun call!75595 () Bool)

(assert (=> b!1057066 (= e!671119 call!75595)))

(declare-fun bm!75590 () Bool)

(declare-fun c!176933 () Bool)

(declare-fun Exists!632 (Int) Bool)

(assert (=> bm!75590 (= call!75595 (Exists!632 (ite c!176933 lambda!38233 lambda!38234)))))

(declare-fun b!1057067 () Bool)

(declare-fun e!671121 () Bool)

(assert (=> b!1057067 (= e!671121 (matchRSpec!704 (regTwo!6323 lt!359151) s!10566))))

(declare-fun b!1057068 () Bool)

(declare-fun e!671120 () Bool)

(assert (=> b!1057068 (= e!671122 e!671120)))

(declare-fun res!472632 () Bool)

(assert (=> b!1057068 (= res!472632 (not ((_ is EmptyLang!2905) lt!359151)))))

(assert (=> b!1057068 (=> (not res!472632) (not e!671120))))

(declare-fun b!1057069 () Bool)

(assert (=> b!1057069 (= e!671116 e!671119)))

(assert (=> b!1057069 (= c!176933 ((_ is Star!2905) lt!359151))))

(declare-fun b!1057070 () Bool)

(assert (=> b!1057070 (= e!671122 call!75594)))

(declare-fun b!1057071 () Bool)

(declare-fun c!176931 () Bool)

(assert (=> b!1057071 (= c!176931 ((_ is ElementMatch!2905) lt!359151))))

(assert (=> b!1057071 (= e!671120 e!671118)))

(declare-fun e!671117 () Bool)

(assert (=> b!1057072 (= e!671117 call!75595)))

(declare-fun b!1057073 () Bool)

(assert (=> b!1057073 (= e!671116 e!671121)))

(declare-fun res!472633 () Bool)

(assert (=> b!1057073 (= res!472633 (matchRSpec!704 (regOne!6323 lt!359151) s!10566))))

(assert (=> b!1057073 (=> res!472633 e!671121)))

(declare-fun b!1057074 () Bool)

(declare-fun res!472634 () Bool)

(assert (=> b!1057074 (=> res!472634 e!671117)))

(assert (=> b!1057074 (= res!472634 call!75594)))

(assert (=> b!1057074 (= e!671119 e!671117)))

(assert (= (and d!300274 c!176930) b!1057070))

(assert (= (and d!300274 (not c!176930)) b!1057068))

(assert (= (and b!1057068 res!472632) b!1057071))

(assert (= (and b!1057071 c!176931) b!1057065))

(assert (= (and b!1057071 (not c!176931)) b!1057064))

(assert (= (and b!1057064 c!176932) b!1057073))

(assert (= (and b!1057064 (not c!176932)) b!1057069))

(assert (= (and b!1057073 (not res!472633)) b!1057067))

(assert (= (and b!1057069 c!176933) b!1057074))

(assert (= (and b!1057069 (not c!176933)) b!1057066))

(assert (= (and b!1057074 (not res!472634)) b!1057072))

(assert (= (or b!1057072 b!1057066) bm!75590))

(assert (= (or b!1057070 b!1057074) bm!75589))

(assert (=> bm!75589 m!1219331))

(declare-fun m!1219445 () Bool)

(assert (=> bm!75590 m!1219445))

(declare-fun m!1219447 () Bool)

(assert (=> b!1057067 m!1219447))

(declare-fun m!1219449 () Bool)

(assert (=> b!1057073 m!1219449))

(assert (=> b!1056665 d!300274))

(declare-fun d!300294 () Bool)

(assert (=> d!300294 (= (matchR!1441 lt!359151 s!10566) (matchRSpec!704 lt!359151 s!10566))))

(declare-fun lt!359177 () Unit!15485)

(declare-fun choose!6729 (Regex!2905 List!10135) Unit!15485)

(assert (=> d!300294 (= lt!359177 (choose!6729 lt!359151 s!10566))))

(assert (=> d!300294 (validRegex!1374 lt!359151)))

(assert (=> d!300294 (= (mainMatchTheorem!704 lt!359151 s!10566) lt!359177)))

(declare-fun bs!251717 () Bool)

(assert (= bs!251717 d!300294))

(assert (=> bs!251717 m!1219301))

(assert (=> bs!251717 m!1219295))

(declare-fun m!1219451 () Bool)

(assert (=> bs!251717 m!1219451))

(assert (=> bs!251717 m!1219337))

(assert (=> b!1056665 d!300294))

(declare-fun bs!251718 () Bool)

(declare-fun b!1057087 () Bool)

(assert (= bs!251718 (and b!1057087 b!1057072)))

(declare-fun lambda!38235 () Int)

(assert (=> bs!251718 (= (and (= (reg!3234 r!15766) (reg!3234 lt!359151)) (= r!15766 lt!359151)) (= lambda!38235 lambda!38233))))

(declare-fun bs!251719 () Bool)

(assert (= bs!251719 (and b!1057087 b!1057066)))

(assert (=> bs!251719 (not (= lambda!38235 lambda!38234))))

(assert (=> b!1057087 true))

(assert (=> b!1057087 true))

(declare-fun bs!251720 () Bool)

(declare-fun b!1057081 () Bool)

(assert (= bs!251720 (and b!1057081 b!1057072)))

(declare-fun lambda!38236 () Int)

(assert (=> bs!251720 (not (= lambda!38236 lambda!38233))))

(declare-fun bs!251721 () Bool)

(assert (= bs!251721 (and b!1057081 b!1057066)))

(assert (=> bs!251721 (= (and (= (regOne!6322 r!15766) (regOne!6322 lt!359151)) (= (regTwo!6322 r!15766) (regTwo!6322 lt!359151))) (= lambda!38236 lambda!38234))))

(declare-fun bs!251722 () Bool)

(assert (= bs!251722 (and b!1057081 b!1057087)))

(assert (=> bs!251722 (not (= lambda!38236 lambda!38235))))

(assert (=> b!1057081 true))

(assert (=> b!1057081 true))

(declare-fun b!1057079 () Bool)

(declare-fun c!176936 () Bool)

(assert (=> b!1057079 (= c!176936 ((_ is Union!2905) r!15766))))

(declare-fun e!671125 () Bool)

(declare-fun e!671123 () Bool)

(assert (=> b!1057079 (= e!671125 e!671123)))

(declare-fun d!300296 () Bool)

(declare-fun c!176934 () Bool)

(assert (=> d!300296 (= c!176934 ((_ is EmptyExpr!2905) r!15766))))

(declare-fun e!671129 () Bool)

(assert (=> d!300296 (= (matchRSpec!704 r!15766 s!10566) e!671129)))

(declare-fun bm!75591 () Bool)

(declare-fun call!75596 () Bool)

(assert (=> bm!75591 (= call!75596 (isEmpty!6537 s!10566))))

(declare-fun b!1057080 () Bool)

(assert (=> b!1057080 (= e!671125 (= s!10566 (Cons!10119 (c!176826 r!15766) Nil!10119)))))

(declare-fun e!671126 () Bool)

(declare-fun call!75597 () Bool)

(assert (=> b!1057081 (= e!671126 call!75597)))

(declare-fun bm!75592 () Bool)

(declare-fun c!176937 () Bool)

(assert (=> bm!75592 (= call!75597 (Exists!632 (ite c!176937 lambda!38235 lambda!38236)))))

(declare-fun b!1057082 () Bool)

(declare-fun e!671128 () Bool)

(assert (=> b!1057082 (= e!671128 (matchRSpec!704 (regTwo!6323 r!15766) s!10566))))

(declare-fun b!1057083 () Bool)

(declare-fun e!671127 () Bool)

(assert (=> b!1057083 (= e!671129 e!671127)))

(declare-fun res!472635 () Bool)

(assert (=> b!1057083 (= res!472635 (not ((_ is EmptyLang!2905) r!15766)))))

(assert (=> b!1057083 (=> (not res!472635) (not e!671127))))

(declare-fun b!1057084 () Bool)

(assert (=> b!1057084 (= e!671123 e!671126)))

(assert (=> b!1057084 (= c!176937 ((_ is Star!2905) r!15766))))

(declare-fun b!1057085 () Bool)

(assert (=> b!1057085 (= e!671129 call!75596)))

(declare-fun b!1057086 () Bool)

(declare-fun c!176935 () Bool)

(assert (=> b!1057086 (= c!176935 ((_ is ElementMatch!2905) r!15766))))

(assert (=> b!1057086 (= e!671127 e!671125)))

(declare-fun e!671124 () Bool)

(assert (=> b!1057087 (= e!671124 call!75597)))

(declare-fun b!1057088 () Bool)

(assert (=> b!1057088 (= e!671123 e!671128)))

(declare-fun res!472636 () Bool)

(assert (=> b!1057088 (= res!472636 (matchRSpec!704 (regOne!6323 r!15766) s!10566))))

(assert (=> b!1057088 (=> res!472636 e!671128)))

(declare-fun b!1057089 () Bool)

(declare-fun res!472637 () Bool)

(assert (=> b!1057089 (=> res!472637 e!671124)))

(assert (=> b!1057089 (= res!472637 call!75596)))

(assert (=> b!1057089 (= e!671126 e!671124)))

(assert (= (and d!300296 c!176934) b!1057085))

(assert (= (and d!300296 (not c!176934)) b!1057083))

(assert (= (and b!1057083 res!472635) b!1057086))

(assert (= (and b!1057086 c!176935) b!1057080))

(assert (= (and b!1057086 (not c!176935)) b!1057079))

(assert (= (and b!1057079 c!176936) b!1057088))

(assert (= (and b!1057079 (not c!176936)) b!1057084))

(assert (= (and b!1057088 (not res!472636)) b!1057082))

(assert (= (and b!1057084 c!176937) b!1057089))

(assert (= (and b!1057084 (not c!176937)) b!1057081))

(assert (= (and b!1057089 (not res!472637)) b!1057087))

(assert (= (or b!1057087 b!1057081) bm!75592))

(assert (= (or b!1057085 b!1057089) bm!75591))

(assert (=> bm!75591 m!1219331))

(declare-fun m!1219453 () Bool)

(assert (=> bm!75592 m!1219453))

(declare-fun m!1219455 () Bool)

(assert (=> b!1057082 m!1219455))

(declare-fun m!1219457 () Bool)

(assert (=> b!1057088 m!1219457))

(assert (=> b!1056670 d!300296))

(declare-fun b!1057090 () Bool)

(declare-fun e!671133 () Bool)

(declare-fun e!671135 () Bool)

(assert (=> b!1057090 (= e!671133 e!671135)))

(declare-fun res!472639 () Bool)

(assert (=> b!1057090 (=> res!472639 e!671135)))

(declare-fun call!75598 () Bool)

(assert (=> b!1057090 (= res!472639 call!75598)))

(declare-fun b!1057091 () Bool)

(declare-fun res!472641 () Bool)

(declare-fun e!671132 () Bool)

(assert (=> b!1057091 (=> res!472641 e!671132)))

(declare-fun e!671134 () Bool)

(assert (=> b!1057091 (= res!472641 e!671134)))

(declare-fun res!472643 () Bool)

(assert (=> b!1057091 (=> (not res!472643) (not e!671134))))

(declare-fun lt!359178 () Bool)

(assert (=> b!1057091 (= res!472643 lt!359178)))

(declare-fun b!1057092 () Bool)

(declare-fun res!472640 () Bool)

(assert (=> b!1057092 (=> (not res!472640) (not e!671134))))

(assert (=> b!1057092 (= res!472640 (not call!75598))))

(declare-fun b!1057093 () Bool)

(declare-fun res!472638 () Bool)

(assert (=> b!1057093 (=> res!472638 e!671135)))

(assert (=> b!1057093 (= res!472638 (not (isEmpty!6537 (tail!1514 s!10566))))))

(declare-fun d!300298 () Bool)

(declare-fun e!671130 () Bool)

(assert (=> d!300298 e!671130))

(declare-fun c!176939 () Bool)

(assert (=> d!300298 (= c!176939 ((_ is EmptyExpr!2905) r!15766))))

(declare-fun e!671131 () Bool)

(assert (=> d!300298 (= lt!359178 e!671131)))

(declare-fun c!176938 () Bool)

(assert (=> d!300298 (= c!176938 (isEmpty!6537 s!10566))))

(assert (=> d!300298 (validRegex!1374 r!15766)))

(assert (=> d!300298 (= (matchR!1441 r!15766 s!10566) lt!359178)))

(declare-fun b!1057094 () Bool)

(assert (=> b!1057094 (= e!671134 (= (head!1952 s!10566) (c!176826 r!15766)))))

(declare-fun b!1057095 () Bool)

(declare-fun res!472644 () Bool)

(assert (=> b!1057095 (=> res!472644 e!671132)))

(assert (=> b!1057095 (= res!472644 (not ((_ is ElementMatch!2905) r!15766)))))

(declare-fun e!671136 () Bool)

(assert (=> b!1057095 (= e!671136 e!671132)))

(declare-fun bm!75593 () Bool)

(assert (=> bm!75593 (= call!75598 (isEmpty!6537 s!10566))))

(declare-fun b!1057096 () Bool)

(assert (=> b!1057096 (= e!671135 (not (= (head!1952 s!10566) (c!176826 r!15766))))))

(declare-fun b!1057097 () Bool)

(assert (=> b!1057097 (= e!671130 e!671136)))

(declare-fun c!176940 () Bool)

(assert (=> b!1057097 (= c!176940 ((_ is EmptyLang!2905) r!15766))))

(declare-fun b!1057098 () Bool)

(assert (=> b!1057098 (= e!671136 (not lt!359178))))

(declare-fun b!1057099 () Bool)

(assert (=> b!1057099 (= e!671131 (matchR!1441 (derivativeStep!797 r!15766 (head!1952 s!10566)) (tail!1514 s!10566)))))

(declare-fun b!1057100 () Bool)

(assert (=> b!1057100 (= e!671130 (= lt!359178 call!75598))))

(declare-fun b!1057101 () Bool)

(assert (=> b!1057101 (= e!671132 e!671133)))

(declare-fun res!472645 () Bool)

(assert (=> b!1057101 (=> (not res!472645) (not e!671133))))

(assert (=> b!1057101 (= res!472645 (not lt!359178))))

(declare-fun b!1057102 () Bool)

(assert (=> b!1057102 (= e!671131 (nullable!997 r!15766))))

(declare-fun b!1057103 () Bool)

(declare-fun res!472642 () Bool)

(assert (=> b!1057103 (=> (not res!472642) (not e!671134))))

(assert (=> b!1057103 (= res!472642 (isEmpty!6537 (tail!1514 s!10566)))))

(assert (= (and d!300298 c!176938) b!1057102))

(assert (= (and d!300298 (not c!176938)) b!1057099))

(assert (= (and d!300298 c!176939) b!1057100))

(assert (= (and d!300298 (not c!176939)) b!1057097))

(assert (= (and b!1057097 c!176940) b!1057098))

(assert (= (and b!1057097 (not c!176940)) b!1057095))

(assert (= (and b!1057095 (not res!472644)) b!1057091))

(assert (= (and b!1057091 res!472643) b!1057092))

(assert (= (and b!1057092 res!472640) b!1057103))

(assert (= (and b!1057103 res!472642) b!1057094))

(assert (= (and b!1057091 (not res!472641)) b!1057101))

(assert (= (and b!1057101 res!472645) b!1057090))

(assert (= (and b!1057090 (not res!472639)) b!1057093))

(assert (= (and b!1057093 (not res!472638)) b!1057096))

(assert (= (or b!1057100 b!1057090 b!1057092) bm!75593))

(assert (=> b!1057094 m!1219325))

(assert (=> b!1057093 m!1219327))

(assert (=> b!1057093 m!1219327))

(assert (=> b!1057093 m!1219329))

(assert (=> bm!75593 m!1219331))

(assert (=> b!1057103 m!1219327))

(assert (=> b!1057103 m!1219327))

(assert (=> b!1057103 m!1219329))

(assert (=> b!1057099 m!1219325))

(assert (=> b!1057099 m!1219325))

(declare-fun m!1219459 () Bool)

(assert (=> b!1057099 m!1219459))

(assert (=> b!1057099 m!1219327))

(assert (=> b!1057099 m!1219459))

(assert (=> b!1057099 m!1219327))

(declare-fun m!1219461 () Bool)

(assert (=> b!1057099 m!1219461))

(assert (=> d!300298 m!1219331))

(assert (=> d!300298 m!1219299))

(declare-fun m!1219463 () Bool)

(assert (=> b!1057102 m!1219463))

(assert (=> b!1057096 m!1219325))

(assert (=> b!1056670 d!300298))

(declare-fun d!300300 () Bool)

(assert (=> d!300300 (= (matchR!1441 r!15766 s!10566) (matchRSpec!704 r!15766 s!10566))))

(declare-fun lt!359179 () Unit!15485)

(assert (=> d!300300 (= lt!359179 (choose!6729 r!15766 s!10566))))

(assert (=> d!300300 (validRegex!1374 r!15766)))

(assert (=> d!300300 (= (mainMatchTheorem!704 r!15766 s!10566) lt!359179)))

(declare-fun bs!251723 () Bool)

(assert (= bs!251723 d!300300))

(assert (=> bs!251723 m!1219309))

(assert (=> bs!251723 m!1219307))

(declare-fun m!1219465 () Bool)

(assert (=> bs!251723 m!1219465))

(assert (=> bs!251723 m!1219299))

(assert (=> b!1056670 d!300300))

(declare-fun b!1057105 () Bool)

(declare-fun e!671140 () Bool)

(declare-fun e!671138 () Bool)

(assert (=> b!1057105 (= e!671140 e!671138)))

(declare-fun res!472646 () Bool)

(assert (=> b!1057105 (=> (not res!472646) (not e!671138))))

(declare-fun call!75600 () Bool)

(assert (=> b!1057105 (= res!472646 call!75600)))

(declare-fun c!176942 () Bool)

(declare-fun c!176941 () Bool)

(declare-fun bm!75594 () Bool)

(declare-fun call!75599 () Bool)

(assert (=> bm!75594 (= call!75599 (validRegex!1374 (ite c!176941 (reg!3234 r!15766) (ite c!176942 (regTwo!6323 r!15766) (regTwo!6322 r!15766)))))))

(declare-fun bm!75595 () Bool)

(assert (=> bm!75595 (= call!75600 (validRegex!1374 (ite c!176942 (regOne!6323 r!15766) (regOne!6322 r!15766))))))

(declare-fun bm!75596 () Bool)

(declare-fun call!75601 () Bool)

(assert (=> bm!75596 (= call!75601 call!75599)))

(declare-fun b!1057106 () Bool)

(declare-fun e!671141 () Bool)

(assert (=> b!1057106 (= e!671141 call!75601)))

(declare-fun b!1057107 () Bool)

(declare-fun e!671143 () Bool)

(declare-fun e!671137 () Bool)

(assert (=> b!1057107 (= e!671143 e!671137)))

(assert (=> b!1057107 (= c!176942 ((_ is Union!2905) r!15766))))

(declare-fun b!1057108 () Bool)

(declare-fun e!671139 () Bool)

(assert (=> b!1057108 (= e!671143 e!671139)))

(declare-fun res!472648 () Bool)

(assert (=> b!1057108 (= res!472648 (not (nullable!997 (reg!3234 r!15766))))))

(assert (=> b!1057108 (=> (not res!472648) (not e!671139))))

(declare-fun b!1057109 () Bool)

(declare-fun res!472647 () Bool)

(assert (=> b!1057109 (=> (not res!472647) (not e!671141))))

(assert (=> b!1057109 (= res!472647 call!75600)))

(assert (=> b!1057109 (= e!671137 e!671141)))

(declare-fun b!1057110 () Bool)

(declare-fun res!472650 () Bool)

(assert (=> b!1057110 (=> res!472650 e!671140)))

(assert (=> b!1057110 (= res!472650 (not ((_ is Concat!4738) r!15766)))))

(assert (=> b!1057110 (= e!671137 e!671140)))

(declare-fun b!1057111 () Bool)

(assert (=> b!1057111 (= e!671139 call!75599)))

(declare-fun b!1057112 () Bool)

(assert (=> b!1057112 (= e!671138 call!75601)))

(declare-fun d!300302 () Bool)

(declare-fun res!472649 () Bool)

(declare-fun e!671142 () Bool)

(assert (=> d!300302 (=> res!472649 e!671142)))

(assert (=> d!300302 (= res!472649 ((_ is ElementMatch!2905) r!15766))))

(assert (=> d!300302 (= (validRegex!1374 r!15766) e!671142)))

(declare-fun b!1057104 () Bool)

(assert (=> b!1057104 (= e!671142 e!671143)))

(assert (=> b!1057104 (= c!176941 ((_ is Star!2905) r!15766))))

(assert (= (and d!300302 (not res!472649)) b!1057104))

(assert (= (and b!1057104 c!176941) b!1057108))

(assert (= (and b!1057104 (not c!176941)) b!1057107))

(assert (= (and b!1057108 res!472648) b!1057111))

(assert (= (and b!1057107 c!176942) b!1057109))

(assert (= (and b!1057107 (not c!176942)) b!1057110))

(assert (= (and b!1057109 res!472647) b!1057106))

(assert (= (and b!1057110 (not res!472650)) b!1057105))

(assert (= (and b!1057105 res!472646) b!1057112))

(assert (= (or b!1057106 b!1057112) bm!75596))

(assert (= (or b!1057109 b!1057105) bm!75595))

(assert (= (or b!1057111 bm!75596) bm!75594))

(declare-fun m!1219467 () Bool)

(assert (=> bm!75594 m!1219467))

(declare-fun m!1219469 () Bool)

(assert (=> bm!75595 m!1219469))

(declare-fun m!1219471 () Bool)

(assert (=> b!1057108 m!1219471))

(assert (=> start!90974 d!300302))

(declare-fun b!1057117 () Bool)

(declare-fun e!671146 () Bool)

(declare-fun tp!318045 () Bool)

(assert (=> b!1057117 (= e!671146 (and tp_is_empty!5453 tp!318045))))

(assert (=> b!1056663 (= tp!318002 e!671146)))

(assert (= (and b!1056663 ((_ is Cons!10119) (t!101181 s!10566))) b!1057117))

(declare-fun b!1057131 () Bool)

(declare-fun e!671149 () Bool)

(declare-fun tp!318058 () Bool)

(declare-fun tp!318057 () Bool)

(assert (=> b!1057131 (= e!671149 (and tp!318058 tp!318057))))

(declare-fun b!1057128 () Bool)

(assert (=> b!1057128 (= e!671149 tp_is_empty!5453)))

(assert (=> b!1056671 (= tp!318003 e!671149)))

(declare-fun b!1057129 () Bool)

(declare-fun tp!318056 () Bool)

(declare-fun tp!318059 () Bool)

(assert (=> b!1057129 (= e!671149 (and tp!318056 tp!318059))))

(declare-fun b!1057130 () Bool)

(declare-fun tp!318060 () Bool)

(assert (=> b!1057130 (= e!671149 tp!318060)))

(assert (= (and b!1056671 ((_ is ElementMatch!2905) (reg!3234 r!15766))) b!1057128))

(assert (= (and b!1056671 ((_ is Concat!4738) (reg!3234 r!15766))) b!1057129))

(assert (= (and b!1056671 ((_ is Star!2905) (reg!3234 r!15766))) b!1057130))

(assert (= (and b!1056671 ((_ is Union!2905) (reg!3234 r!15766))) b!1057131))

(declare-fun b!1057135 () Bool)

(declare-fun e!671150 () Bool)

(declare-fun tp!318063 () Bool)

(declare-fun tp!318062 () Bool)

(assert (=> b!1057135 (= e!671150 (and tp!318063 tp!318062))))

(declare-fun b!1057132 () Bool)

(assert (=> b!1057132 (= e!671150 tp_is_empty!5453)))

(assert (=> b!1056666 (= tp!317999 e!671150)))

(declare-fun b!1057133 () Bool)

(declare-fun tp!318061 () Bool)

(declare-fun tp!318064 () Bool)

(assert (=> b!1057133 (= e!671150 (and tp!318061 tp!318064))))

(declare-fun b!1057134 () Bool)

(declare-fun tp!318065 () Bool)

(assert (=> b!1057134 (= e!671150 tp!318065)))

(assert (= (and b!1056666 ((_ is ElementMatch!2905) (regOne!6323 r!15766))) b!1057132))

(assert (= (and b!1056666 ((_ is Concat!4738) (regOne!6323 r!15766))) b!1057133))

(assert (= (and b!1056666 ((_ is Star!2905) (regOne!6323 r!15766))) b!1057134))

(assert (= (and b!1056666 ((_ is Union!2905) (regOne!6323 r!15766))) b!1057135))

(declare-fun b!1057139 () Bool)

(declare-fun e!671151 () Bool)

(declare-fun tp!318068 () Bool)

(declare-fun tp!318067 () Bool)

(assert (=> b!1057139 (= e!671151 (and tp!318068 tp!318067))))

(declare-fun b!1057136 () Bool)

(assert (=> b!1057136 (= e!671151 tp_is_empty!5453)))

(assert (=> b!1056666 (= tp!318000 e!671151)))

(declare-fun b!1057137 () Bool)

(declare-fun tp!318066 () Bool)

(declare-fun tp!318069 () Bool)

(assert (=> b!1057137 (= e!671151 (and tp!318066 tp!318069))))

(declare-fun b!1057138 () Bool)

(declare-fun tp!318070 () Bool)

(assert (=> b!1057138 (= e!671151 tp!318070)))

(assert (= (and b!1056666 ((_ is ElementMatch!2905) (regTwo!6323 r!15766))) b!1057136))

(assert (= (and b!1056666 ((_ is Concat!4738) (regTwo!6323 r!15766))) b!1057137))

(assert (= (and b!1056666 ((_ is Star!2905) (regTwo!6323 r!15766))) b!1057138))

(assert (= (and b!1056666 ((_ is Union!2905) (regTwo!6323 r!15766))) b!1057139))

(declare-fun b!1057143 () Bool)

(declare-fun e!671152 () Bool)

(declare-fun tp!318073 () Bool)

(declare-fun tp!318072 () Bool)

(assert (=> b!1057143 (= e!671152 (and tp!318073 tp!318072))))

(declare-fun b!1057140 () Bool)

(assert (=> b!1057140 (= e!671152 tp_is_empty!5453)))

(assert (=> b!1056667 (= tp!318004 e!671152)))

(declare-fun b!1057141 () Bool)

(declare-fun tp!318071 () Bool)

(declare-fun tp!318074 () Bool)

(assert (=> b!1057141 (= e!671152 (and tp!318071 tp!318074))))

(declare-fun b!1057142 () Bool)

(declare-fun tp!318075 () Bool)

(assert (=> b!1057142 (= e!671152 tp!318075)))

(assert (= (and b!1056667 ((_ is ElementMatch!2905) (regOne!6322 r!15766))) b!1057140))

(assert (= (and b!1056667 ((_ is Concat!4738) (regOne!6322 r!15766))) b!1057141))

(assert (= (and b!1056667 ((_ is Star!2905) (regOne!6322 r!15766))) b!1057142))

(assert (= (and b!1056667 ((_ is Union!2905) (regOne!6322 r!15766))) b!1057143))

(declare-fun b!1057147 () Bool)

(declare-fun e!671153 () Bool)

(declare-fun tp!318078 () Bool)

(declare-fun tp!318077 () Bool)

(assert (=> b!1057147 (= e!671153 (and tp!318078 tp!318077))))

(declare-fun b!1057144 () Bool)

(assert (=> b!1057144 (= e!671153 tp_is_empty!5453)))

(assert (=> b!1056667 (= tp!318001 e!671153)))

(declare-fun b!1057145 () Bool)

(declare-fun tp!318076 () Bool)

(declare-fun tp!318079 () Bool)

(assert (=> b!1057145 (= e!671153 (and tp!318076 tp!318079))))

(declare-fun b!1057146 () Bool)

(declare-fun tp!318080 () Bool)

(assert (=> b!1057146 (= e!671153 tp!318080)))

(assert (= (and b!1056667 ((_ is ElementMatch!2905) (regTwo!6322 r!15766))) b!1057144))

(assert (= (and b!1056667 ((_ is Concat!4738) (regTwo!6322 r!15766))) b!1057145))

(assert (= (and b!1056667 ((_ is Star!2905) (regTwo!6322 r!15766))) b!1057146))

(assert (= (and b!1056667 ((_ is Union!2905) (regTwo!6322 r!15766))) b!1057147))

(check-sat (not b!1057131) (not b!1057142) (not bm!75593) (not bm!75534) (not b!1057117) (not b!1057082) (not b!1056779) (not bm!75595) (not b!1056782) (not b!1057137) (not b!1056838) (not b!1057073) (not b!1056789) (not bm!75523) (not b!1057129) (not bm!75589) (not b!1057135) (not b!1057094) (not b!1057146) (not b!1056819) (not bm!75539) (not d!300298) (not b!1057067) (not d!300270) (not d!300294) (not bm!75543) (not b!1057103) (not d!300300) tp_is_empty!5453 (not b!1056785) (not b!1057147) (not d!300268) (not b!1057141) (not b!1057108) (not b!1057145) (not b!1057143) (not b!1057099) (not b!1056712) (not bm!75591) (not b!1057093) (not b!1057133) (not b!1057088) (not bm!75592) (not b!1057096) (not bm!75590) (not bm!75515) (not b!1056788) (not bm!75545) (not bm!75594) (not b!1057138) (not bm!75516) (not d!300264) (not b!1057139) (not b!1057130) (not b!1056780) (not b!1056830) (not b!1057102) (not bm!75544) (not bm!75538) (not b!1057134))
(check-sat)

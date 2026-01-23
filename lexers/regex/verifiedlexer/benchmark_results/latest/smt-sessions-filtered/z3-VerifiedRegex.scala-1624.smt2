; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83130 () Bool)

(assert start!83130)

(declare-fun b!927153 () Bool)

(declare-fun e!603011 () Bool)

(declare-fun tp!288119 () Bool)

(assert (=> b!927153 (= e!603011 tp!288119)))

(declare-fun res!421547 () Bool)

(declare-fun e!603012 () Bool)

(assert (=> start!83130 (=> (not res!421547) (not e!603012))))

(declare-datatypes ((C!5584 0))(
  ( (C!5585 (val!3040 Int)) )
))
(declare-datatypes ((Regex!2507 0))(
  ( (ElementMatch!2507 (c!150510 C!5584)) (Concat!4340 (regOne!5526 Regex!2507) (regTwo!5526 Regex!2507)) (EmptyExpr!2507) (Star!2507 (reg!2836 Regex!2507)) (EmptyLang!2507) (Union!2507 (regOne!5527 Regex!2507) (regTwo!5527 Regex!2507)) )
))
(declare-fun r!15766 () Regex!2507)

(declare-fun validRegex!976 (Regex!2507) Bool)

(assert (=> start!83130 (= res!421547 (validRegex!976 r!15766))))

(assert (=> start!83130 e!603012))

(assert (=> start!83130 e!603011))

(declare-fun e!603010 () Bool)

(assert (=> start!83130 e!603010))

(declare-fun b!927154 () Bool)

(declare-fun tp!288122 () Bool)

(declare-fun tp!288124 () Bool)

(assert (=> b!927154 (= e!603011 (and tp!288122 tp!288124))))

(declare-fun b!927155 () Bool)

(declare-fun e!603013 () Bool)

(assert (=> b!927155 (= e!603013 (validRegex!976 (regTwo!5527 r!15766)))))

(declare-fun lt!339821 () Regex!2507)

(declare-fun removeUselessConcat!182 (Regex!2507) Regex!2507)

(assert (=> b!927155 (= lt!339821 (removeUselessConcat!182 (regOne!5527 r!15766)))))

(declare-fun b!927156 () Bool)

(assert (=> b!927156 (= e!603012 (not e!603013))))

(declare-fun res!421548 () Bool)

(assert (=> b!927156 (=> res!421548 e!603013)))

(declare-fun lt!339819 () Bool)

(get-info :version)

(assert (=> b!927156 (= res!421548 (or lt!339819 (and ((_ is Concat!4340) r!15766) ((_ is EmptyExpr!2507) (regOne!5526 r!15766))) (and ((_ is Concat!4340) r!15766) ((_ is EmptyExpr!2507) (regTwo!5526 r!15766))) ((_ is Concat!4340) r!15766) (not ((_ is Union!2507) r!15766))))))

(declare-datatypes ((List!9737 0))(
  ( (Nil!9721) (Cons!9721 (h!15122 C!5584) (t!100783 List!9737)) )
))
(declare-fun s!10566 () List!9737)

(declare-fun matchRSpec!308 (Regex!2507 List!9737) Bool)

(assert (=> b!927156 (= lt!339819 (matchRSpec!308 r!15766 s!10566))))

(declare-fun matchR!1045 (Regex!2507 List!9737) Bool)

(assert (=> b!927156 (= lt!339819 (matchR!1045 r!15766 s!10566))))

(declare-datatypes ((Unit!14633 0))(
  ( (Unit!14634) )
))
(declare-fun lt!339820 () Unit!14633)

(declare-fun mainMatchTheorem!308 (Regex!2507 List!9737) Unit!14633)

(assert (=> b!927156 (= lt!339820 (mainMatchTheorem!308 r!15766 s!10566))))

(declare-fun b!927157 () Bool)

(declare-fun tp!288123 () Bool)

(declare-fun tp!288121 () Bool)

(assert (=> b!927157 (= e!603011 (and tp!288123 tp!288121))))

(declare-fun b!927158 () Bool)

(declare-fun tp_is_empty!4657 () Bool)

(assert (=> b!927158 (= e!603011 tp_is_empty!4657)))

(declare-fun b!927159 () Bool)

(declare-fun tp!288120 () Bool)

(assert (=> b!927159 (= e!603010 (and tp_is_empty!4657 tp!288120))))

(assert (= (and start!83130 res!421547) b!927156))

(assert (= (and b!927156 (not res!421548)) b!927155))

(assert (= (and start!83130 ((_ is ElementMatch!2507) r!15766)) b!927158))

(assert (= (and start!83130 ((_ is Concat!4340) r!15766)) b!927157))

(assert (= (and start!83130 ((_ is Star!2507) r!15766)) b!927153))

(assert (= (and start!83130 ((_ is Union!2507) r!15766)) b!927154))

(assert (= (and start!83130 ((_ is Cons!9721) s!10566)) b!927159))

(declare-fun m!1151805 () Bool)

(assert (=> start!83130 m!1151805))

(declare-fun m!1151807 () Bool)

(assert (=> b!927155 m!1151807))

(declare-fun m!1151809 () Bool)

(assert (=> b!927155 m!1151809))

(declare-fun m!1151811 () Bool)

(assert (=> b!927156 m!1151811))

(declare-fun m!1151813 () Bool)

(assert (=> b!927156 m!1151813))

(declare-fun m!1151815 () Bool)

(assert (=> b!927156 m!1151815))

(check-sat (not b!927156) (not b!927157) tp_is_empty!4657 (not b!927155) (not b!927154) (not b!927159) (not start!83130) (not b!927153))
(check-sat)
(get-model)

(declare-fun b!927317 () Bool)

(assert (=> b!927317 true))

(assert (=> b!927317 true))

(declare-fun bs!237595 () Bool)

(declare-fun b!927311 () Bool)

(assert (= bs!237595 (and b!927311 b!927317)))

(declare-fun lambda!30704 () Int)

(declare-fun lambda!30703 () Int)

(assert (=> bs!237595 (not (= lambda!30704 lambda!30703))))

(assert (=> b!927311 true))

(assert (=> b!927311 true))

(declare-fun bm!56786 () Bool)

(declare-fun call!56792 () Bool)

(declare-fun c!150555 () Bool)

(declare-fun Exists!277 (Int) Bool)

(assert (=> bm!56786 (= call!56792 (Exists!277 (ite c!150555 lambda!30703 lambda!30704)))))

(declare-fun b!927308 () Bool)

(declare-fun e!603109 () Bool)

(declare-fun e!603108 () Bool)

(assert (=> b!927308 (= e!603109 e!603108)))

(declare-fun res!421609 () Bool)

(assert (=> b!927308 (= res!421609 (matchRSpec!308 (regOne!5527 r!15766) s!10566))))

(assert (=> b!927308 (=> res!421609 e!603108)))

(declare-fun b!927309 () Bool)

(declare-fun c!150557 () Bool)

(assert (=> b!927309 (= c!150557 ((_ is ElementMatch!2507) r!15766))))

(declare-fun e!603103 () Bool)

(declare-fun e!603106 () Bool)

(assert (=> b!927309 (= e!603103 e!603106)))

(declare-fun d!281157 () Bool)

(declare-fun c!150554 () Bool)

(assert (=> d!281157 (= c!150554 ((_ is EmptyExpr!2507) r!15766))))

(declare-fun e!603104 () Bool)

(assert (=> d!281157 (= (matchRSpec!308 r!15766 s!10566) e!603104)))

(declare-fun b!927310 () Bool)

(declare-fun call!56791 () Bool)

(assert (=> b!927310 (= e!603104 call!56791)))

(declare-fun e!603107 () Bool)

(assert (=> b!927311 (= e!603107 call!56792)))

(declare-fun b!927312 () Bool)

(assert (=> b!927312 (= e!603108 (matchRSpec!308 (regTwo!5527 r!15766) s!10566))))

(declare-fun b!927313 () Bool)

(assert (=> b!927313 (= e!603106 (= s!10566 (Cons!9721 (c!150510 r!15766) Nil!9721)))))

(declare-fun b!927314 () Bool)

(declare-fun c!150556 () Bool)

(assert (=> b!927314 (= c!150556 ((_ is Union!2507) r!15766))))

(assert (=> b!927314 (= e!603106 e!603109)))

(declare-fun b!927315 () Bool)

(declare-fun res!421608 () Bool)

(declare-fun e!603105 () Bool)

(assert (=> b!927315 (=> res!421608 e!603105)))

(assert (=> b!927315 (= res!421608 call!56791)))

(assert (=> b!927315 (= e!603107 e!603105)))

(declare-fun b!927316 () Bool)

(assert (=> b!927316 (= e!603104 e!603103)))

(declare-fun res!421607 () Bool)

(assert (=> b!927316 (= res!421607 (not ((_ is EmptyLang!2507) r!15766)))))

(assert (=> b!927316 (=> (not res!421607) (not e!603103))))

(assert (=> b!927317 (= e!603105 call!56792)))

(declare-fun b!927318 () Bool)

(assert (=> b!927318 (= e!603109 e!603107)))

(assert (=> b!927318 (= c!150555 ((_ is Star!2507) r!15766))))

(declare-fun bm!56787 () Bool)

(declare-fun isEmpty!5979 (List!9737) Bool)

(assert (=> bm!56787 (= call!56791 (isEmpty!5979 s!10566))))

(assert (= (and d!281157 c!150554) b!927310))

(assert (= (and d!281157 (not c!150554)) b!927316))

(assert (= (and b!927316 res!421607) b!927309))

(assert (= (and b!927309 c!150557) b!927313))

(assert (= (and b!927309 (not c!150557)) b!927314))

(assert (= (and b!927314 c!150556) b!927308))

(assert (= (and b!927314 (not c!150556)) b!927318))

(assert (= (and b!927308 (not res!421609)) b!927312))

(assert (= (and b!927318 c!150555) b!927315))

(assert (= (and b!927318 (not c!150555)) b!927311))

(assert (= (and b!927315 (not res!421608)) b!927317))

(assert (= (or b!927317 b!927311) bm!56786))

(assert (= (or b!927310 b!927315) bm!56787))

(declare-fun m!1151849 () Bool)

(assert (=> bm!56786 m!1151849))

(declare-fun m!1151851 () Bool)

(assert (=> b!927308 m!1151851))

(declare-fun m!1151853 () Bool)

(assert (=> b!927312 m!1151853))

(declare-fun m!1151855 () Bool)

(assert (=> bm!56787 m!1151855))

(assert (=> b!927156 d!281157))

(declare-fun b!927412 () Bool)

(declare-fun e!603152 () Bool)

(declare-fun head!1669 (List!9737) C!5584)

(assert (=> b!927412 (= e!603152 (not (= (head!1669 s!10566) (c!150510 r!15766))))))

(declare-fun b!927413 () Bool)

(declare-fun e!603155 () Bool)

(assert (=> b!927413 (= e!603155 e!603152)))

(declare-fun res!421654 () Bool)

(assert (=> b!927413 (=> res!421654 e!603152)))

(declare-fun call!56798 () Bool)

(assert (=> b!927413 (= res!421654 call!56798)))

(declare-fun b!927414 () Bool)

(declare-fun e!603157 () Bool)

(declare-fun nullable!707 (Regex!2507) Bool)

(assert (=> b!927414 (= e!603157 (nullable!707 r!15766))))

(declare-fun b!927416 () Bool)

(declare-fun e!603154 () Bool)

(declare-fun lt!339833 () Bool)

(assert (=> b!927416 (= e!603154 (= lt!339833 call!56798))))

(declare-fun bm!56793 () Bool)

(assert (=> bm!56793 (= call!56798 (isEmpty!5979 s!10566))))

(declare-fun b!927417 () Bool)

(declare-fun e!603153 () Bool)

(assert (=> b!927417 (= e!603154 e!603153)))

(declare-fun c!150573 () Bool)

(assert (=> b!927417 (= c!150573 ((_ is EmptyLang!2507) r!15766))))

(declare-fun b!927418 () Bool)

(declare-fun derivativeStep!516 (Regex!2507 C!5584) Regex!2507)

(declare-fun tail!1231 (List!9737) List!9737)

(assert (=> b!927418 (= e!603157 (matchR!1045 (derivativeStep!516 r!15766 (head!1669 s!10566)) (tail!1231 s!10566)))))

(declare-fun b!927419 () Bool)

(declare-fun e!603156 () Bool)

(assert (=> b!927419 (= e!603156 (= (head!1669 s!10566) (c!150510 r!15766)))))

(declare-fun b!927420 () Bool)

(declare-fun res!421651 () Bool)

(declare-fun e!603151 () Bool)

(assert (=> b!927420 (=> res!421651 e!603151)))

(assert (=> b!927420 (= res!421651 (not ((_ is ElementMatch!2507) r!15766)))))

(assert (=> b!927420 (= e!603153 e!603151)))

(declare-fun b!927421 () Bool)

(assert (=> b!927421 (= e!603151 e!603155)))

(declare-fun res!421656 () Bool)

(assert (=> b!927421 (=> (not res!421656) (not e!603155))))

(assert (=> b!927421 (= res!421656 (not lt!339833))))

(declare-fun b!927415 () Bool)

(declare-fun res!421652 () Bool)

(assert (=> b!927415 (=> (not res!421652) (not e!603156))))

(assert (=> b!927415 (= res!421652 (isEmpty!5979 (tail!1231 s!10566)))))

(declare-fun d!281169 () Bool)

(assert (=> d!281169 e!603154))

(declare-fun c!150574 () Bool)

(assert (=> d!281169 (= c!150574 ((_ is EmptyExpr!2507) r!15766))))

(assert (=> d!281169 (= lt!339833 e!603157)))

(declare-fun c!150575 () Bool)

(assert (=> d!281169 (= c!150575 (isEmpty!5979 s!10566))))

(assert (=> d!281169 (validRegex!976 r!15766)))

(assert (=> d!281169 (= (matchR!1045 r!15766 s!10566) lt!339833)))

(declare-fun b!927422 () Bool)

(declare-fun res!421653 () Bool)

(assert (=> b!927422 (=> (not res!421653) (not e!603156))))

(assert (=> b!927422 (= res!421653 (not call!56798))))

(declare-fun b!927423 () Bool)

(assert (=> b!927423 (= e!603153 (not lt!339833))))

(declare-fun b!927424 () Bool)

(declare-fun res!421655 () Bool)

(assert (=> b!927424 (=> res!421655 e!603152)))

(assert (=> b!927424 (= res!421655 (not (isEmpty!5979 (tail!1231 s!10566))))))

(declare-fun b!927425 () Bool)

(declare-fun res!421657 () Bool)

(assert (=> b!927425 (=> res!421657 e!603151)))

(assert (=> b!927425 (= res!421657 e!603156)))

(declare-fun res!421650 () Bool)

(assert (=> b!927425 (=> (not res!421650) (not e!603156))))

(assert (=> b!927425 (= res!421650 lt!339833)))

(assert (= (and d!281169 c!150575) b!927414))

(assert (= (and d!281169 (not c!150575)) b!927418))

(assert (= (and d!281169 c!150574) b!927416))

(assert (= (and d!281169 (not c!150574)) b!927417))

(assert (= (and b!927417 c!150573) b!927423))

(assert (= (and b!927417 (not c!150573)) b!927420))

(assert (= (and b!927420 (not res!421651)) b!927425))

(assert (= (and b!927425 res!421650) b!927422))

(assert (= (and b!927422 res!421653) b!927415))

(assert (= (and b!927415 res!421652) b!927419))

(assert (= (and b!927425 (not res!421657)) b!927421))

(assert (= (and b!927421 res!421656) b!927413))

(assert (= (and b!927413 (not res!421654)) b!927424))

(assert (= (and b!927424 (not res!421655)) b!927412))

(assert (= (or b!927416 b!927413 b!927422) bm!56793))

(declare-fun m!1151871 () Bool)

(assert (=> b!927414 m!1151871))

(declare-fun m!1151873 () Bool)

(assert (=> b!927424 m!1151873))

(assert (=> b!927424 m!1151873))

(declare-fun m!1151875 () Bool)

(assert (=> b!927424 m!1151875))

(declare-fun m!1151877 () Bool)

(assert (=> b!927418 m!1151877))

(assert (=> b!927418 m!1151877))

(declare-fun m!1151879 () Bool)

(assert (=> b!927418 m!1151879))

(assert (=> b!927418 m!1151873))

(assert (=> b!927418 m!1151879))

(assert (=> b!927418 m!1151873))

(declare-fun m!1151881 () Bool)

(assert (=> b!927418 m!1151881))

(assert (=> d!281169 m!1151855))

(assert (=> d!281169 m!1151805))

(assert (=> b!927419 m!1151877))

(assert (=> b!927415 m!1151873))

(assert (=> b!927415 m!1151873))

(assert (=> b!927415 m!1151875))

(assert (=> b!927412 m!1151877))

(assert (=> bm!56793 m!1151855))

(assert (=> b!927156 d!281169))

(declare-fun d!281173 () Bool)

(assert (=> d!281173 (= (matchR!1045 r!15766 s!10566) (matchRSpec!308 r!15766 s!10566))))

(declare-fun lt!339836 () Unit!14633)

(declare-fun choose!5706 (Regex!2507 List!9737) Unit!14633)

(assert (=> d!281173 (= lt!339836 (choose!5706 r!15766 s!10566))))

(assert (=> d!281173 (validRegex!976 r!15766)))

(assert (=> d!281173 (= (mainMatchTheorem!308 r!15766 s!10566) lt!339836)))

(declare-fun bs!237597 () Bool)

(assert (= bs!237597 d!281173))

(assert (=> bs!237597 m!1151813))

(assert (=> bs!237597 m!1151811))

(declare-fun m!1151883 () Bool)

(assert (=> bs!237597 m!1151883))

(assert (=> bs!237597 m!1151805))

(assert (=> b!927156 d!281173))

(declare-fun b!927460 () Bool)

(declare-fun e!603182 () Bool)

(declare-fun e!603180 () Bool)

(assert (=> b!927460 (= e!603182 e!603180)))

(declare-fun res!421669 () Bool)

(assert (=> b!927460 (= res!421669 (not (nullable!707 (reg!2836 r!15766))))))

(assert (=> b!927460 (=> (not res!421669) (not e!603180))))

(declare-fun b!927461 () Bool)

(declare-fun e!603176 () Bool)

(assert (=> b!927461 (= e!603182 e!603176)))

(declare-fun c!150580 () Bool)

(assert (=> b!927461 (= c!150580 ((_ is Union!2507) r!15766))))

(declare-fun b!927462 () Bool)

(declare-fun e!603177 () Bool)

(declare-fun call!56807 () Bool)

(assert (=> b!927462 (= e!603177 call!56807)))

(declare-fun call!56805 () Bool)

(declare-fun bm!56800 () Bool)

(declare-fun c!150581 () Bool)

(assert (=> bm!56800 (= call!56805 (validRegex!976 (ite c!150581 (reg!2836 r!15766) (ite c!150580 (regOne!5527 r!15766) (regOne!5526 r!15766)))))))

(declare-fun b!927463 () Bool)

(declare-fun res!421671 () Bool)

(assert (=> b!927463 (=> (not res!421671) (not e!603177))))

(declare-fun call!56806 () Bool)

(assert (=> b!927463 (= res!421671 call!56806)))

(assert (=> b!927463 (= e!603176 e!603177)))

(declare-fun b!927464 () Bool)

(assert (=> b!927464 (= e!603180 call!56805)))

(declare-fun b!927465 () Bool)

(declare-fun res!421670 () Bool)

(declare-fun e!603181 () Bool)

(assert (=> b!927465 (=> res!421670 e!603181)))

(assert (=> b!927465 (= res!421670 (not ((_ is Concat!4340) r!15766)))))

(assert (=> b!927465 (= e!603176 e!603181)))

(declare-fun d!281175 () Bool)

(declare-fun res!421672 () Bool)

(declare-fun e!603178 () Bool)

(assert (=> d!281175 (=> res!421672 e!603178)))

(assert (=> d!281175 (= res!421672 ((_ is ElementMatch!2507) r!15766))))

(assert (=> d!281175 (= (validRegex!976 r!15766) e!603178)))

(declare-fun b!927466 () Bool)

(declare-fun e!603179 () Bool)

(assert (=> b!927466 (= e!603179 call!56807)))

(declare-fun bm!56801 () Bool)

(assert (=> bm!56801 (= call!56806 call!56805)))

(declare-fun b!927467 () Bool)

(assert (=> b!927467 (= e!603178 e!603182)))

(assert (=> b!927467 (= c!150581 ((_ is Star!2507) r!15766))))

(declare-fun bm!56802 () Bool)

(assert (=> bm!56802 (= call!56807 (validRegex!976 (ite c!150580 (regTwo!5527 r!15766) (regTwo!5526 r!15766))))))

(declare-fun b!927468 () Bool)

(assert (=> b!927468 (= e!603181 e!603179)))

(declare-fun res!421668 () Bool)

(assert (=> b!927468 (=> (not res!421668) (not e!603179))))

(assert (=> b!927468 (= res!421668 call!56806)))

(assert (= (and d!281175 (not res!421672)) b!927467))

(assert (= (and b!927467 c!150581) b!927460))

(assert (= (and b!927467 (not c!150581)) b!927461))

(assert (= (and b!927460 res!421669) b!927464))

(assert (= (and b!927461 c!150580) b!927463))

(assert (= (and b!927461 (not c!150580)) b!927465))

(assert (= (and b!927463 res!421671) b!927462))

(assert (= (and b!927465 (not res!421670)) b!927468))

(assert (= (and b!927468 res!421668) b!927466))

(assert (= (or b!927462 b!927466) bm!56802))

(assert (= (or b!927463 b!927468) bm!56801))

(assert (= (or b!927464 bm!56801) bm!56800))

(declare-fun m!1151885 () Bool)

(assert (=> b!927460 m!1151885))

(declare-fun m!1151887 () Bool)

(assert (=> bm!56800 m!1151887))

(declare-fun m!1151889 () Bool)

(assert (=> bm!56802 m!1151889))

(assert (=> start!83130 d!281175))

(declare-fun b!927469 () Bool)

(declare-fun e!603189 () Bool)

(declare-fun e!603187 () Bool)

(assert (=> b!927469 (= e!603189 e!603187)))

(declare-fun res!421674 () Bool)

(assert (=> b!927469 (= res!421674 (not (nullable!707 (reg!2836 (regTwo!5527 r!15766)))))))

(assert (=> b!927469 (=> (not res!421674) (not e!603187))))

(declare-fun b!927470 () Bool)

(declare-fun e!603183 () Bool)

(assert (=> b!927470 (= e!603189 e!603183)))

(declare-fun c!150582 () Bool)

(assert (=> b!927470 (= c!150582 ((_ is Union!2507) (regTwo!5527 r!15766)))))

(declare-fun b!927471 () Bool)

(declare-fun e!603184 () Bool)

(declare-fun call!56810 () Bool)

(assert (=> b!927471 (= e!603184 call!56810)))

(declare-fun c!150583 () Bool)

(declare-fun call!56808 () Bool)

(declare-fun bm!56803 () Bool)

(assert (=> bm!56803 (= call!56808 (validRegex!976 (ite c!150583 (reg!2836 (regTwo!5527 r!15766)) (ite c!150582 (regOne!5527 (regTwo!5527 r!15766)) (regOne!5526 (regTwo!5527 r!15766))))))))

(declare-fun b!927472 () Bool)

(declare-fun res!421676 () Bool)

(assert (=> b!927472 (=> (not res!421676) (not e!603184))))

(declare-fun call!56809 () Bool)

(assert (=> b!927472 (= res!421676 call!56809)))

(assert (=> b!927472 (= e!603183 e!603184)))

(declare-fun b!927473 () Bool)

(assert (=> b!927473 (= e!603187 call!56808)))

(declare-fun b!927474 () Bool)

(declare-fun res!421675 () Bool)

(declare-fun e!603188 () Bool)

(assert (=> b!927474 (=> res!421675 e!603188)))

(assert (=> b!927474 (= res!421675 (not ((_ is Concat!4340) (regTwo!5527 r!15766))))))

(assert (=> b!927474 (= e!603183 e!603188)))

(declare-fun d!281177 () Bool)

(declare-fun res!421677 () Bool)

(declare-fun e!603185 () Bool)

(assert (=> d!281177 (=> res!421677 e!603185)))

(assert (=> d!281177 (= res!421677 ((_ is ElementMatch!2507) (regTwo!5527 r!15766)))))

(assert (=> d!281177 (= (validRegex!976 (regTwo!5527 r!15766)) e!603185)))

(declare-fun b!927475 () Bool)

(declare-fun e!603186 () Bool)

(assert (=> b!927475 (= e!603186 call!56810)))

(declare-fun bm!56804 () Bool)

(assert (=> bm!56804 (= call!56809 call!56808)))

(declare-fun b!927476 () Bool)

(assert (=> b!927476 (= e!603185 e!603189)))

(assert (=> b!927476 (= c!150583 ((_ is Star!2507) (regTwo!5527 r!15766)))))

(declare-fun bm!56805 () Bool)

(assert (=> bm!56805 (= call!56810 (validRegex!976 (ite c!150582 (regTwo!5527 (regTwo!5527 r!15766)) (regTwo!5526 (regTwo!5527 r!15766)))))))

(declare-fun b!927477 () Bool)

(assert (=> b!927477 (= e!603188 e!603186)))

(declare-fun res!421673 () Bool)

(assert (=> b!927477 (=> (not res!421673) (not e!603186))))

(assert (=> b!927477 (= res!421673 call!56809)))

(assert (= (and d!281177 (not res!421677)) b!927476))

(assert (= (and b!927476 c!150583) b!927469))

(assert (= (and b!927476 (not c!150583)) b!927470))

(assert (= (and b!927469 res!421674) b!927473))

(assert (= (and b!927470 c!150582) b!927472))

(assert (= (and b!927470 (not c!150582)) b!927474))

(assert (= (and b!927472 res!421676) b!927471))

(assert (= (and b!927474 (not res!421675)) b!927477))

(assert (= (and b!927477 res!421673) b!927475))

(assert (= (or b!927471 b!927475) bm!56805))

(assert (= (or b!927472 b!927477) bm!56804))

(assert (= (or b!927473 bm!56804) bm!56803))

(declare-fun m!1151891 () Bool)

(assert (=> b!927469 m!1151891))

(declare-fun m!1151893 () Bool)

(assert (=> bm!56803 m!1151893))

(declare-fun m!1151895 () Bool)

(assert (=> bm!56805 m!1151895))

(assert (=> b!927155 d!281177))

(declare-fun b!927500 () Bool)

(declare-fun c!150595 () Bool)

(assert (=> b!927500 (= c!150595 ((_ is Concat!4340) (regOne!5527 r!15766)))))

(declare-fun e!603202 () Regex!2507)

(declare-fun e!603203 () Regex!2507)

(assert (=> b!927500 (= e!603202 e!603203)))

(declare-fun b!927501 () Bool)

(declare-fun call!56824 () Regex!2507)

(declare-fun call!56822 () Regex!2507)

(assert (=> b!927501 (= e!603203 (Concat!4340 call!56824 call!56822))))

(declare-fun b!927502 () Bool)

(declare-fun e!603205 () Regex!2507)

(assert (=> b!927502 (= e!603203 e!603205)))

(declare-fun c!150596 () Bool)

(assert (=> b!927502 (= c!150596 ((_ is Union!2507) (regOne!5527 r!15766)))))

(declare-fun b!927503 () Bool)

(declare-fun e!603206 () Regex!2507)

(declare-fun call!56821 () Regex!2507)

(assert (=> b!927503 (= e!603206 call!56821)))

(declare-fun b!927504 () Bool)

(declare-fun e!603207 () Regex!2507)

(assert (=> b!927504 (= e!603207 (regOne!5527 r!15766))))

(declare-fun bm!56816 () Bool)

(assert (=> bm!56816 (= call!56822 call!56821)))

(declare-fun b!927505 () Bool)

(assert (=> b!927505 (= e!603206 e!603202)))

(declare-fun c!150594 () Bool)

(assert (=> b!927505 (= c!150594 (and ((_ is Concat!4340) (regOne!5527 r!15766)) ((_ is EmptyExpr!2507) (regTwo!5526 (regOne!5527 r!15766)))))))

(declare-fun b!927507 () Bool)

(declare-fun e!603204 () Bool)

(declare-fun lt!339839 () Regex!2507)

(assert (=> b!927507 (= e!603204 (= (nullable!707 lt!339839) (nullable!707 (regOne!5527 r!15766))))))

(declare-fun bm!56817 () Bool)

(declare-fun call!56823 () Regex!2507)

(assert (=> bm!56817 (= call!56824 call!56823)))

(declare-fun b!927508 () Bool)

(assert (=> b!927508 (= e!603202 call!56823)))

(declare-fun c!150598 () Bool)

(declare-fun bm!56818 () Bool)

(assert (=> bm!56818 (= call!56821 (removeUselessConcat!182 (ite (or c!150598 c!150595) (regTwo!5526 (regOne!5527 r!15766)) (regOne!5527 (regOne!5527 r!15766)))))))

(declare-fun bm!56819 () Bool)

(assert (=> bm!56819 (= call!56823 (removeUselessConcat!182 (ite (or c!150594 c!150595) (regOne!5526 (regOne!5527 r!15766)) (ite c!150596 (regTwo!5527 (regOne!5527 r!15766)) (reg!2836 (regOne!5527 r!15766))))))))

(declare-fun b!927509 () Bool)

(declare-fun call!56825 () Regex!2507)

(assert (=> b!927509 (= e!603207 (Star!2507 call!56825))))

(declare-fun b!927510 () Bool)

(declare-fun c!150597 () Bool)

(assert (=> b!927510 (= c!150597 ((_ is Star!2507) (regOne!5527 r!15766)))))

(assert (=> b!927510 (= e!603205 e!603207)))

(declare-fun bm!56820 () Bool)

(assert (=> bm!56820 (= call!56825 call!56824)))

(declare-fun b!927506 () Bool)

(assert (=> b!927506 (= e!603205 (Union!2507 call!56822 call!56825))))

(declare-fun d!281179 () Bool)

(assert (=> d!281179 e!603204))

(declare-fun res!421680 () Bool)

(assert (=> d!281179 (=> (not res!421680) (not e!603204))))

(assert (=> d!281179 (= res!421680 (validRegex!976 lt!339839))))

(assert (=> d!281179 (= lt!339839 e!603206)))

(assert (=> d!281179 (= c!150598 (and ((_ is Concat!4340) (regOne!5527 r!15766)) ((_ is EmptyExpr!2507) (regOne!5526 (regOne!5527 r!15766)))))))

(assert (=> d!281179 (validRegex!976 (regOne!5527 r!15766))))

(assert (=> d!281179 (= (removeUselessConcat!182 (regOne!5527 r!15766)) lt!339839)))

(assert (= (and d!281179 c!150598) b!927503))

(assert (= (and d!281179 (not c!150598)) b!927505))

(assert (= (and b!927505 c!150594) b!927508))

(assert (= (and b!927505 (not c!150594)) b!927500))

(assert (= (and b!927500 c!150595) b!927501))

(assert (= (and b!927500 (not c!150595)) b!927502))

(assert (= (and b!927502 c!150596) b!927506))

(assert (= (and b!927502 (not c!150596)) b!927510))

(assert (= (and b!927510 c!150597) b!927509))

(assert (= (and b!927510 (not c!150597)) b!927504))

(assert (= (or b!927506 b!927509) bm!56820))

(assert (= (or b!927501 b!927506) bm!56816))

(assert (= (or b!927501 bm!56820) bm!56817))

(assert (= (or b!927508 bm!56817) bm!56819))

(assert (= (or b!927503 bm!56816) bm!56818))

(assert (= (and d!281179 res!421680) b!927507))

(declare-fun m!1151897 () Bool)

(assert (=> b!927507 m!1151897))

(declare-fun m!1151899 () Bool)

(assert (=> b!927507 m!1151899))

(declare-fun m!1151901 () Bool)

(assert (=> bm!56818 m!1151901))

(declare-fun m!1151903 () Bool)

(assert (=> bm!56819 m!1151903))

(declare-fun m!1151905 () Bool)

(assert (=> d!281179 m!1151905))

(declare-fun m!1151907 () Bool)

(assert (=> d!281179 m!1151907))

(assert (=> b!927155 d!281179))

(declare-fun b!927524 () Bool)

(declare-fun e!603210 () Bool)

(declare-fun tp!288177 () Bool)

(declare-fun tp!288176 () Bool)

(assert (=> b!927524 (= e!603210 (and tp!288177 tp!288176))))

(declare-fun b!927522 () Bool)

(declare-fun tp!288173 () Bool)

(declare-fun tp!288174 () Bool)

(assert (=> b!927522 (= e!603210 (and tp!288173 tp!288174))))

(declare-fun b!927521 () Bool)

(assert (=> b!927521 (= e!603210 tp_is_empty!4657)))

(declare-fun b!927523 () Bool)

(declare-fun tp!288175 () Bool)

(assert (=> b!927523 (= e!603210 tp!288175)))

(assert (=> b!927157 (= tp!288123 e!603210)))

(assert (= (and b!927157 ((_ is ElementMatch!2507) (regOne!5526 r!15766))) b!927521))

(assert (= (and b!927157 ((_ is Concat!4340) (regOne!5526 r!15766))) b!927522))

(assert (= (and b!927157 ((_ is Star!2507) (regOne!5526 r!15766))) b!927523))

(assert (= (and b!927157 ((_ is Union!2507) (regOne!5526 r!15766))) b!927524))

(declare-fun b!927528 () Bool)

(declare-fun e!603211 () Bool)

(declare-fun tp!288182 () Bool)

(declare-fun tp!288181 () Bool)

(assert (=> b!927528 (= e!603211 (and tp!288182 tp!288181))))

(declare-fun b!927526 () Bool)

(declare-fun tp!288178 () Bool)

(declare-fun tp!288179 () Bool)

(assert (=> b!927526 (= e!603211 (and tp!288178 tp!288179))))

(declare-fun b!927525 () Bool)

(assert (=> b!927525 (= e!603211 tp_is_empty!4657)))

(declare-fun b!927527 () Bool)

(declare-fun tp!288180 () Bool)

(assert (=> b!927527 (= e!603211 tp!288180)))

(assert (=> b!927157 (= tp!288121 e!603211)))

(assert (= (and b!927157 ((_ is ElementMatch!2507) (regTwo!5526 r!15766))) b!927525))

(assert (= (and b!927157 ((_ is Concat!4340) (regTwo!5526 r!15766))) b!927526))

(assert (= (and b!927157 ((_ is Star!2507) (regTwo!5526 r!15766))) b!927527))

(assert (= (and b!927157 ((_ is Union!2507) (regTwo!5526 r!15766))) b!927528))

(declare-fun b!927532 () Bool)

(declare-fun e!603212 () Bool)

(declare-fun tp!288187 () Bool)

(declare-fun tp!288186 () Bool)

(assert (=> b!927532 (= e!603212 (and tp!288187 tp!288186))))

(declare-fun b!927530 () Bool)

(declare-fun tp!288183 () Bool)

(declare-fun tp!288184 () Bool)

(assert (=> b!927530 (= e!603212 (and tp!288183 tp!288184))))

(declare-fun b!927529 () Bool)

(assert (=> b!927529 (= e!603212 tp_is_empty!4657)))

(declare-fun b!927531 () Bool)

(declare-fun tp!288185 () Bool)

(assert (=> b!927531 (= e!603212 tp!288185)))

(assert (=> b!927153 (= tp!288119 e!603212)))

(assert (= (and b!927153 ((_ is ElementMatch!2507) (reg!2836 r!15766))) b!927529))

(assert (= (and b!927153 ((_ is Concat!4340) (reg!2836 r!15766))) b!927530))

(assert (= (and b!927153 ((_ is Star!2507) (reg!2836 r!15766))) b!927531))

(assert (= (and b!927153 ((_ is Union!2507) (reg!2836 r!15766))) b!927532))

(declare-fun b!927537 () Bool)

(declare-fun e!603215 () Bool)

(declare-fun tp!288190 () Bool)

(assert (=> b!927537 (= e!603215 (and tp_is_empty!4657 tp!288190))))

(assert (=> b!927159 (= tp!288120 e!603215)))

(assert (= (and b!927159 ((_ is Cons!9721) (t!100783 s!10566))) b!927537))

(declare-fun b!927541 () Bool)

(declare-fun e!603216 () Bool)

(declare-fun tp!288195 () Bool)

(declare-fun tp!288194 () Bool)

(assert (=> b!927541 (= e!603216 (and tp!288195 tp!288194))))

(declare-fun b!927539 () Bool)

(declare-fun tp!288191 () Bool)

(declare-fun tp!288192 () Bool)

(assert (=> b!927539 (= e!603216 (and tp!288191 tp!288192))))

(declare-fun b!927538 () Bool)

(assert (=> b!927538 (= e!603216 tp_is_empty!4657)))

(declare-fun b!927540 () Bool)

(declare-fun tp!288193 () Bool)

(assert (=> b!927540 (= e!603216 tp!288193)))

(assert (=> b!927154 (= tp!288122 e!603216)))

(assert (= (and b!927154 ((_ is ElementMatch!2507) (regOne!5527 r!15766))) b!927538))

(assert (= (and b!927154 ((_ is Concat!4340) (regOne!5527 r!15766))) b!927539))

(assert (= (and b!927154 ((_ is Star!2507) (regOne!5527 r!15766))) b!927540))

(assert (= (and b!927154 ((_ is Union!2507) (regOne!5527 r!15766))) b!927541))

(declare-fun b!927545 () Bool)

(declare-fun e!603217 () Bool)

(declare-fun tp!288200 () Bool)

(declare-fun tp!288199 () Bool)

(assert (=> b!927545 (= e!603217 (and tp!288200 tp!288199))))

(declare-fun b!927543 () Bool)

(declare-fun tp!288196 () Bool)

(declare-fun tp!288197 () Bool)

(assert (=> b!927543 (= e!603217 (and tp!288196 tp!288197))))

(declare-fun b!927542 () Bool)

(assert (=> b!927542 (= e!603217 tp_is_empty!4657)))

(declare-fun b!927544 () Bool)

(declare-fun tp!288198 () Bool)

(assert (=> b!927544 (= e!603217 tp!288198)))

(assert (=> b!927154 (= tp!288124 e!603217)))

(assert (= (and b!927154 ((_ is ElementMatch!2507) (regTwo!5527 r!15766))) b!927542))

(assert (= (and b!927154 ((_ is Concat!4340) (regTwo!5527 r!15766))) b!927543))

(assert (= (and b!927154 ((_ is Star!2507) (regTwo!5527 r!15766))) b!927544))

(assert (= (and b!927154 ((_ is Union!2507) (regTwo!5527 r!15766))) b!927545))

(check-sat (not bm!56786) (not b!927541) (not b!927540) (not b!927526) (not b!927543) (not b!927531) (not b!927527) (not d!281179) (not b!927460) (not b!927469) (not b!927507) (not b!927312) (not b!927424) (not b!927415) (not b!927523) (not d!281169) (not b!927414) (not b!927537) (not bm!56787) (not b!927412) (not b!927418) (not bm!56800) (not b!927522) (not b!927419) (not bm!56819) (not bm!56793) (not b!927545) (not b!927539) (not bm!56802) (not b!927530) (not b!927544) tp_is_empty!4657 (not b!927524) (not bm!56803) (not bm!56818) (not bm!56805) (not d!281173) (not b!927532) (not b!927528) (not b!927308))
(check-sat)

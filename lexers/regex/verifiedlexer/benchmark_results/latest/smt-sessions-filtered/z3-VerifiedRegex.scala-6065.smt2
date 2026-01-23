; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296096 () Bool)

(assert start!296096)

(declare-fun res!1284691 () Bool)

(declare-fun e!1963415 () Bool)

(assert (=> start!296096 (=> (not res!1284691) (not e!1963415))))

(declare-datatypes ((C!19548 0))(
  ( (C!19549 (val!11810 Int)) )
))
(declare-datatypes ((Regex!9681 0))(
  ( (ElementMatch!9681 (c!529567 C!19548)) (Concat!15002 (regOne!19874 Regex!9681) (regTwo!19874 Regex!9681)) (EmptyExpr!9681) (Star!9681 (reg!10010 Regex!9681)) (EmptyLang!9681) (Union!9681 (regOne!19875 Regex!9681) (regTwo!19875 Regex!9681)) )
))
(declare-fun r!17345 () Regex!9681)

(declare-fun validRegex!4414 (Regex!9681) Bool)

(assert (=> start!296096 (= res!1284691 (validRegex!4414 r!17345))))

(assert (=> start!296096 e!1963415))

(declare-fun e!1963414 () Bool)

(assert (=> start!296096 e!1963414))

(declare-fun b!3149376 () Bool)

(declare-fun tp!987972 () Bool)

(declare-fun tp!987975 () Bool)

(assert (=> b!3149376 (= e!1963414 (and tp!987972 tp!987975))))

(declare-fun b!3149377 () Bool)

(declare-fun regexDepth!131 (Regex!9681) Int)

(assert (=> b!3149377 (= e!1963415 (>= (regexDepth!131 (regTwo!19874 r!17345)) (regexDepth!131 r!17345)))))

(declare-fun lt!1061828 () Regex!9681)

(declare-fun simplify!618 (Regex!9681) Regex!9681)

(assert (=> b!3149377 (= lt!1061828 (simplify!618 (regOne!19874 r!17345)))))

(declare-fun b!3149378 () Bool)

(declare-fun res!1284692 () Bool)

(assert (=> b!3149378 (=> (not res!1284692) (not e!1963415))))

(get-info :version)

(assert (=> b!3149378 (= res!1284692 (and (not ((_ is EmptyLang!9681) r!17345)) (not ((_ is ElementMatch!9681) r!17345)) (not ((_ is EmptyExpr!9681) r!17345)) (not ((_ is Star!9681) r!17345)) (not ((_ is Union!9681) r!17345))))))

(declare-fun b!3149379 () Bool)

(declare-fun tp!987973 () Bool)

(declare-fun tp!987974 () Bool)

(assert (=> b!3149379 (= e!1963414 (and tp!987973 tp!987974))))

(declare-fun b!3149380 () Bool)

(declare-fun tp_is_empty!16925 () Bool)

(assert (=> b!3149380 (= e!1963414 tp_is_empty!16925)))

(declare-fun b!3149381 () Bool)

(declare-fun tp!987971 () Bool)

(assert (=> b!3149381 (= e!1963414 tp!987971)))

(assert (= (and start!296096 res!1284691) b!3149378))

(assert (= (and b!3149378 res!1284692) b!3149377))

(assert (= (and start!296096 ((_ is ElementMatch!9681) r!17345)) b!3149380))

(assert (= (and start!296096 ((_ is Concat!15002) r!17345)) b!3149379))

(assert (= (and start!296096 ((_ is Star!9681) r!17345)) b!3149381))

(assert (= (and start!296096 ((_ is Union!9681) r!17345)) b!3149376))

(declare-fun m!3421193 () Bool)

(assert (=> start!296096 m!3421193))

(declare-fun m!3421195 () Bool)

(assert (=> b!3149377 m!3421195))

(declare-fun m!3421197 () Bool)

(assert (=> b!3149377 m!3421197))

(declare-fun m!3421199 () Bool)

(assert (=> b!3149377 m!3421199))

(check-sat (not b!3149381) tp_is_empty!16925 (not b!3149379) (not b!3149376) (not start!296096) (not b!3149377))
(check-sat)
(get-model)

(declare-fun b!3149477 () Bool)

(declare-fun c!529605 () Bool)

(assert (=> b!3149477 (= c!529605 ((_ is Star!9681) (regTwo!19874 r!17345)))))

(declare-fun e!1963486 () Bool)

(declare-fun e!1963483 () Bool)

(assert (=> b!3149477 (= e!1963486 e!1963483)))

(declare-fun b!3149478 () Bool)

(declare-fun e!1963482 () Bool)

(declare-fun e!1963485 () Bool)

(assert (=> b!3149478 (= e!1963482 e!1963485)))

(declare-fun res!1284722 () Bool)

(declare-fun lt!1061833 () Int)

(declare-fun call!227123 () Int)

(assert (=> b!3149478 (= res!1284722 (> lt!1061833 call!227123))))

(assert (=> b!3149478 (=> (not res!1284722) (not e!1963485))))

(declare-fun b!3149479 () Bool)

(assert (=> b!3149479 (= e!1963483 (= lt!1061833 1))))

(declare-fun bm!227113 () Bool)

(declare-fun c!529608 () Bool)

(assert (=> bm!227113 (= call!227123 (regexDepth!131 (ite c!529608 (regOne!19875 (regTwo!19874 r!17345)) (regOne!19874 (regTwo!19874 r!17345)))))))

(declare-fun call!227121 () Int)

(declare-fun bm!227114 () Bool)

(declare-fun c!529603 () Bool)

(assert (=> bm!227114 (= call!227121 (regexDepth!131 (ite c!529608 (regTwo!19875 (regTwo!19874 r!17345)) (ite c!529603 (regTwo!19874 (regTwo!19874 r!17345)) (reg!10010 (regTwo!19874 r!17345))))))))

(declare-fun b!3149480 () Bool)

(declare-fun e!1963481 () Int)

(declare-fun call!227118 () Int)

(assert (=> b!3149480 (= e!1963481 (+ 1 call!227118))))

(declare-fun b!3149481 () Bool)

(declare-fun res!1284721 () Bool)

(declare-fun e!1963479 () Bool)

(assert (=> b!3149481 (=> (not res!1284721) (not e!1963479))))

(assert (=> b!3149481 (= res!1284721 (> lt!1061833 call!227123))))

(assert (=> b!3149481 (= e!1963486 e!1963479)))

(declare-fun b!3149482 () Bool)

(declare-fun call!227122 () Int)

(assert (=> b!3149482 (= e!1963479 (> lt!1061833 call!227122))))

(declare-fun bm!227115 () Bool)

(declare-fun call!227124 () Int)

(declare-fun call!227120 () Int)

(assert (=> bm!227115 (= call!227124 call!227120)))

(declare-fun b!3149483 () Bool)

(declare-fun e!1963484 () Int)

(assert (=> b!3149483 (= e!1963481 e!1963484)))

(declare-fun c!529606 () Bool)

(assert (=> b!3149483 (= c!529606 ((_ is Concat!15002) (regTwo!19874 r!17345)))))

(declare-fun b!3149484 () Bool)

(declare-fun e!1963477 () Int)

(declare-fun e!1963478 () Int)

(assert (=> b!3149484 (= e!1963477 e!1963478)))

(declare-fun c!529604 () Bool)

(assert (=> b!3149484 (= c!529604 ((_ is Star!9681) (regTwo!19874 r!17345)))))

(declare-fun b!3149485 () Bool)

(declare-fun c!529607 () Bool)

(assert (=> b!3149485 (= c!529607 ((_ is Union!9681) (regTwo!19874 r!17345)))))

(assert (=> b!3149485 (= e!1963478 e!1963481)))

(declare-fun b!3149486 () Bool)

(assert (=> b!3149486 (= e!1963477 1)))

(declare-fun b!3149487 () Bool)

(assert (=> b!3149487 (= e!1963485 (> lt!1061833 call!227121))))

(declare-fun b!3149488 () Bool)

(declare-fun e!1963480 () Bool)

(assert (=> b!3149488 (= e!1963480 e!1963482)))

(assert (=> b!3149488 (= c!529608 ((_ is Union!9681) (regTwo!19874 r!17345)))))

(declare-fun b!3149489 () Bool)

(assert (=> b!3149489 (= e!1963483 (> lt!1061833 call!227122))))

(declare-fun b!3149490 () Bool)

(assert (=> b!3149490 (= e!1963484 (+ 1 call!227118))))

(declare-fun d!866862 () Bool)

(assert (=> d!866862 e!1963480))

(declare-fun res!1284720 () Bool)

(assert (=> d!866862 (=> (not res!1284720) (not e!1963480))))

(assert (=> d!866862 (= res!1284720 (> lt!1061833 0))))

(assert (=> d!866862 (= lt!1061833 e!1963477)))

(declare-fun c!529602 () Bool)

(assert (=> d!866862 (= c!529602 ((_ is ElementMatch!9681) (regTwo!19874 r!17345)))))

(assert (=> d!866862 (= (regexDepth!131 (regTwo!19874 r!17345)) lt!1061833)))

(declare-fun b!3149491 () Bool)

(assert (=> b!3149491 (= e!1963482 e!1963486)))

(assert (=> b!3149491 (= c!529603 ((_ is Concat!15002) (regTwo!19874 r!17345)))))

(declare-fun bm!227116 () Bool)

(assert (=> bm!227116 (= call!227120 (regexDepth!131 (ite c!529604 (reg!10010 (regTwo!19874 r!17345)) (ite c!529607 (regOne!19875 (regTwo!19874 r!17345)) (regTwo!19874 (regTwo!19874 r!17345))))))))

(declare-fun bm!227117 () Bool)

(declare-fun call!227119 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!227117 (= call!227118 (maxBigInt!0 (ite c!529607 call!227124 call!227119) (ite c!529607 call!227119 call!227124)))))

(declare-fun bm!227118 () Bool)

(assert (=> bm!227118 (= call!227119 (regexDepth!131 (ite c!529607 (regTwo!19875 (regTwo!19874 r!17345)) (regOne!19874 (regTwo!19874 r!17345)))))))

(declare-fun b!3149492 () Bool)

(assert (=> b!3149492 (= e!1963484 1)))

(declare-fun b!3149493 () Bool)

(assert (=> b!3149493 (= e!1963478 (+ 1 call!227120))))

(declare-fun bm!227119 () Bool)

(assert (=> bm!227119 (= call!227122 call!227121)))

(assert (= (and d!866862 c!529602) b!3149486))

(assert (= (and d!866862 (not c!529602)) b!3149484))

(assert (= (and b!3149484 c!529604) b!3149493))

(assert (= (and b!3149484 (not c!529604)) b!3149485))

(assert (= (and b!3149485 c!529607) b!3149480))

(assert (= (and b!3149485 (not c!529607)) b!3149483))

(assert (= (and b!3149483 c!529606) b!3149490))

(assert (= (and b!3149483 (not c!529606)) b!3149492))

(assert (= (or b!3149480 b!3149490) bm!227115))

(assert (= (or b!3149480 b!3149490) bm!227118))

(assert (= (or b!3149480 b!3149490) bm!227117))

(assert (= (or b!3149493 bm!227115) bm!227116))

(assert (= (and d!866862 res!1284720) b!3149488))

(assert (= (and b!3149488 c!529608) b!3149478))

(assert (= (and b!3149488 (not c!529608)) b!3149491))

(assert (= (and b!3149478 res!1284722) b!3149487))

(assert (= (and b!3149491 c!529603) b!3149481))

(assert (= (and b!3149491 (not c!529603)) b!3149477))

(assert (= (and b!3149481 res!1284721) b!3149482))

(assert (= (and b!3149477 c!529605) b!3149489))

(assert (= (and b!3149477 (not c!529605)) b!3149479))

(assert (= (or b!3149482 b!3149489) bm!227119))

(assert (= (or b!3149478 b!3149481) bm!227113))

(assert (= (or b!3149487 bm!227119) bm!227114))

(declare-fun m!3421207 () Bool)

(assert (=> bm!227117 m!3421207))

(declare-fun m!3421209 () Bool)

(assert (=> bm!227118 m!3421209))

(declare-fun m!3421211 () Bool)

(assert (=> bm!227114 m!3421211))

(declare-fun m!3421213 () Bool)

(assert (=> bm!227113 m!3421213))

(declare-fun m!3421215 () Bool)

(assert (=> bm!227116 m!3421215))

(assert (=> b!3149377 d!866862))

(declare-fun b!3149494 () Bool)

(declare-fun c!529612 () Bool)

(assert (=> b!3149494 (= c!529612 ((_ is Star!9681) r!17345))))

(declare-fun e!1963496 () Bool)

(declare-fun e!1963493 () Bool)

(assert (=> b!3149494 (= e!1963496 e!1963493)))

(declare-fun b!3149495 () Bool)

(declare-fun e!1963492 () Bool)

(declare-fun e!1963495 () Bool)

(assert (=> b!3149495 (= e!1963492 e!1963495)))

(declare-fun res!1284725 () Bool)

(declare-fun lt!1061834 () Int)

(declare-fun call!227130 () Int)

(assert (=> b!3149495 (= res!1284725 (> lt!1061834 call!227130))))

(assert (=> b!3149495 (=> (not res!1284725) (not e!1963495))))

(declare-fun b!3149496 () Bool)

(assert (=> b!3149496 (= e!1963493 (= lt!1061834 1))))

(declare-fun bm!227120 () Bool)

(declare-fun c!529615 () Bool)

(assert (=> bm!227120 (= call!227130 (regexDepth!131 (ite c!529615 (regOne!19875 r!17345) (regOne!19874 r!17345))))))

(declare-fun call!227128 () Int)

(declare-fun c!529610 () Bool)

(declare-fun bm!227121 () Bool)

(assert (=> bm!227121 (= call!227128 (regexDepth!131 (ite c!529615 (regTwo!19875 r!17345) (ite c!529610 (regTwo!19874 r!17345) (reg!10010 r!17345)))))))

(declare-fun b!3149497 () Bool)

(declare-fun e!1963491 () Int)

(declare-fun call!227125 () Int)

(assert (=> b!3149497 (= e!1963491 (+ 1 call!227125))))

(declare-fun b!3149498 () Bool)

(declare-fun res!1284724 () Bool)

(declare-fun e!1963489 () Bool)

(assert (=> b!3149498 (=> (not res!1284724) (not e!1963489))))

(assert (=> b!3149498 (= res!1284724 (> lt!1061834 call!227130))))

(assert (=> b!3149498 (= e!1963496 e!1963489)))

(declare-fun b!3149499 () Bool)

(declare-fun call!227129 () Int)

(assert (=> b!3149499 (= e!1963489 (> lt!1061834 call!227129))))

(declare-fun bm!227122 () Bool)

(declare-fun call!227131 () Int)

(declare-fun call!227127 () Int)

(assert (=> bm!227122 (= call!227131 call!227127)))

(declare-fun b!3149500 () Bool)

(declare-fun e!1963494 () Int)

(assert (=> b!3149500 (= e!1963491 e!1963494)))

(declare-fun c!529613 () Bool)

(assert (=> b!3149500 (= c!529613 ((_ is Concat!15002) r!17345))))

(declare-fun b!3149501 () Bool)

(declare-fun e!1963487 () Int)

(declare-fun e!1963488 () Int)

(assert (=> b!3149501 (= e!1963487 e!1963488)))

(declare-fun c!529611 () Bool)

(assert (=> b!3149501 (= c!529611 ((_ is Star!9681) r!17345))))

(declare-fun b!3149502 () Bool)

(declare-fun c!529614 () Bool)

(assert (=> b!3149502 (= c!529614 ((_ is Union!9681) r!17345))))

(assert (=> b!3149502 (= e!1963488 e!1963491)))

(declare-fun b!3149503 () Bool)

(assert (=> b!3149503 (= e!1963487 1)))

(declare-fun b!3149504 () Bool)

(assert (=> b!3149504 (= e!1963495 (> lt!1061834 call!227128))))

(declare-fun b!3149505 () Bool)

(declare-fun e!1963490 () Bool)

(assert (=> b!3149505 (= e!1963490 e!1963492)))

(assert (=> b!3149505 (= c!529615 ((_ is Union!9681) r!17345))))

(declare-fun b!3149506 () Bool)

(assert (=> b!3149506 (= e!1963493 (> lt!1061834 call!227129))))

(declare-fun b!3149507 () Bool)

(assert (=> b!3149507 (= e!1963494 (+ 1 call!227125))))

(declare-fun d!866866 () Bool)

(assert (=> d!866866 e!1963490))

(declare-fun res!1284723 () Bool)

(assert (=> d!866866 (=> (not res!1284723) (not e!1963490))))

(assert (=> d!866866 (= res!1284723 (> lt!1061834 0))))

(assert (=> d!866866 (= lt!1061834 e!1963487)))

(declare-fun c!529609 () Bool)

(assert (=> d!866866 (= c!529609 ((_ is ElementMatch!9681) r!17345))))

(assert (=> d!866866 (= (regexDepth!131 r!17345) lt!1061834)))

(declare-fun b!3149508 () Bool)

(assert (=> b!3149508 (= e!1963492 e!1963496)))

(assert (=> b!3149508 (= c!529610 ((_ is Concat!15002) r!17345))))

(declare-fun bm!227123 () Bool)

(assert (=> bm!227123 (= call!227127 (regexDepth!131 (ite c!529611 (reg!10010 r!17345) (ite c!529614 (regOne!19875 r!17345) (regTwo!19874 r!17345)))))))

(declare-fun call!227126 () Int)

(declare-fun bm!227124 () Bool)

(assert (=> bm!227124 (= call!227125 (maxBigInt!0 (ite c!529614 call!227131 call!227126) (ite c!529614 call!227126 call!227131)))))

(declare-fun bm!227125 () Bool)

(assert (=> bm!227125 (= call!227126 (regexDepth!131 (ite c!529614 (regTwo!19875 r!17345) (regOne!19874 r!17345))))))

(declare-fun b!3149509 () Bool)

(assert (=> b!3149509 (= e!1963494 1)))

(declare-fun b!3149510 () Bool)

(assert (=> b!3149510 (= e!1963488 (+ 1 call!227127))))

(declare-fun bm!227126 () Bool)

(assert (=> bm!227126 (= call!227129 call!227128)))

(assert (= (and d!866866 c!529609) b!3149503))

(assert (= (and d!866866 (not c!529609)) b!3149501))

(assert (= (and b!3149501 c!529611) b!3149510))

(assert (= (and b!3149501 (not c!529611)) b!3149502))

(assert (= (and b!3149502 c!529614) b!3149497))

(assert (= (and b!3149502 (not c!529614)) b!3149500))

(assert (= (and b!3149500 c!529613) b!3149507))

(assert (= (and b!3149500 (not c!529613)) b!3149509))

(assert (= (or b!3149497 b!3149507) bm!227122))

(assert (= (or b!3149497 b!3149507) bm!227125))

(assert (= (or b!3149497 b!3149507) bm!227124))

(assert (= (or b!3149510 bm!227122) bm!227123))

(assert (= (and d!866866 res!1284723) b!3149505))

(assert (= (and b!3149505 c!529615) b!3149495))

(assert (= (and b!3149505 (not c!529615)) b!3149508))

(assert (= (and b!3149495 res!1284725) b!3149504))

(assert (= (and b!3149508 c!529610) b!3149498))

(assert (= (and b!3149508 (not c!529610)) b!3149494))

(assert (= (and b!3149498 res!1284724) b!3149499))

(assert (= (and b!3149494 c!529612) b!3149506))

(assert (= (and b!3149494 (not c!529612)) b!3149496))

(assert (= (or b!3149499 b!3149506) bm!227126))

(assert (= (or b!3149495 b!3149498) bm!227120))

(assert (= (or b!3149504 bm!227126) bm!227121))

(declare-fun m!3421217 () Bool)

(assert (=> bm!227124 m!3421217))

(declare-fun m!3421219 () Bool)

(assert (=> bm!227125 m!3421219))

(declare-fun m!3421221 () Bool)

(assert (=> bm!227121 m!3421221))

(declare-fun m!3421223 () Bool)

(assert (=> bm!227120 m!3421223))

(declare-fun m!3421225 () Bool)

(assert (=> bm!227123 m!3421225))

(assert (=> b!3149377 d!866866))

(declare-fun b!3149645 () Bool)

(declare-fun c!529683 () Bool)

(declare-fun lt!1061866 () Regex!9681)

(declare-fun isEmptyExpr!708 (Regex!9681) Bool)

(assert (=> b!3149645 (= c!529683 (isEmptyExpr!708 lt!1061866))))

(declare-fun e!1963580 () Regex!9681)

(declare-fun e!1963581 () Regex!9681)

(assert (=> b!3149645 (= e!1963580 e!1963581)))

(declare-fun b!3149647 () Bool)

(declare-fun e!1963586 () Regex!9681)

(declare-fun e!1963585 () Regex!9681)

(assert (=> b!3149647 (= e!1963586 e!1963585)))

(declare-fun c!529681 () Bool)

(assert (=> b!3149647 (= c!529681 ((_ is ElementMatch!9681) (regOne!19874 r!17345)))))

(declare-fun b!3149648 () Bool)

(declare-fun c!529684 () Bool)

(declare-fun call!227175 () Bool)

(assert (=> b!3149648 (= c!529684 call!227175)))

(declare-fun e!1963582 () Regex!9681)

(declare-fun e!1963574 () Regex!9681)

(assert (=> b!3149648 (= e!1963582 e!1963574)))

(declare-fun b!3149649 () Bool)

(assert (=> b!3149649 (= e!1963586 EmptyLang!9681)))

(declare-fun c!529675 () Bool)

(declare-fun lt!1061862 () Regex!9681)

(declare-fun bm!227169 () Bool)

(declare-fun isEmptyLang!713 (Regex!9681) Bool)

(assert (=> bm!227169 (= call!227175 (isEmptyLang!713 (ite c!529675 lt!1061862 lt!1061866)))))

(declare-fun b!3149650 () Bool)

(declare-fun c!529682 () Bool)

(assert (=> b!3149650 (= c!529682 ((_ is EmptyExpr!9681) (regOne!19874 r!17345)))))

(declare-fun e!1963577 () Regex!9681)

(assert (=> b!3149650 (= e!1963585 e!1963577)))

(declare-fun b!3149651 () Bool)

(assert (=> b!3149651 (= e!1963577 EmptyExpr!9681)))

(declare-fun b!3149652 () Bool)

(declare-fun e!1963578 () Bool)

(declare-fun lt!1061864 () Regex!9681)

(declare-fun nullable!3315 (Regex!9681) Bool)

(assert (=> b!3149652 (= e!1963578 (= (nullable!3315 lt!1061864) (nullable!3315 (regOne!19874 r!17345))))))

(declare-fun b!3149653 () Bool)

(declare-fun e!1963584 () Regex!9681)

(declare-fun lt!1061865 () Regex!9681)

(assert (=> b!3149653 (= e!1963584 (Star!9681 lt!1061865))))

(declare-fun b!3149654 () Bool)

(declare-fun e!1963579 () Regex!9681)

(declare-fun lt!1061861 () Regex!9681)

(assert (=> b!3149654 (= e!1963579 (Concat!15002 lt!1061866 lt!1061861))))

(declare-fun bm!227170 () Bool)

(declare-fun call!227178 () Regex!9681)

(declare-fun call!227180 () Regex!9681)

(assert (=> bm!227170 (= call!227178 call!227180)))

(declare-fun b!3149655 () Bool)

(assert (=> b!3149655 (= e!1963579 lt!1061866)))

(declare-fun bm!227171 () Bool)

(declare-fun c!529678 () Bool)

(assert (=> bm!227171 (= call!227180 (simplify!618 (ite c!529678 (reg!10010 (regOne!19874 r!17345)) (ite c!529675 (regOne!19875 (regOne!19874 r!17345)) (regOne!19874 (regOne!19874 r!17345))))))))

(declare-fun b!3149656 () Bool)

(assert (=> b!3149656 (= e!1963582 lt!1061862)))

(declare-fun d!866868 () Bool)

(assert (=> d!866868 e!1963578))

(declare-fun res!1284744 () Bool)

(assert (=> d!866868 (=> (not res!1284744) (not e!1963578))))

(assert (=> d!866868 (= res!1284744 (validRegex!4414 lt!1061864))))

(assert (=> d!866868 (= lt!1061864 e!1963586)))

(declare-fun c!529679 () Bool)

(assert (=> d!866868 (= c!529679 ((_ is EmptyLang!9681) (regOne!19874 r!17345)))))

(assert (=> d!866868 (validRegex!4414 (regOne!19874 r!17345))))

(assert (=> d!866868 (= (simplify!618 (regOne!19874 r!17345)) lt!1061864)))

(declare-fun b!3149646 () Bool)

(assert (=> b!3149646 (= e!1963585 (regOne!19874 r!17345))))

(declare-fun b!3149657 () Bool)

(declare-fun lt!1061863 () Regex!9681)

(assert (=> b!3149657 (= e!1963574 lt!1061863)))

(declare-fun call!227174 () Bool)

(declare-fun bm!227172 () Bool)

(assert (=> bm!227172 (= call!227174 (isEmptyExpr!708 (ite c!529678 lt!1061865 lt!1061861)))))

(declare-fun b!3149658 () Bool)

(assert (=> b!3149658 (= e!1963574 (Union!9681 lt!1061863 lt!1061862))))

(declare-fun b!3149659 () Bool)

(assert (=> b!3149659 (= e!1963581 e!1963579)))

(declare-fun c!529680 () Bool)

(assert (=> b!3149659 (= c!529680 call!227174)))

(declare-fun bm!227173 () Bool)

(declare-fun call!227177 () Bool)

(declare-fun call!227176 () Bool)

(assert (=> bm!227173 (= call!227177 call!227176)))

(declare-fun bm!227174 () Bool)

(assert (=> bm!227174 (= call!227176 (isEmptyLang!713 (ite c!529678 lt!1061865 (ite c!529675 lt!1061863 lt!1061861))))))

(declare-fun b!3149660 () Bool)

(declare-fun e!1963583 () Regex!9681)

(assert (=> b!3149660 (= e!1963583 e!1963580)))

(assert (=> b!3149660 (= lt!1061866 call!227178)))

(declare-fun call!227179 () Regex!9681)

(assert (=> b!3149660 (= lt!1061861 call!227179)))

(declare-fun res!1284746 () Bool)

(assert (=> b!3149660 (= res!1284746 call!227175)))

(declare-fun e!1963576 () Bool)

(assert (=> b!3149660 (=> res!1284746 e!1963576)))

(declare-fun c!529674 () Bool)

(assert (=> b!3149660 (= c!529674 e!1963576)))

(declare-fun b!3149661 () Bool)

(declare-fun e!1963575 () Bool)

(assert (=> b!3149661 (= e!1963575 call!227174)))

(declare-fun b!3149662 () Bool)

(declare-fun e!1963573 () Regex!9681)

(assert (=> b!3149662 (= e!1963577 e!1963573)))

(assert (=> b!3149662 (= c!529678 ((_ is Star!9681) (regOne!19874 r!17345)))))

(declare-fun b!3149663 () Bool)

(declare-fun c!529677 () Bool)

(assert (=> b!3149663 (= c!529677 e!1963575)))

(declare-fun res!1284745 () Bool)

(assert (=> b!3149663 (=> res!1284745 e!1963575)))

(assert (=> b!3149663 (= res!1284745 call!227176)))

(assert (=> b!3149663 (= lt!1061865 call!227180)))

(assert (=> b!3149663 (= e!1963573 e!1963584)))

(declare-fun b!3149664 () Bool)

(assert (=> b!3149664 (= c!529675 ((_ is Union!9681) (regOne!19874 r!17345)))))

(assert (=> b!3149664 (= e!1963573 e!1963583)))

(declare-fun b!3149665 () Bool)

(assert (=> b!3149665 (= e!1963580 EmptyLang!9681)))

(declare-fun b!3149666 () Bool)

(assert (=> b!3149666 (= e!1963581 lt!1061861)))

(declare-fun bm!227175 () Bool)

(assert (=> bm!227175 (= call!227179 (simplify!618 (ite c!529675 (regTwo!19875 (regOne!19874 r!17345)) (regTwo!19874 (regOne!19874 r!17345)))))))

(declare-fun b!3149667 () Bool)

(assert (=> b!3149667 (= e!1963584 EmptyExpr!9681)))

(declare-fun b!3149668 () Bool)

(assert (=> b!3149668 (= e!1963583 e!1963582)))

(assert (=> b!3149668 (= lt!1061863 call!227178)))

(assert (=> b!3149668 (= lt!1061862 call!227179)))

(declare-fun c!529676 () Bool)

(assert (=> b!3149668 (= c!529676 call!227177)))

(declare-fun b!3149669 () Bool)

(assert (=> b!3149669 (= e!1963576 call!227177)))

(assert (= (and d!866868 c!529679) b!3149649))

(assert (= (and d!866868 (not c!529679)) b!3149647))

(assert (= (and b!3149647 c!529681) b!3149646))

(assert (= (and b!3149647 (not c!529681)) b!3149650))

(assert (= (and b!3149650 c!529682) b!3149651))

(assert (= (and b!3149650 (not c!529682)) b!3149662))

(assert (= (and b!3149662 c!529678) b!3149663))

(assert (= (and b!3149662 (not c!529678)) b!3149664))

(assert (= (and b!3149663 (not res!1284745)) b!3149661))

(assert (= (and b!3149663 c!529677) b!3149667))

(assert (= (and b!3149663 (not c!529677)) b!3149653))

(assert (= (and b!3149664 c!529675) b!3149668))

(assert (= (and b!3149664 (not c!529675)) b!3149660))

(assert (= (and b!3149668 c!529676) b!3149656))

(assert (= (and b!3149668 (not c!529676)) b!3149648))

(assert (= (and b!3149648 c!529684) b!3149657))

(assert (= (and b!3149648 (not c!529684)) b!3149658))

(assert (= (and b!3149660 (not res!1284746)) b!3149669))

(assert (= (and b!3149660 c!529674) b!3149665))

(assert (= (and b!3149660 (not c!529674)) b!3149645))

(assert (= (and b!3149645 c!529683) b!3149666))

(assert (= (and b!3149645 (not c!529683)) b!3149659))

(assert (= (and b!3149659 c!529680) b!3149655))

(assert (= (and b!3149659 (not c!529680)) b!3149654))

(assert (= (or b!3149668 b!3149669) bm!227173))

(assert (= (or b!3149648 b!3149660) bm!227169))

(assert (= (or b!3149668 b!3149660) bm!227170))

(assert (= (or b!3149668 b!3149660) bm!227175))

(assert (= (or b!3149661 b!3149659) bm!227172))

(assert (= (or b!3149663 bm!227173) bm!227174))

(assert (= (or b!3149663 bm!227170) bm!227171))

(assert (= (and d!866868 res!1284744) b!3149652))

(declare-fun m!3421247 () Bool)

(assert (=> b!3149645 m!3421247))

(declare-fun m!3421249 () Bool)

(assert (=> bm!227174 m!3421249))

(declare-fun m!3421251 () Bool)

(assert (=> bm!227171 m!3421251))

(declare-fun m!3421253 () Bool)

(assert (=> bm!227172 m!3421253))

(declare-fun m!3421255 () Bool)

(assert (=> b!3149652 m!3421255))

(declare-fun m!3421257 () Bool)

(assert (=> b!3149652 m!3421257))

(declare-fun m!3421259 () Bool)

(assert (=> d!866868 m!3421259))

(declare-fun m!3421261 () Bool)

(assert (=> d!866868 m!3421261))

(declare-fun m!3421263 () Bool)

(assert (=> bm!227175 m!3421263))

(declare-fun m!3421265 () Bool)

(assert (=> bm!227169 m!3421265))

(assert (=> b!3149377 d!866868))

(declare-fun b!3149743 () Bool)

(declare-fun e!1963623 () Bool)

(declare-fun e!1963624 () Bool)

(assert (=> b!3149743 (= e!1963623 e!1963624)))

(declare-fun c!529700 () Bool)

(assert (=> b!3149743 (= c!529700 ((_ is Union!9681) r!17345))))

(declare-fun b!3149744 () Bool)

(declare-fun res!1284764 () Bool)

(declare-fun e!1963626 () Bool)

(assert (=> b!3149744 (=> res!1284764 e!1963626)))

(assert (=> b!3149744 (= res!1284764 (not ((_ is Concat!15002) r!17345)))))

(assert (=> b!3149744 (= e!1963624 e!1963626)))

(declare-fun b!3149745 () Bool)

(declare-fun e!1963622 () Bool)

(declare-fun call!227195 () Bool)

(assert (=> b!3149745 (= e!1963622 call!227195)))

(declare-fun b!3149746 () Bool)

(assert (=> b!3149746 (= e!1963623 e!1963622)))

(declare-fun res!1284763 () Bool)

(assert (=> b!3149746 (= res!1284763 (not (nullable!3315 (reg!10010 r!17345))))))

(assert (=> b!3149746 (=> (not res!1284763) (not e!1963622))))

(declare-fun d!866874 () Bool)

(declare-fun res!1284761 () Bool)

(declare-fun e!1963627 () Bool)

(assert (=> d!866874 (=> res!1284761 e!1963627)))

(assert (=> d!866874 (= res!1284761 ((_ is ElementMatch!9681) r!17345))))

(assert (=> d!866874 (= (validRegex!4414 r!17345) e!1963627)))

(declare-fun b!3149747 () Bool)

(declare-fun e!1963625 () Bool)

(declare-fun call!227196 () Bool)

(assert (=> b!3149747 (= e!1963625 call!227196)))

(declare-fun b!3149748 () Bool)

(assert (=> b!3149748 (= e!1963627 e!1963623)))

(declare-fun c!529701 () Bool)

(assert (=> b!3149748 (= c!529701 ((_ is Star!9681) r!17345))))

(declare-fun b!3149749 () Bool)

(declare-fun e!1963628 () Bool)

(declare-fun call!227194 () Bool)

(assert (=> b!3149749 (= e!1963628 call!227194)))

(declare-fun bm!227189 () Bool)

(assert (=> bm!227189 (= call!227196 call!227195)))

(declare-fun b!3149750 () Bool)

(assert (=> b!3149750 (= e!1963626 e!1963625)))

(declare-fun res!1284760 () Bool)

(assert (=> b!3149750 (=> (not res!1284760) (not e!1963625))))

(assert (=> b!3149750 (= res!1284760 call!227194)))

(declare-fun b!3149751 () Bool)

(declare-fun res!1284762 () Bool)

(assert (=> b!3149751 (=> (not res!1284762) (not e!1963628))))

(assert (=> b!3149751 (= res!1284762 call!227196)))

(assert (=> b!3149751 (= e!1963624 e!1963628)))

(declare-fun bm!227190 () Bool)

(assert (=> bm!227190 (= call!227194 (validRegex!4414 (ite c!529700 (regTwo!19875 r!17345) (regOne!19874 r!17345))))))

(declare-fun bm!227191 () Bool)

(assert (=> bm!227191 (= call!227195 (validRegex!4414 (ite c!529701 (reg!10010 r!17345) (ite c!529700 (regOne!19875 r!17345) (regTwo!19874 r!17345)))))))

(assert (= (and d!866874 (not res!1284761)) b!3149748))

(assert (= (and b!3149748 c!529701) b!3149746))

(assert (= (and b!3149748 (not c!529701)) b!3149743))

(assert (= (and b!3149746 res!1284763) b!3149745))

(assert (= (and b!3149743 c!529700) b!3149751))

(assert (= (and b!3149743 (not c!529700)) b!3149744))

(assert (= (and b!3149751 res!1284762) b!3149749))

(assert (= (and b!3149744 (not res!1284764)) b!3149750))

(assert (= (and b!3149750 res!1284760) b!3149747))

(assert (= (or b!3149749 b!3149750) bm!227190))

(assert (= (or b!3149751 b!3149747) bm!227189))

(assert (= (or b!3149745 bm!227189) bm!227191))

(declare-fun m!3421287 () Bool)

(assert (=> b!3149746 m!3421287))

(declare-fun m!3421289 () Bool)

(assert (=> bm!227190 m!3421289))

(declare-fun m!3421291 () Bool)

(assert (=> bm!227191 m!3421291))

(assert (=> start!296096 d!866874))

(declare-fun b!3149765 () Bool)

(declare-fun e!1963631 () Bool)

(declare-fun tp!988022 () Bool)

(declare-fun tp!988024 () Bool)

(assert (=> b!3149765 (= e!1963631 (and tp!988022 tp!988024))))

(declare-fun b!3149764 () Bool)

(declare-fun tp!988021 () Bool)

(assert (=> b!3149764 (= e!1963631 tp!988021)))

(declare-fun b!3149763 () Bool)

(declare-fun tp!988025 () Bool)

(declare-fun tp!988023 () Bool)

(assert (=> b!3149763 (= e!1963631 (and tp!988025 tp!988023))))

(declare-fun b!3149762 () Bool)

(assert (=> b!3149762 (= e!1963631 tp_is_empty!16925)))

(assert (=> b!3149376 (= tp!987972 e!1963631)))

(assert (= (and b!3149376 ((_ is ElementMatch!9681) (regOne!19875 r!17345))) b!3149762))

(assert (= (and b!3149376 ((_ is Concat!15002) (regOne!19875 r!17345))) b!3149763))

(assert (= (and b!3149376 ((_ is Star!9681) (regOne!19875 r!17345))) b!3149764))

(assert (= (and b!3149376 ((_ is Union!9681) (regOne!19875 r!17345))) b!3149765))

(declare-fun b!3149769 () Bool)

(declare-fun e!1963632 () Bool)

(declare-fun tp!988027 () Bool)

(declare-fun tp!988029 () Bool)

(assert (=> b!3149769 (= e!1963632 (and tp!988027 tp!988029))))

(declare-fun b!3149768 () Bool)

(declare-fun tp!988026 () Bool)

(assert (=> b!3149768 (= e!1963632 tp!988026)))

(declare-fun b!3149767 () Bool)

(declare-fun tp!988030 () Bool)

(declare-fun tp!988028 () Bool)

(assert (=> b!3149767 (= e!1963632 (and tp!988030 tp!988028))))

(declare-fun b!3149766 () Bool)

(assert (=> b!3149766 (= e!1963632 tp_is_empty!16925)))

(assert (=> b!3149376 (= tp!987975 e!1963632)))

(assert (= (and b!3149376 ((_ is ElementMatch!9681) (regTwo!19875 r!17345))) b!3149766))

(assert (= (and b!3149376 ((_ is Concat!15002) (regTwo!19875 r!17345))) b!3149767))

(assert (= (and b!3149376 ((_ is Star!9681) (regTwo!19875 r!17345))) b!3149768))

(assert (= (and b!3149376 ((_ is Union!9681) (regTwo!19875 r!17345))) b!3149769))

(declare-fun b!3149773 () Bool)

(declare-fun e!1963633 () Bool)

(declare-fun tp!988032 () Bool)

(declare-fun tp!988034 () Bool)

(assert (=> b!3149773 (= e!1963633 (and tp!988032 tp!988034))))

(declare-fun b!3149772 () Bool)

(declare-fun tp!988031 () Bool)

(assert (=> b!3149772 (= e!1963633 tp!988031)))

(declare-fun b!3149771 () Bool)

(declare-fun tp!988035 () Bool)

(declare-fun tp!988033 () Bool)

(assert (=> b!3149771 (= e!1963633 (and tp!988035 tp!988033))))

(declare-fun b!3149770 () Bool)

(assert (=> b!3149770 (= e!1963633 tp_is_empty!16925)))

(assert (=> b!3149381 (= tp!987971 e!1963633)))

(assert (= (and b!3149381 ((_ is ElementMatch!9681) (reg!10010 r!17345))) b!3149770))

(assert (= (and b!3149381 ((_ is Concat!15002) (reg!10010 r!17345))) b!3149771))

(assert (= (and b!3149381 ((_ is Star!9681) (reg!10010 r!17345))) b!3149772))

(assert (= (and b!3149381 ((_ is Union!9681) (reg!10010 r!17345))) b!3149773))

(declare-fun b!3149777 () Bool)

(declare-fun e!1963634 () Bool)

(declare-fun tp!988037 () Bool)

(declare-fun tp!988039 () Bool)

(assert (=> b!3149777 (= e!1963634 (and tp!988037 tp!988039))))

(declare-fun b!3149776 () Bool)

(declare-fun tp!988036 () Bool)

(assert (=> b!3149776 (= e!1963634 tp!988036)))

(declare-fun b!3149775 () Bool)

(declare-fun tp!988040 () Bool)

(declare-fun tp!988038 () Bool)

(assert (=> b!3149775 (= e!1963634 (and tp!988040 tp!988038))))

(declare-fun b!3149774 () Bool)

(assert (=> b!3149774 (= e!1963634 tp_is_empty!16925)))

(assert (=> b!3149379 (= tp!987973 e!1963634)))

(assert (= (and b!3149379 ((_ is ElementMatch!9681) (regOne!19874 r!17345))) b!3149774))

(assert (= (and b!3149379 ((_ is Concat!15002) (regOne!19874 r!17345))) b!3149775))

(assert (= (and b!3149379 ((_ is Star!9681) (regOne!19874 r!17345))) b!3149776))

(assert (= (and b!3149379 ((_ is Union!9681) (regOne!19874 r!17345))) b!3149777))

(declare-fun b!3149781 () Bool)

(declare-fun e!1963635 () Bool)

(declare-fun tp!988042 () Bool)

(declare-fun tp!988044 () Bool)

(assert (=> b!3149781 (= e!1963635 (and tp!988042 tp!988044))))

(declare-fun b!3149780 () Bool)

(declare-fun tp!988041 () Bool)

(assert (=> b!3149780 (= e!1963635 tp!988041)))

(declare-fun b!3149779 () Bool)

(declare-fun tp!988045 () Bool)

(declare-fun tp!988043 () Bool)

(assert (=> b!3149779 (= e!1963635 (and tp!988045 tp!988043))))

(declare-fun b!3149778 () Bool)

(assert (=> b!3149778 (= e!1963635 tp_is_empty!16925)))

(assert (=> b!3149379 (= tp!987974 e!1963635)))

(assert (= (and b!3149379 ((_ is ElementMatch!9681) (regTwo!19874 r!17345))) b!3149778))

(assert (= (and b!3149379 ((_ is Concat!15002) (regTwo!19874 r!17345))) b!3149779))

(assert (= (and b!3149379 ((_ is Star!9681) (regTwo!19874 r!17345))) b!3149780))

(assert (= (and b!3149379 ((_ is Union!9681) (regTwo!19874 r!17345))) b!3149781))

(check-sat (not b!3149775) (not bm!227120) (not bm!227116) tp_is_empty!16925 (not bm!227172) (not bm!227169) (not b!3149772) (not b!3149645) (not b!3149769) (not bm!227191) (not bm!227114) (not bm!227117) (not b!3149746) (not b!3149780) (not bm!227125) (not b!3149652) (not b!3149771) (not b!3149781) (not b!3149767) (not bm!227123) (not bm!227113) (not b!3149773) (not b!3149764) (not bm!227174) (not bm!227124) (not bm!227190) (not bm!227121) (not b!3149777) (not b!3149765) (not b!3149768) (not bm!227118) (not b!3149776) (not d!866868) (not b!3149779) (not bm!227175) (not b!3149763) (not bm!227171))
(check-sat)

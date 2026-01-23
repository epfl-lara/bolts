; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86190 () Bool)

(assert start!86190)

(declare-fun b!969396 () Bool)

(declare-fun e!625075 () Bool)

(declare-fun tp!296958 () Bool)

(assert (=> b!969396 (= e!625075 tp!296958)))

(declare-fun b!969397 () Bool)

(declare-fun tp!296959 () Bool)

(declare-fun tp!296955 () Bool)

(assert (=> b!969397 (= e!625075 (and tp!296959 tp!296955))))

(declare-fun b!969398 () Bool)

(declare-fun tp_is_empty!5037 () Bool)

(assert (=> b!969398 (= e!625075 tp_is_empty!5037)))

(declare-fun b!969399 () Bool)

(declare-fun e!625077 () Bool)

(declare-datatypes ((C!5964 0))(
  ( (C!5965 (val!3230 Int)) )
))
(declare-datatypes ((Regex!2697 0))(
  ( (ElementMatch!2697 (c!158058 C!5964)) (Concat!4530 (regOne!5906 Regex!2697) (regTwo!5906 Regex!2697)) (EmptyExpr!2697) (Star!2697 (reg!3026 Regex!2697)) (EmptyLang!2697) (Union!2697 (regOne!5907 Regex!2697) (regTwo!5907 Regex!2697)) )
))
(declare-fun r!15766 () Regex!2697)

(declare-datatypes ((List!9927 0))(
  ( (Nil!9911) (Cons!9911 (h!15312 C!5964) (t!100973 List!9927)) )
))
(declare-fun s!10566 () List!9927)

(declare-fun regexDepth!14 (Regex!2697) Int)

(declare-fun size!7947 (List!9927) Int)

(assert (=> b!969399 (= e!625077 (< (+ (regexDepth!14 r!15766) (size!7947 s!10566)) 0))))

(declare-fun res!440744 () Bool)

(assert (=> start!86190 (=> (not res!440744) (not e!625077))))

(declare-fun validRegex!1166 (Regex!2697) Bool)

(assert (=> start!86190 (= res!440744 (validRegex!1166 r!15766))))

(assert (=> start!86190 e!625077))

(assert (=> start!86190 e!625075))

(declare-fun e!625076 () Bool)

(assert (=> start!86190 e!625076))

(declare-fun b!969400 () Bool)

(declare-fun tp!296956 () Bool)

(declare-fun tp!296960 () Bool)

(assert (=> b!969400 (= e!625075 (and tp!296956 tp!296960))))

(declare-fun b!969401 () Bool)

(declare-fun tp!296957 () Bool)

(assert (=> b!969401 (= e!625076 (and tp_is_empty!5037 tp!296957))))

(assert (= (and start!86190 res!440744) b!969399))

(get-info :version)

(assert (= (and start!86190 ((_ is ElementMatch!2697) r!15766)) b!969398))

(assert (= (and start!86190 ((_ is Concat!4530) r!15766)) b!969400))

(assert (= (and start!86190 ((_ is Star!2697) r!15766)) b!969396))

(assert (= (and start!86190 ((_ is Union!2697) r!15766)) b!969397))

(assert (= (and start!86190 ((_ is Cons!9911) s!10566)) b!969401))

(declare-fun m!1174423 () Bool)

(assert (=> b!969399 m!1174423))

(declare-fun m!1174425 () Bool)

(assert (=> b!969399 m!1174425))

(declare-fun m!1174427 () Bool)

(assert (=> start!86190 m!1174427))

(check-sat (not b!969401) (not b!969400) (not b!969396) tp_is_empty!5037 (not b!969397) (not start!86190) (not b!969399))
(check-sat)
(get-model)

(declare-fun b!969447 () Bool)

(declare-fun e!625115 () Bool)

(declare-fun e!625118 () Bool)

(assert (=> b!969447 (= e!625115 e!625118)))

(declare-fun c!158070 () Bool)

(assert (=> b!969447 (= c!158070 ((_ is Union!2697) r!15766))))

(declare-fun d!286486 () Bool)

(declare-fun res!440773 () Bool)

(declare-fun e!625117 () Bool)

(assert (=> d!286486 (=> res!440773 e!625117)))

(assert (=> d!286486 (= res!440773 ((_ is ElementMatch!2697) r!15766))))

(assert (=> d!286486 (= (validRegex!1166 r!15766) e!625117)))

(declare-fun b!969448 () Bool)

(declare-fun e!625114 () Bool)

(declare-fun call!61433 () Bool)

(assert (=> b!969448 (= e!625114 call!61433)))

(declare-fun b!969449 () Bool)

(assert (=> b!969449 (= e!625117 e!625115)))

(declare-fun c!158069 () Bool)

(assert (=> b!969449 (= c!158069 ((_ is Star!2697) r!15766))))

(declare-fun bm!61426 () Bool)

(declare-fun call!61432 () Bool)

(assert (=> bm!61426 (= call!61432 (validRegex!1166 (ite c!158070 (regOne!5907 r!15766) (regOne!5906 r!15766))))))

(declare-fun bm!61427 () Bool)

(declare-fun call!61431 () Bool)

(assert (=> bm!61427 (= call!61433 call!61431)))

(declare-fun b!969450 () Bool)

(declare-fun res!440774 () Bool)

(declare-fun e!625119 () Bool)

(assert (=> b!969450 (=> (not res!440774) (not e!625119))))

(assert (=> b!969450 (= res!440774 call!61432)))

(assert (=> b!969450 (= e!625118 e!625119)))

(declare-fun b!969451 () Bool)

(declare-fun e!625116 () Bool)

(assert (=> b!969451 (= e!625115 e!625116)))

(declare-fun res!440771 () Bool)

(declare-fun nullable!821 (Regex!2697) Bool)

(assert (=> b!969451 (= res!440771 (not (nullable!821 (reg!3026 r!15766))))))

(assert (=> b!969451 (=> (not res!440771) (not e!625116))))

(declare-fun b!969452 () Bool)

(declare-fun e!625113 () Bool)

(assert (=> b!969452 (= e!625113 e!625114)))

(declare-fun res!440770 () Bool)

(assert (=> b!969452 (=> (not res!440770) (not e!625114))))

(assert (=> b!969452 (= res!440770 call!61432)))

(declare-fun b!969453 () Bool)

(assert (=> b!969453 (= e!625116 call!61431)))

(declare-fun b!969454 () Bool)

(declare-fun res!440772 () Bool)

(assert (=> b!969454 (=> res!440772 e!625113)))

(assert (=> b!969454 (= res!440772 (not ((_ is Concat!4530) r!15766)))))

(assert (=> b!969454 (= e!625118 e!625113)))

(declare-fun bm!61428 () Bool)

(assert (=> bm!61428 (= call!61431 (validRegex!1166 (ite c!158069 (reg!3026 r!15766) (ite c!158070 (regTwo!5907 r!15766) (regTwo!5906 r!15766)))))))

(declare-fun b!969455 () Bool)

(assert (=> b!969455 (= e!625119 call!61433)))

(assert (= (and d!286486 (not res!440773)) b!969449))

(assert (= (and b!969449 c!158069) b!969451))

(assert (= (and b!969449 (not c!158069)) b!969447))

(assert (= (and b!969451 res!440771) b!969453))

(assert (= (and b!969447 c!158070) b!969450))

(assert (= (and b!969447 (not c!158070)) b!969454))

(assert (= (and b!969450 res!440774) b!969455))

(assert (= (and b!969454 (not res!440772)) b!969452))

(assert (= (and b!969452 res!440770) b!969448))

(assert (= (or b!969455 b!969448) bm!61427))

(assert (= (or b!969450 b!969452) bm!61426))

(assert (= (or b!969453 bm!61427) bm!61428))

(declare-fun m!1174435 () Bool)

(assert (=> bm!61426 m!1174435))

(declare-fun m!1174437 () Bool)

(assert (=> b!969451 m!1174437))

(declare-fun m!1174439 () Bool)

(assert (=> bm!61428 m!1174439))

(assert (=> start!86190 d!286486))

(declare-fun b!969541 () Bool)

(declare-fun e!625178 () Int)

(declare-fun e!625172 () Int)

(assert (=> b!969541 (= e!625178 e!625172)))

(declare-fun c!158108 () Bool)

(assert (=> b!969541 (= c!158108 ((_ is Concat!4530) r!15766))))

(declare-fun b!969542 () Bool)

(declare-fun e!625173 () Bool)

(declare-fun lt!348713 () Int)

(declare-fun call!61470 () Int)

(assert (=> b!969542 (= e!625173 (> lt!348713 call!61470))))

(declare-fun bm!61464 () Bool)

(declare-fun call!61471 () Int)

(declare-fun c!158111 () Bool)

(declare-fun c!158107 () Bool)

(assert (=> bm!61464 (= call!61471 (regexDepth!14 (ite c!158111 (regOne!5907 r!15766) (ite c!158107 (regTwo!5906 r!15766) (reg!3026 r!15766)))))))

(declare-fun b!969543 () Bool)

(declare-fun e!625171 () Bool)

(declare-fun e!625174 () Bool)

(assert (=> b!969543 (= e!625171 e!625174)))

(assert (=> b!969543 (= c!158111 ((_ is Union!2697) r!15766))))

(declare-fun b!969544 () Bool)

(declare-fun e!625177 () Int)

(declare-fun call!61473 () Int)

(assert (=> b!969544 (= e!625177 (+ 1 call!61473))))

(declare-fun c!158109 () Bool)

(declare-fun c!158106 () Bool)

(declare-fun bm!61465 () Bool)

(assert (=> bm!61465 (= call!61473 (regexDepth!14 (ite c!158106 (reg!3026 r!15766) (ite c!158109 (regTwo!5907 r!15766) (regTwo!5906 r!15766)))))))

(declare-fun bm!61466 () Bool)

(declare-fun call!61474 () Int)

(assert (=> bm!61466 (= call!61474 call!61473)))

(declare-fun b!969545 () Bool)

(declare-fun e!625170 () Bool)

(assert (=> b!969545 (= e!625170 (= lt!348713 1))))

(declare-fun b!969546 () Bool)

(declare-fun res!440791 () Bool)

(declare-fun e!625179 () Bool)

(assert (=> b!969546 (=> (not res!440791) (not e!625179))))

(assert (=> b!969546 (= res!440791 (> lt!348713 call!61470))))

(declare-fun e!625176 () Bool)

(assert (=> b!969546 (= e!625176 e!625179)))

(declare-fun b!969548 () Bool)

(assert (=> b!969548 (= e!625174 e!625176)))

(assert (=> b!969548 (= c!158107 ((_ is Concat!4530) r!15766))))

(declare-fun bm!61467 () Bool)

(declare-fun call!61475 () Int)

(assert (=> bm!61467 (= call!61475 call!61471)))

(declare-fun b!969549 () Bool)

(declare-fun e!625175 () Int)

(assert (=> b!969549 (= e!625175 1)))

(declare-fun b!969550 () Bool)

(assert (=> b!969550 (= c!158109 ((_ is Union!2697) r!15766))))

(assert (=> b!969550 (= e!625177 e!625178)))

(declare-fun b!969551 () Bool)

(declare-fun call!61472 () Int)

(assert (=> b!969551 (= e!625178 (+ 1 call!61472))))

(declare-fun b!969547 () Bool)

(assert (=> b!969547 (= e!625175 e!625177)))

(assert (=> b!969547 (= c!158106 ((_ is Star!2697) r!15766))))

(declare-fun d!286490 () Bool)

(assert (=> d!286490 e!625171))

(declare-fun res!440792 () Bool)

(assert (=> d!286490 (=> (not res!440792) (not e!625171))))

(assert (=> d!286490 (= res!440792 (> lt!348713 0))))

(assert (=> d!286490 (= lt!348713 e!625175)))

(declare-fun c!158112 () Bool)

(assert (=> d!286490 (= c!158112 ((_ is ElementMatch!2697) r!15766))))

(assert (=> d!286490 (= (regexDepth!14 r!15766) lt!348713)))

(declare-fun b!969552 () Bool)

(assert (=> b!969552 (= e!625172 1)))

(declare-fun b!969553 () Bool)

(assert (=> b!969553 (= e!625170 (> lt!348713 call!61475))))

(declare-fun b!969554 () Bool)

(assert (=> b!969554 (= e!625179 (> lt!348713 call!61475))))

(declare-fun b!969555 () Bool)

(declare-fun c!158110 () Bool)

(assert (=> b!969555 (= c!158110 ((_ is Star!2697) r!15766))))

(assert (=> b!969555 (= e!625176 e!625170)))

(declare-fun bm!61468 () Bool)

(declare-fun call!61469 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!61468 (= call!61472 (maxBigInt!0 call!61469 call!61474))))

(declare-fun bm!61469 () Bool)

(assert (=> bm!61469 (= call!61469 (regexDepth!14 (ite c!158109 (regOne!5907 r!15766) (regOne!5906 r!15766))))))

(declare-fun b!969556 () Bool)

(assert (=> b!969556 (= e!625172 (+ 1 call!61472))))

(declare-fun bm!61470 () Bool)

(assert (=> bm!61470 (= call!61470 (regexDepth!14 (ite c!158111 (regTwo!5907 r!15766) (regOne!5906 r!15766))))))

(declare-fun b!969557 () Bool)

(assert (=> b!969557 (= e!625174 e!625173)))

(declare-fun res!440790 () Bool)

(assert (=> b!969557 (= res!440790 (> lt!348713 call!61471))))

(assert (=> b!969557 (=> (not res!440790) (not e!625173))))

(assert (= (and d!286490 c!158112) b!969549))

(assert (= (and d!286490 (not c!158112)) b!969547))

(assert (= (and b!969547 c!158106) b!969544))

(assert (= (and b!969547 (not c!158106)) b!969550))

(assert (= (and b!969550 c!158109) b!969551))

(assert (= (and b!969550 (not c!158109)) b!969541))

(assert (= (and b!969541 c!158108) b!969556))

(assert (= (and b!969541 (not c!158108)) b!969552))

(assert (= (or b!969551 b!969556) bm!61466))

(assert (= (or b!969551 b!969556) bm!61469))

(assert (= (or b!969551 b!969556) bm!61468))

(assert (= (or b!969544 bm!61466) bm!61465))

(assert (= (and d!286490 res!440792) b!969543))

(assert (= (and b!969543 c!158111) b!969557))

(assert (= (and b!969543 (not c!158111)) b!969548))

(assert (= (and b!969557 res!440790) b!969542))

(assert (= (and b!969548 c!158107) b!969546))

(assert (= (and b!969548 (not c!158107)) b!969555))

(assert (= (and b!969546 res!440791) b!969554))

(assert (= (and b!969555 c!158110) b!969553))

(assert (= (and b!969555 (not c!158110)) b!969545))

(assert (= (or b!969554 b!969553) bm!61467))

(assert (= (or b!969542 b!969546) bm!61470))

(assert (= (or b!969557 bm!61467) bm!61464))

(declare-fun m!1174451 () Bool)

(assert (=> bm!61468 m!1174451))

(declare-fun m!1174453 () Bool)

(assert (=> bm!61465 m!1174453))

(declare-fun m!1174455 () Bool)

(assert (=> bm!61464 m!1174455))

(declare-fun m!1174457 () Bool)

(assert (=> bm!61469 m!1174457))

(declare-fun m!1174459 () Bool)

(assert (=> bm!61470 m!1174459))

(assert (=> b!969399 d!286490))

(declare-fun d!286494 () Bool)

(declare-fun lt!348719 () Int)

(assert (=> d!286494 (>= lt!348719 0)))

(declare-fun e!625187 () Int)

(assert (=> d!286494 (= lt!348719 e!625187)))

(declare-fun c!158118 () Bool)

(assert (=> d!286494 (= c!158118 ((_ is Nil!9911) s!10566))))

(assert (=> d!286494 (= (size!7947 s!10566) lt!348719)))

(declare-fun b!969578 () Bool)

(assert (=> b!969578 (= e!625187 0)))

(declare-fun b!969579 () Bool)

(assert (=> b!969579 (= e!625187 (+ 1 (size!7947 (t!100973 s!10566))))))

(assert (= (and d!286494 c!158118) b!969578))

(assert (= (and d!286494 (not c!158118)) b!969579))

(declare-fun m!1174463 () Bool)

(assert (=> b!969579 m!1174463))

(assert (=> b!969399 d!286494))

(declare-fun b!969606 () Bool)

(declare-fun e!625196 () Bool)

(assert (=> b!969606 (= e!625196 tp_is_empty!5037)))

(assert (=> b!969397 (= tp!296959 e!625196)))

(declare-fun b!969608 () Bool)

(declare-fun tp!297002 () Bool)

(declare-fun tp!296998 () Bool)

(assert (=> b!969608 (= e!625196 (and tp!297002 tp!296998))))

(declare-fun b!969610 () Bool)

(declare-fun tp!297003 () Bool)

(declare-fun tp!296996 () Bool)

(assert (=> b!969610 (= e!625196 (and tp!297003 tp!296996))))

(declare-fun b!969609 () Bool)

(declare-fun tp!297000 () Bool)

(assert (=> b!969609 (= e!625196 tp!297000)))

(assert (= (and b!969397 ((_ is ElementMatch!2697) (regOne!5907 r!15766))) b!969606))

(assert (= (and b!969397 ((_ is Concat!4530) (regOne!5907 r!15766))) b!969608))

(assert (= (and b!969397 ((_ is Star!2697) (regOne!5907 r!15766))) b!969609))

(assert (= (and b!969397 ((_ is Union!2697) (regOne!5907 r!15766))) b!969610))

(declare-fun b!969615 () Bool)

(declare-fun e!625198 () Bool)

(assert (=> b!969615 (= e!625198 tp_is_empty!5037)))

(assert (=> b!969397 (= tp!296955 e!625198)))

(declare-fun b!969616 () Bool)

(declare-fun tp!297012 () Bool)

(declare-fun tp!297010 () Bool)

(assert (=> b!969616 (= e!625198 (and tp!297012 tp!297010))))

(declare-fun b!969618 () Bool)

(declare-fun tp!297013 () Bool)

(declare-fun tp!297009 () Bool)

(assert (=> b!969618 (= e!625198 (and tp!297013 tp!297009))))

(declare-fun b!969617 () Bool)

(declare-fun tp!297011 () Bool)

(assert (=> b!969617 (= e!625198 tp!297011)))

(assert (= (and b!969397 ((_ is ElementMatch!2697) (regTwo!5907 r!15766))) b!969615))

(assert (= (and b!969397 ((_ is Concat!4530) (regTwo!5907 r!15766))) b!969616))

(assert (= (and b!969397 ((_ is Star!2697) (regTwo!5907 r!15766))) b!969617))

(assert (= (and b!969397 ((_ is Union!2697) (regTwo!5907 r!15766))) b!969618))

(declare-fun b!969623 () Bool)

(declare-fun e!625200 () Bool)

(assert (=> b!969623 (= e!625200 tp_is_empty!5037)))

(assert (=> b!969396 (= tp!296958 e!625200)))

(declare-fun b!969624 () Bool)

(declare-fun tp!297022 () Bool)

(declare-fun tp!297020 () Bool)

(assert (=> b!969624 (= e!625200 (and tp!297022 tp!297020))))

(declare-fun b!969626 () Bool)

(declare-fun tp!297023 () Bool)

(declare-fun tp!297019 () Bool)

(assert (=> b!969626 (= e!625200 (and tp!297023 tp!297019))))

(declare-fun b!969625 () Bool)

(declare-fun tp!297021 () Bool)

(assert (=> b!969625 (= e!625200 tp!297021)))

(assert (= (and b!969396 ((_ is ElementMatch!2697) (reg!3026 r!15766))) b!969623))

(assert (= (and b!969396 ((_ is Concat!4530) (reg!3026 r!15766))) b!969624))

(assert (= (and b!969396 ((_ is Star!2697) (reg!3026 r!15766))) b!969625))

(assert (= (and b!969396 ((_ is Union!2697) (reg!3026 r!15766))) b!969626))

(declare-fun b!969631 () Bool)

(declare-fun e!625203 () Bool)

(declare-fun tp!297026 () Bool)

(assert (=> b!969631 (= e!625203 (and tp_is_empty!5037 tp!297026))))

(assert (=> b!969401 (= tp!296957 e!625203)))

(assert (= (and b!969401 ((_ is Cons!9911) (t!100973 s!10566))) b!969631))

(declare-fun b!969632 () Bool)

(declare-fun e!625204 () Bool)

(assert (=> b!969632 (= e!625204 tp_is_empty!5037)))

(assert (=> b!969400 (= tp!296956 e!625204)))

(declare-fun b!969633 () Bool)

(declare-fun tp!297030 () Bool)

(declare-fun tp!297028 () Bool)

(assert (=> b!969633 (= e!625204 (and tp!297030 tp!297028))))

(declare-fun b!969635 () Bool)

(declare-fun tp!297031 () Bool)

(declare-fun tp!297027 () Bool)

(assert (=> b!969635 (= e!625204 (and tp!297031 tp!297027))))

(declare-fun b!969634 () Bool)

(declare-fun tp!297029 () Bool)

(assert (=> b!969634 (= e!625204 tp!297029)))

(assert (= (and b!969400 ((_ is ElementMatch!2697) (regOne!5906 r!15766))) b!969632))

(assert (= (and b!969400 ((_ is Concat!4530) (regOne!5906 r!15766))) b!969633))

(assert (= (and b!969400 ((_ is Star!2697) (regOne!5906 r!15766))) b!969634))

(assert (= (and b!969400 ((_ is Union!2697) (regOne!5906 r!15766))) b!969635))

(declare-fun b!969636 () Bool)

(declare-fun e!625205 () Bool)

(assert (=> b!969636 (= e!625205 tp_is_empty!5037)))

(assert (=> b!969400 (= tp!296960 e!625205)))

(declare-fun b!969637 () Bool)

(declare-fun tp!297035 () Bool)

(declare-fun tp!297033 () Bool)

(assert (=> b!969637 (= e!625205 (and tp!297035 tp!297033))))

(declare-fun b!969639 () Bool)

(declare-fun tp!297036 () Bool)

(declare-fun tp!297032 () Bool)

(assert (=> b!969639 (= e!625205 (and tp!297036 tp!297032))))

(declare-fun b!969638 () Bool)

(declare-fun tp!297034 () Bool)

(assert (=> b!969638 (= e!625205 tp!297034)))

(assert (= (and b!969400 ((_ is ElementMatch!2697) (regTwo!5906 r!15766))) b!969636))

(assert (= (and b!969400 ((_ is Concat!4530) (regTwo!5906 r!15766))) b!969637))

(assert (= (and b!969400 ((_ is Star!2697) (regTwo!5906 r!15766))) b!969638))

(assert (= (and b!969400 ((_ is Union!2697) (regTwo!5906 r!15766))) b!969639))

(check-sat (not bm!61468) (not b!969451) (not b!969625) (not b!969639) (not b!969609) (not b!969624) (not bm!61428) (not b!969638) (not b!969610) (not b!969637) (not b!969626) (not bm!61469) (not b!969618) (not b!969634) tp_is_empty!5037 (not b!969617) (not b!969633) (not b!969631) (not bm!61464) (not bm!61465) (not b!969616) (not b!969635) (not b!969579) (not b!969608) (not bm!61426) (not bm!61470))
(check-sat)

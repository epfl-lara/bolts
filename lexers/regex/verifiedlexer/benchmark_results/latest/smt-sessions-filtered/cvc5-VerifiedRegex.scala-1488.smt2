; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79308 () Bool)

(assert start!79308)

(declare-fun b!877527 () Bool)

(assert (=> b!877527 true))

(assert (=> b!877527 true))

(declare-fun lambda!26596 () Int)

(declare-fun lambda!26595 () Int)

(assert (=> b!877527 (not (= lambda!26596 lambda!26595))))

(assert (=> b!877527 true))

(assert (=> b!877527 true))

(declare-fun b!877520 () Bool)

(declare-fun e!576542 () Bool)

(declare-fun tp_is_empty!4111 () Bool)

(declare-fun tp!277430 () Bool)

(assert (=> b!877520 (= e!576542 (and tp_is_empty!4111 tp!277430))))

(declare-fun res!398990 () Bool)

(declare-fun e!576545 () Bool)

(assert (=> start!79308 (=> (not res!398990) (not e!576545))))

(declare-datatypes ((C!5038 0))(
  ( (C!5039 (val!2767 Int)) )
))
(declare-datatypes ((Regex!2234 0))(
  ( (ElementMatch!2234 (c!141899 C!5038)) (Concat!4067 (regOne!4980 Regex!2234) (regTwo!4980 Regex!2234)) (EmptyExpr!2234) (Star!2234 (reg!2563 Regex!2234)) (EmptyLang!2234) (Union!2234 (regOne!4981 Regex!2234) (regTwo!4981 Regex!2234)) )
))
(declare-fun r!15766 () Regex!2234)

(declare-fun validRegex!703 (Regex!2234) Bool)

(assert (=> start!79308 (= res!398990 (validRegex!703 r!15766))))

(assert (=> start!79308 e!576545))

(declare-fun e!576544 () Bool)

(assert (=> start!79308 e!576544))

(assert (=> start!79308 e!576542))

(declare-fun b!877521 () Bool)

(declare-fun e!576543 () Bool)

(assert (=> b!877521 (= e!576545 (not e!576543))))

(declare-fun res!398991 () Bool)

(assert (=> b!877521 (=> res!398991 e!576543)))

(declare-fun lt!330038 () Bool)

(assert (=> b!877521 (= res!398991 (or (not lt!330038) (and (is-Concat!4067 r!15766) (is-EmptyExpr!2234 (regOne!4980 r!15766))) (not (is-Concat!4067 r!15766)) (not (is-EmptyExpr!2234 (regTwo!4980 r!15766)))))))

(declare-datatypes ((List!9464 0))(
  ( (Nil!9448) (Cons!9448 (h!14849 C!5038) (t!100510 List!9464)) )
))
(declare-fun s!10566 () List!9464)

(declare-fun matchRSpec!35 (Regex!2234 List!9464) Bool)

(assert (=> b!877521 (= lt!330038 (matchRSpec!35 r!15766 s!10566))))

(declare-fun matchR!772 (Regex!2234 List!9464) Bool)

(assert (=> b!877521 (= lt!330038 (matchR!772 r!15766 s!10566))))

(declare-datatypes ((Unit!14047 0))(
  ( (Unit!14048) )
))
(declare-fun lt!330040 () Unit!14047)

(declare-fun mainMatchTheorem!35 (Regex!2234 List!9464) Unit!14047)

(assert (=> b!877521 (= lt!330040 (mainMatchTheorem!35 r!15766 s!10566))))

(declare-fun b!877522 () Bool)

(assert (=> b!877522 (= e!576544 tp_is_empty!4111)))

(declare-fun b!877523 () Bool)

(declare-fun tp!277431 () Bool)

(declare-fun tp!277432 () Bool)

(assert (=> b!877523 (= e!576544 (and tp!277431 tp!277432))))

(declare-fun b!877524 () Bool)

(declare-fun res!398989 () Bool)

(assert (=> b!877524 (=> res!398989 e!576543)))

(declare-fun isEmpty!5637 (List!9464) Bool)

(assert (=> b!877524 (= res!398989 (isEmpty!5637 s!10566))))

(declare-fun b!877525 () Bool)

(declare-fun tp!277429 () Bool)

(declare-fun tp!277434 () Bool)

(assert (=> b!877525 (= e!576544 (and tp!277429 tp!277434))))

(declare-fun b!877526 () Bool)

(declare-fun tp!277433 () Bool)

(assert (=> b!877526 (= e!576544 tp!277433)))

(assert (=> b!877527 (= e!576543 (validRegex!703 (regOne!4980 r!15766)))))

(declare-fun Exists!31 (Int) Bool)

(assert (=> b!877527 (= (Exists!31 lambda!26595) (Exists!31 lambda!26596))))

(declare-fun lt!330041 () Unit!14047)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!23 (Regex!2234 Regex!2234 List!9464) Unit!14047)

(assert (=> b!877527 (= lt!330041 (lemmaExistCutMatchRandMatchRSpecEquivalent!23 (regOne!4980 r!15766) EmptyExpr!2234 s!10566))))

(declare-datatypes ((tuple2!10558 0))(
  ( (tuple2!10559 (_1!6105 List!9464) (_2!6105 List!9464)) )
))
(declare-datatypes ((Option!1921 0))(
  ( (None!1920) (Some!1920 (v!19337 tuple2!10558)) )
))
(declare-fun isDefined!1563 (Option!1921) Bool)

(declare-fun findConcatSeparation!27 (Regex!2234 Regex!2234 List!9464 List!9464 List!9464) Option!1921)

(assert (=> b!877527 (= (isDefined!1563 (findConcatSeparation!27 (regOne!4980 r!15766) EmptyExpr!2234 Nil!9448 s!10566 s!10566)) (Exists!31 lambda!26595))))

(declare-fun lt!330039 () Unit!14047)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!27 (Regex!2234 Regex!2234 List!9464) Unit!14047)

(assert (=> b!877527 (= lt!330039 (lemmaFindConcatSeparationEquivalentToExists!27 (regOne!4980 r!15766) EmptyExpr!2234 s!10566))))

(assert (= (and start!79308 res!398990) b!877521))

(assert (= (and b!877521 (not res!398991)) b!877524))

(assert (= (and b!877524 (not res!398989)) b!877527))

(assert (= (and start!79308 (is-ElementMatch!2234 r!15766)) b!877522))

(assert (= (and start!79308 (is-Concat!4067 r!15766)) b!877523))

(assert (= (and start!79308 (is-Star!2234 r!15766)) b!877526))

(assert (= (and start!79308 (is-Union!2234 r!15766)) b!877525))

(assert (= (and start!79308 (is-Cons!9448 s!10566)) b!877520))

(declare-fun m!1127721 () Bool)

(assert (=> start!79308 m!1127721))

(declare-fun m!1127723 () Bool)

(assert (=> b!877521 m!1127723))

(declare-fun m!1127725 () Bool)

(assert (=> b!877521 m!1127725))

(declare-fun m!1127727 () Bool)

(assert (=> b!877521 m!1127727))

(declare-fun m!1127729 () Bool)

(assert (=> b!877524 m!1127729))

(declare-fun m!1127731 () Bool)

(assert (=> b!877527 m!1127731))

(declare-fun m!1127733 () Bool)

(assert (=> b!877527 m!1127733))

(declare-fun m!1127735 () Bool)

(assert (=> b!877527 m!1127735))

(declare-fun m!1127737 () Bool)

(assert (=> b!877527 m!1127737))

(declare-fun m!1127739 () Bool)

(assert (=> b!877527 m!1127739))

(assert (=> b!877527 m!1127733))

(declare-fun m!1127741 () Bool)

(assert (=> b!877527 m!1127741))

(declare-fun m!1127743 () Bool)

(assert (=> b!877527 m!1127743))

(assert (=> b!877527 m!1127735))

(push 1)

(assert (not b!877520))

(assert (not b!877525))

(assert (not start!79308))

(assert tp_is_empty!4111)

(assert (not b!877523))

(assert (not b!877524))

(assert (not b!877526))

(assert (not b!877527))

(assert (not b!877521))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!877590 () Bool)

(declare-fun e!576583 () Bool)

(declare-fun call!51118 () Bool)

(assert (=> b!877590 (= e!576583 call!51118)))

(declare-fun b!877591 () Bool)

(declare-fun e!576579 () Bool)

(declare-fun e!576578 () Bool)

(assert (=> b!877591 (= e!576579 e!576578)))

(declare-fun res!399027 () Bool)

(declare-fun nullable!561 (Regex!2234) Bool)

(assert (=> b!877591 (= res!399027 (not (nullable!561 (reg!2563 r!15766))))))

(assert (=> b!877591 (=> (not res!399027) (not e!576578))))

(declare-fun b!877592 () Bool)

(declare-fun e!576580 () Bool)

(assert (=> b!877592 (= e!576580 e!576579)))

(declare-fun c!141905 () Bool)

(assert (=> b!877592 (= c!141905 (is-Star!2234 r!15766))))

(declare-fun bm!51113 () Bool)

(declare-fun call!51120 () Bool)

(declare-fun c!141906 () Bool)

(assert (=> bm!51113 (= call!51120 (validRegex!703 (ite c!141906 (regOne!4981 r!15766) (regOne!4980 r!15766))))))

(declare-fun b!877593 () Bool)

(declare-fun call!51119 () Bool)

(assert (=> b!877593 (= e!576578 call!51119)))

(declare-fun b!877594 () Bool)

(declare-fun e!576581 () Bool)

(assert (=> b!877594 (= e!576581 call!51118)))

(declare-fun d!276009 () Bool)

(declare-fun res!399024 () Bool)

(assert (=> d!276009 (=> res!399024 e!576580)))

(assert (=> d!276009 (= res!399024 (is-ElementMatch!2234 r!15766))))

(assert (=> d!276009 (= (validRegex!703 r!15766) e!576580)))

(declare-fun b!877595 () Bool)

(declare-fun e!576584 () Bool)

(assert (=> b!877595 (= e!576584 e!576581)))

(declare-fun res!399026 () Bool)

(assert (=> b!877595 (=> (not res!399026) (not e!576581))))

(assert (=> b!877595 (= res!399026 call!51120)))

(declare-fun bm!51114 () Bool)

(assert (=> bm!51114 (= call!51118 call!51119)))

(declare-fun b!877596 () Bool)

(declare-fun e!576582 () Bool)

(assert (=> b!877596 (= e!576579 e!576582)))

(assert (=> b!877596 (= c!141906 (is-Union!2234 r!15766))))

(declare-fun b!877597 () Bool)

(declare-fun res!399025 () Bool)

(assert (=> b!877597 (=> (not res!399025) (not e!576583))))

(assert (=> b!877597 (= res!399025 call!51120)))

(assert (=> b!877597 (= e!576582 e!576583)))

(declare-fun b!877598 () Bool)

(declare-fun res!399023 () Bool)

(assert (=> b!877598 (=> res!399023 e!576584)))

(assert (=> b!877598 (= res!399023 (not (is-Concat!4067 r!15766)))))

(assert (=> b!877598 (= e!576582 e!576584)))

(declare-fun bm!51115 () Bool)

(assert (=> bm!51115 (= call!51119 (validRegex!703 (ite c!141905 (reg!2563 r!15766) (ite c!141906 (regTwo!4981 r!15766) (regTwo!4980 r!15766)))))))

(assert (= (and d!276009 (not res!399024)) b!877592))

(assert (= (and b!877592 c!141905) b!877591))

(assert (= (and b!877592 (not c!141905)) b!877596))

(assert (= (and b!877591 res!399027) b!877593))

(assert (= (and b!877596 c!141906) b!877597))

(assert (= (and b!877596 (not c!141906)) b!877598))

(assert (= (and b!877597 res!399025) b!877590))

(assert (= (and b!877598 (not res!399023)) b!877595))

(assert (= (and b!877595 res!399026) b!877594))

(assert (= (or b!877590 b!877594) bm!51114))

(assert (= (or b!877597 b!877595) bm!51113))

(assert (= (or b!877593 bm!51114) bm!51115))

(declare-fun m!1127769 () Bool)

(assert (=> b!877591 m!1127769))

(declare-fun m!1127771 () Bool)

(assert (=> bm!51113 m!1127771))

(declare-fun m!1127773 () Bool)

(assert (=> bm!51115 m!1127773))

(assert (=> start!79308 d!276009))

(declare-fun d!276013 () Bool)

(assert (=> d!276013 (= (isEmpty!5637 s!10566) (is-Nil!9448 s!10566))))

(assert (=> b!877524 d!276013))

(declare-fun bs!234169 () Bool)

(declare-fun b!877649 () Bool)

(assert (= bs!234169 (and b!877649 b!877527)))

(declare-fun lambda!26609 () Int)

(assert (=> bs!234169 (not (= lambda!26609 lambda!26595))))

(assert (=> bs!234169 (not (= lambda!26609 lambda!26596))))

(assert (=> b!877649 true))

(assert (=> b!877649 true))

(declare-fun bs!234170 () Bool)

(declare-fun b!877655 () Bool)

(assert (= bs!234170 (and b!877655 b!877527)))

(declare-fun lambda!26610 () Int)

(assert (=> bs!234170 (not (= lambda!26610 lambda!26595))))

(assert (=> bs!234170 (= (= (regTwo!4980 r!15766) EmptyExpr!2234) (= lambda!26610 lambda!26596))))

(declare-fun bs!234171 () Bool)

(assert (= bs!234171 (and b!877655 b!877649)))

(assert (=> bs!234171 (not (= lambda!26610 lambda!26609))))

(assert (=> b!877655 true))

(assert (=> b!877655 true))

(declare-fun d!276015 () Bool)

(declare-fun c!141921 () Bool)

(assert (=> d!276015 (= c!141921 (is-EmptyExpr!2234 r!15766))))

(declare-fun e!576617 () Bool)

(assert (=> d!276015 (= (matchRSpec!35 r!15766 s!10566) e!576617)))

(declare-fun e!576623 () Bool)

(declare-fun call!51131 () Bool)

(assert (=> b!877649 (= e!576623 call!51131)))

(declare-fun b!877650 () Bool)

(declare-fun call!51132 () Bool)

(assert (=> b!877650 (= e!576617 call!51132)))

(declare-fun bm!51126 () Bool)

(declare-fun c!141920 () Bool)

(assert (=> bm!51126 (= call!51131 (Exists!31 (ite c!141920 lambda!26609 lambda!26610)))))

(declare-fun b!877651 () Bool)

(declare-fun e!576618 () Bool)

(assert (=> b!877651 (= e!576618 (matchRSpec!35 (regTwo!4981 r!15766) s!10566))))

(declare-fun b!877652 () Bool)

(declare-fun c!141922 () Bool)

(assert (=> b!877652 (= c!141922 (is-Union!2234 r!15766))))

(declare-fun e!576621 () Bool)

(declare-fun e!576619 () Bool)

(assert (=> b!877652 (= e!576621 e!576619)))

(declare-fun b!877653 () Bool)

(declare-fun e!576622 () Bool)

(assert (=> b!877653 (= e!576619 e!576622)))

(assert (=> b!877653 (= c!141920 (is-Star!2234 r!15766))))

(declare-fun b!877654 () Bool)

(declare-fun e!576620 () Bool)

(assert (=> b!877654 (= e!576617 e!576620)))

(declare-fun res!399054 () Bool)

(assert (=> b!877654 (= res!399054 (not (is-EmptyLang!2234 r!15766)))))

(assert (=> b!877654 (=> (not res!399054) (not e!576620))))

(assert (=> b!877655 (= e!576622 call!51131)))

(declare-fun b!877656 () Bool)

(assert (=> b!877656 (= e!576621 (= s!10566 (Cons!9448 (c!141899 r!15766) Nil!9448)))))

(declare-fun bm!51127 () Bool)

(assert (=> bm!51127 (= call!51132 (isEmpty!5637 s!10566))))

(declare-fun b!877657 () Bool)

(declare-fun c!141919 () Bool)

(assert (=> b!877657 (= c!141919 (is-ElementMatch!2234 r!15766))))

(assert (=> b!877657 (= e!576620 e!576621)))

(declare-fun b!877658 () Bool)

(assert (=> b!877658 (= e!576619 e!576618)))

(declare-fun res!399056 () Bool)

(assert (=> b!877658 (= res!399056 (matchRSpec!35 (regOne!4981 r!15766) s!10566))))

(assert (=> b!877658 (=> res!399056 e!576618)))

(declare-fun b!877659 () Bool)

(declare-fun res!399055 () Bool)

(assert (=> b!877659 (=> res!399055 e!576623)))

(assert (=> b!877659 (= res!399055 call!51132)))

(assert (=> b!877659 (= e!576622 e!576623)))

(assert (= (and d!276015 c!141921) b!877650))

(assert (= (and d!276015 (not c!141921)) b!877654))

(assert (= (and b!877654 res!399054) b!877657))

(assert (= (and b!877657 c!141919) b!877656))

(assert (= (and b!877657 (not c!141919)) b!877652))

(assert (= (and b!877652 c!141922) b!877658))

(assert (= (and b!877652 (not c!141922)) b!877653))

(assert (= (and b!877658 (not res!399056)) b!877651))

(assert (= (and b!877653 c!141920) b!877659))

(assert (= (and b!877653 (not c!141920)) b!877655))

(assert (= (and b!877659 (not res!399055)) b!877649))

(assert (= (or b!877649 b!877655) bm!51126))

(assert (= (or b!877650 b!877659) bm!51127))

(declare-fun m!1127777 () Bool)

(assert (=> bm!51126 m!1127777))

(declare-fun m!1127779 () Bool)

(assert (=> b!877651 m!1127779))

(assert (=> bm!51127 m!1127729))

(declare-fun m!1127781 () Bool)

(assert (=> b!877658 m!1127781))

(assert (=> b!877521 d!276015))

(declare-fun bm!51133 () Bool)

(declare-fun call!51138 () Bool)

(assert (=> bm!51133 (= call!51138 (isEmpty!5637 s!10566))))

(declare-fun b!877697 () Bool)

(declare-fun res!399082 () Bool)

(declare-fun e!576646 () Bool)

(assert (=> b!877697 (=> (not res!399082) (not e!576646))))

(assert (=> b!877697 (= res!399082 (not call!51138))))

(declare-fun b!877698 () Bool)

(declare-fun res!399085 () Bool)

(assert (=> b!877698 (=> (not res!399085) (not e!576646))))

(declare-fun tail!1090 (List!9464) List!9464)

(assert (=> b!877698 (= res!399085 (isEmpty!5637 (tail!1090 s!10566)))))

(declare-fun b!877699 () Bool)

(declare-fun e!576645 () Bool)

(declare-fun head!1528 (List!9464) C!5038)

(assert (=> b!877699 (= e!576645 (not (= (head!1528 s!10566) (c!141899 r!15766))))))

(declare-fun b!877700 () Bool)

(declare-fun e!576648 () Bool)

(declare-fun lt!330056 () Bool)

(assert (=> b!877700 (= e!576648 (= lt!330056 call!51138))))

(declare-fun d!276019 () Bool)

(assert (=> d!276019 e!576648))

(declare-fun c!141933 () Bool)

(assert (=> d!276019 (= c!141933 (is-EmptyExpr!2234 r!15766))))

(declare-fun e!576649 () Bool)

(assert (=> d!276019 (= lt!330056 e!576649)))

(declare-fun c!141932 () Bool)

(assert (=> d!276019 (= c!141932 (isEmpty!5637 s!10566))))

(assert (=> d!276019 (validRegex!703 r!15766)))

(assert (=> d!276019 (= (matchR!772 r!15766 s!10566) lt!330056)))

(declare-fun b!877701 () Bool)

(declare-fun e!576647 () Bool)

(assert (=> b!877701 (= e!576647 (not lt!330056))))

(declare-fun b!877702 () Bool)

(declare-fun e!576651 () Bool)

(declare-fun e!576650 () Bool)

(assert (=> b!877702 (= e!576651 e!576650)))

(declare-fun res!399080 () Bool)

(assert (=> b!877702 (=> (not res!399080) (not e!576650))))

(assert (=> b!877702 (= res!399080 (not lt!330056))))

(declare-fun b!877703 () Bool)

(assert (=> b!877703 (= e!576650 e!576645)))

(declare-fun res!399083 () Bool)

(assert (=> b!877703 (=> res!399083 e!576645)))

(assert (=> b!877703 (= res!399083 call!51138)))

(declare-fun b!877704 () Bool)

(declare-fun derivativeStep!375 (Regex!2234 C!5038) Regex!2234)

(assert (=> b!877704 (= e!576649 (matchR!772 (derivativeStep!375 r!15766 (head!1528 s!10566)) (tail!1090 s!10566)))))

(declare-fun b!877705 () Bool)

(declare-fun res!399084 () Bool)

(assert (=> b!877705 (=> res!399084 e!576651)))

(assert (=> b!877705 (= res!399084 e!576646)))

(declare-fun res!399078 () Bool)

(assert (=> b!877705 (=> (not res!399078) (not e!576646))))

(assert (=> b!877705 (= res!399078 lt!330056)))

(declare-fun b!877706 () Bool)

(assert (=> b!877706 (= e!576649 (nullable!561 r!15766))))

(declare-fun b!877707 () Bool)

(assert (=> b!877707 (= e!576646 (= (head!1528 s!10566) (c!141899 r!15766)))))

(declare-fun b!877708 () Bool)

(assert (=> b!877708 (= e!576648 e!576647)))

(declare-fun c!141931 () Bool)

(assert (=> b!877708 (= c!141931 (is-EmptyLang!2234 r!15766))))

(declare-fun b!877709 () Bool)

(declare-fun res!399081 () Bool)

(assert (=> b!877709 (=> res!399081 e!576645)))

(assert (=> b!877709 (= res!399081 (not (isEmpty!5637 (tail!1090 s!10566))))))

(declare-fun b!877710 () Bool)

(declare-fun res!399079 () Bool)

(assert (=> b!877710 (=> res!399079 e!576651)))

(assert (=> b!877710 (= res!399079 (not (is-ElementMatch!2234 r!15766)))))

(assert (=> b!877710 (= e!576647 e!576651)))

(assert (= (and d!276019 c!141932) b!877706))

(assert (= (and d!276019 (not c!141932)) b!877704))

(assert (= (and d!276019 c!141933) b!877700))

(assert (= (and d!276019 (not c!141933)) b!877708))

(assert (= (and b!877708 c!141931) b!877701))

(assert (= (and b!877708 (not c!141931)) b!877710))

(assert (= (and b!877710 (not res!399079)) b!877705))

(assert (= (and b!877705 res!399078) b!877697))

(assert (= (and b!877697 res!399082) b!877698))

(assert (= (and b!877698 res!399085) b!877707))

(assert (= (and b!877705 (not res!399084)) b!877702))

(assert (= (and b!877702 res!399080) b!877703))

(assert (= (and b!877703 (not res!399083)) b!877709))

(assert (= (and b!877709 (not res!399081)) b!877699))

(assert (= (or b!877700 b!877697 b!877703) bm!51133))

(declare-fun m!1127789 () Bool)

(assert (=> b!877707 m!1127789))

(assert (=> b!877704 m!1127789))

(assert (=> b!877704 m!1127789))

(declare-fun m!1127791 () Bool)

(assert (=> b!877704 m!1127791))

(declare-fun m!1127793 () Bool)

(assert (=> b!877704 m!1127793))

(assert (=> b!877704 m!1127791))

(assert (=> b!877704 m!1127793))

(declare-fun m!1127795 () Bool)

(assert (=> b!877704 m!1127795))

(assert (=> b!877699 m!1127789))

(assert (=> bm!51133 m!1127729))

(assert (=> b!877698 m!1127793))

(assert (=> b!877698 m!1127793))

(declare-fun m!1127797 () Bool)

(assert (=> b!877698 m!1127797))

(declare-fun m!1127799 () Bool)

(assert (=> b!877706 m!1127799))

(assert (=> b!877709 m!1127793))

(assert (=> b!877709 m!1127793))

(assert (=> b!877709 m!1127797))

(assert (=> d!276019 m!1127729))

(assert (=> d!276019 m!1127721))

(assert (=> b!877521 d!276019))

(declare-fun d!276023 () Bool)

(assert (=> d!276023 (= (matchR!772 r!15766 s!10566) (matchRSpec!35 r!15766 s!10566))))

(declare-fun lt!330059 () Unit!14047)

(declare-fun choose!5172 (Regex!2234 List!9464) Unit!14047)

(assert (=> d!276023 (= lt!330059 (choose!5172 r!15766 s!10566))))

(assert (=> d!276023 (validRegex!703 r!15766)))

(assert (=> d!276023 (= (mainMatchTheorem!35 r!15766 s!10566) lt!330059)))

(declare-fun bs!234172 () Bool)

(assert (= bs!234172 d!276023))

(assert (=> bs!234172 m!1127725))

(assert (=> bs!234172 m!1127723))

(declare-fun m!1127801 () Bool)

(assert (=> bs!234172 m!1127801))

(assert (=> bs!234172 m!1127721))

(assert (=> b!877521 d!276023))

(declare-fun d!276025 () Bool)

(declare-fun isEmpty!5639 (Option!1921) Bool)

(assert (=> d!276025 (= (isDefined!1563 (findConcatSeparation!27 (regOne!4980 r!15766) EmptyExpr!2234 Nil!9448 s!10566 s!10566)) (not (isEmpty!5639 (findConcatSeparation!27 (regOne!4980 r!15766) EmptyExpr!2234 Nil!9448 s!10566 s!10566))))))

(declare-fun bs!234173 () Bool)

(assert (= bs!234173 d!276025))

(assert (=> bs!234173 m!1127733))

(declare-fun m!1127803 () Bool)

(assert (=> bs!234173 m!1127803))

(assert (=> b!877527 d!276025))

(declare-fun b!877711 () Bool)

(declare-fun e!576657 () Bool)

(declare-fun call!51139 () Bool)

(assert (=> b!877711 (= e!576657 call!51139)))

(declare-fun b!877712 () Bool)

(declare-fun e!576653 () Bool)

(declare-fun e!576652 () Bool)

(assert (=> b!877712 (= e!576653 e!576652)))

(declare-fun res!399090 () Bool)

(assert (=> b!877712 (= res!399090 (not (nullable!561 (reg!2563 (regOne!4980 r!15766)))))))

(assert (=> b!877712 (=> (not res!399090) (not e!576652))))

(declare-fun b!877713 () Bool)

(declare-fun e!576654 () Bool)

(assert (=> b!877713 (= e!576654 e!576653)))

(declare-fun c!141934 () Bool)

(assert (=> b!877713 (= c!141934 (is-Star!2234 (regOne!4980 r!15766)))))

(declare-fun bm!51134 () Bool)

(declare-fun call!51141 () Bool)

(declare-fun c!141935 () Bool)

(assert (=> bm!51134 (= call!51141 (validRegex!703 (ite c!141935 (regOne!4981 (regOne!4980 r!15766)) (regOne!4980 (regOne!4980 r!15766)))))))

(declare-fun b!877714 () Bool)

(declare-fun call!51140 () Bool)

(assert (=> b!877714 (= e!576652 call!51140)))

(declare-fun b!877715 () Bool)

(declare-fun e!576655 () Bool)

(assert (=> b!877715 (= e!576655 call!51139)))

(declare-fun d!276027 () Bool)

(declare-fun res!399087 () Bool)

(assert (=> d!276027 (=> res!399087 e!576654)))

(assert (=> d!276027 (= res!399087 (is-ElementMatch!2234 (regOne!4980 r!15766)))))

(assert (=> d!276027 (= (validRegex!703 (regOne!4980 r!15766)) e!576654)))

(declare-fun b!877716 () Bool)

(declare-fun e!576658 () Bool)

(assert (=> b!877716 (= e!576658 e!576655)))

(declare-fun res!399089 () Bool)

(assert (=> b!877716 (=> (not res!399089) (not e!576655))))

(assert (=> b!877716 (= res!399089 call!51141)))

(declare-fun bm!51135 () Bool)

(assert (=> bm!51135 (= call!51139 call!51140)))

(declare-fun b!877717 () Bool)

(declare-fun e!576656 () Bool)

(assert (=> b!877717 (= e!576653 e!576656)))

(assert (=> b!877717 (= c!141935 (is-Union!2234 (regOne!4980 r!15766)))))

(declare-fun b!877718 () Bool)

(declare-fun res!399088 () Bool)

(assert (=> b!877718 (=> (not res!399088) (not e!576657))))

(assert (=> b!877718 (= res!399088 call!51141)))

(assert (=> b!877718 (= e!576656 e!576657)))

(declare-fun b!877719 () Bool)

(declare-fun res!399086 () Bool)

(assert (=> b!877719 (=> res!399086 e!576658)))

(assert (=> b!877719 (= res!399086 (not (is-Concat!4067 (regOne!4980 r!15766))))))

(assert (=> b!877719 (= e!576656 e!576658)))

(declare-fun bm!51136 () Bool)

(assert (=> bm!51136 (= call!51140 (validRegex!703 (ite c!141934 (reg!2563 (regOne!4980 r!15766)) (ite c!141935 (regTwo!4981 (regOne!4980 r!15766)) (regTwo!4980 (regOne!4980 r!15766))))))))

(assert (= (and d!276027 (not res!399087)) b!877713))

(assert (= (and b!877713 c!141934) b!877712))

(assert (= (and b!877713 (not c!141934)) b!877717))

(assert (= (and b!877712 res!399090) b!877714))

(assert (= (and b!877717 c!141935) b!877718))

(assert (= (and b!877717 (not c!141935)) b!877719))

(assert (= (and b!877718 res!399088) b!877711))

(assert (= (and b!877719 (not res!399086)) b!877716))

(assert (= (and b!877716 res!399089) b!877715))

(assert (= (or b!877711 b!877715) bm!51135))

(assert (= (or b!877718 b!877716) bm!51134))

(assert (= (or b!877714 bm!51135) bm!51136))

(declare-fun m!1127805 () Bool)

(assert (=> b!877712 m!1127805))

(declare-fun m!1127807 () Bool)

(assert (=> bm!51134 m!1127807))

(declare-fun m!1127809 () Bool)

(assert (=> bm!51136 m!1127809))

(assert (=> b!877527 d!276027))

(declare-fun b!877756 () Bool)

(declare-fun res!399115 () Bool)

(declare-fun e!576680 () Bool)

(assert (=> b!877756 (=> (not res!399115) (not e!576680))))

(declare-fun lt!330072 () Option!1921)

(declare-fun get!2912 (Option!1921) tuple2!10558)

(assert (=> b!877756 (= res!399115 (matchR!772 EmptyExpr!2234 (_2!6105 (get!2912 lt!330072))))))

(declare-fun b!877757 () Bool)

(declare-fun e!576682 () Bool)

(assert (=> b!877757 (= e!576682 (matchR!772 EmptyExpr!2234 s!10566))))

(declare-fun b!877758 () Bool)

(declare-fun lt!330073 () Unit!14047)

(declare-fun lt!330074 () Unit!14047)

(assert (=> b!877758 (= lt!330073 lt!330074)))

(declare-fun ++!2455 (List!9464 List!9464) List!9464)

(assert (=> b!877758 (= (++!2455 (++!2455 Nil!9448 (Cons!9448 (h!14849 s!10566) Nil!9448)) (t!100510 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!86 (List!9464 C!5038 List!9464 List!9464) Unit!14047)

(assert (=> b!877758 (= lt!330074 (lemmaMoveElementToOtherListKeepsConcatEq!86 Nil!9448 (h!14849 s!10566) (t!100510 s!10566) s!10566))))

(declare-fun e!576679 () Option!1921)

(assert (=> b!877758 (= e!576679 (findConcatSeparation!27 (regOne!4980 r!15766) EmptyExpr!2234 (++!2455 Nil!9448 (Cons!9448 (h!14849 s!10566) Nil!9448)) (t!100510 s!10566) s!10566))))

(declare-fun b!877760 () Bool)

(declare-fun res!399114 () Bool)

(assert (=> b!877760 (=> (not res!399114) (not e!576680))))

(assert (=> b!877760 (= res!399114 (matchR!772 (regOne!4980 r!15766) (_1!6105 (get!2912 lt!330072))))))

(declare-fun b!877761 () Bool)

(assert (=> b!877761 (= e!576680 (= (++!2455 (_1!6105 (get!2912 lt!330072)) (_2!6105 (get!2912 lt!330072))) s!10566))))

(declare-fun b!877762 () Bool)

(assert (=> b!877762 (= e!576679 None!1920)))

(declare-fun b!877763 () Bool)

(declare-fun e!576681 () Option!1921)

(assert (=> b!877763 (= e!576681 e!576679)))

(declare-fun c!141944 () Bool)

(assert (=> b!877763 (= c!141944 (is-Nil!9448 s!10566))))

(declare-fun b!877764 () Bool)

(assert (=> b!877764 (= e!576681 (Some!1920 (tuple2!10559 Nil!9448 s!10566)))))

(declare-fun b!877759 () Bool)

(declare-fun e!576683 () Bool)

(assert (=> b!877759 (= e!576683 (not (isDefined!1563 lt!330072)))))

(declare-fun d!276029 () Bool)

(assert (=> d!276029 e!576683))

(declare-fun res!399111 () Bool)

(assert (=> d!276029 (=> res!399111 e!576683)))

(assert (=> d!276029 (= res!399111 e!576680)))

(declare-fun res!399113 () Bool)

(assert (=> d!276029 (=> (not res!399113) (not e!576680))))

(assert (=> d!276029 (= res!399113 (isDefined!1563 lt!330072))))

(assert (=> d!276029 (= lt!330072 e!576681)))

(declare-fun c!141945 () Bool)

(assert (=> d!276029 (= c!141945 e!576682)))

(declare-fun res!399112 () Bool)

(assert (=> d!276029 (=> (not res!399112) (not e!576682))))

(assert (=> d!276029 (= res!399112 (matchR!772 (regOne!4980 r!15766) Nil!9448))))

(assert (=> d!276029 (validRegex!703 (regOne!4980 r!15766))))

(assert (=> d!276029 (= (findConcatSeparation!27 (regOne!4980 r!15766) EmptyExpr!2234 Nil!9448 s!10566 s!10566) lt!330072)))

(assert (= (and d!276029 res!399112) b!877757))

(assert (= (and d!276029 c!141945) b!877764))

(assert (= (and d!276029 (not c!141945)) b!877763))

(assert (= (and b!877763 c!141944) b!877762))

(assert (= (and b!877763 (not c!141944)) b!877758))

(assert (= (and d!276029 res!399113) b!877760))

(assert (= (and b!877760 res!399114) b!877756))

(assert (= (and b!877756 res!399115) b!877761))

(assert (= (and d!276029 (not res!399111)) b!877759))

(declare-fun m!1127811 () Bool)

(assert (=> d!276029 m!1127811))

(declare-fun m!1127813 () Bool)

(assert (=> d!276029 m!1127813))

(assert (=> d!276029 m!1127739))

(declare-fun m!1127815 () Bool)

(assert (=> b!877757 m!1127815))

(declare-fun m!1127817 () Bool)

(assert (=> b!877760 m!1127817))

(declare-fun m!1127819 () Bool)

(assert (=> b!877760 m!1127819))

(declare-fun m!1127821 () Bool)

(assert (=> b!877758 m!1127821))

(assert (=> b!877758 m!1127821))

(declare-fun m!1127823 () Bool)

(assert (=> b!877758 m!1127823))

(declare-fun m!1127825 () Bool)

(assert (=> b!877758 m!1127825))

(assert (=> b!877758 m!1127821))

(declare-fun m!1127827 () Bool)

(assert (=> b!877758 m!1127827))

(assert (=> b!877759 m!1127811))

(assert (=> b!877756 m!1127817))

(declare-fun m!1127829 () Bool)

(assert (=> b!877756 m!1127829))

(assert (=> b!877761 m!1127817))

(declare-fun m!1127831 () Bool)

(assert (=> b!877761 m!1127831))

(assert (=> b!877527 d!276029))

(declare-fun d!276031 () Bool)

(declare-fun choose!5173 (Int) Bool)

(assert (=> d!276031 (= (Exists!31 lambda!26595) (choose!5173 lambda!26595))))

(declare-fun bs!234174 () Bool)

(assert (= bs!234174 d!276031))

(declare-fun m!1127833 () Bool)

(assert (=> bs!234174 m!1127833))

(assert (=> b!877527 d!276031))

(declare-fun bs!234177 () Bool)

(declare-fun d!276033 () Bool)

(assert (= bs!234177 (and d!276033 b!877527)))

(declare-fun lambda!26613 () Int)

(assert (=> bs!234177 (= lambda!26613 lambda!26595)))

(assert (=> bs!234177 (not (= lambda!26613 lambda!26596))))

(declare-fun bs!234178 () Bool)

(assert (= bs!234178 (and d!276033 b!877649)))

(assert (=> bs!234178 (not (= lambda!26613 lambda!26609))))

(declare-fun bs!234179 () Bool)

(assert (= bs!234179 (and d!276033 b!877655)))

(assert (=> bs!234179 (not (= lambda!26613 lambda!26610))))

(assert (=> d!276033 true))

(assert (=> d!276033 true))

(assert (=> d!276033 true))

(assert (=> d!276033 (= (isDefined!1563 (findConcatSeparation!27 (regOne!4980 r!15766) EmptyExpr!2234 Nil!9448 s!10566 s!10566)) (Exists!31 lambda!26613))))

(declare-fun lt!330080 () Unit!14047)

(declare-fun choose!5174 (Regex!2234 Regex!2234 List!9464) Unit!14047)

(assert (=> d!276033 (= lt!330080 (choose!5174 (regOne!4980 r!15766) EmptyExpr!2234 s!10566))))

(assert (=> d!276033 (validRegex!703 (regOne!4980 r!15766))))

(assert (=> d!276033 (= (lemmaFindConcatSeparationEquivalentToExists!27 (regOne!4980 r!15766) EmptyExpr!2234 s!10566) lt!330080)))

(declare-fun bs!234180 () Bool)

(assert (= bs!234180 d!276033))

(declare-fun m!1127861 () Bool)

(assert (=> bs!234180 m!1127861))

(assert (=> bs!234180 m!1127733))

(declare-fun m!1127863 () Bool)

(assert (=> bs!234180 m!1127863))

(assert (=> bs!234180 m!1127733))

(assert (=> bs!234180 m!1127741))

(assert (=> bs!234180 m!1127739))

(assert (=> b!877527 d!276033))

(declare-fun bs!234181 () Bool)

(declare-fun d!276041 () Bool)

(assert (= bs!234181 (and d!276041 b!877527)))

(declare-fun lambda!26619 () Int)

(assert (=> bs!234181 (= lambda!26619 lambda!26595)))

(declare-fun bs!234182 () Bool)

(assert (= bs!234182 (and d!276041 b!877655)))

(assert (=> bs!234182 (not (= lambda!26619 lambda!26610))))

(assert (=> bs!234181 (not (= lambda!26619 lambda!26596))))

(declare-fun bs!234183 () Bool)

(assert (= bs!234183 (and d!276041 d!276033)))

(assert (=> bs!234183 (= lambda!26619 lambda!26613)))

(declare-fun bs!234184 () Bool)

(assert (= bs!234184 (and d!276041 b!877649)))

(assert (=> bs!234184 (not (= lambda!26619 lambda!26609))))

(assert (=> d!276041 true))

(assert (=> d!276041 true))

(assert (=> d!276041 true))

(declare-fun lambda!26621 () Int)

(assert (=> bs!234181 (not (= lambda!26621 lambda!26595))))

(declare-fun bs!234185 () Bool)

(assert (= bs!234185 d!276041))

(assert (=> bs!234185 (not (= lambda!26621 lambda!26619))))

(assert (=> bs!234182 (= (= EmptyExpr!2234 (regTwo!4980 r!15766)) (= lambda!26621 lambda!26610))))

(assert (=> bs!234181 (= lambda!26621 lambda!26596)))

(assert (=> bs!234183 (not (= lambda!26621 lambda!26613))))

(assert (=> bs!234184 (not (= lambda!26621 lambda!26609))))

(assert (=> d!276041 true))

(assert (=> d!276041 true))

(assert (=> d!276041 true))

(assert (=> d!276041 (= (Exists!31 lambda!26619) (Exists!31 lambda!26621))))

(declare-fun lt!330085 () Unit!14047)

(declare-fun choose!5175 (Regex!2234 Regex!2234 List!9464) Unit!14047)

(assert (=> d!276041 (= lt!330085 (choose!5175 (regOne!4980 r!15766) EmptyExpr!2234 s!10566))))

(assert (=> d!276041 (validRegex!703 (regOne!4980 r!15766))))

(assert (=> d!276041 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!23 (regOne!4980 r!15766) EmptyExpr!2234 s!10566) lt!330085)))

(declare-fun m!1127865 () Bool)

(assert (=> bs!234185 m!1127865))

(declare-fun m!1127867 () Bool)

(assert (=> bs!234185 m!1127867))

(declare-fun m!1127869 () Bool)

(assert (=> bs!234185 m!1127869))

(assert (=> bs!234185 m!1127739))

(assert (=> b!877527 d!276041))

(declare-fun d!276043 () Bool)

(assert (=> d!276043 (= (Exists!31 lambda!26596) (choose!5173 lambda!26596))))

(declare-fun bs!234186 () Bool)

(assert (= bs!234186 d!276043))

(declare-fun m!1127871 () Bool)

(assert (=> bs!234186 m!1127871))

(assert (=> b!877527 d!276043))

(declare-fun b!877802 () Bool)

(declare-fun e!576699 () Bool)

(declare-fun tp!277465 () Bool)

(assert (=> b!877802 (= e!576699 tp!277465)))

(assert (=> b!877523 (= tp!277431 e!576699)))

(declare-fun b!877800 () Bool)

(assert (=> b!877800 (= e!576699 tp_is_empty!4111)))

(declare-fun b!877801 () Bool)

(declare-fun tp!277463 () Bool)

(declare-fun tp!277467 () Bool)

(assert (=> b!877801 (= e!576699 (and tp!277463 tp!277467))))

(declare-fun b!877803 () Bool)

(declare-fun tp!277466 () Bool)

(declare-fun tp!277464 () Bool)

(assert (=> b!877803 (= e!576699 (and tp!277466 tp!277464))))

(assert (= (and b!877523 (is-ElementMatch!2234 (regOne!4980 r!15766))) b!877800))

(assert (= (and b!877523 (is-Concat!4067 (regOne!4980 r!15766))) b!877801))

(assert (= (and b!877523 (is-Star!2234 (regOne!4980 r!15766))) b!877802))

(assert (= (and b!877523 (is-Union!2234 (regOne!4980 r!15766))) b!877803))

(declare-fun b!877806 () Bool)

(declare-fun e!576700 () Bool)

(declare-fun tp!277470 () Bool)

(assert (=> b!877806 (= e!576700 tp!277470)))

(assert (=> b!877523 (= tp!277432 e!576700)))

(declare-fun b!877804 () Bool)

(assert (=> b!877804 (= e!576700 tp_is_empty!4111)))

(declare-fun b!877805 () Bool)

(declare-fun tp!277468 () Bool)

(declare-fun tp!277472 () Bool)

(assert (=> b!877805 (= e!576700 (and tp!277468 tp!277472))))

(declare-fun b!877807 () Bool)

(declare-fun tp!277471 () Bool)

(declare-fun tp!277469 () Bool)

(assert (=> b!877807 (= e!576700 (and tp!277471 tp!277469))))

(assert (= (and b!877523 (is-ElementMatch!2234 (regTwo!4980 r!15766))) b!877804))

(assert (= (and b!877523 (is-Concat!4067 (regTwo!4980 r!15766))) b!877805))

(assert (= (and b!877523 (is-Star!2234 (regTwo!4980 r!15766))) b!877806))

(assert (= (and b!877523 (is-Union!2234 (regTwo!4980 r!15766))) b!877807))

(declare-fun b!877812 () Bool)

(declare-fun e!576703 () Bool)

(declare-fun tp!277475 () Bool)

(assert (=> b!877812 (= e!576703 (and tp_is_empty!4111 tp!277475))))

(assert (=> b!877520 (= tp!277430 e!576703)))

(assert (= (and b!877520 (is-Cons!9448 (t!100510 s!10566))) b!877812))

(declare-fun b!877815 () Bool)

(declare-fun e!576704 () Bool)

(declare-fun tp!277478 () Bool)

(assert (=> b!877815 (= e!576704 tp!277478)))

(assert (=> b!877525 (= tp!277429 e!576704)))

(declare-fun b!877813 () Bool)

(assert (=> b!877813 (= e!576704 tp_is_empty!4111)))

(declare-fun b!877814 () Bool)

(declare-fun tp!277476 () Bool)

(declare-fun tp!277480 () Bool)

(assert (=> b!877814 (= e!576704 (and tp!277476 tp!277480))))

(declare-fun b!877816 () Bool)

(declare-fun tp!277479 () Bool)

(declare-fun tp!277477 () Bool)

(assert (=> b!877816 (= e!576704 (and tp!277479 tp!277477))))

(assert (= (and b!877525 (is-ElementMatch!2234 (regOne!4981 r!15766))) b!877813))

(assert (= (and b!877525 (is-Concat!4067 (regOne!4981 r!15766))) b!877814))

(assert (= (and b!877525 (is-Star!2234 (regOne!4981 r!15766))) b!877815))

(assert (= (and b!877525 (is-Union!2234 (regOne!4981 r!15766))) b!877816))

(declare-fun b!877819 () Bool)

(declare-fun e!576705 () Bool)

(declare-fun tp!277483 () Bool)

(assert (=> b!877819 (= e!576705 tp!277483)))

(assert (=> b!877525 (= tp!277434 e!576705)))

(declare-fun b!877817 () Bool)

(assert (=> b!877817 (= e!576705 tp_is_empty!4111)))

(declare-fun b!877818 () Bool)

(declare-fun tp!277481 () Bool)

(declare-fun tp!277485 () Bool)

(assert (=> b!877818 (= e!576705 (and tp!277481 tp!277485))))

(declare-fun b!877820 () Bool)

(declare-fun tp!277484 () Bool)

(declare-fun tp!277482 () Bool)

(assert (=> b!877820 (= e!576705 (and tp!277484 tp!277482))))

(assert (= (and b!877525 (is-ElementMatch!2234 (regTwo!4981 r!15766))) b!877817))

(assert (= (and b!877525 (is-Concat!4067 (regTwo!4981 r!15766))) b!877818))

(assert (= (and b!877525 (is-Star!2234 (regTwo!4981 r!15766))) b!877819))

(assert (= (and b!877525 (is-Union!2234 (regTwo!4981 r!15766))) b!877820))

(declare-fun b!877823 () Bool)

(declare-fun e!576706 () Bool)

(declare-fun tp!277488 () Bool)

(assert (=> b!877823 (= e!576706 tp!277488)))

(assert (=> b!877526 (= tp!277433 e!576706)))

(declare-fun b!877821 () Bool)

(assert (=> b!877821 (= e!576706 tp_is_empty!4111)))

(declare-fun b!877822 () Bool)

(declare-fun tp!277486 () Bool)

(declare-fun tp!277490 () Bool)

(assert (=> b!877822 (= e!576706 (and tp!277486 tp!277490))))

(declare-fun b!877824 () Bool)

(declare-fun tp!277489 () Bool)

(declare-fun tp!277487 () Bool)

(assert (=> b!877824 (= e!576706 (and tp!277489 tp!277487))))

(assert (= (and b!877526 (is-ElementMatch!2234 (reg!2563 r!15766))) b!877821))

(assert (= (and b!877526 (is-Concat!4067 (reg!2563 r!15766))) b!877822))

(assert (= (and b!877526 (is-Star!2234 (reg!2563 r!15766))) b!877823))

(assert (= (and b!877526 (is-Union!2234 (reg!2563 r!15766))) b!877824))

(push 1)

(assert (not d!276043))

(assert (not b!877802))

(assert (not d!276019))

(assert (not b!877704))

(assert (not b!877822))

(assert (not b!877709))

(assert (not b!877707))

(assert (not d!276041))

(assert (not b!877805))

(assert (not bm!51126))

(assert (not bm!51134))

(assert (not b!877760))

(assert (not b!877807))

(assert (not b!877816))

(assert (not b!877812))

(assert (not bm!51115))

(assert (not b!877756))

(assert (not b!877698))

(assert (not b!877820))

(assert (not b!877761))

(assert (not b!877824))

(assert (not b!877803))

(assert (not b!877699))

(assert (not b!877801))

(assert (not d!276029))

(assert (not d!276023))

(assert (not b!877591))

(assert (not d!276031))

(assert (not b!877712))

(assert (not bm!51136))

(assert (not bm!51113))

(assert (not b!877818))

(assert (not b!877823))

(assert tp_is_empty!4111)

(assert (not b!877651))

(assert (not b!877706))

(assert (not b!877814))

(assert (not d!276025))

(assert (not b!877658))

(assert (not b!877819))

(assert (not b!877815))

(assert (not b!877806))

(assert (not b!877758))

(assert (not bm!51127))

(assert (not b!877759))

(assert (not b!877757))

(assert (not d!276033))

(assert (not bm!51133))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


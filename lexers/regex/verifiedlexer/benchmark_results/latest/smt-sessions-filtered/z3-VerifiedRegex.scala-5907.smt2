; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!289224 () Bool)

(assert start!289224)

(declare-fun b!2999733 () Bool)

(declare-fun res!1236387 () Bool)

(declare-fun e!1884536 () Bool)

(assert (=> b!2999733 (=> res!1236387 e!1884536)))

(declare-datatypes ((C!18916 0))(
  ( (C!18917 (val!11494 Int)) )
))
(declare-datatypes ((Regex!9365 0))(
  ( (ElementMatch!9365 (c!493509 C!18916)) (Concat!14686 (regOne!19242 Regex!9365) (regTwo!19242 Regex!9365)) (EmptyExpr!9365) (Star!9365 (reg!9694 Regex!9365)) (EmptyLang!9365) (Union!9365 (regOne!19243 Regex!9365) (regTwo!19243 Regex!9365)) )
))
(declare-fun lt!1041714 () Regex!9365)

(declare-fun isEmptyLang!455 (Regex!9365) Bool)

(assert (=> b!2999733 (= res!1236387 (isEmptyLang!455 lt!1041714))))

(declare-fun b!2999734 () Bool)

(declare-fun res!1236388 () Bool)

(declare-fun e!1884534 () Bool)

(assert (=> b!2999734 (=> res!1236388 e!1884534)))

(declare-fun r!17423 () Regex!9365)

(declare-fun nullable!3028 (Regex!9365) Bool)

(assert (=> b!2999734 (= res!1236388 (not (nullable!3028 (regOne!19242 r!17423))))))

(declare-fun b!2999735 () Bool)

(declare-fun res!1236383 () Bool)

(declare-fun e!1884535 () Bool)

(assert (=> b!2999735 (=> res!1236383 e!1884535)))

(declare-datatypes ((List!35230 0))(
  ( (Nil!35106) (Cons!35106 (h!40526 C!18916) (t!234295 List!35230)) )
))
(declare-fun s!11993 () List!35230)

(declare-fun isEmpty!19380 (List!35230) Bool)

(assert (=> b!2999735 (= res!1236383 (isEmpty!19380 s!11993))))

(declare-fun b!2999736 () Bool)

(declare-fun e!1884539 () Bool)

(assert (=> b!2999736 (= e!1884539 (not e!1884535))))

(declare-fun res!1236384 () Bool)

(assert (=> b!2999736 (=> res!1236384 e!1884535)))

(declare-fun lt!1041715 () Bool)

(get-info :version)

(assert (=> b!2999736 (= res!1236384 (or lt!1041715 (not ((_ is Concat!14686) r!17423))))))

(declare-fun matchRSpec!1502 (Regex!9365 List!35230) Bool)

(assert (=> b!2999736 (= lt!1041715 (matchRSpec!1502 r!17423 s!11993))))

(declare-fun matchR!4247 (Regex!9365 List!35230) Bool)

(assert (=> b!2999736 (= lt!1041715 (matchR!4247 r!17423 s!11993))))

(declare-datatypes ((Unit!49145 0))(
  ( (Unit!49146) )
))
(declare-fun lt!1041711 () Unit!49145)

(declare-fun mainMatchTheorem!1502 (Regex!9365 List!35230) Unit!49145)

(assert (=> b!2999736 (= lt!1041711 (mainMatchTheorem!1502 r!17423 s!11993))))

(declare-fun b!2999737 () Bool)

(declare-fun e!1884537 () Bool)

(declare-fun tp!953573 () Bool)

(assert (=> b!2999737 (= e!1884537 tp!953573)))

(declare-fun b!2999738 () Bool)

(declare-fun tp_is_empty!16293 () Bool)

(assert (=> b!2999738 (= e!1884537 tp_is_empty!16293)))

(declare-fun b!2999739 () Bool)

(declare-fun tp!953575 () Bool)

(declare-fun tp!953572 () Bool)

(assert (=> b!2999739 (= e!1884537 (and tp!953575 tp!953572))))

(declare-fun b!2999740 () Bool)

(assert (=> b!2999740 (= e!1884536 e!1884534)))

(declare-fun res!1236386 () Bool)

(assert (=> b!2999740 (=> res!1236386 e!1884534)))

(declare-fun lt!1041712 () Bool)

(assert (=> b!2999740 (= res!1236386 (not lt!1041712))))

(assert (=> b!2999740 (= lt!1041712 (matchR!4247 lt!1041714 s!11993))))

(assert (=> b!2999740 (= lt!1041712 (matchR!4247 (regTwo!19242 r!17423) s!11993))))

(declare-fun lt!1041713 () Unit!49145)

(declare-fun lemmaSimplifySound!214 (Regex!9365 List!35230) Unit!49145)

(assert (=> b!2999740 (= lt!1041713 (lemmaSimplifySound!214 (regTwo!19242 r!17423) s!11993))))

(declare-fun b!2999741 () Bool)

(assert (=> b!2999741 (= e!1884534 (matchR!4247 (regOne!19242 r!17423) Nil!35106))))

(declare-fun b!2999742 () Bool)

(assert (=> b!2999742 (= e!1884535 e!1884536)))

(declare-fun res!1236385 () Bool)

(assert (=> b!2999742 (=> res!1236385 e!1884536)))

(declare-fun lt!1041716 () Regex!9365)

(assert (=> b!2999742 (= res!1236385 (isEmptyLang!455 lt!1041716))))

(declare-fun simplify!356 (Regex!9365) Regex!9365)

(assert (=> b!2999742 (= lt!1041714 (simplify!356 (regTwo!19242 r!17423)))))

(assert (=> b!2999742 (= lt!1041716 (simplify!356 (regOne!19242 r!17423)))))

(declare-fun b!2999743 () Bool)

(declare-fun res!1236381 () Bool)

(assert (=> b!2999743 (=> res!1236381 e!1884536)))

(declare-fun isEmptyExpr!472 (Regex!9365) Bool)

(assert (=> b!2999743 (= res!1236381 (not (isEmptyExpr!472 lt!1041716)))))

(declare-fun res!1236382 () Bool)

(assert (=> start!289224 (=> (not res!1236382) (not e!1884539))))

(declare-fun validRegex!4098 (Regex!9365) Bool)

(assert (=> start!289224 (= res!1236382 (validRegex!4098 r!17423))))

(assert (=> start!289224 e!1884539))

(assert (=> start!289224 e!1884537))

(declare-fun e!1884538 () Bool)

(assert (=> start!289224 e!1884538))

(declare-fun b!2999744 () Bool)

(declare-fun tp!953577 () Bool)

(declare-fun tp!953576 () Bool)

(assert (=> b!2999744 (= e!1884537 (and tp!953577 tp!953576))))

(declare-fun b!2999745 () Bool)

(declare-fun tp!953574 () Bool)

(assert (=> b!2999745 (= e!1884538 (and tp_is_empty!16293 tp!953574))))

(assert (= (and start!289224 res!1236382) b!2999736))

(assert (= (and b!2999736 (not res!1236384)) b!2999735))

(assert (= (and b!2999735 (not res!1236383)) b!2999742))

(assert (= (and b!2999742 (not res!1236385)) b!2999733))

(assert (= (and b!2999733 (not res!1236387)) b!2999743))

(assert (= (and b!2999743 (not res!1236381)) b!2999740))

(assert (= (and b!2999740 (not res!1236386)) b!2999734))

(assert (= (and b!2999734 (not res!1236388)) b!2999741))

(assert (= (and start!289224 ((_ is ElementMatch!9365) r!17423)) b!2999738))

(assert (= (and start!289224 ((_ is Concat!14686) r!17423)) b!2999744))

(assert (= (and start!289224 ((_ is Star!9365) r!17423)) b!2999737))

(assert (= (and start!289224 ((_ is Union!9365) r!17423)) b!2999739))

(assert (= (and start!289224 ((_ is Cons!35106) s!11993)) b!2999745))

(declare-fun m!3351671 () Bool)

(assert (=> b!2999742 m!3351671))

(declare-fun m!3351673 () Bool)

(assert (=> b!2999742 m!3351673))

(declare-fun m!3351675 () Bool)

(assert (=> b!2999742 m!3351675))

(declare-fun m!3351677 () Bool)

(assert (=> b!2999741 m!3351677))

(declare-fun m!3351679 () Bool)

(assert (=> b!2999734 m!3351679))

(declare-fun m!3351681 () Bool)

(assert (=> b!2999733 m!3351681))

(declare-fun m!3351683 () Bool)

(assert (=> b!2999735 m!3351683))

(declare-fun m!3351685 () Bool)

(assert (=> b!2999740 m!3351685))

(declare-fun m!3351687 () Bool)

(assert (=> b!2999740 m!3351687))

(declare-fun m!3351689 () Bool)

(assert (=> b!2999740 m!3351689))

(declare-fun m!3351691 () Bool)

(assert (=> b!2999743 m!3351691))

(declare-fun m!3351693 () Bool)

(assert (=> start!289224 m!3351693))

(declare-fun m!3351695 () Bool)

(assert (=> b!2999736 m!3351695))

(declare-fun m!3351697 () Bool)

(assert (=> b!2999736 m!3351697))

(declare-fun m!3351699 () Bool)

(assert (=> b!2999736 m!3351699))

(check-sat (not b!2999734) (not start!289224) (not b!2999743) (not b!2999735) (not b!2999740) (not b!2999745) (not b!2999741) tp_is_empty!16293 (not b!2999733) (not b!2999737) (not b!2999744) (not b!2999742) (not b!2999736) (not b!2999739))
(check-sat)
(get-model)

(declare-fun bm!201422 () Bool)

(declare-fun call!201427 () Bool)

(assert (=> bm!201422 (= call!201427 (isEmpty!19380 Nil!35106))))

(declare-fun b!2999802 () Bool)

(declare-fun e!1884574 () Bool)

(declare-fun e!1884573 () Bool)

(assert (=> b!2999802 (= e!1884574 e!1884573)))

(declare-fun c!493522 () Bool)

(assert (=> b!2999802 (= c!493522 ((_ is EmptyLang!9365) (regOne!19242 r!17423)))))

(declare-fun b!2999803 () Bool)

(declare-fun lt!1041721 () Bool)

(assert (=> b!2999803 (= e!1884573 (not lt!1041721))))

(declare-fun b!2999804 () Bool)

(declare-fun res!1236428 () Bool)

(declare-fun e!1884572 () Bool)

(assert (=> b!2999804 (=> res!1236428 e!1884572)))

(assert (=> b!2999804 (= res!1236428 (not ((_ is ElementMatch!9365) (regOne!19242 r!17423))))))

(assert (=> b!2999804 (= e!1884573 e!1884572)))

(declare-fun b!2999805 () Bool)

(declare-fun e!1884569 () Bool)

(assert (=> b!2999805 (= e!1884569 (nullable!3028 (regOne!19242 r!17423)))))

(declare-fun b!2999806 () Bool)

(declare-fun e!1884568 () Bool)

(declare-fun head!6685 (List!35230) C!18916)

(assert (=> b!2999806 (= e!1884568 (not (= (head!6685 Nil!35106) (c!493509 (regOne!19242 r!17423)))))))

(declare-fun b!2999807 () Bool)

(declare-fun e!1884570 () Bool)

(assert (=> b!2999807 (= e!1884570 (= (head!6685 Nil!35106) (c!493509 (regOne!19242 r!17423))))))

(declare-fun b!2999808 () Bool)

(declare-fun res!1236424 () Bool)

(assert (=> b!2999808 (=> res!1236424 e!1884572)))

(assert (=> b!2999808 (= res!1236424 e!1884570)))

(declare-fun res!1236423 () Bool)

(assert (=> b!2999808 (=> (not res!1236423) (not e!1884570))))

(assert (=> b!2999808 (= res!1236423 lt!1041721)))

(declare-fun b!2999809 () Bool)

(declare-fun e!1884571 () Bool)

(assert (=> b!2999809 (= e!1884571 e!1884568)))

(declare-fun res!1236421 () Bool)

(assert (=> b!2999809 (=> res!1236421 e!1884568)))

(assert (=> b!2999809 (= res!1236421 call!201427)))

(declare-fun b!2999811 () Bool)

(assert (=> b!2999811 (= e!1884572 e!1884571)))

(declare-fun res!1236427 () Bool)

(assert (=> b!2999811 (=> (not res!1236427) (not e!1884571))))

(assert (=> b!2999811 (= res!1236427 (not lt!1041721))))

(declare-fun b!2999812 () Bool)

(declare-fun derivativeStep!2626 (Regex!9365 C!18916) Regex!9365)

(declare-fun tail!4911 (List!35230) List!35230)

(assert (=> b!2999812 (= e!1884569 (matchR!4247 (derivativeStep!2626 (regOne!19242 r!17423) (head!6685 Nil!35106)) (tail!4911 Nil!35106)))))

(declare-fun b!2999813 () Bool)

(assert (=> b!2999813 (= e!1884574 (= lt!1041721 call!201427))))

(declare-fun b!2999814 () Bool)

(declare-fun res!1236422 () Bool)

(assert (=> b!2999814 (=> res!1236422 e!1884568)))

(assert (=> b!2999814 (= res!1236422 (not (isEmpty!19380 (tail!4911 Nil!35106))))))

(declare-fun b!2999815 () Bool)

(declare-fun res!1236425 () Bool)

(assert (=> b!2999815 (=> (not res!1236425) (not e!1884570))))

(assert (=> b!2999815 (= res!1236425 (not call!201427))))

(declare-fun b!2999810 () Bool)

(declare-fun res!1236426 () Bool)

(assert (=> b!2999810 (=> (not res!1236426) (not e!1884570))))

(assert (=> b!2999810 (= res!1236426 (isEmpty!19380 (tail!4911 Nil!35106)))))

(declare-fun d!846062 () Bool)

(assert (=> d!846062 e!1884574))

(declare-fun c!493524 () Bool)

(assert (=> d!846062 (= c!493524 ((_ is EmptyExpr!9365) (regOne!19242 r!17423)))))

(assert (=> d!846062 (= lt!1041721 e!1884569)))

(declare-fun c!493523 () Bool)

(assert (=> d!846062 (= c!493523 (isEmpty!19380 Nil!35106))))

(assert (=> d!846062 (validRegex!4098 (regOne!19242 r!17423))))

(assert (=> d!846062 (= (matchR!4247 (regOne!19242 r!17423) Nil!35106) lt!1041721)))

(assert (= (and d!846062 c!493523) b!2999805))

(assert (= (and d!846062 (not c!493523)) b!2999812))

(assert (= (and d!846062 c!493524) b!2999813))

(assert (= (and d!846062 (not c!493524)) b!2999802))

(assert (= (and b!2999802 c!493522) b!2999803))

(assert (= (and b!2999802 (not c!493522)) b!2999804))

(assert (= (and b!2999804 (not res!1236428)) b!2999808))

(assert (= (and b!2999808 res!1236423) b!2999815))

(assert (= (and b!2999815 res!1236425) b!2999810))

(assert (= (and b!2999810 res!1236426) b!2999807))

(assert (= (and b!2999808 (not res!1236424)) b!2999811))

(assert (= (and b!2999811 res!1236427) b!2999809))

(assert (= (and b!2999809 (not res!1236421)) b!2999814))

(assert (= (and b!2999814 (not res!1236422)) b!2999806))

(assert (= (or b!2999813 b!2999809 b!2999815) bm!201422))

(declare-fun m!3351701 () Bool)

(assert (=> b!2999807 m!3351701))

(declare-fun m!3351703 () Bool)

(assert (=> bm!201422 m!3351703))

(assert (=> d!846062 m!3351703))

(declare-fun m!3351705 () Bool)

(assert (=> d!846062 m!3351705))

(declare-fun m!3351707 () Bool)

(assert (=> b!2999814 m!3351707))

(assert (=> b!2999814 m!3351707))

(declare-fun m!3351709 () Bool)

(assert (=> b!2999814 m!3351709))

(assert (=> b!2999805 m!3351679))

(assert (=> b!2999810 m!3351707))

(assert (=> b!2999810 m!3351707))

(assert (=> b!2999810 m!3351709))

(assert (=> b!2999806 m!3351701))

(assert (=> b!2999812 m!3351701))

(assert (=> b!2999812 m!3351701))

(declare-fun m!3351711 () Bool)

(assert (=> b!2999812 m!3351711))

(assert (=> b!2999812 m!3351707))

(assert (=> b!2999812 m!3351711))

(assert (=> b!2999812 m!3351707))

(declare-fun m!3351713 () Bool)

(assert (=> b!2999812 m!3351713))

(assert (=> b!2999741 d!846062))

(declare-fun d!846066 () Bool)

(assert (=> d!846066 (= (isEmpty!19380 s!11993) ((_ is Nil!35106) s!11993))))

(assert (=> b!2999735 d!846066))

(declare-fun bm!201423 () Bool)

(declare-fun call!201428 () Bool)

(assert (=> bm!201423 (= call!201428 (isEmpty!19380 s!11993))))

(declare-fun b!2999816 () Bool)

(declare-fun e!1884581 () Bool)

(declare-fun e!1884580 () Bool)

(assert (=> b!2999816 (= e!1884581 e!1884580)))

(declare-fun c!493525 () Bool)

(assert (=> b!2999816 (= c!493525 ((_ is EmptyLang!9365) lt!1041714))))

(declare-fun b!2999817 () Bool)

(declare-fun lt!1041722 () Bool)

(assert (=> b!2999817 (= e!1884580 (not lt!1041722))))

(declare-fun b!2999818 () Bool)

(declare-fun res!1236436 () Bool)

(declare-fun e!1884579 () Bool)

(assert (=> b!2999818 (=> res!1236436 e!1884579)))

(assert (=> b!2999818 (= res!1236436 (not ((_ is ElementMatch!9365) lt!1041714)))))

(assert (=> b!2999818 (= e!1884580 e!1884579)))

(declare-fun b!2999819 () Bool)

(declare-fun e!1884576 () Bool)

(assert (=> b!2999819 (= e!1884576 (nullable!3028 lt!1041714))))

(declare-fun b!2999820 () Bool)

(declare-fun e!1884575 () Bool)

(assert (=> b!2999820 (= e!1884575 (not (= (head!6685 s!11993) (c!493509 lt!1041714))))))

(declare-fun b!2999821 () Bool)

(declare-fun e!1884577 () Bool)

(assert (=> b!2999821 (= e!1884577 (= (head!6685 s!11993) (c!493509 lt!1041714)))))

(declare-fun b!2999822 () Bool)

(declare-fun res!1236432 () Bool)

(assert (=> b!2999822 (=> res!1236432 e!1884579)))

(assert (=> b!2999822 (= res!1236432 e!1884577)))

(declare-fun res!1236431 () Bool)

(assert (=> b!2999822 (=> (not res!1236431) (not e!1884577))))

(assert (=> b!2999822 (= res!1236431 lt!1041722)))

(declare-fun b!2999823 () Bool)

(declare-fun e!1884578 () Bool)

(assert (=> b!2999823 (= e!1884578 e!1884575)))

(declare-fun res!1236429 () Bool)

(assert (=> b!2999823 (=> res!1236429 e!1884575)))

(assert (=> b!2999823 (= res!1236429 call!201428)))

(declare-fun b!2999825 () Bool)

(assert (=> b!2999825 (= e!1884579 e!1884578)))

(declare-fun res!1236435 () Bool)

(assert (=> b!2999825 (=> (not res!1236435) (not e!1884578))))

(assert (=> b!2999825 (= res!1236435 (not lt!1041722))))

(declare-fun b!2999826 () Bool)

(assert (=> b!2999826 (= e!1884576 (matchR!4247 (derivativeStep!2626 lt!1041714 (head!6685 s!11993)) (tail!4911 s!11993)))))

(declare-fun b!2999827 () Bool)

(assert (=> b!2999827 (= e!1884581 (= lt!1041722 call!201428))))

(declare-fun b!2999828 () Bool)

(declare-fun res!1236430 () Bool)

(assert (=> b!2999828 (=> res!1236430 e!1884575)))

(assert (=> b!2999828 (= res!1236430 (not (isEmpty!19380 (tail!4911 s!11993))))))

(declare-fun b!2999829 () Bool)

(declare-fun res!1236433 () Bool)

(assert (=> b!2999829 (=> (not res!1236433) (not e!1884577))))

(assert (=> b!2999829 (= res!1236433 (not call!201428))))

(declare-fun b!2999824 () Bool)

(declare-fun res!1236434 () Bool)

(assert (=> b!2999824 (=> (not res!1236434) (not e!1884577))))

(assert (=> b!2999824 (= res!1236434 (isEmpty!19380 (tail!4911 s!11993)))))

(declare-fun d!846068 () Bool)

(assert (=> d!846068 e!1884581))

(declare-fun c!493527 () Bool)

(assert (=> d!846068 (= c!493527 ((_ is EmptyExpr!9365) lt!1041714))))

(assert (=> d!846068 (= lt!1041722 e!1884576)))

(declare-fun c!493526 () Bool)

(assert (=> d!846068 (= c!493526 (isEmpty!19380 s!11993))))

(assert (=> d!846068 (validRegex!4098 lt!1041714)))

(assert (=> d!846068 (= (matchR!4247 lt!1041714 s!11993) lt!1041722)))

(assert (= (and d!846068 c!493526) b!2999819))

(assert (= (and d!846068 (not c!493526)) b!2999826))

(assert (= (and d!846068 c!493527) b!2999827))

(assert (= (and d!846068 (not c!493527)) b!2999816))

(assert (= (and b!2999816 c!493525) b!2999817))

(assert (= (and b!2999816 (not c!493525)) b!2999818))

(assert (= (and b!2999818 (not res!1236436)) b!2999822))

(assert (= (and b!2999822 res!1236431) b!2999829))

(assert (= (and b!2999829 res!1236433) b!2999824))

(assert (= (and b!2999824 res!1236434) b!2999821))

(assert (= (and b!2999822 (not res!1236432)) b!2999825))

(assert (= (and b!2999825 res!1236435) b!2999823))

(assert (= (and b!2999823 (not res!1236429)) b!2999828))

(assert (= (and b!2999828 (not res!1236430)) b!2999820))

(assert (= (or b!2999827 b!2999823 b!2999829) bm!201423))

(declare-fun m!3351715 () Bool)

(assert (=> b!2999821 m!3351715))

(assert (=> bm!201423 m!3351683))

(assert (=> d!846068 m!3351683))

(declare-fun m!3351717 () Bool)

(assert (=> d!846068 m!3351717))

(declare-fun m!3351719 () Bool)

(assert (=> b!2999828 m!3351719))

(assert (=> b!2999828 m!3351719))

(declare-fun m!3351721 () Bool)

(assert (=> b!2999828 m!3351721))

(declare-fun m!3351723 () Bool)

(assert (=> b!2999819 m!3351723))

(assert (=> b!2999824 m!3351719))

(assert (=> b!2999824 m!3351719))

(assert (=> b!2999824 m!3351721))

(assert (=> b!2999820 m!3351715))

(assert (=> b!2999826 m!3351715))

(assert (=> b!2999826 m!3351715))

(declare-fun m!3351725 () Bool)

(assert (=> b!2999826 m!3351725))

(assert (=> b!2999826 m!3351719))

(assert (=> b!2999826 m!3351725))

(assert (=> b!2999826 m!3351719))

(declare-fun m!3351727 () Bool)

(assert (=> b!2999826 m!3351727))

(assert (=> b!2999740 d!846068))

(declare-fun bm!201425 () Bool)

(declare-fun call!201430 () Bool)

(assert (=> bm!201425 (= call!201430 (isEmpty!19380 s!11993))))

(declare-fun b!2999844 () Bool)

(declare-fun e!1884595 () Bool)

(declare-fun e!1884594 () Bool)

(assert (=> b!2999844 (= e!1884595 e!1884594)))

(declare-fun c!493531 () Bool)

(assert (=> b!2999844 (= c!493531 ((_ is EmptyLang!9365) (regTwo!19242 r!17423)))))

(declare-fun b!2999845 () Bool)

(declare-fun lt!1041724 () Bool)

(assert (=> b!2999845 (= e!1884594 (not lt!1041724))))

(declare-fun b!2999846 () Bool)

(declare-fun res!1236452 () Bool)

(declare-fun e!1884593 () Bool)

(assert (=> b!2999846 (=> res!1236452 e!1884593)))

(assert (=> b!2999846 (= res!1236452 (not ((_ is ElementMatch!9365) (regTwo!19242 r!17423))))))

(assert (=> b!2999846 (= e!1884594 e!1884593)))

(declare-fun b!2999847 () Bool)

(declare-fun e!1884590 () Bool)

(assert (=> b!2999847 (= e!1884590 (nullable!3028 (regTwo!19242 r!17423)))))

(declare-fun b!2999848 () Bool)

(declare-fun e!1884589 () Bool)

(assert (=> b!2999848 (= e!1884589 (not (= (head!6685 s!11993) (c!493509 (regTwo!19242 r!17423)))))))

(declare-fun b!2999849 () Bool)

(declare-fun e!1884591 () Bool)

(assert (=> b!2999849 (= e!1884591 (= (head!6685 s!11993) (c!493509 (regTwo!19242 r!17423))))))

(declare-fun b!2999850 () Bool)

(declare-fun res!1236448 () Bool)

(assert (=> b!2999850 (=> res!1236448 e!1884593)))

(assert (=> b!2999850 (= res!1236448 e!1884591)))

(declare-fun res!1236447 () Bool)

(assert (=> b!2999850 (=> (not res!1236447) (not e!1884591))))

(assert (=> b!2999850 (= res!1236447 lt!1041724)))

(declare-fun b!2999851 () Bool)

(declare-fun e!1884592 () Bool)

(assert (=> b!2999851 (= e!1884592 e!1884589)))

(declare-fun res!1236445 () Bool)

(assert (=> b!2999851 (=> res!1236445 e!1884589)))

(assert (=> b!2999851 (= res!1236445 call!201430)))

(declare-fun b!2999853 () Bool)

(assert (=> b!2999853 (= e!1884593 e!1884592)))

(declare-fun res!1236451 () Bool)

(assert (=> b!2999853 (=> (not res!1236451) (not e!1884592))))

(assert (=> b!2999853 (= res!1236451 (not lt!1041724))))

(declare-fun b!2999854 () Bool)

(assert (=> b!2999854 (= e!1884590 (matchR!4247 (derivativeStep!2626 (regTwo!19242 r!17423) (head!6685 s!11993)) (tail!4911 s!11993)))))

(declare-fun b!2999855 () Bool)

(assert (=> b!2999855 (= e!1884595 (= lt!1041724 call!201430))))

(declare-fun b!2999856 () Bool)

(declare-fun res!1236446 () Bool)

(assert (=> b!2999856 (=> res!1236446 e!1884589)))

(assert (=> b!2999856 (= res!1236446 (not (isEmpty!19380 (tail!4911 s!11993))))))

(declare-fun b!2999857 () Bool)

(declare-fun res!1236449 () Bool)

(assert (=> b!2999857 (=> (not res!1236449) (not e!1884591))))

(assert (=> b!2999857 (= res!1236449 (not call!201430))))

(declare-fun b!2999852 () Bool)

(declare-fun res!1236450 () Bool)

(assert (=> b!2999852 (=> (not res!1236450) (not e!1884591))))

(assert (=> b!2999852 (= res!1236450 (isEmpty!19380 (tail!4911 s!11993)))))

(declare-fun d!846070 () Bool)

(assert (=> d!846070 e!1884595))

(declare-fun c!493533 () Bool)

(assert (=> d!846070 (= c!493533 ((_ is EmptyExpr!9365) (regTwo!19242 r!17423)))))

(assert (=> d!846070 (= lt!1041724 e!1884590)))

(declare-fun c!493532 () Bool)

(assert (=> d!846070 (= c!493532 (isEmpty!19380 s!11993))))

(assert (=> d!846070 (validRegex!4098 (regTwo!19242 r!17423))))

(assert (=> d!846070 (= (matchR!4247 (regTwo!19242 r!17423) s!11993) lt!1041724)))

(assert (= (and d!846070 c!493532) b!2999847))

(assert (= (and d!846070 (not c!493532)) b!2999854))

(assert (= (and d!846070 c!493533) b!2999855))

(assert (= (and d!846070 (not c!493533)) b!2999844))

(assert (= (and b!2999844 c!493531) b!2999845))

(assert (= (and b!2999844 (not c!493531)) b!2999846))

(assert (= (and b!2999846 (not res!1236452)) b!2999850))

(assert (= (and b!2999850 res!1236447) b!2999857))

(assert (= (and b!2999857 res!1236449) b!2999852))

(assert (= (and b!2999852 res!1236450) b!2999849))

(assert (= (and b!2999850 (not res!1236448)) b!2999853))

(assert (= (and b!2999853 res!1236451) b!2999851))

(assert (= (and b!2999851 (not res!1236445)) b!2999856))

(assert (= (and b!2999856 (not res!1236446)) b!2999848))

(assert (= (or b!2999855 b!2999851 b!2999857) bm!201425))

(assert (=> b!2999849 m!3351715))

(assert (=> bm!201425 m!3351683))

(assert (=> d!846070 m!3351683))

(declare-fun m!3351743 () Bool)

(assert (=> d!846070 m!3351743))

(assert (=> b!2999856 m!3351719))

(assert (=> b!2999856 m!3351719))

(assert (=> b!2999856 m!3351721))

(declare-fun m!3351745 () Bool)

(assert (=> b!2999847 m!3351745))

(assert (=> b!2999852 m!3351719))

(assert (=> b!2999852 m!3351719))

(assert (=> b!2999852 m!3351721))

(assert (=> b!2999848 m!3351715))

(assert (=> b!2999854 m!3351715))

(assert (=> b!2999854 m!3351715))

(declare-fun m!3351747 () Bool)

(assert (=> b!2999854 m!3351747))

(assert (=> b!2999854 m!3351719))

(assert (=> b!2999854 m!3351747))

(assert (=> b!2999854 m!3351719))

(declare-fun m!3351749 () Bool)

(assert (=> b!2999854 m!3351749))

(assert (=> b!2999740 d!846070))

(declare-fun d!846074 () Bool)

(assert (=> d!846074 (= (matchR!4247 (regTwo!19242 r!17423) s!11993) (matchR!4247 (simplify!356 (regTwo!19242 r!17423)) s!11993))))

(declare-fun lt!1041730 () Unit!49145)

(declare-fun choose!17791 (Regex!9365 List!35230) Unit!49145)

(assert (=> d!846074 (= lt!1041730 (choose!17791 (regTwo!19242 r!17423) s!11993))))

(assert (=> d!846074 (validRegex!4098 (regTwo!19242 r!17423))))

(assert (=> d!846074 (= (lemmaSimplifySound!214 (regTwo!19242 r!17423) s!11993) lt!1041730)))

(declare-fun bs!528336 () Bool)

(assert (= bs!528336 d!846074))

(declare-fun m!3351759 () Bool)

(assert (=> bs!528336 m!3351759))

(assert (=> bs!528336 m!3351673))

(assert (=> bs!528336 m!3351743))

(assert (=> bs!528336 m!3351673))

(declare-fun m!3351761 () Bool)

(assert (=> bs!528336 m!3351761))

(assert (=> bs!528336 m!3351687))

(assert (=> b!2999740 d!846074))

(declare-fun d!846078 () Bool)

(assert (=> d!846078 (= (isEmptyLang!455 lt!1041716) ((_ is EmptyLang!9365) lt!1041716))))

(assert (=> b!2999742 d!846078))

(declare-fun call!201455 () Bool)

(declare-fun c!493577 () Bool)

(declare-fun bm!201450 () Bool)

(declare-fun lt!1041749 () Regex!9365)

(declare-fun lt!1041747 () Regex!9365)

(assert (=> bm!201450 (= call!201455 (isEmptyLang!455 (ite c!493577 lt!1041749 lt!1041747)))))

(declare-fun b!2999971 () Bool)

(declare-fun e!1884678 () Regex!9365)

(assert (=> b!2999971 (= e!1884678 EmptyExpr!9365)))

(declare-fun b!2999972 () Bool)

(declare-fun e!1884670 () Regex!9365)

(assert (=> b!2999972 (= e!1884678 e!1884670)))

(declare-fun c!493581 () Bool)

(assert (=> b!2999972 (= c!493581 ((_ is Star!9365) (regTwo!19242 r!17423)))))

(declare-fun b!2999973 () Bool)

(declare-fun e!1884676 () Regex!9365)

(declare-fun e!1884677 () Regex!9365)

(assert (=> b!2999973 (= e!1884676 e!1884677)))

(declare-fun c!493573 () Bool)

(assert (=> b!2999973 (= c!493573 ((_ is ElementMatch!9365) (regTwo!19242 r!17423)))))

(declare-fun b!2999974 () Bool)

(declare-fun e!1884668 () Regex!9365)

(declare-fun lt!1041746 () Regex!9365)

(assert (=> b!2999974 (= e!1884668 (Star!9365 lt!1041746))))

(declare-fun b!2999975 () Bool)

(declare-fun e!1884675 () Regex!9365)

(declare-fun lt!1041745 () Regex!9365)

(assert (=> b!2999975 (= e!1884675 (Concat!14686 lt!1041747 lt!1041745))))

(declare-fun bm!201451 () Bool)

(declare-fun call!201460 () Bool)

(declare-fun call!201456 () Bool)

(assert (=> bm!201451 (= call!201460 call!201456)))

(declare-fun b!2999976 () Bool)

(declare-fun e!1884666 () Regex!9365)

(assert (=> b!2999976 (= e!1884666 EmptyLang!9365)))

(declare-fun b!2999977 () Bool)

(declare-fun e!1884671 () Regex!9365)

(assert (=> b!2999977 (= e!1884671 lt!1041745)))

(declare-fun b!2999978 () Bool)

(assert (=> b!2999978 (= e!1884676 EmptyLang!9365)))

(declare-fun b!2999979 () Bool)

(declare-fun e!1884667 () Regex!9365)

(declare-fun lt!1041748 () Regex!9365)

(assert (=> b!2999979 (= e!1884667 lt!1041748)))

(declare-fun call!201458 () Bool)

(declare-fun bm!201452 () Bool)

(assert (=> bm!201452 (= call!201458 (isEmptyExpr!472 (ite c!493581 lt!1041746 lt!1041745)))))

(declare-fun b!2999981 () Bool)

(declare-fun e!1884673 () Regex!9365)

(assert (=> b!2999981 (= e!1884673 e!1884666)))

(declare-fun call!201459 () Regex!9365)

(assert (=> b!2999981 (= lt!1041747 call!201459)))

(declare-fun call!201457 () Regex!9365)

(assert (=> b!2999981 (= lt!1041745 call!201457)))

(declare-fun res!1236488 () Bool)

(assert (=> b!2999981 (= res!1236488 call!201455)))

(declare-fun e!1884674 () Bool)

(assert (=> b!2999981 (=> res!1236488 e!1884674)))

(declare-fun c!493576 () Bool)

(assert (=> b!2999981 (= c!493576 e!1884674)))

(declare-fun bm!201453 () Bool)

(assert (=> bm!201453 (= call!201457 (simplify!356 (ite c!493577 (regOne!19243 (regTwo!19242 r!17423)) (regTwo!19242 (regTwo!19242 r!17423)))))))

(declare-fun b!2999982 () Bool)

(declare-fun c!493574 () Bool)

(assert (=> b!2999982 (= c!493574 (isEmptyExpr!472 lt!1041747))))

(assert (=> b!2999982 (= e!1884666 e!1884671)))

(declare-fun b!2999983 () Bool)

(declare-fun e!1884679 () Regex!9365)

(assert (=> b!2999983 (= e!1884679 lt!1041749)))

(declare-fun call!201461 () Regex!9365)

(declare-fun bm!201454 () Bool)

(assert (=> bm!201454 (= call!201461 (simplify!356 (ite c!493581 (reg!9694 (regTwo!19242 r!17423)) (ite c!493577 (regTwo!19243 (regTwo!19242 r!17423)) (regOne!19242 (regTwo!19242 r!17423))))))))

(declare-fun b!2999984 () Bool)

(assert (=> b!2999984 (= e!1884668 EmptyExpr!9365)))

(declare-fun bm!201455 () Bool)

(assert (=> bm!201455 (= call!201456 (isEmptyLang!455 (ite c!493581 lt!1041746 (ite c!493577 lt!1041748 lt!1041745))))))

(declare-fun b!2999985 () Bool)

(assert (=> b!2999985 (= e!1884674 call!201460)))

(declare-fun b!2999986 () Bool)

(assert (=> b!2999986 (= c!493577 ((_ is Union!9365) (regTwo!19242 r!17423)))))

(assert (=> b!2999986 (= e!1884670 e!1884673)))

(declare-fun bm!201456 () Bool)

(assert (=> bm!201456 (= call!201459 call!201461)))

(declare-fun b!2999987 () Bool)

(assert (=> b!2999987 (= e!1884677 (regTwo!19242 r!17423))))

(declare-fun b!2999988 () Bool)

(assert (=> b!2999988 (= e!1884667 (Union!9365 lt!1041748 lt!1041749))))

(declare-fun b!2999989 () Bool)

(declare-fun c!493578 () Bool)

(assert (=> b!2999989 (= c!493578 call!201455)))

(assert (=> b!2999989 (= e!1884679 e!1884667)))

(declare-fun b!2999990 () Bool)

(assert (=> b!2999990 (= e!1884673 e!1884679)))

(assert (=> b!2999990 (= lt!1041748 call!201457)))

(assert (=> b!2999990 (= lt!1041749 call!201459)))

(declare-fun c!493582 () Bool)

(assert (=> b!2999990 (= c!493582 call!201460)))

(declare-fun b!2999991 () Bool)

(assert (=> b!2999991 (= e!1884671 e!1884675)))

(declare-fun c!493580 () Bool)

(assert (=> b!2999991 (= c!493580 call!201458)))

(declare-fun b!2999992 () Bool)

(assert (=> b!2999992 (= e!1884675 lt!1041747)))

(declare-fun b!2999993 () Bool)

(declare-fun e!1884672 () Bool)

(declare-fun lt!1041744 () Regex!9365)

(assert (=> b!2999993 (= e!1884672 (= (nullable!3028 lt!1041744) (nullable!3028 (regTwo!19242 r!17423))))))

(declare-fun b!2999994 () Bool)

(declare-fun c!493575 () Bool)

(declare-fun e!1884669 () Bool)

(assert (=> b!2999994 (= c!493575 e!1884669)))

(declare-fun res!1236489 () Bool)

(assert (=> b!2999994 (=> res!1236489 e!1884669)))

(assert (=> b!2999994 (= res!1236489 call!201456)))

(assert (=> b!2999994 (= lt!1041746 call!201461)))

(assert (=> b!2999994 (= e!1884670 e!1884668)))

(declare-fun b!2999995 () Bool)

(assert (=> b!2999995 (= e!1884669 call!201458)))

(declare-fun d!846080 () Bool)

(assert (=> d!846080 e!1884672))

(declare-fun res!1236490 () Bool)

(assert (=> d!846080 (=> (not res!1236490) (not e!1884672))))

(assert (=> d!846080 (= res!1236490 (validRegex!4098 lt!1041744))))

(assert (=> d!846080 (= lt!1041744 e!1884676)))

(declare-fun c!493579 () Bool)

(assert (=> d!846080 (= c!493579 ((_ is EmptyLang!9365) (regTwo!19242 r!17423)))))

(assert (=> d!846080 (validRegex!4098 (regTwo!19242 r!17423))))

(assert (=> d!846080 (= (simplify!356 (regTwo!19242 r!17423)) lt!1041744)))

(declare-fun b!2999980 () Bool)

(declare-fun c!493583 () Bool)

(assert (=> b!2999980 (= c!493583 ((_ is EmptyExpr!9365) (regTwo!19242 r!17423)))))

(assert (=> b!2999980 (= e!1884677 e!1884678)))

(assert (= (and d!846080 c!493579) b!2999978))

(assert (= (and d!846080 (not c!493579)) b!2999973))

(assert (= (and b!2999973 c!493573) b!2999987))

(assert (= (and b!2999973 (not c!493573)) b!2999980))

(assert (= (and b!2999980 c!493583) b!2999971))

(assert (= (and b!2999980 (not c!493583)) b!2999972))

(assert (= (and b!2999972 c!493581) b!2999994))

(assert (= (and b!2999972 (not c!493581)) b!2999986))

(assert (= (and b!2999994 (not res!1236489)) b!2999995))

(assert (= (and b!2999994 c!493575) b!2999984))

(assert (= (and b!2999994 (not c!493575)) b!2999974))

(assert (= (and b!2999986 c!493577) b!2999990))

(assert (= (and b!2999986 (not c!493577)) b!2999981))

(assert (= (and b!2999990 c!493582) b!2999983))

(assert (= (and b!2999990 (not c!493582)) b!2999989))

(assert (= (and b!2999989 c!493578) b!2999979))

(assert (= (and b!2999989 (not c!493578)) b!2999988))

(assert (= (and b!2999981 (not res!1236488)) b!2999985))

(assert (= (and b!2999981 c!493576) b!2999976))

(assert (= (and b!2999981 (not c!493576)) b!2999982))

(assert (= (and b!2999982 c!493574) b!2999977))

(assert (= (and b!2999982 (not c!493574)) b!2999991))

(assert (= (and b!2999991 c!493580) b!2999992))

(assert (= (and b!2999991 (not c!493580)) b!2999975))

(assert (= (or b!2999990 b!2999981) bm!201453))

(assert (= (or b!2999990 b!2999981) bm!201456))

(assert (= (or b!2999990 b!2999985) bm!201451))

(assert (= (or b!2999989 b!2999981) bm!201450))

(assert (= (or b!2999995 b!2999991) bm!201452))

(assert (= (or b!2999994 bm!201456) bm!201454))

(assert (= (or b!2999994 bm!201451) bm!201455))

(assert (= (and d!846080 res!1236490) b!2999993))

(declare-fun m!3351775 () Bool)

(assert (=> bm!201450 m!3351775))

(declare-fun m!3351777 () Bool)

(assert (=> bm!201453 m!3351777))

(declare-fun m!3351779 () Bool)

(assert (=> bm!201452 m!3351779))

(declare-fun m!3351781 () Bool)

(assert (=> d!846080 m!3351781))

(assert (=> d!846080 m!3351743))

(declare-fun m!3351783 () Bool)

(assert (=> bm!201454 m!3351783))

(declare-fun m!3351785 () Bool)

(assert (=> bm!201455 m!3351785))

(declare-fun m!3351787 () Bool)

(assert (=> b!2999982 m!3351787))

(declare-fun m!3351789 () Bool)

(assert (=> b!2999993 m!3351789))

(assert (=> b!2999993 m!3351745))

(assert (=> b!2999742 d!846080))

(declare-fun c!493588 () Bool)

(declare-fun call!201462 () Bool)

(declare-fun lt!1041753 () Regex!9365)

(declare-fun lt!1041755 () Regex!9365)

(declare-fun bm!201457 () Bool)

(assert (=> bm!201457 (= call!201462 (isEmptyLang!455 (ite c!493588 lt!1041755 lt!1041753)))))

(declare-fun b!2999996 () Bool)

(declare-fun e!1884692 () Regex!9365)

(assert (=> b!2999996 (= e!1884692 EmptyExpr!9365)))

(declare-fun b!2999997 () Bool)

(declare-fun e!1884684 () Regex!9365)

(assert (=> b!2999997 (= e!1884692 e!1884684)))

(declare-fun c!493592 () Bool)

(assert (=> b!2999997 (= c!493592 ((_ is Star!9365) (regOne!19242 r!17423)))))

(declare-fun b!2999998 () Bool)

(declare-fun e!1884690 () Regex!9365)

(declare-fun e!1884691 () Regex!9365)

(assert (=> b!2999998 (= e!1884690 e!1884691)))

(declare-fun c!493584 () Bool)

(assert (=> b!2999998 (= c!493584 ((_ is ElementMatch!9365) (regOne!19242 r!17423)))))

(declare-fun b!2999999 () Bool)

(declare-fun e!1884682 () Regex!9365)

(declare-fun lt!1041752 () Regex!9365)

(assert (=> b!2999999 (= e!1884682 (Star!9365 lt!1041752))))

(declare-fun b!3000000 () Bool)

(declare-fun e!1884689 () Regex!9365)

(declare-fun lt!1041751 () Regex!9365)

(assert (=> b!3000000 (= e!1884689 (Concat!14686 lt!1041753 lt!1041751))))

(declare-fun bm!201458 () Bool)

(declare-fun call!201467 () Bool)

(declare-fun call!201463 () Bool)

(assert (=> bm!201458 (= call!201467 call!201463)))

(declare-fun b!3000001 () Bool)

(declare-fun e!1884680 () Regex!9365)

(assert (=> b!3000001 (= e!1884680 EmptyLang!9365)))

(declare-fun b!3000002 () Bool)

(declare-fun e!1884685 () Regex!9365)

(assert (=> b!3000002 (= e!1884685 lt!1041751)))

(declare-fun b!3000003 () Bool)

(assert (=> b!3000003 (= e!1884690 EmptyLang!9365)))

(declare-fun b!3000004 () Bool)

(declare-fun e!1884681 () Regex!9365)

(declare-fun lt!1041754 () Regex!9365)

(assert (=> b!3000004 (= e!1884681 lt!1041754)))

(declare-fun bm!201459 () Bool)

(declare-fun call!201465 () Bool)

(assert (=> bm!201459 (= call!201465 (isEmptyExpr!472 (ite c!493592 lt!1041752 lt!1041751)))))

(declare-fun b!3000006 () Bool)

(declare-fun e!1884687 () Regex!9365)

(assert (=> b!3000006 (= e!1884687 e!1884680)))

(declare-fun call!201466 () Regex!9365)

(assert (=> b!3000006 (= lt!1041753 call!201466)))

(declare-fun call!201464 () Regex!9365)

(assert (=> b!3000006 (= lt!1041751 call!201464)))

(declare-fun res!1236491 () Bool)

(assert (=> b!3000006 (= res!1236491 call!201462)))

(declare-fun e!1884688 () Bool)

(assert (=> b!3000006 (=> res!1236491 e!1884688)))

(declare-fun c!493587 () Bool)

(assert (=> b!3000006 (= c!493587 e!1884688)))

(declare-fun bm!201460 () Bool)

(assert (=> bm!201460 (= call!201464 (simplify!356 (ite c!493588 (regOne!19243 (regOne!19242 r!17423)) (regTwo!19242 (regOne!19242 r!17423)))))))

(declare-fun b!3000007 () Bool)

(declare-fun c!493585 () Bool)

(assert (=> b!3000007 (= c!493585 (isEmptyExpr!472 lt!1041753))))

(assert (=> b!3000007 (= e!1884680 e!1884685)))

(declare-fun b!3000008 () Bool)

(declare-fun e!1884693 () Regex!9365)

(assert (=> b!3000008 (= e!1884693 lt!1041755)))

(declare-fun bm!201461 () Bool)

(declare-fun call!201468 () Regex!9365)

(assert (=> bm!201461 (= call!201468 (simplify!356 (ite c!493592 (reg!9694 (regOne!19242 r!17423)) (ite c!493588 (regTwo!19243 (regOne!19242 r!17423)) (regOne!19242 (regOne!19242 r!17423))))))))

(declare-fun b!3000009 () Bool)

(assert (=> b!3000009 (= e!1884682 EmptyExpr!9365)))

(declare-fun bm!201462 () Bool)

(assert (=> bm!201462 (= call!201463 (isEmptyLang!455 (ite c!493592 lt!1041752 (ite c!493588 lt!1041754 lt!1041751))))))

(declare-fun b!3000010 () Bool)

(assert (=> b!3000010 (= e!1884688 call!201467)))

(declare-fun b!3000011 () Bool)

(assert (=> b!3000011 (= c!493588 ((_ is Union!9365) (regOne!19242 r!17423)))))

(assert (=> b!3000011 (= e!1884684 e!1884687)))

(declare-fun bm!201463 () Bool)

(assert (=> bm!201463 (= call!201466 call!201468)))

(declare-fun b!3000012 () Bool)

(assert (=> b!3000012 (= e!1884691 (regOne!19242 r!17423))))

(declare-fun b!3000013 () Bool)

(assert (=> b!3000013 (= e!1884681 (Union!9365 lt!1041754 lt!1041755))))

(declare-fun b!3000014 () Bool)

(declare-fun c!493589 () Bool)

(assert (=> b!3000014 (= c!493589 call!201462)))

(assert (=> b!3000014 (= e!1884693 e!1884681)))

(declare-fun b!3000015 () Bool)

(assert (=> b!3000015 (= e!1884687 e!1884693)))

(assert (=> b!3000015 (= lt!1041754 call!201464)))

(assert (=> b!3000015 (= lt!1041755 call!201466)))

(declare-fun c!493593 () Bool)

(assert (=> b!3000015 (= c!493593 call!201467)))

(declare-fun b!3000016 () Bool)

(assert (=> b!3000016 (= e!1884685 e!1884689)))

(declare-fun c!493591 () Bool)

(assert (=> b!3000016 (= c!493591 call!201465)))

(declare-fun b!3000017 () Bool)

(assert (=> b!3000017 (= e!1884689 lt!1041753)))

(declare-fun b!3000018 () Bool)

(declare-fun e!1884686 () Bool)

(declare-fun lt!1041750 () Regex!9365)

(assert (=> b!3000018 (= e!1884686 (= (nullable!3028 lt!1041750) (nullable!3028 (regOne!19242 r!17423))))))

(declare-fun b!3000019 () Bool)

(declare-fun c!493586 () Bool)

(declare-fun e!1884683 () Bool)

(assert (=> b!3000019 (= c!493586 e!1884683)))

(declare-fun res!1236492 () Bool)

(assert (=> b!3000019 (=> res!1236492 e!1884683)))

(assert (=> b!3000019 (= res!1236492 call!201463)))

(assert (=> b!3000019 (= lt!1041752 call!201468)))

(assert (=> b!3000019 (= e!1884684 e!1884682)))

(declare-fun b!3000020 () Bool)

(assert (=> b!3000020 (= e!1884683 call!201465)))

(declare-fun d!846088 () Bool)

(assert (=> d!846088 e!1884686))

(declare-fun res!1236493 () Bool)

(assert (=> d!846088 (=> (not res!1236493) (not e!1884686))))

(assert (=> d!846088 (= res!1236493 (validRegex!4098 lt!1041750))))

(assert (=> d!846088 (= lt!1041750 e!1884690)))

(declare-fun c!493590 () Bool)

(assert (=> d!846088 (= c!493590 ((_ is EmptyLang!9365) (regOne!19242 r!17423)))))

(assert (=> d!846088 (validRegex!4098 (regOne!19242 r!17423))))

(assert (=> d!846088 (= (simplify!356 (regOne!19242 r!17423)) lt!1041750)))

(declare-fun b!3000005 () Bool)

(declare-fun c!493594 () Bool)

(assert (=> b!3000005 (= c!493594 ((_ is EmptyExpr!9365) (regOne!19242 r!17423)))))

(assert (=> b!3000005 (= e!1884691 e!1884692)))

(assert (= (and d!846088 c!493590) b!3000003))

(assert (= (and d!846088 (not c!493590)) b!2999998))

(assert (= (and b!2999998 c!493584) b!3000012))

(assert (= (and b!2999998 (not c!493584)) b!3000005))

(assert (= (and b!3000005 c!493594) b!2999996))

(assert (= (and b!3000005 (not c!493594)) b!2999997))

(assert (= (and b!2999997 c!493592) b!3000019))

(assert (= (and b!2999997 (not c!493592)) b!3000011))

(assert (= (and b!3000019 (not res!1236492)) b!3000020))

(assert (= (and b!3000019 c!493586) b!3000009))

(assert (= (and b!3000019 (not c!493586)) b!2999999))

(assert (= (and b!3000011 c!493588) b!3000015))

(assert (= (and b!3000011 (not c!493588)) b!3000006))

(assert (= (and b!3000015 c!493593) b!3000008))

(assert (= (and b!3000015 (not c!493593)) b!3000014))

(assert (= (and b!3000014 c!493589) b!3000004))

(assert (= (and b!3000014 (not c!493589)) b!3000013))

(assert (= (and b!3000006 (not res!1236491)) b!3000010))

(assert (= (and b!3000006 c!493587) b!3000001))

(assert (= (and b!3000006 (not c!493587)) b!3000007))

(assert (= (and b!3000007 c!493585) b!3000002))

(assert (= (and b!3000007 (not c!493585)) b!3000016))

(assert (= (and b!3000016 c!493591) b!3000017))

(assert (= (and b!3000016 (not c!493591)) b!3000000))

(assert (= (or b!3000015 b!3000006) bm!201460))

(assert (= (or b!3000015 b!3000006) bm!201463))

(assert (= (or b!3000015 b!3000010) bm!201458))

(assert (= (or b!3000014 b!3000006) bm!201457))

(assert (= (or b!3000020 b!3000016) bm!201459))

(assert (= (or b!3000019 bm!201463) bm!201461))

(assert (= (or b!3000019 bm!201458) bm!201462))

(assert (= (and d!846088 res!1236493) b!3000018))

(declare-fun m!3351791 () Bool)

(assert (=> bm!201457 m!3351791))

(declare-fun m!3351793 () Bool)

(assert (=> bm!201460 m!3351793))

(declare-fun m!3351795 () Bool)

(assert (=> bm!201459 m!3351795))

(declare-fun m!3351797 () Bool)

(assert (=> d!846088 m!3351797))

(assert (=> d!846088 m!3351705))

(declare-fun m!3351799 () Bool)

(assert (=> bm!201461 m!3351799))

(declare-fun m!3351801 () Bool)

(assert (=> bm!201462 m!3351801))

(declare-fun m!3351803 () Bool)

(assert (=> b!3000007 m!3351803))

(declare-fun m!3351805 () Bool)

(assert (=> b!3000018 m!3351805))

(assert (=> b!3000018 m!3351679))

(assert (=> b!2999742 d!846088))

(declare-fun b!3000247 () Bool)

(assert (=> b!3000247 true))

(assert (=> b!3000247 true))

(declare-fun bs!528341 () Bool)

(declare-fun b!3000246 () Bool)

(assert (= bs!528341 (and b!3000246 b!3000247)))

(declare-fun lambda!112078 () Int)

(declare-fun lambda!112077 () Int)

(assert (=> bs!528341 (not (= lambda!112078 lambda!112077))))

(assert (=> b!3000246 true))

(assert (=> b!3000246 true))

(declare-fun b!3000241 () Bool)

(declare-fun e!1884809 () Bool)

(declare-fun call!201509 () Bool)

(assert (=> b!3000241 (= e!1884809 call!201509)))

(declare-fun bm!201504 () Bool)

(assert (=> bm!201504 (= call!201509 (isEmpty!19380 s!11993))))

(declare-fun b!3000242 () Bool)

(declare-fun e!1884804 () Bool)

(assert (=> b!3000242 (= e!1884804 (matchRSpec!1502 (regTwo!19243 r!17423) s!11993))))

(declare-fun b!3000243 () Bool)

(declare-fun e!1884808 () Bool)

(assert (=> b!3000243 (= e!1884808 (= s!11993 (Cons!35106 (c!493509 r!17423) Nil!35106)))))

(declare-fun d!846090 () Bool)

(declare-fun c!493658 () Bool)

(assert (=> d!846090 (= c!493658 ((_ is EmptyExpr!9365) r!17423))))

(assert (=> d!846090 (= (matchRSpec!1502 r!17423 s!11993) e!1884809)))

(declare-fun b!3000244 () Bool)

(declare-fun e!1884803 () Bool)

(assert (=> b!3000244 (= e!1884809 e!1884803)))

(declare-fun res!1236551 () Bool)

(assert (=> b!3000244 (= res!1236551 (not ((_ is EmptyLang!9365) r!17423)))))

(assert (=> b!3000244 (=> (not res!1236551) (not e!1884803))))

(declare-fun call!201510 () Bool)

(declare-fun bm!201505 () Bool)

(declare-fun c!493660 () Bool)

(declare-fun Exists!1638 (Int) Bool)

(assert (=> bm!201505 (= call!201510 (Exists!1638 (ite c!493660 lambda!112077 lambda!112078)))))

(declare-fun b!3000245 () Bool)

(declare-fun e!1884805 () Bool)

(assert (=> b!3000245 (= e!1884805 e!1884804)))

(declare-fun res!1236552 () Bool)

(assert (=> b!3000245 (= res!1236552 (matchRSpec!1502 (regOne!19243 r!17423) s!11993))))

(assert (=> b!3000245 (=> res!1236552 e!1884804)))

(declare-fun e!1884807 () Bool)

(assert (=> b!3000246 (= e!1884807 call!201510)))

(declare-fun e!1884806 () Bool)

(assert (=> b!3000247 (= e!1884806 call!201510)))

(declare-fun b!3000248 () Bool)

(declare-fun c!493659 () Bool)

(assert (=> b!3000248 (= c!493659 ((_ is Union!9365) r!17423))))

(assert (=> b!3000248 (= e!1884808 e!1884805)))

(declare-fun b!3000249 () Bool)

(declare-fun c!493657 () Bool)

(assert (=> b!3000249 (= c!493657 ((_ is ElementMatch!9365) r!17423))))

(assert (=> b!3000249 (= e!1884803 e!1884808)))

(declare-fun b!3000250 () Bool)

(declare-fun res!1236553 () Bool)

(assert (=> b!3000250 (=> res!1236553 e!1884806)))

(assert (=> b!3000250 (= res!1236553 call!201509)))

(assert (=> b!3000250 (= e!1884807 e!1884806)))

(declare-fun b!3000251 () Bool)

(assert (=> b!3000251 (= e!1884805 e!1884807)))

(assert (=> b!3000251 (= c!493660 ((_ is Star!9365) r!17423))))

(assert (= (and d!846090 c!493658) b!3000241))

(assert (= (and d!846090 (not c!493658)) b!3000244))

(assert (= (and b!3000244 res!1236551) b!3000249))

(assert (= (and b!3000249 c!493657) b!3000243))

(assert (= (and b!3000249 (not c!493657)) b!3000248))

(assert (= (and b!3000248 c!493659) b!3000245))

(assert (= (and b!3000248 (not c!493659)) b!3000251))

(assert (= (and b!3000245 (not res!1236552)) b!3000242))

(assert (= (and b!3000251 c!493660) b!3000250))

(assert (= (and b!3000251 (not c!493660)) b!3000246))

(assert (= (and b!3000250 (not res!1236553)) b!3000247))

(assert (= (or b!3000247 b!3000246) bm!201505))

(assert (= (or b!3000241 b!3000250) bm!201504))

(assert (=> bm!201504 m!3351683))

(declare-fun m!3351867 () Bool)

(assert (=> b!3000242 m!3351867))

(declare-fun m!3351869 () Bool)

(assert (=> bm!201505 m!3351869))

(declare-fun m!3351871 () Bool)

(assert (=> b!3000245 m!3351871))

(assert (=> b!2999736 d!846090))

(declare-fun bm!201506 () Bool)

(declare-fun call!201511 () Bool)

(assert (=> bm!201506 (= call!201511 (isEmpty!19380 s!11993))))

(declare-fun b!3000256 () Bool)

(declare-fun e!1884816 () Bool)

(declare-fun e!1884815 () Bool)

(assert (=> b!3000256 (= e!1884816 e!1884815)))

(declare-fun c!493661 () Bool)

(assert (=> b!3000256 (= c!493661 ((_ is EmptyLang!9365) r!17423))))

(declare-fun b!3000257 () Bool)

(declare-fun lt!1041785 () Bool)

(assert (=> b!3000257 (= e!1884815 (not lt!1041785))))

(declare-fun b!3000258 () Bool)

(declare-fun res!1236561 () Bool)

(declare-fun e!1884814 () Bool)

(assert (=> b!3000258 (=> res!1236561 e!1884814)))

(assert (=> b!3000258 (= res!1236561 (not ((_ is ElementMatch!9365) r!17423)))))

(assert (=> b!3000258 (= e!1884815 e!1884814)))

(declare-fun b!3000259 () Bool)

(declare-fun e!1884811 () Bool)

(assert (=> b!3000259 (= e!1884811 (nullable!3028 r!17423))))

(declare-fun b!3000260 () Bool)

(declare-fun e!1884810 () Bool)

(assert (=> b!3000260 (= e!1884810 (not (= (head!6685 s!11993) (c!493509 r!17423))))))

(declare-fun b!3000261 () Bool)

(declare-fun e!1884812 () Bool)

(assert (=> b!3000261 (= e!1884812 (= (head!6685 s!11993) (c!493509 r!17423)))))

(declare-fun b!3000262 () Bool)

(declare-fun res!1236557 () Bool)

(assert (=> b!3000262 (=> res!1236557 e!1884814)))

(assert (=> b!3000262 (= res!1236557 e!1884812)))

(declare-fun res!1236556 () Bool)

(assert (=> b!3000262 (=> (not res!1236556) (not e!1884812))))

(assert (=> b!3000262 (= res!1236556 lt!1041785)))

(declare-fun b!3000263 () Bool)

(declare-fun e!1884813 () Bool)

(assert (=> b!3000263 (= e!1884813 e!1884810)))

(declare-fun res!1236554 () Bool)

(assert (=> b!3000263 (=> res!1236554 e!1884810)))

(assert (=> b!3000263 (= res!1236554 call!201511)))

(declare-fun b!3000265 () Bool)

(assert (=> b!3000265 (= e!1884814 e!1884813)))

(declare-fun res!1236560 () Bool)

(assert (=> b!3000265 (=> (not res!1236560) (not e!1884813))))

(assert (=> b!3000265 (= res!1236560 (not lt!1041785))))

(declare-fun b!3000266 () Bool)

(assert (=> b!3000266 (= e!1884811 (matchR!4247 (derivativeStep!2626 r!17423 (head!6685 s!11993)) (tail!4911 s!11993)))))

(declare-fun b!3000267 () Bool)

(assert (=> b!3000267 (= e!1884816 (= lt!1041785 call!201511))))

(declare-fun b!3000268 () Bool)

(declare-fun res!1236555 () Bool)

(assert (=> b!3000268 (=> res!1236555 e!1884810)))

(assert (=> b!3000268 (= res!1236555 (not (isEmpty!19380 (tail!4911 s!11993))))))

(declare-fun b!3000269 () Bool)

(declare-fun res!1236558 () Bool)

(assert (=> b!3000269 (=> (not res!1236558) (not e!1884812))))

(assert (=> b!3000269 (= res!1236558 (not call!201511))))

(declare-fun b!3000264 () Bool)

(declare-fun res!1236559 () Bool)

(assert (=> b!3000264 (=> (not res!1236559) (not e!1884812))))

(assert (=> b!3000264 (= res!1236559 (isEmpty!19380 (tail!4911 s!11993)))))

(declare-fun d!846110 () Bool)

(assert (=> d!846110 e!1884816))

(declare-fun c!493663 () Bool)

(assert (=> d!846110 (= c!493663 ((_ is EmptyExpr!9365) r!17423))))

(assert (=> d!846110 (= lt!1041785 e!1884811)))

(declare-fun c!493662 () Bool)

(assert (=> d!846110 (= c!493662 (isEmpty!19380 s!11993))))

(assert (=> d!846110 (validRegex!4098 r!17423)))

(assert (=> d!846110 (= (matchR!4247 r!17423 s!11993) lt!1041785)))

(assert (= (and d!846110 c!493662) b!3000259))

(assert (= (and d!846110 (not c!493662)) b!3000266))

(assert (= (and d!846110 c!493663) b!3000267))

(assert (= (and d!846110 (not c!493663)) b!3000256))

(assert (= (and b!3000256 c!493661) b!3000257))

(assert (= (and b!3000256 (not c!493661)) b!3000258))

(assert (= (and b!3000258 (not res!1236561)) b!3000262))

(assert (= (and b!3000262 res!1236556) b!3000269))

(assert (= (and b!3000269 res!1236558) b!3000264))

(assert (= (and b!3000264 res!1236559) b!3000261))

(assert (= (and b!3000262 (not res!1236557)) b!3000265))

(assert (= (and b!3000265 res!1236560) b!3000263))

(assert (= (and b!3000263 (not res!1236554)) b!3000268))

(assert (= (and b!3000268 (not res!1236555)) b!3000260))

(assert (= (or b!3000267 b!3000263 b!3000269) bm!201506))

(assert (=> b!3000261 m!3351715))

(assert (=> bm!201506 m!3351683))

(assert (=> d!846110 m!3351683))

(assert (=> d!846110 m!3351693))

(assert (=> b!3000268 m!3351719))

(assert (=> b!3000268 m!3351719))

(assert (=> b!3000268 m!3351721))

(declare-fun m!3351873 () Bool)

(assert (=> b!3000259 m!3351873))

(assert (=> b!3000264 m!3351719))

(assert (=> b!3000264 m!3351719))

(assert (=> b!3000264 m!3351721))

(assert (=> b!3000260 m!3351715))

(assert (=> b!3000266 m!3351715))

(assert (=> b!3000266 m!3351715))

(declare-fun m!3351875 () Bool)

(assert (=> b!3000266 m!3351875))

(assert (=> b!3000266 m!3351719))

(assert (=> b!3000266 m!3351875))

(assert (=> b!3000266 m!3351719))

(declare-fun m!3351877 () Bool)

(assert (=> b!3000266 m!3351877))

(assert (=> b!2999736 d!846110))

(declare-fun d!846112 () Bool)

(assert (=> d!846112 (= (matchR!4247 r!17423 s!11993) (matchRSpec!1502 r!17423 s!11993))))

(declare-fun lt!1041788 () Unit!49145)

(declare-fun choose!17792 (Regex!9365 List!35230) Unit!49145)

(assert (=> d!846112 (= lt!1041788 (choose!17792 r!17423 s!11993))))

(assert (=> d!846112 (validRegex!4098 r!17423)))

(assert (=> d!846112 (= (mainMatchTheorem!1502 r!17423 s!11993) lt!1041788)))

(declare-fun bs!528342 () Bool)

(assert (= bs!528342 d!846112))

(assert (=> bs!528342 m!3351697))

(assert (=> bs!528342 m!3351695))

(declare-fun m!3351879 () Bool)

(assert (=> bs!528342 m!3351879))

(assert (=> bs!528342 m!3351693))

(assert (=> b!2999736 d!846112))

(declare-fun d!846114 () Bool)

(assert (=> d!846114 (= (isEmptyLang!455 lt!1041714) ((_ is EmptyLang!9365) lt!1041714))))

(assert (=> b!2999733 d!846114))

(declare-fun d!846116 () Bool)

(assert (=> d!846116 (= (isEmptyExpr!472 lt!1041716) ((_ is EmptyExpr!9365) lt!1041716))))

(assert (=> b!2999743 d!846116))

(declare-fun d!846118 () Bool)

(declare-fun nullableFct!863 (Regex!9365) Bool)

(assert (=> d!846118 (= (nullable!3028 (regOne!19242 r!17423)) (nullableFct!863 (regOne!19242 r!17423)))))

(declare-fun bs!528343 () Bool)

(assert (= bs!528343 d!846118))

(declare-fun m!3351881 () Bool)

(assert (=> bs!528343 m!3351881))

(assert (=> b!2999734 d!846118))

(declare-fun b!3000288 () Bool)

(declare-fun e!1884836 () Bool)

(declare-fun e!1884831 () Bool)

(assert (=> b!3000288 (= e!1884836 e!1884831)))

(declare-fun c!493669 () Bool)

(assert (=> b!3000288 (= c!493669 ((_ is Union!9365) r!17423))))

(declare-fun b!3000289 () Bool)

(declare-fun e!1884832 () Bool)

(assert (=> b!3000289 (= e!1884832 e!1884836)))

(declare-fun c!493668 () Bool)

(assert (=> b!3000289 (= c!493668 ((_ is Star!9365) r!17423))))

(declare-fun call!201519 () Bool)

(declare-fun bm!201513 () Bool)

(assert (=> bm!201513 (= call!201519 (validRegex!4098 (ite c!493668 (reg!9694 r!17423) (ite c!493669 (regOne!19243 r!17423) (regTwo!19242 r!17423)))))))

(declare-fun bm!201514 () Bool)

(declare-fun call!201520 () Bool)

(assert (=> bm!201514 (= call!201520 (validRegex!4098 (ite c!493669 (regTwo!19243 r!17423) (regOne!19242 r!17423))))))

(declare-fun bm!201515 () Bool)

(declare-fun call!201518 () Bool)

(assert (=> bm!201515 (= call!201518 call!201519)))

(declare-fun b!3000290 () Bool)

(declare-fun e!1884835 () Bool)

(assert (=> b!3000290 (= e!1884835 call!201518)))

(declare-fun b!3000291 () Bool)

(declare-fun e!1884833 () Bool)

(assert (=> b!3000291 (= e!1884833 e!1884835)))

(declare-fun res!1236576 () Bool)

(assert (=> b!3000291 (=> (not res!1236576) (not e!1884835))))

(assert (=> b!3000291 (= res!1236576 call!201520)))

(declare-fun d!846120 () Bool)

(declare-fun res!1236573 () Bool)

(assert (=> d!846120 (=> res!1236573 e!1884832)))

(assert (=> d!846120 (= res!1236573 ((_ is ElementMatch!9365) r!17423))))

(assert (=> d!846120 (= (validRegex!4098 r!17423) e!1884832)))

(declare-fun b!3000292 () Bool)

(declare-fun res!1236574 () Bool)

(assert (=> b!3000292 (=> res!1236574 e!1884833)))

(assert (=> b!3000292 (= res!1236574 (not ((_ is Concat!14686) r!17423)))))

(assert (=> b!3000292 (= e!1884831 e!1884833)))

(declare-fun b!3000293 () Bool)

(declare-fun res!1236575 () Bool)

(declare-fun e!1884837 () Bool)

(assert (=> b!3000293 (=> (not res!1236575) (not e!1884837))))

(assert (=> b!3000293 (= res!1236575 call!201518)))

(assert (=> b!3000293 (= e!1884831 e!1884837)))

(declare-fun b!3000294 () Bool)

(declare-fun e!1884834 () Bool)

(assert (=> b!3000294 (= e!1884834 call!201519)))

(declare-fun b!3000295 () Bool)

(assert (=> b!3000295 (= e!1884836 e!1884834)))

(declare-fun res!1236572 () Bool)

(assert (=> b!3000295 (= res!1236572 (not (nullable!3028 (reg!9694 r!17423))))))

(assert (=> b!3000295 (=> (not res!1236572) (not e!1884834))))

(declare-fun b!3000296 () Bool)

(assert (=> b!3000296 (= e!1884837 call!201520)))

(assert (= (and d!846120 (not res!1236573)) b!3000289))

(assert (= (and b!3000289 c!493668) b!3000295))

(assert (= (and b!3000289 (not c!493668)) b!3000288))

(assert (= (and b!3000295 res!1236572) b!3000294))

(assert (= (and b!3000288 c!493669) b!3000293))

(assert (= (and b!3000288 (not c!493669)) b!3000292))

(assert (= (and b!3000293 res!1236575) b!3000296))

(assert (= (and b!3000292 (not res!1236574)) b!3000291))

(assert (= (and b!3000291 res!1236576) b!3000290))

(assert (= (or b!3000293 b!3000290) bm!201515))

(assert (= (or b!3000296 b!3000291) bm!201514))

(assert (= (or b!3000294 bm!201515) bm!201513))

(declare-fun m!3351883 () Bool)

(assert (=> bm!201513 m!3351883))

(declare-fun m!3351885 () Bool)

(assert (=> bm!201514 m!3351885))

(declare-fun m!3351887 () Bool)

(assert (=> b!3000295 m!3351887))

(assert (=> start!289224 d!846120))

(declare-fun e!1884840 () Bool)

(assert (=> b!2999737 (= tp!953573 e!1884840)))

(declare-fun b!3000309 () Bool)

(declare-fun tp!953627 () Bool)

(assert (=> b!3000309 (= e!1884840 tp!953627)))

(declare-fun b!3000308 () Bool)

(declare-fun tp!953629 () Bool)

(declare-fun tp!953630 () Bool)

(assert (=> b!3000308 (= e!1884840 (and tp!953629 tp!953630))))

(declare-fun b!3000310 () Bool)

(declare-fun tp!953628 () Bool)

(declare-fun tp!953626 () Bool)

(assert (=> b!3000310 (= e!1884840 (and tp!953628 tp!953626))))

(declare-fun b!3000307 () Bool)

(assert (=> b!3000307 (= e!1884840 tp_is_empty!16293)))

(assert (= (and b!2999737 ((_ is ElementMatch!9365) (reg!9694 r!17423))) b!3000307))

(assert (= (and b!2999737 ((_ is Concat!14686) (reg!9694 r!17423))) b!3000308))

(assert (= (and b!2999737 ((_ is Star!9365) (reg!9694 r!17423))) b!3000309))

(assert (= (and b!2999737 ((_ is Union!9365) (reg!9694 r!17423))) b!3000310))

(declare-fun b!3000315 () Bool)

(declare-fun e!1884843 () Bool)

(declare-fun tp!953633 () Bool)

(assert (=> b!3000315 (= e!1884843 (and tp_is_empty!16293 tp!953633))))

(assert (=> b!2999745 (= tp!953574 e!1884843)))

(assert (= (and b!2999745 ((_ is Cons!35106) (t!234295 s!11993))) b!3000315))

(declare-fun e!1884844 () Bool)

(assert (=> b!2999739 (= tp!953575 e!1884844)))

(declare-fun b!3000318 () Bool)

(declare-fun tp!953635 () Bool)

(assert (=> b!3000318 (= e!1884844 tp!953635)))

(declare-fun b!3000317 () Bool)

(declare-fun tp!953637 () Bool)

(declare-fun tp!953638 () Bool)

(assert (=> b!3000317 (= e!1884844 (and tp!953637 tp!953638))))

(declare-fun b!3000319 () Bool)

(declare-fun tp!953636 () Bool)

(declare-fun tp!953634 () Bool)

(assert (=> b!3000319 (= e!1884844 (and tp!953636 tp!953634))))

(declare-fun b!3000316 () Bool)

(assert (=> b!3000316 (= e!1884844 tp_is_empty!16293)))

(assert (= (and b!2999739 ((_ is ElementMatch!9365) (regOne!19243 r!17423))) b!3000316))

(assert (= (and b!2999739 ((_ is Concat!14686) (regOne!19243 r!17423))) b!3000317))

(assert (= (and b!2999739 ((_ is Star!9365) (regOne!19243 r!17423))) b!3000318))

(assert (= (and b!2999739 ((_ is Union!9365) (regOne!19243 r!17423))) b!3000319))

(declare-fun e!1884845 () Bool)

(assert (=> b!2999739 (= tp!953572 e!1884845)))

(declare-fun b!3000322 () Bool)

(declare-fun tp!953640 () Bool)

(assert (=> b!3000322 (= e!1884845 tp!953640)))

(declare-fun b!3000321 () Bool)

(declare-fun tp!953642 () Bool)

(declare-fun tp!953643 () Bool)

(assert (=> b!3000321 (= e!1884845 (and tp!953642 tp!953643))))

(declare-fun b!3000323 () Bool)

(declare-fun tp!953641 () Bool)

(declare-fun tp!953639 () Bool)

(assert (=> b!3000323 (= e!1884845 (and tp!953641 tp!953639))))

(declare-fun b!3000320 () Bool)

(assert (=> b!3000320 (= e!1884845 tp_is_empty!16293)))

(assert (= (and b!2999739 ((_ is ElementMatch!9365) (regTwo!19243 r!17423))) b!3000320))

(assert (= (and b!2999739 ((_ is Concat!14686) (regTwo!19243 r!17423))) b!3000321))

(assert (= (and b!2999739 ((_ is Star!9365) (regTwo!19243 r!17423))) b!3000322))

(assert (= (and b!2999739 ((_ is Union!9365) (regTwo!19243 r!17423))) b!3000323))

(declare-fun e!1884846 () Bool)

(assert (=> b!2999744 (= tp!953577 e!1884846)))

(declare-fun b!3000326 () Bool)

(declare-fun tp!953645 () Bool)

(assert (=> b!3000326 (= e!1884846 tp!953645)))

(declare-fun b!3000325 () Bool)

(declare-fun tp!953647 () Bool)

(declare-fun tp!953648 () Bool)

(assert (=> b!3000325 (= e!1884846 (and tp!953647 tp!953648))))

(declare-fun b!3000327 () Bool)

(declare-fun tp!953646 () Bool)

(declare-fun tp!953644 () Bool)

(assert (=> b!3000327 (= e!1884846 (and tp!953646 tp!953644))))

(declare-fun b!3000324 () Bool)

(assert (=> b!3000324 (= e!1884846 tp_is_empty!16293)))

(assert (= (and b!2999744 ((_ is ElementMatch!9365) (regOne!19242 r!17423))) b!3000324))

(assert (= (and b!2999744 ((_ is Concat!14686) (regOne!19242 r!17423))) b!3000325))

(assert (= (and b!2999744 ((_ is Star!9365) (regOne!19242 r!17423))) b!3000326))

(assert (= (and b!2999744 ((_ is Union!9365) (regOne!19242 r!17423))) b!3000327))

(declare-fun e!1884847 () Bool)

(assert (=> b!2999744 (= tp!953576 e!1884847)))

(declare-fun b!3000330 () Bool)

(declare-fun tp!953650 () Bool)

(assert (=> b!3000330 (= e!1884847 tp!953650)))

(declare-fun b!3000329 () Bool)

(declare-fun tp!953652 () Bool)

(declare-fun tp!953653 () Bool)

(assert (=> b!3000329 (= e!1884847 (and tp!953652 tp!953653))))

(declare-fun b!3000331 () Bool)

(declare-fun tp!953651 () Bool)

(declare-fun tp!953649 () Bool)

(assert (=> b!3000331 (= e!1884847 (and tp!953651 tp!953649))))

(declare-fun b!3000328 () Bool)

(assert (=> b!3000328 (= e!1884847 tp_is_empty!16293)))

(assert (= (and b!2999744 ((_ is ElementMatch!9365) (regTwo!19242 r!17423))) b!3000328))

(assert (= (and b!2999744 ((_ is Concat!14686) (regTwo!19242 r!17423))) b!3000329))

(assert (= (and b!2999744 ((_ is Star!9365) (regTwo!19242 r!17423))) b!3000330))

(assert (= (and b!2999744 ((_ is Union!9365) (regTwo!19242 r!17423))) b!3000331))

(check-sat (not b!2999812) (not b!3000322) (not b!3000321) (not b!3000268) (not b!3000308) (not b!2999847) (not b!2999849) (not bm!201505) (not d!846070) tp_is_empty!16293 (not b!3000266) (not b!2999824) (not b!2999820) (not bm!201422) (not b!2999814) (not b!2999819) (not b!3000007) (not bm!201423) (not b!2999993) (not b!2999806) (not b!3000326) (not b!2999805) (not bm!201425) (not bm!201453) (not d!846110) (not b!3000331) (not bm!201452) (not b!3000317) (not b!2999810) (not b!2999828) (not bm!201459) (not bm!201506) (not bm!201450) (not bm!201454) (not b!3000260) (not b!2999826) (not d!846062) (not d!846080) (not b!2999854) (not b!3000330) (not b!3000242) (not d!846112) (not b!2999856) (not bm!201457) (not b!3000295) (not b!3000264) (not bm!201455) (not d!846088) (not b!3000259) (not bm!201513) (not b!2999848) (not d!846118) (not b!3000018) (not b!2999821) (not b!3000315) (not b!3000245) (not b!2999807) (not b!2999982) (not b!3000327) (not bm!201514) (not b!3000323) (not bm!201461) (not d!846068) (not b!3000309) (not b!3000319) (not b!3000325) (not bm!201460) (not b!3000329) (not b!3000261) (not b!3000318) (not b!3000310) (not bm!201462) (not b!2999852) (not bm!201504) (not d!846074))
(check-sat)
(get-model)

(declare-fun d!846122 () Bool)

(assert (=> d!846122 (= (isEmpty!19380 (tail!4911 s!11993)) ((_ is Nil!35106) (tail!4911 s!11993)))))

(assert (=> b!2999828 d!846122))

(declare-fun d!846124 () Bool)

(assert (=> d!846124 (= (tail!4911 s!11993) (t!234295 s!11993))))

(assert (=> b!2999828 d!846124))

(assert (=> bm!201506 d!846066))

(declare-fun d!846126 () Bool)

(assert (=> d!846126 (= (isEmptyExpr!472 (ite c!493581 lt!1041746 lt!1041745)) ((_ is EmptyExpr!9365) (ite c!493581 lt!1041746 lt!1041745)))))

(assert (=> bm!201452 d!846126))

(declare-fun d!846128 () Bool)

(assert (not d!846128))

(assert (=> b!2999807 d!846128))

(assert (=> d!846110 d!846066))

(assert (=> d!846110 d!846120))

(assert (=> b!2999856 d!846122))

(assert (=> b!2999856 d!846124))

(declare-fun b!3000332 () Bool)

(declare-fun e!1884853 () Bool)

(declare-fun e!1884848 () Bool)

(assert (=> b!3000332 (= e!1884853 e!1884848)))

(declare-fun c!493671 () Bool)

(assert (=> b!3000332 (= c!493671 ((_ is Union!9365) lt!1041744))))

(declare-fun b!3000333 () Bool)

(declare-fun e!1884849 () Bool)

(assert (=> b!3000333 (= e!1884849 e!1884853)))

(declare-fun c!493670 () Bool)

(assert (=> b!3000333 (= c!493670 ((_ is Star!9365) lt!1041744))))

(declare-fun bm!201516 () Bool)

(declare-fun call!201522 () Bool)

(assert (=> bm!201516 (= call!201522 (validRegex!4098 (ite c!493670 (reg!9694 lt!1041744) (ite c!493671 (regOne!19243 lt!1041744) (regTwo!19242 lt!1041744)))))))

(declare-fun bm!201517 () Bool)

(declare-fun call!201523 () Bool)

(assert (=> bm!201517 (= call!201523 (validRegex!4098 (ite c!493671 (regTwo!19243 lt!1041744) (regOne!19242 lt!1041744))))))

(declare-fun bm!201518 () Bool)

(declare-fun call!201521 () Bool)

(assert (=> bm!201518 (= call!201521 call!201522)))

(declare-fun b!3000334 () Bool)

(declare-fun e!1884852 () Bool)

(assert (=> b!3000334 (= e!1884852 call!201521)))

(declare-fun b!3000335 () Bool)

(declare-fun e!1884850 () Bool)

(assert (=> b!3000335 (= e!1884850 e!1884852)))

(declare-fun res!1236581 () Bool)

(assert (=> b!3000335 (=> (not res!1236581) (not e!1884852))))

(assert (=> b!3000335 (= res!1236581 call!201523)))

(declare-fun d!846130 () Bool)

(declare-fun res!1236578 () Bool)

(assert (=> d!846130 (=> res!1236578 e!1884849)))

(assert (=> d!846130 (= res!1236578 ((_ is ElementMatch!9365) lt!1041744))))

(assert (=> d!846130 (= (validRegex!4098 lt!1041744) e!1884849)))

(declare-fun b!3000336 () Bool)

(declare-fun res!1236579 () Bool)

(assert (=> b!3000336 (=> res!1236579 e!1884850)))

(assert (=> b!3000336 (= res!1236579 (not ((_ is Concat!14686) lt!1041744)))))

(assert (=> b!3000336 (= e!1884848 e!1884850)))

(declare-fun b!3000337 () Bool)

(declare-fun res!1236580 () Bool)

(declare-fun e!1884854 () Bool)

(assert (=> b!3000337 (=> (not res!1236580) (not e!1884854))))

(assert (=> b!3000337 (= res!1236580 call!201521)))

(assert (=> b!3000337 (= e!1884848 e!1884854)))

(declare-fun b!3000338 () Bool)

(declare-fun e!1884851 () Bool)

(assert (=> b!3000338 (= e!1884851 call!201522)))

(declare-fun b!3000339 () Bool)

(assert (=> b!3000339 (= e!1884853 e!1884851)))

(declare-fun res!1236577 () Bool)

(assert (=> b!3000339 (= res!1236577 (not (nullable!3028 (reg!9694 lt!1041744))))))

(assert (=> b!3000339 (=> (not res!1236577) (not e!1884851))))

(declare-fun b!3000340 () Bool)

(assert (=> b!3000340 (= e!1884854 call!201523)))

(assert (= (and d!846130 (not res!1236578)) b!3000333))

(assert (= (and b!3000333 c!493670) b!3000339))

(assert (= (and b!3000333 (not c!493670)) b!3000332))

(assert (= (and b!3000339 res!1236577) b!3000338))

(assert (= (and b!3000332 c!493671) b!3000337))

(assert (= (and b!3000332 (not c!493671)) b!3000336))

(assert (= (and b!3000337 res!1236580) b!3000340))

(assert (= (and b!3000336 (not res!1236579)) b!3000335))

(assert (= (and b!3000335 res!1236581) b!3000334))

(assert (= (or b!3000337 b!3000334) bm!201518))

(assert (= (or b!3000340 b!3000335) bm!201517))

(assert (= (or b!3000338 bm!201518) bm!201516))

(declare-fun m!3351889 () Bool)

(assert (=> bm!201516 m!3351889))

(declare-fun m!3351891 () Bool)

(assert (=> bm!201517 m!3351891))

(declare-fun m!3351893 () Bool)

(assert (=> b!3000339 m!3351893))

(assert (=> d!846080 d!846130))

(declare-fun b!3000341 () Bool)

(declare-fun e!1884860 () Bool)

(declare-fun e!1884855 () Bool)

(assert (=> b!3000341 (= e!1884860 e!1884855)))

(declare-fun c!493673 () Bool)

(assert (=> b!3000341 (= c!493673 ((_ is Union!9365) (regTwo!19242 r!17423)))))

(declare-fun b!3000342 () Bool)

(declare-fun e!1884856 () Bool)

(assert (=> b!3000342 (= e!1884856 e!1884860)))

(declare-fun c!493672 () Bool)

(assert (=> b!3000342 (= c!493672 ((_ is Star!9365) (regTwo!19242 r!17423)))))

(declare-fun call!201525 () Bool)

(declare-fun bm!201519 () Bool)

(assert (=> bm!201519 (= call!201525 (validRegex!4098 (ite c!493672 (reg!9694 (regTwo!19242 r!17423)) (ite c!493673 (regOne!19243 (regTwo!19242 r!17423)) (regTwo!19242 (regTwo!19242 r!17423))))))))

(declare-fun bm!201520 () Bool)

(declare-fun call!201526 () Bool)

(assert (=> bm!201520 (= call!201526 (validRegex!4098 (ite c!493673 (regTwo!19243 (regTwo!19242 r!17423)) (regOne!19242 (regTwo!19242 r!17423)))))))

(declare-fun bm!201521 () Bool)

(declare-fun call!201524 () Bool)

(assert (=> bm!201521 (= call!201524 call!201525)))

(declare-fun b!3000343 () Bool)

(declare-fun e!1884859 () Bool)

(assert (=> b!3000343 (= e!1884859 call!201524)))

(declare-fun b!3000344 () Bool)

(declare-fun e!1884857 () Bool)

(assert (=> b!3000344 (= e!1884857 e!1884859)))

(declare-fun res!1236586 () Bool)

(assert (=> b!3000344 (=> (not res!1236586) (not e!1884859))))

(assert (=> b!3000344 (= res!1236586 call!201526)))

(declare-fun d!846132 () Bool)

(declare-fun res!1236583 () Bool)

(assert (=> d!846132 (=> res!1236583 e!1884856)))

(assert (=> d!846132 (= res!1236583 ((_ is ElementMatch!9365) (regTwo!19242 r!17423)))))

(assert (=> d!846132 (= (validRegex!4098 (regTwo!19242 r!17423)) e!1884856)))

(declare-fun b!3000345 () Bool)

(declare-fun res!1236584 () Bool)

(assert (=> b!3000345 (=> res!1236584 e!1884857)))

(assert (=> b!3000345 (= res!1236584 (not ((_ is Concat!14686) (regTwo!19242 r!17423))))))

(assert (=> b!3000345 (= e!1884855 e!1884857)))

(declare-fun b!3000346 () Bool)

(declare-fun res!1236585 () Bool)

(declare-fun e!1884861 () Bool)

(assert (=> b!3000346 (=> (not res!1236585) (not e!1884861))))

(assert (=> b!3000346 (= res!1236585 call!201524)))

(assert (=> b!3000346 (= e!1884855 e!1884861)))

(declare-fun b!3000347 () Bool)

(declare-fun e!1884858 () Bool)

(assert (=> b!3000347 (= e!1884858 call!201525)))

(declare-fun b!3000348 () Bool)

(assert (=> b!3000348 (= e!1884860 e!1884858)))

(declare-fun res!1236582 () Bool)

(assert (=> b!3000348 (= res!1236582 (not (nullable!3028 (reg!9694 (regTwo!19242 r!17423)))))))

(assert (=> b!3000348 (=> (not res!1236582) (not e!1884858))))

(declare-fun b!3000349 () Bool)

(assert (=> b!3000349 (= e!1884861 call!201526)))

(assert (= (and d!846132 (not res!1236583)) b!3000342))

(assert (= (and b!3000342 c!493672) b!3000348))

(assert (= (and b!3000342 (not c!493672)) b!3000341))

(assert (= (and b!3000348 res!1236582) b!3000347))

(assert (= (and b!3000341 c!493673) b!3000346))

(assert (= (and b!3000341 (not c!493673)) b!3000345))

(assert (= (and b!3000346 res!1236585) b!3000349))

(assert (= (and b!3000345 (not res!1236584)) b!3000344))

(assert (= (and b!3000344 res!1236586) b!3000343))

(assert (= (or b!3000346 b!3000343) bm!201521))

(assert (= (or b!3000349 b!3000344) bm!201520))

(assert (= (or b!3000347 bm!201521) bm!201519))

(declare-fun m!3351895 () Bool)

(assert (=> bm!201519 m!3351895))

(declare-fun m!3351897 () Bool)

(assert (=> bm!201520 m!3351897))

(declare-fun m!3351899 () Bool)

(assert (=> b!3000348 m!3351899))

(assert (=> d!846080 d!846132))

(declare-fun d!846134 () Bool)

(assert (=> d!846134 (= (nullable!3028 lt!1041744) (nullableFct!863 lt!1041744))))

(declare-fun bs!528344 () Bool)

(assert (= bs!528344 d!846134))

(declare-fun m!3351901 () Bool)

(assert (=> bs!528344 m!3351901))

(assert (=> b!2999993 d!846134))

(declare-fun d!846136 () Bool)

(assert (=> d!846136 (= (nullable!3028 (regTwo!19242 r!17423)) (nullableFct!863 (regTwo!19242 r!17423)))))

(declare-fun bs!528345 () Bool)

(assert (= bs!528345 d!846136))

(declare-fun m!3351903 () Bool)

(assert (=> bs!528345 m!3351903))

(assert (=> b!2999993 d!846136))

(assert (=> b!2999852 d!846122))

(assert (=> b!2999852 d!846124))

(assert (=> b!2999805 d!846118))

(declare-fun bm!201522 () Bool)

(declare-fun call!201527 () Bool)

(assert (=> bm!201522 (= call!201527 (isEmpty!19380 (tail!4911 s!11993)))))

(declare-fun b!3000350 () Bool)

(declare-fun e!1884868 () Bool)

(declare-fun e!1884867 () Bool)

(assert (=> b!3000350 (= e!1884868 e!1884867)))

(declare-fun c!493674 () Bool)

(assert (=> b!3000350 (= c!493674 ((_ is EmptyLang!9365) (derivativeStep!2626 (regTwo!19242 r!17423) (head!6685 s!11993))))))

(declare-fun b!3000351 () Bool)

(declare-fun lt!1041789 () Bool)

(assert (=> b!3000351 (= e!1884867 (not lt!1041789))))

(declare-fun b!3000352 () Bool)

(declare-fun res!1236594 () Bool)

(declare-fun e!1884866 () Bool)

(assert (=> b!3000352 (=> res!1236594 e!1884866)))

(assert (=> b!3000352 (= res!1236594 (not ((_ is ElementMatch!9365) (derivativeStep!2626 (regTwo!19242 r!17423) (head!6685 s!11993)))))))

(assert (=> b!3000352 (= e!1884867 e!1884866)))

(declare-fun b!3000353 () Bool)

(declare-fun e!1884863 () Bool)

(assert (=> b!3000353 (= e!1884863 (nullable!3028 (derivativeStep!2626 (regTwo!19242 r!17423) (head!6685 s!11993))))))

(declare-fun b!3000354 () Bool)

(declare-fun e!1884862 () Bool)

(assert (=> b!3000354 (= e!1884862 (not (= (head!6685 (tail!4911 s!11993)) (c!493509 (derivativeStep!2626 (regTwo!19242 r!17423) (head!6685 s!11993))))))))

(declare-fun b!3000355 () Bool)

(declare-fun e!1884864 () Bool)

(assert (=> b!3000355 (= e!1884864 (= (head!6685 (tail!4911 s!11993)) (c!493509 (derivativeStep!2626 (regTwo!19242 r!17423) (head!6685 s!11993)))))))

(declare-fun b!3000356 () Bool)

(declare-fun res!1236590 () Bool)

(assert (=> b!3000356 (=> res!1236590 e!1884866)))

(assert (=> b!3000356 (= res!1236590 e!1884864)))

(declare-fun res!1236589 () Bool)

(assert (=> b!3000356 (=> (not res!1236589) (not e!1884864))))

(assert (=> b!3000356 (= res!1236589 lt!1041789)))

(declare-fun b!3000357 () Bool)

(declare-fun e!1884865 () Bool)

(assert (=> b!3000357 (= e!1884865 e!1884862)))

(declare-fun res!1236587 () Bool)

(assert (=> b!3000357 (=> res!1236587 e!1884862)))

(assert (=> b!3000357 (= res!1236587 call!201527)))

(declare-fun b!3000359 () Bool)

(assert (=> b!3000359 (= e!1884866 e!1884865)))

(declare-fun res!1236593 () Bool)

(assert (=> b!3000359 (=> (not res!1236593) (not e!1884865))))

(assert (=> b!3000359 (= res!1236593 (not lt!1041789))))

(declare-fun b!3000360 () Bool)

(assert (=> b!3000360 (= e!1884863 (matchR!4247 (derivativeStep!2626 (derivativeStep!2626 (regTwo!19242 r!17423) (head!6685 s!11993)) (head!6685 (tail!4911 s!11993))) (tail!4911 (tail!4911 s!11993))))))

(declare-fun b!3000361 () Bool)

(assert (=> b!3000361 (= e!1884868 (= lt!1041789 call!201527))))

(declare-fun b!3000362 () Bool)

(declare-fun res!1236588 () Bool)

(assert (=> b!3000362 (=> res!1236588 e!1884862)))

(assert (=> b!3000362 (= res!1236588 (not (isEmpty!19380 (tail!4911 (tail!4911 s!11993)))))))

(declare-fun b!3000363 () Bool)

(declare-fun res!1236591 () Bool)

(assert (=> b!3000363 (=> (not res!1236591) (not e!1884864))))

(assert (=> b!3000363 (= res!1236591 (not call!201527))))

(declare-fun b!3000358 () Bool)

(declare-fun res!1236592 () Bool)

(assert (=> b!3000358 (=> (not res!1236592) (not e!1884864))))

(assert (=> b!3000358 (= res!1236592 (isEmpty!19380 (tail!4911 (tail!4911 s!11993))))))

(declare-fun d!846138 () Bool)

(assert (=> d!846138 e!1884868))

(declare-fun c!493676 () Bool)

(assert (=> d!846138 (= c!493676 ((_ is EmptyExpr!9365) (derivativeStep!2626 (regTwo!19242 r!17423) (head!6685 s!11993))))))

(assert (=> d!846138 (= lt!1041789 e!1884863)))

(declare-fun c!493675 () Bool)

(assert (=> d!846138 (= c!493675 (isEmpty!19380 (tail!4911 s!11993)))))

(assert (=> d!846138 (validRegex!4098 (derivativeStep!2626 (regTwo!19242 r!17423) (head!6685 s!11993)))))

(assert (=> d!846138 (= (matchR!4247 (derivativeStep!2626 (regTwo!19242 r!17423) (head!6685 s!11993)) (tail!4911 s!11993)) lt!1041789)))

(assert (= (and d!846138 c!493675) b!3000353))

(assert (= (and d!846138 (not c!493675)) b!3000360))

(assert (= (and d!846138 c!493676) b!3000361))

(assert (= (and d!846138 (not c!493676)) b!3000350))

(assert (= (and b!3000350 c!493674) b!3000351))

(assert (= (and b!3000350 (not c!493674)) b!3000352))

(assert (= (and b!3000352 (not res!1236594)) b!3000356))

(assert (= (and b!3000356 res!1236589) b!3000363))

(assert (= (and b!3000363 res!1236591) b!3000358))

(assert (= (and b!3000358 res!1236592) b!3000355))

(assert (= (and b!3000356 (not res!1236590)) b!3000359))

(assert (= (and b!3000359 res!1236593) b!3000357))

(assert (= (and b!3000357 (not res!1236587)) b!3000362))

(assert (= (and b!3000362 (not res!1236588)) b!3000354))

(assert (= (or b!3000361 b!3000357 b!3000363) bm!201522))

(assert (=> b!3000355 m!3351719))

(declare-fun m!3351905 () Bool)

(assert (=> b!3000355 m!3351905))

(assert (=> bm!201522 m!3351719))

(assert (=> bm!201522 m!3351721))

(assert (=> d!846138 m!3351719))

(assert (=> d!846138 m!3351721))

(assert (=> d!846138 m!3351747))

(declare-fun m!3351907 () Bool)

(assert (=> d!846138 m!3351907))

(assert (=> b!3000362 m!3351719))

(declare-fun m!3351909 () Bool)

(assert (=> b!3000362 m!3351909))

(assert (=> b!3000362 m!3351909))

(declare-fun m!3351911 () Bool)

(assert (=> b!3000362 m!3351911))

(assert (=> b!3000353 m!3351747))

(declare-fun m!3351913 () Bool)

(assert (=> b!3000353 m!3351913))

(assert (=> b!3000358 m!3351719))

(assert (=> b!3000358 m!3351909))

(assert (=> b!3000358 m!3351909))

(assert (=> b!3000358 m!3351911))

(assert (=> b!3000354 m!3351719))

(assert (=> b!3000354 m!3351905))

(assert (=> b!3000360 m!3351719))

(assert (=> b!3000360 m!3351905))

(assert (=> b!3000360 m!3351747))

(assert (=> b!3000360 m!3351905))

(declare-fun m!3351915 () Bool)

(assert (=> b!3000360 m!3351915))

(assert (=> b!3000360 m!3351719))

(assert (=> b!3000360 m!3351909))

(assert (=> b!3000360 m!3351915))

(assert (=> b!3000360 m!3351909))

(declare-fun m!3351917 () Bool)

(assert (=> b!3000360 m!3351917))

(assert (=> b!2999854 d!846138))

(declare-fun b!3000384 () Bool)

(declare-fun e!1884879 () Regex!9365)

(declare-fun call!201536 () Regex!9365)

(assert (=> b!3000384 (= e!1884879 (Union!9365 (Concat!14686 call!201536 (regTwo!19242 (regTwo!19242 r!17423))) EmptyLang!9365))))

(declare-fun b!3000385 () Bool)

(declare-fun e!1884882 () Regex!9365)

(assert (=> b!3000385 (= e!1884882 EmptyLang!9365)))

(declare-fun b!3000386 () Bool)

(declare-fun c!493691 () Bool)

(assert (=> b!3000386 (= c!493691 (nullable!3028 (regOne!19242 (regTwo!19242 r!17423))))))

(declare-fun e!1884880 () Regex!9365)

(assert (=> b!3000386 (= e!1884880 e!1884879)))

(declare-fun d!846140 () Bool)

(declare-fun lt!1041792 () Regex!9365)

(assert (=> d!846140 (validRegex!4098 lt!1041792)))

(assert (=> d!846140 (= lt!1041792 e!1884882)))

(declare-fun c!493690 () Bool)

(assert (=> d!846140 (= c!493690 (or ((_ is EmptyExpr!9365) (regTwo!19242 r!17423)) ((_ is EmptyLang!9365) (regTwo!19242 r!17423))))))

(assert (=> d!846140 (validRegex!4098 (regTwo!19242 r!17423))))

(assert (=> d!846140 (= (derivativeStep!2626 (regTwo!19242 r!17423) (head!6685 s!11993)) lt!1041792)))

(declare-fun b!3000387 () Bool)

(declare-fun call!201539 () Regex!9365)

(assert (=> b!3000387 (= e!1884879 (Union!9365 (Concat!14686 call!201536 (regTwo!19242 (regTwo!19242 r!17423))) call!201539))))

(declare-fun bm!201531 () Bool)

(declare-fun c!493688 () Bool)

(assert (=> bm!201531 (= call!201539 (derivativeStep!2626 (ite c!493688 (regOne!19243 (regTwo!19242 r!17423)) (regTwo!19242 (regTwo!19242 r!17423))) (head!6685 s!11993)))))

(declare-fun bm!201532 () Bool)

(declare-fun call!201538 () Regex!9365)

(declare-fun call!201537 () Regex!9365)

(assert (=> bm!201532 (= call!201538 call!201537)))

(declare-fun b!3000388 () Bool)

(assert (=> b!3000388 (= e!1884880 (Concat!14686 call!201538 (regTwo!19242 r!17423)))))

(declare-fun b!3000389 () Bool)

(declare-fun e!1884883 () Regex!9365)

(assert (=> b!3000389 (= e!1884883 (ite (= (head!6685 s!11993) (c!493509 (regTwo!19242 r!17423))) EmptyExpr!9365 EmptyLang!9365))))

(declare-fun b!3000390 () Bool)

(assert (=> b!3000390 (= e!1884882 e!1884883)))

(declare-fun c!493689 () Bool)

(assert (=> b!3000390 (= c!493689 ((_ is ElementMatch!9365) (regTwo!19242 r!17423)))))

(declare-fun b!3000391 () Bool)

(declare-fun e!1884881 () Regex!9365)

(assert (=> b!3000391 (= e!1884881 e!1884880)))

(declare-fun c!493687 () Bool)

(assert (=> b!3000391 (= c!493687 ((_ is Star!9365) (regTwo!19242 r!17423)))))

(declare-fun b!3000392 () Bool)

(assert (=> b!3000392 (= c!493688 ((_ is Union!9365) (regTwo!19242 r!17423)))))

(assert (=> b!3000392 (= e!1884883 e!1884881)))

(declare-fun bm!201533 () Bool)

(assert (=> bm!201533 (= call!201536 call!201538)))

(declare-fun b!3000393 () Bool)

(assert (=> b!3000393 (= e!1884881 (Union!9365 call!201539 call!201537))))

(declare-fun bm!201534 () Bool)

(assert (=> bm!201534 (= call!201537 (derivativeStep!2626 (ite c!493688 (regTwo!19243 (regTwo!19242 r!17423)) (ite c!493687 (reg!9694 (regTwo!19242 r!17423)) (regOne!19242 (regTwo!19242 r!17423)))) (head!6685 s!11993)))))

(assert (= (and d!846140 c!493690) b!3000385))

(assert (= (and d!846140 (not c!493690)) b!3000390))

(assert (= (and b!3000390 c!493689) b!3000389))

(assert (= (and b!3000390 (not c!493689)) b!3000392))

(assert (= (and b!3000392 c!493688) b!3000393))

(assert (= (and b!3000392 (not c!493688)) b!3000391))

(assert (= (and b!3000391 c!493687) b!3000388))

(assert (= (and b!3000391 (not c!493687)) b!3000386))

(assert (= (and b!3000386 c!493691) b!3000387))

(assert (= (and b!3000386 (not c!493691)) b!3000384))

(assert (= (or b!3000387 b!3000384) bm!201533))

(assert (= (or b!3000388 bm!201533) bm!201532))

(assert (= (or b!3000393 bm!201532) bm!201534))

(assert (= (or b!3000393 b!3000387) bm!201531))

(declare-fun m!3351919 () Bool)

(assert (=> b!3000386 m!3351919))

(declare-fun m!3351921 () Bool)

(assert (=> d!846140 m!3351921))

(assert (=> d!846140 m!3351743))

(assert (=> bm!201531 m!3351715))

(declare-fun m!3351923 () Bool)

(assert (=> bm!201531 m!3351923))

(assert (=> bm!201534 m!3351715))

(declare-fun m!3351925 () Bool)

(assert (=> bm!201534 m!3351925))

(assert (=> b!2999854 d!846140))

(declare-fun d!846142 () Bool)

(assert (=> d!846142 (= (head!6685 s!11993) (h!40526 s!11993))))

(assert (=> b!2999854 d!846142))

(assert (=> b!2999854 d!846124))

(declare-fun bm!201535 () Bool)

(declare-fun call!201540 () Bool)

(assert (=> bm!201535 (= call!201540 (isEmpty!19380 (tail!4911 s!11993)))))

(declare-fun b!3000394 () Bool)

(declare-fun e!1884890 () Bool)

(declare-fun e!1884889 () Bool)

(assert (=> b!3000394 (= e!1884890 e!1884889)))

(declare-fun c!493692 () Bool)

(assert (=> b!3000394 (= c!493692 ((_ is EmptyLang!9365) (derivativeStep!2626 lt!1041714 (head!6685 s!11993))))))

(declare-fun b!3000395 () Bool)

(declare-fun lt!1041793 () Bool)

(assert (=> b!3000395 (= e!1884889 (not lt!1041793))))

(declare-fun b!3000396 () Bool)

(declare-fun res!1236602 () Bool)

(declare-fun e!1884888 () Bool)

(assert (=> b!3000396 (=> res!1236602 e!1884888)))

(assert (=> b!3000396 (= res!1236602 (not ((_ is ElementMatch!9365) (derivativeStep!2626 lt!1041714 (head!6685 s!11993)))))))

(assert (=> b!3000396 (= e!1884889 e!1884888)))

(declare-fun b!3000397 () Bool)

(declare-fun e!1884885 () Bool)

(assert (=> b!3000397 (= e!1884885 (nullable!3028 (derivativeStep!2626 lt!1041714 (head!6685 s!11993))))))

(declare-fun b!3000398 () Bool)

(declare-fun e!1884884 () Bool)

(assert (=> b!3000398 (= e!1884884 (not (= (head!6685 (tail!4911 s!11993)) (c!493509 (derivativeStep!2626 lt!1041714 (head!6685 s!11993))))))))

(declare-fun b!3000399 () Bool)

(declare-fun e!1884886 () Bool)

(assert (=> b!3000399 (= e!1884886 (= (head!6685 (tail!4911 s!11993)) (c!493509 (derivativeStep!2626 lt!1041714 (head!6685 s!11993)))))))

(declare-fun b!3000400 () Bool)

(declare-fun res!1236598 () Bool)

(assert (=> b!3000400 (=> res!1236598 e!1884888)))

(assert (=> b!3000400 (= res!1236598 e!1884886)))

(declare-fun res!1236597 () Bool)

(assert (=> b!3000400 (=> (not res!1236597) (not e!1884886))))

(assert (=> b!3000400 (= res!1236597 lt!1041793)))

(declare-fun b!3000401 () Bool)

(declare-fun e!1884887 () Bool)

(assert (=> b!3000401 (= e!1884887 e!1884884)))

(declare-fun res!1236595 () Bool)

(assert (=> b!3000401 (=> res!1236595 e!1884884)))

(assert (=> b!3000401 (= res!1236595 call!201540)))

(declare-fun b!3000403 () Bool)

(assert (=> b!3000403 (= e!1884888 e!1884887)))

(declare-fun res!1236601 () Bool)

(assert (=> b!3000403 (=> (not res!1236601) (not e!1884887))))

(assert (=> b!3000403 (= res!1236601 (not lt!1041793))))

(declare-fun b!3000404 () Bool)

(assert (=> b!3000404 (= e!1884885 (matchR!4247 (derivativeStep!2626 (derivativeStep!2626 lt!1041714 (head!6685 s!11993)) (head!6685 (tail!4911 s!11993))) (tail!4911 (tail!4911 s!11993))))))

(declare-fun b!3000405 () Bool)

(assert (=> b!3000405 (= e!1884890 (= lt!1041793 call!201540))))

(declare-fun b!3000406 () Bool)

(declare-fun res!1236596 () Bool)

(assert (=> b!3000406 (=> res!1236596 e!1884884)))

(assert (=> b!3000406 (= res!1236596 (not (isEmpty!19380 (tail!4911 (tail!4911 s!11993)))))))

(declare-fun b!3000407 () Bool)

(declare-fun res!1236599 () Bool)

(assert (=> b!3000407 (=> (not res!1236599) (not e!1884886))))

(assert (=> b!3000407 (= res!1236599 (not call!201540))))

(declare-fun b!3000402 () Bool)

(declare-fun res!1236600 () Bool)

(assert (=> b!3000402 (=> (not res!1236600) (not e!1884886))))

(assert (=> b!3000402 (= res!1236600 (isEmpty!19380 (tail!4911 (tail!4911 s!11993))))))

(declare-fun d!846144 () Bool)

(assert (=> d!846144 e!1884890))

(declare-fun c!493694 () Bool)

(assert (=> d!846144 (= c!493694 ((_ is EmptyExpr!9365) (derivativeStep!2626 lt!1041714 (head!6685 s!11993))))))

(assert (=> d!846144 (= lt!1041793 e!1884885)))

(declare-fun c!493693 () Bool)

(assert (=> d!846144 (= c!493693 (isEmpty!19380 (tail!4911 s!11993)))))

(assert (=> d!846144 (validRegex!4098 (derivativeStep!2626 lt!1041714 (head!6685 s!11993)))))

(assert (=> d!846144 (= (matchR!4247 (derivativeStep!2626 lt!1041714 (head!6685 s!11993)) (tail!4911 s!11993)) lt!1041793)))

(assert (= (and d!846144 c!493693) b!3000397))

(assert (= (and d!846144 (not c!493693)) b!3000404))

(assert (= (and d!846144 c!493694) b!3000405))

(assert (= (and d!846144 (not c!493694)) b!3000394))

(assert (= (and b!3000394 c!493692) b!3000395))

(assert (= (and b!3000394 (not c!493692)) b!3000396))

(assert (= (and b!3000396 (not res!1236602)) b!3000400))

(assert (= (and b!3000400 res!1236597) b!3000407))

(assert (= (and b!3000407 res!1236599) b!3000402))

(assert (= (and b!3000402 res!1236600) b!3000399))

(assert (= (and b!3000400 (not res!1236598)) b!3000403))

(assert (= (and b!3000403 res!1236601) b!3000401))

(assert (= (and b!3000401 (not res!1236595)) b!3000406))

(assert (= (and b!3000406 (not res!1236596)) b!3000398))

(assert (= (or b!3000405 b!3000401 b!3000407) bm!201535))

(assert (=> b!3000399 m!3351719))

(assert (=> b!3000399 m!3351905))

(assert (=> bm!201535 m!3351719))

(assert (=> bm!201535 m!3351721))

(assert (=> d!846144 m!3351719))

(assert (=> d!846144 m!3351721))

(assert (=> d!846144 m!3351725))

(declare-fun m!3351927 () Bool)

(assert (=> d!846144 m!3351927))

(assert (=> b!3000406 m!3351719))

(assert (=> b!3000406 m!3351909))

(assert (=> b!3000406 m!3351909))

(assert (=> b!3000406 m!3351911))

(assert (=> b!3000397 m!3351725))

(declare-fun m!3351929 () Bool)

(assert (=> b!3000397 m!3351929))

(assert (=> b!3000402 m!3351719))

(assert (=> b!3000402 m!3351909))

(assert (=> b!3000402 m!3351909))

(assert (=> b!3000402 m!3351911))

(assert (=> b!3000398 m!3351719))

(assert (=> b!3000398 m!3351905))

(assert (=> b!3000404 m!3351719))

(assert (=> b!3000404 m!3351905))

(assert (=> b!3000404 m!3351725))

(assert (=> b!3000404 m!3351905))

(declare-fun m!3351931 () Bool)

(assert (=> b!3000404 m!3351931))

(assert (=> b!3000404 m!3351719))

(assert (=> b!3000404 m!3351909))

(assert (=> b!3000404 m!3351931))

(assert (=> b!3000404 m!3351909))

(declare-fun m!3351933 () Bool)

(assert (=> b!3000404 m!3351933))

(assert (=> b!2999826 d!846144))

(declare-fun b!3000408 () Bool)

(declare-fun e!1884891 () Regex!9365)

(declare-fun call!201541 () Regex!9365)

(assert (=> b!3000408 (= e!1884891 (Union!9365 (Concat!14686 call!201541 (regTwo!19242 lt!1041714)) EmptyLang!9365))))

(declare-fun b!3000409 () Bool)

(declare-fun e!1884894 () Regex!9365)

(assert (=> b!3000409 (= e!1884894 EmptyLang!9365)))

(declare-fun b!3000410 () Bool)

(declare-fun c!493699 () Bool)

(assert (=> b!3000410 (= c!493699 (nullable!3028 (regOne!19242 lt!1041714)))))

(declare-fun e!1884892 () Regex!9365)

(assert (=> b!3000410 (= e!1884892 e!1884891)))

(declare-fun d!846146 () Bool)

(declare-fun lt!1041794 () Regex!9365)

(assert (=> d!846146 (validRegex!4098 lt!1041794)))

(assert (=> d!846146 (= lt!1041794 e!1884894)))

(declare-fun c!493698 () Bool)

(assert (=> d!846146 (= c!493698 (or ((_ is EmptyExpr!9365) lt!1041714) ((_ is EmptyLang!9365) lt!1041714)))))

(assert (=> d!846146 (validRegex!4098 lt!1041714)))

(assert (=> d!846146 (= (derivativeStep!2626 lt!1041714 (head!6685 s!11993)) lt!1041794)))

(declare-fun call!201544 () Regex!9365)

(declare-fun b!3000411 () Bool)

(assert (=> b!3000411 (= e!1884891 (Union!9365 (Concat!14686 call!201541 (regTwo!19242 lt!1041714)) call!201544))))

(declare-fun c!493696 () Bool)

(declare-fun bm!201536 () Bool)

(assert (=> bm!201536 (= call!201544 (derivativeStep!2626 (ite c!493696 (regOne!19243 lt!1041714) (regTwo!19242 lt!1041714)) (head!6685 s!11993)))))

(declare-fun bm!201537 () Bool)

(declare-fun call!201543 () Regex!9365)

(declare-fun call!201542 () Regex!9365)

(assert (=> bm!201537 (= call!201543 call!201542)))

(declare-fun b!3000412 () Bool)

(assert (=> b!3000412 (= e!1884892 (Concat!14686 call!201543 lt!1041714))))

(declare-fun b!3000413 () Bool)

(declare-fun e!1884895 () Regex!9365)

(assert (=> b!3000413 (= e!1884895 (ite (= (head!6685 s!11993) (c!493509 lt!1041714)) EmptyExpr!9365 EmptyLang!9365))))

(declare-fun b!3000414 () Bool)

(assert (=> b!3000414 (= e!1884894 e!1884895)))

(declare-fun c!493697 () Bool)

(assert (=> b!3000414 (= c!493697 ((_ is ElementMatch!9365) lt!1041714))))

(declare-fun b!3000415 () Bool)

(declare-fun e!1884893 () Regex!9365)

(assert (=> b!3000415 (= e!1884893 e!1884892)))

(declare-fun c!493695 () Bool)

(assert (=> b!3000415 (= c!493695 ((_ is Star!9365) lt!1041714))))

(declare-fun b!3000416 () Bool)

(assert (=> b!3000416 (= c!493696 ((_ is Union!9365) lt!1041714))))

(assert (=> b!3000416 (= e!1884895 e!1884893)))

(declare-fun bm!201538 () Bool)

(assert (=> bm!201538 (= call!201541 call!201543)))

(declare-fun b!3000417 () Bool)

(assert (=> b!3000417 (= e!1884893 (Union!9365 call!201544 call!201542))))

(declare-fun bm!201539 () Bool)

(assert (=> bm!201539 (= call!201542 (derivativeStep!2626 (ite c!493696 (regTwo!19243 lt!1041714) (ite c!493695 (reg!9694 lt!1041714) (regOne!19242 lt!1041714))) (head!6685 s!11993)))))

(assert (= (and d!846146 c!493698) b!3000409))

(assert (= (and d!846146 (not c!493698)) b!3000414))

(assert (= (and b!3000414 c!493697) b!3000413))

(assert (= (and b!3000414 (not c!493697)) b!3000416))

(assert (= (and b!3000416 c!493696) b!3000417))

(assert (= (and b!3000416 (not c!493696)) b!3000415))

(assert (= (and b!3000415 c!493695) b!3000412))

(assert (= (and b!3000415 (not c!493695)) b!3000410))

(assert (= (and b!3000410 c!493699) b!3000411))

(assert (= (and b!3000410 (not c!493699)) b!3000408))

(assert (= (or b!3000411 b!3000408) bm!201538))

(assert (= (or b!3000412 bm!201538) bm!201537))

(assert (= (or b!3000417 bm!201537) bm!201539))

(assert (= (or b!3000417 b!3000411) bm!201536))

(declare-fun m!3351935 () Bool)

(assert (=> b!3000410 m!3351935))

(declare-fun m!3351937 () Bool)

(assert (=> d!846146 m!3351937))

(assert (=> d!846146 m!3351717))

(assert (=> bm!201536 m!3351715))

(declare-fun m!3351939 () Bool)

(assert (=> bm!201536 m!3351939))

(assert (=> bm!201539 m!3351715))

(declare-fun m!3351941 () Bool)

(assert (=> bm!201539 m!3351941))

(assert (=> b!2999826 d!846146))

(assert (=> b!2999826 d!846142))

(assert (=> b!2999826 d!846124))

(declare-fun d!846148 () Bool)

(assert (=> d!846148 (= (isEmpty!19380 Nil!35106) true)))

(assert (=> bm!201422 d!846148))

(assert (=> b!2999824 d!846122))

(assert (=> b!2999824 d!846124))

(assert (=> b!3000268 d!846122))

(assert (=> b!3000268 d!846124))

(assert (=> b!2999820 d!846142))

(assert (=> b!2999848 d!846142))

(declare-fun d!846150 () Bool)

(assert (=> d!846150 (= (isEmptyExpr!472 lt!1041753) ((_ is EmptyExpr!9365) lt!1041753))))

(assert (=> b!3000007 d!846150))

(declare-fun d!846152 () Bool)

(assert (=> d!846152 (= (nullable!3028 lt!1041714) (nullableFct!863 lt!1041714))))

(declare-fun bs!528346 () Bool)

(assert (= bs!528346 d!846152))

(declare-fun m!3351943 () Bool)

(assert (=> bs!528346 m!3351943))

(assert (=> b!2999819 d!846152))

(declare-fun lt!1041798 () Regex!9365)

(declare-fun bm!201540 () Bool)

(declare-fun call!201545 () Bool)

(declare-fun lt!1041800 () Regex!9365)

(declare-fun c!493704 () Bool)

(assert (=> bm!201540 (= call!201545 (isEmptyLang!455 (ite c!493704 lt!1041800 lt!1041798)))))

(declare-fun b!3000418 () Bool)

(declare-fun e!1884908 () Regex!9365)

(assert (=> b!3000418 (= e!1884908 EmptyExpr!9365)))

(declare-fun b!3000419 () Bool)

(declare-fun e!1884900 () Regex!9365)

(assert (=> b!3000419 (= e!1884908 e!1884900)))

(declare-fun c!493708 () Bool)

(assert (=> b!3000419 (= c!493708 ((_ is Star!9365) (ite c!493592 (reg!9694 (regOne!19242 r!17423)) (ite c!493588 (regTwo!19243 (regOne!19242 r!17423)) (regOne!19242 (regOne!19242 r!17423))))))))

(declare-fun b!3000420 () Bool)

(declare-fun e!1884906 () Regex!9365)

(declare-fun e!1884907 () Regex!9365)

(assert (=> b!3000420 (= e!1884906 e!1884907)))

(declare-fun c!493700 () Bool)

(assert (=> b!3000420 (= c!493700 ((_ is ElementMatch!9365) (ite c!493592 (reg!9694 (regOne!19242 r!17423)) (ite c!493588 (regTwo!19243 (regOne!19242 r!17423)) (regOne!19242 (regOne!19242 r!17423))))))))

(declare-fun b!3000421 () Bool)

(declare-fun e!1884898 () Regex!9365)

(declare-fun lt!1041797 () Regex!9365)

(assert (=> b!3000421 (= e!1884898 (Star!9365 lt!1041797))))

(declare-fun b!3000422 () Bool)

(declare-fun e!1884905 () Regex!9365)

(declare-fun lt!1041796 () Regex!9365)

(assert (=> b!3000422 (= e!1884905 (Concat!14686 lt!1041798 lt!1041796))))

(declare-fun bm!201541 () Bool)

(declare-fun call!201550 () Bool)

(declare-fun call!201546 () Bool)

(assert (=> bm!201541 (= call!201550 call!201546)))

(declare-fun b!3000423 () Bool)

(declare-fun e!1884896 () Regex!9365)

(assert (=> b!3000423 (= e!1884896 EmptyLang!9365)))

(declare-fun b!3000424 () Bool)

(declare-fun e!1884901 () Regex!9365)

(assert (=> b!3000424 (= e!1884901 lt!1041796)))

(declare-fun b!3000425 () Bool)

(assert (=> b!3000425 (= e!1884906 EmptyLang!9365)))

(declare-fun b!3000426 () Bool)

(declare-fun e!1884897 () Regex!9365)

(declare-fun lt!1041799 () Regex!9365)

(assert (=> b!3000426 (= e!1884897 lt!1041799)))

(declare-fun bm!201542 () Bool)

(declare-fun call!201548 () Bool)

(assert (=> bm!201542 (= call!201548 (isEmptyExpr!472 (ite c!493708 lt!1041797 lt!1041796)))))

(declare-fun b!3000428 () Bool)

(declare-fun e!1884903 () Regex!9365)

(assert (=> b!3000428 (= e!1884903 e!1884896)))

(declare-fun call!201549 () Regex!9365)

(assert (=> b!3000428 (= lt!1041798 call!201549)))

(declare-fun call!201547 () Regex!9365)

(assert (=> b!3000428 (= lt!1041796 call!201547)))

(declare-fun res!1236603 () Bool)

(assert (=> b!3000428 (= res!1236603 call!201545)))

(declare-fun e!1884904 () Bool)

(assert (=> b!3000428 (=> res!1236603 e!1884904)))

(declare-fun c!493703 () Bool)

(assert (=> b!3000428 (= c!493703 e!1884904)))

(declare-fun bm!201543 () Bool)

(assert (=> bm!201543 (= call!201547 (simplify!356 (ite c!493704 (regOne!19243 (ite c!493592 (reg!9694 (regOne!19242 r!17423)) (ite c!493588 (regTwo!19243 (regOne!19242 r!17423)) (regOne!19242 (regOne!19242 r!17423))))) (regTwo!19242 (ite c!493592 (reg!9694 (regOne!19242 r!17423)) (ite c!493588 (regTwo!19243 (regOne!19242 r!17423)) (regOne!19242 (regOne!19242 r!17423))))))))))

(declare-fun b!3000429 () Bool)

(declare-fun c!493701 () Bool)

(assert (=> b!3000429 (= c!493701 (isEmptyExpr!472 lt!1041798))))

(assert (=> b!3000429 (= e!1884896 e!1884901)))

(declare-fun b!3000430 () Bool)

(declare-fun e!1884909 () Regex!9365)

(assert (=> b!3000430 (= e!1884909 lt!1041800)))

(declare-fun call!201551 () Regex!9365)

(declare-fun bm!201544 () Bool)

(assert (=> bm!201544 (= call!201551 (simplify!356 (ite c!493708 (reg!9694 (ite c!493592 (reg!9694 (regOne!19242 r!17423)) (ite c!493588 (regTwo!19243 (regOne!19242 r!17423)) (regOne!19242 (regOne!19242 r!17423))))) (ite c!493704 (regTwo!19243 (ite c!493592 (reg!9694 (regOne!19242 r!17423)) (ite c!493588 (regTwo!19243 (regOne!19242 r!17423)) (regOne!19242 (regOne!19242 r!17423))))) (regOne!19242 (ite c!493592 (reg!9694 (regOne!19242 r!17423)) (ite c!493588 (regTwo!19243 (regOne!19242 r!17423)) (regOne!19242 (regOne!19242 r!17423)))))))))))

(declare-fun b!3000431 () Bool)

(assert (=> b!3000431 (= e!1884898 EmptyExpr!9365)))

(declare-fun bm!201545 () Bool)

(assert (=> bm!201545 (= call!201546 (isEmptyLang!455 (ite c!493708 lt!1041797 (ite c!493704 lt!1041799 lt!1041796))))))

(declare-fun b!3000432 () Bool)

(assert (=> b!3000432 (= e!1884904 call!201550)))

(declare-fun b!3000433 () Bool)

(assert (=> b!3000433 (= c!493704 ((_ is Union!9365) (ite c!493592 (reg!9694 (regOne!19242 r!17423)) (ite c!493588 (regTwo!19243 (regOne!19242 r!17423)) (regOne!19242 (regOne!19242 r!17423))))))))

(assert (=> b!3000433 (= e!1884900 e!1884903)))

(declare-fun bm!201546 () Bool)

(assert (=> bm!201546 (= call!201549 call!201551)))

(declare-fun b!3000434 () Bool)

(assert (=> b!3000434 (= e!1884907 (ite c!493592 (reg!9694 (regOne!19242 r!17423)) (ite c!493588 (regTwo!19243 (regOne!19242 r!17423)) (regOne!19242 (regOne!19242 r!17423)))))))

(declare-fun b!3000435 () Bool)

(assert (=> b!3000435 (= e!1884897 (Union!9365 lt!1041799 lt!1041800))))

(declare-fun b!3000436 () Bool)

(declare-fun c!493705 () Bool)

(assert (=> b!3000436 (= c!493705 call!201545)))

(assert (=> b!3000436 (= e!1884909 e!1884897)))

(declare-fun b!3000437 () Bool)

(assert (=> b!3000437 (= e!1884903 e!1884909)))

(assert (=> b!3000437 (= lt!1041799 call!201547)))

(assert (=> b!3000437 (= lt!1041800 call!201549)))

(declare-fun c!493709 () Bool)

(assert (=> b!3000437 (= c!493709 call!201550)))

(declare-fun b!3000438 () Bool)

(assert (=> b!3000438 (= e!1884901 e!1884905)))

(declare-fun c!493707 () Bool)

(assert (=> b!3000438 (= c!493707 call!201548)))

(declare-fun b!3000439 () Bool)

(assert (=> b!3000439 (= e!1884905 lt!1041798)))

(declare-fun b!3000440 () Bool)

(declare-fun lt!1041795 () Regex!9365)

(declare-fun e!1884902 () Bool)

(assert (=> b!3000440 (= e!1884902 (= (nullable!3028 lt!1041795) (nullable!3028 (ite c!493592 (reg!9694 (regOne!19242 r!17423)) (ite c!493588 (regTwo!19243 (regOne!19242 r!17423)) (regOne!19242 (regOne!19242 r!17423)))))))))

(declare-fun b!3000441 () Bool)

(declare-fun c!493702 () Bool)

(declare-fun e!1884899 () Bool)

(assert (=> b!3000441 (= c!493702 e!1884899)))

(declare-fun res!1236604 () Bool)

(assert (=> b!3000441 (=> res!1236604 e!1884899)))

(assert (=> b!3000441 (= res!1236604 call!201546)))

(assert (=> b!3000441 (= lt!1041797 call!201551)))

(assert (=> b!3000441 (= e!1884900 e!1884898)))

(declare-fun b!3000442 () Bool)

(assert (=> b!3000442 (= e!1884899 call!201548)))

(declare-fun d!846154 () Bool)

(assert (=> d!846154 e!1884902))

(declare-fun res!1236605 () Bool)

(assert (=> d!846154 (=> (not res!1236605) (not e!1884902))))

(assert (=> d!846154 (= res!1236605 (validRegex!4098 lt!1041795))))

(assert (=> d!846154 (= lt!1041795 e!1884906)))

(declare-fun c!493706 () Bool)

(assert (=> d!846154 (= c!493706 ((_ is EmptyLang!9365) (ite c!493592 (reg!9694 (regOne!19242 r!17423)) (ite c!493588 (regTwo!19243 (regOne!19242 r!17423)) (regOne!19242 (regOne!19242 r!17423))))))))

(assert (=> d!846154 (validRegex!4098 (ite c!493592 (reg!9694 (regOne!19242 r!17423)) (ite c!493588 (regTwo!19243 (regOne!19242 r!17423)) (regOne!19242 (regOne!19242 r!17423)))))))

(assert (=> d!846154 (= (simplify!356 (ite c!493592 (reg!9694 (regOne!19242 r!17423)) (ite c!493588 (regTwo!19243 (regOne!19242 r!17423)) (regOne!19242 (regOne!19242 r!17423))))) lt!1041795)))

(declare-fun b!3000427 () Bool)

(declare-fun c!493710 () Bool)

(assert (=> b!3000427 (= c!493710 ((_ is EmptyExpr!9365) (ite c!493592 (reg!9694 (regOne!19242 r!17423)) (ite c!493588 (regTwo!19243 (regOne!19242 r!17423)) (regOne!19242 (regOne!19242 r!17423))))))))

(assert (=> b!3000427 (= e!1884907 e!1884908)))

(assert (= (and d!846154 c!493706) b!3000425))

(assert (= (and d!846154 (not c!493706)) b!3000420))

(assert (= (and b!3000420 c!493700) b!3000434))

(assert (= (and b!3000420 (not c!493700)) b!3000427))

(assert (= (and b!3000427 c!493710) b!3000418))

(assert (= (and b!3000427 (not c!493710)) b!3000419))

(assert (= (and b!3000419 c!493708) b!3000441))

(assert (= (and b!3000419 (not c!493708)) b!3000433))

(assert (= (and b!3000441 (not res!1236604)) b!3000442))

(assert (= (and b!3000441 c!493702) b!3000431))

(assert (= (and b!3000441 (not c!493702)) b!3000421))

(assert (= (and b!3000433 c!493704) b!3000437))

(assert (= (and b!3000433 (not c!493704)) b!3000428))

(assert (= (and b!3000437 c!493709) b!3000430))

(assert (= (and b!3000437 (not c!493709)) b!3000436))

(assert (= (and b!3000436 c!493705) b!3000426))

(assert (= (and b!3000436 (not c!493705)) b!3000435))

(assert (= (and b!3000428 (not res!1236603)) b!3000432))

(assert (= (and b!3000428 c!493703) b!3000423))

(assert (= (and b!3000428 (not c!493703)) b!3000429))

(assert (= (and b!3000429 c!493701) b!3000424))

(assert (= (and b!3000429 (not c!493701)) b!3000438))

(assert (= (and b!3000438 c!493707) b!3000439))

(assert (= (and b!3000438 (not c!493707)) b!3000422))

(assert (= (or b!3000437 b!3000428) bm!201543))

(assert (= (or b!3000437 b!3000428) bm!201546))

(assert (= (or b!3000437 b!3000432) bm!201541))

(assert (= (or b!3000436 b!3000428) bm!201540))

(assert (= (or b!3000442 b!3000438) bm!201542))

(assert (= (or b!3000441 bm!201546) bm!201544))

(assert (= (or b!3000441 bm!201541) bm!201545))

(assert (= (and d!846154 res!1236605) b!3000440))

(declare-fun m!3351945 () Bool)

(assert (=> bm!201540 m!3351945))

(declare-fun m!3351947 () Bool)

(assert (=> bm!201543 m!3351947))

(declare-fun m!3351949 () Bool)

(assert (=> bm!201542 m!3351949))

(declare-fun m!3351951 () Bool)

(assert (=> d!846154 m!3351951))

(declare-fun m!3351953 () Bool)

(assert (=> d!846154 m!3351953))

(declare-fun m!3351955 () Bool)

(assert (=> bm!201544 m!3351955))

(declare-fun m!3351957 () Bool)

(assert (=> bm!201545 m!3351957))

(declare-fun m!3351959 () Bool)

(assert (=> b!3000429 m!3351959))

(declare-fun m!3351961 () Bool)

(assert (=> b!3000440 m!3351961))

(declare-fun m!3351963 () Bool)

(assert (=> b!3000440 m!3351963))

(assert (=> bm!201461 d!846154))

(declare-fun d!846156 () Bool)

(assert (=> d!846156 (= (nullable!3028 (reg!9694 r!17423)) (nullableFct!863 (reg!9694 r!17423)))))

(declare-fun bs!528347 () Bool)

(assert (= bs!528347 d!846156))

(declare-fun m!3351965 () Bool)

(assert (=> bs!528347 m!3351965))

(assert (=> b!3000295 d!846156))

(assert (=> bm!201423 d!846066))

(declare-fun d!846158 () Bool)

(declare-fun choose!17794 (Int) Bool)

(assert (=> d!846158 (= (Exists!1638 (ite c!493660 lambda!112077 lambda!112078)) (choose!17794 (ite c!493660 lambda!112077 lambda!112078)))))

(declare-fun bs!528348 () Bool)

(assert (= bs!528348 d!846158))

(declare-fun m!3351967 () Bool)

(assert (=> bs!528348 m!3351967))

(assert (=> bm!201505 d!846158))

(assert (=> d!846070 d!846066))

(assert (=> d!846070 d!846132))

(assert (=> bm!201425 d!846066))

(assert (=> d!846068 d!846066))

(declare-fun b!3000443 () Bool)

(declare-fun e!1884915 () Bool)

(declare-fun e!1884910 () Bool)

(assert (=> b!3000443 (= e!1884915 e!1884910)))

(declare-fun c!493712 () Bool)

(assert (=> b!3000443 (= c!493712 ((_ is Union!9365) lt!1041714))))

(declare-fun b!3000444 () Bool)

(declare-fun e!1884911 () Bool)

(assert (=> b!3000444 (= e!1884911 e!1884915)))

(declare-fun c!493711 () Bool)

(assert (=> b!3000444 (= c!493711 ((_ is Star!9365) lt!1041714))))

(declare-fun call!201553 () Bool)

(declare-fun bm!201547 () Bool)

(assert (=> bm!201547 (= call!201553 (validRegex!4098 (ite c!493711 (reg!9694 lt!1041714) (ite c!493712 (regOne!19243 lt!1041714) (regTwo!19242 lt!1041714)))))))

(declare-fun bm!201548 () Bool)

(declare-fun call!201554 () Bool)

(assert (=> bm!201548 (= call!201554 (validRegex!4098 (ite c!493712 (regTwo!19243 lt!1041714) (regOne!19242 lt!1041714))))))

(declare-fun bm!201549 () Bool)

(declare-fun call!201552 () Bool)

(assert (=> bm!201549 (= call!201552 call!201553)))

(declare-fun b!3000445 () Bool)

(declare-fun e!1884914 () Bool)

(assert (=> b!3000445 (= e!1884914 call!201552)))

(declare-fun b!3000446 () Bool)

(declare-fun e!1884912 () Bool)

(assert (=> b!3000446 (= e!1884912 e!1884914)))

(declare-fun res!1236610 () Bool)

(assert (=> b!3000446 (=> (not res!1236610) (not e!1884914))))

(assert (=> b!3000446 (= res!1236610 call!201554)))

(declare-fun d!846160 () Bool)

(declare-fun res!1236607 () Bool)

(assert (=> d!846160 (=> res!1236607 e!1884911)))

(assert (=> d!846160 (= res!1236607 ((_ is ElementMatch!9365) lt!1041714))))

(assert (=> d!846160 (= (validRegex!4098 lt!1041714) e!1884911)))

(declare-fun b!3000447 () Bool)

(declare-fun res!1236608 () Bool)

(assert (=> b!3000447 (=> res!1236608 e!1884912)))

(assert (=> b!3000447 (= res!1236608 (not ((_ is Concat!14686) lt!1041714)))))

(assert (=> b!3000447 (= e!1884910 e!1884912)))

(declare-fun b!3000448 () Bool)

(declare-fun res!1236609 () Bool)

(declare-fun e!1884916 () Bool)

(assert (=> b!3000448 (=> (not res!1236609) (not e!1884916))))

(assert (=> b!3000448 (= res!1236609 call!201552)))

(assert (=> b!3000448 (= e!1884910 e!1884916)))

(declare-fun b!3000449 () Bool)

(declare-fun e!1884913 () Bool)

(assert (=> b!3000449 (= e!1884913 call!201553)))

(declare-fun b!3000450 () Bool)

(assert (=> b!3000450 (= e!1884915 e!1884913)))

(declare-fun res!1236606 () Bool)

(assert (=> b!3000450 (= res!1236606 (not (nullable!3028 (reg!9694 lt!1041714))))))

(assert (=> b!3000450 (=> (not res!1236606) (not e!1884913))))

(declare-fun b!3000451 () Bool)

(assert (=> b!3000451 (= e!1884916 call!201554)))

(assert (= (and d!846160 (not res!1236607)) b!3000444))

(assert (= (and b!3000444 c!493711) b!3000450))

(assert (= (and b!3000444 (not c!493711)) b!3000443))

(assert (= (and b!3000450 res!1236606) b!3000449))

(assert (= (and b!3000443 c!493712) b!3000448))

(assert (= (and b!3000443 (not c!493712)) b!3000447))

(assert (= (and b!3000448 res!1236609) b!3000451))

(assert (= (and b!3000447 (not res!1236608)) b!3000446))

(assert (= (and b!3000446 res!1236610) b!3000445))

(assert (= (or b!3000448 b!3000445) bm!201549))

(assert (= (or b!3000451 b!3000446) bm!201548))

(assert (= (or b!3000449 bm!201549) bm!201547))

(declare-fun m!3351969 () Bool)

(assert (=> bm!201547 m!3351969))

(declare-fun m!3351971 () Bool)

(assert (=> bm!201548 m!3351971))

(declare-fun m!3351973 () Bool)

(assert (=> b!3000450 m!3351973))

(assert (=> d!846068 d!846160))

(assert (=> bm!201504 d!846066))

(assert (=> b!3000261 d!846142))

(declare-fun b!3000452 () Bool)

(declare-fun e!1884922 () Bool)

(declare-fun e!1884917 () Bool)

(assert (=> b!3000452 (= e!1884922 e!1884917)))

(declare-fun c!493714 () Bool)

(assert (=> b!3000452 (= c!493714 ((_ is Union!9365) (ite c!493668 (reg!9694 r!17423) (ite c!493669 (regOne!19243 r!17423) (regTwo!19242 r!17423)))))))

(declare-fun b!3000453 () Bool)

(declare-fun e!1884918 () Bool)

(assert (=> b!3000453 (= e!1884918 e!1884922)))

(declare-fun c!493713 () Bool)

(assert (=> b!3000453 (= c!493713 ((_ is Star!9365) (ite c!493668 (reg!9694 r!17423) (ite c!493669 (regOne!19243 r!17423) (regTwo!19242 r!17423)))))))

(declare-fun call!201556 () Bool)

(declare-fun bm!201550 () Bool)

(assert (=> bm!201550 (= call!201556 (validRegex!4098 (ite c!493713 (reg!9694 (ite c!493668 (reg!9694 r!17423) (ite c!493669 (regOne!19243 r!17423) (regTwo!19242 r!17423)))) (ite c!493714 (regOne!19243 (ite c!493668 (reg!9694 r!17423) (ite c!493669 (regOne!19243 r!17423) (regTwo!19242 r!17423)))) (regTwo!19242 (ite c!493668 (reg!9694 r!17423) (ite c!493669 (regOne!19243 r!17423) (regTwo!19242 r!17423))))))))))

(declare-fun call!201557 () Bool)

(declare-fun bm!201551 () Bool)

(assert (=> bm!201551 (= call!201557 (validRegex!4098 (ite c!493714 (regTwo!19243 (ite c!493668 (reg!9694 r!17423) (ite c!493669 (regOne!19243 r!17423) (regTwo!19242 r!17423)))) (regOne!19242 (ite c!493668 (reg!9694 r!17423) (ite c!493669 (regOne!19243 r!17423) (regTwo!19242 r!17423)))))))))

(declare-fun bm!201552 () Bool)

(declare-fun call!201555 () Bool)

(assert (=> bm!201552 (= call!201555 call!201556)))

(declare-fun b!3000454 () Bool)

(declare-fun e!1884921 () Bool)

(assert (=> b!3000454 (= e!1884921 call!201555)))

(declare-fun b!3000455 () Bool)

(declare-fun e!1884919 () Bool)

(assert (=> b!3000455 (= e!1884919 e!1884921)))

(declare-fun res!1236615 () Bool)

(assert (=> b!3000455 (=> (not res!1236615) (not e!1884921))))

(assert (=> b!3000455 (= res!1236615 call!201557)))

(declare-fun d!846162 () Bool)

(declare-fun res!1236612 () Bool)

(assert (=> d!846162 (=> res!1236612 e!1884918)))

(assert (=> d!846162 (= res!1236612 ((_ is ElementMatch!9365) (ite c!493668 (reg!9694 r!17423) (ite c!493669 (regOne!19243 r!17423) (regTwo!19242 r!17423)))))))

(assert (=> d!846162 (= (validRegex!4098 (ite c!493668 (reg!9694 r!17423) (ite c!493669 (regOne!19243 r!17423) (regTwo!19242 r!17423)))) e!1884918)))

(declare-fun b!3000456 () Bool)

(declare-fun res!1236613 () Bool)

(assert (=> b!3000456 (=> res!1236613 e!1884919)))

(assert (=> b!3000456 (= res!1236613 (not ((_ is Concat!14686) (ite c!493668 (reg!9694 r!17423) (ite c!493669 (regOne!19243 r!17423) (regTwo!19242 r!17423))))))))

(assert (=> b!3000456 (= e!1884917 e!1884919)))

(declare-fun b!3000457 () Bool)

(declare-fun res!1236614 () Bool)

(declare-fun e!1884923 () Bool)

(assert (=> b!3000457 (=> (not res!1236614) (not e!1884923))))

(assert (=> b!3000457 (= res!1236614 call!201555)))

(assert (=> b!3000457 (= e!1884917 e!1884923)))

(declare-fun b!3000458 () Bool)

(declare-fun e!1884920 () Bool)

(assert (=> b!3000458 (= e!1884920 call!201556)))

(declare-fun b!3000459 () Bool)

(assert (=> b!3000459 (= e!1884922 e!1884920)))

(declare-fun res!1236611 () Bool)

(assert (=> b!3000459 (= res!1236611 (not (nullable!3028 (reg!9694 (ite c!493668 (reg!9694 r!17423) (ite c!493669 (regOne!19243 r!17423) (regTwo!19242 r!17423)))))))))

(assert (=> b!3000459 (=> (not res!1236611) (not e!1884920))))

(declare-fun b!3000460 () Bool)

(assert (=> b!3000460 (= e!1884923 call!201557)))

(assert (= (and d!846162 (not res!1236612)) b!3000453))

(assert (= (and b!3000453 c!493713) b!3000459))

(assert (= (and b!3000453 (not c!493713)) b!3000452))

(assert (= (and b!3000459 res!1236611) b!3000458))

(assert (= (and b!3000452 c!493714) b!3000457))

(assert (= (and b!3000452 (not c!493714)) b!3000456))

(assert (= (and b!3000457 res!1236614) b!3000460))

(assert (= (and b!3000456 (not res!1236613)) b!3000455))

(assert (= (and b!3000455 res!1236615) b!3000454))

(assert (= (or b!3000457 b!3000454) bm!201552))

(assert (= (or b!3000460 b!3000455) bm!201551))

(assert (= (or b!3000458 bm!201552) bm!201550))

(declare-fun m!3351975 () Bool)

(assert (=> bm!201550 m!3351975))

(declare-fun m!3351977 () Bool)

(assert (=> bm!201551 m!3351977))

(declare-fun m!3351979 () Bool)

(assert (=> b!3000459 m!3351979))

(assert (=> bm!201513 d!846162))

(declare-fun d!846164 () Bool)

(assert (=> d!846164 (= (nullable!3028 r!17423) (nullableFct!863 r!17423))))

(declare-fun bs!528349 () Bool)

(assert (= bs!528349 d!846164))

(declare-fun m!3351981 () Bool)

(assert (=> bs!528349 m!3351981))

(assert (=> b!3000259 d!846164))

(declare-fun call!201558 () Bool)

(declare-fun lt!1041804 () Regex!9365)

(declare-fun lt!1041806 () Regex!9365)

(declare-fun bm!201553 () Bool)

(declare-fun c!493719 () Bool)

(assert (=> bm!201553 (= call!201558 (isEmptyLang!455 (ite c!493719 lt!1041806 lt!1041804)))))

(declare-fun b!3000461 () Bool)

(declare-fun e!1884936 () Regex!9365)

(assert (=> b!3000461 (= e!1884936 EmptyExpr!9365)))

(declare-fun b!3000462 () Bool)

(declare-fun e!1884928 () Regex!9365)

(assert (=> b!3000462 (= e!1884936 e!1884928)))

(declare-fun c!493723 () Bool)

(assert (=> b!3000462 (= c!493723 ((_ is Star!9365) (ite c!493577 (regOne!19243 (regTwo!19242 r!17423)) (regTwo!19242 (regTwo!19242 r!17423)))))))

(declare-fun b!3000463 () Bool)

(declare-fun e!1884934 () Regex!9365)

(declare-fun e!1884935 () Regex!9365)

(assert (=> b!3000463 (= e!1884934 e!1884935)))

(declare-fun c!493715 () Bool)

(assert (=> b!3000463 (= c!493715 ((_ is ElementMatch!9365) (ite c!493577 (regOne!19243 (regTwo!19242 r!17423)) (regTwo!19242 (regTwo!19242 r!17423)))))))

(declare-fun b!3000464 () Bool)

(declare-fun e!1884926 () Regex!9365)

(declare-fun lt!1041803 () Regex!9365)

(assert (=> b!3000464 (= e!1884926 (Star!9365 lt!1041803))))

(declare-fun b!3000465 () Bool)

(declare-fun e!1884933 () Regex!9365)

(declare-fun lt!1041802 () Regex!9365)

(assert (=> b!3000465 (= e!1884933 (Concat!14686 lt!1041804 lt!1041802))))

(declare-fun bm!201554 () Bool)

(declare-fun call!201563 () Bool)

(declare-fun call!201559 () Bool)

(assert (=> bm!201554 (= call!201563 call!201559)))

(declare-fun b!3000466 () Bool)

(declare-fun e!1884924 () Regex!9365)

(assert (=> b!3000466 (= e!1884924 EmptyLang!9365)))

(declare-fun b!3000467 () Bool)

(declare-fun e!1884929 () Regex!9365)

(assert (=> b!3000467 (= e!1884929 lt!1041802)))

(declare-fun b!3000468 () Bool)

(assert (=> b!3000468 (= e!1884934 EmptyLang!9365)))

(declare-fun b!3000469 () Bool)

(declare-fun e!1884925 () Regex!9365)

(declare-fun lt!1041805 () Regex!9365)

(assert (=> b!3000469 (= e!1884925 lt!1041805)))

(declare-fun bm!201555 () Bool)

(declare-fun call!201561 () Bool)

(assert (=> bm!201555 (= call!201561 (isEmptyExpr!472 (ite c!493723 lt!1041803 lt!1041802)))))

(declare-fun b!3000471 () Bool)

(declare-fun e!1884931 () Regex!9365)

(assert (=> b!3000471 (= e!1884931 e!1884924)))

(declare-fun call!201562 () Regex!9365)

(assert (=> b!3000471 (= lt!1041804 call!201562)))

(declare-fun call!201560 () Regex!9365)

(assert (=> b!3000471 (= lt!1041802 call!201560)))

(declare-fun res!1236616 () Bool)

(assert (=> b!3000471 (= res!1236616 call!201558)))

(declare-fun e!1884932 () Bool)

(assert (=> b!3000471 (=> res!1236616 e!1884932)))

(declare-fun c!493718 () Bool)

(assert (=> b!3000471 (= c!493718 e!1884932)))

(declare-fun bm!201556 () Bool)

(assert (=> bm!201556 (= call!201560 (simplify!356 (ite c!493719 (regOne!19243 (ite c!493577 (regOne!19243 (regTwo!19242 r!17423)) (regTwo!19242 (regTwo!19242 r!17423)))) (regTwo!19242 (ite c!493577 (regOne!19243 (regTwo!19242 r!17423)) (regTwo!19242 (regTwo!19242 r!17423)))))))))

(declare-fun b!3000472 () Bool)

(declare-fun c!493716 () Bool)

(assert (=> b!3000472 (= c!493716 (isEmptyExpr!472 lt!1041804))))

(assert (=> b!3000472 (= e!1884924 e!1884929)))

(declare-fun b!3000473 () Bool)

(declare-fun e!1884937 () Regex!9365)

(assert (=> b!3000473 (= e!1884937 lt!1041806)))

(declare-fun bm!201557 () Bool)

(declare-fun call!201564 () Regex!9365)

(assert (=> bm!201557 (= call!201564 (simplify!356 (ite c!493723 (reg!9694 (ite c!493577 (regOne!19243 (regTwo!19242 r!17423)) (regTwo!19242 (regTwo!19242 r!17423)))) (ite c!493719 (regTwo!19243 (ite c!493577 (regOne!19243 (regTwo!19242 r!17423)) (regTwo!19242 (regTwo!19242 r!17423)))) (regOne!19242 (ite c!493577 (regOne!19243 (regTwo!19242 r!17423)) (regTwo!19242 (regTwo!19242 r!17423))))))))))

(declare-fun b!3000474 () Bool)

(assert (=> b!3000474 (= e!1884926 EmptyExpr!9365)))

(declare-fun bm!201558 () Bool)

(assert (=> bm!201558 (= call!201559 (isEmptyLang!455 (ite c!493723 lt!1041803 (ite c!493719 lt!1041805 lt!1041802))))))

(declare-fun b!3000475 () Bool)

(assert (=> b!3000475 (= e!1884932 call!201563)))

(declare-fun b!3000476 () Bool)

(assert (=> b!3000476 (= c!493719 ((_ is Union!9365) (ite c!493577 (regOne!19243 (regTwo!19242 r!17423)) (regTwo!19242 (regTwo!19242 r!17423)))))))

(assert (=> b!3000476 (= e!1884928 e!1884931)))

(declare-fun bm!201559 () Bool)

(assert (=> bm!201559 (= call!201562 call!201564)))

(declare-fun b!3000477 () Bool)

(assert (=> b!3000477 (= e!1884935 (ite c!493577 (regOne!19243 (regTwo!19242 r!17423)) (regTwo!19242 (regTwo!19242 r!17423))))))

(declare-fun b!3000478 () Bool)

(assert (=> b!3000478 (= e!1884925 (Union!9365 lt!1041805 lt!1041806))))

(declare-fun b!3000479 () Bool)

(declare-fun c!493720 () Bool)

(assert (=> b!3000479 (= c!493720 call!201558)))

(assert (=> b!3000479 (= e!1884937 e!1884925)))

(declare-fun b!3000480 () Bool)

(assert (=> b!3000480 (= e!1884931 e!1884937)))

(assert (=> b!3000480 (= lt!1041805 call!201560)))

(assert (=> b!3000480 (= lt!1041806 call!201562)))

(declare-fun c!493724 () Bool)

(assert (=> b!3000480 (= c!493724 call!201563)))

(declare-fun b!3000481 () Bool)

(assert (=> b!3000481 (= e!1884929 e!1884933)))

(declare-fun c!493722 () Bool)

(assert (=> b!3000481 (= c!493722 call!201561)))

(declare-fun b!3000482 () Bool)

(assert (=> b!3000482 (= e!1884933 lt!1041804)))

(declare-fun lt!1041801 () Regex!9365)

(declare-fun b!3000483 () Bool)

(declare-fun e!1884930 () Bool)

(assert (=> b!3000483 (= e!1884930 (= (nullable!3028 lt!1041801) (nullable!3028 (ite c!493577 (regOne!19243 (regTwo!19242 r!17423)) (regTwo!19242 (regTwo!19242 r!17423))))))))

(declare-fun b!3000484 () Bool)

(declare-fun c!493717 () Bool)

(declare-fun e!1884927 () Bool)

(assert (=> b!3000484 (= c!493717 e!1884927)))

(declare-fun res!1236617 () Bool)

(assert (=> b!3000484 (=> res!1236617 e!1884927)))

(assert (=> b!3000484 (= res!1236617 call!201559)))

(assert (=> b!3000484 (= lt!1041803 call!201564)))

(assert (=> b!3000484 (= e!1884928 e!1884926)))

(declare-fun b!3000485 () Bool)

(assert (=> b!3000485 (= e!1884927 call!201561)))

(declare-fun d!846166 () Bool)

(assert (=> d!846166 e!1884930))

(declare-fun res!1236618 () Bool)

(assert (=> d!846166 (=> (not res!1236618) (not e!1884930))))

(assert (=> d!846166 (= res!1236618 (validRegex!4098 lt!1041801))))

(assert (=> d!846166 (= lt!1041801 e!1884934)))

(declare-fun c!493721 () Bool)

(assert (=> d!846166 (= c!493721 ((_ is EmptyLang!9365) (ite c!493577 (regOne!19243 (regTwo!19242 r!17423)) (regTwo!19242 (regTwo!19242 r!17423)))))))

(assert (=> d!846166 (validRegex!4098 (ite c!493577 (regOne!19243 (regTwo!19242 r!17423)) (regTwo!19242 (regTwo!19242 r!17423))))))

(assert (=> d!846166 (= (simplify!356 (ite c!493577 (regOne!19243 (regTwo!19242 r!17423)) (regTwo!19242 (regTwo!19242 r!17423)))) lt!1041801)))

(declare-fun b!3000470 () Bool)

(declare-fun c!493725 () Bool)

(assert (=> b!3000470 (= c!493725 ((_ is EmptyExpr!9365) (ite c!493577 (regOne!19243 (regTwo!19242 r!17423)) (regTwo!19242 (regTwo!19242 r!17423)))))))

(assert (=> b!3000470 (= e!1884935 e!1884936)))

(assert (= (and d!846166 c!493721) b!3000468))

(assert (= (and d!846166 (not c!493721)) b!3000463))

(assert (= (and b!3000463 c!493715) b!3000477))

(assert (= (and b!3000463 (not c!493715)) b!3000470))

(assert (= (and b!3000470 c!493725) b!3000461))

(assert (= (and b!3000470 (not c!493725)) b!3000462))

(assert (= (and b!3000462 c!493723) b!3000484))

(assert (= (and b!3000462 (not c!493723)) b!3000476))

(assert (= (and b!3000484 (not res!1236617)) b!3000485))

(assert (= (and b!3000484 c!493717) b!3000474))

(assert (= (and b!3000484 (not c!493717)) b!3000464))

(assert (= (and b!3000476 c!493719) b!3000480))

(assert (= (and b!3000476 (not c!493719)) b!3000471))

(assert (= (and b!3000480 c!493724) b!3000473))

(assert (= (and b!3000480 (not c!493724)) b!3000479))

(assert (= (and b!3000479 c!493720) b!3000469))

(assert (= (and b!3000479 (not c!493720)) b!3000478))

(assert (= (and b!3000471 (not res!1236616)) b!3000475))

(assert (= (and b!3000471 c!493718) b!3000466))

(assert (= (and b!3000471 (not c!493718)) b!3000472))

(assert (= (and b!3000472 c!493716) b!3000467))

(assert (= (and b!3000472 (not c!493716)) b!3000481))

(assert (= (and b!3000481 c!493722) b!3000482))

(assert (= (and b!3000481 (not c!493722)) b!3000465))

(assert (= (or b!3000480 b!3000471) bm!201556))

(assert (= (or b!3000480 b!3000471) bm!201559))

(assert (= (or b!3000480 b!3000475) bm!201554))

(assert (= (or b!3000479 b!3000471) bm!201553))

(assert (= (or b!3000485 b!3000481) bm!201555))

(assert (= (or b!3000484 bm!201559) bm!201557))

(assert (= (or b!3000484 bm!201554) bm!201558))

(assert (= (and d!846166 res!1236618) b!3000483))

(declare-fun m!3351983 () Bool)

(assert (=> bm!201553 m!3351983))

(declare-fun m!3351985 () Bool)

(assert (=> bm!201556 m!3351985))

(declare-fun m!3351987 () Bool)

(assert (=> bm!201555 m!3351987))

(declare-fun m!3351989 () Bool)

(assert (=> d!846166 m!3351989))

(declare-fun m!3351991 () Bool)

(assert (=> d!846166 m!3351991))

(declare-fun m!3351993 () Bool)

(assert (=> bm!201557 m!3351993))

(declare-fun m!3351995 () Bool)

(assert (=> bm!201558 m!3351995))

(declare-fun m!3351997 () Bool)

(assert (=> b!3000472 m!3351997))

(declare-fun m!3351999 () Bool)

(assert (=> b!3000483 m!3351999))

(declare-fun m!3352001 () Bool)

(assert (=> b!3000483 m!3352001))

(assert (=> bm!201453 d!846166))

(assert (=> b!2999806 d!846128))

(assert (=> d!846112 d!846110))

(assert (=> d!846112 d!846090))

(declare-fun d!846168 () Bool)

(assert (=> d!846168 (= (matchR!4247 r!17423 s!11993) (matchRSpec!1502 r!17423 s!11993))))

(assert (=> d!846168 true))

(declare-fun _$88!3327 () Unit!49145)

(assert (=> d!846168 (= (choose!17792 r!17423 s!11993) _$88!3327)))

(declare-fun bs!528350 () Bool)

(assert (= bs!528350 d!846168))

(assert (=> bs!528350 m!3351697))

(assert (=> bs!528350 m!3351695))

(assert (=> d!846112 d!846168))

(assert (=> d!846112 d!846120))

(declare-fun b!3000514 () Bool)

(declare-fun e!1884960 () Bool)

(declare-fun e!1884959 () Bool)

(assert (=> b!3000514 (= e!1884960 e!1884959)))

(declare-fun res!1236638 () Bool)

(declare-fun call!201571 () Bool)

(assert (=> b!3000514 (= res!1236638 call!201571)))

(assert (=> b!3000514 (=> res!1236638 e!1884959)))

(declare-fun b!3000515 () Bool)

(declare-fun e!1884961 () Bool)

(declare-fun e!1884962 () Bool)

(assert (=> b!3000515 (= e!1884961 e!1884962)))

(declare-fun res!1236637 () Bool)

(assert (=> b!3000515 (=> res!1236637 e!1884962)))

(assert (=> b!3000515 (= res!1236637 ((_ is Star!9365) (regOne!19242 r!17423)))))

(declare-fun d!846170 () Bool)

(declare-fun res!1236640 () Bool)

(declare-fun e!1884957 () Bool)

(assert (=> d!846170 (=> res!1236640 e!1884957)))

(assert (=> d!846170 (= res!1236640 ((_ is EmptyExpr!9365) (regOne!19242 r!17423)))))

(assert (=> d!846170 (= (nullableFct!863 (regOne!19242 r!17423)) e!1884957)))

(declare-fun bm!201565 () Bool)

(declare-fun call!201570 () Bool)

(declare-fun c!493731 () Bool)

(assert (=> bm!201565 (= call!201570 (nullable!3028 (ite c!493731 (regTwo!19243 (regOne!19242 r!17423)) (regTwo!19242 (regOne!19242 r!17423)))))))

(declare-fun b!3000516 () Bool)

(declare-fun e!1884958 () Bool)

(assert (=> b!3000516 (= e!1884960 e!1884958)))

(declare-fun res!1236639 () Bool)

(assert (=> b!3000516 (= res!1236639 call!201571)))

(assert (=> b!3000516 (=> (not res!1236639) (not e!1884958))))

(declare-fun b!3000517 () Bool)

(assert (=> b!3000517 (= e!1884957 e!1884961)))

(declare-fun res!1236641 () Bool)

(assert (=> b!3000517 (=> (not res!1236641) (not e!1884961))))

(assert (=> b!3000517 (= res!1236641 (and (not ((_ is EmptyLang!9365) (regOne!19242 r!17423))) (not ((_ is ElementMatch!9365) (regOne!19242 r!17423)))))))

(declare-fun b!3000518 () Bool)

(assert (=> b!3000518 (= e!1884958 call!201570)))

(declare-fun bm!201566 () Bool)

(assert (=> bm!201566 (= call!201571 (nullable!3028 (ite c!493731 (regOne!19243 (regOne!19242 r!17423)) (regOne!19242 (regOne!19242 r!17423)))))))

(declare-fun b!3000519 () Bool)

(assert (=> b!3000519 (= e!1884959 call!201570)))

(declare-fun b!3000520 () Bool)

(assert (=> b!3000520 (= e!1884962 e!1884960)))

(assert (=> b!3000520 (= c!493731 ((_ is Union!9365) (regOne!19242 r!17423)))))

(assert (= (and d!846170 (not res!1236640)) b!3000517))

(assert (= (and b!3000517 res!1236641) b!3000515))

(assert (= (and b!3000515 (not res!1236637)) b!3000520))

(assert (= (and b!3000520 c!493731) b!3000514))

(assert (= (and b!3000520 (not c!493731)) b!3000516))

(assert (= (and b!3000514 (not res!1236638)) b!3000519))

(assert (= (and b!3000516 res!1236639) b!3000518))

(assert (= (or b!3000519 b!3000518) bm!201565))

(assert (= (or b!3000514 b!3000516) bm!201566))

(declare-fun m!3352017 () Bool)

(assert (=> bm!201565 m!3352017))

(declare-fun m!3352019 () Bool)

(assert (=> bm!201566 m!3352019))

(assert (=> d!846118 d!846170))

(declare-fun d!846180 () Bool)

(assert (=> d!846180 (= (matchR!4247 (regTwo!19242 r!17423) s!11993) (matchR!4247 (simplify!356 (regTwo!19242 r!17423)) s!11993))))

(assert (=> d!846180 true))

(declare-fun _$95!539 () Unit!49145)

(assert (=> d!846180 (= (choose!17791 (regTwo!19242 r!17423) s!11993) _$95!539)))

(declare-fun bs!528351 () Bool)

(assert (= bs!528351 d!846180))

(assert (=> bs!528351 m!3351687))

(assert (=> bs!528351 m!3351673))

(assert (=> bs!528351 m!3351673))

(assert (=> bs!528351 m!3351761))

(assert (=> d!846074 d!846180))

(assert (=> d!846074 d!846080))

(assert (=> d!846074 d!846132))

(assert (=> d!846074 d!846070))

(declare-fun bm!201567 () Bool)

(declare-fun call!201572 () Bool)

(assert (=> bm!201567 (= call!201572 (isEmpty!19380 s!11993))))

(declare-fun b!3000521 () Bool)

(declare-fun e!1884969 () Bool)

(declare-fun e!1884968 () Bool)

(assert (=> b!3000521 (= e!1884969 e!1884968)))

(declare-fun c!493732 () Bool)

(assert (=> b!3000521 (= c!493732 ((_ is EmptyLang!9365) (simplify!356 (regTwo!19242 r!17423))))))

(declare-fun b!3000522 () Bool)

(declare-fun lt!1041808 () Bool)

(assert (=> b!3000522 (= e!1884968 (not lt!1041808))))

(declare-fun b!3000523 () Bool)

(declare-fun res!1236649 () Bool)

(declare-fun e!1884967 () Bool)

(assert (=> b!3000523 (=> res!1236649 e!1884967)))

(assert (=> b!3000523 (= res!1236649 (not ((_ is ElementMatch!9365) (simplify!356 (regTwo!19242 r!17423)))))))

(assert (=> b!3000523 (= e!1884968 e!1884967)))

(declare-fun b!3000524 () Bool)

(declare-fun e!1884964 () Bool)

(assert (=> b!3000524 (= e!1884964 (nullable!3028 (simplify!356 (regTwo!19242 r!17423))))))

(declare-fun b!3000525 () Bool)

(declare-fun e!1884963 () Bool)

(assert (=> b!3000525 (= e!1884963 (not (= (head!6685 s!11993) (c!493509 (simplify!356 (regTwo!19242 r!17423))))))))

(declare-fun b!3000526 () Bool)

(declare-fun e!1884965 () Bool)

(assert (=> b!3000526 (= e!1884965 (= (head!6685 s!11993) (c!493509 (simplify!356 (regTwo!19242 r!17423)))))))

(declare-fun b!3000527 () Bool)

(declare-fun res!1236645 () Bool)

(assert (=> b!3000527 (=> res!1236645 e!1884967)))

(assert (=> b!3000527 (= res!1236645 e!1884965)))

(declare-fun res!1236644 () Bool)

(assert (=> b!3000527 (=> (not res!1236644) (not e!1884965))))

(assert (=> b!3000527 (= res!1236644 lt!1041808)))

(declare-fun b!3000528 () Bool)

(declare-fun e!1884966 () Bool)

(assert (=> b!3000528 (= e!1884966 e!1884963)))

(declare-fun res!1236642 () Bool)

(assert (=> b!3000528 (=> res!1236642 e!1884963)))

(assert (=> b!3000528 (= res!1236642 call!201572)))

(declare-fun b!3000530 () Bool)

(assert (=> b!3000530 (= e!1884967 e!1884966)))

(declare-fun res!1236648 () Bool)

(assert (=> b!3000530 (=> (not res!1236648) (not e!1884966))))

(assert (=> b!3000530 (= res!1236648 (not lt!1041808))))

(declare-fun b!3000531 () Bool)

(assert (=> b!3000531 (= e!1884964 (matchR!4247 (derivativeStep!2626 (simplify!356 (regTwo!19242 r!17423)) (head!6685 s!11993)) (tail!4911 s!11993)))))

(declare-fun b!3000532 () Bool)

(assert (=> b!3000532 (= e!1884969 (= lt!1041808 call!201572))))

(declare-fun b!3000533 () Bool)

(declare-fun res!1236643 () Bool)

(assert (=> b!3000533 (=> res!1236643 e!1884963)))

(assert (=> b!3000533 (= res!1236643 (not (isEmpty!19380 (tail!4911 s!11993))))))

(declare-fun b!3000534 () Bool)

(declare-fun res!1236646 () Bool)

(assert (=> b!3000534 (=> (not res!1236646) (not e!1884965))))

(assert (=> b!3000534 (= res!1236646 (not call!201572))))

(declare-fun b!3000529 () Bool)

(declare-fun res!1236647 () Bool)

(assert (=> b!3000529 (=> (not res!1236647) (not e!1884965))))

(assert (=> b!3000529 (= res!1236647 (isEmpty!19380 (tail!4911 s!11993)))))

(declare-fun d!846182 () Bool)

(assert (=> d!846182 e!1884969))

(declare-fun c!493734 () Bool)

(assert (=> d!846182 (= c!493734 ((_ is EmptyExpr!9365) (simplify!356 (regTwo!19242 r!17423))))))

(assert (=> d!846182 (= lt!1041808 e!1884964)))

(declare-fun c!493733 () Bool)

(assert (=> d!846182 (= c!493733 (isEmpty!19380 s!11993))))

(assert (=> d!846182 (validRegex!4098 (simplify!356 (regTwo!19242 r!17423)))))

(assert (=> d!846182 (= (matchR!4247 (simplify!356 (regTwo!19242 r!17423)) s!11993) lt!1041808)))

(assert (= (and d!846182 c!493733) b!3000524))

(assert (= (and d!846182 (not c!493733)) b!3000531))

(assert (= (and d!846182 c!493734) b!3000532))

(assert (= (and d!846182 (not c!493734)) b!3000521))

(assert (= (and b!3000521 c!493732) b!3000522))

(assert (= (and b!3000521 (not c!493732)) b!3000523))

(assert (= (and b!3000523 (not res!1236649)) b!3000527))

(assert (= (and b!3000527 res!1236644) b!3000534))

(assert (= (and b!3000534 res!1236646) b!3000529))

(assert (= (and b!3000529 res!1236647) b!3000526))

(assert (= (and b!3000527 (not res!1236645)) b!3000530))

(assert (= (and b!3000530 res!1236648) b!3000528))

(assert (= (and b!3000528 (not res!1236642)) b!3000533))

(assert (= (and b!3000533 (not res!1236643)) b!3000525))

(assert (= (or b!3000532 b!3000528 b!3000534) bm!201567))

(assert (=> b!3000526 m!3351715))

(assert (=> bm!201567 m!3351683))

(assert (=> d!846182 m!3351683))

(assert (=> d!846182 m!3351673))

(declare-fun m!3352021 () Bool)

(assert (=> d!846182 m!3352021))

(assert (=> b!3000533 m!3351719))

(assert (=> b!3000533 m!3351719))

(assert (=> b!3000533 m!3351721))

(assert (=> b!3000524 m!3351673))

(declare-fun m!3352023 () Bool)

(assert (=> b!3000524 m!3352023))

(assert (=> b!3000529 m!3351719))

(assert (=> b!3000529 m!3351719))

(assert (=> b!3000529 m!3351721))

(assert (=> b!3000525 m!3351715))

(assert (=> b!3000531 m!3351715))

(assert (=> b!3000531 m!3351673))

(assert (=> b!3000531 m!3351715))

(declare-fun m!3352025 () Bool)

(assert (=> b!3000531 m!3352025))

(assert (=> b!3000531 m!3351719))

(assert (=> b!3000531 m!3352025))

(assert (=> b!3000531 m!3351719))

(declare-fun m!3352027 () Bool)

(assert (=> b!3000531 m!3352027))

(assert (=> d!846074 d!846182))

(declare-fun d!846184 () Bool)

(assert (=> d!846184 (= (isEmptyLang!455 (ite c!493588 lt!1041755 lt!1041753)) ((_ is EmptyLang!9365) (ite c!493588 lt!1041755 lt!1041753)))))

(assert (=> bm!201457 d!846184))

(assert (=> d!846062 d!846148))

(declare-fun b!3000535 () Bool)

(declare-fun e!1884975 () Bool)

(declare-fun e!1884970 () Bool)

(assert (=> b!3000535 (= e!1884975 e!1884970)))

(declare-fun c!493736 () Bool)

(assert (=> b!3000535 (= c!493736 ((_ is Union!9365) (regOne!19242 r!17423)))))

(declare-fun b!3000536 () Bool)

(declare-fun e!1884971 () Bool)

(assert (=> b!3000536 (= e!1884971 e!1884975)))

(declare-fun c!493735 () Bool)

(assert (=> b!3000536 (= c!493735 ((_ is Star!9365) (regOne!19242 r!17423)))))

(declare-fun call!201574 () Bool)

(declare-fun bm!201568 () Bool)

(assert (=> bm!201568 (= call!201574 (validRegex!4098 (ite c!493735 (reg!9694 (regOne!19242 r!17423)) (ite c!493736 (regOne!19243 (regOne!19242 r!17423)) (regTwo!19242 (regOne!19242 r!17423))))))))

(declare-fun bm!201569 () Bool)

(declare-fun call!201575 () Bool)

(assert (=> bm!201569 (= call!201575 (validRegex!4098 (ite c!493736 (regTwo!19243 (regOne!19242 r!17423)) (regOne!19242 (regOne!19242 r!17423)))))))

(declare-fun bm!201570 () Bool)

(declare-fun call!201573 () Bool)

(assert (=> bm!201570 (= call!201573 call!201574)))

(declare-fun b!3000537 () Bool)

(declare-fun e!1884974 () Bool)

(assert (=> b!3000537 (= e!1884974 call!201573)))

(declare-fun b!3000538 () Bool)

(declare-fun e!1884972 () Bool)

(assert (=> b!3000538 (= e!1884972 e!1884974)))

(declare-fun res!1236654 () Bool)

(assert (=> b!3000538 (=> (not res!1236654) (not e!1884974))))

(assert (=> b!3000538 (= res!1236654 call!201575)))

(declare-fun d!846186 () Bool)

(declare-fun res!1236651 () Bool)

(assert (=> d!846186 (=> res!1236651 e!1884971)))

(assert (=> d!846186 (= res!1236651 ((_ is ElementMatch!9365) (regOne!19242 r!17423)))))

(assert (=> d!846186 (= (validRegex!4098 (regOne!19242 r!17423)) e!1884971)))

(declare-fun b!3000539 () Bool)

(declare-fun res!1236652 () Bool)

(assert (=> b!3000539 (=> res!1236652 e!1884972)))

(assert (=> b!3000539 (= res!1236652 (not ((_ is Concat!14686) (regOne!19242 r!17423))))))

(assert (=> b!3000539 (= e!1884970 e!1884972)))

(declare-fun b!3000540 () Bool)

(declare-fun res!1236653 () Bool)

(declare-fun e!1884976 () Bool)

(assert (=> b!3000540 (=> (not res!1236653) (not e!1884976))))

(assert (=> b!3000540 (= res!1236653 call!201573)))

(assert (=> b!3000540 (= e!1884970 e!1884976)))

(declare-fun b!3000541 () Bool)

(declare-fun e!1884973 () Bool)

(assert (=> b!3000541 (= e!1884973 call!201574)))

(declare-fun b!3000542 () Bool)

(assert (=> b!3000542 (= e!1884975 e!1884973)))

(declare-fun res!1236650 () Bool)

(assert (=> b!3000542 (= res!1236650 (not (nullable!3028 (reg!9694 (regOne!19242 r!17423)))))))

(assert (=> b!3000542 (=> (not res!1236650) (not e!1884973))))

(declare-fun b!3000543 () Bool)

(assert (=> b!3000543 (= e!1884976 call!201575)))

(assert (= (and d!846186 (not res!1236651)) b!3000536))

(assert (= (and b!3000536 c!493735) b!3000542))

(assert (= (and b!3000536 (not c!493735)) b!3000535))

(assert (= (and b!3000542 res!1236650) b!3000541))

(assert (= (and b!3000535 c!493736) b!3000540))

(assert (= (and b!3000535 (not c!493736)) b!3000539))

(assert (= (and b!3000540 res!1236653) b!3000543))

(assert (= (and b!3000539 (not res!1236652)) b!3000538))

(assert (= (and b!3000538 res!1236654) b!3000537))

(assert (= (or b!3000540 b!3000537) bm!201570))

(assert (= (or b!3000543 b!3000538) bm!201569))

(assert (= (or b!3000541 bm!201570) bm!201568))

(declare-fun m!3352029 () Bool)

(assert (=> bm!201568 m!3352029))

(declare-fun m!3352031 () Bool)

(assert (=> bm!201569 m!3352031))

(declare-fun m!3352033 () Bool)

(assert (=> b!3000542 m!3352033))

(assert (=> d!846062 d!846186))

(declare-fun b!3000544 () Bool)

(declare-fun e!1884982 () Bool)

(declare-fun e!1884977 () Bool)

(assert (=> b!3000544 (= e!1884982 e!1884977)))

(declare-fun c!493738 () Bool)

(assert (=> b!3000544 (= c!493738 ((_ is Union!9365) lt!1041750))))

(declare-fun b!3000545 () Bool)

(declare-fun e!1884978 () Bool)

(assert (=> b!3000545 (= e!1884978 e!1884982)))

(declare-fun c!493737 () Bool)

(assert (=> b!3000545 (= c!493737 ((_ is Star!9365) lt!1041750))))

(declare-fun call!201577 () Bool)

(declare-fun bm!201571 () Bool)

(assert (=> bm!201571 (= call!201577 (validRegex!4098 (ite c!493737 (reg!9694 lt!1041750) (ite c!493738 (regOne!19243 lt!1041750) (regTwo!19242 lt!1041750)))))))

(declare-fun bm!201572 () Bool)

(declare-fun call!201578 () Bool)

(assert (=> bm!201572 (= call!201578 (validRegex!4098 (ite c!493738 (regTwo!19243 lt!1041750) (regOne!19242 lt!1041750))))))

(declare-fun bm!201573 () Bool)

(declare-fun call!201576 () Bool)

(assert (=> bm!201573 (= call!201576 call!201577)))

(declare-fun b!3000546 () Bool)

(declare-fun e!1884981 () Bool)

(assert (=> b!3000546 (= e!1884981 call!201576)))

(declare-fun b!3000547 () Bool)

(declare-fun e!1884979 () Bool)

(assert (=> b!3000547 (= e!1884979 e!1884981)))

(declare-fun res!1236659 () Bool)

(assert (=> b!3000547 (=> (not res!1236659) (not e!1884981))))

(assert (=> b!3000547 (= res!1236659 call!201578)))

(declare-fun d!846188 () Bool)

(declare-fun res!1236656 () Bool)

(assert (=> d!846188 (=> res!1236656 e!1884978)))

(assert (=> d!846188 (= res!1236656 ((_ is ElementMatch!9365) lt!1041750))))

(assert (=> d!846188 (= (validRegex!4098 lt!1041750) e!1884978)))

(declare-fun b!3000548 () Bool)

(declare-fun res!1236657 () Bool)

(assert (=> b!3000548 (=> res!1236657 e!1884979)))

(assert (=> b!3000548 (= res!1236657 (not ((_ is Concat!14686) lt!1041750)))))

(assert (=> b!3000548 (= e!1884977 e!1884979)))

(declare-fun b!3000549 () Bool)

(declare-fun res!1236658 () Bool)

(declare-fun e!1884983 () Bool)

(assert (=> b!3000549 (=> (not res!1236658) (not e!1884983))))

(assert (=> b!3000549 (= res!1236658 call!201576)))

(assert (=> b!3000549 (= e!1884977 e!1884983)))

(declare-fun b!3000550 () Bool)

(declare-fun e!1884980 () Bool)

(assert (=> b!3000550 (= e!1884980 call!201577)))

(declare-fun b!3000551 () Bool)

(assert (=> b!3000551 (= e!1884982 e!1884980)))

(declare-fun res!1236655 () Bool)

(assert (=> b!3000551 (= res!1236655 (not (nullable!3028 (reg!9694 lt!1041750))))))

(assert (=> b!3000551 (=> (not res!1236655) (not e!1884980))))

(declare-fun b!3000552 () Bool)

(assert (=> b!3000552 (= e!1884983 call!201578)))

(assert (= (and d!846188 (not res!1236656)) b!3000545))

(assert (= (and b!3000545 c!493737) b!3000551))

(assert (= (and b!3000545 (not c!493737)) b!3000544))

(assert (= (and b!3000551 res!1236655) b!3000550))

(assert (= (and b!3000544 c!493738) b!3000549))

(assert (= (and b!3000544 (not c!493738)) b!3000548))

(assert (= (and b!3000549 res!1236658) b!3000552))

(assert (= (and b!3000548 (not res!1236657)) b!3000547))

(assert (= (and b!3000547 res!1236659) b!3000546))

(assert (= (or b!3000549 b!3000546) bm!201573))

(assert (= (or b!3000552 b!3000547) bm!201572))

(assert (= (or b!3000550 bm!201573) bm!201571))

(declare-fun m!3352035 () Bool)

(assert (=> bm!201571 m!3352035))

(declare-fun m!3352037 () Bool)

(assert (=> bm!201572 m!3352037))

(declare-fun m!3352039 () Bool)

(assert (=> b!3000551 m!3352039))

(assert (=> d!846088 d!846188))

(assert (=> d!846088 d!846186))

(assert (=> b!2999847 d!846136))

(assert (=> b!2999849 d!846142))

(assert (=> b!2999821 d!846142))

(declare-fun d!846190 () Bool)

(assert (=> d!846190 (= (isEmptyLang!455 (ite c!493592 lt!1041752 (ite c!493588 lt!1041754 lt!1041751))) ((_ is EmptyLang!9365) (ite c!493592 lt!1041752 (ite c!493588 lt!1041754 lt!1041751))))))

(assert (=> bm!201462 d!846190))

(declare-fun d!846192 () Bool)

(assert (=> d!846192 (= (isEmptyLang!455 (ite c!493577 lt!1041749 lt!1041747)) ((_ is EmptyLang!9365) (ite c!493577 lt!1041749 lt!1041747)))))

(assert (=> bm!201450 d!846192))

(declare-fun bs!528352 () Bool)

(declare-fun b!3000559 () Bool)

(assert (= bs!528352 (and b!3000559 b!3000247)))

(declare-fun lambda!112079 () Int)

(assert (=> bs!528352 (= (and (= (reg!9694 (regOne!19243 r!17423)) (reg!9694 r!17423)) (= (regOne!19243 r!17423) r!17423)) (= lambda!112079 lambda!112077))))

(declare-fun bs!528353 () Bool)

(assert (= bs!528353 (and b!3000559 b!3000246)))

(assert (=> bs!528353 (not (= lambda!112079 lambda!112078))))

(assert (=> b!3000559 true))

(assert (=> b!3000559 true))

(declare-fun bs!528354 () Bool)

(declare-fun b!3000558 () Bool)

(assert (= bs!528354 (and b!3000558 b!3000247)))

(declare-fun lambda!112080 () Int)

(assert (=> bs!528354 (not (= lambda!112080 lambda!112077))))

(declare-fun bs!528355 () Bool)

(assert (= bs!528355 (and b!3000558 b!3000246)))

(assert (=> bs!528355 (= (and (= (regOne!19242 (regOne!19243 r!17423)) (regOne!19242 r!17423)) (= (regTwo!19242 (regOne!19243 r!17423)) (regTwo!19242 r!17423))) (= lambda!112080 lambda!112078))))

(declare-fun bs!528356 () Bool)

(assert (= bs!528356 (and b!3000558 b!3000559)))

(assert (=> bs!528356 (not (= lambda!112080 lambda!112079))))

(assert (=> b!3000558 true))

(assert (=> b!3000558 true))

(declare-fun b!3000553 () Bool)

(declare-fun e!1884990 () Bool)

(declare-fun call!201579 () Bool)

(assert (=> b!3000553 (= e!1884990 call!201579)))

(declare-fun bm!201574 () Bool)

(assert (=> bm!201574 (= call!201579 (isEmpty!19380 s!11993))))

(declare-fun b!3000554 () Bool)

(declare-fun e!1884985 () Bool)

(assert (=> b!3000554 (= e!1884985 (matchRSpec!1502 (regTwo!19243 (regOne!19243 r!17423)) s!11993))))

(declare-fun b!3000555 () Bool)

(declare-fun e!1884989 () Bool)

(assert (=> b!3000555 (= e!1884989 (= s!11993 (Cons!35106 (c!493509 (regOne!19243 r!17423)) Nil!35106)))))

(declare-fun d!846194 () Bool)

(declare-fun c!493740 () Bool)

(assert (=> d!846194 (= c!493740 ((_ is EmptyExpr!9365) (regOne!19243 r!17423)))))

(assert (=> d!846194 (= (matchRSpec!1502 (regOne!19243 r!17423) s!11993) e!1884990)))

(declare-fun b!3000556 () Bool)

(declare-fun e!1884984 () Bool)

(assert (=> b!3000556 (= e!1884990 e!1884984)))

(declare-fun res!1236660 () Bool)

(assert (=> b!3000556 (= res!1236660 (not ((_ is EmptyLang!9365) (regOne!19243 r!17423))))))

(assert (=> b!3000556 (=> (not res!1236660) (not e!1884984))))

(declare-fun c!493742 () Bool)

(declare-fun call!201580 () Bool)

(declare-fun bm!201575 () Bool)

(assert (=> bm!201575 (= call!201580 (Exists!1638 (ite c!493742 lambda!112079 lambda!112080)))))

(declare-fun b!3000557 () Bool)

(declare-fun e!1884986 () Bool)

(assert (=> b!3000557 (= e!1884986 e!1884985)))

(declare-fun res!1236661 () Bool)

(assert (=> b!3000557 (= res!1236661 (matchRSpec!1502 (regOne!19243 (regOne!19243 r!17423)) s!11993))))

(assert (=> b!3000557 (=> res!1236661 e!1884985)))

(declare-fun e!1884988 () Bool)

(assert (=> b!3000558 (= e!1884988 call!201580)))

(declare-fun e!1884987 () Bool)

(assert (=> b!3000559 (= e!1884987 call!201580)))

(declare-fun b!3000560 () Bool)

(declare-fun c!493741 () Bool)

(assert (=> b!3000560 (= c!493741 ((_ is Union!9365) (regOne!19243 r!17423)))))

(assert (=> b!3000560 (= e!1884989 e!1884986)))

(declare-fun b!3000561 () Bool)

(declare-fun c!493739 () Bool)

(assert (=> b!3000561 (= c!493739 ((_ is ElementMatch!9365) (regOne!19243 r!17423)))))

(assert (=> b!3000561 (= e!1884984 e!1884989)))

(declare-fun b!3000562 () Bool)

(declare-fun res!1236662 () Bool)

(assert (=> b!3000562 (=> res!1236662 e!1884987)))

(assert (=> b!3000562 (= res!1236662 call!201579)))

(assert (=> b!3000562 (= e!1884988 e!1884987)))

(declare-fun b!3000563 () Bool)

(assert (=> b!3000563 (= e!1884986 e!1884988)))

(assert (=> b!3000563 (= c!493742 ((_ is Star!9365) (regOne!19243 r!17423)))))

(assert (= (and d!846194 c!493740) b!3000553))

(assert (= (and d!846194 (not c!493740)) b!3000556))

(assert (= (and b!3000556 res!1236660) b!3000561))

(assert (= (and b!3000561 c!493739) b!3000555))

(assert (= (and b!3000561 (not c!493739)) b!3000560))

(assert (= (and b!3000560 c!493741) b!3000557))

(assert (= (and b!3000560 (not c!493741)) b!3000563))

(assert (= (and b!3000557 (not res!1236661)) b!3000554))

(assert (= (and b!3000563 c!493742) b!3000562))

(assert (= (and b!3000563 (not c!493742)) b!3000558))

(assert (= (and b!3000562 (not res!1236662)) b!3000559))

(assert (= (or b!3000559 b!3000558) bm!201575))

(assert (= (or b!3000553 b!3000562) bm!201574))

(assert (=> bm!201574 m!3351683))

(declare-fun m!3352041 () Bool)

(assert (=> b!3000554 m!3352041))

(declare-fun m!3352043 () Bool)

(assert (=> bm!201575 m!3352043))

(declare-fun m!3352045 () Bool)

(assert (=> b!3000557 m!3352045))

(assert (=> b!3000245 d!846194))

(declare-fun bm!201576 () Bool)

(declare-fun call!201581 () Bool)

(assert (=> bm!201576 (= call!201581 (isEmpty!19380 (tail!4911 s!11993)))))

(declare-fun b!3000564 () Bool)

(declare-fun e!1884997 () Bool)

(declare-fun e!1884996 () Bool)

(assert (=> b!3000564 (= e!1884997 e!1884996)))

(declare-fun c!493743 () Bool)

(assert (=> b!3000564 (= c!493743 ((_ is EmptyLang!9365) (derivativeStep!2626 r!17423 (head!6685 s!11993))))))

(declare-fun b!3000565 () Bool)

(declare-fun lt!1041809 () Bool)

(assert (=> b!3000565 (= e!1884996 (not lt!1041809))))

(declare-fun b!3000566 () Bool)

(declare-fun res!1236670 () Bool)

(declare-fun e!1884995 () Bool)

(assert (=> b!3000566 (=> res!1236670 e!1884995)))

(assert (=> b!3000566 (= res!1236670 (not ((_ is ElementMatch!9365) (derivativeStep!2626 r!17423 (head!6685 s!11993)))))))

(assert (=> b!3000566 (= e!1884996 e!1884995)))

(declare-fun b!3000567 () Bool)

(declare-fun e!1884992 () Bool)

(assert (=> b!3000567 (= e!1884992 (nullable!3028 (derivativeStep!2626 r!17423 (head!6685 s!11993))))))

(declare-fun b!3000568 () Bool)

(declare-fun e!1884991 () Bool)

(assert (=> b!3000568 (= e!1884991 (not (= (head!6685 (tail!4911 s!11993)) (c!493509 (derivativeStep!2626 r!17423 (head!6685 s!11993))))))))

(declare-fun b!3000569 () Bool)

(declare-fun e!1884993 () Bool)

(assert (=> b!3000569 (= e!1884993 (= (head!6685 (tail!4911 s!11993)) (c!493509 (derivativeStep!2626 r!17423 (head!6685 s!11993)))))))

(declare-fun b!3000570 () Bool)

(declare-fun res!1236666 () Bool)

(assert (=> b!3000570 (=> res!1236666 e!1884995)))

(assert (=> b!3000570 (= res!1236666 e!1884993)))

(declare-fun res!1236665 () Bool)

(assert (=> b!3000570 (=> (not res!1236665) (not e!1884993))))

(assert (=> b!3000570 (= res!1236665 lt!1041809)))

(declare-fun b!3000571 () Bool)

(declare-fun e!1884994 () Bool)

(assert (=> b!3000571 (= e!1884994 e!1884991)))

(declare-fun res!1236663 () Bool)

(assert (=> b!3000571 (=> res!1236663 e!1884991)))

(assert (=> b!3000571 (= res!1236663 call!201581)))

(declare-fun b!3000573 () Bool)

(assert (=> b!3000573 (= e!1884995 e!1884994)))

(declare-fun res!1236669 () Bool)

(assert (=> b!3000573 (=> (not res!1236669) (not e!1884994))))

(assert (=> b!3000573 (= res!1236669 (not lt!1041809))))

(declare-fun b!3000574 () Bool)

(assert (=> b!3000574 (= e!1884992 (matchR!4247 (derivativeStep!2626 (derivativeStep!2626 r!17423 (head!6685 s!11993)) (head!6685 (tail!4911 s!11993))) (tail!4911 (tail!4911 s!11993))))))

(declare-fun b!3000575 () Bool)

(assert (=> b!3000575 (= e!1884997 (= lt!1041809 call!201581))))

(declare-fun b!3000576 () Bool)

(declare-fun res!1236664 () Bool)

(assert (=> b!3000576 (=> res!1236664 e!1884991)))

(assert (=> b!3000576 (= res!1236664 (not (isEmpty!19380 (tail!4911 (tail!4911 s!11993)))))))

(declare-fun b!3000577 () Bool)

(declare-fun res!1236667 () Bool)

(assert (=> b!3000577 (=> (not res!1236667) (not e!1884993))))

(assert (=> b!3000577 (= res!1236667 (not call!201581))))

(declare-fun b!3000572 () Bool)

(declare-fun res!1236668 () Bool)

(assert (=> b!3000572 (=> (not res!1236668) (not e!1884993))))

(assert (=> b!3000572 (= res!1236668 (isEmpty!19380 (tail!4911 (tail!4911 s!11993))))))

(declare-fun d!846196 () Bool)

(assert (=> d!846196 e!1884997))

(declare-fun c!493745 () Bool)

(assert (=> d!846196 (= c!493745 ((_ is EmptyExpr!9365) (derivativeStep!2626 r!17423 (head!6685 s!11993))))))

(assert (=> d!846196 (= lt!1041809 e!1884992)))

(declare-fun c!493744 () Bool)

(assert (=> d!846196 (= c!493744 (isEmpty!19380 (tail!4911 s!11993)))))

(assert (=> d!846196 (validRegex!4098 (derivativeStep!2626 r!17423 (head!6685 s!11993)))))

(assert (=> d!846196 (= (matchR!4247 (derivativeStep!2626 r!17423 (head!6685 s!11993)) (tail!4911 s!11993)) lt!1041809)))

(assert (= (and d!846196 c!493744) b!3000567))

(assert (= (and d!846196 (not c!493744)) b!3000574))

(assert (= (and d!846196 c!493745) b!3000575))

(assert (= (and d!846196 (not c!493745)) b!3000564))

(assert (= (and b!3000564 c!493743) b!3000565))

(assert (= (and b!3000564 (not c!493743)) b!3000566))

(assert (= (and b!3000566 (not res!1236670)) b!3000570))

(assert (= (and b!3000570 res!1236665) b!3000577))

(assert (= (and b!3000577 res!1236667) b!3000572))

(assert (= (and b!3000572 res!1236668) b!3000569))

(assert (= (and b!3000570 (not res!1236666)) b!3000573))

(assert (= (and b!3000573 res!1236669) b!3000571))

(assert (= (and b!3000571 (not res!1236663)) b!3000576))

(assert (= (and b!3000576 (not res!1236664)) b!3000568))

(assert (= (or b!3000575 b!3000571 b!3000577) bm!201576))

(assert (=> b!3000569 m!3351719))

(assert (=> b!3000569 m!3351905))

(assert (=> bm!201576 m!3351719))

(assert (=> bm!201576 m!3351721))

(assert (=> d!846196 m!3351719))

(assert (=> d!846196 m!3351721))

(assert (=> d!846196 m!3351875))

(declare-fun m!3352047 () Bool)

(assert (=> d!846196 m!3352047))

(assert (=> b!3000576 m!3351719))

(assert (=> b!3000576 m!3351909))

(assert (=> b!3000576 m!3351909))

(assert (=> b!3000576 m!3351911))

(assert (=> b!3000567 m!3351875))

(declare-fun m!3352049 () Bool)

(assert (=> b!3000567 m!3352049))

(assert (=> b!3000572 m!3351719))

(assert (=> b!3000572 m!3351909))

(assert (=> b!3000572 m!3351909))

(assert (=> b!3000572 m!3351911))

(assert (=> b!3000568 m!3351719))

(assert (=> b!3000568 m!3351905))

(assert (=> b!3000574 m!3351719))

(assert (=> b!3000574 m!3351905))

(assert (=> b!3000574 m!3351875))

(assert (=> b!3000574 m!3351905))

(declare-fun m!3352051 () Bool)

(assert (=> b!3000574 m!3352051))

(assert (=> b!3000574 m!3351719))

(assert (=> b!3000574 m!3351909))

(assert (=> b!3000574 m!3352051))

(assert (=> b!3000574 m!3351909))

(declare-fun m!3352053 () Bool)

(assert (=> b!3000574 m!3352053))

(assert (=> b!3000266 d!846196))

(declare-fun b!3000590 () Bool)

(declare-fun e!1885002 () Regex!9365)

(declare-fun call!201582 () Regex!9365)

(assert (=> b!3000590 (= e!1885002 (Union!9365 (Concat!14686 call!201582 (regTwo!19242 r!17423)) EmptyLang!9365))))

(declare-fun b!3000591 () Bool)

(declare-fun e!1885007 () Regex!9365)

(assert (=> b!3000591 (= e!1885007 EmptyLang!9365)))

(declare-fun b!3000592 () Bool)

(declare-fun c!493756 () Bool)

(assert (=> b!3000592 (= c!493756 (nullable!3028 (regOne!19242 r!17423)))))

(declare-fun e!1885003 () Regex!9365)

(assert (=> b!3000592 (= e!1885003 e!1885002)))

(declare-fun d!846198 () Bool)

(declare-fun lt!1041812 () Regex!9365)

(assert (=> d!846198 (validRegex!4098 lt!1041812)))

(assert (=> d!846198 (= lt!1041812 e!1885007)))

(declare-fun c!493754 () Bool)

(assert (=> d!846198 (= c!493754 (or ((_ is EmptyExpr!9365) r!17423) ((_ is EmptyLang!9365) r!17423)))))

(assert (=> d!846198 (validRegex!4098 r!17423)))

(assert (=> d!846198 (= (derivativeStep!2626 r!17423 (head!6685 s!11993)) lt!1041812)))

(declare-fun call!201585 () Regex!9365)

(declare-fun b!3000593 () Bool)

(assert (=> b!3000593 (= e!1885002 (Union!9365 (Concat!14686 call!201582 (regTwo!19242 r!17423)) call!201585))))

(declare-fun bm!201577 () Bool)

(declare-fun c!493751 () Bool)

(assert (=> bm!201577 (= call!201585 (derivativeStep!2626 (ite c!493751 (regOne!19243 r!17423) (regTwo!19242 r!17423)) (head!6685 s!11993)))))

(declare-fun bm!201578 () Bool)

(declare-fun call!201584 () Regex!9365)

(declare-fun call!201583 () Regex!9365)

(assert (=> bm!201578 (= call!201584 call!201583)))

(declare-fun b!3000594 () Bool)

(assert (=> b!3000594 (= e!1885003 (Concat!14686 call!201584 r!17423))))

(declare-fun b!3000595 () Bool)

(declare-fun e!1885008 () Regex!9365)

(assert (=> b!3000595 (= e!1885008 (ite (= (head!6685 s!11993) (c!493509 r!17423)) EmptyExpr!9365 EmptyLang!9365))))

(declare-fun b!3000596 () Bool)

(assert (=> b!3000596 (= e!1885007 e!1885008)))

(declare-fun c!493752 () Bool)

(assert (=> b!3000596 (= c!493752 ((_ is ElementMatch!9365) r!17423))))

(declare-fun b!3000597 () Bool)

(declare-fun e!1885004 () Regex!9365)

(assert (=> b!3000597 (= e!1885004 e!1885003)))

(declare-fun c!493750 () Bool)

(assert (=> b!3000597 (= c!493750 ((_ is Star!9365) r!17423))))

(declare-fun b!3000598 () Bool)

(assert (=> b!3000598 (= c!493751 ((_ is Union!9365) r!17423))))

(assert (=> b!3000598 (= e!1885008 e!1885004)))

(declare-fun bm!201579 () Bool)

(assert (=> bm!201579 (= call!201582 call!201584)))

(declare-fun b!3000599 () Bool)

(assert (=> b!3000599 (= e!1885004 (Union!9365 call!201585 call!201583))))

(declare-fun bm!201580 () Bool)

(assert (=> bm!201580 (= call!201583 (derivativeStep!2626 (ite c!493751 (regTwo!19243 r!17423) (ite c!493750 (reg!9694 r!17423) (regOne!19242 r!17423))) (head!6685 s!11993)))))

(assert (= (and d!846198 c!493754) b!3000591))

(assert (= (and d!846198 (not c!493754)) b!3000596))

(assert (= (and b!3000596 c!493752) b!3000595))

(assert (= (and b!3000596 (not c!493752)) b!3000598))

(assert (= (and b!3000598 c!493751) b!3000599))

(assert (= (and b!3000598 (not c!493751)) b!3000597))

(assert (= (and b!3000597 c!493750) b!3000594))

(assert (= (and b!3000597 (not c!493750)) b!3000592))

(assert (= (and b!3000592 c!493756) b!3000593))

(assert (= (and b!3000592 (not c!493756)) b!3000590))

(assert (= (or b!3000593 b!3000590) bm!201579))

(assert (= (or b!3000594 bm!201579) bm!201578))

(assert (= (or b!3000599 bm!201578) bm!201580))

(assert (= (or b!3000599 b!3000593) bm!201577))

(assert (=> b!3000592 m!3351679))

(declare-fun m!3352055 () Bool)

(assert (=> d!846198 m!3352055))

(assert (=> d!846198 m!3351693))

(assert (=> bm!201577 m!3351715))

(declare-fun m!3352057 () Bool)

(assert (=> bm!201577 m!3352057))

(assert (=> bm!201580 m!3351715))

(declare-fun m!3352059 () Bool)

(assert (=> bm!201580 m!3352059))

(assert (=> b!3000266 d!846198))

(assert (=> b!3000266 d!846142))

(assert (=> b!3000266 d!846124))

(declare-fun d!846200 () Bool)

(assert (=> d!846200 (= (isEmptyLang!455 (ite c!493581 lt!1041746 (ite c!493577 lt!1041748 lt!1041745))) ((_ is EmptyLang!9365) (ite c!493581 lt!1041746 (ite c!493577 lt!1041748 lt!1041745))))))

(assert (=> bm!201455 d!846200))

(declare-fun d!846202 () Bool)

(assert (not d!846202))

(assert (=> b!2999814 d!846202))

(declare-fun d!846204 () Bool)

(assert (not d!846204))

(assert (=> b!2999814 d!846204))

(assert (=> b!3000264 d!846122))

(assert (=> b!3000264 d!846124))

(declare-fun c!493765 () Bool)

(declare-fun call!201590 () Bool)

(declare-fun lt!1041816 () Regex!9365)

(declare-fun bm!201585 () Bool)

(declare-fun lt!1041818 () Regex!9365)

(assert (=> bm!201585 (= call!201590 (isEmptyLang!455 (ite c!493765 lt!1041818 lt!1041816)))))

(declare-fun b!3000608 () Bool)

(declare-fun e!1885025 () Regex!9365)

(assert (=> b!3000608 (= e!1885025 EmptyExpr!9365)))

(declare-fun b!3000609 () Bool)

(declare-fun e!1885017 () Regex!9365)

(assert (=> b!3000609 (= e!1885025 e!1885017)))

(declare-fun c!493769 () Bool)

(assert (=> b!3000609 (= c!493769 ((_ is Star!9365) (ite c!493588 (regOne!19243 (regOne!19242 r!17423)) (regTwo!19242 (regOne!19242 r!17423)))))))

(declare-fun b!3000610 () Bool)

(declare-fun e!1885023 () Regex!9365)

(declare-fun e!1885024 () Regex!9365)

(assert (=> b!3000610 (= e!1885023 e!1885024)))

(declare-fun c!493761 () Bool)

(assert (=> b!3000610 (= c!493761 ((_ is ElementMatch!9365) (ite c!493588 (regOne!19243 (regOne!19242 r!17423)) (regTwo!19242 (regOne!19242 r!17423)))))))

(declare-fun b!3000611 () Bool)

(declare-fun e!1885015 () Regex!9365)

(declare-fun lt!1041815 () Regex!9365)

(assert (=> b!3000611 (= e!1885015 (Star!9365 lt!1041815))))

(declare-fun b!3000612 () Bool)

(declare-fun e!1885022 () Regex!9365)

(declare-fun lt!1041814 () Regex!9365)

(assert (=> b!3000612 (= e!1885022 (Concat!14686 lt!1041816 lt!1041814))))

(declare-fun bm!201586 () Bool)

(declare-fun call!201595 () Bool)

(declare-fun call!201591 () Bool)

(assert (=> bm!201586 (= call!201595 call!201591)))

(declare-fun b!3000613 () Bool)

(declare-fun e!1885013 () Regex!9365)

(assert (=> b!3000613 (= e!1885013 EmptyLang!9365)))

(declare-fun b!3000614 () Bool)

(declare-fun e!1885018 () Regex!9365)

(assert (=> b!3000614 (= e!1885018 lt!1041814)))

(declare-fun b!3000615 () Bool)

(assert (=> b!3000615 (= e!1885023 EmptyLang!9365)))

(declare-fun b!3000616 () Bool)

(declare-fun e!1885014 () Regex!9365)

(declare-fun lt!1041817 () Regex!9365)

(assert (=> b!3000616 (= e!1885014 lt!1041817)))

(declare-fun bm!201587 () Bool)

(declare-fun call!201593 () Bool)

(assert (=> bm!201587 (= call!201593 (isEmptyExpr!472 (ite c!493769 lt!1041815 lt!1041814)))))

(declare-fun b!3000618 () Bool)

(declare-fun e!1885020 () Regex!9365)

(assert (=> b!3000618 (= e!1885020 e!1885013)))

(declare-fun call!201594 () Regex!9365)

(assert (=> b!3000618 (= lt!1041816 call!201594)))

(declare-fun call!201592 () Regex!9365)

(assert (=> b!3000618 (= lt!1041814 call!201592)))

(declare-fun res!1236671 () Bool)

(assert (=> b!3000618 (= res!1236671 call!201590)))

(declare-fun e!1885021 () Bool)

(assert (=> b!3000618 (=> res!1236671 e!1885021)))

(declare-fun c!493764 () Bool)

(assert (=> b!3000618 (= c!493764 e!1885021)))

(declare-fun bm!201588 () Bool)

(assert (=> bm!201588 (= call!201592 (simplify!356 (ite c!493765 (regOne!19243 (ite c!493588 (regOne!19243 (regOne!19242 r!17423)) (regTwo!19242 (regOne!19242 r!17423)))) (regTwo!19242 (ite c!493588 (regOne!19243 (regOne!19242 r!17423)) (regTwo!19242 (regOne!19242 r!17423)))))))))

(declare-fun b!3000619 () Bool)

(declare-fun c!493762 () Bool)

(assert (=> b!3000619 (= c!493762 (isEmptyExpr!472 lt!1041816))))

(assert (=> b!3000619 (= e!1885013 e!1885018)))

(declare-fun b!3000620 () Bool)

(declare-fun e!1885026 () Regex!9365)

(assert (=> b!3000620 (= e!1885026 lt!1041818)))

(declare-fun bm!201589 () Bool)

(declare-fun call!201596 () Regex!9365)

(assert (=> bm!201589 (= call!201596 (simplify!356 (ite c!493769 (reg!9694 (ite c!493588 (regOne!19243 (regOne!19242 r!17423)) (regTwo!19242 (regOne!19242 r!17423)))) (ite c!493765 (regTwo!19243 (ite c!493588 (regOne!19243 (regOne!19242 r!17423)) (regTwo!19242 (regOne!19242 r!17423)))) (regOne!19242 (ite c!493588 (regOne!19243 (regOne!19242 r!17423)) (regTwo!19242 (regOne!19242 r!17423))))))))))

(declare-fun b!3000621 () Bool)

(assert (=> b!3000621 (= e!1885015 EmptyExpr!9365)))

(declare-fun bm!201590 () Bool)

(assert (=> bm!201590 (= call!201591 (isEmptyLang!455 (ite c!493769 lt!1041815 (ite c!493765 lt!1041817 lt!1041814))))))

(declare-fun b!3000622 () Bool)

(assert (=> b!3000622 (= e!1885021 call!201595)))

(declare-fun b!3000623 () Bool)

(assert (=> b!3000623 (= c!493765 ((_ is Union!9365) (ite c!493588 (regOne!19243 (regOne!19242 r!17423)) (regTwo!19242 (regOne!19242 r!17423)))))))

(assert (=> b!3000623 (= e!1885017 e!1885020)))

(declare-fun bm!201591 () Bool)

(assert (=> bm!201591 (= call!201594 call!201596)))

(declare-fun b!3000624 () Bool)

(assert (=> b!3000624 (= e!1885024 (ite c!493588 (regOne!19243 (regOne!19242 r!17423)) (regTwo!19242 (regOne!19242 r!17423))))))

(declare-fun b!3000625 () Bool)

(assert (=> b!3000625 (= e!1885014 (Union!9365 lt!1041817 lt!1041818))))

(declare-fun b!3000626 () Bool)

(declare-fun c!493766 () Bool)

(assert (=> b!3000626 (= c!493766 call!201590)))

(assert (=> b!3000626 (= e!1885026 e!1885014)))

(declare-fun b!3000627 () Bool)

(assert (=> b!3000627 (= e!1885020 e!1885026)))

(assert (=> b!3000627 (= lt!1041817 call!201592)))

(assert (=> b!3000627 (= lt!1041818 call!201594)))

(declare-fun c!493770 () Bool)

(assert (=> b!3000627 (= c!493770 call!201595)))

(declare-fun b!3000628 () Bool)

(assert (=> b!3000628 (= e!1885018 e!1885022)))

(declare-fun c!493768 () Bool)

(assert (=> b!3000628 (= c!493768 call!201593)))

(declare-fun b!3000629 () Bool)

(assert (=> b!3000629 (= e!1885022 lt!1041816)))

(declare-fun e!1885019 () Bool)

(declare-fun b!3000630 () Bool)

(declare-fun lt!1041813 () Regex!9365)

(assert (=> b!3000630 (= e!1885019 (= (nullable!3028 lt!1041813) (nullable!3028 (ite c!493588 (regOne!19243 (regOne!19242 r!17423)) (regTwo!19242 (regOne!19242 r!17423))))))))

(declare-fun b!3000631 () Bool)

(declare-fun c!493763 () Bool)

(declare-fun e!1885016 () Bool)

(assert (=> b!3000631 (= c!493763 e!1885016)))

(declare-fun res!1236672 () Bool)

(assert (=> b!3000631 (=> res!1236672 e!1885016)))

(assert (=> b!3000631 (= res!1236672 call!201591)))

(assert (=> b!3000631 (= lt!1041815 call!201596)))

(assert (=> b!3000631 (= e!1885017 e!1885015)))

(declare-fun b!3000632 () Bool)

(assert (=> b!3000632 (= e!1885016 call!201593)))

(declare-fun d!846206 () Bool)

(assert (=> d!846206 e!1885019))

(declare-fun res!1236673 () Bool)

(assert (=> d!846206 (=> (not res!1236673) (not e!1885019))))

(assert (=> d!846206 (= res!1236673 (validRegex!4098 lt!1041813))))

(assert (=> d!846206 (= lt!1041813 e!1885023)))

(declare-fun c!493767 () Bool)

(assert (=> d!846206 (= c!493767 ((_ is EmptyLang!9365) (ite c!493588 (regOne!19243 (regOne!19242 r!17423)) (regTwo!19242 (regOne!19242 r!17423)))))))

(assert (=> d!846206 (validRegex!4098 (ite c!493588 (regOne!19243 (regOne!19242 r!17423)) (regTwo!19242 (regOne!19242 r!17423))))))

(assert (=> d!846206 (= (simplify!356 (ite c!493588 (regOne!19243 (regOne!19242 r!17423)) (regTwo!19242 (regOne!19242 r!17423)))) lt!1041813)))

(declare-fun b!3000617 () Bool)

(declare-fun c!493771 () Bool)

(assert (=> b!3000617 (= c!493771 ((_ is EmptyExpr!9365) (ite c!493588 (regOne!19243 (regOne!19242 r!17423)) (regTwo!19242 (regOne!19242 r!17423)))))))

(assert (=> b!3000617 (= e!1885024 e!1885025)))

(assert (= (and d!846206 c!493767) b!3000615))

(assert (= (and d!846206 (not c!493767)) b!3000610))

(assert (= (and b!3000610 c!493761) b!3000624))

(assert (= (and b!3000610 (not c!493761)) b!3000617))

(assert (= (and b!3000617 c!493771) b!3000608))

(assert (= (and b!3000617 (not c!493771)) b!3000609))

(assert (= (and b!3000609 c!493769) b!3000631))

(assert (= (and b!3000609 (not c!493769)) b!3000623))

(assert (= (and b!3000631 (not res!1236672)) b!3000632))

(assert (= (and b!3000631 c!493763) b!3000621))

(assert (= (and b!3000631 (not c!493763)) b!3000611))

(assert (= (and b!3000623 c!493765) b!3000627))

(assert (= (and b!3000623 (not c!493765)) b!3000618))

(assert (= (and b!3000627 c!493770) b!3000620))

(assert (= (and b!3000627 (not c!493770)) b!3000626))

(assert (= (and b!3000626 c!493766) b!3000616))

(assert (= (and b!3000626 (not c!493766)) b!3000625))

(assert (= (and b!3000618 (not res!1236671)) b!3000622))

(assert (= (and b!3000618 c!493764) b!3000613))

(assert (= (and b!3000618 (not c!493764)) b!3000619))

(assert (= (and b!3000619 c!493762) b!3000614))

(assert (= (and b!3000619 (not c!493762)) b!3000628))

(assert (= (and b!3000628 c!493768) b!3000629))

(assert (= (and b!3000628 (not c!493768)) b!3000612))

(assert (= (or b!3000627 b!3000618) bm!201588))

(assert (= (or b!3000627 b!3000618) bm!201591))

(assert (= (or b!3000627 b!3000622) bm!201586))

(assert (= (or b!3000626 b!3000618) bm!201585))

(assert (= (or b!3000632 b!3000628) bm!201587))

(assert (= (or b!3000631 bm!201591) bm!201589))

(assert (= (or b!3000631 bm!201586) bm!201590))

(assert (= (and d!846206 res!1236673) b!3000630))

(declare-fun m!3352061 () Bool)

(assert (=> bm!201585 m!3352061))

(declare-fun m!3352063 () Bool)

(assert (=> bm!201588 m!3352063))

(declare-fun m!3352065 () Bool)

(assert (=> bm!201587 m!3352065))

(declare-fun m!3352067 () Bool)

(assert (=> d!846206 m!3352067))

(declare-fun m!3352069 () Bool)

(assert (=> d!846206 m!3352069))

(declare-fun m!3352071 () Bool)

(assert (=> bm!201589 m!3352071))

(declare-fun m!3352073 () Bool)

(assert (=> bm!201590 m!3352073))

(declare-fun m!3352075 () Bool)

(assert (=> b!3000619 m!3352075))

(declare-fun m!3352077 () Bool)

(assert (=> b!3000630 m!3352077))

(declare-fun m!3352079 () Bool)

(assert (=> b!3000630 m!3352079))

(assert (=> bm!201460 d!846206))

(declare-fun b!3000633 () Bool)

(declare-fun e!1885032 () Bool)

(declare-fun e!1885027 () Bool)

(assert (=> b!3000633 (= e!1885032 e!1885027)))

(declare-fun c!493773 () Bool)

(assert (=> b!3000633 (= c!493773 ((_ is Union!9365) (ite c!493669 (regTwo!19243 r!17423) (regOne!19242 r!17423))))))

(declare-fun b!3000634 () Bool)

(declare-fun e!1885028 () Bool)

(assert (=> b!3000634 (= e!1885028 e!1885032)))

(declare-fun c!493772 () Bool)

(assert (=> b!3000634 (= c!493772 ((_ is Star!9365) (ite c!493669 (regTwo!19243 r!17423) (regOne!19242 r!17423))))))

(declare-fun call!201602 () Bool)

(declare-fun bm!201596 () Bool)

(assert (=> bm!201596 (= call!201602 (validRegex!4098 (ite c!493772 (reg!9694 (ite c!493669 (regTwo!19243 r!17423) (regOne!19242 r!17423))) (ite c!493773 (regOne!19243 (ite c!493669 (regTwo!19243 r!17423) (regOne!19242 r!17423))) (regTwo!19242 (ite c!493669 (regTwo!19243 r!17423) (regOne!19242 r!17423)))))))))

(declare-fun call!201603 () Bool)

(declare-fun bm!201597 () Bool)

(assert (=> bm!201597 (= call!201603 (validRegex!4098 (ite c!493773 (regTwo!19243 (ite c!493669 (regTwo!19243 r!17423) (regOne!19242 r!17423))) (regOne!19242 (ite c!493669 (regTwo!19243 r!17423) (regOne!19242 r!17423))))))))

(declare-fun bm!201598 () Bool)

(declare-fun call!201601 () Bool)

(assert (=> bm!201598 (= call!201601 call!201602)))

(declare-fun b!3000635 () Bool)

(declare-fun e!1885031 () Bool)

(assert (=> b!3000635 (= e!1885031 call!201601)))

(declare-fun b!3000636 () Bool)

(declare-fun e!1885029 () Bool)

(assert (=> b!3000636 (= e!1885029 e!1885031)))

(declare-fun res!1236678 () Bool)

(assert (=> b!3000636 (=> (not res!1236678) (not e!1885031))))

(assert (=> b!3000636 (= res!1236678 call!201603)))

(declare-fun d!846208 () Bool)

(declare-fun res!1236675 () Bool)

(assert (=> d!846208 (=> res!1236675 e!1885028)))

(assert (=> d!846208 (= res!1236675 ((_ is ElementMatch!9365) (ite c!493669 (regTwo!19243 r!17423) (regOne!19242 r!17423))))))

(assert (=> d!846208 (= (validRegex!4098 (ite c!493669 (regTwo!19243 r!17423) (regOne!19242 r!17423))) e!1885028)))

(declare-fun b!3000637 () Bool)

(declare-fun res!1236676 () Bool)

(assert (=> b!3000637 (=> res!1236676 e!1885029)))

(assert (=> b!3000637 (= res!1236676 (not ((_ is Concat!14686) (ite c!493669 (regTwo!19243 r!17423) (regOne!19242 r!17423)))))))

(assert (=> b!3000637 (= e!1885027 e!1885029)))

(declare-fun b!3000638 () Bool)

(declare-fun res!1236677 () Bool)

(declare-fun e!1885033 () Bool)

(assert (=> b!3000638 (=> (not res!1236677) (not e!1885033))))

(assert (=> b!3000638 (= res!1236677 call!201601)))

(assert (=> b!3000638 (= e!1885027 e!1885033)))

(declare-fun b!3000639 () Bool)

(declare-fun e!1885030 () Bool)

(assert (=> b!3000639 (= e!1885030 call!201602)))

(declare-fun b!3000640 () Bool)

(assert (=> b!3000640 (= e!1885032 e!1885030)))

(declare-fun res!1236674 () Bool)

(assert (=> b!3000640 (= res!1236674 (not (nullable!3028 (reg!9694 (ite c!493669 (regTwo!19243 r!17423) (regOne!19242 r!17423))))))))

(assert (=> b!3000640 (=> (not res!1236674) (not e!1885030))))

(declare-fun b!3000641 () Bool)

(assert (=> b!3000641 (= e!1885033 call!201603)))

(assert (= (and d!846208 (not res!1236675)) b!3000634))

(assert (= (and b!3000634 c!493772) b!3000640))

(assert (= (and b!3000634 (not c!493772)) b!3000633))

(assert (= (and b!3000640 res!1236674) b!3000639))

(assert (= (and b!3000633 c!493773) b!3000638))

(assert (= (and b!3000633 (not c!493773)) b!3000637))

(assert (= (and b!3000638 res!1236677) b!3000641))

(assert (= (and b!3000637 (not res!1236676)) b!3000636))

(assert (= (and b!3000636 res!1236678) b!3000635))

(assert (= (or b!3000638 b!3000635) bm!201598))

(assert (= (or b!3000641 b!3000636) bm!201597))

(assert (= (or b!3000639 bm!201598) bm!201596))

(declare-fun m!3352081 () Bool)

(assert (=> bm!201596 m!3352081))

(declare-fun m!3352083 () Bool)

(assert (=> bm!201597 m!3352083))

(declare-fun m!3352085 () Bool)

(assert (=> b!3000640 m!3352085))

(assert (=> bm!201514 d!846208))

(assert (=> b!3000260 d!846142))

(declare-fun d!846210 () Bool)

(assert (=> d!846210 (= (isEmptyExpr!472 (ite c!493592 lt!1041752 lt!1041751)) ((_ is EmptyExpr!9365) (ite c!493592 lt!1041752 lt!1041751)))))

(assert (=> bm!201459 d!846210))

(declare-fun lt!1041822 () Regex!9365)

(declare-fun call!201604 () Bool)

(declare-fun bm!201599 () Bool)

(declare-fun lt!1041824 () Regex!9365)

(declare-fun c!493778 () Bool)

(assert (=> bm!201599 (= call!201604 (isEmptyLang!455 (ite c!493778 lt!1041824 lt!1041822)))))

(declare-fun b!3000642 () Bool)

(declare-fun e!1885046 () Regex!9365)

(assert (=> b!3000642 (= e!1885046 EmptyExpr!9365)))

(declare-fun b!3000643 () Bool)

(declare-fun e!1885038 () Regex!9365)

(assert (=> b!3000643 (= e!1885046 e!1885038)))

(declare-fun c!493782 () Bool)

(assert (=> b!3000643 (= c!493782 ((_ is Star!9365) (ite c!493581 (reg!9694 (regTwo!19242 r!17423)) (ite c!493577 (regTwo!19243 (regTwo!19242 r!17423)) (regOne!19242 (regTwo!19242 r!17423))))))))

(declare-fun b!3000644 () Bool)

(declare-fun e!1885044 () Regex!9365)

(declare-fun e!1885045 () Regex!9365)

(assert (=> b!3000644 (= e!1885044 e!1885045)))

(declare-fun c!493774 () Bool)

(assert (=> b!3000644 (= c!493774 ((_ is ElementMatch!9365) (ite c!493581 (reg!9694 (regTwo!19242 r!17423)) (ite c!493577 (regTwo!19243 (regTwo!19242 r!17423)) (regOne!19242 (regTwo!19242 r!17423))))))))

(declare-fun b!3000645 () Bool)

(declare-fun e!1885036 () Regex!9365)

(declare-fun lt!1041821 () Regex!9365)

(assert (=> b!3000645 (= e!1885036 (Star!9365 lt!1041821))))

(declare-fun b!3000646 () Bool)

(declare-fun e!1885043 () Regex!9365)

(declare-fun lt!1041820 () Regex!9365)

(assert (=> b!3000646 (= e!1885043 (Concat!14686 lt!1041822 lt!1041820))))

(declare-fun bm!201600 () Bool)

(declare-fun call!201609 () Bool)

(declare-fun call!201605 () Bool)

(assert (=> bm!201600 (= call!201609 call!201605)))

(declare-fun b!3000647 () Bool)

(declare-fun e!1885034 () Regex!9365)

(assert (=> b!3000647 (= e!1885034 EmptyLang!9365)))

(declare-fun b!3000648 () Bool)

(declare-fun e!1885039 () Regex!9365)

(assert (=> b!3000648 (= e!1885039 lt!1041820)))

(declare-fun b!3000649 () Bool)

(assert (=> b!3000649 (= e!1885044 EmptyLang!9365)))

(declare-fun b!3000650 () Bool)

(declare-fun e!1885035 () Regex!9365)

(declare-fun lt!1041823 () Regex!9365)

(assert (=> b!3000650 (= e!1885035 lt!1041823)))

(declare-fun call!201607 () Bool)

(declare-fun bm!201601 () Bool)

(assert (=> bm!201601 (= call!201607 (isEmptyExpr!472 (ite c!493782 lt!1041821 lt!1041820)))))

(declare-fun b!3000652 () Bool)

(declare-fun e!1885041 () Regex!9365)

(assert (=> b!3000652 (= e!1885041 e!1885034)))

(declare-fun call!201608 () Regex!9365)

(assert (=> b!3000652 (= lt!1041822 call!201608)))

(declare-fun call!201606 () Regex!9365)

(assert (=> b!3000652 (= lt!1041820 call!201606)))

(declare-fun res!1236679 () Bool)

(assert (=> b!3000652 (= res!1236679 call!201604)))

(declare-fun e!1885042 () Bool)

(assert (=> b!3000652 (=> res!1236679 e!1885042)))

(declare-fun c!493777 () Bool)

(assert (=> b!3000652 (= c!493777 e!1885042)))

(declare-fun bm!201602 () Bool)

(assert (=> bm!201602 (= call!201606 (simplify!356 (ite c!493778 (regOne!19243 (ite c!493581 (reg!9694 (regTwo!19242 r!17423)) (ite c!493577 (regTwo!19243 (regTwo!19242 r!17423)) (regOne!19242 (regTwo!19242 r!17423))))) (regTwo!19242 (ite c!493581 (reg!9694 (regTwo!19242 r!17423)) (ite c!493577 (regTwo!19243 (regTwo!19242 r!17423)) (regOne!19242 (regTwo!19242 r!17423))))))))))

(declare-fun b!3000653 () Bool)

(declare-fun c!493775 () Bool)

(assert (=> b!3000653 (= c!493775 (isEmptyExpr!472 lt!1041822))))

(assert (=> b!3000653 (= e!1885034 e!1885039)))

(declare-fun b!3000654 () Bool)

(declare-fun e!1885047 () Regex!9365)

(assert (=> b!3000654 (= e!1885047 lt!1041824)))

(declare-fun call!201610 () Regex!9365)

(declare-fun bm!201603 () Bool)

(assert (=> bm!201603 (= call!201610 (simplify!356 (ite c!493782 (reg!9694 (ite c!493581 (reg!9694 (regTwo!19242 r!17423)) (ite c!493577 (regTwo!19243 (regTwo!19242 r!17423)) (regOne!19242 (regTwo!19242 r!17423))))) (ite c!493778 (regTwo!19243 (ite c!493581 (reg!9694 (regTwo!19242 r!17423)) (ite c!493577 (regTwo!19243 (regTwo!19242 r!17423)) (regOne!19242 (regTwo!19242 r!17423))))) (regOne!19242 (ite c!493581 (reg!9694 (regTwo!19242 r!17423)) (ite c!493577 (regTwo!19243 (regTwo!19242 r!17423)) (regOne!19242 (regTwo!19242 r!17423)))))))))))

(declare-fun b!3000655 () Bool)

(assert (=> b!3000655 (= e!1885036 EmptyExpr!9365)))

(declare-fun bm!201604 () Bool)

(assert (=> bm!201604 (= call!201605 (isEmptyLang!455 (ite c!493782 lt!1041821 (ite c!493778 lt!1041823 lt!1041820))))))

(declare-fun b!3000656 () Bool)

(assert (=> b!3000656 (= e!1885042 call!201609)))

(declare-fun b!3000657 () Bool)

(assert (=> b!3000657 (= c!493778 ((_ is Union!9365) (ite c!493581 (reg!9694 (regTwo!19242 r!17423)) (ite c!493577 (regTwo!19243 (regTwo!19242 r!17423)) (regOne!19242 (regTwo!19242 r!17423))))))))

(assert (=> b!3000657 (= e!1885038 e!1885041)))

(declare-fun bm!201605 () Bool)

(assert (=> bm!201605 (= call!201608 call!201610)))

(declare-fun b!3000658 () Bool)

(assert (=> b!3000658 (= e!1885045 (ite c!493581 (reg!9694 (regTwo!19242 r!17423)) (ite c!493577 (regTwo!19243 (regTwo!19242 r!17423)) (regOne!19242 (regTwo!19242 r!17423)))))))

(declare-fun b!3000659 () Bool)

(assert (=> b!3000659 (= e!1885035 (Union!9365 lt!1041823 lt!1041824))))

(declare-fun b!3000660 () Bool)

(declare-fun c!493779 () Bool)

(assert (=> b!3000660 (= c!493779 call!201604)))

(assert (=> b!3000660 (= e!1885047 e!1885035)))

(declare-fun b!3000661 () Bool)

(assert (=> b!3000661 (= e!1885041 e!1885047)))

(assert (=> b!3000661 (= lt!1041823 call!201606)))

(assert (=> b!3000661 (= lt!1041824 call!201608)))

(declare-fun c!493783 () Bool)

(assert (=> b!3000661 (= c!493783 call!201609)))

(declare-fun b!3000662 () Bool)

(assert (=> b!3000662 (= e!1885039 e!1885043)))

(declare-fun c!493781 () Bool)

(assert (=> b!3000662 (= c!493781 call!201607)))

(declare-fun b!3000663 () Bool)

(assert (=> b!3000663 (= e!1885043 lt!1041822)))

(declare-fun e!1885040 () Bool)

(declare-fun lt!1041819 () Regex!9365)

(declare-fun b!3000664 () Bool)

(assert (=> b!3000664 (= e!1885040 (= (nullable!3028 lt!1041819) (nullable!3028 (ite c!493581 (reg!9694 (regTwo!19242 r!17423)) (ite c!493577 (regTwo!19243 (regTwo!19242 r!17423)) (regOne!19242 (regTwo!19242 r!17423)))))))))

(declare-fun b!3000665 () Bool)

(declare-fun c!493776 () Bool)

(declare-fun e!1885037 () Bool)

(assert (=> b!3000665 (= c!493776 e!1885037)))

(declare-fun res!1236680 () Bool)

(assert (=> b!3000665 (=> res!1236680 e!1885037)))

(assert (=> b!3000665 (= res!1236680 call!201605)))

(assert (=> b!3000665 (= lt!1041821 call!201610)))

(assert (=> b!3000665 (= e!1885038 e!1885036)))

(declare-fun b!3000666 () Bool)

(assert (=> b!3000666 (= e!1885037 call!201607)))

(declare-fun d!846212 () Bool)

(assert (=> d!846212 e!1885040))

(declare-fun res!1236681 () Bool)

(assert (=> d!846212 (=> (not res!1236681) (not e!1885040))))

(assert (=> d!846212 (= res!1236681 (validRegex!4098 lt!1041819))))

(assert (=> d!846212 (= lt!1041819 e!1885044)))

(declare-fun c!493780 () Bool)

(assert (=> d!846212 (= c!493780 ((_ is EmptyLang!9365) (ite c!493581 (reg!9694 (regTwo!19242 r!17423)) (ite c!493577 (regTwo!19243 (regTwo!19242 r!17423)) (regOne!19242 (regTwo!19242 r!17423))))))))

(assert (=> d!846212 (validRegex!4098 (ite c!493581 (reg!9694 (regTwo!19242 r!17423)) (ite c!493577 (regTwo!19243 (regTwo!19242 r!17423)) (regOne!19242 (regTwo!19242 r!17423)))))))

(assert (=> d!846212 (= (simplify!356 (ite c!493581 (reg!9694 (regTwo!19242 r!17423)) (ite c!493577 (regTwo!19243 (regTwo!19242 r!17423)) (regOne!19242 (regTwo!19242 r!17423))))) lt!1041819)))

(declare-fun b!3000651 () Bool)

(declare-fun c!493784 () Bool)

(assert (=> b!3000651 (= c!493784 ((_ is EmptyExpr!9365) (ite c!493581 (reg!9694 (regTwo!19242 r!17423)) (ite c!493577 (regTwo!19243 (regTwo!19242 r!17423)) (regOne!19242 (regTwo!19242 r!17423))))))))

(assert (=> b!3000651 (= e!1885045 e!1885046)))

(assert (= (and d!846212 c!493780) b!3000649))

(assert (= (and d!846212 (not c!493780)) b!3000644))

(assert (= (and b!3000644 c!493774) b!3000658))

(assert (= (and b!3000644 (not c!493774)) b!3000651))

(assert (= (and b!3000651 c!493784) b!3000642))

(assert (= (and b!3000651 (not c!493784)) b!3000643))

(assert (= (and b!3000643 c!493782) b!3000665))

(assert (= (and b!3000643 (not c!493782)) b!3000657))

(assert (= (and b!3000665 (not res!1236680)) b!3000666))

(assert (= (and b!3000665 c!493776) b!3000655))

(assert (= (and b!3000665 (not c!493776)) b!3000645))

(assert (= (and b!3000657 c!493778) b!3000661))

(assert (= (and b!3000657 (not c!493778)) b!3000652))

(assert (= (and b!3000661 c!493783) b!3000654))

(assert (= (and b!3000661 (not c!493783)) b!3000660))

(assert (= (and b!3000660 c!493779) b!3000650))

(assert (= (and b!3000660 (not c!493779)) b!3000659))

(assert (= (and b!3000652 (not res!1236679)) b!3000656))

(assert (= (and b!3000652 c!493777) b!3000647))

(assert (= (and b!3000652 (not c!493777)) b!3000653))

(assert (= (and b!3000653 c!493775) b!3000648))

(assert (= (and b!3000653 (not c!493775)) b!3000662))

(assert (= (and b!3000662 c!493781) b!3000663))

(assert (= (and b!3000662 (not c!493781)) b!3000646))

(assert (= (or b!3000661 b!3000652) bm!201602))

(assert (= (or b!3000661 b!3000652) bm!201605))

(assert (= (or b!3000661 b!3000656) bm!201600))

(assert (= (or b!3000660 b!3000652) bm!201599))

(assert (= (or b!3000666 b!3000662) bm!201601))

(assert (= (or b!3000665 bm!201605) bm!201603))

(assert (= (or b!3000665 bm!201600) bm!201604))

(assert (= (and d!846212 res!1236681) b!3000664))

(declare-fun m!3352087 () Bool)

(assert (=> bm!201599 m!3352087))

(declare-fun m!3352089 () Bool)

(assert (=> bm!201602 m!3352089))

(declare-fun m!3352091 () Bool)

(assert (=> bm!201601 m!3352091))

(declare-fun m!3352093 () Bool)

(assert (=> d!846212 m!3352093))

(declare-fun m!3352095 () Bool)

(assert (=> d!846212 m!3352095))

(declare-fun m!3352097 () Bool)

(assert (=> bm!201603 m!3352097))

(declare-fun m!3352099 () Bool)

(assert (=> bm!201604 m!3352099))

(declare-fun m!3352101 () Bool)

(assert (=> b!3000653 m!3352101))

(declare-fun m!3352103 () Bool)

(assert (=> b!3000664 m!3352103))

(declare-fun m!3352105 () Bool)

(assert (=> b!3000664 m!3352105))

(assert (=> bm!201454 d!846212))

(declare-fun d!846214 () Bool)

(assert (not d!846214))

(assert (=> b!2999812 d!846214))

(declare-fun d!846216 () Bool)

(assert (not d!846216))

(assert (=> b!2999812 d!846216))

(assert (=> b!2999812 d!846128))

(assert (=> b!2999812 d!846204))

(declare-fun bs!528357 () Bool)

(declare-fun b!3000673 () Bool)

(assert (= bs!528357 (and b!3000673 b!3000247)))

(declare-fun lambda!112081 () Int)

(assert (=> bs!528357 (= (and (= (reg!9694 (regTwo!19243 r!17423)) (reg!9694 r!17423)) (= (regTwo!19243 r!17423) r!17423)) (= lambda!112081 lambda!112077))))

(declare-fun bs!528358 () Bool)

(assert (= bs!528358 (and b!3000673 b!3000246)))

(assert (=> bs!528358 (not (= lambda!112081 lambda!112078))))

(declare-fun bs!528359 () Bool)

(assert (= bs!528359 (and b!3000673 b!3000559)))

(assert (=> bs!528359 (= (and (= (reg!9694 (regTwo!19243 r!17423)) (reg!9694 (regOne!19243 r!17423))) (= (regTwo!19243 r!17423) (regOne!19243 r!17423))) (= lambda!112081 lambda!112079))))

(declare-fun bs!528360 () Bool)

(assert (= bs!528360 (and b!3000673 b!3000558)))

(assert (=> bs!528360 (not (= lambda!112081 lambda!112080))))

(assert (=> b!3000673 true))

(assert (=> b!3000673 true))

(declare-fun bs!528361 () Bool)

(declare-fun b!3000672 () Bool)

(assert (= bs!528361 (and b!3000672 b!3000247)))

(declare-fun lambda!112082 () Int)

(assert (=> bs!528361 (not (= lambda!112082 lambda!112077))))

(declare-fun bs!528362 () Bool)

(assert (= bs!528362 (and b!3000672 b!3000673)))

(assert (=> bs!528362 (not (= lambda!112082 lambda!112081))))

(declare-fun bs!528363 () Bool)

(assert (= bs!528363 (and b!3000672 b!3000559)))

(assert (=> bs!528363 (not (= lambda!112082 lambda!112079))))

(declare-fun bs!528364 () Bool)

(assert (= bs!528364 (and b!3000672 b!3000246)))

(assert (=> bs!528364 (= (and (= (regOne!19242 (regTwo!19243 r!17423)) (regOne!19242 r!17423)) (= (regTwo!19242 (regTwo!19243 r!17423)) (regTwo!19242 r!17423))) (= lambda!112082 lambda!112078))))

(declare-fun bs!528365 () Bool)

(assert (= bs!528365 (and b!3000672 b!3000558)))

(assert (=> bs!528365 (= (and (= (regOne!19242 (regTwo!19243 r!17423)) (regOne!19242 (regOne!19243 r!17423))) (= (regTwo!19242 (regTwo!19243 r!17423)) (regTwo!19242 (regOne!19243 r!17423)))) (= lambda!112082 lambda!112080))))

(assert (=> b!3000672 true))

(assert (=> b!3000672 true))

(declare-fun b!3000667 () Bool)

(declare-fun e!1885054 () Bool)

(declare-fun call!201611 () Bool)

(assert (=> b!3000667 (= e!1885054 call!201611)))

(declare-fun bm!201606 () Bool)

(assert (=> bm!201606 (= call!201611 (isEmpty!19380 s!11993))))

(declare-fun b!3000668 () Bool)

(declare-fun e!1885049 () Bool)

(assert (=> b!3000668 (= e!1885049 (matchRSpec!1502 (regTwo!19243 (regTwo!19243 r!17423)) s!11993))))

(declare-fun b!3000669 () Bool)

(declare-fun e!1885053 () Bool)

(assert (=> b!3000669 (= e!1885053 (= s!11993 (Cons!35106 (c!493509 (regTwo!19243 r!17423)) Nil!35106)))))

(declare-fun d!846218 () Bool)

(declare-fun c!493786 () Bool)

(assert (=> d!846218 (= c!493786 ((_ is EmptyExpr!9365) (regTwo!19243 r!17423)))))

(assert (=> d!846218 (= (matchRSpec!1502 (regTwo!19243 r!17423) s!11993) e!1885054)))

(declare-fun b!3000670 () Bool)

(declare-fun e!1885048 () Bool)

(assert (=> b!3000670 (= e!1885054 e!1885048)))

(declare-fun res!1236682 () Bool)

(assert (=> b!3000670 (= res!1236682 (not ((_ is EmptyLang!9365) (regTwo!19243 r!17423))))))

(assert (=> b!3000670 (=> (not res!1236682) (not e!1885048))))

(declare-fun c!493788 () Bool)

(declare-fun bm!201607 () Bool)

(declare-fun call!201612 () Bool)

(assert (=> bm!201607 (= call!201612 (Exists!1638 (ite c!493788 lambda!112081 lambda!112082)))))

(declare-fun b!3000671 () Bool)

(declare-fun e!1885050 () Bool)

(assert (=> b!3000671 (= e!1885050 e!1885049)))

(declare-fun res!1236683 () Bool)

(assert (=> b!3000671 (= res!1236683 (matchRSpec!1502 (regOne!19243 (regTwo!19243 r!17423)) s!11993))))

(assert (=> b!3000671 (=> res!1236683 e!1885049)))

(declare-fun e!1885052 () Bool)

(assert (=> b!3000672 (= e!1885052 call!201612)))

(declare-fun e!1885051 () Bool)

(assert (=> b!3000673 (= e!1885051 call!201612)))

(declare-fun b!3000674 () Bool)

(declare-fun c!493787 () Bool)

(assert (=> b!3000674 (= c!493787 ((_ is Union!9365) (regTwo!19243 r!17423)))))

(assert (=> b!3000674 (= e!1885053 e!1885050)))

(declare-fun b!3000675 () Bool)

(declare-fun c!493785 () Bool)

(assert (=> b!3000675 (= c!493785 ((_ is ElementMatch!9365) (regTwo!19243 r!17423)))))

(assert (=> b!3000675 (= e!1885048 e!1885053)))

(declare-fun b!3000676 () Bool)

(declare-fun res!1236684 () Bool)

(assert (=> b!3000676 (=> res!1236684 e!1885051)))

(assert (=> b!3000676 (= res!1236684 call!201611)))

(assert (=> b!3000676 (= e!1885052 e!1885051)))

(declare-fun b!3000677 () Bool)

(assert (=> b!3000677 (= e!1885050 e!1885052)))

(assert (=> b!3000677 (= c!493788 ((_ is Star!9365) (regTwo!19243 r!17423)))))

(assert (= (and d!846218 c!493786) b!3000667))

(assert (= (and d!846218 (not c!493786)) b!3000670))

(assert (= (and b!3000670 res!1236682) b!3000675))

(assert (= (and b!3000675 c!493785) b!3000669))

(assert (= (and b!3000675 (not c!493785)) b!3000674))

(assert (= (and b!3000674 c!493787) b!3000671))

(assert (= (and b!3000674 (not c!493787)) b!3000677))

(assert (= (and b!3000671 (not res!1236683)) b!3000668))

(assert (= (and b!3000677 c!493788) b!3000676))

(assert (= (and b!3000677 (not c!493788)) b!3000672))

(assert (= (and b!3000676 (not res!1236684)) b!3000673))

(assert (= (or b!3000673 b!3000672) bm!201607))

(assert (= (or b!3000667 b!3000676) bm!201606))

(assert (=> bm!201606 m!3351683))

(declare-fun m!3352107 () Bool)

(assert (=> b!3000668 m!3352107))

(declare-fun m!3352109 () Bool)

(assert (=> bm!201607 m!3352109))

(declare-fun m!3352111 () Bool)

(assert (=> b!3000671 m!3352111))

(assert (=> b!3000242 d!846218))

(declare-fun d!846220 () Bool)

(assert (=> d!846220 (= (nullable!3028 lt!1041750) (nullableFct!863 lt!1041750))))

(declare-fun bs!528366 () Bool)

(assert (= bs!528366 d!846220))

(declare-fun m!3352113 () Bool)

(assert (=> bs!528366 m!3352113))

(assert (=> b!3000018 d!846220))

(assert (=> b!3000018 d!846118))

(declare-fun d!846222 () Bool)

(assert (=> d!846222 (= (isEmptyExpr!472 lt!1041747) ((_ is EmptyExpr!9365) lt!1041747))))

(assert (=> b!2999982 d!846222))

(assert (=> b!2999810 d!846202))

(assert (=> b!2999810 d!846204))

(declare-fun e!1885055 () Bool)

(assert (=> b!3000308 (= tp!953629 e!1885055)))

(declare-fun b!3000680 () Bool)

(declare-fun tp!953655 () Bool)

(assert (=> b!3000680 (= e!1885055 tp!953655)))

(declare-fun b!3000679 () Bool)

(declare-fun tp!953657 () Bool)

(declare-fun tp!953658 () Bool)

(assert (=> b!3000679 (= e!1885055 (and tp!953657 tp!953658))))

(declare-fun b!3000681 () Bool)

(declare-fun tp!953656 () Bool)

(declare-fun tp!953654 () Bool)

(assert (=> b!3000681 (= e!1885055 (and tp!953656 tp!953654))))

(declare-fun b!3000678 () Bool)

(assert (=> b!3000678 (= e!1885055 tp_is_empty!16293)))

(assert (= (and b!3000308 ((_ is ElementMatch!9365) (regOne!19242 (reg!9694 r!17423)))) b!3000678))

(assert (= (and b!3000308 ((_ is Concat!14686) (regOne!19242 (reg!9694 r!17423)))) b!3000679))

(assert (= (and b!3000308 ((_ is Star!9365) (regOne!19242 (reg!9694 r!17423)))) b!3000680))

(assert (= (and b!3000308 ((_ is Union!9365) (regOne!19242 (reg!9694 r!17423)))) b!3000681))

(declare-fun e!1885061 () Bool)

(assert (=> b!3000308 (= tp!953630 e!1885061)))

(declare-fun b!3000692 () Bool)

(declare-fun tp!953660 () Bool)

(assert (=> b!3000692 (= e!1885061 tp!953660)))

(declare-fun b!3000690 () Bool)

(declare-fun tp!953662 () Bool)

(declare-fun tp!953663 () Bool)

(assert (=> b!3000690 (= e!1885061 (and tp!953662 tp!953663))))

(declare-fun b!3000694 () Bool)

(declare-fun tp!953661 () Bool)

(declare-fun tp!953659 () Bool)

(assert (=> b!3000694 (= e!1885061 (and tp!953661 tp!953659))))

(declare-fun b!3000688 () Bool)

(assert (=> b!3000688 (= e!1885061 tp_is_empty!16293)))

(assert (= (and b!3000308 ((_ is ElementMatch!9365) (regTwo!19242 (reg!9694 r!17423)))) b!3000688))

(assert (= (and b!3000308 ((_ is Concat!14686) (regTwo!19242 (reg!9694 r!17423)))) b!3000690))

(assert (= (and b!3000308 ((_ is Star!9365) (regTwo!19242 (reg!9694 r!17423)))) b!3000692))

(assert (= (and b!3000308 ((_ is Union!9365) (regTwo!19242 (reg!9694 r!17423)))) b!3000694))

(declare-fun e!1885062 () Bool)

(assert (=> b!3000329 (= tp!953652 e!1885062)))

(declare-fun b!3000698 () Bool)

(declare-fun tp!953665 () Bool)

(assert (=> b!3000698 (= e!1885062 tp!953665)))

(declare-fun b!3000697 () Bool)

(declare-fun tp!953667 () Bool)

(declare-fun tp!953668 () Bool)

(assert (=> b!3000697 (= e!1885062 (and tp!953667 tp!953668))))

(declare-fun b!3000699 () Bool)

(declare-fun tp!953666 () Bool)

(declare-fun tp!953664 () Bool)

(assert (=> b!3000699 (= e!1885062 (and tp!953666 tp!953664))))

(declare-fun b!3000696 () Bool)

(assert (=> b!3000696 (= e!1885062 tp_is_empty!16293)))

(assert (= (and b!3000329 ((_ is ElementMatch!9365) (regOne!19242 (regTwo!19242 r!17423)))) b!3000696))

(assert (= (and b!3000329 ((_ is Concat!14686) (regOne!19242 (regTwo!19242 r!17423)))) b!3000697))

(assert (= (and b!3000329 ((_ is Star!9365) (regOne!19242 (regTwo!19242 r!17423)))) b!3000698))

(assert (= (and b!3000329 ((_ is Union!9365) (regOne!19242 (regTwo!19242 r!17423)))) b!3000699))

(declare-fun e!1885063 () Bool)

(assert (=> b!3000329 (= tp!953653 e!1885063)))

(declare-fun b!3000702 () Bool)

(declare-fun tp!953670 () Bool)

(assert (=> b!3000702 (= e!1885063 tp!953670)))

(declare-fun b!3000701 () Bool)

(declare-fun tp!953672 () Bool)

(declare-fun tp!953673 () Bool)

(assert (=> b!3000701 (= e!1885063 (and tp!953672 tp!953673))))

(declare-fun b!3000703 () Bool)

(declare-fun tp!953671 () Bool)

(declare-fun tp!953669 () Bool)

(assert (=> b!3000703 (= e!1885063 (and tp!953671 tp!953669))))

(declare-fun b!3000700 () Bool)

(assert (=> b!3000700 (= e!1885063 tp_is_empty!16293)))

(assert (= (and b!3000329 ((_ is ElementMatch!9365) (regTwo!19242 (regTwo!19242 r!17423)))) b!3000700))

(assert (= (and b!3000329 ((_ is Concat!14686) (regTwo!19242 (regTwo!19242 r!17423)))) b!3000701))

(assert (= (and b!3000329 ((_ is Star!9365) (regTwo!19242 (regTwo!19242 r!17423)))) b!3000702))

(assert (= (and b!3000329 ((_ is Union!9365) (regTwo!19242 (regTwo!19242 r!17423)))) b!3000703))

(declare-fun e!1885064 () Bool)

(assert (=> b!3000309 (= tp!953627 e!1885064)))

(declare-fun b!3000706 () Bool)

(declare-fun tp!953675 () Bool)

(assert (=> b!3000706 (= e!1885064 tp!953675)))

(declare-fun b!3000705 () Bool)

(declare-fun tp!953677 () Bool)

(declare-fun tp!953678 () Bool)

(assert (=> b!3000705 (= e!1885064 (and tp!953677 tp!953678))))

(declare-fun b!3000707 () Bool)

(declare-fun tp!953676 () Bool)

(declare-fun tp!953674 () Bool)

(assert (=> b!3000707 (= e!1885064 (and tp!953676 tp!953674))))

(declare-fun b!3000704 () Bool)

(assert (=> b!3000704 (= e!1885064 tp_is_empty!16293)))

(assert (= (and b!3000309 ((_ is ElementMatch!9365) (reg!9694 (reg!9694 r!17423)))) b!3000704))

(assert (= (and b!3000309 ((_ is Concat!14686) (reg!9694 (reg!9694 r!17423)))) b!3000705))

(assert (= (and b!3000309 ((_ is Star!9365) (reg!9694 (reg!9694 r!17423)))) b!3000706))

(assert (= (and b!3000309 ((_ is Union!9365) (reg!9694 (reg!9694 r!17423)))) b!3000707))

(declare-fun e!1885065 () Bool)

(assert (=> b!3000319 (= tp!953636 e!1885065)))

(declare-fun b!3000710 () Bool)

(declare-fun tp!953680 () Bool)

(assert (=> b!3000710 (= e!1885065 tp!953680)))

(declare-fun b!3000709 () Bool)

(declare-fun tp!953682 () Bool)

(declare-fun tp!953683 () Bool)

(assert (=> b!3000709 (= e!1885065 (and tp!953682 tp!953683))))

(declare-fun b!3000711 () Bool)

(declare-fun tp!953681 () Bool)

(declare-fun tp!953679 () Bool)

(assert (=> b!3000711 (= e!1885065 (and tp!953681 tp!953679))))

(declare-fun b!3000708 () Bool)

(assert (=> b!3000708 (= e!1885065 tp_is_empty!16293)))

(assert (= (and b!3000319 ((_ is ElementMatch!9365) (regOne!19243 (regOne!19243 r!17423)))) b!3000708))

(assert (= (and b!3000319 ((_ is Concat!14686) (regOne!19243 (regOne!19243 r!17423)))) b!3000709))

(assert (= (and b!3000319 ((_ is Star!9365) (regOne!19243 (regOne!19243 r!17423)))) b!3000710))

(assert (= (and b!3000319 ((_ is Union!9365) (regOne!19243 (regOne!19243 r!17423)))) b!3000711))

(declare-fun e!1885066 () Bool)

(assert (=> b!3000319 (= tp!953634 e!1885066)))

(declare-fun b!3000714 () Bool)

(declare-fun tp!953685 () Bool)

(assert (=> b!3000714 (= e!1885066 tp!953685)))

(declare-fun b!3000713 () Bool)

(declare-fun tp!953687 () Bool)

(declare-fun tp!953688 () Bool)

(assert (=> b!3000713 (= e!1885066 (and tp!953687 tp!953688))))

(declare-fun b!3000715 () Bool)

(declare-fun tp!953686 () Bool)

(declare-fun tp!953684 () Bool)

(assert (=> b!3000715 (= e!1885066 (and tp!953686 tp!953684))))

(declare-fun b!3000712 () Bool)

(assert (=> b!3000712 (= e!1885066 tp_is_empty!16293)))

(assert (= (and b!3000319 ((_ is ElementMatch!9365) (regTwo!19243 (regOne!19243 r!17423)))) b!3000712))

(assert (= (and b!3000319 ((_ is Concat!14686) (regTwo!19243 (regOne!19243 r!17423)))) b!3000713))

(assert (= (and b!3000319 ((_ is Star!9365) (regTwo!19243 (regOne!19243 r!17423)))) b!3000714))

(assert (= (and b!3000319 ((_ is Union!9365) (regTwo!19243 (regOne!19243 r!17423)))) b!3000715))

(declare-fun e!1885067 () Bool)

(assert (=> b!3000318 (= tp!953635 e!1885067)))

(declare-fun b!3000718 () Bool)

(declare-fun tp!953690 () Bool)

(assert (=> b!3000718 (= e!1885067 tp!953690)))

(declare-fun b!3000717 () Bool)

(declare-fun tp!953692 () Bool)

(declare-fun tp!953693 () Bool)

(assert (=> b!3000717 (= e!1885067 (and tp!953692 tp!953693))))

(declare-fun b!3000719 () Bool)

(declare-fun tp!953691 () Bool)

(declare-fun tp!953689 () Bool)

(assert (=> b!3000719 (= e!1885067 (and tp!953691 tp!953689))))

(declare-fun b!3000716 () Bool)

(assert (=> b!3000716 (= e!1885067 tp_is_empty!16293)))

(assert (= (and b!3000318 ((_ is ElementMatch!9365) (reg!9694 (regOne!19243 r!17423)))) b!3000716))

(assert (= (and b!3000318 ((_ is Concat!14686) (reg!9694 (regOne!19243 r!17423)))) b!3000717))

(assert (= (and b!3000318 ((_ is Star!9365) (reg!9694 (regOne!19243 r!17423)))) b!3000718))

(assert (= (and b!3000318 ((_ is Union!9365) (reg!9694 (regOne!19243 r!17423)))) b!3000719))

(declare-fun e!1885068 () Bool)

(assert (=> b!3000323 (= tp!953641 e!1885068)))

(declare-fun b!3000722 () Bool)

(declare-fun tp!953695 () Bool)

(assert (=> b!3000722 (= e!1885068 tp!953695)))

(declare-fun b!3000721 () Bool)

(declare-fun tp!953697 () Bool)

(declare-fun tp!953698 () Bool)

(assert (=> b!3000721 (= e!1885068 (and tp!953697 tp!953698))))

(declare-fun b!3000723 () Bool)

(declare-fun tp!953696 () Bool)

(declare-fun tp!953694 () Bool)

(assert (=> b!3000723 (= e!1885068 (and tp!953696 tp!953694))))

(declare-fun b!3000720 () Bool)

(assert (=> b!3000720 (= e!1885068 tp_is_empty!16293)))

(assert (= (and b!3000323 ((_ is ElementMatch!9365) (regOne!19243 (regTwo!19243 r!17423)))) b!3000720))

(assert (= (and b!3000323 ((_ is Concat!14686) (regOne!19243 (regTwo!19243 r!17423)))) b!3000721))

(assert (= (and b!3000323 ((_ is Star!9365) (regOne!19243 (regTwo!19243 r!17423)))) b!3000722))

(assert (= (and b!3000323 ((_ is Union!9365) (regOne!19243 (regTwo!19243 r!17423)))) b!3000723))

(declare-fun e!1885069 () Bool)

(assert (=> b!3000323 (= tp!953639 e!1885069)))

(declare-fun b!3000726 () Bool)

(declare-fun tp!953700 () Bool)

(assert (=> b!3000726 (= e!1885069 tp!953700)))

(declare-fun b!3000725 () Bool)

(declare-fun tp!953702 () Bool)

(declare-fun tp!953703 () Bool)

(assert (=> b!3000725 (= e!1885069 (and tp!953702 tp!953703))))

(declare-fun b!3000727 () Bool)

(declare-fun tp!953701 () Bool)

(declare-fun tp!953699 () Bool)

(assert (=> b!3000727 (= e!1885069 (and tp!953701 tp!953699))))

(declare-fun b!3000724 () Bool)

(assert (=> b!3000724 (= e!1885069 tp_is_empty!16293)))

(assert (= (and b!3000323 ((_ is ElementMatch!9365) (regTwo!19243 (regTwo!19243 r!17423)))) b!3000724))

(assert (= (and b!3000323 ((_ is Concat!14686) (regTwo!19243 (regTwo!19243 r!17423)))) b!3000725))

(assert (= (and b!3000323 ((_ is Star!9365) (regTwo!19243 (regTwo!19243 r!17423)))) b!3000726))

(assert (= (and b!3000323 ((_ is Union!9365) (regTwo!19243 (regTwo!19243 r!17423)))) b!3000727))

(declare-fun b!3000728 () Bool)

(declare-fun e!1885070 () Bool)

(declare-fun tp!953704 () Bool)

(assert (=> b!3000728 (= e!1885070 (and tp_is_empty!16293 tp!953704))))

(assert (=> b!3000315 (= tp!953633 e!1885070)))

(assert (= (and b!3000315 ((_ is Cons!35106) (t!234295 (t!234295 s!11993)))) b!3000728))

(declare-fun e!1885071 () Bool)

(assert (=> b!3000330 (= tp!953650 e!1885071)))

(declare-fun b!3000731 () Bool)

(declare-fun tp!953706 () Bool)

(assert (=> b!3000731 (= e!1885071 tp!953706)))

(declare-fun b!3000730 () Bool)

(declare-fun tp!953708 () Bool)

(declare-fun tp!953709 () Bool)

(assert (=> b!3000730 (= e!1885071 (and tp!953708 tp!953709))))

(declare-fun b!3000732 () Bool)

(declare-fun tp!953707 () Bool)

(declare-fun tp!953705 () Bool)

(assert (=> b!3000732 (= e!1885071 (and tp!953707 tp!953705))))

(declare-fun b!3000729 () Bool)

(assert (=> b!3000729 (= e!1885071 tp_is_empty!16293)))

(assert (= (and b!3000330 ((_ is ElementMatch!9365) (reg!9694 (regTwo!19242 r!17423)))) b!3000729))

(assert (= (and b!3000330 ((_ is Concat!14686) (reg!9694 (regTwo!19242 r!17423)))) b!3000730))

(assert (= (and b!3000330 ((_ is Star!9365) (reg!9694 (regTwo!19242 r!17423)))) b!3000731))

(assert (= (and b!3000330 ((_ is Union!9365) (reg!9694 (regTwo!19242 r!17423)))) b!3000732))

(declare-fun e!1885072 () Bool)

(assert (=> b!3000321 (= tp!953642 e!1885072)))

(declare-fun b!3000735 () Bool)

(declare-fun tp!953711 () Bool)

(assert (=> b!3000735 (= e!1885072 tp!953711)))

(declare-fun b!3000734 () Bool)

(declare-fun tp!953713 () Bool)

(declare-fun tp!953714 () Bool)

(assert (=> b!3000734 (= e!1885072 (and tp!953713 tp!953714))))

(declare-fun b!3000736 () Bool)

(declare-fun tp!953712 () Bool)

(declare-fun tp!953710 () Bool)

(assert (=> b!3000736 (= e!1885072 (and tp!953712 tp!953710))))

(declare-fun b!3000733 () Bool)

(assert (=> b!3000733 (= e!1885072 tp_is_empty!16293)))

(assert (= (and b!3000321 ((_ is ElementMatch!9365) (regOne!19242 (regTwo!19243 r!17423)))) b!3000733))

(assert (= (and b!3000321 ((_ is Concat!14686) (regOne!19242 (regTwo!19243 r!17423)))) b!3000734))

(assert (= (and b!3000321 ((_ is Star!9365) (regOne!19242 (regTwo!19243 r!17423)))) b!3000735))

(assert (= (and b!3000321 ((_ is Union!9365) (regOne!19242 (regTwo!19243 r!17423)))) b!3000736))

(declare-fun e!1885073 () Bool)

(assert (=> b!3000321 (= tp!953643 e!1885073)))

(declare-fun b!3000739 () Bool)

(declare-fun tp!953716 () Bool)

(assert (=> b!3000739 (= e!1885073 tp!953716)))

(declare-fun b!3000738 () Bool)

(declare-fun tp!953718 () Bool)

(declare-fun tp!953719 () Bool)

(assert (=> b!3000738 (= e!1885073 (and tp!953718 tp!953719))))

(declare-fun b!3000740 () Bool)

(declare-fun tp!953717 () Bool)

(declare-fun tp!953715 () Bool)

(assert (=> b!3000740 (= e!1885073 (and tp!953717 tp!953715))))

(declare-fun b!3000737 () Bool)

(assert (=> b!3000737 (= e!1885073 tp_is_empty!16293)))

(assert (= (and b!3000321 ((_ is ElementMatch!9365) (regTwo!19242 (regTwo!19243 r!17423)))) b!3000737))

(assert (= (and b!3000321 ((_ is Concat!14686) (regTwo!19242 (regTwo!19243 r!17423)))) b!3000738))

(assert (= (and b!3000321 ((_ is Star!9365) (regTwo!19242 (regTwo!19243 r!17423)))) b!3000739))

(assert (= (and b!3000321 ((_ is Union!9365) (regTwo!19242 (regTwo!19243 r!17423)))) b!3000740))

(declare-fun e!1885074 () Bool)

(assert (=> b!3000310 (= tp!953628 e!1885074)))

(declare-fun b!3000743 () Bool)

(declare-fun tp!953721 () Bool)

(assert (=> b!3000743 (= e!1885074 tp!953721)))

(declare-fun b!3000742 () Bool)

(declare-fun tp!953723 () Bool)

(declare-fun tp!953724 () Bool)

(assert (=> b!3000742 (= e!1885074 (and tp!953723 tp!953724))))

(declare-fun b!3000744 () Bool)

(declare-fun tp!953722 () Bool)

(declare-fun tp!953720 () Bool)

(assert (=> b!3000744 (= e!1885074 (and tp!953722 tp!953720))))

(declare-fun b!3000741 () Bool)

(assert (=> b!3000741 (= e!1885074 tp_is_empty!16293)))

(assert (= (and b!3000310 ((_ is ElementMatch!9365) (regOne!19243 (reg!9694 r!17423)))) b!3000741))

(assert (= (and b!3000310 ((_ is Concat!14686) (regOne!19243 (reg!9694 r!17423)))) b!3000742))

(assert (= (and b!3000310 ((_ is Star!9365) (regOne!19243 (reg!9694 r!17423)))) b!3000743))

(assert (= (and b!3000310 ((_ is Union!9365) (regOne!19243 (reg!9694 r!17423)))) b!3000744))

(declare-fun e!1885075 () Bool)

(assert (=> b!3000310 (= tp!953626 e!1885075)))

(declare-fun b!3000747 () Bool)

(declare-fun tp!953726 () Bool)

(assert (=> b!3000747 (= e!1885075 tp!953726)))

(declare-fun b!3000746 () Bool)

(declare-fun tp!953728 () Bool)

(declare-fun tp!953729 () Bool)

(assert (=> b!3000746 (= e!1885075 (and tp!953728 tp!953729))))

(declare-fun b!3000748 () Bool)

(declare-fun tp!953727 () Bool)

(declare-fun tp!953725 () Bool)

(assert (=> b!3000748 (= e!1885075 (and tp!953727 tp!953725))))

(declare-fun b!3000745 () Bool)

(assert (=> b!3000745 (= e!1885075 tp_is_empty!16293)))

(assert (= (and b!3000310 ((_ is ElementMatch!9365) (regTwo!19243 (reg!9694 r!17423)))) b!3000745))

(assert (= (and b!3000310 ((_ is Concat!14686) (regTwo!19243 (reg!9694 r!17423)))) b!3000746))

(assert (= (and b!3000310 ((_ is Star!9365) (regTwo!19243 (reg!9694 r!17423)))) b!3000747))

(assert (= (and b!3000310 ((_ is Union!9365) (regTwo!19243 (reg!9694 r!17423)))) b!3000748))

(declare-fun e!1885076 () Bool)

(assert (=> b!3000325 (= tp!953647 e!1885076)))

(declare-fun b!3000751 () Bool)

(declare-fun tp!953731 () Bool)

(assert (=> b!3000751 (= e!1885076 tp!953731)))

(declare-fun b!3000750 () Bool)

(declare-fun tp!953733 () Bool)

(declare-fun tp!953734 () Bool)

(assert (=> b!3000750 (= e!1885076 (and tp!953733 tp!953734))))

(declare-fun b!3000752 () Bool)

(declare-fun tp!953732 () Bool)

(declare-fun tp!953730 () Bool)

(assert (=> b!3000752 (= e!1885076 (and tp!953732 tp!953730))))

(declare-fun b!3000749 () Bool)

(assert (=> b!3000749 (= e!1885076 tp_is_empty!16293)))

(assert (= (and b!3000325 ((_ is ElementMatch!9365) (regOne!19242 (regOne!19242 r!17423)))) b!3000749))

(assert (= (and b!3000325 ((_ is Concat!14686) (regOne!19242 (regOne!19242 r!17423)))) b!3000750))

(assert (= (and b!3000325 ((_ is Star!9365) (regOne!19242 (regOne!19242 r!17423)))) b!3000751))

(assert (= (and b!3000325 ((_ is Union!9365) (regOne!19242 (regOne!19242 r!17423)))) b!3000752))

(declare-fun e!1885077 () Bool)

(assert (=> b!3000325 (= tp!953648 e!1885077)))

(declare-fun b!3000755 () Bool)

(declare-fun tp!953736 () Bool)

(assert (=> b!3000755 (= e!1885077 tp!953736)))

(declare-fun b!3000754 () Bool)

(declare-fun tp!953738 () Bool)

(declare-fun tp!953739 () Bool)

(assert (=> b!3000754 (= e!1885077 (and tp!953738 tp!953739))))

(declare-fun b!3000756 () Bool)

(declare-fun tp!953737 () Bool)

(declare-fun tp!953735 () Bool)

(assert (=> b!3000756 (= e!1885077 (and tp!953737 tp!953735))))

(declare-fun b!3000753 () Bool)

(assert (=> b!3000753 (= e!1885077 tp_is_empty!16293)))

(assert (= (and b!3000325 ((_ is ElementMatch!9365) (regTwo!19242 (regOne!19242 r!17423)))) b!3000753))

(assert (= (and b!3000325 ((_ is Concat!14686) (regTwo!19242 (regOne!19242 r!17423)))) b!3000754))

(assert (= (and b!3000325 ((_ is Star!9365) (regTwo!19242 (regOne!19242 r!17423)))) b!3000755))

(assert (= (and b!3000325 ((_ is Union!9365) (regTwo!19242 (regOne!19242 r!17423)))) b!3000756))

(declare-fun e!1885078 () Bool)

(assert (=> b!3000322 (= tp!953640 e!1885078)))

(declare-fun b!3000759 () Bool)

(declare-fun tp!953741 () Bool)

(assert (=> b!3000759 (= e!1885078 tp!953741)))

(declare-fun b!3000758 () Bool)

(declare-fun tp!953743 () Bool)

(declare-fun tp!953744 () Bool)

(assert (=> b!3000758 (= e!1885078 (and tp!953743 tp!953744))))

(declare-fun b!3000760 () Bool)

(declare-fun tp!953742 () Bool)

(declare-fun tp!953740 () Bool)

(assert (=> b!3000760 (= e!1885078 (and tp!953742 tp!953740))))

(declare-fun b!3000757 () Bool)

(assert (=> b!3000757 (= e!1885078 tp_is_empty!16293)))

(assert (= (and b!3000322 ((_ is ElementMatch!9365) (reg!9694 (regTwo!19243 r!17423)))) b!3000757))

(assert (= (and b!3000322 ((_ is Concat!14686) (reg!9694 (regTwo!19243 r!17423)))) b!3000758))

(assert (= (and b!3000322 ((_ is Star!9365) (reg!9694 (regTwo!19243 r!17423)))) b!3000759))

(assert (= (and b!3000322 ((_ is Union!9365) (reg!9694 (regTwo!19243 r!17423)))) b!3000760))

(declare-fun e!1885079 () Bool)

(assert (=> b!3000327 (= tp!953646 e!1885079)))

(declare-fun b!3000763 () Bool)

(declare-fun tp!953746 () Bool)

(assert (=> b!3000763 (= e!1885079 tp!953746)))

(declare-fun b!3000762 () Bool)

(declare-fun tp!953748 () Bool)

(declare-fun tp!953749 () Bool)

(assert (=> b!3000762 (= e!1885079 (and tp!953748 tp!953749))))

(declare-fun b!3000764 () Bool)

(declare-fun tp!953747 () Bool)

(declare-fun tp!953745 () Bool)

(assert (=> b!3000764 (= e!1885079 (and tp!953747 tp!953745))))

(declare-fun b!3000761 () Bool)

(assert (=> b!3000761 (= e!1885079 tp_is_empty!16293)))

(assert (= (and b!3000327 ((_ is ElementMatch!9365) (regOne!19243 (regOne!19242 r!17423)))) b!3000761))

(assert (= (and b!3000327 ((_ is Concat!14686) (regOne!19243 (regOne!19242 r!17423)))) b!3000762))

(assert (= (and b!3000327 ((_ is Star!9365) (regOne!19243 (regOne!19242 r!17423)))) b!3000763))

(assert (= (and b!3000327 ((_ is Union!9365) (regOne!19243 (regOne!19242 r!17423)))) b!3000764))

(declare-fun e!1885080 () Bool)

(assert (=> b!3000327 (= tp!953644 e!1885080)))

(declare-fun b!3000767 () Bool)

(declare-fun tp!953751 () Bool)

(assert (=> b!3000767 (= e!1885080 tp!953751)))

(declare-fun b!3000766 () Bool)

(declare-fun tp!953753 () Bool)

(declare-fun tp!953754 () Bool)

(assert (=> b!3000766 (= e!1885080 (and tp!953753 tp!953754))))

(declare-fun b!3000768 () Bool)

(declare-fun tp!953752 () Bool)

(declare-fun tp!953750 () Bool)

(assert (=> b!3000768 (= e!1885080 (and tp!953752 tp!953750))))

(declare-fun b!3000765 () Bool)

(assert (=> b!3000765 (= e!1885080 tp_is_empty!16293)))

(assert (= (and b!3000327 ((_ is ElementMatch!9365) (regTwo!19243 (regOne!19242 r!17423)))) b!3000765))

(assert (= (and b!3000327 ((_ is Concat!14686) (regTwo!19243 (regOne!19242 r!17423)))) b!3000766))

(assert (= (and b!3000327 ((_ is Star!9365) (regTwo!19243 (regOne!19242 r!17423)))) b!3000767))

(assert (= (and b!3000327 ((_ is Union!9365) (regTwo!19243 (regOne!19242 r!17423)))) b!3000768))

(declare-fun e!1885081 () Bool)

(assert (=> b!3000326 (= tp!953645 e!1885081)))

(declare-fun b!3000771 () Bool)

(declare-fun tp!953756 () Bool)

(assert (=> b!3000771 (= e!1885081 tp!953756)))

(declare-fun b!3000770 () Bool)

(declare-fun tp!953758 () Bool)

(declare-fun tp!953759 () Bool)

(assert (=> b!3000770 (= e!1885081 (and tp!953758 tp!953759))))

(declare-fun b!3000772 () Bool)

(declare-fun tp!953757 () Bool)

(declare-fun tp!953755 () Bool)

(assert (=> b!3000772 (= e!1885081 (and tp!953757 tp!953755))))

(declare-fun b!3000769 () Bool)

(assert (=> b!3000769 (= e!1885081 tp_is_empty!16293)))

(assert (= (and b!3000326 ((_ is ElementMatch!9365) (reg!9694 (regOne!19242 r!17423)))) b!3000769))

(assert (= (and b!3000326 ((_ is Concat!14686) (reg!9694 (regOne!19242 r!17423)))) b!3000770))

(assert (= (and b!3000326 ((_ is Star!9365) (reg!9694 (regOne!19242 r!17423)))) b!3000771))

(assert (= (and b!3000326 ((_ is Union!9365) (reg!9694 (regOne!19242 r!17423)))) b!3000772))

(declare-fun e!1885082 () Bool)

(assert (=> b!3000317 (= tp!953637 e!1885082)))

(declare-fun b!3000775 () Bool)

(declare-fun tp!953761 () Bool)

(assert (=> b!3000775 (= e!1885082 tp!953761)))

(declare-fun b!3000774 () Bool)

(declare-fun tp!953763 () Bool)

(declare-fun tp!953764 () Bool)

(assert (=> b!3000774 (= e!1885082 (and tp!953763 tp!953764))))

(declare-fun b!3000776 () Bool)

(declare-fun tp!953762 () Bool)

(declare-fun tp!953760 () Bool)

(assert (=> b!3000776 (= e!1885082 (and tp!953762 tp!953760))))

(declare-fun b!3000773 () Bool)

(assert (=> b!3000773 (= e!1885082 tp_is_empty!16293)))

(assert (= (and b!3000317 ((_ is ElementMatch!9365) (regOne!19242 (regOne!19243 r!17423)))) b!3000773))

(assert (= (and b!3000317 ((_ is Concat!14686) (regOne!19242 (regOne!19243 r!17423)))) b!3000774))

(assert (= (and b!3000317 ((_ is Star!9365) (regOne!19242 (regOne!19243 r!17423)))) b!3000775))

(assert (= (and b!3000317 ((_ is Union!9365) (regOne!19242 (regOne!19243 r!17423)))) b!3000776))

(declare-fun e!1885090 () Bool)

(assert (=> b!3000317 (= tp!953638 e!1885090)))

(declare-fun b!3000786 () Bool)

(declare-fun tp!953766 () Bool)

(assert (=> b!3000786 (= e!1885090 tp!953766)))

(declare-fun b!3000785 () Bool)

(declare-fun tp!953768 () Bool)

(declare-fun tp!953769 () Bool)

(assert (=> b!3000785 (= e!1885090 (and tp!953768 tp!953769))))

(declare-fun b!3000788 () Bool)

(declare-fun tp!953767 () Bool)

(declare-fun tp!953765 () Bool)

(assert (=> b!3000788 (= e!1885090 (and tp!953767 tp!953765))))

(declare-fun b!3000783 () Bool)

(assert (=> b!3000783 (= e!1885090 tp_is_empty!16293)))

(assert (= (and b!3000317 ((_ is ElementMatch!9365) (regTwo!19242 (regOne!19243 r!17423)))) b!3000783))

(assert (= (and b!3000317 ((_ is Concat!14686) (regTwo!19242 (regOne!19243 r!17423)))) b!3000785))

(assert (= (and b!3000317 ((_ is Star!9365) (regTwo!19242 (regOne!19243 r!17423)))) b!3000786))

(assert (= (and b!3000317 ((_ is Union!9365) (regTwo!19242 (regOne!19243 r!17423)))) b!3000788))

(declare-fun e!1885091 () Bool)

(assert (=> b!3000331 (= tp!953651 e!1885091)))

(declare-fun b!3000792 () Bool)

(declare-fun tp!953771 () Bool)

(assert (=> b!3000792 (= e!1885091 tp!953771)))

(declare-fun b!3000791 () Bool)

(declare-fun tp!953773 () Bool)

(declare-fun tp!953774 () Bool)

(assert (=> b!3000791 (= e!1885091 (and tp!953773 tp!953774))))

(declare-fun b!3000793 () Bool)

(declare-fun tp!953772 () Bool)

(declare-fun tp!953770 () Bool)

(assert (=> b!3000793 (= e!1885091 (and tp!953772 tp!953770))))

(declare-fun b!3000790 () Bool)

(assert (=> b!3000790 (= e!1885091 tp_is_empty!16293)))

(assert (= (and b!3000331 ((_ is ElementMatch!9365) (regOne!19243 (regTwo!19242 r!17423)))) b!3000790))

(assert (= (and b!3000331 ((_ is Concat!14686) (regOne!19243 (regTwo!19242 r!17423)))) b!3000791))

(assert (= (and b!3000331 ((_ is Star!9365) (regOne!19243 (regTwo!19242 r!17423)))) b!3000792))

(assert (= (and b!3000331 ((_ is Union!9365) (regOne!19243 (regTwo!19242 r!17423)))) b!3000793))

(declare-fun e!1885092 () Bool)

(assert (=> b!3000331 (= tp!953649 e!1885092)))

(declare-fun b!3000796 () Bool)

(declare-fun tp!953776 () Bool)

(assert (=> b!3000796 (= e!1885092 tp!953776)))

(declare-fun b!3000795 () Bool)

(declare-fun tp!953778 () Bool)

(declare-fun tp!953779 () Bool)

(assert (=> b!3000795 (= e!1885092 (and tp!953778 tp!953779))))

(declare-fun b!3000797 () Bool)

(declare-fun tp!953777 () Bool)

(declare-fun tp!953775 () Bool)

(assert (=> b!3000797 (= e!1885092 (and tp!953777 tp!953775))))

(declare-fun b!3000794 () Bool)

(assert (=> b!3000794 (= e!1885092 tp_is_empty!16293)))

(assert (= (and b!3000331 ((_ is ElementMatch!9365) (regTwo!19243 (regTwo!19242 r!17423)))) b!3000794))

(assert (= (and b!3000331 ((_ is Concat!14686) (regTwo!19243 (regTwo!19242 r!17423)))) b!3000795))

(assert (= (and b!3000331 ((_ is Star!9365) (regTwo!19243 (regTwo!19242 r!17423)))) b!3000796))

(assert (= (and b!3000331 ((_ is Union!9365) (regTwo!19243 (regTwo!19242 r!17423)))) b!3000797))

(check-sat tp_is_empty!16293 (not b!3000525) (not bm!201589) (not b!3000440) (not b!3000567) (not b!3000404) (not bm!201601) (not bm!201567) (not b!3000767) (not b!3000533) (not b!3000707) (not b!3000735) (not d!846166) (not b!3000762) (not d!846196) (not bm!201535) (not b!3000358) (not b!3000775) (not bm!201602) (not b!3000725) (not b!3000750) (not b!3000671) (not b!3000714) (not b!3000386) (not bm!201553) (not bm!201544) (not b!3000402) (not b!3000742) (not bm!201555) (not bm!201585) (not b!3000653) (not b!3000410) (not bm!201587) (not d!846140) (not b!3000429) (not bm!201517) (not bm!201569) (not b!3000792) (not d!846206) (not b!3000768) (not b!3000472) (not bm!201580) (not b!3000697) (not b!3000698) (not b!3000752) (not b!3000719) (not b!3000791) (not bm!201588) (not bm!201531) (not b!3000397) (not b!3000679) (not bm!201566) (not b!3000592) (not b!3000664) (not bm!201604) (not b!3000759) (not d!846168) (not b!3000703) (not bm!201577) (not b!3000362) (not bm!201545) (not bm!201536) (not bm!201568) (not b!3000355) (not bm!201522) (not b!3000524) (not b!3000569) (not d!846198) (not b!3000739) (not b!3000360) (not b!3000747) (not b!3000744) (not b!3000746) (not d!846154) (not bm!201596) (not b!3000796) (not b!3000711) (not bm!201520) (not bm!201551) (not bm!201571) (not b!3000406) (not b!3000348) (not bm!201519) (not b!3000718) (not b!3000705) (not bm!201572) (not b!3000531) (not b!3000619) (not d!846158) (not b!3000706) (not b!3000721) (not b!3000764) (not b!3000797) (not d!846152) (not b!3000526) (not b!3000680) (not b!3000722) (not b!3000726) (not b!3000754) (not b!3000751) (not bm!201597) (not bm!201557) (not bm!201606) (not bm!201550) (not b!3000734) (not d!846134) (not bm!201534) (not d!846180) (not d!846138) (not b!3000748) (not bm!201542) (not bm!201539) (not bm!201556) (not b!3000529) (not b!3000702) (not d!846136) (not b!3000771) (not b!3000709) (not b!3000727) (not b!3000542) (not bm!201516) (not d!846156) (not b!3000568) (not b!3000795) (not b!3000743) (not b!3000557) (not b!3000354) (not b!3000728) (not b!3000551) (not b!3000793) (not b!3000763) (not b!3000731) (not b!3000730) (not bm!201565) (not bm!201590) (not b!3000692) (not bm!201558) (not b!3000732) (not b!3000770) (not b!3000772) (not b!3000668) (not b!3000574) (not b!3000710) (not b!3000776) (not b!3000758) (not b!3000755) (not d!846182) (not b!3000339) (not b!3000713) (not b!3000630) (not d!846164) (not b!3000576) (not b!3000717) (not b!3000554) (not b!3000699) (not d!846144) (not b!3000760) (not b!3000353) (not b!3000459) (not bm!201599) (not b!3000681) (not bm!201547) (not b!3000701) (not b!3000450) (not bm!201576) (not b!3000483) (not b!3000785) (not bm!201540) (not bm!201603) (not b!3000694) (not b!3000640) (not b!3000398) (not b!3000399) (not d!846220) (not bm!201574) (not b!3000572) (not b!3000788) (not b!3000736) (not b!3000723) (not b!3000756) (not b!3000766) (not d!846146) (not b!3000774) (not b!3000740) (not b!3000715) (not b!3000786) (not b!3000690) (not bm!201548) (not bm!201575) (not d!846212) (not bm!201607) (not b!3000738) (not bm!201543))
(check-sat)

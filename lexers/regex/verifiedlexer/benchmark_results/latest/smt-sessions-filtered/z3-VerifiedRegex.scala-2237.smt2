; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110334 () Bool)

(assert start!110334)

(declare-fun b!1234732 () Bool)

(declare-fun e!790710 () Bool)

(declare-fun tp!352778 () Bool)

(assert (=> b!1234732 (= e!790710 tp!352778)))

(declare-fun b!1234733 () Bool)

(declare-fun tp_is_empty!6419 () Bool)

(assert (=> b!1234733 (= e!790710 tp_is_empty!6419)))

(declare-fun b!1234734 () Bool)

(declare-fun tp!352779 () Bool)

(declare-fun tp!352775 () Bool)

(assert (=> b!1234734 (= e!790710 (and tp!352779 tp!352775))))

(declare-fun b!1234735 () Bool)

(declare-fun res!553057 () Bool)

(declare-fun e!790709 () Bool)

(assert (=> b!1234735 (=> (not res!553057) (not e!790709))))

(declare-datatypes ((C!7216 0))(
  ( (C!7217 (val!4138 Int)) )
))
(declare-datatypes ((Regex!3449 0))(
  ( (ElementMatch!3449 (c!206512 C!7216)) (Concat!5679 (regOne!7410 Regex!3449) (regTwo!7410 Regex!3449)) (EmptyExpr!3449) (Star!3449 (reg!3778 Regex!3449)) (EmptyLang!3449) (Union!3449 (regOne!7411 Regex!3449) (regTwo!7411 Regex!3449)) )
))
(declare-fun r!15719 () Regex!3449)

(get-info :version)

(assert (=> b!1234735 (= res!553057 (and ((_ is Concat!5679) r!15719) ((_ is EmptyExpr!3449) (regOne!7410 r!15719))))))

(declare-fun res!553058 () Bool)

(assert (=> start!110334 (=> (not res!553058) (not e!790709))))

(declare-fun validRegex!1485 (Regex!3449) Bool)

(assert (=> start!110334 (= res!553058 (validRegex!1485 r!15719))))

(assert (=> start!110334 e!790709))

(assert (=> start!110334 e!790710))

(declare-fun b!1234736 () Bool)

(declare-fun regexDepth!50 (Regex!3449) Int)

(assert (=> b!1234736 (= e!790709 (>= (regexDepth!50 (regTwo!7410 r!15719)) (regexDepth!50 r!15719)))))

(declare-fun b!1234737 () Bool)

(declare-fun tp!352777 () Bool)

(declare-fun tp!352776 () Bool)

(assert (=> b!1234737 (= e!790710 (and tp!352777 tp!352776))))

(assert (= (and start!110334 res!553058) b!1234735))

(assert (= (and b!1234735 res!553057) b!1234736))

(assert (= (and start!110334 ((_ is ElementMatch!3449) r!15719)) b!1234733))

(assert (= (and start!110334 ((_ is Concat!5679) r!15719)) b!1234737))

(assert (= (and start!110334 ((_ is Star!3449) r!15719)) b!1234732))

(assert (= (and start!110334 ((_ is Union!3449) r!15719)) b!1234734))

(declare-fun m!1409233 () Bool)

(assert (=> start!110334 m!1409233))

(declare-fun m!1409235 () Bool)

(assert (=> b!1234736 m!1409235))

(declare-fun m!1409237 () Bool)

(assert (=> b!1234736 m!1409237))

(check-sat (not b!1234737) tp_is_empty!6419 (not b!1234732) (not b!1234736) (not start!110334) (not b!1234734))
(check-sat)
(get-model)

(declare-fun b!1234821 () Bool)

(declare-fun res!553076 () Bool)

(declare-fun e!790768 () Bool)

(assert (=> b!1234821 (=> (not res!553076) (not e!790768))))

(declare-fun lt!420113 () Int)

(declare-fun call!85757 () Int)

(assert (=> b!1234821 (= res!553076 (> lt!420113 call!85757))))

(declare-fun e!790762 () Bool)

(assert (=> b!1234821 (= e!790762 e!790768)))

(declare-fun c!206554 () Bool)

(declare-fun c!206546 () Bool)

(declare-fun bm!85750 () Bool)

(declare-fun call!85761 () Int)

(assert (=> bm!85750 (= call!85761 (regexDepth!50 (ite c!206546 (reg!3778 (regTwo!7410 r!15719)) (ite c!206554 (regOne!7411 (regTwo!7410 r!15719)) (regOne!7410 (regTwo!7410 r!15719))))))))

(declare-fun b!1234824 () Bool)

(declare-fun e!790765 () Bool)

(declare-fun call!85759 () Int)

(assert (=> b!1234824 (= e!790765 (> lt!420113 call!85759))))

(declare-fun b!1234825 () Bool)

(declare-fun e!790763 () Bool)

(assert (=> b!1234825 (= e!790763 e!790765)))

(declare-fun res!553075 () Bool)

(declare-fun call!85760 () Int)

(assert (=> b!1234825 (= res!553075 (> lt!420113 call!85760))))

(assert (=> b!1234825 (=> (not res!553075) (not e!790765))))

(declare-fun c!206553 () Bool)

(declare-fun c!206552 () Bool)

(declare-fun bm!85751 () Bool)

(assert (=> bm!85751 (= call!85760 (regexDepth!50 (ite c!206552 (regOne!7411 (regTwo!7410 r!15719)) (ite c!206553 (regOne!7410 (regTwo!7410 r!15719)) (reg!3778 (regTwo!7410 r!15719))))))))

(declare-fun b!1234826 () Bool)

(declare-fun c!206551 () Bool)

(assert (=> b!1234826 (= c!206551 ((_ is Star!3449) (regTwo!7410 r!15719)))))

(declare-fun e!790764 () Bool)

(assert (=> b!1234826 (= e!790762 e!790764)))

(declare-fun b!1234827 () Bool)

(declare-fun e!790759 () Int)

(assert (=> b!1234827 (= e!790759 (+ 1 call!85761))))

(declare-fun b!1234828 () Bool)

(assert (=> b!1234828 (= e!790763 e!790762)))

(assert (=> b!1234828 (= c!206553 ((_ is Concat!5679) (regTwo!7410 r!15719)))))

(declare-fun b!1234829 () Bool)

(declare-fun e!790767 () Int)

(declare-fun call!85755 () Int)

(assert (=> b!1234829 (= e!790767 (+ 1 call!85755))))

(declare-fun b!1234830 () Bool)

(declare-fun e!790769 () Int)

(assert (=> b!1234830 (= e!790769 e!790759)))

(assert (=> b!1234830 (= c!206546 ((_ is Star!3449) (regTwo!7410 r!15719)))))

(declare-fun b!1234831 () Bool)

(assert (=> b!1234831 (= e!790768 (> lt!420113 call!85759))))

(declare-fun bm!85752 () Bool)

(declare-fun call!85754 () Int)

(assert (=> bm!85752 (= call!85754 call!85761)))

(declare-fun b!1234832 () Bool)

(assert (=> b!1234832 (= e!790767 1)))

(declare-fun b!1234833 () Bool)

(assert (=> b!1234833 (= c!206554 ((_ is Union!3449) (regTwo!7410 r!15719)))))

(declare-fun e!790766 () Int)

(assert (=> b!1234833 (= e!790759 e!790766)))

(declare-fun d!353202 () Bool)

(declare-fun e!790770 () Bool)

(assert (=> d!353202 e!790770))

(declare-fun res!553074 () Bool)

(assert (=> d!353202 (=> (not res!553074) (not e!790770))))

(assert (=> d!353202 (= res!553074 (> lt!420113 0))))

(assert (=> d!353202 (= lt!420113 e!790769)))

(declare-fun c!206549 () Bool)

(assert (=> d!353202 (= c!206549 ((_ is ElementMatch!3449) (regTwo!7410 r!15719)))))

(assert (=> d!353202 (= (regexDepth!50 (regTwo!7410 r!15719)) lt!420113)))

(declare-fun b!1234834 () Bool)

(assert (=> b!1234834 (= e!790764 (> lt!420113 call!85757))))

(declare-fun bm!85753 () Bool)

(assert (=> bm!85753 (= call!85759 (regexDepth!50 (ite c!206552 (regTwo!7411 (regTwo!7410 r!15719)) (regTwo!7410 (regTwo!7410 r!15719)))))))

(declare-fun b!1234835 () Bool)

(assert (=> b!1234835 (= e!790769 1)))

(declare-fun b!1234836 () Bool)

(assert (=> b!1234836 (= e!790764 (= lt!420113 1))))

(declare-fun bm!85754 () Bool)

(declare-fun call!85758 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!85754 (= call!85755 (maxBigInt!0 call!85754 call!85758))))

(declare-fun b!1234837 () Bool)

(assert (=> b!1234837 (= e!790766 (+ 1 call!85755))))

(declare-fun bm!85755 () Bool)

(assert (=> bm!85755 (= call!85758 (regexDepth!50 (ite c!206554 (regTwo!7411 (regTwo!7410 r!15719)) (regTwo!7410 (regTwo!7410 r!15719)))))))

(declare-fun bm!85756 () Bool)

(assert (=> bm!85756 (= call!85757 call!85760)))

(declare-fun b!1234838 () Bool)

(assert (=> b!1234838 (= e!790770 e!790763)))

(assert (=> b!1234838 (= c!206552 ((_ is Union!3449) (regTwo!7410 r!15719)))))

(declare-fun b!1234839 () Bool)

(assert (=> b!1234839 (= e!790766 e!790767)))

(declare-fun c!206550 () Bool)

(assert (=> b!1234839 (= c!206550 ((_ is Concat!5679) (regTwo!7410 r!15719)))))

(assert (= (and d!353202 c!206549) b!1234835))

(assert (= (and d!353202 (not c!206549)) b!1234830))

(assert (= (and b!1234830 c!206546) b!1234827))

(assert (= (and b!1234830 (not c!206546)) b!1234833))

(assert (= (and b!1234833 c!206554) b!1234837))

(assert (= (and b!1234833 (not c!206554)) b!1234839))

(assert (= (and b!1234839 c!206550) b!1234829))

(assert (= (and b!1234839 (not c!206550)) b!1234832))

(assert (= (or b!1234837 b!1234829) bm!85752))

(assert (= (or b!1234837 b!1234829) bm!85755))

(assert (= (or b!1234837 b!1234829) bm!85754))

(assert (= (or b!1234827 bm!85752) bm!85750))

(assert (= (and d!353202 res!553074) b!1234838))

(assert (= (and b!1234838 c!206552) b!1234825))

(assert (= (and b!1234838 (not c!206552)) b!1234828))

(assert (= (and b!1234825 res!553075) b!1234824))

(assert (= (and b!1234828 c!206553) b!1234821))

(assert (= (and b!1234828 (not c!206553)) b!1234826))

(assert (= (and b!1234821 res!553076) b!1234831))

(assert (= (and b!1234826 c!206551) b!1234834))

(assert (= (and b!1234826 (not c!206551)) b!1234836))

(assert (= (or b!1234821 b!1234834) bm!85756))

(assert (= (or b!1234825 bm!85756) bm!85751))

(assert (= (or b!1234824 b!1234831) bm!85753))

(declare-fun m!1409241 () Bool)

(assert (=> bm!85750 m!1409241))

(declare-fun m!1409245 () Bool)

(assert (=> bm!85754 m!1409245))

(declare-fun m!1409249 () Bool)

(assert (=> bm!85753 m!1409249))

(declare-fun m!1409253 () Bool)

(assert (=> bm!85751 m!1409253))

(declare-fun m!1409255 () Bool)

(assert (=> bm!85755 m!1409255))

(assert (=> b!1234736 d!353202))

(declare-fun b!1234840 () Bool)

(declare-fun res!553082 () Bool)

(declare-fun e!790786 () Bool)

(assert (=> b!1234840 (=> (not res!553082) (not e!790786))))

(declare-fun lt!420114 () Int)

(declare-fun call!85765 () Int)

(assert (=> b!1234840 (= res!553082 (> lt!420114 call!85765))))

(declare-fun e!790773 () Bool)

(assert (=> b!1234840 (= e!790773 e!790786)))

(declare-fun c!206555 () Bool)

(declare-fun call!85774 () Int)

(declare-fun c!206566 () Bool)

(declare-fun bm!85757 () Bool)

(assert (=> bm!85757 (= call!85774 (regexDepth!50 (ite c!206555 (reg!3778 r!15719) (ite c!206566 (regOne!7411 r!15719) (regOne!7410 r!15719)))))))

(declare-fun b!1234843 () Bool)

(declare-fun e!790781 () Bool)

(declare-fun call!85769 () Int)

(assert (=> b!1234843 (= e!790781 (> lt!420114 call!85769))))

(declare-fun b!1234845 () Bool)

(declare-fun e!790775 () Bool)

(assert (=> b!1234845 (= e!790775 e!790781)))

(declare-fun res!553081 () Bool)

(declare-fun call!85771 () Int)

(assert (=> b!1234845 (= res!553081 (> lt!420114 call!85771))))

(assert (=> b!1234845 (=> (not res!553081) (not e!790781))))

(declare-fun c!206563 () Bool)

(declare-fun c!206564 () Bool)

(declare-fun bm!85759 () Bool)

(assert (=> bm!85759 (= call!85771 (regexDepth!50 (ite c!206563 (regOne!7411 r!15719) (ite c!206564 (regOne!7410 r!15719) (reg!3778 r!15719)))))))

(declare-fun b!1234847 () Bool)

(declare-fun c!206561 () Bool)

(assert (=> b!1234847 (= c!206561 ((_ is Star!3449) r!15719))))

(declare-fun e!790777 () Bool)

(assert (=> b!1234847 (= e!790773 e!790777)))

(declare-fun b!1234849 () Bool)

(declare-fun e!790771 () Int)

(assert (=> b!1234849 (= e!790771 (+ 1 call!85774))))

(declare-fun b!1234850 () Bool)

(assert (=> b!1234850 (= e!790775 e!790773)))

(assert (=> b!1234850 (= c!206564 ((_ is Concat!5679) r!15719))))

(declare-fun b!1234852 () Bool)

(declare-fun e!790784 () Int)

(declare-fun call!85764 () Int)

(assert (=> b!1234852 (= e!790784 (+ 1 call!85764))))

(declare-fun b!1234854 () Bool)

(declare-fun e!790787 () Int)

(assert (=> b!1234854 (= e!790787 e!790771)))

(assert (=> b!1234854 (= c!206555 ((_ is Star!3449) r!15719))))

(declare-fun b!1234856 () Bool)

(assert (=> b!1234856 (= e!790786 (> lt!420114 call!85769))))

(declare-fun bm!85762 () Bool)

(declare-fun call!85762 () Int)

(assert (=> bm!85762 (= call!85762 call!85774)))

(declare-fun b!1234858 () Bool)

(assert (=> b!1234858 (= e!790784 1)))

(declare-fun b!1234859 () Bool)

(assert (=> b!1234859 (= c!206566 ((_ is Union!3449) r!15719))))

(declare-fun e!790782 () Int)

(assert (=> b!1234859 (= e!790771 e!790782)))

(declare-fun d!353205 () Bool)

(declare-fun e!790790 () Bool)

(assert (=> d!353205 e!790790))

(declare-fun res!553079 () Bool)

(assert (=> d!353205 (=> (not res!553079) (not e!790790))))

(assert (=> d!353205 (= res!553079 (> lt!420114 0))))

(assert (=> d!353205 (= lt!420114 e!790787)))

(declare-fun c!206557 () Bool)

(assert (=> d!353205 (= c!206557 ((_ is ElementMatch!3449) r!15719))))

(assert (=> d!353205 (= (regexDepth!50 r!15719) lt!420114)))

(declare-fun b!1234861 () Bool)

(assert (=> b!1234861 (= e!790777 (> lt!420114 call!85765))))

(declare-fun bm!85765 () Bool)

(assert (=> bm!85765 (= call!85769 (regexDepth!50 (ite c!206563 (regTwo!7411 r!15719) (regTwo!7410 r!15719))))))

(declare-fun b!1234863 () Bool)

(assert (=> b!1234863 (= e!790787 1)))

(declare-fun b!1234865 () Bool)

(assert (=> b!1234865 (= e!790777 (= lt!420114 1))))

(declare-fun bm!85767 () Bool)

(declare-fun call!85767 () Int)

(assert (=> bm!85767 (= call!85764 (maxBigInt!0 call!85762 call!85767))))

(declare-fun b!1234867 () Bool)

(assert (=> b!1234867 (= e!790782 (+ 1 call!85764))))

(declare-fun bm!85768 () Bool)

(assert (=> bm!85768 (= call!85767 (regexDepth!50 (ite c!206566 (regTwo!7411 r!15719) (regTwo!7410 r!15719))))))

(declare-fun bm!85770 () Bool)

(assert (=> bm!85770 (= call!85765 call!85771)))

(declare-fun b!1234870 () Bool)

(assert (=> b!1234870 (= e!790790 e!790775)))

(assert (=> b!1234870 (= c!206563 ((_ is Union!3449) r!15719))))

(declare-fun b!1234872 () Bool)

(assert (=> b!1234872 (= e!790782 e!790784)))

(declare-fun c!206560 () Bool)

(assert (=> b!1234872 (= c!206560 ((_ is Concat!5679) r!15719))))

(assert (= (and d!353205 c!206557) b!1234863))

(assert (= (and d!353205 (not c!206557)) b!1234854))

(assert (= (and b!1234854 c!206555) b!1234849))

(assert (= (and b!1234854 (not c!206555)) b!1234859))

(assert (= (and b!1234859 c!206566) b!1234867))

(assert (= (and b!1234859 (not c!206566)) b!1234872))

(assert (= (and b!1234872 c!206560) b!1234852))

(assert (= (and b!1234872 (not c!206560)) b!1234858))

(assert (= (or b!1234867 b!1234852) bm!85762))

(assert (= (or b!1234867 b!1234852) bm!85768))

(assert (= (or b!1234867 b!1234852) bm!85767))

(assert (= (or b!1234849 bm!85762) bm!85757))

(assert (= (and d!353205 res!553079) b!1234870))

(assert (= (and b!1234870 c!206563) b!1234845))

(assert (= (and b!1234870 (not c!206563)) b!1234850))

(assert (= (and b!1234845 res!553081) b!1234843))

(assert (= (and b!1234850 c!206564) b!1234840))

(assert (= (and b!1234850 (not c!206564)) b!1234847))

(assert (= (and b!1234840 res!553082) b!1234856))

(assert (= (and b!1234847 c!206561) b!1234861))

(assert (= (and b!1234847 (not c!206561)) b!1234865))

(assert (= (or b!1234840 b!1234861) bm!85770))

(assert (= (or b!1234845 bm!85770) bm!85759))

(assert (= (or b!1234843 b!1234856) bm!85765))

(declare-fun m!1409261 () Bool)

(assert (=> bm!85757 m!1409261))

(declare-fun m!1409265 () Bool)

(assert (=> bm!85767 m!1409265))

(declare-fun m!1409267 () Bool)

(assert (=> bm!85765 m!1409267))

(declare-fun m!1409271 () Bool)

(assert (=> bm!85759 m!1409271))

(declare-fun m!1409275 () Bool)

(assert (=> bm!85768 m!1409275))

(assert (=> b!1234736 d!353205))

(declare-fun d!353210 () Bool)

(declare-fun res!553109 () Bool)

(declare-fun e!790823 () Bool)

(assert (=> d!353210 (=> res!553109 e!790823)))

(assert (=> d!353210 (= res!553109 ((_ is ElementMatch!3449) r!15719))))

(assert (=> d!353210 (= (validRegex!1485 r!15719) e!790823)))

(declare-fun bm!85783 () Bool)

(declare-fun c!206577 () Bool)

(declare-fun c!206579 () Bool)

(declare-fun call!85789 () Bool)

(assert (=> bm!85783 (= call!85789 (validRegex!1485 (ite c!206577 (reg!3778 r!15719) (ite c!206579 (regOne!7411 r!15719) (regOne!7410 r!15719)))))))

(declare-fun b!1234910 () Bool)

(declare-fun e!790824 () Bool)

(declare-fun e!790819 () Bool)

(assert (=> b!1234910 (= e!790824 e!790819)))

(declare-fun res!553105 () Bool)

(assert (=> b!1234910 (=> (not res!553105) (not e!790819))))

(declare-fun call!85790 () Bool)

(assert (=> b!1234910 (= res!553105 call!85790)))

(declare-fun b!1234911 () Bool)

(declare-fun res!553104 () Bool)

(declare-fun e!790822 () Bool)

(assert (=> b!1234911 (=> (not res!553104) (not e!790822))))

(assert (=> b!1234911 (= res!553104 call!85790)))

(declare-fun e!790828 () Bool)

(assert (=> b!1234911 (= e!790828 e!790822)))

(declare-fun bm!85784 () Bool)

(declare-fun call!85793 () Bool)

(assert (=> bm!85784 (= call!85793 (validRegex!1485 (ite c!206579 (regTwo!7411 r!15719) (regTwo!7410 r!15719))))))

(declare-fun b!1234912 () Bool)

(declare-fun e!790821 () Bool)

(assert (=> b!1234912 (= e!790823 e!790821)))

(assert (=> b!1234912 (= c!206577 ((_ is Star!3449) r!15719))))

(declare-fun b!1234913 () Bool)

(declare-fun e!790820 () Bool)

(assert (=> b!1234913 (= e!790821 e!790820)))

(declare-fun res!553103 () Bool)

(declare-fun nullable!1086 (Regex!3449) Bool)

(assert (=> b!1234913 (= res!553103 (not (nullable!1086 (reg!3778 r!15719))))))

(assert (=> b!1234913 (=> (not res!553103) (not e!790820))))

(declare-fun b!1234915 () Bool)

(assert (=> b!1234915 (= e!790820 call!85789)))

(declare-fun b!1234916 () Bool)

(assert (=> b!1234916 (= e!790821 e!790828)))

(assert (=> b!1234916 (= c!206579 ((_ is Union!3449) r!15719))))

(declare-fun b!1234918 () Bool)

(declare-fun res!553108 () Bool)

(assert (=> b!1234918 (=> res!553108 e!790824)))

(assert (=> b!1234918 (= res!553108 (not ((_ is Concat!5679) r!15719)))))

(assert (=> b!1234918 (= e!790828 e!790824)))

(declare-fun b!1234920 () Bool)

(assert (=> b!1234920 (= e!790819 call!85793)))

(declare-fun bm!85786 () Bool)

(assert (=> bm!85786 (= call!85790 call!85789)))

(declare-fun b!1234923 () Bool)

(assert (=> b!1234923 (= e!790822 call!85793)))

(assert (= (and d!353210 (not res!553109)) b!1234912))

(assert (= (and b!1234912 c!206577) b!1234913))

(assert (= (and b!1234912 (not c!206577)) b!1234916))

(assert (= (and b!1234913 res!553103) b!1234915))

(assert (= (and b!1234916 c!206579) b!1234911))

(assert (= (and b!1234916 (not c!206579)) b!1234918))

(assert (= (and b!1234911 res!553104) b!1234923))

(assert (= (and b!1234918 (not res!553108)) b!1234910))

(assert (= (and b!1234910 res!553105) b!1234920))

(assert (= (or b!1234923 b!1234920) bm!85784))

(assert (= (or b!1234911 b!1234910) bm!85786))

(assert (= (or b!1234915 bm!85786) bm!85783))

(declare-fun m!1409281 () Bool)

(assert (=> bm!85783 m!1409281))

(declare-fun m!1409285 () Bool)

(assert (=> bm!85784 m!1409285))

(declare-fun m!1409289 () Bool)

(assert (=> b!1234913 m!1409289))

(assert (=> start!110334 d!353210))

(declare-fun b!1234949 () Bool)

(declare-fun e!790837 () Bool)

(declare-fun tp!352800 () Bool)

(declare-fun tp!352801 () Bool)

(assert (=> b!1234949 (= e!790837 (and tp!352800 tp!352801))))

(declare-fun b!1234948 () Bool)

(assert (=> b!1234948 (= e!790837 tp_is_empty!6419)))

(declare-fun b!1234950 () Bool)

(declare-fun tp!352803 () Bool)

(assert (=> b!1234950 (= e!790837 tp!352803)))

(assert (=> b!1234737 (= tp!352777 e!790837)))

(declare-fun b!1234951 () Bool)

(declare-fun tp!352805 () Bool)

(declare-fun tp!352802 () Bool)

(assert (=> b!1234951 (= e!790837 (and tp!352805 tp!352802))))

(assert (= (and b!1234737 ((_ is ElementMatch!3449) (regOne!7410 r!15719))) b!1234948))

(assert (= (and b!1234737 ((_ is Concat!5679) (regOne!7410 r!15719))) b!1234949))

(assert (= (and b!1234737 ((_ is Star!3449) (regOne!7410 r!15719))) b!1234950))

(assert (= (and b!1234737 ((_ is Union!3449) (regOne!7410 r!15719))) b!1234951))

(declare-fun b!1234957 () Bool)

(declare-fun e!790839 () Bool)

(declare-fun tp!352810 () Bool)

(declare-fun tp!352812 () Bool)

(assert (=> b!1234957 (= e!790839 (and tp!352810 tp!352812))))

(declare-fun b!1234956 () Bool)

(assert (=> b!1234956 (= e!790839 tp_is_empty!6419)))

(declare-fun b!1234959 () Bool)

(declare-fun tp!352815 () Bool)

(assert (=> b!1234959 (= e!790839 tp!352815)))

(assert (=> b!1234737 (= tp!352776 e!790839)))

(declare-fun b!1234961 () Bool)

(declare-fun tp!352817 () Bool)

(declare-fun tp!352814 () Bool)

(assert (=> b!1234961 (= e!790839 (and tp!352817 tp!352814))))

(assert (= (and b!1234737 ((_ is ElementMatch!3449) (regTwo!7410 r!15719))) b!1234956))

(assert (= (and b!1234737 ((_ is Concat!5679) (regTwo!7410 r!15719))) b!1234957))

(assert (= (and b!1234737 ((_ is Star!3449) (regTwo!7410 r!15719))) b!1234959))

(assert (= (and b!1234737 ((_ is Union!3449) (regTwo!7410 r!15719))) b!1234961))

(declare-fun b!1234968 () Bool)

(declare-fun e!790841 () Bool)

(declare-fun tp!352822 () Bool)

(declare-fun tp!352824 () Bool)

(assert (=> b!1234968 (= e!790841 (and tp!352822 tp!352824))))

(declare-fun b!1234966 () Bool)

(assert (=> b!1234966 (= e!790841 tp_is_empty!6419)))

(declare-fun b!1234970 () Bool)

(declare-fun tp!352828 () Bool)

(assert (=> b!1234970 (= e!790841 tp!352828)))

(assert (=> b!1234732 (= tp!352778 e!790841)))

(declare-fun b!1234971 () Bool)

(declare-fun tp!352829 () Bool)

(declare-fun tp!352826 () Bool)

(assert (=> b!1234971 (= e!790841 (and tp!352829 tp!352826))))

(assert (= (and b!1234732 ((_ is ElementMatch!3449) (reg!3778 r!15719))) b!1234966))

(assert (= (and b!1234732 ((_ is Concat!5679) (reg!3778 r!15719))) b!1234968))

(assert (= (and b!1234732 ((_ is Star!3449) (reg!3778 r!15719))) b!1234970))

(assert (= (and b!1234732 ((_ is Union!3449) (reg!3778 r!15719))) b!1234971))

(declare-fun b!1234973 () Bool)

(declare-fun e!790843 () Bool)

(declare-fun tp!352830 () Bool)

(declare-fun tp!352831 () Bool)

(assert (=> b!1234973 (= e!790843 (and tp!352830 tp!352831))))

(declare-fun b!1234972 () Bool)

(assert (=> b!1234972 (= e!790843 tp_is_empty!6419)))

(declare-fun b!1234974 () Bool)

(declare-fun tp!352834 () Bool)

(assert (=> b!1234974 (= e!790843 tp!352834)))

(assert (=> b!1234734 (= tp!352779 e!790843)))

(declare-fun b!1234975 () Bool)

(declare-fun tp!352836 () Bool)

(declare-fun tp!352832 () Bool)

(assert (=> b!1234975 (= e!790843 (and tp!352836 tp!352832))))

(assert (= (and b!1234734 ((_ is ElementMatch!3449) (regOne!7411 r!15719))) b!1234972))

(assert (= (and b!1234734 ((_ is Concat!5679) (regOne!7411 r!15719))) b!1234973))

(assert (= (and b!1234734 ((_ is Star!3449) (regOne!7411 r!15719))) b!1234974))

(assert (= (and b!1234734 ((_ is Union!3449) (regOne!7411 r!15719))) b!1234975))

(declare-fun b!1234981 () Bool)

(declare-fun e!790845 () Bool)

(declare-fun tp!352840 () Bool)

(declare-fun tp!352841 () Bool)

(assert (=> b!1234981 (= e!790845 (and tp!352840 tp!352841))))

(declare-fun b!1234980 () Bool)

(assert (=> b!1234980 (= e!790845 tp_is_empty!6419)))

(declare-fun b!1234982 () Bool)

(declare-fun tp!352844 () Bool)

(assert (=> b!1234982 (= e!790845 tp!352844)))

(assert (=> b!1234734 (= tp!352775 e!790845)))

(declare-fun b!1234983 () Bool)

(declare-fun tp!352846 () Bool)

(declare-fun tp!352842 () Bool)

(assert (=> b!1234983 (= e!790845 (and tp!352846 tp!352842))))

(assert (= (and b!1234734 ((_ is ElementMatch!3449) (regTwo!7411 r!15719))) b!1234980))

(assert (= (and b!1234734 ((_ is Concat!5679) (regTwo!7411 r!15719))) b!1234981))

(assert (= (and b!1234734 ((_ is Star!3449) (regTwo!7411 r!15719))) b!1234982))

(assert (= (and b!1234734 ((_ is Union!3449) (regTwo!7411 r!15719))) b!1234983))

(check-sat (not b!1234971) tp_is_empty!6419 (not bm!85784) (not bm!85757) (not b!1234913) (not b!1234970) (not b!1234950) (not b!1234975) (not b!1234949) (not bm!85751) (not b!1234957) (not b!1234974) (not b!1234973) (not bm!85768) (not bm!85754) (not bm!85783) (not bm!85765) (not b!1234982) (not b!1234961) (not bm!85759) (not b!1234959) (not bm!85753) (not bm!85767) (not bm!85750) (not b!1234968) (not bm!85755) (not b!1234951) (not b!1234981) (not b!1234983))
(check-sat)

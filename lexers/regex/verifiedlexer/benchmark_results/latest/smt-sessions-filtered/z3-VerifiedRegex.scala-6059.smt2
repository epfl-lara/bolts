; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295972 () Bool)

(assert start!295972)

(declare-fun b!3141584 () Bool)

(declare-fun res!1283072 () Bool)

(declare-fun e!1959539 () Bool)

(assert (=> b!3141584 (=> (not res!1283072) (not e!1959539))))

(declare-datatypes ((C!19524 0))(
  ( (C!19525 (val!11798 Int)) )
))
(declare-datatypes ((Regex!9669 0))(
  ( (ElementMatch!9669 (c!528021 C!19524)) (Concat!14990 (regOne!19850 Regex!9669) (regTwo!19850 Regex!9669)) (EmptyExpr!9669) (Star!9669 (reg!9998 Regex!9669)) (EmptyLang!9669) (Union!9669 (regOne!19851 Regex!9669) (regTwo!19851 Regex!9669)) )
))
(declare-fun r!17345 () Regex!9669)

(get-info :version)

(assert (=> b!3141584 (= res!1283072 (and (not ((_ is EmptyLang!9669) r!17345)) (not ((_ is ElementMatch!9669) r!17345)) (not ((_ is EmptyExpr!9669) r!17345)) (not ((_ is Star!9669) r!17345)) ((_ is Union!9669) r!17345)))))

(declare-fun b!3141585 () Bool)

(declare-fun e!1959538 () Bool)

(declare-fun tp_is_empty!16901 () Bool)

(assert (=> b!3141585 (= e!1959538 tp_is_empty!16901)))

(declare-fun b!3141586 () Bool)

(declare-fun regexDepth!125 (Regex!9669) Int)

(assert (=> b!3141586 (= e!1959539 (>= (regexDepth!125 (regOne!19851 r!17345)) (regexDepth!125 r!17345)))))

(declare-fun b!3141587 () Bool)

(declare-fun tp!984122 () Bool)

(assert (=> b!3141587 (= e!1959538 tp!984122)))

(declare-fun res!1283071 () Bool)

(assert (=> start!295972 (=> (not res!1283071) (not e!1959539))))

(declare-fun validRegex!4402 (Regex!9669) Bool)

(assert (=> start!295972 (= res!1283071 (validRegex!4402 r!17345))))

(assert (=> start!295972 e!1959539))

(assert (=> start!295972 e!1959538))

(declare-fun b!3141588 () Bool)

(declare-fun tp!984124 () Bool)

(declare-fun tp!984121 () Bool)

(assert (=> b!3141588 (= e!1959538 (and tp!984124 tp!984121))))

(declare-fun b!3141589 () Bool)

(declare-fun tp!984125 () Bool)

(declare-fun tp!984123 () Bool)

(assert (=> b!3141589 (= e!1959538 (and tp!984125 tp!984123))))

(assert (= (and start!295972 res!1283071) b!3141584))

(assert (= (and b!3141584 res!1283072) b!3141586))

(assert (= (and start!295972 ((_ is ElementMatch!9669) r!17345)) b!3141585))

(assert (= (and start!295972 ((_ is Concat!14990) r!17345)) b!3141589))

(assert (= (and start!295972 ((_ is Star!9669) r!17345)) b!3141587))

(assert (= (and start!295972 ((_ is Union!9669) r!17345)) b!3141588))

(declare-fun m!3418167 () Bool)

(assert (=> b!3141586 m!3418167))

(declare-fun m!3418169 () Bool)

(assert (=> b!3141586 m!3418169))

(declare-fun m!3418171 () Bool)

(assert (=> start!295972 m!3418171))

(check-sat (not b!3141587) tp_is_empty!16901 (not b!3141586) (not start!295972) (not b!3141589) (not b!3141588))
(check-sat)
(get-model)

(declare-fun b!3141667 () Bool)

(declare-fun e!1959590 () Int)

(declare-fun call!225694 () Int)

(assert (=> b!3141667 (= e!1959590 (+ 1 call!225694))))

(declare-fun b!3141668 () Bool)

(declare-fun e!1959595 () Bool)

(declare-fun lt!1061239 () Int)

(declare-fun call!225689 () Int)

(assert (=> b!3141668 (= e!1959595 (> lt!1061239 call!225689))))

(declare-fun c!528051 () Bool)

(declare-fun c!528056 () Bool)

(declare-fun bm!225683 () Bool)

(declare-fun call!225693 () Int)

(assert (=> bm!225683 (= call!225693 (regexDepth!125 (ite c!528051 (reg!9998 (regOne!19851 r!17345)) (ite c!528056 (regTwo!19851 (regOne!19851 r!17345)) (regOne!19850 (regOne!19851 r!17345))))))))

(declare-fun b!3141669 () Bool)

(assert (=> b!3141669 (= c!528056 ((_ is Union!9669) (regOne!19851 r!17345)))))

(declare-fun e!1959596 () Int)

(declare-fun e!1959593 () Int)

(assert (=> b!3141669 (= e!1959596 e!1959593)))

(declare-fun b!3141670 () Bool)

(declare-fun e!1959591 () Int)

(assert (=> b!3141670 (= e!1959591 1)))

(declare-fun b!3141671 () Bool)

(assert (=> b!3141671 (= e!1959591 e!1959596)))

(assert (=> b!3141671 (= c!528051 ((_ is Star!9669) (regOne!19851 r!17345)))))

(declare-fun b!3141672 () Bool)

(assert (=> b!3141672 (= e!1959593 e!1959590)))

(declare-fun c!528053 () Bool)

(assert (=> b!3141672 (= c!528053 ((_ is Concat!14990) (regOne!19851 r!17345)))))

(declare-fun b!3141673 () Bool)

(declare-fun c!528055 () Bool)

(assert (=> b!3141673 (= c!528055 ((_ is Star!9669) (regOne!19851 r!17345)))))

(declare-fun e!1959598 () Bool)

(declare-fun e!1959592 () Bool)

(assert (=> b!3141673 (= e!1959598 e!1959592)))

(declare-fun b!3141674 () Bool)

(declare-fun e!1959589 () Bool)

(assert (=> b!3141674 (= e!1959589 e!1959598)))

(declare-fun c!528052 () Bool)

(assert (=> b!3141674 (= c!528052 ((_ is Concat!14990) (regOne!19851 r!17345)))))

(declare-fun bm!225684 () Bool)

(declare-fun call!225690 () Int)

(assert (=> bm!225684 (= call!225690 (regexDepth!125 (ite c!528056 (regOne!19851 (regOne!19851 r!17345)) (regTwo!19850 (regOne!19851 r!17345)))))))

(declare-fun b!3141675 () Bool)

(declare-fun e!1959594 () Bool)

(declare-fun call!225688 () Int)

(assert (=> b!3141675 (= e!1959594 (> lt!1061239 call!225688))))

(declare-fun b!3141676 () Bool)

(declare-fun e!1959597 () Bool)

(assert (=> b!3141676 (= e!1959597 e!1959589)))

(declare-fun c!528054 () Bool)

(assert (=> b!3141676 (= c!528054 ((_ is Union!9669) (regOne!19851 r!17345)))))

(declare-fun b!3141677 () Bool)

(assert (=> b!3141677 (= e!1959589 e!1959595)))

(declare-fun res!1283096 () Bool)

(declare-fun call!225691 () Int)

(assert (=> b!3141677 (= res!1283096 (> lt!1061239 call!225691))))

(assert (=> b!3141677 (=> (not res!1283096) (not e!1959595))))

(declare-fun bm!225686 () Bool)

(assert (=> bm!225686 (= call!225689 (regexDepth!125 (ite c!528054 (regTwo!19851 (regOne!19851 r!17345)) (ite c!528052 (regTwo!19850 (regOne!19851 r!17345)) (reg!9998 (regOne!19851 r!17345))))))))

(declare-fun b!3141678 () Bool)

(assert (=> b!3141678 (= e!1959590 1)))

(declare-fun b!3141679 () Bool)

(assert (=> b!3141679 (= e!1959596 (+ 1 call!225693))))

(declare-fun bm!225687 () Bool)

(declare-fun call!225692 () Int)

(assert (=> bm!225687 (= call!225692 call!225693)))

(declare-fun bm!225688 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!225688 (= call!225694 (maxBigInt!0 (ite c!528056 call!225690 call!225692) (ite c!528056 call!225692 call!225690)))))

(declare-fun b!3141680 () Bool)

(assert (=> b!3141680 (= e!1959593 (+ 1 call!225694))))

(declare-fun b!3141681 () Bool)

(declare-fun res!1283095 () Bool)

(assert (=> b!3141681 (=> (not res!1283095) (not e!1959594))))

(assert (=> b!3141681 (= res!1283095 (> lt!1061239 call!225691))))

(assert (=> b!3141681 (= e!1959598 e!1959594)))

(declare-fun bm!225685 () Bool)

(assert (=> bm!225685 (= call!225691 (regexDepth!125 (ite c!528054 (regOne!19851 (regOne!19851 r!17345)) (regOne!19850 (regOne!19851 r!17345)))))))

(declare-fun d!865796 () Bool)

(assert (=> d!865796 e!1959597))

(declare-fun res!1283094 () Bool)

(assert (=> d!865796 (=> (not res!1283094) (not e!1959597))))

(assert (=> d!865796 (= res!1283094 (> lt!1061239 0))))

(assert (=> d!865796 (= lt!1061239 e!1959591)))

(declare-fun c!528050 () Bool)

(assert (=> d!865796 (= c!528050 ((_ is ElementMatch!9669) (regOne!19851 r!17345)))))

(assert (=> d!865796 (= (regexDepth!125 (regOne!19851 r!17345)) lt!1061239)))

(declare-fun b!3141682 () Bool)

(assert (=> b!3141682 (= e!1959592 (= lt!1061239 1))))

(declare-fun b!3141683 () Bool)

(assert (=> b!3141683 (= e!1959592 (> lt!1061239 call!225688))))

(declare-fun bm!225689 () Bool)

(assert (=> bm!225689 (= call!225688 call!225689)))

(assert (= (and d!865796 c!528050) b!3141670))

(assert (= (and d!865796 (not c!528050)) b!3141671))

(assert (= (and b!3141671 c!528051) b!3141679))

(assert (= (and b!3141671 (not c!528051)) b!3141669))

(assert (= (and b!3141669 c!528056) b!3141680))

(assert (= (and b!3141669 (not c!528056)) b!3141672))

(assert (= (and b!3141672 c!528053) b!3141667))

(assert (= (and b!3141672 (not c!528053)) b!3141678))

(assert (= (or b!3141680 b!3141667) bm!225684))

(assert (= (or b!3141680 b!3141667) bm!225687))

(assert (= (or b!3141680 b!3141667) bm!225688))

(assert (= (or b!3141679 bm!225687) bm!225683))

(assert (= (and d!865796 res!1283094) b!3141676))

(assert (= (and b!3141676 c!528054) b!3141677))

(assert (= (and b!3141676 (not c!528054)) b!3141674))

(assert (= (and b!3141677 res!1283096) b!3141668))

(assert (= (and b!3141674 c!528052) b!3141681))

(assert (= (and b!3141674 (not c!528052)) b!3141673))

(assert (= (and b!3141681 res!1283095) b!3141675))

(assert (= (and b!3141673 c!528055) b!3141683))

(assert (= (and b!3141673 (not c!528055)) b!3141682))

(assert (= (or b!3141675 b!3141683) bm!225689))

(assert (= (or b!3141677 b!3141681) bm!225685))

(assert (= (or b!3141668 bm!225689) bm!225686))

(declare-fun m!3418179 () Bool)

(assert (=> bm!225688 m!3418179))

(declare-fun m!3418181 () Bool)

(assert (=> bm!225685 m!3418181))

(declare-fun m!3418183 () Bool)

(assert (=> bm!225686 m!3418183))

(declare-fun m!3418185 () Bool)

(assert (=> bm!225684 m!3418185))

(declare-fun m!3418187 () Bool)

(assert (=> bm!225683 m!3418187))

(assert (=> b!3141586 d!865796))

(declare-fun b!3141702 () Bool)

(declare-fun e!1959612 () Int)

(declare-fun call!225705 () Int)

(assert (=> b!3141702 (= e!1959612 (+ 1 call!225705))))

(declare-fun b!3141703 () Bool)

(declare-fun e!1959617 () Bool)

(declare-fun lt!1061240 () Int)

(declare-fun call!225700 () Int)

(assert (=> b!3141703 (= e!1959617 (> lt!1061240 call!225700))))

(declare-fun c!528064 () Bool)

(declare-fun c!528069 () Bool)

(declare-fun bm!225694 () Bool)

(declare-fun call!225704 () Int)

(assert (=> bm!225694 (= call!225704 (regexDepth!125 (ite c!528064 (reg!9998 r!17345) (ite c!528069 (regTwo!19851 r!17345) (regOne!19850 r!17345)))))))

(declare-fun b!3141704 () Bool)

(assert (=> b!3141704 (= c!528069 ((_ is Union!9669) r!17345))))

(declare-fun e!1959618 () Int)

(declare-fun e!1959615 () Int)

(assert (=> b!3141704 (= e!1959618 e!1959615)))

(declare-fun b!3141705 () Bool)

(declare-fun e!1959613 () Int)

(assert (=> b!3141705 (= e!1959613 1)))

(declare-fun b!3141706 () Bool)

(assert (=> b!3141706 (= e!1959613 e!1959618)))

(assert (=> b!3141706 (= c!528064 ((_ is Star!9669) r!17345))))

(declare-fun b!3141707 () Bool)

(assert (=> b!3141707 (= e!1959615 e!1959612)))

(declare-fun c!528066 () Bool)

(assert (=> b!3141707 (= c!528066 ((_ is Concat!14990) r!17345))))

(declare-fun b!3141708 () Bool)

(declare-fun c!528068 () Bool)

(assert (=> b!3141708 (= c!528068 ((_ is Star!9669) r!17345))))

(declare-fun e!1959620 () Bool)

(declare-fun e!1959614 () Bool)

(assert (=> b!3141708 (= e!1959620 e!1959614)))

(declare-fun b!3141709 () Bool)

(declare-fun e!1959611 () Bool)

(assert (=> b!3141709 (= e!1959611 e!1959620)))

(declare-fun c!528065 () Bool)

(assert (=> b!3141709 (= c!528065 ((_ is Concat!14990) r!17345))))

(declare-fun bm!225695 () Bool)

(declare-fun call!225701 () Int)

(assert (=> bm!225695 (= call!225701 (regexDepth!125 (ite c!528069 (regOne!19851 r!17345) (regTwo!19850 r!17345))))))

(declare-fun b!3141710 () Bool)

(declare-fun e!1959616 () Bool)

(declare-fun call!225699 () Int)

(assert (=> b!3141710 (= e!1959616 (> lt!1061240 call!225699))))

(declare-fun b!3141711 () Bool)

(declare-fun e!1959619 () Bool)

(assert (=> b!3141711 (= e!1959619 e!1959611)))

(declare-fun c!528067 () Bool)

(assert (=> b!3141711 (= c!528067 ((_ is Union!9669) r!17345))))

(declare-fun b!3141712 () Bool)

(assert (=> b!3141712 (= e!1959611 e!1959617)))

(declare-fun res!1283105 () Bool)

(declare-fun call!225702 () Int)

(assert (=> b!3141712 (= res!1283105 (> lt!1061240 call!225702))))

(assert (=> b!3141712 (=> (not res!1283105) (not e!1959617))))

(declare-fun bm!225697 () Bool)

(assert (=> bm!225697 (= call!225700 (regexDepth!125 (ite c!528067 (regTwo!19851 r!17345) (ite c!528065 (regTwo!19850 r!17345) (reg!9998 r!17345)))))))

(declare-fun b!3141713 () Bool)

(assert (=> b!3141713 (= e!1959612 1)))

(declare-fun b!3141714 () Bool)

(assert (=> b!3141714 (= e!1959618 (+ 1 call!225704))))

(declare-fun bm!225698 () Bool)

(declare-fun call!225703 () Int)

(assert (=> bm!225698 (= call!225703 call!225704)))

(declare-fun bm!225699 () Bool)

(assert (=> bm!225699 (= call!225705 (maxBigInt!0 (ite c!528069 call!225701 call!225703) (ite c!528069 call!225703 call!225701)))))

(declare-fun b!3141715 () Bool)

(assert (=> b!3141715 (= e!1959615 (+ 1 call!225705))))

(declare-fun b!3141716 () Bool)

(declare-fun res!1283104 () Bool)

(assert (=> b!3141716 (=> (not res!1283104) (not e!1959616))))

(assert (=> b!3141716 (= res!1283104 (> lt!1061240 call!225702))))

(assert (=> b!3141716 (= e!1959620 e!1959616)))

(declare-fun bm!225696 () Bool)

(assert (=> bm!225696 (= call!225702 (regexDepth!125 (ite c!528067 (regOne!19851 r!17345) (regOne!19850 r!17345))))))

(declare-fun d!865800 () Bool)

(assert (=> d!865800 e!1959619))

(declare-fun res!1283103 () Bool)

(assert (=> d!865800 (=> (not res!1283103) (not e!1959619))))

(assert (=> d!865800 (= res!1283103 (> lt!1061240 0))))

(assert (=> d!865800 (= lt!1061240 e!1959613)))

(declare-fun c!528063 () Bool)

(assert (=> d!865800 (= c!528063 ((_ is ElementMatch!9669) r!17345))))

(assert (=> d!865800 (= (regexDepth!125 r!17345) lt!1061240)))

(declare-fun b!3141717 () Bool)

(assert (=> b!3141717 (= e!1959614 (= lt!1061240 1))))

(declare-fun b!3141718 () Bool)

(assert (=> b!3141718 (= e!1959614 (> lt!1061240 call!225699))))

(declare-fun bm!225700 () Bool)

(assert (=> bm!225700 (= call!225699 call!225700)))

(assert (= (and d!865800 c!528063) b!3141705))

(assert (= (and d!865800 (not c!528063)) b!3141706))

(assert (= (and b!3141706 c!528064) b!3141714))

(assert (= (and b!3141706 (not c!528064)) b!3141704))

(assert (= (and b!3141704 c!528069) b!3141715))

(assert (= (and b!3141704 (not c!528069)) b!3141707))

(assert (= (and b!3141707 c!528066) b!3141702))

(assert (= (and b!3141707 (not c!528066)) b!3141713))

(assert (= (or b!3141715 b!3141702) bm!225695))

(assert (= (or b!3141715 b!3141702) bm!225698))

(assert (= (or b!3141715 b!3141702) bm!225699))

(assert (= (or b!3141714 bm!225698) bm!225694))

(assert (= (and d!865800 res!1283103) b!3141711))

(assert (= (and b!3141711 c!528067) b!3141712))

(assert (= (and b!3141711 (not c!528067)) b!3141709))

(assert (= (and b!3141712 res!1283105) b!3141703))

(assert (= (and b!3141709 c!528065) b!3141716))

(assert (= (and b!3141709 (not c!528065)) b!3141708))

(assert (= (and b!3141716 res!1283104) b!3141710))

(assert (= (and b!3141708 c!528068) b!3141718))

(assert (= (and b!3141708 (not c!528068)) b!3141717))

(assert (= (or b!3141710 b!3141718) bm!225700))

(assert (= (or b!3141712 b!3141716) bm!225696))

(assert (= (or b!3141703 bm!225700) bm!225697))

(declare-fun m!3418189 () Bool)

(assert (=> bm!225699 m!3418189))

(declare-fun m!3418191 () Bool)

(assert (=> bm!225696 m!3418191))

(declare-fun m!3418193 () Bool)

(assert (=> bm!225697 m!3418193))

(declare-fun m!3418195 () Bool)

(assert (=> bm!225695 m!3418195))

(declare-fun m!3418197 () Bool)

(assert (=> bm!225694 m!3418197))

(assert (=> b!3141586 d!865800))

(declare-fun b!3141771 () Bool)

(declare-fun e!1959658 () Bool)

(declare-fun e!1959656 () Bool)

(assert (=> b!3141771 (= e!1959658 e!1959656)))

(declare-fun c!528089 () Bool)

(assert (=> b!3141771 (= c!528089 ((_ is Star!9669) r!17345))))

(declare-fun b!3141772 () Bool)

(declare-fun res!1283124 () Bool)

(declare-fun e!1959660 () Bool)

(assert (=> b!3141772 (=> (not res!1283124) (not e!1959660))))

(declare-fun call!225728 () Bool)

(assert (=> b!3141772 (= res!1283124 call!225728)))

(declare-fun e!1959661 () Bool)

(assert (=> b!3141772 (= e!1959661 e!1959660)))

(declare-fun b!3141773 () Bool)

(declare-fun call!225729 () Bool)

(assert (=> b!3141773 (= e!1959660 call!225729)))

(declare-fun b!3141774 () Bool)

(declare-fun res!1283122 () Bool)

(declare-fun e!1959659 () Bool)

(assert (=> b!3141774 (=> res!1283122 e!1959659)))

(assert (=> b!3141774 (= res!1283122 (not ((_ is Concat!14990) r!17345)))))

(assert (=> b!3141774 (= e!1959661 e!1959659)))

(declare-fun call!225730 () Bool)

(declare-fun bm!225723 () Bool)

(declare-fun c!528088 () Bool)

(assert (=> bm!225723 (= call!225730 (validRegex!4402 (ite c!528089 (reg!9998 r!17345) (ite c!528088 (regTwo!19851 r!17345) (regOne!19850 r!17345)))))))

(declare-fun b!3141776 () Bool)

(declare-fun e!1959655 () Bool)

(assert (=> b!3141776 (= e!1959659 e!1959655)))

(declare-fun res!1283123 () Bool)

(assert (=> b!3141776 (=> (not res!1283123) (not e!1959655))))

(assert (=> b!3141776 (= res!1283123 call!225729)))

(declare-fun bm!225724 () Bool)

(assert (=> bm!225724 (= call!225729 call!225730)))

(declare-fun b!3141777 () Bool)

(assert (=> b!3141777 (= e!1959656 e!1959661)))

(assert (=> b!3141777 (= c!528088 ((_ is Union!9669) r!17345))))

(declare-fun b!3141778 () Bool)

(assert (=> b!3141778 (= e!1959655 call!225728)))

(declare-fun bm!225725 () Bool)

(assert (=> bm!225725 (= call!225728 (validRegex!4402 (ite c!528088 (regOne!19851 r!17345) (regTwo!19850 r!17345))))))

(declare-fun b!3141779 () Bool)

(declare-fun e!1959657 () Bool)

(assert (=> b!3141779 (= e!1959656 e!1959657)))

(declare-fun res!1283125 () Bool)

(declare-fun nullable!3303 (Regex!9669) Bool)

(assert (=> b!3141779 (= res!1283125 (not (nullable!3303 (reg!9998 r!17345))))))

(assert (=> b!3141779 (=> (not res!1283125) (not e!1959657))))

(declare-fun b!3141775 () Bool)

(assert (=> b!3141775 (= e!1959657 call!225730)))

(declare-fun d!865802 () Bool)

(declare-fun res!1283126 () Bool)

(assert (=> d!865802 (=> res!1283126 e!1959658)))

(assert (=> d!865802 (= res!1283126 ((_ is ElementMatch!9669) r!17345))))

(assert (=> d!865802 (= (validRegex!4402 r!17345) e!1959658)))

(assert (= (and d!865802 (not res!1283126)) b!3141771))

(assert (= (and b!3141771 c!528089) b!3141779))

(assert (= (and b!3141771 (not c!528089)) b!3141777))

(assert (= (and b!3141779 res!1283125) b!3141775))

(assert (= (and b!3141777 c!528088) b!3141772))

(assert (= (and b!3141777 (not c!528088)) b!3141774))

(assert (= (and b!3141772 res!1283124) b!3141773))

(assert (= (and b!3141774 (not res!1283122)) b!3141776))

(assert (= (and b!3141776 res!1283123) b!3141778))

(assert (= (or b!3141773 b!3141776) bm!225724))

(assert (= (or b!3141772 b!3141778) bm!225725))

(assert (= (or b!3141775 bm!225724) bm!225723))

(declare-fun m!3418219 () Bool)

(assert (=> bm!225723 m!3418219))

(declare-fun m!3418221 () Bool)

(assert (=> bm!225725 m!3418221))

(declare-fun m!3418223 () Bool)

(assert (=> b!3141779 m!3418223))

(assert (=> start!295972 d!865802))

(declare-fun e!1959670 () Bool)

(assert (=> b!3141589 (= tp!984125 e!1959670)))

(declare-fun b!3141817 () Bool)

(declare-fun tp!984170 () Bool)

(declare-fun tp!984167 () Bool)

(assert (=> b!3141817 (= e!1959670 (and tp!984170 tp!984167))))

(declare-fun b!3141818 () Bool)

(declare-fun tp!984166 () Bool)

(assert (=> b!3141818 (= e!1959670 tp!984166)))

(declare-fun b!3141816 () Bool)

(assert (=> b!3141816 (= e!1959670 tp_is_empty!16901)))

(declare-fun b!3141819 () Bool)

(declare-fun tp!984168 () Bool)

(declare-fun tp!984169 () Bool)

(assert (=> b!3141819 (= e!1959670 (and tp!984168 tp!984169))))

(assert (= (and b!3141589 ((_ is ElementMatch!9669) (regOne!19850 r!17345))) b!3141816))

(assert (= (and b!3141589 ((_ is Concat!14990) (regOne!19850 r!17345))) b!3141817))

(assert (= (and b!3141589 ((_ is Star!9669) (regOne!19850 r!17345))) b!3141818))

(assert (= (and b!3141589 ((_ is Union!9669) (regOne!19850 r!17345))) b!3141819))

(declare-fun e!1959672 () Bool)

(assert (=> b!3141589 (= tp!984123 e!1959672)))

(declare-fun b!3141825 () Bool)

(declare-fun tp!984180 () Bool)

(declare-fun tp!984177 () Bool)

(assert (=> b!3141825 (= e!1959672 (and tp!984180 tp!984177))))

(declare-fun b!3141826 () Bool)

(declare-fun tp!984176 () Bool)

(assert (=> b!3141826 (= e!1959672 tp!984176)))

(declare-fun b!3141824 () Bool)

(assert (=> b!3141824 (= e!1959672 tp_is_empty!16901)))

(declare-fun b!3141827 () Bool)

(declare-fun tp!984178 () Bool)

(declare-fun tp!984179 () Bool)

(assert (=> b!3141827 (= e!1959672 (and tp!984178 tp!984179))))

(assert (= (and b!3141589 ((_ is ElementMatch!9669) (regTwo!19850 r!17345))) b!3141824))

(assert (= (and b!3141589 ((_ is Concat!14990) (regTwo!19850 r!17345))) b!3141825))

(assert (= (and b!3141589 ((_ is Star!9669) (regTwo!19850 r!17345))) b!3141826))

(assert (= (and b!3141589 ((_ is Union!9669) (regTwo!19850 r!17345))) b!3141827))

(declare-fun e!1959673 () Bool)

(assert (=> b!3141587 (= tp!984122 e!1959673)))

(declare-fun b!3141829 () Bool)

(declare-fun tp!984185 () Bool)

(declare-fun tp!984182 () Bool)

(assert (=> b!3141829 (= e!1959673 (and tp!984185 tp!984182))))

(declare-fun b!3141830 () Bool)

(declare-fun tp!984181 () Bool)

(assert (=> b!3141830 (= e!1959673 tp!984181)))

(declare-fun b!3141828 () Bool)

(assert (=> b!3141828 (= e!1959673 tp_is_empty!16901)))

(declare-fun b!3141831 () Bool)

(declare-fun tp!984183 () Bool)

(declare-fun tp!984184 () Bool)

(assert (=> b!3141831 (= e!1959673 (and tp!984183 tp!984184))))

(assert (= (and b!3141587 ((_ is ElementMatch!9669) (reg!9998 r!17345))) b!3141828))

(assert (= (and b!3141587 ((_ is Concat!14990) (reg!9998 r!17345))) b!3141829))

(assert (= (and b!3141587 ((_ is Star!9669) (reg!9998 r!17345))) b!3141830))

(assert (= (and b!3141587 ((_ is Union!9669) (reg!9998 r!17345))) b!3141831))

(declare-fun e!1959674 () Bool)

(assert (=> b!3141588 (= tp!984124 e!1959674)))

(declare-fun b!3141833 () Bool)

(declare-fun tp!984190 () Bool)

(declare-fun tp!984187 () Bool)

(assert (=> b!3141833 (= e!1959674 (and tp!984190 tp!984187))))

(declare-fun b!3141834 () Bool)

(declare-fun tp!984186 () Bool)

(assert (=> b!3141834 (= e!1959674 tp!984186)))

(declare-fun b!3141832 () Bool)

(assert (=> b!3141832 (= e!1959674 tp_is_empty!16901)))

(declare-fun b!3141835 () Bool)

(declare-fun tp!984188 () Bool)

(declare-fun tp!984189 () Bool)

(assert (=> b!3141835 (= e!1959674 (and tp!984188 tp!984189))))

(assert (= (and b!3141588 ((_ is ElementMatch!9669) (regOne!19851 r!17345))) b!3141832))

(assert (= (and b!3141588 ((_ is Concat!14990) (regOne!19851 r!17345))) b!3141833))

(assert (= (and b!3141588 ((_ is Star!9669) (regOne!19851 r!17345))) b!3141834))

(assert (= (and b!3141588 ((_ is Union!9669) (regOne!19851 r!17345))) b!3141835))

(declare-fun e!1959675 () Bool)

(assert (=> b!3141588 (= tp!984121 e!1959675)))

(declare-fun b!3141837 () Bool)

(declare-fun tp!984195 () Bool)

(declare-fun tp!984192 () Bool)

(assert (=> b!3141837 (= e!1959675 (and tp!984195 tp!984192))))

(declare-fun b!3141838 () Bool)

(declare-fun tp!984191 () Bool)

(assert (=> b!3141838 (= e!1959675 tp!984191)))

(declare-fun b!3141836 () Bool)

(assert (=> b!3141836 (= e!1959675 tp_is_empty!16901)))

(declare-fun b!3141839 () Bool)

(declare-fun tp!984193 () Bool)

(declare-fun tp!984194 () Bool)

(assert (=> b!3141839 (= e!1959675 (and tp!984193 tp!984194))))

(assert (= (and b!3141588 ((_ is ElementMatch!9669) (regTwo!19851 r!17345))) b!3141836))

(assert (= (and b!3141588 ((_ is Concat!14990) (regTwo!19851 r!17345))) b!3141837))

(assert (= (and b!3141588 ((_ is Star!9669) (regTwo!19851 r!17345))) b!3141838))

(assert (= (and b!3141588 ((_ is Union!9669) (regTwo!19851 r!17345))) b!3141839))

(check-sat tp_is_empty!16901 (not b!3141826) (not b!3141830) (not b!3141835) (not b!3141827) (not bm!225684) (not b!3141825) (not bm!225685) (not bm!225699) (not b!3141833) (not bm!225725) (not bm!225695) (not b!3141819) (not b!3141779) (not bm!225697) (not b!3141834) (not bm!225696) (not bm!225723) (not b!3141818) (not b!3141829) (not bm!225686) (not b!3141831) (not b!3141817) (not b!3141837) (not b!3141839) (not bm!225688) (not bm!225694) (not bm!225683) (not b!3141838))
(check-sat)

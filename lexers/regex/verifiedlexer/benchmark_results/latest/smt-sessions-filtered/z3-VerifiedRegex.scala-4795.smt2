; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246800 () Bool)

(assert start!246800)

(declare-fun b!2539673 () Bool)

(declare-fun e!1606067 () Bool)

(declare-fun tp!811192 () Bool)

(declare-fun tp!811189 () Bool)

(assert (=> b!2539673 (= e!1606067 (and tp!811192 tp!811189))))

(declare-fun b!2539674 () Bool)

(declare-fun res!1070702 () Bool)

(declare-fun e!1606068 () Bool)

(assert (=> b!2539674 (=> (not res!1070702) (not e!1606068))))

(declare-datatypes ((C!15288 0))(
  ( (C!15289 (val!9296 Int)) )
))
(declare-datatypes ((Regex!7565 0))(
  ( (ElementMatch!7565 (c!406353 C!15288)) (Concat!12261 (regOne!15642 Regex!7565) (regTwo!15642 Regex!7565)) (EmptyExpr!7565) (Star!7565 (reg!7894 Regex!7565)) (EmptyLang!7565) (Union!7565 (regOne!15643 Regex!7565) (regTwo!15643 Regex!7565)) )
))
(declare-fun r!27340 () Regex!7565)

(get-info :version)

(assert (=> b!2539674 (= res!1070702 (and (not ((_ is EmptyExpr!7565) r!27340)) (not ((_ is EmptyLang!7565) r!27340)) (not ((_ is ElementMatch!7565) r!27340)) ((_ is Union!7565) r!27340)))))

(declare-fun b!2539675 () Bool)

(declare-fun tp!811194 () Bool)

(declare-fun tp!811193 () Bool)

(assert (=> b!2539675 (= e!1606067 (and tp!811194 tp!811193))))

(declare-fun b!2539676 () Bool)

(declare-fun res!1070697 () Bool)

(assert (=> b!2539676 (=> (not res!1070697) (not e!1606068))))

(declare-datatypes ((List!29630 0))(
  ( (Nil!29530) (Cons!29530 (h!34950 C!15288) (t!211329 List!29630)) )
))
(declare-fun tl!4068 () List!29630)

(declare-fun c!14016 () C!15288)

(declare-fun nullable!2482 (Regex!7565) Bool)

(declare-fun derivative!260 (Regex!7565 List!29630) Regex!7565)

(declare-fun derivativeStep!2134 (Regex!7565 C!15288) Regex!7565)

(assert (=> b!2539676 (= res!1070697 (nullable!2482 (derivative!260 (derivativeStep!2134 r!27340 c!14016) tl!4068)))))

(declare-fun b!2539677 () Bool)

(declare-fun res!1070700 () Bool)

(declare-fun e!1606066 () Bool)

(assert (=> b!2539677 (=> res!1070700 e!1606066)))

(declare-fun validRegex!3191 (Regex!7565) Bool)

(assert (=> b!2539677 (= res!1070700 (not (validRegex!3191 (regTwo!15643 r!27340))))))

(declare-fun b!2539678 () Bool)

(declare-fun tp!811191 () Bool)

(assert (=> b!2539678 (= e!1606067 tp!811191)))

(declare-fun b!2539679 () Bool)

(assert (=> b!2539679 (= e!1606068 (not e!1606066))))

(declare-fun res!1070699 () Bool)

(assert (=> b!2539679 (=> res!1070699 e!1606066)))

(assert (=> b!2539679 (= res!1070699 (not (validRegex!3191 (regOne!15643 r!27340))))))

(declare-fun lt!901848 () List!29630)

(declare-fun matchR!3520 (Regex!7565 List!29630) Bool)

(assert (=> b!2539679 (= (matchR!3520 (regTwo!15643 r!27340) lt!901848) (matchR!3520 (derivative!260 (regTwo!15643 r!27340) lt!901848) Nil!29530))))

(declare-datatypes ((Unit!43331 0))(
  ( (Unit!43332) )
))
(declare-fun lt!901847 () Unit!43331)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!166 (Regex!7565 List!29630) Unit!43331)

(assert (=> b!2539679 (= lt!901847 (lemmaMatchRIsSameAsWholeDerivativeAndNil!166 (regTwo!15643 r!27340) lt!901848))))

(assert (=> b!2539679 (= (matchR!3520 (regOne!15643 r!27340) lt!901848) (matchR!3520 (derivative!260 (regOne!15643 r!27340) lt!901848) Nil!29530))))

(declare-fun lt!901849 () Unit!43331)

(assert (=> b!2539679 (= lt!901849 (lemmaMatchRIsSameAsWholeDerivativeAndNil!166 (regOne!15643 r!27340) lt!901848))))

(assert (=> b!2539679 (= (matchR!3520 r!27340 lt!901848) (matchR!3520 (derivative!260 r!27340 lt!901848) Nil!29530))))

(declare-fun lt!901850 () Unit!43331)

(assert (=> b!2539679 (= lt!901850 (lemmaMatchRIsSameAsWholeDerivativeAndNil!166 r!27340 lt!901848))))

(assert (=> b!2539679 (= lt!901848 (Cons!29530 c!14016 tl!4068))))

(declare-fun b!2539680 () Bool)

(assert (=> b!2539680 (= e!1606066 (matchR!3520 r!27340 lt!901848))))

(declare-fun b!2539681 () Bool)

(declare-fun res!1070698 () Bool)

(assert (=> b!2539681 (=> (not res!1070698) (not e!1606068))))

(assert (=> b!2539681 (= res!1070698 (not (nullable!2482 (derivative!260 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) tl!4068))))))

(declare-fun b!2539682 () Bool)

(declare-fun res!1070696 () Bool)

(assert (=> b!2539682 (=> (not res!1070696) (not e!1606068))))

(assert (=> b!2539682 (= res!1070696 (not (nullable!2482 (derivative!260 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) tl!4068))))))

(declare-fun res!1070701 () Bool)

(assert (=> start!246800 (=> (not res!1070701) (not e!1606068))))

(assert (=> start!246800 (= res!1070701 (validRegex!3191 r!27340))))

(assert (=> start!246800 e!1606068))

(assert (=> start!246800 e!1606067))

(declare-fun tp_is_empty!12985 () Bool)

(assert (=> start!246800 tp_is_empty!12985))

(declare-fun e!1606065 () Bool)

(assert (=> start!246800 e!1606065))

(declare-fun b!2539683 () Bool)

(assert (=> b!2539683 (= e!1606067 tp_is_empty!12985)))

(declare-fun b!2539684 () Bool)

(declare-fun tp!811190 () Bool)

(assert (=> b!2539684 (= e!1606065 (and tp_is_empty!12985 tp!811190))))

(assert (= (and start!246800 res!1070701) b!2539676))

(assert (= (and b!2539676 res!1070697) b!2539674))

(assert (= (and b!2539674 res!1070702) b!2539681))

(assert (= (and b!2539681 res!1070698) b!2539682))

(assert (= (and b!2539682 res!1070696) b!2539679))

(assert (= (and b!2539679 (not res!1070699)) b!2539677))

(assert (= (and b!2539677 (not res!1070700)) b!2539680))

(assert (= (and start!246800 ((_ is ElementMatch!7565) r!27340)) b!2539683))

(assert (= (and start!246800 ((_ is Concat!12261) r!27340)) b!2539673))

(assert (= (and start!246800 ((_ is Star!7565) r!27340)) b!2539678))

(assert (= (and start!246800 ((_ is Union!7565) r!27340)) b!2539675))

(assert (= (and start!246800 ((_ is Cons!29530) tl!4068)) b!2539684))

(declare-fun m!2886937 () Bool)

(assert (=> b!2539676 m!2886937))

(assert (=> b!2539676 m!2886937))

(declare-fun m!2886939 () Bool)

(assert (=> b!2539676 m!2886939))

(assert (=> b!2539676 m!2886939))

(declare-fun m!2886941 () Bool)

(assert (=> b!2539676 m!2886941))

(declare-fun m!2886943 () Bool)

(assert (=> b!2539677 m!2886943))

(declare-fun m!2886945 () Bool)

(assert (=> b!2539682 m!2886945))

(assert (=> b!2539682 m!2886945))

(declare-fun m!2886947 () Bool)

(assert (=> b!2539682 m!2886947))

(assert (=> b!2539682 m!2886947))

(declare-fun m!2886949 () Bool)

(assert (=> b!2539682 m!2886949))

(declare-fun m!2886951 () Bool)

(assert (=> b!2539679 m!2886951))

(declare-fun m!2886953 () Bool)

(assert (=> b!2539679 m!2886953))

(declare-fun m!2886955 () Bool)

(assert (=> b!2539679 m!2886955))

(declare-fun m!2886957 () Bool)

(assert (=> b!2539679 m!2886957))

(declare-fun m!2886959 () Bool)

(assert (=> b!2539679 m!2886959))

(declare-fun m!2886961 () Bool)

(assert (=> b!2539679 m!2886961))

(declare-fun m!2886963 () Bool)

(assert (=> b!2539679 m!2886963))

(declare-fun m!2886965 () Bool)

(assert (=> b!2539679 m!2886965))

(declare-fun m!2886967 () Bool)

(assert (=> b!2539679 m!2886967))

(assert (=> b!2539679 m!2886963))

(assert (=> b!2539679 m!2886959))

(declare-fun m!2886969 () Bool)

(assert (=> b!2539679 m!2886969))

(declare-fun m!2886971 () Bool)

(assert (=> b!2539679 m!2886971))

(declare-fun m!2886973 () Bool)

(assert (=> b!2539679 m!2886973))

(assert (=> b!2539679 m!2886969))

(declare-fun m!2886975 () Bool)

(assert (=> b!2539679 m!2886975))

(declare-fun m!2886977 () Bool)

(assert (=> b!2539681 m!2886977))

(assert (=> b!2539681 m!2886977))

(declare-fun m!2886979 () Bool)

(assert (=> b!2539681 m!2886979))

(assert (=> b!2539681 m!2886979))

(declare-fun m!2886981 () Bool)

(assert (=> b!2539681 m!2886981))

(declare-fun m!2886983 () Bool)

(assert (=> start!246800 m!2886983))

(assert (=> b!2539680 m!2886955))

(check-sat (not b!2539681) (not b!2539673) (not b!2539677) (not b!2539680) (not b!2539675) (not start!246800) (not b!2539682) (not b!2539676) (not b!2539679) (not b!2539678) (not b!2539684) tp_is_empty!12985)
(check-sat)
(get-model)

(declare-fun b!2539703 () Bool)

(declare-fun e!1606087 () Bool)

(declare-fun e!1606085 () Bool)

(assert (=> b!2539703 (= e!1606087 e!1606085)))

(declare-fun res!1070714 () Bool)

(assert (=> b!2539703 (= res!1070714 (not (nullable!2482 (reg!7894 r!27340))))))

(assert (=> b!2539703 (=> (not res!1070714) (not e!1606085))))

(declare-fun c!406359 () Bool)

(declare-fun call!160364 () Bool)

(declare-fun bm!160357 () Bool)

(declare-fun c!406358 () Bool)

(assert (=> bm!160357 (= call!160364 (validRegex!3191 (ite c!406359 (reg!7894 r!27340) (ite c!406358 (regTwo!15643 r!27340) (regOne!15642 r!27340)))))))

(declare-fun b!2539704 () Bool)

(declare-fun e!1606086 () Bool)

(declare-fun e!1606084 () Bool)

(assert (=> b!2539704 (= e!1606086 e!1606084)))

(declare-fun res!1070713 () Bool)

(assert (=> b!2539704 (=> (not res!1070713) (not e!1606084))))

(declare-fun call!160363 () Bool)

(assert (=> b!2539704 (= res!1070713 call!160363)))

(declare-fun d!721236 () Bool)

(declare-fun res!1070716 () Bool)

(declare-fun e!1606088 () Bool)

(assert (=> d!721236 (=> res!1070716 e!1606088)))

(assert (=> d!721236 (= res!1070716 ((_ is ElementMatch!7565) r!27340))))

(assert (=> d!721236 (= (validRegex!3191 r!27340) e!1606088)))

(declare-fun b!2539705 () Bool)

(assert (=> b!2539705 (= e!1606088 e!1606087)))

(assert (=> b!2539705 (= c!406359 ((_ is Star!7565) r!27340))))

(declare-fun b!2539706 () Bool)

(declare-fun e!1606089 () Bool)

(assert (=> b!2539706 (= e!1606087 e!1606089)))

(assert (=> b!2539706 (= c!406358 ((_ is Union!7565) r!27340))))

(declare-fun b!2539707 () Bool)

(declare-fun res!1070715 () Bool)

(declare-fun e!1606083 () Bool)

(assert (=> b!2539707 (=> (not res!1070715) (not e!1606083))))

(declare-fun call!160362 () Bool)

(assert (=> b!2539707 (= res!1070715 call!160362)))

(assert (=> b!2539707 (= e!1606089 e!1606083)))

(declare-fun b!2539708 () Bool)

(assert (=> b!2539708 (= e!1606085 call!160364)))

(declare-fun b!2539709 () Bool)

(assert (=> b!2539709 (= e!1606083 call!160363)))

(declare-fun bm!160358 () Bool)

(assert (=> bm!160358 (= call!160363 call!160364)))

(declare-fun b!2539710 () Bool)

(declare-fun res!1070717 () Bool)

(assert (=> b!2539710 (=> res!1070717 e!1606086)))

(assert (=> b!2539710 (= res!1070717 (not ((_ is Concat!12261) r!27340)))))

(assert (=> b!2539710 (= e!1606089 e!1606086)))

(declare-fun bm!160359 () Bool)

(assert (=> bm!160359 (= call!160362 (validRegex!3191 (ite c!406358 (regOne!15643 r!27340) (regTwo!15642 r!27340))))))

(declare-fun b!2539711 () Bool)

(assert (=> b!2539711 (= e!1606084 call!160362)))

(assert (= (and d!721236 (not res!1070716)) b!2539705))

(assert (= (and b!2539705 c!406359) b!2539703))

(assert (= (and b!2539705 (not c!406359)) b!2539706))

(assert (= (and b!2539703 res!1070714) b!2539708))

(assert (= (and b!2539706 c!406358) b!2539707))

(assert (= (and b!2539706 (not c!406358)) b!2539710))

(assert (= (and b!2539707 res!1070715) b!2539709))

(assert (= (and b!2539710 (not res!1070717)) b!2539704))

(assert (= (and b!2539704 res!1070713) b!2539711))

(assert (= (or b!2539707 b!2539711) bm!160359))

(assert (= (or b!2539709 b!2539704) bm!160358))

(assert (= (or b!2539708 bm!160358) bm!160357))

(declare-fun m!2886985 () Bool)

(assert (=> b!2539703 m!2886985))

(declare-fun m!2886987 () Bool)

(assert (=> bm!160357 m!2886987))

(declare-fun m!2886989 () Bool)

(assert (=> bm!160359 m!2886989))

(assert (=> start!246800 d!721236))

(declare-fun d!721238 () Bool)

(assert (=> d!721238 (= (matchR!3520 (regTwo!15643 r!27340) lt!901848) (matchR!3520 (derivative!260 (regTwo!15643 r!27340) lt!901848) Nil!29530))))

(declare-fun lt!901853 () Unit!43331)

(declare-fun choose!15022 (Regex!7565 List!29630) Unit!43331)

(assert (=> d!721238 (= lt!901853 (choose!15022 (regTwo!15643 r!27340) lt!901848))))

(assert (=> d!721238 (validRegex!3191 (regTwo!15643 r!27340))))

(assert (=> d!721238 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!166 (regTwo!15643 r!27340) lt!901848) lt!901853)))

(declare-fun bs!469362 () Bool)

(assert (= bs!469362 d!721238))

(assert (=> bs!469362 m!2886957))

(assert (=> bs!469362 m!2886969))

(assert (=> bs!469362 m!2886943))

(assert (=> bs!469362 m!2886969))

(assert (=> bs!469362 m!2886975))

(declare-fun m!2886991 () Bool)

(assert (=> bs!469362 m!2886991))

(assert (=> b!2539679 d!721238))

(declare-fun b!2539744 () Bool)

(declare-fun res!1070736 () Bool)

(declare-fun e!1606108 () Bool)

(assert (=> b!2539744 (=> (not res!1070736) (not e!1606108))))

(declare-fun isEmpty!16983 (List!29630) Bool)

(declare-fun tail!4062 (List!29630) List!29630)

(assert (=> b!2539744 (= res!1070736 (isEmpty!16983 (tail!4062 Nil!29530)))))

(declare-fun b!2539745 () Bool)

(declare-fun e!1606112 () Bool)

(declare-fun e!1606111 () Bool)

(assert (=> b!2539745 (= e!1606112 e!1606111)))

(declare-fun c!406370 () Bool)

(assert (=> b!2539745 (= c!406370 ((_ is EmptyLang!7565) (derivative!260 r!27340 lt!901848)))))

(declare-fun b!2539746 () Bool)

(declare-fun lt!901858 () Bool)

(declare-fun call!160367 () Bool)

(assert (=> b!2539746 (= e!1606112 (= lt!901858 call!160367))))

(declare-fun bm!160362 () Bool)

(assert (=> bm!160362 (= call!160367 (isEmpty!16983 Nil!29530))))

(declare-fun b!2539747 () Bool)

(assert (=> b!2539747 (= e!1606111 (not lt!901858))))

(declare-fun b!2539748 () Bool)

(declare-fun e!1606106 () Bool)

(assert (=> b!2539748 (= e!1606106 (nullable!2482 (derivative!260 r!27340 lt!901848)))))

(declare-fun d!721240 () Bool)

(assert (=> d!721240 e!1606112))

(declare-fun c!406369 () Bool)

(assert (=> d!721240 (= c!406369 ((_ is EmptyExpr!7565) (derivative!260 r!27340 lt!901848)))))

(assert (=> d!721240 (= lt!901858 e!1606106)))

(declare-fun c!406368 () Bool)

(assert (=> d!721240 (= c!406368 (isEmpty!16983 Nil!29530))))

(assert (=> d!721240 (validRegex!3191 (derivative!260 r!27340 lt!901848))))

(assert (=> d!721240 (= (matchR!3520 (derivative!260 r!27340 lt!901848) Nil!29530) lt!901858)))

(declare-fun b!2539749 () Bool)

(declare-fun e!1606107 () Bool)

(declare-fun e!1606110 () Bool)

(assert (=> b!2539749 (= e!1606107 e!1606110)))

(declare-fun res!1070738 () Bool)

(assert (=> b!2539749 (=> res!1070738 e!1606110)))

(assert (=> b!2539749 (= res!1070738 call!160367)))

(declare-fun b!2539750 () Bool)

(declare-fun res!1070734 () Bool)

(assert (=> b!2539750 (=> res!1070734 e!1606110)))

(assert (=> b!2539750 (= res!1070734 (not (isEmpty!16983 (tail!4062 Nil!29530))))))

(declare-fun b!2539751 () Bool)

(declare-fun head!5787 (List!29630) C!15288)

(assert (=> b!2539751 (= e!1606106 (matchR!3520 (derivativeStep!2134 (derivative!260 r!27340 lt!901848) (head!5787 Nil!29530)) (tail!4062 Nil!29530)))))

(declare-fun b!2539752 () Bool)

(declare-fun res!1070735 () Bool)

(declare-fun e!1606109 () Bool)

(assert (=> b!2539752 (=> res!1070735 e!1606109)))

(assert (=> b!2539752 (= res!1070735 (not ((_ is ElementMatch!7565) (derivative!260 r!27340 lt!901848))))))

(assert (=> b!2539752 (= e!1606111 e!1606109)))

(declare-fun b!2539753 () Bool)

(declare-fun res!1070741 () Bool)

(assert (=> b!2539753 (=> (not res!1070741) (not e!1606108))))

(assert (=> b!2539753 (= res!1070741 (not call!160367))))

(declare-fun b!2539754 () Bool)

(assert (=> b!2539754 (= e!1606109 e!1606107)))

(declare-fun res!1070739 () Bool)

(assert (=> b!2539754 (=> (not res!1070739) (not e!1606107))))

(assert (=> b!2539754 (= res!1070739 (not lt!901858))))

(declare-fun b!2539755 () Bool)

(assert (=> b!2539755 (= e!1606108 (= (head!5787 Nil!29530) (c!406353 (derivative!260 r!27340 lt!901848))))))

(declare-fun b!2539756 () Bool)

(declare-fun res!1070737 () Bool)

(assert (=> b!2539756 (=> res!1070737 e!1606109)))

(assert (=> b!2539756 (= res!1070737 e!1606108)))

(declare-fun res!1070740 () Bool)

(assert (=> b!2539756 (=> (not res!1070740) (not e!1606108))))

(assert (=> b!2539756 (= res!1070740 lt!901858)))

(declare-fun b!2539757 () Bool)

(assert (=> b!2539757 (= e!1606110 (not (= (head!5787 Nil!29530) (c!406353 (derivative!260 r!27340 lt!901848)))))))

(assert (= (and d!721240 c!406368) b!2539748))

(assert (= (and d!721240 (not c!406368)) b!2539751))

(assert (= (and d!721240 c!406369) b!2539746))

(assert (= (and d!721240 (not c!406369)) b!2539745))

(assert (= (and b!2539745 c!406370) b!2539747))

(assert (= (and b!2539745 (not c!406370)) b!2539752))

(assert (= (and b!2539752 (not res!1070735)) b!2539756))

(assert (= (and b!2539756 res!1070740) b!2539753))

(assert (= (and b!2539753 res!1070741) b!2539744))

(assert (= (and b!2539744 res!1070736) b!2539755))

(assert (= (and b!2539756 (not res!1070737)) b!2539754))

(assert (= (and b!2539754 res!1070739) b!2539749))

(assert (= (and b!2539749 (not res!1070738)) b!2539750))

(assert (= (and b!2539750 (not res!1070734)) b!2539757))

(assert (= (or b!2539746 b!2539749 b!2539753) bm!160362))

(declare-fun m!2886995 () Bool)

(assert (=> d!721240 m!2886995))

(assert (=> d!721240 m!2886959))

(declare-fun m!2886997 () Bool)

(assert (=> d!721240 m!2886997))

(declare-fun m!2886999 () Bool)

(assert (=> b!2539757 m!2886999))

(declare-fun m!2887001 () Bool)

(assert (=> b!2539744 m!2887001))

(assert (=> b!2539744 m!2887001))

(declare-fun m!2887003 () Bool)

(assert (=> b!2539744 m!2887003))

(assert (=> b!2539751 m!2886999))

(assert (=> b!2539751 m!2886959))

(assert (=> b!2539751 m!2886999))

(declare-fun m!2887005 () Bool)

(assert (=> b!2539751 m!2887005))

(assert (=> b!2539751 m!2887001))

(assert (=> b!2539751 m!2887005))

(assert (=> b!2539751 m!2887001))

(declare-fun m!2887007 () Bool)

(assert (=> b!2539751 m!2887007))

(assert (=> b!2539750 m!2887001))

(assert (=> b!2539750 m!2887001))

(assert (=> b!2539750 m!2887003))

(assert (=> b!2539748 m!2886959))

(declare-fun m!2887009 () Bool)

(assert (=> b!2539748 m!2887009))

(assert (=> bm!160362 m!2886995))

(assert (=> b!2539755 m!2886999))

(assert (=> b!2539679 d!721240))

(declare-fun b!2539760 () Bool)

(declare-fun e!1606118 () Bool)

(declare-fun e!1606116 () Bool)

(assert (=> b!2539760 (= e!1606118 e!1606116)))

(declare-fun res!1070743 () Bool)

(assert (=> b!2539760 (= res!1070743 (not (nullable!2482 (reg!7894 (regOne!15643 r!27340)))))))

(assert (=> b!2539760 (=> (not res!1070743) (not e!1606116))))

(declare-fun bm!160363 () Bool)

(declare-fun call!160370 () Bool)

(declare-fun c!406373 () Bool)

(declare-fun c!406372 () Bool)

(assert (=> bm!160363 (= call!160370 (validRegex!3191 (ite c!406373 (reg!7894 (regOne!15643 r!27340)) (ite c!406372 (regTwo!15643 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))))))

(declare-fun b!2539761 () Bool)

(declare-fun e!1606117 () Bool)

(declare-fun e!1606115 () Bool)

(assert (=> b!2539761 (= e!1606117 e!1606115)))

(declare-fun res!1070742 () Bool)

(assert (=> b!2539761 (=> (not res!1070742) (not e!1606115))))

(declare-fun call!160369 () Bool)

(assert (=> b!2539761 (= res!1070742 call!160369)))

(declare-fun d!721246 () Bool)

(declare-fun res!1070745 () Bool)

(declare-fun e!1606119 () Bool)

(assert (=> d!721246 (=> res!1070745 e!1606119)))

(assert (=> d!721246 (= res!1070745 ((_ is ElementMatch!7565) (regOne!15643 r!27340)))))

(assert (=> d!721246 (= (validRegex!3191 (regOne!15643 r!27340)) e!1606119)))

(declare-fun b!2539762 () Bool)

(assert (=> b!2539762 (= e!1606119 e!1606118)))

(assert (=> b!2539762 (= c!406373 ((_ is Star!7565) (regOne!15643 r!27340)))))

(declare-fun b!2539763 () Bool)

(declare-fun e!1606120 () Bool)

(assert (=> b!2539763 (= e!1606118 e!1606120)))

(assert (=> b!2539763 (= c!406372 ((_ is Union!7565) (regOne!15643 r!27340)))))

(declare-fun b!2539764 () Bool)

(declare-fun res!1070744 () Bool)

(declare-fun e!1606114 () Bool)

(assert (=> b!2539764 (=> (not res!1070744) (not e!1606114))))

(declare-fun call!160368 () Bool)

(assert (=> b!2539764 (= res!1070744 call!160368)))

(assert (=> b!2539764 (= e!1606120 e!1606114)))

(declare-fun b!2539765 () Bool)

(assert (=> b!2539765 (= e!1606116 call!160370)))

(declare-fun b!2539766 () Bool)

(assert (=> b!2539766 (= e!1606114 call!160369)))

(declare-fun bm!160364 () Bool)

(assert (=> bm!160364 (= call!160369 call!160370)))

(declare-fun b!2539767 () Bool)

(declare-fun res!1070746 () Bool)

(assert (=> b!2539767 (=> res!1070746 e!1606117)))

(assert (=> b!2539767 (= res!1070746 (not ((_ is Concat!12261) (regOne!15643 r!27340))))))

(assert (=> b!2539767 (= e!1606120 e!1606117)))

(declare-fun bm!160365 () Bool)

(assert (=> bm!160365 (= call!160368 (validRegex!3191 (ite c!406372 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))))))

(declare-fun b!2539768 () Bool)

(assert (=> b!2539768 (= e!1606115 call!160368)))

(assert (= (and d!721246 (not res!1070745)) b!2539762))

(assert (= (and b!2539762 c!406373) b!2539760))

(assert (= (and b!2539762 (not c!406373)) b!2539763))

(assert (= (and b!2539760 res!1070743) b!2539765))

(assert (= (and b!2539763 c!406372) b!2539764))

(assert (= (and b!2539763 (not c!406372)) b!2539767))

(assert (= (and b!2539764 res!1070744) b!2539766))

(assert (= (and b!2539767 (not res!1070746)) b!2539761))

(assert (= (and b!2539761 res!1070742) b!2539768))

(assert (= (or b!2539764 b!2539768) bm!160365))

(assert (= (or b!2539766 b!2539761) bm!160364))

(assert (= (or b!2539765 bm!160364) bm!160363))

(declare-fun m!2887019 () Bool)

(assert (=> b!2539760 m!2887019))

(declare-fun m!2887021 () Bool)

(assert (=> bm!160363 m!2887021))

(declare-fun m!2887023 () Bool)

(assert (=> bm!160365 m!2887023))

(assert (=> b!2539679 d!721246))

(declare-fun b!2539769 () Bool)

(declare-fun res!1070749 () Bool)

(declare-fun e!1606123 () Bool)

(assert (=> b!2539769 (=> (not res!1070749) (not e!1606123))))

(assert (=> b!2539769 (= res!1070749 (isEmpty!16983 (tail!4062 Nil!29530)))))

(declare-fun b!2539770 () Bool)

(declare-fun e!1606127 () Bool)

(declare-fun e!1606126 () Bool)

(assert (=> b!2539770 (= e!1606127 e!1606126)))

(declare-fun c!406376 () Bool)

(assert (=> b!2539770 (= c!406376 ((_ is EmptyLang!7565) (derivative!260 (regTwo!15643 r!27340) lt!901848)))))

(declare-fun b!2539771 () Bool)

(declare-fun lt!901860 () Bool)

(declare-fun call!160371 () Bool)

(assert (=> b!2539771 (= e!1606127 (= lt!901860 call!160371))))

(declare-fun bm!160366 () Bool)

(assert (=> bm!160366 (= call!160371 (isEmpty!16983 Nil!29530))))

(declare-fun b!2539772 () Bool)

(assert (=> b!2539772 (= e!1606126 (not lt!901860))))

(declare-fun b!2539773 () Bool)

(declare-fun e!1606121 () Bool)

(assert (=> b!2539773 (= e!1606121 (nullable!2482 (derivative!260 (regTwo!15643 r!27340) lt!901848)))))

(declare-fun d!721250 () Bool)

(assert (=> d!721250 e!1606127))

(declare-fun c!406375 () Bool)

(assert (=> d!721250 (= c!406375 ((_ is EmptyExpr!7565) (derivative!260 (regTwo!15643 r!27340) lt!901848)))))

(assert (=> d!721250 (= lt!901860 e!1606121)))

(declare-fun c!406374 () Bool)

(assert (=> d!721250 (= c!406374 (isEmpty!16983 Nil!29530))))

(assert (=> d!721250 (validRegex!3191 (derivative!260 (regTwo!15643 r!27340) lt!901848))))

(assert (=> d!721250 (= (matchR!3520 (derivative!260 (regTwo!15643 r!27340) lt!901848) Nil!29530) lt!901860)))

(declare-fun b!2539774 () Bool)

(declare-fun e!1606122 () Bool)

(declare-fun e!1606125 () Bool)

(assert (=> b!2539774 (= e!1606122 e!1606125)))

(declare-fun res!1070751 () Bool)

(assert (=> b!2539774 (=> res!1070751 e!1606125)))

(assert (=> b!2539774 (= res!1070751 call!160371)))

(declare-fun b!2539775 () Bool)

(declare-fun res!1070747 () Bool)

(assert (=> b!2539775 (=> res!1070747 e!1606125)))

(assert (=> b!2539775 (= res!1070747 (not (isEmpty!16983 (tail!4062 Nil!29530))))))

(declare-fun b!2539776 () Bool)

(assert (=> b!2539776 (= e!1606121 (matchR!3520 (derivativeStep!2134 (derivative!260 (regTwo!15643 r!27340) lt!901848) (head!5787 Nil!29530)) (tail!4062 Nil!29530)))))

(declare-fun b!2539777 () Bool)

(declare-fun res!1070748 () Bool)

(declare-fun e!1606124 () Bool)

(assert (=> b!2539777 (=> res!1070748 e!1606124)))

(assert (=> b!2539777 (= res!1070748 (not ((_ is ElementMatch!7565) (derivative!260 (regTwo!15643 r!27340) lt!901848))))))

(assert (=> b!2539777 (= e!1606126 e!1606124)))

(declare-fun b!2539778 () Bool)

(declare-fun res!1070754 () Bool)

(assert (=> b!2539778 (=> (not res!1070754) (not e!1606123))))

(assert (=> b!2539778 (= res!1070754 (not call!160371))))

(declare-fun b!2539779 () Bool)

(assert (=> b!2539779 (= e!1606124 e!1606122)))

(declare-fun res!1070752 () Bool)

(assert (=> b!2539779 (=> (not res!1070752) (not e!1606122))))

(assert (=> b!2539779 (= res!1070752 (not lt!901860))))

(declare-fun b!2539780 () Bool)

(assert (=> b!2539780 (= e!1606123 (= (head!5787 Nil!29530) (c!406353 (derivative!260 (regTwo!15643 r!27340) lt!901848))))))

(declare-fun b!2539781 () Bool)

(declare-fun res!1070750 () Bool)

(assert (=> b!2539781 (=> res!1070750 e!1606124)))

(assert (=> b!2539781 (= res!1070750 e!1606123)))

(declare-fun res!1070753 () Bool)

(assert (=> b!2539781 (=> (not res!1070753) (not e!1606123))))

(assert (=> b!2539781 (= res!1070753 lt!901860)))

(declare-fun b!2539782 () Bool)

(assert (=> b!2539782 (= e!1606125 (not (= (head!5787 Nil!29530) (c!406353 (derivative!260 (regTwo!15643 r!27340) lt!901848)))))))

(assert (= (and d!721250 c!406374) b!2539773))

(assert (= (and d!721250 (not c!406374)) b!2539776))

(assert (= (and d!721250 c!406375) b!2539771))

(assert (= (and d!721250 (not c!406375)) b!2539770))

(assert (= (and b!2539770 c!406376) b!2539772))

(assert (= (and b!2539770 (not c!406376)) b!2539777))

(assert (= (and b!2539777 (not res!1070748)) b!2539781))

(assert (= (and b!2539781 res!1070753) b!2539778))

(assert (= (and b!2539778 res!1070754) b!2539769))

(assert (= (and b!2539769 res!1070749) b!2539780))

(assert (= (and b!2539781 (not res!1070750)) b!2539779))

(assert (= (and b!2539779 res!1070752) b!2539774))

(assert (= (and b!2539774 (not res!1070751)) b!2539775))

(assert (= (and b!2539775 (not res!1070747)) b!2539782))

(assert (= (or b!2539771 b!2539774 b!2539778) bm!160366))

(assert (=> d!721250 m!2886995))

(assert (=> d!721250 m!2886969))

(declare-fun m!2887025 () Bool)

(assert (=> d!721250 m!2887025))

(assert (=> b!2539782 m!2886999))

(assert (=> b!2539769 m!2887001))

(assert (=> b!2539769 m!2887001))

(assert (=> b!2539769 m!2887003))

(assert (=> b!2539776 m!2886999))

(assert (=> b!2539776 m!2886969))

(assert (=> b!2539776 m!2886999))

(declare-fun m!2887027 () Bool)

(assert (=> b!2539776 m!2887027))

(assert (=> b!2539776 m!2887001))

(assert (=> b!2539776 m!2887027))

(assert (=> b!2539776 m!2887001))

(declare-fun m!2887029 () Bool)

(assert (=> b!2539776 m!2887029))

(assert (=> b!2539775 m!2887001))

(assert (=> b!2539775 m!2887001))

(assert (=> b!2539775 m!2887003))

(assert (=> b!2539773 m!2886969))

(declare-fun m!2887031 () Bool)

(assert (=> b!2539773 m!2887031))

(assert (=> bm!160366 m!2886995))

(assert (=> b!2539780 m!2886999))

(assert (=> b!2539679 d!721250))

(declare-fun d!721252 () Bool)

(assert (=> d!721252 (= (matchR!3520 (regOne!15643 r!27340) lt!901848) (matchR!3520 (derivative!260 (regOne!15643 r!27340) lt!901848) Nil!29530))))

(declare-fun lt!901861 () Unit!43331)

(assert (=> d!721252 (= lt!901861 (choose!15022 (regOne!15643 r!27340) lt!901848))))

(assert (=> d!721252 (validRegex!3191 (regOne!15643 r!27340))))

(assert (=> d!721252 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!166 (regOne!15643 r!27340) lt!901848) lt!901861)))

(declare-fun bs!469364 () Bool)

(assert (= bs!469364 d!721252))

(assert (=> bs!469364 m!2886971))

(assert (=> bs!469364 m!2886963))

(assert (=> bs!469364 m!2886953))

(assert (=> bs!469364 m!2886963))

(assert (=> bs!469364 m!2886965))

(declare-fun m!2887033 () Bool)

(assert (=> bs!469364 m!2887033))

(assert (=> b!2539679 d!721252))

(declare-fun b!2539783 () Bool)

(declare-fun res!1070757 () Bool)

(declare-fun e!1606130 () Bool)

(assert (=> b!2539783 (=> (not res!1070757) (not e!1606130))))

(assert (=> b!2539783 (= res!1070757 (isEmpty!16983 (tail!4062 Nil!29530)))))

(declare-fun b!2539784 () Bool)

(declare-fun e!1606134 () Bool)

(declare-fun e!1606133 () Bool)

(assert (=> b!2539784 (= e!1606134 e!1606133)))

(declare-fun c!406379 () Bool)

(assert (=> b!2539784 (= c!406379 ((_ is EmptyLang!7565) (derivative!260 (regOne!15643 r!27340) lt!901848)))))

(declare-fun b!2539785 () Bool)

(declare-fun lt!901862 () Bool)

(declare-fun call!160372 () Bool)

(assert (=> b!2539785 (= e!1606134 (= lt!901862 call!160372))))

(declare-fun bm!160367 () Bool)

(assert (=> bm!160367 (= call!160372 (isEmpty!16983 Nil!29530))))

(declare-fun b!2539786 () Bool)

(assert (=> b!2539786 (= e!1606133 (not lt!901862))))

(declare-fun b!2539787 () Bool)

(declare-fun e!1606128 () Bool)

(assert (=> b!2539787 (= e!1606128 (nullable!2482 (derivative!260 (regOne!15643 r!27340) lt!901848)))))

(declare-fun d!721254 () Bool)

(assert (=> d!721254 e!1606134))

(declare-fun c!406378 () Bool)

(assert (=> d!721254 (= c!406378 ((_ is EmptyExpr!7565) (derivative!260 (regOne!15643 r!27340) lt!901848)))))

(assert (=> d!721254 (= lt!901862 e!1606128)))

(declare-fun c!406377 () Bool)

(assert (=> d!721254 (= c!406377 (isEmpty!16983 Nil!29530))))

(assert (=> d!721254 (validRegex!3191 (derivative!260 (regOne!15643 r!27340) lt!901848))))

(assert (=> d!721254 (= (matchR!3520 (derivative!260 (regOne!15643 r!27340) lt!901848) Nil!29530) lt!901862)))

(declare-fun b!2539788 () Bool)

(declare-fun e!1606129 () Bool)

(declare-fun e!1606132 () Bool)

(assert (=> b!2539788 (= e!1606129 e!1606132)))

(declare-fun res!1070759 () Bool)

(assert (=> b!2539788 (=> res!1070759 e!1606132)))

(assert (=> b!2539788 (= res!1070759 call!160372)))

(declare-fun b!2539789 () Bool)

(declare-fun res!1070755 () Bool)

(assert (=> b!2539789 (=> res!1070755 e!1606132)))

(assert (=> b!2539789 (= res!1070755 (not (isEmpty!16983 (tail!4062 Nil!29530))))))

(declare-fun b!2539790 () Bool)

(assert (=> b!2539790 (= e!1606128 (matchR!3520 (derivativeStep!2134 (derivative!260 (regOne!15643 r!27340) lt!901848) (head!5787 Nil!29530)) (tail!4062 Nil!29530)))))

(declare-fun b!2539791 () Bool)

(declare-fun res!1070756 () Bool)

(declare-fun e!1606131 () Bool)

(assert (=> b!2539791 (=> res!1070756 e!1606131)))

(assert (=> b!2539791 (= res!1070756 (not ((_ is ElementMatch!7565) (derivative!260 (regOne!15643 r!27340) lt!901848))))))

(assert (=> b!2539791 (= e!1606133 e!1606131)))

(declare-fun b!2539792 () Bool)

(declare-fun res!1070762 () Bool)

(assert (=> b!2539792 (=> (not res!1070762) (not e!1606130))))

(assert (=> b!2539792 (= res!1070762 (not call!160372))))

(declare-fun b!2539793 () Bool)

(assert (=> b!2539793 (= e!1606131 e!1606129)))

(declare-fun res!1070760 () Bool)

(assert (=> b!2539793 (=> (not res!1070760) (not e!1606129))))

(assert (=> b!2539793 (= res!1070760 (not lt!901862))))

(declare-fun b!2539794 () Bool)

(assert (=> b!2539794 (= e!1606130 (= (head!5787 Nil!29530) (c!406353 (derivative!260 (regOne!15643 r!27340) lt!901848))))))

(declare-fun b!2539795 () Bool)

(declare-fun res!1070758 () Bool)

(assert (=> b!2539795 (=> res!1070758 e!1606131)))

(assert (=> b!2539795 (= res!1070758 e!1606130)))

(declare-fun res!1070761 () Bool)

(assert (=> b!2539795 (=> (not res!1070761) (not e!1606130))))

(assert (=> b!2539795 (= res!1070761 lt!901862)))

(declare-fun b!2539796 () Bool)

(assert (=> b!2539796 (= e!1606132 (not (= (head!5787 Nil!29530) (c!406353 (derivative!260 (regOne!15643 r!27340) lt!901848)))))))

(assert (= (and d!721254 c!406377) b!2539787))

(assert (= (and d!721254 (not c!406377)) b!2539790))

(assert (= (and d!721254 c!406378) b!2539785))

(assert (= (and d!721254 (not c!406378)) b!2539784))

(assert (= (and b!2539784 c!406379) b!2539786))

(assert (= (and b!2539784 (not c!406379)) b!2539791))

(assert (= (and b!2539791 (not res!1070756)) b!2539795))

(assert (= (and b!2539795 res!1070761) b!2539792))

(assert (= (and b!2539792 res!1070762) b!2539783))

(assert (= (and b!2539783 res!1070757) b!2539794))

(assert (= (and b!2539795 (not res!1070758)) b!2539793))

(assert (= (and b!2539793 res!1070760) b!2539788))

(assert (= (and b!2539788 (not res!1070759)) b!2539789))

(assert (= (and b!2539789 (not res!1070755)) b!2539796))

(assert (= (or b!2539785 b!2539788 b!2539792) bm!160367))

(assert (=> d!721254 m!2886995))

(assert (=> d!721254 m!2886963))

(declare-fun m!2887035 () Bool)

(assert (=> d!721254 m!2887035))

(assert (=> b!2539796 m!2886999))

(assert (=> b!2539783 m!2887001))

(assert (=> b!2539783 m!2887001))

(assert (=> b!2539783 m!2887003))

(assert (=> b!2539790 m!2886999))

(assert (=> b!2539790 m!2886963))

(assert (=> b!2539790 m!2886999))

(declare-fun m!2887037 () Bool)

(assert (=> b!2539790 m!2887037))

(assert (=> b!2539790 m!2887001))

(assert (=> b!2539790 m!2887037))

(assert (=> b!2539790 m!2887001))

(declare-fun m!2887039 () Bool)

(assert (=> b!2539790 m!2887039))

(assert (=> b!2539789 m!2887001))

(assert (=> b!2539789 m!2887001))

(assert (=> b!2539789 m!2887003))

(assert (=> b!2539787 m!2886963))

(declare-fun m!2887041 () Bool)

(assert (=> b!2539787 m!2887041))

(assert (=> bm!160367 m!2886995))

(assert (=> b!2539794 m!2886999))

(assert (=> b!2539679 d!721254))

(declare-fun d!721256 () Bool)

(assert (=> d!721256 (= (matchR!3520 r!27340 lt!901848) (matchR!3520 (derivative!260 r!27340 lt!901848) Nil!29530))))

(declare-fun lt!901863 () Unit!43331)

(assert (=> d!721256 (= lt!901863 (choose!15022 r!27340 lt!901848))))

(assert (=> d!721256 (validRegex!3191 r!27340)))

(assert (=> d!721256 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!166 r!27340 lt!901848) lt!901863)))

(declare-fun bs!469365 () Bool)

(assert (= bs!469365 d!721256))

(assert (=> bs!469365 m!2886955))

(assert (=> bs!469365 m!2886959))

(assert (=> bs!469365 m!2886983))

(assert (=> bs!469365 m!2886959))

(assert (=> bs!469365 m!2886961))

(declare-fun m!2887043 () Bool)

(assert (=> bs!469365 m!2887043))

(assert (=> b!2539679 d!721256))

(declare-fun b!2539797 () Bool)

(declare-fun res!1070765 () Bool)

(declare-fun e!1606137 () Bool)

(assert (=> b!2539797 (=> (not res!1070765) (not e!1606137))))

(assert (=> b!2539797 (= res!1070765 (isEmpty!16983 (tail!4062 lt!901848)))))

(declare-fun b!2539798 () Bool)

(declare-fun e!1606141 () Bool)

(declare-fun e!1606140 () Bool)

(assert (=> b!2539798 (= e!1606141 e!1606140)))

(declare-fun c!406382 () Bool)

(assert (=> b!2539798 (= c!406382 ((_ is EmptyLang!7565) r!27340))))

(declare-fun b!2539799 () Bool)

(declare-fun lt!901864 () Bool)

(declare-fun call!160373 () Bool)

(assert (=> b!2539799 (= e!1606141 (= lt!901864 call!160373))))

(declare-fun bm!160368 () Bool)

(assert (=> bm!160368 (= call!160373 (isEmpty!16983 lt!901848))))

(declare-fun b!2539800 () Bool)

(assert (=> b!2539800 (= e!1606140 (not lt!901864))))

(declare-fun b!2539801 () Bool)

(declare-fun e!1606135 () Bool)

(assert (=> b!2539801 (= e!1606135 (nullable!2482 r!27340))))

(declare-fun d!721258 () Bool)

(assert (=> d!721258 e!1606141))

(declare-fun c!406381 () Bool)

(assert (=> d!721258 (= c!406381 ((_ is EmptyExpr!7565) r!27340))))

(assert (=> d!721258 (= lt!901864 e!1606135)))

(declare-fun c!406380 () Bool)

(assert (=> d!721258 (= c!406380 (isEmpty!16983 lt!901848))))

(assert (=> d!721258 (validRegex!3191 r!27340)))

(assert (=> d!721258 (= (matchR!3520 r!27340 lt!901848) lt!901864)))

(declare-fun b!2539802 () Bool)

(declare-fun e!1606136 () Bool)

(declare-fun e!1606139 () Bool)

(assert (=> b!2539802 (= e!1606136 e!1606139)))

(declare-fun res!1070767 () Bool)

(assert (=> b!2539802 (=> res!1070767 e!1606139)))

(assert (=> b!2539802 (= res!1070767 call!160373)))

(declare-fun b!2539803 () Bool)

(declare-fun res!1070763 () Bool)

(assert (=> b!2539803 (=> res!1070763 e!1606139)))

(assert (=> b!2539803 (= res!1070763 (not (isEmpty!16983 (tail!4062 lt!901848))))))

(declare-fun b!2539804 () Bool)

(assert (=> b!2539804 (= e!1606135 (matchR!3520 (derivativeStep!2134 r!27340 (head!5787 lt!901848)) (tail!4062 lt!901848)))))

(declare-fun b!2539805 () Bool)

(declare-fun res!1070764 () Bool)

(declare-fun e!1606138 () Bool)

(assert (=> b!2539805 (=> res!1070764 e!1606138)))

(assert (=> b!2539805 (= res!1070764 (not ((_ is ElementMatch!7565) r!27340)))))

(assert (=> b!2539805 (= e!1606140 e!1606138)))

(declare-fun b!2539806 () Bool)

(declare-fun res!1070770 () Bool)

(assert (=> b!2539806 (=> (not res!1070770) (not e!1606137))))

(assert (=> b!2539806 (= res!1070770 (not call!160373))))

(declare-fun b!2539807 () Bool)

(assert (=> b!2539807 (= e!1606138 e!1606136)))

(declare-fun res!1070768 () Bool)

(assert (=> b!2539807 (=> (not res!1070768) (not e!1606136))))

(assert (=> b!2539807 (= res!1070768 (not lt!901864))))

(declare-fun b!2539808 () Bool)

(assert (=> b!2539808 (= e!1606137 (= (head!5787 lt!901848) (c!406353 r!27340)))))

(declare-fun b!2539809 () Bool)

(declare-fun res!1070766 () Bool)

(assert (=> b!2539809 (=> res!1070766 e!1606138)))

(assert (=> b!2539809 (= res!1070766 e!1606137)))

(declare-fun res!1070769 () Bool)

(assert (=> b!2539809 (=> (not res!1070769) (not e!1606137))))

(assert (=> b!2539809 (= res!1070769 lt!901864)))

(declare-fun b!2539810 () Bool)

(assert (=> b!2539810 (= e!1606139 (not (= (head!5787 lt!901848) (c!406353 r!27340))))))

(assert (= (and d!721258 c!406380) b!2539801))

(assert (= (and d!721258 (not c!406380)) b!2539804))

(assert (= (and d!721258 c!406381) b!2539799))

(assert (= (and d!721258 (not c!406381)) b!2539798))

(assert (= (and b!2539798 c!406382) b!2539800))

(assert (= (and b!2539798 (not c!406382)) b!2539805))

(assert (= (and b!2539805 (not res!1070764)) b!2539809))

(assert (= (and b!2539809 res!1070769) b!2539806))

(assert (= (and b!2539806 res!1070770) b!2539797))

(assert (= (and b!2539797 res!1070765) b!2539808))

(assert (= (and b!2539809 (not res!1070766)) b!2539807))

(assert (= (and b!2539807 res!1070768) b!2539802))

(assert (= (and b!2539802 (not res!1070767)) b!2539803))

(assert (= (and b!2539803 (not res!1070763)) b!2539810))

(assert (= (or b!2539799 b!2539802 b!2539806) bm!160368))

(declare-fun m!2887045 () Bool)

(assert (=> d!721258 m!2887045))

(assert (=> d!721258 m!2886983))

(declare-fun m!2887047 () Bool)

(assert (=> b!2539810 m!2887047))

(declare-fun m!2887049 () Bool)

(assert (=> b!2539797 m!2887049))

(assert (=> b!2539797 m!2887049))

(declare-fun m!2887051 () Bool)

(assert (=> b!2539797 m!2887051))

(assert (=> b!2539804 m!2887047))

(assert (=> b!2539804 m!2887047))

(declare-fun m!2887053 () Bool)

(assert (=> b!2539804 m!2887053))

(assert (=> b!2539804 m!2887049))

(assert (=> b!2539804 m!2887053))

(assert (=> b!2539804 m!2887049))

(declare-fun m!2887055 () Bool)

(assert (=> b!2539804 m!2887055))

(assert (=> b!2539803 m!2887049))

(assert (=> b!2539803 m!2887049))

(assert (=> b!2539803 m!2887051))

(declare-fun m!2887057 () Bool)

(assert (=> b!2539801 m!2887057))

(assert (=> bm!160368 m!2887045))

(assert (=> b!2539808 m!2887047))

(assert (=> b!2539679 d!721258))

(declare-fun d!721260 () Bool)

(declare-fun lt!901867 () Regex!7565)

(assert (=> d!721260 (validRegex!3191 lt!901867)))

(declare-fun e!1606144 () Regex!7565)

(assert (=> d!721260 (= lt!901867 e!1606144)))

(declare-fun c!406385 () Bool)

(assert (=> d!721260 (= c!406385 ((_ is Cons!29530) lt!901848))))

(assert (=> d!721260 (validRegex!3191 r!27340)))

(assert (=> d!721260 (= (derivative!260 r!27340 lt!901848) lt!901867)))

(declare-fun b!2539815 () Bool)

(assert (=> b!2539815 (= e!1606144 (derivative!260 (derivativeStep!2134 r!27340 (h!34950 lt!901848)) (t!211329 lt!901848)))))

(declare-fun b!2539816 () Bool)

(assert (=> b!2539816 (= e!1606144 r!27340)))

(assert (= (and d!721260 c!406385) b!2539815))

(assert (= (and d!721260 (not c!406385)) b!2539816))

(declare-fun m!2887059 () Bool)

(assert (=> d!721260 m!2887059))

(assert (=> d!721260 m!2886983))

(declare-fun m!2887061 () Bool)

(assert (=> b!2539815 m!2887061))

(assert (=> b!2539815 m!2887061))

(declare-fun m!2887063 () Bool)

(assert (=> b!2539815 m!2887063))

(assert (=> b!2539679 d!721260))

(declare-fun d!721262 () Bool)

(declare-fun lt!901868 () Regex!7565)

(assert (=> d!721262 (validRegex!3191 lt!901868)))

(declare-fun e!1606145 () Regex!7565)

(assert (=> d!721262 (= lt!901868 e!1606145)))

(declare-fun c!406386 () Bool)

(assert (=> d!721262 (= c!406386 ((_ is Cons!29530) lt!901848))))

(assert (=> d!721262 (validRegex!3191 (regOne!15643 r!27340))))

(assert (=> d!721262 (= (derivative!260 (regOne!15643 r!27340) lt!901848) lt!901868)))

(declare-fun b!2539817 () Bool)

(assert (=> b!2539817 (= e!1606145 (derivative!260 (derivativeStep!2134 (regOne!15643 r!27340) (h!34950 lt!901848)) (t!211329 lt!901848)))))

(declare-fun b!2539818 () Bool)

(assert (=> b!2539818 (= e!1606145 (regOne!15643 r!27340))))

(assert (= (and d!721262 c!406386) b!2539817))

(assert (= (and d!721262 (not c!406386)) b!2539818))

(declare-fun m!2887065 () Bool)

(assert (=> d!721262 m!2887065))

(assert (=> d!721262 m!2886953))

(declare-fun m!2887067 () Bool)

(assert (=> b!2539817 m!2887067))

(assert (=> b!2539817 m!2887067))

(declare-fun m!2887069 () Bool)

(assert (=> b!2539817 m!2887069))

(assert (=> b!2539679 d!721262))

(declare-fun b!2539819 () Bool)

(declare-fun res!1070773 () Bool)

(declare-fun e!1606148 () Bool)

(assert (=> b!2539819 (=> (not res!1070773) (not e!1606148))))

(assert (=> b!2539819 (= res!1070773 (isEmpty!16983 (tail!4062 lt!901848)))))

(declare-fun b!2539820 () Bool)

(declare-fun e!1606152 () Bool)

(declare-fun e!1606151 () Bool)

(assert (=> b!2539820 (= e!1606152 e!1606151)))

(declare-fun c!406389 () Bool)

(assert (=> b!2539820 (= c!406389 ((_ is EmptyLang!7565) (regOne!15643 r!27340)))))

(declare-fun b!2539821 () Bool)

(declare-fun lt!901869 () Bool)

(declare-fun call!160374 () Bool)

(assert (=> b!2539821 (= e!1606152 (= lt!901869 call!160374))))

(declare-fun bm!160369 () Bool)

(assert (=> bm!160369 (= call!160374 (isEmpty!16983 lt!901848))))

(declare-fun b!2539822 () Bool)

(assert (=> b!2539822 (= e!1606151 (not lt!901869))))

(declare-fun b!2539823 () Bool)

(declare-fun e!1606146 () Bool)

(assert (=> b!2539823 (= e!1606146 (nullable!2482 (regOne!15643 r!27340)))))

(declare-fun d!721264 () Bool)

(assert (=> d!721264 e!1606152))

(declare-fun c!406388 () Bool)

(assert (=> d!721264 (= c!406388 ((_ is EmptyExpr!7565) (regOne!15643 r!27340)))))

(assert (=> d!721264 (= lt!901869 e!1606146)))

(declare-fun c!406387 () Bool)

(assert (=> d!721264 (= c!406387 (isEmpty!16983 lt!901848))))

(assert (=> d!721264 (validRegex!3191 (regOne!15643 r!27340))))

(assert (=> d!721264 (= (matchR!3520 (regOne!15643 r!27340) lt!901848) lt!901869)))

(declare-fun b!2539824 () Bool)

(declare-fun e!1606147 () Bool)

(declare-fun e!1606150 () Bool)

(assert (=> b!2539824 (= e!1606147 e!1606150)))

(declare-fun res!1070775 () Bool)

(assert (=> b!2539824 (=> res!1070775 e!1606150)))

(assert (=> b!2539824 (= res!1070775 call!160374)))

(declare-fun b!2539825 () Bool)

(declare-fun res!1070771 () Bool)

(assert (=> b!2539825 (=> res!1070771 e!1606150)))

(assert (=> b!2539825 (= res!1070771 (not (isEmpty!16983 (tail!4062 lt!901848))))))

(declare-fun b!2539826 () Bool)

(assert (=> b!2539826 (= e!1606146 (matchR!3520 (derivativeStep!2134 (regOne!15643 r!27340) (head!5787 lt!901848)) (tail!4062 lt!901848)))))

(declare-fun b!2539827 () Bool)

(declare-fun res!1070772 () Bool)

(declare-fun e!1606149 () Bool)

(assert (=> b!2539827 (=> res!1070772 e!1606149)))

(assert (=> b!2539827 (= res!1070772 (not ((_ is ElementMatch!7565) (regOne!15643 r!27340))))))

(assert (=> b!2539827 (= e!1606151 e!1606149)))

(declare-fun b!2539828 () Bool)

(declare-fun res!1070778 () Bool)

(assert (=> b!2539828 (=> (not res!1070778) (not e!1606148))))

(assert (=> b!2539828 (= res!1070778 (not call!160374))))

(declare-fun b!2539829 () Bool)

(assert (=> b!2539829 (= e!1606149 e!1606147)))

(declare-fun res!1070776 () Bool)

(assert (=> b!2539829 (=> (not res!1070776) (not e!1606147))))

(assert (=> b!2539829 (= res!1070776 (not lt!901869))))

(declare-fun b!2539830 () Bool)

(assert (=> b!2539830 (= e!1606148 (= (head!5787 lt!901848) (c!406353 (regOne!15643 r!27340))))))

(declare-fun b!2539831 () Bool)

(declare-fun res!1070774 () Bool)

(assert (=> b!2539831 (=> res!1070774 e!1606149)))

(assert (=> b!2539831 (= res!1070774 e!1606148)))

(declare-fun res!1070777 () Bool)

(assert (=> b!2539831 (=> (not res!1070777) (not e!1606148))))

(assert (=> b!2539831 (= res!1070777 lt!901869)))

(declare-fun b!2539832 () Bool)

(assert (=> b!2539832 (= e!1606150 (not (= (head!5787 lt!901848) (c!406353 (regOne!15643 r!27340)))))))

(assert (= (and d!721264 c!406387) b!2539823))

(assert (= (and d!721264 (not c!406387)) b!2539826))

(assert (= (and d!721264 c!406388) b!2539821))

(assert (= (and d!721264 (not c!406388)) b!2539820))

(assert (= (and b!2539820 c!406389) b!2539822))

(assert (= (and b!2539820 (not c!406389)) b!2539827))

(assert (= (and b!2539827 (not res!1070772)) b!2539831))

(assert (= (and b!2539831 res!1070777) b!2539828))

(assert (= (and b!2539828 res!1070778) b!2539819))

(assert (= (and b!2539819 res!1070773) b!2539830))

(assert (= (and b!2539831 (not res!1070774)) b!2539829))

(assert (= (and b!2539829 res!1070776) b!2539824))

(assert (= (and b!2539824 (not res!1070775)) b!2539825))

(assert (= (and b!2539825 (not res!1070771)) b!2539832))

(assert (= (or b!2539821 b!2539824 b!2539828) bm!160369))

(assert (=> d!721264 m!2887045))

(assert (=> d!721264 m!2886953))

(assert (=> b!2539832 m!2887047))

(assert (=> b!2539819 m!2887049))

(assert (=> b!2539819 m!2887049))

(assert (=> b!2539819 m!2887051))

(assert (=> b!2539826 m!2887047))

(assert (=> b!2539826 m!2887047))

(declare-fun m!2887071 () Bool)

(assert (=> b!2539826 m!2887071))

(assert (=> b!2539826 m!2887049))

(assert (=> b!2539826 m!2887071))

(assert (=> b!2539826 m!2887049))

(declare-fun m!2887073 () Bool)

(assert (=> b!2539826 m!2887073))

(assert (=> b!2539825 m!2887049))

(assert (=> b!2539825 m!2887049))

(assert (=> b!2539825 m!2887051))

(declare-fun m!2887075 () Bool)

(assert (=> b!2539823 m!2887075))

(assert (=> bm!160369 m!2887045))

(assert (=> b!2539830 m!2887047))

(assert (=> b!2539679 d!721264))

(declare-fun d!721266 () Bool)

(declare-fun lt!901870 () Regex!7565)

(assert (=> d!721266 (validRegex!3191 lt!901870)))

(declare-fun e!1606153 () Regex!7565)

(assert (=> d!721266 (= lt!901870 e!1606153)))

(declare-fun c!406390 () Bool)

(assert (=> d!721266 (= c!406390 ((_ is Cons!29530) lt!901848))))

(assert (=> d!721266 (validRegex!3191 (regTwo!15643 r!27340))))

(assert (=> d!721266 (= (derivative!260 (regTwo!15643 r!27340) lt!901848) lt!901870)))

(declare-fun b!2539833 () Bool)

(assert (=> b!2539833 (= e!1606153 (derivative!260 (derivativeStep!2134 (regTwo!15643 r!27340) (h!34950 lt!901848)) (t!211329 lt!901848)))))

(declare-fun b!2539834 () Bool)

(assert (=> b!2539834 (= e!1606153 (regTwo!15643 r!27340))))

(assert (= (and d!721266 c!406390) b!2539833))

(assert (= (and d!721266 (not c!406390)) b!2539834))

(declare-fun m!2887077 () Bool)

(assert (=> d!721266 m!2887077))

(assert (=> d!721266 m!2886943))

(declare-fun m!2887079 () Bool)

(assert (=> b!2539833 m!2887079))

(assert (=> b!2539833 m!2887079))

(declare-fun m!2887081 () Bool)

(assert (=> b!2539833 m!2887081))

(assert (=> b!2539679 d!721266))

(declare-fun b!2539835 () Bool)

(declare-fun res!1070781 () Bool)

(declare-fun e!1606156 () Bool)

(assert (=> b!2539835 (=> (not res!1070781) (not e!1606156))))

(assert (=> b!2539835 (= res!1070781 (isEmpty!16983 (tail!4062 lt!901848)))))

(declare-fun b!2539836 () Bool)

(declare-fun e!1606160 () Bool)

(declare-fun e!1606159 () Bool)

(assert (=> b!2539836 (= e!1606160 e!1606159)))

(declare-fun c!406393 () Bool)

(assert (=> b!2539836 (= c!406393 ((_ is EmptyLang!7565) (regTwo!15643 r!27340)))))

(declare-fun b!2539837 () Bool)

(declare-fun lt!901871 () Bool)

(declare-fun call!160375 () Bool)

(assert (=> b!2539837 (= e!1606160 (= lt!901871 call!160375))))

(declare-fun bm!160370 () Bool)

(assert (=> bm!160370 (= call!160375 (isEmpty!16983 lt!901848))))

(declare-fun b!2539838 () Bool)

(assert (=> b!2539838 (= e!1606159 (not lt!901871))))

(declare-fun b!2539839 () Bool)

(declare-fun e!1606154 () Bool)

(assert (=> b!2539839 (= e!1606154 (nullable!2482 (regTwo!15643 r!27340)))))

(declare-fun d!721268 () Bool)

(assert (=> d!721268 e!1606160))

(declare-fun c!406392 () Bool)

(assert (=> d!721268 (= c!406392 ((_ is EmptyExpr!7565) (regTwo!15643 r!27340)))))

(assert (=> d!721268 (= lt!901871 e!1606154)))

(declare-fun c!406391 () Bool)

(assert (=> d!721268 (= c!406391 (isEmpty!16983 lt!901848))))

(assert (=> d!721268 (validRegex!3191 (regTwo!15643 r!27340))))

(assert (=> d!721268 (= (matchR!3520 (regTwo!15643 r!27340) lt!901848) lt!901871)))

(declare-fun b!2539840 () Bool)

(declare-fun e!1606155 () Bool)

(declare-fun e!1606158 () Bool)

(assert (=> b!2539840 (= e!1606155 e!1606158)))

(declare-fun res!1070783 () Bool)

(assert (=> b!2539840 (=> res!1070783 e!1606158)))

(assert (=> b!2539840 (= res!1070783 call!160375)))

(declare-fun b!2539841 () Bool)

(declare-fun res!1070779 () Bool)

(assert (=> b!2539841 (=> res!1070779 e!1606158)))

(assert (=> b!2539841 (= res!1070779 (not (isEmpty!16983 (tail!4062 lt!901848))))))

(declare-fun b!2539842 () Bool)

(assert (=> b!2539842 (= e!1606154 (matchR!3520 (derivativeStep!2134 (regTwo!15643 r!27340) (head!5787 lt!901848)) (tail!4062 lt!901848)))))

(declare-fun b!2539843 () Bool)

(declare-fun res!1070780 () Bool)

(declare-fun e!1606157 () Bool)

(assert (=> b!2539843 (=> res!1070780 e!1606157)))

(assert (=> b!2539843 (= res!1070780 (not ((_ is ElementMatch!7565) (regTwo!15643 r!27340))))))

(assert (=> b!2539843 (= e!1606159 e!1606157)))

(declare-fun b!2539844 () Bool)

(declare-fun res!1070786 () Bool)

(assert (=> b!2539844 (=> (not res!1070786) (not e!1606156))))

(assert (=> b!2539844 (= res!1070786 (not call!160375))))

(declare-fun b!2539845 () Bool)

(assert (=> b!2539845 (= e!1606157 e!1606155)))

(declare-fun res!1070784 () Bool)

(assert (=> b!2539845 (=> (not res!1070784) (not e!1606155))))

(assert (=> b!2539845 (= res!1070784 (not lt!901871))))

(declare-fun b!2539846 () Bool)

(assert (=> b!2539846 (= e!1606156 (= (head!5787 lt!901848) (c!406353 (regTwo!15643 r!27340))))))

(declare-fun b!2539847 () Bool)

(declare-fun res!1070782 () Bool)

(assert (=> b!2539847 (=> res!1070782 e!1606157)))

(assert (=> b!2539847 (= res!1070782 e!1606156)))

(declare-fun res!1070785 () Bool)

(assert (=> b!2539847 (=> (not res!1070785) (not e!1606156))))

(assert (=> b!2539847 (= res!1070785 lt!901871)))

(declare-fun b!2539848 () Bool)

(assert (=> b!2539848 (= e!1606158 (not (= (head!5787 lt!901848) (c!406353 (regTwo!15643 r!27340)))))))

(assert (= (and d!721268 c!406391) b!2539839))

(assert (= (and d!721268 (not c!406391)) b!2539842))

(assert (= (and d!721268 c!406392) b!2539837))

(assert (= (and d!721268 (not c!406392)) b!2539836))

(assert (= (and b!2539836 c!406393) b!2539838))

(assert (= (and b!2539836 (not c!406393)) b!2539843))

(assert (= (and b!2539843 (not res!1070780)) b!2539847))

(assert (= (and b!2539847 res!1070785) b!2539844))

(assert (= (and b!2539844 res!1070786) b!2539835))

(assert (= (and b!2539835 res!1070781) b!2539846))

(assert (= (and b!2539847 (not res!1070782)) b!2539845))

(assert (= (and b!2539845 res!1070784) b!2539840))

(assert (= (and b!2539840 (not res!1070783)) b!2539841))

(assert (= (and b!2539841 (not res!1070779)) b!2539848))

(assert (= (or b!2539837 b!2539840 b!2539844) bm!160370))

(assert (=> d!721268 m!2887045))

(assert (=> d!721268 m!2886943))

(assert (=> b!2539848 m!2887047))

(assert (=> b!2539835 m!2887049))

(assert (=> b!2539835 m!2887049))

(assert (=> b!2539835 m!2887051))

(assert (=> b!2539842 m!2887047))

(assert (=> b!2539842 m!2887047))

(declare-fun m!2887083 () Bool)

(assert (=> b!2539842 m!2887083))

(assert (=> b!2539842 m!2887049))

(assert (=> b!2539842 m!2887083))

(assert (=> b!2539842 m!2887049))

(declare-fun m!2887085 () Bool)

(assert (=> b!2539842 m!2887085))

(assert (=> b!2539841 m!2887049))

(assert (=> b!2539841 m!2887049))

(assert (=> b!2539841 m!2887051))

(declare-fun m!2887087 () Bool)

(assert (=> b!2539839 m!2887087))

(assert (=> bm!160370 m!2887045))

(assert (=> b!2539846 m!2887047))

(assert (=> b!2539679 d!721268))

(assert (=> b!2539680 d!721258))

(declare-fun d!721270 () Bool)

(declare-fun nullableFct!713 (Regex!7565) Bool)

(assert (=> d!721270 (= (nullable!2482 (derivative!260 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) tl!4068)) (nullableFct!713 (derivative!260 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) tl!4068)))))

(declare-fun bs!469366 () Bool)

(assert (= bs!469366 d!721270))

(assert (=> bs!469366 m!2886947))

(declare-fun m!2887089 () Bool)

(assert (=> bs!469366 m!2887089))

(assert (=> b!2539682 d!721270))

(declare-fun d!721272 () Bool)

(declare-fun lt!901874 () Regex!7565)

(assert (=> d!721272 (validRegex!3191 lt!901874)))

(declare-fun e!1606165 () Regex!7565)

(assert (=> d!721272 (= lt!901874 e!1606165)))

(declare-fun c!406398 () Bool)

(assert (=> d!721272 (= c!406398 ((_ is Cons!29530) tl!4068))))

(assert (=> d!721272 (validRegex!3191 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016))))

(assert (=> d!721272 (= (derivative!260 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) tl!4068) lt!901874)))

(declare-fun b!2539857 () Bool)

(assert (=> b!2539857 (= e!1606165 (derivative!260 (derivativeStep!2134 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) (h!34950 tl!4068)) (t!211329 tl!4068)))))

(declare-fun b!2539858 () Bool)

(assert (=> b!2539858 (= e!1606165 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016))))

(assert (= (and d!721272 c!406398) b!2539857))

(assert (= (and d!721272 (not c!406398)) b!2539858))

(declare-fun m!2887091 () Bool)

(assert (=> d!721272 m!2887091))

(assert (=> d!721272 m!2886945))

(declare-fun m!2887093 () Bool)

(assert (=> d!721272 m!2887093))

(assert (=> b!2539857 m!2886945))

(declare-fun m!2887095 () Bool)

(assert (=> b!2539857 m!2887095))

(assert (=> b!2539857 m!2887095))

(declare-fun m!2887097 () Bool)

(assert (=> b!2539857 m!2887097))

(assert (=> b!2539682 d!721272))

(declare-fun d!721274 () Bool)

(declare-fun lt!901877 () Regex!7565)

(assert (=> d!721274 (validRegex!3191 lt!901877)))

(declare-fun e!1606185 () Regex!7565)

(assert (=> d!721274 (= lt!901877 e!1606185)))

(declare-fun c!406415 () Bool)

(assert (=> d!721274 (= c!406415 (or ((_ is EmptyExpr!7565) (regTwo!15643 r!27340)) ((_ is EmptyLang!7565) (regTwo!15643 r!27340))))))

(assert (=> d!721274 (validRegex!3191 (regTwo!15643 r!27340))))

(assert (=> d!721274 (= (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) lt!901877)))

(declare-fun c!406419 () Bool)

(declare-fun bm!160387 () Bool)

(declare-fun call!160395 () Regex!7565)

(declare-fun c!406418 () Bool)

(assert (=> bm!160387 (= call!160395 (derivativeStep!2134 (ite c!406419 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406418 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340)))) c!14016))))

(declare-fun call!160393 () Regex!7565)

(declare-fun bm!160388 () Bool)

(assert (=> bm!160388 (= call!160393 (derivativeStep!2134 (ite c!406419 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340))) c!14016))))

(declare-fun bm!160389 () Bool)

(declare-fun call!160392 () Regex!7565)

(assert (=> bm!160389 (= call!160392 call!160395)))

(declare-fun bm!160390 () Bool)

(declare-fun call!160394 () Regex!7565)

(assert (=> bm!160390 (= call!160394 call!160392)))

(declare-fun b!2539891 () Bool)

(declare-fun e!1606183 () Regex!7565)

(declare-fun e!1606186 () Regex!7565)

(assert (=> b!2539891 (= e!1606183 e!1606186)))

(assert (=> b!2539891 (= c!406418 ((_ is Star!7565) (regTwo!15643 r!27340)))))

(declare-fun b!2539892 () Bool)

(declare-fun e!1606184 () Regex!7565)

(assert (=> b!2539892 (= e!1606185 e!1606184)))

(declare-fun c!406416 () Bool)

(assert (=> b!2539892 (= c!406416 ((_ is ElementMatch!7565) (regTwo!15643 r!27340)))))

(declare-fun b!2539893 () Bool)

(assert (=> b!2539893 (= e!1606186 (Concat!12261 call!160392 (regTwo!15643 r!27340)))))

(declare-fun b!2539894 () Bool)

(declare-fun e!1606182 () Regex!7565)

(assert (=> b!2539894 (= e!1606182 (Union!7565 (Concat!12261 call!160394 (regTwo!15642 (regTwo!15643 r!27340))) EmptyLang!7565))))

(declare-fun b!2539895 () Bool)

(assert (=> b!2539895 (= c!406419 ((_ is Union!7565) (regTwo!15643 r!27340)))))

(assert (=> b!2539895 (= e!1606184 e!1606183)))

(declare-fun b!2539896 () Bool)

(declare-fun c!406417 () Bool)

(assert (=> b!2539896 (= c!406417 (nullable!2482 (regOne!15642 (regTwo!15643 r!27340))))))

(assert (=> b!2539896 (= e!1606186 e!1606182)))

(declare-fun b!2539897 () Bool)

(assert (=> b!2539897 (= e!1606182 (Union!7565 (Concat!12261 call!160394 (regTwo!15642 (regTwo!15643 r!27340))) call!160393))))

(declare-fun b!2539898 () Bool)

(assert (=> b!2539898 (= e!1606183 (Union!7565 call!160393 call!160395))))

(declare-fun b!2539899 () Bool)

(assert (=> b!2539899 (= e!1606185 EmptyLang!7565)))

(declare-fun b!2539900 () Bool)

(assert (=> b!2539900 (= e!1606184 (ite (= c!14016 (c!406353 (regTwo!15643 r!27340))) EmptyExpr!7565 EmptyLang!7565))))

(assert (= (and d!721274 c!406415) b!2539899))

(assert (= (and d!721274 (not c!406415)) b!2539892))

(assert (= (and b!2539892 c!406416) b!2539900))

(assert (= (and b!2539892 (not c!406416)) b!2539895))

(assert (= (and b!2539895 c!406419) b!2539898))

(assert (= (and b!2539895 (not c!406419)) b!2539891))

(assert (= (and b!2539891 c!406418) b!2539893))

(assert (= (and b!2539891 (not c!406418)) b!2539896))

(assert (= (and b!2539896 c!406417) b!2539897))

(assert (= (and b!2539896 (not c!406417)) b!2539894))

(assert (= (or b!2539897 b!2539894) bm!160390))

(assert (= (or b!2539893 bm!160390) bm!160389))

(assert (= (or b!2539898 bm!160389) bm!160387))

(assert (= (or b!2539898 b!2539897) bm!160388))

(declare-fun m!2887099 () Bool)

(assert (=> d!721274 m!2887099))

(assert (=> d!721274 m!2886943))

(declare-fun m!2887101 () Bool)

(assert (=> bm!160387 m!2887101))

(declare-fun m!2887103 () Bool)

(assert (=> bm!160388 m!2887103))

(declare-fun m!2887105 () Bool)

(assert (=> b!2539896 m!2887105))

(assert (=> b!2539682 d!721274))

(declare-fun d!721276 () Bool)

(assert (=> d!721276 (= (nullable!2482 (derivative!260 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) tl!4068)) (nullableFct!713 (derivative!260 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) tl!4068)))))

(declare-fun bs!469367 () Bool)

(assert (= bs!469367 d!721276))

(assert (=> bs!469367 m!2886979))

(declare-fun m!2887107 () Bool)

(assert (=> bs!469367 m!2887107))

(assert (=> b!2539681 d!721276))

(declare-fun d!721278 () Bool)

(declare-fun lt!901878 () Regex!7565)

(assert (=> d!721278 (validRegex!3191 lt!901878)))

(declare-fun e!1606187 () Regex!7565)

(assert (=> d!721278 (= lt!901878 e!1606187)))

(declare-fun c!406420 () Bool)

(assert (=> d!721278 (= c!406420 ((_ is Cons!29530) tl!4068))))

(assert (=> d!721278 (validRegex!3191 (derivativeStep!2134 (regOne!15643 r!27340) c!14016))))

(assert (=> d!721278 (= (derivative!260 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) tl!4068) lt!901878)))

(declare-fun b!2539901 () Bool)

(assert (=> b!2539901 (= e!1606187 (derivative!260 (derivativeStep!2134 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) (h!34950 tl!4068)) (t!211329 tl!4068)))))

(declare-fun b!2539902 () Bool)

(assert (=> b!2539902 (= e!1606187 (derivativeStep!2134 (regOne!15643 r!27340) c!14016))))

(assert (= (and d!721278 c!406420) b!2539901))

(assert (= (and d!721278 (not c!406420)) b!2539902))

(declare-fun m!2887109 () Bool)

(assert (=> d!721278 m!2887109))

(assert (=> d!721278 m!2886977))

(declare-fun m!2887111 () Bool)

(assert (=> d!721278 m!2887111))

(assert (=> b!2539901 m!2886977))

(declare-fun m!2887113 () Bool)

(assert (=> b!2539901 m!2887113))

(assert (=> b!2539901 m!2887113))

(declare-fun m!2887115 () Bool)

(assert (=> b!2539901 m!2887115))

(assert (=> b!2539681 d!721278))

(declare-fun d!721280 () Bool)

(declare-fun lt!901879 () Regex!7565)

(assert (=> d!721280 (validRegex!3191 lt!901879)))

(declare-fun e!1606191 () Regex!7565)

(assert (=> d!721280 (= lt!901879 e!1606191)))

(declare-fun c!406421 () Bool)

(assert (=> d!721280 (= c!406421 (or ((_ is EmptyExpr!7565) (regOne!15643 r!27340)) ((_ is EmptyLang!7565) (regOne!15643 r!27340))))))

(assert (=> d!721280 (validRegex!3191 (regOne!15643 r!27340))))

(assert (=> d!721280 (= (derivativeStep!2134 (regOne!15643 r!27340) c!14016) lt!901879)))

(declare-fun bm!160391 () Bool)

(declare-fun c!406425 () Bool)

(declare-fun call!160399 () Regex!7565)

(declare-fun c!406424 () Bool)

(assert (=> bm!160391 (= call!160399 (derivativeStep!2134 (ite c!406425 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406424 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340)))) c!14016))))

(declare-fun bm!160392 () Bool)

(declare-fun call!160397 () Regex!7565)

(assert (=> bm!160392 (= call!160397 (derivativeStep!2134 (ite c!406425 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340))) c!14016))))

(declare-fun bm!160393 () Bool)

(declare-fun call!160396 () Regex!7565)

(assert (=> bm!160393 (= call!160396 call!160399)))

(declare-fun bm!160394 () Bool)

(declare-fun call!160398 () Regex!7565)

(assert (=> bm!160394 (= call!160398 call!160396)))

(declare-fun b!2539903 () Bool)

(declare-fun e!1606189 () Regex!7565)

(declare-fun e!1606192 () Regex!7565)

(assert (=> b!2539903 (= e!1606189 e!1606192)))

(assert (=> b!2539903 (= c!406424 ((_ is Star!7565) (regOne!15643 r!27340)))))

(declare-fun b!2539904 () Bool)

(declare-fun e!1606190 () Regex!7565)

(assert (=> b!2539904 (= e!1606191 e!1606190)))

(declare-fun c!406422 () Bool)

(assert (=> b!2539904 (= c!406422 ((_ is ElementMatch!7565) (regOne!15643 r!27340)))))

(declare-fun b!2539905 () Bool)

(assert (=> b!2539905 (= e!1606192 (Concat!12261 call!160396 (regOne!15643 r!27340)))))

(declare-fun b!2539906 () Bool)

(declare-fun e!1606188 () Regex!7565)

(assert (=> b!2539906 (= e!1606188 (Union!7565 (Concat!12261 call!160398 (regTwo!15642 (regOne!15643 r!27340))) EmptyLang!7565))))

(declare-fun b!2539907 () Bool)

(assert (=> b!2539907 (= c!406425 ((_ is Union!7565) (regOne!15643 r!27340)))))

(assert (=> b!2539907 (= e!1606190 e!1606189)))

(declare-fun b!2539908 () Bool)

(declare-fun c!406423 () Bool)

(assert (=> b!2539908 (= c!406423 (nullable!2482 (regOne!15642 (regOne!15643 r!27340))))))

(assert (=> b!2539908 (= e!1606192 e!1606188)))

(declare-fun b!2539909 () Bool)

(assert (=> b!2539909 (= e!1606188 (Union!7565 (Concat!12261 call!160398 (regTwo!15642 (regOne!15643 r!27340))) call!160397))))

(declare-fun b!2539910 () Bool)

(assert (=> b!2539910 (= e!1606189 (Union!7565 call!160397 call!160399))))

(declare-fun b!2539911 () Bool)

(assert (=> b!2539911 (= e!1606191 EmptyLang!7565)))

(declare-fun b!2539912 () Bool)

(assert (=> b!2539912 (= e!1606190 (ite (= c!14016 (c!406353 (regOne!15643 r!27340))) EmptyExpr!7565 EmptyLang!7565))))

(assert (= (and d!721280 c!406421) b!2539911))

(assert (= (and d!721280 (not c!406421)) b!2539904))

(assert (= (and b!2539904 c!406422) b!2539912))

(assert (= (and b!2539904 (not c!406422)) b!2539907))

(assert (= (and b!2539907 c!406425) b!2539910))

(assert (= (and b!2539907 (not c!406425)) b!2539903))

(assert (= (and b!2539903 c!406424) b!2539905))

(assert (= (and b!2539903 (not c!406424)) b!2539908))

(assert (= (and b!2539908 c!406423) b!2539909))

(assert (= (and b!2539908 (not c!406423)) b!2539906))

(assert (= (or b!2539909 b!2539906) bm!160394))

(assert (= (or b!2539905 bm!160394) bm!160393))

(assert (= (or b!2539910 bm!160393) bm!160391))

(assert (= (or b!2539910 b!2539909) bm!160392))

(declare-fun m!2887117 () Bool)

(assert (=> d!721280 m!2887117))

(assert (=> d!721280 m!2886953))

(declare-fun m!2887119 () Bool)

(assert (=> bm!160391 m!2887119))

(declare-fun m!2887121 () Bool)

(assert (=> bm!160392 m!2887121))

(declare-fun m!2887123 () Bool)

(assert (=> b!2539908 m!2887123))

(assert (=> b!2539681 d!721280))

(declare-fun d!721282 () Bool)

(assert (=> d!721282 (= (nullable!2482 (derivative!260 (derivativeStep!2134 r!27340 c!14016) tl!4068)) (nullableFct!713 (derivative!260 (derivativeStep!2134 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469368 () Bool)

(assert (= bs!469368 d!721282))

(assert (=> bs!469368 m!2886939))

(declare-fun m!2887125 () Bool)

(assert (=> bs!469368 m!2887125))

(assert (=> b!2539676 d!721282))

(declare-fun d!721284 () Bool)

(declare-fun lt!901881 () Regex!7565)

(assert (=> d!721284 (validRegex!3191 lt!901881)))

(declare-fun e!1606198 () Regex!7565)

(assert (=> d!721284 (= lt!901881 e!1606198)))

(declare-fun c!406431 () Bool)

(assert (=> d!721284 (= c!406431 ((_ is Cons!29530) tl!4068))))

(assert (=> d!721284 (validRegex!3191 (derivativeStep!2134 r!27340 c!14016))))

(assert (=> d!721284 (= (derivative!260 (derivativeStep!2134 r!27340 c!14016) tl!4068) lt!901881)))

(declare-fun b!2539923 () Bool)

(assert (=> b!2539923 (= e!1606198 (derivative!260 (derivativeStep!2134 (derivativeStep!2134 r!27340 c!14016) (h!34950 tl!4068)) (t!211329 tl!4068)))))

(declare-fun b!2539924 () Bool)

(assert (=> b!2539924 (= e!1606198 (derivativeStep!2134 r!27340 c!14016))))

(assert (= (and d!721284 c!406431) b!2539923))

(assert (= (and d!721284 (not c!406431)) b!2539924))

(declare-fun m!2887127 () Bool)

(assert (=> d!721284 m!2887127))

(assert (=> d!721284 m!2886937))

(declare-fun m!2887129 () Bool)

(assert (=> d!721284 m!2887129))

(assert (=> b!2539923 m!2886937))

(declare-fun m!2887131 () Bool)

(assert (=> b!2539923 m!2887131))

(assert (=> b!2539923 m!2887131))

(declare-fun m!2887133 () Bool)

(assert (=> b!2539923 m!2887133))

(assert (=> b!2539676 d!721284))

(declare-fun d!721286 () Bool)

(declare-fun lt!901882 () Regex!7565)

(assert (=> d!721286 (validRegex!3191 lt!901882)))

(declare-fun e!1606202 () Regex!7565)

(assert (=> d!721286 (= lt!901882 e!1606202)))

(declare-fun c!406432 () Bool)

(assert (=> d!721286 (= c!406432 (or ((_ is EmptyExpr!7565) r!27340) ((_ is EmptyLang!7565) r!27340)))))

(assert (=> d!721286 (validRegex!3191 r!27340)))

(assert (=> d!721286 (= (derivativeStep!2134 r!27340 c!14016) lt!901882)))

(declare-fun call!160407 () Regex!7565)

(declare-fun c!406436 () Bool)

(declare-fun c!406435 () Bool)

(declare-fun bm!160399 () Bool)

(assert (=> bm!160399 (= call!160407 (derivativeStep!2134 (ite c!406436 (regTwo!15643 r!27340) (ite c!406435 (reg!7894 r!27340) (regOne!15642 r!27340))) c!14016))))

(declare-fun bm!160400 () Bool)

(declare-fun call!160405 () Regex!7565)

(assert (=> bm!160400 (= call!160405 (derivativeStep!2134 (ite c!406436 (regOne!15643 r!27340) (regTwo!15642 r!27340)) c!14016))))

(declare-fun bm!160401 () Bool)

(declare-fun call!160404 () Regex!7565)

(assert (=> bm!160401 (= call!160404 call!160407)))

(declare-fun bm!160402 () Bool)

(declare-fun call!160406 () Regex!7565)

(assert (=> bm!160402 (= call!160406 call!160404)))

(declare-fun b!2539925 () Bool)

(declare-fun e!1606200 () Regex!7565)

(declare-fun e!1606203 () Regex!7565)

(assert (=> b!2539925 (= e!1606200 e!1606203)))

(assert (=> b!2539925 (= c!406435 ((_ is Star!7565) r!27340))))

(declare-fun b!2539926 () Bool)

(declare-fun e!1606201 () Regex!7565)

(assert (=> b!2539926 (= e!1606202 e!1606201)))

(declare-fun c!406433 () Bool)

(assert (=> b!2539926 (= c!406433 ((_ is ElementMatch!7565) r!27340))))

(declare-fun b!2539927 () Bool)

(assert (=> b!2539927 (= e!1606203 (Concat!12261 call!160404 r!27340))))

(declare-fun b!2539928 () Bool)

(declare-fun e!1606199 () Regex!7565)

(assert (=> b!2539928 (= e!1606199 (Union!7565 (Concat!12261 call!160406 (regTwo!15642 r!27340)) EmptyLang!7565))))

(declare-fun b!2539929 () Bool)

(assert (=> b!2539929 (= c!406436 ((_ is Union!7565) r!27340))))

(assert (=> b!2539929 (= e!1606201 e!1606200)))

(declare-fun b!2539930 () Bool)

(declare-fun c!406434 () Bool)

(assert (=> b!2539930 (= c!406434 (nullable!2482 (regOne!15642 r!27340)))))

(assert (=> b!2539930 (= e!1606203 e!1606199)))

(declare-fun b!2539931 () Bool)

(assert (=> b!2539931 (= e!1606199 (Union!7565 (Concat!12261 call!160406 (regTwo!15642 r!27340)) call!160405))))

(declare-fun b!2539932 () Bool)

(assert (=> b!2539932 (= e!1606200 (Union!7565 call!160405 call!160407))))

(declare-fun b!2539933 () Bool)

(assert (=> b!2539933 (= e!1606202 EmptyLang!7565)))

(declare-fun b!2539934 () Bool)

(assert (=> b!2539934 (= e!1606201 (ite (= c!14016 (c!406353 r!27340)) EmptyExpr!7565 EmptyLang!7565))))

(assert (= (and d!721286 c!406432) b!2539933))

(assert (= (and d!721286 (not c!406432)) b!2539926))

(assert (= (and b!2539926 c!406433) b!2539934))

(assert (= (and b!2539926 (not c!406433)) b!2539929))

(assert (= (and b!2539929 c!406436) b!2539932))

(assert (= (and b!2539929 (not c!406436)) b!2539925))

(assert (= (and b!2539925 c!406435) b!2539927))

(assert (= (and b!2539925 (not c!406435)) b!2539930))

(assert (= (and b!2539930 c!406434) b!2539931))

(assert (= (and b!2539930 (not c!406434)) b!2539928))

(assert (= (or b!2539931 b!2539928) bm!160402))

(assert (= (or b!2539927 bm!160402) bm!160401))

(assert (= (or b!2539932 bm!160401) bm!160399))

(assert (= (or b!2539932 b!2539931) bm!160400))

(declare-fun m!2887137 () Bool)

(assert (=> d!721286 m!2887137))

(assert (=> d!721286 m!2886983))

(declare-fun m!2887141 () Bool)

(assert (=> bm!160399 m!2887141))

(declare-fun m!2887145 () Bool)

(assert (=> bm!160400 m!2887145))

(declare-fun m!2887147 () Bool)

(assert (=> b!2539930 m!2887147))

(assert (=> b!2539676 d!721286))

(declare-fun b!2539935 () Bool)

(declare-fun e!1606208 () Bool)

(declare-fun e!1606206 () Bool)

(assert (=> b!2539935 (= e!1606208 e!1606206)))

(declare-fun res!1070788 () Bool)

(assert (=> b!2539935 (= res!1070788 (not (nullable!2482 (reg!7894 (regTwo!15643 r!27340)))))))

(assert (=> b!2539935 (=> (not res!1070788) (not e!1606206))))

(declare-fun c!406438 () Bool)

(declare-fun call!160410 () Bool)

(declare-fun c!406437 () Bool)

(declare-fun bm!160403 () Bool)

(assert (=> bm!160403 (= call!160410 (validRegex!3191 (ite c!406438 (reg!7894 (regTwo!15643 r!27340)) (ite c!406437 (regTwo!15643 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))))))

(declare-fun b!2539936 () Bool)

(declare-fun e!1606207 () Bool)

(declare-fun e!1606205 () Bool)

(assert (=> b!2539936 (= e!1606207 e!1606205)))

(declare-fun res!1070787 () Bool)

(assert (=> b!2539936 (=> (not res!1070787) (not e!1606205))))

(declare-fun call!160409 () Bool)

(assert (=> b!2539936 (= res!1070787 call!160409)))

(declare-fun d!721288 () Bool)

(declare-fun res!1070790 () Bool)

(declare-fun e!1606209 () Bool)

(assert (=> d!721288 (=> res!1070790 e!1606209)))

(assert (=> d!721288 (= res!1070790 ((_ is ElementMatch!7565) (regTwo!15643 r!27340)))))

(assert (=> d!721288 (= (validRegex!3191 (regTwo!15643 r!27340)) e!1606209)))

(declare-fun b!2539937 () Bool)

(assert (=> b!2539937 (= e!1606209 e!1606208)))

(assert (=> b!2539937 (= c!406438 ((_ is Star!7565) (regTwo!15643 r!27340)))))

(declare-fun b!2539938 () Bool)

(declare-fun e!1606210 () Bool)

(assert (=> b!2539938 (= e!1606208 e!1606210)))

(assert (=> b!2539938 (= c!406437 ((_ is Union!7565) (regTwo!15643 r!27340)))))

(declare-fun b!2539939 () Bool)

(declare-fun res!1070789 () Bool)

(declare-fun e!1606204 () Bool)

(assert (=> b!2539939 (=> (not res!1070789) (not e!1606204))))

(declare-fun call!160408 () Bool)

(assert (=> b!2539939 (= res!1070789 call!160408)))

(assert (=> b!2539939 (= e!1606210 e!1606204)))

(declare-fun b!2539940 () Bool)

(assert (=> b!2539940 (= e!1606206 call!160410)))

(declare-fun b!2539941 () Bool)

(assert (=> b!2539941 (= e!1606204 call!160409)))

(declare-fun bm!160404 () Bool)

(assert (=> bm!160404 (= call!160409 call!160410)))

(declare-fun b!2539942 () Bool)

(declare-fun res!1070791 () Bool)

(assert (=> b!2539942 (=> res!1070791 e!1606207)))

(assert (=> b!2539942 (= res!1070791 (not ((_ is Concat!12261) (regTwo!15643 r!27340))))))

(assert (=> b!2539942 (= e!1606210 e!1606207)))

(declare-fun bm!160405 () Bool)

(assert (=> bm!160405 (= call!160408 (validRegex!3191 (ite c!406437 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))))))

(declare-fun b!2539943 () Bool)

(assert (=> b!2539943 (= e!1606205 call!160408)))

(assert (= (and d!721288 (not res!1070790)) b!2539937))

(assert (= (and b!2539937 c!406438) b!2539935))

(assert (= (and b!2539937 (not c!406438)) b!2539938))

(assert (= (and b!2539935 res!1070788) b!2539940))

(assert (= (and b!2539938 c!406437) b!2539939))

(assert (= (and b!2539938 (not c!406437)) b!2539942))

(assert (= (and b!2539939 res!1070789) b!2539941))

(assert (= (and b!2539942 (not res!1070791)) b!2539936))

(assert (= (and b!2539936 res!1070787) b!2539943))

(assert (= (or b!2539939 b!2539943) bm!160405))

(assert (= (or b!2539941 b!2539936) bm!160404))

(assert (= (or b!2539940 bm!160404) bm!160403))

(declare-fun m!2887151 () Bool)

(assert (=> b!2539935 m!2887151))

(declare-fun m!2887153 () Bool)

(assert (=> bm!160403 m!2887153))

(declare-fun m!2887155 () Bool)

(assert (=> bm!160405 m!2887155))

(assert (=> b!2539677 d!721288))

(declare-fun e!1606213 () Bool)

(assert (=> b!2539673 (= tp!811192 e!1606213)))

(declare-fun b!2539957 () Bool)

(declare-fun tp!811208 () Bool)

(declare-fun tp!811207 () Bool)

(assert (=> b!2539957 (= e!1606213 (and tp!811208 tp!811207))))

(declare-fun b!2539955 () Bool)

(declare-fun tp!811205 () Bool)

(declare-fun tp!811206 () Bool)

(assert (=> b!2539955 (= e!1606213 (and tp!811205 tp!811206))))

(declare-fun b!2539954 () Bool)

(assert (=> b!2539954 (= e!1606213 tp_is_empty!12985)))

(declare-fun b!2539956 () Bool)

(declare-fun tp!811209 () Bool)

(assert (=> b!2539956 (= e!1606213 tp!811209)))

(assert (= (and b!2539673 ((_ is ElementMatch!7565) (regOne!15642 r!27340))) b!2539954))

(assert (= (and b!2539673 ((_ is Concat!12261) (regOne!15642 r!27340))) b!2539955))

(assert (= (and b!2539673 ((_ is Star!7565) (regOne!15642 r!27340))) b!2539956))

(assert (= (and b!2539673 ((_ is Union!7565) (regOne!15642 r!27340))) b!2539957))

(declare-fun e!1606214 () Bool)

(assert (=> b!2539673 (= tp!811189 e!1606214)))

(declare-fun b!2539961 () Bool)

(declare-fun tp!811213 () Bool)

(declare-fun tp!811212 () Bool)

(assert (=> b!2539961 (= e!1606214 (and tp!811213 tp!811212))))

(declare-fun b!2539959 () Bool)

(declare-fun tp!811210 () Bool)

(declare-fun tp!811211 () Bool)

(assert (=> b!2539959 (= e!1606214 (and tp!811210 tp!811211))))

(declare-fun b!2539958 () Bool)

(assert (=> b!2539958 (= e!1606214 tp_is_empty!12985)))

(declare-fun b!2539960 () Bool)

(declare-fun tp!811214 () Bool)

(assert (=> b!2539960 (= e!1606214 tp!811214)))

(assert (= (and b!2539673 ((_ is ElementMatch!7565) (regTwo!15642 r!27340))) b!2539958))

(assert (= (and b!2539673 ((_ is Concat!12261) (regTwo!15642 r!27340))) b!2539959))

(assert (= (and b!2539673 ((_ is Star!7565) (regTwo!15642 r!27340))) b!2539960))

(assert (= (and b!2539673 ((_ is Union!7565) (regTwo!15642 r!27340))) b!2539961))

(declare-fun b!2539966 () Bool)

(declare-fun e!1606217 () Bool)

(declare-fun tp!811217 () Bool)

(assert (=> b!2539966 (= e!1606217 (and tp_is_empty!12985 tp!811217))))

(assert (=> b!2539684 (= tp!811190 e!1606217)))

(assert (= (and b!2539684 ((_ is Cons!29530) (t!211329 tl!4068))) b!2539966))

(declare-fun e!1606218 () Bool)

(assert (=> b!2539675 (= tp!811194 e!1606218)))

(declare-fun b!2539970 () Bool)

(declare-fun tp!811221 () Bool)

(declare-fun tp!811220 () Bool)

(assert (=> b!2539970 (= e!1606218 (and tp!811221 tp!811220))))

(declare-fun b!2539968 () Bool)

(declare-fun tp!811218 () Bool)

(declare-fun tp!811219 () Bool)

(assert (=> b!2539968 (= e!1606218 (and tp!811218 tp!811219))))

(declare-fun b!2539967 () Bool)

(assert (=> b!2539967 (= e!1606218 tp_is_empty!12985)))

(declare-fun b!2539969 () Bool)

(declare-fun tp!811222 () Bool)

(assert (=> b!2539969 (= e!1606218 tp!811222)))

(assert (= (and b!2539675 ((_ is ElementMatch!7565) (regOne!15643 r!27340))) b!2539967))

(assert (= (and b!2539675 ((_ is Concat!12261) (regOne!15643 r!27340))) b!2539968))

(assert (= (and b!2539675 ((_ is Star!7565) (regOne!15643 r!27340))) b!2539969))

(assert (= (and b!2539675 ((_ is Union!7565) (regOne!15643 r!27340))) b!2539970))

(declare-fun e!1606219 () Bool)

(assert (=> b!2539675 (= tp!811193 e!1606219)))

(declare-fun b!2539974 () Bool)

(declare-fun tp!811226 () Bool)

(declare-fun tp!811225 () Bool)

(assert (=> b!2539974 (= e!1606219 (and tp!811226 tp!811225))))

(declare-fun b!2539972 () Bool)

(declare-fun tp!811223 () Bool)

(declare-fun tp!811224 () Bool)

(assert (=> b!2539972 (= e!1606219 (and tp!811223 tp!811224))))

(declare-fun b!2539971 () Bool)

(assert (=> b!2539971 (= e!1606219 tp_is_empty!12985)))

(declare-fun b!2539973 () Bool)

(declare-fun tp!811227 () Bool)

(assert (=> b!2539973 (= e!1606219 tp!811227)))

(assert (= (and b!2539675 ((_ is ElementMatch!7565) (regTwo!15643 r!27340))) b!2539971))

(assert (= (and b!2539675 ((_ is Concat!12261) (regTwo!15643 r!27340))) b!2539972))

(assert (= (and b!2539675 ((_ is Star!7565) (regTwo!15643 r!27340))) b!2539973))

(assert (= (and b!2539675 ((_ is Union!7565) (regTwo!15643 r!27340))) b!2539974))

(declare-fun e!1606220 () Bool)

(assert (=> b!2539678 (= tp!811191 e!1606220)))

(declare-fun b!2539978 () Bool)

(declare-fun tp!811231 () Bool)

(declare-fun tp!811230 () Bool)

(assert (=> b!2539978 (= e!1606220 (and tp!811231 tp!811230))))

(declare-fun b!2539976 () Bool)

(declare-fun tp!811228 () Bool)

(declare-fun tp!811229 () Bool)

(assert (=> b!2539976 (= e!1606220 (and tp!811228 tp!811229))))

(declare-fun b!2539975 () Bool)

(assert (=> b!2539975 (= e!1606220 tp_is_empty!12985)))

(declare-fun b!2539977 () Bool)

(declare-fun tp!811232 () Bool)

(assert (=> b!2539977 (= e!1606220 tp!811232)))

(assert (= (and b!2539678 ((_ is ElementMatch!7565) (reg!7894 r!27340))) b!2539975))

(assert (= (and b!2539678 ((_ is Concat!12261) (reg!7894 r!27340))) b!2539976))

(assert (= (and b!2539678 ((_ is Star!7565) (reg!7894 r!27340))) b!2539977))

(assert (= (and b!2539678 ((_ is Union!7565) (reg!7894 r!27340))) b!2539978))

(check-sat (not b!2539908) (not b!2539803) (not b!2539826) (not d!721286) (not b!2539961) (not bm!160357) (not b!2539789) (not b!2539830) (not b!2539804) (not d!721240) (not d!721278) (not b!2539703) (not d!721268) (not b!2539857) (not b!2539794) (not b!2539825) (not b!2539744) (not bm!160392) (not b!2539833) (not bm!160365) (not b!2539760) (not b!2539930) (not bm!160400) (not b!2539776) (not d!721280) (not bm!160369) (not bm!160363) (not d!721238) (not bm!160388) (not b!2539976) (not b!2539775) (not d!721276) (not bm!160368) (not b!2539978) (not bm!160399) (not bm!160362) (not b!2539835) (not b!2539748) (not b!2539832) (not bm!160359) (not b!2539842) (not b!2539848) (not b!2539750) (not b!2539751) (not b!2539801) (not d!721258) (not b!2539782) (not b!2539901) (not b!2539815) (not bm!160387) (not d!721284) (not b!2539955) (not b!2539790) tp_is_empty!12985 (not b!2539839) (not b!2539780) (not b!2539972) (not b!2539977) (not b!2539755) (not b!2539896) (not d!721274) (not bm!160403) (not bm!160405) (not d!721272) (not b!2539796) (not b!2539841) (not d!721270) (not b!2539757) (not b!2539970) (not b!2539808) (not b!2539969) (not b!2539823) (not b!2539957) (not b!2539966) (not b!2539968) (not d!721254) (not b!2539787) (not d!721250) (not b!2539960) (not d!721262) (not b!2539923) (not d!721256) (not b!2539819) (not b!2539935) (not bm!160366) (not b!2539846) (not b!2539769) (not bm!160391) (not b!2539974) (not b!2539797) (not b!2539956) (not bm!160367) (not b!2539783) (not bm!160370) (not b!2539773) (not b!2539810) (not d!721282) (not d!721264) (not b!2539959) (not d!721252) (not b!2539817) (not b!2539973) (not d!721266) (not d!721260))
(check-sat)
(get-model)

(declare-fun d!721332 () Bool)

(assert (=> d!721332 (= (matchR!3520 (regTwo!15643 r!27340) lt!901848) (matchR!3520 (derivative!260 (regTwo!15643 r!27340) lt!901848) Nil!29530))))

(assert (=> d!721332 true))

(declare-fun _$108!314 () Unit!43331)

(assert (=> d!721332 (= (choose!15022 (regTwo!15643 r!27340) lt!901848) _$108!314)))

(declare-fun bs!469374 () Bool)

(assert (= bs!469374 d!721332))

(assert (=> bs!469374 m!2886957))

(assert (=> bs!469374 m!2886969))

(assert (=> bs!469374 m!2886969))

(assert (=> bs!469374 m!2886975))

(assert (=> d!721238 d!721332))

(assert (=> d!721238 d!721250))

(assert (=> d!721238 d!721288))

(assert (=> d!721238 d!721266))

(assert (=> d!721238 d!721268))

(declare-fun d!721334 () Bool)

(assert (=> d!721334 (= (isEmpty!16983 (tail!4062 lt!901848)) ((_ is Nil!29530) (tail!4062 lt!901848)))))

(assert (=> b!2539797 d!721334))

(declare-fun d!721336 () Bool)

(assert (=> d!721336 (= (tail!4062 lt!901848) (t!211329 lt!901848))))

(assert (=> b!2539797 d!721336))

(declare-fun d!721338 () Bool)

(assert (=> d!721338 (= (isEmpty!16983 lt!901848) ((_ is Nil!29530) lt!901848))))

(assert (=> d!721258 d!721338))

(assert (=> d!721258 d!721236))

(declare-fun d!721340 () Bool)

(assert (not d!721340))

(assert (=> b!2539782 d!721340))

(assert (=> b!2539835 d!721334))

(assert (=> b!2539835 d!721336))

(declare-fun d!721342 () Bool)

(assert (=> d!721342 (= (nullable!2482 (derivative!260 (regOne!15643 r!27340) lt!901848)) (nullableFct!713 (derivative!260 (regOne!15643 r!27340) lt!901848)))))

(declare-fun bs!469375 () Bool)

(assert (= bs!469375 d!721342))

(assert (=> bs!469375 m!2886963))

(declare-fun m!2887293 () Bool)

(assert (=> bs!469375 m!2887293))

(assert (=> b!2539787 d!721342))

(assert (=> b!2539755 d!721340))

(declare-fun d!721344 () Bool)

(declare-fun lt!901903 () Regex!7565)

(assert (=> d!721344 (validRegex!3191 lt!901903)))

(declare-fun e!1606337 () Regex!7565)

(assert (=> d!721344 (= lt!901903 e!1606337)))

(declare-fun c!406488 () Bool)

(assert (=> d!721344 (= c!406488 ((_ is Cons!29530) (t!211329 lt!901848)))))

(assert (=> d!721344 (validRegex!3191 (derivativeStep!2134 (regOne!15643 r!27340) (h!34950 lt!901848)))))

(assert (=> d!721344 (= (derivative!260 (derivativeStep!2134 (regOne!15643 r!27340) (h!34950 lt!901848)) (t!211329 lt!901848)) lt!901903)))

(declare-fun b!2540201 () Bool)

(assert (=> b!2540201 (= e!1606337 (derivative!260 (derivativeStep!2134 (derivativeStep!2134 (regOne!15643 r!27340) (h!34950 lt!901848)) (h!34950 (t!211329 lt!901848))) (t!211329 (t!211329 lt!901848))))))

(declare-fun b!2540202 () Bool)

(assert (=> b!2540202 (= e!1606337 (derivativeStep!2134 (regOne!15643 r!27340) (h!34950 lt!901848)))))

(assert (= (and d!721344 c!406488) b!2540201))

(assert (= (and d!721344 (not c!406488)) b!2540202))

(declare-fun m!2887295 () Bool)

(assert (=> d!721344 m!2887295))

(assert (=> d!721344 m!2887067))

(declare-fun m!2887297 () Bool)

(assert (=> d!721344 m!2887297))

(assert (=> b!2540201 m!2887067))

(declare-fun m!2887299 () Bool)

(assert (=> b!2540201 m!2887299))

(assert (=> b!2540201 m!2887299))

(declare-fun m!2887301 () Bool)

(assert (=> b!2540201 m!2887301))

(assert (=> b!2539817 d!721344))

(declare-fun d!721346 () Bool)

(declare-fun lt!901904 () Regex!7565)

(assert (=> d!721346 (validRegex!3191 lt!901904)))

(declare-fun e!1606341 () Regex!7565)

(assert (=> d!721346 (= lt!901904 e!1606341)))

(declare-fun c!406489 () Bool)

(assert (=> d!721346 (= c!406489 (or ((_ is EmptyExpr!7565) (regOne!15643 r!27340)) ((_ is EmptyLang!7565) (regOne!15643 r!27340))))))

(assert (=> d!721346 (validRegex!3191 (regOne!15643 r!27340))))

(assert (=> d!721346 (= (derivativeStep!2134 (regOne!15643 r!27340) (h!34950 lt!901848)) lt!901904)))

(declare-fun call!160445 () Regex!7565)

(declare-fun c!406493 () Bool)

(declare-fun bm!160437 () Bool)

(declare-fun c!406492 () Bool)

(assert (=> bm!160437 (= call!160445 (derivativeStep!2134 (ite c!406493 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406492 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340)))) (h!34950 lt!901848)))))

(declare-fun bm!160438 () Bool)

(declare-fun call!160443 () Regex!7565)

(assert (=> bm!160438 (= call!160443 (derivativeStep!2134 (ite c!406493 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340))) (h!34950 lt!901848)))))

(declare-fun bm!160439 () Bool)

(declare-fun call!160442 () Regex!7565)

(assert (=> bm!160439 (= call!160442 call!160445)))

(declare-fun bm!160440 () Bool)

(declare-fun call!160444 () Regex!7565)

(assert (=> bm!160440 (= call!160444 call!160442)))

(declare-fun b!2540203 () Bool)

(declare-fun e!1606339 () Regex!7565)

(declare-fun e!1606342 () Regex!7565)

(assert (=> b!2540203 (= e!1606339 e!1606342)))

(assert (=> b!2540203 (= c!406492 ((_ is Star!7565) (regOne!15643 r!27340)))))

(declare-fun b!2540204 () Bool)

(declare-fun e!1606340 () Regex!7565)

(assert (=> b!2540204 (= e!1606341 e!1606340)))

(declare-fun c!406490 () Bool)

(assert (=> b!2540204 (= c!406490 ((_ is ElementMatch!7565) (regOne!15643 r!27340)))))

(declare-fun b!2540205 () Bool)

(assert (=> b!2540205 (= e!1606342 (Concat!12261 call!160442 (regOne!15643 r!27340)))))

(declare-fun b!2540206 () Bool)

(declare-fun e!1606338 () Regex!7565)

(assert (=> b!2540206 (= e!1606338 (Union!7565 (Concat!12261 call!160444 (regTwo!15642 (regOne!15643 r!27340))) EmptyLang!7565))))

(declare-fun b!2540207 () Bool)

(assert (=> b!2540207 (= c!406493 ((_ is Union!7565) (regOne!15643 r!27340)))))

(assert (=> b!2540207 (= e!1606340 e!1606339)))

(declare-fun b!2540208 () Bool)

(declare-fun c!406491 () Bool)

(assert (=> b!2540208 (= c!406491 (nullable!2482 (regOne!15642 (regOne!15643 r!27340))))))

(assert (=> b!2540208 (= e!1606342 e!1606338)))

(declare-fun b!2540209 () Bool)

(assert (=> b!2540209 (= e!1606338 (Union!7565 (Concat!12261 call!160444 (regTwo!15642 (regOne!15643 r!27340))) call!160443))))

(declare-fun b!2540210 () Bool)

(assert (=> b!2540210 (= e!1606339 (Union!7565 call!160443 call!160445))))

(declare-fun b!2540211 () Bool)

(assert (=> b!2540211 (= e!1606341 EmptyLang!7565)))

(declare-fun b!2540212 () Bool)

(assert (=> b!2540212 (= e!1606340 (ite (= (h!34950 lt!901848) (c!406353 (regOne!15643 r!27340))) EmptyExpr!7565 EmptyLang!7565))))

(assert (= (and d!721346 c!406489) b!2540211))

(assert (= (and d!721346 (not c!406489)) b!2540204))

(assert (= (and b!2540204 c!406490) b!2540212))

(assert (= (and b!2540204 (not c!406490)) b!2540207))

(assert (= (and b!2540207 c!406493) b!2540210))

(assert (= (and b!2540207 (not c!406493)) b!2540203))

(assert (= (and b!2540203 c!406492) b!2540205))

(assert (= (and b!2540203 (not c!406492)) b!2540208))

(assert (= (and b!2540208 c!406491) b!2540209))

(assert (= (and b!2540208 (not c!406491)) b!2540206))

(assert (= (or b!2540209 b!2540206) bm!160440))

(assert (= (or b!2540205 bm!160440) bm!160439))

(assert (= (or b!2540210 bm!160439) bm!160437))

(assert (= (or b!2540210 b!2540209) bm!160438))

(declare-fun m!2887303 () Bool)

(assert (=> d!721346 m!2887303))

(assert (=> d!721346 m!2886953))

(declare-fun m!2887305 () Bool)

(assert (=> bm!160437 m!2887305))

(declare-fun m!2887307 () Bool)

(assert (=> bm!160438 m!2887307))

(assert (=> b!2540208 m!2887123))

(assert (=> b!2539817 d!721346))

(declare-fun d!721348 () Bool)

(assert (not d!721348))

(assert (=> b!2539789 d!721348))

(declare-fun d!721350 () Bool)

(assert (not d!721350))

(assert (=> b!2539789 d!721350))

(assert (=> b!2539757 d!721340))

(assert (=> d!721268 d!721338))

(assert (=> d!721268 d!721288))

(declare-fun b!2540213 () Bool)

(declare-fun e!1606347 () Bool)

(declare-fun e!1606345 () Bool)

(assert (=> b!2540213 (= e!1606347 e!1606345)))

(declare-fun res!1070882 () Bool)

(assert (=> b!2540213 (= res!1070882 (not (nullable!2482 (reg!7894 (ite c!406373 (reg!7894 (regOne!15643 r!27340)) (ite c!406372 (regTwo!15643 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))))))))

(assert (=> b!2540213 (=> (not res!1070882) (not e!1606345))))

(declare-fun c!406494 () Bool)

(declare-fun c!406495 () Bool)

(declare-fun call!160448 () Bool)

(declare-fun bm!160441 () Bool)

(assert (=> bm!160441 (= call!160448 (validRegex!3191 (ite c!406495 (reg!7894 (ite c!406373 (reg!7894 (regOne!15643 r!27340)) (ite c!406372 (regTwo!15643 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))) (ite c!406494 (regTwo!15643 (ite c!406373 (reg!7894 (regOne!15643 r!27340)) (ite c!406372 (regTwo!15643 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))) (regOne!15642 (ite c!406373 (reg!7894 (regOne!15643 r!27340)) (ite c!406372 (regTwo!15643 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340)))))))))))

(declare-fun b!2540214 () Bool)

(declare-fun e!1606346 () Bool)

(declare-fun e!1606344 () Bool)

(assert (=> b!2540214 (= e!1606346 e!1606344)))

(declare-fun res!1070881 () Bool)

(assert (=> b!2540214 (=> (not res!1070881) (not e!1606344))))

(declare-fun call!160447 () Bool)

(assert (=> b!2540214 (= res!1070881 call!160447)))

(declare-fun d!721352 () Bool)

(declare-fun res!1070884 () Bool)

(declare-fun e!1606348 () Bool)

(assert (=> d!721352 (=> res!1070884 e!1606348)))

(assert (=> d!721352 (= res!1070884 ((_ is ElementMatch!7565) (ite c!406373 (reg!7894 (regOne!15643 r!27340)) (ite c!406372 (regTwo!15643 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))))))

(assert (=> d!721352 (= (validRegex!3191 (ite c!406373 (reg!7894 (regOne!15643 r!27340)) (ite c!406372 (regTwo!15643 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))) e!1606348)))

(declare-fun b!2540215 () Bool)

(assert (=> b!2540215 (= e!1606348 e!1606347)))

(assert (=> b!2540215 (= c!406495 ((_ is Star!7565) (ite c!406373 (reg!7894 (regOne!15643 r!27340)) (ite c!406372 (regTwo!15643 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))))))

(declare-fun b!2540216 () Bool)

(declare-fun e!1606349 () Bool)

(assert (=> b!2540216 (= e!1606347 e!1606349)))

(assert (=> b!2540216 (= c!406494 ((_ is Union!7565) (ite c!406373 (reg!7894 (regOne!15643 r!27340)) (ite c!406372 (regTwo!15643 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))))))

(declare-fun b!2540217 () Bool)

(declare-fun res!1070883 () Bool)

(declare-fun e!1606343 () Bool)

(assert (=> b!2540217 (=> (not res!1070883) (not e!1606343))))

(declare-fun call!160446 () Bool)

(assert (=> b!2540217 (= res!1070883 call!160446)))

(assert (=> b!2540217 (= e!1606349 e!1606343)))

(declare-fun b!2540218 () Bool)

(assert (=> b!2540218 (= e!1606345 call!160448)))

(declare-fun b!2540219 () Bool)

(assert (=> b!2540219 (= e!1606343 call!160447)))

(declare-fun bm!160442 () Bool)

(assert (=> bm!160442 (= call!160447 call!160448)))

(declare-fun b!2540220 () Bool)

(declare-fun res!1070885 () Bool)

(assert (=> b!2540220 (=> res!1070885 e!1606346)))

(assert (=> b!2540220 (= res!1070885 (not ((_ is Concat!12261) (ite c!406373 (reg!7894 (regOne!15643 r!27340)) (ite c!406372 (regTwo!15643 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340)))))))))

(assert (=> b!2540220 (= e!1606349 e!1606346)))

(declare-fun bm!160443 () Bool)

(assert (=> bm!160443 (= call!160446 (validRegex!3191 (ite c!406494 (regOne!15643 (ite c!406373 (reg!7894 (regOne!15643 r!27340)) (ite c!406372 (regTwo!15643 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))) (regTwo!15642 (ite c!406373 (reg!7894 (regOne!15643 r!27340)) (ite c!406372 (regTwo!15643 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))))))))

(declare-fun b!2540221 () Bool)

(assert (=> b!2540221 (= e!1606344 call!160446)))

(assert (= (and d!721352 (not res!1070884)) b!2540215))

(assert (= (and b!2540215 c!406495) b!2540213))

(assert (= (and b!2540215 (not c!406495)) b!2540216))

(assert (= (and b!2540213 res!1070882) b!2540218))

(assert (= (and b!2540216 c!406494) b!2540217))

(assert (= (and b!2540216 (not c!406494)) b!2540220))

(assert (= (and b!2540217 res!1070883) b!2540219))

(assert (= (and b!2540220 (not res!1070885)) b!2540214))

(assert (= (and b!2540214 res!1070881) b!2540221))

(assert (= (or b!2540217 b!2540221) bm!160443))

(assert (= (or b!2540219 b!2540214) bm!160442))

(assert (= (or b!2540218 bm!160442) bm!160441))

(declare-fun m!2887309 () Bool)

(assert (=> b!2540213 m!2887309))

(declare-fun m!2887311 () Bool)

(assert (=> bm!160441 m!2887311))

(declare-fun m!2887313 () Bool)

(assert (=> bm!160443 m!2887313))

(assert (=> bm!160363 d!721352))

(declare-fun d!721354 () Bool)

(assert (=> d!721354 (= (head!5787 lt!901848) (h!34950 lt!901848))))

(assert (=> b!2539832 d!721354))

(declare-fun d!721356 () Bool)

(assert (=> d!721356 (= (isEmpty!16983 Nil!29530) true)))

(assert (=> bm!160367 d!721356))

(declare-fun d!721358 () Bool)

(declare-fun res!1070898 () Bool)

(declare-fun e!1606363 () Bool)

(assert (=> d!721358 (=> res!1070898 e!1606363)))

(assert (=> d!721358 (= res!1070898 ((_ is EmptyExpr!7565) (derivative!260 (derivativeStep!2134 r!27340 c!14016) tl!4068)))))

(assert (=> d!721358 (= (nullableFct!713 (derivative!260 (derivativeStep!2134 r!27340 c!14016) tl!4068)) e!1606363)))

(declare-fun b!2540236 () Bool)

(declare-fun e!1606367 () Bool)

(declare-fun e!1606362 () Bool)

(assert (=> b!2540236 (= e!1606367 e!1606362)))

(declare-fun res!1070896 () Bool)

(assert (=> b!2540236 (=> res!1070896 e!1606362)))

(assert (=> b!2540236 (= res!1070896 ((_ is Star!7565) (derivative!260 (derivativeStep!2134 r!27340 c!14016) tl!4068)))))

(declare-fun call!160453 () Bool)

(declare-fun c!406498 () Bool)

(declare-fun bm!160448 () Bool)

(assert (=> bm!160448 (= call!160453 (nullable!2482 (ite c!406498 (regTwo!15643 (derivative!260 (derivativeStep!2134 r!27340 c!14016) tl!4068)) (regOne!15642 (derivative!260 (derivativeStep!2134 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2540237 () Bool)

(declare-fun e!1606364 () Bool)

(assert (=> b!2540237 (= e!1606362 e!1606364)))

(assert (=> b!2540237 (= c!406498 ((_ is Union!7565) (derivative!260 (derivativeStep!2134 r!27340 c!14016) tl!4068)))))

(declare-fun b!2540238 () Bool)

(declare-fun e!1606366 () Bool)

(assert (=> b!2540238 (= e!1606364 e!1606366)))

(declare-fun res!1070899 () Bool)

(declare-fun call!160454 () Bool)

(assert (=> b!2540238 (= res!1070899 call!160454)))

(assert (=> b!2540238 (=> res!1070899 e!1606366)))

(declare-fun b!2540239 () Bool)

(assert (=> b!2540239 (= e!1606363 e!1606367)))

(declare-fun res!1070900 () Bool)

(assert (=> b!2540239 (=> (not res!1070900) (not e!1606367))))

(assert (=> b!2540239 (= res!1070900 (and (not ((_ is EmptyLang!7565) (derivative!260 (derivativeStep!2134 r!27340 c!14016) tl!4068))) (not ((_ is ElementMatch!7565) (derivative!260 (derivativeStep!2134 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2540240 () Bool)

(declare-fun e!1606365 () Bool)

(assert (=> b!2540240 (= e!1606365 call!160454)))

(declare-fun bm!160449 () Bool)

(assert (=> bm!160449 (= call!160454 (nullable!2482 (ite c!406498 (regOne!15643 (derivative!260 (derivativeStep!2134 r!27340 c!14016) tl!4068)) (regTwo!15642 (derivative!260 (derivativeStep!2134 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2540241 () Bool)

(assert (=> b!2540241 (= e!1606366 call!160453)))

(declare-fun b!2540242 () Bool)

(assert (=> b!2540242 (= e!1606364 e!1606365)))

(declare-fun res!1070897 () Bool)

(assert (=> b!2540242 (= res!1070897 call!160453)))

(assert (=> b!2540242 (=> (not res!1070897) (not e!1606365))))

(assert (= (and d!721358 (not res!1070898)) b!2540239))

(assert (= (and b!2540239 res!1070900) b!2540236))

(assert (= (and b!2540236 (not res!1070896)) b!2540237))

(assert (= (and b!2540237 c!406498) b!2540238))

(assert (= (and b!2540237 (not c!406498)) b!2540242))

(assert (= (and b!2540238 (not res!1070899)) b!2540241))

(assert (= (and b!2540242 res!1070897) b!2540240))

(assert (= (or b!2540241 b!2540242) bm!160448))

(assert (= (or b!2540238 b!2540240) bm!160449))

(declare-fun m!2887315 () Bool)

(assert (=> bm!160448 m!2887315))

(declare-fun m!2887317 () Bool)

(assert (=> bm!160449 m!2887317))

(assert (=> d!721282 d!721358))

(declare-fun d!721360 () Bool)

(assert (=> d!721360 (= (matchR!3520 r!27340 lt!901848) (matchR!3520 (derivative!260 r!27340 lt!901848) Nil!29530))))

(assert (=> d!721360 true))

(declare-fun _$108!315 () Unit!43331)

(assert (=> d!721360 (= (choose!15022 r!27340 lt!901848) _$108!315)))

(declare-fun bs!469376 () Bool)

(assert (= bs!469376 d!721360))

(assert (=> bs!469376 m!2886955))

(assert (=> bs!469376 m!2886959))

(assert (=> bs!469376 m!2886959))

(assert (=> bs!469376 m!2886961))

(assert (=> d!721256 d!721360))

(assert (=> d!721256 d!721240))

(assert (=> d!721256 d!721236))

(assert (=> d!721256 d!721258))

(assert (=> d!721256 d!721260))

(declare-fun b!2540243 () Bool)

(declare-fun e!1606372 () Bool)

(declare-fun e!1606370 () Bool)

(assert (=> b!2540243 (= e!1606372 e!1606370)))

(declare-fun res!1070902 () Bool)

(assert (=> b!2540243 (= res!1070902 (not (nullable!2482 (reg!7894 (ite c!406438 (reg!7894 (regTwo!15643 r!27340)) (ite c!406437 (regTwo!15643 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))))))))

(assert (=> b!2540243 (=> (not res!1070902) (not e!1606370))))

(declare-fun c!406500 () Bool)

(declare-fun c!406499 () Bool)

(declare-fun call!160457 () Bool)

(declare-fun bm!160450 () Bool)

(assert (=> bm!160450 (= call!160457 (validRegex!3191 (ite c!406500 (reg!7894 (ite c!406438 (reg!7894 (regTwo!15643 r!27340)) (ite c!406437 (regTwo!15643 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))) (ite c!406499 (regTwo!15643 (ite c!406438 (reg!7894 (regTwo!15643 r!27340)) (ite c!406437 (regTwo!15643 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))) (regOne!15642 (ite c!406438 (reg!7894 (regTwo!15643 r!27340)) (ite c!406437 (regTwo!15643 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340)))))))))))

(declare-fun b!2540244 () Bool)

(declare-fun e!1606371 () Bool)

(declare-fun e!1606369 () Bool)

(assert (=> b!2540244 (= e!1606371 e!1606369)))

(declare-fun res!1070901 () Bool)

(assert (=> b!2540244 (=> (not res!1070901) (not e!1606369))))

(declare-fun call!160456 () Bool)

(assert (=> b!2540244 (= res!1070901 call!160456)))

(declare-fun d!721362 () Bool)

(declare-fun res!1070904 () Bool)

(declare-fun e!1606373 () Bool)

(assert (=> d!721362 (=> res!1070904 e!1606373)))

(assert (=> d!721362 (= res!1070904 ((_ is ElementMatch!7565) (ite c!406438 (reg!7894 (regTwo!15643 r!27340)) (ite c!406437 (regTwo!15643 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))))))

(assert (=> d!721362 (= (validRegex!3191 (ite c!406438 (reg!7894 (regTwo!15643 r!27340)) (ite c!406437 (regTwo!15643 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))) e!1606373)))

(declare-fun b!2540245 () Bool)

(assert (=> b!2540245 (= e!1606373 e!1606372)))

(assert (=> b!2540245 (= c!406500 ((_ is Star!7565) (ite c!406438 (reg!7894 (regTwo!15643 r!27340)) (ite c!406437 (regTwo!15643 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))))))

(declare-fun b!2540246 () Bool)

(declare-fun e!1606374 () Bool)

(assert (=> b!2540246 (= e!1606372 e!1606374)))

(assert (=> b!2540246 (= c!406499 ((_ is Union!7565) (ite c!406438 (reg!7894 (regTwo!15643 r!27340)) (ite c!406437 (regTwo!15643 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))))))

(declare-fun b!2540247 () Bool)

(declare-fun res!1070903 () Bool)

(declare-fun e!1606368 () Bool)

(assert (=> b!2540247 (=> (not res!1070903) (not e!1606368))))

(declare-fun call!160455 () Bool)

(assert (=> b!2540247 (= res!1070903 call!160455)))

(assert (=> b!2540247 (= e!1606374 e!1606368)))

(declare-fun b!2540248 () Bool)

(assert (=> b!2540248 (= e!1606370 call!160457)))

(declare-fun b!2540249 () Bool)

(assert (=> b!2540249 (= e!1606368 call!160456)))

(declare-fun bm!160451 () Bool)

(assert (=> bm!160451 (= call!160456 call!160457)))

(declare-fun b!2540250 () Bool)

(declare-fun res!1070905 () Bool)

(assert (=> b!2540250 (=> res!1070905 e!1606371)))

(assert (=> b!2540250 (= res!1070905 (not ((_ is Concat!12261) (ite c!406438 (reg!7894 (regTwo!15643 r!27340)) (ite c!406437 (regTwo!15643 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340)))))))))

(assert (=> b!2540250 (= e!1606374 e!1606371)))

(declare-fun bm!160452 () Bool)

(assert (=> bm!160452 (= call!160455 (validRegex!3191 (ite c!406499 (regOne!15643 (ite c!406438 (reg!7894 (regTwo!15643 r!27340)) (ite c!406437 (regTwo!15643 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))) (regTwo!15642 (ite c!406438 (reg!7894 (regTwo!15643 r!27340)) (ite c!406437 (regTwo!15643 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))))))))

(declare-fun b!2540251 () Bool)

(assert (=> b!2540251 (= e!1606369 call!160455)))

(assert (= (and d!721362 (not res!1070904)) b!2540245))

(assert (= (and b!2540245 c!406500) b!2540243))

(assert (= (and b!2540245 (not c!406500)) b!2540246))

(assert (= (and b!2540243 res!1070902) b!2540248))

(assert (= (and b!2540246 c!406499) b!2540247))

(assert (= (and b!2540246 (not c!406499)) b!2540250))

(assert (= (and b!2540247 res!1070903) b!2540249))

(assert (= (and b!2540250 (not res!1070905)) b!2540244))

(assert (= (and b!2540244 res!1070901) b!2540251))

(assert (= (or b!2540247 b!2540251) bm!160452))

(assert (= (or b!2540249 b!2540244) bm!160451))

(assert (= (or b!2540248 bm!160451) bm!160450))

(declare-fun m!2887319 () Bool)

(assert (=> b!2540243 m!2887319))

(declare-fun m!2887321 () Bool)

(assert (=> bm!160450 m!2887321))

(declare-fun m!2887323 () Bool)

(assert (=> bm!160452 m!2887323))

(assert (=> bm!160403 d!721362))

(assert (=> b!2539830 d!721354))

(assert (=> b!2539780 d!721340))

(declare-fun b!2540252 () Bool)

(declare-fun res!1070908 () Bool)

(declare-fun e!1606377 () Bool)

(assert (=> b!2540252 (=> (not res!1070908) (not e!1606377))))

(assert (=> b!2540252 (= res!1070908 (isEmpty!16983 (tail!4062 (tail!4062 lt!901848))))))

(declare-fun b!2540253 () Bool)

(declare-fun e!1606381 () Bool)

(declare-fun e!1606380 () Bool)

(assert (=> b!2540253 (= e!1606381 e!1606380)))

(declare-fun c!406503 () Bool)

(assert (=> b!2540253 (= c!406503 ((_ is EmptyLang!7565) (derivativeStep!2134 (regOne!15643 r!27340) (head!5787 lt!901848))))))

(declare-fun b!2540254 () Bool)

(declare-fun lt!901905 () Bool)

(declare-fun call!160458 () Bool)

(assert (=> b!2540254 (= e!1606381 (= lt!901905 call!160458))))

(declare-fun bm!160453 () Bool)

(assert (=> bm!160453 (= call!160458 (isEmpty!16983 (tail!4062 lt!901848)))))

(declare-fun b!2540255 () Bool)

(assert (=> b!2540255 (= e!1606380 (not lt!901905))))

(declare-fun b!2540256 () Bool)

(declare-fun e!1606375 () Bool)

(assert (=> b!2540256 (= e!1606375 (nullable!2482 (derivativeStep!2134 (regOne!15643 r!27340) (head!5787 lt!901848))))))

(declare-fun d!721364 () Bool)

(assert (=> d!721364 e!1606381))

(declare-fun c!406502 () Bool)

(assert (=> d!721364 (= c!406502 ((_ is EmptyExpr!7565) (derivativeStep!2134 (regOne!15643 r!27340) (head!5787 lt!901848))))))

(assert (=> d!721364 (= lt!901905 e!1606375)))

(declare-fun c!406501 () Bool)

(assert (=> d!721364 (= c!406501 (isEmpty!16983 (tail!4062 lt!901848)))))

(assert (=> d!721364 (validRegex!3191 (derivativeStep!2134 (regOne!15643 r!27340) (head!5787 lt!901848)))))

(assert (=> d!721364 (= (matchR!3520 (derivativeStep!2134 (regOne!15643 r!27340) (head!5787 lt!901848)) (tail!4062 lt!901848)) lt!901905)))

(declare-fun b!2540257 () Bool)

(declare-fun e!1606376 () Bool)

(declare-fun e!1606379 () Bool)

(assert (=> b!2540257 (= e!1606376 e!1606379)))

(declare-fun res!1070910 () Bool)

(assert (=> b!2540257 (=> res!1070910 e!1606379)))

(assert (=> b!2540257 (= res!1070910 call!160458)))

(declare-fun b!2540258 () Bool)

(declare-fun res!1070906 () Bool)

(assert (=> b!2540258 (=> res!1070906 e!1606379)))

(assert (=> b!2540258 (= res!1070906 (not (isEmpty!16983 (tail!4062 (tail!4062 lt!901848)))))))

(declare-fun b!2540259 () Bool)

(assert (=> b!2540259 (= e!1606375 (matchR!3520 (derivativeStep!2134 (derivativeStep!2134 (regOne!15643 r!27340) (head!5787 lt!901848)) (head!5787 (tail!4062 lt!901848))) (tail!4062 (tail!4062 lt!901848))))))

(declare-fun b!2540260 () Bool)

(declare-fun res!1070907 () Bool)

(declare-fun e!1606378 () Bool)

(assert (=> b!2540260 (=> res!1070907 e!1606378)))

(assert (=> b!2540260 (= res!1070907 (not ((_ is ElementMatch!7565) (derivativeStep!2134 (regOne!15643 r!27340) (head!5787 lt!901848)))))))

(assert (=> b!2540260 (= e!1606380 e!1606378)))

(declare-fun b!2540261 () Bool)

(declare-fun res!1070913 () Bool)

(assert (=> b!2540261 (=> (not res!1070913) (not e!1606377))))

(assert (=> b!2540261 (= res!1070913 (not call!160458))))

(declare-fun b!2540262 () Bool)

(assert (=> b!2540262 (= e!1606378 e!1606376)))

(declare-fun res!1070911 () Bool)

(assert (=> b!2540262 (=> (not res!1070911) (not e!1606376))))

(assert (=> b!2540262 (= res!1070911 (not lt!901905))))

(declare-fun b!2540263 () Bool)

(assert (=> b!2540263 (= e!1606377 (= (head!5787 (tail!4062 lt!901848)) (c!406353 (derivativeStep!2134 (regOne!15643 r!27340) (head!5787 lt!901848)))))))

(declare-fun b!2540264 () Bool)

(declare-fun res!1070909 () Bool)

(assert (=> b!2540264 (=> res!1070909 e!1606378)))

(assert (=> b!2540264 (= res!1070909 e!1606377)))

(declare-fun res!1070912 () Bool)

(assert (=> b!2540264 (=> (not res!1070912) (not e!1606377))))

(assert (=> b!2540264 (= res!1070912 lt!901905)))

(declare-fun b!2540265 () Bool)

(assert (=> b!2540265 (= e!1606379 (not (= (head!5787 (tail!4062 lt!901848)) (c!406353 (derivativeStep!2134 (regOne!15643 r!27340) (head!5787 lt!901848))))))))

(assert (= (and d!721364 c!406501) b!2540256))

(assert (= (and d!721364 (not c!406501)) b!2540259))

(assert (= (and d!721364 c!406502) b!2540254))

(assert (= (and d!721364 (not c!406502)) b!2540253))

(assert (= (and b!2540253 c!406503) b!2540255))

(assert (= (and b!2540253 (not c!406503)) b!2540260))

(assert (= (and b!2540260 (not res!1070907)) b!2540264))

(assert (= (and b!2540264 res!1070912) b!2540261))

(assert (= (and b!2540261 res!1070913) b!2540252))

(assert (= (and b!2540252 res!1070908) b!2540263))

(assert (= (and b!2540264 (not res!1070909)) b!2540262))

(assert (= (and b!2540262 res!1070911) b!2540257))

(assert (= (and b!2540257 (not res!1070910)) b!2540258))

(assert (= (and b!2540258 (not res!1070906)) b!2540265))

(assert (= (or b!2540254 b!2540257 b!2540261) bm!160453))

(assert (=> d!721364 m!2887049))

(assert (=> d!721364 m!2887051))

(assert (=> d!721364 m!2887071))

(declare-fun m!2887325 () Bool)

(assert (=> d!721364 m!2887325))

(assert (=> b!2540265 m!2887049))

(declare-fun m!2887327 () Bool)

(assert (=> b!2540265 m!2887327))

(assert (=> b!2540252 m!2887049))

(declare-fun m!2887329 () Bool)

(assert (=> b!2540252 m!2887329))

(assert (=> b!2540252 m!2887329))

(declare-fun m!2887331 () Bool)

(assert (=> b!2540252 m!2887331))

(assert (=> b!2540259 m!2887049))

(assert (=> b!2540259 m!2887327))

(assert (=> b!2540259 m!2887071))

(assert (=> b!2540259 m!2887327))

(declare-fun m!2887333 () Bool)

(assert (=> b!2540259 m!2887333))

(assert (=> b!2540259 m!2887049))

(assert (=> b!2540259 m!2887329))

(assert (=> b!2540259 m!2887333))

(assert (=> b!2540259 m!2887329))

(declare-fun m!2887335 () Bool)

(assert (=> b!2540259 m!2887335))

(assert (=> b!2540258 m!2887049))

(assert (=> b!2540258 m!2887329))

(assert (=> b!2540258 m!2887329))

(assert (=> b!2540258 m!2887331))

(assert (=> b!2540256 m!2887071))

(declare-fun m!2887337 () Bool)

(assert (=> b!2540256 m!2887337))

(assert (=> bm!160453 m!2887049))

(assert (=> bm!160453 m!2887051))

(assert (=> b!2540263 m!2887049))

(assert (=> b!2540263 m!2887327))

(assert (=> b!2539826 d!721364))

(declare-fun d!721366 () Bool)

(declare-fun lt!901906 () Regex!7565)

(assert (=> d!721366 (validRegex!3191 lt!901906)))

(declare-fun e!1606385 () Regex!7565)

(assert (=> d!721366 (= lt!901906 e!1606385)))

(declare-fun c!406504 () Bool)

(assert (=> d!721366 (= c!406504 (or ((_ is EmptyExpr!7565) (regOne!15643 r!27340)) ((_ is EmptyLang!7565) (regOne!15643 r!27340))))))

(assert (=> d!721366 (validRegex!3191 (regOne!15643 r!27340))))

(assert (=> d!721366 (= (derivativeStep!2134 (regOne!15643 r!27340) (head!5787 lt!901848)) lt!901906)))

(declare-fun bm!160454 () Bool)

(declare-fun call!160462 () Regex!7565)

(declare-fun c!406507 () Bool)

(declare-fun c!406508 () Bool)

(assert (=> bm!160454 (= call!160462 (derivativeStep!2134 (ite c!406508 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406507 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340)))) (head!5787 lt!901848)))))

(declare-fun call!160460 () Regex!7565)

(declare-fun bm!160455 () Bool)

(assert (=> bm!160455 (= call!160460 (derivativeStep!2134 (ite c!406508 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340))) (head!5787 lt!901848)))))

(declare-fun bm!160456 () Bool)

(declare-fun call!160459 () Regex!7565)

(assert (=> bm!160456 (= call!160459 call!160462)))

(declare-fun bm!160457 () Bool)

(declare-fun call!160461 () Regex!7565)

(assert (=> bm!160457 (= call!160461 call!160459)))

(declare-fun b!2540266 () Bool)

(declare-fun e!1606383 () Regex!7565)

(declare-fun e!1606386 () Regex!7565)

(assert (=> b!2540266 (= e!1606383 e!1606386)))

(assert (=> b!2540266 (= c!406507 ((_ is Star!7565) (regOne!15643 r!27340)))))

(declare-fun b!2540267 () Bool)

(declare-fun e!1606384 () Regex!7565)

(assert (=> b!2540267 (= e!1606385 e!1606384)))

(declare-fun c!406505 () Bool)

(assert (=> b!2540267 (= c!406505 ((_ is ElementMatch!7565) (regOne!15643 r!27340)))))

(declare-fun b!2540268 () Bool)

(assert (=> b!2540268 (= e!1606386 (Concat!12261 call!160459 (regOne!15643 r!27340)))))

(declare-fun b!2540269 () Bool)

(declare-fun e!1606382 () Regex!7565)

(assert (=> b!2540269 (= e!1606382 (Union!7565 (Concat!12261 call!160461 (regTwo!15642 (regOne!15643 r!27340))) EmptyLang!7565))))

(declare-fun b!2540270 () Bool)

(assert (=> b!2540270 (= c!406508 ((_ is Union!7565) (regOne!15643 r!27340)))))

(assert (=> b!2540270 (= e!1606384 e!1606383)))

(declare-fun b!2540271 () Bool)

(declare-fun c!406506 () Bool)

(assert (=> b!2540271 (= c!406506 (nullable!2482 (regOne!15642 (regOne!15643 r!27340))))))

(assert (=> b!2540271 (= e!1606386 e!1606382)))

(declare-fun b!2540272 () Bool)

(assert (=> b!2540272 (= e!1606382 (Union!7565 (Concat!12261 call!160461 (regTwo!15642 (regOne!15643 r!27340))) call!160460))))

(declare-fun b!2540273 () Bool)

(assert (=> b!2540273 (= e!1606383 (Union!7565 call!160460 call!160462))))

(declare-fun b!2540274 () Bool)

(assert (=> b!2540274 (= e!1606385 EmptyLang!7565)))

(declare-fun b!2540275 () Bool)

(assert (=> b!2540275 (= e!1606384 (ite (= (head!5787 lt!901848) (c!406353 (regOne!15643 r!27340))) EmptyExpr!7565 EmptyLang!7565))))

(assert (= (and d!721366 c!406504) b!2540274))

(assert (= (and d!721366 (not c!406504)) b!2540267))

(assert (= (and b!2540267 c!406505) b!2540275))

(assert (= (and b!2540267 (not c!406505)) b!2540270))

(assert (= (and b!2540270 c!406508) b!2540273))

(assert (= (and b!2540270 (not c!406508)) b!2540266))

(assert (= (and b!2540266 c!406507) b!2540268))

(assert (= (and b!2540266 (not c!406507)) b!2540271))

(assert (= (and b!2540271 c!406506) b!2540272))

(assert (= (and b!2540271 (not c!406506)) b!2540269))

(assert (= (or b!2540272 b!2540269) bm!160457))

(assert (= (or b!2540268 bm!160457) bm!160456))

(assert (= (or b!2540273 bm!160456) bm!160454))

(assert (= (or b!2540273 b!2540272) bm!160455))

(declare-fun m!2887339 () Bool)

(assert (=> d!721366 m!2887339))

(assert (=> d!721366 m!2886953))

(assert (=> bm!160454 m!2887047))

(declare-fun m!2887341 () Bool)

(assert (=> bm!160454 m!2887341))

(assert (=> bm!160455 m!2887047))

(declare-fun m!2887343 () Bool)

(assert (=> bm!160455 m!2887343))

(assert (=> b!2540271 m!2887123))

(assert (=> b!2539826 d!721366))

(assert (=> b!2539826 d!721354))

(assert (=> b!2539826 d!721336))

(declare-fun d!721368 () Bool)

(assert (not d!721368))

(assert (=> b!2539776 d!721368))

(declare-fun d!721370 () Bool)

(assert (not d!721370))

(assert (=> b!2539776 d!721370))

(assert (=> b!2539776 d!721340))

(assert (=> b!2539776 d!721350))

(declare-fun d!721372 () Bool)

(declare-fun res!1070916 () Bool)

(declare-fun e!1606388 () Bool)

(assert (=> d!721372 (=> res!1070916 e!1606388)))

(assert (=> d!721372 (= res!1070916 ((_ is EmptyExpr!7565) (derivative!260 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) tl!4068)))))

(assert (=> d!721372 (= (nullableFct!713 (derivative!260 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) tl!4068)) e!1606388)))

(declare-fun b!2540276 () Bool)

(declare-fun e!1606392 () Bool)

(declare-fun e!1606387 () Bool)

(assert (=> b!2540276 (= e!1606392 e!1606387)))

(declare-fun res!1070914 () Bool)

(assert (=> b!2540276 (=> res!1070914 e!1606387)))

(assert (=> b!2540276 (= res!1070914 ((_ is Star!7565) (derivative!260 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) tl!4068)))))

(declare-fun c!406509 () Bool)

(declare-fun bm!160458 () Bool)

(declare-fun call!160463 () Bool)

(assert (=> bm!160458 (= call!160463 (nullable!2482 (ite c!406509 (regTwo!15643 (derivative!260 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) tl!4068)) (regOne!15642 (derivative!260 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) tl!4068)))))))

(declare-fun b!2540277 () Bool)

(declare-fun e!1606389 () Bool)

(assert (=> b!2540277 (= e!1606387 e!1606389)))

(assert (=> b!2540277 (= c!406509 ((_ is Union!7565) (derivative!260 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) tl!4068)))))

(declare-fun b!2540278 () Bool)

(declare-fun e!1606391 () Bool)

(assert (=> b!2540278 (= e!1606389 e!1606391)))

(declare-fun res!1070917 () Bool)

(declare-fun call!160464 () Bool)

(assert (=> b!2540278 (= res!1070917 call!160464)))

(assert (=> b!2540278 (=> res!1070917 e!1606391)))

(declare-fun b!2540279 () Bool)

(assert (=> b!2540279 (= e!1606388 e!1606392)))

(declare-fun res!1070918 () Bool)

(assert (=> b!2540279 (=> (not res!1070918) (not e!1606392))))

(assert (=> b!2540279 (= res!1070918 (and (not ((_ is EmptyLang!7565) (derivative!260 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) tl!4068))) (not ((_ is ElementMatch!7565) (derivative!260 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) tl!4068)))))))

(declare-fun b!2540280 () Bool)

(declare-fun e!1606390 () Bool)

(assert (=> b!2540280 (= e!1606390 call!160464)))

(declare-fun bm!160459 () Bool)

(assert (=> bm!160459 (= call!160464 (nullable!2482 (ite c!406509 (regOne!15643 (derivative!260 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) tl!4068)) (regTwo!15642 (derivative!260 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) tl!4068)))))))

(declare-fun b!2540281 () Bool)

(assert (=> b!2540281 (= e!1606391 call!160463)))

(declare-fun b!2540282 () Bool)

(assert (=> b!2540282 (= e!1606389 e!1606390)))

(declare-fun res!1070915 () Bool)

(assert (=> b!2540282 (= res!1070915 call!160463)))

(assert (=> b!2540282 (=> (not res!1070915) (not e!1606390))))

(assert (= (and d!721372 (not res!1070916)) b!2540279))

(assert (= (and b!2540279 res!1070918) b!2540276))

(assert (= (and b!2540276 (not res!1070914)) b!2540277))

(assert (= (and b!2540277 c!406509) b!2540278))

(assert (= (and b!2540277 (not c!406509)) b!2540282))

(assert (= (and b!2540278 (not res!1070917)) b!2540281))

(assert (= (and b!2540282 res!1070915) b!2540280))

(assert (= (or b!2540281 b!2540282) bm!160458))

(assert (= (or b!2540278 b!2540280) bm!160459))

(declare-fun m!2887345 () Bool)

(assert (=> bm!160458 m!2887345))

(declare-fun m!2887347 () Bool)

(assert (=> bm!160459 m!2887347))

(assert (=> d!721276 d!721372))

(declare-fun d!721374 () Bool)

(assert (not d!721374))

(assert (=> b!2539751 d!721374))

(declare-fun d!721376 () Bool)

(assert (not d!721376))

(assert (=> b!2539751 d!721376))

(assert (=> b!2539751 d!721340))

(assert (=> b!2539751 d!721350))

(declare-fun b!2540283 () Bool)

(declare-fun e!1606397 () Bool)

(declare-fun e!1606395 () Bool)

(assert (=> b!2540283 (= e!1606397 e!1606395)))

(declare-fun res!1070920 () Bool)

(assert (=> b!2540283 (= res!1070920 (not (nullable!2482 (reg!7894 lt!901868))))))

(assert (=> b!2540283 (=> (not res!1070920) (not e!1606395))))

(declare-fun c!406510 () Bool)

(declare-fun c!406511 () Bool)

(declare-fun call!160467 () Bool)

(declare-fun bm!160460 () Bool)

(assert (=> bm!160460 (= call!160467 (validRegex!3191 (ite c!406511 (reg!7894 lt!901868) (ite c!406510 (regTwo!15643 lt!901868) (regOne!15642 lt!901868)))))))

(declare-fun b!2540284 () Bool)

(declare-fun e!1606396 () Bool)

(declare-fun e!1606394 () Bool)

(assert (=> b!2540284 (= e!1606396 e!1606394)))

(declare-fun res!1070919 () Bool)

(assert (=> b!2540284 (=> (not res!1070919) (not e!1606394))))

(declare-fun call!160466 () Bool)

(assert (=> b!2540284 (= res!1070919 call!160466)))

(declare-fun d!721378 () Bool)

(declare-fun res!1070922 () Bool)

(declare-fun e!1606398 () Bool)

(assert (=> d!721378 (=> res!1070922 e!1606398)))

(assert (=> d!721378 (= res!1070922 ((_ is ElementMatch!7565) lt!901868))))

(assert (=> d!721378 (= (validRegex!3191 lt!901868) e!1606398)))

(declare-fun b!2540285 () Bool)

(assert (=> b!2540285 (= e!1606398 e!1606397)))

(assert (=> b!2540285 (= c!406511 ((_ is Star!7565) lt!901868))))

(declare-fun b!2540286 () Bool)

(declare-fun e!1606399 () Bool)

(assert (=> b!2540286 (= e!1606397 e!1606399)))

(assert (=> b!2540286 (= c!406510 ((_ is Union!7565) lt!901868))))

(declare-fun b!2540287 () Bool)

(declare-fun res!1070921 () Bool)

(declare-fun e!1606393 () Bool)

(assert (=> b!2540287 (=> (not res!1070921) (not e!1606393))))

(declare-fun call!160465 () Bool)

(assert (=> b!2540287 (= res!1070921 call!160465)))

(assert (=> b!2540287 (= e!1606399 e!1606393)))

(declare-fun b!2540288 () Bool)

(assert (=> b!2540288 (= e!1606395 call!160467)))

(declare-fun b!2540289 () Bool)

(assert (=> b!2540289 (= e!1606393 call!160466)))

(declare-fun bm!160461 () Bool)

(assert (=> bm!160461 (= call!160466 call!160467)))

(declare-fun b!2540290 () Bool)

(declare-fun res!1070923 () Bool)

(assert (=> b!2540290 (=> res!1070923 e!1606396)))

(assert (=> b!2540290 (= res!1070923 (not ((_ is Concat!12261) lt!901868)))))

(assert (=> b!2540290 (= e!1606399 e!1606396)))

(declare-fun bm!160462 () Bool)

(assert (=> bm!160462 (= call!160465 (validRegex!3191 (ite c!406510 (regOne!15643 lt!901868) (regTwo!15642 lt!901868))))))

(declare-fun b!2540291 () Bool)

(assert (=> b!2540291 (= e!1606394 call!160465)))

(assert (= (and d!721378 (not res!1070922)) b!2540285))

(assert (= (and b!2540285 c!406511) b!2540283))

(assert (= (and b!2540285 (not c!406511)) b!2540286))

(assert (= (and b!2540283 res!1070920) b!2540288))

(assert (= (and b!2540286 c!406510) b!2540287))

(assert (= (and b!2540286 (not c!406510)) b!2540290))

(assert (= (and b!2540287 res!1070921) b!2540289))

(assert (= (and b!2540290 (not res!1070923)) b!2540284))

(assert (= (and b!2540284 res!1070919) b!2540291))

(assert (= (or b!2540287 b!2540291) bm!160462))

(assert (= (or b!2540289 b!2540284) bm!160461))

(assert (= (or b!2540288 bm!160461) bm!160460))

(declare-fun m!2887349 () Bool)

(assert (=> b!2540283 m!2887349))

(declare-fun m!2887351 () Bool)

(assert (=> bm!160460 m!2887351))

(declare-fun m!2887353 () Bool)

(assert (=> bm!160462 m!2887353))

(assert (=> d!721262 d!721378))

(assert (=> d!721262 d!721246))

(declare-fun d!721380 () Bool)

(declare-fun lt!901907 () Regex!7565)

(assert (=> d!721380 (validRegex!3191 lt!901907)))

(declare-fun e!1606403 () Regex!7565)

(assert (=> d!721380 (= lt!901907 e!1606403)))

(declare-fun c!406512 () Bool)

(assert (=> d!721380 (= c!406512 (or ((_ is EmptyExpr!7565) (ite c!406419 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406418 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))) ((_ is EmptyLang!7565) (ite c!406419 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406418 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340)))))))))

(assert (=> d!721380 (validRegex!3191 (ite c!406419 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406418 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340)))))))

(assert (=> d!721380 (= (derivativeStep!2134 (ite c!406419 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406418 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340)))) c!14016) lt!901907)))

(declare-fun call!160471 () Regex!7565)

(declare-fun c!406515 () Bool)

(declare-fun bm!160463 () Bool)

(declare-fun c!406516 () Bool)

(assert (=> bm!160463 (= call!160471 (derivativeStep!2134 (ite c!406516 (regTwo!15643 (ite c!406419 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406418 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))) (ite c!406515 (reg!7894 (ite c!406419 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406418 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))) (regOne!15642 (ite c!406419 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406418 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))))) c!14016))))

(declare-fun bm!160464 () Bool)

(declare-fun call!160469 () Regex!7565)

(assert (=> bm!160464 (= call!160469 (derivativeStep!2134 (ite c!406516 (regOne!15643 (ite c!406419 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406418 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))) (regTwo!15642 (ite c!406419 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406418 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340)))))) c!14016))))

(declare-fun bm!160465 () Bool)

(declare-fun call!160468 () Regex!7565)

(assert (=> bm!160465 (= call!160468 call!160471)))

(declare-fun bm!160466 () Bool)

(declare-fun call!160470 () Regex!7565)

(assert (=> bm!160466 (= call!160470 call!160468)))

(declare-fun b!2540292 () Bool)

(declare-fun e!1606401 () Regex!7565)

(declare-fun e!1606404 () Regex!7565)

(assert (=> b!2540292 (= e!1606401 e!1606404)))

(assert (=> b!2540292 (= c!406515 ((_ is Star!7565) (ite c!406419 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406418 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))))))

(declare-fun b!2540293 () Bool)

(declare-fun e!1606402 () Regex!7565)

(assert (=> b!2540293 (= e!1606403 e!1606402)))

(declare-fun c!406513 () Bool)

(assert (=> b!2540293 (= c!406513 ((_ is ElementMatch!7565) (ite c!406419 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406418 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))))))

(declare-fun b!2540294 () Bool)

(assert (=> b!2540294 (= e!1606404 (Concat!12261 call!160468 (ite c!406419 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406418 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))))))

(declare-fun b!2540295 () Bool)

(declare-fun e!1606400 () Regex!7565)

(assert (=> b!2540295 (= e!1606400 (Union!7565 (Concat!12261 call!160470 (regTwo!15642 (ite c!406419 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406418 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340)))))) EmptyLang!7565))))

(declare-fun b!2540296 () Bool)

(assert (=> b!2540296 (= c!406516 ((_ is Union!7565) (ite c!406419 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406418 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340))))))))

(assert (=> b!2540296 (= e!1606402 e!1606401)))

(declare-fun c!406514 () Bool)

(declare-fun b!2540297 () Bool)

(assert (=> b!2540297 (= c!406514 (nullable!2482 (regOne!15642 (ite c!406419 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406418 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340)))))))))

(assert (=> b!2540297 (= e!1606404 e!1606400)))

(declare-fun b!2540298 () Bool)

(assert (=> b!2540298 (= e!1606400 (Union!7565 (Concat!12261 call!160470 (regTwo!15642 (ite c!406419 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406418 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340)))))) call!160469))))

(declare-fun b!2540299 () Bool)

(assert (=> b!2540299 (= e!1606401 (Union!7565 call!160469 call!160471))))

(declare-fun b!2540300 () Bool)

(assert (=> b!2540300 (= e!1606403 EmptyLang!7565)))

(declare-fun b!2540301 () Bool)

(assert (=> b!2540301 (= e!1606402 (ite (= c!14016 (c!406353 (ite c!406419 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406418 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340)))))) EmptyExpr!7565 EmptyLang!7565))))

(assert (= (and d!721380 c!406512) b!2540300))

(assert (= (and d!721380 (not c!406512)) b!2540293))

(assert (= (and b!2540293 c!406513) b!2540301))

(assert (= (and b!2540293 (not c!406513)) b!2540296))

(assert (= (and b!2540296 c!406516) b!2540299))

(assert (= (and b!2540296 (not c!406516)) b!2540292))

(assert (= (and b!2540292 c!406515) b!2540294))

(assert (= (and b!2540292 (not c!406515)) b!2540297))

(assert (= (and b!2540297 c!406514) b!2540298))

(assert (= (and b!2540297 (not c!406514)) b!2540295))

(assert (= (or b!2540298 b!2540295) bm!160466))

(assert (= (or b!2540294 bm!160466) bm!160465))

(assert (= (or b!2540299 bm!160465) bm!160463))

(assert (= (or b!2540299 b!2540298) bm!160464))

(declare-fun m!2887355 () Bool)

(assert (=> d!721380 m!2887355))

(declare-fun m!2887357 () Bool)

(assert (=> d!721380 m!2887357))

(declare-fun m!2887359 () Bool)

(assert (=> bm!160463 m!2887359))

(declare-fun m!2887361 () Bool)

(assert (=> bm!160464 m!2887361))

(declare-fun m!2887363 () Bool)

(assert (=> b!2540297 m!2887363))

(assert (=> bm!160387 d!721380))

(declare-fun b!2540302 () Bool)

(declare-fun e!1606409 () Bool)

(declare-fun e!1606407 () Bool)

(assert (=> b!2540302 (= e!1606409 e!1606407)))

(declare-fun res!1070925 () Bool)

(assert (=> b!2540302 (= res!1070925 (not (nullable!2482 (reg!7894 (ite c!406372 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))))))))

(assert (=> b!2540302 (=> (not res!1070925) (not e!1606407))))

(declare-fun bm!160467 () Bool)

(declare-fun call!160474 () Bool)

(declare-fun c!406517 () Bool)

(declare-fun c!406518 () Bool)

(assert (=> bm!160467 (= call!160474 (validRegex!3191 (ite c!406518 (reg!7894 (ite c!406372 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))) (ite c!406517 (regTwo!15643 (ite c!406372 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))) (regOne!15642 (ite c!406372 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340))))))))))

(declare-fun b!2540303 () Bool)

(declare-fun e!1606408 () Bool)

(declare-fun e!1606406 () Bool)

(assert (=> b!2540303 (= e!1606408 e!1606406)))

(declare-fun res!1070924 () Bool)

(assert (=> b!2540303 (=> (not res!1070924) (not e!1606406))))

(declare-fun call!160473 () Bool)

(assert (=> b!2540303 (= res!1070924 call!160473)))

(declare-fun d!721382 () Bool)

(declare-fun res!1070927 () Bool)

(declare-fun e!1606410 () Bool)

(assert (=> d!721382 (=> res!1070927 e!1606410)))

(assert (=> d!721382 (= res!1070927 ((_ is ElementMatch!7565) (ite c!406372 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))))))

(assert (=> d!721382 (= (validRegex!3191 (ite c!406372 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))) e!1606410)))

(declare-fun b!2540304 () Bool)

(assert (=> b!2540304 (= e!1606410 e!1606409)))

(assert (=> b!2540304 (= c!406518 ((_ is Star!7565) (ite c!406372 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))))))

(declare-fun b!2540305 () Bool)

(declare-fun e!1606411 () Bool)

(assert (=> b!2540305 (= e!1606409 e!1606411)))

(assert (=> b!2540305 (= c!406517 ((_ is Union!7565) (ite c!406372 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))))))

(declare-fun b!2540306 () Bool)

(declare-fun res!1070926 () Bool)

(declare-fun e!1606405 () Bool)

(assert (=> b!2540306 (=> (not res!1070926) (not e!1606405))))

(declare-fun call!160472 () Bool)

(assert (=> b!2540306 (= res!1070926 call!160472)))

(assert (=> b!2540306 (= e!1606411 e!1606405)))

(declare-fun b!2540307 () Bool)

(assert (=> b!2540307 (= e!1606407 call!160474)))

(declare-fun b!2540308 () Bool)

(assert (=> b!2540308 (= e!1606405 call!160473)))

(declare-fun bm!160468 () Bool)

(assert (=> bm!160468 (= call!160473 call!160474)))

(declare-fun b!2540309 () Bool)

(declare-fun res!1070928 () Bool)

(assert (=> b!2540309 (=> res!1070928 e!1606408)))

(assert (=> b!2540309 (= res!1070928 (not ((_ is Concat!12261) (ite c!406372 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340))))))))

(assert (=> b!2540309 (= e!1606411 e!1606408)))

(declare-fun bm!160469 () Bool)

(assert (=> bm!160469 (= call!160472 (validRegex!3191 (ite c!406517 (regOne!15643 (ite c!406372 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))) (regTwo!15642 (ite c!406372 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))))))))

(declare-fun b!2540310 () Bool)

(assert (=> b!2540310 (= e!1606406 call!160472)))

(assert (= (and d!721382 (not res!1070927)) b!2540304))

(assert (= (and b!2540304 c!406518) b!2540302))

(assert (= (and b!2540304 (not c!406518)) b!2540305))

(assert (= (and b!2540302 res!1070925) b!2540307))

(assert (= (and b!2540305 c!406517) b!2540306))

(assert (= (and b!2540305 (not c!406517)) b!2540309))

(assert (= (and b!2540306 res!1070926) b!2540308))

(assert (= (and b!2540309 (not res!1070928)) b!2540303))

(assert (= (and b!2540303 res!1070924) b!2540310))

(assert (= (or b!2540306 b!2540310) bm!160469))

(assert (= (or b!2540308 b!2540303) bm!160468))

(assert (= (or b!2540307 bm!160468) bm!160467))

(declare-fun m!2887365 () Bool)

(assert (=> b!2540302 m!2887365))

(declare-fun m!2887367 () Bool)

(assert (=> bm!160467 m!2887367))

(declare-fun m!2887369 () Bool)

(assert (=> bm!160469 m!2887369))

(assert (=> bm!160365 d!721382))

(declare-fun b!2540311 () Bool)

(declare-fun e!1606416 () Bool)

(declare-fun e!1606414 () Bool)

(assert (=> b!2540311 (= e!1606416 e!1606414)))

(declare-fun res!1070930 () Bool)

(assert (=> b!2540311 (= res!1070930 (not (nullable!2482 (reg!7894 lt!901867))))))

(assert (=> b!2540311 (=> (not res!1070930) (not e!1606414))))

(declare-fun bm!160470 () Bool)

(declare-fun call!160477 () Bool)

(declare-fun c!406519 () Bool)

(declare-fun c!406520 () Bool)

(assert (=> bm!160470 (= call!160477 (validRegex!3191 (ite c!406520 (reg!7894 lt!901867) (ite c!406519 (regTwo!15643 lt!901867) (regOne!15642 lt!901867)))))))

(declare-fun b!2540312 () Bool)

(declare-fun e!1606415 () Bool)

(declare-fun e!1606413 () Bool)

(assert (=> b!2540312 (= e!1606415 e!1606413)))

(declare-fun res!1070929 () Bool)

(assert (=> b!2540312 (=> (not res!1070929) (not e!1606413))))

(declare-fun call!160476 () Bool)

(assert (=> b!2540312 (= res!1070929 call!160476)))

(declare-fun d!721384 () Bool)

(declare-fun res!1070932 () Bool)

(declare-fun e!1606417 () Bool)

(assert (=> d!721384 (=> res!1070932 e!1606417)))

(assert (=> d!721384 (= res!1070932 ((_ is ElementMatch!7565) lt!901867))))

(assert (=> d!721384 (= (validRegex!3191 lt!901867) e!1606417)))

(declare-fun b!2540313 () Bool)

(assert (=> b!2540313 (= e!1606417 e!1606416)))

(assert (=> b!2540313 (= c!406520 ((_ is Star!7565) lt!901867))))

(declare-fun b!2540314 () Bool)

(declare-fun e!1606418 () Bool)

(assert (=> b!2540314 (= e!1606416 e!1606418)))

(assert (=> b!2540314 (= c!406519 ((_ is Union!7565) lt!901867))))

(declare-fun b!2540315 () Bool)

(declare-fun res!1070931 () Bool)

(declare-fun e!1606412 () Bool)

(assert (=> b!2540315 (=> (not res!1070931) (not e!1606412))))

(declare-fun call!160475 () Bool)

(assert (=> b!2540315 (= res!1070931 call!160475)))

(assert (=> b!2540315 (= e!1606418 e!1606412)))

(declare-fun b!2540316 () Bool)

(assert (=> b!2540316 (= e!1606414 call!160477)))

(declare-fun b!2540317 () Bool)

(assert (=> b!2540317 (= e!1606412 call!160476)))

(declare-fun bm!160471 () Bool)

(assert (=> bm!160471 (= call!160476 call!160477)))

(declare-fun b!2540318 () Bool)

(declare-fun res!1070933 () Bool)

(assert (=> b!2540318 (=> res!1070933 e!1606415)))

(assert (=> b!2540318 (= res!1070933 (not ((_ is Concat!12261) lt!901867)))))

(assert (=> b!2540318 (= e!1606418 e!1606415)))

(declare-fun bm!160472 () Bool)

(assert (=> bm!160472 (= call!160475 (validRegex!3191 (ite c!406519 (regOne!15643 lt!901867) (regTwo!15642 lt!901867))))))

(declare-fun b!2540319 () Bool)

(assert (=> b!2540319 (= e!1606413 call!160475)))

(assert (= (and d!721384 (not res!1070932)) b!2540313))

(assert (= (and b!2540313 c!406520) b!2540311))

(assert (= (and b!2540313 (not c!406520)) b!2540314))

(assert (= (and b!2540311 res!1070930) b!2540316))

(assert (= (and b!2540314 c!406519) b!2540315))

(assert (= (and b!2540314 (not c!406519)) b!2540318))

(assert (= (and b!2540315 res!1070931) b!2540317))

(assert (= (and b!2540318 (not res!1070933)) b!2540312))

(assert (= (and b!2540312 res!1070929) b!2540319))

(assert (= (or b!2540315 b!2540319) bm!160472))

(assert (= (or b!2540317 b!2540312) bm!160471))

(assert (= (or b!2540316 bm!160471) bm!160470))

(declare-fun m!2887371 () Bool)

(assert (=> b!2540311 m!2887371))

(declare-fun m!2887373 () Bool)

(assert (=> bm!160470 m!2887373))

(declare-fun m!2887375 () Bool)

(assert (=> bm!160472 m!2887375))

(assert (=> d!721260 d!721384))

(assert (=> d!721260 d!721236))

(declare-fun d!721386 () Bool)

(declare-fun lt!901908 () Regex!7565)

(assert (=> d!721386 (validRegex!3191 lt!901908)))

(declare-fun e!1606422 () Regex!7565)

(assert (=> d!721386 (= lt!901908 e!1606422)))

(declare-fun c!406521 () Bool)

(assert (=> d!721386 (= c!406521 (or ((_ is EmptyExpr!7565) (ite c!406436 (regTwo!15643 r!27340) (ite c!406435 (reg!7894 r!27340) (regOne!15642 r!27340)))) ((_ is EmptyLang!7565) (ite c!406436 (regTwo!15643 r!27340) (ite c!406435 (reg!7894 r!27340) (regOne!15642 r!27340))))))))

(assert (=> d!721386 (validRegex!3191 (ite c!406436 (regTwo!15643 r!27340) (ite c!406435 (reg!7894 r!27340) (regOne!15642 r!27340))))))

(assert (=> d!721386 (= (derivativeStep!2134 (ite c!406436 (regTwo!15643 r!27340) (ite c!406435 (reg!7894 r!27340) (regOne!15642 r!27340))) c!14016) lt!901908)))

(declare-fun c!406524 () Bool)

(declare-fun call!160481 () Regex!7565)

(declare-fun bm!160473 () Bool)

(declare-fun c!406525 () Bool)

(assert (=> bm!160473 (= call!160481 (derivativeStep!2134 (ite c!406525 (regTwo!15643 (ite c!406436 (regTwo!15643 r!27340) (ite c!406435 (reg!7894 r!27340) (regOne!15642 r!27340)))) (ite c!406524 (reg!7894 (ite c!406436 (regTwo!15643 r!27340) (ite c!406435 (reg!7894 r!27340) (regOne!15642 r!27340)))) (regOne!15642 (ite c!406436 (regTwo!15643 r!27340) (ite c!406435 (reg!7894 r!27340) (regOne!15642 r!27340)))))) c!14016))))

(declare-fun bm!160474 () Bool)

(declare-fun call!160479 () Regex!7565)

(assert (=> bm!160474 (= call!160479 (derivativeStep!2134 (ite c!406525 (regOne!15643 (ite c!406436 (regTwo!15643 r!27340) (ite c!406435 (reg!7894 r!27340) (regOne!15642 r!27340)))) (regTwo!15642 (ite c!406436 (regTwo!15643 r!27340) (ite c!406435 (reg!7894 r!27340) (regOne!15642 r!27340))))) c!14016))))

(declare-fun bm!160475 () Bool)

(declare-fun call!160478 () Regex!7565)

(assert (=> bm!160475 (= call!160478 call!160481)))

(declare-fun bm!160476 () Bool)

(declare-fun call!160480 () Regex!7565)

(assert (=> bm!160476 (= call!160480 call!160478)))

(declare-fun b!2540320 () Bool)

(declare-fun e!1606420 () Regex!7565)

(declare-fun e!1606423 () Regex!7565)

(assert (=> b!2540320 (= e!1606420 e!1606423)))

(assert (=> b!2540320 (= c!406524 ((_ is Star!7565) (ite c!406436 (regTwo!15643 r!27340) (ite c!406435 (reg!7894 r!27340) (regOne!15642 r!27340)))))))

(declare-fun b!2540321 () Bool)

(declare-fun e!1606421 () Regex!7565)

(assert (=> b!2540321 (= e!1606422 e!1606421)))

(declare-fun c!406522 () Bool)

(assert (=> b!2540321 (= c!406522 ((_ is ElementMatch!7565) (ite c!406436 (regTwo!15643 r!27340) (ite c!406435 (reg!7894 r!27340) (regOne!15642 r!27340)))))))

(declare-fun b!2540322 () Bool)

(assert (=> b!2540322 (= e!1606423 (Concat!12261 call!160478 (ite c!406436 (regTwo!15643 r!27340) (ite c!406435 (reg!7894 r!27340) (regOne!15642 r!27340)))))))

(declare-fun b!2540323 () Bool)

(declare-fun e!1606419 () Regex!7565)

(assert (=> b!2540323 (= e!1606419 (Union!7565 (Concat!12261 call!160480 (regTwo!15642 (ite c!406436 (regTwo!15643 r!27340) (ite c!406435 (reg!7894 r!27340) (regOne!15642 r!27340))))) EmptyLang!7565))))

(declare-fun b!2540324 () Bool)

(assert (=> b!2540324 (= c!406525 ((_ is Union!7565) (ite c!406436 (regTwo!15643 r!27340) (ite c!406435 (reg!7894 r!27340) (regOne!15642 r!27340)))))))

(assert (=> b!2540324 (= e!1606421 e!1606420)))

(declare-fun b!2540325 () Bool)

(declare-fun c!406523 () Bool)

(assert (=> b!2540325 (= c!406523 (nullable!2482 (regOne!15642 (ite c!406436 (regTwo!15643 r!27340) (ite c!406435 (reg!7894 r!27340) (regOne!15642 r!27340))))))))

(assert (=> b!2540325 (= e!1606423 e!1606419)))

(declare-fun b!2540326 () Bool)

(assert (=> b!2540326 (= e!1606419 (Union!7565 (Concat!12261 call!160480 (regTwo!15642 (ite c!406436 (regTwo!15643 r!27340) (ite c!406435 (reg!7894 r!27340) (regOne!15642 r!27340))))) call!160479))))

(declare-fun b!2540327 () Bool)

(assert (=> b!2540327 (= e!1606420 (Union!7565 call!160479 call!160481))))

(declare-fun b!2540328 () Bool)

(assert (=> b!2540328 (= e!1606422 EmptyLang!7565)))

(declare-fun b!2540329 () Bool)

(assert (=> b!2540329 (= e!1606421 (ite (= c!14016 (c!406353 (ite c!406436 (regTwo!15643 r!27340) (ite c!406435 (reg!7894 r!27340) (regOne!15642 r!27340))))) EmptyExpr!7565 EmptyLang!7565))))

(assert (= (and d!721386 c!406521) b!2540328))

(assert (= (and d!721386 (not c!406521)) b!2540321))

(assert (= (and b!2540321 c!406522) b!2540329))

(assert (= (and b!2540321 (not c!406522)) b!2540324))

(assert (= (and b!2540324 c!406525) b!2540327))

(assert (= (and b!2540324 (not c!406525)) b!2540320))

(assert (= (and b!2540320 c!406524) b!2540322))

(assert (= (and b!2540320 (not c!406524)) b!2540325))

(assert (= (and b!2540325 c!406523) b!2540326))

(assert (= (and b!2540325 (not c!406523)) b!2540323))

(assert (= (or b!2540326 b!2540323) bm!160476))

(assert (= (or b!2540322 bm!160476) bm!160475))

(assert (= (or b!2540327 bm!160475) bm!160473))

(assert (= (or b!2540327 b!2540326) bm!160474))

(declare-fun m!2887377 () Bool)

(assert (=> d!721386 m!2887377))

(declare-fun m!2887379 () Bool)

(assert (=> d!721386 m!2887379))

(declare-fun m!2887381 () Bool)

(assert (=> bm!160473 m!2887381))

(declare-fun m!2887383 () Bool)

(assert (=> bm!160474 m!2887383))

(declare-fun m!2887385 () Bool)

(assert (=> b!2540325 m!2887385))

(assert (=> bm!160399 d!721386))

(assert (=> b!2539819 d!721334))

(assert (=> b!2539819 d!721336))

(assert (=> b!2539796 d!721340))

(declare-fun b!2540330 () Bool)

(declare-fun e!1606428 () Bool)

(declare-fun e!1606426 () Bool)

(assert (=> b!2540330 (= e!1606428 e!1606426)))

(declare-fun res!1070935 () Bool)

(assert (=> b!2540330 (= res!1070935 (not (nullable!2482 (reg!7894 (ite c!406437 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))))))))

(assert (=> b!2540330 (=> (not res!1070935) (not e!1606426))))

(declare-fun c!406526 () Bool)

(declare-fun call!160484 () Bool)

(declare-fun c!406527 () Bool)

(declare-fun bm!160477 () Bool)

(assert (=> bm!160477 (= call!160484 (validRegex!3191 (ite c!406527 (reg!7894 (ite c!406437 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))) (ite c!406526 (regTwo!15643 (ite c!406437 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))) (regOne!15642 (ite c!406437 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340))))))))))

(declare-fun b!2540331 () Bool)

(declare-fun e!1606427 () Bool)

(declare-fun e!1606425 () Bool)

(assert (=> b!2540331 (= e!1606427 e!1606425)))

(declare-fun res!1070934 () Bool)

(assert (=> b!2540331 (=> (not res!1070934) (not e!1606425))))

(declare-fun call!160483 () Bool)

(assert (=> b!2540331 (= res!1070934 call!160483)))

(declare-fun d!721388 () Bool)

(declare-fun res!1070937 () Bool)

(declare-fun e!1606429 () Bool)

(assert (=> d!721388 (=> res!1070937 e!1606429)))

(assert (=> d!721388 (= res!1070937 ((_ is ElementMatch!7565) (ite c!406437 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))))))

(assert (=> d!721388 (= (validRegex!3191 (ite c!406437 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))) e!1606429)))

(declare-fun b!2540332 () Bool)

(assert (=> b!2540332 (= e!1606429 e!1606428)))

(assert (=> b!2540332 (= c!406527 ((_ is Star!7565) (ite c!406437 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))))))

(declare-fun b!2540333 () Bool)

(declare-fun e!1606430 () Bool)

(assert (=> b!2540333 (= e!1606428 e!1606430)))

(assert (=> b!2540333 (= c!406526 ((_ is Union!7565) (ite c!406437 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))))))

(declare-fun b!2540334 () Bool)

(declare-fun res!1070936 () Bool)

(declare-fun e!1606424 () Bool)

(assert (=> b!2540334 (=> (not res!1070936) (not e!1606424))))

(declare-fun call!160482 () Bool)

(assert (=> b!2540334 (= res!1070936 call!160482)))

(assert (=> b!2540334 (= e!1606430 e!1606424)))

(declare-fun b!2540335 () Bool)

(assert (=> b!2540335 (= e!1606426 call!160484)))

(declare-fun b!2540336 () Bool)

(assert (=> b!2540336 (= e!1606424 call!160483)))

(declare-fun bm!160478 () Bool)

(assert (=> bm!160478 (= call!160483 call!160484)))

(declare-fun b!2540337 () Bool)

(declare-fun res!1070938 () Bool)

(assert (=> b!2540337 (=> res!1070938 e!1606427)))

(assert (=> b!2540337 (= res!1070938 (not ((_ is Concat!12261) (ite c!406437 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340))))))))

(assert (=> b!2540337 (= e!1606430 e!1606427)))

(declare-fun bm!160479 () Bool)

(assert (=> bm!160479 (= call!160482 (validRegex!3191 (ite c!406526 (regOne!15643 (ite c!406437 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))) (regTwo!15642 (ite c!406437 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))))))))

(declare-fun b!2540338 () Bool)

(assert (=> b!2540338 (= e!1606425 call!160482)))

(assert (= (and d!721388 (not res!1070937)) b!2540332))

(assert (= (and b!2540332 c!406527) b!2540330))

(assert (= (and b!2540332 (not c!406527)) b!2540333))

(assert (= (and b!2540330 res!1070935) b!2540335))

(assert (= (and b!2540333 c!406526) b!2540334))

(assert (= (and b!2540333 (not c!406526)) b!2540337))

(assert (= (and b!2540334 res!1070936) b!2540336))

(assert (= (and b!2540337 (not res!1070938)) b!2540331))

(assert (= (and b!2540331 res!1070934) b!2540338))

(assert (= (or b!2540334 b!2540338) bm!160479))

(assert (= (or b!2540336 b!2540331) bm!160478))

(assert (= (or b!2540335 bm!160478) bm!160477))

(declare-fun m!2887387 () Bool)

(assert (=> b!2540330 m!2887387))

(declare-fun m!2887389 () Bool)

(assert (=> bm!160477 m!2887389))

(declare-fun m!2887391 () Bool)

(assert (=> bm!160479 m!2887391))

(assert (=> bm!160405 d!721388))

(assert (=> b!2539769 d!721348))

(assert (=> b!2539769 d!721350))

(assert (=> b!2539841 d!721334))

(assert (=> b!2539841 d!721336))

(assert (=> d!721250 d!721356))

(declare-fun b!2540339 () Bool)

(declare-fun e!1606435 () Bool)

(declare-fun e!1606433 () Bool)

(assert (=> b!2540339 (= e!1606435 e!1606433)))

(declare-fun res!1070940 () Bool)

(assert (=> b!2540339 (= res!1070940 (not (nullable!2482 (reg!7894 (derivative!260 (regTwo!15643 r!27340) lt!901848)))))))

(assert (=> b!2540339 (=> (not res!1070940) (not e!1606433))))

(declare-fun bm!160480 () Bool)

(declare-fun c!406529 () Bool)

(declare-fun c!406528 () Bool)

(declare-fun call!160487 () Bool)

(assert (=> bm!160480 (= call!160487 (validRegex!3191 (ite c!406529 (reg!7894 (derivative!260 (regTwo!15643 r!27340) lt!901848)) (ite c!406528 (regTwo!15643 (derivative!260 (regTwo!15643 r!27340) lt!901848)) (regOne!15642 (derivative!260 (regTwo!15643 r!27340) lt!901848))))))))

(declare-fun b!2540340 () Bool)

(declare-fun e!1606434 () Bool)

(declare-fun e!1606432 () Bool)

(assert (=> b!2540340 (= e!1606434 e!1606432)))

(declare-fun res!1070939 () Bool)

(assert (=> b!2540340 (=> (not res!1070939) (not e!1606432))))

(declare-fun call!160486 () Bool)

(assert (=> b!2540340 (= res!1070939 call!160486)))

(declare-fun d!721390 () Bool)

(declare-fun res!1070942 () Bool)

(declare-fun e!1606436 () Bool)

(assert (=> d!721390 (=> res!1070942 e!1606436)))

(assert (=> d!721390 (= res!1070942 ((_ is ElementMatch!7565) (derivative!260 (regTwo!15643 r!27340) lt!901848)))))

(assert (=> d!721390 (= (validRegex!3191 (derivative!260 (regTwo!15643 r!27340) lt!901848)) e!1606436)))

(declare-fun b!2540341 () Bool)

(assert (=> b!2540341 (= e!1606436 e!1606435)))

(assert (=> b!2540341 (= c!406529 ((_ is Star!7565) (derivative!260 (regTwo!15643 r!27340) lt!901848)))))

(declare-fun b!2540342 () Bool)

(declare-fun e!1606437 () Bool)

(assert (=> b!2540342 (= e!1606435 e!1606437)))

(assert (=> b!2540342 (= c!406528 ((_ is Union!7565) (derivative!260 (regTwo!15643 r!27340) lt!901848)))))

(declare-fun b!2540343 () Bool)

(declare-fun res!1070941 () Bool)

(declare-fun e!1606431 () Bool)

(assert (=> b!2540343 (=> (not res!1070941) (not e!1606431))))

(declare-fun call!160485 () Bool)

(assert (=> b!2540343 (= res!1070941 call!160485)))

(assert (=> b!2540343 (= e!1606437 e!1606431)))

(declare-fun b!2540344 () Bool)

(assert (=> b!2540344 (= e!1606433 call!160487)))

(declare-fun b!2540345 () Bool)

(assert (=> b!2540345 (= e!1606431 call!160486)))

(declare-fun bm!160481 () Bool)

(assert (=> bm!160481 (= call!160486 call!160487)))

(declare-fun b!2540346 () Bool)

(declare-fun res!1070943 () Bool)

(assert (=> b!2540346 (=> res!1070943 e!1606434)))

(assert (=> b!2540346 (= res!1070943 (not ((_ is Concat!12261) (derivative!260 (regTwo!15643 r!27340) lt!901848))))))

(assert (=> b!2540346 (= e!1606437 e!1606434)))

(declare-fun bm!160482 () Bool)

(assert (=> bm!160482 (= call!160485 (validRegex!3191 (ite c!406528 (regOne!15643 (derivative!260 (regTwo!15643 r!27340) lt!901848)) (regTwo!15642 (derivative!260 (regTwo!15643 r!27340) lt!901848)))))))

(declare-fun b!2540347 () Bool)

(assert (=> b!2540347 (= e!1606432 call!160485)))

(assert (= (and d!721390 (not res!1070942)) b!2540341))

(assert (= (and b!2540341 c!406529) b!2540339))

(assert (= (and b!2540341 (not c!406529)) b!2540342))

(assert (= (and b!2540339 res!1070940) b!2540344))

(assert (= (and b!2540342 c!406528) b!2540343))

(assert (= (and b!2540342 (not c!406528)) b!2540346))

(assert (= (and b!2540343 res!1070941) b!2540345))

(assert (= (and b!2540346 (not res!1070943)) b!2540340))

(assert (= (and b!2540340 res!1070939) b!2540347))

(assert (= (or b!2540343 b!2540347) bm!160482))

(assert (= (or b!2540345 b!2540340) bm!160481))

(assert (= (or b!2540344 bm!160481) bm!160480))

(declare-fun m!2887393 () Bool)

(assert (=> b!2540339 m!2887393))

(declare-fun m!2887395 () Bool)

(assert (=> bm!160480 m!2887395))

(declare-fun m!2887397 () Bool)

(assert (=> bm!160482 m!2887397))

(assert (=> d!721250 d!721390))

(declare-fun d!721392 () Bool)

(assert (=> d!721392 (= (nullable!2482 r!27340) (nullableFct!713 r!27340))))

(declare-fun bs!469377 () Bool)

(assert (= bs!469377 d!721392))

(declare-fun m!2887399 () Bool)

(assert (=> bs!469377 m!2887399))

(assert (=> b!2539801 d!721392))

(declare-fun b!2540348 () Bool)

(declare-fun e!1606442 () Bool)

(declare-fun e!1606440 () Bool)

(assert (=> b!2540348 (= e!1606442 e!1606440)))

(declare-fun res!1070945 () Bool)

(assert (=> b!2540348 (= res!1070945 (not (nullable!2482 (reg!7894 (ite c!406359 (reg!7894 r!27340) (ite c!406358 (regTwo!15643 r!27340) (regOne!15642 r!27340)))))))))

(assert (=> b!2540348 (=> (not res!1070945) (not e!1606440))))

(declare-fun call!160490 () Bool)

(declare-fun c!406530 () Bool)

(declare-fun bm!160483 () Bool)

(declare-fun c!406531 () Bool)

(assert (=> bm!160483 (= call!160490 (validRegex!3191 (ite c!406531 (reg!7894 (ite c!406359 (reg!7894 r!27340) (ite c!406358 (regTwo!15643 r!27340) (regOne!15642 r!27340)))) (ite c!406530 (regTwo!15643 (ite c!406359 (reg!7894 r!27340) (ite c!406358 (regTwo!15643 r!27340) (regOne!15642 r!27340)))) (regOne!15642 (ite c!406359 (reg!7894 r!27340) (ite c!406358 (regTwo!15643 r!27340) (regOne!15642 r!27340))))))))))

(declare-fun b!2540349 () Bool)

(declare-fun e!1606441 () Bool)

(declare-fun e!1606439 () Bool)

(assert (=> b!2540349 (= e!1606441 e!1606439)))

(declare-fun res!1070944 () Bool)

(assert (=> b!2540349 (=> (not res!1070944) (not e!1606439))))

(declare-fun call!160489 () Bool)

(assert (=> b!2540349 (= res!1070944 call!160489)))

(declare-fun d!721394 () Bool)

(declare-fun res!1070947 () Bool)

(declare-fun e!1606443 () Bool)

(assert (=> d!721394 (=> res!1070947 e!1606443)))

(assert (=> d!721394 (= res!1070947 ((_ is ElementMatch!7565) (ite c!406359 (reg!7894 r!27340) (ite c!406358 (regTwo!15643 r!27340) (regOne!15642 r!27340)))))))

(assert (=> d!721394 (= (validRegex!3191 (ite c!406359 (reg!7894 r!27340) (ite c!406358 (regTwo!15643 r!27340) (regOne!15642 r!27340)))) e!1606443)))

(declare-fun b!2540350 () Bool)

(assert (=> b!2540350 (= e!1606443 e!1606442)))

(assert (=> b!2540350 (= c!406531 ((_ is Star!7565) (ite c!406359 (reg!7894 r!27340) (ite c!406358 (regTwo!15643 r!27340) (regOne!15642 r!27340)))))))

(declare-fun b!2540351 () Bool)

(declare-fun e!1606444 () Bool)

(assert (=> b!2540351 (= e!1606442 e!1606444)))

(assert (=> b!2540351 (= c!406530 ((_ is Union!7565) (ite c!406359 (reg!7894 r!27340) (ite c!406358 (regTwo!15643 r!27340) (regOne!15642 r!27340)))))))

(declare-fun b!2540352 () Bool)

(declare-fun res!1070946 () Bool)

(declare-fun e!1606438 () Bool)

(assert (=> b!2540352 (=> (not res!1070946) (not e!1606438))))

(declare-fun call!160488 () Bool)

(assert (=> b!2540352 (= res!1070946 call!160488)))

(assert (=> b!2540352 (= e!1606444 e!1606438)))

(declare-fun b!2540353 () Bool)

(assert (=> b!2540353 (= e!1606440 call!160490)))

(declare-fun b!2540354 () Bool)

(assert (=> b!2540354 (= e!1606438 call!160489)))

(declare-fun bm!160484 () Bool)

(assert (=> bm!160484 (= call!160489 call!160490)))

(declare-fun b!2540355 () Bool)

(declare-fun res!1070948 () Bool)

(assert (=> b!2540355 (=> res!1070948 e!1606441)))

(assert (=> b!2540355 (= res!1070948 (not ((_ is Concat!12261) (ite c!406359 (reg!7894 r!27340) (ite c!406358 (regTwo!15643 r!27340) (regOne!15642 r!27340))))))))

(assert (=> b!2540355 (= e!1606444 e!1606441)))

(declare-fun bm!160485 () Bool)

(assert (=> bm!160485 (= call!160488 (validRegex!3191 (ite c!406530 (regOne!15643 (ite c!406359 (reg!7894 r!27340) (ite c!406358 (regTwo!15643 r!27340) (regOne!15642 r!27340)))) (regTwo!15642 (ite c!406359 (reg!7894 r!27340) (ite c!406358 (regTwo!15643 r!27340) (regOne!15642 r!27340)))))))))

(declare-fun b!2540356 () Bool)

(assert (=> b!2540356 (= e!1606439 call!160488)))

(assert (= (and d!721394 (not res!1070947)) b!2540350))

(assert (= (and b!2540350 c!406531) b!2540348))

(assert (= (and b!2540350 (not c!406531)) b!2540351))

(assert (= (and b!2540348 res!1070945) b!2540353))

(assert (= (and b!2540351 c!406530) b!2540352))

(assert (= (and b!2540351 (not c!406530)) b!2540355))

(assert (= (and b!2540352 res!1070946) b!2540354))

(assert (= (and b!2540355 (not res!1070948)) b!2540349))

(assert (= (and b!2540349 res!1070944) b!2540356))

(assert (= (or b!2540352 b!2540356) bm!160485))

(assert (= (or b!2540354 b!2540349) bm!160484))

(assert (= (or b!2540353 bm!160484) bm!160483))

(declare-fun m!2887401 () Bool)

(assert (=> b!2540348 m!2887401))

(declare-fun m!2887403 () Bool)

(assert (=> bm!160483 m!2887403))

(declare-fun m!2887405 () Bool)

(assert (=> bm!160485 m!2887405))

(assert (=> bm!160357 d!721394))

(assert (=> b!2539803 d!721334))

(assert (=> b!2539803 d!721336))

(assert (=> d!721264 d!721338))

(assert (=> d!721264 d!721246))

(declare-fun d!721396 () Bool)

(declare-fun lt!901909 () Regex!7565)

(assert (=> d!721396 (validRegex!3191 lt!901909)))

(declare-fun e!1606448 () Regex!7565)

(assert (=> d!721396 (= lt!901909 e!1606448)))

(declare-fun c!406532 () Bool)

(assert (=> d!721396 (= c!406532 (or ((_ is EmptyExpr!7565) (ite c!406425 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406424 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))) ((_ is EmptyLang!7565) (ite c!406425 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406424 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340)))))))))

(assert (=> d!721396 (validRegex!3191 (ite c!406425 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406424 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340)))))))

(assert (=> d!721396 (= (derivativeStep!2134 (ite c!406425 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406424 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340)))) c!14016) lt!901909)))

(declare-fun c!406536 () Bool)

(declare-fun call!160494 () Regex!7565)

(declare-fun c!406535 () Bool)

(declare-fun bm!160486 () Bool)

(assert (=> bm!160486 (= call!160494 (derivativeStep!2134 (ite c!406536 (regTwo!15643 (ite c!406425 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406424 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))) (ite c!406535 (reg!7894 (ite c!406425 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406424 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))) (regOne!15642 (ite c!406425 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406424 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))))) c!14016))))

(declare-fun call!160492 () Regex!7565)

(declare-fun bm!160487 () Bool)

(assert (=> bm!160487 (= call!160492 (derivativeStep!2134 (ite c!406536 (regOne!15643 (ite c!406425 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406424 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))) (regTwo!15642 (ite c!406425 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406424 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340)))))) c!14016))))

(declare-fun bm!160488 () Bool)

(declare-fun call!160491 () Regex!7565)

(assert (=> bm!160488 (= call!160491 call!160494)))

(declare-fun bm!160489 () Bool)

(declare-fun call!160493 () Regex!7565)

(assert (=> bm!160489 (= call!160493 call!160491)))

(declare-fun b!2540357 () Bool)

(declare-fun e!1606446 () Regex!7565)

(declare-fun e!1606449 () Regex!7565)

(assert (=> b!2540357 (= e!1606446 e!1606449)))

(assert (=> b!2540357 (= c!406535 ((_ is Star!7565) (ite c!406425 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406424 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))))))

(declare-fun b!2540358 () Bool)

(declare-fun e!1606447 () Regex!7565)

(assert (=> b!2540358 (= e!1606448 e!1606447)))

(declare-fun c!406533 () Bool)

(assert (=> b!2540358 (= c!406533 ((_ is ElementMatch!7565) (ite c!406425 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406424 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))))))

(declare-fun b!2540359 () Bool)

(assert (=> b!2540359 (= e!1606449 (Concat!12261 call!160491 (ite c!406425 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406424 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))))))

(declare-fun e!1606445 () Regex!7565)

(declare-fun b!2540360 () Bool)

(assert (=> b!2540360 (= e!1606445 (Union!7565 (Concat!12261 call!160493 (regTwo!15642 (ite c!406425 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406424 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340)))))) EmptyLang!7565))))

(declare-fun b!2540361 () Bool)

(assert (=> b!2540361 (= c!406536 ((_ is Union!7565) (ite c!406425 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406424 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340))))))))

(assert (=> b!2540361 (= e!1606447 e!1606446)))

(declare-fun c!406534 () Bool)

(declare-fun b!2540362 () Bool)

(assert (=> b!2540362 (= c!406534 (nullable!2482 (regOne!15642 (ite c!406425 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406424 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340)))))))))

(assert (=> b!2540362 (= e!1606449 e!1606445)))

(declare-fun b!2540363 () Bool)

(assert (=> b!2540363 (= e!1606445 (Union!7565 (Concat!12261 call!160493 (regTwo!15642 (ite c!406425 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406424 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340)))))) call!160492))))

(declare-fun b!2540364 () Bool)

(assert (=> b!2540364 (= e!1606446 (Union!7565 call!160492 call!160494))))

(declare-fun b!2540365 () Bool)

(assert (=> b!2540365 (= e!1606448 EmptyLang!7565)))

(declare-fun b!2540366 () Bool)

(assert (=> b!2540366 (= e!1606447 (ite (= c!14016 (c!406353 (ite c!406425 (regTwo!15643 (regOne!15643 r!27340)) (ite c!406424 (reg!7894 (regOne!15643 r!27340)) (regOne!15642 (regOne!15643 r!27340)))))) EmptyExpr!7565 EmptyLang!7565))))

(assert (= (and d!721396 c!406532) b!2540365))

(assert (= (and d!721396 (not c!406532)) b!2540358))

(assert (= (and b!2540358 c!406533) b!2540366))

(assert (= (and b!2540358 (not c!406533)) b!2540361))

(assert (= (and b!2540361 c!406536) b!2540364))

(assert (= (and b!2540361 (not c!406536)) b!2540357))

(assert (= (and b!2540357 c!406535) b!2540359))

(assert (= (and b!2540357 (not c!406535)) b!2540362))

(assert (= (and b!2540362 c!406534) b!2540363))

(assert (= (and b!2540362 (not c!406534)) b!2540360))

(assert (= (or b!2540363 b!2540360) bm!160489))

(assert (= (or b!2540359 bm!160489) bm!160488))

(assert (= (or b!2540364 bm!160488) bm!160486))

(assert (= (or b!2540364 b!2540363) bm!160487))

(declare-fun m!2887407 () Bool)

(assert (=> d!721396 m!2887407))

(declare-fun m!2887409 () Bool)

(assert (=> d!721396 m!2887409))

(declare-fun m!2887411 () Bool)

(assert (=> bm!160486 m!2887411))

(declare-fun m!2887413 () Bool)

(assert (=> bm!160487 m!2887413))

(declare-fun m!2887415 () Bool)

(assert (=> b!2540362 m!2887415))

(assert (=> bm!160391 d!721396))

(assert (=> b!2539744 d!721348))

(assert (=> b!2539744 d!721350))

(declare-fun d!721398 () Bool)

(assert (=> d!721398 (= (nullable!2482 (regTwo!15643 r!27340)) (nullableFct!713 (regTwo!15643 r!27340)))))

(declare-fun bs!469378 () Bool)

(assert (= bs!469378 d!721398))

(declare-fun m!2887417 () Bool)

(assert (=> bs!469378 m!2887417))

(assert (=> b!2539839 d!721398))

(assert (=> bm!160368 d!721338))

(declare-fun d!721400 () Bool)

(declare-fun res!1070951 () Bool)

(declare-fun e!1606451 () Bool)

(assert (=> d!721400 (=> res!1070951 e!1606451)))

(assert (=> d!721400 (= res!1070951 ((_ is EmptyExpr!7565) (derivative!260 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) tl!4068)))))

(assert (=> d!721400 (= (nullableFct!713 (derivative!260 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) tl!4068)) e!1606451)))

(declare-fun b!2540367 () Bool)

(declare-fun e!1606455 () Bool)

(declare-fun e!1606450 () Bool)

(assert (=> b!2540367 (= e!1606455 e!1606450)))

(declare-fun res!1070949 () Bool)

(assert (=> b!2540367 (=> res!1070949 e!1606450)))

(assert (=> b!2540367 (= res!1070949 ((_ is Star!7565) (derivative!260 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) tl!4068)))))

(declare-fun bm!160490 () Bool)

(declare-fun c!406537 () Bool)

(declare-fun call!160495 () Bool)

(assert (=> bm!160490 (= call!160495 (nullable!2482 (ite c!406537 (regTwo!15643 (derivative!260 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) tl!4068)) (regOne!15642 (derivative!260 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) tl!4068)))))))

(declare-fun b!2540368 () Bool)

(declare-fun e!1606452 () Bool)

(assert (=> b!2540368 (= e!1606450 e!1606452)))

(assert (=> b!2540368 (= c!406537 ((_ is Union!7565) (derivative!260 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) tl!4068)))))

(declare-fun b!2540369 () Bool)

(declare-fun e!1606454 () Bool)

(assert (=> b!2540369 (= e!1606452 e!1606454)))

(declare-fun res!1070952 () Bool)

(declare-fun call!160496 () Bool)

(assert (=> b!2540369 (= res!1070952 call!160496)))

(assert (=> b!2540369 (=> res!1070952 e!1606454)))

(declare-fun b!2540370 () Bool)

(assert (=> b!2540370 (= e!1606451 e!1606455)))

(declare-fun res!1070953 () Bool)

(assert (=> b!2540370 (=> (not res!1070953) (not e!1606455))))

(assert (=> b!2540370 (= res!1070953 (and (not ((_ is EmptyLang!7565) (derivative!260 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) tl!4068))) (not ((_ is ElementMatch!7565) (derivative!260 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) tl!4068)))))))

(declare-fun b!2540371 () Bool)

(declare-fun e!1606453 () Bool)

(assert (=> b!2540371 (= e!1606453 call!160496)))

(declare-fun bm!160491 () Bool)

(assert (=> bm!160491 (= call!160496 (nullable!2482 (ite c!406537 (regOne!15643 (derivative!260 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) tl!4068)) (regTwo!15642 (derivative!260 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) tl!4068)))))))

(declare-fun b!2540372 () Bool)

(assert (=> b!2540372 (= e!1606454 call!160495)))

(declare-fun b!2540373 () Bool)

(assert (=> b!2540373 (= e!1606452 e!1606453)))

(declare-fun res!1070950 () Bool)

(assert (=> b!2540373 (= res!1070950 call!160495)))

(assert (=> b!2540373 (=> (not res!1070950) (not e!1606453))))

(assert (= (and d!721400 (not res!1070951)) b!2540370))

(assert (= (and b!2540370 res!1070953) b!2540367))

(assert (= (and b!2540367 (not res!1070949)) b!2540368))

(assert (= (and b!2540368 c!406537) b!2540369))

(assert (= (and b!2540368 (not c!406537)) b!2540373))

(assert (= (and b!2540369 (not res!1070952)) b!2540372))

(assert (= (and b!2540373 res!1070950) b!2540371))

(assert (= (or b!2540372 b!2540373) bm!160490))

(assert (= (or b!2540369 b!2540371) bm!160491))

(declare-fun m!2887419 () Bool)

(assert (=> bm!160490 m!2887419))

(declare-fun m!2887421 () Bool)

(assert (=> bm!160491 m!2887421))

(assert (=> d!721270 d!721400))

(declare-fun b!2540374 () Bool)

(declare-fun e!1606460 () Bool)

(declare-fun e!1606458 () Bool)

(assert (=> b!2540374 (= e!1606460 e!1606458)))

(declare-fun res!1070955 () Bool)

(assert (=> b!2540374 (= res!1070955 (not (nullable!2482 (reg!7894 lt!901877))))))

(assert (=> b!2540374 (=> (not res!1070955) (not e!1606458))))

(declare-fun call!160499 () Bool)

(declare-fun bm!160492 () Bool)

(declare-fun c!406538 () Bool)

(declare-fun c!406539 () Bool)

(assert (=> bm!160492 (= call!160499 (validRegex!3191 (ite c!406539 (reg!7894 lt!901877) (ite c!406538 (regTwo!15643 lt!901877) (regOne!15642 lt!901877)))))))

(declare-fun b!2540375 () Bool)

(declare-fun e!1606459 () Bool)

(declare-fun e!1606457 () Bool)

(assert (=> b!2540375 (= e!1606459 e!1606457)))

(declare-fun res!1070954 () Bool)

(assert (=> b!2540375 (=> (not res!1070954) (not e!1606457))))

(declare-fun call!160498 () Bool)

(assert (=> b!2540375 (= res!1070954 call!160498)))

(declare-fun d!721402 () Bool)

(declare-fun res!1070957 () Bool)

(declare-fun e!1606461 () Bool)

(assert (=> d!721402 (=> res!1070957 e!1606461)))

(assert (=> d!721402 (= res!1070957 ((_ is ElementMatch!7565) lt!901877))))

(assert (=> d!721402 (= (validRegex!3191 lt!901877) e!1606461)))

(declare-fun b!2540376 () Bool)

(assert (=> b!2540376 (= e!1606461 e!1606460)))

(assert (=> b!2540376 (= c!406539 ((_ is Star!7565) lt!901877))))

(declare-fun b!2540377 () Bool)

(declare-fun e!1606462 () Bool)

(assert (=> b!2540377 (= e!1606460 e!1606462)))

(assert (=> b!2540377 (= c!406538 ((_ is Union!7565) lt!901877))))

(declare-fun b!2540378 () Bool)

(declare-fun res!1070956 () Bool)

(declare-fun e!1606456 () Bool)

(assert (=> b!2540378 (=> (not res!1070956) (not e!1606456))))

(declare-fun call!160497 () Bool)

(assert (=> b!2540378 (= res!1070956 call!160497)))

(assert (=> b!2540378 (= e!1606462 e!1606456)))

(declare-fun b!2540379 () Bool)

(assert (=> b!2540379 (= e!1606458 call!160499)))

(declare-fun b!2540380 () Bool)

(assert (=> b!2540380 (= e!1606456 call!160498)))

(declare-fun bm!160493 () Bool)

(assert (=> bm!160493 (= call!160498 call!160499)))

(declare-fun b!2540381 () Bool)

(declare-fun res!1070958 () Bool)

(assert (=> b!2540381 (=> res!1070958 e!1606459)))

(assert (=> b!2540381 (= res!1070958 (not ((_ is Concat!12261) lt!901877)))))

(assert (=> b!2540381 (= e!1606462 e!1606459)))

(declare-fun bm!160494 () Bool)

(assert (=> bm!160494 (= call!160497 (validRegex!3191 (ite c!406538 (regOne!15643 lt!901877) (regTwo!15642 lt!901877))))))

(declare-fun b!2540382 () Bool)

(assert (=> b!2540382 (= e!1606457 call!160497)))

(assert (= (and d!721402 (not res!1070957)) b!2540376))

(assert (= (and b!2540376 c!406539) b!2540374))

(assert (= (and b!2540376 (not c!406539)) b!2540377))

(assert (= (and b!2540374 res!1070955) b!2540379))

(assert (= (and b!2540377 c!406538) b!2540378))

(assert (= (and b!2540377 (not c!406538)) b!2540381))

(assert (= (and b!2540378 res!1070956) b!2540380))

(assert (= (and b!2540381 (not res!1070958)) b!2540375))

(assert (= (and b!2540375 res!1070954) b!2540382))

(assert (= (or b!2540378 b!2540382) bm!160494))

(assert (= (or b!2540380 b!2540375) bm!160493))

(assert (= (or b!2540379 bm!160493) bm!160492))

(declare-fun m!2887423 () Bool)

(assert (=> b!2540374 m!2887423))

(declare-fun m!2887425 () Bool)

(assert (=> bm!160492 m!2887425))

(declare-fun m!2887427 () Bool)

(assert (=> bm!160494 m!2887427))

(assert (=> d!721274 d!721402))

(assert (=> d!721274 d!721288))

(assert (=> b!2539794 d!721340))

(declare-fun d!721404 () Bool)

(declare-fun lt!901910 () Regex!7565)

(assert (=> d!721404 (validRegex!3191 lt!901910)))

(declare-fun e!1606463 () Regex!7565)

(assert (=> d!721404 (= lt!901910 e!1606463)))

(declare-fun c!406540 () Bool)

(assert (=> d!721404 (= c!406540 ((_ is Cons!29530) (t!211329 tl!4068)))))

(assert (=> d!721404 (validRegex!3191 (derivativeStep!2134 (derivativeStep!2134 r!27340 c!14016) (h!34950 tl!4068)))))

(assert (=> d!721404 (= (derivative!260 (derivativeStep!2134 (derivativeStep!2134 r!27340 c!14016) (h!34950 tl!4068)) (t!211329 tl!4068)) lt!901910)))

(declare-fun b!2540383 () Bool)

(assert (=> b!2540383 (= e!1606463 (derivative!260 (derivativeStep!2134 (derivativeStep!2134 (derivativeStep!2134 r!27340 c!14016) (h!34950 tl!4068)) (h!34950 (t!211329 tl!4068))) (t!211329 (t!211329 tl!4068))))))

(declare-fun b!2540384 () Bool)

(assert (=> b!2540384 (= e!1606463 (derivativeStep!2134 (derivativeStep!2134 r!27340 c!14016) (h!34950 tl!4068)))))

(assert (= (and d!721404 c!406540) b!2540383))

(assert (= (and d!721404 (not c!406540)) b!2540384))

(declare-fun m!2887429 () Bool)

(assert (=> d!721404 m!2887429))

(assert (=> d!721404 m!2887131))

(declare-fun m!2887431 () Bool)

(assert (=> d!721404 m!2887431))

(assert (=> b!2540383 m!2887131))

(declare-fun m!2887433 () Bool)

(assert (=> b!2540383 m!2887433))

(assert (=> b!2540383 m!2887433))

(declare-fun m!2887435 () Bool)

(assert (=> b!2540383 m!2887435))

(assert (=> b!2539923 d!721404))

(declare-fun d!721406 () Bool)

(declare-fun lt!901911 () Regex!7565)

(assert (=> d!721406 (validRegex!3191 lt!901911)))

(declare-fun e!1606467 () Regex!7565)

(assert (=> d!721406 (= lt!901911 e!1606467)))

(declare-fun c!406541 () Bool)

(assert (=> d!721406 (= c!406541 (or ((_ is EmptyExpr!7565) (derivativeStep!2134 r!27340 c!14016)) ((_ is EmptyLang!7565) (derivativeStep!2134 r!27340 c!14016))))))

(assert (=> d!721406 (validRegex!3191 (derivativeStep!2134 r!27340 c!14016))))

(assert (=> d!721406 (= (derivativeStep!2134 (derivativeStep!2134 r!27340 c!14016) (h!34950 tl!4068)) lt!901911)))

(declare-fun c!406544 () Bool)

(declare-fun call!160503 () Regex!7565)

(declare-fun bm!160495 () Bool)

(declare-fun c!406545 () Bool)

(assert (=> bm!160495 (= call!160503 (derivativeStep!2134 (ite c!406545 (regTwo!15643 (derivativeStep!2134 r!27340 c!14016)) (ite c!406544 (reg!7894 (derivativeStep!2134 r!27340 c!14016)) (regOne!15642 (derivativeStep!2134 r!27340 c!14016)))) (h!34950 tl!4068)))))

(declare-fun bm!160496 () Bool)

(declare-fun call!160501 () Regex!7565)

(assert (=> bm!160496 (= call!160501 (derivativeStep!2134 (ite c!406545 (regOne!15643 (derivativeStep!2134 r!27340 c!14016)) (regTwo!15642 (derivativeStep!2134 r!27340 c!14016))) (h!34950 tl!4068)))))

(declare-fun bm!160497 () Bool)

(declare-fun call!160500 () Regex!7565)

(assert (=> bm!160497 (= call!160500 call!160503)))

(declare-fun bm!160498 () Bool)

(declare-fun call!160502 () Regex!7565)

(assert (=> bm!160498 (= call!160502 call!160500)))

(declare-fun b!2540385 () Bool)

(declare-fun e!1606465 () Regex!7565)

(declare-fun e!1606468 () Regex!7565)

(assert (=> b!2540385 (= e!1606465 e!1606468)))

(assert (=> b!2540385 (= c!406544 ((_ is Star!7565) (derivativeStep!2134 r!27340 c!14016)))))

(declare-fun b!2540386 () Bool)

(declare-fun e!1606466 () Regex!7565)

(assert (=> b!2540386 (= e!1606467 e!1606466)))

(declare-fun c!406542 () Bool)

(assert (=> b!2540386 (= c!406542 ((_ is ElementMatch!7565) (derivativeStep!2134 r!27340 c!14016)))))

(declare-fun b!2540387 () Bool)

(assert (=> b!2540387 (= e!1606468 (Concat!12261 call!160500 (derivativeStep!2134 r!27340 c!14016)))))

(declare-fun b!2540388 () Bool)

(declare-fun e!1606464 () Regex!7565)

(assert (=> b!2540388 (= e!1606464 (Union!7565 (Concat!12261 call!160502 (regTwo!15642 (derivativeStep!2134 r!27340 c!14016))) EmptyLang!7565))))

(declare-fun b!2540389 () Bool)

(assert (=> b!2540389 (= c!406545 ((_ is Union!7565) (derivativeStep!2134 r!27340 c!14016)))))

(assert (=> b!2540389 (= e!1606466 e!1606465)))

(declare-fun b!2540390 () Bool)

(declare-fun c!406543 () Bool)

(assert (=> b!2540390 (= c!406543 (nullable!2482 (regOne!15642 (derivativeStep!2134 r!27340 c!14016))))))

(assert (=> b!2540390 (= e!1606468 e!1606464)))

(declare-fun b!2540391 () Bool)

(assert (=> b!2540391 (= e!1606464 (Union!7565 (Concat!12261 call!160502 (regTwo!15642 (derivativeStep!2134 r!27340 c!14016))) call!160501))))

(declare-fun b!2540392 () Bool)

(assert (=> b!2540392 (= e!1606465 (Union!7565 call!160501 call!160503))))

(declare-fun b!2540393 () Bool)

(assert (=> b!2540393 (= e!1606467 EmptyLang!7565)))

(declare-fun b!2540394 () Bool)

(assert (=> b!2540394 (= e!1606466 (ite (= (h!34950 tl!4068) (c!406353 (derivativeStep!2134 r!27340 c!14016))) EmptyExpr!7565 EmptyLang!7565))))

(assert (= (and d!721406 c!406541) b!2540393))

(assert (= (and d!721406 (not c!406541)) b!2540386))

(assert (= (and b!2540386 c!406542) b!2540394))

(assert (= (and b!2540386 (not c!406542)) b!2540389))

(assert (= (and b!2540389 c!406545) b!2540392))

(assert (= (and b!2540389 (not c!406545)) b!2540385))

(assert (= (and b!2540385 c!406544) b!2540387))

(assert (= (and b!2540385 (not c!406544)) b!2540390))

(assert (= (and b!2540390 c!406543) b!2540391))

(assert (= (and b!2540390 (not c!406543)) b!2540388))

(assert (= (or b!2540391 b!2540388) bm!160498))

(assert (= (or b!2540387 bm!160498) bm!160497))

(assert (= (or b!2540392 bm!160497) bm!160495))

(assert (= (or b!2540392 b!2540391) bm!160496))

(declare-fun m!2887437 () Bool)

(assert (=> d!721406 m!2887437))

(assert (=> d!721406 m!2886937))

(assert (=> d!721406 m!2887129))

(declare-fun m!2887439 () Bool)

(assert (=> bm!160495 m!2887439))

(declare-fun m!2887441 () Bool)

(assert (=> bm!160496 m!2887441))

(declare-fun m!2887443 () Bool)

(assert (=> b!2540390 m!2887443))

(assert (=> b!2539923 d!721406))

(declare-fun d!721408 () Bool)

(assert (=> d!721408 (= (nullable!2482 (regOne!15642 (regTwo!15643 r!27340))) (nullableFct!713 (regOne!15642 (regTwo!15643 r!27340))))))

(declare-fun bs!469379 () Bool)

(assert (= bs!469379 d!721408))

(declare-fun m!2887445 () Bool)

(assert (=> bs!469379 m!2887445))

(assert (=> b!2539896 d!721408))

(declare-fun d!721410 () Bool)

(assert (not d!721410))

(assert (=> b!2539790 d!721410))

(declare-fun d!721412 () Bool)

(assert (not d!721412))

(assert (=> b!2539790 d!721412))

(assert (=> b!2539790 d!721340))

(assert (=> b!2539790 d!721350))

(declare-fun b!2540395 () Bool)

(declare-fun e!1606473 () Bool)

(declare-fun e!1606471 () Bool)

(assert (=> b!2540395 (= e!1606473 e!1606471)))

(declare-fun res!1070960 () Bool)

(assert (=> b!2540395 (= res!1070960 (not (nullable!2482 (reg!7894 lt!901881))))))

(assert (=> b!2540395 (=> (not res!1070960) (not e!1606471))))

(declare-fun c!406546 () Bool)

(declare-fun call!160506 () Bool)

(declare-fun c!406547 () Bool)

(declare-fun bm!160499 () Bool)

(assert (=> bm!160499 (= call!160506 (validRegex!3191 (ite c!406547 (reg!7894 lt!901881) (ite c!406546 (regTwo!15643 lt!901881) (regOne!15642 lt!901881)))))))

(declare-fun b!2540396 () Bool)

(declare-fun e!1606472 () Bool)

(declare-fun e!1606470 () Bool)

(assert (=> b!2540396 (= e!1606472 e!1606470)))

(declare-fun res!1070959 () Bool)

(assert (=> b!2540396 (=> (not res!1070959) (not e!1606470))))

(declare-fun call!160505 () Bool)

(assert (=> b!2540396 (= res!1070959 call!160505)))

(declare-fun d!721414 () Bool)

(declare-fun res!1070962 () Bool)

(declare-fun e!1606474 () Bool)

(assert (=> d!721414 (=> res!1070962 e!1606474)))

(assert (=> d!721414 (= res!1070962 ((_ is ElementMatch!7565) lt!901881))))

(assert (=> d!721414 (= (validRegex!3191 lt!901881) e!1606474)))

(declare-fun b!2540397 () Bool)

(assert (=> b!2540397 (= e!1606474 e!1606473)))

(assert (=> b!2540397 (= c!406547 ((_ is Star!7565) lt!901881))))

(declare-fun b!2540398 () Bool)

(declare-fun e!1606475 () Bool)

(assert (=> b!2540398 (= e!1606473 e!1606475)))

(assert (=> b!2540398 (= c!406546 ((_ is Union!7565) lt!901881))))

(declare-fun b!2540399 () Bool)

(declare-fun res!1070961 () Bool)

(declare-fun e!1606469 () Bool)

(assert (=> b!2540399 (=> (not res!1070961) (not e!1606469))))

(declare-fun call!160504 () Bool)

(assert (=> b!2540399 (= res!1070961 call!160504)))

(assert (=> b!2540399 (= e!1606475 e!1606469)))

(declare-fun b!2540400 () Bool)

(assert (=> b!2540400 (= e!1606471 call!160506)))

(declare-fun b!2540401 () Bool)

(assert (=> b!2540401 (= e!1606469 call!160505)))

(declare-fun bm!160500 () Bool)

(assert (=> bm!160500 (= call!160505 call!160506)))

(declare-fun b!2540402 () Bool)

(declare-fun res!1070963 () Bool)

(assert (=> b!2540402 (=> res!1070963 e!1606472)))

(assert (=> b!2540402 (= res!1070963 (not ((_ is Concat!12261) lt!901881)))))

(assert (=> b!2540402 (= e!1606475 e!1606472)))

(declare-fun bm!160501 () Bool)

(assert (=> bm!160501 (= call!160504 (validRegex!3191 (ite c!406546 (regOne!15643 lt!901881) (regTwo!15642 lt!901881))))))

(declare-fun b!2540403 () Bool)

(assert (=> b!2540403 (= e!1606470 call!160504)))

(assert (= (and d!721414 (not res!1070962)) b!2540397))

(assert (= (and b!2540397 c!406547) b!2540395))

(assert (= (and b!2540397 (not c!406547)) b!2540398))

(assert (= (and b!2540395 res!1070960) b!2540400))

(assert (= (and b!2540398 c!406546) b!2540399))

(assert (= (and b!2540398 (not c!406546)) b!2540402))

(assert (= (and b!2540399 res!1070961) b!2540401))

(assert (= (and b!2540402 (not res!1070963)) b!2540396))

(assert (= (and b!2540396 res!1070959) b!2540403))

(assert (= (or b!2540399 b!2540403) bm!160501))

(assert (= (or b!2540401 b!2540396) bm!160500))

(assert (= (or b!2540400 bm!160500) bm!160499))

(declare-fun m!2887447 () Bool)

(assert (=> b!2540395 m!2887447))

(declare-fun m!2887449 () Bool)

(assert (=> bm!160499 m!2887449))

(declare-fun m!2887451 () Bool)

(assert (=> bm!160501 m!2887451))

(assert (=> d!721284 d!721414))

(declare-fun b!2540404 () Bool)

(declare-fun e!1606480 () Bool)

(declare-fun e!1606478 () Bool)

(assert (=> b!2540404 (= e!1606480 e!1606478)))

(declare-fun res!1070965 () Bool)

(assert (=> b!2540404 (= res!1070965 (not (nullable!2482 (reg!7894 (derivativeStep!2134 r!27340 c!14016)))))))

(assert (=> b!2540404 (=> (not res!1070965) (not e!1606478))))

(declare-fun bm!160502 () Bool)

(declare-fun c!406549 () Bool)

(declare-fun call!160509 () Bool)

(declare-fun c!406548 () Bool)

(assert (=> bm!160502 (= call!160509 (validRegex!3191 (ite c!406549 (reg!7894 (derivativeStep!2134 r!27340 c!14016)) (ite c!406548 (regTwo!15643 (derivativeStep!2134 r!27340 c!14016)) (regOne!15642 (derivativeStep!2134 r!27340 c!14016))))))))

(declare-fun b!2540405 () Bool)

(declare-fun e!1606479 () Bool)

(declare-fun e!1606477 () Bool)

(assert (=> b!2540405 (= e!1606479 e!1606477)))

(declare-fun res!1070964 () Bool)

(assert (=> b!2540405 (=> (not res!1070964) (not e!1606477))))

(declare-fun call!160508 () Bool)

(assert (=> b!2540405 (= res!1070964 call!160508)))

(declare-fun d!721416 () Bool)

(declare-fun res!1070967 () Bool)

(declare-fun e!1606481 () Bool)

(assert (=> d!721416 (=> res!1070967 e!1606481)))

(assert (=> d!721416 (= res!1070967 ((_ is ElementMatch!7565) (derivativeStep!2134 r!27340 c!14016)))))

(assert (=> d!721416 (= (validRegex!3191 (derivativeStep!2134 r!27340 c!14016)) e!1606481)))

(declare-fun b!2540406 () Bool)

(assert (=> b!2540406 (= e!1606481 e!1606480)))

(assert (=> b!2540406 (= c!406549 ((_ is Star!7565) (derivativeStep!2134 r!27340 c!14016)))))

(declare-fun b!2540407 () Bool)

(declare-fun e!1606482 () Bool)

(assert (=> b!2540407 (= e!1606480 e!1606482)))

(assert (=> b!2540407 (= c!406548 ((_ is Union!7565) (derivativeStep!2134 r!27340 c!14016)))))

(declare-fun b!2540408 () Bool)

(declare-fun res!1070966 () Bool)

(declare-fun e!1606476 () Bool)

(assert (=> b!2540408 (=> (not res!1070966) (not e!1606476))))

(declare-fun call!160507 () Bool)

(assert (=> b!2540408 (= res!1070966 call!160507)))

(assert (=> b!2540408 (= e!1606482 e!1606476)))

(declare-fun b!2540409 () Bool)

(assert (=> b!2540409 (= e!1606478 call!160509)))

(declare-fun b!2540410 () Bool)

(assert (=> b!2540410 (= e!1606476 call!160508)))

(declare-fun bm!160503 () Bool)

(assert (=> bm!160503 (= call!160508 call!160509)))

(declare-fun b!2540411 () Bool)

(declare-fun res!1070968 () Bool)

(assert (=> b!2540411 (=> res!1070968 e!1606479)))

(assert (=> b!2540411 (= res!1070968 (not ((_ is Concat!12261) (derivativeStep!2134 r!27340 c!14016))))))

(assert (=> b!2540411 (= e!1606482 e!1606479)))

(declare-fun bm!160504 () Bool)

(assert (=> bm!160504 (= call!160507 (validRegex!3191 (ite c!406548 (regOne!15643 (derivativeStep!2134 r!27340 c!14016)) (regTwo!15642 (derivativeStep!2134 r!27340 c!14016)))))))

(declare-fun b!2540412 () Bool)

(assert (=> b!2540412 (= e!1606477 call!160507)))

(assert (= (and d!721416 (not res!1070967)) b!2540406))

(assert (= (and b!2540406 c!406549) b!2540404))

(assert (= (and b!2540406 (not c!406549)) b!2540407))

(assert (= (and b!2540404 res!1070965) b!2540409))

(assert (= (and b!2540407 c!406548) b!2540408))

(assert (= (and b!2540407 (not c!406548)) b!2540411))

(assert (= (and b!2540408 res!1070966) b!2540410))

(assert (= (and b!2540411 (not res!1070968)) b!2540405))

(assert (= (and b!2540405 res!1070964) b!2540412))

(assert (= (or b!2540408 b!2540412) bm!160504))

(assert (= (or b!2540410 b!2540405) bm!160503))

(assert (= (or b!2540409 bm!160503) bm!160502))

(declare-fun m!2887453 () Bool)

(assert (=> b!2540404 m!2887453))

(declare-fun m!2887455 () Bool)

(assert (=> bm!160502 m!2887455))

(declare-fun m!2887457 () Bool)

(assert (=> bm!160504 m!2887457))

(assert (=> d!721284 d!721416))

(assert (=> bm!160370 d!721338))

(declare-fun d!721418 () Bool)

(declare-fun lt!901912 () Regex!7565)

(assert (=> d!721418 (validRegex!3191 lt!901912)))

(declare-fun e!1606483 () Regex!7565)

(assert (=> d!721418 (= lt!901912 e!1606483)))

(declare-fun c!406550 () Bool)

(assert (=> d!721418 (= c!406550 ((_ is Cons!29530) (t!211329 tl!4068)))))

(assert (=> d!721418 (validRegex!3191 (derivativeStep!2134 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) (h!34950 tl!4068)))))

(assert (=> d!721418 (= (derivative!260 (derivativeStep!2134 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) (h!34950 tl!4068)) (t!211329 tl!4068)) lt!901912)))

(declare-fun b!2540413 () Bool)

(assert (=> b!2540413 (= e!1606483 (derivative!260 (derivativeStep!2134 (derivativeStep!2134 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) (h!34950 tl!4068)) (h!34950 (t!211329 tl!4068))) (t!211329 (t!211329 tl!4068))))))

(declare-fun b!2540414 () Bool)

(assert (=> b!2540414 (= e!1606483 (derivativeStep!2134 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) (h!34950 tl!4068)))))

(assert (= (and d!721418 c!406550) b!2540413))

(assert (= (and d!721418 (not c!406550)) b!2540414))

(declare-fun m!2887459 () Bool)

(assert (=> d!721418 m!2887459))

(assert (=> d!721418 m!2887113))

(declare-fun m!2887461 () Bool)

(assert (=> d!721418 m!2887461))

(assert (=> b!2540413 m!2887113))

(declare-fun m!2887463 () Bool)

(assert (=> b!2540413 m!2887463))

(assert (=> b!2540413 m!2887463))

(declare-fun m!2887465 () Bool)

(assert (=> b!2540413 m!2887465))

(assert (=> b!2539901 d!721418))

(declare-fun d!721420 () Bool)

(declare-fun lt!901913 () Regex!7565)

(assert (=> d!721420 (validRegex!3191 lt!901913)))

(declare-fun e!1606487 () Regex!7565)

(assert (=> d!721420 (= lt!901913 e!1606487)))

(declare-fun c!406551 () Bool)

(assert (=> d!721420 (= c!406551 (or ((_ is EmptyExpr!7565) (derivativeStep!2134 (regOne!15643 r!27340) c!14016)) ((_ is EmptyLang!7565) (derivativeStep!2134 (regOne!15643 r!27340) c!14016))))))

(assert (=> d!721420 (validRegex!3191 (derivativeStep!2134 (regOne!15643 r!27340) c!14016))))

(assert (=> d!721420 (= (derivativeStep!2134 (derivativeStep!2134 (regOne!15643 r!27340) c!14016) (h!34950 tl!4068)) lt!901913)))

(declare-fun c!406555 () Bool)

(declare-fun call!160513 () Regex!7565)

(declare-fun c!406554 () Bool)

(declare-fun bm!160505 () Bool)

(assert (=> bm!160505 (= call!160513 (derivativeStep!2134 (ite c!406555 (regTwo!15643 (derivativeStep!2134 (regOne!15643 r!27340) c!14016)) (ite c!406554 (reg!7894 (derivativeStep!2134 (regOne!15643 r!27340) c!14016)) (regOne!15642 (derivativeStep!2134 (regOne!15643 r!27340) c!14016)))) (h!34950 tl!4068)))))

(declare-fun call!160511 () Regex!7565)

(declare-fun bm!160506 () Bool)

(assert (=> bm!160506 (= call!160511 (derivativeStep!2134 (ite c!406555 (regOne!15643 (derivativeStep!2134 (regOne!15643 r!27340) c!14016)) (regTwo!15642 (derivativeStep!2134 (regOne!15643 r!27340) c!14016))) (h!34950 tl!4068)))))

(declare-fun bm!160507 () Bool)

(declare-fun call!160510 () Regex!7565)

(assert (=> bm!160507 (= call!160510 call!160513)))

(declare-fun bm!160508 () Bool)

(declare-fun call!160512 () Regex!7565)

(assert (=> bm!160508 (= call!160512 call!160510)))

(declare-fun b!2540415 () Bool)

(declare-fun e!1606485 () Regex!7565)

(declare-fun e!1606488 () Regex!7565)

(assert (=> b!2540415 (= e!1606485 e!1606488)))

(assert (=> b!2540415 (= c!406554 ((_ is Star!7565) (derivativeStep!2134 (regOne!15643 r!27340) c!14016)))))

(declare-fun b!2540416 () Bool)

(declare-fun e!1606486 () Regex!7565)

(assert (=> b!2540416 (= e!1606487 e!1606486)))

(declare-fun c!406552 () Bool)

(assert (=> b!2540416 (= c!406552 ((_ is ElementMatch!7565) (derivativeStep!2134 (regOne!15643 r!27340) c!14016)))))

(declare-fun b!2540417 () Bool)

(assert (=> b!2540417 (= e!1606488 (Concat!12261 call!160510 (derivativeStep!2134 (regOne!15643 r!27340) c!14016)))))

(declare-fun e!1606484 () Regex!7565)

(declare-fun b!2540418 () Bool)

(assert (=> b!2540418 (= e!1606484 (Union!7565 (Concat!12261 call!160512 (regTwo!15642 (derivativeStep!2134 (regOne!15643 r!27340) c!14016))) EmptyLang!7565))))

(declare-fun b!2540419 () Bool)

(assert (=> b!2540419 (= c!406555 ((_ is Union!7565) (derivativeStep!2134 (regOne!15643 r!27340) c!14016)))))

(assert (=> b!2540419 (= e!1606486 e!1606485)))

(declare-fun b!2540420 () Bool)

(declare-fun c!406553 () Bool)

(assert (=> b!2540420 (= c!406553 (nullable!2482 (regOne!15642 (derivativeStep!2134 (regOne!15643 r!27340) c!14016))))))

(assert (=> b!2540420 (= e!1606488 e!1606484)))

(declare-fun b!2540421 () Bool)

(assert (=> b!2540421 (= e!1606484 (Union!7565 (Concat!12261 call!160512 (regTwo!15642 (derivativeStep!2134 (regOne!15643 r!27340) c!14016))) call!160511))))

(declare-fun b!2540422 () Bool)

(assert (=> b!2540422 (= e!1606485 (Union!7565 call!160511 call!160513))))

(declare-fun b!2540423 () Bool)

(assert (=> b!2540423 (= e!1606487 EmptyLang!7565)))

(declare-fun b!2540424 () Bool)

(assert (=> b!2540424 (= e!1606486 (ite (= (h!34950 tl!4068) (c!406353 (derivativeStep!2134 (regOne!15643 r!27340) c!14016))) EmptyExpr!7565 EmptyLang!7565))))

(assert (= (and d!721420 c!406551) b!2540423))

(assert (= (and d!721420 (not c!406551)) b!2540416))

(assert (= (and b!2540416 c!406552) b!2540424))

(assert (= (and b!2540416 (not c!406552)) b!2540419))

(assert (= (and b!2540419 c!406555) b!2540422))

(assert (= (and b!2540419 (not c!406555)) b!2540415))

(assert (= (and b!2540415 c!406554) b!2540417))

(assert (= (and b!2540415 (not c!406554)) b!2540420))

(assert (= (and b!2540420 c!406553) b!2540421))

(assert (= (and b!2540420 (not c!406553)) b!2540418))

(assert (= (or b!2540421 b!2540418) bm!160508))

(assert (= (or b!2540417 bm!160508) bm!160507))

(assert (= (or b!2540422 bm!160507) bm!160505))

(assert (= (or b!2540422 b!2540421) bm!160506))

(declare-fun m!2887467 () Bool)

(assert (=> d!721420 m!2887467))

(assert (=> d!721420 m!2886977))

(assert (=> d!721420 m!2887111))

(declare-fun m!2887469 () Bool)

(assert (=> bm!160505 m!2887469))

(declare-fun m!2887471 () Bool)

(assert (=> bm!160506 m!2887471))

(declare-fun m!2887473 () Bool)

(assert (=> b!2540420 m!2887473))

(assert (=> b!2539901 d!721420))

(declare-fun d!721422 () Bool)

(assert (=> d!721422 (= (nullable!2482 (reg!7894 (regOne!15643 r!27340))) (nullableFct!713 (reg!7894 (regOne!15643 r!27340))))))

(declare-fun bs!469380 () Bool)

(assert (= bs!469380 d!721422))

(declare-fun m!2887475 () Bool)

(assert (=> bs!469380 m!2887475))

(assert (=> b!2539760 d!721422))

(declare-fun b!2540425 () Bool)

(declare-fun e!1606493 () Bool)

(declare-fun e!1606491 () Bool)

(assert (=> b!2540425 (= e!1606493 e!1606491)))

(declare-fun res!1070970 () Bool)

(assert (=> b!2540425 (= res!1070970 (not (nullable!2482 (reg!7894 lt!901878))))))

(assert (=> b!2540425 (=> (not res!1070970) (not e!1606491))))

(declare-fun call!160516 () Bool)

(declare-fun c!406557 () Bool)

(declare-fun bm!160509 () Bool)

(declare-fun c!406556 () Bool)

(assert (=> bm!160509 (= call!160516 (validRegex!3191 (ite c!406557 (reg!7894 lt!901878) (ite c!406556 (regTwo!15643 lt!901878) (regOne!15642 lt!901878)))))))

(declare-fun b!2540426 () Bool)

(declare-fun e!1606492 () Bool)

(declare-fun e!1606490 () Bool)

(assert (=> b!2540426 (= e!1606492 e!1606490)))

(declare-fun res!1070969 () Bool)

(assert (=> b!2540426 (=> (not res!1070969) (not e!1606490))))

(declare-fun call!160515 () Bool)

(assert (=> b!2540426 (= res!1070969 call!160515)))

(declare-fun d!721424 () Bool)

(declare-fun res!1070972 () Bool)

(declare-fun e!1606494 () Bool)

(assert (=> d!721424 (=> res!1070972 e!1606494)))

(assert (=> d!721424 (= res!1070972 ((_ is ElementMatch!7565) lt!901878))))

(assert (=> d!721424 (= (validRegex!3191 lt!901878) e!1606494)))

(declare-fun b!2540427 () Bool)

(assert (=> b!2540427 (= e!1606494 e!1606493)))

(assert (=> b!2540427 (= c!406557 ((_ is Star!7565) lt!901878))))

(declare-fun b!2540428 () Bool)

(declare-fun e!1606495 () Bool)

(assert (=> b!2540428 (= e!1606493 e!1606495)))

(assert (=> b!2540428 (= c!406556 ((_ is Union!7565) lt!901878))))

(declare-fun b!2540429 () Bool)

(declare-fun res!1070971 () Bool)

(declare-fun e!1606489 () Bool)

(assert (=> b!2540429 (=> (not res!1070971) (not e!1606489))))

(declare-fun call!160514 () Bool)

(assert (=> b!2540429 (= res!1070971 call!160514)))

(assert (=> b!2540429 (= e!1606495 e!1606489)))

(declare-fun b!2540430 () Bool)

(assert (=> b!2540430 (= e!1606491 call!160516)))

(declare-fun b!2540431 () Bool)

(assert (=> b!2540431 (= e!1606489 call!160515)))

(declare-fun bm!160510 () Bool)

(assert (=> bm!160510 (= call!160515 call!160516)))

(declare-fun b!2540432 () Bool)

(declare-fun res!1070973 () Bool)

(assert (=> b!2540432 (=> res!1070973 e!1606492)))

(assert (=> b!2540432 (= res!1070973 (not ((_ is Concat!12261) lt!901878)))))

(assert (=> b!2540432 (= e!1606495 e!1606492)))

(declare-fun bm!160511 () Bool)

(assert (=> bm!160511 (= call!160514 (validRegex!3191 (ite c!406556 (regOne!15643 lt!901878) (regTwo!15642 lt!901878))))))

(declare-fun b!2540433 () Bool)

(assert (=> b!2540433 (= e!1606490 call!160514)))

(assert (= (and d!721424 (not res!1070972)) b!2540427))

(assert (= (and b!2540427 c!406557) b!2540425))

(assert (= (and b!2540427 (not c!406557)) b!2540428))

(assert (= (and b!2540425 res!1070970) b!2540430))

(assert (= (and b!2540428 c!406556) b!2540429))

(assert (= (and b!2540428 (not c!406556)) b!2540432))

(assert (= (and b!2540429 res!1070971) b!2540431))

(assert (= (and b!2540432 (not res!1070973)) b!2540426))

(assert (= (and b!2540426 res!1070969) b!2540433))

(assert (= (or b!2540429 b!2540433) bm!160511))

(assert (= (or b!2540431 b!2540426) bm!160510))

(assert (= (or b!2540430 bm!160510) bm!160509))

(declare-fun m!2887477 () Bool)

(assert (=> b!2540425 m!2887477))

(declare-fun m!2887479 () Bool)

(assert (=> bm!160509 m!2887479))

(declare-fun m!2887481 () Bool)

(assert (=> bm!160511 m!2887481))

(assert (=> d!721278 d!721424))

(declare-fun b!2540434 () Bool)

(declare-fun e!1606500 () Bool)

(declare-fun e!1606498 () Bool)

(assert (=> b!2540434 (= e!1606500 e!1606498)))

(declare-fun res!1070975 () Bool)

(assert (=> b!2540434 (= res!1070975 (not (nullable!2482 (reg!7894 (derivativeStep!2134 (regOne!15643 r!27340) c!14016)))))))

(assert (=> b!2540434 (=> (not res!1070975) (not e!1606498))))

(declare-fun c!406559 () Bool)

(declare-fun bm!160512 () Bool)

(declare-fun call!160519 () Bool)

(declare-fun c!406558 () Bool)

(assert (=> bm!160512 (= call!160519 (validRegex!3191 (ite c!406559 (reg!7894 (derivativeStep!2134 (regOne!15643 r!27340) c!14016)) (ite c!406558 (regTwo!15643 (derivativeStep!2134 (regOne!15643 r!27340) c!14016)) (regOne!15642 (derivativeStep!2134 (regOne!15643 r!27340) c!14016))))))))

(declare-fun b!2540435 () Bool)

(declare-fun e!1606499 () Bool)

(declare-fun e!1606497 () Bool)

(assert (=> b!2540435 (= e!1606499 e!1606497)))

(declare-fun res!1070974 () Bool)

(assert (=> b!2540435 (=> (not res!1070974) (not e!1606497))))

(declare-fun call!160518 () Bool)

(assert (=> b!2540435 (= res!1070974 call!160518)))

(declare-fun d!721426 () Bool)

(declare-fun res!1070977 () Bool)

(declare-fun e!1606501 () Bool)

(assert (=> d!721426 (=> res!1070977 e!1606501)))

(assert (=> d!721426 (= res!1070977 ((_ is ElementMatch!7565) (derivativeStep!2134 (regOne!15643 r!27340) c!14016)))))

(assert (=> d!721426 (= (validRegex!3191 (derivativeStep!2134 (regOne!15643 r!27340) c!14016)) e!1606501)))

(declare-fun b!2540436 () Bool)

(assert (=> b!2540436 (= e!1606501 e!1606500)))

(assert (=> b!2540436 (= c!406559 ((_ is Star!7565) (derivativeStep!2134 (regOne!15643 r!27340) c!14016)))))

(declare-fun b!2540437 () Bool)

(declare-fun e!1606502 () Bool)

(assert (=> b!2540437 (= e!1606500 e!1606502)))

(assert (=> b!2540437 (= c!406558 ((_ is Union!7565) (derivativeStep!2134 (regOne!15643 r!27340) c!14016)))))

(declare-fun b!2540438 () Bool)

(declare-fun res!1070976 () Bool)

(declare-fun e!1606496 () Bool)

(assert (=> b!2540438 (=> (not res!1070976) (not e!1606496))))

(declare-fun call!160517 () Bool)

(assert (=> b!2540438 (= res!1070976 call!160517)))

(assert (=> b!2540438 (= e!1606502 e!1606496)))

(declare-fun b!2540439 () Bool)

(assert (=> b!2540439 (= e!1606498 call!160519)))

(declare-fun b!2540440 () Bool)

(assert (=> b!2540440 (= e!1606496 call!160518)))

(declare-fun bm!160513 () Bool)

(assert (=> bm!160513 (= call!160518 call!160519)))

(declare-fun b!2540441 () Bool)

(declare-fun res!1070978 () Bool)

(assert (=> b!2540441 (=> res!1070978 e!1606499)))

(assert (=> b!2540441 (= res!1070978 (not ((_ is Concat!12261) (derivativeStep!2134 (regOne!15643 r!27340) c!14016))))))

(assert (=> b!2540441 (= e!1606502 e!1606499)))

(declare-fun bm!160514 () Bool)

(assert (=> bm!160514 (= call!160517 (validRegex!3191 (ite c!406558 (regOne!15643 (derivativeStep!2134 (regOne!15643 r!27340) c!14016)) (regTwo!15642 (derivativeStep!2134 (regOne!15643 r!27340) c!14016)))))))

(declare-fun b!2540442 () Bool)

(assert (=> b!2540442 (= e!1606497 call!160517)))

(assert (= (and d!721426 (not res!1070977)) b!2540436))

(assert (= (and b!2540436 c!406559) b!2540434))

(assert (= (and b!2540436 (not c!406559)) b!2540437))

(assert (= (and b!2540434 res!1070975) b!2540439))

(assert (= (and b!2540437 c!406558) b!2540438))

(assert (= (and b!2540437 (not c!406558)) b!2540441))

(assert (= (and b!2540438 res!1070976) b!2540440))

(assert (= (and b!2540441 (not res!1070978)) b!2540435))

(assert (= (and b!2540435 res!1070974) b!2540442))

(assert (= (or b!2540438 b!2540442) bm!160514))

(assert (= (or b!2540440 b!2540435) bm!160513))

(assert (= (or b!2540439 bm!160513) bm!160512))

(declare-fun m!2887483 () Bool)

(assert (=> b!2540434 m!2887483))

(declare-fun m!2887485 () Bool)

(assert (=> bm!160512 m!2887485))

(declare-fun m!2887487 () Bool)

(assert (=> bm!160514 m!2887487))

(assert (=> d!721278 d!721426))

(declare-fun d!721428 () Bool)

(assert (=> d!721428 (= (nullable!2482 (regOne!15642 r!27340)) (nullableFct!713 (regOne!15642 r!27340)))))

(declare-fun bs!469381 () Bool)

(assert (= bs!469381 d!721428))

(declare-fun m!2887489 () Bool)

(assert (=> bs!469381 m!2887489))

(assert (=> b!2539930 d!721428))

(assert (=> d!721240 d!721356))

(declare-fun b!2540443 () Bool)

(declare-fun e!1606507 () Bool)

(declare-fun e!1606505 () Bool)

(assert (=> b!2540443 (= e!1606507 e!1606505)))

(declare-fun res!1070980 () Bool)

(assert (=> b!2540443 (= res!1070980 (not (nullable!2482 (reg!7894 (derivative!260 r!27340 lt!901848)))))))

(assert (=> b!2540443 (=> (not res!1070980) (not e!1606505))))

(declare-fun bm!160515 () Bool)

(declare-fun call!160522 () Bool)

(declare-fun c!406560 () Bool)

(declare-fun c!406561 () Bool)

(assert (=> bm!160515 (= call!160522 (validRegex!3191 (ite c!406561 (reg!7894 (derivative!260 r!27340 lt!901848)) (ite c!406560 (regTwo!15643 (derivative!260 r!27340 lt!901848)) (regOne!15642 (derivative!260 r!27340 lt!901848))))))))

(declare-fun b!2540444 () Bool)

(declare-fun e!1606506 () Bool)

(declare-fun e!1606504 () Bool)

(assert (=> b!2540444 (= e!1606506 e!1606504)))

(declare-fun res!1070979 () Bool)

(assert (=> b!2540444 (=> (not res!1070979) (not e!1606504))))

(declare-fun call!160521 () Bool)

(assert (=> b!2540444 (= res!1070979 call!160521)))

(declare-fun d!721430 () Bool)

(declare-fun res!1070982 () Bool)

(declare-fun e!1606508 () Bool)

(assert (=> d!721430 (=> res!1070982 e!1606508)))

(assert (=> d!721430 (= res!1070982 ((_ is ElementMatch!7565) (derivative!260 r!27340 lt!901848)))))

(assert (=> d!721430 (= (validRegex!3191 (derivative!260 r!27340 lt!901848)) e!1606508)))

(declare-fun b!2540445 () Bool)

(assert (=> b!2540445 (= e!1606508 e!1606507)))

(assert (=> b!2540445 (= c!406561 ((_ is Star!7565) (derivative!260 r!27340 lt!901848)))))

(declare-fun b!2540446 () Bool)

(declare-fun e!1606509 () Bool)

(assert (=> b!2540446 (= e!1606507 e!1606509)))

(assert (=> b!2540446 (= c!406560 ((_ is Union!7565) (derivative!260 r!27340 lt!901848)))))

(declare-fun b!2540447 () Bool)

(declare-fun res!1070981 () Bool)

(declare-fun e!1606503 () Bool)

(assert (=> b!2540447 (=> (not res!1070981) (not e!1606503))))

(declare-fun call!160520 () Bool)

(assert (=> b!2540447 (= res!1070981 call!160520)))

(assert (=> b!2540447 (= e!1606509 e!1606503)))

(declare-fun b!2540448 () Bool)

(assert (=> b!2540448 (= e!1606505 call!160522)))

(declare-fun b!2540449 () Bool)

(assert (=> b!2540449 (= e!1606503 call!160521)))

(declare-fun bm!160516 () Bool)

(assert (=> bm!160516 (= call!160521 call!160522)))

(declare-fun b!2540450 () Bool)

(declare-fun res!1070983 () Bool)

(assert (=> b!2540450 (=> res!1070983 e!1606506)))

(assert (=> b!2540450 (= res!1070983 (not ((_ is Concat!12261) (derivative!260 r!27340 lt!901848))))))

(assert (=> b!2540450 (= e!1606509 e!1606506)))

(declare-fun bm!160517 () Bool)

(assert (=> bm!160517 (= call!160520 (validRegex!3191 (ite c!406560 (regOne!15643 (derivative!260 r!27340 lt!901848)) (regTwo!15642 (derivative!260 r!27340 lt!901848)))))))

(declare-fun b!2540451 () Bool)

(assert (=> b!2540451 (= e!1606504 call!160520)))

(assert (= (and d!721430 (not res!1070982)) b!2540445))

(assert (= (and b!2540445 c!406561) b!2540443))

(assert (= (and b!2540445 (not c!406561)) b!2540446))

(assert (= (and b!2540443 res!1070980) b!2540448))

(assert (= (and b!2540446 c!406560) b!2540447))

(assert (= (and b!2540446 (not c!406560)) b!2540450))

(assert (= (and b!2540447 res!1070981) b!2540449))

(assert (= (and b!2540450 (not res!1070983)) b!2540444))

(assert (= (and b!2540444 res!1070979) b!2540451))

(assert (= (or b!2540447 b!2540451) bm!160517))

(assert (= (or b!2540449 b!2540444) bm!160516))

(assert (= (or b!2540448 bm!160516) bm!160515))

(declare-fun m!2887491 () Bool)

(assert (=> b!2540443 m!2887491))

(declare-fun m!2887493 () Bool)

(assert (=> bm!160515 m!2887493))

(declare-fun m!2887495 () Bool)

(assert (=> bm!160517 m!2887495))

(assert (=> d!721240 d!721430))

(declare-fun b!2540452 () Bool)

(declare-fun e!1606514 () Bool)

(declare-fun e!1606512 () Bool)

(assert (=> b!2540452 (= e!1606514 e!1606512)))

(declare-fun res!1070985 () Bool)

(assert (=> b!2540452 (= res!1070985 (not (nullable!2482 (reg!7894 (ite c!406358 (regOne!15643 r!27340) (regTwo!15642 r!27340))))))))

(assert (=> b!2540452 (=> (not res!1070985) (not e!1606512))))

(declare-fun bm!160518 () Bool)

(declare-fun c!406562 () Bool)

(declare-fun call!160525 () Bool)

(declare-fun c!406563 () Bool)

(assert (=> bm!160518 (= call!160525 (validRegex!3191 (ite c!406563 (reg!7894 (ite c!406358 (regOne!15643 r!27340) (regTwo!15642 r!27340))) (ite c!406562 (regTwo!15643 (ite c!406358 (regOne!15643 r!27340) (regTwo!15642 r!27340))) (regOne!15642 (ite c!406358 (regOne!15643 r!27340) (regTwo!15642 r!27340)))))))))

(declare-fun b!2540453 () Bool)

(declare-fun e!1606513 () Bool)

(declare-fun e!1606511 () Bool)

(assert (=> b!2540453 (= e!1606513 e!1606511)))

(declare-fun res!1070984 () Bool)

(assert (=> b!2540453 (=> (not res!1070984) (not e!1606511))))

(declare-fun call!160524 () Bool)

(assert (=> b!2540453 (= res!1070984 call!160524)))

(declare-fun d!721432 () Bool)

(declare-fun res!1070987 () Bool)

(declare-fun e!1606515 () Bool)

(assert (=> d!721432 (=> res!1070987 e!1606515)))

(assert (=> d!721432 (= res!1070987 ((_ is ElementMatch!7565) (ite c!406358 (regOne!15643 r!27340) (regTwo!15642 r!27340))))))

(assert (=> d!721432 (= (validRegex!3191 (ite c!406358 (regOne!15643 r!27340) (regTwo!15642 r!27340))) e!1606515)))

(declare-fun b!2540454 () Bool)

(assert (=> b!2540454 (= e!1606515 e!1606514)))

(assert (=> b!2540454 (= c!406563 ((_ is Star!7565) (ite c!406358 (regOne!15643 r!27340) (regTwo!15642 r!27340))))))

(declare-fun b!2540455 () Bool)

(declare-fun e!1606516 () Bool)

(assert (=> b!2540455 (= e!1606514 e!1606516)))

(assert (=> b!2540455 (= c!406562 ((_ is Union!7565) (ite c!406358 (regOne!15643 r!27340) (regTwo!15642 r!27340))))))

(declare-fun b!2540456 () Bool)

(declare-fun res!1070986 () Bool)

(declare-fun e!1606510 () Bool)

(assert (=> b!2540456 (=> (not res!1070986) (not e!1606510))))

(declare-fun call!160523 () Bool)

(assert (=> b!2540456 (= res!1070986 call!160523)))

(assert (=> b!2540456 (= e!1606516 e!1606510)))

(declare-fun b!2540457 () Bool)

(assert (=> b!2540457 (= e!1606512 call!160525)))

(declare-fun b!2540458 () Bool)

(assert (=> b!2540458 (= e!1606510 call!160524)))

(declare-fun bm!160519 () Bool)

(assert (=> bm!160519 (= call!160524 call!160525)))

(declare-fun b!2540459 () Bool)

(declare-fun res!1070988 () Bool)

(assert (=> b!2540459 (=> res!1070988 e!1606513)))

(assert (=> b!2540459 (= res!1070988 (not ((_ is Concat!12261) (ite c!406358 (regOne!15643 r!27340) (regTwo!15642 r!27340)))))))

(assert (=> b!2540459 (= e!1606516 e!1606513)))

(declare-fun bm!160520 () Bool)

(assert (=> bm!160520 (= call!160523 (validRegex!3191 (ite c!406562 (regOne!15643 (ite c!406358 (regOne!15643 r!27340) (regTwo!15642 r!27340))) (regTwo!15642 (ite c!406358 (regOne!15643 r!27340) (regTwo!15642 r!27340))))))))

(declare-fun b!2540460 () Bool)

(assert (=> b!2540460 (= e!1606511 call!160523)))

(assert (= (and d!721432 (not res!1070987)) b!2540454))

(assert (= (and b!2540454 c!406563) b!2540452))

(assert (= (and b!2540454 (not c!406563)) b!2540455))

(assert (= (and b!2540452 res!1070985) b!2540457))

(assert (= (and b!2540455 c!406562) b!2540456))

(assert (= (and b!2540455 (not c!406562)) b!2540459))

(assert (= (and b!2540456 res!1070986) b!2540458))

(assert (= (and b!2540459 (not res!1070988)) b!2540453))

(assert (= (and b!2540453 res!1070984) b!2540460))

(assert (= (or b!2540456 b!2540460) bm!160520))

(assert (= (or b!2540458 b!2540453) bm!160519))

(assert (= (or b!2540457 bm!160519) bm!160518))

(declare-fun m!2887497 () Bool)

(assert (=> b!2540452 m!2887497))

(declare-fun m!2887499 () Bool)

(assert (=> bm!160518 m!2887499))

(declare-fun m!2887501 () Bool)

(assert (=> bm!160520 m!2887501))

(assert (=> bm!160359 d!721432))

(declare-fun d!721434 () Bool)

(assert (=> d!721434 (= (nullable!2482 (regOne!15642 (regOne!15643 r!27340))) (nullableFct!713 (regOne!15642 (regOne!15643 r!27340))))))

(declare-fun bs!469382 () Bool)

(assert (= bs!469382 d!721434))

(declare-fun m!2887503 () Bool)

(assert (=> bs!469382 m!2887503))

(assert (=> b!2539908 d!721434))

(declare-fun d!721436 () Bool)

(assert (=> d!721436 (= (nullable!2482 (reg!7894 (regTwo!15643 r!27340))) (nullableFct!713 (reg!7894 (regTwo!15643 r!27340))))))

(declare-fun bs!469383 () Bool)

(assert (= bs!469383 d!721436))

(declare-fun m!2887505 () Bool)

(assert (=> bs!469383 m!2887505))

(assert (=> b!2539935 d!721436))

(assert (=> d!721254 d!721356))

(declare-fun b!2540461 () Bool)

(declare-fun e!1606521 () Bool)

(declare-fun e!1606519 () Bool)

(assert (=> b!2540461 (= e!1606521 e!1606519)))

(declare-fun res!1070990 () Bool)

(assert (=> b!2540461 (= res!1070990 (not (nullable!2482 (reg!7894 (derivative!260 (regOne!15643 r!27340) lt!901848)))))))

(assert (=> b!2540461 (=> (not res!1070990) (not e!1606519))))

(declare-fun c!406564 () Bool)

(declare-fun c!406565 () Bool)

(declare-fun call!160528 () Bool)

(declare-fun bm!160521 () Bool)

(assert (=> bm!160521 (= call!160528 (validRegex!3191 (ite c!406565 (reg!7894 (derivative!260 (regOne!15643 r!27340) lt!901848)) (ite c!406564 (regTwo!15643 (derivative!260 (regOne!15643 r!27340) lt!901848)) (regOne!15642 (derivative!260 (regOne!15643 r!27340) lt!901848))))))))

(declare-fun b!2540462 () Bool)

(declare-fun e!1606520 () Bool)

(declare-fun e!1606518 () Bool)

(assert (=> b!2540462 (= e!1606520 e!1606518)))

(declare-fun res!1070989 () Bool)

(assert (=> b!2540462 (=> (not res!1070989) (not e!1606518))))

(declare-fun call!160527 () Bool)

(assert (=> b!2540462 (= res!1070989 call!160527)))

(declare-fun d!721438 () Bool)

(declare-fun res!1070992 () Bool)

(declare-fun e!1606522 () Bool)

(assert (=> d!721438 (=> res!1070992 e!1606522)))

(assert (=> d!721438 (= res!1070992 ((_ is ElementMatch!7565) (derivative!260 (regOne!15643 r!27340) lt!901848)))))

(assert (=> d!721438 (= (validRegex!3191 (derivative!260 (regOne!15643 r!27340) lt!901848)) e!1606522)))

(declare-fun b!2540463 () Bool)

(assert (=> b!2540463 (= e!1606522 e!1606521)))

(assert (=> b!2540463 (= c!406565 ((_ is Star!7565) (derivative!260 (regOne!15643 r!27340) lt!901848)))))

(declare-fun b!2540464 () Bool)

(declare-fun e!1606523 () Bool)

(assert (=> b!2540464 (= e!1606521 e!1606523)))

(assert (=> b!2540464 (= c!406564 ((_ is Union!7565) (derivative!260 (regOne!15643 r!27340) lt!901848)))))

(declare-fun b!2540465 () Bool)

(declare-fun res!1070991 () Bool)

(declare-fun e!1606517 () Bool)

(assert (=> b!2540465 (=> (not res!1070991) (not e!1606517))))

(declare-fun call!160526 () Bool)

(assert (=> b!2540465 (= res!1070991 call!160526)))

(assert (=> b!2540465 (= e!1606523 e!1606517)))

(declare-fun b!2540466 () Bool)

(assert (=> b!2540466 (= e!1606519 call!160528)))

(declare-fun b!2540467 () Bool)

(assert (=> b!2540467 (= e!1606517 call!160527)))

(declare-fun bm!160522 () Bool)

(assert (=> bm!160522 (= call!160527 call!160528)))

(declare-fun b!2540468 () Bool)

(declare-fun res!1070993 () Bool)

(assert (=> b!2540468 (=> res!1070993 e!1606520)))

(assert (=> b!2540468 (= res!1070993 (not ((_ is Concat!12261) (derivative!260 (regOne!15643 r!27340) lt!901848))))))

(assert (=> b!2540468 (= e!1606523 e!1606520)))

(declare-fun bm!160523 () Bool)

(assert (=> bm!160523 (= call!160526 (validRegex!3191 (ite c!406564 (regOne!15643 (derivative!260 (regOne!15643 r!27340) lt!901848)) (regTwo!15642 (derivative!260 (regOne!15643 r!27340) lt!901848)))))))

(declare-fun b!2540469 () Bool)

(assert (=> b!2540469 (= e!1606518 call!160526)))

(assert (= (and d!721438 (not res!1070992)) b!2540463))

(assert (= (and b!2540463 c!406565) b!2540461))

(assert (= (and b!2540463 (not c!406565)) b!2540464))

(assert (= (and b!2540461 res!1070990) b!2540466))

(assert (= (and b!2540464 c!406564) b!2540465))

(assert (= (and b!2540464 (not c!406564)) b!2540468))

(assert (= (and b!2540465 res!1070991) b!2540467))

(assert (= (and b!2540468 (not res!1070993)) b!2540462))

(assert (= (and b!2540462 res!1070989) b!2540469))

(assert (= (or b!2540465 b!2540469) bm!160523))

(assert (= (or b!2540467 b!2540462) bm!160522))

(assert (= (or b!2540466 bm!160522) bm!160521))

(declare-fun m!2887507 () Bool)

(assert (=> b!2540461 m!2887507))

(declare-fun m!2887509 () Bool)

(assert (=> bm!160521 m!2887509))

(declare-fun m!2887511 () Bool)

(assert (=> bm!160523 m!2887511))

(assert (=> d!721254 d!721438))

(assert (=> b!2539750 d!721348))

(assert (=> b!2539750 d!721350))

(declare-fun d!721440 () Bool)

(declare-fun lt!901914 () Regex!7565)

(assert (=> d!721440 (validRegex!3191 lt!901914)))

(declare-fun e!1606527 () Regex!7565)

(assert (=> d!721440 (= lt!901914 e!1606527)))

(declare-fun c!406566 () Bool)

(assert (=> d!721440 (= c!406566 (or ((_ is EmptyExpr!7565) (ite c!406419 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))) ((_ is EmptyLang!7565) (ite c!406419 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340))))))))

(assert (=> d!721440 (validRegex!3191 (ite c!406419 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340))))))

(assert (=> d!721440 (= (derivativeStep!2134 (ite c!406419 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340))) c!14016) lt!901914)))

(declare-fun c!406570 () Bool)

(declare-fun call!160532 () Regex!7565)

(declare-fun c!406569 () Bool)

(declare-fun bm!160524 () Bool)

(assert (=> bm!160524 (= call!160532 (derivativeStep!2134 (ite c!406570 (regTwo!15643 (ite c!406419 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))) (ite c!406569 (reg!7894 (ite c!406419 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))) (regOne!15642 (ite c!406419 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))))) c!14016))))

(declare-fun call!160530 () Regex!7565)

(declare-fun bm!160525 () Bool)

(assert (=> bm!160525 (= call!160530 (derivativeStep!2134 (ite c!406570 (regOne!15643 (ite c!406419 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))) (regTwo!15642 (ite c!406419 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340))))) c!14016))))

(declare-fun bm!160526 () Bool)

(declare-fun call!160529 () Regex!7565)

(assert (=> bm!160526 (= call!160529 call!160532)))

(declare-fun bm!160527 () Bool)

(declare-fun call!160531 () Regex!7565)

(assert (=> bm!160527 (= call!160531 call!160529)))

(declare-fun b!2540470 () Bool)

(declare-fun e!1606525 () Regex!7565)

(declare-fun e!1606528 () Regex!7565)

(assert (=> b!2540470 (= e!1606525 e!1606528)))

(assert (=> b!2540470 (= c!406569 ((_ is Star!7565) (ite c!406419 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))))))

(declare-fun b!2540471 () Bool)

(declare-fun e!1606526 () Regex!7565)

(assert (=> b!2540471 (= e!1606527 e!1606526)))

(declare-fun c!406567 () Bool)

(assert (=> b!2540471 (= c!406567 ((_ is ElementMatch!7565) (ite c!406419 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))))))

(declare-fun b!2540472 () Bool)

(assert (=> b!2540472 (= e!1606528 (Concat!12261 call!160529 (ite c!406419 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))))))

(declare-fun b!2540473 () Bool)

(declare-fun e!1606524 () Regex!7565)

(assert (=> b!2540473 (= e!1606524 (Union!7565 (Concat!12261 call!160531 (regTwo!15642 (ite c!406419 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340))))) EmptyLang!7565))))

(declare-fun b!2540474 () Bool)

(assert (=> b!2540474 (= c!406570 ((_ is Union!7565) (ite c!406419 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340)))))))

(assert (=> b!2540474 (= e!1606526 e!1606525)))

(declare-fun b!2540475 () Bool)

(declare-fun c!406568 () Bool)

(assert (=> b!2540475 (= c!406568 (nullable!2482 (regOne!15642 (ite c!406419 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340))))))))

(assert (=> b!2540475 (= e!1606528 e!1606524)))

(declare-fun b!2540476 () Bool)

(assert (=> b!2540476 (= e!1606524 (Union!7565 (Concat!12261 call!160531 (regTwo!15642 (ite c!406419 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340))))) call!160530))))

(declare-fun b!2540477 () Bool)

(assert (=> b!2540477 (= e!1606525 (Union!7565 call!160530 call!160532))))

(declare-fun b!2540478 () Bool)

(assert (=> b!2540478 (= e!1606527 EmptyLang!7565)))

(declare-fun b!2540479 () Bool)

(assert (=> b!2540479 (= e!1606526 (ite (= c!14016 (c!406353 (ite c!406419 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340))))) EmptyExpr!7565 EmptyLang!7565))))

(assert (= (and d!721440 c!406566) b!2540478))

(assert (= (and d!721440 (not c!406566)) b!2540471))

(assert (= (and b!2540471 c!406567) b!2540479))

(assert (= (and b!2540471 (not c!406567)) b!2540474))

(assert (= (and b!2540474 c!406570) b!2540477))

(assert (= (and b!2540474 (not c!406570)) b!2540470))

(assert (= (and b!2540470 c!406569) b!2540472))

(assert (= (and b!2540470 (not c!406569)) b!2540475))

(assert (= (and b!2540475 c!406568) b!2540476))

(assert (= (and b!2540475 (not c!406568)) b!2540473))

(assert (= (or b!2540476 b!2540473) bm!160527))

(assert (= (or b!2540472 bm!160527) bm!160526))

(assert (= (or b!2540477 bm!160526) bm!160524))

(assert (= (or b!2540477 b!2540476) bm!160525))

(declare-fun m!2887513 () Bool)

(assert (=> d!721440 m!2887513))

(declare-fun m!2887515 () Bool)

(assert (=> d!721440 m!2887515))

(declare-fun m!2887517 () Bool)

(assert (=> bm!160524 m!2887517))

(declare-fun m!2887519 () Bool)

(assert (=> bm!160525 m!2887519))

(declare-fun m!2887521 () Bool)

(assert (=> b!2540475 m!2887521))

(assert (=> bm!160388 d!721440))

(assert (=> b!2539825 d!721334))

(assert (=> b!2539825 d!721336))

(assert (=> b!2539783 d!721348))

(assert (=> b!2539783 d!721350))

(assert (=> b!2539810 d!721354))

(declare-fun b!2540480 () Bool)

(declare-fun e!1606533 () Bool)

(declare-fun e!1606531 () Bool)

(assert (=> b!2540480 (= e!1606533 e!1606531)))

(declare-fun res!1070995 () Bool)

(assert (=> b!2540480 (= res!1070995 (not (nullable!2482 (reg!7894 lt!901882))))))

(assert (=> b!2540480 (=> (not res!1070995) (not e!1606531))))

(declare-fun c!406571 () Bool)

(declare-fun bm!160528 () Bool)

(declare-fun c!406572 () Bool)

(declare-fun call!160535 () Bool)

(assert (=> bm!160528 (= call!160535 (validRegex!3191 (ite c!406572 (reg!7894 lt!901882) (ite c!406571 (regTwo!15643 lt!901882) (regOne!15642 lt!901882)))))))

(declare-fun b!2540481 () Bool)

(declare-fun e!1606532 () Bool)

(declare-fun e!1606530 () Bool)

(assert (=> b!2540481 (= e!1606532 e!1606530)))

(declare-fun res!1070994 () Bool)

(assert (=> b!2540481 (=> (not res!1070994) (not e!1606530))))

(declare-fun call!160534 () Bool)

(assert (=> b!2540481 (= res!1070994 call!160534)))

(declare-fun d!721442 () Bool)

(declare-fun res!1070997 () Bool)

(declare-fun e!1606534 () Bool)

(assert (=> d!721442 (=> res!1070997 e!1606534)))

(assert (=> d!721442 (= res!1070997 ((_ is ElementMatch!7565) lt!901882))))

(assert (=> d!721442 (= (validRegex!3191 lt!901882) e!1606534)))

(declare-fun b!2540482 () Bool)

(assert (=> b!2540482 (= e!1606534 e!1606533)))

(assert (=> b!2540482 (= c!406572 ((_ is Star!7565) lt!901882))))

(declare-fun b!2540483 () Bool)

(declare-fun e!1606535 () Bool)

(assert (=> b!2540483 (= e!1606533 e!1606535)))

(assert (=> b!2540483 (= c!406571 ((_ is Union!7565) lt!901882))))

(declare-fun b!2540484 () Bool)

(declare-fun res!1070996 () Bool)

(declare-fun e!1606529 () Bool)

(assert (=> b!2540484 (=> (not res!1070996) (not e!1606529))))

(declare-fun call!160533 () Bool)

(assert (=> b!2540484 (= res!1070996 call!160533)))

(assert (=> b!2540484 (= e!1606535 e!1606529)))

(declare-fun b!2540485 () Bool)

(assert (=> b!2540485 (= e!1606531 call!160535)))

(declare-fun b!2540486 () Bool)

(assert (=> b!2540486 (= e!1606529 call!160534)))

(declare-fun bm!160529 () Bool)

(assert (=> bm!160529 (= call!160534 call!160535)))

(declare-fun b!2540487 () Bool)

(declare-fun res!1070998 () Bool)

(assert (=> b!2540487 (=> res!1070998 e!1606532)))

(assert (=> b!2540487 (= res!1070998 (not ((_ is Concat!12261) lt!901882)))))

(assert (=> b!2540487 (= e!1606535 e!1606532)))

(declare-fun bm!160530 () Bool)

(assert (=> bm!160530 (= call!160533 (validRegex!3191 (ite c!406571 (regOne!15643 lt!901882) (regTwo!15642 lt!901882))))))

(declare-fun b!2540488 () Bool)

(assert (=> b!2540488 (= e!1606530 call!160533)))

(assert (= (and d!721442 (not res!1070997)) b!2540482))

(assert (= (and b!2540482 c!406572) b!2540480))

(assert (= (and b!2540482 (not c!406572)) b!2540483))

(assert (= (and b!2540480 res!1070995) b!2540485))

(assert (= (and b!2540483 c!406571) b!2540484))

(assert (= (and b!2540483 (not c!406571)) b!2540487))

(assert (= (and b!2540484 res!1070996) b!2540486))

(assert (= (and b!2540487 (not res!1070998)) b!2540481))

(assert (= (and b!2540481 res!1070994) b!2540488))

(assert (= (or b!2540484 b!2540488) bm!160530))

(assert (= (or b!2540486 b!2540481) bm!160529))

(assert (= (or b!2540485 bm!160529) bm!160528))

(declare-fun m!2887523 () Bool)

(assert (=> b!2540480 m!2887523))

(declare-fun m!2887525 () Bool)

(assert (=> bm!160528 m!2887525))

(declare-fun m!2887527 () Bool)

(assert (=> bm!160530 m!2887527))

(assert (=> d!721286 d!721442))

(assert (=> d!721286 d!721236))

(declare-fun d!721444 () Bool)

(assert (=> d!721444 (= (nullable!2482 (regOne!15643 r!27340)) (nullableFct!713 (regOne!15643 r!27340)))))

(declare-fun bs!469384 () Bool)

(assert (= bs!469384 d!721444))

(declare-fun m!2887529 () Bool)

(assert (=> bs!469384 m!2887529))

(assert (=> b!2539823 d!721444))

(declare-fun d!721446 () Bool)

(declare-fun lt!901915 () Regex!7565)

(assert (=> d!721446 (validRegex!3191 lt!901915)))

(declare-fun e!1606536 () Regex!7565)

(assert (=> d!721446 (= lt!901915 e!1606536)))

(declare-fun c!406573 () Bool)

(assert (=> d!721446 (= c!406573 ((_ is Cons!29530) (t!211329 tl!4068)))))

(assert (=> d!721446 (validRegex!3191 (derivativeStep!2134 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) (h!34950 tl!4068)))))

(assert (=> d!721446 (= (derivative!260 (derivativeStep!2134 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) (h!34950 tl!4068)) (t!211329 tl!4068)) lt!901915)))

(declare-fun b!2540489 () Bool)

(assert (=> b!2540489 (= e!1606536 (derivative!260 (derivativeStep!2134 (derivativeStep!2134 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) (h!34950 tl!4068)) (h!34950 (t!211329 tl!4068))) (t!211329 (t!211329 tl!4068))))))

(declare-fun b!2540490 () Bool)

(assert (=> b!2540490 (= e!1606536 (derivativeStep!2134 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) (h!34950 tl!4068)))))

(assert (= (and d!721446 c!406573) b!2540489))

(assert (= (and d!721446 (not c!406573)) b!2540490))

(declare-fun m!2887531 () Bool)

(assert (=> d!721446 m!2887531))

(assert (=> d!721446 m!2887095))

(declare-fun m!2887533 () Bool)

(assert (=> d!721446 m!2887533))

(assert (=> b!2540489 m!2887095))

(declare-fun m!2887535 () Bool)

(assert (=> b!2540489 m!2887535))

(assert (=> b!2540489 m!2887535))

(declare-fun m!2887537 () Bool)

(assert (=> b!2540489 m!2887537))

(assert (=> b!2539857 d!721446))

(declare-fun d!721448 () Bool)

(declare-fun lt!901916 () Regex!7565)

(assert (=> d!721448 (validRegex!3191 lt!901916)))

(declare-fun e!1606540 () Regex!7565)

(assert (=> d!721448 (= lt!901916 e!1606540)))

(declare-fun c!406574 () Bool)

(assert (=> d!721448 (= c!406574 (or ((_ is EmptyExpr!7565) (derivativeStep!2134 (regTwo!15643 r!27340) c!14016)) ((_ is EmptyLang!7565) (derivativeStep!2134 (regTwo!15643 r!27340) c!14016))))))

(assert (=> d!721448 (validRegex!3191 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016))))

(assert (=> d!721448 (= (derivativeStep!2134 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016) (h!34950 tl!4068)) lt!901916)))

(declare-fun call!160539 () Regex!7565)

(declare-fun c!406577 () Bool)

(declare-fun bm!160531 () Bool)

(declare-fun c!406578 () Bool)

(assert (=> bm!160531 (= call!160539 (derivativeStep!2134 (ite c!406578 (regTwo!15643 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016)) (ite c!406577 (reg!7894 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016)) (regOne!15642 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016)))) (h!34950 tl!4068)))))

(declare-fun call!160537 () Regex!7565)

(declare-fun bm!160532 () Bool)

(assert (=> bm!160532 (= call!160537 (derivativeStep!2134 (ite c!406578 (regOne!15643 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016)) (regTwo!15642 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016))) (h!34950 tl!4068)))))

(declare-fun bm!160533 () Bool)

(declare-fun call!160536 () Regex!7565)

(assert (=> bm!160533 (= call!160536 call!160539)))

(declare-fun bm!160534 () Bool)

(declare-fun call!160538 () Regex!7565)

(assert (=> bm!160534 (= call!160538 call!160536)))

(declare-fun b!2540491 () Bool)

(declare-fun e!1606538 () Regex!7565)

(declare-fun e!1606541 () Regex!7565)

(assert (=> b!2540491 (= e!1606538 e!1606541)))

(assert (=> b!2540491 (= c!406577 ((_ is Star!7565) (derivativeStep!2134 (regTwo!15643 r!27340) c!14016)))))

(declare-fun b!2540492 () Bool)

(declare-fun e!1606539 () Regex!7565)

(assert (=> b!2540492 (= e!1606540 e!1606539)))

(declare-fun c!406575 () Bool)

(assert (=> b!2540492 (= c!406575 ((_ is ElementMatch!7565) (derivativeStep!2134 (regTwo!15643 r!27340) c!14016)))))

(declare-fun b!2540493 () Bool)

(assert (=> b!2540493 (= e!1606541 (Concat!12261 call!160536 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016)))))

(declare-fun b!2540494 () Bool)

(declare-fun e!1606537 () Regex!7565)

(assert (=> b!2540494 (= e!1606537 (Union!7565 (Concat!12261 call!160538 (regTwo!15642 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016))) EmptyLang!7565))))

(declare-fun b!2540495 () Bool)

(assert (=> b!2540495 (= c!406578 ((_ is Union!7565) (derivativeStep!2134 (regTwo!15643 r!27340) c!14016)))))

(assert (=> b!2540495 (= e!1606539 e!1606538)))

(declare-fun b!2540496 () Bool)

(declare-fun c!406576 () Bool)

(assert (=> b!2540496 (= c!406576 (nullable!2482 (regOne!15642 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016))))))

(assert (=> b!2540496 (= e!1606541 e!1606537)))

(declare-fun b!2540497 () Bool)

(assert (=> b!2540497 (= e!1606537 (Union!7565 (Concat!12261 call!160538 (regTwo!15642 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016))) call!160537))))

(declare-fun b!2540498 () Bool)

(assert (=> b!2540498 (= e!1606538 (Union!7565 call!160537 call!160539))))

(declare-fun b!2540499 () Bool)

(assert (=> b!2540499 (= e!1606540 EmptyLang!7565)))

(declare-fun b!2540500 () Bool)

(assert (=> b!2540500 (= e!1606539 (ite (= (h!34950 tl!4068) (c!406353 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016))) EmptyExpr!7565 EmptyLang!7565))))

(assert (= (and d!721448 c!406574) b!2540499))

(assert (= (and d!721448 (not c!406574)) b!2540492))

(assert (= (and b!2540492 c!406575) b!2540500))

(assert (= (and b!2540492 (not c!406575)) b!2540495))

(assert (= (and b!2540495 c!406578) b!2540498))

(assert (= (and b!2540495 (not c!406578)) b!2540491))

(assert (= (and b!2540491 c!406577) b!2540493))

(assert (= (and b!2540491 (not c!406577)) b!2540496))

(assert (= (and b!2540496 c!406576) b!2540497))

(assert (= (and b!2540496 (not c!406576)) b!2540494))

(assert (= (or b!2540497 b!2540494) bm!160534))

(assert (= (or b!2540493 bm!160534) bm!160533))

(assert (= (or b!2540498 bm!160533) bm!160531))

(assert (= (or b!2540498 b!2540497) bm!160532))

(declare-fun m!2887539 () Bool)

(assert (=> d!721448 m!2887539))

(assert (=> d!721448 m!2886945))

(assert (=> d!721448 m!2887093))

(declare-fun m!2887541 () Bool)

(assert (=> bm!160531 m!2887541))

(declare-fun m!2887543 () Bool)

(assert (=> bm!160532 m!2887543))

(declare-fun m!2887545 () Bool)

(assert (=> b!2540496 m!2887545))

(assert (=> b!2539857 d!721448))

(declare-fun d!721450 () Bool)

(declare-fun lt!901917 () Regex!7565)

(assert (=> d!721450 (validRegex!3191 lt!901917)))

(declare-fun e!1606542 () Regex!7565)

(assert (=> d!721450 (= lt!901917 e!1606542)))

(declare-fun c!406579 () Bool)

(assert (=> d!721450 (= c!406579 ((_ is Cons!29530) (t!211329 lt!901848)))))

(assert (=> d!721450 (validRegex!3191 (derivativeStep!2134 (regTwo!15643 r!27340) (h!34950 lt!901848)))))

(assert (=> d!721450 (= (derivative!260 (derivativeStep!2134 (regTwo!15643 r!27340) (h!34950 lt!901848)) (t!211329 lt!901848)) lt!901917)))

(declare-fun b!2540501 () Bool)

(assert (=> b!2540501 (= e!1606542 (derivative!260 (derivativeStep!2134 (derivativeStep!2134 (regTwo!15643 r!27340) (h!34950 lt!901848)) (h!34950 (t!211329 lt!901848))) (t!211329 (t!211329 lt!901848))))))

(declare-fun b!2540502 () Bool)

(assert (=> b!2540502 (= e!1606542 (derivativeStep!2134 (regTwo!15643 r!27340) (h!34950 lt!901848)))))

(assert (= (and d!721450 c!406579) b!2540501))

(assert (= (and d!721450 (not c!406579)) b!2540502))

(declare-fun m!2887547 () Bool)

(assert (=> d!721450 m!2887547))

(assert (=> d!721450 m!2887079))

(declare-fun m!2887549 () Bool)

(assert (=> d!721450 m!2887549))

(assert (=> b!2540501 m!2887079))

(declare-fun m!2887551 () Bool)

(assert (=> b!2540501 m!2887551))

(assert (=> b!2540501 m!2887551))

(declare-fun m!2887553 () Bool)

(assert (=> b!2540501 m!2887553))

(assert (=> b!2539833 d!721450))

(declare-fun d!721452 () Bool)

(declare-fun lt!901918 () Regex!7565)

(assert (=> d!721452 (validRegex!3191 lt!901918)))

(declare-fun e!1606546 () Regex!7565)

(assert (=> d!721452 (= lt!901918 e!1606546)))

(declare-fun c!406580 () Bool)

(assert (=> d!721452 (= c!406580 (or ((_ is EmptyExpr!7565) (regTwo!15643 r!27340)) ((_ is EmptyLang!7565) (regTwo!15643 r!27340))))))

(assert (=> d!721452 (validRegex!3191 (regTwo!15643 r!27340))))

(assert (=> d!721452 (= (derivativeStep!2134 (regTwo!15643 r!27340) (h!34950 lt!901848)) lt!901918)))

(declare-fun call!160543 () Regex!7565)

(declare-fun c!406584 () Bool)

(declare-fun c!406583 () Bool)

(declare-fun bm!160535 () Bool)

(assert (=> bm!160535 (= call!160543 (derivativeStep!2134 (ite c!406584 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406583 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340)))) (h!34950 lt!901848)))))

(declare-fun bm!160536 () Bool)

(declare-fun call!160541 () Regex!7565)

(assert (=> bm!160536 (= call!160541 (derivativeStep!2134 (ite c!406584 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340))) (h!34950 lt!901848)))))

(declare-fun bm!160537 () Bool)

(declare-fun call!160540 () Regex!7565)

(assert (=> bm!160537 (= call!160540 call!160543)))

(declare-fun bm!160538 () Bool)

(declare-fun call!160542 () Regex!7565)

(assert (=> bm!160538 (= call!160542 call!160540)))

(declare-fun b!2540503 () Bool)

(declare-fun e!1606544 () Regex!7565)

(declare-fun e!1606547 () Regex!7565)

(assert (=> b!2540503 (= e!1606544 e!1606547)))

(assert (=> b!2540503 (= c!406583 ((_ is Star!7565) (regTwo!15643 r!27340)))))

(declare-fun b!2540504 () Bool)

(declare-fun e!1606545 () Regex!7565)

(assert (=> b!2540504 (= e!1606546 e!1606545)))

(declare-fun c!406581 () Bool)

(assert (=> b!2540504 (= c!406581 ((_ is ElementMatch!7565) (regTwo!15643 r!27340)))))

(declare-fun b!2540505 () Bool)

(assert (=> b!2540505 (= e!1606547 (Concat!12261 call!160540 (regTwo!15643 r!27340)))))

(declare-fun b!2540506 () Bool)

(declare-fun e!1606543 () Regex!7565)

(assert (=> b!2540506 (= e!1606543 (Union!7565 (Concat!12261 call!160542 (regTwo!15642 (regTwo!15643 r!27340))) EmptyLang!7565))))

(declare-fun b!2540507 () Bool)

(assert (=> b!2540507 (= c!406584 ((_ is Union!7565) (regTwo!15643 r!27340)))))

(assert (=> b!2540507 (= e!1606545 e!1606544)))

(declare-fun b!2540508 () Bool)

(declare-fun c!406582 () Bool)

(assert (=> b!2540508 (= c!406582 (nullable!2482 (regOne!15642 (regTwo!15643 r!27340))))))

(assert (=> b!2540508 (= e!1606547 e!1606543)))

(declare-fun b!2540509 () Bool)

(assert (=> b!2540509 (= e!1606543 (Union!7565 (Concat!12261 call!160542 (regTwo!15642 (regTwo!15643 r!27340))) call!160541))))

(declare-fun b!2540510 () Bool)

(assert (=> b!2540510 (= e!1606544 (Union!7565 call!160541 call!160543))))

(declare-fun b!2540511 () Bool)

(assert (=> b!2540511 (= e!1606546 EmptyLang!7565)))

(declare-fun b!2540512 () Bool)

(assert (=> b!2540512 (= e!1606545 (ite (= (h!34950 lt!901848) (c!406353 (regTwo!15643 r!27340))) EmptyExpr!7565 EmptyLang!7565))))

(assert (= (and d!721452 c!406580) b!2540511))

(assert (= (and d!721452 (not c!406580)) b!2540504))

(assert (= (and b!2540504 c!406581) b!2540512))

(assert (= (and b!2540504 (not c!406581)) b!2540507))

(assert (= (and b!2540507 c!406584) b!2540510))

(assert (= (and b!2540507 (not c!406584)) b!2540503))

(assert (= (and b!2540503 c!406583) b!2540505))

(assert (= (and b!2540503 (not c!406583)) b!2540508))

(assert (= (and b!2540508 c!406582) b!2540509))

(assert (= (and b!2540508 (not c!406582)) b!2540506))

(assert (= (or b!2540509 b!2540506) bm!160538))

(assert (= (or b!2540505 bm!160538) bm!160537))

(assert (= (or b!2540510 bm!160537) bm!160535))

(assert (= (or b!2540510 b!2540509) bm!160536))

(declare-fun m!2887555 () Bool)

(assert (=> d!721452 m!2887555))

(assert (=> d!721452 m!2886943))

(declare-fun m!2887557 () Bool)

(assert (=> bm!160535 m!2887557))

(declare-fun m!2887559 () Bool)

(assert (=> bm!160536 m!2887559))

(assert (=> b!2540508 m!2887105))

(assert (=> b!2539833 d!721452))

(declare-fun d!721454 () Bool)

(declare-fun lt!901919 () Regex!7565)

(assert (=> d!721454 (validRegex!3191 lt!901919)))

(declare-fun e!1606551 () Regex!7565)

(assert (=> d!721454 (= lt!901919 e!1606551)))

(declare-fun c!406585 () Bool)

(assert (=> d!721454 (= c!406585 (or ((_ is EmptyExpr!7565) (ite c!406436 (regOne!15643 r!27340) (regTwo!15642 r!27340))) ((_ is EmptyLang!7565) (ite c!406436 (regOne!15643 r!27340) (regTwo!15642 r!27340)))))))

(assert (=> d!721454 (validRegex!3191 (ite c!406436 (regOne!15643 r!27340) (regTwo!15642 r!27340)))))

(assert (=> d!721454 (= (derivativeStep!2134 (ite c!406436 (regOne!15643 r!27340) (regTwo!15642 r!27340)) c!14016) lt!901919)))

(declare-fun c!406589 () Bool)

(declare-fun c!406588 () Bool)

(declare-fun call!160547 () Regex!7565)

(declare-fun bm!160539 () Bool)

(assert (=> bm!160539 (= call!160547 (derivativeStep!2134 (ite c!406589 (regTwo!15643 (ite c!406436 (regOne!15643 r!27340) (regTwo!15642 r!27340))) (ite c!406588 (reg!7894 (ite c!406436 (regOne!15643 r!27340) (regTwo!15642 r!27340))) (regOne!15642 (ite c!406436 (regOne!15643 r!27340) (regTwo!15642 r!27340))))) c!14016))))

(declare-fun call!160545 () Regex!7565)

(declare-fun bm!160540 () Bool)

(assert (=> bm!160540 (= call!160545 (derivativeStep!2134 (ite c!406589 (regOne!15643 (ite c!406436 (regOne!15643 r!27340) (regTwo!15642 r!27340))) (regTwo!15642 (ite c!406436 (regOne!15643 r!27340) (regTwo!15642 r!27340)))) c!14016))))

(declare-fun bm!160541 () Bool)

(declare-fun call!160544 () Regex!7565)

(assert (=> bm!160541 (= call!160544 call!160547)))

(declare-fun bm!160542 () Bool)

(declare-fun call!160546 () Regex!7565)

(assert (=> bm!160542 (= call!160546 call!160544)))

(declare-fun b!2540513 () Bool)

(declare-fun e!1606549 () Regex!7565)

(declare-fun e!1606552 () Regex!7565)

(assert (=> b!2540513 (= e!1606549 e!1606552)))

(assert (=> b!2540513 (= c!406588 ((_ is Star!7565) (ite c!406436 (regOne!15643 r!27340) (regTwo!15642 r!27340))))))

(declare-fun b!2540514 () Bool)

(declare-fun e!1606550 () Regex!7565)

(assert (=> b!2540514 (= e!1606551 e!1606550)))

(declare-fun c!406586 () Bool)

(assert (=> b!2540514 (= c!406586 ((_ is ElementMatch!7565) (ite c!406436 (regOne!15643 r!27340) (regTwo!15642 r!27340))))))

(declare-fun b!2540515 () Bool)

(assert (=> b!2540515 (= e!1606552 (Concat!12261 call!160544 (ite c!406436 (regOne!15643 r!27340) (regTwo!15642 r!27340))))))

(declare-fun b!2540516 () Bool)

(declare-fun e!1606548 () Regex!7565)

(assert (=> b!2540516 (= e!1606548 (Union!7565 (Concat!12261 call!160546 (regTwo!15642 (ite c!406436 (regOne!15643 r!27340) (regTwo!15642 r!27340)))) EmptyLang!7565))))

(declare-fun b!2540517 () Bool)

(assert (=> b!2540517 (= c!406589 ((_ is Union!7565) (ite c!406436 (regOne!15643 r!27340) (regTwo!15642 r!27340))))))

(assert (=> b!2540517 (= e!1606550 e!1606549)))

(declare-fun b!2540518 () Bool)

(declare-fun c!406587 () Bool)

(assert (=> b!2540518 (= c!406587 (nullable!2482 (regOne!15642 (ite c!406436 (regOne!15643 r!27340) (regTwo!15642 r!27340)))))))

(assert (=> b!2540518 (= e!1606552 e!1606548)))

(declare-fun b!2540519 () Bool)

(assert (=> b!2540519 (= e!1606548 (Union!7565 (Concat!12261 call!160546 (regTwo!15642 (ite c!406436 (regOne!15643 r!27340) (regTwo!15642 r!27340)))) call!160545))))

(declare-fun b!2540520 () Bool)

(assert (=> b!2540520 (= e!1606549 (Union!7565 call!160545 call!160547))))

(declare-fun b!2540521 () Bool)

(assert (=> b!2540521 (= e!1606551 EmptyLang!7565)))

(declare-fun b!2540522 () Bool)

(assert (=> b!2540522 (= e!1606550 (ite (= c!14016 (c!406353 (ite c!406436 (regOne!15643 r!27340) (regTwo!15642 r!27340)))) EmptyExpr!7565 EmptyLang!7565))))

(assert (= (and d!721454 c!406585) b!2540521))

(assert (= (and d!721454 (not c!406585)) b!2540514))

(assert (= (and b!2540514 c!406586) b!2540522))

(assert (= (and b!2540514 (not c!406586)) b!2540517))

(assert (= (and b!2540517 c!406589) b!2540520))

(assert (= (and b!2540517 (not c!406589)) b!2540513))

(assert (= (and b!2540513 c!406588) b!2540515))

(assert (= (and b!2540513 (not c!406588)) b!2540518))

(assert (= (and b!2540518 c!406587) b!2540519))

(assert (= (and b!2540518 (not c!406587)) b!2540516))

(assert (= (or b!2540519 b!2540516) bm!160542))

(assert (= (or b!2540515 bm!160542) bm!160541))

(assert (= (or b!2540520 bm!160541) bm!160539))

(assert (= (or b!2540520 b!2540519) bm!160540))

(declare-fun m!2887561 () Bool)

(assert (=> d!721454 m!2887561))

(declare-fun m!2887563 () Bool)

(assert (=> d!721454 m!2887563))

(declare-fun m!2887565 () Bool)

(assert (=> bm!160539 m!2887565))

(declare-fun m!2887567 () Bool)

(assert (=> bm!160540 m!2887567))

(declare-fun m!2887569 () Bool)

(assert (=> b!2540518 m!2887569))

(assert (=> bm!160400 d!721454))

(assert (=> b!2539808 d!721354))

(declare-fun d!721456 () Bool)

(assert (=> d!721456 (= (nullable!2482 (derivative!260 r!27340 lt!901848)) (nullableFct!713 (derivative!260 r!27340 lt!901848)))))

(declare-fun bs!469385 () Bool)

(assert (= bs!469385 d!721456))

(assert (=> bs!469385 m!2886959))

(declare-fun m!2887571 () Bool)

(assert (=> bs!469385 m!2887571))

(assert (=> b!2539748 d!721456))

(declare-fun b!2540523 () Bool)

(declare-fun e!1606557 () Bool)

(declare-fun e!1606555 () Bool)

(assert (=> b!2540523 (= e!1606557 e!1606555)))

(declare-fun res!1071000 () Bool)

(assert (=> b!2540523 (= res!1071000 (not (nullable!2482 (reg!7894 lt!901879))))))

(assert (=> b!2540523 (=> (not res!1071000) (not e!1606555))))

(declare-fun c!406590 () Bool)

(declare-fun c!406591 () Bool)

(declare-fun bm!160543 () Bool)

(declare-fun call!160550 () Bool)

(assert (=> bm!160543 (= call!160550 (validRegex!3191 (ite c!406591 (reg!7894 lt!901879) (ite c!406590 (regTwo!15643 lt!901879) (regOne!15642 lt!901879)))))))

(declare-fun b!2540524 () Bool)

(declare-fun e!1606556 () Bool)

(declare-fun e!1606554 () Bool)

(assert (=> b!2540524 (= e!1606556 e!1606554)))

(declare-fun res!1070999 () Bool)

(assert (=> b!2540524 (=> (not res!1070999) (not e!1606554))))

(declare-fun call!160549 () Bool)

(assert (=> b!2540524 (= res!1070999 call!160549)))

(declare-fun d!721458 () Bool)

(declare-fun res!1071002 () Bool)

(declare-fun e!1606558 () Bool)

(assert (=> d!721458 (=> res!1071002 e!1606558)))

(assert (=> d!721458 (= res!1071002 ((_ is ElementMatch!7565) lt!901879))))

(assert (=> d!721458 (= (validRegex!3191 lt!901879) e!1606558)))

(declare-fun b!2540525 () Bool)

(assert (=> b!2540525 (= e!1606558 e!1606557)))

(assert (=> b!2540525 (= c!406591 ((_ is Star!7565) lt!901879))))

(declare-fun b!2540526 () Bool)

(declare-fun e!1606559 () Bool)

(assert (=> b!2540526 (= e!1606557 e!1606559)))

(assert (=> b!2540526 (= c!406590 ((_ is Union!7565) lt!901879))))

(declare-fun b!2540527 () Bool)

(declare-fun res!1071001 () Bool)

(declare-fun e!1606553 () Bool)

(assert (=> b!2540527 (=> (not res!1071001) (not e!1606553))))

(declare-fun call!160548 () Bool)

(assert (=> b!2540527 (= res!1071001 call!160548)))

(assert (=> b!2540527 (= e!1606559 e!1606553)))

(declare-fun b!2540528 () Bool)

(assert (=> b!2540528 (= e!1606555 call!160550)))

(declare-fun b!2540529 () Bool)

(assert (=> b!2540529 (= e!1606553 call!160549)))

(declare-fun bm!160544 () Bool)

(assert (=> bm!160544 (= call!160549 call!160550)))

(declare-fun b!2540530 () Bool)

(declare-fun res!1071003 () Bool)

(assert (=> b!2540530 (=> res!1071003 e!1606556)))

(assert (=> b!2540530 (= res!1071003 (not ((_ is Concat!12261) lt!901879)))))

(assert (=> b!2540530 (= e!1606559 e!1606556)))

(declare-fun bm!160545 () Bool)

(assert (=> bm!160545 (= call!160548 (validRegex!3191 (ite c!406590 (regOne!15643 lt!901879) (regTwo!15642 lt!901879))))))

(declare-fun b!2540531 () Bool)

(assert (=> b!2540531 (= e!1606554 call!160548)))

(assert (= (and d!721458 (not res!1071002)) b!2540525))

(assert (= (and b!2540525 c!406591) b!2540523))

(assert (= (and b!2540525 (not c!406591)) b!2540526))

(assert (= (and b!2540523 res!1071000) b!2540528))

(assert (= (and b!2540526 c!406590) b!2540527))

(assert (= (and b!2540526 (not c!406590)) b!2540530))

(assert (= (and b!2540527 res!1071001) b!2540529))

(assert (= (and b!2540530 (not res!1071003)) b!2540524))

(assert (= (and b!2540524 res!1070999) b!2540531))

(assert (= (or b!2540527 b!2540531) bm!160545))

(assert (= (or b!2540529 b!2540524) bm!160544))

(assert (= (or b!2540528 bm!160544) bm!160543))

(declare-fun m!2887573 () Bool)

(assert (=> b!2540523 m!2887573))

(declare-fun m!2887575 () Bool)

(assert (=> bm!160543 m!2887575))

(declare-fun m!2887577 () Bool)

(assert (=> bm!160545 m!2887577))

(assert (=> d!721280 d!721458))

(assert (=> d!721280 d!721246))

(assert (=> b!2539775 d!721348))

(assert (=> b!2539775 d!721350))

(assert (=> b!2539848 d!721354))

(declare-fun b!2540532 () Bool)

(declare-fun res!1071006 () Bool)

(declare-fun e!1606562 () Bool)

(assert (=> b!2540532 (=> (not res!1071006) (not e!1606562))))

(assert (=> b!2540532 (= res!1071006 (isEmpty!16983 (tail!4062 (tail!4062 lt!901848))))))

(declare-fun b!2540533 () Bool)

(declare-fun e!1606566 () Bool)

(declare-fun e!1606565 () Bool)

(assert (=> b!2540533 (= e!1606566 e!1606565)))

(declare-fun c!406594 () Bool)

(assert (=> b!2540533 (= c!406594 ((_ is EmptyLang!7565) (derivativeStep!2134 r!27340 (head!5787 lt!901848))))))

(declare-fun b!2540534 () Bool)

(declare-fun lt!901920 () Bool)

(declare-fun call!160551 () Bool)

(assert (=> b!2540534 (= e!1606566 (= lt!901920 call!160551))))

(declare-fun bm!160546 () Bool)

(assert (=> bm!160546 (= call!160551 (isEmpty!16983 (tail!4062 lt!901848)))))

(declare-fun b!2540535 () Bool)

(assert (=> b!2540535 (= e!1606565 (not lt!901920))))

(declare-fun b!2540536 () Bool)

(declare-fun e!1606560 () Bool)

(assert (=> b!2540536 (= e!1606560 (nullable!2482 (derivativeStep!2134 r!27340 (head!5787 lt!901848))))))

(declare-fun d!721460 () Bool)

(assert (=> d!721460 e!1606566))

(declare-fun c!406593 () Bool)

(assert (=> d!721460 (= c!406593 ((_ is EmptyExpr!7565) (derivativeStep!2134 r!27340 (head!5787 lt!901848))))))

(assert (=> d!721460 (= lt!901920 e!1606560)))

(declare-fun c!406592 () Bool)

(assert (=> d!721460 (= c!406592 (isEmpty!16983 (tail!4062 lt!901848)))))

(assert (=> d!721460 (validRegex!3191 (derivativeStep!2134 r!27340 (head!5787 lt!901848)))))

(assert (=> d!721460 (= (matchR!3520 (derivativeStep!2134 r!27340 (head!5787 lt!901848)) (tail!4062 lt!901848)) lt!901920)))

(declare-fun b!2540537 () Bool)

(declare-fun e!1606561 () Bool)

(declare-fun e!1606564 () Bool)

(assert (=> b!2540537 (= e!1606561 e!1606564)))

(declare-fun res!1071008 () Bool)

(assert (=> b!2540537 (=> res!1071008 e!1606564)))

(assert (=> b!2540537 (= res!1071008 call!160551)))

(declare-fun b!2540538 () Bool)

(declare-fun res!1071004 () Bool)

(assert (=> b!2540538 (=> res!1071004 e!1606564)))

(assert (=> b!2540538 (= res!1071004 (not (isEmpty!16983 (tail!4062 (tail!4062 lt!901848)))))))

(declare-fun b!2540539 () Bool)

(assert (=> b!2540539 (= e!1606560 (matchR!3520 (derivativeStep!2134 (derivativeStep!2134 r!27340 (head!5787 lt!901848)) (head!5787 (tail!4062 lt!901848))) (tail!4062 (tail!4062 lt!901848))))))

(declare-fun b!2540540 () Bool)

(declare-fun res!1071005 () Bool)

(declare-fun e!1606563 () Bool)

(assert (=> b!2540540 (=> res!1071005 e!1606563)))

(assert (=> b!2540540 (= res!1071005 (not ((_ is ElementMatch!7565) (derivativeStep!2134 r!27340 (head!5787 lt!901848)))))))

(assert (=> b!2540540 (= e!1606565 e!1606563)))

(declare-fun b!2540541 () Bool)

(declare-fun res!1071011 () Bool)

(assert (=> b!2540541 (=> (not res!1071011) (not e!1606562))))

(assert (=> b!2540541 (= res!1071011 (not call!160551))))

(declare-fun b!2540542 () Bool)

(assert (=> b!2540542 (= e!1606563 e!1606561)))

(declare-fun res!1071009 () Bool)

(assert (=> b!2540542 (=> (not res!1071009) (not e!1606561))))

(assert (=> b!2540542 (= res!1071009 (not lt!901920))))

(declare-fun b!2540543 () Bool)

(assert (=> b!2540543 (= e!1606562 (= (head!5787 (tail!4062 lt!901848)) (c!406353 (derivativeStep!2134 r!27340 (head!5787 lt!901848)))))))

(declare-fun b!2540544 () Bool)

(declare-fun res!1071007 () Bool)

(assert (=> b!2540544 (=> res!1071007 e!1606563)))

(assert (=> b!2540544 (= res!1071007 e!1606562)))

(declare-fun res!1071010 () Bool)

(assert (=> b!2540544 (=> (not res!1071010) (not e!1606562))))

(assert (=> b!2540544 (= res!1071010 lt!901920)))

(declare-fun b!2540545 () Bool)

(assert (=> b!2540545 (= e!1606564 (not (= (head!5787 (tail!4062 lt!901848)) (c!406353 (derivativeStep!2134 r!27340 (head!5787 lt!901848))))))))

(assert (= (and d!721460 c!406592) b!2540536))

(assert (= (and d!721460 (not c!406592)) b!2540539))

(assert (= (and d!721460 c!406593) b!2540534))

(assert (= (and d!721460 (not c!406593)) b!2540533))

(assert (= (and b!2540533 c!406594) b!2540535))

(assert (= (and b!2540533 (not c!406594)) b!2540540))

(assert (= (and b!2540540 (not res!1071005)) b!2540544))

(assert (= (and b!2540544 res!1071010) b!2540541))

(assert (= (and b!2540541 res!1071011) b!2540532))

(assert (= (and b!2540532 res!1071006) b!2540543))

(assert (= (and b!2540544 (not res!1071007)) b!2540542))

(assert (= (and b!2540542 res!1071009) b!2540537))

(assert (= (and b!2540537 (not res!1071008)) b!2540538))

(assert (= (and b!2540538 (not res!1071004)) b!2540545))

(assert (= (or b!2540534 b!2540537 b!2540541) bm!160546))

(assert (=> d!721460 m!2887049))

(assert (=> d!721460 m!2887051))

(assert (=> d!721460 m!2887053))

(declare-fun m!2887579 () Bool)

(assert (=> d!721460 m!2887579))

(assert (=> b!2540545 m!2887049))

(assert (=> b!2540545 m!2887327))

(assert (=> b!2540532 m!2887049))

(assert (=> b!2540532 m!2887329))

(assert (=> b!2540532 m!2887329))

(assert (=> b!2540532 m!2887331))

(assert (=> b!2540539 m!2887049))

(assert (=> b!2540539 m!2887327))

(assert (=> b!2540539 m!2887053))

(assert (=> b!2540539 m!2887327))

(declare-fun m!2887581 () Bool)

(assert (=> b!2540539 m!2887581))

(assert (=> b!2540539 m!2887049))

(assert (=> b!2540539 m!2887329))

(assert (=> b!2540539 m!2887581))

(assert (=> b!2540539 m!2887329))

(declare-fun m!2887583 () Bool)

(assert (=> b!2540539 m!2887583))

(assert (=> b!2540538 m!2887049))

(assert (=> b!2540538 m!2887329))

(assert (=> b!2540538 m!2887329))

(assert (=> b!2540538 m!2887331))

(assert (=> b!2540536 m!2887053))

(declare-fun m!2887585 () Bool)

(assert (=> b!2540536 m!2887585))

(assert (=> bm!160546 m!2887049))

(assert (=> bm!160546 m!2887051))

(assert (=> b!2540543 m!2887049))

(assert (=> b!2540543 m!2887327))

(assert (=> b!2539804 d!721460))

(declare-fun d!721462 () Bool)

(declare-fun lt!901921 () Regex!7565)

(assert (=> d!721462 (validRegex!3191 lt!901921)))

(declare-fun e!1606570 () Regex!7565)

(assert (=> d!721462 (= lt!901921 e!1606570)))

(declare-fun c!406595 () Bool)

(assert (=> d!721462 (= c!406595 (or ((_ is EmptyExpr!7565) r!27340) ((_ is EmptyLang!7565) r!27340)))))

(assert (=> d!721462 (validRegex!3191 r!27340)))

(assert (=> d!721462 (= (derivativeStep!2134 r!27340 (head!5787 lt!901848)) lt!901921)))

(declare-fun c!406599 () Bool)

(declare-fun bm!160547 () Bool)

(declare-fun call!160555 () Regex!7565)

(declare-fun c!406598 () Bool)

(assert (=> bm!160547 (= call!160555 (derivativeStep!2134 (ite c!406599 (regTwo!15643 r!27340) (ite c!406598 (reg!7894 r!27340) (regOne!15642 r!27340))) (head!5787 lt!901848)))))

(declare-fun call!160553 () Regex!7565)

(declare-fun bm!160548 () Bool)

(assert (=> bm!160548 (= call!160553 (derivativeStep!2134 (ite c!406599 (regOne!15643 r!27340) (regTwo!15642 r!27340)) (head!5787 lt!901848)))))

(declare-fun bm!160549 () Bool)

(declare-fun call!160552 () Regex!7565)

(assert (=> bm!160549 (= call!160552 call!160555)))

(declare-fun bm!160550 () Bool)

(declare-fun call!160554 () Regex!7565)

(assert (=> bm!160550 (= call!160554 call!160552)))

(declare-fun b!2540546 () Bool)

(declare-fun e!1606568 () Regex!7565)

(declare-fun e!1606571 () Regex!7565)

(assert (=> b!2540546 (= e!1606568 e!1606571)))

(assert (=> b!2540546 (= c!406598 ((_ is Star!7565) r!27340))))

(declare-fun b!2540547 () Bool)

(declare-fun e!1606569 () Regex!7565)

(assert (=> b!2540547 (= e!1606570 e!1606569)))

(declare-fun c!406596 () Bool)

(assert (=> b!2540547 (= c!406596 ((_ is ElementMatch!7565) r!27340))))

(declare-fun b!2540548 () Bool)

(assert (=> b!2540548 (= e!1606571 (Concat!12261 call!160552 r!27340))))

(declare-fun b!2540549 () Bool)

(declare-fun e!1606567 () Regex!7565)

(assert (=> b!2540549 (= e!1606567 (Union!7565 (Concat!12261 call!160554 (regTwo!15642 r!27340)) EmptyLang!7565))))

(declare-fun b!2540550 () Bool)

(assert (=> b!2540550 (= c!406599 ((_ is Union!7565) r!27340))))

(assert (=> b!2540550 (= e!1606569 e!1606568)))

(declare-fun b!2540551 () Bool)

(declare-fun c!406597 () Bool)

(assert (=> b!2540551 (= c!406597 (nullable!2482 (regOne!15642 r!27340)))))

(assert (=> b!2540551 (= e!1606571 e!1606567)))

(declare-fun b!2540552 () Bool)

(assert (=> b!2540552 (= e!1606567 (Union!7565 (Concat!12261 call!160554 (regTwo!15642 r!27340)) call!160553))))

(declare-fun b!2540553 () Bool)

(assert (=> b!2540553 (= e!1606568 (Union!7565 call!160553 call!160555))))

(declare-fun b!2540554 () Bool)

(assert (=> b!2540554 (= e!1606570 EmptyLang!7565)))

(declare-fun b!2540555 () Bool)

(assert (=> b!2540555 (= e!1606569 (ite (= (head!5787 lt!901848) (c!406353 r!27340)) EmptyExpr!7565 EmptyLang!7565))))

(assert (= (and d!721462 c!406595) b!2540554))

(assert (= (and d!721462 (not c!406595)) b!2540547))

(assert (= (and b!2540547 c!406596) b!2540555))

(assert (= (and b!2540547 (not c!406596)) b!2540550))

(assert (= (and b!2540550 c!406599) b!2540553))

(assert (= (and b!2540550 (not c!406599)) b!2540546))

(assert (= (and b!2540546 c!406598) b!2540548))

(assert (= (and b!2540546 (not c!406598)) b!2540551))

(assert (= (and b!2540551 c!406597) b!2540552))

(assert (= (and b!2540551 (not c!406597)) b!2540549))

(assert (= (or b!2540552 b!2540549) bm!160550))

(assert (= (or b!2540548 bm!160550) bm!160549))

(assert (= (or b!2540553 bm!160549) bm!160547))

(assert (= (or b!2540553 b!2540552) bm!160548))

(declare-fun m!2887587 () Bool)

(assert (=> d!721462 m!2887587))

(assert (=> d!721462 m!2886983))

(assert (=> bm!160547 m!2887047))

(declare-fun m!2887589 () Bool)

(assert (=> bm!160547 m!2887589))

(assert (=> bm!160548 m!2887047))

(declare-fun m!2887591 () Bool)

(assert (=> bm!160548 m!2887591))

(assert (=> b!2540551 m!2887147))

(assert (=> b!2539804 d!721462))

(assert (=> b!2539804 d!721354))

(assert (=> b!2539804 d!721336))

(assert (=> d!721252 d!721254))

(declare-fun d!721464 () Bool)

(assert (=> d!721464 (= (matchR!3520 (regOne!15643 r!27340) lt!901848) (matchR!3520 (derivative!260 (regOne!15643 r!27340) lt!901848) Nil!29530))))

(assert (=> d!721464 true))

(declare-fun _$108!316 () Unit!43331)

(assert (=> d!721464 (= (choose!15022 (regOne!15643 r!27340) lt!901848) _$108!316)))

(declare-fun bs!469386 () Bool)

(assert (= bs!469386 d!721464))

(assert (=> bs!469386 m!2886971))

(assert (=> bs!469386 m!2886963))

(assert (=> bs!469386 m!2886963))

(assert (=> bs!469386 m!2886965))

(assert (=> d!721252 d!721464))

(assert (=> d!721252 d!721246))

(assert (=> d!721252 d!721262))

(assert (=> d!721252 d!721264))

(assert (=> bm!160366 d!721356))

(declare-fun d!721466 () Bool)

(declare-fun lt!901922 () Regex!7565)

(assert (=> d!721466 (validRegex!3191 lt!901922)))

(declare-fun e!1606575 () Regex!7565)

(assert (=> d!721466 (= lt!901922 e!1606575)))

(declare-fun c!406600 () Bool)

(assert (=> d!721466 (= c!406600 (or ((_ is EmptyExpr!7565) (ite c!406425 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))) ((_ is EmptyLang!7565) (ite c!406425 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340))))))))

(assert (=> d!721466 (validRegex!3191 (ite c!406425 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340))))))

(assert (=> d!721466 (= (derivativeStep!2134 (ite c!406425 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340))) c!14016) lt!901922)))

(declare-fun c!406604 () Bool)

(declare-fun bm!160551 () Bool)

(declare-fun c!406603 () Bool)

(declare-fun call!160559 () Regex!7565)

(assert (=> bm!160551 (= call!160559 (derivativeStep!2134 (ite c!406604 (regTwo!15643 (ite c!406425 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))) (ite c!406603 (reg!7894 (ite c!406425 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))) (regOne!15642 (ite c!406425 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))))) c!14016))))

(declare-fun bm!160552 () Bool)

(declare-fun call!160557 () Regex!7565)

(assert (=> bm!160552 (= call!160557 (derivativeStep!2134 (ite c!406604 (regOne!15643 (ite c!406425 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))) (regTwo!15642 (ite c!406425 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340))))) c!14016))))

(declare-fun bm!160553 () Bool)

(declare-fun call!160556 () Regex!7565)

(assert (=> bm!160553 (= call!160556 call!160559)))

(declare-fun bm!160554 () Bool)

(declare-fun call!160558 () Regex!7565)

(assert (=> bm!160554 (= call!160558 call!160556)))

(declare-fun b!2540556 () Bool)

(declare-fun e!1606573 () Regex!7565)

(declare-fun e!1606576 () Regex!7565)

(assert (=> b!2540556 (= e!1606573 e!1606576)))

(assert (=> b!2540556 (= c!406603 ((_ is Star!7565) (ite c!406425 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))))))

(declare-fun b!2540557 () Bool)

(declare-fun e!1606574 () Regex!7565)

(assert (=> b!2540557 (= e!1606575 e!1606574)))

(declare-fun c!406601 () Bool)

(assert (=> b!2540557 (= c!406601 ((_ is ElementMatch!7565) (ite c!406425 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))))))

(declare-fun b!2540558 () Bool)

(assert (=> b!2540558 (= e!1606576 (Concat!12261 call!160556 (ite c!406425 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))))))

(declare-fun b!2540559 () Bool)

(declare-fun e!1606572 () Regex!7565)

(assert (=> b!2540559 (= e!1606572 (Union!7565 (Concat!12261 call!160558 (regTwo!15642 (ite c!406425 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340))))) EmptyLang!7565))))

(declare-fun b!2540560 () Bool)

(assert (=> b!2540560 (= c!406604 ((_ is Union!7565) (ite c!406425 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340)))))))

(assert (=> b!2540560 (= e!1606574 e!1606573)))

(declare-fun b!2540561 () Bool)

(declare-fun c!406602 () Bool)

(assert (=> b!2540561 (= c!406602 (nullable!2482 (regOne!15642 (ite c!406425 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340))))))))

(assert (=> b!2540561 (= e!1606576 e!1606572)))

(declare-fun b!2540562 () Bool)

(assert (=> b!2540562 (= e!1606572 (Union!7565 (Concat!12261 call!160558 (regTwo!15642 (ite c!406425 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340))))) call!160557))))

(declare-fun b!2540563 () Bool)

(assert (=> b!2540563 (= e!1606573 (Union!7565 call!160557 call!160559))))

(declare-fun b!2540564 () Bool)

(assert (=> b!2540564 (= e!1606575 EmptyLang!7565)))

(declare-fun b!2540565 () Bool)

(assert (=> b!2540565 (= e!1606574 (ite (= c!14016 (c!406353 (ite c!406425 (regOne!15643 (regOne!15643 r!27340)) (regTwo!15642 (regOne!15643 r!27340))))) EmptyExpr!7565 EmptyLang!7565))))

(assert (= (and d!721466 c!406600) b!2540564))

(assert (= (and d!721466 (not c!406600)) b!2540557))

(assert (= (and b!2540557 c!406601) b!2540565))

(assert (= (and b!2540557 (not c!406601)) b!2540560))

(assert (= (and b!2540560 c!406604) b!2540563))

(assert (= (and b!2540560 (not c!406604)) b!2540556))

(assert (= (and b!2540556 c!406603) b!2540558))

(assert (= (and b!2540556 (not c!406603)) b!2540561))

(assert (= (and b!2540561 c!406602) b!2540562))

(assert (= (and b!2540561 (not c!406602)) b!2540559))

(assert (= (or b!2540562 b!2540559) bm!160554))

(assert (= (or b!2540558 bm!160554) bm!160553))

(assert (= (or b!2540563 bm!160553) bm!160551))

(assert (= (or b!2540563 b!2540562) bm!160552))

(declare-fun m!2887593 () Bool)

(assert (=> d!721466 m!2887593))

(declare-fun m!2887595 () Bool)

(assert (=> d!721466 m!2887595))

(declare-fun m!2887597 () Bool)

(assert (=> bm!160551 m!2887597))

(declare-fun m!2887599 () Bool)

(assert (=> bm!160552 m!2887599))

(declare-fun m!2887601 () Bool)

(assert (=> b!2540561 m!2887601))

(assert (=> bm!160392 d!721466))

(assert (=> bm!160362 d!721356))

(declare-fun d!721468 () Bool)

(assert (=> d!721468 (= (nullable!2482 (derivative!260 (regTwo!15643 r!27340) lt!901848)) (nullableFct!713 (derivative!260 (regTwo!15643 r!27340) lt!901848)))))

(declare-fun bs!469387 () Bool)

(assert (= bs!469387 d!721468))

(assert (=> bs!469387 m!2886969))

(declare-fun m!2887603 () Bool)

(assert (=> bs!469387 m!2887603))

(assert (=> b!2539773 d!721468))

(assert (=> b!2539846 d!721354))

(assert (=> bm!160369 d!721338))

(declare-fun d!721470 () Bool)

(declare-fun lt!901923 () Regex!7565)

(assert (=> d!721470 (validRegex!3191 lt!901923)))

(declare-fun e!1606577 () Regex!7565)

(assert (=> d!721470 (= lt!901923 e!1606577)))

(declare-fun c!406605 () Bool)

(assert (=> d!721470 (= c!406605 ((_ is Cons!29530) (t!211329 lt!901848)))))

(assert (=> d!721470 (validRegex!3191 (derivativeStep!2134 r!27340 (h!34950 lt!901848)))))

(assert (=> d!721470 (= (derivative!260 (derivativeStep!2134 r!27340 (h!34950 lt!901848)) (t!211329 lt!901848)) lt!901923)))

(declare-fun b!2540566 () Bool)

(assert (=> b!2540566 (= e!1606577 (derivative!260 (derivativeStep!2134 (derivativeStep!2134 r!27340 (h!34950 lt!901848)) (h!34950 (t!211329 lt!901848))) (t!211329 (t!211329 lt!901848))))))

(declare-fun b!2540567 () Bool)

(assert (=> b!2540567 (= e!1606577 (derivativeStep!2134 r!27340 (h!34950 lt!901848)))))

(assert (= (and d!721470 c!406605) b!2540566))

(assert (= (and d!721470 (not c!406605)) b!2540567))

(declare-fun m!2887605 () Bool)

(assert (=> d!721470 m!2887605))

(assert (=> d!721470 m!2887061))

(declare-fun m!2887607 () Bool)

(assert (=> d!721470 m!2887607))

(assert (=> b!2540566 m!2887061))

(declare-fun m!2887609 () Bool)

(assert (=> b!2540566 m!2887609))

(assert (=> b!2540566 m!2887609))

(declare-fun m!2887611 () Bool)

(assert (=> b!2540566 m!2887611))

(assert (=> b!2539815 d!721470))

(declare-fun d!721472 () Bool)

(declare-fun lt!901924 () Regex!7565)

(assert (=> d!721472 (validRegex!3191 lt!901924)))

(declare-fun e!1606581 () Regex!7565)

(assert (=> d!721472 (= lt!901924 e!1606581)))

(declare-fun c!406606 () Bool)

(assert (=> d!721472 (= c!406606 (or ((_ is EmptyExpr!7565) r!27340) ((_ is EmptyLang!7565) r!27340)))))

(assert (=> d!721472 (validRegex!3191 r!27340)))

(assert (=> d!721472 (= (derivativeStep!2134 r!27340 (h!34950 lt!901848)) lt!901924)))

(declare-fun c!406610 () Bool)

(declare-fun c!406609 () Bool)

(declare-fun bm!160555 () Bool)

(declare-fun call!160563 () Regex!7565)

(assert (=> bm!160555 (= call!160563 (derivativeStep!2134 (ite c!406610 (regTwo!15643 r!27340) (ite c!406609 (reg!7894 r!27340) (regOne!15642 r!27340))) (h!34950 lt!901848)))))

(declare-fun call!160561 () Regex!7565)

(declare-fun bm!160556 () Bool)

(assert (=> bm!160556 (= call!160561 (derivativeStep!2134 (ite c!406610 (regOne!15643 r!27340) (regTwo!15642 r!27340)) (h!34950 lt!901848)))))

(declare-fun bm!160557 () Bool)

(declare-fun call!160560 () Regex!7565)

(assert (=> bm!160557 (= call!160560 call!160563)))

(declare-fun bm!160558 () Bool)

(declare-fun call!160562 () Regex!7565)

(assert (=> bm!160558 (= call!160562 call!160560)))

(declare-fun b!2540568 () Bool)

(declare-fun e!1606579 () Regex!7565)

(declare-fun e!1606582 () Regex!7565)

(assert (=> b!2540568 (= e!1606579 e!1606582)))

(assert (=> b!2540568 (= c!406609 ((_ is Star!7565) r!27340))))

(declare-fun b!2540569 () Bool)

(declare-fun e!1606580 () Regex!7565)

(assert (=> b!2540569 (= e!1606581 e!1606580)))

(declare-fun c!406607 () Bool)

(assert (=> b!2540569 (= c!406607 ((_ is ElementMatch!7565) r!27340))))

(declare-fun b!2540570 () Bool)

(assert (=> b!2540570 (= e!1606582 (Concat!12261 call!160560 r!27340))))

(declare-fun b!2540571 () Bool)

(declare-fun e!1606578 () Regex!7565)

(assert (=> b!2540571 (= e!1606578 (Union!7565 (Concat!12261 call!160562 (regTwo!15642 r!27340)) EmptyLang!7565))))

(declare-fun b!2540572 () Bool)

(assert (=> b!2540572 (= c!406610 ((_ is Union!7565) r!27340))))

(assert (=> b!2540572 (= e!1606580 e!1606579)))

(declare-fun b!2540573 () Bool)

(declare-fun c!406608 () Bool)

(assert (=> b!2540573 (= c!406608 (nullable!2482 (regOne!15642 r!27340)))))

(assert (=> b!2540573 (= e!1606582 e!1606578)))

(declare-fun b!2540574 () Bool)

(assert (=> b!2540574 (= e!1606578 (Union!7565 (Concat!12261 call!160562 (regTwo!15642 r!27340)) call!160561))))

(declare-fun b!2540575 () Bool)

(assert (=> b!2540575 (= e!1606579 (Union!7565 call!160561 call!160563))))

(declare-fun b!2540576 () Bool)

(assert (=> b!2540576 (= e!1606581 EmptyLang!7565)))

(declare-fun b!2540577 () Bool)

(assert (=> b!2540577 (= e!1606580 (ite (= (h!34950 lt!901848) (c!406353 r!27340)) EmptyExpr!7565 EmptyLang!7565))))

(assert (= (and d!721472 c!406606) b!2540576))

(assert (= (and d!721472 (not c!406606)) b!2540569))

(assert (= (and b!2540569 c!406607) b!2540577))

(assert (= (and b!2540569 (not c!406607)) b!2540572))

(assert (= (and b!2540572 c!406610) b!2540575))

(assert (= (and b!2540572 (not c!406610)) b!2540568))

(assert (= (and b!2540568 c!406609) b!2540570))

(assert (= (and b!2540568 (not c!406609)) b!2540573))

(assert (= (and b!2540573 c!406608) b!2540574))

(assert (= (and b!2540573 (not c!406608)) b!2540571))

(assert (= (or b!2540574 b!2540571) bm!160558))

(assert (= (or b!2540570 bm!160558) bm!160557))

(assert (= (or b!2540575 bm!160557) bm!160555))

(assert (= (or b!2540575 b!2540574) bm!160556))

(declare-fun m!2887613 () Bool)

(assert (=> d!721472 m!2887613))

(assert (=> d!721472 m!2886983))

(declare-fun m!2887615 () Bool)

(assert (=> bm!160555 m!2887615))

(declare-fun m!2887617 () Bool)

(assert (=> bm!160556 m!2887617))

(assert (=> b!2540573 m!2887147))

(assert (=> b!2539815 d!721472))

(declare-fun d!721474 () Bool)

(assert (=> d!721474 (= (nullable!2482 (reg!7894 r!27340)) (nullableFct!713 (reg!7894 r!27340)))))

(declare-fun bs!469388 () Bool)

(assert (= bs!469388 d!721474))

(declare-fun m!2887619 () Bool)

(assert (=> bs!469388 m!2887619))

(assert (=> b!2539703 d!721474))

(declare-fun b!2540578 () Bool)

(declare-fun res!1071014 () Bool)

(declare-fun e!1606585 () Bool)

(assert (=> b!2540578 (=> (not res!1071014) (not e!1606585))))

(assert (=> b!2540578 (= res!1071014 (isEmpty!16983 (tail!4062 (tail!4062 lt!901848))))))

(declare-fun b!2540579 () Bool)

(declare-fun e!1606589 () Bool)

(declare-fun e!1606588 () Bool)

(assert (=> b!2540579 (= e!1606589 e!1606588)))

(declare-fun c!406613 () Bool)

(assert (=> b!2540579 (= c!406613 ((_ is EmptyLang!7565) (derivativeStep!2134 (regTwo!15643 r!27340) (head!5787 lt!901848))))))

(declare-fun b!2540580 () Bool)

(declare-fun lt!901925 () Bool)

(declare-fun call!160564 () Bool)

(assert (=> b!2540580 (= e!1606589 (= lt!901925 call!160564))))

(declare-fun bm!160559 () Bool)

(assert (=> bm!160559 (= call!160564 (isEmpty!16983 (tail!4062 lt!901848)))))

(declare-fun b!2540581 () Bool)

(assert (=> b!2540581 (= e!1606588 (not lt!901925))))

(declare-fun b!2540582 () Bool)

(declare-fun e!1606583 () Bool)

(assert (=> b!2540582 (= e!1606583 (nullable!2482 (derivativeStep!2134 (regTwo!15643 r!27340) (head!5787 lt!901848))))))

(declare-fun d!721476 () Bool)

(assert (=> d!721476 e!1606589))

(declare-fun c!406612 () Bool)

(assert (=> d!721476 (= c!406612 ((_ is EmptyExpr!7565) (derivativeStep!2134 (regTwo!15643 r!27340) (head!5787 lt!901848))))))

(assert (=> d!721476 (= lt!901925 e!1606583)))

(declare-fun c!406611 () Bool)

(assert (=> d!721476 (= c!406611 (isEmpty!16983 (tail!4062 lt!901848)))))

(assert (=> d!721476 (validRegex!3191 (derivativeStep!2134 (regTwo!15643 r!27340) (head!5787 lt!901848)))))

(assert (=> d!721476 (= (matchR!3520 (derivativeStep!2134 (regTwo!15643 r!27340) (head!5787 lt!901848)) (tail!4062 lt!901848)) lt!901925)))

(declare-fun b!2540583 () Bool)

(declare-fun e!1606584 () Bool)

(declare-fun e!1606587 () Bool)

(assert (=> b!2540583 (= e!1606584 e!1606587)))

(declare-fun res!1071016 () Bool)

(assert (=> b!2540583 (=> res!1071016 e!1606587)))

(assert (=> b!2540583 (= res!1071016 call!160564)))

(declare-fun b!2540584 () Bool)

(declare-fun res!1071012 () Bool)

(assert (=> b!2540584 (=> res!1071012 e!1606587)))

(assert (=> b!2540584 (= res!1071012 (not (isEmpty!16983 (tail!4062 (tail!4062 lt!901848)))))))

(declare-fun b!2540585 () Bool)

(assert (=> b!2540585 (= e!1606583 (matchR!3520 (derivativeStep!2134 (derivativeStep!2134 (regTwo!15643 r!27340) (head!5787 lt!901848)) (head!5787 (tail!4062 lt!901848))) (tail!4062 (tail!4062 lt!901848))))))

(declare-fun b!2540586 () Bool)

(declare-fun res!1071013 () Bool)

(declare-fun e!1606586 () Bool)

(assert (=> b!2540586 (=> res!1071013 e!1606586)))

(assert (=> b!2540586 (= res!1071013 (not ((_ is ElementMatch!7565) (derivativeStep!2134 (regTwo!15643 r!27340) (head!5787 lt!901848)))))))

(assert (=> b!2540586 (= e!1606588 e!1606586)))

(declare-fun b!2540587 () Bool)

(declare-fun res!1071019 () Bool)

(assert (=> b!2540587 (=> (not res!1071019) (not e!1606585))))

(assert (=> b!2540587 (= res!1071019 (not call!160564))))

(declare-fun b!2540588 () Bool)

(assert (=> b!2540588 (= e!1606586 e!1606584)))

(declare-fun res!1071017 () Bool)

(assert (=> b!2540588 (=> (not res!1071017) (not e!1606584))))

(assert (=> b!2540588 (= res!1071017 (not lt!901925))))

(declare-fun b!2540589 () Bool)

(assert (=> b!2540589 (= e!1606585 (= (head!5787 (tail!4062 lt!901848)) (c!406353 (derivativeStep!2134 (regTwo!15643 r!27340) (head!5787 lt!901848)))))))

(declare-fun b!2540590 () Bool)

(declare-fun res!1071015 () Bool)

(assert (=> b!2540590 (=> res!1071015 e!1606586)))

(assert (=> b!2540590 (= res!1071015 e!1606585)))

(declare-fun res!1071018 () Bool)

(assert (=> b!2540590 (=> (not res!1071018) (not e!1606585))))

(assert (=> b!2540590 (= res!1071018 lt!901925)))

(declare-fun b!2540591 () Bool)

(assert (=> b!2540591 (= e!1606587 (not (= (head!5787 (tail!4062 lt!901848)) (c!406353 (derivativeStep!2134 (regTwo!15643 r!27340) (head!5787 lt!901848))))))))

(assert (= (and d!721476 c!406611) b!2540582))

(assert (= (and d!721476 (not c!406611)) b!2540585))

(assert (= (and d!721476 c!406612) b!2540580))

(assert (= (and d!721476 (not c!406612)) b!2540579))

(assert (= (and b!2540579 c!406613) b!2540581))

(assert (= (and b!2540579 (not c!406613)) b!2540586))

(assert (= (and b!2540586 (not res!1071013)) b!2540590))

(assert (= (and b!2540590 res!1071018) b!2540587))

(assert (= (and b!2540587 res!1071019) b!2540578))

(assert (= (and b!2540578 res!1071014) b!2540589))

(assert (= (and b!2540590 (not res!1071015)) b!2540588))

(assert (= (and b!2540588 res!1071017) b!2540583))

(assert (= (and b!2540583 (not res!1071016)) b!2540584))

(assert (= (and b!2540584 (not res!1071012)) b!2540591))

(assert (= (or b!2540580 b!2540583 b!2540587) bm!160559))

(assert (=> d!721476 m!2887049))

(assert (=> d!721476 m!2887051))

(assert (=> d!721476 m!2887083))

(declare-fun m!2887621 () Bool)

(assert (=> d!721476 m!2887621))

(assert (=> b!2540591 m!2887049))

(assert (=> b!2540591 m!2887327))

(assert (=> b!2540578 m!2887049))

(assert (=> b!2540578 m!2887329))

(assert (=> b!2540578 m!2887329))

(assert (=> b!2540578 m!2887331))

(assert (=> b!2540585 m!2887049))

(assert (=> b!2540585 m!2887327))

(assert (=> b!2540585 m!2887083))

(assert (=> b!2540585 m!2887327))

(declare-fun m!2887623 () Bool)

(assert (=> b!2540585 m!2887623))

(assert (=> b!2540585 m!2887049))

(assert (=> b!2540585 m!2887329))

(assert (=> b!2540585 m!2887623))

(assert (=> b!2540585 m!2887329))

(declare-fun m!2887625 () Bool)

(assert (=> b!2540585 m!2887625))

(assert (=> b!2540584 m!2887049))

(assert (=> b!2540584 m!2887329))

(assert (=> b!2540584 m!2887329))

(assert (=> b!2540584 m!2887331))

(assert (=> b!2540582 m!2887083))

(declare-fun m!2887627 () Bool)

(assert (=> b!2540582 m!2887627))

(assert (=> bm!160559 m!2887049))

(assert (=> bm!160559 m!2887051))

(assert (=> b!2540589 m!2887049))

(assert (=> b!2540589 m!2887327))

(assert (=> b!2539842 d!721476))

(declare-fun d!721478 () Bool)

(declare-fun lt!901926 () Regex!7565)

(assert (=> d!721478 (validRegex!3191 lt!901926)))

(declare-fun e!1606593 () Regex!7565)

(assert (=> d!721478 (= lt!901926 e!1606593)))

(declare-fun c!406614 () Bool)

(assert (=> d!721478 (= c!406614 (or ((_ is EmptyExpr!7565) (regTwo!15643 r!27340)) ((_ is EmptyLang!7565) (regTwo!15643 r!27340))))))

(assert (=> d!721478 (validRegex!3191 (regTwo!15643 r!27340))))

(assert (=> d!721478 (= (derivativeStep!2134 (regTwo!15643 r!27340) (head!5787 lt!901848)) lt!901926)))

(declare-fun bm!160560 () Bool)

(declare-fun c!406618 () Bool)

(declare-fun call!160568 () Regex!7565)

(declare-fun c!406617 () Bool)

(assert (=> bm!160560 (= call!160568 (derivativeStep!2134 (ite c!406618 (regTwo!15643 (regTwo!15643 r!27340)) (ite c!406617 (reg!7894 (regTwo!15643 r!27340)) (regOne!15642 (regTwo!15643 r!27340)))) (head!5787 lt!901848)))))

(declare-fun bm!160561 () Bool)

(declare-fun call!160566 () Regex!7565)

(assert (=> bm!160561 (= call!160566 (derivativeStep!2134 (ite c!406618 (regOne!15643 (regTwo!15643 r!27340)) (regTwo!15642 (regTwo!15643 r!27340))) (head!5787 lt!901848)))))

(declare-fun bm!160562 () Bool)

(declare-fun call!160565 () Regex!7565)

(assert (=> bm!160562 (= call!160565 call!160568)))

(declare-fun bm!160563 () Bool)

(declare-fun call!160567 () Regex!7565)

(assert (=> bm!160563 (= call!160567 call!160565)))

(declare-fun b!2540592 () Bool)

(declare-fun e!1606591 () Regex!7565)

(declare-fun e!1606594 () Regex!7565)

(assert (=> b!2540592 (= e!1606591 e!1606594)))

(assert (=> b!2540592 (= c!406617 ((_ is Star!7565) (regTwo!15643 r!27340)))))

(declare-fun b!2540593 () Bool)

(declare-fun e!1606592 () Regex!7565)

(assert (=> b!2540593 (= e!1606593 e!1606592)))

(declare-fun c!406615 () Bool)

(assert (=> b!2540593 (= c!406615 ((_ is ElementMatch!7565) (regTwo!15643 r!27340)))))

(declare-fun b!2540594 () Bool)

(assert (=> b!2540594 (= e!1606594 (Concat!12261 call!160565 (regTwo!15643 r!27340)))))

(declare-fun b!2540595 () Bool)

(declare-fun e!1606590 () Regex!7565)

(assert (=> b!2540595 (= e!1606590 (Union!7565 (Concat!12261 call!160567 (regTwo!15642 (regTwo!15643 r!27340))) EmptyLang!7565))))

(declare-fun b!2540596 () Bool)

(assert (=> b!2540596 (= c!406618 ((_ is Union!7565) (regTwo!15643 r!27340)))))

(assert (=> b!2540596 (= e!1606592 e!1606591)))

(declare-fun b!2540597 () Bool)

(declare-fun c!406616 () Bool)

(assert (=> b!2540597 (= c!406616 (nullable!2482 (regOne!15642 (regTwo!15643 r!27340))))))

(assert (=> b!2540597 (= e!1606594 e!1606590)))

(declare-fun b!2540598 () Bool)

(assert (=> b!2540598 (= e!1606590 (Union!7565 (Concat!12261 call!160567 (regTwo!15642 (regTwo!15643 r!27340))) call!160566))))

(declare-fun b!2540599 () Bool)

(assert (=> b!2540599 (= e!1606591 (Union!7565 call!160566 call!160568))))

(declare-fun b!2540600 () Bool)

(assert (=> b!2540600 (= e!1606593 EmptyLang!7565)))

(declare-fun b!2540601 () Bool)

(assert (=> b!2540601 (= e!1606592 (ite (= (head!5787 lt!901848) (c!406353 (regTwo!15643 r!27340))) EmptyExpr!7565 EmptyLang!7565))))

(assert (= (and d!721478 c!406614) b!2540600))

(assert (= (and d!721478 (not c!406614)) b!2540593))

(assert (= (and b!2540593 c!406615) b!2540601))

(assert (= (and b!2540593 (not c!406615)) b!2540596))

(assert (= (and b!2540596 c!406618) b!2540599))

(assert (= (and b!2540596 (not c!406618)) b!2540592))

(assert (= (and b!2540592 c!406617) b!2540594))

(assert (= (and b!2540592 (not c!406617)) b!2540597))

(assert (= (and b!2540597 c!406616) b!2540598))

(assert (= (and b!2540597 (not c!406616)) b!2540595))

(assert (= (or b!2540598 b!2540595) bm!160563))

(assert (= (or b!2540594 bm!160563) bm!160562))

(assert (= (or b!2540599 bm!160562) bm!160560))

(assert (= (or b!2540599 b!2540598) bm!160561))

(declare-fun m!2887629 () Bool)

(assert (=> d!721478 m!2887629))

(assert (=> d!721478 m!2886943))

(assert (=> bm!160560 m!2887047))

(declare-fun m!2887631 () Bool)

(assert (=> bm!160560 m!2887631))

(assert (=> bm!160561 m!2887047))

(declare-fun m!2887633 () Bool)

(assert (=> bm!160561 m!2887633))

(assert (=> b!2540597 m!2887105))

(assert (=> b!2539842 d!721478))

(assert (=> b!2539842 d!721354))

(assert (=> b!2539842 d!721336))

(declare-fun b!2540602 () Bool)

(declare-fun e!1606599 () Bool)

(declare-fun e!1606597 () Bool)

(assert (=> b!2540602 (= e!1606599 e!1606597)))

(declare-fun res!1071021 () Bool)

(assert (=> b!2540602 (= res!1071021 (not (nullable!2482 (reg!7894 lt!901874))))))

(assert (=> b!2540602 (=> (not res!1071021) (not e!1606597))))

(declare-fun bm!160564 () Bool)

(declare-fun call!160571 () Bool)

(declare-fun c!406620 () Bool)

(declare-fun c!406619 () Bool)

(assert (=> bm!160564 (= call!160571 (validRegex!3191 (ite c!406620 (reg!7894 lt!901874) (ite c!406619 (regTwo!15643 lt!901874) (regOne!15642 lt!901874)))))))

(declare-fun b!2540603 () Bool)

(declare-fun e!1606598 () Bool)

(declare-fun e!1606596 () Bool)

(assert (=> b!2540603 (= e!1606598 e!1606596)))

(declare-fun res!1071020 () Bool)

(assert (=> b!2540603 (=> (not res!1071020) (not e!1606596))))

(declare-fun call!160570 () Bool)

(assert (=> b!2540603 (= res!1071020 call!160570)))

(declare-fun d!721480 () Bool)

(declare-fun res!1071023 () Bool)

(declare-fun e!1606600 () Bool)

(assert (=> d!721480 (=> res!1071023 e!1606600)))

(assert (=> d!721480 (= res!1071023 ((_ is ElementMatch!7565) lt!901874))))

(assert (=> d!721480 (= (validRegex!3191 lt!901874) e!1606600)))

(declare-fun b!2540604 () Bool)

(assert (=> b!2540604 (= e!1606600 e!1606599)))

(assert (=> b!2540604 (= c!406620 ((_ is Star!7565) lt!901874))))

(declare-fun b!2540605 () Bool)

(declare-fun e!1606601 () Bool)

(assert (=> b!2540605 (= e!1606599 e!1606601)))

(assert (=> b!2540605 (= c!406619 ((_ is Union!7565) lt!901874))))

(declare-fun b!2540606 () Bool)

(declare-fun res!1071022 () Bool)

(declare-fun e!1606595 () Bool)

(assert (=> b!2540606 (=> (not res!1071022) (not e!1606595))))

(declare-fun call!160569 () Bool)

(assert (=> b!2540606 (= res!1071022 call!160569)))

(assert (=> b!2540606 (= e!1606601 e!1606595)))

(declare-fun b!2540607 () Bool)

(assert (=> b!2540607 (= e!1606597 call!160571)))

(declare-fun b!2540608 () Bool)

(assert (=> b!2540608 (= e!1606595 call!160570)))

(declare-fun bm!160565 () Bool)

(assert (=> bm!160565 (= call!160570 call!160571)))

(declare-fun b!2540609 () Bool)

(declare-fun res!1071024 () Bool)

(assert (=> b!2540609 (=> res!1071024 e!1606598)))

(assert (=> b!2540609 (= res!1071024 (not ((_ is Concat!12261) lt!901874)))))

(assert (=> b!2540609 (= e!1606601 e!1606598)))

(declare-fun bm!160566 () Bool)

(assert (=> bm!160566 (= call!160569 (validRegex!3191 (ite c!406619 (regOne!15643 lt!901874) (regTwo!15642 lt!901874))))))

(declare-fun b!2540610 () Bool)

(assert (=> b!2540610 (= e!1606596 call!160569)))

(assert (= (and d!721480 (not res!1071023)) b!2540604))

(assert (= (and b!2540604 c!406620) b!2540602))

(assert (= (and b!2540604 (not c!406620)) b!2540605))

(assert (= (and b!2540602 res!1071021) b!2540607))

(assert (= (and b!2540605 c!406619) b!2540606))

(assert (= (and b!2540605 (not c!406619)) b!2540609))

(assert (= (and b!2540606 res!1071022) b!2540608))

(assert (= (and b!2540609 (not res!1071024)) b!2540603))

(assert (= (and b!2540603 res!1071020) b!2540610))

(assert (= (or b!2540606 b!2540610) bm!160566))

(assert (= (or b!2540608 b!2540603) bm!160565))

(assert (= (or b!2540607 bm!160565) bm!160564))

(declare-fun m!2887635 () Bool)

(assert (=> b!2540602 m!2887635))

(declare-fun m!2887637 () Bool)

(assert (=> bm!160564 m!2887637))

(declare-fun m!2887639 () Bool)

(assert (=> bm!160566 m!2887639))

(assert (=> d!721272 d!721480))

(declare-fun b!2540611 () Bool)

(declare-fun e!1606606 () Bool)

(declare-fun e!1606604 () Bool)

(assert (=> b!2540611 (= e!1606606 e!1606604)))

(declare-fun res!1071026 () Bool)

(assert (=> b!2540611 (= res!1071026 (not (nullable!2482 (reg!7894 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016)))))))

(assert (=> b!2540611 (=> (not res!1071026) (not e!1606604))))

(declare-fun c!406621 () Bool)

(declare-fun c!406622 () Bool)

(declare-fun call!160574 () Bool)

(declare-fun bm!160567 () Bool)

(assert (=> bm!160567 (= call!160574 (validRegex!3191 (ite c!406622 (reg!7894 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016)) (ite c!406621 (regTwo!15643 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016)) (regOne!15642 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016))))))))

(declare-fun b!2540612 () Bool)

(declare-fun e!1606605 () Bool)

(declare-fun e!1606603 () Bool)

(assert (=> b!2540612 (= e!1606605 e!1606603)))

(declare-fun res!1071025 () Bool)

(assert (=> b!2540612 (=> (not res!1071025) (not e!1606603))))

(declare-fun call!160573 () Bool)

(assert (=> b!2540612 (= res!1071025 call!160573)))

(declare-fun d!721482 () Bool)

(declare-fun res!1071028 () Bool)

(declare-fun e!1606607 () Bool)

(assert (=> d!721482 (=> res!1071028 e!1606607)))

(assert (=> d!721482 (= res!1071028 ((_ is ElementMatch!7565) (derivativeStep!2134 (regTwo!15643 r!27340) c!14016)))))

(assert (=> d!721482 (= (validRegex!3191 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016)) e!1606607)))

(declare-fun b!2540613 () Bool)

(assert (=> b!2540613 (= e!1606607 e!1606606)))

(assert (=> b!2540613 (= c!406622 ((_ is Star!7565) (derivativeStep!2134 (regTwo!15643 r!27340) c!14016)))))

(declare-fun b!2540614 () Bool)

(declare-fun e!1606608 () Bool)

(assert (=> b!2540614 (= e!1606606 e!1606608)))

(assert (=> b!2540614 (= c!406621 ((_ is Union!7565) (derivativeStep!2134 (regTwo!15643 r!27340) c!14016)))))

(declare-fun b!2540615 () Bool)

(declare-fun res!1071027 () Bool)

(declare-fun e!1606602 () Bool)

(assert (=> b!2540615 (=> (not res!1071027) (not e!1606602))))

(declare-fun call!160572 () Bool)

(assert (=> b!2540615 (= res!1071027 call!160572)))

(assert (=> b!2540615 (= e!1606608 e!1606602)))

(declare-fun b!2540616 () Bool)

(assert (=> b!2540616 (= e!1606604 call!160574)))

(declare-fun b!2540617 () Bool)

(assert (=> b!2540617 (= e!1606602 call!160573)))

(declare-fun bm!160568 () Bool)

(assert (=> bm!160568 (= call!160573 call!160574)))

(declare-fun b!2540618 () Bool)

(declare-fun res!1071029 () Bool)

(assert (=> b!2540618 (=> res!1071029 e!1606605)))

(assert (=> b!2540618 (= res!1071029 (not ((_ is Concat!12261) (derivativeStep!2134 (regTwo!15643 r!27340) c!14016))))))

(assert (=> b!2540618 (= e!1606608 e!1606605)))

(declare-fun bm!160569 () Bool)

(assert (=> bm!160569 (= call!160572 (validRegex!3191 (ite c!406621 (regOne!15643 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016)) (regTwo!15642 (derivativeStep!2134 (regTwo!15643 r!27340) c!14016)))))))

(declare-fun b!2540619 () Bool)

(assert (=> b!2540619 (= e!1606603 call!160572)))

(assert (= (and d!721482 (not res!1071028)) b!2540613))

(assert (= (and b!2540613 c!406622) b!2540611))

(assert (= (and b!2540613 (not c!406622)) b!2540614))

(assert (= (and b!2540611 res!1071026) b!2540616))

(assert (= (and b!2540614 c!406621) b!2540615))

(assert (= (and b!2540614 (not c!406621)) b!2540618))

(assert (= (and b!2540615 res!1071027) b!2540617))

(assert (= (and b!2540618 (not res!1071029)) b!2540612))

(assert (= (and b!2540612 res!1071025) b!2540619))

(assert (= (or b!2540615 b!2540619) bm!160569))

(assert (= (or b!2540617 b!2540612) bm!160568))

(assert (= (or b!2540616 bm!160568) bm!160567))

(declare-fun m!2887641 () Bool)

(assert (=> b!2540611 m!2887641))

(declare-fun m!2887643 () Bool)

(assert (=> bm!160567 m!2887643))

(declare-fun m!2887645 () Bool)

(assert (=> bm!160569 m!2887645))

(assert (=> d!721272 d!721482))

(declare-fun b!2540620 () Bool)

(declare-fun e!1606613 () Bool)

(declare-fun e!1606611 () Bool)

(assert (=> b!2540620 (= e!1606613 e!1606611)))

(declare-fun res!1071031 () Bool)

(assert (=> b!2540620 (= res!1071031 (not (nullable!2482 (reg!7894 lt!901870))))))

(assert (=> b!2540620 (=> (not res!1071031) (not e!1606611))))

(declare-fun bm!160570 () Bool)

(declare-fun c!406624 () Bool)

(declare-fun call!160577 () Bool)

(declare-fun c!406623 () Bool)

(assert (=> bm!160570 (= call!160577 (validRegex!3191 (ite c!406624 (reg!7894 lt!901870) (ite c!406623 (regTwo!15643 lt!901870) (regOne!15642 lt!901870)))))))

(declare-fun b!2540621 () Bool)

(declare-fun e!1606612 () Bool)

(declare-fun e!1606610 () Bool)

(assert (=> b!2540621 (= e!1606612 e!1606610)))

(declare-fun res!1071030 () Bool)

(assert (=> b!2540621 (=> (not res!1071030) (not e!1606610))))

(declare-fun call!160576 () Bool)

(assert (=> b!2540621 (= res!1071030 call!160576)))

(declare-fun d!721484 () Bool)

(declare-fun res!1071033 () Bool)

(declare-fun e!1606614 () Bool)

(assert (=> d!721484 (=> res!1071033 e!1606614)))

(assert (=> d!721484 (= res!1071033 ((_ is ElementMatch!7565) lt!901870))))

(assert (=> d!721484 (= (validRegex!3191 lt!901870) e!1606614)))

(declare-fun b!2540622 () Bool)

(assert (=> b!2540622 (= e!1606614 e!1606613)))

(assert (=> b!2540622 (= c!406624 ((_ is Star!7565) lt!901870))))

(declare-fun b!2540623 () Bool)

(declare-fun e!1606615 () Bool)

(assert (=> b!2540623 (= e!1606613 e!1606615)))

(assert (=> b!2540623 (= c!406623 ((_ is Union!7565) lt!901870))))

(declare-fun b!2540624 () Bool)

(declare-fun res!1071032 () Bool)

(declare-fun e!1606609 () Bool)

(assert (=> b!2540624 (=> (not res!1071032) (not e!1606609))))

(declare-fun call!160575 () Bool)

(assert (=> b!2540624 (= res!1071032 call!160575)))

(assert (=> b!2540624 (= e!1606615 e!1606609)))

(declare-fun b!2540625 () Bool)

(assert (=> b!2540625 (= e!1606611 call!160577)))

(declare-fun b!2540626 () Bool)

(assert (=> b!2540626 (= e!1606609 call!160576)))

(declare-fun bm!160571 () Bool)

(assert (=> bm!160571 (= call!160576 call!160577)))

(declare-fun b!2540627 () Bool)

(declare-fun res!1071034 () Bool)

(assert (=> b!2540627 (=> res!1071034 e!1606612)))

(assert (=> b!2540627 (= res!1071034 (not ((_ is Concat!12261) lt!901870)))))

(assert (=> b!2540627 (= e!1606615 e!1606612)))

(declare-fun bm!160572 () Bool)

(assert (=> bm!160572 (= call!160575 (validRegex!3191 (ite c!406623 (regOne!15643 lt!901870) (regTwo!15642 lt!901870))))))

(declare-fun b!2540628 () Bool)

(assert (=> b!2540628 (= e!1606610 call!160575)))

(assert (= (and d!721484 (not res!1071033)) b!2540622))

(assert (= (and b!2540622 c!406624) b!2540620))

(assert (= (and b!2540622 (not c!406624)) b!2540623))

(assert (= (and b!2540620 res!1071031) b!2540625))

(assert (= (and b!2540623 c!406623) b!2540624))

(assert (= (and b!2540623 (not c!406623)) b!2540627))

(assert (= (and b!2540624 res!1071032) b!2540626))

(assert (= (and b!2540627 (not res!1071034)) b!2540621))

(assert (= (and b!2540621 res!1071030) b!2540628))

(assert (= (or b!2540624 b!2540628) bm!160572))

(assert (= (or b!2540626 b!2540621) bm!160571))

(assert (= (or b!2540625 bm!160571) bm!160570))

(declare-fun m!2887647 () Bool)

(assert (=> b!2540620 m!2887647))

(declare-fun m!2887649 () Bool)

(assert (=> bm!160570 m!2887649))

(declare-fun m!2887651 () Bool)

(assert (=> bm!160572 m!2887651))

(assert (=> d!721266 d!721484))

(assert (=> d!721266 d!721288))

(declare-fun e!1606616 () Bool)

(assert (=> b!2539959 (= tp!811210 e!1606616)))

(declare-fun b!2540632 () Bool)

(declare-fun tp!811274 () Bool)

(declare-fun tp!811273 () Bool)

(assert (=> b!2540632 (= e!1606616 (and tp!811274 tp!811273))))

(declare-fun b!2540630 () Bool)

(declare-fun tp!811271 () Bool)

(declare-fun tp!811272 () Bool)

(assert (=> b!2540630 (= e!1606616 (and tp!811271 tp!811272))))

(declare-fun b!2540629 () Bool)

(assert (=> b!2540629 (= e!1606616 tp_is_empty!12985)))

(declare-fun b!2540631 () Bool)

(declare-fun tp!811275 () Bool)

(assert (=> b!2540631 (= e!1606616 tp!811275)))

(assert (= (and b!2539959 ((_ is ElementMatch!7565) (regOne!15642 (regTwo!15642 r!27340)))) b!2540629))

(assert (= (and b!2539959 ((_ is Concat!12261) (regOne!15642 (regTwo!15642 r!27340)))) b!2540630))

(assert (= (and b!2539959 ((_ is Star!7565) (regOne!15642 (regTwo!15642 r!27340)))) b!2540631))

(assert (= (and b!2539959 ((_ is Union!7565) (regOne!15642 (regTwo!15642 r!27340)))) b!2540632))

(declare-fun e!1606617 () Bool)

(assert (=> b!2539959 (= tp!811211 e!1606617)))

(declare-fun b!2540636 () Bool)

(declare-fun tp!811279 () Bool)

(declare-fun tp!811278 () Bool)

(assert (=> b!2540636 (= e!1606617 (and tp!811279 tp!811278))))

(declare-fun b!2540634 () Bool)

(declare-fun tp!811276 () Bool)

(declare-fun tp!811277 () Bool)

(assert (=> b!2540634 (= e!1606617 (and tp!811276 tp!811277))))

(declare-fun b!2540633 () Bool)

(assert (=> b!2540633 (= e!1606617 tp_is_empty!12985)))

(declare-fun b!2540635 () Bool)

(declare-fun tp!811280 () Bool)

(assert (=> b!2540635 (= e!1606617 tp!811280)))

(assert (= (and b!2539959 ((_ is ElementMatch!7565) (regTwo!15642 (regTwo!15642 r!27340)))) b!2540633))

(assert (= (and b!2539959 ((_ is Concat!12261) (regTwo!15642 (regTwo!15642 r!27340)))) b!2540634))

(assert (= (and b!2539959 ((_ is Star!7565) (regTwo!15642 (regTwo!15642 r!27340)))) b!2540635))

(assert (= (and b!2539959 ((_ is Union!7565) (regTwo!15642 (regTwo!15642 r!27340)))) b!2540636))

(declare-fun e!1606618 () Bool)

(assert (=> b!2539970 (= tp!811221 e!1606618)))

(declare-fun b!2540640 () Bool)

(declare-fun tp!811284 () Bool)

(declare-fun tp!811283 () Bool)

(assert (=> b!2540640 (= e!1606618 (and tp!811284 tp!811283))))

(declare-fun b!2540638 () Bool)

(declare-fun tp!811281 () Bool)

(declare-fun tp!811282 () Bool)

(assert (=> b!2540638 (= e!1606618 (and tp!811281 tp!811282))))

(declare-fun b!2540637 () Bool)

(assert (=> b!2540637 (= e!1606618 tp_is_empty!12985)))

(declare-fun b!2540639 () Bool)

(declare-fun tp!811285 () Bool)

(assert (=> b!2540639 (= e!1606618 tp!811285)))

(assert (= (and b!2539970 ((_ is ElementMatch!7565) (regOne!15643 (regOne!15643 r!27340)))) b!2540637))

(assert (= (and b!2539970 ((_ is Concat!12261) (regOne!15643 (regOne!15643 r!27340)))) b!2540638))

(assert (= (and b!2539970 ((_ is Star!7565) (regOne!15643 (regOne!15643 r!27340)))) b!2540639))

(assert (= (and b!2539970 ((_ is Union!7565) (regOne!15643 (regOne!15643 r!27340)))) b!2540640))

(declare-fun e!1606619 () Bool)

(assert (=> b!2539970 (= tp!811220 e!1606619)))

(declare-fun b!2540644 () Bool)

(declare-fun tp!811289 () Bool)

(declare-fun tp!811288 () Bool)

(assert (=> b!2540644 (= e!1606619 (and tp!811289 tp!811288))))

(declare-fun b!2540642 () Bool)

(declare-fun tp!811286 () Bool)

(declare-fun tp!811287 () Bool)

(assert (=> b!2540642 (= e!1606619 (and tp!811286 tp!811287))))

(declare-fun b!2540641 () Bool)

(assert (=> b!2540641 (= e!1606619 tp_is_empty!12985)))

(declare-fun b!2540643 () Bool)

(declare-fun tp!811290 () Bool)

(assert (=> b!2540643 (= e!1606619 tp!811290)))

(assert (= (and b!2539970 ((_ is ElementMatch!7565) (regTwo!15643 (regOne!15643 r!27340)))) b!2540641))

(assert (= (and b!2539970 ((_ is Concat!12261) (regTwo!15643 (regOne!15643 r!27340)))) b!2540642))

(assert (= (and b!2539970 ((_ is Star!7565) (regTwo!15643 (regOne!15643 r!27340)))) b!2540643))

(assert (= (and b!2539970 ((_ is Union!7565) (regTwo!15643 (regOne!15643 r!27340)))) b!2540644))

(declare-fun b!2540645 () Bool)

(declare-fun e!1606620 () Bool)

(declare-fun tp!811291 () Bool)

(assert (=> b!2540645 (= e!1606620 (and tp_is_empty!12985 tp!811291))))

(assert (=> b!2539966 (= tp!811217 e!1606620)))

(assert (= (and b!2539966 ((_ is Cons!29530) (t!211329 (t!211329 tl!4068)))) b!2540645))

(declare-fun e!1606621 () Bool)

(assert (=> b!2539977 (= tp!811232 e!1606621)))

(declare-fun b!2540649 () Bool)

(declare-fun tp!811295 () Bool)

(declare-fun tp!811294 () Bool)

(assert (=> b!2540649 (= e!1606621 (and tp!811295 tp!811294))))

(declare-fun b!2540647 () Bool)

(declare-fun tp!811292 () Bool)

(declare-fun tp!811293 () Bool)

(assert (=> b!2540647 (= e!1606621 (and tp!811292 tp!811293))))

(declare-fun b!2540646 () Bool)

(assert (=> b!2540646 (= e!1606621 tp_is_empty!12985)))

(declare-fun b!2540648 () Bool)

(declare-fun tp!811296 () Bool)

(assert (=> b!2540648 (= e!1606621 tp!811296)))

(assert (= (and b!2539977 ((_ is ElementMatch!7565) (reg!7894 (reg!7894 r!27340)))) b!2540646))

(assert (= (and b!2539977 ((_ is Concat!12261) (reg!7894 (reg!7894 r!27340)))) b!2540647))

(assert (= (and b!2539977 ((_ is Star!7565) (reg!7894 (reg!7894 r!27340)))) b!2540648))

(assert (= (and b!2539977 ((_ is Union!7565) (reg!7894 (reg!7894 r!27340)))) b!2540649))

(declare-fun e!1606622 () Bool)

(assert (=> b!2539972 (= tp!811223 e!1606622)))

(declare-fun b!2540653 () Bool)

(declare-fun tp!811300 () Bool)

(declare-fun tp!811299 () Bool)

(assert (=> b!2540653 (= e!1606622 (and tp!811300 tp!811299))))

(declare-fun b!2540651 () Bool)

(declare-fun tp!811297 () Bool)

(declare-fun tp!811298 () Bool)

(assert (=> b!2540651 (= e!1606622 (and tp!811297 tp!811298))))

(declare-fun b!2540650 () Bool)

(assert (=> b!2540650 (= e!1606622 tp_is_empty!12985)))

(declare-fun b!2540652 () Bool)

(declare-fun tp!811301 () Bool)

(assert (=> b!2540652 (= e!1606622 tp!811301)))

(assert (= (and b!2539972 ((_ is ElementMatch!7565) (regOne!15642 (regTwo!15643 r!27340)))) b!2540650))

(assert (= (and b!2539972 ((_ is Concat!12261) (regOne!15642 (regTwo!15643 r!27340)))) b!2540651))

(assert (= (and b!2539972 ((_ is Star!7565) (regOne!15642 (regTwo!15643 r!27340)))) b!2540652))

(assert (= (and b!2539972 ((_ is Union!7565) (regOne!15642 (regTwo!15643 r!27340)))) b!2540653))

(declare-fun e!1606623 () Bool)

(assert (=> b!2539972 (= tp!811224 e!1606623)))

(declare-fun b!2540657 () Bool)

(declare-fun tp!811305 () Bool)

(declare-fun tp!811304 () Bool)

(assert (=> b!2540657 (= e!1606623 (and tp!811305 tp!811304))))

(declare-fun b!2540655 () Bool)

(declare-fun tp!811302 () Bool)

(declare-fun tp!811303 () Bool)

(assert (=> b!2540655 (= e!1606623 (and tp!811302 tp!811303))))

(declare-fun b!2540654 () Bool)

(assert (=> b!2540654 (= e!1606623 tp_is_empty!12985)))

(declare-fun b!2540656 () Bool)

(declare-fun tp!811306 () Bool)

(assert (=> b!2540656 (= e!1606623 tp!811306)))

(assert (= (and b!2539972 ((_ is ElementMatch!7565) (regTwo!15642 (regTwo!15643 r!27340)))) b!2540654))

(assert (= (and b!2539972 ((_ is Concat!12261) (regTwo!15642 (regTwo!15643 r!27340)))) b!2540655))

(assert (= (and b!2539972 ((_ is Star!7565) (regTwo!15642 (regTwo!15643 r!27340)))) b!2540656))

(assert (= (and b!2539972 ((_ is Union!7565) (regTwo!15642 (regTwo!15643 r!27340)))) b!2540657))

(declare-fun e!1606624 () Bool)

(assert (=> b!2539973 (= tp!811227 e!1606624)))

(declare-fun b!2540661 () Bool)

(declare-fun tp!811310 () Bool)

(declare-fun tp!811309 () Bool)

(assert (=> b!2540661 (= e!1606624 (and tp!811310 tp!811309))))

(declare-fun b!2540659 () Bool)

(declare-fun tp!811307 () Bool)

(declare-fun tp!811308 () Bool)

(assert (=> b!2540659 (= e!1606624 (and tp!811307 tp!811308))))

(declare-fun b!2540658 () Bool)

(assert (=> b!2540658 (= e!1606624 tp_is_empty!12985)))

(declare-fun b!2540660 () Bool)

(declare-fun tp!811311 () Bool)

(assert (=> b!2540660 (= e!1606624 tp!811311)))

(assert (= (and b!2539973 ((_ is ElementMatch!7565) (reg!7894 (regTwo!15643 r!27340)))) b!2540658))

(assert (= (and b!2539973 ((_ is Concat!12261) (reg!7894 (regTwo!15643 r!27340)))) b!2540659))

(assert (= (and b!2539973 ((_ is Star!7565) (reg!7894 (regTwo!15643 r!27340)))) b!2540660))

(assert (= (and b!2539973 ((_ is Union!7565) (reg!7894 (regTwo!15643 r!27340)))) b!2540661))

(declare-fun e!1606625 () Bool)

(assert (=> b!2539968 (= tp!811218 e!1606625)))

(declare-fun b!2540665 () Bool)

(declare-fun tp!811315 () Bool)

(declare-fun tp!811314 () Bool)

(assert (=> b!2540665 (= e!1606625 (and tp!811315 tp!811314))))

(declare-fun b!2540663 () Bool)

(declare-fun tp!811312 () Bool)

(declare-fun tp!811313 () Bool)

(assert (=> b!2540663 (= e!1606625 (and tp!811312 tp!811313))))

(declare-fun b!2540662 () Bool)

(assert (=> b!2540662 (= e!1606625 tp_is_empty!12985)))

(declare-fun b!2540664 () Bool)

(declare-fun tp!811316 () Bool)

(assert (=> b!2540664 (= e!1606625 tp!811316)))

(assert (= (and b!2539968 ((_ is ElementMatch!7565) (regOne!15642 (regOne!15643 r!27340)))) b!2540662))

(assert (= (and b!2539968 ((_ is Concat!12261) (regOne!15642 (regOne!15643 r!27340)))) b!2540663))

(assert (= (and b!2539968 ((_ is Star!7565) (regOne!15642 (regOne!15643 r!27340)))) b!2540664))

(assert (= (and b!2539968 ((_ is Union!7565) (regOne!15642 (regOne!15643 r!27340)))) b!2540665))

(declare-fun e!1606626 () Bool)

(assert (=> b!2539968 (= tp!811219 e!1606626)))

(declare-fun b!2540669 () Bool)

(declare-fun tp!811320 () Bool)

(declare-fun tp!811319 () Bool)

(assert (=> b!2540669 (= e!1606626 (and tp!811320 tp!811319))))

(declare-fun b!2540667 () Bool)

(declare-fun tp!811317 () Bool)

(declare-fun tp!811318 () Bool)

(assert (=> b!2540667 (= e!1606626 (and tp!811317 tp!811318))))

(declare-fun b!2540666 () Bool)

(assert (=> b!2540666 (= e!1606626 tp_is_empty!12985)))

(declare-fun b!2540668 () Bool)

(declare-fun tp!811321 () Bool)

(assert (=> b!2540668 (= e!1606626 tp!811321)))

(assert (= (and b!2539968 ((_ is ElementMatch!7565) (regTwo!15642 (regOne!15643 r!27340)))) b!2540666))

(assert (= (and b!2539968 ((_ is Concat!12261) (regTwo!15642 (regOne!15643 r!27340)))) b!2540667))

(assert (= (and b!2539968 ((_ is Star!7565) (regTwo!15642 (regOne!15643 r!27340)))) b!2540668))

(assert (= (and b!2539968 ((_ is Union!7565) (regTwo!15642 (regOne!15643 r!27340)))) b!2540669))

(declare-fun e!1606627 () Bool)

(assert (=> b!2539969 (= tp!811222 e!1606627)))

(declare-fun b!2540673 () Bool)

(declare-fun tp!811325 () Bool)

(declare-fun tp!811324 () Bool)

(assert (=> b!2540673 (= e!1606627 (and tp!811325 tp!811324))))

(declare-fun b!2540671 () Bool)

(declare-fun tp!811322 () Bool)

(declare-fun tp!811323 () Bool)

(assert (=> b!2540671 (= e!1606627 (and tp!811322 tp!811323))))

(declare-fun b!2540670 () Bool)

(assert (=> b!2540670 (= e!1606627 tp_is_empty!12985)))

(declare-fun b!2540672 () Bool)

(declare-fun tp!811326 () Bool)

(assert (=> b!2540672 (= e!1606627 tp!811326)))

(assert (= (and b!2539969 ((_ is ElementMatch!7565) (reg!7894 (regOne!15643 r!27340)))) b!2540670))

(assert (= (and b!2539969 ((_ is Concat!12261) (reg!7894 (regOne!15643 r!27340)))) b!2540671))

(assert (= (and b!2539969 ((_ is Star!7565) (reg!7894 (regOne!15643 r!27340)))) b!2540672))

(assert (= (and b!2539969 ((_ is Union!7565) (reg!7894 (regOne!15643 r!27340)))) b!2540673))

(declare-fun e!1606628 () Bool)

(assert (=> b!2539978 (= tp!811231 e!1606628)))

(declare-fun b!2540677 () Bool)

(declare-fun tp!811330 () Bool)

(declare-fun tp!811329 () Bool)

(assert (=> b!2540677 (= e!1606628 (and tp!811330 tp!811329))))

(declare-fun b!2540675 () Bool)

(declare-fun tp!811327 () Bool)

(declare-fun tp!811328 () Bool)

(assert (=> b!2540675 (= e!1606628 (and tp!811327 tp!811328))))

(declare-fun b!2540674 () Bool)

(assert (=> b!2540674 (= e!1606628 tp_is_empty!12985)))

(declare-fun b!2540676 () Bool)

(declare-fun tp!811331 () Bool)

(assert (=> b!2540676 (= e!1606628 tp!811331)))

(assert (= (and b!2539978 ((_ is ElementMatch!7565) (regOne!15643 (reg!7894 r!27340)))) b!2540674))

(assert (= (and b!2539978 ((_ is Concat!12261) (regOne!15643 (reg!7894 r!27340)))) b!2540675))

(assert (= (and b!2539978 ((_ is Star!7565) (regOne!15643 (reg!7894 r!27340)))) b!2540676))

(assert (= (and b!2539978 ((_ is Union!7565) (regOne!15643 (reg!7894 r!27340)))) b!2540677))

(declare-fun e!1606629 () Bool)

(assert (=> b!2539978 (= tp!811230 e!1606629)))

(declare-fun b!2540681 () Bool)

(declare-fun tp!811335 () Bool)

(declare-fun tp!811334 () Bool)

(assert (=> b!2540681 (= e!1606629 (and tp!811335 tp!811334))))

(declare-fun b!2540679 () Bool)

(declare-fun tp!811332 () Bool)

(declare-fun tp!811333 () Bool)

(assert (=> b!2540679 (= e!1606629 (and tp!811332 tp!811333))))

(declare-fun b!2540678 () Bool)

(assert (=> b!2540678 (= e!1606629 tp_is_empty!12985)))

(declare-fun b!2540680 () Bool)

(declare-fun tp!811336 () Bool)

(assert (=> b!2540680 (= e!1606629 tp!811336)))

(assert (= (and b!2539978 ((_ is ElementMatch!7565) (regTwo!15643 (reg!7894 r!27340)))) b!2540678))

(assert (= (and b!2539978 ((_ is Concat!12261) (regTwo!15643 (reg!7894 r!27340)))) b!2540679))

(assert (= (and b!2539978 ((_ is Star!7565) (regTwo!15643 (reg!7894 r!27340)))) b!2540680))

(assert (= (and b!2539978 ((_ is Union!7565) (regTwo!15643 (reg!7894 r!27340)))) b!2540681))

(declare-fun e!1606630 () Bool)

(assert (=> b!2539974 (= tp!811226 e!1606630)))

(declare-fun b!2540685 () Bool)

(declare-fun tp!811340 () Bool)

(declare-fun tp!811339 () Bool)

(assert (=> b!2540685 (= e!1606630 (and tp!811340 tp!811339))))

(declare-fun b!2540683 () Bool)

(declare-fun tp!811337 () Bool)

(declare-fun tp!811338 () Bool)

(assert (=> b!2540683 (= e!1606630 (and tp!811337 tp!811338))))

(declare-fun b!2540682 () Bool)

(assert (=> b!2540682 (= e!1606630 tp_is_empty!12985)))

(declare-fun b!2540684 () Bool)

(declare-fun tp!811341 () Bool)

(assert (=> b!2540684 (= e!1606630 tp!811341)))

(assert (= (and b!2539974 ((_ is ElementMatch!7565) (regOne!15643 (regTwo!15643 r!27340)))) b!2540682))

(assert (= (and b!2539974 ((_ is Concat!12261) (regOne!15643 (regTwo!15643 r!27340)))) b!2540683))

(assert (= (and b!2539974 ((_ is Star!7565) (regOne!15643 (regTwo!15643 r!27340)))) b!2540684))

(assert (= (and b!2539974 ((_ is Union!7565) (regOne!15643 (regTwo!15643 r!27340)))) b!2540685))

(declare-fun e!1606631 () Bool)

(assert (=> b!2539974 (= tp!811225 e!1606631)))

(declare-fun b!2540689 () Bool)

(declare-fun tp!811345 () Bool)

(declare-fun tp!811344 () Bool)

(assert (=> b!2540689 (= e!1606631 (and tp!811345 tp!811344))))

(declare-fun b!2540687 () Bool)

(declare-fun tp!811342 () Bool)

(declare-fun tp!811343 () Bool)

(assert (=> b!2540687 (= e!1606631 (and tp!811342 tp!811343))))

(declare-fun b!2540686 () Bool)

(assert (=> b!2540686 (= e!1606631 tp_is_empty!12985)))

(declare-fun b!2540688 () Bool)

(declare-fun tp!811346 () Bool)

(assert (=> b!2540688 (= e!1606631 tp!811346)))

(assert (= (and b!2539974 ((_ is ElementMatch!7565) (regTwo!15643 (regTwo!15643 r!27340)))) b!2540686))

(assert (= (and b!2539974 ((_ is Concat!12261) (regTwo!15643 (regTwo!15643 r!27340)))) b!2540687))

(assert (= (and b!2539974 ((_ is Star!7565) (regTwo!15643 (regTwo!15643 r!27340)))) b!2540688))

(assert (= (and b!2539974 ((_ is Union!7565) (regTwo!15643 (regTwo!15643 r!27340)))) b!2540689))

(declare-fun e!1606632 () Bool)

(assert (=> b!2539955 (= tp!811205 e!1606632)))

(declare-fun b!2540693 () Bool)

(declare-fun tp!811350 () Bool)

(declare-fun tp!811349 () Bool)

(assert (=> b!2540693 (= e!1606632 (and tp!811350 tp!811349))))

(declare-fun b!2540691 () Bool)

(declare-fun tp!811347 () Bool)

(declare-fun tp!811348 () Bool)

(assert (=> b!2540691 (= e!1606632 (and tp!811347 tp!811348))))

(declare-fun b!2540690 () Bool)

(assert (=> b!2540690 (= e!1606632 tp_is_empty!12985)))

(declare-fun b!2540692 () Bool)

(declare-fun tp!811351 () Bool)

(assert (=> b!2540692 (= e!1606632 tp!811351)))

(assert (= (and b!2539955 ((_ is ElementMatch!7565) (regOne!15642 (regOne!15642 r!27340)))) b!2540690))

(assert (= (and b!2539955 ((_ is Concat!12261) (regOne!15642 (regOne!15642 r!27340)))) b!2540691))

(assert (= (and b!2539955 ((_ is Star!7565) (regOne!15642 (regOne!15642 r!27340)))) b!2540692))

(assert (= (and b!2539955 ((_ is Union!7565) (regOne!15642 (regOne!15642 r!27340)))) b!2540693))

(declare-fun e!1606633 () Bool)

(assert (=> b!2539955 (= tp!811206 e!1606633)))

(declare-fun b!2540697 () Bool)

(declare-fun tp!811355 () Bool)

(declare-fun tp!811354 () Bool)

(assert (=> b!2540697 (= e!1606633 (and tp!811355 tp!811354))))

(declare-fun b!2540695 () Bool)

(declare-fun tp!811352 () Bool)

(declare-fun tp!811353 () Bool)

(assert (=> b!2540695 (= e!1606633 (and tp!811352 tp!811353))))

(declare-fun b!2540694 () Bool)

(assert (=> b!2540694 (= e!1606633 tp_is_empty!12985)))

(declare-fun b!2540696 () Bool)

(declare-fun tp!811356 () Bool)

(assert (=> b!2540696 (= e!1606633 tp!811356)))

(assert (= (and b!2539955 ((_ is ElementMatch!7565) (regTwo!15642 (regOne!15642 r!27340)))) b!2540694))

(assert (= (and b!2539955 ((_ is Concat!12261) (regTwo!15642 (regOne!15642 r!27340)))) b!2540695))

(assert (= (and b!2539955 ((_ is Star!7565) (regTwo!15642 (regOne!15642 r!27340)))) b!2540696))

(assert (= (and b!2539955 ((_ is Union!7565) (regTwo!15642 (regOne!15642 r!27340)))) b!2540697))

(declare-fun e!1606634 () Bool)

(assert (=> b!2539960 (= tp!811214 e!1606634)))

(declare-fun b!2540701 () Bool)

(declare-fun tp!811360 () Bool)

(declare-fun tp!811359 () Bool)

(assert (=> b!2540701 (= e!1606634 (and tp!811360 tp!811359))))

(declare-fun b!2540699 () Bool)

(declare-fun tp!811357 () Bool)

(declare-fun tp!811358 () Bool)

(assert (=> b!2540699 (= e!1606634 (and tp!811357 tp!811358))))

(declare-fun b!2540698 () Bool)

(assert (=> b!2540698 (= e!1606634 tp_is_empty!12985)))

(declare-fun b!2540700 () Bool)

(declare-fun tp!811361 () Bool)

(assert (=> b!2540700 (= e!1606634 tp!811361)))

(assert (= (and b!2539960 ((_ is ElementMatch!7565) (reg!7894 (regTwo!15642 r!27340)))) b!2540698))

(assert (= (and b!2539960 ((_ is Concat!12261) (reg!7894 (regTwo!15642 r!27340)))) b!2540699))

(assert (= (and b!2539960 ((_ is Star!7565) (reg!7894 (regTwo!15642 r!27340)))) b!2540700))

(assert (= (and b!2539960 ((_ is Union!7565) (reg!7894 (regTwo!15642 r!27340)))) b!2540701))

(declare-fun e!1606635 () Bool)

(assert (=> b!2539961 (= tp!811213 e!1606635)))

(declare-fun b!2540705 () Bool)

(declare-fun tp!811365 () Bool)

(declare-fun tp!811364 () Bool)

(assert (=> b!2540705 (= e!1606635 (and tp!811365 tp!811364))))

(declare-fun b!2540703 () Bool)

(declare-fun tp!811362 () Bool)

(declare-fun tp!811363 () Bool)

(assert (=> b!2540703 (= e!1606635 (and tp!811362 tp!811363))))

(declare-fun b!2540702 () Bool)

(assert (=> b!2540702 (= e!1606635 tp_is_empty!12985)))

(declare-fun b!2540704 () Bool)

(declare-fun tp!811366 () Bool)

(assert (=> b!2540704 (= e!1606635 tp!811366)))

(assert (= (and b!2539961 ((_ is ElementMatch!7565) (regOne!15643 (regTwo!15642 r!27340)))) b!2540702))

(assert (= (and b!2539961 ((_ is Concat!12261) (regOne!15643 (regTwo!15642 r!27340)))) b!2540703))

(assert (= (and b!2539961 ((_ is Star!7565) (regOne!15643 (regTwo!15642 r!27340)))) b!2540704))

(assert (= (and b!2539961 ((_ is Union!7565) (regOne!15643 (regTwo!15642 r!27340)))) b!2540705))

(declare-fun e!1606636 () Bool)

(assert (=> b!2539961 (= tp!811212 e!1606636)))

(declare-fun b!2540709 () Bool)

(declare-fun tp!811370 () Bool)

(declare-fun tp!811369 () Bool)

(assert (=> b!2540709 (= e!1606636 (and tp!811370 tp!811369))))

(declare-fun b!2540707 () Bool)

(declare-fun tp!811367 () Bool)

(declare-fun tp!811368 () Bool)

(assert (=> b!2540707 (= e!1606636 (and tp!811367 tp!811368))))

(declare-fun b!2540706 () Bool)

(assert (=> b!2540706 (= e!1606636 tp_is_empty!12985)))

(declare-fun b!2540708 () Bool)

(declare-fun tp!811371 () Bool)

(assert (=> b!2540708 (= e!1606636 tp!811371)))

(assert (= (and b!2539961 ((_ is ElementMatch!7565) (regTwo!15643 (regTwo!15642 r!27340)))) b!2540706))

(assert (= (and b!2539961 ((_ is Concat!12261) (regTwo!15643 (regTwo!15642 r!27340)))) b!2540707))

(assert (= (and b!2539961 ((_ is Star!7565) (regTwo!15643 (regTwo!15642 r!27340)))) b!2540708))

(assert (= (and b!2539961 ((_ is Union!7565) (regTwo!15643 (regTwo!15642 r!27340)))) b!2540709))

(declare-fun e!1606637 () Bool)

(assert (=> b!2539956 (= tp!811209 e!1606637)))

(declare-fun b!2540713 () Bool)

(declare-fun tp!811375 () Bool)

(declare-fun tp!811374 () Bool)

(assert (=> b!2540713 (= e!1606637 (and tp!811375 tp!811374))))

(declare-fun b!2540711 () Bool)

(declare-fun tp!811372 () Bool)

(declare-fun tp!811373 () Bool)

(assert (=> b!2540711 (= e!1606637 (and tp!811372 tp!811373))))

(declare-fun b!2540710 () Bool)

(assert (=> b!2540710 (= e!1606637 tp_is_empty!12985)))

(declare-fun b!2540712 () Bool)

(declare-fun tp!811376 () Bool)

(assert (=> b!2540712 (= e!1606637 tp!811376)))

(assert (= (and b!2539956 ((_ is ElementMatch!7565) (reg!7894 (regOne!15642 r!27340)))) b!2540710))

(assert (= (and b!2539956 ((_ is Concat!12261) (reg!7894 (regOne!15642 r!27340)))) b!2540711))

(assert (= (and b!2539956 ((_ is Star!7565) (reg!7894 (regOne!15642 r!27340)))) b!2540712))

(assert (= (and b!2539956 ((_ is Union!7565) (reg!7894 (regOne!15642 r!27340)))) b!2540713))

(declare-fun e!1606638 () Bool)

(assert (=> b!2539957 (= tp!811208 e!1606638)))

(declare-fun b!2540717 () Bool)

(declare-fun tp!811380 () Bool)

(declare-fun tp!811379 () Bool)

(assert (=> b!2540717 (= e!1606638 (and tp!811380 tp!811379))))

(declare-fun b!2540715 () Bool)

(declare-fun tp!811377 () Bool)

(declare-fun tp!811378 () Bool)

(assert (=> b!2540715 (= e!1606638 (and tp!811377 tp!811378))))

(declare-fun b!2540714 () Bool)

(assert (=> b!2540714 (= e!1606638 tp_is_empty!12985)))

(declare-fun b!2540716 () Bool)

(declare-fun tp!811381 () Bool)

(assert (=> b!2540716 (= e!1606638 tp!811381)))

(assert (= (and b!2539957 ((_ is ElementMatch!7565) (regOne!15643 (regOne!15642 r!27340)))) b!2540714))

(assert (= (and b!2539957 ((_ is Concat!12261) (regOne!15643 (regOne!15642 r!27340)))) b!2540715))

(assert (= (and b!2539957 ((_ is Star!7565) (regOne!15643 (regOne!15642 r!27340)))) b!2540716))

(assert (= (and b!2539957 ((_ is Union!7565) (regOne!15643 (regOne!15642 r!27340)))) b!2540717))

(declare-fun e!1606639 () Bool)

(assert (=> b!2539957 (= tp!811207 e!1606639)))

(declare-fun b!2540721 () Bool)

(declare-fun tp!811385 () Bool)

(declare-fun tp!811384 () Bool)

(assert (=> b!2540721 (= e!1606639 (and tp!811385 tp!811384))))

(declare-fun b!2540719 () Bool)

(declare-fun tp!811382 () Bool)

(declare-fun tp!811383 () Bool)

(assert (=> b!2540719 (= e!1606639 (and tp!811382 tp!811383))))

(declare-fun b!2540718 () Bool)

(assert (=> b!2540718 (= e!1606639 tp_is_empty!12985)))

(declare-fun b!2540720 () Bool)

(declare-fun tp!811386 () Bool)

(assert (=> b!2540720 (= e!1606639 tp!811386)))

(assert (= (and b!2539957 ((_ is ElementMatch!7565) (regTwo!15643 (regOne!15642 r!27340)))) b!2540718))

(assert (= (and b!2539957 ((_ is Concat!12261) (regTwo!15643 (regOne!15642 r!27340)))) b!2540719))

(assert (= (and b!2539957 ((_ is Star!7565) (regTwo!15643 (regOne!15642 r!27340)))) b!2540720))

(assert (= (and b!2539957 ((_ is Union!7565) (regTwo!15643 (regOne!15642 r!27340)))) b!2540721))

(declare-fun e!1606640 () Bool)

(assert (=> b!2539976 (= tp!811228 e!1606640)))

(declare-fun b!2540725 () Bool)

(declare-fun tp!811390 () Bool)

(declare-fun tp!811389 () Bool)

(assert (=> b!2540725 (= e!1606640 (and tp!811390 tp!811389))))

(declare-fun b!2540723 () Bool)

(declare-fun tp!811387 () Bool)

(declare-fun tp!811388 () Bool)

(assert (=> b!2540723 (= e!1606640 (and tp!811387 tp!811388))))

(declare-fun b!2540722 () Bool)

(assert (=> b!2540722 (= e!1606640 tp_is_empty!12985)))

(declare-fun b!2540724 () Bool)

(declare-fun tp!811391 () Bool)

(assert (=> b!2540724 (= e!1606640 tp!811391)))

(assert (= (and b!2539976 ((_ is ElementMatch!7565) (regOne!15642 (reg!7894 r!27340)))) b!2540722))

(assert (= (and b!2539976 ((_ is Concat!12261) (regOne!15642 (reg!7894 r!27340)))) b!2540723))

(assert (= (and b!2539976 ((_ is Star!7565) (regOne!15642 (reg!7894 r!27340)))) b!2540724))

(assert (= (and b!2539976 ((_ is Union!7565) (regOne!15642 (reg!7894 r!27340)))) b!2540725))

(declare-fun e!1606641 () Bool)

(assert (=> b!2539976 (= tp!811229 e!1606641)))

(declare-fun b!2540729 () Bool)

(declare-fun tp!811395 () Bool)

(declare-fun tp!811394 () Bool)

(assert (=> b!2540729 (= e!1606641 (and tp!811395 tp!811394))))

(declare-fun b!2540727 () Bool)

(declare-fun tp!811392 () Bool)

(declare-fun tp!811393 () Bool)

(assert (=> b!2540727 (= e!1606641 (and tp!811392 tp!811393))))

(declare-fun b!2540726 () Bool)

(assert (=> b!2540726 (= e!1606641 tp_is_empty!12985)))

(declare-fun b!2540728 () Bool)

(declare-fun tp!811396 () Bool)

(assert (=> b!2540728 (= e!1606641 tp!811396)))

(assert (= (and b!2539976 ((_ is ElementMatch!7565) (regTwo!15642 (reg!7894 r!27340)))) b!2540726))

(assert (= (and b!2539976 ((_ is Concat!12261) (regTwo!15642 (reg!7894 r!27340)))) b!2540727))

(assert (= (and b!2539976 ((_ is Star!7565) (regTwo!15642 (reg!7894 r!27340)))) b!2540728))

(assert (= (and b!2539976 ((_ is Union!7565) (regTwo!15642 (reg!7894 r!27340)))) b!2540729))

(check-sat (not bm!160548) (not b!2540578) (not d!721440) (not b!2540704) (not bm!160495) (not bm!160491) (not bm!160546) (not d!721464) (not b!2540584) (not b!2540259) (not b!2540518) (not bm!160545) (not b!2540582) (not d!721454) (not b!2540538) (not b!2540452) (not b!2540265) (not b!2540461) (not b!2540712) (not b!2540475) (not b!2540687) (not bm!160515) (not bm!160480) (not b!2540543) (not bm!160512) (not b!2540683) (not d!721360) (not b!2540611) (not b!2540536) (not b!2540561) (not bm!160452) (not d!721470) (not b!2540501) (not b!2540271) (not bm!160449) (not b!2540723) (not bm!160460) (not bm!160464) (not bm!160490) (not b!2540648) (not bm!160531) (not bm!160496) (not b!2540716) (not b!2540685) (not d!721404) (not bm!160492) (not b!2540689) (not b!2540668) (not d!721452) (not b!2540707) (not bm!160470) (not bm!160505) (not d!721342) (not d!721466) (not b!2540640) (not b!2540383) (not d!721448) (not bm!160539) (not bm!160517) (not b!2540717) (not b!2540258) (not bm!160511) (not b!2540699) (not b!2540420) (not bm!160570) (not bm!160453) (not d!721462) (not bm!160521) (not d!721396) (not b!2540697) (not b!2540679) (not bm!160543) (not b!2540655) (not bm!160487) (not b!2540213) (not bm!160567) (not b!2540404) (not d!721346) (not bm!160485) (not b!2540636) (not bm!160559) (not bm!160509) (not b!2540708) (not b!2540434) (not b!2540639) (not b!2540661) (not b!2540374) (not b!2540508) (not b!2540665) (not b!2540362) (not bm!160536) (not b!2540339) (not bm!160474) (not bm!160462) (not bm!160564) (not bm!160535) (not b!2540677) (not bm!160499) (not bm!160525) (not bm!160560) (not b!2540302) (not b!2540709) (not b!2540591) (not bm!160441) (not b!2540711) (not b!2540443) (not b!2540669) (not b!2540695) (not d!721450) (not bm!160518) (not bm!160482) (not b!2540727) (not b!2540675) (not b!2540719) (not b!2540425) (not bm!160459) (not b!2540632) (not b!2540539) (not bm!160561) (not b!2540597) (not b!2540256) (not b!2540680) (not d!721478) (not bm!160483) (not b!2540652) (not bm!160486) (not bm!160448) (not b!2540728) (not b!2540311) (not bm!160494) (not b!2540713) (not bm!160552) tp_is_empty!12985 (not b!2540330) (not d!721364) (not b!2540395) (not bm!160551) (not bm!160569) (not b!2540551) (not bm!160469) (not b!2540201) (not b!2540573) (not b!2540642) (not b!2540638) (not b!2540703) (not b!2540643) (not b!2540631) (not b!2540720) (not b!2540243) (not b!2540693) (not b!2540684) (not b!2540688) (not d!721332) (not b!2540348) (not b!2540325) (not d!721418) (not bm!160520) (not b!2540489) (not d!721386) (not b!2540589) (not bm!160514) (not d!721366) (not bm!160477) (not bm!160437) (not bm!160556) (not d!721446) (not d!721476) (not bm!160532) (not b!2540390) (not d!721380) (not b!2540208) (not b!2540657) (not b!2540721) (not bm!160443) (not b!2540630) (not b!2540725) (not bm!160506) (not b!2540701) (not bm!160572) (not b!2540691) (not b!2540651) (not d!721392) (not b!2540692) (not b!2540672) (not b!2540696) (not bm!160438) (not bm!160472) (not d!721468) (not b!2540660) (not d!721408) (not d!721422) (not b!2540659) (not bm!160455) (not d!721460) (not b!2540496) (not d!721472) (not b!2540645) (not bm!160454) (not b!2540620) (not bm!160530) (not bm!160458) (not b!2540566) (not d!721428) (not b!2540644) (not b!2540729) (not bm!160473) (not d!721406) (not bm!160502) (not bm!160450) (not b!2540635) (not bm!160524) (not bm!160555) (not b!2540545) (not b!2540480) (not b!2540724) (not b!2540667) (not bm!160566) (not d!721344) (not b!2540413) (not b!2540653) (not b!2540523) (not b!2540663) (not bm!160547) (not bm!160479) (not b!2540656) (not b!2540705) (not b!2540664) (not bm!160523) (not b!2540715) (not b!2540700) (not d!721456) (not d!721444) (not b!2540681) (not bm!160467) (not bm!160528) (not d!721420) (not d!721398) (not b!2540673) (not b!2540585) (not b!2540252) (not d!721436) (not bm!160504) (not d!721474) (not d!721434) (not b!2540283) (not b!2540676) (not b!2540602) (not b!2540297) (not b!2540649) (not b!2540532) (not bm!160463) (not bm!160501) (not bm!160540) (not b!2540647) (not b!2540671) (not b!2540634) (not b!2540263))
(check-sat)

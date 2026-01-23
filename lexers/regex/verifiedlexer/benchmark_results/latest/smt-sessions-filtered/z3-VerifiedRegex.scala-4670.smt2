; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243280 () Bool)

(assert start!243280)

(declare-fun b!2489696 () Bool)

(declare-fun e!1580633 () Bool)

(declare-datatypes ((C!14788 0))(
  ( (C!14789 (val!9046 Int)) )
))
(declare-datatypes ((Regex!7315 0))(
  ( (ElementMatch!7315 (c!395713 C!14788)) (Concat!12011 (regOne!15142 Regex!7315) (regTwo!15142 Regex!7315)) (EmptyExpr!7315) (Star!7315 (reg!7644 Regex!7315)) (EmptyLang!7315) (Union!7315 (regOne!15143 Regex!7315) (regTwo!15143 Regex!7315)) )
))
(declare-fun r!27340 () Regex!7315)

(declare-fun c!14016 () C!14788)

(declare-fun validRegex!2941 (Regex!7315) Bool)

(declare-fun derivativeStep!1884 (Regex!7315 C!14788) Regex!7315)

(assert (=> b!2489696 (= e!1580633 (not (validRegex!2941 (derivativeStep!1884 r!27340 c!14016))))))

(declare-fun b!2489697 () Bool)

(declare-fun e!1580634 () Bool)

(declare-fun tp_is_empty!12485 () Bool)

(assert (=> b!2489697 (= e!1580634 tp_is_empty!12485)))

(declare-fun b!2489698 () Bool)

(declare-fun tp!797063 () Bool)

(assert (=> b!2489698 (= e!1580634 tp!797063)))

(declare-fun b!2489699 () Bool)

(declare-fun tp!797060 () Bool)

(declare-fun tp!797062 () Bool)

(assert (=> b!2489699 (= e!1580634 (and tp!797060 tp!797062))))

(declare-fun b!2489700 () Bool)

(declare-fun tp!797064 () Bool)

(declare-fun tp!797061 () Bool)

(assert (=> b!2489700 (= e!1580634 (and tp!797064 tp!797061))))

(declare-fun res!1053736 () Bool)

(assert (=> start!243280 (=> (not res!1053736) (not e!1580633))))

(assert (=> start!243280 (= res!1053736 (validRegex!2941 r!27340))))

(assert (=> start!243280 e!1580633))

(assert (=> start!243280 e!1580634))

(assert (=> start!243280 tp_is_empty!12485))

(assert (= (and start!243280 res!1053736) b!2489696))

(get-info :version)

(assert (= (and start!243280 ((_ is ElementMatch!7315) r!27340)) b!2489697))

(assert (= (and start!243280 ((_ is Concat!12011) r!27340)) b!2489700))

(assert (= (and start!243280 ((_ is Star!7315) r!27340)) b!2489698))

(assert (= (and start!243280 ((_ is Union!7315) r!27340)) b!2489699))

(declare-fun m!2857567 () Bool)

(assert (=> b!2489696 m!2857567))

(assert (=> b!2489696 m!2857567))

(declare-fun m!2857569 () Bool)

(assert (=> b!2489696 m!2857569))

(declare-fun m!2857571 () Bool)

(assert (=> start!243280 m!2857571))

(check-sat tp_is_empty!12485 (not b!2489698) (not b!2489700) (not b!2489696) (not b!2489699) (not start!243280))
(check-sat)
(get-model)

(declare-fun b!2489746 () Bool)

(declare-fun e!1580672 () Bool)

(declare-fun call!152896 () Bool)

(assert (=> b!2489746 (= e!1580672 call!152896)))

(declare-fun d!714307 () Bool)

(declare-fun res!1053764 () Bool)

(declare-fun e!1580673 () Bool)

(assert (=> d!714307 (=> res!1053764 e!1580673)))

(assert (=> d!714307 (= res!1053764 ((_ is ElementMatch!7315) (derivativeStep!1884 r!27340 c!14016)))))

(assert (=> d!714307 (= (validRegex!2941 (derivativeStep!1884 r!27340 c!14016)) e!1580673)))

(declare-fun b!2489747 () Bool)

(declare-fun e!1580675 () Bool)

(assert (=> b!2489747 (= e!1580673 e!1580675)))

(declare-fun c!395724 () Bool)

(assert (=> b!2489747 (= c!395724 ((_ is Star!7315) (derivativeStep!1884 r!27340 c!14016)))))

(declare-fun c!395725 () Bool)

(declare-fun bm!152890 () Bool)

(assert (=> bm!152890 (= call!152896 (validRegex!2941 (ite c!395725 (regOne!15143 (derivativeStep!1884 r!27340 c!14016)) (regTwo!15142 (derivativeStep!1884 r!27340 c!14016)))))))

(declare-fun b!2489748 () Bool)

(declare-fun res!1053765 () Bool)

(declare-fun e!1580671 () Bool)

(assert (=> b!2489748 (=> res!1053765 e!1580671)))

(assert (=> b!2489748 (= res!1053765 (not ((_ is Concat!12011) (derivativeStep!1884 r!27340 c!14016))))))

(declare-fun e!1580670 () Bool)

(assert (=> b!2489748 (= e!1580670 e!1580671)))

(declare-fun b!2489749 () Bool)

(assert (=> b!2489749 (= e!1580671 e!1580672)))

(declare-fun res!1053763 () Bool)

(assert (=> b!2489749 (=> (not res!1053763) (not e!1580672))))

(declare-fun call!152897 () Bool)

(assert (=> b!2489749 (= res!1053763 call!152897)))

(declare-fun b!2489750 () Bool)

(assert (=> b!2489750 (= e!1580675 e!1580670)))

(assert (=> b!2489750 (= c!395725 ((_ is Union!7315) (derivativeStep!1884 r!27340 c!14016)))))

(declare-fun b!2489751 () Bool)

(declare-fun e!1580676 () Bool)

(assert (=> b!2489751 (= e!1580676 call!152897)))

(declare-fun bm!152891 () Bool)

(declare-fun call!152895 () Bool)

(assert (=> bm!152891 (= call!152897 call!152895)))

(declare-fun b!2489752 () Bool)

(declare-fun e!1580674 () Bool)

(assert (=> b!2489752 (= e!1580675 e!1580674)))

(declare-fun res!1053766 () Bool)

(declare-fun nullable!2231 (Regex!7315) Bool)

(assert (=> b!2489752 (= res!1053766 (not (nullable!2231 (reg!7644 (derivativeStep!1884 r!27340 c!14016)))))))

(assert (=> b!2489752 (=> (not res!1053766) (not e!1580674))))

(declare-fun b!2489753 () Bool)

(declare-fun res!1053762 () Bool)

(assert (=> b!2489753 (=> (not res!1053762) (not e!1580676))))

(assert (=> b!2489753 (= res!1053762 call!152896)))

(assert (=> b!2489753 (= e!1580670 e!1580676)))

(declare-fun b!2489754 () Bool)

(assert (=> b!2489754 (= e!1580674 call!152895)))

(declare-fun bm!152892 () Bool)

(assert (=> bm!152892 (= call!152895 (validRegex!2941 (ite c!395724 (reg!7644 (derivativeStep!1884 r!27340 c!14016)) (ite c!395725 (regTwo!15143 (derivativeStep!1884 r!27340 c!14016)) (regOne!15142 (derivativeStep!1884 r!27340 c!14016))))))))

(assert (= (and d!714307 (not res!1053764)) b!2489747))

(assert (= (and b!2489747 c!395724) b!2489752))

(assert (= (and b!2489747 (not c!395724)) b!2489750))

(assert (= (and b!2489752 res!1053766) b!2489754))

(assert (= (and b!2489750 c!395725) b!2489753))

(assert (= (and b!2489750 (not c!395725)) b!2489748))

(assert (= (and b!2489753 res!1053762) b!2489751))

(assert (= (and b!2489748 (not res!1053765)) b!2489749))

(assert (= (and b!2489749 res!1053763) b!2489746))

(assert (= (or b!2489753 b!2489746) bm!152890))

(assert (= (or b!2489751 b!2489749) bm!152891))

(assert (= (or b!2489754 bm!152891) bm!152892))

(declare-fun m!2857579 () Bool)

(assert (=> bm!152890 m!2857579))

(declare-fun m!2857581 () Bool)

(assert (=> b!2489752 m!2857581))

(declare-fun m!2857583 () Bool)

(assert (=> bm!152892 m!2857583))

(assert (=> b!2489696 d!714307))

(declare-fun b!2489804 () Bool)

(declare-fun c!395751 () Bool)

(assert (=> b!2489804 (= c!395751 ((_ is Union!7315) r!27340))))

(declare-fun e!1580706 () Regex!7315)

(declare-fun e!1580708 () Regex!7315)

(assert (=> b!2489804 (= e!1580706 e!1580708)))

(declare-fun b!2489805 () Bool)

(assert (=> b!2489805 (= e!1580706 (ite (= c!14016 (c!395713 r!27340)) EmptyExpr!7315 EmptyLang!7315))))

(declare-fun call!152918 () Regex!7315)

(declare-fun bm!152912 () Bool)

(assert (=> bm!152912 (= call!152918 (derivativeStep!1884 (ite c!395751 (regOne!15143 r!27340) (regTwo!15142 r!27340)) c!14016))))

(declare-fun b!2489806 () Bool)

(declare-fun e!1580707 () Regex!7315)

(declare-fun call!152920 () Regex!7315)

(assert (=> b!2489806 (= e!1580707 (Union!7315 (Concat!12011 call!152920 (regTwo!15142 r!27340)) EmptyLang!7315))))

(declare-fun d!714313 () Bool)

(declare-fun lt!893837 () Regex!7315)

(assert (=> d!714313 (validRegex!2941 lt!893837)))

(declare-fun e!1580705 () Regex!7315)

(assert (=> d!714313 (= lt!893837 e!1580705)))

(declare-fun c!395752 () Bool)

(assert (=> d!714313 (= c!395752 (or ((_ is EmptyExpr!7315) r!27340) ((_ is EmptyLang!7315) r!27340)))))

(assert (=> d!714313 (validRegex!2941 r!27340)))

(assert (=> d!714313 (= (derivativeStep!1884 r!27340 c!14016) lt!893837)))

(declare-fun b!2489807 () Bool)

(declare-fun e!1580704 () Regex!7315)

(declare-fun call!152917 () Regex!7315)

(assert (=> b!2489807 (= e!1580704 (Concat!12011 call!152917 r!27340))))

(declare-fun b!2489808 () Bool)

(assert (=> b!2489808 (= e!1580705 EmptyLang!7315)))

(declare-fun bm!152913 () Bool)

(assert (=> bm!152913 (= call!152920 call!152917)))

(declare-fun b!2489809 () Bool)

(declare-fun call!152919 () Regex!7315)

(assert (=> b!2489809 (= e!1580708 (Union!7315 call!152918 call!152919))))

(declare-fun c!395749 () Bool)

(declare-fun bm!152914 () Bool)

(assert (=> bm!152914 (= call!152919 (derivativeStep!1884 (ite c!395751 (regTwo!15143 r!27340) (ite c!395749 (reg!7644 r!27340) (regOne!15142 r!27340))) c!14016))))

(declare-fun bm!152915 () Bool)

(assert (=> bm!152915 (= call!152917 call!152919)))

(declare-fun b!2489810 () Bool)

(assert (=> b!2489810 (= e!1580707 (Union!7315 (Concat!12011 call!152920 (regTwo!15142 r!27340)) call!152918))))

(declare-fun b!2489811 () Bool)

(declare-fun c!395748 () Bool)

(assert (=> b!2489811 (= c!395748 (nullable!2231 (regOne!15142 r!27340)))))

(assert (=> b!2489811 (= e!1580704 e!1580707)))

(declare-fun b!2489812 () Bool)

(assert (=> b!2489812 (= e!1580708 e!1580704)))

(assert (=> b!2489812 (= c!395749 ((_ is Star!7315) r!27340))))

(declare-fun b!2489813 () Bool)

(assert (=> b!2489813 (= e!1580705 e!1580706)))

(declare-fun c!395750 () Bool)

(assert (=> b!2489813 (= c!395750 ((_ is ElementMatch!7315) r!27340))))

(assert (= (and d!714313 c!395752) b!2489808))

(assert (= (and d!714313 (not c!395752)) b!2489813))

(assert (= (and b!2489813 c!395750) b!2489805))

(assert (= (and b!2489813 (not c!395750)) b!2489804))

(assert (= (and b!2489804 c!395751) b!2489809))

(assert (= (and b!2489804 (not c!395751)) b!2489812))

(assert (= (and b!2489812 c!395749) b!2489807))

(assert (= (and b!2489812 (not c!395749)) b!2489811))

(assert (= (and b!2489811 c!395748) b!2489810))

(assert (= (and b!2489811 (not c!395748)) b!2489806))

(assert (= (or b!2489810 b!2489806) bm!152913))

(assert (= (or b!2489807 bm!152913) bm!152915))

(assert (= (or b!2489809 bm!152915) bm!152914))

(assert (= (or b!2489809 b!2489810) bm!152912))

(declare-fun m!2857591 () Bool)

(assert (=> bm!152912 m!2857591))

(declare-fun m!2857593 () Bool)

(assert (=> d!714313 m!2857593))

(assert (=> d!714313 m!2857571))

(declare-fun m!2857595 () Bool)

(assert (=> bm!152914 m!2857595))

(declare-fun m!2857597 () Bool)

(assert (=> b!2489811 m!2857597))

(assert (=> b!2489696 d!714313))

(declare-fun b!2489824 () Bool)

(declare-fun e!1580716 () Bool)

(declare-fun call!152926 () Bool)

(assert (=> b!2489824 (= e!1580716 call!152926)))

(declare-fun d!714317 () Bool)

(declare-fun res!1053774 () Bool)

(declare-fun e!1580717 () Bool)

(assert (=> d!714317 (=> res!1053774 e!1580717)))

(assert (=> d!714317 (= res!1053774 ((_ is ElementMatch!7315) r!27340))))

(assert (=> d!714317 (= (validRegex!2941 r!27340) e!1580717)))

(declare-fun b!2489825 () Bool)

(declare-fun e!1580719 () Bool)

(assert (=> b!2489825 (= e!1580717 e!1580719)))

(declare-fun c!395758 () Bool)

(assert (=> b!2489825 (= c!395758 ((_ is Star!7315) r!27340))))

(declare-fun bm!152920 () Bool)

(declare-fun c!395759 () Bool)

(assert (=> bm!152920 (= call!152926 (validRegex!2941 (ite c!395759 (regOne!15143 r!27340) (regTwo!15142 r!27340))))))

(declare-fun b!2489826 () Bool)

(declare-fun res!1053775 () Bool)

(declare-fun e!1580715 () Bool)

(assert (=> b!2489826 (=> res!1053775 e!1580715)))

(assert (=> b!2489826 (= res!1053775 (not ((_ is Concat!12011) r!27340)))))

(declare-fun e!1580714 () Bool)

(assert (=> b!2489826 (= e!1580714 e!1580715)))

(declare-fun b!2489827 () Bool)

(assert (=> b!2489827 (= e!1580715 e!1580716)))

(declare-fun res!1053773 () Bool)

(assert (=> b!2489827 (=> (not res!1053773) (not e!1580716))))

(declare-fun call!152927 () Bool)

(assert (=> b!2489827 (= res!1053773 call!152927)))

(declare-fun b!2489828 () Bool)

(assert (=> b!2489828 (= e!1580719 e!1580714)))

(assert (=> b!2489828 (= c!395759 ((_ is Union!7315) r!27340))))

(declare-fun b!2489829 () Bool)

(declare-fun e!1580720 () Bool)

(assert (=> b!2489829 (= e!1580720 call!152927)))

(declare-fun bm!152921 () Bool)

(declare-fun call!152925 () Bool)

(assert (=> bm!152921 (= call!152927 call!152925)))

(declare-fun b!2489830 () Bool)

(declare-fun e!1580718 () Bool)

(assert (=> b!2489830 (= e!1580719 e!1580718)))

(declare-fun res!1053776 () Bool)

(assert (=> b!2489830 (= res!1053776 (not (nullable!2231 (reg!7644 r!27340))))))

(assert (=> b!2489830 (=> (not res!1053776) (not e!1580718))))

(declare-fun b!2489831 () Bool)

(declare-fun res!1053772 () Bool)

(assert (=> b!2489831 (=> (not res!1053772) (not e!1580720))))

(assert (=> b!2489831 (= res!1053772 call!152926)))

(assert (=> b!2489831 (= e!1580714 e!1580720)))

(declare-fun b!2489832 () Bool)

(assert (=> b!2489832 (= e!1580718 call!152925)))

(declare-fun bm!152922 () Bool)

(assert (=> bm!152922 (= call!152925 (validRegex!2941 (ite c!395758 (reg!7644 r!27340) (ite c!395759 (regTwo!15143 r!27340) (regOne!15142 r!27340)))))))

(assert (= (and d!714317 (not res!1053774)) b!2489825))

(assert (= (and b!2489825 c!395758) b!2489830))

(assert (= (and b!2489825 (not c!395758)) b!2489828))

(assert (= (and b!2489830 res!1053776) b!2489832))

(assert (= (and b!2489828 c!395759) b!2489831))

(assert (= (and b!2489828 (not c!395759)) b!2489826))

(assert (= (and b!2489831 res!1053772) b!2489829))

(assert (= (and b!2489826 (not res!1053775)) b!2489827))

(assert (= (and b!2489827 res!1053773) b!2489824))

(assert (= (or b!2489831 b!2489824) bm!152920))

(assert (= (or b!2489829 b!2489827) bm!152921))

(assert (= (or b!2489832 bm!152921) bm!152922))

(declare-fun m!2857607 () Bool)

(assert (=> bm!152920 m!2857607))

(declare-fun m!2857609 () Bool)

(assert (=> b!2489830 m!2857609))

(declare-fun m!2857611 () Bool)

(assert (=> bm!152922 m!2857611))

(assert (=> start!243280 d!714317))

(declare-fun b!2489857 () Bool)

(declare-fun e!1580726 () Bool)

(assert (=> b!2489857 (= e!1580726 tp_is_empty!12485)))

(assert (=> b!2489699 (= tp!797060 e!1580726)))

(declare-fun b!2489859 () Bool)

(declare-fun tp!797091 () Bool)

(assert (=> b!2489859 (= e!1580726 tp!797091)))

(declare-fun b!2489860 () Bool)

(declare-fun tp!797094 () Bool)

(declare-fun tp!797093 () Bool)

(assert (=> b!2489860 (= e!1580726 (and tp!797094 tp!797093))))

(declare-fun b!2489858 () Bool)

(declare-fun tp!797092 () Bool)

(declare-fun tp!797090 () Bool)

(assert (=> b!2489858 (= e!1580726 (and tp!797092 tp!797090))))

(assert (= (and b!2489699 ((_ is ElementMatch!7315) (regOne!15143 r!27340))) b!2489857))

(assert (= (and b!2489699 ((_ is Concat!12011) (regOne!15143 r!27340))) b!2489858))

(assert (= (and b!2489699 ((_ is Star!7315) (regOne!15143 r!27340))) b!2489859))

(assert (= (and b!2489699 ((_ is Union!7315) (regOne!15143 r!27340))) b!2489860))

(declare-fun b!2489865 () Bool)

(declare-fun e!1580728 () Bool)

(assert (=> b!2489865 (= e!1580728 tp_is_empty!12485)))

(assert (=> b!2489699 (= tp!797062 e!1580728)))

(declare-fun b!2489867 () Bool)

(declare-fun tp!797101 () Bool)

(assert (=> b!2489867 (= e!1580728 tp!797101)))

(declare-fun b!2489868 () Bool)

(declare-fun tp!797105 () Bool)

(declare-fun tp!797104 () Bool)

(assert (=> b!2489868 (= e!1580728 (and tp!797105 tp!797104))))

(declare-fun b!2489866 () Bool)

(declare-fun tp!797102 () Bool)

(declare-fun tp!797100 () Bool)

(assert (=> b!2489866 (= e!1580728 (and tp!797102 tp!797100))))

(assert (= (and b!2489699 ((_ is ElementMatch!7315) (regTwo!15143 r!27340))) b!2489865))

(assert (= (and b!2489699 ((_ is Concat!12011) (regTwo!15143 r!27340))) b!2489866))

(assert (= (and b!2489699 ((_ is Star!7315) (regTwo!15143 r!27340))) b!2489867))

(assert (= (and b!2489699 ((_ is Union!7315) (regTwo!15143 r!27340))) b!2489868))

(declare-fun b!2489877 () Bool)

(declare-fun e!1580731 () Bool)

(assert (=> b!2489877 (= e!1580731 tp_is_empty!12485)))

(assert (=> b!2489700 (= tp!797064 e!1580731)))

(declare-fun b!2489879 () Bool)

(declare-fun tp!797116 () Bool)

(assert (=> b!2489879 (= e!1580731 tp!797116)))

(declare-fun b!2489880 () Bool)

(declare-fun tp!797119 () Bool)

(declare-fun tp!797118 () Bool)

(assert (=> b!2489880 (= e!1580731 (and tp!797119 tp!797118))))

(declare-fun b!2489878 () Bool)

(declare-fun tp!797117 () Bool)

(declare-fun tp!797115 () Bool)

(assert (=> b!2489878 (= e!1580731 (and tp!797117 tp!797115))))

(assert (= (and b!2489700 ((_ is ElementMatch!7315) (regOne!15142 r!27340))) b!2489877))

(assert (= (and b!2489700 ((_ is Concat!12011) (regOne!15142 r!27340))) b!2489878))

(assert (= (and b!2489700 ((_ is Star!7315) (regOne!15142 r!27340))) b!2489879))

(assert (= (and b!2489700 ((_ is Union!7315) (regOne!15142 r!27340))) b!2489880))

(declare-fun b!2489881 () Bool)

(declare-fun e!1580732 () Bool)

(assert (=> b!2489881 (= e!1580732 tp_is_empty!12485)))

(assert (=> b!2489700 (= tp!797061 e!1580732)))

(declare-fun b!2489883 () Bool)

(declare-fun tp!797121 () Bool)

(assert (=> b!2489883 (= e!1580732 tp!797121)))

(declare-fun b!2489884 () Bool)

(declare-fun tp!797125 () Bool)

(declare-fun tp!797123 () Bool)

(assert (=> b!2489884 (= e!1580732 (and tp!797125 tp!797123))))

(declare-fun b!2489882 () Bool)

(declare-fun tp!797122 () Bool)

(declare-fun tp!797120 () Bool)

(assert (=> b!2489882 (= e!1580732 (and tp!797122 tp!797120))))

(assert (= (and b!2489700 ((_ is ElementMatch!7315) (regTwo!15142 r!27340))) b!2489881))

(assert (= (and b!2489700 ((_ is Concat!12011) (regTwo!15142 r!27340))) b!2489882))

(assert (= (and b!2489700 ((_ is Star!7315) (regTwo!15142 r!27340))) b!2489883))

(assert (= (and b!2489700 ((_ is Union!7315) (regTwo!15142 r!27340))) b!2489884))

(declare-fun b!2489889 () Bool)

(declare-fun e!1580734 () Bool)

(assert (=> b!2489889 (= e!1580734 tp_is_empty!12485)))

(assert (=> b!2489698 (= tp!797063 e!1580734)))

(declare-fun b!2489891 () Bool)

(declare-fun tp!797131 () Bool)

(assert (=> b!2489891 (= e!1580734 tp!797131)))

(declare-fun b!2489892 () Bool)

(declare-fun tp!797134 () Bool)

(declare-fun tp!797133 () Bool)

(assert (=> b!2489892 (= e!1580734 (and tp!797134 tp!797133))))

(declare-fun b!2489890 () Bool)

(declare-fun tp!797132 () Bool)

(declare-fun tp!797130 () Bool)

(assert (=> b!2489890 (= e!1580734 (and tp!797132 tp!797130))))

(assert (= (and b!2489698 ((_ is ElementMatch!7315) (reg!7644 r!27340))) b!2489889))

(assert (= (and b!2489698 ((_ is Concat!12011) (reg!7644 r!27340))) b!2489890))

(assert (= (and b!2489698 ((_ is Star!7315) (reg!7644 r!27340))) b!2489891))

(assert (= (and b!2489698 ((_ is Union!7315) (reg!7644 r!27340))) b!2489892))

(check-sat (not b!2489752) (not bm!152892) (not b!2489891) (not b!2489890) (not b!2489892) (not b!2489879) (not b!2489858) (not b!2489860) (not bm!152914) tp_is_empty!12485 (not b!2489867) (not b!2489859) (not b!2489882) (not b!2489811) (not bm!152922) (not b!2489880) (not d!714313) (not b!2489883) (not bm!152912) (not b!2489866) (not b!2489868) (not b!2489878) (not bm!152890) (not b!2489884) (not bm!152920) (not b!2489830))
(check-sat)

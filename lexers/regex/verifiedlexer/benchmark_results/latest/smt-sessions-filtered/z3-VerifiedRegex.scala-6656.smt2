; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350030 () Bool)

(assert start!350030)

(declare-fun b!3713806 () Bool)

(declare-fun e!2299720 () Bool)

(declare-fun tp!1130280 () Bool)

(assert (=> b!3713806 (= e!2299720 tp!1130280)))

(declare-fun b!3713807 () Bool)

(declare-fun e!2299719 () Bool)

(declare-datatypes ((C!21888 0))(
  ( (C!21889 (val!12992 Int)) )
))
(declare-datatypes ((Regex!10851 0))(
  ( (ElementMatch!10851 (c!641725 C!21888)) (Concat!17122 (regOne!22214 Regex!10851) (regTwo!22214 Regex!10851)) (EmptyExpr!10851) (Star!10851 (reg!11180 Regex!10851)) (EmptyLang!10851) (Union!10851 (regOne!22215 Regex!10851) (regTwo!22215 Regex!10851)) )
))
(declare-fun r!26326 () Regex!10851)

(declare-fun c!13576 () C!21888)

(declare-datatypes ((List!39732 0))(
  ( (Nil!39608) (Cons!39608 (h!45028 C!21888) (t!302415 List!39732)) )
))
(declare-fun contains!7944 (List!39732 C!21888) Bool)

(declare-fun usedCharacters!1114 (Regex!10851) List!39732)

(assert (=> b!3713807 (= e!2299719 (not (contains!7944 (usedCharacters!1114 r!26326) c!13576)))))

(assert (=> b!3713807 (contains!7944 (usedCharacters!1114 (reg!11180 r!26326)) c!13576)))

(declare-fun tl!3933 () List!39732)

(declare-datatypes ((Unit!57500 0))(
  ( (Unit!57501) )
))
(declare-fun lt!1297032 () Unit!57500)

(declare-fun lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!8 (Regex!10851 C!21888 List!39732) Unit!57500)

(assert (=> b!3713807 (= lt!1297032 (lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!8 (reg!11180 r!26326) c!13576 tl!3933))))

(declare-fun b!3713808 () Bool)

(declare-fun res!1509831 () Bool)

(assert (=> b!3713808 (=> (not res!1509831) (not e!2299719))))

(declare-fun validRegex!4958 (Regex!10851) Bool)

(assert (=> b!3713808 (= res!1509831 (validRegex!4958 (reg!11180 r!26326)))))

(declare-fun b!3713809 () Bool)

(declare-fun res!1509833 () Bool)

(assert (=> b!3713809 (=> (not res!1509833) (not e!2299719))))

(declare-fun lt!1297030 () Regex!10851)

(declare-fun nullable!3774 (Regex!10851) Bool)

(declare-fun derivative!365 (Regex!10851 List!39732) Regex!10851)

(assert (=> b!3713809 (= res!1509833 (nullable!3774 (derivative!365 lt!1297030 tl!3933)))))

(declare-fun b!3713810 () Bool)

(declare-fun tp_is_empty!18717 () Bool)

(assert (=> b!3713810 (= e!2299720 tp_is_empty!18717)))

(declare-fun b!3713811 () Bool)

(declare-fun tp!1130281 () Bool)

(declare-fun tp!1130279 () Bool)

(assert (=> b!3713811 (= e!2299720 (and tp!1130281 tp!1130279))))

(declare-fun b!3713812 () Bool)

(declare-fun e!2299716 () Bool)

(declare-fun e!2299718 () Bool)

(assert (=> b!3713812 (= e!2299716 e!2299718)))

(declare-fun res!1509834 () Bool)

(assert (=> b!3713812 (=> (not res!1509834) (not e!2299718))))

(declare-fun lt!1297031 () Regex!10851)

(assert (=> b!3713812 (= res!1509834 (nullable!3774 (derivative!365 lt!1297031 tl!3933)))))

(declare-fun derivativeStep!3316 (Regex!10851 C!21888) Regex!10851)

(assert (=> b!3713812 (= lt!1297031 (derivativeStep!3316 r!26326 c!13576))))

(declare-fun b!3713813 () Bool)

(declare-fun tp!1130284 () Bool)

(declare-fun tp!1130283 () Bool)

(assert (=> b!3713813 (= e!2299720 (and tp!1130284 tp!1130283))))

(declare-fun b!3713815 () Bool)

(declare-fun res!1509836 () Bool)

(assert (=> b!3713815 (=> (not res!1509836) (not e!2299718))))

(get-info :version)

(assert (=> b!3713815 (= res!1509836 (and (not ((_ is EmptyExpr!10851) r!26326)) (not ((_ is EmptyLang!10851) r!26326)) (not ((_ is ElementMatch!10851) r!26326)) (not ((_ is Union!10851) r!26326)) ((_ is Star!10851) r!26326)))))

(declare-fun b!3713816 () Bool)

(assert (=> b!3713816 (= e!2299718 e!2299719)))

(declare-fun res!1509832 () Bool)

(assert (=> b!3713816 (=> (not res!1509832) (not e!2299719))))

(assert (=> b!3713816 (= res!1509832 (= lt!1297031 (Concat!17122 lt!1297030 (Star!10851 (reg!11180 r!26326)))))))

(assert (=> b!3713816 (= lt!1297030 (derivativeStep!3316 (reg!11180 r!26326) c!13576))))

(declare-fun res!1509835 () Bool)

(assert (=> start!350030 (=> (not res!1509835) (not e!2299716))))

(assert (=> start!350030 (= res!1509835 (validRegex!4958 r!26326))))

(assert (=> start!350030 e!2299716))

(assert (=> start!350030 e!2299720))

(assert (=> start!350030 tp_is_empty!18717))

(declare-fun e!2299717 () Bool)

(assert (=> start!350030 e!2299717))

(declare-fun b!3713814 () Bool)

(declare-fun tp!1130282 () Bool)

(assert (=> b!3713814 (= e!2299717 (and tp_is_empty!18717 tp!1130282))))

(assert (= (and start!350030 res!1509835) b!3713812))

(assert (= (and b!3713812 res!1509834) b!3713815))

(assert (= (and b!3713815 res!1509836) b!3713816))

(assert (= (and b!3713816 res!1509832) b!3713809))

(assert (= (and b!3713809 res!1509833) b!3713808))

(assert (= (and b!3713808 res!1509831) b!3713807))

(assert (= (and start!350030 ((_ is ElementMatch!10851) r!26326)) b!3713810))

(assert (= (and start!350030 ((_ is Concat!17122) r!26326)) b!3713811))

(assert (= (and start!350030 ((_ is Star!10851) r!26326)) b!3713806))

(assert (= (and start!350030 ((_ is Union!10851) r!26326)) b!3713813))

(assert (= (and start!350030 ((_ is Cons!39608) tl!3933)) b!3713814))

(declare-fun m!4220115 () Bool)

(assert (=> b!3713807 m!4220115))

(declare-fun m!4220117 () Bool)

(assert (=> b!3713807 m!4220117))

(declare-fun m!4220119 () Bool)

(assert (=> b!3713807 m!4220119))

(assert (=> b!3713807 m!4220117))

(declare-fun m!4220121 () Bool)

(assert (=> b!3713807 m!4220121))

(assert (=> b!3713807 m!4220119))

(declare-fun m!4220123 () Bool)

(assert (=> b!3713807 m!4220123))

(declare-fun m!4220125 () Bool)

(assert (=> b!3713809 m!4220125))

(assert (=> b!3713809 m!4220125))

(declare-fun m!4220127 () Bool)

(assert (=> b!3713809 m!4220127))

(declare-fun m!4220129 () Bool)

(assert (=> start!350030 m!4220129))

(declare-fun m!4220131 () Bool)

(assert (=> b!3713812 m!4220131))

(assert (=> b!3713812 m!4220131))

(declare-fun m!4220133 () Bool)

(assert (=> b!3713812 m!4220133))

(declare-fun m!4220135 () Bool)

(assert (=> b!3713812 m!4220135))

(declare-fun m!4220137 () Bool)

(assert (=> b!3713808 m!4220137))

(declare-fun m!4220139 () Bool)

(assert (=> b!3713816 m!4220139))

(check-sat (not b!3713811) (not start!350030) (not b!3713816) tp_is_empty!18717 (not b!3713807) (not b!3713814) (not b!3713809) (not b!3713808) (not b!3713812) (not b!3713806) (not b!3713813))
(check-sat)
(get-model)

(declare-fun d!1087599 () Bool)

(assert (=> d!1087599 (contains!7944 (usedCharacters!1114 (reg!11180 r!26326)) c!13576)))

(declare-fun lt!1297035 () Unit!57500)

(declare-fun choose!22177 (Regex!10851 C!21888 List!39732) Unit!57500)

(assert (=> d!1087599 (= lt!1297035 (choose!22177 (reg!11180 r!26326) c!13576 tl!3933))))

(assert (=> d!1087599 (validRegex!4958 (reg!11180 r!26326))))

(assert (=> d!1087599 (= (lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!8 (reg!11180 r!26326) c!13576 tl!3933) lt!1297035)))

(declare-fun bs!574788 () Bool)

(assert (= bs!574788 d!1087599))

(assert (=> bs!574788 m!4220117))

(assert (=> bs!574788 m!4220117))

(assert (=> bs!574788 m!4220121))

(declare-fun m!4220141 () Bool)

(assert (=> bs!574788 m!4220141))

(assert (=> bs!574788 m!4220137))

(assert (=> b!3713807 d!1087599))

(declare-fun b!3713849 () Bool)

(declare-fun e!2299740 () List!39732)

(assert (=> b!3713849 (= e!2299740 (Cons!39608 (c!641725 r!26326) Nil!39608))))

(declare-fun b!3713850 () Bool)

(declare-fun e!2299738 () List!39732)

(declare-fun call!269015 () List!39732)

(assert (=> b!3713850 (= e!2299738 call!269015)))

(declare-fun bm!269010 () Bool)

(declare-fun call!269017 () List!39732)

(assert (=> bm!269010 (= call!269017 call!269015)))

(declare-fun b!3713851 () Bool)

(declare-fun e!2299737 () List!39732)

(assert (=> b!3713851 (= e!2299737 e!2299740)))

(declare-fun c!641746 () Bool)

(assert (=> b!3713851 (= c!641746 ((_ is ElementMatch!10851) r!26326))))

(declare-fun b!3713852 () Bool)

(assert (=> b!3713852 (= e!2299737 Nil!39608)))

(declare-fun bm!269011 () Bool)

(declare-fun call!269016 () List!39732)

(declare-fun call!269018 () List!39732)

(declare-fun ++!9796 (List!39732 List!39732) List!39732)

(assert (=> bm!269011 (= call!269016 (++!9796 call!269017 call!269018))))

(declare-fun d!1087603 () Bool)

(declare-fun c!641744 () Bool)

(assert (=> d!1087603 (= c!641744 (or ((_ is EmptyExpr!10851) r!26326) ((_ is EmptyLang!10851) r!26326)))))

(assert (=> d!1087603 (= (usedCharacters!1114 r!26326) e!2299737)))

(declare-fun b!3713853 () Bool)

(declare-fun c!641747 () Bool)

(assert (=> b!3713853 (= c!641747 ((_ is Star!10851) r!26326))))

(assert (=> b!3713853 (= e!2299740 e!2299738)))

(declare-fun bm!269012 () Bool)

(declare-fun c!641745 () Bool)

(assert (=> bm!269012 (= call!269018 (usedCharacters!1114 (ite c!641745 (regTwo!22215 r!26326) (regTwo!22214 r!26326))))))

(declare-fun b!3713854 () Bool)

(declare-fun e!2299739 () List!39732)

(assert (=> b!3713854 (= e!2299739 call!269016)))

(declare-fun bm!269013 () Bool)

(assert (=> bm!269013 (= call!269015 (usedCharacters!1114 (ite c!641747 (reg!11180 r!26326) (ite c!641745 (regOne!22215 r!26326) (regOne!22214 r!26326)))))))

(declare-fun b!3713855 () Bool)

(assert (=> b!3713855 (= e!2299738 e!2299739)))

(assert (=> b!3713855 (= c!641745 ((_ is Union!10851) r!26326))))

(declare-fun b!3713856 () Bool)

(assert (=> b!3713856 (= e!2299739 call!269016)))

(assert (= (and d!1087603 c!641744) b!3713852))

(assert (= (and d!1087603 (not c!641744)) b!3713851))

(assert (= (and b!3713851 c!641746) b!3713849))

(assert (= (and b!3713851 (not c!641746)) b!3713853))

(assert (= (and b!3713853 c!641747) b!3713850))

(assert (= (and b!3713853 (not c!641747)) b!3713855))

(assert (= (and b!3713855 c!641745) b!3713854))

(assert (= (and b!3713855 (not c!641745)) b!3713856))

(assert (= (or b!3713854 b!3713856) bm!269010))

(assert (= (or b!3713854 b!3713856) bm!269012))

(assert (= (or b!3713854 b!3713856) bm!269011))

(assert (= (or b!3713850 bm!269010) bm!269013))

(declare-fun m!4220145 () Bool)

(assert (=> bm!269011 m!4220145))

(declare-fun m!4220147 () Bool)

(assert (=> bm!269012 m!4220147))

(declare-fun m!4220149 () Bool)

(assert (=> bm!269013 m!4220149))

(assert (=> b!3713807 d!1087603))

(declare-fun b!3713857 () Bool)

(declare-fun e!2299744 () List!39732)

(assert (=> b!3713857 (= e!2299744 (Cons!39608 (c!641725 (reg!11180 r!26326)) Nil!39608))))

(declare-fun b!3713858 () Bool)

(declare-fun e!2299742 () List!39732)

(declare-fun call!269019 () List!39732)

(assert (=> b!3713858 (= e!2299742 call!269019)))

(declare-fun bm!269014 () Bool)

(declare-fun call!269021 () List!39732)

(assert (=> bm!269014 (= call!269021 call!269019)))

(declare-fun b!3713859 () Bool)

(declare-fun e!2299741 () List!39732)

(assert (=> b!3713859 (= e!2299741 e!2299744)))

(declare-fun c!641750 () Bool)

(assert (=> b!3713859 (= c!641750 ((_ is ElementMatch!10851) (reg!11180 r!26326)))))

(declare-fun b!3713860 () Bool)

(assert (=> b!3713860 (= e!2299741 Nil!39608)))

(declare-fun bm!269015 () Bool)

(declare-fun call!269020 () List!39732)

(declare-fun call!269022 () List!39732)

(assert (=> bm!269015 (= call!269020 (++!9796 call!269021 call!269022))))

(declare-fun d!1087607 () Bool)

(declare-fun c!641748 () Bool)

(assert (=> d!1087607 (= c!641748 (or ((_ is EmptyExpr!10851) (reg!11180 r!26326)) ((_ is EmptyLang!10851) (reg!11180 r!26326))))))

(assert (=> d!1087607 (= (usedCharacters!1114 (reg!11180 r!26326)) e!2299741)))

(declare-fun b!3713861 () Bool)

(declare-fun c!641751 () Bool)

(assert (=> b!3713861 (= c!641751 ((_ is Star!10851) (reg!11180 r!26326)))))

(assert (=> b!3713861 (= e!2299744 e!2299742)))

(declare-fun bm!269016 () Bool)

(declare-fun c!641749 () Bool)

(assert (=> bm!269016 (= call!269022 (usedCharacters!1114 (ite c!641749 (regTwo!22215 (reg!11180 r!26326)) (regTwo!22214 (reg!11180 r!26326)))))))

(declare-fun b!3713862 () Bool)

(declare-fun e!2299743 () List!39732)

(assert (=> b!3713862 (= e!2299743 call!269020)))

(declare-fun bm!269017 () Bool)

(assert (=> bm!269017 (= call!269019 (usedCharacters!1114 (ite c!641751 (reg!11180 (reg!11180 r!26326)) (ite c!641749 (regOne!22215 (reg!11180 r!26326)) (regOne!22214 (reg!11180 r!26326))))))))

(declare-fun b!3713863 () Bool)

(assert (=> b!3713863 (= e!2299742 e!2299743)))

(assert (=> b!3713863 (= c!641749 ((_ is Union!10851) (reg!11180 r!26326)))))

(declare-fun b!3713864 () Bool)

(assert (=> b!3713864 (= e!2299743 call!269020)))

(assert (= (and d!1087607 c!641748) b!3713860))

(assert (= (and d!1087607 (not c!641748)) b!3713859))

(assert (= (and b!3713859 c!641750) b!3713857))

(assert (= (and b!3713859 (not c!641750)) b!3713861))

(assert (= (and b!3713861 c!641751) b!3713858))

(assert (= (and b!3713861 (not c!641751)) b!3713863))

(assert (= (and b!3713863 c!641749) b!3713862))

(assert (= (and b!3713863 (not c!641749)) b!3713864))

(assert (= (or b!3713862 b!3713864) bm!269014))

(assert (= (or b!3713862 b!3713864) bm!269016))

(assert (= (or b!3713862 b!3713864) bm!269015))

(assert (= (or b!3713858 bm!269014) bm!269017))

(declare-fun m!4220151 () Bool)

(assert (=> bm!269015 m!4220151))

(declare-fun m!4220153 () Bool)

(assert (=> bm!269016 m!4220153))

(declare-fun m!4220155 () Bool)

(assert (=> bm!269017 m!4220155))

(assert (=> b!3713807 d!1087607))

(declare-fun d!1087609 () Bool)

(declare-fun lt!1297041 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5733 (List!39732) (InoxSet C!21888))

(assert (=> d!1087609 (= lt!1297041 (select (content!5733 (usedCharacters!1114 r!26326)) c!13576))))

(declare-fun e!2299758 () Bool)

(assert (=> d!1087609 (= lt!1297041 e!2299758)))

(declare-fun res!1509842 () Bool)

(assert (=> d!1087609 (=> (not res!1509842) (not e!2299758))))

(assert (=> d!1087609 (= res!1509842 ((_ is Cons!39608) (usedCharacters!1114 r!26326)))))

(assert (=> d!1087609 (= (contains!7944 (usedCharacters!1114 r!26326) c!13576) lt!1297041)))

(declare-fun b!3713885 () Bool)

(declare-fun e!2299757 () Bool)

(assert (=> b!3713885 (= e!2299758 e!2299757)))

(declare-fun res!1509841 () Bool)

(assert (=> b!3713885 (=> res!1509841 e!2299757)))

(assert (=> b!3713885 (= res!1509841 (= (h!45028 (usedCharacters!1114 r!26326)) c!13576))))

(declare-fun b!3713886 () Bool)

(assert (=> b!3713886 (= e!2299757 (contains!7944 (t!302415 (usedCharacters!1114 r!26326)) c!13576))))

(assert (= (and d!1087609 res!1509842) b!3713885))

(assert (= (and b!3713885 (not res!1509841)) b!3713886))

(assert (=> d!1087609 m!4220119))

(declare-fun m!4220169 () Bool)

(assert (=> d!1087609 m!4220169))

(declare-fun m!4220171 () Bool)

(assert (=> d!1087609 m!4220171))

(declare-fun m!4220173 () Bool)

(assert (=> b!3713886 m!4220173))

(assert (=> b!3713807 d!1087609))

(declare-fun d!1087615 () Bool)

(declare-fun lt!1297042 () Bool)

(assert (=> d!1087615 (= lt!1297042 (select (content!5733 (usedCharacters!1114 (reg!11180 r!26326))) c!13576))))

(declare-fun e!2299760 () Bool)

(assert (=> d!1087615 (= lt!1297042 e!2299760)))

(declare-fun res!1509844 () Bool)

(assert (=> d!1087615 (=> (not res!1509844) (not e!2299760))))

(assert (=> d!1087615 (= res!1509844 ((_ is Cons!39608) (usedCharacters!1114 (reg!11180 r!26326))))))

(assert (=> d!1087615 (= (contains!7944 (usedCharacters!1114 (reg!11180 r!26326)) c!13576) lt!1297042)))

(declare-fun b!3713887 () Bool)

(declare-fun e!2299759 () Bool)

(assert (=> b!3713887 (= e!2299760 e!2299759)))

(declare-fun res!1509843 () Bool)

(assert (=> b!3713887 (=> res!1509843 e!2299759)))

(assert (=> b!3713887 (= res!1509843 (= (h!45028 (usedCharacters!1114 (reg!11180 r!26326))) c!13576))))

(declare-fun b!3713888 () Bool)

(assert (=> b!3713888 (= e!2299759 (contains!7944 (t!302415 (usedCharacters!1114 (reg!11180 r!26326))) c!13576))))

(assert (= (and d!1087615 res!1509844) b!3713887))

(assert (= (and b!3713887 (not res!1509843)) b!3713888))

(assert (=> d!1087615 m!4220117))

(declare-fun m!4220175 () Bool)

(assert (=> d!1087615 m!4220175))

(declare-fun m!4220177 () Bool)

(assert (=> d!1087615 m!4220177))

(declare-fun m!4220179 () Bool)

(assert (=> b!3713888 m!4220179))

(assert (=> b!3713807 d!1087615))

(declare-fun bm!269032 () Bool)

(declare-fun call!269038 () Bool)

(declare-fun call!269039 () Bool)

(assert (=> bm!269032 (= call!269038 call!269039)))

(declare-fun b!3713916 () Bool)

(declare-fun e!2299783 () Bool)

(declare-fun e!2299784 () Bool)

(assert (=> b!3713916 (= e!2299783 e!2299784)))

(declare-fun c!641764 () Bool)

(assert (=> b!3713916 (= c!641764 ((_ is Union!10851) r!26326))))

(declare-fun b!3713917 () Bool)

(declare-fun res!1509867 () Bool)

(declare-fun e!2299789 () Bool)

(assert (=> b!3713917 (=> (not res!1509867) (not e!2299789))))

(assert (=> b!3713917 (= res!1509867 call!269038)))

(assert (=> b!3713917 (= e!2299784 e!2299789)))

(declare-fun b!3713918 () Bool)

(declare-fun e!2299785 () Bool)

(assert (=> b!3713918 (= e!2299785 call!269039)))

(declare-fun b!3713919 () Bool)

(assert (=> b!3713919 (= e!2299783 e!2299785)))

(declare-fun res!1509863 () Bool)

(assert (=> b!3713919 (= res!1509863 (not (nullable!3774 (reg!11180 r!26326))))))

(assert (=> b!3713919 (=> (not res!1509863) (not e!2299785))))

(declare-fun b!3713920 () Bool)

(declare-fun res!1509865 () Bool)

(declare-fun e!2299788 () Bool)

(assert (=> b!3713920 (=> res!1509865 e!2299788)))

(assert (=> b!3713920 (= res!1509865 (not ((_ is Concat!17122) r!26326)))))

(assert (=> b!3713920 (= e!2299784 e!2299788)))

(declare-fun bm!269033 () Bool)

(declare-fun call!269037 () Bool)

(assert (=> bm!269033 (= call!269037 (validRegex!4958 (ite c!641764 (regTwo!22215 r!26326) (regOne!22214 r!26326))))))

(declare-fun b!3713921 () Bool)

(assert (=> b!3713921 (= e!2299789 call!269037)))

(declare-fun b!3713922 () Bool)

(declare-fun e!2299787 () Bool)

(assert (=> b!3713922 (= e!2299787 e!2299783)))

(declare-fun c!641765 () Bool)

(assert (=> b!3713922 (= c!641765 ((_ is Star!10851) r!26326))))

(declare-fun bm!269034 () Bool)

(assert (=> bm!269034 (= call!269039 (validRegex!4958 (ite c!641765 (reg!11180 r!26326) (ite c!641764 (regOne!22215 r!26326) (regTwo!22214 r!26326)))))))

(declare-fun b!3713923 () Bool)

(declare-fun e!2299786 () Bool)

(assert (=> b!3713923 (= e!2299786 call!269038)))

(declare-fun b!3713915 () Bool)

(assert (=> b!3713915 (= e!2299788 e!2299786)))

(declare-fun res!1509866 () Bool)

(assert (=> b!3713915 (=> (not res!1509866) (not e!2299786))))

(assert (=> b!3713915 (= res!1509866 call!269037)))

(declare-fun d!1087617 () Bool)

(declare-fun res!1509864 () Bool)

(assert (=> d!1087617 (=> res!1509864 e!2299787)))

(assert (=> d!1087617 (= res!1509864 ((_ is ElementMatch!10851) r!26326))))

(assert (=> d!1087617 (= (validRegex!4958 r!26326) e!2299787)))

(assert (= (and d!1087617 (not res!1509864)) b!3713922))

(assert (= (and b!3713922 c!641765) b!3713919))

(assert (= (and b!3713922 (not c!641765)) b!3713916))

(assert (= (and b!3713919 res!1509863) b!3713918))

(assert (= (and b!3713916 c!641764) b!3713917))

(assert (= (and b!3713916 (not c!641764)) b!3713920))

(assert (= (and b!3713917 res!1509867) b!3713921))

(assert (= (and b!3713920 (not res!1509865)) b!3713915))

(assert (= (and b!3713915 res!1509866) b!3713923))

(assert (= (or b!3713921 b!3713915) bm!269033))

(assert (= (or b!3713917 b!3713923) bm!269032))

(assert (= (or b!3713918 bm!269032) bm!269034))

(declare-fun m!4220193 () Bool)

(assert (=> b!3713919 m!4220193))

(declare-fun m!4220195 () Bool)

(assert (=> bm!269033 m!4220195))

(declare-fun m!4220197 () Bool)

(assert (=> bm!269034 m!4220197))

(assert (=> start!350030 d!1087617))

(declare-fun d!1087623 () Bool)

(declare-fun nullableFct!1062 (Regex!10851) Bool)

(assert (=> d!1087623 (= (nullable!3774 (derivative!365 lt!1297031 tl!3933)) (nullableFct!1062 (derivative!365 lt!1297031 tl!3933)))))

(declare-fun bs!574790 () Bool)

(assert (= bs!574790 d!1087623))

(assert (=> bs!574790 m!4220131))

(declare-fun m!4220199 () Bool)

(assert (=> bs!574790 m!4220199))

(assert (=> b!3713812 d!1087623))

(declare-fun d!1087625 () Bool)

(declare-fun lt!1297051 () Regex!10851)

(assert (=> d!1087625 (validRegex!4958 lt!1297051)))

(declare-fun e!2299802 () Regex!10851)

(assert (=> d!1087625 (= lt!1297051 e!2299802)))

(declare-fun c!641778 () Bool)

(assert (=> d!1087625 (= c!641778 ((_ is Cons!39608) tl!3933))))

(assert (=> d!1087625 (validRegex!4958 lt!1297031)))

(assert (=> d!1087625 (= (derivative!365 lt!1297031 tl!3933) lt!1297051)))

(declare-fun b!3713948 () Bool)

(assert (=> b!3713948 (= e!2299802 (derivative!365 (derivativeStep!3316 lt!1297031 (h!45028 tl!3933)) (t!302415 tl!3933)))))

(declare-fun b!3713949 () Bool)

(assert (=> b!3713949 (= e!2299802 lt!1297031)))

(assert (= (and d!1087625 c!641778) b!3713948))

(assert (= (and d!1087625 (not c!641778)) b!3713949))

(declare-fun m!4220201 () Bool)

(assert (=> d!1087625 m!4220201))

(declare-fun m!4220203 () Bool)

(assert (=> d!1087625 m!4220203))

(declare-fun m!4220205 () Bool)

(assert (=> b!3713948 m!4220205))

(assert (=> b!3713948 m!4220205))

(declare-fun m!4220207 () Bool)

(assert (=> b!3713948 m!4220207))

(assert (=> b!3713812 d!1087625))

(declare-fun b!3714014 () Bool)

(declare-fun e!2299844 () Regex!10851)

(declare-fun call!269068 () Regex!10851)

(assert (=> b!3714014 (= e!2299844 (Union!10851 (Concat!17122 call!269068 (regTwo!22214 r!26326)) EmptyLang!10851))))

(declare-fun b!3714015 () Bool)

(declare-fun e!2299843 () Regex!10851)

(declare-fun e!2299841 () Regex!10851)

(assert (=> b!3714015 (= e!2299843 e!2299841)))

(declare-fun c!641810 () Bool)

(assert (=> b!3714015 (= c!641810 ((_ is ElementMatch!10851) r!26326))))

(declare-fun d!1087627 () Bool)

(declare-fun lt!1297059 () Regex!10851)

(assert (=> d!1087627 (validRegex!4958 lt!1297059)))

(assert (=> d!1087627 (= lt!1297059 e!2299843)))

(declare-fun c!641807 () Bool)

(assert (=> d!1087627 (= c!641807 (or ((_ is EmptyExpr!10851) r!26326) ((_ is EmptyLang!10851) r!26326)))))

(assert (=> d!1087627 (validRegex!4958 r!26326)))

(assert (=> d!1087627 (= (derivativeStep!3316 r!26326 c!13576) lt!1297059)))

(declare-fun b!3714016 () Bool)

(assert (=> b!3714016 (= e!2299843 EmptyLang!10851)))

(declare-fun c!641806 () Bool)

(declare-fun bm!269063 () Bool)

(declare-fun call!269069 () Regex!10851)

(assert (=> bm!269063 (= call!269069 (derivativeStep!3316 (ite c!641806 (regOne!22215 r!26326) (regOne!22214 r!26326)) c!13576))))

(declare-fun b!3714017 () Bool)

(declare-fun c!641809 () Bool)

(assert (=> b!3714017 (= c!641809 (nullable!3774 (regOne!22214 r!26326)))))

(declare-fun e!2299840 () Regex!10851)

(assert (=> b!3714017 (= e!2299840 e!2299844)))

(declare-fun b!3714018 () Bool)

(declare-fun e!2299842 () Regex!10851)

(declare-fun call!269070 () Regex!10851)

(assert (=> b!3714018 (= e!2299842 (Union!10851 call!269069 call!269070))))

(declare-fun b!3714019 () Bool)

(assert (=> b!3714019 (= e!2299841 (ite (= c!13576 (c!641725 r!26326)) EmptyExpr!10851 EmptyLang!10851))))

(declare-fun b!3714020 () Bool)

(assert (=> b!3714020 (= c!641806 ((_ is Union!10851) r!26326))))

(assert (=> b!3714020 (= e!2299841 e!2299842)))

(declare-fun bm!269064 () Bool)

(declare-fun c!641808 () Bool)

(assert (=> bm!269064 (= call!269070 (derivativeStep!3316 (ite c!641806 (regTwo!22215 r!26326) (ite c!641808 (reg!11180 r!26326) (regTwo!22214 r!26326))) c!13576))))

(declare-fun bm!269065 () Bool)

(assert (=> bm!269065 (= call!269068 call!269069)))

(declare-fun call!269071 () Regex!10851)

(declare-fun b!3714021 () Bool)

(assert (=> b!3714021 (= e!2299844 (Union!10851 (Concat!17122 call!269068 (regTwo!22214 r!26326)) call!269071))))

(declare-fun b!3714022 () Bool)

(assert (=> b!3714022 (= e!2299842 e!2299840)))

(assert (=> b!3714022 (= c!641808 ((_ is Star!10851) r!26326))))

(declare-fun bm!269066 () Bool)

(assert (=> bm!269066 (= call!269071 call!269070)))

(declare-fun b!3714023 () Bool)

(assert (=> b!3714023 (= e!2299840 (Concat!17122 call!269071 r!26326))))

(assert (= (and d!1087627 c!641807) b!3714016))

(assert (= (and d!1087627 (not c!641807)) b!3714015))

(assert (= (and b!3714015 c!641810) b!3714019))

(assert (= (and b!3714015 (not c!641810)) b!3714020))

(assert (= (and b!3714020 c!641806) b!3714018))

(assert (= (and b!3714020 (not c!641806)) b!3714022))

(assert (= (and b!3714022 c!641808) b!3714023))

(assert (= (and b!3714022 (not c!641808)) b!3714017))

(assert (= (and b!3714017 c!641809) b!3714021))

(assert (= (and b!3714017 (not c!641809)) b!3714014))

(assert (= (or b!3714021 b!3714014) bm!269065))

(assert (= (or b!3714023 b!3714021) bm!269066))

(assert (= (or b!3714018 bm!269066) bm!269064))

(assert (= (or b!3714018 bm!269065) bm!269063))

(declare-fun m!4220235 () Bool)

(assert (=> d!1087627 m!4220235))

(assert (=> d!1087627 m!4220129))

(declare-fun m!4220237 () Bool)

(assert (=> bm!269063 m!4220237))

(declare-fun m!4220239 () Bool)

(assert (=> b!3714017 m!4220239))

(declare-fun m!4220241 () Bool)

(assert (=> bm!269064 m!4220241))

(assert (=> b!3713812 d!1087627))

(declare-fun bm!269069 () Bool)

(declare-fun call!269075 () Bool)

(declare-fun call!269076 () Bool)

(assert (=> bm!269069 (= call!269075 call!269076)))

(declare-fun b!3714025 () Bool)

(declare-fun e!2299845 () Bool)

(declare-fun e!2299846 () Bool)

(assert (=> b!3714025 (= e!2299845 e!2299846)))

(declare-fun c!641811 () Bool)

(assert (=> b!3714025 (= c!641811 ((_ is Union!10851) (reg!11180 r!26326)))))

(declare-fun b!3714026 () Bool)

(declare-fun res!1509882 () Bool)

(declare-fun e!2299851 () Bool)

(assert (=> b!3714026 (=> (not res!1509882) (not e!2299851))))

(assert (=> b!3714026 (= res!1509882 call!269075)))

(assert (=> b!3714026 (= e!2299846 e!2299851)))

(declare-fun b!3714027 () Bool)

(declare-fun e!2299847 () Bool)

(assert (=> b!3714027 (= e!2299847 call!269076)))

(declare-fun b!3714028 () Bool)

(assert (=> b!3714028 (= e!2299845 e!2299847)))

(declare-fun res!1509878 () Bool)

(assert (=> b!3714028 (= res!1509878 (not (nullable!3774 (reg!11180 (reg!11180 r!26326)))))))

(assert (=> b!3714028 (=> (not res!1509878) (not e!2299847))))

(declare-fun b!3714029 () Bool)

(declare-fun res!1509880 () Bool)

(declare-fun e!2299850 () Bool)

(assert (=> b!3714029 (=> res!1509880 e!2299850)))

(assert (=> b!3714029 (= res!1509880 (not ((_ is Concat!17122) (reg!11180 r!26326))))))

(assert (=> b!3714029 (= e!2299846 e!2299850)))

(declare-fun bm!269070 () Bool)

(declare-fun call!269074 () Bool)

(assert (=> bm!269070 (= call!269074 (validRegex!4958 (ite c!641811 (regTwo!22215 (reg!11180 r!26326)) (regOne!22214 (reg!11180 r!26326)))))))

(declare-fun b!3714030 () Bool)

(assert (=> b!3714030 (= e!2299851 call!269074)))

(declare-fun b!3714031 () Bool)

(declare-fun e!2299849 () Bool)

(assert (=> b!3714031 (= e!2299849 e!2299845)))

(declare-fun c!641812 () Bool)

(assert (=> b!3714031 (= c!641812 ((_ is Star!10851) (reg!11180 r!26326)))))

(declare-fun bm!269071 () Bool)

(assert (=> bm!269071 (= call!269076 (validRegex!4958 (ite c!641812 (reg!11180 (reg!11180 r!26326)) (ite c!641811 (regOne!22215 (reg!11180 r!26326)) (regTwo!22214 (reg!11180 r!26326))))))))

(declare-fun b!3714032 () Bool)

(declare-fun e!2299848 () Bool)

(assert (=> b!3714032 (= e!2299848 call!269075)))

(declare-fun b!3714024 () Bool)

(assert (=> b!3714024 (= e!2299850 e!2299848)))

(declare-fun res!1509881 () Bool)

(assert (=> b!3714024 (=> (not res!1509881) (not e!2299848))))

(assert (=> b!3714024 (= res!1509881 call!269074)))

(declare-fun d!1087637 () Bool)

(declare-fun res!1509879 () Bool)

(assert (=> d!1087637 (=> res!1509879 e!2299849)))

(assert (=> d!1087637 (= res!1509879 ((_ is ElementMatch!10851) (reg!11180 r!26326)))))

(assert (=> d!1087637 (= (validRegex!4958 (reg!11180 r!26326)) e!2299849)))

(assert (= (and d!1087637 (not res!1509879)) b!3714031))

(assert (= (and b!3714031 c!641812) b!3714028))

(assert (= (and b!3714031 (not c!641812)) b!3714025))

(assert (= (and b!3714028 res!1509878) b!3714027))

(assert (= (and b!3714025 c!641811) b!3714026))

(assert (= (and b!3714025 (not c!641811)) b!3714029))

(assert (= (and b!3714026 res!1509882) b!3714030))

(assert (= (and b!3714029 (not res!1509880)) b!3714024))

(assert (= (and b!3714024 res!1509881) b!3714032))

(assert (= (or b!3714030 b!3714024) bm!269070))

(assert (= (or b!3714026 b!3714032) bm!269069))

(assert (= (or b!3714027 bm!269069) bm!269071))

(declare-fun m!4220243 () Bool)

(assert (=> b!3714028 m!4220243))

(declare-fun m!4220245 () Bool)

(assert (=> bm!269070 m!4220245))

(declare-fun m!4220247 () Bool)

(assert (=> bm!269071 m!4220247))

(assert (=> b!3713808 d!1087637))

(declare-fun d!1087639 () Bool)

(assert (=> d!1087639 (= (nullable!3774 (derivative!365 lt!1297030 tl!3933)) (nullableFct!1062 (derivative!365 lt!1297030 tl!3933)))))

(declare-fun bs!574792 () Bool)

(assert (= bs!574792 d!1087639))

(assert (=> bs!574792 m!4220125))

(declare-fun m!4220249 () Bool)

(assert (=> bs!574792 m!4220249))

(assert (=> b!3713809 d!1087639))

(declare-fun d!1087641 () Bool)

(declare-fun lt!1297060 () Regex!10851)

(assert (=> d!1087641 (validRegex!4958 lt!1297060)))

(declare-fun e!2299852 () Regex!10851)

(assert (=> d!1087641 (= lt!1297060 e!2299852)))

(declare-fun c!641813 () Bool)

(assert (=> d!1087641 (= c!641813 ((_ is Cons!39608) tl!3933))))

(assert (=> d!1087641 (validRegex!4958 lt!1297030)))

(assert (=> d!1087641 (= (derivative!365 lt!1297030 tl!3933) lt!1297060)))

(declare-fun b!3714033 () Bool)

(assert (=> b!3714033 (= e!2299852 (derivative!365 (derivativeStep!3316 lt!1297030 (h!45028 tl!3933)) (t!302415 tl!3933)))))

(declare-fun b!3714034 () Bool)

(assert (=> b!3714034 (= e!2299852 lt!1297030)))

(assert (= (and d!1087641 c!641813) b!3714033))

(assert (= (and d!1087641 (not c!641813)) b!3714034))

(declare-fun m!4220251 () Bool)

(assert (=> d!1087641 m!4220251))

(declare-fun m!4220253 () Bool)

(assert (=> d!1087641 m!4220253))

(declare-fun m!4220255 () Bool)

(assert (=> b!3714033 m!4220255))

(assert (=> b!3714033 m!4220255))

(declare-fun m!4220257 () Bool)

(assert (=> b!3714033 m!4220257))

(assert (=> b!3713809 d!1087641))

(declare-fun b!3714035 () Bool)

(declare-fun e!2299857 () Regex!10851)

(declare-fun call!269077 () Regex!10851)

(assert (=> b!3714035 (= e!2299857 (Union!10851 (Concat!17122 call!269077 (regTwo!22214 (reg!11180 r!26326))) EmptyLang!10851))))

(declare-fun b!3714036 () Bool)

(declare-fun e!2299856 () Regex!10851)

(declare-fun e!2299854 () Regex!10851)

(assert (=> b!3714036 (= e!2299856 e!2299854)))

(declare-fun c!641818 () Bool)

(assert (=> b!3714036 (= c!641818 ((_ is ElementMatch!10851) (reg!11180 r!26326)))))

(declare-fun d!1087643 () Bool)

(declare-fun lt!1297061 () Regex!10851)

(assert (=> d!1087643 (validRegex!4958 lt!1297061)))

(assert (=> d!1087643 (= lt!1297061 e!2299856)))

(declare-fun c!641815 () Bool)

(assert (=> d!1087643 (= c!641815 (or ((_ is EmptyExpr!10851) (reg!11180 r!26326)) ((_ is EmptyLang!10851) (reg!11180 r!26326))))))

(assert (=> d!1087643 (validRegex!4958 (reg!11180 r!26326))))

(assert (=> d!1087643 (= (derivativeStep!3316 (reg!11180 r!26326) c!13576) lt!1297061)))

(declare-fun b!3714037 () Bool)

(assert (=> b!3714037 (= e!2299856 EmptyLang!10851)))

(declare-fun call!269078 () Regex!10851)

(declare-fun bm!269072 () Bool)

(declare-fun c!641814 () Bool)

(assert (=> bm!269072 (= call!269078 (derivativeStep!3316 (ite c!641814 (regOne!22215 (reg!11180 r!26326)) (regOne!22214 (reg!11180 r!26326))) c!13576))))

(declare-fun b!3714038 () Bool)

(declare-fun c!641817 () Bool)

(assert (=> b!3714038 (= c!641817 (nullable!3774 (regOne!22214 (reg!11180 r!26326))))))

(declare-fun e!2299853 () Regex!10851)

(assert (=> b!3714038 (= e!2299853 e!2299857)))

(declare-fun b!3714039 () Bool)

(declare-fun e!2299855 () Regex!10851)

(declare-fun call!269079 () Regex!10851)

(assert (=> b!3714039 (= e!2299855 (Union!10851 call!269078 call!269079))))

(declare-fun b!3714040 () Bool)

(assert (=> b!3714040 (= e!2299854 (ite (= c!13576 (c!641725 (reg!11180 r!26326))) EmptyExpr!10851 EmptyLang!10851))))

(declare-fun b!3714041 () Bool)

(assert (=> b!3714041 (= c!641814 ((_ is Union!10851) (reg!11180 r!26326)))))

(assert (=> b!3714041 (= e!2299854 e!2299855)))

(declare-fun c!641816 () Bool)

(declare-fun bm!269073 () Bool)

(assert (=> bm!269073 (= call!269079 (derivativeStep!3316 (ite c!641814 (regTwo!22215 (reg!11180 r!26326)) (ite c!641816 (reg!11180 (reg!11180 r!26326)) (regTwo!22214 (reg!11180 r!26326)))) c!13576))))

(declare-fun bm!269074 () Bool)

(assert (=> bm!269074 (= call!269077 call!269078)))

(declare-fun call!269080 () Regex!10851)

(declare-fun b!3714042 () Bool)

(assert (=> b!3714042 (= e!2299857 (Union!10851 (Concat!17122 call!269077 (regTwo!22214 (reg!11180 r!26326))) call!269080))))

(declare-fun b!3714043 () Bool)

(assert (=> b!3714043 (= e!2299855 e!2299853)))

(assert (=> b!3714043 (= c!641816 ((_ is Star!10851) (reg!11180 r!26326)))))

(declare-fun bm!269075 () Bool)

(assert (=> bm!269075 (= call!269080 call!269079)))

(declare-fun b!3714044 () Bool)

(assert (=> b!3714044 (= e!2299853 (Concat!17122 call!269080 (reg!11180 r!26326)))))

(assert (= (and d!1087643 c!641815) b!3714037))

(assert (= (and d!1087643 (not c!641815)) b!3714036))

(assert (= (and b!3714036 c!641818) b!3714040))

(assert (= (and b!3714036 (not c!641818)) b!3714041))

(assert (= (and b!3714041 c!641814) b!3714039))

(assert (= (and b!3714041 (not c!641814)) b!3714043))

(assert (= (and b!3714043 c!641816) b!3714044))

(assert (= (and b!3714043 (not c!641816)) b!3714038))

(assert (= (and b!3714038 c!641817) b!3714042))

(assert (= (and b!3714038 (not c!641817)) b!3714035))

(assert (= (or b!3714042 b!3714035) bm!269074))

(assert (= (or b!3714044 b!3714042) bm!269075))

(assert (= (or b!3714039 bm!269075) bm!269073))

(assert (= (or b!3714039 bm!269074) bm!269072))

(declare-fun m!4220261 () Bool)

(assert (=> d!1087643 m!4220261))

(assert (=> d!1087643 m!4220137))

(declare-fun m!4220267 () Bool)

(assert (=> bm!269072 m!4220267))

(declare-fun m!4220269 () Bool)

(assert (=> b!3714038 m!4220269))

(declare-fun m!4220271 () Bool)

(assert (=> bm!269073 m!4220271))

(assert (=> b!3713816 d!1087643))

(declare-fun b!3714067 () Bool)

(declare-fun e!2299874 () Bool)

(declare-fun tp!1130287 () Bool)

(assert (=> b!3714067 (= e!2299874 (and tp_is_empty!18717 tp!1130287))))

(assert (=> b!3713814 (= tp!1130282 e!2299874)))

(assert (= (and b!3713814 ((_ is Cons!39608) (t!302415 tl!3933))) b!3714067))

(declare-fun b!3714092 () Bool)

(declare-fun e!2299880 () Bool)

(declare-fun tp!1130308 () Bool)

(assert (=> b!3714092 (= e!2299880 tp!1130308)))

(declare-fun b!3714091 () Bool)

(declare-fun tp!1130309 () Bool)

(declare-fun tp!1130311 () Bool)

(assert (=> b!3714091 (= e!2299880 (and tp!1130309 tp!1130311))))

(declare-fun b!3714090 () Bool)

(assert (=> b!3714090 (= e!2299880 tp_is_empty!18717)))

(assert (=> b!3713813 (= tp!1130284 e!2299880)))

(declare-fun b!3714093 () Bool)

(declare-fun tp!1130310 () Bool)

(declare-fun tp!1130312 () Bool)

(assert (=> b!3714093 (= e!2299880 (and tp!1130310 tp!1130312))))

(assert (= (and b!3713813 ((_ is ElementMatch!10851) (regOne!22215 r!26326))) b!3714090))

(assert (= (and b!3713813 ((_ is Concat!17122) (regOne!22215 r!26326))) b!3714091))

(assert (= (and b!3713813 ((_ is Star!10851) (regOne!22215 r!26326))) b!3714092))

(assert (= (and b!3713813 ((_ is Union!10851) (regOne!22215 r!26326))) b!3714093))

(declare-fun b!3714100 () Bool)

(declare-fun e!2299882 () Bool)

(declare-fun tp!1130318 () Bool)

(assert (=> b!3714100 (= e!2299882 tp!1130318)))

(declare-fun b!3714099 () Bool)

(declare-fun tp!1130319 () Bool)

(declare-fun tp!1130321 () Bool)

(assert (=> b!3714099 (= e!2299882 (and tp!1130319 tp!1130321))))

(declare-fun b!3714098 () Bool)

(assert (=> b!3714098 (= e!2299882 tp_is_empty!18717)))

(assert (=> b!3713813 (= tp!1130283 e!2299882)))

(declare-fun b!3714101 () Bool)

(declare-fun tp!1130320 () Bool)

(declare-fun tp!1130322 () Bool)

(assert (=> b!3714101 (= e!2299882 (and tp!1130320 tp!1130322))))

(assert (= (and b!3713813 ((_ is ElementMatch!10851) (regTwo!22215 r!26326))) b!3714098))

(assert (= (and b!3713813 ((_ is Concat!17122) (regTwo!22215 r!26326))) b!3714099))

(assert (= (and b!3713813 ((_ is Star!10851) (regTwo!22215 r!26326))) b!3714100))

(assert (= (and b!3713813 ((_ is Union!10851) (regTwo!22215 r!26326))) b!3714101))

(declare-fun b!3714108 () Bool)

(declare-fun e!2299884 () Bool)

(declare-fun tp!1130328 () Bool)

(assert (=> b!3714108 (= e!2299884 tp!1130328)))

(declare-fun b!3714107 () Bool)

(declare-fun tp!1130329 () Bool)

(declare-fun tp!1130331 () Bool)

(assert (=> b!3714107 (= e!2299884 (and tp!1130329 tp!1130331))))

(declare-fun b!3714106 () Bool)

(assert (=> b!3714106 (= e!2299884 tp_is_empty!18717)))

(assert (=> b!3713811 (= tp!1130281 e!2299884)))

(declare-fun b!3714109 () Bool)

(declare-fun tp!1130330 () Bool)

(declare-fun tp!1130332 () Bool)

(assert (=> b!3714109 (= e!2299884 (and tp!1130330 tp!1130332))))

(assert (= (and b!3713811 ((_ is ElementMatch!10851) (regOne!22214 r!26326))) b!3714106))

(assert (= (and b!3713811 ((_ is Concat!17122) (regOne!22214 r!26326))) b!3714107))

(assert (= (and b!3713811 ((_ is Star!10851) (regOne!22214 r!26326))) b!3714108))

(assert (= (and b!3713811 ((_ is Union!10851) (regOne!22214 r!26326))) b!3714109))

(declare-fun b!3714116 () Bool)

(declare-fun e!2299886 () Bool)

(declare-fun tp!1130338 () Bool)

(assert (=> b!3714116 (= e!2299886 tp!1130338)))

(declare-fun b!3714115 () Bool)

(declare-fun tp!1130339 () Bool)

(declare-fun tp!1130341 () Bool)

(assert (=> b!3714115 (= e!2299886 (and tp!1130339 tp!1130341))))

(declare-fun b!3714114 () Bool)

(assert (=> b!3714114 (= e!2299886 tp_is_empty!18717)))

(assert (=> b!3713811 (= tp!1130279 e!2299886)))

(declare-fun b!3714117 () Bool)

(declare-fun tp!1130340 () Bool)

(declare-fun tp!1130342 () Bool)

(assert (=> b!3714117 (= e!2299886 (and tp!1130340 tp!1130342))))

(assert (= (and b!3713811 ((_ is ElementMatch!10851) (regTwo!22214 r!26326))) b!3714114))

(assert (= (and b!3713811 ((_ is Concat!17122) (regTwo!22214 r!26326))) b!3714115))

(assert (= (and b!3713811 ((_ is Star!10851) (regTwo!22214 r!26326))) b!3714116))

(assert (= (and b!3713811 ((_ is Union!10851) (regTwo!22214 r!26326))) b!3714117))

(declare-fun b!3714124 () Bool)

(declare-fun e!2299888 () Bool)

(declare-fun tp!1130348 () Bool)

(assert (=> b!3714124 (= e!2299888 tp!1130348)))

(declare-fun b!3714123 () Bool)

(declare-fun tp!1130349 () Bool)

(declare-fun tp!1130351 () Bool)

(assert (=> b!3714123 (= e!2299888 (and tp!1130349 tp!1130351))))

(declare-fun b!3714122 () Bool)

(assert (=> b!3714122 (= e!2299888 tp_is_empty!18717)))

(assert (=> b!3713806 (= tp!1130280 e!2299888)))

(declare-fun b!3714125 () Bool)

(declare-fun tp!1130350 () Bool)

(declare-fun tp!1130352 () Bool)

(assert (=> b!3714125 (= e!2299888 (and tp!1130350 tp!1130352))))

(assert (= (and b!3713806 ((_ is ElementMatch!10851) (reg!11180 r!26326))) b!3714122))

(assert (= (and b!3713806 ((_ is Concat!17122) (reg!11180 r!26326))) b!3714123))

(assert (= (and b!3713806 ((_ is Star!10851) (reg!11180 r!26326))) b!3714124))

(assert (= (and b!3713806 ((_ is Union!10851) (reg!11180 r!26326))) b!3714125))

(check-sat (not b!3713888) (not d!1087609) (not b!3714123) (not b!3713886) (not bm!269017) (not bm!269064) (not b!3714099) (not b!3714101) (not d!1087615) (not b!3714115) (not b!3714067) (not bm!269063) (not b!3714033) (not b!3714091) (not b!3714093) (not d!1087623) (not bm!269070) (not b!3714028) (not d!1087627) (not bm!269071) tp_is_empty!18717 (not d!1087625) (not b!3713919) (not d!1087639) (not b!3714117) (not d!1087599) (not bm!269072) (not b!3714124) (not d!1087641) (not b!3714092) (not b!3714100) (not b!3714038) (not b!3713948) (not bm!269073) (not bm!269012) (not b!3714108) (not b!3714017) (not d!1087643) (not b!3714109) (not b!3714116) (not b!3714107) (not b!3714125) (not bm!269011) (not bm!269015) (not bm!269034) (not bm!269013) (not bm!269033) (not bm!269016))
(check-sat)

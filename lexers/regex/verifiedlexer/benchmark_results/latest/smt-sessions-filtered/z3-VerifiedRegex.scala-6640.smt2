; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349662 () Bool)

(assert start!349662)

(declare-fun b!3707738 () Bool)

(declare-fun e!2296674 () Bool)

(declare-fun tp!1128090 () Bool)

(assert (=> b!3707738 (= e!2296674 tp!1128090)))

(declare-fun b!3707740 () Bool)

(declare-fun tp!1128089 () Bool)

(declare-fun tp!1128087 () Bool)

(assert (=> b!3707740 (= e!2296674 (and tp!1128089 tp!1128087))))

(declare-fun b!3707741 () Bool)

(declare-fun res!1508171 () Bool)

(declare-fun e!2296675 () Bool)

(assert (=> b!3707741 (=> (not res!1508171) (not e!2296675))))

(declare-datatypes ((C!21824 0))(
  ( (C!21825 (val!12960 Int)) )
))
(declare-datatypes ((Regex!10819 0))(
  ( (ElementMatch!10819 (c!640397 C!21824)) (Concat!17090 (regOne!22150 Regex!10819) (regTwo!22150 Regex!10819)) (EmptyExpr!10819) (Star!10819 (reg!11148 Regex!10819)) (EmptyLang!10819) (Union!10819 (regOne!22151 Regex!10819) (regTwo!22151 Regex!10819)) )
))
(declare-fun r!25965 () Regex!10819)

(declare-fun c!13398 () C!21824)

(declare-datatypes ((List!39700 0))(
  ( (Nil!39576) (Cons!39576 (h!44996 C!21824) (t!302383 List!39700)) )
))
(declare-fun contains!7912 (List!39700 C!21824) Bool)

(declare-fun usedCharacters!1082 (Regex!10819) List!39700)

(assert (=> b!3707741 (= res!1508171 (not (contains!7912 (usedCharacters!1082 r!25965) c!13398)))))

(declare-fun b!3707742 () Bool)

(declare-fun res!1508173 () Bool)

(assert (=> b!3707742 (=> (not res!1508173) (not e!2296675))))

(declare-fun s!14922 () List!39700)

(get-info :version)

(assert (=> b!3707742 (= res!1508173 (and (or (not ((_ is Cons!39576) s!14922)) (not (= (h!44996 s!14922) c!13398))) ((_ is Cons!39576) s!14922) (not (= (h!44996 s!14922) c!13398))))))

(declare-fun b!3707743 () Bool)

(declare-fun tp_is_empty!18653 () Bool)

(assert (=> b!3707743 (= e!2296674 tp_is_empty!18653)))

(declare-fun b!3707744 () Bool)

(declare-fun e!2296676 () Bool)

(declare-fun tp!1128092 () Bool)

(assert (=> b!3707744 (= e!2296676 (and tp_is_empty!18653 tp!1128092))))

(declare-fun b!3707745 () Bool)

(declare-fun res!1508172 () Bool)

(declare-fun e!2296673 () Bool)

(assert (=> b!3707745 (=> res!1508172 e!2296673)))

(assert (=> b!3707745 (= res!1508172 (not (contains!7912 (t!302383 s!14922) c!13398)))))

(declare-fun b!3707746 () Bool)

(declare-fun tp!1128091 () Bool)

(declare-fun tp!1128088 () Bool)

(assert (=> b!3707746 (= e!2296674 (and tp!1128091 tp!1128088))))

(declare-fun b!3707747 () Bool)

(declare-fun matchR!5282 (Regex!10819 List!39700) Bool)

(assert (=> b!3707747 (= e!2296673 (not (matchR!5282 r!25965 s!14922)))))

(declare-fun lt!1296594 () Regex!10819)

(assert (=> b!3707747 (not (matchR!5282 lt!1296594 (t!302383 s!14922)))))

(declare-datatypes ((Unit!57468 0))(
  ( (Unit!57469) )
))
(declare-fun lt!1296596 () Unit!57468)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!802 (Regex!10819 List!39700 C!21824) Unit!57468)

(assert (=> b!3707747 (= lt!1296596 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!802 lt!1296594 (t!302383 s!14922) c!13398))))

(declare-fun b!3707748 () Bool)

(assert (=> b!3707748 (= e!2296675 (not e!2296673))))

(declare-fun res!1508176 () Bool)

(assert (=> b!3707748 (=> res!1508176 e!2296673)))

(declare-fun validRegex!4926 (Regex!10819) Bool)

(assert (=> b!3707748 (= res!1508176 (not (validRegex!4926 lt!1296594)))))

(assert (=> b!3707748 (not (contains!7912 (usedCharacters!1082 lt!1296594) c!13398))))

(declare-fun derivativeStep!3298 (Regex!10819 C!21824) Regex!10819)

(assert (=> b!3707748 (= lt!1296594 (derivativeStep!3298 r!25965 (h!44996 s!14922)))))

(declare-fun lt!1296595 () Unit!57468)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!14 (Regex!10819 C!21824 C!21824) Unit!57468)

(assert (=> b!3707748 (= lt!1296595 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!14 r!25965 (h!44996 s!14922) c!13398))))

(declare-fun res!1508175 () Bool)

(assert (=> start!349662 (=> (not res!1508175) (not e!2296675))))

(assert (=> start!349662 (= res!1508175 (validRegex!4926 r!25965))))

(assert (=> start!349662 e!2296675))

(assert (=> start!349662 e!2296674))

(assert (=> start!349662 e!2296676))

(assert (=> start!349662 tp_is_empty!18653))

(declare-fun b!3707739 () Bool)

(declare-fun res!1508174 () Bool)

(assert (=> b!3707739 (=> (not res!1508174) (not e!2296675))))

(assert (=> b!3707739 (= res!1508174 (contains!7912 s!14922 c!13398))))

(assert (= (and start!349662 res!1508175) b!3707739))

(assert (= (and b!3707739 res!1508174) b!3707741))

(assert (= (and b!3707741 res!1508171) b!3707742))

(assert (= (and b!3707742 res!1508173) b!3707748))

(assert (= (and b!3707748 (not res!1508176)) b!3707745))

(assert (= (and b!3707745 (not res!1508172)) b!3707747))

(assert (= (and start!349662 ((_ is ElementMatch!10819) r!25965)) b!3707743))

(assert (= (and start!349662 ((_ is Concat!17090) r!25965)) b!3707740))

(assert (= (and start!349662 ((_ is Star!10819) r!25965)) b!3707738))

(assert (= (and start!349662 ((_ is Union!10819) r!25965)) b!3707746))

(assert (= (and start!349662 ((_ is Cons!39576) s!14922)) b!3707744))

(declare-fun m!4216843 () Bool)

(assert (=> start!349662 m!4216843))

(declare-fun m!4216845 () Bool)

(assert (=> b!3707741 m!4216845))

(assert (=> b!3707741 m!4216845))

(declare-fun m!4216847 () Bool)

(assert (=> b!3707741 m!4216847))

(declare-fun m!4216849 () Bool)

(assert (=> b!3707747 m!4216849))

(declare-fun m!4216851 () Bool)

(assert (=> b!3707747 m!4216851))

(declare-fun m!4216853 () Bool)

(assert (=> b!3707747 m!4216853))

(declare-fun m!4216855 () Bool)

(assert (=> b!3707739 m!4216855))

(declare-fun m!4216857 () Bool)

(assert (=> b!3707748 m!4216857))

(declare-fun m!4216859 () Bool)

(assert (=> b!3707748 m!4216859))

(declare-fun m!4216861 () Bool)

(assert (=> b!3707748 m!4216861))

(declare-fun m!4216863 () Bool)

(assert (=> b!3707748 m!4216863))

(declare-fun m!4216865 () Bool)

(assert (=> b!3707748 m!4216865))

(assert (=> b!3707748 m!4216863))

(declare-fun m!4216867 () Bool)

(assert (=> b!3707745 m!4216867))

(check-sat (not start!349662) tp_is_empty!18653 (not b!3707740) (not b!3707745) (not b!3707739) (not b!3707747) (not b!3707744) (not b!3707746) (not b!3707741) (not b!3707738) (not b!3707748))
(check-sat)
(get-model)

(declare-fun d!1086623 () Bool)

(declare-fun lt!1296602 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5719 (List!39700) (InoxSet C!21824))

(assert (=> d!1086623 (= lt!1296602 (select (content!5719 (usedCharacters!1082 lt!1296594)) c!13398))))

(declare-fun e!2296688 () Bool)

(assert (=> d!1086623 (= lt!1296602 e!2296688)))

(declare-fun res!1508187 () Bool)

(assert (=> d!1086623 (=> (not res!1508187) (not e!2296688))))

(assert (=> d!1086623 (= res!1508187 ((_ is Cons!39576) (usedCharacters!1082 lt!1296594)))))

(assert (=> d!1086623 (= (contains!7912 (usedCharacters!1082 lt!1296594) c!13398) lt!1296602)))

(declare-fun b!3707759 () Bool)

(declare-fun e!2296687 () Bool)

(assert (=> b!3707759 (= e!2296688 e!2296687)))

(declare-fun res!1508188 () Bool)

(assert (=> b!3707759 (=> res!1508188 e!2296687)))

(assert (=> b!3707759 (= res!1508188 (= (h!44996 (usedCharacters!1082 lt!1296594)) c!13398))))

(declare-fun b!3707760 () Bool)

(assert (=> b!3707760 (= e!2296687 (contains!7912 (t!302383 (usedCharacters!1082 lt!1296594)) c!13398))))

(assert (= (and d!1086623 res!1508187) b!3707759))

(assert (= (and b!3707759 (not res!1508188)) b!3707760))

(assert (=> d!1086623 m!4216863))

(declare-fun m!4216873 () Bool)

(assert (=> d!1086623 m!4216873))

(declare-fun m!4216877 () Bool)

(assert (=> d!1086623 m!4216877))

(declare-fun m!4216879 () Bool)

(assert (=> b!3707760 m!4216879))

(assert (=> b!3707748 d!1086623))

(declare-fun d!1086629 () Bool)

(assert (=> d!1086629 (not (contains!7912 (usedCharacters!1082 (derivativeStep!3298 r!25965 (h!44996 s!14922))) c!13398))))

(declare-fun lt!1296608 () Unit!57468)

(declare-fun choose!22166 (Regex!10819 C!21824 C!21824) Unit!57468)

(assert (=> d!1086629 (= lt!1296608 (choose!22166 r!25965 (h!44996 s!14922) c!13398))))

(assert (=> d!1086629 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!14 r!25965 (h!44996 s!14922) c!13398) lt!1296608)))

(declare-fun bs!574682 () Bool)

(assert (= bs!574682 d!1086629))

(assert (=> bs!574682 m!4216857))

(assert (=> bs!574682 m!4216857))

(declare-fun m!4216887 () Bool)

(assert (=> bs!574682 m!4216887))

(assert (=> bs!574682 m!4216887))

(declare-fun m!4216889 () Bool)

(assert (=> bs!574682 m!4216889))

(declare-fun m!4216891 () Bool)

(assert (=> bs!574682 m!4216891))

(assert (=> b!3707748 d!1086629))

(declare-fun b!3707814 () Bool)

(declare-fun e!2296720 () Regex!10819)

(declare-fun call!267864 () Regex!10819)

(declare-fun call!267863 () Regex!10819)

(assert (=> b!3707814 (= e!2296720 (Union!10819 call!267864 call!267863))))

(declare-fun b!3707815 () Bool)

(declare-fun e!2296719 () Regex!10819)

(declare-fun call!267862 () Regex!10819)

(assert (=> b!3707815 (= e!2296719 (Union!10819 (Concat!17090 call!267862 (regTwo!22150 r!25965)) EmptyLang!10819))))

(declare-fun b!3707816 () Bool)

(declare-fun c!640425 () Bool)

(declare-fun nullable!3753 (Regex!10819) Bool)

(assert (=> b!3707816 (= c!640425 (nullable!3753 (regOne!22150 r!25965)))))

(declare-fun e!2296716 () Regex!10819)

(assert (=> b!3707816 (= e!2296716 e!2296719)))

(declare-fun c!640428 () Bool)

(declare-fun bm!267856 () Bool)

(assert (=> bm!267856 (= call!267864 (derivativeStep!3298 (ite c!640428 (regOne!22151 r!25965) (regTwo!22150 r!25965)) (h!44996 s!14922)))))

(declare-fun b!3707817 () Bool)

(declare-fun e!2296718 () Regex!10819)

(assert (=> b!3707817 (= e!2296718 EmptyLang!10819)))

(declare-fun bm!267857 () Bool)

(declare-fun c!640427 () Bool)

(assert (=> bm!267857 (= call!267863 (derivativeStep!3298 (ite c!640428 (regTwo!22151 r!25965) (ite c!640427 (reg!11148 r!25965) (regOne!22150 r!25965))) (h!44996 s!14922)))))

(declare-fun b!3707818 () Bool)

(assert (=> b!3707818 (= c!640428 ((_ is Union!10819) r!25965))))

(declare-fun e!2296717 () Regex!10819)

(assert (=> b!3707818 (= e!2296717 e!2296720)))

(declare-fun b!3707819 () Bool)

(assert (=> b!3707819 (= e!2296720 e!2296716)))

(assert (=> b!3707819 (= c!640427 ((_ is Star!10819) r!25965))))

(declare-fun b!3707813 () Bool)

(assert (=> b!3707813 (= e!2296718 e!2296717)))

(declare-fun c!640426 () Bool)

(assert (=> b!3707813 (= c!640426 ((_ is ElementMatch!10819) r!25965))))

(declare-fun d!1086633 () Bool)

(declare-fun lt!1296615 () Regex!10819)

(assert (=> d!1086633 (validRegex!4926 lt!1296615)))

(assert (=> d!1086633 (= lt!1296615 e!2296718)))

(declare-fun c!640429 () Bool)

(assert (=> d!1086633 (= c!640429 (or ((_ is EmptyExpr!10819) r!25965) ((_ is EmptyLang!10819) r!25965)))))

(assert (=> d!1086633 (validRegex!4926 r!25965)))

(assert (=> d!1086633 (= (derivativeStep!3298 r!25965 (h!44996 s!14922)) lt!1296615)))

(declare-fun bm!267858 () Bool)

(declare-fun call!267861 () Regex!10819)

(assert (=> bm!267858 (= call!267862 call!267861)))

(declare-fun b!3707820 () Bool)

(assert (=> b!3707820 (= e!2296719 (Union!10819 (Concat!17090 call!267862 (regTwo!22150 r!25965)) call!267864))))

(declare-fun bm!267859 () Bool)

(assert (=> bm!267859 (= call!267861 call!267863)))

(declare-fun b!3707821 () Bool)

(assert (=> b!3707821 (= e!2296716 (Concat!17090 call!267861 r!25965))))

(declare-fun b!3707822 () Bool)

(assert (=> b!3707822 (= e!2296717 (ite (= (h!44996 s!14922) (c!640397 r!25965)) EmptyExpr!10819 EmptyLang!10819))))

(assert (= (and d!1086633 c!640429) b!3707817))

(assert (= (and d!1086633 (not c!640429)) b!3707813))

(assert (= (and b!3707813 c!640426) b!3707822))

(assert (= (and b!3707813 (not c!640426)) b!3707818))

(assert (= (and b!3707818 c!640428) b!3707814))

(assert (= (and b!3707818 (not c!640428)) b!3707819))

(assert (= (and b!3707819 c!640427) b!3707821))

(assert (= (and b!3707819 (not c!640427)) b!3707816))

(assert (= (and b!3707816 c!640425) b!3707820))

(assert (= (and b!3707816 (not c!640425)) b!3707815))

(assert (= (or b!3707820 b!3707815) bm!267858))

(assert (= (or b!3707821 bm!267858) bm!267859))

(assert (= (or b!3707814 b!3707820) bm!267856))

(assert (= (or b!3707814 bm!267859) bm!267857))

(declare-fun m!4216903 () Bool)

(assert (=> b!3707816 m!4216903))

(declare-fun m!4216909 () Bool)

(assert (=> bm!267856 m!4216909))

(declare-fun m!4216911 () Bool)

(assert (=> bm!267857 m!4216911))

(declare-fun m!4216913 () Bool)

(assert (=> d!1086633 m!4216913))

(assert (=> d!1086633 m!4216843))

(assert (=> b!3707748 d!1086633))

(declare-fun b!3707857 () Bool)

(declare-fun e!2296747 () Bool)

(declare-fun call!267880 () Bool)

(assert (=> b!3707857 (= e!2296747 call!267880)))

(declare-fun b!3707858 () Bool)

(declare-fun e!2296746 () Bool)

(declare-fun e!2296749 () Bool)

(assert (=> b!3707858 (= e!2296746 e!2296749)))

(declare-fun c!640443 () Bool)

(assert (=> b!3707858 (= c!640443 ((_ is Star!10819) lt!1296594))))

(declare-fun c!640442 () Bool)

(declare-fun bm!267874 () Bool)

(assert (=> bm!267874 (= call!267880 (validRegex!4926 (ite c!640443 (reg!11148 lt!1296594) (ite c!640442 (regTwo!22151 lt!1296594) (regTwo!22150 lt!1296594)))))))

(declare-fun d!1086639 () Bool)

(declare-fun res!1508203 () Bool)

(assert (=> d!1086639 (=> res!1508203 e!2296746)))

(assert (=> d!1086639 (= res!1508203 ((_ is ElementMatch!10819) lt!1296594))))

(assert (=> d!1086639 (= (validRegex!4926 lt!1296594) e!2296746)))

(declare-fun b!3707859 () Bool)

(declare-fun e!2296748 () Bool)

(declare-fun call!267879 () Bool)

(assert (=> b!3707859 (= e!2296748 call!267879)))

(declare-fun b!3707860 () Bool)

(assert (=> b!3707860 (= e!2296749 e!2296747)))

(declare-fun res!1508205 () Bool)

(assert (=> b!3707860 (= res!1508205 (not (nullable!3753 (reg!11148 lt!1296594))))))

(assert (=> b!3707860 (=> (not res!1508205) (not e!2296747))))

(declare-fun b!3707861 () Bool)

(declare-fun res!1508202 () Bool)

(declare-fun e!2296744 () Bool)

(assert (=> b!3707861 (=> res!1508202 e!2296744)))

(assert (=> b!3707861 (= res!1508202 (not ((_ is Concat!17090) lt!1296594)))))

(declare-fun e!2296743 () Bool)

(assert (=> b!3707861 (= e!2296743 e!2296744)))

(declare-fun bm!267875 () Bool)

(assert (=> bm!267875 (= call!267879 call!267880)))

(declare-fun b!3707862 () Bool)

(assert (=> b!3707862 (= e!2296744 e!2296748)))

(declare-fun res!1508204 () Bool)

(assert (=> b!3707862 (=> (not res!1508204) (not e!2296748))))

(declare-fun call!267881 () Bool)

(assert (=> b!3707862 (= res!1508204 call!267881)))

(declare-fun b!3707863 () Bool)

(assert (=> b!3707863 (= e!2296749 e!2296743)))

(assert (=> b!3707863 (= c!640442 ((_ is Union!10819) lt!1296594))))

(declare-fun b!3707864 () Bool)

(declare-fun res!1508201 () Bool)

(declare-fun e!2296745 () Bool)

(assert (=> b!3707864 (=> (not res!1508201) (not e!2296745))))

(assert (=> b!3707864 (= res!1508201 call!267881)))

(assert (=> b!3707864 (= e!2296743 e!2296745)))

(declare-fun bm!267876 () Bool)

(assert (=> bm!267876 (= call!267881 (validRegex!4926 (ite c!640442 (regOne!22151 lt!1296594) (regOne!22150 lt!1296594))))))

(declare-fun b!3707865 () Bool)

(assert (=> b!3707865 (= e!2296745 call!267879)))

(assert (= (and d!1086639 (not res!1508203)) b!3707858))

(assert (= (and b!3707858 c!640443) b!3707860))

(assert (= (and b!3707858 (not c!640443)) b!3707863))

(assert (= (and b!3707860 res!1508205) b!3707857))

(assert (= (and b!3707863 c!640442) b!3707864))

(assert (= (and b!3707863 (not c!640442)) b!3707861))

(assert (= (and b!3707864 res!1508201) b!3707865))

(assert (= (and b!3707861 (not res!1508202)) b!3707862))

(assert (= (and b!3707862 res!1508204) b!3707859))

(assert (= (or b!3707864 b!3707862) bm!267876))

(assert (= (or b!3707865 b!3707859) bm!267875))

(assert (= (or b!3707857 bm!267875) bm!267874))

(declare-fun m!4216915 () Bool)

(assert (=> bm!267874 m!4216915))

(declare-fun m!4216917 () Bool)

(assert (=> b!3707860 m!4216917))

(declare-fun m!4216919 () Bool)

(assert (=> bm!267876 m!4216919))

(assert (=> b!3707748 d!1086639))

(declare-fun bm!267898 () Bool)

(declare-fun call!267906 () List!39700)

(declare-fun c!640463 () Bool)

(assert (=> bm!267898 (= call!267906 (usedCharacters!1082 (ite c!640463 (regTwo!22151 lt!1296594) (regOne!22150 lt!1296594))))))

(declare-fun b!3707917 () Bool)

(declare-fun e!2296786 () List!39700)

(assert (=> b!3707917 (= e!2296786 Nil!39576)))

(declare-fun d!1086641 () Bool)

(declare-fun c!640462 () Bool)

(assert (=> d!1086641 (= c!640462 (or ((_ is EmptyExpr!10819) lt!1296594) ((_ is EmptyLang!10819) lt!1296594)))))

(assert (=> d!1086641 (= (usedCharacters!1082 lt!1296594) e!2296786)))

(declare-fun call!267905 () List!39700)

(declare-fun bm!267899 () Bool)

(declare-fun c!640464 () Bool)

(assert (=> bm!267899 (= call!267905 (usedCharacters!1082 (ite c!640464 (reg!11148 lt!1296594) (ite c!640463 (regOne!22151 lt!1296594) (regTwo!22150 lt!1296594)))))))

(declare-fun b!3707918 () Bool)

(declare-fun e!2296784 () List!39700)

(declare-fun call!267903 () List!39700)

(assert (=> b!3707918 (= e!2296784 call!267903)))

(declare-fun call!267904 () List!39700)

(declare-fun bm!267900 () Bool)

(declare-fun ++!9782 (List!39700 List!39700) List!39700)

(assert (=> bm!267900 (= call!267903 (++!9782 (ite c!640463 call!267904 call!267906) (ite c!640463 call!267906 call!267904)))))

(declare-fun bm!267901 () Bool)

(assert (=> bm!267901 (= call!267904 call!267905)))

(declare-fun b!3707919 () Bool)

(declare-fun e!2296783 () List!39700)

(assert (=> b!3707919 (= e!2296783 e!2296784)))

(assert (=> b!3707919 (= c!640463 ((_ is Union!10819) lt!1296594))))

(declare-fun b!3707920 () Bool)

(assert (=> b!3707920 (= e!2296783 call!267905)))

(declare-fun b!3707921 () Bool)

(declare-fun e!2296785 () List!39700)

(assert (=> b!3707921 (= e!2296786 e!2296785)))

(declare-fun c!640465 () Bool)

(assert (=> b!3707921 (= c!640465 ((_ is ElementMatch!10819) lt!1296594))))

(declare-fun b!3707922 () Bool)

(assert (=> b!3707922 (= e!2296785 (Cons!39576 (c!640397 lt!1296594) Nil!39576))))

(declare-fun b!3707923 () Bool)

(assert (=> b!3707923 (= e!2296784 call!267903)))

(declare-fun b!3707924 () Bool)

(assert (=> b!3707924 (= c!640464 ((_ is Star!10819) lt!1296594))))

(assert (=> b!3707924 (= e!2296785 e!2296783)))

(assert (= (and d!1086641 c!640462) b!3707917))

(assert (= (and d!1086641 (not c!640462)) b!3707921))

(assert (= (and b!3707921 c!640465) b!3707922))

(assert (= (and b!3707921 (not c!640465)) b!3707924))

(assert (= (and b!3707924 c!640464) b!3707920))

(assert (= (and b!3707924 (not c!640464)) b!3707919))

(assert (= (and b!3707919 c!640463) b!3707918))

(assert (= (and b!3707919 (not c!640463)) b!3707923))

(assert (= (or b!3707918 b!3707923) bm!267901))

(assert (= (or b!3707918 b!3707923) bm!267898))

(assert (= (or b!3707918 b!3707923) bm!267900))

(assert (= (or b!3707920 bm!267901) bm!267899))

(declare-fun m!4216933 () Bool)

(assert (=> bm!267898 m!4216933))

(declare-fun m!4216935 () Bool)

(assert (=> bm!267899 m!4216935))

(declare-fun m!4216937 () Bool)

(assert (=> bm!267900 m!4216937))

(assert (=> b!3707748 d!1086641))

(declare-fun d!1086647 () Bool)

(declare-fun lt!1296616 () Bool)

(assert (=> d!1086647 (= lt!1296616 (select (content!5719 s!14922) c!13398))))

(declare-fun e!2296795 () Bool)

(assert (=> d!1086647 (= lt!1296616 e!2296795)))

(declare-fun res!1508226 () Bool)

(assert (=> d!1086647 (=> (not res!1508226) (not e!2296795))))

(assert (=> d!1086647 (= res!1508226 ((_ is Cons!39576) s!14922))))

(assert (=> d!1086647 (= (contains!7912 s!14922 c!13398) lt!1296616)))

(declare-fun b!3707934 () Bool)

(declare-fun e!2296794 () Bool)

(assert (=> b!3707934 (= e!2296795 e!2296794)))

(declare-fun res!1508227 () Bool)

(assert (=> b!3707934 (=> res!1508227 e!2296794)))

(assert (=> b!3707934 (= res!1508227 (= (h!44996 s!14922) c!13398))))

(declare-fun b!3707935 () Bool)

(assert (=> b!3707935 (= e!2296794 (contains!7912 (t!302383 s!14922) c!13398))))

(assert (= (and d!1086647 res!1508226) b!3707934))

(assert (= (and b!3707934 (not res!1508227)) b!3707935))

(declare-fun m!4216945 () Bool)

(assert (=> d!1086647 m!4216945))

(declare-fun m!4216947 () Bool)

(assert (=> d!1086647 m!4216947))

(assert (=> b!3707935 m!4216867))

(assert (=> b!3707739 d!1086647))

(declare-fun d!1086651 () Bool)

(declare-fun lt!1296617 () Bool)

(assert (=> d!1086651 (= lt!1296617 (select (content!5719 (t!302383 s!14922)) c!13398))))

(declare-fun e!2296797 () Bool)

(assert (=> d!1086651 (= lt!1296617 e!2296797)))

(declare-fun res!1508228 () Bool)

(assert (=> d!1086651 (=> (not res!1508228) (not e!2296797))))

(assert (=> d!1086651 (= res!1508228 ((_ is Cons!39576) (t!302383 s!14922)))))

(assert (=> d!1086651 (= (contains!7912 (t!302383 s!14922) c!13398) lt!1296617)))

(declare-fun b!3707936 () Bool)

(declare-fun e!2296796 () Bool)

(assert (=> b!3707936 (= e!2296797 e!2296796)))

(declare-fun res!1508229 () Bool)

(assert (=> b!3707936 (=> res!1508229 e!2296796)))

(assert (=> b!3707936 (= res!1508229 (= (h!44996 (t!302383 s!14922)) c!13398))))

(declare-fun b!3707937 () Bool)

(assert (=> b!3707937 (= e!2296796 (contains!7912 (t!302383 (t!302383 s!14922)) c!13398))))

(assert (= (and d!1086651 res!1508228) b!3707936))

(assert (= (and b!3707936 (not res!1508229)) b!3707937))

(declare-fun m!4216949 () Bool)

(assert (=> d!1086651 m!4216949))

(declare-fun m!4216951 () Bool)

(assert (=> d!1086651 m!4216951))

(declare-fun m!4216953 () Bool)

(assert (=> b!3707937 m!4216953))

(assert (=> b!3707745 d!1086651))

(declare-fun d!1086653 () Bool)

(declare-fun lt!1296618 () Bool)

(assert (=> d!1086653 (= lt!1296618 (select (content!5719 (usedCharacters!1082 r!25965)) c!13398))))

(declare-fun e!2296799 () Bool)

(assert (=> d!1086653 (= lt!1296618 e!2296799)))

(declare-fun res!1508230 () Bool)

(assert (=> d!1086653 (=> (not res!1508230) (not e!2296799))))

(assert (=> d!1086653 (= res!1508230 ((_ is Cons!39576) (usedCharacters!1082 r!25965)))))

(assert (=> d!1086653 (= (contains!7912 (usedCharacters!1082 r!25965) c!13398) lt!1296618)))

(declare-fun b!3707938 () Bool)

(declare-fun e!2296798 () Bool)

(assert (=> b!3707938 (= e!2296799 e!2296798)))

(declare-fun res!1508231 () Bool)

(assert (=> b!3707938 (=> res!1508231 e!2296798)))

(assert (=> b!3707938 (= res!1508231 (= (h!44996 (usedCharacters!1082 r!25965)) c!13398))))

(declare-fun b!3707939 () Bool)

(assert (=> b!3707939 (= e!2296798 (contains!7912 (t!302383 (usedCharacters!1082 r!25965)) c!13398))))

(assert (= (and d!1086653 res!1508230) b!3707938))

(assert (= (and b!3707938 (not res!1508231)) b!3707939))

(assert (=> d!1086653 m!4216845))

(declare-fun m!4216955 () Bool)

(assert (=> d!1086653 m!4216955))

(declare-fun m!4216957 () Bool)

(assert (=> d!1086653 m!4216957))

(declare-fun m!4216959 () Bool)

(assert (=> b!3707939 m!4216959))

(assert (=> b!3707741 d!1086653))

(declare-fun bm!267905 () Bool)

(declare-fun call!267913 () List!39700)

(declare-fun c!640469 () Bool)

(assert (=> bm!267905 (= call!267913 (usedCharacters!1082 (ite c!640469 (regTwo!22151 r!25965) (regOne!22150 r!25965))))))

(declare-fun b!3707940 () Bool)

(declare-fun e!2296803 () List!39700)

(assert (=> b!3707940 (= e!2296803 Nil!39576)))

(declare-fun d!1086655 () Bool)

(declare-fun c!640468 () Bool)

(assert (=> d!1086655 (= c!640468 (or ((_ is EmptyExpr!10819) r!25965) ((_ is EmptyLang!10819) r!25965)))))

(assert (=> d!1086655 (= (usedCharacters!1082 r!25965) e!2296803)))

(declare-fun c!640470 () Bool)

(declare-fun bm!267906 () Bool)

(declare-fun call!267912 () List!39700)

(assert (=> bm!267906 (= call!267912 (usedCharacters!1082 (ite c!640470 (reg!11148 r!25965) (ite c!640469 (regOne!22151 r!25965) (regTwo!22150 r!25965)))))))

(declare-fun b!3707941 () Bool)

(declare-fun e!2296801 () List!39700)

(declare-fun call!267910 () List!39700)

(assert (=> b!3707941 (= e!2296801 call!267910)))

(declare-fun call!267911 () List!39700)

(declare-fun bm!267907 () Bool)

(assert (=> bm!267907 (= call!267910 (++!9782 (ite c!640469 call!267911 call!267913) (ite c!640469 call!267913 call!267911)))))

(declare-fun bm!267908 () Bool)

(assert (=> bm!267908 (= call!267911 call!267912)))

(declare-fun b!3707942 () Bool)

(declare-fun e!2296800 () List!39700)

(assert (=> b!3707942 (= e!2296800 e!2296801)))

(assert (=> b!3707942 (= c!640469 ((_ is Union!10819) r!25965))))

(declare-fun b!3707943 () Bool)

(assert (=> b!3707943 (= e!2296800 call!267912)))

(declare-fun b!3707944 () Bool)

(declare-fun e!2296802 () List!39700)

(assert (=> b!3707944 (= e!2296803 e!2296802)))

(declare-fun c!640471 () Bool)

(assert (=> b!3707944 (= c!640471 ((_ is ElementMatch!10819) r!25965))))

(declare-fun b!3707945 () Bool)

(assert (=> b!3707945 (= e!2296802 (Cons!39576 (c!640397 r!25965) Nil!39576))))

(declare-fun b!3707946 () Bool)

(assert (=> b!3707946 (= e!2296801 call!267910)))

(declare-fun b!3707947 () Bool)

(assert (=> b!3707947 (= c!640470 ((_ is Star!10819) r!25965))))

(assert (=> b!3707947 (= e!2296802 e!2296800)))

(assert (= (and d!1086655 c!640468) b!3707940))

(assert (= (and d!1086655 (not c!640468)) b!3707944))

(assert (= (and b!3707944 c!640471) b!3707945))

(assert (= (and b!3707944 (not c!640471)) b!3707947))

(assert (= (and b!3707947 c!640470) b!3707943))

(assert (= (and b!3707947 (not c!640470)) b!3707942))

(assert (= (and b!3707942 c!640469) b!3707941))

(assert (= (and b!3707942 (not c!640469)) b!3707946))

(assert (= (or b!3707941 b!3707946) bm!267908))

(assert (= (or b!3707941 b!3707946) bm!267905))

(assert (= (or b!3707941 b!3707946) bm!267907))

(assert (= (or b!3707943 bm!267908) bm!267906))

(declare-fun m!4216961 () Bool)

(assert (=> bm!267905 m!4216961))

(declare-fun m!4216963 () Bool)

(assert (=> bm!267906 m!4216963))

(declare-fun m!4216965 () Bool)

(assert (=> bm!267907 m!4216965))

(assert (=> b!3707741 d!1086655))

(declare-fun b!3708032 () Bool)

(declare-fun res!1508284 () Bool)

(declare-fun e!2296849 () Bool)

(assert (=> b!3708032 (=> res!1508284 e!2296849)))

(declare-fun e!2296847 () Bool)

(assert (=> b!3708032 (= res!1508284 e!2296847)))

(declare-fun res!1508285 () Bool)

(assert (=> b!3708032 (=> (not res!1508285) (not e!2296847))))

(declare-fun lt!1296625 () Bool)

(assert (=> b!3708032 (= res!1508285 lt!1296625)))

(declare-fun b!3708033 () Bool)

(declare-fun e!2296852 () Bool)

(assert (=> b!3708033 (= e!2296852 (not lt!1296625))))

(declare-fun b!3708034 () Bool)

(declare-fun head!8003 (List!39700) C!21824)

(assert (=> b!3708034 (= e!2296847 (= (head!8003 s!14922) (c!640397 r!25965)))))

(declare-fun b!3708036 () Bool)

(declare-fun e!2296851 () Bool)

(declare-fun e!2296846 () Bool)

(assert (=> b!3708036 (= e!2296851 e!2296846)))

(declare-fun res!1508282 () Bool)

(assert (=> b!3708036 (=> res!1508282 e!2296846)))

(declare-fun call!267920 () Bool)

(assert (=> b!3708036 (= res!1508282 call!267920)))

(declare-fun bm!267915 () Bool)

(declare-fun isEmpty!23490 (List!39700) Bool)

(assert (=> bm!267915 (= call!267920 (isEmpty!23490 s!14922))))

(declare-fun b!3708037 () Bool)

(declare-fun res!1508286 () Bool)

(assert (=> b!3708037 (=> res!1508286 e!2296849)))

(assert (=> b!3708037 (= res!1508286 (not ((_ is ElementMatch!10819) r!25965)))))

(assert (=> b!3708037 (= e!2296852 e!2296849)))

(declare-fun b!3708038 () Bool)

(declare-fun res!1508287 () Bool)

(assert (=> b!3708038 (=> (not res!1508287) (not e!2296847))))

(assert (=> b!3708038 (= res!1508287 (not call!267920))))

(declare-fun b!3708039 () Bool)

(declare-fun e!2296848 () Bool)

(declare-fun tail!5736 (List!39700) List!39700)

(assert (=> b!3708039 (= e!2296848 (matchR!5282 (derivativeStep!3298 r!25965 (head!8003 s!14922)) (tail!5736 s!14922)))))

(declare-fun b!3708040 () Bool)

(declare-fun e!2296850 () Bool)

(assert (=> b!3708040 (= e!2296850 (= lt!1296625 call!267920))))

(declare-fun b!3708041 () Bool)

(declare-fun res!1508280 () Bool)

(assert (=> b!3708041 (=> res!1508280 e!2296846)))

(assert (=> b!3708041 (= res!1508280 (not (isEmpty!23490 (tail!5736 s!14922))))))

(declare-fun b!3708042 () Bool)

(declare-fun res!1508281 () Bool)

(assert (=> b!3708042 (=> (not res!1508281) (not e!2296847))))

(assert (=> b!3708042 (= res!1508281 (isEmpty!23490 (tail!5736 s!14922)))))

(declare-fun b!3708043 () Bool)

(assert (=> b!3708043 (= e!2296848 (nullable!3753 r!25965))))

(declare-fun b!3708044 () Bool)

(assert (=> b!3708044 (= e!2296850 e!2296852)))

(declare-fun c!640490 () Bool)

(assert (=> b!3708044 (= c!640490 ((_ is EmptyLang!10819) r!25965))))

(declare-fun b!3708045 () Bool)

(assert (=> b!3708045 (= e!2296846 (not (= (head!8003 s!14922) (c!640397 r!25965))))))

(declare-fun b!3708035 () Bool)

(assert (=> b!3708035 (= e!2296849 e!2296851)))

(declare-fun res!1508283 () Bool)

(assert (=> b!3708035 (=> (not res!1508283) (not e!2296851))))

(assert (=> b!3708035 (= res!1508283 (not lt!1296625))))

(declare-fun d!1086657 () Bool)

(assert (=> d!1086657 e!2296850))

(declare-fun c!640492 () Bool)

(assert (=> d!1086657 (= c!640492 ((_ is EmptyExpr!10819) r!25965))))

(assert (=> d!1086657 (= lt!1296625 e!2296848)))

(declare-fun c!640491 () Bool)

(assert (=> d!1086657 (= c!640491 (isEmpty!23490 s!14922))))

(assert (=> d!1086657 (validRegex!4926 r!25965)))

(assert (=> d!1086657 (= (matchR!5282 r!25965 s!14922) lt!1296625)))

(assert (= (and d!1086657 c!640491) b!3708043))

(assert (= (and d!1086657 (not c!640491)) b!3708039))

(assert (= (and d!1086657 c!640492) b!3708040))

(assert (= (and d!1086657 (not c!640492)) b!3708044))

(assert (= (and b!3708044 c!640490) b!3708033))

(assert (= (and b!3708044 (not c!640490)) b!3708037))

(assert (= (and b!3708037 (not res!1508286)) b!3708032))

(assert (= (and b!3708032 res!1508285) b!3708038))

(assert (= (and b!3708038 res!1508287) b!3708042))

(assert (= (and b!3708042 res!1508281) b!3708034))

(assert (= (and b!3708032 (not res!1508284)) b!3708035))

(assert (= (and b!3708035 res!1508283) b!3708036))

(assert (= (and b!3708036 (not res!1508282)) b!3708041))

(assert (= (and b!3708041 (not res!1508280)) b!3708045))

(assert (= (or b!3708040 b!3708036 b!3708038) bm!267915))

(declare-fun m!4216997 () Bool)

(assert (=> d!1086657 m!4216997))

(assert (=> d!1086657 m!4216843))

(declare-fun m!4217003 () Bool)

(assert (=> b!3708045 m!4217003))

(declare-fun m!4217005 () Bool)

(assert (=> b!3708042 m!4217005))

(assert (=> b!3708042 m!4217005))

(declare-fun m!4217007 () Bool)

(assert (=> b!3708042 m!4217007))

(declare-fun m!4217009 () Bool)

(assert (=> b!3708043 m!4217009))

(assert (=> b!3708039 m!4217003))

(assert (=> b!3708039 m!4217003))

(declare-fun m!4217011 () Bool)

(assert (=> b!3708039 m!4217011))

(assert (=> b!3708039 m!4217005))

(assert (=> b!3708039 m!4217011))

(assert (=> b!3708039 m!4217005))

(declare-fun m!4217013 () Bool)

(assert (=> b!3708039 m!4217013))

(assert (=> b!3708034 m!4217003))

(assert (=> b!3708041 m!4217005))

(assert (=> b!3708041 m!4217005))

(assert (=> b!3708041 m!4217007))

(assert (=> bm!267915 m!4216997))

(assert (=> b!3707747 d!1086657))

(declare-fun b!3708058 () Bool)

(declare-fun res!1508296 () Bool)

(declare-fun e!2296864 () Bool)

(assert (=> b!3708058 (=> res!1508296 e!2296864)))

(declare-fun e!2296862 () Bool)

(assert (=> b!3708058 (= res!1508296 e!2296862)))

(declare-fun res!1508297 () Bool)

(assert (=> b!3708058 (=> (not res!1508297) (not e!2296862))))

(declare-fun lt!1296631 () Bool)

(assert (=> b!3708058 (= res!1508297 lt!1296631)))

(declare-fun b!3708059 () Bool)

(declare-fun e!2296867 () Bool)

(assert (=> b!3708059 (= e!2296867 (not lt!1296631))))

(declare-fun b!3708060 () Bool)

(assert (=> b!3708060 (= e!2296862 (= (head!8003 (t!302383 s!14922)) (c!640397 lt!1296594)))))

(declare-fun b!3708062 () Bool)

(declare-fun e!2296866 () Bool)

(declare-fun e!2296861 () Bool)

(assert (=> b!3708062 (= e!2296866 e!2296861)))

(declare-fun res!1508294 () Bool)

(assert (=> b!3708062 (=> res!1508294 e!2296861)))

(declare-fun call!267925 () Bool)

(assert (=> b!3708062 (= res!1508294 call!267925)))

(declare-fun bm!267920 () Bool)

(assert (=> bm!267920 (= call!267925 (isEmpty!23490 (t!302383 s!14922)))))

(declare-fun b!3708063 () Bool)

(declare-fun res!1508298 () Bool)

(assert (=> b!3708063 (=> res!1508298 e!2296864)))

(assert (=> b!3708063 (= res!1508298 (not ((_ is ElementMatch!10819) lt!1296594)))))

(assert (=> b!3708063 (= e!2296867 e!2296864)))

(declare-fun b!3708064 () Bool)

(declare-fun res!1508299 () Bool)

(assert (=> b!3708064 (=> (not res!1508299) (not e!2296862))))

(assert (=> b!3708064 (= res!1508299 (not call!267925))))

(declare-fun b!3708065 () Bool)

(declare-fun e!2296863 () Bool)

(assert (=> b!3708065 (= e!2296863 (matchR!5282 (derivativeStep!3298 lt!1296594 (head!8003 (t!302383 s!14922))) (tail!5736 (t!302383 s!14922))))))

(declare-fun b!3708066 () Bool)

(declare-fun e!2296865 () Bool)

(assert (=> b!3708066 (= e!2296865 (= lt!1296631 call!267925))))

(declare-fun b!3708067 () Bool)

(declare-fun res!1508292 () Bool)

(assert (=> b!3708067 (=> res!1508292 e!2296861)))

(assert (=> b!3708067 (= res!1508292 (not (isEmpty!23490 (tail!5736 (t!302383 s!14922)))))))

(declare-fun b!3708068 () Bool)

(declare-fun res!1508293 () Bool)

(assert (=> b!3708068 (=> (not res!1508293) (not e!2296862))))

(assert (=> b!3708068 (= res!1508293 (isEmpty!23490 (tail!5736 (t!302383 s!14922))))))

(declare-fun b!3708069 () Bool)

(assert (=> b!3708069 (= e!2296863 (nullable!3753 lt!1296594))))

(declare-fun b!3708070 () Bool)

(assert (=> b!3708070 (= e!2296865 e!2296867)))

(declare-fun c!640498 () Bool)

(assert (=> b!3708070 (= c!640498 ((_ is EmptyLang!10819) lt!1296594))))

(declare-fun b!3708071 () Bool)

(assert (=> b!3708071 (= e!2296861 (not (= (head!8003 (t!302383 s!14922)) (c!640397 lt!1296594))))))

(declare-fun b!3708061 () Bool)

(assert (=> b!3708061 (= e!2296864 e!2296866)))

(declare-fun res!1508295 () Bool)

(assert (=> b!3708061 (=> (not res!1508295) (not e!2296866))))

(assert (=> b!3708061 (= res!1508295 (not lt!1296631))))

(declare-fun d!1086669 () Bool)

(assert (=> d!1086669 e!2296865))

(declare-fun c!640500 () Bool)

(assert (=> d!1086669 (= c!640500 ((_ is EmptyExpr!10819) lt!1296594))))

(assert (=> d!1086669 (= lt!1296631 e!2296863)))

(declare-fun c!640499 () Bool)

(assert (=> d!1086669 (= c!640499 (isEmpty!23490 (t!302383 s!14922)))))

(assert (=> d!1086669 (validRegex!4926 lt!1296594)))

(assert (=> d!1086669 (= (matchR!5282 lt!1296594 (t!302383 s!14922)) lt!1296631)))

(assert (= (and d!1086669 c!640499) b!3708069))

(assert (= (and d!1086669 (not c!640499)) b!3708065))

(assert (= (and d!1086669 c!640500) b!3708066))

(assert (= (and d!1086669 (not c!640500)) b!3708070))

(assert (= (and b!3708070 c!640498) b!3708059))

(assert (= (and b!3708070 (not c!640498)) b!3708063))

(assert (= (and b!3708063 (not res!1508298)) b!3708058))

(assert (= (and b!3708058 res!1508297) b!3708064))

(assert (= (and b!3708064 res!1508299) b!3708068))

(assert (= (and b!3708068 res!1508293) b!3708060))

(assert (= (and b!3708058 (not res!1508296)) b!3708061))

(assert (= (and b!3708061 res!1508295) b!3708062))

(assert (= (and b!3708062 (not res!1508294)) b!3708067))

(assert (= (and b!3708067 (not res!1508292)) b!3708071))

(assert (= (or b!3708066 b!3708062 b!3708064) bm!267920))

(declare-fun m!4217027 () Bool)

(assert (=> d!1086669 m!4217027))

(assert (=> d!1086669 m!4216861))

(declare-fun m!4217029 () Bool)

(assert (=> b!3708071 m!4217029))

(declare-fun m!4217031 () Bool)

(assert (=> b!3708068 m!4217031))

(assert (=> b!3708068 m!4217031))

(declare-fun m!4217033 () Bool)

(assert (=> b!3708068 m!4217033))

(declare-fun m!4217035 () Bool)

(assert (=> b!3708069 m!4217035))

(assert (=> b!3708065 m!4217029))

(assert (=> b!3708065 m!4217029))

(declare-fun m!4217037 () Bool)

(assert (=> b!3708065 m!4217037))

(assert (=> b!3708065 m!4217031))

(assert (=> b!3708065 m!4217037))

(assert (=> b!3708065 m!4217031))

(declare-fun m!4217039 () Bool)

(assert (=> b!3708065 m!4217039))

(assert (=> b!3708060 m!4217029))

(assert (=> b!3708067 m!4217031))

(assert (=> b!3708067 m!4217031))

(assert (=> b!3708067 m!4217033))

(assert (=> bm!267920 m!4217027))

(assert (=> b!3707747 d!1086669))

(declare-fun d!1086671 () Bool)

(assert (=> d!1086671 (not (matchR!5282 lt!1296594 (t!302383 s!14922)))))

(declare-fun lt!1296634 () Unit!57468)

(declare-fun choose!22168 (Regex!10819 List!39700 C!21824) Unit!57468)

(assert (=> d!1086671 (= lt!1296634 (choose!22168 lt!1296594 (t!302383 s!14922) c!13398))))

(assert (=> d!1086671 (validRegex!4926 lt!1296594)))

(assert (=> d!1086671 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!802 lt!1296594 (t!302383 s!14922) c!13398) lt!1296634)))

(declare-fun bs!574685 () Bool)

(assert (= bs!574685 d!1086671))

(assert (=> bs!574685 m!4216851))

(declare-fun m!4217041 () Bool)

(assert (=> bs!574685 m!4217041))

(assert (=> bs!574685 m!4216861))

(assert (=> b!3707747 d!1086671))

(declare-fun b!3708107 () Bool)

(declare-fun e!2296882 () Bool)

(declare-fun call!267927 () Bool)

(assert (=> b!3708107 (= e!2296882 call!267927)))

(declare-fun b!3708108 () Bool)

(declare-fun e!2296881 () Bool)

(declare-fun e!2296884 () Bool)

(assert (=> b!3708108 (= e!2296881 e!2296884)))

(declare-fun c!640503 () Bool)

(assert (=> b!3708108 (= c!640503 ((_ is Star!10819) r!25965))))

(declare-fun bm!267921 () Bool)

(declare-fun c!640502 () Bool)

(assert (=> bm!267921 (= call!267927 (validRegex!4926 (ite c!640503 (reg!11148 r!25965) (ite c!640502 (regTwo!22151 r!25965) (regTwo!22150 r!25965)))))))

(declare-fun d!1086673 () Bool)

(declare-fun res!1508302 () Bool)

(assert (=> d!1086673 (=> res!1508302 e!2296881)))

(assert (=> d!1086673 (= res!1508302 ((_ is ElementMatch!10819) r!25965))))

(assert (=> d!1086673 (= (validRegex!4926 r!25965) e!2296881)))

(declare-fun b!3708109 () Bool)

(declare-fun e!2296883 () Bool)

(declare-fun call!267926 () Bool)

(assert (=> b!3708109 (= e!2296883 call!267926)))

(declare-fun b!3708110 () Bool)

(assert (=> b!3708110 (= e!2296884 e!2296882)))

(declare-fun res!1508304 () Bool)

(assert (=> b!3708110 (= res!1508304 (not (nullable!3753 (reg!11148 r!25965))))))

(assert (=> b!3708110 (=> (not res!1508304) (not e!2296882))))

(declare-fun b!3708111 () Bool)

(declare-fun res!1508301 () Bool)

(declare-fun e!2296879 () Bool)

(assert (=> b!3708111 (=> res!1508301 e!2296879)))

(assert (=> b!3708111 (= res!1508301 (not ((_ is Concat!17090) r!25965)))))

(declare-fun e!2296878 () Bool)

(assert (=> b!3708111 (= e!2296878 e!2296879)))

(declare-fun bm!267922 () Bool)

(assert (=> bm!267922 (= call!267926 call!267927)))

(declare-fun b!3708112 () Bool)

(assert (=> b!3708112 (= e!2296879 e!2296883)))

(declare-fun res!1508303 () Bool)

(assert (=> b!3708112 (=> (not res!1508303) (not e!2296883))))

(declare-fun call!267928 () Bool)

(assert (=> b!3708112 (= res!1508303 call!267928)))

(declare-fun b!3708113 () Bool)

(assert (=> b!3708113 (= e!2296884 e!2296878)))

(assert (=> b!3708113 (= c!640502 ((_ is Union!10819) r!25965))))

(declare-fun b!3708114 () Bool)

(declare-fun res!1508300 () Bool)

(declare-fun e!2296880 () Bool)

(assert (=> b!3708114 (=> (not res!1508300) (not e!2296880))))

(assert (=> b!3708114 (= res!1508300 call!267928)))

(assert (=> b!3708114 (= e!2296878 e!2296880)))

(declare-fun bm!267923 () Bool)

(assert (=> bm!267923 (= call!267928 (validRegex!4926 (ite c!640502 (regOne!22151 r!25965) (regOne!22150 r!25965))))))

(declare-fun b!3708115 () Bool)

(assert (=> b!3708115 (= e!2296880 call!267926)))

(assert (= (and d!1086673 (not res!1508302)) b!3708108))

(assert (= (and b!3708108 c!640503) b!3708110))

(assert (= (and b!3708108 (not c!640503)) b!3708113))

(assert (= (and b!3708110 res!1508304) b!3708107))

(assert (= (and b!3708113 c!640502) b!3708114))

(assert (= (and b!3708113 (not c!640502)) b!3708111))

(assert (= (and b!3708114 res!1508300) b!3708115))

(assert (= (and b!3708111 (not res!1508301)) b!3708112))

(assert (= (and b!3708112 res!1508303) b!3708109))

(assert (= (or b!3708114 b!3708112) bm!267923))

(assert (= (or b!3708115 b!3708109) bm!267922))

(assert (= (or b!3708107 bm!267922) bm!267921))

(declare-fun m!4217043 () Bool)

(assert (=> bm!267921 m!4217043))

(declare-fun m!4217045 () Bool)

(assert (=> b!3708110 m!4217045))

(declare-fun m!4217047 () Bool)

(assert (=> bm!267923 m!4217047))

(assert (=> start!349662 d!1086673))

(declare-fun e!2296887 () Bool)

(assert (=> b!3707738 (= tp!1128090 e!2296887)))

(declare-fun b!3708129 () Bool)

(declare-fun tp!1128142 () Bool)

(declare-fun tp!1128145 () Bool)

(assert (=> b!3708129 (= e!2296887 (and tp!1128142 tp!1128145))))

(declare-fun b!3708128 () Bool)

(declare-fun tp!1128144 () Bool)

(assert (=> b!3708128 (= e!2296887 tp!1128144)))

(declare-fun b!3708127 () Bool)

(declare-fun tp!1128141 () Bool)

(declare-fun tp!1128143 () Bool)

(assert (=> b!3708127 (= e!2296887 (and tp!1128141 tp!1128143))))

(declare-fun b!3708126 () Bool)

(assert (=> b!3708126 (= e!2296887 tp_is_empty!18653)))

(assert (= (and b!3707738 ((_ is ElementMatch!10819) (reg!11148 r!25965))) b!3708126))

(assert (= (and b!3707738 ((_ is Concat!17090) (reg!11148 r!25965))) b!3708127))

(assert (= (and b!3707738 ((_ is Star!10819) (reg!11148 r!25965))) b!3708128))

(assert (= (and b!3707738 ((_ is Union!10819) (reg!11148 r!25965))) b!3708129))

(declare-fun b!3708134 () Bool)

(declare-fun e!2296890 () Bool)

(declare-fun tp!1128148 () Bool)

(assert (=> b!3708134 (= e!2296890 (and tp_is_empty!18653 tp!1128148))))

(assert (=> b!3707744 (= tp!1128092 e!2296890)))

(assert (= (and b!3707744 ((_ is Cons!39576) (t!302383 s!14922))) b!3708134))

(declare-fun e!2296891 () Bool)

(assert (=> b!3707740 (= tp!1128089 e!2296891)))

(declare-fun b!3708138 () Bool)

(declare-fun tp!1128150 () Bool)

(declare-fun tp!1128153 () Bool)

(assert (=> b!3708138 (= e!2296891 (and tp!1128150 tp!1128153))))

(declare-fun b!3708137 () Bool)

(declare-fun tp!1128152 () Bool)

(assert (=> b!3708137 (= e!2296891 tp!1128152)))

(declare-fun b!3708136 () Bool)

(declare-fun tp!1128149 () Bool)

(declare-fun tp!1128151 () Bool)

(assert (=> b!3708136 (= e!2296891 (and tp!1128149 tp!1128151))))

(declare-fun b!3708135 () Bool)

(assert (=> b!3708135 (= e!2296891 tp_is_empty!18653)))

(assert (= (and b!3707740 ((_ is ElementMatch!10819) (regOne!22150 r!25965))) b!3708135))

(assert (= (and b!3707740 ((_ is Concat!17090) (regOne!22150 r!25965))) b!3708136))

(assert (= (and b!3707740 ((_ is Star!10819) (regOne!22150 r!25965))) b!3708137))

(assert (= (and b!3707740 ((_ is Union!10819) (regOne!22150 r!25965))) b!3708138))

(declare-fun e!2296892 () Bool)

(assert (=> b!3707740 (= tp!1128087 e!2296892)))

(declare-fun b!3708142 () Bool)

(declare-fun tp!1128155 () Bool)

(declare-fun tp!1128158 () Bool)

(assert (=> b!3708142 (= e!2296892 (and tp!1128155 tp!1128158))))

(declare-fun b!3708141 () Bool)

(declare-fun tp!1128157 () Bool)

(assert (=> b!3708141 (= e!2296892 tp!1128157)))

(declare-fun b!3708140 () Bool)

(declare-fun tp!1128154 () Bool)

(declare-fun tp!1128156 () Bool)

(assert (=> b!3708140 (= e!2296892 (and tp!1128154 tp!1128156))))

(declare-fun b!3708139 () Bool)

(assert (=> b!3708139 (= e!2296892 tp_is_empty!18653)))

(assert (= (and b!3707740 ((_ is ElementMatch!10819) (regTwo!22150 r!25965))) b!3708139))

(assert (= (and b!3707740 ((_ is Concat!17090) (regTwo!22150 r!25965))) b!3708140))

(assert (= (and b!3707740 ((_ is Star!10819) (regTwo!22150 r!25965))) b!3708141))

(assert (= (and b!3707740 ((_ is Union!10819) (regTwo!22150 r!25965))) b!3708142))

(declare-fun e!2296893 () Bool)

(assert (=> b!3707746 (= tp!1128091 e!2296893)))

(declare-fun b!3708146 () Bool)

(declare-fun tp!1128160 () Bool)

(declare-fun tp!1128163 () Bool)

(assert (=> b!3708146 (= e!2296893 (and tp!1128160 tp!1128163))))

(declare-fun b!3708145 () Bool)

(declare-fun tp!1128162 () Bool)

(assert (=> b!3708145 (= e!2296893 tp!1128162)))

(declare-fun b!3708144 () Bool)

(declare-fun tp!1128159 () Bool)

(declare-fun tp!1128161 () Bool)

(assert (=> b!3708144 (= e!2296893 (and tp!1128159 tp!1128161))))

(declare-fun b!3708143 () Bool)

(assert (=> b!3708143 (= e!2296893 tp_is_empty!18653)))

(assert (= (and b!3707746 ((_ is ElementMatch!10819) (regOne!22151 r!25965))) b!3708143))

(assert (= (and b!3707746 ((_ is Concat!17090) (regOne!22151 r!25965))) b!3708144))

(assert (= (and b!3707746 ((_ is Star!10819) (regOne!22151 r!25965))) b!3708145))

(assert (= (and b!3707746 ((_ is Union!10819) (regOne!22151 r!25965))) b!3708146))

(declare-fun e!2296894 () Bool)

(assert (=> b!3707746 (= tp!1128088 e!2296894)))

(declare-fun b!3708150 () Bool)

(declare-fun tp!1128165 () Bool)

(declare-fun tp!1128168 () Bool)

(assert (=> b!3708150 (= e!2296894 (and tp!1128165 tp!1128168))))

(declare-fun b!3708149 () Bool)

(declare-fun tp!1128167 () Bool)

(assert (=> b!3708149 (= e!2296894 tp!1128167)))

(declare-fun b!3708148 () Bool)

(declare-fun tp!1128164 () Bool)

(declare-fun tp!1128166 () Bool)

(assert (=> b!3708148 (= e!2296894 (and tp!1128164 tp!1128166))))

(declare-fun b!3708147 () Bool)

(assert (=> b!3708147 (= e!2296894 tp_is_empty!18653)))

(assert (= (and b!3707746 ((_ is ElementMatch!10819) (regTwo!22151 r!25965))) b!3708147))

(assert (= (and b!3707746 ((_ is Concat!17090) (regTwo!22151 r!25965))) b!3708148))

(assert (= (and b!3707746 ((_ is Star!10819) (regTwo!22151 r!25965))) b!3708149))

(assert (= (and b!3707746 ((_ is Union!10819) (regTwo!22151 r!25965))) b!3708150))

(check-sat tp_is_empty!18653 (not b!3708128) (not b!3708136) (not bm!267907) (not d!1086647) (not d!1086633) (not b!3708150) (not b!3708137) (not b!3707939) (not d!1086671) (not b!3708071) (not b!3708067) (not b!3708140) (not b!3708145) (not b!3708134) (not b!3708148) (not d!1086669) (not b!3708138) (not b!3707935) (not d!1086657) (not bm!267876) (not b!3708144) (not bm!267920) (not b!3707816) (not b!3707860) (not b!3708149) (not b!3708141) (not bm!267874) (not b!3708129) (not b!3708041) (not b!3708065) (not bm!267856) (not d!1086653) (not d!1086623) (not b!3708042) (not b!3707937) (not b!3708146) (not d!1086651) (not b!3708034) (not bm!267857) (not b!3708142) (not b!3708068) (not b!3708043) (not b!3708110) (not b!3708127) (not bm!267899) (not b!3708045) (not bm!267905) (not bm!267898) (not bm!267906) (not b!3707760) (not bm!267915) (not bm!267923) (not bm!267921) (not bm!267900) (not b!3708039) (not b!3708069) (not b!3708060) (not d!1086629))
(check-sat)
(get-model)

(declare-fun d!1086675 () Bool)

(declare-fun lt!1296635 () Bool)

(assert (=> d!1086675 (= lt!1296635 (select (content!5719 (t!302383 (usedCharacters!1082 r!25965))) c!13398))))

(declare-fun e!2296896 () Bool)

(assert (=> d!1086675 (= lt!1296635 e!2296896)))

(declare-fun res!1508305 () Bool)

(assert (=> d!1086675 (=> (not res!1508305) (not e!2296896))))

(assert (=> d!1086675 (= res!1508305 ((_ is Cons!39576) (t!302383 (usedCharacters!1082 r!25965))))))

(assert (=> d!1086675 (= (contains!7912 (t!302383 (usedCharacters!1082 r!25965)) c!13398) lt!1296635)))

(declare-fun b!3708151 () Bool)

(declare-fun e!2296895 () Bool)

(assert (=> b!3708151 (= e!2296896 e!2296895)))

(declare-fun res!1508306 () Bool)

(assert (=> b!3708151 (=> res!1508306 e!2296895)))

(assert (=> b!3708151 (= res!1508306 (= (h!44996 (t!302383 (usedCharacters!1082 r!25965))) c!13398))))

(declare-fun b!3708152 () Bool)

(assert (=> b!3708152 (= e!2296895 (contains!7912 (t!302383 (t!302383 (usedCharacters!1082 r!25965))) c!13398))))

(assert (= (and d!1086675 res!1508305) b!3708151))

(assert (= (and b!3708151 (not res!1508306)) b!3708152))

(declare-fun m!4217049 () Bool)

(assert (=> d!1086675 m!4217049))

(declare-fun m!4217051 () Bool)

(assert (=> d!1086675 m!4217051))

(declare-fun m!4217053 () Bool)

(assert (=> b!3708152 m!4217053))

(assert (=> b!3707939 d!1086675))

(declare-fun bm!267924 () Bool)

(declare-fun c!640505 () Bool)

(declare-fun call!267932 () List!39700)

(assert (=> bm!267924 (= call!267932 (usedCharacters!1082 (ite c!640505 (regTwo!22151 (ite c!640469 (regTwo!22151 r!25965) (regOne!22150 r!25965))) (regOne!22150 (ite c!640469 (regTwo!22151 r!25965) (regOne!22150 r!25965))))))))

(declare-fun b!3708153 () Bool)

(declare-fun e!2296900 () List!39700)

(assert (=> b!3708153 (= e!2296900 Nil!39576)))

(declare-fun d!1086677 () Bool)

(declare-fun c!640504 () Bool)

(assert (=> d!1086677 (= c!640504 (or ((_ is EmptyExpr!10819) (ite c!640469 (regTwo!22151 r!25965) (regOne!22150 r!25965))) ((_ is EmptyLang!10819) (ite c!640469 (regTwo!22151 r!25965) (regOne!22150 r!25965)))))))

(assert (=> d!1086677 (= (usedCharacters!1082 (ite c!640469 (regTwo!22151 r!25965) (regOne!22150 r!25965))) e!2296900)))

(declare-fun c!640506 () Bool)

(declare-fun call!267931 () List!39700)

(declare-fun bm!267925 () Bool)

(assert (=> bm!267925 (= call!267931 (usedCharacters!1082 (ite c!640506 (reg!11148 (ite c!640469 (regTwo!22151 r!25965) (regOne!22150 r!25965))) (ite c!640505 (regOne!22151 (ite c!640469 (regTwo!22151 r!25965) (regOne!22150 r!25965))) (regTwo!22150 (ite c!640469 (regTwo!22151 r!25965) (regOne!22150 r!25965)))))))))

(declare-fun b!3708154 () Bool)

(declare-fun e!2296898 () List!39700)

(declare-fun call!267929 () List!39700)

(assert (=> b!3708154 (= e!2296898 call!267929)))

(declare-fun bm!267926 () Bool)

(declare-fun call!267930 () List!39700)

(assert (=> bm!267926 (= call!267929 (++!9782 (ite c!640505 call!267930 call!267932) (ite c!640505 call!267932 call!267930)))))

(declare-fun bm!267927 () Bool)

(assert (=> bm!267927 (= call!267930 call!267931)))

(declare-fun b!3708155 () Bool)

(declare-fun e!2296897 () List!39700)

(assert (=> b!3708155 (= e!2296897 e!2296898)))

(assert (=> b!3708155 (= c!640505 ((_ is Union!10819) (ite c!640469 (regTwo!22151 r!25965) (regOne!22150 r!25965))))))

(declare-fun b!3708156 () Bool)

(assert (=> b!3708156 (= e!2296897 call!267931)))

(declare-fun b!3708157 () Bool)

(declare-fun e!2296899 () List!39700)

(assert (=> b!3708157 (= e!2296900 e!2296899)))

(declare-fun c!640507 () Bool)

(assert (=> b!3708157 (= c!640507 ((_ is ElementMatch!10819) (ite c!640469 (regTwo!22151 r!25965) (regOne!22150 r!25965))))))

(declare-fun b!3708158 () Bool)

(assert (=> b!3708158 (= e!2296899 (Cons!39576 (c!640397 (ite c!640469 (regTwo!22151 r!25965) (regOne!22150 r!25965))) Nil!39576))))

(declare-fun b!3708159 () Bool)

(assert (=> b!3708159 (= e!2296898 call!267929)))

(declare-fun b!3708160 () Bool)

(assert (=> b!3708160 (= c!640506 ((_ is Star!10819) (ite c!640469 (regTwo!22151 r!25965) (regOne!22150 r!25965))))))

(assert (=> b!3708160 (= e!2296899 e!2296897)))

(assert (= (and d!1086677 c!640504) b!3708153))

(assert (= (and d!1086677 (not c!640504)) b!3708157))

(assert (= (and b!3708157 c!640507) b!3708158))

(assert (= (and b!3708157 (not c!640507)) b!3708160))

(assert (= (and b!3708160 c!640506) b!3708156))

(assert (= (and b!3708160 (not c!640506)) b!3708155))

(assert (= (and b!3708155 c!640505) b!3708154))

(assert (= (and b!3708155 (not c!640505)) b!3708159))

(assert (= (or b!3708154 b!3708159) bm!267927))

(assert (= (or b!3708154 b!3708159) bm!267924))

(assert (= (or b!3708154 b!3708159) bm!267926))

(assert (= (or b!3708156 bm!267927) bm!267925))

(declare-fun m!4217055 () Bool)

(assert (=> bm!267924 m!4217055))

(declare-fun m!4217057 () Bool)

(assert (=> bm!267925 m!4217057))

(declare-fun m!4217059 () Bool)

(assert (=> bm!267926 m!4217059))

(assert (=> bm!267905 d!1086677))

(declare-fun d!1086679 () Bool)

(declare-fun c!640510 () Bool)

(assert (=> d!1086679 (= c!640510 ((_ is Nil!39576) s!14922))))

(declare-fun e!2296903 () (InoxSet C!21824))

(assert (=> d!1086679 (= (content!5719 s!14922) e!2296903)))

(declare-fun b!3708165 () Bool)

(assert (=> b!3708165 (= e!2296903 ((as const (Array C!21824 Bool)) false))))

(declare-fun b!3708166 () Bool)

(assert (=> b!3708166 (= e!2296903 ((_ map or) (store ((as const (Array C!21824 Bool)) false) (h!44996 s!14922) true) (content!5719 (t!302383 s!14922))))))

(assert (= (and d!1086679 c!640510) b!3708165))

(assert (= (and d!1086679 (not c!640510)) b!3708166))

(declare-fun m!4217061 () Bool)

(assert (=> b!3708166 m!4217061))

(assert (=> b!3708166 m!4216949))

(assert (=> d!1086647 d!1086679))

(declare-fun d!1086681 () Bool)

(assert (=> d!1086681 (= (isEmpty!23490 (tail!5736 s!14922)) ((_ is Nil!39576) (tail!5736 s!14922)))))

(assert (=> b!3708041 d!1086681))

(declare-fun d!1086683 () Bool)

(assert (=> d!1086683 (= (tail!5736 s!14922) (t!302383 s!14922))))

(assert (=> b!3708041 d!1086683))

(declare-fun bm!267928 () Bool)

(declare-fun call!267936 () List!39700)

(declare-fun c!640512 () Bool)

(assert (=> bm!267928 (= call!267936 (usedCharacters!1082 (ite c!640512 (regTwo!22151 (ite c!640470 (reg!11148 r!25965) (ite c!640469 (regOne!22151 r!25965) (regTwo!22150 r!25965)))) (regOne!22150 (ite c!640470 (reg!11148 r!25965) (ite c!640469 (regOne!22151 r!25965) (regTwo!22150 r!25965)))))))))

(declare-fun b!3708167 () Bool)

(declare-fun e!2296907 () List!39700)

(assert (=> b!3708167 (= e!2296907 Nil!39576)))

(declare-fun c!640511 () Bool)

(declare-fun d!1086685 () Bool)

(assert (=> d!1086685 (= c!640511 (or ((_ is EmptyExpr!10819) (ite c!640470 (reg!11148 r!25965) (ite c!640469 (regOne!22151 r!25965) (regTwo!22150 r!25965)))) ((_ is EmptyLang!10819) (ite c!640470 (reg!11148 r!25965) (ite c!640469 (regOne!22151 r!25965) (regTwo!22150 r!25965))))))))

(assert (=> d!1086685 (= (usedCharacters!1082 (ite c!640470 (reg!11148 r!25965) (ite c!640469 (regOne!22151 r!25965) (regTwo!22150 r!25965)))) e!2296907)))

(declare-fun call!267935 () List!39700)

(declare-fun bm!267929 () Bool)

(declare-fun c!640513 () Bool)

(assert (=> bm!267929 (= call!267935 (usedCharacters!1082 (ite c!640513 (reg!11148 (ite c!640470 (reg!11148 r!25965) (ite c!640469 (regOne!22151 r!25965) (regTwo!22150 r!25965)))) (ite c!640512 (regOne!22151 (ite c!640470 (reg!11148 r!25965) (ite c!640469 (regOne!22151 r!25965) (regTwo!22150 r!25965)))) (regTwo!22150 (ite c!640470 (reg!11148 r!25965) (ite c!640469 (regOne!22151 r!25965) (regTwo!22150 r!25965))))))))))

(declare-fun b!3708168 () Bool)

(declare-fun e!2296905 () List!39700)

(declare-fun call!267933 () List!39700)

(assert (=> b!3708168 (= e!2296905 call!267933)))

(declare-fun call!267934 () List!39700)

(declare-fun bm!267930 () Bool)

(assert (=> bm!267930 (= call!267933 (++!9782 (ite c!640512 call!267934 call!267936) (ite c!640512 call!267936 call!267934)))))

(declare-fun bm!267931 () Bool)

(assert (=> bm!267931 (= call!267934 call!267935)))

(declare-fun b!3708169 () Bool)

(declare-fun e!2296904 () List!39700)

(assert (=> b!3708169 (= e!2296904 e!2296905)))

(assert (=> b!3708169 (= c!640512 ((_ is Union!10819) (ite c!640470 (reg!11148 r!25965) (ite c!640469 (regOne!22151 r!25965) (regTwo!22150 r!25965)))))))

(declare-fun b!3708170 () Bool)

(assert (=> b!3708170 (= e!2296904 call!267935)))

(declare-fun b!3708171 () Bool)

(declare-fun e!2296906 () List!39700)

(assert (=> b!3708171 (= e!2296907 e!2296906)))

(declare-fun c!640514 () Bool)

(assert (=> b!3708171 (= c!640514 ((_ is ElementMatch!10819) (ite c!640470 (reg!11148 r!25965) (ite c!640469 (regOne!22151 r!25965) (regTwo!22150 r!25965)))))))

(declare-fun b!3708172 () Bool)

(assert (=> b!3708172 (= e!2296906 (Cons!39576 (c!640397 (ite c!640470 (reg!11148 r!25965) (ite c!640469 (regOne!22151 r!25965) (regTwo!22150 r!25965)))) Nil!39576))))

(declare-fun b!3708173 () Bool)

(assert (=> b!3708173 (= e!2296905 call!267933)))

(declare-fun b!3708174 () Bool)

(assert (=> b!3708174 (= c!640513 ((_ is Star!10819) (ite c!640470 (reg!11148 r!25965) (ite c!640469 (regOne!22151 r!25965) (regTwo!22150 r!25965)))))))

(assert (=> b!3708174 (= e!2296906 e!2296904)))

(assert (= (and d!1086685 c!640511) b!3708167))

(assert (= (and d!1086685 (not c!640511)) b!3708171))

(assert (= (and b!3708171 c!640514) b!3708172))

(assert (= (and b!3708171 (not c!640514)) b!3708174))

(assert (= (and b!3708174 c!640513) b!3708170))

(assert (= (and b!3708174 (not c!640513)) b!3708169))

(assert (= (and b!3708169 c!640512) b!3708168))

(assert (= (and b!3708169 (not c!640512)) b!3708173))

(assert (= (or b!3708168 b!3708173) bm!267931))

(assert (= (or b!3708168 b!3708173) bm!267928))

(assert (= (or b!3708168 b!3708173) bm!267930))

(assert (= (or b!3708170 bm!267931) bm!267929))

(declare-fun m!4217063 () Bool)

(assert (=> bm!267928 m!4217063))

(declare-fun m!4217065 () Bool)

(assert (=> bm!267929 m!4217065))

(declare-fun m!4217067 () Bool)

(assert (=> bm!267930 m!4217067))

(assert (=> bm!267906 d!1086685))

(declare-fun d!1086687 () Bool)

(assert (=> d!1086687 (= (isEmpty!23490 (t!302383 s!14922)) ((_ is Nil!39576) (t!302383 s!14922)))))

(assert (=> d!1086669 d!1086687))

(assert (=> d!1086669 d!1086639))

(assert (=> b!3708042 d!1086681))

(assert (=> b!3708042 d!1086683))

(declare-fun d!1086689 () Bool)

(assert (=> d!1086689 (= (head!8003 (t!302383 s!14922)) (h!44996 (t!302383 s!14922)))))

(assert (=> b!3708060 d!1086689))

(declare-fun d!1086691 () Bool)

(declare-fun nullableFct!1051 (Regex!10819) Bool)

(assert (=> d!1086691 (= (nullable!3753 r!25965) (nullableFct!1051 r!25965))))

(declare-fun bs!574686 () Bool)

(assert (= bs!574686 d!1086691))

(declare-fun m!4217069 () Bool)

(assert (=> bs!574686 m!4217069))

(assert (=> b!3708043 d!1086691))

(declare-fun d!1086693 () Bool)

(declare-fun lt!1296636 () Bool)

(assert (=> d!1086693 (= lt!1296636 (select (content!5719 (t!302383 (usedCharacters!1082 lt!1296594))) c!13398))))

(declare-fun e!2296909 () Bool)

(assert (=> d!1086693 (= lt!1296636 e!2296909)))

(declare-fun res!1508307 () Bool)

(assert (=> d!1086693 (=> (not res!1508307) (not e!2296909))))

(assert (=> d!1086693 (= res!1508307 ((_ is Cons!39576) (t!302383 (usedCharacters!1082 lt!1296594))))))

(assert (=> d!1086693 (= (contains!7912 (t!302383 (usedCharacters!1082 lt!1296594)) c!13398) lt!1296636)))

(declare-fun b!3708175 () Bool)

(declare-fun e!2296908 () Bool)

(assert (=> b!3708175 (= e!2296909 e!2296908)))

(declare-fun res!1508308 () Bool)

(assert (=> b!3708175 (=> res!1508308 e!2296908)))

(assert (=> b!3708175 (= res!1508308 (= (h!44996 (t!302383 (usedCharacters!1082 lt!1296594))) c!13398))))

(declare-fun b!3708176 () Bool)

(assert (=> b!3708176 (= e!2296908 (contains!7912 (t!302383 (t!302383 (usedCharacters!1082 lt!1296594))) c!13398))))

(assert (= (and d!1086693 res!1508307) b!3708175))

(assert (= (and b!3708175 (not res!1508308)) b!3708176))

(declare-fun m!4217071 () Bool)

(assert (=> d!1086693 m!4217071))

(declare-fun m!4217073 () Bool)

(assert (=> d!1086693 m!4217073))

(declare-fun m!4217075 () Bool)

(assert (=> b!3708176 m!4217075))

(assert (=> b!3707760 d!1086693))

(declare-fun d!1086695 () Bool)

(declare-fun e!2296915 () Bool)

(assert (=> d!1086695 e!2296915))

(declare-fun res!1508314 () Bool)

(assert (=> d!1086695 (=> (not res!1508314) (not e!2296915))))

(declare-fun lt!1296639 () List!39700)

(assert (=> d!1086695 (= res!1508314 (= (content!5719 lt!1296639) ((_ map or) (content!5719 (ite c!640469 call!267911 call!267913)) (content!5719 (ite c!640469 call!267913 call!267911)))))))

(declare-fun e!2296914 () List!39700)

(assert (=> d!1086695 (= lt!1296639 e!2296914)))

(declare-fun c!640517 () Bool)

(assert (=> d!1086695 (= c!640517 ((_ is Nil!39576) (ite c!640469 call!267911 call!267913)))))

(assert (=> d!1086695 (= (++!9782 (ite c!640469 call!267911 call!267913) (ite c!640469 call!267913 call!267911)) lt!1296639)))

(declare-fun b!3708187 () Bool)

(declare-fun res!1508313 () Bool)

(assert (=> b!3708187 (=> (not res!1508313) (not e!2296915))))

(declare-fun size!30009 (List!39700) Int)

(assert (=> b!3708187 (= res!1508313 (= (size!30009 lt!1296639) (+ (size!30009 (ite c!640469 call!267911 call!267913)) (size!30009 (ite c!640469 call!267913 call!267911)))))))

(declare-fun b!3708188 () Bool)

(assert (=> b!3708188 (= e!2296915 (or (not (= (ite c!640469 call!267913 call!267911) Nil!39576)) (= lt!1296639 (ite c!640469 call!267911 call!267913))))))

(declare-fun b!3708185 () Bool)

(assert (=> b!3708185 (= e!2296914 (ite c!640469 call!267913 call!267911))))

(declare-fun b!3708186 () Bool)

(assert (=> b!3708186 (= e!2296914 (Cons!39576 (h!44996 (ite c!640469 call!267911 call!267913)) (++!9782 (t!302383 (ite c!640469 call!267911 call!267913)) (ite c!640469 call!267913 call!267911))))))

(assert (= (and d!1086695 c!640517) b!3708185))

(assert (= (and d!1086695 (not c!640517)) b!3708186))

(assert (= (and d!1086695 res!1508314) b!3708187))

(assert (= (and b!3708187 res!1508313) b!3708188))

(declare-fun m!4217077 () Bool)

(assert (=> d!1086695 m!4217077))

(declare-fun m!4217079 () Bool)

(assert (=> d!1086695 m!4217079))

(declare-fun m!4217081 () Bool)

(assert (=> d!1086695 m!4217081))

(declare-fun m!4217083 () Bool)

(assert (=> b!3708187 m!4217083))

(declare-fun m!4217085 () Bool)

(assert (=> b!3708187 m!4217085))

(declare-fun m!4217087 () Bool)

(assert (=> b!3708187 m!4217087))

(declare-fun m!4217089 () Bool)

(assert (=> b!3708186 m!4217089))

(assert (=> bm!267907 d!1086695))

(declare-fun b!3708189 () Bool)

(declare-fun e!2296920 () Bool)

(declare-fun call!267938 () Bool)

(assert (=> b!3708189 (= e!2296920 call!267938)))

(declare-fun b!3708190 () Bool)

(declare-fun e!2296919 () Bool)

(declare-fun e!2296922 () Bool)

(assert (=> b!3708190 (= e!2296919 e!2296922)))

(declare-fun c!640519 () Bool)

(assert (=> b!3708190 (= c!640519 ((_ is Star!10819) (ite c!640442 (regOne!22151 lt!1296594) (regOne!22150 lt!1296594))))))

(declare-fun c!640518 () Bool)

(declare-fun bm!267932 () Bool)

(assert (=> bm!267932 (= call!267938 (validRegex!4926 (ite c!640519 (reg!11148 (ite c!640442 (regOne!22151 lt!1296594) (regOne!22150 lt!1296594))) (ite c!640518 (regTwo!22151 (ite c!640442 (regOne!22151 lt!1296594) (regOne!22150 lt!1296594))) (regTwo!22150 (ite c!640442 (regOne!22151 lt!1296594) (regOne!22150 lt!1296594)))))))))

(declare-fun d!1086697 () Bool)

(declare-fun res!1508317 () Bool)

(assert (=> d!1086697 (=> res!1508317 e!2296919)))

(assert (=> d!1086697 (= res!1508317 ((_ is ElementMatch!10819) (ite c!640442 (regOne!22151 lt!1296594) (regOne!22150 lt!1296594))))))

(assert (=> d!1086697 (= (validRegex!4926 (ite c!640442 (regOne!22151 lt!1296594) (regOne!22150 lt!1296594))) e!2296919)))

(declare-fun b!3708191 () Bool)

(declare-fun e!2296921 () Bool)

(declare-fun call!267937 () Bool)

(assert (=> b!3708191 (= e!2296921 call!267937)))

(declare-fun b!3708192 () Bool)

(assert (=> b!3708192 (= e!2296922 e!2296920)))

(declare-fun res!1508319 () Bool)

(assert (=> b!3708192 (= res!1508319 (not (nullable!3753 (reg!11148 (ite c!640442 (regOne!22151 lt!1296594) (regOne!22150 lt!1296594))))))))

(assert (=> b!3708192 (=> (not res!1508319) (not e!2296920))))

(declare-fun b!3708193 () Bool)

(declare-fun res!1508316 () Bool)

(declare-fun e!2296917 () Bool)

(assert (=> b!3708193 (=> res!1508316 e!2296917)))

(assert (=> b!3708193 (= res!1508316 (not ((_ is Concat!17090) (ite c!640442 (regOne!22151 lt!1296594) (regOne!22150 lt!1296594)))))))

(declare-fun e!2296916 () Bool)

(assert (=> b!3708193 (= e!2296916 e!2296917)))

(declare-fun bm!267933 () Bool)

(assert (=> bm!267933 (= call!267937 call!267938)))

(declare-fun b!3708194 () Bool)

(assert (=> b!3708194 (= e!2296917 e!2296921)))

(declare-fun res!1508318 () Bool)

(assert (=> b!3708194 (=> (not res!1508318) (not e!2296921))))

(declare-fun call!267939 () Bool)

(assert (=> b!3708194 (= res!1508318 call!267939)))

(declare-fun b!3708195 () Bool)

(assert (=> b!3708195 (= e!2296922 e!2296916)))

(assert (=> b!3708195 (= c!640518 ((_ is Union!10819) (ite c!640442 (regOne!22151 lt!1296594) (regOne!22150 lt!1296594))))))

(declare-fun b!3708196 () Bool)

(declare-fun res!1508315 () Bool)

(declare-fun e!2296918 () Bool)

(assert (=> b!3708196 (=> (not res!1508315) (not e!2296918))))

(assert (=> b!3708196 (= res!1508315 call!267939)))

(assert (=> b!3708196 (= e!2296916 e!2296918)))

(declare-fun bm!267934 () Bool)

(assert (=> bm!267934 (= call!267939 (validRegex!4926 (ite c!640518 (regOne!22151 (ite c!640442 (regOne!22151 lt!1296594) (regOne!22150 lt!1296594))) (regOne!22150 (ite c!640442 (regOne!22151 lt!1296594) (regOne!22150 lt!1296594))))))))

(declare-fun b!3708197 () Bool)

(assert (=> b!3708197 (= e!2296918 call!267937)))

(assert (= (and d!1086697 (not res!1508317)) b!3708190))

(assert (= (and b!3708190 c!640519) b!3708192))

(assert (= (and b!3708190 (not c!640519)) b!3708195))

(assert (= (and b!3708192 res!1508319) b!3708189))

(assert (= (and b!3708195 c!640518) b!3708196))

(assert (= (and b!3708195 (not c!640518)) b!3708193))

(assert (= (and b!3708196 res!1508315) b!3708197))

(assert (= (and b!3708193 (not res!1508316)) b!3708194))

(assert (= (and b!3708194 res!1508318) b!3708191))

(assert (= (or b!3708196 b!3708194) bm!267934))

(assert (= (or b!3708197 b!3708191) bm!267933))

(assert (= (or b!3708189 bm!267933) bm!267932))

(declare-fun m!4217091 () Bool)

(assert (=> bm!267932 m!4217091))

(declare-fun m!4217093 () Bool)

(assert (=> b!3708192 m!4217093))

(declare-fun m!4217095 () Bool)

(assert (=> bm!267934 m!4217095))

(assert (=> bm!267876 d!1086697))

(declare-fun b!3708198 () Bool)

(declare-fun e!2296927 () Bool)

(declare-fun call!267941 () Bool)

(assert (=> b!3708198 (= e!2296927 call!267941)))

(declare-fun b!3708199 () Bool)

(declare-fun e!2296926 () Bool)

(declare-fun e!2296929 () Bool)

(assert (=> b!3708199 (= e!2296926 e!2296929)))

(declare-fun c!640521 () Bool)

(assert (=> b!3708199 (= c!640521 ((_ is Star!10819) lt!1296615))))

(declare-fun c!640520 () Bool)

(declare-fun bm!267935 () Bool)

(assert (=> bm!267935 (= call!267941 (validRegex!4926 (ite c!640521 (reg!11148 lt!1296615) (ite c!640520 (regTwo!22151 lt!1296615) (regTwo!22150 lt!1296615)))))))

(declare-fun d!1086699 () Bool)

(declare-fun res!1508322 () Bool)

(assert (=> d!1086699 (=> res!1508322 e!2296926)))

(assert (=> d!1086699 (= res!1508322 ((_ is ElementMatch!10819) lt!1296615))))

(assert (=> d!1086699 (= (validRegex!4926 lt!1296615) e!2296926)))

(declare-fun b!3708200 () Bool)

(declare-fun e!2296928 () Bool)

(declare-fun call!267940 () Bool)

(assert (=> b!3708200 (= e!2296928 call!267940)))

(declare-fun b!3708201 () Bool)

(assert (=> b!3708201 (= e!2296929 e!2296927)))

(declare-fun res!1508324 () Bool)

(assert (=> b!3708201 (= res!1508324 (not (nullable!3753 (reg!11148 lt!1296615))))))

(assert (=> b!3708201 (=> (not res!1508324) (not e!2296927))))

(declare-fun b!3708202 () Bool)

(declare-fun res!1508321 () Bool)

(declare-fun e!2296924 () Bool)

(assert (=> b!3708202 (=> res!1508321 e!2296924)))

(assert (=> b!3708202 (= res!1508321 (not ((_ is Concat!17090) lt!1296615)))))

(declare-fun e!2296923 () Bool)

(assert (=> b!3708202 (= e!2296923 e!2296924)))

(declare-fun bm!267936 () Bool)

(assert (=> bm!267936 (= call!267940 call!267941)))

(declare-fun b!3708203 () Bool)

(assert (=> b!3708203 (= e!2296924 e!2296928)))

(declare-fun res!1508323 () Bool)

(assert (=> b!3708203 (=> (not res!1508323) (not e!2296928))))

(declare-fun call!267942 () Bool)

(assert (=> b!3708203 (= res!1508323 call!267942)))

(declare-fun b!3708204 () Bool)

(assert (=> b!3708204 (= e!2296929 e!2296923)))

(assert (=> b!3708204 (= c!640520 ((_ is Union!10819) lt!1296615))))

(declare-fun b!3708205 () Bool)

(declare-fun res!1508320 () Bool)

(declare-fun e!2296925 () Bool)

(assert (=> b!3708205 (=> (not res!1508320) (not e!2296925))))

(assert (=> b!3708205 (= res!1508320 call!267942)))

(assert (=> b!3708205 (= e!2296923 e!2296925)))

(declare-fun bm!267937 () Bool)

(assert (=> bm!267937 (= call!267942 (validRegex!4926 (ite c!640520 (regOne!22151 lt!1296615) (regOne!22150 lt!1296615))))))

(declare-fun b!3708206 () Bool)

(assert (=> b!3708206 (= e!2296925 call!267940)))

(assert (= (and d!1086699 (not res!1508322)) b!3708199))

(assert (= (and b!3708199 c!640521) b!3708201))

(assert (= (and b!3708199 (not c!640521)) b!3708204))

(assert (= (and b!3708201 res!1508324) b!3708198))

(assert (= (and b!3708204 c!640520) b!3708205))

(assert (= (and b!3708204 (not c!640520)) b!3708202))

(assert (= (and b!3708205 res!1508320) b!3708206))

(assert (= (and b!3708202 (not res!1508321)) b!3708203))

(assert (= (and b!3708203 res!1508323) b!3708200))

(assert (= (or b!3708205 b!3708203) bm!267937))

(assert (= (or b!3708206 b!3708200) bm!267936))

(assert (= (or b!3708198 bm!267936) bm!267935))

(declare-fun m!4217097 () Bool)

(assert (=> bm!267935 m!4217097))

(declare-fun m!4217099 () Bool)

(assert (=> b!3708201 m!4217099))

(declare-fun m!4217101 () Bool)

(assert (=> bm!267937 m!4217101))

(assert (=> d!1086633 d!1086699))

(assert (=> d!1086633 d!1086673))

(declare-fun d!1086701 () Bool)

(assert (=> d!1086701 (= (isEmpty!23490 s!14922) ((_ is Nil!39576) s!14922))))

(assert (=> bm!267915 d!1086701))

(declare-fun b!3708207 () Bool)

(declare-fun e!2296934 () Bool)

(declare-fun call!267944 () Bool)

(assert (=> b!3708207 (= e!2296934 call!267944)))

(declare-fun b!3708208 () Bool)

(declare-fun e!2296933 () Bool)

(declare-fun e!2296936 () Bool)

(assert (=> b!3708208 (= e!2296933 e!2296936)))

(declare-fun c!640523 () Bool)

(assert (=> b!3708208 (= c!640523 ((_ is Star!10819) (ite c!640443 (reg!11148 lt!1296594) (ite c!640442 (regTwo!22151 lt!1296594) (regTwo!22150 lt!1296594)))))))

(declare-fun c!640522 () Bool)

(declare-fun bm!267938 () Bool)

(assert (=> bm!267938 (= call!267944 (validRegex!4926 (ite c!640523 (reg!11148 (ite c!640443 (reg!11148 lt!1296594) (ite c!640442 (regTwo!22151 lt!1296594) (regTwo!22150 lt!1296594)))) (ite c!640522 (regTwo!22151 (ite c!640443 (reg!11148 lt!1296594) (ite c!640442 (regTwo!22151 lt!1296594) (regTwo!22150 lt!1296594)))) (regTwo!22150 (ite c!640443 (reg!11148 lt!1296594) (ite c!640442 (regTwo!22151 lt!1296594) (regTwo!22150 lt!1296594))))))))))

(declare-fun d!1086703 () Bool)

(declare-fun res!1508327 () Bool)

(assert (=> d!1086703 (=> res!1508327 e!2296933)))

(assert (=> d!1086703 (= res!1508327 ((_ is ElementMatch!10819) (ite c!640443 (reg!11148 lt!1296594) (ite c!640442 (regTwo!22151 lt!1296594) (regTwo!22150 lt!1296594)))))))

(assert (=> d!1086703 (= (validRegex!4926 (ite c!640443 (reg!11148 lt!1296594) (ite c!640442 (regTwo!22151 lt!1296594) (regTwo!22150 lt!1296594)))) e!2296933)))

(declare-fun b!3708209 () Bool)

(declare-fun e!2296935 () Bool)

(declare-fun call!267943 () Bool)

(assert (=> b!3708209 (= e!2296935 call!267943)))

(declare-fun b!3708210 () Bool)

(assert (=> b!3708210 (= e!2296936 e!2296934)))

(declare-fun res!1508329 () Bool)

(assert (=> b!3708210 (= res!1508329 (not (nullable!3753 (reg!11148 (ite c!640443 (reg!11148 lt!1296594) (ite c!640442 (regTwo!22151 lt!1296594) (regTwo!22150 lt!1296594)))))))))

(assert (=> b!3708210 (=> (not res!1508329) (not e!2296934))))

(declare-fun b!3708211 () Bool)

(declare-fun res!1508326 () Bool)

(declare-fun e!2296931 () Bool)

(assert (=> b!3708211 (=> res!1508326 e!2296931)))

(assert (=> b!3708211 (= res!1508326 (not ((_ is Concat!17090) (ite c!640443 (reg!11148 lt!1296594) (ite c!640442 (regTwo!22151 lt!1296594) (regTwo!22150 lt!1296594))))))))

(declare-fun e!2296930 () Bool)

(assert (=> b!3708211 (= e!2296930 e!2296931)))

(declare-fun bm!267939 () Bool)

(assert (=> bm!267939 (= call!267943 call!267944)))

(declare-fun b!3708212 () Bool)

(assert (=> b!3708212 (= e!2296931 e!2296935)))

(declare-fun res!1508328 () Bool)

(assert (=> b!3708212 (=> (not res!1508328) (not e!2296935))))

(declare-fun call!267945 () Bool)

(assert (=> b!3708212 (= res!1508328 call!267945)))

(declare-fun b!3708213 () Bool)

(assert (=> b!3708213 (= e!2296936 e!2296930)))

(assert (=> b!3708213 (= c!640522 ((_ is Union!10819) (ite c!640443 (reg!11148 lt!1296594) (ite c!640442 (regTwo!22151 lt!1296594) (regTwo!22150 lt!1296594)))))))

(declare-fun b!3708214 () Bool)

(declare-fun res!1508325 () Bool)

(declare-fun e!2296932 () Bool)

(assert (=> b!3708214 (=> (not res!1508325) (not e!2296932))))

(assert (=> b!3708214 (= res!1508325 call!267945)))

(assert (=> b!3708214 (= e!2296930 e!2296932)))

(declare-fun bm!267940 () Bool)

(assert (=> bm!267940 (= call!267945 (validRegex!4926 (ite c!640522 (regOne!22151 (ite c!640443 (reg!11148 lt!1296594) (ite c!640442 (regTwo!22151 lt!1296594) (regTwo!22150 lt!1296594)))) (regOne!22150 (ite c!640443 (reg!11148 lt!1296594) (ite c!640442 (regTwo!22151 lt!1296594) (regTwo!22150 lt!1296594)))))))))

(declare-fun b!3708215 () Bool)

(assert (=> b!3708215 (= e!2296932 call!267943)))

(assert (= (and d!1086703 (not res!1508327)) b!3708208))

(assert (= (and b!3708208 c!640523) b!3708210))

(assert (= (and b!3708208 (not c!640523)) b!3708213))

(assert (= (and b!3708210 res!1508329) b!3708207))

(assert (= (and b!3708213 c!640522) b!3708214))

(assert (= (and b!3708213 (not c!640522)) b!3708211))

(assert (= (and b!3708214 res!1508325) b!3708215))

(assert (= (and b!3708211 (not res!1508326)) b!3708212))

(assert (= (and b!3708212 res!1508328) b!3708209))

(assert (= (or b!3708214 b!3708212) bm!267940))

(assert (= (or b!3708215 b!3708209) bm!267939))

(assert (= (or b!3708207 bm!267939) bm!267938))

(declare-fun m!4217103 () Bool)

(assert (=> bm!267938 m!4217103))

(declare-fun m!4217105 () Bool)

(assert (=> b!3708210 m!4217105))

(declare-fun m!4217107 () Bool)

(assert (=> bm!267940 m!4217107))

(assert (=> bm!267874 d!1086703))

(assert (=> d!1086657 d!1086701))

(assert (=> d!1086657 d!1086673))

(declare-fun d!1086705 () Bool)

(declare-fun lt!1296640 () Bool)

(assert (=> d!1086705 (= lt!1296640 (select (content!5719 (usedCharacters!1082 (derivativeStep!3298 r!25965 (h!44996 s!14922)))) c!13398))))

(declare-fun e!2296938 () Bool)

(assert (=> d!1086705 (= lt!1296640 e!2296938)))

(declare-fun res!1508330 () Bool)

(assert (=> d!1086705 (=> (not res!1508330) (not e!2296938))))

(assert (=> d!1086705 (= res!1508330 ((_ is Cons!39576) (usedCharacters!1082 (derivativeStep!3298 r!25965 (h!44996 s!14922)))))))

(assert (=> d!1086705 (= (contains!7912 (usedCharacters!1082 (derivativeStep!3298 r!25965 (h!44996 s!14922))) c!13398) lt!1296640)))

(declare-fun b!3708216 () Bool)

(declare-fun e!2296937 () Bool)

(assert (=> b!3708216 (= e!2296938 e!2296937)))

(declare-fun res!1508331 () Bool)

(assert (=> b!3708216 (=> res!1508331 e!2296937)))

(assert (=> b!3708216 (= res!1508331 (= (h!44996 (usedCharacters!1082 (derivativeStep!3298 r!25965 (h!44996 s!14922)))) c!13398))))

(declare-fun b!3708217 () Bool)

(assert (=> b!3708217 (= e!2296937 (contains!7912 (t!302383 (usedCharacters!1082 (derivativeStep!3298 r!25965 (h!44996 s!14922)))) c!13398))))

(assert (= (and d!1086705 res!1508330) b!3708216))

(assert (= (and b!3708216 (not res!1508331)) b!3708217))

(assert (=> d!1086705 m!4216887))

(declare-fun m!4217109 () Bool)

(assert (=> d!1086705 m!4217109))

(declare-fun m!4217111 () Bool)

(assert (=> d!1086705 m!4217111))

(declare-fun m!4217113 () Bool)

(assert (=> b!3708217 m!4217113))

(assert (=> d!1086629 d!1086705))

(declare-fun call!267949 () List!39700)

(declare-fun c!640525 () Bool)

(declare-fun bm!267941 () Bool)

(assert (=> bm!267941 (= call!267949 (usedCharacters!1082 (ite c!640525 (regTwo!22151 (derivativeStep!3298 r!25965 (h!44996 s!14922))) (regOne!22150 (derivativeStep!3298 r!25965 (h!44996 s!14922))))))))

(declare-fun b!3708218 () Bool)

(declare-fun e!2296942 () List!39700)

(assert (=> b!3708218 (= e!2296942 Nil!39576)))

(declare-fun d!1086707 () Bool)

(declare-fun c!640524 () Bool)

(assert (=> d!1086707 (= c!640524 (or ((_ is EmptyExpr!10819) (derivativeStep!3298 r!25965 (h!44996 s!14922))) ((_ is EmptyLang!10819) (derivativeStep!3298 r!25965 (h!44996 s!14922)))))))

(assert (=> d!1086707 (= (usedCharacters!1082 (derivativeStep!3298 r!25965 (h!44996 s!14922))) e!2296942)))

(declare-fun c!640526 () Bool)

(declare-fun call!267948 () List!39700)

(declare-fun bm!267942 () Bool)

(assert (=> bm!267942 (= call!267948 (usedCharacters!1082 (ite c!640526 (reg!11148 (derivativeStep!3298 r!25965 (h!44996 s!14922))) (ite c!640525 (regOne!22151 (derivativeStep!3298 r!25965 (h!44996 s!14922))) (regTwo!22150 (derivativeStep!3298 r!25965 (h!44996 s!14922)))))))))

(declare-fun b!3708219 () Bool)

(declare-fun e!2296940 () List!39700)

(declare-fun call!267946 () List!39700)

(assert (=> b!3708219 (= e!2296940 call!267946)))

(declare-fun call!267947 () List!39700)

(declare-fun bm!267943 () Bool)

(assert (=> bm!267943 (= call!267946 (++!9782 (ite c!640525 call!267947 call!267949) (ite c!640525 call!267949 call!267947)))))

(declare-fun bm!267944 () Bool)

(assert (=> bm!267944 (= call!267947 call!267948)))

(declare-fun b!3708220 () Bool)

(declare-fun e!2296939 () List!39700)

(assert (=> b!3708220 (= e!2296939 e!2296940)))

(assert (=> b!3708220 (= c!640525 ((_ is Union!10819) (derivativeStep!3298 r!25965 (h!44996 s!14922))))))

(declare-fun b!3708221 () Bool)

(assert (=> b!3708221 (= e!2296939 call!267948)))

(declare-fun b!3708222 () Bool)

(declare-fun e!2296941 () List!39700)

(assert (=> b!3708222 (= e!2296942 e!2296941)))

(declare-fun c!640527 () Bool)

(assert (=> b!3708222 (= c!640527 ((_ is ElementMatch!10819) (derivativeStep!3298 r!25965 (h!44996 s!14922))))))

(declare-fun b!3708223 () Bool)

(assert (=> b!3708223 (= e!2296941 (Cons!39576 (c!640397 (derivativeStep!3298 r!25965 (h!44996 s!14922))) Nil!39576))))

(declare-fun b!3708224 () Bool)

(assert (=> b!3708224 (= e!2296940 call!267946)))

(declare-fun b!3708225 () Bool)

(assert (=> b!3708225 (= c!640526 ((_ is Star!10819) (derivativeStep!3298 r!25965 (h!44996 s!14922))))))

(assert (=> b!3708225 (= e!2296941 e!2296939)))

(assert (= (and d!1086707 c!640524) b!3708218))

(assert (= (and d!1086707 (not c!640524)) b!3708222))

(assert (= (and b!3708222 c!640527) b!3708223))

(assert (= (and b!3708222 (not c!640527)) b!3708225))

(assert (= (and b!3708225 c!640526) b!3708221))

(assert (= (and b!3708225 (not c!640526)) b!3708220))

(assert (= (and b!3708220 c!640525) b!3708219))

(assert (= (and b!3708220 (not c!640525)) b!3708224))

(assert (= (or b!3708219 b!3708224) bm!267944))

(assert (= (or b!3708219 b!3708224) bm!267941))

(assert (= (or b!3708219 b!3708224) bm!267943))

(assert (= (or b!3708221 bm!267944) bm!267942))

(declare-fun m!4217115 () Bool)

(assert (=> bm!267941 m!4217115))

(declare-fun m!4217117 () Bool)

(assert (=> bm!267942 m!4217117))

(declare-fun m!4217119 () Bool)

(assert (=> bm!267943 m!4217119))

(assert (=> d!1086629 d!1086707))

(assert (=> d!1086629 d!1086633))

(declare-fun d!1086709 () Bool)

(assert (=> d!1086709 (not (contains!7912 (usedCharacters!1082 (derivativeStep!3298 r!25965 (h!44996 s!14922))) c!13398))))

(assert (=> d!1086709 true))

(declare-fun _$133!92 () Unit!57468)

(assert (=> d!1086709 (= (choose!22166 r!25965 (h!44996 s!14922) c!13398) _$133!92)))

(declare-fun bs!574687 () Bool)

(assert (= bs!574687 d!1086709))

(assert (=> bs!574687 m!4216857))

(assert (=> bs!574687 m!4216857))

(assert (=> bs!574687 m!4216887))

(assert (=> bs!574687 m!4216887))

(assert (=> bs!574687 m!4216889))

(assert (=> d!1086629 d!1086709))

(declare-fun d!1086711 () Bool)

(assert (=> d!1086711 (= (nullable!3753 (reg!11148 lt!1296594)) (nullableFct!1051 (reg!11148 lt!1296594)))))

(declare-fun bs!574688 () Bool)

(assert (= bs!574688 d!1086711))

(declare-fun m!4217121 () Bool)

(assert (=> bs!574688 m!4217121))

(assert (=> b!3707860 d!1086711))

(assert (=> d!1086671 d!1086669))

(declare-fun d!1086713 () Bool)

(assert (=> d!1086713 (not (matchR!5282 lt!1296594 (t!302383 s!14922)))))

(assert (=> d!1086713 true))

(declare-fun _$127!443 () Unit!57468)

(assert (=> d!1086713 (= (choose!22168 lt!1296594 (t!302383 s!14922) c!13398) _$127!443)))

(declare-fun bs!574689 () Bool)

(assert (= bs!574689 d!1086713))

(assert (=> bs!574689 m!4216851))

(assert (=> d!1086671 d!1086713))

(assert (=> d!1086671 d!1086639))

(declare-fun b!3708226 () Bool)

(declare-fun e!2296947 () Bool)

(declare-fun call!267951 () Bool)

(assert (=> b!3708226 (= e!2296947 call!267951)))

(declare-fun b!3708227 () Bool)

(declare-fun e!2296946 () Bool)

(declare-fun e!2296949 () Bool)

(assert (=> b!3708227 (= e!2296946 e!2296949)))

(declare-fun c!640531 () Bool)

(assert (=> b!3708227 (= c!640531 ((_ is Star!10819) (ite c!640502 (regOne!22151 r!25965) (regOne!22150 r!25965))))))

(declare-fun c!640530 () Bool)

(declare-fun bm!267945 () Bool)

(assert (=> bm!267945 (= call!267951 (validRegex!4926 (ite c!640531 (reg!11148 (ite c!640502 (regOne!22151 r!25965) (regOne!22150 r!25965))) (ite c!640530 (regTwo!22151 (ite c!640502 (regOne!22151 r!25965) (regOne!22150 r!25965))) (regTwo!22150 (ite c!640502 (regOne!22151 r!25965) (regOne!22150 r!25965)))))))))

(declare-fun d!1086715 () Bool)

(declare-fun res!1508334 () Bool)

(assert (=> d!1086715 (=> res!1508334 e!2296946)))

(assert (=> d!1086715 (= res!1508334 ((_ is ElementMatch!10819) (ite c!640502 (regOne!22151 r!25965) (regOne!22150 r!25965))))))

(assert (=> d!1086715 (= (validRegex!4926 (ite c!640502 (regOne!22151 r!25965) (regOne!22150 r!25965))) e!2296946)))

(declare-fun b!3708228 () Bool)

(declare-fun e!2296948 () Bool)

(declare-fun call!267950 () Bool)

(assert (=> b!3708228 (= e!2296948 call!267950)))

(declare-fun b!3708229 () Bool)

(assert (=> b!3708229 (= e!2296949 e!2296947)))

(declare-fun res!1508336 () Bool)

(assert (=> b!3708229 (= res!1508336 (not (nullable!3753 (reg!11148 (ite c!640502 (regOne!22151 r!25965) (regOne!22150 r!25965))))))))

(assert (=> b!3708229 (=> (not res!1508336) (not e!2296947))))

(declare-fun b!3708230 () Bool)

(declare-fun res!1508333 () Bool)

(declare-fun e!2296944 () Bool)

(assert (=> b!3708230 (=> res!1508333 e!2296944)))

(assert (=> b!3708230 (= res!1508333 (not ((_ is Concat!17090) (ite c!640502 (regOne!22151 r!25965) (regOne!22150 r!25965)))))))

(declare-fun e!2296943 () Bool)

(assert (=> b!3708230 (= e!2296943 e!2296944)))

(declare-fun bm!267946 () Bool)

(assert (=> bm!267946 (= call!267950 call!267951)))

(declare-fun b!3708231 () Bool)

(assert (=> b!3708231 (= e!2296944 e!2296948)))

(declare-fun res!1508335 () Bool)

(assert (=> b!3708231 (=> (not res!1508335) (not e!2296948))))

(declare-fun call!267952 () Bool)

(assert (=> b!3708231 (= res!1508335 call!267952)))

(declare-fun b!3708232 () Bool)

(assert (=> b!3708232 (= e!2296949 e!2296943)))

(assert (=> b!3708232 (= c!640530 ((_ is Union!10819) (ite c!640502 (regOne!22151 r!25965) (regOne!22150 r!25965))))))

(declare-fun b!3708233 () Bool)

(declare-fun res!1508332 () Bool)

(declare-fun e!2296945 () Bool)

(assert (=> b!3708233 (=> (not res!1508332) (not e!2296945))))

(assert (=> b!3708233 (= res!1508332 call!267952)))

(assert (=> b!3708233 (= e!2296943 e!2296945)))

(declare-fun bm!267947 () Bool)

(assert (=> bm!267947 (= call!267952 (validRegex!4926 (ite c!640530 (regOne!22151 (ite c!640502 (regOne!22151 r!25965) (regOne!22150 r!25965))) (regOne!22150 (ite c!640502 (regOne!22151 r!25965) (regOne!22150 r!25965))))))))

(declare-fun b!3708234 () Bool)

(assert (=> b!3708234 (= e!2296945 call!267950)))

(assert (= (and d!1086715 (not res!1508334)) b!3708227))

(assert (= (and b!3708227 c!640531) b!3708229))

(assert (= (and b!3708227 (not c!640531)) b!3708232))

(assert (= (and b!3708229 res!1508336) b!3708226))

(assert (= (and b!3708232 c!640530) b!3708233))

(assert (= (and b!3708232 (not c!640530)) b!3708230))

(assert (= (and b!3708233 res!1508332) b!3708234))

(assert (= (and b!3708230 (not res!1508333)) b!3708231))

(assert (= (and b!3708231 res!1508335) b!3708228))

(assert (= (or b!3708233 b!3708231) bm!267947))

(assert (= (or b!3708234 b!3708228) bm!267946))

(assert (= (or b!3708226 bm!267946) bm!267945))

(declare-fun m!4217123 () Bool)

(assert (=> bm!267945 m!4217123))

(declare-fun m!4217125 () Bool)

(assert (=> b!3708229 m!4217125))

(declare-fun m!4217127 () Bool)

(assert (=> bm!267947 m!4217127))

(assert (=> bm!267923 d!1086715))

(declare-fun d!1086717 () Bool)

(declare-fun c!640532 () Bool)

(assert (=> d!1086717 (= c!640532 ((_ is Nil!39576) (t!302383 s!14922)))))

(declare-fun e!2296950 () (InoxSet C!21824))

(assert (=> d!1086717 (= (content!5719 (t!302383 s!14922)) e!2296950)))

(declare-fun b!3708235 () Bool)

(assert (=> b!3708235 (= e!2296950 ((as const (Array C!21824 Bool)) false))))

(declare-fun b!3708236 () Bool)

(assert (=> b!3708236 (= e!2296950 ((_ map or) (store ((as const (Array C!21824 Bool)) false) (h!44996 (t!302383 s!14922)) true) (content!5719 (t!302383 (t!302383 s!14922)))))))

(assert (= (and d!1086717 c!640532) b!3708235))

(assert (= (and d!1086717 (not c!640532)) b!3708236))

(declare-fun m!4217129 () Bool)

(assert (=> b!3708236 m!4217129))

(declare-fun m!4217131 () Bool)

(assert (=> b!3708236 m!4217131))

(assert (=> d!1086651 d!1086717))

(declare-fun b!3708237 () Bool)

(declare-fun res!1508341 () Bool)

(declare-fun e!2296954 () Bool)

(assert (=> b!3708237 (=> res!1508341 e!2296954)))

(declare-fun e!2296952 () Bool)

(assert (=> b!3708237 (= res!1508341 e!2296952)))

(declare-fun res!1508342 () Bool)

(assert (=> b!3708237 (=> (not res!1508342) (not e!2296952))))

(declare-fun lt!1296641 () Bool)

(assert (=> b!3708237 (= res!1508342 lt!1296641)))

(declare-fun b!3708238 () Bool)

(declare-fun e!2296957 () Bool)

(assert (=> b!3708238 (= e!2296957 (not lt!1296641))))

(declare-fun b!3708239 () Bool)

(assert (=> b!3708239 (= e!2296952 (= (head!8003 (tail!5736 s!14922)) (c!640397 (derivativeStep!3298 r!25965 (head!8003 s!14922)))))))

(declare-fun b!3708241 () Bool)

(declare-fun e!2296956 () Bool)

(declare-fun e!2296951 () Bool)

(assert (=> b!3708241 (= e!2296956 e!2296951)))

(declare-fun res!1508339 () Bool)

(assert (=> b!3708241 (=> res!1508339 e!2296951)))

(declare-fun call!267953 () Bool)

(assert (=> b!3708241 (= res!1508339 call!267953)))

(declare-fun bm!267948 () Bool)

(assert (=> bm!267948 (= call!267953 (isEmpty!23490 (tail!5736 s!14922)))))

(declare-fun b!3708242 () Bool)

(declare-fun res!1508343 () Bool)

(assert (=> b!3708242 (=> res!1508343 e!2296954)))

(assert (=> b!3708242 (= res!1508343 (not ((_ is ElementMatch!10819) (derivativeStep!3298 r!25965 (head!8003 s!14922)))))))

(assert (=> b!3708242 (= e!2296957 e!2296954)))

(declare-fun b!3708243 () Bool)

(declare-fun res!1508344 () Bool)

(assert (=> b!3708243 (=> (not res!1508344) (not e!2296952))))

(assert (=> b!3708243 (= res!1508344 (not call!267953))))

(declare-fun b!3708244 () Bool)

(declare-fun e!2296953 () Bool)

(assert (=> b!3708244 (= e!2296953 (matchR!5282 (derivativeStep!3298 (derivativeStep!3298 r!25965 (head!8003 s!14922)) (head!8003 (tail!5736 s!14922))) (tail!5736 (tail!5736 s!14922))))))

(declare-fun b!3708245 () Bool)

(declare-fun e!2296955 () Bool)

(assert (=> b!3708245 (= e!2296955 (= lt!1296641 call!267953))))

(declare-fun b!3708246 () Bool)

(declare-fun res!1508337 () Bool)

(assert (=> b!3708246 (=> res!1508337 e!2296951)))

(assert (=> b!3708246 (= res!1508337 (not (isEmpty!23490 (tail!5736 (tail!5736 s!14922)))))))

(declare-fun b!3708247 () Bool)

(declare-fun res!1508338 () Bool)

(assert (=> b!3708247 (=> (not res!1508338) (not e!2296952))))

(assert (=> b!3708247 (= res!1508338 (isEmpty!23490 (tail!5736 (tail!5736 s!14922))))))

(declare-fun b!3708248 () Bool)

(assert (=> b!3708248 (= e!2296953 (nullable!3753 (derivativeStep!3298 r!25965 (head!8003 s!14922))))))

(declare-fun b!3708249 () Bool)

(assert (=> b!3708249 (= e!2296955 e!2296957)))

(declare-fun c!640533 () Bool)

(assert (=> b!3708249 (= c!640533 ((_ is EmptyLang!10819) (derivativeStep!3298 r!25965 (head!8003 s!14922))))))

(declare-fun b!3708250 () Bool)

(assert (=> b!3708250 (= e!2296951 (not (= (head!8003 (tail!5736 s!14922)) (c!640397 (derivativeStep!3298 r!25965 (head!8003 s!14922))))))))

(declare-fun b!3708240 () Bool)

(assert (=> b!3708240 (= e!2296954 e!2296956)))

(declare-fun res!1508340 () Bool)

(assert (=> b!3708240 (=> (not res!1508340) (not e!2296956))))

(assert (=> b!3708240 (= res!1508340 (not lt!1296641))))

(declare-fun d!1086719 () Bool)

(assert (=> d!1086719 e!2296955))

(declare-fun c!640535 () Bool)

(assert (=> d!1086719 (= c!640535 ((_ is EmptyExpr!10819) (derivativeStep!3298 r!25965 (head!8003 s!14922))))))

(assert (=> d!1086719 (= lt!1296641 e!2296953)))

(declare-fun c!640534 () Bool)

(assert (=> d!1086719 (= c!640534 (isEmpty!23490 (tail!5736 s!14922)))))

(assert (=> d!1086719 (validRegex!4926 (derivativeStep!3298 r!25965 (head!8003 s!14922)))))

(assert (=> d!1086719 (= (matchR!5282 (derivativeStep!3298 r!25965 (head!8003 s!14922)) (tail!5736 s!14922)) lt!1296641)))

(assert (= (and d!1086719 c!640534) b!3708248))

(assert (= (and d!1086719 (not c!640534)) b!3708244))

(assert (= (and d!1086719 c!640535) b!3708245))

(assert (= (and d!1086719 (not c!640535)) b!3708249))

(assert (= (and b!3708249 c!640533) b!3708238))

(assert (= (and b!3708249 (not c!640533)) b!3708242))

(assert (= (and b!3708242 (not res!1508343)) b!3708237))

(assert (= (and b!3708237 res!1508342) b!3708243))

(assert (= (and b!3708243 res!1508344) b!3708247))

(assert (= (and b!3708247 res!1508338) b!3708239))

(assert (= (and b!3708237 (not res!1508341)) b!3708240))

(assert (= (and b!3708240 res!1508340) b!3708241))

(assert (= (and b!3708241 (not res!1508339)) b!3708246))

(assert (= (and b!3708246 (not res!1508337)) b!3708250))

(assert (= (or b!3708245 b!3708241 b!3708243) bm!267948))

(assert (=> d!1086719 m!4217005))

(assert (=> d!1086719 m!4217007))

(assert (=> d!1086719 m!4217011))

(declare-fun m!4217133 () Bool)

(assert (=> d!1086719 m!4217133))

(assert (=> b!3708250 m!4217005))

(declare-fun m!4217135 () Bool)

(assert (=> b!3708250 m!4217135))

(assert (=> b!3708247 m!4217005))

(declare-fun m!4217137 () Bool)

(assert (=> b!3708247 m!4217137))

(assert (=> b!3708247 m!4217137))

(declare-fun m!4217139 () Bool)

(assert (=> b!3708247 m!4217139))

(assert (=> b!3708248 m!4217011))

(declare-fun m!4217141 () Bool)

(assert (=> b!3708248 m!4217141))

(assert (=> b!3708244 m!4217005))

(assert (=> b!3708244 m!4217135))

(assert (=> b!3708244 m!4217011))

(assert (=> b!3708244 m!4217135))

(declare-fun m!4217143 () Bool)

(assert (=> b!3708244 m!4217143))

(assert (=> b!3708244 m!4217005))

(assert (=> b!3708244 m!4217137))

(assert (=> b!3708244 m!4217143))

(assert (=> b!3708244 m!4217137))

(declare-fun m!4217145 () Bool)

(assert (=> b!3708244 m!4217145))

(assert (=> b!3708239 m!4217005))

(assert (=> b!3708239 m!4217135))

(assert (=> b!3708246 m!4217005))

(assert (=> b!3708246 m!4217137))

(assert (=> b!3708246 m!4217137))

(assert (=> b!3708246 m!4217139))

(assert (=> bm!267948 m!4217005))

(assert (=> bm!267948 m!4217007))

(assert (=> b!3708039 d!1086719))

(declare-fun b!3708252 () Bool)

(declare-fun e!2296962 () Regex!10819)

(declare-fun call!267957 () Regex!10819)

(declare-fun call!267956 () Regex!10819)

(assert (=> b!3708252 (= e!2296962 (Union!10819 call!267957 call!267956))))

(declare-fun b!3708253 () Bool)

(declare-fun e!2296961 () Regex!10819)

(declare-fun call!267955 () Regex!10819)

(assert (=> b!3708253 (= e!2296961 (Union!10819 (Concat!17090 call!267955 (regTwo!22150 r!25965)) EmptyLang!10819))))

(declare-fun b!3708254 () Bool)

(declare-fun c!640536 () Bool)

(assert (=> b!3708254 (= c!640536 (nullable!3753 (regOne!22150 r!25965)))))

(declare-fun e!2296958 () Regex!10819)

(assert (=> b!3708254 (= e!2296958 e!2296961)))

(declare-fun c!640539 () Bool)

(declare-fun bm!267949 () Bool)

(assert (=> bm!267949 (= call!267957 (derivativeStep!3298 (ite c!640539 (regOne!22151 r!25965) (regTwo!22150 r!25965)) (head!8003 s!14922)))))

(declare-fun b!3708255 () Bool)

(declare-fun e!2296960 () Regex!10819)

(assert (=> b!3708255 (= e!2296960 EmptyLang!10819)))

(declare-fun bm!267950 () Bool)

(declare-fun c!640538 () Bool)

(assert (=> bm!267950 (= call!267956 (derivativeStep!3298 (ite c!640539 (regTwo!22151 r!25965) (ite c!640538 (reg!11148 r!25965) (regOne!22150 r!25965))) (head!8003 s!14922)))))

(declare-fun b!3708256 () Bool)

(assert (=> b!3708256 (= c!640539 ((_ is Union!10819) r!25965))))

(declare-fun e!2296959 () Regex!10819)

(assert (=> b!3708256 (= e!2296959 e!2296962)))

(declare-fun b!3708257 () Bool)

(assert (=> b!3708257 (= e!2296962 e!2296958)))

(assert (=> b!3708257 (= c!640538 ((_ is Star!10819) r!25965))))

(declare-fun b!3708251 () Bool)

(assert (=> b!3708251 (= e!2296960 e!2296959)))

(declare-fun c!640537 () Bool)

(assert (=> b!3708251 (= c!640537 ((_ is ElementMatch!10819) r!25965))))

(declare-fun d!1086721 () Bool)

(declare-fun lt!1296642 () Regex!10819)

(assert (=> d!1086721 (validRegex!4926 lt!1296642)))

(assert (=> d!1086721 (= lt!1296642 e!2296960)))

(declare-fun c!640540 () Bool)

(assert (=> d!1086721 (= c!640540 (or ((_ is EmptyExpr!10819) r!25965) ((_ is EmptyLang!10819) r!25965)))))

(assert (=> d!1086721 (validRegex!4926 r!25965)))

(assert (=> d!1086721 (= (derivativeStep!3298 r!25965 (head!8003 s!14922)) lt!1296642)))

(declare-fun bm!267951 () Bool)

(declare-fun call!267954 () Regex!10819)

(assert (=> bm!267951 (= call!267955 call!267954)))

(declare-fun b!3708258 () Bool)

(assert (=> b!3708258 (= e!2296961 (Union!10819 (Concat!17090 call!267955 (regTwo!22150 r!25965)) call!267957))))

(declare-fun bm!267952 () Bool)

(assert (=> bm!267952 (= call!267954 call!267956)))

(declare-fun b!3708259 () Bool)

(assert (=> b!3708259 (= e!2296958 (Concat!17090 call!267954 r!25965))))

(declare-fun b!3708260 () Bool)

(assert (=> b!3708260 (= e!2296959 (ite (= (head!8003 s!14922) (c!640397 r!25965)) EmptyExpr!10819 EmptyLang!10819))))

(assert (= (and d!1086721 c!640540) b!3708255))

(assert (= (and d!1086721 (not c!640540)) b!3708251))

(assert (= (and b!3708251 c!640537) b!3708260))

(assert (= (and b!3708251 (not c!640537)) b!3708256))

(assert (= (and b!3708256 c!640539) b!3708252))

(assert (= (and b!3708256 (not c!640539)) b!3708257))

(assert (= (and b!3708257 c!640538) b!3708259))

(assert (= (and b!3708257 (not c!640538)) b!3708254))

(assert (= (and b!3708254 c!640536) b!3708258))

(assert (= (and b!3708254 (not c!640536)) b!3708253))

(assert (= (or b!3708258 b!3708253) bm!267951))

(assert (= (or b!3708259 bm!267951) bm!267952))

(assert (= (or b!3708252 b!3708258) bm!267949))

(assert (= (or b!3708252 bm!267952) bm!267950))

(assert (=> b!3708254 m!4216903))

(assert (=> bm!267949 m!4217003))

(declare-fun m!4217147 () Bool)

(assert (=> bm!267949 m!4217147))

(assert (=> bm!267950 m!4217003))

(declare-fun m!4217149 () Bool)

(assert (=> bm!267950 m!4217149))

(declare-fun m!4217151 () Bool)

(assert (=> d!1086721 m!4217151))

(assert (=> d!1086721 m!4216843))

(assert (=> b!3708039 d!1086721))

(declare-fun d!1086723 () Bool)

(assert (=> d!1086723 (= (head!8003 s!14922) (h!44996 s!14922))))

(assert (=> b!3708039 d!1086723))

(assert (=> b!3708039 d!1086683))

(declare-fun d!1086725 () Bool)

(assert (=> d!1086725 (= (isEmpty!23490 (tail!5736 (t!302383 s!14922))) ((_ is Nil!39576) (tail!5736 (t!302383 s!14922))))))

(assert (=> b!3708067 d!1086725))

(declare-fun d!1086727 () Bool)

(assert (=> d!1086727 (= (tail!5736 (t!302383 s!14922)) (t!302383 (t!302383 s!14922)))))

(assert (=> b!3708067 d!1086727))

(assert (=> b!3708068 d!1086725))

(assert (=> b!3708068 d!1086727))

(declare-fun d!1086729 () Bool)

(declare-fun e!2296964 () Bool)

(assert (=> d!1086729 e!2296964))

(declare-fun res!1508346 () Bool)

(assert (=> d!1086729 (=> (not res!1508346) (not e!2296964))))

(declare-fun lt!1296643 () List!39700)

(assert (=> d!1086729 (= res!1508346 (= (content!5719 lt!1296643) ((_ map or) (content!5719 (ite c!640463 call!267904 call!267906)) (content!5719 (ite c!640463 call!267906 call!267904)))))))

(declare-fun e!2296963 () List!39700)

(assert (=> d!1086729 (= lt!1296643 e!2296963)))

(declare-fun c!640541 () Bool)

(assert (=> d!1086729 (= c!640541 ((_ is Nil!39576) (ite c!640463 call!267904 call!267906)))))

(assert (=> d!1086729 (= (++!9782 (ite c!640463 call!267904 call!267906) (ite c!640463 call!267906 call!267904)) lt!1296643)))

(declare-fun b!3708263 () Bool)

(declare-fun res!1508345 () Bool)

(assert (=> b!3708263 (=> (not res!1508345) (not e!2296964))))

(assert (=> b!3708263 (= res!1508345 (= (size!30009 lt!1296643) (+ (size!30009 (ite c!640463 call!267904 call!267906)) (size!30009 (ite c!640463 call!267906 call!267904)))))))

(declare-fun b!3708264 () Bool)

(assert (=> b!3708264 (= e!2296964 (or (not (= (ite c!640463 call!267906 call!267904) Nil!39576)) (= lt!1296643 (ite c!640463 call!267904 call!267906))))))

(declare-fun b!3708261 () Bool)

(assert (=> b!3708261 (= e!2296963 (ite c!640463 call!267906 call!267904))))

(declare-fun b!3708262 () Bool)

(assert (=> b!3708262 (= e!2296963 (Cons!39576 (h!44996 (ite c!640463 call!267904 call!267906)) (++!9782 (t!302383 (ite c!640463 call!267904 call!267906)) (ite c!640463 call!267906 call!267904))))))

(assert (= (and d!1086729 c!640541) b!3708261))

(assert (= (and d!1086729 (not c!640541)) b!3708262))

(assert (= (and d!1086729 res!1508346) b!3708263))

(assert (= (and b!3708263 res!1508345) b!3708264))

(declare-fun m!4217153 () Bool)

(assert (=> d!1086729 m!4217153))

(declare-fun m!4217155 () Bool)

(assert (=> d!1086729 m!4217155))

(declare-fun m!4217157 () Bool)

(assert (=> d!1086729 m!4217157))

(declare-fun m!4217159 () Bool)

(assert (=> b!3708263 m!4217159))

(declare-fun m!4217161 () Bool)

(assert (=> b!3708263 m!4217161))

(declare-fun m!4217163 () Bool)

(assert (=> b!3708263 m!4217163))

(declare-fun m!4217165 () Bool)

(assert (=> b!3708262 m!4217165))

(assert (=> bm!267900 d!1086729))

(declare-fun b!3708265 () Bool)

(declare-fun e!2296969 () Bool)

(declare-fun call!267959 () Bool)

(assert (=> b!3708265 (= e!2296969 call!267959)))

(declare-fun b!3708266 () Bool)

(declare-fun e!2296968 () Bool)

(declare-fun e!2296971 () Bool)

(assert (=> b!3708266 (= e!2296968 e!2296971)))

(declare-fun c!640543 () Bool)

(assert (=> b!3708266 (= c!640543 ((_ is Star!10819) (ite c!640503 (reg!11148 r!25965) (ite c!640502 (regTwo!22151 r!25965) (regTwo!22150 r!25965)))))))

(declare-fun c!640542 () Bool)

(declare-fun bm!267953 () Bool)

(assert (=> bm!267953 (= call!267959 (validRegex!4926 (ite c!640543 (reg!11148 (ite c!640503 (reg!11148 r!25965) (ite c!640502 (regTwo!22151 r!25965) (regTwo!22150 r!25965)))) (ite c!640542 (regTwo!22151 (ite c!640503 (reg!11148 r!25965) (ite c!640502 (regTwo!22151 r!25965) (regTwo!22150 r!25965)))) (regTwo!22150 (ite c!640503 (reg!11148 r!25965) (ite c!640502 (regTwo!22151 r!25965) (regTwo!22150 r!25965))))))))))

(declare-fun d!1086731 () Bool)

(declare-fun res!1508349 () Bool)

(assert (=> d!1086731 (=> res!1508349 e!2296968)))

(assert (=> d!1086731 (= res!1508349 ((_ is ElementMatch!10819) (ite c!640503 (reg!11148 r!25965) (ite c!640502 (regTwo!22151 r!25965) (regTwo!22150 r!25965)))))))

(assert (=> d!1086731 (= (validRegex!4926 (ite c!640503 (reg!11148 r!25965) (ite c!640502 (regTwo!22151 r!25965) (regTwo!22150 r!25965)))) e!2296968)))

(declare-fun b!3708267 () Bool)

(declare-fun e!2296970 () Bool)

(declare-fun call!267958 () Bool)

(assert (=> b!3708267 (= e!2296970 call!267958)))

(declare-fun b!3708268 () Bool)

(assert (=> b!3708268 (= e!2296971 e!2296969)))

(declare-fun res!1508351 () Bool)

(assert (=> b!3708268 (= res!1508351 (not (nullable!3753 (reg!11148 (ite c!640503 (reg!11148 r!25965) (ite c!640502 (regTwo!22151 r!25965) (regTwo!22150 r!25965)))))))))

(assert (=> b!3708268 (=> (not res!1508351) (not e!2296969))))

(declare-fun b!3708269 () Bool)

(declare-fun res!1508348 () Bool)

(declare-fun e!2296966 () Bool)

(assert (=> b!3708269 (=> res!1508348 e!2296966)))

(assert (=> b!3708269 (= res!1508348 (not ((_ is Concat!17090) (ite c!640503 (reg!11148 r!25965) (ite c!640502 (regTwo!22151 r!25965) (regTwo!22150 r!25965))))))))

(declare-fun e!2296965 () Bool)

(assert (=> b!3708269 (= e!2296965 e!2296966)))

(declare-fun bm!267954 () Bool)

(assert (=> bm!267954 (= call!267958 call!267959)))

(declare-fun b!3708270 () Bool)

(assert (=> b!3708270 (= e!2296966 e!2296970)))

(declare-fun res!1508350 () Bool)

(assert (=> b!3708270 (=> (not res!1508350) (not e!2296970))))

(declare-fun call!267960 () Bool)

(assert (=> b!3708270 (= res!1508350 call!267960)))

(declare-fun b!3708271 () Bool)

(assert (=> b!3708271 (= e!2296971 e!2296965)))

(assert (=> b!3708271 (= c!640542 ((_ is Union!10819) (ite c!640503 (reg!11148 r!25965) (ite c!640502 (regTwo!22151 r!25965) (regTwo!22150 r!25965)))))))

(declare-fun b!3708272 () Bool)

(declare-fun res!1508347 () Bool)

(declare-fun e!2296967 () Bool)

(assert (=> b!3708272 (=> (not res!1508347) (not e!2296967))))

(assert (=> b!3708272 (= res!1508347 call!267960)))

(assert (=> b!3708272 (= e!2296965 e!2296967)))

(declare-fun bm!267955 () Bool)

(assert (=> bm!267955 (= call!267960 (validRegex!4926 (ite c!640542 (regOne!22151 (ite c!640503 (reg!11148 r!25965) (ite c!640502 (regTwo!22151 r!25965) (regTwo!22150 r!25965)))) (regOne!22150 (ite c!640503 (reg!11148 r!25965) (ite c!640502 (regTwo!22151 r!25965) (regTwo!22150 r!25965)))))))))

(declare-fun b!3708273 () Bool)

(assert (=> b!3708273 (= e!2296967 call!267958)))

(assert (= (and d!1086731 (not res!1508349)) b!3708266))

(assert (= (and b!3708266 c!640543) b!3708268))

(assert (= (and b!3708266 (not c!640543)) b!3708271))

(assert (= (and b!3708268 res!1508351) b!3708265))

(assert (= (and b!3708271 c!640542) b!3708272))

(assert (= (and b!3708271 (not c!640542)) b!3708269))

(assert (= (and b!3708272 res!1508347) b!3708273))

(assert (= (and b!3708269 (not res!1508348)) b!3708270))

(assert (= (and b!3708270 res!1508350) b!3708267))

(assert (= (or b!3708272 b!3708270) bm!267955))

(assert (= (or b!3708273 b!3708267) bm!267954))

(assert (= (or b!3708265 bm!267954) bm!267953))

(declare-fun m!4217167 () Bool)

(assert (=> bm!267953 m!4217167))

(declare-fun m!4217169 () Bool)

(assert (=> b!3708268 m!4217169))

(declare-fun m!4217171 () Bool)

(assert (=> bm!267955 m!4217171))

(assert (=> bm!267921 d!1086731))

(declare-fun d!1086733 () Bool)

(assert (=> d!1086733 (= (nullable!3753 lt!1296594) (nullableFct!1051 lt!1296594))))

(declare-fun bs!574690 () Bool)

(assert (= bs!574690 d!1086733))

(declare-fun m!4217173 () Bool)

(assert (=> bs!574690 m!4217173))

(assert (=> b!3708069 d!1086733))

(declare-fun d!1086735 () Bool)

(assert (=> d!1086735 (= (nullable!3753 (reg!11148 r!25965)) (nullableFct!1051 (reg!11148 r!25965)))))

(declare-fun bs!574691 () Bool)

(assert (= bs!574691 d!1086735))

(declare-fun m!4217175 () Bool)

(assert (=> bs!574691 m!4217175))

(assert (=> b!3708110 d!1086735))

(assert (=> b!3708071 d!1086689))

(assert (=> b!3708034 d!1086723))

(declare-fun d!1086737 () Bool)

(declare-fun c!640544 () Bool)

(assert (=> d!1086737 (= c!640544 ((_ is Nil!39576) (usedCharacters!1082 r!25965)))))

(declare-fun e!2296972 () (InoxSet C!21824))

(assert (=> d!1086737 (= (content!5719 (usedCharacters!1082 r!25965)) e!2296972)))

(declare-fun b!3708274 () Bool)

(assert (=> b!3708274 (= e!2296972 ((as const (Array C!21824 Bool)) false))))

(declare-fun b!3708275 () Bool)

(assert (=> b!3708275 (= e!2296972 ((_ map or) (store ((as const (Array C!21824 Bool)) false) (h!44996 (usedCharacters!1082 r!25965)) true) (content!5719 (t!302383 (usedCharacters!1082 r!25965)))))))

(assert (= (and d!1086737 c!640544) b!3708274))

(assert (= (and d!1086737 (not c!640544)) b!3708275))

(declare-fun m!4217177 () Bool)

(assert (=> b!3708275 m!4217177))

(assert (=> b!3708275 m!4217049))

(assert (=> d!1086653 d!1086737))

(declare-fun d!1086739 () Bool)

(declare-fun c!640545 () Bool)

(assert (=> d!1086739 (= c!640545 ((_ is Nil!39576) (usedCharacters!1082 lt!1296594)))))

(declare-fun e!2296973 () (InoxSet C!21824))

(assert (=> d!1086739 (= (content!5719 (usedCharacters!1082 lt!1296594)) e!2296973)))

(declare-fun b!3708276 () Bool)

(assert (=> b!3708276 (= e!2296973 ((as const (Array C!21824 Bool)) false))))

(declare-fun b!3708277 () Bool)

(assert (=> b!3708277 (= e!2296973 ((_ map or) (store ((as const (Array C!21824 Bool)) false) (h!44996 (usedCharacters!1082 lt!1296594)) true) (content!5719 (t!302383 (usedCharacters!1082 lt!1296594)))))))

(assert (= (and d!1086739 c!640545) b!3708276))

(assert (= (and d!1086739 (not c!640545)) b!3708277))

(declare-fun m!4217179 () Bool)

(assert (=> b!3708277 m!4217179))

(assert (=> b!3708277 m!4217071))

(assert (=> d!1086623 d!1086739))

(declare-fun d!1086741 () Bool)

(assert (=> d!1086741 (= (nullable!3753 (regOne!22150 r!25965)) (nullableFct!1051 (regOne!22150 r!25965)))))

(declare-fun bs!574692 () Bool)

(assert (= bs!574692 d!1086741))

(declare-fun m!4217181 () Bool)

(assert (=> bs!574692 m!4217181))

(assert (=> b!3707816 d!1086741))

(assert (=> b!3708045 d!1086723))

(assert (=> bm!267920 d!1086687))

(assert (=> b!3707935 d!1086651))

(declare-fun b!3708279 () Bool)

(declare-fun e!2296978 () Regex!10819)

(declare-fun call!267964 () Regex!10819)

(declare-fun call!267963 () Regex!10819)

(assert (=> b!3708279 (= e!2296978 (Union!10819 call!267964 call!267963))))

(declare-fun e!2296977 () Regex!10819)

(declare-fun call!267962 () Regex!10819)

(declare-fun b!3708280 () Bool)

(assert (=> b!3708280 (= e!2296977 (Union!10819 (Concat!17090 call!267962 (regTwo!22150 (ite c!640428 (regOne!22151 r!25965) (regTwo!22150 r!25965)))) EmptyLang!10819))))

(declare-fun b!3708281 () Bool)

(declare-fun c!640546 () Bool)

(assert (=> b!3708281 (= c!640546 (nullable!3753 (regOne!22150 (ite c!640428 (regOne!22151 r!25965) (regTwo!22150 r!25965)))))))

(declare-fun e!2296974 () Regex!10819)

(assert (=> b!3708281 (= e!2296974 e!2296977)))

(declare-fun c!640549 () Bool)

(declare-fun bm!267956 () Bool)

(assert (=> bm!267956 (= call!267964 (derivativeStep!3298 (ite c!640549 (regOne!22151 (ite c!640428 (regOne!22151 r!25965) (regTwo!22150 r!25965))) (regTwo!22150 (ite c!640428 (regOne!22151 r!25965) (regTwo!22150 r!25965)))) (h!44996 s!14922)))))

(declare-fun b!3708282 () Bool)

(declare-fun e!2296976 () Regex!10819)

(assert (=> b!3708282 (= e!2296976 EmptyLang!10819)))

(declare-fun bm!267957 () Bool)

(declare-fun c!640548 () Bool)

(assert (=> bm!267957 (= call!267963 (derivativeStep!3298 (ite c!640549 (regTwo!22151 (ite c!640428 (regOne!22151 r!25965) (regTwo!22150 r!25965))) (ite c!640548 (reg!11148 (ite c!640428 (regOne!22151 r!25965) (regTwo!22150 r!25965))) (regOne!22150 (ite c!640428 (regOne!22151 r!25965) (regTwo!22150 r!25965))))) (h!44996 s!14922)))))

(declare-fun b!3708283 () Bool)

(assert (=> b!3708283 (= c!640549 ((_ is Union!10819) (ite c!640428 (regOne!22151 r!25965) (regTwo!22150 r!25965))))))

(declare-fun e!2296975 () Regex!10819)

(assert (=> b!3708283 (= e!2296975 e!2296978)))

(declare-fun b!3708284 () Bool)

(assert (=> b!3708284 (= e!2296978 e!2296974)))

(assert (=> b!3708284 (= c!640548 ((_ is Star!10819) (ite c!640428 (regOne!22151 r!25965) (regTwo!22150 r!25965))))))

(declare-fun b!3708278 () Bool)

(assert (=> b!3708278 (= e!2296976 e!2296975)))

(declare-fun c!640547 () Bool)

(assert (=> b!3708278 (= c!640547 ((_ is ElementMatch!10819) (ite c!640428 (regOne!22151 r!25965) (regTwo!22150 r!25965))))))

(declare-fun d!1086743 () Bool)

(declare-fun lt!1296644 () Regex!10819)

(assert (=> d!1086743 (validRegex!4926 lt!1296644)))

(assert (=> d!1086743 (= lt!1296644 e!2296976)))

(declare-fun c!640550 () Bool)

(assert (=> d!1086743 (= c!640550 (or ((_ is EmptyExpr!10819) (ite c!640428 (regOne!22151 r!25965) (regTwo!22150 r!25965))) ((_ is EmptyLang!10819) (ite c!640428 (regOne!22151 r!25965) (regTwo!22150 r!25965)))))))

(assert (=> d!1086743 (validRegex!4926 (ite c!640428 (regOne!22151 r!25965) (regTwo!22150 r!25965)))))

(assert (=> d!1086743 (= (derivativeStep!3298 (ite c!640428 (regOne!22151 r!25965) (regTwo!22150 r!25965)) (h!44996 s!14922)) lt!1296644)))

(declare-fun bm!267958 () Bool)

(declare-fun call!267961 () Regex!10819)

(assert (=> bm!267958 (= call!267962 call!267961)))

(declare-fun b!3708285 () Bool)

(assert (=> b!3708285 (= e!2296977 (Union!10819 (Concat!17090 call!267962 (regTwo!22150 (ite c!640428 (regOne!22151 r!25965) (regTwo!22150 r!25965)))) call!267964))))

(declare-fun bm!267959 () Bool)

(assert (=> bm!267959 (= call!267961 call!267963)))

(declare-fun b!3708286 () Bool)

(assert (=> b!3708286 (= e!2296974 (Concat!17090 call!267961 (ite c!640428 (regOne!22151 r!25965) (regTwo!22150 r!25965))))))

(declare-fun b!3708287 () Bool)

(assert (=> b!3708287 (= e!2296975 (ite (= (h!44996 s!14922) (c!640397 (ite c!640428 (regOne!22151 r!25965) (regTwo!22150 r!25965)))) EmptyExpr!10819 EmptyLang!10819))))

(assert (= (and d!1086743 c!640550) b!3708282))

(assert (= (and d!1086743 (not c!640550)) b!3708278))

(assert (= (and b!3708278 c!640547) b!3708287))

(assert (= (and b!3708278 (not c!640547)) b!3708283))

(assert (= (and b!3708283 c!640549) b!3708279))

(assert (= (and b!3708283 (not c!640549)) b!3708284))

(assert (= (and b!3708284 c!640548) b!3708286))

(assert (= (and b!3708284 (not c!640548)) b!3708281))

(assert (= (and b!3708281 c!640546) b!3708285))

(assert (= (and b!3708281 (not c!640546)) b!3708280))

(assert (= (or b!3708285 b!3708280) bm!267958))

(assert (= (or b!3708286 bm!267958) bm!267959))

(assert (= (or b!3708279 b!3708285) bm!267956))

(assert (= (or b!3708279 bm!267959) bm!267957))

(declare-fun m!4217183 () Bool)

(assert (=> b!3708281 m!4217183))

(declare-fun m!4217185 () Bool)

(assert (=> bm!267956 m!4217185))

(declare-fun m!4217187 () Bool)

(assert (=> bm!267957 m!4217187))

(declare-fun m!4217189 () Bool)

(assert (=> d!1086743 m!4217189))

(declare-fun m!4217191 () Bool)

(assert (=> d!1086743 m!4217191))

(assert (=> bm!267856 d!1086743))

(declare-fun d!1086745 () Bool)

(declare-fun lt!1296645 () Bool)

(assert (=> d!1086745 (= lt!1296645 (select (content!5719 (t!302383 (t!302383 s!14922))) c!13398))))

(declare-fun e!2296980 () Bool)

(assert (=> d!1086745 (= lt!1296645 e!2296980)))

(declare-fun res!1508352 () Bool)

(assert (=> d!1086745 (=> (not res!1508352) (not e!2296980))))

(assert (=> d!1086745 (= res!1508352 ((_ is Cons!39576) (t!302383 (t!302383 s!14922))))))

(assert (=> d!1086745 (= (contains!7912 (t!302383 (t!302383 s!14922)) c!13398) lt!1296645)))

(declare-fun b!3708288 () Bool)

(declare-fun e!2296979 () Bool)

(assert (=> b!3708288 (= e!2296980 e!2296979)))

(declare-fun res!1508353 () Bool)

(assert (=> b!3708288 (=> res!1508353 e!2296979)))

(assert (=> b!3708288 (= res!1508353 (= (h!44996 (t!302383 (t!302383 s!14922))) c!13398))))

(declare-fun b!3708289 () Bool)

(assert (=> b!3708289 (= e!2296979 (contains!7912 (t!302383 (t!302383 (t!302383 s!14922))) c!13398))))

(assert (= (and d!1086745 res!1508352) b!3708288))

(assert (= (and b!3708288 (not res!1508353)) b!3708289))

(assert (=> d!1086745 m!4217131))

(declare-fun m!4217193 () Bool)

(assert (=> d!1086745 m!4217193))

(declare-fun m!4217195 () Bool)

(assert (=> b!3708289 m!4217195))

(assert (=> b!3707937 d!1086745))

(declare-fun c!640552 () Bool)

(declare-fun bm!267960 () Bool)

(declare-fun call!267968 () List!39700)

(assert (=> bm!267960 (= call!267968 (usedCharacters!1082 (ite c!640552 (regTwo!22151 (ite c!640463 (regTwo!22151 lt!1296594) (regOne!22150 lt!1296594))) (regOne!22150 (ite c!640463 (regTwo!22151 lt!1296594) (regOne!22150 lt!1296594))))))))

(declare-fun b!3708290 () Bool)

(declare-fun e!2296984 () List!39700)

(assert (=> b!3708290 (= e!2296984 Nil!39576)))

(declare-fun d!1086747 () Bool)

(declare-fun c!640551 () Bool)

(assert (=> d!1086747 (= c!640551 (or ((_ is EmptyExpr!10819) (ite c!640463 (regTwo!22151 lt!1296594) (regOne!22150 lt!1296594))) ((_ is EmptyLang!10819) (ite c!640463 (regTwo!22151 lt!1296594) (regOne!22150 lt!1296594)))))))

(assert (=> d!1086747 (= (usedCharacters!1082 (ite c!640463 (regTwo!22151 lt!1296594) (regOne!22150 lt!1296594))) e!2296984)))

(declare-fun call!267967 () List!39700)

(declare-fun bm!267961 () Bool)

(declare-fun c!640553 () Bool)

(assert (=> bm!267961 (= call!267967 (usedCharacters!1082 (ite c!640553 (reg!11148 (ite c!640463 (regTwo!22151 lt!1296594) (regOne!22150 lt!1296594))) (ite c!640552 (regOne!22151 (ite c!640463 (regTwo!22151 lt!1296594) (regOne!22150 lt!1296594))) (regTwo!22150 (ite c!640463 (regTwo!22151 lt!1296594) (regOne!22150 lt!1296594)))))))))

(declare-fun b!3708291 () Bool)

(declare-fun e!2296982 () List!39700)

(declare-fun call!267965 () List!39700)

(assert (=> b!3708291 (= e!2296982 call!267965)))

(declare-fun call!267966 () List!39700)

(declare-fun bm!267962 () Bool)

(assert (=> bm!267962 (= call!267965 (++!9782 (ite c!640552 call!267966 call!267968) (ite c!640552 call!267968 call!267966)))))

(declare-fun bm!267963 () Bool)

(assert (=> bm!267963 (= call!267966 call!267967)))

(declare-fun b!3708292 () Bool)

(declare-fun e!2296981 () List!39700)

(assert (=> b!3708292 (= e!2296981 e!2296982)))

(assert (=> b!3708292 (= c!640552 ((_ is Union!10819) (ite c!640463 (regTwo!22151 lt!1296594) (regOne!22150 lt!1296594))))))

(declare-fun b!3708293 () Bool)

(assert (=> b!3708293 (= e!2296981 call!267967)))

(declare-fun b!3708294 () Bool)

(declare-fun e!2296983 () List!39700)

(assert (=> b!3708294 (= e!2296984 e!2296983)))

(declare-fun c!640554 () Bool)

(assert (=> b!3708294 (= c!640554 ((_ is ElementMatch!10819) (ite c!640463 (regTwo!22151 lt!1296594) (regOne!22150 lt!1296594))))))

(declare-fun b!3708295 () Bool)

(assert (=> b!3708295 (= e!2296983 (Cons!39576 (c!640397 (ite c!640463 (regTwo!22151 lt!1296594) (regOne!22150 lt!1296594))) Nil!39576))))

(declare-fun b!3708296 () Bool)

(assert (=> b!3708296 (= e!2296982 call!267965)))

(declare-fun b!3708297 () Bool)

(assert (=> b!3708297 (= c!640553 ((_ is Star!10819) (ite c!640463 (regTwo!22151 lt!1296594) (regOne!22150 lt!1296594))))))

(assert (=> b!3708297 (= e!2296983 e!2296981)))

(assert (= (and d!1086747 c!640551) b!3708290))

(assert (= (and d!1086747 (not c!640551)) b!3708294))

(assert (= (and b!3708294 c!640554) b!3708295))

(assert (= (and b!3708294 (not c!640554)) b!3708297))

(assert (= (and b!3708297 c!640553) b!3708293))

(assert (= (and b!3708297 (not c!640553)) b!3708292))

(assert (= (and b!3708292 c!640552) b!3708291))

(assert (= (and b!3708292 (not c!640552)) b!3708296))

(assert (= (or b!3708291 b!3708296) bm!267963))

(assert (= (or b!3708291 b!3708296) bm!267960))

(assert (= (or b!3708291 b!3708296) bm!267962))

(assert (= (or b!3708293 bm!267963) bm!267961))

(declare-fun m!4217197 () Bool)

(assert (=> bm!267960 m!4217197))

(declare-fun m!4217199 () Bool)

(assert (=> bm!267961 m!4217199))

(declare-fun m!4217201 () Bool)

(assert (=> bm!267962 m!4217201))

(assert (=> bm!267898 d!1086747))

(declare-fun b!3708298 () Bool)

(declare-fun res!1508358 () Bool)

(declare-fun e!2296988 () Bool)

(assert (=> b!3708298 (=> res!1508358 e!2296988)))

(declare-fun e!2296986 () Bool)

(assert (=> b!3708298 (= res!1508358 e!2296986)))

(declare-fun res!1508359 () Bool)

(assert (=> b!3708298 (=> (not res!1508359) (not e!2296986))))

(declare-fun lt!1296646 () Bool)

(assert (=> b!3708298 (= res!1508359 lt!1296646)))

(declare-fun b!3708299 () Bool)

(declare-fun e!2296991 () Bool)

(assert (=> b!3708299 (= e!2296991 (not lt!1296646))))

(declare-fun b!3708300 () Bool)

(assert (=> b!3708300 (= e!2296986 (= (head!8003 (tail!5736 (t!302383 s!14922))) (c!640397 (derivativeStep!3298 lt!1296594 (head!8003 (t!302383 s!14922))))))))

(declare-fun b!3708302 () Bool)

(declare-fun e!2296990 () Bool)

(declare-fun e!2296985 () Bool)

(assert (=> b!3708302 (= e!2296990 e!2296985)))

(declare-fun res!1508356 () Bool)

(assert (=> b!3708302 (=> res!1508356 e!2296985)))

(declare-fun call!267969 () Bool)

(assert (=> b!3708302 (= res!1508356 call!267969)))

(declare-fun bm!267964 () Bool)

(assert (=> bm!267964 (= call!267969 (isEmpty!23490 (tail!5736 (t!302383 s!14922))))))

(declare-fun b!3708303 () Bool)

(declare-fun res!1508360 () Bool)

(assert (=> b!3708303 (=> res!1508360 e!2296988)))

(assert (=> b!3708303 (= res!1508360 (not ((_ is ElementMatch!10819) (derivativeStep!3298 lt!1296594 (head!8003 (t!302383 s!14922))))))))

(assert (=> b!3708303 (= e!2296991 e!2296988)))

(declare-fun b!3708304 () Bool)

(declare-fun res!1508361 () Bool)

(assert (=> b!3708304 (=> (not res!1508361) (not e!2296986))))

(assert (=> b!3708304 (= res!1508361 (not call!267969))))

(declare-fun b!3708305 () Bool)

(declare-fun e!2296987 () Bool)

(assert (=> b!3708305 (= e!2296987 (matchR!5282 (derivativeStep!3298 (derivativeStep!3298 lt!1296594 (head!8003 (t!302383 s!14922))) (head!8003 (tail!5736 (t!302383 s!14922)))) (tail!5736 (tail!5736 (t!302383 s!14922)))))))

(declare-fun b!3708306 () Bool)

(declare-fun e!2296989 () Bool)

(assert (=> b!3708306 (= e!2296989 (= lt!1296646 call!267969))))

(declare-fun b!3708307 () Bool)

(declare-fun res!1508354 () Bool)

(assert (=> b!3708307 (=> res!1508354 e!2296985)))

(assert (=> b!3708307 (= res!1508354 (not (isEmpty!23490 (tail!5736 (tail!5736 (t!302383 s!14922))))))))

(declare-fun b!3708308 () Bool)

(declare-fun res!1508355 () Bool)

(assert (=> b!3708308 (=> (not res!1508355) (not e!2296986))))

(assert (=> b!3708308 (= res!1508355 (isEmpty!23490 (tail!5736 (tail!5736 (t!302383 s!14922)))))))

(declare-fun b!3708309 () Bool)

(assert (=> b!3708309 (= e!2296987 (nullable!3753 (derivativeStep!3298 lt!1296594 (head!8003 (t!302383 s!14922)))))))

(declare-fun b!3708310 () Bool)

(assert (=> b!3708310 (= e!2296989 e!2296991)))

(declare-fun c!640555 () Bool)

(assert (=> b!3708310 (= c!640555 ((_ is EmptyLang!10819) (derivativeStep!3298 lt!1296594 (head!8003 (t!302383 s!14922)))))))

(declare-fun b!3708311 () Bool)

(assert (=> b!3708311 (= e!2296985 (not (= (head!8003 (tail!5736 (t!302383 s!14922))) (c!640397 (derivativeStep!3298 lt!1296594 (head!8003 (t!302383 s!14922)))))))))

(declare-fun b!3708301 () Bool)

(assert (=> b!3708301 (= e!2296988 e!2296990)))

(declare-fun res!1508357 () Bool)

(assert (=> b!3708301 (=> (not res!1508357) (not e!2296990))))

(assert (=> b!3708301 (= res!1508357 (not lt!1296646))))

(declare-fun d!1086749 () Bool)

(assert (=> d!1086749 e!2296989))

(declare-fun c!640557 () Bool)

(assert (=> d!1086749 (= c!640557 ((_ is EmptyExpr!10819) (derivativeStep!3298 lt!1296594 (head!8003 (t!302383 s!14922)))))))

(assert (=> d!1086749 (= lt!1296646 e!2296987)))

(declare-fun c!640556 () Bool)

(assert (=> d!1086749 (= c!640556 (isEmpty!23490 (tail!5736 (t!302383 s!14922))))))

(assert (=> d!1086749 (validRegex!4926 (derivativeStep!3298 lt!1296594 (head!8003 (t!302383 s!14922))))))

(assert (=> d!1086749 (= (matchR!5282 (derivativeStep!3298 lt!1296594 (head!8003 (t!302383 s!14922))) (tail!5736 (t!302383 s!14922))) lt!1296646)))

(assert (= (and d!1086749 c!640556) b!3708309))

(assert (= (and d!1086749 (not c!640556)) b!3708305))

(assert (= (and d!1086749 c!640557) b!3708306))

(assert (= (and d!1086749 (not c!640557)) b!3708310))

(assert (= (and b!3708310 c!640555) b!3708299))

(assert (= (and b!3708310 (not c!640555)) b!3708303))

(assert (= (and b!3708303 (not res!1508360)) b!3708298))

(assert (= (and b!3708298 res!1508359) b!3708304))

(assert (= (and b!3708304 res!1508361) b!3708308))

(assert (= (and b!3708308 res!1508355) b!3708300))

(assert (= (and b!3708298 (not res!1508358)) b!3708301))

(assert (= (and b!3708301 res!1508357) b!3708302))

(assert (= (and b!3708302 (not res!1508356)) b!3708307))

(assert (= (and b!3708307 (not res!1508354)) b!3708311))

(assert (= (or b!3708306 b!3708302 b!3708304) bm!267964))

(assert (=> d!1086749 m!4217031))

(assert (=> d!1086749 m!4217033))

(assert (=> d!1086749 m!4217037))

(declare-fun m!4217203 () Bool)

(assert (=> d!1086749 m!4217203))

(assert (=> b!3708311 m!4217031))

(declare-fun m!4217205 () Bool)

(assert (=> b!3708311 m!4217205))

(assert (=> b!3708308 m!4217031))

(declare-fun m!4217207 () Bool)

(assert (=> b!3708308 m!4217207))

(assert (=> b!3708308 m!4217207))

(declare-fun m!4217209 () Bool)

(assert (=> b!3708308 m!4217209))

(assert (=> b!3708309 m!4217037))

(declare-fun m!4217211 () Bool)

(assert (=> b!3708309 m!4217211))

(assert (=> b!3708305 m!4217031))

(assert (=> b!3708305 m!4217205))

(assert (=> b!3708305 m!4217037))

(assert (=> b!3708305 m!4217205))

(declare-fun m!4217213 () Bool)

(assert (=> b!3708305 m!4217213))

(assert (=> b!3708305 m!4217031))

(assert (=> b!3708305 m!4217207))

(assert (=> b!3708305 m!4217213))

(assert (=> b!3708305 m!4217207))

(declare-fun m!4217215 () Bool)

(assert (=> b!3708305 m!4217215))

(assert (=> b!3708300 m!4217031))

(assert (=> b!3708300 m!4217205))

(assert (=> b!3708307 m!4217031))

(assert (=> b!3708307 m!4217207))

(assert (=> b!3708307 m!4217207))

(assert (=> b!3708307 m!4217209))

(assert (=> bm!267964 m!4217031))

(assert (=> bm!267964 m!4217033))

(assert (=> b!3708065 d!1086749))

(declare-fun b!3708313 () Bool)

(declare-fun e!2296996 () Regex!10819)

(declare-fun call!267973 () Regex!10819)

(declare-fun call!267972 () Regex!10819)

(assert (=> b!3708313 (= e!2296996 (Union!10819 call!267973 call!267972))))

(declare-fun b!3708314 () Bool)

(declare-fun e!2296995 () Regex!10819)

(declare-fun call!267971 () Regex!10819)

(assert (=> b!3708314 (= e!2296995 (Union!10819 (Concat!17090 call!267971 (regTwo!22150 lt!1296594)) EmptyLang!10819))))

(declare-fun b!3708315 () Bool)

(declare-fun c!640558 () Bool)

(assert (=> b!3708315 (= c!640558 (nullable!3753 (regOne!22150 lt!1296594)))))

(declare-fun e!2296992 () Regex!10819)

(assert (=> b!3708315 (= e!2296992 e!2296995)))

(declare-fun bm!267965 () Bool)

(declare-fun c!640561 () Bool)

(assert (=> bm!267965 (= call!267973 (derivativeStep!3298 (ite c!640561 (regOne!22151 lt!1296594) (regTwo!22150 lt!1296594)) (head!8003 (t!302383 s!14922))))))

(declare-fun b!3708316 () Bool)

(declare-fun e!2296994 () Regex!10819)

(assert (=> b!3708316 (= e!2296994 EmptyLang!10819)))

(declare-fun bm!267966 () Bool)

(declare-fun c!640560 () Bool)

(assert (=> bm!267966 (= call!267972 (derivativeStep!3298 (ite c!640561 (regTwo!22151 lt!1296594) (ite c!640560 (reg!11148 lt!1296594) (regOne!22150 lt!1296594))) (head!8003 (t!302383 s!14922))))))

(declare-fun b!3708317 () Bool)

(assert (=> b!3708317 (= c!640561 ((_ is Union!10819) lt!1296594))))

(declare-fun e!2296993 () Regex!10819)

(assert (=> b!3708317 (= e!2296993 e!2296996)))

(declare-fun b!3708318 () Bool)

(assert (=> b!3708318 (= e!2296996 e!2296992)))

(assert (=> b!3708318 (= c!640560 ((_ is Star!10819) lt!1296594))))

(declare-fun b!3708312 () Bool)

(assert (=> b!3708312 (= e!2296994 e!2296993)))

(declare-fun c!640559 () Bool)

(assert (=> b!3708312 (= c!640559 ((_ is ElementMatch!10819) lt!1296594))))

(declare-fun d!1086751 () Bool)

(declare-fun lt!1296647 () Regex!10819)

(assert (=> d!1086751 (validRegex!4926 lt!1296647)))

(assert (=> d!1086751 (= lt!1296647 e!2296994)))

(declare-fun c!640562 () Bool)

(assert (=> d!1086751 (= c!640562 (or ((_ is EmptyExpr!10819) lt!1296594) ((_ is EmptyLang!10819) lt!1296594)))))

(assert (=> d!1086751 (validRegex!4926 lt!1296594)))

(assert (=> d!1086751 (= (derivativeStep!3298 lt!1296594 (head!8003 (t!302383 s!14922))) lt!1296647)))

(declare-fun bm!267967 () Bool)

(declare-fun call!267970 () Regex!10819)

(assert (=> bm!267967 (= call!267971 call!267970)))

(declare-fun b!3708319 () Bool)

(assert (=> b!3708319 (= e!2296995 (Union!10819 (Concat!17090 call!267971 (regTwo!22150 lt!1296594)) call!267973))))

(declare-fun bm!267968 () Bool)

(assert (=> bm!267968 (= call!267970 call!267972)))

(declare-fun b!3708320 () Bool)

(assert (=> b!3708320 (= e!2296992 (Concat!17090 call!267970 lt!1296594))))

(declare-fun b!3708321 () Bool)

(assert (=> b!3708321 (= e!2296993 (ite (= (head!8003 (t!302383 s!14922)) (c!640397 lt!1296594)) EmptyExpr!10819 EmptyLang!10819))))

(assert (= (and d!1086751 c!640562) b!3708316))

(assert (= (and d!1086751 (not c!640562)) b!3708312))

(assert (= (and b!3708312 c!640559) b!3708321))

(assert (= (and b!3708312 (not c!640559)) b!3708317))

(assert (= (and b!3708317 c!640561) b!3708313))

(assert (= (and b!3708317 (not c!640561)) b!3708318))

(assert (= (and b!3708318 c!640560) b!3708320))

(assert (= (and b!3708318 (not c!640560)) b!3708315))

(assert (= (and b!3708315 c!640558) b!3708319))

(assert (= (and b!3708315 (not c!640558)) b!3708314))

(assert (= (or b!3708319 b!3708314) bm!267967))

(assert (= (or b!3708320 bm!267967) bm!267968))

(assert (= (or b!3708313 b!3708319) bm!267965))

(assert (= (or b!3708313 bm!267968) bm!267966))

(declare-fun m!4217217 () Bool)

(assert (=> b!3708315 m!4217217))

(assert (=> bm!267965 m!4217029))

(declare-fun m!4217219 () Bool)

(assert (=> bm!267965 m!4217219))

(assert (=> bm!267966 m!4217029))

(declare-fun m!4217221 () Bool)

(assert (=> bm!267966 m!4217221))

(declare-fun m!4217223 () Bool)

(assert (=> d!1086751 m!4217223))

(assert (=> d!1086751 m!4216861))

(assert (=> b!3708065 d!1086751))

(assert (=> b!3708065 d!1086689))

(assert (=> b!3708065 d!1086727))

(declare-fun b!3708323 () Bool)

(declare-fun e!2297001 () Regex!10819)

(declare-fun call!267977 () Regex!10819)

(declare-fun call!267976 () Regex!10819)

(assert (=> b!3708323 (= e!2297001 (Union!10819 call!267977 call!267976))))

(declare-fun b!3708324 () Bool)

(declare-fun e!2297000 () Regex!10819)

(declare-fun call!267975 () Regex!10819)

(assert (=> b!3708324 (= e!2297000 (Union!10819 (Concat!17090 call!267975 (regTwo!22150 (ite c!640428 (regTwo!22151 r!25965) (ite c!640427 (reg!11148 r!25965) (regOne!22150 r!25965))))) EmptyLang!10819))))

(declare-fun c!640563 () Bool)

(declare-fun b!3708325 () Bool)

(assert (=> b!3708325 (= c!640563 (nullable!3753 (regOne!22150 (ite c!640428 (regTwo!22151 r!25965) (ite c!640427 (reg!11148 r!25965) (regOne!22150 r!25965))))))))

(declare-fun e!2296997 () Regex!10819)

(assert (=> b!3708325 (= e!2296997 e!2297000)))

(declare-fun c!640566 () Bool)

(declare-fun bm!267969 () Bool)

(assert (=> bm!267969 (= call!267977 (derivativeStep!3298 (ite c!640566 (regOne!22151 (ite c!640428 (regTwo!22151 r!25965) (ite c!640427 (reg!11148 r!25965) (regOne!22150 r!25965)))) (regTwo!22150 (ite c!640428 (regTwo!22151 r!25965) (ite c!640427 (reg!11148 r!25965) (regOne!22150 r!25965))))) (h!44996 s!14922)))))

(declare-fun b!3708326 () Bool)

(declare-fun e!2296999 () Regex!10819)

(assert (=> b!3708326 (= e!2296999 EmptyLang!10819)))

(declare-fun c!640565 () Bool)

(declare-fun bm!267970 () Bool)

(assert (=> bm!267970 (= call!267976 (derivativeStep!3298 (ite c!640566 (regTwo!22151 (ite c!640428 (regTwo!22151 r!25965) (ite c!640427 (reg!11148 r!25965) (regOne!22150 r!25965)))) (ite c!640565 (reg!11148 (ite c!640428 (regTwo!22151 r!25965) (ite c!640427 (reg!11148 r!25965) (regOne!22150 r!25965)))) (regOne!22150 (ite c!640428 (regTwo!22151 r!25965) (ite c!640427 (reg!11148 r!25965) (regOne!22150 r!25965)))))) (h!44996 s!14922)))))

(declare-fun b!3708327 () Bool)

(assert (=> b!3708327 (= c!640566 ((_ is Union!10819) (ite c!640428 (regTwo!22151 r!25965) (ite c!640427 (reg!11148 r!25965) (regOne!22150 r!25965)))))))

(declare-fun e!2296998 () Regex!10819)

(assert (=> b!3708327 (= e!2296998 e!2297001)))

(declare-fun b!3708328 () Bool)

(assert (=> b!3708328 (= e!2297001 e!2296997)))

(assert (=> b!3708328 (= c!640565 ((_ is Star!10819) (ite c!640428 (regTwo!22151 r!25965) (ite c!640427 (reg!11148 r!25965) (regOne!22150 r!25965)))))))

(declare-fun b!3708322 () Bool)

(assert (=> b!3708322 (= e!2296999 e!2296998)))

(declare-fun c!640564 () Bool)

(assert (=> b!3708322 (= c!640564 ((_ is ElementMatch!10819) (ite c!640428 (regTwo!22151 r!25965) (ite c!640427 (reg!11148 r!25965) (regOne!22150 r!25965)))))))

(declare-fun d!1086753 () Bool)

(declare-fun lt!1296648 () Regex!10819)

(assert (=> d!1086753 (validRegex!4926 lt!1296648)))

(assert (=> d!1086753 (= lt!1296648 e!2296999)))

(declare-fun c!640567 () Bool)

(assert (=> d!1086753 (= c!640567 (or ((_ is EmptyExpr!10819) (ite c!640428 (regTwo!22151 r!25965) (ite c!640427 (reg!11148 r!25965) (regOne!22150 r!25965)))) ((_ is EmptyLang!10819) (ite c!640428 (regTwo!22151 r!25965) (ite c!640427 (reg!11148 r!25965) (regOne!22150 r!25965))))))))

(assert (=> d!1086753 (validRegex!4926 (ite c!640428 (regTwo!22151 r!25965) (ite c!640427 (reg!11148 r!25965) (regOne!22150 r!25965))))))

(assert (=> d!1086753 (= (derivativeStep!3298 (ite c!640428 (regTwo!22151 r!25965) (ite c!640427 (reg!11148 r!25965) (regOne!22150 r!25965))) (h!44996 s!14922)) lt!1296648)))

(declare-fun bm!267971 () Bool)

(declare-fun call!267974 () Regex!10819)

(assert (=> bm!267971 (= call!267975 call!267974)))

(declare-fun b!3708329 () Bool)

(assert (=> b!3708329 (= e!2297000 (Union!10819 (Concat!17090 call!267975 (regTwo!22150 (ite c!640428 (regTwo!22151 r!25965) (ite c!640427 (reg!11148 r!25965) (regOne!22150 r!25965))))) call!267977))))

(declare-fun bm!267972 () Bool)

(assert (=> bm!267972 (= call!267974 call!267976)))

(declare-fun b!3708330 () Bool)

(assert (=> b!3708330 (= e!2296997 (Concat!17090 call!267974 (ite c!640428 (regTwo!22151 r!25965) (ite c!640427 (reg!11148 r!25965) (regOne!22150 r!25965)))))))

(declare-fun b!3708331 () Bool)

(assert (=> b!3708331 (= e!2296998 (ite (= (h!44996 s!14922) (c!640397 (ite c!640428 (regTwo!22151 r!25965) (ite c!640427 (reg!11148 r!25965) (regOne!22150 r!25965))))) EmptyExpr!10819 EmptyLang!10819))))

(assert (= (and d!1086753 c!640567) b!3708326))

(assert (= (and d!1086753 (not c!640567)) b!3708322))

(assert (= (and b!3708322 c!640564) b!3708331))

(assert (= (and b!3708322 (not c!640564)) b!3708327))

(assert (= (and b!3708327 c!640566) b!3708323))

(assert (= (and b!3708327 (not c!640566)) b!3708328))

(assert (= (and b!3708328 c!640565) b!3708330))

(assert (= (and b!3708328 (not c!640565)) b!3708325))

(assert (= (and b!3708325 c!640563) b!3708329))

(assert (= (and b!3708325 (not c!640563)) b!3708324))

(assert (= (or b!3708329 b!3708324) bm!267971))

(assert (= (or b!3708330 bm!267971) bm!267972))

(assert (= (or b!3708323 b!3708329) bm!267969))

(assert (= (or b!3708323 bm!267972) bm!267970))

(declare-fun m!4217225 () Bool)

(assert (=> b!3708325 m!4217225))

(declare-fun m!4217227 () Bool)

(assert (=> bm!267969 m!4217227))

(declare-fun m!4217229 () Bool)

(assert (=> bm!267970 m!4217229))

(declare-fun m!4217231 () Bool)

(assert (=> d!1086753 m!4217231))

(declare-fun m!4217233 () Bool)

(assert (=> d!1086753 m!4217233))

(assert (=> bm!267857 d!1086753))

(declare-fun c!640569 () Bool)

(declare-fun bm!267973 () Bool)

(declare-fun call!267981 () List!39700)

(assert (=> bm!267973 (= call!267981 (usedCharacters!1082 (ite c!640569 (regTwo!22151 (ite c!640464 (reg!11148 lt!1296594) (ite c!640463 (regOne!22151 lt!1296594) (regTwo!22150 lt!1296594)))) (regOne!22150 (ite c!640464 (reg!11148 lt!1296594) (ite c!640463 (regOne!22151 lt!1296594) (regTwo!22150 lt!1296594)))))))))

(declare-fun b!3708332 () Bool)

(declare-fun e!2297005 () List!39700)

(assert (=> b!3708332 (= e!2297005 Nil!39576)))

(declare-fun d!1086755 () Bool)

(declare-fun c!640568 () Bool)

(assert (=> d!1086755 (= c!640568 (or ((_ is EmptyExpr!10819) (ite c!640464 (reg!11148 lt!1296594) (ite c!640463 (regOne!22151 lt!1296594) (regTwo!22150 lt!1296594)))) ((_ is EmptyLang!10819) (ite c!640464 (reg!11148 lt!1296594) (ite c!640463 (regOne!22151 lt!1296594) (regTwo!22150 lt!1296594))))))))

(assert (=> d!1086755 (= (usedCharacters!1082 (ite c!640464 (reg!11148 lt!1296594) (ite c!640463 (regOne!22151 lt!1296594) (regTwo!22150 lt!1296594)))) e!2297005)))

(declare-fun c!640570 () Bool)

(declare-fun call!267980 () List!39700)

(declare-fun bm!267974 () Bool)

(assert (=> bm!267974 (= call!267980 (usedCharacters!1082 (ite c!640570 (reg!11148 (ite c!640464 (reg!11148 lt!1296594) (ite c!640463 (regOne!22151 lt!1296594) (regTwo!22150 lt!1296594)))) (ite c!640569 (regOne!22151 (ite c!640464 (reg!11148 lt!1296594) (ite c!640463 (regOne!22151 lt!1296594) (regTwo!22150 lt!1296594)))) (regTwo!22150 (ite c!640464 (reg!11148 lt!1296594) (ite c!640463 (regOne!22151 lt!1296594) (regTwo!22150 lt!1296594))))))))))

(declare-fun b!3708333 () Bool)

(declare-fun e!2297003 () List!39700)

(declare-fun call!267978 () List!39700)

(assert (=> b!3708333 (= e!2297003 call!267978)))

(declare-fun call!267979 () List!39700)

(declare-fun bm!267975 () Bool)

(assert (=> bm!267975 (= call!267978 (++!9782 (ite c!640569 call!267979 call!267981) (ite c!640569 call!267981 call!267979)))))

(declare-fun bm!267976 () Bool)

(assert (=> bm!267976 (= call!267979 call!267980)))

(declare-fun b!3708334 () Bool)

(declare-fun e!2297002 () List!39700)

(assert (=> b!3708334 (= e!2297002 e!2297003)))

(assert (=> b!3708334 (= c!640569 ((_ is Union!10819) (ite c!640464 (reg!11148 lt!1296594) (ite c!640463 (regOne!22151 lt!1296594) (regTwo!22150 lt!1296594)))))))

(declare-fun b!3708335 () Bool)

(assert (=> b!3708335 (= e!2297002 call!267980)))

(declare-fun b!3708336 () Bool)

(declare-fun e!2297004 () List!39700)

(assert (=> b!3708336 (= e!2297005 e!2297004)))

(declare-fun c!640571 () Bool)

(assert (=> b!3708336 (= c!640571 ((_ is ElementMatch!10819) (ite c!640464 (reg!11148 lt!1296594) (ite c!640463 (regOne!22151 lt!1296594) (regTwo!22150 lt!1296594)))))))

(declare-fun b!3708337 () Bool)

(assert (=> b!3708337 (= e!2297004 (Cons!39576 (c!640397 (ite c!640464 (reg!11148 lt!1296594) (ite c!640463 (regOne!22151 lt!1296594) (regTwo!22150 lt!1296594)))) Nil!39576))))

(declare-fun b!3708338 () Bool)

(assert (=> b!3708338 (= e!2297003 call!267978)))

(declare-fun b!3708339 () Bool)

(assert (=> b!3708339 (= c!640570 ((_ is Star!10819) (ite c!640464 (reg!11148 lt!1296594) (ite c!640463 (regOne!22151 lt!1296594) (regTwo!22150 lt!1296594)))))))

(assert (=> b!3708339 (= e!2297004 e!2297002)))

(assert (= (and d!1086755 c!640568) b!3708332))

(assert (= (and d!1086755 (not c!640568)) b!3708336))

(assert (= (and b!3708336 c!640571) b!3708337))

(assert (= (and b!3708336 (not c!640571)) b!3708339))

(assert (= (and b!3708339 c!640570) b!3708335))

(assert (= (and b!3708339 (not c!640570)) b!3708334))

(assert (= (and b!3708334 c!640569) b!3708333))

(assert (= (and b!3708334 (not c!640569)) b!3708338))

(assert (= (or b!3708333 b!3708338) bm!267976))

(assert (= (or b!3708333 b!3708338) bm!267973))

(assert (= (or b!3708333 b!3708338) bm!267975))

(assert (= (or b!3708335 bm!267976) bm!267974))

(declare-fun m!4217235 () Bool)

(assert (=> bm!267973 m!4217235))

(declare-fun m!4217237 () Bool)

(assert (=> bm!267974 m!4217237))

(declare-fun m!4217239 () Bool)

(assert (=> bm!267975 m!4217239))

(assert (=> bm!267899 d!1086755))

(declare-fun e!2297006 () Bool)

(assert (=> b!3708149 (= tp!1128167 e!2297006)))

(declare-fun b!3708343 () Bool)

(declare-fun tp!1128170 () Bool)

(declare-fun tp!1128173 () Bool)

(assert (=> b!3708343 (= e!2297006 (and tp!1128170 tp!1128173))))

(declare-fun b!3708342 () Bool)

(declare-fun tp!1128172 () Bool)

(assert (=> b!3708342 (= e!2297006 tp!1128172)))

(declare-fun b!3708341 () Bool)

(declare-fun tp!1128169 () Bool)

(declare-fun tp!1128171 () Bool)

(assert (=> b!3708341 (= e!2297006 (and tp!1128169 tp!1128171))))

(declare-fun b!3708340 () Bool)

(assert (=> b!3708340 (= e!2297006 tp_is_empty!18653)))

(assert (= (and b!3708149 ((_ is ElementMatch!10819) (reg!11148 (regTwo!22151 r!25965)))) b!3708340))

(assert (= (and b!3708149 ((_ is Concat!17090) (reg!11148 (regTwo!22151 r!25965)))) b!3708341))

(assert (= (and b!3708149 ((_ is Star!10819) (reg!11148 (regTwo!22151 r!25965)))) b!3708342))

(assert (= (and b!3708149 ((_ is Union!10819) (reg!11148 (regTwo!22151 r!25965)))) b!3708343))

(declare-fun e!2297007 () Bool)

(assert (=> b!3708140 (= tp!1128154 e!2297007)))

(declare-fun b!3708347 () Bool)

(declare-fun tp!1128175 () Bool)

(declare-fun tp!1128178 () Bool)

(assert (=> b!3708347 (= e!2297007 (and tp!1128175 tp!1128178))))

(declare-fun b!3708346 () Bool)

(declare-fun tp!1128177 () Bool)

(assert (=> b!3708346 (= e!2297007 tp!1128177)))

(declare-fun b!3708345 () Bool)

(declare-fun tp!1128174 () Bool)

(declare-fun tp!1128176 () Bool)

(assert (=> b!3708345 (= e!2297007 (and tp!1128174 tp!1128176))))

(declare-fun b!3708344 () Bool)

(assert (=> b!3708344 (= e!2297007 tp_is_empty!18653)))

(assert (= (and b!3708140 ((_ is ElementMatch!10819) (regOne!22150 (regTwo!22150 r!25965)))) b!3708344))

(assert (= (and b!3708140 ((_ is Concat!17090) (regOne!22150 (regTwo!22150 r!25965)))) b!3708345))

(assert (= (and b!3708140 ((_ is Star!10819) (regOne!22150 (regTwo!22150 r!25965)))) b!3708346))

(assert (= (and b!3708140 ((_ is Union!10819) (regOne!22150 (regTwo!22150 r!25965)))) b!3708347))

(declare-fun e!2297008 () Bool)

(assert (=> b!3708140 (= tp!1128156 e!2297008)))

(declare-fun b!3708351 () Bool)

(declare-fun tp!1128180 () Bool)

(declare-fun tp!1128183 () Bool)

(assert (=> b!3708351 (= e!2297008 (and tp!1128180 tp!1128183))))

(declare-fun b!3708350 () Bool)

(declare-fun tp!1128182 () Bool)

(assert (=> b!3708350 (= e!2297008 tp!1128182)))

(declare-fun b!3708349 () Bool)

(declare-fun tp!1128179 () Bool)

(declare-fun tp!1128181 () Bool)

(assert (=> b!3708349 (= e!2297008 (and tp!1128179 tp!1128181))))

(declare-fun b!3708348 () Bool)

(assert (=> b!3708348 (= e!2297008 tp_is_empty!18653)))

(assert (= (and b!3708140 ((_ is ElementMatch!10819) (regTwo!22150 (regTwo!22150 r!25965)))) b!3708348))

(assert (= (and b!3708140 ((_ is Concat!17090) (regTwo!22150 (regTwo!22150 r!25965)))) b!3708349))

(assert (= (and b!3708140 ((_ is Star!10819) (regTwo!22150 (regTwo!22150 r!25965)))) b!3708350))

(assert (= (and b!3708140 ((_ is Union!10819) (regTwo!22150 (regTwo!22150 r!25965)))) b!3708351))

(declare-fun e!2297009 () Bool)

(assert (=> b!3708145 (= tp!1128162 e!2297009)))

(declare-fun b!3708355 () Bool)

(declare-fun tp!1128185 () Bool)

(declare-fun tp!1128188 () Bool)

(assert (=> b!3708355 (= e!2297009 (and tp!1128185 tp!1128188))))

(declare-fun b!3708354 () Bool)

(declare-fun tp!1128187 () Bool)

(assert (=> b!3708354 (= e!2297009 tp!1128187)))

(declare-fun b!3708353 () Bool)

(declare-fun tp!1128184 () Bool)

(declare-fun tp!1128186 () Bool)

(assert (=> b!3708353 (= e!2297009 (and tp!1128184 tp!1128186))))

(declare-fun b!3708352 () Bool)

(assert (=> b!3708352 (= e!2297009 tp_is_empty!18653)))

(assert (= (and b!3708145 ((_ is ElementMatch!10819) (reg!11148 (regOne!22151 r!25965)))) b!3708352))

(assert (= (and b!3708145 ((_ is Concat!17090) (reg!11148 (regOne!22151 r!25965)))) b!3708353))

(assert (= (and b!3708145 ((_ is Star!10819) (reg!11148 (regOne!22151 r!25965)))) b!3708354))

(assert (= (and b!3708145 ((_ is Union!10819) (reg!11148 (regOne!22151 r!25965)))) b!3708355))

(declare-fun e!2297010 () Bool)

(assert (=> b!3708150 (= tp!1128165 e!2297010)))

(declare-fun b!3708359 () Bool)

(declare-fun tp!1128190 () Bool)

(declare-fun tp!1128193 () Bool)

(assert (=> b!3708359 (= e!2297010 (and tp!1128190 tp!1128193))))

(declare-fun b!3708358 () Bool)

(declare-fun tp!1128192 () Bool)

(assert (=> b!3708358 (= e!2297010 tp!1128192)))

(declare-fun b!3708357 () Bool)

(declare-fun tp!1128189 () Bool)

(declare-fun tp!1128191 () Bool)

(assert (=> b!3708357 (= e!2297010 (and tp!1128189 tp!1128191))))

(declare-fun b!3708356 () Bool)

(assert (=> b!3708356 (= e!2297010 tp_is_empty!18653)))

(assert (= (and b!3708150 ((_ is ElementMatch!10819) (regOne!22151 (regTwo!22151 r!25965)))) b!3708356))

(assert (= (and b!3708150 ((_ is Concat!17090) (regOne!22151 (regTwo!22151 r!25965)))) b!3708357))

(assert (= (and b!3708150 ((_ is Star!10819) (regOne!22151 (regTwo!22151 r!25965)))) b!3708358))

(assert (= (and b!3708150 ((_ is Union!10819) (regOne!22151 (regTwo!22151 r!25965)))) b!3708359))

(declare-fun e!2297011 () Bool)

(assert (=> b!3708150 (= tp!1128168 e!2297011)))

(declare-fun b!3708363 () Bool)

(declare-fun tp!1128195 () Bool)

(declare-fun tp!1128198 () Bool)

(assert (=> b!3708363 (= e!2297011 (and tp!1128195 tp!1128198))))

(declare-fun b!3708362 () Bool)

(declare-fun tp!1128197 () Bool)

(assert (=> b!3708362 (= e!2297011 tp!1128197)))

(declare-fun b!3708361 () Bool)

(declare-fun tp!1128194 () Bool)

(declare-fun tp!1128196 () Bool)

(assert (=> b!3708361 (= e!2297011 (and tp!1128194 tp!1128196))))

(declare-fun b!3708360 () Bool)

(assert (=> b!3708360 (= e!2297011 tp_is_empty!18653)))

(assert (= (and b!3708150 ((_ is ElementMatch!10819) (regTwo!22151 (regTwo!22151 r!25965)))) b!3708360))

(assert (= (and b!3708150 ((_ is Concat!17090) (regTwo!22151 (regTwo!22151 r!25965)))) b!3708361))

(assert (= (and b!3708150 ((_ is Star!10819) (regTwo!22151 (regTwo!22151 r!25965)))) b!3708362))

(assert (= (and b!3708150 ((_ is Union!10819) (regTwo!22151 (regTwo!22151 r!25965)))) b!3708363))

(declare-fun e!2297012 () Bool)

(assert (=> b!3708136 (= tp!1128149 e!2297012)))

(declare-fun b!3708367 () Bool)

(declare-fun tp!1128200 () Bool)

(declare-fun tp!1128203 () Bool)

(assert (=> b!3708367 (= e!2297012 (and tp!1128200 tp!1128203))))

(declare-fun b!3708366 () Bool)

(declare-fun tp!1128202 () Bool)

(assert (=> b!3708366 (= e!2297012 tp!1128202)))

(declare-fun b!3708365 () Bool)

(declare-fun tp!1128199 () Bool)

(declare-fun tp!1128201 () Bool)

(assert (=> b!3708365 (= e!2297012 (and tp!1128199 tp!1128201))))

(declare-fun b!3708364 () Bool)

(assert (=> b!3708364 (= e!2297012 tp_is_empty!18653)))

(assert (= (and b!3708136 ((_ is ElementMatch!10819) (regOne!22150 (regOne!22150 r!25965)))) b!3708364))

(assert (= (and b!3708136 ((_ is Concat!17090) (regOne!22150 (regOne!22150 r!25965)))) b!3708365))

(assert (= (and b!3708136 ((_ is Star!10819) (regOne!22150 (regOne!22150 r!25965)))) b!3708366))

(assert (= (and b!3708136 ((_ is Union!10819) (regOne!22150 (regOne!22150 r!25965)))) b!3708367))

(declare-fun e!2297013 () Bool)

(assert (=> b!3708136 (= tp!1128151 e!2297013)))

(declare-fun b!3708371 () Bool)

(declare-fun tp!1128205 () Bool)

(declare-fun tp!1128208 () Bool)

(assert (=> b!3708371 (= e!2297013 (and tp!1128205 tp!1128208))))

(declare-fun b!3708370 () Bool)

(declare-fun tp!1128207 () Bool)

(assert (=> b!3708370 (= e!2297013 tp!1128207)))

(declare-fun b!3708369 () Bool)

(declare-fun tp!1128204 () Bool)

(declare-fun tp!1128206 () Bool)

(assert (=> b!3708369 (= e!2297013 (and tp!1128204 tp!1128206))))

(declare-fun b!3708368 () Bool)

(assert (=> b!3708368 (= e!2297013 tp_is_empty!18653)))

(assert (= (and b!3708136 ((_ is ElementMatch!10819) (regTwo!22150 (regOne!22150 r!25965)))) b!3708368))

(assert (= (and b!3708136 ((_ is Concat!17090) (regTwo!22150 (regOne!22150 r!25965)))) b!3708369))

(assert (= (and b!3708136 ((_ is Star!10819) (regTwo!22150 (regOne!22150 r!25965)))) b!3708370))

(assert (= (and b!3708136 ((_ is Union!10819) (regTwo!22150 (regOne!22150 r!25965)))) b!3708371))

(declare-fun e!2297014 () Bool)

(assert (=> b!3708141 (= tp!1128157 e!2297014)))

(declare-fun b!3708375 () Bool)

(declare-fun tp!1128210 () Bool)

(declare-fun tp!1128213 () Bool)

(assert (=> b!3708375 (= e!2297014 (and tp!1128210 tp!1128213))))

(declare-fun b!3708374 () Bool)

(declare-fun tp!1128212 () Bool)

(assert (=> b!3708374 (= e!2297014 tp!1128212)))

(declare-fun b!3708373 () Bool)

(declare-fun tp!1128209 () Bool)

(declare-fun tp!1128211 () Bool)

(assert (=> b!3708373 (= e!2297014 (and tp!1128209 tp!1128211))))

(declare-fun b!3708372 () Bool)

(assert (=> b!3708372 (= e!2297014 tp_is_empty!18653)))

(assert (= (and b!3708141 ((_ is ElementMatch!10819) (reg!11148 (regTwo!22150 r!25965)))) b!3708372))

(assert (= (and b!3708141 ((_ is Concat!17090) (reg!11148 (regTwo!22150 r!25965)))) b!3708373))

(assert (= (and b!3708141 ((_ is Star!10819) (reg!11148 (regTwo!22150 r!25965)))) b!3708374))

(assert (= (and b!3708141 ((_ is Union!10819) (reg!11148 (regTwo!22150 r!25965)))) b!3708375))

(declare-fun e!2297015 () Bool)

(assert (=> b!3708146 (= tp!1128160 e!2297015)))

(declare-fun b!3708379 () Bool)

(declare-fun tp!1128215 () Bool)

(declare-fun tp!1128218 () Bool)

(assert (=> b!3708379 (= e!2297015 (and tp!1128215 tp!1128218))))

(declare-fun b!3708378 () Bool)

(declare-fun tp!1128217 () Bool)

(assert (=> b!3708378 (= e!2297015 tp!1128217)))

(declare-fun b!3708377 () Bool)

(declare-fun tp!1128214 () Bool)

(declare-fun tp!1128216 () Bool)

(assert (=> b!3708377 (= e!2297015 (and tp!1128214 tp!1128216))))

(declare-fun b!3708376 () Bool)

(assert (=> b!3708376 (= e!2297015 tp_is_empty!18653)))

(assert (= (and b!3708146 ((_ is ElementMatch!10819) (regOne!22151 (regOne!22151 r!25965)))) b!3708376))

(assert (= (and b!3708146 ((_ is Concat!17090) (regOne!22151 (regOne!22151 r!25965)))) b!3708377))

(assert (= (and b!3708146 ((_ is Star!10819) (regOne!22151 (regOne!22151 r!25965)))) b!3708378))

(assert (= (and b!3708146 ((_ is Union!10819) (regOne!22151 (regOne!22151 r!25965)))) b!3708379))

(declare-fun e!2297016 () Bool)

(assert (=> b!3708146 (= tp!1128163 e!2297016)))

(declare-fun b!3708383 () Bool)

(declare-fun tp!1128220 () Bool)

(declare-fun tp!1128223 () Bool)

(assert (=> b!3708383 (= e!2297016 (and tp!1128220 tp!1128223))))

(declare-fun b!3708382 () Bool)

(declare-fun tp!1128222 () Bool)

(assert (=> b!3708382 (= e!2297016 tp!1128222)))

(declare-fun b!3708381 () Bool)

(declare-fun tp!1128219 () Bool)

(declare-fun tp!1128221 () Bool)

(assert (=> b!3708381 (= e!2297016 (and tp!1128219 tp!1128221))))

(declare-fun b!3708380 () Bool)

(assert (=> b!3708380 (= e!2297016 tp_is_empty!18653)))

(assert (= (and b!3708146 ((_ is ElementMatch!10819) (regTwo!22151 (regOne!22151 r!25965)))) b!3708380))

(assert (= (and b!3708146 ((_ is Concat!17090) (regTwo!22151 (regOne!22151 r!25965)))) b!3708381))

(assert (= (and b!3708146 ((_ is Star!10819) (regTwo!22151 (regOne!22151 r!25965)))) b!3708382))

(assert (= (and b!3708146 ((_ is Union!10819) (regTwo!22151 (regOne!22151 r!25965)))) b!3708383))

(declare-fun e!2297017 () Bool)

(assert (=> b!3708137 (= tp!1128152 e!2297017)))

(declare-fun b!3708387 () Bool)

(declare-fun tp!1128225 () Bool)

(declare-fun tp!1128228 () Bool)

(assert (=> b!3708387 (= e!2297017 (and tp!1128225 tp!1128228))))

(declare-fun b!3708386 () Bool)

(declare-fun tp!1128227 () Bool)

(assert (=> b!3708386 (= e!2297017 tp!1128227)))

(declare-fun b!3708385 () Bool)

(declare-fun tp!1128224 () Bool)

(declare-fun tp!1128226 () Bool)

(assert (=> b!3708385 (= e!2297017 (and tp!1128224 tp!1128226))))

(declare-fun b!3708384 () Bool)

(assert (=> b!3708384 (= e!2297017 tp_is_empty!18653)))

(assert (= (and b!3708137 ((_ is ElementMatch!10819) (reg!11148 (regOne!22150 r!25965)))) b!3708384))

(assert (= (and b!3708137 ((_ is Concat!17090) (reg!11148 (regOne!22150 r!25965)))) b!3708385))

(assert (= (and b!3708137 ((_ is Star!10819) (reg!11148 (regOne!22150 r!25965)))) b!3708386))

(assert (= (and b!3708137 ((_ is Union!10819) (reg!11148 (regOne!22150 r!25965)))) b!3708387))

(declare-fun e!2297018 () Bool)

(assert (=> b!3708142 (= tp!1128155 e!2297018)))

(declare-fun b!3708391 () Bool)

(declare-fun tp!1128230 () Bool)

(declare-fun tp!1128233 () Bool)

(assert (=> b!3708391 (= e!2297018 (and tp!1128230 tp!1128233))))

(declare-fun b!3708390 () Bool)

(declare-fun tp!1128232 () Bool)

(assert (=> b!3708390 (= e!2297018 tp!1128232)))

(declare-fun b!3708389 () Bool)

(declare-fun tp!1128229 () Bool)

(declare-fun tp!1128231 () Bool)

(assert (=> b!3708389 (= e!2297018 (and tp!1128229 tp!1128231))))

(declare-fun b!3708388 () Bool)

(assert (=> b!3708388 (= e!2297018 tp_is_empty!18653)))

(assert (= (and b!3708142 ((_ is ElementMatch!10819) (regOne!22151 (regTwo!22150 r!25965)))) b!3708388))

(assert (= (and b!3708142 ((_ is Concat!17090) (regOne!22151 (regTwo!22150 r!25965)))) b!3708389))

(assert (= (and b!3708142 ((_ is Star!10819) (regOne!22151 (regTwo!22150 r!25965)))) b!3708390))

(assert (= (and b!3708142 ((_ is Union!10819) (regOne!22151 (regTwo!22150 r!25965)))) b!3708391))

(declare-fun e!2297019 () Bool)

(assert (=> b!3708142 (= tp!1128158 e!2297019)))

(declare-fun b!3708395 () Bool)

(declare-fun tp!1128235 () Bool)

(declare-fun tp!1128238 () Bool)

(assert (=> b!3708395 (= e!2297019 (and tp!1128235 tp!1128238))))

(declare-fun b!3708394 () Bool)

(declare-fun tp!1128237 () Bool)

(assert (=> b!3708394 (= e!2297019 tp!1128237)))

(declare-fun b!3708393 () Bool)

(declare-fun tp!1128234 () Bool)

(declare-fun tp!1128236 () Bool)

(assert (=> b!3708393 (= e!2297019 (and tp!1128234 tp!1128236))))

(declare-fun b!3708392 () Bool)

(assert (=> b!3708392 (= e!2297019 tp_is_empty!18653)))

(assert (= (and b!3708142 ((_ is ElementMatch!10819) (regTwo!22151 (regTwo!22150 r!25965)))) b!3708392))

(assert (= (and b!3708142 ((_ is Concat!17090) (regTwo!22151 (regTwo!22150 r!25965)))) b!3708393))

(assert (= (and b!3708142 ((_ is Star!10819) (regTwo!22151 (regTwo!22150 r!25965)))) b!3708394))

(assert (= (and b!3708142 ((_ is Union!10819) (regTwo!22151 (regTwo!22150 r!25965)))) b!3708395))

(declare-fun e!2297020 () Bool)

(assert (=> b!3708138 (= tp!1128150 e!2297020)))

(declare-fun b!3708399 () Bool)

(declare-fun tp!1128240 () Bool)

(declare-fun tp!1128243 () Bool)

(assert (=> b!3708399 (= e!2297020 (and tp!1128240 tp!1128243))))

(declare-fun b!3708398 () Bool)

(declare-fun tp!1128242 () Bool)

(assert (=> b!3708398 (= e!2297020 tp!1128242)))

(declare-fun b!3708397 () Bool)

(declare-fun tp!1128239 () Bool)

(declare-fun tp!1128241 () Bool)

(assert (=> b!3708397 (= e!2297020 (and tp!1128239 tp!1128241))))

(declare-fun b!3708396 () Bool)

(assert (=> b!3708396 (= e!2297020 tp_is_empty!18653)))

(assert (= (and b!3708138 ((_ is ElementMatch!10819) (regOne!22151 (regOne!22150 r!25965)))) b!3708396))

(assert (= (and b!3708138 ((_ is Concat!17090) (regOne!22151 (regOne!22150 r!25965)))) b!3708397))

(assert (= (and b!3708138 ((_ is Star!10819) (regOne!22151 (regOne!22150 r!25965)))) b!3708398))

(assert (= (and b!3708138 ((_ is Union!10819) (regOne!22151 (regOne!22150 r!25965)))) b!3708399))

(declare-fun e!2297021 () Bool)

(assert (=> b!3708138 (= tp!1128153 e!2297021)))

(declare-fun b!3708403 () Bool)

(declare-fun tp!1128245 () Bool)

(declare-fun tp!1128248 () Bool)

(assert (=> b!3708403 (= e!2297021 (and tp!1128245 tp!1128248))))

(declare-fun b!3708402 () Bool)

(declare-fun tp!1128247 () Bool)

(assert (=> b!3708402 (= e!2297021 tp!1128247)))

(declare-fun b!3708401 () Bool)

(declare-fun tp!1128244 () Bool)

(declare-fun tp!1128246 () Bool)

(assert (=> b!3708401 (= e!2297021 (and tp!1128244 tp!1128246))))

(declare-fun b!3708400 () Bool)

(assert (=> b!3708400 (= e!2297021 tp_is_empty!18653)))

(assert (= (and b!3708138 ((_ is ElementMatch!10819) (regTwo!22151 (regOne!22150 r!25965)))) b!3708400))

(assert (= (and b!3708138 ((_ is Concat!17090) (regTwo!22151 (regOne!22150 r!25965)))) b!3708401))

(assert (= (and b!3708138 ((_ is Star!10819) (regTwo!22151 (regOne!22150 r!25965)))) b!3708402))

(assert (= (and b!3708138 ((_ is Union!10819) (regTwo!22151 (regOne!22150 r!25965)))) b!3708403))

(declare-fun b!3708404 () Bool)

(declare-fun e!2297022 () Bool)

(declare-fun tp!1128249 () Bool)

(assert (=> b!3708404 (= e!2297022 (and tp_is_empty!18653 tp!1128249))))

(assert (=> b!3708134 (= tp!1128148 e!2297022)))

(assert (= (and b!3708134 ((_ is Cons!39576) (t!302383 (t!302383 s!14922)))) b!3708404))

(declare-fun e!2297023 () Bool)

(assert (=> b!3708127 (= tp!1128141 e!2297023)))

(declare-fun b!3708408 () Bool)

(declare-fun tp!1128251 () Bool)

(declare-fun tp!1128254 () Bool)

(assert (=> b!3708408 (= e!2297023 (and tp!1128251 tp!1128254))))

(declare-fun b!3708407 () Bool)

(declare-fun tp!1128253 () Bool)

(assert (=> b!3708407 (= e!2297023 tp!1128253)))

(declare-fun b!3708406 () Bool)

(declare-fun tp!1128250 () Bool)

(declare-fun tp!1128252 () Bool)

(assert (=> b!3708406 (= e!2297023 (and tp!1128250 tp!1128252))))

(declare-fun b!3708405 () Bool)

(assert (=> b!3708405 (= e!2297023 tp_is_empty!18653)))

(assert (= (and b!3708127 ((_ is ElementMatch!10819) (regOne!22150 (reg!11148 r!25965)))) b!3708405))

(assert (= (and b!3708127 ((_ is Concat!17090) (regOne!22150 (reg!11148 r!25965)))) b!3708406))

(assert (= (and b!3708127 ((_ is Star!10819) (regOne!22150 (reg!11148 r!25965)))) b!3708407))

(assert (= (and b!3708127 ((_ is Union!10819) (regOne!22150 (reg!11148 r!25965)))) b!3708408))

(declare-fun e!2297024 () Bool)

(assert (=> b!3708127 (= tp!1128143 e!2297024)))

(declare-fun b!3708412 () Bool)

(declare-fun tp!1128256 () Bool)

(declare-fun tp!1128259 () Bool)

(assert (=> b!3708412 (= e!2297024 (and tp!1128256 tp!1128259))))

(declare-fun b!3708411 () Bool)

(declare-fun tp!1128258 () Bool)

(assert (=> b!3708411 (= e!2297024 tp!1128258)))

(declare-fun b!3708410 () Bool)

(declare-fun tp!1128255 () Bool)

(declare-fun tp!1128257 () Bool)

(assert (=> b!3708410 (= e!2297024 (and tp!1128255 tp!1128257))))

(declare-fun b!3708409 () Bool)

(assert (=> b!3708409 (= e!2297024 tp_is_empty!18653)))

(assert (= (and b!3708127 ((_ is ElementMatch!10819) (regTwo!22150 (reg!11148 r!25965)))) b!3708409))

(assert (= (and b!3708127 ((_ is Concat!17090) (regTwo!22150 (reg!11148 r!25965)))) b!3708410))

(assert (= (and b!3708127 ((_ is Star!10819) (regTwo!22150 (reg!11148 r!25965)))) b!3708411))

(assert (= (and b!3708127 ((_ is Union!10819) (regTwo!22150 (reg!11148 r!25965)))) b!3708412))

(declare-fun e!2297025 () Bool)

(assert (=> b!3708128 (= tp!1128144 e!2297025)))

(declare-fun b!3708416 () Bool)

(declare-fun tp!1128261 () Bool)

(declare-fun tp!1128264 () Bool)

(assert (=> b!3708416 (= e!2297025 (and tp!1128261 tp!1128264))))

(declare-fun b!3708415 () Bool)

(declare-fun tp!1128263 () Bool)

(assert (=> b!3708415 (= e!2297025 tp!1128263)))

(declare-fun b!3708414 () Bool)

(declare-fun tp!1128260 () Bool)

(declare-fun tp!1128262 () Bool)

(assert (=> b!3708414 (= e!2297025 (and tp!1128260 tp!1128262))))

(declare-fun b!3708413 () Bool)

(assert (=> b!3708413 (= e!2297025 tp_is_empty!18653)))

(assert (= (and b!3708128 ((_ is ElementMatch!10819) (reg!11148 (reg!11148 r!25965)))) b!3708413))

(assert (= (and b!3708128 ((_ is Concat!17090) (reg!11148 (reg!11148 r!25965)))) b!3708414))

(assert (= (and b!3708128 ((_ is Star!10819) (reg!11148 (reg!11148 r!25965)))) b!3708415))

(assert (= (and b!3708128 ((_ is Union!10819) (reg!11148 (reg!11148 r!25965)))) b!3708416))

(declare-fun e!2297026 () Bool)

(assert (=> b!3708148 (= tp!1128164 e!2297026)))

(declare-fun b!3708420 () Bool)

(declare-fun tp!1128266 () Bool)

(declare-fun tp!1128269 () Bool)

(assert (=> b!3708420 (= e!2297026 (and tp!1128266 tp!1128269))))

(declare-fun b!3708419 () Bool)

(declare-fun tp!1128268 () Bool)

(assert (=> b!3708419 (= e!2297026 tp!1128268)))

(declare-fun b!3708418 () Bool)

(declare-fun tp!1128265 () Bool)

(declare-fun tp!1128267 () Bool)

(assert (=> b!3708418 (= e!2297026 (and tp!1128265 tp!1128267))))

(declare-fun b!3708417 () Bool)

(assert (=> b!3708417 (= e!2297026 tp_is_empty!18653)))

(assert (= (and b!3708148 ((_ is ElementMatch!10819) (regOne!22150 (regTwo!22151 r!25965)))) b!3708417))

(assert (= (and b!3708148 ((_ is Concat!17090) (regOne!22150 (regTwo!22151 r!25965)))) b!3708418))

(assert (= (and b!3708148 ((_ is Star!10819) (regOne!22150 (regTwo!22151 r!25965)))) b!3708419))

(assert (= (and b!3708148 ((_ is Union!10819) (regOne!22150 (regTwo!22151 r!25965)))) b!3708420))

(declare-fun e!2297027 () Bool)

(assert (=> b!3708148 (= tp!1128166 e!2297027)))

(declare-fun b!3708424 () Bool)

(declare-fun tp!1128271 () Bool)

(declare-fun tp!1128274 () Bool)

(assert (=> b!3708424 (= e!2297027 (and tp!1128271 tp!1128274))))

(declare-fun b!3708423 () Bool)

(declare-fun tp!1128273 () Bool)

(assert (=> b!3708423 (= e!2297027 tp!1128273)))

(declare-fun b!3708422 () Bool)

(declare-fun tp!1128270 () Bool)

(declare-fun tp!1128272 () Bool)

(assert (=> b!3708422 (= e!2297027 (and tp!1128270 tp!1128272))))

(declare-fun b!3708421 () Bool)

(assert (=> b!3708421 (= e!2297027 tp_is_empty!18653)))

(assert (= (and b!3708148 ((_ is ElementMatch!10819) (regTwo!22150 (regTwo!22151 r!25965)))) b!3708421))

(assert (= (and b!3708148 ((_ is Concat!17090) (regTwo!22150 (regTwo!22151 r!25965)))) b!3708422))

(assert (= (and b!3708148 ((_ is Star!10819) (regTwo!22150 (regTwo!22151 r!25965)))) b!3708423))

(assert (= (and b!3708148 ((_ is Union!10819) (regTwo!22150 (regTwo!22151 r!25965)))) b!3708424))

(declare-fun e!2297028 () Bool)

(assert (=> b!3708129 (= tp!1128142 e!2297028)))

(declare-fun b!3708428 () Bool)

(declare-fun tp!1128276 () Bool)

(declare-fun tp!1128279 () Bool)

(assert (=> b!3708428 (= e!2297028 (and tp!1128276 tp!1128279))))

(declare-fun b!3708427 () Bool)

(declare-fun tp!1128278 () Bool)

(assert (=> b!3708427 (= e!2297028 tp!1128278)))

(declare-fun b!3708426 () Bool)

(declare-fun tp!1128275 () Bool)

(declare-fun tp!1128277 () Bool)

(assert (=> b!3708426 (= e!2297028 (and tp!1128275 tp!1128277))))

(declare-fun b!3708425 () Bool)

(assert (=> b!3708425 (= e!2297028 tp_is_empty!18653)))

(assert (= (and b!3708129 ((_ is ElementMatch!10819) (regOne!22151 (reg!11148 r!25965)))) b!3708425))

(assert (= (and b!3708129 ((_ is Concat!17090) (regOne!22151 (reg!11148 r!25965)))) b!3708426))

(assert (= (and b!3708129 ((_ is Star!10819) (regOne!22151 (reg!11148 r!25965)))) b!3708427))

(assert (= (and b!3708129 ((_ is Union!10819) (regOne!22151 (reg!11148 r!25965)))) b!3708428))

(declare-fun e!2297029 () Bool)

(assert (=> b!3708129 (= tp!1128145 e!2297029)))

(declare-fun b!3708432 () Bool)

(declare-fun tp!1128281 () Bool)

(declare-fun tp!1128284 () Bool)

(assert (=> b!3708432 (= e!2297029 (and tp!1128281 tp!1128284))))

(declare-fun b!3708431 () Bool)

(declare-fun tp!1128283 () Bool)

(assert (=> b!3708431 (= e!2297029 tp!1128283)))

(declare-fun b!3708430 () Bool)

(declare-fun tp!1128280 () Bool)

(declare-fun tp!1128282 () Bool)

(assert (=> b!3708430 (= e!2297029 (and tp!1128280 tp!1128282))))

(declare-fun b!3708429 () Bool)

(assert (=> b!3708429 (= e!2297029 tp_is_empty!18653)))

(assert (= (and b!3708129 ((_ is ElementMatch!10819) (regTwo!22151 (reg!11148 r!25965)))) b!3708429))

(assert (= (and b!3708129 ((_ is Concat!17090) (regTwo!22151 (reg!11148 r!25965)))) b!3708430))

(assert (= (and b!3708129 ((_ is Star!10819) (regTwo!22151 (reg!11148 r!25965)))) b!3708431))

(assert (= (and b!3708129 ((_ is Union!10819) (regTwo!22151 (reg!11148 r!25965)))) b!3708432))

(declare-fun e!2297030 () Bool)

(assert (=> b!3708144 (= tp!1128159 e!2297030)))

(declare-fun b!3708436 () Bool)

(declare-fun tp!1128286 () Bool)

(declare-fun tp!1128289 () Bool)

(assert (=> b!3708436 (= e!2297030 (and tp!1128286 tp!1128289))))

(declare-fun b!3708435 () Bool)

(declare-fun tp!1128288 () Bool)

(assert (=> b!3708435 (= e!2297030 tp!1128288)))

(declare-fun b!3708434 () Bool)

(declare-fun tp!1128285 () Bool)

(declare-fun tp!1128287 () Bool)

(assert (=> b!3708434 (= e!2297030 (and tp!1128285 tp!1128287))))

(declare-fun b!3708433 () Bool)

(assert (=> b!3708433 (= e!2297030 tp_is_empty!18653)))

(assert (= (and b!3708144 ((_ is ElementMatch!10819) (regOne!22150 (regOne!22151 r!25965)))) b!3708433))

(assert (= (and b!3708144 ((_ is Concat!17090) (regOne!22150 (regOne!22151 r!25965)))) b!3708434))

(assert (= (and b!3708144 ((_ is Star!10819) (regOne!22150 (regOne!22151 r!25965)))) b!3708435))

(assert (= (and b!3708144 ((_ is Union!10819) (regOne!22150 (regOne!22151 r!25965)))) b!3708436))

(declare-fun e!2297031 () Bool)

(assert (=> b!3708144 (= tp!1128161 e!2297031)))

(declare-fun b!3708440 () Bool)

(declare-fun tp!1128291 () Bool)

(declare-fun tp!1128294 () Bool)

(assert (=> b!3708440 (= e!2297031 (and tp!1128291 tp!1128294))))

(declare-fun b!3708439 () Bool)

(declare-fun tp!1128293 () Bool)

(assert (=> b!3708439 (= e!2297031 tp!1128293)))

(declare-fun b!3708438 () Bool)

(declare-fun tp!1128290 () Bool)

(declare-fun tp!1128292 () Bool)

(assert (=> b!3708438 (= e!2297031 (and tp!1128290 tp!1128292))))

(declare-fun b!3708437 () Bool)

(assert (=> b!3708437 (= e!2297031 tp_is_empty!18653)))

(assert (= (and b!3708144 ((_ is ElementMatch!10819) (regTwo!22150 (regOne!22151 r!25965)))) b!3708437))

(assert (= (and b!3708144 ((_ is Concat!17090) (regTwo!22150 (regOne!22151 r!25965)))) b!3708438))

(assert (= (and b!3708144 ((_ is Star!10819) (regTwo!22150 (regOne!22151 r!25965)))) b!3708439))

(assert (= (and b!3708144 ((_ is Union!10819) (regTwo!22150 (regOne!22151 r!25965)))) b!3708440))

(check-sat (not b!3708351) (not bm!267970) (not bm!267957) (not b!3708277) (not b!3708403) (not b!3708366) (not b!3708415) (not b!3708262) (not b!3708426) (not b!3708166) (not b!3708419) (not bm!267969) (not bm!267934) (not b!3708432) (not b!3708353) (not b!3708383) (not b!3708438) (not b!3708305) (not b!3708374) (not b!3708315) (not b!3708381) (not d!1086751) tp_is_empty!18653 (not b!3708365) (not b!3708186) (not b!3708385) (not b!3708358) (not b!3708250) (not d!1086753) (not bm!267962) (not b!3708427) (not d!1086709) (not b!3708342) (not d!1086705) (not bm!267926) (not bm!267964) (not bm!267938) (not b!3708439) (not d!1086741) (not b!3708236) (not b!3708371) (not b!3708363) (not bm!267948) (not b!3708308) (not b!3708410) (not b!3708404) (not bm!267950) (not b!3708397) (not b!3708370) (not d!1086675) (not b!3708382) (not b!3708355) (not bm!267924) (not b!3708187) (not b!3708412) (not b!3708411) (not b!3708307) (not b!3708406) (not b!3708300) (not b!3708346) (not b!3708345) (not bm!267966) (not b!3708378) (not bm!267945) (not b!3708309) (not b!3708391) (not b!3708394) (not b!3708395) (not b!3708289) (not b!3708343) (not bm!267928) (not b!3708393) (not b!3708176) (not b!3708436) (not d!1086719) (not b!3708387) (not b!3708263) (not b!3708389) (not d!1086743) (not bm!267953) (not bm!267973) (not b!3708349) (not b!3708407) (not d!1086749) (not b!3708373) (not b!3708401) (not b!3708428) (not bm!267949) (not b!3708357) (not b!3708440) (not b!3708239) (not d!1086695) (not b!3708152) (not b!3708311) (not b!3708375) (not b!3708422) (not bm!267930) (not b!3708416) (not b!3708246) (not d!1086735) (not b!3708325) (not b!3708369) (not d!1086693) (not b!3708414) (not d!1086713) (not b!3708390) (not b!3708398) (not bm!267942) (not b!3708192) (not b!3708434) (not bm!267961) (not bm!267932) (not b!3708402) (not b!3708281) (not b!3708435) (not b!3708430) (not bm!267941) (not b!3708418) (not b!3708275) (not d!1086721) (not bm!267974) (not b!3708354) (not bm!267937) (not b!3708362) (not b!3708254) (not bm!267956) (not bm!267947) (not bm!267935) (not b!3708347) (not d!1086691) (not b!3708424) (not b!3708423) (not b!3708341) (not b!3708361) (not bm!267960) (not b!3708229) (not b!3708377) (not bm!267940) (not b!3708210) (not bm!267943) (not b!3708244) (not b!3708248) (not bm!267965) (not b!3708367) (not d!1086729) (not b!3708268) (not d!1086745) (not b!3708359) (not b!3708431) (not d!1086733) (not b!3708350) (not bm!267929) (not d!1086711) (not b!3708201) (not b!3708399) (not b!3708386) (not b!3708247) (not b!3708420) (not bm!267925) (not bm!267955) (not b!3708379) (not b!3708408) (not bm!267975) (not b!3708217))
(check-sat)

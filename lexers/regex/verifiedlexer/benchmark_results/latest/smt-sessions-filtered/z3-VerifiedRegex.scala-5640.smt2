; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281998 () Bool)

(assert start!281998)

(declare-fun b!2892668 () Bool)

(declare-fun e!1827995 () Bool)

(declare-fun tp_is_empty!15257 () Bool)

(assert (=> b!2892668 (= e!1827995 tp_is_empty!15257)))

(declare-fun b!2892669 () Bool)

(declare-fun e!1827997 () Bool)

(declare-fun e!1827996 () Bool)

(assert (=> b!2892669 (= e!1827997 e!1827996)))

(declare-fun res!1196806 () Bool)

(assert (=> b!2892669 (=> (not res!1196806) (not e!1827996))))

(declare-datatypes ((C!17852 0))(
  ( (C!17853 (val!10960 Int)) )
))
(declare-datatypes ((Regex!8835 0))(
  ( (ElementMatch!8835 (c!470420 C!17852)) (Concat!14156 (regOne!18182 Regex!8835) (regTwo!18182 Regex!8835)) (EmptyExpr!8835) (Star!8835 (reg!9164 Regex!8835)) (EmptyLang!8835) (Union!8835 (regOne!18183 Regex!8835) (regTwo!18183 Regex!8835)) )
))
(declare-fun r!23079 () Regex!8835)

(declare-fun validRegex!3608 (Regex!8835) Bool)

(assert (=> b!2892669 (= res!1196806 (validRegex!3608 (regTwo!18183 r!23079)))))

(declare-datatypes ((List!34636 0))(
  ( (Nil!34512) (Cons!34512 (h!39932 C!17852) (t!233679 List!34636)) )
))
(declare-datatypes ((Option!6508 0))(
  ( (None!6507) (Some!6507 (v!34633 List!34636)) )
))
(declare-fun lt!1021184 () Option!6508)

(declare-fun getLanguageWitness!542 (Regex!8835) Option!6508)

(assert (=> b!2892669 (= lt!1021184 (getLanguageWitness!542 (regTwo!18183 r!23079)))))

(declare-fun b!2892670 () Bool)

(declare-fun isDefined!5072 (Option!6508) Bool)

(assert (=> b!2892670 (= e!1827996 (not (isDefined!5072 lt!1021184)))))

(declare-fun b!2892671 () Bool)

(declare-fun tp!928777 () Bool)

(declare-fun tp!928775 () Bool)

(assert (=> b!2892671 (= e!1827995 (and tp!928777 tp!928775))))

(declare-fun b!2892672 () Bool)

(declare-fun res!1196807 () Bool)

(assert (=> b!2892672 (=> (not res!1196807) (not e!1827997))))

(get-info :version)

(assert (=> b!2892672 (= res!1196807 (not ((_ is Some!6507) (getLanguageWitness!542 (regOne!18183 r!23079)))))))

(declare-fun b!2892673 () Bool)

(declare-fun res!1196808 () Bool)

(assert (=> b!2892673 (=> (not res!1196808) (not e!1827997))))

(assert (=> b!2892673 (= res!1196808 (and (not ((_ is EmptyExpr!8835) r!23079)) (not ((_ is EmptyLang!8835) r!23079)) (not ((_ is ElementMatch!8835) r!23079)) (not ((_ is Star!8835) r!23079)) ((_ is Union!8835) r!23079)))))

(declare-fun res!1196809 () Bool)

(assert (=> start!281998 (=> (not res!1196809) (not e!1827997))))

(assert (=> start!281998 (= res!1196809 (validRegex!3608 r!23079))))

(assert (=> start!281998 e!1827997))

(assert (=> start!281998 e!1827995))

(declare-fun b!2892674 () Bool)

(declare-fun tp!928778 () Bool)

(declare-fun tp!928779 () Bool)

(assert (=> b!2892674 (= e!1827995 (and tp!928778 tp!928779))))

(declare-fun b!2892675 () Bool)

(declare-fun res!1196805 () Bool)

(assert (=> b!2892675 (=> (not res!1196805) (not e!1827997))))

(assert (=> b!2892675 (= res!1196805 (isDefined!5072 (getLanguageWitness!542 r!23079)))))

(declare-fun b!2892676 () Bool)

(declare-fun tp!928776 () Bool)

(assert (=> b!2892676 (= e!1827995 tp!928776)))

(assert (= (and start!281998 res!1196809) b!2892675))

(assert (= (and b!2892675 res!1196805) b!2892673))

(assert (= (and b!2892673 res!1196808) b!2892672))

(assert (= (and b!2892672 res!1196807) b!2892669))

(assert (= (and b!2892669 res!1196806) b!2892670))

(assert (= (and start!281998 ((_ is ElementMatch!8835) r!23079)) b!2892668))

(assert (= (and start!281998 ((_ is Concat!14156) r!23079)) b!2892674))

(assert (= (and start!281998 ((_ is Star!8835) r!23079)) b!2892676))

(assert (= (and start!281998 ((_ is Union!8835) r!23079)) b!2892671))

(declare-fun m!3303009 () Bool)

(assert (=> b!2892675 m!3303009))

(assert (=> b!2892675 m!3303009))

(declare-fun m!3303011 () Bool)

(assert (=> b!2892675 m!3303011))

(declare-fun m!3303013 () Bool)

(assert (=> b!2892670 m!3303013))

(declare-fun m!3303015 () Bool)

(assert (=> start!281998 m!3303015))

(declare-fun m!3303017 () Bool)

(assert (=> b!2892669 m!3303017))

(declare-fun m!3303019 () Bool)

(assert (=> b!2892669 m!3303019))

(declare-fun m!3303021 () Bool)

(assert (=> b!2892672 m!3303021))

(check-sat (not b!2892671) (not b!2892670) (not b!2892676) tp_is_empty!15257 (not b!2892672) (not b!2892669) (not start!281998) (not b!2892674) (not b!2892675))
(check-sat)
(get-model)

(declare-fun b!2892738 () Bool)

(declare-fun e!1828035 () Option!6508)

(assert (=> b!2892738 (= e!1828035 None!6507)))

(declare-fun bm!187943 () Bool)

(declare-fun call!187948 () Option!6508)

(declare-fun c!470443 () Bool)

(assert (=> bm!187943 (= call!187948 (getLanguageWitness!542 (ite c!470443 (regTwo!18183 (regOne!18183 r!23079)) (regOne!18182 (regOne!18183 r!23079)))))))

(declare-fun b!2892739 () Bool)

(declare-fun e!1828039 () Option!6508)

(assert (=> b!2892739 (= e!1828039 (Some!6507 Nil!34512))))

(declare-fun b!2892740 () Bool)

(declare-fun e!1828040 () Option!6508)

(assert (=> b!2892740 (= e!1828040 e!1828039)))

(declare-fun c!470450 () Bool)

(assert (=> b!2892740 (= c!470450 ((_ is Star!8835) (regOne!18183 r!23079)))))

(declare-fun b!2892741 () Bool)

(declare-fun e!1828041 () Option!6508)

(assert (=> b!2892741 (= e!1828041 None!6507)))

(declare-fun b!2892742 () Bool)

(declare-fun c!470449 () Bool)

(declare-fun lt!1021191 () Option!6508)

(assert (=> b!2892742 (= c!470449 ((_ is Some!6507) lt!1021191))))

(declare-fun call!187949 () Option!6508)

(assert (=> b!2892742 (= lt!1021191 call!187949)))

(assert (=> b!2892742 (= e!1828041 e!1828035)))

(declare-fun b!2892743 () Bool)

(assert (=> b!2892743 (= c!470443 ((_ is Union!8835) (regOne!18183 r!23079)))))

(declare-fun e!1828042 () Option!6508)

(assert (=> b!2892743 (= e!1828039 e!1828042)))

(declare-fun b!2892744 () Bool)

(declare-fun e!1828036 () Option!6508)

(declare-fun e!1828038 () Option!6508)

(assert (=> b!2892744 (= e!1828036 e!1828038)))

(declare-fun c!470445 () Bool)

(assert (=> b!2892744 (= c!470445 ((_ is EmptyLang!8835) (regOne!18183 r!23079)))))

(declare-fun b!2892745 () Bool)

(declare-fun c!470446 () Bool)

(assert (=> b!2892745 (= c!470446 ((_ is ElementMatch!8835) (regOne!18183 r!23079)))))

(assert (=> b!2892745 (= e!1828038 e!1828040)))

(declare-fun b!2892746 () Bool)

(declare-fun e!1828037 () Option!6508)

(assert (=> b!2892746 (= e!1828037 call!187948)))

(declare-fun b!2892747 () Bool)

(assert (=> b!2892747 (= e!1828042 e!1828037)))

(declare-fun lt!1021193 () Option!6508)

(assert (=> b!2892747 (= lt!1021193 call!187949)))

(declare-fun c!470444 () Bool)

(assert (=> b!2892747 (= c!470444 ((_ is Some!6507) lt!1021193))))

(declare-fun d!834561 () Bool)

(declare-fun c!470447 () Bool)

(assert (=> d!834561 (= c!470447 ((_ is EmptyExpr!8835) (regOne!18183 r!23079)))))

(assert (=> d!834561 (= (getLanguageWitness!542 (regOne!18183 r!23079)) e!1828036)))

(declare-fun b!2892748 () Bool)

(assert (=> b!2892748 (= e!1828037 lt!1021193)))

(declare-fun bm!187944 () Bool)

(assert (=> bm!187944 (= call!187949 (getLanguageWitness!542 (ite c!470443 (regOne!18183 (regOne!18183 r!23079)) (regTwo!18182 (regOne!18183 r!23079)))))))

(declare-fun b!2892749 () Bool)

(declare-fun lt!1021192 () Option!6508)

(declare-fun ++!8232 (List!34636 List!34636) List!34636)

(assert (=> b!2892749 (= e!1828035 (Some!6507 (++!8232 (v!34633 lt!1021192) (v!34633 lt!1021191))))))

(declare-fun b!2892750 () Bool)

(assert (=> b!2892750 (= e!1828040 (Some!6507 (Cons!34512 (c!470420 (regOne!18183 r!23079)) Nil!34512)))))

(declare-fun b!2892751 () Bool)

(assert (=> b!2892751 (= e!1828042 e!1828041)))

(assert (=> b!2892751 (= lt!1021192 call!187948)))

(declare-fun c!470448 () Bool)

(assert (=> b!2892751 (= c!470448 ((_ is Some!6507) lt!1021192))))

(declare-fun b!2892752 () Bool)

(assert (=> b!2892752 (= e!1828036 (Some!6507 Nil!34512))))

(declare-fun b!2892753 () Bool)

(assert (=> b!2892753 (= e!1828038 None!6507)))

(assert (= (and d!834561 c!470447) b!2892752))

(assert (= (and d!834561 (not c!470447)) b!2892744))

(assert (= (and b!2892744 c!470445) b!2892753))

(assert (= (and b!2892744 (not c!470445)) b!2892745))

(assert (= (and b!2892745 c!470446) b!2892750))

(assert (= (and b!2892745 (not c!470446)) b!2892740))

(assert (= (and b!2892740 c!470450) b!2892739))

(assert (= (and b!2892740 (not c!470450)) b!2892743))

(assert (= (and b!2892743 c!470443) b!2892747))

(assert (= (and b!2892743 (not c!470443)) b!2892751))

(assert (= (and b!2892747 c!470444) b!2892748))

(assert (= (and b!2892747 (not c!470444)) b!2892746))

(assert (= (and b!2892751 c!470448) b!2892742))

(assert (= (and b!2892751 (not c!470448)) b!2892741))

(assert (= (and b!2892742 c!470449) b!2892749))

(assert (= (and b!2892742 (not c!470449)) b!2892738))

(assert (= (or b!2892746 b!2892751) bm!187943))

(assert (= (or b!2892747 b!2892742) bm!187944))

(declare-fun m!3303031 () Bool)

(assert (=> bm!187943 m!3303031))

(declare-fun m!3303033 () Bool)

(assert (=> bm!187944 m!3303033))

(declare-fun m!3303035 () Bool)

(assert (=> b!2892749 m!3303035))

(assert (=> b!2892672 d!834561))

(declare-fun d!834569 () Bool)

(declare-fun isEmpty!18813 (Option!6508) Bool)

(assert (=> d!834569 (= (isDefined!5072 lt!1021184) (not (isEmpty!18813 lt!1021184)))))

(declare-fun bs!523898 () Bool)

(assert (= bs!523898 d!834569))

(declare-fun m!3303037 () Bool)

(assert (=> bs!523898 m!3303037))

(assert (=> b!2892670 d!834569))

(declare-fun d!834571 () Bool)

(assert (=> d!834571 (= (isDefined!5072 (getLanguageWitness!542 r!23079)) (not (isEmpty!18813 (getLanguageWitness!542 r!23079))))))

(declare-fun bs!523899 () Bool)

(assert (= bs!523899 d!834571))

(assert (=> bs!523899 m!3303009))

(declare-fun m!3303039 () Bool)

(assert (=> bs!523899 m!3303039))

(assert (=> b!2892675 d!834571))

(declare-fun b!2892784 () Bool)

(declare-fun e!1828059 () Option!6508)

(assert (=> b!2892784 (= e!1828059 None!6507)))

(declare-fun bm!187949 () Bool)

(declare-fun call!187954 () Option!6508)

(declare-fun c!470467 () Bool)

(assert (=> bm!187949 (= call!187954 (getLanguageWitness!542 (ite c!470467 (regTwo!18183 r!23079) (regOne!18182 r!23079))))))

(declare-fun b!2892785 () Bool)

(declare-fun e!1828063 () Option!6508)

(assert (=> b!2892785 (= e!1828063 (Some!6507 Nil!34512))))

(declare-fun b!2892786 () Bool)

(declare-fun e!1828064 () Option!6508)

(assert (=> b!2892786 (= e!1828064 e!1828063)))

(declare-fun c!470474 () Bool)

(assert (=> b!2892786 (= c!470474 ((_ is Star!8835) r!23079))))

(declare-fun b!2892787 () Bool)

(declare-fun e!1828065 () Option!6508)

(assert (=> b!2892787 (= e!1828065 None!6507)))

(declare-fun b!2892788 () Bool)

(declare-fun c!470473 () Bool)

(declare-fun lt!1021200 () Option!6508)

(assert (=> b!2892788 (= c!470473 ((_ is Some!6507) lt!1021200))))

(declare-fun call!187955 () Option!6508)

(assert (=> b!2892788 (= lt!1021200 call!187955)))

(assert (=> b!2892788 (= e!1828065 e!1828059)))

(declare-fun b!2892789 () Bool)

(assert (=> b!2892789 (= c!470467 ((_ is Union!8835) r!23079))))

(declare-fun e!1828066 () Option!6508)

(assert (=> b!2892789 (= e!1828063 e!1828066)))

(declare-fun b!2892790 () Bool)

(declare-fun e!1828060 () Option!6508)

(declare-fun e!1828062 () Option!6508)

(assert (=> b!2892790 (= e!1828060 e!1828062)))

(declare-fun c!470469 () Bool)

(assert (=> b!2892790 (= c!470469 ((_ is EmptyLang!8835) r!23079))))

(declare-fun b!2892791 () Bool)

(declare-fun c!470470 () Bool)

(assert (=> b!2892791 (= c!470470 ((_ is ElementMatch!8835) r!23079))))

(assert (=> b!2892791 (= e!1828062 e!1828064)))

(declare-fun b!2892792 () Bool)

(declare-fun e!1828061 () Option!6508)

(assert (=> b!2892792 (= e!1828061 call!187954)))

(declare-fun b!2892793 () Bool)

(assert (=> b!2892793 (= e!1828066 e!1828061)))

(declare-fun lt!1021202 () Option!6508)

(assert (=> b!2892793 (= lt!1021202 call!187955)))

(declare-fun c!470468 () Bool)

(assert (=> b!2892793 (= c!470468 ((_ is Some!6507) lt!1021202))))

(declare-fun d!834573 () Bool)

(declare-fun c!470471 () Bool)

(assert (=> d!834573 (= c!470471 ((_ is EmptyExpr!8835) r!23079))))

(assert (=> d!834573 (= (getLanguageWitness!542 r!23079) e!1828060)))

(declare-fun b!2892794 () Bool)

(assert (=> b!2892794 (= e!1828061 lt!1021202)))

(declare-fun bm!187950 () Bool)

(assert (=> bm!187950 (= call!187955 (getLanguageWitness!542 (ite c!470467 (regOne!18183 r!23079) (regTwo!18182 r!23079))))))

(declare-fun b!2892795 () Bool)

(declare-fun lt!1021201 () Option!6508)

(assert (=> b!2892795 (= e!1828059 (Some!6507 (++!8232 (v!34633 lt!1021201) (v!34633 lt!1021200))))))

(declare-fun b!2892796 () Bool)

(assert (=> b!2892796 (= e!1828064 (Some!6507 (Cons!34512 (c!470420 r!23079) Nil!34512)))))

(declare-fun b!2892797 () Bool)

(assert (=> b!2892797 (= e!1828066 e!1828065)))

(assert (=> b!2892797 (= lt!1021201 call!187954)))

(declare-fun c!470472 () Bool)

(assert (=> b!2892797 (= c!470472 ((_ is Some!6507) lt!1021201))))

(declare-fun b!2892798 () Bool)

(assert (=> b!2892798 (= e!1828060 (Some!6507 Nil!34512))))

(declare-fun b!2892799 () Bool)

(assert (=> b!2892799 (= e!1828062 None!6507)))

(assert (= (and d!834573 c!470471) b!2892798))

(assert (= (and d!834573 (not c!470471)) b!2892790))

(assert (= (and b!2892790 c!470469) b!2892799))

(assert (= (and b!2892790 (not c!470469)) b!2892791))

(assert (= (and b!2892791 c!470470) b!2892796))

(assert (= (and b!2892791 (not c!470470)) b!2892786))

(assert (= (and b!2892786 c!470474) b!2892785))

(assert (= (and b!2892786 (not c!470474)) b!2892789))

(assert (= (and b!2892789 c!470467) b!2892793))

(assert (= (and b!2892789 (not c!470467)) b!2892797))

(assert (= (and b!2892793 c!470468) b!2892794))

(assert (= (and b!2892793 (not c!470468)) b!2892792))

(assert (= (and b!2892797 c!470472) b!2892788))

(assert (= (and b!2892797 (not c!470472)) b!2892787))

(assert (= (and b!2892788 c!470473) b!2892795))

(assert (= (and b!2892788 (not c!470473)) b!2892784))

(assert (= (or b!2892792 b!2892797) bm!187949))

(assert (= (or b!2892793 b!2892788) bm!187950))

(declare-fun m!3303041 () Bool)

(assert (=> bm!187949 m!3303041))

(declare-fun m!3303043 () Bool)

(assert (=> bm!187950 m!3303043))

(declare-fun m!3303045 () Bool)

(assert (=> b!2892795 m!3303045))

(assert (=> b!2892675 d!834573))

(declare-fun b!2892850 () Bool)

(declare-fun res!1196837 () Bool)

(declare-fun e!1828103 () Bool)

(assert (=> b!2892850 (=> res!1196837 e!1828103)))

(assert (=> b!2892850 (= res!1196837 (not ((_ is Concat!14156) (regTwo!18183 r!23079))))))

(declare-fun e!1828098 () Bool)

(assert (=> b!2892850 (= e!1828098 e!1828103)))

(declare-fun b!2892851 () Bool)

(declare-fun e!1828102 () Bool)

(declare-fun call!187968 () Bool)

(assert (=> b!2892851 (= e!1828102 call!187968)))

(declare-fun b!2892852 () Bool)

(declare-fun e!1828097 () Bool)

(declare-fun call!187967 () Bool)

(assert (=> b!2892852 (= e!1828097 call!187967)))

(declare-fun b!2892854 () Bool)

(declare-fun e!1828099 () Bool)

(assert (=> b!2892854 (= e!1828099 e!1828098)))

(declare-fun c!470496 () Bool)

(assert (=> b!2892854 (= c!470496 ((_ is Union!8835) (regTwo!18183 r!23079)))))

(declare-fun bm!187961 () Bool)

(declare-fun call!187966 () Bool)

(assert (=> bm!187961 (= call!187966 call!187968)))

(declare-fun b!2892855 () Bool)

(declare-fun res!1196838 () Bool)

(assert (=> b!2892855 (=> (not res!1196838) (not e!1828097))))

(assert (=> b!2892855 (= res!1196838 call!187966)))

(assert (=> b!2892855 (= e!1828098 e!1828097)))

(declare-fun b!2892856 () Bool)

(declare-fun e!1828100 () Bool)

(assert (=> b!2892856 (= e!1828100 call!187967)))

(declare-fun bm!187962 () Bool)

(assert (=> bm!187962 (= call!187967 (validRegex!3608 (ite c!470496 (regTwo!18183 (regTwo!18183 r!23079)) (regTwo!18182 (regTwo!18183 r!23079)))))))

(declare-fun bm!187963 () Bool)

(declare-fun c!470495 () Bool)

(assert (=> bm!187963 (= call!187968 (validRegex!3608 (ite c!470495 (reg!9164 (regTwo!18183 r!23079)) (ite c!470496 (regOne!18183 (regTwo!18183 r!23079)) (regOne!18182 (regTwo!18183 r!23079))))))))

(declare-fun b!2892857 () Bool)

(assert (=> b!2892857 (= e!1828103 e!1828100)))

(declare-fun res!1196839 () Bool)

(assert (=> b!2892857 (=> (not res!1196839) (not e!1828100))))

(assert (=> b!2892857 (= res!1196839 call!187966)))

(declare-fun b!2892858 () Bool)

(declare-fun e!1828101 () Bool)

(assert (=> b!2892858 (= e!1828101 e!1828099)))

(assert (=> b!2892858 (= c!470495 ((_ is Star!8835) (regTwo!18183 r!23079)))))

(declare-fun b!2892853 () Bool)

(assert (=> b!2892853 (= e!1828099 e!1828102)))

(declare-fun res!1196835 () Bool)

(declare-fun nullable!2735 (Regex!8835) Bool)

(assert (=> b!2892853 (= res!1196835 (not (nullable!2735 (reg!9164 (regTwo!18183 r!23079)))))))

(assert (=> b!2892853 (=> (not res!1196835) (not e!1828102))))

(declare-fun d!834575 () Bool)

(declare-fun res!1196836 () Bool)

(assert (=> d!834575 (=> res!1196836 e!1828101)))

(assert (=> d!834575 (= res!1196836 ((_ is ElementMatch!8835) (regTwo!18183 r!23079)))))

(assert (=> d!834575 (= (validRegex!3608 (regTwo!18183 r!23079)) e!1828101)))

(assert (= (and d!834575 (not res!1196836)) b!2892858))

(assert (= (and b!2892858 c!470495) b!2892853))

(assert (= (and b!2892858 (not c!470495)) b!2892854))

(assert (= (and b!2892853 res!1196835) b!2892851))

(assert (= (and b!2892854 c!470496) b!2892855))

(assert (= (and b!2892854 (not c!470496)) b!2892850))

(assert (= (and b!2892855 res!1196838) b!2892852))

(assert (= (and b!2892850 (not res!1196837)) b!2892857))

(assert (= (and b!2892857 res!1196839) b!2892856))

(assert (= (or b!2892852 b!2892856) bm!187962))

(assert (= (or b!2892855 b!2892857) bm!187961))

(assert (= (or b!2892851 bm!187961) bm!187963))

(declare-fun m!3303061 () Bool)

(assert (=> bm!187962 m!3303061))

(declare-fun m!3303063 () Bool)

(assert (=> bm!187963 m!3303063))

(declare-fun m!3303065 () Bool)

(assert (=> b!2892853 m!3303065))

(assert (=> b!2892669 d!834575))

(declare-fun b!2892868 () Bool)

(declare-fun e!1828111 () Option!6508)

(assert (=> b!2892868 (= e!1828111 None!6507)))

(declare-fun bm!187967 () Bool)

(declare-fun call!187972 () Option!6508)

(declare-fun c!470499 () Bool)

(assert (=> bm!187967 (= call!187972 (getLanguageWitness!542 (ite c!470499 (regTwo!18183 (regTwo!18183 r!23079)) (regOne!18182 (regTwo!18183 r!23079)))))))

(declare-fun b!2892869 () Bool)

(declare-fun e!1828115 () Option!6508)

(assert (=> b!2892869 (= e!1828115 (Some!6507 Nil!34512))))

(declare-fun b!2892870 () Bool)

(declare-fun e!1828116 () Option!6508)

(assert (=> b!2892870 (= e!1828116 e!1828115)))

(declare-fun c!470506 () Bool)

(assert (=> b!2892870 (= c!470506 ((_ is Star!8835) (regTwo!18183 r!23079)))))

(declare-fun b!2892871 () Bool)

(declare-fun e!1828117 () Option!6508)

(assert (=> b!2892871 (= e!1828117 None!6507)))

(declare-fun b!2892872 () Bool)

(declare-fun c!470505 () Bool)

(declare-fun lt!1021209 () Option!6508)

(assert (=> b!2892872 (= c!470505 ((_ is Some!6507) lt!1021209))))

(declare-fun call!187973 () Option!6508)

(assert (=> b!2892872 (= lt!1021209 call!187973)))

(assert (=> b!2892872 (= e!1828117 e!1828111)))

(declare-fun b!2892873 () Bool)

(assert (=> b!2892873 (= c!470499 ((_ is Union!8835) (regTwo!18183 r!23079)))))

(declare-fun e!1828118 () Option!6508)

(assert (=> b!2892873 (= e!1828115 e!1828118)))

(declare-fun b!2892874 () Bool)

(declare-fun e!1828112 () Option!6508)

(declare-fun e!1828114 () Option!6508)

(assert (=> b!2892874 (= e!1828112 e!1828114)))

(declare-fun c!470501 () Bool)

(assert (=> b!2892874 (= c!470501 ((_ is EmptyLang!8835) (regTwo!18183 r!23079)))))

(declare-fun b!2892875 () Bool)

(declare-fun c!470502 () Bool)

(assert (=> b!2892875 (= c!470502 ((_ is ElementMatch!8835) (regTwo!18183 r!23079)))))

(assert (=> b!2892875 (= e!1828114 e!1828116)))

(declare-fun b!2892876 () Bool)

(declare-fun e!1828113 () Option!6508)

(assert (=> b!2892876 (= e!1828113 call!187972)))

(declare-fun b!2892877 () Bool)

(assert (=> b!2892877 (= e!1828118 e!1828113)))

(declare-fun lt!1021211 () Option!6508)

(assert (=> b!2892877 (= lt!1021211 call!187973)))

(declare-fun c!470500 () Bool)

(assert (=> b!2892877 (= c!470500 ((_ is Some!6507) lt!1021211))))

(declare-fun d!834583 () Bool)

(declare-fun c!470503 () Bool)

(assert (=> d!834583 (= c!470503 ((_ is EmptyExpr!8835) (regTwo!18183 r!23079)))))

(assert (=> d!834583 (= (getLanguageWitness!542 (regTwo!18183 r!23079)) e!1828112)))

(declare-fun b!2892878 () Bool)

(assert (=> b!2892878 (= e!1828113 lt!1021211)))

(declare-fun bm!187968 () Bool)

(assert (=> bm!187968 (= call!187973 (getLanguageWitness!542 (ite c!470499 (regOne!18183 (regTwo!18183 r!23079)) (regTwo!18182 (regTwo!18183 r!23079)))))))

(declare-fun b!2892879 () Bool)

(declare-fun lt!1021210 () Option!6508)

(assert (=> b!2892879 (= e!1828111 (Some!6507 (++!8232 (v!34633 lt!1021210) (v!34633 lt!1021209))))))

(declare-fun b!2892880 () Bool)

(assert (=> b!2892880 (= e!1828116 (Some!6507 (Cons!34512 (c!470420 (regTwo!18183 r!23079)) Nil!34512)))))

(declare-fun b!2892881 () Bool)

(assert (=> b!2892881 (= e!1828118 e!1828117)))

(assert (=> b!2892881 (= lt!1021210 call!187972)))

(declare-fun c!470504 () Bool)

(assert (=> b!2892881 (= c!470504 ((_ is Some!6507) lt!1021210))))

(declare-fun b!2892882 () Bool)

(assert (=> b!2892882 (= e!1828112 (Some!6507 Nil!34512))))

(declare-fun b!2892883 () Bool)

(assert (=> b!2892883 (= e!1828114 None!6507)))

(assert (= (and d!834583 c!470503) b!2892882))

(assert (= (and d!834583 (not c!470503)) b!2892874))

(assert (= (and b!2892874 c!470501) b!2892883))

(assert (= (and b!2892874 (not c!470501)) b!2892875))

(assert (= (and b!2892875 c!470502) b!2892880))

(assert (= (and b!2892875 (not c!470502)) b!2892870))

(assert (= (and b!2892870 c!470506) b!2892869))

(assert (= (and b!2892870 (not c!470506)) b!2892873))

(assert (= (and b!2892873 c!470499) b!2892877))

(assert (= (and b!2892873 (not c!470499)) b!2892881))

(assert (= (and b!2892877 c!470500) b!2892878))

(assert (= (and b!2892877 (not c!470500)) b!2892876))

(assert (= (and b!2892881 c!470504) b!2892872))

(assert (= (and b!2892881 (not c!470504)) b!2892871))

(assert (= (and b!2892872 c!470505) b!2892879))

(assert (= (and b!2892872 (not c!470505)) b!2892868))

(assert (= (or b!2892876 b!2892881) bm!187967))

(assert (= (or b!2892877 b!2892872) bm!187968))

(declare-fun m!3303073 () Bool)

(assert (=> bm!187967 m!3303073))

(declare-fun m!3303075 () Bool)

(assert (=> bm!187968 m!3303075))

(declare-fun m!3303077 () Bool)

(assert (=> b!2892879 m!3303077))

(assert (=> b!2892669 d!834583))

(declare-fun b!2892900 () Bool)

(declare-fun res!1196847 () Bool)

(declare-fun e!1828133 () Bool)

(assert (=> b!2892900 (=> res!1196847 e!1828133)))

(assert (=> b!2892900 (= res!1196847 (not ((_ is Concat!14156) r!23079)))))

(declare-fun e!1828128 () Bool)

(assert (=> b!2892900 (= e!1828128 e!1828133)))

(declare-fun b!2892901 () Bool)

(declare-fun e!1828132 () Bool)

(declare-fun call!187978 () Bool)

(assert (=> b!2892901 (= e!1828132 call!187978)))

(declare-fun b!2892902 () Bool)

(declare-fun e!1828127 () Bool)

(declare-fun call!187977 () Bool)

(assert (=> b!2892902 (= e!1828127 call!187977)))

(declare-fun b!2892904 () Bool)

(declare-fun e!1828129 () Bool)

(assert (=> b!2892904 (= e!1828129 e!1828128)))

(declare-fun c!470516 () Bool)

(assert (=> b!2892904 (= c!470516 ((_ is Union!8835) r!23079))))

(declare-fun bm!187971 () Bool)

(declare-fun call!187976 () Bool)

(assert (=> bm!187971 (= call!187976 call!187978)))

(declare-fun b!2892905 () Bool)

(declare-fun res!1196848 () Bool)

(assert (=> b!2892905 (=> (not res!1196848) (not e!1828127))))

(assert (=> b!2892905 (= res!1196848 call!187976)))

(assert (=> b!2892905 (= e!1828128 e!1828127)))

(declare-fun b!2892906 () Bool)

(declare-fun e!1828130 () Bool)

(assert (=> b!2892906 (= e!1828130 call!187977)))

(declare-fun bm!187972 () Bool)

(assert (=> bm!187972 (= call!187977 (validRegex!3608 (ite c!470516 (regTwo!18183 r!23079) (regTwo!18182 r!23079))))))

(declare-fun c!470515 () Bool)

(declare-fun bm!187973 () Bool)

(assert (=> bm!187973 (= call!187978 (validRegex!3608 (ite c!470515 (reg!9164 r!23079) (ite c!470516 (regOne!18183 r!23079) (regOne!18182 r!23079)))))))

(declare-fun b!2892907 () Bool)

(assert (=> b!2892907 (= e!1828133 e!1828130)))

(declare-fun res!1196849 () Bool)

(assert (=> b!2892907 (=> (not res!1196849) (not e!1828130))))

(assert (=> b!2892907 (= res!1196849 call!187976)))

(declare-fun b!2892908 () Bool)

(declare-fun e!1828131 () Bool)

(assert (=> b!2892908 (= e!1828131 e!1828129)))

(assert (=> b!2892908 (= c!470515 ((_ is Star!8835) r!23079))))

(declare-fun b!2892903 () Bool)

(assert (=> b!2892903 (= e!1828129 e!1828132)))

(declare-fun res!1196845 () Bool)

(assert (=> b!2892903 (= res!1196845 (not (nullable!2735 (reg!9164 r!23079))))))

(assert (=> b!2892903 (=> (not res!1196845) (not e!1828132))))

(declare-fun d!834587 () Bool)

(declare-fun res!1196846 () Bool)

(assert (=> d!834587 (=> res!1196846 e!1828131)))

(assert (=> d!834587 (= res!1196846 ((_ is ElementMatch!8835) r!23079))))

(assert (=> d!834587 (= (validRegex!3608 r!23079) e!1828131)))

(assert (= (and d!834587 (not res!1196846)) b!2892908))

(assert (= (and b!2892908 c!470515) b!2892903))

(assert (= (and b!2892908 (not c!470515)) b!2892904))

(assert (= (and b!2892903 res!1196845) b!2892901))

(assert (= (and b!2892904 c!470516) b!2892905))

(assert (= (and b!2892904 (not c!470516)) b!2892900))

(assert (= (and b!2892905 res!1196848) b!2892902))

(assert (= (and b!2892900 (not res!1196847)) b!2892907))

(assert (= (and b!2892907 res!1196849) b!2892906))

(assert (= (or b!2892902 b!2892906) bm!187972))

(assert (= (or b!2892905 b!2892907) bm!187971))

(assert (= (or b!2892901 bm!187971) bm!187973))

(declare-fun m!3303085 () Bool)

(assert (=> bm!187972 m!3303085))

(declare-fun m!3303087 () Bool)

(assert (=> bm!187973 m!3303087))

(declare-fun m!3303089 () Bool)

(assert (=> b!2892903 m!3303089))

(assert (=> start!281998 d!834587))

(declare-fun b!2892942 () Bool)

(declare-fun e!1828141 () Bool)

(declare-fun tp!928817 () Bool)

(declare-fun tp!928818 () Bool)

(assert (=> b!2892942 (= e!1828141 (and tp!928817 tp!928818))))

(declare-fun b!2892943 () Bool)

(declare-fun tp!928815 () Bool)

(assert (=> b!2892943 (= e!1828141 tp!928815)))

(assert (=> b!2892671 (= tp!928777 e!1828141)))

(declare-fun b!2892944 () Bool)

(declare-fun tp!928816 () Bool)

(declare-fun tp!928819 () Bool)

(assert (=> b!2892944 (= e!1828141 (and tp!928816 tp!928819))))

(declare-fun b!2892941 () Bool)

(assert (=> b!2892941 (= e!1828141 tp_is_empty!15257)))

(assert (= (and b!2892671 ((_ is ElementMatch!8835) (regOne!18183 r!23079))) b!2892941))

(assert (= (and b!2892671 ((_ is Concat!14156) (regOne!18183 r!23079))) b!2892942))

(assert (= (and b!2892671 ((_ is Star!8835) (regOne!18183 r!23079))) b!2892943))

(assert (= (and b!2892671 ((_ is Union!8835) (regOne!18183 r!23079))) b!2892944))

(declare-fun b!2892950 () Bool)

(declare-fun e!1828143 () Bool)

(declare-fun tp!928827 () Bool)

(declare-fun tp!928828 () Bool)

(assert (=> b!2892950 (= e!1828143 (and tp!928827 tp!928828))))

(declare-fun b!2892951 () Bool)

(declare-fun tp!928825 () Bool)

(assert (=> b!2892951 (= e!1828143 tp!928825)))

(assert (=> b!2892671 (= tp!928775 e!1828143)))

(declare-fun b!2892952 () Bool)

(declare-fun tp!928826 () Bool)

(declare-fun tp!928829 () Bool)

(assert (=> b!2892952 (= e!1828143 (and tp!928826 tp!928829))))

(declare-fun b!2892949 () Bool)

(assert (=> b!2892949 (= e!1828143 tp_is_empty!15257)))

(assert (= (and b!2892671 ((_ is ElementMatch!8835) (regTwo!18183 r!23079))) b!2892949))

(assert (= (and b!2892671 ((_ is Concat!14156) (regTwo!18183 r!23079))) b!2892950))

(assert (= (and b!2892671 ((_ is Star!8835) (regTwo!18183 r!23079))) b!2892951))

(assert (= (and b!2892671 ((_ is Union!8835) (regTwo!18183 r!23079))) b!2892952))

(declare-fun b!2892958 () Bool)

(declare-fun e!1828145 () Bool)

(declare-fun tp!928837 () Bool)

(declare-fun tp!928838 () Bool)

(assert (=> b!2892958 (= e!1828145 (and tp!928837 tp!928838))))

(declare-fun b!2892959 () Bool)

(declare-fun tp!928835 () Bool)

(assert (=> b!2892959 (= e!1828145 tp!928835)))

(assert (=> b!2892676 (= tp!928776 e!1828145)))

(declare-fun b!2892960 () Bool)

(declare-fun tp!928836 () Bool)

(declare-fun tp!928839 () Bool)

(assert (=> b!2892960 (= e!1828145 (and tp!928836 tp!928839))))

(declare-fun b!2892957 () Bool)

(assert (=> b!2892957 (= e!1828145 tp_is_empty!15257)))

(assert (= (and b!2892676 ((_ is ElementMatch!8835) (reg!9164 r!23079))) b!2892957))

(assert (= (and b!2892676 ((_ is Concat!14156) (reg!9164 r!23079))) b!2892958))

(assert (= (and b!2892676 ((_ is Star!8835) (reg!9164 r!23079))) b!2892959))

(assert (= (and b!2892676 ((_ is Union!8835) (reg!9164 r!23079))) b!2892960))

(declare-fun b!2892962 () Bool)

(declare-fun e!1828146 () Bool)

(declare-fun tp!928842 () Bool)

(declare-fun tp!928843 () Bool)

(assert (=> b!2892962 (= e!1828146 (and tp!928842 tp!928843))))

(declare-fun b!2892963 () Bool)

(declare-fun tp!928840 () Bool)

(assert (=> b!2892963 (= e!1828146 tp!928840)))

(assert (=> b!2892674 (= tp!928778 e!1828146)))

(declare-fun b!2892964 () Bool)

(declare-fun tp!928841 () Bool)

(declare-fun tp!928844 () Bool)

(assert (=> b!2892964 (= e!1828146 (and tp!928841 tp!928844))))

(declare-fun b!2892961 () Bool)

(assert (=> b!2892961 (= e!1828146 tp_is_empty!15257)))

(assert (= (and b!2892674 ((_ is ElementMatch!8835) (regOne!18182 r!23079))) b!2892961))

(assert (= (and b!2892674 ((_ is Concat!14156) (regOne!18182 r!23079))) b!2892962))

(assert (= (and b!2892674 ((_ is Star!8835) (regOne!18182 r!23079))) b!2892963))

(assert (= (and b!2892674 ((_ is Union!8835) (regOne!18182 r!23079))) b!2892964))

(declare-fun b!2892966 () Bool)

(declare-fun e!1828147 () Bool)

(declare-fun tp!928847 () Bool)

(declare-fun tp!928848 () Bool)

(assert (=> b!2892966 (= e!1828147 (and tp!928847 tp!928848))))

(declare-fun b!2892967 () Bool)

(declare-fun tp!928845 () Bool)

(assert (=> b!2892967 (= e!1828147 tp!928845)))

(assert (=> b!2892674 (= tp!928779 e!1828147)))

(declare-fun b!2892968 () Bool)

(declare-fun tp!928846 () Bool)

(declare-fun tp!928849 () Bool)

(assert (=> b!2892968 (= e!1828147 (and tp!928846 tp!928849))))

(declare-fun b!2892965 () Bool)

(assert (=> b!2892965 (= e!1828147 tp_is_empty!15257)))

(assert (= (and b!2892674 ((_ is ElementMatch!8835) (regTwo!18182 r!23079))) b!2892965))

(assert (= (and b!2892674 ((_ is Concat!14156) (regTwo!18182 r!23079))) b!2892966))

(assert (= (and b!2892674 ((_ is Star!8835) (regTwo!18182 r!23079))) b!2892967))

(assert (= (and b!2892674 ((_ is Union!8835) (regTwo!18182 r!23079))) b!2892968))

(check-sat (not b!2892951) (not b!2892962) (not b!2892879) (not d!834569) (not d!834571) tp_is_empty!15257 (not b!2892853) (not b!2892944) (not b!2892942) (not bm!187972) (not b!2892967) (not b!2892950) (not b!2892903) (not b!2892966) (not b!2892749) (not bm!187967) (not bm!187949) (not b!2892964) (not bm!187944) (not b!2892952) (not bm!187943) (not b!2892968) (not b!2892963) (not bm!187950) (not bm!187973) (not bm!187968) (not b!2892958) (not bm!187962) (not b!2892795) (not bm!187963) (not b!2892959) (not b!2892960) (not b!2892943))
(check-sat)

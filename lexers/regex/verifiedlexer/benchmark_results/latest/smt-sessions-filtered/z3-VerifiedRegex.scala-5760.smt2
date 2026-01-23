; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285332 () Bool)

(assert start!285332)

(declare-fun b!2935861 () Bool)

(declare-fun e!1850728 () Bool)

(declare-fun e!1850727 () Bool)

(assert (=> b!2935861 (= e!1850728 (not e!1850727))))

(declare-fun res!1212084 () Bool)

(assert (=> b!2935861 (=> res!1212084 e!1850727)))

(declare-fun lt!1029239 () Bool)

(declare-datatypes ((C!18328 0))(
  ( (C!18329 (val!11200 Int)) )
))
(declare-datatypes ((Regex!9071 0))(
  ( (ElementMatch!9071 (c!479677 C!18328)) (Concat!14392 (regOne!18654 Regex!9071) (regTwo!18654 Regex!9071)) (EmptyExpr!9071) (Star!9071 (reg!9400 Regex!9071)) (EmptyLang!9071) (Union!9071 (regOne!18655 Regex!9071) (regTwo!18655 Regex!9071)) )
))
(declare-fun r!17423 () Regex!9071)

(get-info :version)

(assert (=> b!2935861 (= res!1212084 (or (not lt!1029239) ((_ is Concat!14392) r!17423) ((_ is Union!9071) r!17423) ((_ is Star!9071) r!17423)))))

(declare-datatypes ((List!34936 0))(
  ( (Nil!34812) (Cons!34812 (h!40232 C!18328) (t!234001 List!34936)) )
))
(declare-fun s!11993 () List!34936)

(declare-fun matchRSpec!1208 (Regex!9071 List!34936) Bool)

(assert (=> b!2935861 (= lt!1029239 (matchRSpec!1208 r!17423 s!11993))))

(declare-fun matchR!3953 (Regex!9071 List!34936) Bool)

(assert (=> b!2935861 (= lt!1029239 (matchR!3953 r!17423 s!11993))))

(declare-datatypes ((Unit!48521 0))(
  ( (Unit!48522) )
))
(declare-fun lt!1029238 () Unit!48521)

(declare-fun mainMatchTheorem!1208 (Regex!9071 List!34936) Unit!48521)

(assert (=> b!2935861 (= lt!1029238 (mainMatchTheorem!1208 r!17423 s!11993))))

(declare-fun b!2935863 () Bool)

(declare-fun e!1850729 () Bool)

(declare-fun tp!940119 () Bool)

(declare-fun tp!940116 () Bool)

(assert (=> b!2935863 (= e!1850729 (and tp!940119 tp!940116))))

(declare-fun b!2935864 () Bool)

(declare-fun e!1850726 () Bool)

(declare-fun tp_is_empty!15705 () Bool)

(declare-fun tp!940117 () Bool)

(assert (=> b!2935864 (= e!1850726 (and tp_is_empty!15705 tp!940117))))

(declare-fun b!2935865 () Bool)

(declare-fun tp!940120 () Bool)

(assert (=> b!2935865 (= e!1850729 tp!940120)))

(declare-fun b!2935866 () Bool)

(declare-fun validRegex!3804 (Regex!9071) Bool)

(declare-fun simplify!78 (Regex!9071) Regex!9071)

(assert (=> b!2935866 (= e!1850727 (validRegex!3804 (simplify!78 r!17423)))))

(declare-fun b!2935867 () Bool)

(declare-fun tp!940121 () Bool)

(declare-fun tp!940118 () Bool)

(assert (=> b!2935867 (= e!1850729 (and tp!940121 tp!940118))))

(declare-fun b!2935862 () Bool)

(assert (=> b!2935862 (= e!1850729 tp_is_empty!15705)))

(declare-fun res!1212083 () Bool)

(assert (=> start!285332 (=> (not res!1212083) (not e!1850728))))

(assert (=> start!285332 (= res!1212083 (validRegex!3804 r!17423))))

(assert (=> start!285332 e!1850728))

(assert (=> start!285332 e!1850729))

(assert (=> start!285332 e!1850726))

(assert (= (and start!285332 res!1212083) b!2935861))

(assert (= (and b!2935861 (not res!1212084)) b!2935866))

(assert (= (and start!285332 ((_ is ElementMatch!9071) r!17423)) b!2935862))

(assert (= (and start!285332 ((_ is Concat!14392) r!17423)) b!2935863))

(assert (= (and start!285332 ((_ is Star!9071) r!17423)) b!2935865))

(assert (= (and start!285332 ((_ is Union!9071) r!17423)) b!2935867))

(assert (= (and start!285332 ((_ is Cons!34812) s!11993)) b!2935864))

(declare-fun m!3323713 () Bool)

(assert (=> b!2935861 m!3323713))

(declare-fun m!3323715 () Bool)

(assert (=> b!2935861 m!3323715))

(declare-fun m!3323717 () Bool)

(assert (=> b!2935861 m!3323717))

(declare-fun m!3323719 () Bool)

(assert (=> b!2935866 m!3323719))

(assert (=> b!2935866 m!3323719))

(declare-fun m!3323721 () Bool)

(assert (=> b!2935866 m!3323721))

(declare-fun m!3323723 () Bool)

(assert (=> start!285332 m!3323723))

(check-sat (not b!2935867) (not b!2935861) (not b!2935863) (not start!285332) (not b!2935864) (not b!2935865) (not b!2935866) tp_is_empty!15705)
(check-sat)
(get-model)

(declare-fun call!192906 () Bool)

(declare-fun bm!192900 () Bool)

(declare-fun c!479682 () Bool)

(declare-fun c!479683 () Bool)

(assert (=> bm!192900 (= call!192906 (validRegex!3804 (ite c!479682 (reg!9400 r!17423) (ite c!479683 (regOne!18655 r!17423) (regTwo!18654 r!17423)))))))

(declare-fun b!2935886 () Bool)

(declare-fun e!1850750 () Bool)

(declare-fun e!1850747 () Bool)

(assert (=> b!2935886 (= e!1850750 e!1850747)))

(assert (=> b!2935886 (= c!479682 ((_ is Star!9071) r!17423))))

(declare-fun b!2935887 () Bool)

(declare-fun e!1850748 () Bool)

(declare-fun call!192907 () Bool)

(assert (=> b!2935887 (= e!1850748 call!192907)))

(declare-fun b!2935888 () Bool)

(declare-fun res!1212097 () Bool)

(declare-fun e!1850744 () Bool)

(assert (=> b!2935888 (=> (not res!1212097) (not e!1850744))))

(assert (=> b!2935888 (= res!1212097 call!192907)))

(declare-fun e!1850746 () Bool)

(assert (=> b!2935888 (= e!1850746 e!1850744)))

(declare-fun bm!192901 () Bool)

(declare-fun call!192905 () Bool)

(assert (=> bm!192901 (= call!192905 (validRegex!3804 (ite c!479683 (regTwo!18655 r!17423) (regOne!18654 r!17423))))))

(declare-fun b!2935889 () Bool)

(declare-fun res!1212096 () Bool)

(declare-fun e!1850745 () Bool)

(assert (=> b!2935889 (=> res!1212096 e!1850745)))

(assert (=> b!2935889 (= res!1212096 (not ((_ is Concat!14392) r!17423)))))

(assert (=> b!2935889 (= e!1850746 e!1850745)))

(declare-fun b!2935890 () Bool)

(assert (=> b!2935890 (= e!1850744 call!192905)))

(declare-fun b!2935891 () Bool)

(assert (=> b!2935891 (= e!1850745 e!1850748)))

(declare-fun res!1212095 () Bool)

(assert (=> b!2935891 (=> (not res!1212095) (not e!1850748))))

(assert (=> b!2935891 (= res!1212095 call!192905)))

(declare-fun bm!192902 () Bool)

(assert (=> bm!192902 (= call!192907 call!192906)))

(declare-fun b!2935892 () Bool)

(declare-fun e!1850749 () Bool)

(assert (=> b!2935892 (= e!1850747 e!1850749)))

(declare-fun res!1212098 () Bool)

(declare-fun nullable!2858 (Regex!9071) Bool)

(assert (=> b!2935892 (= res!1212098 (not (nullable!2858 (reg!9400 r!17423))))))

(assert (=> b!2935892 (=> (not res!1212098) (not e!1850749))))

(declare-fun b!2935893 () Bool)

(assert (=> b!2935893 (= e!1850749 call!192906)))

(declare-fun b!2935894 () Bool)

(assert (=> b!2935894 (= e!1850747 e!1850746)))

(assert (=> b!2935894 (= c!479683 ((_ is Union!9071) r!17423))))

(declare-fun d!839843 () Bool)

(declare-fun res!1212099 () Bool)

(assert (=> d!839843 (=> res!1212099 e!1850750)))

(assert (=> d!839843 (= res!1212099 ((_ is ElementMatch!9071) r!17423))))

(assert (=> d!839843 (= (validRegex!3804 r!17423) e!1850750)))

(assert (= (and d!839843 (not res!1212099)) b!2935886))

(assert (= (and b!2935886 c!479682) b!2935892))

(assert (= (and b!2935886 (not c!479682)) b!2935894))

(assert (= (and b!2935892 res!1212098) b!2935893))

(assert (= (and b!2935894 c!479683) b!2935888))

(assert (= (and b!2935894 (not c!479683)) b!2935889))

(assert (= (and b!2935888 res!1212097) b!2935890))

(assert (= (and b!2935889 (not res!1212096)) b!2935891))

(assert (= (and b!2935891 res!1212095) b!2935887))

(assert (= (or b!2935888 b!2935887) bm!192902))

(assert (= (or b!2935890 b!2935891) bm!192901))

(assert (= (or b!2935893 bm!192902) bm!192900))

(declare-fun m!3323725 () Bool)

(assert (=> bm!192900 m!3323725))

(declare-fun m!3323727 () Bool)

(assert (=> bm!192901 m!3323727))

(declare-fun m!3323729 () Bool)

(assert (=> b!2935892 m!3323729))

(assert (=> start!285332 d!839843))

(declare-fun c!479684 () Bool)

(declare-fun bm!192903 () Bool)

(declare-fun c!479685 () Bool)

(declare-fun call!192909 () Bool)

(assert (=> bm!192903 (= call!192909 (validRegex!3804 (ite c!479684 (reg!9400 (simplify!78 r!17423)) (ite c!479685 (regOne!18655 (simplify!78 r!17423)) (regTwo!18654 (simplify!78 r!17423))))))))

(declare-fun b!2935895 () Bool)

(declare-fun e!1850757 () Bool)

(declare-fun e!1850754 () Bool)

(assert (=> b!2935895 (= e!1850757 e!1850754)))

(assert (=> b!2935895 (= c!479684 ((_ is Star!9071) (simplify!78 r!17423)))))

(declare-fun b!2935896 () Bool)

(declare-fun e!1850755 () Bool)

(declare-fun call!192910 () Bool)

(assert (=> b!2935896 (= e!1850755 call!192910)))

(declare-fun b!2935897 () Bool)

(declare-fun res!1212102 () Bool)

(declare-fun e!1850751 () Bool)

(assert (=> b!2935897 (=> (not res!1212102) (not e!1850751))))

(assert (=> b!2935897 (= res!1212102 call!192910)))

(declare-fun e!1850753 () Bool)

(assert (=> b!2935897 (= e!1850753 e!1850751)))

(declare-fun bm!192904 () Bool)

(declare-fun call!192908 () Bool)

(assert (=> bm!192904 (= call!192908 (validRegex!3804 (ite c!479685 (regTwo!18655 (simplify!78 r!17423)) (regOne!18654 (simplify!78 r!17423)))))))

(declare-fun b!2935898 () Bool)

(declare-fun res!1212101 () Bool)

(declare-fun e!1850752 () Bool)

(assert (=> b!2935898 (=> res!1212101 e!1850752)))

(assert (=> b!2935898 (= res!1212101 (not ((_ is Concat!14392) (simplify!78 r!17423))))))

(assert (=> b!2935898 (= e!1850753 e!1850752)))

(declare-fun b!2935899 () Bool)

(assert (=> b!2935899 (= e!1850751 call!192908)))

(declare-fun b!2935900 () Bool)

(assert (=> b!2935900 (= e!1850752 e!1850755)))

(declare-fun res!1212100 () Bool)

(assert (=> b!2935900 (=> (not res!1212100) (not e!1850755))))

(assert (=> b!2935900 (= res!1212100 call!192908)))

(declare-fun bm!192905 () Bool)

(assert (=> bm!192905 (= call!192910 call!192909)))

(declare-fun b!2935901 () Bool)

(declare-fun e!1850756 () Bool)

(assert (=> b!2935901 (= e!1850754 e!1850756)))

(declare-fun res!1212103 () Bool)

(assert (=> b!2935901 (= res!1212103 (not (nullable!2858 (reg!9400 (simplify!78 r!17423)))))))

(assert (=> b!2935901 (=> (not res!1212103) (not e!1850756))))

(declare-fun b!2935902 () Bool)

(assert (=> b!2935902 (= e!1850756 call!192909)))

(declare-fun b!2935903 () Bool)

(assert (=> b!2935903 (= e!1850754 e!1850753)))

(assert (=> b!2935903 (= c!479685 ((_ is Union!9071) (simplify!78 r!17423)))))

(declare-fun d!839845 () Bool)

(declare-fun res!1212104 () Bool)

(assert (=> d!839845 (=> res!1212104 e!1850757)))

(assert (=> d!839845 (= res!1212104 ((_ is ElementMatch!9071) (simplify!78 r!17423)))))

(assert (=> d!839845 (= (validRegex!3804 (simplify!78 r!17423)) e!1850757)))

(assert (= (and d!839845 (not res!1212104)) b!2935895))

(assert (= (and b!2935895 c!479684) b!2935901))

(assert (= (and b!2935895 (not c!479684)) b!2935903))

(assert (= (and b!2935901 res!1212103) b!2935902))

(assert (= (and b!2935903 c!479685) b!2935897))

(assert (= (and b!2935903 (not c!479685)) b!2935898))

(assert (= (and b!2935897 res!1212102) b!2935899))

(assert (= (and b!2935898 (not res!1212101)) b!2935900))

(assert (= (and b!2935900 res!1212100) b!2935896))

(assert (= (or b!2935897 b!2935896) bm!192905))

(assert (= (or b!2935899 b!2935900) bm!192904))

(assert (= (or b!2935902 bm!192905) bm!192903))

(declare-fun m!3323731 () Bool)

(assert (=> bm!192903 m!3323731))

(declare-fun m!3323733 () Bool)

(assert (=> bm!192904 m!3323733))

(declare-fun m!3323735 () Bool)

(assert (=> b!2935901 m!3323735))

(assert (=> b!2935866 d!839845))

(declare-fun b!2935976 () Bool)

(declare-fun e!1850810 () Regex!9071)

(assert (=> b!2935976 (= e!1850810 EmptyLang!9071)))

(declare-fun b!2935977 () Bool)

(declare-fun e!1850804 () Regex!9071)

(declare-fun lt!1029257 () Regex!9071)

(assert (=> b!2935977 (= e!1850804 lt!1029257)))

(declare-fun b!2935978 () Bool)

(declare-fun e!1850807 () Regex!9071)

(declare-fun lt!1029256 () Regex!9071)

(assert (=> b!2935978 (= e!1850807 (Union!9071 lt!1029256 lt!1029257))))

(declare-fun bm!192920 () Bool)

(declare-fun call!192928 () Regex!9071)

(declare-fun call!192927 () Regex!9071)

(assert (=> bm!192920 (= call!192928 call!192927)))

(declare-fun b!2935979 () Bool)

(declare-fun c!479723 () Bool)

(declare-fun call!192925 () Bool)

(assert (=> b!2935979 (= c!479723 call!192925)))

(declare-fun e!1850803 () Regex!9071)

(assert (=> b!2935979 (= e!1850810 e!1850803)))

(declare-fun b!2935980 () Bool)

(declare-fun e!1850800 () Regex!9071)

(assert (=> b!2935980 (= e!1850803 e!1850800)))

(declare-fun c!479716 () Bool)

(declare-fun lt!1029252 () Regex!9071)

(declare-fun isEmptyExpr!288 (Regex!9071) Bool)

(assert (=> b!2935980 (= c!479716 (isEmptyExpr!288 lt!1029252))))

(declare-fun b!2935981 () Bool)

(declare-fun e!1850805 () Regex!9071)

(assert (=> b!2935981 (= e!1850805 r!17423)))

(declare-fun b!2935982 () Bool)

(declare-fun e!1850809 () Regex!9071)

(assert (=> b!2935982 (= e!1850809 EmptyExpr!9071)))

(declare-fun c!479724 () Bool)

(declare-fun c!479718 () Bool)

(declare-fun bm!192921 () Bool)

(assert (=> bm!192921 (= call!192927 (simplify!78 (ite c!479718 (reg!9400 r!17423) (ite c!479724 (regOne!18655 r!17423) (regOne!18654 r!17423)))))))

(declare-fun b!2935983 () Bool)

(declare-fun e!1850802 () Regex!9071)

(assert (=> b!2935983 (= e!1850802 e!1850810)))

(declare-fun lt!1029254 () Regex!9071)

(assert (=> b!2935983 (= lt!1029254 call!192928)))

(declare-fun call!192926 () Regex!9071)

(assert (=> b!2935983 (= lt!1029252 call!192926)))

(declare-fun res!1212117 () Bool)

(declare-fun call!192929 () Bool)

(assert (=> b!2935983 (= res!1212117 call!192929)))

(declare-fun e!1850801 () Bool)

(assert (=> b!2935983 (=> res!1212117 e!1850801)))

(declare-fun c!479722 () Bool)

(assert (=> b!2935983 (= c!479722 e!1850801)))

(declare-fun bm!192922 () Bool)

(assert (=> bm!192922 (= call!192926 (simplify!78 (ite c!479724 (regTwo!18655 r!17423) (regTwo!18654 r!17423))))))

(declare-fun b!2935984 () Bool)

(declare-fun lt!1029255 () Regex!9071)

(assert (=> b!2935984 (= e!1850809 (Star!9071 lt!1029255))))

(declare-fun b!2935985 () Bool)

(declare-fun c!479726 () Bool)

(declare-fun e!1850806 () Bool)

(assert (=> b!2935985 (= c!479726 e!1850806)))

(declare-fun res!1212119 () Bool)

(assert (=> b!2935985 (=> res!1212119 e!1850806)))

(declare-fun call!192931 () Bool)

(assert (=> b!2935985 (= res!1212119 call!192931)))

(assert (=> b!2935985 (= lt!1029255 call!192927)))

(declare-fun e!1850811 () Regex!9071)

(assert (=> b!2935985 (= e!1850811 e!1850809)))

(declare-fun d!839847 () Bool)

(declare-fun e!1850808 () Bool)

(assert (=> d!839847 e!1850808))

(declare-fun res!1212118 () Bool)

(assert (=> d!839847 (=> (not res!1212118) (not e!1850808))))

(declare-fun lt!1029253 () Regex!9071)

(assert (=> d!839847 (= res!1212118 (validRegex!3804 lt!1029253))))

(declare-fun e!1850812 () Regex!9071)

(assert (=> d!839847 (= lt!1029253 e!1850812)))

(declare-fun c!479717 () Bool)

(assert (=> d!839847 (= c!479717 ((_ is EmptyLang!9071) r!17423))))

(assert (=> d!839847 (validRegex!3804 r!17423)))

(assert (=> d!839847 (= (simplify!78 r!17423) lt!1029253)))

(declare-fun b!2935986 () Bool)

(declare-fun c!479721 () Bool)

(declare-fun call!192930 () Bool)

(assert (=> b!2935986 (= c!479721 call!192930)))

(assert (=> b!2935986 (= e!1850804 e!1850807)))

(declare-fun b!2935987 () Bool)

(assert (=> b!2935987 (= e!1850800 (Concat!14392 lt!1029254 lt!1029252))))

(declare-fun b!2935988 () Bool)

(assert (=> b!2935988 (= e!1850803 lt!1029252)))

(declare-fun bm!192923 () Bool)

(declare-fun isEmptyLang!203 (Regex!9071) Bool)

(assert (=> bm!192923 (= call!192931 (isEmptyLang!203 (ite c!479718 lt!1029255 (ite c!479724 lt!1029256 lt!1029254))))))

(declare-fun b!2935989 () Bool)

(assert (=> b!2935989 (= e!1850812 e!1850805)))

(declare-fun c!479725 () Bool)

(assert (=> b!2935989 (= c!479725 ((_ is ElementMatch!9071) r!17423))))

(declare-fun b!2935990 () Bool)

(assert (=> b!2935990 (= c!479724 ((_ is Union!9071) r!17423))))

(assert (=> b!2935990 (= e!1850811 e!1850802)))

(declare-fun b!2935991 () Bool)

(assert (=> b!2935991 (= e!1850800 lt!1029254)))

(declare-fun b!2935992 () Bool)

(assert (=> b!2935992 (= e!1850802 e!1850804)))

(assert (=> b!2935992 (= lt!1029256 call!192928)))

(assert (=> b!2935992 (= lt!1029257 call!192926)))

(declare-fun c!479720 () Bool)

(assert (=> b!2935992 (= c!479720 call!192929)))

(declare-fun bm!192924 () Bool)

(assert (=> bm!192924 (= call!192929 call!192931)))

(declare-fun b!2935993 () Bool)

(declare-fun e!1850813 () Regex!9071)

(assert (=> b!2935993 (= e!1850813 e!1850811)))

(assert (=> b!2935993 (= c!479718 ((_ is Star!9071) r!17423))))

(declare-fun b!2935994 () Bool)

(declare-fun c!479719 () Bool)

(assert (=> b!2935994 (= c!479719 ((_ is EmptyExpr!9071) r!17423))))

(assert (=> b!2935994 (= e!1850805 e!1850813)))

(declare-fun b!2935995 () Bool)

(assert (=> b!2935995 (= e!1850812 EmptyLang!9071)))

(declare-fun b!2935996 () Bool)

(assert (=> b!2935996 (= e!1850801 call!192930)))

(declare-fun b!2935997 () Bool)

(assert (=> b!2935997 (= e!1850813 EmptyExpr!9071)))

(declare-fun b!2935998 () Bool)

(assert (=> b!2935998 (= e!1850806 call!192925)))

(declare-fun b!2935999 () Bool)

(assert (=> b!2935999 (= e!1850807 lt!1029256)))

(declare-fun bm!192925 () Bool)

(assert (=> bm!192925 (= call!192930 (isEmptyLang!203 (ite c!479724 lt!1029257 lt!1029252)))))

(declare-fun bm!192926 () Bool)

(assert (=> bm!192926 (= call!192925 (isEmptyExpr!288 (ite c!479718 lt!1029255 lt!1029254)))))

(declare-fun b!2936000 () Bool)

(assert (=> b!2936000 (= e!1850808 (= (nullable!2858 lt!1029253) (nullable!2858 r!17423)))))

(assert (= (and d!839847 c!479717) b!2935995))

(assert (= (and d!839847 (not c!479717)) b!2935989))

(assert (= (and b!2935989 c!479725) b!2935981))

(assert (= (and b!2935989 (not c!479725)) b!2935994))

(assert (= (and b!2935994 c!479719) b!2935997))

(assert (= (and b!2935994 (not c!479719)) b!2935993))

(assert (= (and b!2935993 c!479718) b!2935985))

(assert (= (and b!2935993 (not c!479718)) b!2935990))

(assert (= (and b!2935985 (not res!1212119)) b!2935998))

(assert (= (and b!2935985 c!479726) b!2935982))

(assert (= (and b!2935985 (not c!479726)) b!2935984))

(assert (= (and b!2935990 c!479724) b!2935992))

(assert (= (and b!2935990 (not c!479724)) b!2935983))

(assert (= (and b!2935992 c!479720) b!2935977))

(assert (= (and b!2935992 (not c!479720)) b!2935986))

(assert (= (and b!2935986 c!479721) b!2935999))

(assert (= (and b!2935986 (not c!479721)) b!2935978))

(assert (= (and b!2935983 (not res!1212117)) b!2935996))

(assert (= (and b!2935983 c!479722) b!2935976))

(assert (= (and b!2935983 (not c!479722)) b!2935979))

(assert (= (and b!2935979 c!479723) b!2935988))

(assert (= (and b!2935979 (not c!479723)) b!2935980))

(assert (= (and b!2935980 c!479716) b!2935991))

(assert (= (and b!2935980 (not c!479716)) b!2935987))

(assert (= (or b!2935992 b!2935983) bm!192922))

(assert (= (or b!2935992 b!2935983) bm!192920))

(assert (= (or b!2935992 b!2935983) bm!192924))

(assert (= (or b!2935986 b!2935996) bm!192925))

(assert (= (or b!2935998 b!2935979) bm!192926))

(assert (= (or b!2935985 bm!192920) bm!192921))

(assert (= (or b!2935985 bm!192924) bm!192923))

(assert (= (and d!839847 res!1212118) b!2936000))

(declare-fun m!3323737 () Bool)

(assert (=> bm!192923 m!3323737))

(declare-fun m!3323739 () Bool)

(assert (=> bm!192922 m!3323739))

(declare-fun m!3323741 () Bool)

(assert (=> bm!192921 m!3323741))

(declare-fun m!3323743 () Bool)

(assert (=> d!839847 m!3323743))

(assert (=> d!839847 m!3323723))

(declare-fun m!3323745 () Bool)

(assert (=> b!2935980 m!3323745))

(declare-fun m!3323747 () Bool)

(assert (=> bm!192926 m!3323747))

(declare-fun m!3323749 () Bool)

(assert (=> bm!192925 m!3323749))

(declare-fun m!3323751 () Bool)

(assert (=> b!2936000 m!3323751))

(declare-fun m!3323753 () Bool)

(assert (=> b!2936000 m!3323753))

(assert (=> b!2935866 d!839847))

(declare-fun b!2936033 () Bool)

(assert (=> b!2936033 true))

(assert (=> b!2936033 true))

(declare-fun bs!525437 () Bool)

(declare-fun b!2936035 () Bool)

(assert (= bs!525437 (and b!2936035 b!2936033)))

(declare-fun lambda!109410 () Int)

(declare-fun lambda!109409 () Int)

(assert (=> bs!525437 (not (= lambda!109410 lambda!109409))))

(assert (=> b!2936035 true))

(assert (=> b!2936035 true))

(declare-fun e!1850837 () Bool)

(declare-fun call!192936 () Bool)

(assert (=> b!2936033 (= e!1850837 call!192936)))

(declare-fun b!2936034 () Bool)

(declare-fun e!1850834 () Bool)

(declare-fun e!1850833 () Bool)

(assert (=> b!2936034 (= e!1850834 e!1850833)))

(declare-fun res!1212137 () Bool)

(assert (=> b!2936034 (= res!1212137 (not ((_ is EmptyLang!9071) r!17423)))))

(assert (=> b!2936034 (=> (not res!1212137) (not e!1850833))))

(declare-fun bm!192931 () Bool)

(declare-fun c!479736 () Bool)

(declare-fun Exists!1432 (Int) Bool)

(assert (=> bm!192931 (= call!192936 (Exists!1432 (ite c!479736 lambda!109409 lambda!109410)))))

(declare-fun bm!192932 () Bool)

(declare-fun call!192937 () Bool)

(declare-fun isEmpty!19072 (List!34936) Bool)

(assert (=> bm!192932 (= call!192937 (isEmpty!19072 s!11993))))

(declare-fun e!1850838 () Bool)

(assert (=> b!2936035 (= e!1850838 call!192936)))

(declare-fun b!2936036 () Bool)

(declare-fun c!479738 () Bool)

(assert (=> b!2936036 (= c!479738 ((_ is ElementMatch!9071) r!17423))))

(declare-fun e!1850835 () Bool)

(assert (=> b!2936036 (= e!1850833 e!1850835)))

(declare-fun b!2936037 () Bool)

(assert (=> b!2936037 (= e!1850834 call!192937)))

(declare-fun b!2936038 () Bool)

(declare-fun e!1850832 () Bool)

(assert (=> b!2936038 (= e!1850832 (matchRSpec!1208 (regTwo!18655 r!17423) s!11993))))

(declare-fun b!2936039 () Bool)

(declare-fun e!1850836 () Bool)

(assert (=> b!2936039 (= e!1850836 e!1850832)))

(declare-fun res!1212136 () Bool)

(assert (=> b!2936039 (= res!1212136 (matchRSpec!1208 (regOne!18655 r!17423) s!11993))))

(assert (=> b!2936039 (=> res!1212136 e!1850832)))

(declare-fun b!2936040 () Bool)

(assert (=> b!2936040 (= e!1850836 e!1850838)))

(assert (=> b!2936040 (= c!479736 ((_ is Star!9071) r!17423))))

(declare-fun d!839849 () Bool)

(declare-fun c!479735 () Bool)

(assert (=> d!839849 (= c!479735 ((_ is EmptyExpr!9071) r!17423))))

(assert (=> d!839849 (= (matchRSpec!1208 r!17423 s!11993) e!1850834)))

(declare-fun b!2936041 () Bool)

(declare-fun res!1212138 () Bool)

(assert (=> b!2936041 (=> res!1212138 e!1850837)))

(assert (=> b!2936041 (= res!1212138 call!192937)))

(assert (=> b!2936041 (= e!1850838 e!1850837)))

(declare-fun b!2936042 () Bool)

(assert (=> b!2936042 (= e!1850835 (= s!11993 (Cons!34812 (c!479677 r!17423) Nil!34812)))))

(declare-fun b!2936043 () Bool)

(declare-fun c!479737 () Bool)

(assert (=> b!2936043 (= c!479737 ((_ is Union!9071) r!17423))))

(assert (=> b!2936043 (= e!1850835 e!1850836)))

(assert (= (and d!839849 c!479735) b!2936037))

(assert (= (and d!839849 (not c!479735)) b!2936034))

(assert (= (and b!2936034 res!1212137) b!2936036))

(assert (= (and b!2936036 c!479738) b!2936042))

(assert (= (and b!2936036 (not c!479738)) b!2936043))

(assert (= (and b!2936043 c!479737) b!2936039))

(assert (= (and b!2936043 (not c!479737)) b!2936040))

(assert (= (and b!2936039 (not res!1212136)) b!2936038))

(assert (= (and b!2936040 c!479736) b!2936041))

(assert (= (and b!2936040 (not c!479736)) b!2936035))

(assert (= (and b!2936041 (not res!1212138)) b!2936033))

(assert (= (or b!2936033 b!2936035) bm!192931))

(assert (= (or b!2936037 b!2936041) bm!192932))

(declare-fun m!3323755 () Bool)

(assert (=> bm!192931 m!3323755))

(declare-fun m!3323757 () Bool)

(assert (=> bm!192932 m!3323757))

(declare-fun m!3323759 () Bool)

(assert (=> b!2936038 m!3323759))

(declare-fun m!3323761 () Bool)

(assert (=> b!2936039 m!3323761))

(assert (=> b!2935861 d!839849))

(declare-fun b!2936076 () Bool)

(declare-fun e!1850859 () Bool)

(declare-fun head!6528 (List!34936) C!18328)

(assert (=> b!2936076 (= e!1850859 (= (head!6528 s!11993) (c!479677 r!17423)))))

(declare-fun bm!192935 () Bool)

(declare-fun call!192940 () Bool)

(assert (=> bm!192935 (= call!192940 (isEmpty!19072 s!11993))))

(declare-fun b!2936077 () Bool)

(declare-fun e!1850853 () Bool)

(assert (=> b!2936077 (= e!1850853 (nullable!2858 r!17423))))

(declare-fun b!2936078 () Bool)

(declare-fun e!1850855 () Bool)

(declare-fun e!1850854 () Bool)

(assert (=> b!2936078 (= e!1850855 e!1850854)))

(declare-fun c!479745 () Bool)

(assert (=> b!2936078 (= c!479745 ((_ is EmptyLang!9071) r!17423))))

(declare-fun b!2936079 () Bool)

(declare-fun res!1212156 () Bool)

(declare-fun e!1850858 () Bool)

(assert (=> b!2936079 (=> res!1212156 e!1850858)))

(assert (=> b!2936079 (= res!1212156 (not ((_ is ElementMatch!9071) r!17423)))))

(assert (=> b!2936079 (= e!1850854 e!1850858)))

(declare-fun b!2936080 () Bool)

(declare-fun res!1212158 () Bool)

(assert (=> b!2936080 (=> (not res!1212158) (not e!1850859))))

(declare-fun tail!4754 (List!34936) List!34936)

(assert (=> b!2936080 (= res!1212158 (isEmpty!19072 (tail!4754 s!11993)))))

(declare-fun b!2936081 () Bool)

(declare-fun lt!1029260 () Bool)

(assert (=> b!2936081 (= e!1850855 (= lt!1029260 call!192940))))

(declare-fun b!2936082 () Bool)

(declare-fun res!1212161 () Bool)

(assert (=> b!2936082 (=> res!1212161 e!1850858)))

(assert (=> b!2936082 (= res!1212161 e!1850859)))

(declare-fun res!1212159 () Bool)

(assert (=> b!2936082 (=> (not res!1212159) (not e!1850859))))

(assert (=> b!2936082 (= res!1212159 lt!1029260)))

(declare-fun b!2936083 () Bool)

(declare-fun res!1212155 () Bool)

(assert (=> b!2936083 (=> (not res!1212155) (not e!1850859))))

(assert (=> b!2936083 (= res!1212155 (not call!192940))))

(declare-fun b!2936084 () Bool)

(declare-fun e!1850857 () Bool)

(assert (=> b!2936084 (= e!1850857 (not (= (head!6528 s!11993) (c!479677 r!17423))))))

(declare-fun b!2936085 () Bool)

(declare-fun res!1212160 () Bool)

(assert (=> b!2936085 (=> res!1212160 e!1850857)))

(assert (=> b!2936085 (= res!1212160 (not (isEmpty!19072 (tail!4754 s!11993))))))

(declare-fun b!2936086 () Bool)

(declare-fun e!1850856 () Bool)

(assert (=> b!2936086 (= e!1850856 e!1850857)))

(declare-fun res!1212162 () Bool)

(assert (=> b!2936086 (=> res!1212162 e!1850857)))

(assert (=> b!2936086 (= res!1212162 call!192940)))

(declare-fun b!2936087 () Bool)

(declare-fun derivativeStep!2469 (Regex!9071 C!18328) Regex!9071)

(assert (=> b!2936087 (= e!1850853 (matchR!3953 (derivativeStep!2469 r!17423 (head!6528 s!11993)) (tail!4754 s!11993)))))

(declare-fun d!839851 () Bool)

(assert (=> d!839851 e!1850855))

(declare-fun c!479746 () Bool)

(assert (=> d!839851 (= c!479746 ((_ is EmptyExpr!9071) r!17423))))

(assert (=> d!839851 (= lt!1029260 e!1850853)))

(declare-fun c!479747 () Bool)

(assert (=> d!839851 (= c!479747 (isEmpty!19072 s!11993))))

(assert (=> d!839851 (validRegex!3804 r!17423)))

(assert (=> d!839851 (= (matchR!3953 r!17423 s!11993) lt!1029260)))

(declare-fun b!2936088 () Bool)

(assert (=> b!2936088 (= e!1850854 (not lt!1029260))))

(declare-fun b!2936089 () Bool)

(assert (=> b!2936089 (= e!1850858 e!1850856)))

(declare-fun res!1212157 () Bool)

(assert (=> b!2936089 (=> (not res!1212157) (not e!1850856))))

(assert (=> b!2936089 (= res!1212157 (not lt!1029260))))

(assert (= (and d!839851 c!479747) b!2936077))

(assert (= (and d!839851 (not c!479747)) b!2936087))

(assert (= (and d!839851 c!479746) b!2936081))

(assert (= (and d!839851 (not c!479746)) b!2936078))

(assert (= (and b!2936078 c!479745) b!2936088))

(assert (= (and b!2936078 (not c!479745)) b!2936079))

(assert (= (and b!2936079 (not res!1212156)) b!2936082))

(assert (= (and b!2936082 res!1212159) b!2936083))

(assert (= (and b!2936083 res!1212155) b!2936080))

(assert (= (and b!2936080 res!1212158) b!2936076))

(assert (= (and b!2936082 (not res!1212161)) b!2936089))

(assert (= (and b!2936089 res!1212157) b!2936086))

(assert (= (and b!2936086 (not res!1212162)) b!2936085))

(assert (= (and b!2936085 (not res!1212160)) b!2936084))

(assert (= (or b!2936081 b!2936086 b!2936083) bm!192935))

(declare-fun m!3323763 () Bool)

(assert (=> b!2936085 m!3323763))

(assert (=> b!2936085 m!3323763))

(declare-fun m!3323765 () Bool)

(assert (=> b!2936085 m!3323765))

(assert (=> b!2936077 m!3323753))

(declare-fun m!3323767 () Bool)

(assert (=> b!2936076 m!3323767))

(assert (=> b!2936087 m!3323767))

(assert (=> b!2936087 m!3323767))

(declare-fun m!3323769 () Bool)

(assert (=> b!2936087 m!3323769))

(assert (=> b!2936087 m!3323763))

(assert (=> b!2936087 m!3323769))

(assert (=> b!2936087 m!3323763))

(declare-fun m!3323771 () Bool)

(assert (=> b!2936087 m!3323771))

(assert (=> d!839851 m!3323757))

(assert (=> d!839851 m!3323723))

(assert (=> bm!192935 m!3323757))

(assert (=> b!2936080 m!3323763))

(assert (=> b!2936080 m!3323763))

(assert (=> b!2936080 m!3323765))

(assert (=> b!2936084 m!3323767))

(assert (=> b!2935861 d!839851))

(declare-fun d!839853 () Bool)

(assert (=> d!839853 (= (matchR!3953 r!17423 s!11993) (matchRSpec!1208 r!17423 s!11993))))

(declare-fun lt!1029263 () Unit!48521)

(declare-fun choose!17371 (Regex!9071 List!34936) Unit!48521)

(assert (=> d!839853 (= lt!1029263 (choose!17371 r!17423 s!11993))))

(assert (=> d!839853 (validRegex!3804 r!17423)))

(assert (=> d!839853 (= (mainMatchTheorem!1208 r!17423 s!11993) lt!1029263)))

(declare-fun bs!525438 () Bool)

(assert (= bs!525438 d!839853))

(assert (=> bs!525438 m!3323715))

(assert (=> bs!525438 m!3323713))

(declare-fun m!3323773 () Bool)

(assert (=> bs!525438 m!3323773))

(assert (=> bs!525438 m!3323723))

(assert (=> b!2935861 d!839853))

(declare-fun e!1850862 () Bool)

(assert (=> b!2935865 (= tp!940120 e!1850862)))

(declare-fun b!2936103 () Bool)

(declare-fun tp!940132 () Bool)

(declare-fun tp!940133 () Bool)

(assert (=> b!2936103 (= e!1850862 (and tp!940132 tp!940133))))

(declare-fun b!2936101 () Bool)

(declare-fun tp!940134 () Bool)

(declare-fun tp!940136 () Bool)

(assert (=> b!2936101 (= e!1850862 (and tp!940134 tp!940136))))

(declare-fun b!2936102 () Bool)

(declare-fun tp!940135 () Bool)

(assert (=> b!2936102 (= e!1850862 tp!940135)))

(declare-fun b!2936100 () Bool)

(assert (=> b!2936100 (= e!1850862 tp_is_empty!15705)))

(assert (= (and b!2935865 ((_ is ElementMatch!9071) (reg!9400 r!17423))) b!2936100))

(assert (= (and b!2935865 ((_ is Concat!14392) (reg!9400 r!17423))) b!2936101))

(assert (= (and b!2935865 ((_ is Star!9071) (reg!9400 r!17423))) b!2936102))

(assert (= (and b!2935865 ((_ is Union!9071) (reg!9400 r!17423))) b!2936103))

(declare-fun e!1850863 () Bool)

(assert (=> b!2935863 (= tp!940119 e!1850863)))

(declare-fun b!2936107 () Bool)

(declare-fun tp!940137 () Bool)

(declare-fun tp!940138 () Bool)

(assert (=> b!2936107 (= e!1850863 (and tp!940137 tp!940138))))

(declare-fun b!2936105 () Bool)

(declare-fun tp!940139 () Bool)

(declare-fun tp!940141 () Bool)

(assert (=> b!2936105 (= e!1850863 (and tp!940139 tp!940141))))

(declare-fun b!2936106 () Bool)

(declare-fun tp!940140 () Bool)

(assert (=> b!2936106 (= e!1850863 tp!940140)))

(declare-fun b!2936104 () Bool)

(assert (=> b!2936104 (= e!1850863 tp_is_empty!15705)))

(assert (= (and b!2935863 ((_ is ElementMatch!9071) (regOne!18654 r!17423))) b!2936104))

(assert (= (and b!2935863 ((_ is Concat!14392) (regOne!18654 r!17423))) b!2936105))

(assert (= (and b!2935863 ((_ is Star!9071) (regOne!18654 r!17423))) b!2936106))

(assert (= (and b!2935863 ((_ is Union!9071) (regOne!18654 r!17423))) b!2936107))

(declare-fun e!1850864 () Bool)

(assert (=> b!2935863 (= tp!940116 e!1850864)))

(declare-fun b!2936111 () Bool)

(declare-fun tp!940142 () Bool)

(declare-fun tp!940143 () Bool)

(assert (=> b!2936111 (= e!1850864 (and tp!940142 tp!940143))))

(declare-fun b!2936109 () Bool)

(declare-fun tp!940144 () Bool)

(declare-fun tp!940146 () Bool)

(assert (=> b!2936109 (= e!1850864 (and tp!940144 tp!940146))))

(declare-fun b!2936110 () Bool)

(declare-fun tp!940145 () Bool)

(assert (=> b!2936110 (= e!1850864 tp!940145)))

(declare-fun b!2936108 () Bool)

(assert (=> b!2936108 (= e!1850864 tp_is_empty!15705)))

(assert (= (and b!2935863 ((_ is ElementMatch!9071) (regTwo!18654 r!17423))) b!2936108))

(assert (= (and b!2935863 ((_ is Concat!14392) (regTwo!18654 r!17423))) b!2936109))

(assert (= (and b!2935863 ((_ is Star!9071) (regTwo!18654 r!17423))) b!2936110))

(assert (= (and b!2935863 ((_ is Union!9071) (regTwo!18654 r!17423))) b!2936111))

(declare-fun b!2936116 () Bool)

(declare-fun e!1850867 () Bool)

(declare-fun tp!940149 () Bool)

(assert (=> b!2936116 (= e!1850867 (and tp_is_empty!15705 tp!940149))))

(assert (=> b!2935864 (= tp!940117 e!1850867)))

(assert (= (and b!2935864 ((_ is Cons!34812) (t!234001 s!11993))) b!2936116))

(declare-fun e!1850868 () Bool)

(assert (=> b!2935867 (= tp!940121 e!1850868)))

(declare-fun b!2936120 () Bool)

(declare-fun tp!940150 () Bool)

(declare-fun tp!940151 () Bool)

(assert (=> b!2936120 (= e!1850868 (and tp!940150 tp!940151))))

(declare-fun b!2936118 () Bool)

(declare-fun tp!940152 () Bool)

(declare-fun tp!940154 () Bool)

(assert (=> b!2936118 (= e!1850868 (and tp!940152 tp!940154))))

(declare-fun b!2936119 () Bool)

(declare-fun tp!940153 () Bool)

(assert (=> b!2936119 (= e!1850868 tp!940153)))

(declare-fun b!2936117 () Bool)

(assert (=> b!2936117 (= e!1850868 tp_is_empty!15705)))

(assert (= (and b!2935867 ((_ is ElementMatch!9071) (regOne!18655 r!17423))) b!2936117))

(assert (= (and b!2935867 ((_ is Concat!14392) (regOne!18655 r!17423))) b!2936118))

(assert (= (and b!2935867 ((_ is Star!9071) (regOne!18655 r!17423))) b!2936119))

(assert (= (and b!2935867 ((_ is Union!9071) (regOne!18655 r!17423))) b!2936120))

(declare-fun e!1850869 () Bool)

(assert (=> b!2935867 (= tp!940118 e!1850869)))

(declare-fun b!2936124 () Bool)

(declare-fun tp!940155 () Bool)

(declare-fun tp!940156 () Bool)

(assert (=> b!2936124 (= e!1850869 (and tp!940155 tp!940156))))

(declare-fun b!2936122 () Bool)

(declare-fun tp!940157 () Bool)

(declare-fun tp!940159 () Bool)

(assert (=> b!2936122 (= e!1850869 (and tp!940157 tp!940159))))

(declare-fun b!2936123 () Bool)

(declare-fun tp!940158 () Bool)

(assert (=> b!2936123 (= e!1850869 tp!940158)))

(declare-fun b!2936121 () Bool)

(assert (=> b!2936121 (= e!1850869 tp_is_empty!15705)))

(assert (= (and b!2935867 ((_ is ElementMatch!9071) (regTwo!18655 r!17423))) b!2936121))

(assert (= (and b!2935867 ((_ is Concat!14392) (regTwo!18655 r!17423))) b!2936122))

(assert (= (and b!2935867 ((_ is Star!9071) (regTwo!18655 r!17423))) b!2936123))

(assert (= (and b!2935867 ((_ is Union!9071) (regTwo!18655 r!17423))) b!2936124))

(check-sat (not b!2936110) (not bm!192931) (not bm!192901) (not b!2936039) (not d!839851) (not b!2936085) (not b!2936119) (not b!2936080) tp_is_empty!15705 (not bm!192925) (not bm!192935) (not b!2936084) (not b!2935901) (not bm!192904) (not b!2936000) (not b!2936122) (not b!2936102) (not b!2936105) (not bm!192926) (not d!839847) (not b!2936076) (not b!2936120) (not b!2936103) (not b!2936087) (not b!2936107) (not b!2936118) (not b!2936077) (not b!2936038) (not bm!192932) (not bm!192921) (not b!2936106) (not bm!192922) (not bm!192923) (not bm!192903) (not b!2936111) (not b!2936109) (not b!2936123) (not b!2936124) (not b!2935892) (not bm!192900) (not b!2935980) (not d!839853) (not b!2936116) (not b!2936101))
(check-sat)
